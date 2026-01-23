; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493308 () Bool)

(assert start!493308)

(declare-fun b!4791561 () Bool)

(declare-fun e!2991740 () Bool)

(declare-fun e!2991742 () Bool)

(assert (=> b!4791561 (= e!2991740 e!2991742)))

(declare-fun res!2036422 () Bool)

(assert (=> b!4791561 (=> res!2036422 e!2991742)))

(declare-datatypes ((K!15757 0))(
  ( (K!15758 (val!20911 Int)) )
))
(declare-datatypes ((V!16003 0))(
  ( (V!16004 (val!20912 Int)) )
))
(declare-datatypes ((tuple2!56796 0))(
  ( (tuple2!56797 (_1!31692 K!15757) (_2!31692 V!16003)) )
))
(declare-datatypes ((List!54309 0))(
  ( (Nil!54185) (Cons!54185 (h!60609 tuple2!56796) (t!361759 List!54309)) )
))
(declare-datatypes ((ListMap!6365 0))(
  ( (ListMap!6366 (toList!6893 List!54309)) )
))
(declare-fun lt!1950731 () ListMap!6365)

(declare-fun key!5896 () K!15757)

(declare-fun contains!17792 (ListMap!6365 K!15757) Bool)

(assert (=> b!4791561 (= res!2036422 (not (contains!17792 lt!1950731 key!5896)))))

(declare-datatypes ((tuple2!56798 0))(
  ( (tuple2!56799 (_1!31693 (_ BitVec 64)) (_2!31693 List!54309)) )
))
(declare-datatypes ((List!54310 0))(
  ( (Nil!54186) (Cons!54186 (h!60610 tuple2!56798) (t!361760 List!54310)) )
))
(declare-datatypes ((ListLongMap!5315 0))(
  ( (ListLongMap!5316 (toList!6894 List!54310)) )
))
(declare-fun lm!2473 () ListLongMap!5315)

(declare-fun lt!1950724 () ListMap!6365)

(declare-fun addToMapMapFromBucket!1701 (List!54309 ListMap!6365) ListMap!6365)

(assert (=> b!4791561 (= lt!1950731 (addToMapMapFromBucket!1701 (_2!31693 (h!60610 (toList!6894 lm!2473))) lt!1950724))))

(declare-fun b!4791562 () Bool)

(declare-fun e!2991739 () Bool)

(declare-fun e!2991741 () Bool)

(assert (=> b!4791562 (= e!2991739 (not e!2991741))))

(declare-fun res!2036426 () Bool)

(assert (=> b!4791562 (=> res!2036426 e!2991741)))

(declare-fun value!3111 () V!16003)

(declare-fun getValue!103 (List!54310 K!15757) V!16003)

(assert (=> b!4791562 (= res!2036426 (not (= (getValue!103 (toList!6894 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!557 (List!54310 K!15757) Bool)

(assert (=> b!4791562 (containsKeyBiggerList!557 (toList!6894 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6907 0))(
  ( (HashableExt!6906 (__x!32930 Int)) )
))
(declare-fun hashF!1559 () Hashable!6907)

(declare-datatypes ((Unit!139890 0))(
  ( (Unit!139891) )
))
(declare-fun lt!1950728 () Unit!139890)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!297 (ListLongMap!5315 K!15757 Hashable!6907) Unit!139890)

(assert (=> b!4791562 (= lt!1950728 (lemmaInLongMapThenContainsKeyBiggerList!297 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2991737 () Bool)

(assert (=> b!4791562 e!2991737))

(declare-fun res!2036431 () Bool)

(assert (=> b!4791562 (=> (not res!2036431) (not e!2991737))))

(declare-fun lt!1950723 () (_ BitVec 64))

(declare-fun contains!17793 (ListLongMap!5315 (_ BitVec 64)) Bool)

(assert (=> b!4791562 (= res!2036431 (contains!17793 lm!2473 lt!1950723))))

(declare-fun hash!4939 (Hashable!6907 K!15757) (_ BitVec 64))

(assert (=> b!4791562 (= lt!1950723 (hash!4939 hashF!1559 key!5896))))

(declare-fun lt!1950733 () Unit!139890)

(declare-fun lemmaInGenericMapThenInLongMap!311 (ListLongMap!5315 K!15757 Hashable!6907) Unit!139890)

(assert (=> b!4791562 (= lt!1950733 (lemmaInGenericMapThenInLongMap!311 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791563 () Bool)

(declare-datatypes ((Option!13074 0))(
  ( (None!13073) (Some!13073 (v!48352 tuple2!56796)) )
))
(declare-fun isDefined!10216 (Option!13074) Bool)

(declare-fun getPair!879 (List!54309 K!15757) Option!13074)

(declare-fun apply!12974 (ListLongMap!5315 (_ BitVec 64)) List!54309)

(assert (=> b!4791563 (= e!2991737 (isDefined!10216 (getPair!879 (apply!12974 lm!2473 lt!1950723) key!5896)))))

(declare-fun b!4791564 () Bool)

(declare-fun res!2036424 () Bool)

(assert (=> b!4791564 (=> (not res!2036424) (not e!2991739))))

(declare-fun allKeysSameHashInMap!2312 (ListLongMap!5315 Hashable!6907) Bool)

(assert (=> b!4791564 (= res!2036424 (allKeysSameHashInMap!2312 lm!2473 hashF!1559))))

(declare-fun b!4791565 () Bool)

(declare-fun res!2036427 () Bool)

(assert (=> b!4791565 (=> res!2036427 e!2991742)))

(declare-fun apply!12975 (ListMap!6365 K!15757) V!16003)

(assert (=> b!4791565 (= res!2036427 (not (= (apply!12975 lt!1950724 key!5896) value!3111)))))

(declare-fun b!4791566 () Bool)

(declare-fun e!2991743 () Bool)

(declare-fun tp!1357951 () Bool)

(assert (=> b!4791566 (= e!2991743 tp!1357951)))

(declare-fun b!4791567 () Bool)

(assert (=> b!4791567 (= e!2991741 e!2991740)))

(declare-fun res!2036423 () Bool)

(assert (=> b!4791567 (=> res!2036423 e!2991740)))

(declare-fun noDuplicateKeys!2332 (List!54309) Bool)

(assert (=> b!4791567 (= res!2036423 (not (noDuplicateKeys!2332 (_2!31693 (h!60610 (toList!6894 lm!2473))))))))

(declare-fun extractMap!2434 (List!54310) ListMap!6365)

(assert (=> b!4791567 (= lt!1950724 (extractMap!2434 (t!361760 (toList!6894 lm!2473))))))

(declare-fun lt!1950725 () ListMap!6365)

(assert (=> b!4791567 (= (apply!12975 lt!1950725 key!5896) value!3111)))

(declare-fun lt!1950732 () Unit!139890)

(declare-fun lt!1950729 () ListLongMap!5315)

(declare-fun lemmaExtractMapPreservesMapping!39 (ListLongMap!5315 K!15757 V!16003 Hashable!6907) Unit!139890)

(assert (=> b!4791567 (= lt!1950732 (lemmaExtractMapPreservesMapping!39 lt!1950729 key!5896 value!3111 hashF!1559))))

(assert (=> b!4791567 (contains!17792 lt!1950725 key!5896)))

(assert (=> b!4791567 (= lt!1950725 (extractMap!2434 (toList!6894 lt!1950729)))))

(declare-fun lt!1950726 () Unit!139890)

(declare-fun lemmaListContainsThenExtractedMapContains!707 (ListLongMap!5315 K!15757 Hashable!6907) Unit!139890)

(assert (=> b!4791567 (= lt!1950726 (lemmaListContainsThenExtractedMapContains!707 lt!1950729 key!5896 hashF!1559))))

(declare-fun lt!1950722 () Unit!139890)

(declare-fun e!2991738 () Unit!139890)

(assert (=> b!4791567 (= lt!1950722 e!2991738)))

(declare-fun c!816688 () Bool)

(assert (=> b!4791567 (= c!816688 (not (contains!17793 lt!1950729 lt!1950723)))))

(declare-fun tail!9262 (ListLongMap!5315) ListLongMap!5315)

(assert (=> b!4791567 (= lt!1950729 (tail!9262 lm!2473))))

(declare-fun b!4791568 () Bool)

(assert (=> b!4791568 (= e!2991742 true)))

(assert (=> b!4791568 (= (apply!12975 lt!1950731 key!5896) value!3111)))

(declare-fun lt!1950727 () Unit!139890)

(declare-fun lemmaAddToMapFromBucketMaintainsMapping!7 (List!54309 ListMap!6365 K!15757 V!16003) Unit!139890)

(assert (=> b!4791568 (= lt!1950727 (lemmaAddToMapFromBucketMaintainsMapping!7 (_2!31693 (h!60610 (toList!6894 lm!2473))) lt!1950724 key!5896 value!3111))))

(declare-fun res!2036430 () Bool)

(assert (=> start!493308 (=> (not res!2036430) (not e!2991739))))

(declare-fun lambda!230382 () Int)

(declare-fun forall!12232 (List!54310 Int) Bool)

(assert (=> start!493308 (= res!2036430 (forall!12232 (toList!6894 lm!2473) lambda!230382))))

(assert (=> start!493308 e!2991739))

(declare-fun inv!69784 (ListLongMap!5315) Bool)

(assert (=> start!493308 (and (inv!69784 lm!2473) e!2991743)))

(assert (=> start!493308 true))

(declare-fun tp_is_empty!33509 () Bool)

(assert (=> start!493308 tp_is_empty!33509))

(declare-fun tp_is_empty!33511 () Bool)

(assert (=> start!493308 tp_is_empty!33511))

(declare-fun b!4791569 () Bool)

(declare-fun res!2036425 () Bool)

(assert (=> b!4791569 (=> res!2036425 e!2991741)))

(declare-fun containsKey!3937 (List!54309 K!15757) Bool)

(assert (=> b!4791569 (= res!2036425 (containsKey!3937 (_2!31693 (h!60610 (toList!6894 lm!2473))) key!5896))))

(declare-fun b!4791570 () Bool)

(declare-fun res!2036429 () Bool)

(assert (=> b!4791570 (=> res!2036429 e!2991742)))

(assert (=> b!4791570 (= res!2036429 (not (contains!17792 lt!1950724 key!5896)))))

(declare-fun b!4791571 () Bool)

(declare-fun res!2036421 () Bool)

(assert (=> b!4791571 (=> res!2036421 e!2991741)))

(assert (=> b!4791571 (= res!2036421 (not (is-Cons!54186 (toList!6894 lm!2473))))))

(declare-fun b!4791572 () Bool)

(declare-fun lt!1950730 () Unit!139890)

(assert (=> b!4791572 (= e!2991738 lt!1950730)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!33 (ListLongMap!5315 K!15757 Hashable!6907) Unit!139890)

(assert (=> b!4791572 (= lt!1950730 (lemmaHashNotInLongMapThenNotInGenerated!33 lt!1950729 key!5896 hashF!1559))))

(assert (=> b!4791572 (not (contains!17792 (extractMap!2434 (toList!6894 lt!1950729)) key!5896))))

(declare-fun b!4791573 () Bool)

(declare-fun res!2036428 () Bool)

(assert (=> b!4791573 (=> (not res!2036428) (not e!2991739))))

(assert (=> b!4791573 (= res!2036428 (contains!17792 (extractMap!2434 (toList!6894 lm!2473)) key!5896))))

(declare-fun b!4791574 () Bool)

(declare-fun Unit!139892 () Unit!139890)

(assert (=> b!4791574 (= e!2991738 Unit!139892)))

(assert (= (and start!493308 res!2036430) b!4791564))

(assert (= (and b!4791564 res!2036424) b!4791573))

(assert (= (and b!4791573 res!2036428) b!4791562))

(assert (= (and b!4791562 res!2036431) b!4791563))

(assert (= (and b!4791562 (not res!2036426)) b!4791571))

(assert (= (and b!4791571 (not res!2036421)) b!4791569))

(assert (= (and b!4791569 (not res!2036425)) b!4791567))

(assert (= (and b!4791567 c!816688) b!4791572))

(assert (= (and b!4791567 (not c!816688)) b!4791574))

(assert (= (and b!4791567 (not res!2036423)) b!4791561))

(assert (= (and b!4791561 (not res!2036422)) b!4791570))

(assert (= (and b!4791570 (not res!2036429)) b!4791565))

(assert (= (and b!4791565 (not res!2036427)) b!4791568))

(assert (= start!493308 b!4791566))

(declare-fun m!5772078 () Bool)

(assert (=> b!4791565 m!5772078))

(declare-fun m!5772080 () Bool)

(assert (=> b!4791567 m!5772080))

(declare-fun m!5772082 () Bool)

(assert (=> b!4791567 m!5772082))

(declare-fun m!5772084 () Bool)

(assert (=> b!4791567 m!5772084))

(declare-fun m!5772086 () Bool)

(assert (=> b!4791567 m!5772086))

(declare-fun m!5772088 () Bool)

(assert (=> b!4791567 m!5772088))

(declare-fun m!5772090 () Bool)

(assert (=> b!4791567 m!5772090))

(declare-fun m!5772092 () Bool)

(assert (=> b!4791567 m!5772092))

(declare-fun m!5772094 () Bool)

(assert (=> b!4791567 m!5772094))

(declare-fun m!5772096 () Bool)

(assert (=> b!4791567 m!5772096))

(declare-fun m!5772098 () Bool)

(assert (=> b!4791568 m!5772098))

(declare-fun m!5772100 () Bool)

(assert (=> b!4791568 m!5772100))

(declare-fun m!5772102 () Bool)

(assert (=> b!4791570 m!5772102))

(declare-fun m!5772104 () Bool)

(assert (=> start!493308 m!5772104))

(declare-fun m!5772106 () Bool)

(assert (=> start!493308 m!5772106))

(declare-fun m!5772108 () Bool)

(assert (=> b!4791573 m!5772108))

(assert (=> b!4791573 m!5772108))

(declare-fun m!5772110 () Bool)

(assert (=> b!4791573 m!5772110))

(declare-fun m!5772112 () Bool)

(assert (=> b!4791561 m!5772112))

(declare-fun m!5772114 () Bool)

(assert (=> b!4791561 m!5772114))

(declare-fun m!5772116 () Bool)

(assert (=> b!4791564 m!5772116))

(declare-fun m!5772118 () Bool)

(assert (=> b!4791563 m!5772118))

(assert (=> b!4791563 m!5772118))

(declare-fun m!5772120 () Bool)

(assert (=> b!4791563 m!5772120))

(assert (=> b!4791563 m!5772120))

(declare-fun m!5772122 () Bool)

(assert (=> b!4791563 m!5772122))

(declare-fun m!5772124 () Bool)

(assert (=> b!4791562 m!5772124))

(declare-fun m!5772126 () Bool)

(assert (=> b!4791562 m!5772126))

(declare-fun m!5772128 () Bool)

(assert (=> b!4791562 m!5772128))

(declare-fun m!5772130 () Bool)

(assert (=> b!4791562 m!5772130))

(declare-fun m!5772132 () Bool)

(assert (=> b!4791562 m!5772132))

(declare-fun m!5772134 () Bool)

(assert (=> b!4791562 m!5772134))

(declare-fun m!5772136 () Bool)

(assert (=> b!4791572 m!5772136))

(assert (=> b!4791572 m!5772080))

(assert (=> b!4791572 m!5772080))

(declare-fun m!5772138 () Bool)

(assert (=> b!4791572 m!5772138))

(declare-fun m!5772140 () Bool)

(assert (=> b!4791569 m!5772140))

(push 1)

(assert (not b!4791570))

(assert tp_is_empty!33509)

(assert (not b!4791568))

(assert (not b!4791562))

(assert (not b!4791565))

(assert (not b!4791569))

(assert tp_is_empty!33511)

(assert (not b!4791566))

(assert (not b!4791564))

(assert (not b!4791573))

(assert (not b!4791561))

(assert (not b!4791563))

(assert (not start!493308))

(assert (not b!4791572))

(assert (not b!4791567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

