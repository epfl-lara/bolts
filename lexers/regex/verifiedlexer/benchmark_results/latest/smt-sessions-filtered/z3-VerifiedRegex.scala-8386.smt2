; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!436580 () Bool)

(assert start!436580)

(declare-fun b!4455342 () Bool)

(declare-fun e!2774379 () Bool)

(declare-fun tp!1334863 () Bool)

(assert (=> b!4455342 (= e!2774379 tp!1334863)))

(declare-fun b!4455343 () Bool)

(declare-fun e!2774378 () Bool)

(assert (=> b!4455343 (= e!2774378 true)))

(declare-fun lt!1646904 () Bool)

(declare-datatypes ((V!11581 0))(
  ( (V!11582 (val!17339 Int)) )
))
(declare-datatypes ((K!11335 0))(
  ( (K!11336 (val!17340 Int)) )
))
(declare-datatypes ((tuple2!49998 0))(
  ( (tuple2!49999 (_1!28293 K!11335) (_2!28293 V!11581)) )
))
(declare-datatypes ((List!50085 0))(
  ( (Nil!49961) (Cons!49961 (h!55706 tuple2!49998) (t!357035 List!50085)) )
))
(declare-datatypes ((tuple2!50000 0))(
  ( (tuple2!50001 (_1!28294 (_ BitVec 64)) (_2!28294 List!50085)) )
))
(declare-datatypes ((List!50086 0))(
  ( (Nil!49962) (Cons!49962 (h!55707 tuple2!50000) (t!357036 List!50086)) )
))
(declare-datatypes ((ListLongMap!2447 0))(
  ( (ListLongMap!2448 (toList!3793 List!50086)) )
))
(declare-fun lm!1837 () ListLongMap!2447)

(declare-fun noDuplicateKeys!893 (List!50085) Bool)

(assert (=> b!4455343 (= lt!1646904 (noDuplicateKeys!893 (_2!28294 (h!55707 (toList!3793 lm!1837)))))))

(declare-fun b!4455344 () Bool)

(declare-fun e!2774381 () Bool)

(assert (=> b!4455344 (= e!2774381 (not e!2774378))))

(declare-fun res!1846799 () Bool)

(assert (=> b!4455344 (=> res!1846799 e!2774378)))

(declare-fun lt!1646906 () ListLongMap!2447)

(declare-fun lambda!160101 () Int)

(declare-fun forall!9812 (List!50086 Int) Bool)

(assert (=> b!4455344 (= res!1846799 (not (forall!9812 (toList!3793 lt!1646906) lambda!160101)))))

(declare-datatypes ((ListMap!3033 0))(
  ( (ListMap!3034 (toList!3794 List!50085)) )
))
(declare-fun lt!1646905 () ListMap!3033)

(declare-fun extractMap!962 (List!50086) ListMap!3033)

(declare-fun addToMapMapFromBucket!493 (List!50085 ListMap!3033) ListMap!3033)

(assert (=> b!4455344 (= (extractMap!962 (toList!3793 lm!1837)) (addToMapMapFromBucket!493 (_2!28294 (h!55707 (toList!3793 lm!1837))) lt!1646905))))

(declare-fun b!4455345 () Bool)

(declare-fun e!2774380 () Bool)

(assert (=> b!4455345 (= e!2774380 e!2774381)))

(declare-fun res!1846801 () Bool)

(assert (=> b!4455345 (=> (not res!1846801) (not e!2774381))))

(declare-fun key!4369 () K!11335)

(declare-fun contains!12524 (ListMap!3033 K!11335) Bool)

(assert (=> b!4455345 (= res!1846801 (contains!12524 lt!1646905 key!4369))))

(assert (=> b!4455345 (= lt!1646905 (extractMap!962 (toList!3793 lt!1646906)))))

(declare-fun tail!7474 (ListLongMap!2447) ListLongMap!2447)

(assert (=> b!4455345 (= lt!1646906 (tail!7474 lm!1837))))

(declare-fun b!4455346 () Bool)

(declare-fun res!1846796 () Bool)

(assert (=> b!4455346 (=> res!1846796 e!2774378)))

(declare-datatypes ((Hashable!5299 0))(
  ( (HashableExt!5298 (__x!31002 Int)) )
))
(declare-fun hashF!1304 () Hashable!5299)

(declare-fun allKeysSameHashInMap!1011 (ListLongMap!2447 Hashable!5299) Bool)

(assert (=> b!4455346 (= res!1846796 (not (allKeysSameHashInMap!1011 lt!1646906 hashF!1304)))))

(declare-fun res!1846798 () Bool)

(assert (=> start!436580 (=> (not res!1846798) (not e!2774380))))

(assert (=> start!436580 (= res!1846798 (forall!9812 (toList!3793 lm!1837) lambda!160101))))

(assert (=> start!436580 e!2774380))

(declare-fun inv!65521 (ListLongMap!2447) Bool)

(assert (=> start!436580 (and (inv!65521 lm!1837) e!2774379)))

(assert (=> start!436580 true))

(declare-fun tp_is_empty!26799 () Bool)

(assert (=> start!436580 tp_is_empty!26799))

(declare-fun b!4455347 () Bool)

(declare-fun res!1846795 () Bool)

(assert (=> b!4455347 (=> (not res!1846795) (not e!2774380))))

(declare-fun isEmpty!28453 (List!50086) Bool)

(assert (=> b!4455347 (= res!1846795 (not (isEmpty!28453 (toList!3793 lm!1837))))))

(declare-fun b!4455348 () Bool)

(declare-fun res!1846797 () Bool)

(assert (=> b!4455348 (=> (not res!1846797) (not e!2774381))))

(get-info :version)

(assert (=> b!4455348 (= res!1846797 ((_ is Cons!49962) (toList!3793 lm!1837)))))

(declare-fun b!4455349 () Bool)

(declare-fun res!1846800 () Bool)

(assert (=> b!4455349 (=> (not res!1846800) (not e!2774380))))

(assert (=> b!4455349 (= res!1846800 (allKeysSameHashInMap!1011 lm!1837 hashF!1304))))

(assert (= (and start!436580 res!1846798) b!4455349))

(assert (= (and b!4455349 res!1846800) b!4455347))

(assert (= (and b!4455347 res!1846795) b!4455345))

(assert (= (and b!4455345 res!1846801) b!4455348))

(assert (= (and b!4455348 res!1846797) b!4455344))

(assert (= (and b!4455344 (not res!1846799)) b!4455346))

(assert (= (and b!4455346 (not res!1846796)) b!4455343))

(assert (= start!436580 b!4455342))

(declare-fun m!5156899 () Bool)

(assert (=> b!4455345 m!5156899))

(declare-fun m!5156901 () Bool)

(assert (=> b!4455345 m!5156901))

(declare-fun m!5156903 () Bool)

(assert (=> b!4455345 m!5156903))

(declare-fun m!5156905 () Bool)

(assert (=> b!4455346 m!5156905))

(declare-fun m!5156907 () Bool)

(assert (=> start!436580 m!5156907))

(declare-fun m!5156909 () Bool)

(assert (=> start!436580 m!5156909))

(declare-fun m!5156911 () Bool)

(assert (=> b!4455349 m!5156911))

(declare-fun m!5156913 () Bool)

(assert (=> b!4455344 m!5156913))

(declare-fun m!5156915 () Bool)

(assert (=> b!4455344 m!5156915))

(declare-fun m!5156917 () Bool)

(assert (=> b!4455344 m!5156917))

(declare-fun m!5156919 () Bool)

(assert (=> b!4455347 m!5156919))

(declare-fun m!5156921 () Bool)

(assert (=> b!4455343 m!5156921))

(check-sat (not b!4455345) (not b!4455344) (not b!4455346) (not b!4455349) (not b!4455347) (not start!436580) (not b!4455343) tp_is_empty!26799 (not b!4455342))
(check-sat)
