; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!460402 () Bool)

(assert start!460402)

(declare-fun b!4606445 () Bool)

(declare-fun res!1927786 () Bool)

(declare-fun e!2873362 () Bool)

(assert (=> b!4606445 (=> res!1927786 e!2873362)))

(declare-datatypes ((K!12538 0))(
  ( (K!12539 (val!18301 Int)) )
))
(declare-datatypes ((V!12784 0))(
  ( (V!12785 (val!18302 Int)) )
))
(declare-datatypes ((tuple2!51870 0))(
  ( (tuple2!51871 (_1!29229 K!12538) (_2!29229 V!12784)) )
))
(declare-datatypes ((List!51295 0))(
  ( (Nil!51171) (Cons!51171 (h!57155 tuple2!51870) (t!358289 List!51295)) )
))
(declare-fun lt!1763757 () List!51295)

(declare-datatypes ((tuple2!51872 0))(
  ( (tuple2!51873 (_1!29230 (_ BitVec 64)) (_2!29230 List!51295)) )
))
(declare-datatypes ((List!51296 0))(
  ( (Nil!51172) (Cons!51172 (h!57156 tuple2!51872) (t!358290 List!51296)) )
))
(declare-datatypes ((ListLongMap!3357 0))(
  ( (ListLongMap!3358 (toList!4725 List!51296)) )
))
(declare-fun lt!1763763 () ListLongMap!3357)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!12092 (ListLongMap!3357 (_ BitVec 64)) List!51295)

(assert (=> b!4606445 (= res!1927786 (not (= (apply!12092 lt!1763763 hash!344) lt!1763757)))))

(declare-fun b!4606446 () Bool)

(declare-datatypes ((Unit!109003 0))(
  ( (Unit!109004) )
))
(declare-fun e!2873363 () Unit!109003)

(declare-fun Unit!109005 () Unit!109003)

(assert (=> b!4606446 (= e!2873363 Unit!109005)))

(declare-fun b!4606447 () Bool)

(declare-fun res!1927787 () Bool)

(declare-fun e!2873356 () Bool)

(assert (=> b!4606447 (=> res!1927787 e!2873356)))

(declare-fun newBucket!178 () List!51295)

(declare-fun noDuplicateKeys!1355 (List!51295) Bool)

(assert (=> b!4606447 (= res!1927787 (not (noDuplicateKeys!1355 newBucket!178)))))

(declare-fun res!1927783 () Bool)

(declare-fun e!2873361 () Bool)

(assert (=> start!460402 (=> (not res!1927783) (not e!2873361))))

(declare-fun lm!1477 () ListLongMap!3357)

(declare-fun lambda!187609 () Int)

(declare-fun forall!10666 (List!51296 Int) Bool)

(assert (=> start!460402 (= res!1927783 (forall!10666 (toList!4725 lm!1477) lambda!187609))))

(assert (=> start!460402 e!2873361))

(assert (=> start!460402 true))

(declare-fun e!2873357 () Bool)

(declare-fun inv!66723 (ListLongMap!3357) Bool)

(assert (=> start!460402 (and (inv!66723 lm!1477) e!2873357)))

(declare-fun tp_is_empty!28713 () Bool)

(assert (=> start!460402 tp_is_empty!28713))

(declare-fun e!2873360 () Bool)

(assert (=> start!460402 e!2873360))

(declare-fun b!4606448 () Bool)

(declare-fun tp!1340867 () Bool)

(assert (=> b!4606448 (= e!2873357 tp!1340867)))

(declare-fun b!4606449 () Bool)

(declare-fun e!2873355 () Bool)

(declare-fun e!2873359 () Bool)

(assert (=> b!4606449 (= e!2873355 e!2873359)))

(declare-fun res!1927785 () Bool)

(assert (=> b!4606449 (=> res!1927785 e!2873359)))

(declare-fun key!3287 () K!12538)

(declare-fun containsKeyBiggerList!295 (List!51296 K!12538) Bool)

(assert (=> b!4606449 (= res!1927785 (not (containsKeyBiggerList!295 (t!358290 (toList!4725 lm!1477)) key!3287)))))

(assert (=> b!4606449 (containsKeyBiggerList!295 (toList!4725 lt!1763763) key!3287)))

(declare-datatypes ((Hashable!5754 0))(
  ( (HashableExt!5753 (__x!31457 Int)) )
))
(declare-fun hashF!1107 () Hashable!5754)

(declare-fun lt!1763756 () Unit!109003)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!165 (ListLongMap!3357 K!12538 Hashable!5754) Unit!109003)

(assert (=> b!4606449 (= lt!1763756 (lemmaInLongMapThenContainsKeyBiggerList!165 lt!1763763 key!3287 hashF!1107))))

(declare-fun b!4606450 () Bool)

(declare-fun tp!1340866 () Bool)

(declare-fun tp_is_empty!28715 () Bool)

(assert (=> b!4606450 (= e!2873360 (and tp_is_empty!28713 tp_is_empty!28715 tp!1340866))))

(declare-fun b!4606451 () Bool)

(assert (=> b!4606451 (= e!2873362 e!2873355)))

(declare-fun res!1927791 () Bool)

(assert (=> b!4606451 (=> res!1927791 e!2873355)))

(declare-fun lt!1763755 () Bool)

(assert (=> b!4606451 (= res!1927791 lt!1763755)))

(declare-fun lt!1763753 () Unit!109003)

(assert (=> b!4606451 (= lt!1763753 e!2873363)))

(declare-fun c!789105 () Bool)

(assert (=> b!4606451 (= c!789105 lt!1763755)))

(declare-fun containsKey!2230 (List!51295 K!12538) Bool)

(assert (=> b!4606451 (= lt!1763755 (not (containsKey!2230 lt!1763757 key!3287)))))

(declare-fun b!4606452 () Bool)

(declare-fun res!1927794 () Bool)

(assert (=> b!4606452 (=> res!1927794 e!2873362)))

(declare-fun lt!1763758 () tuple2!51872)

(declare-fun contains!14163 (List!51296 tuple2!51872) Bool)

(assert (=> b!4606452 (= res!1927794 (not (contains!14163 (t!358290 (toList!4725 lm!1477)) lt!1763758)))))

(declare-fun b!4606453 () Bool)

(declare-fun res!1927788 () Bool)

(assert (=> b!4606453 (=> (not res!1927788) (not e!2873361))))

(declare-datatypes ((ListMap!3987 0))(
  ( (ListMap!3988 (toList!4726 List!51295)) )
))
(declare-fun contains!14164 (ListMap!3987 K!12538) Bool)

(declare-fun extractMap!1415 (List!51296) ListMap!3987)

(assert (=> b!4606453 (= res!1927788 (contains!14164 (extractMap!1415 (toList!4725 lm!1477)) key!3287))))

(declare-fun b!4606454 () Bool)

(declare-fun res!1927795 () Bool)

(assert (=> b!4606454 (=> res!1927795 e!2873359)))

(assert (=> b!4606454 (= res!1927795 (not (forall!10666 (toList!4725 lt!1763763) lambda!187609)))))

(declare-fun b!4606455 () Bool)

(assert (=> b!4606455 (= e!2873356 e!2873362)))

(declare-fun res!1927789 () Bool)

(assert (=> b!4606455 (=> res!1927789 e!2873362)))

(declare-fun contains!14165 (ListLongMap!3357 (_ BitVec 64)) Bool)

(assert (=> b!4606455 (= res!1927789 (not (contains!14165 lt!1763763 hash!344)))))

(declare-fun tail!8007 (ListLongMap!3357) ListLongMap!3357)

(assert (=> b!4606455 (= lt!1763763 (tail!8007 lm!1477))))

(declare-fun b!4606456 () Bool)

(declare-fun res!1927793 () Bool)

(declare-fun e!2873358 () Bool)

(assert (=> b!4606456 (=> (not res!1927793) (not e!2873358))))

(declare-fun allKeysSameHash!1211 (List!51295 (_ BitVec 64) Hashable!5754) Bool)

(assert (=> b!4606456 (= res!1927793 (allKeysSameHash!1211 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4606457 () Bool)

(declare-fun res!1927796 () Bool)

(assert (=> b!4606457 (=> res!1927796 e!2873356)))

(assert (=> b!4606457 (= res!1927796 (or (is-Nil!51172 (toList!4725 lm!1477)) (= (_1!29230 (h!57156 (toList!4725 lm!1477))) hash!344)))))

(declare-fun b!4606458 () Bool)

(assert (=> b!4606458 (= e!2873361 e!2873358)))

(declare-fun res!1927784 () Bool)

(assert (=> b!4606458 (=> (not res!1927784) (not e!2873358))))

(declare-fun lt!1763761 () (_ BitVec 64))

(assert (=> b!4606458 (= res!1927784 (= lt!1763761 hash!344))))

(declare-fun hash!3285 (Hashable!5754 K!12538) (_ BitVec 64))

(assert (=> b!4606458 (= lt!1763761 (hash!3285 hashF!1107 key!3287))))

(declare-fun b!4606459 () Bool)

(declare-fun res!1927792 () Bool)

(assert (=> b!4606459 (=> (not res!1927792) (not e!2873361))))

(declare-fun allKeysSameHashInMap!1466 (ListLongMap!3357 Hashable!5754) Bool)

(assert (=> b!4606459 (= res!1927792 (allKeysSameHashInMap!1466 lm!1477 hashF!1107))))

(declare-fun b!4606460 () Bool)

(declare-fun Unit!109006 () Unit!109003)

(assert (=> b!4606460 (= e!2873363 Unit!109006)))

(declare-fun lt!1763762 () Unit!109003)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!319 (ListLongMap!3357 K!12538 Hashable!5754) Unit!109003)

(assert (=> b!4606460 (= lt!1763762 (lemmaNotInItsHashBucketThenNotInMap!319 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4606460 false))

(declare-fun b!4606461 () Bool)

(assert (=> b!4606461 (= e!2873359 true)))

(declare-fun lt!1763754 () Bool)

(assert (=> b!4606461 (= lt!1763754 (allKeysSameHashInMap!1466 lt!1763763 hashF!1107))))

(declare-fun b!4606462 () Bool)

(assert (=> b!4606462 (= e!2873358 (not e!2873356))))

(declare-fun res!1927790 () Bool)

(assert (=> b!4606462 (=> res!1927790 e!2873356)))

(declare-fun removePairForKey!980 (List!51295 K!12538) List!51295)

(assert (=> b!4606462 (= res!1927790 (not (= newBucket!178 (removePairForKey!980 lt!1763757 key!3287))))))

(declare-fun lt!1763752 () Unit!109003)

(declare-fun forallContained!2912 (List!51296 Int tuple2!51872) Unit!109003)

(assert (=> b!4606462 (= lt!1763752 (forallContained!2912 (toList!4725 lm!1477) lambda!187609 lt!1763758))))

(assert (=> b!4606462 (contains!14163 (toList!4725 lm!1477) lt!1763758)))

(assert (=> b!4606462 (= lt!1763758 (tuple2!51873 hash!344 lt!1763757))))

(declare-fun lt!1763759 () Unit!109003)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!865 (List!51296 (_ BitVec 64) List!51295) Unit!109003)

(assert (=> b!4606462 (= lt!1763759 (lemmaGetValueByKeyImpliesContainsTuple!865 (toList!4725 lm!1477) hash!344 lt!1763757))))

(assert (=> b!4606462 (= lt!1763757 (apply!12092 lm!1477 hash!344))))

(assert (=> b!4606462 (contains!14165 lm!1477 lt!1763761)))

(declare-fun lt!1763760 () Unit!109003)

(declare-fun lemmaInGenMapThenLongMapContainsHash!429 (ListLongMap!3357 K!12538 Hashable!5754) Unit!109003)

(assert (=> b!4606462 (= lt!1763760 (lemmaInGenMapThenLongMapContainsHash!429 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!460402 res!1927783) b!4606459))

(assert (= (and b!4606459 res!1927792) b!4606453))

(assert (= (and b!4606453 res!1927788) b!4606458))

(assert (= (and b!4606458 res!1927784) b!4606456))

(assert (= (and b!4606456 res!1927793) b!4606462))

(assert (= (and b!4606462 (not res!1927790)) b!4606447))

(assert (= (and b!4606447 (not res!1927787)) b!4606457))

(assert (= (and b!4606457 (not res!1927796)) b!4606455))

(assert (= (and b!4606455 (not res!1927789)) b!4606445))

(assert (= (and b!4606445 (not res!1927786)) b!4606452))

(assert (= (and b!4606452 (not res!1927794)) b!4606451))

(assert (= (and b!4606451 c!789105) b!4606460))

(assert (= (and b!4606451 (not c!789105)) b!4606446))

(assert (= (and b!4606451 (not res!1927791)) b!4606449))

(assert (= (and b!4606449 (not res!1927785)) b!4606454))

(assert (= (and b!4606454 (not res!1927795)) b!4606461))

(assert (= start!460402 b!4606448))

(assert (= (and start!460402 (is-Cons!51171 newBucket!178)) b!4606450))

(declare-fun m!5435893 () Bool)

(assert (=> start!460402 m!5435893))

(declare-fun m!5435895 () Bool)

(assert (=> start!460402 m!5435895))

(declare-fun m!5435897 () Bool)

(assert (=> b!4606459 m!5435897))

(declare-fun m!5435899 () Bool)

(assert (=> b!4606451 m!5435899))

(declare-fun m!5435901 () Bool)

(assert (=> b!4606452 m!5435901))

(declare-fun m!5435903 () Bool)

(assert (=> b!4606453 m!5435903))

(assert (=> b!4606453 m!5435903))

(declare-fun m!5435905 () Bool)

(assert (=> b!4606453 m!5435905))

(declare-fun m!5435907 () Bool)

(assert (=> b!4606449 m!5435907))

(declare-fun m!5435909 () Bool)

(assert (=> b!4606449 m!5435909))

(declare-fun m!5435911 () Bool)

(assert (=> b!4606449 m!5435911))

(declare-fun m!5435913 () Bool)

(assert (=> b!4606456 m!5435913))

(declare-fun m!5435915 () Bool)

(assert (=> b!4606458 m!5435915))

(declare-fun m!5435917 () Bool)

(assert (=> b!4606445 m!5435917))

(declare-fun m!5435919 () Bool)

(assert (=> b!4606462 m!5435919))

(declare-fun m!5435921 () Bool)

(assert (=> b!4606462 m!5435921))

(declare-fun m!5435923 () Bool)

(assert (=> b!4606462 m!5435923))

(declare-fun m!5435925 () Bool)

(assert (=> b!4606462 m!5435925))

(declare-fun m!5435927 () Bool)

(assert (=> b!4606462 m!5435927))

(declare-fun m!5435929 () Bool)

(assert (=> b!4606462 m!5435929))

(declare-fun m!5435931 () Bool)

(assert (=> b!4606462 m!5435931))

(declare-fun m!5435933 () Bool)

(assert (=> b!4606455 m!5435933))

(declare-fun m!5435935 () Bool)

(assert (=> b!4606455 m!5435935))

(declare-fun m!5435937 () Bool)

(assert (=> b!4606460 m!5435937))

(declare-fun m!5435939 () Bool)

(assert (=> b!4606454 m!5435939))

(declare-fun m!5435941 () Bool)

(assert (=> b!4606461 m!5435941))

(declare-fun m!5435943 () Bool)

(assert (=> b!4606447 m!5435943))

(push 1)

(assert (not b!4606458))

(assert (not start!460402))

(assert (not b!4606449))

(assert (not b!4606450))

(assert (not b!4606460))

(assert tp_is_empty!28713)

(assert tp_is_empty!28715)

(assert (not b!4606459))

(assert (not b!4606445))

(assert (not b!4606455))

(assert (not b!4606462))

(assert (not b!4606456))

(assert (not b!4606454))

(assert (not b!4606451))

(assert (not b!4606448))

(assert (not b!4606461))

(assert (not b!4606453))

(assert (not b!4606452))

(assert (not b!4606447))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

