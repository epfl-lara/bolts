; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!458990 () Bool)

(assert start!458990)

(declare-fun b!4599133 () Bool)

(declare-fun e!2868716 () Bool)

(declare-fun e!2868717 () Bool)

(assert (=> b!4599133 (= e!2868716 e!2868717)))

(declare-fun res!1923736 () Bool)

(assert (=> b!4599133 (=> res!1923736 e!2868717)))

(declare-datatypes ((K!12453 0))(
  ( (K!12454 (val!18233 Int)) )
))
(declare-datatypes ((V!12699 0))(
  ( (V!12700 (val!18234 Int)) )
))
(declare-datatypes ((tuple2!51734 0))(
  ( (tuple2!51735 (_1!29161 K!12453) (_2!29161 V!12699)) )
))
(declare-datatypes ((List!51210 0))(
  ( (Nil!51086) (Cons!51086 (h!57052 tuple2!51734) (t!358204 List!51210)) )
))
(declare-datatypes ((tuple2!51736 0))(
  ( (tuple2!51737 (_1!29162 (_ BitVec 64)) (_2!29162 List!51210)) )
))
(declare-fun lt!1758779 () tuple2!51736)

(declare-datatypes ((List!51211 0))(
  ( (Nil!51087) (Cons!51087 (h!57053 tuple2!51736) (t!358205 List!51211)) )
))
(declare-datatypes ((ListLongMap!3289 0))(
  ( (ListLongMap!3290 (toList!4657 List!51211)) )
))
(declare-fun lt!1758766 () ListLongMap!3289)

(declare-fun lt!1758781 () ListLongMap!3289)

(declare-fun +!1749 (ListLongMap!3289 tuple2!51736) ListLongMap!3289)

(assert (=> b!4599133 (= res!1923736 (not (= lt!1758781 (+!1749 lt!1758766 lt!1758779))))))

(declare-fun lm!1477 () ListLongMap!3289)

(declare-fun tail!7950 (ListLongMap!3289) ListLongMap!3289)

(assert (=> b!4599133 (= lt!1758766 (tail!7950 lm!1477))))

(declare-fun b!4599134 () Bool)

(declare-fun e!2868725 () Bool)

(declare-fun noDuplicateKeys!1321 (List!51210) Bool)

(assert (=> b!4599134 (= e!2868725 (noDuplicateKeys!1321 (_2!29162 (h!57053 (toList!4657 lm!1477)))))))

(declare-fun b!4599135 () Bool)

(declare-fun e!2868722 () Bool)

(assert (=> b!4599135 (= e!2868722 e!2868716)))

(declare-fun res!1923728 () Bool)

(assert (=> b!4599135 (=> res!1923728 e!2868716)))

(declare-fun tail!7951 (List!51211) List!51211)

(assert (=> b!4599135 (= res!1923728 (not (= (t!358205 (toList!4657 lm!1477)) (tail!7951 (toList!4657 lt!1758781)))))))

(assert (=> b!4599135 (= lt!1758781 (+!1749 lm!1477 lt!1758779))))

(declare-fun key!3287 () K!12453)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((ListMap!3919 0))(
  ( (ListMap!3920 (toList!4658 List!51210)) )
))
(declare-fun eq!728 (ListMap!3919 ListMap!3919) Bool)

(declare-fun extractMap!1381 (List!51211) ListMap!3919)

(declare-fun -!497 (ListMap!3919 K!12453) ListMap!3919)

(assert (=> b!4599135 (eq!728 (extractMap!1381 (Cons!51087 lt!1758779 Nil!51087)) (-!497 (extractMap!1381 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087)) key!3287))))

(declare-fun newBucket!178 () List!51210)

(assert (=> b!4599135 (= lt!1758779 (tuple2!51737 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5720 0))(
  ( (HashableExt!5719 (__x!31423 Int)) )
))
(declare-fun hashF!1107 () Hashable!5720)

(declare-datatypes ((Unit!108297 0))(
  ( (Unit!108298) )
))
(declare-fun lt!1758778 () Unit!108297)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!87 ((_ BitVec 64) List!51210 List!51210 K!12453 Hashable!5720) Unit!108297)

(assert (=> b!4599135 (= lt!1758778 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!87 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1758782 () List!51211)

(declare-fun contains!14038 (ListMap!3919 K!12453) Bool)

(assert (=> b!4599135 (contains!14038 (extractMap!1381 lt!1758782) key!3287)))

(declare-fun lt!1758769 () Unit!108297)

(declare-fun lemmaListContainsThenExtractedMapContains!255 (ListLongMap!3289 K!12453 Hashable!5720) Unit!108297)

(assert (=> b!4599135 (= lt!1758769 (lemmaListContainsThenExtractedMapContains!255 (ListLongMap!3290 lt!1758782) key!3287 hashF!1107))))

(declare-fun b!4599136 () Bool)

(declare-fun e!2868720 () Unit!108297)

(declare-fun Unit!108299 () Unit!108297)

(assert (=> b!4599136 (= e!2868720 Unit!108299)))

(declare-fun res!1923740 () Bool)

(declare-fun e!2868718 () Bool)

(assert (=> start!458990 (=> (not res!1923740) (not e!2868718))))

(declare-fun lambda!186337 () Int)

(declare-fun forall!10605 (List!51211 Int) Bool)

(assert (=> start!458990 (= res!1923740 (forall!10605 (toList!4657 lm!1477) lambda!186337))))

(assert (=> start!458990 e!2868718))

(assert (=> start!458990 true))

(declare-fun e!2868723 () Bool)

(declare-fun inv!66638 (ListLongMap!3289) Bool)

(assert (=> start!458990 (and (inv!66638 lm!1477) e!2868723)))

(declare-fun tp_is_empty!28577 () Bool)

(assert (=> start!458990 tp_is_empty!28577))

(declare-fun e!2868721 () Bool)

(assert (=> start!458990 e!2868721))

(declare-fun b!4599137 () Bool)

(declare-fun res!1923727 () Bool)

(assert (=> b!4599137 (=> (not res!1923727) (not e!2868718))))

(declare-fun allKeysSameHashInMap!1432 (ListLongMap!3289 Hashable!5720) Bool)

(assert (=> b!4599137 (= res!1923727 (allKeysSameHashInMap!1432 lm!1477 hashF!1107))))

(declare-fun b!4599138 () Bool)

(declare-fun e!2868726 () Unit!108297)

(declare-fun Unit!108300 () Unit!108297)

(assert (=> b!4599138 (= e!2868726 Unit!108300)))

(declare-fun b!4599139 () Bool)

(declare-fun e!2868724 () Bool)

(assert (=> b!4599139 (= e!2868724 e!2868725)))

(declare-fun res!1923731 () Bool)

(assert (=> b!4599139 (=> res!1923731 e!2868725)))

(declare-fun lt!1758775 () Bool)

(assert (=> b!4599139 (= res!1923731 lt!1758775)))

(declare-fun lt!1758771 () Unit!108297)

(assert (=> b!4599139 (= lt!1758771 e!2868726)))

(declare-fun c!787770 () Bool)

(assert (=> b!4599139 (= c!787770 lt!1758775)))

(declare-fun lt!1758776 () ListMap!3919)

(assert (=> b!4599139 (= lt!1758775 (contains!14038 lt!1758776 key!3287))))

(declare-fun b!4599140 () Bool)

(declare-fun e!2868727 () Bool)

(assert (=> b!4599140 (= e!2868727 false)))

(declare-fun b!4599141 () Bool)

(declare-fun res!1923737 () Bool)

(assert (=> b!4599141 (=> (not res!1923737) (not e!2868718))))

(assert (=> b!4599141 (= res!1923737 (contains!14038 (extractMap!1381 (toList!4657 lm!1477)) key!3287))))

(declare-fun b!4599142 () Bool)

(declare-fun Unit!108301 () Unit!108297)

(assert (=> b!4599142 (= e!2868720 Unit!108301)))

(declare-fun lt!1758774 () Unit!108297)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!291 (ListLongMap!3289 K!12453 Hashable!5720) Unit!108297)

(assert (=> b!4599142 (= lt!1758774 (lemmaNotInItsHashBucketThenNotInMap!291 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4599142 false))

(declare-fun b!4599143 () Bool)

(declare-fun res!1923733 () Bool)

(declare-fun e!2868719 () Bool)

(assert (=> b!4599143 (=> (not res!1923733) (not e!2868719))))

(declare-fun allKeysSameHash!1177 (List!51210 (_ BitVec 64) Hashable!5720) Bool)

(assert (=> b!4599143 (= res!1923733 (allKeysSameHash!1177 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4599144 () Bool)

(declare-fun e!2868728 () Bool)

(assert (=> b!4599144 (= e!2868719 (not e!2868728))))

(declare-fun res!1923732 () Bool)

(assert (=> b!4599144 (=> res!1923732 e!2868728)))

(declare-fun lt!1758773 () List!51210)

(declare-fun removePairForKey!946 (List!51210 K!12453) List!51210)

(assert (=> b!4599144 (= res!1923732 (not (= newBucket!178 (removePairForKey!946 lt!1758773 key!3287))))))

(declare-fun lt!1758770 () tuple2!51736)

(declare-fun lt!1758772 () Unit!108297)

(declare-fun forallContained!2858 (List!51211 Int tuple2!51736) Unit!108297)

(assert (=> b!4599144 (= lt!1758772 (forallContained!2858 (toList!4657 lm!1477) lambda!186337 lt!1758770))))

(declare-fun contains!14039 (List!51211 tuple2!51736) Bool)

(assert (=> b!4599144 (contains!14039 (toList!4657 lm!1477) lt!1758770)))

(assert (=> b!4599144 (= lt!1758770 (tuple2!51737 hash!344 lt!1758773))))

(declare-fun lt!1758764 () Unit!108297)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!831 (List!51211 (_ BitVec 64) List!51210) Unit!108297)

(assert (=> b!4599144 (= lt!1758764 (lemmaGetValueByKeyImpliesContainsTuple!831 (toList!4657 lm!1477) hash!344 lt!1758773))))

(declare-fun apply!12058 (ListLongMap!3289 (_ BitVec 64)) List!51210)

(assert (=> b!4599144 (= lt!1758773 (apply!12058 lm!1477 hash!344))))

(declare-fun lt!1758777 () (_ BitVec 64))

(declare-fun contains!14040 (ListLongMap!3289 (_ BitVec 64)) Bool)

(assert (=> b!4599144 (contains!14040 lm!1477 lt!1758777)))

(declare-fun lt!1758780 () Unit!108297)

(declare-fun lemmaInGenMapThenLongMapContainsHash!395 (ListLongMap!3289 K!12453 Hashable!5720) Unit!108297)

(assert (=> b!4599144 (= lt!1758780 (lemmaInGenMapThenLongMapContainsHash!395 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4599145 () Bool)

(assert (=> b!4599145 (= e!2868717 e!2868724)))

(declare-fun res!1923739 () Bool)

(assert (=> b!4599145 (=> res!1923739 e!2868724)))

(assert (=> b!4599145 (= res!1923739 (not (= lt!1758776 (extractMap!1381 (t!358205 (toList!4657 lm!1477))))))))

(assert (=> b!4599145 (= lt!1758776 (extractMap!1381 (toList!4657 lt!1758766)))))

(declare-fun b!4599146 () Bool)

(declare-fun res!1923729 () Bool)

(assert (=> b!4599146 (=> res!1923729 e!2868725)))

(assert (=> b!4599146 (= res!1923729 (not (forall!10605 (toList!4657 lm!1477) lambda!186337)))))

(declare-fun b!4599147 () Bool)

(declare-fun Unit!108302 () Unit!108297)

(assert (=> b!4599147 (= e!2868726 Unit!108302)))

(declare-fun lt!1758765 () Unit!108297)

(assert (=> b!4599147 (= lt!1758765 (lemmaInGenMapThenLongMapContainsHash!395 lt!1758766 key!3287 hashF!1107))))

(declare-fun res!1923742 () Bool)

(assert (=> b!4599147 (= res!1923742 (contains!14040 lt!1758766 lt!1758777))))

(assert (=> b!4599147 (=> (not res!1923742) (not e!2868727))))

(assert (=> b!4599147 e!2868727))

(declare-fun b!4599148 () Bool)

(declare-fun tp!1340461 () Bool)

(assert (=> b!4599148 (= e!2868723 tp!1340461)))

(declare-fun b!4599149 () Bool)

(declare-fun e!2868715 () Bool)

(assert (=> b!4599149 (= e!2868728 e!2868715)))

(declare-fun res!1923735 () Bool)

(assert (=> b!4599149 (=> res!1923735 e!2868715)))

(declare-fun lt!1758768 () Bool)

(assert (=> b!4599149 (= res!1923735 lt!1758768)))

(declare-fun lt!1758767 () Unit!108297)

(assert (=> b!4599149 (= lt!1758767 e!2868720)))

(declare-fun c!787769 () Bool)

(assert (=> b!4599149 (= c!787769 lt!1758768)))

(declare-fun containsKey!2161 (List!51210 K!12453) Bool)

(assert (=> b!4599149 (= lt!1758768 (not (containsKey!2161 (_2!29162 (h!57053 (toList!4657 lm!1477))) key!3287)))))

(declare-fun b!4599150 () Bool)

(assert (=> b!4599150 (= e!2868715 e!2868722)))

(declare-fun res!1923741 () Bool)

(assert (=> b!4599150 (=> res!1923741 e!2868722)))

(declare-fun containsKeyBiggerList!277 (List!51211 K!12453) Bool)

(assert (=> b!4599150 (= res!1923741 (not (containsKeyBiggerList!277 lt!1758782 key!3287)))))

(assert (=> b!4599150 (= lt!1758782 (Cons!51087 (h!57053 (toList!4657 lm!1477)) Nil!51087))))

(declare-fun b!4599151 () Bool)

(declare-fun res!1923730 () Bool)

(assert (=> b!4599151 (=> res!1923730 e!2868728)))

(assert (=> b!4599151 (= res!1923730 (or (is-Nil!51087 (toList!4657 lm!1477)) (not (= (_1!29162 (h!57053 (toList!4657 lm!1477))) hash!344))))))

(declare-fun b!4599152 () Bool)

(assert (=> b!4599152 (= e!2868718 e!2868719)))

(declare-fun res!1923738 () Bool)

(assert (=> b!4599152 (=> (not res!1923738) (not e!2868719))))

(assert (=> b!4599152 (= res!1923738 (= lt!1758777 hash!344))))

(declare-fun hash!3222 (Hashable!5720 K!12453) (_ BitVec 64))

(assert (=> b!4599152 (= lt!1758777 (hash!3222 hashF!1107 key!3287))))

(declare-fun b!4599153 () Bool)

(declare-fun res!1923734 () Bool)

(assert (=> b!4599153 (=> res!1923734 e!2868728)))

(assert (=> b!4599153 (= res!1923734 (not (noDuplicateKeys!1321 newBucket!178)))))

(declare-fun b!4599154 () Bool)

(declare-fun tp!1340460 () Bool)

(declare-fun tp_is_empty!28579 () Bool)

(assert (=> b!4599154 (= e!2868721 (and tp_is_empty!28577 tp_is_empty!28579 tp!1340460))))

(assert (= (and start!458990 res!1923740) b!4599137))

(assert (= (and b!4599137 res!1923727) b!4599141))

(assert (= (and b!4599141 res!1923737) b!4599152))

(assert (= (and b!4599152 res!1923738) b!4599143))

(assert (= (and b!4599143 res!1923733) b!4599144))

(assert (= (and b!4599144 (not res!1923732)) b!4599153))

(assert (= (and b!4599153 (not res!1923734)) b!4599151))

(assert (= (and b!4599151 (not res!1923730)) b!4599149))

(assert (= (and b!4599149 c!787769) b!4599142))

(assert (= (and b!4599149 (not c!787769)) b!4599136))

(assert (= (and b!4599149 (not res!1923735)) b!4599150))

(assert (= (and b!4599150 (not res!1923741)) b!4599135))

(assert (= (and b!4599135 (not res!1923728)) b!4599133))

(assert (= (and b!4599133 (not res!1923736)) b!4599145))

(assert (= (and b!4599145 (not res!1923739)) b!4599139))

(assert (= (and b!4599139 c!787770) b!4599147))

(assert (= (and b!4599139 (not c!787770)) b!4599138))

(assert (= (and b!4599147 res!1923742) b!4599140))

(assert (= (and b!4599139 (not res!1923731)) b!4599146))

(assert (= (and b!4599146 (not res!1923729)) b!4599134))

(assert (= start!458990 b!4599148))

(assert (= (and start!458990 (is-Cons!51086 newBucket!178)) b!4599154))

(declare-fun m!5425847 () Bool)

(assert (=> b!4599150 m!5425847))

(declare-fun m!5425849 () Bool)

(assert (=> b!4599146 m!5425849))

(declare-fun m!5425851 () Bool)

(assert (=> b!4599147 m!5425851))

(declare-fun m!5425853 () Bool)

(assert (=> b!4599147 m!5425853))

(declare-fun m!5425855 () Bool)

(assert (=> b!4599145 m!5425855))

(declare-fun m!5425857 () Bool)

(assert (=> b!4599145 m!5425857))

(declare-fun m!5425859 () Bool)

(assert (=> b!4599153 m!5425859))

(declare-fun m!5425861 () Bool)

(assert (=> b!4599149 m!5425861))

(assert (=> start!458990 m!5425849))

(declare-fun m!5425863 () Bool)

(assert (=> start!458990 m!5425863))

(declare-fun m!5425865 () Bool)

(assert (=> b!4599152 m!5425865))

(declare-fun m!5425867 () Bool)

(assert (=> b!4599142 m!5425867))

(declare-fun m!5425869 () Bool)

(assert (=> b!4599143 m!5425869))

(declare-fun m!5425871 () Bool)

(assert (=> b!4599137 m!5425871))

(declare-fun m!5425873 () Bool)

(assert (=> b!4599134 m!5425873))

(declare-fun m!5425875 () Bool)

(assert (=> b!4599139 m!5425875))

(declare-fun m!5425877 () Bool)

(assert (=> b!4599141 m!5425877))

(assert (=> b!4599141 m!5425877))

(declare-fun m!5425879 () Bool)

(assert (=> b!4599141 m!5425879))

(declare-fun m!5425881 () Bool)

(assert (=> b!4599135 m!5425881))

(declare-fun m!5425883 () Bool)

(assert (=> b!4599135 m!5425883))

(declare-fun m!5425885 () Bool)

(assert (=> b!4599135 m!5425885))

(declare-fun m!5425887 () Bool)

(assert (=> b!4599135 m!5425887))

(assert (=> b!4599135 m!5425885))

(declare-fun m!5425889 () Bool)

(assert (=> b!4599135 m!5425889))

(declare-fun m!5425891 () Bool)

(assert (=> b!4599135 m!5425891))

(declare-fun m!5425893 () Bool)

(assert (=> b!4599135 m!5425893))

(declare-fun m!5425895 () Bool)

(assert (=> b!4599135 m!5425895))

(assert (=> b!4599135 m!5425883))

(declare-fun m!5425897 () Bool)

(assert (=> b!4599135 m!5425897))

(declare-fun m!5425899 () Bool)

(assert (=> b!4599135 m!5425899))

(assert (=> b!4599135 m!5425893))

(assert (=> b!4599135 m!5425887))

(declare-fun m!5425901 () Bool)

(assert (=> b!4599133 m!5425901))

(declare-fun m!5425903 () Bool)

(assert (=> b!4599133 m!5425903))

(declare-fun m!5425905 () Bool)

(assert (=> b!4599144 m!5425905))

(declare-fun m!5425907 () Bool)

(assert (=> b!4599144 m!5425907))

(declare-fun m!5425909 () Bool)

(assert (=> b!4599144 m!5425909))

(declare-fun m!5425911 () Bool)

(assert (=> b!4599144 m!5425911))

(declare-fun m!5425913 () Bool)

(assert (=> b!4599144 m!5425913))

(declare-fun m!5425915 () Bool)

(assert (=> b!4599144 m!5425915))

(declare-fun m!5425917 () Bool)

(assert (=> b!4599144 m!5425917))

(push 1)

(assert (not b!4599152))

(assert (not b!4599141))

(assert (not b!4599150))

(assert (not b!4599154))

(assert tp_is_empty!28577)

(assert tp_is_empty!28579)

(assert (not b!4599144))

(assert (not b!4599137))

(assert (not b!4599146))

(assert (not b!4599133))

(assert (not b!4599134))

(assert (not start!458990))

(assert (not b!4599147))

(assert (not b!4599135))

(assert (not b!4599149))

(assert (not b!4599145))

(assert (not b!4599143))

(assert (not b!4599139))

(assert (not b!4599153))

(assert (not b!4599142))

(assert (not b!4599148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1448119 () Bool)

(declare-fun res!1923795 () Bool)

(declare-fun e!2868775 () Bool)

(assert (=> d!1448119 (=> res!1923795 e!2868775)))

(assert (=> d!1448119 (= res!1923795 (is-Nil!51087 (toList!4657 lm!1477)))))

(assert (=> d!1448119 (= (forall!10605 (toList!4657 lm!1477) lambda!186337) e!2868775)))

(declare-fun b!4599225 () Bool)

(declare-fun e!2868776 () Bool)

(assert (=> b!4599225 (= e!2868775 e!2868776)))

(declare-fun res!1923796 () Bool)

(assert (=> b!4599225 (=> (not res!1923796) (not e!2868776))))

(declare-fun dynLambda!21399 (Int tuple2!51736) Bool)

(assert (=> b!4599225 (= res!1923796 (dynLambda!21399 lambda!186337 (h!57053 (toList!4657 lm!1477))))))

(declare-fun b!4599226 () Bool)

(assert (=> b!4599226 (= e!2868776 (forall!10605 (t!358205 (toList!4657 lm!1477)) lambda!186337))))

(assert (= (and d!1448119 (not res!1923795)) b!4599225))

(assert (= (and b!4599225 res!1923796) b!4599226))

(declare-fun b_lambda!169437 () Bool)

(assert (=> (not b_lambda!169437) (not b!4599225)))

(declare-fun m!5425991 () Bool)

(assert (=> b!4599225 m!5425991))

(declare-fun m!5425993 () Bool)

(assert (=> b!4599226 m!5425993))

(assert (=> b!4599146 d!1448119))

(declare-fun bs!1011504 () Bool)

(declare-fun d!1448121 () Bool)

(assert (= bs!1011504 (and d!1448121 start!458990)))

(declare-fun lambda!186347 () Int)

(assert (=> bs!1011504 (= lambda!186347 lambda!186337)))

(declare-fun lt!1758842 () ListMap!3919)

(declare-fun invariantList!1125 (List!51210) Bool)

(assert (=> d!1448121 (invariantList!1125 (toList!4658 lt!1758842))))

(declare-fun e!2868779 () ListMap!3919)

(assert (=> d!1448121 (= lt!1758842 e!2868779)))

(declare-fun c!787779 () Bool)

(assert (=> d!1448121 (= c!787779 (is-Cons!51087 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087)))))

(assert (=> d!1448121 (forall!10605 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087) lambda!186347)))

(assert (=> d!1448121 (= (extractMap!1381 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087)) lt!1758842)))

(declare-fun b!4599231 () Bool)

(declare-fun addToMapMapFromBucket!815 (List!51210 ListMap!3919) ListMap!3919)

(assert (=> b!4599231 (= e!2868779 (addToMapMapFromBucket!815 (_2!29162 (h!57053 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087))) (extractMap!1381 (t!358205 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087)))))))

(declare-fun b!4599232 () Bool)

(assert (=> b!4599232 (= e!2868779 (ListMap!3920 Nil!51086))))

(assert (= (and d!1448121 c!787779) b!4599231))

(assert (= (and d!1448121 (not c!787779)) b!4599232))

(declare-fun m!5425995 () Bool)

(assert (=> d!1448121 m!5425995))

(declare-fun m!5425997 () Bool)

(assert (=> d!1448121 m!5425997))

(declare-fun m!5425999 () Bool)

(assert (=> b!4599231 m!5425999))

(assert (=> b!4599231 m!5425999))

(declare-fun m!5426001 () Bool)

(assert (=> b!4599231 m!5426001))

(assert (=> b!4599135 d!1448121))

(declare-fun d!1448123 () Bool)

(declare-fun e!2868788 () Bool)

(assert (=> d!1448123 e!2868788))

(declare-fun res!1923805 () Bool)

(assert (=> d!1448123 (=> (not res!1923805) (not e!2868788))))

(declare-fun lt!1758845 () ListMap!3919)

(assert (=> d!1448123 (= res!1923805 (not (contains!14038 lt!1758845 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!222 (List!51210 K!12453) List!51210)

(assert (=> d!1448123 (= lt!1758845 (ListMap!3920 (removePresrvNoDuplicatedKeys!222 (toList!4658 (extractMap!1381 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087))) key!3287)))))

(assert (=> d!1448123 (= (-!497 (extractMap!1381 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087)) key!3287) lt!1758845)))

(declare-fun b!4599241 () Bool)

(declare-datatypes ((List!51214 0))(
  ( (Nil!51090) (Cons!51090 (h!57057 K!12453) (t!358208 List!51214)) )
))
(declare-fun content!8649 (List!51214) (Set K!12453))

(declare-fun keys!17889 (ListMap!3919) List!51214)

(assert (=> b!4599241 (= e!2868788 (= (set.minus (content!8649 (keys!17889 (extractMap!1381 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087)))) (set.insert key!3287 (as set.empty (Set K!12453)))) (content!8649 (keys!17889 lt!1758845))))))

(assert (= (and d!1448123 res!1923805) b!4599241))

(declare-fun m!5426003 () Bool)

(assert (=> d!1448123 m!5426003))

(declare-fun m!5426005 () Bool)

(assert (=> d!1448123 m!5426005))

(declare-fun m!5426007 () Bool)

(assert (=> b!4599241 m!5426007))

(declare-fun m!5426009 () Bool)

(assert (=> b!4599241 m!5426009))

(declare-fun m!5426011 () Bool)

(assert (=> b!4599241 m!5426011))

(assert (=> b!4599241 m!5425883))

(assert (=> b!4599241 m!5426009))

(declare-fun m!5426015 () Bool)

(assert (=> b!4599241 m!5426015))

(assert (=> b!4599241 m!5426007))

(declare-fun m!5426017 () Bool)

(assert (=> b!4599241 m!5426017))

(assert (=> b!4599135 d!1448123))

(declare-fun d!1448127 () Bool)

(assert (=> d!1448127 (= (tail!7951 (toList!4657 lt!1758781)) (t!358205 (toList!4657 lt!1758781)))))

(assert (=> b!4599135 d!1448127))

(declare-fun d!1448131 () Bool)

(declare-fun e!2868791 () Bool)

(assert (=> d!1448131 e!2868791))

(declare-fun res!1923811 () Bool)

(assert (=> d!1448131 (=> (not res!1923811) (not e!2868791))))

(declare-fun lt!1758856 () ListLongMap!3289)

(assert (=> d!1448131 (= res!1923811 (contains!14040 lt!1758856 (_1!29162 lt!1758779)))))

(declare-fun lt!1758854 () List!51211)

(assert (=> d!1448131 (= lt!1758856 (ListLongMap!3290 lt!1758854))))

(declare-fun lt!1758855 () Unit!108297)

(declare-fun lt!1758857 () Unit!108297)

(assert (=> d!1448131 (= lt!1758855 lt!1758857)))

(declare-datatypes ((Option!11392 0))(
  ( (None!11391) (Some!11391 (v!45377 List!51210)) )
))
(declare-fun getValueByKey!1312 (List!51211 (_ BitVec 64)) Option!11392)

(assert (=> d!1448131 (= (getValueByKey!1312 lt!1758854 (_1!29162 lt!1758779)) (Some!11391 (_2!29162 lt!1758779)))))

(declare-fun lemmaContainsTupThenGetReturnValue!797 (List!51211 (_ BitVec 64) List!51210) Unit!108297)

(assert (=> d!1448131 (= lt!1758857 (lemmaContainsTupThenGetReturnValue!797 lt!1758854 (_1!29162 lt!1758779) (_2!29162 lt!1758779)))))

(declare-fun insertStrictlySorted!489 (List!51211 (_ BitVec 64) List!51210) List!51211)

(assert (=> d!1448131 (= lt!1758854 (insertStrictlySorted!489 (toList!4657 lm!1477) (_1!29162 lt!1758779) (_2!29162 lt!1758779)))))

(assert (=> d!1448131 (= (+!1749 lm!1477 lt!1758779) lt!1758856)))

(declare-fun b!4599246 () Bool)

(declare-fun res!1923810 () Bool)

(assert (=> b!4599246 (=> (not res!1923810) (not e!2868791))))

(assert (=> b!4599246 (= res!1923810 (= (getValueByKey!1312 (toList!4657 lt!1758856) (_1!29162 lt!1758779)) (Some!11391 (_2!29162 lt!1758779))))))

(declare-fun b!4599247 () Bool)

(assert (=> b!4599247 (= e!2868791 (contains!14039 (toList!4657 lt!1758856) lt!1758779))))

(assert (= (and d!1448131 res!1923811) b!4599246))

(assert (= (and b!4599246 res!1923810) b!4599247))

(declare-fun m!5426021 () Bool)

(assert (=> d!1448131 m!5426021))

(declare-fun m!5426023 () Bool)

(assert (=> d!1448131 m!5426023))

(declare-fun m!5426025 () Bool)

(assert (=> d!1448131 m!5426025))

(declare-fun m!5426027 () Bool)

(assert (=> d!1448131 m!5426027))

(declare-fun m!5426029 () Bool)

(assert (=> b!4599246 m!5426029))

(declare-fun m!5426031 () Bool)

(assert (=> b!4599247 m!5426031))

(assert (=> b!4599135 d!1448131))

(declare-fun d!1448133 () Bool)

(declare-fun content!8650 (List!51210) (Set tuple2!51734))

(assert (=> d!1448133 (= (eq!728 (extractMap!1381 (Cons!51087 lt!1758779 Nil!51087)) (-!497 (extractMap!1381 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087)) key!3287)) (= (content!8650 (toList!4658 (extractMap!1381 (Cons!51087 lt!1758779 Nil!51087)))) (content!8650 (toList!4658 (-!497 (extractMap!1381 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087)) key!3287)))))))

(declare-fun bs!1011505 () Bool)

(assert (= bs!1011505 d!1448133))

(declare-fun m!5426033 () Bool)

(assert (=> bs!1011505 m!5426033))

(declare-fun m!5426035 () Bool)

(assert (=> bs!1011505 m!5426035))

(assert (=> b!4599135 d!1448133))

(declare-fun bs!1011506 () Bool)

(declare-fun d!1448135 () Bool)

(assert (= bs!1011506 (and d!1448135 start!458990)))

(declare-fun lambda!186350 () Int)

(assert (=> bs!1011506 (= lambda!186350 lambda!186337)))

(declare-fun bs!1011507 () Bool)

(assert (= bs!1011507 (and d!1448135 d!1448121)))

(assert (=> bs!1011507 (= lambda!186350 lambda!186347)))

(assert (=> d!1448135 (contains!14038 (extractMap!1381 (toList!4657 (ListLongMap!3290 lt!1758782))) key!3287)))

(declare-fun lt!1758860 () Unit!108297)

(declare-fun choose!30823 (ListLongMap!3289 K!12453 Hashable!5720) Unit!108297)

(assert (=> d!1448135 (= lt!1758860 (choose!30823 (ListLongMap!3290 lt!1758782) key!3287 hashF!1107))))

(assert (=> d!1448135 (forall!10605 (toList!4657 (ListLongMap!3290 lt!1758782)) lambda!186350)))

(assert (=> d!1448135 (= (lemmaListContainsThenExtractedMapContains!255 (ListLongMap!3290 lt!1758782) key!3287 hashF!1107) lt!1758860)))

(declare-fun bs!1011508 () Bool)

(assert (= bs!1011508 d!1448135))

(declare-fun m!5426037 () Bool)

(assert (=> bs!1011508 m!5426037))

(assert (=> bs!1011508 m!5426037))

(declare-fun m!5426039 () Bool)

(assert (=> bs!1011508 m!5426039))

(declare-fun m!5426041 () Bool)

(assert (=> bs!1011508 m!5426041))

(declare-fun m!5426043 () Bool)

(assert (=> bs!1011508 m!5426043))

(assert (=> b!4599135 d!1448135))

(declare-fun bs!1011509 () Bool)

(declare-fun d!1448137 () Bool)

(assert (= bs!1011509 (and d!1448137 start!458990)))

(declare-fun lambda!186351 () Int)

(assert (=> bs!1011509 (= lambda!186351 lambda!186337)))

(declare-fun bs!1011510 () Bool)

(assert (= bs!1011510 (and d!1448137 d!1448121)))

(assert (=> bs!1011510 (= lambda!186351 lambda!186347)))

(declare-fun bs!1011511 () Bool)

(assert (= bs!1011511 (and d!1448137 d!1448135)))

(assert (=> bs!1011511 (= lambda!186351 lambda!186350)))

(declare-fun lt!1758861 () ListMap!3919)

(assert (=> d!1448137 (invariantList!1125 (toList!4658 lt!1758861))))

(declare-fun e!2868792 () ListMap!3919)

(assert (=> d!1448137 (= lt!1758861 e!2868792)))

(declare-fun c!787780 () Bool)

(assert (=> d!1448137 (= c!787780 (is-Cons!51087 (Cons!51087 lt!1758779 Nil!51087)))))

(assert (=> d!1448137 (forall!10605 (Cons!51087 lt!1758779 Nil!51087) lambda!186351)))

(assert (=> d!1448137 (= (extractMap!1381 (Cons!51087 lt!1758779 Nil!51087)) lt!1758861)))

(declare-fun b!4599248 () Bool)

(assert (=> b!4599248 (= e!2868792 (addToMapMapFromBucket!815 (_2!29162 (h!57053 (Cons!51087 lt!1758779 Nil!51087))) (extractMap!1381 (t!358205 (Cons!51087 lt!1758779 Nil!51087)))))))

(declare-fun b!4599249 () Bool)

(assert (=> b!4599249 (= e!2868792 (ListMap!3920 Nil!51086))))

(assert (= (and d!1448137 c!787780) b!4599248))

(assert (= (and d!1448137 (not c!787780)) b!4599249))

(declare-fun m!5426045 () Bool)

(assert (=> d!1448137 m!5426045))

(declare-fun m!5426047 () Bool)

(assert (=> d!1448137 m!5426047))

(declare-fun m!5426049 () Bool)

(assert (=> b!4599248 m!5426049))

(assert (=> b!4599248 m!5426049))

(declare-fun m!5426051 () Bool)

(assert (=> b!4599248 m!5426051))

(assert (=> b!4599135 d!1448137))

(declare-fun bs!1011512 () Bool)

(declare-fun d!1448139 () Bool)

(assert (= bs!1011512 (and d!1448139 start!458990)))

(declare-fun lambda!186352 () Int)

(assert (=> bs!1011512 (= lambda!186352 lambda!186337)))

(declare-fun bs!1011513 () Bool)

(assert (= bs!1011513 (and d!1448139 d!1448121)))

(assert (=> bs!1011513 (= lambda!186352 lambda!186347)))

(declare-fun bs!1011514 () Bool)

(assert (= bs!1011514 (and d!1448139 d!1448135)))

(assert (=> bs!1011514 (= lambda!186352 lambda!186350)))

(declare-fun bs!1011515 () Bool)

(assert (= bs!1011515 (and d!1448139 d!1448137)))

(assert (=> bs!1011515 (= lambda!186352 lambda!186351)))

(declare-fun lt!1758862 () ListMap!3919)

(assert (=> d!1448139 (invariantList!1125 (toList!4658 lt!1758862))))

(declare-fun e!2868793 () ListMap!3919)

(assert (=> d!1448139 (= lt!1758862 e!2868793)))

(declare-fun c!787781 () Bool)

(assert (=> d!1448139 (= c!787781 (is-Cons!51087 lt!1758782))))

(assert (=> d!1448139 (forall!10605 lt!1758782 lambda!186352)))

(assert (=> d!1448139 (= (extractMap!1381 lt!1758782) lt!1758862)))

(declare-fun b!4599250 () Bool)

(assert (=> b!4599250 (= e!2868793 (addToMapMapFromBucket!815 (_2!29162 (h!57053 lt!1758782)) (extractMap!1381 (t!358205 lt!1758782))))))

(declare-fun b!4599251 () Bool)

(assert (=> b!4599251 (= e!2868793 (ListMap!3920 Nil!51086))))

(assert (= (and d!1448139 c!787781) b!4599250))

(assert (= (and d!1448139 (not c!787781)) b!4599251))

(declare-fun m!5426053 () Bool)

(assert (=> d!1448139 m!5426053))

(declare-fun m!5426055 () Bool)

(assert (=> d!1448139 m!5426055))

(declare-fun m!5426057 () Bool)

(assert (=> b!4599250 m!5426057))

(assert (=> b!4599250 m!5426057))

(declare-fun m!5426059 () Bool)

(assert (=> b!4599250 m!5426059))

(assert (=> b!4599135 d!1448139))

(declare-fun d!1448141 () Bool)

(assert (=> d!1448141 (eq!728 (extractMap!1381 (Cons!51087 (tuple2!51737 hash!344 newBucket!178) Nil!51087)) (-!497 (extractMap!1381 (Cons!51087 (tuple2!51737 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477)))) Nil!51087)) key!3287))))

(declare-fun lt!1758881 () Unit!108297)

(declare-fun choose!30824 ((_ BitVec 64) List!51210 List!51210 K!12453 Hashable!5720) Unit!108297)

(assert (=> d!1448141 (= lt!1758881 (choose!30824 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1448141 (noDuplicateKeys!1321 (_2!29162 (h!57053 (toList!4657 lm!1477))))))

(assert (=> d!1448141 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!87 hash!344 (_2!29162 (h!57053 (toList!4657 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1758881)))

(declare-fun bs!1011516 () Bool)

(assert (= bs!1011516 d!1448141))

(declare-fun m!5426061 () Bool)

(assert (=> bs!1011516 m!5426061))

(assert (=> bs!1011516 m!5425885))

(declare-fun m!5426063 () Bool)

(assert (=> bs!1011516 m!5426063))

(assert (=> bs!1011516 m!5426061))

(assert (=> bs!1011516 m!5425873))

(assert (=> bs!1011516 m!5425883))

(declare-fun m!5426065 () Bool)

(assert (=> bs!1011516 m!5426065))

(assert (=> bs!1011516 m!5425883))

(assert (=> bs!1011516 m!5425885))

(assert (=> b!4599135 d!1448141))

(declare-fun b!4599303 () Bool)

(declare-fun e!2868833 () List!51214)

(assert (=> b!4599303 (= e!2868833 (keys!17889 (extractMap!1381 lt!1758782)))))

(declare-fun b!4599304 () Bool)

(declare-fun e!2868831 () Bool)

(declare-fun e!2868832 () Bool)

(assert (=> b!4599304 (= e!2868831 e!2868832)))

(declare-fun res!1923834 () Bool)

(assert (=> b!4599304 (=> (not res!1923834) (not e!2868832))))

(declare-datatypes ((Option!11393 0))(
  ( (None!11392) (Some!11392 (v!45378 V!12699)) )
))
(declare-fun isDefined!8660 (Option!11393) Bool)

(declare-fun getValueByKey!1313 (List!51210 K!12453) Option!11393)

(assert (=> b!4599304 (= res!1923834 (isDefined!8660 (getValueByKey!1313 (toList!4658 (extractMap!1381 lt!1758782)) key!3287)))))

(declare-fun b!4599305 () Bool)

(declare-fun contains!14044 (List!51214 K!12453) Bool)

(assert (=> b!4599305 (= e!2868832 (contains!14044 (keys!17889 (extractMap!1381 lt!1758782)) key!3287))))

(declare-fun b!4599306 () Bool)

(declare-fun getKeysList!574 (List!51210) List!51214)

(assert (=> b!4599306 (= e!2868833 (getKeysList!574 (toList!4658 (extractMap!1381 lt!1758782))))))

(declare-fun b!4599307 () Bool)

(declare-fun e!2868835 () Unit!108297)

(declare-fun lt!1758912 () Unit!108297)

(assert (=> b!4599307 (= e!2868835 lt!1758912)))

(declare-fun lt!1758911 () Unit!108297)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1216 (List!51210 K!12453) Unit!108297)

(assert (=> b!4599307 (= lt!1758911 (lemmaContainsKeyImpliesGetValueByKeyDefined!1216 (toList!4658 (extractMap!1381 lt!1758782)) key!3287))))

(assert (=> b!4599307 (isDefined!8660 (getValueByKey!1313 (toList!4658 (extractMap!1381 lt!1758782)) key!3287))))

(declare-fun lt!1758913 () Unit!108297)

(assert (=> b!4599307 (= lt!1758913 lt!1758911)))

(declare-fun lemmaInListThenGetKeysListContains!570 (List!51210 K!12453) Unit!108297)

(assert (=> b!4599307 (= lt!1758912 (lemmaInListThenGetKeysListContains!570 (toList!4658 (extractMap!1381 lt!1758782)) key!3287))))

(declare-fun call!320979 () Bool)

(assert (=> b!4599307 call!320979))

(declare-fun d!1448143 () Bool)

(assert (=> d!1448143 e!2868831))

(declare-fun res!1923835 () Bool)

(assert (=> d!1448143 (=> res!1923835 e!2868831)))

(declare-fun e!2868834 () Bool)

(assert (=> d!1448143 (= res!1923835 e!2868834)))

(declare-fun res!1923833 () Bool)

(assert (=> d!1448143 (=> (not res!1923833) (not e!2868834))))

(declare-fun lt!1758909 () Bool)

(assert (=> d!1448143 (= res!1923833 (not lt!1758909))))

(declare-fun lt!1758907 () Bool)

(assert (=> d!1448143 (= lt!1758909 lt!1758907)))

(declare-fun lt!1758908 () Unit!108297)

(assert (=> d!1448143 (= lt!1758908 e!2868835)))

(declare-fun c!787799 () Bool)

(assert (=> d!1448143 (= c!787799 lt!1758907)))

(declare-fun containsKey!2163 (List!51210 K!12453) Bool)

(assert (=> d!1448143 (= lt!1758907 (containsKey!2163 (toList!4658 (extractMap!1381 lt!1758782)) key!3287))))

(assert (=> d!1448143 (= (contains!14038 (extractMap!1381 lt!1758782) key!3287) lt!1758909)))

(declare-fun bm!320974 () Bool)

(assert (=> bm!320974 (= call!320979 (contains!14044 e!2868833 key!3287))))

(declare-fun c!787797 () Bool)

(assert (=> bm!320974 (= c!787797 c!787799)))

(declare-fun b!4599308 () Bool)

(assert (=> b!4599308 (= e!2868834 (not (contains!14044 (keys!17889 (extractMap!1381 lt!1758782)) key!3287)))))

(declare-fun b!4599309 () Bool)

(assert (=> b!4599309 false))

(declare-fun lt!1758906 () Unit!108297)

(declare-fun lt!1758910 () Unit!108297)

(assert (=> b!4599309 (= lt!1758906 lt!1758910)))

(assert (=> b!4599309 (containsKey!2163 (toList!4658 (extractMap!1381 lt!1758782)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!573 (List!51210 K!12453) Unit!108297)

(assert (=> b!4599309 (= lt!1758910 (lemmaInGetKeysListThenContainsKey!573 (toList!4658 (extractMap!1381 lt!1758782)) key!3287))))

(declare-fun e!2868830 () Unit!108297)

(declare-fun Unit!108309 () Unit!108297)

(assert (=> b!4599309 (= e!2868830 Unit!108309)))

(declare-fun b!4599310 () Bool)

(assert (=> b!4599310 (= e!2868835 e!2868830)))

(declare-fun c!787798 () Bool)

(assert (=> b!4599310 (= c!787798 call!320979)))

(declare-fun b!4599311 () Bool)

(declare-fun Unit!108310 () Unit!108297)

(assert (=> b!4599311 (= e!2868830 Unit!108310)))

(assert (= (and d!1448143 c!787799) b!4599307))

(assert (= (and d!1448143 (not c!787799)) b!4599310))

(assert (= (and b!4599310 c!787798) b!4599309))

(assert (= (and b!4599310 (not c!787798)) b!4599311))

(assert (= (or b!4599307 b!4599310) bm!320974))

(assert (= (and bm!320974 c!787797) b!4599306))

(assert (= (and bm!320974 (not c!787797)) b!4599303))

(assert (= (and d!1448143 res!1923833) b!4599308))

(assert (= (and d!1448143 (not res!1923835)) b!4599304))

(assert (= (and b!4599304 res!1923834) b!4599305))

(assert (=> b!4599305 m!5425893))

(declare-fun m!5426087 () Bool)

(assert (=> b!4599305 m!5426087))

(assert (=> b!4599305 m!5426087))

(declare-fun m!5426089 () Bool)

(assert (=> b!4599305 m!5426089))

(declare-fun m!5426091 () Bool)

(assert (=> b!4599306 m!5426091))

(declare-fun m!5426093 () Bool)

(assert (=> b!4599304 m!5426093))

(assert (=> b!4599304 m!5426093))

(declare-fun m!5426095 () Bool)

(assert (=> b!4599304 m!5426095))

(declare-fun m!5426097 () Bool)

(assert (=> bm!320974 m!5426097))

(declare-fun m!5426099 () Bool)

(assert (=> b!4599307 m!5426099))

(assert (=> b!4599307 m!5426093))

(assert (=> b!4599307 m!5426093))

(assert (=> b!4599307 m!5426095))

(declare-fun m!5426101 () Bool)

(assert (=> b!4599307 m!5426101))

(assert (=> b!4599303 m!5425893))

(assert (=> b!4599303 m!5426087))

(declare-fun m!5426103 () Bool)

(assert (=> b!4599309 m!5426103))

(declare-fun m!5426105 () Bool)

(assert (=> b!4599309 m!5426105))

(assert (=> d!1448143 m!5426103))

(assert (=> b!4599308 m!5425893))

(assert (=> b!4599308 m!5426087))

(assert (=> b!4599308 m!5426087))

(assert (=> b!4599308 m!5426089))

(assert (=> b!4599135 d!1448143))

(declare-fun bs!1011517 () Bool)

(declare-fun d!1448147 () Bool)

(assert (= bs!1011517 (and d!1448147 d!1448121)))

(declare-fun lambda!186355 () Int)

(assert (=> bs!1011517 (not (= lambda!186355 lambda!186347))))

(declare-fun bs!1011518 () Bool)

(assert (= bs!1011518 (and d!1448147 d!1448139)))

(assert (=> bs!1011518 (not (= lambda!186355 lambda!186352))))

(declare-fun bs!1011519 () Bool)

(assert (= bs!1011519 (and d!1448147 start!458990)))

(assert (=> bs!1011519 (not (= lambda!186355 lambda!186337))))

(declare-fun bs!1011520 () Bool)

(assert (= bs!1011520 (and d!1448147 d!1448137)))

(assert (=> bs!1011520 (not (= lambda!186355 lambda!186351))))

(declare-fun bs!1011521 () Bool)

(assert (= bs!1011521 (and d!1448147 d!1448135)))

(assert (=> bs!1011521 (not (= lambda!186355 lambda!186350))))

(assert (=> d!1448147 true))

(assert (=> d!1448147 (= (allKeysSameHashInMap!1432 lm!1477 hashF!1107) (forall!10605 (toList!4657 lm!1477) lambda!186355))))

(declare-fun bs!1011522 () Bool)

(assert (= bs!1011522 d!1448147))

(declare-fun m!5426111 () Bool)

(assert (=> bs!1011522 m!5426111))

(assert (=> b!4599137 d!1448147))

(declare-fun bs!1011523 () Bool)

(declare-fun d!1448151 () Bool)

(assert (= bs!1011523 (and d!1448151 d!1448147)))

(declare-fun lambda!186358 () Int)

(assert (=> bs!1011523 (not (= lambda!186358 lambda!186355))))

(declare-fun bs!1011524 () Bool)

(assert (= bs!1011524 (and d!1448151 d!1448121)))

(assert (=> bs!1011524 (= lambda!186358 lambda!186347)))

(declare-fun bs!1011525 () Bool)

(assert (= bs!1011525 (and d!1448151 d!1448139)))

(assert (=> bs!1011525 (= lambda!186358 lambda!186352)))

(declare-fun bs!1011526 () Bool)

(assert (= bs!1011526 (and d!1448151 start!458990)))

(assert (=> bs!1011526 (= lambda!186358 lambda!186337)))

(declare-fun bs!1011527 () Bool)

(assert (= bs!1011527 (and d!1448151 d!1448137)))

(assert (=> bs!1011527 (= lambda!186358 lambda!186351)))

(declare-fun bs!1011528 () Bool)

(assert (= bs!1011528 (and d!1448151 d!1448135)))

(assert (=> bs!1011528 (= lambda!186358 lambda!186350)))

(assert (=> d!1448151 (contains!14040 lt!1758766 (hash!3222 hashF!1107 key!3287))))

(declare-fun lt!1758916 () Unit!108297)

(declare-fun choose!30825 (ListLongMap!3289 K!12453 Hashable!5720) Unit!108297)

(assert (=> d!1448151 (= lt!1758916 (choose!30825 lt!1758766 key!3287 hashF!1107))))

(assert (=> d!1448151 (forall!10605 (toList!4657 lt!1758766) lambda!186358)))

(assert (=> d!1448151 (= (lemmaInGenMapThenLongMapContainsHash!395 lt!1758766 key!3287 hashF!1107) lt!1758916)))

(declare-fun bs!1011529 () Bool)

(assert (= bs!1011529 d!1448151))

(assert (=> bs!1011529 m!5425865))

(assert (=> bs!1011529 m!5425865))

(declare-fun m!5426113 () Bool)

(assert (=> bs!1011529 m!5426113))

(declare-fun m!5426115 () Bool)

(assert (=> bs!1011529 m!5426115))

(declare-fun m!5426117 () Bool)

(assert (=> bs!1011529 m!5426117))

(assert (=> b!4599147 d!1448151))

(declare-fun d!1448153 () Bool)

(declare-fun e!2868843 () Bool)

(assert (=> d!1448153 e!2868843))

(declare-fun res!1923841 () Bool)

(assert (=> d!1448153 (=> res!1923841 e!2868843)))

(declare-fun lt!1758930 () Bool)

(assert (=> d!1448153 (= res!1923841 (not lt!1758930))))

(declare-fun lt!1758931 () Bool)

(assert (=> d!1448153 (= lt!1758930 lt!1758931)))

(declare-fun lt!1758929 () Unit!108297)

(declare-fun e!2868844 () Unit!108297)

(assert (=> d!1448153 (= lt!1758929 e!2868844)))

(declare-fun c!787802 () Bool)

(assert (=> d!1448153 (= c!787802 lt!1758931)))

(declare-fun containsKey!2164 (List!51211 (_ BitVec 64)) Bool)

(assert (=> d!1448153 (= lt!1758931 (containsKey!2164 (toList!4657 lt!1758766) lt!1758777))))

(assert (=> d!1448153 (= (contains!14040 lt!1758766 lt!1758777) lt!1758930)))

(declare-fun b!4599323 () Bool)

(declare-fun lt!1758928 () Unit!108297)

(assert (=> b!4599323 (= e!2868844 lt!1758928)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1217 (List!51211 (_ BitVec 64)) Unit!108297)

(assert (=> b!4599323 (= lt!1758928 (lemmaContainsKeyImpliesGetValueByKeyDefined!1217 (toList!4657 lt!1758766) lt!1758777))))

(declare-fun isDefined!8661 (Option!11392) Bool)

(assert (=> b!4599323 (isDefined!8661 (getValueByKey!1312 (toList!4657 lt!1758766) lt!1758777))))

(declare-fun b!4599324 () Bool)

(declare-fun Unit!108311 () Unit!108297)

(assert (=> b!4599324 (= e!2868844 Unit!108311)))

(declare-fun b!4599325 () Bool)

(assert (=> b!4599325 (= e!2868843 (isDefined!8661 (getValueByKey!1312 (toList!4657 lt!1758766) lt!1758777)))))

(assert (= (and d!1448153 c!787802) b!4599323))

(assert (= (and d!1448153 (not c!787802)) b!4599324))

(assert (= (and d!1448153 (not res!1923841)) b!4599325))

(declare-fun m!5426125 () Bool)

(assert (=> d!1448153 m!5426125))

(declare-fun m!5426127 () Bool)

(assert (=> b!4599323 m!5426127))

(declare-fun m!5426129 () Bool)

(assert (=> b!4599323 m!5426129))

(assert (=> b!4599323 m!5426129))

(declare-fun m!5426131 () Bool)

(assert (=> b!4599323 m!5426131))

(assert (=> b!4599325 m!5426129))

(assert (=> b!4599325 m!5426129))

(assert (=> b!4599325 m!5426131))

(assert (=> b!4599147 d!1448153))

(declare-fun bs!1011532 () Bool)

(declare-fun d!1448157 () Bool)

(assert (= bs!1011532 (and d!1448157 d!1448147)))

(declare-fun lambda!186362 () Int)

(assert (=> bs!1011532 (not (= lambda!186362 lambda!186355))))

(declare-fun bs!1011533 () Bool)

(assert (= bs!1011533 (and d!1448157 d!1448121)))

(assert (=> bs!1011533 (= lambda!186362 lambda!186347)))

(declare-fun bs!1011534 () Bool)

(assert (= bs!1011534 (and d!1448157 d!1448139)))

(assert (=> bs!1011534 (= lambda!186362 lambda!186352)))

(declare-fun bs!1011535 () Bool)

(assert (= bs!1011535 (and d!1448157 start!458990)))

(assert (=> bs!1011535 (= lambda!186362 lambda!186337)))

(declare-fun bs!1011536 () Bool)

(assert (= bs!1011536 (and d!1448157 d!1448137)))

(assert (=> bs!1011536 (= lambda!186362 lambda!186351)))

(declare-fun bs!1011537 () Bool)

(assert (= bs!1011537 (and d!1448157 d!1448135)))

(assert (=> bs!1011537 (= lambda!186362 lambda!186350)))

(declare-fun bs!1011538 () Bool)

(assert (= bs!1011538 (and d!1448157 d!1448151)))

(assert (=> bs!1011538 (= lambda!186362 lambda!186358)))

(assert (=> d!1448157 (contains!14040 lm!1477 (hash!3222 hashF!1107 key!3287))))

(declare-fun lt!1758932 () Unit!108297)

(assert (=> d!1448157 (= lt!1758932 (choose!30825 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1448157 (forall!10605 (toList!4657 lm!1477) lambda!186362)))

(assert (=> d!1448157 (= (lemmaInGenMapThenLongMapContainsHash!395 lm!1477 key!3287 hashF!1107) lt!1758932)))

(declare-fun bs!1011539 () Bool)

(assert (= bs!1011539 d!1448157))

(assert (=> bs!1011539 m!5425865))

(assert (=> bs!1011539 m!5425865))

(declare-fun m!5426133 () Bool)

(assert (=> bs!1011539 m!5426133))

(declare-fun m!5426135 () Bool)

(assert (=> bs!1011539 m!5426135))

(declare-fun m!5426137 () Bool)

(assert (=> bs!1011539 m!5426137))

(assert (=> b!4599144 d!1448157))

(declare-fun d!1448159 () Bool)

(declare-fun lt!1758935 () Bool)

(declare-fun content!8651 (List!51211) (Set tuple2!51736))

(assert (=> d!1448159 (= lt!1758935 (set.member lt!1758770 (content!8651 (toList!4657 lm!1477))))))

(declare-fun e!2868850 () Bool)

(assert (=> d!1448159 (= lt!1758935 e!2868850)))

(declare-fun res!1923847 () Bool)

(assert (=> d!1448159 (=> (not res!1923847) (not e!2868850))))

(assert (=> d!1448159 (= res!1923847 (is-Cons!51087 (toList!4657 lm!1477)))))

(assert (=> d!1448159 (= (contains!14039 (toList!4657 lm!1477) lt!1758770) lt!1758935)))

(declare-fun b!4599330 () Bool)

(declare-fun e!2868849 () Bool)

(assert (=> b!4599330 (= e!2868850 e!2868849)))

(declare-fun res!1923846 () Bool)

(assert (=> b!4599330 (=> res!1923846 e!2868849)))

(assert (=> b!4599330 (= res!1923846 (= (h!57053 (toList!4657 lm!1477)) lt!1758770))))

(declare-fun b!4599331 () Bool)

(assert (=> b!4599331 (= e!2868849 (contains!14039 (t!358205 (toList!4657 lm!1477)) lt!1758770))))

(assert (= (and d!1448159 res!1923847) b!4599330))

(assert (= (and b!4599330 (not res!1923846)) b!4599331))

(declare-fun m!5426139 () Bool)

(assert (=> d!1448159 m!5426139))

(declare-fun m!5426141 () Bool)

(assert (=> d!1448159 m!5426141))

(declare-fun m!5426143 () Bool)

(assert (=> b!4599331 m!5426143))

(assert (=> b!4599144 d!1448159))

(declare-fun d!1448161 () Bool)

(declare-fun e!2868851 () Bool)

(assert (=> d!1448161 e!2868851))

(declare-fun res!1923848 () Bool)

(assert (=> d!1448161 (=> res!1923848 e!2868851)))

(declare-fun lt!1758938 () Bool)

(assert (=> d!1448161 (= res!1923848 (not lt!1758938))))

(declare-fun lt!1758939 () Bool)

(assert (=> d!1448161 (= lt!1758938 lt!1758939)))

(declare-fun lt!1758937 () Unit!108297)

(declare-fun e!2868852 () Unit!108297)

(assert (=> d!1448161 (= lt!1758937 e!2868852)))

(declare-fun c!787803 () Bool)

(assert (=> d!1448161 (= c!787803 lt!1758939)))

(assert (=> d!1448161 (= lt!1758939 (containsKey!2164 (toList!4657 lm!1477) lt!1758777))))

(assert (=> d!1448161 (= (contains!14040 lm!1477 lt!1758777) lt!1758938)))

(declare-fun b!4599332 () Bool)

(declare-fun lt!1758936 () Unit!108297)

(assert (=> b!4599332 (= e!2868852 lt!1758936)))

(assert (=> b!4599332 (= lt!1758936 (lemmaContainsKeyImpliesGetValueByKeyDefined!1217 (toList!4657 lm!1477) lt!1758777))))

(assert (=> b!4599332 (isDefined!8661 (getValueByKey!1312 (toList!4657 lm!1477) lt!1758777))))

(declare-fun b!4599333 () Bool)

(declare-fun Unit!108312 () Unit!108297)

(assert (=> b!4599333 (= e!2868852 Unit!108312)))

(declare-fun b!4599334 () Bool)

(assert (=> b!4599334 (= e!2868851 (isDefined!8661 (getValueByKey!1312 (toList!4657 lm!1477) lt!1758777)))))

(assert (= (and d!1448161 c!787803) b!4599332))

(assert (= (and d!1448161 (not c!787803)) b!4599333))

(assert (= (and d!1448161 (not res!1923848)) b!4599334))

(declare-fun m!5426145 () Bool)

(assert (=> d!1448161 m!5426145))

(declare-fun m!5426147 () Bool)

(assert (=> b!4599332 m!5426147))

(declare-fun m!5426149 () Bool)

(assert (=> b!4599332 m!5426149))

(assert (=> b!4599332 m!5426149))

(declare-fun m!5426151 () Bool)

(assert (=> b!4599332 m!5426151))

(assert (=> b!4599334 m!5426149))

(assert (=> b!4599334 m!5426149))

(assert (=> b!4599334 m!5426151))

(assert (=> b!4599144 d!1448161))

(declare-fun b!4599345 () Bool)

(declare-fun e!2868858 () List!51210)

(assert (=> b!4599345 (= e!2868858 (Cons!51086 (h!57052 lt!1758773) (removePairForKey!946 (t!358204 lt!1758773) key!3287)))))

(declare-fun b!4599344 () Bool)

(declare-fun e!2868857 () List!51210)

(assert (=> b!4599344 (= e!2868857 e!2868858)))

(declare-fun c!787808 () Bool)

(assert (=> b!4599344 (= c!787808 (is-Cons!51086 lt!1758773))))

(declare-fun b!4599343 () Bool)

(assert (=> b!4599343 (= e!2868857 (t!358204 lt!1758773))))

(declare-fun d!1448163 () Bool)

(declare-fun lt!1758942 () List!51210)

(assert (=> d!1448163 (not (containsKey!2161 lt!1758942 key!3287))))

(assert (=> d!1448163 (= lt!1758942 e!2868857)))

(declare-fun c!787809 () Bool)

(assert (=> d!1448163 (= c!787809 (and (is-Cons!51086 lt!1758773) (= (_1!29161 (h!57052 lt!1758773)) key!3287)))))

(assert (=> d!1448163 (noDuplicateKeys!1321 lt!1758773)))

(assert (=> d!1448163 (= (removePairForKey!946 lt!1758773 key!3287) lt!1758942)))

(declare-fun b!4599346 () Bool)

(assert (=> b!4599346 (= e!2868858 Nil!51086)))

(assert (= (and d!1448163 c!787809) b!4599343))

(assert (= (and d!1448163 (not c!787809)) b!4599344))

(assert (= (and b!4599344 c!787808) b!4599345))

(assert (= (and b!4599344 (not c!787808)) b!4599346))

(declare-fun m!5426153 () Bool)

(assert (=> b!4599345 m!5426153))

(declare-fun m!5426155 () Bool)

(assert (=> d!1448163 m!5426155))

(declare-fun m!5426157 () Bool)

(assert (=> d!1448163 m!5426157))

(assert (=> b!4599144 d!1448163))

(declare-fun d!1448165 () Bool)

(declare-fun get!16886 (Option!11392) List!51210)

(assert (=> d!1448165 (= (apply!12058 lm!1477 hash!344) (get!16886 (getValueByKey!1312 (toList!4657 lm!1477) hash!344)))))

(declare-fun bs!1011540 () Bool)

(assert (= bs!1011540 d!1448165))

(declare-fun m!5426159 () Bool)

(assert (=> bs!1011540 m!5426159))

(assert (=> bs!1011540 m!5426159))

(declare-fun m!5426161 () Bool)

(assert (=> bs!1011540 m!5426161))

(assert (=> b!4599144 d!1448165))

(declare-fun d!1448167 () Bool)

(assert (=> d!1448167 (contains!14039 (toList!4657 lm!1477) (tuple2!51737 hash!344 lt!1758773))))

(declare-fun lt!1758953 () Unit!108297)

(declare-fun choose!30826 (List!51211 (_ BitVec 64) List!51210) Unit!108297)

(assert (=> d!1448167 (= lt!1758953 (choose!30826 (toList!4657 lm!1477) hash!344 lt!1758773))))

(declare-fun e!2868865 () Bool)

(assert (=> d!1448167 e!2868865))

(declare-fun res!1923853 () Bool)

(assert (=> d!1448167 (=> (not res!1923853) (not e!2868865))))

(declare-fun isStrictlySorted!541 (List!51211) Bool)

(assert (=> d!1448167 (= res!1923853 (isStrictlySorted!541 (toList!4657 lm!1477)))))

(assert (=> d!1448167 (= (lemmaGetValueByKeyImpliesContainsTuple!831 (toList!4657 lm!1477) hash!344 lt!1758773) lt!1758953)))

(declare-fun b!4599355 () Bool)

(assert (=> b!4599355 (= e!2868865 (= (getValueByKey!1312 (toList!4657 lm!1477) hash!344) (Some!11391 lt!1758773)))))

(assert (= (and d!1448167 res!1923853) b!4599355))

(declare-fun m!5426163 () Bool)

(assert (=> d!1448167 m!5426163))

(declare-fun m!5426165 () Bool)

(assert (=> d!1448167 m!5426165))

(declare-fun m!5426167 () Bool)

(assert (=> d!1448167 m!5426167))

(assert (=> b!4599355 m!5426159))

(assert (=> b!4599144 d!1448167))

(declare-fun d!1448169 () Bool)

(assert (=> d!1448169 (dynLambda!21399 lambda!186337 lt!1758770)))

(declare-fun lt!1758960 () Unit!108297)

(declare-fun choose!30827 (List!51211 Int tuple2!51736) Unit!108297)

(assert (=> d!1448169 (= lt!1758960 (choose!30827 (toList!4657 lm!1477) lambda!186337 lt!1758770))))

(declare-fun e!2868870 () Bool)

(assert (=> d!1448169 e!2868870))

(declare-fun res!1923857 () Bool)

(assert (=> d!1448169 (=> (not res!1923857) (not e!2868870))))

(assert (=> d!1448169 (= res!1923857 (forall!10605 (toList!4657 lm!1477) lambda!186337))))

(assert (=> d!1448169 (= (forallContained!2858 (toList!4657 lm!1477) lambda!186337 lt!1758770) lt!1758960)))

(declare-fun b!4599361 () Bool)

(assert (=> b!4599361 (= e!2868870 (contains!14039 (toList!4657 lm!1477) lt!1758770))))

(assert (= (and d!1448169 res!1923857) b!4599361))

(declare-fun b_lambda!169439 () Bool)

(assert (=> (not b_lambda!169439) (not d!1448169)))

(declare-fun m!5426173 () Bool)

(assert (=> d!1448169 m!5426173))

(declare-fun m!5426177 () Bool)

(assert (=> d!1448169 m!5426177))

(assert (=> d!1448169 m!5425849))

(assert (=> b!4599361 m!5425907))

(assert (=> b!4599144 d!1448169))

(declare-fun d!1448171 () Bool)

(declare-fun e!2868871 () Bool)

(assert (=> d!1448171 e!2868871))

(declare-fun res!1923859 () Bool)

(assert (=> d!1448171 (=> (not res!1923859) (not e!2868871))))

(declare-fun lt!1758963 () ListLongMap!3289)

(assert (=> d!1448171 (= res!1923859 (contains!14040 lt!1758963 (_1!29162 lt!1758779)))))

(declare-fun lt!1758961 () List!51211)

(assert (=> d!1448171 (= lt!1758963 (ListLongMap!3290 lt!1758961))))

(declare-fun lt!1758962 () Unit!108297)

(declare-fun lt!1758964 () Unit!108297)

(assert (=> d!1448171 (= lt!1758962 lt!1758964)))

(assert (=> d!1448171 (= (getValueByKey!1312 lt!1758961 (_1!29162 lt!1758779)) (Some!11391 (_2!29162 lt!1758779)))))

(assert (=> d!1448171 (= lt!1758964 (lemmaContainsTupThenGetReturnValue!797 lt!1758961 (_1!29162 lt!1758779) (_2!29162 lt!1758779)))))

(assert (=> d!1448171 (= lt!1758961 (insertStrictlySorted!489 (toList!4657 lt!1758766) (_1!29162 lt!1758779) (_2!29162 lt!1758779)))))

(assert (=> d!1448171 (= (+!1749 lt!1758766 lt!1758779) lt!1758963)))

(declare-fun b!4599362 () Bool)

(declare-fun res!1923858 () Bool)

(assert (=> b!4599362 (=> (not res!1923858) (not e!2868871))))

(assert (=> b!4599362 (= res!1923858 (= (getValueByKey!1312 (toList!4657 lt!1758963) (_1!29162 lt!1758779)) (Some!11391 (_2!29162 lt!1758779))))))

(declare-fun b!4599363 () Bool)

(assert (=> b!4599363 (= e!2868871 (contains!14039 (toList!4657 lt!1758963) lt!1758779))))

(assert (= (and d!1448171 res!1923859) b!4599362))

(assert (= (and b!4599362 res!1923858) b!4599363))

(declare-fun m!5426181 () Bool)

(assert (=> d!1448171 m!5426181))

(declare-fun m!5426183 () Bool)

(assert (=> d!1448171 m!5426183))

(declare-fun m!5426185 () Bool)

(assert (=> d!1448171 m!5426185))

(declare-fun m!5426187 () Bool)

(assert (=> d!1448171 m!5426187))

(declare-fun m!5426189 () Bool)

(assert (=> b!4599362 m!5426189))

(declare-fun m!5426191 () Bool)

(assert (=> b!4599363 m!5426191))

(assert (=> b!4599133 d!1448171))

(declare-fun d!1448175 () Bool)

(assert (=> d!1448175 (= (tail!7950 lm!1477) (ListLongMap!3290 (tail!7951 (toList!4657 lm!1477))))))

(declare-fun bs!1011541 () Bool)

(assert (= bs!1011541 d!1448175))

(declare-fun m!5426193 () Bool)

(assert (=> bs!1011541 m!5426193))

(assert (=> b!4599133 d!1448175))

(declare-fun d!1448177 () Bool)

(assert (=> d!1448177 true))

(assert (=> d!1448177 true))

(declare-fun lambda!186365 () Int)

(declare-fun forall!10607 (List!51210 Int) Bool)

(assert (=> d!1448177 (= (allKeysSameHash!1177 newBucket!178 hash!344 hashF!1107) (forall!10607 newBucket!178 lambda!186365))))

(declare-fun bs!1011543 () Bool)

(assert (= bs!1011543 d!1448177))

(declare-fun m!5426199 () Bool)

(assert (=> bs!1011543 m!5426199))

(assert (=> b!4599143 d!1448177))

(declare-fun bs!1011544 () Bool)

(declare-fun d!1448181 () Bool)

(assert (= bs!1011544 (and d!1448181 d!1448147)))

(declare-fun lambda!186366 () Int)

(assert (=> bs!1011544 (not (= lambda!186366 lambda!186355))))

(declare-fun bs!1011545 () Bool)

(assert (= bs!1011545 (and d!1448181 d!1448121)))

(assert (=> bs!1011545 (= lambda!186366 lambda!186347)))

(declare-fun bs!1011546 () Bool)

(assert (= bs!1011546 (and d!1448181 d!1448139)))

(assert (=> bs!1011546 (= lambda!186366 lambda!186352)))

(declare-fun bs!1011547 () Bool)

(assert (= bs!1011547 (and d!1448181 start!458990)))

(assert (=> bs!1011547 (= lambda!186366 lambda!186337)))

(declare-fun bs!1011548 () Bool)

(assert (= bs!1011548 (and d!1448181 d!1448137)))

(assert (=> bs!1011548 (= lambda!186366 lambda!186351)))

(declare-fun bs!1011549 () Bool)

(assert (= bs!1011549 (and d!1448181 d!1448157)))

(assert (=> bs!1011549 (= lambda!186366 lambda!186362)))

(declare-fun bs!1011550 () Bool)

(assert (= bs!1011550 (and d!1448181 d!1448135)))

(assert (=> bs!1011550 (= lambda!186366 lambda!186350)))

(declare-fun bs!1011551 () Bool)

(assert (= bs!1011551 (and d!1448181 d!1448151)))

(assert (=> bs!1011551 (= lambda!186366 lambda!186358)))

(declare-fun lt!1758965 () ListMap!3919)

(assert (=> d!1448181 (invariantList!1125 (toList!4658 lt!1758965))))

(declare-fun e!2868872 () ListMap!3919)

(assert (=> d!1448181 (= lt!1758965 e!2868872)))

(declare-fun c!787813 () Bool)

(assert (=> d!1448181 (= c!787813 (is-Cons!51087 (t!358205 (toList!4657 lm!1477))))))

(assert (=> d!1448181 (forall!10605 (t!358205 (toList!4657 lm!1477)) lambda!186366)))

(assert (=> d!1448181 (= (extractMap!1381 (t!358205 (toList!4657 lm!1477))) lt!1758965)))

(declare-fun b!4599368 () Bool)

(assert (=> b!4599368 (= e!2868872 (addToMapMapFromBucket!815 (_2!29162 (h!57053 (t!358205 (toList!4657 lm!1477)))) (extractMap!1381 (t!358205 (t!358205 (toList!4657 lm!1477))))))))

(declare-fun b!4599369 () Bool)

(assert (=> b!4599369 (= e!2868872 (ListMap!3920 Nil!51086))))

(assert (= (and d!1448181 c!787813) b!4599368))

(assert (= (and d!1448181 (not c!787813)) b!4599369))

(declare-fun m!5426201 () Bool)

(assert (=> d!1448181 m!5426201))

(declare-fun m!5426203 () Bool)

(assert (=> d!1448181 m!5426203))

(declare-fun m!5426205 () Bool)

(assert (=> b!4599368 m!5426205))

(assert (=> b!4599368 m!5426205))

(declare-fun m!5426207 () Bool)

(assert (=> b!4599368 m!5426207))

(assert (=> b!4599145 d!1448181))

(declare-fun bs!1011552 () Bool)

(declare-fun d!1448183 () Bool)

(assert (= bs!1011552 (and d!1448183 d!1448147)))

(declare-fun lambda!186367 () Int)

(assert (=> bs!1011552 (not (= lambda!186367 lambda!186355))))

(declare-fun bs!1011553 () Bool)

(assert (= bs!1011553 (and d!1448183 d!1448121)))

(assert (=> bs!1011553 (= lambda!186367 lambda!186347)))

(declare-fun bs!1011554 () Bool)

(assert (= bs!1011554 (and d!1448183 d!1448181)))

(assert (=> bs!1011554 (= lambda!186367 lambda!186366)))

(declare-fun bs!1011555 () Bool)

(assert (= bs!1011555 (and d!1448183 d!1448139)))

(assert (=> bs!1011555 (= lambda!186367 lambda!186352)))

(declare-fun bs!1011556 () Bool)

(assert (= bs!1011556 (and d!1448183 start!458990)))

(assert (=> bs!1011556 (= lambda!186367 lambda!186337)))

(declare-fun bs!1011557 () Bool)

(assert (= bs!1011557 (and d!1448183 d!1448137)))

(assert (=> bs!1011557 (= lambda!186367 lambda!186351)))

(declare-fun bs!1011558 () Bool)

(assert (= bs!1011558 (and d!1448183 d!1448157)))

(assert (=> bs!1011558 (= lambda!186367 lambda!186362)))

(declare-fun bs!1011559 () Bool)

(assert (= bs!1011559 (and d!1448183 d!1448135)))

(assert (=> bs!1011559 (= lambda!186367 lambda!186350)))

(declare-fun bs!1011560 () Bool)

(assert (= bs!1011560 (and d!1448183 d!1448151)))

(assert (=> bs!1011560 (= lambda!186367 lambda!186358)))

(declare-fun lt!1758966 () ListMap!3919)

(assert (=> d!1448183 (invariantList!1125 (toList!4658 lt!1758966))))

(declare-fun e!2868873 () ListMap!3919)

(assert (=> d!1448183 (= lt!1758966 e!2868873)))

(declare-fun c!787814 () Bool)

(assert (=> d!1448183 (= c!787814 (is-Cons!51087 (toList!4657 lt!1758766)))))

(assert (=> d!1448183 (forall!10605 (toList!4657 lt!1758766) lambda!186367)))

(assert (=> d!1448183 (= (extractMap!1381 (toList!4657 lt!1758766)) lt!1758966)))

(declare-fun b!4599370 () Bool)

(assert (=> b!4599370 (= e!2868873 (addToMapMapFromBucket!815 (_2!29162 (h!57053 (toList!4657 lt!1758766))) (extractMap!1381 (t!358205 (toList!4657 lt!1758766)))))))

(declare-fun b!4599371 () Bool)

(assert (=> b!4599371 (= e!2868873 (ListMap!3920 Nil!51086))))

(assert (= (and d!1448183 c!787814) b!4599370))

(assert (= (and d!1448183 (not c!787814)) b!4599371))

(declare-fun m!5426209 () Bool)

(assert (=> d!1448183 m!5426209))

(declare-fun m!5426211 () Bool)

(assert (=> d!1448183 m!5426211))

(declare-fun m!5426213 () Bool)

(assert (=> b!4599370 m!5426213))

(assert (=> b!4599370 m!5426213))

(declare-fun m!5426215 () Bool)

(assert (=> b!4599370 m!5426215))

(assert (=> b!4599145 d!1448183))

(assert (=> start!458990 d!1448119))

(declare-fun d!1448185 () Bool)

(assert (=> d!1448185 (= (inv!66638 lm!1477) (isStrictlySorted!541 (toList!4657 lm!1477)))))

(declare-fun bs!1011561 () Bool)

(assert (= bs!1011561 d!1448185))

(assert (=> bs!1011561 m!5426167))

(assert (=> start!458990 d!1448185))

(declare-fun d!1448187 () Bool)

(declare-fun res!1923866 () Bool)

(declare-fun e!2868880 () Bool)

(assert (=> d!1448187 (=> res!1923866 e!2868880)))

(assert (=> d!1448187 (= res!1923866 (not (is-Cons!51086 (_2!29162 (h!57053 (toList!4657 lm!1477))))))))

(assert (=> d!1448187 (= (noDuplicateKeys!1321 (_2!29162 (h!57053 (toList!4657 lm!1477)))) e!2868880)))

(declare-fun b!4599378 () Bool)

(declare-fun e!2868881 () Bool)

(assert (=> b!4599378 (= e!2868880 e!2868881)))

(declare-fun res!1923867 () Bool)

(assert (=> b!4599378 (=> (not res!1923867) (not e!2868881))))

(assert (=> b!4599378 (= res!1923867 (not (containsKey!2161 (t!358204 (_2!29162 (h!57053 (toList!4657 lm!1477)))) (_1!29161 (h!57052 (_2!29162 (h!57053 (toList!4657 lm!1477))))))))))

(declare-fun b!4599379 () Bool)

(assert (=> b!4599379 (= e!2868881 (noDuplicateKeys!1321 (t!358204 (_2!29162 (h!57053 (toList!4657 lm!1477))))))))

(assert (= (and d!1448187 (not res!1923866)) b!4599378))

(assert (= (and b!4599378 res!1923867) b!4599379))

(declare-fun m!5426217 () Bool)

(assert (=> b!4599378 m!5426217))

(declare-fun m!5426219 () Bool)

(assert (=> b!4599379 m!5426219))

(assert (=> b!4599134 d!1448187))

(declare-fun d!1448189 () Bool)

(declare-fun hash!3226 (Hashable!5720 K!12453) (_ BitVec 64))

(assert (=> d!1448189 (= (hash!3222 hashF!1107 key!3287) (hash!3226 hashF!1107 key!3287))))

(declare-fun bs!1011562 () Bool)

(assert (= bs!1011562 d!1448189))

(declare-fun m!5426221 () Bool)

(assert (=> bs!1011562 m!5426221))

(assert (=> b!4599152 d!1448189))

(declare-fun b!4599381 () Bool)

(declare-fun e!2868886 () List!51214)

(assert (=> b!4599381 (= e!2868886 (keys!17889 (extractMap!1381 (toList!4657 lm!1477))))))

(declare-fun b!4599382 () Bool)

(declare-fun e!2868884 () Bool)

(declare-fun e!2868885 () Bool)

(assert (=> b!4599382 (= e!2868884 e!2868885)))

(declare-fun res!1923870 () Bool)

(assert (=> b!4599382 (=> (not res!1923870) (not e!2868885))))

(assert (=> b!4599382 (= res!1923870 (isDefined!8660 (getValueByKey!1313 (toList!4658 (extractMap!1381 (toList!4657 lm!1477))) key!3287)))))

(declare-fun b!4599383 () Bool)

(assert (=> b!4599383 (= e!2868885 (contains!14044 (keys!17889 (extractMap!1381 (toList!4657 lm!1477))) key!3287))))

(declare-fun b!4599384 () Bool)

(assert (=> b!4599384 (= e!2868886 (getKeysList!574 (toList!4658 (extractMap!1381 (toList!4657 lm!1477)))))))

(declare-fun b!4599385 () Bool)

(declare-fun e!2868888 () Unit!108297)

(declare-fun lt!1758976 () Unit!108297)

(assert (=> b!4599385 (= e!2868888 lt!1758976)))

(declare-fun lt!1758975 () Unit!108297)

(assert (=> b!4599385 (= lt!1758975 (lemmaContainsKeyImpliesGetValueByKeyDefined!1216 (toList!4658 (extractMap!1381 (toList!4657 lm!1477))) key!3287))))

(assert (=> b!4599385 (isDefined!8660 (getValueByKey!1313 (toList!4658 (extractMap!1381 (toList!4657 lm!1477))) key!3287))))

(declare-fun lt!1758977 () Unit!108297)

(assert (=> b!4599385 (= lt!1758977 lt!1758975)))

(assert (=> b!4599385 (= lt!1758976 (lemmaInListThenGetKeysListContains!570 (toList!4658 (extractMap!1381 (toList!4657 lm!1477))) key!3287))))

(declare-fun call!320980 () Bool)

(assert (=> b!4599385 call!320980))

(declare-fun d!1448191 () Bool)

(assert (=> d!1448191 e!2868884))

(declare-fun res!1923871 () Bool)

(assert (=> d!1448191 (=> res!1923871 e!2868884)))

(declare-fun e!2868887 () Bool)

(assert (=> d!1448191 (= res!1923871 e!2868887)))

(declare-fun res!1923869 () Bool)

(assert (=> d!1448191 (=> (not res!1923869) (not e!2868887))))

(declare-fun lt!1758973 () Bool)

(assert (=> d!1448191 (= res!1923869 (not lt!1758973))))

(declare-fun lt!1758971 () Bool)

(assert (=> d!1448191 (= lt!1758973 lt!1758971)))

(declare-fun lt!1758972 () Unit!108297)

(assert (=> d!1448191 (= lt!1758972 e!2868888)))

(declare-fun c!787817 () Bool)

(assert (=> d!1448191 (= c!787817 lt!1758971)))

(assert (=> d!1448191 (= lt!1758971 (containsKey!2163 (toList!4658 (extractMap!1381 (toList!4657 lm!1477))) key!3287))))

(assert (=> d!1448191 (= (contains!14038 (extractMap!1381 (toList!4657 lm!1477)) key!3287) lt!1758973)))

(declare-fun bm!320975 () Bool)

(assert (=> bm!320975 (= call!320980 (contains!14044 e!2868886 key!3287))))

(declare-fun c!787815 () Bool)

(assert (=> bm!320975 (= c!787815 c!787817)))

(declare-fun b!4599386 () Bool)

(assert (=> b!4599386 (= e!2868887 (not (contains!14044 (keys!17889 (extractMap!1381 (toList!4657 lm!1477))) key!3287)))))

(declare-fun b!4599387 () Bool)

(assert (=> b!4599387 false))

(declare-fun lt!1758970 () Unit!108297)

(declare-fun lt!1758974 () Unit!108297)

(assert (=> b!4599387 (= lt!1758970 lt!1758974)))

(assert (=> b!4599387 (containsKey!2163 (toList!4658 (extractMap!1381 (toList!4657 lm!1477))) key!3287)))

(assert (=> b!4599387 (= lt!1758974 (lemmaInGetKeysListThenContainsKey!573 (toList!4658 (extractMap!1381 (toList!4657 lm!1477))) key!3287))))

(declare-fun e!2868883 () Unit!108297)

(declare-fun Unit!108315 () Unit!108297)

(assert (=> b!4599387 (= e!2868883 Unit!108315)))

(declare-fun b!4599388 () Bool)

(assert (=> b!4599388 (= e!2868888 e!2868883)))

(declare-fun c!787816 () Bool)

(assert (=> b!4599388 (= c!787816 call!320980)))

(declare-fun b!4599389 () Bool)

(declare-fun Unit!108316 () Unit!108297)

(assert (=> b!4599389 (= e!2868883 Unit!108316)))

(assert (= (and d!1448191 c!787817) b!4599385))

(assert (= (and d!1448191 (not c!787817)) b!4599388))

(assert (= (and b!4599388 c!787816) b!4599387))

(assert (= (and b!4599388 (not c!787816)) b!4599389))

(assert (= (or b!4599385 b!4599388) bm!320975))

(assert (= (and bm!320975 c!787815) b!4599384))

(assert (= (and bm!320975 (not c!787815)) b!4599381))

(assert (= (and d!1448191 res!1923869) b!4599386))

(assert (= (and d!1448191 (not res!1923871)) b!4599382))

(assert (= (and b!4599382 res!1923870) b!4599383))

(assert (=> b!4599383 m!5425877))

(declare-fun m!5426227 () Bool)

(assert (=> b!4599383 m!5426227))

(assert (=> b!4599383 m!5426227))

(declare-fun m!5426229 () Bool)

(assert (=> b!4599383 m!5426229))

(declare-fun m!5426231 () Bool)

(assert (=> b!4599384 m!5426231))

(declare-fun m!5426233 () Bool)

(assert (=> b!4599382 m!5426233))

(assert (=> b!4599382 m!5426233))

(declare-fun m!5426235 () Bool)

(assert (=> b!4599382 m!5426235))

(declare-fun m!5426237 () Bool)

(assert (=> bm!320975 m!5426237))

(declare-fun m!5426239 () Bool)

(assert (=> b!4599385 m!5426239))

(assert (=> b!4599385 m!5426233))

(assert (=> b!4599385 m!5426233))

(assert (=> b!4599385 m!5426235))

(declare-fun m!5426241 () Bool)

(assert (=> b!4599385 m!5426241))

(assert (=> b!4599381 m!5425877))

(assert (=> b!4599381 m!5426227))

(declare-fun m!5426243 () Bool)

(assert (=> b!4599387 m!5426243))

(declare-fun m!5426245 () Bool)

(assert (=> b!4599387 m!5426245))

(assert (=> d!1448191 m!5426243))

(assert (=> b!4599386 m!5425877))

(assert (=> b!4599386 m!5426227))

(assert (=> b!4599386 m!5426227))

(assert (=> b!4599386 m!5426229))

(assert (=> b!4599141 d!1448191))

(declare-fun bs!1011563 () Bool)

(declare-fun d!1448195 () Bool)

(assert (= bs!1011563 (and d!1448195 d!1448147)))

(declare-fun lambda!186368 () Int)

(assert (=> bs!1011563 (not (= lambda!186368 lambda!186355))))

(declare-fun bs!1011564 () Bool)

(assert (= bs!1011564 (and d!1448195 d!1448121)))

(assert (=> bs!1011564 (= lambda!186368 lambda!186347)))

(declare-fun bs!1011565 () Bool)

(assert (= bs!1011565 (and d!1448195 d!1448181)))

(assert (=> bs!1011565 (= lambda!186368 lambda!186366)))

(declare-fun bs!1011566 () Bool)

(assert (= bs!1011566 (and d!1448195 d!1448139)))

(assert (=> bs!1011566 (= lambda!186368 lambda!186352)))

(declare-fun bs!1011567 () Bool)

(assert (= bs!1011567 (and d!1448195 start!458990)))

(assert (=> bs!1011567 (= lambda!186368 lambda!186337)))

(declare-fun bs!1011568 () Bool)

(assert (= bs!1011568 (and d!1448195 d!1448137)))

(assert (=> bs!1011568 (= lambda!186368 lambda!186351)))

(declare-fun bs!1011569 () Bool)

(assert (= bs!1011569 (and d!1448195 d!1448183)))

(assert (=> bs!1011569 (= lambda!186368 lambda!186367)))

(declare-fun bs!1011570 () Bool)

(assert (= bs!1011570 (and d!1448195 d!1448157)))

(assert (=> bs!1011570 (= lambda!186368 lambda!186362)))

(declare-fun bs!1011571 () Bool)

(assert (= bs!1011571 (and d!1448195 d!1448135)))

(assert (=> bs!1011571 (= lambda!186368 lambda!186350)))

(declare-fun bs!1011572 () Bool)

(assert (= bs!1011572 (and d!1448195 d!1448151)))

(assert (=> bs!1011572 (= lambda!186368 lambda!186358)))

(declare-fun lt!1758978 () ListMap!3919)

(assert (=> d!1448195 (invariantList!1125 (toList!4658 lt!1758978))))

(declare-fun e!2868889 () ListMap!3919)

(assert (=> d!1448195 (= lt!1758978 e!2868889)))

(declare-fun c!787818 () Bool)

(assert (=> d!1448195 (= c!787818 (is-Cons!51087 (toList!4657 lm!1477)))))

(assert (=> d!1448195 (forall!10605 (toList!4657 lm!1477) lambda!186368)))

(assert (=> d!1448195 (= (extractMap!1381 (toList!4657 lm!1477)) lt!1758978)))

(declare-fun b!4599390 () Bool)

(assert (=> b!4599390 (= e!2868889 (addToMapMapFromBucket!815 (_2!29162 (h!57053 (toList!4657 lm!1477))) (extractMap!1381 (t!358205 (toList!4657 lm!1477)))))))

(declare-fun b!4599391 () Bool)

(assert (=> b!4599391 (= e!2868889 (ListMap!3920 Nil!51086))))

(assert (= (and d!1448195 c!787818) b!4599390))

(assert (= (and d!1448195 (not c!787818)) b!4599391))

(declare-fun m!5426247 () Bool)

(assert (=> d!1448195 m!5426247))

(declare-fun m!5426249 () Bool)

(assert (=> d!1448195 m!5426249))

(assert (=> b!4599390 m!5425855))

(assert (=> b!4599390 m!5425855))

(declare-fun m!5426251 () Bool)

(assert (=> b!4599390 m!5426251))

(assert (=> b!4599141 d!1448195))

(declare-fun d!1448197 () Bool)

(declare-fun res!1923872 () Bool)

(declare-fun e!2868890 () Bool)

(assert (=> d!1448197 (=> res!1923872 e!2868890)))

(assert (=> d!1448197 (= res!1923872 (not (is-Cons!51086 newBucket!178)))))

(assert (=> d!1448197 (= (noDuplicateKeys!1321 newBucket!178) e!2868890)))

(declare-fun b!4599392 () Bool)

(declare-fun e!2868891 () Bool)

(assert (=> b!4599392 (= e!2868890 e!2868891)))

(declare-fun res!1923873 () Bool)

(assert (=> b!4599392 (=> (not res!1923873) (not e!2868891))))

(assert (=> b!4599392 (= res!1923873 (not (containsKey!2161 (t!358204 newBucket!178) (_1!29161 (h!57052 newBucket!178)))))))

(declare-fun b!4599393 () Bool)

(assert (=> b!4599393 (= e!2868891 (noDuplicateKeys!1321 (t!358204 newBucket!178)))))

(assert (= (and d!1448197 (not res!1923872)) b!4599392))

(assert (= (and b!4599392 res!1923873) b!4599393))

(declare-fun m!5426253 () Bool)

(assert (=> b!4599392 m!5426253))

(declare-fun m!5426255 () Bool)

(assert (=> b!4599393 m!5426255))

(assert (=> b!4599153 d!1448197))

(declare-fun bs!1011573 () Bool)

(declare-fun d!1448199 () Bool)

(assert (= bs!1011573 (and d!1448199 d!1448147)))

(declare-fun lambda!186371 () Int)

(assert (=> bs!1011573 (not (= lambda!186371 lambda!186355))))

(declare-fun bs!1011574 () Bool)

(assert (= bs!1011574 (and d!1448199 d!1448121)))

(assert (=> bs!1011574 (= lambda!186371 lambda!186347)))

(declare-fun bs!1011575 () Bool)

(assert (= bs!1011575 (and d!1448199 d!1448181)))

(assert (=> bs!1011575 (= lambda!186371 lambda!186366)))

(declare-fun bs!1011576 () Bool)

(assert (= bs!1011576 (and d!1448199 d!1448139)))

(assert (=> bs!1011576 (= lambda!186371 lambda!186352)))

(declare-fun bs!1011577 () Bool)

(assert (= bs!1011577 (and d!1448199 start!458990)))

(assert (=> bs!1011577 (= lambda!186371 lambda!186337)))

(declare-fun bs!1011578 () Bool)

(assert (= bs!1011578 (and d!1448199 d!1448137)))

(assert (=> bs!1011578 (= lambda!186371 lambda!186351)))

(declare-fun bs!1011579 () Bool)

(assert (= bs!1011579 (and d!1448199 d!1448157)))

(assert (=> bs!1011579 (= lambda!186371 lambda!186362)))

(declare-fun bs!1011580 () Bool)

(assert (= bs!1011580 (and d!1448199 d!1448135)))

(assert (=> bs!1011580 (= lambda!186371 lambda!186350)))

(declare-fun bs!1011581 () Bool)

(assert (= bs!1011581 (and d!1448199 d!1448151)))

(assert (=> bs!1011581 (= lambda!186371 lambda!186358)))

(declare-fun bs!1011582 () Bool)

(assert (= bs!1011582 (and d!1448199 d!1448183)))

(assert (=> bs!1011582 (= lambda!186371 lambda!186367)))

(declare-fun bs!1011583 () Bool)

(assert (= bs!1011583 (and d!1448199 d!1448195)))

(assert (=> bs!1011583 (= lambda!186371 lambda!186368)))

(assert (=> d!1448199 (not (contains!14038 (extractMap!1381 (toList!4657 lm!1477)) key!3287))))

(declare-fun lt!1758986 () Unit!108297)

(declare-fun choose!30829 (ListLongMap!3289 K!12453 Hashable!5720) Unit!108297)

(assert (=> d!1448199 (= lt!1758986 (choose!30829 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1448199 (forall!10605 (toList!4657 lm!1477) lambda!186371)))

(assert (=> d!1448199 (= (lemmaNotInItsHashBucketThenNotInMap!291 lm!1477 key!3287 hashF!1107) lt!1758986)))

(declare-fun bs!1011584 () Bool)

(assert (= bs!1011584 d!1448199))

(assert (=> bs!1011584 m!5425877))

(assert (=> bs!1011584 m!5425877))

(assert (=> bs!1011584 m!5425879))

(declare-fun m!5426263 () Bool)

(assert (=> bs!1011584 m!5426263))

(declare-fun m!5426265 () Bool)

(assert (=> bs!1011584 m!5426265))

(assert (=> b!4599142 d!1448199))

(declare-fun d!1448203 () Bool)

(declare-fun res!1923887 () Bool)

(declare-fun e!2868905 () Bool)

(assert (=> d!1448203 (=> res!1923887 e!2868905)))

(assert (=> d!1448203 (= res!1923887 (and (is-Cons!51086 (_2!29162 (h!57053 (toList!4657 lm!1477)))) (= (_1!29161 (h!57052 (_2!29162 (h!57053 (toList!4657 lm!1477))))) key!3287)))))

(assert (=> d!1448203 (= (containsKey!2161 (_2!29162 (h!57053 (toList!4657 lm!1477))) key!3287) e!2868905)))

(declare-fun b!4599407 () Bool)

(declare-fun e!2868906 () Bool)

(assert (=> b!4599407 (= e!2868905 e!2868906)))

(declare-fun res!1923888 () Bool)

(assert (=> b!4599407 (=> (not res!1923888) (not e!2868906))))

(assert (=> b!4599407 (= res!1923888 (is-Cons!51086 (_2!29162 (h!57053 (toList!4657 lm!1477)))))))

(declare-fun b!4599408 () Bool)

(assert (=> b!4599408 (= e!2868906 (containsKey!2161 (t!358204 (_2!29162 (h!57053 (toList!4657 lm!1477)))) key!3287))))

(assert (= (and d!1448203 (not res!1923887)) b!4599407))

(assert (= (and b!4599407 res!1923888) b!4599408))

(declare-fun m!5426273 () Bool)

(assert (=> b!4599408 m!5426273))

(assert (=> b!4599149 d!1448203))

(declare-fun d!1448207 () Bool)

(declare-fun res!1923897 () Bool)

(declare-fun e!2868915 () Bool)

(assert (=> d!1448207 (=> res!1923897 e!2868915)))

(declare-fun e!2868914 () Bool)

(assert (=> d!1448207 (= res!1923897 e!2868914)))

(declare-fun res!1923896 () Bool)

(assert (=> d!1448207 (=> (not res!1923896) (not e!2868914))))

(assert (=> d!1448207 (= res!1923896 (is-Cons!51087 lt!1758782))))

(assert (=> d!1448207 (= (containsKeyBiggerList!277 lt!1758782 key!3287) e!2868915)))

(declare-fun b!4599415 () Bool)

(assert (=> b!4599415 (= e!2868914 (containsKey!2161 (_2!29162 (h!57053 lt!1758782)) key!3287))))

(declare-fun b!4599416 () Bool)

(declare-fun e!2868913 () Bool)

(assert (=> b!4599416 (= e!2868915 e!2868913)))

(declare-fun res!1923895 () Bool)

(assert (=> b!4599416 (=> (not res!1923895) (not e!2868913))))

(assert (=> b!4599416 (= res!1923895 (is-Cons!51087 lt!1758782))))

(declare-fun b!4599417 () Bool)

(assert (=> b!4599417 (= e!2868913 (containsKeyBiggerList!277 (t!358205 lt!1758782) key!3287))))

(assert (= (and d!1448207 res!1923896) b!4599415))

(assert (= (and d!1448207 (not res!1923897)) b!4599416))

(assert (= (and b!4599416 res!1923895) b!4599417))

(declare-fun m!5426275 () Bool)

(assert (=> b!4599415 m!5426275))

(declare-fun m!5426277 () Bool)

(assert (=> b!4599417 m!5426277))

(assert (=> b!4599150 d!1448207))

(declare-fun b!4599418 () Bool)

(declare-fun e!2868919 () List!51214)

(assert (=> b!4599418 (= e!2868919 (keys!17889 lt!1758776))))

(declare-fun b!4599419 () Bool)

(declare-fun e!2868917 () Bool)

(declare-fun e!2868918 () Bool)

(assert (=> b!4599419 (= e!2868917 e!2868918)))

(declare-fun res!1923899 () Bool)

(assert (=> b!4599419 (=> (not res!1923899) (not e!2868918))))

(assert (=> b!4599419 (= res!1923899 (isDefined!8660 (getValueByKey!1313 (toList!4658 lt!1758776) key!3287)))))

(declare-fun b!4599420 () Bool)

(assert (=> b!4599420 (= e!2868918 (contains!14044 (keys!17889 lt!1758776) key!3287))))

(declare-fun b!4599421 () Bool)

(assert (=> b!4599421 (= e!2868919 (getKeysList!574 (toList!4658 lt!1758776)))))

(declare-fun b!4599422 () Bool)

(declare-fun e!2868921 () Unit!108297)

(declare-fun lt!1758994 () Unit!108297)

(assert (=> b!4599422 (= e!2868921 lt!1758994)))

(declare-fun lt!1758993 () Unit!108297)

(assert (=> b!4599422 (= lt!1758993 (lemmaContainsKeyImpliesGetValueByKeyDefined!1216 (toList!4658 lt!1758776) key!3287))))

(assert (=> b!4599422 (isDefined!8660 (getValueByKey!1313 (toList!4658 lt!1758776) key!3287))))

(declare-fun lt!1758995 () Unit!108297)

(assert (=> b!4599422 (= lt!1758995 lt!1758993)))

(assert (=> b!4599422 (= lt!1758994 (lemmaInListThenGetKeysListContains!570 (toList!4658 lt!1758776) key!3287))))

(declare-fun call!320981 () Bool)

(assert (=> b!4599422 call!320981))

(declare-fun d!1448209 () Bool)

(assert (=> d!1448209 e!2868917))

(declare-fun res!1923900 () Bool)

(assert (=> d!1448209 (=> res!1923900 e!2868917)))

(declare-fun e!2868920 () Bool)

(assert (=> d!1448209 (= res!1923900 e!2868920)))

(declare-fun res!1923898 () Bool)

(assert (=> d!1448209 (=> (not res!1923898) (not e!2868920))))

(declare-fun lt!1758991 () Bool)

(assert (=> d!1448209 (= res!1923898 (not lt!1758991))))

(declare-fun lt!1758989 () Bool)

(assert (=> d!1448209 (= lt!1758991 lt!1758989)))

(declare-fun lt!1758990 () Unit!108297)

(assert (=> d!1448209 (= lt!1758990 e!2868921)))

(declare-fun c!787821 () Bool)

(assert (=> d!1448209 (= c!787821 lt!1758989)))

(assert (=> d!1448209 (= lt!1758989 (containsKey!2163 (toList!4658 lt!1758776) key!3287))))

(assert (=> d!1448209 (= (contains!14038 lt!1758776 key!3287) lt!1758991)))

(declare-fun bm!320976 () Bool)

(assert (=> bm!320976 (= call!320981 (contains!14044 e!2868919 key!3287))))

(declare-fun c!787819 () Bool)

(assert (=> bm!320976 (= c!787819 c!787821)))

(declare-fun b!4599423 () Bool)

(assert (=> b!4599423 (= e!2868920 (not (contains!14044 (keys!17889 lt!1758776) key!3287)))))

(declare-fun b!4599424 () Bool)

(assert (=> b!4599424 false))

(declare-fun lt!1758988 () Unit!108297)

(declare-fun lt!1758992 () Unit!108297)

(assert (=> b!4599424 (= lt!1758988 lt!1758992)))

(assert (=> b!4599424 (containsKey!2163 (toList!4658 lt!1758776) key!3287)))

(assert (=> b!4599424 (= lt!1758992 (lemmaInGetKeysListThenContainsKey!573 (toList!4658 lt!1758776) key!3287))))

(declare-fun e!2868916 () Unit!108297)

(declare-fun Unit!108318 () Unit!108297)

(assert (=> b!4599424 (= e!2868916 Unit!108318)))

(declare-fun b!4599425 () Bool)

(assert (=> b!4599425 (= e!2868921 e!2868916)))

(declare-fun c!787820 () Bool)

(assert (=> b!4599425 (= c!787820 call!320981)))

(declare-fun b!4599426 () Bool)

(declare-fun Unit!108319 () Unit!108297)

(assert (=> b!4599426 (= e!2868916 Unit!108319)))

(assert (= (and d!1448209 c!787821) b!4599422))

(assert (= (and d!1448209 (not c!787821)) b!4599425))

(assert (= (and b!4599425 c!787820) b!4599424))

(assert (= (and b!4599425 (not c!787820)) b!4599426))

(assert (= (or b!4599422 b!4599425) bm!320976))

(assert (= (and bm!320976 c!787819) b!4599421))

(assert (= (and bm!320976 (not c!787819)) b!4599418))

(assert (= (and d!1448209 res!1923898) b!4599423))

(assert (= (and d!1448209 (not res!1923900)) b!4599419))

(assert (= (and b!4599419 res!1923899) b!4599420))

(declare-fun m!5426279 () Bool)

(assert (=> b!4599420 m!5426279))

(assert (=> b!4599420 m!5426279))

(declare-fun m!5426281 () Bool)

(assert (=> b!4599420 m!5426281))

(declare-fun m!5426283 () Bool)

(assert (=> b!4599421 m!5426283))

(declare-fun m!5426285 () Bool)

(assert (=> b!4599419 m!5426285))

(assert (=> b!4599419 m!5426285))

(declare-fun m!5426287 () Bool)

(assert (=> b!4599419 m!5426287))

(declare-fun m!5426289 () Bool)

(assert (=> bm!320976 m!5426289))

(declare-fun m!5426291 () Bool)

(assert (=> b!4599422 m!5426291))

(assert (=> b!4599422 m!5426285))

(assert (=> b!4599422 m!5426285))

(assert (=> b!4599422 m!5426287))

(declare-fun m!5426293 () Bool)

(assert (=> b!4599422 m!5426293))

(assert (=> b!4599418 m!5426279))

(declare-fun m!5426295 () Bool)

(assert (=> b!4599424 m!5426295))

(declare-fun m!5426297 () Bool)

(assert (=> b!4599424 m!5426297))

(assert (=> d!1448209 m!5426295))

(assert (=> b!4599423 m!5426279))

(assert (=> b!4599423 m!5426279))

(assert (=> b!4599423 m!5426281))

(assert (=> b!4599139 d!1448209))

(declare-fun b!4599431 () Bool)

(declare-fun e!2868924 () Bool)

(declare-fun tp!1340472 () Bool)

(declare-fun tp!1340473 () Bool)

(assert (=> b!4599431 (= e!2868924 (and tp!1340472 tp!1340473))))

(assert (=> b!4599148 (= tp!1340461 e!2868924)))

(assert (= (and b!4599148 (is-Cons!51087 (toList!4657 lm!1477))) b!4599431))

(declare-fun e!2868927 () Bool)

(declare-fun b!4599436 () Bool)

(declare-fun tp!1340476 () Bool)

(assert (=> b!4599436 (= e!2868927 (and tp_is_empty!28577 tp_is_empty!28579 tp!1340476))))

(assert (=> b!4599154 (= tp!1340460 e!2868927)))

(assert (= (and b!4599154 (is-Cons!51086 (t!358204 newBucket!178))) b!4599436))

(declare-fun b_lambda!169443 () Bool)

(assert (= b_lambda!169439 (or start!458990 b_lambda!169443)))

(declare-fun bs!1011585 () Bool)

(declare-fun d!1448211 () Bool)

(assert (= bs!1011585 (and d!1448211 start!458990)))

(assert (=> bs!1011585 (= (dynLambda!21399 lambda!186337 lt!1758770) (noDuplicateKeys!1321 (_2!29162 lt!1758770)))))

(declare-fun m!5426299 () Bool)

(assert (=> bs!1011585 m!5426299))

(assert (=> d!1448169 d!1448211))

(declare-fun b_lambda!169445 () Bool)

(assert (= b_lambda!169437 (or start!458990 b_lambda!169445)))

(declare-fun bs!1011586 () Bool)

(declare-fun d!1448213 () Bool)

(assert (= bs!1011586 (and d!1448213 start!458990)))

(assert (=> bs!1011586 (= (dynLambda!21399 lambda!186337 (h!57053 (toList!4657 lm!1477))) (noDuplicateKeys!1321 (_2!29162 (h!57053 (toList!4657 lm!1477)))))))

(assert (=> bs!1011586 m!5425873))

(assert (=> b!4599225 d!1448213))

(push 1)

(assert (not d!1448131))

(assert (not b!4599418))

(assert (not d!1448123))

(assert (not b!4599368))

(assert (not d!1448151))

(assert (not b!4599334))

(assert (not b!4599393))

(assert (not b!4599303))

(assert (not b!4599226))

(assert (not bm!320975))

(assert (not d!1448165))

(assert (not d!1448121))

(assert (not b!4599325))

(assert (not d!1448183))

(assert (not b!4599385))

(assert (not b!4599382))

(assert (not b!4599415))

(assert (not bm!320974))

(assert (not b!4599424))

(assert (not b!4599378))

(assert (not d!1448157))

(assert (not b!4599381))

(assert (not d!1448195))

(assert (not bs!1011585))

(assert (not b!4599305))

(assert (not b!4599363))

(assert (not b!4599241))

(assert (not d!1448147))

(assert (not b!4599309))

(assert (not b!4599423))

(assert (not b!4599370))

(assert (not b!4599331))

(assert (not bm!320976))

(assert (not b!4599431))

(assert (not b!4599417))

(assert (not d!1448177))

(assert (not d!1448181))

(assert (not b!4599420))

(assert (not b!4599379))

(assert (not d!1448141))

(assert (not b!4599248))

(assert (not b!4599308))

(assert (not b!4599307))

(assert (not d!1448161))

(assert (not b!4599231))

(assert (not d!1448209))

(assert (not d!1448169))

(assert (not d!1448171))

(assert (not b_lambda!169443))

(assert (not b!4599304))

(assert (not d!1448139))

(assert (not b!4599390))

(assert (not d!1448185))

(assert tp_is_empty!28577)

(assert tp_is_empty!28579)

(assert (not b_lambda!169445))

(assert (not d!1448143))

(assert (not b!4599246))

(assert (not b!4599362))

(assert (not b!4599306))

(assert (not d!1448163))

(assert (not b!4599384))

(assert (not d!1448199))

(assert (not d!1448135))

(assert (not d!1448137))

(assert (not b!4599361))

(assert (not b!4599408))

(assert (not b!4599392))

(assert (not d!1448189))

(assert (not b!4599387))

(assert (not d!1448175))

(assert (not d!1448133))

(assert (not b!4599345))

(assert (not b!4599323))

(assert (not b!4599436))

(assert (not d!1448153))

(assert (not b!4599355))

(assert (not d!1448159))

(assert (not d!1448191))

(assert (not b!4599332))

(assert (not b!4599422))

(assert (not b!4599386))

(assert (not bs!1011586))

(assert (not b!4599383))

(assert (not b!4599250))

(assert (not d!1448167))

(assert (not b!4599247))

(assert (not b!4599421))

(assert (not b!4599419))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

