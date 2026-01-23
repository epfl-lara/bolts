; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!445428 () Bool)

(assert start!445428)

(declare-fun b!4508023 () Bool)

(declare-fun e!2808327 () Bool)

(declare-fun e!2808336 () Bool)

(assert (=> b!4508023 (= e!2808327 e!2808336)))

(declare-fun res!1874783 () Bool)

(assert (=> b!4508023 (=> res!1874783 e!2808336)))

(declare-datatypes ((K!11980 0))(
  ( (K!11981 (val!17855 Int)) )
))
(declare-datatypes ((V!12226 0))(
  ( (V!12227 (val!17856 Int)) )
))
(declare-datatypes ((tuple2!50978 0))(
  ( (tuple2!50979 (_1!28783 K!11980) (_2!28783 V!12226)) )
))
(declare-datatypes ((List!50700 0))(
  ( (Nil!50576) (Cons!50576 (h!56407 tuple2!50978) (t!357662 List!50700)) )
))
(declare-datatypes ((tuple2!50980 0))(
  ( (tuple2!50981 (_1!28784 (_ BitVec 64)) (_2!28784 List!50700)) )
))
(declare-datatypes ((List!50701 0))(
  ( (Nil!50577) (Cons!50577 (h!56408 tuple2!50980) (t!357663 List!50701)) )
))
(declare-datatypes ((ListLongMap!2911 0))(
  ( (ListLongMap!2912 (toList!4279 List!50701)) )
))
(declare-fun lm!1477 () ListLongMap!2911)

(declare-fun key!3287 () K!11980)

(declare-datatypes ((ListMap!3541 0))(
  ( (ListMap!3542 (toList!4280 List!50700)) )
))
(declare-fun contains!13267 (ListMap!3541 K!11980) Bool)

(declare-fun extractMap!1192 (List!50701) ListMap!3541)

(assert (=> b!4508023 (= res!1874783 (not (contains!13267 (extractMap!1192 (t!357663 (toList!4279 lm!1477))) key!3287)))))

(declare-fun lt!1686670 () ListMap!3541)

(assert (=> b!4508023 (contains!13267 lt!1686670 key!3287)))

(declare-fun lt!1686666 () ListLongMap!2911)

(assert (=> b!4508023 (= lt!1686670 (extractMap!1192 (toList!4279 lt!1686666)))))

(declare-datatypes ((Unit!93112 0))(
  ( (Unit!93113) )
))
(declare-fun lt!1686672 () Unit!93112)

(declare-datatypes ((Hashable!5531 0))(
  ( (HashableExt!5530 (__x!31234 Int)) )
))
(declare-fun hashF!1107 () Hashable!5531)

(declare-fun lemmaListContainsThenExtractedMapContains!106 (ListLongMap!2911 K!11980 Hashable!5531) Unit!93112)

(assert (=> b!4508023 (= lt!1686672 (lemmaListContainsThenExtractedMapContains!106 lt!1686666 key!3287 hashF!1107))))

(declare-fun b!4508024 () Bool)

(declare-fun e!2808326 () Bool)

(declare-fun e!2808328 () Bool)

(assert (=> b!4508024 (= e!2808326 (not e!2808328))))

(declare-fun res!1874778 () Bool)

(assert (=> b!4508024 (=> res!1874778 e!2808328)))

(declare-fun lt!1686663 () List!50700)

(declare-fun newBucket!178 () List!50700)

(declare-fun removePairForKey!763 (List!50700 K!11980) List!50700)

(assert (=> b!4508024 (= res!1874778 (not (= newBucket!178 (removePairForKey!763 lt!1686663 key!3287))))))

(declare-fun lt!1686676 () tuple2!50980)

(declare-fun lambda!169975 () Int)

(declare-fun lt!1686662 () Unit!93112)

(declare-fun forallContained!2459 (List!50701 Int tuple2!50980) Unit!93112)

(assert (=> b!4508024 (= lt!1686662 (forallContained!2459 (toList!4279 lm!1477) lambda!169975 lt!1686676))))

(declare-fun contains!13268 (List!50701 tuple2!50980) Bool)

(assert (=> b!4508024 (contains!13268 (toList!4279 lm!1477) lt!1686676)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4508024 (= lt!1686676 (tuple2!50981 hash!344 lt!1686663))))

(declare-fun lt!1686679 () Unit!93112)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!648 (List!50701 (_ BitVec 64) List!50700) Unit!93112)

(assert (=> b!4508024 (= lt!1686679 (lemmaGetValueByKeyImpliesContainsTuple!648 (toList!4279 lm!1477) hash!344 lt!1686663))))

(declare-fun apply!11873 (ListLongMap!2911 (_ BitVec 64)) List!50700)

(assert (=> b!4508024 (= lt!1686663 (apply!11873 lm!1477 hash!344))))

(declare-fun lt!1686681 () (_ BitVec 64))

(declare-fun contains!13269 (ListLongMap!2911 (_ BitVec 64)) Bool)

(assert (=> b!4508024 (contains!13269 lm!1477 lt!1686681)))

(declare-fun lt!1686675 () Unit!93112)

(declare-fun lemmaInGenMapThenLongMapContainsHash!210 (ListLongMap!2911 K!11980 Hashable!5531) Unit!93112)

(assert (=> b!4508024 (= lt!1686675 (lemmaInGenMapThenLongMapContainsHash!210 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4508025 () Bool)

(declare-fun e!2808335 () Bool)

(declare-fun e!2808329 () Bool)

(assert (=> b!4508025 (= e!2808335 e!2808329)))

(declare-fun res!1874793 () Bool)

(assert (=> b!4508025 (=> res!1874793 e!2808329)))

(declare-fun lt!1686673 () Bool)

(assert (=> b!4508025 (= res!1874793 lt!1686673)))

(declare-fun lt!1686678 () Unit!93112)

(declare-fun e!2808325 () Unit!93112)

(assert (=> b!4508025 (= lt!1686678 e!2808325)))

(declare-fun c!768879 () Bool)

(assert (=> b!4508025 (= c!768879 lt!1686673)))

(declare-fun containsKey!1712 (List!50700 K!11980) Bool)

(assert (=> b!4508025 (= lt!1686673 (not (containsKey!1712 lt!1686663 key!3287)))))

(declare-fun b!4508026 () Bool)

(declare-fun e!2808330 () Bool)

(assert (=> b!4508026 (= e!2808330 e!2808326)))

(declare-fun res!1874792 () Bool)

(assert (=> b!4508026 (=> (not res!1874792) (not e!2808326))))

(assert (=> b!4508026 (= res!1874792 (= lt!1686681 hash!344))))

(declare-fun hash!2729 (Hashable!5531 K!11980) (_ BitVec 64))

(assert (=> b!4508026 (= lt!1686681 (hash!2729 hashF!1107 key!3287))))

(declare-fun b!4508027 () Bool)

(assert (=> b!4508027 (= e!2808328 e!2808335)))

(declare-fun res!1874784 () Bool)

(assert (=> b!4508027 (=> res!1874784 e!2808335)))

(assert (=> b!4508027 (= res!1874784 (not (contains!13269 lt!1686666 hash!344)))))

(declare-fun tail!7688 (ListLongMap!2911) ListLongMap!2911)

(assert (=> b!4508027 (= lt!1686666 (tail!7688 lm!1477))))

(declare-fun b!4508028 () Bool)

(declare-fun res!1874791 () Bool)

(assert (=> b!4508028 (=> res!1874791 e!2808328)))

(declare-fun noDuplicateKeys!1136 (List!50700) Bool)

(assert (=> b!4508028 (= res!1874791 (not (noDuplicateKeys!1136 newBucket!178)))))

(declare-fun res!1874794 () Bool)

(declare-fun e!2808332 () Bool)

(assert (=> start!445428 (=> (not res!1874794) (not e!2808332))))

(declare-fun forall!10207 (List!50701 Int) Bool)

(assert (=> start!445428 (= res!1874794 (forall!10207 (toList!4279 lm!1477) lambda!169975))))

(assert (=> start!445428 e!2808332))

(assert (=> start!445428 true))

(declare-fun e!2808337 () Bool)

(declare-fun inv!66164 (ListLongMap!2911) Bool)

(assert (=> start!445428 (and (inv!66164 lm!1477) e!2808337)))

(declare-fun tp_is_empty!27821 () Bool)

(assert (=> start!445428 tp_is_empty!27821))

(declare-fun e!2808334 () Bool)

(assert (=> start!445428 e!2808334))

(declare-fun b!4508029 () Bool)

(assert (=> b!4508029 (= e!2808329 e!2808327)))

(declare-fun res!1874782 () Bool)

(assert (=> b!4508029 (=> res!1874782 e!2808327)))

(declare-fun containsKeyBiggerList!116 (List!50701 K!11980) Bool)

(assert (=> b!4508029 (= res!1874782 (not (containsKeyBiggerList!116 (t!357663 (toList!4279 lm!1477)) key!3287)))))

(assert (=> b!4508029 (containsKeyBiggerList!116 (toList!4279 lt!1686666) key!3287)))

(declare-fun lt!1686682 () Unit!93112)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!52 (ListLongMap!2911 K!11980 Hashable!5531) Unit!93112)

(assert (=> b!4508029 (= lt!1686682 (lemmaInLongMapThenContainsKeyBiggerList!52 lt!1686666 key!3287 hashF!1107))))

(declare-fun b!4508030 () Bool)

(declare-fun res!1874779 () Bool)

(assert (=> b!4508030 (=> res!1874779 e!2808335)))

(assert (=> b!4508030 (= res!1874779 (not (contains!13268 (t!357663 (toList!4279 lm!1477)) lt!1686676)))))

(declare-fun b!4508031 () Bool)

(declare-fun Unit!93114 () Unit!93112)

(assert (=> b!4508031 (= e!2808325 Unit!93114)))

(declare-fun b!4508032 () Bool)

(declare-fun res!1874790 () Bool)

(declare-fun e!2808331 () Bool)

(assert (=> b!4508032 (=> res!1874790 e!2808331)))

(declare-fun lt!1686664 () ListMap!3541)

(declare-fun lt!1686671 () ListMap!3541)

(declare-fun eq!593 (ListMap!3541 ListMap!3541) Bool)

(assert (=> b!4508032 (= res!1874790 (not (eq!593 lt!1686664 lt!1686671)))))

(declare-fun b!4508033 () Bool)

(declare-fun res!1874788 () Bool)

(assert (=> b!4508033 (=> res!1874788 e!2808331)))

(declare-fun lt!1686680 () tuple2!50980)

(assert (=> b!4508033 (= res!1874788 (bvsge (_1!28784 lt!1686680) hash!344))))

(declare-fun b!4508034 () Bool)

(assert (=> b!4508034 (= e!2808332 e!2808330)))

(declare-fun res!1874780 () Bool)

(assert (=> b!4508034 (=> (not res!1874780) (not e!2808330))))

(assert (=> b!4508034 (= res!1874780 (contains!13267 lt!1686664 key!3287))))

(assert (=> b!4508034 (= lt!1686664 (extractMap!1192 (toList!4279 lm!1477)))))

(declare-fun b!4508035 () Bool)

(declare-fun res!1874796 () Bool)

(assert (=> b!4508035 (=> (not res!1874796) (not e!2808332))))

(declare-fun allKeysSameHashInMap!1243 (ListLongMap!2911 Hashable!5531) Bool)

(assert (=> b!4508035 (= res!1874796 (allKeysSameHashInMap!1243 lm!1477 hashF!1107))))

(declare-fun b!4508036 () Bool)

(declare-fun Unit!93115 () Unit!93112)

(assert (=> b!4508036 (= e!2808325 Unit!93115)))

(declare-fun lt!1686665 () Unit!93112)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!124 (ListLongMap!2911 K!11980 Hashable!5531) Unit!93112)

(assert (=> b!4508036 (= lt!1686665 (lemmaNotInItsHashBucketThenNotInMap!124 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4508036 false))

(declare-fun b!4508037 () Bool)

(assert (=> b!4508037 (= e!2808336 e!2808331)))

(declare-fun res!1874777 () Bool)

(assert (=> b!4508037 (=> res!1874777 e!2808331)))

(assert (=> b!4508037 (= res!1874777 (not (eq!593 lt!1686671 lt!1686664)))))

(declare-fun +!1492 (ListLongMap!2911 tuple2!50980) ListLongMap!2911)

(assert (=> b!4508037 (= lt!1686671 (extractMap!1192 (toList!4279 (+!1492 lt!1686666 lt!1686680))))))

(declare-fun head!9366 (ListLongMap!2911) tuple2!50980)

(assert (=> b!4508037 (= lt!1686680 (head!9366 lm!1477))))

(declare-fun lt!1686668 () ListMap!3541)

(declare-fun -!362 (ListMap!3541 K!11980) ListMap!3541)

(assert (=> b!4508037 (eq!593 lt!1686668 (-!362 lt!1686670 key!3287))))

(declare-fun lt!1686667 () ListLongMap!2911)

(assert (=> b!4508037 (= lt!1686668 (extractMap!1192 (toList!4279 lt!1686667)))))

(declare-fun lt!1686677 () tuple2!50980)

(assert (=> b!4508037 (= lt!1686667 (+!1492 lt!1686666 lt!1686677))))

(assert (=> b!4508037 (= lt!1686677 (tuple2!50981 hash!344 newBucket!178))))

(declare-fun lt!1686669 () Unit!93112)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!121 (ListLongMap!2911 (_ BitVec 64) List!50700 K!11980 Hashable!5531) Unit!93112)

(assert (=> b!4508037 (= lt!1686669 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!121 lt!1686666 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4508038 () Bool)

(declare-fun res!1874795 () Bool)

(assert (=> b!4508038 (=> res!1874795 e!2808328)))

(get-info :version)

(assert (=> b!4508038 (= res!1874795 (or ((_ is Nil!50577) (toList!4279 lm!1477)) (= (_1!28784 (h!56408 (toList!4279 lm!1477))) hash!344)))))

(declare-fun b!4508039 () Bool)

(declare-fun e!2808333 () Bool)

(assert (=> b!4508039 (= e!2808331 e!2808333)))

(declare-fun res!1874786 () Bool)

(assert (=> b!4508039 (=> res!1874786 e!2808333)))

(declare-fun lt!1686674 () ListLongMap!2911)

(assert (=> b!4508039 (= res!1874786 (not (= lt!1686674 (+!1492 lm!1477 lt!1686677))))))

(assert (=> b!4508039 (= lt!1686674 (+!1492 lt!1686667 lt!1686680))))

(declare-fun b!4508040 () Bool)

(declare-fun res!1874781 () Bool)

(assert (=> b!4508040 (=> res!1874781 e!2808333)))

(declare-fun addToMapMapFromBucket!663 (List!50700 ListMap!3541) ListMap!3541)

(assert (=> b!4508040 (= res!1874781 (not (eq!593 (extractMap!1192 (toList!4279 lt!1686674)) (addToMapMapFromBucket!663 (_2!28784 lt!1686680) lt!1686668))))))

(declare-fun b!4508041 () Bool)

(declare-fun res!1874787 () Bool)

(assert (=> b!4508041 (=> res!1874787 e!2808333)))

(assert (=> b!4508041 (= res!1874787 (not (= (head!9366 lt!1686674) lt!1686680)))))

(declare-fun b!4508042 () Bool)

(declare-fun tp!1337698 () Bool)

(assert (=> b!4508042 (= e!2808337 tp!1337698)))

(declare-fun b!4508043 () Bool)

(declare-fun tp_is_empty!27823 () Bool)

(declare-fun tp!1337699 () Bool)

(assert (=> b!4508043 (= e!2808334 (and tp_is_empty!27821 tp_is_empty!27823 tp!1337699))))

(declare-fun b!4508044 () Bool)

(declare-fun res!1874789 () Bool)

(assert (=> b!4508044 (=> (not res!1874789) (not e!2808326))))

(declare-fun allKeysSameHash!990 (List!50700 (_ BitVec 64) Hashable!5531) Bool)

(assert (=> b!4508044 (= res!1874789 (allKeysSameHash!990 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4508045 () Bool)

(declare-fun res!1874785 () Bool)

(assert (=> b!4508045 (=> res!1874785 e!2808335)))

(assert (=> b!4508045 (= res!1874785 (not (= (apply!11873 lt!1686666 hash!344) lt!1686663)))))

(declare-fun b!4508046 () Bool)

(declare-fun isEmpty!28627 (ListLongMap!2911) Bool)

(assert (=> b!4508046 (= e!2808333 (not (isEmpty!28627 lm!1477)))))

(assert (= (and start!445428 res!1874794) b!4508035))

(assert (= (and b!4508035 res!1874796) b!4508034))

(assert (= (and b!4508034 res!1874780) b!4508026))

(assert (= (and b!4508026 res!1874792) b!4508044))

(assert (= (and b!4508044 res!1874789) b!4508024))

(assert (= (and b!4508024 (not res!1874778)) b!4508028))

(assert (= (and b!4508028 (not res!1874791)) b!4508038))

(assert (= (and b!4508038 (not res!1874795)) b!4508027))

(assert (= (and b!4508027 (not res!1874784)) b!4508045))

(assert (= (and b!4508045 (not res!1874785)) b!4508030))

(assert (= (and b!4508030 (not res!1874779)) b!4508025))

(assert (= (and b!4508025 c!768879) b!4508036))

(assert (= (and b!4508025 (not c!768879)) b!4508031))

(assert (= (and b!4508025 (not res!1874793)) b!4508029))

(assert (= (and b!4508029 (not res!1874782)) b!4508023))

(assert (= (and b!4508023 (not res!1874783)) b!4508037))

(assert (= (and b!4508037 (not res!1874777)) b!4508032))

(assert (= (and b!4508032 (not res!1874790)) b!4508033))

(assert (= (and b!4508033 (not res!1874788)) b!4508039))

(assert (= (and b!4508039 (not res!1874786)) b!4508041))

(assert (= (and b!4508041 (not res!1874787)) b!4508040))

(assert (= (and b!4508040 (not res!1874781)) b!4508046))

(assert (= start!445428 b!4508042))

(assert (= (and start!445428 ((_ is Cons!50576) newBucket!178)) b!4508043))

(declare-fun m!5245369 () Bool)

(assert (=> b!4508025 m!5245369))

(declare-fun m!5245371 () Bool)

(assert (=> b!4508029 m!5245371))

(declare-fun m!5245373 () Bool)

(assert (=> b!4508029 m!5245373))

(declare-fun m!5245375 () Bool)

(assert (=> b!4508029 m!5245375))

(declare-fun m!5245377 () Bool)

(assert (=> b!4508035 m!5245377))

(declare-fun m!5245379 () Bool)

(assert (=> b!4508037 m!5245379))

(declare-fun m!5245381 () Bool)

(assert (=> b!4508037 m!5245381))

(declare-fun m!5245383 () Bool)

(assert (=> b!4508037 m!5245383))

(declare-fun m!5245385 () Bool)

(assert (=> b!4508037 m!5245385))

(declare-fun m!5245387 () Bool)

(assert (=> b!4508037 m!5245387))

(declare-fun m!5245389 () Bool)

(assert (=> b!4508037 m!5245389))

(declare-fun m!5245391 () Bool)

(assert (=> b!4508037 m!5245391))

(declare-fun m!5245393 () Bool)

(assert (=> b!4508037 m!5245393))

(assert (=> b!4508037 m!5245385))

(declare-fun m!5245395 () Bool)

(assert (=> b!4508037 m!5245395))

(declare-fun m!5245397 () Bool)

(assert (=> b!4508026 m!5245397))

(declare-fun m!5245399 () Bool)

(assert (=> b!4508028 m!5245399))

(declare-fun m!5245401 () Bool)

(assert (=> b!4508036 m!5245401))

(declare-fun m!5245403 () Bool)

(assert (=> b!4508027 m!5245403))

(declare-fun m!5245405 () Bool)

(assert (=> b!4508027 m!5245405))

(declare-fun m!5245407 () Bool)

(assert (=> b!4508034 m!5245407))

(declare-fun m!5245409 () Bool)

(assert (=> b!4508034 m!5245409))

(declare-fun m!5245411 () Bool)

(assert (=> b!4508024 m!5245411))

(declare-fun m!5245413 () Bool)

(assert (=> b!4508024 m!5245413))

(declare-fun m!5245415 () Bool)

(assert (=> b!4508024 m!5245415))

(declare-fun m!5245417 () Bool)

(assert (=> b!4508024 m!5245417))

(declare-fun m!5245419 () Bool)

(assert (=> b!4508024 m!5245419))

(declare-fun m!5245421 () Bool)

(assert (=> b!4508024 m!5245421))

(declare-fun m!5245423 () Bool)

(assert (=> b!4508024 m!5245423))

(declare-fun m!5245425 () Bool)

(assert (=> b!4508045 m!5245425))

(declare-fun m!5245427 () Bool)

(assert (=> b!4508023 m!5245427))

(declare-fun m!5245429 () Bool)

(assert (=> b!4508023 m!5245429))

(declare-fun m!5245431 () Bool)

(assert (=> b!4508023 m!5245431))

(declare-fun m!5245433 () Bool)

(assert (=> b!4508023 m!5245433))

(assert (=> b!4508023 m!5245431))

(declare-fun m!5245435 () Bool)

(assert (=> b!4508023 m!5245435))

(declare-fun m!5245437 () Bool)

(assert (=> b!4508041 m!5245437))

(declare-fun m!5245439 () Bool)

(assert (=> b!4508039 m!5245439))

(declare-fun m!5245441 () Bool)

(assert (=> b!4508039 m!5245441))

(declare-fun m!5245443 () Bool)

(assert (=> b!4508030 m!5245443))

(declare-fun m!5245445 () Bool)

(assert (=> start!445428 m!5245445))

(declare-fun m!5245447 () Bool)

(assert (=> start!445428 m!5245447))

(declare-fun m!5245449 () Bool)

(assert (=> b!4508044 m!5245449))

(declare-fun m!5245451 () Bool)

(assert (=> b!4508040 m!5245451))

(declare-fun m!5245453 () Bool)

(assert (=> b!4508040 m!5245453))

(assert (=> b!4508040 m!5245451))

(assert (=> b!4508040 m!5245453))

(declare-fun m!5245455 () Bool)

(assert (=> b!4508040 m!5245455))

(declare-fun m!5245457 () Bool)

(assert (=> b!4508046 m!5245457))

(declare-fun m!5245459 () Bool)

(assert (=> b!4508032 m!5245459))

(check-sat (not b!4508036) (not b!4508040) (not b!4508028) (not b!4508034) (not b!4508046) (not b!4508026) (not b!4508037) tp_is_empty!27823 (not b!4508025) (not b!4508029) (not b!4508023) (not b!4508043) (not b!4508024) (not b!4508042) (not b!4508032) (not b!4508044) (not b!4508045) (not b!4508035) (not b!4508030) (not b!4508041) (not start!445428) (not b!4508039) (not b!4508027) tp_is_empty!27821)
(check-sat)
(get-model)

(declare-fun d!1386068 () Bool)

(declare-fun e!2808366 () Bool)

(assert (=> d!1386068 e!2808366))

(declare-fun res!1874816 () Bool)

(assert (=> d!1386068 (=> (not res!1874816) (not e!2808366))))

(declare-fun lt!1686717 () ListLongMap!2911)

(assert (=> d!1386068 (= res!1874816 (contains!13269 lt!1686717 (_1!28784 lt!1686677)))))

(declare-fun lt!1686720 () List!50701)

(assert (=> d!1386068 (= lt!1686717 (ListLongMap!2912 lt!1686720))))

(declare-fun lt!1686719 () Unit!93112)

(declare-fun lt!1686718 () Unit!93112)

(assert (=> d!1386068 (= lt!1686719 lt!1686718)))

(declare-datatypes ((Option!11068 0))(
  ( (None!11067) (Some!11067 (v!44603 List!50700)) )
))
(declare-fun getValueByKey!1048 (List!50701 (_ BitVec 64)) Option!11068)

(assert (=> d!1386068 (= (getValueByKey!1048 lt!1686720 (_1!28784 lt!1686677)) (Some!11067 (_2!28784 lt!1686677)))))

(declare-fun lemmaContainsTupThenGetReturnValue!646 (List!50701 (_ BitVec 64) List!50700) Unit!93112)

(assert (=> d!1386068 (= lt!1686718 (lemmaContainsTupThenGetReturnValue!646 lt!1686720 (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))

(declare-fun insertStrictlySorted!386 (List!50701 (_ BitVec 64) List!50700) List!50701)

(assert (=> d!1386068 (= lt!1686720 (insertStrictlySorted!386 (toList!4279 lm!1477) (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))

(assert (=> d!1386068 (= (+!1492 lm!1477 lt!1686677) lt!1686717)))

(declare-fun b!4508090 () Bool)

(declare-fun res!1874817 () Bool)

(assert (=> b!4508090 (=> (not res!1874817) (not e!2808366))))

(assert (=> b!4508090 (= res!1874817 (= (getValueByKey!1048 (toList!4279 lt!1686717) (_1!28784 lt!1686677)) (Some!11067 (_2!28784 lt!1686677))))))

(declare-fun b!4508091 () Bool)

(assert (=> b!4508091 (= e!2808366 (contains!13268 (toList!4279 lt!1686717) lt!1686677))))

(assert (= (and d!1386068 res!1874816) b!4508090))

(assert (= (and b!4508090 res!1874817) b!4508091))

(declare-fun m!5245489 () Bool)

(assert (=> d!1386068 m!5245489))

(declare-fun m!5245491 () Bool)

(assert (=> d!1386068 m!5245491))

(declare-fun m!5245495 () Bool)

(assert (=> d!1386068 m!5245495))

(declare-fun m!5245499 () Bool)

(assert (=> d!1386068 m!5245499))

(declare-fun m!5245503 () Bool)

(assert (=> b!4508090 m!5245503))

(declare-fun m!5245505 () Bool)

(assert (=> b!4508091 m!5245505))

(assert (=> b!4508039 d!1386068))

(declare-fun d!1386074 () Bool)

(declare-fun e!2808368 () Bool)

(assert (=> d!1386074 e!2808368))

(declare-fun res!1874818 () Bool)

(assert (=> d!1386074 (=> (not res!1874818) (not e!2808368))))

(declare-fun lt!1686722 () ListLongMap!2911)

(assert (=> d!1386074 (= res!1874818 (contains!13269 lt!1686722 (_1!28784 lt!1686680)))))

(declare-fun lt!1686725 () List!50701)

(assert (=> d!1386074 (= lt!1686722 (ListLongMap!2912 lt!1686725))))

(declare-fun lt!1686724 () Unit!93112)

(declare-fun lt!1686723 () Unit!93112)

(assert (=> d!1386074 (= lt!1686724 lt!1686723)))

(assert (=> d!1386074 (= (getValueByKey!1048 lt!1686725 (_1!28784 lt!1686680)) (Some!11067 (_2!28784 lt!1686680)))))

(assert (=> d!1386074 (= lt!1686723 (lemmaContainsTupThenGetReturnValue!646 lt!1686725 (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))

(assert (=> d!1386074 (= lt!1686725 (insertStrictlySorted!386 (toList!4279 lt!1686667) (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))

(assert (=> d!1386074 (= (+!1492 lt!1686667 lt!1686680) lt!1686722)))

(declare-fun b!4508094 () Bool)

(declare-fun res!1874819 () Bool)

(assert (=> b!4508094 (=> (not res!1874819) (not e!2808368))))

(assert (=> b!4508094 (= res!1874819 (= (getValueByKey!1048 (toList!4279 lt!1686722) (_1!28784 lt!1686680)) (Some!11067 (_2!28784 lt!1686680))))))

(declare-fun b!4508095 () Bool)

(assert (=> b!4508095 (= e!2808368 (contains!13268 (toList!4279 lt!1686722) lt!1686680))))

(assert (= (and d!1386074 res!1874818) b!4508094))

(assert (= (and b!4508094 res!1874819) b!4508095))

(declare-fun m!5245509 () Bool)

(assert (=> d!1386074 m!5245509))

(declare-fun m!5245511 () Bool)

(assert (=> d!1386074 m!5245511))

(declare-fun m!5245513 () Bool)

(assert (=> d!1386074 m!5245513))

(declare-fun m!5245515 () Bool)

(assert (=> d!1386074 m!5245515))

(declare-fun m!5245517 () Bool)

(assert (=> b!4508094 m!5245517))

(declare-fun m!5245519 () Bool)

(assert (=> b!4508095 m!5245519))

(assert (=> b!4508039 d!1386074))

(declare-fun d!1386078 () Bool)

(declare-fun res!1874831 () Bool)

(declare-fun e!2808377 () Bool)

(assert (=> d!1386078 (=> res!1874831 e!2808377)))

(declare-fun e!2808378 () Bool)

(assert (=> d!1386078 (= res!1874831 e!2808378)))

(declare-fun res!1874832 () Bool)

(assert (=> d!1386078 (=> (not res!1874832) (not e!2808378))))

(assert (=> d!1386078 (= res!1874832 ((_ is Cons!50577) (t!357663 (toList!4279 lm!1477))))))

(assert (=> d!1386078 (= (containsKeyBiggerList!116 (t!357663 (toList!4279 lm!1477)) key!3287) e!2808377)))

(declare-fun b!4508106 () Bool)

(assert (=> b!4508106 (= e!2808378 (containsKey!1712 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(declare-fun b!4508107 () Bool)

(declare-fun e!2808379 () Bool)

(assert (=> b!4508107 (= e!2808377 e!2808379)))

(declare-fun res!1874830 () Bool)

(assert (=> b!4508107 (=> (not res!1874830) (not e!2808379))))

(assert (=> b!4508107 (= res!1874830 ((_ is Cons!50577) (t!357663 (toList!4279 lm!1477))))))

(declare-fun b!4508108 () Bool)

(assert (=> b!4508108 (= e!2808379 (containsKeyBiggerList!116 (t!357663 (t!357663 (toList!4279 lm!1477))) key!3287))))

(assert (= (and d!1386078 res!1874832) b!4508106))

(assert (= (and d!1386078 (not res!1874831)) b!4508107))

(assert (= (and b!4508107 res!1874830) b!4508108))

(declare-fun m!5245521 () Bool)

(assert (=> b!4508106 m!5245521))

(declare-fun m!5245523 () Bool)

(assert (=> b!4508108 m!5245523))

(assert (=> b!4508029 d!1386078))

(declare-fun d!1386080 () Bool)

(declare-fun res!1874836 () Bool)

(declare-fun e!2808381 () Bool)

(assert (=> d!1386080 (=> res!1874836 e!2808381)))

(declare-fun e!2808382 () Bool)

(assert (=> d!1386080 (= res!1874836 e!2808382)))

(declare-fun res!1874837 () Bool)

(assert (=> d!1386080 (=> (not res!1874837) (not e!2808382))))

(assert (=> d!1386080 (= res!1874837 ((_ is Cons!50577) (toList!4279 lt!1686666)))))

(assert (=> d!1386080 (= (containsKeyBiggerList!116 (toList!4279 lt!1686666) key!3287) e!2808381)))

(declare-fun b!4508111 () Bool)

(assert (=> b!4508111 (= e!2808382 (containsKey!1712 (_2!28784 (h!56408 (toList!4279 lt!1686666))) key!3287))))

(declare-fun b!4508112 () Bool)

(declare-fun e!2808383 () Bool)

(assert (=> b!4508112 (= e!2808381 e!2808383)))

(declare-fun res!1874835 () Bool)

(assert (=> b!4508112 (=> (not res!1874835) (not e!2808383))))

(assert (=> b!4508112 (= res!1874835 ((_ is Cons!50577) (toList!4279 lt!1686666)))))

(declare-fun b!4508113 () Bool)

(assert (=> b!4508113 (= e!2808383 (containsKeyBiggerList!116 (t!357663 (toList!4279 lt!1686666)) key!3287))))

(assert (= (and d!1386080 res!1874837) b!4508111))

(assert (= (and d!1386080 (not res!1874836)) b!4508112))

(assert (= (and b!4508112 res!1874835) b!4508113))

(declare-fun m!5245537 () Bool)

(assert (=> b!4508111 m!5245537))

(declare-fun m!5245539 () Bool)

(assert (=> b!4508113 m!5245539))

(assert (=> b!4508029 d!1386080))

(declare-fun bs!845053 () Bool)

(declare-fun d!1386084 () Bool)

(assert (= bs!845053 (and d!1386084 start!445428)))

(declare-fun lambda!169986 () Int)

(assert (=> bs!845053 (= lambda!169986 lambda!169975)))

(assert (=> d!1386084 (containsKeyBiggerList!116 (toList!4279 lt!1686666) key!3287)))

(declare-fun lt!1686754 () Unit!93112)

(declare-fun choose!29252 (ListLongMap!2911 K!11980 Hashable!5531) Unit!93112)

(assert (=> d!1386084 (= lt!1686754 (choose!29252 lt!1686666 key!3287 hashF!1107))))

(assert (=> d!1386084 (forall!10207 (toList!4279 lt!1686666) lambda!169986)))

(assert (=> d!1386084 (= (lemmaInLongMapThenContainsKeyBiggerList!52 lt!1686666 key!3287 hashF!1107) lt!1686754)))

(declare-fun bs!845054 () Bool)

(assert (= bs!845054 d!1386084))

(assert (=> bs!845054 m!5245373))

(declare-fun m!5245611 () Bool)

(assert (=> bs!845054 m!5245611))

(declare-fun m!5245613 () Bool)

(assert (=> bs!845054 m!5245613))

(assert (=> b!4508029 d!1386084))

(declare-fun d!1386110 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8290 (List!50700) (InoxSet tuple2!50978))

(assert (=> d!1386110 (= (eq!593 (extractMap!1192 (toList!4279 lt!1686674)) (addToMapMapFromBucket!663 (_2!28784 lt!1686680) lt!1686668)) (= (content!8290 (toList!4280 (extractMap!1192 (toList!4279 lt!1686674)))) (content!8290 (toList!4280 (addToMapMapFromBucket!663 (_2!28784 lt!1686680) lt!1686668)))))))

(declare-fun bs!845055 () Bool)

(assert (= bs!845055 d!1386110))

(declare-fun m!5245615 () Bool)

(assert (=> bs!845055 m!5245615))

(declare-fun m!5245617 () Bool)

(assert (=> bs!845055 m!5245617))

(assert (=> b!4508040 d!1386110))

(declare-fun bs!845062 () Bool)

(declare-fun d!1386112 () Bool)

(assert (= bs!845062 (and d!1386112 start!445428)))

(declare-fun lambda!169992 () Int)

(assert (=> bs!845062 (= lambda!169992 lambda!169975)))

(declare-fun bs!845063 () Bool)

(assert (= bs!845063 (and d!1386112 d!1386084)))

(assert (=> bs!845063 (= lambda!169992 lambda!169986)))

(declare-fun lt!1686763 () ListMap!3541)

(declare-fun invariantList!995 (List!50700) Bool)

(assert (=> d!1386112 (invariantList!995 (toList!4280 lt!1686763))))

(declare-fun e!2808406 () ListMap!3541)

(assert (=> d!1386112 (= lt!1686763 e!2808406)))

(declare-fun c!768896 () Bool)

(assert (=> d!1386112 (= c!768896 ((_ is Cons!50577) (toList!4279 lt!1686674)))))

(assert (=> d!1386112 (forall!10207 (toList!4279 lt!1686674) lambda!169992)))

(assert (=> d!1386112 (= (extractMap!1192 (toList!4279 lt!1686674)) lt!1686763)))

(declare-fun b!4508143 () Bool)

(assert (=> b!4508143 (= e!2808406 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))))))

(declare-fun b!4508144 () Bool)

(assert (=> b!4508144 (= e!2808406 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386112 c!768896) b!4508143))

(assert (= (and d!1386112 (not c!768896)) b!4508144))

(declare-fun m!5245651 () Bool)

(assert (=> d!1386112 m!5245651))

(declare-fun m!5245653 () Bool)

(assert (=> d!1386112 m!5245653))

(declare-fun m!5245655 () Bool)

(assert (=> b!4508143 m!5245655))

(assert (=> b!4508143 m!5245655))

(declare-fun m!5245657 () Bool)

(assert (=> b!4508143 m!5245657))

(assert (=> b!4508040 d!1386112))

(declare-fun b!4508216 () Bool)

(assert (=> b!4508216 true))

(declare-fun bs!845111 () Bool)

(declare-fun b!4508218 () Bool)

(assert (= bs!845111 (and b!4508218 b!4508216)))

(declare-fun lambda!170063 () Int)

(declare-fun lambda!170062 () Int)

(assert (=> bs!845111 (= lambda!170063 lambda!170062)))

(assert (=> b!4508218 true))

(declare-fun lambda!170064 () Int)

(declare-fun lt!1686926 () ListMap!3541)

(assert (=> bs!845111 (= (= lt!1686926 lt!1686668) (= lambda!170064 lambda!170062))))

(assert (=> b!4508218 (= (= lt!1686926 lt!1686668) (= lambda!170064 lambda!170063))))

(assert (=> b!4508218 true))

(declare-fun bs!845112 () Bool)

(declare-fun d!1386122 () Bool)

(assert (= bs!845112 (and d!1386122 b!4508216)))

(declare-fun lambda!170065 () Int)

(declare-fun lt!1686928 () ListMap!3541)

(assert (=> bs!845112 (= (= lt!1686928 lt!1686668) (= lambda!170065 lambda!170062))))

(declare-fun bs!845113 () Bool)

(assert (= bs!845113 (and d!1386122 b!4508218)))

(assert (=> bs!845113 (= (= lt!1686928 lt!1686668) (= lambda!170065 lambda!170063))))

(assert (=> bs!845113 (= (= lt!1686928 lt!1686926) (= lambda!170065 lambda!170064))))

(assert (=> d!1386122 true))

(declare-fun call!313904 () Bool)

(declare-fun lt!1686916 () ListMap!3541)

(declare-fun c!768916 () Bool)

(declare-fun bm!313899 () Bool)

(declare-fun forall!10208 (List!50700 Int) Bool)

(assert (=> bm!313899 (= call!313904 (forall!10208 (ite c!768916 (toList!4280 lt!1686668) (toList!4280 lt!1686916)) (ite c!768916 lambda!170062 lambda!170064)))))

(declare-fun b!4508215 () Bool)

(declare-fun e!2808451 () Bool)

(assert (=> b!4508215 (= e!2808451 (invariantList!995 (toList!4280 lt!1686928)))))

(declare-fun e!2808452 () ListMap!3541)

(assert (=> b!4508216 (= e!2808452 lt!1686668)))

(declare-fun lt!1686919 () Unit!93112)

(declare-fun call!313906 () Unit!93112)

(assert (=> b!4508216 (= lt!1686919 call!313906)))

(declare-fun call!313905 () Bool)

(assert (=> b!4508216 call!313905))

(declare-fun lt!1686917 () Unit!93112)

(assert (=> b!4508216 (= lt!1686917 lt!1686919)))

(assert (=> b!4508216 call!313904))

(declare-fun lt!1686918 () Unit!93112)

(declare-fun Unit!93122 () Unit!93112)

(assert (=> b!4508216 (= lt!1686918 Unit!93122)))

(declare-fun bm!313900 () Bool)

(assert (=> bm!313900 (= call!313905 (forall!10208 (toList!4280 lt!1686668) (ite c!768916 lambda!170062 lambda!170063)))))

(declare-fun bm!313901 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!315 (ListMap!3541) Unit!93112)

(assert (=> bm!313901 (= call!313906 (lemmaContainsAllItsOwnKeys!315 lt!1686668))))

(declare-fun b!4508217 () Bool)

(declare-fun e!2808453 () Bool)

(assert (=> b!4508217 (= e!2808453 (forall!10208 (toList!4280 lt!1686668) lambda!170064))))

(assert (=> b!4508218 (= e!2808452 lt!1686926)))

(declare-fun +!1493 (ListMap!3541 tuple2!50978) ListMap!3541)

(assert (=> b!4508218 (= lt!1686916 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))))))

(assert (=> b!4508218 (= lt!1686926 (addToMapMapFromBucket!663 (t!357662 (_2!28784 lt!1686680)) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun lt!1686925 () Unit!93112)

(assert (=> b!4508218 (= lt!1686925 call!313906)))

(assert (=> b!4508218 call!313905))

(declare-fun lt!1686915 () Unit!93112)

(assert (=> b!4508218 (= lt!1686915 lt!1686925)))

(assert (=> b!4508218 (forall!10208 (toList!4280 lt!1686916) lambda!170064)))

(declare-fun lt!1686923 () Unit!93112)

(declare-fun Unit!93123 () Unit!93112)

(assert (=> b!4508218 (= lt!1686923 Unit!93123)))

(assert (=> b!4508218 (forall!10208 (t!357662 (_2!28784 lt!1686680)) lambda!170064)))

(declare-fun lt!1686924 () Unit!93112)

(declare-fun Unit!93124 () Unit!93112)

(assert (=> b!4508218 (= lt!1686924 Unit!93124)))

(declare-fun lt!1686922 () Unit!93112)

(declare-fun Unit!93125 () Unit!93112)

(assert (=> b!4508218 (= lt!1686922 Unit!93125)))

(declare-fun lt!1686930 () Unit!93112)

(declare-fun forallContained!2460 (List!50700 Int tuple2!50978) Unit!93112)

(assert (=> b!4508218 (= lt!1686930 (forallContained!2460 (toList!4280 lt!1686916) lambda!170064 (h!56407 (_2!28784 lt!1686680))))))

(assert (=> b!4508218 (contains!13267 lt!1686916 (_1!28783 (h!56407 (_2!28784 lt!1686680))))))

(declare-fun lt!1686921 () Unit!93112)

(declare-fun Unit!93126 () Unit!93112)

(assert (=> b!4508218 (= lt!1686921 Unit!93126)))

(assert (=> b!4508218 (contains!13267 lt!1686926 (_1!28783 (h!56407 (_2!28784 lt!1686680))))))

(declare-fun lt!1686929 () Unit!93112)

(declare-fun Unit!93127 () Unit!93112)

(assert (=> b!4508218 (= lt!1686929 Unit!93127)))

(assert (=> b!4508218 (forall!10208 (_2!28784 lt!1686680) lambda!170064)))

(declare-fun lt!1686933 () Unit!93112)

(declare-fun Unit!93128 () Unit!93112)

(assert (=> b!4508218 (= lt!1686933 Unit!93128)))

(assert (=> b!4508218 call!313904))

(declare-fun lt!1686934 () Unit!93112)

(declare-fun Unit!93129 () Unit!93112)

(assert (=> b!4508218 (= lt!1686934 Unit!93129)))

(declare-fun lt!1686931 () Unit!93112)

(declare-fun Unit!93130 () Unit!93112)

(assert (=> b!4508218 (= lt!1686931 Unit!93130)))

(declare-fun lt!1686932 () Unit!93112)

(declare-fun addForallContainsKeyThenBeforeAdding!315 (ListMap!3541 ListMap!3541 K!11980 V!12226) Unit!93112)

(assert (=> b!4508218 (= lt!1686932 (addForallContainsKeyThenBeforeAdding!315 lt!1686668 lt!1686926 (_1!28783 (h!56407 (_2!28784 lt!1686680))) (_2!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> b!4508218 (forall!10208 (toList!4280 lt!1686668) lambda!170064)))

(declare-fun lt!1686914 () Unit!93112)

(assert (=> b!4508218 (= lt!1686914 lt!1686932)))

(assert (=> b!4508218 (forall!10208 (toList!4280 lt!1686668) lambda!170064)))

(declare-fun lt!1686927 () Unit!93112)

(declare-fun Unit!93131 () Unit!93112)

(assert (=> b!4508218 (= lt!1686927 Unit!93131)))

(declare-fun res!1874890 () Bool)

(assert (=> b!4508218 (= res!1874890 (forall!10208 (_2!28784 lt!1686680) lambda!170064))))

(assert (=> b!4508218 (=> (not res!1874890) (not e!2808453))))

(assert (=> b!4508218 e!2808453))

(declare-fun lt!1686920 () Unit!93112)

(declare-fun Unit!93132 () Unit!93112)

(assert (=> b!4508218 (= lt!1686920 Unit!93132)))

(assert (=> d!1386122 e!2808451))

(declare-fun res!1874891 () Bool)

(assert (=> d!1386122 (=> (not res!1874891) (not e!2808451))))

(assert (=> d!1386122 (= res!1874891 (forall!10208 (_2!28784 lt!1686680) lambda!170065))))

(assert (=> d!1386122 (= lt!1686928 e!2808452)))

(assert (=> d!1386122 (= c!768916 ((_ is Nil!50576) (_2!28784 lt!1686680)))))

(assert (=> d!1386122 (noDuplicateKeys!1136 (_2!28784 lt!1686680))))

(assert (=> d!1386122 (= (addToMapMapFromBucket!663 (_2!28784 lt!1686680) lt!1686668) lt!1686928)))

(declare-fun b!4508219 () Bool)

(declare-fun res!1874889 () Bool)

(assert (=> b!4508219 (=> (not res!1874889) (not e!2808451))))

(assert (=> b!4508219 (= res!1874889 (forall!10208 (toList!4280 lt!1686668) lambda!170065))))

(assert (= (and d!1386122 c!768916) b!4508216))

(assert (= (and d!1386122 (not c!768916)) b!4508218))

(assert (= (and b!4508218 res!1874890) b!4508217))

(assert (= (or b!4508216 b!4508218) bm!313899))

(assert (= (or b!4508216 b!4508218) bm!313900))

(assert (= (or b!4508216 b!4508218) bm!313901))

(assert (= (and d!1386122 res!1874891) b!4508219))

(assert (= (and b!4508219 res!1874889) b!4508215))

(declare-fun m!5245797 () Bool)

(assert (=> bm!313901 m!5245797))

(declare-fun m!5245799 () Bool)

(assert (=> b!4508217 m!5245799))

(assert (=> b!4508218 m!5245799))

(declare-fun m!5245801 () Bool)

(assert (=> b!4508218 m!5245801))

(declare-fun m!5245803 () Bool)

(assert (=> b!4508218 m!5245803))

(assert (=> b!4508218 m!5245799))

(declare-fun m!5245805 () Bool)

(assert (=> b!4508218 m!5245805))

(declare-fun m!5245807 () Bool)

(assert (=> b!4508218 m!5245807))

(assert (=> b!4508218 m!5245807))

(declare-fun m!5245809 () Bool)

(assert (=> b!4508218 m!5245809))

(declare-fun m!5245811 () Bool)

(assert (=> b!4508218 m!5245811))

(assert (=> b!4508218 m!5245803))

(declare-fun m!5245813 () Bool)

(assert (=> b!4508218 m!5245813))

(declare-fun m!5245815 () Bool)

(assert (=> b!4508218 m!5245815))

(declare-fun m!5245817 () Bool)

(assert (=> b!4508218 m!5245817))

(declare-fun m!5245819 () Bool)

(assert (=> bm!313899 m!5245819))

(declare-fun m!5245821 () Bool)

(assert (=> b!4508219 m!5245821))

(declare-fun m!5245823 () Bool)

(assert (=> b!4508215 m!5245823))

(declare-fun m!5245827 () Bool)

(assert (=> d!1386122 m!5245827))

(declare-fun m!5245829 () Bool)

(assert (=> d!1386122 m!5245829))

(declare-fun m!5245833 () Bool)

(assert (=> bm!313900 m!5245833))

(assert (=> b!4508040 d!1386122))

(declare-fun d!1386152 () Bool)

(declare-fun e!2808481 () Bool)

(assert (=> d!1386152 e!2808481))

(declare-fun res!1874912 () Bool)

(assert (=> d!1386152 (=> res!1874912 e!2808481)))

(declare-fun lt!1686950 () Bool)

(assert (=> d!1386152 (= res!1874912 (not lt!1686950))))

(declare-fun lt!1686951 () Bool)

(assert (=> d!1386152 (= lt!1686950 lt!1686951)))

(declare-fun lt!1686952 () Unit!93112)

(declare-fun e!2808480 () Unit!93112)

(assert (=> d!1386152 (= lt!1686952 e!2808480)))

(declare-fun c!768923 () Bool)

(assert (=> d!1386152 (= c!768923 lt!1686951)))

(declare-fun containsKey!1714 (List!50701 (_ BitVec 64)) Bool)

(assert (=> d!1386152 (= lt!1686951 (containsKey!1714 (toList!4279 lt!1686666) hash!344))))

(assert (=> d!1386152 (= (contains!13269 lt!1686666 hash!344) lt!1686950)))

(declare-fun b!4508254 () Bool)

(declare-fun lt!1686953 () Unit!93112)

(assert (=> b!4508254 (= e!2808480 lt!1686953)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!951 (List!50701 (_ BitVec 64)) Unit!93112)

(assert (=> b!4508254 (= lt!1686953 (lemmaContainsKeyImpliesGetValueByKeyDefined!951 (toList!4279 lt!1686666) hash!344))))

(declare-fun isDefined!8354 (Option!11068) Bool)

(assert (=> b!4508254 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1686666) hash!344))))

(declare-fun b!4508255 () Bool)

(declare-fun Unit!93133 () Unit!93112)

(assert (=> b!4508255 (= e!2808480 Unit!93133)))

(declare-fun b!4508256 () Bool)

(assert (=> b!4508256 (= e!2808481 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1686666) hash!344)))))

(assert (= (and d!1386152 c!768923) b!4508254))

(assert (= (and d!1386152 (not c!768923)) b!4508255))

(assert (= (and d!1386152 (not res!1874912)) b!4508256))

(declare-fun m!5245843 () Bool)

(assert (=> d!1386152 m!5245843))

(declare-fun m!5245845 () Bool)

(assert (=> b!4508254 m!5245845))

(declare-fun m!5245847 () Bool)

(assert (=> b!4508254 m!5245847))

(assert (=> b!4508254 m!5245847))

(declare-fun m!5245849 () Bool)

(assert (=> b!4508254 m!5245849))

(assert (=> b!4508256 m!5245847))

(assert (=> b!4508256 m!5245847))

(assert (=> b!4508256 m!5245849))

(assert (=> b!4508027 d!1386152))

(declare-fun d!1386162 () Bool)

(declare-fun tail!7689 (List!50701) List!50701)

(assert (=> d!1386162 (= (tail!7688 lm!1477) (ListLongMap!2912 (tail!7689 (toList!4279 lm!1477))))))

(declare-fun bs!845126 () Bool)

(assert (= bs!845126 d!1386162))

(declare-fun m!5245855 () Bool)

(assert (=> bs!845126 m!5245855))

(assert (=> b!4508027 d!1386162))

(declare-fun d!1386164 () Bool)

(declare-fun res!1874919 () Bool)

(declare-fun e!2808488 () Bool)

(assert (=> d!1386164 (=> res!1874919 e!2808488)))

(assert (=> d!1386164 (= res!1874919 (not ((_ is Cons!50576) newBucket!178)))))

(assert (=> d!1386164 (= (noDuplicateKeys!1136 newBucket!178) e!2808488)))

(declare-fun b!4508267 () Bool)

(declare-fun e!2808489 () Bool)

(assert (=> b!4508267 (= e!2808488 e!2808489)))

(declare-fun res!1874920 () Bool)

(assert (=> b!4508267 (=> (not res!1874920) (not e!2808489))))

(assert (=> b!4508267 (= res!1874920 (not (containsKey!1712 (t!357662 newBucket!178) (_1!28783 (h!56407 newBucket!178)))))))

(declare-fun b!4508268 () Bool)

(assert (=> b!4508268 (= e!2808489 (noDuplicateKeys!1136 (t!357662 newBucket!178)))))

(assert (= (and d!1386164 (not res!1874919)) b!4508267))

(assert (= (and b!4508267 res!1874920) b!4508268))

(declare-fun m!5245865 () Bool)

(assert (=> b!4508267 m!5245865))

(declare-fun m!5245867 () Bool)

(assert (=> b!4508268 m!5245867))

(assert (=> b!4508028 d!1386164))

(declare-fun d!1386170 () Bool)

(assert (=> d!1386170 (= (eq!593 lt!1686664 lt!1686671) (= (content!8290 (toList!4280 lt!1686664)) (content!8290 (toList!4280 lt!1686671))))))

(declare-fun bs!845131 () Bool)

(assert (= bs!845131 d!1386170))

(declare-fun m!5245869 () Bool)

(assert (=> bs!845131 m!5245869))

(declare-fun m!5245871 () Bool)

(assert (=> bs!845131 m!5245871))

(assert (=> b!4508032 d!1386170))

(declare-fun d!1386172 () Bool)

(declare-fun lt!1686961 () Bool)

(declare-fun content!8291 (List!50701) (InoxSet tuple2!50980))

(assert (=> d!1386172 (= lt!1686961 (select (content!8291 (t!357663 (toList!4279 lm!1477))) lt!1686676))))

(declare-fun e!2808497 () Bool)

(assert (=> d!1386172 (= lt!1686961 e!2808497)))

(declare-fun res!1874926 () Bool)

(assert (=> d!1386172 (=> (not res!1874926) (not e!2808497))))

(assert (=> d!1386172 (= res!1874926 ((_ is Cons!50577) (t!357663 (toList!4279 lm!1477))))))

(assert (=> d!1386172 (= (contains!13268 (t!357663 (toList!4279 lm!1477)) lt!1686676) lt!1686961)))

(declare-fun b!4508276 () Bool)

(declare-fun e!2808496 () Bool)

(assert (=> b!4508276 (= e!2808497 e!2808496)))

(declare-fun res!1874927 () Bool)

(assert (=> b!4508276 (=> res!1874927 e!2808496)))

(assert (=> b!4508276 (= res!1874927 (= (h!56408 (t!357663 (toList!4279 lm!1477))) lt!1686676))))

(declare-fun b!4508277 () Bool)

(assert (=> b!4508277 (= e!2808496 (contains!13268 (t!357663 (t!357663 (toList!4279 lm!1477))) lt!1686676))))

(assert (= (and d!1386172 res!1874926) b!4508276))

(assert (= (and b!4508276 (not res!1874927)) b!4508277))

(declare-fun m!5245881 () Bool)

(assert (=> d!1386172 m!5245881))

(declare-fun m!5245883 () Bool)

(assert (=> d!1386172 m!5245883))

(declare-fun m!5245885 () Bool)

(assert (=> b!4508277 m!5245885))

(assert (=> b!4508030 d!1386172))

(declare-fun d!1386178 () Bool)

(declare-fun head!9368 (List!50701) tuple2!50980)

(assert (=> d!1386178 (= (head!9366 lt!1686674) (head!9368 (toList!4279 lt!1686674)))))

(declare-fun bs!845133 () Bool)

(assert (= bs!845133 d!1386178))

(declare-fun m!5245887 () Bool)

(assert (=> bs!845133 m!5245887))

(assert (=> b!4508041 d!1386178))

(declare-fun bs!845147 () Bool)

(declare-fun d!1386180 () Bool)

(assert (= bs!845147 (and d!1386180 start!445428)))

(declare-fun lambda!170077 () Int)

(assert (=> bs!845147 (= lambda!170077 lambda!169975)))

(declare-fun bs!845148 () Bool)

(assert (= bs!845148 (and d!1386180 d!1386084)))

(assert (=> bs!845148 (= lambda!170077 lambda!169986)))

(declare-fun bs!845149 () Bool)

(assert (= bs!845149 (and d!1386180 d!1386112)))

(assert (=> bs!845149 (= lambda!170077 lambda!169992)))

(assert (=> d!1386180 (contains!13267 (extractMap!1192 (toList!4279 lt!1686666)) key!3287)))

(declare-fun lt!1686967 () Unit!93112)

(declare-fun choose!29253 (ListLongMap!2911 K!11980 Hashable!5531) Unit!93112)

(assert (=> d!1386180 (= lt!1686967 (choose!29253 lt!1686666 key!3287 hashF!1107))))

(assert (=> d!1386180 (forall!10207 (toList!4279 lt!1686666) lambda!170077)))

(assert (=> d!1386180 (= (lemmaListContainsThenExtractedMapContains!106 lt!1686666 key!3287 hashF!1107) lt!1686967)))

(declare-fun bs!845150 () Bool)

(assert (= bs!845150 d!1386180))

(assert (=> bs!845150 m!5245427))

(assert (=> bs!845150 m!5245427))

(declare-fun m!5245895 () Bool)

(assert (=> bs!845150 m!5245895))

(declare-fun m!5245897 () Bool)

(assert (=> bs!845150 m!5245897))

(declare-fun m!5245899 () Bool)

(assert (=> bs!845150 m!5245899))

(assert (=> b!4508023 d!1386180))

(declare-fun b!4508306 () Bool)

(declare-fun e!2808520 () Bool)

(declare-fun e!2808516 () Bool)

(assert (=> b!4508306 (= e!2808520 e!2808516)))

(declare-fun res!1874935 () Bool)

(assert (=> b!4508306 (=> (not res!1874935) (not e!2808516))))

(declare-datatypes ((Option!11069 0))(
  ( (None!11068) (Some!11068 (v!44604 V!12226)) )
))
(declare-fun isDefined!8355 (Option!11069) Bool)

(declare-fun getValueByKey!1049 (List!50700 K!11980) Option!11069)

(assert (=> b!4508306 (= res!1874935 (isDefined!8355 (getValueByKey!1049 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287)))))

(declare-fun b!4508307 () Bool)

(assert (=> b!4508307 false))

(declare-fun lt!1686984 () Unit!93112)

(declare-fun lt!1686987 () Unit!93112)

(assert (=> b!4508307 (= lt!1686984 lt!1686987)))

(declare-fun containsKey!1715 (List!50700 K!11980) Bool)

(assert (=> b!4508307 (containsKey!1715 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!442 (List!50700 K!11980) Unit!93112)

(assert (=> b!4508307 (= lt!1686987 (lemmaInGetKeysListThenContainsKey!442 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(declare-fun e!2808517 () Unit!93112)

(declare-fun Unit!93145 () Unit!93112)

(assert (=> b!4508307 (= e!2808517 Unit!93145)))

(declare-fun b!4508308 () Bool)

(declare-fun e!2808519 () Unit!93112)

(assert (=> b!4508308 (= e!2808519 e!2808517)))

(declare-fun c!768932 () Bool)

(declare-fun call!313909 () Bool)

(assert (=> b!4508308 (= c!768932 call!313909)))

(declare-fun bm!313904 () Bool)

(declare-datatypes ((List!50703 0))(
  ( (Nil!50579) (Cons!50579 (h!56412 K!11980) (t!357665 List!50703)) )
))
(declare-fun e!2808521 () List!50703)

(declare-fun contains!13271 (List!50703 K!11980) Bool)

(assert (=> bm!313904 (= call!313909 (contains!13271 e!2808521 key!3287))))

(declare-fun c!768931 () Bool)

(declare-fun c!768933 () Bool)

(assert (=> bm!313904 (= c!768931 c!768933)))

(declare-fun b!4508309 () Bool)

(declare-fun keys!17548 (ListMap!3541) List!50703)

(assert (=> b!4508309 (= e!2808516 (contains!13271 (keys!17548 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(declare-fun b!4508310 () Bool)

(declare-fun Unit!93147 () Unit!93112)

(assert (=> b!4508310 (= e!2808517 Unit!93147)))

(declare-fun b!4508311 () Bool)

(assert (=> b!4508311 (= e!2808521 (keys!17548 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))

(declare-fun b!4508312 () Bool)

(declare-fun lt!1686991 () Unit!93112)

(assert (=> b!4508312 (= e!2808519 lt!1686991)))

(declare-fun lt!1686985 () Unit!93112)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!953 (List!50700 K!11980) Unit!93112)

(assert (=> b!4508312 (= lt!1686985 (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(assert (=> b!4508312 (isDefined!8355 (getValueByKey!1049 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(declare-fun lt!1686990 () Unit!93112)

(assert (=> b!4508312 (= lt!1686990 lt!1686985)))

(declare-fun lemmaInListThenGetKeysListContains!439 (List!50700 K!11980) Unit!93112)

(assert (=> b!4508312 (= lt!1686991 (lemmaInListThenGetKeysListContains!439 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(assert (=> b!4508312 call!313909))

(declare-fun d!1386182 () Bool)

(assert (=> d!1386182 e!2808520))

(declare-fun res!1874936 () Bool)

(assert (=> d!1386182 (=> res!1874936 e!2808520)))

(declare-fun e!2808518 () Bool)

(assert (=> d!1386182 (= res!1874936 e!2808518)))

(declare-fun res!1874934 () Bool)

(assert (=> d!1386182 (=> (not res!1874934) (not e!2808518))))

(declare-fun lt!1686988 () Bool)

(assert (=> d!1386182 (= res!1874934 (not lt!1686988))))

(declare-fun lt!1686986 () Bool)

(assert (=> d!1386182 (= lt!1686988 lt!1686986)))

(declare-fun lt!1686989 () Unit!93112)

(assert (=> d!1386182 (= lt!1686989 e!2808519)))

(assert (=> d!1386182 (= c!768933 lt!1686986)))

(assert (=> d!1386182 (= lt!1686986 (containsKey!1715 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(assert (=> d!1386182 (= (contains!13267 (extractMap!1192 (t!357663 (toList!4279 lm!1477))) key!3287) lt!1686988)))

(declare-fun b!4508313 () Bool)

(assert (=> b!4508313 (= e!2808518 (not (contains!13271 (keys!17548 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287)))))

(declare-fun b!4508314 () Bool)

(declare-fun getKeysList!443 (List!50700) List!50703)

(assert (=> b!4508314 (= e!2808521 (getKeysList!443 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))

(assert (= (and d!1386182 c!768933) b!4508312))

(assert (= (and d!1386182 (not c!768933)) b!4508308))

(assert (= (and b!4508308 c!768932) b!4508307))

(assert (= (and b!4508308 (not c!768932)) b!4508310))

(assert (= (or b!4508312 b!4508308) bm!313904))

(assert (= (and bm!313904 c!768931) b!4508314))

(assert (= (and bm!313904 (not c!768931)) b!4508311))

(assert (= (and d!1386182 res!1874934) b!4508313))

(assert (= (and d!1386182 (not res!1874936)) b!4508306))

(assert (= (and b!4508306 res!1874935) b!4508309))

(declare-fun m!5245905 () Bool)

(assert (=> b!4508312 m!5245905))

(declare-fun m!5245907 () Bool)

(assert (=> b!4508312 m!5245907))

(assert (=> b!4508312 m!5245907))

(declare-fun m!5245909 () Bool)

(assert (=> b!4508312 m!5245909))

(declare-fun m!5245911 () Bool)

(assert (=> b!4508312 m!5245911))

(declare-fun m!5245913 () Bool)

(assert (=> bm!313904 m!5245913))

(assert (=> b!4508306 m!5245907))

(assert (=> b!4508306 m!5245907))

(assert (=> b!4508306 m!5245909))

(declare-fun m!5245915 () Bool)

(assert (=> b!4508314 m!5245915))

(declare-fun m!5245917 () Bool)

(assert (=> d!1386182 m!5245917))

(assert (=> b!4508311 m!5245431))

(declare-fun m!5245919 () Bool)

(assert (=> b!4508311 m!5245919))

(assert (=> b!4508307 m!5245917))

(declare-fun m!5245921 () Bool)

(assert (=> b!4508307 m!5245921))

(assert (=> b!4508313 m!5245431))

(assert (=> b!4508313 m!5245919))

(assert (=> b!4508313 m!5245919))

(declare-fun m!5245923 () Bool)

(assert (=> b!4508313 m!5245923))

(assert (=> b!4508309 m!5245431))

(assert (=> b!4508309 m!5245919))

(assert (=> b!4508309 m!5245919))

(assert (=> b!4508309 m!5245923))

(assert (=> b!4508023 d!1386182))

(declare-fun bs!845153 () Bool)

(declare-fun d!1386188 () Bool)

(assert (= bs!845153 (and d!1386188 start!445428)))

(declare-fun lambda!170078 () Int)

(assert (=> bs!845153 (= lambda!170078 lambda!169975)))

(declare-fun bs!845154 () Bool)

(assert (= bs!845154 (and d!1386188 d!1386084)))

(assert (=> bs!845154 (= lambda!170078 lambda!169986)))

(declare-fun bs!845155 () Bool)

(assert (= bs!845155 (and d!1386188 d!1386112)))

(assert (=> bs!845155 (= lambda!170078 lambda!169992)))

(declare-fun bs!845156 () Bool)

(assert (= bs!845156 (and d!1386188 d!1386180)))

(assert (=> bs!845156 (= lambda!170078 lambda!170077)))

(declare-fun lt!1686992 () ListMap!3541)

(assert (=> d!1386188 (invariantList!995 (toList!4280 lt!1686992))))

(declare-fun e!2808522 () ListMap!3541)

(assert (=> d!1386188 (= lt!1686992 e!2808522)))

(declare-fun c!768934 () Bool)

(assert (=> d!1386188 (= c!768934 ((_ is Cons!50577) (t!357663 (toList!4279 lm!1477))))))

(assert (=> d!1386188 (forall!10207 (t!357663 (toList!4279 lm!1477)) lambda!170078)))

(assert (=> d!1386188 (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686992)))

(declare-fun b!4508315 () Bool)

(assert (=> b!4508315 (= e!2808522 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))))))

(declare-fun b!4508316 () Bool)

(assert (=> b!4508316 (= e!2808522 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386188 c!768934) b!4508315))

(assert (= (and d!1386188 (not c!768934)) b!4508316))

(declare-fun m!5245925 () Bool)

(assert (=> d!1386188 m!5245925))

(declare-fun m!5245927 () Bool)

(assert (=> d!1386188 m!5245927))

(declare-fun m!5245929 () Bool)

(assert (=> b!4508315 m!5245929))

(assert (=> b!4508315 m!5245929))

(declare-fun m!5245931 () Bool)

(assert (=> b!4508315 m!5245931))

(assert (=> b!4508023 d!1386188))

(declare-fun b!4508317 () Bool)

(declare-fun e!2808527 () Bool)

(declare-fun e!2808523 () Bool)

(assert (=> b!4508317 (= e!2808527 e!2808523)))

(declare-fun res!1874938 () Bool)

(assert (=> b!4508317 (=> (not res!1874938) (not e!2808523))))

(assert (=> b!4508317 (= res!1874938 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287)))))

(declare-fun b!4508318 () Bool)

(assert (=> b!4508318 false))

(declare-fun lt!1686993 () Unit!93112)

(declare-fun lt!1686996 () Unit!93112)

(assert (=> b!4508318 (= lt!1686993 lt!1686996)))

(assert (=> b!4508318 (containsKey!1715 (toList!4280 lt!1686670) key!3287)))

(assert (=> b!4508318 (= lt!1686996 (lemmaInGetKeysListThenContainsKey!442 (toList!4280 lt!1686670) key!3287))))

(declare-fun e!2808524 () Unit!93112)

(declare-fun Unit!93148 () Unit!93112)

(assert (=> b!4508318 (= e!2808524 Unit!93148)))

(declare-fun b!4508319 () Bool)

(declare-fun e!2808526 () Unit!93112)

(assert (=> b!4508319 (= e!2808526 e!2808524)))

(declare-fun c!768936 () Bool)

(declare-fun call!313910 () Bool)

(assert (=> b!4508319 (= c!768936 call!313910)))

(declare-fun bm!313905 () Bool)

(declare-fun e!2808528 () List!50703)

(assert (=> bm!313905 (= call!313910 (contains!13271 e!2808528 key!3287))))

(declare-fun c!768935 () Bool)

(declare-fun c!768937 () Bool)

(assert (=> bm!313905 (= c!768935 c!768937)))

(declare-fun b!4508320 () Bool)

(assert (=> b!4508320 (= e!2808523 (contains!13271 (keys!17548 lt!1686670) key!3287))))

(declare-fun b!4508321 () Bool)

(declare-fun Unit!93149 () Unit!93112)

(assert (=> b!4508321 (= e!2808524 Unit!93149)))

(declare-fun b!4508322 () Bool)

(assert (=> b!4508322 (= e!2808528 (keys!17548 lt!1686670))))

(declare-fun b!4508323 () Bool)

(declare-fun lt!1687000 () Unit!93112)

(assert (=> b!4508323 (= e!2808526 lt!1687000)))

(declare-fun lt!1686994 () Unit!93112)

(assert (=> b!4508323 (= lt!1686994 (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 lt!1686670) key!3287))))

(assert (=> b!4508323 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287))))

(declare-fun lt!1686999 () Unit!93112)

(assert (=> b!4508323 (= lt!1686999 lt!1686994)))

(assert (=> b!4508323 (= lt!1687000 (lemmaInListThenGetKeysListContains!439 (toList!4280 lt!1686670) key!3287))))

(assert (=> b!4508323 call!313910))

(declare-fun d!1386190 () Bool)

(assert (=> d!1386190 e!2808527))

(declare-fun res!1874939 () Bool)

(assert (=> d!1386190 (=> res!1874939 e!2808527)))

(declare-fun e!2808525 () Bool)

(assert (=> d!1386190 (= res!1874939 e!2808525)))

(declare-fun res!1874937 () Bool)

(assert (=> d!1386190 (=> (not res!1874937) (not e!2808525))))

(declare-fun lt!1686997 () Bool)

(assert (=> d!1386190 (= res!1874937 (not lt!1686997))))

(declare-fun lt!1686995 () Bool)

(assert (=> d!1386190 (= lt!1686997 lt!1686995)))

(declare-fun lt!1686998 () Unit!93112)

(assert (=> d!1386190 (= lt!1686998 e!2808526)))

(assert (=> d!1386190 (= c!768937 lt!1686995)))

(assert (=> d!1386190 (= lt!1686995 (containsKey!1715 (toList!4280 lt!1686670) key!3287))))

(assert (=> d!1386190 (= (contains!13267 lt!1686670 key!3287) lt!1686997)))

(declare-fun b!4508324 () Bool)

(assert (=> b!4508324 (= e!2808525 (not (contains!13271 (keys!17548 lt!1686670) key!3287)))))

(declare-fun b!4508325 () Bool)

(assert (=> b!4508325 (= e!2808528 (getKeysList!443 (toList!4280 lt!1686670)))))

(assert (= (and d!1386190 c!768937) b!4508323))

(assert (= (and d!1386190 (not c!768937)) b!4508319))

(assert (= (and b!4508319 c!768936) b!4508318))

(assert (= (and b!4508319 (not c!768936)) b!4508321))

(assert (= (or b!4508323 b!4508319) bm!313905))

(assert (= (and bm!313905 c!768935) b!4508325))

(assert (= (and bm!313905 (not c!768935)) b!4508322))

(assert (= (and d!1386190 res!1874937) b!4508324))

(assert (= (and d!1386190 (not res!1874939)) b!4508317))

(assert (= (and b!4508317 res!1874938) b!4508320))

(declare-fun m!5245933 () Bool)

(assert (=> b!4508323 m!5245933))

(declare-fun m!5245935 () Bool)

(assert (=> b!4508323 m!5245935))

(assert (=> b!4508323 m!5245935))

(declare-fun m!5245937 () Bool)

(assert (=> b!4508323 m!5245937))

(declare-fun m!5245939 () Bool)

(assert (=> b!4508323 m!5245939))

(declare-fun m!5245941 () Bool)

(assert (=> bm!313905 m!5245941))

(assert (=> b!4508317 m!5245935))

(assert (=> b!4508317 m!5245935))

(assert (=> b!4508317 m!5245937))

(declare-fun m!5245943 () Bool)

(assert (=> b!4508325 m!5245943))

(declare-fun m!5245945 () Bool)

(assert (=> d!1386190 m!5245945))

(declare-fun m!5245947 () Bool)

(assert (=> b!4508322 m!5245947))

(assert (=> b!4508318 m!5245945))

(declare-fun m!5245949 () Bool)

(assert (=> b!4508318 m!5245949))

(assert (=> b!4508324 m!5245947))

(assert (=> b!4508324 m!5245947))

(declare-fun m!5245951 () Bool)

(assert (=> b!4508324 m!5245951))

(assert (=> b!4508320 m!5245947))

(assert (=> b!4508320 m!5245947))

(assert (=> b!4508320 m!5245951))

(assert (=> b!4508023 d!1386190))

(declare-fun bs!845157 () Bool)

(declare-fun d!1386192 () Bool)

(assert (= bs!845157 (and d!1386192 d!1386084)))

(declare-fun lambda!170079 () Int)

(assert (=> bs!845157 (= lambda!170079 lambda!169986)))

(declare-fun bs!845158 () Bool)

(assert (= bs!845158 (and d!1386192 d!1386188)))

(assert (=> bs!845158 (= lambda!170079 lambda!170078)))

(declare-fun bs!845159 () Bool)

(assert (= bs!845159 (and d!1386192 start!445428)))

(assert (=> bs!845159 (= lambda!170079 lambda!169975)))

(declare-fun bs!845160 () Bool)

(assert (= bs!845160 (and d!1386192 d!1386112)))

(assert (=> bs!845160 (= lambda!170079 lambda!169992)))

(declare-fun bs!845161 () Bool)

(assert (= bs!845161 (and d!1386192 d!1386180)))

(assert (=> bs!845161 (= lambda!170079 lambda!170077)))

(declare-fun lt!1687001 () ListMap!3541)

(assert (=> d!1386192 (invariantList!995 (toList!4280 lt!1687001))))

(declare-fun e!2808529 () ListMap!3541)

(assert (=> d!1386192 (= lt!1687001 e!2808529)))

(declare-fun c!768938 () Bool)

(assert (=> d!1386192 (= c!768938 ((_ is Cons!50577) (toList!4279 lt!1686666)))))

(assert (=> d!1386192 (forall!10207 (toList!4279 lt!1686666) lambda!170079)))

(assert (=> d!1386192 (= (extractMap!1192 (toList!4279 lt!1686666)) lt!1687001)))

(declare-fun b!4508326 () Bool)

(assert (=> b!4508326 (= e!2808529 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))))))

(declare-fun b!4508327 () Bool)

(assert (=> b!4508327 (= e!2808529 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386192 c!768938) b!4508326))

(assert (= (and d!1386192 (not c!768938)) b!4508327))

(declare-fun m!5245953 () Bool)

(assert (=> d!1386192 m!5245953))

(declare-fun m!5245955 () Bool)

(assert (=> d!1386192 m!5245955))

(declare-fun m!5245957 () Bool)

(assert (=> b!4508326 m!5245957))

(assert (=> b!4508326 m!5245957))

(declare-fun m!5245959 () Bool)

(assert (=> b!4508326 m!5245959))

(assert (=> b!4508023 d!1386192))

(declare-fun b!4508328 () Bool)

(declare-fun e!2808534 () Bool)

(declare-fun e!2808530 () Bool)

(assert (=> b!4508328 (= e!2808534 e!2808530)))

(declare-fun res!1874941 () Bool)

(assert (=> b!4508328 (=> (not res!1874941) (not e!2808530))))

(assert (=> b!4508328 (= res!1874941 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686664) key!3287)))))

(declare-fun b!4508329 () Bool)

(assert (=> b!4508329 false))

(declare-fun lt!1687002 () Unit!93112)

(declare-fun lt!1687005 () Unit!93112)

(assert (=> b!4508329 (= lt!1687002 lt!1687005)))

(assert (=> b!4508329 (containsKey!1715 (toList!4280 lt!1686664) key!3287)))

(assert (=> b!4508329 (= lt!1687005 (lemmaInGetKeysListThenContainsKey!442 (toList!4280 lt!1686664) key!3287))))

(declare-fun e!2808531 () Unit!93112)

(declare-fun Unit!93150 () Unit!93112)

(assert (=> b!4508329 (= e!2808531 Unit!93150)))

(declare-fun b!4508330 () Bool)

(declare-fun e!2808533 () Unit!93112)

(assert (=> b!4508330 (= e!2808533 e!2808531)))

(declare-fun c!768940 () Bool)

(declare-fun call!313911 () Bool)

(assert (=> b!4508330 (= c!768940 call!313911)))

(declare-fun bm!313906 () Bool)

(declare-fun e!2808535 () List!50703)

(assert (=> bm!313906 (= call!313911 (contains!13271 e!2808535 key!3287))))

(declare-fun c!768939 () Bool)

(declare-fun c!768941 () Bool)

(assert (=> bm!313906 (= c!768939 c!768941)))

(declare-fun b!4508331 () Bool)

(assert (=> b!4508331 (= e!2808530 (contains!13271 (keys!17548 lt!1686664) key!3287))))

(declare-fun b!4508332 () Bool)

(declare-fun Unit!93151 () Unit!93112)

(assert (=> b!4508332 (= e!2808531 Unit!93151)))

(declare-fun b!4508333 () Bool)

(assert (=> b!4508333 (= e!2808535 (keys!17548 lt!1686664))))

(declare-fun b!4508334 () Bool)

(declare-fun lt!1687009 () Unit!93112)

(assert (=> b!4508334 (= e!2808533 lt!1687009)))

(declare-fun lt!1687003 () Unit!93112)

(assert (=> b!4508334 (= lt!1687003 (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 lt!1686664) key!3287))))

(assert (=> b!4508334 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686664) key!3287))))

(declare-fun lt!1687008 () Unit!93112)

(assert (=> b!4508334 (= lt!1687008 lt!1687003)))

(assert (=> b!4508334 (= lt!1687009 (lemmaInListThenGetKeysListContains!439 (toList!4280 lt!1686664) key!3287))))

(assert (=> b!4508334 call!313911))

(declare-fun d!1386194 () Bool)

(assert (=> d!1386194 e!2808534))

(declare-fun res!1874942 () Bool)

(assert (=> d!1386194 (=> res!1874942 e!2808534)))

(declare-fun e!2808532 () Bool)

(assert (=> d!1386194 (= res!1874942 e!2808532)))

(declare-fun res!1874940 () Bool)

(assert (=> d!1386194 (=> (not res!1874940) (not e!2808532))))

(declare-fun lt!1687006 () Bool)

(assert (=> d!1386194 (= res!1874940 (not lt!1687006))))

(declare-fun lt!1687004 () Bool)

(assert (=> d!1386194 (= lt!1687006 lt!1687004)))

(declare-fun lt!1687007 () Unit!93112)

(assert (=> d!1386194 (= lt!1687007 e!2808533)))

(assert (=> d!1386194 (= c!768941 lt!1687004)))

(assert (=> d!1386194 (= lt!1687004 (containsKey!1715 (toList!4280 lt!1686664) key!3287))))

(assert (=> d!1386194 (= (contains!13267 lt!1686664 key!3287) lt!1687006)))

(declare-fun b!4508335 () Bool)

(assert (=> b!4508335 (= e!2808532 (not (contains!13271 (keys!17548 lt!1686664) key!3287)))))

(declare-fun b!4508336 () Bool)

(assert (=> b!4508336 (= e!2808535 (getKeysList!443 (toList!4280 lt!1686664)))))

(assert (= (and d!1386194 c!768941) b!4508334))

(assert (= (and d!1386194 (not c!768941)) b!4508330))

(assert (= (and b!4508330 c!768940) b!4508329))

(assert (= (and b!4508330 (not c!768940)) b!4508332))

(assert (= (or b!4508334 b!4508330) bm!313906))

(assert (= (and bm!313906 c!768939) b!4508336))

(assert (= (and bm!313906 (not c!768939)) b!4508333))

(assert (= (and d!1386194 res!1874940) b!4508335))

(assert (= (and d!1386194 (not res!1874942)) b!4508328))

(assert (= (and b!4508328 res!1874941) b!4508331))

(declare-fun m!5245961 () Bool)

(assert (=> b!4508334 m!5245961))

(declare-fun m!5245963 () Bool)

(assert (=> b!4508334 m!5245963))

(assert (=> b!4508334 m!5245963))

(declare-fun m!5245965 () Bool)

(assert (=> b!4508334 m!5245965))

(declare-fun m!5245967 () Bool)

(assert (=> b!4508334 m!5245967))

(declare-fun m!5245969 () Bool)

(assert (=> bm!313906 m!5245969))

(assert (=> b!4508328 m!5245963))

(assert (=> b!4508328 m!5245963))

(assert (=> b!4508328 m!5245965))

(declare-fun m!5245971 () Bool)

(assert (=> b!4508336 m!5245971))

(declare-fun m!5245973 () Bool)

(assert (=> d!1386194 m!5245973))

(declare-fun m!5245975 () Bool)

(assert (=> b!4508333 m!5245975))

(assert (=> b!4508329 m!5245973))

(declare-fun m!5245977 () Bool)

(assert (=> b!4508329 m!5245977))

(assert (=> b!4508335 m!5245975))

(assert (=> b!4508335 m!5245975))

(declare-fun m!5245979 () Bool)

(assert (=> b!4508335 m!5245979))

(assert (=> b!4508331 m!5245975))

(assert (=> b!4508331 m!5245975))

(assert (=> b!4508331 m!5245979))

(assert (=> b!4508034 d!1386194))

(declare-fun bs!845162 () Bool)

(declare-fun d!1386196 () Bool)

(assert (= bs!845162 (and d!1386196 d!1386084)))

(declare-fun lambda!170080 () Int)

(assert (=> bs!845162 (= lambda!170080 lambda!169986)))

(declare-fun bs!845163 () Bool)

(assert (= bs!845163 (and d!1386196 d!1386188)))

(assert (=> bs!845163 (= lambda!170080 lambda!170078)))

(declare-fun bs!845164 () Bool)

(assert (= bs!845164 (and d!1386196 start!445428)))

(assert (=> bs!845164 (= lambda!170080 lambda!169975)))

(declare-fun bs!845165 () Bool)

(assert (= bs!845165 (and d!1386196 d!1386192)))

(assert (=> bs!845165 (= lambda!170080 lambda!170079)))

(declare-fun bs!845166 () Bool)

(assert (= bs!845166 (and d!1386196 d!1386112)))

(assert (=> bs!845166 (= lambda!170080 lambda!169992)))

(declare-fun bs!845167 () Bool)

(assert (= bs!845167 (and d!1386196 d!1386180)))

(assert (=> bs!845167 (= lambda!170080 lambda!170077)))

(declare-fun lt!1687010 () ListMap!3541)

(assert (=> d!1386196 (invariantList!995 (toList!4280 lt!1687010))))

(declare-fun e!2808536 () ListMap!3541)

(assert (=> d!1386196 (= lt!1687010 e!2808536)))

(declare-fun c!768942 () Bool)

(assert (=> d!1386196 (= c!768942 ((_ is Cons!50577) (toList!4279 lm!1477)))))

(assert (=> d!1386196 (forall!10207 (toList!4279 lm!1477) lambda!170080)))

(assert (=> d!1386196 (= (extractMap!1192 (toList!4279 lm!1477)) lt!1687010)))

(declare-fun b!4508337 () Bool)

(assert (=> b!4508337 (= e!2808536 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))

(declare-fun b!4508338 () Bool)

(assert (=> b!4508338 (= e!2808536 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386196 c!768942) b!4508337))

(assert (= (and d!1386196 (not c!768942)) b!4508338))

(declare-fun m!5245981 () Bool)

(assert (=> d!1386196 m!5245981))

(declare-fun m!5245983 () Bool)

(assert (=> d!1386196 m!5245983))

(assert (=> b!4508337 m!5245431))

(assert (=> b!4508337 m!5245431))

(declare-fun m!5245985 () Bool)

(assert (=> b!4508337 m!5245985))

(assert (=> b!4508034 d!1386196))

(declare-fun d!1386198 () Bool)

(declare-fun get!16544 (Option!11068) List!50700)

(assert (=> d!1386198 (= (apply!11873 lt!1686666 hash!344) (get!16544 (getValueByKey!1048 (toList!4279 lt!1686666) hash!344)))))

(declare-fun bs!845168 () Bool)

(assert (= bs!845168 d!1386198))

(assert (=> bs!845168 m!5245847))

(assert (=> bs!845168 m!5245847))

(declare-fun m!5245987 () Bool)

(assert (=> bs!845168 m!5245987))

(assert (=> b!4508045 d!1386198))

(declare-fun bs!845169 () Bool)

(declare-fun d!1386200 () Bool)

(assert (= bs!845169 (and d!1386200 d!1386196)))

(declare-fun lambda!170083 () Int)

(assert (=> bs!845169 (= lambda!170083 lambda!170080)))

(declare-fun bs!845170 () Bool)

(assert (= bs!845170 (and d!1386200 d!1386084)))

(assert (=> bs!845170 (= lambda!170083 lambda!169986)))

(declare-fun bs!845171 () Bool)

(assert (= bs!845171 (and d!1386200 d!1386188)))

(assert (=> bs!845171 (= lambda!170083 lambda!170078)))

(declare-fun bs!845172 () Bool)

(assert (= bs!845172 (and d!1386200 start!445428)))

(assert (=> bs!845172 (= lambda!170083 lambda!169975)))

(declare-fun bs!845173 () Bool)

(assert (= bs!845173 (and d!1386200 d!1386192)))

(assert (=> bs!845173 (= lambda!170083 lambda!170079)))

(declare-fun bs!845174 () Bool)

(assert (= bs!845174 (and d!1386200 d!1386112)))

(assert (=> bs!845174 (= lambda!170083 lambda!169992)))

(declare-fun bs!845175 () Bool)

(assert (= bs!845175 (and d!1386200 d!1386180)))

(assert (=> bs!845175 (= lambda!170083 lambda!170077)))

(assert (=> d!1386200 (contains!13269 lm!1477 (hash!2729 hashF!1107 key!3287))))

(declare-fun lt!1687013 () Unit!93112)

(declare-fun choose!29258 (ListLongMap!2911 K!11980 Hashable!5531) Unit!93112)

(assert (=> d!1386200 (= lt!1687013 (choose!29258 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1386200 (forall!10207 (toList!4279 lm!1477) lambda!170083)))

(assert (=> d!1386200 (= (lemmaInGenMapThenLongMapContainsHash!210 lm!1477 key!3287 hashF!1107) lt!1687013)))

(declare-fun bs!845176 () Bool)

(assert (= bs!845176 d!1386200))

(assert (=> bs!845176 m!5245397))

(assert (=> bs!845176 m!5245397))

(declare-fun m!5245989 () Bool)

(assert (=> bs!845176 m!5245989))

(declare-fun m!5245991 () Bool)

(assert (=> bs!845176 m!5245991))

(declare-fun m!5245993 () Bool)

(assert (=> bs!845176 m!5245993))

(assert (=> b!4508024 d!1386200))

(declare-fun d!1386202 () Bool)

(declare-fun dynLambda!21131 (Int tuple2!50980) Bool)

(assert (=> d!1386202 (dynLambda!21131 lambda!169975 lt!1686676)))

(declare-fun lt!1687016 () Unit!93112)

(declare-fun choose!29259 (List!50701 Int tuple2!50980) Unit!93112)

(assert (=> d!1386202 (= lt!1687016 (choose!29259 (toList!4279 lm!1477) lambda!169975 lt!1686676))))

(declare-fun e!2808539 () Bool)

(assert (=> d!1386202 e!2808539))

(declare-fun res!1874945 () Bool)

(assert (=> d!1386202 (=> (not res!1874945) (not e!2808539))))

(assert (=> d!1386202 (= res!1874945 (forall!10207 (toList!4279 lm!1477) lambda!169975))))

(assert (=> d!1386202 (= (forallContained!2459 (toList!4279 lm!1477) lambda!169975 lt!1686676) lt!1687016)))

(declare-fun b!4508341 () Bool)

(assert (=> b!4508341 (= e!2808539 (contains!13268 (toList!4279 lm!1477) lt!1686676))))

(assert (= (and d!1386202 res!1874945) b!4508341))

(declare-fun b_lambda!153513 () Bool)

(assert (=> (not b_lambda!153513) (not d!1386202)))

(declare-fun m!5245995 () Bool)

(assert (=> d!1386202 m!5245995))

(declare-fun m!5245997 () Bool)

(assert (=> d!1386202 m!5245997))

(assert (=> d!1386202 m!5245445))

(assert (=> b!4508341 m!5245419))

(assert (=> b!4508024 d!1386202))

(declare-fun d!1386204 () Bool)

(declare-fun e!2808541 () Bool)

(assert (=> d!1386204 e!2808541))

(declare-fun res!1874946 () Bool)

(assert (=> d!1386204 (=> res!1874946 e!2808541)))

(declare-fun lt!1687017 () Bool)

(assert (=> d!1386204 (= res!1874946 (not lt!1687017))))

(declare-fun lt!1687018 () Bool)

(assert (=> d!1386204 (= lt!1687017 lt!1687018)))

(declare-fun lt!1687019 () Unit!93112)

(declare-fun e!2808540 () Unit!93112)

(assert (=> d!1386204 (= lt!1687019 e!2808540)))

(declare-fun c!768943 () Bool)

(assert (=> d!1386204 (= c!768943 lt!1687018)))

(assert (=> d!1386204 (= lt!1687018 (containsKey!1714 (toList!4279 lm!1477) lt!1686681))))

(assert (=> d!1386204 (= (contains!13269 lm!1477 lt!1686681) lt!1687017)))

(declare-fun b!4508342 () Bool)

(declare-fun lt!1687020 () Unit!93112)

(assert (=> b!4508342 (= e!2808540 lt!1687020)))

(assert (=> b!4508342 (= lt!1687020 (lemmaContainsKeyImpliesGetValueByKeyDefined!951 (toList!4279 lm!1477) lt!1686681))))

(assert (=> b!4508342 (isDefined!8354 (getValueByKey!1048 (toList!4279 lm!1477) lt!1686681))))

(declare-fun b!4508343 () Bool)

(declare-fun Unit!93153 () Unit!93112)

(assert (=> b!4508343 (= e!2808540 Unit!93153)))

(declare-fun b!4508344 () Bool)

(assert (=> b!4508344 (= e!2808541 (isDefined!8354 (getValueByKey!1048 (toList!4279 lm!1477) lt!1686681)))))

(assert (= (and d!1386204 c!768943) b!4508342))

(assert (= (and d!1386204 (not c!768943)) b!4508343))

(assert (= (and d!1386204 (not res!1874946)) b!4508344))

(declare-fun m!5245999 () Bool)

(assert (=> d!1386204 m!5245999))

(declare-fun m!5246001 () Bool)

(assert (=> b!4508342 m!5246001))

(declare-fun m!5246003 () Bool)

(assert (=> b!4508342 m!5246003))

(assert (=> b!4508342 m!5246003))

(declare-fun m!5246005 () Bool)

(assert (=> b!4508342 m!5246005))

(assert (=> b!4508344 m!5246003))

(assert (=> b!4508344 m!5246003))

(assert (=> b!4508344 m!5246005))

(assert (=> b!4508024 d!1386204))

(declare-fun b!4508353 () Bool)

(declare-fun e!2808547 () List!50700)

(assert (=> b!4508353 (= e!2808547 (t!357662 lt!1686663))))

(declare-fun b!4508355 () Bool)

(declare-fun e!2808546 () List!50700)

(assert (=> b!4508355 (= e!2808546 (Cons!50576 (h!56407 lt!1686663) (removePairForKey!763 (t!357662 lt!1686663) key!3287)))))

(declare-fun b!4508354 () Bool)

(assert (=> b!4508354 (= e!2808547 e!2808546)))

(declare-fun c!768948 () Bool)

(assert (=> b!4508354 (= c!768948 ((_ is Cons!50576) lt!1686663))))

(declare-fun b!4508356 () Bool)

(assert (=> b!4508356 (= e!2808546 Nil!50576)))

(declare-fun d!1386206 () Bool)

(declare-fun lt!1687023 () List!50700)

(assert (=> d!1386206 (not (containsKey!1712 lt!1687023 key!3287))))

(assert (=> d!1386206 (= lt!1687023 e!2808547)))

(declare-fun c!768949 () Bool)

(assert (=> d!1386206 (= c!768949 (and ((_ is Cons!50576) lt!1686663) (= (_1!28783 (h!56407 lt!1686663)) key!3287)))))

(assert (=> d!1386206 (noDuplicateKeys!1136 lt!1686663)))

(assert (=> d!1386206 (= (removePairForKey!763 lt!1686663 key!3287) lt!1687023)))

(assert (= (and d!1386206 c!768949) b!4508353))

(assert (= (and d!1386206 (not c!768949)) b!4508354))

(assert (= (and b!4508354 c!768948) b!4508355))

(assert (= (and b!4508354 (not c!768948)) b!4508356))

(declare-fun m!5246007 () Bool)

(assert (=> b!4508355 m!5246007))

(declare-fun m!5246009 () Bool)

(assert (=> d!1386206 m!5246009))

(declare-fun m!5246011 () Bool)

(assert (=> d!1386206 m!5246011))

(assert (=> b!4508024 d!1386206))

(declare-fun d!1386208 () Bool)

(assert (=> d!1386208 (contains!13268 (toList!4279 lm!1477) (tuple2!50981 hash!344 lt!1686663))))

(declare-fun lt!1687026 () Unit!93112)

(declare-fun choose!29261 (List!50701 (_ BitVec 64) List!50700) Unit!93112)

(assert (=> d!1386208 (= lt!1687026 (choose!29261 (toList!4279 lm!1477) hash!344 lt!1686663))))

(declare-fun e!2808550 () Bool)

(assert (=> d!1386208 e!2808550))

(declare-fun res!1874949 () Bool)

(assert (=> d!1386208 (=> (not res!1874949) (not e!2808550))))

(declare-fun isStrictlySorted!409 (List!50701) Bool)

(assert (=> d!1386208 (= res!1874949 (isStrictlySorted!409 (toList!4279 lm!1477)))))

(assert (=> d!1386208 (= (lemmaGetValueByKeyImpliesContainsTuple!648 (toList!4279 lm!1477) hash!344 lt!1686663) lt!1687026)))

(declare-fun b!4508359 () Bool)

(assert (=> b!4508359 (= e!2808550 (= (getValueByKey!1048 (toList!4279 lm!1477) hash!344) (Some!11067 lt!1686663)))))

(assert (= (and d!1386208 res!1874949) b!4508359))

(declare-fun m!5246013 () Bool)

(assert (=> d!1386208 m!5246013))

(declare-fun m!5246015 () Bool)

(assert (=> d!1386208 m!5246015))

(declare-fun m!5246017 () Bool)

(assert (=> d!1386208 m!5246017))

(declare-fun m!5246019 () Bool)

(assert (=> b!4508359 m!5246019))

(assert (=> b!4508024 d!1386208))

(declare-fun d!1386210 () Bool)

(declare-fun lt!1687027 () Bool)

(assert (=> d!1386210 (= lt!1687027 (select (content!8291 (toList!4279 lm!1477)) lt!1686676))))

(declare-fun e!2808552 () Bool)

(assert (=> d!1386210 (= lt!1687027 e!2808552)))

(declare-fun res!1874950 () Bool)

(assert (=> d!1386210 (=> (not res!1874950) (not e!2808552))))

(assert (=> d!1386210 (= res!1874950 ((_ is Cons!50577) (toList!4279 lm!1477)))))

(assert (=> d!1386210 (= (contains!13268 (toList!4279 lm!1477) lt!1686676) lt!1687027)))

(declare-fun b!4508360 () Bool)

(declare-fun e!2808551 () Bool)

(assert (=> b!4508360 (= e!2808552 e!2808551)))

(declare-fun res!1874951 () Bool)

(assert (=> b!4508360 (=> res!1874951 e!2808551)))

(assert (=> b!4508360 (= res!1874951 (= (h!56408 (toList!4279 lm!1477)) lt!1686676))))

(declare-fun b!4508361 () Bool)

(assert (=> b!4508361 (= e!2808551 (contains!13268 (t!357663 (toList!4279 lm!1477)) lt!1686676))))

(assert (= (and d!1386210 res!1874950) b!4508360))

(assert (= (and b!4508360 (not res!1874951)) b!4508361))

(declare-fun m!5246021 () Bool)

(assert (=> d!1386210 m!5246021))

(declare-fun m!5246023 () Bool)

(assert (=> d!1386210 m!5246023))

(assert (=> b!4508361 m!5245443))

(assert (=> b!4508024 d!1386210))

(declare-fun d!1386212 () Bool)

(assert (=> d!1386212 (= (apply!11873 lm!1477 hash!344) (get!16544 (getValueByKey!1048 (toList!4279 lm!1477) hash!344)))))

(declare-fun bs!845177 () Bool)

(assert (= bs!845177 d!1386212))

(assert (=> bs!845177 m!5246019))

(assert (=> bs!845177 m!5246019))

(declare-fun m!5246025 () Bool)

(assert (=> bs!845177 m!5246025))

(assert (=> b!4508024 d!1386212))

(declare-fun d!1386214 () Bool)

(declare-fun res!1874956 () Bool)

(declare-fun e!2808557 () Bool)

(assert (=> d!1386214 (=> res!1874956 e!2808557)))

(assert (=> d!1386214 (= res!1874956 ((_ is Nil!50577) (toList!4279 lm!1477)))))

(assert (=> d!1386214 (= (forall!10207 (toList!4279 lm!1477) lambda!169975) e!2808557)))

(declare-fun b!4508366 () Bool)

(declare-fun e!2808558 () Bool)

(assert (=> b!4508366 (= e!2808557 e!2808558)))

(declare-fun res!1874957 () Bool)

(assert (=> b!4508366 (=> (not res!1874957) (not e!2808558))))

(assert (=> b!4508366 (= res!1874957 (dynLambda!21131 lambda!169975 (h!56408 (toList!4279 lm!1477))))))

(declare-fun b!4508367 () Bool)

(assert (=> b!4508367 (= e!2808558 (forall!10207 (t!357663 (toList!4279 lm!1477)) lambda!169975))))

(assert (= (and d!1386214 (not res!1874956)) b!4508366))

(assert (= (and b!4508366 res!1874957) b!4508367))

(declare-fun b_lambda!153515 () Bool)

(assert (=> (not b_lambda!153515) (not b!4508366)))

(declare-fun m!5246027 () Bool)

(assert (=> b!4508366 m!5246027))

(declare-fun m!5246029 () Bool)

(assert (=> b!4508367 m!5246029))

(assert (=> start!445428 d!1386214))

(declare-fun d!1386216 () Bool)

(assert (=> d!1386216 (= (inv!66164 lm!1477) (isStrictlySorted!409 (toList!4279 lm!1477)))))

(declare-fun bs!845178 () Bool)

(assert (= bs!845178 d!1386216))

(assert (=> bs!845178 m!5246017))

(assert (=> start!445428 d!1386216))

(declare-fun bs!845179 () Bool)

(declare-fun d!1386218 () Bool)

(assert (= bs!845179 (and d!1386218 b!4508216)))

(declare-fun lambda!170086 () Int)

(assert (=> bs!845179 (not (= lambda!170086 lambda!170062))))

(declare-fun bs!845180 () Bool)

(assert (= bs!845180 (and d!1386218 b!4508218)))

(assert (=> bs!845180 (not (= lambda!170086 lambda!170063))))

(assert (=> bs!845180 (not (= lambda!170086 lambda!170064))))

(declare-fun bs!845181 () Bool)

(assert (= bs!845181 (and d!1386218 d!1386122)))

(assert (=> bs!845181 (not (= lambda!170086 lambda!170065))))

(assert (=> d!1386218 true))

(assert (=> d!1386218 true))

(assert (=> d!1386218 (= (allKeysSameHash!990 newBucket!178 hash!344 hashF!1107) (forall!10208 newBucket!178 lambda!170086))))

(declare-fun bs!845182 () Bool)

(assert (= bs!845182 d!1386218))

(declare-fun m!5246031 () Bool)

(assert (=> bs!845182 m!5246031))

(assert (=> b!4508044 d!1386218))

(declare-fun d!1386220 () Bool)

(declare-fun hash!2733 (Hashable!5531 K!11980) (_ BitVec 64))

(assert (=> d!1386220 (= (hash!2729 hashF!1107 key!3287) (hash!2733 hashF!1107 key!3287))))

(declare-fun bs!845183 () Bool)

(assert (= bs!845183 d!1386220))

(declare-fun m!5246033 () Bool)

(assert (=> bs!845183 m!5246033))

(assert (=> b!4508026 d!1386220))

(declare-fun d!1386222 () Bool)

(declare-fun e!2808561 () Bool)

(assert (=> d!1386222 e!2808561))

(declare-fun res!1874960 () Bool)

(assert (=> d!1386222 (=> (not res!1874960) (not e!2808561))))

(declare-fun lt!1687030 () ListMap!3541)

(assert (=> d!1386222 (= res!1874960 (not (contains!13267 lt!1687030 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!119 (List!50700 K!11980) List!50700)

(assert (=> d!1386222 (= lt!1687030 (ListMap!3542 (removePresrvNoDuplicatedKeys!119 (toList!4280 lt!1686670) key!3287)))))

(assert (=> d!1386222 (= (-!362 lt!1686670 key!3287) lt!1687030)))

(declare-fun b!4508374 () Bool)

(declare-fun content!8293 (List!50703) (InoxSet K!11980))

(assert (=> b!4508374 (= e!2808561 (= ((_ map and) (content!8293 (keys!17548 lt!1686670)) ((_ map not) (store ((as const (Array K!11980 Bool)) false) key!3287 true))) (content!8293 (keys!17548 lt!1687030))))))

(assert (= (and d!1386222 res!1874960) b!4508374))

(declare-fun m!5246035 () Bool)

(assert (=> d!1386222 m!5246035))

(declare-fun m!5246037 () Bool)

(assert (=> d!1386222 m!5246037))

(declare-fun m!5246039 () Bool)

(assert (=> b!4508374 m!5246039))

(declare-fun m!5246041 () Bool)

(assert (=> b!4508374 m!5246041))

(assert (=> b!4508374 m!5245947))

(declare-fun m!5246043 () Bool)

(assert (=> b!4508374 m!5246043))

(declare-fun m!5246045 () Bool)

(assert (=> b!4508374 m!5246045))

(assert (=> b!4508374 m!5245947))

(assert (=> b!4508374 m!5246039))

(assert (=> b!4508037 d!1386222))

(declare-fun bs!845184 () Bool)

(declare-fun d!1386224 () Bool)

(assert (= bs!845184 (and d!1386224 d!1386196)))

(declare-fun lambda!170089 () Int)

(assert (=> bs!845184 (= lambda!170089 lambda!170080)))

(declare-fun bs!845185 () Bool)

(assert (= bs!845185 (and d!1386224 d!1386084)))

(assert (=> bs!845185 (= lambda!170089 lambda!169986)))

(declare-fun bs!845186 () Bool)

(assert (= bs!845186 (and d!1386224 d!1386188)))

(assert (=> bs!845186 (= lambda!170089 lambda!170078)))

(declare-fun bs!845187 () Bool)

(assert (= bs!845187 (and d!1386224 start!445428)))

(assert (=> bs!845187 (= lambda!170089 lambda!169975)))

(declare-fun bs!845188 () Bool)

(assert (= bs!845188 (and d!1386224 d!1386192)))

(assert (=> bs!845188 (= lambda!170089 lambda!170079)))

(declare-fun bs!845189 () Bool)

(assert (= bs!845189 (and d!1386224 d!1386200)))

(assert (=> bs!845189 (= lambda!170089 lambda!170083)))

(declare-fun bs!845190 () Bool)

(assert (= bs!845190 (and d!1386224 d!1386112)))

(assert (=> bs!845190 (= lambda!170089 lambda!169992)))

(declare-fun bs!845191 () Bool)

(assert (= bs!845191 (and d!1386224 d!1386180)))

(assert (=> bs!845191 (= lambda!170089 lambda!170077)))

(assert (=> d!1386224 (eq!593 (extractMap!1192 (toList!4279 (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178)))) (-!362 (extractMap!1192 (toList!4279 lt!1686666)) key!3287))))

(declare-fun lt!1687033 () Unit!93112)

(declare-fun choose!29262 (ListLongMap!2911 (_ BitVec 64) List!50700 K!11980 Hashable!5531) Unit!93112)

(assert (=> d!1386224 (= lt!1687033 (choose!29262 lt!1686666 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1386224 (forall!10207 (toList!4279 lt!1686666) lambda!170089)))

(assert (=> d!1386224 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!121 lt!1686666 hash!344 newBucket!178 key!3287 hashF!1107) lt!1687033)))

(declare-fun bs!845192 () Bool)

(assert (= bs!845192 d!1386224))

(assert (=> bs!845192 m!5245427))

(declare-fun m!5246047 () Bool)

(assert (=> bs!845192 m!5246047))

(declare-fun m!5246049 () Bool)

(assert (=> bs!845192 m!5246049))

(declare-fun m!5246051 () Bool)

(assert (=> bs!845192 m!5246051))

(declare-fun m!5246053 () Bool)

(assert (=> bs!845192 m!5246053))

(assert (=> bs!845192 m!5246051))

(assert (=> bs!845192 m!5246047))

(declare-fun m!5246055 () Bool)

(assert (=> bs!845192 m!5246055))

(assert (=> bs!845192 m!5245427))

(declare-fun m!5246057 () Bool)

(assert (=> bs!845192 m!5246057))

(assert (=> b!4508037 d!1386224))

(declare-fun d!1386226 () Bool)

(declare-fun e!2808562 () Bool)

(assert (=> d!1386226 e!2808562))

(declare-fun res!1874961 () Bool)

(assert (=> d!1386226 (=> (not res!1874961) (not e!2808562))))

(declare-fun lt!1687034 () ListLongMap!2911)

(assert (=> d!1386226 (= res!1874961 (contains!13269 lt!1687034 (_1!28784 lt!1686680)))))

(declare-fun lt!1687037 () List!50701)

(assert (=> d!1386226 (= lt!1687034 (ListLongMap!2912 lt!1687037))))

(declare-fun lt!1687036 () Unit!93112)

(declare-fun lt!1687035 () Unit!93112)

(assert (=> d!1386226 (= lt!1687036 lt!1687035)))

(assert (=> d!1386226 (= (getValueByKey!1048 lt!1687037 (_1!28784 lt!1686680)) (Some!11067 (_2!28784 lt!1686680)))))

(assert (=> d!1386226 (= lt!1687035 (lemmaContainsTupThenGetReturnValue!646 lt!1687037 (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))

(assert (=> d!1386226 (= lt!1687037 (insertStrictlySorted!386 (toList!4279 lt!1686666) (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))

(assert (=> d!1386226 (= (+!1492 lt!1686666 lt!1686680) lt!1687034)))

(declare-fun b!4508375 () Bool)

(declare-fun res!1874962 () Bool)

(assert (=> b!4508375 (=> (not res!1874962) (not e!2808562))))

(assert (=> b!4508375 (= res!1874962 (= (getValueByKey!1048 (toList!4279 lt!1687034) (_1!28784 lt!1686680)) (Some!11067 (_2!28784 lt!1686680))))))

(declare-fun b!4508376 () Bool)

(assert (=> b!4508376 (= e!2808562 (contains!13268 (toList!4279 lt!1687034) lt!1686680))))

(assert (= (and d!1386226 res!1874961) b!4508375))

(assert (= (and b!4508375 res!1874962) b!4508376))

(declare-fun m!5246059 () Bool)

(assert (=> d!1386226 m!5246059))

(declare-fun m!5246061 () Bool)

(assert (=> d!1386226 m!5246061))

(declare-fun m!5246063 () Bool)

(assert (=> d!1386226 m!5246063))

(declare-fun m!5246065 () Bool)

(assert (=> d!1386226 m!5246065))

(declare-fun m!5246067 () Bool)

(assert (=> b!4508375 m!5246067))

(declare-fun m!5246069 () Bool)

(assert (=> b!4508376 m!5246069))

(assert (=> b!4508037 d!1386226))

(declare-fun d!1386228 () Bool)

(assert (=> d!1386228 (= (eq!593 lt!1686668 (-!362 lt!1686670 key!3287)) (= (content!8290 (toList!4280 lt!1686668)) (content!8290 (toList!4280 (-!362 lt!1686670 key!3287)))))))

(declare-fun bs!845193 () Bool)

(assert (= bs!845193 d!1386228))

(declare-fun m!5246071 () Bool)

(assert (=> bs!845193 m!5246071))

(declare-fun m!5246073 () Bool)

(assert (=> bs!845193 m!5246073))

(assert (=> b!4508037 d!1386228))

(declare-fun bs!845194 () Bool)

(declare-fun d!1386230 () Bool)

(assert (= bs!845194 (and d!1386230 d!1386196)))

(declare-fun lambda!170090 () Int)

(assert (=> bs!845194 (= lambda!170090 lambda!170080)))

(declare-fun bs!845195 () Bool)

(assert (= bs!845195 (and d!1386230 d!1386084)))

(assert (=> bs!845195 (= lambda!170090 lambda!169986)))

(declare-fun bs!845196 () Bool)

(assert (= bs!845196 (and d!1386230 d!1386188)))

(assert (=> bs!845196 (= lambda!170090 lambda!170078)))

(declare-fun bs!845197 () Bool)

(assert (= bs!845197 (and d!1386230 d!1386224)))

(assert (=> bs!845197 (= lambda!170090 lambda!170089)))

(declare-fun bs!845198 () Bool)

(assert (= bs!845198 (and d!1386230 start!445428)))

(assert (=> bs!845198 (= lambda!170090 lambda!169975)))

(declare-fun bs!845199 () Bool)

(assert (= bs!845199 (and d!1386230 d!1386192)))

(assert (=> bs!845199 (= lambda!170090 lambda!170079)))

(declare-fun bs!845200 () Bool)

(assert (= bs!845200 (and d!1386230 d!1386200)))

(assert (=> bs!845200 (= lambda!170090 lambda!170083)))

(declare-fun bs!845201 () Bool)

(assert (= bs!845201 (and d!1386230 d!1386112)))

(assert (=> bs!845201 (= lambda!170090 lambda!169992)))

(declare-fun bs!845202 () Bool)

(assert (= bs!845202 (and d!1386230 d!1386180)))

(assert (=> bs!845202 (= lambda!170090 lambda!170077)))

(declare-fun lt!1687038 () ListMap!3541)

(assert (=> d!1386230 (invariantList!995 (toList!4280 lt!1687038))))

(declare-fun e!2808563 () ListMap!3541)

(assert (=> d!1386230 (= lt!1687038 e!2808563)))

(declare-fun c!768950 () Bool)

(assert (=> d!1386230 (= c!768950 ((_ is Cons!50577) (toList!4279 lt!1686667)))))

(assert (=> d!1386230 (forall!10207 (toList!4279 lt!1686667) lambda!170090)))

(assert (=> d!1386230 (= (extractMap!1192 (toList!4279 lt!1686667)) lt!1687038)))

(declare-fun b!4508377 () Bool)

(assert (=> b!4508377 (= e!2808563 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 lt!1686667))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))))))

(declare-fun b!4508378 () Bool)

(assert (=> b!4508378 (= e!2808563 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386230 c!768950) b!4508377))

(assert (= (and d!1386230 (not c!768950)) b!4508378))

(declare-fun m!5246075 () Bool)

(assert (=> d!1386230 m!5246075))

(declare-fun m!5246077 () Bool)

(assert (=> d!1386230 m!5246077))

(declare-fun m!5246079 () Bool)

(assert (=> b!4508377 m!5246079))

(assert (=> b!4508377 m!5246079))

(declare-fun m!5246081 () Bool)

(assert (=> b!4508377 m!5246081))

(assert (=> b!4508037 d!1386230))

(declare-fun d!1386232 () Bool)

(assert (=> d!1386232 (= (eq!593 lt!1686671 lt!1686664) (= (content!8290 (toList!4280 lt!1686671)) (content!8290 (toList!4280 lt!1686664))))))

(declare-fun bs!845203 () Bool)

(assert (= bs!845203 d!1386232))

(assert (=> bs!845203 m!5245871))

(assert (=> bs!845203 m!5245869))

(assert (=> b!4508037 d!1386232))

(declare-fun d!1386234 () Bool)

(declare-fun e!2808564 () Bool)

(assert (=> d!1386234 e!2808564))

(declare-fun res!1874963 () Bool)

(assert (=> d!1386234 (=> (not res!1874963) (not e!2808564))))

(declare-fun lt!1687039 () ListLongMap!2911)

(assert (=> d!1386234 (= res!1874963 (contains!13269 lt!1687039 (_1!28784 lt!1686677)))))

(declare-fun lt!1687042 () List!50701)

(assert (=> d!1386234 (= lt!1687039 (ListLongMap!2912 lt!1687042))))

(declare-fun lt!1687041 () Unit!93112)

(declare-fun lt!1687040 () Unit!93112)

(assert (=> d!1386234 (= lt!1687041 lt!1687040)))

(assert (=> d!1386234 (= (getValueByKey!1048 lt!1687042 (_1!28784 lt!1686677)) (Some!11067 (_2!28784 lt!1686677)))))

(assert (=> d!1386234 (= lt!1687040 (lemmaContainsTupThenGetReturnValue!646 lt!1687042 (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))

(assert (=> d!1386234 (= lt!1687042 (insertStrictlySorted!386 (toList!4279 lt!1686666) (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))

(assert (=> d!1386234 (= (+!1492 lt!1686666 lt!1686677) lt!1687039)))

(declare-fun b!4508379 () Bool)

(declare-fun res!1874964 () Bool)

(assert (=> b!4508379 (=> (not res!1874964) (not e!2808564))))

(assert (=> b!4508379 (= res!1874964 (= (getValueByKey!1048 (toList!4279 lt!1687039) (_1!28784 lt!1686677)) (Some!11067 (_2!28784 lt!1686677))))))

(declare-fun b!4508380 () Bool)

(assert (=> b!4508380 (= e!2808564 (contains!13268 (toList!4279 lt!1687039) lt!1686677))))

(assert (= (and d!1386234 res!1874963) b!4508379))

(assert (= (and b!4508379 res!1874964) b!4508380))

(declare-fun m!5246083 () Bool)

(assert (=> d!1386234 m!5246083))

(declare-fun m!5246085 () Bool)

(assert (=> d!1386234 m!5246085))

(declare-fun m!5246087 () Bool)

(assert (=> d!1386234 m!5246087))

(declare-fun m!5246089 () Bool)

(assert (=> d!1386234 m!5246089))

(declare-fun m!5246091 () Bool)

(assert (=> b!4508379 m!5246091))

(declare-fun m!5246093 () Bool)

(assert (=> b!4508380 m!5246093))

(assert (=> b!4508037 d!1386234))

(declare-fun d!1386236 () Bool)

(assert (=> d!1386236 (= (head!9366 lm!1477) (head!9368 (toList!4279 lm!1477)))))

(declare-fun bs!845204 () Bool)

(assert (= bs!845204 d!1386236))

(declare-fun m!5246095 () Bool)

(assert (=> bs!845204 m!5246095))

(assert (=> b!4508037 d!1386236))

(declare-fun bs!845205 () Bool)

(declare-fun d!1386238 () Bool)

(assert (= bs!845205 (and d!1386238 d!1386196)))

(declare-fun lambda!170091 () Int)

(assert (=> bs!845205 (= lambda!170091 lambda!170080)))

(declare-fun bs!845206 () Bool)

(assert (= bs!845206 (and d!1386238 d!1386084)))

(assert (=> bs!845206 (= lambda!170091 lambda!169986)))

(declare-fun bs!845207 () Bool)

(assert (= bs!845207 (and d!1386238 d!1386188)))

(assert (=> bs!845207 (= lambda!170091 lambda!170078)))

(declare-fun bs!845208 () Bool)

(assert (= bs!845208 (and d!1386238 d!1386224)))

(assert (=> bs!845208 (= lambda!170091 lambda!170089)))

(declare-fun bs!845209 () Bool)

(assert (= bs!845209 (and d!1386238 start!445428)))

(assert (=> bs!845209 (= lambda!170091 lambda!169975)))

(declare-fun bs!845210 () Bool)

(assert (= bs!845210 (and d!1386238 d!1386200)))

(assert (=> bs!845210 (= lambda!170091 lambda!170083)))

(declare-fun bs!845211 () Bool)

(assert (= bs!845211 (and d!1386238 d!1386112)))

(assert (=> bs!845211 (= lambda!170091 lambda!169992)))

(declare-fun bs!845212 () Bool)

(assert (= bs!845212 (and d!1386238 d!1386180)))

(assert (=> bs!845212 (= lambda!170091 lambda!170077)))

(declare-fun bs!845213 () Bool)

(assert (= bs!845213 (and d!1386238 d!1386192)))

(assert (=> bs!845213 (= lambda!170091 lambda!170079)))

(declare-fun bs!845214 () Bool)

(assert (= bs!845214 (and d!1386238 d!1386230)))

(assert (=> bs!845214 (= lambda!170091 lambda!170090)))

(declare-fun lt!1687043 () ListMap!3541)

(assert (=> d!1386238 (invariantList!995 (toList!4280 lt!1687043))))

(declare-fun e!2808565 () ListMap!3541)

(assert (=> d!1386238 (= lt!1687043 e!2808565)))

(declare-fun c!768951 () Bool)

(assert (=> d!1386238 (= c!768951 ((_ is Cons!50577) (toList!4279 (+!1492 lt!1686666 lt!1686680))))))

(assert (=> d!1386238 (forall!10207 (toList!4279 (+!1492 lt!1686666 lt!1686680)) lambda!170091)))

(assert (=> d!1386238 (= (extractMap!1192 (toList!4279 (+!1492 lt!1686666 lt!1686680))) lt!1687043)))

(declare-fun b!4508381 () Bool)

(assert (=> b!4508381 (= e!2808565 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))))))

(declare-fun b!4508382 () Bool)

(assert (=> b!4508382 (= e!2808565 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386238 c!768951) b!4508381))

(assert (= (and d!1386238 (not c!768951)) b!4508382))

(declare-fun m!5246097 () Bool)

(assert (=> d!1386238 m!5246097))

(declare-fun m!5246099 () Bool)

(assert (=> d!1386238 m!5246099))

(declare-fun m!5246101 () Bool)

(assert (=> b!4508381 m!5246101))

(assert (=> b!4508381 m!5246101))

(declare-fun m!5246103 () Bool)

(assert (=> b!4508381 m!5246103))

(assert (=> b!4508037 d!1386238))

(declare-fun bs!845215 () Bool)

(declare-fun d!1386240 () Bool)

(assert (= bs!845215 (and d!1386240 d!1386196)))

(declare-fun lambda!170094 () Int)

(assert (=> bs!845215 (not (= lambda!170094 lambda!170080))))

(declare-fun bs!845216 () Bool)

(assert (= bs!845216 (and d!1386240 d!1386084)))

(assert (=> bs!845216 (not (= lambda!170094 lambda!169986))))

(declare-fun bs!845217 () Bool)

(assert (= bs!845217 (and d!1386240 d!1386224)))

(assert (=> bs!845217 (not (= lambda!170094 lambda!170089))))

(declare-fun bs!845218 () Bool)

(assert (= bs!845218 (and d!1386240 start!445428)))

(assert (=> bs!845218 (not (= lambda!170094 lambda!169975))))

(declare-fun bs!845219 () Bool)

(assert (= bs!845219 (and d!1386240 d!1386200)))

(assert (=> bs!845219 (not (= lambda!170094 lambda!170083))))

(declare-fun bs!845220 () Bool)

(assert (= bs!845220 (and d!1386240 d!1386112)))

(assert (=> bs!845220 (not (= lambda!170094 lambda!169992))))

(declare-fun bs!845221 () Bool)

(assert (= bs!845221 (and d!1386240 d!1386180)))

(assert (=> bs!845221 (not (= lambda!170094 lambda!170077))))

(declare-fun bs!845222 () Bool)

(assert (= bs!845222 (and d!1386240 d!1386188)))

(assert (=> bs!845222 (not (= lambda!170094 lambda!170078))))

(declare-fun bs!845223 () Bool)

(assert (= bs!845223 (and d!1386240 d!1386238)))

(assert (=> bs!845223 (not (= lambda!170094 lambda!170091))))

(declare-fun bs!845224 () Bool)

(assert (= bs!845224 (and d!1386240 d!1386192)))

(assert (=> bs!845224 (not (= lambda!170094 lambda!170079))))

(declare-fun bs!845225 () Bool)

(assert (= bs!845225 (and d!1386240 d!1386230)))

(assert (=> bs!845225 (not (= lambda!170094 lambda!170090))))

(assert (=> d!1386240 true))

(assert (=> d!1386240 (= (allKeysSameHashInMap!1243 lm!1477 hashF!1107) (forall!10207 (toList!4279 lm!1477) lambda!170094))))

(declare-fun bs!845226 () Bool)

(assert (= bs!845226 d!1386240))

(declare-fun m!5246105 () Bool)

(assert (=> bs!845226 m!5246105))

(assert (=> b!4508035 d!1386240))

(declare-fun d!1386242 () Bool)

(declare-fun isEmpty!28629 (List!50701) Bool)

(assert (=> d!1386242 (= (isEmpty!28627 lm!1477) (isEmpty!28629 (toList!4279 lm!1477)))))

(declare-fun bs!845227 () Bool)

(assert (= bs!845227 d!1386242))

(declare-fun m!5246107 () Bool)

(assert (=> bs!845227 m!5246107))

(assert (=> b!4508046 d!1386242))

(declare-fun d!1386244 () Bool)

(declare-fun res!1874969 () Bool)

(declare-fun e!2808570 () Bool)

(assert (=> d!1386244 (=> res!1874969 e!2808570)))

(assert (=> d!1386244 (= res!1874969 (and ((_ is Cons!50576) lt!1686663) (= (_1!28783 (h!56407 lt!1686663)) key!3287)))))

(assert (=> d!1386244 (= (containsKey!1712 lt!1686663 key!3287) e!2808570)))

(declare-fun b!4508389 () Bool)

(declare-fun e!2808571 () Bool)

(assert (=> b!4508389 (= e!2808570 e!2808571)))

(declare-fun res!1874970 () Bool)

(assert (=> b!4508389 (=> (not res!1874970) (not e!2808571))))

(assert (=> b!4508389 (= res!1874970 ((_ is Cons!50576) lt!1686663))))

(declare-fun b!4508390 () Bool)

(assert (=> b!4508390 (= e!2808571 (containsKey!1712 (t!357662 lt!1686663) key!3287))))

(assert (= (and d!1386244 (not res!1874969)) b!4508389))

(assert (= (and b!4508389 res!1874970) b!4508390))

(declare-fun m!5246109 () Bool)

(assert (=> b!4508390 m!5246109))

(assert (=> b!4508025 d!1386244))

(declare-fun bs!845228 () Bool)

(declare-fun d!1386246 () Bool)

(assert (= bs!845228 (and d!1386246 d!1386196)))

(declare-fun lambda!170097 () Int)

(assert (=> bs!845228 (= lambda!170097 lambda!170080)))

(declare-fun bs!845229 () Bool)

(assert (= bs!845229 (and d!1386246 d!1386084)))

(assert (=> bs!845229 (= lambda!170097 lambda!169986)))

(declare-fun bs!845230 () Bool)

(assert (= bs!845230 (and d!1386246 d!1386224)))

(assert (=> bs!845230 (= lambda!170097 lambda!170089)))

(declare-fun bs!845231 () Bool)

(assert (= bs!845231 (and d!1386246 start!445428)))

(assert (=> bs!845231 (= lambda!170097 lambda!169975)))

(declare-fun bs!845232 () Bool)

(assert (= bs!845232 (and d!1386246 d!1386112)))

(assert (=> bs!845232 (= lambda!170097 lambda!169992)))

(declare-fun bs!845233 () Bool)

(assert (= bs!845233 (and d!1386246 d!1386180)))

(assert (=> bs!845233 (= lambda!170097 lambda!170077)))

(declare-fun bs!845234 () Bool)

(assert (= bs!845234 (and d!1386246 d!1386188)))

(assert (=> bs!845234 (= lambda!170097 lambda!170078)))

(declare-fun bs!845235 () Bool)

(assert (= bs!845235 (and d!1386246 d!1386238)))

(assert (=> bs!845235 (= lambda!170097 lambda!170091)))

(declare-fun bs!845236 () Bool)

(assert (= bs!845236 (and d!1386246 d!1386192)))

(assert (=> bs!845236 (= lambda!170097 lambda!170079)))

(declare-fun bs!845237 () Bool)

(assert (= bs!845237 (and d!1386246 d!1386230)))

(assert (=> bs!845237 (= lambda!170097 lambda!170090)))

(declare-fun bs!845238 () Bool)

(assert (= bs!845238 (and d!1386246 d!1386240)))

(assert (=> bs!845238 (not (= lambda!170097 lambda!170094))))

(declare-fun bs!845239 () Bool)

(assert (= bs!845239 (and d!1386246 d!1386200)))

(assert (=> bs!845239 (= lambda!170097 lambda!170083)))

(assert (=> d!1386246 (not (contains!13267 (extractMap!1192 (toList!4279 lm!1477)) key!3287))))

(declare-fun lt!1687046 () Unit!93112)

(declare-fun choose!29263 (ListLongMap!2911 K!11980 Hashable!5531) Unit!93112)

(assert (=> d!1386246 (= lt!1687046 (choose!29263 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1386246 (forall!10207 (toList!4279 lm!1477) lambda!170097)))

(assert (=> d!1386246 (= (lemmaNotInItsHashBucketThenNotInMap!124 lm!1477 key!3287 hashF!1107) lt!1687046)))

(declare-fun bs!845240 () Bool)

(assert (= bs!845240 d!1386246))

(assert (=> bs!845240 m!5245409))

(assert (=> bs!845240 m!5245409))

(declare-fun m!5246111 () Bool)

(assert (=> bs!845240 m!5246111))

(declare-fun m!5246113 () Bool)

(assert (=> bs!845240 m!5246113))

(declare-fun m!5246115 () Bool)

(assert (=> bs!845240 m!5246115))

(assert (=> b!4508036 d!1386246))

(declare-fun e!2808574 () Bool)

(declare-fun b!4508395 () Bool)

(declare-fun tp!1337711 () Bool)

(assert (=> b!4508395 (= e!2808574 (and tp_is_empty!27821 tp_is_empty!27823 tp!1337711))))

(assert (=> b!4508043 (= tp!1337699 e!2808574)))

(assert (= (and b!4508043 ((_ is Cons!50576) (t!357662 newBucket!178))) b!4508395))

(declare-fun b!4508400 () Bool)

(declare-fun e!2808577 () Bool)

(declare-fun tp!1337716 () Bool)

(declare-fun tp!1337717 () Bool)

(assert (=> b!4508400 (= e!2808577 (and tp!1337716 tp!1337717))))

(assert (=> b!4508042 (= tp!1337698 e!2808577)))

(assert (= (and b!4508042 ((_ is Cons!50577) (toList!4279 lm!1477))) b!4508400))

(declare-fun b_lambda!153517 () Bool)

(assert (= b_lambda!153513 (or start!445428 b_lambda!153517)))

(declare-fun bs!845241 () Bool)

(declare-fun d!1386248 () Bool)

(assert (= bs!845241 (and d!1386248 start!445428)))

(assert (=> bs!845241 (= (dynLambda!21131 lambda!169975 lt!1686676) (noDuplicateKeys!1136 (_2!28784 lt!1686676)))))

(declare-fun m!5246117 () Bool)

(assert (=> bs!845241 m!5246117))

(assert (=> d!1386202 d!1386248))

(declare-fun b_lambda!153519 () Bool)

(assert (= b_lambda!153515 (or start!445428 b_lambda!153519)))

(declare-fun bs!845242 () Bool)

(declare-fun d!1386250 () Bool)

(assert (= bs!845242 (and d!1386250 start!445428)))

(assert (=> bs!845242 (= (dynLambda!21131 lambda!169975 (h!56408 (toList!4279 lm!1477))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lm!1477)))))))

(declare-fun m!5246119 () Bool)

(assert (=> bs!845242 m!5246119))

(assert (=> b!4508366 d!1386250))

(check-sat (not b!4508400) (not d!1386180) (not b!4508311) (not b!4508359) (not d!1386152) (not d!1386074) (not bm!313899) (not d!1386242) (not b!4508113) (not d!1386172) (not b!4508219) (not b!4508268) (not bm!313904) (not d!1386220) (not b!4508374) (not b!4508326) (not b!4508106) (not b!4508342) (not b!4508336) (not b!4508335) (not d!1386208) (not b!4508090) (not b!4508108) (not d!1386202) (not d!1386178) (not b!4508334) (not bm!313901) (not b!4508390) (not b!4508094) (not d!1386194) (not d!1386216) (not d!1386236) (not b_lambda!153517) (not b!4508215) (not b!4508314) (not d!1386212) (not b!4508367) (not b!4508143) (not d!1386162) (not b!4508331) (not d!1386240) (not b!4508111) (not b!4508375) (not d!1386234) (not d!1386238) (not d!1386200) (not d!1386206) (not d!1386222) (not b!4508376) (not b!4508344) (not b!4508337) (not b!4508254) (not d!1386112) (not d!1386232) (not b!4508341) (not d!1386230) (not bs!845241) (not d!1386198) (not b!4508318) (not d!1386204) (not b!4508322) (not d!1386196) (not d!1386170) (not b!4508218) (not b!4508328) (not d!1386246) (not d!1386210) (not d!1386182) (not b!4508309) (not b!4508307) (not bm!313905) (not b!4508361) (not bs!845242) (not d!1386122) (not b!4508379) (not b!4508323) (not b!4508355) (not b!4508380) (not b!4508333) (not b!4508395) (not d!1386190) (not d!1386110) (not b!4508312) (not b!4508377) tp_is_empty!27823 (not b!4508256) (not b!4508320) (not b!4508217) (not b!4508381) (not b!4508306) (not d!1386228) (not bm!313906) (not d!1386218) (not b!4508095) (not bm!313900) (not b_lambda!153519) (not b!4508317) (not d!1386084) (not b!4508277) (not b!4508324) (not b!4508329) (not d!1386224) (not b!4508267) tp_is_empty!27821 (not d!1386188) (not b!4508091) (not b!4508313) (not d!1386192) (not b!4508315) (not d!1386226) (not d!1386068) (not b!4508325))
(check-sat)
(get-model)

(declare-fun d!1386252 () Bool)

(declare-fun lt!1687049 () Bool)

(assert (=> d!1386252 (= lt!1687049 (select (content!8293 (keys!17548 lt!1686664)) key!3287))))

(declare-fun e!2808582 () Bool)

(assert (=> d!1386252 (= lt!1687049 e!2808582)))

(declare-fun res!1874975 () Bool)

(assert (=> d!1386252 (=> (not res!1874975) (not e!2808582))))

(assert (=> d!1386252 (= res!1874975 ((_ is Cons!50579) (keys!17548 lt!1686664)))))

(assert (=> d!1386252 (= (contains!13271 (keys!17548 lt!1686664) key!3287) lt!1687049)))

(declare-fun b!4508405 () Bool)

(declare-fun e!2808583 () Bool)

(assert (=> b!4508405 (= e!2808582 e!2808583)))

(declare-fun res!1874976 () Bool)

(assert (=> b!4508405 (=> res!1874976 e!2808583)))

(assert (=> b!4508405 (= res!1874976 (= (h!56412 (keys!17548 lt!1686664)) key!3287))))

(declare-fun b!4508406 () Bool)

(assert (=> b!4508406 (= e!2808583 (contains!13271 (t!357665 (keys!17548 lt!1686664)) key!3287))))

(assert (= (and d!1386252 res!1874975) b!4508405))

(assert (= (and b!4508405 (not res!1874976)) b!4508406))

(assert (=> d!1386252 m!5245975))

(declare-fun m!5246121 () Bool)

(assert (=> d!1386252 m!5246121))

(declare-fun m!5246123 () Bool)

(assert (=> d!1386252 m!5246123))

(declare-fun m!5246125 () Bool)

(assert (=> b!4508406 m!5246125))

(assert (=> b!4508335 d!1386252))

(declare-fun b!4508423 () Bool)

(assert (=> b!4508423 true))

(declare-fun d!1386254 () Bool)

(declare-fun e!2808592 () Bool)

(assert (=> d!1386254 e!2808592))

(declare-fun res!1874988 () Bool)

(assert (=> d!1386254 (=> (not res!1874988) (not e!2808592))))

(declare-fun lt!1687060 () List!50703)

(declare-fun noDuplicate!737 (List!50703) Bool)

(assert (=> d!1386254 (= res!1874988 (noDuplicate!737 lt!1687060))))

(assert (=> d!1386254 (= lt!1687060 (getKeysList!443 (toList!4280 lt!1686664)))))

(assert (=> d!1386254 (= (keys!17548 lt!1686664) lt!1687060)))

(declare-fun b!4508422 () Bool)

(declare-fun res!1874986 () Bool)

(assert (=> b!4508422 (=> (not res!1874986) (not e!2808592))))

(declare-fun length!330 (List!50703) Int)

(declare-fun length!331 (List!50700) Int)

(assert (=> b!4508422 (= res!1874986 (= (length!330 lt!1687060) (length!331 (toList!4280 lt!1686664))))))

(declare-fun res!1874987 () Bool)

(assert (=> b!4508423 (=> (not res!1874987) (not e!2808592))))

(declare-fun lambda!170102 () Int)

(declare-fun forall!10210 (List!50703 Int) Bool)

(assert (=> b!4508423 (= res!1874987 (forall!10210 lt!1687060 lambda!170102))))

(declare-fun lambda!170103 () Int)

(declare-fun b!4508424 () Bool)

(declare-fun map!11116 (List!50700 Int) List!50703)

(assert (=> b!4508424 (= e!2808592 (= (content!8293 lt!1687060) (content!8293 (map!11116 (toList!4280 lt!1686664) lambda!170103))))))

(assert (= (and d!1386254 res!1874988) b!4508422))

(assert (= (and b!4508422 res!1874986) b!4508423))

(assert (= (and b!4508423 res!1874987) b!4508424))

(declare-fun m!5246147 () Bool)

(assert (=> d!1386254 m!5246147))

(assert (=> d!1386254 m!5245971))

(declare-fun m!5246149 () Bool)

(assert (=> b!4508422 m!5246149))

(declare-fun m!5246151 () Bool)

(assert (=> b!4508422 m!5246151))

(declare-fun m!5246153 () Bool)

(assert (=> b!4508423 m!5246153))

(declare-fun m!5246155 () Bool)

(assert (=> b!4508424 m!5246155))

(declare-fun m!5246157 () Bool)

(assert (=> b!4508424 m!5246157))

(assert (=> b!4508424 m!5246157))

(declare-fun m!5246159 () Bool)

(assert (=> b!4508424 m!5246159))

(assert (=> b!4508335 d!1386254))

(declare-fun bs!845243 () Bool)

(declare-fun d!1386260 () Bool)

(assert (= bs!845243 (and d!1386260 d!1386122)))

(declare-fun lambda!170106 () Int)

(assert (=> bs!845243 (= (= lt!1686668 lt!1686928) (= lambda!170106 lambda!170065))))

(declare-fun bs!845244 () Bool)

(assert (= bs!845244 (and d!1386260 b!4508218)))

(assert (=> bs!845244 (= (= lt!1686668 lt!1686926) (= lambda!170106 lambda!170064))))

(declare-fun bs!845245 () Bool)

(assert (= bs!845245 (and d!1386260 d!1386218)))

(assert (=> bs!845245 (not (= lambda!170106 lambda!170086))))

(declare-fun bs!845246 () Bool)

(assert (= bs!845246 (and d!1386260 b!4508216)))

(assert (=> bs!845246 (= lambda!170106 lambda!170062)))

(assert (=> bs!845244 (= lambda!170106 lambda!170063)))

(assert (=> d!1386260 true))

(assert (=> d!1386260 (forall!10208 (toList!4280 lt!1686668) lambda!170106)))

(declare-fun lt!1687063 () Unit!93112)

(declare-fun choose!29264 (ListMap!3541) Unit!93112)

(assert (=> d!1386260 (= lt!1687063 (choose!29264 lt!1686668))))

(assert (=> d!1386260 (= (lemmaContainsAllItsOwnKeys!315 lt!1686668) lt!1687063)))

(declare-fun bs!845247 () Bool)

(assert (= bs!845247 d!1386260))

(declare-fun m!5246161 () Bool)

(assert (=> bs!845247 m!5246161))

(declare-fun m!5246163 () Bool)

(assert (=> bs!845247 m!5246163))

(assert (=> bm!313901 d!1386260))

(declare-fun d!1386262 () Bool)

(declare-fun e!2808594 () Bool)

(assert (=> d!1386262 e!2808594))

(declare-fun res!1874989 () Bool)

(assert (=> d!1386262 (=> res!1874989 e!2808594)))

(declare-fun lt!1687064 () Bool)

(assert (=> d!1386262 (= res!1874989 (not lt!1687064))))

(declare-fun lt!1687065 () Bool)

(assert (=> d!1386262 (= lt!1687064 lt!1687065)))

(declare-fun lt!1687066 () Unit!93112)

(declare-fun e!2808593 () Unit!93112)

(assert (=> d!1386262 (= lt!1687066 e!2808593)))

(declare-fun c!768955 () Bool)

(assert (=> d!1386262 (= c!768955 lt!1687065)))

(assert (=> d!1386262 (= lt!1687065 (containsKey!1714 (toList!4279 lt!1687039) (_1!28784 lt!1686677)))))

(assert (=> d!1386262 (= (contains!13269 lt!1687039 (_1!28784 lt!1686677)) lt!1687064)))

(declare-fun b!4508427 () Bool)

(declare-fun lt!1687067 () Unit!93112)

(assert (=> b!4508427 (= e!2808593 lt!1687067)))

(assert (=> b!4508427 (= lt!1687067 (lemmaContainsKeyImpliesGetValueByKeyDefined!951 (toList!4279 lt!1687039) (_1!28784 lt!1686677)))))

(assert (=> b!4508427 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1687039) (_1!28784 lt!1686677)))))

(declare-fun b!4508428 () Bool)

(declare-fun Unit!93154 () Unit!93112)

(assert (=> b!4508428 (= e!2808593 Unit!93154)))

(declare-fun b!4508429 () Bool)

(assert (=> b!4508429 (= e!2808594 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1687039) (_1!28784 lt!1686677))))))

(assert (= (and d!1386262 c!768955) b!4508427))

(assert (= (and d!1386262 (not c!768955)) b!4508428))

(assert (= (and d!1386262 (not res!1874989)) b!4508429))

(declare-fun m!5246165 () Bool)

(assert (=> d!1386262 m!5246165))

(declare-fun m!5246167 () Bool)

(assert (=> b!4508427 m!5246167))

(assert (=> b!4508427 m!5246091))

(assert (=> b!4508427 m!5246091))

(declare-fun m!5246169 () Bool)

(assert (=> b!4508427 m!5246169))

(assert (=> b!4508429 m!5246091))

(assert (=> b!4508429 m!5246091))

(assert (=> b!4508429 m!5246169))

(assert (=> d!1386234 d!1386262))

(declare-fun d!1386264 () Bool)

(declare-fun c!768960 () Bool)

(assert (=> d!1386264 (= c!768960 (and ((_ is Cons!50577) lt!1687042) (= (_1!28784 (h!56408 lt!1687042)) (_1!28784 lt!1686677))))))

(declare-fun e!2808599 () Option!11068)

(assert (=> d!1386264 (= (getValueByKey!1048 lt!1687042 (_1!28784 lt!1686677)) e!2808599)))

(declare-fun b!4508440 () Bool)

(declare-fun e!2808600 () Option!11068)

(assert (=> b!4508440 (= e!2808600 (getValueByKey!1048 (t!357663 lt!1687042) (_1!28784 lt!1686677)))))

(declare-fun b!4508439 () Bool)

(assert (=> b!4508439 (= e!2808599 e!2808600)))

(declare-fun c!768961 () Bool)

(assert (=> b!4508439 (= c!768961 (and ((_ is Cons!50577) lt!1687042) (not (= (_1!28784 (h!56408 lt!1687042)) (_1!28784 lt!1686677)))))))

(declare-fun b!4508438 () Bool)

(assert (=> b!4508438 (= e!2808599 (Some!11067 (_2!28784 (h!56408 lt!1687042))))))

(declare-fun b!4508441 () Bool)

(assert (=> b!4508441 (= e!2808600 None!11067)))

(assert (= (and d!1386264 c!768960) b!4508438))

(assert (= (and d!1386264 (not c!768960)) b!4508439))

(assert (= (and b!4508439 c!768961) b!4508440))

(assert (= (and b!4508439 (not c!768961)) b!4508441))

(declare-fun m!5246171 () Bool)

(assert (=> b!4508440 m!5246171))

(assert (=> d!1386234 d!1386264))

(declare-fun d!1386266 () Bool)

(assert (=> d!1386266 (= (getValueByKey!1048 lt!1687042 (_1!28784 lt!1686677)) (Some!11067 (_2!28784 lt!1686677)))))

(declare-fun lt!1687070 () Unit!93112)

(declare-fun choose!29265 (List!50701 (_ BitVec 64) List!50700) Unit!93112)

(assert (=> d!1386266 (= lt!1687070 (choose!29265 lt!1687042 (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))

(declare-fun e!2808603 () Bool)

(assert (=> d!1386266 e!2808603))

(declare-fun res!1874994 () Bool)

(assert (=> d!1386266 (=> (not res!1874994) (not e!2808603))))

(assert (=> d!1386266 (= res!1874994 (isStrictlySorted!409 lt!1687042))))

(assert (=> d!1386266 (= (lemmaContainsTupThenGetReturnValue!646 lt!1687042 (_1!28784 lt!1686677) (_2!28784 lt!1686677)) lt!1687070)))

(declare-fun b!4508446 () Bool)

(declare-fun res!1874995 () Bool)

(assert (=> b!4508446 (=> (not res!1874995) (not e!2808603))))

(assert (=> b!4508446 (= res!1874995 (containsKey!1714 lt!1687042 (_1!28784 lt!1686677)))))

(declare-fun b!4508447 () Bool)

(assert (=> b!4508447 (= e!2808603 (contains!13268 lt!1687042 (tuple2!50981 (_1!28784 lt!1686677) (_2!28784 lt!1686677))))))

(assert (= (and d!1386266 res!1874994) b!4508446))

(assert (= (and b!4508446 res!1874995) b!4508447))

(assert (=> d!1386266 m!5246085))

(declare-fun m!5246173 () Bool)

(assert (=> d!1386266 m!5246173))

(declare-fun m!5246175 () Bool)

(assert (=> d!1386266 m!5246175))

(declare-fun m!5246177 () Bool)

(assert (=> b!4508446 m!5246177))

(declare-fun m!5246179 () Bool)

(assert (=> b!4508447 m!5246179))

(assert (=> d!1386234 d!1386266))

(declare-fun call!313924 () List!50701)

(declare-fun c!768973 () Bool)

(declare-fun bm!313917 () Bool)

(declare-fun e!2808623 () List!50701)

(declare-fun $colon$colon!915 (List!50701 tuple2!50980) List!50701)

(assert (=> bm!313917 (= call!313924 ($colon$colon!915 e!2808623 (ite c!768973 (h!56408 (toList!4279 lt!1686666)) (tuple2!50981 (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))))

(declare-fun c!768972 () Bool)

(assert (=> bm!313917 (= c!768972 c!768973)))

(declare-fun b!4508475 () Bool)

(declare-fun e!2808619 () Bool)

(declare-fun lt!1687094 () List!50701)

(assert (=> b!4508475 (= e!2808619 (contains!13268 lt!1687094 (tuple2!50981 (_1!28784 lt!1686677) (_2!28784 lt!1686677))))))

(declare-fun b!4508476 () Bool)

(declare-fun e!2808620 () List!50701)

(declare-fun call!313922 () List!50701)

(assert (=> b!4508476 (= e!2808620 call!313922)))

(declare-fun b!4508477 () Bool)

(declare-fun res!1875005 () Bool)

(assert (=> b!4508477 (=> (not res!1875005) (not e!2808619))))

(assert (=> b!4508477 (= res!1875005 (containsKey!1714 lt!1687094 (_1!28784 lt!1686677)))))

(declare-fun b!4508478 () Bool)

(assert (=> b!4508478 (= e!2808620 call!313922)))

(declare-fun bm!313918 () Bool)

(declare-fun call!313923 () List!50701)

(assert (=> bm!313918 (= call!313922 call!313923)))

(declare-fun b!4508479 () Bool)

(declare-fun e!2808622 () List!50701)

(assert (=> b!4508479 (= e!2808622 call!313923)))

(declare-fun b!4508480 () Bool)

(declare-fun c!768971 () Bool)

(assert (=> b!4508480 (= c!768971 (and ((_ is Cons!50577) (toList!4279 lt!1686666)) (bvsgt (_1!28784 (h!56408 (toList!4279 lt!1686666))) (_1!28784 lt!1686677))))))

(assert (=> b!4508480 (= e!2808622 e!2808620)))

(declare-fun b!4508481 () Bool)

(assert (=> b!4508481 (= e!2808623 (insertStrictlySorted!386 (t!357663 (toList!4279 lt!1686666)) (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))

(declare-fun b!4508482 () Bool)

(declare-fun e!2808621 () List!50701)

(assert (=> b!4508482 (= e!2808621 e!2808622)))

(declare-fun c!768974 () Bool)

(assert (=> b!4508482 (= c!768974 (and ((_ is Cons!50577) (toList!4279 lt!1686666)) (= (_1!28784 (h!56408 (toList!4279 lt!1686666))) (_1!28784 lt!1686677))))))

(declare-fun b!4508483 () Bool)

(assert (=> b!4508483 (= e!2808621 call!313924)))

(declare-fun b!4508484 () Bool)

(assert (=> b!4508484 (= e!2808623 (ite c!768974 (t!357663 (toList!4279 lt!1686666)) (ite c!768971 (Cons!50577 (h!56408 (toList!4279 lt!1686666)) (t!357663 (toList!4279 lt!1686666))) Nil!50577)))))

(declare-fun bm!313919 () Bool)

(assert (=> bm!313919 (= call!313923 call!313924)))

(declare-fun d!1386268 () Bool)

(assert (=> d!1386268 e!2808619))

(declare-fun res!1875006 () Bool)

(assert (=> d!1386268 (=> (not res!1875006) (not e!2808619))))

(assert (=> d!1386268 (= res!1875006 (isStrictlySorted!409 lt!1687094))))

(assert (=> d!1386268 (= lt!1687094 e!2808621)))

(assert (=> d!1386268 (= c!768973 (and ((_ is Cons!50577) (toList!4279 lt!1686666)) (bvslt (_1!28784 (h!56408 (toList!4279 lt!1686666))) (_1!28784 lt!1686677))))))

(assert (=> d!1386268 (isStrictlySorted!409 (toList!4279 lt!1686666))))

(assert (=> d!1386268 (= (insertStrictlySorted!386 (toList!4279 lt!1686666) (_1!28784 lt!1686677) (_2!28784 lt!1686677)) lt!1687094)))

(assert (= (and d!1386268 c!768973) b!4508483))

(assert (= (and d!1386268 (not c!768973)) b!4508482))

(assert (= (and b!4508482 c!768974) b!4508479))

(assert (= (and b!4508482 (not c!768974)) b!4508480))

(assert (= (and b!4508480 c!768971) b!4508476))

(assert (= (and b!4508480 (not c!768971)) b!4508478))

(assert (= (or b!4508476 b!4508478) bm!313918))

(assert (= (or b!4508479 bm!313918) bm!313919))

(assert (= (or b!4508483 bm!313919) bm!313917))

(assert (= (and bm!313917 c!768972) b!4508481))

(assert (= (and bm!313917 (not c!768972)) b!4508484))

(assert (= (and d!1386268 res!1875006) b!4508477))

(assert (= (and b!4508477 res!1875005) b!4508475))

(declare-fun m!5246185 () Bool)

(assert (=> b!4508477 m!5246185))

(declare-fun m!5246187 () Bool)

(assert (=> bm!313917 m!5246187))

(declare-fun m!5246189 () Bool)

(assert (=> b!4508481 m!5246189))

(declare-fun m!5246191 () Bool)

(assert (=> d!1386268 m!5246191))

(declare-fun m!5246193 () Bool)

(assert (=> d!1386268 m!5246193))

(declare-fun m!5246195 () Bool)

(assert (=> b!4508475 m!5246195))

(assert (=> d!1386234 d!1386268))

(declare-fun d!1386274 () Bool)

(declare-fun noDuplicatedKeys!252 (List!50700) Bool)

(assert (=> d!1386274 (= (invariantList!995 (toList!4280 lt!1686992)) (noDuplicatedKeys!252 (toList!4280 lt!1686992)))))

(declare-fun bs!845264 () Bool)

(assert (= bs!845264 d!1386274))

(declare-fun m!5246197 () Bool)

(assert (=> bs!845264 m!5246197))

(assert (=> d!1386188 d!1386274))

(declare-fun d!1386276 () Bool)

(declare-fun res!1875007 () Bool)

(declare-fun e!2808624 () Bool)

(assert (=> d!1386276 (=> res!1875007 e!2808624)))

(assert (=> d!1386276 (= res!1875007 ((_ is Nil!50577) (t!357663 (toList!4279 lm!1477))))))

(assert (=> d!1386276 (= (forall!10207 (t!357663 (toList!4279 lm!1477)) lambda!170078) e!2808624)))

(declare-fun b!4508485 () Bool)

(declare-fun e!2808625 () Bool)

(assert (=> b!4508485 (= e!2808624 e!2808625)))

(declare-fun res!1875008 () Bool)

(assert (=> b!4508485 (=> (not res!1875008) (not e!2808625))))

(assert (=> b!4508485 (= res!1875008 (dynLambda!21131 lambda!170078 (h!56408 (t!357663 (toList!4279 lm!1477)))))))

(declare-fun b!4508486 () Bool)

(assert (=> b!4508486 (= e!2808625 (forall!10207 (t!357663 (t!357663 (toList!4279 lm!1477))) lambda!170078))))

(assert (= (and d!1386276 (not res!1875007)) b!4508485))

(assert (= (and b!4508485 res!1875008) b!4508486))

(declare-fun b_lambda!153523 () Bool)

(assert (=> (not b_lambda!153523) (not b!4508485)))

(declare-fun m!5246213 () Bool)

(assert (=> b!4508485 m!5246213))

(declare-fun m!5246215 () Bool)

(assert (=> b!4508486 m!5246215))

(assert (=> d!1386188 d!1386276))

(declare-fun d!1386278 () Bool)

(assert (=> d!1386278 (= (isEmpty!28629 (toList!4279 lm!1477)) ((_ is Nil!50577) (toList!4279 lm!1477)))))

(assert (=> d!1386242 d!1386278))

(declare-fun d!1386280 () Bool)

(declare-fun e!2808627 () Bool)

(assert (=> d!1386280 e!2808627))

(declare-fun res!1875009 () Bool)

(assert (=> d!1386280 (=> res!1875009 e!2808627)))

(declare-fun lt!1687095 () Bool)

(assert (=> d!1386280 (= res!1875009 (not lt!1687095))))

(declare-fun lt!1687096 () Bool)

(assert (=> d!1386280 (= lt!1687095 lt!1687096)))

(declare-fun lt!1687097 () Unit!93112)

(declare-fun e!2808626 () Unit!93112)

(assert (=> d!1386280 (= lt!1687097 e!2808626)))

(declare-fun c!768975 () Bool)

(assert (=> d!1386280 (= c!768975 lt!1687096)))

(assert (=> d!1386280 (= lt!1687096 (containsKey!1714 (toList!4279 lt!1687034) (_1!28784 lt!1686680)))))

(assert (=> d!1386280 (= (contains!13269 lt!1687034 (_1!28784 lt!1686680)) lt!1687095)))

(declare-fun b!4508487 () Bool)

(declare-fun lt!1687098 () Unit!93112)

(assert (=> b!4508487 (= e!2808626 lt!1687098)))

(assert (=> b!4508487 (= lt!1687098 (lemmaContainsKeyImpliesGetValueByKeyDefined!951 (toList!4279 lt!1687034) (_1!28784 lt!1686680)))))

(assert (=> b!4508487 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1687034) (_1!28784 lt!1686680)))))

(declare-fun b!4508488 () Bool)

(declare-fun Unit!93156 () Unit!93112)

(assert (=> b!4508488 (= e!2808626 Unit!93156)))

(declare-fun b!4508489 () Bool)

(assert (=> b!4508489 (= e!2808627 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1687034) (_1!28784 lt!1686680))))))

(assert (= (and d!1386280 c!768975) b!4508487))

(assert (= (and d!1386280 (not c!768975)) b!4508488))

(assert (= (and d!1386280 (not res!1875009)) b!4508489))

(declare-fun m!5246237 () Bool)

(assert (=> d!1386280 m!5246237))

(declare-fun m!5246239 () Bool)

(assert (=> b!4508487 m!5246239))

(assert (=> b!4508487 m!5246067))

(assert (=> b!4508487 m!5246067))

(declare-fun m!5246241 () Bool)

(assert (=> b!4508487 m!5246241))

(assert (=> b!4508489 m!5246067))

(assert (=> b!4508489 m!5246067))

(assert (=> b!4508489 m!5246241))

(assert (=> d!1386226 d!1386280))

(declare-fun d!1386284 () Bool)

(declare-fun c!768977 () Bool)

(assert (=> d!1386284 (= c!768977 (and ((_ is Cons!50577) lt!1687037) (= (_1!28784 (h!56408 lt!1687037)) (_1!28784 lt!1686680))))))

(declare-fun e!2808629 () Option!11068)

(assert (=> d!1386284 (= (getValueByKey!1048 lt!1687037 (_1!28784 lt!1686680)) e!2808629)))

(declare-fun b!4508494 () Bool)

(declare-fun e!2808630 () Option!11068)

(assert (=> b!4508494 (= e!2808630 (getValueByKey!1048 (t!357663 lt!1687037) (_1!28784 lt!1686680)))))

(declare-fun b!4508493 () Bool)

(assert (=> b!4508493 (= e!2808629 e!2808630)))

(declare-fun c!768978 () Bool)

(assert (=> b!4508493 (= c!768978 (and ((_ is Cons!50577) lt!1687037) (not (= (_1!28784 (h!56408 lt!1687037)) (_1!28784 lt!1686680)))))))

(declare-fun b!4508492 () Bool)

(assert (=> b!4508492 (= e!2808629 (Some!11067 (_2!28784 (h!56408 lt!1687037))))))

(declare-fun b!4508495 () Bool)

(assert (=> b!4508495 (= e!2808630 None!11067)))

(assert (= (and d!1386284 c!768977) b!4508492))

(assert (= (and d!1386284 (not c!768977)) b!4508493))

(assert (= (and b!4508493 c!768978) b!4508494))

(assert (= (and b!4508493 (not c!768978)) b!4508495))

(declare-fun m!5246243 () Bool)

(assert (=> b!4508494 m!5246243))

(assert (=> d!1386226 d!1386284))

(declare-fun d!1386286 () Bool)

(assert (=> d!1386286 (= (getValueByKey!1048 lt!1687037 (_1!28784 lt!1686680)) (Some!11067 (_2!28784 lt!1686680)))))

(declare-fun lt!1687100 () Unit!93112)

(assert (=> d!1386286 (= lt!1687100 (choose!29265 lt!1687037 (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))

(declare-fun e!2808631 () Bool)

(assert (=> d!1386286 e!2808631))

(declare-fun res!1875010 () Bool)

(assert (=> d!1386286 (=> (not res!1875010) (not e!2808631))))

(assert (=> d!1386286 (= res!1875010 (isStrictlySorted!409 lt!1687037))))

(assert (=> d!1386286 (= (lemmaContainsTupThenGetReturnValue!646 lt!1687037 (_1!28784 lt!1686680) (_2!28784 lt!1686680)) lt!1687100)))

(declare-fun b!4508496 () Bool)

(declare-fun res!1875011 () Bool)

(assert (=> b!4508496 (=> (not res!1875011) (not e!2808631))))

(assert (=> b!4508496 (= res!1875011 (containsKey!1714 lt!1687037 (_1!28784 lt!1686680)))))

(declare-fun b!4508497 () Bool)

(assert (=> b!4508497 (= e!2808631 (contains!13268 lt!1687037 (tuple2!50981 (_1!28784 lt!1686680) (_2!28784 lt!1686680))))))

(assert (= (and d!1386286 res!1875010) b!4508496))

(assert (= (and b!4508496 res!1875011) b!4508497))

(assert (=> d!1386286 m!5246061))

(declare-fun m!5246245 () Bool)

(assert (=> d!1386286 m!5246245))

(declare-fun m!5246247 () Bool)

(assert (=> d!1386286 m!5246247))

(declare-fun m!5246249 () Bool)

(assert (=> b!4508496 m!5246249))

(declare-fun m!5246251 () Bool)

(assert (=> b!4508497 m!5246251))

(assert (=> d!1386226 d!1386286))

(declare-fun c!768981 () Bool)

(declare-fun bm!313920 () Bool)

(declare-fun e!2808636 () List!50701)

(declare-fun call!313927 () List!50701)

(assert (=> bm!313920 (= call!313927 ($colon$colon!915 e!2808636 (ite c!768981 (h!56408 (toList!4279 lt!1686666)) (tuple2!50981 (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))))

(declare-fun c!768980 () Bool)

(assert (=> bm!313920 (= c!768980 c!768981)))

(declare-fun b!4508498 () Bool)

(declare-fun e!2808632 () Bool)

(declare-fun lt!1687101 () List!50701)

(assert (=> b!4508498 (= e!2808632 (contains!13268 lt!1687101 (tuple2!50981 (_1!28784 lt!1686680) (_2!28784 lt!1686680))))))

(declare-fun b!4508499 () Bool)

(declare-fun e!2808633 () List!50701)

(declare-fun call!313925 () List!50701)

(assert (=> b!4508499 (= e!2808633 call!313925)))

(declare-fun b!4508500 () Bool)

(declare-fun res!1875012 () Bool)

(assert (=> b!4508500 (=> (not res!1875012) (not e!2808632))))

(assert (=> b!4508500 (= res!1875012 (containsKey!1714 lt!1687101 (_1!28784 lt!1686680)))))

(declare-fun b!4508501 () Bool)

(assert (=> b!4508501 (= e!2808633 call!313925)))

(declare-fun bm!313921 () Bool)

(declare-fun call!313926 () List!50701)

(assert (=> bm!313921 (= call!313925 call!313926)))

(declare-fun b!4508502 () Bool)

(declare-fun e!2808635 () List!50701)

(assert (=> b!4508502 (= e!2808635 call!313926)))

(declare-fun b!4508503 () Bool)

(declare-fun c!768979 () Bool)

(assert (=> b!4508503 (= c!768979 (and ((_ is Cons!50577) (toList!4279 lt!1686666)) (bvsgt (_1!28784 (h!56408 (toList!4279 lt!1686666))) (_1!28784 lt!1686680))))))

(assert (=> b!4508503 (= e!2808635 e!2808633)))

(declare-fun b!4508504 () Bool)

(assert (=> b!4508504 (= e!2808636 (insertStrictlySorted!386 (t!357663 (toList!4279 lt!1686666)) (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))

(declare-fun b!4508505 () Bool)

(declare-fun e!2808634 () List!50701)

(assert (=> b!4508505 (= e!2808634 e!2808635)))

(declare-fun c!768982 () Bool)

(assert (=> b!4508505 (= c!768982 (and ((_ is Cons!50577) (toList!4279 lt!1686666)) (= (_1!28784 (h!56408 (toList!4279 lt!1686666))) (_1!28784 lt!1686680))))))

(declare-fun b!4508506 () Bool)

(assert (=> b!4508506 (= e!2808634 call!313927)))

(declare-fun b!4508507 () Bool)

(assert (=> b!4508507 (= e!2808636 (ite c!768982 (t!357663 (toList!4279 lt!1686666)) (ite c!768979 (Cons!50577 (h!56408 (toList!4279 lt!1686666)) (t!357663 (toList!4279 lt!1686666))) Nil!50577)))))

(declare-fun bm!313922 () Bool)

(assert (=> bm!313922 (= call!313926 call!313927)))

(declare-fun d!1386288 () Bool)

(assert (=> d!1386288 e!2808632))

(declare-fun res!1875013 () Bool)

(assert (=> d!1386288 (=> (not res!1875013) (not e!2808632))))

(assert (=> d!1386288 (= res!1875013 (isStrictlySorted!409 lt!1687101))))

(assert (=> d!1386288 (= lt!1687101 e!2808634)))

(assert (=> d!1386288 (= c!768981 (and ((_ is Cons!50577) (toList!4279 lt!1686666)) (bvslt (_1!28784 (h!56408 (toList!4279 lt!1686666))) (_1!28784 lt!1686680))))))

(assert (=> d!1386288 (isStrictlySorted!409 (toList!4279 lt!1686666))))

(assert (=> d!1386288 (= (insertStrictlySorted!386 (toList!4279 lt!1686666) (_1!28784 lt!1686680) (_2!28784 lt!1686680)) lt!1687101)))

(assert (= (and d!1386288 c!768981) b!4508506))

(assert (= (and d!1386288 (not c!768981)) b!4508505))

(assert (= (and b!4508505 c!768982) b!4508502))

(assert (= (and b!4508505 (not c!768982)) b!4508503))

(assert (= (and b!4508503 c!768979) b!4508499))

(assert (= (and b!4508503 (not c!768979)) b!4508501))

(assert (= (or b!4508499 b!4508501) bm!313921))

(assert (= (or b!4508502 bm!313921) bm!313922))

(assert (= (or b!4508506 bm!313922) bm!313920))

(assert (= (and bm!313920 c!768980) b!4508504))

(assert (= (and bm!313920 (not c!768980)) b!4508507))

(assert (= (and d!1386288 res!1875013) b!4508500))

(assert (= (and b!4508500 res!1875012) b!4508498))

(declare-fun m!5246253 () Bool)

(assert (=> b!4508500 m!5246253))

(declare-fun m!5246255 () Bool)

(assert (=> bm!313920 m!5246255))

(declare-fun m!5246257 () Bool)

(assert (=> b!4508504 m!5246257))

(declare-fun m!5246259 () Bool)

(assert (=> d!1386288 m!5246259))

(assert (=> d!1386288 m!5246193))

(declare-fun m!5246261 () Bool)

(assert (=> b!4508498 m!5246261))

(assert (=> d!1386226 d!1386288))

(declare-fun d!1386290 () Bool)

(declare-fun res!1875014 () Bool)

(declare-fun e!2808637 () Bool)

(assert (=> d!1386290 (=> res!1875014 e!2808637)))

(assert (=> d!1386290 (= res!1875014 (and ((_ is Cons!50576) lt!1687023) (= (_1!28783 (h!56407 lt!1687023)) key!3287)))))

(assert (=> d!1386290 (= (containsKey!1712 lt!1687023 key!3287) e!2808637)))

(declare-fun b!4508508 () Bool)

(declare-fun e!2808638 () Bool)

(assert (=> b!4508508 (= e!2808637 e!2808638)))

(declare-fun res!1875015 () Bool)

(assert (=> b!4508508 (=> (not res!1875015) (not e!2808638))))

(assert (=> b!4508508 (= res!1875015 ((_ is Cons!50576) lt!1687023))))

(declare-fun b!4508509 () Bool)

(assert (=> b!4508509 (= e!2808638 (containsKey!1712 (t!357662 lt!1687023) key!3287))))

(assert (= (and d!1386290 (not res!1875014)) b!4508508))

(assert (= (and b!4508508 res!1875015) b!4508509))

(declare-fun m!5246263 () Bool)

(assert (=> b!4508509 m!5246263))

(assert (=> d!1386206 d!1386290))

(declare-fun d!1386292 () Bool)

(declare-fun res!1875016 () Bool)

(declare-fun e!2808639 () Bool)

(assert (=> d!1386292 (=> res!1875016 e!2808639)))

(assert (=> d!1386292 (= res!1875016 (not ((_ is Cons!50576) lt!1686663)))))

(assert (=> d!1386292 (= (noDuplicateKeys!1136 lt!1686663) e!2808639)))

(declare-fun b!4508510 () Bool)

(declare-fun e!2808640 () Bool)

(assert (=> b!4508510 (= e!2808639 e!2808640)))

(declare-fun res!1875017 () Bool)

(assert (=> b!4508510 (=> (not res!1875017) (not e!2808640))))

(assert (=> b!4508510 (= res!1875017 (not (containsKey!1712 (t!357662 lt!1686663) (_1!28783 (h!56407 lt!1686663)))))))

(declare-fun b!4508511 () Bool)

(assert (=> b!4508511 (= e!2808640 (noDuplicateKeys!1136 (t!357662 lt!1686663)))))

(assert (= (and d!1386292 (not res!1875016)) b!4508510))

(assert (= (and b!4508510 res!1875017) b!4508511))

(declare-fun m!5246265 () Bool)

(assert (=> b!4508510 m!5246265))

(declare-fun m!5246267 () Bool)

(assert (=> b!4508511 m!5246267))

(assert (=> d!1386206 d!1386292))

(declare-fun bs!845278 () Bool)

(declare-fun b!4508513 () Bool)

(assert (= bs!845278 (and b!4508513 d!1386122)))

(declare-fun lambda!170112 () Int)

(assert (=> bs!845278 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686928) (= lambda!170112 lambda!170065))))

(declare-fun bs!845279 () Bool)

(assert (= bs!845279 (and b!4508513 b!4508218)))

(assert (=> bs!845279 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686926) (= lambda!170112 lambda!170064))))

(declare-fun bs!845280 () Bool)

(assert (= bs!845280 (and b!4508513 d!1386218)))

(assert (=> bs!845280 (not (= lambda!170112 lambda!170086))))

(declare-fun bs!845281 () Bool)

(assert (= bs!845281 (and b!4508513 b!4508216)))

(assert (=> bs!845281 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686668) (= lambda!170112 lambda!170062))))

(declare-fun bs!845282 () Bool)

(assert (= bs!845282 (and b!4508513 d!1386260)))

(assert (=> bs!845282 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686668) (= lambda!170112 lambda!170106))))

(assert (=> bs!845279 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686668) (= lambda!170112 lambda!170063))))

(assert (=> b!4508513 true))

(declare-fun bs!845283 () Bool)

(declare-fun b!4508515 () Bool)

(assert (= bs!845283 (and b!4508515 d!1386122)))

(declare-fun lambda!170113 () Int)

(assert (=> bs!845283 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686928) (= lambda!170113 lambda!170065))))

(declare-fun bs!845284 () Bool)

(assert (= bs!845284 (and b!4508515 b!4508218)))

(assert (=> bs!845284 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686926) (= lambda!170113 lambda!170064))))

(declare-fun bs!845285 () Bool)

(assert (= bs!845285 (and b!4508515 d!1386218)))

(assert (=> bs!845285 (not (= lambda!170113 lambda!170086))))

(declare-fun bs!845286 () Bool)

(assert (= bs!845286 (and b!4508515 b!4508216)))

(assert (=> bs!845286 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686668) (= lambda!170113 lambda!170062))))

(assert (=> bs!845284 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686668) (= lambda!170113 lambda!170063))))

(declare-fun bs!845287 () Bool)

(assert (= bs!845287 (and b!4508515 b!4508513)))

(assert (=> bs!845287 (= lambda!170113 lambda!170112)))

(declare-fun bs!845288 () Bool)

(assert (= bs!845288 (and b!4508515 d!1386260)))

(assert (=> bs!845288 (= (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686668) (= lambda!170113 lambda!170106))))

(assert (=> b!4508515 true))

(declare-fun lambda!170114 () Int)

(declare-fun lt!1687114 () ListMap!3541)

(assert (=> b!4508515 (= (= lt!1687114 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170114 lambda!170113))))

(assert (=> bs!845283 (= (= lt!1687114 lt!1686928) (= lambda!170114 lambda!170065))))

(assert (=> bs!845284 (= (= lt!1687114 lt!1686926) (= lambda!170114 lambda!170064))))

(assert (=> bs!845285 (not (= lambda!170114 lambda!170086))))

(assert (=> bs!845286 (= (= lt!1687114 lt!1686668) (= lambda!170114 lambda!170062))))

(assert (=> bs!845284 (= (= lt!1687114 lt!1686668) (= lambda!170114 lambda!170063))))

(assert (=> bs!845287 (= (= lt!1687114 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170114 lambda!170112))))

(assert (=> bs!845288 (= (= lt!1687114 lt!1686668) (= lambda!170114 lambda!170106))))

(assert (=> b!4508515 true))

(declare-fun bs!845289 () Bool)

(declare-fun d!1386294 () Bool)

(assert (= bs!845289 (and d!1386294 b!4508515)))

(declare-fun lambda!170115 () Int)

(declare-fun lt!1687116 () ListMap!3541)

(assert (=> bs!845289 (= (= lt!1687116 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170115 lambda!170113))))

(assert (=> bs!845289 (= (= lt!1687116 lt!1687114) (= lambda!170115 lambda!170114))))

(declare-fun bs!845290 () Bool)

(assert (= bs!845290 (and d!1386294 d!1386122)))

(assert (=> bs!845290 (= (= lt!1687116 lt!1686928) (= lambda!170115 lambda!170065))))

(declare-fun bs!845291 () Bool)

(assert (= bs!845291 (and d!1386294 b!4508218)))

(assert (=> bs!845291 (= (= lt!1687116 lt!1686926) (= lambda!170115 lambda!170064))))

(declare-fun bs!845292 () Bool)

(assert (= bs!845292 (and d!1386294 d!1386218)))

(assert (=> bs!845292 (not (= lambda!170115 lambda!170086))))

(declare-fun bs!845293 () Bool)

(assert (= bs!845293 (and d!1386294 b!4508216)))

(assert (=> bs!845293 (= (= lt!1687116 lt!1686668) (= lambda!170115 lambda!170062))))

(assert (=> bs!845291 (= (= lt!1687116 lt!1686668) (= lambda!170115 lambda!170063))))

(declare-fun bs!845294 () Bool)

(assert (= bs!845294 (and d!1386294 b!4508513)))

(assert (=> bs!845294 (= (= lt!1687116 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170115 lambda!170112))))

(declare-fun bs!845295 () Bool)

(assert (= bs!845295 (and d!1386294 d!1386260)))

(assert (=> bs!845295 (= (= lt!1687116 lt!1686668) (= lambda!170115 lambda!170106))))

(assert (=> d!1386294 true))

(declare-fun lt!1687104 () ListMap!3541)

(declare-fun c!768983 () Bool)

(declare-fun bm!313923 () Bool)

(declare-fun call!313928 () Bool)

(assert (=> bm!313923 (= call!313928 (forall!10208 (ite c!768983 (toList!4280 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (toList!4280 lt!1687104)) (ite c!768983 lambda!170112 lambda!170114)))))

(declare-fun b!4508512 () Bool)

(declare-fun e!2808641 () Bool)

(assert (=> b!4508512 (= e!2808641 (invariantList!995 (toList!4280 lt!1687116)))))

(declare-fun e!2808642 () ListMap!3541)

(assert (=> b!4508513 (= e!2808642 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))))))

(declare-fun lt!1687107 () Unit!93112)

(declare-fun call!313930 () Unit!93112)

(assert (=> b!4508513 (= lt!1687107 call!313930)))

(declare-fun call!313929 () Bool)

(assert (=> b!4508513 call!313929))

(declare-fun lt!1687105 () Unit!93112)

(assert (=> b!4508513 (= lt!1687105 lt!1687107)))

(assert (=> b!4508513 call!313928))

(declare-fun lt!1687106 () Unit!93112)

(declare-fun Unit!93168 () Unit!93112)

(assert (=> b!4508513 (= lt!1687106 Unit!93168)))

(declare-fun bm!313924 () Bool)

(assert (=> bm!313924 (= call!313929 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (ite c!768983 lambda!170112 lambda!170113)))))

(declare-fun bm!313925 () Bool)

(assert (=> bm!313925 (= call!313930 (lemmaContainsAllItsOwnKeys!315 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))))))

(declare-fun b!4508514 () Bool)

(declare-fun e!2808643 () Bool)

(assert (=> b!4508514 (= e!2808643 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) lambda!170114))))

(assert (=> b!4508515 (= e!2808642 lt!1687114)))

(assert (=> b!4508515 (= lt!1687104 (+!1493 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) (h!56407 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))))))))

(assert (=> b!4508515 (= lt!1687114 (addToMapMapFromBucket!663 (t!357662 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))) (+!1493 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) (h!56407 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))))))))

(declare-fun lt!1687113 () Unit!93112)

(assert (=> b!4508515 (= lt!1687113 call!313930)))

(assert (=> b!4508515 call!313929))

(declare-fun lt!1687103 () Unit!93112)

(assert (=> b!4508515 (= lt!1687103 lt!1687113)))

(assert (=> b!4508515 (forall!10208 (toList!4280 lt!1687104) lambda!170114)))

(declare-fun lt!1687111 () Unit!93112)

(declare-fun Unit!93170 () Unit!93112)

(assert (=> b!4508515 (= lt!1687111 Unit!93170)))

(assert (=> b!4508515 (forall!10208 (t!357662 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))) lambda!170114)))

(declare-fun lt!1687112 () Unit!93112)

(declare-fun Unit!93171 () Unit!93112)

(assert (=> b!4508515 (= lt!1687112 Unit!93171)))

(declare-fun lt!1687110 () Unit!93112)

(declare-fun Unit!93172 () Unit!93112)

(assert (=> b!4508515 (= lt!1687110 Unit!93172)))

(declare-fun lt!1687118 () Unit!93112)

(assert (=> b!4508515 (= lt!1687118 (forallContained!2460 (toList!4280 lt!1687104) lambda!170114 (h!56407 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))))))))

(assert (=> b!4508515 (contains!13267 lt!1687104 (_1!28783 (h!56407 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))))))))

(declare-fun lt!1687109 () Unit!93112)

(declare-fun Unit!93173 () Unit!93112)

(assert (=> b!4508515 (= lt!1687109 Unit!93173)))

(assert (=> b!4508515 (contains!13267 lt!1687114 (_1!28783 (h!56407 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))))))))

(declare-fun lt!1687117 () Unit!93112)

(declare-fun Unit!93174 () Unit!93112)

(assert (=> b!4508515 (= lt!1687117 Unit!93174)))

(assert (=> b!4508515 (forall!10208 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))) lambda!170114)))

(declare-fun lt!1687121 () Unit!93112)

(declare-fun Unit!93175 () Unit!93112)

(assert (=> b!4508515 (= lt!1687121 Unit!93175)))

(assert (=> b!4508515 call!313928))

(declare-fun lt!1687122 () Unit!93112)

(declare-fun Unit!93176 () Unit!93112)

(assert (=> b!4508515 (= lt!1687122 Unit!93176)))

(declare-fun lt!1687119 () Unit!93112)

(declare-fun Unit!93177 () Unit!93112)

(assert (=> b!4508515 (= lt!1687119 Unit!93177)))

(declare-fun lt!1687120 () Unit!93112)

(assert (=> b!4508515 (= lt!1687120 (addForallContainsKeyThenBeforeAdding!315 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1687114 (_1!28783 (h!56407 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))))) (_2!28783 (h!56407 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))))))))

(assert (=> b!4508515 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) lambda!170114)))

(declare-fun lt!1687102 () Unit!93112)

(assert (=> b!4508515 (= lt!1687102 lt!1687120)))

(assert (=> b!4508515 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) lambda!170114)))

(declare-fun lt!1687115 () Unit!93112)

(declare-fun Unit!93178 () Unit!93112)

(assert (=> b!4508515 (= lt!1687115 Unit!93178)))

(declare-fun res!1875019 () Bool)

(assert (=> b!4508515 (= res!1875019 (forall!10208 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))) lambda!170114))))

(assert (=> b!4508515 (=> (not res!1875019) (not e!2808643))))

(assert (=> b!4508515 e!2808643))

(declare-fun lt!1687108 () Unit!93112)

(declare-fun Unit!93179 () Unit!93112)

(assert (=> b!4508515 (= lt!1687108 Unit!93179)))

(assert (=> d!1386294 e!2808641))

(declare-fun res!1875020 () Bool)

(assert (=> d!1386294 (=> (not res!1875020) (not e!2808641))))

(assert (=> d!1386294 (= res!1875020 (forall!10208 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))) lambda!170115))))

(assert (=> d!1386294 (= lt!1687116 e!2808642)))

(assert (=> d!1386294 (= c!768983 ((_ is Nil!50576) (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))))))

(assert (=> d!1386294 (noDuplicateKeys!1136 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))))))

(assert (=> d!1386294 (= (addToMapMapFromBucket!663 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) lt!1687116)))

(declare-fun b!4508516 () Bool)

(declare-fun res!1875018 () Bool)

(assert (=> b!4508516 (=> (not res!1875018) (not e!2808641))))

(assert (=> b!4508516 (= res!1875018 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) lambda!170115))))

(assert (= (and d!1386294 c!768983) b!4508513))

(assert (= (and d!1386294 (not c!768983)) b!4508515))

(assert (= (and b!4508515 res!1875019) b!4508514))

(assert (= (or b!4508513 b!4508515) bm!313923))

(assert (= (or b!4508513 b!4508515) bm!313924))

(assert (= (or b!4508513 b!4508515) bm!313925))

(assert (= (and d!1386294 res!1875020) b!4508516))

(assert (= (and b!4508516 res!1875018) b!4508512))

(assert (=> bm!313925 m!5245929))

(declare-fun m!5246283 () Bool)

(assert (=> bm!313925 m!5246283))

(declare-fun m!5246285 () Bool)

(assert (=> b!4508514 m!5246285))

(assert (=> b!4508515 m!5246285))

(declare-fun m!5246287 () Bool)

(assert (=> b!4508515 m!5246287))

(declare-fun m!5246289 () Bool)

(assert (=> b!4508515 m!5246289))

(assert (=> b!4508515 m!5246285))

(assert (=> b!4508515 m!5245929))

(declare-fun m!5246291 () Bool)

(assert (=> b!4508515 m!5246291))

(assert (=> b!4508515 m!5245929))

(declare-fun m!5246293 () Bool)

(assert (=> b!4508515 m!5246293))

(assert (=> b!4508515 m!5246293))

(declare-fun m!5246295 () Bool)

(assert (=> b!4508515 m!5246295))

(declare-fun m!5246297 () Bool)

(assert (=> b!4508515 m!5246297))

(assert (=> b!4508515 m!5246289))

(declare-fun m!5246299 () Bool)

(assert (=> b!4508515 m!5246299))

(declare-fun m!5246301 () Bool)

(assert (=> b!4508515 m!5246301))

(declare-fun m!5246303 () Bool)

(assert (=> b!4508515 m!5246303))

(declare-fun m!5246305 () Bool)

(assert (=> bm!313923 m!5246305))

(declare-fun m!5246307 () Bool)

(assert (=> b!4508516 m!5246307))

(declare-fun m!5246309 () Bool)

(assert (=> b!4508512 m!5246309))

(declare-fun m!5246311 () Bool)

(assert (=> d!1386294 m!5246311))

(declare-fun m!5246313 () Bool)

(assert (=> d!1386294 m!5246313))

(declare-fun m!5246315 () Bool)

(assert (=> bm!313924 m!5246315))

(assert (=> b!4508315 d!1386294))

(declare-fun bs!845296 () Bool)

(declare-fun d!1386300 () Bool)

(assert (= bs!845296 (and d!1386300 d!1386196)))

(declare-fun lambda!170116 () Int)

(assert (=> bs!845296 (= lambda!170116 lambda!170080)))

(declare-fun bs!845297 () Bool)

(assert (= bs!845297 (and d!1386300 d!1386084)))

(assert (=> bs!845297 (= lambda!170116 lambda!169986)))

(declare-fun bs!845298 () Bool)

(assert (= bs!845298 (and d!1386300 d!1386224)))

(assert (=> bs!845298 (= lambda!170116 lambda!170089)))

(declare-fun bs!845299 () Bool)

(assert (= bs!845299 (and d!1386300 d!1386246)))

(assert (=> bs!845299 (= lambda!170116 lambda!170097)))

(declare-fun bs!845300 () Bool)

(assert (= bs!845300 (and d!1386300 start!445428)))

(assert (=> bs!845300 (= lambda!170116 lambda!169975)))

(declare-fun bs!845301 () Bool)

(assert (= bs!845301 (and d!1386300 d!1386112)))

(assert (=> bs!845301 (= lambda!170116 lambda!169992)))

(declare-fun bs!845302 () Bool)

(assert (= bs!845302 (and d!1386300 d!1386180)))

(assert (=> bs!845302 (= lambda!170116 lambda!170077)))

(declare-fun bs!845303 () Bool)

(assert (= bs!845303 (and d!1386300 d!1386188)))

(assert (=> bs!845303 (= lambda!170116 lambda!170078)))

(declare-fun bs!845304 () Bool)

(assert (= bs!845304 (and d!1386300 d!1386238)))

(assert (=> bs!845304 (= lambda!170116 lambda!170091)))

(declare-fun bs!845305 () Bool)

(assert (= bs!845305 (and d!1386300 d!1386192)))

(assert (=> bs!845305 (= lambda!170116 lambda!170079)))

(declare-fun bs!845306 () Bool)

(assert (= bs!845306 (and d!1386300 d!1386230)))

(assert (=> bs!845306 (= lambda!170116 lambda!170090)))

(declare-fun bs!845307 () Bool)

(assert (= bs!845307 (and d!1386300 d!1386240)))

(assert (=> bs!845307 (not (= lambda!170116 lambda!170094))))

(declare-fun bs!845308 () Bool)

(assert (= bs!845308 (and d!1386300 d!1386200)))

(assert (=> bs!845308 (= lambda!170116 lambda!170083)))

(declare-fun lt!1687127 () ListMap!3541)

(assert (=> d!1386300 (invariantList!995 (toList!4280 lt!1687127))))

(declare-fun e!2808650 () ListMap!3541)

(assert (=> d!1386300 (= lt!1687127 e!2808650)))

(declare-fun c!768989 () Bool)

(assert (=> d!1386300 (= c!768989 ((_ is Cons!50577) (t!357663 (t!357663 (toList!4279 lm!1477)))))))

(assert (=> d!1386300 (forall!10207 (t!357663 (t!357663 (toList!4279 lm!1477))) lambda!170116)))

(assert (=> d!1386300 (= (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1687127)))

(declare-fun b!4508528 () Bool)

(assert (=> b!4508528 (= e!2808650 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (t!357663 (t!357663 (toList!4279 lm!1477))))) (extractMap!1192 (t!357663 (t!357663 (t!357663 (toList!4279 lm!1477)))))))))

(declare-fun b!4508529 () Bool)

(assert (=> b!4508529 (= e!2808650 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386300 c!768989) b!4508528))

(assert (= (and d!1386300 (not c!768989)) b!4508529))

(declare-fun m!5246319 () Bool)

(assert (=> d!1386300 m!5246319))

(declare-fun m!5246321 () Bool)

(assert (=> d!1386300 m!5246321))

(declare-fun m!5246323 () Bool)

(assert (=> b!4508528 m!5246323))

(assert (=> b!4508528 m!5246323))

(declare-fun m!5246325 () Bool)

(assert (=> b!4508528 m!5246325))

(assert (=> b!4508315 d!1386300))

(declare-fun d!1386304 () Bool)

(declare-fun res!1875023 () Bool)

(declare-fun e!2808653 () Bool)

(assert (=> d!1386304 (=> res!1875023 e!2808653)))

(declare-fun e!2808654 () Bool)

(assert (=> d!1386304 (= res!1875023 e!2808654)))

(declare-fun res!1875024 () Bool)

(assert (=> d!1386304 (=> (not res!1875024) (not e!2808654))))

(assert (=> d!1386304 (= res!1875024 ((_ is Cons!50577) (t!357663 (t!357663 (toList!4279 lm!1477)))))))

(assert (=> d!1386304 (= (containsKeyBiggerList!116 (t!357663 (t!357663 (toList!4279 lm!1477))) key!3287) e!2808653)))

(declare-fun b!4508534 () Bool)

(assert (=> b!4508534 (= e!2808654 (containsKey!1712 (_2!28784 (h!56408 (t!357663 (t!357663 (toList!4279 lm!1477))))) key!3287))))

(declare-fun b!4508535 () Bool)

(declare-fun e!2808655 () Bool)

(assert (=> b!4508535 (= e!2808653 e!2808655)))

(declare-fun res!1875022 () Bool)

(assert (=> b!4508535 (=> (not res!1875022) (not e!2808655))))

(assert (=> b!4508535 (= res!1875022 ((_ is Cons!50577) (t!357663 (t!357663 (toList!4279 lm!1477)))))))

(declare-fun b!4508536 () Bool)

(assert (=> b!4508536 (= e!2808655 (containsKeyBiggerList!116 (t!357663 (t!357663 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(assert (= (and d!1386304 res!1875024) b!4508534))

(assert (= (and d!1386304 (not res!1875023)) b!4508535))

(assert (= (and b!4508535 res!1875022) b!4508536))

(declare-fun m!5246327 () Bool)

(assert (=> b!4508534 m!5246327))

(declare-fun m!5246329 () Bool)

(assert (=> b!4508536 m!5246329))

(assert (=> b!4508108 d!1386304))

(declare-fun d!1386306 () Bool)

(declare-fun isEmpty!28630 (Option!11068) Bool)

(assert (=> d!1386306 (= (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1686666) hash!344)) (not (isEmpty!28630 (getValueByKey!1048 (toList!4279 lt!1686666) hash!344))))))

(declare-fun bs!845309 () Bool)

(assert (= bs!845309 d!1386306))

(assert (=> bs!845309 m!5245847))

(declare-fun m!5246331 () Bool)

(assert (=> bs!845309 m!5246331))

(assert (=> b!4508256 d!1386306))

(declare-fun d!1386308 () Bool)

(declare-fun c!768992 () Bool)

(assert (=> d!1386308 (= c!768992 (and ((_ is Cons!50577) (toList!4279 lt!1686666)) (= (_1!28784 (h!56408 (toList!4279 lt!1686666))) hash!344)))))

(declare-fun e!2808656 () Option!11068)

(assert (=> d!1386308 (= (getValueByKey!1048 (toList!4279 lt!1686666) hash!344) e!2808656)))

(declare-fun b!4508539 () Bool)

(declare-fun e!2808657 () Option!11068)

(assert (=> b!4508539 (= e!2808657 (getValueByKey!1048 (t!357663 (toList!4279 lt!1686666)) hash!344))))

(declare-fun b!4508538 () Bool)

(assert (=> b!4508538 (= e!2808656 e!2808657)))

(declare-fun c!768993 () Bool)

(assert (=> b!4508538 (= c!768993 (and ((_ is Cons!50577) (toList!4279 lt!1686666)) (not (= (_1!28784 (h!56408 (toList!4279 lt!1686666))) hash!344))))))

(declare-fun b!4508537 () Bool)

(assert (=> b!4508537 (= e!2808656 (Some!11067 (_2!28784 (h!56408 (toList!4279 lt!1686666)))))))

(declare-fun b!4508540 () Bool)

(assert (=> b!4508540 (= e!2808657 None!11067)))

(assert (= (and d!1386308 c!768992) b!4508537))

(assert (= (and d!1386308 (not c!768992)) b!4508538))

(assert (= (and b!4508538 c!768993) b!4508539))

(assert (= (and b!4508538 (not c!768993)) b!4508540))

(declare-fun m!5246333 () Bool)

(assert (=> b!4508539 m!5246333))

(assert (=> b!4508256 d!1386308))

(declare-fun d!1386310 () Bool)

(declare-fun res!1875025 () Bool)

(declare-fun e!2808658 () Bool)

(assert (=> d!1386310 (=> res!1875025 e!2808658)))

(assert (=> d!1386310 (= res!1875025 ((_ is Nil!50577) (t!357663 (toList!4279 lm!1477))))))

(assert (=> d!1386310 (= (forall!10207 (t!357663 (toList!4279 lm!1477)) lambda!169975) e!2808658)))

(declare-fun b!4508541 () Bool)

(declare-fun e!2808659 () Bool)

(assert (=> b!4508541 (= e!2808658 e!2808659)))

(declare-fun res!1875026 () Bool)

(assert (=> b!4508541 (=> (not res!1875026) (not e!2808659))))

(assert (=> b!4508541 (= res!1875026 (dynLambda!21131 lambda!169975 (h!56408 (t!357663 (toList!4279 lm!1477)))))))

(declare-fun b!4508542 () Bool)

(assert (=> b!4508542 (= e!2808659 (forall!10207 (t!357663 (t!357663 (toList!4279 lm!1477))) lambda!169975))))

(assert (= (and d!1386310 (not res!1875025)) b!4508541))

(assert (= (and b!4508541 res!1875026) b!4508542))

(declare-fun b_lambda!153525 () Bool)

(assert (=> (not b_lambda!153525) (not b!4508541)))

(declare-fun m!5246335 () Bool)

(assert (=> b!4508541 m!5246335))

(declare-fun m!5246337 () Bool)

(assert (=> b!4508542 m!5246337))

(assert (=> b!4508367 d!1386310))

(declare-fun d!1386312 () Bool)

(assert (=> d!1386312 (= (invariantList!995 (toList!4280 lt!1687043)) (noDuplicatedKeys!252 (toList!4280 lt!1687043)))))

(declare-fun bs!845310 () Bool)

(assert (= bs!845310 d!1386312))

(declare-fun m!5246339 () Bool)

(assert (=> bs!845310 m!5246339))

(assert (=> d!1386238 d!1386312))

(declare-fun d!1386314 () Bool)

(declare-fun res!1875027 () Bool)

(declare-fun e!2808660 () Bool)

(assert (=> d!1386314 (=> res!1875027 e!2808660)))

(assert (=> d!1386314 (= res!1875027 ((_ is Nil!50577) (toList!4279 (+!1492 lt!1686666 lt!1686680))))))

(assert (=> d!1386314 (= (forall!10207 (toList!4279 (+!1492 lt!1686666 lt!1686680)) lambda!170091) e!2808660)))

(declare-fun b!4508543 () Bool)

(declare-fun e!2808661 () Bool)

(assert (=> b!4508543 (= e!2808660 e!2808661)))

(declare-fun res!1875028 () Bool)

(assert (=> b!4508543 (=> (not res!1875028) (not e!2808661))))

(assert (=> b!4508543 (= res!1875028 (dynLambda!21131 lambda!170091 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))))

(declare-fun b!4508544 () Bool)

(assert (=> b!4508544 (= e!2808661 (forall!10207 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))) lambda!170091))))

(assert (= (and d!1386314 (not res!1875027)) b!4508543))

(assert (= (and b!4508543 res!1875028) b!4508544))

(declare-fun b_lambda!153527 () Bool)

(assert (=> (not b_lambda!153527) (not b!4508543)))

(declare-fun m!5246341 () Bool)

(assert (=> b!4508543 m!5246341))

(declare-fun m!5246343 () Bool)

(assert (=> b!4508544 m!5246343))

(assert (=> d!1386238 d!1386314))

(declare-fun bs!845311 () Bool)

(declare-fun b!4508546 () Bool)

(assert (= bs!845311 (and b!4508546 b!4508423)))

(declare-fun lambda!170117 () Int)

(assert (=> bs!845311 (= (= (toList!4280 lt!1686670) (toList!4280 lt!1686664)) (= lambda!170117 lambda!170102))))

(assert (=> b!4508546 true))

(declare-fun bs!845312 () Bool)

(declare-fun b!4508547 () Bool)

(assert (= bs!845312 (and b!4508547 b!4508424)))

(declare-fun lambda!170118 () Int)

(assert (=> bs!845312 (= lambda!170118 lambda!170103)))

(declare-fun d!1386316 () Bool)

(declare-fun e!2808662 () Bool)

(assert (=> d!1386316 e!2808662))

(declare-fun res!1875031 () Bool)

(assert (=> d!1386316 (=> (not res!1875031) (not e!2808662))))

(declare-fun lt!1687128 () List!50703)

(assert (=> d!1386316 (= res!1875031 (noDuplicate!737 lt!1687128))))

(assert (=> d!1386316 (= lt!1687128 (getKeysList!443 (toList!4280 lt!1686670)))))

(assert (=> d!1386316 (= (keys!17548 lt!1686670) lt!1687128)))

(declare-fun b!4508545 () Bool)

(declare-fun res!1875029 () Bool)

(assert (=> b!4508545 (=> (not res!1875029) (not e!2808662))))

(assert (=> b!4508545 (= res!1875029 (= (length!330 lt!1687128) (length!331 (toList!4280 lt!1686670))))))

(declare-fun res!1875030 () Bool)

(assert (=> b!4508546 (=> (not res!1875030) (not e!2808662))))

(assert (=> b!4508546 (= res!1875030 (forall!10210 lt!1687128 lambda!170117))))

(assert (=> b!4508547 (= e!2808662 (= (content!8293 lt!1687128) (content!8293 (map!11116 (toList!4280 lt!1686670) lambda!170118))))))

(assert (= (and d!1386316 res!1875031) b!4508545))

(assert (= (and b!4508545 res!1875029) b!4508546))

(assert (= (and b!4508546 res!1875030) b!4508547))

(declare-fun m!5246345 () Bool)

(assert (=> d!1386316 m!5246345))

(assert (=> d!1386316 m!5245943))

(declare-fun m!5246347 () Bool)

(assert (=> b!4508545 m!5246347))

(declare-fun m!5246349 () Bool)

(assert (=> b!4508545 m!5246349))

(declare-fun m!5246351 () Bool)

(assert (=> b!4508546 m!5246351))

(declare-fun m!5246353 () Bool)

(assert (=> b!4508547 m!5246353))

(declare-fun m!5246355 () Bool)

(assert (=> b!4508547 m!5246355))

(assert (=> b!4508547 m!5246355))

(declare-fun m!5246357 () Bool)

(assert (=> b!4508547 m!5246357))

(assert (=> b!4508322 d!1386316))

(declare-fun d!1386318 () Bool)

(assert (=> d!1386318 (isDefined!8354 (getValueByKey!1048 (toList!4279 lm!1477) lt!1686681))))

(declare-fun lt!1687134 () Unit!93112)

(declare-fun choose!29267 (List!50701 (_ BitVec 64)) Unit!93112)

(assert (=> d!1386318 (= lt!1687134 (choose!29267 (toList!4279 lm!1477) lt!1686681))))

(declare-fun e!2808668 () Bool)

(assert (=> d!1386318 e!2808668))

(declare-fun res!1875040 () Bool)

(assert (=> d!1386318 (=> (not res!1875040) (not e!2808668))))

(assert (=> d!1386318 (= res!1875040 (isStrictlySorted!409 (toList!4279 lm!1477)))))

(assert (=> d!1386318 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!951 (toList!4279 lm!1477) lt!1686681) lt!1687134)))

(declare-fun b!4508556 () Bool)

(assert (=> b!4508556 (= e!2808668 (containsKey!1714 (toList!4279 lm!1477) lt!1686681))))

(assert (= (and d!1386318 res!1875040) b!4508556))

(assert (=> d!1386318 m!5246003))

(assert (=> d!1386318 m!5246003))

(assert (=> d!1386318 m!5246005))

(declare-fun m!5246359 () Bool)

(assert (=> d!1386318 m!5246359))

(assert (=> d!1386318 m!5246017))

(assert (=> b!4508556 m!5245999))

(assert (=> b!4508342 d!1386318))

(declare-fun d!1386320 () Bool)

(assert (=> d!1386320 (= (isDefined!8354 (getValueByKey!1048 (toList!4279 lm!1477) lt!1686681)) (not (isEmpty!28630 (getValueByKey!1048 (toList!4279 lm!1477) lt!1686681))))))

(declare-fun bs!845313 () Bool)

(assert (= bs!845313 d!1386320))

(assert (=> bs!845313 m!5246003))

(declare-fun m!5246361 () Bool)

(assert (=> bs!845313 m!5246361))

(assert (=> b!4508342 d!1386320))

(declare-fun d!1386322 () Bool)

(declare-fun c!768994 () Bool)

(assert (=> d!1386322 (= c!768994 (and ((_ is Cons!50577) (toList!4279 lm!1477)) (= (_1!28784 (h!56408 (toList!4279 lm!1477))) lt!1686681)))))

(declare-fun e!2808669 () Option!11068)

(assert (=> d!1386322 (= (getValueByKey!1048 (toList!4279 lm!1477) lt!1686681) e!2808669)))

(declare-fun b!4508559 () Bool)

(declare-fun e!2808670 () Option!11068)

(assert (=> b!4508559 (= e!2808670 (getValueByKey!1048 (t!357663 (toList!4279 lm!1477)) lt!1686681))))

(declare-fun b!4508558 () Bool)

(assert (=> b!4508558 (= e!2808669 e!2808670)))

(declare-fun c!768995 () Bool)

(assert (=> b!4508558 (= c!768995 (and ((_ is Cons!50577) (toList!4279 lm!1477)) (not (= (_1!28784 (h!56408 (toList!4279 lm!1477))) lt!1686681))))))

(declare-fun b!4508557 () Bool)

(assert (=> b!4508557 (= e!2808669 (Some!11067 (_2!28784 (h!56408 (toList!4279 lm!1477)))))))

(declare-fun b!4508560 () Bool)

(assert (=> b!4508560 (= e!2808670 None!11067)))

(assert (= (and d!1386322 c!768994) b!4508557))

(assert (= (and d!1386322 (not c!768994)) b!4508558))

(assert (= (and b!4508558 c!768995) b!4508559))

(assert (= (and b!4508558 (not c!768995)) b!4508560))

(declare-fun m!5246371 () Bool)

(assert (=> b!4508559 m!5246371))

(assert (=> b!4508342 d!1386322))

(declare-fun d!1386326 () Bool)

(declare-fun res!1875041 () Bool)

(declare-fun e!2808671 () Bool)

(assert (=> d!1386326 (=> res!1875041 e!2808671)))

(assert (=> d!1386326 (= res!1875041 (and ((_ is Cons!50576) (t!357662 lt!1686663)) (= (_1!28783 (h!56407 (t!357662 lt!1686663))) key!3287)))))

(assert (=> d!1386326 (= (containsKey!1712 (t!357662 lt!1686663) key!3287) e!2808671)))

(declare-fun b!4508561 () Bool)

(declare-fun e!2808672 () Bool)

(assert (=> b!4508561 (= e!2808671 e!2808672)))

(declare-fun res!1875042 () Bool)

(assert (=> b!4508561 (=> (not res!1875042) (not e!2808672))))

(assert (=> b!4508561 (= res!1875042 ((_ is Cons!50576) (t!357662 lt!1686663)))))

(declare-fun b!4508562 () Bool)

(assert (=> b!4508562 (= e!2808672 (containsKey!1712 (t!357662 (t!357662 lt!1686663)) key!3287))))

(assert (= (and d!1386326 (not res!1875041)) b!4508561))

(assert (= (and b!4508561 res!1875042) b!4508562))

(declare-fun m!5246373 () Bool)

(assert (=> b!4508562 m!5246373))

(assert (=> b!4508390 d!1386326))

(declare-fun d!1386328 () Bool)

(declare-fun res!1875043 () Bool)

(declare-fun e!2808673 () Bool)

(assert (=> d!1386328 (=> res!1875043 e!2808673)))

(assert (=> d!1386328 (= res!1875043 ((_ is Nil!50577) (toList!4279 lm!1477)))))

(assert (=> d!1386328 (= (forall!10207 (toList!4279 lm!1477) lambda!170094) e!2808673)))

(declare-fun b!4508563 () Bool)

(declare-fun e!2808674 () Bool)

(assert (=> b!4508563 (= e!2808673 e!2808674)))

(declare-fun res!1875044 () Bool)

(assert (=> b!4508563 (=> (not res!1875044) (not e!2808674))))

(assert (=> b!4508563 (= res!1875044 (dynLambda!21131 lambda!170094 (h!56408 (toList!4279 lm!1477))))))

(declare-fun b!4508564 () Bool)

(assert (=> b!4508564 (= e!2808674 (forall!10207 (t!357663 (toList!4279 lm!1477)) lambda!170094))))

(assert (= (and d!1386328 (not res!1875043)) b!4508563))

(assert (= (and b!4508563 res!1875044) b!4508564))

(declare-fun b_lambda!153529 () Bool)

(assert (=> (not b_lambda!153529) (not b!4508563)))

(declare-fun m!5246375 () Bool)

(assert (=> b!4508563 m!5246375))

(declare-fun m!5246377 () Bool)

(assert (=> b!4508564 m!5246377))

(assert (=> d!1386240 d!1386328))

(declare-fun d!1386330 () Bool)

(declare-fun isEmpty!28631 (Option!11069) Bool)

(assert (=> d!1386330 (= (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686664) key!3287)) (not (isEmpty!28631 (getValueByKey!1049 (toList!4280 lt!1686664) key!3287))))))

(declare-fun bs!845314 () Bool)

(assert (= bs!845314 d!1386330))

(assert (=> bs!845314 m!5245963))

(declare-fun m!5246379 () Bool)

(assert (=> bs!845314 m!5246379))

(assert (=> b!4508328 d!1386330))

(declare-fun b!4508576 () Bool)

(declare-fun e!2808680 () Option!11069)

(assert (=> b!4508576 (= e!2808680 None!11068)))

(declare-fun b!4508574 () Bool)

(declare-fun e!2808679 () Option!11069)

(assert (=> b!4508574 (= e!2808679 e!2808680)))

(declare-fun c!769001 () Bool)

(assert (=> b!4508574 (= c!769001 (and ((_ is Cons!50576) (toList!4280 lt!1686664)) (not (= (_1!28783 (h!56407 (toList!4280 lt!1686664))) key!3287))))))

(declare-fun d!1386332 () Bool)

(declare-fun c!769000 () Bool)

(assert (=> d!1386332 (= c!769000 (and ((_ is Cons!50576) (toList!4280 lt!1686664)) (= (_1!28783 (h!56407 (toList!4280 lt!1686664))) key!3287)))))

(assert (=> d!1386332 (= (getValueByKey!1049 (toList!4280 lt!1686664) key!3287) e!2808679)))

(declare-fun b!4508573 () Bool)

(assert (=> b!4508573 (= e!2808679 (Some!11068 (_2!28783 (h!56407 (toList!4280 lt!1686664)))))))

(declare-fun b!4508575 () Bool)

(assert (=> b!4508575 (= e!2808680 (getValueByKey!1049 (t!357662 (toList!4280 lt!1686664)) key!3287))))

(assert (= (and d!1386332 c!769000) b!4508573))

(assert (= (and d!1386332 (not c!769000)) b!4508574))

(assert (= (and b!4508574 c!769001) b!4508575))

(assert (= (and b!4508574 (not c!769001)) b!4508576))

(declare-fun m!5246381 () Bool)

(assert (=> b!4508575 m!5246381))

(assert (=> b!4508328 d!1386332))

(declare-fun d!1386334 () Bool)

(assert (=> d!1386334 (= (invariantList!995 (toList!4280 lt!1687038)) (noDuplicatedKeys!252 (toList!4280 lt!1687038)))))

(declare-fun bs!845315 () Bool)

(assert (= bs!845315 d!1386334))

(declare-fun m!5246383 () Bool)

(assert (=> bs!845315 m!5246383))

(assert (=> d!1386230 d!1386334))

(declare-fun d!1386336 () Bool)

(declare-fun res!1875045 () Bool)

(declare-fun e!2808681 () Bool)

(assert (=> d!1386336 (=> res!1875045 e!2808681)))

(assert (=> d!1386336 (= res!1875045 ((_ is Nil!50577) (toList!4279 lt!1686667)))))

(assert (=> d!1386336 (= (forall!10207 (toList!4279 lt!1686667) lambda!170090) e!2808681)))

(declare-fun b!4508577 () Bool)

(declare-fun e!2808682 () Bool)

(assert (=> b!4508577 (= e!2808681 e!2808682)))

(declare-fun res!1875046 () Bool)

(assert (=> b!4508577 (=> (not res!1875046) (not e!2808682))))

(assert (=> b!4508577 (= res!1875046 (dynLambda!21131 lambda!170090 (h!56408 (toList!4279 lt!1686667))))))

(declare-fun b!4508578 () Bool)

(assert (=> b!4508578 (= e!2808682 (forall!10207 (t!357663 (toList!4279 lt!1686667)) lambda!170090))))

(assert (= (and d!1386336 (not res!1875045)) b!4508577))

(assert (= (and b!4508577 res!1875046) b!4508578))

(declare-fun b_lambda!153531 () Bool)

(assert (=> (not b_lambda!153531) (not b!4508577)))

(declare-fun m!5246385 () Bool)

(assert (=> b!4508577 m!5246385))

(declare-fun m!5246387 () Bool)

(assert (=> b!4508578 m!5246387))

(assert (=> d!1386230 d!1386336))

(declare-fun b!4508579 () Bool)

(declare-fun e!2808687 () Bool)

(declare-fun e!2808683 () Bool)

(assert (=> b!4508579 (= e!2808687 e!2808683)))

(declare-fun res!1875048 () Bool)

(assert (=> b!4508579 (=> (not res!1875048) (not e!2808683))))

(assert (=> b!4508579 (= res!1875048 (isDefined!8355 (getValueByKey!1049 (toList!4280 (extractMap!1192 (toList!4279 lt!1686666))) key!3287)))))

(declare-fun b!4508580 () Bool)

(assert (=> b!4508580 false))

(declare-fun lt!1687135 () Unit!93112)

(declare-fun lt!1687138 () Unit!93112)

(assert (=> b!4508580 (= lt!1687135 lt!1687138)))

(assert (=> b!4508580 (containsKey!1715 (toList!4280 (extractMap!1192 (toList!4279 lt!1686666))) key!3287)))

(assert (=> b!4508580 (= lt!1687138 (lemmaInGetKeysListThenContainsKey!442 (toList!4280 (extractMap!1192 (toList!4279 lt!1686666))) key!3287))))

(declare-fun e!2808684 () Unit!93112)

(declare-fun Unit!93182 () Unit!93112)

(assert (=> b!4508580 (= e!2808684 Unit!93182)))

(declare-fun b!4508581 () Bool)

(declare-fun e!2808686 () Unit!93112)

(assert (=> b!4508581 (= e!2808686 e!2808684)))

(declare-fun c!769003 () Bool)

(declare-fun call!313931 () Bool)

(assert (=> b!4508581 (= c!769003 call!313931)))

(declare-fun bm!313926 () Bool)

(declare-fun e!2808688 () List!50703)

(assert (=> bm!313926 (= call!313931 (contains!13271 e!2808688 key!3287))))

(declare-fun c!769002 () Bool)

(declare-fun c!769004 () Bool)

(assert (=> bm!313926 (= c!769002 c!769004)))

(declare-fun b!4508582 () Bool)

(assert (=> b!4508582 (= e!2808683 (contains!13271 (keys!17548 (extractMap!1192 (toList!4279 lt!1686666))) key!3287))))

(declare-fun b!4508583 () Bool)

(declare-fun Unit!93183 () Unit!93112)

(assert (=> b!4508583 (= e!2808684 Unit!93183)))

(declare-fun b!4508584 () Bool)

(assert (=> b!4508584 (= e!2808688 (keys!17548 (extractMap!1192 (toList!4279 lt!1686666))))))

(declare-fun b!4508585 () Bool)

(declare-fun lt!1687142 () Unit!93112)

(assert (=> b!4508585 (= e!2808686 lt!1687142)))

(declare-fun lt!1687136 () Unit!93112)

(assert (=> b!4508585 (= lt!1687136 (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 (extractMap!1192 (toList!4279 lt!1686666))) key!3287))))

(assert (=> b!4508585 (isDefined!8355 (getValueByKey!1049 (toList!4280 (extractMap!1192 (toList!4279 lt!1686666))) key!3287))))

(declare-fun lt!1687141 () Unit!93112)

(assert (=> b!4508585 (= lt!1687141 lt!1687136)))

(assert (=> b!4508585 (= lt!1687142 (lemmaInListThenGetKeysListContains!439 (toList!4280 (extractMap!1192 (toList!4279 lt!1686666))) key!3287))))

(assert (=> b!4508585 call!313931))

(declare-fun d!1386338 () Bool)

(assert (=> d!1386338 e!2808687))

(declare-fun res!1875049 () Bool)

(assert (=> d!1386338 (=> res!1875049 e!2808687)))

(declare-fun e!2808685 () Bool)

(assert (=> d!1386338 (= res!1875049 e!2808685)))

(declare-fun res!1875047 () Bool)

(assert (=> d!1386338 (=> (not res!1875047) (not e!2808685))))

(declare-fun lt!1687139 () Bool)

(assert (=> d!1386338 (= res!1875047 (not lt!1687139))))

(declare-fun lt!1687137 () Bool)

(assert (=> d!1386338 (= lt!1687139 lt!1687137)))

(declare-fun lt!1687140 () Unit!93112)

(assert (=> d!1386338 (= lt!1687140 e!2808686)))

(assert (=> d!1386338 (= c!769004 lt!1687137)))

(assert (=> d!1386338 (= lt!1687137 (containsKey!1715 (toList!4280 (extractMap!1192 (toList!4279 lt!1686666))) key!3287))))

(assert (=> d!1386338 (= (contains!13267 (extractMap!1192 (toList!4279 lt!1686666)) key!3287) lt!1687139)))

(declare-fun b!4508586 () Bool)

(assert (=> b!4508586 (= e!2808685 (not (contains!13271 (keys!17548 (extractMap!1192 (toList!4279 lt!1686666))) key!3287)))))

(declare-fun b!4508587 () Bool)

(assert (=> b!4508587 (= e!2808688 (getKeysList!443 (toList!4280 (extractMap!1192 (toList!4279 lt!1686666)))))))

(assert (= (and d!1386338 c!769004) b!4508585))

(assert (= (and d!1386338 (not c!769004)) b!4508581))

(assert (= (and b!4508581 c!769003) b!4508580))

(assert (= (and b!4508581 (not c!769003)) b!4508583))

(assert (= (or b!4508585 b!4508581) bm!313926))

(assert (= (and bm!313926 c!769002) b!4508587))

(assert (= (and bm!313926 (not c!769002)) b!4508584))

(assert (= (and d!1386338 res!1875047) b!4508586))

(assert (= (and d!1386338 (not res!1875049)) b!4508579))

(assert (= (and b!4508579 res!1875048) b!4508582))

(declare-fun m!5246389 () Bool)

(assert (=> b!4508585 m!5246389))

(declare-fun m!5246391 () Bool)

(assert (=> b!4508585 m!5246391))

(assert (=> b!4508585 m!5246391))

(declare-fun m!5246393 () Bool)

(assert (=> b!4508585 m!5246393))

(declare-fun m!5246395 () Bool)

(assert (=> b!4508585 m!5246395))

(declare-fun m!5246397 () Bool)

(assert (=> bm!313926 m!5246397))

(assert (=> b!4508579 m!5246391))

(assert (=> b!4508579 m!5246391))

(assert (=> b!4508579 m!5246393))

(declare-fun m!5246399 () Bool)

(assert (=> b!4508587 m!5246399))

(declare-fun m!5246401 () Bool)

(assert (=> d!1386338 m!5246401))

(assert (=> b!4508584 m!5245427))

(declare-fun m!5246403 () Bool)

(assert (=> b!4508584 m!5246403))

(assert (=> b!4508580 m!5246401))

(declare-fun m!5246405 () Bool)

(assert (=> b!4508580 m!5246405))

(assert (=> b!4508586 m!5245427))

(assert (=> b!4508586 m!5246403))

(assert (=> b!4508586 m!5246403))

(declare-fun m!5246407 () Bool)

(assert (=> b!4508586 m!5246407))

(assert (=> b!4508582 m!5245427))

(assert (=> b!4508582 m!5246403))

(assert (=> b!4508582 m!5246403))

(assert (=> b!4508582 m!5246407))

(assert (=> d!1386180 d!1386338))

(assert (=> d!1386180 d!1386192))

(declare-fun d!1386340 () Bool)

(assert (=> d!1386340 (contains!13267 (extractMap!1192 (toList!4279 lt!1686666)) key!3287)))

(assert (=> d!1386340 true))

(declare-fun _$34!652 () Unit!93112)

(assert (=> d!1386340 (= (choose!29253 lt!1686666 key!3287 hashF!1107) _$34!652)))

(declare-fun bs!845316 () Bool)

(assert (= bs!845316 d!1386340))

(assert (=> bs!845316 m!5245427))

(assert (=> bs!845316 m!5245427))

(assert (=> bs!845316 m!5245895))

(assert (=> d!1386180 d!1386340))

(declare-fun d!1386342 () Bool)

(declare-fun res!1875054 () Bool)

(declare-fun e!2808699 () Bool)

(assert (=> d!1386342 (=> res!1875054 e!2808699)))

(assert (=> d!1386342 (= res!1875054 ((_ is Nil!50577) (toList!4279 lt!1686666)))))

(assert (=> d!1386342 (= (forall!10207 (toList!4279 lt!1686666) lambda!170077) e!2808699)))

(declare-fun b!4508608 () Bool)

(declare-fun e!2808700 () Bool)

(assert (=> b!4508608 (= e!2808699 e!2808700)))

(declare-fun res!1875055 () Bool)

(assert (=> b!4508608 (=> (not res!1875055) (not e!2808700))))

(assert (=> b!4508608 (= res!1875055 (dynLambda!21131 lambda!170077 (h!56408 (toList!4279 lt!1686666))))))

(declare-fun b!4508609 () Bool)

(assert (=> b!4508609 (= e!2808700 (forall!10207 (t!357663 (toList!4279 lt!1686666)) lambda!170077))))

(assert (= (and d!1386342 (not res!1875054)) b!4508608))

(assert (= (and b!4508608 res!1875055) b!4508609))

(declare-fun b_lambda!153533 () Bool)

(assert (=> (not b_lambda!153533) (not b!4508608)))

(declare-fun m!5246409 () Bool)

(assert (=> b!4508608 m!5246409))

(declare-fun m!5246411 () Bool)

(assert (=> b!4508609 m!5246411))

(assert (=> d!1386180 d!1386342))

(declare-fun d!1386344 () Bool)

(declare-fun lt!1687145 () Bool)

(assert (=> d!1386344 (= lt!1687145 (select (content!8291 (toList!4279 lt!1687034)) lt!1686680))))

(declare-fun e!2808702 () Bool)

(assert (=> d!1386344 (= lt!1687145 e!2808702)))

(declare-fun res!1875056 () Bool)

(assert (=> d!1386344 (=> (not res!1875056) (not e!2808702))))

(assert (=> d!1386344 (= res!1875056 ((_ is Cons!50577) (toList!4279 lt!1687034)))))

(assert (=> d!1386344 (= (contains!13268 (toList!4279 lt!1687034) lt!1686680) lt!1687145)))

(declare-fun b!4508610 () Bool)

(declare-fun e!2808701 () Bool)

(assert (=> b!4508610 (= e!2808702 e!2808701)))

(declare-fun res!1875057 () Bool)

(assert (=> b!4508610 (=> res!1875057 e!2808701)))

(assert (=> b!4508610 (= res!1875057 (= (h!56408 (toList!4279 lt!1687034)) lt!1686680))))

(declare-fun b!4508611 () Bool)

(assert (=> b!4508611 (= e!2808701 (contains!13268 (t!357663 (toList!4279 lt!1687034)) lt!1686680))))

(assert (= (and d!1386344 res!1875056) b!4508610))

(assert (= (and b!4508610 (not res!1875057)) b!4508611))

(declare-fun m!5246413 () Bool)

(assert (=> d!1386344 m!5246413))

(declare-fun m!5246415 () Bool)

(assert (=> d!1386344 m!5246415))

(declare-fun m!5246417 () Bool)

(assert (=> b!4508611 m!5246417))

(assert (=> b!4508376 d!1386344))

(declare-fun b!4508612 () Bool)

(declare-fun e!2808707 () Bool)

(declare-fun e!2808703 () Bool)

(assert (=> b!4508612 (= e!2808707 e!2808703)))

(declare-fun res!1875059 () Bool)

(assert (=> b!4508612 (=> (not res!1875059) (not e!2808703))))

(assert (=> b!4508612 (= res!1875059 (isDefined!8355 (getValueByKey!1049 (toList!4280 (extractMap!1192 (toList!4279 lm!1477))) key!3287)))))

(declare-fun b!4508613 () Bool)

(assert (=> b!4508613 false))

(declare-fun lt!1687146 () Unit!93112)

(declare-fun lt!1687149 () Unit!93112)

(assert (=> b!4508613 (= lt!1687146 lt!1687149)))

(assert (=> b!4508613 (containsKey!1715 (toList!4280 (extractMap!1192 (toList!4279 lm!1477))) key!3287)))

(assert (=> b!4508613 (= lt!1687149 (lemmaInGetKeysListThenContainsKey!442 (toList!4280 (extractMap!1192 (toList!4279 lm!1477))) key!3287))))

(declare-fun e!2808704 () Unit!93112)

(declare-fun Unit!93184 () Unit!93112)

(assert (=> b!4508613 (= e!2808704 Unit!93184)))

(declare-fun b!4508614 () Bool)

(declare-fun e!2808706 () Unit!93112)

(assert (=> b!4508614 (= e!2808706 e!2808704)))

(declare-fun c!769014 () Bool)

(declare-fun call!313938 () Bool)

(assert (=> b!4508614 (= c!769014 call!313938)))

(declare-fun bm!313933 () Bool)

(declare-fun e!2808708 () List!50703)

(assert (=> bm!313933 (= call!313938 (contains!13271 e!2808708 key!3287))))

(declare-fun c!769013 () Bool)

(declare-fun c!769015 () Bool)

(assert (=> bm!313933 (= c!769013 c!769015)))

(declare-fun b!4508615 () Bool)

(assert (=> b!4508615 (= e!2808703 (contains!13271 (keys!17548 (extractMap!1192 (toList!4279 lm!1477))) key!3287))))

(declare-fun b!4508616 () Bool)

(declare-fun Unit!93185 () Unit!93112)

(assert (=> b!4508616 (= e!2808704 Unit!93185)))

(declare-fun b!4508617 () Bool)

(assert (=> b!4508617 (= e!2808708 (keys!17548 (extractMap!1192 (toList!4279 lm!1477))))))

(declare-fun b!4508618 () Bool)

(declare-fun lt!1687153 () Unit!93112)

(assert (=> b!4508618 (= e!2808706 lt!1687153)))

(declare-fun lt!1687147 () Unit!93112)

(assert (=> b!4508618 (= lt!1687147 (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 (extractMap!1192 (toList!4279 lm!1477))) key!3287))))

(assert (=> b!4508618 (isDefined!8355 (getValueByKey!1049 (toList!4280 (extractMap!1192 (toList!4279 lm!1477))) key!3287))))

(declare-fun lt!1687152 () Unit!93112)

(assert (=> b!4508618 (= lt!1687152 lt!1687147)))

(assert (=> b!4508618 (= lt!1687153 (lemmaInListThenGetKeysListContains!439 (toList!4280 (extractMap!1192 (toList!4279 lm!1477))) key!3287))))

(assert (=> b!4508618 call!313938))

(declare-fun d!1386346 () Bool)

(assert (=> d!1386346 e!2808707))

(declare-fun res!1875060 () Bool)

(assert (=> d!1386346 (=> res!1875060 e!2808707)))

(declare-fun e!2808705 () Bool)

(assert (=> d!1386346 (= res!1875060 e!2808705)))

(declare-fun res!1875058 () Bool)

(assert (=> d!1386346 (=> (not res!1875058) (not e!2808705))))

(declare-fun lt!1687150 () Bool)

(assert (=> d!1386346 (= res!1875058 (not lt!1687150))))

(declare-fun lt!1687148 () Bool)

(assert (=> d!1386346 (= lt!1687150 lt!1687148)))

(declare-fun lt!1687151 () Unit!93112)

(assert (=> d!1386346 (= lt!1687151 e!2808706)))

(assert (=> d!1386346 (= c!769015 lt!1687148)))

(assert (=> d!1386346 (= lt!1687148 (containsKey!1715 (toList!4280 (extractMap!1192 (toList!4279 lm!1477))) key!3287))))

(assert (=> d!1386346 (= (contains!13267 (extractMap!1192 (toList!4279 lm!1477)) key!3287) lt!1687150)))

(declare-fun b!4508619 () Bool)

(assert (=> b!4508619 (= e!2808705 (not (contains!13271 (keys!17548 (extractMap!1192 (toList!4279 lm!1477))) key!3287)))))

(declare-fun b!4508620 () Bool)

(assert (=> b!4508620 (= e!2808708 (getKeysList!443 (toList!4280 (extractMap!1192 (toList!4279 lm!1477)))))))

(assert (= (and d!1386346 c!769015) b!4508618))

(assert (= (and d!1386346 (not c!769015)) b!4508614))

(assert (= (and b!4508614 c!769014) b!4508613))

(assert (= (and b!4508614 (not c!769014)) b!4508616))

(assert (= (or b!4508618 b!4508614) bm!313933))

(assert (= (and bm!313933 c!769013) b!4508620))

(assert (= (and bm!313933 (not c!769013)) b!4508617))

(assert (= (and d!1386346 res!1875058) b!4508619))

(assert (= (and d!1386346 (not res!1875060)) b!4508612))

(assert (= (and b!4508612 res!1875059) b!4508615))

(declare-fun m!5246419 () Bool)

(assert (=> b!4508618 m!5246419))

(declare-fun m!5246421 () Bool)

(assert (=> b!4508618 m!5246421))

(assert (=> b!4508618 m!5246421))

(declare-fun m!5246423 () Bool)

(assert (=> b!4508618 m!5246423))

(declare-fun m!5246425 () Bool)

(assert (=> b!4508618 m!5246425))

(declare-fun m!5246427 () Bool)

(assert (=> bm!313933 m!5246427))

(assert (=> b!4508612 m!5246421))

(assert (=> b!4508612 m!5246421))

(assert (=> b!4508612 m!5246423))

(declare-fun m!5246429 () Bool)

(assert (=> b!4508620 m!5246429))

(declare-fun m!5246431 () Bool)

(assert (=> d!1386346 m!5246431))

(assert (=> b!4508617 m!5245409))

(declare-fun m!5246433 () Bool)

(assert (=> b!4508617 m!5246433))

(assert (=> b!4508613 m!5246431))

(declare-fun m!5246435 () Bool)

(assert (=> b!4508613 m!5246435))

(assert (=> b!4508619 m!5245409))

(assert (=> b!4508619 m!5246433))

(assert (=> b!4508619 m!5246433))

(declare-fun m!5246437 () Bool)

(assert (=> b!4508619 m!5246437))

(assert (=> b!4508615 m!5245409))

(assert (=> b!4508615 m!5246433))

(assert (=> b!4508615 m!5246433))

(assert (=> b!4508615 m!5246437))

(assert (=> d!1386246 d!1386346))

(assert (=> d!1386246 d!1386196))

(declare-fun d!1386348 () Bool)

(assert (=> d!1386348 (not (contains!13267 (extractMap!1192 (toList!4279 lm!1477)) key!3287))))

(assert (=> d!1386348 true))

(declare-fun _$26!344 () Unit!93112)

(assert (=> d!1386348 (= (choose!29263 lm!1477 key!3287 hashF!1107) _$26!344)))

(declare-fun bs!845317 () Bool)

(assert (= bs!845317 d!1386348))

(assert (=> bs!845317 m!5245409))

(assert (=> bs!845317 m!5245409))

(assert (=> bs!845317 m!5246111))

(assert (=> d!1386246 d!1386348))

(declare-fun d!1386352 () Bool)

(declare-fun res!1875067 () Bool)

(declare-fun e!2808718 () Bool)

(assert (=> d!1386352 (=> res!1875067 e!2808718)))

(assert (=> d!1386352 (= res!1875067 ((_ is Nil!50577) (toList!4279 lm!1477)))))

(assert (=> d!1386352 (= (forall!10207 (toList!4279 lm!1477) lambda!170097) e!2808718)))

(declare-fun b!4508635 () Bool)

(declare-fun e!2808719 () Bool)

(assert (=> b!4508635 (= e!2808718 e!2808719)))

(declare-fun res!1875068 () Bool)

(assert (=> b!4508635 (=> (not res!1875068) (not e!2808719))))

(assert (=> b!4508635 (= res!1875068 (dynLambda!21131 lambda!170097 (h!56408 (toList!4279 lm!1477))))))

(declare-fun b!4508636 () Bool)

(assert (=> b!4508636 (= e!2808719 (forall!10207 (t!357663 (toList!4279 lm!1477)) lambda!170097))))

(assert (= (and d!1386352 (not res!1875067)) b!4508635))

(assert (= (and b!4508635 res!1875068) b!4508636))

(declare-fun b_lambda!153535 () Bool)

(assert (=> (not b_lambda!153535) (not b!4508635)))

(declare-fun m!5246451 () Bool)

(assert (=> b!4508635 m!5246451))

(declare-fun m!5246453 () Bool)

(assert (=> b!4508636 m!5246453))

(assert (=> d!1386246 d!1386352))

(assert (=> b!4508331 d!1386252))

(assert (=> b!4508331 d!1386254))

(declare-fun d!1386356 () Bool)

(declare-fun res!1875080 () Bool)

(declare-fun e!2808736 () Bool)

(assert (=> d!1386356 (=> res!1875080 e!2808736)))

(assert (=> d!1386356 (= res!1875080 ((_ is Nil!50576) (ite c!768916 (toList!4280 lt!1686668) (toList!4280 lt!1686916))))))

(assert (=> d!1386356 (= (forall!10208 (ite c!768916 (toList!4280 lt!1686668) (toList!4280 lt!1686916)) (ite c!768916 lambda!170062 lambda!170064)) e!2808736)))

(declare-fun b!4508662 () Bool)

(declare-fun e!2808737 () Bool)

(assert (=> b!4508662 (= e!2808736 e!2808737)))

(declare-fun res!1875081 () Bool)

(assert (=> b!4508662 (=> (not res!1875081) (not e!2808737))))

(declare-fun dynLambda!21132 (Int tuple2!50978) Bool)

(assert (=> b!4508662 (= res!1875081 (dynLambda!21132 (ite c!768916 lambda!170062 lambda!170064) (h!56407 (ite c!768916 (toList!4280 lt!1686668) (toList!4280 lt!1686916)))))))

(declare-fun b!4508663 () Bool)

(assert (=> b!4508663 (= e!2808737 (forall!10208 (t!357662 (ite c!768916 (toList!4280 lt!1686668) (toList!4280 lt!1686916))) (ite c!768916 lambda!170062 lambda!170064)))))

(assert (= (and d!1386356 (not res!1875080)) b!4508662))

(assert (= (and b!4508662 res!1875081) b!4508663))

(declare-fun b_lambda!153537 () Bool)

(assert (=> (not b_lambda!153537) (not b!4508662)))

(declare-fun m!5246477 () Bool)

(assert (=> b!4508662 m!5246477))

(declare-fun m!5246481 () Bool)

(assert (=> b!4508663 m!5246481))

(assert (=> bm!313899 d!1386356))

(declare-fun bs!845318 () Bool)

(declare-fun b!4508665 () Bool)

(assert (= bs!845318 (and b!4508665 b!4508515)))

(declare-fun lambda!170119 () Int)

(assert (=> bs!845318 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170119 lambda!170113))))

(assert (=> bs!845318 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1687114) (= lambda!170119 lambda!170114))))

(declare-fun bs!845319 () Bool)

(assert (= bs!845319 (and b!4508665 d!1386122)))

(assert (=> bs!845319 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686928) (= lambda!170119 lambda!170065))))

(declare-fun bs!845320 () Bool)

(assert (= bs!845320 (and b!4508665 b!4508218)))

(assert (=> bs!845320 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686926) (= lambda!170119 lambda!170064))))

(declare-fun bs!845321 () Bool)

(assert (= bs!845321 (and b!4508665 d!1386218)))

(assert (=> bs!845321 (not (= lambda!170119 lambda!170086))))

(declare-fun bs!845322 () Bool)

(assert (= bs!845322 (and b!4508665 b!4508216)))

(assert (=> bs!845322 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686668) (= lambda!170119 lambda!170062))))

(declare-fun bs!845323 () Bool)

(assert (= bs!845323 (and b!4508665 d!1386294)))

(assert (=> bs!845323 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1687116) (= lambda!170119 lambda!170115))))

(assert (=> bs!845320 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686668) (= lambda!170119 lambda!170063))))

(declare-fun bs!845324 () Bool)

(assert (= bs!845324 (and b!4508665 b!4508513)))

(assert (=> bs!845324 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170119 lambda!170112))))

(declare-fun bs!845325 () Bool)

(assert (= bs!845325 (and b!4508665 d!1386260)))

(assert (=> bs!845325 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686668) (= lambda!170119 lambda!170106))))

(assert (=> b!4508665 true))

(declare-fun bs!845326 () Bool)

(declare-fun b!4508667 () Bool)

(assert (= bs!845326 (and b!4508667 b!4508515)))

(declare-fun lambda!170120 () Int)

(assert (=> bs!845326 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170120 lambda!170113))))

(assert (=> bs!845326 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1687114) (= lambda!170120 lambda!170114))))

(declare-fun bs!845327 () Bool)

(assert (= bs!845327 (and b!4508667 d!1386122)))

(assert (=> bs!845327 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686928) (= lambda!170120 lambda!170065))))

(declare-fun bs!845328 () Bool)

(assert (= bs!845328 (and b!4508667 b!4508218)))

(assert (=> bs!845328 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686926) (= lambda!170120 lambda!170064))))

(declare-fun bs!845329 () Bool)

(assert (= bs!845329 (and b!4508667 d!1386218)))

(assert (=> bs!845329 (not (= lambda!170120 lambda!170086))))

(declare-fun bs!845330 () Bool)

(assert (= bs!845330 (and b!4508667 d!1386294)))

(assert (=> bs!845330 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1687116) (= lambda!170120 lambda!170115))))

(assert (=> bs!845328 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686668) (= lambda!170120 lambda!170063))))

(declare-fun bs!845331 () Bool)

(assert (= bs!845331 (and b!4508667 b!4508216)))

(assert (=> bs!845331 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686668) (= lambda!170120 lambda!170062))))

(declare-fun bs!845332 () Bool)

(assert (= bs!845332 (and b!4508667 b!4508665)))

(assert (=> bs!845332 (= lambda!170120 lambda!170119)))

(declare-fun bs!845333 () Bool)

(assert (= bs!845333 (and b!4508667 b!4508513)))

(assert (=> bs!845333 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170120 lambda!170112))))

(declare-fun bs!845334 () Bool)

(assert (= bs!845334 (and b!4508667 d!1386260)))

(assert (=> bs!845334 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1686668) (= lambda!170120 lambda!170106))))

(assert (=> b!4508667 true))

(declare-fun lambda!170121 () Int)

(declare-fun lt!1687173 () ListMap!3541)

(assert (=> b!4508667 (= (= lt!1687173 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170121 lambda!170120))))

(assert (=> bs!845326 (= (= lt!1687173 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170121 lambda!170113))))

(assert (=> bs!845326 (= (= lt!1687173 lt!1687114) (= lambda!170121 lambda!170114))))

(assert (=> bs!845327 (= (= lt!1687173 lt!1686928) (= lambda!170121 lambda!170065))))

(assert (=> bs!845328 (= (= lt!1687173 lt!1686926) (= lambda!170121 lambda!170064))))

(assert (=> bs!845329 (not (= lambda!170121 lambda!170086))))

(assert (=> bs!845330 (= (= lt!1687173 lt!1687116) (= lambda!170121 lambda!170115))))

(assert (=> bs!845328 (= (= lt!1687173 lt!1686668) (= lambda!170121 lambda!170063))))

(assert (=> bs!845331 (= (= lt!1687173 lt!1686668) (= lambda!170121 lambda!170062))))

(assert (=> bs!845332 (= (= lt!1687173 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170121 lambda!170119))))

(assert (=> bs!845333 (= (= lt!1687173 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170121 lambda!170112))))

(assert (=> bs!845334 (= (= lt!1687173 lt!1686668) (= lambda!170121 lambda!170106))))

(assert (=> b!4508667 true))

(declare-fun bs!845335 () Bool)

(declare-fun d!1386364 () Bool)

(assert (= bs!845335 (and d!1386364 b!4508667)))

(declare-fun lambda!170124 () Int)

(declare-fun lt!1687175 () ListMap!3541)

(assert (=> bs!845335 (= (= lt!1687175 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170124 lambda!170120))))

(declare-fun bs!845336 () Bool)

(assert (= bs!845336 (and d!1386364 b!4508515)))

(assert (=> bs!845336 (= (= lt!1687175 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170124 lambda!170113))))

(assert (=> bs!845336 (= (= lt!1687175 lt!1687114) (= lambda!170124 lambda!170114))))

(declare-fun bs!845337 () Bool)

(assert (= bs!845337 (and d!1386364 d!1386122)))

(assert (=> bs!845337 (= (= lt!1687175 lt!1686928) (= lambda!170124 lambda!170065))))

(declare-fun bs!845338 () Bool)

(assert (= bs!845338 (and d!1386364 b!4508218)))

(assert (=> bs!845338 (= (= lt!1687175 lt!1686926) (= lambda!170124 lambda!170064))))

(declare-fun bs!845339 () Bool)

(assert (= bs!845339 (and d!1386364 d!1386218)))

(assert (=> bs!845339 (not (= lambda!170124 lambda!170086))))

(assert (=> bs!845335 (= (= lt!1687175 lt!1687173) (= lambda!170124 lambda!170121))))

(declare-fun bs!845340 () Bool)

(assert (= bs!845340 (and d!1386364 d!1386294)))

(assert (=> bs!845340 (= (= lt!1687175 lt!1687116) (= lambda!170124 lambda!170115))))

(assert (=> bs!845338 (= (= lt!1687175 lt!1686668) (= lambda!170124 lambda!170063))))

(declare-fun bs!845341 () Bool)

(assert (= bs!845341 (and d!1386364 b!4508216)))

(assert (=> bs!845341 (= (= lt!1687175 lt!1686668) (= lambda!170124 lambda!170062))))

(declare-fun bs!845342 () Bool)

(assert (= bs!845342 (and d!1386364 b!4508665)))

(assert (=> bs!845342 (= (= lt!1687175 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170124 lambda!170119))))

(declare-fun bs!845343 () Bool)

(assert (= bs!845343 (and d!1386364 b!4508513)))

(assert (=> bs!845343 (= (= lt!1687175 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170124 lambda!170112))))

(declare-fun bs!845344 () Bool)

(assert (= bs!845344 (and d!1386364 d!1386260)))

(assert (=> bs!845344 (= (= lt!1687175 lt!1686668) (= lambda!170124 lambda!170106))))

(assert (=> d!1386364 true))

(declare-fun lt!1687163 () ListMap!3541)

(declare-fun c!769027 () Bool)

(declare-fun call!313945 () Bool)

(declare-fun bm!313940 () Bool)

(assert (=> bm!313940 (= call!313945 (forall!10208 (ite c!769027 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (toList!4280 lt!1687163)) (ite c!769027 lambda!170119 lambda!170121)))))

(declare-fun b!4508664 () Bool)

(declare-fun e!2808738 () Bool)

(assert (=> b!4508664 (= e!2808738 (invariantList!995 (toList!4280 lt!1687175)))))

(declare-fun e!2808739 () ListMap!3541)

(assert (=> b!4508665 (= e!2808739 (extractMap!1192 (t!357663 (toList!4279 lt!1686667))))))

(declare-fun lt!1687166 () Unit!93112)

(declare-fun call!313947 () Unit!93112)

(assert (=> b!4508665 (= lt!1687166 call!313947)))

(declare-fun call!313946 () Bool)

(assert (=> b!4508665 call!313946))

(declare-fun lt!1687164 () Unit!93112)

(assert (=> b!4508665 (= lt!1687164 lt!1687166)))

(assert (=> b!4508665 call!313945))

(declare-fun lt!1687165 () Unit!93112)

(declare-fun Unit!93197 () Unit!93112)

(assert (=> b!4508665 (= lt!1687165 Unit!93197)))

(declare-fun bm!313941 () Bool)

(assert (=> bm!313941 (= call!313946 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (ite c!769027 lambda!170119 lambda!170120)))))

(declare-fun bm!313942 () Bool)

(assert (=> bm!313942 (= call!313947 (lemmaContainsAllItsOwnKeys!315 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))))))

(declare-fun b!4508666 () Bool)

(declare-fun e!2808740 () Bool)

(assert (=> b!4508666 (= e!2808740 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) lambda!170121))))

(assert (=> b!4508667 (= e!2808739 lt!1687173)))

(assert (=> b!4508667 (= lt!1687163 (+!1493 (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686667))))))))

(assert (=> b!4508667 (= lt!1687173 (addToMapMapFromBucket!663 (t!357662 (_2!28784 (h!56408 (toList!4279 lt!1686667)))) (+!1493 (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686667)))))))))

(declare-fun lt!1687172 () Unit!93112)

(assert (=> b!4508667 (= lt!1687172 call!313947)))

(assert (=> b!4508667 call!313946))

(declare-fun lt!1687162 () Unit!93112)

(assert (=> b!4508667 (= lt!1687162 lt!1687172)))

(assert (=> b!4508667 (forall!10208 (toList!4280 lt!1687163) lambda!170121)))

(declare-fun lt!1687170 () Unit!93112)

(declare-fun Unit!93198 () Unit!93112)

(assert (=> b!4508667 (= lt!1687170 Unit!93198)))

(assert (=> b!4508667 (forall!10208 (t!357662 (_2!28784 (h!56408 (toList!4279 lt!1686667)))) lambda!170121)))

(declare-fun lt!1687171 () Unit!93112)

(declare-fun Unit!93199 () Unit!93112)

(assert (=> b!4508667 (= lt!1687171 Unit!93199)))

(declare-fun lt!1687169 () Unit!93112)

(declare-fun Unit!93200 () Unit!93112)

(assert (=> b!4508667 (= lt!1687169 Unit!93200)))

(declare-fun lt!1687177 () Unit!93112)

(assert (=> b!4508667 (= lt!1687177 (forallContained!2460 (toList!4280 lt!1687163) lambda!170121 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686667))))))))

(assert (=> b!4508667 (contains!13267 lt!1687163 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686667))))))))

(declare-fun lt!1687168 () Unit!93112)

(declare-fun Unit!93201 () Unit!93112)

(assert (=> b!4508667 (= lt!1687168 Unit!93201)))

(assert (=> b!4508667 (contains!13267 lt!1687173 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686667))))))))

(declare-fun lt!1687176 () Unit!93112)

(declare-fun Unit!93202 () Unit!93112)

(assert (=> b!4508667 (= lt!1687176 Unit!93202)))

(assert (=> b!4508667 (forall!10208 (_2!28784 (h!56408 (toList!4279 lt!1686667))) lambda!170121)))

(declare-fun lt!1687180 () Unit!93112)

(declare-fun Unit!93203 () Unit!93112)

(assert (=> b!4508667 (= lt!1687180 Unit!93203)))

(assert (=> b!4508667 call!313945))

(declare-fun lt!1687181 () Unit!93112)

(declare-fun Unit!93204 () Unit!93112)

(assert (=> b!4508667 (= lt!1687181 Unit!93204)))

(declare-fun lt!1687178 () Unit!93112)

(declare-fun Unit!93205 () Unit!93112)

(assert (=> b!4508667 (= lt!1687178 Unit!93205)))

(declare-fun lt!1687179 () Unit!93112)

(assert (=> b!4508667 (= lt!1687179 (addForallContainsKeyThenBeforeAdding!315 (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1687173 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686667))))) (_2!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686667)))))))))

(assert (=> b!4508667 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) lambda!170121)))

(declare-fun lt!1687161 () Unit!93112)

(assert (=> b!4508667 (= lt!1687161 lt!1687179)))

(assert (=> b!4508667 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) lambda!170121)))

(declare-fun lt!1687174 () Unit!93112)

(declare-fun Unit!93206 () Unit!93112)

(assert (=> b!4508667 (= lt!1687174 Unit!93206)))

(declare-fun res!1875083 () Bool)

(assert (=> b!4508667 (= res!1875083 (forall!10208 (_2!28784 (h!56408 (toList!4279 lt!1686667))) lambda!170121))))

(assert (=> b!4508667 (=> (not res!1875083) (not e!2808740))))

(assert (=> b!4508667 e!2808740))

(declare-fun lt!1687167 () Unit!93112)

(declare-fun Unit!93207 () Unit!93112)

(assert (=> b!4508667 (= lt!1687167 Unit!93207)))

(assert (=> d!1386364 e!2808738))

(declare-fun res!1875084 () Bool)

(assert (=> d!1386364 (=> (not res!1875084) (not e!2808738))))

(assert (=> d!1386364 (= res!1875084 (forall!10208 (_2!28784 (h!56408 (toList!4279 lt!1686667))) lambda!170124))))

(assert (=> d!1386364 (= lt!1687175 e!2808739)))

(assert (=> d!1386364 (= c!769027 ((_ is Nil!50576) (_2!28784 (h!56408 (toList!4279 lt!1686667)))))))

(assert (=> d!1386364 (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lt!1686667))))))

(assert (=> d!1386364 (= (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 lt!1686667))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) lt!1687175)))

(declare-fun b!4508668 () Bool)

(declare-fun res!1875082 () Bool)

(assert (=> b!4508668 (=> (not res!1875082) (not e!2808738))))

(assert (=> b!4508668 (= res!1875082 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) lambda!170124))))

(assert (= (and d!1386364 c!769027) b!4508665))

(assert (= (and d!1386364 (not c!769027)) b!4508667))

(assert (= (and b!4508667 res!1875083) b!4508666))

(assert (= (or b!4508665 b!4508667) bm!313940))

(assert (= (or b!4508665 b!4508667) bm!313941))

(assert (= (or b!4508665 b!4508667) bm!313942))

(assert (= (and d!1386364 res!1875084) b!4508668))

(assert (= (and b!4508668 res!1875082) b!4508664))

(assert (=> bm!313942 m!5246079))

(declare-fun m!5246487 () Bool)

(assert (=> bm!313942 m!5246487))

(declare-fun m!5246489 () Bool)

(assert (=> b!4508666 m!5246489))

(assert (=> b!4508667 m!5246489))

(declare-fun m!5246491 () Bool)

(assert (=> b!4508667 m!5246491))

(declare-fun m!5246493 () Bool)

(assert (=> b!4508667 m!5246493))

(assert (=> b!4508667 m!5246489))

(assert (=> b!4508667 m!5246079))

(declare-fun m!5246495 () Bool)

(assert (=> b!4508667 m!5246495))

(assert (=> b!4508667 m!5246079))

(declare-fun m!5246497 () Bool)

(assert (=> b!4508667 m!5246497))

(assert (=> b!4508667 m!5246497))

(declare-fun m!5246503 () Bool)

(assert (=> b!4508667 m!5246503))

(declare-fun m!5246507 () Bool)

(assert (=> b!4508667 m!5246507))

(assert (=> b!4508667 m!5246493))

(declare-fun m!5246515 () Bool)

(assert (=> b!4508667 m!5246515))

(declare-fun m!5246517 () Bool)

(assert (=> b!4508667 m!5246517))

(declare-fun m!5246521 () Bool)

(assert (=> b!4508667 m!5246521))

(declare-fun m!5246523 () Bool)

(assert (=> bm!313940 m!5246523))

(declare-fun m!5246525 () Bool)

(assert (=> b!4508668 m!5246525))

(declare-fun m!5246527 () Bool)

(assert (=> b!4508664 m!5246527))

(declare-fun m!5246529 () Bool)

(assert (=> d!1386364 m!5246529))

(declare-fun m!5246531 () Bool)

(assert (=> d!1386364 m!5246531))

(declare-fun m!5246533 () Bool)

(assert (=> bm!313941 m!5246533))

(assert (=> b!4508377 d!1386364))

(declare-fun bs!845345 () Bool)

(declare-fun d!1386370 () Bool)

(assert (= bs!845345 (and d!1386370 d!1386196)))

(declare-fun lambda!170129 () Int)

(assert (=> bs!845345 (= lambda!170129 lambda!170080)))

(declare-fun bs!845347 () Bool)

(assert (= bs!845347 (and d!1386370 d!1386084)))

(assert (=> bs!845347 (= lambda!170129 lambda!169986)))

(declare-fun bs!845348 () Bool)

(assert (= bs!845348 (and d!1386370 d!1386300)))

(assert (=> bs!845348 (= lambda!170129 lambda!170116)))

(declare-fun bs!845349 () Bool)

(assert (= bs!845349 (and d!1386370 d!1386224)))

(assert (=> bs!845349 (= lambda!170129 lambda!170089)))

(declare-fun bs!845350 () Bool)

(assert (= bs!845350 (and d!1386370 d!1386246)))

(assert (=> bs!845350 (= lambda!170129 lambda!170097)))

(declare-fun bs!845351 () Bool)

(assert (= bs!845351 (and d!1386370 start!445428)))

(assert (=> bs!845351 (= lambda!170129 lambda!169975)))

(declare-fun bs!845352 () Bool)

(assert (= bs!845352 (and d!1386370 d!1386112)))

(assert (=> bs!845352 (= lambda!170129 lambda!169992)))

(declare-fun bs!845353 () Bool)

(assert (= bs!845353 (and d!1386370 d!1386180)))

(assert (=> bs!845353 (= lambda!170129 lambda!170077)))

(declare-fun bs!845354 () Bool)

(assert (= bs!845354 (and d!1386370 d!1386188)))

(assert (=> bs!845354 (= lambda!170129 lambda!170078)))

(declare-fun bs!845355 () Bool)

(assert (= bs!845355 (and d!1386370 d!1386238)))

(assert (=> bs!845355 (= lambda!170129 lambda!170091)))

(declare-fun bs!845356 () Bool)

(assert (= bs!845356 (and d!1386370 d!1386192)))

(assert (=> bs!845356 (= lambda!170129 lambda!170079)))

(declare-fun bs!845357 () Bool)

(assert (= bs!845357 (and d!1386370 d!1386230)))

(assert (=> bs!845357 (= lambda!170129 lambda!170090)))

(declare-fun bs!845358 () Bool)

(assert (= bs!845358 (and d!1386370 d!1386240)))

(assert (=> bs!845358 (not (= lambda!170129 lambda!170094))))

(declare-fun bs!845360 () Bool)

(assert (= bs!845360 (and d!1386370 d!1386200)))

(assert (=> bs!845360 (= lambda!170129 lambda!170083)))

(declare-fun lt!1687185 () ListMap!3541)

(assert (=> d!1386370 (invariantList!995 (toList!4280 lt!1687185))))

(declare-fun e!2808744 () ListMap!3541)

(assert (=> d!1386370 (= lt!1687185 e!2808744)))

(declare-fun c!769028 () Bool)

(assert (=> d!1386370 (= c!769028 ((_ is Cons!50577) (t!357663 (toList!4279 lt!1686667))))))

(assert (=> d!1386370 (forall!10207 (t!357663 (toList!4279 lt!1686667)) lambda!170129)))

(assert (=> d!1386370 (= (extractMap!1192 (t!357663 (toList!4279 lt!1686667))) lt!1687185)))

(declare-fun b!4508680 () Bool)

(assert (=> b!4508680 (= e!2808744 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (t!357663 (toList!4279 lt!1686667)))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lt!1686667))))))))

(declare-fun b!4508681 () Bool)

(assert (=> b!4508681 (= e!2808744 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386370 c!769028) b!4508680))

(assert (= (and d!1386370 (not c!769028)) b!4508681))

(declare-fun m!5246541 () Bool)

(assert (=> d!1386370 m!5246541))

(declare-fun m!5246543 () Bool)

(assert (=> d!1386370 m!5246543))

(declare-fun m!5246545 () Bool)

(assert (=> b!4508680 m!5246545))

(assert (=> b!4508680 m!5246545))

(declare-fun m!5246547 () Bool)

(assert (=> b!4508680 m!5246547))

(assert (=> b!4508377 d!1386370))

(declare-fun bs!845362 () Bool)

(declare-fun b!4508688 () Bool)

(assert (= bs!845362 (and b!4508688 b!4508423)))

(declare-fun lambda!170132 () Int)

(assert (=> bs!845362 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (toList!4280 lt!1686664)) (= lambda!170132 lambda!170102))))

(declare-fun bs!845363 () Bool)

(assert (= bs!845363 (and b!4508688 b!4508546)))

(assert (=> bs!845363 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (toList!4280 lt!1686670)) (= lambda!170132 lambda!170117))))

(assert (=> b!4508688 true))

(declare-fun bs!845364 () Bool)

(declare-fun b!4508689 () Bool)

(assert (= bs!845364 (and b!4508689 b!4508424)))

(declare-fun lambda!170133 () Int)

(assert (=> bs!845364 (= lambda!170133 lambda!170103)))

(declare-fun bs!845365 () Bool)

(assert (= bs!845365 (and b!4508689 b!4508547)))

(assert (=> bs!845365 (= lambda!170133 lambda!170118)))

(declare-fun d!1386376 () Bool)

(declare-fun e!2808748 () Bool)

(assert (=> d!1386376 e!2808748))

(declare-fun res!1875101 () Bool)

(assert (=> d!1386376 (=> (not res!1875101) (not e!2808748))))

(declare-fun lt!1687187 () List!50703)

(assert (=> d!1386376 (= res!1875101 (noDuplicate!737 lt!1687187))))

(assert (=> d!1386376 (= lt!1687187 (getKeysList!443 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))

(assert (=> d!1386376 (= (keys!17548 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) lt!1687187)))

(declare-fun b!4508687 () Bool)

(declare-fun res!1875099 () Bool)

(assert (=> b!4508687 (=> (not res!1875099) (not e!2808748))))

(assert (=> b!4508687 (= res!1875099 (= (length!330 lt!1687187) (length!331 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))))

(declare-fun res!1875100 () Bool)

(assert (=> b!4508688 (=> (not res!1875100) (not e!2808748))))

(assert (=> b!4508688 (= res!1875100 (forall!10210 lt!1687187 lambda!170132))))

(assert (=> b!4508689 (= e!2808748 (= (content!8293 lt!1687187) (content!8293 (map!11116 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) lambda!170133))))))

(assert (= (and d!1386376 res!1875101) b!4508687))

(assert (= (and b!4508687 res!1875099) b!4508688))

(assert (= (and b!4508688 res!1875100) b!4508689))

(declare-fun m!5246563 () Bool)

(assert (=> d!1386376 m!5246563))

(assert (=> d!1386376 m!5245915))

(declare-fun m!5246565 () Bool)

(assert (=> b!4508687 m!5246565))

(declare-fun m!5246567 () Bool)

(assert (=> b!4508687 m!5246567))

(declare-fun m!5246569 () Bool)

(assert (=> b!4508688 m!5246569))

(declare-fun m!5246571 () Bool)

(assert (=> b!4508689 m!5246571))

(declare-fun m!5246573 () Bool)

(assert (=> b!4508689 m!5246573))

(assert (=> b!4508689 m!5246573))

(declare-fun m!5246575 () Bool)

(assert (=> b!4508689 m!5246575))

(assert (=> b!4508311 d!1386376))

(declare-fun d!1386380 () Bool)

(assert (=> d!1386380 (= (get!16544 (getValueByKey!1048 (toList!4279 lt!1686666) hash!344)) (v!44603 (getValueByKey!1048 (toList!4279 lt!1686666) hash!344)))))

(assert (=> d!1386198 d!1386380))

(assert (=> d!1386198 d!1386308))

(declare-fun d!1386382 () Bool)

(declare-fun res!1875106 () Bool)

(declare-fun e!2808753 () Bool)

(assert (=> d!1386382 (=> res!1875106 e!2808753)))

(assert (=> d!1386382 (= res!1875106 ((_ is Nil!50576) (toList!4280 lt!1686668)))))

(assert (=> d!1386382 (= (forall!10208 (toList!4280 lt!1686668) lambda!170064) e!2808753)))

(declare-fun b!4508694 () Bool)

(declare-fun e!2808754 () Bool)

(assert (=> b!4508694 (= e!2808753 e!2808754)))

(declare-fun res!1875107 () Bool)

(assert (=> b!4508694 (=> (not res!1875107) (not e!2808754))))

(assert (=> b!4508694 (= res!1875107 (dynLambda!21132 lambda!170064 (h!56407 (toList!4280 lt!1686668))))))

(declare-fun b!4508695 () Bool)

(assert (=> b!4508695 (= e!2808754 (forall!10208 (t!357662 (toList!4280 lt!1686668)) lambda!170064))))

(assert (= (and d!1386382 (not res!1875106)) b!4508694))

(assert (= (and b!4508694 res!1875107) b!4508695))

(declare-fun b_lambda!153541 () Bool)

(assert (=> (not b_lambda!153541) (not b!4508694)))

(declare-fun m!5246577 () Bool)

(assert (=> b!4508694 m!5246577))

(declare-fun m!5246579 () Bool)

(assert (=> b!4508695 m!5246579))

(assert (=> b!4508217 d!1386382))

(declare-fun bs!845409 () Bool)

(declare-fun b!4508767 () Bool)

(assert (= bs!845409 (and b!4508767 b!4508423)))

(declare-fun lambda!170149 () Int)

(assert (=> bs!845409 (= (= (t!357662 (toList!4280 lt!1686664)) (toList!4280 lt!1686664)) (= lambda!170149 lambda!170102))))

(declare-fun bs!845410 () Bool)

(assert (= bs!845410 (and b!4508767 b!4508546)))

(assert (=> bs!845410 (= (= (t!357662 (toList!4280 lt!1686664)) (toList!4280 lt!1686670)) (= lambda!170149 lambda!170117))))

(declare-fun bs!845411 () Bool)

(assert (= bs!845411 (and b!4508767 b!4508688)))

(assert (=> bs!845411 (= (= (t!357662 (toList!4280 lt!1686664)) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= lambda!170149 lambda!170132))))

(assert (=> b!4508767 true))

(declare-fun bs!845412 () Bool)

(declare-fun b!4508765 () Bool)

(assert (= bs!845412 (and b!4508765 b!4508423)))

(declare-fun lambda!170150 () Int)

(assert (=> bs!845412 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664))) (toList!4280 lt!1686664)) (= lambda!170150 lambda!170102))))

(declare-fun bs!845413 () Bool)

(assert (= bs!845413 (and b!4508765 b!4508546)))

(assert (=> bs!845413 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664))) (toList!4280 lt!1686670)) (= lambda!170150 lambda!170117))))

(declare-fun bs!845414 () Bool)

(assert (= bs!845414 (and b!4508765 b!4508688)))

(assert (=> bs!845414 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664))) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= lambda!170150 lambda!170132))))

(declare-fun bs!845415 () Bool)

(assert (= bs!845415 (and b!4508765 b!4508767)))

(assert (=> bs!845415 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664))) (t!357662 (toList!4280 lt!1686664))) (= lambda!170150 lambda!170149))))

(assert (=> b!4508765 true))

(declare-fun bs!845416 () Bool)

(declare-fun b!4508761 () Bool)

(assert (= bs!845416 (and b!4508761 b!4508423)))

(declare-fun lambda!170151 () Int)

(assert (=> bs!845416 (= lambda!170151 lambda!170102)))

(declare-fun bs!845417 () Bool)

(assert (= bs!845417 (and b!4508761 b!4508688)))

(assert (=> bs!845417 (= (= (toList!4280 lt!1686664) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= lambda!170151 lambda!170132))))

(declare-fun bs!845418 () Bool)

(assert (= bs!845418 (and b!4508761 b!4508765)))

(assert (=> bs!845418 (= (= (toList!4280 lt!1686664) (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664)))) (= lambda!170151 lambda!170150))))

(declare-fun bs!845419 () Bool)

(assert (= bs!845419 (and b!4508761 b!4508767)))

(assert (=> bs!845419 (= (= (toList!4280 lt!1686664) (t!357662 (toList!4280 lt!1686664))) (= lambda!170151 lambda!170149))))

(declare-fun bs!845420 () Bool)

(assert (= bs!845420 (and b!4508761 b!4508546)))

(assert (=> bs!845420 (= (= (toList!4280 lt!1686664) (toList!4280 lt!1686670)) (= lambda!170151 lambda!170117))))

(assert (=> b!4508761 true))

(declare-fun bs!845421 () Bool)

(declare-fun b!4508764 () Bool)

(assert (= bs!845421 (and b!4508764 b!4508424)))

(declare-fun lambda!170152 () Int)

(assert (=> bs!845421 (= lambda!170152 lambda!170103)))

(declare-fun bs!845422 () Bool)

(assert (= bs!845422 (and b!4508764 b!4508547)))

(assert (=> bs!845422 (= lambda!170152 lambda!170118)))

(declare-fun bs!845423 () Bool)

(assert (= bs!845423 (and b!4508764 b!4508689)))

(assert (=> bs!845423 (= lambda!170152 lambda!170133)))

(declare-fun b!4508760 () Bool)

(declare-fun e!2808800 () List!50703)

(assert (=> b!4508760 (= e!2808800 Nil!50579)))

(declare-fun res!1875146 () Bool)

(declare-fun e!2808799 () Bool)

(assert (=> b!4508761 (=> (not res!1875146) (not e!2808799))))

(declare-fun lt!1687237 () List!50703)

(assert (=> b!4508761 (= res!1875146 (forall!10210 lt!1687237 lambda!170151))))

(declare-fun b!4508762 () Bool)

(declare-fun e!2808798 () Unit!93112)

(declare-fun Unit!93208 () Unit!93112)

(assert (=> b!4508762 (= e!2808798 Unit!93208)))

(declare-fun b!4508763 () Bool)

(declare-fun e!2808801 () Unit!93112)

(declare-fun Unit!93209 () Unit!93112)

(assert (=> b!4508763 (= e!2808801 Unit!93209)))

(declare-fun d!1386384 () Bool)

(assert (=> d!1386384 e!2808799))

(declare-fun res!1875144 () Bool)

(assert (=> d!1386384 (=> (not res!1875144) (not e!2808799))))

(assert (=> d!1386384 (= res!1875144 (noDuplicate!737 lt!1687237))))

(assert (=> d!1386384 (= lt!1687237 e!2808800)))

(declare-fun c!769043 () Bool)

(assert (=> d!1386384 (= c!769043 ((_ is Cons!50576) (toList!4280 lt!1686664)))))

(assert (=> d!1386384 (invariantList!995 (toList!4280 lt!1686664))))

(assert (=> d!1386384 (= (getKeysList!443 (toList!4280 lt!1686664)) lt!1687237)))

(assert (=> b!4508764 (= e!2808799 (= (content!8293 lt!1687237) (content!8293 (map!11116 (toList!4280 lt!1686664) lambda!170152))))))

(assert (=> b!4508765 (= e!2808800 (Cons!50579 (_1!28783 (h!56407 (toList!4280 lt!1686664))) (getKeysList!443 (t!357662 (toList!4280 lt!1686664)))))))

(declare-fun c!769045 () Bool)

(assert (=> b!4508765 (= c!769045 (containsKey!1715 (t!357662 (toList!4280 lt!1686664)) (_1!28783 (h!56407 (toList!4280 lt!1686664)))))))

(declare-fun lt!1687233 () Unit!93112)

(assert (=> b!4508765 (= lt!1687233 e!2808798)))

(declare-fun c!769044 () Bool)

(assert (=> b!4508765 (= c!769044 (contains!13271 (getKeysList!443 (t!357662 (toList!4280 lt!1686664))) (_1!28783 (h!56407 (toList!4280 lt!1686664)))))))

(declare-fun lt!1687235 () Unit!93112)

(assert (=> b!4508765 (= lt!1687235 e!2808801)))

(declare-fun lt!1687234 () List!50703)

(assert (=> b!4508765 (= lt!1687234 (getKeysList!443 (t!357662 (toList!4280 lt!1686664))))))

(declare-fun lt!1687236 () Unit!93112)

(declare-fun lemmaForallContainsAddHeadPreserves!158 (List!50700 List!50703 tuple2!50978) Unit!93112)

(assert (=> b!4508765 (= lt!1687236 (lemmaForallContainsAddHeadPreserves!158 (t!357662 (toList!4280 lt!1686664)) lt!1687234 (h!56407 (toList!4280 lt!1686664))))))

(assert (=> b!4508765 (forall!10210 lt!1687234 lambda!170150)))

(declare-fun lt!1687232 () Unit!93112)

(assert (=> b!4508765 (= lt!1687232 lt!1687236)))

(declare-fun b!4508766 () Bool)

(declare-fun res!1875145 () Bool)

(assert (=> b!4508766 (=> (not res!1875145) (not e!2808799))))

(assert (=> b!4508766 (= res!1875145 (= (length!330 lt!1687237) (length!331 (toList!4280 lt!1686664))))))

(assert (=> b!4508767 false))

(declare-fun lt!1687231 () Unit!93112)

(declare-fun forallContained!2462 (List!50703 Int K!11980) Unit!93112)

(assert (=> b!4508767 (= lt!1687231 (forallContained!2462 (getKeysList!443 (t!357662 (toList!4280 lt!1686664))) lambda!170149 (_1!28783 (h!56407 (toList!4280 lt!1686664)))))))

(declare-fun Unit!93210 () Unit!93112)

(assert (=> b!4508767 (= e!2808801 Unit!93210)))

(declare-fun b!4508768 () Bool)

(assert (=> b!4508768 false))

(declare-fun Unit!93211 () Unit!93112)

(assert (=> b!4508768 (= e!2808798 Unit!93211)))

(assert (= (and d!1386384 c!769043) b!4508765))

(assert (= (and d!1386384 (not c!769043)) b!4508760))

(assert (= (and b!4508765 c!769045) b!4508768))

(assert (= (and b!4508765 (not c!769045)) b!4508762))

(assert (= (and b!4508765 c!769044) b!4508767))

(assert (= (and b!4508765 (not c!769044)) b!4508763))

(assert (= (and d!1386384 res!1875144) b!4508766))

(assert (= (and b!4508766 res!1875145) b!4508761))

(assert (= (and b!4508761 res!1875146) b!4508764))

(declare-fun m!5246693 () Bool)

(assert (=> b!4508767 m!5246693))

(assert (=> b!4508767 m!5246693))

(declare-fun m!5246695 () Bool)

(assert (=> b!4508767 m!5246695))

(declare-fun m!5246697 () Bool)

(assert (=> b!4508765 m!5246697))

(assert (=> b!4508765 m!5246693))

(declare-fun m!5246699 () Bool)

(assert (=> b!4508765 m!5246699))

(declare-fun m!5246701 () Bool)

(assert (=> b!4508765 m!5246701))

(assert (=> b!4508765 m!5246693))

(declare-fun m!5246703 () Bool)

(assert (=> b!4508765 m!5246703))

(declare-fun m!5246705 () Bool)

(assert (=> b!4508764 m!5246705))

(declare-fun m!5246707 () Bool)

(assert (=> b!4508764 m!5246707))

(assert (=> b!4508764 m!5246707))

(declare-fun m!5246709 () Bool)

(assert (=> b!4508764 m!5246709))

(declare-fun m!5246711 () Bool)

(assert (=> b!4508761 m!5246711))

(declare-fun m!5246713 () Bool)

(assert (=> d!1386384 m!5246713))

(declare-fun m!5246715 () Bool)

(assert (=> d!1386384 m!5246715))

(declare-fun m!5246717 () Bool)

(assert (=> b!4508766 m!5246717))

(assert (=> b!4508766 m!5246151))

(assert (=> b!4508336 d!1386384))

(declare-fun d!1386422 () Bool)

(declare-fun res!1875147 () Bool)

(declare-fun e!2808802 () Bool)

(assert (=> d!1386422 (=> res!1875147 e!2808802)))

(assert (=> d!1386422 (= res!1875147 ((_ is Nil!50576) newBucket!178))))

(assert (=> d!1386422 (= (forall!10208 newBucket!178 lambda!170086) e!2808802)))

(declare-fun b!4508771 () Bool)

(declare-fun e!2808803 () Bool)

(assert (=> b!4508771 (= e!2808802 e!2808803)))

(declare-fun res!1875148 () Bool)

(assert (=> b!4508771 (=> (not res!1875148) (not e!2808803))))

(assert (=> b!4508771 (= res!1875148 (dynLambda!21132 lambda!170086 (h!56407 newBucket!178)))))

(declare-fun b!4508772 () Bool)

(assert (=> b!4508772 (= e!2808803 (forall!10208 (t!357662 newBucket!178) lambda!170086))))

(assert (= (and d!1386422 (not res!1875147)) b!4508771))

(assert (= (and b!4508771 res!1875148) b!4508772))

(declare-fun b_lambda!153551 () Bool)

(assert (=> (not b_lambda!153551) (not b!4508771)))

(declare-fun m!5246719 () Bool)

(assert (=> b!4508771 m!5246719))

(declare-fun m!5246721 () Bool)

(assert (=> b!4508772 m!5246721))

(assert (=> d!1386218 d!1386422))

(declare-fun d!1386424 () Bool)

(assert (=> d!1386424 (= (get!16544 (getValueByKey!1048 (toList!4279 lm!1477) hash!344)) (v!44603 (getValueByKey!1048 (toList!4279 lm!1477) hash!344)))))

(assert (=> d!1386212 d!1386424))

(declare-fun d!1386426 () Bool)

(declare-fun c!769046 () Bool)

(assert (=> d!1386426 (= c!769046 (and ((_ is Cons!50577) (toList!4279 lm!1477)) (= (_1!28784 (h!56408 (toList!4279 lm!1477))) hash!344)))))

(declare-fun e!2808804 () Option!11068)

(assert (=> d!1386426 (= (getValueByKey!1048 (toList!4279 lm!1477) hash!344) e!2808804)))

(declare-fun b!4508775 () Bool)

(declare-fun e!2808805 () Option!11068)

(assert (=> b!4508775 (= e!2808805 (getValueByKey!1048 (t!357663 (toList!4279 lm!1477)) hash!344))))

(declare-fun b!4508774 () Bool)

(assert (=> b!4508774 (= e!2808804 e!2808805)))

(declare-fun c!769047 () Bool)

(assert (=> b!4508774 (= c!769047 (and ((_ is Cons!50577) (toList!4279 lm!1477)) (not (= (_1!28784 (h!56408 (toList!4279 lm!1477))) hash!344))))))

(declare-fun b!4508773 () Bool)

(assert (=> b!4508773 (= e!2808804 (Some!11067 (_2!28784 (h!56408 (toList!4279 lm!1477)))))))

(declare-fun b!4508776 () Bool)

(assert (=> b!4508776 (= e!2808805 None!11067)))

(assert (= (and d!1386426 c!769046) b!4508773))

(assert (= (and d!1386426 (not c!769046)) b!4508774))

(assert (= (and b!4508774 c!769047) b!4508775))

(assert (= (and b!4508774 (not c!769047)) b!4508776))

(declare-fun m!5246723 () Bool)

(assert (=> b!4508775 m!5246723))

(assert (=> d!1386212 d!1386426))

(declare-fun bs!845424 () Bool)

(declare-fun b!4508778 () Bool)

(assert (= bs!845424 (and b!4508778 b!4508667)))

(declare-fun lambda!170153 () Int)

(assert (=> bs!845424 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170153 lambda!170120))))

(declare-fun bs!845425 () Bool)

(assert (= bs!845425 (and b!4508778 b!4508515)))

(assert (=> bs!845425 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170153 lambda!170113))))

(assert (=> bs!845425 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687114) (= lambda!170153 lambda!170114))))

(declare-fun bs!845426 () Bool)

(assert (= bs!845426 (and b!4508778 d!1386122)))

(assert (=> bs!845426 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686928) (= lambda!170153 lambda!170065))))

(declare-fun bs!845427 () Bool)

(assert (= bs!845427 (and b!4508778 b!4508218)))

(assert (=> bs!845427 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686926) (= lambda!170153 lambda!170064))))

(declare-fun bs!845428 () Bool)

(assert (= bs!845428 (and b!4508778 d!1386218)))

(assert (=> bs!845428 (not (= lambda!170153 lambda!170086))))

(assert (=> bs!845424 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687173) (= lambda!170153 lambda!170121))))

(declare-fun bs!845429 () Bool)

(assert (= bs!845429 (and b!4508778 d!1386294)))

(assert (=> bs!845429 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687116) (= lambda!170153 lambda!170115))))

(declare-fun bs!845430 () Bool)

(assert (= bs!845430 (and b!4508778 d!1386364)))

(assert (=> bs!845430 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687175) (= lambda!170153 lambda!170124))))

(assert (=> bs!845427 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686668) (= lambda!170153 lambda!170063))))

(declare-fun bs!845431 () Bool)

(assert (= bs!845431 (and b!4508778 b!4508216)))

(assert (=> bs!845431 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686668) (= lambda!170153 lambda!170062))))

(declare-fun bs!845432 () Bool)

(assert (= bs!845432 (and b!4508778 b!4508665)))

(assert (=> bs!845432 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170153 lambda!170119))))

(declare-fun bs!845433 () Bool)

(assert (= bs!845433 (and b!4508778 b!4508513)))

(assert (=> bs!845433 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170153 lambda!170112))))

(declare-fun bs!845434 () Bool)

(assert (= bs!845434 (and b!4508778 d!1386260)))

(assert (=> bs!845434 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686668) (= lambda!170153 lambda!170106))))

(assert (=> b!4508778 true))

(declare-fun bs!845435 () Bool)

(declare-fun b!4508780 () Bool)

(assert (= bs!845435 (and b!4508780 b!4508667)))

(declare-fun lambda!170156 () Int)

(assert (=> bs!845435 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170156 lambda!170120))))

(declare-fun bs!845436 () Bool)

(assert (= bs!845436 (and b!4508780 b!4508515)))

(assert (=> bs!845436 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170156 lambda!170113))))

(assert (=> bs!845436 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687114) (= lambda!170156 lambda!170114))))

(declare-fun bs!845437 () Bool)

(assert (= bs!845437 (and b!4508780 d!1386122)))

(assert (=> bs!845437 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686928) (= lambda!170156 lambda!170065))))

(declare-fun bs!845438 () Bool)

(assert (= bs!845438 (and b!4508780 b!4508218)))

(assert (=> bs!845438 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686926) (= lambda!170156 lambda!170064))))

(declare-fun bs!845439 () Bool)

(assert (= bs!845439 (and b!4508780 d!1386218)))

(assert (=> bs!845439 (not (= lambda!170156 lambda!170086))))

(declare-fun bs!845440 () Bool)

(assert (= bs!845440 (and b!4508780 d!1386294)))

(assert (=> bs!845440 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687116) (= lambda!170156 lambda!170115))))

(declare-fun bs!845441 () Bool)

(assert (= bs!845441 (and b!4508780 d!1386364)))

(assert (=> bs!845441 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687175) (= lambda!170156 lambda!170124))))

(assert (=> bs!845438 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686668) (= lambda!170156 lambda!170063))))

(declare-fun bs!845442 () Bool)

(assert (= bs!845442 (and b!4508780 b!4508216)))

(assert (=> bs!845442 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686668) (= lambda!170156 lambda!170062))))

(declare-fun bs!845443 () Bool)

(assert (= bs!845443 (and b!4508780 b!4508665)))

(assert (=> bs!845443 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170156 lambda!170119))))

(declare-fun bs!845444 () Bool)

(assert (= bs!845444 (and b!4508780 b!4508513)))

(assert (=> bs!845444 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170156 lambda!170112))))

(declare-fun bs!845445 () Bool)

(assert (= bs!845445 (and b!4508780 d!1386260)))

(assert (=> bs!845445 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1686668) (= lambda!170156 lambda!170106))))

(assert (=> bs!845435 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687173) (= lambda!170156 lambda!170121))))

(declare-fun bs!845446 () Bool)

(assert (= bs!845446 (and b!4508780 b!4508778)))

(assert (=> bs!845446 (= lambda!170156 lambda!170153)))

(assert (=> b!4508780 true))

(declare-fun lt!1687250 () ListMap!3541)

(declare-fun lambda!170159 () Int)

(assert (=> bs!845435 (= (= lt!1687250 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170159 lambda!170120))))

(assert (=> bs!845436 (= (= lt!1687250 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170159 lambda!170113))))

(assert (=> bs!845436 (= (= lt!1687250 lt!1687114) (= lambda!170159 lambda!170114))))

(assert (=> bs!845437 (= (= lt!1687250 lt!1686928) (= lambda!170159 lambda!170065))))

(assert (=> bs!845438 (= (= lt!1687250 lt!1686926) (= lambda!170159 lambda!170064))))

(assert (=> bs!845439 (not (= lambda!170159 lambda!170086))))

(assert (=> bs!845440 (= (= lt!1687250 lt!1687116) (= lambda!170159 lambda!170115))))

(assert (=> bs!845441 (= (= lt!1687250 lt!1687175) (= lambda!170159 lambda!170124))))

(assert (=> bs!845438 (= (= lt!1687250 lt!1686668) (= lambda!170159 lambda!170063))))

(assert (=> bs!845442 (= (= lt!1687250 lt!1686668) (= lambda!170159 lambda!170062))))

(assert (=> bs!845443 (= (= lt!1687250 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170159 lambda!170119))))

(assert (=> bs!845444 (= (= lt!1687250 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170159 lambda!170112))))

(assert (=> bs!845445 (= (= lt!1687250 lt!1686668) (= lambda!170159 lambda!170106))))

(assert (=> bs!845435 (= (= lt!1687250 lt!1687173) (= lambda!170159 lambda!170121))))

(assert (=> b!4508780 (= (= lt!1687250 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170159 lambda!170156))))

(assert (=> bs!845446 (= (= lt!1687250 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170159 lambda!170153))))

(assert (=> b!4508780 true))

(declare-fun bs!845458 () Bool)

(declare-fun d!1386428 () Bool)

(assert (= bs!845458 (and d!1386428 b!4508667)))

(declare-fun lt!1687252 () ListMap!3541)

(declare-fun lambda!170161 () Int)

(assert (=> bs!845458 (= (= lt!1687252 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170161 lambda!170120))))

(declare-fun bs!845459 () Bool)

(assert (= bs!845459 (and d!1386428 b!4508515)))

(assert (=> bs!845459 (= (= lt!1687252 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170161 lambda!170113))))

(assert (=> bs!845459 (= (= lt!1687252 lt!1687114) (= lambda!170161 lambda!170114))))

(declare-fun bs!845460 () Bool)

(assert (= bs!845460 (and d!1386428 d!1386122)))

(assert (=> bs!845460 (= (= lt!1687252 lt!1686928) (= lambda!170161 lambda!170065))))

(declare-fun bs!845461 () Bool)

(assert (= bs!845461 (and d!1386428 b!4508218)))

(assert (=> bs!845461 (= (= lt!1687252 lt!1686926) (= lambda!170161 lambda!170064))))

(declare-fun bs!845462 () Bool)

(assert (= bs!845462 (and d!1386428 d!1386218)))

(assert (=> bs!845462 (not (= lambda!170161 lambda!170086))))

(declare-fun bs!845463 () Bool)

(assert (= bs!845463 (and d!1386428 b!4508780)))

(assert (=> bs!845463 (= (= lt!1687252 lt!1687250) (= lambda!170161 lambda!170159))))

(declare-fun bs!845464 () Bool)

(assert (= bs!845464 (and d!1386428 d!1386294)))

(assert (=> bs!845464 (= (= lt!1687252 lt!1687116) (= lambda!170161 lambda!170115))))

(declare-fun bs!845465 () Bool)

(assert (= bs!845465 (and d!1386428 d!1386364)))

(assert (=> bs!845465 (= (= lt!1687252 lt!1687175) (= lambda!170161 lambda!170124))))

(assert (=> bs!845461 (= (= lt!1687252 lt!1686668) (= lambda!170161 lambda!170063))))

(declare-fun bs!845466 () Bool)

(assert (= bs!845466 (and d!1386428 b!4508216)))

(assert (=> bs!845466 (= (= lt!1687252 lt!1686668) (= lambda!170161 lambda!170062))))

(declare-fun bs!845467 () Bool)

(assert (= bs!845467 (and d!1386428 b!4508665)))

(assert (=> bs!845467 (= (= lt!1687252 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170161 lambda!170119))))

(declare-fun bs!845468 () Bool)

(assert (= bs!845468 (and d!1386428 b!4508513)))

(assert (=> bs!845468 (= (= lt!1687252 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170161 lambda!170112))))

(declare-fun bs!845469 () Bool)

(assert (= bs!845469 (and d!1386428 d!1386260)))

(assert (=> bs!845469 (= (= lt!1687252 lt!1686668) (= lambda!170161 lambda!170106))))

(assert (=> bs!845458 (= (= lt!1687252 lt!1687173) (= lambda!170161 lambda!170121))))

(assert (=> bs!845463 (= (= lt!1687252 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170161 lambda!170156))))

(declare-fun bs!845470 () Bool)

(assert (= bs!845470 (and d!1386428 b!4508778)))

(assert (=> bs!845470 (= (= lt!1687252 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170161 lambda!170153))))

(assert (=> d!1386428 true))

(declare-fun lt!1687240 () ListMap!3541)

(declare-fun c!769048 () Bool)

(declare-fun bm!313946 () Bool)

(declare-fun call!313951 () Bool)

(assert (=> bm!313946 (= call!313951 (forall!10208 (ite c!769048 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (toList!4280 lt!1687240)) (ite c!769048 lambda!170153 lambda!170159)))))

(declare-fun b!4508777 () Bool)

(declare-fun e!2808806 () Bool)

(assert (=> b!4508777 (= e!2808806 (invariantList!995 (toList!4280 lt!1687252)))))

(declare-fun e!2808807 () ListMap!3541)

(assert (=> b!4508778 (= e!2808807 (extractMap!1192 (t!357663 (toList!4279 lt!1686674))))))

(declare-fun lt!1687243 () Unit!93112)

(declare-fun call!313953 () Unit!93112)

(assert (=> b!4508778 (= lt!1687243 call!313953)))

(declare-fun call!313952 () Bool)

(assert (=> b!4508778 call!313952))

(declare-fun lt!1687241 () Unit!93112)

(assert (=> b!4508778 (= lt!1687241 lt!1687243)))

(assert (=> b!4508778 call!313951))

(declare-fun lt!1687242 () Unit!93112)

(declare-fun Unit!93214 () Unit!93112)

(assert (=> b!4508778 (= lt!1687242 Unit!93214)))

(declare-fun bm!313947 () Bool)

(assert (=> bm!313947 (= call!313952 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (ite c!769048 lambda!170153 lambda!170156)))))

(declare-fun bm!313948 () Bool)

(assert (=> bm!313948 (= call!313953 (lemmaContainsAllItsOwnKeys!315 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))))))

(declare-fun b!4508779 () Bool)

(declare-fun e!2808808 () Bool)

(assert (=> b!4508779 (= e!2808808 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) lambda!170159))))

(assert (=> b!4508780 (= e!2808807 lt!1687250)))

(assert (=> b!4508780 (= lt!1687240 (+!1493 (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686674))))))))

(assert (=> b!4508780 (= lt!1687250 (addToMapMapFromBucket!663 (t!357662 (_2!28784 (h!56408 (toList!4279 lt!1686674)))) (+!1493 (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686674)))))))))

(declare-fun lt!1687249 () Unit!93112)

(assert (=> b!4508780 (= lt!1687249 call!313953)))

(assert (=> b!4508780 call!313952))

(declare-fun lt!1687239 () Unit!93112)

(assert (=> b!4508780 (= lt!1687239 lt!1687249)))

(assert (=> b!4508780 (forall!10208 (toList!4280 lt!1687240) lambda!170159)))

(declare-fun lt!1687247 () Unit!93112)

(declare-fun Unit!93215 () Unit!93112)

(assert (=> b!4508780 (= lt!1687247 Unit!93215)))

(assert (=> b!4508780 (forall!10208 (t!357662 (_2!28784 (h!56408 (toList!4279 lt!1686674)))) lambda!170159)))

(declare-fun lt!1687248 () Unit!93112)

(declare-fun Unit!93216 () Unit!93112)

(assert (=> b!4508780 (= lt!1687248 Unit!93216)))

(declare-fun lt!1687246 () Unit!93112)

(declare-fun Unit!93217 () Unit!93112)

(assert (=> b!4508780 (= lt!1687246 Unit!93217)))

(declare-fun lt!1687254 () Unit!93112)

(assert (=> b!4508780 (= lt!1687254 (forallContained!2460 (toList!4280 lt!1687240) lambda!170159 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686674))))))))

(assert (=> b!4508780 (contains!13267 lt!1687240 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686674))))))))

(declare-fun lt!1687245 () Unit!93112)

(declare-fun Unit!93218 () Unit!93112)

(assert (=> b!4508780 (= lt!1687245 Unit!93218)))

(assert (=> b!4508780 (contains!13267 lt!1687250 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686674))))))))

(declare-fun lt!1687253 () Unit!93112)

(declare-fun Unit!93219 () Unit!93112)

(assert (=> b!4508780 (= lt!1687253 Unit!93219)))

(assert (=> b!4508780 (forall!10208 (_2!28784 (h!56408 (toList!4279 lt!1686674))) lambda!170159)))

(declare-fun lt!1687257 () Unit!93112)

(declare-fun Unit!93220 () Unit!93112)

(assert (=> b!4508780 (= lt!1687257 Unit!93220)))

(assert (=> b!4508780 call!313951))

(declare-fun lt!1687258 () Unit!93112)

(declare-fun Unit!93221 () Unit!93112)

(assert (=> b!4508780 (= lt!1687258 Unit!93221)))

(declare-fun lt!1687255 () Unit!93112)

(declare-fun Unit!93222 () Unit!93112)

(assert (=> b!4508780 (= lt!1687255 Unit!93222)))

(declare-fun lt!1687256 () Unit!93112)

(assert (=> b!4508780 (= lt!1687256 (addForallContainsKeyThenBeforeAdding!315 (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687250 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686674))))) (_2!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686674)))))))))

(assert (=> b!4508780 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) lambda!170159)))

(declare-fun lt!1687238 () Unit!93112)

(assert (=> b!4508780 (= lt!1687238 lt!1687256)))

(assert (=> b!4508780 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) lambda!170159)))

(declare-fun lt!1687251 () Unit!93112)

(declare-fun Unit!93223 () Unit!93112)

(assert (=> b!4508780 (= lt!1687251 Unit!93223)))

(declare-fun res!1875150 () Bool)

(assert (=> b!4508780 (= res!1875150 (forall!10208 (_2!28784 (h!56408 (toList!4279 lt!1686674))) lambda!170159))))

(assert (=> b!4508780 (=> (not res!1875150) (not e!2808808))))

(assert (=> b!4508780 e!2808808))

(declare-fun lt!1687244 () Unit!93112)

(declare-fun Unit!93224 () Unit!93112)

(assert (=> b!4508780 (= lt!1687244 Unit!93224)))

(assert (=> d!1386428 e!2808806))

(declare-fun res!1875151 () Bool)

(assert (=> d!1386428 (=> (not res!1875151) (not e!2808806))))

(assert (=> d!1386428 (= res!1875151 (forall!10208 (_2!28784 (h!56408 (toList!4279 lt!1686674))) lambda!170161))))

(assert (=> d!1386428 (= lt!1687252 e!2808807)))

(assert (=> d!1386428 (= c!769048 ((_ is Nil!50576) (_2!28784 (h!56408 (toList!4279 lt!1686674)))))))

(assert (=> d!1386428 (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lt!1686674))))))

(assert (=> d!1386428 (= (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 lt!1686674))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) lt!1687252)))

(declare-fun b!4508781 () Bool)

(declare-fun res!1875149 () Bool)

(assert (=> b!4508781 (=> (not res!1875149) (not e!2808806))))

(assert (=> b!4508781 (= res!1875149 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) lambda!170161))))

(assert (= (and d!1386428 c!769048) b!4508778))

(assert (= (and d!1386428 (not c!769048)) b!4508780))

(assert (= (and b!4508780 res!1875150) b!4508779))

(assert (= (or b!4508778 b!4508780) bm!313946))

(assert (= (or b!4508778 b!4508780) bm!313947))

(assert (= (or b!4508778 b!4508780) bm!313948))

(assert (= (and d!1386428 res!1875151) b!4508781))

(assert (= (and b!4508781 res!1875149) b!4508777))

(assert (=> bm!313948 m!5245655))

(declare-fun m!5246753 () Bool)

(assert (=> bm!313948 m!5246753))

(declare-fun m!5246755 () Bool)

(assert (=> b!4508779 m!5246755))

(assert (=> b!4508780 m!5246755))

(declare-fun m!5246757 () Bool)

(assert (=> b!4508780 m!5246757))

(declare-fun m!5246759 () Bool)

(assert (=> b!4508780 m!5246759))

(assert (=> b!4508780 m!5246755))

(assert (=> b!4508780 m!5245655))

(declare-fun m!5246761 () Bool)

(assert (=> b!4508780 m!5246761))

(assert (=> b!4508780 m!5245655))

(declare-fun m!5246763 () Bool)

(assert (=> b!4508780 m!5246763))

(assert (=> b!4508780 m!5246763))

(declare-fun m!5246765 () Bool)

(assert (=> b!4508780 m!5246765))

(declare-fun m!5246767 () Bool)

(assert (=> b!4508780 m!5246767))

(assert (=> b!4508780 m!5246759))

(declare-fun m!5246769 () Bool)

(assert (=> b!4508780 m!5246769))

(declare-fun m!5246771 () Bool)

(assert (=> b!4508780 m!5246771))

(declare-fun m!5246773 () Bool)

(assert (=> b!4508780 m!5246773))

(declare-fun m!5246775 () Bool)

(assert (=> bm!313946 m!5246775))

(declare-fun m!5246777 () Bool)

(assert (=> b!4508781 m!5246777))

(declare-fun m!5246779 () Bool)

(assert (=> b!4508777 m!5246779))

(declare-fun m!5246781 () Bool)

(assert (=> d!1386428 m!5246781))

(declare-fun m!5246783 () Bool)

(assert (=> d!1386428 m!5246783))

(declare-fun m!5246785 () Bool)

(assert (=> bm!313947 m!5246785))

(assert (=> b!4508143 d!1386428))

(declare-fun bs!845487 () Bool)

(declare-fun d!1386434 () Bool)

(assert (= bs!845487 (and d!1386434 d!1386196)))

(declare-fun lambda!170164 () Int)

(assert (=> bs!845487 (= lambda!170164 lambda!170080)))

(declare-fun bs!845490 () Bool)

(assert (= bs!845490 (and d!1386434 d!1386084)))

(assert (=> bs!845490 (= lambda!170164 lambda!169986)))

(declare-fun bs!845491 () Bool)

(assert (= bs!845491 (and d!1386434 d!1386300)))

(assert (=> bs!845491 (= lambda!170164 lambda!170116)))

(declare-fun bs!845492 () Bool)

(assert (= bs!845492 (and d!1386434 d!1386224)))

(assert (=> bs!845492 (= lambda!170164 lambda!170089)))

(declare-fun bs!845493 () Bool)

(assert (= bs!845493 (and d!1386434 d!1386246)))

(assert (=> bs!845493 (= lambda!170164 lambda!170097)))

(declare-fun bs!845495 () Bool)

(assert (= bs!845495 (and d!1386434 start!445428)))

(assert (=> bs!845495 (= lambda!170164 lambda!169975)))

(declare-fun bs!845496 () Bool)

(assert (= bs!845496 (and d!1386434 d!1386112)))

(assert (=> bs!845496 (= lambda!170164 lambda!169992)))

(declare-fun bs!845498 () Bool)

(assert (= bs!845498 (and d!1386434 d!1386370)))

(assert (=> bs!845498 (= lambda!170164 lambda!170129)))

(declare-fun bs!845500 () Bool)

(assert (= bs!845500 (and d!1386434 d!1386180)))

(assert (=> bs!845500 (= lambda!170164 lambda!170077)))

(declare-fun bs!845502 () Bool)

(assert (= bs!845502 (and d!1386434 d!1386188)))

(assert (=> bs!845502 (= lambda!170164 lambda!170078)))

(declare-fun bs!845504 () Bool)

(assert (= bs!845504 (and d!1386434 d!1386238)))

(assert (=> bs!845504 (= lambda!170164 lambda!170091)))

(declare-fun bs!845505 () Bool)

(assert (= bs!845505 (and d!1386434 d!1386192)))

(assert (=> bs!845505 (= lambda!170164 lambda!170079)))

(declare-fun bs!845506 () Bool)

(assert (= bs!845506 (and d!1386434 d!1386230)))

(assert (=> bs!845506 (= lambda!170164 lambda!170090)))

(declare-fun bs!845507 () Bool)

(assert (= bs!845507 (and d!1386434 d!1386240)))

(assert (=> bs!845507 (not (= lambda!170164 lambda!170094))))

(declare-fun bs!845508 () Bool)

(assert (= bs!845508 (and d!1386434 d!1386200)))

(assert (=> bs!845508 (= lambda!170164 lambda!170083)))

(declare-fun lt!1687291 () ListMap!3541)

(assert (=> d!1386434 (invariantList!995 (toList!4280 lt!1687291))))

(declare-fun e!2808818 () ListMap!3541)

(assert (=> d!1386434 (= lt!1687291 e!2808818)))

(declare-fun c!769053 () Bool)

(assert (=> d!1386434 (= c!769053 ((_ is Cons!50577) (t!357663 (toList!4279 lt!1686674))))))

(assert (=> d!1386434 (forall!10207 (t!357663 (toList!4279 lt!1686674)) lambda!170164)))

(assert (=> d!1386434 (= (extractMap!1192 (t!357663 (toList!4279 lt!1686674))) lt!1687291)))

(declare-fun b!4508797 () Bool)

(assert (=> b!4508797 (= e!2808818 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (t!357663 (toList!4279 lt!1686674)))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lt!1686674))))))))

(declare-fun b!4508798 () Bool)

(assert (=> b!4508798 (= e!2808818 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386434 c!769053) b!4508797))

(assert (= (and d!1386434 (not c!769053)) b!4508798))

(declare-fun m!5246787 () Bool)

(assert (=> d!1386434 m!5246787))

(declare-fun m!5246789 () Bool)

(assert (=> d!1386434 m!5246789))

(declare-fun m!5246791 () Bool)

(assert (=> b!4508797 m!5246791))

(assert (=> b!4508797 m!5246791))

(declare-fun m!5246793 () Bool)

(assert (=> b!4508797 m!5246793))

(assert (=> b!4508143 d!1386434))

(declare-fun d!1386436 () Bool)

(declare-fun res!1875162 () Bool)

(declare-fun e!2808823 () Bool)

(assert (=> d!1386436 (=> res!1875162 e!2808823)))

(assert (=> d!1386436 (= res!1875162 (and ((_ is Cons!50577) (toList!4279 lt!1686666)) (= (_1!28784 (h!56408 (toList!4279 lt!1686666))) hash!344)))))

(assert (=> d!1386436 (= (containsKey!1714 (toList!4279 lt!1686666) hash!344) e!2808823)))

(declare-fun b!4508803 () Bool)

(declare-fun e!2808824 () Bool)

(assert (=> b!4508803 (= e!2808823 e!2808824)))

(declare-fun res!1875163 () Bool)

(assert (=> b!4508803 (=> (not res!1875163) (not e!2808824))))

(assert (=> b!4508803 (= res!1875163 (and (or (not ((_ is Cons!50577) (toList!4279 lt!1686666))) (bvsle (_1!28784 (h!56408 (toList!4279 lt!1686666))) hash!344)) ((_ is Cons!50577) (toList!4279 lt!1686666)) (bvslt (_1!28784 (h!56408 (toList!4279 lt!1686666))) hash!344)))))

(declare-fun b!4508804 () Bool)

(assert (=> b!4508804 (= e!2808824 (containsKey!1714 (t!357663 (toList!4279 lt!1686666)) hash!344))))

(assert (= (and d!1386436 (not res!1875162)) b!4508803))

(assert (= (and b!4508803 res!1875163) b!4508804))

(declare-fun m!5246795 () Bool)

(assert (=> b!4508804 m!5246795))

(assert (=> d!1386152 d!1386436))

(declare-fun d!1386438 () Bool)

(declare-fun res!1875168 () Bool)

(declare-fun e!2808829 () Bool)

(assert (=> d!1386438 (=> res!1875168 e!2808829)))

(assert (=> d!1386438 (= res!1875168 (and ((_ is Cons!50576) (toList!4280 lt!1686670)) (= (_1!28783 (h!56407 (toList!4280 lt!1686670))) key!3287)))))

(assert (=> d!1386438 (= (containsKey!1715 (toList!4280 lt!1686670) key!3287) e!2808829)))

(declare-fun b!4508809 () Bool)

(declare-fun e!2808830 () Bool)

(assert (=> b!4508809 (= e!2808829 e!2808830)))

(declare-fun res!1875169 () Bool)

(assert (=> b!4508809 (=> (not res!1875169) (not e!2808830))))

(assert (=> b!4508809 (= res!1875169 ((_ is Cons!50576) (toList!4280 lt!1686670)))))

(declare-fun b!4508810 () Bool)

(assert (=> b!4508810 (= e!2808830 (containsKey!1715 (t!357662 (toList!4280 lt!1686670)) key!3287))))

(assert (= (and d!1386438 (not res!1875168)) b!4508809))

(assert (= (and b!4508809 res!1875169) b!4508810))

(declare-fun m!5246831 () Bool)

(assert (=> b!4508810 m!5246831))

(assert (=> d!1386190 d!1386438))

(declare-fun d!1386442 () Bool)

(declare-fun lt!1687292 () Bool)

(assert (=> d!1386442 (= lt!1687292 (select (content!8293 e!2808528) key!3287))))

(declare-fun e!2808833 () Bool)

(assert (=> d!1386442 (= lt!1687292 e!2808833)))

(declare-fun res!1875172 () Bool)

(assert (=> d!1386442 (=> (not res!1875172) (not e!2808833))))

(assert (=> d!1386442 (= res!1875172 ((_ is Cons!50579) e!2808528))))

(assert (=> d!1386442 (= (contains!13271 e!2808528 key!3287) lt!1687292)))

(declare-fun b!4508813 () Bool)

(declare-fun e!2808834 () Bool)

(assert (=> b!4508813 (= e!2808833 e!2808834)))

(declare-fun res!1875173 () Bool)

(assert (=> b!4508813 (=> res!1875173 e!2808834)))

(assert (=> b!4508813 (= res!1875173 (= (h!56412 e!2808528) key!3287))))

(declare-fun b!4508814 () Bool)

(assert (=> b!4508814 (= e!2808834 (contains!13271 (t!357665 e!2808528) key!3287))))

(assert (= (and d!1386442 res!1875172) b!4508813))

(assert (= (and b!4508813 (not res!1875173)) b!4508814))

(declare-fun m!5246833 () Bool)

(assert (=> d!1386442 m!5246833))

(declare-fun m!5246835 () Bool)

(assert (=> d!1386442 m!5246835))

(declare-fun m!5246839 () Bool)

(assert (=> b!4508814 m!5246839))

(assert (=> bm!313905 d!1386442))

(declare-fun d!1386444 () Bool)

(declare-fun res!1875174 () Bool)

(declare-fun e!2808835 () Bool)

(assert (=> d!1386444 (=> res!1875174 e!2808835)))

(assert (=> d!1386444 (= res!1875174 (and ((_ is Cons!50576) (_2!28784 (h!56408 (toList!4279 lt!1686666)))) (= (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686666))))) key!3287)))))

(assert (=> d!1386444 (= (containsKey!1712 (_2!28784 (h!56408 (toList!4279 lt!1686666))) key!3287) e!2808835)))

(declare-fun b!4508815 () Bool)

(declare-fun e!2808836 () Bool)

(assert (=> b!4508815 (= e!2808835 e!2808836)))

(declare-fun res!1875175 () Bool)

(assert (=> b!4508815 (=> (not res!1875175) (not e!2808836))))

(assert (=> b!4508815 (= res!1875175 ((_ is Cons!50576) (_2!28784 (h!56408 (toList!4279 lt!1686666)))))))

(declare-fun b!4508816 () Bool)

(assert (=> b!4508816 (= e!2808836 (containsKey!1712 (t!357662 (_2!28784 (h!56408 (toList!4279 lt!1686666)))) key!3287))))

(assert (= (and d!1386444 (not res!1875174)) b!4508815))

(assert (= (and b!4508815 res!1875175) b!4508816))

(declare-fun m!5246843 () Bool)

(assert (=> b!4508816 m!5246843))

(assert (=> b!4508111 d!1386444))

(declare-fun d!1386448 () Bool)

(assert (=> d!1386448 (= (head!9368 (toList!4279 lt!1686674)) (h!56408 (toList!4279 lt!1686674)))))

(assert (=> d!1386178 d!1386448))

(declare-fun d!1386450 () Bool)

(assert (=> d!1386450 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287))))

(declare-fun lt!1687297 () Unit!93112)

(declare-fun choose!29269 (List!50700 K!11980) Unit!93112)

(assert (=> d!1386450 (= lt!1687297 (choose!29269 (toList!4280 lt!1686670) key!3287))))

(assert (=> d!1386450 (invariantList!995 (toList!4280 lt!1686670))))

(assert (=> d!1386450 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 lt!1686670) key!3287) lt!1687297)))

(declare-fun bs!845522 () Bool)

(assert (= bs!845522 d!1386450))

(assert (=> bs!845522 m!5245935))

(assert (=> bs!845522 m!5245935))

(assert (=> bs!845522 m!5245937))

(declare-fun m!5246845 () Bool)

(assert (=> bs!845522 m!5246845))

(declare-fun m!5246847 () Bool)

(assert (=> bs!845522 m!5246847))

(assert (=> b!4508323 d!1386450))

(declare-fun d!1386452 () Bool)

(assert (=> d!1386452 (= (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287)) (not (isEmpty!28631 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287))))))

(declare-fun bs!845523 () Bool)

(assert (= bs!845523 d!1386452))

(assert (=> bs!845523 m!5245935))

(declare-fun m!5246853 () Bool)

(assert (=> bs!845523 m!5246853))

(assert (=> b!4508323 d!1386452))

(declare-fun b!4508823 () Bool)

(declare-fun e!2808841 () Option!11069)

(assert (=> b!4508823 (= e!2808841 None!11068)))

(declare-fun b!4508821 () Bool)

(declare-fun e!2808840 () Option!11069)

(assert (=> b!4508821 (= e!2808840 e!2808841)))

(declare-fun c!769055 () Bool)

(assert (=> b!4508821 (= c!769055 (and ((_ is Cons!50576) (toList!4280 lt!1686670)) (not (= (_1!28783 (h!56407 (toList!4280 lt!1686670))) key!3287))))))

(declare-fun d!1386454 () Bool)

(declare-fun c!769054 () Bool)

(assert (=> d!1386454 (= c!769054 (and ((_ is Cons!50576) (toList!4280 lt!1686670)) (= (_1!28783 (h!56407 (toList!4280 lt!1686670))) key!3287)))))

(assert (=> d!1386454 (= (getValueByKey!1049 (toList!4280 lt!1686670) key!3287) e!2808840)))

(declare-fun b!4508820 () Bool)

(assert (=> b!4508820 (= e!2808840 (Some!11068 (_2!28783 (h!56407 (toList!4280 lt!1686670)))))))

(declare-fun b!4508822 () Bool)

(assert (=> b!4508822 (= e!2808841 (getValueByKey!1049 (t!357662 (toList!4280 lt!1686670)) key!3287))))

(assert (= (and d!1386454 c!769054) b!4508820))

(assert (= (and d!1386454 (not c!769054)) b!4508821))

(assert (= (and b!4508821 c!769055) b!4508822))

(assert (= (and b!4508821 (not c!769055)) b!4508823))

(declare-fun m!5246857 () Bool)

(assert (=> b!4508822 m!5246857))

(assert (=> b!4508323 d!1386454))

(declare-fun d!1386458 () Bool)

(assert (=> d!1386458 (contains!13271 (getKeysList!443 (toList!4280 lt!1686670)) key!3287)))

(declare-fun lt!1687301 () Unit!93112)

(declare-fun choose!29270 (List!50700 K!11980) Unit!93112)

(assert (=> d!1386458 (= lt!1687301 (choose!29270 (toList!4280 lt!1686670) key!3287))))

(assert (=> d!1386458 (invariantList!995 (toList!4280 lt!1686670))))

(assert (=> d!1386458 (= (lemmaInListThenGetKeysListContains!439 (toList!4280 lt!1686670) key!3287) lt!1687301)))

(declare-fun bs!845524 () Bool)

(assert (= bs!845524 d!1386458))

(assert (=> bs!845524 m!5245943))

(assert (=> bs!845524 m!5245943))

(declare-fun m!5246859 () Bool)

(assert (=> bs!845524 m!5246859))

(declare-fun m!5246861 () Bool)

(assert (=> bs!845524 m!5246861))

(assert (=> bs!845524 m!5246847))

(assert (=> b!4508323 d!1386458))

(declare-fun d!1386460 () Bool)

(declare-fun c!769056 () Bool)

(assert (=> d!1386460 (= c!769056 (and ((_ is Cons!50577) (toList!4279 lt!1687039)) (= (_1!28784 (h!56408 (toList!4279 lt!1687039))) (_1!28784 lt!1686677))))))

(declare-fun e!2808842 () Option!11068)

(assert (=> d!1386460 (= (getValueByKey!1048 (toList!4279 lt!1687039) (_1!28784 lt!1686677)) e!2808842)))

(declare-fun b!4508826 () Bool)

(declare-fun e!2808843 () Option!11068)

(assert (=> b!4508826 (= e!2808843 (getValueByKey!1048 (t!357663 (toList!4279 lt!1687039)) (_1!28784 lt!1686677)))))

(declare-fun b!4508825 () Bool)

(assert (=> b!4508825 (= e!2808842 e!2808843)))

(declare-fun c!769057 () Bool)

(assert (=> b!4508825 (= c!769057 (and ((_ is Cons!50577) (toList!4279 lt!1687039)) (not (= (_1!28784 (h!56408 (toList!4279 lt!1687039))) (_1!28784 lt!1686677)))))))

(declare-fun b!4508824 () Bool)

(assert (=> b!4508824 (= e!2808842 (Some!11067 (_2!28784 (h!56408 (toList!4279 lt!1687039)))))))

(declare-fun b!4508827 () Bool)

(assert (=> b!4508827 (= e!2808843 None!11067)))

(assert (= (and d!1386460 c!769056) b!4508824))

(assert (= (and d!1386460 (not c!769056)) b!4508825))

(assert (= (and b!4508825 c!769057) b!4508826))

(assert (= (and b!4508825 (not c!769057)) b!4508827))

(declare-fun m!5246863 () Bool)

(assert (=> b!4508826 m!5246863))

(assert (=> b!4508379 d!1386460))

(declare-fun d!1386462 () Bool)

(declare-fun c!769060 () Bool)

(assert (=> d!1386462 (= c!769060 ((_ is Nil!50577) (toList!4279 lm!1477)))))

(declare-fun e!2808846 () (InoxSet tuple2!50980))

(assert (=> d!1386462 (= (content!8291 (toList!4279 lm!1477)) e!2808846)))

(declare-fun b!4508832 () Bool)

(assert (=> b!4508832 (= e!2808846 ((as const (Array tuple2!50980 Bool)) false))))

(declare-fun b!4508833 () Bool)

(assert (=> b!4508833 (= e!2808846 ((_ map or) (store ((as const (Array tuple2!50980 Bool)) false) (h!56408 (toList!4279 lm!1477)) true) (content!8291 (t!357663 (toList!4279 lm!1477)))))))

(assert (= (and d!1386462 c!769060) b!4508832))

(assert (= (and d!1386462 (not c!769060)) b!4508833))

(declare-fun m!5246865 () Bool)

(assert (=> b!4508833 m!5246865))

(assert (=> b!4508833 m!5245881))

(assert (=> d!1386210 d!1386462))

(declare-fun d!1386464 () Bool)

(declare-fun lt!1687302 () Bool)

(assert (=> d!1386464 (= lt!1687302 (select (content!8293 (keys!17548 lt!1686670)) key!3287))))

(declare-fun e!2808847 () Bool)

(assert (=> d!1386464 (= lt!1687302 e!2808847)))

(declare-fun res!1875179 () Bool)

(assert (=> d!1386464 (=> (not res!1875179) (not e!2808847))))

(assert (=> d!1386464 (= res!1875179 ((_ is Cons!50579) (keys!17548 lt!1686670)))))

(assert (=> d!1386464 (= (contains!13271 (keys!17548 lt!1686670) key!3287) lt!1687302)))

(declare-fun b!4508834 () Bool)

(declare-fun e!2808848 () Bool)

(assert (=> b!4508834 (= e!2808847 e!2808848)))

(declare-fun res!1875180 () Bool)

(assert (=> b!4508834 (=> res!1875180 e!2808848)))

(assert (=> b!4508834 (= res!1875180 (= (h!56412 (keys!17548 lt!1686670)) key!3287))))

(declare-fun b!4508835 () Bool)

(assert (=> b!4508835 (= e!2808848 (contains!13271 (t!357665 (keys!17548 lt!1686670)) key!3287))))

(assert (= (and d!1386464 res!1875179) b!4508834))

(assert (= (and b!4508834 (not res!1875180)) b!4508835))

(assert (=> d!1386464 m!5245947))

(assert (=> d!1386464 m!5246043))

(declare-fun m!5246867 () Bool)

(assert (=> d!1386464 m!5246867))

(declare-fun m!5246869 () Bool)

(assert (=> b!4508835 m!5246869))

(assert (=> b!4508324 d!1386464))

(assert (=> b!4508324 d!1386316))

(declare-fun d!1386466 () Bool)

(declare-fun lt!1687303 () Bool)

(assert (=> d!1386466 (= lt!1687303 (select (content!8291 (toList!4279 lt!1687039)) lt!1686677))))

(declare-fun e!2808850 () Bool)

(assert (=> d!1386466 (= lt!1687303 e!2808850)))

(declare-fun res!1875181 () Bool)

(assert (=> d!1386466 (=> (not res!1875181) (not e!2808850))))

(assert (=> d!1386466 (= res!1875181 ((_ is Cons!50577) (toList!4279 lt!1687039)))))

(assert (=> d!1386466 (= (contains!13268 (toList!4279 lt!1687039) lt!1686677) lt!1687303)))

(declare-fun b!4508836 () Bool)

(declare-fun e!2808849 () Bool)

(assert (=> b!4508836 (= e!2808850 e!2808849)))

(declare-fun res!1875182 () Bool)

(assert (=> b!4508836 (=> res!1875182 e!2808849)))

(assert (=> b!4508836 (= res!1875182 (= (h!56408 (toList!4279 lt!1687039)) lt!1686677))))

(declare-fun b!4508837 () Bool)

(assert (=> b!4508837 (= e!2808849 (contains!13268 (t!357663 (toList!4279 lt!1687039)) lt!1686677))))

(assert (= (and d!1386466 res!1875181) b!4508836))

(assert (= (and b!4508836 (not res!1875182)) b!4508837))

(declare-fun m!5246871 () Bool)

(assert (=> d!1386466 m!5246871))

(declare-fun m!5246873 () Bool)

(assert (=> d!1386466 m!5246873))

(declare-fun m!5246875 () Bool)

(assert (=> b!4508837 m!5246875))

(assert (=> b!4508380 d!1386466))

(assert (=> b!4508344 d!1386320))

(assert (=> b!4508344 d!1386322))

(declare-fun d!1386468 () Bool)

(declare-fun res!1875183 () Bool)

(declare-fun e!2808851 () Bool)

(assert (=> d!1386468 (=> res!1875183 e!2808851)))

(assert (=> d!1386468 (= res!1875183 (and ((_ is Cons!50576) (toList!4280 lt!1686664)) (= (_1!28783 (h!56407 (toList!4280 lt!1686664))) key!3287)))))

(assert (=> d!1386468 (= (containsKey!1715 (toList!4280 lt!1686664) key!3287) e!2808851)))

(declare-fun b!4508838 () Bool)

(declare-fun e!2808852 () Bool)

(assert (=> b!4508838 (= e!2808851 e!2808852)))

(declare-fun res!1875184 () Bool)

(assert (=> b!4508838 (=> (not res!1875184) (not e!2808852))))

(assert (=> b!4508838 (= res!1875184 ((_ is Cons!50576) (toList!4280 lt!1686664)))))

(declare-fun b!4508839 () Bool)

(assert (=> b!4508839 (= e!2808852 (containsKey!1715 (t!357662 (toList!4280 lt!1686664)) key!3287))))

(assert (= (and d!1386468 (not res!1875183)) b!4508838))

(assert (= (and b!4508838 res!1875184) b!4508839))

(declare-fun m!5246877 () Bool)

(assert (=> b!4508839 m!5246877))

(assert (=> b!4508329 d!1386468))

(declare-fun d!1386470 () Bool)

(assert (=> d!1386470 (containsKey!1715 (toList!4280 lt!1686664) key!3287)))

(declare-fun lt!1687314 () Unit!93112)

(declare-fun choose!29272 (List!50700 K!11980) Unit!93112)

(assert (=> d!1386470 (= lt!1687314 (choose!29272 (toList!4280 lt!1686664) key!3287))))

(assert (=> d!1386470 (invariantList!995 (toList!4280 lt!1686664))))

(assert (=> d!1386470 (= (lemmaInGetKeysListThenContainsKey!442 (toList!4280 lt!1686664) key!3287) lt!1687314)))

(declare-fun bs!845525 () Bool)

(assert (= bs!845525 d!1386470))

(assert (=> bs!845525 m!5245973))

(declare-fun m!5246879 () Bool)

(assert (=> bs!845525 m!5246879))

(assert (=> bs!845525 m!5246715))

(assert (=> b!4508329 d!1386470))

(declare-fun d!1386472 () Bool)

(declare-fun lt!1687315 () Bool)

(assert (=> d!1386472 (= lt!1687315 (select (content!8293 e!2808521) key!3287))))

(declare-fun e!2808855 () Bool)

(assert (=> d!1386472 (= lt!1687315 e!2808855)))

(declare-fun res!1875189 () Bool)

(assert (=> d!1386472 (=> (not res!1875189) (not e!2808855))))

(assert (=> d!1386472 (= res!1875189 ((_ is Cons!50579) e!2808521))))

(assert (=> d!1386472 (= (contains!13271 e!2808521 key!3287) lt!1687315)))

(declare-fun b!4508844 () Bool)

(declare-fun e!2808856 () Bool)

(assert (=> b!4508844 (= e!2808855 e!2808856)))

(declare-fun res!1875190 () Bool)

(assert (=> b!4508844 (=> res!1875190 e!2808856)))

(assert (=> b!4508844 (= res!1875190 (= (h!56412 e!2808521) key!3287))))

(declare-fun b!4508845 () Bool)

(assert (=> b!4508845 (= e!2808856 (contains!13271 (t!357665 e!2808521) key!3287))))

(assert (= (and d!1386472 res!1875189) b!4508844))

(assert (= (and b!4508844 (not res!1875190)) b!4508845))

(declare-fun m!5246881 () Bool)

(assert (=> d!1386472 m!5246881))

(declare-fun m!5246883 () Bool)

(assert (=> d!1386472 m!5246883))

(declare-fun m!5246885 () Bool)

(assert (=> b!4508845 m!5246885))

(assert (=> bm!313904 d!1386472))

(declare-fun d!1386474 () Bool)

(assert (=> d!1386474 (= (invariantList!995 (toList!4280 lt!1686928)) (noDuplicatedKeys!252 (toList!4280 lt!1686928)))))

(declare-fun bs!845526 () Bool)

(assert (= bs!845526 d!1386474))

(declare-fun m!5246887 () Bool)

(assert (=> bs!845526 m!5246887))

(assert (=> b!4508215 d!1386474))

(declare-fun d!1386476 () Bool)

(declare-fun c!769066 () Bool)

(assert (=> d!1386476 (= c!769066 ((_ is Nil!50576) (toList!4280 lt!1686671)))))

(declare-fun e!2808868 () (InoxSet tuple2!50978))

(assert (=> d!1386476 (= (content!8290 (toList!4280 lt!1686671)) e!2808868)))

(declare-fun b!4508863 () Bool)

(assert (=> b!4508863 (= e!2808868 ((as const (Array tuple2!50978 Bool)) false))))

(declare-fun b!4508864 () Bool)

(assert (=> b!4508864 (= e!2808868 ((_ map or) (store ((as const (Array tuple2!50978 Bool)) false) (h!56407 (toList!4280 lt!1686671)) true) (content!8290 (t!357662 (toList!4280 lt!1686671)))))))

(assert (= (and d!1386476 c!769066) b!4508863))

(assert (= (and d!1386476 (not c!769066)) b!4508864))

(declare-fun m!5246901 () Bool)

(assert (=> b!4508864 m!5246901))

(declare-fun m!5246903 () Bool)

(assert (=> b!4508864 m!5246903))

(assert (=> d!1386232 d!1386476))

(declare-fun d!1386482 () Bool)

(declare-fun c!769067 () Bool)

(assert (=> d!1386482 (= c!769067 ((_ is Nil!50576) (toList!4280 lt!1686664)))))

(declare-fun e!2808869 () (InoxSet tuple2!50978))

(assert (=> d!1386482 (= (content!8290 (toList!4280 lt!1686664)) e!2808869)))

(declare-fun b!4508865 () Bool)

(assert (=> b!4508865 (= e!2808869 ((as const (Array tuple2!50978 Bool)) false))))

(declare-fun b!4508866 () Bool)

(assert (=> b!4508866 (= e!2808869 ((_ map or) (store ((as const (Array tuple2!50978 Bool)) false) (h!56407 (toList!4280 lt!1686664)) true) (content!8290 (t!357662 (toList!4280 lt!1686664)))))))

(assert (= (and d!1386482 c!769067) b!4508865))

(assert (= (and d!1386482 (not c!769067)) b!4508866))

(declare-fun m!5246905 () Bool)

(assert (=> b!4508866 m!5246905))

(declare-fun m!5246907 () Bool)

(assert (=> b!4508866 m!5246907))

(assert (=> d!1386232 d!1386482))

(declare-fun d!1386484 () Bool)

(declare-fun c!769068 () Bool)

(assert (=> d!1386484 (= c!769068 (and ((_ is Cons!50577) (toList!4279 lt!1686717)) (= (_1!28784 (h!56408 (toList!4279 lt!1686717))) (_1!28784 lt!1686677))))))

(declare-fun e!2808870 () Option!11068)

(assert (=> d!1386484 (= (getValueByKey!1048 (toList!4279 lt!1686717) (_1!28784 lt!1686677)) e!2808870)))

(declare-fun b!4508869 () Bool)

(declare-fun e!2808871 () Option!11068)

(assert (=> b!4508869 (= e!2808871 (getValueByKey!1048 (t!357663 (toList!4279 lt!1686717)) (_1!28784 lt!1686677)))))

(declare-fun b!4508868 () Bool)

(assert (=> b!4508868 (= e!2808870 e!2808871)))

(declare-fun c!769069 () Bool)

(assert (=> b!4508868 (= c!769069 (and ((_ is Cons!50577) (toList!4279 lt!1686717)) (not (= (_1!28784 (h!56408 (toList!4279 lt!1686717))) (_1!28784 lt!1686677)))))))

(declare-fun b!4508867 () Bool)

(assert (=> b!4508867 (= e!2808870 (Some!11067 (_2!28784 (h!56408 (toList!4279 lt!1686717)))))))

(declare-fun b!4508870 () Bool)

(assert (=> b!4508870 (= e!2808871 None!11067)))

(assert (= (and d!1386484 c!769068) b!4508867))

(assert (= (and d!1386484 (not c!769068)) b!4508868))

(assert (= (and b!4508868 c!769069) b!4508869))

(assert (= (and b!4508868 (not c!769069)) b!4508870))

(declare-fun m!5246915 () Bool)

(assert (=> b!4508869 m!5246915))

(assert (=> b!4508090 d!1386484))

(declare-fun d!1386486 () Bool)

(declare-fun lt!1687328 () Bool)

(assert (=> d!1386486 (= lt!1687328 (select (content!8291 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686676))))

(declare-fun e!2808873 () Bool)

(assert (=> d!1386486 (= lt!1687328 e!2808873)))

(declare-fun res!1875198 () Bool)

(assert (=> d!1386486 (=> (not res!1875198) (not e!2808873))))

(assert (=> d!1386486 (= res!1875198 ((_ is Cons!50577) (t!357663 (t!357663 (toList!4279 lm!1477)))))))

(assert (=> d!1386486 (= (contains!13268 (t!357663 (t!357663 (toList!4279 lm!1477))) lt!1686676) lt!1687328)))

(declare-fun b!4508871 () Bool)

(declare-fun e!2808872 () Bool)

(assert (=> b!4508871 (= e!2808873 e!2808872)))

(declare-fun res!1875199 () Bool)

(assert (=> b!4508871 (=> res!1875199 e!2808872)))

(assert (=> b!4508871 (= res!1875199 (= (h!56408 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686676))))

(declare-fun b!4508872 () Bool)

(assert (=> b!4508872 (= e!2808872 (contains!13268 (t!357663 (t!357663 (t!357663 (toList!4279 lm!1477)))) lt!1686676))))

(assert (= (and d!1386486 res!1875198) b!4508871))

(assert (= (and b!4508871 (not res!1875199)) b!4508872))

(declare-fun m!5246931 () Bool)

(assert (=> d!1386486 m!5246931))

(declare-fun m!5246933 () Bool)

(assert (=> d!1386486 m!5246933))

(declare-fun m!5246935 () Bool)

(assert (=> b!4508872 m!5246935))

(assert (=> b!4508277 d!1386486))

(declare-fun d!1386490 () Bool)

(assert (=> d!1386490 (isDefined!8355 (getValueByKey!1049 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(declare-fun lt!1687329 () Unit!93112)

(assert (=> d!1386490 (= lt!1687329 (choose!29269 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(assert (=> d!1386490 (invariantList!995 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))

(assert (=> d!1386490 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287) lt!1687329)))

(declare-fun bs!845527 () Bool)

(assert (= bs!845527 d!1386490))

(assert (=> bs!845527 m!5245907))

(assert (=> bs!845527 m!5245907))

(assert (=> bs!845527 m!5245909))

(declare-fun m!5246937 () Bool)

(assert (=> bs!845527 m!5246937))

(declare-fun m!5246939 () Bool)

(assert (=> bs!845527 m!5246939))

(assert (=> b!4508312 d!1386490))

(declare-fun d!1386492 () Bool)

(assert (=> d!1386492 (= (isDefined!8355 (getValueByKey!1049 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287)) (not (isEmpty!28631 (getValueByKey!1049 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))))

(declare-fun bs!845528 () Bool)

(assert (= bs!845528 d!1386492))

(assert (=> bs!845528 m!5245907))

(declare-fun m!5246941 () Bool)

(assert (=> bs!845528 m!5246941))

(assert (=> b!4508312 d!1386492))

(declare-fun b!4508876 () Bool)

(declare-fun e!2808875 () Option!11069)

(assert (=> b!4508876 (= e!2808875 None!11068)))

(declare-fun b!4508874 () Bool)

(declare-fun e!2808874 () Option!11069)

(assert (=> b!4508874 (= e!2808874 e!2808875)))

(declare-fun c!769071 () Bool)

(assert (=> b!4508874 (= c!769071 (and ((_ is Cons!50576) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (not (= (_1!28783 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) key!3287))))))

(declare-fun d!1386494 () Bool)

(declare-fun c!769070 () Bool)

(assert (=> d!1386494 (= c!769070 (and ((_ is Cons!50576) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= (_1!28783 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) key!3287)))))

(assert (=> d!1386494 (= (getValueByKey!1049 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287) e!2808874)))

(declare-fun b!4508873 () Bool)

(assert (=> b!4508873 (= e!2808874 (Some!11068 (_2!28783 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))))

(declare-fun b!4508875 () Bool)

(assert (=> b!4508875 (= e!2808875 (getValueByKey!1049 (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) key!3287))))

(assert (= (and d!1386494 c!769070) b!4508873))

(assert (= (and d!1386494 (not c!769070)) b!4508874))

(assert (= (and b!4508874 c!769071) b!4508875))

(assert (= (and b!4508874 (not c!769071)) b!4508876))

(declare-fun m!5246943 () Bool)

(assert (=> b!4508875 m!5246943))

(assert (=> b!4508312 d!1386494))

(declare-fun d!1386496 () Bool)

(assert (=> d!1386496 (contains!13271 (getKeysList!443 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) key!3287)))

(declare-fun lt!1687330 () Unit!93112)

(assert (=> d!1386496 (= lt!1687330 (choose!29270 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(assert (=> d!1386496 (invariantList!995 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))

(assert (=> d!1386496 (= (lemmaInListThenGetKeysListContains!439 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287) lt!1687330)))

(declare-fun bs!845530 () Bool)

(assert (= bs!845530 d!1386496))

(assert (=> bs!845530 m!5245915))

(assert (=> bs!845530 m!5245915))

(declare-fun m!5246945 () Bool)

(assert (=> bs!845530 m!5246945))

(declare-fun m!5246947 () Bool)

(assert (=> bs!845530 m!5246947))

(assert (=> bs!845530 m!5246939))

(assert (=> b!4508312 d!1386496))

(declare-fun d!1386500 () Bool)

(declare-fun e!2808879 () Bool)

(assert (=> d!1386500 e!2808879))

(declare-fun res!1875202 () Bool)

(assert (=> d!1386500 (=> res!1875202 e!2808879)))

(declare-fun lt!1687331 () Bool)

(assert (=> d!1386500 (= res!1875202 (not lt!1687331))))

(declare-fun lt!1687332 () Bool)

(assert (=> d!1386500 (= lt!1687331 lt!1687332)))

(declare-fun lt!1687333 () Unit!93112)

(declare-fun e!2808878 () Unit!93112)

(assert (=> d!1386500 (= lt!1687333 e!2808878)))

(declare-fun c!769072 () Bool)

(assert (=> d!1386500 (= c!769072 lt!1687332)))

(assert (=> d!1386500 (= lt!1687332 (containsKey!1714 (toList!4279 lt!1686717) (_1!28784 lt!1686677)))))

(assert (=> d!1386500 (= (contains!13269 lt!1686717 (_1!28784 lt!1686677)) lt!1687331)))

(declare-fun b!4508879 () Bool)

(declare-fun lt!1687334 () Unit!93112)

(assert (=> b!4508879 (= e!2808878 lt!1687334)))

(assert (=> b!4508879 (= lt!1687334 (lemmaContainsKeyImpliesGetValueByKeyDefined!951 (toList!4279 lt!1686717) (_1!28784 lt!1686677)))))

(assert (=> b!4508879 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1686717) (_1!28784 lt!1686677)))))

(declare-fun b!4508880 () Bool)

(declare-fun Unit!93238 () Unit!93112)

(assert (=> b!4508880 (= e!2808878 Unit!93238)))

(declare-fun b!4508881 () Bool)

(assert (=> b!4508881 (= e!2808879 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1686717) (_1!28784 lt!1686677))))))

(assert (= (and d!1386500 c!769072) b!4508879))

(assert (= (and d!1386500 (not c!769072)) b!4508880))

(assert (= (and d!1386500 (not res!1875202)) b!4508881))

(declare-fun m!5246953 () Bool)

(assert (=> d!1386500 m!5246953))

(declare-fun m!5246955 () Bool)

(assert (=> b!4508879 m!5246955))

(assert (=> b!4508879 m!5245503))

(assert (=> b!4508879 m!5245503))

(declare-fun m!5246957 () Bool)

(assert (=> b!4508879 m!5246957))

(assert (=> b!4508881 m!5245503))

(assert (=> b!4508881 m!5245503))

(assert (=> b!4508881 m!5246957))

(assert (=> d!1386068 d!1386500))

(declare-fun d!1386504 () Bool)

(declare-fun c!769073 () Bool)

(assert (=> d!1386504 (= c!769073 (and ((_ is Cons!50577) lt!1686720) (= (_1!28784 (h!56408 lt!1686720)) (_1!28784 lt!1686677))))))

(declare-fun e!2808883 () Option!11068)

(assert (=> d!1386504 (= (getValueByKey!1048 lt!1686720 (_1!28784 lt!1686677)) e!2808883)))

(declare-fun b!4508887 () Bool)

(declare-fun e!2808884 () Option!11068)

(assert (=> b!4508887 (= e!2808884 (getValueByKey!1048 (t!357663 lt!1686720) (_1!28784 lt!1686677)))))

(declare-fun b!4508886 () Bool)

(assert (=> b!4508886 (= e!2808883 e!2808884)))

(declare-fun c!769074 () Bool)

(assert (=> b!4508886 (= c!769074 (and ((_ is Cons!50577) lt!1686720) (not (= (_1!28784 (h!56408 lt!1686720)) (_1!28784 lt!1686677)))))))

(declare-fun b!4508885 () Bool)

(assert (=> b!4508885 (= e!2808883 (Some!11067 (_2!28784 (h!56408 lt!1686720))))))

(declare-fun b!4508888 () Bool)

(assert (=> b!4508888 (= e!2808884 None!11067)))

(assert (= (and d!1386504 c!769073) b!4508885))

(assert (= (and d!1386504 (not c!769073)) b!4508886))

(assert (= (and b!4508886 c!769074) b!4508887))

(assert (= (and b!4508886 (not c!769074)) b!4508888))

(declare-fun m!5246963 () Bool)

(assert (=> b!4508887 m!5246963))

(assert (=> d!1386068 d!1386504))

(declare-fun d!1386508 () Bool)

(assert (=> d!1386508 (= (getValueByKey!1048 lt!1686720 (_1!28784 lt!1686677)) (Some!11067 (_2!28784 lt!1686677)))))

(declare-fun lt!1687335 () Unit!93112)

(assert (=> d!1386508 (= lt!1687335 (choose!29265 lt!1686720 (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))

(declare-fun e!2808885 () Bool)

(assert (=> d!1386508 e!2808885))

(declare-fun res!1875206 () Bool)

(assert (=> d!1386508 (=> (not res!1875206) (not e!2808885))))

(assert (=> d!1386508 (= res!1875206 (isStrictlySorted!409 lt!1686720))))

(assert (=> d!1386508 (= (lemmaContainsTupThenGetReturnValue!646 lt!1686720 (_1!28784 lt!1686677) (_2!28784 lt!1686677)) lt!1687335)))

(declare-fun b!4508889 () Bool)

(declare-fun res!1875207 () Bool)

(assert (=> b!4508889 (=> (not res!1875207) (not e!2808885))))

(assert (=> b!4508889 (= res!1875207 (containsKey!1714 lt!1686720 (_1!28784 lt!1686677)))))

(declare-fun b!4508890 () Bool)

(assert (=> b!4508890 (= e!2808885 (contains!13268 lt!1686720 (tuple2!50981 (_1!28784 lt!1686677) (_2!28784 lt!1686677))))))

(assert (= (and d!1386508 res!1875206) b!4508889))

(assert (= (and b!4508889 res!1875207) b!4508890))

(assert (=> d!1386508 m!5245491))

(declare-fun m!5246965 () Bool)

(assert (=> d!1386508 m!5246965))

(declare-fun m!5246967 () Bool)

(assert (=> d!1386508 m!5246967))

(declare-fun m!5246969 () Bool)

(assert (=> b!4508889 m!5246969))

(declare-fun m!5246971 () Bool)

(assert (=> b!4508890 m!5246971))

(assert (=> d!1386068 d!1386508))

(declare-fun c!769077 () Bool)

(declare-fun bm!313954 () Bool)

(declare-fun e!2808890 () List!50701)

(declare-fun call!313961 () List!50701)

(assert (=> bm!313954 (= call!313961 ($colon$colon!915 e!2808890 (ite c!769077 (h!56408 (toList!4279 lm!1477)) (tuple2!50981 (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))))

(declare-fun c!769076 () Bool)

(assert (=> bm!313954 (= c!769076 c!769077)))

(declare-fun b!4508891 () Bool)

(declare-fun e!2808886 () Bool)

(declare-fun lt!1687336 () List!50701)

(assert (=> b!4508891 (= e!2808886 (contains!13268 lt!1687336 (tuple2!50981 (_1!28784 lt!1686677) (_2!28784 lt!1686677))))))

(declare-fun b!4508892 () Bool)

(declare-fun e!2808887 () List!50701)

(declare-fun call!313959 () List!50701)

(assert (=> b!4508892 (= e!2808887 call!313959)))

(declare-fun b!4508893 () Bool)

(declare-fun res!1875208 () Bool)

(assert (=> b!4508893 (=> (not res!1875208) (not e!2808886))))

(assert (=> b!4508893 (= res!1875208 (containsKey!1714 lt!1687336 (_1!28784 lt!1686677)))))

(declare-fun b!4508894 () Bool)

(assert (=> b!4508894 (= e!2808887 call!313959)))

(declare-fun bm!313955 () Bool)

(declare-fun call!313960 () List!50701)

(assert (=> bm!313955 (= call!313959 call!313960)))

(declare-fun b!4508895 () Bool)

(declare-fun e!2808889 () List!50701)

(assert (=> b!4508895 (= e!2808889 call!313960)))

(declare-fun b!4508896 () Bool)

(declare-fun c!769075 () Bool)

(assert (=> b!4508896 (= c!769075 (and ((_ is Cons!50577) (toList!4279 lm!1477)) (bvsgt (_1!28784 (h!56408 (toList!4279 lm!1477))) (_1!28784 lt!1686677))))))

(assert (=> b!4508896 (= e!2808889 e!2808887)))

(declare-fun b!4508897 () Bool)

(assert (=> b!4508897 (= e!2808890 (insertStrictlySorted!386 (t!357663 (toList!4279 lm!1477)) (_1!28784 lt!1686677) (_2!28784 lt!1686677)))))

(declare-fun b!4508898 () Bool)

(declare-fun e!2808888 () List!50701)

(assert (=> b!4508898 (= e!2808888 e!2808889)))

(declare-fun c!769078 () Bool)

(assert (=> b!4508898 (= c!769078 (and ((_ is Cons!50577) (toList!4279 lm!1477)) (= (_1!28784 (h!56408 (toList!4279 lm!1477))) (_1!28784 lt!1686677))))))

(declare-fun b!4508899 () Bool)

(assert (=> b!4508899 (= e!2808888 call!313961)))

(declare-fun b!4508900 () Bool)

(assert (=> b!4508900 (= e!2808890 (ite c!769078 (t!357663 (toList!4279 lm!1477)) (ite c!769075 (Cons!50577 (h!56408 (toList!4279 lm!1477)) (t!357663 (toList!4279 lm!1477))) Nil!50577)))))

(declare-fun bm!313956 () Bool)

(assert (=> bm!313956 (= call!313960 call!313961)))

(declare-fun d!1386510 () Bool)

(assert (=> d!1386510 e!2808886))

(declare-fun res!1875209 () Bool)

(assert (=> d!1386510 (=> (not res!1875209) (not e!2808886))))

(assert (=> d!1386510 (= res!1875209 (isStrictlySorted!409 lt!1687336))))

(assert (=> d!1386510 (= lt!1687336 e!2808888)))

(assert (=> d!1386510 (= c!769077 (and ((_ is Cons!50577) (toList!4279 lm!1477)) (bvslt (_1!28784 (h!56408 (toList!4279 lm!1477))) (_1!28784 lt!1686677))))))

(assert (=> d!1386510 (isStrictlySorted!409 (toList!4279 lm!1477))))

(assert (=> d!1386510 (= (insertStrictlySorted!386 (toList!4279 lm!1477) (_1!28784 lt!1686677) (_2!28784 lt!1686677)) lt!1687336)))

(assert (= (and d!1386510 c!769077) b!4508899))

(assert (= (and d!1386510 (not c!769077)) b!4508898))

(assert (= (and b!4508898 c!769078) b!4508895))

(assert (= (and b!4508898 (not c!769078)) b!4508896))

(assert (= (and b!4508896 c!769075) b!4508892))

(assert (= (and b!4508896 (not c!769075)) b!4508894))

(assert (= (or b!4508892 b!4508894) bm!313955))

(assert (= (or b!4508895 bm!313955) bm!313956))

(assert (= (or b!4508899 bm!313956) bm!313954))

(assert (= (and bm!313954 c!769076) b!4508897))

(assert (= (and bm!313954 (not c!769076)) b!4508900))

(assert (= (and d!1386510 res!1875209) b!4508893))

(assert (= (and b!4508893 res!1875208) b!4508891))

(declare-fun m!5246973 () Bool)

(assert (=> b!4508893 m!5246973))

(declare-fun m!5246975 () Bool)

(assert (=> bm!313954 m!5246975))

(declare-fun m!5246977 () Bool)

(assert (=> b!4508897 m!5246977))

(declare-fun m!5246979 () Bool)

(assert (=> d!1386510 m!5246979))

(assert (=> d!1386510 m!5246017))

(declare-fun m!5246981 () Bool)

(assert (=> b!4508891 m!5246981))

(assert (=> d!1386068 d!1386510))

(declare-fun d!1386512 () Bool)

(declare-fun c!769079 () Bool)

(assert (=> d!1386512 (= c!769079 ((_ is Nil!50577) (t!357663 (toList!4279 lm!1477))))))

(declare-fun e!2808897 () (InoxSet tuple2!50980))

(assert (=> d!1386512 (= (content!8291 (t!357663 (toList!4279 lm!1477))) e!2808897)))

(declare-fun b!4508907 () Bool)

(assert (=> b!4508907 (= e!2808897 ((as const (Array tuple2!50980 Bool)) false))))

(declare-fun b!4508908 () Bool)

(assert (=> b!4508908 (= e!2808897 ((_ map or) (store ((as const (Array tuple2!50980 Bool)) false) (h!56408 (t!357663 (toList!4279 lm!1477))) true) (content!8291 (t!357663 (t!357663 (toList!4279 lm!1477))))))))

(assert (= (and d!1386512 c!769079) b!4508907))

(assert (= (and d!1386512 (not c!769079)) b!4508908))

(declare-fun m!5246985 () Bool)

(assert (=> b!4508908 m!5246985))

(assert (=> b!4508908 m!5246931))

(assert (=> d!1386172 d!1386512))

(declare-fun d!1386516 () Bool)

(declare-fun lt!1687338 () Bool)

(assert (=> d!1386516 (= lt!1687338 (select (content!8293 (keys!17548 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) key!3287))))

(declare-fun e!2808900 () Bool)

(assert (=> d!1386516 (= lt!1687338 e!2808900)))

(declare-fun res!1875218 () Bool)

(assert (=> d!1386516 (=> (not res!1875218) (not e!2808900))))

(assert (=> d!1386516 (= res!1875218 ((_ is Cons!50579) (keys!17548 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))

(assert (=> d!1386516 (= (contains!13271 (keys!17548 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287) lt!1687338)))

(declare-fun b!4508911 () Bool)

(declare-fun e!2808901 () Bool)

(assert (=> b!4508911 (= e!2808900 e!2808901)))

(declare-fun res!1875219 () Bool)

(assert (=> b!4508911 (=> res!1875219 e!2808901)))

(assert (=> b!4508911 (= res!1875219 (= (h!56412 (keys!17548 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) key!3287))))

(declare-fun b!4508912 () Bool)

(assert (=> b!4508912 (= e!2808901 (contains!13271 (t!357665 (keys!17548 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) key!3287))))

(assert (= (and d!1386516 res!1875218) b!4508911))

(assert (= (and b!4508911 (not res!1875219)) b!4508912))

(assert (=> d!1386516 m!5245919))

(declare-fun m!5246993 () Bool)

(assert (=> d!1386516 m!5246993))

(declare-fun m!5246995 () Bool)

(assert (=> d!1386516 m!5246995))

(declare-fun m!5246997 () Bool)

(assert (=> b!4508912 m!5246997))

(assert (=> b!4508313 d!1386516))

(assert (=> b!4508313 d!1386376))

(declare-fun d!1386520 () Bool)

(assert (=> d!1386520 (dynLambda!21132 lambda!170064 (h!56407 (_2!28784 lt!1686680)))))

(declare-fun lt!1687346 () Unit!93112)

(declare-fun choose!29273 (List!50700 Int tuple2!50978) Unit!93112)

(assert (=> d!1386520 (= lt!1687346 (choose!29273 (toList!4280 lt!1686916) lambda!170064 (h!56407 (_2!28784 lt!1686680))))))

(declare-fun e!2808910 () Bool)

(assert (=> d!1386520 e!2808910))

(declare-fun res!1875227 () Bool)

(assert (=> d!1386520 (=> (not res!1875227) (not e!2808910))))

(assert (=> d!1386520 (= res!1875227 (forall!10208 (toList!4280 lt!1686916) lambda!170064))))

(assert (=> d!1386520 (= (forallContained!2460 (toList!4280 lt!1686916) lambda!170064 (h!56407 (_2!28784 lt!1686680))) lt!1687346)))

(declare-fun b!4508924 () Bool)

(declare-fun contains!13273 (List!50700 tuple2!50978) Bool)

(assert (=> b!4508924 (= e!2808910 (contains!13273 (toList!4280 lt!1686916) (h!56407 (_2!28784 lt!1686680))))))

(assert (= (and d!1386520 res!1875227) b!4508924))

(declare-fun b_lambda!153563 () Bool)

(assert (=> (not b_lambda!153563) (not d!1386520)))

(declare-fun m!5247029 () Bool)

(assert (=> d!1386520 m!5247029))

(declare-fun m!5247031 () Bool)

(assert (=> d!1386520 m!5247031))

(assert (=> d!1386520 m!5245815))

(declare-fun m!5247033 () Bool)

(assert (=> b!4508924 m!5247033))

(assert (=> b!4508218 d!1386520))

(declare-fun b!4508925 () Bool)

(declare-fun e!2808915 () Bool)

(declare-fun e!2808911 () Bool)

(assert (=> b!4508925 (= e!2808915 e!2808911)))

(declare-fun res!1875229 () Bool)

(assert (=> b!4508925 (=> (not res!1875229) (not e!2808911))))

(assert (=> b!4508925 (= res!1875229 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686926) (_1!28783 (h!56407 (_2!28784 lt!1686680))))))))

(declare-fun b!4508926 () Bool)

(assert (=> b!4508926 false))

(declare-fun lt!1687347 () Unit!93112)

(declare-fun lt!1687350 () Unit!93112)

(assert (=> b!4508926 (= lt!1687347 lt!1687350)))

(assert (=> b!4508926 (containsKey!1715 (toList!4280 lt!1686926) (_1!28783 (h!56407 (_2!28784 lt!1686680))))))

(assert (=> b!4508926 (= lt!1687350 (lemmaInGetKeysListThenContainsKey!442 (toList!4280 lt!1686926) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun e!2808912 () Unit!93112)

(declare-fun Unit!93239 () Unit!93112)

(assert (=> b!4508926 (= e!2808912 Unit!93239)))

(declare-fun b!4508927 () Bool)

(declare-fun e!2808914 () Unit!93112)

(assert (=> b!4508927 (= e!2808914 e!2808912)))

(declare-fun c!769083 () Bool)

(declare-fun call!313962 () Bool)

(assert (=> b!4508927 (= c!769083 call!313962)))

(declare-fun bm!313957 () Bool)

(declare-fun e!2808916 () List!50703)

(assert (=> bm!313957 (= call!313962 (contains!13271 e!2808916 (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun c!769082 () Bool)

(declare-fun c!769084 () Bool)

(assert (=> bm!313957 (= c!769082 c!769084)))

(declare-fun b!4508928 () Bool)

(assert (=> b!4508928 (= e!2808911 (contains!13271 (keys!17548 lt!1686926) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun b!4508929 () Bool)

(declare-fun Unit!93240 () Unit!93112)

(assert (=> b!4508929 (= e!2808912 Unit!93240)))

(declare-fun b!4508930 () Bool)

(assert (=> b!4508930 (= e!2808916 (keys!17548 lt!1686926))))

(declare-fun b!4508931 () Bool)

(declare-fun lt!1687354 () Unit!93112)

(assert (=> b!4508931 (= e!2808914 lt!1687354)))

(declare-fun lt!1687348 () Unit!93112)

(assert (=> b!4508931 (= lt!1687348 (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 lt!1686926) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> b!4508931 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686926) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun lt!1687353 () Unit!93112)

(assert (=> b!4508931 (= lt!1687353 lt!1687348)))

(assert (=> b!4508931 (= lt!1687354 (lemmaInListThenGetKeysListContains!439 (toList!4280 lt!1686926) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> b!4508931 call!313962))

(declare-fun d!1386532 () Bool)

(assert (=> d!1386532 e!2808915))

(declare-fun res!1875230 () Bool)

(assert (=> d!1386532 (=> res!1875230 e!2808915)))

(declare-fun e!2808913 () Bool)

(assert (=> d!1386532 (= res!1875230 e!2808913)))

(declare-fun res!1875228 () Bool)

(assert (=> d!1386532 (=> (not res!1875228) (not e!2808913))))

(declare-fun lt!1687351 () Bool)

(assert (=> d!1386532 (= res!1875228 (not lt!1687351))))

(declare-fun lt!1687349 () Bool)

(assert (=> d!1386532 (= lt!1687351 lt!1687349)))

(declare-fun lt!1687352 () Unit!93112)

(assert (=> d!1386532 (= lt!1687352 e!2808914)))

(assert (=> d!1386532 (= c!769084 lt!1687349)))

(assert (=> d!1386532 (= lt!1687349 (containsKey!1715 (toList!4280 lt!1686926) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> d!1386532 (= (contains!13267 lt!1686926 (_1!28783 (h!56407 (_2!28784 lt!1686680)))) lt!1687351)))

(declare-fun b!4508932 () Bool)

(assert (=> b!4508932 (= e!2808913 (not (contains!13271 (keys!17548 lt!1686926) (_1!28783 (h!56407 (_2!28784 lt!1686680))))))))

(declare-fun b!4508933 () Bool)

(assert (=> b!4508933 (= e!2808916 (getKeysList!443 (toList!4280 lt!1686926)))))

(assert (= (and d!1386532 c!769084) b!4508931))

(assert (= (and d!1386532 (not c!769084)) b!4508927))

(assert (= (and b!4508927 c!769083) b!4508926))

(assert (= (and b!4508927 (not c!769083)) b!4508929))

(assert (= (or b!4508931 b!4508927) bm!313957))

(assert (= (and bm!313957 c!769082) b!4508933))

(assert (= (and bm!313957 (not c!769082)) b!4508930))

(assert (= (and d!1386532 res!1875228) b!4508932))

(assert (= (and d!1386532 (not res!1875230)) b!4508925))

(assert (= (and b!4508925 res!1875229) b!4508928))

(declare-fun m!5247035 () Bool)

(assert (=> b!4508931 m!5247035))

(declare-fun m!5247037 () Bool)

(assert (=> b!4508931 m!5247037))

(assert (=> b!4508931 m!5247037))

(declare-fun m!5247039 () Bool)

(assert (=> b!4508931 m!5247039))

(declare-fun m!5247041 () Bool)

(assert (=> b!4508931 m!5247041))

(declare-fun m!5247043 () Bool)

(assert (=> bm!313957 m!5247043))

(assert (=> b!4508925 m!5247037))

(assert (=> b!4508925 m!5247037))

(assert (=> b!4508925 m!5247039))

(declare-fun m!5247045 () Bool)

(assert (=> b!4508933 m!5247045))

(declare-fun m!5247047 () Bool)

(assert (=> d!1386532 m!5247047))

(declare-fun m!5247049 () Bool)

(assert (=> b!4508930 m!5247049))

(assert (=> b!4508926 m!5247047))

(declare-fun m!5247051 () Bool)

(assert (=> b!4508926 m!5247051))

(assert (=> b!4508932 m!5247049))

(assert (=> b!4508932 m!5247049))

(declare-fun m!5247053 () Bool)

(assert (=> b!4508932 m!5247053))

(assert (=> b!4508928 m!5247049))

(assert (=> b!4508928 m!5247049))

(assert (=> b!4508928 m!5247053))

(assert (=> b!4508218 d!1386532))

(declare-fun d!1386534 () Bool)

(declare-fun res!1875231 () Bool)

(declare-fun e!2808917 () Bool)

(assert (=> d!1386534 (=> res!1875231 e!2808917)))

(assert (=> d!1386534 (= res!1875231 ((_ is Nil!50576) (t!357662 (_2!28784 lt!1686680))))))

(assert (=> d!1386534 (= (forall!10208 (t!357662 (_2!28784 lt!1686680)) lambda!170064) e!2808917)))

(declare-fun b!4508934 () Bool)

(declare-fun e!2808918 () Bool)

(assert (=> b!4508934 (= e!2808917 e!2808918)))

(declare-fun res!1875232 () Bool)

(assert (=> b!4508934 (=> (not res!1875232) (not e!2808918))))

(assert (=> b!4508934 (= res!1875232 (dynLambda!21132 lambda!170064 (h!56407 (t!357662 (_2!28784 lt!1686680)))))))

(declare-fun b!4508935 () Bool)

(assert (=> b!4508935 (= e!2808918 (forall!10208 (t!357662 (t!357662 (_2!28784 lt!1686680))) lambda!170064))))

(assert (= (and d!1386534 (not res!1875231)) b!4508934))

(assert (= (and b!4508934 res!1875232) b!4508935))

(declare-fun b_lambda!153565 () Bool)

(assert (=> (not b_lambda!153565) (not b!4508934)))

(declare-fun m!5247055 () Bool)

(assert (=> b!4508934 m!5247055))

(declare-fun m!5247057 () Bool)

(assert (=> b!4508935 m!5247057))

(assert (=> b!4508218 d!1386534))

(declare-fun bs!845532 () Bool)

(declare-fun b!4508937 () Bool)

(assert (= bs!845532 (and b!4508937 b!4508667)))

(declare-fun lambda!170167 () Int)

(assert (=> bs!845532 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170167 lambda!170120))))

(declare-fun bs!845533 () Bool)

(assert (= bs!845533 (and b!4508937 b!4508515)))

(assert (=> bs!845533 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170167 lambda!170113))))

(assert (=> bs!845533 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687114) (= lambda!170167 lambda!170114))))

(declare-fun bs!845534 () Bool)

(assert (= bs!845534 (and b!4508937 d!1386122)))

(assert (=> bs!845534 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686928) (= lambda!170167 lambda!170065))))

(declare-fun bs!845535 () Bool)

(assert (= bs!845535 (and b!4508937 b!4508218)))

(assert (=> bs!845535 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686926) (= lambda!170167 lambda!170064))))

(declare-fun bs!845536 () Bool)

(assert (= bs!845536 (and b!4508937 d!1386218)))

(assert (=> bs!845536 (not (= lambda!170167 lambda!170086))))

(declare-fun bs!845537 () Bool)

(assert (= bs!845537 (and b!4508937 b!4508780)))

(assert (=> bs!845537 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687250) (= lambda!170167 lambda!170159))))

(declare-fun bs!845538 () Bool)

(assert (= bs!845538 (and b!4508937 d!1386294)))

(assert (=> bs!845538 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687116) (= lambda!170167 lambda!170115))))

(declare-fun bs!845539 () Bool)

(assert (= bs!845539 (and b!4508937 d!1386364)))

(assert (=> bs!845539 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687175) (= lambda!170167 lambda!170124))))

(assert (=> bs!845535 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686668) (= lambda!170167 lambda!170063))))

(declare-fun bs!845540 () Bool)

(assert (= bs!845540 (and b!4508937 b!4508216)))

(assert (=> bs!845540 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686668) (= lambda!170167 lambda!170062))))

(declare-fun bs!845541 () Bool)

(assert (= bs!845541 (and b!4508937 b!4508665)))

(assert (=> bs!845541 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170167 lambda!170119))))

(declare-fun bs!845542 () Bool)

(assert (= bs!845542 (and b!4508937 b!4508513)))

(assert (=> bs!845542 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170167 lambda!170112))))

(declare-fun bs!845543 () Bool)

(assert (= bs!845543 (and b!4508937 d!1386260)))

(assert (=> bs!845543 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686668) (= lambda!170167 lambda!170106))))

(assert (=> bs!845532 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687173) (= lambda!170167 lambda!170121))))

(assert (=> bs!845537 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170167 lambda!170156))))

(declare-fun bs!845544 () Bool)

(assert (= bs!845544 (and b!4508937 b!4508778)))

(assert (=> bs!845544 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170167 lambda!170153))))

(declare-fun bs!845545 () Bool)

(assert (= bs!845545 (and b!4508937 d!1386428)))

(assert (=> bs!845545 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687252) (= lambda!170167 lambda!170161))))

(assert (=> b!4508937 true))

(declare-fun bs!845546 () Bool)

(declare-fun b!4508939 () Bool)

(assert (= bs!845546 (and b!4508939 b!4508667)))

(declare-fun lambda!170168 () Int)

(assert (=> bs!845546 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170168 lambda!170120))))

(declare-fun bs!845547 () Bool)

(assert (= bs!845547 (and b!4508939 b!4508515)))

(assert (=> bs!845547 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170168 lambda!170113))))

(assert (=> bs!845547 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687114) (= lambda!170168 lambda!170114))))

(declare-fun bs!845548 () Bool)

(assert (= bs!845548 (and b!4508939 d!1386122)))

(assert (=> bs!845548 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686928) (= lambda!170168 lambda!170065))))

(declare-fun bs!845549 () Bool)

(assert (= bs!845549 (and b!4508939 b!4508218)))

(assert (=> bs!845549 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686926) (= lambda!170168 lambda!170064))))

(declare-fun bs!845550 () Bool)

(assert (= bs!845550 (and b!4508939 d!1386218)))

(assert (=> bs!845550 (not (= lambda!170168 lambda!170086))))

(declare-fun bs!845551 () Bool)

(assert (= bs!845551 (and b!4508939 b!4508780)))

(assert (=> bs!845551 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687250) (= lambda!170168 lambda!170159))))

(declare-fun bs!845552 () Bool)

(assert (= bs!845552 (and b!4508939 d!1386294)))

(assert (=> bs!845552 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687116) (= lambda!170168 lambda!170115))))

(declare-fun bs!845553 () Bool)

(assert (= bs!845553 (and b!4508939 d!1386364)))

(assert (=> bs!845553 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687175) (= lambda!170168 lambda!170124))))

(assert (=> bs!845549 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686668) (= lambda!170168 lambda!170063))))

(declare-fun bs!845554 () Bool)

(assert (= bs!845554 (and b!4508939 b!4508216)))

(assert (=> bs!845554 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686668) (= lambda!170168 lambda!170062))))

(declare-fun bs!845555 () Bool)

(assert (= bs!845555 (and b!4508939 b!4508665)))

(assert (=> bs!845555 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170168 lambda!170119))))

(declare-fun bs!845556 () Bool)

(assert (= bs!845556 (and b!4508939 b!4508513)))

(assert (=> bs!845556 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170168 lambda!170112))))

(declare-fun bs!845557 () Bool)

(assert (= bs!845557 (and b!4508939 d!1386260)))

(assert (=> bs!845557 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1686668) (= lambda!170168 lambda!170106))))

(assert (=> bs!845546 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687173) (= lambda!170168 lambda!170121))))

(declare-fun bs!845558 () Bool)

(assert (= bs!845558 (and b!4508939 b!4508937)))

(assert (=> bs!845558 (= lambda!170168 lambda!170167)))

(assert (=> bs!845551 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170168 lambda!170156))))

(declare-fun bs!845559 () Bool)

(assert (= bs!845559 (and b!4508939 b!4508778)))

(assert (=> bs!845559 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170168 lambda!170153))))

(declare-fun bs!845560 () Bool)

(assert (= bs!845560 (and b!4508939 d!1386428)))

(assert (=> bs!845560 (= (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687252) (= lambda!170168 lambda!170161))))

(assert (=> b!4508939 true))

(declare-fun lt!1687367 () ListMap!3541)

(declare-fun lambda!170169 () Int)

(assert (=> bs!845546 (= (= lt!1687367 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170169 lambda!170120))))

(assert (=> bs!845547 (= (= lt!1687367 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170169 lambda!170113))))

(assert (=> bs!845547 (= (= lt!1687367 lt!1687114) (= lambda!170169 lambda!170114))))

(assert (=> bs!845548 (= (= lt!1687367 lt!1686928) (= lambda!170169 lambda!170065))))

(assert (=> bs!845549 (= (= lt!1687367 lt!1686926) (= lambda!170169 lambda!170064))))

(assert (=> bs!845550 (not (= lambda!170169 lambda!170086))))

(assert (=> bs!845551 (= (= lt!1687367 lt!1687250) (= lambda!170169 lambda!170159))))

(assert (=> bs!845552 (= (= lt!1687367 lt!1687116) (= lambda!170169 lambda!170115))))

(assert (=> bs!845553 (= (= lt!1687367 lt!1687175) (= lambda!170169 lambda!170124))))

(assert (=> bs!845549 (= (= lt!1687367 lt!1686668) (= lambda!170169 lambda!170063))))

(assert (=> bs!845554 (= (= lt!1687367 lt!1686668) (= lambda!170169 lambda!170062))))

(assert (=> bs!845555 (= (= lt!1687367 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170169 lambda!170119))))

(assert (=> bs!845556 (= (= lt!1687367 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170169 lambda!170112))))

(assert (=> b!4508939 (= (= lt!1687367 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170169 lambda!170168))))

(assert (=> bs!845557 (= (= lt!1687367 lt!1686668) (= lambda!170169 lambda!170106))))

(assert (=> bs!845546 (= (= lt!1687367 lt!1687173) (= lambda!170169 lambda!170121))))

(assert (=> bs!845558 (= (= lt!1687367 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170169 lambda!170167))))

(assert (=> bs!845551 (= (= lt!1687367 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170169 lambda!170156))))

(assert (=> bs!845559 (= (= lt!1687367 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170169 lambda!170153))))

(assert (=> bs!845560 (= (= lt!1687367 lt!1687252) (= lambda!170169 lambda!170161))))

(assert (=> b!4508939 true))

(declare-fun bs!845561 () Bool)

(declare-fun d!1386536 () Bool)

(assert (= bs!845561 (and d!1386536 b!4508667)))

(declare-fun lambda!170170 () Int)

(declare-fun lt!1687369 () ListMap!3541)

(assert (=> bs!845561 (= (= lt!1687369 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170170 lambda!170120))))

(declare-fun bs!845562 () Bool)

(assert (= bs!845562 (and d!1386536 b!4508515)))

(assert (=> bs!845562 (= (= lt!1687369 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170170 lambda!170113))))

(assert (=> bs!845562 (= (= lt!1687369 lt!1687114) (= lambda!170170 lambda!170114))))

(declare-fun bs!845563 () Bool)

(assert (= bs!845563 (and d!1386536 d!1386122)))

(assert (=> bs!845563 (= (= lt!1687369 lt!1686928) (= lambda!170170 lambda!170065))))

(declare-fun bs!845564 () Bool)

(assert (= bs!845564 (and d!1386536 b!4508218)))

(assert (=> bs!845564 (= (= lt!1687369 lt!1686926) (= lambda!170170 lambda!170064))))

(declare-fun bs!845565 () Bool)

(assert (= bs!845565 (and d!1386536 d!1386218)))

(assert (=> bs!845565 (not (= lambda!170170 lambda!170086))))

(declare-fun bs!845566 () Bool)

(assert (= bs!845566 (and d!1386536 b!4508939)))

(assert (=> bs!845566 (= (= lt!1687369 lt!1687367) (= lambda!170170 lambda!170169))))

(declare-fun bs!845567 () Bool)

(assert (= bs!845567 (and d!1386536 b!4508780)))

(assert (=> bs!845567 (= (= lt!1687369 lt!1687250) (= lambda!170170 lambda!170159))))

(declare-fun bs!845568 () Bool)

(assert (= bs!845568 (and d!1386536 d!1386294)))

(assert (=> bs!845568 (= (= lt!1687369 lt!1687116) (= lambda!170170 lambda!170115))))

(declare-fun bs!845569 () Bool)

(assert (= bs!845569 (and d!1386536 d!1386364)))

(assert (=> bs!845569 (= (= lt!1687369 lt!1687175) (= lambda!170170 lambda!170124))))

(assert (=> bs!845564 (= (= lt!1687369 lt!1686668) (= lambda!170170 lambda!170063))))

(declare-fun bs!845570 () Bool)

(assert (= bs!845570 (and d!1386536 b!4508216)))

(assert (=> bs!845570 (= (= lt!1687369 lt!1686668) (= lambda!170170 lambda!170062))))

(declare-fun bs!845571 () Bool)

(assert (= bs!845571 (and d!1386536 b!4508665)))

(assert (=> bs!845571 (= (= lt!1687369 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170170 lambda!170119))))

(declare-fun bs!845572 () Bool)

(assert (= bs!845572 (and d!1386536 b!4508513)))

(assert (=> bs!845572 (= (= lt!1687369 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170170 lambda!170112))))

(assert (=> bs!845566 (= (= lt!1687369 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170170 lambda!170168))))

(declare-fun bs!845573 () Bool)

(assert (= bs!845573 (and d!1386536 d!1386260)))

(assert (=> bs!845573 (= (= lt!1687369 lt!1686668) (= lambda!170170 lambda!170106))))

(assert (=> bs!845561 (= (= lt!1687369 lt!1687173) (= lambda!170170 lambda!170121))))

(declare-fun bs!845574 () Bool)

(assert (= bs!845574 (and d!1386536 b!4508937)))

(assert (=> bs!845574 (= (= lt!1687369 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170170 lambda!170167))))

(assert (=> bs!845567 (= (= lt!1687369 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170170 lambda!170156))))

(declare-fun bs!845575 () Bool)

(assert (= bs!845575 (and d!1386536 b!4508778)))

(assert (=> bs!845575 (= (= lt!1687369 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170170 lambda!170153))))

(declare-fun bs!845576 () Bool)

(assert (= bs!845576 (and d!1386536 d!1386428)))

(assert (=> bs!845576 (= (= lt!1687369 lt!1687252) (= lambda!170170 lambda!170161))))

(assert (=> d!1386536 true))

(declare-fun call!313963 () Bool)

(declare-fun lt!1687357 () ListMap!3541)

(declare-fun bm!313958 () Bool)

(declare-fun c!769085 () Bool)

(assert (=> bm!313958 (= call!313963 (forall!10208 (ite c!769085 (toList!4280 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (toList!4280 lt!1687357)) (ite c!769085 lambda!170167 lambda!170169)))))

(declare-fun b!4508936 () Bool)

(declare-fun e!2808919 () Bool)

(assert (=> b!4508936 (= e!2808919 (invariantList!995 (toList!4280 lt!1687369)))))

(declare-fun e!2808920 () ListMap!3541)

(assert (=> b!4508937 (= e!2808920 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))))))

(declare-fun lt!1687360 () Unit!93112)

(declare-fun call!313965 () Unit!93112)

(assert (=> b!4508937 (= lt!1687360 call!313965)))

(declare-fun call!313964 () Bool)

(assert (=> b!4508937 call!313964))

(declare-fun lt!1687358 () Unit!93112)

(assert (=> b!4508937 (= lt!1687358 lt!1687360)))

(assert (=> b!4508937 call!313963))

(declare-fun lt!1687359 () Unit!93112)

(declare-fun Unit!93241 () Unit!93112)

(assert (=> b!4508937 (= lt!1687359 Unit!93241)))

(declare-fun bm!313959 () Bool)

(assert (=> bm!313959 (= call!313964 (forall!10208 (toList!4280 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (ite c!769085 lambda!170167 lambda!170168)))))

(declare-fun bm!313960 () Bool)

(assert (=> bm!313960 (= call!313965 (lemmaContainsAllItsOwnKeys!315 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun e!2808921 () Bool)

(declare-fun b!4508938 () Bool)

(assert (=> b!4508938 (= e!2808921 (forall!10208 (toList!4280 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) lambda!170169))))

(assert (=> b!4508939 (= e!2808920 lt!1687367)))

(assert (=> b!4508939 (= lt!1687357 (+!1493 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (h!56407 (t!357662 (_2!28784 lt!1686680)))))))

(assert (=> b!4508939 (= lt!1687367 (addToMapMapFromBucket!663 (t!357662 (t!357662 (_2!28784 lt!1686680))) (+!1493 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) (h!56407 (t!357662 (_2!28784 lt!1686680))))))))

(declare-fun lt!1687366 () Unit!93112)

(assert (=> b!4508939 (= lt!1687366 call!313965)))

(assert (=> b!4508939 call!313964))

(declare-fun lt!1687356 () Unit!93112)

(assert (=> b!4508939 (= lt!1687356 lt!1687366)))

(assert (=> b!4508939 (forall!10208 (toList!4280 lt!1687357) lambda!170169)))

(declare-fun lt!1687364 () Unit!93112)

(declare-fun Unit!93242 () Unit!93112)

(assert (=> b!4508939 (= lt!1687364 Unit!93242)))

(assert (=> b!4508939 (forall!10208 (t!357662 (t!357662 (_2!28784 lt!1686680))) lambda!170169)))

(declare-fun lt!1687365 () Unit!93112)

(declare-fun Unit!93243 () Unit!93112)

(assert (=> b!4508939 (= lt!1687365 Unit!93243)))

(declare-fun lt!1687363 () Unit!93112)

(declare-fun Unit!93244 () Unit!93112)

(assert (=> b!4508939 (= lt!1687363 Unit!93244)))

(declare-fun lt!1687371 () Unit!93112)

(assert (=> b!4508939 (= lt!1687371 (forallContained!2460 (toList!4280 lt!1687357) lambda!170169 (h!56407 (t!357662 (_2!28784 lt!1686680)))))))

(assert (=> b!4508939 (contains!13267 lt!1687357 (_1!28783 (h!56407 (t!357662 (_2!28784 lt!1686680)))))))

(declare-fun lt!1687362 () Unit!93112)

(declare-fun Unit!93246 () Unit!93112)

(assert (=> b!4508939 (= lt!1687362 Unit!93246)))

(assert (=> b!4508939 (contains!13267 lt!1687367 (_1!28783 (h!56407 (t!357662 (_2!28784 lt!1686680)))))))

(declare-fun lt!1687370 () Unit!93112)

(declare-fun Unit!93247 () Unit!93112)

(assert (=> b!4508939 (= lt!1687370 Unit!93247)))

(assert (=> b!4508939 (forall!10208 (t!357662 (_2!28784 lt!1686680)) lambda!170169)))

(declare-fun lt!1687374 () Unit!93112)

(declare-fun Unit!93248 () Unit!93112)

(assert (=> b!4508939 (= lt!1687374 Unit!93248)))

(assert (=> b!4508939 call!313963))

(declare-fun lt!1687375 () Unit!93112)

(declare-fun Unit!93249 () Unit!93112)

(assert (=> b!4508939 (= lt!1687375 Unit!93249)))

(declare-fun lt!1687372 () Unit!93112)

(declare-fun Unit!93250 () Unit!93112)

(assert (=> b!4508939 (= lt!1687372 Unit!93250)))

(declare-fun lt!1687373 () Unit!93112)

(assert (=> b!4508939 (= lt!1687373 (addForallContainsKeyThenBeforeAdding!315 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687367 (_1!28783 (h!56407 (t!357662 (_2!28784 lt!1686680)))) (_2!28783 (h!56407 (t!357662 (_2!28784 lt!1686680))))))))

(assert (=> b!4508939 (forall!10208 (toList!4280 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) lambda!170169)))

(declare-fun lt!1687355 () Unit!93112)

(assert (=> b!4508939 (= lt!1687355 lt!1687373)))

(assert (=> b!4508939 (forall!10208 (toList!4280 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) lambda!170169)))

(declare-fun lt!1687368 () Unit!93112)

(declare-fun Unit!93253 () Unit!93112)

(assert (=> b!4508939 (= lt!1687368 Unit!93253)))

(declare-fun res!1875234 () Bool)

(assert (=> b!4508939 (= res!1875234 (forall!10208 (t!357662 (_2!28784 lt!1686680)) lambda!170169))))

(assert (=> b!4508939 (=> (not res!1875234) (not e!2808921))))

(assert (=> b!4508939 e!2808921))

(declare-fun lt!1687361 () Unit!93112)

(declare-fun Unit!93255 () Unit!93112)

(assert (=> b!4508939 (= lt!1687361 Unit!93255)))

(assert (=> d!1386536 e!2808919))

(declare-fun res!1875235 () Bool)

(assert (=> d!1386536 (=> (not res!1875235) (not e!2808919))))

(assert (=> d!1386536 (= res!1875235 (forall!10208 (t!357662 (_2!28784 lt!1686680)) lambda!170170))))

(assert (=> d!1386536 (= lt!1687369 e!2808920)))

(assert (=> d!1386536 (= c!769085 ((_ is Nil!50576) (t!357662 (_2!28784 lt!1686680))))))

(assert (=> d!1386536 (noDuplicateKeys!1136 (t!357662 (_2!28784 lt!1686680)))))

(assert (=> d!1386536 (= (addToMapMapFromBucket!663 (t!357662 (_2!28784 lt!1686680)) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) lt!1687369)))

(declare-fun b!4508940 () Bool)

(declare-fun res!1875233 () Bool)

(assert (=> b!4508940 (=> (not res!1875233) (not e!2808919))))

(assert (=> b!4508940 (= res!1875233 (forall!10208 (toList!4280 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) lambda!170170))))

(assert (= (and d!1386536 c!769085) b!4508937))

(assert (= (and d!1386536 (not c!769085)) b!4508939))

(assert (= (and b!4508939 res!1875234) b!4508938))

(assert (= (or b!4508937 b!4508939) bm!313958))

(assert (= (or b!4508937 b!4508939) bm!313959))

(assert (= (or b!4508937 b!4508939) bm!313960))

(assert (= (and d!1386536 res!1875235) b!4508940))

(assert (= (and b!4508940 res!1875233) b!4508936))

(assert (=> bm!313960 m!5245807))

(declare-fun m!5247059 () Bool)

(assert (=> bm!313960 m!5247059))

(declare-fun m!5247061 () Bool)

(assert (=> b!4508938 m!5247061))

(assert (=> b!4508939 m!5247061))

(declare-fun m!5247063 () Bool)

(assert (=> b!4508939 m!5247063))

(declare-fun m!5247065 () Bool)

(assert (=> b!4508939 m!5247065))

(assert (=> b!4508939 m!5247061))

(assert (=> b!4508939 m!5245807))

(declare-fun m!5247067 () Bool)

(assert (=> b!4508939 m!5247067))

(assert (=> b!4508939 m!5245807))

(declare-fun m!5247069 () Bool)

(assert (=> b!4508939 m!5247069))

(assert (=> b!4508939 m!5247069))

(declare-fun m!5247071 () Bool)

(assert (=> b!4508939 m!5247071))

(declare-fun m!5247073 () Bool)

(assert (=> b!4508939 m!5247073))

(assert (=> b!4508939 m!5247065))

(declare-fun m!5247075 () Bool)

(assert (=> b!4508939 m!5247075))

(declare-fun m!5247077 () Bool)

(assert (=> b!4508939 m!5247077))

(declare-fun m!5247079 () Bool)

(assert (=> b!4508939 m!5247079))

(declare-fun m!5247081 () Bool)

(assert (=> bm!313958 m!5247081))

(declare-fun m!5247083 () Bool)

(assert (=> b!4508940 m!5247083))

(declare-fun m!5247085 () Bool)

(assert (=> b!4508936 m!5247085))

(declare-fun m!5247087 () Bool)

(assert (=> d!1386536 m!5247087))

(declare-fun m!5247089 () Bool)

(assert (=> d!1386536 m!5247089))

(declare-fun m!5247091 () Bool)

(assert (=> bm!313959 m!5247091))

(assert (=> b!4508218 d!1386536))

(declare-fun d!1386538 () Bool)

(declare-fun e!2808937 () Bool)

(assert (=> d!1386538 e!2808937))

(declare-fun res!1875247 () Bool)

(assert (=> d!1386538 (=> (not res!1875247) (not e!2808937))))

(declare-fun lt!1687408 () ListMap!3541)

(assert (=> d!1386538 (= res!1875247 (contains!13267 lt!1687408 (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun lt!1687407 () List!50700)

(assert (=> d!1386538 (= lt!1687408 (ListMap!3542 lt!1687407))))

(declare-fun lt!1687409 () Unit!93112)

(declare-fun lt!1687406 () Unit!93112)

(assert (=> d!1386538 (= lt!1687409 lt!1687406)))

(assert (=> d!1386538 (= (getValueByKey!1049 lt!1687407 (_1!28783 (h!56407 (_2!28784 lt!1686680)))) (Some!11068 (_2!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!648 (List!50700 K!11980 V!12226) Unit!93112)

(assert (=> d!1386538 (= lt!1687406 (lemmaContainsTupThenGetReturnValue!648 lt!1687407 (_1!28783 (h!56407 (_2!28784 lt!1686680))) (_2!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun insertNoDuplicatedKeys!270 (List!50700 K!11980 V!12226) List!50700)

(assert (=> d!1386538 (= lt!1687407 (insertNoDuplicatedKeys!270 (toList!4280 lt!1686668) (_1!28783 (h!56407 (_2!28784 lt!1686680))) (_2!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> d!1386538 (= (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680))) lt!1687408)))

(declare-fun b!4508966 () Bool)

(declare-fun res!1875248 () Bool)

(assert (=> b!4508966 (=> (not res!1875248) (not e!2808937))))

(assert (=> b!4508966 (= res!1875248 (= (getValueByKey!1049 (toList!4280 lt!1687408) (_1!28783 (h!56407 (_2!28784 lt!1686680)))) (Some!11068 (_2!28783 (h!56407 (_2!28784 lt!1686680))))))))

(declare-fun b!4508967 () Bool)

(assert (=> b!4508967 (= e!2808937 (contains!13273 (toList!4280 lt!1687408) (h!56407 (_2!28784 lt!1686680))))))

(assert (= (and d!1386538 res!1875247) b!4508966))

(assert (= (and b!4508966 res!1875248) b!4508967))

(declare-fun m!5247123 () Bool)

(assert (=> d!1386538 m!5247123))

(declare-fun m!5247125 () Bool)

(assert (=> d!1386538 m!5247125))

(declare-fun m!5247127 () Bool)

(assert (=> d!1386538 m!5247127))

(declare-fun m!5247129 () Bool)

(assert (=> d!1386538 m!5247129))

(declare-fun m!5247131 () Bool)

(assert (=> b!4508966 m!5247131))

(declare-fun m!5247133 () Bool)

(assert (=> b!4508967 m!5247133))

(assert (=> b!4508218 d!1386538))

(declare-fun d!1386558 () Bool)

(declare-fun res!1875249 () Bool)

(declare-fun e!2808938 () Bool)

(assert (=> d!1386558 (=> res!1875249 e!2808938)))

(assert (=> d!1386558 (= res!1875249 ((_ is Nil!50576) (_2!28784 lt!1686680)))))

(assert (=> d!1386558 (= (forall!10208 (_2!28784 lt!1686680) lambda!170064) e!2808938)))

(declare-fun b!4508968 () Bool)

(declare-fun e!2808939 () Bool)

(assert (=> b!4508968 (= e!2808938 e!2808939)))

(declare-fun res!1875250 () Bool)

(assert (=> b!4508968 (=> (not res!1875250) (not e!2808939))))

(assert (=> b!4508968 (= res!1875250 (dynLambda!21132 lambda!170064 (h!56407 (_2!28784 lt!1686680))))))

(declare-fun b!4508969 () Bool)

(assert (=> b!4508969 (= e!2808939 (forall!10208 (t!357662 (_2!28784 lt!1686680)) lambda!170064))))

(assert (= (and d!1386558 (not res!1875249)) b!4508968))

(assert (= (and b!4508968 res!1875250) b!4508969))

(declare-fun b_lambda!153569 () Bool)

(assert (=> (not b_lambda!153569) (not b!4508968)))

(assert (=> b!4508968 m!5247029))

(assert (=> b!4508969 m!5245813))

(assert (=> b!4508218 d!1386558))

(declare-fun d!1386560 () Bool)

(declare-fun res!1875251 () Bool)

(declare-fun e!2808940 () Bool)

(assert (=> d!1386560 (=> res!1875251 e!2808940)))

(assert (=> d!1386560 (= res!1875251 ((_ is Nil!50576) (toList!4280 lt!1686916)))))

(assert (=> d!1386560 (= (forall!10208 (toList!4280 lt!1686916) lambda!170064) e!2808940)))

(declare-fun b!4508970 () Bool)

(declare-fun e!2808941 () Bool)

(assert (=> b!4508970 (= e!2808940 e!2808941)))

(declare-fun res!1875252 () Bool)

(assert (=> b!4508970 (=> (not res!1875252) (not e!2808941))))

(assert (=> b!4508970 (= res!1875252 (dynLambda!21132 lambda!170064 (h!56407 (toList!4280 lt!1686916))))))

(declare-fun b!4508971 () Bool)

(assert (=> b!4508971 (= e!2808941 (forall!10208 (t!357662 (toList!4280 lt!1686916)) lambda!170064))))

(assert (= (and d!1386560 (not res!1875251)) b!4508970))

(assert (= (and b!4508970 res!1875252) b!4508971))

(declare-fun b_lambda!153571 () Bool)

(assert (=> (not b_lambda!153571) (not b!4508970)))

(declare-fun m!5247135 () Bool)

(assert (=> b!4508970 m!5247135))

(declare-fun m!5247137 () Bool)

(assert (=> b!4508971 m!5247137))

(assert (=> b!4508218 d!1386560))

(assert (=> b!4508218 d!1386382))

(declare-fun bs!845656 () Bool)

(declare-fun d!1386562 () Bool)

(assert (= bs!845656 (and d!1386562 b!4508667)))

(declare-fun lambda!170181 () Int)

(assert (=> bs!845656 (= (= lt!1686926 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170181 lambda!170120))))

(declare-fun bs!845657 () Bool)

(assert (= bs!845657 (and d!1386562 b!4508515)))

(assert (=> bs!845657 (= (= lt!1686926 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170181 lambda!170113))))

(assert (=> bs!845657 (= (= lt!1686926 lt!1687114) (= lambda!170181 lambda!170114))))

(declare-fun bs!845658 () Bool)

(assert (= bs!845658 (and d!1386562 d!1386122)))

(assert (=> bs!845658 (= (= lt!1686926 lt!1686928) (= lambda!170181 lambda!170065))))

(declare-fun bs!845659 () Bool)

(assert (= bs!845659 (and d!1386562 d!1386218)))

(assert (=> bs!845659 (not (= lambda!170181 lambda!170086))))

(declare-fun bs!845660 () Bool)

(assert (= bs!845660 (and d!1386562 b!4508939)))

(assert (=> bs!845660 (= (= lt!1686926 lt!1687367) (= lambda!170181 lambda!170169))))

(declare-fun bs!845661 () Bool)

(assert (= bs!845661 (and d!1386562 b!4508780)))

(assert (=> bs!845661 (= (= lt!1686926 lt!1687250) (= lambda!170181 lambda!170159))))

(declare-fun bs!845662 () Bool)

(assert (= bs!845662 (and d!1386562 d!1386294)))

(assert (=> bs!845662 (= (= lt!1686926 lt!1687116) (= lambda!170181 lambda!170115))))

(declare-fun bs!845663 () Bool)

(assert (= bs!845663 (and d!1386562 d!1386364)))

(assert (=> bs!845663 (= (= lt!1686926 lt!1687175) (= lambda!170181 lambda!170124))))

(declare-fun bs!845664 () Bool)

(assert (= bs!845664 (and d!1386562 b!4508218)))

(assert (=> bs!845664 (= (= lt!1686926 lt!1686668) (= lambda!170181 lambda!170063))))

(assert (=> bs!845664 (= lambda!170181 lambda!170064)))

(declare-fun bs!845665 () Bool)

(assert (= bs!845665 (and d!1386562 d!1386536)))

(assert (=> bs!845665 (= (= lt!1686926 lt!1687369) (= lambda!170181 lambda!170170))))

(declare-fun bs!845666 () Bool)

(assert (= bs!845666 (and d!1386562 b!4508216)))

(assert (=> bs!845666 (= (= lt!1686926 lt!1686668) (= lambda!170181 lambda!170062))))

(declare-fun bs!845667 () Bool)

(assert (= bs!845667 (and d!1386562 b!4508665)))

(assert (=> bs!845667 (= (= lt!1686926 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170181 lambda!170119))))

(declare-fun bs!845668 () Bool)

(assert (= bs!845668 (and d!1386562 b!4508513)))

(assert (=> bs!845668 (= (= lt!1686926 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170181 lambda!170112))))

(assert (=> bs!845660 (= (= lt!1686926 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170181 lambda!170168))))

(declare-fun bs!845669 () Bool)

(assert (= bs!845669 (and d!1386562 d!1386260)))

(assert (=> bs!845669 (= (= lt!1686926 lt!1686668) (= lambda!170181 lambda!170106))))

(assert (=> bs!845656 (= (= lt!1686926 lt!1687173) (= lambda!170181 lambda!170121))))

(declare-fun bs!845670 () Bool)

(assert (= bs!845670 (and d!1386562 b!4508937)))

(assert (=> bs!845670 (= (= lt!1686926 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170181 lambda!170167))))

(assert (=> bs!845661 (= (= lt!1686926 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170181 lambda!170156))))

(declare-fun bs!845671 () Bool)

(assert (= bs!845671 (and d!1386562 b!4508778)))

(assert (=> bs!845671 (= (= lt!1686926 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170181 lambda!170153))))

(declare-fun bs!845672 () Bool)

(assert (= bs!845672 (and d!1386562 d!1386428)))

(assert (=> bs!845672 (= (= lt!1686926 lt!1687252) (= lambda!170181 lambda!170161))))

(assert (=> d!1386562 true))

(assert (=> d!1386562 (forall!10208 (toList!4280 lt!1686668) lambda!170181)))

(declare-fun lt!1687413 () Unit!93112)

(declare-fun choose!29275 (ListMap!3541 ListMap!3541 K!11980 V!12226) Unit!93112)

(assert (=> d!1386562 (= lt!1687413 (choose!29275 lt!1686668 lt!1686926 (_1!28783 (h!56407 (_2!28784 lt!1686680))) (_2!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> d!1386562 (forall!10208 (toList!4280 (+!1493 lt!1686668 (tuple2!50979 (_1!28783 (h!56407 (_2!28784 lt!1686680))) (_2!28783 (h!56407 (_2!28784 lt!1686680)))))) lambda!170181)))

(assert (=> d!1386562 (= (addForallContainsKeyThenBeforeAdding!315 lt!1686668 lt!1686926 (_1!28783 (h!56407 (_2!28784 lt!1686680))) (_2!28783 (h!56407 (_2!28784 lt!1686680)))) lt!1687413)))

(declare-fun bs!845673 () Bool)

(assert (= bs!845673 d!1386562))

(declare-fun m!5247189 () Bool)

(assert (=> bs!845673 m!5247189))

(declare-fun m!5247191 () Bool)

(assert (=> bs!845673 m!5247191))

(declare-fun m!5247193 () Bool)

(assert (=> bs!845673 m!5247193))

(declare-fun m!5247199 () Bool)

(assert (=> bs!845673 m!5247199))

(assert (=> b!4508218 d!1386562))

(declare-fun b!4508988 () Bool)

(declare-fun e!2808954 () Bool)

(declare-fun e!2808950 () Bool)

(assert (=> b!4508988 (= e!2808954 e!2808950)))

(declare-fun res!1875259 () Bool)

(assert (=> b!4508988 (=> (not res!1875259) (not e!2808950))))

(assert (=> b!4508988 (= res!1875259 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686916) (_1!28783 (h!56407 (_2!28784 lt!1686680))))))))

(declare-fun b!4508989 () Bool)

(assert (=> b!4508989 false))

(declare-fun lt!1687415 () Unit!93112)

(declare-fun lt!1687418 () Unit!93112)

(assert (=> b!4508989 (= lt!1687415 lt!1687418)))

(assert (=> b!4508989 (containsKey!1715 (toList!4280 lt!1686916) (_1!28783 (h!56407 (_2!28784 lt!1686680))))))

(assert (=> b!4508989 (= lt!1687418 (lemmaInGetKeysListThenContainsKey!442 (toList!4280 lt!1686916) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun e!2808951 () Unit!93112)

(declare-fun Unit!93263 () Unit!93112)

(assert (=> b!4508989 (= e!2808951 Unit!93263)))

(declare-fun b!4508990 () Bool)

(declare-fun e!2808953 () Unit!93112)

(assert (=> b!4508990 (= e!2808953 e!2808951)))

(declare-fun c!769099 () Bool)

(declare-fun call!313969 () Bool)

(assert (=> b!4508990 (= c!769099 call!313969)))

(declare-fun bm!313964 () Bool)

(declare-fun e!2808955 () List!50703)

(assert (=> bm!313964 (= call!313969 (contains!13271 e!2808955 (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun c!769098 () Bool)

(declare-fun c!769100 () Bool)

(assert (=> bm!313964 (= c!769098 c!769100)))

(declare-fun b!4508991 () Bool)

(assert (=> b!4508991 (= e!2808950 (contains!13271 (keys!17548 lt!1686916) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun b!4508992 () Bool)

(declare-fun Unit!93264 () Unit!93112)

(assert (=> b!4508992 (= e!2808951 Unit!93264)))

(declare-fun b!4508993 () Bool)

(assert (=> b!4508993 (= e!2808955 (keys!17548 lt!1686916))))

(declare-fun b!4508994 () Bool)

(declare-fun lt!1687422 () Unit!93112)

(assert (=> b!4508994 (= e!2808953 lt!1687422)))

(declare-fun lt!1687416 () Unit!93112)

(assert (=> b!4508994 (= lt!1687416 (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 lt!1686916) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> b!4508994 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686916) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun lt!1687421 () Unit!93112)

(assert (=> b!4508994 (= lt!1687421 lt!1687416)))

(assert (=> b!4508994 (= lt!1687422 (lemmaInListThenGetKeysListContains!439 (toList!4280 lt!1686916) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> b!4508994 call!313969))

(declare-fun d!1386574 () Bool)

(assert (=> d!1386574 e!2808954))

(declare-fun res!1875260 () Bool)

(assert (=> d!1386574 (=> res!1875260 e!2808954)))

(declare-fun e!2808952 () Bool)

(assert (=> d!1386574 (= res!1875260 e!2808952)))

(declare-fun res!1875258 () Bool)

(assert (=> d!1386574 (=> (not res!1875258) (not e!2808952))))

(declare-fun lt!1687419 () Bool)

(assert (=> d!1386574 (= res!1875258 (not lt!1687419))))

(declare-fun lt!1687417 () Bool)

(assert (=> d!1386574 (= lt!1687419 lt!1687417)))

(declare-fun lt!1687420 () Unit!93112)

(assert (=> d!1386574 (= lt!1687420 e!2808953)))

(assert (=> d!1386574 (= c!769100 lt!1687417)))

(assert (=> d!1386574 (= lt!1687417 (containsKey!1715 (toList!4280 lt!1686916) (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> d!1386574 (= (contains!13267 lt!1686916 (_1!28783 (h!56407 (_2!28784 lt!1686680)))) lt!1687419)))

(declare-fun b!4508995 () Bool)

(assert (=> b!4508995 (= e!2808952 (not (contains!13271 (keys!17548 lt!1686916) (_1!28783 (h!56407 (_2!28784 lt!1686680))))))))

(declare-fun b!4508996 () Bool)

(assert (=> b!4508996 (= e!2808955 (getKeysList!443 (toList!4280 lt!1686916)))))

(assert (= (and d!1386574 c!769100) b!4508994))

(assert (= (and d!1386574 (not c!769100)) b!4508990))

(assert (= (and b!4508990 c!769099) b!4508989))

(assert (= (and b!4508990 (not c!769099)) b!4508992))

(assert (= (or b!4508994 b!4508990) bm!313964))

(assert (= (and bm!313964 c!769098) b!4508996))

(assert (= (and bm!313964 (not c!769098)) b!4508993))

(assert (= (and d!1386574 res!1875258) b!4508995))

(assert (= (and d!1386574 (not res!1875260)) b!4508988))

(assert (= (and b!4508988 res!1875259) b!4508991))

(declare-fun m!5247201 () Bool)

(assert (=> b!4508994 m!5247201))

(declare-fun m!5247203 () Bool)

(assert (=> b!4508994 m!5247203))

(assert (=> b!4508994 m!5247203))

(declare-fun m!5247205 () Bool)

(assert (=> b!4508994 m!5247205))

(declare-fun m!5247207 () Bool)

(assert (=> b!4508994 m!5247207))

(declare-fun m!5247209 () Bool)

(assert (=> bm!313964 m!5247209))

(assert (=> b!4508988 m!5247203))

(assert (=> b!4508988 m!5247203))

(assert (=> b!4508988 m!5247205))

(declare-fun m!5247213 () Bool)

(assert (=> b!4508996 m!5247213))

(declare-fun m!5247217 () Bool)

(assert (=> d!1386574 m!5247217))

(declare-fun m!5247221 () Bool)

(assert (=> b!4508993 m!5247221))

(assert (=> b!4508989 m!5247217))

(declare-fun m!5247227 () Bool)

(assert (=> b!4508989 m!5247227))

(assert (=> b!4508995 m!5247221))

(assert (=> b!4508995 m!5247221))

(declare-fun m!5247233 () Bool)

(assert (=> b!4508995 m!5247233))

(assert (=> b!4508991 m!5247221))

(assert (=> b!4508991 m!5247221))

(assert (=> b!4508991 m!5247233))

(assert (=> b!4508218 d!1386574))

(declare-fun d!1386578 () Bool)

(assert (=> d!1386578 (= (invariantList!995 (toList!4280 lt!1687010)) (noDuplicatedKeys!252 (toList!4280 lt!1687010)))))

(declare-fun bs!845680 () Bool)

(assert (= bs!845680 d!1386578))

(declare-fun m!5247237 () Bool)

(assert (=> bs!845680 m!5247237))

(assert (=> d!1386196 d!1386578))

(declare-fun d!1386580 () Bool)

(declare-fun res!1875261 () Bool)

(declare-fun e!2808957 () Bool)

(assert (=> d!1386580 (=> res!1875261 e!2808957)))

(assert (=> d!1386580 (= res!1875261 ((_ is Nil!50577) (toList!4279 lm!1477)))))

(assert (=> d!1386580 (= (forall!10207 (toList!4279 lm!1477) lambda!170080) e!2808957)))

(declare-fun b!4508999 () Bool)

(declare-fun e!2808958 () Bool)

(assert (=> b!4508999 (= e!2808957 e!2808958)))

(declare-fun res!1875262 () Bool)

(assert (=> b!4508999 (=> (not res!1875262) (not e!2808958))))

(assert (=> b!4508999 (= res!1875262 (dynLambda!21131 lambda!170080 (h!56408 (toList!4279 lm!1477))))))

(declare-fun b!4509000 () Bool)

(assert (=> b!4509000 (= e!2808958 (forall!10207 (t!357663 (toList!4279 lm!1477)) lambda!170080))))

(assert (= (and d!1386580 (not res!1875261)) b!4508999))

(assert (= (and b!4508999 res!1875262) b!4509000))

(declare-fun b_lambda!153575 () Bool)

(assert (=> (not b_lambda!153575) (not b!4508999)))

(declare-fun m!5247247 () Bool)

(assert (=> b!4508999 m!5247247))

(declare-fun m!5247249 () Bool)

(assert (=> b!4509000 m!5247249))

(assert (=> d!1386196 d!1386580))

(declare-fun d!1386586 () Bool)

(declare-fun res!1875263 () Bool)

(declare-fun e!2808960 () Bool)

(assert (=> d!1386586 (=> res!1875263 e!2808960)))

(assert (=> d!1386586 (= res!1875263 (and ((_ is Cons!50576) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= (_1!28783 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) key!3287)))))

(assert (=> d!1386586 (= (containsKey!1715 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287) e!2808960)))

(declare-fun b!4509003 () Bool)

(declare-fun e!2808961 () Bool)

(assert (=> b!4509003 (= e!2808960 e!2808961)))

(declare-fun res!1875264 () Bool)

(assert (=> b!4509003 (=> (not res!1875264) (not e!2808961))))

(assert (=> b!4509003 (= res!1875264 ((_ is Cons!50576) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))

(declare-fun b!4509004 () Bool)

(assert (=> b!4509004 (= e!2808961 (containsKey!1715 (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) key!3287))))

(assert (= (and d!1386586 (not res!1875263)) b!4509003))

(assert (= (and b!4509003 res!1875264) b!4509004))

(declare-fun m!5247251 () Bool)

(assert (=> b!4509004 m!5247251))

(assert (=> d!1386182 d!1386586))

(assert (=> b!4508317 d!1386452))

(assert (=> b!4508317 d!1386454))

(declare-fun d!1386588 () Bool)

(declare-fun res!1875265 () Bool)

(declare-fun e!2808962 () Bool)

(assert (=> d!1386588 (=> res!1875265 e!2808962)))

(assert (=> d!1386588 (= res!1875265 (not ((_ is Cons!50576) (_2!28784 lt!1686676))))))

(assert (=> d!1386588 (= (noDuplicateKeys!1136 (_2!28784 lt!1686676)) e!2808962)))

(declare-fun b!4509005 () Bool)

(declare-fun e!2808963 () Bool)

(assert (=> b!4509005 (= e!2808962 e!2808963)))

(declare-fun res!1875266 () Bool)

(assert (=> b!4509005 (=> (not res!1875266) (not e!2808963))))

(assert (=> b!4509005 (= res!1875266 (not (containsKey!1712 (t!357662 (_2!28784 lt!1686676)) (_1!28783 (h!56407 (_2!28784 lt!1686676))))))))

(declare-fun b!4509006 () Bool)

(assert (=> b!4509006 (= e!2808963 (noDuplicateKeys!1136 (t!357662 (_2!28784 lt!1686676))))))

(assert (= (and d!1386588 (not res!1875265)) b!4509005))

(assert (= (and b!4509005 res!1875266) b!4509006))

(declare-fun m!5247255 () Bool)

(assert (=> b!4509005 m!5247255))

(declare-fun m!5247257 () Bool)

(assert (=> b!4509006 m!5247257))

(assert (=> bs!845241 d!1386588))

(declare-fun d!1386592 () Bool)

(declare-fun res!1875267 () Bool)

(declare-fun e!2808964 () Bool)

(assert (=> d!1386592 (=> res!1875267 e!2808964)))

(assert (=> d!1386592 (= res!1875267 (and ((_ is Cons!50576) (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))) (= (_1!28783 (h!56407 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))))) key!3287)))))

(assert (=> d!1386592 (= (containsKey!1712 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477)))) key!3287) e!2808964)))

(declare-fun b!4509007 () Bool)

(declare-fun e!2808965 () Bool)

(assert (=> b!4509007 (= e!2808964 e!2808965)))

(declare-fun res!1875268 () Bool)

(assert (=> b!4509007 (=> (not res!1875268) (not e!2808965))))

(assert (=> b!4509007 (= res!1875268 ((_ is Cons!50576) (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))))))

(declare-fun b!4509008 () Bool)

(assert (=> b!4509008 (= e!2808965 (containsKey!1712 (t!357662 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))) key!3287))))

(assert (= (and d!1386592 (not res!1875267)) b!4509007))

(assert (= (and b!4509007 res!1875268) b!4509008))

(declare-fun m!5247259 () Bool)

(assert (=> b!4509008 m!5247259))

(assert (=> b!4508106 d!1386592))

(declare-fun bs!845682 () Bool)

(declare-fun b!4509010 () Bool)

(assert (= bs!845682 (and b!4509010 b!4508667)))

(declare-fun lambda!170184 () Int)

(assert (=> bs!845682 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170184 lambda!170120))))

(declare-fun bs!845683 () Bool)

(assert (= bs!845683 (and b!4509010 b!4508515)))

(assert (=> bs!845683 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170184 lambda!170113))))

(assert (=> bs!845683 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687114) (= lambda!170184 lambda!170114))))

(declare-fun bs!845684 () Bool)

(assert (= bs!845684 (and b!4509010 d!1386122)))

(assert (=> bs!845684 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686928) (= lambda!170184 lambda!170065))))

(declare-fun bs!845685 () Bool)

(assert (= bs!845685 (and b!4509010 b!4508939)))

(assert (=> bs!845685 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687367) (= lambda!170184 lambda!170169))))

(declare-fun bs!845686 () Bool)

(assert (= bs!845686 (and b!4509010 b!4508780)))

(assert (=> bs!845686 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687250) (= lambda!170184 lambda!170159))))

(declare-fun bs!845687 () Bool)

(assert (= bs!845687 (and b!4509010 d!1386294)))

(assert (=> bs!845687 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687116) (= lambda!170184 lambda!170115))))

(declare-fun bs!845688 () Bool)

(assert (= bs!845688 (and b!4509010 d!1386364)))

(assert (=> bs!845688 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687175) (= lambda!170184 lambda!170124))))

(declare-fun bs!845689 () Bool)

(assert (= bs!845689 (and b!4509010 b!4508218)))

(assert (=> bs!845689 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686668) (= lambda!170184 lambda!170063))))

(assert (=> bs!845689 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686926) (= lambda!170184 lambda!170064))))

(declare-fun bs!845690 () Bool)

(assert (= bs!845690 (and b!4509010 d!1386536)))

(assert (=> bs!845690 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687369) (= lambda!170184 lambda!170170))))

(declare-fun bs!845691 () Bool)

(assert (= bs!845691 (and b!4509010 d!1386562)))

(assert (=> bs!845691 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686926) (= lambda!170184 lambda!170181))))

(declare-fun bs!845692 () Bool)

(assert (= bs!845692 (and b!4509010 d!1386218)))

(assert (=> bs!845692 (not (= lambda!170184 lambda!170086))))

(declare-fun bs!845693 () Bool)

(assert (= bs!845693 (and b!4509010 b!4508216)))

(assert (=> bs!845693 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686668) (= lambda!170184 lambda!170062))))

(declare-fun bs!845694 () Bool)

(assert (= bs!845694 (and b!4509010 b!4508665)))

(assert (=> bs!845694 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170184 lambda!170119))))

(declare-fun bs!845695 () Bool)

(assert (= bs!845695 (and b!4509010 b!4508513)))

(assert (=> bs!845695 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170184 lambda!170112))))

(assert (=> bs!845685 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170184 lambda!170168))))

(declare-fun bs!845696 () Bool)

(assert (= bs!845696 (and b!4509010 d!1386260)))

(assert (=> bs!845696 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686668) (= lambda!170184 lambda!170106))))

(assert (=> bs!845682 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687173) (= lambda!170184 lambda!170121))))

(declare-fun bs!845697 () Bool)

(assert (= bs!845697 (and b!4509010 b!4508937)))

(assert (=> bs!845697 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170184 lambda!170167))))

(assert (=> bs!845686 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170184 lambda!170156))))

(declare-fun bs!845698 () Bool)

(assert (= bs!845698 (and b!4509010 b!4508778)))

(assert (=> bs!845698 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170184 lambda!170153))))

(declare-fun bs!845699 () Bool)

(assert (= bs!845699 (and b!4509010 d!1386428)))

(assert (=> bs!845699 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687252) (= lambda!170184 lambda!170161))))

(assert (=> b!4509010 true))

(declare-fun bs!845700 () Bool)

(declare-fun b!4509012 () Bool)

(assert (= bs!845700 (and b!4509012 b!4508667)))

(declare-fun lambda!170185 () Int)

(assert (=> bs!845700 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170185 lambda!170120))))

(declare-fun bs!845701 () Bool)

(assert (= bs!845701 (and b!4509012 b!4509010)))

(assert (=> bs!845701 (= lambda!170185 lambda!170184)))

(declare-fun bs!845702 () Bool)

(assert (= bs!845702 (and b!4509012 b!4508515)))

(assert (=> bs!845702 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170185 lambda!170113))))

(assert (=> bs!845702 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687114) (= lambda!170185 lambda!170114))))

(declare-fun bs!845703 () Bool)

(assert (= bs!845703 (and b!4509012 d!1386122)))

(assert (=> bs!845703 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686928) (= lambda!170185 lambda!170065))))

(declare-fun bs!845704 () Bool)

(assert (= bs!845704 (and b!4509012 b!4508939)))

(assert (=> bs!845704 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687367) (= lambda!170185 lambda!170169))))

(declare-fun bs!845705 () Bool)

(assert (= bs!845705 (and b!4509012 b!4508780)))

(assert (=> bs!845705 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687250) (= lambda!170185 lambda!170159))))

(declare-fun bs!845706 () Bool)

(assert (= bs!845706 (and b!4509012 d!1386294)))

(assert (=> bs!845706 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687116) (= lambda!170185 lambda!170115))))

(declare-fun bs!845707 () Bool)

(assert (= bs!845707 (and b!4509012 d!1386364)))

(assert (=> bs!845707 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687175) (= lambda!170185 lambda!170124))))

(declare-fun bs!845708 () Bool)

(assert (= bs!845708 (and b!4509012 b!4508218)))

(assert (=> bs!845708 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686668) (= lambda!170185 lambda!170063))))

(assert (=> bs!845708 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686926) (= lambda!170185 lambda!170064))))

(declare-fun bs!845709 () Bool)

(assert (= bs!845709 (and b!4509012 d!1386536)))

(assert (=> bs!845709 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687369) (= lambda!170185 lambda!170170))))

(declare-fun bs!845710 () Bool)

(assert (= bs!845710 (and b!4509012 d!1386562)))

(assert (=> bs!845710 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686926) (= lambda!170185 lambda!170181))))

(declare-fun bs!845711 () Bool)

(assert (= bs!845711 (and b!4509012 d!1386218)))

(assert (=> bs!845711 (not (= lambda!170185 lambda!170086))))

(declare-fun bs!845713 () Bool)

(assert (= bs!845713 (and b!4509012 b!4508216)))

(assert (=> bs!845713 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686668) (= lambda!170185 lambda!170062))))

(declare-fun bs!845714 () Bool)

(assert (= bs!845714 (and b!4509012 b!4508665)))

(assert (=> bs!845714 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170185 lambda!170119))))

(declare-fun bs!845715 () Bool)

(assert (= bs!845715 (and b!4509012 b!4508513)))

(assert (=> bs!845715 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170185 lambda!170112))))

(assert (=> bs!845704 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170185 lambda!170168))))

(declare-fun bs!845716 () Bool)

(assert (= bs!845716 (and b!4509012 d!1386260)))

(assert (=> bs!845716 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1686668) (= lambda!170185 lambda!170106))))

(assert (=> bs!845700 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687173) (= lambda!170185 lambda!170121))))

(declare-fun bs!845717 () Bool)

(assert (= bs!845717 (and b!4509012 b!4508937)))

(assert (=> bs!845717 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170185 lambda!170167))))

(assert (=> bs!845705 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170185 lambda!170156))))

(declare-fun bs!845718 () Bool)

(assert (= bs!845718 (and b!4509012 b!4508778)))

(assert (=> bs!845718 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170185 lambda!170153))))

(declare-fun bs!845719 () Bool)

(assert (= bs!845719 (and b!4509012 d!1386428)))

(assert (=> bs!845719 (= (= (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687252) (= lambda!170185 lambda!170161))))

(assert (=> b!4509012 true))

(declare-fun lt!1687435 () ListMap!3541)

(declare-fun lambda!170186 () Int)

(assert (=> bs!845700 (= (= lt!1687435 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170186 lambda!170120))))

(assert (=> bs!845701 (= (= lt!1687435 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170186 lambda!170184))))

(assert (=> bs!845702 (= (= lt!1687435 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170186 lambda!170113))))

(assert (=> bs!845702 (= (= lt!1687435 lt!1687114) (= lambda!170186 lambda!170114))))

(assert (=> bs!845703 (= (= lt!1687435 lt!1686928) (= lambda!170186 lambda!170065))))

(assert (=> bs!845704 (= (= lt!1687435 lt!1687367) (= lambda!170186 lambda!170169))))

(assert (=> bs!845706 (= (= lt!1687435 lt!1687116) (= lambda!170186 lambda!170115))))

(assert (=> bs!845707 (= (= lt!1687435 lt!1687175) (= lambda!170186 lambda!170124))))

(assert (=> bs!845708 (= (= lt!1687435 lt!1686668) (= lambda!170186 lambda!170063))))

(assert (=> bs!845708 (= (= lt!1687435 lt!1686926) (= lambda!170186 lambda!170064))))

(assert (=> bs!845709 (= (= lt!1687435 lt!1687369) (= lambda!170186 lambda!170170))))

(assert (=> bs!845710 (= (= lt!1687435 lt!1686926) (= lambda!170186 lambda!170181))))

(assert (=> bs!845711 (not (= lambda!170186 lambda!170086))))

(assert (=> bs!845713 (= (= lt!1687435 lt!1686668) (= lambda!170186 lambda!170062))))

(assert (=> bs!845714 (= (= lt!1687435 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170186 lambda!170119))))

(assert (=> bs!845715 (= (= lt!1687435 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170186 lambda!170112))))

(assert (=> bs!845704 (= (= lt!1687435 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170186 lambda!170168))))

(assert (=> bs!845716 (= (= lt!1687435 lt!1686668) (= lambda!170186 lambda!170106))))

(assert (=> bs!845700 (= (= lt!1687435 lt!1687173) (= lambda!170186 lambda!170121))))

(assert (=> bs!845717 (= (= lt!1687435 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170186 lambda!170167))))

(assert (=> bs!845705 (= (= lt!1687435 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170186 lambda!170156))))

(assert (=> bs!845718 (= (= lt!1687435 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170186 lambda!170153))))

(assert (=> bs!845719 (= (= lt!1687435 lt!1687252) (= lambda!170186 lambda!170161))))

(assert (=> bs!845705 (= (= lt!1687435 lt!1687250) (= lambda!170186 lambda!170159))))

(assert (=> b!4509012 (= (= lt!1687435 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170186 lambda!170185))))

(assert (=> b!4509012 true))

(declare-fun bs!845720 () Bool)

(declare-fun d!1386594 () Bool)

(assert (= bs!845720 (and d!1386594 b!4508667)))

(declare-fun lt!1687437 () ListMap!3541)

(declare-fun lambda!170187 () Int)

(assert (=> bs!845720 (= (= lt!1687437 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170187 lambda!170120))))

(declare-fun bs!845721 () Bool)

(assert (= bs!845721 (and d!1386594 b!4509010)))

(assert (=> bs!845721 (= (= lt!1687437 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170187 lambda!170184))))

(declare-fun bs!845722 () Bool)

(assert (= bs!845722 (and d!1386594 b!4508515)))

(assert (=> bs!845722 (= (= lt!1687437 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170187 lambda!170113))))

(assert (=> bs!845722 (= (= lt!1687437 lt!1687114) (= lambda!170187 lambda!170114))))

(declare-fun bs!845723 () Bool)

(assert (= bs!845723 (and d!1386594 d!1386122)))

(assert (=> bs!845723 (= (= lt!1687437 lt!1686928) (= lambda!170187 lambda!170065))))

(declare-fun bs!845724 () Bool)

(assert (= bs!845724 (and d!1386594 b!4508939)))

(assert (=> bs!845724 (= (= lt!1687437 lt!1687367) (= lambda!170187 lambda!170169))))

(declare-fun bs!845725 () Bool)

(assert (= bs!845725 (and d!1386594 d!1386294)))

(assert (=> bs!845725 (= (= lt!1687437 lt!1687116) (= lambda!170187 lambda!170115))))

(declare-fun bs!845726 () Bool)

(assert (= bs!845726 (and d!1386594 d!1386364)))

(assert (=> bs!845726 (= (= lt!1687437 lt!1687175) (= lambda!170187 lambda!170124))))

(declare-fun bs!845727 () Bool)

(assert (= bs!845727 (and d!1386594 b!4508218)))

(assert (=> bs!845727 (= (= lt!1687437 lt!1686668) (= lambda!170187 lambda!170063))))

(assert (=> bs!845727 (= (= lt!1687437 lt!1686926) (= lambda!170187 lambda!170064))))

(declare-fun bs!845728 () Bool)

(assert (= bs!845728 (and d!1386594 d!1386536)))

(assert (=> bs!845728 (= (= lt!1687437 lt!1687369) (= lambda!170187 lambda!170170))))

(declare-fun bs!845729 () Bool)

(assert (= bs!845729 (and d!1386594 b!4509012)))

(assert (=> bs!845729 (= (= lt!1687437 lt!1687435) (= lambda!170187 lambda!170186))))

(declare-fun bs!845730 () Bool)

(assert (= bs!845730 (and d!1386594 d!1386562)))

(assert (=> bs!845730 (= (= lt!1687437 lt!1686926) (= lambda!170187 lambda!170181))))

(declare-fun bs!845731 () Bool)

(assert (= bs!845731 (and d!1386594 d!1386218)))

(assert (=> bs!845731 (not (= lambda!170187 lambda!170086))))

(declare-fun bs!845732 () Bool)

(assert (= bs!845732 (and d!1386594 b!4508216)))

(assert (=> bs!845732 (= (= lt!1687437 lt!1686668) (= lambda!170187 lambda!170062))))

(declare-fun bs!845733 () Bool)

(assert (= bs!845733 (and d!1386594 b!4508665)))

(assert (=> bs!845733 (= (= lt!1687437 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170187 lambda!170119))))

(declare-fun bs!845734 () Bool)

(assert (= bs!845734 (and d!1386594 b!4508513)))

(assert (=> bs!845734 (= (= lt!1687437 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170187 lambda!170112))))

(assert (=> bs!845724 (= (= lt!1687437 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170187 lambda!170168))))

(declare-fun bs!845735 () Bool)

(assert (= bs!845735 (and d!1386594 d!1386260)))

(assert (=> bs!845735 (= (= lt!1687437 lt!1686668) (= lambda!170187 lambda!170106))))

(assert (=> bs!845720 (= (= lt!1687437 lt!1687173) (= lambda!170187 lambda!170121))))

(declare-fun bs!845736 () Bool)

(assert (= bs!845736 (and d!1386594 b!4508937)))

(assert (=> bs!845736 (= (= lt!1687437 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170187 lambda!170167))))

(declare-fun bs!845737 () Bool)

(assert (= bs!845737 (and d!1386594 b!4508780)))

(assert (=> bs!845737 (= (= lt!1687437 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170187 lambda!170156))))

(declare-fun bs!845738 () Bool)

(assert (= bs!845738 (and d!1386594 b!4508778)))

(assert (=> bs!845738 (= (= lt!1687437 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170187 lambda!170153))))

(declare-fun bs!845739 () Bool)

(assert (= bs!845739 (and d!1386594 d!1386428)))

(assert (=> bs!845739 (= (= lt!1687437 lt!1687252) (= lambda!170187 lambda!170161))))

(assert (=> bs!845737 (= (= lt!1687437 lt!1687250) (= lambda!170187 lambda!170159))))

(assert (=> bs!845729 (= (= lt!1687437 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170187 lambda!170185))))

(assert (=> d!1386594 true))

(declare-fun bm!313965 () Bool)

(declare-fun call!313970 () Bool)

(declare-fun c!769103 () Bool)

(declare-fun lt!1687425 () ListMap!3541)

(assert (=> bm!313965 (= call!313970 (forall!10208 (ite c!769103 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (toList!4280 lt!1687425)) (ite c!769103 lambda!170184 lambda!170186)))))

(declare-fun b!4509009 () Bool)

(declare-fun e!2808966 () Bool)

(assert (=> b!4509009 (= e!2808966 (invariantList!995 (toList!4280 lt!1687437)))))

(declare-fun e!2808967 () ListMap!3541)

(assert (=> b!4509010 (= e!2808967 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))

(declare-fun lt!1687428 () Unit!93112)

(declare-fun call!313972 () Unit!93112)

(assert (=> b!4509010 (= lt!1687428 call!313972)))

(declare-fun call!313971 () Bool)

(assert (=> b!4509010 call!313971))

(declare-fun lt!1687426 () Unit!93112)

(assert (=> b!4509010 (= lt!1687426 lt!1687428)))

(assert (=> b!4509010 call!313970))

(declare-fun lt!1687427 () Unit!93112)

(declare-fun Unit!93266 () Unit!93112)

(assert (=> b!4509010 (= lt!1687427 Unit!93266)))

(declare-fun bm!313966 () Bool)

(assert (=> bm!313966 (= call!313971 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (ite c!769103 lambda!170184 lambda!170185)))))

(declare-fun bm!313967 () Bool)

(assert (=> bm!313967 (= call!313972 (lemmaContainsAllItsOwnKeys!315 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))

(declare-fun b!4509011 () Bool)

(declare-fun e!2808968 () Bool)

(assert (=> b!4509011 (= e!2808968 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) lambda!170186))))

(assert (=> b!4509012 (= e!2808967 lt!1687435)))

(assert (=> b!4509012 (= lt!1687425 (+!1493 (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (h!56407 (_2!28784 (h!56408 (toList!4279 lm!1477))))))))

(assert (=> b!4509012 (= lt!1687435 (addToMapMapFromBucket!663 (t!357662 (_2!28784 (h!56408 (toList!4279 lm!1477)))) (+!1493 (extractMap!1192 (t!357663 (toList!4279 lm!1477))) (h!56407 (_2!28784 (h!56408 (toList!4279 lm!1477)))))))))

(declare-fun lt!1687434 () Unit!93112)

(assert (=> b!4509012 (= lt!1687434 call!313972)))

(assert (=> b!4509012 call!313971))

(declare-fun lt!1687424 () Unit!93112)

(assert (=> b!4509012 (= lt!1687424 lt!1687434)))

(assert (=> b!4509012 (forall!10208 (toList!4280 lt!1687425) lambda!170186)))

(declare-fun lt!1687432 () Unit!93112)

(declare-fun Unit!93267 () Unit!93112)

(assert (=> b!4509012 (= lt!1687432 Unit!93267)))

(assert (=> b!4509012 (forall!10208 (t!357662 (_2!28784 (h!56408 (toList!4279 lm!1477)))) lambda!170186)))

(declare-fun lt!1687433 () Unit!93112)

(declare-fun Unit!93268 () Unit!93112)

(assert (=> b!4509012 (= lt!1687433 Unit!93268)))

(declare-fun lt!1687431 () Unit!93112)

(declare-fun Unit!93269 () Unit!93112)

(assert (=> b!4509012 (= lt!1687431 Unit!93269)))

(declare-fun lt!1687439 () Unit!93112)

(assert (=> b!4509012 (= lt!1687439 (forallContained!2460 (toList!4280 lt!1687425) lambda!170186 (h!56407 (_2!28784 (h!56408 (toList!4279 lm!1477))))))))

(assert (=> b!4509012 (contains!13267 lt!1687425 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lm!1477))))))))

(declare-fun lt!1687430 () Unit!93112)

(declare-fun Unit!93270 () Unit!93112)

(assert (=> b!4509012 (= lt!1687430 Unit!93270)))

(assert (=> b!4509012 (contains!13267 lt!1687435 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lm!1477))))))))

(declare-fun lt!1687438 () Unit!93112)

(declare-fun Unit!93271 () Unit!93112)

(assert (=> b!4509012 (= lt!1687438 Unit!93271)))

(assert (=> b!4509012 (forall!10208 (_2!28784 (h!56408 (toList!4279 lm!1477))) lambda!170186)))

(declare-fun lt!1687442 () Unit!93112)

(declare-fun Unit!93272 () Unit!93112)

(assert (=> b!4509012 (= lt!1687442 Unit!93272)))

(assert (=> b!4509012 call!313970))

(declare-fun lt!1687443 () Unit!93112)

(declare-fun Unit!93273 () Unit!93112)

(assert (=> b!4509012 (= lt!1687443 Unit!93273)))

(declare-fun lt!1687440 () Unit!93112)

(declare-fun Unit!93274 () Unit!93112)

(assert (=> b!4509012 (= lt!1687440 Unit!93274)))

(declare-fun lt!1687441 () Unit!93112)

(assert (=> b!4509012 (= lt!1687441 (addForallContainsKeyThenBeforeAdding!315 (extractMap!1192 (t!357663 (toList!4279 lm!1477))) lt!1687435 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lm!1477))))) (_2!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lm!1477)))))))))

(assert (=> b!4509012 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) lambda!170186)))

(declare-fun lt!1687423 () Unit!93112)

(assert (=> b!4509012 (= lt!1687423 lt!1687441)))

(assert (=> b!4509012 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) lambda!170186)))

(declare-fun lt!1687436 () Unit!93112)

(declare-fun Unit!93275 () Unit!93112)

(assert (=> b!4509012 (= lt!1687436 Unit!93275)))

(declare-fun res!1875270 () Bool)

(assert (=> b!4509012 (= res!1875270 (forall!10208 (_2!28784 (h!56408 (toList!4279 lm!1477))) lambda!170186))))

(assert (=> b!4509012 (=> (not res!1875270) (not e!2808968))))

(assert (=> b!4509012 e!2808968))

(declare-fun lt!1687429 () Unit!93112)

(declare-fun Unit!93276 () Unit!93112)

(assert (=> b!4509012 (= lt!1687429 Unit!93276)))

(assert (=> d!1386594 e!2808966))

(declare-fun res!1875271 () Bool)

(assert (=> d!1386594 (=> (not res!1875271) (not e!2808966))))

(assert (=> d!1386594 (= res!1875271 (forall!10208 (_2!28784 (h!56408 (toList!4279 lm!1477))) lambda!170187))))

(assert (=> d!1386594 (= lt!1687437 e!2808967)))

(assert (=> d!1386594 (= c!769103 ((_ is Nil!50576) (_2!28784 (h!56408 (toList!4279 lm!1477)))))))

(assert (=> d!1386594 (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lm!1477))))))

(assert (=> d!1386594 (= (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 lm!1477))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) lt!1687437)))

(declare-fun b!4509013 () Bool)

(declare-fun res!1875269 () Bool)

(assert (=> b!4509013 (=> (not res!1875269) (not e!2808966))))

(assert (=> b!4509013 (= res!1875269 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) lambda!170187))))

(assert (= (and d!1386594 c!769103) b!4509010))

(assert (= (and d!1386594 (not c!769103)) b!4509012))

(assert (= (and b!4509012 res!1875270) b!4509011))

(assert (= (or b!4509010 b!4509012) bm!313965))

(assert (= (or b!4509010 b!4509012) bm!313966))

(assert (= (or b!4509010 b!4509012) bm!313967))

(assert (= (and d!1386594 res!1875271) b!4509013))

(assert (= (and b!4509013 res!1875269) b!4509009))

(assert (=> bm!313967 m!5245431))

(declare-fun m!5247307 () Bool)

(assert (=> bm!313967 m!5247307))

(declare-fun m!5247309 () Bool)

(assert (=> b!4509011 m!5247309))

(assert (=> b!4509012 m!5247309))

(declare-fun m!5247311 () Bool)

(assert (=> b!4509012 m!5247311))

(declare-fun m!5247313 () Bool)

(assert (=> b!4509012 m!5247313))

(assert (=> b!4509012 m!5247309))

(assert (=> b!4509012 m!5245431))

(declare-fun m!5247317 () Bool)

(assert (=> b!4509012 m!5247317))

(assert (=> b!4509012 m!5245431))

(declare-fun m!5247321 () Bool)

(assert (=> b!4509012 m!5247321))

(assert (=> b!4509012 m!5247321))

(declare-fun m!5247323 () Bool)

(assert (=> b!4509012 m!5247323))

(declare-fun m!5247325 () Bool)

(assert (=> b!4509012 m!5247325))

(assert (=> b!4509012 m!5247313))

(declare-fun m!5247327 () Bool)

(assert (=> b!4509012 m!5247327))

(declare-fun m!5247331 () Bool)

(assert (=> b!4509012 m!5247331))

(declare-fun m!5247333 () Bool)

(assert (=> b!4509012 m!5247333))

(declare-fun m!5247335 () Bool)

(assert (=> bm!313965 m!5247335))

(declare-fun m!5247337 () Bool)

(assert (=> b!4509013 m!5247337))

(declare-fun m!5247339 () Bool)

(assert (=> b!4509009 m!5247339))

(declare-fun m!5247341 () Bool)

(assert (=> d!1386594 m!5247341))

(assert (=> d!1386594 m!5246119))

(declare-fun m!5247343 () Bool)

(assert (=> bm!313966 m!5247343))

(assert (=> b!4508337 d!1386594))

(assert (=> b!4508337 d!1386188))

(declare-fun d!1386622 () Bool)

(assert (=> d!1386622 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1686666) hash!344))))

(declare-fun lt!1687453 () Unit!93112)

(assert (=> d!1386622 (= lt!1687453 (choose!29267 (toList!4279 lt!1686666) hash!344))))

(declare-fun e!2809001 () Bool)

(assert (=> d!1386622 e!2809001))

(declare-fun res!1875289 () Bool)

(assert (=> d!1386622 (=> (not res!1875289) (not e!2809001))))

(assert (=> d!1386622 (= res!1875289 (isStrictlySorted!409 (toList!4279 lt!1686666)))))

(assert (=> d!1386622 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!951 (toList!4279 lt!1686666) hash!344) lt!1687453)))

(declare-fun b!4509065 () Bool)

(assert (=> b!4509065 (= e!2809001 (containsKey!1714 (toList!4279 lt!1686666) hash!344))))

(assert (= (and d!1386622 res!1875289) b!4509065))

(assert (=> d!1386622 m!5245847))

(assert (=> d!1386622 m!5245847))

(assert (=> d!1386622 m!5245849))

(declare-fun m!5247347 () Bool)

(assert (=> d!1386622 m!5247347))

(assert (=> d!1386622 m!5246193))

(assert (=> b!4509065 m!5245843))

(assert (=> b!4508254 d!1386622))

(assert (=> b!4508254 d!1386306))

(assert (=> b!4508254 d!1386308))

(assert (=> b!4508320 d!1386464))

(assert (=> b!4508320 d!1386316))

(declare-fun d!1386626 () Bool)

(assert (=> d!1386626 (= (invariantList!995 (toList!4280 lt!1686763)) (noDuplicatedKeys!252 (toList!4280 lt!1686763)))))

(declare-fun bs!845742 () Bool)

(assert (= bs!845742 d!1386626))

(declare-fun m!5247349 () Bool)

(assert (=> bs!845742 m!5247349))

(assert (=> d!1386112 d!1386626))

(declare-fun d!1386628 () Bool)

(declare-fun res!1875290 () Bool)

(declare-fun e!2809002 () Bool)

(assert (=> d!1386628 (=> res!1875290 e!2809002)))

(assert (=> d!1386628 (= res!1875290 ((_ is Nil!50577) (toList!4279 lt!1686674)))))

(assert (=> d!1386628 (= (forall!10207 (toList!4279 lt!1686674) lambda!169992) e!2809002)))

(declare-fun b!4509066 () Bool)

(declare-fun e!2809003 () Bool)

(assert (=> b!4509066 (= e!2809002 e!2809003)))

(declare-fun res!1875291 () Bool)

(assert (=> b!4509066 (=> (not res!1875291) (not e!2809003))))

(assert (=> b!4509066 (= res!1875291 (dynLambda!21131 lambda!169992 (h!56408 (toList!4279 lt!1686674))))))

(declare-fun b!4509067 () Bool)

(assert (=> b!4509067 (= e!2809003 (forall!10207 (t!357663 (toList!4279 lt!1686674)) lambda!169992))))

(assert (= (and d!1386628 (not res!1875290)) b!4509066))

(assert (= (and b!4509066 res!1875291) b!4509067))

(declare-fun b_lambda!153581 () Bool)

(assert (=> (not b_lambda!153581) (not b!4509066)))

(declare-fun m!5247351 () Bool)

(assert (=> b!4509066 m!5247351))

(declare-fun m!5247353 () Bool)

(assert (=> b!4509067 m!5247353))

(assert (=> d!1386112 d!1386628))

(declare-fun d!1386632 () Bool)

(declare-fun c!769121 () Bool)

(assert (=> d!1386632 (= c!769121 ((_ is Nil!50576) (toList!4280 lt!1686668)))))

(declare-fun e!2809006 () (InoxSet tuple2!50978))

(assert (=> d!1386632 (= (content!8290 (toList!4280 lt!1686668)) e!2809006)))

(declare-fun b!4509070 () Bool)

(assert (=> b!4509070 (= e!2809006 ((as const (Array tuple2!50978 Bool)) false))))

(declare-fun b!4509071 () Bool)

(assert (=> b!4509071 (= e!2809006 ((_ map or) (store ((as const (Array tuple2!50978 Bool)) false) (h!56407 (toList!4280 lt!1686668)) true) (content!8290 (t!357662 (toList!4280 lt!1686668)))))))

(assert (= (and d!1386632 c!769121) b!4509070))

(assert (= (and d!1386632 (not c!769121)) b!4509071))

(declare-fun m!5247357 () Bool)

(assert (=> b!4509071 m!5247357))

(declare-fun m!5247359 () Bool)

(assert (=> b!4509071 m!5247359))

(assert (=> d!1386228 d!1386632))

(declare-fun d!1386636 () Bool)

(declare-fun c!769122 () Bool)

(assert (=> d!1386636 (= c!769122 ((_ is Nil!50576) (toList!4280 (-!362 lt!1686670 key!3287))))))

(declare-fun e!2809007 () (InoxSet tuple2!50978))

(assert (=> d!1386636 (= (content!8290 (toList!4280 (-!362 lt!1686670 key!3287))) e!2809007)))

(declare-fun b!4509072 () Bool)

(assert (=> b!4509072 (= e!2809007 ((as const (Array tuple2!50978 Bool)) false))))

(declare-fun b!4509073 () Bool)

(assert (=> b!4509073 (= e!2809007 ((_ map or) (store ((as const (Array tuple2!50978 Bool)) false) (h!56407 (toList!4280 (-!362 lt!1686670 key!3287))) true) (content!8290 (t!357662 (toList!4280 (-!362 lt!1686670 key!3287))))))))

(assert (= (and d!1386636 c!769122) b!4509072))

(assert (= (and d!1386636 (not c!769122)) b!4509073))

(declare-fun m!5247361 () Bool)

(assert (=> b!4509073 m!5247361))

(declare-fun m!5247363 () Bool)

(assert (=> b!4509073 m!5247363))

(assert (=> d!1386228 d!1386636))

(declare-fun d!1386638 () Bool)

(declare-fun e!2809009 () Bool)

(assert (=> d!1386638 e!2809009))

(declare-fun res!1875294 () Bool)

(assert (=> d!1386638 (=> res!1875294 e!2809009)))

(declare-fun lt!1687454 () Bool)

(assert (=> d!1386638 (= res!1875294 (not lt!1687454))))

(declare-fun lt!1687455 () Bool)

(assert (=> d!1386638 (= lt!1687454 lt!1687455)))

(declare-fun lt!1687456 () Unit!93112)

(declare-fun e!2809008 () Unit!93112)

(assert (=> d!1386638 (= lt!1687456 e!2809008)))

(declare-fun c!769123 () Bool)

(assert (=> d!1386638 (= c!769123 lt!1687455)))

(assert (=> d!1386638 (= lt!1687455 (containsKey!1714 (toList!4279 lm!1477) (hash!2729 hashF!1107 key!3287)))))

(assert (=> d!1386638 (= (contains!13269 lm!1477 (hash!2729 hashF!1107 key!3287)) lt!1687454)))

(declare-fun b!4509074 () Bool)

(declare-fun lt!1687457 () Unit!93112)

(assert (=> b!4509074 (= e!2809008 lt!1687457)))

(assert (=> b!4509074 (= lt!1687457 (lemmaContainsKeyImpliesGetValueByKeyDefined!951 (toList!4279 lm!1477) (hash!2729 hashF!1107 key!3287)))))

(assert (=> b!4509074 (isDefined!8354 (getValueByKey!1048 (toList!4279 lm!1477) (hash!2729 hashF!1107 key!3287)))))

(declare-fun b!4509075 () Bool)

(declare-fun Unit!93279 () Unit!93112)

(assert (=> b!4509075 (= e!2809008 Unit!93279)))

(declare-fun b!4509076 () Bool)

(assert (=> b!4509076 (= e!2809009 (isDefined!8354 (getValueByKey!1048 (toList!4279 lm!1477) (hash!2729 hashF!1107 key!3287))))))

(assert (= (and d!1386638 c!769123) b!4509074))

(assert (= (and d!1386638 (not c!769123)) b!4509075))

(assert (= (and d!1386638 (not res!1875294)) b!4509076))

(assert (=> d!1386638 m!5245397))

(declare-fun m!5247365 () Bool)

(assert (=> d!1386638 m!5247365))

(assert (=> b!4509074 m!5245397))

(declare-fun m!5247367 () Bool)

(assert (=> b!4509074 m!5247367))

(assert (=> b!4509074 m!5245397))

(declare-fun m!5247369 () Bool)

(assert (=> b!4509074 m!5247369))

(assert (=> b!4509074 m!5247369))

(declare-fun m!5247373 () Bool)

(assert (=> b!4509074 m!5247373))

(assert (=> b!4509076 m!5245397))

(assert (=> b!4509076 m!5247369))

(assert (=> b!4509076 m!5247369))

(assert (=> b!4509076 m!5247373))

(assert (=> d!1386200 d!1386638))

(assert (=> d!1386200 d!1386220))

(declare-fun d!1386644 () Bool)

(assert (=> d!1386644 (contains!13269 lm!1477 (hash!2729 hashF!1107 key!3287))))

(assert (=> d!1386644 true))

(declare-fun _$27!1203 () Unit!93112)

(assert (=> d!1386644 (= (choose!29258 lm!1477 key!3287 hashF!1107) _$27!1203)))

(declare-fun bs!845744 () Bool)

(assert (= bs!845744 d!1386644))

(assert (=> bs!845744 m!5245397))

(assert (=> bs!845744 m!5245397))

(assert (=> bs!845744 m!5245989))

(assert (=> d!1386200 d!1386644))

(declare-fun d!1386648 () Bool)

(declare-fun res!1875298 () Bool)

(declare-fun e!2809018 () Bool)

(assert (=> d!1386648 (=> res!1875298 e!2809018)))

(assert (=> d!1386648 (= res!1875298 ((_ is Nil!50577) (toList!4279 lm!1477)))))

(assert (=> d!1386648 (= (forall!10207 (toList!4279 lm!1477) lambda!170083) e!2809018)))

(declare-fun b!4509090 () Bool)

(declare-fun e!2809019 () Bool)

(assert (=> b!4509090 (= e!2809018 e!2809019)))

(declare-fun res!1875299 () Bool)

(assert (=> b!4509090 (=> (not res!1875299) (not e!2809019))))

(assert (=> b!4509090 (= res!1875299 (dynLambda!21131 lambda!170083 (h!56408 (toList!4279 lm!1477))))))

(declare-fun b!4509091 () Bool)

(assert (=> b!4509091 (= e!2809019 (forall!10207 (t!357663 (toList!4279 lm!1477)) lambda!170083))))

(assert (= (and d!1386648 (not res!1875298)) b!4509090))

(assert (= (and b!4509090 res!1875299) b!4509091))

(declare-fun b_lambda!153583 () Bool)

(assert (=> (not b_lambda!153583) (not b!4509090)))

(declare-fun m!5247395 () Bool)

(assert (=> b!4509090 m!5247395))

(declare-fun m!5247397 () Bool)

(assert (=> b!4509091 m!5247397))

(assert (=> d!1386200 d!1386648))

(declare-fun bs!845745 () Bool)

(declare-fun b!4509099 () Bool)

(assert (= bs!845745 (and b!4509099 b!4508423)))

(declare-fun lambda!170188 () Int)

(assert (=> bs!845745 (= (= (t!357662 (toList!4280 lt!1686670)) (toList!4280 lt!1686664)) (= lambda!170188 lambda!170102))))

(declare-fun bs!845746 () Bool)

(assert (= bs!845746 (and b!4509099 b!4508688)))

(assert (=> bs!845746 (= (= (t!357662 (toList!4280 lt!1686670)) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= lambda!170188 lambda!170132))))

(declare-fun bs!845747 () Bool)

(assert (= bs!845747 (and b!4509099 b!4508765)))

(assert (=> bs!845747 (= (= (t!357662 (toList!4280 lt!1686670)) (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664)))) (= lambda!170188 lambda!170150))))

(declare-fun bs!845748 () Bool)

(assert (= bs!845748 (and b!4509099 b!4508761)))

(assert (=> bs!845748 (= (= (t!357662 (toList!4280 lt!1686670)) (toList!4280 lt!1686664)) (= lambda!170188 lambda!170151))))

(declare-fun bs!845749 () Bool)

(assert (= bs!845749 (and b!4509099 b!4508767)))

(assert (=> bs!845749 (= (= (t!357662 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686664))) (= lambda!170188 lambda!170149))))

(declare-fun bs!845750 () Bool)

(assert (= bs!845750 (and b!4509099 b!4508546)))

(assert (=> bs!845750 (= (= (t!357662 (toList!4280 lt!1686670)) (toList!4280 lt!1686670)) (= lambda!170188 lambda!170117))))

(assert (=> b!4509099 true))

(declare-fun bs!845751 () Bool)

(declare-fun b!4509097 () Bool)

(assert (= bs!845751 (and b!4509097 b!4508423)))

(declare-fun lambda!170189 () Int)

(assert (=> bs!845751 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670))) (toList!4280 lt!1686664)) (= lambda!170189 lambda!170102))))

(declare-fun bs!845752 () Bool)

(assert (= bs!845752 (and b!4509097 b!4509099)))

(assert (=> bs!845752 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670))) (t!357662 (toList!4280 lt!1686670))) (= lambda!170189 lambda!170188))))

(declare-fun bs!845753 () Bool)

(assert (= bs!845753 (and b!4509097 b!4508688)))

(assert (=> bs!845753 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670))) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= lambda!170189 lambda!170132))))

(declare-fun bs!845754 () Bool)

(assert (= bs!845754 (and b!4509097 b!4508765)))

(assert (=> bs!845754 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670))) (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664)))) (= lambda!170189 lambda!170150))))

(declare-fun bs!845755 () Bool)

(assert (= bs!845755 (and b!4509097 b!4508761)))

(assert (=> bs!845755 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670))) (toList!4280 lt!1686664)) (= lambda!170189 lambda!170151))))

(declare-fun bs!845756 () Bool)

(assert (= bs!845756 (and b!4509097 b!4508767)))

(assert (=> bs!845756 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670))) (t!357662 (toList!4280 lt!1686664))) (= lambda!170189 lambda!170149))))

(declare-fun bs!845757 () Bool)

(assert (= bs!845757 (and b!4509097 b!4508546)))

(assert (=> bs!845757 (= (= (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670))) (toList!4280 lt!1686670)) (= lambda!170189 lambda!170117))))

(assert (=> b!4509097 true))

(declare-fun bs!845758 () Bool)

(declare-fun b!4509093 () Bool)

(assert (= bs!845758 (and b!4509093 b!4508423)))

(declare-fun lambda!170190 () Int)

(assert (=> bs!845758 (= (= (toList!4280 lt!1686670) (toList!4280 lt!1686664)) (= lambda!170190 lambda!170102))))

(declare-fun bs!845759 () Bool)

(assert (= bs!845759 (and b!4509093 b!4509099)))

(assert (=> bs!845759 (= (= (toList!4280 lt!1686670) (t!357662 (toList!4280 lt!1686670))) (= lambda!170190 lambda!170188))))

(declare-fun bs!845760 () Bool)

(assert (= bs!845760 (and b!4509093 b!4508688)))

(assert (=> bs!845760 (= (= (toList!4280 lt!1686670) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= lambda!170190 lambda!170132))))

(declare-fun bs!845761 () Bool)

(assert (= bs!845761 (and b!4509093 b!4508765)))

(assert (=> bs!845761 (= (= (toList!4280 lt!1686670) (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664)))) (= lambda!170190 lambda!170150))))

(declare-fun bs!845762 () Bool)

(assert (= bs!845762 (and b!4509093 b!4508761)))

(assert (=> bs!845762 (= (= (toList!4280 lt!1686670) (toList!4280 lt!1686664)) (= lambda!170190 lambda!170151))))

(declare-fun bs!845763 () Bool)

(assert (= bs!845763 (and b!4509093 b!4509097)))

(assert (=> bs!845763 (= (= (toList!4280 lt!1686670) (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670)))) (= lambda!170190 lambda!170189))))

(declare-fun bs!845764 () Bool)

(assert (= bs!845764 (and b!4509093 b!4508767)))

(assert (=> bs!845764 (= (= (toList!4280 lt!1686670) (t!357662 (toList!4280 lt!1686664))) (= lambda!170190 lambda!170149))))

(declare-fun bs!845765 () Bool)

(assert (= bs!845765 (and b!4509093 b!4508546)))

(assert (=> bs!845765 (= lambda!170190 lambda!170117)))

(assert (=> b!4509093 true))

(declare-fun bs!845766 () Bool)

(declare-fun b!4509096 () Bool)

(assert (= bs!845766 (and b!4509096 b!4508424)))

(declare-fun lambda!170191 () Int)

(assert (=> bs!845766 (= lambda!170191 lambda!170103)))

(declare-fun bs!845767 () Bool)

(assert (= bs!845767 (and b!4509096 b!4508547)))

(assert (=> bs!845767 (= lambda!170191 lambda!170118)))

(declare-fun bs!845768 () Bool)

(assert (= bs!845768 (and b!4509096 b!4508689)))

(assert (=> bs!845768 (= lambda!170191 lambda!170133)))

(declare-fun bs!845769 () Bool)

(assert (= bs!845769 (and b!4509096 b!4508764)))

(assert (=> bs!845769 (= lambda!170191 lambda!170152)))

(declare-fun b!4509092 () Bool)

(declare-fun e!2809022 () List!50703)

(assert (=> b!4509092 (= e!2809022 Nil!50579)))

(declare-fun res!1875302 () Bool)

(declare-fun e!2809021 () Bool)

(assert (=> b!4509093 (=> (not res!1875302) (not e!2809021))))

(declare-fun lt!1687472 () List!50703)

(assert (=> b!4509093 (= res!1875302 (forall!10210 lt!1687472 lambda!170190))))

(declare-fun b!4509094 () Bool)

(declare-fun e!2809020 () Unit!93112)

(declare-fun Unit!93280 () Unit!93112)

(assert (=> b!4509094 (= e!2809020 Unit!93280)))

(declare-fun b!4509095 () Bool)

(declare-fun e!2809023 () Unit!93112)

(declare-fun Unit!93281 () Unit!93112)

(assert (=> b!4509095 (= e!2809023 Unit!93281)))

(declare-fun d!1386650 () Bool)

(assert (=> d!1386650 e!2809021))

(declare-fun res!1875300 () Bool)

(assert (=> d!1386650 (=> (not res!1875300) (not e!2809021))))

(assert (=> d!1386650 (= res!1875300 (noDuplicate!737 lt!1687472))))

(assert (=> d!1386650 (= lt!1687472 e!2809022)))

(declare-fun c!769129 () Bool)

(assert (=> d!1386650 (= c!769129 ((_ is Cons!50576) (toList!4280 lt!1686670)))))

(assert (=> d!1386650 (invariantList!995 (toList!4280 lt!1686670))))

(assert (=> d!1386650 (= (getKeysList!443 (toList!4280 lt!1686670)) lt!1687472)))

(assert (=> b!4509096 (= e!2809021 (= (content!8293 lt!1687472) (content!8293 (map!11116 (toList!4280 lt!1686670) lambda!170191))))))

(assert (=> b!4509097 (= e!2809022 (Cons!50579 (_1!28783 (h!56407 (toList!4280 lt!1686670))) (getKeysList!443 (t!357662 (toList!4280 lt!1686670)))))))

(declare-fun c!769131 () Bool)

(assert (=> b!4509097 (= c!769131 (containsKey!1715 (t!357662 (toList!4280 lt!1686670)) (_1!28783 (h!56407 (toList!4280 lt!1686670)))))))

(declare-fun lt!1687468 () Unit!93112)

(assert (=> b!4509097 (= lt!1687468 e!2809020)))

(declare-fun c!769130 () Bool)

(assert (=> b!4509097 (= c!769130 (contains!13271 (getKeysList!443 (t!357662 (toList!4280 lt!1686670))) (_1!28783 (h!56407 (toList!4280 lt!1686670)))))))

(declare-fun lt!1687470 () Unit!93112)

(assert (=> b!4509097 (= lt!1687470 e!2809023)))

(declare-fun lt!1687469 () List!50703)

(assert (=> b!4509097 (= lt!1687469 (getKeysList!443 (t!357662 (toList!4280 lt!1686670))))))

(declare-fun lt!1687471 () Unit!93112)

(assert (=> b!4509097 (= lt!1687471 (lemmaForallContainsAddHeadPreserves!158 (t!357662 (toList!4280 lt!1686670)) lt!1687469 (h!56407 (toList!4280 lt!1686670))))))

(assert (=> b!4509097 (forall!10210 lt!1687469 lambda!170189)))

(declare-fun lt!1687467 () Unit!93112)

(assert (=> b!4509097 (= lt!1687467 lt!1687471)))

(declare-fun b!4509098 () Bool)

(declare-fun res!1875301 () Bool)

(assert (=> b!4509098 (=> (not res!1875301) (not e!2809021))))

(assert (=> b!4509098 (= res!1875301 (= (length!330 lt!1687472) (length!331 (toList!4280 lt!1686670))))))

(assert (=> b!4509099 false))

(declare-fun lt!1687466 () Unit!93112)

(assert (=> b!4509099 (= lt!1687466 (forallContained!2462 (getKeysList!443 (t!357662 (toList!4280 lt!1686670))) lambda!170188 (_1!28783 (h!56407 (toList!4280 lt!1686670)))))))

(declare-fun Unit!93282 () Unit!93112)

(assert (=> b!4509099 (= e!2809023 Unit!93282)))

(declare-fun b!4509100 () Bool)

(assert (=> b!4509100 false))

(declare-fun Unit!93283 () Unit!93112)

(assert (=> b!4509100 (= e!2809020 Unit!93283)))

(assert (= (and d!1386650 c!769129) b!4509097))

(assert (= (and d!1386650 (not c!769129)) b!4509092))

(assert (= (and b!4509097 c!769131) b!4509100))

(assert (= (and b!4509097 (not c!769131)) b!4509094))

(assert (= (and b!4509097 c!769130) b!4509099))

(assert (= (and b!4509097 (not c!769130)) b!4509095))

(assert (= (and d!1386650 res!1875300) b!4509098))

(assert (= (and b!4509098 res!1875301) b!4509093))

(assert (= (and b!4509093 res!1875302) b!4509096))

(declare-fun m!5247399 () Bool)

(assert (=> b!4509099 m!5247399))

(assert (=> b!4509099 m!5247399))

(declare-fun m!5247401 () Bool)

(assert (=> b!4509099 m!5247401))

(declare-fun m!5247403 () Bool)

(assert (=> b!4509097 m!5247403))

(assert (=> b!4509097 m!5247399))

(declare-fun m!5247405 () Bool)

(assert (=> b!4509097 m!5247405))

(declare-fun m!5247407 () Bool)

(assert (=> b!4509097 m!5247407))

(assert (=> b!4509097 m!5247399))

(declare-fun m!5247409 () Bool)

(assert (=> b!4509097 m!5247409))

(declare-fun m!5247411 () Bool)

(assert (=> b!4509096 m!5247411))

(declare-fun m!5247413 () Bool)

(assert (=> b!4509096 m!5247413))

(assert (=> b!4509096 m!5247413))

(declare-fun m!5247415 () Bool)

(assert (=> b!4509096 m!5247415))

(declare-fun m!5247417 () Bool)

(assert (=> b!4509093 m!5247417))

(declare-fun m!5247419 () Bool)

(assert (=> d!1386650 m!5247419))

(assert (=> d!1386650 m!5246847))

(declare-fun m!5247421 () Bool)

(assert (=> b!4509098 m!5247421))

(assert (=> b!4509098 m!5246349))

(assert (=> b!4508325 d!1386650))

(assert (=> b!4508306 d!1386492))

(assert (=> b!4508306 d!1386494))

(declare-fun d!1386652 () Bool)

(declare-fun res!1875303 () Bool)

(declare-fun e!2809024 () Bool)

(assert (=> d!1386652 (=> res!1875303 e!2809024)))

(assert (=> d!1386652 (= res!1875303 ((_ is Nil!50576) (_2!28784 lt!1686680)))))

(assert (=> d!1386652 (= (forall!10208 (_2!28784 lt!1686680) lambda!170065) e!2809024)))

(declare-fun b!4509101 () Bool)

(declare-fun e!2809025 () Bool)

(assert (=> b!4509101 (= e!2809024 e!2809025)))

(declare-fun res!1875304 () Bool)

(assert (=> b!4509101 (=> (not res!1875304) (not e!2809025))))

(assert (=> b!4509101 (= res!1875304 (dynLambda!21132 lambda!170065 (h!56407 (_2!28784 lt!1686680))))))

(declare-fun b!4509102 () Bool)

(assert (=> b!4509102 (= e!2809025 (forall!10208 (t!357662 (_2!28784 lt!1686680)) lambda!170065))))

(assert (= (and d!1386652 (not res!1875303)) b!4509101))

(assert (= (and b!4509101 res!1875304) b!4509102))

(declare-fun b_lambda!153585 () Bool)

(assert (=> (not b_lambda!153585) (not b!4509101)))

(declare-fun m!5247423 () Bool)

(assert (=> b!4509101 m!5247423))

(declare-fun m!5247425 () Bool)

(assert (=> b!4509102 m!5247425))

(assert (=> d!1386122 d!1386652))

(declare-fun d!1386654 () Bool)

(declare-fun res!1875305 () Bool)

(declare-fun e!2809026 () Bool)

(assert (=> d!1386654 (=> res!1875305 e!2809026)))

(assert (=> d!1386654 (= res!1875305 (not ((_ is Cons!50576) (_2!28784 lt!1686680))))))

(assert (=> d!1386654 (= (noDuplicateKeys!1136 (_2!28784 lt!1686680)) e!2809026)))

(declare-fun b!4509103 () Bool)

(declare-fun e!2809027 () Bool)

(assert (=> b!4509103 (= e!2809026 e!2809027)))

(declare-fun res!1875306 () Bool)

(assert (=> b!4509103 (=> (not res!1875306) (not e!2809027))))

(assert (=> b!4509103 (= res!1875306 (not (containsKey!1712 (t!357662 (_2!28784 lt!1686680)) (_1!28783 (h!56407 (_2!28784 lt!1686680))))))))

(declare-fun b!4509104 () Bool)

(assert (=> b!4509104 (= e!2809027 (noDuplicateKeys!1136 (t!357662 (_2!28784 lt!1686680))))))

(assert (= (and d!1386654 (not res!1875305)) b!4509103))

(assert (= (and b!4509103 res!1875306) b!4509104))

(declare-fun m!5247427 () Bool)

(assert (=> b!4509103 m!5247427))

(assert (=> b!4509104 m!5247089))

(assert (=> d!1386122 d!1386654))

(declare-fun d!1386656 () Bool)

(declare-fun choose!29277 (Hashable!5531 K!11980) (_ BitVec 64))

(assert (=> d!1386656 (= (hash!2733 hashF!1107 key!3287) (choose!29277 hashF!1107 key!3287))))

(declare-fun bs!845770 () Bool)

(assert (= bs!845770 d!1386656))

(declare-fun m!5247429 () Bool)

(assert (=> bs!845770 m!5247429))

(assert (=> d!1386220 d!1386656))

(assert (=> d!1386084 d!1386080))

(declare-fun d!1386658 () Bool)

(assert (=> d!1386658 (containsKeyBiggerList!116 (toList!4279 lt!1686666) key!3287)))

(assert (=> d!1386658 true))

(declare-fun _$33!640 () Unit!93112)

(assert (=> d!1386658 (= (choose!29252 lt!1686666 key!3287 hashF!1107) _$33!640)))

(declare-fun bs!845771 () Bool)

(assert (= bs!845771 d!1386658))

(assert (=> bs!845771 m!5245373))

(assert (=> d!1386084 d!1386658))

(declare-fun d!1386660 () Bool)

(declare-fun res!1875307 () Bool)

(declare-fun e!2809028 () Bool)

(assert (=> d!1386660 (=> res!1875307 e!2809028)))

(assert (=> d!1386660 (= res!1875307 ((_ is Nil!50577) (toList!4279 lt!1686666)))))

(assert (=> d!1386660 (= (forall!10207 (toList!4279 lt!1686666) lambda!169986) e!2809028)))

(declare-fun b!4509105 () Bool)

(declare-fun e!2809029 () Bool)

(assert (=> b!4509105 (= e!2809028 e!2809029)))

(declare-fun res!1875308 () Bool)

(assert (=> b!4509105 (=> (not res!1875308) (not e!2809029))))

(assert (=> b!4509105 (= res!1875308 (dynLambda!21131 lambda!169986 (h!56408 (toList!4279 lt!1686666))))))

(declare-fun b!4509106 () Bool)

(assert (=> b!4509106 (= e!2809029 (forall!10207 (t!357663 (toList!4279 lt!1686666)) lambda!169986))))

(assert (= (and d!1386660 (not res!1875307)) b!4509105))

(assert (= (and b!4509105 res!1875308) b!4509106))

(declare-fun b_lambda!153587 () Bool)

(assert (=> (not b_lambda!153587) (not b!4509105)))

(declare-fun m!5247431 () Bool)

(assert (=> b!4509105 m!5247431))

(declare-fun m!5247433 () Bool)

(assert (=> b!4509106 m!5247433))

(assert (=> d!1386084 d!1386660))

(declare-fun b!4509107 () Bool)

(declare-fun e!2809031 () List!50700)

(assert (=> b!4509107 (= e!2809031 (t!357662 (t!357662 lt!1686663)))))

(declare-fun b!4509109 () Bool)

(declare-fun e!2809030 () List!50700)

(assert (=> b!4509109 (= e!2809030 (Cons!50576 (h!56407 (t!357662 lt!1686663)) (removePairForKey!763 (t!357662 (t!357662 lt!1686663)) key!3287)))))

(declare-fun b!4509108 () Bool)

(assert (=> b!4509108 (= e!2809031 e!2809030)))

(declare-fun c!769132 () Bool)

(assert (=> b!4509108 (= c!769132 ((_ is Cons!50576) (t!357662 lt!1686663)))))

(declare-fun b!4509110 () Bool)

(assert (=> b!4509110 (= e!2809030 Nil!50576)))

(declare-fun d!1386662 () Bool)

(declare-fun lt!1687473 () List!50700)

(assert (=> d!1386662 (not (containsKey!1712 lt!1687473 key!3287))))

(assert (=> d!1386662 (= lt!1687473 e!2809031)))

(declare-fun c!769133 () Bool)

(assert (=> d!1386662 (= c!769133 (and ((_ is Cons!50576) (t!357662 lt!1686663)) (= (_1!28783 (h!56407 (t!357662 lt!1686663))) key!3287)))))

(assert (=> d!1386662 (noDuplicateKeys!1136 (t!357662 lt!1686663))))

(assert (=> d!1386662 (= (removePairForKey!763 (t!357662 lt!1686663) key!3287) lt!1687473)))

(assert (= (and d!1386662 c!769133) b!4509107))

(assert (= (and d!1386662 (not c!769133)) b!4509108))

(assert (= (and b!4509108 c!769132) b!4509109))

(assert (= (and b!4509108 (not c!769132)) b!4509110))

(declare-fun m!5247435 () Bool)

(assert (=> b!4509109 m!5247435))

(declare-fun m!5247437 () Bool)

(assert (=> d!1386662 m!5247437))

(assert (=> d!1386662 m!5246267))

(assert (=> b!4508355 d!1386662))

(assert (=> b!4508309 d!1386516))

(assert (=> b!4508309 d!1386376))

(declare-fun d!1386666 () Bool)

(declare-fun c!769136 () Bool)

(assert (=> d!1386666 (= c!769136 ((_ is Nil!50579) (keys!17548 lt!1686670)))))

(declare-fun e!2809040 () (InoxSet K!11980))

(assert (=> d!1386666 (= (content!8293 (keys!17548 lt!1686670)) e!2809040)))

(declare-fun b!4509121 () Bool)

(assert (=> b!4509121 (= e!2809040 ((as const (Array K!11980 Bool)) false))))

(declare-fun b!4509122 () Bool)

(assert (=> b!4509122 (= e!2809040 ((_ map or) (store ((as const (Array K!11980 Bool)) false) (h!56412 (keys!17548 lt!1686670)) true) (content!8293 (t!357665 (keys!17548 lt!1686670)))))))

(assert (= (and d!1386666 c!769136) b!4509121))

(assert (= (and d!1386666 (not c!769136)) b!4509122))

(declare-fun m!5247459 () Bool)

(assert (=> b!4509122 m!5247459))

(declare-fun m!5247461 () Bool)

(assert (=> b!4509122 m!5247461))

(assert (=> b!4508374 d!1386666))

(assert (=> b!4508374 d!1386316))

(declare-fun d!1386680 () Bool)

(declare-fun c!769137 () Bool)

(assert (=> d!1386680 (= c!769137 ((_ is Nil!50579) (keys!17548 lt!1687030)))))

(declare-fun e!2809043 () (InoxSet K!11980))

(assert (=> d!1386680 (= (content!8293 (keys!17548 lt!1687030)) e!2809043)))

(declare-fun b!4509125 () Bool)

(assert (=> b!4509125 (= e!2809043 ((as const (Array K!11980 Bool)) false))))

(declare-fun b!4509126 () Bool)

(assert (=> b!4509126 (= e!2809043 ((_ map or) (store ((as const (Array K!11980 Bool)) false) (h!56412 (keys!17548 lt!1687030)) true) (content!8293 (t!357665 (keys!17548 lt!1687030)))))))

(assert (= (and d!1386680 c!769137) b!4509125))

(assert (= (and d!1386680 (not c!769137)) b!4509126))

(declare-fun m!5247465 () Bool)

(assert (=> b!4509126 m!5247465))

(declare-fun m!5247469 () Bool)

(assert (=> b!4509126 m!5247469))

(assert (=> b!4508374 d!1386680))

(declare-fun bs!845776 () Bool)

(declare-fun b!4509128 () Bool)

(assert (= bs!845776 (and b!4509128 b!4508423)))

(declare-fun lambda!170192 () Int)

(assert (=> bs!845776 (= (= (toList!4280 lt!1687030) (toList!4280 lt!1686664)) (= lambda!170192 lambda!170102))))

(declare-fun bs!845777 () Bool)

(assert (= bs!845777 (and b!4509128 b!4509099)))

(assert (=> bs!845777 (= (= (toList!4280 lt!1687030) (t!357662 (toList!4280 lt!1686670))) (= lambda!170192 lambda!170188))))

(declare-fun bs!845778 () Bool)

(assert (= bs!845778 (and b!4509128 b!4508688)))

(assert (=> bs!845778 (= (= (toList!4280 lt!1687030) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= lambda!170192 lambda!170132))))

(declare-fun bs!845780 () Bool)

(assert (= bs!845780 (and b!4509128 b!4508765)))

(assert (=> bs!845780 (= (= (toList!4280 lt!1687030) (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664)))) (= lambda!170192 lambda!170150))))

(declare-fun bs!845781 () Bool)

(assert (= bs!845781 (and b!4509128 b!4509093)))

(assert (=> bs!845781 (= (= (toList!4280 lt!1687030) (toList!4280 lt!1686670)) (= lambda!170192 lambda!170190))))

(declare-fun bs!845783 () Bool)

(assert (= bs!845783 (and b!4509128 b!4508761)))

(assert (=> bs!845783 (= (= (toList!4280 lt!1687030) (toList!4280 lt!1686664)) (= lambda!170192 lambda!170151))))

(declare-fun bs!845785 () Bool)

(assert (= bs!845785 (and b!4509128 b!4509097)))

(assert (=> bs!845785 (= (= (toList!4280 lt!1687030) (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670)))) (= lambda!170192 lambda!170189))))

(declare-fun bs!845787 () Bool)

(assert (= bs!845787 (and b!4509128 b!4508767)))

(assert (=> bs!845787 (= (= (toList!4280 lt!1687030) (t!357662 (toList!4280 lt!1686664))) (= lambda!170192 lambda!170149))))

(declare-fun bs!845789 () Bool)

(assert (= bs!845789 (and b!4509128 b!4508546)))

(assert (=> bs!845789 (= (= (toList!4280 lt!1687030) (toList!4280 lt!1686670)) (= lambda!170192 lambda!170117))))

(assert (=> b!4509128 true))

(declare-fun bs!845792 () Bool)

(declare-fun b!4509129 () Bool)

(assert (= bs!845792 (and b!4509129 b!4508764)))

(declare-fun lambda!170194 () Int)

(assert (=> bs!845792 (= lambda!170194 lambda!170152)))

(declare-fun bs!845794 () Bool)

(assert (= bs!845794 (and b!4509129 b!4508547)))

(assert (=> bs!845794 (= lambda!170194 lambda!170118)))

(declare-fun bs!845795 () Bool)

(assert (= bs!845795 (and b!4509129 b!4508689)))

(assert (=> bs!845795 (= lambda!170194 lambda!170133)))

(declare-fun bs!845797 () Bool)

(assert (= bs!845797 (and b!4509129 b!4508424)))

(assert (=> bs!845797 (= lambda!170194 lambda!170103)))

(declare-fun bs!845798 () Bool)

(assert (= bs!845798 (and b!4509129 b!4509096)))

(assert (=> bs!845798 (= lambda!170194 lambda!170191)))

(declare-fun d!1386682 () Bool)

(declare-fun e!2809044 () Bool)

(assert (=> d!1386682 e!2809044))

(declare-fun res!1875319 () Bool)

(assert (=> d!1386682 (=> (not res!1875319) (not e!2809044))))

(declare-fun lt!1687475 () List!50703)

(assert (=> d!1386682 (= res!1875319 (noDuplicate!737 lt!1687475))))

(assert (=> d!1386682 (= lt!1687475 (getKeysList!443 (toList!4280 lt!1687030)))))

(assert (=> d!1386682 (= (keys!17548 lt!1687030) lt!1687475)))

(declare-fun b!4509127 () Bool)

(declare-fun res!1875317 () Bool)

(assert (=> b!4509127 (=> (not res!1875317) (not e!2809044))))

(assert (=> b!4509127 (= res!1875317 (= (length!330 lt!1687475) (length!331 (toList!4280 lt!1687030))))))

(declare-fun res!1875318 () Bool)

(assert (=> b!4509128 (=> (not res!1875318) (not e!2809044))))

(assert (=> b!4509128 (= res!1875318 (forall!10210 lt!1687475 lambda!170192))))

(assert (=> b!4509129 (= e!2809044 (= (content!8293 lt!1687475) (content!8293 (map!11116 (toList!4280 lt!1687030) lambda!170194))))))

(assert (= (and d!1386682 res!1875319) b!4509127))

(assert (= (and b!4509127 res!1875317) b!4509128))

(assert (= (and b!4509128 res!1875318) b!4509129))

(declare-fun m!5247471 () Bool)

(assert (=> d!1386682 m!5247471))

(declare-fun m!5247473 () Bool)

(assert (=> d!1386682 m!5247473))

(declare-fun m!5247475 () Bool)

(assert (=> b!4509127 m!5247475))

(declare-fun m!5247477 () Bool)

(assert (=> b!4509127 m!5247477))

(declare-fun m!5247479 () Bool)

(assert (=> b!4509128 m!5247479))

(declare-fun m!5247481 () Bool)

(assert (=> b!4509129 m!5247481))

(declare-fun m!5247483 () Bool)

(assert (=> b!4509129 m!5247483))

(assert (=> b!4509129 m!5247483))

(declare-fun m!5247485 () Bool)

(assert (=> b!4509129 m!5247485))

(assert (=> b!4508374 d!1386682))

(declare-fun d!1386686 () Bool)

(assert (=> d!1386686 (dynLambda!21131 lambda!169975 lt!1686676)))

(assert (=> d!1386686 true))

(declare-fun _$7!1807 () Unit!93112)

(assert (=> d!1386686 (= (choose!29259 (toList!4279 lm!1477) lambda!169975 lt!1686676) _$7!1807)))

(declare-fun b_lambda!153595 () Bool)

(assert (=> (not b_lambda!153595) (not d!1386686)))

(declare-fun bs!845812 () Bool)

(assert (= bs!845812 d!1386686))

(assert (=> bs!845812 m!5245995))

(assert (=> d!1386202 d!1386686))

(assert (=> d!1386202 d!1386214))

(declare-fun d!1386688 () Bool)

(declare-fun lt!1687497 () Bool)

(assert (=> d!1386688 (= lt!1687497 (select (content!8291 (toList!4279 lt!1686717)) lt!1686677))))

(declare-fun e!2809049 () Bool)

(assert (=> d!1386688 (= lt!1687497 e!2809049)))

(declare-fun res!1875323 () Bool)

(assert (=> d!1386688 (=> (not res!1875323) (not e!2809049))))

(assert (=> d!1386688 (= res!1875323 ((_ is Cons!50577) (toList!4279 lt!1686717)))))

(assert (=> d!1386688 (= (contains!13268 (toList!4279 lt!1686717) lt!1686677) lt!1687497)))

(declare-fun b!4509135 () Bool)

(declare-fun e!2809048 () Bool)

(assert (=> b!4509135 (= e!2809049 e!2809048)))

(declare-fun res!1875324 () Bool)

(assert (=> b!4509135 (=> res!1875324 e!2809048)))

(assert (=> b!4509135 (= res!1875324 (= (h!56408 (toList!4279 lt!1686717)) lt!1686677))))

(declare-fun b!4509136 () Bool)

(assert (=> b!4509136 (= e!2809048 (contains!13268 (t!357663 (toList!4279 lt!1686717)) lt!1686677))))

(assert (= (and d!1386688 res!1875323) b!4509135))

(assert (= (and b!4509135 (not res!1875324)) b!4509136))

(declare-fun m!5247487 () Bool)

(assert (=> d!1386688 m!5247487))

(declare-fun m!5247489 () Bool)

(assert (=> d!1386688 m!5247489))

(declare-fun m!5247491 () Bool)

(assert (=> b!4509136 m!5247491))

(assert (=> b!4508091 d!1386688))

(declare-fun d!1386690 () Bool)

(declare-fun c!769139 () Bool)

(assert (=> d!1386690 (= c!769139 (and ((_ is Cons!50577) (toList!4279 lt!1686722)) (= (_1!28784 (h!56408 (toList!4279 lt!1686722))) (_1!28784 lt!1686680))))))

(declare-fun e!2809050 () Option!11068)

(assert (=> d!1386690 (= (getValueByKey!1048 (toList!4279 lt!1686722) (_1!28784 lt!1686680)) e!2809050)))

(declare-fun b!4509139 () Bool)

(declare-fun e!2809051 () Option!11068)

(assert (=> b!4509139 (= e!2809051 (getValueByKey!1048 (t!357663 (toList!4279 lt!1686722)) (_1!28784 lt!1686680)))))

(declare-fun b!4509138 () Bool)

(assert (=> b!4509138 (= e!2809050 e!2809051)))

(declare-fun c!769140 () Bool)

(assert (=> b!4509138 (= c!769140 (and ((_ is Cons!50577) (toList!4279 lt!1686722)) (not (= (_1!28784 (h!56408 (toList!4279 lt!1686722))) (_1!28784 lt!1686680)))))))

(declare-fun b!4509137 () Bool)

(assert (=> b!4509137 (= e!2809050 (Some!11067 (_2!28784 (h!56408 (toList!4279 lt!1686722)))))))

(declare-fun b!4509140 () Bool)

(assert (=> b!4509140 (= e!2809051 None!11067)))

(assert (= (and d!1386690 c!769139) b!4509137))

(assert (= (and d!1386690 (not c!769139)) b!4509138))

(assert (= (and b!4509138 c!769140) b!4509139))

(assert (= (and b!4509138 (not c!769140)) b!4509140))

(declare-fun m!5247493 () Bool)

(assert (=> b!4509139 m!5247493))

(assert (=> b!4508094 d!1386690))

(assert (=> b!4508333 d!1386254))

(assert (=> b!4508359 d!1386426))

(declare-fun d!1386692 () Bool)

(declare-fun res!1875325 () Bool)

(declare-fun e!2809052 () Bool)

(assert (=> d!1386692 (=> res!1875325 e!2809052)))

(assert (=> d!1386692 (= res!1875325 (and ((_ is Cons!50577) (toList!4279 lm!1477)) (= (_1!28784 (h!56408 (toList!4279 lm!1477))) lt!1686681)))))

(assert (=> d!1386692 (= (containsKey!1714 (toList!4279 lm!1477) lt!1686681) e!2809052)))

(declare-fun b!4509141 () Bool)

(declare-fun e!2809053 () Bool)

(assert (=> b!4509141 (= e!2809052 e!2809053)))

(declare-fun res!1875326 () Bool)

(assert (=> b!4509141 (=> (not res!1875326) (not e!2809053))))

(assert (=> b!4509141 (= res!1875326 (and (or (not ((_ is Cons!50577) (toList!4279 lm!1477))) (bvsle (_1!28784 (h!56408 (toList!4279 lm!1477))) lt!1686681)) ((_ is Cons!50577) (toList!4279 lm!1477)) (bvslt (_1!28784 (h!56408 (toList!4279 lm!1477))) lt!1686681)))))

(declare-fun b!4509142 () Bool)

(assert (=> b!4509142 (= e!2809053 (containsKey!1714 (t!357663 (toList!4279 lm!1477)) lt!1686681))))

(assert (= (and d!1386692 (not res!1875325)) b!4509141))

(assert (= (and b!4509141 res!1875326) b!4509142))

(declare-fun m!5247495 () Bool)

(assert (=> b!4509142 m!5247495))

(assert (=> d!1386204 d!1386692))

(declare-fun bs!845826 () Bool)

(declare-fun b!4509150 () Bool)

(assert (= bs!845826 (and b!4509150 b!4508423)))

(declare-fun lambda!170197 () Int)

(assert (=> bs!845826 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (toList!4280 lt!1686664)) (= lambda!170197 lambda!170102))))

(declare-fun bs!845827 () Bool)

(assert (= bs!845827 (and b!4509150 b!4509099)))

(assert (=> bs!845827 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 lt!1686670))) (= lambda!170197 lambda!170188))))

(declare-fun bs!845828 () Bool)

(assert (= bs!845828 (and b!4509150 b!4508688)))

(assert (=> bs!845828 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= lambda!170197 lambda!170132))))

(declare-fun bs!845829 () Bool)

(assert (= bs!845829 (and b!4509150 b!4508765)))

(assert (=> bs!845829 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664)))) (= lambda!170197 lambda!170150))))

(declare-fun bs!845830 () Bool)

(assert (= bs!845830 (and b!4509150 b!4509093)))

(assert (=> bs!845830 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (toList!4280 lt!1686670)) (= lambda!170197 lambda!170190))))

(declare-fun bs!845831 () Bool)

(assert (= bs!845831 (and b!4509150 b!4508761)))

(assert (=> bs!845831 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (toList!4280 lt!1686664)) (= lambda!170197 lambda!170151))))

(declare-fun bs!845832 () Bool)

(assert (= bs!845832 (and b!4509150 b!4509128)))

(assert (=> bs!845832 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (toList!4280 lt!1687030)) (= lambda!170197 lambda!170192))))

(declare-fun bs!845833 () Bool)

(assert (= bs!845833 (and b!4509150 b!4509097)))

(assert (=> bs!845833 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670)))) (= lambda!170197 lambda!170189))))

(declare-fun bs!845834 () Bool)

(assert (= bs!845834 (and b!4509150 b!4508767)))

(assert (=> bs!845834 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 lt!1686664))) (= lambda!170197 lambda!170149))))

(declare-fun bs!845835 () Bool)

(assert (= bs!845835 (and b!4509150 b!4508546)))

(assert (=> bs!845835 (= (= (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (toList!4280 lt!1686670)) (= lambda!170197 lambda!170117))))

(assert (=> b!4509150 true))

(declare-fun bs!845836 () Bool)

(declare-fun b!4509148 () Bool)

(assert (= bs!845836 (and b!4509148 b!4508423)))

(declare-fun lambda!170198 () Int)

(assert (=> bs!845836 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (toList!4280 lt!1686664)) (= lambda!170198 lambda!170102))))

(declare-fun bs!845837 () Bool)

(assert (= bs!845837 (and b!4509148 b!4509099)))

(assert (=> bs!845837 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (t!357662 (toList!4280 lt!1686670))) (= lambda!170198 lambda!170188))))

(declare-fun bs!845838 () Bool)

(assert (= bs!845838 (and b!4509148 b!4508688)))

(assert (=> bs!845838 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (= lambda!170198 lambda!170132))))

(declare-fun bs!845839 () Bool)

(assert (= bs!845839 (and b!4509148 b!4508765)))

(assert (=> bs!845839 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664)))) (= lambda!170198 lambda!170150))))

(declare-fun bs!845840 () Bool)

(assert (= bs!845840 (and b!4509148 b!4509150)))

(assert (=> bs!845840 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (= lambda!170198 lambda!170197))))

(declare-fun bs!845841 () Bool)

(assert (= bs!845841 (and b!4509148 b!4509093)))

(assert (=> bs!845841 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (toList!4280 lt!1686670)) (= lambda!170198 lambda!170190))))

(declare-fun bs!845842 () Bool)

(assert (= bs!845842 (and b!4509148 b!4508761)))

(assert (=> bs!845842 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (toList!4280 lt!1686664)) (= lambda!170198 lambda!170151))))

(declare-fun bs!845843 () Bool)

(assert (= bs!845843 (and b!4509148 b!4509128)))

(assert (=> bs!845843 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (toList!4280 lt!1687030)) (= lambda!170198 lambda!170192))))

(declare-fun bs!845844 () Bool)

(assert (= bs!845844 (and b!4509148 b!4509097)))

(assert (=> bs!845844 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670)))) (= lambda!170198 lambda!170189))))

(declare-fun bs!845845 () Bool)

(assert (= bs!845845 (and b!4509148 b!4508767)))

(assert (=> bs!845845 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (t!357662 (toList!4280 lt!1686664))) (= lambda!170198 lambda!170149))))

(declare-fun bs!845846 () Bool)

(assert (= bs!845846 (and b!4509148 b!4508546)))

(assert (=> bs!845846 (= (= (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (toList!4280 lt!1686670)) (= lambda!170198 lambda!170117))))

(assert (=> b!4509148 true))

(declare-fun bs!845847 () Bool)

(declare-fun b!4509144 () Bool)

(assert (= bs!845847 (and b!4509144 b!4508423)))

(declare-fun lambda!170199 () Int)

(assert (=> bs!845847 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (toList!4280 lt!1686664)) (= lambda!170199 lambda!170102))))

(declare-fun bs!845848 () Bool)

(assert (= bs!845848 (and b!4509144 b!4509099)))

(assert (=> bs!845848 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (t!357662 (toList!4280 lt!1686670))) (= lambda!170199 lambda!170188))))

(declare-fun bs!845849 () Bool)

(assert (= bs!845849 (and b!4509144 b!4508688)))

(assert (=> bs!845849 (= lambda!170199 lambda!170132)))

(declare-fun bs!845850 () Bool)

(assert (= bs!845850 (and b!4509144 b!4508765)))

(assert (=> bs!845850 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (Cons!50576 (h!56407 (toList!4280 lt!1686664)) (t!357662 (toList!4280 lt!1686664)))) (= lambda!170199 lambda!170150))))

(declare-fun bs!845851 () Bool)

(assert (= bs!845851 (and b!4509144 b!4509150)))

(assert (=> bs!845851 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (= lambda!170199 lambda!170197))))

(declare-fun bs!845852 () Bool)

(assert (= bs!845852 (and b!4509144 b!4509093)))

(assert (=> bs!845852 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (toList!4280 lt!1686670)) (= lambda!170199 lambda!170190))))

(declare-fun bs!845853 () Bool)

(assert (= bs!845853 (and b!4509144 b!4508761)))

(assert (=> bs!845853 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (toList!4280 lt!1686664)) (= lambda!170199 lambda!170151))))

(declare-fun bs!845854 () Bool)

(assert (= bs!845854 (and b!4509144 b!4509128)))

(assert (=> bs!845854 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (toList!4280 lt!1687030)) (= lambda!170199 lambda!170192))))

(declare-fun bs!845856 () Bool)

(assert (= bs!845856 (and b!4509144 b!4509097)))

(assert (=> bs!845856 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (Cons!50576 (h!56407 (toList!4280 lt!1686670)) (t!357662 (toList!4280 lt!1686670)))) (= lambda!170199 lambda!170189))))

(declare-fun bs!845858 () Bool)

(assert (= bs!845858 (and b!4509144 b!4508767)))

(assert (=> bs!845858 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (t!357662 (toList!4280 lt!1686664))) (= lambda!170199 lambda!170149))))

(declare-fun bs!845860 () Bool)

(assert (= bs!845860 (and b!4509144 b!4508546)))

(assert (=> bs!845860 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (toList!4280 lt!1686670)) (= lambda!170199 lambda!170117))))

(declare-fun bs!845862 () Bool)

(assert (= bs!845862 (and b!4509144 b!4509148)))

(assert (=> bs!845862 (= (= (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (Cons!50576 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))) (= lambda!170199 lambda!170198))))

(assert (=> b!4509144 true))

(declare-fun bs!845866 () Bool)

(declare-fun b!4509147 () Bool)

(assert (= bs!845866 (and b!4509147 b!4508764)))

(declare-fun lambda!170201 () Int)

(assert (=> bs!845866 (= lambda!170201 lambda!170152)))

(declare-fun bs!845868 () Bool)

(assert (= bs!845868 (and b!4509147 b!4508689)))

(assert (=> bs!845868 (= lambda!170201 lambda!170133)))

(declare-fun bs!845869 () Bool)

(assert (= bs!845869 (and b!4509147 b!4508424)))

(assert (=> bs!845869 (= lambda!170201 lambda!170103)))

(declare-fun bs!845871 () Bool)

(assert (= bs!845871 (and b!4509147 b!4509096)))

(assert (=> bs!845871 (= lambda!170201 lambda!170191)))

(declare-fun bs!845872 () Bool)

(assert (= bs!845872 (and b!4509147 b!4509129)))

(assert (=> bs!845872 (= lambda!170201 lambda!170194)))

(declare-fun bs!845874 () Bool)

(assert (= bs!845874 (and b!4509147 b!4508547)))

(assert (=> bs!845874 (= lambda!170201 lambda!170118)))

(declare-fun b!4509143 () Bool)

(declare-fun e!2809056 () List!50703)

(assert (=> b!4509143 (= e!2809056 Nil!50579)))

(declare-fun res!1875329 () Bool)

(declare-fun e!2809055 () Bool)

(assert (=> b!4509144 (=> (not res!1875329) (not e!2809055))))

(declare-fun lt!1687504 () List!50703)

(assert (=> b!4509144 (= res!1875329 (forall!10210 lt!1687504 lambda!170199))))

(declare-fun b!4509145 () Bool)

(declare-fun e!2809054 () Unit!93112)

(declare-fun Unit!93299 () Unit!93112)

(assert (=> b!4509145 (= e!2809054 Unit!93299)))

(declare-fun b!4509146 () Bool)

(declare-fun e!2809057 () Unit!93112)

(declare-fun Unit!93300 () Unit!93112)

(assert (=> b!4509146 (= e!2809057 Unit!93300)))

(declare-fun d!1386694 () Bool)

(assert (=> d!1386694 e!2809055))

(declare-fun res!1875327 () Bool)

(assert (=> d!1386694 (=> (not res!1875327) (not e!2809055))))

(assert (=> d!1386694 (= res!1875327 (noDuplicate!737 lt!1687504))))

(assert (=> d!1386694 (= lt!1687504 e!2809056)))

(declare-fun c!769141 () Bool)

(assert (=> d!1386694 (= c!769141 ((_ is Cons!50576) (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))

(assert (=> d!1386694 (invariantList!995 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))

(assert (=> d!1386694 (= (getKeysList!443 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) lt!1687504)))

(assert (=> b!4509147 (= e!2809055 (= (content!8293 lt!1687504) (content!8293 (map!11116 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) lambda!170201))))))

(assert (=> b!4509148 (= e!2809056 (Cons!50579 (_1!28783 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (getKeysList!443 (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))))

(declare-fun c!769143 () Bool)

(assert (=> b!4509148 (= c!769143 (containsKey!1715 (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) (_1!28783 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))))

(declare-fun lt!1687500 () Unit!93112)

(assert (=> b!4509148 (= lt!1687500 e!2809054)))

(declare-fun c!769142 () Bool)

(assert (=> b!4509148 (= c!769142 (contains!13271 (getKeysList!443 (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) (_1!28783 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))))

(declare-fun lt!1687502 () Unit!93112)

(assert (=> b!4509148 (= lt!1687502 e!2809057)))

(declare-fun lt!1687501 () List!50703)

(assert (=> b!4509148 (= lt!1687501 (getKeysList!443 (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))))

(declare-fun lt!1687503 () Unit!93112)

(assert (=> b!4509148 (= lt!1687503 (lemmaForallContainsAddHeadPreserves!158 (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))) lt!1687501 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))))

(assert (=> b!4509148 (forall!10210 lt!1687501 lambda!170198)))

(declare-fun lt!1687499 () Unit!93112)

(assert (=> b!4509148 (= lt!1687499 lt!1687503)))

(declare-fun b!4509149 () Bool)

(declare-fun res!1875328 () Bool)

(assert (=> b!4509149 (=> (not res!1875328) (not e!2809055))))

(assert (=> b!4509149 (= res!1875328 (= (length!330 lt!1687504) (length!331 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))))

(assert (=> b!4509150 false))

(declare-fun lt!1687498 () Unit!93112)

(assert (=> b!4509150 (= lt!1687498 (forallContained!2462 (getKeysList!443 (t!357662 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))) lambda!170197 (_1!28783 (h!56407 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477))))))))))

(declare-fun Unit!93301 () Unit!93112)

(assert (=> b!4509150 (= e!2809057 Unit!93301)))

(declare-fun b!4509151 () Bool)

(assert (=> b!4509151 false))

(declare-fun Unit!93302 () Unit!93112)

(assert (=> b!4509151 (= e!2809054 Unit!93302)))

(assert (= (and d!1386694 c!769141) b!4509148))

(assert (= (and d!1386694 (not c!769141)) b!4509143))

(assert (= (and b!4509148 c!769143) b!4509151))

(assert (= (and b!4509148 (not c!769143)) b!4509145))

(assert (= (and b!4509148 c!769142) b!4509150))

(assert (= (and b!4509148 (not c!769142)) b!4509146))

(assert (= (and d!1386694 res!1875327) b!4509149))

(assert (= (and b!4509149 res!1875328) b!4509144))

(assert (= (and b!4509144 res!1875329) b!4509147))

(declare-fun m!5247497 () Bool)

(assert (=> b!4509150 m!5247497))

(assert (=> b!4509150 m!5247497))

(declare-fun m!5247499 () Bool)

(assert (=> b!4509150 m!5247499))

(declare-fun m!5247501 () Bool)

(assert (=> b!4509148 m!5247501))

(assert (=> b!4509148 m!5247497))

(declare-fun m!5247503 () Bool)

(assert (=> b!4509148 m!5247503))

(declare-fun m!5247505 () Bool)

(assert (=> b!4509148 m!5247505))

(assert (=> b!4509148 m!5247497))

(declare-fun m!5247507 () Bool)

(assert (=> b!4509148 m!5247507))

(declare-fun m!5247509 () Bool)

(assert (=> b!4509147 m!5247509))

(declare-fun m!5247511 () Bool)

(assert (=> b!4509147 m!5247511))

(assert (=> b!4509147 m!5247511))

(declare-fun m!5247513 () Bool)

(assert (=> b!4509147 m!5247513))

(declare-fun m!5247515 () Bool)

(assert (=> b!4509144 m!5247515))

(declare-fun m!5247517 () Bool)

(assert (=> d!1386694 m!5247517))

(assert (=> d!1386694 m!5246939))

(declare-fun m!5247519 () Bool)

(assert (=> b!4509149 m!5247519))

(assert (=> b!4509149 m!5246567))

(assert (=> b!4508314 d!1386694))

(declare-fun b!4509152 () Bool)

(declare-fun e!2809062 () Bool)

(declare-fun e!2809058 () Bool)

(assert (=> b!4509152 (= e!2809062 e!2809058)))

(declare-fun res!1875331 () Bool)

(assert (=> b!4509152 (=> (not res!1875331) (not e!2809058))))

(assert (=> b!4509152 (= res!1875331 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1687030) key!3287)))))

(declare-fun b!4509153 () Bool)

(assert (=> b!4509153 false))

(declare-fun lt!1687505 () Unit!93112)

(declare-fun lt!1687508 () Unit!93112)

(assert (=> b!4509153 (= lt!1687505 lt!1687508)))

(assert (=> b!4509153 (containsKey!1715 (toList!4280 lt!1687030) key!3287)))

(assert (=> b!4509153 (= lt!1687508 (lemmaInGetKeysListThenContainsKey!442 (toList!4280 lt!1687030) key!3287))))

(declare-fun e!2809059 () Unit!93112)

(declare-fun Unit!93303 () Unit!93112)

(assert (=> b!4509153 (= e!2809059 Unit!93303)))

(declare-fun b!4509154 () Bool)

(declare-fun e!2809061 () Unit!93112)

(assert (=> b!4509154 (= e!2809061 e!2809059)))

(declare-fun c!769145 () Bool)

(declare-fun call!313980 () Bool)

(assert (=> b!4509154 (= c!769145 call!313980)))

(declare-fun bm!313975 () Bool)

(declare-fun e!2809063 () List!50703)

(assert (=> bm!313975 (= call!313980 (contains!13271 e!2809063 key!3287))))

(declare-fun c!769144 () Bool)

(declare-fun c!769146 () Bool)

(assert (=> bm!313975 (= c!769144 c!769146)))

(declare-fun b!4509155 () Bool)

(assert (=> b!4509155 (= e!2809058 (contains!13271 (keys!17548 lt!1687030) key!3287))))

(declare-fun b!4509156 () Bool)

(declare-fun Unit!93304 () Unit!93112)

(assert (=> b!4509156 (= e!2809059 Unit!93304)))

(declare-fun b!4509157 () Bool)

(assert (=> b!4509157 (= e!2809063 (keys!17548 lt!1687030))))

(declare-fun b!4509158 () Bool)

(declare-fun lt!1687512 () Unit!93112)

(assert (=> b!4509158 (= e!2809061 lt!1687512)))

(declare-fun lt!1687506 () Unit!93112)

(assert (=> b!4509158 (= lt!1687506 (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 lt!1687030) key!3287))))

(assert (=> b!4509158 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1687030) key!3287))))

(declare-fun lt!1687511 () Unit!93112)

(assert (=> b!4509158 (= lt!1687511 lt!1687506)))

(assert (=> b!4509158 (= lt!1687512 (lemmaInListThenGetKeysListContains!439 (toList!4280 lt!1687030) key!3287))))

(assert (=> b!4509158 call!313980))

(declare-fun d!1386696 () Bool)

(assert (=> d!1386696 e!2809062))

(declare-fun res!1875332 () Bool)

(assert (=> d!1386696 (=> res!1875332 e!2809062)))

(declare-fun e!2809060 () Bool)

(assert (=> d!1386696 (= res!1875332 e!2809060)))

(declare-fun res!1875330 () Bool)

(assert (=> d!1386696 (=> (not res!1875330) (not e!2809060))))

(declare-fun lt!1687509 () Bool)

(assert (=> d!1386696 (= res!1875330 (not lt!1687509))))

(declare-fun lt!1687507 () Bool)

(assert (=> d!1386696 (= lt!1687509 lt!1687507)))

(declare-fun lt!1687510 () Unit!93112)

(assert (=> d!1386696 (= lt!1687510 e!2809061)))

(assert (=> d!1386696 (= c!769146 lt!1687507)))

(assert (=> d!1386696 (= lt!1687507 (containsKey!1715 (toList!4280 lt!1687030) key!3287))))

(assert (=> d!1386696 (= (contains!13267 lt!1687030 key!3287) lt!1687509)))

(declare-fun b!4509159 () Bool)

(assert (=> b!4509159 (= e!2809060 (not (contains!13271 (keys!17548 lt!1687030) key!3287)))))

(declare-fun b!4509160 () Bool)

(assert (=> b!4509160 (= e!2809063 (getKeysList!443 (toList!4280 lt!1687030)))))

(assert (= (and d!1386696 c!769146) b!4509158))

(assert (= (and d!1386696 (not c!769146)) b!4509154))

(assert (= (and b!4509154 c!769145) b!4509153))

(assert (= (and b!4509154 (not c!769145)) b!4509156))

(assert (= (or b!4509158 b!4509154) bm!313975))

(assert (= (and bm!313975 c!769144) b!4509160))

(assert (= (and bm!313975 (not c!769144)) b!4509157))

(assert (= (and d!1386696 res!1875330) b!4509159))

(assert (= (and d!1386696 (not res!1875332)) b!4509152))

(assert (= (and b!4509152 res!1875331) b!4509155))

(declare-fun m!5247521 () Bool)

(assert (=> b!4509158 m!5247521))

(declare-fun m!5247523 () Bool)

(assert (=> b!4509158 m!5247523))

(assert (=> b!4509158 m!5247523))

(declare-fun m!5247527 () Bool)

(assert (=> b!4509158 m!5247527))

(declare-fun m!5247531 () Bool)

(assert (=> b!4509158 m!5247531))

(declare-fun m!5247533 () Bool)

(assert (=> bm!313975 m!5247533))

(assert (=> b!4509152 m!5247523))

(assert (=> b!4509152 m!5247523))

(assert (=> b!4509152 m!5247527))

(assert (=> b!4509160 m!5247473))

(declare-fun m!5247541 () Bool)

(assert (=> d!1386696 m!5247541))

(assert (=> b!4509157 m!5246039))

(assert (=> b!4509153 m!5247541))

(declare-fun m!5247547 () Bool)

(assert (=> b!4509153 m!5247547))

(assert (=> b!4509159 m!5246039))

(assert (=> b!4509159 m!5246039))

(declare-fun m!5247549 () Bool)

(assert (=> b!4509159 m!5247549))

(assert (=> b!4509155 m!5246039))

(assert (=> b!4509155 m!5246039))

(assert (=> b!4509155 m!5247549))

(assert (=> d!1386222 d!1386696))

(declare-fun b!4509244 () Bool)

(declare-fun e!2809107 () Unit!93112)

(declare-fun Unit!93308 () Unit!93112)

(assert (=> b!4509244 (= e!2809107 Unit!93308)))

(declare-fun b!4509245 () Bool)

(declare-fun res!1875354 () Bool)

(declare-fun e!2809110 () Bool)

(assert (=> b!4509245 (=> (not res!1875354) (not e!2809110))))

(declare-fun lt!1687612 () List!50700)

(assert (=> b!4509245 (= res!1875354 (not (containsKey!1715 lt!1687612 key!3287)))))

(declare-fun b!4509246 () Bool)

(declare-fun e!2809105 () List!50700)

(assert (=> b!4509246 (= e!2809105 (toList!4280 lt!1686670))))

(declare-fun b!4509247 () Bool)

(declare-fun e!2809111 () Unit!93112)

(declare-fun Unit!93309 () Unit!93112)

(assert (=> b!4509247 (= e!2809111 Unit!93309)))

(declare-fun b!4509248 () Bool)

(declare-fun e!2809108 () Unit!93112)

(declare-fun Unit!93310 () Unit!93112)

(assert (=> b!4509248 (= e!2809108 Unit!93310)))

(declare-fun lt!1687619 () Unit!93112)

(assert (=> b!4509248 (= lt!1687619 (lemmaInGetKeysListThenContainsKey!442 (t!357662 (toList!4280 lt!1686670)) (_1!28783 (h!56407 (toList!4280 lt!1686670)))))))

(declare-fun call!313998 () Bool)

(assert (=> b!4509248 call!313998))

(declare-fun lt!1687621 () Unit!93112)

(assert (=> b!4509248 (= lt!1687621 lt!1687619)))

(assert (=> b!4509248 false))

(declare-fun b!4509249 () Bool)

(declare-fun e!2809106 () List!50700)

(declare-fun e!2809112 () List!50700)

(assert (=> b!4509249 (= e!2809106 e!2809112)))

(declare-fun c!769184 () Bool)

(assert (=> b!4509249 (= c!769184 (and ((_ is Cons!50576) (toList!4280 lt!1686670)) (not (= (_1!28783 (h!56407 (toList!4280 lt!1686670))) key!3287))))))

(declare-fun bm!313991 () Bool)

(declare-fun call!313997 () (InoxSet tuple2!50978))

(assert (=> bm!313991 (= call!313997 (content!8290 (toList!4280 lt!1686670)))))

(declare-fun b!4509250 () Bool)

(declare-fun e!2809104 () Bool)

(declare-fun call!314000 () (InoxSet tuple2!50978))

(declare-fun call!314001 () (InoxSet tuple2!50978))

(assert (=> b!4509250 (= e!2809104 (= call!314000 call!314001))))

(declare-fun bm!313992 () Bool)

(declare-fun c!769181 () Bool)

(assert (=> bm!313992 (= call!314000 (content!8290 (ite c!769181 (toList!4280 lt!1686670) lt!1687612)))))

(declare-fun b!4509251 () Bool)

(assert (=> b!4509251 (= e!2809112 Nil!50576)))

(declare-fun b!4509252 () Bool)

(declare-fun res!1875355 () Bool)

(assert (=> b!4509252 (=> (not res!1875355) (not e!2809110))))

(assert (=> b!4509252 (= res!1875355 (= (content!8293 (getKeysList!443 lt!1687612)) ((_ map and) (content!8293 (getKeysList!443 (toList!4280 lt!1686670))) ((_ map not) (store ((as const (Array K!11980 Bool)) false) key!3287 true)))))))

(declare-fun b!4509253 () Bool)

(declare-fun call!313996 () (InoxSet tuple2!50978))

(assert (=> b!4509253 (= call!313996 call!313997)))

(declare-fun e!2809109 () Unit!93112)

(declare-fun Unit!93312 () Unit!93112)

(assert (=> b!4509253 (= e!2809109 Unit!93312)))

(declare-fun b!4509254 () Bool)

(declare-fun Unit!93313 () Unit!93112)

(assert (=> b!4509254 (= e!2809108 Unit!93313)))

(declare-fun b!4509255 () Bool)

(declare-fun lt!1687609 () Unit!93112)

(assert (=> b!4509255 (= lt!1687609 e!2809111)))

(declare-fun c!769180 () Bool)

(declare-fun call!313999 () Bool)

(assert (=> b!4509255 (= c!769180 call!313999)))

(declare-fun lt!1687610 () Unit!93112)

(assert (=> b!4509255 (= lt!1687610 e!2809108)))

(declare-fun c!769183 () Bool)

(assert (=> b!4509255 (= c!769183 (contains!13271 (getKeysList!443 (t!357662 (toList!4280 lt!1686670))) (_1!28783 (h!56407 (toList!4280 lt!1686670)))))))

(declare-fun lt!1687616 () List!50700)

(declare-fun $colon$colon!917 (List!50700 tuple2!50978) List!50700)

(assert (=> b!4509255 (= lt!1687616 ($colon$colon!917 (removePresrvNoDuplicatedKeys!119 (t!357662 (toList!4280 lt!1686670)) key!3287) (h!56407 (toList!4280 lt!1686670))))))

(assert (=> b!4509255 (= e!2809112 lt!1687616)))

(declare-fun bm!313994 () Bool)

(declare-fun c!769179 () Bool)

(assert (=> bm!313994 (= call!313999 (containsKey!1715 e!2809105 (ite c!769179 key!3287 (_1!28783 (h!56407 (toList!4280 lt!1686670))))))))

(declare-fun c!769178 () Bool)

(assert (=> bm!313994 (= c!769178 c!769179)))

(declare-fun b!4509256 () Bool)

(declare-fun get!16545 (Option!11069) V!12226)

(assert (=> b!4509256 (= call!313996 ((_ map and) call!313997 ((_ map not) (store ((as const (Array tuple2!50978 Bool)) false) (tuple2!50979 key!3287 (get!16545 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287))) true))))))

(declare-fun lt!1687604 () Unit!93112)

(assert (=> b!4509256 (= lt!1687604 e!2809107)))

(declare-fun c!769177 () Bool)

(assert (=> b!4509256 (= c!769177 (contains!13273 (t!357662 (toList!4280 lt!1686670)) (tuple2!50979 key!3287 (get!16545 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287)))))))

(declare-fun Unit!93314 () Unit!93112)

(assert (=> b!4509256 (= e!2809109 Unit!93314)))

(declare-fun bm!313995 () Bool)

(assert (=> bm!313995 (= call!314001 (content!8290 (ite c!769181 lt!1687612 (toList!4280 lt!1686670))))))

(declare-fun b!4509257 () Bool)

(assert (=> b!4509257 (= e!2809105 (removePresrvNoDuplicatedKeys!119 (t!357662 (toList!4280 lt!1686670)) key!3287))))

(declare-fun b!4509258 () Bool)

(declare-fun Unit!93315 () Unit!93112)

(assert (=> b!4509258 (= e!2809111 Unit!93315)))

(declare-fun lt!1687618 () List!50700)

(assert (=> b!4509258 (= lt!1687618 (removePresrvNoDuplicatedKeys!119 (t!357662 (toList!4280 lt!1686670)) key!3287))))

(declare-fun lt!1687605 () Unit!93112)

(assert (=> b!4509258 (= lt!1687605 (lemmaInListThenGetKeysListContains!439 lt!1687618 (_1!28783 (h!56407 (toList!4280 lt!1686670)))))))

(assert (=> b!4509258 (contains!13271 (getKeysList!443 lt!1687618) (_1!28783 (h!56407 (toList!4280 lt!1686670))))))

(declare-fun lt!1687620 () Unit!93112)

(assert (=> b!4509258 (= lt!1687620 lt!1687605)))

(assert (=> b!4509258 false))

(declare-fun b!4509259 () Bool)

(assert (=> b!4509259 (= e!2809110 e!2809104)))

(assert (=> b!4509259 (= c!769181 (containsKey!1715 (toList!4280 lt!1686670) key!3287))))

(declare-fun b!4509260 () Bool)

(assert (=> b!4509260 (= e!2809106 (t!357662 (toList!4280 lt!1686670)))))

(declare-fun c!769182 () Bool)

(assert (=> b!4509260 (= c!769182 call!313999)))

(declare-fun lt!1687608 () Unit!93112)

(assert (=> b!4509260 (= lt!1687608 e!2809109)))

(declare-fun b!4509261 () Bool)

(declare-fun Unit!93316 () Unit!93112)

(assert (=> b!4509261 (= e!2809107 Unit!93316)))

(declare-fun lt!1687614 () V!12226)

(assert (=> b!4509261 (= lt!1687614 (get!16545 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287)))))

(declare-fun lt!1687606 () K!11980)

(assert (=> b!4509261 (= lt!1687606 key!3287)))

(declare-fun lt!1687615 () K!11980)

(assert (=> b!4509261 (= lt!1687615 key!3287)))

(declare-fun lt!1687611 () Unit!93112)

(declare-fun lemmaContainsTupleThenContainsKey!52 (List!50700 K!11980 V!12226) Unit!93112)

(assert (=> b!4509261 (= lt!1687611 (lemmaContainsTupleThenContainsKey!52 (t!357662 (toList!4280 lt!1686670)) lt!1687606 (get!16545 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287))))))

(assert (=> b!4509261 call!313998))

(declare-fun lt!1687607 () Unit!93112)

(assert (=> b!4509261 (= lt!1687607 lt!1687611)))

(assert (=> b!4509261 false))

(declare-fun b!4509262 () Bool)

(assert (=> b!4509262 (= e!2809104 (= call!314001 ((_ map and) call!314000 ((_ map not) (store ((as const (Array tuple2!50978 Bool)) false) (tuple2!50979 key!3287 (get!16545 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287))) true)))))))

(assert (=> b!4509262 (containsKey!1715 (toList!4280 lt!1686670) key!3287)))

(declare-fun lt!1687613 () Unit!93112)

(assert (=> b!4509262 (= lt!1687613 (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 lt!1686670) key!3287))))

(assert (=> b!4509262 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686670) key!3287))))

(declare-fun lt!1687617 () Unit!93112)

(assert (=> b!4509262 (= lt!1687617 lt!1687613)))

(declare-fun bm!313996 () Bool)

(assert (=> bm!313996 (= call!313996 (content!8290 (t!357662 (toList!4280 lt!1686670))))))

(declare-fun d!1386698 () Bool)

(assert (=> d!1386698 e!2809110))

(declare-fun res!1875356 () Bool)

(assert (=> d!1386698 (=> (not res!1875356) (not e!2809110))))

(assert (=> d!1386698 (= res!1875356 (invariantList!995 lt!1687612))))

(assert (=> d!1386698 (= lt!1687612 e!2809106)))

(assert (=> d!1386698 (= c!769179 (and ((_ is Cons!50576) (toList!4280 lt!1686670)) (= (_1!28783 (h!56407 (toList!4280 lt!1686670))) key!3287)))))

(assert (=> d!1386698 (invariantList!995 (toList!4280 lt!1686670))))

(assert (=> d!1386698 (= (removePresrvNoDuplicatedKeys!119 (toList!4280 lt!1686670) key!3287) lt!1687612)))

(declare-fun bm!313993 () Bool)

(assert (=> bm!313993 (= call!313998 (containsKey!1715 (t!357662 (toList!4280 lt!1686670)) (ite c!769179 lt!1687606 (_1!28783 (h!56407 (toList!4280 lt!1686670))))))))

(assert (= (and d!1386698 c!769179) b!4509260))

(assert (= (and d!1386698 (not c!769179)) b!4509249))

(assert (= (and b!4509260 c!769182) b!4509256))

(assert (= (and b!4509260 (not c!769182)) b!4509253))

(assert (= (and b!4509256 c!769177) b!4509261))

(assert (= (and b!4509256 (not c!769177)) b!4509244))

(assert (= (or b!4509256 b!4509253) bm!313996))

(assert (= (or b!4509256 b!4509253) bm!313991))

(assert (= (and b!4509249 c!769184) b!4509255))

(assert (= (and b!4509249 (not c!769184)) b!4509251))

(assert (= (and b!4509255 c!769183) b!4509248))

(assert (= (and b!4509255 (not c!769183)) b!4509254))

(assert (= (and b!4509255 c!769180) b!4509258))

(assert (= (and b!4509255 (not c!769180)) b!4509247))

(assert (= (or b!4509261 b!4509248) bm!313993))

(assert (= (or b!4509260 b!4509255) bm!313994))

(assert (= (and bm!313994 c!769178) b!4509246))

(assert (= (and bm!313994 (not c!769178)) b!4509257))

(assert (= (and d!1386698 res!1875356) b!4509245))

(assert (= (and b!4509245 res!1875354) b!4509252))

(assert (= (and b!4509252 res!1875355) b!4509259))

(assert (= (and b!4509259 c!769181) b!4509262))

(assert (= (and b!4509259 (not c!769181)) b!4509250))

(assert (= (or b!4509262 b!4509250) bm!313992))

(assert (= (or b!4509262 b!4509250) bm!313995))

(declare-fun m!5247681 () Bool)

(assert (=> d!1386698 m!5247681))

(assert (=> d!1386698 m!5246847))

(declare-fun m!5247683 () Bool)

(assert (=> b!4509245 m!5247683))

(declare-fun m!5247685 () Bool)

(assert (=> bm!313995 m!5247685))

(assert (=> b!4509259 m!5245945))

(assert (=> b!4509261 m!5245935))

(assert (=> b!4509261 m!5245935))

(declare-fun m!5247687 () Bool)

(assert (=> b!4509261 m!5247687))

(assert (=> b!4509261 m!5247687))

(declare-fun m!5247689 () Bool)

(assert (=> b!4509261 m!5247689))

(assert (=> b!4509252 m!5245943))

(declare-fun m!5247691 () Bool)

(assert (=> b!4509252 m!5247691))

(assert (=> b!4509252 m!5246045))

(declare-fun m!5247693 () Bool)

(assert (=> b!4509252 m!5247693))

(declare-fun m!5247695 () Bool)

(assert (=> b!4509252 m!5247695))

(assert (=> b!4509252 m!5247693))

(assert (=> b!4509252 m!5245943))

(declare-fun m!5247697 () Bool)

(assert (=> bm!313996 m!5247697))

(declare-fun m!5247699 () Bool)

(assert (=> bm!313994 m!5247699))

(declare-fun m!5247701 () Bool)

(assert (=> bm!313992 m!5247701))

(declare-fun m!5247703 () Bool)

(assert (=> bm!313991 m!5247703))

(assert (=> b!4509255 m!5247399))

(assert (=> b!4509255 m!5247399))

(assert (=> b!4509255 m!5247405))

(declare-fun m!5247705 () Bool)

(assert (=> b!4509255 m!5247705))

(assert (=> b!4509255 m!5247705))

(declare-fun m!5247707 () Bool)

(assert (=> b!4509255 m!5247707))

(assert (=> b!4509257 m!5247705))

(assert (=> b!4509256 m!5245935))

(assert (=> b!4509256 m!5245935))

(assert (=> b!4509256 m!5247687))

(declare-fun m!5247709 () Bool)

(assert (=> b!4509256 m!5247709))

(declare-fun m!5247711 () Bool)

(assert (=> b!4509256 m!5247711))

(assert (=> b!4509262 m!5245945))

(assert (=> b!4509262 m!5247709))

(assert (=> b!4509262 m!5245935))

(assert (=> b!4509262 m!5245937))

(assert (=> b!4509262 m!5245933))

(assert (=> b!4509262 m!5245935))

(assert (=> b!4509262 m!5245935))

(assert (=> b!4509262 m!5247687))

(declare-fun m!5247713 () Bool)

(assert (=> bm!313993 m!5247713))

(declare-fun m!5247715 () Bool)

(assert (=> b!4509248 m!5247715))

(assert (=> b!4509258 m!5247705))

(declare-fun m!5247717 () Bool)

(assert (=> b!4509258 m!5247717))

(declare-fun m!5247719 () Bool)

(assert (=> b!4509258 m!5247719))

(assert (=> b!4509258 m!5247719))

(declare-fun m!5247721 () Bool)

(assert (=> b!4509258 m!5247721))

(assert (=> d!1386222 d!1386698))

(declare-fun d!1386726 () Bool)

(declare-fun res!1875359 () Bool)

(declare-fun e!2809117 () Bool)

(assert (=> d!1386726 (=> res!1875359 e!2809117)))

(assert (=> d!1386726 (= res!1875359 ((_ is Nil!50576) (toList!4280 lt!1686668)))))

(assert (=> d!1386726 (= (forall!10208 (toList!4280 lt!1686668) lambda!170065) e!2809117)))

(declare-fun b!4509269 () Bool)

(declare-fun e!2809118 () Bool)

(assert (=> b!4509269 (= e!2809117 e!2809118)))

(declare-fun res!1875360 () Bool)

(assert (=> b!4509269 (=> (not res!1875360) (not e!2809118))))

(assert (=> b!4509269 (= res!1875360 (dynLambda!21132 lambda!170065 (h!56407 (toList!4280 lt!1686668))))))

(declare-fun b!4509270 () Bool)

(assert (=> b!4509270 (= e!2809118 (forall!10208 (t!357662 (toList!4280 lt!1686668)) lambda!170065))))

(assert (= (and d!1386726 (not res!1875359)) b!4509269))

(assert (= (and b!4509269 res!1875360) b!4509270))

(declare-fun b_lambda!153597 () Bool)

(assert (=> (not b_lambda!153597) (not b!4509269)))

(declare-fun m!5247723 () Bool)

(assert (=> b!4509269 m!5247723))

(declare-fun m!5247725 () Bool)

(assert (=> b!4509270 m!5247725))

(assert (=> b!4508219 d!1386726))

(declare-fun lt!1687626 () Bool)

(declare-fun d!1386728 () Bool)

(assert (=> d!1386728 (= lt!1687626 (select (content!8291 (toList!4279 lm!1477)) (tuple2!50981 hash!344 lt!1686663)))))

(declare-fun e!2809120 () Bool)

(assert (=> d!1386728 (= lt!1687626 e!2809120)))

(declare-fun res!1875361 () Bool)

(assert (=> d!1386728 (=> (not res!1875361) (not e!2809120))))

(assert (=> d!1386728 (= res!1875361 ((_ is Cons!50577) (toList!4279 lm!1477)))))

(assert (=> d!1386728 (= (contains!13268 (toList!4279 lm!1477) (tuple2!50981 hash!344 lt!1686663)) lt!1687626)))

(declare-fun b!4509271 () Bool)

(declare-fun e!2809119 () Bool)

(assert (=> b!4509271 (= e!2809120 e!2809119)))

(declare-fun res!1875362 () Bool)

(assert (=> b!4509271 (=> res!1875362 e!2809119)))

(assert (=> b!4509271 (= res!1875362 (= (h!56408 (toList!4279 lm!1477)) (tuple2!50981 hash!344 lt!1686663)))))

(declare-fun b!4509272 () Bool)

(assert (=> b!4509272 (= e!2809119 (contains!13268 (t!357663 (toList!4279 lm!1477)) (tuple2!50981 hash!344 lt!1686663)))))

(assert (= (and d!1386728 res!1875361) b!4509271))

(assert (= (and b!4509271 (not res!1875362)) b!4509272))

(assert (=> d!1386728 m!5246021))

(declare-fun m!5247727 () Bool)

(assert (=> d!1386728 m!5247727))

(declare-fun m!5247729 () Bool)

(assert (=> b!4509272 m!5247729))

(assert (=> d!1386208 d!1386728))

(declare-fun d!1386730 () Bool)

(assert (=> d!1386730 (contains!13268 (toList!4279 lm!1477) (tuple2!50981 hash!344 lt!1686663))))

(assert (=> d!1386730 true))

(declare-fun _$14!1131 () Unit!93112)

(assert (=> d!1386730 (= (choose!29261 (toList!4279 lm!1477) hash!344 lt!1686663) _$14!1131)))

(declare-fun bs!846016 () Bool)

(assert (= bs!846016 d!1386730))

(assert (=> bs!846016 m!5246013))

(assert (=> d!1386208 d!1386730))

(declare-fun d!1386732 () Bool)

(declare-fun res!1875377 () Bool)

(declare-fun e!2809138 () Bool)

(assert (=> d!1386732 (=> res!1875377 e!2809138)))

(assert (=> d!1386732 (= res!1875377 (or ((_ is Nil!50577) (toList!4279 lm!1477)) ((_ is Nil!50577) (t!357663 (toList!4279 lm!1477)))))))

(assert (=> d!1386732 (= (isStrictlySorted!409 (toList!4279 lm!1477)) e!2809138)))

(declare-fun b!4509293 () Bool)

(declare-fun e!2809139 () Bool)

(assert (=> b!4509293 (= e!2809138 e!2809139)))

(declare-fun res!1875378 () Bool)

(assert (=> b!4509293 (=> (not res!1875378) (not e!2809139))))

(assert (=> b!4509293 (= res!1875378 (bvslt (_1!28784 (h!56408 (toList!4279 lm!1477))) (_1!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))))))

(declare-fun b!4509294 () Bool)

(assert (=> b!4509294 (= e!2809139 (isStrictlySorted!409 (t!357663 (toList!4279 lm!1477))))))

(assert (= (and d!1386732 (not res!1875377)) b!4509293))

(assert (= (and b!4509293 res!1875378) b!4509294))

(declare-fun m!5247743 () Bool)

(assert (=> b!4509294 m!5247743))

(assert (=> d!1386208 d!1386732))

(assert (=> b!4508318 d!1386438))

(declare-fun d!1386744 () Bool)

(assert (=> d!1386744 (containsKey!1715 (toList!4280 lt!1686670) key!3287)))

(declare-fun lt!1687639 () Unit!93112)

(assert (=> d!1386744 (= lt!1687639 (choose!29272 (toList!4280 lt!1686670) key!3287))))

(assert (=> d!1386744 (invariantList!995 (toList!4280 lt!1686670))))

(assert (=> d!1386744 (= (lemmaInGetKeysListThenContainsKey!442 (toList!4280 lt!1686670) key!3287) lt!1687639)))

(declare-fun bs!846019 () Bool)

(assert (= bs!846019 d!1386744))

(assert (=> bs!846019 m!5245945))

(declare-fun m!5247751 () Bool)

(assert (=> bs!846019 m!5247751))

(assert (=> bs!846019 m!5246847))

(assert (=> b!4508318 d!1386744))

(declare-fun d!1386746 () Bool)

(assert (=> d!1386746 (= (head!9368 (toList!4279 lm!1477)) (h!56408 (toList!4279 lm!1477)))))

(assert (=> d!1386236 d!1386746))

(declare-fun d!1386748 () Bool)

(assert (=> d!1386748 (= (tail!7689 (toList!4279 lm!1477)) (t!357663 (toList!4279 lm!1477)))))

(assert (=> d!1386162 d!1386748))

(declare-fun d!1386752 () Bool)

(declare-fun e!2809141 () Bool)

(assert (=> d!1386752 e!2809141))

(declare-fun res!1875379 () Bool)

(assert (=> d!1386752 (=> res!1875379 e!2809141)))

(declare-fun lt!1687640 () Bool)

(assert (=> d!1386752 (= res!1875379 (not lt!1687640))))

(declare-fun lt!1687641 () Bool)

(assert (=> d!1386752 (= lt!1687640 lt!1687641)))

(declare-fun lt!1687642 () Unit!93112)

(declare-fun e!2809140 () Unit!93112)

(assert (=> d!1386752 (= lt!1687642 e!2809140)))

(declare-fun c!769190 () Bool)

(assert (=> d!1386752 (= c!769190 lt!1687641)))

(assert (=> d!1386752 (= lt!1687641 (containsKey!1714 (toList!4279 lt!1686722) (_1!28784 lt!1686680)))))

(assert (=> d!1386752 (= (contains!13269 lt!1686722 (_1!28784 lt!1686680)) lt!1687640)))

(declare-fun b!4509295 () Bool)

(declare-fun lt!1687643 () Unit!93112)

(assert (=> b!4509295 (= e!2809140 lt!1687643)))

(assert (=> b!4509295 (= lt!1687643 (lemmaContainsKeyImpliesGetValueByKeyDefined!951 (toList!4279 lt!1686722) (_1!28784 lt!1686680)))))

(assert (=> b!4509295 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1686722) (_1!28784 lt!1686680)))))

(declare-fun b!4509296 () Bool)

(declare-fun Unit!93317 () Unit!93112)

(assert (=> b!4509296 (= e!2809140 Unit!93317)))

(declare-fun b!4509297 () Bool)

(assert (=> b!4509297 (= e!2809141 (isDefined!8354 (getValueByKey!1048 (toList!4279 lt!1686722) (_1!28784 lt!1686680))))))

(assert (= (and d!1386752 c!769190) b!4509295))

(assert (= (and d!1386752 (not c!769190)) b!4509296))

(assert (= (and d!1386752 (not res!1875379)) b!4509297))

(declare-fun m!5247763 () Bool)

(assert (=> d!1386752 m!5247763))

(declare-fun m!5247765 () Bool)

(assert (=> b!4509295 m!5247765))

(assert (=> b!4509295 m!5245517))

(assert (=> b!4509295 m!5245517))

(declare-fun m!5247767 () Bool)

(assert (=> b!4509295 m!5247767))

(assert (=> b!4509297 m!5245517))

(assert (=> b!4509297 m!5245517))

(assert (=> b!4509297 m!5247767))

(assert (=> d!1386074 d!1386752))

(declare-fun d!1386754 () Bool)

(declare-fun c!769191 () Bool)

(assert (=> d!1386754 (= c!769191 (and ((_ is Cons!50577) lt!1686725) (= (_1!28784 (h!56408 lt!1686725)) (_1!28784 lt!1686680))))))

(declare-fun e!2809142 () Option!11068)

(assert (=> d!1386754 (= (getValueByKey!1048 lt!1686725 (_1!28784 lt!1686680)) e!2809142)))

(declare-fun b!4509300 () Bool)

(declare-fun e!2809143 () Option!11068)

(assert (=> b!4509300 (= e!2809143 (getValueByKey!1048 (t!357663 lt!1686725) (_1!28784 lt!1686680)))))

(declare-fun b!4509299 () Bool)

(assert (=> b!4509299 (= e!2809142 e!2809143)))

(declare-fun c!769192 () Bool)

(assert (=> b!4509299 (= c!769192 (and ((_ is Cons!50577) lt!1686725) (not (= (_1!28784 (h!56408 lt!1686725)) (_1!28784 lt!1686680)))))))

(declare-fun b!4509298 () Bool)

(assert (=> b!4509298 (= e!2809142 (Some!11067 (_2!28784 (h!56408 lt!1686725))))))

(declare-fun b!4509301 () Bool)

(assert (=> b!4509301 (= e!2809143 None!11067)))

(assert (= (and d!1386754 c!769191) b!4509298))

(assert (= (and d!1386754 (not c!769191)) b!4509299))

(assert (= (and b!4509299 c!769192) b!4509300))

(assert (= (and b!4509299 (not c!769192)) b!4509301))

(declare-fun m!5247769 () Bool)

(assert (=> b!4509300 m!5247769))

(assert (=> d!1386074 d!1386754))

(declare-fun d!1386756 () Bool)

(assert (=> d!1386756 (= (getValueByKey!1048 lt!1686725 (_1!28784 lt!1686680)) (Some!11067 (_2!28784 lt!1686680)))))

(declare-fun lt!1687644 () Unit!93112)

(assert (=> d!1386756 (= lt!1687644 (choose!29265 lt!1686725 (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))

(declare-fun e!2809144 () Bool)

(assert (=> d!1386756 e!2809144))

(declare-fun res!1875380 () Bool)

(assert (=> d!1386756 (=> (not res!1875380) (not e!2809144))))

(assert (=> d!1386756 (= res!1875380 (isStrictlySorted!409 lt!1686725))))

(assert (=> d!1386756 (= (lemmaContainsTupThenGetReturnValue!646 lt!1686725 (_1!28784 lt!1686680) (_2!28784 lt!1686680)) lt!1687644)))

(declare-fun b!4509302 () Bool)

(declare-fun res!1875381 () Bool)

(assert (=> b!4509302 (=> (not res!1875381) (not e!2809144))))

(assert (=> b!4509302 (= res!1875381 (containsKey!1714 lt!1686725 (_1!28784 lt!1686680)))))

(declare-fun b!4509303 () Bool)

(assert (=> b!4509303 (= e!2809144 (contains!13268 lt!1686725 (tuple2!50981 (_1!28784 lt!1686680) (_2!28784 lt!1686680))))))

(assert (= (and d!1386756 res!1875380) b!4509302))

(assert (= (and b!4509302 res!1875381) b!4509303))

(assert (=> d!1386756 m!5245511))

(declare-fun m!5247771 () Bool)

(assert (=> d!1386756 m!5247771))

(declare-fun m!5247773 () Bool)

(assert (=> d!1386756 m!5247773))

(declare-fun m!5247775 () Bool)

(assert (=> b!4509302 m!5247775))

(declare-fun m!5247777 () Bool)

(assert (=> b!4509303 m!5247777))

(assert (=> d!1386074 d!1386756))

(declare-fun call!314005 () List!50701)

(declare-fun e!2809149 () List!50701)

(declare-fun c!769195 () Bool)

(declare-fun bm!313998 () Bool)

(assert (=> bm!313998 (= call!314005 ($colon$colon!915 e!2809149 (ite c!769195 (h!56408 (toList!4279 lt!1686667)) (tuple2!50981 (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))))

(declare-fun c!769194 () Bool)

(assert (=> bm!313998 (= c!769194 c!769195)))

(declare-fun b!4509304 () Bool)

(declare-fun e!2809145 () Bool)

(declare-fun lt!1687645 () List!50701)

(assert (=> b!4509304 (= e!2809145 (contains!13268 lt!1687645 (tuple2!50981 (_1!28784 lt!1686680) (_2!28784 lt!1686680))))))

(declare-fun b!4509305 () Bool)

(declare-fun e!2809146 () List!50701)

(declare-fun call!314003 () List!50701)

(assert (=> b!4509305 (= e!2809146 call!314003)))

(declare-fun b!4509306 () Bool)

(declare-fun res!1875382 () Bool)

(assert (=> b!4509306 (=> (not res!1875382) (not e!2809145))))

(assert (=> b!4509306 (= res!1875382 (containsKey!1714 lt!1687645 (_1!28784 lt!1686680)))))

(declare-fun b!4509307 () Bool)

(assert (=> b!4509307 (= e!2809146 call!314003)))

(declare-fun bm!313999 () Bool)

(declare-fun call!314004 () List!50701)

(assert (=> bm!313999 (= call!314003 call!314004)))

(declare-fun b!4509308 () Bool)

(declare-fun e!2809148 () List!50701)

(assert (=> b!4509308 (= e!2809148 call!314004)))

(declare-fun b!4509309 () Bool)

(declare-fun c!769193 () Bool)

(assert (=> b!4509309 (= c!769193 (and ((_ is Cons!50577) (toList!4279 lt!1686667)) (bvsgt (_1!28784 (h!56408 (toList!4279 lt!1686667))) (_1!28784 lt!1686680))))))

(assert (=> b!4509309 (= e!2809148 e!2809146)))

(declare-fun b!4509310 () Bool)

(assert (=> b!4509310 (= e!2809149 (insertStrictlySorted!386 (t!357663 (toList!4279 lt!1686667)) (_1!28784 lt!1686680) (_2!28784 lt!1686680)))))

(declare-fun b!4509311 () Bool)

(declare-fun e!2809147 () List!50701)

(assert (=> b!4509311 (= e!2809147 e!2809148)))

(declare-fun c!769196 () Bool)

(assert (=> b!4509311 (= c!769196 (and ((_ is Cons!50577) (toList!4279 lt!1686667)) (= (_1!28784 (h!56408 (toList!4279 lt!1686667))) (_1!28784 lt!1686680))))))

(declare-fun b!4509312 () Bool)

(assert (=> b!4509312 (= e!2809147 call!314005)))

(declare-fun b!4509313 () Bool)

(assert (=> b!4509313 (= e!2809149 (ite c!769196 (t!357663 (toList!4279 lt!1686667)) (ite c!769193 (Cons!50577 (h!56408 (toList!4279 lt!1686667)) (t!357663 (toList!4279 lt!1686667))) Nil!50577)))))

(declare-fun bm!314000 () Bool)

(assert (=> bm!314000 (= call!314004 call!314005)))

(declare-fun d!1386758 () Bool)

(assert (=> d!1386758 e!2809145))

(declare-fun res!1875383 () Bool)

(assert (=> d!1386758 (=> (not res!1875383) (not e!2809145))))

(assert (=> d!1386758 (= res!1875383 (isStrictlySorted!409 lt!1687645))))

(assert (=> d!1386758 (= lt!1687645 e!2809147)))

(assert (=> d!1386758 (= c!769195 (and ((_ is Cons!50577) (toList!4279 lt!1686667)) (bvslt (_1!28784 (h!56408 (toList!4279 lt!1686667))) (_1!28784 lt!1686680))))))

(assert (=> d!1386758 (isStrictlySorted!409 (toList!4279 lt!1686667))))

(assert (=> d!1386758 (= (insertStrictlySorted!386 (toList!4279 lt!1686667) (_1!28784 lt!1686680) (_2!28784 lt!1686680)) lt!1687645)))

(assert (= (and d!1386758 c!769195) b!4509312))

(assert (= (and d!1386758 (not c!769195)) b!4509311))

(assert (= (and b!4509311 c!769196) b!4509308))

(assert (= (and b!4509311 (not c!769196)) b!4509309))

(assert (= (and b!4509309 c!769193) b!4509305))

(assert (= (and b!4509309 (not c!769193)) b!4509307))

(assert (= (or b!4509305 b!4509307) bm!313999))

(assert (= (or b!4509308 bm!313999) bm!314000))

(assert (= (or b!4509312 bm!314000) bm!313998))

(assert (= (and bm!313998 c!769194) b!4509310))

(assert (= (and bm!313998 (not c!769194)) b!4509313))

(assert (= (and d!1386758 res!1875383) b!4509306))

(assert (= (and b!4509306 res!1875382) b!4509304))

(declare-fun m!5247779 () Bool)

(assert (=> b!4509306 m!5247779))

(declare-fun m!5247781 () Bool)

(assert (=> bm!313998 m!5247781))

(declare-fun m!5247783 () Bool)

(assert (=> b!4509310 m!5247783))

(declare-fun m!5247785 () Bool)

(assert (=> d!1386758 m!5247785))

(declare-fun m!5247787 () Bool)

(assert (=> d!1386758 m!5247787))

(declare-fun m!5247789 () Bool)

(assert (=> b!4509304 m!5247789))

(assert (=> d!1386074 d!1386758))

(declare-fun d!1386760 () Bool)

(declare-fun res!1875384 () Bool)

(declare-fun e!2809150 () Bool)

(assert (=> d!1386760 (=> res!1875384 e!2809150)))

(assert (=> d!1386760 (= res!1875384 (and ((_ is Cons!50576) (t!357662 newBucket!178)) (= (_1!28783 (h!56407 (t!357662 newBucket!178))) (_1!28783 (h!56407 newBucket!178)))))))

(assert (=> d!1386760 (= (containsKey!1712 (t!357662 newBucket!178) (_1!28783 (h!56407 newBucket!178))) e!2809150)))

(declare-fun b!4509314 () Bool)

(declare-fun e!2809151 () Bool)

(assert (=> b!4509314 (= e!2809150 e!2809151)))

(declare-fun res!1875385 () Bool)

(assert (=> b!4509314 (=> (not res!1875385) (not e!2809151))))

(assert (=> b!4509314 (= res!1875385 ((_ is Cons!50576) (t!357662 newBucket!178)))))

(declare-fun b!4509315 () Bool)

(assert (=> b!4509315 (= e!2809151 (containsKey!1712 (t!357662 (t!357662 newBucket!178)) (_1!28783 (h!56407 newBucket!178))))))

(assert (= (and d!1386760 (not res!1875384)) b!4509314))

(assert (= (and b!4509314 res!1875385) b!4509315))

(declare-fun m!5247791 () Bool)

(assert (=> b!4509315 m!5247791))

(assert (=> b!4508267 d!1386760))

(declare-fun d!1386762 () Bool)

(declare-fun res!1875386 () Bool)

(declare-fun e!2809152 () Bool)

(assert (=> d!1386762 (=> res!1875386 e!2809152)))

(assert (=> d!1386762 (= res!1875386 (not ((_ is Cons!50576) (_2!28784 (h!56408 (toList!4279 lm!1477))))))))

(assert (=> d!1386762 (= (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lm!1477)))) e!2809152)))

(declare-fun b!4509316 () Bool)

(declare-fun e!2809153 () Bool)

(assert (=> b!4509316 (= e!2809152 e!2809153)))

(declare-fun res!1875387 () Bool)

(assert (=> b!4509316 (=> (not res!1875387) (not e!2809153))))

(assert (=> b!4509316 (= res!1875387 (not (containsKey!1712 (t!357662 (_2!28784 (h!56408 (toList!4279 lm!1477)))) (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lm!1477))))))))))

(declare-fun b!4509317 () Bool)

(assert (=> b!4509317 (= e!2809153 (noDuplicateKeys!1136 (t!357662 (_2!28784 (h!56408 (toList!4279 lm!1477))))))))

(assert (= (and d!1386762 (not res!1875386)) b!4509316))

(assert (= (and b!4509316 res!1875387) b!4509317))

(declare-fun m!5247793 () Bool)

(assert (=> b!4509316 m!5247793))

(declare-fun m!5247795 () Bool)

(assert (=> b!4509317 m!5247795))

(assert (=> bs!845242 d!1386762))

(declare-fun d!1386764 () Bool)

(declare-fun res!1875389 () Bool)

(declare-fun e!2809154 () Bool)

(assert (=> d!1386764 (=> res!1875389 e!2809154)))

(declare-fun e!2809155 () Bool)

(assert (=> d!1386764 (= res!1875389 e!2809155)))

(declare-fun res!1875390 () Bool)

(assert (=> d!1386764 (=> (not res!1875390) (not e!2809155))))

(assert (=> d!1386764 (= res!1875390 ((_ is Cons!50577) (t!357663 (toList!4279 lt!1686666))))))

(assert (=> d!1386764 (= (containsKeyBiggerList!116 (t!357663 (toList!4279 lt!1686666)) key!3287) e!2809154)))

(declare-fun b!4509318 () Bool)

(assert (=> b!4509318 (= e!2809155 (containsKey!1712 (_2!28784 (h!56408 (t!357663 (toList!4279 lt!1686666)))) key!3287))))

(declare-fun b!4509319 () Bool)

(declare-fun e!2809156 () Bool)

(assert (=> b!4509319 (= e!2809154 e!2809156)))

(declare-fun res!1875388 () Bool)

(assert (=> b!4509319 (=> (not res!1875388) (not e!2809156))))

(assert (=> b!4509319 (= res!1875388 ((_ is Cons!50577) (t!357663 (toList!4279 lt!1686666))))))

(declare-fun b!4509320 () Bool)

(assert (=> b!4509320 (= e!2809156 (containsKeyBiggerList!116 (t!357663 (t!357663 (toList!4279 lt!1686666))) key!3287))))

(assert (= (and d!1386764 res!1875390) b!4509318))

(assert (= (and d!1386764 (not res!1875389)) b!4509319))

(assert (= (and b!4509319 res!1875388) b!4509320))

(declare-fun m!5247797 () Bool)

(assert (=> b!4509318 m!5247797))

(declare-fun m!5247799 () Bool)

(assert (=> b!4509320 m!5247799))

(assert (=> b!4508113 d!1386764))

(declare-fun d!1386766 () Bool)

(declare-fun res!1875391 () Bool)

(declare-fun e!2809157 () Bool)

(assert (=> d!1386766 (=> res!1875391 e!2809157)))

(assert (=> d!1386766 (= res!1875391 (not ((_ is Cons!50576) (t!357662 newBucket!178))))))

(assert (=> d!1386766 (= (noDuplicateKeys!1136 (t!357662 newBucket!178)) e!2809157)))

(declare-fun b!4509321 () Bool)

(declare-fun e!2809158 () Bool)

(assert (=> b!4509321 (= e!2809157 e!2809158)))

(declare-fun res!1875392 () Bool)

(assert (=> b!4509321 (=> (not res!1875392) (not e!2809158))))

(assert (=> b!4509321 (= res!1875392 (not (containsKey!1712 (t!357662 (t!357662 newBucket!178)) (_1!28783 (h!56407 (t!357662 newBucket!178))))))))

(declare-fun b!4509322 () Bool)

(assert (=> b!4509322 (= e!2809158 (noDuplicateKeys!1136 (t!357662 (t!357662 newBucket!178))))))

(assert (= (and d!1386766 (not res!1875391)) b!4509321))

(assert (= (and b!4509321 res!1875392) b!4509322))

(declare-fun m!5247801 () Bool)

(assert (=> b!4509321 m!5247801))

(declare-fun m!5247803 () Bool)

(assert (=> b!4509322 m!5247803))

(assert (=> b!4508268 d!1386766))

(declare-fun d!1386768 () Bool)

(assert (=> d!1386768 (= (eq!593 (extractMap!1192 (toList!4279 (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178)))) (-!362 (extractMap!1192 (toList!4279 lt!1686666)) key!3287)) (= (content!8290 (toList!4280 (extractMap!1192 (toList!4279 (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178)))))) (content!8290 (toList!4280 (-!362 (extractMap!1192 (toList!4279 lt!1686666)) key!3287)))))))

(declare-fun bs!846020 () Bool)

(assert (= bs!846020 d!1386768))

(declare-fun m!5247805 () Bool)

(assert (=> bs!846020 m!5247805))

(declare-fun m!5247807 () Bool)

(assert (=> bs!846020 m!5247807))

(assert (=> d!1386224 d!1386768))

(declare-fun d!1386770 () Bool)

(assert (=> d!1386770 (eq!593 (extractMap!1192 (toList!4279 (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178)))) (-!362 (extractMap!1192 (toList!4279 lt!1686666)) key!3287))))

(assert (=> d!1386770 true))

(declare-fun _$8!626 () Unit!93112)

(assert (=> d!1386770 (= (choose!29262 lt!1686666 hash!344 newBucket!178 key!3287 hashF!1107) _$8!626)))

(declare-fun bs!846021 () Bool)

(assert (= bs!846021 d!1386770))

(assert (=> bs!846021 m!5245427))

(assert (=> bs!846021 m!5246047))

(assert (=> bs!846021 m!5246051))

(assert (=> bs!846021 m!5245427))

(assert (=> bs!846021 m!5246051))

(assert (=> bs!846021 m!5246047))

(assert (=> bs!846021 m!5246055))

(assert (=> bs!846021 m!5246049))

(assert (=> d!1386224 d!1386770))

(declare-fun d!1386772 () Bool)

(declare-fun res!1875393 () Bool)

(declare-fun e!2809159 () Bool)

(assert (=> d!1386772 (=> res!1875393 e!2809159)))

(assert (=> d!1386772 (= res!1875393 ((_ is Nil!50577) (toList!4279 lt!1686666)))))

(assert (=> d!1386772 (= (forall!10207 (toList!4279 lt!1686666) lambda!170089) e!2809159)))

(declare-fun b!4509323 () Bool)

(declare-fun e!2809160 () Bool)

(assert (=> b!4509323 (= e!2809159 e!2809160)))

(declare-fun res!1875394 () Bool)

(assert (=> b!4509323 (=> (not res!1875394) (not e!2809160))))

(assert (=> b!4509323 (= res!1875394 (dynLambda!21131 lambda!170089 (h!56408 (toList!4279 lt!1686666))))))

(declare-fun b!4509324 () Bool)

(assert (=> b!4509324 (= e!2809160 (forall!10207 (t!357663 (toList!4279 lt!1686666)) lambda!170089))))

(assert (= (and d!1386772 (not res!1875393)) b!4509323))

(assert (= (and b!4509323 res!1875394) b!4509324))

(declare-fun b_lambda!153599 () Bool)

(assert (=> (not b_lambda!153599) (not b!4509323)))

(declare-fun m!5247809 () Bool)

(assert (=> b!4509323 m!5247809))

(declare-fun m!5247811 () Bool)

(assert (=> b!4509324 m!5247811))

(assert (=> d!1386224 d!1386772))

(declare-fun d!1386774 () Bool)

(declare-fun e!2809161 () Bool)

(assert (=> d!1386774 e!2809161))

(declare-fun res!1875395 () Bool)

(assert (=> d!1386774 (=> (not res!1875395) (not e!2809161))))

(declare-fun lt!1687646 () ListLongMap!2911)

(assert (=> d!1386774 (= res!1875395 (contains!13269 lt!1687646 (_1!28784 (tuple2!50981 hash!344 newBucket!178))))))

(declare-fun lt!1687649 () List!50701)

(assert (=> d!1386774 (= lt!1687646 (ListLongMap!2912 lt!1687649))))

(declare-fun lt!1687648 () Unit!93112)

(declare-fun lt!1687647 () Unit!93112)

(assert (=> d!1386774 (= lt!1687648 lt!1687647)))

(assert (=> d!1386774 (= (getValueByKey!1048 lt!1687649 (_1!28784 (tuple2!50981 hash!344 newBucket!178))) (Some!11067 (_2!28784 (tuple2!50981 hash!344 newBucket!178))))))

(assert (=> d!1386774 (= lt!1687647 (lemmaContainsTupThenGetReturnValue!646 lt!1687649 (_1!28784 (tuple2!50981 hash!344 newBucket!178)) (_2!28784 (tuple2!50981 hash!344 newBucket!178))))))

(assert (=> d!1386774 (= lt!1687649 (insertStrictlySorted!386 (toList!4279 lt!1686666) (_1!28784 (tuple2!50981 hash!344 newBucket!178)) (_2!28784 (tuple2!50981 hash!344 newBucket!178))))))

(assert (=> d!1386774 (= (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178)) lt!1687646)))

(declare-fun b!4509325 () Bool)

(declare-fun res!1875396 () Bool)

(assert (=> b!4509325 (=> (not res!1875396) (not e!2809161))))

(assert (=> b!4509325 (= res!1875396 (= (getValueByKey!1048 (toList!4279 lt!1687646) (_1!28784 (tuple2!50981 hash!344 newBucket!178))) (Some!11067 (_2!28784 (tuple2!50981 hash!344 newBucket!178)))))))

(declare-fun b!4509326 () Bool)

(assert (=> b!4509326 (= e!2809161 (contains!13268 (toList!4279 lt!1687646) (tuple2!50981 hash!344 newBucket!178)))))

(assert (= (and d!1386774 res!1875395) b!4509325))

(assert (= (and b!4509325 res!1875396) b!4509326))

(declare-fun m!5247813 () Bool)

(assert (=> d!1386774 m!5247813))

(declare-fun m!5247815 () Bool)

(assert (=> d!1386774 m!5247815))

(declare-fun m!5247817 () Bool)

(assert (=> d!1386774 m!5247817))

(declare-fun m!5247819 () Bool)

(assert (=> d!1386774 m!5247819))

(declare-fun m!5247821 () Bool)

(assert (=> b!4509325 m!5247821))

(declare-fun m!5247823 () Bool)

(assert (=> b!4509326 m!5247823))

(assert (=> d!1386224 d!1386774))

(assert (=> d!1386224 d!1386192))

(declare-fun bs!846022 () Bool)

(declare-fun d!1386776 () Bool)

(assert (= bs!846022 (and d!1386776 d!1386196)))

(declare-fun lambda!170223 () Int)

(assert (=> bs!846022 (= lambda!170223 lambda!170080)))

(declare-fun bs!846023 () Bool)

(assert (= bs!846023 (and d!1386776 d!1386084)))

(assert (=> bs!846023 (= lambda!170223 lambda!169986)))

(declare-fun bs!846024 () Bool)

(assert (= bs!846024 (and d!1386776 d!1386300)))

(assert (=> bs!846024 (= lambda!170223 lambda!170116)))

(declare-fun bs!846025 () Bool)

(assert (= bs!846025 (and d!1386776 d!1386224)))

(assert (=> bs!846025 (= lambda!170223 lambda!170089)))

(declare-fun bs!846026 () Bool)

(assert (= bs!846026 (and d!1386776 d!1386434)))

(assert (=> bs!846026 (= lambda!170223 lambda!170164)))

(declare-fun bs!846027 () Bool)

(assert (= bs!846027 (and d!1386776 d!1386246)))

(assert (=> bs!846027 (= lambda!170223 lambda!170097)))

(declare-fun bs!846028 () Bool)

(assert (= bs!846028 (and d!1386776 start!445428)))

(assert (=> bs!846028 (= lambda!170223 lambda!169975)))

(declare-fun bs!846029 () Bool)

(assert (= bs!846029 (and d!1386776 d!1386112)))

(assert (=> bs!846029 (= lambda!170223 lambda!169992)))

(declare-fun bs!846030 () Bool)

(assert (= bs!846030 (and d!1386776 d!1386370)))

(assert (=> bs!846030 (= lambda!170223 lambda!170129)))

(declare-fun bs!846031 () Bool)

(assert (= bs!846031 (and d!1386776 d!1386180)))

(assert (=> bs!846031 (= lambda!170223 lambda!170077)))

(declare-fun bs!846032 () Bool)

(assert (= bs!846032 (and d!1386776 d!1386188)))

(assert (=> bs!846032 (= lambda!170223 lambda!170078)))

(declare-fun bs!846033 () Bool)

(assert (= bs!846033 (and d!1386776 d!1386238)))

(assert (=> bs!846033 (= lambda!170223 lambda!170091)))

(declare-fun bs!846034 () Bool)

(assert (= bs!846034 (and d!1386776 d!1386192)))

(assert (=> bs!846034 (= lambda!170223 lambda!170079)))

(declare-fun bs!846035 () Bool)

(assert (= bs!846035 (and d!1386776 d!1386230)))

(assert (=> bs!846035 (= lambda!170223 lambda!170090)))

(declare-fun bs!846036 () Bool)

(assert (= bs!846036 (and d!1386776 d!1386240)))

(assert (=> bs!846036 (not (= lambda!170223 lambda!170094))))

(declare-fun bs!846037 () Bool)

(assert (= bs!846037 (and d!1386776 d!1386200)))

(assert (=> bs!846037 (= lambda!170223 lambda!170083)))

(declare-fun lt!1687650 () ListMap!3541)

(assert (=> d!1386776 (invariantList!995 (toList!4280 lt!1687650))))

(declare-fun e!2809162 () ListMap!3541)

(assert (=> d!1386776 (= lt!1687650 e!2809162)))

(declare-fun c!769197 () Bool)

(assert (=> d!1386776 (= c!769197 ((_ is Cons!50577) (toList!4279 (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178)))))))

(assert (=> d!1386776 (forall!10207 (toList!4279 (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178))) lambda!170223)))

(assert (=> d!1386776 (= (extractMap!1192 (toList!4279 (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178)))) lt!1687650)))

(declare-fun b!4509327 () Bool)

(assert (=> b!4509327 (= e!2809162 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178))))) (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 (tuple2!50981 hash!344 newBucket!178)))))))))

(declare-fun b!4509328 () Bool)

(assert (=> b!4509328 (= e!2809162 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386776 c!769197) b!4509327))

(assert (= (and d!1386776 (not c!769197)) b!4509328))

(declare-fun m!5247825 () Bool)

(assert (=> d!1386776 m!5247825))

(declare-fun m!5247827 () Bool)

(assert (=> d!1386776 m!5247827))

(declare-fun m!5247829 () Bool)

(assert (=> b!4509327 m!5247829))

(assert (=> b!4509327 m!5247829))

(declare-fun m!5247831 () Bool)

(assert (=> b!4509327 m!5247831))

(assert (=> d!1386224 d!1386776))

(declare-fun d!1386778 () Bool)

(declare-fun e!2809163 () Bool)

(assert (=> d!1386778 e!2809163))

(declare-fun res!1875397 () Bool)

(assert (=> d!1386778 (=> (not res!1875397) (not e!2809163))))

(declare-fun lt!1687651 () ListMap!3541)

(assert (=> d!1386778 (= res!1875397 (not (contains!13267 lt!1687651 key!3287)))))

(assert (=> d!1386778 (= lt!1687651 (ListMap!3542 (removePresrvNoDuplicatedKeys!119 (toList!4280 (extractMap!1192 (toList!4279 lt!1686666))) key!3287)))))

(assert (=> d!1386778 (= (-!362 (extractMap!1192 (toList!4279 lt!1686666)) key!3287) lt!1687651)))

(declare-fun b!4509329 () Bool)

(assert (=> b!4509329 (= e!2809163 (= ((_ map and) (content!8293 (keys!17548 (extractMap!1192 (toList!4279 lt!1686666)))) ((_ map not) (store ((as const (Array K!11980 Bool)) false) key!3287 true))) (content!8293 (keys!17548 lt!1687651))))))

(assert (= (and d!1386778 res!1875397) b!4509329))

(declare-fun m!5247833 () Bool)

(assert (=> d!1386778 m!5247833))

(declare-fun m!5247835 () Bool)

(assert (=> d!1386778 m!5247835))

(declare-fun m!5247837 () Bool)

(assert (=> b!4509329 m!5247837))

(declare-fun m!5247839 () Bool)

(assert (=> b!4509329 m!5247839))

(assert (=> b!4509329 m!5246403))

(declare-fun m!5247841 () Bool)

(assert (=> b!4509329 m!5247841))

(assert (=> b!4509329 m!5246045))

(assert (=> b!4509329 m!5245427))

(assert (=> b!4509329 m!5246403))

(assert (=> b!4509329 m!5247837))

(assert (=> d!1386224 d!1386778))

(declare-fun d!1386780 () Bool)

(assert (=> d!1386780 (= (invariantList!995 (toList!4280 lt!1687001)) (noDuplicatedKeys!252 (toList!4280 lt!1687001)))))

(declare-fun bs!846038 () Bool)

(assert (= bs!846038 d!1386780))

(declare-fun m!5247843 () Bool)

(assert (=> bs!846038 m!5247843))

(assert (=> d!1386192 d!1386780))

(declare-fun d!1386782 () Bool)

(declare-fun res!1875398 () Bool)

(declare-fun e!2809164 () Bool)

(assert (=> d!1386782 (=> res!1875398 e!2809164)))

(assert (=> d!1386782 (= res!1875398 ((_ is Nil!50577) (toList!4279 lt!1686666)))))

(assert (=> d!1386782 (= (forall!10207 (toList!4279 lt!1686666) lambda!170079) e!2809164)))

(declare-fun b!4509330 () Bool)

(declare-fun e!2809165 () Bool)

(assert (=> b!4509330 (= e!2809164 e!2809165)))

(declare-fun res!1875399 () Bool)

(assert (=> b!4509330 (=> (not res!1875399) (not e!2809165))))

(assert (=> b!4509330 (= res!1875399 (dynLambda!21131 lambda!170079 (h!56408 (toList!4279 lt!1686666))))))

(declare-fun b!4509331 () Bool)

(assert (=> b!4509331 (= e!2809165 (forall!10207 (t!357663 (toList!4279 lt!1686666)) lambda!170079))))

(assert (= (and d!1386782 (not res!1875398)) b!4509330))

(assert (= (and b!4509330 res!1875399) b!4509331))

(declare-fun b_lambda!153601 () Bool)

(assert (=> (not b_lambda!153601) (not b!4509330)))

(declare-fun m!5247845 () Bool)

(assert (=> b!4509330 m!5247845))

(declare-fun m!5247847 () Bool)

(assert (=> b!4509331 m!5247847))

(assert (=> d!1386192 d!1386782))

(declare-fun bs!846039 () Bool)

(declare-fun b!4509333 () Bool)

(assert (= bs!846039 (and b!4509333 b!4508667)))

(declare-fun lambda!170224 () Int)

(assert (=> bs!846039 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170224 lambda!170120))))

(declare-fun bs!846040 () Bool)

(assert (= bs!846040 (and b!4509333 b!4509010)))

(assert (=> bs!846040 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170224 lambda!170184))))

(declare-fun bs!846041 () Bool)

(assert (= bs!846041 (and b!4509333 b!4508515)))

(assert (=> bs!846041 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170224 lambda!170113))))

(assert (=> bs!846041 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687114) (= lambda!170224 lambda!170114))))

(declare-fun bs!846042 () Bool)

(assert (= bs!846042 (and b!4509333 d!1386122)))

(assert (=> bs!846042 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686928) (= lambda!170224 lambda!170065))))

(declare-fun bs!846043 () Bool)

(assert (= bs!846043 (and b!4509333 b!4508939)))

(assert (=> bs!846043 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687367) (= lambda!170224 lambda!170169))))

(declare-fun bs!846044 () Bool)

(assert (= bs!846044 (and b!4509333 d!1386294)))

(assert (=> bs!846044 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687116) (= lambda!170224 lambda!170115))))

(declare-fun bs!846045 () Bool)

(assert (= bs!846045 (and b!4509333 d!1386364)))

(assert (=> bs!846045 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687175) (= lambda!170224 lambda!170124))))

(declare-fun bs!846046 () Bool)

(assert (= bs!846046 (and b!4509333 b!4508218)))

(assert (=> bs!846046 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686668) (= lambda!170224 lambda!170063))))

(assert (=> bs!846046 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686926) (= lambda!170224 lambda!170064))))

(declare-fun bs!846047 () Bool)

(assert (= bs!846047 (and b!4509333 d!1386536)))

(assert (=> bs!846047 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687369) (= lambda!170224 lambda!170170))))

(declare-fun bs!846048 () Bool)

(assert (= bs!846048 (and b!4509333 b!4509012)))

(assert (=> bs!846048 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687435) (= lambda!170224 lambda!170186))))

(declare-fun bs!846049 () Bool)

(assert (= bs!846049 (and b!4509333 d!1386562)))

(assert (=> bs!846049 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686926) (= lambda!170224 lambda!170181))))

(declare-fun bs!846050 () Bool)

(assert (= bs!846050 (and b!4509333 d!1386218)))

(assert (=> bs!846050 (not (= lambda!170224 lambda!170086))))

(declare-fun bs!846051 () Bool)

(assert (= bs!846051 (and b!4509333 b!4508216)))

(assert (=> bs!846051 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686668) (= lambda!170224 lambda!170062))))

(declare-fun bs!846052 () Bool)

(assert (= bs!846052 (and b!4509333 b!4508665)))

(assert (=> bs!846052 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170224 lambda!170119))))

(declare-fun bs!846053 () Bool)

(assert (= bs!846053 (and b!4509333 d!1386594)))

(assert (=> bs!846053 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687437) (= lambda!170224 lambda!170187))))

(declare-fun bs!846054 () Bool)

(assert (= bs!846054 (and b!4509333 b!4508513)))

(assert (=> bs!846054 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170224 lambda!170112))))

(assert (=> bs!846043 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170224 lambda!170168))))

(declare-fun bs!846055 () Bool)

(assert (= bs!846055 (and b!4509333 d!1386260)))

(assert (=> bs!846055 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686668) (= lambda!170224 lambda!170106))))

(assert (=> bs!846039 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687173) (= lambda!170224 lambda!170121))))

(declare-fun bs!846056 () Bool)

(assert (= bs!846056 (and b!4509333 b!4508937)))

(assert (=> bs!846056 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170224 lambda!170167))))

(declare-fun bs!846057 () Bool)

(assert (= bs!846057 (and b!4509333 b!4508780)))

(assert (=> bs!846057 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170224 lambda!170156))))

(declare-fun bs!846058 () Bool)

(assert (= bs!846058 (and b!4509333 b!4508778)))

(assert (=> bs!846058 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170224 lambda!170153))))

(declare-fun bs!846059 () Bool)

(assert (= bs!846059 (and b!4509333 d!1386428)))

(assert (=> bs!846059 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687252) (= lambda!170224 lambda!170161))))

(assert (=> bs!846057 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687250) (= lambda!170224 lambda!170159))))

(assert (=> bs!846048 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170224 lambda!170185))))

(assert (=> b!4509333 true))

(declare-fun bs!846060 () Bool)

(declare-fun b!4509335 () Bool)

(assert (= bs!846060 (and b!4509335 b!4508667)))

(declare-fun lambda!170225 () Int)

(assert (=> bs!846060 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170225 lambda!170120))))

(declare-fun bs!846061 () Bool)

(assert (= bs!846061 (and b!4509335 b!4509010)))

(assert (=> bs!846061 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170225 lambda!170184))))

(declare-fun bs!846062 () Bool)

(assert (= bs!846062 (and b!4509335 b!4508515)))

(assert (=> bs!846062 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170225 lambda!170113))))

(assert (=> bs!846062 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687114) (= lambda!170225 lambda!170114))))

(declare-fun bs!846063 () Bool)

(assert (= bs!846063 (and b!4509335 d!1386122)))

(assert (=> bs!846063 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686928) (= lambda!170225 lambda!170065))))

(declare-fun bs!846064 () Bool)

(assert (= bs!846064 (and b!4509335 b!4508939)))

(assert (=> bs!846064 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687367) (= lambda!170225 lambda!170169))))

(declare-fun bs!846065 () Bool)

(assert (= bs!846065 (and b!4509335 d!1386294)))

(assert (=> bs!846065 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687116) (= lambda!170225 lambda!170115))))

(declare-fun bs!846066 () Bool)

(assert (= bs!846066 (and b!4509335 d!1386364)))

(assert (=> bs!846066 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687175) (= lambda!170225 lambda!170124))))

(declare-fun bs!846067 () Bool)

(assert (= bs!846067 (and b!4509335 b!4508218)))

(assert (=> bs!846067 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686668) (= lambda!170225 lambda!170063))))

(declare-fun bs!846068 () Bool)

(assert (= bs!846068 (and b!4509335 b!4509333)))

(assert (=> bs!846068 (= lambda!170225 lambda!170224)))

(assert (=> bs!846067 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686926) (= lambda!170225 lambda!170064))))

(declare-fun bs!846069 () Bool)

(assert (= bs!846069 (and b!4509335 d!1386536)))

(assert (=> bs!846069 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687369) (= lambda!170225 lambda!170170))))

(declare-fun bs!846070 () Bool)

(assert (= bs!846070 (and b!4509335 b!4509012)))

(assert (=> bs!846070 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687435) (= lambda!170225 lambda!170186))))

(declare-fun bs!846071 () Bool)

(assert (= bs!846071 (and b!4509335 d!1386562)))

(assert (=> bs!846071 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686926) (= lambda!170225 lambda!170181))))

(declare-fun bs!846072 () Bool)

(assert (= bs!846072 (and b!4509335 d!1386218)))

(assert (=> bs!846072 (not (= lambda!170225 lambda!170086))))

(declare-fun bs!846073 () Bool)

(assert (= bs!846073 (and b!4509335 b!4508216)))

(assert (=> bs!846073 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686668) (= lambda!170225 lambda!170062))))

(declare-fun bs!846074 () Bool)

(assert (= bs!846074 (and b!4509335 b!4508665)))

(assert (=> bs!846074 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170225 lambda!170119))))

(declare-fun bs!846075 () Bool)

(assert (= bs!846075 (and b!4509335 d!1386594)))

(assert (=> bs!846075 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687437) (= lambda!170225 lambda!170187))))

(declare-fun bs!846076 () Bool)

(assert (= bs!846076 (and b!4509335 b!4508513)))

(assert (=> bs!846076 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170225 lambda!170112))))

(assert (=> bs!846064 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170225 lambda!170168))))

(declare-fun bs!846077 () Bool)

(assert (= bs!846077 (and b!4509335 d!1386260)))

(assert (=> bs!846077 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1686668) (= lambda!170225 lambda!170106))))

(assert (=> bs!846060 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687173) (= lambda!170225 lambda!170121))))

(declare-fun bs!846078 () Bool)

(assert (= bs!846078 (and b!4509335 b!4508937)))

(assert (=> bs!846078 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170225 lambda!170167))))

(declare-fun bs!846079 () Bool)

(assert (= bs!846079 (and b!4509335 b!4508780)))

(assert (=> bs!846079 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170225 lambda!170156))))

(declare-fun bs!846080 () Bool)

(assert (= bs!846080 (and b!4509335 b!4508778)))

(assert (=> bs!846080 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170225 lambda!170153))))

(declare-fun bs!846081 () Bool)

(assert (= bs!846081 (and b!4509335 d!1386428)))

(assert (=> bs!846081 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687252) (= lambda!170225 lambda!170161))))

(assert (=> bs!846079 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687250) (= lambda!170225 lambda!170159))))

(assert (=> bs!846070 (= (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170225 lambda!170185))))

(assert (=> b!4509335 true))

(declare-fun lt!1687664 () ListMap!3541)

(declare-fun lambda!170226 () Int)

(assert (=> bs!846060 (= (= lt!1687664 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170226 lambda!170120))))

(assert (=> bs!846061 (= (= lt!1687664 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170226 lambda!170184))))

(assert (=> bs!846062 (= (= lt!1687664 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170226 lambda!170113))))

(assert (=> bs!846062 (= (= lt!1687664 lt!1687114) (= lambda!170226 lambda!170114))))

(assert (=> bs!846063 (= (= lt!1687664 lt!1686928) (= lambda!170226 lambda!170065))))

(assert (=> bs!846064 (= (= lt!1687664 lt!1687367) (= lambda!170226 lambda!170169))))

(assert (=> b!4509335 (= (= lt!1687664 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170226 lambda!170225))))

(assert (=> bs!846065 (= (= lt!1687664 lt!1687116) (= lambda!170226 lambda!170115))))

(assert (=> bs!846066 (= (= lt!1687664 lt!1687175) (= lambda!170226 lambda!170124))))

(assert (=> bs!846067 (= (= lt!1687664 lt!1686668) (= lambda!170226 lambda!170063))))

(assert (=> bs!846068 (= (= lt!1687664 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170226 lambda!170224))))

(assert (=> bs!846067 (= (= lt!1687664 lt!1686926) (= lambda!170226 lambda!170064))))

(assert (=> bs!846069 (= (= lt!1687664 lt!1687369) (= lambda!170226 lambda!170170))))

(assert (=> bs!846070 (= (= lt!1687664 lt!1687435) (= lambda!170226 lambda!170186))))

(assert (=> bs!846071 (= (= lt!1687664 lt!1686926) (= lambda!170226 lambda!170181))))

(assert (=> bs!846072 (not (= lambda!170226 lambda!170086))))

(assert (=> bs!846073 (= (= lt!1687664 lt!1686668) (= lambda!170226 lambda!170062))))

(assert (=> bs!846074 (= (= lt!1687664 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170226 lambda!170119))))

(assert (=> bs!846075 (= (= lt!1687664 lt!1687437) (= lambda!170226 lambda!170187))))

(assert (=> bs!846076 (= (= lt!1687664 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170226 lambda!170112))))

(assert (=> bs!846064 (= (= lt!1687664 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170226 lambda!170168))))

(assert (=> bs!846077 (= (= lt!1687664 lt!1686668) (= lambda!170226 lambda!170106))))

(assert (=> bs!846060 (= (= lt!1687664 lt!1687173) (= lambda!170226 lambda!170121))))

(assert (=> bs!846078 (= (= lt!1687664 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170226 lambda!170167))))

(assert (=> bs!846079 (= (= lt!1687664 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170226 lambda!170156))))

(assert (=> bs!846080 (= (= lt!1687664 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170226 lambda!170153))))

(assert (=> bs!846081 (= (= lt!1687664 lt!1687252) (= lambda!170226 lambda!170161))))

(assert (=> bs!846079 (= (= lt!1687664 lt!1687250) (= lambda!170226 lambda!170159))))

(assert (=> bs!846070 (= (= lt!1687664 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170226 lambda!170185))))

(assert (=> b!4509335 true))

(declare-fun bs!846082 () Bool)

(declare-fun d!1386784 () Bool)

(assert (= bs!846082 (and d!1386784 b!4508667)))

(declare-fun lambda!170227 () Int)

(declare-fun lt!1687666 () ListMap!3541)

(assert (=> bs!846082 (= (= lt!1687666 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170227 lambda!170120))))

(declare-fun bs!846083 () Bool)

(assert (= bs!846083 (and d!1386784 b!4509010)))

(assert (=> bs!846083 (= (= lt!1687666 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170227 lambda!170184))))

(declare-fun bs!846084 () Bool)

(assert (= bs!846084 (and d!1386784 b!4508515)))

(assert (=> bs!846084 (= (= lt!1687666 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170227 lambda!170113))))

(assert (=> bs!846084 (= (= lt!1687666 lt!1687114) (= lambda!170227 lambda!170114))))

(declare-fun bs!846085 () Bool)

(assert (= bs!846085 (and d!1386784 d!1386122)))

(assert (=> bs!846085 (= (= lt!1687666 lt!1686928) (= lambda!170227 lambda!170065))))

(declare-fun bs!846086 () Bool)

(assert (= bs!846086 (and d!1386784 b!4508939)))

(assert (=> bs!846086 (= (= lt!1687666 lt!1687367) (= lambda!170227 lambda!170169))))

(declare-fun bs!846087 () Bool)

(assert (= bs!846087 (and d!1386784 d!1386294)))

(assert (=> bs!846087 (= (= lt!1687666 lt!1687116) (= lambda!170227 lambda!170115))))

(declare-fun bs!846088 () Bool)

(assert (= bs!846088 (and d!1386784 d!1386364)))

(assert (=> bs!846088 (= (= lt!1687666 lt!1687175) (= lambda!170227 lambda!170124))))

(declare-fun bs!846089 () Bool)

(assert (= bs!846089 (and d!1386784 b!4508218)))

(assert (=> bs!846089 (= (= lt!1687666 lt!1686668) (= lambda!170227 lambda!170063))))

(declare-fun bs!846090 () Bool)

(assert (= bs!846090 (and d!1386784 b!4509333)))

(assert (=> bs!846090 (= (= lt!1687666 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170227 lambda!170224))))

(assert (=> bs!846089 (= (= lt!1687666 lt!1686926) (= lambda!170227 lambda!170064))))

(declare-fun bs!846091 () Bool)

(assert (= bs!846091 (and d!1386784 d!1386536)))

(assert (=> bs!846091 (= (= lt!1687666 lt!1687369) (= lambda!170227 lambda!170170))))

(declare-fun bs!846092 () Bool)

(assert (= bs!846092 (and d!1386784 b!4509012)))

(assert (=> bs!846092 (= (= lt!1687666 lt!1687435) (= lambda!170227 lambda!170186))))

(declare-fun bs!846093 () Bool)

(assert (= bs!846093 (and d!1386784 d!1386562)))

(assert (=> bs!846093 (= (= lt!1687666 lt!1686926) (= lambda!170227 lambda!170181))))

(declare-fun bs!846094 () Bool)

(assert (= bs!846094 (and d!1386784 d!1386218)))

(assert (=> bs!846094 (not (= lambda!170227 lambda!170086))))

(declare-fun bs!846095 () Bool)

(assert (= bs!846095 (and d!1386784 b!4508216)))

(assert (=> bs!846095 (= (= lt!1687666 lt!1686668) (= lambda!170227 lambda!170062))))

(declare-fun bs!846096 () Bool)

(assert (= bs!846096 (and d!1386784 b!4508665)))

(assert (=> bs!846096 (= (= lt!1687666 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170227 lambda!170119))))

(declare-fun bs!846097 () Bool)

(assert (= bs!846097 (and d!1386784 d!1386594)))

(assert (=> bs!846097 (= (= lt!1687666 lt!1687437) (= lambda!170227 lambda!170187))))

(declare-fun bs!846098 () Bool)

(assert (= bs!846098 (and d!1386784 b!4509335)))

(assert (=> bs!846098 (= (= lt!1687666 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170227 lambda!170225))))

(assert (=> bs!846098 (= (= lt!1687666 lt!1687664) (= lambda!170227 lambda!170226))))

(declare-fun bs!846099 () Bool)

(assert (= bs!846099 (and d!1386784 b!4508513)))

(assert (=> bs!846099 (= (= lt!1687666 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170227 lambda!170112))))

(assert (=> bs!846086 (= (= lt!1687666 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170227 lambda!170168))))

(declare-fun bs!846100 () Bool)

(assert (= bs!846100 (and d!1386784 d!1386260)))

(assert (=> bs!846100 (= (= lt!1687666 lt!1686668) (= lambda!170227 lambda!170106))))

(assert (=> bs!846082 (= (= lt!1687666 lt!1687173) (= lambda!170227 lambda!170121))))

(declare-fun bs!846101 () Bool)

(assert (= bs!846101 (and d!1386784 b!4508937)))

(assert (=> bs!846101 (= (= lt!1687666 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170227 lambda!170167))))

(declare-fun bs!846102 () Bool)

(assert (= bs!846102 (and d!1386784 b!4508780)))

(assert (=> bs!846102 (= (= lt!1687666 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170227 lambda!170156))))

(declare-fun bs!846103 () Bool)

(assert (= bs!846103 (and d!1386784 b!4508778)))

(assert (=> bs!846103 (= (= lt!1687666 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170227 lambda!170153))))

(declare-fun bs!846104 () Bool)

(assert (= bs!846104 (and d!1386784 d!1386428)))

(assert (=> bs!846104 (= (= lt!1687666 lt!1687252) (= lambda!170227 lambda!170161))))

(assert (=> bs!846102 (= (= lt!1687666 lt!1687250) (= lambda!170227 lambda!170159))))

(assert (=> bs!846092 (= (= lt!1687666 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170227 lambda!170185))))

(assert (=> d!1386784 true))

(declare-fun c!769198 () Bool)

(declare-fun call!314006 () Bool)

(declare-fun lt!1687654 () ListMap!3541)

(declare-fun bm!314001 () Bool)

(assert (=> bm!314001 (= call!314006 (forall!10208 (ite c!769198 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (toList!4280 lt!1687654)) (ite c!769198 lambda!170224 lambda!170226)))))

(declare-fun b!4509332 () Bool)

(declare-fun e!2809166 () Bool)

(assert (=> b!4509332 (= e!2809166 (invariantList!995 (toList!4280 lt!1687666)))))

(declare-fun e!2809167 () ListMap!3541)

(assert (=> b!4509333 (= e!2809167 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))))

(declare-fun lt!1687657 () Unit!93112)

(declare-fun call!314008 () Unit!93112)

(assert (=> b!4509333 (= lt!1687657 call!314008)))

(declare-fun call!314007 () Bool)

(assert (=> b!4509333 call!314007))

(declare-fun lt!1687655 () Unit!93112)

(assert (=> b!4509333 (= lt!1687655 lt!1687657)))

(assert (=> b!4509333 call!314006))

(declare-fun lt!1687656 () Unit!93112)

(declare-fun Unit!93336 () Unit!93112)

(assert (=> b!4509333 (= lt!1687656 Unit!93336)))

(declare-fun bm!314002 () Bool)

(assert (=> bm!314002 (= call!314007 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (ite c!769198 lambda!170224 lambda!170225)))))

(declare-fun bm!314003 () Bool)

(assert (=> bm!314003 (= call!314008 (lemmaContainsAllItsOwnKeys!315 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))))))

(declare-fun e!2809168 () Bool)

(declare-fun b!4509334 () Bool)

(assert (=> b!4509334 (= e!2809168 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) lambda!170226))))

(assert (=> b!4509335 (= e!2809167 lt!1687664)))

(assert (=> b!4509335 (= lt!1687654 (+!1493 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (h!56407 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))))))

(assert (=> b!4509335 (= lt!1687664 (addToMapMapFromBucket!663 (t!357662 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (+!1493 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (h!56407 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680))))))))))

(declare-fun lt!1687663 () Unit!93112)

(assert (=> b!4509335 (= lt!1687663 call!314008)))

(assert (=> b!4509335 call!314007))

(declare-fun lt!1687653 () Unit!93112)

(assert (=> b!4509335 (= lt!1687653 lt!1687663)))

(assert (=> b!4509335 (forall!10208 (toList!4280 lt!1687654) lambda!170226)))

(declare-fun lt!1687661 () Unit!93112)

(declare-fun Unit!93338 () Unit!93112)

(assert (=> b!4509335 (= lt!1687661 Unit!93338)))

(assert (=> b!4509335 (forall!10208 (t!357662 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) lambda!170226)))

(declare-fun lt!1687662 () Unit!93112)

(declare-fun Unit!93339 () Unit!93112)

(assert (=> b!4509335 (= lt!1687662 Unit!93339)))

(declare-fun lt!1687660 () Unit!93112)

(declare-fun Unit!93340 () Unit!93112)

(assert (=> b!4509335 (= lt!1687660 Unit!93340)))

(declare-fun lt!1687668 () Unit!93112)

(assert (=> b!4509335 (= lt!1687668 (forallContained!2460 (toList!4280 lt!1687654) lambda!170226 (h!56407 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))))))

(assert (=> b!4509335 (contains!13267 lt!1687654 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))))))

(declare-fun lt!1687659 () Unit!93112)

(declare-fun Unit!93342 () Unit!93112)

(assert (=> b!4509335 (= lt!1687659 Unit!93342)))

(assert (=> b!4509335 (contains!13267 lt!1687664 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))))))

(declare-fun lt!1687667 () Unit!93112)

(declare-fun Unit!93344 () Unit!93112)

(assert (=> b!4509335 (= lt!1687667 Unit!93344)))

(assert (=> b!4509335 (forall!10208 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lambda!170226)))

(declare-fun lt!1687671 () Unit!93112)

(declare-fun Unit!93345 () Unit!93112)

(assert (=> b!4509335 (= lt!1687671 Unit!93345)))

(assert (=> b!4509335 call!314006))

(declare-fun lt!1687672 () Unit!93112)

(declare-fun Unit!93346 () Unit!93112)

(assert (=> b!4509335 (= lt!1687672 Unit!93346)))

(declare-fun lt!1687669 () Unit!93112)

(declare-fun Unit!93347 () Unit!93112)

(assert (=> b!4509335 (= lt!1687669 Unit!93347)))

(declare-fun lt!1687670 () Unit!93112)

(assert (=> b!4509335 (= lt!1687670 (addForallContainsKeyThenBeforeAdding!315 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687664 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))) (_2!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680))))))))))

(assert (=> b!4509335 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) lambda!170226)))

(declare-fun lt!1687652 () Unit!93112)

(assert (=> b!4509335 (= lt!1687652 lt!1687670)))

(assert (=> b!4509335 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) lambda!170226)))

(declare-fun lt!1687665 () Unit!93112)

(declare-fun Unit!93348 () Unit!93112)

(assert (=> b!4509335 (= lt!1687665 Unit!93348)))

(declare-fun res!1875401 () Bool)

(assert (=> b!4509335 (= res!1875401 (forall!10208 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lambda!170226))))

(assert (=> b!4509335 (=> (not res!1875401) (not e!2809168))))

(assert (=> b!4509335 e!2809168))

(declare-fun lt!1687658 () Unit!93112)

(declare-fun Unit!93349 () Unit!93112)

(assert (=> b!4509335 (= lt!1687658 Unit!93349)))

(assert (=> d!1386784 e!2809166))

(declare-fun res!1875402 () Bool)

(assert (=> d!1386784 (=> (not res!1875402) (not e!2809166))))

(assert (=> d!1386784 (= res!1875402 (forall!10208 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lambda!170227))))

(assert (=> d!1386784 (= lt!1687666 e!2809167)))

(assert (=> d!1386784 (= c!769198 ((_ is Nil!50576) (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680))))))))

(assert (=> d!1386784 (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))))

(assert (=> d!1386784 (= (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) lt!1687666)))

(declare-fun b!4509336 () Bool)

(declare-fun res!1875400 () Bool)

(assert (=> b!4509336 (=> (not res!1875400) (not e!2809166))))

(assert (=> b!4509336 (= res!1875400 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) lambda!170227))))

(assert (= (and d!1386784 c!769198) b!4509333))

(assert (= (and d!1386784 (not c!769198)) b!4509335))

(assert (= (and b!4509335 res!1875401) b!4509334))

(assert (= (or b!4509333 b!4509335) bm!314001))

(assert (= (or b!4509333 b!4509335) bm!314002))

(assert (= (or b!4509333 b!4509335) bm!314003))

(assert (= (and d!1386784 res!1875402) b!4509336))

(assert (= (and b!4509336 res!1875400) b!4509332))

(assert (=> bm!314003 m!5246101))

(declare-fun m!5247849 () Bool)

(assert (=> bm!314003 m!5247849))

(declare-fun m!5247851 () Bool)

(assert (=> b!4509334 m!5247851))

(assert (=> b!4509335 m!5247851))

(declare-fun m!5247853 () Bool)

(assert (=> b!4509335 m!5247853))

(declare-fun m!5247855 () Bool)

(assert (=> b!4509335 m!5247855))

(assert (=> b!4509335 m!5247851))

(assert (=> b!4509335 m!5246101))

(declare-fun m!5247857 () Bool)

(assert (=> b!4509335 m!5247857))

(assert (=> b!4509335 m!5246101))

(declare-fun m!5247859 () Bool)

(assert (=> b!4509335 m!5247859))

(assert (=> b!4509335 m!5247859))

(declare-fun m!5247861 () Bool)

(assert (=> b!4509335 m!5247861))

(declare-fun m!5247863 () Bool)

(assert (=> b!4509335 m!5247863))

(assert (=> b!4509335 m!5247855))

(declare-fun m!5247865 () Bool)

(assert (=> b!4509335 m!5247865))

(declare-fun m!5247867 () Bool)

(assert (=> b!4509335 m!5247867))

(declare-fun m!5247869 () Bool)

(assert (=> b!4509335 m!5247869))

(declare-fun m!5247871 () Bool)

(assert (=> bm!314001 m!5247871))

(declare-fun m!5247873 () Bool)

(assert (=> b!4509336 m!5247873))

(declare-fun m!5247875 () Bool)

(assert (=> b!4509332 m!5247875))

(declare-fun m!5247877 () Bool)

(assert (=> d!1386784 m!5247877))

(declare-fun m!5247879 () Bool)

(assert (=> d!1386784 m!5247879))

(declare-fun m!5247881 () Bool)

(assert (=> bm!314002 m!5247881))

(assert (=> b!4508381 d!1386784))

(declare-fun bs!846105 () Bool)

(declare-fun d!1386786 () Bool)

(assert (= bs!846105 (and d!1386786 d!1386196)))

(declare-fun lambda!170228 () Int)

(assert (=> bs!846105 (= lambda!170228 lambda!170080)))

(declare-fun bs!846106 () Bool)

(assert (= bs!846106 (and d!1386786 d!1386084)))

(assert (=> bs!846106 (= lambda!170228 lambda!169986)))

(declare-fun bs!846107 () Bool)

(assert (= bs!846107 (and d!1386786 d!1386776)))

(assert (=> bs!846107 (= lambda!170228 lambda!170223)))

(declare-fun bs!846108 () Bool)

(assert (= bs!846108 (and d!1386786 d!1386300)))

(assert (=> bs!846108 (= lambda!170228 lambda!170116)))

(declare-fun bs!846109 () Bool)

(assert (= bs!846109 (and d!1386786 d!1386224)))

(assert (=> bs!846109 (= lambda!170228 lambda!170089)))

(declare-fun bs!846110 () Bool)

(assert (= bs!846110 (and d!1386786 d!1386434)))

(assert (=> bs!846110 (= lambda!170228 lambda!170164)))

(declare-fun bs!846111 () Bool)

(assert (= bs!846111 (and d!1386786 d!1386246)))

(assert (=> bs!846111 (= lambda!170228 lambda!170097)))

(declare-fun bs!846112 () Bool)

(assert (= bs!846112 (and d!1386786 start!445428)))

(assert (=> bs!846112 (= lambda!170228 lambda!169975)))

(declare-fun bs!846113 () Bool)

(assert (= bs!846113 (and d!1386786 d!1386112)))

(assert (=> bs!846113 (= lambda!170228 lambda!169992)))

(declare-fun bs!846114 () Bool)

(assert (= bs!846114 (and d!1386786 d!1386370)))

(assert (=> bs!846114 (= lambda!170228 lambda!170129)))

(declare-fun bs!846115 () Bool)

(assert (= bs!846115 (and d!1386786 d!1386180)))

(assert (=> bs!846115 (= lambda!170228 lambda!170077)))

(declare-fun bs!846116 () Bool)

(assert (= bs!846116 (and d!1386786 d!1386188)))

(assert (=> bs!846116 (= lambda!170228 lambda!170078)))

(declare-fun bs!846117 () Bool)

(assert (= bs!846117 (and d!1386786 d!1386238)))

(assert (=> bs!846117 (= lambda!170228 lambda!170091)))

(declare-fun bs!846118 () Bool)

(assert (= bs!846118 (and d!1386786 d!1386192)))

(assert (=> bs!846118 (= lambda!170228 lambda!170079)))

(declare-fun bs!846119 () Bool)

(assert (= bs!846119 (and d!1386786 d!1386230)))

(assert (=> bs!846119 (= lambda!170228 lambda!170090)))

(declare-fun bs!846120 () Bool)

(assert (= bs!846120 (and d!1386786 d!1386240)))

(assert (=> bs!846120 (not (= lambda!170228 lambda!170094))))

(declare-fun bs!846121 () Bool)

(assert (= bs!846121 (and d!1386786 d!1386200)))

(assert (=> bs!846121 (= lambda!170228 lambda!170083)))

(declare-fun lt!1687705 () ListMap!3541)

(assert (=> d!1386786 (invariantList!995 (toList!4280 lt!1687705))))

(declare-fun e!2809183 () ListMap!3541)

(assert (=> d!1386786 (= lt!1687705 e!2809183)))

(declare-fun c!769211 () Bool)

(assert (=> d!1386786 (= c!769211 ((_ is Cons!50577) (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))))

(assert (=> d!1386786 (forall!10207 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))) lambda!170228)))

(assert (=> d!1386786 (= (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) lt!1687705)))

(declare-fun b!4509361 () Bool)

(assert (=> b!4509361 (= e!2809183 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680)))))))))

(declare-fun b!4509362 () Bool)

(assert (=> b!4509362 (= e!2809183 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386786 c!769211) b!4509361))

(assert (= (and d!1386786 (not c!769211)) b!4509362))

(declare-fun m!5247883 () Bool)

(assert (=> d!1386786 m!5247883))

(declare-fun m!5247885 () Bool)

(assert (=> d!1386786 m!5247885))

(declare-fun m!5247887 () Bool)

(assert (=> b!4509361 m!5247887))

(assert (=> b!4509361 m!5247887))

(declare-fun m!5247889 () Bool)

(assert (=> b!4509361 m!5247889))

(assert (=> b!4508381 d!1386786))

(assert (=> d!1386194 d!1386468))

(declare-fun d!1386788 () Bool)

(declare-fun c!769214 () Bool)

(assert (=> d!1386788 (= c!769214 (and ((_ is Cons!50577) (toList!4279 lt!1687034)) (= (_1!28784 (h!56408 (toList!4279 lt!1687034))) (_1!28784 lt!1686680))))))

(declare-fun e!2809186 () Option!11068)

(assert (=> d!1386788 (= (getValueByKey!1048 (toList!4279 lt!1687034) (_1!28784 lt!1686680)) e!2809186)))

(declare-fun b!4509369 () Bool)

(declare-fun e!2809187 () Option!11068)

(assert (=> b!4509369 (= e!2809187 (getValueByKey!1048 (t!357663 (toList!4279 lt!1687034)) (_1!28784 lt!1686680)))))

(declare-fun b!4509368 () Bool)

(assert (=> b!4509368 (= e!2809186 e!2809187)))

(declare-fun c!769215 () Bool)

(assert (=> b!4509368 (= c!769215 (and ((_ is Cons!50577) (toList!4279 lt!1687034)) (not (= (_1!28784 (h!56408 (toList!4279 lt!1687034))) (_1!28784 lt!1686680)))))))

(declare-fun b!4509367 () Bool)

(assert (=> b!4509367 (= e!2809186 (Some!11067 (_2!28784 (h!56408 (toList!4279 lt!1687034)))))))

(declare-fun b!4509370 () Bool)

(assert (=> b!4509370 (= e!2809187 None!11067)))

(assert (= (and d!1386788 c!769214) b!4509367))

(assert (= (and d!1386788 (not c!769214)) b!4509368))

(assert (= (and b!4509368 c!769215) b!4509369))

(assert (= (and b!4509368 (not c!769215)) b!4509370))

(declare-fun m!5247891 () Bool)

(assert (=> b!4509369 m!5247891))

(assert (=> b!4508375 d!1386788))

(assert (=> b!4508341 d!1386210))

(assert (=> b!4508307 d!1386586))

(declare-fun d!1386790 () Bool)

(assert (=> d!1386790 (containsKey!1715 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287)))

(declare-fun lt!1687706 () Unit!93112)

(assert (=> d!1386790 (= lt!1687706 (choose!29272 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287))))

(assert (=> d!1386790 (invariantList!995 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))))))

(assert (=> d!1386790 (= (lemmaInGetKeysListThenContainsKey!442 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) key!3287) lt!1687706)))

(declare-fun bs!846122 () Bool)

(assert (= bs!846122 d!1386790))

(assert (=> bs!846122 m!5245917))

(declare-fun m!5247893 () Bool)

(assert (=> bs!846122 m!5247893))

(assert (=> bs!846122 m!5246939))

(assert (=> b!4508307 d!1386790))

(assert (=> d!1386170 d!1386482))

(assert (=> d!1386170 d!1386476))

(declare-fun d!1386792 () Bool)

(declare-fun lt!1687707 () Bool)

(assert (=> d!1386792 (= lt!1687707 (select (content!8293 e!2808535) key!3287))))

(declare-fun e!2809192 () Bool)

(assert (=> d!1386792 (= lt!1687707 e!2809192)))

(declare-fun res!1875409 () Bool)

(assert (=> d!1386792 (=> (not res!1875409) (not e!2809192))))

(assert (=> d!1386792 (= res!1875409 ((_ is Cons!50579) e!2808535))))

(assert (=> d!1386792 (= (contains!13271 e!2808535 key!3287) lt!1687707)))

(declare-fun b!4509381 () Bool)

(declare-fun e!2809193 () Bool)

(assert (=> b!4509381 (= e!2809192 e!2809193)))

(declare-fun res!1875410 () Bool)

(assert (=> b!4509381 (=> res!1875410 e!2809193)))

(assert (=> b!4509381 (= res!1875410 (= (h!56412 e!2808535) key!3287))))

(declare-fun b!4509382 () Bool)

(assert (=> b!4509382 (= e!2809193 (contains!13271 (t!357665 e!2808535) key!3287))))

(assert (= (and d!1386792 res!1875409) b!4509381))

(assert (= (and b!4509381 (not res!1875410)) b!4509382))

(declare-fun m!5247895 () Bool)

(assert (=> d!1386792 m!5247895))

(declare-fun m!5247897 () Bool)

(assert (=> d!1386792 m!5247897))

(declare-fun m!5247899 () Bool)

(assert (=> b!4509382 m!5247899))

(assert (=> bm!313906 d!1386792))

(assert (=> d!1386216 d!1386732))

(assert (=> b!4508361 d!1386172))

(declare-fun bs!846123 () Bool)

(declare-fun b!4509384 () Bool)

(assert (= bs!846123 (and b!4509384 b!4508667)))

(declare-fun lambda!170229 () Int)

(assert (=> bs!846123 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170229 lambda!170120))))

(declare-fun bs!846124 () Bool)

(assert (= bs!846124 (and b!4509384 b!4509010)))

(assert (=> bs!846124 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170229 lambda!170184))))

(declare-fun bs!846125 () Bool)

(assert (= bs!846125 (and b!4509384 b!4508515)))

(assert (=> bs!846125 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170229 lambda!170113))))

(assert (=> bs!846125 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687114) (= lambda!170229 lambda!170114))))

(declare-fun bs!846126 () Bool)

(assert (= bs!846126 (and b!4509384 d!1386122)))

(assert (=> bs!846126 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686928) (= lambda!170229 lambda!170065))))

(declare-fun bs!846127 () Bool)

(assert (= bs!846127 (and b!4509384 b!4508939)))

(assert (=> bs!846127 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687367) (= lambda!170229 lambda!170169))))

(declare-fun bs!846128 () Bool)

(assert (= bs!846128 (and b!4509384 d!1386294)))

(assert (=> bs!846128 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687116) (= lambda!170229 lambda!170115))))

(declare-fun bs!846129 () Bool)

(assert (= bs!846129 (and b!4509384 d!1386364)))

(assert (=> bs!846129 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687175) (= lambda!170229 lambda!170124))))

(declare-fun bs!846130 () Bool)

(assert (= bs!846130 (and b!4509384 b!4509333)))

(assert (=> bs!846130 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170229 lambda!170224))))

(declare-fun bs!846131 () Bool)

(assert (= bs!846131 (and b!4509384 b!4508218)))

(assert (=> bs!846131 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686926) (= lambda!170229 lambda!170064))))

(declare-fun bs!846132 () Bool)

(assert (= bs!846132 (and b!4509384 d!1386536)))

(assert (=> bs!846132 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687369) (= lambda!170229 lambda!170170))))

(declare-fun bs!846133 () Bool)

(assert (= bs!846133 (and b!4509384 b!4509012)))

(assert (=> bs!846133 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687435) (= lambda!170229 lambda!170186))))

(declare-fun bs!846134 () Bool)

(assert (= bs!846134 (and b!4509384 d!1386562)))

(assert (=> bs!846134 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686926) (= lambda!170229 lambda!170181))))

(declare-fun bs!846135 () Bool)

(assert (= bs!846135 (and b!4509384 d!1386218)))

(assert (=> bs!846135 (not (= lambda!170229 lambda!170086))))

(declare-fun bs!846136 () Bool)

(assert (= bs!846136 (and b!4509384 b!4508216)))

(assert (=> bs!846136 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686668) (= lambda!170229 lambda!170062))))

(declare-fun bs!846137 () Bool)

(assert (= bs!846137 (and b!4509384 b!4508665)))

(assert (=> bs!846137 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170229 lambda!170119))))

(declare-fun bs!846138 () Bool)

(assert (= bs!846138 (and b!4509384 d!1386594)))

(assert (=> bs!846138 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687437) (= lambda!170229 lambda!170187))))

(declare-fun bs!846139 () Bool)

(assert (= bs!846139 (and b!4509384 b!4509335)))

(assert (=> bs!846139 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170229 lambda!170225))))

(assert (=> bs!846139 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687664) (= lambda!170229 lambda!170226))))

(declare-fun bs!846140 () Bool)

(assert (= bs!846140 (and b!4509384 b!4508513)))

(assert (=> bs!846140 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170229 lambda!170112))))

(assert (=> bs!846127 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170229 lambda!170168))))

(declare-fun bs!846141 () Bool)

(assert (= bs!846141 (and b!4509384 d!1386260)))

(assert (=> bs!846141 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686668) (= lambda!170229 lambda!170106))))

(assert (=> bs!846123 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687173) (= lambda!170229 lambda!170121))))

(declare-fun bs!846142 () Bool)

(assert (= bs!846142 (and b!4509384 b!4508937)))

(assert (=> bs!846142 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170229 lambda!170167))))

(declare-fun bs!846143 () Bool)

(assert (= bs!846143 (and b!4509384 b!4508780)))

(assert (=> bs!846143 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170229 lambda!170156))))

(declare-fun bs!846144 () Bool)

(assert (= bs!846144 (and b!4509384 b!4508778)))

(assert (=> bs!846144 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170229 lambda!170153))))

(declare-fun bs!846145 () Bool)

(assert (= bs!846145 (and b!4509384 d!1386428)))

(assert (=> bs!846145 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687252) (= lambda!170229 lambda!170161))))

(assert (=> bs!846143 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687250) (= lambda!170229 lambda!170159))))

(assert (=> bs!846133 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170229 lambda!170185))))

(assert (=> bs!846131 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686668) (= lambda!170229 lambda!170063))))

(declare-fun bs!846146 () Bool)

(assert (= bs!846146 (and b!4509384 d!1386784)))

(assert (=> bs!846146 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687666) (= lambda!170229 lambda!170227))))

(assert (=> b!4509384 true))

(declare-fun bs!846147 () Bool)

(declare-fun b!4509386 () Bool)

(assert (= bs!846147 (and b!4509386 b!4508667)))

(declare-fun lambda!170230 () Int)

(assert (=> bs!846147 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170230 lambda!170120))))

(declare-fun bs!846148 () Bool)

(assert (= bs!846148 (and b!4509386 b!4509010)))

(assert (=> bs!846148 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170230 lambda!170184))))

(declare-fun bs!846149 () Bool)

(assert (= bs!846149 (and b!4509386 b!4508515)))

(assert (=> bs!846149 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170230 lambda!170113))))

(assert (=> bs!846149 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687114) (= lambda!170230 lambda!170114))))

(declare-fun bs!846150 () Bool)

(assert (= bs!846150 (and b!4509386 d!1386122)))

(assert (=> bs!846150 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686928) (= lambda!170230 lambda!170065))))

(declare-fun bs!846151 () Bool)

(assert (= bs!846151 (and b!4509386 b!4508939)))

(assert (=> bs!846151 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687367) (= lambda!170230 lambda!170169))))

(declare-fun bs!846152 () Bool)

(assert (= bs!846152 (and b!4509386 d!1386294)))

(assert (=> bs!846152 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687116) (= lambda!170230 lambda!170115))))

(declare-fun bs!846153 () Bool)

(assert (= bs!846153 (and b!4509386 d!1386364)))

(assert (=> bs!846153 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687175) (= lambda!170230 lambda!170124))))

(declare-fun bs!846154 () Bool)

(assert (= bs!846154 (and b!4509386 b!4509333)))

(assert (=> bs!846154 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170230 lambda!170224))))

(declare-fun bs!846155 () Bool)

(assert (= bs!846155 (and b!4509386 b!4509384)))

(assert (=> bs!846155 (= lambda!170230 lambda!170229)))

(declare-fun bs!846156 () Bool)

(assert (= bs!846156 (and b!4509386 b!4508218)))

(assert (=> bs!846156 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686926) (= lambda!170230 lambda!170064))))

(declare-fun bs!846157 () Bool)

(assert (= bs!846157 (and b!4509386 d!1386536)))

(assert (=> bs!846157 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687369) (= lambda!170230 lambda!170170))))

(declare-fun bs!846158 () Bool)

(assert (= bs!846158 (and b!4509386 b!4509012)))

(assert (=> bs!846158 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687435) (= lambda!170230 lambda!170186))))

(declare-fun bs!846159 () Bool)

(assert (= bs!846159 (and b!4509386 d!1386562)))

(assert (=> bs!846159 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686926) (= lambda!170230 lambda!170181))))

(declare-fun bs!846160 () Bool)

(assert (= bs!846160 (and b!4509386 d!1386218)))

(assert (=> bs!846160 (not (= lambda!170230 lambda!170086))))

(declare-fun bs!846161 () Bool)

(assert (= bs!846161 (and b!4509386 b!4508216)))

(assert (=> bs!846161 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686668) (= lambda!170230 lambda!170062))))

(declare-fun bs!846162 () Bool)

(assert (= bs!846162 (and b!4509386 b!4508665)))

(assert (=> bs!846162 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170230 lambda!170119))))

(declare-fun bs!846163 () Bool)

(assert (= bs!846163 (and b!4509386 d!1386594)))

(assert (=> bs!846163 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687437) (= lambda!170230 lambda!170187))))

(declare-fun bs!846164 () Bool)

(assert (= bs!846164 (and b!4509386 b!4509335)))

(assert (=> bs!846164 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170230 lambda!170225))))

(assert (=> bs!846164 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687664) (= lambda!170230 lambda!170226))))

(declare-fun bs!846165 () Bool)

(assert (= bs!846165 (and b!4509386 b!4508513)))

(assert (=> bs!846165 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170230 lambda!170112))))

(assert (=> bs!846151 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170230 lambda!170168))))

(declare-fun bs!846166 () Bool)

(assert (= bs!846166 (and b!4509386 d!1386260)))

(assert (=> bs!846166 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686668) (= lambda!170230 lambda!170106))))

(assert (=> bs!846147 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687173) (= lambda!170230 lambda!170121))))

(declare-fun bs!846167 () Bool)

(assert (= bs!846167 (and b!4509386 b!4508937)))

(assert (=> bs!846167 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170230 lambda!170167))))

(declare-fun bs!846168 () Bool)

(assert (= bs!846168 (and b!4509386 b!4508780)))

(assert (=> bs!846168 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170230 lambda!170156))))

(declare-fun bs!846169 () Bool)

(assert (= bs!846169 (and b!4509386 b!4508778)))

(assert (=> bs!846169 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170230 lambda!170153))))

(declare-fun bs!846170 () Bool)

(assert (= bs!846170 (and b!4509386 d!1386428)))

(assert (=> bs!846170 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687252) (= lambda!170230 lambda!170161))))

(assert (=> bs!846168 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687250) (= lambda!170230 lambda!170159))))

(assert (=> bs!846158 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170230 lambda!170185))))

(assert (=> bs!846156 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1686668) (= lambda!170230 lambda!170063))))

(declare-fun bs!846171 () Bool)

(assert (= bs!846171 (and b!4509386 d!1386784)))

(assert (=> bs!846171 (= (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687666) (= lambda!170230 lambda!170227))))

(assert (=> b!4509386 true))

(declare-fun lambda!170231 () Int)

(declare-fun lt!1687724 () ListMap!3541)

(assert (=> bs!846147 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170231 lambda!170120))))

(assert (=> bs!846148 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170231 lambda!170184))))

(assert (=> bs!846149 (= (= lt!1687724 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170231 lambda!170113))))

(assert (=> bs!846149 (= (= lt!1687724 lt!1687114) (= lambda!170231 lambda!170114))))

(assert (=> bs!846150 (= (= lt!1687724 lt!1686928) (= lambda!170231 lambda!170065))))

(assert (=> bs!846151 (= (= lt!1687724 lt!1687367) (= lambda!170231 lambda!170169))))

(assert (=> b!4509386 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) (= lambda!170231 lambda!170230))))

(assert (=> bs!846152 (= (= lt!1687724 lt!1687116) (= lambda!170231 lambda!170115))))

(assert (=> bs!846153 (= (= lt!1687724 lt!1687175) (= lambda!170231 lambda!170124))))

(assert (=> bs!846154 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170231 lambda!170224))))

(assert (=> bs!846155 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) (= lambda!170231 lambda!170229))))

(assert (=> bs!846156 (= (= lt!1687724 lt!1686926) (= lambda!170231 lambda!170064))))

(assert (=> bs!846157 (= (= lt!1687724 lt!1687369) (= lambda!170231 lambda!170170))))

(assert (=> bs!846158 (= (= lt!1687724 lt!1687435) (= lambda!170231 lambda!170186))))

(assert (=> bs!846159 (= (= lt!1687724 lt!1686926) (= lambda!170231 lambda!170181))))

(assert (=> bs!846160 (not (= lambda!170231 lambda!170086))))

(assert (=> bs!846161 (= (= lt!1687724 lt!1686668) (= lambda!170231 lambda!170062))))

(assert (=> bs!846162 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170231 lambda!170119))))

(assert (=> bs!846163 (= (= lt!1687724 lt!1687437) (= lambda!170231 lambda!170187))))

(assert (=> bs!846164 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170231 lambda!170225))))

(assert (=> bs!846164 (= (= lt!1687724 lt!1687664) (= lambda!170231 lambda!170226))))

(assert (=> bs!846165 (= (= lt!1687724 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170231 lambda!170112))))

(assert (=> bs!846151 (= (= lt!1687724 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170231 lambda!170168))))

(assert (=> bs!846166 (= (= lt!1687724 lt!1686668) (= lambda!170231 lambda!170106))))

(assert (=> bs!846147 (= (= lt!1687724 lt!1687173) (= lambda!170231 lambda!170121))))

(assert (=> bs!846167 (= (= lt!1687724 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170231 lambda!170167))))

(assert (=> bs!846168 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170231 lambda!170156))))

(assert (=> bs!846169 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170231 lambda!170153))))

(assert (=> bs!846170 (= (= lt!1687724 lt!1687252) (= lambda!170231 lambda!170161))))

(assert (=> bs!846168 (= (= lt!1687724 lt!1687250) (= lambda!170231 lambda!170159))))

(assert (=> bs!846158 (= (= lt!1687724 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170231 lambda!170185))))

(assert (=> bs!846156 (= (= lt!1687724 lt!1686668) (= lambda!170231 lambda!170063))))

(assert (=> bs!846171 (= (= lt!1687724 lt!1687666) (= lambda!170231 lambda!170227))))

(assert (=> b!4509386 true))

(declare-fun bs!846172 () Bool)

(declare-fun d!1386794 () Bool)

(assert (= bs!846172 (and d!1386794 b!4508667)))

(declare-fun lt!1687726 () ListMap!3541)

(declare-fun lambda!170232 () Int)

(assert (=> bs!846172 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170232 lambda!170120))))

(declare-fun bs!846173 () Bool)

(assert (= bs!846173 (and d!1386794 b!4509010)))

(assert (=> bs!846173 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170232 lambda!170184))))

(declare-fun bs!846174 () Bool)

(assert (= bs!846174 (and d!1386794 b!4508515)))

(assert (=> bs!846174 (= (= lt!1687726 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170232 lambda!170113))))

(assert (=> bs!846174 (= (= lt!1687726 lt!1687114) (= lambda!170232 lambda!170114))))

(declare-fun bs!846175 () Bool)

(assert (= bs!846175 (and d!1386794 d!1386122)))

(assert (=> bs!846175 (= (= lt!1687726 lt!1686928) (= lambda!170232 lambda!170065))))

(declare-fun bs!846176 () Bool)

(assert (= bs!846176 (and d!1386794 b!4508939)))

(assert (=> bs!846176 (= (= lt!1687726 lt!1687367) (= lambda!170232 lambda!170169))))

(declare-fun bs!846177 () Bool)

(assert (= bs!846177 (and d!1386794 b!4509386)))

(assert (=> bs!846177 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) (= lambda!170232 lambda!170230))))

(declare-fun bs!846178 () Bool)

(assert (= bs!846178 (and d!1386794 d!1386294)))

(assert (=> bs!846178 (= (= lt!1687726 lt!1687116) (= lambda!170232 lambda!170115))))

(declare-fun bs!846179 () Bool)

(assert (= bs!846179 (and d!1386794 d!1386364)))

(assert (=> bs!846179 (= (= lt!1687726 lt!1687175) (= lambda!170232 lambda!170124))))

(declare-fun bs!846180 () Bool)

(assert (= bs!846180 (and d!1386794 b!4509333)))

(assert (=> bs!846180 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170232 lambda!170224))))

(declare-fun bs!846181 () Bool)

(assert (= bs!846181 (and d!1386794 b!4509384)))

(assert (=> bs!846181 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) (= lambda!170232 lambda!170229))))

(declare-fun bs!846182 () Bool)

(assert (= bs!846182 (and d!1386794 b!4508218)))

(assert (=> bs!846182 (= (= lt!1687726 lt!1686926) (= lambda!170232 lambda!170064))))

(assert (=> bs!846177 (= (= lt!1687726 lt!1687724) (= lambda!170232 lambda!170231))))

(declare-fun bs!846183 () Bool)

(assert (= bs!846183 (and d!1386794 d!1386536)))

(assert (=> bs!846183 (= (= lt!1687726 lt!1687369) (= lambda!170232 lambda!170170))))

(declare-fun bs!846184 () Bool)

(assert (= bs!846184 (and d!1386794 b!4509012)))

(assert (=> bs!846184 (= (= lt!1687726 lt!1687435) (= lambda!170232 lambda!170186))))

(declare-fun bs!846185 () Bool)

(assert (= bs!846185 (and d!1386794 d!1386562)))

(assert (=> bs!846185 (= (= lt!1687726 lt!1686926) (= lambda!170232 lambda!170181))))

(declare-fun bs!846186 () Bool)

(assert (= bs!846186 (and d!1386794 d!1386218)))

(assert (=> bs!846186 (not (= lambda!170232 lambda!170086))))

(declare-fun bs!846187 () Bool)

(assert (= bs!846187 (and d!1386794 b!4508216)))

(assert (=> bs!846187 (= (= lt!1687726 lt!1686668) (= lambda!170232 lambda!170062))))

(declare-fun bs!846188 () Bool)

(assert (= bs!846188 (and d!1386794 b!4508665)))

(assert (=> bs!846188 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 lt!1686667)))) (= lambda!170232 lambda!170119))))

(declare-fun bs!846189 () Bool)

(assert (= bs!846189 (and d!1386794 d!1386594)))

(assert (=> bs!846189 (= (= lt!1687726 lt!1687437) (= lambda!170232 lambda!170187))))

(declare-fun bs!846190 () Bool)

(assert (= bs!846190 (and d!1386794 b!4509335)))

(assert (=> bs!846190 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 (+!1492 lt!1686666 lt!1686680))))) (= lambda!170232 lambda!170225))))

(assert (=> bs!846190 (= (= lt!1687726 lt!1687664) (= lambda!170232 lambda!170226))))

(declare-fun bs!846191 () Bool)

(assert (= bs!846191 (and d!1386794 b!4508513)))

(assert (=> bs!846191 (= (= lt!1687726 (extractMap!1192 (t!357663 (t!357663 (toList!4279 lm!1477))))) (= lambda!170232 lambda!170112))))

(assert (=> bs!846176 (= (= lt!1687726 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170232 lambda!170168))))

(declare-fun bs!846192 () Bool)

(assert (= bs!846192 (and d!1386794 d!1386260)))

(assert (=> bs!846192 (= (= lt!1687726 lt!1686668) (= lambda!170232 lambda!170106))))

(assert (=> bs!846172 (= (= lt!1687726 lt!1687173) (= lambda!170232 lambda!170121))))

(declare-fun bs!846193 () Bool)

(assert (= bs!846193 (and d!1386794 b!4508937)))

(assert (=> bs!846193 (= (= lt!1687726 (+!1493 lt!1686668 (h!56407 (_2!28784 lt!1686680)))) (= lambda!170232 lambda!170167))))

(declare-fun bs!846194 () Bool)

(assert (= bs!846194 (and d!1386794 b!4508780)))

(assert (=> bs!846194 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170232 lambda!170156))))

(declare-fun bs!846195 () Bool)

(assert (= bs!846195 (and d!1386794 b!4508778)))

(assert (=> bs!846195 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 lt!1686674)))) (= lambda!170232 lambda!170153))))

(declare-fun bs!846196 () Bool)

(assert (= bs!846196 (and d!1386794 d!1386428)))

(assert (=> bs!846196 (= (= lt!1687726 lt!1687252) (= lambda!170232 lambda!170161))))

(assert (=> bs!846194 (= (= lt!1687726 lt!1687250) (= lambda!170232 lambda!170159))))

(assert (=> bs!846184 (= (= lt!1687726 (extractMap!1192 (t!357663 (toList!4279 lm!1477)))) (= lambda!170232 lambda!170185))))

(assert (=> bs!846182 (= (= lt!1687726 lt!1686668) (= lambda!170232 lambda!170063))))

(declare-fun bs!846197 () Bool)

(assert (= bs!846197 (and d!1386794 d!1386784)))

(assert (=> bs!846197 (= (= lt!1687726 lt!1687666) (= lambda!170232 lambda!170227))))

(assert (=> d!1386794 true))

(declare-fun lt!1687714 () ListMap!3541)

(declare-fun bm!314014 () Bool)

(declare-fun call!314019 () Bool)

(declare-fun c!769218 () Bool)

(assert (=> bm!314014 (= call!314019 (forall!10208 (ite c!769218 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) (toList!4280 lt!1687714)) (ite c!769218 lambda!170229 lambda!170231)))))

(declare-fun b!4509383 () Bool)

(declare-fun e!2809194 () Bool)

(assert (=> b!4509383 (= e!2809194 (invariantList!995 (toList!4280 lt!1687726)))))

(declare-fun e!2809195 () ListMap!3541)

(assert (=> b!4509384 (= e!2809195 (extractMap!1192 (t!357663 (toList!4279 lt!1686666))))))

(declare-fun lt!1687717 () Unit!93112)

(declare-fun call!314021 () Unit!93112)

(assert (=> b!4509384 (= lt!1687717 call!314021)))

(declare-fun call!314020 () Bool)

(assert (=> b!4509384 call!314020))

(declare-fun lt!1687715 () Unit!93112)

(assert (=> b!4509384 (= lt!1687715 lt!1687717)))

(assert (=> b!4509384 call!314019))

(declare-fun lt!1687716 () Unit!93112)

(declare-fun Unit!93351 () Unit!93112)

(assert (=> b!4509384 (= lt!1687716 Unit!93351)))

(declare-fun bm!314015 () Bool)

(assert (=> bm!314015 (= call!314020 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) (ite c!769218 lambda!170229 lambda!170230)))))

(declare-fun bm!314016 () Bool)

(assert (=> bm!314016 (= call!314021 (lemmaContainsAllItsOwnKeys!315 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))))))

(declare-fun b!4509385 () Bool)

(declare-fun e!2809196 () Bool)

(assert (=> b!4509385 (= e!2809196 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) lambda!170231))))

(assert (=> b!4509386 (= e!2809195 lt!1687724)))

(assert (=> b!4509386 (= lt!1687714 (+!1493 (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686666))))))))

(assert (=> b!4509386 (= lt!1687724 (addToMapMapFromBucket!663 (t!357662 (_2!28784 (h!56408 (toList!4279 lt!1686666)))) (+!1493 (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686666)))))))))

(declare-fun lt!1687723 () Unit!93112)

(assert (=> b!4509386 (= lt!1687723 call!314021)))

(assert (=> b!4509386 call!314020))

(declare-fun lt!1687713 () Unit!93112)

(assert (=> b!4509386 (= lt!1687713 lt!1687723)))

(assert (=> b!4509386 (forall!10208 (toList!4280 lt!1687714) lambda!170231)))

(declare-fun lt!1687721 () Unit!93112)

(declare-fun Unit!93352 () Unit!93112)

(assert (=> b!4509386 (= lt!1687721 Unit!93352)))

(assert (=> b!4509386 (forall!10208 (t!357662 (_2!28784 (h!56408 (toList!4279 lt!1686666)))) lambda!170231)))

(declare-fun lt!1687722 () Unit!93112)

(declare-fun Unit!93353 () Unit!93112)

(assert (=> b!4509386 (= lt!1687722 Unit!93353)))

(declare-fun lt!1687720 () Unit!93112)

(declare-fun Unit!93354 () Unit!93112)

(assert (=> b!4509386 (= lt!1687720 Unit!93354)))

(declare-fun lt!1687728 () Unit!93112)

(assert (=> b!4509386 (= lt!1687728 (forallContained!2460 (toList!4280 lt!1687714) lambda!170231 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686666))))))))

(assert (=> b!4509386 (contains!13267 lt!1687714 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686666))))))))

(declare-fun lt!1687719 () Unit!93112)

(declare-fun Unit!93355 () Unit!93112)

(assert (=> b!4509386 (= lt!1687719 Unit!93355)))

(assert (=> b!4509386 (contains!13267 lt!1687724 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686666))))))))

(declare-fun lt!1687727 () Unit!93112)

(declare-fun Unit!93356 () Unit!93112)

(assert (=> b!4509386 (= lt!1687727 Unit!93356)))

(assert (=> b!4509386 (forall!10208 (_2!28784 (h!56408 (toList!4279 lt!1686666))) lambda!170231)))

(declare-fun lt!1687731 () Unit!93112)

(declare-fun Unit!93357 () Unit!93112)

(assert (=> b!4509386 (= lt!1687731 Unit!93357)))

(assert (=> b!4509386 call!314019))

(declare-fun lt!1687732 () Unit!93112)

(declare-fun Unit!93358 () Unit!93112)

(assert (=> b!4509386 (= lt!1687732 Unit!93358)))

(declare-fun lt!1687729 () Unit!93112)

(declare-fun Unit!93359 () Unit!93112)

(assert (=> b!4509386 (= lt!1687729 Unit!93359)))

(declare-fun lt!1687730 () Unit!93112)

(assert (=> b!4509386 (= lt!1687730 (addForallContainsKeyThenBeforeAdding!315 (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687724 (_1!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686666))))) (_2!28783 (h!56407 (_2!28784 (h!56408 (toList!4279 lt!1686666)))))))))

(assert (=> b!4509386 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) lambda!170231)))

(declare-fun lt!1687712 () Unit!93112)

(assert (=> b!4509386 (= lt!1687712 lt!1687730)))

(assert (=> b!4509386 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) lambda!170231)))

(declare-fun lt!1687725 () Unit!93112)

(declare-fun Unit!93360 () Unit!93112)

(assert (=> b!4509386 (= lt!1687725 Unit!93360)))

(declare-fun res!1875412 () Bool)

(assert (=> b!4509386 (= res!1875412 (forall!10208 (_2!28784 (h!56408 (toList!4279 lt!1686666))) lambda!170231))))

(assert (=> b!4509386 (=> (not res!1875412) (not e!2809196))))

(assert (=> b!4509386 e!2809196))

(declare-fun lt!1687718 () Unit!93112)

(declare-fun Unit!93361 () Unit!93112)

(assert (=> b!4509386 (= lt!1687718 Unit!93361)))

(assert (=> d!1386794 e!2809194))

(declare-fun res!1875413 () Bool)

(assert (=> d!1386794 (=> (not res!1875413) (not e!2809194))))

(assert (=> d!1386794 (= res!1875413 (forall!10208 (_2!28784 (h!56408 (toList!4279 lt!1686666))) lambda!170232))))

(assert (=> d!1386794 (= lt!1687726 e!2809195)))

(assert (=> d!1386794 (= c!769218 ((_ is Nil!50576) (_2!28784 (h!56408 (toList!4279 lt!1686666)))))))

(assert (=> d!1386794 (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lt!1686666))))))

(assert (=> d!1386794 (= (addToMapMapFromBucket!663 (_2!28784 (h!56408 (toList!4279 lt!1686666))) (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) lt!1687726)))

(declare-fun b!4509387 () Bool)

(declare-fun res!1875411 () Bool)

(assert (=> b!4509387 (=> (not res!1875411) (not e!2809194))))

(assert (=> b!4509387 (= res!1875411 (forall!10208 (toList!4280 (extractMap!1192 (t!357663 (toList!4279 lt!1686666)))) lambda!170232))))

(assert (= (and d!1386794 c!769218) b!4509384))

(assert (= (and d!1386794 (not c!769218)) b!4509386))

(assert (= (and b!4509386 res!1875412) b!4509385))

(assert (= (or b!4509384 b!4509386) bm!314014))

(assert (= (or b!4509384 b!4509386) bm!314015))

(assert (= (or b!4509384 b!4509386) bm!314016))

(assert (= (and d!1386794 res!1875413) b!4509387))

(assert (= (and b!4509387 res!1875411) b!4509383))

(assert (=> bm!314016 m!5245957))

(declare-fun m!5247945 () Bool)

(assert (=> bm!314016 m!5247945))

(declare-fun m!5247947 () Bool)

(assert (=> b!4509385 m!5247947))

(assert (=> b!4509386 m!5247947))

(declare-fun m!5247949 () Bool)

(assert (=> b!4509386 m!5247949))

(declare-fun m!5247951 () Bool)

(assert (=> b!4509386 m!5247951))

(assert (=> b!4509386 m!5247947))

(assert (=> b!4509386 m!5245957))

(declare-fun m!5247957 () Bool)

(assert (=> b!4509386 m!5247957))

(assert (=> b!4509386 m!5245957))

(declare-fun m!5247959 () Bool)

(assert (=> b!4509386 m!5247959))

(assert (=> b!4509386 m!5247959))

(declare-fun m!5247961 () Bool)

(assert (=> b!4509386 m!5247961))

(declare-fun m!5247963 () Bool)

(assert (=> b!4509386 m!5247963))

(assert (=> b!4509386 m!5247951))

(declare-fun m!5247967 () Bool)

(assert (=> b!4509386 m!5247967))

(declare-fun m!5247971 () Bool)

(assert (=> b!4509386 m!5247971))

(declare-fun m!5247973 () Bool)

(assert (=> b!4509386 m!5247973))

(declare-fun m!5247975 () Bool)

(assert (=> bm!314014 m!5247975))

(declare-fun m!5247977 () Bool)

(assert (=> b!4509387 m!5247977))

(declare-fun m!5247979 () Bool)

(assert (=> b!4509383 m!5247979))

(declare-fun m!5247981 () Bool)

(assert (=> d!1386794 m!5247981))

(declare-fun m!5247983 () Bool)

(assert (=> d!1386794 m!5247983))

(declare-fun m!5247985 () Bool)

(assert (=> bm!314015 m!5247985))

(assert (=> b!4508326 d!1386794))

(declare-fun bs!846200 () Bool)

(declare-fun d!1386806 () Bool)

(assert (= bs!846200 (and d!1386806 d!1386084)))

(declare-fun lambda!170233 () Int)

(assert (=> bs!846200 (= lambda!170233 lambda!169986)))

(declare-fun bs!846201 () Bool)

(assert (= bs!846201 (and d!1386806 d!1386776)))

(assert (=> bs!846201 (= lambda!170233 lambda!170223)))

(declare-fun bs!846202 () Bool)

(assert (= bs!846202 (and d!1386806 d!1386300)))

(assert (=> bs!846202 (= lambda!170233 lambda!170116)))

(declare-fun bs!846203 () Bool)

(assert (= bs!846203 (and d!1386806 d!1386224)))

(assert (=> bs!846203 (= lambda!170233 lambda!170089)))

(declare-fun bs!846204 () Bool)

(assert (= bs!846204 (and d!1386806 d!1386434)))

(assert (=> bs!846204 (= lambda!170233 lambda!170164)))

(declare-fun bs!846205 () Bool)

(assert (= bs!846205 (and d!1386806 d!1386246)))

(assert (=> bs!846205 (= lambda!170233 lambda!170097)))

(declare-fun bs!846206 () Bool)

(assert (= bs!846206 (and d!1386806 start!445428)))

(assert (=> bs!846206 (= lambda!170233 lambda!169975)))

(declare-fun bs!846207 () Bool)

(assert (= bs!846207 (and d!1386806 d!1386112)))

(assert (=> bs!846207 (= lambda!170233 lambda!169992)))

(declare-fun bs!846208 () Bool)

(assert (= bs!846208 (and d!1386806 d!1386370)))

(assert (=> bs!846208 (= lambda!170233 lambda!170129)))

(declare-fun bs!846209 () Bool)

(assert (= bs!846209 (and d!1386806 d!1386180)))

(assert (=> bs!846209 (= lambda!170233 lambda!170077)))

(declare-fun bs!846210 () Bool)

(assert (= bs!846210 (and d!1386806 d!1386196)))

(assert (=> bs!846210 (= lambda!170233 lambda!170080)))

(declare-fun bs!846211 () Bool)

(assert (= bs!846211 (and d!1386806 d!1386786)))

(assert (=> bs!846211 (= lambda!170233 lambda!170228)))

(declare-fun bs!846212 () Bool)

(assert (= bs!846212 (and d!1386806 d!1386188)))

(assert (=> bs!846212 (= lambda!170233 lambda!170078)))

(declare-fun bs!846213 () Bool)

(assert (= bs!846213 (and d!1386806 d!1386238)))

(assert (=> bs!846213 (= lambda!170233 lambda!170091)))

(declare-fun bs!846214 () Bool)

(assert (= bs!846214 (and d!1386806 d!1386192)))

(assert (=> bs!846214 (= lambda!170233 lambda!170079)))

(declare-fun bs!846215 () Bool)

(assert (= bs!846215 (and d!1386806 d!1386230)))

(assert (=> bs!846215 (= lambda!170233 lambda!170090)))

(declare-fun bs!846216 () Bool)

(assert (= bs!846216 (and d!1386806 d!1386240)))

(assert (=> bs!846216 (not (= lambda!170233 lambda!170094))))

(declare-fun bs!846217 () Bool)

(assert (= bs!846217 (and d!1386806 d!1386200)))

(assert (=> bs!846217 (= lambda!170233 lambda!170083)))

(declare-fun lt!1687753 () ListMap!3541)

(assert (=> d!1386806 (invariantList!995 (toList!4280 lt!1687753))))

(declare-fun e!2809210 () ListMap!3541)

(assert (=> d!1386806 (= lt!1687753 e!2809210)))

(declare-fun c!769227 () Bool)

(assert (=> d!1386806 (= c!769227 ((_ is Cons!50577) (t!357663 (toList!4279 lt!1686666))))))

(assert (=> d!1386806 (forall!10207 (t!357663 (toList!4279 lt!1686666)) lambda!170233)))

(assert (=> d!1386806 (= (extractMap!1192 (t!357663 (toList!4279 lt!1686666))) lt!1687753)))

(declare-fun b!4509411 () Bool)

(assert (=> b!4509411 (= e!2809210 (addToMapMapFromBucket!663 (_2!28784 (h!56408 (t!357663 (toList!4279 lt!1686666)))) (extractMap!1192 (t!357663 (t!357663 (toList!4279 lt!1686666))))))))

(declare-fun b!4509412 () Bool)

(assert (=> b!4509412 (= e!2809210 (ListMap!3542 Nil!50576))))

(assert (= (and d!1386806 c!769227) b!4509411))

(assert (= (and d!1386806 (not c!769227)) b!4509412))

(declare-fun m!5247987 () Bool)

(assert (=> d!1386806 m!5247987))

(declare-fun m!5247989 () Bool)

(assert (=> d!1386806 m!5247989))

(declare-fun m!5247991 () Bool)

(assert (=> b!4509411 m!5247991))

(assert (=> b!4509411 m!5247991))

(declare-fun m!5247993 () Bool)

(assert (=> b!4509411 m!5247993))

(assert (=> b!4508326 d!1386806))

(declare-fun d!1386808 () Bool)

(declare-fun c!769228 () Bool)

(assert (=> d!1386808 (= c!769228 ((_ is Nil!50576) (toList!4280 (extractMap!1192 (toList!4279 lt!1686674)))))))

(declare-fun e!2809211 () (InoxSet tuple2!50978))

(assert (=> d!1386808 (= (content!8290 (toList!4280 (extractMap!1192 (toList!4279 lt!1686674)))) e!2809211)))

(declare-fun b!4509413 () Bool)

(assert (=> b!4509413 (= e!2809211 ((as const (Array tuple2!50978 Bool)) false))))

(declare-fun b!4509414 () Bool)

(assert (=> b!4509414 (= e!2809211 ((_ map or) (store ((as const (Array tuple2!50978 Bool)) false) (h!56407 (toList!4280 (extractMap!1192 (toList!4279 lt!1686674)))) true) (content!8290 (t!357662 (toList!4280 (extractMap!1192 (toList!4279 lt!1686674)))))))))

(assert (= (and d!1386808 c!769228) b!4509413))

(assert (= (and d!1386808 (not c!769228)) b!4509414))

(declare-fun m!5247995 () Bool)

(assert (=> b!4509414 m!5247995))

(declare-fun m!5247997 () Bool)

(assert (=> b!4509414 m!5247997))

(assert (=> d!1386110 d!1386808))

(declare-fun d!1386810 () Bool)

(declare-fun c!769229 () Bool)

(assert (=> d!1386810 (= c!769229 ((_ is Nil!50576) (toList!4280 (addToMapMapFromBucket!663 (_2!28784 lt!1686680) lt!1686668))))))

(declare-fun e!2809212 () (InoxSet tuple2!50978))

(assert (=> d!1386810 (= (content!8290 (toList!4280 (addToMapMapFromBucket!663 (_2!28784 lt!1686680) lt!1686668))) e!2809212)))

(declare-fun b!4509415 () Bool)

(assert (=> b!4509415 (= e!2809212 ((as const (Array tuple2!50978 Bool)) false))))

(declare-fun b!4509416 () Bool)

(assert (=> b!4509416 (= e!2809212 ((_ map or) (store ((as const (Array tuple2!50978 Bool)) false) (h!56407 (toList!4280 (addToMapMapFromBucket!663 (_2!28784 lt!1686680) lt!1686668))) true) (content!8290 (t!357662 (toList!4280 (addToMapMapFromBucket!663 (_2!28784 lt!1686680) lt!1686668))))))))

(assert (= (and d!1386810 c!769229) b!4509415))

(assert (= (and d!1386810 (not c!769229)) b!4509416))

(declare-fun m!5247999 () Bool)

(assert (=> b!4509416 m!5247999))

(declare-fun m!5248001 () Bool)

(assert (=> b!4509416 m!5248001))

(assert (=> d!1386110 d!1386810))

(declare-fun d!1386812 () Bool)

(assert (=> d!1386812 (isDefined!8355 (getValueByKey!1049 (toList!4280 lt!1686664) key!3287))))

(declare-fun lt!1687754 () Unit!93112)

(assert (=> d!1386812 (= lt!1687754 (choose!29269 (toList!4280 lt!1686664) key!3287))))

(assert (=> d!1386812 (invariantList!995 (toList!4280 lt!1686664))))

(assert (=> d!1386812 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!953 (toList!4280 lt!1686664) key!3287) lt!1687754)))

(declare-fun bs!846218 () Bool)

(assert (= bs!846218 d!1386812))

(assert (=> bs!846218 m!5245963))

(assert (=> bs!846218 m!5245963))

(assert (=> bs!846218 m!5245965))

(declare-fun m!5248003 () Bool)

(assert (=> bs!846218 m!5248003))

(assert (=> bs!846218 m!5246715))

(assert (=> b!4508334 d!1386812))

(assert (=> b!4508334 d!1386330))

(assert (=> b!4508334 d!1386332))

(declare-fun d!1386814 () Bool)

(assert (=> d!1386814 (contains!13271 (getKeysList!443 (toList!4280 lt!1686664)) key!3287)))

(declare-fun lt!1687755 () Unit!93112)

(assert (=> d!1386814 (= lt!1687755 (choose!29270 (toList!4280 lt!1686664) key!3287))))

(assert (=> d!1386814 (invariantList!995 (toList!4280 lt!1686664))))

(assert (=> d!1386814 (= (lemmaInListThenGetKeysListContains!439 (toList!4280 lt!1686664) key!3287) lt!1687755)))

(declare-fun bs!846219 () Bool)

(assert (= bs!846219 d!1386814))

(assert (=> bs!846219 m!5245971))

(assert (=> bs!846219 m!5245971))

(declare-fun m!5248005 () Bool)

(assert (=> bs!846219 m!5248005))

(declare-fun m!5248007 () Bool)

(assert (=> bs!846219 m!5248007))

(assert (=> bs!846219 m!5246715))

(assert (=> b!4508334 d!1386814))

(declare-fun d!1386816 () Bool)

(declare-fun lt!1687758 () Bool)

(assert (=> d!1386816 (= lt!1687758 (select (content!8291 (toList!4279 lt!1686722)) lt!1686680))))

(declare-fun e!2809214 () Bool)

(assert (=> d!1386816 (= lt!1687758 e!2809214)))

(declare-fun res!1875421 () Bool)

(assert (=> d!1386816 (=> (not res!1875421) (not e!2809214))))

(assert (=> d!1386816 (= res!1875421 ((_ is Cons!50577) (toList!4279 lt!1686722)))))

(assert (=> d!1386816 (= (contains!13268 (toList!4279 lt!1686722) lt!1686680) lt!1687758)))

(declare-fun b!4509417 () Bool)

(declare-fun e!2809213 () Bool)

(assert (=> b!4509417 (= e!2809214 e!2809213)))

(declare-fun res!1875422 () Bool)

(assert (=> b!4509417 (=> res!1875422 e!2809213)))

(assert (=> b!4509417 (= res!1875422 (= (h!56408 (toList!4279 lt!1686722)) lt!1686680))))

(declare-fun b!4509418 () Bool)

(assert (=> b!4509418 (= e!2809213 (contains!13268 (t!357663 (toList!4279 lt!1686722)) lt!1686680))))

(assert (= (and d!1386816 res!1875421) b!4509417))

(assert (= (and b!4509417 (not res!1875422)) b!4509418))

(declare-fun m!5248009 () Bool)

(assert (=> d!1386816 m!5248009))

(declare-fun m!5248011 () Bool)

(assert (=> d!1386816 m!5248011))

(declare-fun m!5248013 () Bool)

(assert (=> b!4509418 m!5248013))

(assert (=> b!4508095 d!1386816))

(declare-fun d!1386818 () Bool)

(declare-fun res!1875423 () Bool)

(declare-fun e!2809215 () Bool)

(assert (=> d!1386818 (=> res!1875423 e!2809215)))

(assert (=> d!1386818 (= res!1875423 ((_ is Nil!50576) (toList!4280 lt!1686668)))))

(assert (=> d!1386818 (= (forall!10208 (toList!4280 lt!1686668) (ite c!768916 lambda!170062 lambda!170063)) e!2809215)))

(declare-fun b!4509419 () Bool)

(declare-fun e!2809216 () Bool)

(assert (=> b!4509419 (= e!2809215 e!2809216)))

(declare-fun res!1875424 () Bool)

(assert (=> b!4509419 (=> (not res!1875424) (not e!2809216))))

(assert (=> b!4509419 (= res!1875424 (dynLambda!21132 (ite c!768916 lambda!170062 lambda!170063) (h!56407 (toList!4280 lt!1686668))))))

(declare-fun b!4509420 () Bool)

(assert (=> b!4509420 (= e!2809216 (forall!10208 (t!357662 (toList!4280 lt!1686668)) (ite c!768916 lambda!170062 lambda!170063)))))

(assert (= (and d!1386818 (not res!1875423)) b!4509419))

(assert (= (and b!4509419 res!1875424) b!4509420))

(declare-fun b_lambda!153603 () Bool)

(assert (=> (not b_lambda!153603) (not b!4509419)))

(declare-fun m!5248015 () Bool)

(assert (=> b!4509419 m!5248015))

(declare-fun m!5248017 () Bool)

(assert (=> b!4509420 m!5248017))

(assert (=> bm!313900 d!1386818))

(declare-fun b!4509421 () Bool)

(declare-fun tp!1337718 () Bool)

(declare-fun e!2809217 () Bool)

(assert (=> b!4509421 (= e!2809217 (and tp_is_empty!27821 tp_is_empty!27823 tp!1337718))))

(assert (=> b!4508395 (= tp!1337711 e!2809217)))

(assert (= (and b!4508395 ((_ is Cons!50576) (t!357662 (t!357662 newBucket!178)))) b!4509421))

(declare-fun tp!1337719 () Bool)

(declare-fun e!2809218 () Bool)

(declare-fun b!4509422 () Bool)

(assert (=> b!4509422 (= e!2809218 (and tp_is_empty!27821 tp_is_empty!27823 tp!1337719))))

(assert (=> b!4508400 (= tp!1337716 e!2809218)))

(assert (= (and b!4508400 ((_ is Cons!50576) (_2!28784 (h!56408 (toList!4279 lm!1477))))) b!4509422))

(declare-fun b!4509423 () Bool)

(declare-fun e!2809219 () Bool)

(declare-fun tp!1337720 () Bool)

(declare-fun tp!1337721 () Bool)

(assert (=> b!4509423 (= e!2809219 (and tp!1337720 tp!1337721))))

(assert (=> b!4508400 (= tp!1337717 e!2809219)))

(assert (= (and b!4508400 ((_ is Cons!50577) (t!357663 (toList!4279 lm!1477)))) b!4509423))

(declare-fun b_lambda!153605 () Bool)

(assert (= b_lambda!153533 (or d!1386180 b_lambda!153605)))

(declare-fun bs!846238 () Bool)

(declare-fun d!1386820 () Bool)

(assert (= bs!846238 (and d!1386820 d!1386180)))

(assert (=> bs!846238 (= (dynLambda!21131 lambda!170077 (h!56408 (toList!4279 lt!1686666))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lt!1686666)))))))

(assert (=> bs!846238 m!5247983))

(assert (=> b!4508608 d!1386820))

(declare-fun b_lambda!153607 () Bool)

(assert (= b_lambda!153529 (or d!1386240 b_lambda!153607)))

(declare-fun bs!846241 () Bool)

(declare-fun d!1386822 () Bool)

(assert (= bs!846241 (and d!1386822 d!1386240)))

(assert (=> bs!846241 (= (dynLambda!21131 lambda!170094 (h!56408 (toList!4279 lm!1477))) (allKeysSameHash!990 (_2!28784 (h!56408 (toList!4279 lm!1477))) (_1!28784 (h!56408 (toList!4279 lm!1477))) hashF!1107))))

(declare-fun m!5248019 () Bool)

(assert (=> bs!846241 m!5248019))

(assert (=> b!4508563 d!1386822))

(declare-fun b_lambda!153609 () Bool)

(assert (= b_lambda!153569 (or b!4508218 b_lambda!153609)))

(declare-fun bs!846243 () Bool)

(declare-fun d!1386824 () Bool)

(assert (= bs!846243 (and d!1386824 b!4508218)))

(assert (=> bs!846243 (= (dynLambda!21132 lambda!170064 (h!56407 (_2!28784 lt!1686680))) (contains!13267 lt!1686926 (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(assert (=> bs!846243 m!5245811))

(assert (=> b!4508968 d!1386824))

(declare-fun b_lambda!153611 () Bool)

(assert (= b_lambda!153581 (or d!1386112 b_lambda!153611)))

(declare-fun bs!846245 () Bool)

(declare-fun d!1386826 () Bool)

(assert (= bs!846245 (and d!1386826 d!1386112)))

(assert (=> bs!846245 (= (dynLambda!21131 lambda!169992 (h!56408 (toList!4279 lt!1686674))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lt!1686674)))))))

(assert (=> bs!846245 m!5246783))

(assert (=> b!4509066 d!1386826))

(declare-fun b_lambda!153613 () Bool)

(assert (= b_lambda!153527 (or d!1386238 b_lambda!153613)))

(declare-fun bs!846247 () Bool)

(declare-fun d!1386828 () Bool)

(assert (= bs!846247 (and d!1386828 d!1386238)))

(assert (=> bs!846247 (= (dynLambda!21131 lambda!170091 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680)))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 (+!1492 lt!1686666 lt!1686680))))))))

(assert (=> bs!846247 m!5247879))

(assert (=> b!4508543 d!1386828))

(declare-fun b_lambda!153615 () Bool)

(assert (= b_lambda!153587 (or d!1386084 b_lambda!153615)))

(declare-fun bs!846248 () Bool)

(declare-fun d!1386830 () Bool)

(assert (= bs!846248 (and d!1386830 d!1386084)))

(assert (=> bs!846248 (= (dynLambda!21131 lambda!169986 (h!56408 (toList!4279 lt!1686666))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lt!1686666)))))))

(assert (=> bs!846248 m!5247983))

(assert (=> b!4509105 d!1386830))

(declare-fun b_lambda!153617 () Bool)

(assert (= b_lambda!153563 (or b!4508218 b_lambda!153617)))

(assert (=> d!1386520 d!1386824))

(declare-fun b_lambda!153619 () Bool)

(assert (= b_lambda!153601 (or d!1386192 b_lambda!153619)))

(declare-fun bs!846250 () Bool)

(declare-fun d!1386832 () Bool)

(assert (= bs!846250 (and d!1386832 d!1386192)))

(assert (=> bs!846250 (= (dynLambda!21131 lambda!170079 (h!56408 (toList!4279 lt!1686666))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lt!1686666)))))))

(assert (=> bs!846250 m!5247983))

(assert (=> b!4509330 d!1386832))

(declare-fun b_lambda!153621 () Bool)

(assert (= b_lambda!153575 (or d!1386196 b_lambda!153621)))

(declare-fun bs!846251 () Bool)

(declare-fun d!1386836 () Bool)

(assert (= bs!846251 (and d!1386836 d!1386196)))

(assert (=> bs!846251 (= (dynLambda!21131 lambda!170080 (h!56408 (toList!4279 lm!1477))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lm!1477)))))))

(assert (=> bs!846251 m!5246119))

(assert (=> b!4508999 d!1386836))

(declare-fun b_lambda!153623 () Bool)

(assert (= b_lambda!153541 (or b!4508218 b_lambda!153623)))

(declare-fun bs!846252 () Bool)

(declare-fun d!1386838 () Bool)

(assert (= bs!846252 (and d!1386838 b!4508218)))

(assert (=> bs!846252 (= (dynLambda!21132 lambda!170064 (h!56407 (toList!4280 lt!1686668))) (contains!13267 lt!1686926 (_1!28783 (h!56407 (toList!4280 lt!1686668)))))))

(declare-fun m!5248025 () Bool)

(assert (=> bs!846252 m!5248025))

(assert (=> b!4508694 d!1386838))

(declare-fun b_lambda!153625 () Bool)

(assert (= b_lambda!153597 (or d!1386122 b_lambda!153625)))

(declare-fun bs!846253 () Bool)

(declare-fun d!1386840 () Bool)

(assert (= bs!846253 (and d!1386840 d!1386122)))

(assert (=> bs!846253 (= (dynLambda!21132 lambda!170065 (h!56407 (toList!4280 lt!1686668))) (contains!13267 lt!1686928 (_1!28783 (h!56407 (toList!4280 lt!1686668)))))))

(declare-fun m!5248027 () Bool)

(assert (=> bs!846253 m!5248027))

(assert (=> b!4509269 d!1386840))

(declare-fun b_lambda!153627 () Bool)

(assert (= b_lambda!153523 (or d!1386188 b_lambda!153627)))

(declare-fun bs!846254 () Bool)

(declare-fun d!1386842 () Bool)

(assert (= bs!846254 (and d!1386842 d!1386188)))

(assert (=> bs!846254 (= (dynLambda!21131 lambda!170078 (h!56408 (t!357663 (toList!4279 lm!1477)))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))))))

(assert (=> bs!846254 m!5246313))

(assert (=> b!4508485 d!1386842))

(declare-fun b_lambda!153629 () Bool)

(assert (= b_lambda!153599 (or d!1386224 b_lambda!153629)))

(declare-fun bs!846255 () Bool)

(declare-fun d!1386846 () Bool)

(assert (= bs!846255 (and d!1386846 d!1386224)))

(assert (=> bs!846255 (= (dynLambda!21131 lambda!170089 (h!56408 (toList!4279 lt!1686666))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lt!1686666)))))))

(assert (=> bs!846255 m!5247983))

(assert (=> b!4509323 d!1386846))

(declare-fun b_lambda!153631 () Bool)

(assert (= b_lambda!153525 (or start!445428 b_lambda!153631)))

(declare-fun bs!846256 () Bool)

(declare-fun d!1386848 () Bool)

(assert (= bs!846256 (and d!1386848 start!445428)))

(assert (=> bs!846256 (= (dynLambda!21131 lambda!169975 (h!56408 (t!357663 (toList!4279 lm!1477)))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (t!357663 (toList!4279 lm!1477))))))))

(assert (=> bs!846256 m!5246313))

(assert (=> b!4508541 d!1386848))

(declare-fun b_lambda!153633 () Bool)

(assert (= b_lambda!153571 (or b!4508218 b_lambda!153633)))

(declare-fun bs!846258 () Bool)

(declare-fun d!1386850 () Bool)

(assert (= bs!846258 (and d!1386850 b!4508218)))

(assert (=> bs!846258 (= (dynLambda!21132 lambda!170064 (h!56407 (toList!4280 lt!1686916))) (contains!13267 lt!1686926 (_1!28783 (h!56407 (toList!4280 lt!1686916)))))))

(declare-fun m!5248035 () Bool)

(assert (=> bs!846258 m!5248035))

(assert (=> b!4508970 d!1386850))

(declare-fun b_lambda!153635 () Bool)

(assert (= b_lambda!153531 (or d!1386230 b_lambda!153635)))

(declare-fun bs!846259 () Bool)

(declare-fun d!1386854 () Bool)

(assert (= bs!846259 (and d!1386854 d!1386230)))

(assert (=> bs!846259 (= (dynLambda!21131 lambda!170090 (h!56408 (toList!4279 lt!1686667))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lt!1686667)))))))

(assert (=> bs!846259 m!5246531))

(assert (=> b!4508577 d!1386854))

(declare-fun b_lambda!153637 () Bool)

(assert (= b_lambda!153551 (or d!1386218 b_lambda!153637)))

(declare-fun bs!846260 () Bool)

(declare-fun d!1386856 () Bool)

(assert (= bs!846260 (and d!1386856 d!1386218)))

(assert (=> bs!846260 (= (dynLambda!21132 lambda!170086 (h!56407 newBucket!178)) (= (hash!2729 hashF!1107 (_1!28783 (h!56407 newBucket!178))) hash!344))))

(declare-fun m!5248037 () Bool)

(assert (=> bs!846260 m!5248037))

(assert (=> b!4508771 d!1386856))

(declare-fun b_lambda!153639 () Bool)

(assert (= b_lambda!153585 (or d!1386122 b_lambda!153639)))

(declare-fun bs!846261 () Bool)

(declare-fun d!1386858 () Bool)

(assert (= bs!846261 (and d!1386858 d!1386122)))

(assert (=> bs!846261 (= (dynLambda!21132 lambda!170065 (h!56407 (_2!28784 lt!1686680))) (contains!13267 lt!1686928 (_1!28783 (h!56407 (_2!28784 lt!1686680)))))))

(declare-fun m!5248039 () Bool)

(assert (=> bs!846261 m!5248039))

(assert (=> b!4509101 d!1386858))

(declare-fun b_lambda!153641 () Bool)

(assert (= b_lambda!153595 (or start!445428 b_lambda!153641)))

(assert (=> d!1386686 d!1386248))

(declare-fun b_lambda!153643 () Bool)

(assert (= b_lambda!153565 (or b!4508218 b_lambda!153643)))

(declare-fun bs!846262 () Bool)

(declare-fun d!1386860 () Bool)

(assert (= bs!846262 (and d!1386860 b!4508218)))

(assert (=> bs!846262 (= (dynLambda!21132 lambda!170064 (h!56407 (t!357662 (_2!28784 lt!1686680)))) (contains!13267 lt!1686926 (_1!28783 (h!56407 (t!357662 (_2!28784 lt!1686680))))))))

(declare-fun m!5248042 () Bool)

(assert (=> bs!846262 m!5248042))

(assert (=> b!4508934 d!1386860))

(declare-fun b_lambda!153645 () Bool)

(assert (= b_lambda!153535 (or d!1386246 b_lambda!153645)))

(declare-fun bs!846263 () Bool)

(declare-fun d!1386862 () Bool)

(assert (= bs!846263 (and d!1386862 d!1386246)))

(assert (=> bs!846263 (= (dynLambda!21131 lambda!170097 (h!56408 (toList!4279 lm!1477))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lm!1477)))))))

(assert (=> bs!846263 m!5246119))

(assert (=> b!4508635 d!1386862))

(declare-fun b_lambda!153647 () Bool)

(assert (= b_lambda!153583 (or d!1386200 b_lambda!153647)))

(declare-fun bs!846264 () Bool)

(declare-fun d!1386864 () Bool)

(assert (= bs!846264 (and d!1386864 d!1386200)))

(assert (=> bs!846264 (= (dynLambda!21131 lambda!170083 (h!56408 (toList!4279 lm!1477))) (noDuplicateKeys!1136 (_2!28784 (h!56408 (toList!4279 lm!1477)))))))

(assert (=> bs!846264 m!5246119))

(assert (=> b!4509090 d!1386864))

(check-sat (not b!4509262) (not b!4509013) (not b!4508928) (not b!4509136) (not d!1386806) (not d!1386594) (not b!4509361) (not bm!313948) (not b!4508995) (not b!4508926) (not b!4508893) (not b!4508932) (not b_lambda!153647) (not b_lambda!153609) (not d!1386538) (not b!4508839) (not b_lambda!153605) (not b!4508936) (not b_lambda!153617) (not d!1386294) (not d!1386316) (not d!1386466) (not b!4509109) (not b!4508496) (not d!1386346) (not b!4508837) (not b!4509149) (not b!4509416) (not b!4509315) (not d!1386626) (not b!4508810) (not d!1386384) (not b!4508971) (not d!1386280) (not b!4509414) (not b!4509325) (not b!4508617) (not b!4508872) (not d!1386312) (not b!4508515) (not b!4509152) (not b!4508564) (not b!4508579) (not b!4508924) (not b_lambda!153631) (not b!4509369) (not bs!846252) (not d!1386274) (not b!4508833) (not b!4508516) (not b!4508609) (not b!4508544) (not b_lambda!153633) (not d!1386318) (not b!4509300) (not b!4508779) (not b!4509303) (not b!4509096) (not b!4508422) (not b!4509160) (not b!4509261) (not d!1386364) (not bs!846262) (not d!1386348) (not b!4508429) (not b!4508620) (not b!4509420) (not bm!313966) (not b!4509387) (not b!4508890) (not b_lambda!153625) (not b!4508613) (not b!4509248) (not b!4508814) (not bm!313933) (not b!4509091) (not b!4508688) (not b!4509252) (not d!1386696) (not d!1386496) (not bm!313960) (not d!1386682) (not bm!313942) (not d!1386656) (not b!4508988) (not d!1386486) (not b!4509097) (not b!4509098) (not b!4509127) (not d!1386730) (not bm!313924) (not b!4509065) (not b!4508869) (not d!1386500) (not bs!846258) (not d!1386784) (not b!4508689) (not b_lambda!153629) (not b!4508559) (not b_lambda!153517) (not b!4509076) (not b!4508636) (not d!1386776) (not bs!846260) (not b_lambda!153635) (not d!1386338) (not b!4509329) (not b!4509128) (not d!1386268) (not d!1386370) (not d!1386262) (not bs!846259) (not b!4509074) (not d!1386474) (not b!4509322) (not b!4509321) (not d!1386442) (not b!4508687) (not bm!313994) (not b!4508585) (not bs!846263) (not bm!313992) (not d!1386758) (not b!4508556) (not bm!313975) (not bm!313926) (not b!4509148) (not bm!313920) (not b!4509071) (not b!4508663) (not b!4509012) (not bm!313954) (not b!4509008) (not d!1386694) (not bm!314016) (not b!4509331) (not d!1386458) (not b!4509004) (not b!4508826) (not bm!313941) (not b!4508618) (not b!4509411) (not b!4509326) (not b_lambda!153643) (not b!4508545) (not bs!846247) (not b!4508446) (not b!4508780) (not d!1386814) (not d!1386790) (not b!4508939) (not b!4509157) (not d!1386434) (not b!4509272) (not b!4509259) (not bm!313996) (not b!4508775) (not b!4508547) (not b!4508486) (not d!1386520) (not b!4509316) (not d!1386464) (not d!1386688) (not d!1386340) (not b!4509011) (not b!4508804) (not d!1386508) (not b!4508528) (not b!4509142) (not b!4508891) (not d!1386574) (not bs!846255) (not bs!846256) (not b_lambda!153639) (not b!4508424) (not d!1386260) (not b!4508406) (not d!1386470) (not b!4508575) (not d!1386562) (not d!1386752) (not b!4509067) (not b!4508497) (not b!4509158) (not b!4508925) (not d!1386376) (not b!4508536) (not b!4509295) (not b!4508477) (not b!4508423) (not b!4508534) (not b!4509423) (not d!1386786) (not d!1386252) (not b!4508881) (not b!4509099) (not d!1386516) (not b!4508578) (not b!4508510) (not b!4509006) (not b!4509155) (not b!4508440) (not b!4508447) (not b!4509418) (not d!1386344) (not bm!313923) (not d!1386658) (not b!4508772) (not b!4508766) (not bm!313998) (not bm!313964) (not b_lambda!153611) (not b_lambda!153619) (not b!4509104) (not b!4508542) (not b!4509318) (not b!4508994) (not b!4508586) (not b!4509270) (not b!4508487) (not bm!313993) (not b!4508889) (not b!4508761) (not b_lambda!153603) (not b!4508935) (not b!4508969) (not d!1386428) (not bs!846261) (not bm!314014) (not b!4509009) (not bs!846241) (not b!4508887) (not d!1386254) (not d!1386778) (not b!4509073) (not b!4508584) (not d!1386650) (not b!4508822) (not d!1386492) (not b!4508498) (not b!4508481) (not d!1386756) (not d!1386662) (not d!1386622) (not b!4508587) (not b!4508816) (not bm!313991) (not b!4508967) (not bs!846243) (not b!4508835) (not d!1386744) (not b_lambda!153615) (not bs!846238) (not b!4508938) (not b_lambda!153623) (not b!4508580) (not b_lambda!153645) (not b!4508619) (not b!4509255) (not bm!314002) (not b!4509386) (not b_lambda!153607) (not d!1386450) (not b!4509304) (not bs!846250) (not b_lambda!153621) (not d!1386490) (not b!4509144) (not b!4508546) (not d!1386770) (not b!4509153) (not b!4508931) (not d!1386638) (not b!4508845) (not b!4509421) (not b!4509150) (not b!4508494) (not d!1386792) tp_is_empty!27823 (not b!4508912) (not d!1386780) (not d!1386578) (not bm!313995) (not b!4509310) (not b!4509334) (not d!1386334) (not bs!846253) (not b!4508767) (not b!4508615) (not b!4508966) (not b!4509332) (not b!4509005) (not b_lambda!153537) (not bm!313965) (not bm!313946) (not b!4509256) (not d!1386812) (not b!4508668) (not b!4508897) (not bm!313940) (not b!4509306) (not bm!314015) (not b!4508427) (not b_lambda!153613) (not b!4508875) (not b!4508512) (not b!4508764) (not b!4508582) (not b!4509258) (not b!4508933) (not b!4508611) (not b!4508514) (not d!1386286) (not d!1386768) (not b_lambda!153637) (not bm!313947) (not b_lambda!153519) (not bm!314001) (not bm!313967) (not b!4508908) (not bs!846251) (not b!4508993) (not d!1386698) (not b!4509335) (not b!4508500) (not b!4508797) (not d!1386452) (not b!4509297) (not d!1386288) (not b!4508777) (not d!1386320) (not b!4509245) (not b!4509147) (not d!1386330) (not b!4509320) (not d!1386774) (not b!4508539) (not b!4509382) (not b!4509294) (not b!4508664) (not b!4508781) (not b_lambda!153641) (not b!4508475) (not b!4508511) (not b!4509302) (not b!4509159) (not b!4509324) (not bm!313917) (not bs!846245) (not b!4508879) (not bs!846248) (not b!4508930) (not bm!313957) (not b!4508680) (not b!4509106) (not b!4508667) (not b!4509129) (not b!4508765) (not b!4508864) (not b!4508940) (not d!1386536) (not b!4508489) (not b!4509000) (not b!4509093) (not d!1386510) (not b!4509102) (not b!4509103) (not b!4509317) (not b!4509385) tp_is_empty!27821 (not bs!846254) (not b!4509257) (not b!4509383) (not d!1386472) (not bs!846264) (not b!4509422) (not b!4508989) (not b!4508866) (not d!1386794) (not bm!314003) (not d!1386728) (not b!4508695) (not d!1386306) (not b!4509139) (not b!4508666) (not d!1386300) (not b!4509327) (not d!1386532) (not b!4508509) (not bm!313958) (not b!4508562) (not d!1386816) (not bm!313959) (not b!4508612) (not b!4508996) (not d!1386644) (not d!1386266) (not b!4508991) (not b!4509126) (not b!4508504) (not bm!313925) (not b_lambda!153627) (not b!4509122) (not b!4509336))
(check-sat)
