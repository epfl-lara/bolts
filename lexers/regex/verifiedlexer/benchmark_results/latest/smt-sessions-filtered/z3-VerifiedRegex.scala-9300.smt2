; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!493334 () Bool)

(assert start!493334)

(declare-fun b!4791820 () Bool)

(declare-fun e!2991890 () Bool)

(declare-fun e!2991889 () Bool)

(assert (=> b!4791820 (= e!2991890 (not e!2991889))))

(declare-fun res!2036636 () Bool)

(assert (=> b!4791820 (=> res!2036636 e!2991889)))

(declare-datatypes ((K!15789 0))(
  ( (K!15790 (val!20937 Int)) )
))
(declare-datatypes ((V!16035 0))(
  ( (V!16036 (val!20938 Int)) )
))
(declare-datatypes ((tuple2!56848 0))(
  ( (tuple2!56849 (_1!31718 K!15789) (_2!31718 V!16035)) )
))
(declare-datatypes ((List!54335 0))(
  ( (Nil!54211) (Cons!54211 (h!60635 tuple2!56848) (t!361785 List!54335)) )
))
(declare-datatypes ((tuple2!56850 0))(
  ( (tuple2!56851 (_1!31719 (_ BitVec 64)) (_2!31719 List!54335)) )
))
(declare-datatypes ((List!54336 0))(
  ( (Nil!54212) (Cons!54212 (h!60636 tuple2!56850) (t!361786 List!54336)) )
))
(declare-datatypes ((ListLongMap!5341 0))(
  ( (ListLongMap!5342 (toList!6919 List!54336)) )
))
(declare-fun lm!2473 () ListLongMap!5341)

(declare-fun lambda!230441 () Int)

(declare-fun forall!12245 (List!54336 Int) Bool)

(assert (=> b!4791820 (= res!2036636 (not (forall!12245 (toList!6919 lm!2473) lambda!230441)))))

(declare-fun e!2991887 () Bool)

(assert (=> b!4791820 e!2991887))

(declare-fun res!2036638 () Bool)

(assert (=> b!4791820 (=> (not res!2036638) (not e!2991887))))

(declare-fun lt!1950893 () Bool)

(assert (=> b!4791820 (= res!2036638 (not lt!1950893))))

(declare-fun lt!1950895 () (_ BitVec 64))

(declare-fun contains!17819 (ListLongMap!5341 (_ BitVec 64)) Bool)

(assert (=> b!4791820 (= lt!1950893 (not (contains!17819 lm!2473 lt!1950895)))))

(declare-datatypes ((Hashable!6920 0))(
  ( (HashableExt!6919 (__x!32943 Int)) )
))
(declare-fun hashF!1559 () Hashable!6920)

(declare-fun key!5896 () K!15789)

(declare-fun hash!4952 (Hashable!6920 K!15789) (_ BitVec 64))

(assert (=> b!4791820 (= lt!1950895 (hash!4952 hashF!1559 key!5896))))

(declare-datatypes ((Unit!139918 0))(
  ( (Unit!139919) )
))
(declare-fun lt!1950890 () Unit!139918)

(declare-fun lemmaInGenericMapThenInLongMap!324 (ListLongMap!5341 K!15789 Hashable!6920) Unit!139918)

(assert (=> b!4791820 (= lt!1950890 (lemmaInGenericMapThenInLongMap!324 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791821 () Bool)

(declare-fun lt!1950891 () List!54335)

(declare-datatypes ((Option!13087 0))(
  ( (None!13086) (Some!13086 (v!48365 tuple2!56848)) )
))
(declare-fun isDefined!10229 (Option!13087) Bool)

(declare-fun getPair!892 (List!54335 K!15789) Option!13087)

(assert (=> b!4791821 (= e!2991889 (isDefined!10229 (getPair!892 lt!1950891 key!5896)))))

(declare-fun lt!1950889 () tuple2!56850)

(declare-fun lt!1950892 () Unit!139918)

(declare-fun forallContained!4153 (List!54336 Int tuple2!56850) Unit!139918)

(assert (=> b!4791821 (= lt!1950892 (forallContained!4153 (toList!6919 lm!2473) lambda!230441 lt!1950889))))

(declare-fun contains!17820 (List!54336 tuple2!56850) Bool)

(assert (=> b!4791821 (contains!17820 (toList!6919 lm!2473) lt!1950889)))

(assert (=> b!4791821 (= lt!1950889 (tuple2!56851 lt!1950895 lt!1950891))))

(declare-fun lt!1950894 () Unit!139918)

(declare-fun lemmaGetValueImpliesTupleContained!639 (ListLongMap!5341 (_ BitVec 64) List!54335) Unit!139918)

(assert (=> b!4791821 (= lt!1950894 (lemmaGetValueImpliesTupleContained!639 lm!2473 lt!1950895 lt!1950891))))

(declare-fun apply!12989 (ListLongMap!5341 (_ BitVec 64)) List!54335)

(assert (=> b!4791821 (= lt!1950891 (apply!12989 lm!2473 lt!1950895))))

(declare-fun b!4791822 () Bool)

(assert (=> b!4791822 (= e!2991887 (isDefined!10229 (getPair!892 (apply!12989 lm!2473 lt!1950895) key!5896)))))

(declare-fun b!4791823 () Bool)

(declare-fun res!2036635 () Bool)

(assert (=> b!4791823 (=> (not res!2036635) (not e!2991890))))

(declare-fun allKeysSameHashInMap!2325 (ListLongMap!5341 Hashable!6920) Bool)

(assert (=> b!4791823 (= res!2036635 (allKeysSameHashInMap!2325 lm!2473 hashF!1559))))

(declare-fun b!4791824 () Bool)

(declare-fun e!2991888 () Bool)

(declare-fun tp!1357990 () Bool)

(assert (=> b!4791824 (= e!2991888 tp!1357990)))

(declare-fun b!4791825 () Bool)

(declare-fun res!2036637 () Bool)

(assert (=> b!4791825 (=> (not res!2036637) (not e!2991890))))

(declare-datatypes ((ListMap!6391 0))(
  ( (ListMap!6392 (toList!6920 List!54335)) )
))
(declare-fun contains!17821 (ListMap!6391 K!15789) Bool)

(declare-fun extractMap!2447 (List!54336) ListMap!6391)

(assert (=> b!4791825 (= res!2036637 (contains!17821 (extractMap!2447 (toList!6919 lm!2473)) key!5896))))

(declare-fun b!4791826 () Bool)

(declare-fun res!2036634 () Bool)

(assert (=> b!4791826 (=> res!2036634 e!2991889)))

(assert (=> b!4791826 (= res!2036634 lt!1950893)))

(declare-fun res!2036633 () Bool)

(assert (=> start!493334 (=> (not res!2036633) (not e!2991890))))

(assert (=> start!493334 (= res!2036633 (forall!12245 (toList!6919 lm!2473) lambda!230441))))

(assert (=> start!493334 e!2991890))

(declare-fun inv!69815 (ListLongMap!5341) Bool)

(assert (=> start!493334 (and (inv!69815 lm!2473) e!2991888)))

(assert (=> start!493334 true))

(declare-fun tp_is_empty!33543 () Bool)

(assert (=> start!493334 tp_is_empty!33543))

(assert (= (and start!493334 res!2036633) b!4791823))

(assert (= (and b!4791823 res!2036635) b!4791825))

(assert (= (and b!4791825 res!2036637) b!4791820))

(assert (= (and b!4791820 res!2036638) b!4791822))

(assert (= (and b!4791820 (not res!2036636)) b!4791826))

(assert (= (and b!4791826 (not res!2036634)) b!4791821))

(assert (= start!493334 b!4791824))

(declare-fun m!5772482 () Bool)

(assert (=> b!4791820 m!5772482))

(declare-fun m!5772484 () Bool)

(assert (=> b!4791820 m!5772484))

(declare-fun m!5772486 () Bool)

(assert (=> b!4791820 m!5772486))

(declare-fun m!5772488 () Bool)

(assert (=> b!4791820 m!5772488))

(declare-fun m!5772490 () Bool)

(assert (=> b!4791823 m!5772490))

(assert (=> start!493334 m!5772482))

(declare-fun m!5772492 () Bool)

(assert (=> start!493334 m!5772492))

(declare-fun m!5772494 () Bool)

(assert (=> b!4791821 m!5772494))

(declare-fun m!5772496 () Bool)

(assert (=> b!4791821 m!5772496))

(declare-fun m!5772498 () Bool)

(assert (=> b!4791821 m!5772498))

(declare-fun m!5772500 () Bool)

(assert (=> b!4791821 m!5772500))

(declare-fun m!5772502 () Bool)

(assert (=> b!4791821 m!5772502))

(assert (=> b!4791821 m!5772498))

(declare-fun m!5772504 () Bool)

(assert (=> b!4791821 m!5772504))

(declare-fun m!5772506 () Bool)

(assert (=> b!4791825 m!5772506))

(assert (=> b!4791825 m!5772506))

(declare-fun m!5772508 () Bool)

(assert (=> b!4791825 m!5772508))

(assert (=> b!4791822 m!5772500))

(assert (=> b!4791822 m!5772500))

(declare-fun m!5772510 () Bool)

(assert (=> b!4791822 m!5772510))

(assert (=> b!4791822 m!5772510))

(declare-fun m!5772512 () Bool)

(assert (=> b!4791822 m!5772512))

(check-sat (not start!493334) (not b!4791822) tp_is_empty!33543 (not b!4791823) (not b!4791825) (not b!4791820) (not b!4791824) (not b!4791821))
(check-sat)
