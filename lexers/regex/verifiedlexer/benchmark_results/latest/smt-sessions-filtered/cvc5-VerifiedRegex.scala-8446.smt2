; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437590 () Bool)

(assert start!437590)

(declare-fun b!4461852 () Bool)

(declare-fun res!1850465 () Bool)

(declare-fun e!2778372 () Bool)

(assert (=> b!4461852 (=> res!1850465 e!2778372)))

(declare-datatypes ((K!11633 0))(
  ( (K!11634 (val!17577 Int)) )
))
(declare-datatypes ((V!11879 0))(
  ( (V!11880 (val!17578 Int)) )
))
(declare-datatypes ((tuple2!50422 0))(
  ( (tuple2!50423 (_1!28505 K!11633) (_2!28505 V!11879)) )
))
(declare-datatypes ((List!50338 0))(
  ( (Nil!50214) (Cons!50214 (h!55961 tuple2!50422) (t!357288 List!50338)) )
))
(declare-fun newBucket!178 () List!50338)

(declare-fun noDuplicateKeys!997 (List!50338) Bool)

(assert (=> b!4461852 (= res!1850465 (not (noDuplicateKeys!997 newBucket!178)))))

(declare-fun b!4461853 () Bool)

(declare-fun e!2778376 () Bool)

(assert (=> b!4461853 (= e!2778376 (not e!2778372))))

(declare-fun res!1850460 () Bool)

(assert (=> b!4461853 (=> res!1850460 e!2778372)))

(declare-fun lt!1652796 () List!50338)

(declare-fun key!3287 () K!11633)

(declare-fun removePairForKey!624 (List!50338 K!11633) List!50338)

(assert (=> b!4461853 (= res!1850460 (not (= newBucket!178 (removePairForKey!624 lt!1652796 key!3287))))))

(declare-datatypes ((Unit!86875 0))(
  ( (Unit!86876) )
))
(declare-fun lt!1652797 () Unit!86875)

(declare-datatypes ((tuple2!50424 0))(
  ( (tuple2!50425 (_1!28506 (_ BitVec 64)) (_2!28506 List!50338)) )
))
(declare-fun lt!1652798 () tuple2!50424)

(declare-datatypes ((List!50339 0))(
  ( (Nil!50215) (Cons!50215 (h!55962 tuple2!50424) (t!357289 List!50339)) )
))
(declare-datatypes ((ListLongMap!2633 0))(
  ( (ListLongMap!2634 (toList!4001 List!50339)) )
))
(declare-fun lm!1477 () ListLongMap!2633)

(declare-fun lambda!161946 () Int)

(declare-fun forallContained!2214 (List!50339 Int tuple2!50424) Unit!86875)

(assert (=> b!4461853 (= lt!1652797 (forallContained!2214 (toList!4001 lm!1477) lambda!161946 lt!1652798))))

(declare-fun contains!12728 (List!50339 tuple2!50424) Bool)

(assert (=> b!4461853 (contains!12728 (toList!4001 lm!1477) lt!1652798)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4461853 (= lt!1652798 (tuple2!50425 hash!344 lt!1652796))))

(declare-fun lt!1652793 () Unit!86875)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!509 (List!50339 (_ BitVec 64) List!50338) Unit!86875)

(assert (=> b!4461853 (= lt!1652793 (lemmaGetValueByKeyImpliesContainsTuple!509 (toList!4001 lm!1477) hash!344 lt!1652796))))

(declare-fun apply!11734 (ListLongMap!2633 (_ BitVec 64)) List!50338)

(assert (=> b!4461853 (= lt!1652796 (apply!11734 lm!1477 hash!344))))

(declare-fun lt!1652794 () (_ BitVec 64))

(declare-fun contains!12729 (ListLongMap!2633 (_ BitVec 64)) Bool)

(assert (=> b!4461853 (contains!12729 lm!1477 lt!1652794)))

(declare-datatypes ((Hashable!5392 0))(
  ( (HashableExt!5391 (__x!31095 Int)) )
))
(declare-fun hashF!1107 () Hashable!5392)

(declare-fun lt!1652795 () Unit!86875)

(declare-fun lemmaInGenMapThenLongMapContainsHash!71 (ListLongMap!2633 K!11633 Hashable!5392) Unit!86875)

(assert (=> b!4461853 (= lt!1652795 (lemmaInGenMapThenLongMapContainsHash!71 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4461854 () Bool)

(declare-fun res!1850468 () Bool)

(assert (=> b!4461854 (=> res!1850468 e!2778372)))

(declare-fun containsKey!1409 (List!50338 K!11633) Bool)

(assert (=> b!4461854 (= res!1850468 (containsKey!1409 (_2!28506 (h!55962 (toList!4001 lm!1477))) key!3287))))

(declare-fun b!4461855 () Bool)

(declare-fun res!1850462 () Bool)

(declare-fun e!2778374 () Bool)

(assert (=> b!4461855 (=> (not res!1850462) (not e!2778374))))

(declare-datatypes ((ListMap!3263 0))(
  ( (ListMap!3264 (toList!4002 List!50338)) )
))
(declare-fun contains!12730 (ListMap!3263 K!11633) Bool)

(declare-fun extractMap!1053 (List!50339) ListMap!3263)

(assert (=> b!4461855 (= res!1850462 (contains!12730 (extractMap!1053 (toList!4001 lm!1477)) key!3287))))

(declare-fun b!4461856 () Bool)

(declare-fun res!1850458 () Bool)

(assert (=> b!4461856 (=> (not res!1850458) (not e!2778374))))

(declare-fun allKeysSameHashInMap!1104 (ListLongMap!2633 Hashable!5392) Bool)

(assert (=> b!4461856 (= res!1850458 (allKeysSameHashInMap!1104 lm!1477 hashF!1107))))

(declare-fun b!4461858 () Bool)

(declare-fun res!1850466 () Bool)

(assert (=> b!4461858 (=> res!1850466 e!2778372)))

(assert (=> b!4461858 (= res!1850466 (or (is-Nil!50215 (toList!4001 lm!1477)) (not (= (_1!28506 (h!55962 (toList!4001 lm!1477))) hash!344))))))

(declare-fun b!4461859 () Bool)

(declare-fun res!1850463 () Bool)

(assert (=> b!4461859 (=> res!1850463 e!2778372)))

(assert (=> b!4461859 (= res!1850463 (containsKey!1409 (apply!11734 lm!1477 lt!1652794) key!3287))))

(declare-fun b!4461860 () Bool)

(declare-fun forall!9939 (List!50339 Int) Bool)

(assert (=> b!4461860 (= e!2778372 (forall!9939 (toList!4001 lm!1477) lambda!161946))))

(declare-fun tp!1335886 () Bool)

(declare-fun e!2778373 () Bool)

(declare-fun tp_is_empty!27265 () Bool)

(declare-fun tp_is_empty!27267 () Bool)

(declare-fun b!4461861 () Bool)

(assert (=> b!4461861 (= e!2778373 (and tp_is_empty!27265 tp_is_empty!27267 tp!1335886))))

(declare-fun b!4461862 () Bool)

(assert (=> b!4461862 (= e!2778374 e!2778376)))

(declare-fun res!1850467 () Bool)

(assert (=> b!4461862 (=> (not res!1850467) (not e!2778376))))

(assert (=> b!4461862 (= res!1850467 (= lt!1652794 hash!344))))

(declare-fun hash!2380 (Hashable!5392 K!11633) (_ BitVec 64))

(assert (=> b!4461862 (= lt!1652794 (hash!2380 hashF!1107 key!3287))))

(declare-fun b!4461863 () Bool)

(declare-fun res!1850459 () Bool)

(assert (=> b!4461863 (=> res!1850459 e!2778372)))

(assert (=> b!4461863 (= res!1850459 (not (forall!9939 (toList!4001 lm!1477) lambda!161946)))))

(declare-fun b!4461864 () Bool)

(declare-fun e!2778375 () Bool)

(declare-fun tp!1335887 () Bool)

(assert (=> b!4461864 (= e!2778375 tp!1335887)))

(declare-fun b!4461857 () Bool)

(declare-fun res!1850464 () Bool)

(assert (=> b!4461857 (=> (not res!1850464) (not e!2778376))))

(declare-fun allKeysSameHash!851 (List!50338 (_ BitVec 64) Hashable!5392) Bool)

(assert (=> b!4461857 (= res!1850464 (allKeysSameHash!851 newBucket!178 hash!344 hashF!1107))))

(declare-fun res!1850461 () Bool)

(assert (=> start!437590 (=> (not res!1850461) (not e!2778374))))

(assert (=> start!437590 (= res!1850461 (forall!9939 (toList!4001 lm!1477) lambda!161946))))

(assert (=> start!437590 e!2778374))

(assert (=> start!437590 true))

(declare-fun inv!65818 (ListLongMap!2633) Bool)

(assert (=> start!437590 (and (inv!65818 lm!1477) e!2778375)))

(assert (=> start!437590 tp_is_empty!27265))

(assert (=> start!437590 e!2778373))

(assert (= (and start!437590 res!1850461) b!4461856))

(assert (= (and b!4461856 res!1850458) b!4461855))

(assert (= (and b!4461855 res!1850462) b!4461862))

(assert (= (and b!4461862 res!1850467) b!4461857))

(assert (= (and b!4461857 res!1850464) b!4461853))

(assert (= (and b!4461853 (not res!1850460)) b!4461852))

(assert (= (and b!4461852 (not res!1850465)) b!4461858))

(assert (= (and b!4461858 (not res!1850466)) b!4461854))

(assert (= (and b!4461854 (not res!1850468)) b!4461863))

(assert (= (and b!4461863 (not res!1850459)) b!4461859))

(assert (= (and b!4461859 (not res!1850463)) b!4461860))

(assert (= start!437590 b!4461864))

(assert (= (and start!437590 (is-Cons!50214 newBucket!178)) b!4461861))

(declare-fun m!5164857 () Bool)

(assert (=> b!4461860 m!5164857))

(assert (=> b!4461863 m!5164857))

(declare-fun m!5164859 () Bool)

(assert (=> b!4461857 m!5164859))

(declare-fun m!5164861 () Bool)

(assert (=> b!4461859 m!5164861))

(assert (=> b!4461859 m!5164861))

(declare-fun m!5164863 () Bool)

(assert (=> b!4461859 m!5164863))

(declare-fun m!5164865 () Bool)

(assert (=> b!4461855 m!5164865))

(assert (=> b!4461855 m!5164865))

(declare-fun m!5164867 () Bool)

(assert (=> b!4461855 m!5164867))

(declare-fun m!5164869 () Bool)

(assert (=> b!4461852 m!5164869))

(declare-fun m!5164871 () Bool)

(assert (=> b!4461862 m!5164871))

(declare-fun m!5164873 () Bool)

(assert (=> b!4461853 m!5164873))

(declare-fun m!5164875 () Bool)

(assert (=> b!4461853 m!5164875))

(declare-fun m!5164877 () Bool)

(assert (=> b!4461853 m!5164877))

(declare-fun m!5164879 () Bool)

(assert (=> b!4461853 m!5164879))

(declare-fun m!5164881 () Bool)

(assert (=> b!4461853 m!5164881))

(declare-fun m!5164883 () Bool)

(assert (=> b!4461853 m!5164883))

(declare-fun m!5164885 () Bool)

(assert (=> b!4461853 m!5164885))

(declare-fun m!5164887 () Bool)

(assert (=> b!4461856 m!5164887))

(assert (=> start!437590 m!5164857))

(declare-fun m!5164889 () Bool)

(assert (=> start!437590 m!5164889))

(declare-fun m!5164891 () Bool)

(assert (=> b!4461854 m!5164891))

(push 1)

(assert (not start!437590))

(assert (not b!4461854))

(assert (not b!4461860))

(assert (not b!4461864))

(assert tp_is_empty!27267)

(assert (not b!4461862))

(assert (not b!4461861))

(assert (not b!4461853))

(assert (not b!4461859))

(assert (not b!4461863))

(assert (not b!4461857))

(assert (not b!4461852))

(assert (not b!4461855))

(assert (not b!4461856))

(assert tp_is_empty!27265)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

