; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458988 () Bool)

(assert start!458988)

(declare-fun b!4599068 () Bool)

(declare-fun e!2868675 () Bool)

(assert (=> b!4599068 (= e!2868675 false)))

(declare-fun b!4599069 () Bool)

(declare-fun e!2868683 () Bool)

(declare-fun e!2868674 () Bool)

(assert (=> b!4599069 (= e!2868683 e!2868674)))

(declare-fun res!1923692 () Bool)

(assert (=> b!4599069 (=> res!1923692 e!2868674)))

(declare-datatypes ((K!12450 0))(
  ( (K!12451 (val!18231 Int)) )
))
(declare-datatypes ((V!12696 0))(
  ( (V!12697 (val!18232 Int)) )
))
(declare-datatypes ((tuple2!51730 0))(
  ( (tuple2!51731 (_1!29159 K!12450) (_2!29159 V!12696)) )
))
(declare-datatypes ((List!51208 0))(
  ( (Nil!51084) (Cons!51084 (h!57050 tuple2!51730) (t!358202 List!51208)) )
))
(declare-datatypes ((tuple2!51732 0))(
  ( (tuple2!51733 (_1!29160 (_ BitVec 64)) (_2!29160 List!51208)) )
))
(declare-datatypes ((List!51209 0))(
  ( (Nil!51085) (Cons!51085 (h!57051 tuple2!51732) (t!358203 List!51209)) )
))
(declare-datatypes ((ListLongMap!3287 0))(
  ( (ListLongMap!3288 (toList!4655 List!51209)) )
))
(declare-fun lt!1758713 () ListLongMap!3287)

(declare-fun lt!1758720 () tuple2!51732)

(declare-fun lt!1758709 () ListLongMap!3287)

(declare-fun +!1748 (ListLongMap!3287 tuple2!51732) ListLongMap!3287)

(assert (=> b!4599069 (= res!1923692 (not (= lt!1758709 (+!1748 lt!1758713 lt!1758720))))))

(declare-fun lm!1477 () ListLongMap!3287)

(declare-fun tail!7948 (ListLongMap!3287) ListLongMap!3287)

(assert (=> b!4599069 (= lt!1758713 (tail!7948 lm!1477))))

(declare-fun b!4599070 () Bool)

(declare-fun res!1923681 () Bool)

(declare-fun e!2868685 () Bool)

(assert (=> b!4599070 (=> res!1923681 e!2868685)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4599070 (= res!1923681 (or ((_ is Nil!51085) (toList!4655 lm!1477)) (not (= (_1!29160 (h!57051 (toList!4655 lm!1477))) hash!344))))))

(declare-fun b!4599072 () Bool)

(declare-fun res!1923688 () Bool)

(declare-fun e!2868676 () Bool)

(assert (=> b!4599072 (=> (not res!1923688) (not e!2868676))))

(declare-fun key!3287 () K!12450)

(declare-datatypes ((ListMap!3917 0))(
  ( (ListMap!3918 (toList!4656 List!51208)) )
))
(declare-fun contains!14035 (ListMap!3917 K!12450) Bool)

(declare-fun extractMap!1380 (List!51209) ListMap!3917)

(assert (=> b!4599072 (= res!1923688 (contains!14035 (extractMap!1380 (toList!4655 lm!1477)) key!3287))))

(declare-fun b!4599073 () Bool)

(declare-fun e!2868682 () Bool)

(assert (=> b!4599073 (= e!2868674 e!2868682)))

(declare-fun res!1923684 () Bool)

(assert (=> b!4599073 (=> res!1923684 e!2868682)))

(declare-fun lt!1758717 () ListMap!3917)

(assert (=> b!4599073 (= res!1923684 (not (= lt!1758717 (extractMap!1380 (t!358203 (toList!4655 lm!1477))))))))

(assert (=> b!4599073 (= lt!1758717 (extractMap!1380 (toList!4655 lt!1758713)))))

(declare-fun b!4599074 () Bool)

(declare-datatypes ((Unit!108291 0))(
  ( (Unit!108292) )
))
(declare-fun e!2868681 () Unit!108291)

(declare-fun Unit!108293 () Unit!108291)

(assert (=> b!4599074 (= e!2868681 Unit!108293)))

(declare-datatypes ((Hashable!5719 0))(
  ( (HashableExt!5718 (__x!31422 Int)) )
))
(declare-fun hashF!1107 () Hashable!5719)

(declare-fun lt!1758718 () Unit!108291)

(declare-fun lemmaInGenMapThenLongMapContainsHash!394 (ListLongMap!3287 K!12450 Hashable!5719) Unit!108291)

(assert (=> b!4599074 (= lt!1758718 (lemmaInGenMapThenLongMapContainsHash!394 lt!1758713 key!3287 hashF!1107))))

(declare-fun res!1923690 () Bool)

(declare-fun lt!1758710 () (_ BitVec 64))

(declare-fun contains!14036 (ListLongMap!3287 (_ BitVec 64)) Bool)

(assert (=> b!4599074 (= res!1923690 (contains!14036 lt!1758713 lt!1758710))))

(assert (=> b!4599074 (=> (not res!1923690) (not e!2868675))))

(assert (=> b!4599074 e!2868675))

(declare-fun b!4599075 () Bool)

(declare-fun e!2868679 () Bool)

(assert (=> b!4599075 (= e!2868679 e!2868683)))

(declare-fun res!1923682 () Bool)

(assert (=> b!4599075 (=> res!1923682 e!2868683)))

(declare-fun tail!7949 (List!51209) List!51209)

(assert (=> b!4599075 (= res!1923682 (not (= (t!358203 (toList!4655 lm!1477)) (tail!7949 (toList!4655 lt!1758709)))))))

(assert (=> b!4599075 (= lt!1758709 (+!1748 lm!1477 lt!1758720))))

(declare-fun eq!727 (ListMap!3917 ListMap!3917) Bool)

(declare-fun -!496 (ListMap!3917 K!12450) ListMap!3917)

(assert (=> b!4599075 (eq!727 (extractMap!1380 (Cons!51085 lt!1758720 Nil!51085)) (-!496 (extractMap!1380 (Cons!51085 (tuple2!51733 hash!344 (_2!29160 (h!57051 (toList!4655 lm!1477)))) Nil!51085)) key!3287))))

(declare-fun newBucket!178 () List!51208)

(assert (=> b!4599075 (= lt!1758720 (tuple2!51733 hash!344 newBucket!178))))

(declare-fun lt!1758716 () Unit!108291)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!86 ((_ BitVec 64) List!51208 List!51208 K!12450 Hashable!5719) Unit!108291)

(assert (=> b!4599075 (= lt!1758716 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!86 hash!344 (_2!29160 (h!57051 (toList!4655 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1758722 () List!51209)

(assert (=> b!4599075 (contains!14035 (extractMap!1380 lt!1758722) key!3287)))

(declare-fun lt!1758711 () Unit!108291)

(declare-fun lemmaListContainsThenExtractedMapContains!254 (ListLongMap!3287 K!12450 Hashable!5719) Unit!108291)

(assert (=> b!4599075 (= lt!1758711 (lemmaListContainsThenExtractedMapContains!254 (ListLongMap!3288 lt!1758722) key!3287 hashF!1107))))

(declare-fun b!4599076 () Bool)

(declare-fun res!1923685 () Bool)

(declare-fun e!2868677 () Bool)

(assert (=> b!4599076 (=> (not res!1923685) (not e!2868677))))

(declare-fun allKeysSameHash!1176 (List!51208 (_ BitVec 64) Hashable!5719) Bool)

(assert (=> b!4599076 (= res!1923685 (allKeysSameHash!1176 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4599077 () Bool)

(declare-fun e!2868686 () Bool)

(assert (=> b!4599077 (= e!2868685 e!2868686)))

(declare-fun res!1923694 () Bool)

(assert (=> b!4599077 (=> res!1923694 e!2868686)))

(declare-fun lt!1758714 () Bool)

(assert (=> b!4599077 (= res!1923694 lt!1758714)))

(declare-fun lt!1758723 () Unit!108291)

(declare-fun e!2868680 () Unit!108291)

(assert (=> b!4599077 (= lt!1758723 e!2868680)))

(declare-fun c!787763 () Bool)

(assert (=> b!4599077 (= c!787763 lt!1758714)))

(declare-fun containsKey!2160 (List!51208 K!12450) Bool)

(assert (=> b!4599077 (= lt!1758714 (not (containsKey!2160 (_2!29160 (h!57051 (toList!4655 lm!1477))) key!3287)))))

(declare-fun b!4599078 () Bool)

(declare-fun Unit!108294 () Unit!108291)

(assert (=> b!4599078 (= e!2868681 Unit!108294)))

(declare-fun b!4599079 () Bool)

(declare-fun res!1923691 () Bool)

(assert (=> b!4599079 (=> (not res!1923691) (not e!2868676))))

(declare-fun allKeysSameHashInMap!1431 (ListLongMap!3287 Hashable!5719) Bool)

(assert (=> b!4599079 (= res!1923691 (allKeysSameHashInMap!1431 lm!1477 hashF!1107))))

(declare-fun b!4599080 () Bool)

(declare-fun e!2868684 () Bool)

(assert (=> b!4599080 (= e!2868682 e!2868684)))

(declare-fun res!1923683 () Bool)

(assert (=> b!4599080 (=> res!1923683 e!2868684)))

(declare-fun lt!1758721 () Bool)

(assert (=> b!4599080 (= res!1923683 lt!1758721)))

(declare-fun lt!1758707 () Unit!108291)

(assert (=> b!4599080 (= lt!1758707 e!2868681)))

(declare-fun c!787764 () Bool)

(assert (=> b!4599080 (= c!787764 lt!1758721)))

(assert (=> b!4599080 (= lt!1758721 (contains!14035 lt!1758717 key!3287))))

(declare-fun b!4599071 () Bool)

(assert (=> b!4599071 (= e!2868686 e!2868679)))

(declare-fun res!1923689 () Bool)

(assert (=> b!4599071 (=> res!1923689 e!2868679)))

(declare-fun containsKeyBiggerList!276 (List!51209 K!12450) Bool)

(assert (=> b!4599071 (= res!1923689 (not (containsKeyBiggerList!276 lt!1758722 key!3287)))))

(assert (=> b!4599071 (= lt!1758722 (Cons!51085 (h!57051 (toList!4655 lm!1477)) Nil!51085))))

(declare-fun res!1923693 () Bool)

(assert (=> start!458988 (=> (not res!1923693) (not e!2868676))))

(declare-fun lambda!186330 () Int)

(declare-fun forall!10604 (List!51209 Int) Bool)

(assert (=> start!458988 (= res!1923693 (forall!10604 (toList!4655 lm!1477) lambda!186330))))

(assert (=> start!458988 e!2868676))

(assert (=> start!458988 true))

(declare-fun e!2868673 () Bool)

(declare-fun inv!66634 (ListLongMap!3287) Bool)

(assert (=> start!458988 (and (inv!66634 lm!1477) e!2868673)))

(declare-fun tp_is_empty!28573 () Bool)

(assert (=> start!458988 tp_is_empty!28573))

(declare-fun e!2868678 () Bool)

(assert (=> start!458988 e!2868678))

(declare-fun b!4599081 () Bool)

(declare-fun tp_is_empty!28575 () Bool)

(declare-fun tp!1340454 () Bool)

(assert (=> b!4599081 (= e!2868678 (and tp_is_empty!28573 tp_is_empty!28575 tp!1340454))))

(declare-fun b!4599082 () Bool)

(declare-fun Unit!108295 () Unit!108291)

(assert (=> b!4599082 (= e!2868680 Unit!108295)))

(declare-fun lt!1758712 () Unit!108291)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!290 (ListLongMap!3287 K!12450 Hashable!5719) Unit!108291)

(assert (=> b!4599082 (= lt!1758712 (lemmaNotInItsHashBucketThenNotInMap!290 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4599082 false))

(declare-fun b!4599083 () Bool)

(declare-fun tp!1340455 () Bool)

(assert (=> b!4599083 (= e!2868673 tp!1340455)))

(declare-fun b!4599084 () Bool)

(assert (=> b!4599084 (= e!2868676 e!2868677)))

(declare-fun res!1923680 () Bool)

(assert (=> b!4599084 (=> (not res!1923680) (not e!2868677))))

(assert (=> b!4599084 (= res!1923680 (= lt!1758710 hash!344))))

(declare-fun hash!3221 (Hashable!5719 K!12450) (_ BitVec 64))

(assert (=> b!4599084 (= lt!1758710 (hash!3221 hashF!1107 key!3287))))

(declare-fun b!4599085 () Bool)

(assert (=> b!4599085 (= e!2868684 (forall!10604 (toList!4655 lm!1477) lambda!186330))))

(declare-fun b!4599086 () Bool)

(declare-fun res!1923687 () Bool)

(assert (=> b!4599086 (=> res!1923687 e!2868685)))

(declare-fun noDuplicateKeys!1320 (List!51208) Bool)

(assert (=> b!4599086 (= res!1923687 (not (noDuplicateKeys!1320 newBucket!178)))))

(declare-fun b!4599087 () Bool)

(declare-fun Unit!108296 () Unit!108291)

(assert (=> b!4599087 (= e!2868680 Unit!108296)))

(declare-fun b!4599088 () Bool)

(assert (=> b!4599088 (= e!2868677 (not e!2868685))))

(declare-fun res!1923686 () Bool)

(assert (=> b!4599088 (=> res!1923686 e!2868685)))

(declare-fun lt!1758715 () List!51208)

(declare-fun removePairForKey!945 (List!51208 K!12450) List!51208)

(assert (=> b!4599088 (= res!1923686 (not (= newBucket!178 (removePairForKey!945 lt!1758715 key!3287))))))

(declare-fun lt!1758708 () Unit!108291)

(declare-fun lt!1758725 () tuple2!51732)

(declare-fun forallContained!2857 (List!51209 Int tuple2!51732) Unit!108291)

(assert (=> b!4599088 (= lt!1758708 (forallContained!2857 (toList!4655 lm!1477) lambda!186330 lt!1758725))))

(declare-fun contains!14037 (List!51209 tuple2!51732) Bool)

(assert (=> b!4599088 (contains!14037 (toList!4655 lm!1477) lt!1758725)))

(assert (=> b!4599088 (= lt!1758725 (tuple2!51733 hash!344 lt!1758715))))

(declare-fun lt!1758719 () Unit!108291)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!830 (List!51209 (_ BitVec 64) List!51208) Unit!108291)

(assert (=> b!4599088 (= lt!1758719 (lemmaGetValueByKeyImpliesContainsTuple!830 (toList!4655 lm!1477) hash!344 lt!1758715))))

(declare-fun apply!12057 (ListLongMap!3287 (_ BitVec 64)) List!51208)

(assert (=> b!4599088 (= lt!1758715 (apply!12057 lm!1477 hash!344))))

(assert (=> b!4599088 (contains!14036 lm!1477 lt!1758710)))

(declare-fun lt!1758724 () Unit!108291)

(assert (=> b!4599088 (= lt!1758724 (lemmaInGenMapThenLongMapContainsHash!394 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!458988 res!1923693) b!4599079))

(assert (= (and b!4599079 res!1923691) b!4599072))

(assert (= (and b!4599072 res!1923688) b!4599084))

(assert (= (and b!4599084 res!1923680) b!4599076))

(assert (= (and b!4599076 res!1923685) b!4599088))

(assert (= (and b!4599088 (not res!1923686)) b!4599086))

(assert (= (and b!4599086 (not res!1923687)) b!4599070))

(assert (= (and b!4599070 (not res!1923681)) b!4599077))

(assert (= (and b!4599077 c!787763) b!4599082))

(assert (= (and b!4599077 (not c!787763)) b!4599087))

(assert (= (and b!4599077 (not res!1923694)) b!4599071))

(assert (= (and b!4599071 (not res!1923689)) b!4599075))

(assert (= (and b!4599075 (not res!1923682)) b!4599069))

(assert (= (and b!4599069 (not res!1923692)) b!4599073))

(assert (= (and b!4599073 (not res!1923684)) b!4599080))

(assert (= (and b!4599080 c!787764) b!4599074))

(assert (= (and b!4599080 (not c!787764)) b!4599078))

(assert (= (and b!4599074 res!1923690) b!4599068))

(assert (= (and b!4599080 (not res!1923683)) b!4599085))

(assert (= start!458988 b!4599083))

(assert (= (and start!458988 ((_ is Cons!51084) newBucket!178)) b!4599081))

(declare-fun m!5425777 () Bool)

(assert (=> b!4599084 m!5425777))

(declare-fun m!5425779 () Bool)

(assert (=> b!4599086 m!5425779))

(declare-fun m!5425781 () Bool)

(assert (=> b!4599088 m!5425781))

(declare-fun m!5425783 () Bool)

(assert (=> b!4599088 m!5425783))

(declare-fun m!5425785 () Bool)

(assert (=> b!4599088 m!5425785))

(declare-fun m!5425787 () Bool)

(assert (=> b!4599088 m!5425787))

(declare-fun m!5425789 () Bool)

(assert (=> b!4599088 m!5425789))

(declare-fun m!5425791 () Bool)

(assert (=> b!4599088 m!5425791))

(declare-fun m!5425793 () Bool)

(assert (=> b!4599088 m!5425793))

(declare-fun m!5425795 () Bool)

(assert (=> b!4599077 m!5425795))

(declare-fun m!5425797 () Bool)

(assert (=> b!4599082 m!5425797))

(declare-fun m!5425799 () Bool)

(assert (=> b!4599069 m!5425799))

(declare-fun m!5425801 () Bool)

(assert (=> b!4599069 m!5425801))

(declare-fun m!5425803 () Bool)

(assert (=> b!4599074 m!5425803))

(declare-fun m!5425805 () Bool)

(assert (=> b!4599074 m!5425805))

(declare-fun m!5425807 () Bool)

(assert (=> b!4599075 m!5425807))

(assert (=> b!4599075 m!5425807))

(declare-fun m!5425809 () Bool)

(assert (=> b!4599075 m!5425809))

(declare-fun m!5425811 () Bool)

(assert (=> b!4599075 m!5425811))

(declare-fun m!5425813 () Bool)

(assert (=> b!4599075 m!5425813))

(declare-fun m!5425815 () Bool)

(assert (=> b!4599075 m!5425815))

(declare-fun m!5425817 () Bool)

(assert (=> b!4599075 m!5425817))

(declare-fun m!5425819 () Bool)

(assert (=> b!4599075 m!5425819))

(declare-fun m!5425821 () Bool)

(assert (=> b!4599075 m!5425821))

(assert (=> b!4599075 m!5425819))

(assert (=> b!4599075 m!5425809))

(declare-fun m!5425823 () Bool)

(assert (=> b!4599075 m!5425823))

(assert (=> b!4599075 m!5425821))

(declare-fun m!5425825 () Bool)

(assert (=> b!4599075 m!5425825))

(declare-fun m!5425827 () Bool)

(assert (=> b!4599071 m!5425827))

(declare-fun m!5425829 () Bool)

(assert (=> b!4599079 m!5425829))

(declare-fun m!5425831 () Bool)

(assert (=> b!4599080 m!5425831))

(declare-fun m!5425833 () Bool)

(assert (=> b!4599072 m!5425833))

(assert (=> b!4599072 m!5425833))

(declare-fun m!5425835 () Bool)

(assert (=> b!4599072 m!5425835))

(declare-fun m!5425837 () Bool)

(assert (=> start!458988 m!5425837))

(declare-fun m!5425839 () Bool)

(assert (=> start!458988 m!5425839))

(assert (=> b!4599085 m!5425837))

(declare-fun m!5425841 () Bool)

(assert (=> b!4599076 m!5425841))

(declare-fun m!5425843 () Bool)

(assert (=> b!4599073 m!5425843))

(declare-fun m!5425845 () Bool)

(assert (=> b!4599073 m!5425845))

(check-sat (not b!4599079) (not b!4599069) (not b!4599072) (not b!4599088) (not b!4599074) (not start!458988) (not b!4599084) (not b!4599075) tp_is_empty!28573 (not b!4599076) (not b!4599085) (not b!4599086) (not b!4599082) (not b!4599073) (not b!4599083) (not b!4599071) (not b!4599077) (not b!4599081) (not b!4599080) tp_is_empty!28575)
(check-sat)
