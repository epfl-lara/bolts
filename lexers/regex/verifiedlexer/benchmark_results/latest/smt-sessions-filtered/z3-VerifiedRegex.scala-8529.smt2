; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!447772 () Bool)

(assert start!447772)

(declare-fun b!4521684 () Bool)

(declare-fun res!1882068 () Bool)

(declare-fun e!2817166 () Bool)

(assert (=> b!4521684 (=> res!1882068 e!2817166)))

(declare-datatypes ((K!12050 0))(
  ( (K!12051 (val!17911 Int)) )
))
(declare-datatypes ((V!12296 0))(
  ( (V!12297 (val!17912 Int)) )
))
(declare-datatypes ((tuple2!51090 0))(
  ( (tuple2!51091 (_1!28839 K!12050) (_2!28839 V!12296)) )
))
(declare-datatypes ((List!50780 0))(
  ( (Nil!50656) (Cons!50656 (h!56511 tuple2!51090) (t!357742 List!50780)) )
))
(declare-datatypes ((tuple2!51092 0))(
  ( (tuple2!51093 (_1!28840 (_ BitVec 64)) (_2!28840 List!50780)) )
))
(declare-datatypes ((List!50781 0))(
  ( (Nil!50657) (Cons!50657 (h!56512 tuple2!51092) (t!357743 List!50781)) )
))
(declare-datatypes ((ListLongMap!2967 0))(
  ( (ListLongMap!2968 (toList!4335 List!50781)) )
))
(declare-fun lm!1477 () ListLongMap!2967)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4521684 (= res!1882068 (or ((_ is Nil!50657) (toList!4335 lm!1477)) (= (_1!28840 (h!56512 (toList!4335 lm!1477))) hash!344)))))

(declare-fun tp!1338130 () Bool)

(declare-fun tp_is_empty!27935 () Bool)

(declare-fun b!4521685 () Bool)

(declare-fun e!2817165 () Bool)

(declare-fun tp_is_empty!27933 () Bool)

(assert (=> b!4521685 (= e!2817165 (and tp_is_empty!27933 tp_is_empty!27935 tp!1338130))))

(declare-fun b!4521686 () Bool)

(declare-fun res!1882057 () Bool)

(declare-fun e!2817162 () Bool)

(assert (=> b!4521686 (=> (not res!1882057) (not e!2817162))))

(declare-datatypes ((Hashable!5559 0))(
  ( (HashableExt!5558 (__x!31262 Int)) )
))
(declare-fun hashF!1107 () Hashable!5559)

(declare-fun newBucket!178 () List!50780)

(declare-fun allKeysSameHash!1018 (List!50780 (_ BitVec 64) Hashable!5559) Bool)

(assert (=> b!4521686 (= res!1882057 (allKeysSameHash!1018 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4521687 () Bool)

(declare-fun e!2817153 () Bool)

(declare-fun e!2817167 () Bool)

(assert (=> b!4521687 (= e!2817153 e!2817167)))

(declare-fun res!1882050 () Bool)

(assert (=> b!4521687 (=> res!1882050 e!2817167)))

(declare-datatypes ((ListMap!3597 0))(
  ( (ListMap!3598 (toList!4336 List!50780)) )
))
(declare-fun lt!1698605 () ListMap!3597)

(declare-fun lt!1698589 () ListMap!3597)

(declare-fun eq!621 (ListMap!3597 ListMap!3597) Bool)

(assert (=> b!4521687 (= res!1882050 (not (eq!621 lt!1698605 lt!1698589)))))

(declare-fun lt!1698598 () ListLongMap!2967)

(declare-fun lt!1698602 () tuple2!51092)

(declare-fun extractMap!1220 (List!50781) ListMap!3597)

(declare-fun +!1544 (ListLongMap!2967 tuple2!51092) ListLongMap!2967)

(assert (=> b!4521687 (= lt!1698605 (extractMap!1220 (toList!4335 (+!1544 lt!1698598 lt!1698602))))))

(declare-fun head!9418 (ListLongMap!2967) tuple2!51092)

(assert (=> b!4521687 (= lt!1698602 (head!9418 lm!1477))))

(declare-fun lt!1698590 () ListMap!3597)

(declare-fun lt!1698596 () ListMap!3597)

(assert (=> b!4521687 (eq!621 lt!1698590 lt!1698596)))

(declare-fun lt!1698610 () ListMap!3597)

(declare-fun key!3287 () K!12050)

(declare-fun -!390 (ListMap!3597 K!12050) ListMap!3597)

(assert (=> b!4521687 (= lt!1698596 (-!390 lt!1698610 key!3287))))

(declare-fun lt!1698588 () ListLongMap!2967)

(assert (=> b!4521687 (= lt!1698590 (extractMap!1220 (toList!4335 lt!1698588)))))

(declare-fun lt!1698599 () tuple2!51092)

(assert (=> b!4521687 (= lt!1698588 (+!1544 lt!1698598 lt!1698599))))

(assert (=> b!4521687 (= lt!1698599 (tuple2!51093 hash!344 newBucket!178))))

(declare-datatypes ((Unit!95370 0))(
  ( (Unit!95371) )
))
(declare-fun lt!1698608 () Unit!95370)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!149 (ListLongMap!2967 (_ BitVec 64) List!50780 K!12050 Hashable!5559) Unit!95370)

(assert (=> b!4521687 (= lt!1698608 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!149 lt!1698598 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4521688 () Bool)

(declare-fun res!1882051 () Bool)

(declare-fun e!2817164 () Bool)

(assert (=> b!4521688 (=> res!1882051 e!2817164)))

(declare-fun lt!1698595 () List!50780)

(declare-fun apply!11901 (ListLongMap!2967 (_ BitVec 64)) List!50780)

(assert (=> b!4521688 (= res!1882051 (not (= (apply!11901 lt!1698598 hash!344) lt!1698595)))))

(declare-fun b!4521689 () Bool)

(declare-fun e!2817163 () Unit!95370)

(declare-fun Unit!95372 () Unit!95370)

(assert (=> b!4521689 (= e!2817163 Unit!95372)))

(declare-fun lt!1698601 () Unit!95370)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!152 (ListLongMap!2967 K!12050 Hashable!5559) Unit!95370)

(assert (=> b!4521689 (= lt!1698601 (lemmaNotInItsHashBucketThenNotInMap!152 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4521689 false))

(declare-fun b!4521690 () Bool)

(declare-fun e!2817156 () Bool)

(declare-fun e!2817159 () Bool)

(assert (=> b!4521690 (= e!2817156 e!2817159)))

(declare-fun res!1882063 () Bool)

(assert (=> b!4521690 (=> res!1882063 e!2817159)))

(declare-fun lt!1698600 () ListMap!3597)

(declare-fun lt!1698609 () ListMap!3597)

(assert (=> b!4521690 (= res!1882063 (not (eq!621 lt!1698600 lt!1698609)))))

(declare-fun addToMapMapFromBucket!691 (List!50780 ListMap!3597) ListMap!3597)

(assert (=> b!4521690 (= lt!1698609 (addToMapMapFromBucket!691 (_2!28840 lt!1698602) lt!1698590))))

(declare-fun lt!1698607 () ListLongMap!2967)

(assert (=> b!4521690 (= lt!1698600 (extractMap!1220 (toList!4335 lt!1698607)))))

(declare-fun b!4521691 () Bool)

(declare-fun e!2817161 () Bool)

(declare-datatypes ((Option!11115 0))(
  ( (None!11114) (Some!11114 (v!44718 tuple2!51090)) )
))
(declare-fun isDefined!8402 (Option!11115) Bool)

(declare-fun getPair!180 (List!50780 K!12050) Option!11115)

(assert (=> b!4521691 (= e!2817161 (isDefined!8402 (getPair!180 (_2!28840 lt!1698602) key!3287)))))

(assert (=> b!4521691 (not (= hash!344 (_1!28840 lt!1698602)))))

(declare-fun b!4521692 () Bool)

(declare-fun e!2817157 () Bool)

(declare-fun tp!1338131 () Bool)

(assert (=> b!4521692 (= e!2817157 tp!1338131)))

(declare-fun b!4521694 () Bool)

(declare-fun res!1882067 () Bool)

(assert (=> b!4521694 (=> res!1882067 e!2817166)))

(declare-fun noDuplicateKeys!1164 (List!50780) Bool)

(assert (=> b!4521694 (= res!1882067 (not (noDuplicateKeys!1164 newBucket!178)))))

(declare-fun b!4521695 () Bool)

(declare-fun e!2817160 () Bool)

(assert (=> b!4521695 (= e!2817160 e!2817153)))

(declare-fun res!1882064 () Bool)

(assert (=> b!4521695 (=> res!1882064 e!2817153)))

(declare-fun contains!13387 (ListMap!3597 K!12050) Bool)

(assert (=> b!4521695 (= res!1882064 (not (contains!13387 (extractMap!1220 (t!357743 (toList!4335 lm!1477))) key!3287)))))

(assert (=> b!4521695 (contains!13387 lt!1698610 key!3287)))

(assert (=> b!4521695 (= lt!1698610 (extractMap!1220 (toList!4335 lt!1698598)))))

(declare-fun lt!1698606 () Unit!95370)

(declare-fun lemmaListContainsThenExtractedMapContains!134 (ListLongMap!2967 K!12050 Hashable!5559) Unit!95370)

(assert (=> b!4521695 (= lt!1698606 (lemmaListContainsThenExtractedMapContains!134 lt!1698598 key!3287 hashF!1107))))

(declare-fun b!4521696 () Bool)

(declare-fun e!2817158 () Bool)

(assert (=> b!4521696 (= e!2817158 e!2817162)))

(declare-fun res!1882058 () Bool)

(assert (=> b!4521696 (=> (not res!1882058) (not e!2817162))))

(declare-fun lt!1698603 () (_ BitVec 64))

(assert (=> b!4521696 (= res!1882058 (= lt!1698603 hash!344))))

(declare-fun hash!2817 (Hashable!5559 K!12050) (_ BitVec 64))

(assert (=> b!4521696 (= lt!1698603 (hash!2817 hashF!1107 key!3287))))

(declare-fun b!4521697 () Bool)

(declare-fun res!1882052 () Bool)

(assert (=> b!4521697 (=> res!1882052 e!2817167)))

(assert (=> b!4521697 (= res!1882052 (not (eq!621 lt!1698589 lt!1698605)))))

(declare-fun b!4521698 () Bool)

(declare-fun e!2817154 () Bool)

(assert (=> b!4521698 (= e!2817159 e!2817154)))

(declare-fun res!1882056 () Bool)

(assert (=> b!4521698 (=> res!1882056 e!2817154)))

(declare-fun lt!1698586 () ListMap!3597)

(assert (=> b!4521698 (= res!1882056 (not (eq!621 lt!1698600 lt!1698586)))))

(assert (=> b!4521698 (eq!621 lt!1698609 lt!1698586)))

(assert (=> b!4521698 (= lt!1698586 (addToMapMapFromBucket!691 (_2!28840 lt!1698602) lt!1698596))))

(declare-fun lt!1698612 () Unit!95370)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!40 (ListMap!3597 ListMap!3597 List!50780) Unit!95370)

(assert (=> b!4521698 (= lt!1698612 (lemmaAddToMapFromBucketPreservesEquivalence!40 lt!1698590 lt!1698596 (_2!28840 lt!1698602)))))

(declare-fun b!4521699 () Bool)

(assert (=> b!4521699 (= e!2817167 e!2817156)))

(declare-fun res!1882053 () Bool)

(assert (=> b!4521699 (=> res!1882053 e!2817156)))

(assert (=> b!4521699 (= res!1882053 (not (= lt!1698607 (+!1544 lm!1477 lt!1698599))))))

(assert (=> b!4521699 (= lt!1698607 (+!1544 lt!1698588 lt!1698602))))

(declare-fun b!4521700 () Bool)

(declare-fun e!2817155 () Bool)

(assert (=> b!4521700 (= e!2817164 e!2817155)))

(declare-fun res!1882062 () Bool)

(assert (=> b!4521700 (=> res!1882062 e!2817155)))

(declare-fun lt!1698597 () Bool)

(assert (=> b!4521700 (= res!1882062 lt!1698597)))

(declare-fun lt!1698594 () Unit!95370)

(assert (=> b!4521700 (= lt!1698594 e!2817163)))

(declare-fun c!771725 () Bool)

(assert (=> b!4521700 (= c!771725 lt!1698597)))

(declare-fun containsKey!1788 (List!50780 K!12050) Bool)

(assert (=> b!4521700 (= lt!1698597 (not (containsKey!1788 lt!1698595 key!3287)))))

(declare-fun b!4521701 () Bool)

(assert (=> b!4521701 (= e!2817166 e!2817164)))

(declare-fun res!1882070 () Bool)

(assert (=> b!4521701 (=> res!1882070 e!2817164)))

(declare-fun contains!13388 (ListLongMap!2967 (_ BitVec 64)) Bool)

(assert (=> b!4521701 (= res!1882070 (not (contains!13388 lt!1698598 hash!344)))))

(declare-fun tail!7740 (ListLongMap!2967) ListLongMap!2967)

(assert (=> b!4521701 (= lt!1698598 (tail!7740 lm!1477))))

(declare-fun b!4521702 () Bool)

(declare-fun e!2817152 () Bool)

(assert (=> b!4521702 (= e!2817152 e!2817158)))

(declare-fun res!1882059 () Bool)

(assert (=> b!4521702 (=> (not res!1882059) (not e!2817158))))

(assert (=> b!4521702 (= res!1882059 (contains!13387 lt!1698589 key!3287))))

(assert (=> b!4521702 (= lt!1698589 (extractMap!1220 (toList!4335 lm!1477)))))

(declare-fun b!4521703 () Bool)

(declare-fun res!1882069 () Bool)

(assert (=> b!4521703 (=> res!1882069 e!2817167)))

(assert (=> b!4521703 (= res!1882069 (bvsge (_1!28840 lt!1698602) hash!344))))

(declare-fun b!4521704 () Bool)

(declare-fun res!1882066 () Bool)

(assert (=> b!4521704 (=> res!1882066 e!2817164)))

(declare-fun lt!1698591 () tuple2!51092)

(declare-fun contains!13389 (List!50781 tuple2!51092) Bool)

(assert (=> b!4521704 (= res!1882066 (not (contains!13389 (t!357743 (toList!4335 lm!1477)) lt!1698591)))))

(declare-fun b!4521705 () Bool)

(declare-fun res!1882072 () Bool)

(assert (=> b!4521705 (=> res!1882072 e!2817156)))

(assert (=> b!4521705 (= res!1882072 (not (= (head!9418 lt!1698607) lt!1698602)))))

(declare-fun b!4521706 () Bool)

(assert (=> b!4521706 (= e!2817154 e!2817161)))

(declare-fun res!1882071 () Bool)

(assert (=> b!4521706 (=> res!1882071 e!2817161)))

(assert (=> b!4521706 (= res!1882071 (not (noDuplicateKeys!1164 (_2!28840 lt!1698602))))))

(declare-fun lt!1698592 () Unit!95370)

(declare-fun lambda!172643 () Int)

(declare-fun forallContained!2523 (List!50781 Int tuple2!51092) Unit!95370)

(assert (=> b!4521706 (= lt!1698592 (forallContained!2523 (toList!4335 lm!1477) lambda!172643 (h!56512 (toList!4335 lm!1477))))))

(declare-fun b!4521707 () Bool)

(assert (=> b!4521707 (= e!2817162 (not e!2817166))))

(declare-fun res!1882061 () Bool)

(assert (=> b!4521707 (=> res!1882061 e!2817166)))

(declare-fun removePairForKey!791 (List!50780 K!12050) List!50780)

(assert (=> b!4521707 (= res!1882061 (not (= newBucket!178 (removePairForKey!791 lt!1698595 key!3287))))))

(declare-fun lt!1698611 () Unit!95370)

(assert (=> b!4521707 (= lt!1698611 (forallContained!2523 (toList!4335 lm!1477) lambda!172643 lt!1698591))))

(assert (=> b!4521707 (contains!13389 (toList!4335 lm!1477) lt!1698591)))

(assert (=> b!4521707 (= lt!1698591 (tuple2!51093 hash!344 lt!1698595))))

(declare-fun lt!1698587 () Unit!95370)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!676 (List!50781 (_ BitVec 64) List!50780) Unit!95370)

(assert (=> b!4521707 (= lt!1698587 (lemmaGetValueByKeyImpliesContainsTuple!676 (toList!4335 lm!1477) hash!344 lt!1698595))))

(assert (=> b!4521707 (= lt!1698595 (apply!11901 lm!1477 hash!344))))

(assert (=> b!4521707 (contains!13388 lm!1477 lt!1698603)))

(declare-fun lt!1698593 () Unit!95370)

(declare-fun lemmaInGenMapThenLongMapContainsHash!238 (ListLongMap!2967 K!12050 Hashable!5559) Unit!95370)

(assert (=> b!4521707 (= lt!1698593 (lemmaInGenMapThenLongMapContainsHash!238 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4521708 () Bool)

(declare-fun Unit!95373 () Unit!95370)

(assert (=> b!4521708 (= e!2817163 Unit!95373)))

(declare-fun b!4521709 () Bool)

(declare-fun res!1882054 () Bool)

(assert (=> b!4521709 (=> res!1882054 e!2817161)))

(assert (=> b!4521709 (= res!1882054 (not (containsKey!1788 (_2!28840 lt!1698602) key!3287)))))

(declare-fun b!4521710 () Bool)

(assert (=> b!4521710 (= e!2817155 e!2817160)))

(declare-fun res!1882060 () Bool)

(assert (=> b!4521710 (=> res!1882060 e!2817160)))

(declare-fun containsKeyBiggerList!144 (List!50781 K!12050) Bool)

(assert (=> b!4521710 (= res!1882060 (not (containsKeyBiggerList!144 (t!357743 (toList!4335 lm!1477)) key!3287)))))

(assert (=> b!4521710 (containsKeyBiggerList!144 (toList!4335 lt!1698598) key!3287)))

(declare-fun lt!1698604 () Unit!95370)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!80 (ListLongMap!2967 K!12050 Hashable!5559) Unit!95370)

(assert (=> b!4521710 (= lt!1698604 (lemmaInLongMapThenContainsKeyBiggerList!80 lt!1698598 key!3287 hashF!1107))))

(declare-fun res!1882055 () Bool)

(assert (=> start!447772 (=> (not res!1882055) (not e!2817152))))

(declare-fun forall!10271 (List!50781 Int) Bool)

(assert (=> start!447772 (= res!1882055 (forall!10271 (toList!4335 lm!1477) lambda!172643))))

(assert (=> start!447772 e!2817152))

(assert (=> start!447772 true))

(declare-fun inv!66234 (ListLongMap!2967) Bool)

(assert (=> start!447772 (and (inv!66234 lm!1477) e!2817157)))

(assert (=> start!447772 tp_is_empty!27933))

(assert (=> start!447772 e!2817165))

(declare-fun b!4521693 () Bool)

(declare-fun res!1882065 () Bool)

(assert (=> b!4521693 (=> (not res!1882065) (not e!2817152))))

(declare-fun allKeysSameHashInMap!1271 (ListLongMap!2967 Hashable!5559) Bool)

(assert (=> b!4521693 (= res!1882065 (allKeysSameHashInMap!1271 lm!1477 hashF!1107))))

(assert (= (and start!447772 res!1882055) b!4521693))

(assert (= (and b!4521693 res!1882065) b!4521702))

(assert (= (and b!4521702 res!1882059) b!4521696))

(assert (= (and b!4521696 res!1882058) b!4521686))

(assert (= (and b!4521686 res!1882057) b!4521707))

(assert (= (and b!4521707 (not res!1882061)) b!4521694))

(assert (= (and b!4521694 (not res!1882067)) b!4521684))

(assert (= (and b!4521684 (not res!1882068)) b!4521701))

(assert (= (and b!4521701 (not res!1882070)) b!4521688))

(assert (= (and b!4521688 (not res!1882051)) b!4521704))

(assert (= (and b!4521704 (not res!1882066)) b!4521700))

(assert (= (and b!4521700 c!771725) b!4521689))

(assert (= (and b!4521700 (not c!771725)) b!4521708))

(assert (= (and b!4521700 (not res!1882062)) b!4521710))

(assert (= (and b!4521710 (not res!1882060)) b!4521695))

(assert (= (and b!4521695 (not res!1882064)) b!4521687))

(assert (= (and b!4521687 (not res!1882050)) b!4521697))

(assert (= (and b!4521697 (not res!1882052)) b!4521703))

(assert (= (and b!4521703 (not res!1882069)) b!4521699))

(assert (= (and b!4521699 (not res!1882053)) b!4521705))

(assert (= (and b!4521705 (not res!1882072)) b!4521690))

(assert (= (and b!4521690 (not res!1882063)) b!4521698))

(assert (= (and b!4521698 (not res!1882056)) b!4521706))

(assert (= (and b!4521706 (not res!1882071)) b!4521709))

(assert (= (and b!4521709 (not res!1882054)) b!4521691))

(assert (= start!447772 b!4521692))

(assert (= (and start!447772 ((_ is Cons!50656) newBucket!178)) b!4521685))

(declare-fun m!5271099 () Bool)

(assert (=> b!4521710 m!5271099))

(declare-fun m!5271101 () Bool)

(assert (=> b!4521710 m!5271101))

(declare-fun m!5271103 () Bool)

(assert (=> b!4521710 m!5271103))

(declare-fun m!5271105 () Bool)

(assert (=> b!4521694 m!5271105))

(declare-fun m!5271107 () Bool)

(assert (=> b!4521699 m!5271107))

(declare-fun m!5271109 () Bool)

(assert (=> b!4521699 m!5271109))

(declare-fun m!5271111 () Bool)

(assert (=> b!4521691 m!5271111))

(assert (=> b!4521691 m!5271111))

(declare-fun m!5271113 () Bool)

(assert (=> b!4521691 m!5271113))

(declare-fun m!5271115 () Bool)

(assert (=> b!4521700 m!5271115))

(declare-fun m!5271117 () Bool)

(assert (=> b!4521698 m!5271117))

(declare-fun m!5271119 () Bool)

(assert (=> b!4521698 m!5271119))

(declare-fun m!5271121 () Bool)

(assert (=> b!4521698 m!5271121))

(declare-fun m!5271123 () Bool)

(assert (=> b!4521698 m!5271123))

(declare-fun m!5271125 () Bool)

(assert (=> b!4521697 m!5271125))

(declare-fun m!5271127 () Bool)

(assert (=> b!4521709 m!5271127))

(declare-fun m!5271129 () Bool)

(assert (=> b!4521707 m!5271129))

(declare-fun m!5271131 () Bool)

(assert (=> b!4521707 m!5271131))

(declare-fun m!5271133 () Bool)

(assert (=> b!4521707 m!5271133))

(declare-fun m!5271135 () Bool)

(assert (=> b!4521707 m!5271135))

(declare-fun m!5271137 () Bool)

(assert (=> b!4521707 m!5271137))

(declare-fun m!5271139 () Bool)

(assert (=> b!4521707 m!5271139))

(declare-fun m!5271141 () Bool)

(assert (=> b!4521707 m!5271141))

(declare-fun m!5271143 () Bool)

(assert (=> b!4521695 m!5271143))

(declare-fun m!5271145 () Bool)

(assert (=> b!4521695 m!5271145))

(assert (=> b!4521695 m!5271145))

(declare-fun m!5271147 () Bool)

(assert (=> b!4521695 m!5271147))

(declare-fun m!5271149 () Bool)

(assert (=> b!4521695 m!5271149))

(declare-fun m!5271151 () Bool)

(assert (=> b!4521695 m!5271151))

(declare-fun m!5271153 () Bool)

(assert (=> b!4521688 m!5271153))

(declare-fun m!5271155 () Bool)

(assert (=> b!4521696 m!5271155))

(declare-fun m!5271157 () Bool)

(assert (=> b!4521701 m!5271157))

(declare-fun m!5271159 () Bool)

(assert (=> b!4521701 m!5271159))

(declare-fun m!5271161 () Bool)

(assert (=> b!4521704 m!5271161))

(declare-fun m!5271163 () Bool)

(assert (=> b!4521686 m!5271163))

(declare-fun m!5271165 () Bool)

(assert (=> b!4521693 m!5271165))

(declare-fun m!5271167 () Bool)

(assert (=> b!4521689 m!5271167))

(declare-fun m!5271169 () Bool)

(assert (=> b!4521690 m!5271169))

(declare-fun m!5271171 () Bool)

(assert (=> b!4521690 m!5271171))

(declare-fun m!5271173 () Bool)

(assert (=> b!4521690 m!5271173))

(declare-fun m!5271175 () Bool)

(assert (=> b!4521687 m!5271175))

(declare-fun m!5271177 () Bool)

(assert (=> b!4521687 m!5271177))

(declare-fun m!5271179 () Bool)

(assert (=> b!4521687 m!5271179))

(declare-fun m!5271181 () Bool)

(assert (=> b!4521687 m!5271181))

(declare-fun m!5271183 () Bool)

(assert (=> b!4521687 m!5271183))

(declare-fun m!5271185 () Bool)

(assert (=> b!4521687 m!5271185))

(declare-fun m!5271187 () Bool)

(assert (=> b!4521687 m!5271187))

(declare-fun m!5271189 () Bool)

(assert (=> b!4521687 m!5271189))

(declare-fun m!5271191 () Bool)

(assert (=> b!4521687 m!5271191))

(declare-fun m!5271193 () Bool)

(assert (=> start!447772 m!5271193))

(declare-fun m!5271195 () Bool)

(assert (=> start!447772 m!5271195))

(declare-fun m!5271197 () Bool)

(assert (=> b!4521706 m!5271197))

(declare-fun m!5271199 () Bool)

(assert (=> b!4521706 m!5271199))

(declare-fun m!5271201 () Bool)

(assert (=> b!4521702 m!5271201))

(declare-fun m!5271203 () Bool)

(assert (=> b!4521702 m!5271203))

(declare-fun m!5271205 () Bool)

(assert (=> b!4521705 m!5271205))

(check-sat (not b!4521702) tp_is_empty!27935 (not b!4521698) (not b!4521690) (not b!4521692) (not b!4521697) tp_is_empty!27933 (not b!4521693) (not b!4521688) (not b!4521695) (not b!4521696) (not b!4521707) (not b!4521706) (not b!4521701) (not start!447772) (not b!4521689) (not b!4521705) (not b!4521709) (not b!4521685) (not b!4521704) (not b!4521699) (not b!4521687) (not b!4521691) (not b!4521686) (not b!4521710) (not b!4521694) (not b!4521700))
(check-sat)
(get-model)

(declare-fun d!1393430 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8360 (List!50780) (InoxSet tuple2!51090))

(assert (=> d!1393430 (= (eq!621 lt!1698600 lt!1698609) (= (content!8360 (toList!4336 lt!1698600)) (content!8360 (toList!4336 lt!1698609))))))

(declare-fun bs!857371 () Bool)

(assert (= bs!857371 d!1393430))

(declare-fun m!5271207 () Bool)

(assert (=> bs!857371 m!5271207))

(declare-fun m!5271209 () Bool)

(assert (=> bs!857371 m!5271209))

(assert (=> b!4521690 d!1393430))

(declare-fun b!4521844 () Bool)

(assert (=> b!4521844 true))

(declare-fun bs!857409 () Bool)

(declare-fun b!4521842 () Bool)

(assert (= bs!857409 (and b!4521842 b!4521844)))

(declare-fun lambda!172691 () Int)

(declare-fun lambda!172690 () Int)

(assert (=> bs!857409 (= lambda!172691 lambda!172690)))

(assert (=> b!4521842 true))

(declare-fun lt!1698742 () ListMap!3597)

(declare-fun lambda!172692 () Int)

(assert (=> bs!857409 (= (= lt!1698742 lt!1698590) (= lambda!172692 lambda!172690))))

(assert (=> b!4521842 (= (= lt!1698742 lt!1698590) (= lambda!172692 lambda!172691))))

(assert (=> b!4521842 true))

(declare-fun bs!857410 () Bool)

(declare-fun d!1393432 () Bool)

(assert (= bs!857410 (and d!1393432 b!4521844)))

(declare-fun lambda!172693 () Int)

(declare-fun lt!1698738 () ListMap!3597)

(assert (=> bs!857410 (= (= lt!1698738 lt!1698590) (= lambda!172693 lambda!172690))))

(declare-fun bs!857411 () Bool)

(assert (= bs!857411 (and d!1393432 b!4521842)))

(assert (=> bs!857411 (= (= lt!1698738 lt!1698590) (= lambda!172693 lambda!172691))))

(assert (=> bs!857411 (= (= lt!1698738 lt!1698742) (= lambda!172693 lambda!172692))))

(assert (=> d!1393432 true))

(declare-fun b!4521841 () Bool)

(declare-fun e!2817258 () Bool)

(declare-fun forall!10272 (List!50780 Int) Bool)

(assert (=> b!4521841 (= e!2817258 (forall!10272 (toList!4336 lt!1698590) lambda!172692))))

(declare-fun call!315079 () Bool)

(declare-fun bm!315073 () Bool)

(declare-fun c!771752 () Bool)

(assert (=> bm!315073 (= call!315079 (forall!10272 (ite c!771752 (toList!4336 lt!1698590) (_2!28840 lt!1698602)) (ite c!771752 lambda!172690 lambda!172692)))))

(declare-fun e!2817259 () Bool)

(assert (=> d!1393432 e!2817259))

(declare-fun res!1882149 () Bool)

(assert (=> d!1393432 (=> (not res!1882149) (not e!2817259))))

(assert (=> d!1393432 (= res!1882149 (forall!10272 (_2!28840 lt!1698602) lambda!172693))))

(declare-fun e!2817257 () ListMap!3597)

(assert (=> d!1393432 (= lt!1698738 e!2817257)))

(assert (=> d!1393432 (= c!771752 ((_ is Nil!50656) (_2!28840 lt!1698602)))))

(assert (=> d!1393432 (noDuplicateKeys!1164 (_2!28840 lt!1698602))))

(assert (=> d!1393432 (= (addToMapMapFromBucket!691 (_2!28840 lt!1698602) lt!1698590) lt!1698738)))

(assert (=> b!4521842 (= e!2817257 lt!1698742)))

(declare-fun lt!1698743 () ListMap!3597)

(declare-fun +!1545 (ListMap!3597 tuple2!51090) ListMap!3597)

(assert (=> b!4521842 (= lt!1698743 (+!1545 lt!1698590 (h!56511 (_2!28840 lt!1698602))))))

(assert (=> b!4521842 (= lt!1698742 (addToMapMapFromBucket!691 (t!357742 (_2!28840 lt!1698602)) (+!1545 lt!1698590 (h!56511 (_2!28840 lt!1698602)))))))

(declare-fun lt!1698745 () Unit!95370)

(declare-fun call!315080 () Unit!95370)

(assert (=> b!4521842 (= lt!1698745 call!315080)))

(assert (=> b!4521842 (forall!10272 (toList!4336 lt!1698590) lambda!172691)))

(declare-fun lt!1698747 () Unit!95370)

(assert (=> b!4521842 (= lt!1698747 lt!1698745)))

(assert (=> b!4521842 (forall!10272 (toList!4336 lt!1698743) lambda!172692)))

(declare-fun lt!1698756 () Unit!95370)

(declare-fun Unit!95376 () Unit!95370)

(assert (=> b!4521842 (= lt!1698756 Unit!95376)))

(assert (=> b!4521842 (forall!10272 (t!357742 (_2!28840 lt!1698602)) lambda!172692)))

(declare-fun lt!1698750 () Unit!95370)

(declare-fun Unit!95377 () Unit!95370)

(assert (=> b!4521842 (= lt!1698750 Unit!95377)))

(declare-fun lt!1698753 () Unit!95370)

(declare-fun Unit!95378 () Unit!95370)

(assert (=> b!4521842 (= lt!1698753 Unit!95378)))

(declare-fun lt!1698752 () Unit!95370)

(declare-fun forallContained!2524 (List!50780 Int tuple2!51090) Unit!95370)

(assert (=> b!4521842 (= lt!1698752 (forallContained!2524 (toList!4336 lt!1698743) lambda!172692 (h!56511 (_2!28840 lt!1698602))))))

(assert (=> b!4521842 (contains!13387 lt!1698743 (_1!28839 (h!56511 (_2!28840 lt!1698602))))))

(declare-fun lt!1698754 () Unit!95370)

(declare-fun Unit!95379 () Unit!95370)

(assert (=> b!4521842 (= lt!1698754 Unit!95379)))

(assert (=> b!4521842 (contains!13387 lt!1698742 (_1!28839 (h!56511 (_2!28840 lt!1698602))))))

(declare-fun lt!1698755 () Unit!95370)

(declare-fun Unit!95380 () Unit!95370)

(assert (=> b!4521842 (= lt!1698755 Unit!95380)))

(assert (=> b!4521842 (forall!10272 (_2!28840 lt!1698602) lambda!172692)))

(declare-fun lt!1698746 () Unit!95370)

(declare-fun Unit!95381 () Unit!95370)

(assert (=> b!4521842 (= lt!1698746 Unit!95381)))

(assert (=> b!4521842 (forall!10272 (toList!4336 lt!1698743) lambda!172692)))

(declare-fun lt!1698749 () Unit!95370)

(declare-fun Unit!95382 () Unit!95370)

(assert (=> b!4521842 (= lt!1698749 Unit!95382)))

(declare-fun lt!1698757 () Unit!95370)

(declare-fun Unit!95383 () Unit!95370)

(assert (=> b!4521842 (= lt!1698757 Unit!95383)))

(declare-fun lt!1698751 () Unit!95370)

(declare-fun addForallContainsKeyThenBeforeAdding!339 (ListMap!3597 ListMap!3597 K!12050 V!12296) Unit!95370)

(assert (=> b!4521842 (= lt!1698751 (addForallContainsKeyThenBeforeAdding!339 lt!1698590 lt!1698742 (_1!28839 (h!56511 (_2!28840 lt!1698602))) (_2!28839 (h!56511 (_2!28840 lt!1698602)))))))

(declare-fun call!315078 () Bool)

(assert (=> b!4521842 call!315078))

(declare-fun lt!1698739 () Unit!95370)

(assert (=> b!4521842 (= lt!1698739 lt!1698751)))

(assert (=> b!4521842 (forall!10272 (toList!4336 lt!1698590) lambda!172692)))

(declare-fun lt!1698748 () Unit!95370)

(declare-fun Unit!95384 () Unit!95370)

(assert (=> b!4521842 (= lt!1698748 Unit!95384)))

(declare-fun res!1882148 () Bool)

(assert (=> b!4521842 (= res!1882148 call!315079)))

(assert (=> b!4521842 (=> (not res!1882148) (not e!2817258))))

(assert (=> b!4521842 e!2817258))

(declare-fun lt!1698744 () Unit!95370)

(declare-fun Unit!95385 () Unit!95370)

(assert (=> b!4521842 (= lt!1698744 Unit!95385)))

(declare-fun bm!315074 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!339 (ListMap!3597) Unit!95370)

(assert (=> bm!315074 (= call!315080 (lemmaContainsAllItsOwnKeys!339 lt!1698590))))

(declare-fun b!4521843 () Bool)

(declare-fun invariantList!1019 (List!50780) Bool)

(assert (=> b!4521843 (= e!2817259 (invariantList!1019 (toList!4336 lt!1698738)))))

(assert (=> b!4521844 (= e!2817257 lt!1698590)))

(declare-fun lt!1698741 () Unit!95370)

(assert (=> b!4521844 (= lt!1698741 call!315080)))

(assert (=> b!4521844 call!315078))

(declare-fun lt!1698740 () Unit!95370)

(assert (=> b!4521844 (= lt!1698740 lt!1698741)))

(assert (=> b!4521844 call!315079))

(declare-fun lt!1698758 () Unit!95370)

(declare-fun Unit!95386 () Unit!95370)

(assert (=> b!4521844 (= lt!1698758 Unit!95386)))

(declare-fun b!4521845 () Bool)

(declare-fun res!1882147 () Bool)

(assert (=> b!4521845 (=> (not res!1882147) (not e!2817259))))

(assert (=> b!4521845 (= res!1882147 (forall!10272 (toList!4336 lt!1698590) lambda!172693))))

(declare-fun bm!315075 () Bool)

(assert (=> bm!315075 (= call!315078 (forall!10272 (toList!4336 lt!1698590) (ite c!771752 lambda!172690 lambda!172692)))))

(assert (= (and d!1393432 c!771752) b!4521844))

(assert (= (and d!1393432 (not c!771752)) b!4521842))

(assert (= (and b!4521842 res!1882148) b!4521841))

(assert (= (or b!4521844 b!4521842) bm!315073))

(assert (= (or b!4521844 b!4521842) bm!315075))

(assert (= (or b!4521844 b!4521842) bm!315074))

(assert (= (and d!1393432 res!1882149) b!4521845))

(assert (= (and b!4521845 res!1882147) b!4521843))

(declare-fun m!5271419 () Bool)

(assert (=> bm!315075 m!5271419))

(declare-fun m!5271421 () Bool)

(assert (=> bm!315074 m!5271421))

(declare-fun m!5271423 () Bool)

(assert (=> d!1393432 m!5271423))

(assert (=> d!1393432 m!5271197))

(declare-fun m!5271425 () Bool)

(assert (=> b!4521843 m!5271425))

(declare-fun m!5271427 () Bool)

(assert (=> b!4521841 m!5271427))

(declare-fun m!5271429 () Bool)

(assert (=> b!4521845 m!5271429))

(declare-fun m!5271431 () Bool)

(assert (=> bm!315073 m!5271431))

(assert (=> b!4521842 m!5271427))

(declare-fun m!5271433 () Bool)

(assert (=> b!4521842 m!5271433))

(declare-fun m!5271435 () Bool)

(assert (=> b!4521842 m!5271435))

(declare-fun m!5271437 () Bool)

(assert (=> b!4521842 m!5271437))

(declare-fun m!5271439 () Bool)

(assert (=> b!4521842 m!5271439))

(declare-fun m!5271441 () Bool)

(assert (=> b!4521842 m!5271441))

(declare-fun m!5271443 () Bool)

(assert (=> b!4521842 m!5271443))

(assert (=> b!4521842 m!5271441))

(declare-fun m!5271445 () Bool)

(assert (=> b!4521842 m!5271445))

(declare-fun m!5271447 () Bool)

(assert (=> b!4521842 m!5271447))

(declare-fun m!5271449 () Bool)

(assert (=> b!4521842 m!5271449))

(assert (=> b!4521842 m!5271439))

(declare-fun m!5271451 () Bool)

(assert (=> b!4521842 m!5271451))

(assert (=> b!4521690 d!1393432))

(declare-fun bs!857422 () Bool)

(declare-fun d!1393490 () Bool)

(assert (= bs!857422 (and d!1393490 start!447772)))

(declare-fun lambda!172699 () Int)

(assert (=> bs!857422 (= lambda!172699 lambda!172643)))

(declare-fun lt!1698770 () ListMap!3597)

(assert (=> d!1393490 (invariantList!1019 (toList!4336 lt!1698770))))

(declare-fun e!2817270 () ListMap!3597)

(assert (=> d!1393490 (= lt!1698770 e!2817270)))

(declare-fun c!771757 () Bool)

(assert (=> d!1393490 (= c!771757 ((_ is Cons!50657) (toList!4335 lt!1698607)))))

(assert (=> d!1393490 (forall!10271 (toList!4335 lt!1698607) lambda!172699)))

(assert (=> d!1393490 (= (extractMap!1220 (toList!4335 lt!1698607)) lt!1698770)))

(declare-fun b!4521862 () Bool)

(assert (=> b!4521862 (= e!2817270 (addToMapMapFromBucket!691 (_2!28840 (h!56512 (toList!4335 lt!1698607))) (extractMap!1220 (t!357743 (toList!4335 lt!1698607)))))))

(declare-fun b!4521863 () Bool)

(assert (=> b!4521863 (= e!2817270 (ListMap!3598 Nil!50656))))

(assert (= (and d!1393490 c!771757) b!4521862))

(assert (= (and d!1393490 (not c!771757)) b!4521863))

(declare-fun m!5271463 () Bool)

(assert (=> d!1393490 m!5271463))

(declare-fun m!5271465 () Bool)

(assert (=> d!1393490 m!5271465))

(declare-fun m!5271467 () Bool)

(assert (=> b!4521862 m!5271467))

(assert (=> b!4521862 m!5271467))

(declare-fun m!5271469 () Bool)

(assert (=> b!4521862 m!5271469))

(assert (=> b!4521690 d!1393490))

(declare-fun d!1393498 () Bool)

(declare-fun res!1882163 () Bool)

(declare-fun e!2817279 () Bool)

(assert (=> d!1393498 (=> res!1882163 e!2817279)))

(assert (=> d!1393498 (= res!1882163 ((_ is Nil!50657) (toList!4335 lm!1477)))))

(assert (=> d!1393498 (= (forall!10271 (toList!4335 lm!1477) lambda!172643) e!2817279)))

(declare-fun b!4521873 () Bool)

(declare-fun e!2817280 () Bool)

(assert (=> b!4521873 (= e!2817279 e!2817280)))

(declare-fun res!1882164 () Bool)

(assert (=> b!4521873 (=> (not res!1882164) (not e!2817280))))

(declare-fun dynLambda!21166 (Int tuple2!51092) Bool)

(assert (=> b!4521873 (= res!1882164 (dynLambda!21166 lambda!172643 (h!56512 (toList!4335 lm!1477))))))

(declare-fun b!4521874 () Bool)

(assert (=> b!4521874 (= e!2817280 (forall!10271 (t!357743 (toList!4335 lm!1477)) lambda!172643))))

(assert (= (and d!1393498 (not res!1882163)) b!4521873))

(assert (= (and b!4521873 res!1882164) b!4521874))

(declare-fun b_lambda!155215 () Bool)

(assert (=> (not b_lambda!155215) (not b!4521873)))

(declare-fun m!5271479 () Bool)

(assert (=> b!4521873 m!5271479))

(declare-fun m!5271481 () Bool)

(assert (=> b!4521874 m!5271481))

(assert (=> start!447772 d!1393498))

(declare-fun d!1393502 () Bool)

(declare-fun isStrictlySorted!432 (List!50781) Bool)

(assert (=> d!1393502 (= (inv!66234 lm!1477) (isStrictlySorted!432 (toList!4335 lm!1477)))))

(declare-fun bs!857426 () Bool)

(assert (= bs!857426 d!1393502))

(declare-fun m!5271491 () Bool)

(assert (=> bs!857426 m!5271491))

(assert (=> start!447772 d!1393502))

(declare-fun bs!857427 () Bool)

(declare-fun d!1393510 () Bool)

(assert (= bs!857427 (and d!1393510 start!447772)))

(declare-fun lambda!172702 () Int)

(assert (=> bs!857427 (= lambda!172702 lambda!172643)))

(declare-fun bs!857428 () Bool)

(assert (= bs!857428 (and d!1393510 d!1393490)))

(assert (=> bs!857428 (= lambda!172702 lambda!172699)))

(assert (=> d!1393510 (not (contains!13387 (extractMap!1220 (toList!4335 lm!1477)) key!3287))))

(declare-fun lt!1698779 () Unit!95370)

(declare-fun choose!29545 (ListLongMap!2967 K!12050 Hashable!5559) Unit!95370)

(assert (=> d!1393510 (= lt!1698779 (choose!29545 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1393510 (forall!10271 (toList!4335 lm!1477) lambda!172702)))

(assert (=> d!1393510 (= (lemmaNotInItsHashBucketThenNotInMap!152 lm!1477 key!3287 hashF!1107) lt!1698779)))

(declare-fun bs!857429 () Bool)

(assert (= bs!857429 d!1393510))

(assert (=> bs!857429 m!5271203))

(assert (=> bs!857429 m!5271203))

(declare-fun m!5271493 () Bool)

(assert (=> bs!857429 m!5271493))

(declare-fun m!5271495 () Bool)

(assert (=> bs!857429 m!5271495))

(declare-fun m!5271497 () Bool)

(assert (=> bs!857429 m!5271497))

(assert (=> b!4521689 d!1393510))

(declare-fun d!1393512 () Bool)

(declare-fun res!1882169 () Bool)

(declare-fun e!2817285 () Bool)

(assert (=> d!1393512 (=> res!1882169 e!2817285)))

(assert (=> d!1393512 (= res!1882169 (and ((_ is Cons!50656) lt!1698595) (= (_1!28839 (h!56511 lt!1698595)) key!3287)))))

(assert (=> d!1393512 (= (containsKey!1788 lt!1698595 key!3287) e!2817285)))

(declare-fun b!4521879 () Bool)

(declare-fun e!2817286 () Bool)

(assert (=> b!4521879 (= e!2817285 e!2817286)))

(declare-fun res!1882170 () Bool)

(assert (=> b!4521879 (=> (not res!1882170) (not e!2817286))))

(assert (=> b!4521879 (= res!1882170 ((_ is Cons!50656) lt!1698595))))

(declare-fun b!4521880 () Bool)

(assert (=> b!4521880 (= e!2817286 (containsKey!1788 (t!357742 lt!1698595) key!3287))))

(assert (= (and d!1393512 (not res!1882169)) b!4521879))

(assert (= (and b!4521879 res!1882170) b!4521880))

(declare-fun m!5271499 () Bool)

(assert (=> b!4521880 m!5271499))

(assert (=> b!4521700 d!1393512))

(declare-fun d!1393514 () Bool)

(declare-fun isEmpty!28674 (Option!11115) Bool)

(assert (=> d!1393514 (= (isDefined!8402 (getPair!180 (_2!28840 lt!1698602) key!3287)) (not (isEmpty!28674 (getPair!180 (_2!28840 lt!1698602) key!3287))))))

(declare-fun bs!857430 () Bool)

(assert (= bs!857430 d!1393514))

(assert (=> bs!857430 m!5271111))

(declare-fun m!5271501 () Bool)

(assert (=> bs!857430 m!5271501))

(assert (=> b!4521691 d!1393514))

(declare-fun b!4521897 () Bool)

(declare-fun e!2817297 () Bool)

(assert (=> b!4521897 (= e!2817297 (not (containsKey!1788 (_2!28840 lt!1698602) key!3287)))))

(declare-fun b!4521898 () Bool)

(declare-fun e!2817301 () Bool)

(declare-fun lt!1698782 () Option!11115)

(declare-fun contains!13391 (List!50780 tuple2!51090) Bool)

(declare-fun get!16593 (Option!11115) tuple2!51090)

(assert (=> b!4521898 (= e!2817301 (contains!13391 (_2!28840 lt!1698602) (get!16593 lt!1698782)))))

(declare-fun b!4521899 () Bool)

(declare-fun res!1882182 () Bool)

(assert (=> b!4521899 (=> (not res!1882182) (not e!2817301))))

(assert (=> b!4521899 (= res!1882182 (= (_1!28839 (get!16593 lt!1698782)) key!3287))))

(declare-fun b!4521900 () Bool)

(declare-fun e!2817298 () Option!11115)

(assert (=> b!4521900 (= e!2817298 (Some!11114 (h!56511 (_2!28840 lt!1698602))))))

(declare-fun b!4521901 () Bool)

(declare-fun e!2817299 () Option!11115)

(assert (=> b!4521901 (= e!2817299 (getPair!180 (t!357742 (_2!28840 lt!1698602)) key!3287))))

(declare-fun b!4521903 () Bool)

(assert (=> b!4521903 (= e!2817298 e!2817299)))

(declare-fun c!771763 () Bool)

(assert (=> b!4521903 (= c!771763 ((_ is Cons!50656) (_2!28840 lt!1698602)))))

(declare-fun b!4521904 () Bool)

(declare-fun e!2817300 () Bool)

(assert (=> b!4521904 (= e!2817300 e!2817301)))

(declare-fun res!1882181 () Bool)

(assert (=> b!4521904 (=> (not res!1882181) (not e!2817301))))

(assert (=> b!4521904 (= res!1882181 (isDefined!8402 lt!1698782))))

(declare-fun b!4521902 () Bool)

(assert (=> b!4521902 (= e!2817299 None!11114)))

(declare-fun d!1393516 () Bool)

(assert (=> d!1393516 e!2817300))

(declare-fun res!1882180 () Bool)

(assert (=> d!1393516 (=> res!1882180 e!2817300)))

(assert (=> d!1393516 (= res!1882180 e!2817297)))

(declare-fun res!1882179 () Bool)

(assert (=> d!1393516 (=> (not res!1882179) (not e!2817297))))

(assert (=> d!1393516 (= res!1882179 (isEmpty!28674 lt!1698782))))

(assert (=> d!1393516 (= lt!1698782 e!2817298)))

(declare-fun c!771764 () Bool)

(assert (=> d!1393516 (= c!771764 (and ((_ is Cons!50656) (_2!28840 lt!1698602)) (= (_1!28839 (h!56511 (_2!28840 lt!1698602))) key!3287)))))

(assert (=> d!1393516 (noDuplicateKeys!1164 (_2!28840 lt!1698602))))

(assert (=> d!1393516 (= (getPair!180 (_2!28840 lt!1698602) key!3287) lt!1698782)))

(assert (= (and d!1393516 c!771764) b!4521900))

(assert (= (and d!1393516 (not c!771764)) b!4521903))

(assert (= (and b!4521903 c!771763) b!4521901))

(assert (= (and b!4521903 (not c!771763)) b!4521902))

(assert (= (and d!1393516 res!1882179) b!4521897))

(assert (= (and d!1393516 (not res!1882180)) b!4521904))

(assert (= (and b!4521904 res!1882181) b!4521899))

(assert (= (and b!4521899 res!1882182) b!4521898))

(assert (=> b!4521897 m!5271127))

(declare-fun m!5271503 () Bool)

(assert (=> b!4521899 m!5271503))

(declare-fun m!5271505 () Bool)

(assert (=> d!1393516 m!5271505))

(assert (=> d!1393516 m!5271197))

(declare-fun m!5271507 () Bool)

(assert (=> b!4521904 m!5271507))

(assert (=> b!4521898 m!5271503))

(assert (=> b!4521898 m!5271503))

(declare-fun m!5271509 () Bool)

(assert (=> b!4521898 m!5271509))

(declare-fun m!5271511 () Bool)

(assert (=> b!4521901 m!5271511))

(assert (=> b!4521691 d!1393516))

(declare-fun b!4521923 () Bool)

(assert (=> b!4521923 false))

(declare-fun lt!1698804 () Unit!95370)

(declare-fun lt!1698800 () Unit!95370)

(assert (=> b!4521923 (= lt!1698804 lt!1698800)))

(declare-fun containsKey!1790 (List!50780 K!12050) Bool)

(assert (=> b!4521923 (containsKey!1790 (toList!4336 lt!1698589) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!466 (List!50780 K!12050) Unit!95370)

(assert (=> b!4521923 (= lt!1698800 (lemmaInGetKeysListThenContainsKey!466 (toList!4336 lt!1698589) key!3287))))

(declare-fun e!2817315 () Unit!95370)

(declare-fun Unit!95389 () Unit!95370)

(assert (=> b!4521923 (= e!2817315 Unit!95389)))

(declare-fun bm!315078 () Bool)

(declare-fun call!315083 () Bool)

(declare-datatypes ((List!50783 0))(
  ( (Nil!50659) (Cons!50659 (h!56516 K!12050) (t!357745 List!50783)) )
))
(declare-fun e!2817314 () List!50783)

(declare-fun contains!13392 (List!50783 K!12050) Bool)

(assert (=> bm!315078 (= call!315083 (contains!13392 e!2817314 key!3287))))

(declare-fun c!771772 () Bool)

(declare-fun c!771773 () Bool)

(assert (=> bm!315078 (= c!771772 c!771773)))

(declare-fun b!4521924 () Bool)

(declare-fun Unit!95390 () Unit!95370)

(assert (=> b!4521924 (= e!2817315 Unit!95390)))

(declare-fun b!4521925 () Bool)

(declare-fun e!2817319 () Bool)

(declare-fun e!2817317 () Bool)

(assert (=> b!4521925 (= e!2817319 e!2817317)))

(declare-fun res!1882189 () Bool)

(assert (=> b!4521925 (=> (not res!1882189) (not e!2817317))))

(declare-datatypes ((Option!11118 0))(
  ( (None!11117) (Some!11117 (v!44725 V!12296)) )
))
(declare-fun isDefined!8404 (Option!11118) Bool)

(declare-fun getValueByKey!1096 (List!50780 K!12050) Option!11118)

(assert (=> b!4521925 (= res!1882189 (isDefined!8404 (getValueByKey!1096 (toList!4336 lt!1698589) key!3287)))))

(declare-fun b!4521926 () Bool)

(declare-fun e!2817318 () Unit!95370)

(declare-fun lt!1698802 () Unit!95370)

(assert (=> b!4521926 (= e!2817318 lt!1698802)))

(declare-fun lt!1698803 () Unit!95370)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!999 (List!50780 K!12050) Unit!95370)

(assert (=> b!4521926 (= lt!1698803 (lemmaContainsKeyImpliesGetValueByKeyDefined!999 (toList!4336 lt!1698589) key!3287))))

(assert (=> b!4521926 (isDefined!8404 (getValueByKey!1096 (toList!4336 lt!1698589) key!3287))))

(declare-fun lt!1698805 () Unit!95370)

(assert (=> b!4521926 (= lt!1698805 lt!1698803)))

(declare-fun lemmaInListThenGetKeysListContains!463 (List!50780 K!12050) Unit!95370)

(assert (=> b!4521926 (= lt!1698802 (lemmaInListThenGetKeysListContains!463 (toList!4336 lt!1698589) key!3287))))

(assert (=> b!4521926 call!315083))

(declare-fun b!4521927 () Bool)

(declare-fun e!2817316 () Bool)

(declare-fun keys!17600 (ListMap!3597) List!50783)

(assert (=> b!4521927 (= e!2817316 (not (contains!13392 (keys!17600 lt!1698589) key!3287)))))

(declare-fun b!4521928 () Bool)

(declare-fun getKeysList!467 (List!50780) List!50783)

(assert (=> b!4521928 (= e!2817314 (getKeysList!467 (toList!4336 lt!1698589)))))

(declare-fun b!4521929 () Bool)

(assert (=> b!4521929 (= e!2817314 (keys!17600 lt!1698589))))

(declare-fun b!4521930 () Bool)

(assert (=> b!4521930 (= e!2817318 e!2817315)))

(declare-fun c!771771 () Bool)

(assert (=> b!4521930 (= c!771771 call!315083)))

(declare-fun d!1393518 () Bool)

(assert (=> d!1393518 e!2817319))

(declare-fun res!1882191 () Bool)

(assert (=> d!1393518 (=> res!1882191 e!2817319)))

(assert (=> d!1393518 (= res!1882191 e!2817316)))

(declare-fun res!1882190 () Bool)

(assert (=> d!1393518 (=> (not res!1882190) (not e!2817316))))

(declare-fun lt!1698801 () Bool)

(assert (=> d!1393518 (= res!1882190 (not lt!1698801))))

(declare-fun lt!1698799 () Bool)

(assert (=> d!1393518 (= lt!1698801 lt!1698799)))

(declare-fun lt!1698806 () Unit!95370)

(assert (=> d!1393518 (= lt!1698806 e!2817318)))

(assert (=> d!1393518 (= c!771773 lt!1698799)))

(assert (=> d!1393518 (= lt!1698799 (containsKey!1790 (toList!4336 lt!1698589) key!3287))))

(assert (=> d!1393518 (= (contains!13387 lt!1698589 key!3287) lt!1698801)))

(declare-fun b!4521931 () Bool)

(assert (=> b!4521931 (= e!2817317 (contains!13392 (keys!17600 lt!1698589) key!3287))))

(assert (= (and d!1393518 c!771773) b!4521926))

(assert (= (and d!1393518 (not c!771773)) b!4521930))

(assert (= (and b!4521930 c!771771) b!4521923))

(assert (= (and b!4521930 (not c!771771)) b!4521924))

(assert (= (or b!4521926 b!4521930) bm!315078))

(assert (= (and bm!315078 c!771772) b!4521928))

(assert (= (and bm!315078 (not c!771772)) b!4521929))

(assert (= (and d!1393518 res!1882190) b!4521927))

(assert (= (and d!1393518 (not res!1882191)) b!4521925))

(assert (= (and b!4521925 res!1882189) b!4521931))

(declare-fun m!5271513 () Bool)

(assert (=> b!4521928 m!5271513))

(declare-fun m!5271515 () Bool)

(assert (=> bm!315078 m!5271515))

(declare-fun m!5271517 () Bool)

(assert (=> b!4521927 m!5271517))

(assert (=> b!4521927 m!5271517))

(declare-fun m!5271519 () Bool)

(assert (=> b!4521927 m!5271519))

(declare-fun m!5271521 () Bool)

(assert (=> d!1393518 m!5271521))

(declare-fun m!5271523 () Bool)

(assert (=> b!4521925 m!5271523))

(assert (=> b!4521925 m!5271523))

(declare-fun m!5271525 () Bool)

(assert (=> b!4521925 m!5271525))

(assert (=> b!4521923 m!5271521))

(declare-fun m!5271527 () Bool)

(assert (=> b!4521923 m!5271527))

(assert (=> b!4521929 m!5271517))

(declare-fun m!5271529 () Bool)

(assert (=> b!4521926 m!5271529))

(assert (=> b!4521926 m!5271523))

(assert (=> b!4521926 m!5271523))

(assert (=> b!4521926 m!5271525))

(declare-fun m!5271531 () Bool)

(assert (=> b!4521926 m!5271531))

(assert (=> b!4521931 m!5271517))

(assert (=> b!4521931 m!5271517))

(assert (=> b!4521931 m!5271519))

(assert (=> b!4521702 d!1393518))

(declare-fun bs!857431 () Bool)

(declare-fun d!1393520 () Bool)

(assert (= bs!857431 (and d!1393520 start!447772)))

(declare-fun lambda!172703 () Int)

(assert (=> bs!857431 (= lambda!172703 lambda!172643)))

(declare-fun bs!857432 () Bool)

(assert (= bs!857432 (and d!1393520 d!1393490)))

(assert (=> bs!857432 (= lambda!172703 lambda!172699)))

(declare-fun bs!857433 () Bool)

(assert (= bs!857433 (and d!1393520 d!1393510)))

(assert (=> bs!857433 (= lambda!172703 lambda!172702)))

(declare-fun lt!1698807 () ListMap!3597)

(assert (=> d!1393520 (invariantList!1019 (toList!4336 lt!1698807))))

(declare-fun e!2817320 () ListMap!3597)

(assert (=> d!1393520 (= lt!1698807 e!2817320)))

(declare-fun c!771774 () Bool)

(assert (=> d!1393520 (= c!771774 ((_ is Cons!50657) (toList!4335 lm!1477)))))

(assert (=> d!1393520 (forall!10271 (toList!4335 lm!1477) lambda!172703)))

(assert (=> d!1393520 (= (extractMap!1220 (toList!4335 lm!1477)) lt!1698807)))

(declare-fun b!4521932 () Bool)

(assert (=> b!4521932 (= e!2817320 (addToMapMapFromBucket!691 (_2!28840 (h!56512 (toList!4335 lm!1477))) (extractMap!1220 (t!357743 (toList!4335 lm!1477)))))))

(declare-fun b!4521933 () Bool)

(assert (=> b!4521933 (= e!2817320 (ListMap!3598 Nil!50656))))

(assert (= (and d!1393520 c!771774) b!4521932))

(assert (= (and d!1393520 (not c!771774)) b!4521933))

(declare-fun m!5271533 () Bool)

(assert (=> d!1393520 m!5271533))

(declare-fun m!5271535 () Bool)

(assert (=> d!1393520 m!5271535))

(assert (=> b!4521932 m!5271145))

(assert (=> b!4521932 m!5271145))

(declare-fun m!5271537 () Bool)

(assert (=> b!4521932 m!5271537))

(assert (=> b!4521702 d!1393520))

(declare-fun d!1393522 () Bool)

(declare-fun e!2817326 () Bool)

(assert (=> d!1393522 e!2817326))

(declare-fun res!1882194 () Bool)

(assert (=> d!1393522 (=> res!1882194 e!2817326)))

(declare-fun lt!1698819 () Bool)

(assert (=> d!1393522 (= res!1882194 (not lt!1698819))))

(declare-fun lt!1698817 () Bool)

(assert (=> d!1393522 (= lt!1698819 lt!1698817)))

(declare-fun lt!1698816 () Unit!95370)

(declare-fun e!2817325 () Unit!95370)

(assert (=> d!1393522 (= lt!1698816 e!2817325)))

(declare-fun c!771777 () Bool)

(assert (=> d!1393522 (= c!771777 lt!1698817)))

(declare-fun containsKey!1791 (List!50781 (_ BitVec 64)) Bool)

(assert (=> d!1393522 (= lt!1698817 (containsKey!1791 (toList!4335 lt!1698598) hash!344))))

(assert (=> d!1393522 (= (contains!13388 lt!1698598 hash!344) lt!1698819)))

(declare-fun b!4521940 () Bool)

(declare-fun lt!1698818 () Unit!95370)

(assert (=> b!4521940 (= e!2817325 lt!1698818)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1000 (List!50781 (_ BitVec 64)) Unit!95370)

(assert (=> b!4521940 (= lt!1698818 (lemmaContainsKeyImpliesGetValueByKeyDefined!1000 (toList!4335 lt!1698598) hash!344))))

(declare-datatypes ((Option!11119 0))(
  ( (None!11118) (Some!11118 (v!44726 List!50780)) )
))
(declare-fun isDefined!8405 (Option!11119) Bool)

(declare-fun getValueByKey!1097 (List!50781 (_ BitVec 64)) Option!11119)

(assert (=> b!4521940 (isDefined!8405 (getValueByKey!1097 (toList!4335 lt!1698598) hash!344))))

(declare-fun b!4521941 () Bool)

(declare-fun Unit!95391 () Unit!95370)

(assert (=> b!4521941 (= e!2817325 Unit!95391)))

(declare-fun b!4521942 () Bool)

(assert (=> b!4521942 (= e!2817326 (isDefined!8405 (getValueByKey!1097 (toList!4335 lt!1698598) hash!344)))))

(assert (= (and d!1393522 c!771777) b!4521940))

(assert (= (and d!1393522 (not c!771777)) b!4521941))

(assert (= (and d!1393522 (not res!1882194)) b!4521942))

(declare-fun m!5271539 () Bool)

(assert (=> d!1393522 m!5271539))

(declare-fun m!5271541 () Bool)

(assert (=> b!4521940 m!5271541))

(declare-fun m!5271543 () Bool)

(assert (=> b!4521940 m!5271543))

(assert (=> b!4521940 m!5271543))

(declare-fun m!5271545 () Bool)

(assert (=> b!4521940 m!5271545))

(assert (=> b!4521942 m!5271543))

(assert (=> b!4521942 m!5271543))

(assert (=> b!4521942 m!5271545))

(assert (=> b!4521701 d!1393522))

(declare-fun d!1393524 () Bool)

(declare-fun tail!7741 (List!50781) List!50781)

(assert (=> d!1393524 (= (tail!7740 lm!1477) (ListLongMap!2968 (tail!7741 (toList!4335 lm!1477))))))

(declare-fun bs!857434 () Bool)

(assert (= bs!857434 d!1393524))

(declare-fun m!5271547 () Bool)

(assert (=> bs!857434 m!5271547))

(assert (=> b!4521701 d!1393524))

(declare-fun d!1393526 () Bool)

(assert (=> d!1393526 (= (eq!621 lt!1698605 lt!1698589) (= (content!8360 (toList!4336 lt!1698605)) (content!8360 (toList!4336 lt!1698589))))))

(declare-fun bs!857435 () Bool)

(assert (= bs!857435 d!1393526))

(declare-fun m!5271549 () Bool)

(assert (=> bs!857435 m!5271549))

(declare-fun m!5271551 () Bool)

(assert (=> bs!857435 m!5271551))

(assert (=> b!4521687 d!1393526))

(declare-fun d!1393528 () Bool)

(assert (=> d!1393528 (= (eq!621 lt!1698590 lt!1698596) (= (content!8360 (toList!4336 lt!1698590)) (content!8360 (toList!4336 lt!1698596))))))

(declare-fun bs!857436 () Bool)

(assert (= bs!857436 d!1393528))

(declare-fun m!5271553 () Bool)

(assert (=> bs!857436 m!5271553))

(declare-fun m!5271555 () Bool)

(assert (=> bs!857436 m!5271555))

(assert (=> b!4521687 d!1393528))

(declare-fun bs!857437 () Bool)

(declare-fun d!1393530 () Bool)

(assert (= bs!857437 (and d!1393530 start!447772)))

(declare-fun lambda!172704 () Int)

(assert (=> bs!857437 (= lambda!172704 lambda!172643)))

(declare-fun bs!857438 () Bool)

(assert (= bs!857438 (and d!1393530 d!1393490)))

(assert (=> bs!857438 (= lambda!172704 lambda!172699)))

(declare-fun bs!857439 () Bool)

(assert (= bs!857439 (and d!1393530 d!1393510)))

(assert (=> bs!857439 (= lambda!172704 lambda!172702)))

(declare-fun bs!857440 () Bool)

(assert (= bs!857440 (and d!1393530 d!1393520)))

(assert (=> bs!857440 (= lambda!172704 lambda!172703)))

(declare-fun lt!1698820 () ListMap!3597)

(assert (=> d!1393530 (invariantList!1019 (toList!4336 lt!1698820))))

(declare-fun e!2817327 () ListMap!3597)

(assert (=> d!1393530 (= lt!1698820 e!2817327)))

(declare-fun c!771778 () Bool)

(assert (=> d!1393530 (= c!771778 ((_ is Cons!50657) (toList!4335 lt!1698588)))))

(assert (=> d!1393530 (forall!10271 (toList!4335 lt!1698588) lambda!172704)))

(assert (=> d!1393530 (= (extractMap!1220 (toList!4335 lt!1698588)) lt!1698820)))

(declare-fun b!4521943 () Bool)

(assert (=> b!4521943 (= e!2817327 (addToMapMapFromBucket!691 (_2!28840 (h!56512 (toList!4335 lt!1698588))) (extractMap!1220 (t!357743 (toList!4335 lt!1698588)))))))

(declare-fun b!4521944 () Bool)

(assert (=> b!4521944 (= e!2817327 (ListMap!3598 Nil!50656))))

(assert (= (and d!1393530 c!771778) b!4521943))

(assert (= (and d!1393530 (not c!771778)) b!4521944))

(declare-fun m!5271557 () Bool)

(assert (=> d!1393530 m!5271557))

(declare-fun m!5271559 () Bool)

(assert (=> d!1393530 m!5271559))

(declare-fun m!5271561 () Bool)

(assert (=> b!4521943 m!5271561))

(assert (=> b!4521943 m!5271561))

(declare-fun m!5271563 () Bool)

(assert (=> b!4521943 m!5271563))

(assert (=> b!4521687 d!1393530))

(declare-fun bs!857441 () Bool)

(declare-fun d!1393532 () Bool)

(assert (= bs!857441 (and d!1393532 d!1393530)))

(declare-fun lambda!172705 () Int)

(assert (=> bs!857441 (= lambda!172705 lambda!172704)))

(declare-fun bs!857442 () Bool)

(assert (= bs!857442 (and d!1393532 start!447772)))

(assert (=> bs!857442 (= lambda!172705 lambda!172643)))

(declare-fun bs!857443 () Bool)

(assert (= bs!857443 (and d!1393532 d!1393520)))

(assert (=> bs!857443 (= lambda!172705 lambda!172703)))

(declare-fun bs!857444 () Bool)

(assert (= bs!857444 (and d!1393532 d!1393510)))

(assert (=> bs!857444 (= lambda!172705 lambda!172702)))

(declare-fun bs!857445 () Bool)

(assert (= bs!857445 (and d!1393532 d!1393490)))

(assert (=> bs!857445 (= lambda!172705 lambda!172699)))

(declare-fun lt!1698821 () ListMap!3597)

(assert (=> d!1393532 (invariantList!1019 (toList!4336 lt!1698821))))

(declare-fun e!2817328 () ListMap!3597)

(assert (=> d!1393532 (= lt!1698821 e!2817328)))

(declare-fun c!771779 () Bool)

(assert (=> d!1393532 (= c!771779 ((_ is Cons!50657) (toList!4335 (+!1544 lt!1698598 lt!1698602))))))

(assert (=> d!1393532 (forall!10271 (toList!4335 (+!1544 lt!1698598 lt!1698602)) lambda!172705)))

(assert (=> d!1393532 (= (extractMap!1220 (toList!4335 (+!1544 lt!1698598 lt!1698602))) lt!1698821)))

(declare-fun b!4521945 () Bool)

(assert (=> b!4521945 (= e!2817328 (addToMapMapFromBucket!691 (_2!28840 (h!56512 (toList!4335 (+!1544 lt!1698598 lt!1698602)))) (extractMap!1220 (t!357743 (toList!4335 (+!1544 lt!1698598 lt!1698602))))))))

(declare-fun b!4521946 () Bool)

(assert (=> b!4521946 (= e!2817328 (ListMap!3598 Nil!50656))))

(assert (= (and d!1393532 c!771779) b!4521945))

(assert (= (and d!1393532 (not c!771779)) b!4521946))

(declare-fun m!5271565 () Bool)

(assert (=> d!1393532 m!5271565))

(declare-fun m!5271567 () Bool)

(assert (=> d!1393532 m!5271567))

(declare-fun m!5271569 () Bool)

(assert (=> b!4521945 m!5271569))

(assert (=> b!4521945 m!5271569))

(declare-fun m!5271571 () Bool)

(assert (=> b!4521945 m!5271571))

(assert (=> b!4521687 d!1393532))

(declare-fun bs!857446 () Bool)

(declare-fun d!1393534 () Bool)

(assert (= bs!857446 (and d!1393534 d!1393530)))

(declare-fun lambda!172708 () Int)

(assert (=> bs!857446 (= lambda!172708 lambda!172704)))

(declare-fun bs!857447 () Bool)

(assert (= bs!857447 (and d!1393534 start!447772)))

(assert (=> bs!857447 (= lambda!172708 lambda!172643)))

(declare-fun bs!857448 () Bool)

(assert (= bs!857448 (and d!1393534 d!1393520)))

(assert (=> bs!857448 (= lambda!172708 lambda!172703)))

(declare-fun bs!857449 () Bool)

(assert (= bs!857449 (and d!1393534 d!1393510)))

(assert (=> bs!857449 (= lambda!172708 lambda!172702)))

(declare-fun bs!857450 () Bool)

(assert (= bs!857450 (and d!1393534 d!1393532)))

(assert (=> bs!857450 (= lambda!172708 lambda!172705)))

(declare-fun bs!857451 () Bool)

(assert (= bs!857451 (and d!1393534 d!1393490)))

(assert (=> bs!857451 (= lambda!172708 lambda!172699)))

(assert (=> d!1393534 (eq!621 (extractMap!1220 (toList!4335 (+!1544 lt!1698598 (tuple2!51093 hash!344 newBucket!178)))) (-!390 (extractMap!1220 (toList!4335 lt!1698598)) key!3287))))

(declare-fun lt!1698824 () Unit!95370)

(declare-fun choose!29547 (ListLongMap!2967 (_ BitVec 64) List!50780 K!12050 Hashable!5559) Unit!95370)

(assert (=> d!1393534 (= lt!1698824 (choose!29547 lt!1698598 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1393534 (forall!10271 (toList!4335 lt!1698598) lambda!172708)))

(assert (=> d!1393534 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!149 lt!1698598 hash!344 newBucket!178 key!3287 hashF!1107) lt!1698824)))

(declare-fun bs!857452 () Bool)

(assert (= bs!857452 d!1393534))

(declare-fun m!5271573 () Bool)

(assert (=> bs!857452 m!5271573))

(declare-fun m!5271575 () Bool)

(assert (=> bs!857452 m!5271575))

(assert (=> bs!857452 m!5271151))

(declare-fun m!5271577 () Bool)

(assert (=> bs!857452 m!5271577))

(assert (=> bs!857452 m!5271151))

(assert (=> bs!857452 m!5271575))

(assert (=> bs!857452 m!5271577))

(declare-fun m!5271579 () Bool)

(assert (=> bs!857452 m!5271579))

(declare-fun m!5271581 () Bool)

(assert (=> bs!857452 m!5271581))

(declare-fun m!5271583 () Bool)

(assert (=> bs!857452 m!5271583))

(assert (=> b!4521687 d!1393534))

(declare-fun d!1393536 () Bool)

(declare-fun e!2817331 () Bool)

(assert (=> d!1393536 e!2817331))

(declare-fun res!1882200 () Bool)

(assert (=> d!1393536 (=> (not res!1882200) (not e!2817331))))

(declare-fun lt!1698833 () ListLongMap!2967)

(assert (=> d!1393536 (= res!1882200 (contains!13388 lt!1698833 (_1!28840 lt!1698599)))))

(declare-fun lt!1698835 () List!50781)

(assert (=> d!1393536 (= lt!1698833 (ListLongMap!2968 lt!1698835))))

(declare-fun lt!1698836 () Unit!95370)

(declare-fun lt!1698834 () Unit!95370)

(assert (=> d!1393536 (= lt!1698836 lt!1698834)))

(assert (=> d!1393536 (= (getValueByKey!1097 lt!1698835 (_1!28840 lt!1698599)) (Some!11118 (_2!28840 lt!1698599)))))

(declare-fun lemmaContainsTupThenGetReturnValue!682 (List!50781 (_ BitVec 64) List!50780) Unit!95370)

(assert (=> d!1393536 (= lt!1698834 (lemmaContainsTupThenGetReturnValue!682 lt!1698835 (_1!28840 lt!1698599) (_2!28840 lt!1698599)))))

(declare-fun insertStrictlySorted!410 (List!50781 (_ BitVec 64) List!50780) List!50781)

(assert (=> d!1393536 (= lt!1698835 (insertStrictlySorted!410 (toList!4335 lt!1698598) (_1!28840 lt!1698599) (_2!28840 lt!1698599)))))

(assert (=> d!1393536 (= (+!1544 lt!1698598 lt!1698599) lt!1698833)))

(declare-fun b!4521951 () Bool)

(declare-fun res!1882199 () Bool)

(assert (=> b!4521951 (=> (not res!1882199) (not e!2817331))))

(assert (=> b!4521951 (= res!1882199 (= (getValueByKey!1097 (toList!4335 lt!1698833) (_1!28840 lt!1698599)) (Some!11118 (_2!28840 lt!1698599))))))

(declare-fun b!4521952 () Bool)

(assert (=> b!4521952 (= e!2817331 (contains!13389 (toList!4335 lt!1698833) lt!1698599))))

(assert (= (and d!1393536 res!1882200) b!4521951))

(assert (= (and b!4521951 res!1882199) b!4521952))

(declare-fun m!5271585 () Bool)

(assert (=> d!1393536 m!5271585))

(declare-fun m!5271587 () Bool)

(assert (=> d!1393536 m!5271587))

(declare-fun m!5271589 () Bool)

(assert (=> d!1393536 m!5271589))

(declare-fun m!5271591 () Bool)

(assert (=> d!1393536 m!5271591))

(declare-fun m!5271593 () Bool)

(assert (=> b!4521951 m!5271593))

(declare-fun m!5271595 () Bool)

(assert (=> b!4521952 m!5271595))

(assert (=> b!4521687 d!1393536))

(declare-fun d!1393538 () Bool)

(declare-fun e!2817336 () Bool)

(assert (=> d!1393538 e!2817336))

(declare-fun res!1882203 () Bool)

(assert (=> d!1393538 (=> (not res!1882203) (not e!2817336))))

(declare-fun lt!1698855 () ListMap!3597)

(assert (=> d!1393538 (= res!1882203 (not (contains!13387 lt!1698855 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!142 (List!50780 K!12050) List!50780)

(assert (=> d!1393538 (= lt!1698855 (ListMap!3598 (removePresrvNoDuplicatedKeys!142 (toList!4336 lt!1698610) key!3287)))))

(assert (=> d!1393538 (= (-!390 lt!1698610 key!3287) lt!1698855)))

(declare-fun b!4521959 () Bool)

(declare-fun content!8363 (List!50783) (InoxSet K!12050))

(assert (=> b!4521959 (= e!2817336 (= ((_ map and) (content!8363 (keys!17600 lt!1698610)) ((_ map not) (store ((as const (Array K!12050 Bool)) false) key!3287 true))) (content!8363 (keys!17600 lt!1698855))))))

(assert (= (and d!1393538 res!1882203) b!4521959))

(declare-fun m!5271597 () Bool)

(assert (=> d!1393538 m!5271597))

(declare-fun m!5271599 () Bool)

(assert (=> d!1393538 m!5271599))

(declare-fun m!5271601 () Bool)

(assert (=> b!4521959 m!5271601))

(assert (=> b!4521959 m!5271601))

(declare-fun m!5271603 () Bool)

(assert (=> b!4521959 m!5271603))

(declare-fun m!5271605 () Bool)

(assert (=> b!4521959 m!5271605))

(declare-fun m!5271607 () Bool)

(assert (=> b!4521959 m!5271607))

(assert (=> b!4521959 m!5271605))

(declare-fun m!5271609 () Bool)

(assert (=> b!4521959 m!5271609))

(assert (=> b!4521687 d!1393538))

(declare-fun d!1393540 () Bool)

(declare-fun head!9420 (List!50781) tuple2!51092)

(assert (=> d!1393540 (= (head!9418 lm!1477) (head!9420 (toList!4335 lm!1477)))))

(declare-fun bs!857453 () Bool)

(assert (= bs!857453 d!1393540))

(declare-fun m!5271611 () Bool)

(assert (=> bs!857453 m!5271611))

(assert (=> b!4521687 d!1393540))

(declare-fun d!1393542 () Bool)

(declare-fun e!2817337 () Bool)

(assert (=> d!1393542 e!2817337))

(declare-fun res!1882205 () Bool)

(assert (=> d!1393542 (=> (not res!1882205) (not e!2817337))))

(declare-fun lt!1698860 () ListLongMap!2967)

(assert (=> d!1393542 (= res!1882205 (contains!13388 lt!1698860 (_1!28840 lt!1698602)))))

(declare-fun lt!1698862 () List!50781)

(assert (=> d!1393542 (= lt!1698860 (ListLongMap!2968 lt!1698862))))

(declare-fun lt!1698863 () Unit!95370)

(declare-fun lt!1698861 () Unit!95370)

(assert (=> d!1393542 (= lt!1698863 lt!1698861)))

(assert (=> d!1393542 (= (getValueByKey!1097 lt!1698862 (_1!28840 lt!1698602)) (Some!11118 (_2!28840 lt!1698602)))))

(assert (=> d!1393542 (= lt!1698861 (lemmaContainsTupThenGetReturnValue!682 lt!1698862 (_1!28840 lt!1698602) (_2!28840 lt!1698602)))))

(assert (=> d!1393542 (= lt!1698862 (insertStrictlySorted!410 (toList!4335 lt!1698598) (_1!28840 lt!1698602) (_2!28840 lt!1698602)))))

(assert (=> d!1393542 (= (+!1544 lt!1698598 lt!1698602) lt!1698860)))

(declare-fun b!4521960 () Bool)

(declare-fun res!1882204 () Bool)

(assert (=> b!4521960 (=> (not res!1882204) (not e!2817337))))

(assert (=> b!4521960 (= res!1882204 (= (getValueByKey!1097 (toList!4335 lt!1698860) (_1!28840 lt!1698602)) (Some!11118 (_2!28840 lt!1698602))))))

(declare-fun b!4521961 () Bool)

(assert (=> b!4521961 (= e!2817337 (contains!13389 (toList!4335 lt!1698860) lt!1698602))))

(assert (= (and d!1393542 res!1882205) b!4521960))

(assert (= (and b!4521960 res!1882204) b!4521961))

(declare-fun m!5271613 () Bool)

(assert (=> d!1393542 m!5271613))

(declare-fun m!5271615 () Bool)

(assert (=> d!1393542 m!5271615))

(declare-fun m!5271617 () Bool)

(assert (=> d!1393542 m!5271617))

(declare-fun m!5271619 () Bool)

(assert (=> d!1393542 m!5271619))

(declare-fun m!5271621 () Bool)

(assert (=> b!4521960 m!5271621))

(declare-fun m!5271623 () Bool)

(assert (=> b!4521961 m!5271623))

(assert (=> b!4521687 d!1393542))

(declare-fun d!1393544 () Bool)

(assert (=> d!1393544 (= (eq!621 lt!1698600 lt!1698586) (= (content!8360 (toList!4336 lt!1698600)) (content!8360 (toList!4336 lt!1698586))))))

(declare-fun bs!857454 () Bool)

(assert (= bs!857454 d!1393544))

(assert (=> bs!857454 m!5271207))

(declare-fun m!5271625 () Bool)

(assert (=> bs!857454 m!5271625))

(assert (=> b!4521698 d!1393544))

(declare-fun d!1393546 () Bool)

(assert (=> d!1393546 (= (eq!621 lt!1698609 lt!1698586) (= (content!8360 (toList!4336 lt!1698609)) (content!8360 (toList!4336 lt!1698586))))))

(declare-fun bs!857455 () Bool)

(assert (= bs!857455 d!1393546))

(assert (=> bs!857455 m!5271209))

(assert (=> bs!857455 m!5271625))

(assert (=> b!4521698 d!1393546))

(declare-fun bs!857456 () Bool)

(declare-fun b!4521965 () Bool)

(assert (= bs!857456 (and b!4521965 b!4521844)))

(declare-fun lambda!172721 () Int)

(assert (=> bs!857456 (= (= lt!1698596 lt!1698590) (= lambda!172721 lambda!172690))))

(declare-fun bs!857457 () Bool)

(assert (= bs!857457 (and b!4521965 b!4521842)))

(assert (=> bs!857457 (= (= lt!1698596 lt!1698590) (= lambda!172721 lambda!172691))))

(assert (=> bs!857457 (= (= lt!1698596 lt!1698742) (= lambda!172721 lambda!172692))))

(declare-fun bs!857458 () Bool)

(assert (= bs!857458 (and b!4521965 d!1393432)))

(assert (=> bs!857458 (= (= lt!1698596 lt!1698738) (= lambda!172721 lambda!172693))))

(assert (=> b!4521965 true))

(declare-fun bs!857459 () Bool)

(declare-fun b!4521963 () Bool)

(assert (= bs!857459 (and b!4521963 d!1393432)))

(declare-fun lambda!172722 () Int)

(assert (=> bs!857459 (= (= lt!1698596 lt!1698738) (= lambda!172722 lambda!172693))))

(declare-fun bs!857460 () Bool)

(assert (= bs!857460 (and b!4521963 b!4521965)))

(assert (=> bs!857460 (= lambda!172722 lambda!172721)))

(declare-fun bs!857461 () Bool)

(assert (= bs!857461 (and b!4521963 b!4521844)))

(assert (=> bs!857461 (= (= lt!1698596 lt!1698590) (= lambda!172722 lambda!172690))))

(declare-fun bs!857462 () Bool)

(assert (= bs!857462 (and b!4521963 b!4521842)))

(assert (=> bs!857462 (= (= lt!1698596 lt!1698590) (= lambda!172722 lambda!172691))))

(assert (=> bs!857462 (= (= lt!1698596 lt!1698742) (= lambda!172722 lambda!172692))))

(assert (=> b!4521963 true))

(declare-fun lt!1698872 () ListMap!3597)

(declare-fun lambda!172725 () Int)

(assert (=> bs!857459 (= (= lt!1698872 lt!1698738) (= lambda!172725 lambda!172693))))

(assert (=> bs!857460 (= (= lt!1698872 lt!1698596) (= lambda!172725 lambda!172721))))

(assert (=> bs!857461 (= (= lt!1698872 lt!1698590) (= lambda!172725 lambda!172690))))

(assert (=> bs!857462 (= (= lt!1698872 lt!1698590) (= lambda!172725 lambda!172691))))

(assert (=> bs!857462 (= (= lt!1698872 lt!1698742) (= lambda!172725 lambda!172692))))

(assert (=> b!4521963 (= (= lt!1698872 lt!1698596) (= lambda!172725 lambda!172722))))

(assert (=> b!4521963 true))

(declare-fun bs!857463 () Bool)

(declare-fun d!1393548 () Bool)

(assert (= bs!857463 (and d!1393548 d!1393432)))

(declare-fun lt!1698868 () ListMap!3597)

(declare-fun lambda!172730 () Int)

(assert (=> bs!857463 (= (= lt!1698868 lt!1698738) (= lambda!172730 lambda!172693))))

(declare-fun bs!857464 () Bool)

(assert (= bs!857464 (and d!1393548 b!4521965)))

(assert (=> bs!857464 (= (= lt!1698868 lt!1698596) (= lambda!172730 lambda!172721))))

(declare-fun bs!857465 () Bool)

(assert (= bs!857465 (and d!1393548 b!4521844)))

(assert (=> bs!857465 (= (= lt!1698868 lt!1698590) (= lambda!172730 lambda!172690))))

(declare-fun bs!857466 () Bool)

(assert (= bs!857466 (and d!1393548 b!4521842)))

(assert (=> bs!857466 (= (= lt!1698868 lt!1698590) (= lambda!172730 lambda!172691))))

(assert (=> bs!857466 (= (= lt!1698868 lt!1698742) (= lambda!172730 lambda!172692))))

(declare-fun bs!857467 () Bool)

(assert (= bs!857467 (and d!1393548 b!4521963)))

(assert (=> bs!857467 (= (= lt!1698868 lt!1698872) (= lambda!172730 lambda!172725))))

(assert (=> bs!857467 (= (= lt!1698868 lt!1698596) (= lambda!172730 lambda!172722))))

(assert (=> d!1393548 true))

(declare-fun b!4521962 () Bool)

(declare-fun e!2817339 () Bool)

(assert (=> b!4521962 (= e!2817339 (forall!10272 (toList!4336 lt!1698596) lambda!172725))))

(declare-fun c!771782 () Bool)

(declare-fun call!315085 () Bool)

(declare-fun bm!315079 () Bool)

(assert (=> bm!315079 (= call!315085 (forall!10272 (ite c!771782 (toList!4336 lt!1698596) (_2!28840 lt!1698602)) (ite c!771782 lambda!172721 lambda!172725)))))

(declare-fun e!2817340 () Bool)

(assert (=> d!1393548 e!2817340))

(declare-fun res!1882208 () Bool)

(assert (=> d!1393548 (=> (not res!1882208) (not e!2817340))))

(assert (=> d!1393548 (= res!1882208 (forall!10272 (_2!28840 lt!1698602) lambda!172730))))

(declare-fun e!2817338 () ListMap!3597)

(assert (=> d!1393548 (= lt!1698868 e!2817338)))

(assert (=> d!1393548 (= c!771782 ((_ is Nil!50656) (_2!28840 lt!1698602)))))

(assert (=> d!1393548 (noDuplicateKeys!1164 (_2!28840 lt!1698602))))

(assert (=> d!1393548 (= (addToMapMapFromBucket!691 (_2!28840 lt!1698602) lt!1698596) lt!1698868)))

(assert (=> b!4521963 (= e!2817338 lt!1698872)))

(declare-fun lt!1698873 () ListMap!3597)

(assert (=> b!4521963 (= lt!1698873 (+!1545 lt!1698596 (h!56511 (_2!28840 lt!1698602))))))

(assert (=> b!4521963 (= lt!1698872 (addToMapMapFromBucket!691 (t!357742 (_2!28840 lt!1698602)) (+!1545 lt!1698596 (h!56511 (_2!28840 lt!1698602)))))))

(declare-fun lt!1698875 () Unit!95370)

(declare-fun call!315086 () Unit!95370)

(assert (=> b!4521963 (= lt!1698875 call!315086)))

(assert (=> b!4521963 (forall!10272 (toList!4336 lt!1698596) lambda!172722)))

(declare-fun lt!1698877 () Unit!95370)

(assert (=> b!4521963 (= lt!1698877 lt!1698875)))

(assert (=> b!4521963 (forall!10272 (toList!4336 lt!1698873) lambda!172725)))

(declare-fun lt!1698886 () Unit!95370)

(declare-fun Unit!95392 () Unit!95370)

(assert (=> b!4521963 (= lt!1698886 Unit!95392)))

(assert (=> b!4521963 (forall!10272 (t!357742 (_2!28840 lt!1698602)) lambda!172725)))

(declare-fun lt!1698880 () Unit!95370)

(declare-fun Unit!95393 () Unit!95370)

(assert (=> b!4521963 (= lt!1698880 Unit!95393)))

(declare-fun lt!1698883 () Unit!95370)

(declare-fun Unit!95394 () Unit!95370)

(assert (=> b!4521963 (= lt!1698883 Unit!95394)))

(declare-fun lt!1698882 () Unit!95370)

(assert (=> b!4521963 (= lt!1698882 (forallContained!2524 (toList!4336 lt!1698873) lambda!172725 (h!56511 (_2!28840 lt!1698602))))))

(assert (=> b!4521963 (contains!13387 lt!1698873 (_1!28839 (h!56511 (_2!28840 lt!1698602))))))

(declare-fun lt!1698884 () Unit!95370)

(declare-fun Unit!95395 () Unit!95370)

(assert (=> b!4521963 (= lt!1698884 Unit!95395)))

(assert (=> b!4521963 (contains!13387 lt!1698872 (_1!28839 (h!56511 (_2!28840 lt!1698602))))))

(declare-fun lt!1698885 () Unit!95370)

(declare-fun Unit!95396 () Unit!95370)

(assert (=> b!4521963 (= lt!1698885 Unit!95396)))

(assert (=> b!4521963 (forall!10272 (_2!28840 lt!1698602) lambda!172725)))

(declare-fun lt!1698876 () Unit!95370)

(declare-fun Unit!95397 () Unit!95370)

(assert (=> b!4521963 (= lt!1698876 Unit!95397)))

(assert (=> b!4521963 (forall!10272 (toList!4336 lt!1698873) lambda!172725)))

(declare-fun lt!1698879 () Unit!95370)

(declare-fun Unit!95398 () Unit!95370)

(assert (=> b!4521963 (= lt!1698879 Unit!95398)))

(declare-fun lt!1698887 () Unit!95370)

(declare-fun Unit!95399 () Unit!95370)

(assert (=> b!4521963 (= lt!1698887 Unit!95399)))

(declare-fun lt!1698881 () Unit!95370)

(assert (=> b!4521963 (= lt!1698881 (addForallContainsKeyThenBeforeAdding!339 lt!1698596 lt!1698872 (_1!28839 (h!56511 (_2!28840 lt!1698602))) (_2!28839 (h!56511 (_2!28840 lt!1698602)))))))

(declare-fun call!315084 () Bool)

(assert (=> b!4521963 call!315084))

(declare-fun lt!1698869 () Unit!95370)

(assert (=> b!4521963 (= lt!1698869 lt!1698881)))

(assert (=> b!4521963 (forall!10272 (toList!4336 lt!1698596) lambda!172725)))

(declare-fun lt!1698878 () Unit!95370)

(declare-fun Unit!95400 () Unit!95370)

(assert (=> b!4521963 (= lt!1698878 Unit!95400)))

(declare-fun res!1882207 () Bool)

(assert (=> b!4521963 (= res!1882207 call!315085)))

(assert (=> b!4521963 (=> (not res!1882207) (not e!2817339))))

(assert (=> b!4521963 e!2817339))

(declare-fun lt!1698874 () Unit!95370)

(declare-fun Unit!95401 () Unit!95370)

(assert (=> b!4521963 (= lt!1698874 Unit!95401)))

(declare-fun bm!315080 () Bool)

(assert (=> bm!315080 (= call!315086 (lemmaContainsAllItsOwnKeys!339 lt!1698596))))

(declare-fun b!4521964 () Bool)

(assert (=> b!4521964 (= e!2817340 (invariantList!1019 (toList!4336 lt!1698868)))))

(assert (=> b!4521965 (= e!2817338 lt!1698596)))

(declare-fun lt!1698871 () Unit!95370)

(assert (=> b!4521965 (= lt!1698871 call!315086)))

(assert (=> b!4521965 call!315084))

(declare-fun lt!1698870 () Unit!95370)

(assert (=> b!4521965 (= lt!1698870 lt!1698871)))

(assert (=> b!4521965 call!315085))

(declare-fun lt!1698888 () Unit!95370)

(declare-fun Unit!95402 () Unit!95370)

(assert (=> b!4521965 (= lt!1698888 Unit!95402)))

(declare-fun b!4521966 () Bool)

(declare-fun res!1882206 () Bool)

(assert (=> b!4521966 (=> (not res!1882206) (not e!2817340))))

(assert (=> b!4521966 (= res!1882206 (forall!10272 (toList!4336 lt!1698596) lambda!172730))))

(declare-fun bm!315081 () Bool)

(assert (=> bm!315081 (= call!315084 (forall!10272 (toList!4336 lt!1698596) (ite c!771782 lambda!172721 lambda!172725)))))

(assert (= (and d!1393548 c!771782) b!4521965))

(assert (= (and d!1393548 (not c!771782)) b!4521963))

(assert (= (and b!4521963 res!1882207) b!4521962))

(assert (= (or b!4521965 b!4521963) bm!315079))

(assert (= (or b!4521965 b!4521963) bm!315081))

(assert (= (or b!4521965 b!4521963) bm!315080))

(assert (= (and d!1393548 res!1882208) b!4521966))

(assert (= (and b!4521966 res!1882206) b!4521964))

(declare-fun m!5271627 () Bool)

(assert (=> bm!315081 m!5271627))

(declare-fun m!5271629 () Bool)

(assert (=> bm!315080 m!5271629))

(declare-fun m!5271631 () Bool)

(assert (=> d!1393548 m!5271631))

(assert (=> d!1393548 m!5271197))

(declare-fun m!5271633 () Bool)

(assert (=> b!4521964 m!5271633))

(declare-fun m!5271635 () Bool)

(assert (=> b!4521962 m!5271635))

(declare-fun m!5271637 () Bool)

(assert (=> b!4521966 m!5271637))

(declare-fun m!5271639 () Bool)

(assert (=> bm!315079 m!5271639))

(assert (=> b!4521963 m!5271635))

(declare-fun m!5271641 () Bool)

(assert (=> b!4521963 m!5271641))

(declare-fun m!5271643 () Bool)

(assert (=> b!4521963 m!5271643))

(declare-fun m!5271645 () Bool)

(assert (=> b!4521963 m!5271645))

(declare-fun m!5271647 () Bool)

(assert (=> b!4521963 m!5271647))

(declare-fun m!5271649 () Bool)

(assert (=> b!4521963 m!5271649))

(declare-fun m!5271651 () Bool)

(assert (=> b!4521963 m!5271651))

(assert (=> b!4521963 m!5271649))

(declare-fun m!5271653 () Bool)

(assert (=> b!4521963 m!5271653))

(declare-fun m!5271655 () Bool)

(assert (=> b!4521963 m!5271655))

(declare-fun m!5271657 () Bool)

(assert (=> b!4521963 m!5271657))

(assert (=> b!4521963 m!5271647))

(declare-fun m!5271659 () Bool)

(assert (=> b!4521963 m!5271659))

(assert (=> b!4521698 d!1393548))

(declare-fun d!1393550 () Bool)

(assert (=> d!1393550 (eq!621 (addToMapMapFromBucket!691 (_2!28840 lt!1698602) lt!1698590) (addToMapMapFromBucket!691 (_2!28840 lt!1698602) lt!1698596))))

(declare-fun lt!1698930 () Unit!95370)

(declare-fun choose!29551 (ListMap!3597 ListMap!3597 List!50780) Unit!95370)

(assert (=> d!1393550 (= lt!1698930 (choose!29551 lt!1698590 lt!1698596 (_2!28840 lt!1698602)))))

(assert (=> d!1393550 (noDuplicateKeys!1164 (_2!28840 lt!1698602))))

(assert (=> d!1393550 (= (lemmaAddToMapFromBucketPreservesEquivalence!40 lt!1698590 lt!1698596 (_2!28840 lt!1698602)) lt!1698930)))

(declare-fun bs!857468 () Bool)

(assert (= bs!857468 d!1393550))

(assert (=> bs!857468 m!5271197))

(declare-fun m!5271661 () Bool)

(assert (=> bs!857468 m!5271661))

(assert (=> bs!857468 m!5271171))

(assert (=> bs!857468 m!5271121))

(assert (=> bs!857468 m!5271171))

(assert (=> bs!857468 m!5271121))

(declare-fun m!5271663 () Bool)

(assert (=> bs!857468 m!5271663))

(assert (=> b!4521698 d!1393550))

(declare-fun d!1393552 () Bool)

(assert (=> d!1393552 (= (eq!621 lt!1698589 lt!1698605) (= (content!8360 (toList!4336 lt!1698589)) (content!8360 (toList!4336 lt!1698605))))))

(declare-fun bs!857470 () Bool)

(assert (= bs!857470 d!1393552))

(assert (=> bs!857470 m!5271551))

(assert (=> bs!857470 m!5271549))

(assert (=> b!4521697 d!1393552))

(declare-fun d!1393554 () Bool)

(declare-fun e!2817348 () Bool)

(assert (=> d!1393554 e!2817348))

(declare-fun res!1882219 () Bool)

(assert (=> d!1393554 (=> (not res!1882219) (not e!2817348))))

(declare-fun lt!1698931 () ListLongMap!2967)

(assert (=> d!1393554 (= res!1882219 (contains!13388 lt!1698931 (_1!28840 lt!1698599)))))

(declare-fun lt!1698933 () List!50781)

(assert (=> d!1393554 (= lt!1698931 (ListLongMap!2968 lt!1698933))))

(declare-fun lt!1698934 () Unit!95370)

(declare-fun lt!1698932 () Unit!95370)

(assert (=> d!1393554 (= lt!1698934 lt!1698932)))

(assert (=> d!1393554 (= (getValueByKey!1097 lt!1698933 (_1!28840 lt!1698599)) (Some!11118 (_2!28840 lt!1698599)))))

(assert (=> d!1393554 (= lt!1698932 (lemmaContainsTupThenGetReturnValue!682 lt!1698933 (_1!28840 lt!1698599) (_2!28840 lt!1698599)))))

(assert (=> d!1393554 (= lt!1698933 (insertStrictlySorted!410 (toList!4335 lm!1477) (_1!28840 lt!1698599) (_2!28840 lt!1698599)))))

(assert (=> d!1393554 (= (+!1544 lm!1477 lt!1698599) lt!1698931)))

(declare-fun b!4521980 () Bool)

(declare-fun res!1882218 () Bool)

(assert (=> b!4521980 (=> (not res!1882218) (not e!2817348))))

(assert (=> b!4521980 (= res!1882218 (= (getValueByKey!1097 (toList!4335 lt!1698931) (_1!28840 lt!1698599)) (Some!11118 (_2!28840 lt!1698599))))))

(declare-fun b!4521981 () Bool)

(assert (=> b!4521981 (= e!2817348 (contains!13389 (toList!4335 lt!1698931) lt!1698599))))

(assert (= (and d!1393554 res!1882219) b!4521980))

(assert (= (and b!4521980 res!1882218) b!4521981))

(declare-fun m!5271665 () Bool)

(assert (=> d!1393554 m!5271665))

(declare-fun m!5271667 () Bool)

(assert (=> d!1393554 m!5271667))

(declare-fun m!5271669 () Bool)

(assert (=> d!1393554 m!5271669))

(declare-fun m!5271671 () Bool)

(assert (=> d!1393554 m!5271671))

(declare-fun m!5271673 () Bool)

(assert (=> b!4521980 m!5271673))

(declare-fun m!5271675 () Bool)

(assert (=> b!4521981 m!5271675))

(assert (=> b!4521699 d!1393554))

(declare-fun d!1393556 () Bool)

(declare-fun e!2817349 () Bool)

(assert (=> d!1393556 e!2817349))

(declare-fun res!1882221 () Bool)

(assert (=> d!1393556 (=> (not res!1882221) (not e!2817349))))

(declare-fun lt!1698935 () ListLongMap!2967)

(assert (=> d!1393556 (= res!1882221 (contains!13388 lt!1698935 (_1!28840 lt!1698602)))))

(declare-fun lt!1698937 () List!50781)

(assert (=> d!1393556 (= lt!1698935 (ListLongMap!2968 lt!1698937))))

(declare-fun lt!1698938 () Unit!95370)

(declare-fun lt!1698936 () Unit!95370)

(assert (=> d!1393556 (= lt!1698938 lt!1698936)))

(assert (=> d!1393556 (= (getValueByKey!1097 lt!1698937 (_1!28840 lt!1698602)) (Some!11118 (_2!28840 lt!1698602)))))

(assert (=> d!1393556 (= lt!1698936 (lemmaContainsTupThenGetReturnValue!682 lt!1698937 (_1!28840 lt!1698602) (_2!28840 lt!1698602)))))

(assert (=> d!1393556 (= lt!1698937 (insertStrictlySorted!410 (toList!4335 lt!1698588) (_1!28840 lt!1698602) (_2!28840 lt!1698602)))))

(assert (=> d!1393556 (= (+!1544 lt!1698588 lt!1698602) lt!1698935)))

(declare-fun b!4521982 () Bool)

(declare-fun res!1882220 () Bool)

(assert (=> b!4521982 (=> (not res!1882220) (not e!2817349))))

(assert (=> b!4521982 (= res!1882220 (= (getValueByKey!1097 (toList!4335 lt!1698935) (_1!28840 lt!1698602)) (Some!11118 (_2!28840 lt!1698602))))))

(declare-fun b!4521983 () Bool)

(assert (=> b!4521983 (= e!2817349 (contains!13389 (toList!4335 lt!1698935) lt!1698602))))

(assert (= (and d!1393556 res!1882221) b!4521982))

(assert (= (and b!4521982 res!1882220) b!4521983))

(declare-fun m!5271677 () Bool)

(assert (=> d!1393556 m!5271677))

(declare-fun m!5271679 () Bool)

(assert (=> d!1393556 m!5271679))

(declare-fun m!5271681 () Bool)

(assert (=> d!1393556 m!5271681))

(declare-fun m!5271683 () Bool)

(assert (=> d!1393556 m!5271683))

(declare-fun m!5271685 () Bool)

(assert (=> b!4521982 m!5271685))

(declare-fun m!5271687 () Bool)

(assert (=> b!4521983 m!5271687))

(assert (=> b!4521699 d!1393556))

(declare-fun d!1393558 () Bool)

(declare-fun res!1882228 () Bool)

(declare-fun e!2817358 () Bool)

(assert (=> d!1393558 (=> res!1882228 e!2817358)))

(declare-fun e!2817356 () Bool)

(assert (=> d!1393558 (= res!1882228 e!2817356)))

(declare-fun res!1882229 () Bool)

(assert (=> d!1393558 (=> (not res!1882229) (not e!2817356))))

(assert (=> d!1393558 (= res!1882229 ((_ is Cons!50657) (t!357743 (toList!4335 lm!1477))))))

(assert (=> d!1393558 (= (containsKeyBiggerList!144 (t!357743 (toList!4335 lm!1477)) key!3287) e!2817358)))

(declare-fun b!4521990 () Bool)

(assert (=> b!4521990 (= e!2817356 (containsKey!1788 (_2!28840 (h!56512 (t!357743 (toList!4335 lm!1477)))) key!3287))))

(declare-fun b!4521991 () Bool)

(declare-fun e!2817357 () Bool)

(assert (=> b!4521991 (= e!2817358 e!2817357)))

(declare-fun res!1882230 () Bool)

(assert (=> b!4521991 (=> (not res!1882230) (not e!2817357))))

(assert (=> b!4521991 (= res!1882230 ((_ is Cons!50657) (t!357743 (toList!4335 lm!1477))))))

(declare-fun b!4521992 () Bool)

(assert (=> b!4521992 (= e!2817357 (containsKeyBiggerList!144 (t!357743 (t!357743 (toList!4335 lm!1477))) key!3287))))

(assert (= (and d!1393558 res!1882229) b!4521990))

(assert (= (and d!1393558 (not res!1882228)) b!4521991))

(assert (= (and b!4521991 res!1882230) b!4521992))

(declare-fun m!5271705 () Bool)

(assert (=> b!4521990 m!5271705))

(declare-fun m!5271707 () Bool)

(assert (=> b!4521992 m!5271707))

(assert (=> b!4521710 d!1393558))

(declare-fun d!1393560 () Bool)

(declare-fun res!1882231 () Bool)

(declare-fun e!2817361 () Bool)

(assert (=> d!1393560 (=> res!1882231 e!2817361)))

(declare-fun e!2817359 () Bool)

(assert (=> d!1393560 (= res!1882231 e!2817359)))

(declare-fun res!1882232 () Bool)

(assert (=> d!1393560 (=> (not res!1882232) (not e!2817359))))

(assert (=> d!1393560 (= res!1882232 ((_ is Cons!50657) (toList!4335 lt!1698598)))))

(assert (=> d!1393560 (= (containsKeyBiggerList!144 (toList!4335 lt!1698598) key!3287) e!2817361)))

(declare-fun b!4521993 () Bool)

(assert (=> b!4521993 (= e!2817359 (containsKey!1788 (_2!28840 (h!56512 (toList!4335 lt!1698598))) key!3287))))

(declare-fun b!4521994 () Bool)

(declare-fun e!2817360 () Bool)

(assert (=> b!4521994 (= e!2817361 e!2817360)))

(declare-fun res!1882233 () Bool)

(assert (=> b!4521994 (=> (not res!1882233) (not e!2817360))))

(assert (=> b!4521994 (= res!1882233 ((_ is Cons!50657) (toList!4335 lt!1698598)))))

(declare-fun b!4521995 () Bool)

(assert (=> b!4521995 (= e!2817360 (containsKeyBiggerList!144 (t!357743 (toList!4335 lt!1698598)) key!3287))))

(assert (= (and d!1393560 res!1882232) b!4521993))

(assert (= (and d!1393560 (not res!1882231)) b!4521994))

(assert (= (and b!4521994 res!1882233) b!4521995))

(declare-fun m!5271723 () Bool)

(assert (=> b!4521993 m!5271723))

(declare-fun m!5271727 () Bool)

(assert (=> b!4521995 m!5271727))

(assert (=> b!4521710 d!1393560))

(declare-fun bs!857476 () Bool)

(declare-fun d!1393562 () Bool)

(assert (= bs!857476 (and d!1393562 d!1393530)))

(declare-fun lambda!172747 () Int)

(assert (=> bs!857476 (= lambda!172747 lambda!172704)))

(declare-fun bs!857477 () Bool)

(assert (= bs!857477 (and d!1393562 d!1393534)))

(assert (=> bs!857477 (= lambda!172747 lambda!172708)))

(declare-fun bs!857478 () Bool)

(assert (= bs!857478 (and d!1393562 start!447772)))

(assert (=> bs!857478 (= lambda!172747 lambda!172643)))

(declare-fun bs!857479 () Bool)

(assert (= bs!857479 (and d!1393562 d!1393520)))

(assert (=> bs!857479 (= lambda!172747 lambda!172703)))

(declare-fun bs!857480 () Bool)

(assert (= bs!857480 (and d!1393562 d!1393510)))

(assert (=> bs!857480 (= lambda!172747 lambda!172702)))

(declare-fun bs!857481 () Bool)

(assert (= bs!857481 (and d!1393562 d!1393532)))

(assert (=> bs!857481 (= lambda!172747 lambda!172705)))

(declare-fun bs!857482 () Bool)

(assert (= bs!857482 (and d!1393562 d!1393490)))

(assert (=> bs!857482 (= lambda!172747 lambda!172699)))

(assert (=> d!1393562 (containsKeyBiggerList!144 (toList!4335 lt!1698598) key!3287)))

(declare-fun lt!1698941 () Unit!95370)

(declare-fun choose!29552 (ListLongMap!2967 K!12050 Hashable!5559) Unit!95370)

(assert (=> d!1393562 (= lt!1698941 (choose!29552 lt!1698598 key!3287 hashF!1107))))

(assert (=> d!1393562 (forall!10271 (toList!4335 lt!1698598) lambda!172747)))

(assert (=> d!1393562 (= (lemmaInLongMapThenContainsKeyBiggerList!80 lt!1698598 key!3287 hashF!1107) lt!1698941)))

(declare-fun bs!857483 () Bool)

(assert (= bs!857483 d!1393562))

(assert (=> bs!857483 m!5271101))

(declare-fun m!5271731 () Bool)

(assert (=> bs!857483 m!5271731))

(declare-fun m!5271733 () Bool)

(assert (=> bs!857483 m!5271733))

(assert (=> b!4521710 d!1393562))

(declare-fun d!1393566 () Bool)

(declare-fun res!1882234 () Bool)

(declare-fun e!2817362 () Bool)

(assert (=> d!1393566 (=> res!1882234 e!2817362)))

(assert (=> d!1393566 (= res!1882234 (and ((_ is Cons!50656) (_2!28840 lt!1698602)) (= (_1!28839 (h!56511 (_2!28840 lt!1698602))) key!3287)))))

(assert (=> d!1393566 (= (containsKey!1788 (_2!28840 lt!1698602) key!3287) e!2817362)))

(declare-fun b!4521996 () Bool)

(declare-fun e!2817363 () Bool)

(assert (=> b!4521996 (= e!2817362 e!2817363)))

(declare-fun res!1882235 () Bool)

(assert (=> b!4521996 (=> (not res!1882235) (not e!2817363))))

(assert (=> b!4521996 (= res!1882235 ((_ is Cons!50656) (_2!28840 lt!1698602)))))

(declare-fun b!4521997 () Bool)

(assert (=> b!4521997 (= e!2817363 (containsKey!1788 (t!357742 (_2!28840 lt!1698602)) key!3287))))

(assert (= (and d!1393566 (not res!1882234)) b!4521996))

(assert (= (and b!4521996 res!1882235) b!4521997))

(declare-fun m!5271735 () Bool)

(assert (=> b!4521997 m!5271735))

(assert (=> b!4521709 d!1393566))

(declare-fun d!1393568 () Bool)

(declare-fun get!16595 (Option!11119) List!50780)

(assert (=> d!1393568 (= (apply!11901 lt!1698598 hash!344) (get!16595 (getValueByKey!1097 (toList!4335 lt!1698598) hash!344)))))

(declare-fun bs!857484 () Bool)

(assert (= bs!857484 d!1393568))

(assert (=> bs!857484 m!5271543))

(assert (=> bs!857484 m!5271543))

(declare-fun m!5271737 () Bool)

(assert (=> bs!857484 m!5271737))

(assert (=> b!4521688 d!1393568))

(declare-fun bs!857510 () Bool)

(declare-fun d!1393570 () Bool)

(assert (= bs!857510 (and d!1393570 d!1393530)))

(declare-fun lambda!172755 () Int)

(assert (=> bs!857510 (= lambda!172755 lambda!172704)))

(declare-fun bs!857512 () Bool)

(assert (= bs!857512 (and d!1393570 d!1393534)))

(assert (=> bs!857512 (= lambda!172755 lambda!172708)))

(declare-fun bs!857513 () Bool)

(assert (= bs!857513 (and d!1393570 start!447772)))

(assert (=> bs!857513 (= lambda!172755 lambda!172643)))

(declare-fun bs!857514 () Bool)

(assert (= bs!857514 (and d!1393570 d!1393510)))

(assert (=> bs!857514 (= lambda!172755 lambda!172702)))

(declare-fun bs!857515 () Bool)

(assert (= bs!857515 (and d!1393570 d!1393532)))

(assert (=> bs!857515 (= lambda!172755 lambda!172705)))

(declare-fun bs!857516 () Bool)

(assert (= bs!857516 (and d!1393570 d!1393490)))

(assert (=> bs!857516 (= lambda!172755 lambda!172699)))

(declare-fun bs!857517 () Bool)

(assert (= bs!857517 (and d!1393570 d!1393520)))

(assert (=> bs!857517 (= lambda!172755 lambda!172703)))

(declare-fun bs!857518 () Bool)

(assert (= bs!857518 (and d!1393570 d!1393562)))

(assert (=> bs!857518 (= lambda!172755 lambda!172747)))

(assert (=> d!1393570 (contains!13387 (extractMap!1220 (toList!4335 lt!1698598)) key!3287)))

(declare-fun lt!1698969 () Unit!95370)

(declare-fun choose!29554 (ListLongMap!2967 K!12050 Hashable!5559) Unit!95370)

(assert (=> d!1393570 (= lt!1698969 (choose!29554 lt!1698598 key!3287 hashF!1107))))

(assert (=> d!1393570 (forall!10271 (toList!4335 lt!1698598) lambda!172755)))

(assert (=> d!1393570 (= (lemmaListContainsThenExtractedMapContains!134 lt!1698598 key!3287 hashF!1107) lt!1698969)))

(declare-fun bs!857519 () Bool)

(assert (= bs!857519 d!1393570))

(assert (=> bs!857519 m!5271151))

(assert (=> bs!857519 m!5271151))

(declare-fun m!5271785 () Bool)

(assert (=> bs!857519 m!5271785))

(declare-fun m!5271787 () Bool)

(assert (=> bs!857519 m!5271787))

(declare-fun m!5271789 () Bool)

(assert (=> bs!857519 m!5271789))

(assert (=> b!4521695 d!1393570))

(declare-fun bs!857520 () Bool)

(declare-fun d!1393580 () Bool)

(assert (= bs!857520 (and d!1393580 d!1393530)))

(declare-fun lambda!172756 () Int)

(assert (=> bs!857520 (= lambda!172756 lambda!172704)))

(declare-fun bs!857521 () Bool)

(assert (= bs!857521 (and d!1393580 d!1393534)))

(assert (=> bs!857521 (= lambda!172756 lambda!172708)))

(declare-fun bs!857522 () Bool)

(assert (= bs!857522 (and d!1393580 d!1393510)))

(assert (=> bs!857522 (= lambda!172756 lambda!172702)))

(declare-fun bs!857523 () Bool)

(assert (= bs!857523 (and d!1393580 d!1393532)))

(assert (=> bs!857523 (= lambda!172756 lambda!172705)))

(declare-fun bs!857524 () Bool)

(assert (= bs!857524 (and d!1393580 d!1393490)))

(assert (=> bs!857524 (= lambda!172756 lambda!172699)))

(declare-fun bs!857525 () Bool)

(assert (= bs!857525 (and d!1393580 start!447772)))

(assert (=> bs!857525 (= lambda!172756 lambda!172643)))

(declare-fun bs!857526 () Bool)

(assert (= bs!857526 (and d!1393580 d!1393570)))

(assert (=> bs!857526 (= lambda!172756 lambda!172755)))

(declare-fun bs!857527 () Bool)

(assert (= bs!857527 (and d!1393580 d!1393520)))

(assert (=> bs!857527 (= lambda!172756 lambda!172703)))

(declare-fun bs!857528 () Bool)

(assert (= bs!857528 (and d!1393580 d!1393562)))

(assert (=> bs!857528 (= lambda!172756 lambda!172747)))

(declare-fun lt!1698970 () ListMap!3597)

(assert (=> d!1393580 (invariantList!1019 (toList!4336 lt!1698970))))

(declare-fun e!2817368 () ListMap!3597)

(assert (=> d!1393580 (= lt!1698970 e!2817368)))

(declare-fun c!771786 () Bool)

(assert (=> d!1393580 (= c!771786 ((_ is Cons!50657) (t!357743 (toList!4335 lm!1477))))))

(assert (=> d!1393580 (forall!10271 (t!357743 (toList!4335 lm!1477)) lambda!172756)))

(assert (=> d!1393580 (= (extractMap!1220 (t!357743 (toList!4335 lm!1477))) lt!1698970)))

(declare-fun b!4522005 () Bool)

(assert (=> b!4522005 (= e!2817368 (addToMapMapFromBucket!691 (_2!28840 (h!56512 (t!357743 (toList!4335 lm!1477)))) (extractMap!1220 (t!357743 (t!357743 (toList!4335 lm!1477))))))))

(declare-fun b!4522006 () Bool)

(assert (=> b!4522006 (= e!2817368 (ListMap!3598 Nil!50656))))

(assert (= (and d!1393580 c!771786) b!4522005))

(assert (= (and d!1393580 (not c!771786)) b!4522006))

(declare-fun m!5271791 () Bool)

(assert (=> d!1393580 m!5271791))

(declare-fun m!5271793 () Bool)

(assert (=> d!1393580 m!5271793))

(declare-fun m!5271795 () Bool)

(assert (=> b!4522005 m!5271795))

(assert (=> b!4522005 m!5271795))

(declare-fun m!5271797 () Bool)

(assert (=> b!4522005 m!5271797))

(assert (=> b!4521695 d!1393580))

(declare-fun bs!857529 () Bool)

(declare-fun d!1393582 () Bool)

(assert (= bs!857529 (and d!1393582 d!1393580)))

(declare-fun lambda!172757 () Int)

(assert (=> bs!857529 (= lambda!172757 lambda!172756)))

(declare-fun bs!857530 () Bool)

(assert (= bs!857530 (and d!1393582 d!1393530)))

(assert (=> bs!857530 (= lambda!172757 lambda!172704)))

(declare-fun bs!857531 () Bool)

(assert (= bs!857531 (and d!1393582 d!1393534)))

(assert (=> bs!857531 (= lambda!172757 lambda!172708)))

(declare-fun bs!857532 () Bool)

(assert (= bs!857532 (and d!1393582 d!1393510)))

(assert (=> bs!857532 (= lambda!172757 lambda!172702)))

(declare-fun bs!857533 () Bool)

(assert (= bs!857533 (and d!1393582 d!1393532)))

(assert (=> bs!857533 (= lambda!172757 lambda!172705)))

(declare-fun bs!857534 () Bool)

(assert (= bs!857534 (and d!1393582 d!1393490)))

(assert (=> bs!857534 (= lambda!172757 lambda!172699)))

(declare-fun bs!857535 () Bool)

(assert (= bs!857535 (and d!1393582 start!447772)))

(assert (=> bs!857535 (= lambda!172757 lambda!172643)))

(declare-fun bs!857536 () Bool)

(assert (= bs!857536 (and d!1393582 d!1393570)))

(assert (=> bs!857536 (= lambda!172757 lambda!172755)))

(declare-fun bs!857537 () Bool)

(assert (= bs!857537 (and d!1393582 d!1393520)))

(assert (=> bs!857537 (= lambda!172757 lambda!172703)))

(declare-fun bs!857538 () Bool)

(assert (= bs!857538 (and d!1393582 d!1393562)))

(assert (=> bs!857538 (= lambda!172757 lambda!172747)))

(declare-fun lt!1698971 () ListMap!3597)

(assert (=> d!1393582 (invariantList!1019 (toList!4336 lt!1698971))))

(declare-fun e!2817373 () ListMap!3597)

(assert (=> d!1393582 (= lt!1698971 e!2817373)))

(declare-fun c!771787 () Bool)

(assert (=> d!1393582 (= c!771787 ((_ is Cons!50657) (toList!4335 lt!1698598)))))

(assert (=> d!1393582 (forall!10271 (toList!4335 lt!1698598) lambda!172757)))

(assert (=> d!1393582 (= (extractMap!1220 (toList!4335 lt!1698598)) lt!1698971)))

(declare-fun b!4522011 () Bool)

(assert (=> b!4522011 (= e!2817373 (addToMapMapFromBucket!691 (_2!28840 (h!56512 (toList!4335 lt!1698598))) (extractMap!1220 (t!357743 (toList!4335 lt!1698598)))))))

(declare-fun b!4522012 () Bool)

(assert (=> b!4522012 (= e!2817373 (ListMap!3598 Nil!50656))))

(assert (= (and d!1393582 c!771787) b!4522011))

(assert (= (and d!1393582 (not c!771787)) b!4522012))

(declare-fun m!5271801 () Bool)

(assert (=> d!1393582 m!5271801))

(declare-fun m!5271805 () Bool)

(assert (=> d!1393582 m!5271805))

(declare-fun m!5271807 () Bool)

(assert (=> b!4522011 m!5271807))

(assert (=> b!4522011 m!5271807))

(declare-fun m!5271809 () Bool)

(assert (=> b!4522011 m!5271809))

(assert (=> b!4521695 d!1393582))

(declare-fun b!4522015 () Bool)

(assert (=> b!4522015 false))

(declare-fun lt!1698977 () Unit!95370)

(declare-fun lt!1698973 () Unit!95370)

(assert (=> b!4522015 (= lt!1698977 lt!1698973)))

(assert (=> b!4522015 (containsKey!1790 (toList!4336 lt!1698610) key!3287)))

(assert (=> b!4522015 (= lt!1698973 (lemmaInGetKeysListThenContainsKey!466 (toList!4336 lt!1698610) key!3287))))

(declare-fun e!2817377 () Unit!95370)

(declare-fun Unit!95424 () Unit!95370)

(assert (=> b!4522015 (= e!2817377 Unit!95424)))

(declare-fun bm!315094 () Bool)

(declare-fun call!315099 () Bool)

(declare-fun e!2817376 () List!50783)

(assert (=> bm!315094 (= call!315099 (contains!13392 e!2817376 key!3287))))

(declare-fun c!771789 () Bool)

(declare-fun c!771790 () Bool)

(assert (=> bm!315094 (= c!771789 c!771790)))

(declare-fun b!4522016 () Bool)

(declare-fun Unit!95425 () Unit!95370)

(assert (=> b!4522016 (= e!2817377 Unit!95425)))

(declare-fun b!4522017 () Bool)

(declare-fun e!2817381 () Bool)

(declare-fun e!2817379 () Bool)

(assert (=> b!4522017 (= e!2817381 e!2817379)))

(declare-fun res!1882245 () Bool)

(assert (=> b!4522017 (=> (not res!1882245) (not e!2817379))))

(assert (=> b!4522017 (= res!1882245 (isDefined!8404 (getValueByKey!1096 (toList!4336 lt!1698610) key!3287)))))

(declare-fun b!4522018 () Bool)

(declare-fun e!2817380 () Unit!95370)

(declare-fun lt!1698975 () Unit!95370)

(assert (=> b!4522018 (= e!2817380 lt!1698975)))

(declare-fun lt!1698976 () Unit!95370)

(assert (=> b!4522018 (= lt!1698976 (lemmaContainsKeyImpliesGetValueByKeyDefined!999 (toList!4336 lt!1698610) key!3287))))

(assert (=> b!4522018 (isDefined!8404 (getValueByKey!1096 (toList!4336 lt!1698610) key!3287))))

(declare-fun lt!1698978 () Unit!95370)

(assert (=> b!4522018 (= lt!1698978 lt!1698976)))

(assert (=> b!4522018 (= lt!1698975 (lemmaInListThenGetKeysListContains!463 (toList!4336 lt!1698610) key!3287))))

(assert (=> b!4522018 call!315099))

(declare-fun b!4522019 () Bool)

(declare-fun e!2817378 () Bool)

(assert (=> b!4522019 (= e!2817378 (not (contains!13392 (keys!17600 lt!1698610) key!3287)))))

(declare-fun b!4522020 () Bool)

(assert (=> b!4522020 (= e!2817376 (getKeysList!467 (toList!4336 lt!1698610)))))

(declare-fun b!4522021 () Bool)

(assert (=> b!4522021 (= e!2817376 (keys!17600 lt!1698610))))

(declare-fun b!4522022 () Bool)

(assert (=> b!4522022 (= e!2817380 e!2817377)))

(declare-fun c!771788 () Bool)

(assert (=> b!4522022 (= c!771788 call!315099)))

(declare-fun d!1393588 () Bool)

(assert (=> d!1393588 e!2817381))

(declare-fun res!1882247 () Bool)

(assert (=> d!1393588 (=> res!1882247 e!2817381)))

(assert (=> d!1393588 (= res!1882247 e!2817378)))

(declare-fun res!1882246 () Bool)

(assert (=> d!1393588 (=> (not res!1882246) (not e!2817378))))

(declare-fun lt!1698974 () Bool)

(assert (=> d!1393588 (= res!1882246 (not lt!1698974))))

(declare-fun lt!1698972 () Bool)

(assert (=> d!1393588 (= lt!1698974 lt!1698972)))

(declare-fun lt!1698979 () Unit!95370)

(assert (=> d!1393588 (= lt!1698979 e!2817380)))

(assert (=> d!1393588 (= c!771790 lt!1698972)))

(assert (=> d!1393588 (= lt!1698972 (containsKey!1790 (toList!4336 lt!1698610) key!3287))))

(assert (=> d!1393588 (= (contains!13387 lt!1698610 key!3287) lt!1698974)))

(declare-fun b!4522023 () Bool)

(assert (=> b!4522023 (= e!2817379 (contains!13392 (keys!17600 lt!1698610) key!3287))))

(assert (= (and d!1393588 c!771790) b!4522018))

(assert (= (and d!1393588 (not c!771790)) b!4522022))

(assert (= (and b!4522022 c!771788) b!4522015))

(assert (= (and b!4522022 (not c!771788)) b!4522016))

(assert (= (or b!4522018 b!4522022) bm!315094))

(assert (= (and bm!315094 c!771789) b!4522020))

(assert (= (and bm!315094 (not c!771789)) b!4522021))

(assert (= (and d!1393588 res!1882246) b!4522019))

(assert (= (and d!1393588 (not res!1882247)) b!4522017))

(assert (= (and b!4522017 res!1882245) b!4522023))

(declare-fun m!5271813 () Bool)

(assert (=> b!4522020 m!5271813))

(declare-fun m!5271815 () Bool)

(assert (=> bm!315094 m!5271815))

(assert (=> b!4522019 m!5271601))

(assert (=> b!4522019 m!5271601))

(declare-fun m!5271819 () Bool)

(assert (=> b!4522019 m!5271819))

(declare-fun m!5271821 () Bool)

(assert (=> d!1393588 m!5271821))

(declare-fun m!5271823 () Bool)

(assert (=> b!4522017 m!5271823))

(assert (=> b!4522017 m!5271823))

(declare-fun m!5271825 () Bool)

(assert (=> b!4522017 m!5271825))

(assert (=> b!4522015 m!5271821))

(declare-fun m!5271827 () Bool)

(assert (=> b!4522015 m!5271827))

(assert (=> b!4522021 m!5271601))

(declare-fun m!5271829 () Bool)

(assert (=> b!4522018 m!5271829))

(assert (=> b!4522018 m!5271823))

(assert (=> b!4522018 m!5271823))

(assert (=> b!4522018 m!5271825))

(declare-fun m!5271831 () Bool)

(assert (=> b!4522018 m!5271831))

(assert (=> b!4522023 m!5271601))

(assert (=> b!4522023 m!5271601))

(assert (=> b!4522023 m!5271819))

(assert (=> b!4521695 d!1393588))

(declare-fun b!4522026 () Bool)

(assert (=> b!4522026 false))

(declare-fun lt!1698986 () Unit!95370)

(declare-fun lt!1698982 () Unit!95370)

(assert (=> b!4522026 (= lt!1698986 lt!1698982)))

(assert (=> b!4522026 (containsKey!1790 (toList!4336 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))) key!3287)))

(assert (=> b!4522026 (= lt!1698982 (lemmaInGetKeysListThenContainsKey!466 (toList!4336 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))) key!3287))))

(declare-fun e!2817385 () Unit!95370)

(declare-fun Unit!95428 () Unit!95370)

(assert (=> b!4522026 (= e!2817385 Unit!95428)))

(declare-fun bm!315095 () Bool)

(declare-fun call!315100 () Bool)

(declare-fun e!2817384 () List!50783)

(assert (=> bm!315095 (= call!315100 (contains!13392 e!2817384 key!3287))))

(declare-fun c!771792 () Bool)

(declare-fun c!771793 () Bool)

(assert (=> bm!315095 (= c!771792 c!771793)))

(declare-fun b!4522027 () Bool)

(declare-fun Unit!95429 () Unit!95370)

(assert (=> b!4522027 (= e!2817385 Unit!95429)))

(declare-fun b!4522028 () Bool)

(declare-fun e!2817389 () Bool)

(declare-fun e!2817387 () Bool)

(assert (=> b!4522028 (= e!2817389 e!2817387)))

(declare-fun res!1882250 () Bool)

(assert (=> b!4522028 (=> (not res!1882250) (not e!2817387))))

(assert (=> b!4522028 (= res!1882250 (isDefined!8404 (getValueByKey!1096 (toList!4336 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))) key!3287)))))

(declare-fun b!4522029 () Bool)

(declare-fun e!2817388 () Unit!95370)

(declare-fun lt!1698984 () Unit!95370)

(assert (=> b!4522029 (= e!2817388 lt!1698984)))

(declare-fun lt!1698985 () Unit!95370)

(assert (=> b!4522029 (= lt!1698985 (lemmaContainsKeyImpliesGetValueByKeyDefined!999 (toList!4336 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))) key!3287))))

(assert (=> b!4522029 (isDefined!8404 (getValueByKey!1096 (toList!4336 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))) key!3287))))

(declare-fun lt!1698987 () Unit!95370)

(assert (=> b!4522029 (= lt!1698987 lt!1698985)))

(assert (=> b!4522029 (= lt!1698984 (lemmaInListThenGetKeysListContains!463 (toList!4336 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))) key!3287))))

(assert (=> b!4522029 call!315100))

(declare-fun b!4522030 () Bool)

(declare-fun e!2817386 () Bool)

(assert (=> b!4522030 (= e!2817386 (not (contains!13392 (keys!17600 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))) key!3287)))))

(declare-fun b!4522031 () Bool)

(assert (=> b!4522031 (= e!2817384 (getKeysList!467 (toList!4336 (extractMap!1220 (t!357743 (toList!4335 lm!1477))))))))

(declare-fun b!4522032 () Bool)

(assert (=> b!4522032 (= e!2817384 (keys!17600 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))))))

(declare-fun b!4522033 () Bool)

(assert (=> b!4522033 (= e!2817388 e!2817385)))

(declare-fun c!771791 () Bool)

(assert (=> b!4522033 (= c!771791 call!315100)))

(declare-fun d!1393592 () Bool)

(assert (=> d!1393592 e!2817389))

(declare-fun res!1882252 () Bool)

(assert (=> d!1393592 (=> res!1882252 e!2817389)))

(assert (=> d!1393592 (= res!1882252 e!2817386)))

(declare-fun res!1882251 () Bool)

(assert (=> d!1393592 (=> (not res!1882251) (not e!2817386))))

(declare-fun lt!1698983 () Bool)

(assert (=> d!1393592 (= res!1882251 (not lt!1698983))))

(declare-fun lt!1698981 () Bool)

(assert (=> d!1393592 (= lt!1698983 lt!1698981)))

(declare-fun lt!1698988 () Unit!95370)

(assert (=> d!1393592 (= lt!1698988 e!2817388)))

(assert (=> d!1393592 (= c!771793 lt!1698981)))

(assert (=> d!1393592 (= lt!1698981 (containsKey!1790 (toList!4336 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))) key!3287))))

(assert (=> d!1393592 (= (contains!13387 (extractMap!1220 (t!357743 (toList!4335 lm!1477))) key!3287) lt!1698983)))

(declare-fun b!4522034 () Bool)

(assert (=> b!4522034 (= e!2817387 (contains!13392 (keys!17600 (extractMap!1220 (t!357743 (toList!4335 lm!1477)))) key!3287))))

(assert (= (and d!1393592 c!771793) b!4522029))

(assert (= (and d!1393592 (not c!771793)) b!4522033))

(assert (= (and b!4522033 c!771791) b!4522026))

(assert (= (and b!4522033 (not c!771791)) b!4522027))

(assert (= (or b!4522029 b!4522033) bm!315095))

(assert (= (and bm!315095 c!771792) b!4522031))

(assert (= (and bm!315095 (not c!771792)) b!4522032))

(assert (= (and d!1393592 res!1882251) b!4522030))

(assert (= (and d!1393592 (not res!1882252)) b!4522028))

(assert (= (and b!4522028 res!1882250) b!4522034))

(declare-fun m!5271837 () Bool)

(assert (=> b!4522031 m!5271837))

(declare-fun m!5271839 () Bool)

(assert (=> bm!315095 m!5271839))

(assert (=> b!4522030 m!5271145))

(declare-fun m!5271841 () Bool)

(assert (=> b!4522030 m!5271841))

(assert (=> b!4522030 m!5271841))

(declare-fun m!5271843 () Bool)

(assert (=> b!4522030 m!5271843))

(declare-fun m!5271845 () Bool)

(assert (=> d!1393592 m!5271845))

(declare-fun m!5271847 () Bool)

(assert (=> b!4522028 m!5271847))

(assert (=> b!4522028 m!5271847))

(declare-fun m!5271849 () Bool)

(assert (=> b!4522028 m!5271849))

(assert (=> b!4522026 m!5271845))

(declare-fun m!5271851 () Bool)

(assert (=> b!4522026 m!5271851))

(assert (=> b!4522032 m!5271145))

(assert (=> b!4522032 m!5271841))

(declare-fun m!5271853 () Bool)

(assert (=> b!4522029 m!5271853))

(assert (=> b!4522029 m!5271847))

(assert (=> b!4522029 m!5271847))

(assert (=> b!4522029 m!5271849))

(declare-fun m!5271855 () Bool)

(assert (=> b!4522029 m!5271855))

(assert (=> b!4522034 m!5271145))

(assert (=> b!4522034 m!5271841))

(assert (=> b!4522034 m!5271841))

(assert (=> b!4522034 m!5271843))

(assert (=> b!4521695 d!1393592))

(declare-fun d!1393596 () Bool)

(declare-fun res!1882260 () Bool)

(declare-fun e!2817397 () Bool)

(assert (=> d!1393596 (=> res!1882260 e!2817397)))

(assert (=> d!1393596 (= res!1882260 (not ((_ is Cons!50656) (_2!28840 lt!1698602))))))

(assert (=> d!1393596 (= (noDuplicateKeys!1164 (_2!28840 lt!1698602)) e!2817397)))

(declare-fun b!4522042 () Bool)

(declare-fun e!2817398 () Bool)

(assert (=> b!4522042 (= e!2817397 e!2817398)))

(declare-fun res!1882261 () Bool)

(assert (=> b!4522042 (=> (not res!1882261) (not e!2817398))))

(assert (=> b!4522042 (= res!1882261 (not (containsKey!1788 (t!357742 (_2!28840 lt!1698602)) (_1!28839 (h!56511 (_2!28840 lt!1698602))))))))

(declare-fun b!4522043 () Bool)

(assert (=> b!4522043 (= e!2817398 (noDuplicateKeys!1164 (t!357742 (_2!28840 lt!1698602))))))

(assert (= (and d!1393596 (not res!1882260)) b!4522042))

(assert (= (and b!4522042 res!1882261) b!4522043))

(declare-fun m!5271861 () Bool)

(assert (=> b!4522042 m!5271861))

(declare-fun m!5271863 () Bool)

(assert (=> b!4522043 m!5271863))

(assert (=> b!4521706 d!1393596))

(declare-fun d!1393598 () Bool)

(assert (=> d!1393598 (dynLambda!21166 lambda!172643 (h!56512 (toList!4335 lm!1477)))))

(declare-fun lt!1698994 () Unit!95370)

(declare-fun choose!29556 (List!50781 Int tuple2!51092) Unit!95370)

(assert (=> d!1393598 (= lt!1698994 (choose!29556 (toList!4335 lm!1477) lambda!172643 (h!56512 (toList!4335 lm!1477))))))

(declare-fun e!2817401 () Bool)

(assert (=> d!1393598 e!2817401))

(declare-fun res!1882264 () Bool)

(assert (=> d!1393598 (=> (not res!1882264) (not e!2817401))))

(assert (=> d!1393598 (= res!1882264 (forall!10271 (toList!4335 lm!1477) lambda!172643))))

(assert (=> d!1393598 (= (forallContained!2523 (toList!4335 lm!1477) lambda!172643 (h!56512 (toList!4335 lm!1477))) lt!1698994)))

(declare-fun b!4522046 () Bool)

(assert (=> b!4522046 (= e!2817401 (contains!13389 (toList!4335 lm!1477) (h!56512 (toList!4335 lm!1477))))))

(assert (= (and d!1393598 res!1882264) b!4522046))

(declare-fun b_lambda!155219 () Bool)

(assert (=> (not b_lambda!155219) (not d!1393598)))

(assert (=> d!1393598 m!5271479))

(declare-fun m!5271865 () Bool)

(assert (=> d!1393598 m!5271865))

(assert (=> d!1393598 m!5271193))

(declare-fun m!5271867 () Bool)

(assert (=> b!4522046 m!5271867))

(assert (=> b!4521706 d!1393598))

(declare-fun d!1393602 () Bool)

(assert (=> d!1393602 (= (head!9418 lt!1698607) (head!9420 (toList!4335 lt!1698607)))))

(declare-fun bs!857541 () Bool)

(assert (= bs!857541 d!1393602))

(declare-fun m!5271869 () Bool)

(assert (=> bs!857541 m!5271869))

(assert (=> b!4521705 d!1393602))

(declare-fun d!1393604 () Bool)

(assert (=> d!1393604 (= (apply!11901 lm!1477 hash!344) (get!16595 (getValueByKey!1097 (toList!4335 lm!1477) hash!344)))))

(declare-fun bs!857542 () Bool)

(assert (= bs!857542 d!1393604))

(declare-fun m!5271871 () Bool)

(assert (=> bs!857542 m!5271871))

(assert (=> bs!857542 m!5271871))

(declare-fun m!5271873 () Bool)

(assert (=> bs!857542 m!5271873))

(assert (=> b!4521707 d!1393604))

(declare-fun b!4522058 () Bool)

(declare-fun e!2817407 () List!50780)

(assert (=> b!4522058 (= e!2817407 Nil!50656)))

(declare-fun b!4522057 () Bool)

(assert (=> b!4522057 (= e!2817407 (Cons!50656 (h!56511 lt!1698595) (removePairForKey!791 (t!357742 lt!1698595) key!3287)))))

(declare-fun b!4522055 () Bool)

(declare-fun e!2817406 () List!50780)

(assert (=> b!4522055 (= e!2817406 (t!357742 lt!1698595))))

(declare-fun d!1393606 () Bool)

(declare-fun lt!1699000 () List!50780)

(assert (=> d!1393606 (not (containsKey!1788 lt!1699000 key!3287))))

(assert (=> d!1393606 (= lt!1699000 e!2817406)))

(declare-fun c!771798 () Bool)

(assert (=> d!1393606 (= c!771798 (and ((_ is Cons!50656) lt!1698595) (= (_1!28839 (h!56511 lt!1698595)) key!3287)))))

(assert (=> d!1393606 (noDuplicateKeys!1164 lt!1698595)))

(assert (=> d!1393606 (= (removePairForKey!791 lt!1698595 key!3287) lt!1699000)))

(declare-fun b!4522056 () Bool)

(assert (=> b!4522056 (= e!2817406 e!2817407)))

(declare-fun c!771799 () Bool)

(assert (=> b!4522056 (= c!771799 ((_ is Cons!50656) lt!1698595))))

(assert (= (and d!1393606 c!771798) b!4522055))

(assert (= (and d!1393606 (not c!771798)) b!4522056))

(assert (= (and b!4522056 c!771799) b!4522057))

(assert (= (and b!4522056 (not c!771799)) b!4522058))

(declare-fun m!5271881 () Bool)

(assert (=> b!4522057 m!5271881))

(declare-fun m!5271883 () Bool)

(assert (=> d!1393606 m!5271883))

(declare-fun m!5271885 () Bool)

(assert (=> d!1393606 m!5271885))

(assert (=> b!4521707 d!1393606))

(declare-fun d!1393610 () Bool)

(assert (=> d!1393610 (contains!13389 (toList!4335 lm!1477) (tuple2!51093 hash!344 lt!1698595))))

(declare-fun lt!1699011 () Unit!95370)

(declare-fun choose!29558 (List!50781 (_ BitVec 64) List!50780) Unit!95370)

(assert (=> d!1393610 (= lt!1699011 (choose!29558 (toList!4335 lm!1477) hash!344 lt!1698595))))

(declare-fun e!2817419 () Bool)

(assert (=> d!1393610 e!2817419))

(declare-fun res!1882269 () Bool)

(assert (=> d!1393610 (=> (not res!1882269) (not e!2817419))))

(assert (=> d!1393610 (= res!1882269 (isStrictlySorted!432 (toList!4335 lm!1477)))))

(assert (=> d!1393610 (= (lemmaGetValueByKeyImpliesContainsTuple!676 (toList!4335 lm!1477) hash!344 lt!1698595) lt!1699011)))

(declare-fun b!4522077 () Bool)

(assert (=> b!4522077 (= e!2817419 (= (getValueByKey!1097 (toList!4335 lm!1477) hash!344) (Some!11118 lt!1698595)))))

(assert (= (and d!1393610 res!1882269) b!4522077))

(declare-fun m!5271905 () Bool)

(assert (=> d!1393610 m!5271905))

(declare-fun m!5271907 () Bool)

(assert (=> d!1393610 m!5271907))

(assert (=> d!1393610 m!5271491))

(assert (=> b!4522077 m!5271871))

(assert (=> b!4521707 d!1393610))

(declare-fun d!1393620 () Bool)

(assert (=> d!1393620 (dynLambda!21166 lambda!172643 lt!1698591)))

(declare-fun lt!1699012 () Unit!95370)

(assert (=> d!1393620 (= lt!1699012 (choose!29556 (toList!4335 lm!1477) lambda!172643 lt!1698591))))

(declare-fun e!2817420 () Bool)

(assert (=> d!1393620 e!2817420))

(declare-fun res!1882270 () Bool)

(assert (=> d!1393620 (=> (not res!1882270) (not e!2817420))))

(assert (=> d!1393620 (= res!1882270 (forall!10271 (toList!4335 lm!1477) lambda!172643))))

(assert (=> d!1393620 (= (forallContained!2523 (toList!4335 lm!1477) lambda!172643 lt!1698591) lt!1699012)))

(declare-fun b!4522078 () Bool)

(assert (=> b!4522078 (= e!2817420 (contains!13389 (toList!4335 lm!1477) lt!1698591))))

(assert (= (and d!1393620 res!1882270) b!4522078))

(declare-fun b_lambda!155223 () Bool)

(assert (=> (not b_lambda!155223) (not d!1393620)))

(declare-fun m!5271909 () Bool)

(assert (=> d!1393620 m!5271909))

(declare-fun m!5271911 () Bool)

(assert (=> d!1393620 m!5271911))

(assert (=> d!1393620 m!5271193))

(assert (=> b!4522078 m!5271139))

(assert (=> b!4521707 d!1393620))

(declare-fun d!1393622 () Bool)

(declare-fun lt!1699015 () Bool)

(declare-fun content!8365 (List!50781) (InoxSet tuple2!51092))

(assert (=> d!1393622 (= lt!1699015 (select (content!8365 (toList!4335 lm!1477)) lt!1698591))))

(declare-fun e!2817425 () Bool)

(assert (=> d!1393622 (= lt!1699015 e!2817425)))

(declare-fun res!1882276 () Bool)

(assert (=> d!1393622 (=> (not res!1882276) (not e!2817425))))

(assert (=> d!1393622 (= res!1882276 ((_ is Cons!50657) (toList!4335 lm!1477)))))

(assert (=> d!1393622 (= (contains!13389 (toList!4335 lm!1477) lt!1698591) lt!1699015)))

(declare-fun b!4522085 () Bool)

(declare-fun e!2817426 () Bool)

(assert (=> b!4522085 (= e!2817425 e!2817426)))

(declare-fun res!1882275 () Bool)

(assert (=> b!4522085 (=> res!1882275 e!2817426)))

(assert (=> b!4522085 (= res!1882275 (= (h!56512 (toList!4335 lm!1477)) lt!1698591))))

(declare-fun b!4522086 () Bool)

(assert (=> b!4522086 (= e!2817426 (contains!13389 (t!357743 (toList!4335 lm!1477)) lt!1698591))))

(assert (= (and d!1393622 res!1882276) b!4522085))

(assert (= (and b!4522085 (not res!1882275)) b!4522086))

(declare-fun m!5271915 () Bool)

(assert (=> d!1393622 m!5271915))

(declare-fun m!5271917 () Bool)

(assert (=> d!1393622 m!5271917))

(assert (=> b!4522086 m!5271161))

(assert (=> b!4521707 d!1393622))

(declare-fun bs!857580 () Bool)

(declare-fun d!1393626 () Bool)

(assert (= bs!857580 (and d!1393626 d!1393580)))

(declare-fun lambda!172767 () Int)

(assert (=> bs!857580 (= lambda!172767 lambda!172756)))

(declare-fun bs!857581 () Bool)

(assert (= bs!857581 (and d!1393626 d!1393530)))

(assert (=> bs!857581 (= lambda!172767 lambda!172704)))

(declare-fun bs!857582 () Bool)

(assert (= bs!857582 (and d!1393626 d!1393582)))

(assert (=> bs!857582 (= lambda!172767 lambda!172757)))

(declare-fun bs!857583 () Bool)

(assert (= bs!857583 (and d!1393626 d!1393534)))

(assert (=> bs!857583 (= lambda!172767 lambda!172708)))

(declare-fun bs!857584 () Bool)

(assert (= bs!857584 (and d!1393626 d!1393510)))

(assert (=> bs!857584 (= lambda!172767 lambda!172702)))

(declare-fun bs!857585 () Bool)

(assert (= bs!857585 (and d!1393626 d!1393532)))

(assert (=> bs!857585 (= lambda!172767 lambda!172705)))

(declare-fun bs!857586 () Bool)

(assert (= bs!857586 (and d!1393626 d!1393490)))

(assert (=> bs!857586 (= lambda!172767 lambda!172699)))

(declare-fun bs!857587 () Bool)

(assert (= bs!857587 (and d!1393626 start!447772)))

(assert (=> bs!857587 (= lambda!172767 lambda!172643)))

(declare-fun bs!857588 () Bool)

(assert (= bs!857588 (and d!1393626 d!1393570)))

(assert (=> bs!857588 (= lambda!172767 lambda!172755)))

(declare-fun bs!857590 () Bool)

(assert (= bs!857590 (and d!1393626 d!1393520)))

(assert (=> bs!857590 (= lambda!172767 lambda!172703)))

(declare-fun bs!857591 () Bool)

(assert (= bs!857591 (and d!1393626 d!1393562)))

(assert (=> bs!857591 (= lambda!172767 lambda!172747)))

(assert (=> d!1393626 (contains!13388 lm!1477 (hash!2817 hashF!1107 key!3287))))

(declare-fun lt!1699027 () Unit!95370)

(declare-fun choose!29559 (ListLongMap!2967 K!12050 Hashable!5559) Unit!95370)

(assert (=> d!1393626 (= lt!1699027 (choose!29559 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1393626 (forall!10271 (toList!4335 lm!1477) lambda!172767)))

(assert (=> d!1393626 (= (lemmaInGenMapThenLongMapContainsHash!238 lm!1477 key!3287 hashF!1107) lt!1699027)))

(declare-fun bs!857593 () Bool)

(assert (= bs!857593 d!1393626))

(assert (=> bs!857593 m!5271155))

(assert (=> bs!857593 m!5271155))

(declare-fun m!5271953 () Bool)

(assert (=> bs!857593 m!5271953))

(declare-fun m!5271955 () Bool)

(assert (=> bs!857593 m!5271955))

(declare-fun m!5271957 () Bool)

(assert (=> bs!857593 m!5271957))

(assert (=> b!4521707 d!1393626))

(declare-fun d!1393638 () Bool)

(declare-fun e!2817443 () Bool)

(assert (=> d!1393638 e!2817443))

(declare-fun res!1882282 () Bool)

(assert (=> d!1393638 (=> res!1882282 e!2817443)))

(declare-fun lt!1699031 () Bool)

(assert (=> d!1393638 (= res!1882282 (not lt!1699031))))

(declare-fun lt!1699029 () Bool)

(assert (=> d!1393638 (= lt!1699031 lt!1699029)))

(declare-fun lt!1699028 () Unit!95370)

(declare-fun e!2817442 () Unit!95370)

(assert (=> d!1393638 (= lt!1699028 e!2817442)))

(declare-fun c!771811 () Bool)

(assert (=> d!1393638 (= c!771811 lt!1699029)))

(assert (=> d!1393638 (= lt!1699029 (containsKey!1791 (toList!4335 lm!1477) lt!1698603))))

(assert (=> d!1393638 (= (contains!13388 lm!1477 lt!1698603) lt!1699031)))

(declare-fun b!4522110 () Bool)

(declare-fun lt!1699030 () Unit!95370)

(assert (=> b!4522110 (= e!2817442 lt!1699030)))

(assert (=> b!4522110 (= lt!1699030 (lemmaContainsKeyImpliesGetValueByKeyDefined!1000 (toList!4335 lm!1477) lt!1698603))))

(assert (=> b!4522110 (isDefined!8405 (getValueByKey!1097 (toList!4335 lm!1477) lt!1698603))))

(declare-fun b!4522111 () Bool)

(declare-fun Unit!95431 () Unit!95370)

(assert (=> b!4522111 (= e!2817442 Unit!95431)))

(declare-fun b!4522112 () Bool)

(assert (=> b!4522112 (= e!2817443 (isDefined!8405 (getValueByKey!1097 (toList!4335 lm!1477) lt!1698603)))))

(assert (= (and d!1393638 c!771811) b!4522110))

(assert (= (and d!1393638 (not c!771811)) b!4522111))

(assert (= (and d!1393638 (not res!1882282)) b!4522112))

(declare-fun m!5271959 () Bool)

(assert (=> d!1393638 m!5271959))

(declare-fun m!5271961 () Bool)

(assert (=> b!4522110 m!5271961))

(declare-fun m!5271963 () Bool)

(assert (=> b!4522110 m!5271963))

(assert (=> b!4522110 m!5271963))

(declare-fun m!5271965 () Bool)

(assert (=> b!4522110 m!5271965))

(assert (=> b!4522112 m!5271963))

(assert (=> b!4522112 m!5271963))

(assert (=> b!4522112 m!5271965))

(assert (=> b!4521707 d!1393638))

(declare-fun bs!857594 () Bool)

(declare-fun d!1393640 () Bool)

(assert (= bs!857594 (and d!1393640 d!1393432)))

(declare-fun lambda!172770 () Int)

(assert (=> bs!857594 (not (= lambda!172770 lambda!172693))))

(declare-fun bs!857595 () Bool)

(assert (= bs!857595 (and d!1393640 b!4521844)))

(assert (=> bs!857595 (not (= lambda!172770 lambda!172690))))

(declare-fun bs!857596 () Bool)

(assert (= bs!857596 (and d!1393640 b!4521842)))

(assert (=> bs!857596 (not (= lambda!172770 lambda!172691))))

(assert (=> bs!857596 (not (= lambda!172770 lambda!172692))))

(declare-fun bs!857597 () Bool)

(assert (= bs!857597 (and d!1393640 b!4521963)))

(assert (=> bs!857597 (not (= lambda!172770 lambda!172725))))

(assert (=> bs!857597 (not (= lambda!172770 lambda!172722))))

(declare-fun bs!857598 () Bool)

(assert (= bs!857598 (and d!1393640 b!4521965)))

(assert (=> bs!857598 (not (= lambda!172770 lambda!172721))))

(declare-fun bs!857599 () Bool)

(assert (= bs!857599 (and d!1393640 d!1393548)))

(assert (=> bs!857599 (not (= lambda!172770 lambda!172730))))

(assert (=> d!1393640 true))

(assert (=> d!1393640 true))

(assert (=> d!1393640 (= (allKeysSameHash!1018 newBucket!178 hash!344 hashF!1107) (forall!10272 newBucket!178 lambda!172770))))

(declare-fun bs!857600 () Bool)

(assert (= bs!857600 d!1393640))

(declare-fun m!5271967 () Bool)

(assert (=> bs!857600 m!5271967))

(assert (=> b!4521686 d!1393640))

(declare-fun d!1393642 () Bool)

(declare-fun hash!2821 (Hashable!5559 K!12050) (_ BitVec 64))

(assert (=> d!1393642 (= (hash!2817 hashF!1107 key!3287) (hash!2821 hashF!1107 key!3287))))

(declare-fun bs!857601 () Bool)

(assert (= bs!857601 d!1393642))

(declare-fun m!5271969 () Bool)

(assert (=> bs!857601 m!5271969))

(assert (=> b!4521696 d!1393642))

(declare-fun d!1393644 () Bool)

(declare-fun res!1882283 () Bool)

(declare-fun e!2817444 () Bool)

(assert (=> d!1393644 (=> res!1882283 e!2817444)))

(assert (=> d!1393644 (= res!1882283 (not ((_ is Cons!50656) newBucket!178)))))

(assert (=> d!1393644 (= (noDuplicateKeys!1164 newBucket!178) e!2817444)))

(declare-fun b!4522117 () Bool)

(declare-fun e!2817445 () Bool)

(assert (=> b!4522117 (= e!2817444 e!2817445)))

(declare-fun res!1882284 () Bool)

(assert (=> b!4522117 (=> (not res!1882284) (not e!2817445))))

(assert (=> b!4522117 (= res!1882284 (not (containsKey!1788 (t!357742 newBucket!178) (_1!28839 (h!56511 newBucket!178)))))))

(declare-fun b!4522118 () Bool)

(assert (=> b!4522118 (= e!2817445 (noDuplicateKeys!1164 (t!357742 newBucket!178)))))

(assert (= (and d!1393644 (not res!1882283)) b!4522117))

(assert (= (and b!4522117 res!1882284) b!4522118))

(declare-fun m!5271971 () Bool)

(assert (=> b!4522117 m!5271971))

(declare-fun m!5271973 () Bool)

(assert (=> b!4522118 m!5271973))

(assert (=> b!4521694 d!1393644))

(declare-fun bs!857602 () Bool)

(declare-fun d!1393646 () Bool)

(assert (= bs!857602 (and d!1393646 d!1393580)))

(declare-fun lambda!172773 () Int)

(assert (=> bs!857602 (not (= lambda!172773 lambda!172756))))

(declare-fun bs!857603 () Bool)

(assert (= bs!857603 (and d!1393646 d!1393530)))

(assert (=> bs!857603 (not (= lambda!172773 lambda!172704))))

(declare-fun bs!857604 () Bool)

(assert (= bs!857604 (and d!1393646 d!1393582)))

(assert (=> bs!857604 (not (= lambda!172773 lambda!172757))))

(declare-fun bs!857605 () Bool)

(assert (= bs!857605 (and d!1393646 d!1393534)))

(assert (=> bs!857605 (not (= lambda!172773 lambda!172708))))

(declare-fun bs!857606 () Bool)

(assert (= bs!857606 (and d!1393646 d!1393626)))

(assert (=> bs!857606 (not (= lambda!172773 lambda!172767))))

(declare-fun bs!857607 () Bool)

(assert (= bs!857607 (and d!1393646 d!1393510)))

(assert (=> bs!857607 (not (= lambda!172773 lambda!172702))))

(declare-fun bs!857608 () Bool)

(assert (= bs!857608 (and d!1393646 d!1393532)))

(assert (=> bs!857608 (not (= lambda!172773 lambda!172705))))

(declare-fun bs!857609 () Bool)

(assert (= bs!857609 (and d!1393646 d!1393490)))

(assert (=> bs!857609 (not (= lambda!172773 lambda!172699))))

(declare-fun bs!857610 () Bool)

(assert (= bs!857610 (and d!1393646 start!447772)))

(assert (=> bs!857610 (not (= lambda!172773 lambda!172643))))

(declare-fun bs!857611 () Bool)

(assert (= bs!857611 (and d!1393646 d!1393570)))

(assert (=> bs!857611 (not (= lambda!172773 lambda!172755))))

(declare-fun bs!857612 () Bool)

(assert (= bs!857612 (and d!1393646 d!1393520)))

(assert (=> bs!857612 (not (= lambda!172773 lambda!172703))))

(declare-fun bs!857613 () Bool)

(assert (= bs!857613 (and d!1393646 d!1393562)))

(assert (=> bs!857613 (not (= lambda!172773 lambda!172747))))

(assert (=> d!1393646 true))

(assert (=> d!1393646 (= (allKeysSameHashInMap!1271 lm!1477 hashF!1107) (forall!10271 (toList!4335 lm!1477) lambda!172773))))

(declare-fun bs!857614 () Bool)

(assert (= bs!857614 d!1393646))

(declare-fun m!5271975 () Bool)

(assert (=> bs!857614 m!5271975))

(assert (=> b!4521693 d!1393646))

(declare-fun d!1393648 () Bool)

(declare-fun lt!1699032 () Bool)

(assert (=> d!1393648 (= lt!1699032 (select (content!8365 (t!357743 (toList!4335 lm!1477))) lt!1698591))))

(declare-fun e!2817446 () Bool)

(assert (=> d!1393648 (= lt!1699032 e!2817446)))

(declare-fun res!1882286 () Bool)

(assert (=> d!1393648 (=> (not res!1882286) (not e!2817446))))

(assert (=> d!1393648 (= res!1882286 ((_ is Cons!50657) (t!357743 (toList!4335 lm!1477))))))

(assert (=> d!1393648 (= (contains!13389 (t!357743 (toList!4335 lm!1477)) lt!1698591) lt!1699032)))

(declare-fun b!4522121 () Bool)

(declare-fun e!2817447 () Bool)

(assert (=> b!4522121 (= e!2817446 e!2817447)))

(declare-fun res!1882285 () Bool)

(assert (=> b!4522121 (=> res!1882285 e!2817447)))

(assert (=> b!4522121 (= res!1882285 (= (h!56512 (t!357743 (toList!4335 lm!1477))) lt!1698591))))

(declare-fun b!4522122 () Bool)

(assert (=> b!4522122 (= e!2817447 (contains!13389 (t!357743 (t!357743 (toList!4335 lm!1477))) lt!1698591))))

(assert (= (and d!1393648 res!1882286) b!4522121))

(assert (= (and b!4522121 (not res!1882285)) b!4522122))

(declare-fun m!5271977 () Bool)

(assert (=> d!1393648 m!5271977))

(declare-fun m!5271979 () Bool)

(assert (=> d!1393648 m!5271979))

(declare-fun m!5271981 () Bool)

(assert (=> b!4522122 m!5271981))

(assert (=> b!4521704 d!1393648))

(declare-fun e!2817450 () Bool)

(declare-fun b!4522127 () Bool)

(declare-fun tp!1338143 () Bool)

(assert (=> b!4522127 (= e!2817450 (and tp_is_empty!27933 tp_is_empty!27935 tp!1338143))))

(assert (=> b!4521685 (= tp!1338130 e!2817450)))

(assert (= (and b!4521685 ((_ is Cons!50656) (t!357742 newBucket!178))) b!4522127))

(declare-fun b!4522132 () Bool)

(declare-fun e!2817453 () Bool)

(declare-fun tp!1338148 () Bool)

(declare-fun tp!1338149 () Bool)

(assert (=> b!4522132 (= e!2817453 (and tp!1338148 tp!1338149))))

(assert (=> b!4521692 (= tp!1338131 e!2817453)))

(assert (= (and b!4521692 ((_ is Cons!50657) (toList!4335 lm!1477))) b!4522132))

(declare-fun b_lambda!155231 () Bool)

(assert (= b_lambda!155215 (or start!447772 b_lambda!155231)))

(declare-fun bs!857615 () Bool)

(declare-fun d!1393650 () Bool)

(assert (= bs!857615 (and d!1393650 start!447772)))

(assert (=> bs!857615 (= (dynLambda!21166 lambda!172643 (h!56512 (toList!4335 lm!1477))) (noDuplicateKeys!1164 (_2!28840 (h!56512 (toList!4335 lm!1477)))))))

(declare-fun m!5271983 () Bool)

(assert (=> bs!857615 m!5271983))

(assert (=> b!4521873 d!1393650))

(declare-fun b_lambda!155233 () Bool)

(assert (= b_lambda!155223 (or start!447772 b_lambda!155233)))

(declare-fun bs!857616 () Bool)

(declare-fun d!1393652 () Bool)

(assert (= bs!857616 (and d!1393652 start!447772)))

(assert (=> bs!857616 (= (dynLambda!21166 lambda!172643 lt!1698591) (noDuplicateKeys!1164 (_2!28840 lt!1698591)))))

(declare-fun m!5271985 () Bool)

(assert (=> bs!857616 m!5271985))

(assert (=> d!1393620 d!1393652))

(declare-fun b_lambda!155235 () Bool)

(assert (= b_lambda!155219 (or start!447772 b_lambda!155235)))

(assert (=> d!1393598 d!1393650))

(check-sat (not d!1393490) (not b!4521929) (not d!1393528) (not d!1393570) (not b!4522110) (not b!4522017) (not b!4521845) (not b!4522019) (not b!4521880) (not b!4521841) (not b!4521943) (not b!4521959) (not b!4521995) (not d!1393622) (not d!1393534) (not b!4522032) (not d!1393626) (not d!1393532) (not bs!857616) (not b!4521945) (not b!4521842) (not d!1393530) (not d!1393526) (not d!1393606) (not b!4522011) (not d!1393640) (not bm!315075) (not d!1393432) (not b!4522028) (not b!4521962) (not d!1393546) (not b!4522018) (not d!1393582) (not d!1393430) (not b!4521932) (not b!4521951) (not bs!857615) (not b!4521993) (not d!1393620) (not d!1393502) (not d!1393598) (not b!4521981) (not b!4522020) (not b!4521961) tp_is_empty!27935 (not b!4522046) (not b!4521982) (not b_lambda!155231) (not bm!315078) (not b!4522112) (not b!4521931) (not d!1393592) (not d!1393536) (not b!4521927) (not b_lambda!155233) (not bm!315079) (not d!1393588) (not b!4521898) (not b!4521928) (not b!4521952) (not b!4522023) (not b!4522015) (not b!4522030) (not d!1393568) (not b!4522021) (not b!4521960) (not b!4522042) (not d!1393642) (not b!4522077) (not b!4522118) (not b!4522132) (not b!4522026) (not d!1393510) (not b!4522043) (not b!4521942) (not b!4522078) (not d!1393646) (not b!4521862) (not d!1393556) (not b!4522057) (not d!1393520) (not d!1393514) (not b!4521925) (not d!1393604) (not b!4521997) (not b!4521843) (not d!1393610) (not d!1393548) (not b!4521966) (not b!4521940) (not d!1393550) (not d!1393540) (not d!1393544) (not d!1393602) (not bm!315094) (not b!4521964) (not b!4522122) (not d!1393554) (not b!4521923) (not b!4521899) (not b!4521990) (not b!4521992) (not d!1393542) (not bm!315095) (not b!4522034) (not d!1393648) (not b!4521926) (not b!4522117) (not d!1393552) tp_is_empty!27933 (not b_lambda!155235) (not bm!315081) (not b!4521904) (not b!4522031) (not d!1393580) (not b!4521874) (not b!4521983) (not d!1393638) (not bm!315073) (not d!1393524) (not b!4521980) (not b!4521897) (not b!4521901) (not d!1393538) (not b!4521963) (not b!4522005) (not d!1393562) (not b!4522029) (not d!1393516) (not d!1393522) (not d!1393518) (not b!4522086) (not bm!315080) (not bm!315074) (not b!4522127))
(check-sat)
