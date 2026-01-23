; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437600 () Bool)

(assert start!437600)

(declare-fun b!4462062 () Bool)

(declare-datatypes ((Unit!86887 0))(
  ( (Unit!86888) )
))
(declare-fun e!2778465 () Unit!86887)

(declare-fun Unit!86889 () Unit!86887)

(assert (=> b!4462062 (= e!2778465 Unit!86889)))

(declare-fun res!1850635 () Bool)

(declare-fun e!2778464 () Bool)

(assert (=> start!437600 (=> (not res!1850635) (not e!2778464))))

(declare-datatypes ((K!11645 0))(
  ( (K!11646 (val!17587 Int)) )
))
(declare-datatypes ((V!11891 0))(
  ( (V!11892 (val!17588 Int)) )
))
(declare-datatypes ((tuple2!50442 0))(
  ( (tuple2!50443 (_1!28515 K!11645) (_2!28515 V!11891)) )
))
(declare-datatypes ((List!50348 0))(
  ( (Nil!50224) (Cons!50224 (h!55971 tuple2!50442) (t!357298 List!50348)) )
))
(declare-datatypes ((tuple2!50444 0))(
  ( (tuple2!50445 (_1!28516 (_ BitVec 64)) (_2!28516 List!50348)) )
))
(declare-datatypes ((List!50349 0))(
  ( (Nil!50225) (Cons!50225 (h!55972 tuple2!50444) (t!357299 List!50349)) )
))
(declare-datatypes ((ListLongMap!2643 0))(
  ( (ListLongMap!2644 (toList!4011 List!50349)) )
))
(declare-fun lm!1477 () ListLongMap!2643)

(declare-fun lambda!161987 () Int)

(declare-fun forall!9944 (List!50349 Int) Bool)

(assert (=> start!437600 (= res!1850635 (forall!9944 (toList!4011 lm!1477) lambda!161987))))

(assert (=> start!437600 e!2778464))

(assert (=> start!437600 true))

(declare-fun e!2778469 () Bool)

(declare-fun inv!65829 (ListLongMap!2643) Bool)

(assert (=> start!437600 (and (inv!65829 lm!1477) e!2778469)))

(declare-fun tp_is_empty!27285 () Bool)

(assert (=> start!437600 tp_is_empty!27285))

(declare-fun e!2778468 () Bool)

(assert (=> start!437600 e!2778468))

(declare-fun b!4462063 () Bool)

(declare-fun e!2778463 () Bool)

(declare-fun lt!1652906 () List!50349)

(assert (=> b!4462063 (= e!2778463 (forall!9944 lt!1652906 lambda!161987))))

(declare-fun b!4462064 () Bool)

(declare-fun res!1850629 () Bool)

(assert (=> b!4462064 (=> res!1850629 e!2778463)))

(assert (=> b!4462064 (= res!1850629 (not (forall!9944 lt!1652906 lambda!161987)))))

(declare-fun b!4462065 () Bool)

(declare-fun e!2778466 () Bool)

(declare-fun e!2778462 () Bool)

(assert (=> b!4462065 (= e!2778466 e!2778462)))

(declare-fun res!1850638 () Bool)

(assert (=> b!4462065 (=> res!1850638 e!2778462)))

(declare-fun lt!1652912 () Bool)

(assert (=> b!4462065 (= res!1850638 lt!1652912)))

(declare-fun lt!1652910 () Unit!86887)

(assert (=> b!4462065 (= lt!1652910 e!2778465)))

(declare-fun c!759286 () Bool)

(assert (=> b!4462065 (= c!759286 lt!1652912)))

(declare-fun key!3287 () K!11645)

(declare-fun containsKey!1414 (List!50348 K!11645) Bool)

(assert (=> b!4462065 (= lt!1652912 (not (containsKey!1414 (_2!28516 (h!55972 (toList!4011 lm!1477))) key!3287)))))

(declare-fun b!4462066 () Bool)

(declare-fun res!1850636 () Bool)

(assert (=> b!4462066 (=> (not res!1850636) (not e!2778464))))

(declare-datatypes ((ListMap!3273 0))(
  ( (ListMap!3274 (toList!4012 List!50348)) )
))
(declare-fun contains!12743 (ListMap!3273 K!11645) Bool)

(declare-fun extractMap!1058 (List!50349) ListMap!3273)

(assert (=> b!4462066 (= res!1850636 (contains!12743 (extractMap!1058 (toList!4011 lm!1477)) key!3287))))

(declare-fun b!4462067 () Bool)

(declare-fun Unit!86890 () Unit!86887)

(assert (=> b!4462067 (= e!2778465 Unit!86890)))

(declare-datatypes ((Hashable!5397 0))(
  ( (HashableExt!5396 (__x!31100 Int)) )
))
(declare-fun hashF!1107 () Hashable!5397)

(declare-fun lt!1652909 () Unit!86887)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!2 (ListLongMap!2643 K!11645 Hashable!5397) Unit!86887)

(assert (=> b!4462067 (= lt!1652909 (lemmaNotInItsHashBucketThenNotInMap!2 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4462067 false))

(declare-fun b!4462068 () Bool)

(declare-fun res!1850639 () Bool)

(assert (=> b!4462068 (=> (not res!1850639) (not e!2778464))))

(declare-fun allKeysSameHashInMap!1109 (ListLongMap!2643 Hashable!5397) Bool)

(assert (=> b!4462068 (= res!1850639 (allKeysSameHashInMap!1109 lm!1477 hashF!1107))))

(declare-fun b!4462069 () Bool)

(declare-fun res!1850633 () Bool)

(assert (=> b!4462069 (=> res!1850633 e!2778463)))

(assert (=> b!4462069 (= res!1850633 (not (allKeysSameHashInMap!1109 (ListLongMap!2644 lt!1652906) hashF!1107)))))

(declare-fun b!4462070 () Bool)

(declare-fun tp!1335917 () Bool)

(assert (=> b!4462070 (= e!2778469 tp!1335917)))

(declare-fun b!4462071 () Bool)

(declare-fun tp_is_empty!27287 () Bool)

(declare-fun tp!1335916 () Bool)

(assert (=> b!4462071 (= e!2778468 (and tp_is_empty!27285 tp_is_empty!27287 tp!1335916))))

(declare-fun b!4462072 () Bool)

(declare-fun res!1850632 () Bool)

(assert (=> b!4462072 (=> res!1850632 e!2778466)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4462072 (= res!1850632 (or ((_ is Nil!50225) (toList!4011 lm!1477)) (not (= (_1!28516 (h!55972 (toList!4011 lm!1477))) hash!344))))))

(declare-fun b!4462073 () Bool)

(declare-fun res!1850631 () Bool)

(assert (=> b!4462073 (=> res!1850631 e!2778466)))

(declare-fun newBucket!178 () List!50348)

(declare-fun noDuplicateKeys!1002 (List!50348) Bool)

(assert (=> b!4462073 (= res!1850631 (not (noDuplicateKeys!1002 newBucket!178)))))

(declare-fun b!4462074 () Bool)

(declare-fun e!2778467 () Bool)

(assert (=> b!4462074 (= e!2778464 e!2778467)))

(declare-fun res!1850634 () Bool)

(assert (=> b!4462074 (=> (not res!1850634) (not e!2778467))))

(declare-fun lt!1652908 () (_ BitVec 64))

(assert (=> b!4462074 (= res!1850634 (= lt!1652908 hash!344))))

(declare-fun hash!2385 (Hashable!5397 K!11645) (_ BitVec 64))

(assert (=> b!4462074 (= lt!1652908 (hash!2385 hashF!1107 key!3287))))

(declare-fun b!4462075 () Bool)

(declare-fun res!1850628 () Bool)

(assert (=> b!4462075 (=> (not res!1850628) (not e!2778467))))

(declare-fun allKeysSameHash!856 (List!50348 (_ BitVec 64) Hashable!5397) Bool)

(assert (=> b!4462075 (= res!1850628 (allKeysSameHash!856 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4462076 () Bool)

(assert (=> b!4462076 (= e!2778467 (not e!2778466))))

(declare-fun res!1850630 () Bool)

(assert (=> b!4462076 (=> res!1850630 e!2778466)))

(declare-fun lt!1652903 () List!50348)

(declare-fun removePairForKey!629 (List!50348 K!11645) List!50348)

(assert (=> b!4462076 (= res!1850630 (not (= newBucket!178 (removePairForKey!629 lt!1652903 key!3287))))))

(declare-fun lt!1652907 () tuple2!50444)

(declare-fun lt!1652905 () Unit!86887)

(declare-fun forallContained!2219 (List!50349 Int tuple2!50444) Unit!86887)

(assert (=> b!4462076 (= lt!1652905 (forallContained!2219 (toList!4011 lm!1477) lambda!161987 lt!1652907))))

(declare-fun contains!12744 (List!50349 tuple2!50444) Bool)

(assert (=> b!4462076 (contains!12744 (toList!4011 lm!1477) lt!1652907)))

(assert (=> b!4462076 (= lt!1652907 (tuple2!50445 hash!344 lt!1652903))))

(declare-fun lt!1652904 () Unit!86887)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!514 (List!50349 (_ BitVec 64) List!50348) Unit!86887)

(assert (=> b!4462076 (= lt!1652904 (lemmaGetValueByKeyImpliesContainsTuple!514 (toList!4011 lm!1477) hash!344 lt!1652903))))

(declare-fun apply!11739 (ListLongMap!2643 (_ BitVec 64)) List!50348)

(assert (=> b!4462076 (= lt!1652903 (apply!11739 lm!1477 hash!344))))

(declare-fun contains!12745 (ListLongMap!2643 (_ BitVec 64)) Bool)

(assert (=> b!4462076 (contains!12745 lm!1477 lt!1652908)))

(declare-fun lt!1652911 () Unit!86887)

(declare-fun lemmaInGenMapThenLongMapContainsHash!76 (ListLongMap!2643 K!11645 Hashable!5397) Unit!86887)

(assert (=> b!4462076 (= lt!1652911 (lemmaInGenMapThenLongMapContainsHash!76 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4462077 () Bool)

(assert (=> b!4462077 (= e!2778462 e!2778463)))

(declare-fun res!1850637 () Bool)

(assert (=> b!4462077 (=> res!1850637 e!2778463)))

(declare-fun containsKeyBiggerList!2 (List!50349 K!11645) Bool)

(assert (=> b!4462077 (= res!1850637 (not (containsKeyBiggerList!2 lt!1652906 key!3287)))))

(assert (=> b!4462077 (= lt!1652906 (Cons!50225 (h!55972 (toList!4011 lm!1477)) Nil!50225))))

(assert (= (and start!437600 res!1850635) b!4462068))

(assert (= (and b!4462068 res!1850639) b!4462066))

(assert (= (and b!4462066 res!1850636) b!4462074))

(assert (= (and b!4462074 res!1850634) b!4462075))

(assert (= (and b!4462075 res!1850628) b!4462076))

(assert (= (and b!4462076 (not res!1850630)) b!4462073))

(assert (= (and b!4462073 (not res!1850631)) b!4462072))

(assert (= (and b!4462072 (not res!1850632)) b!4462065))

(assert (= (and b!4462065 c!759286) b!4462067))

(assert (= (and b!4462065 (not c!759286)) b!4462062))

(assert (= (and b!4462065 (not res!1850638)) b!4462077))

(assert (= (and b!4462077 (not res!1850637)) b!4462064))

(assert (= (and b!4462064 (not res!1850629)) b!4462069))

(assert (= (and b!4462069 (not res!1850633)) b!4462063))

(assert (= start!437600 b!4462070))

(assert (= (and start!437600 ((_ is Cons!50224) newBucket!178)) b!4462071))

(declare-fun m!5165041 () Bool)

(assert (=> b!4462065 m!5165041))

(declare-fun m!5165043 () Bool)

(assert (=> b!4462077 m!5165043))

(declare-fun m!5165045 () Bool)

(assert (=> b!4462069 m!5165045))

(declare-fun m!5165047 () Bool)

(assert (=> start!437600 m!5165047))

(declare-fun m!5165049 () Bool)

(assert (=> start!437600 m!5165049))

(declare-fun m!5165051 () Bool)

(assert (=> b!4462066 m!5165051))

(assert (=> b!4462066 m!5165051))

(declare-fun m!5165053 () Bool)

(assert (=> b!4462066 m!5165053))

(declare-fun m!5165055 () Bool)

(assert (=> b!4462074 m!5165055))

(declare-fun m!5165057 () Bool)

(assert (=> b!4462073 m!5165057))

(declare-fun m!5165059 () Bool)

(assert (=> b!4462067 m!5165059))

(declare-fun m!5165061 () Bool)

(assert (=> b!4462063 m!5165061))

(declare-fun m!5165063 () Bool)

(assert (=> b!4462076 m!5165063))

(declare-fun m!5165065 () Bool)

(assert (=> b!4462076 m!5165065))

(declare-fun m!5165067 () Bool)

(assert (=> b!4462076 m!5165067))

(declare-fun m!5165069 () Bool)

(assert (=> b!4462076 m!5165069))

(declare-fun m!5165071 () Bool)

(assert (=> b!4462076 m!5165071))

(declare-fun m!5165073 () Bool)

(assert (=> b!4462076 m!5165073))

(declare-fun m!5165075 () Bool)

(assert (=> b!4462076 m!5165075))

(assert (=> b!4462064 m!5165061))

(declare-fun m!5165077 () Bool)

(assert (=> b!4462068 m!5165077))

(declare-fun m!5165079 () Bool)

(assert (=> b!4462075 m!5165079))

(check-sat (not b!4462063) (not b!4462069) (not b!4462064) (not b!4462077) (not b!4462075) (not b!4462065) tp_is_empty!27287 (not b!4462076) (not b!4462074) (not b!4462071) (not b!4462070) (not b!4462066) (not b!4462073) (not b!4462068) (not start!437600) (not b!4462067) tp_is_empty!27285)
(check-sat)
