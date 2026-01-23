; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!441338 () Bool)

(assert start!441338)

(declare-fun b!4483481 () Bool)

(declare-fun e!2792467 () Bool)

(declare-fun e!2792468 () Bool)

(assert (=> b!4483481 (= e!2792467 (not e!2792468))))

(declare-fun res!1861821 () Bool)

(assert (=> b!4483481 (=> res!1861821 e!2792468)))

(declare-datatypes ((K!11818 0))(
  ( (K!11819 (val!17725 Int)) )
))
(declare-datatypes ((V!12064 0))(
  ( (V!12065 (val!17726 Int)) )
))
(declare-datatypes ((tuple2!50718 0))(
  ( (tuple2!50719 (_1!28653 K!11818) (_2!28653 V!12064)) )
))
(declare-datatypes ((List!50532 0))(
  ( (Nil!50408) (Cons!50408 (h!56201 tuple2!50718) (t!357486 List!50532)) )
))
(declare-fun lt!1669757 () List!50532)

(declare-fun key!3287 () K!11818)

(declare-fun newBucket!178 () List!50532)

(declare-fun removePairForKey!698 (List!50532 K!11818) List!50532)

(assert (=> b!4483481 (= res!1861821 (not (= newBucket!178 (removePairForKey!698 lt!1669757 key!3287))))))

(declare-datatypes ((Unit!89965 0))(
  ( (Unit!89966) )
))
(declare-fun lt!1669756 () Unit!89965)

(declare-datatypes ((tuple2!50720 0))(
  ( (tuple2!50721 (_1!28654 (_ BitVec 64)) (_2!28654 List!50532)) )
))
(declare-fun lt!1669758 () tuple2!50720)

(declare-fun lambda!165940 () Int)

(declare-datatypes ((List!50533 0))(
  ( (Nil!50409) (Cons!50409 (h!56202 tuple2!50720) (t!357487 List!50533)) )
))
(declare-datatypes ((ListLongMap!2781 0))(
  ( (ListLongMap!2782 (toList!4149 List!50533)) )
))
(declare-fun lm!1477 () ListLongMap!2781)

(declare-fun forallContained!2338 (List!50533 Int tuple2!50720) Unit!89965)

(assert (=> b!4483481 (= lt!1669756 (forallContained!2338 (toList!4149 lm!1477) lambda!165940 lt!1669758))))

(declare-fun contains!13012 (List!50533 tuple2!50720) Bool)

(assert (=> b!4483481 (contains!13012 (toList!4149 lm!1477) lt!1669758)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4483481 (= lt!1669758 (tuple2!50721 hash!344 lt!1669757))))

(declare-fun lt!1669760 () Unit!89965)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!583 (List!50533 (_ BitVec 64) List!50532) Unit!89965)

(assert (=> b!4483481 (= lt!1669760 (lemmaGetValueByKeyImpliesContainsTuple!583 (toList!4149 lm!1477) hash!344 lt!1669757))))

(declare-fun apply!11808 (ListLongMap!2781 (_ BitVec 64)) List!50532)

(assert (=> b!4483481 (= lt!1669757 (apply!11808 lm!1477 hash!344))))

(declare-fun lt!1669759 () (_ BitVec 64))

(declare-fun contains!13013 (ListLongMap!2781 (_ BitVec 64)) Bool)

(assert (=> b!4483481 (contains!13013 lm!1477 lt!1669759)))

(declare-datatypes ((Hashable!5466 0))(
  ( (HashableExt!5465 (__x!31169 Int)) )
))
(declare-fun hashF!1107 () Hashable!5466)

(declare-fun lt!1669755 () Unit!89965)

(declare-fun lemmaInGenMapThenLongMapContainsHash!145 (ListLongMap!2781 K!11818 Hashable!5466) Unit!89965)

(assert (=> b!4483481 (= lt!1669755 (lemmaInGenMapThenLongMapContainsHash!145 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4483482 () Bool)

(declare-fun res!1861822 () Bool)

(declare-fun e!2792466 () Bool)

(assert (=> b!4483482 (=> (not res!1861822) (not e!2792466))))

(declare-fun allKeysSameHashInMap!1178 (ListLongMap!2781 Hashable!5466) Bool)

(assert (=> b!4483482 (= res!1861822 (allKeysSameHashInMap!1178 lm!1477 hashF!1107))))

(declare-fun b!4483483 () Bool)

(declare-fun res!1861820 () Bool)

(assert (=> b!4483483 (=> res!1861820 e!2792468)))

(declare-fun noDuplicateKeys!1071 (List!50532) Bool)

(assert (=> b!4483483 (= res!1861820 (not (noDuplicateKeys!1071 newBucket!178)))))

(declare-fun b!4483484 () Bool)

(declare-fun res!1861823 () Bool)

(assert (=> b!4483484 (=> (not res!1861823) (not e!2792467))))

(declare-fun allKeysSameHash!925 (List!50532 (_ BitVec 64) Hashable!5466) Bool)

(assert (=> b!4483484 (= res!1861823 (allKeysSameHash!925 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4483485 () Bool)

(assert (=> b!4483485 (= e!2792466 e!2792467)))

(declare-fun res!1861825 () Bool)

(assert (=> b!4483485 (=> (not res!1861825) (not e!2792467))))

(assert (=> b!4483485 (= res!1861825 (= lt!1669759 hash!344))))

(declare-fun hash!2574 (Hashable!5466 K!11818) (_ BitVec 64))

(assert (=> b!4483485 (= lt!1669759 (hash!2574 hashF!1107 key!3287))))

(declare-fun tp_is_empty!27563 () Bool)

(declare-fun b!4483487 () Bool)

(declare-fun tp!1336834 () Bool)

(declare-fun e!2792470 () Bool)

(declare-fun tp_is_empty!27561 () Bool)

(assert (=> b!4483487 (= e!2792470 (and tp_is_empty!27561 tp_is_empty!27563 tp!1336834))))

(declare-fun b!4483488 () Bool)

(assert (=> b!4483488 (= e!2792468 true)))

(declare-fun lt!1669761 () Bool)

(declare-fun tail!7586 (ListLongMap!2781) ListLongMap!2781)

(assert (=> b!4483488 (= lt!1669761 (contains!13013 (tail!7586 lm!1477) hash!344))))

(declare-fun b!4483489 () Bool)

(declare-fun res!1861824 () Bool)

(assert (=> b!4483489 (=> res!1861824 e!2792468)))

(assert (=> b!4483489 (= res!1861824 (or (is-Nil!50409 (toList!4149 lm!1477)) (= (_1!28654 (h!56202 (toList!4149 lm!1477))) hash!344)))))

(declare-fun b!4483490 () Bool)

(declare-fun res!1861826 () Bool)

(assert (=> b!4483490 (=> (not res!1861826) (not e!2792466))))

(declare-datatypes ((ListMap!3411 0))(
  ( (ListMap!3412 (toList!4150 List!50532)) )
))
(declare-fun contains!13014 (ListMap!3411 K!11818) Bool)

(declare-fun extractMap!1127 (List!50533) ListMap!3411)

(assert (=> b!4483490 (= res!1861826 (contains!13014 (extractMap!1127 (toList!4149 lm!1477)) key!3287))))

(declare-fun res!1861819 () Bool)

(assert (=> start!441338 (=> (not res!1861819) (not e!2792466))))

(declare-fun forall!10077 (List!50533 Int) Bool)

(assert (=> start!441338 (= res!1861819 (forall!10077 (toList!4149 lm!1477) lambda!165940))))

(assert (=> start!441338 e!2792466))

(assert (=> start!441338 true))

(declare-fun e!2792469 () Bool)

(declare-fun inv!66003 (ListLongMap!2781) Bool)

(assert (=> start!441338 (and (inv!66003 lm!1477) e!2792469)))

(assert (=> start!441338 tp_is_empty!27561))

(assert (=> start!441338 e!2792470))

(declare-fun b!4483486 () Bool)

(declare-fun tp!1336835 () Bool)

(assert (=> b!4483486 (= e!2792469 tp!1336835)))

(assert (= (and start!441338 res!1861819) b!4483482))

(assert (= (and b!4483482 res!1861822) b!4483490))

(assert (= (and b!4483490 res!1861826) b!4483485))

(assert (= (and b!4483485 res!1861825) b!4483484))

(assert (= (and b!4483484 res!1861823) b!4483481))

(assert (= (and b!4483481 (not res!1861821)) b!4483483))

(assert (= (and b!4483483 (not res!1861820)) b!4483489))

(assert (= (and b!4483489 (not res!1861824)) b!4483488))

(assert (= start!441338 b!4483486))

(assert (= (and start!441338 (is-Cons!50408 newBucket!178)) b!4483487))

(declare-fun m!5204031 () Bool)

(assert (=> start!441338 m!5204031))

(declare-fun m!5204033 () Bool)

(assert (=> start!441338 m!5204033))

(declare-fun m!5204035 () Bool)

(assert (=> b!4483488 m!5204035))

(assert (=> b!4483488 m!5204035))

(declare-fun m!5204037 () Bool)

(assert (=> b!4483488 m!5204037))

(declare-fun m!5204039 () Bool)

(assert (=> b!4483484 m!5204039))

(declare-fun m!5204041 () Bool)

(assert (=> b!4483483 m!5204041))

(declare-fun m!5204043 () Bool)

(assert (=> b!4483485 m!5204043))

(declare-fun m!5204045 () Bool)

(assert (=> b!4483490 m!5204045))

(assert (=> b!4483490 m!5204045))

(declare-fun m!5204047 () Bool)

(assert (=> b!4483490 m!5204047))

(declare-fun m!5204049 () Bool)

(assert (=> b!4483481 m!5204049))

(declare-fun m!5204051 () Bool)

(assert (=> b!4483481 m!5204051))

(declare-fun m!5204053 () Bool)

(assert (=> b!4483481 m!5204053))

(declare-fun m!5204055 () Bool)

(assert (=> b!4483481 m!5204055))

(declare-fun m!5204057 () Bool)

(assert (=> b!4483481 m!5204057))

(declare-fun m!5204059 () Bool)

(assert (=> b!4483481 m!5204059))

(declare-fun m!5204061 () Bool)

(assert (=> b!4483481 m!5204061))

(declare-fun m!5204063 () Bool)

(assert (=> b!4483482 m!5204063))

(push 1)

(assert (not b!4483485))

(assert (not b!4483488))

(assert (not b!4483487))

(assert (not b!4483486))

(assert (not b!4483483))

(assert (not b!4483482))

(assert (not b!4483481))

(assert (not b!4483484))

(assert (not start!441338))

(assert tp_is_empty!27561)

(assert tp_is_empty!27563)

(assert (not b!4483490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

