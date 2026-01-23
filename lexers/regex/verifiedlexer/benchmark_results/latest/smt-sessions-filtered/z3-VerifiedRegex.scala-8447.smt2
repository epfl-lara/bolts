; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437596 () Bool)

(assert start!437596)

(declare-fun b!4461969 () Bool)

(declare-fun res!1850565 () Bool)

(declare-fun e!2778420 () Bool)

(assert (=> b!4461969 (=> (not res!1850565) (not e!2778420))))

(declare-datatypes ((K!11640 0))(
  ( (K!11641 (val!17583 Int)) )
))
(declare-datatypes ((V!11886 0))(
  ( (V!11887 (val!17584 Int)) )
))
(declare-datatypes ((tuple2!50434 0))(
  ( (tuple2!50435 (_1!28511 K!11640) (_2!28511 V!11886)) )
))
(declare-datatypes ((List!50344 0))(
  ( (Nil!50220) (Cons!50220 (h!55967 tuple2!50434) (t!357294 List!50344)) )
))
(declare-datatypes ((tuple2!50436 0))(
  ( (tuple2!50437 (_1!28512 (_ BitVec 64)) (_2!28512 List!50344)) )
))
(declare-datatypes ((List!50345 0))(
  ( (Nil!50221) (Cons!50221 (h!55968 tuple2!50436) (t!357295 List!50345)) )
))
(declare-datatypes ((ListLongMap!2639 0))(
  ( (ListLongMap!2640 (toList!4007 List!50345)) )
))
(declare-fun lm!1477 () ListLongMap!2639)

(declare-fun key!3287 () K!11640)

(declare-datatypes ((ListMap!3269 0))(
  ( (ListMap!3270 (toList!4008 List!50344)) )
))
(declare-fun contains!12737 (ListMap!3269 K!11640) Bool)

(declare-fun extractMap!1056 (List!50345) ListMap!3269)

(assert (=> b!4461969 (= res!1850565 (contains!12737 (extractMap!1056 (toList!4007 lm!1477)) key!3287))))

(declare-fun b!4461970 () Bool)

(declare-fun e!2778417 () Bool)

(declare-fun e!2778418 () Bool)

(assert (=> b!4461970 (= e!2778417 (not e!2778418))))

(declare-fun res!1850560 () Bool)

(assert (=> b!4461970 (=> res!1850560 e!2778418)))

(declare-fun lt!1652852 () List!50344)

(declare-fun newBucket!178 () List!50344)

(declare-fun removePairForKey!627 (List!50344 K!11640) List!50344)

(assert (=> b!4461970 (= res!1850560 (not (= newBucket!178 (removePairForKey!627 lt!1652852 key!3287))))))

(declare-fun lt!1652849 () tuple2!50436)

(declare-datatypes ((Unit!86881 0))(
  ( (Unit!86882) )
))
(declare-fun lt!1652851 () Unit!86881)

(declare-fun lambda!161969 () Int)

(declare-fun forallContained!2217 (List!50345 Int tuple2!50436) Unit!86881)

(assert (=> b!4461970 (= lt!1652851 (forallContained!2217 (toList!4007 lm!1477) lambda!161969 lt!1652849))))

(declare-fun contains!12738 (List!50345 tuple2!50436) Bool)

(assert (=> b!4461970 (contains!12738 (toList!4007 lm!1477) lt!1652849)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4461970 (= lt!1652849 (tuple2!50437 hash!344 lt!1652852))))

(declare-fun lt!1652848 () Unit!86881)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!512 (List!50345 (_ BitVec 64) List!50344) Unit!86881)

(assert (=> b!4461970 (= lt!1652848 (lemmaGetValueByKeyImpliesContainsTuple!512 (toList!4007 lm!1477) hash!344 lt!1652852))))

(declare-fun apply!11737 (ListLongMap!2639 (_ BitVec 64)) List!50344)

(assert (=> b!4461970 (= lt!1652852 (apply!11737 lm!1477 hash!344))))

(declare-fun lt!1652850 () (_ BitVec 64))

(declare-fun contains!12739 (ListLongMap!2639 (_ BitVec 64)) Bool)

(assert (=> b!4461970 (contains!12739 lm!1477 lt!1652850)))

(declare-datatypes ((Hashable!5395 0))(
  ( (HashableExt!5394 (__x!31098 Int)) )
))
(declare-fun hashF!1107 () Hashable!5395)

(declare-fun lt!1652847 () Unit!86881)

(declare-fun lemmaInGenMapThenLongMapContainsHash!74 (ListLongMap!2639 K!11640 Hashable!5395) Unit!86881)

(assert (=> b!4461970 (= lt!1652847 (lemmaInGenMapThenLongMapContainsHash!74 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4461971 () Bool)

(assert (=> b!4461971 (= e!2778420 e!2778417)))

(declare-fun res!1850563 () Bool)

(assert (=> b!4461971 (=> (not res!1850563) (not e!2778417))))

(assert (=> b!4461971 (= res!1850563 (= lt!1652850 hash!344))))

(declare-fun hash!2383 (Hashable!5395 K!11640) (_ BitVec 64))

(assert (=> b!4461971 (= lt!1652850 (hash!2383 hashF!1107 key!3287))))

(declare-fun res!1850559 () Bool)

(assert (=> start!437596 (=> (not res!1850559) (not e!2778420))))

(declare-fun forall!9942 (List!50345 Int) Bool)

(assert (=> start!437596 (= res!1850559 (forall!9942 (toList!4007 lm!1477) lambda!161969))))

(assert (=> start!437596 e!2778420))

(assert (=> start!437596 true))

(declare-fun e!2778419 () Bool)

(declare-fun inv!65824 (ListLongMap!2639) Bool)

(assert (=> start!437596 (and (inv!65824 lm!1477) e!2778419)))

(declare-fun tp_is_empty!27277 () Bool)

(assert (=> start!437596 tp_is_empty!27277))

(declare-fun e!2778421 () Bool)

(assert (=> start!437596 e!2778421))

(declare-fun b!4461972 () Bool)

(declare-fun tp!1335905 () Bool)

(assert (=> b!4461972 (= e!2778419 tp!1335905)))

(declare-fun b!4461973 () Bool)

(declare-fun res!1850567 () Bool)

(assert (=> b!4461973 (=> res!1850567 e!2778418)))

(declare-fun containsKey!1412 (List!50344 K!11640) Bool)

(assert (=> b!4461973 (= res!1850567 (containsKey!1412 (apply!11737 lm!1477 lt!1652850) key!3287))))

(declare-fun b!4461974 () Bool)

(declare-fun tp!1335904 () Bool)

(declare-fun tp_is_empty!27279 () Bool)

(assert (=> b!4461974 (= e!2778421 (and tp_is_empty!27277 tp_is_empty!27279 tp!1335904))))

(declare-fun b!4461975 () Bool)

(declare-fun res!1850562 () Bool)

(assert (=> b!4461975 (=> (not res!1850562) (not e!2778420))))

(declare-fun allKeysSameHashInMap!1107 (ListLongMap!2639 Hashable!5395) Bool)

(assert (=> b!4461975 (= res!1850562 (allKeysSameHashInMap!1107 lm!1477 hashF!1107))))

(declare-fun b!4461976 () Bool)

(declare-fun res!1850557 () Bool)

(assert (=> b!4461976 (=> (not res!1850557) (not e!2778417))))

(declare-fun allKeysSameHash!854 (List!50344 (_ BitVec 64) Hashable!5395) Bool)

(assert (=> b!4461976 (= res!1850557 (allKeysSameHash!854 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4461977 () Bool)

(declare-fun res!1850564 () Bool)

(assert (=> b!4461977 (=> res!1850564 e!2778418)))

(assert (=> b!4461977 (= res!1850564 (containsKey!1412 (_2!28512 (h!55968 (toList!4007 lm!1477))) key!3287))))

(declare-fun b!4461978 () Bool)

(declare-fun res!1850561 () Bool)

(assert (=> b!4461978 (=> res!1850561 e!2778418)))

(assert (=> b!4461978 (= res!1850561 (not (forall!9942 (toList!4007 lm!1477) lambda!161969)))))

(declare-fun b!4461979 () Bool)

(declare-fun res!1850558 () Bool)

(assert (=> b!4461979 (=> res!1850558 e!2778418)))

(declare-fun noDuplicateKeys!1000 (List!50344) Bool)

(assert (=> b!4461979 (= res!1850558 (not (noDuplicateKeys!1000 newBucket!178)))))

(declare-fun b!4461980 () Bool)

(declare-fun res!1850566 () Bool)

(assert (=> b!4461980 (=> res!1850566 e!2778418)))

(get-info :version)

(assert (=> b!4461980 (= res!1850566 (or ((_ is Nil!50221) (toList!4007 lm!1477)) (not (= (_1!28512 (h!55968 (toList!4007 lm!1477))) hash!344))))))

(declare-fun b!4461981 () Bool)

(assert (=> b!4461981 (= e!2778418 true)))

(assert (= (and start!437596 res!1850559) b!4461975))

(assert (= (and b!4461975 res!1850562) b!4461969))

(assert (= (and b!4461969 res!1850565) b!4461971))

(assert (= (and b!4461971 res!1850563) b!4461976))

(assert (= (and b!4461976 res!1850557) b!4461970))

(assert (= (and b!4461970 (not res!1850560)) b!4461979))

(assert (= (and b!4461979 (not res!1850558)) b!4461980))

(assert (= (and b!4461980 (not res!1850566)) b!4461977))

(assert (= (and b!4461977 (not res!1850564)) b!4461978))

(assert (= (and b!4461978 (not res!1850561)) b!4461973))

(assert (= (and b!4461973 (not res!1850567)) b!4461981))

(assert (= start!437596 b!4461972))

(assert (= (and start!437596 ((_ is Cons!50220) newBucket!178)) b!4461974))

(declare-fun m!5164965 () Bool)

(assert (=> b!4461970 m!5164965))

(declare-fun m!5164967 () Bool)

(assert (=> b!4461970 m!5164967))

(declare-fun m!5164969 () Bool)

(assert (=> b!4461970 m!5164969))

(declare-fun m!5164971 () Bool)

(assert (=> b!4461970 m!5164971))

(declare-fun m!5164973 () Bool)

(assert (=> b!4461970 m!5164973))

(declare-fun m!5164975 () Bool)

(assert (=> b!4461970 m!5164975))

(declare-fun m!5164977 () Bool)

(assert (=> b!4461970 m!5164977))

(declare-fun m!5164979 () Bool)

(assert (=> b!4461973 m!5164979))

(assert (=> b!4461973 m!5164979))

(declare-fun m!5164981 () Bool)

(assert (=> b!4461973 m!5164981))

(declare-fun m!5164983 () Bool)

(assert (=> b!4461969 m!5164983))

(assert (=> b!4461969 m!5164983))

(declare-fun m!5164985 () Bool)

(assert (=> b!4461969 m!5164985))

(declare-fun m!5164987 () Bool)

(assert (=> b!4461978 m!5164987))

(declare-fun m!5164989 () Bool)

(assert (=> b!4461979 m!5164989))

(assert (=> start!437596 m!5164987))

(declare-fun m!5164991 () Bool)

(assert (=> start!437596 m!5164991))

(declare-fun m!5164993 () Bool)

(assert (=> b!4461976 m!5164993))

(declare-fun m!5164995 () Bool)

(assert (=> b!4461975 m!5164995))

(declare-fun m!5164997 () Bool)

(assert (=> b!4461977 m!5164997))

(declare-fun m!5164999 () Bool)

(assert (=> b!4461971 m!5164999))

(check-sat (not b!4461970) (not start!437596) (not b!4461974) (not b!4461973) (not b!4461972) (not b!4461969) (not b!4461978) (not b!4461971) (not b!4461976) (not b!4461977) tp_is_empty!27279 tp_is_empty!27277 (not b!4461975) (not b!4461979))
(check-sat)
