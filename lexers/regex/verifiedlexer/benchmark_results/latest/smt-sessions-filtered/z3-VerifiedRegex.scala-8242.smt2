; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!427304 () Bool)

(assert start!427304)

(declare-fun b!4397981 () Bool)

(declare-fun res!1813591 () Bool)

(declare-fun e!2738387 () Bool)

(assert (=> b!4397981 (=> res!1813591 e!2738387)))

(declare-datatypes ((K!10615 0))(
  ( (K!10616 (val!16763 Int)) )
))
(declare-datatypes ((V!10861 0))(
  ( (V!10862 (val!16764 Int)) )
))
(declare-datatypes ((tuple2!48846 0))(
  ( (tuple2!48847 (_1!27717 K!10615) (_2!27717 V!10861)) )
))
(declare-datatypes ((List!49382 0))(
  ( (Nil!49258) (Cons!49258 (h!54879 tuple2!48846) (t!356316 List!49382)) )
))
(declare-fun newBucket!200 () List!49382)

(declare-fun noDuplicateKeys!619 (List!49382) Bool)

(assert (=> b!4397981 (= res!1813591 (not (noDuplicateKeys!619 newBucket!200)))))

(declare-fun b!4397982 () Bool)

(declare-fun e!2738392 () Bool)

(assert (=> b!4397982 (= e!2738387 e!2738392)))

(declare-fun res!1813584 () Bool)

(assert (=> b!4397982 (=> res!1813584 e!2738392)))

(declare-datatypes ((tuple2!48848 0))(
  ( (tuple2!48849 (_1!27718 (_ BitVec 64)) (_2!27718 List!49382)) )
))
(declare-datatypes ((List!49383 0))(
  ( (Nil!49259) (Cons!49259 (h!54880 tuple2!48848) (t!356317 List!49383)) )
))
(declare-datatypes ((ListLongMap!1871 0))(
  ( (ListLongMap!1872 (toList!3221 List!49383)) )
))
(declare-fun lm!1707 () ListLongMap!1871)

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4397982 (= res!1813584 (or (and ((_ is Cons!49259) (toList!3221 lm!1707)) (= (_1!27718 (h!54880 (toList!3221 lm!1707))) hash!377)) (not ((_ is Cons!49259) (toList!3221 lm!1707))) (= (_1!27718 (h!54880 (toList!3221 lm!1707))) hash!377)))))

(declare-fun e!2738388 () Bool)

(assert (=> b!4397982 e!2738388))

(declare-fun res!1813589 () Bool)

(assert (=> b!4397982 (=> (not res!1813589) (not e!2738388))))

(declare-fun lt!1603989 () ListLongMap!1871)

(declare-fun lambda!148325 () Int)

(declare-fun forall!9348 (List!49383 Int) Bool)

(assert (=> b!4397982 (= res!1813589 (forall!9348 (toList!3221 lt!1603989) lambda!148325))))

(declare-fun +!856 (ListLongMap!1871 tuple2!48848) ListLongMap!1871)

(assert (=> b!4397982 (= lt!1603989 (+!856 lm!1707 (tuple2!48849 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!78519 0))(
  ( (Unit!78520) )
))
(declare-fun lt!1603986 () Unit!78519)

(declare-fun addValidProp!265 (ListLongMap!1871 Int (_ BitVec 64) List!49382) Unit!78519)

(assert (=> b!4397982 (= lt!1603986 (addValidProp!265 lm!1707 lambda!148325 hash!377 newBucket!200))))

(assert (=> b!4397982 (forall!9348 (toList!3221 lm!1707) lambda!148325)))

(declare-fun b!4397983 () Bool)

(declare-fun e!2738390 () Bool)

(assert (=> b!4397983 (= e!2738392 e!2738390)))

(declare-fun res!1813586 () Bool)

(assert (=> b!4397983 (=> res!1813586 e!2738390)))

(declare-fun lt!1603994 () ListLongMap!1871)

(assert (=> b!4397983 (= res!1813586 (not (forall!9348 (toList!3221 lt!1603994) lambda!148325)))))

(declare-fun key!3918 () K!10615)

(declare-datatypes ((ListMap!2465 0))(
  ( (ListMap!2466 (toList!3222 List!49382)) )
))
(declare-fun contains!11639 (ListMap!2465 K!10615) Bool)

(declare-fun extractMap!678 (List!49383) ListMap!2465)

(assert (=> b!4397983 (contains!11639 (extractMap!678 (toList!3221 lt!1603994)) key!3918)))

(declare-fun tail!7101 (ListLongMap!1871) ListLongMap!1871)

(assert (=> b!4397983 (= lt!1603994 (tail!7101 lm!1707))))

(declare-fun lt!1603987 () ListMap!2465)

(assert (=> b!4397983 (contains!11639 lt!1603987 key!3918)))

(declare-fun lt!1603985 () Unit!78519)

(declare-fun newValue!99 () V!10861)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!78 (List!49382 K!10615 V!10861 ListMap!2465) Unit!78519)

(assert (=> b!4397983 (= lt!1603985 (lemmaAddToMapContainsAndNotInListThenInAcc!78 (_2!27718 (h!54880 (toList!3221 lm!1707))) key!3918 newValue!99 lt!1603987))))

(assert (=> b!4397983 (= lt!1603987 (extractMap!678 (t!356317 (toList!3221 lm!1707))))))

(declare-fun e!2738386 () Bool)

(assert (=> b!4397983 e!2738386))

(declare-fun res!1813595 () Bool)

(assert (=> b!4397983 (=> (not res!1813595) (not e!2738386))))

(declare-fun containsKey!917 (List!49382 K!10615) Bool)

(declare-fun apply!11471 (ListLongMap!1871 (_ BitVec 64)) List!49382)

(assert (=> b!4397983 (= res!1813595 (not (containsKey!917 (apply!11471 lm!1707 (_1!27718 (h!54880 (toList!3221 lm!1707)))) key!3918)))))

(declare-datatypes ((Hashable!5011 0))(
  ( (HashableExt!5010 (__x!30714 Int)) )
))
(declare-fun hashF!1247 () Hashable!5011)

(declare-fun lt!1603993 () Unit!78519)

(declare-fun lemmaNotSameHashThenCannotContainKey!90 (ListLongMap!1871 K!10615 (_ BitVec 64) Hashable!5011) Unit!78519)

(assert (=> b!4397983 (= lt!1603993 (lemmaNotSameHashThenCannotContainKey!90 lm!1707 key!3918 (_1!27718 (h!54880 (toList!3221 lm!1707))) hashF!1247))))

(declare-fun b!4397984 () Bool)

(assert (=> b!4397984 (= e!2738386 (not (containsKey!917 (_2!27718 (h!54880 (toList!3221 lm!1707))) key!3918)))))

(declare-fun b!4397985 () Bool)

(declare-fun res!1813590 () Bool)

(declare-fun e!2738391 () Bool)

(assert (=> b!4397985 (=> (not res!1813590) (not e!2738391))))

(declare-fun allKeysSameHash!577 (List!49382 (_ BitVec 64) Hashable!5011) Bool)

(assert (=> b!4397985 (= res!1813590 (allKeysSameHash!577 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4397986 () Bool)

(declare-fun res!1813588 () Bool)

(assert (=> b!4397986 (=> (not res!1813588) (not e!2738391))))

(declare-fun contains!11640 (ListLongMap!1871 (_ BitVec 64)) Bool)

(assert (=> b!4397986 (= res!1813588 (contains!11640 lm!1707 hash!377))))

(declare-fun b!4397987 () Bool)

(assert (=> b!4397987 (= e!2738391 (not e!2738387))))

(declare-fun res!1813587 () Bool)

(assert (=> b!4397987 (=> res!1813587 e!2738387)))

(declare-fun lt!1603988 () List!49382)

(declare-fun removePairForKey!587 (List!49382 K!10615) List!49382)

(assert (=> b!4397987 (= res!1813587 (not (= newBucket!200 (Cons!49258 (tuple2!48847 key!3918 newValue!99) (removePairForKey!587 lt!1603988 key!3918)))))))

(declare-fun lt!1603991 () tuple2!48848)

(declare-fun lt!1603990 () Unit!78519)

(declare-fun forallContained!1983 (List!49383 Int tuple2!48848) Unit!78519)

(assert (=> b!4397987 (= lt!1603990 (forallContained!1983 (toList!3221 lm!1707) lambda!148325 lt!1603991))))

(declare-fun contains!11641 (List!49383 tuple2!48848) Bool)

(assert (=> b!4397987 (contains!11641 (toList!3221 lm!1707) lt!1603991)))

(assert (=> b!4397987 (= lt!1603991 (tuple2!48849 hash!377 lt!1603988))))

(declare-fun lt!1603992 () Unit!78519)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!464 (List!49383 (_ BitVec 64) List!49382) Unit!78519)

(assert (=> b!4397987 (= lt!1603992 (lemmaGetValueByKeyImpliesContainsTuple!464 (toList!3221 lm!1707) hash!377 lt!1603988))))

(assert (=> b!4397987 (= lt!1603988 (apply!11471 lm!1707 hash!377))))

(declare-fun tp_is_empty!25713 () Bool)

(declare-fun tp_is_empty!25715 () Bool)

(declare-fun b!4397988 () Bool)

(declare-fun e!2738389 () Bool)

(declare-fun tp!1331712 () Bool)

(assert (=> b!4397988 (= e!2738389 (and tp_is_empty!25713 tp_is_empty!25715 tp!1331712))))

(declare-fun b!4397989 () Bool)

(assert (=> b!4397989 (= e!2738388 (forall!9348 (toList!3221 lt!1603989) lambda!148325))))

(declare-fun res!1813594 () Bool)

(assert (=> start!427304 (=> (not res!1813594) (not e!2738391))))

(assert (=> start!427304 (= res!1813594 (forall!9348 (toList!3221 lm!1707) lambda!148325))))

(assert (=> start!427304 e!2738391))

(assert (=> start!427304 e!2738389))

(assert (=> start!427304 true))

(declare-fun e!2738385 () Bool)

(declare-fun inv!64801 (ListLongMap!1871) Bool)

(assert (=> start!427304 (and (inv!64801 lm!1707) e!2738385)))

(assert (=> start!427304 tp_is_empty!25713))

(assert (=> start!427304 tp_is_empty!25715))

(declare-fun b!4397990 () Bool)

(declare-fun res!1813593 () Bool)

(assert (=> b!4397990 (=> (not res!1813593) (not e!2738391))))

(declare-fun allKeysSameHashInMap!723 (ListLongMap!1871 Hashable!5011) Bool)

(assert (=> b!4397990 (= res!1813593 (allKeysSameHashInMap!723 lm!1707 hashF!1247))))

(declare-fun b!4397991 () Bool)

(assert (=> b!4397991 (= e!2738390 true)))

(declare-fun lt!1603984 () Bool)

(assert (=> b!4397991 (= lt!1603984 (allKeysSameHashInMap!723 lt!1603994 hashF!1247))))

(declare-fun b!4397992 () Bool)

(declare-fun res!1813585 () Bool)

(assert (=> b!4397992 (=> (not res!1813585) (not e!2738391))))

(assert (=> b!4397992 (= res!1813585 (contains!11639 (extractMap!678 (toList!3221 lm!1707)) key!3918))))

(declare-fun b!4397993 () Bool)

(declare-fun res!1813592 () Bool)

(assert (=> b!4397993 (=> (not res!1813592) (not e!2738391))))

(declare-fun hash!1847 (Hashable!5011 K!10615) (_ BitVec 64))

(assert (=> b!4397993 (= res!1813592 (= (hash!1847 hashF!1247 key!3918) hash!377))))

(declare-fun b!4397994 () Bool)

(declare-fun tp!1331711 () Bool)

(assert (=> b!4397994 (= e!2738385 tp!1331711)))

(assert (= (and start!427304 res!1813594) b!4397990))

(assert (= (and b!4397990 res!1813593) b!4397993))

(assert (= (and b!4397993 res!1813592) b!4397985))

(assert (= (and b!4397985 res!1813590) b!4397992))

(assert (= (and b!4397992 res!1813585) b!4397986))

(assert (= (and b!4397986 res!1813588) b!4397987))

(assert (= (and b!4397987 (not res!1813587)) b!4397981))

(assert (= (and b!4397981 (not res!1813591)) b!4397982))

(assert (= (and b!4397982 res!1813589) b!4397989))

(assert (= (and b!4397982 (not res!1813584)) b!4397983))

(assert (= (and b!4397983 res!1813595) b!4397984))

(assert (= (and b!4397983 (not res!1813586)) b!4397991))

(assert (= (and start!427304 ((_ is Cons!49258) newBucket!200)) b!4397988))

(assert (= start!427304 b!4397994))

(declare-fun m!5059353 () Bool)

(assert (=> b!4397990 m!5059353))

(declare-fun m!5059355 () Bool)

(assert (=> b!4397991 m!5059355))

(declare-fun m!5059357 () Bool)

(assert (=> b!4397984 m!5059357))

(declare-fun m!5059359 () Bool)

(assert (=> b!4397983 m!5059359))

(declare-fun m!5059361 () Bool)

(assert (=> b!4397983 m!5059361))

(declare-fun m!5059363 () Bool)

(assert (=> b!4397983 m!5059363))

(declare-fun m!5059365 () Bool)

(assert (=> b!4397983 m!5059365))

(declare-fun m!5059367 () Bool)

(assert (=> b!4397983 m!5059367))

(declare-fun m!5059369 () Bool)

(assert (=> b!4397983 m!5059369))

(declare-fun m!5059371 () Bool)

(assert (=> b!4397983 m!5059371))

(declare-fun m!5059373 () Bool)

(assert (=> b!4397983 m!5059373))

(assert (=> b!4397983 m!5059373))

(declare-fun m!5059375 () Bool)

(assert (=> b!4397983 m!5059375))

(assert (=> b!4397983 m!5059359))

(declare-fun m!5059377 () Bool)

(assert (=> b!4397983 m!5059377))

(declare-fun m!5059379 () Bool)

(assert (=> b!4397989 m!5059379))

(declare-fun m!5059381 () Bool)

(assert (=> b!4397987 m!5059381))

(declare-fun m!5059383 () Bool)

(assert (=> b!4397987 m!5059383))

(declare-fun m!5059385 () Bool)

(assert (=> b!4397987 m!5059385))

(declare-fun m!5059387 () Bool)

(assert (=> b!4397987 m!5059387))

(declare-fun m!5059389 () Bool)

(assert (=> b!4397987 m!5059389))

(declare-fun m!5059391 () Bool)

(assert (=> b!4397985 m!5059391))

(declare-fun m!5059393 () Bool)

(assert (=> b!4397986 m!5059393))

(declare-fun m!5059395 () Bool)

(assert (=> b!4397992 m!5059395))

(assert (=> b!4397992 m!5059395))

(declare-fun m!5059397 () Bool)

(assert (=> b!4397992 m!5059397))

(declare-fun m!5059399 () Bool)

(assert (=> start!427304 m!5059399))

(declare-fun m!5059401 () Bool)

(assert (=> start!427304 m!5059401))

(declare-fun m!5059403 () Bool)

(assert (=> b!4397993 m!5059403))

(assert (=> b!4397982 m!5059379))

(declare-fun m!5059405 () Bool)

(assert (=> b!4397982 m!5059405))

(declare-fun m!5059407 () Bool)

(assert (=> b!4397982 m!5059407))

(assert (=> b!4397982 m!5059399))

(declare-fun m!5059409 () Bool)

(assert (=> b!4397981 m!5059409))

(check-sat (not b!4397983) (not b!4397985) tp_is_empty!25715 (not b!4397988) (not start!427304) (not b!4397994) (not b!4397993) (not b!4397992) tp_is_empty!25713 (not b!4397991) (not b!4397981) (not b!4397986) (not b!4397982) (not b!4397990) (not b!4397989) (not b!4397987) (not b!4397984))
(check-sat)
