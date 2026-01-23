; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466376 () Bool)

(assert start!466376)

(declare-fun b!4639552 () Bool)

(declare-fun e!2894208 () Bool)

(declare-fun e!2894205 () Bool)

(assert (=> b!4639552 (= e!2894208 e!2894205)))

(declare-fun res!1948316 () Bool)

(assert (=> b!4639552 (=> (not res!1948316) (not e!2894205))))

(declare-fun lt!1802357 () (_ BitVec 64))

(declare-fun hash!414 () (_ BitVec 64))

(assert (=> b!4639552 (= res!1948316 (= lt!1802357 hash!414))))

(declare-datatypes ((Hashable!5981 0))(
  ( (HashableExt!5980 (__x!31684 Int)) )
))
(declare-fun hashF!1389 () Hashable!5981)

(declare-datatypes ((K!13110 0))(
  ( (K!13111 (val!18759 Int)) )
))
(declare-fun key!4968 () K!13110)

(declare-fun hash!3670 (Hashable!5981 K!13110) (_ BitVec 64))

(assert (=> b!4639552 (= lt!1802357 (hash!3670 hashF!1389 key!4968))))

(declare-fun b!4639553 () Bool)

(declare-fun e!2894203 () Bool)

(assert (=> b!4639553 (= e!2894203 e!2894208)))

(declare-fun res!1948315 () Bool)

(assert (=> b!4639553 (=> (not res!1948315) (not e!2894208))))

(declare-datatypes ((V!13356 0))(
  ( (V!13357 (val!18760 Int)) )
))
(declare-datatypes ((tuple2!52782 0))(
  ( (tuple2!52783 (_1!29685 K!13110) (_2!29685 V!13356)) )
))
(declare-datatypes ((List!51866 0))(
  ( (Nil!51742) (Cons!51742 (h!57844 tuple2!52782) (t!358948 List!51866)) )
))
(declare-datatypes ((ListMap!4437 0))(
  ( (ListMap!4438 (toList!5113 List!51866)) )
))
(declare-fun lt!1802351 () ListMap!4437)

(declare-fun contains!14849 (ListMap!4437 K!13110) Bool)

(assert (=> b!4639553 (= res!1948315 (contains!14849 lt!1802351 key!4968))))

(declare-datatypes ((tuple2!52784 0))(
  ( (tuple2!52785 (_1!29686 (_ BitVec 64)) (_2!29686 List!51866)) )
))
(declare-datatypes ((List!51867 0))(
  ( (Nil!51743) (Cons!51743 (h!57845 tuple2!52784) (t!358949 List!51867)) )
))
(declare-fun lt!1802352 () List!51867)

(declare-fun extractMap!1640 (List!51867) ListMap!4437)

(assert (=> b!4639553 (= lt!1802351 (extractMap!1640 lt!1802352))))

(declare-fun oldBucket!40 () List!51866)

(assert (=> b!4639553 (= lt!1802352 (Cons!51743 (tuple2!52785 hash!414 oldBucket!40) Nil!51743))))

(declare-fun b!4639554 () Bool)

(declare-fun e!2894207 () Bool)

(declare-fun lt!1802350 () ListMap!4437)

(assert (=> b!4639554 (= e!2894207 (= lt!1802350 (ListMap!4438 Nil!51742)))))

(declare-fun b!4639555 () Bool)

(declare-fun res!1948312 () Bool)

(assert (=> b!4639555 (=> (not res!1948312) (not e!2894203))))

(declare-fun allKeysSameHash!1438 (List!51866 (_ BitVec 64) Hashable!5981) Bool)

(assert (=> b!4639555 (= res!1948312 (allKeysSameHash!1438 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4639556 () Bool)

(declare-fun res!1948319 () Bool)

(assert (=> b!4639556 (=> (not res!1948319) (not e!2894203))))

(declare-fun newBucket!224 () List!51866)

(declare-fun noDuplicateKeys!1584 (List!51866) Bool)

(assert (=> b!4639556 (= res!1948319 (noDuplicateKeys!1584 newBucket!224))))

(declare-fun e!2894206 () Bool)

(declare-fun tp!1342782 () Bool)

(declare-fun b!4639557 () Bool)

(declare-fun tp_is_empty!29629 () Bool)

(declare-fun tp_is_empty!29631 () Bool)

(assert (=> b!4639557 (= e!2894206 (and tp_is_empty!29629 tp_is_empty!29631 tp!1342782))))

(declare-fun b!4639558 () Bool)

(declare-fun res!1948314 () Bool)

(assert (=> b!4639558 (=> (not res!1948314) (not e!2894203))))

(declare-fun removePairForKey!1207 (List!51866 K!13110) List!51866)

(assert (=> b!4639558 (= res!1948314 (= (removePairForKey!1207 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4639559 () Bool)

(declare-fun e!2894202 () Bool)

(assert (=> b!4639559 (= e!2894205 (not e!2894202))))

(declare-fun res!1948318 () Bool)

(assert (=> b!4639559 (=> res!1948318 e!2894202)))

(get-info :version)

(assert (=> b!4639559 (= res!1948318 (or (and ((_ is Cons!51742) oldBucket!40) (= (_1!29685 (h!57844 oldBucket!40)) key!4968)) (not ((_ is Cons!51742) oldBucket!40)) (= (_1!29685 (h!57844 oldBucket!40)) key!4968)))))

(assert (=> b!4639559 e!2894207))

(declare-fun res!1948317 () Bool)

(assert (=> b!4639559 (=> (not res!1948317) (not e!2894207))))

(declare-fun addToMapMapFromBucket!1043 (List!51866 ListMap!4437) ListMap!4437)

(assert (=> b!4639559 (= res!1948317 (= lt!1802351 (addToMapMapFromBucket!1043 oldBucket!40 lt!1802350)))))

(assert (=> b!4639559 (= lt!1802350 (extractMap!1640 Nil!51743))))

(assert (=> b!4639559 true))

(declare-fun tp!1342783 () Bool)

(declare-fun b!4639560 () Bool)

(declare-fun e!2894204 () Bool)

(assert (=> b!4639560 (= e!2894204 (and tp_is_empty!29629 tp_is_empty!29631 tp!1342783))))

(declare-fun res!1948313 () Bool)

(assert (=> start!466376 (=> (not res!1948313) (not e!2894203))))

(assert (=> start!466376 (= res!1948313 (noDuplicateKeys!1584 oldBucket!40))))

(assert (=> start!466376 e!2894203))

(assert (=> start!466376 true))

(assert (=> start!466376 e!2894206))

(assert (=> start!466376 tp_is_empty!29629))

(assert (=> start!466376 e!2894204))

(declare-fun b!4639561 () Bool)

(assert (=> b!4639561 (= e!2894202 true)))

(declare-fun containsKey!2606 (List!51866 K!13110) Bool)

(assert (=> b!4639561 (containsKey!2606 oldBucket!40 key!4968)))

(declare-datatypes ((Unit!115153 0))(
  ( (Unit!115154) )
))
(declare-fun lt!1802353 () Unit!115153)

(declare-fun lemmaGetPairDefinedThenContainsKey!98 (List!51866 K!13110 Hashable!5981) Unit!115153)

(assert (=> b!4639561 (= lt!1802353 (lemmaGetPairDefinedThenContainsKey!98 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1802356 () List!51866)

(declare-datatypes ((Option!11728 0))(
  ( (None!11727) (Some!11727 (v!45937 tuple2!52782)) )
))
(declare-fun isDefined!8993 (Option!11728) Bool)

(declare-fun getPair!344 (List!51866 K!13110) Option!11728)

(assert (=> b!4639561 (isDefined!8993 (getPair!344 lt!1802356 key!4968))))

(declare-fun lt!1802359 () tuple2!52784)

(declare-fun lambda!195816 () Int)

(declare-fun lt!1802355 () Unit!115153)

(declare-fun forallContained!3148 (List!51867 Int tuple2!52784) Unit!115153)

(assert (=> b!4639561 (= lt!1802355 (forallContained!3148 lt!1802352 lambda!195816 lt!1802359))))

(declare-fun contains!14850 (List!51867 tuple2!52784) Bool)

(assert (=> b!4639561 (contains!14850 lt!1802352 lt!1802359)))

(assert (=> b!4639561 (= lt!1802359 (tuple2!52785 lt!1802357 lt!1802356))))

(declare-fun lt!1802361 () Unit!115153)

(declare-datatypes ((ListLongMap!3683 0))(
  ( (ListLongMap!3684 (toList!5114 List!51867)) )
))
(declare-fun lt!1802358 () ListLongMap!3683)

(declare-fun lemmaGetValueImpliesTupleContained!149 (ListLongMap!3683 (_ BitVec 64) List!51866) Unit!115153)

(assert (=> b!4639561 (= lt!1802361 (lemmaGetValueImpliesTupleContained!149 lt!1802358 lt!1802357 lt!1802356))))

(declare-fun apply!12217 (ListLongMap!3683 (_ BitVec 64)) List!51866)

(assert (=> b!4639561 (= lt!1802356 (apply!12217 lt!1802358 lt!1802357))))

(declare-fun contains!14851 (ListLongMap!3683 (_ BitVec 64)) Bool)

(assert (=> b!4639561 (contains!14851 lt!1802358 lt!1802357)))

(declare-fun lt!1802360 () Unit!115153)

(declare-fun lemmaInGenMapThenLongMapContainsHash!550 (ListLongMap!3683 K!13110 Hashable!5981) Unit!115153)

(assert (=> b!4639561 (= lt!1802360 (lemmaInGenMapThenLongMapContainsHash!550 lt!1802358 key!4968 hashF!1389))))

(declare-fun lt!1802354 () Unit!115153)

(declare-fun lemmaInGenMapThenGetPairDefined!140 (ListLongMap!3683 K!13110 Hashable!5981) Unit!115153)

(assert (=> b!4639561 (= lt!1802354 (lemmaInGenMapThenGetPairDefined!140 lt!1802358 key!4968 hashF!1389))))

(assert (=> b!4639561 (= lt!1802358 (ListLongMap!3684 lt!1802352))))

(declare-fun b!4639562 () Bool)

(declare-fun res!1948320 () Bool)

(assert (=> b!4639562 (=> (not res!1948320) (not e!2894205))))

(assert (=> b!4639562 (= res!1948320 (allKeysSameHash!1438 newBucket!224 hash!414 hashF!1389))))

(assert (= (and start!466376 res!1948313) b!4639556))

(assert (= (and b!4639556 res!1948319) b!4639558))

(assert (= (and b!4639558 res!1948314) b!4639555))

(assert (= (and b!4639555 res!1948312) b!4639553))

(assert (= (and b!4639553 res!1948315) b!4639552))

(assert (= (and b!4639552 res!1948316) b!4639562))

(assert (= (and b!4639562 res!1948320) b!4639559))

(assert (= (and b!4639559 res!1948317) b!4639554))

(assert (= (and b!4639559 (not res!1948318)) b!4639561))

(assert (= (and start!466376 ((_ is Cons!51742) oldBucket!40)) b!4639557))

(assert (= (and start!466376 ((_ is Cons!51742) newBucket!224)) b!4639560))

(declare-fun m!5498953 () Bool)

(assert (=> start!466376 m!5498953))

(declare-fun m!5498955 () Bool)

(assert (=> b!4639562 m!5498955))

(declare-fun m!5498957 () Bool)

(assert (=> b!4639552 m!5498957))

(declare-fun m!5498959 () Bool)

(assert (=> b!4639555 m!5498959))

(declare-fun m!5498961 () Bool)

(assert (=> b!4639559 m!5498961))

(declare-fun m!5498963 () Bool)

(assert (=> b!4639559 m!5498963))

(declare-fun m!5498965 () Bool)

(assert (=> b!4639556 m!5498965))

(declare-fun m!5498967 () Bool)

(assert (=> b!4639558 m!5498967))

(declare-fun m!5498969 () Bool)

(assert (=> b!4639561 m!5498969))

(declare-fun m!5498971 () Bool)

(assert (=> b!4639561 m!5498971))

(declare-fun m!5498973 () Bool)

(assert (=> b!4639561 m!5498973))

(declare-fun m!5498975 () Bool)

(assert (=> b!4639561 m!5498975))

(assert (=> b!4639561 m!5498971))

(declare-fun m!5498977 () Bool)

(assert (=> b!4639561 m!5498977))

(declare-fun m!5498979 () Bool)

(assert (=> b!4639561 m!5498979))

(declare-fun m!5498981 () Bool)

(assert (=> b!4639561 m!5498981))

(declare-fun m!5498983 () Bool)

(assert (=> b!4639561 m!5498983))

(declare-fun m!5498985 () Bool)

(assert (=> b!4639561 m!5498985))

(declare-fun m!5498987 () Bool)

(assert (=> b!4639561 m!5498987))

(declare-fun m!5498989 () Bool)

(assert (=> b!4639561 m!5498989))

(declare-fun m!5498991 () Bool)

(assert (=> b!4639553 m!5498991))

(declare-fun m!5498993 () Bool)

(assert (=> b!4639553 m!5498993))

(check-sat (not b!4639555) (not b!4639556) tp_is_empty!29629 (not b!4639552) (not b!4639561) (not b!4639553) (not b!4639558) (not b!4639560) (not b!4639559) (not b!4639557) tp_is_empty!29631 (not start!466376) (not b!4639562))
(check-sat)
