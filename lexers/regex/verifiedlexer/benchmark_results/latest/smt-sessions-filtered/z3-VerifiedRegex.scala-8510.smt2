; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!444228 () Bool)

(assert start!444228)

(declare-fun b!4499778 () Bool)

(declare-fun e!2802936 () Bool)

(declare-fun e!2802934 () Bool)

(assert (=> b!4499778 (= e!2802936 e!2802934)))

(declare-fun res!1870614 () Bool)

(assert (=> b!4499778 (=> res!1870614 e!2802934)))

(declare-datatypes ((K!11955 0))(
  ( (K!11956 (val!17835 Int)) )
))
(declare-datatypes ((V!12201 0))(
  ( (V!12202 (val!17836 Int)) )
))
(declare-datatypes ((tuple2!50938 0))(
  ( (tuple2!50939 (_1!28763 K!11955) (_2!28763 V!12201)) )
))
(declare-datatypes ((List!50670 0))(
  ( (Nil!50546) (Cons!50546 (h!56367 tuple2!50938) (t!357628 List!50670)) )
))
(declare-datatypes ((tuple2!50940 0))(
  ( (tuple2!50941 (_1!28764 (_ BitVec 64)) (_2!28764 List!50670)) )
))
(declare-datatypes ((List!50671 0))(
  ( (Nil!50547) (Cons!50547 (h!56368 tuple2!50940) (t!357629 List!50671)) )
))
(declare-datatypes ((ListLongMap!2891 0))(
  ( (ListLongMap!2892 (toList!4259 List!50671)) )
))
(declare-fun lm!1477 () ListLongMap!2891)

(declare-fun key!3287 () K!11955)

(declare-datatypes ((ListMap!3521 0))(
  ( (ListMap!3522 (toList!4260 List!50670)) )
))
(declare-fun contains!13219 (ListMap!3521 K!11955) Bool)

(declare-fun extractMap!1182 (List!50671) ListMap!3521)

(assert (=> b!4499778 (= res!1870614 (not (contains!13219 (extractMap!1182 (t!357629 (toList!4259 lm!1477))) key!3287)))))

(declare-fun lt!1680976 () ListMap!3521)

(assert (=> b!4499778 (contains!13219 lt!1680976 key!3287)))

(declare-fun lt!1680973 () ListLongMap!2891)

(assert (=> b!4499778 (= lt!1680976 (extractMap!1182 (toList!4259 lt!1680973)))))

(declare-datatypes ((Hashable!5521 0))(
  ( (HashableExt!5520 (__x!31224 Int)) )
))
(declare-fun hashF!1107 () Hashable!5521)

(declare-datatypes ((Unit!91936 0))(
  ( (Unit!91937) )
))
(declare-fun lt!1680972 () Unit!91936)

(declare-fun lemmaListContainsThenExtractedMapContains!96 (ListLongMap!2891 K!11955 Hashable!5521) Unit!91936)

(assert (=> b!4499778 (= lt!1680972 (lemmaListContainsThenExtractedMapContains!96 lt!1680973 key!3287 hashF!1107))))

(declare-fun b!4499779 () Bool)

(declare-fun e!2802941 () Bool)

(declare-fun isEmpty!28603 (ListLongMap!2891) Bool)

(assert (=> b!4499779 (= e!2802941 (not (isEmpty!28603 lm!1477)))))

(declare-fun b!4499780 () Bool)

(declare-fun e!2802939 () Bool)

(declare-fun e!2802929 () Bool)

(assert (=> b!4499780 (= e!2802939 (not e!2802929))))

(declare-fun res!1870625 () Bool)

(assert (=> b!4499780 (=> res!1870625 e!2802929)))

(declare-fun lt!1680975 () List!50670)

(declare-fun newBucket!178 () List!50670)

(declare-fun removePairForKey!753 (List!50670 K!11955) List!50670)

(assert (=> b!4499780 (= res!1870625 (not (= newBucket!178 (removePairForKey!753 lt!1680975 key!3287))))))

(declare-fun lt!1680978 () tuple2!50940)

(declare-fun lambda!168721 () Int)

(declare-fun lt!1680981 () Unit!91936)

(declare-fun forallContained!2433 (List!50671 Int tuple2!50940) Unit!91936)

(assert (=> b!4499780 (= lt!1680981 (forallContained!2433 (toList!4259 lm!1477) lambda!168721 lt!1680978))))

(declare-fun contains!13220 (List!50671 tuple2!50940) Bool)

(assert (=> b!4499780 (contains!13220 (toList!4259 lm!1477) lt!1680978)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4499780 (= lt!1680978 (tuple2!50941 hash!344 lt!1680975))))

(declare-fun lt!1680974 () Unit!91936)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!638 (List!50671 (_ BitVec 64) List!50670) Unit!91936)

(assert (=> b!4499780 (= lt!1680974 (lemmaGetValueByKeyImpliesContainsTuple!638 (toList!4259 lm!1477) hash!344 lt!1680975))))

(declare-fun apply!11863 (ListLongMap!2891 (_ BitVec 64)) List!50670)

(assert (=> b!4499780 (= lt!1680975 (apply!11863 lm!1477 hash!344))))

(declare-fun lt!1680971 () (_ BitVec 64))

(declare-fun contains!13221 (ListLongMap!2891 (_ BitVec 64)) Bool)

(assert (=> b!4499780 (contains!13221 lm!1477 lt!1680971)))

(declare-fun lt!1680979 () Unit!91936)

(declare-fun lemmaInGenMapThenLongMapContainsHash!200 (ListLongMap!2891 K!11955 Hashable!5521) Unit!91936)

(assert (=> b!4499780 (= lt!1680979 (lemmaInGenMapThenLongMapContainsHash!200 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4499781 () Bool)

(declare-fun res!1870620 () Bool)

(declare-fun e!2802932 () Bool)

(assert (=> b!4499781 (=> res!1870620 e!2802932)))

(assert (=> b!4499781 (= res!1870620 (not (contains!13220 (t!357629 (toList!4259 lm!1477)) lt!1680978)))))

(declare-fun b!4499782 () Bool)

(declare-fun e!2802935 () Unit!91936)

(declare-fun Unit!91938 () Unit!91936)

(assert (=> b!4499782 (= e!2802935 Unit!91938)))

(declare-fun lt!1680965 () Unit!91936)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!114 (ListLongMap!2891 K!11955 Hashable!5521) Unit!91936)

(assert (=> b!4499782 (= lt!1680965 (lemmaNotInItsHashBucketThenNotInMap!114 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4499782 false))

(declare-fun b!4499783 () Bool)

(declare-fun e!2802931 () Bool)

(assert (=> b!4499783 (= e!2802931 e!2802936)))

(declare-fun res!1870627 () Bool)

(assert (=> b!4499783 (=> res!1870627 e!2802936)))

(declare-fun containsKeyBiggerList!106 (List!50671 K!11955) Bool)

(assert (=> b!4499783 (= res!1870627 (not (containsKeyBiggerList!106 (t!357629 (toList!4259 lm!1477)) key!3287)))))

(assert (=> b!4499783 (containsKeyBiggerList!106 (toList!4259 lt!1680973) key!3287)))

(declare-fun lt!1680980 () Unit!91936)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!42 (ListLongMap!2891 K!11955 Hashable!5521) Unit!91936)

(assert (=> b!4499783 (= lt!1680980 (lemmaInLongMapThenContainsKeyBiggerList!42 lt!1680973 key!3287 hashF!1107))))

(declare-fun tp_is_empty!27781 () Bool)

(declare-fun tp_is_empty!27783 () Bool)

(declare-fun b!4499784 () Bool)

(declare-fun tp!1337506 () Bool)

(declare-fun e!2802937 () Bool)

(assert (=> b!4499784 (= e!2802937 (and tp_is_empty!27781 tp_is_empty!27783 tp!1337506))))

(declare-fun b!4499785 () Bool)

(declare-fun res!1870618 () Bool)

(declare-fun e!2802938 () Bool)

(assert (=> b!4499785 (=> (not res!1870618) (not e!2802938))))

(declare-fun allKeysSameHashInMap!1233 (ListLongMap!2891 Hashable!5521) Bool)

(assert (=> b!4499785 (= res!1870618 (allKeysSameHashInMap!1233 lm!1477 hashF!1107))))

(declare-fun b!4499786 () Bool)

(declare-fun e!2802933 () Bool)

(declare-fun tp!1337507 () Bool)

(assert (=> b!4499786 (= e!2802933 tp!1337507)))

(declare-fun b!4499787 () Bool)

(declare-fun e!2802930 () Bool)

(assert (=> b!4499787 (= e!2802938 e!2802930)))

(declare-fun res!1870622 () Bool)

(assert (=> b!4499787 (=> (not res!1870622) (not e!2802930))))

(declare-fun lt!1680967 () ListMap!3521)

(assert (=> b!4499787 (= res!1870622 (contains!13219 lt!1680967 key!3287))))

(assert (=> b!4499787 (= lt!1680967 (extractMap!1182 (toList!4259 lm!1477)))))

(declare-fun res!1870628 () Bool)

(assert (=> start!444228 (=> (not res!1870628) (not e!2802938))))

(declare-fun forall!10179 (List!50671 Int) Bool)

(assert (=> start!444228 (= res!1870628 (forall!10179 (toList!4259 lm!1477) lambda!168721))))

(assert (=> start!444228 e!2802938))

(assert (=> start!444228 true))

(declare-fun inv!66139 (ListLongMap!2891) Bool)

(assert (=> start!444228 (and (inv!66139 lm!1477) e!2802933)))

(assert (=> start!444228 tp_is_empty!27781))

(assert (=> start!444228 e!2802937))

(declare-fun b!4499788 () Bool)

(assert (=> b!4499788 (= e!2802929 e!2802932)))

(declare-fun res!1870619 () Bool)

(assert (=> b!4499788 (=> res!1870619 e!2802932)))

(assert (=> b!4499788 (= res!1870619 (not (contains!13221 lt!1680973 hash!344)))))

(declare-fun tail!7668 (ListLongMap!2891) ListLongMap!2891)

(assert (=> b!4499788 (= lt!1680973 (tail!7668 lm!1477))))

(declare-fun b!4499789 () Bool)

(declare-fun e!2802940 () Bool)

(assert (=> b!4499789 (= e!2802940 e!2802941)))

(declare-fun res!1870616 () Bool)

(assert (=> b!4499789 (=> res!1870616 e!2802941)))

(declare-fun lt!1680968 () ListLongMap!2891)

(declare-fun lt!1680977 () tuple2!50940)

(declare-fun +!1474 (ListLongMap!2891 tuple2!50940) ListLongMap!2891)

(assert (=> b!4499789 (= res!1870616 (not (= lt!1680968 (+!1474 lm!1477 lt!1680977))))))

(declare-fun lt!1680963 () ListLongMap!2891)

(declare-fun lt!1680964 () tuple2!50940)

(assert (=> b!4499789 (= lt!1680968 (+!1474 lt!1680963 lt!1680964))))

(declare-fun b!4499790 () Bool)

(declare-fun res!1870613 () Bool)

(assert (=> b!4499790 (=> (not res!1870613) (not e!2802939))))

(declare-fun allKeysSameHash!980 (List!50670 (_ BitVec 64) Hashable!5521) Bool)

(assert (=> b!4499790 (= res!1870613 (allKeysSameHash!980 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4499791 () Bool)

(declare-fun res!1870630 () Bool)

(assert (=> b!4499791 (=> res!1870630 e!2802929)))

(declare-fun noDuplicateKeys!1126 (List!50670) Bool)

(assert (=> b!4499791 (= res!1870630 (not (noDuplicateKeys!1126 newBucket!178)))))

(declare-fun b!4499792 () Bool)

(declare-fun Unit!91939 () Unit!91936)

(assert (=> b!4499792 (= e!2802935 Unit!91939)))

(declare-fun b!4499793 () Bool)

(declare-fun res!1870621 () Bool)

(assert (=> b!4499793 (=> res!1870621 e!2802929)))

(get-info :version)

(assert (=> b!4499793 (= res!1870621 (or ((_ is Nil!50547) (toList!4259 lm!1477)) (= (_1!28764 (h!56368 (toList!4259 lm!1477))) hash!344)))))

(declare-fun b!4499794 () Bool)

(assert (=> b!4499794 (= e!2802934 e!2802940)))

(declare-fun res!1870617 () Bool)

(assert (=> b!4499794 (=> res!1870617 e!2802940)))

(declare-fun lt!1680982 () ListMap!3521)

(declare-fun eq!583 (ListMap!3521 ListMap!3521) Bool)

(assert (=> b!4499794 (= res!1870617 (not (eq!583 lt!1680982 lt!1680967)))))

(assert (=> b!4499794 (= lt!1680982 (extractMap!1182 (toList!4259 (+!1474 lt!1680973 lt!1680964))))))

(declare-fun head!9346 (ListLongMap!2891) tuple2!50940)

(assert (=> b!4499794 (= lt!1680964 (head!9346 lm!1477))))

(declare-fun -!352 (ListMap!3521 K!11955) ListMap!3521)

(assert (=> b!4499794 (eq!583 (extractMap!1182 (toList!4259 lt!1680963)) (-!352 lt!1680976 key!3287))))

(assert (=> b!4499794 (= lt!1680963 (+!1474 lt!1680973 lt!1680977))))

(assert (=> b!4499794 (= lt!1680977 (tuple2!50941 hash!344 newBucket!178))))

(declare-fun lt!1680966 () Unit!91936)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!111 (ListLongMap!2891 (_ BitVec 64) List!50670 K!11955 Hashable!5521) Unit!91936)

(assert (=> b!4499794 (= lt!1680966 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!111 lt!1680973 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4499795 () Bool)

(assert (=> b!4499795 (= e!2802930 e!2802939)))

(declare-fun res!1870612 () Bool)

(assert (=> b!4499795 (=> (not res!1870612) (not e!2802939))))

(assert (=> b!4499795 (= res!1870612 (= lt!1680971 hash!344))))

(declare-fun hash!2691 (Hashable!5521 K!11955) (_ BitVec 64))

(assert (=> b!4499795 (= lt!1680971 (hash!2691 hashF!1107 key!3287))))

(declare-fun b!4499796 () Bool)

(declare-fun res!1870629 () Bool)

(assert (=> b!4499796 (=> res!1870629 e!2802940)))

(assert (=> b!4499796 (= res!1870629 (not (eq!583 lt!1680967 lt!1680982)))))

(declare-fun b!4499797 () Bool)

(declare-fun res!1870623 () Bool)

(assert (=> b!4499797 (=> res!1870623 e!2802940)))

(assert (=> b!4499797 (= res!1870623 (bvsge (_1!28764 lt!1680964) hash!344))))

(declare-fun b!4499798 () Bool)

(assert (=> b!4499798 (= e!2802932 e!2802931)))

(declare-fun res!1870626 () Bool)

(assert (=> b!4499798 (=> res!1870626 e!2802931)))

(declare-fun lt!1680969 () Bool)

(assert (=> b!4499798 (= res!1870626 lt!1680969)))

(declare-fun lt!1680970 () Unit!91936)

(assert (=> b!4499798 (= lt!1680970 e!2802935)))

(declare-fun c!766989 () Bool)

(assert (=> b!4499798 (= c!766989 lt!1680969)))

(declare-fun containsKey!1682 (List!50670 K!11955) Bool)

(assert (=> b!4499798 (= lt!1680969 (not (containsKey!1682 lt!1680975 key!3287)))))

(declare-fun b!4499799 () Bool)

(declare-fun res!1870624 () Bool)

(assert (=> b!4499799 (=> res!1870624 e!2802941)))

(assert (=> b!4499799 (= res!1870624 (not (= (head!9346 lt!1680968) lt!1680964)))))

(declare-fun b!4499800 () Bool)

(declare-fun res!1870615 () Bool)

(assert (=> b!4499800 (=> res!1870615 e!2802932)))

(assert (=> b!4499800 (= res!1870615 (not (= (apply!11863 lt!1680973 hash!344) lt!1680975)))))

(assert (= (and start!444228 res!1870628) b!4499785))

(assert (= (and b!4499785 res!1870618) b!4499787))

(assert (= (and b!4499787 res!1870622) b!4499795))

(assert (= (and b!4499795 res!1870612) b!4499790))

(assert (= (and b!4499790 res!1870613) b!4499780))

(assert (= (and b!4499780 (not res!1870625)) b!4499791))

(assert (= (and b!4499791 (not res!1870630)) b!4499793))

(assert (= (and b!4499793 (not res!1870621)) b!4499788))

(assert (= (and b!4499788 (not res!1870619)) b!4499800))

(assert (= (and b!4499800 (not res!1870615)) b!4499781))

(assert (= (and b!4499781 (not res!1870620)) b!4499798))

(assert (= (and b!4499798 c!766989) b!4499782))

(assert (= (and b!4499798 (not c!766989)) b!4499792))

(assert (= (and b!4499798 (not res!1870626)) b!4499783))

(assert (= (and b!4499783 (not res!1870627)) b!4499778))

(assert (= (and b!4499778 (not res!1870614)) b!4499794))

(assert (= (and b!4499794 (not res!1870617)) b!4499796))

(assert (= (and b!4499796 (not res!1870629)) b!4499797))

(assert (= (and b!4499797 (not res!1870623)) b!4499789))

(assert (= (and b!4499789 (not res!1870616)) b!4499799))

(assert (= (and b!4499799 (not res!1870624)) b!4499779))

(assert (= start!444228 b!4499786))

(assert (= (and start!444228 ((_ is Cons!50546) newBucket!178)) b!4499784))

(declare-fun m!5229985 () Bool)

(assert (=> b!4499796 m!5229985))

(declare-fun m!5229987 () Bool)

(assert (=> b!4499794 m!5229987))

(declare-fun m!5229989 () Bool)

(assert (=> b!4499794 m!5229989))

(declare-fun m!5229991 () Bool)

(assert (=> b!4499794 m!5229991))

(assert (=> b!4499794 m!5229989))

(declare-fun m!5229993 () Bool)

(assert (=> b!4499794 m!5229993))

(assert (=> b!4499794 m!5229987))

(declare-fun m!5229995 () Bool)

(assert (=> b!4499794 m!5229995))

(declare-fun m!5229997 () Bool)

(assert (=> b!4499794 m!5229997))

(declare-fun m!5229999 () Bool)

(assert (=> b!4499794 m!5229999))

(declare-fun m!5230001 () Bool)

(assert (=> b!4499794 m!5230001))

(declare-fun m!5230003 () Bool)

(assert (=> b!4499794 m!5230003))

(declare-fun m!5230005 () Bool)

(assert (=> b!4499780 m!5230005))

(declare-fun m!5230007 () Bool)

(assert (=> b!4499780 m!5230007))

(declare-fun m!5230009 () Bool)

(assert (=> b!4499780 m!5230009))

(declare-fun m!5230011 () Bool)

(assert (=> b!4499780 m!5230011))

(declare-fun m!5230013 () Bool)

(assert (=> b!4499780 m!5230013))

(declare-fun m!5230015 () Bool)

(assert (=> b!4499780 m!5230015))

(declare-fun m!5230017 () Bool)

(assert (=> b!4499780 m!5230017))

(declare-fun m!5230019 () Bool)

(assert (=> b!4499781 m!5230019))

(declare-fun m!5230021 () Bool)

(assert (=> b!4499788 m!5230021))

(declare-fun m!5230023 () Bool)

(assert (=> b!4499788 m!5230023))

(declare-fun m!5230025 () Bool)

(assert (=> b!4499778 m!5230025))

(declare-fun m!5230027 () Bool)

(assert (=> b!4499778 m!5230027))

(declare-fun m!5230029 () Bool)

(assert (=> b!4499778 m!5230029))

(assert (=> b!4499778 m!5230027))

(declare-fun m!5230031 () Bool)

(assert (=> b!4499778 m!5230031))

(declare-fun m!5230033 () Bool)

(assert (=> b!4499778 m!5230033))

(declare-fun m!5230035 () Bool)

(assert (=> b!4499790 m!5230035))

(declare-fun m!5230037 () Bool)

(assert (=> b!4499779 m!5230037))

(declare-fun m!5230039 () Bool)

(assert (=> b!4499795 m!5230039))

(declare-fun m!5230041 () Bool)

(assert (=> b!4499798 m!5230041))

(declare-fun m!5230043 () Bool)

(assert (=> b!4499782 m!5230043))

(declare-fun m!5230045 () Bool)

(assert (=> b!4499783 m!5230045))

(declare-fun m!5230047 () Bool)

(assert (=> b!4499783 m!5230047))

(declare-fun m!5230049 () Bool)

(assert (=> b!4499783 m!5230049))

(declare-fun m!5230051 () Bool)

(assert (=> b!4499799 m!5230051))

(declare-fun m!5230053 () Bool)

(assert (=> b!4499787 m!5230053))

(declare-fun m!5230055 () Bool)

(assert (=> b!4499787 m!5230055))

(declare-fun m!5230057 () Bool)

(assert (=> b!4499785 m!5230057))

(declare-fun m!5230059 () Bool)

(assert (=> b!4499800 m!5230059))

(declare-fun m!5230061 () Bool)

(assert (=> b!4499789 m!5230061))

(declare-fun m!5230063 () Bool)

(assert (=> b!4499789 m!5230063))

(declare-fun m!5230065 () Bool)

(assert (=> start!444228 m!5230065))

(declare-fun m!5230067 () Bool)

(assert (=> start!444228 m!5230067))

(declare-fun m!5230069 () Bool)

(assert (=> b!4499791 m!5230069))

(check-sat (not b!4499790) (not b!4499791) (not b!4499780) (not b!4499795) (not b!4499782) (not b!4499778) (not b!4499788) (not b!4499796) (not b!4499800) (not b!4499799) (not b!4499789) (not b!4499785) (not b!4499794) tp_is_empty!27781 (not b!4499779) (not b!4499784) (not b!4499787) (not b!4499783) tp_is_empty!27783 (not start!444228) (not b!4499786) (not b!4499798) (not b!4499781))
(check-sat)
(get-model)

(declare-fun d!1380819 () Bool)

(declare-fun res!1870635 () Bool)

(declare-fun e!2802946 () Bool)

(assert (=> d!1380819 (=> res!1870635 e!2802946)))

(assert (=> d!1380819 (= res!1870635 (and ((_ is Cons!50546) lt!1680975) (= (_1!28763 (h!56367 lt!1680975)) key!3287)))))

(assert (=> d!1380819 (= (containsKey!1682 lt!1680975 key!3287) e!2802946)))

(declare-fun b!4499805 () Bool)

(declare-fun e!2802947 () Bool)

(assert (=> b!4499805 (= e!2802946 e!2802947)))

(declare-fun res!1870636 () Bool)

(assert (=> b!4499805 (=> (not res!1870636) (not e!2802947))))

(assert (=> b!4499805 (= res!1870636 ((_ is Cons!50546) lt!1680975))))

(declare-fun b!4499806 () Bool)

(assert (=> b!4499806 (= e!2802947 (containsKey!1682 (t!357628 lt!1680975) key!3287))))

(assert (= (and d!1380819 (not res!1870635)) b!4499805))

(assert (= (and b!4499805 res!1870636) b!4499806))

(declare-fun m!5230071 () Bool)

(assert (=> b!4499806 m!5230071))

(assert (=> b!4499798 d!1380819))

(declare-fun b!4499855 () Bool)

(declare-fun e!2802987 () Unit!91936)

(declare-fun e!2802985 () Unit!91936)

(assert (=> b!4499855 (= e!2802987 e!2802985)))

(declare-fun c!767003 () Bool)

(declare-fun call!313210 () Bool)

(assert (=> b!4499855 (= c!767003 call!313210)))

(declare-fun b!4499856 () Bool)

(declare-fun lt!1681017 () Unit!91936)

(assert (=> b!4499856 (= e!2802987 lt!1681017)))

(declare-fun lt!1681015 () Unit!91936)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!931 (List!50670 K!11955) Unit!91936)

(assert (=> b!4499856 (= lt!1681015 (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 lt!1680967) key!3287))))

(declare-datatypes ((Option!11048 0))(
  ( (None!11047) (Some!11047 (v!44545 V!12201)) )
))
(declare-fun isDefined!8334 (Option!11048) Bool)

(declare-fun getValueByKey!1028 (List!50670 K!11955) Option!11048)

(assert (=> b!4499856 (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1680967) key!3287))))

(declare-fun lt!1681019 () Unit!91936)

(assert (=> b!4499856 (= lt!1681019 lt!1681015)))

(declare-fun lemmaInListThenGetKeysListContains!429 (List!50670 K!11955) Unit!91936)

(assert (=> b!4499856 (= lt!1681017 (lemmaInListThenGetKeysListContains!429 (toList!4260 lt!1680967) key!3287))))

(assert (=> b!4499856 call!313210))

(declare-fun b!4499857 () Bool)

(declare-fun e!2802984 () Bool)

(declare-datatypes ((List!50673 0))(
  ( (Nil!50549) (Cons!50549 (h!56372 K!11955) (t!357631 List!50673)) )
))
(declare-fun contains!13223 (List!50673 K!11955) Bool)

(declare-fun keys!17526 (ListMap!3521) List!50673)

(assert (=> b!4499857 (= e!2802984 (not (contains!13223 (keys!17526 lt!1680967) key!3287)))))

(declare-fun b!4499858 () Bool)

(declare-fun Unit!91944 () Unit!91936)

(assert (=> b!4499858 (= e!2802985 Unit!91944)))

(declare-fun b!4499859 () Bool)

(assert (=> b!4499859 false))

(declare-fun lt!1681018 () Unit!91936)

(declare-fun lt!1681020 () Unit!91936)

(assert (=> b!4499859 (= lt!1681018 lt!1681020)))

(declare-fun containsKey!1684 (List!50670 K!11955) Bool)

(assert (=> b!4499859 (containsKey!1684 (toList!4260 lt!1680967) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!432 (List!50670 K!11955) Unit!91936)

(assert (=> b!4499859 (= lt!1681020 (lemmaInGetKeysListThenContainsKey!432 (toList!4260 lt!1680967) key!3287))))

(declare-fun Unit!91945 () Unit!91936)

(assert (=> b!4499859 (= e!2802985 Unit!91945)))

(declare-fun b!4499860 () Bool)

(declare-fun e!2802986 () Bool)

(declare-fun e!2802988 () Bool)

(assert (=> b!4499860 (= e!2802986 e!2802988)))

(declare-fun res!1870662 () Bool)

(assert (=> b!4499860 (=> (not res!1870662) (not e!2802988))))

(assert (=> b!4499860 (= res!1870662 (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1680967) key!3287)))))

(declare-fun d!1380821 () Bool)

(assert (=> d!1380821 e!2802986))

(declare-fun res!1870663 () Bool)

(assert (=> d!1380821 (=> res!1870663 e!2802986)))

(assert (=> d!1380821 (= res!1870663 e!2802984)))

(declare-fun res!1870661 () Bool)

(assert (=> d!1380821 (=> (not res!1870661) (not e!2802984))))

(declare-fun lt!1681021 () Bool)

(assert (=> d!1380821 (= res!1870661 (not lt!1681021))))

(declare-fun lt!1681022 () Bool)

(assert (=> d!1380821 (= lt!1681021 lt!1681022)))

(declare-fun lt!1681016 () Unit!91936)

(assert (=> d!1380821 (= lt!1681016 e!2802987)))

(declare-fun c!767004 () Bool)

(assert (=> d!1380821 (= c!767004 lt!1681022)))

(assert (=> d!1380821 (= lt!1681022 (containsKey!1684 (toList!4260 lt!1680967) key!3287))))

(assert (=> d!1380821 (= (contains!13219 lt!1680967 key!3287) lt!1681021)))

(declare-fun b!4499861 () Bool)

(assert (=> b!4499861 (= e!2802988 (contains!13223 (keys!17526 lt!1680967) key!3287))))

(declare-fun b!4499862 () Bool)

(declare-fun e!2802989 () List!50673)

(declare-fun getKeysList!433 (List!50670) List!50673)

(assert (=> b!4499862 (= e!2802989 (getKeysList!433 (toList!4260 lt!1680967)))))

(declare-fun bm!313205 () Bool)

(assert (=> bm!313205 (= call!313210 (contains!13223 e!2802989 key!3287))))

(declare-fun c!767002 () Bool)

(assert (=> bm!313205 (= c!767002 c!767004)))

(declare-fun b!4499863 () Bool)

(assert (=> b!4499863 (= e!2802989 (keys!17526 lt!1680967))))

(assert (= (and d!1380821 c!767004) b!4499856))

(assert (= (and d!1380821 (not c!767004)) b!4499855))

(assert (= (and b!4499855 c!767003) b!4499859))

(assert (= (and b!4499855 (not c!767003)) b!4499858))

(assert (= (or b!4499856 b!4499855) bm!313205))

(assert (= (and bm!313205 c!767002) b!4499862))

(assert (= (and bm!313205 (not c!767002)) b!4499863))

(assert (= (and d!1380821 res!1870661) b!4499857))

(assert (= (and d!1380821 (not res!1870663)) b!4499860))

(assert (= (and b!4499860 res!1870662) b!4499861))

(declare-fun m!5230107 () Bool)

(assert (=> b!4499862 m!5230107))

(declare-fun m!5230109 () Bool)

(assert (=> b!4499856 m!5230109))

(declare-fun m!5230111 () Bool)

(assert (=> b!4499856 m!5230111))

(assert (=> b!4499856 m!5230111))

(declare-fun m!5230113 () Bool)

(assert (=> b!4499856 m!5230113))

(declare-fun m!5230115 () Bool)

(assert (=> b!4499856 m!5230115))

(declare-fun m!5230117 () Bool)

(assert (=> b!4499857 m!5230117))

(assert (=> b!4499857 m!5230117))

(declare-fun m!5230119 () Bool)

(assert (=> b!4499857 m!5230119))

(assert (=> b!4499860 m!5230111))

(assert (=> b!4499860 m!5230111))

(assert (=> b!4499860 m!5230113))

(declare-fun m!5230121 () Bool)

(assert (=> bm!313205 m!5230121))

(declare-fun m!5230123 () Bool)

(assert (=> d!1380821 m!5230123))

(assert (=> b!4499859 m!5230123))

(declare-fun m!5230125 () Bool)

(assert (=> b!4499859 m!5230125))

(assert (=> b!4499863 m!5230117))

(assert (=> b!4499861 m!5230117))

(assert (=> b!4499861 m!5230117))

(assert (=> b!4499861 m!5230119))

(assert (=> b!4499787 d!1380821))

(declare-fun bs!835813 () Bool)

(declare-fun d!1380837 () Bool)

(assert (= bs!835813 (and d!1380837 start!444228)))

(declare-fun lambda!168731 () Int)

(assert (=> bs!835813 (= lambda!168731 lambda!168721)))

(declare-fun lt!1681048 () ListMap!3521)

(declare-fun invariantList!985 (List!50670) Bool)

(assert (=> d!1380837 (invariantList!985 (toList!4260 lt!1681048))))

(declare-fun e!2803008 () ListMap!3521)

(assert (=> d!1380837 (= lt!1681048 e!2803008)))

(declare-fun c!767017 () Bool)

(assert (=> d!1380837 (= c!767017 ((_ is Cons!50547) (toList!4259 lm!1477)))))

(assert (=> d!1380837 (forall!10179 (toList!4259 lm!1477) lambda!168731)))

(assert (=> d!1380837 (= (extractMap!1182 (toList!4259 lm!1477)) lt!1681048)))

(declare-fun b!4499894 () Bool)

(declare-fun addToMapMapFromBucket!653 (List!50670 ListMap!3521) ListMap!3521)

(assert (=> b!4499894 (= e!2803008 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))

(declare-fun b!4499895 () Bool)

(assert (=> b!4499895 (= e!2803008 (ListMap!3522 Nil!50546))))

(assert (= (and d!1380837 c!767017) b!4499894))

(assert (= (and d!1380837 (not c!767017)) b!4499895))

(declare-fun m!5230169 () Bool)

(assert (=> d!1380837 m!5230169))

(declare-fun m!5230171 () Bool)

(assert (=> d!1380837 m!5230171))

(assert (=> b!4499894 m!5230027))

(assert (=> b!4499894 m!5230027))

(declare-fun m!5230173 () Bool)

(assert (=> b!4499894 m!5230173))

(assert (=> b!4499787 d!1380837))

(declare-fun b!4499900 () Bool)

(declare-fun e!2803014 () Unit!91936)

(declare-fun e!2803012 () Unit!91936)

(assert (=> b!4499900 (= e!2803014 e!2803012)))

(declare-fun c!767019 () Bool)

(declare-fun call!313213 () Bool)

(assert (=> b!4499900 (= c!767019 call!313213)))

(declare-fun b!4499901 () Bool)

(declare-fun lt!1681059 () Unit!91936)

(assert (=> b!4499901 (= e!2803014 lt!1681059)))

(declare-fun lt!1681057 () Unit!91936)

(assert (=> b!4499901 (= lt!1681057 (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(assert (=> b!4499901 (isDefined!8334 (getValueByKey!1028 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(declare-fun lt!1681061 () Unit!91936)

(assert (=> b!4499901 (= lt!1681061 lt!1681057)))

(assert (=> b!4499901 (= lt!1681059 (lemmaInListThenGetKeysListContains!429 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(assert (=> b!4499901 call!313213))

(declare-fun b!4499902 () Bool)

(declare-fun e!2803011 () Bool)

(assert (=> b!4499902 (= e!2803011 (not (contains!13223 (keys!17526 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287)))))

(declare-fun b!4499903 () Bool)

(declare-fun Unit!91946 () Unit!91936)

(assert (=> b!4499903 (= e!2803012 Unit!91946)))

(declare-fun b!4499904 () Bool)

(assert (=> b!4499904 false))

(declare-fun lt!1681060 () Unit!91936)

(declare-fun lt!1681062 () Unit!91936)

(assert (=> b!4499904 (= lt!1681060 lt!1681062)))

(assert (=> b!4499904 (containsKey!1684 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287)))

(assert (=> b!4499904 (= lt!1681062 (lemmaInGetKeysListThenContainsKey!432 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(declare-fun Unit!91947 () Unit!91936)

(assert (=> b!4499904 (= e!2803012 Unit!91947)))

(declare-fun b!4499905 () Bool)

(declare-fun e!2803013 () Bool)

(declare-fun e!2803015 () Bool)

(assert (=> b!4499905 (= e!2803013 e!2803015)))

(declare-fun res!1870675 () Bool)

(assert (=> b!4499905 (=> (not res!1870675) (not e!2803015))))

(assert (=> b!4499905 (= res!1870675 (isDefined!8334 (getValueByKey!1028 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287)))))

(declare-fun d!1380847 () Bool)

(assert (=> d!1380847 e!2803013))

(declare-fun res!1870676 () Bool)

(assert (=> d!1380847 (=> res!1870676 e!2803013)))

(assert (=> d!1380847 (= res!1870676 e!2803011)))

(declare-fun res!1870674 () Bool)

(assert (=> d!1380847 (=> (not res!1870674) (not e!2803011))))

(declare-fun lt!1681063 () Bool)

(assert (=> d!1380847 (= res!1870674 (not lt!1681063))))

(declare-fun lt!1681064 () Bool)

(assert (=> d!1380847 (= lt!1681063 lt!1681064)))

(declare-fun lt!1681058 () Unit!91936)

(assert (=> d!1380847 (= lt!1681058 e!2803014)))

(declare-fun c!767020 () Bool)

(assert (=> d!1380847 (= c!767020 lt!1681064)))

(assert (=> d!1380847 (= lt!1681064 (containsKey!1684 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(assert (=> d!1380847 (= (contains!13219 (extractMap!1182 (t!357629 (toList!4259 lm!1477))) key!3287) lt!1681063)))

(declare-fun b!4499906 () Bool)

(assert (=> b!4499906 (= e!2803015 (contains!13223 (keys!17526 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(declare-fun b!4499907 () Bool)

(declare-fun e!2803016 () List!50673)

(assert (=> b!4499907 (= e!2803016 (getKeysList!433 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))

(declare-fun bm!313208 () Bool)

(assert (=> bm!313208 (= call!313213 (contains!13223 e!2803016 key!3287))))

(declare-fun c!767018 () Bool)

(assert (=> bm!313208 (= c!767018 c!767020)))

(declare-fun b!4499908 () Bool)

(assert (=> b!4499908 (= e!2803016 (keys!17526 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))

(assert (= (and d!1380847 c!767020) b!4499901))

(assert (= (and d!1380847 (not c!767020)) b!4499900))

(assert (= (and b!4499900 c!767019) b!4499904))

(assert (= (and b!4499900 (not c!767019)) b!4499903))

(assert (= (or b!4499901 b!4499900) bm!313208))

(assert (= (and bm!313208 c!767018) b!4499907))

(assert (= (and bm!313208 (not c!767018)) b!4499908))

(assert (= (and d!1380847 res!1870674) b!4499902))

(assert (= (and d!1380847 (not res!1870676)) b!4499905))

(assert (= (and b!4499905 res!1870675) b!4499906))

(declare-fun m!5230195 () Bool)

(assert (=> b!4499907 m!5230195))

(declare-fun m!5230201 () Bool)

(assert (=> b!4499901 m!5230201))

(declare-fun m!5230203 () Bool)

(assert (=> b!4499901 m!5230203))

(assert (=> b!4499901 m!5230203))

(declare-fun m!5230205 () Bool)

(assert (=> b!4499901 m!5230205))

(declare-fun m!5230207 () Bool)

(assert (=> b!4499901 m!5230207))

(assert (=> b!4499902 m!5230027))

(declare-fun m!5230209 () Bool)

(assert (=> b!4499902 m!5230209))

(assert (=> b!4499902 m!5230209))

(declare-fun m!5230211 () Bool)

(assert (=> b!4499902 m!5230211))

(assert (=> b!4499905 m!5230203))

(assert (=> b!4499905 m!5230203))

(assert (=> b!4499905 m!5230205))

(declare-fun m!5230213 () Bool)

(assert (=> bm!313208 m!5230213))

(declare-fun m!5230215 () Bool)

(assert (=> d!1380847 m!5230215))

(assert (=> b!4499904 m!5230215))

(declare-fun m!5230217 () Bool)

(assert (=> b!4499904 m!5230217))

(assert (=> b!4499908 m!5230027))

(assert (=> b!4499908 m!5230209))

(assert (=> b!4499906 m!5230027))

(assert (=> b!4499906 m!5230209))

(assert (=> b!4499906 m!5230209))

(assert (=> b!4499906 m!5230211))

(assert (=> b!4499778 d!1380847))

(declare-fun b!4499913 () Bool)

(declare-fun e!2803022 () Unit!91936)

(declare-fun e!2803020 () Unit!91936)

(assert (=> b!4499913 (= e!2803022 e!2803020)))

(declare-fun c!767023 () Bool)

(declare-fun call!313214 () Bool)

(assert (=> b!4499913 (= c!767023 call!313214)))

(declare-fun b!4499914 () Bool)

(declare-fun lt!1681072 () Unit!91936)

(assert (=> b!4499914 (= e!2803022 lt!1681072)))

(declare-fun lt!1681070 () Unit!91936)

(assert (=> b!4499914 (= lt!1681070 (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 lt!1680976) key!3287))))

(assert (=> b!4499914 (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287))))

(declare-fun lt!1681074 () Unit!91936)

(assert (=> b!4499914 (= lt!1681074 lt!1681070)))

(assert (=> b!4499914 (= lt!1681072 (lemmaInListThenGetKeysListContains!429 (toList!4260 lt!1680976) key!3287))))

(assert (=> b!4499914 call!313214))

(declare-fun b!4499915 () Bool)

(declare-fun e!2803019 () Bool)

(assert (=> b!4499915 (= e!2803019 (not (contains!13223 (keys!17526 lt!1680976) key!3287)))))

(declare-fun b!4499916 () Bool)

(declare-fun Unit!91948 () Unit!91936)

(assert (=> b!4499916 (= e!2803020 Unit!91948)))

(declare-fun b!4499917 () Bool)

(assert (=> b!4499917 false))

(declare-fun lt!1681073 () Unit!91936)

(declare-fun lt!1681075 () Unit!91936)

(assert (=> b!4499917 (= lt!1681073 lt!1681075)))

(assert (=> b!4499917 (containsKey!1684 (toList!4260 lt!1680976) key!3287)))

(assert (=> b!4499917 (= lt!1681075 (lemmaInGetKeysListThenContainsKey!432 (toList!4260 lt!1680976) key!3287))))

(declare-fun Unit!91949 () Unit!91936)

(assert (=> b!4499917 (= e!2803020 Unit!91949)))

(declare-fun b!4499918 () Bool)

(declare-fun e!2803021 () Bool)

(declare-fun e!2803023 () Bool)

(assert (=> b!4499918 (= e!2803021 e!2803023)))

(declare-fun res!1870680 () Bool)

(assert (=> b!4499918 (=> (not res!1870680) (not e!2803023))))

(assert (=> b!4499918 (= res!1870680 (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287)))))

(declare-fun d!1380855 () Bool)

(assert (=> d!1380855 e!2803021))

(declare-fun res!1870681 () Bool)

(assert (=> d!1380855 (=> res!1870681 e!2803021)))

(assert (=> d!1380855 (= res!1870681 e!2803019)))

(declare-fun res!1870679 () Bool)

(assert (=> d!1380855 (=> (not res!1870679) (not e!2803019))))

(declare-fun lt!1681076 () Bool)

(assert (=> d!1380855 (= res!1870679 (not lt!1681076))))

(declare-fun lt!1681077 () Bool)

(assert (=> d!1380855 (= lt!1681076 lt!1681077)))

(declare-fun lt!1681071 () Unit!91936)

(assert (=> d!1380855 (= lt!1681071 e!2803022)))

(declare-fun c!767024 () Bool)

(assert (=> d!1380855 (= c!767024 lt!1681077)))

(assert (=> d!1380855 (= lt!1681077 (containsKey!1684 (toList!4260 lt!1680976) key!3287))))

(assert (=> d!1380855 (= (contains!13219 lt!1680976 key!3287) lt!1681076)))

(declare-fun b!4499919 () Bool)

(assert (=> b!4499919 (= e!2803023 (contains!13223 (keys!17526 lt!1680976) key!3287))))

(declare-fun b!4499920 () Bool)

(declare-fun e!2803024 () List!50673)

(assert (=> b!4499920 (= e!2803024 (getKeysList!433 (toList!4260 lt!1680976)))))

(declare-fun bm!313209 () Bool)

(assert (=> bm!313209 (= call!313214 (contains!13223 e!2803024 key!3287))))

(declare-fun c!767022 () Bool)

(assert (=> bm!313209 (= c!767022 c!767024)))

(declare-fun b!4499921 () Bool)

(assert (=> b!4499921 (= e!2803024 (keys!17526 lt!1680976))))

(assert (= (and d!1380855 c!767024) b!4499914))

(assert (= (and d!1380855 (not c!767024)) b!4499913))

(assert (= (and b!4499913 c!767023) b!4499917))

(assert (= (and b!4499913 (not c!767023)) b!4499916))

(assert (= (or b!4499914 b!4499913) bm!313209))

(assert (= (and bm!313209 c!767022) b!4499920))

(assert (= (and bm!313209 (not c!767022)) b!4499921))

(assert (= (and d!1380855 res!1870679) b!4499915))

(assert (= (and d!1380855 (not res!1870681)) b!4499918))

(assert (= (and b!4499918 res!1870680) b!4499919))

(declare-fun m!5230219 () Bool)

(assert (=> b!4499920 m!5230219))

(declare-fun m!5230221 () Bool)

(assert (=> b!4499914 m!5230221))

(declare-fun m!5230223 () Bool)

(assert (=> b!4499914 m!5230223))

(assert (=> b!4499914 m!5230223))

(declare-fun m!5230225 () Bool)

(assert (=> b!4499914 m!5230225))

(declare-fun m!5230227 () Bool)

(assert (=> b!4499914 m!5230227))

(declare-fun m!5230229 () Bool)

(assert (=> b!4499915 m!5230229))

(assert (=> b!4499915 m!5230229))

(declare-fun m!5230231 () Bool)

(assert (=> b!4499915 m!5230231))

(assert (=> b!4499918 m!5230223))

(assert (=> b!4499918 m!5230223))

(assert (=> b!4499918 m!5230225))

(declare-fun m!5230233 () Bool)

(assert (=> bm!313209 m!5230233))

(declare-fun m!5230235 () Bool)

(assert (=> d!1380855 m!5230235))

(assert (=> b!4499917 m!5230235))

(declare-fun m!5230237 () Bool)

(assert (=> b!4499917 m!5230237))

(assert (=> b!4499921 m!5230229))

(assert (=> b!4499919 m!5230229))

(assert (=> b!4499919 m!5230229))

(assert (=> b!4499919 m!5230231))

(assert (=> b!4499778 d!1380855))

(declare-fun bs!835819 () Bool)

(declare-fun d!1380857 () Bool)

(assert (= bs!835819 (and d!1380857 start!444228)))

(declare-fun lambda!168733 () Int)

(assert (=> bs!835819 (= lambda!168733 lambda!168721)))

(declare-fun bs!835820 () Bool)

(assert (= bs!835820 (and d!1380857 d!1380837)))

(assert (=> bs!835820 (= lambda!168733 lambda!168731)))

(declare-fun lt!1681078 () ListMap!3521)

(assert (=> d!1380857 (invariantList!985 (toList!4260 lt!1681078))))

(declare-fun e!2803025 () ListMap!3521)

(assert (=> d!1380857 (= lt!1681078 e!2803025)))

(declare-fun c!767025 () Bool)

(assert (=> d!1380857 (= c!767025 ((_ is Cons!50547) (toList!4259 lt!1680973)))))

(assert (=> d!1380857 (forall!10179 (toList!4259 lt!1680973) lambda!168733)))

(assert (=> d!1380857 (= (extractMap!1182 (toList!4259 lt!1680973)) lt!1681078)))

(declare-fun b!4499922 () Bool)

(assert (=> b!4499922 (= e!2803025 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))))))

(declare-fun b!4499923 () Bool)

(assert (=> b!4499923 (= e!2803025 (ListMap!3522 Nil!50546))))

(assert (= (and d!1380857 c!767025) b!4499922))

(assert (= (and d!1380857 (not c!767025)) b!4499923))

(declare-fun m!5230251 () Bool)

(assert (=> d!1380857 m!5230251))

(declare-fun m!5230253 () Bool)

(assert (=> d!1380857 m!5230253))

(declare-fun m!5230255 () Bool)

(assert (=> b!4499922 m!5230255))

(assert (=> b!4499922 m!5230255))

(declare-fun m!5230257 () Bool)

(assert (=> b!4499922 m!5230257))

(assert (=> b!4499778 d!1380857))

(declare-fun bs!835821 () Bool)

(declare-fun d!1380861 () Bool)

(assert (= bs!835821 (and d!1380861 start!444228)))

(declare-fun lambda!168734 () Int)

(assert (=> bs!835821 (= lambda!168734 lambda!168721)))

(declare-fun bs!835822 () Bool)

(assert (= bs!835822 (and d!1380861 d!1380837)))

(assert (=> bs!835822 (= lambda!168734 lambda!168731)))

(declare-fun bs!835823 () Bool)

(assert (= bs!835823 (and d!1380861 d!1380857)))

(assert (=> bs!835823 (= lambda!168734 lambda!168733)))

(declare-fun lt!1681082 () ListMap!3521)

(assert (=> d!1380861 (invariantList!985 (toList!4260 lt!1681082))))

(declare-fun e!2803029 () ListMap!3521)

(assert (=> d!1380861 (= lt!1681082 e!2803029)))

(declare-fun c!767026 () Bool)

(assert (=> d!1380861 (= c!767026 ((_ is Cons!50547) (t!357629 (toList!4259 lm!1477))))))

(assert (=> d!1380861 (forall!10179 (t!357629 (toList!4259 lm!1477)) lambda!168734)))

(assert (=> d!1380861 (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681082)))

(declare-fun b!4499927 () Bool)

(assert (=> b!4499927 (= e!2803029 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))))))

(declare-fun b!4499928 () Bool)

(assert (=> b!4499928 (= e!2803029 (ListMap!3522 Nil!50546))))

(assert (= (and d!1380861 c!767026) b!4499927))

(assert (= (and d!1380861 (not c!767026)) b!4499928))

(declare-fun m!5230259 () Bool)

(assert (=> d!1380861 m!5230259))

(declare-fun m!5230261 () Bool)

(assert (=> d!1380861 m!5230261))

(declare-fun m!5230263 () Bool)

(assert (=> b!4499927 m!5230263))

(assert (=> b!4499927 m!5230263))

(declare-fun m!5230265 () Bool)

(assert (=> b!4499927 m!5230265))

(assert (=> b!4499778 d!1380861))

(declare-fun bs!835857 () Bool)

(declare-fun d!1380863 () Bool)

(assert (= bs!835857 (and d!1380863 start!444228)))

(declare-fun lambda!168750 () Int)

(assert (=> bs!835857 (= lambda!168750 lambda!168721)))

(declare-fun bs!835858 () Bool)

(assert (= bs!835858 (and d!1380863 d!1380837)))

(assert (=> bs!835858 (= lambda!168750 lambda!168731)))

(declare-fun bs!835859 () Bool)

(assert (= bs!835859 (and d!1380863 d!1380857)))

(assert (=> bs!835859 (= lambda!168750 lambda!168733)))

(declare-fun bs!835860 () Bool)

(assert (= bs!835860 (and d!1380863 d!1380861)))

(assert (=> bs!835860 (= lambda!168750 lambda!168734)))

(assert (=> d!1380863 (contains!13219 (extractMap!1182 (toList!4259 lt!1680973)) key!3287)))

(declare-fun lt!1681096 () Unit!91936)

(declare-fun choose!29127 (ListLongMap!2891 K!11955 Hashable!5521) Unit!91936)

(assert (=> d!1380863 (= lt!1681096 (choose!29127 lt!1680973 key!3287 hashF!1107))))

(assert (=> d!1380863 (forall!10179 (toList!4259 lt!1680973) lambda!168750)))

(assert (=> d!1380863 (= (lemmaListContainsThenExtractedMapContains!96 lt!1680973 key!3287 hashF!1107) lt!1681096)))

(declare-fun bs!835861 () Bool)

(assert (= bs!835861 d!1380863))

(assert (=> bs!835861 m!5230025))

(assert (=> bs!835861 m!5230025))

(declare-fun m!5230313 () Bool)

(assert (=> bs!835861 m!5230313))

(declare-fun m!5230315 () Bool)

(assert (=> bs!835861 m!5230315))

(declare-fun m!5230317 () Bool)

(assert (=> bs!835861 m!5230317))

(assert (=> b!4499778 d!1380863))

(declare-fun d!1380883 () Bool)

(declare-fun e!2803046 () Bool)

(assert (=> d!1380883 e!2803046))

(declare-fun res!1870697 () Bool)

(assert (=> d!1380883 (=> (not res!1870697) (not e!2803046))))

(declare-fun lt!1681117 () ListLongMap!2891)

(assert (=> d!1380883 (= res!1870697 (contains!13221 lt!1681117 (_1!28764 lt!1680977)))))

(declare-fun lt!1681118 () List!50671)

(assert (=> d!1380883 (= lt!1681117 (ListLongMap!2892 lt!1681118))))

(declare-fun lt!1681119 () Unit!91936)

(declare-fun lt!1681120 () Unit!91936)

(assert (=> d!1380883 (= lt!1681119 lt!1681120)))

(declare-datatypes ((Option!11049 0))(
  ( (None!11048) (Some!11048 (v!44546 List!50670)) )
))
(declare-fun getValueByKey!1029 (List!50671 (_ BitVec 64)) Option!11049)

(assert (=> d!1380883 (= (getValueByKey!1029 lt!1681118 (_1!28764 lt!1680977)) (Some!11048 (_2!28764 lt!1680977)))))

(declare-fun lemmaContainsTupThenGetReturnValue!634 (List!50671 (_ BitVec 64) List!50670) Unit!91936)

(assert (=> d!1380883 (= lt!1681120 (lemmaContainsTupThenGetReturnValue!634 lt!1681118 (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))

(declare-fun insertStrictlySorted!376 (List!50671 (_ BitVec 64) List!50670) List!50671)

(assert (=> d!1380883 (= lt!1681118 (insertStrictlySorted!376 (toList!4259 lm!1477) (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))

(assert (=> d!1380883 (= (+!1474 lm!1477 lt!1680977) lt!1681117)))

(declare-fun b!4499961 () Bool)

(declare-fun res!1870698 () Bool)

(assert (=> b!4499961 (=> (not res!1870698) (not e!2803046))))

(assert (=> b!4499961 (= res!1870698 (= (getValueByKey!1029 (toList!4259 lt!1681117) (_1!28764 lt!1680977)) (Some!11048 (_2!28764 lt!1680977))))))

(declare-fun b!4499962 () Bool)

(assert (=> b!4499962 (= e!2803046 (contains!13220 (toList!4259 lt!1681117) lt!1680977))))

(assert (= (and d!1380883 res!1870697) b!4499961))

(assert (= (and b!4499961 res!1870698) b!4499962))

(declare-fun m!5230341 () Bool)

(assert (=> d!1380883 m!5230341))

(declare-fun m!5230343 () Bool)

(assert (=> d!1380883 m!5230343))

(declare-fun m!5230345 () Bool)

(assert (=> d!1380883 m!5230345))

(declare-fun m!5230347 () Bool)

(assert (=> d!1380883 m!5230347))

(declare-fun m!5230349 () Bool)

(assert (=> b!4499961 m!5230349))

(declare-fun m!5230351 () Bool)

(assert (=> b!4499962 m!5230351))

(assert (=> b!4499789 d!1380883))

(declare-fun d!1380893 () Bool)

(declare-fun e!2803053 () Bool)

(assert (=> d!1380893 e!2803053))

(declare-fun res!1870705 () Bool)

(assert (=> d!1380893 (=> (not res!1870705) (not e!2803053))))

(declare-fun lt!1681124 () ListLongMap!2891)

(assert (=> d!1380893 (= res!1870705 (contains!13221 lt!1681124 (_1!28764 lt!1680964)))))

(declare-fun lt!1681125 () List!50671)

(assert (=> d!1380893 (= lt!1681124 (ListLongMap!2892 lt!1681125))))

(declare-fun lt!1681126 () Unit!91936)

(declare-fun lt!1681127 () Unit!91936)

(assert (=> d!1380893 (= lt!1681126 lt!1681127)))

(assert (=> d!1380893 (= (getValueByKey!1029 lt!1681125 (_1!28764 lt!1680964)) (Some!11048 (_2!28764 lt!1680964)))))

(assert (=> d!1380893 (= lt!1681127 (lemmaContainsTupThenGetReturnValue!634 lt!1681125 (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))

(assert (=> d!1380893 (= lt!1681125 (insertStrictlySorted!376 (toList!4259 lt!1680963) (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))

(assert (=> d!1380893 (= (+!1474 lt!1680963 lt!1680964) lt!1681124)))

(declare-fun b!4499969 () Bool)

(declare-fun res!1870706 () Bool)

(assert (=> b!4499969 (=> (not res!1870706) (not e!2803053))))

(assert (=> b!4499969 (= res!1870706 (= (getValueByKey!1029 (toList!4259 lt!1681124) (_1!28764 lt!1680964)) (Some!11048 (_2!28764 lt!1680964))))))

(declare-fun b!4499970 () Bool)

(assert (=> b!4499970 (= e!2803053 (contains!13220 (toList!4259 lt!1681124) lt!1680964))))

(assert (= (and d!1380893 res!1870705) b!4499969))

(assert (= (and b!4499969 res!1870706) b!4499970))

(declare-fun m!5230357 () Bool)

(assert (=> d!1380893 m!5230357))

(declare-fun m!5230359 () Bool)

(assert (=> d!1380893 m!5230359))

(declare-fun m!5230361 () Bool)

(assert (=> d!1380893 m!5230361))

(declare-fun m!5230363 () Bool)

(assert (=> d!1380893 m!5230363))

(declare-fun m!5230365 () Bool)

(assert (=> b!4499969 m!5230365))

(declare-fun m!5230367 () Bool)

(assert (=> b!4499970 m!5230367))

(assert (=> b!4499789 d!1380893))

(declare-fun d!1380897 () Bool)

(declare-fun e!2803082 () Bool)

(assert (=> d!1380897 e!2803082))

(declare-fun res!1870726 () Bool)

(assert (=> d!1380897 (=> res!1870726 e!2803082)))

(declare-fun lt!1681170 () Bool)

(assert (=> d!1380897 (= res!1870726 (not lt!1681170))))

(declare-fun lt!1681172 () Bool)

(assert (=> d!1380897 (= lt!1681170 lt!1681172)))

(declare-fun lt!1681171 () Unit!91936)

(declare-fun e!2803081 () Unit!91936)

(assert (=> d!1380897 (= lt!1681171 e!2803081)))

(declare-fun c!767044 () Bool)

(assert (=> d!1380897 (= c!767044 lt!1681172)))

(declare-fun containsKey!1686 (List!50671 (_ BitVec 64)) Bool)

(assert (=> d!1380897 (= lt!1681172 (containsKey!1686 (toList!4259 lt!1680973) hash!344))))

(assert (=> d!1380897 (= (contains!13221 lt!1680973 hash!344) lt!1681170)))

(declare-fun b!4500010 () Bool)

(declare-fun lt!1681173 () Unit!91936)

(assert (=> b!4500010 (= e!2803081 lt!1681173)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!933 (List!50671 (_ BitVec 64)) Unit!91936)

(assert (=> b!4500010 (= lt!1681173 (lemmaContainsKeyImpliesGetValueByKeyDefined!933 (toList!4259 lt!1680973) hash!344))))

(declare-fun isDefined!8336 (Option!11049) Bool)

(assert (=> b!4500010 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1680973) hash!344))))

(declare-fun b!4500011 () Bool)

(declare-fun Unit!91954 () Unit!91936)

(assert (=> b!4500011 (= e!2803081 Unit!91954)))

(declare-fun b!4500012 () Bool)

(assert (=> b!4500012 (= e!2803082 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1680973) hash!344)))))

(assert (= (and d!1380897 c!767044) b!4500010))

(assert (= (and d!1380897 (not c!767044)) b!4500011))

(assert (= (and d!1380897 (not res!1870726)) b!4500012))

(declare-fun m!5230447 () Bool)

(assert (=> d!1380897 m!5230447))

(declare-fun m!5230449 () Bool)

(assert (=> b!4500010 m!5230449))

(declare-fun m!5230455 () Bool)

(assert (=> b!4500010 m!5230455))

(assert (=> b!4500010 m!5230455))

(declare-fun m!5230457 () Bool)

(assert (=> b!4500010 m!5230457))

(assert (=> b!4500012 m!5230455))

(assert (=> b!4500012 m!5230455))

(assert (=> b!4500012 m!5230457))

(assert (=> b!4499788 d!1380897))

(declare-fun d!1380921 () Bool)

(declare-fun tail!7670 (List!50671) List!50671)

(assert (=> d!1380921 (= (tail!7668 lm!1477) (ListLongMap!2892 (tail!7670 (toList!4259 lm!1477))))))

(declare-fun bs!835885 () Bool)

(assert (= bs!835885 d!1380921))

(declare-fun m!5230459 () Bool)

(assert (=> bs!835885 m!5230459))

(assert (=> b!4499788 d!1380921))

(declare-fun d!1380923 () Bool)

(declare-fun head!9348 (List!50671) tuple2!50940)

(assert (=> d!1380923 (= (head!9346 lt!1680968) (head!9348 (toList!4259 lt!1680968)))))

(declare-fun bs!835886 () Bool)

(assert (= bs!835886 d!1380923))

(declare-fun m!5230469 () Bool)

(assert (=> bs!835886 m!5230469))

(assert (=> b!4499799 d!1380923))

(declare-fun d!1380929 () Bool)

(assert (=> d!1380929 true))

(assert (=> d!1380929 true))

(declare-fun lambda!168760 () Int)

(declare-fun forall!10181 (List!50670 Int) Bool)

(assert (=> d!1380929 (= (allKeysSameHash!980 newBucket!178 hash!344 hashF!1107) (forall!10181 newBucket!178 lambda!168760))))

(declare-fun bs!835900 () Bool)

(assert (= bs!835900 d!1380929))

(declare-fun m!5230477 () Bool)

(assert (=> bs!835900 m!5230477))

(assert (=> b!4499790 d!1380929))

(declare-fun d!1380933 () Bool)

(declare-fun get!16521 (Option!11049) List!50670)

(assert (=> d!1380933 (= (apply!11863 lt!1680973 hash!344) (get!16521 (getValueByKey!1029 (toList!4259 lt!1680973) hash!344)))))

(declare-fun bs!835903 () Bool)

(assert (= bs!835903 d!1380933))

(assert (=> bs!835903 m!5230455))

(assert (=> bs!835903 m!5230455))

(declare-fun m!5230483 () Bool)

(assert (=> bs!835903 m!5230483))

(assert (=> b!4499800 d!1380933))

(declare-fun d!1380939 () Bool)

(declare-fun isEmpty!28605 (List!50671) Bool)

(assert (=> d!1380939 (= (isEmpty!28603 lm!1477) (isEmpty!28605 (toList!4259 lm!1477)))))

(declare-fun bs!835904 () Bool)

(assert (= bs!835904 d!1380939))

(declare-fun m!5230485 () Bool)

(assert (=> bs!835904 m!5230485))

(assert (=> b!4499779 d!1380939))

(declare-fun d!1380941 () Bool)

(declare-fun lt!1681179 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8261 (List!50671) (InoxSet tuple2!50940))

(assert (=> d!1380941 (= lt!1681179 (select (content!8261 (t!357629 (toList!4259 lm!1477))) lt!1680978))))

(declare-fun e!2803108 () Bool)

(assert (=> d!1380941 (= lt!1681179 e!2803108)))

(declare-fun res!1870746 () Bool)

(assert (=> d!1380941 (=> (not res!1870746) (not e!2803108))))

(assert (=> d!1380941 (= res!1870746 ((_ is Cons!50547) (t!357629 (toList!4259 lm!1477))))))

(assert (=> d!1380941 (= (contains!13220 (t!357629 (toList!4259 lm!1477)) lt!1680978) lt!1681179)))

(declare-fun b!4500045 () Bool)

(declare-fun e!2803107 () Bool)

(assert (=> b!4500045 (= e!2803108 e!2803107)))

(declare-fun res!1870745 () Bool)

(assert (=> b!4500045 (=> res!1870745 e!2803107)))

(assert (=> b!4500045 (= res!1870745 (= (h!56368 (t!357629 (toList!4259 lm!1477))) lt!1680978))))

(declare-fun b!4500046 () Bool)

(assert (=> b!4500046 (= e!2803107 (contains!13220 (t!357629 (t!357629 (toList!4259 lm!1477))) lt!1680978))))

(assert (= (and d!1380941 res!1870746) b!4500045))

(assert (= (and b!4500045 (not res!1870745)) b!4500046))

(declare-fun m!5230487 () Bool)

(assert (=> d!1380941 m!5230487))

(declare-fun m!5230489 () Bool)

(assert (=> d!1380941 m!5230489))

(declare-fun m!5230491 () Bool)

(assert (=> b!4500046 m!5230491))

(assert (=> b!4499781 d!1380941))

(declare-fun bs!835905 () Bool)

(declare-fun d!1380943 () Bool)

(assert (= bs!835905 (and d!1380943 d!1380863)))

(declare-fun lambda!168763 () Int)

(assert (=> bs!835905 (= lambda!168763 lambda!168750)))

(declare-fun bs!835906 () Bool)

(assert (= bs!835906 (and d!1380943 d!1380861)))

(assert (=> bs!835906 (= lambda!168763 lambda!168734)))

(declare-fun bs!835907 () Bool)

(assert (= bs!835907 (and d!1380943 start!444228)))

(assert (=> bs!835907 (= lambda!168763 lambda!168721)))

(declare-fun bs!835908 () Bool)

(assert (= bs!835908 (and d!1380943 d!1380837)))

(assert (=> bs!835908 (= lambda!168763 lambda!168731)))

(declare-fun bs!835909 () Bool)

(assert (= bs!835909 (and d!1380943 d!1380857)))

(assert (=> bs!835909 (= lambda!168763 lambda!168733)))

(assert (=> d!1380943 (contains!13221 lm!1477 (hash!2691 hashF!1107 key!3287))))

(declare-fun lt!1681182 () Unit!91936)

(declare-fun choose!29128 (ListLongMap!2891 K!11955 Hashable!5521) Unit!91936)

(assert (=> d!1380943 (= lt!1681182 (choose!29128 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1380943 (forall!10179 (toList!4259 lm!1477) lambda!168763)))

(assert (=> d!1380943 (= (lemmaInGenMapThenLongMapContainsHash!200 lm!1477 key!3287 hashF!1107) lt!1681182)))

(declare-fun bs!835910 () Bool)

(assert (= bs!835910 d!1380943))

(assert (=> bs!835910 m!5230039))

(assert (=> bs!835910 m!5230039))

(declare-fun m!5230493 () Bool)

(assert (=> bs!835910 m!5230493))

(declare-fun m!5230495 () Bool)

(assert (=> bs!835910 m!5230495))

(declare-fun m!5230497 () Bool)

(assert (=> bs!835910 m!5230497))

(assert (=> b!4499780 d!1380943))

(declare-fun d!1380945 () Bool)

(assert (=> d!1380945 (= (apply!11863 lm!1477 hash!344) (get!16521 (getValueByKey!1029 (toList!4259 lm!1477) hash!344)))))

(declare-fun bs!835911 () Bool)

(assert (= bs!835911 d!1380945))

(declare-fun m!5230499 () Bool)

(assert (=> bs!835911 m!5230499))

(assert (=> bs!835911 m!5230499))

(declare-fun m!5230501 () Bool)

(assert (=> bs!835911 m!5230501))

(assert (=> b!4499780 d!1380945))

(declare-fun d!1380947 () Bool)

(declare-fun dynLambda!21109 (Int tuple2!50940) Bool)

(assert (=> d!1380947 (dynLambda!21109 lambda!168721 lt!1680978)))

(declare-fun lt!1681185 () Unit!91936)

(declare-fun choose!29129 (List!50671 Int tuple2!50940) Unit!91936)

(assert (=> d!1380947 (= lt!1681185 (choose!29129 (toList!4259 lm!1477) lambda!168721 lt!1680978))))

(declare-fun e!2803111 () Bool)

(assert (=> d!1380947 e!2803111))

(declare-fun res!1870749 () Bool)

(assert (=> d!1380947 (=> (not res!1870749) (not e!2803111))))

(assert (=> d!1380947 (= res!1870749 (forall!10179 (toList!4259 lm!1477) lambda!168721))))

(assert (=> d!1380947 (= (forallContained!2433 (toList!4259 lm!1477) lambda!168721 lt!1680978) lt!1681185)))

(declare-fun b!4500049 () Bool)

(assert (=> b!4500049 (= e!2803111 (contains!13220 (toList!4259 lm!1477) lt!1680978))))

(assert (= (and d!1380947 res!1870749) b!4500049))

(declare-fun b_lambda!152313 () Bool)

(assert (=> (not b_lambda!152313) (not d!1380947)))

(declare-fun m!5230503 () Bool)

(assert (=> d!1380947 m!5230503))

(declare-fun m!5230505 () Bool)

(assert (=> d!1380947 m!5230505))

(assert (=> d!1380947 m!5230065))

(assert (=> b!4500049 m!5230009))

(assert (=> b!4499780 d!1380947))

(declare-fun d!1380949 () Bool)

(declare-fun e!2803113 () Bool)

(assert (=> d!1380949 e!2803113))

(declare-fun res!1870750 () Bool)

(assert (=> d!1380949 (=> res!1870750 e!2803113)))

(declare-fun lt!1681186 () Bool)

(assert (=> d!1380949 (= res!1870750 (not lt!1681186))))

(declare-fun lt!1681188 () Bool)

(assert (=> d!1380949 (= lt!1681186 lt!1681188)))

(declare-fun lt!1681187 () Unit!91936)

(declare-fun e!2803112 () Unit!91936)

(assert (=> d!1380949 (= lt!1681187 e!2803112)))

(declare-fun c!767045 () Bool)

(assert (=> d!1380949 (= c!767045 lt!1681188)))

(assert (=> d!1380949 (= lt!1681188 (containsKey!1686 (toList!4259 lm!1477) lt!1680971))))

(assert (=> d!1380949 (= (contains!13221 lm!1477 lt!1680971) lt!1681186)))

(declare-fun b!4500050 () Bool)

(declare-fun lt!1681189 () Unit!91936)

(assert (=> b!4500050 (= e!2803112 lt!1681189)))

(assert (=> b!4500050 (= lt!1681189 (lemmaContainsKeyImpliesGetValueByKeyDefined!933 (toList!4259 lm!1477) lt!1680971))))

(assert (=> b!4500050 (isDefined!8336 (getValueByKey!1029 (toList!4259 lm!1477) lt!1680971))))

(declare-fun b!4500051 () Bool)

(declare-fun Unit!91955 () Unit!91936)

(assert (=> b!4500051 (= e!2803112 Unit!91955)))

(declare-fun b!4500052 () Bool)

(assert (=> b!4500052 (= e!2803113 (isDefined!8336 (getValueByKey!1029 (toList!4259 lm!1477) lt!1680971)))))

(assert (= (and d!1380949 c!767045) b!4500050))

(assert (= (and d!1380949 (not c!767045)) b!4500051))

(assert (= (and d!1380949 (not res!1870750)) b!4500052))

(declare-fun m!5230507 () Bool)

(assert (=> d!1380949 m!5230507))

(declare-fun m!5230509 () Bool)

(assert (=> b!4500050 m!5230509))

(declare-fun m!5230511 () Bool)

(assert (=> b!4500050 m!5230511))

(assert (=> b!4500050 m!5230511))

(declare-fun m!5230513 () Bool)

(assert (=> b!4500050 m!5230513))

(assert (=> b!4500052 m!5230511))

(assert (=> b!4500052 m!5230511))

(assert (=> b!4500052 m!5230513))

(assert (=> b!4499780 d!1380949))

(declare-fun b!4500062 () Bool)

(declare-fun e!2803118 () List!50670)

(declare-fun e!2803119 () List!50670)

(assert (=> b!4500062 (= e!2803118 e!2803119)))

(declare-fun c!767051 () Bool)

(assert (=> b!4500062 (= c!767051 ((_ is Cons!50546) lt!1680975))))

(declare-fun d!1380951 () Bool)

(declare-fun lt!1681192 () List!50670)

(assert (=> d!1380951 (not (containsKey!1682 lt!1681192 key!3287))))

(assert (=> d!1380951 (= lt!1681192 e!2803118)))

(declare-fun c!767050 () Bool)

(assert (=> d!1380951 (= c!767050 (and ((_ is Cons!50546) lt!1680975) (= (_1!28763 (h!56367 lt!1680975)) key!3287)))))

(assert (=> d!1380951 (noDuplicateKeys!1126 lt!1680975)))

(assert (=> d!1380951 (= (removePairForKey!753 lt!1680975 key!3287) lt!1681192)))

(declare-fun b!4500061 () Bool)

(assert (=> b!4500061 (= e!2803118 (t!357628 lt!1680975))))

(declare-fun b!4500063 () Bool)

(assert (=> b!4500063 (= e!2803119 (Cons!50546 (h!56367 lt!1680975) (removePairForKey!753 (t!357628 lt!1680975) key!3287)))))

(declare-fun b!4500064 () Bool)

(assert (=> b!4500064 (= e!2803119 Nil!50546)))

(assert (= (and d!1380951 c!767050) b!4500061))

(assert (= (and d!1380951 (not c!767050)) b!4500062))

(assert (= (and b!4500062 c!767051) b!4500063))

(assert (= (and b!4500062 (not c!767051)) b!4500064))

(declare-fun m!5230515 () Bool)

(assert (=> d!1380951 m!5230515))

(declare-fun m!5230517 () Bool)

(assert (=> d!1380951 m!5230517))

(declare-fun m!5230519 () Bool)

(assert (=> b!4500063 m!5230519))

(assert (=> b!4499780 d!1380951))

(declare-fun d!1380953 () Bool)

(declare-fun lt!1681193 () Bool)

(assert (=> d!1380953 (= lt!1681193 (select (content!8261 (toList!4259 lm!1477)) lt!1680978))))

(declare-fun e!2803121 () Bool)

(assert (=> d!1380953 (= lt!1681193 e!2803121)))

(declare-fun res!1870752 () Bool)

(assert (=> d!1380953 (=> (not res!1870752) (not e!2803121))))

(assert (=> d!1380953 (= res!1870752 ((_ is Cons!50547) (toList!4259 lm!1477)))))

(assert (=> d!1380953 (= (contains!13220 (toList!4259 lm!1477) lt!1680978) lt!1681193)))

(declare-fun b!4500065 () Bool)

(declare-fun e!2803120 () Bool)

(assert (=> b!4500065 (= e!2803121 e!2803120)))

(declare-fun res!1870751 () Bool)

(assert (=> b!4500065 (=> res!1870751 e!2803120)))

(assert (=> b!4500065 (= res!1870751 (= (h!56368 (toList!4259 lm!1477)) lt!1680978))))

(declare-fun b!4500066 () Bool)

(assert (=> b!4500066 (= e!2803120 (contains!13220 (t!357629 (toList!4259 lm!1477)) lt!1680978))))

(assert (= (and d!1380953 res!1870752) b!4500065))

(assert (= (and b!4500065 (not res!1870751)) b!4500066))

(declare-fun m!5230521 () Bool)

(assert (=> d!1380953 m!5230521))

(declare-fun m!5230523 () Bool)

(assert (=> d!1380953 m!5230523))

(assert (=> b!4500066 m!5230019))

(assert (=> b!4499780 d!1380953))

(declare-fun d!1380955 () Bool)

(assert (=> d!1380955 (contains!13220 (toList!4259 lm!1477) (tuple2!50941 hash!344 lt!1680975))))

(declare-fun lt!1681196 () Unit!91936)

(declare-fun choose!29131 (List!50671 (_ BitVec 64) List!50670) Unit!91936)

(assert (=> d!1380955 (= lt!1681196 (choose!29131 (toList!4259 lm!1477) hash!344 lt!1680975))))

(declare-fun e!2803124 () Bool)

(assert (=> d!1380955 e!2803124))

(declare-fun res!1870755 () Bool)

(assert (=> d!1380955 (=> (not res!1870755) (not e!2803124))))

(declare-fun isStrictlySorted!399 (List!50671) Bool)

(assert (=> d!1380955 (= res!1870755 (isStrictlySorted!399 (toList!4259 lm!1477)))))

(assert (=> d!1380955 (= (lemmaGetValueByKeyImpliesContainsTuple!638 (toList!4259 lm!1477) hash!344 lt!1680975) lt!1681196)))

(declare-fun b!4500069 () Bool)

(assert (=> b!4500069 (= e!2803124 (= (getValueByKey!1029 (toList!4259 lm!1477) hash!344) (Some!11048 lt!1680975)))))

(assert (= (and d!1380955 res!1870755) b!4500069))

(declare-fun m!5230525 () Bool)

(assert (=> d!1380955 m!5230525))

(declare-fun m!5230527 () Bool)

(assert (=> d!1380955 m!5230527))

(declare-fun m!5230529 () Bool)

(assert (=> d!1380955 m!5230529))

(assert (=> b!4500069 m!5230499))

(assert (=> b!4499780 d!1380955))

(declare-fun d!1380957 () Bool)

(declare-fun res!1870760 () Bool)

(declare-fun e!2803129 () Bool)

(assert (=> d!1380957 (=> res!1870760 e!2803129)))

(assert (=> d!1380957 (= res!1870760 (not ((_ is Cons!50546) newBucket!178)))))

(assert (=> d!1380957 (= (noDuplicateKeys!1126 newBucket!178) e!2803129)))

(declare-fun b!4500074 () Bool)

(declare-fun e!2803130 () Bool)

(assert (=> b!4500074 (= e!2803129 e!2803130)))

(declare-fun res!1870761 () Bool)

(assert (=> b!4500074 (=> (not res!1870761) (not e!2803130))))

(assert (=> b!4500074 (= res!1870761 (not (containsKey!1682 (t!357628 newBucket!178) (_1!28763 (h!56367 newBucket!178)))))))

(declare-fun b!4500075 () Bool)

(assert (=> b!4500075 (= e!2803130 (noDuplicateKeys!1126 (t!357628 newBucket!178)))))

(assert (= (and d!1380957 (not res!1870760)) b!4500074))

(assert (= (and b!4500074 res!1870761) b!4500075))

(declare-fun m!5230531 () Bool)

(assert (=> b!4500074 m!5230531))

(declare-fun m!5230533 () Bool)

(assert (=> b!4500075 m!5230533))

(assert (=> b!4499791 d!1380957))

(declare-fun bs!835912 () Bool)

(declare-fun d!1380959 () Bool)

(assert (= bs!835912 (and d!1380959 d!1380863)))

(declare-fun lambda!168766 () Int)

(assert (=> bs!835912 (= lambda!168766 lambda!168750)))

(declare-fun bs!835913 () Bool)

(assert (= bs!835913 (and d!1380959 d!1380861)))

(assert (=> bs!835913 (= lambda!168766 lambda!168734)))

(declare-fun bs!835914 () Bool)

(assert (= bs!835914 (and d!1380959 start!444228)))

(assert (=> bs!835914 (= lambda!168766 lambda!168721)))

(declare-fun bs!835915 () Bool)

(assert (= bs!835915 (and d!1380959 d!1380943)))

(assert (=> bs!835915 (= lambda!168766 lambda!168763)))

(declare-fun bs!835916 () Bool)

(assert (= bs!835916 (and d!1380959 d!1380837)))

(assert (=> bs!835916 (= lambda!168766 lambda!168731)))

(declare-fun bs!835917 () Bool)

(assert (= bs!835917 (and d!1380959 d!1380857)))

(assert (=> bs!835917 (= lambda!168766 lambda!168733)))

(assert (=> d!1380959 (not (contains!13219 (extractMap!1182 (toList!4259 lm!1477)) key!3287))))

(declare-fun lt!1681199 () Unit!91936)

(declare-fun choose!29132 (ListLongMap!2891 K!11955 Hashable!5521) Unit!91936)

(assert (=> d!1380959 (= lt!1681199 (choose!29132 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1380959 (forall!10179 (toList!4259 lm!1477) lambda!168766)))

(assert (=> d!1380959 (= (lemmaNotInItsHashBucketThenNotInMap!114 lm!1477 key!3287 hashF!1107) lt!1681199)))

(declare-fun bs!835918 () Bool)

(assert (= bs!835918 d!1380959))

(assert (=> bs!835918 m!5230055))

(assert (=> bs!835918 m!5230055))

(declare-fun m!5230535 () Bool)

(assert (=> bs!835918 m!5230535))

(declare-fun m!5230537 () Bool)

(assert (=> bs!835918 m!5230537))

(declare-fun m!5230539 () Bool)

(assert (=> bs!835918 m!5230539))

(assert (=> b!4499782 d!1380959))

(declare-fun d!1380961 () Bool)

(declare-fun e!2803131 () Bool)

(assert (=> d!1380961 e!2803131))

(declare-fun res!1870762 () Bool)

(assert (=> d!1380961 (=> (not res!1870762) (not e!2803131))))

(declare-fun lt!1681200 () ListLongMap!2891)

(assert (=> d!1380961 (= res!1870762 (contains!13221 lt!1681200 (_1!28764 lt!1680964)))))

(declare-fun lt!1681201 () List!50671)

(assert (=> d!1380961 (= lt!1681200 (ListLongMap!2892 lt!1681201))))

(declare-fun lt!1681202 () Unit!91936)

(declare-fun lt!1681203 () Unit!91936)

(assert (=> d!1380961 (= lt!1681202 lt!1681203)))

(assert (=> d!1380961 (= (getValueByKey!1029 lt!1681201 (_1!28764 lt!1680964)) (Some!11048 (_2!28764 lt!1680964)))))

(assert (=> d!1380961 (= lt!1681203 (lemmaContainsTupThenGetReturnValue!634 lt!1681201 (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))

(assert (=> d!1380961 (= lt!1681201 (insertStrictlySorted!376 (toList!4259 lt!1680973) (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))

(assert (=> d!1380961 (= (+!1474 lt!1680973 lt!1680964) lt!1681200)))

(declare-fun b!4500076 () Bool)

(declare-fun res!1870763 () Bool)

(assert (=> b!4500076 (=> (not res!1870763) (not e!2803131))))

(assert (=> b!4500076 (= res!1870763 (= (getValueByKey!1029 (toList!4259 lt!1681200) (_1!28764 lt!1680964)) (Some!11048 (_2!28764 lt!1680964))))))

(declare-fun b!4500077 () Bool)

(assert (=> b!4500077 (= e!2803131 (contains!13220 (toList!4259 lt!1681200) lt!1680964))))

(assert (= (and d!1380961 res!1870762) b!4500076))

(assert (= (and b!4500076 res!1870763) b!4500077))

(declare-fun m!5230541 () Bool)

(assert (=> d!1380961 m!5230541))

(declare-fun m!5230543 () Bool)

(assert (=> d!1380961 m!5230543))

(declare-fun m!5230545 () Bool)

(assert (=> d!1380961 m!5230545))

(declare-fun m!5230547 () Bool)

(assert (=> d!1380961 m!5230547))

(declare-fun m!5230549 () Bool)

(assert (=> b!4500076 m!5230549))

(declare-fun m!5230551 () Bool)

(assert (=> b!4500077 m!5230551))

(assert (=> b!4499794 d!1380961))

(declare-fun d!1380963 () Bool)

(declare-fun content!8262 (List!50670) (InoxSet tuple2!50938))

(assert (=> d!1380963 (= (eq!583 (extractMap!1182 (toList!4259 lt!1680963)) (-!352 lt!1680976 key!3287)) (= (content!8262 (toList!4260 (extractMap!1182 (toList!4259 lt!1680963)))) (content!8262 (toList!4260 (-!352 lt!1680976 key!3287)))))))

(declare-fun bs!835919 () Bool)

(assert (= bs!835919 d!1380963))

(declare-fun m!5230553 () Bool)

(assert (=> bs!835919 m!5230553))

(declare-fun m!5230555 () Bool)

(assert (=> bs!835919 m!5230555))

(assert (=> b!4499794 d!1380963))

(declare-fun d!1380965 () Bool)

(assert (=> d!1380965 (= (eq!583 lt!1680982 lt!1680967) (= (content!8262 (toList!4260 lt!1680982)) (content!8262 (toList!4260 lt!1680967))))))

(declare-fun bs!835920 () Bool)

(assert (= bs!835920 d!1380965))

(declare-fun m!5230557 () Bool)

(assert (=> bs!835920 m!5230557))

(declare-fun m!5230559 () Bool)

(assert (=> bs!835920 m!5230559))

(assert (=> b!4499794 d!1380965))

(declare-fun d!1380967 () Bool)

(declare-fun e!2803134 () Bool)

(assert (=> d!1380967 e!2803134))

(declare-fun res!1870766 () Bool)

(assert (=> d!1380967 (=> (not res!1870766) (not e!2803134))))

(declare-fun lt!1681206 () ListMap!3521)

(assert (=> d!1380967 (= res!1870766 (not (contains!13219 lt!1681206 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!109 (List!50670 K!11955) List!50670)

(assert (=> d!1380967 (= lt!1681206 (ListMap!3522 (removePresrvNoDuplicatedKeys!109 (toList!4260 lt!1680976) key!3287)))))

(assert (=> d!1380967 (= (-!352 lt!1680976 key!3287) lt!1681206)))

(declare-fun b!4500080 () Bool)

(declare-fun content!8263 (List!50673) (InoxSet K!11955))

(assert (=> b!4500080 (= e!2803134 (= ((_ map and) (content!8263 (keys!17526 lt!1680976)) ((_ map not) (store ((as const (Array K!11955 Bool)) false) key!3287 true))) (content!8263 (keys!17526 lt!1681206))))))

(assert (= (and d!1380967 res!1870766) b!4500080))

(declare-fun m!5230561 () Bool)

(assert (=> d!1380967 m!5230561))

(declare-fun m!5230563 () Bool)

(assert (=> d!1380967 m!5230563))

(declare-fun m!5230565 () Bool)

(assert (=> b!4500080 m!5230565))

(assert (=> b!4500080 m!5230565))

(declare-fun m!5230567 () Bool)

(assert (=> b!4500080 m!5230567))

(declare-fun m!5230569 () Bool)

(assert (=> b!4500080 m!5230569))

(assert (=> b!4500080 m!5230229))

(assert (=> b!4500080 m!5230229))

(declare-fun m!5230571 () Bool)

(assert (=> b!4500080 m!5230571))

(assert (=> b!4499794 d!1380967))

(declare-fun bs!835921 () Bool)

(declare-fun d!1380969 () Bool)

(assert (= bs!835921 (and d!1380969 d!1380959)))

(declare-fun lambda!168767 () Int)

(assert (=> bs!835921 (= lambda!168767 lambda!168766)))

(declare-fun bs!835922 () Bool)

(assert (= bs!835922 (and d!1380969 d!1380863)))

(assert (=> bs!835922 (= lambda!168767 lambda!168750)))

(declare-fun bs!835923 () Bool)

(assert (= bs!835923 (and d!1380969 d!1380861)))

(assert (=> bs!835923 (= lambda!168767 lambda!168734)))

(declare-fun bs!835924 () Bool)

(assert (= bs!835924 (and d!1380969 start!444228)))

(assert (=> bs!835924 (= lambda!168767 lambda!168721)))

(declare-fun bs!835925 () Bool)

(assert (= bs!835925 (and d!1380969 d!1380943)))

(assert (=> bs!835925 (= lambda!168767 lambda!168763)))

(declare-fun bs!835926 () Bool)

(assert (= bs!835926 (and d!1380969 d!1380837)))

(assert (=> bs!835926 (= lambda!168767 lambda!168731)))

(declare-fun bs!835927 () Bool)

(assert (= bs!835927 (and d!1380969 d!1380857)))

(assert (=> bs!835927 (= lambda!168767 lambda!168733)))

(declare-fun lt!1681207 () ListMap!3521)

(assert (=> d!1380969 (invariantList!985 (toList!4260 lt!1681207))))

(declare-fun e!2803135 () ListMap!3521)

(assert (=> d!1380969 (= lt!1681207 e!2803135)))

(declare-fun c!767052 () Bool)

(assert (=> d!1380969 (= c!767052 ((_ is Cons!50547) (toList!4259 lt!1680963)))))

(assert (=> d!1380969 (forall!10179 (toList!4259 lt!1680963) lambda!168767)))

(assert (=> d!1380969 (= (extractMap!1182 (toList!4259 lt!1680963)) lt!1681207)))

(declare-fun b!4500081 () Bool)

(assert (=> b!4500081 (= e!2803135 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (toList!4259 lt!1680963))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))))))

(declare-fun b!4500082 () Bool)

(assert (=> b!4500082 (= e!2803135 (ListMap!3522 Nil!50546))))

(assert (= (and d!1380969 c!767052) b!4500081))

(assert (= (and d!1380969 (not c!767052)) b!4500082))

(declare-fun m!5230573 () Bool)

(assert (=> d!1380969 m!5230573))

(declare-fun m!5230575 () Bool)

(assert (=> d!1380969 m!5230575))

(declare-fun m!5230577 () Bool)

(assert (=> b!4500081 m!5230577))

(assert (=> b!4500081 m!5230577))

(declare-fun m!5230579 () Bool)

(assert (=> b!4500081 m!5230579))

(assert (=> b!4499794 d!1380969))

(declare-fun bs!835928 () Bool)

(declare-fun d!1380971 () Bool)

(assert (= bs!835928 (and d!1380971 d!1380959)))

(declare-fun lambda!168770 () Int)

(assert (=> bs!835928 (= lambda!168770 lambda!168766)))

(declare-fun bs!835929 () Bool)

(assert (= bs!835929 (and d!1380971 d!1380863)))

(assert (=> bs!835929 (= lambda!168770 lambda!168750)))

(declare-fun bs!835930 () Bool)

(assert (= bs!835930 (and d!1380971 d!1380861)))

(assert (=> bs!835930 (= lambda!168770 lambda!168734)))

(declare-fun bs!835931 () Bool)

(assert (= bs!835931 (and d!1380971 start!444228)))

(assert (=> bs!835931 (= lambda!168770 lambda!168721)))

(declare-fun bs!835932 () Bool)

(assert (= bs!835932 (and d!1380971 d!1380969)))

(assert (=> bs!835932 (= lambda!168770 lambda!168767)))

(declare-fun bs!835933 () Bool)

(assert (= bs!835933 (and d!1380971 d!1380943)))

(assert (=> bs!835933 (= lambda!168770 lambda!168763)))

(declare-fun bs!835934 () Bool)

(assert (= bs!835934 (and d!1380971 d!1380837)))

(assert (=> bs!835934 (= lambda!168770 lambda!168731)))

(declare-fun bs!835935 () Bool)

(assert (= bs!835935 (and d!1380971 d!1380857)))

(assert (=> bs!835935 (= lambda!168770 lambda!168733)))

(assert (=> d!1380971 (eq!583 (extractMap!1182 (toList!4259 (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178)))) (-!352 (extractMap!1182 (toList!4259 lt!1680973)) key!3287))))

(declare-fun lt!1681210 () Unit!91936)

(declare-fun choose!29133 (ListLongMap!2891 (_ BitVec 64) List!50670 K!11955 Hashable!5521) Unit!91936)

(assert (=> d!1380971 (= lt!1681210 (choose!29133 lt!1680973 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1380971 (forall!10179 (toList!4259 lt!1680973) lambda!168770)))

(assert (=> d!1380971 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!111 lt!1680973 hash!344 newBucket!178 key!3287 hashF!1107) lt!1681210)))

(declare-fun bs!835936 () Bool)

(assert (= bs!835936 d!1380971))

(declare-fun m!5230581 () Bool)

(assert (=> bs!835936 m!5230581))

(declare-fun m!5230583 () Bool)

(assert (=> bs!835936 m!5230583))

(assert (=> bs!835936 m!5230025))

(assert (=> bs!835936 m!5230583))

(declare-fun m!5230585 () Bool)

(assert (=> bs!835936 m!5230585))

(declare-fun m!5230587 () Bool)

(assert (=> bs!835936 m!5230587))

(declare-fun m!5230589 () Bool)

(assert (=> bs!835936 m!5230589))

(declare-fun m!5230591 () Bool)

(assert (=> bs!835936 m!5230591))

(assert (=> bs!835936 m!5230025))

(assert (=> bs!835936 m!5230585))

(assert (=> b!4499794 d!1380971))

(declare-fun bs!835937 () Bool)

(declare-fun d!1380973 () Bool)

(assert (= bs!835937 (and d!1380973 d!1380959)))

(declare-fun lambda!168771 () Int)

(assert (=> bs!835937 (= lambda!168771 lambda!168766)))

(declare-fun bs!835938 () Bool)

(assert (= bs!835938 (and d!1380973 d!1380863)))

(assert (=> bs!835938 (= lambda!168771 lambda!168750)))

(declare-fun bs!835939 () Bool)

(assert (= bs!835939 (and d!1380973 d!1380861)))

(assert (=> bs!835939 (= lambda!168771 lambda!168734)))

(declare-fun bs!835940 () Bool)

(assert (= bs!835940 (and d!1380973 start!444228)))

(assert (=> bs!835940 (= lambda!168771 lambda!168721)))

(declare-fun bs!835941 () Bool)

(assert (= bs!835941 (and d!1380973 d!1380969)))

(assert (=> bs!835941 (= lambda!168771 lambda!168767)))

(declare-fun bs!835942 () Bool)

(assert (= bs!835942 (and d!1380973 d!1380971)))

(assert (=> bs!835942 (= lambda!168771 lambda!168770)))

(declare-fun bs!835943 () Bool)

(assert (= bs!835943 (and d!1380973 d!1380943)))

(assert (=> bs!835943 (= lambda!168771 lambda!168763)))

(declare-fun bs!835944 () Bool)

(assert (= bs!835944 (and d!1380973 d!1380837)))

(assert (=> bs!835944 (= lambda!168771 lambda!168731)))

(declare-fun bs!835945 () Bool)

(assert (= bs!835945 (and d!1380973 d!1380857)))

(assert (=> bs!835945 (= lambda!168771 lambda!168733)))

(declare-fun lt!1681211 () ListMap!3521)

(assert (=> d!1380973 (invariantList!985 (toList!4260 lt!1681211))))

(declare-fun e!2803136 () ListMap!3521)

(assert (=> d!1380973 (= lt!1681211 e!2803136)))

(declare-fun c!767053 () Bool)

(assert (=> d!1380973 (= c!767053 ((_ is Cons!50547) (toList!4259 (+!1474 lt!1680973 lt!1680964))))))

(assert (=> d!1380973 (forall!10179 (toList!4259 (+!1474 lt!1680973 lt!1680964)) lambda!168771)))

(assert (=> d!1380973 (= (extractMap!1182 (toList!4259 (+!1474 lt!1680973 lt!1680964))) lt!1681211)))

(declare-fun b!4500083 () Bool)

(assert (=> b!4500083 (= e!2803136 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))))))

(declare-fun b!4500084 () Bool)

(assert (=> b!4500084 (= e!2803136 (ListMap!3522 Nil!50546))))

(assert (= (and d!1380973 c!767053) b!4500083))

(assert (= (and d!1380973 (not c!767053)) b!4500084))

(declare-fun m!5230593 () Bool)

(assert (=> d!1380973 m!5230593))

(declare-fun m!5230595 () Bool)

(assert (=> d!1380973 m!5230595))

(declare-fun m!5230597 () Bool)

(assert (=> b!4500083 m!5230597))

(assert (=> b!4500083 m!5230597))

(declare-fun m!5230599 () Bool)

(assert (=> b!4500083 m!5230599))

(assert (=> b!4499794 d!1380973))

(declare-fun d!1380975 () Bool)

(declare-fun e!2803137 () Bool)

(assert (=> d!1380975 e!2803137))

(declare-fun res!1870767 () Bool)

(assert (=> d!1380975 (=> (not res!1870767) (not e!2803137))))

(declare-fun lt!1681212 () ListLongMap!2891)

(assert (=> d!1380975 (= res!1870767 (contains!13221 lt!1681212 (_1!28764 lt!1680977)))))

(declare-fun lt!1681213 () List!50671)

(assert (=> d!1380975 (= lt!1681212 (ListLongMap!2892 lt!1681213))))

(declare-fun lt!1681214 () Unit!91936)

(declare-fun lt!1681215 () Unit!91936)

(assert (=> d!1380975 (= lt!1681214 lt!1681215)))

(assert (=> d!1380975 (= (getValueByKey!1029 lt!1681213 (_1!28764 lt!1680977)) (Some!11048 (_2!28764 lt!1680977)))))

(assert (=> d!1380975 (= lt!1681215 (lemmaContainsTupThenGetReturnValue!634 lt!1681213 (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))

(assert (=> d!1380975 (= lt!1681213 (insertStrictlySorted!376 (toList!4259 lt!1680973) (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))

(assert (=> d!1380975 (= (+!1474 lt!1680973 lt!1680977) lt!1681212)))

(declare-fun b!4500085 () Bool)

(declare-fun res!1870768 () Bool)

(assert (=> b!4500085 (=> (not res!1870768) (not e!2803137))))

(assert (=> b!4500085 (= res!1870768 (= (getValueByKey!1029 (toList!4259 lt!1681212) (_1!28764 lt!1680977)) (Some!11048 (_2!28764 lt!1680977))))))

(declare-fun b!4500086 () Bool)

(assert (=> b!4500086 (= e!2803137 (contains!13220 (toList!4259 lt!1681212) lt!1680977))))

(assert (= (and d!1380975 res!1870767) b!4500085))

(assert (= (and b!4500085 res!1870768) b!4500086))

(declare-fun m!5230601 () Bool)

(assert (=> d!1380975 m!5230601))

(declare-fun m!5230603 () Bool)

(assert (=> d!1380975 m!5230603))

(declare-fun m!5230605 () Bool)

(assert (=> d!1380975 m!5230605))

(declare-fun m!5230607 () Bool)

(assert (=> d!1380975 m!5230607))

(declare-fun m!5230609 () Bool)

(assert (=> b!4500085 m!5230609))

(declare-fun m!5230611 () Bool)

(assert (=> b!4500086 m!5230611))

(assert (=> b!4499794 d!1380975))

(declare-fun d!1380977 () Bool)

(assert (=> d!1380977 (= (head!9346 lm!1477) (head!9348 (toList!4259 lm!1477)))))

(declare-fun bs!835946 () Bool)

(assert (= bs!835946 d!1380977))

(declare-fun m!5230613 () Bool)

(assert (=> bs!835946 m!5230613))

(assert (=> b!4499794 d!1380977))

(declare-fun d!1380979 () Bool)

(declare-fun res!1870775 () Bool)

(declare-fun e!2803146 () Bool)

(assert (=> d!1380979 (=> res!1870775 e!2803146)))

(declare-fun e!2803144 () Bool)

(assert (=> d!1380979 (= res!1870775 e!2803144)))

(declare-fun res!1870776 () Bool)

(assert (=> d!1380979 (=> (not res!1870776) (not e!2803144))))

(assert (=> d!1380979 (= res!1870776 ((_ is Cons!50547) (t!357629 (toList!4259 lm!1477))))))

(assert (=> d!1380979 (= (containsKeyBiggerList!106 (t!357629 (toList!4259 lm!1477)) key!3287) e!2803146)))

(declare-fun b!4500093 () Bool)

(assert (=> b!4500093 (= e!2803144 (containsKey!1682 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(declare-fun b!4500094 () Bool)

(declare-fun e!2803145 () Bool)

(assert (=> b!4500094 (= e!2803146 e!2803145)))

(declare-fun res!1870777 () Bool)

(assert (=> b!4500094 (=> (not res!1870777) (not e!2803145))))

(assert (=> b!4500094 (= res!1870777 ((_ is Cons!50547) (t!357629 (toList!4259 lm!1477))))))

(declare-fun b!4500095 () Bool)

(assert (=> b!4500095 (= e!2803145 (containsKeyBiggerList!106 (t!357629 (t!357629 (toList!4259 lm!1477))) key!3287))))

(assert (= (and d!1380979 res!1870776) b!4500093))

(assert (= (and d!1380979 (not res!1870775)) b!4500094))

(assert (= (and b!4500094 res!1870777) b!4500095))

(declare-fun m!5230615 () Bool)

(assert (=> b!4500093 m!5230615))

(declare-fun m!5230617 () Bool)

(assert (=> b!4500095 m!5230617))

(assert (=> b!4499783 d!1380979))

(declare-fun d!1380981 () Bool)

(declare-fun res!1870778 () Bool)

(declare-fun e!2803149 () Bool)

(assert (=> d!1380981 (=> res!1870778 e!2803149)))

(declare-fun e!2803147 () Bool)

(assert (=> d!1380981 (= res!1870778 e!2803147)))

(declare-fun res!1870779 () Bool)

(assert (=> d!1380981 (=> (not res!1870779) (not e!2803147))))

(assert (=> d!1380981 (= res!1870779 ((_ is Cons!50547) (toList!4259 lt!1680973)))))

(assert (=> d!1380981 (= (containsKeyBiggerList!106 (toList!4259 lt!1680973) key!3287) e!2803149)))

(declare-fun b!4500096 () Bool)

(assert (=> b!4500096 (= e!2803147 (containsKey!1682 (_2!28764 (h!56368 (toList!4259 lt!1680973))) key!3287))))

(declare-fun b!4500097 () Bool)

(declare-fun e!2803148 () Bool)

(assert (=> b!4500097 (= e!2803149 e!2803148)))

(declare-fun res!1870780 () Bool)

(assert (=> b!4500097 (=> (not res!1870780) (not e!2803148))))

(assert (=> b!4500097 (= res!1870780 ((_ is Cons!50547) (toList!4259 lt!1680973)))))

(declare-fun b!4500098 () Bool)

(assert (=> b!4500098 (= e!2803148 (containsKeyBiggerList!106 (t!357629 (toList!4259 lt!1680973)) key!3287))))

(assert (= (and d!1380981 res!1870779) b!4500096))

(assert (= (and d!1380981 (not res!1870778)) b!4500097))

(assert (= (and b!4500097 res!1870780) b!4500098))

(declare-fun m!5230619 () Bool)

(assert (=> b!4500096 m!5230619))

(declare-fun m!5230621 () Bool)

(assert (=> b!4500098 m!5230621))

(assert (=> b!4499783 d!1380981))

(declare-fun bs!835947 () Bool)

(declare-fun d!1380983 () Bool)

(assert (= bs!835947 (and d!1380983 d!1380959)))

(declare-fun lambda!168774 () Int)

(assert (=> bs!835947 (= lambda!168774 lambda!168766)))

(declare-fun bs!835948 () Bool)

(assert (= bs!835948 (and d!1380983 d!1380863)))

(assert (=> bs!835948 (= lambda!168774 lambda!168750)))

(declare-fun bs!835949 () Bool)

(assert (= bs!835949 (and d!1380983 d!1380861)))

(assert (=> bs!835949 (= lambda!168774 lambda!168734)))

(declare-fun bs!835950 () Bool)

(assert (= bs!835950 (and d!1380983 start!444228)))

(assert (=> bs!835950 (= lambda!168774 lambda!168721)))

(declare-fun bs!835951 () Bool)

(assert (= bs!835951 (and d!1380983 d!1380969)))

(assert (=> bs!835951 (= lambda!168774 lambda!168767)))

(declare-fun bs!835952 () Bool)

(assert (= bs!835952 (and d!1380983 d!1380971)))

(assert (=> bs!835952 (= lambda!168774 lambda!168770)))

(declare-fun bs!835953 () Bool)

(assert (= bs!835953 (and d!1380983 d!1380943)))

(assert (=> bs!835953 (= lambda!168774 lambda!168763)))

(declare-fun bs!835954 () Bool)

(assert (= bs!835954 (and d!1380983 d!1380973)))

(assert (=> bs!835954 (= lambda!168774 lambda!168771)))

(declare-fun bs!835955 () Bool)

(assert (= bs!835955 (and d!1380983 d!1380837)))

(assert (=> bs!835955 (= lambda!168774 lambda!168731)))

(declare-fun bs!835956 () Bool)

(assert (= bs!835956 (and d!1380983 d!1380857)))

(assert (=> bs!835956 (= lambda!168774 lambda!168733)))

(assert (=> d!1380983 (containsKeyBiggerList!106 (toList!4259 lt!1680973) key!3287)))

(declare-fun lt!1681218 () Unit!91936)

(declare-fun choose!29134 (ListLongMap!2891 K!11955 Hashable!5521) Unit!91936)

(assert (=> d!1380983 (= lt!1681218 (choose!29134 lt!1680973 key!3287 hashF!1107))))

(assert (=> d!1380983 (forall!10179 (toList!4259 lt!1680973) lambda!168774)))

(assert (=> d!1380983 (= (lemmaInLongMapThenContainsKeyBiggerList!42 lt!1680973 key!3287 hashF!1107) lt!1681218)))

(declare-fun bs!835957 () Bool)

(assert (= bs!835957 d!1380983))

(assert (=> bs!835957 m!5230047))

(declare-fun m!5230623 () Bool)

(assert (=> bs!835957 m!5230623))

(declare-fun m!5230625 () Bool)

(assert (=> bs!835957 m!5230625))

(assert (=> b!4499783 d!1380983))

(declare-fun d!1380985 () Bool)

(declare-fun res!1870785 () Bool)

(declare-fun e!2803154 () Bool)

(assert (=> d!1380985 (=> res!1870785 e!2803154)))

(assert (=> d!1380985 (= res!1870785 ((_ is Nil!50547) (toList!4259 lm!1477)))))

(assert (=> d!1380985 (= (forall!10179 (toList!4259 lm!1477) lambda!168721) e!2803154)))

(declare-fun b!4500103 () Bool)

(declare-fun e!2803155 () Bool)

(assert (=> b!4500103 (= e!2803154 e!2803155)))

(declare-fun res!1870786 () Bool)

(assert (=> b!4500103 (=> (not res!1870786) (not e!2803155))))

(assert (=> b!4500103 (= res!1870786 (dynLambda!21109 lambda!168721 (h!56368 (toList!4259 lm!1477))))))

(declare-fun b!4500104 () Bool)

(assert (=> b!4500104 (= e!2803155 (forall!10179 (t!357629 (toList!4259 lm!1477)) lambda!168721))))

(assert (= (and d!1380985 (not res!1870785)) b!4500103))

(assert (= (and b!4500103 res!1870786) b!4500104))

(declare-fun b_lambda!152315 () Bool)

(assert (=> (not b_lambda!152315) (not b!4500103)))

(declare-fun m!5230627 () Bool)

(assert (=> b!4500103 m!5230627))

(declare-fun m!5230629 () Bool)

(assert (=> b!4500104 m!5230629))

(assert (=> start!444228 d!1380985))

(declare-fun d!1380987 () Bool)

(assert (=> d!1380987 (= (inv!66139 lm!1477) (isStrictlySorted!399 (toList!4259 lm!1477)))))

(declare-fun bs!835958 () Bool)

(assert (= bs!835958 d!1380987))

(assert (=> bs!835958 m!5230529))

(assert (=> start!444228 d!1380987))

(declare-fun bs!835959 () Bool)

(declare-fun d!1380989 () Bool)

(assert (= bs!835959 (and d!1380989 d!1380959)))

(declare-fun lambda!168777 () Int)

(assert (=> bs!835959 (not (= lambda!168777 lambda!168766))))

(declare-fun bs!835960 () Bool)

(assert (= bs!835960 (and d!1380989 d!1380863)))

(assert (=> bs!835960 (not (= lambda!168777 lambda!168750))))

(declare-fun bs!835961 () Bool)

(assert (= bs!835961 (and d!1380989 d!1380861)))

(assert (=> bs!835961 (not (= lambda!168777 lambda!168734))))

(declare-fun bs!835962 () Bool)

(assert (= bs!835962 (and d!1380989 start!444228)))

(assert (=> bs!835962 (not (= lambda!168777 lambda!168721))))

(declare-fun bs!835963 () Bool)

(assert (= bs!835963 (and d!1380989 d!1380969)))

(assert (=> bs!835963 (not (= lambda!168777 lambda!168767))))

(declare-fun bs!835964 () Bool)

(assert (= bs!835964 (and d!1380989 d!1380971)))

(assert (=> bs!835964 (not (= lambda!168777 lambda!168770))))

(declare-fun bs!835965 () Bool)

(assert (= bs!835965 (and d!1380989 d!1380983)))

(assert (=> bs!835965 (not (= lambda!168777 lambda!168774))))

(declare-fun bs!835966 () Bool)

(assert (= bs!835966 (and d!1380989 d!1380943)))

(assert (=> bs!835966 (not (= lambda!168777 lambda!168763))))

(declare-fun bs!835967 () Bool)

(assert (= bs!835967 (and d!1380989 d!1380973)))

(assert (=> bs!835967 (not (= lambda!168777 lambda!168771))))

(declare-fun bs!835968 () Bool)

(assert (= bs!835968 (and d!1380989 d!1380837)))

(assert (=> bs!835968 (not (= lambda!168777 lambda!168731))))

(declare-fun bs!835969 () Bool)

(assert (= bs!835969 (and d!1380989 d!1380857)))

(assert (=> bs!835969 (not (= lambda!168777 lambda!168733))))

(assert (=> d!1380989 true))

(assert (=> d!1380989 (= (allKeysSameHashInMap!1233 lm!1477 hashF!1107) (forall!10179 (toList!4259 lm!1477) lambda!168777))))

(declare-fun bs!835970 () Bool)

(assert (= bs!835970 d!1380989))

(declare-fun m!5230631 () Bool)

(assert (=> bs!835970 m!5230631))

(assert (=> b!4499785 d!1380989))

(declare-fun d!1380991 () Bool)

(declare-fun hash!2695 (Hashable!5521 K!11955) (_ BitVec 64))

(assert (=> d!1380991 (= (hash!2691 hashF!1107 key!3287) (hash!2695 hashF!1107 key!3287))))

(declare-fun bs!835971 () Bool)

(assert (= bs!835971 d!1380991))

(declare-fun m!5230633 () Bool)

(assert (=> bs!835971 m!5230633))

(assert (=> b!4499795 d!1380991))

(declare-fun d!1380993 () Bool)

(assert (=> d!1380993 (= (eq!583 lt!1680967 lt!1680982) (= (content!8262 (toList!4260 lt!1680967)) (content!8262 (toList!4260 lt!1680982))))))

(declare-fun bs!835972 () Bool)

(assert (= bs!835972 d!1380993))

(assert (=> bs!835972 m!5230559))

(assert (=> bs!835972 m!5230557))

(assert (=> b!4499796 d!1380993))

(declare-fun e!2803158 () Bool)

(declare-fun tp!1337519 () Bool)

(declare-fun b!4500111 () Bool)

(assert (=> b!4500111 (= e!2803158 (and tp_is_empty!27781 tp_is_empty!27783 tp!1337519))))

(assert (=> b!4499784 (= tp!1337506 e!2803158)))

(assert (= (and b!4499784 ((_ is Cons!50546) (t!357628 newBucket!178))) b!4500111))

(declare-fun b!4500116 () Bool)

(declare-fun e!2803161 () Bool)

(declare-fun tp!1337524 () Bool)

(declare-fun tp!1337525 () Bool)

(assert (=> b!4500116 (= e!2803161 (and tp!1337524 tp!1337525))))

(assert (=> b!4499786 (= tp!1337507 e!2803161)))

(assert (= (and b!4499786 ((_ is Cons!50547) (toList!4259 lm!1477))) b!4500116))

(declare-fun b_lambda!152317 () Bool)

(assert (= b_lambda!152315 (or start!444228 b_lambda!152317)))

(declare-fun bs!835973 () Bool)

(declare-fun d!1380995 () Bool)

(assert (= bs!835973 (and d!1380995 start!444228)))

(assert (=> bs!835973 (= (dynLambda!21109 lambda!168721 (h!56368 (toList!4259 lm!1477))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lm!1477)))))))

(declare-fun m!5230635 () Bool)

(assert (=> bs!835973 m!5230635))

(assert (=> b!4500103 d!1380995))

(declare-fun b_lambda!152319 () Bool)

(assert (= b_lambda!152313 (or start!444228 b_lambda!152319)))

(declare-fun bs!835974 () Bool)

(declare-fun d!1380997 () Bool)

(assert (= bs!835974 (and d!1380997 start!444228)))

(assert (=> bs!835974 (= (dynLambda!21109 lambda!168721 lt!1680978) (noDuplicateKeys!1126 (_2!28764 lt!1680978)))))

(declare-fun m!5230637 () Bool)

(assert (=> bs!835974 m!5230637))

(assert (=> d!1380947 d!1380997))

(check-sat (not d!1380861) (not b!4500086) tp_is_empty!27783 (not b!4500096) (not bm!313205) (not b!4500066) (not d!1380953) (not b!4499857) (not d!1380923) (not b!4499921) (not d!1380883) (not b!4499918) (not d!1380991) (not b!4499962) (not b!4500080) (not b!4499917) (not b!4499904) (not b!4500111) (not b!4499905) (not d!1380863) (not d!1380929) (not b_lambda!152317) (not b!4500012) (not b!4499859) (not d!1380955) (not d!1380967) (not b!4499961) (not b!4499806) (not b!4499919) (not b!4500076) (not b!4499969) (not d!1380947) (not d!1380855) (not b!4499901) (not bm!313208) (not d!1380857) (not b!4499894) (not d!1380945) (not b!4499860) (not b!4500081) (not d!1380971) (not d!1380963) (not b!4499861) (not b!4500083) tp_is_empty!27781 (not d!1380961) (not b!4500050) (not d!1380949) (not b!4499970) (not d!1380969) (not d!1380943) (not d!1380921) (not d!1380933) (not b!4499922) (not b_lambda!152319) (not d!1380821) (not b!4499920) (not bs!835974) (not d!1380941) (not b!4500069) (not b!4499915) (not b!4500085) (not b!4499863) (not d!1380965) (not d!1380973) (not d!1380897) (not b!4500063) (not b!4499862) (not b!4500116) (not d!1380837) (not b!4500074) (not bm!313209) (not b!4499908) (not b!4499906) (not b!4500046) (not b!4499907) (not b!4499856) (not d!1380983) (not b!4500075) (not d!1380847) (not d!1380989) (not d!1380893) (not b!4500093) (not b!4499914) (not b!4500049) (not d!1380939) (not d!1380993) (not bs!835973) (not b!4500010) (not d!1380987) (not b!4500104) (not b!4500098) (not b!4500095) (not d!1380959) (not b!4500077) (not b!4500052) (not d!1380951) (not d!1380977) (not b!4499902) (not d!1380975) (not b!4499927))
(check-sat)
(get-model)

(declare-fun bs!835994 () Bool)

(declare-fun b!4500201 () Bool)

(assert (= bs!835994 (and b!4500201 d!1380929)))

(declare-fun lambda!168819 () Int)

(assert (=> bs!835994 (not (= lambda!168819 lambda!168760))))

(assert (=> b!4500201 true))

(declare-fun bs!835995 () Bool)

(declare-fun b!4500198 () Bool)

(assert (= bs!835995 (and b!4500198 d!1380929)))

(declare-fun lambda!168820 () Int)

(assert (=> bs!835995 (not (= lambda!168820 lambda!168760))))

(declare-fun bs!835996 () Bool)

(assert (= bs!835996 (and b!4500198 b!4500201)))

(assert (=> bs!835996 (= lambda!168820 lambda!168819)))

(assert (=> b!4500198 true))

(declare-fun lambda!168821 () Int)

(assert (=> bs!835995 (not (= lambda!168821 lambda!168760))))

(declare-fun lt!1681300 () ListMap!3521)

(assert (=> bs!835996 (= (= lt!1681300 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168821 lambda!168819))))

(assert (=> b!4500198 (= (= lt!1681300 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168821 lambda!168820))))

(assert (=> b!4500198 true))

(declare-fun bs!835997 () Bool)

(declare-fun d!1381003 () Bool)

(assert (= bs!835997 (and d!1381003 d!1380929)))

(declare-fun lambda!168822 () Int)

(assert (=> bs!835997 (not (= lambda!168822 lambda!168760))))

(declare-fun bs!835998 () Bool)

(assert (= bs!835998 (and d!1381003 b!4500201)))

(declare-fun lt!1681308 () ListMap!3521)

(assert (=> bs!835998 (= (= lt!1681308 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168822 lambda!168819))))

(declare-fun bs!835999 () Bool)

(assert (= bs!835999 (and d!1381003 b!4500198)))

(assert (=> bs!835999 (= (= lt!1681308 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168822 lambda!168820))))

(assert (=> bs!835999 (= (= lt!1681308 lt!1681300) (= lambda!168822 lambda!168821))))

(assert (=> d!1381003 true))

(declare-fun e!2803208 () ListMap!3521)

(assert (=> b!4500198 (= e!2803208 lt!1681300)))

(declare-fun lt!1681294 () ListMap!3521)

(declare-fun +!1475 (ListMap!3521 tuple2!50938) ListMap!3521)

(assert (=> b!4500198 (= lt!1681294 (+!1475 (extractMap!1182 (t!357629 (toList!4259 lt!1680963))) (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680963))))))))

(assert (=> b!4500198 (= lt!1681300 (addToMapMapFromBucket!653 (t!357628 (_2!28764 (h!56368 (toList!4259 lt!1680963)))) (+!1475 (extractMap!1182 (t!357629 (toList!4259 lt!1680963))) (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680963)))))))))

(declare-fun lt!1681307 () Unit!91936)

(declare-fun call!313223 () Unit!91936)

(assert (=> b!4500198 (= lt!1681307 call!313223)))

(assert (=> b!4500198 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) lambda!168820)))

(declare-fun lt!1681298 () Unit!91936)

(assert (=> b!4500198 (= lt!1681298 lt!1681307)))

(assert (=> b!4500198 (forall!10181 (toList!4260 lt!1681294) lambda!168821)))

(declare-fun lt!1681311 () Unit!91936)

(declare-fun Unit!91956 () Unit!91936)

(assert (=> b!4500198 (= lt!1681311 Unit!91956)))

(assert (=> b!4500198 (forall!10181 (t!357628 (_2!28764 (h!56368 (toList!4259 lt!1680963)))) lambda!168821)))

(declare-fun lt!1681293 () Unit!91936)

(declare-fun Unit!91957 () Unit!91936)

(assert (=> b!4500198 (= lt!1681293 Unit!91957)))

(declare-fun lt!1681291 () Unit!91936)

(declare-fun Unit!91958 () Unit!91936)

(assert (=> b!4500198 (= lt!1681291 Unit!91958)))

(declare-fun lt!1681306 () Unit!91936)

(declare-fun forallContained!2434 (List!50670 Int tuple2!50938) Unit!91936)

(assert (=> b!4500198 (= lt!1681306 (forallContained!2434 (toList!4260 lt!1681294) lambda!168821 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680963))))))))

(assert (=> b!4500198 (contains!13219 lt!1681294 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680963))))))))

(declare-fun lt!1681292 () Unit!91936)

(declare-fun Unit!91959 () Unit!91936)

(assert (=> b!4500198 (= lt!1681292 Unit!91959)))

(assert (=> b!4500198 (contains!13219 lt!1681300 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680963))))))))

(declare-fun lt!1681301 () Unit!91936)

(declare-fun Unit!91960 () Unit!91936)

(assert (=> b!4500198 (= lt!1681301 Unit!91960)))

(declare-fun call!313222 () Bool)

(assert (=> b!4500198 call!313222))

(declare-fun lt!1681310 () Unit!91936)

(declare-fun Unit!91961 () Unit!91936)

(assert (=> b!4500198 (= lt!1681310 Unit!91961)))

(assert (=> b!4500198 (forall!10181 (toList!4260 lt!1681294) lambda!168821)))

(declare-fun lt!1681302 () Unit!91936)

(declare-fun Unit!91962 () Unit!91936)

(assert (=> b!4500198 (= lt!1681302 Unit!91962)))

(declare-fun lt!1681305 () Unit!91936)

(declare-fun Unit!91963 () Unit!91936)

(assert (=> b!4500198 (= lt!1681305 Unit!91963)))

(declare-fun lt!1681309 () Unit!91936)

(declare-fun addForallContainsKeyThenBeforeAdding!307 (ListMap!3521 ListMap!3521 K!11955 V!12201) Unit!91936)

(assert (=> b!4500198 (= lt!1681309 (addForallContainsKeyThenBeforeAdding!307 (extractMap!1182 (t!357629 (toList!4259 lt!1680963))) lt!1681300 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680963))))) (_2!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680963)))))))))

(declare-fun call!313224 () Bool)

(assert (=> b!4500198 call!313224))

(declare-fun lt!1681303 () Unit!91936)

(assert (=> b!4500198 (= lt!1681303 lt!1681309)))

(assert (=> b!4500198 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) lambda!168821)))

(declare-fun lt!1681304 () Unit!91936)

(declare-fun Unit!91964 () Unit!91936)

(assert (=> b!4500198 (= lt!1681304 Unit!91964)))

(declare-fun res!1870818 () Bool)

(assert (=> b!4500198 (= res!1870818 (forall!10181 (_2!28764 (h!56368 (toList!4259 lt!1680963))) lambda!168821))))

(declare-fun e!2803209 () Bool)

(assert (=> b!4500198 (=> (not res!1870818) (not e!2803209))))

(assert (=> b!4500198 e!2803209))

(declare-fun lt!1681295 () Unit!91936)

(declare-fun Unit!91965 () Unit!91936)

(assert (=> b!4500198 (= lt!1681295 Unit!91965)))

(declare-fun b!4500199 () Bool)

(assert (=> b!4500199 (= e!2803209 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) lambda!168821))))

(declare-fun bm!313217 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!307 (ListMap!3521) Unit!91936)

(assert (=> bm!313217 (= call!313223 (lemmaContainsAllItsOwnKeys!307 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))))))

(assert (=> b!4500201 (= e!2803208 (extractMap!1182 (t!357629 (toList!4259 lt!1680963))))))

(declare-fun lt!1681299 () Unit!91936)

(assert (=> b!4500201 (= lt!1681299 call!313223)))

(assert (=> b!4500201 call!313224))

(declare-fun lt!1681296 () Unit!91936)

(assert (=> b!4500201 (= lt!1681296 lt!1681299)))

(assert (=> b!4500201 call!313222))

(declare-fun lt!1681297 () Unit!91936)

(declare-fun Unit!91966 () Unit!91936)

(assert (=> b!4500201 (= lt!1681297 Unit!91966)))

(declare-fun c!767078 () Bool)

(declare-fun bm!313218 () Bool)

(assert (=> bm!313218 (= call!313224 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (ite c!767078 lambda!168819 lambda!168821)))))

(declare-fun b!4500200 () Bool)

(declare-fun res!1870819 () Bool)

(declare-fun e!2803210 () Bool)

(assert (=> b!4500200 (=> (not res!1870819) (not e!2803210))))

(assert (=> b!4500200 (= res!1870819 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) lambda!168822))))

(assert (=> d!1381003 e!2803210))

(declare-fun res!1870820 () Bool)

(assert (=> d!1381003 (=> (not res!1870820) (not e!2803210))))

(assert (=> d!1381003 (= res!1870820 (forall!10181 (_2!28764 (h!56368 (toList!4259 lt!1680963))) lambda!168822))))

(assert (=> d!1381003 (= lt!1681308 e!2803208)))

(assert (=> d!1381003 (= c!767078 ((_ is Nil!50546) (_2!28764 (h!56368 (toList!4259 lt!1680963)))))))

(assert (=> d!1381003 (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lt!1680963))))))

(assert (=> d!1381003 (= (addToMapMapFromBucket!653 (_2!28764 (h!56368 (toList!4259 lt!1680963))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) lt!1681308)))

(declare-fun b!4500202 () Bool)

(assert (=> b!4500202 (= e!2803210 (invariantList!985 (toList!4260 lt!1681308)))))

(declare-fun bm!313219 () Bool)

(assert (=> bm!313219 (= call!313222 (forall!10181 (ite c!767078 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (_2!28764 (h!56368 (toList!4259 lt!1680963)))) (ite c!767078 lambda!168819 lambda!168821)))))

(assert (= (and d!1381003 c!767078) b!4500201))

(assert (= (and d!1381003 (not c!767078)) b!4500198))

(assert (= (and b!4500198 res!1870818) b!4500199))

(assert (= (or b!4500201 b!4500198) bm!313219))

(assert (= (or b!4500201 b!4500198) bm!313218))

(assert (= (or b!4500201 b!4500198) bm!313217))

(assert (= (and d!1381003 res!1870820) b!4500200))

(assert (= (and b!4500200 res!1870819) b!4500202))

(assert (=> b!4500198 m!5230577))

(declare-fun m!5230723 () Bool)

(assert (=> b!4500198 m!5230723))

(declare-fun m!5230725 () Bool)

(assert (=> b!4500198 m!5230725))

(declare-fun m!5230727 () Bool)

(assert (=> b!4500198 m!5230727))

(assert (=> b!4500198 m!5230725))

(assert (=> b!4500198 m!5230723))

(declare-fun m!5230729 () Bool)

(assert (=> b!4500198 m!5230729))

(assert (=> b!4500198 m!5230577))

(declare-fun m!5230731 () Bool)

(assert (=> b!4500198 m!5230731))

(declare-fun m!5230733 () Bool)

(assert (=> b!4500198 m!5230733))

(declare-fun m!5230735 () Bool)

(assert (=> b!4500198 m!5230735))

(declare-fun m!5230737 () Bool)

(assert (=> b!4500198 m!5230737))

(declare-fun m!5230739 () Bool)

(assert (=> b!4500198 m!5230739))

(declare-fun m!5230741 () Bool)

(assert (=> b!4500198 m!5230741))

(declare-fun m!5230743 () Bool)

(assert (=> b!4500198 m!5230743))

(declare-fun m!5230745 () Bool)

(assert (=> d!1381003 m!5230745))

(declare-fun m!5230747 () Bool)

(assert (=> d!1381003 m!5230747))

(declare-fun m!5230749 () Bool)

(assert (=> b!4500200 m!5230749))

(assert (=> b!4500199 m!5230733))

(declare-fun m!5230751 () Bool)

(assert (=> bm!313218 m!5230751))

(declare-fun m!5230753 () Bool)

(assert (=> b!4500202 m!5230753))

(assert (=> bm!313217 m!5230577))

(declare-fun m!5230755 () Bool)

(assert (=> bm!313217 m!5230755))

(declare-fun m!5230757 () Bool)

(assert (=> bm!313219 m!5230757))

(assert (=> b!4500081 d!1381003))

(declare-fun bs!836000 () Bool)

(declare-fun d!1381031 () Bool)

(assert (= bs!836000 (and d!1381031 d!1380959)))

(declare-fun lambda!168823 () Int)

(assert (=> bs!836000 (= lambda!168823 lambda!168766)))

(declare-fun bs!836001 () Bool)

(assert (= bs!836001 (and d!1381031 d!1380863)))

(assert (=> bs!836001 (= lambda!168823 lambda!168750)))

(declare-fun bs!836002 () Bool)

(assert (= bs!836002 (and d!1381031 d!1380861)))

(assert (=> bs!836002 (= lambda!168823 lambda!168734)))

(declare-fun bs!836003 () Bool)

(assert (= bs!836003 (and d!1381031 d!1380969)))

(assert (=> bs!836003 (= lambda!168823 lambda!168767)))

(declare-fun bs!836004 () Bool)

(assert (= bs!836004 (and d!1381031 d!1380971)))

(assert (=> bs!836004 (= lambda!168823 lambda!168770)))

(declare-fun bs!836005 () Bool)

(assert (= bs!836005 (and d!1381031 d!1380983)))

(assert (=> bs!836005 (= lambda!168823 lambda!168774)))

(declare-fun bs!836006 () Bool)

(assert (= bs!836006 (and d!1381031 d!1380943)))

(assert (=> bs!836006 (= lambda!168823 lambda!168763)))

(declare-fun bs!836007 () Bool)

(assert (= bs!836007 (and d!1381031 d!1380973)))

(assert (=> bs!836007 (= lambda!168823 lambda!168771)))

(declare-fun bs!836008 () Bool)

(assert (= bs!836008 (and d!1381031 d!1380837)))

(assert (=> bs!836008 (= lambda!168823 lambda!168731)))

(declare-fun bs!836009 () Bool)

(assert (= bs!836009 (and d!1381031 d!1380857)))

(assert (=> bs!836009 (= lambda!168823 lambda!168733)))

(declare-fun bs!836010 () Bool)

(assert (= bs!836010 (and d!1381031 d!1380989)))

(assert (=> bs!836010 (not (= lambda!168823 lambda!168777))))

(declare-fun bs!836011 () Bool)

(assert (= bs!836011 (and d!1381031 start!444228)))

(assert (=> bs!836011 (= lambda!168823 lambda!168721)))

(declare-fun lt!1681312 () ListMap!3521)

(assert (=> d!1381031 (invariantList!985 (toList!4260 lt!1681312))))

(declare-fun e!2803211 () ListMap!3521)

(assert (=> d!1381031 (= lt!1681312 e!2803211)))

(declare-fun c!767079 () Bool)

(assert (=> d!1381031 (= c!767079 ((_ is Cons!50547) (t!357629 (toList!4259 lt!1680963))))))

(assert (=> d!1381031 (forall!10179 (t!357629 (toList!4259 lt!1680963)) lambda!168823)))

(assert (=> d!1381031 (= (extractMap!1182 (t!357629 (toList!4259 lt!1680963))) lt!1681312)))

(declare-fun b!4500205 () Bool)

(assert (=> b!4500205 (= e!2803211 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (t!357629 (toList!4259 lt!1680963)))) (extractMap!1182 (t!357629 (t!357629 (toList!4259 lt!1680963))))))))

(declare-fun b!4500206 () Bool)

(assert (=> b!4500206 (= e!2803211 (ListMap!3522 Nil!50546))))

(assert (= (and d!1381031 c!767079) b!4500205))

(assert (= (and d!1381031 (not c!767079)) b!4500206))

(declare-fun m!5230759 () Bool)

(assert (=> d!1381031 m!5230759))

(declare-fun m!5230761 () Bool)

(assert (=> d!1381031 m!5230761))

(declare-fun m!5230763 () Bool)

(assert (=> b!4500205 m!5230763))

(assert (=> b!4500205 m!5230763))

(declare-fun m!5230765 () Bool)

(assert (=> b!4500205 m!5230765))

(assert (=> b!4500081 d!1381031))

(declare-fun d!1381033 () Bool)

(assert (=> d!1381033 (= (get!16521 (getValueByKey!1029 (toList!4259 lm!1477) hash!344)) (v!44546 (getValueByKey!1029 (toList!4259 lm!1477) hash!344)))))

(assert (=> d!1380945 d!1381033))

(declare-fun b!4500218 () Bool)

(declare-fun e!2803217 () Option!11049)

(assert (=> b!4500218 (= e!2803217 None!11048)))

(declare-fun b!4500215 () Bool)

(declare-fun e!2803216 () Option!11049)

(assert (=> b!4500215 (= e!2803216 (Some!11048 (_2!28764 (h!56368 (toList!4259 lm!1477)))))))

(declare-fun d!1381035 () Bool)

(declare-fun c!767084 () Bool)

(assert (=> d!1381035 (= c!767084 (and ((_ is Cons!50547) (toList!4259 lm!1477)) (= (_1!28764 (h!56368 (toList!4259 lm!1477))) hash!344)))))

(assert (=> d!1381035 (= (getValueByKey!1029 (toList!4259 lm!1477) hash!344) e!2803216)))

(declare-fun b!4500216 () Bool)

(assert (=> b!4500216 (= e!2803216 e!2803217)))

(declare-fun c!767085 () Bool)

(assert (=> b!4500216 (= c!767085 (and ((_ is Cons!50547) (toList!4259 lm!1477)) (not (= (_1!28764 (h!56368 (toList!4259 lm!1477))) hash!344))))))

(declare-fun b!4500217 () Bool)

(assert (=> b!4500217 (= e!2803217 (getValueByKey!1029 (t!357629 (toList!4259 lm!1477)) hash!344))))

(assert (= (and d!1381035 c!767084) b!4500215))

(assert (= (and d!1381035 (not c!767084)) b!4500216))

(assert (= (and b!4500216 c!767085) b!4500217))

(assert (= (and b!4500216 (not c!767085)) b!4500218))

(declare-fun m!5230767 () Bool)

(assert (=> b!4500217 m!5230767))

(assert (=> d!1380945 d!1381035))

(declare-fun d!1381037 () Bool)

(declare-fun c!767088 () Bool)

(assert (=> d!1381037 (= c!767088 ((_ is Nil!50546) (toList!4260 lt!1680982)))))

(declare-fun e!2803220 () (InoxSet tuple2!50938))

(assert (=> d!1381037 (= (content!8262 (toList!4260 lt!1680982)) e!2803220)))

(declare-fun b!4500223 () Bool)

(assert (=> b!4500223 (= e!2803220 ((as const (Array tuple2!50938 Bool)) false))))

(declare-fun b!4500224 () Bool)

(assert (=> b!4500224 (= e!2803220 ((_ map or) (store ((as const (Array tuple2!50938 Bool)) false) (h!56367 (toList!4260 lt!1680982)) true) (content!8262 (t!357628 (toList!4260 lt!1680982)))))))

(assert (= (and d!1381037 c!767088) b!4500223))

(assert (= (and d!1381037 (not c!767088)) b!4500224))

(declare-fun m!5230769 () Bool)

(assert (=> b!4500224 m!5230769))

(declare-fun m!5230771 () Bool)

(assert (=> b!4500224 m!5230771))

(assert (=> d!1380965 d!1381037))

(declare-fun d!1381039 () Bool)

(declare-fun c!767089 () Bool)

(assert (=> d!1381039 (= c!767089 ((_ is Nil!50546) (toList!4260 lt!1680967)))))

(declare-fun e!2803221 () (InoxSet tuple2!50938))

(assert (=> d!1381039 (= (content!8262 (toList!4260 lt!1680967)) e!2803221)))

(declare-fun b!4500225 () Bool)

(assert (=> b!4500225 (= e!2803221 ((as const (Array tuple2!50938 Bool)) false))))

(declare-fun b!4500226 () Bool)

(assert (=> b!4500226 (= e!2803221 ((_ map or) (store ((as const (Array tuple2!50938 Bool)) false) (h!56367 (toList!4260 lt!1680967)) true) (content!8262 (t!357628 (toList!4260 lt!1680967)))))))

(assert (= (and d!1381039 c!767089) b!4500225))

(assert (= (and d!1381039 (not c!767089)) b!4500226))

(declare-fun m!5230773 () Bool)

(assert (=> b!4500226 m!5230773))

(declare-fun m!5230775 () Bool)

(assert (=> b!4500226 m!5230775))

(assert (=> d!1380965 d!1381039))

(declare-fun d!1381041 () Bool)

(assert (=> d!1381041 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1680973) hash!344))))

(declare-fun lt!1681315 () Unit!91936)

(declare-fun choose!29136 (List!50671 (_ BitVec 64)) Unit!91936)

(assert (=> d!1381041 (= lt!1681315 (choose!29136 (toList!4259 lt!1680973) hash!344))))

(declare-fun e!2803224 () Bool)

(assert (=> d!1381041 e!2803224))

(declare-fun res!1870823 () Bool)

(assert (=> d!1381041 (=> (not res!1870823) (not e!2803224))))

(assert (=> d!1381041 (= res!1870823 (isStrictlySorted!399 (toList!4259 lt!1680973)))))

(assert (=> d!1381041 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!933 (toList!4259 lt!1680973) hash!344) lt!1681315)))

(declare-fun b!4500229 () Bool)

(assert (=> b!4500229 (= e!2803224 (containsKey!1686 (toList!4259 lt!1680973) hash!344))))

(assert (= (and d!1381041 res!1870823) b!4500229))

(assert (=> d!1381041 m!5230455))

(assert (=> d!1381041 m!5230455))

(assert (=> d!1381041 m!5230457))

(declare-fun m!5230777 () Bool)

(assert (=> d!1381041 m!5230777))

(declare-fun m!5230779 () Bool)

(assert (=> d!1381041 m!5230779))

(assert (=> b!4500229 m!5230447))

(assert (=> b!4500010 d!1381041))

(declare-fun d!1381043 () Bool)

(declare-fun isEmpty!28606 (Option!11049) Bool)

(assert (=> d!1381043 (= (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1680973) hash!344)) (not (isEmpty!28606 (getValueByKey!1029 (toList!4259 lt!1680973) hash!344))))))

(declare-fun bs!836012 () Bool)

(assert (= bs!836012 d!1381043))

(assert (=> bs!836012 m!5230455))

(declare-fun m!5230781 () Bool)

(assert (=> bs!836012 m!5230781))

(assert (=> b!4500010 d!1381043))

(declare-fun b!4500233 () Bool)

(declare-fun e!2803226 () Option!11049)

(assert (=> b!4500233 (= e!2803226 None!11048)))

(declare-fun b!4500230 () Bool)

(declare-fun e!2803225 () Option!11049)

(assert (=> b!4500230 (= e!2803225 (Some!11048 (_2!28764 (h!56368 (toList!4259 lt!1680973)))))))

(declare-fun d!1381045 () Bool)

(declare-fun c!767090 () Bool)

(assert (=> d!1381045 (= c!767090 (and ((_ is Cons!50547) (toList!4259 lt!1680973)) (= (_1!28764 (h!56368 (toList!4259 lt!1680973))) hash!344)))))

(assert (=> d!1381045 (= (getValueByKey!1029 (toList!4259 lt!1680973) hash!344) e!2803225)))

(declare-fun b!4500231 () Bool)

(assert (=> b!4500231 (= e!2803225 e!2803226)))

(declare-fun c!767091 () Bool)

(assert (=> b!4500231 (= c!767091 (and ((_ is Cons!50547) (toList!4259 lt!1680973)) (not (= (_1!28764 (h!56368 (toList!4259 lt!1680973))) hash!344))))))

(declare-fun b!4500232 () Bool)

(assert (=> b!4500232 (= e!2803226 (getValueByKey!1029 (t!357629 (toList!4259 lt!1680973)) hash!344))))

(assert (= (and d!1381045 c!767090) b!4500230))

(assert (= (and d!1381045 (not c!767090)) b!4500231))

(assert (= (and b!4500231 c!767091) b!4500232))

(assert (= (and b!4500231 (not c!767091)) b!4500233))

(declare-fun m!5230783 () Bool)

(assert (=> b!4500232 m!5230783))

(assert (=> b!4500010 d!1381045))

(declare-fun d!1381047 () Bool)

(declare-fun noDuplicatedKeys!244 (List!50670) Bool)

(assert (=> d!1381047 (= (invariantList!985 (toList!4260 lt!1681211)) (noDuplicatedKeys!244 (toList!4260 lt!1681211)))))

(declare-fun bs!836013 () Bool)

(assert (= bs!836013 d!1381047))

(declare-fun m!5230785 () Bool)

(assert (=> bs!836013 m!5230785))

(assert (=> d!1380973 d!1381047))

(declare-fun d!1381049 () Bool)

(declare-fun res!1870824 () Bool)

(declare-fun e!2803227 () Bool)

(assert (=> d!1381049 (=> res!1870824 e!2803227)))

(assert (=> d!1381049 (= res!1870824 ((_ is Nil!50547) (toList!4259 (+!1474 lt!1680973 lt!1680964))))))

(assert (=> d!1381049 (= (forall!10179 (toList!4259 (+!1474 lt!1680973 lt!1680964)) lambda!168771) e!2803227)))

(declare-fun b!4500234 () Bool)

(declare-fun e!2803228 () Bool)

(assert (=> b!4500234 (= e!2803227 e!2803228)))

(declare-fun res!1870825 () Bool)

(assert (=> b!4500234 (=> (not res!1870825) (not e!2803228))))

(assert (=> b!4500234 (= res!1870825 (dynLambda!21109 lambda!168771 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))))

(declare-fun b!4500235 () Bool)

(assert (=> b!4500235 (= e!2803228 (forall!10179 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))) lambda!168771))))

(assert (= (and d!1381049 (not res!1870824)) b!4500234))

(assert (= (and b!4500234 res!1870825) b!4500235))

(declare-fun b_lambda!152323 () Bool)

(assert (=> (not b_lambda!152323) (not b!4500234)))

(declare-fun m!5230787 () Bool)

(assert (=> b!4500234 m!5230787))

(declare-fun m!5230789 () Bool)

(assert (=> b!4500235 m!5230789))

(assert (=> d!1380973 d!1381049))

(declare-fun d!1381051 () Bool)

(declare-fun lt!1681318 () Bool)

(assert (=> d!1381051 (= lt!1681318 (select (content!8263 (keys!17526 lt!1680976)) key!3287))))

(declare-fun e!2803234 () Bool)

(assert (=> d!1381051 (= lt!1681318 e!2803234)))

(declare-fun res!1870831 () Bool)

(assert (=> d!1381051 (=> (not res!1870831) (not e!2803234))))

(assert (=> d!1381051 (= res!1870831 ((_ is Cons!50549) (keys!17526 lt!1680976)))))

(assert (=> d!1381051 (= (contains!13223 (keys!17526 lt!1680976) key!3287) lt!1681318)))

(declare-fun b!4500240 () Bool)

(declare-fun e!2803233 () Bool)

(assert (=> b!4500240 (= e!2803234 e!2803233)))

(declare-fun res!1870830 () Bool)

(assert (=> b!4500240 (=> res!1870830 e!2803233)))

(assert (=> b!4500240 (= res!1870830 (= (h!56372 (keys!17526 lt!1680976)) key!3287))))

(declare-fun b!4500241 () Bool)

(assert (=> b!4500241 (= e!2803233 (contains!13223 (t!357631 (keys!17526 lt!1680976)) key!3287))))

(assert (= (and d!1381051 res!1870831) b!4500240))

(assert (= (and b!4500240 (not res!1870830)) b!4500241))

(assert (=> d!1381051 m!5230229))

(assert (=> d!1381051 m!5230571))

(declare-fun m!5230791 () Bool)

(assert (=> d!1381051 m!5230791))

(declare-fun m!5230793 () Bool)

(assert (=> b!4500241 m!5230793))

(assert (=> b!4499919 d!1381051))

(declare-fun b!4500249 () Bool)

(assert (=> b!4500249 true))

(declare-fun d!1381053 () Bool)

(declare-fun e!2803237 () Bool)

(assert (=> d!1381053 e!2803237))

(declare-fun res!1870838 () Bool)

(assert (=> d!1381053 (=> (not res!1870838) (not e!2803237))))

(declare-fun lt!1681321 () List!50673)

(declare-fun noDuplicate!729 (List!50673) Bool)

(assert (=> d!1381053 (= res!1870838 (noDuplicate!729 lt!1681321))))

(assert (=> d!1381053 (= lt!1681321 (getKeysList!433 (toList!4260 lt!1680976)))))

(assert (=> d!1381053 (= (keys!17526 lt!1680976) lt!1681321)))

(declare-fun b!4500248 () Bool)

(declare-fun res!1870839 () Bool)

(assert (=> b!4500248 (=> (not res!1870839) (not e!2803237))))

(declare-fun length!314 (List!50673) Int)

(declare-fun length!315 (List!50670) Int)

(assert (=> b!4500248 (= res!1870839 (= (length!314 lt!1681321) (length!315 (toList!4260 lt!1680976))))))

(declare-fun res!1870840 () Bool)

(assert (=> b!4500249 (=> (not res!1870840) (not e!2803237))))

(declare-fun lambda!168828 () Int)

(declare-fun forall!10182 (List!50673 Int) Bool)

(assert (=> b!4500249 (= res!1870840 (forall!10182 lt!1681321 lambda!168828))))

(declare-fun lambda!168829 () Int)

(declare-fun b!4500250 () Bool)

(declare-fun map!11103 (List!50670 Int) List!50673)

(assert (=> b!4500250 (= e!2803237 (= (content!8263 lt!1681321) (content!8263 (map!11103 (toList!4260 lt!1680976) lambda!168829))))))

(assert (= (and d!1381053 res!1870838) b!4500248))

(assert (= (and b!4500248 res!1870839) b!4500249))

(assert (= (and b!4500249 res!1870840) b!4500250))

(declare-fun m!5230795 () Bool)

(assert (=> d!1381053 m!5230795))

(assert (=> d!1381053 m!5230219))

(declare-fun m!5230797 () Bool)

(assert (=> b!4500248 m!5230797))

(declare-fun m!5230799 () Bool)

(assert (=> b!4500248 m!5230799))

(declare-fun m!5230801 () Bool)

(assert (=> b!4500249 m!5230801))

(declare-fun m!5230803 () Bool)

(assert (=> b!4500250 m!5230803))

(declare-fun m!5230805 () Bool)

(assert (=> b!4500250 m!5230805))

(assert (=> b!4500250 m!5230805))

(declare-fun m!5230807 () Bool)

(assert (=> b!4500250 m!5230807))

(assert (=> b!4499919 d!1381053))

(declare-fun d!1381055 () Bool)

(declare-fun lt!1681322 () Bool)

(assert (=> d!1381055 (= lt!1681322 (select (content!8261 (toList!4259 lt!1681124)) lt!1680964))))

(declare-fun e!2803239 () Bool)

(assert (=> d!1381055 (= lt!1681322 e!2803239)))

(declare-fun res!1870842 () Bool)

(assert (=> d!1381055 (=> (not res!1870842) (not e!2803239))))

(assert (=> d!1381055 (= res!1870842 ((_ is Cons!50547) (toList!4259 lt!1681124)))))

(assert (=> d!1381055 (= (contains!13220 (toList!4259 lt!1681124) lt!1680964) lt!1681322)))

(declare-fun b!4500253 () Bool)

(declare-fun e!2803238 () Bool)

(assert (=> b!4500253 (= e!2803239 e!2803238)))

(declare-fun res!1870841 () Bool)

(assert (=> b!4500253 (=> res!1870841 e!2803238)))

(assert (=> b!4500253 (= res!1870841 (= (h!56368 (toList!4259 lt!1681124)) lt!1680964))))

(declare-fun b!4500254 () Bool)

(assert (=> b!4500254 (= e!2803238 (contains!13220 (t!357629 (toList!4259 lt!1681124)) lt!1680964))))

(assert (= (and d!1381055 res!1870842) b!4500253))

(assert (= (and b!4500253 (not res!1870841)) b!4500254))

(declare-fun m!5230809 () Bool)

(assert (=> d!1381055 m!5230809))

(declare-fun m!5230811 () Bool)

(assert (=> d!1381055 m!5230811))

(declare-fun m!5230813 () Bool)

(assert (=> b!4500254 m!5230813))

(assert (=> b!4499970 d!1381055))

(declare-fun d!1381057 () Bool)

(declare-fun res!1870847 () Bool)

(declare-fun e!2803244 () Bool)

(assert (=> d!1381057 (=> res!1870847 e!2803244)))

(assert (=> d!1381057 (= res!1870847 (or ((_ is Nil!50547) (toList!4259 lm!1477)) ((_ is Nil!50547) (t!357629 (toList!4259 lm!1477)))))))

(assert (=> d!1381057 (= (isStrictlySorted!399 (toList!4259 lm!1477)) e!2803244)))

(declare-fun b!4500259 () Bool)

(declare-fun e!2803245 () Bool)

(assert (=> b!4500259 (= e!2803244 e!2803245)))

(declare-fun res!1870848 () Bool)

(assert (=> b!4500259 (=> (not res!1870848) (not e!2803245))))

(assert (=> b!4500259 (= res!1870848 (bvslt (_1!28764 (h!56368 (toList!4259 lm!1477))) (_1!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))))))

(declare-fun b!4500260 () Bool)

(assert (=> b!4500260 (= e!2803245 (isStrictlySorted!399 (t!357629 (toList!4259 lm!1477))))))

(assert (= (and d!1381057 (not res!1870847)) b!4500259))

(assert (= (and b!4500259 res!1870848) b!4500260))

(declare-fun m!5230815 () Bool)

(assert (=> b!4500260 m!5230815))

(assert (=> d!1380987 d!1381057))

(declare-fun d!1381059 () Bool)

(declare-fun lt!1681323 () Bool)

(assert (=> d!1381059 (= lt!1681323 (select (content!8263 (keys!17526 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) key!3287))))

(declare-fun e!2803247 () Bool)

(assert (=> d!1381059 (= lt!1681323 e!2803247)))

(declare-fun res!1870850 () Bool)

(assert (=> d!1381059 (=> (not res!1870850) (not e!2803247))))

(assert (=> d!1381059 (= res!1870850 ((_ is Cons!50549) (keys!17526 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))

(assert (=> d!1381059 (= (contains!13223 (keys!17526 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287) lt!1681323)))

(declare-fun b!4500261 () Bool)

(declare-fun e!2803246 () Bool)

(assert (=> b!4500261 (= e!2803247 e!2803246)))

(declare-fun res!1870849 () Bool)

(assert (=> b!4500261 (=> res!1870849 e!2803246)))

(assert (=> b!4500261 (= res!1870849 (= (h!56372 (keys!17526 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) key!3287))))

(declare-fun b!4500262 () Bool)

(assert (=> b!4500262 (= e!2803246 (contains!13223 (t!357631 (keys!17526 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) key!3287))))

(assert (= (and d!1381059 res!1870850) b!4500261))

(assert (= (and b!4500261 (not res!1870849)) b!4500262))

(assert (=> d!1381059 m!5230209))

(declare-fun m!5230817 () Bool)

(assert (=> d!1381059 m!5230817))

(declare-fun m!5230819 () Bool)

(assert (=> d!1381059 m!5230819))

(declare-fun m!5230821 () Bool)

(assert (=> b!4500262 m!5230821))

(assert (=> b!4499902 d!1381059))

(declare-fun bs!836014 () Bool)

(declare-fun b!4500264 () Bool)

(assert (= bs!836014 (and b!4500264 b!4500249)))

(declare-fun lambda!168830 () Int)

(assert (=> bs!836014 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (toList!4260 lt!1680976)) (= lambda!168830 lambda!168828))))

(assert (=> b!4500264 true))

(declare-fun bs!836015 () Bool)

(declare-fun b!4500265 () Bool)

(assert (= bs!836015 (and b!4500265 b!4500250)))

(declare-fun lambda!168831 () Int)

(assert (=> bs!836015 (= lambda!168831 lambda!168829)))

(declare-fun d!1381061 () Bool)

(declare-fun e!2803248 () Bool)

(assert (=> d!1381061 e!2803248))

(declare-fun res!1870851 () Bool)

(assert (=> d!1381061 (=> (not res!1870851) (not e!2803248))))

(declare-fun lt!1681324 () List!50673)

(assert (=> d!1381061 (= res!1870851 (noDuplicate!729 lt!1681324))))

(assert (=> d!1381061 (= lt!1681324 (getKeysList!433 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))

(assert (=> d!1381061 (= (keys!17526 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) lt!1681324)))

(declare-fun b!4500263 () Bool)

(declare-fun res!1870852 () Bool)

(assert (=> b!4500263 (=> (not res!1870852) (not e!2803248))))

(assert (=> b!4500263 (= res!1870852 (= (length!314 lt!1681324) (length!315 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))))

(declare-fun res!1870853 () Bool)

(assert (=> b!4500264 (=> (not res!1870853) (not e!2803248))))

(assert (=> b!4500264 (= res!1870853 (forall!10182 lt!1681324 lambda!168830))))

(assert (=> b!4500265 (= e!2803248 (= (content!8263 lt!1681324) (content!8263 (map!11103 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) lambda!168831))))))

(assert (= (and d!1381061 res!1870851) b!4500263))

(assert (= (and b!4500263 res!1870852) b!4500264))

(assert (= (and b!4500264 res!1870853) b!4500265))

(declare-fun m!5230823 () Bool)

(assert (=> d!1381061 m!5230823))

(assert (=> d!1381061 m!5230195))

(declare-fun m!5230825 () Bool)

(assert (=> b!4500263 m!5230825))

(declare-fun m!5230827 () Bool)

(assert (=> b!4500263 m!5230827))

(declare-fun m!5230829 () Bool)

(assert (=> b!4500264 m!5230829))

(declare-fun m!5230831 () Bool)

(assert (=> b!4500265 m!5230831))

(declare-fun m!5230833 () Bool)

(assert (=> b!4500265 m!5230833))

(assert (=> b!4500265 m!5230833))

(declare-fun m!5230835 () Bool)

(assert (=> b!4500265 m!5230835))

(assert (=> b!4499902 d!1381061))

(declare-fun d!1381063 () Bool)

(assert (=> d!1381063 (isDefined!8336 (getValueByKey!1029 (toList!4259 lm!1477) lt!1680971))))

(declare-fun lt!1681325 () Unit!91936)

(assert (=> d!1381063 (= lt!1681325 (choose!29136 (toList!4259 lm!1477) lt!1680971))))

(declare-fun e!2803249 () Bool)

(assert (=> d!1381063 e!2803249))

(declare-fun res!1870854 () Bool)

(assert (=> d!1381063 (=> (not res!1870854) (not e!2803249))))

(assert (=> d!1381063 (= res!1870854 (isStrictlySorted!399 (toList!4259 lm!1477)))))

(assert (=> d!1381063 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!933 (toList!4259 lm!1477) lt!1680971) lt!1681325)))

(declare-fun b!4500266 () Bool)

(assert (=> b!4500266 (= e!2803249 (containsKey!1686 (toList!4259 lm!1477) lt!1680971))))

(assert (= (and d!1381063 res!1870854) b!4500266))

(assert (=> d!1381063 m!5230511))

(assert (=> d!1381063 m!5230511))

(assert (=> d!1381063 m!5230513))

(declare-fun m!5230837 () Bool)

(assert (=> d!1381063 m!5230837))

(assert (=> d!1381063 m!5230529))

(assert (=> b!4500266 m!5230507))

(assert (=> b!4500050 d!1381063))

(declare-fun d!1381065 () Bool)

(assert (=> d!1381065 (= (isDefined!8336 (getValueByKey!1029 (toList!4259 lm!1477) lt!1680971)) (not (isEmpty!28606 (getValueByKey!1029 (toList!4259 lm!1477) lt!1680971))))))

(declare-fun bs!836016 () Bool)

(assert (= bs!836016 d!1381065))

(assert (=> bs!836016 m!5230511))

(declare-fun m!5230839 () Bool)

(assert (=> bs!836016 m!5230839))

(assert (=> b!4500050 d!1381065))

(declare-fun b!4500270 () Bool)

(declare-fun e!2803251 () Option!11049)

(assert (=> b!4500270 (= e!2803251 None!11048)))

(declare-fun b!4500267 () Bool)

(declare-fun e!2803250 () Option!11049)

(assert (=> b!4500267 (= e!2803250 (Some!11048 (_2!28764 (h!56368 (toList!4259 lm!1477)))))))

(declare-fun d!1381067 () Bool)

(declare-fun c!767092 () Bool)

(assert (=> d!1381067 (= c!767092 (and ((_ is Cons!50547) (toList!4259 lm!1477)) (= (_1!28764 (h!56368 (toList!4259 lm!1477))) lt!1680971)))))

(assert (=> d!1381067 (= (getValueByKey!1029 (toList!4259 lm!1477) lt!1680971) e!2803250)))

(declare-fun b!4500268 () Bool)

(assert (=> b!4500268 (= e!2803250 e!2803251)))

(declare-fun c!767093 () Bool)

(assert (=> b!4500268 (= c!767093 (and ((_ is Cons!50547) (toList!4259 lm!1477)) (not (= (_1!28764 (h!56368 (toList!4259 lm!1477))) lt!1680971))))))

(declare-fun b!4500269 () Bool)

(assert (=> b!4500269 (= e!2803251 (getValueByKey!1029 (t!357629 (toList!4259 lm!1477)) lt!1680971))))

(assert (= (and d!1381067 c!767092) b!4500267))

(assert (= (and d!1381067 (not c!767092)) b!4500268))

(assert (= (and b!4500268 c!767093) b!4500269))

(assert (= (and b!4500268 (not c!767093)) b!4500270))

(declare-fun m!5230841 () Bool)

(assert (=> b!4500269 m!5230841))

(assert (=> b!4500050 d!1381067))

(assert (=> b!4500012 d!1381043))

(assert (=> b!4500012 d!1381045))

(declare-fun d!1381069 () Bool)

(declare-fun lt!1681326 () Bool)

(assert (=> d!1381069 (= lt!1681326 (select (content!8263 e!2803024) key!3287))))

(declare-fun e!2803253 () Bool)

(assert (=> d!1381069 (= lt!1681326 e!2803253)))

(declare-fun res!1870856 () Bool)

(assert (=> d!1381069 (=> (not res!1870856) (not e!2803253))))

(assert (=> d!1381069 (= res!1870856 ((_ is Cons!50549) e!2803024))))

(assert (=> d!1381069 (= (contains!13223 e!2803024 key!3287) lt!1681326)))

(declare-fun b!4500271 () Bool)

(declare-fun e!2803252 () Bool)

(assert (=> b!4500271 (= e!2803253 e!2803252)))

(declare-fun res!1870855 () Bool)

(assert (=> b!4500271 (=> res!1870855 e!2803252)))

(assert (=> b!4500271 (= res!1870855 (= (h!56372 e!2803024) key!3287))))

(declare-fun b!4500272 () Bool)

(assert (=> b!4500272 (= e!2803252 (contains!13223 (t!357631 e!2803024) key!3287))))

(assert (= (and d!1381069 res!1870856) b!4500271))

(assert (= (and b!4500271 (not res!1870855)) b!4500272))

(declare-fun m!5230843 () Bool)

(assert (=> d!1381069 m!5230843))

(declare-fun m!5230845 () Bool)

(assert (=> d!1381069 m!5230845))

(declare-fun m!5230847 () Bool)

(assert (=> b!4500272 m!5230847))

(assert (=> bm!313209 d!1381069))

(declare-fun d!1381071 () Bool)

(declare-fun res!1870861 () Bool)

(declare-fun e!2803258 () Bool)

(assert (=> d!1381071 (=> res!1870861 e!2803258)))

(assert (=> d!1381071 (= res!1870861 (and ((_ is Cons!50546) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= (_1!28763 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) key!3287)))))

(assert (=> d!1381071 (= (containsKey!1684 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287) e!2803258)))

(declare-fun b!4500277 () Bool)

(declare-fun e!2803259 () Bool)

(assert (=> b!4500277 (= e!2803258 e!2803259)))

(declare-fun res!1870862 () Bool)

(assert (=> b!4500277 (=> (not res!1870862) (not e!2803259))))

(assert (=> b!4500277 (= res!1870862 ((_ is Cons!50546) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))

(declare-fun b!4500278 () Bool)

(assert (=> b!4500278 (= e!2803259 (containsKey!1684 (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) key!3287))))

(assert (= (and d!1381071 (not res!1870861)) b!4500277))

(assert (= (and b!4500277 res!1870862) b!4500278))

(declare-fun m!5230849 () Bool)

(assert (=> b!4500278 m!5230849))

(assert (=> b!4499904 d!1381071))

(declare-fun d!1381073 () Bool)

(assert (=> d!1381073 (containsKey!1684 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287)))

(declare-fun lt!1681329 () Unit!91936)

(declare-fun choose!29137 (List!50670 K!11955) Unit!91936)

(assert (=> d!1381073 (= lt!1681329 (choose!29137 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(assert (=> d!1381073 (invariantList!985 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))

(assert (=> d!1381073 (= (lemmaInGetKeysListThenContainsKey!432 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287) lt!1681329)))

(declare-fun bs!836017 () Bool)

(assert (= bs!836017 d!1381073))

(assert (=> bs!836017 m!5230215))

(declare-fun m!5230851 () Bool)

(assert (=> bs!836017 m!5230851))

(declare-fun m!5230853 () Bool)

(assert (=> bs!836017 m!5230853))

(assert (=> b!4499904 d!1381073))

(assert (=> b!4500052 d!1381065))

(assert (=> b!4500052 d!1381067))

(declare-fun d!1381075 () Bool)

(declare-fun e!2803261 () Bool)

(assert (=> d!1381075 e!2803261))

(declare-fun res!1870863 () Bool)

(assert (=> d!1381075 (=> res!1870863 e!2803261)))

(declare-fun lt!1681330 () Bool)

(assert (=> d!1381075 (= res!1870863 (not lt!1681330))))

(declare-fun lt!1681332 () Bool)

(assert (=> d!1381075 (= lt!1681330 lt!1681332)))

(declare-fun lt!1681331 () Unit!91936)

(declare-fun e!2803260 () Unit!91936)

(assert (=> d!1381075 (= lt!1681331 e!2803260)))

(declare-fun c!767094 () Bool)

(assert (=> d!1381075 (= c!767094 lt!1681332)))

(assert (=> d!1381075 (= lt!1681332 (containsKey!1686 (toList!4259 lt!1681212) (_1!28764 lt!1680977)))))

(assert (=> d!1381075 (= (contains!13221 lt!1681212 (_1!28764 lt!1680977)) lt!1681330)))

(declare-fun b!4500279 () Bool)

(declare-fun lt!1681333 () Unit!91936)

(assert (=> b!4500279 (= e!2803260 lt!1681333)))

(assert (=> b!4500279 (= lt!1681333 (lemmaContainsKeyImpliesGetValueByKeyDefined!933 (toList!4259 lt!1681212) (_1!28764 lt!1680977)))))

(assert (=> b!4500279 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1681212) (_1!28764 lt!1680977)))))

(declare-fun b!4500280 () Bool)

(declare-fun Unit!91982 () Unit!91936)

(assert (=> b!4500280 (= e!2803260 Unit!91982)))

(declare-fun b!4500281 () Bool)

(assert (=> b!4500281 (= e!2803261 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1681212) (_1!28764 lt!1680977))))))

(assert (= (and d!1381075 c!767094) b!4500279))

(assert (= (and d!1381075 (not c!767094)) b!4500280))

(assert (= (and d!1381075 (not res!1870863)) b!4500281))

(declare-fun m!5230855 () Bool)

(assert (=> d!1381075 m!5230855))

(declare-fun m!5230857 () Bool)

(assert (=> b!4500279 m!5230857))

(assert (=> b!4500279 m!5230609))

(assert (=> b!4500279 m!5230609))

(declare-fun m!5230859 () Bool)

(assert (=> b!4500279 m!5230859))

(assert (=> b!4500281 m!5230609))

(assert (=> b!4500281 m!5230609))

(assert (=> b!4500281 m!5230859))

(assert (=> d!1380975 d!1381075))

(declare-fun b!4500285 () Bool)

(declare-fun e!2803263 () Option!11049)

(assert (=> b!4500285 (= e!2803263 None!11048)))

(declare-fun b!4500282 () Bool)

(declare-fun e!2803262 () Option!11049)

(assert (=> b!4500282 (= e!2803262 (Some!11048 (_2!28764 (h!56368 lt!1681213))))))

(declare-fun d!1381077 () Bool)

(declare-fun c!767095 () Bool)

(assert (=> d!1381077 (= c!767095 (and ((_ is Cons!50547) lt!1681213) (= (_1!28764 (h!56368 lt!1681213)) (_1!28764 lt!1680977))))))

(assert (=> d!1381077 (= (getValueByKey!1029 lt!1681213 (_1!28764 lt!1680977)) e!2803262)))

(declare-fun b!4500283 () Bool)

(assert (=> b!4500283 (= e!2803262 e!2803263)))

(declare-fun c!767096 () Bool)

(assert (=> b!4500283 (= c!767096 (and ((_ is Cons!50547) lt!1681213) (not (= (_1!28764 (h!56368 lt!1681213)) (_1!28764 lt!1680977)))))))

(declare-fun b!4500284 () Bool)

(assert (=> b!4500284 (= e!2803263 (getValueByKey!1029 (t!357629 lt!1681213) (_1!28764 lt!1680977)))))

(assert (= (and d!1381077 c!767095) b!4500282))

(assert (= (and d!1381077 (not c!767095)) b!4500283))

(assert (= (and b!4500283 c!767096) b!4500284))

(assert (= (and b!4500283 (not c!767096)) b!4500285))

(declare-fun m!5230861 () Bool)

(assert (=> b!4500284 m!5230861))

(assert (=> d!1380975 d!1381077))

(declare-fun d!1381079 () Bool)

(assert (=> d!1381079 (= (getValueByKey!1029 lt!1681213 (_1!28764 lt!1680977)) (Some!11048 (_2!28764 lt!1680977)))))

(declare-fun lt!1681336 () Unit!91936)

(declare-fun choose!29138 (List!50671 (_ BitVec 64) List!50670) Unit!91936)

(assert (=> d!1381079 (= lt!1681336 (choose!29138 lt!1681213 (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))

(declare-fun e!2803266 () Bool)

(assert (=> d!1381079 e!2803266))

(declare-fun res!1870868 () Bool)

(assert (=> d!1381079 (=> (not res!1870868) (not e!2803266))))

(assert (=> d!1381079 (= res!1870868 (isStrictlySorted!399 lt!1681213))))

(assert (=> d!1381079 (= (lemmaContainsTupThenGetReturnValue!634 lt!1681213 (_1!28764 lt!1680977) (_2!28764 lt!1680977)) lt!1681336)))

(declare-fun b!4500290 () Bool)

(declare-fun res!1870869 () Bool)

(assert (=> b!4500290 (=> (not res!1870869) (not e!2803266))))

(assert (=> b!4500290 (= res!1870869 (containsKey!1686 lt!1681213 (_1!28764 lt!1680977)))))

(declare-fun b!4500291 () Bool)

(assert (=> b!4500291 (= e!2803266 (contains!13220 lt!1681213 (tuple2!50941 (_1!28764 lt!1680977) (_2!28764 lt!1680977))))))

(assert (= (and d!1381079 res!1870868) b!4500290))

(assert (= (and b!4500290 res!1870869) b!4500291))

(assert (=> d!1381079 m!5230603))

(declare-fun m!5230863 () Bool)

(assert (=> d!1381079 m!5230863))

(declare-fun m!5230865 () Bool)

(assert (=> d!1381079 m!5230865))

(declare-fun m!5230867 () Bool)

(assert (=> b!4500290 m!5230867))

(declare-fun m!5230869 () Bool)

(assert (=> b!4500291 m!5230869))

(assert (=> d!1380975 d!1381079))

(declare-fun b!4500313 () Bool)

(declare-fun res!1870875 () Bool)

(declare-fun e!2803277 () Bool)

(assert (=> b!4500313 (=> (not res!1870875) (not e!2803277))))

(declare-fun lt!1681339 () List!50671)

(assert (=> b!4500313 (= res!1870875 (containsKey!1686 lt!1681339 (_1!28764 lt!1680977)))))

(declare-fun bm!313226 () Bool)

(declare-fun call!313233 () List!50671)

(declare-fun call!313231 () List!50671)

(assert (=> bm!313226 (= call!313233 call!313231)))

(declare-fun bm!313227 () Bool)

(declare-fun call!313232 () List!50671)

(assert (=> bm!313227 (= call!313232 call!313233)))

(declare-fun e!2803280 () List!50671)

(declare-fun c!767108 () Bool)

(declare-fun bm!313228 () Bool)

(declare-fun $colon$colon!897 (List!50671 tuple2!50940) List!50671)

(assert (=> bm!313228 (= call!313231 ($colon$colon!897 e!2803280 (ite c!767108 (h!56368 (toList!4259 lt!1680973)) (tuple2!50941 (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))))

(declare-fun c!767105 () Bool)

(assert (=> bm!313228 (= c!767105 c!767108)))

(declare-fun b!4500314 () Bool)

(declare-fun e!2803279 () List!50671)

(assert (=> b!4500314 (= e!2803279 call!313231)))

(declare-fun b!4500315 () Bool)

(declare-fun e!2803278 () List!50671)

(assert (=> b!4500315 (= e!2803278 call!313232)))

(declare-fun d!1381081 () Bool)

(assert (=> d!1381081 e!2803277))

(declare-fun res!1870874 () Bool)

(assert (=> d!1381081 (=> (not res!1870874) (not e!2803277))))

(assert (=> d!1381081 (= res!1870874 (isStrictlySorted!399 lt!1681339))))

(assert (=> d!1381081 (= lt!1681339 e!2803279)))

(assert (=> d!1381081 (= c!767108 (and ((_ is Cons!50547) (toList!4259 lt!1680973)) (bvslt (_1!28764 (h!56368 (toList!4259 lt!1680973))) (_1!28764 lt!1680977))))))

(assert (=> d!1381081 (isStrictlySorted!399 (toList!4259 lt!1680973))))

(assert (=> d!1381081 (= (insertStrictlySorted!376 (toList!4259 lt!1680973) (_1!28764 lt!1680977) (_2!28764 lt!1680977)) lt!1681339)))

(declare-fun b!4500312 () Bool)

(declare-fun c!767106 () Bool)

(declare-fun c!767107 () Bool)

(assert (=> b!4500312 (= e!2803280 (ite c!767106 (t!357629 (toList!4259 lt!1680973)) (ite c!767107 (Cons!50547 (h!56368 (toList!4259 lt!1680973)) (t!357629 (toList!4259 lt!1680973))) Nil!50547)))))

(declare-fun b!4500316 () Bool)

(assert (=> b!4500316 (= e!2803277 (contains!13220 lt!1681339 (tuple2!50941 (_1!28764 lt!1680977) (_2!28764 lt!1680977))))))

(declare-fun b!4500317 () Bool)

(assert (=> b!4500317 (= c!767107 (and ((_ is Cons!50547) (toList!4259 lt!1680973)) (bvsgt (_1!28764 (h!56368 (toList!4259 lt!1680973))) (_1!28764 lt!1680977))))))

(declare-fun e!2803281 () List!50671)

(assert (=> b!4500317 (= e!2803281 e!2803278)))

(declare-fun b!4500318 () Bool)

(assert (=> b!4500318 (= e!2803281 call!313233)))

(declare-fun b!4500319 () Bool)

(assert (=> b!4500319 (= e!2803280 (insertStrictlySorted!376 (t!357629 (toList!4259 lt!1680973)) (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))

(declare-fun b!4500320 () Bool)

(assert (=> b!4500320 (= e!2803278 call!313232)))

(declare-fun b!4500321 () Bool)

(assert (=> b!4500321 (= e!2803279 e!2803281)))

(assert (=> b!4500321 (= c!767106 (and ((_ is Cons!50547) (toList!4259 lt!1680973)) (= (_1!28764 (h!56368 (toList!4259 lt!1680973))) (_1!28764 lt!1680977))))))

(assert (= (and d!1381081 c!767108) b!4500314))

(assert (= (and d!1381081 (not c!767108)) b!4500321))

(assert (= (and b!4500321 c!767106) b!4500318))

(assert (= (and b!4500321 (not c!767106)) b!4500317))

(assert (= (and b!4500317 c!767107) b!4500315))

(assert (= (and b!4500317 (not c!767107)) b!4500320))

(assert (= (or b!4500315 b!4500320) bm!313227))

(assert (= (or b!4500318 bm!313227) bm!313226))

(assert (= (or b!4500314 bm!313226) bm!313228))

(assert (= (and bm!313228 c!767105) b!4500319))

(assert (= (and bm!313228 (not c!767105)) b!4500312))

(assert (= (and d!1381081 res!1870874) b!4500313))

(assert (= (and b!4500313 res!1870875) b!4500316))

(declare-fun m!5230871 () Bool)

(assert (=> b!4500319 m!5230871))

(declare-fun m!5230873 () Bool)

(assert (=> bm!313228 m!5230873))

(declare-fun m!5230875 () Bool)

(assert (=> d!1381081 m!5230875))

(assert (=> d!1381081 m!5230779))

(declare-fun m!5230877 () Bool)

(assert (=> b!4500316 m!5230877))

(declare-fun m!5230879 () Bool)

(assert (=> b!4500313 m!5230879))

(assert (=> d!1380975 d!1381081))

(assert (=> b!4500066 d!1380941))

(declare-fun d!1381083 () Bool)

(assert (=> d!1381083 (= (invariantList!985 (toList!4260 lt!1681048)) (noDuplicatedKeys!244 (toList!4260 lt!1681048)))))

(declare-fun bs!836018 () Bool)

(assert (= bs!836018 d!1381083))

(declare-fun m!5230881 () Bool)

(assert (=> bs!836018 m!5230881))

(assert (=> d!1380837 d!1381083))

(declare-fun d!1381085 () Bool)

(declare-fun res!1870876 () Bool)

(declare-fun e!2803284 () Bool)

(assert (=> d!1381085 (=> res!1870876 e!2803284)))

(assert (=> d!1381085 (= res!1870876 ((_ is Nil!50547) (toList!4259 lm!1477)))))

(assert (=> d!1381085 (= (forall!10179 (toList!4259 lm!1477) lambda!168731) e!2803284)))

(declare-fun b!4500326 () Bool)

(declare-fun e!2803285 () Bool)

(assert (=> b!4500326 (= e!2803284 e!2803285)))

(declare-fun res!1870877 () Bool)

(assert (=> b!4500326 (=> (not res!1870877) (not e!2803285))))

(assert (=> b!4500326 (= res!1870877 (dynLambda!21109 lambda!168731 (h!56368 (toList!4259 lm!1477))))))

(declare-fun b!4500327 () Bool)

(assert (=> b!4500327 (= e!2803285 (forall!10179 (t!357629 (toList!4259 lm!1477)) lambda!168731))))

(assert (= (and d!1381085 (not res!1870876)) b!4500326))

(assert (= (and b!4500326 res!1870877) b!4500327))

(declare-fun b_lambda!152325 () Bool)

(assert (=> (not b_lambda!152325) (not b!4500326)))

(declare-fun m!5230883 () Bool)

(assert (=> b!4500326 m!5230883))

(declare-fun m!5230885 () Bool)

(assert (=> b!4500327 m!5230885))

(assert (=> d!1380837 d!1381085))

(declare-fun bs!836019 () Bool)

(declare-fun b!4500331 () Bool)

(assert (= bs!836019 (and b!4500331 b!4500198)))

(declare-fun lambda!168834 () Int)

(assert (=> bs!836019 (= (= (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168834 lambda!168820))))

(declare-fun bs!836020 () Bool)

(assert (= bs!836020 (and b!4500331 b!4500201)))

(assert (=> bs!836020 (= (= (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168834 lambda!168819))))

(declare-fun bs!836021 () Bool)

(assert (= bs!836021 (and b!4500331 d!1380929)))

(assert (=> bs!836021 (not (= lambda!168834 lambda!168760))))

(assert (=> bs!836019 (= (= (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) lt!1681300) (= lambda!168834 lambda!168821))))

(declare-fun bs!836022 () Bool)

(assert (= bs!836022 (and b!4500331 d!1381003)))

(assert (=> bs!836022 (= (= (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) lt!1681308) (= lambda!168834 lambda!168822))))

(assert (=> b!4500331 true))

(declare-fun bs!836023 () Bool)

(declare-fun b!4500328 () Bool)

(assert (= bs!836023 (and b!4500328 b!4500201)))

(declare-fun lambda!168837 () Int)

(assert (=> bs!836023 (= (= (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168837 lambda!168819))))

(declare-fun bs!836024 () Bool)

(assert (= bs!836024 (and b!4500328 d!1380929)))

(assert (=> bs!836024 (not (= lambda!168837 lambda!168760))))

(declare-fun bs!836025 () Bool)

(assert (= bs!836025 (and b!4500328 b!4500198)))

(assert (=> bs!836025 (= (= (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) lt!1681300) (= lambda!168837 lambda!168821))))

(declare-fun bs!836026 () Bool)

(assert (= bs!836026 (and b!4500328 d!1381003)))

(assert (=> bs!836026 (= (= (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) lt!1681308) (= lambda!168837 lambda!168822))))

(assert (=> bs!836025 (= (= (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168837 lambda!168820))))

(declare-fun bs!836027 () Bool)

(assert (= bs!836027 (and b!4500328 b!4500331)))

(assert (=> bs!836027 (= lambda!168837 lambda!168834)))

(assert (=> b!4500328 true))

(declare-fun lambda!168838 () Int)

(declare-fun lt!1681355 () ListMap!3521)

(assert (=> bs!836023 (= (= lt!1681355 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168838 lambda!168819))))

(assert (=> b!4500328 (= (= lt!1681355 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168838 lambda!168837))))

(assert (=> bs!836024 (not (= lambda!168838 lambda!168760))))

(assert (=> bs!836025 (= (= lt!1681355 lt!1681300) (= lambda!168838 lambda!168821))))

(assert (=> bs!836026 (= (= lt!1681355 lt!1681308) (= lambda!168838 lambda!168822))))

(assert (=> bs!836025 (= (= lt!1681355 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168838 lambda!168820))))

(assert (=> bs!836027 (= (= lt!1681355 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168838 lambda!168834))))

(assert (=> b!4500328 true))

(declare-fun bs!836028 () Bool)

(declare-fun d!1381087 () Bool)

(assert (= bs!836028 (and d!1381087 b!4500201)))

(declare-fun lt!1681363 () ListMap!3521)

(declare-fun lambda!168843 () Int)

(assert (=> bs!836028 (= (= lt!1681363 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168843 lambda!168819))))

(declare-fun bs!836029 () Bool)

(assert (= bs!836029 (and d!1381087 b!4500328)))

(assert (=> bs!836029 (= (= lt!1681363 lt!1681355) (= lambda!168843 lambda!168838))))

(assert (=> bs!836029 (= (= lt!1681363 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168843 lambda!168837))))

(declare-fun bs!836030 () Bool)

(assert (= bs!836030 (and d!1381087 d!1380929)))

(assert (=> bs!836030 (not (= lambda!168843 lambda!168760))))

(declare-fun bs!836031 () Bool)

(assert (= bs!836031 (and d!1381087 b!4500198)))

(assert (=> bs!836031 (= (= lt!1681363 lt!1681300) (= lambda!168843 lambda!168821))))

(declare-fun bs!836032 () Bool)

(assert (= bs!836032 (and d!1381087 d!1381003)))

(assert (=> bs!836032 (= (= lt!1681363 lt!1681308) (= lambda!168843 lambda!168822))))

(assert (=> bs!836031 (= (= lt!1681363 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168843 lambda!168820))))

(declare-fun bs!836033 () Bool)

(assert (= bs!836033 (and d!1381087 b!4500331)))

(assert (=> bs!836033 (= (= lt!1681363 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168843 lambda!168834))))

(assert (=> d!1381087 true))

(declare-fun e!2803286 () ListMap!3521)

(assert (=> b!4500328 (= e!2803286 lt!1681355)))

(declare-fun lt!1681349 () ListMap!3521)

(assert (=> b!4500328 (= lt!1681349 (+!1475 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) (h!56367 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))))))

(assert (=> b!4500328 (= lt!1681355 (addToMapMapFromBucket!653 (t!357628 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (+!1475 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) (h!56367 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964))))))))))

(declare-fun lt!1681362 () Unit!91936)

(declare-fun call!313235 () Unit!91936)

(assert (=> b!4500328 (= lt!1681362 call!313235)))

(assert (=> b!4500328 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) lambda!168837)))

(declare-fun lt!1681353 () Unit!91936)

(assert (=> b!4500328 (= lt!1681353 lt!1681362)))

(assert (=> b!4500328 (forall!10181 (toList!4260 lt!1681349) lambda!168838)))

(declare-fun lt!1681366 () Unit!91936)

(declare-fun Unit!91983 () Unit!91936)

(assert (=> b!4500328 (= lt!1681366 Unit!91983)))

(assert (=> b!4500328 (forall!10181 (t!357628 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) lambda!168838)))

(declare-fun lt!1681348 () Unit!91936)

(declare-fun Unit!91984 () Unit!91936)

(assert (=> b!4500328 (= lt!1681348 Unit!91984)))

(declare-fun lt!1681346 () Unit!91936)

(declare-fun Unit!91985 () Unit!91936)

(assert (=> b!4500328 (= lt!1681346 Unit!91985)))

(declare-fun lt!1681361 () Unit!91936)

(assert (=> b!4500328 (= lt!1681361 (forallContained!2434 (toList!4260 lt!1681349) lambda!168838 (h!56367 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))))))

(assert (=> b!4500328 (contains!13219 lt!1681349 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))))))

(declare-fun lt!1681347 () Unit!91936)

(declare-fun Unit!91986 () Unit!91936)

(assert (=> b!4500328 (= lt!1681347 Unit!91986)))

(assert (=> b!4500328 (contains!13219 lt!1681355 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))))))

(declare-fun lt!1681356 () Unit!91936)

(declare-fun Unit!91987 () Unit!91936)

(assert (=> b!4500328 (= lt!1681356 Unit!91987)))

(declare-fun call!313234 () Bool)

(assert (=> b!4500328 call!313234))

(declare-fun lt!1681365 () Unit!91936)

(declare-fun Unit!91988 () Unit!91936)

(assert (=> b!4500328 (= lt!1681365 Unit!91988)))

(assert (=> b!4500328 (forall!10181 (toList!4260 lt!1681349) lambda!168838)))

(declare-fun lt!1681357 () Unit!91936)

(declare-fun Unit!91989 () Unit!91936)

(assert (=> b!4500328 (= lt!1681357 Unit!91989)))

(declare-fun lt!1681360 () Unit!91936)

(declare-fun Unit!91990 () Unit!91936)

(assert (=> b!4500328 (= lt!1681360 Unit!91990)))

(declare-fun lt!1681364 () Unit!91936)

(assert (=> b!4500328 (= lt!1681364 (addForallContainsKeyThenBeforeAdding!307 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) lt!1681355 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))) (_2!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964))))))))))

(declare-fun call!313236 () Bool)

(assert (=> b!4500328 call!313236))

(declare-fun lt!1681358 () Unit!91936)

(assert (=> b!4500328 (= lt!1681358 lt!1681364)))

(assert (=> b!4500328 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) lambda!168838)))

(declare-fun lt!1681359 () Unit!91936)

(declare-fun Unit!91991 () Unit!91936)

(assert (=> b!4500328 (= lt!1681359 Unit!91991)))

(declare-fun res!1870878 () Bool)

(assert (=> b!4500328 (= res!1870878 (forall!10181 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) lambda!168838))))

(declare-fun e!2803287 () Bool)

(assert (=> b!4500328 (=> (not res!1870878) (not e!2803287))))

(assert (=> b!4500328 e!2803287))

(declare-fun lt!1681350 () Unit!91936)

(declare-fun Unit!91992 () Unit!91936)

(assert (=> b!4500328 (= lt!1681350 Unit!91992)))

(declare-fun b!4500329 () Bool)

(assert (=> b!4500329 (= e!2803287 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) lambda!168838))))

(declare-fun bm!313229 () Bool)

(assert (=> bm!313229 (= call!313235 (lemmaContainsAllItsOwnKeys!307 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))))))

(assert (=> b!4500331 (= e!2803286 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))))

(declare-fun lt!1681354 () Unit!91936)

(assert (=> b!4500331 (= lt!1681354 call!313235)))

(assert (=> b!4500331 call!313236))

(declare-fun lt!1681351 () Unit!91936)

(assert (=> b!4500331 (= lt!1681351 lt!1681354)))

(assert (=> b!4500331 call!313234))

(declare-fun lt!1681352 () Unit!91936)

(declare-fun Unit!91993 () Unit!91936)

(assert (=> b!4500331 (= lt!1681352 Unit!91993)))

(declare-fun c!767111 () Bool)

(declare-fun bm!313230 () Bool)

(assert (=> bm!313230 (= call!313236 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (ite c!767111 lambda!168834 lambda!168838)))))

(declare-fun b!4500330 () Bool)

(declare-fun res!1870879 () Bool)

(declare-fun e!2803288 () Bool)

(assert (=> b!4500330 (=> (not res!1870879) (not e!2803288))))

(assert (=> b!4500330 (= res!1870879 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) lambda!168843))))

(assert (=> d!1381087 e!2803288))

(declare-fun res!1870880 () Bool)

(assert (=> d!1381087 (=> (not res!1870880) (not e!2803288))))

(assert (=> d!1381087 (= res!1870880 (forall!10181 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) lambda!168843))))

(assert (=> d!1381087 (= lt!1681363 e!2803286)))

(assert (=> d!1381087 (= c!767111 ((_ is Nil!50546) (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964))))))))

(assert (=> d!1381087 (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))))

(assert (=> d!1381087 (= (addToMapMapFromBucket!653 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) lt!1681363)))

(declare-fun b!4500332 () Bool)

(assert (=> b!4500332 (= e!2803288 (invariantList!985 (toList!4260 lt!1681363)))))

(declare-fun bm!313231 () Bool)

(assert (=> bm!313231 (= call!313234 (forall!10181 (ite c!767111 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (ite c!767111 lambda!168834 lambda!168838)))))

(assert (= (and d!1381087 c!767111) b!4500331))

(assert (= (and d!1381087 (not c!767111)) b!4500328))

(assert (= (and b!4500328 res!1870878) b!4500329))

(assert (= (or b!4500331 b!4500328) bm!313231))

(assert (= (or b!4500331 b!4500328) bm!313230))

(assert (= (or b!4500331 b!4500328) bm!313229))

(assert (= (and d!1381087 res!1870880) b!4500330))

(assert (= (and b!4500330 res!1870879) b!4500332))

(assert (=> b!4500328 m!5230597))

(declare-fun m!5230887 () Bool)

(assert (=> b!4500328 m!5230887))

(declare-fun m!5230889 () Bool)

(assert (=> b!4500328 m!5230889))

(declare-fun m!5230891 () Bool)

(assert (=> b!4500328 m!5230891))

(assert (=> b!4500328 m!5230889))

(assert (=> b!4500328 m!5230887))

(declare-fun m!5230893 () Bool)

(assert (=> b!4500328 m!5230893))

(assert (=> b!4500328 m!5230597))

(declare-fun m!5230895 () Bool)

(assert (=> b!4500328 m!5230895))

(declare-fun m!5230897 () Bool)

(assert (=> b!4500328 m!5230897))

(declare-fun m!5230899 () Bool)

(assert (=> b!4500328 m!5230899))

(declare-fun m!5230901 () Bool)

(assert (=> b!4500328 m!5230901))

(declare-fun m!5230903 () Bool)

(assert (=> b!4500328 m!5230903))

(declare-fun m!5230905 () Bool)

(assert (=> b!4500328 m!5230905))

(declare-fun m!5230907 () Bool)

(assert (=> b!4500328 m!5230907))

(declare-fun m!5230909 () Bool)

(assert (=> d!1381087 m!5230909))

(declare-fun m!5230911 () Bool)

(assert (=> d!1381087 m!5230911))

(declare-fun m!5230913 () Bool)

(assert (=> b!4500330 m!5230913))

(assert (=> b!4500329 m!5230897))

(declare-fun m!5230915 () Bool)

(assert (=> bm!313230 m!5230915))

(declare-fun m!5230917 () Bool)

(assert (=> b!4500332 m!5230917))

(assert (=> bm!313229 m!5230597))

(declare-fun m!5230919 () Bool)

(assert (=> bm!313229 m!5230919))

(declare-fun m!5230921 () Bool)

(assert (=> bm!313231 m!5230921))

(assert (=> b!4500083 d!1381087))

(declare-fun bs!836034 () Bool)

(declare-fun d!1381089 () Bool)

(assert (= bs!836034 (and d!1381089 d!1380959)))

(declare-fun lambda!168852 () Int)

(assert (=> bs!836034 (= lambda!168852 lambda!168766)))

(declare-fun bs!836035 () Bool)

(assert (= bs!836035 (and d!1381089 d!1380863)))

(assert (=> bs!836035 (= lambda!168852 lambda!168750)))

(declare-fun bs!836036 () Bool)

(assert (= bs!836036 (and d!1381089 d!1380861)))

(assert (=> bs!836036 (= lambda!168852 lambda!168734)))

(declare-fun bs!836037 () Bool)

(assert (= bs!836037 (and d!1381089 d!1380969)))

(assert (=> bs!836037 (= lambda!168852 lambda!168767)))

(declare-fun bs!836038 () Bool)

(assert (= bs!836038 (and d!1381089 d!1380971)))

(assert (=> bs!836038 (= lambda!168852 lambda!168770)))

(declare-fun bs!836039 () Bool)

(assert (= bs!836039 (and d!1381089 d!1380983)))

(assert (=> bs!836039 (= lambda!168852 lambda!168774)))

(declare-fun bs!836040 () Bool)

(assert (= bs!836040 (and d!1381089 d!1381031)))

(assert (=> bs!836040 (= lambda!168852 lambda!168823)))

(declare-fun bs!836041 () Bool)

(assert (= bs!836041 (and d!1381089 d!1380943)))

(assert (=> bs!836041 (= lambda!168852 lambda!168763)))

(declare-fun bs!836042 () Bool)

(assert (= bs!836042 (and d!1381089 d!1380973)))

(assert (=> bs!836042 (= lambda!168852 lambda!168771)))

(declare-fun bs!836043 () Bool)

(assert (= bs!836043 (and d!1381089 d!1380837)))

(assert (=> bs!836043 (= lambda!168852 lambda!168731)))

(declare-fun bs!836044 () Bool)

(assert (= bs!836044 (and d!1381089 d!1380857)))

(assert (=> bs!836044 (= lambda!168852 lambda!168733)))

(declare-fun bs!836045 () Bool)

(assert (= bs!836045 (and d!1381089 d!1380989)))

(assert (=> bs!836045 (not (= lambda!168852 lambda!168777))))

(declare-fun bs!836046 () Bool)

(assert (= bs!836046 (and d!1381089 start!444228)))

(assert (=> bs!836046 (= lambda!168852 lambda!168721)))

(declare-fun lt!1681393 () ListMap!3521)

(assert (=> d!1381089 (invariantList!985 (toList!4260 lt!1681393))))

(declare-fun e!2803289 () ListMap!3521)

(assert (=> d!1381089 (= lt!1681393 e!2803289)))

(declare-fun c!767112 () Bool)

(assert (=> d!1381089 (= c!767112 ((_ is Cons!50547) (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))))

(assert (=> d!1381089 (forall!10179 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))) lambda!168852)))

(assert (=> d!1381089 (= (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) lt!1681393)))

(declare-fun b!4500333 () Bool)

(assert (=> b!4500333 (= e!2803289 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (extractMap!1182 (t!357629 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964)))))))))

(declare-fun b!4500334 () Bool)

(assert (=> b!4500334 (= e!2803289 (ListMap!3522 Nil!50546))))

(assert (= (and d!1381089 c!767112) b!4500333))

(assert (= (and d!1381089 (not c!767112)) b!4500334))

(declare-fun m!5230923 () Bool)

(assert (=> d!1381089 m!5230923))

(declare-fun m!5230925 () Bool)

(assert (=> d!1381089 m!5230925))

(declare-fun m!5230927 () Bool)

(assert (=> b!4500333 m!5230927))

(assert (=> b!4500333 m!5230927))

(declare-fun m!5230929 () Bool)

(assert (=> b!4500333 m!5230929))

(assert (=> b!4500083 d!1381089))

(assert (=> b!4499906 d!1381059))

(assert (=> b!4499906 d!1381061))

(declare-fun d!1381091 () Bool)

(assert (=> d!1381091 (= (invariantList!985 (toList!4260 lt!1681078)) (noDuplicatedKeys!244 (toList!4260 lt!1681078)))))

(declare-fun bs!836047 () Bool)

(assert (= bs!836047 d!1381091))

(declare-fun m!5230931 () Bool)

(assert (=> bs!836047 m!5230931))

(assert (=> d!1380857 d!1381091))

(declare-fun d!1381093 () Bool)

(declare-fun res!1870881 () Bool)

(declare-fun e!2803292 () Bool)

(assert (=> d!1381093 (=> res!1870881 e!2803292)))

(assert (=> d!1381093 (= res!1870881 ((_ is Nil!50547) (toList!4259 lt!1680973)))))

(assert (=> d!1381093 (= (forall!10179 (toList!4259 lt!1680973) lambda!168733) e!2803292)))

(declare-fun b!4500335 () Bool)

(declare-fun e!2803293 () Bool)

(assert (=> b!4500335 (= e!2803292 e!2803293)))

(declare-fun res!1870882 () Bool)

(assert (=> b!4500335 (=> (not res!1870882) (not e!2803293))))

(assert (=> b!4500335 (= res!1870882 (dynLambda!21109 lambda!168733 (h!56368 (toList!4259 lt!1680973))))))

(declare-fun b!4500336 () Bool)

(assert (=> b!4500336 (= e!2803293 (forall!10179 (t!357629 (toList!4259 lt!1680973)) lambda!168733))))

(assert (= (and d!1381093 (not res!1870881)) b!4500335))

(assert (= (and b!4500335 res!1870882) b!4500336))

(declare-fun b_lambda!152327 () Bool)

(assert (=> (not b_lambda!152327) (not b!4500335)))

(declare-fun m!5230933 () Bool)

(assert (=> b!4500335 m!5230933))

(declare-fun m!5230935 () Bool)

(assert (=> b!4500336 m!5230935))

(assert (=> d!1380857 d!1381093))

(declare-fun d!1381095 () Bool)

(declare-fun choose!29139 (Hashable!5521 K!11955) (_ BitVec 64))

(assert (=> d!1381095 (= (hash!2695 hashF!1107 key!3287) (choose!29139 hashF!1107 key!3287))))

(declare-fun bs!836048 () Bool)

(assert (= bs!836048 d!1381095))

(declare-fun m!5230937 () Bool)

(assert (=> bs!836048 m!5230937))

(assert (=> d!1380991 d!1381095))

(declare-fun d!1381097 () Bool)

(assert (=> d!1381097 (= (head!9348 (toList!4259 lm!1477)) (h!56368 (toList!4259 lm!1477)))))

(assert (=> d!1380977 d!1381097))

(declare-fun d!1381099 () Bool)

(declare-fun lt!1681404 () Bool)

(assert (=> d!1381099 (= lt!1681404 (select (content!8263 e!2803016) key!3287))))

(declare-fun e!2803295 () Bool)

(assert (=> d!1381099 (= lt!1681404 e!2803295)))

(declare-fun res!1870886 () Bool)

(assert (=> d!1381099 (=> (not res!1870886) (not e!2803295))))

(assert (=> d!1381099 (= res!1870886 ((_ is Cons!50549) e!2803016))))

(assert (=> d!1381099 (= (contains!13223 e!2803016 key!3287) lt!1681404)))

(declare-fun b!4500339 () Bool)

(declare-fun e!2803294 () Bool)

(assert (=> b!4500339 (= e!2803295 e!2803294)))

(declare-fun res!1870885 () Bool)

(assert (=> b!4500339 (=> res!1870885 e!2803294)))

(assert (=> b!4500339 (= res!1870885 (= (h!56372 e!2803016) key!3287))))

(declare-fun b!4500340 () Bool)

(assert (=> b!4500340 (= e!2803294 (contains!13223 (t!357631 e!2803016) key!3287))))

(assert (= (and d!1381099 res!1870886) b!4500339))

(assert (= (and b!4500339 (not res!1870885)) b!4500340))

(declare-fun m!5230939 () Bool)

(assert (=> d!1381099 m!5230939))

(declare-fun m!5230941 () Bool)

(assert (=> d!1381099 m!5230941))

(declare-fun m!5230943 () Bool)

(assert (=> b!4500340 m!5230943))

(assert (=> bm!313208 d!1381099))

(declare-fun d!1381101 () Bool)

(declare-fun res!1870893 () Bool)

(declare-fun e!2803302 () Bool)

(assert (=> d!1381101 (=> res!1870893 e!2803302)))

(assert (=> d!1381101 (= res!1870893 ((_ is Nil!50546) newBucket!178))))

(assert (=> d!1381101 (= (forall!10181 newBucket!178 lambda!168760) e!2803302)))

(declare-fun b!4500345 () Bool)

(declare-fun e!2803303 () Bool)

(assert (=> b!4500345 (= e!2803302 e!2803303)))

(declare-fun res!1870894 () Bool)

(assert (=> b!4500345 (=> (not res!1870894) (not e!2803303))))

(declare-fun dynLambda!21110 (Int tuple2!50938) Bool)

(assert (=> b!4500345 (= res!1870894 (dynLambda!21110 lambda!168760 (h!56367 newBucket!178)))))

(declare-fun b!4500346 () Bool)

(assert (=> b!4500346 (= e!2803303 (forall!10181 (t!357628 newBucket!178) lambda!168760))))

(assert (= (and d!1381101 (not res!1870893)) b!4500345))

(assert (= (and b!4500345 res!1870894) b!4500346))

(declare-fun b_lambda!152329 () Bool)

(assert (=> (not b_lambda!152329) (not b!4500345)))

(declare-fun m!5230945 () Bool)

(assert (=> b!4500345 m!5230945))

(declare-fun m!5230947 () Bool)

(assert (=> b!4500346 m!5230947))

(assert (=> d!1380929 d!1381101))

(declare-fun bs!836049 () Bool)

(declare-fun b!4500350 () Bool)

(assert (= bs!836049 (and b!4500350 b!4500201)))

(declare-fun lambda!168863 () Int)

(assert (=> bs!836049 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168863 lambda!168819))))

(declare-fun bs!836050 () Bool)

(assert (= bs!836050 (and b!4500350 b!4500328)))

(assert (=> bs!836050 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681355) (= lambda!168863 lambda!168838))))

(assert (=> bs!836050 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168863 lambda!168837))))

(declare-fun bs!836051 () Bool)

(assert (= bs!836051 (and b!4500350 d!1380929)))

(assert (=> bs!836051 (not (= lambda!168863 lambda!168760))))

(declare-fun bs!836052 () Bool)

(assert (= bs!836052 (and b!4500350 b!4500198)))

(assert (=> bs!836052 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681300) (= lambda!168863 lambda!168821))))

(declare-fun bs!836053 () Bool)

(assert (= bs!836053 (and b!4500350 d!1381087)))

(assert (=> bs!836053 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681363) (= lambda!168863 lambda!168843))))

(declare-fun bs!836054 () Bool)

(assert (= bs!836054 (and b!4500350 d!1381003)))

(assert (=> bs!836054 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681308) (= lambda!168863 lambda!168822))))

(assert (=> bs!836052 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168863 lambda!168820))))

(declare-fun bs!836055 () Bool)

(assert (= bs!836055 (and b!4500350 b!4500331)))

(assert (=> bs!836055 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168863 lambda!168834))))

(assert (=> b!4500350 true))

(declare-fun bs!836056 () Bool)

(declare-fun b!4500347 () Bool)

(assert (= bs!836056 (and b!4500347 b!4500201)))

(declare-fun lambda!168866 () Int)

(assert (=> bs!836056 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168866 lambda!168819))))

(declare-fun bs!836057 () Bool)

(assert (= bs!836057 (and b!4500347 b!4500328)))

(assert (=> bs!836057 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681355) (= lambda!168866 lambda!168838))))

(declare-fun bs!836058 () Bool)

(assert (= bs!836058 (and b!4500347 b!4500350)))

(assert (=> bs!836058 (= lambda!168866 lambda!168863)))

(assert (=> bs!836057 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168866 lambda!168837))))

(declare-fun bs!836059 () Bool)

(assert (= bs!836059 (and b!4500347 d!1380929)))

(assert (=> bs!836059 (not (= lambda!168866 lambda!168760))))

(declare-fun bs!836060 () Bool)

(assert (= bs!836060 (and b!4500347 b!4500198)))

(assert (=> bs!836060 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681300) (= lambda!168866 lambda!168821))))

(declare-fun bs!836061 () Bool)

(assert (= bs!836061 (and b!4500347 d!1381087)))

(assert (=> bs!836061 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681363) (= lambda!168866 lambda!168843))))

(declare-fun bs!836062 () Bool)

(assert (= bs!836062 (and b!4500347 d!1381003)))

(assert (=> bs!836062 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681308) (= lambda!168866 lambda!168822))))

(assert (=> bs!836060 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168866 lambda!168820))))

(declare-fun bs!836063 () Bool)

(assert (= bs!836063 (and b!4500347 b!4500331)))

(assert (=> bs!836063 (= (= (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168866 lambda!168834))))

(assert (=> b!4500347 true))

(declare-fun lambda!168867 () Int)

(declare-fun lt!1681414 () ListMap!3521)

(assert (=> bs!836056 (= (= lt!1681414 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168867 lambda!168819))))

(assert (=> bs!836057 (= (= lt!1681414 lt!1681355) (= lambda!168867 lambda!168838))))

(assert (=> bs!836058 (= (= lt!1681414 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168867 lambda!168863))))

(assert (=> bs!836059 (not (= lambda!168867 lambda!168760))))

(assert (=> bs!836060 (= (= lt!1681414 lt!1681300) (= lambda!168867 lambda!168821))))

(assert (=> bs!836061 (= (= lt!1681414 lt!1681363) (= lambda!168867 lambda!168843))))

(assert (=> bs!836062 (= (= lt!1681414 lt!1681308) (= lambda!168867 lambda!168822))))

(assert (=> bs!836060 (= (= lt!1681414 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168867 lambda!168820))))

(assert (=> bs!836063 (= (= lt!1681414 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168867 lambda!168834))))

(assert (=> bs!836057 (= (= lt!1681414 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168867 lambda!168837))))

(assert (=> b!4500347 (= (= lt!1681414 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168867 lambda!168866))))

(assert (=> b!4500347 true))

(declare-fun bs!836064 () Bool)

(declare-fun d!1381103 () Bool)

(assert (= bs!836064 (and d!1381103 b!4500201)))

(declare-fun lt!1681422 () ListMap!3521)

(declare-fun lambda!168868 () Int)

(assert (=> bs!836064 (= (= lt!1681422 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168868 lambda!168819))))

(declare-fun bs!836065 () Bool)

(assert (= bs!836065 (and d!1381103 b!4500328)))

(assert (=> bs!836065 (= (= lt!1681422 lt!1681355) (= lambda!168868 lambda!168838))))

(declare-fun bs!836066 () Bool)

(assert (= bs!836066 (and d!1381103 b!4500350)))

(assert (=> bs!836066 (= (= lt!1681422 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168868 lambda!168863))))

(declare-fun bs!836067 () Bool)

(assert (= bs!836067 (and d!1381103 d!1380929)))

(assert (=> bs!836067 (not (= lambda!168868 lambda!168760))))

(declare-fun bs!836068 () Bool)

(assert (= bs!836068 (and d!1381103 b!4500198)))

(assert (=> bs!836068 (= (= lt!1681422 lt!1681300) (= lambda!168868 lambda!168821))))

(declare-fun bs!836069 () Bool)

(assert (= bs!836069 (and d!1381103 d!1381087)))

(assert (=> bs!836069 (= (= lt!1681422 lt!1681363) (= lambda!168868 lambda!168843))))

(declare-fun bs!836070 () Bool)

(assert (= bs!836070 (and d!1381103 d!1381003)))

(assert (=> bs!836070 (= (= lt!1681422 lt!1681308) (= lambda!168868 lambda!168822))))

(assert (=> bs!836068 (= (= lt!1681422 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168868 lambda!168820))))

(declare-fun bs!836071 () Bool)

(assert (= bs!836071 (and d!1381103 b!4500331)))

(assert (=> bs!836071 (= (= lt!1681422 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168868 lambda!168834))))

(assert (=> bs!836065 (= (= lt!1681422 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168868 lambda!168837))))

(declare-fun bs!836072 () Bool)

(assert (= bs!836072 (and d!1381103 b!4500347)))

(assert (=> bs!836072 (= (= lt!1681422 lt!1681414) (= lambda!168868 lambda!168867))))

(assert (=> bs!836072 (= (= lt!1681422 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168868 lambda!168866))))

(assert (=> d!1381103 true))

(declare-fun e!2803304 () ListMap!3521)

(assert (=> b!4500347 (= e!2803304 lt!1681414)))

(declare-fun lt!1681408 () ListMap!3521)

(assert (=> b!4500347 (= lt!1681408 (+!1475 (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (h!56367 (_2!28764 (h!56368 (toList!4259 lm!1477))))))))

(assert (=> b!4500347 (= lt!1681414 (addToMapMapFromBucket!653 (t!357628 (_2!28764 (h!56368 (toList!4259 lm!1477)))) (+!1475 (extractMap!1182 (t!357629 (toList!4259 lm!1477))) (h!56367 (_2!28764 (h!56368 (toList!4259 lm!1477)))))))))

(declare-fun lt!1681421 () Unit!91936)

(declare-fun call!313244 () Unit!91936)

(assert (=> b!4500347 (= lt!1681421 call!313244)))

(assert (=> b!4500347 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) lambda!168866)))

(declare-fun lt!1681412 () Unit!91936)

(assert (=> b!4500347 (= lt!1681412 lt!1681421)))

(assert (=> b!4500347 (forall!10181 (toList!4260 lt!1681408) lambda!168867)))

(declare-fun lt!1681425 () Unit!91936)

(declare-fun Unit!92005 () Unit!91936)

(assert (=> b!4500347 (= lt!1681425 Unit!92005)))

(assert (=> b!4500347 (forall!10181 (t!357628 (_2!28764 (h!56368 (toList!4259 lm!1477)))) lambda!168867)))

(declare-fun lt!1681407 () Unit!91936)

(declare-fun Unit!92006 () Unit!91936)

(assert (=> b!4500347 (= lt!1681407 Unit!92006)))

(declare-fun lt!1681405 () Unit!91936)

(declare-fun Unit!92007 () Unit!91936)

(assert (=> b!4500347 (= lt!1681405 Unit!92007)))

(declare-fun lt!1681420 () Unit!91936)

(assert (=> b!4500347 (= lt!1681420 (forallContained!2434 (toList!4260 lt!1681408) lambda!168867 (h!56367 (_2!28764 (h!56368 (toList!4259 lm!1477))))))))

(assert (=> b!4500347 (contains!13219 lt!1681408 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lm!1477))))))))

(declare-fun lt!1681406 () Unit!91936)

(declare-fun Unit!92008 () Unit!91936)

(assert (=> b!4500347 (= lt!1681406 Unit!92008)))

(assert (=> b!4500347 (contains!13219 lt!1681414 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lm!1477))))))))

(declare-fun lt!1681415 () Unit!91936)

(declare-fun Unit!92009 () Unit!91936)

(assert (=> b!4500347 (= lt!1681415 Unit!92009)))

(declare-fun call!313243 () Bool)

(assert (=> b!4500347 call!313243))

(declare-fun lt!1681424 () Unit!91936)

(declare-fun Unit!92010 () Unit!91936)

(assert (=> b!4500347 (= lt!1681424 Unit!92010)))

(assert (=> b!4500347 (forall!10181 (toList!4260 lt!1681408) lambda!168867)))

(declare-fun lt!1681416 () Unit!91936)

(declare-fun Unit!92011 () Unit!91936)

(assert (=> b!4500347 (= lt!1681416 Unit!92011)))

(declare-fun lt!1681419 () Unit!91936)

(declare-fun Unit!92012 () Unit!91936)

(assert (=> b!4500347 (= lt!1681419 Unit!92012)))

(declare-fun lt!1681423 () Unit!91936)

(assert (=> b!4500347 (= lt!1681423 (addForallContainsKeyThenBeforeAdding!307 (extractMap!1182 (t!357629 (toList!4259 lm!1477))) lt!1681414 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lm!1477))))) (_2!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lm!1477)))))))))

(declare-fun call!313245 () Bool)

(assert (=> b!4500347 call!313245))

(declare-fun lt!1681417 () Unit!91936)

(assert (=> b!4500347 (= lt!1681417 lt!1681423)))

(assert (=> b!4500347 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) lambda!168867)))

(declare-fun lt!1681418 () Unit!91936)

(declare-fun Unit!92013 () Unit!91936)

(assert (=> b!4500347 (= lt!1681418 Unit!92013)))

(declare-fun res!1870895 () Bool)

(assert (=> b!4500347 (= res!1870895 (forall!10181 (_2!28764 (h!56368 (toList!4259 lm!1477))) lambda!168867))))

(declare-fun e!2803305 () Bool)

(assert (=> b!4500347 (=> (not res!1870895) (not e!2803305))))

(assert (=> b!4500347 e!2803305))

(declare-fun lt!1681409 () Unit!91936)

(declare-fun Unit!92015 () Unit!91936)

(assert (=> b!4500347 (= lt!1681409 Unit!92015)))

(declare-fun b!4500348 () Bool)

(assert (=> b!4500348 (= e!2803305 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) lambda!168867))))

(declare-fun bm!313238 () Bool)

(assert (=> bm!313238 (= call!313244 (lemmaContainsAllItsOwnKeys!307 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))

(assert (=> b!4500350 (= e!2803304 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))

(declare-fun lt!1681413 () Unit!91936)

(assert (=> b!4500350 (= lt!1681413 call!313244)))

(assert (=> b!4500350 call!313245))

(declare-fun lt!1681410 () Unit!91936)

(assert (=> b!4500350 (= lt!1681410 lt!1681413)))

(assert (=> b!4500350 call!313243))

(declare-fun lt!1681411 () Unit!91936)

(declare-fun Unit!92016 () Unit!91936)

(assert (=> b!4500350 (= lt!1681411 Unit!92016)))

(declare-fun bm!313239 () Bool)

(declare-fun c!767113 () Bool)

(assert (=> bm!313239 (= call!313245 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (ite c!767113 lambda!168863 lambda!168867)))))

(declare-fun b!4500349 () Bool)

(declare-fun res!1870896 () Bool)

(declare-fun e!2803306 () Bool)

(assert (=> b!4500349 (=> (not res!1870896) (not e!2803306))))

(assert (=> b!4500349 (= res!1870896 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) lambda!168868))))

(assert (=> d!1381103 e!2803306))

(declare-fun res!1870897 () Bool)

(assert (=> d!1381103 (=> (not res!1870897) (not e!2803306))))

(assert (=> d!1381103 (= res!1870897 (forall!10181 (_2!28764 (h!56368 (toList!4259 lm!1477))) lambda!168868))))

(assert (=> d!1381103 (= lt!1681422 e!2803304)))

(assert (=> d!1381103 (= c!767113 ((_ is Nil!50546) (_2!28764 (h!56368 (toList!4259 lm!1477)))))))

(assert (=> d!1381103 (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lm!1477))))))

(assert (=> d!1381103 (= (addToMapMapFromBucket!653 (_2!28764 (h!56368 (toList!4259 lm!1477))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) lt!1681422)))

(declare-fun b!4500351 () Bool)

(assert (=> b!4500351 (= e!2803306 (invariantList!985 (toList!4260 lt!1681422)))))

(declare-fun bm!313240 () Bool)

(assert (=> bm!313240 (= call!313243 (forall!10181 (ite c!767113 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (_2!28764 (h!56368 (toList!4259 lm!1477)))) (ite c!767113 lambda!168863 lambda!168867)))))

(assert (= (and d!1381103 c!767113) b!4500350))

(assert (= (and d!1381103 (not c!767113)) b!4500347))

(assert (= (and b!4500347 res!1870895) b!4500348))

(assert (= (or b!4500350 b!4500347) bm!313240))

(assert (= (or b!4500350 b!4500347) bm!313239))

(assert (= (or b!4500350 b!4500347) bm!313238))

(assert (= (and d!1381103 res!1870897) b!4500349))

(assert (= (and b!4500349 res!1870896) b!4500351))

(assert (=> b!4500347 m!5230027))

(declare-fun m!5230949 () Bool)

(assert (=> b!4500347 m!5230949))

(declare-fun m!5230951 () Bool)

(assert (=> b!4500347 m!5230951))

(declare-fun m!5230953 () Bool)

(assert (=> b!4500347 m!5230953))

(assert (=> b!4500347 m!5230951))

(assert (=> b!4500347 m!5230949))

(declare-fun m!5230955 () Bool)

(assert (=> b!4500347 m!5230955))

(assert (=> b!4500347 m!5230027))

(declare-fun m!5230957 () Bool)

(assert (=> b!4500347 m!5230957))

(declare-fun m!5230959 () Bool)

(assert (=> b!4500347 m!5230959))

(declare-fun m!5230961 () Bool)

(assert (=> b!4500347 m!5230961))

(declare-fun m!5230963 () Bool)

(assert (=> b!4500347 m!5230963))

(declare-fun m!5230965 () Bool)

(assert (=> b!4500347 m!5230965))

(declare-fun m!5230967 () Bool)

(assert (=> b!4500347 m!5230967))

(declare-fun m!5230969 () Bool)

(assert (=> b!4500347 m!5230969))

(declare-fun m!5230971 () Bool)

(assert (=> d!1381103 m!5230971))

(assert (=> d!1381103 m!5230635))

(declare-fun m!5230973 () Bool)

(assert (=> b!4500349 m!5230973))

(assert (=> b!4500348 m!5230959))

(declare-fun m!5230975 () Bool)

(assert (=> bm!313239 m!5230975))

(declare-fun m!5230977 () Bool)

(assert (=> b!4500351 m!5230977))

(assert (=> bm!313238 m!5230027))

(declare-fun m!5230979 () Bool)

(assert (=> bm!313238 m!5230979))

(declare-fun m!5230981 () Bool)

(assert (=> bm!313240 m!5230981))

(assert (=> b!4499894 d!1381103))

(assert (=> b!4499894 d!1380861))

(declare-fun b!4500363 () Bool)

(declare-fun e!2803313 () Unit!91936)

(declare-fun e!2803311 () Unit!91936)

(assert (=> b!4500363 (= e!2803313 e!2803311)))

(declare-fun c!767116 () Bool)

(declare-fun call!313249 () Bool)

(assert (=> b!4500363 (= c!767116 call!313249)))

(declare-fun b!4500364 () Bool)

(declare-fun lt!1681449 () Unit!91936)

(assert (=> b!4500364 (= e!2803313 lt!1681449)))

(declare-fun lt!1681447 () Unit!91936)

(assert (=> b!4500364 (= lt!1681447 (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 (extractMap!1182 (toList!4259 lt!1680973))) key!3287))))

(assert (=> b!4500364 (isDefined!8334 (getValueByKey!1028 (toList!4260 (extractMap!1182 (toList!4259 lt!1680973))) key!3287))))

(declare-fun lt!1681451 () Unit!91936)

(assert (=> b!4500364 (= lt!1681451 lt!1681447)))

(assert (=> b!4500364 (= lt!1681449 (lemmaInListThenGetKeysListContains!429 (toList!4260 (extractMap!1182 (toList!4259 lt!1680973))) key!3287))))

(assert (=> b!4500364 call!313249))

(declare-fun b!4500365 () Bool)

(declare-fun e!2803310 () Bool)

(assert (=> b!4500365 (= e!2803310 (not (contains!13223 (keys!17526 (extractMap!1182 (toList!4259 lt!1680973))) key!3287)))))

(declare-fun b!4500366 () Bool)

(declare-fun Unit!92017 () Unit!91936)

(assert (=> b!4500366 (= e!2803311 Unit!92017)))

(declare-fun b!4500367 () Bool)

(assert (=> b!4500367 false))

(declare-fun lt!1681450 () Unit!91936)

(declare-fun lt!1681452 () Unit!91936)

(assert (=> b!4500367 (= lt!1681450 lt!1681452)))

(assert (=> b!4500367 (containsKey!1684 (toList!4260 (extractMap!1182 (toList!4259 lt!1680973))) key!3287)))

(assert (=> b!4500367 (= lt!1681452 (lemmaInGetKeysListThenContainsKey!432 (toList!4260 (extractMap!1182 (toList!4259 lt!1680973))) key!3287))))

(declare-fun Unit!92018 () Unit!91936)

(assert (=> b!4500367 (= e!2803311 Unit!92018)))

(declare-fun b!4500368 () Bool)

(declare-fun e!2803312 () Bool)

(declare-fun e!2803314 () Bool)

(assert (=> b!4500368 (= e!2803312 e!2803314)))

(declare-fun res!1870904 () Bool)

(assert (=> b!4500368 (=> (not res!1870904) (not e!2803314))))

(assert (=> b!4500368 (= res!1870904 (isDefined!8334 (getValueByKey!1028 (toList!4260 (extractMap!1182 (toList!4259 lt!1680973))) key!3287)))))

(declare-fun d!1381105 () Bool)

(assert (=> d!1381105 e!2803312))

(declare-fun res!1870905 () Bool)

(assert (=> d!1381105 (=> res!1870905 e!2803312)))

(assert (=> d!1381105 (= res!1870905 e!2803310)))

(declare-fun res!1870903 () Bool)

(assert (=> d!1381105 (=> (not res!1870903) (not e!2803310))))

(declare-fun lt!1681453 () Bool)

(assert (=> d!1381105 (= res!1870903 (not lt!1681453))))

(declare-fun lt!1681454 () Bool)

(assert (=> d!1381105 (= lt!1681453 lt!1681454)))

(declare-fun lt!1681448 () Unit!91936)

(assert (=> d!1381105 (= lt!1681448 e!2803313)))

(declare-fun c!767117 () Bool)

(assert (=> d!1381105 (= c!767117 lt!1681454)))

(assert (=> d!1381105 (= lt!1681454 (containsKey!1684 (toList!4260 (extractMap!1182 (toList!4259 lt!1680973))) key!3287))))

(assert (=> d!1381105 (= (contains!13219 (extractMap!1182 (toList!4259 lt!1680973)) key!3287) lt!1681453)))

(declare-fun b!4500369 () Bool)

(assert (=> b!4500369 (= e!2803314 (contains!13223 (keys!17526 (extractMap!1182 (toList!4259 lt!1680973))) key!3287))))

(declare-fun b!4500370 () Bool)

(declare-fun e!2803315 () List!50673)

(assert (=> b!4500370 (= e!2803315 (getKeysList!433 (toList!4260 (extractMap!1182 (toList!4259 lt!1680973)))))))

(declare-fun bm!313244 () Bool)

(assert (=> bm!313244 (= call!313249 (contains!13223 e!2803315 key!3287))))

(declare-fun c!767115 () Bool)

(assert (=> bm!313244 (= c!767115 c!767117)))

(declare-fun b!4500371 () Bool)

(assert (=> b!4500371 (= e!2803315 (keys!17526 (extractMap!1182 (toList!4259 lt!1680973))))))

(assert (= (and d!1381105 c!767117) b!4500364))

(assert (= (and d!1381105 (not c!767117)) b!4500363))

(assert (= (and b!4500363 c!767116) b!4500367))

(assert (= (and b!4500363 (not c!767116)) b!4500366))

(assert (= (or b!4500364 b!4500363) bm!313244))

(assert (= (and bm!313244 c!767115) b!4500370))

(assert (= (and bm!313244 (not c!767115)) b!4500371))

(assert (= (and d!1381105 res!1870903) b!4500365))

(assert (= (and d!1381105 (not res!1870905)) b!4500368))

(assert (= (and b!4500368 res!1870904) b!4500369))

(declare-fun m!5230983 () Bool)

(assert (=> b!4500370 m!5230983))

(declare-fun m!5230985 () Bool)

(assert (=> b!4500364 m!5230985))

(declare-fun m!5230987 () Bool)

(assert (=> b!4500364 m!5230987))

(assert (=> b!4500364 m!5230987))

(declare-fun m!5230989 () Bool)

(assert (=> b!4500364 m!5230989))

(declare-fun m!5230991 () Bool)

(assert (=> b!4500364 m!5230991))

(assert (=> b!4500365 m!5230025))

(declare-fun m!5230993 () Bool)

(assert (=> b!4500365 m!5230993))

(assert (=> b!4500365 m!5230993))

(declare-fun m!5230995 () Bool)

(assert (=> b!4500365 m!5230995))

(assert (=> b!4500368 m!5230987))

(assert (=> b!4500368 m!5230987))

(assert (=> b!4500368 m!5230989))

(declare-fun m!5230997 () Bool)

(assert (=> bm!313244 m!5230997))

(declare-fun m!5230999 () Bool)

(assert (=> d!1381105 m!5230999))

(assert (=> b!4500367 m!5230999))

(declare-fun m!5231001 () Bool)

(assert (=> b!4500367 m!5231001))

(assert (=> b!4500371 m!5230025))

(assert (=> b!4500371 m!5230993))

(assert (=> b!4500369 m!5230025))

(assert (=> b!4500369 m!5230993))

(assert (=> b!4500369 m!5230993))

(assert (=> b!4500369 m!5230995))

(assert (=> d!1380863 d!1381105))

(assert (=> d!1380863 d!1380857))

(declare-fun d!1381107 () Bool)

(assert (=> d!1381107 (contains!13219 (extractMap!1182 (toList!4259 lt!1680973)) key!3287)))

(assert (=> d!1381107 true))

(declare-fun _$34!625 () Unit!91936)

(assert (=> d!1381107 (= (choose!29127 lt!1680973 key!3287 hashF!1107) _$34!625)))

(declare-fun bs!836093 () Bool)

(assert (= bs!836093 d!1381107))

(assert (=> bs!836093 m!5230025))

(assert (=> bs!836093 m!5230025))

(assert (=> bs!836093 m!5230313))

(assert (=> d!1380863 d!1381107))

(declare-fun d!1381117 () Bool)

(declare-fun res!1870908 () Bool)

(declare-fun e!2803319 () Bool)

(assert (=> d!1381117 (=> res!1870908 e!2803319)))

(assert (=> d!1381117 (= res!1870908 ((_ is Nil!50547) (toList!4259 lt!1680973)))))

(assert (=> d!1381117 (= (forall!10179 (toList!4259 lt!1680973) lambda!168750) e!2803319)))

(declare-fun b!4500376 () Bool)

(declare-fun e!2803320 () Bool)

(assert (=> b!4500376 (= e!2803319 e!2803320)))

(declare-fun res!1870909 () Bool)

(assert (=> b!4500376 (=> (not res!1870909) (not e!2803320))))

(assert (=> b!4500376 (= res!1870909 (dynLambda!21109 lambda!168750 (h!56368 (toList!4259 lt!1680973))))))

(declare-fun b!4500377 () Bool)

(assert (=> b!4500377 (= e!2803320 (forall!10179 (t!357629 (toList!4259 lt!1680973)) lambda!168750))))

(assert (= (and d!1381117 (not res!1870908)) b!4500376))

(assert (= (and b!4500376 res!1870909) b!4500377))

(declare-fun b_lambda!152333 () Bool)

(assert (=> (not b_lambda!152333) (not b!4500376)))

(declare-fun m!5231053 () Bool)

(assert (=> b!4500376 m!5231053))

(declare-fun m!5231055 () Bool)

(assert (=> b!4500377 m!5231055))

(assert (=> d!1380863 d!1381117))

(declare-fun d!1381119 () Bool)

(declare-fun lt!1681458 () Bool)

(assert (=> d!1381119 (= lt!1681458 (select (content!8263 (keys!17526 lt!1680967)) key!3287))))

(declare-fun e!2803324 () Bool)

(assert (=> d!1381119 (= lt!1681458 e!2803324)))

(declare-fun res!1870917 () Bool)

(assert (=> d!1381119 (=> (not res!1870917) (not e!2803324))))

(assert (=> d!1381119 (= res!1870917 ((_ is Cons!50549) (keys!17526 lt!1680967)))))

(assert (=> d!1381119 (= (contains!13223 (keys!17526 lt!1680967) key!3287) lt!1681458)))

(declare-fun b!4500382 () Bool)

(declare-fun e!2803323 () Bool)

(assert (=> b!4500382 (= e!2803324 e!2803323)))

(declare-fun res!1870916 () Bool)

(assert (=> b!4500382 (=> res!1870916 e!2803323)))

(assert (=> b!4500382 (= res!1870916 (= (h!56372 (keys!17526 lt!1680967)) key!3287))))

(declare-fun b!4500383 () Bool)

(assert (=> b!4500383 (= e!2803323 (contains!13223 (t!357631 (keys!17526 lt!1680967)) key!3287))))

(assert (= (and d!1381119 res!1870917) b!4500382))

(assert (= (and b!4500382 (not res!1870916)) b!4500383))

(assert (=> d!1381119 m!5230117))

(declare-fun m!5231057 () Bool)

(assert (=> d!1381119 m!5231057))

(declare-fun m!5231059 () Bool)

(assert (=> d!1381119 m!5231059))

(declare-fun m!5231061 () Bool)

(assert (=> b!4500383 m!5231061))

(assert (=> b!4499857 d!1381119))

(declare-fun bs!836094 () Bool)

(declare-fun b!4500385 () Bool)

(assert (= bs!836094 (and b!4500385 b!4500249)))

(declare-fun lambda!168876 () Int)

(assert (=> bs!836094 (= (= (toList!4260 lt!1680967) (toList!4260 lt!1680976)) (= lambda!168876 lambda!168828))))

(declare-fun bs!836095 () Bool)

(assert (= bs!836095 (and b!4500385 b!4500264)))

(assert (=> bs!836095 (= (= (toList!4260 lt!1680967) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168876 lambda!168830))))

(assert (=> b!4500385 true))

(declare-fun bs!836096 () Bool)

(declare-fun b!4500386 () Bool)

(assert (= bs!836096 (and b!4500386 b!4500250)))

(declare-fun lambda!168879 () Int)

(assert (=> bs!836096 (= lambda!168879 lambda!168829)))

(declare-fun bs!836097 () Bool)

(assert (= bs!836097 (and b!4500386 b!4500265)))

(assert (=> bs!836097 (= lambda!168879 lambda!168831)))

(declare-fun d!1381121 () Bool)

(declare-fun e!2803325 () Bool)

(assert (=> d!1381121 e!2803325))

(declare-fun res!1870918 () Bool)

(assert (=> d!1381121 (=> (not res!1870918) (not e!2803325))))

(declare-fun lt!1681459 () List!50673)

(assert (=> d!1381121 (= res!1870918 (noDuplicate!729 lt!1681459))))

(assert (=> d!1381121 (= lt!1681459 (getKeysList!433 (toList!4260 lt!1680967)))))

(assert (=> d!1381121 (= (keys!17526 lt!1680967) lt!1681459)))

(declare-fun b!4500384 () Bool)

(declare-fun res!1870919 () Bool)

(assert (=> b!4500384 (=> (not res!1870919) (not e!2803325))))

(assert (=> b!4500384 (= res!1870919 (= (length!314 lt!1681459) (length!315 (toList!4260 lt!1680967))))))

(declare-fun res!1870920 () Bool)

(assert (=> b!4500385 (=> (not res!1870920) (not e!2803325))))

(assert (=> b!4500385 (= res!1870920 (forall!10182 lt!1681459 lambda!168876))))

(assert (=> b!4500386 (= e!2803325 (= (content!8263 lt!1681459) (content!8263 (map!11103 (toList!4260 lt!1680967) lambda!168879))))))

(assert (= (and d!1381121 res!1870918) b!4500384))

(assert (= (and b!4500384 res!1870919) b!4500385))

(assert (= (and b!4500385 res!1870920) b!4500386))

(declare-fun m!5231063 () Bool)

(assert (=> d!1381121 m!5231063))

(assert (=> d!1381121 m!5230107))

(declare-fun m!5231065 () Bool)

(assert (=> b!4500384 m!5231065))

(declare-fun m!5231067 () Bool)

(assert (=> b!4500384 m!5231067))

(declare-fun m!5231069 () Bool)

(assert (=> b!4500385 m!5231069))

(declare-fun m!5231071 () Bool)

(assert (=> b!4500386 m!5231071))

(declare-fun m!5231073 () Bool)

(assert (=> b!4500386 m!5231073))

(assert (=> b!4500386 m!5231073))

(declare-fun m!5231075 () Bool)

(assert (=> b!4500386 m!5231075))

(assert (=> b!4499857 d!1381121))

(declare-fun d!1381123 () Bool)

(assert (=> d!1381123 (dynLambda!21109 lambda!168721 lt!1680978)))

(assert (=> d!1381123 true))

(declare-fun _$7!1780 () Unit!91936)

(assert (=> d!1381123 (= (choose!29129 (toList!4259 lm!1477) lambda!168721 lt!1680978) _$7!1780)))

(declare-fun b_lambda!152335 () Bool)

(assert (=> (not b_lambda!152335) (not d!1381123)))

(declare-fun bs!836098 () Bool)

(assert (= bs!836098 d!1381123))

(assert (=> bs!836098 m!5230503))

(assert (=> d!1380947 d!1381123))

(assert (=> d!1380947 d!1380985))

(declare-fun d!1381125 () Bool)

(declare-fun e!2803328 () Bool)

(assert (=> d!1381125 e!2803328))

(declare-fun res!1870924 () Bool)

(assert (=> d!1381125 (=> res!1870924 e!2803328)))

(declare-fun lt!1681461 () Bool)

(assert (=> d!1381125 (= res!1870924 (not lt!1681461))))

(declare-fun lt!1681463 () Bool)

(assert (=> d!1381125 (= lt!1681461 lt!1681463)))

(declare-fun lt!1681462 () Unit!91936)

(declare-fun e!2803327 () Unit!91936)

(assert (=> d!1381125 (= lt!1681462 e!2803327)))

(declare-fun c!767119 () Bool)

(assert (=> d!1381125 (= c!767119 lt!1681463)))

(assert (=> d!1381125 (= lt!1681463 (containsKey!1686 (toList!4259 lt!1681200) (_1!28764 lt!1680964)))))

(assert (=> d!1381125 (= (contains!13221 lt!1681200 (_1!28764 lt!1680964)) lt!1681461)))

(declare-fun b!4500394 () Bool)

(declare-fun lt!1681464 () Unit!91936)

(assert (=> b!4500394 (= e!2803327 lt!1681464)))

(assert (=> b!4500394 (= lt!1681464 (lemmaContainsKeyImpliesGetValueByKeyDefined!933 (toList!4259 lt!1681200) (_1!28764 lt!1680964)))))

(assert (=> b!4500394 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1681200) (_1!28764 lt!1680964)))))

(declare-fun b!4500395 () Bool)

(declare-fun Unit!92020 () Unit!91936)

(assert (=> b!4500395 (= e!2803327 Unit!92020)))

(declare-fun b!4500396 () Bool)

(assert (=> b!4500396 (= e!2803328 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1681200) (_1!28764 lt!1680964))))))

(assert (= (and d!1381125 c!767119) b!4500394))

(assert (= (and d!1381125 (not c!767119)) b!4500395))

(assert (= (and d!1381125 (not res!1870924)) b!4500396))

(declare-fun m!5231077 () Bool)

(assert (=> d!1381125 m!5231077))

(declare-fun m!5231079 () Bool)

(assert (=> b!4500394 m!5231079))

(assert (=> b!4500394 m!5230549))

(assert (=> b!4500394 m!5230549))

(declare-fun m!5231081 () Bool)

(assert (=> b!4500394 m!5231081))

(assert (=> b!4500396 m!5230549))

(assert (=> b!4500396 m!5230549))

(assert (=> b!4500396 m!5231081))

(assert (=> d!1380961 d!1381125))

(declare-fun b!4500400 () Bool)

(declare-fun e!2803330 () Option!11049)

(assert (=> b!4500400 (= e!2803330 None!11048)))

(declare-fun b!4500397 () Bool)

(declare-fun e!2803329 () Option!11049)

(assert (=> b!4500397 (= e!2803329 (Some!11048 (_2!28764 (h!56368 lt!1681201))))))

(declare-fun d!1381127 () Bool)

(declare-fun c!767120 () Bool)

(assert (=> d!1381127 (= c!767120 (and ((_ is Cons!50547) lt!1681201) (= (_1!28764 (h!56368 lt!1681201)) (_1!28764 lt!1680964))))))

(assert (=> d!1381127 (= (getValueByKey!1029 lt!1681201 (_1!28764 lt!1680964)) e!2803329)))

(declare-fun b!4500398 () Bool)

(assert (=> b!4500398 (= e!2803329 e!2803330)))

(declare-fun c!767121 () Bool)

(assert (=> b!4500398 (= c!767121 (and ((_ is Cons!50547) lt!1681201) (not (= (_1!28764 (h!56368 lt!1681201)) (_1!28764 lt!1680964)))))))

(declare-fun b!4500399 () Bool)

(assert (=> b!4500399 (= e!2803330 (getValueByKey!1029 (t!357629 lt!1681201) (_1!28764 lt!1680964)))))

(assert (= (and d!1381127 c!767120) b!4500397))

(assert (= (and d!1381127 (not c!767120)) b!4500398))

(assert (= (and b!4500398 c!767121) b!4500399))

(assert (= (and b!4500398 (not c!767121)) b!4500400))

(declare-fun m!5231097 () Bool)

(assert (=> b!4500399 m!5231097))

(assert (=> d!1380961 d!1381127))

(declare-fun d!1381131 () Bool)

(assert (=> d!1381131 (= (getValueByKey!1029 lt!1681201 (_1!28764 lt!1680964)) (Some!11048 (_2!28764 lt!1680964)))))

(declare-fun lt!1681465 () Unit!91936)

(assert (=> d!1381131 (= lt!1681465 (choose!29138 lt!1681201 (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))

(declare-fun e!2803331 () Bool)

(assert (=> d!1381131 e!2803331))

(declare-fun res!1870925 () Bool)

(assert (=> d!1381131 (=> (not res!1870925) (not e!2803331))))

(assert (=> d!1381131 (= res!1870925 (isStrictlySorted!399 lt!1681201))))

(assert (=> d!1381131 (= (lemmaContainsTupThenGetReturnValue!634 lt!1681201 (_1!28764 lt!1680964) (_2!28764 lt!1680964)) lt!1681465)))

(declare-fun b!4500401 () Bool)

(declare-fun res!1870926 () Bool)

(assert (=> b!4500401 (=> (not res!1870926) (not e!2803331))))

(assert (=> b!4500401 (= res!1870926 (containsKey!1686 lt!1681201 (_1!28764 lt!1680964)))))

(declare-fun b!4500402 () Bool)

(assert (=> b!4500402 (= e!2803331 (contains!13220 lt!1681201 (tuple2!50941 (_1!28764 lt!1680964) (_2!28764 lt!1680964))))))

(assert (= (and d!1381131 res!1870925) b!4500401))

(assert (= (and b!4500401 res!1870926) b!4500402))

(assert (=> d!1381131 m!5230543))

(declare-fun m!5231099 () Bool)

(assert (=> d!1381131 m!5231099))

(declare-fun m!5231101 () Bool)

(assert (=> d!1381131 m!5231101))

(declare-fun m!5231103 () Bool)

(assert (=> b!4500401 m!5231103))

(declare-fun m!5231105 () Bool)

(assert (=> b!4500402 m!5231105))

(assert (=> d!1380961 d!1381131))

(declare-fun b!4500404 () Bool)

(declare-fun res!1870928 () Bool)

(declare-fun e!2803332 () Bool)

(assert (=> b!4500404 (=> (not res!1870928) (not e!2803332))))

(declare-fun lt!1681466 () List!50671)

(assert (=> b!4500404 (= res!1870928 (containsKey!1686 lt!1681466 (_1!28764 lt!1680964)))))

(declare-fun bm!313245 () Bool)

(declare-fun call!313252 () List!50671)

(declare-fun call!313250 () List!50671)

(assert (=> bm!313245 (= call!313252 call!313250)))

(declare-fun bm!313246 () Bool)

(declare-fun call!313251 () List!50671)

(assert (=> bm!313246 (= call!313251 call!313252)))

(declare-fun e!2803335 () List!50671)

(declare-fun bm!313247 () Bool)

(declare-fun c!767125 () Bool)

(assert (=> bm!313247 (= call!313250 ($colon$colon!897 e!2803335 (ite c!767125 (h!56368 (toList!4259 lt!1680973)) (tuple2!50941 (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))))

(declare-fun c!767122 () Bool)

(assert (=> bm!313247 (= c!767122 c!767125)))

(declare-fun b!4500405 () Bool)

(declare-fun e!2803334 () List!50671)

(assert (=> b!4500405 (= e!2803334 call!313250)))

(declare-fun b!4500406 () Bool)

(declare-fun e!2803333 () List!50671)

(assert (=> b!4500406 (= e!2803333 call!313251)))

(declare-fun d!1381133 () Bool)

(assert (=> d!1381133 e!2803332))

(declare-fun res!1870927 () Bool)

(assert (=> d!1381133 (=> (not res!1870927) (not e!2803332))))

(assert (=> d!1381133 (= res!1870927 (isStrictlySorted!399 lt!1681466))))

(assert (=> d!1381133 (= lt!1681466 e!2803334)))

(assert (=> d!1381133 (= c!767125 (and ((_ is Cons!50547) (toList!4259 lt!1680973)) (bvslt (_1!28764 (h!56368 (toList!4259 lt!1680973))) (_1!28764 lt!1680964))))))

(assert (=> d!1381133 (isStrictlySorted!399 (toList!4259 lt!1680973))))

(assert (=> d!1381133 (= (insertStrictlySorted!376 (toList!4259 lt!1680973) (_1!28764 lt!1680964) (_2!28764 lt!1680964)) lt!1681466)))

(declare-fun c!767124 () Bool)

(declare-fun c!767123 () Bool)

(declare-fun b!4500403 () Bool)

(assert (=> b!4500403 (= e!2803335 (ite c!767123 (t!357629 (toList!4259 lt!1680973)) (ite c!767124 (Cons!50547 (h!56368 (toList!4259 lt!1680973)) (t!357629 (toList!4259 lt!1680973))) Nil!50547)))))

(declare-fun b!4500407 () Bool)

(assert (=> b!4500407 (= e!2803332 (contains!13220 lt!1681466 (tuple2!50941 (_1!28764 lt!1680964) (_2!28764 lt!1680964))))))

(declare-fun b!4500408 () Bool)

(assert (=> b!4500408 (= c!767124 (and ((_ is Cons!50547) (toList!4259 lt!1680973)) (bvsgt (_1!28764 (h!56368 (toList!4259 lt!1680973))) (_1!28764 lt!1680964))))))

(declare-fun e!2803336 () List!50671)

(assert (=> b!4500408 (= e!2803336 e!2803333)))

(declare-fun b!4500409 () Bool)

(assert (=> b!4500409 (= e!2803336 call!313252)))

(declare-fun b!4500410 () Bool)

(assert (=> b!4500410 (= e!2803335 (insertStrictlySorted!376 (t!357629 (toList!4259 lt!1680973)) (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))

(declare-fun b!4500411 () Bool)

(assert (=> b!4500411 (= e!2803333 call!313251)))

(declare-fun b!4500412 () Bool)

(assert (=> b!4500412 (= e!2803334 e!2803336)))

(assert (=> b!4500412 (= c!767123 (and ((_ is Cons!50547) (toList!4259 lt!1680973)) (= (_1!28764 (h!56368 (toList!4259 lt!1680973))) (_1!28764 lt!1680964))))))

(assert (= (and d!1381133 c!767125) b!4500405))

(assert (= (and d!1381133 (not c!767125)) b!4500412))

(assert (= (and b!4500412 c!767123) b!4500409))

(assert (= (and b!4500412 (not c!767123)) b!4500408))

(assert (= (and b!4500408 c!767124) b!4500406))

(assert (= (and b!4500408 (not c!767124)) b!4500411))

(assert (= (or b!4500406 b!4500411) bm!313246))

(assert (= (or b!4500409 bm!313246) bm!313245))

(assert (= (or b!4500405 bm!313245) bm!313247))

(assert (= (and bm!313247 c!767122) b!4500410))

(assert (= (and bm!313247 (not c!767122)) b!4500403))

(assert (= (and d!1381133 res!1870927) b!4500404))

(assert (= (and b!4500404 res!1870928) b!4500407))

(declare-fun m!5231107 () Bool)

(assert (=> b!4500410 m!5231107))

(declare-fun m!5231109 () Bool)

(assert (=> bm!313247 m!5231109))

(declare-fun m!5231111 () Bool)

(assert (=> d!1381133 m!5231111))

(assert (=> d!1381133 m!5230779))

(declare-fun m!5231113 () Bool)

(assert (=> b!4500407 m!5231113))

(declare-fun m!5231115 () Bool)

(assert (=> b!4500404 m!5231115))

(assert (=> d!1380961 d!1381133))

(declare-fun bs!836103 () Bool)

(declare-fun b!4500420 () Bool)

(assert (= bs!836103 (and b!4500420 b!4500201)))

(declare-fun lambda!168882 () Int)

(assert (=> bs!836103 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168882 lambda!168819))))

(declare-fun bs!836104 () Bool)

(assert (= bs!836104 (and b!4500420 b!4500328)))

(assert (=> bs!836104 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681355) (= lambda!168882 lambda!168838))))

(declare-fun bs!836105 () Bool)

(assert (= bs!836105 (and b!4500420 b!4500350)))

(assert (=> bs!836105 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168882 lambda!168863))))

(declare-fun bs!836106 () Bool)

(assert (= bs!836106 (and b!4500420 d!1380929)))

(assert (=> bs!836106 (not (= lambda!168882 lambda!168760))))

(declare-fun bs!836107 () Bool)

(assert (= bs!836107 (and b!4500420 d!1381103)))

(assert (=> bs!836107 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681422) (= lambda!168882 lambda!168868))))

(declare-fun bs!836108 () Bool)

(assert (= bs!836108 (and b!4500420 b!4500198)))

(assert (=> bs!836108 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681300) (= lambda!168882 lambda!168821))))

(declare-fun bs!836109 () Bool)

(assert (= bs!836109 (and b!4500420 d!1381087)))

(assert (=> bs!836109 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681363) (= lambda!168882 lambda!168843))))

(declare-fun bs!836110 () Bool)

(assert (= bs!836110 (and b!4500420 d!1381003)))

(assert (=> bs!836110 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681308) (= lambda!168882 lambda!168822))))

(assert (=> bs!836108 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168882 lambda!168820))))

(declare-fun bs!836111 () Bool)

(assert (= bs!836111 (and b!4500420 b!4500331)))

(assert (=> bs!836111 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168882 lambda!168834))))

(assert (=> bs!836104 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168882 lambda!168837))))

(declare-fun bs!836112 () Bool)

(assert (= bs!836112 (and b!4500420 b!4500347)))

(assert (=> bs!836112 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681414) (= lambda!168882 lambda!168867))))

(assert (=> bs!836112 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168882 lambda!168866))))

(assert (=> b!4500420 true))

(declare-fun bs!836117 () Bool)

(declare-fun b!4500417 () Bool)

(assert (= bs!836117 (and b!4500417 b!4500420)))

(declare-fun lambda!168884 () Int)

(assert (=> bs!836117 (= lambda!168884 lambda!168882)))

(declare-fun bs!836119 () Bool)

(assert (= bs!836119 (and b!4500417 b!4500201)))

(assert (=> bs!836119 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168884 lambda!168819))))

(declare-fun bs!836121 () Bool)

(assert (= bs!836121 (and b!4500417 b!4500328)))

(assert (=> bs!836121 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681355) (= lambda!168884 lambda!168838))))

(declare-fun bs!836122 () Bool)

(assert (= bs!836122 (and b!4500417 b!4500350)))

(assert (=> bs!836122 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168884 lambda!168863))))

(declare-fun bs!836123 () Bool)

(assert (= bs!836123 (and b!4500417 d!1380929)))

(assert (=> bs!836123 (not (= lambda!168884 lambda!168760))))

(declare-fun bs!836124 () Bool)

(assert (= bs!836124 (and b!4500417 d!1381103)))

(assert (=> bs!836124 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681422) (= lambda!168884 lambda!168868))))

(declare-fun bs!836125 () Bool)

(assert (= bs!836125 (and b!4500417 b!4500198)))

(assert (=> bs!836125 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681300) (= lambda!168884 lambda!168821))))

(declare-fun bs!836126 () Bool)

(assert (= bs!836126 (and b!4500417 d!1381087)))

(assert (=> bs!836126 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681363) (= lambda!168884 lambda!168843))))

(declare-fun bs!836127 () Bool)

(assert (= bs!836127 (and b!4500417 d!1381003)))

(assert (=> bs!836127 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681308) (= lambda!168884 lambda!168822))))

(assert (=> bs!836125 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168884 lambda!168820))))

(declare-fun bs!836128 () Bool)

(assert (= bs!836128 (and b!4500417 b!4500331)))

(assert (=> bs!836128 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168884 lambda!168834))))

(assert (=> bs!836121 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168884 lambda!168837))))

(declare-fun bs!836129 () Bool)

(assert (= bs!836129 (and b!4500417 b!4500347)))

(assert (=> bs!836129 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681414) (= lambda!168884 lambda!168867))))

(assert (=> bs!836129 (= (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168884 lambda!168866))))

(assert (=> b!4500417 true))

(declare-fun lambda!168886 () Int)

(declare-fun lt!1681478 () ListMap!3521)

(assert (=> bs!836117 (= (= lt!1681478 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168886 lambda!168882))))

(assert (=> bs!836119 (= (= lt!1681478 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168886 lambda!168819))))

(assert (=> bs!836121 (= (= lt!1681478 lt!1681355) (= lambda!168886 lambda!168838))))

(assert (=> bs!836122 (= (= lt!1681478 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168886 lambda!168863))))

(assert (=> bs!836123 (not (= lambda!168886 lambda!168760))))

(assert (=> b!4500417 (= (= lt!1681478 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168886 lambda!168884))))

(assert (=> bs!836124 (= (= lt!1681478 lt!1681422) (= lambda!168886 lambda!168868))))

(assert (=> bs!836125 (= (= lt!1681478 lt!1681300) (= lambda!168886 lambda!168821))))

(assert (=> bs!836126 (= (= lt!1681478 lt!1681363) (= lambda!168886 lambda!168843))))

(assert (=> bs!836127 (= (= lt!1681478 lt!1681308) (= lambda!168886 lambda!168822))))

(assert (=> bs!836125 (= (= lt!1681478 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168886 lambda!168820))))

(assert (=> bs!836128 (= (= lt!1681478 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168886 lambda!168834))))

(assert (=> bs!836121 (= (= lt!1681478 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168886 lambda!168837))))

(assert (=> bs!836129 (= (= lt!1681478 lt!1681414) (= lambda!168886 lambda!168867))))

(assert (=> bs!836129 (= (= lt!1681478 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168886 lambda!168866))))

(assert (=> b!4500417 true))

(declare-fun bs!836131 () Bool)

(declare-fun d!1381135 () Bool)

(assert (= bs!836131 (and d!1381135 b!4500420)))

(declare-fun lt!1681486 () ListMap!3521)

(declare-fun lambda!168887 () Int)

(assert (=> bs!836131 (= (= lt!1681486 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168887 lambda!168882))))

(declare-fun bs!836132 () Bool)

(assert (= bs!836132 (and d!1381135 b!4500201)))

(assert (=> bs!836132 (= (= lt!1681486 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168887 lambda!168819))))

(declare-fun bs!836133 () Bool)

(assert (= bs!836133 (and d!1381135 b!4500328)))

(assert (=> bs!836133 (= (= lt!1681486 lt!1681355) (= lambda!168887 lambda!168838))))

(declare-fun bs!836134 () Bool)

(assert (= bs!836134 (and d!1381135 b!4500417)))

(assert (=> bs!836134 (= (= lt!1681486 lt!1681478) (= lambda!168887 lambda!168886))))

(declare-fun bs!836135 () Bool)

(assert (= bs!836135 (and d!1381135 b!4500350)))

(assert (=> bs!836135 (= (= lt!1681486 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168887 lambda!168863))))

(declare-fun bs!836136 () Bool)

(assert (= bs!836136 (and d!1381135 d!1380929)))

(assert (=> bs!836136 (not (= lambda!168887 lambda!168760))))

(assert (=> bs!836134 (= (= lt!1681486 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168887 lambda!168884))))

(declare-fun bs!836137 () Bool)

(assert (= bs!836137 (and d!1381135 d!1381103)))

(assert (=> bs!836137 (= (= lt!1681486 lt!1681422) (= lambda!168887 lambda!168868))))

(declare-fun bs!836138 () Bool)

(assert (= bs!836138 (and d!1381135 b!4500198)))

(assert (=> bs!836138 (= (= lt!1681486 lt!1681300) (= lambda!168887 lambda!168821))))

(declare-fun bs!836139 () Bool)

(assert (= bs!836139 (and d!1381135 d!1381087)))

(assert (=> bs!836139 (= (= lt!1681486 lt!1681363) (= lambda!168887 lambda!168843))))

(declare-fun bs!836140 () Bool)

(assert (= bs!836140 (and d!1381135 d!1381003)))

(assert (=> bs!836140 (= (= lt!1681486 lt!1681308) (= lambda!168887 lambda!168822))))

(assert (=> bs!836138 (= (= lt!1681486 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168887 lambda!168820))))

(declare-fun bs!836141 () Bool)

(assert (= bs!836141 (and d!1381135 b!4500331)))

(assert (=> bs!836141 (= (= lt!1681486 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168887 lambda!168834))))

(assert (=> bs!836133 (= (= lt!1681486 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168887 lambda!168837))))

(declare-fun bs!836142 () Bool)

(assert (= bs!836142 (and d!1381135 b!4500347)))

(assert (=> bs!836142 (= (= lt!1681486 lt!1681414) (= lambda!168887 lambda!168867))))

(assert (=> bs!836142 (= (= lt!1681486 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168887 lambda!168866))))

(assert (=> d!1381135 true))

(declare-fun e!2803341 () ListMap!3521)

(assert (=> b!4500417 (= e!2803341 lt!1681478)))

(declare-fun lt!1681472 () ListMap!3521)

(assert (=> b!4500417 (= lt!1681472 (+!1475 (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680973))))))))

(assert (=> b!4500417 (= lt!1681478 (addToMapMapFromBucket!653 (t!357628 (_2!28764 (h!56368 (toList!4259 lt!1680973)))) (+!1475 (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680973)))))))))

(declare-fun lt!1681485 () Unit!91936)

(declare-fun call!313254 () Unit!91936)

(assert (=> b!4500417 (= lt!1681485 call!313254)))

(assert (=> b!4500417 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) lambda!168884)))

(declare-fun lt!1681476 () Unit!91936)

(assert (=> b!4500417 (= lt!1681476 lt!1681485)))

(assert (=> b!4500417 (forall!10181 (toList!4260 lt!1681472) lambda!168886)))

(declare-fun lt!1681489 () Unit!91936)

(declare-fun Unit!92031 () Unit!91936)

(assert (=> b!4500417 (= lt!1681489 Unit!92031)))

(assert (=> b!4500417 (forall!10181 (t!357628 (_2!28764 (h!56368 (toList!4259 lt!1680973)))) lambda!168886)))

(declare-fun lt!1681471 () Unit!91936)

(declare-fun Unit!92033 () Unit!91936)

(assert (=> b!4500417 (= lt!1681471 Unit!92033)))

(declare-fun lt!1681469 () Unit!91936)

(declare-fun Unit!92034 () Unit!91936)

(assert (=> b!4500417 (= lt!1681469 Unit!92034)))

(declare-fun lt!1681484 () Unit!91936)

(assert (=> b!4500417 (= lt!1681484 (forallContained!2434 (toList!4260 lt!1681472) lambda!168886 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680973))))))))

(assert (=> b!4500417 (contains!13219 lt!1681472 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680973))))))))

(declare-fun lt!1681470 () Unit!91936)

(declare-fun Unit!92035 () Unit!91936)

(assert (=> b!4500417 (= lt!1681470 Unit!92035)))

(assert (=> b!4500417 (contains!13219 lt!1681478 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680973))))))))

(declare-fun lt!1681479 () Unit!91936)

(declare-fun Unit!92036 () Unit!91936)

(assert (=> b!4500417 (= lt!1681479 Unit!92036)))

(declare-fun call!313253 () Bool)

(assert (=> b!4500417 call!313253))

(declare-fun lt!1681488 () Unit!91936)

(declare-fun Unit!92037 () Unit!91936)

(assert (=> b!4500417 (= lt!1681488 Unit!92037)))

(assert (=> b!4500417 (forall!10181 (toList!4260 lt!1681472) lambda!168886)))

(declare-fun lt!1681480 () Unit!91936)

(declare-fun Unit!92038 () Unit!91936)

(assert (=> b!4500417 (= lt!1681480 Unit!92038)))

(declare-fun lt!1681483 () Unit!91936)

(declare-fun Unit!92039 () Unit!91936)

(assert (=> b!4500417 (= lt!1681483 Unit!92039)))

(declare-fun lt!1681487 () Unit!91936)

(assert (=> b!4500417 (= lt!1681487 (addForallContainsKeyThenBeforeAdding!307 (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681478 (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680973))))) (_2!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680973)))))))))

(declare-fun call!313255 () Bool)

(assert (=> b!4500417 call!313255))

(declare-fun lt!1681481 () Unit!91936)

(assert (=> b!4500417 (= lt!1681481 lt!1681487)))

(assert (=> b!4500417 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) lambda!168886)))

(declare-fun lt!1681482 () Unit!91936)

(declare-fun Unit!92040 () Unit!91936)

(assert (=> b!4500417 (= lt!1681482 Unit!92040)))

(declare-fun res!1870933 () Bool)

(assert (=> b!4500417 (= res!1870933 (forall!10181 (_2!28764 (h!56368 (toList!4259 lt!1680973))) lambda!168886))))

(declare-fun e!2803342 () Bool)

(assert (=> b!4500417 (=> (not res!1870933) (not e!2803342))))

(assert (=> b!4500417 e!2803342))

(declare-fun lt!1681473 () Unit!91936)

(declare-fun Unit!92041 () Unit!91936)

(assert (=> b!4500417 (= lt!1681473 Unit!92041)))

(declare-fun b!4500418 () Bool)

(assert (=> b!4500418 (= e!2803342 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) lambda!168886))))

(declare-fun bm!313248 () Bool)

(assert (=> bm!313248 (= call!313254 (lemmaContainsAllItsOwnKeys!307 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))))))

(assert (=> b!4500420 (= e!2803341 (extractMap!1182 (t!357629 (toList!4259 lt!1680973))))))

(declare-fun lt!1681477 () Unit!91936)

(assert (=> b!4500420 (= lt!1681477 call!313254)))

(assert (=> b!4500420 call!313255))

(declare-fun lt!1681474 () Unit!91936)

(assert (=> b!4500420 (= lt!1681474 lt!1681477)))

(assert (=> b!4500420 call!313253))

(declare-fun lt!1681475 () Unit!91936)

(declare-fun Unit!92042 () Unit!91936)

(assert (=> b!4500420 (= lt!1681475 Unit!92042)))

(declare-fun bm!313249 () Bool)

(declare-fun c!767126 () Bool)

(assert (=> bm!313249 (= call!313255 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (ite c!767126 lambda!168882 lambda!168886)))))

(declare-fun b!4500419 () Bool)

(declare-fun res!1870934 () Bool)

(declare-fun e!2803343 () Bool)

(assert (=> b!4500419 (=> (not res!1870934) (not e!2803343))))

(assert (=> b!4500419 (= res!1870934 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) lambda!168887))))

(assert (=> d!1381135 e!2803343))

(declare-fun res!1870935 () Bool)

(assert (=> d!1381135 (=> (not res!1870935) (not e!2803343))))

(assert (=> d!1381135 (= res!1870935 (forall!10181 (_2!28764 (h!56368 (toList!4259 lt!1680973))) lambda!168887))))

(assert (=> d!1381135 (= lt!1681486 e!2803341)))

(assert (=> d!1381135 (= c!767126 ((_ is Nil!50546) (_2!28764 (h!56368 (toList!4259 lt!1680973)))))))

(assert (=> d!1381135 (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lt!1680973))))))

(assert (=> d!1381135 (= (addToMapMapFromBucket!653 (_2!28764 (h!56368 (toList!4259 lt!1680973))) (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) lt!1681486)))

(declare-fun b!4500421 () Bool)

(assert (=> b!4500421 (= e!2803343 (invariantList!985 (toList!4260 lt!1681486)))))

(declare-fun bm!313250 () Bool)

(assert (=> bm!313250 (= call!313253 (forall!10181 (ite c!767126 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (_2!28764 (h!56368 (toList!4259 lt!1680973)))) (ite c!767126 lambda!168882 lambda!168886)))))

(assert (= (and d!1381135 c!767126) b!4500420))

(assert (= (and d!1381135 (not c!767126)) b!4500417))

(assert (= (and b!4500417 res!1870933) b!4500418))

(assert (= (or b!4500420 b!4500417) bm!313250))

(assert (= (or b!4500420 b!4500417) bm!313249))

(assert (= (or b!4500420 b!4500417) bm!313248))

(assert (= (and d!1381135 res!1870935) b!4500419))

(assert (= (and b!4500419 res!1870934) b!4500421))

(assert (=> b!4500417 m!5230255))

(declare-fun m!5231151 () Bool)

(assert (=> b!4500417 m!5231151))

(declare-fun m!5231153 () Bool)

(assert (=> b!4500417 m!5231153))

(declare-fun m!5231155 () Bool)

(assert (=> b!4500417 m!5231155))

(assert (=> b!4500417 m!5231153))

(assert (=> b!4500417 m!5231151))

(declare-fun m!5231161 () Bool)

(assert (=> b!4500417 m!5231161))

(assert (=> b!4500417 m!5230255))

(declare-fun m!5231163 () Bool)

(assert (=> b!4500417 m!5231163))

(declare-fun m!5231165 () Bool)

(assert (=> b!4500417 m!5231165))

(declare-fun m!5231167 () Bool)

(assert (=> b!4500417 m!5231167))

(declare-fun m!5231169 () Bool)

(assert (=> b!4500417 m!5231169))

(declare-fun m!5231171 () Bool)

(assert (=> b!4500417 m!5231171))

(declare-fun m!5231173 () Bool)

(assert (=> b!4500417 m!5231173))

(declare-fun m!5231175 () Bool)

(assert (=> b!4500417 m!5231175))

(declare-fun m!5231177 () Bool)

(assert (=> d!1381135 m!5231177))

(declare-fun m!5231179 () Bool)

(assert (=> d!1381135 m!5231179))

(declare-fun m!5231181 () Bool)

(assert (=> b!4500419 m!5231181))

(assert (=> b!4500418 m!5231165))

(declare-fun m!5231183 () Bool)

(assert (=> bm!313249 m!5231183))

(declare-fun m!5231185 () Bool)

(assert (=> b!4500421 m!5231185))

(assert (=> bm!313248 m!5230255))

(declare-fun m!5231187 () Bool)

(assert (=> bm!313248 m!5231187))

(declare-fun m!5231189 () Bool)

(assert (=> bm!313250 m!5231189))

(assert (=> b!4499922 d!1381135))

(declare-fun bs!836143 () Bool)

(declare-fun d!1381155 () Bool)

(assert (= bs!836143 (and d!1381155 d!1380959)))

(declare-fun lambda!168888 () Int)

(assert (=> bs!836143 (= lambda!168888 lambda!168766)))

(declare-fun bs!836144 () Bool)

(assert (= bs!836144 (and d!1381155 d!1381089)))

(assert (=> bs!836144 (= lambda!168888 lambda!168852)))

(declare-fun bs!836145 () Bool)

(assert (= bs!836145 (and d!1381155 d!1380863)))

(assert (=> bs!836145 (= lambda!168888 lambda!168750)))

(declare-fun bs!836146 () Bool)

(assert (= bs!836146 (and d!1381155 d!1380861)))

(assert (=> bs!836146 (= lambda!168888 lambda!168734)))

(declare-fun bs!836147 () Bool)

(assert (= bs!836147 (and d!1381155 d!1380969)))

(assert (=> bs!836147 (= lambda!168888 lambda!168767)))

(declare-fun bs!836148 () Bool)

(assert (= bs!836148 (and d!1381155 d!1380971)))

(assert (=> bs!836148 (= lambda!168888 lambda!168770)))

(declare-fun bs!836149 () Bool)

(assert (= bs!836149 (and d!1381155 d!1380983)))

(assert (=> bs!836149 (= lambda!168888 lambda!168774)))

(declare-fun bs!836150 () Bool)

(assert (= bs!836150 (and d!1381155 d!1381031)))

(assert (=> bs!836150 (= lambda!168888 lambda!168823)))

(declare-fun bs!836151 () Bool)

(assert (= bs!836151 (and d!1381155 d!1380943)))

(assert (=> bs!836151 (= lambda!168888 lambda!168763)))

(declare-fun bs!836152 () Bool)

(assert (= bs!836152 (and d!1381155 d!1380973)))

(assert (=> bs!836152 (= lambda!168888 lambda!168771)))

(declare-fun bs!836153 () Bool)

(assert (= bs!836153 (and d!1381155 d!1380837)))

(assert (=> bs!836153 (= lambda!168888 lambda!168731)))

(declare-fun bs!836154 () Bool)

(assert (= bs!836154 (and d!1381155 d!1380857)))

(assert (=> bs!836154 (= lambda!168888 lambda!168733)))

(declare-fun bs!836155 () Bool)

(assert (= bs!836155 (and d!1381155 d!1380989)))

(assert (=> bs!836155 (not (= lambda!168888 lambda!168777))))

(declare-fun bs!836156 () Bool)

(assert (= bs!836156 (and d!1381155 start!444228)))

(assert (=> bs!836156 (= lambda!168888 lambda!168721)))

(declare-fun lt!1681494 () ListMap!3521)

(assert (=> d!1381155 (invariantList!985 (toList!4260 lt!1681494))))

(declare-fun e!2803361 () ListMap!3521)

(assert (=> d!1381155 (= lt!1681494 e!2803361)))

(declare-fun c!767129 () Bool)

(assert (=> d!1381155 (= c!767129 ((_ is Cons!50547) (t!357629 (toList!4259 lt!1680973))))))

(assert (=> d!1381155 (forall!10179 (t!357629 (toList!4259 lt!1680973)) lambda!168888)))

(assert (=> d!1381155 (= (extractMap!1182 (t!357629 (toList!4259 lt!1680973))) lt!1681494)))

(declare-fun b!4500443 () Bool)

(assert (=> b!4500443 (= e!2803361 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (t!357629 (toList!4259 lt!1680973)))) (extractMap!1182 (t!357629 (t!357629 (toList!4259 lt!1680973))))))))

(declare-fun b!4500444 () Bool)

(assert (=> b!4500444 (= e!2803361 (ListMap!3522 Nil!50546))))

(assert (= (and d!1381155 c!767129) b!4500443))

(assert (= (and d!1381155 (not c!767129)) b!4500444))

(declare-fun m!5231191 () Bool)

(assert (=> d!1381155 m!5231191))

(declare-fun m!5231193 () Bool)

(assert (=> d!1381155 m!5231193))

(declare-fun m!5231195 () Bool)

(assert (=> b!4500443 m!5231195))

(assert (=> b!4500443 m!5231195))

(declare-fun m!5231197 () Bool)

(assert (=> b!4500443 m!5231197))

(assert (=> b!4499922 d!1381155))

(declare-fun d!1381157 () Bool)

(declare-fun res!1870959 () Bool)

(declare-fun e!2803368 () Bool)

(assert (=> d!1381157 (=> res!1870959 e!2803368)))

(assert (=> d!1381157 (= res!1870959 (and ((_ is Cons!50546) (toList!4260 lt!1680967)) (= (_1!28763 (h!56367 (toList!4260 lt!1680967))) key!3287)))))

(assert (=> d!1381157 (= (containsKey!1684 (toList!4260 lt!1680967) key!3287) e!2803368)))

(declare-fun b!4500451 () Bool)

(declare-fun e!2803369 () Bool)

(assert (=> b!4500451 (= e!2803368 e!2803369)))

(declare-fun res!1870960 () Bool)

(assert (=> b!4500451 (=> (not res!1870960) (not e!2803369))))

(assert (=> b!4500451 (= res!1870960 ((_ is Cons!50546) (toList!4260 lt!1680967)))))

(declare-fun b!4500452 () Bool)

(assert (=> b!4500452 (= e!2803369 (containsKey!1684 (t!357628 (toList!4260 lt!1680967)) key!3287))))

(assert (= (and d!1381157 (not res!1870959)) b!4500451))

(assert (= (and b!4500451 res!1870960) b!4500452))

(declare-fun m!5231201 () Bool)

(assert (=> b!4500452 m!5231201))

(assert (=> b!4499859 d!1381157))

(declare-fun d!1381161 () Bool)

(assert (=> d!1381161 (containsKey!1684 (toList!4260 lt!1680967) key!3287)))

(declare-fun lt!1681516 () Unit!91936)

(assert (=> d!1381161 (= lt!1681516 (choose!29137 (toList!4260 lt!1680967) key!3287))))

(assert (=> d!1381161 (invariantList!985 (toList!4260 lt!1680967))))

(assert (=> d!1381161 (= (lemmaInGetKeysListThenContainsKey!432 (toList!4260 lt!1680967) key!3287) lt!1681516)))

(declare-fun bs!836157 () Bool)

(assert (= bs!836157 d!1381161))

(assert (=> bs!836157 m!5230123))

(declare-fun m!5231203 () Bool)

(assert (=> bs!836157 m!5231203))

(declare-fun m!5231205 () Bool)

(assert (=> bs!836157 m!5231205))

(assert (=> b!4499859 d!1381161))

(declare-fun d!1381163 () Bool)

(assert (=> d!1381163 (= (get!16521 (getValueByKey!1029 (toList!4259 lt!1680973) hash!344)) (v!44546 (getValueByKey!1029 (toList!4259 lt!1680973) hash!344)))))

(assert (=> d!1380933 d!1381163))

(assert (=> d!1380933 d!1381045))

(declare-fun d!1381165 () Bool)

(declare-fun isEmpty!28609 (Option!11048) Bool)

(assert (=> d!1381165 (= (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1680967) key!3287)) (not (isEmpty!28609 (getValueByKey!1028 (toList!4260 lt!1680967) key!3287))))))

(declare-fun bs!836162 () Bool)

(assert (= bs!836162 d!1381165))

(assert (=> bs!836162 m!5230111))

(declare-fun m!5231207 () Bool)

(assert (=> bs!836162 m!5231207))

(assert (=> b!4499860 d!1381165))

(declare-fun b!4500466 () Bool)

(declare-fun e!2803377 () Option!11048)

(assert (=> b!4500466 (= e!2803377 (Some!11047 (_2!28763 (h!56367 (toList!4260 lt!1680967)))))))

(declare-fun d!1381167 () Bool)

(declare-fun c!767135 () Bool)

(assert (=> d!1381167 (= c!767135 (and ((_ is Cons!50546) (toList!4260 lt!1680967)) (= (_1!28763 (h!56367 (toList!4260 lt!1680967))) key!3287)))))

(assert (=> d!1381167 (= (getValueByKey!1028 (toList!4260 lt!1680967) key!3287) e!2803377)))

(declare-fun b!4500468 () Bool)

(declare-fun e!2803378 () Option!11048)

(assert (=> b!4500468 (= e!2803378 (getValueByKey!1028 (t!357628 (toList!4260 lt!1680967)) key!3287))))

(declare-fun b!4500469 () Bool)

(assert (=> b!4500469 (= e!2803378 None!11047)))

(declare-fun b!4500467 () Bool)

(assert (=> b!4500467 (= e!2803377 e!2803378)))

(declare-fun c!767136 () Bool)

(assert (=> b!4500467 (= c!767136 (and ((_ is Cons!50546) (toList!4260 lt!1680967)) (not (= (_1!28763 (h!56367 (toList!4260 lt!1680967))) key!3287))))))

(assert (= (and d!1381167 c!767135) b!4500466))

(assert (= (and d!1381167 (not c!767135)) b!4500467))

(assert (= (and b!4500467 c!767136) b!4500468))

(assert (= (and b!4500467 (not c!767136)) b!4500469))

(declare-fun m!5231209 () Bool)

(assert (=> b!4500468 m!5231209))

(assert (=> b!4499860 d!1381167))

(declare-fun d!1381169 () Bool)

(declare-fun res!1870964 () Bool)

(declare-fun e!2803379 () Bool)

(assert (=> d!1381169 (=> res!1870964 e!2803379)))

(assert (=> d!1381169 (= res!1870964 ((_ is Nil!50547) (t!357629 (toList!4259 lm!1477))))))

(assert (=> d!1381169 (= (forall!10179 (t!357629 (toList!4259 lm!1477)) lambda!168721) e!2803379)))

(declare-fun b!4500470 () Bool)

(declare-fun e!2803380 () Bool)

(assert (=> b!4500470 (= e!2803379 e!2803380)))

(declare-fun res!1870965 () Bool)

(assert (=> b!4500470 (=> (not res!1870965) (not e!2803380))))

(assert (=> b!4500470 (= res!1870965 (dynLambda!21109 lambda!168721 (h!56368 (t!357629 (toList!4259 lm!1477)))))))

(declare-fun b!4500471 () Bool)

(assert (=> b!4500471 (= e!2803380 (forall!10179 (t!357629 (t!357629 (toList!4259 lm!1477))) lambda!168721))))

(assert (= (and d!1381169 (not res!1870964)) b!4500470))

(assert (= (and b!4500470 res!1870965) b!4500471))

(declare-fun b_lambda!152339 () Bool)

(assert (=> (not b_lambda!152339) (not b!4500470)))

(declare-fun m!5231211 () Bool)

(assert (=> b!4500470 m!5231211))

(declare-fun m!5231213 () Bool)

(assert (=> b!4500471 m!5231213))

(assert (=> b!4500104 d!1381169))

(declare-fun bs!836189 () Bool)

(declare-fun b!4500539 () Bool)

(assert (= bs!836189 (and b!4500539 b!4500249)))

(declare-fun lambda!168902 () Int)

(assert (=> bs!836189 (= (= (t!357628 (toList!4260 lt!1680967)) (toList!4260 lt!1680976)) (= lambda!168902 lambda!168828))))

(declare-fun bs!836190 () Bool)

(assert (= bs!836190 (and b!4500539 b!4500264)))

(assert (=> bs!836190 (= (= (t!357628 (toList!4260 lt!1680967)) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168902 lambda!168830))))

(declare-fun bs!836191 () Bool)

(assert (= bs!836191 (and b!4500539 b!4500385)))

(assert (=> bs!836191 (= (= (t!357628 (toList!4260 lt!1680967)) (toList!4260 lt!1680967)) (= lambda!168902 lambda!168876))))

(assert (=> b!4500539 true))

(declare-fun bs!836192 () Bool)

(declare-fun b!4500535 () Bool)

(assert (= bs!836192 (and b!4500535 b!4500249)))

(declare-fun lambda!168903 () Int)

(assert (=> bs!836192 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967))) (toList!4260 lt!1680976)) (= lambda!168903 lambda!168828))))

(declare-fun bs!836193 () Bool)

(assert (= bs!836193 (and b!4500535 b!4500264)))

(assert (=> bs!836193 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967))) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168903 lambda!168830))))

(declare-fun bs!836194 () Bool)

(assert (= bs!836194 (and b!4500535 b!4500385)))

(assert (=> bs!836194 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967))) (toList!4260 lt!1680967)) (= lambda!168903 lambda!168876))))

(declare-fun bs!836195 () Bool)

(assert (= bs!836195 (and b!4500535 b!4500539)))

(assert (=> bs!836195 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967))) (t!357628 (toList!4260 lt!1680967))) (= lambda!168903 lambda!168902))))

(assert (=> b!4500535 true))

(declare-fun bs!836196 () Bool)

(declare-fun b!4500540 () Bool)

(assert (= bs!836196 (and b!4500540 b!4500535)))

(declare-fun lambda!168904 () Int)

(assert (=> bs!836196 (= (= (toList!4260 lt!1680967) (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967)))) (= lambda!168904 lambda!168903))))

(declare-fun bs!836197 () Bool)

(assert (= bs!836197 (and b!4500540 b!4500539)))

(assert (=> bs!836197 (= (= (toList!4260 lt!1680967) (t!357628 (toList!4260 lt!1680967))) (= lambda!168904 lambda!168902))))

(declare-fun bs!836198 () Bool)

(assert (= bs!836198 (and b!4500540 b!4500249)))

(assert (=> bs!836198 (= (= (toList!4260 lt!1680967) (toList!4260 lt!1680976)) (= lambda!168904 lambda!168828))))

(declare-fun bs!836199 () Bool)

(assert (= bs!836199 (and b!4500540 b!4500385)))

(assert (=> bs!836199 (= lambda!168904 lambda!168876)))

(declare-fun bs!836200 () Bool)

(assert (= bs!836200 (and b!4500540 b!4500264)))

(assert (=> bs!836200 (= (= (toList!4260 lt!1680967) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168904 lambda!168830))))

(assert (=> b!4500540 true))

(declare-fun bs!836201 () Bool)

(declare-fun b!4500536 () Bool)

(assert (= bs!836201 (and b!4500536 b!4500250)))

(declare-fun lambda!168905 () Int)

(assert (=> bs!836201 (= lambda!168905 lambda!168829)))

(declare-fun bs!836202 () Bool)

(assert (= bs!836202 (and b!4500536 b!4500265)))

(assert (=> bs!836202 (= lambda!168905 lambda!168831)))

(declare-fun bs!836203 () Bool)

(assert (= bs!836203 (and b!4500536 b!4500386)))

(assert (=> bs!836203 (= lambda!168905 lambda!168879)))

(declare-fun b!4500533 () Bool)

(declare-fun e!2803415 () Unit!91936)

(declare-fun Unit!92048 () Unit!91936)

(assert (=> b!4500533 (= e!2803415 Unit!92048)))

(declare-fun d!1381171 () Bool)

(declare-fun e!2803414 () Bool)

(assert (=> d!1381171 e!2803414))

(declare-fun res!1870987 () Bool)

(assert (=> d!1381171 (=> (not res!1870987) (not e!2803414))))

(declare-fun lt!1681545 () List!50673)

(assert (=> d!1381171 (= res!1870987 (noDuplicate!729 lt!1681545))))

(declare-fun e!2803412 () List!50673)

(assert (=> d!1381171 (= lt!1681545 e!2803412)))

(declare-fun c!767158 () Bool)

(assert (=> d!1381171 (= c!767158 ((_ is Cons!50546) (toList!4260 lt!1680967)))))

(assert (=> d!1381171 (invariantList!985 (toList!4260 lt!1680967))))

(assert (=> d!1381171 (= (getKeysList!433 (toList!4260 lt!1680967)) lt!1681545)))

(declare-fun b!4500534 () Bool)

(declare-fun res!1870985 () Bool)

(assert (=> b!4500534 (=> (not res!1870985) (not e!2803414))))

(assert (=> b!4500534 (= res!1870985 (= (length!314 lt!1681545) (length!315 (toList!4260 lt!1680967))))))

(assert (=> b!4500535 (= e!2803412 (Cons!50549 (_1!28763 (h!56367 (toList!4260 lt!1680967))) (getKeysList!433 (t!357628 (toList!4260 lt!1680967)))))))

(declare-fun c!767159 () Bool)

(assert (=> b!4500535 (= c!767159 (containsKey!1684 (t!357628 (toList!4260 lt!1680967)) (_1!28763 (h!56367 (toList!4260 lt!1680967)))))))

(declare-fun lt!1681541 () Unit!91936)

(assert (=> b!4500535 (= lt!1681541 e!2803415)))

(declare-fun c!767160 () Bool)

(assert (=> b!4500535 (= c!767160 (contains!13223 (getKeysList!433 (t!357628 (toList!4260 lt!1680967))) (_1!28763 (h!56367 (toList!4260 lt!1680967)))))))

(declare-fun lt!1681544 () Unit!91936)

(declare-fun e!2803413 () Unit!91936)

(assert (=> b!4500535 (= lt!1681544 e!2803413)))

(declare-fun lt!1681543 () List!50673)

(assert (=> b!4500535 (= lt!1681543 (getKeysList!433 (t!357628 (toList!4260 lt!1680967))))))

(declare-fun lt!1681547 () Unit!91936)

(declare-fun lemmaForallContainsAddHeadPreserves!151 (List!50670 List!50673 tuple2!50938) Unit!91936)

(assert (=> b!4500535 (= lt!1681547 (lemmaForallContainsAddHeadPreserves!151 (t!357628 (toList!4260 lt!1680967)) lt!1681543 (h!56367 (toList!4260 lt!1680967))))))

(assert (=> b!4500535 (forall!10182 lt!1681543 lambda!168903)))

(declare-fun lt!1681546 () Unit!91936)

(assert (=> b!4500535 (= lt!1681546 lt!1681547)))

(assert (=> b!4500536 (= e!2803414 (= (content!8263 lt!1681545) (content!8263 (map!11103 (toList!4260 lt!1680967) lambda!168905))))))

(declare-fun b!4500537 () Bool)

(assert (=> b!4500537 false))

(declare-fun Unit!92052 () Unit!91936)

(assert (=> b!4500537 (= e!2803415 Unit!92052)))

(declare-fun b!4500538 () Bool)

(assert (=> b!4500538 (= e!2803412 Nil!50549)))

(assert (=> b!4500539 false))

(declare-fun lt!1681542 () Unit!91936)

(declare-fun forallContained!2437 (List!50673 Int K!11955) Unit!91936)

(assert (=> b!4500539 (= lt!1681542 (forallContained!2437 (getKeysList!433 (t!357628 (toList!4260 lt!1680967))) lambda!168902 (_1!28763 (h!56367 (toList!4260 lt!1680967)))))))

(declare-fun Unit!92054 () Unit!91936)

(assert (=> b!4500539 (= e!2803413 Unit!92054)))

(declare-fun res!1870986 () Bool)

(assert (=> b!4500540 (=> (not res!1870986) (not e!2803414))))

(assert (=> b!4500540 (= res!1870986 (forall!10182 lt!1681545 lambda!168904))))

(declare-fun b!4500541 () Bool)

(declare-fun Unit!92055 () Unit!91936)

(assert (=> b!4500541 (= e!2803413 Unit!92055)))

(assert (= (and d!1381171 c!767158) b!4500535))

(assert (= (and d!1381171 (not c!767158)) b!4500538))

(assert (= (and b!4500535 c!767159) b!4500537))

(assert (= (and b!4500535 (not c!767159)) b!4500533))

(assert (= (and b!4500535 c!767160) b!4500539))

(assert (= (and b!4500535 (not c!767160)) b!4500541))

(assert (= (and d!1381171 res!1870987) b!4500534))

(assert (= (and b!4500534 res!1870985) b!4500540))

(assert (= (and b!4500540 res!1870986) b!4500536))

(declare-fun m!5231299 () Bool)

(assert (=> b!4500535 m!5231299))

(declare-fun m!5231301 () Bool)

(assert (=> b!4500535 m!5231301))

(assert (=> b!4500535 m!5231301))

(declare-fun m!5231305 () Bool)

(assert (=> b!4500535 m!5231305))

(declare-fun m!5231307 () Bool)

(assert (=> b!4500535 m!5231307))

(declare-fun m!5231309 () Bool)

(assert (=> b!4500535 m!5231309))

(assert (=> b!4500539 m!5231301))

(assert (=> b!4500539 m!5231301))

(declare-fun m!5231311 () Bool)

(assert (=> b!4500539 m!5231311))

(declare-fun m!5231313 () Bool)

(assert (=> b!4500536 m!5231313))

(declare-fun m!5231315 () Bool)

(assert (=> b!4500536 m!5231315))

(assert (=> b!4500536 m!5231315))

(declare-fun m!5231317 () Bool)

(assert (=> b!4500536 m!5231317))

(declare-fun m!5231319 () Bool)

(assert (=> d!1381171 m!5231319))

(assert (=> d!1381171 m!5231205))

(declare-fun m!5231323 () Bool)

(assert (=> b!4500534 m!5231323))

(assert (=> b!4500534 m!5231067))

(declare-fun m!5231325 () Bool)

(assert (=> b!4500540 m!5231325))

(assert (=> b!4499862 d!1381171))

(declare-fun d!1381197 () Bool)

(declare-fun res!1870995 () Bool)

(declare-fun e!2803428 () Bool)

(assert (=> d!1381197 (=> res!1870995 e!2803428)))

(assert (=> d!1381197 (= res!1870995 (and ((_ is Cons!50546) (_2!28764 (h!56368 (toList!4259 lt!1680973)))) (= (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lt!1680973))))) key!3287)))))

(assert (=> d!1381197 (= (containsKey!1682 (_2!28764 (h!56368 (toList!4259 lt!1680973))) key!3287) e!2803428)))

(declare-fun b!4500565 () Bool)

(declare-fun e!2803429 () Bool)

(assert (=> b!4500565 (= e!2803428 e!2803429)))

(declare-fun res!1870996 () Bool)

(assert (=> b!4500565 (=> (not res!1870996) (not e!2803429))))

(assert (=> b!4500565 (= res!1870996 ((_ is Cons!50546) (_2!28764 (h!56368 (toList!4259 lt!1680973)))))))

(declare-fun b!4500566 () Bool)

(assert (=> b!4500566 (= e!2803429 (containsKey!1682 (t!357628 (_2!28764 (h!56368 (toList!4259 lt!1680973)))) key!3287))))

(assert (= (and d!1381197 (not res!1870995)) b!4500565))

(assert (= (and b!4500565 res!1870996) b!4500566))

(declare-fun m!5231329 () Bool)

(assert (=> b!4500566 m!5231329))

(assert (=> b!4500096 d!1381197))

(declare-fun d!1381199 () Bool)

(declare-fun lt!1681554 () Bool)

(assert (=> d!1381199 (= lt!1681554 (select (content!8261 (toList!4259 lt!1681212)) lt!1680977))))

(declare-fun e!2803431 () Bool)

(assert (=> d!1381199 (= lt!1681554 e!2803431)))

(declare-fun res!1870998 () Bool)

(assert (=> d!1381199 (=> (not res!1870998) (not e!2803431))))

(assert (=> d!1381199 (= res!1870998 ((_ is Cons!50547) (toList!4259 lt!1681212)))))

(assert (=> d!1381199 (= (contains!13220 (toList!4259 lt!1681212) lt!1680977) lt!1681554)))

(declare-fun b!4500567 () Bool)

(declare-fun e!2803430 () Bool)

(assert (=> b!4500567 (= e!2803431 e!2803430)))

(declare-fun res!1870997 () Bool)

(assert (=> b!4500567 (=> res!1870997 e!2803430)))

(assert (=> b!4500567 (= res!1870997 (= (h!56368 (toList!4259 lt!1681212)) lt!1680977))))

(declare-fun b!4500568 () Bool)

(assert (=> b!4500568 (= e!2803430 (contains!13220 (t!357629 (toList!4259 lt!1681212)) lt!1680977))))

(assert (= (and d!1381199 res!1870998) b!4500567))

(assert (= (and b!4500567 (not res!1870997)) b!4500568))

(declare-fun m!5231337 () Bool)

(assert (=> d!1381199 m!5231337))

(declare-fun m!5231339 () Bool)

(assert (=> d!1381199 m!5231339))

(declare-fun m!5231341 () Bool)

(assert (=> b!4500568 m!5231341))

(assert (=> b!4500086 d!1381199))

(assert (=> b!4499863 d!1381121))

(declare-fun d!1381203 () Bool)

(declare-fun c!767174 () Bool)

(assert (=> d!1381203 (= c!767174 ((_ is Nil!50547) (t!357629 (toList!4259 lm!1477))))))

(declare-fun e!2803441 () (InoxSet tuple2!50940))

(assert (=> d!1381203 (= (content!8261 (t!357629 (toList!4259 lm!1477))) e!2803441)))

(declare-fun b!4500585 () Bool)

(assert (=> b!4500585 (= e!2803441 ((as const (Array tuple2!50940 Bool)) false))))

(declare-fun b!4500586 () Bool)

(assert (=> b!4500586 (= e!2803441 ((_ map or) (store ((as const (Array tuple2!50940 Bool)) false) (h!56368 (t!357629 (toList!4259 lm!1477))) true) (content!8261 (t!357629 (t!357629 (toList!4259 lm!1477))))))))

(assert (= (and d!1381203 c!767174) b!4500585))

(assert (= (and d!1381203 (not c!767174)) b!4500586))

(declare-fun m!5231355 () Bool)

(assert (=> b!4500586 m!5231355))

(declare-fun m!5231357 () Bool)

(assert (=> b!4500586 m!5231357))

(assert (=> d!1380941 d!1381203))

(declare-fun d!1381211 () Bool)

(declare-fun res!1871003 () Bool)

(declare-fun e!2803444 () Bool)

(assert (=> d!1381211 (=> res!1871003 e!2803444)))

(declare-fun e!2803442 () Bool)

(assert (=> d!1381211 (= res!1871003 e!2803442)))

(declare-fun res!1871004 () Bool)

(assert (=> d!1381211 (=> (not res!1871004) (not e!2803442))))

(assert (=> d!1381211 (= res!1871004 ((_ is Cons!50547) (t!357629 (toList!4259 lt!1680973))))))

(assert (=> d!1381211 (= (containsKeyBiggerList!106 (t!357629 (toList!4259 lt!1680973)) key!3287) e!2803444)))

(declare-fun b!4500587 () Bool)

(assert (=> b!4500587 (= e!2803442 (containsKey!1682 (_2!28764 (h!56368 (t!357629 (toList!4259 lt!1680973)))) key!3287))))

(declare-fun b!4500588 () Bool)

(declare-fun e!2803443 () Bool)

(assert (=> b!4500588 (= e!2803444 e!2803443)))

(declare-fun res!1871005 () Bool)

(assert (=> b!4500588 (=> (not res!1871005) (not e!2803443))))

(assert (=> b!4500588 (= res!1871005 ((_ is Cons!50547) (t!357629 (toList!4259 lt!1680973))))))

(declare-fun b!4500589 () Bool)

(assert (=> b!4500589 (= e!2803443 (containsKeyBiggerList!106 (t!357629 (t!357629 (toList!4259 lt!1680973))) key!3287))))

(assert (= (and d!1381211 res!1871004) b!4500587))

(assert (= (and d!1381211 (not res!1871003)) b!4500588))

(assert (= (and b!4500588 res!1871005) b!4500589))

(declare-fun m!5231359 () Bool)

(assert (=> b!4500587 m!5231359))

(declare-fun m!5231361 () Bool)

(assert (=> b!4500589 m!5231361))

(assert (=> b!4500098 d!1381211))

(declare-fun d!1381213 () Bool)

(declare-fun res!1871006 () Bool)

(declare-fun e!2803445 () Bool)

(assert (=> d!1381213 (=> res!1871006 e!2803445)))

(assert (=> d!1381213 (= res!1871006 (and ((_ is Cons!50546) lt!1681192) (= (_1!28763 (h!56367 lt!1681192)) key!3287)))))

(assert (=> d!1381213 (= (containsKey!1682 lt!1681192 key!3287) e!2803445)))

(declare-fun b!4500590 () Bool)

(declare-fun e!2803446 () Bool)

(assert (=> b!4500590 (= e!2803445 e!2803446)))

(declare-fun res!1871007 () Bool)

(assert (=> b!4500590 (=> (not res!1871007) (not e!2803446))))

(assert (=> b!4500590 (= res!1871007 ((_ is Cons!50546) lt!1681192))))

(declare-fun b!4500591 () Bool)

(assert (=> b!4500591 (= e!2803446 (containsKey!1682 (t!357628 lt!1681192) key!3287))))

(assert (= (and d!1381213 (not res!1871006)) b!4500590))

(assert (= (and b!4500590 res!1871007) b!4500591))

(declare-fun m!5231363 () Bool)

(assert (=> b!4500591 m!5231363))

(assert (=> d!1380951 d!1381213))

(declare-fun d!1381215 () Bool)

(declare-fun res!1871008 () Bool)

(declare-fun e!2803447 () Bool)

(assert (=> d!1381215 (=> res!1871008 e!2803447)))

(assert (=> d!1381215 (= res!1871008 (not ((_ is Cons!50546) lt!1680975)))))

(assert (=> d!1381215 (= (noDuplicateKeys!1126 lt!1680975) e!2803447)))

(declare-fun b!4500592 () Bool)

(declare-fun e!2803448 () Bool)

(assert (=> b!4500592 (= e!2803447 e!2803448)))

(declare-fun res!1871009 () Bool)

(assert (=> b!4500592 (=> (not res!1871009) (not e!2803448))))

(assert (=> b!4500592 (= res!1871009 (not (containsKey!1682 (t!357628 lt!1680975) (_1!28763 (h!56367 lt!1680975)))))))

(declare-fun b!4500593 () Bool)

(assert (=> b!4500593 (= e!2803448 (noDuplicateKeys!1126 (t!357628 lt!1680975)))))

(assert (= (and d!1381215 (not res!1871008)) b!4500592))

(assert (= (and b!4500592 res!1871009) b!4500593))

(declare-fun m!5231365 () Bool)

(assert (=> b!4500592 m!5231365))

(declare-fun m!5231367 () Bool)

(assert (=> b!4500593 m!5231367))

(assert (=> d!1380951 d!1381215))

(declare-fun d!1381217 () Bool)

(declare-fun res!1871010 () Bool)

(declare-fun e!2803449 () Bool)

(assert (=> d!1381217 (=> res!1871010 e!2803449)))

(assert (=> d!1381217 (= res!1871010 (not ((_ is Cons!50546) (t!357628 newBucket!178))))))

(assert (=> d!1381217 (= (noDuplicateKeys!1126 (t!357628 newBucket!178)) e!2803449)))

(declare-fun b!4500594 () Bool)

(declare-fun e!2803450 () Bool)

(assert (=> b!4500594 (= e!2803449 e!2803450)))

(declare-fun res!1871011 () Bool)

(assert (=> b!4500594 (=> (not res!1871011) (not e!2803450))))

(assert (=> b!4500594 (= res!1871011 (not (containsKey!1682 (t!357628 (t!357628 newBucket!178)) (_1!28763 (h!56367 (t!357628 newBucket!178))))))))

(declare-fun b!4500595 () Bool)

(assert (=> b!4500595 (= e!2803450 (noDuplicateKeys!1126 (t!357628 (t!357628 newBucket!178))))))

(assert (= (and d!1381217 (not res!1871010)) b!4500594))

(assert (= (and b!4500594 res!1871011) b!4500595))

(declare-fun m!5231369 () Bool)

(assert (=> b!4500594 m!5231369))

(declare-fun m!5231371 () Bool)

(assert (=> b!4500595 m!5231371))

(assert (=> b!4500075 d!1381217))

(declare-fun d!1381219 () Bool)

(declare-fun res!1871012 () Bool)

(declare-fun e!2803451 () Bool)

(assert (=> d!1381219 (=> res!1871012 e!2803451)))

(assert (=> d!1381219 (= res!1871012 (and ((_ is Cons!50546) (t!357628 lt!1680975)) (= (_1!28763 (h!56367 (t!357628 lt!1680975))) key!3287)))))

(assert (=> d!1381219 (= (containsKey!1682 (t!357628 lt!1680975) key!3287) e!2803451)))

(declare-fun b!4500596 () Bool)

(declare-fun e!2803452 () Bool)

(assert (=> b!4500596 (= e!2803451 e!2803452)))

(declare-fun res!1871013 () Bool)

(assert (=> b!4500596 (=> (not res!1871013) (not e!2803452))))

(assert (=> b!4500596 (= res!1871013 ((_ is Cons!50546) (t!357628 lt!1680975)))))

(declare-fun b!4500597 () Bool)

(assert (=> b!4500597 (= e!2803452 (containsKey!1682 (t!357628 (t!357628 lt!1680975)) key!3287))))

(assert (= (and d!1381219 (not res!1871012)) b!4500596))

(assert (= (and b!4500596 res!1871013) b!4500597))

(declare-fun m!5231373 () Bool)

(assert (=> b!4500597 m!5231373))

(assert (=> b!4499806 d!1381219))

(declare-fun d!1381221 () Bool)

(declare-fun e!2803454 () Bool)

(assert (=> d!1381221 e!2803454))

(declare-fun res!1871014 () Bool)

(assert (=> d!1381221 (=> res!1871014 e!2803454)))

(declare-fun lt!1681556 () Bool)

(assert (=> d!1381221 (= res!1871014 (not lt!1681556))))

(declare-fun lt!1681558 () Bool)

(assert (=> d!1381221 (= lt!1681556 lt!1681558)))

(declare-fun lt!1681557 () Unit!91936)

(declare-fun e!2803453 () Unit!91936)

(assert (=> d!1381221 (= lt!1681557 e!2803453)))

(declare-fun c!767175 () Bool)

(assert (=> d!1381221 (= c!767175 lt!1681558)))

(assert (=> d!1381221 (= lt!1681558 (containsKey!1686 (toList!4259 lt!1681117) (_1!28764 lt!1680977)))))

(assert (=> d!1381221 (= (contains!13221 lt!1681117 (_1!28764 lt!1680977)) lt!1681556)))

(declare-fun b!4500598 () Bool)

(declare-fun lt!1681559 () Unit!91936)

(assert (=> b!4500598 (= e!2803453 lt!1681559)))

(assert (=> b!4500598 (= lt!1681559 (lemmaContainsKeyImpliesGetValueByKeyDefined!933 (toList!4259 lt!1681117) (_1!28764 lt!1680977)))))

(assert (=> b!4500598 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1681117) (_1!28764 lt!1680977)))))

(declare-fun b!4500599 () Bool)

(declare-fun Unit!92058 () Unit!91936)

(assert (=> b!4500599 (= e!2803453 Unit!92058)))

(declare-fun b!4500600 () Bool)

(assert (=> b!4500600 (= e!2803454 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1681117) (_1!28764 lt!1680977))))))

(assert (= (and d!1381221 c!767175) b!4500598))

(assert (= (and d!1381221 (not c!767175)) b!4500599))

(assert (= (and d!1381221 (not res!1871014)) b!4500600))

(declare-fun m!5231375 () Bool)

(assert (=> d!1381221 m!5231375))

(declare-fun m!5231377 () Bool)

(assert (=> b!4500598 m!5231377))

(assert (=> b!4500598 m!5230349))

(assert (=> b!4500598 m!5230349))

(declare-fun m!5231379 () Bool)

(assert (=> b!4500598 m!5231379))

(assert (=> b!4500600 m!5230349))

(assert (=> b!4500600 m!5230349))

(assert (=> b!4500600 m!5231379))

(assert (=> d!1380883 d!1381221))

(declare-fun b!4500606 () Bool)

(declare-fun e!2803458 () Option!11049)

(assert (=> b!4500606 (= e!2803458 None!11048)))

(declare-fun b!4500603 () Bool)

(declare-fun e!2803457 () Option!11049)

(assert (=> b!4500603 (= e!2803457 (Some!11048 (_2!28764 (h!56368 lt!1681118))))))

(declare-fun d!1381223 () Bool)

(declare-fun c!767176 () Bool)

(assert (=> d!1381223 (= c!767176 (and ((_ is Cons!50547) lt!1681118) (= (_1!28764 (h!56368 lt!1681118)) (_1!28764 lt!1680977))))))

(assert (=> d!1381223 (= (getValueByKey!1029 lt!1681118 (_1!28764 lt!1680977)) e!2803457)))

(declare-fun b!4500604 () Bool)

(assert (=> b!4500604 (= e!2803457 e!2803458)))

(declare-fun c!767177 () Bool)

(assert (=> b!4500604 (= c!767177 (and ((_ is Cons!50547) lt!1681118) (not (= (_1!28764 (h!56368 lt!1681118)) (_1!28764 lt!1680977)))))))

(declare-fun b!4500605 () Bool)

(assert (=> b!4500605 (= e!2803458 (getValueByKey!1029 (t!357629 lt!1681118) (_1!28764 lt!1680977)))))

(assert (= (and d!1381223 c!767176) b!4500603))

(assert (= (and d!1381223 (not c!767176)) b!4500604))

(assert (= (and b!4500604 c!767177) b!4500605))

(assert (= (and b!4500604 (not c!767177)) b!4500606))

(declare-fun m!5231381 () Bool)

(assert (=> b!4500605 m!5231381))

(assert (=> d!1380883 d!1381223))

(declare-fun d!1381225 () Bool)

(assert (=> d!1381225 (= (getValueByKey!1029 lt!1681118 (_1!28764 lt!1680977)) (Some!11048 (_2!28764 lt!1680977)))))

(declare-fun lt!1681562 () Unit!91936)

(assert (=> d!1381225 (= lt!1681562 (choose!29138 lt!1681118 (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))

(declare-fun e!2803460 () Bool)

(assert (=> d!1381225 e!2803460))

(declare-fun res!1871017 () Bool)

(assert (=> d!1381225 (=> (not res!1871017) (not e!2803460))))

(assert (=> d!1381225 (= res!1871017 (isStrictlySorted!399 lt!1681118))))

(assert (=> d!1381225 (= (lemmaContainsTupThenGetReturnValue!634 lt!1681118 (_1!28764 lt!1680977) (_2!28764 lt!1680977)) lt!1681562)))

(declare-fun b!4500607 () Bool)

(declare-fun res!1871018 () Bool)

(assert (=> b!4500607 (=> (not res!1871018) (not e!2803460))))

(assert (=> b!4500607 (= res!1871018 (containsKey!1686 lt!1681118 (_1!28764 lt!1680977)))))

(declare-fun b!4500608 () Bool)

(assert (=> b!4500608 (= e!2803460 (contains!13220 lt!1681118 (tuple2!50941 (_1!28764 lt!1680977) (_2!28764 lt!1680977))))))

(assert (= (and d!1381225 res!1871017) b!4500607))

(assert (= (and b!4500607 res!1871018) b!4500608))

(assert (=> d!1381225 m!5230343))

(declare-fun m!5231383 () Bool)

(assert (=> d!1381225 m!5231383))

(declare-fun m!5231387 () Bool)

(assert (=> d!1381225 m!5231387))

(declare-fun m!5231389 () Bool)

(assert (=> b!4500607 m!5231389))

(declare-fun m!5231391 () Bool)

(assert (=> b!4500608 m!5231391))

(assert (=> d!1380883 d!1381225))

(declare-fun b!4500611 () Bool)

(declare-fun res!1871021 () Bool)

(declare-fun e!2803461 () Bool)

(assert (=> b!4500611 (=> (not res!1871021) (not e!2803461))))

(declare-fun lt!1681564 () List!50671)

(assert (=> b!4500611 (= res!1871021 (containsKey!1686 lt!1681564 (_1!28764 lt!1680977)))))

(declare-fun bm!313266 () Bool)

(declare-fun call!313273 () List!50671)

(declare-fun call!313271 () List!50671)

(assert (=> bm!313266 (= call!313273 call!313271)))

(declare-fun bm!313267 () Bool)

(declare-fun call!313272 () List!50671)

(assert (=> bm!313267 (= call!313272 call!313273)))

(declare-fun c!767181 () Bool)

(declare-fun e!2803464 () List!50671)

(declare-fun bm!313268 () Bool)

(assert (=> bm!313268 (= call!313271 ($colon$colon!897 e!2803464 (ite c!767181 (h!56368 (toList!4259 lm!1477)) (tuple2!50941 (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))))

(declare-fun c!767178 () Bool)

(assert (=> bm!313268 (= c!767178 c!767181)))

(declare-fun b!4500612 () Bool)

(declare-fun e!2803463 () List!50671)

(assert (=> b!4500612 (= e!2803463 call!313271)))

(declare-fun b!4500613 () Bool)

(declare-fun e!2803462 () List!50671)

(assert (=> b!4500613 (= e!2803462 call!313272)))

(declare-fun d!1381229 () Bool)

(assert (=> d!1381229 e!2803461))

(declare-fun res!1871020 () Bool)

(assert (=> d!1381229 (=> (not res!1871020) (not e!2803461))))

(assert (=> d!1381229 (= res!1871020 (isStrictlySorted!399 lt!1681564))))

(assert (=> d!1381229 (= lt!1681564 e!2803463)))

(assert (=> d!1381229 (= c!767181 (and ((_ is Cons!50547) (toList!4259 lm!1477)) (bvslt (_1!28764 (h!56368 (toList!4259 lm!1477))) (_1!28764 lt!1680977))))))

(assert (=> d!1381229 (isStrictlySorted!399 (toList!4259 lm!1477))))

(assert (=> d!1381229 (= (insertStrictlySorted!376 (toList!4259 lm!1477) (_1!28764 lt!1680977) (_2!28764 lt!1680977)) lt!1681564)))

(declare-fun c!767179 () Bool)

(declare-fun b!4500610 () Bool)

(declare-fun c!767180 () Bool)

(assert (=> b!4500610 (= e!2803464 (ite c!767179 (t!357629 (toList!4259 lm!1477)) (ite c!767180 (Cons!50547 (h!56368 (toList!4259 lm!1477)) (t!357629 (toList!4259 lm!1477))) Nil!50547)))))

(declare-fun b!4500614 () Bool)

(assert (=> b!4500614 (= e!2803461 (contains!13220 lt!1681564 (tuple2!50941 (_1!28764 lt!1680977) (_2!28764 lt!1680977))))))

(declare-fun b!4500615 () Bool)

(assert (=> b!4500615 (= c!767180 (and ((_ is Cons!50547) (toList!4259 lm!1477)) (bvsgt (_1!28764 (h!56368 (toList!4259 lm!1477))) (_1!28764 lt!1680977))))))

(declare-fun e!2803465 () List!50671)

(assert (=> b!4500615 (= e!2803465 e!2803462)))

(declare-fun b!4500616 () Bool)

(assert (=> b!4500616 (= e!2803465 call!313273)))

(declare-fun b!4500617 () Bool)

(assert (=> b!4500617 (= e!2803464 (insertStrictlySorted!376 (t!357629 (toList!4259 lm!1477)) (_1!28764 lt!1680977) (_2!28764 lt!1680977)))))

(declare-fun b!4500618 () Bool)

(assert (=> b!4500618 (= e!2803462 call!313272)))

(declare-fun b!4500619 () Bool)

(assert (=> b!4500619 (= e!2803463 e!2803465)))

(assert (=> b!4500619 (= c!767179 (and ((_ is Cons!50547) (toList!4259 lm!1477)) (= (_1!28764 (h!56368 (toList!4259 lm!1477))) (_1!28764 lt!1680977))))))

(assert (= (and d!1381229 c!767181) b!4500612))

(assert (= (and d!1381229 (not c!767181)) b!4500619))

(assert (= (and b!4500619 c!767179) b!4500616))

(assert (= (and b!4500619 (not c!767179)) b!4500615))

(assert (= (and b!4500615 c!767180) b!4500613))

(assert (= (and b!4500615 (not c!767180)) b!4500618))

(assert (= (or b!4500613 b!4500618) bm!313267))

(assert (= (or b!4500616 bm!313267) bm!313266))

(assert (= (or b!4500612 bm!313266) bm!313268))

(assert (= (and bm!313268 c!767178) b!4500617))

(assert (= (and bm!313268 (not c!767178)) b!4500610))

(assert (= (and d!1381229 res!1871020) b!4500611))

(assert (= (and b!4500611 res!1871021) b!4500614))

(declare-fun m!5231395 () Bool)

(assert (=> b!4500617 m!5231395))

(declare-fun m!5231399 () Bool)

(assert (=> bm!313268 m!5231399))

(declare-fun m!5231401 () Bool)

(assert (=> d!1381229 m!5231401))

(assert (=> d!1381229 m!5230529))

(declare-fun m!5231403 () Bool)

(assert (=> b!4500614 m!5231403))

(declare-fun m!5231405 () Bool)

(assert (=> b!4500611 m!5231405))

(assert (=> d!1380883 d!1381229))

(declare-fun d!1381235 () Bool)

(declare-fun res!1871024 () Bool)

(declare-fun e!2803470 () Bool)

(assert (=> d!1381235 (=> res!1871024 e!2803470)))

(assert (=> d!1381235 (= res!1871024 ((_ is Nil!50547) (toList!4259 lm!1477)))))

(assert (=> d!1381235 (= (forall!10179 (toList!4259 lm!1477) lambda!168777) e!2803470)))

(declare-fun b!4500626 () Bool)

(declare-fun e!2803471 () Bool)

(assert (=> b!4500626 (= e!2803470 e!2803471)))

(declare-fun res!1871025 () Bool)

(assert (=> b!4500626 (=> (not res!1871025) (not e!2803471))))

(assert (=> b!4500626 (= res!1871025 (dynLambda!21109 lambda!168777 (h!56368 (toList!4259 lm!1477))))))

(declare-fun b!4500627 () Bool)

(assert (=> b!4500627 (= e!2803471 (forall!10179 (t!357629 (toList!4259 lm!1477)) lambda!168777))))

(assert (= (and d!1381235 (not res!1871024)) b!4500626))

(assert (= (and b!4500626 res!1871025) b!4500627))

(declare-fun b_lambda!152345 () Bool)

(assert (=> (not b_lambda!152345) (not b!4500626)))

(declare-fun m!5231411 () Bool)

(assert (=> b!4500626 m!5231411))

(declare-fun m!5231413 () Bool)

(assert (=> b!4500627 m!5231413))

(assert (=> d!1380989 d!1381235))

(declare-fun d!1381239 () Bool)

(declare-fun lt!1681586 () Bool)

(assert (=> d!1381239 (= lt!1681586 (select (content!8261 (toList!4259 lt!1681117)) lt!1680977))))

(declare-fun e!2803476 () Bool)

(assert (=> d!1381239 (= lt!1681586 e!2803476)))

(declare-fun res!1871030 () Bool)

(assert (=> d!1381239 (=> (not res!1871030) (not e!2803476))))

(assert (=> d!1381239 (= res!1871030 ((_ is Cons!50547) (toList!4259 lt!1681117)))))

(assert (=> d!1381239 (= (contains!13220 (toList!4259 lt!1681117) lt!1680977) lt!1681586)))

(declare-fun b!4500633 () Bool)

(declare-fun e!2803475 () Bool)

(assert (=> b!4500633 (= e!2803476 e!2803475)))

(declare-fun res!1871029 () Bool)

(assert (=> b!4500633 (=> res!1871029 e!2803475)))

(assert (=> b!4500633 (= res!1871029 (= (h!56368 (toList!4259 lt!1681117)) lt!1680977))))

(declare-fun b!4500634 () Bool)

(assert (=> b!4500634 (= e!2803475 (contains!13220 (t!357629 (toList!4259 lt!1681117)) lt!1680977))))

(assert (= (and d!1381239 res!1871030) b!4500633))

(assert (= (and b!4500633 (not res!1871029)) b!4500634))

(declare-fun m!5231415 () Bool)

(assert (=> d!1381239 m!5231415))

(declare-fun m!5231417 () Bool)

(assert (=> d!1381239 m!5231417))

(declare-fun m!5231419 () Bool)

(assert (=> b!4500634 m!5231419))

(assert (=> b!4499962 d!1381239))

(declare-fun d!1381241 () Bool)

(assert (=> d!1381241 (= (invariantList!985 (toList!4260 lt!1681207)) (noDuplicatedKeys!244 (toList!4260 lt!1681207)))))

(declare-fun bs!836206 () Bool)

(assert (= bs!836206 d!1381241))

(declare-fun m!5231421 () Bool)

(assert (=> bs!836206 m!5231421))

(assert (=> d!1380969 d!1381241))

(declare-fun d!1381243 () Bool)

(declare-fun res!1871031 () Bool)

(declare-fun e!2803477 () Bool)

(assert (=> d!1381243 (=> res!1871031 e!2803477)))

(assert (=> d!1381243 (= res!1871031 ((_ is Nil!50547) (toList!4259 lt!1680963)))))

(assert (=> d!1381243 (= (forall!10179 (toList!4259 lt!1680963) lambda!168767) e!2803477)))

(declare-fun b!4500635 () Bool)

(declare-fun e!2803478 () Bool)

(assert (=> b!4500635 (= e!2803477 e!2803478)))

(declare-fun res!1871032 () Bool)

(assert (=> b!4500635 (=> (not res!1871032) (not e!2803478))))

(assert (=> b!4500635 (= res!1871032 (dynLambda!21109 lambda!168767 (h!56368 (toList!4259 lt!1680963))))))

(declare-fun b!4500636 () Bool)

(assert (=> b!4500636 (= e!2803478 (forall!10179 (t!357629 (toList!4259 lt!1680963)) lambda!168767))))

(assert (= (and d!1381243 (not res!1871031)) b!4500635))

(assert (= (and b!4500635 res!1871032) b!4500636))

(declare-fun b_lambda!152347 () Bool)

(assert (=> (not b_lambda!152347) (not b!4500635)))

(declare-fun m!5231423 () Bool)

(assert (=> b!4500635 m!5231423))

(declare-fun m!5231425 () Bool)

(assert (=> b!4500636 m!5231425))

(assert (=> d!1380969 d!1381243))

(declare-fun d!1381245 () Bool)

(declare-fun lt!1681587 () Bool)

(assert (=> d!1381245 (= lt!1681587 (select (content!8261 (toList!4259 lt!1681200)) lt!1680964))))

(declare-fun e!2803480 () Bool)

(assert (=> d!1381245 (= lt!1681587 e!2803480)))

(declare-fun res!1871034 () Bool)

(assert (=> d!1381245 (=> (not res!1871034) (not e!2803480))))

(assert (=> d!1381245 (= res!1871034 ((_ is Cons!50547) (toList!4259 lt!1681200)))))

(assert (=> d!1381245 (= (contains!13220 (toList!4259 lt!1681200) lt!1680964) lt!1681587)))

(declare-fun b!4500637 () Bool)

(declare-fun e!2803479 () Bool)

(assert (=> b!4500637 (= e!2803480 e!2803479)))

(declare-fun res!1871033 () Bool)

(assert (=> b!4500637 (=> res!1871033 e!2803479)))

(assert (=> b!4500637 (= res!1871033 (= (h!56368 (toList!4259 lt!1681200)) lt!1680964))))

(declare-fun b!4500638 () Bool)

(assert (=> b!4500638 (= e!2803479 (contains!13220 (t!357629 (toList!4259 lt!1681200)) lt!1680964))))

(assert (= (and d!1381245 res!1871034) b!4500637))

(assert (= (and b!4500637 (not res!1871033)) b!4500638))

(declare-fun m!5231427 () Bool)

(assert (=> d!1381245 m!5231427))

(declare-fun m!5231429 () Bool)

(assert (=> d!1381245 m!5231429))

(declare-fun m!5231431 () Bool)

(assert (=> b!4500638 m!5231431))

(assert (=> b!4500077 d!1381245))

(assert (=> b!4499915 d!1381051))

(assert (=> b!4499915 d!1381053))

(declare-fun d!1381247 () Bool)

(declare-fun res!1871035 () Bool)

(declare-fun e!2803481 () Bool)

(assert (=> d!1381247 (=> res!1871035 e!2803481)))

(assert (=> d!1381247 (= res!1871035 ((_ is Nil!50547) (toList!4259 lt!1680973)))))

(assert (=> d!1381247 (= (forall!10179 (toList!4259 lt!1680973) lambda!168770) e!2803481)))

(declare-fun b!4500639 () Bool)

(declare-fun e!2803482 () Bool)

(assert (=> b!4500639 (= e!2803481 e!2803482)))

(declare-fun res!1871036 () Bool)

(assert (=> b!4500639 (=> (not res!1871036) (not e!2803482))))

(assert (=> b!4500639 (= res!1871036 (dynLambda!21109 lambda!168770 (h!56368 (toList!4259 lt!1680973))))))

(declare-fun b!4500640 () Bool)

(assert (=> b!4500640 (= e!2803482 (forall!10179 (t!357629 (toList!4259 lt!1680973)) lambda!168770))))

(assert (= (and d!1381247 (not res!1871035)) b!4500639))

(assert (= (and b!4500639 res!1871036) b!4500640))

(declare-fun b_lambda!152349 () Bool)

(assert (=> (not b_lambda!152349) (not b!4500639)))

(declare-fun m!5231433 () Bool)

(assert (=> b!4500639 m!5231433))

(declare-fun m!5231435 () Bool)

(assert (=> b!4500640 m!5231435))

(assert (=> d!1380971 d!1381247))

(declare-fun d!1381249 () Bool)

(assert (=> d!1381249 (eq!583 (extractMap!1182 (toList!4259 (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178)))) (-!352 (extractMap!1182 (toList!4259 lt!1680973)) key!3287))))

(assert (=> d!1381249 true))

(declare-fun _$8!602 () Unit!91936)

(assert (=> d!1381249 (= (choose!29133 lt!1680973 hash!344 newBucket!178 key!3287 hashF!1107) _$8!602)))

(declare-fun bs!836232 () Bool)

(assert (= bs!836232 d!1381249))

(assert (=> bs!836232 m!5230583))

(assert (=> bs!836232 m!5230585))

(assert (=> bs!836232 m!5230587))

(assert (=> bs!836232 m!5230583))

(assert (=> bs!836232 m!5230025))

(assert (=> bs!836232 m!5230025))

(assert (=> bs!836232 m!5230585))

(assert (=> bs!836232 m!5230589))

(assert (=> d!1380971 d!1381249))

(declare-fun d!1381273 () Bool)

(declare-fun e!2803502 () Bool)

(assert (=> d!1381273 e!2803502))

(declare-fun res!1871047 () Bool)

(assert (=> d!1381273 (=> (not res!1871047) (not e!2803502))))

(declare-fun lt!1681597 () ListMap!3521)

(assert (=> d!1381273 (= res!1871047 (not (contains!13219 lt!1681597 key!3287)))))

(assert (=> d!1381273 (= lt!1681597 (ListMap!3522 (removePresrvNoDuplicatedKeys!109 (toList!4260 (extractMap!1182 (toList!4259 lt!1680973))) key!3287)))))

(assert (=> d!1381273 (= (-!352 (extractMap!1182 (toList!4259 lt!1680973)) key!3287) lt!1681597)))

(declare-fun b!4500669 () Bool)

(assert (=> b!4500669 (= e!2803502 (= ((_ map and) (content!8263 (keys!17526 (extractMap!1182 (toList!4259 lt!1680973)))) ((_ map not) (store ((as const (Array K!11955 Bool)) false) key!3287 true))) (content!8263 (keys!17526 lt!1681597))))))

(assert (= (and d!1381273 res!1871047) b!4500669))

(declare-fun m!5231513 () Bool)

(assert (=> d!1381273 m!5231513))

(declare-fun m!5231515 () Bool)

(assert (=> d!1381273 m!5231515))

(declare-fun m!5231517 () Bool)

(assert (=> b!4500669 m!5231517))

(assert (=> b!4500669 m!5231517))

(declare-fun m!5231519 () Bool)

(assert (=> b!4500669 m!5231519))

(assert (=> b!4500669 m!5230569))

(assert (=> b!4500669 m!5230025))

(assert (=> b!4500669 m!5230993))

(assert (=> b!4500669 m!5230993))

(declare-fun m!5231521 () Bool)

(assert (=> b!4500669 m!5231521))

(assert (=> d!1380971 d!1381273))

(declare-fun d!1381275 () Bool)

(declare-fun e!2803503 () Bool)

(assert (=> d!1381275 e!2803503))

(declare-fun res!1871048 () Bool)

(assert (=> d!1381275 (=> (not res!1871048) (not e!2803503))))

(declare-fun lt!1681598 () ListLongMap!2891)

(assert (=> d!1381275 (= res!1871048 (contains!13221 lt!1681598 (_1!28764 (tuple2!50941 hash!344 newBucket!178))))))

(declare-fun lt!1681599 () List!50671)

(assert (=> d!1381275 (= lt!1681598 (ListLongMap!2892 lt!1681599))))

(declare-fun lt!1681600 () Unit!91936)

(declare-fun lt!1681601 () Unit!91936)

(assert (=> d!1381275 (= lt!1681600 lt!1681601)))

(assert (=> d!1381275 (= (getValueByKey!1029 lt!1681599 (_1!28764 (tuple2!50941 hash!344 newBucket!178))) (Some!11048 (_2!28764 (tuple2!50941 hash!344 newBucket!178))))))

(assert (=> d!1381275 (= lt!1681601 (lemmaContainsTupThenGetReturnValue!634 lt!1681599 (_1!28764 (tuple2!50941 hash!344 newBucket!178)) (_2!28764 (tuple2!50941 hash!344 newBucket!178))))))

(assert (=> d!1381275 (= lt!1681599 (insertStrictlySorted!376 (toList!4259 lt!1680973) (_1!28764 (tuple2!50941 hash!344 newBucket!178)) (_2!28764 (tuple2!50941 hash!344 newBucket!178))))))

(assert (=> d!1381275 (= (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178)) lt!1681598)))

(declare-fun b!4500670 () Bool)

(declare-fun res!1871049 () Bool)

(assert (=> b!4500670 (=> (not res!1871049) (not e!2803503))))

(assert (=> b!4500670 (= res!1871049 (= (getValueByKey!1029 (toList!4259 lt!1681598) (_1!28764 (tuple2!50941 hash!344 newBucket!178))) (Some!11048 (_2!28764 (tuple2!50941 hash!344 newBucket!178)))))))

(declare-fun b!4500671 () Bool)

(assert (=> b!4500671 (= e!2803503 (contains!13220 (toList!4259 lt!1681598) (tuple2!50941 hash!344 newBucket!178)))))

(assert (= (and d!1381275 res!1871048) b!4500670))

(assert (= (and b!4500670 res!1871049) b!4500671))

(declare-fun m!5231523 () Bool)

(assert (=> d!1381275 m!5231523))

(declare-fun m!5231525 () Bool)

(assert (=> d!1381275 m!5231525))

(declare-fun m!5231527 () Bool)

(assert (=> d!1381275 m!5231527))

(declare-fun m!5231529 () Bool)

(assert (=> d!1381275 m!5231529))

(declare-fun m!5231531 () Bool)

(assert (=> b!4500670 m!5231531))

(declare-fun m!5231533 () Bool)

(assert (=> b!4500671 m!5231533))

(assert (=> d!1380971 d!1381275))

(declare-fun bs!836233 () Bool)

(declare-fun d!1381277 () Bool)

(assert (= bs!836233 (and d!1381277 d!1380959)))

(declare-fun lambda!168910 () Int)

(assert (=> bs!836233 (= lambda!168910 lambda!168766)))

(declare-fun bs!836234 () Bool)

(assert (= bs!836234 (and d!1381277 d!1381089)))

(assert (=> bs!836234 (= lambda!168910 lambda!168852)))

(declare-fun bs!836235 () Bool)

(assert (= bs!836235 (and d!1381277 d!1380863)))

(assert (=> bs!836235 (= lambda!168910 lambda!168750)))

(declare-fun bs!836236 () Bool)

(assert (= bs!836236 (and d!1381277 d!1380861)))

(assert (=> bs!836236 (= lambda!168910 lambda!168734)))

(declare-fun bs!836237 () Bool)

(assert (= bs!836237 (and d!1381277 d!1381155)))

(assert (=> bs!836237 (= lambda!168910 lambda!168888)))

(declare-fun bs!836238 () Bool)

(assert (= bs!836238 (and d!1381277 d!1380969)))

(assert (=> bs!836238 (= lambda!168910 lambda!168767)))

(declare-fun bs!836239 () Bool)

(assert (= bs!836239 (and d!1381277 d!1380971)))

(assert (=> bs!836239 (= lambda!168910 lambda!168770)))

(declare-fun bs!836240 () Bool)

(assert (= bs!836240 (and d!1381277 d!1380983)))

(assert (=> bs!836240 (= lambda!168910 lambda!168774)))

(declare-fun bs!836241 () Bool)

(assert (= bs!836241 (and d!1381277 d!1381031)))

(assert (=> bs!836241 (= lambda!168910 lambda!168823)))

(declare-fun bs!836242 () Bool)

(assert (= bs!836242 (and d!1381277 d!1380943)))

(assert (=> bs!836242 (= lambda!168910 lambda!168763)))

(declare-fun bs!836243 () Bool)

(assert (= bs!836243 (and d!1381277 d!1380973)))

(assert (=> bs!836243 (= lambda!168910 lambda!168771)))

(declare-fun bs!836244 () Bool)

(assert (= bs!836244 (and d!1381277 d!1380837)))

(assert (=> bs!836244 (= lambda!168910 lambda!168731)))

(declare-fun bs!836245 () Bool)

(assert (= bs!836245 (and d!1381277 d!1380857)))

(assert (=> bs!836245 (= lambda!168910 lambda!168733)))

(declare-fun bs!836246 () Bool)

(assert (= bs!836246 (and d!1381277 d!1380989)))

(assert (=> bs!836246 (not (= lambda!168910 lambda!168777))))

(declare-fun bs!836247 () Bool)

(assert (= bs!836247 (and d!1381277 start!444228)))

(assert (=> bs!836247 (= lambda!168910 lambda!168721)))

(declare-fun lt!1681602 () ListMap!3521)

(assert (=> d!1381277 (invariantList!985 (toList!4260 lt!1681602))))

(declare-fun e!2803504 () ListMap!3521)

(assert (=> d!1381277 (= lt!1681602 e!2803504)))

(declare-fun c!767194 () Bool)

(assert (=> d!1381277 (= c!767194 ((_ is Cons!50547) (toList!4259 (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178)))))))

(assert (=> d!1381277 (forall!10179 (toList!4259 (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178))) lambda!168910)))

(assert (=> d!1381277 (= (extractMap!1182 (toList!4259 (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178)))) lt!1681602)))

(declare-fun b!4500672 () Bool)

(assert (=> b!4500672 (= e!2803504 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178))))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178)))))))))

(declare-fun b!4500673 () Bool)

(assert (=> b!4500673 (= e!2803504 (ListMap!3522 Nil!50546))))

(assert (= (and d!1381277 c!767194) b!4500672))

(assert (= (and d!1381277 (not c!767194)) b!4500673))

(declare-fun m!5231535 () Bool)

(assert (=> d!1381277 m!5231535))

(declare-fun m!5231537 () Bool)

(assert (=> d!1381277 m!5231537))

(declare-fun m!5231539 () Bool)

(assert (=> b!4500672 m!5231539))

(assert (=> b!4500672 m!5231539))

(declare-fun m!5231541 () Bool)

(assert (=> b!4500672 m!5231541))

(assert (=> d!1380971 d!1381277))

(assert (=> d!1380971 d!1380857))

(declare-fun d!1381279 () Bool)

(assert (=> d!1381279 (= (eq!583 (extractMap!1182 (toList!4259 (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178)))) (-!352 (extractMap!1182 (toList!4259 lt!1680973)) key!3287)) (= (content!8262 (toList!4260 (extractMap!1182 (toList!4259 (+!1474 lt!1680973 (tuple2!50941 hash!344 newBucket!178)))))) (content!8262 (toList!4260 (-!352 (extractMap!1182 (toList!4259 lt!1680973)) key!3287)))))))

(declare-fun bs!836248 () Bool)

(assert (= bs!836248 d!1381279))

(declare-fun m!5231543 () Bool)

(assert (=> bs!836248 m!5231543))

(declare-fun m!5231545 () Bool)

(assert (=> bs!836248 m!5231545))

(assert (=> d!1380971 d!1381279))

(declare-fun d!1381281 () Bool)

(declare-fun res!1871050 () Bool)

(declare-fun e!2803505 () Bool)

(assert (=> d!1381281 (=> res!1871050 e!2803505)))

(assert (=> d!1381281 (= res!1871050 (and ((_ is Cons!50546) (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))) (= (_1!28763 (h!56367 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))))) key!3287)))))

(assert (=> d!1381281 (= (containsKey!1682 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))) key!3287) e!2803505)))

(declare-fun b!4500674 () Bool)

(declare-fun e!2803506 () Bool)

(assert (=> b!4500674 (= e!2803505 e!2803506)))

(declare-fun res!1871051 () Bool)

(assert (=> b!4500674 (=> (not res!1871051) (not e!2803506))))

(assert (=> b!4500674 (= res!1871051 ((_ is Cons!50546) (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))))))

(declare-fun b!4500675 () Bool)

(assert (=> b!4500675 (= e!2803506 (containsKey!1682 (t!357628 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))) key!3287))))

(assert (= (and d!1381281 (not res!1871050)) b!4500674))

(assert (= (and b!4500674 res!1871051) b!4500675))

(declare-fun m!5231547 () Bool)

(assert (=> b!4500675 m!5231547))

(assert (=> b!4500093 d!1381281))

(assert (=> d!1380821 d!1381157))

(declare-fun d!1381283 () Bool)

(declare-fun res!1871052 () Bool)

(declare-fun e!2803507 () Bool)

(assert (=> d!1381283 (=> res!1871052 e!2803507)))

(assert (=> d!1381283 (= res!1871052 (not ((_ is Cons!50546) (_2!28764 (h!56368 (toList!4259 lm!1477))))))))

(assert (=> d!1381283 (= (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lm!1477)))) e!2803507)))

(declare-fun b!4500676 () Bool)

(declare-fun e!2803508 () Bool)

(assert (=> b!4500676 (= e!2803507 e!2803508)))

(declare-fun res!1871053 () Bool)

(assert (=> b!4500676 (=> (not res!1871053) (not e!2803508))))

(assert (=> b!4500676 (= res!1871053 (not (containsKey!1682 (t!357628 (_2!28764 (h!56368 (toList!4259 lm!1477)))) (_1!28763 (h!56367 (_2!28764 (h!56368 (toList!4259 lm!1477))))))))))

(declare-fun b!4500677 () Bool)

(assert (=> b!4500677 (= e!2803508 (noDuplicateKeys!1126 (t!357628 (_2!28764 (h!56368 (toList!4259 lm!1477))))))))

(assert (= (and d!1381283 (not res!1871052)) b!4500676))

(assert (= (and b!4500676 res!1871053) b!4500677))

(declare-fun m!5231549 () Bool)

(assert (=> b!4500676 m!5231549))

(declare-fun m!5231551 () Bool)

(assert (=> b!4500677 m!5231551))

(assert (=> bs!835973 d!1381283))

(declare-fun d!1381285 () Bool)

(declare-fun lt!1681603 () Bool)

(assert (=> d!1381285 (= lt!1681603 (select (content!8261 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1680978))))

(declare-fun e!2803510 () Bool)

(assert (=> d!1381285 (= lt!1681603 e!2803510)))

(declare-fun res!1871055 () Bool)

(assert (=> d!1381285 (=> (not res!1871055) (not e!2803510))))

(assert (=> d!1381285 (= res!1871055 ((_ is Cons!50547) (t!357629 (t!357629 (toList!4259 lm!1477)))))))

(assert (=> d!1381285 (= (contains!13220 (t!357629 (t!357629 (toList!4259 lm!1477))) lt!1680978) lt!1681603)))

(declare-fun b!4500678 () Bool)

(declare-fun e!2803509 () Bool)

(assert (=> b!4500678 (= e!2803510 e!2803509)))

(declare-fun res!1871054 () Bool)

(assert (=> b!4500678 (=> res!1871054 e!2803509)))

(assert (=> b!4500678 (= res!1871054 (= (h!56368 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1680978))))

(declare-fun b!4500679 () Bool)

(assert (=> b!4500679 (= e!2803509 (contains!13220 (t!357629 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1680978))))

(assert (= (and d!1381285 res!1871055) b!4500678))

(assert (= (and b!4500678 (not res!1871054)) b!4500679))

(assert (=> d!1381285 m!5231357))

(declare-fun m!5231553 () Bool)

(assert (=> d!1381285 m!5231553))

(declare-fun m!5231555 () Bool)

(assert (=> b!4500679 m!5231555))

(assert (=> b!4500046 d!1381285))

(declare-fun d!1381287 () Bool)

(declare-fun res!1871056 () Bool)

(declare-fun e!2803511 () Bool)

(assert (=> d!1381287 (=> res!1871056 e!2803511)))

(assert (=> d!1381287 (= res!1871056 (and ((_ is Cons!50546) (toList!4260 lt!1680976)) (= (_1!28763 (h!56367 (toList!4260 lt!1680976))) key!3287)))))

(assert (=> d!1381287 (= (containsKey!1684 (toList!4260 lt!1680976) key!3287) e!2803511)))

(declare-fun b!4500680 () Bool)

(declare-fun e!2803512 () Bool)

(assert (=> b!4500680 (= e!2803511 e!2803512)))

(declare-fun res!1871057 () Bool)

(assert (=> b!4500680 (=> (not res!1871057) (not e!2803512))))

(assert (=> b!4500680 (= res!1871057 ((_ is Cons!50546) (toList!4260 lt!1680976)))))

(declare-fun b!4500681 () Bool)

(assert (=> b!4500681 (= e!2803512 (containsKey!1684 (t!357628 (toList!4260 lt!1680976)) key!3287))))

(assert (= (and d!1381287 (not res!1871056)) b!4500680))

(assert (= (and b!4500680 res!1871057) b!4500681))

(declare-fun m!5231557 () Bool)

(assert (=> b!4500681 m!5231557))

(assert (=> b!4499917 d!1381287))

(declare-fun d!1381289 () Bool)

(assert (=> d!1381289 (containsKey!1684 (toList!4260 lt!1680976) key!3287)))

(declare-fun lt!1681604 () Unit!91936)

(assert (=> d!1381289 (= lt!1681604 (choose!29137 (toList!4260 lt!1680976) key!3287))))

(assert (=> d!1381289 (invariantList!985 (toList!4260 lt!1680976))))

(assert (=> d!1381289 (= (lemmaInGetKeysListThenContainsKey!432 (toList!4260 lt!1680976) key!3287) lt!1681604)))

(declare-fun bs!836249 () Bool)

(assert (= bs!836249 d!1381289))

(assert (=> bs!836249 m!5230235))

(declare-fun m!5231559 () Bool)

(assert (=> bs!836249 m!5231559))

(declare-fun m!5231561 () Bool)

(assert (=> bs!836249 m!5231561))

(assert (=> b!4499917 d!1381289))

(declare-fun d!1381291 () Bool)

(declare-fun res!1871058 () Bool)

(declare-fun e!2803515 () Bool)

(assert (=> d!1381291 (=> res!1871058 e!2803515)))

(declare-fun e!2803513 () Bool)

(assert (=> d!1381291 (= res!1871058 e!2803513)))

(declare-fun res!1871059 () Bool)

(assert (=> d!1381291 (=> (not res!1871059) (not e!2803513))))

(assert (=> d!1381291 (= res!1871059 ((_ is Cons!50547) (t!357629 (t!357629 (toList!4259 lm!1477)))))))

(assert (=> d!1381291 (= (containsKeyBiggerList!106 (t!357629 (t!357629 (toList!4259 lm!1477))) key!3287) e!2803515)))

(declare-fun b!4500682 () Bool)

(assert (=> b!4500682 (= e!2803513 (containsKey!1682 (_2!28764 (h!56368 (t!357629 (t!357629 (toList!4259 lm!1477))))) key!3287))))

(declare-fun b!4500683 () Bool)

(declare-fun e!2803514 () Bool)

(assert (=> b!4500683 (= e!2803515 e!2803514)))

(declare-fun res!1871060 () Bool)

(assert (=> b!4500683 (=> (not res!1871060) (not e!2803514))))

(assert (=> b!4500683 (= res!1871060 ((_ is Cons!50547) (t!357629 (t!357629 (toList!4259 lm!1477)))))))

(declare-fun b!4500684 () Bool)

(assert (=> b!4500684 (= e!2803514 (containsKeyBiggerList!106 (t!357629 (t!357629 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(assert (= (and d!1381291 res!1871059) b!4500682))

(assert (= (and d!1381291 (not res!1871058)) b!4500683))

(assert (= (and b!4500683 res!1871060) b!4500684))

(declare-fun m!5231563 () Bool)

(assert (=> b!4500682 m!5231563))

(declare-fun m!5231565 () Bool)

(assert (=> b!4500684 m!5231565))

(assert (=> b!4500095 d!1381291))

(declare-fun b!4500685 () Bool)

(declare-fun e!2803519 () Unit!91936)

(declare-fun e!2803517 () Unit!91936)

(assert (=> b!4500685 (= e!2803519 e!2803517)))

(declare-fun c!767196 () Bool)

(declare-fun call!313278 () Bool)

(assert (=> b!4500685 (= c!767196 call!313278)))

(declare-fun b!4500686 () Bool)

(declare-fun lt!1681607 () Unit!91936)

(assert (=> b!4500686 (= e!2803519 lt!1681607)))

(declare-fun lt!1681605 () Unit!91936)

(assert (=> b!4500686 (= lt!1681605 (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 (extractMap!1182 (toList!4259 lm!1477))) key!3287))))

(assert (=> b!4500686 (isDefined!8334 (getValueByKey!1028 (toList!4260 (extractMap!1182 (toList!4259 lm!1477))) key!3287))))

(declare-fun lt!1681609 () Unit!91936)

(assert (=> b!4500686 (= lt!1681609 lt!1681605)))

(assert (=> b!4500686 (= lt!1681607 (lemmaInListThenGetKeysListContains!429 (toList!4260 (extractMap!1182 (toList!4259 lm!1477))) key!3287))))

(assert (=> b!4500686 call!313278))

(declare-fun b!4500687 () Bool)

(declare-fun e!2803516 () Bool)

(assert (=> b!4500687 (= e!2803516 (not (contains!13223 (keys!17526 (extractMap!1182 (toList!4259 lm!1477))) key!3287)))))

(declare-fun b!4500688 () Bool)

(declare-fun Unit!92060 () Unit!91936)

(assert (=> b!4500688 (= e!2803517 Unit!92060)))

(declare-fun b!4500689 () Bool)

(assert (=> b!4500689 false))

(declare-fun lt!1681608 () Unit!91936)

(declare-fun lt!1681610 () Unit!91936)

(assert (=> b!4500689 (= lt!1681608 lt!1681610)))

(assert (=> b!4500689 (containsKey!1684 (toList!4260 (extractMap!1182 (toList!4259 lm!1477))) key!3287)))

(assert (=> b!4500689 (= lt!1681610 (lemmaInGetKeysListThenContainsKey!432 (toList!4260 (extractMap!1182 (toList!4259 lm!1477))) key!3287))))

(declare-fun Unit!92061 () Unit!91936)

(assert (=> b!4500689 (= e!2803517 Unit!92061)))

(declare-fun b!4500690 () Bool)

(declare-fun e!2803518 () Bool)

(declare-fun e!2803520 () Bool)

(assert (=> b!4500690 (= e!2803518 e!2803520)))

(declare-fun res!1871062 () Bool)

(assert (=> b!4500690 (=> (not res!1871062) (not e!2803520))))

(assert (=> b!4500690 (= res!1871062 (isDefined!8334 (getValueByKey!1028 (toList!4260 (extractMap!1182 (toList!4259 lm!1477))) key!3287)))))

(declare-fun d!1381293 () Bool)

(assert (=> d!1381293 e!2803518))

(declare-fun res!1871063 () Bool)

(assert (=> d!1381293 (=> res!1871063 e!2803518)))

(assert (=> d!1381293 (= res!1871063 e!2803516)))

(declare-fun res!1871061 () Bool)

(assert (=> d!1381293 (=> (not res!1871061) (not e!2803516))))

(declare-fun lt!1681611 () Bool)

(assert (=> d!1381293 (= res!1871061 (not lt!1681611))))

(declare-fun lt!1681612 () Bool)

(assert (=> d!1381293 (= lt!1681611 lt!1681612)))

(declare-fun lt!1681606 () Unit!91936)

(assert (=> d!1381293 (= lt!1681606 e!2803519)))

(declare-fun c!767197 () Bool)

(assert (=> d!1381293 (= c!767197 lt!1681612)))

(assert (=> d!1381293 (= lt!1681612 (containsKey!1684 (toList!4260 (extractMap!1182 (toList!4259 lm!1477))) key!3287))))

(assert (=> d!1381293 (= (contains!13219 (extractMap!1182 (toList!4259 lm!1477)) key!3287) lt!1681611)))

(declare-fun b!4500691 () Bool)

(assert (=> b!4500691 (= e!2803520 (contains!13223 (keys!17526 (extractMap!1182 (toList!4259 lm!1477))) key!3287))))

(declare-fun b!4500692 () Bool)

(declare-fun e!2803521 () List!50673)

(assert (=> b!4500692 (= e!2803521 (getKeysList!433 (toList!4260 (extractMap!1182 (toList!4259 lm!1477)))))))

(declare-fun bm!313273 () Bool)

(assert (=> bm!313273 (= call!313278 (contains!13223 e!2803521 key!3287))))

(declare-fun c!767195 () Bool)

(assert (=> bm!313273 (= c!767195 c!767197)))

(declare-fun b!4500693 () Bool)

(assert (=> b!4500693 (= e!2803521 (keys!17526 (extractMap!1182 (toList!4259 lm!1477))))))

(assert (= (and d!1381293 c!767197) b!4500686))

(assert (= (and d!1381293 (not c!767197)) b!4500685))

(assert (= (and b!4500685 c!767196) b!4500689))

(assert (= (and b!4500685 (not c!767196)) b!4500688))

(assert (= (or b!4500686 b!4500685) bm!313273))

(assert (= (and bm!313273 c!767195) b!4500692))

(assert (= (and bm!313273 (not c!767195)) b!4500693))

(assert (= (and d!1381293 res!1871061) b!4500687))

(assert (= (and d!1381293 (not res!1871063)) b!4500690))

(assert (= (and b!4500690 res!1871062) b!4500691))

(declare-fun m!5231567 () Bool)

(assert (=> b!4500692 m!5231567))

(declare-fun m!5231569 () Bool)

(assert (=> b!4500686 m!5231569))

(declare-fun m!5231571 () Bool)

(assert (=> b!4500686 m!5231571))

(assert (=> b!4500686 m!5231571))

(declare-fun m!5231573 () Bool)

(assert (=> b!4500686 m!5231573))

(declare-fun m!5231575 () Bool)

(assert (=> b!4500686 m!5231575))

(assert (=> b!4500687 m!5230055))

(declare-fun m!5231577 () Bool)

(assert (=> b!4500687 m!5231577))

(assert (=> b!4500687 m!5231577))

(declare-fun m!5231579 () Bool)

(assert (=> b!4500687 m!5231579))

(assert (=> b!4500690 m!5231571))

(assert (=> b!4500690 m!5231571))

(assert (=> b!4500690 m!5231573))

(declare-fun m!5231581 () Bool)

(assert (=> bm!313273 m!5231581))

(declare-fun m!5231583 () Bool)

(assert (=> d!1381293 m!5231583))

(assert (=> b!4500689 m!5231583))

(declare-fun m!5231585 () Bool)

(assert (=> b!4500689 m!5231585))

(assert (=> b!4500693 m!5230055))

(assert (=> b!4500693 m!5231577))

(assert (=> b!4500691 m!5230055))

(assert (=> b!4500691 m!5231577))

(assert (=> b!4500691 m!5231577))

(assert (=> b!4500691 m!5231579))

(assert (=> d!1380959 d!1381293))

(assert (=> d!1380959 d!1380837))

(declare-fun d!1381295 () Bool)

(assert (=> d!1381295 (not (contains!13219 (extractMap!1182 (toList!4259 lm!1477)) key!3287))))

(assert (=> d!1381295 true))

(declare-fun _$26!320 () Unit!91936)

(assert (=> d!1381295 (= (choose!29132 lm!1477 key!3287 hashF!1107) _$26!320)))

(declare-fun bs!836250 () Bool)

(assert (= bs!836250 d!1381295))

(assert (=> bs!836250 m!5230055))

(assert (=> bs!836250 m!5230055))

(assert (=> bs!836250 m!5230535))

(assert (=> d!1380959 d!1381295))

(declare-fun d!1381297 () Bool)

(declare-fun res!1871064 () Bool)

(declare-fun e!2803522 () Bool)

(assert (=> d!1381297 (=> res!1871064 e!2803522)))

(assert (=> d!1381297 (= res!1871064 ((_ is Nil!50547) (toList!4259 lm!1477)))))

(assert (=> d!1381297 (= (forall!10179 (toList!4259 lm!1477) lambda!168766) e!2803522)))

(declare-fun b!4500694 () Bool)

(declare-fun e!2803523 () Bool)

(assert (=> b!4500694 (= e!2803522 e!2803523)))

(declare-fun res!1871065 () Bool)

(assert (=> b!4500694 (=> (not res!1871065) (not e!2803523))))

(assert (=> b!4500694 (= res!1871065 (dynLambda!21109 lambda!168766 (h!56368 (toList!4259 lm!1477))))))

(declare-fun b!4500695 () Bool)

(assert (=> b!4500695 (= e!2803523 (forall!10179 (t!357629 (toList!4259 lm!1477)) lambda!168766))))

(assert (= (and d!1381297 (not res!1871064)) b!4500694))

(assert (= (and b!4500694 res!1871065) b!4500695))

(declare-fun b_lambda!152351 () Bool)

(assert (=> (not b_lambda!152351) (not b!4500694)))

(declare-fun m!5231587 () Bool)

(assert (=> b!4500694 m!5231587))

(declare-fun m!5231589 () Bool)

(assert (=> b!4500695 m!5231589))

(assert (=> d!1380959 d!1381297))

(declare-fun d!1381299 () Bool)

(assert (=> d!1381299 (isDefined!8334 (getValueByKey!1028 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(declare-fun lt!1681615 () Unit!91936)

(declare-fun choose!29145 (List!50670 K!11955) Unit!91936)

(assert (=> d!1381299 (= lt!1681615 (choose!29145 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(assert (=> d!1381299 (invariantList!985 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))

(assert (=> d!1381299 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287) lt!1681615)))

(declare-fun bs!836251 () Bool)

(assert (= bs!836251 d!1381299))

(assert (=> bs!836251 m!5230203))

(assert (=> bs!836251 m!5230203))

(assert (=> bs!836251 m!5230205))

(declare-fun m!5231591 () Bool)

(assert (=> bs!836251 m!5231591))

(assert (=> bs!836251 m!5230853))

(assert (=> b!4499901 d!1381299))

(declare-fun d!1381301 () Bool)

(assert (=> d!1381301 (= (isDefined!8334 (getValueByKey!1028 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287)) (not (isEmpty!28609 (getValueByKey!1028 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))))

(declare-fun bs!836252 () Bool)

(assert (= bs!836252 d!1381301))

(assert (=> bs!836252 m!5230203))

(declare-fun m!5231593 () Bool)

(assert (=> bs!836252 m!5231593))

(assert (=> b!4499901 d!1381301))

(declare-fun b!4500696 () Bool)

(declare-fun e!2803524 () Option!11048)

(assert (=> b!4500696 (= e!2803524 (Some!11047 (_2!28763 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))))

(declare-fun d!1381303 () Bool)

(declare-fun c!767198 () Bool)

(assert (=> d!1381303 (= c!767198 (and ((_ is Cons!50546) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= (_1!28763 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) key!3287)))))

(assert (=> d!1381303 (= (getValueByKey!1028 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287) e!2803524)))

(declare-fun b!4500698 () Bool)

(declare-fun e!2803525 () Option!11048)

(assert (=> b!4500698 (= e!2803525 (getValueByKey!1028 (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) key!3287))))

(declare-fun b!4500699 () Bool)

(assert (=> b!4500699 (= e!2803525 None!11047)))

(declare-fun b!4500697 () Bool)

(assert (=> b!4500697 (= e!2803524 e!2803525)))

(declare-fun c!767199 () Bool)

(assert (=> b!4500697 (= c!767199 (and ((_ is Cons!50546) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (not (= (_1!28763 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) key!3287))))))

(assert (= (and d!1381303 c!767198) b!4500696))

(assert (= (and d!1381303 (not c!767198)) b!4500697))

(assert (= (and b!4500697 c!767199) b!4500698))

(assert (= (and b!4500697 (not c!767199)) b!4500699))

(declare-fun m!5231595 () Bool)

(assert (=> b!4500698 m!5231595))

(assert (=> b!4499901 d!1381303))

(declare-fun d!1381305 () Bool)

(assert (=> d!1381305 (contains!13223 (getKeysList!433 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) key!3287)))

(declare-fun lt!1681618 () Unit!91936)

(declare-fun choose!29146 (List!50670 K!11955) Unit!91936)

(assert (=> d!1381305 (= lt!1681618 (choose!29146 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287))))

(assert (=> d!1381305 (invariantList!985 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))

(assert (=> d!1381305 (= (lemmaInListThenGetKeysListContains!429 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) key!3287) lt!1681618)))

(declare-fun bs!836253 () Bool)

(assert (= bs!836253 d!1381305))

(assert (=> bs!836253 m!5230195))

(assert (=> bs!836253 m!5230195))

(declare-fun m!5231597 () Bool)

(assert (=> bs!836253 m!5231597))

(declare-fun m!5231599 () Bool)

(assert (=> bs!836253 m!5231599))

(assert (=> bs!836253 m!5230853))

(assert (=> b!4499901 d!1381305))

(declare-fun d!1381307 () Bool)

(declare-fun res!1871070 () Bool)

(declare-fun e!2803532 () Bool)

(assert (=> d!1381307 (=> res!1871070 e!2803532)))

(assert (=> d!1381307 (= res!1871070 (and ((_ is Cons!50547) (toList!4259 lt!1680973)) (= (_1!28764 (h!56368 (toList!4259 lt!1680973))) hash!344)))))

(assert (=> d!1381307 (= (containsKey!1686 (toList!4259 lt!1680973) hash!344) e!2803532)))

(declare-fun b!4500704 () Bool)

(declare-fun e!2803533 () Bool)

(assert (=> b!4500704 (= e!2803532 e!2803533)))

(declare-fun res!1871071 () Bool)

(assert (=> b!4500704 (=> (not res!1871071) (not e!2803533))))

(assert (=> b!4500704 (= res!1871071 (and (or (not ((_ is Cons!50547) (toList!4259 lt!1680973))) (bvsle (_1!28764 (h!56368 (toList!4259 lt!1680973))) hash!344)) ((_ is Cons!50547) (toList!4259 lt!1680973)) (bvslt (_1!28764 (h!56368 (toList!4259 lt!1680973))) hash!344)))))

(declare-fun b!4500705 () Bool)

(assert (=> b!4500705 (= e!2803533 (containsKey!1686 (t!357629 (toList!4259 lt!1680973)) hash!344))))

(assert (= (and d!1381307 (not res!1871070)) b!4500704))

(assert (= (and b!4500704 res!1871071) b!4500705))

(declare-fun m!5231601 () Bool)

(assert (=> b!4500705 m!5231601))

(assert (=> d!1380897 d!1381307))

(assert (=> d!1380983 d!1380981))

(declare-fun d!1381309 () Bool)

(assert (=> d!1381309 (containsKeyBiggerList!106 (toList!4259 lt!1680973) key!3287)))

(assert (=> d!1381309 true))

(declare-fun _$33!613 () Unit!91936)

(assert (=> d!1381309 (= (choose!29134 lt!1680973 key!3287 hashF!1107) _$33!613)))

(declare-fun bs!836254 () Bool)

(assert (= bs!836254 d!1381309))

(assert (=> bs!836254 m!5230047))

(assert (=> d!1380983 d!1381309))

(declare-fun d!1381311 () Bool)

(declare-fun res!1871072 () Bool)

(declare-fun e!2803534 () Bool)

(assert (=> d!1381311 (=> res!1871072 e!2803534)))

(assert (=> d!1381311 (= res!1871072 ((_ is Nil!50547) (toList!4259 lt!1680973)))))

(assert (=> d!1381311 (= (forall!10179 (toList!4259 lt!1680973) lambda!168774) e!2803534)))

(declare-fun b!4500706 () Bool)

(declare-fun e!2803535 () Bool)

(assert (=> b!4500706 (= e!2803534 e!2803535)))

(declare-fun res!1871073 () Bool)

(assert (=> b!4500706 (=> (not res!1871073) (not e!2803535))))

(assert (=> b!4500706 (= res!1871073 (dynLambda!21109 lambda!168774 (h!56368 (toList!4259 lt!1680973))))))

(declare-fun b!4500707 () Bool)

(assert (=> b!4500707 (= e!2803535 (forall!10179 (t!357629 (toList!4259 lt!1680973)) lambda!168774))))

(assert (= (and d!1381311 (not res!1871072)) b!4500706))

(assert (= (and b!4500706 res!1871073) b!4500707))

(declare-fun b_lambda!152353 () Bool)

(assert (=> (not b_lambda!152353) (not b!4500706)))

(declare-fun m!5231603 () Bool)

(assert (=> b!4500706 m!5231603))

(declare-fun m!5231605 () Bool)

(assert (=> b!4500707 m!5231605))

(assert (=> d!1380983 d!1381311))

(declare-fun d!1381313 () Bool)

(assert (=> d!1381313 (= (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287)) (not (isEmpty!28609 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287))))))

(declare-fun bs!836255 () Bool)

(assert (= bs!836255 d!1381313))

(assert (=> bs!836255 m!5230223))

(declare-fun m!5231607 () Bool)

(assert (=> bs!836255 m!5231607))

(assert (=> b!4499918 d!1381313))

(declare-fun b!4500708 () Bool)

(declare-fun e!2803536 () Option!11048)

(assert (=> b!4500708 (= e!2803536 (Some!11047 (_2!28763 (h!56367 (toList!4260 lt!1680976)))))))

(declare-fun d!1381315 () Bool)

(declare-fun c!767200 () Bool)

(assert (=> d!1381315 (= c!767200 (and ((_ is Cons!50546) (toList!4260 lt!1680976)) (= (_1!28763 (h!56367 (toList!4260 lt!1680976))) key!3287)))))

(assert (=> d!1381315 (= (getValueByKey!1028 (toList!4260 lt!1680976) key!3287) e!2803536)))

(declare-fun b!4500710 () Bool)

(declare-fun e!2803537 () Option!11048)

(assert (=> b!4500710 (= e!2803537 (getValueByKey!1028 (t!357628 (toList!4260 lt!1680976)) key!3287))))

(declare-fun b!4500711 () Bool)

(assert (=> b!4500711 (= e!2803537 None!11047)))

(declare-fun b!4500709 () Bool)

(assert (=> b!4500709 (= e!2803536 e!2803537)))

(declare-fun c!767201 () Bool)

(assert (=> b!4500709 (= c!767201 (and ((_ is Cons!50546) (toList!4260 lt!1680976)) (not (= (_1!28763 (h!56367 (toList!4260 lt!1680976))) key!3287))))))

(assert (= (and d!1381315 c!767200) b!4500708))

(assert (= (and d!1381315 (not c!767200)) b!4500709))

(assert (= (and b!4500709 c!767201) b!4500710))

(assert (= (and b!4500709 (not c!767201)) b!4500711))

(declare-fun m!5231609 () Bool)

(assert (=> b!4500710 m!5231609))

(assert (=> b!4499918 d!1381315))

(declare-fun b!4500715 () Bool)

(declare-fun e!2803539 () Option!11049)

(assert (=> b!4500715 (= e!2803539 None!11048)))

(declare-fun b!4500712 () Bool)

(declare-fun e!2803538 () Option!11049)

(assert (=> b!4500712 (= e!2803538 (Some!11048 (_2!28764 (h!56368 (toList!4259 lt!1681124)))))))

(declare-fun d!1381317 () Bool)

(declare-fun c!767202 () Bool)

(assert (=> d!1381317 (= c!767202 (and ((_ is Cons!50547) (toList!4259 lt!1681124)) (= (_1!28764 (h!56368 (toList!4259 lt!1681124))) (_1!28764 lt!1680964))))))

(assert (=> d!1381317 (= (getValueByKey!1029 (toList!4259 lt!1681124) (_1!28764 lt!1680964)) e!2803538)))

(declare-fun b!4500713 () Bool)

(assert (=> b!4500713 (= e!2803538 e!2803539)))

(declare-fun c!767203 () Bool)

(assert (=> b!4500713 (= c!767203 (and ((_ is Cons!50547) (toList!4259 lt!1681124)) (not (= (_1!28764 (h!56368 (toList!4259 lt!1681124))) (_1!28764 lt!1680964)))))))

(declare-fun b!4500714 () Bool)

(assert (=> b!4500714 (= e!2803539 (getValueByKey!1029 (t!357629 (toList!4259 lt!1681124)) (_1!28764 lt!1680964)))))

(assert (= (and d!1381317 c!767202) b!4500712))

(assert (= (and d!1381317 (not c!767202)) b!4500713))

(assert (= (and b!4500713 c!767203) b!4500714))

(assert (= (and b!4500713 (not c!767203)) b!4500715))

(declare-fun m!5231611 () Bool)

(assert (=> b!4500714 m!5231611))

(assert (=> b!4499969 d!1381317))

(declare-fun bs!836256 () Bool)

(declare-fun b!4500722 () Bool)

(assert (= bs!836256 (and b!4500722 b!4500535)))

(declare-fun lambda!168911 () Int)

(assert (=> bs!836256 (= (= (t!357628 (toList!4260 lt!1680976)) (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967)))) (= lambda!168911 lambda!168903))))

(declare-fun bs!836257 () Bool)

(assert (= bs!836257 (and b!4500722 b!4500539)))

(assert (=> bs!836257 (= (= (t!357628 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680967))) (= lambda!168911 lambda!168902))))

(declare-fun bs!836258 () Bool)

(assert (= bs!836258 (and b!4500722 b!4500540)))

(assert (=> bs!836258 (= (= (t!357628 (toList!4260 lt!1680976)) (toList!4260 lt!1680967)) (= lambda!168911 lambda!168904))))

(declare-fun bs!836259 () Bool)

(assert (= bs!836259 (and b!4500722 b!4500249)))

(assert (=> bs!836259 (= (= (t!357628 (toList!4260 lt!1680976)) (toList!4260 lt!1680976)) (= lambda!168911 lambda!168828))))

(declare-fun bs!836260 () Bool)

(assert (= bs!836260 (and b!4500722 b!4500385)))

(assert (=> bs!836260 (= (= (t!357628 (toList!4260 lt!1680976)) (toList!4260 lt!1680967)) (= lambda!168911 lambda!168876))))

(declare-fun bs!836261 () Bool)

(assert (= bs!836261 (and b!4500722 b!4500264)))

(assert (=> bs!836261 (= (= (t!357628 (toList!4260 lt!1680976)) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168911 lambda!168830))))

(assert (=> b!4500722 true))

(declare-fun bs!836262 () Bool)

(declare-fun b!4500718 () Bool)

(assert (= bs!836262 (and b!4500718 b!4500535)))

(declare-fun lambda!168912 () Int)

(assert (=> bs!836262 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976))) (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967)))) (= lambda!168912 lambda!168903))))

(declare-fun bs!836263 () Bool)

(assert (= bs!836263 (and b!4500718 b!4500539)))

(assert (=> bs!836263 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976))) (t!357628 (toList!4260 lt!1680967))) (= lambda!168912 lambda!168902))))

(declare-fun bs!836264 () Bool)

(assert (= bs!836264 (and b!4500718 b!4500540)))

(assert (=> bs!836264 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976))) (toList!4260 lt!1680967)) (= lambda!168912 lambda!168904))))

(declare-fun bs!836265 () Bool)

(assert (= bs!836265 (and b!4500718 b!4500385)))

(assert (=> bs!836265 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976))) (toList!4260 lt!1680967)) (= lambda!168912 lambda!168876))))

(declare-fun bs!836266 () Bool)

(assert (= bs!836266 (and b!4500718 b!4500264)))

(assert (=> bs!836266 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976))) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168912 lambda!168830))))

(declare-fun bs!836267 () Bool)

(assert (= bs!836267 (and b!4500718 b!4500249)))

(assert (=> bs!836267 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976))) (toList!4260 lt!1680976)) (= lambda!168912 lambda!168828))))

(declare-fun bs!836268 () Bool)

(assert (= bs!836268 (and b!4500718 b!4500722)))

(assert (=> bs!836268 (= (= (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976))) (t!357628 (toList!4260 lt!1680976))) (= lambda!168912 lambda!168911))))

(assert (=> b!4500718 true))

(declare-fun bs!836269 () Bool)

(declare-fun b!4500723 () Bool)

(assert (= bs!836269 (and b!4500723 b!4500535)))

(declare-fun lambda!168913 () Int)

(assert (=> bs!836269 (= (= (toList!4260 lt!1680976) (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967)))) (= lambda!168913 lambda!168903))))

(declare-fun bs!836270 () Bool)

(assert (= bs!836270 (and b!4500723 b!4500539)))

(assert (=> bs!836270 (= (= (toList!4260 lt!1680976) (t!357628 (toList!4260 lt!1680967))) (= lambda!168913 lambda!168902))))

(declare-fun bs!836271 () Bool)

(assert (= bs!836271 (and b!4500723 b!4500540)))

(assert (=> bs!836271 (= (= (toList!4260 lt!1680976) (toList!4260 lt!1680967)) (= lambda!168913 lambda!168904))))

(declare-fun bs!836272 () Bool)

(assert (= bs!836272 (and b!4500723 b!4500718)))

(assert (=> bs!836272 (= (= (toList!4260 lt!1680976) (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976)))) (= lambda!168913 lambda!168912))))

(declare-fun bs!836273 () Bool)

(assert (= bs!836273 (and b!4500723 b!4500385)))

(assert (=> bs!836273 (= (= (toList!4260 lt!1680976) (toList!4260 lt!1680967)) (= lambda!168913 lambda!168876))))

(declare-fun bs!836274 () Bool)

(assert (= bs!836274 (and b!4500723 b!4500264)))

(assert (=> bs!836274 (= (= (toList!4260 lt!1680976) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168913 lambda!168830))))

(declare-fun bs!836275 () Bool)

(assert (= bs!836275 (and b!4500723 b!4500249)))

(assert (=> bs!836275 (= lambda!168913 lambda!168828)))

(declare-fun bs!836276 () Bool)

(assert (= bs!836276 (and b!4500723 b!4500722)))

(assert (=> bs!836276 (= (= (toList!4260 lt!1680976) (t!357628 (toList!4260 lt!1680976))) (= lambda!168913 lambda!168911))))

(assert (=> b!4500723 true))

(declare-fun bs!836277 () Bool)

(declare-fun b!4500719 () Bool)

(assert (= bs!836277 (and b!4500719 b!4500250)))

(declare-fun lambda!168914 () Int)

(assert (=> bs!836277 (= lambda!168914 lambda!168829)))

(declare-fun bs!836278 () Bool)

(assert (= bs!836278 (and b!4500719 b!4500265)))

(assert (=> bs!836278 (= lambda!168914 lambda!168831)))

(declare-fun bs!836279 () Bool)

(assert (= bs!836279 (and b!4500719 b!4500386)))

(assert (=> bs!836279 (= lambda!168914 lambda!168879)))

(declare-fun bs!836280 () Bool)

(assert (= bs!836280 (and b!4500719 b!4500536)))

(assert (=> bs!836280 (= lambda!168914 lambda!168905)))

(declare-fun b!4500716 () Bool)

(declare-fun e!2803543 () Unit!91936)

(declare-fun Unit!92068 () Unit!91936)

(assert (=> b!4500716 (= e!2803543 Unit!92068)))

(declare-fun d!1381319 () Bool)

(declare-fun e!2803542 () Bool)

(assert (=> d!1381319 e!2803542))

(declare-fun res!1871076 () Bool)

(assert (=> d!1381319 (=> (not res!1871076) (not e!2803542))))

(declare-fun lt!1681623 () List!50673)

(assert (=> d!1381319 (= res!1871076 (noDuplicate!729 lt!1681623))))

(declare-fun e!2803540 () List!50673)

(assert (=> d!1381319 (= lt!1681623 e!2803540)))

(declare-fun c!767204 () Bool)

(assert (=> d!1381319 (= c!767204 ((_ is Cons!50546) (toList!4260 lt!1680976)))))

(assert (=> d!1381319 (invariantList!985 (toList!4260 lt!1680976))))

(assert (=> d!1381319 (= (getKeysList!433 (toList!4260 lt!1680976)) lt!1681623)))

(declare-fun b!4500717 () Bool)

(declare-fun res!1871074 () Bool)

(assert (=> b!4500717 (=> (not res!1871074) (not e!2803542))))

(assert (=> b!4500717 (= res!1871074 (= (length!314 lt!1681623) (length!315 (toList!4260 lt!1680976))))))

(assert (=> b!4500718 (= e!2803540 (Cons!50549 (_1!28763 (h!56367 (toList!4260 lt!1680976))) (getKeysList!433 (t!357628 (toList!4260 lt!1680976)))))))

(declare-fun c!767205 () Bool)

(assert (=> b!4500718 (= c!767205 (containsKey!1684 (t!357628 (toList!4260 lt!1680976)) (_1!28763 (h!56367 (toList!4260 lt!1680976)))))))

(declare-fun lt!1681619 () Unit!91936)

(assert (=> b!4500718 (= lt!1681619 e!2803543)))

(declare-fun c!767206 () Bool)

(assert (=> b!4500718 (= c!767206 (contains!13223 (getKeysList!433 (t!357628 (toList!4260 lt!1680976))) (_1!28763 (h!56367 (toList!4260 lt!1680976)))))))

(declare-fun lt!1681622 () Unit!91936)

(declare-fun e!2803541 () Unit!91936)

(assert (=> b!4500718 (= lt!1681622 e!2803541)))

(declare-fun lt!1681621 () List!50673)

(assert (=> b!4500718 (= lt!1681621 (getKeysList!433 (t!357628 (toList!4260 lt!1680976))))))

(declare-fun lt!1681625 () Unit!91936)

(assert (=> b!4500718 (= lt!1681625 (lemmaForallContainsAddHeadPreserves!151 (t!357628 (toList!4260 lt!1680976)) lt!1681621 (h!56367 (toList!4260 lt!1680976))))))

(assert (=> b!4500718 (forall!10182 lt!1681621 lambda!168912)))

(declare-fun lt!1681624 () Unit!91936)

(assert (=> b!4500718 (= lt!1681624 lt!1681625)))

(assert (=> b!4500719 (= e!2803542 (= (content!8263 lt!1681623) (content!8263 (map!11103 (toList!4260 lt!1680976) lambda!168914))))))

(declare-fun b!4500720 () Bool)

(assert (=> b!4500720 false))

(declare-fun Unit!92069 () Unit!91936)

(assert (=> b!4500720 (= e!2803543 Unit!92069)))

(declare-fun b!4500721 () Bool)

(assert (=> b!4500721 (= e!2803540 Nil!50549)))

(assert (=> b!4500722 false))

(declare-fun lt!1681620 () Unit!91936)

(assert (=> b!4500722 (= lt!1681620 (forallContained!2437 (getKeysList!433 (t!357628 (toList!4260 lt!1680976))) lambda!168911 (_1!28763 (h!56367 (toList!4260 lt!1680976)))))))

(declare-fun Unit!92070 () Unit!91936)

(assert (=> b!4500722 (= e!2803541 Unit!92070)))

(declare-fun res!1871075 () Bool)

(assert (=> b!4500723 (=> (not res!1871075) (not e!2803542))))

(assert (=> b!4500723 (= res!1871075 (forall!10182 lt!1681623 lambda!168913))))

(declare-fun b!4500724 () Bool)

(declare-fun Unit!92071 () Unit!91936)

(assert (=> b!4500724 (= e!2803541 Unit!92071)))

(assert (= (and d!1381319 c!767204) b!4500718))

(assert (= (and d!1381319 (not c!767204)) b!4500721))

(assert (= (and b!4500718 c!767205) b!4500720))

(assert (= (and b!4500718 (not c!767205)) b!4500716))

(assert (= (and b!4500718 c!767206) b!4500722))

(assert (= (and b!4500718 (not c!767206)) b!4500724))

(assert (= (and d!1381319 res!1871076) b!4500717))

(assert (= (and b!4500717 res!1871074) b!4500723))

(assert (= (and b!4500723 res!1871075) b!4500719))

(declare-fun m!5231613 () Bool)

(assert (=> b!4500718 m!5231613))

(declare-fun m!5231615 () Bool)

(assert (=> b!4500718 m!5231615))

(assert (=> b!4500718 m!5231615))

(declare-fun m!5231617 () Bool)

(assert (=> b!4500718 m!5231617))

(declare-fun m!5231619 () Bool)

(assert (=> b!4500718 m!5231619))

(declare-fun m!5231621 () Bool)

(assert (=> b!4500718 m!5231621))

(assert (=> b!4500722 m!5231615))

(assert (=> b!4500722 m!5231615))

(declare-fun m!5231623 () Bool)

(assert (=> b!4500722 m!5231623))

(declare-fun m!5231625 () Bool)

(assert (=> b!4500719 m!5231625))

(declare-fun m!5231627 () Bool)

(assert (=> b!4500719 m!5231627))

(assert (=> b!4500719 m!5231627))

(declare-fun m!5231629 () Bool)

(assert (=> b!4500719 m!5231629))

(declare-fun m!5231631 () Bool)

(assert (=> d!1381319 m!5231631))

(assert (=> d!1381319 m!5231561))

(declare-fun m!5231633 () Bool)

(assert (=> b!4500717 m!5231633))

(assert (=> b!4500717 m!5230799))

(declare-fun m!5231635 () Bool)

(assert (=> b!4500723 m!5231635))

(assert (=> b!4499920 d!1381319))

(declare-fun d!1381321 () Bool)

(declare-fun c!767221 () Bool)

(assert (=> d!1381321 (= c!767221 ((_ is Nil!50549) (keys!17526 lt!1680976)))))

(declare-fun e!2803558 () (InoxSet K!11955))

(assert (=> d!1381321 (= (content!8263 (keys!17526 lt!1680976)) e!2803558)))

(declare-fun b!4500753 () Bool)

(assert (=> b!4500753 (= e!2803558 ((as const (Array K!11955 Bool)) false))))

(declare-fun b!4500754 () Bool)

(assert (=> b!4500754 (= e!2803558 ((_ map or) (store ((as const (Array K!11955 Bool)) false) (h!56372 (keys!17526 lt!1680976)) true) (content!8263 (t!357631 (keys!17526 lt!1680976)))))))

(assert (= (and d!1381321 c!767221) b!4500753))

(assert (= (and d!1381321 (not c!767221)) b!4500754))

(declare-fun m!5231637 () Bool)

(assert (=> b!4500754 m!5231637))

(declare-fun m!5231639 () Bool)

(assert (=> b!4500754 m!5231639))

(assert (=> b!4500080 d!1381321))

(assert (=> b!4500080 d!1381053))

(declare-fun d!1381323 () Bool)

(declare-fun c!767222 () Bool)

(assert (=> d!1381323 (= c!767222 ((_ is Nil!50549) (keys!17526 lt!1681206)))))

(declare-fun e!2803559 () (InoxSet K!11955))

(assert (=> d!1381323 (= (content!8263 (keys!17526 lt!1681206)) e!2803559)))

(declare-fun b!4500755 () Bool)

(assert (=> b!4500755 (= e!2803559 ((as const (Array K!11955 Bool)) false))))

(declare-fun b!4500756 () Bool)

(assert (=> b!4500756 (= e!2803559 ((_ map or) (store ((as const (Array K!11955 Bool)) false) (h!56372 (keys!17526 lt!1681206)) true) (content!8263 (t!357631 (keys!17526 lt!1681206)))))))

(assert (= (and d!1381323 c!767222) b!4500755))

(assert (= (and d!1381323 (not c!767222)) b!4500756))

(declare-fun m!5231641 () Bool)

(assert (=> b!4500756 m!5231641))

(declare-fun m!5231643 () Bool)

(assert (=> b!4500756 m!5231643))

(assert (=> b!4500080 d!1381323))

(declare-fun bs!836281 () Bool)

(declare-fun b!4500758 () Bool)

(assert (= bs!836281 (and b!4500758 b!4500535)))

(declare-fun lambda!168915 () Int)

(assert (=> bs!836281 (= (= (toList!4260 lt!1681206) (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967)))) (= lambda!168915 lambda!168903))))

(declare-fun bs!836282 () Bool)

(assert (= bs!836282 (and b!4500758 b!4500539)))

(assert (=> bs!836282 (= (= (toList!4260 lt!1681206) (t!357628 (toList!4260 lt!1680967))) (= lambda!168915 lambda!168902))))

(declare-fun bs!836283 () Bool)

(assert (= bs!836283 (and b!4500758 b!4500540)))

(assert (=> bs!836283 (= (= (toList!4260 lt!1681206) (toList!4260 lt!1680967)) (= lambda!168915 lambda!168904))))

(declare-fun bs!836284 () Bool)

(assert (= bs!836284 (and b!4500758 b!4500718)))

(assert (=> bs!836284 (= (= (toList!4260 lt!1681206) (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976)))) (= lambda!168915 lambda!168912))))

(declare-fun bs!836285 () Bool)

(assert (= bs!836285 (and b!4500758 b!4500723)))

(assert (=> bs!836285 (= (= (toList!4260 lt!1681206) (toList!4260 lt!1680976)) (= lambda!168915 lambda!168913))))

(declare-fun bs!836286 () Bool)

(assert (= bs!836286 (and b!4500758 b!4500385)))

(assert (=> bs!836286 (= (= (toList!4260 lt!1681206) (toList!4260 lt!1680967)) (= lambda!168915 lambda!168876))))

(declare-fun bs!836287 () Bool)

(assert (= bs!836287 (and b!4500758 b!4500264)))

(assert (=> bs!836287 (= (= (toList!4260 lt!1681206) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168915 lambda!168830))))

(declare-fun bs!836288 () Bool)

(assert (= bs!836288 (and b!4500758 b!4500249)))

(assert (=> bs!836288 (= (= (toList!4260 lt!1681206) (toList!4260 lt!1680976)) (= lambda!168915 lambda!168828))))

(declare-fun bs!836289 () Bool)

(assert (= bs!836289 (and b!4500758 b!4500722)))

(assert (=> bs!836289 (= (= (toList!4260 lt!1681206) (t!357628 (toList!4260 lt!1680976))) (= lambda!168915 lambda!168911))))

(assert (=> b!4500758 true))

(declare-fun bs!836290 () Bool)

(declare-fun b!4500759 () Bool)

(assert (= bs!836290 (and b!4500759 b!4500265)))

(declare-fun lambda!168916 () Int)

(assert (=> bs!836290 (= lambda!168916 lambda!168831)))

(declare-fun bs!836291 () Bool)

(assert (= bs!836291 (and b!4500759 b!4500386)))

(assert (=> bs!836291 (= lambda!168916 lambda!168879)))

(declare-fun bs!836292 () Bool)

(assert (= bs!836292 (and b!4500759 b!4500536)))

(assert (=> bs!836292 (= lambda!168916 lambda!168905)))

(declare-fun bs!836293 () Bool)

(assert (= bs!836293 (and b!4500759 b!4500719)))

(assert (=> bs!836293 (= lambda!168916 lambda!168914)))

(declare-fun bs!836294 () Bool)

(assert (= bs!836294 (and b!4500759 b!4500250)))

(assert (=> bs!836294 (= lambda!168916 lambda!168829)))

(declare-fun d!1381325 () Bool)

(declare-fun e!2803560 () Bool)

(assert (=> d!1381325 e!2803560))

(declare-fun res!1871077 () Bool)

(assert (=> d!1381325 (=> (not res!1871077) (not e!2803560))))

(declare-fun lt!1681658 () List!50673)

(assert (=> d!1381325 (= res!1871077 (noDuplicate!729 lt!1681658))))

(assert (=> d!1381325 (= lt!1681658 (getKeysList!433 (toList!4260 lt!1681206)))))

(assert (=> d!1381325 (= (keys!17526 lt!1681206) lt!1681658)))

(declare-fun b!4500757 () Bool)

(declare-fun res!1871078 () Bool)

(assert (=> b!4500757 (=> (not res!1871078) (not e!2803560))))

(assert (=> b!4500757 (= res!1871078 (= (length!314 lt!1681658) (length!315 (toList!4260 lt!1681206))))))

(declare-fun res!1871079 () Bool)

(assert (=> b!4500758 (=> (not res!1871079) (not e!2803560))))

(assert (=> b!4500758 (= res!1871079 (forall!10182 lt!1681658 lambda!168915))))

(assert (=> b!4500759 (= e!2803560 (= (content!8263 lt!1681658) (content!8263 (map!11103 (toList!4260 lt!1681206) lambda!168916))))))

(assert (= (and d!1381325 res!1871077) b!4500757))

(assert (= (and b!4500757 res!1871078) b!4500758))

(assert (= (and b!4500758 res!1871079) b!4500759))

(declare-fun m!5231645 () Bool)

(assert (=> d!1381325 m!5231645))

(declare-fun m!5231647 () Bool)

(assert (=> d!1381325 m!5231647))

(declare-fun m!5231649 () Bool)

(assert (=> b!4500757 m!5231649))

(declare-fun m!5231651 () Bool)

(assert (=> b!4500757 m!5231651))

(declare-fun m!5231653 () Bool)

(assert (=> b!4500758 m!5231653))

(declare-fun m!5231655 () Bool)

(assert (=> b!4500759 m!5231655))

(declare-fun m!5231657 () Bool)

(assert (=> b!4500759 m!5231657))

(assert (=> b!4500759 m!5231657))

(declare-fun m!5231659 () Bool)

(assert (=> b!4500759 m!5231659))

(assert (=> b!4500080 d!1381325))

(declare-fun d!1381327 () Bool)

(assert (=> d!1381327 (= (tail!7670 (toList!4259 lm!1477)) (t!357629 (toList!4259 lm!1477)))))

(assert (=> d!1380921 d!1381327))

(assert (=> b!4499905 d!1381301))

(assert (=> b!4499905 d!1381303))

(assert (=> b!4499921 d!1381053))

(assert (=> b!4500049 d!1380953))

(declare-fun bs!836295 () Bool)

(declare-fun b!4500780 () Bool)

(assert (= bs!836295 (and b!4500780 b!4500535)))

(declare-fun lambda!168917 () Int)

(assert (=> bs!836295 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967)))) (= lambda!168917 lambda!168903))))

(declare-fun bs!836296 () Bool)

(assert (= bs!836296 (and b!4500780 b!4500539)))

(assert (=> bs!836296 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 lt!1680967))) (= lambda!168917 lambda!168902))))

(declare-fun bs!836297 () Bool)

(assert (= bs!836297 (and b!4500780 b!4500540)))

(assert (=> bs!836297 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (toList!4260 lt!1680967)) (= lambda!168917 lambda!168904))))

(declare-fun bs!836298 () Bool)

(assert (= bs!836298 (and b!4500780 b!4500718)))

(assert (=> bs!836298 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976)))) (= lambda!168917 lambda!168912))))

(declare-fun bs!836299 () Bool)

(assert (= bs!836299 (and b!4500780 b!4500758)))

(assert (=> bs!836299 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (toList!4260 lt!1681206)) (= lambda!168917 lambda!168915))))

(declare-fun bs!836300 () Bool)

(assert (= bs!836300 (and b!4500780 b!4500723)))

(assert (=> bs!836300 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (toList!4260 lt!1680976)) (= lambda!168917 lambda!168913))))

(declare-fun bs!836301 () Bool)

(assert (= bs!836301 (and b!4500780 b!4500385)))

(assert (=> bs!836301 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (toList!4260 lt!1680967)) (= lambda!168917 lambda!168876))))

(declare-fun bs!836302 () Bool)

(assert (= bs!836302 (and b!4500780 b!4500264)))

(assert (=> bs!836302 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168917 lambda!168830))))

(declare-fun bs!836303 () Bool)

(assert (= bs!836303 (and b!4500780 b!4500249)))

(assert (=> bs!836303 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (toList!4260 lt!1680976)) (= lambda!168917 lambda!168828))))

(declare-fun bs!836304 () Bool)

(assert (= bs!836304 (and b!4500780 b!4500722)))

(assert (=> bs!836304 (= (= (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 lt!1680976))) (= lambda!168917 lambda!168911))))

(assert (=> b!4500780 true))

(declare-fun bs!836305 () Bool)

(declare-fun b!4500776 () Bool)

(assert (= bs!836305 (and b!4500776 b!4500780)))

(declare-fun lambda!168918 () Int)

(assert (=> bs!836305 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (= lambda!168918 lambda!168917))))

(declare-fun bs!836306 () Bool)

(assert (= bs!836306 (and b!4500776 b!4500535)))

(assert (=> bs!836306 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967)))) (= lambda!168918 lambda!168903))))

(declare-fun bs!836307 () Bool)

(assert (= bs!836307 (and b!4500776 b!4500539)))

(assert (=> bs!836307 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (t!357628 (toList!4260 lt!1680967))) (= lambda!168918 lambda!168902))))

(declare-fun bs!836308 () Bool)

(assert (= bs!836308 (and b!4500776 b!4500540)))

(assert (=> bs!836308 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (toList!4260 lt!1680967)) (= lambda!168918 lambda!168904))))

(declare-fun bs!836309 () Bool)

(assert (= bs!836309 (and b!4500776 b!4500718)))

(assert (=> bs!836309 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976)))) (= lambda!168918 lambda!168912))))

(declare-fun bs!836310 () Bool)

(assert (= bs!836310 (and b!4500776 b!4500758)))

(assert (=> bs!836310 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (toList!4260 lt!1681206)) (= lambda!168918 lambda!168915))))

(declare-fun bs!836311 () Bool)

(assert (= bs!836311 (and b!4500776 b!4500723)))

(assert (=> bs!836311 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (toList!4260 lt!1680976)) (= lambda!168918 lambda!168913))))

(declare-fun bs!836312 () Bool)

(assert (= bs!836312 (and b!4500776 b!4500385)))

(assert (=> bs!836312 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (toList!4260 lt!1680967)) (= lambda!168918 lambda!168876))))

(declare-fun bs!836313 () Bool)

(assert (= bs!836313 (and b!4500776 b!4500264)))

(assert (=> bs!836313 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (= lambda!168918 lambda!168830))))

(declare-fun bs!836314 () Bool)

(assert (= bs!836314 (and b!4500776 b!4500249)))

(assert (=> bs!836314 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (toList!4260 lt!1680976)) (= lambda!168918 lambda!168828))))

(declare-fun bs!836315 () Bool)

(assert (= bs!836315 (and b!4500776 b!4500722)))

(assert (=> bs!836315 (= (= (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (t!357628 (toList!4260 lt!1680976))) (= lambda!168918 lambda!168911))))

(assert (=> b!4500776 true))

(declare-fun bs!836316 () Bool)

(declare-fun b!4500781 () Bool)

(assert (= bs!836316 (and b!4500781 b!4500776)))

(declare-fun lambda!168919 () Int)

(assert (=> bs!836316 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (Cons!50546 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))) (= lambda!168919 lambda!168918))))

(declare-fun bs!836317 () Bool)

(assert (= bs!836317 (and b!4500781 b!4500780)))

(assert (=> bs!836317 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (= lambda!168919 lambda!168917))))

(declare-fun bs!836318 () Bool)

(assert (= bs!836318 (and b!4500781 b!4500535)))

(assert (=> bs!836318 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (Cons!50546 (h!56367 (toList!4260 lt!1680967)) (t!357628 (toList!4260 lt!1680967)))) (= lambda!168919 lambda!168903))))

(declare-fun bs!836319 () Bool)

(assert (= bs!836319 (and b!4500781 b!4500539)))

(assert (=> bs!836319 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (t!357628 (toList!4260 lt!1680967))) (= lambda!168919 lambda!168902))))

(declare-fun bs!836320 () Bool)

(assert (= bs!836320 (and b!4500781 b!4500540)))

(assert (=> bs!836320 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (toList!4260 lt!1680967)) (= lambda!168919 lambda!168904))))

(declare-fun bs!836321 () Bool)

(assert (= bs!836321 (and b!4500781 b!4500718)))

(assert (=> bs!836321 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (Cons!50546 (h!56367 (toList!4260 lt!1680976)) (t!357628 (toList!4260 lt!1680976)))) (= lambda!168919 lambda!168912))))

(declare-fun bs!836322 () Bool)

(assert (= bs!836322 (and b!4500781 b!4500758)))

(assert (=> bs!836322 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (toList!4260 lt!1681206)) (= lambda!168919 lambda!168915))))

(declare-fun bs!836323 () Bool)

(assert (= bs!836323 (and b!4500781 b!4500723)))

(assert (=> bs!836323 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (toList!4260 lt!1680976)) (= lambda!168919 lambda!168913))))

(declare-fun bs!836324 () Bool)

(assert (= bs!836324 (and b!4500781 b!4500385)))

(assert (=> bs!836324 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (toList!4260 lt!1680967)) (= lambda!168919 lambda!168876))))

(declare-fun bs!836325 () Bool)

(assert (= bs!836325 (and b!4500781 b!4500264)))

(assert (=> bs!836325 (= lambda!168919 lambda!168830)))

(declare-fun bs!836326 () Bool)

(assert (= bs!836326 (and b!4500781 b!4500249)))

(assert (=> bs!836326 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (toList!4260 lt!1680976)) (= lambda!168919 lambda!168828))))

(declare-fun bs!836327 () Bool)

(assert (= bs!836327 (and b!4500781 b!4500722)))

(assert (=> bs!836327 (= (= (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (t!357628 (toList!4260 lt!1680976))) (= lambda!168919 lambda!168911))))

(assert (=> b!4500781 true))

(declare-fun bs!836328 () Bool)

(declare-fun b!4500777 () Bool)

(assert (= bs!836328 (and b!4500777 b!4500759)))

(declare-fun lambda!168920 () Int)

(assert (=> bs!836328 (= lambda!168920 lambda!168916)))

(declare-fun bs!836329 () Bool)

(assert (= bs!836329 (and b!4500777 b!4500265)))

(assert (=> bs!836329 (= lambda!168920 lambda!168831)))

(declare-fun bs!836330 () Bool)

(assert (= bs!836330 (and b!4500777 b!4500386)))

(assert (=> bs!836330 (= lambda!168920 lambda!168879)))

(declare-fun bs!836331 () Bool)

(assert (= bs!836331 (and b!4500777 b!4500536)))

(assert (=> bs!836331 (= lambda!168920 lambda!168905)))

(declare-fun bs!836332 () Bool)

(assert (= bs!836332 (and b!4500777 b!4500719)))

(assert (=> bs!836332 (= lambda!168920 lambda!168914)))

(declare-fun bs!836333 () Bool)

(assert (= bs!836333 (and b!4500777 b!4500250)))

(assert (=> bs!836333 (= lambda!168920 lambda!168829)))

(declare-fun b!4500774 () Bool)

(declare-fun e!2803570 () Unit!91936)

(declare-fun Unit!92083 () Unit!91936)

(assert (=> b!4500774 (= e!2803570 Unit!92083)))

(declare-fun d!1381329 () Bool)

(declare-fun e!2803569 () Bool)

(assert (=> d!1381329 e!2803569))

(declare-fun res!1871088 () Bool)

(assert (=> d!1381329 (=> (not res!1871088) (not e!2803569))))

(declare-fun lt!1681667 () List!50673)

(assert (=> d!1381329 (= res!1871088 (noDuplicate!729 lt!1681667))))

(declare-fun e!2803567 () List!50673)

(assert (=> d!1381329 (= lt!1681667 e!2803567)))

(declare-fun c!767227 () Bool)

(assert (=> d!1381329 (= c!767227 ((_ is Cons!50546) (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))

(assert (=> d!1381329 (invariantList!985 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))

(assert (=> d!1381329 (= (getKeysList!433 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) lt!1681667)))

(declare-fun b!4500775 () Bool)

(declare-fun res!1871086 () Bool)

(assert (=> b!4500775 (=> (not res!1871086) (not e!2803569))))

(assert (=> b!4500775 (= res!1871086 (= (length!314 lt!1681667) (length!315 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))))

(assert (=> b!4500776 (= e!2803567 (Cons!50549 (_1!28763 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (getKeysList!433 (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))))

(declare-fun c!767228 () Bool)

(assert (=> b!4500776 (= c!767228 (containsKey!1684 (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) (_1!28763 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))))

(declare-fun lt!1681663 () Unit!91936)

(assert (=> b!4500776 (= lt!1681663 e!2803570)))

(declare-fun c!767229 () Bool)

(assert (=> b!4500776 (= c!767229 (contains!13223 (getKeysList!433 (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) (_1!28763 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))))

(declare-fun lt!1681666 () Unit!91936)

(declare-fun e!2803568 () Unit!91936)

(assert (=> b!4500776 (= lt!1681666 e!2803568)))

(declare-fun lt!1681665 () List!50673)

(assert (=> b!4500776 (= lt!1681665 (getKeysList!433 (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))))

(declare-fun lt!1681669 () Unit!91936)

(assert (=> b!4500776 (= lt!1681669 (lemmaForallContainsAddHeadPreserves!151 (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))) lt!1681665 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))))))

(assert (=> b!4500776 (forall!10182 lt!1681665 lambda!168918)))

(declare-fun lt!1681668 () Unit!91936)

(assert (=> b!4500776 (= lt!1681668 lt!1681669)))

(assert (=> b!4500777 (= e!2803569 (= (content!8263 lt!1681667) (content!8263 (map!11103 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) lambda!168920))))))

(declare-fun b!4500778 () Bool)

(assert (=> b!4500778 false))

(declare-fun Unit!92084 () Unit!91936)

(assert (=> b!4500778 (= e!2803570 Unit!92084)))

(declare-fun b!4500779 () Bool)

(assert (=> b!4500779 (= e!2803567 Nil!50549)))

(assert (=> b!4500780 false))

(declare-fun lt!1681664 () Unit!91936)

(assert (=> b!4500780 (= lt!1681664 (forallContained!2437 (getKeysList!433 (t!357628 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))))) lambda!168917 (_1!28763 (h!56367 (toList!4260 (extractMap!1182 (t!357629 (toList!4259 lm!1477))))))))))

(declare-fun Unit!92085 () Unit!91936)

(assert (=> b!4500780 (= e!2803568 Unit!92085)))

(declare-fun res!1871087 () Bool)

(assert (=> b!4500781 (=> (not res!1871087) (not e!2803569))))

(assert (=> b!4500781 (= res!1871087 (forall!10182 lt!1681667 lambda!168919))))

(declare-fun b!4500782 () Bool)

(declare-fun Unit!92086 () Unit!91936)

(assert (=> b!4500782 (= e!2803568 Unit!92086)))

(assert (= (and d!1381329 c!767227) b!4500776))

(assert (= (and d!1381329 (not c!767227)) b!4500779))

(assert (= (and b!4500776 c!767228) b!4500778))

(assert (= (and b!4500776 (not c!767228)) b!4500774))

(assert (= (and b!4500776 c!767229) b!4500780))

(assert (= (and b!4500776 (not c!767229)) b!4500782))

(assert (= (and d!1381329 res!1871088) b!4500775))

(assert (= (and b!4500775 res!1871086) b!4500781))

(assert (= (and b!4500781 res!1871087) b!4500777))

(declare-fun m!5231661 () Bool)

(assert (=> b!4500776 m!5231661))

(declare-fun m!5231663 () Bool)

(assert (=> b!4500776 m!5231663))

(assert (=> b!4500776 m!5231663))

(declare-fun m!5231665 () Bool)

(assert (=> b!4500776 m!5231665))

(declare-fun m!5231667 () Bool)

(assert (=> b!4500776 m!5231667))

(declare-fun m!5231669 () Bool)

(assert (=> b!4500776 m!5231669))

(assert (=> b!4500780 m!5231663))

(assert (=> b!4500780 m!5231663))

(declare-fun m!5231671 () Bool)

(assert (=> b!4500780 m!5231671))

(declare-fun m!5231673 () Bool)

(assert (=> b!4500777 m!5231673))

(declare-fun m!5231675 () Bool)

(assert (=> b!4500777 m!5231675))

(assert (=> b!4500777 m!5231675))

(declare-fun m!5231677 () Bool)

(assert (=> b!4500777 m!5231677))

(declare-fun m!5231679 () Bool)

(assert (=> d!1381329 m!5231679))

(assert (=> d!1381329 m!5230853))

(declare-fun m!5231681 () Bool)

(assert (=> b!4500775 m!5231681))

(assert (=> b!4500775 m!5230827))

(declare-fun m!5231683 () Bool)

(assert (=> b!4500781 m!5231683))

(assert (=> b!4499907 d!1381329))

(declare-fun d!1381331 () Bool)

(assert (=> d!1381331 (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1680967) key!3287))))

(declare-fun lt!1681670 () Unit!91936)

(assert (=> d!1381331 (= lt!1681670 (choose!29145 (toList!4260 lt!1680967) key!3287))))

(assert (=> d!1381331 (invariantList!985 (toList!4260 lt!1680967))))

(assert (=> d!1381331 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 lt!1680967) key!3287) lt!1681670)))

(declare-fun bs!836334 () Bool)

(assert (= bs!836334 d!1381331))

(assert (=> bs!836334 m!5230111))

(assert (=> bs!836334 m!5230111))

(assert (=> bs!836334 m!5230113))

(declare-fun m!5231685 () Bool)

(assert (=> bs!836334 m!5231685))

(assert (=> bs!836334 m!5231205))

(assert (=> b!4499856 d!1381331))

(assert (=> b!4499856 d!1381165))

(assert (=> b!4499856 d!1381167))

(declare-fun d!1381333 () Bool)

(assert (=> d!1381333 (contains!13223 (getKeysList!433 (toList!4260 lt!1680967)) key!3287)))

(declare-fun lt!1681671 () Unit!91936)

(assert (=> d!1381333 (= lt!1681671 (choose!29146 (toList!4260 lt!1680967) key!3287))))

(assert (=> d!1381333 (invariantList!985 (toList!4260 lt!1680967))))

(assert (=> d!1381333 (= (lemmaInListThenGetKeysListContains!429 (toList!4260 lt!1680967) key!3287) lt!1681671)))

(declare-fun bs!836335 () Bool)

(assert (= bs!836335 d!1381333))

(assert (=> bs!836335 m!5230107))

(assert (=> bs!836335 m!5230107))

(declare-fun m!5231687 () Bool)

(assert (=> bs!836335 m!5231687))

(declare-fun m!5231689 () Bool)

(assert (=> bs!836335 m!5231689))

(assert (=> bs!836335 m!5231205))

(assert (=> b!4499856 d!1381333))

(declare-fun d!1381335 () Bool)

(assert (=> d!1381335 (= (isEmpty!28605 (toList!4259 lm!1477)) ((_ is Nil!50547) (toList!4259 lm!1477)))))

(assert (=> d!1380939 d!1381335))

(assert (=> b!4500069 d!1381035))

(declare-fun b!4500783 () Bool)

(declare-fun e!2803574 () Unit!91936)

(declare-fun e!2803572 () Unit!91936)

(assert (=> b!4500783 (= e!2803574 e!2803572)))

(declare-fun c!767231 () Bool)

(declare-fun call!313291 () Bool)

(assert (=> b!4500783 (= c!767231 call!313291)))

(declare-fun b!4500784 () Bool)

(declare-fun lt!1681674 () Unit!91936)

(assert (=> b!4500784 (= e!2803574 lt!1681674)))

(declare-fun lt!1681672 () Unit!91936)

(assert (=> b!4500784 (= lt!1681672 (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 lt!1681206) key!3287))))

(assert (=> b!4500784 (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1681206) key!3287))))

(declare-fun lt!1681676 () Unit!91936)

(assert (=> b!4500784 (= lt!1681676 lt!1681672)))

(assert (=> b!4500784 (= lt!1681674 (lemmaInListThenGetKeysListContains!429 (toList!4260 lt!1681206) key!3287))))

(assert (=> b!4500784 call!313291))

(declare-fun b!4500785 () Bool)

(declare-fun e!2803571 () Bool)

(assert (=> b!4500785 (= e!2803571 (not (contains!13223 (keys!17526 lt!1681206) key!3287)))))

(declare-fun b!4500786 () Bool)

(declare-fun Unit!92087 () Unit!91936)

(assert (=> b!4500786 (= e!2803572 Unit!92087)))

(declare-fun b!4500787 () Bool)

(assert (=> b!4500787 false))

(declare-fun lt!1681675 () Unit!91936)

(declare-fun lt!1681677 () Unit!91936)

(assert (=> b!4500787 (= lt!1681675 lt!1681677)))

(assert (=> b!4500787 (containsKey!1684 (toList!4260 lt!1681206) key!3287)))

(assert (=> b!4500787 (= lt!1681677 (lemmaInGetKeysListThenContainsKey!432 (toList!4260 lt!1681206) key!3287))))

(declare-fun Unit!92088 () Unit!91936)

(assert (=> b!4500787 (= e!2803572 Unit!92088)))

(declare-fun b!4500788 () Bool)

(declare-fun e!2803573 () Bool)

(declare-fun e!2803575 () Bool)

(assert (=> b!4500788 (= e!2803573 e!2803575)))

(declare-fun res!1871090 () Bool)

(assert (=> b!4500788 (=> (not res!1871090) (not e!2803575))))

(assert (=> b!4500788 (= res!1871090 (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1681206) key!3287)))))

(declare-fun d!1381337 () Bool)

(assert (=> d!1381337 e!2803573))

(declare-fun res!1871091 () Bool)

(assert (=> d!1381337 (=> res!1871091 e!2803573)))

(assert (=> d!1381337 (= res!1871091 e!2803571)))

(declare-fun res!1871089 () Bool)

(assert (=> d!1381337 (=> (not res!1871089) (not e!2803571))))

(declare-fun lt!1681678 () Bool)

(assert (=> d!1381337 (= res!1871089 (not lt!1681678))))

(declare-fun lt!1681679 () Bool)

(assert (=> d!1381337 (= lt!1681678 lt!1681679)))

(declare-fun lt!1681673 () Unit!91936)

(assert (=> d!1381337 (= lt!1681673 e!2803574)))

(declare-fun c!767232 () Bool)

(assert (=> d!1381337 (= c!767232 lt!1681679)))

(assert (=> d!1381337 (= lt!1681679 (containsKey!1684 (toList!4260 lt!1681206) key!3287))))

(assert (=> d!1381337 (= (contains!13219 lt!1681206 key!3287) lt!1681678)))

(declare-fun b!4500789 () Bool)

(assert (=> b!4500789 (= e!2803575 (contains!13223 (keys!17526 lt!1681206) key!3287))))

(declare-fun b!4500790 () Bool)

(declare-fun e!2803576 () List!50673)

(assert (=> b!4500790 (= e!2803576 (getKeysList!433 (toList!4260 lt!1681206)))))

(declare-fun bm!313286 () Bool)

(assert (=> bm!313286 (= call!313291 (contains!13223 e!2803576 key!3287))))

(declare-fun c!767230 () Bool)

(assert (=> bm!313286 (= c!767230 c!767232)))

(declare-fun b!4500791 () Bool)

(assert (=> b!4500791 (= e!2803576 (keys!17526 lt!1681206))))

(assert (= (and d!1381337 c!767232) b!4500784))

(assert (= (and d!1381337 (not c!767232)) b!4500783))

(assert (= (and b!4500783 c!767231) b!4500787))

(assert (= (and b!4500783 (not c!767231)) b!4500786))

(assert (= (or b!4500784 b!4500783) bm!313286))

(assert (= (and bm!313286 c!767230) b!4500790))

(assert (= (and bm!313286 (not c!767230)) b!4500791))

(assert (= (and d!1381337 res!1871089) b!4500785))

(assert (= (and d!1381337 (not res!1871091)) b!4500788))

(assert (= (and b!4500788 res!1871090) b!4500789))

(assert (=> b!4500790 m!5231647))

(declare-fun m!5231691 () Bool)

(assert (=> b!4500784 m!5231691))

(declare-fun m!5231693 () Bool)

(assert (=> b!4500784 m!5231693))

(assert (=> b!4500784 m!5231693))

(declare-fun m!5231695 () Bool)

(assert (=> b!4500784 m!5231695))

(declare-fun m!5231697 () Bool)

(assert (=> b!4500784 m!5231697))

(assert (=> b!4500785 m!5230565))

(assert (=> b!4500785 m!5230565))

(declare-fun m!5231699 () Bool)

(assert (=> b!4500785 m!5231699))

(assert (=> b!4500788 m!5231693))

(assert (=> b!4500788 m!5231693))

(assert (=> b!4500788 m!5231695))

(declare-fun m!5231701 () Bool)

(assert (=> bm!313286 m!5231701))

(declare-fun m!5231703 () Bool)

(assert (=> d!1381337 m!5231703))

(assert (=> b!4500787 m!5231703))

(declare-fun m!5231705 () Bool)

(assert (=> b!4500787 m!5231705))

(assert (=> b!4500791 m!5230565))

(assert (=> b!4500789 m!5230565))

(assert (=> b!4500789 m!5230565))

(assert (=> b!4500789 m!5231699))

(assert (=> d!1380967 d!1381337))

(declare-fun b!4500942 () Bool)

(declare-fun call!313321 () (InoxSet tuple2!50938))

(declare-fun call!313317 () (InoxSet tuple2!50938))

(assert (=> b!4500942 (= call!313321 call!313317)))

(declare-fun e!2803668 () Unit!91936)

(declare-fun Unit!92090 () Unit!91936)

(assert (=> b!4500942 (= e!2803668 Unit!92090)))

(declare-fun bm!313312 () Bool)

(assert (=> bm!313312 (= call!313317 (content!8262 (toList!4260 lt!1680976)))))

(declare-fun b!4500943 () Bool)

(declare-fun res!1871143 () Bool)

(declare-fun e!2803673 () Bool)

(assert (=> b!4500943 (=> (not res!1871143) (not e!2803673))))

(declare-fun lt!1681801 () List!50670)

(assert (=> b!4500943 (= res!1871143 (= (content!8263 (getKeysList!433 lt!1681801)) ((_ map and) (content!8263 (getKeysList!433 (toList!4260 lt!1680976))) ((_ map not) (store ((as const (Array K!11955 Bool)) false) key!3287 true)))))))

(declare-fun b!4500944 () Bool)

(declare-fun e!2803672 () List!50670)

(assert (=> b!4500944 (= e!2803672 (t!357628 (toList!4260 lt!1680976)))))

(declare-fun c!767290 () Bool)

(declare-fun call!313319 () Bool)

(assert (=> b!4500944 (= c!767290 call!313319)))

(declare-fun lt!1681799 () Unit!91936)

(assert (=> b!4500944 (= lt!1681799 e!2803668)))

(declare-fun b!4500945 () Bool)

(declare-fun e!2803667 () List!50670)

(assert (=> b!4500945 (= e!2803667 Nil!50546)))

(declare-fun bm!313313 () Bool)

(declare-fun call!313320 () (InoxSet tuple2!50938))

(assert (=> bm!313313 (= call!313320 (content!8262 (toList!4260 lt!1680976)))))

(declare-fun call!313318 () (InoxSet tuple2!50938))

(declare-fun b!4500947 () Bool)

(declare-fun e!2803669 () Bool)

(declare-fun get!16523 (Option!11048) V!12201)

(assert (=> b!4500947 (= e!2803669 (= call!313318 ((_ map and) call!313320 ((_ map not) (store ((as const (Array tuple2!50938 Bool)) false) (tuple2!50939 key!3287 (get!16523 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287))) true)))))))

(assert (=> b!4500947 (containsKey!1684 (toList!4260 lt!1680976) key!3287)))

(declare-fun lt!1681800 () Unit!91936)

(assert (=> b!4500947 (= lt!1681800 (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 lt!1680976) key!3287))))

(assert (=> b!4500947 (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287))))

(declare-fun lt!1681807 () Unit!91936)

(assert (=> b!4500947 (= lt!1681807 lt!1681800)))

(declare-fun b!4500948 () Bool)

(assert (=> b!4500948 (= e!2803672 e!2803667)))

(declare-fun c!767288 () Bool)

(assert (=> b!4500948 (= c!767288 (and ((_ is Cons!50546) (toList!4260 lt!1680976)) (not (= (_1!28763 (h!56367 (toList!4260 lt!1680976))) key!3287))))))

(declare-fun b!4500949 () Bool)

(declare-fun e!2803671 () Unit!91936)

(declare-fun Unit!92091 () Unit!91936)

(assert (=> b!4500949 (= e!2803671 Unit!92091)))

(declare-fun b!4500950 () Bool)

(declare-fun lt!1681796 () Unit!91936)

(declare-fun e!2803674 () Unit!91936)

(assert (=> b!4500950 (= lt!1681796 e!2803674)))

(declare-fun c!767285 () Bool)

(assert (=> b!4500950 (= c!767285 call!313319)))

(declare-fun lt!1681798 () Unit!91936)

(assert (=> b!4500950 (= lt!1681798 e!2803671)))

(declare-fun c!767289 () Bool)

(assert (=> b!4500950 (= c!767289 (contains!13223 (getKeysList!433 (t!357628 (toList!4260 lt!1680976))) (_1!28763 (h!56367 (toList!4260 lt!1680976)))))))

(declare-fun lt!1681805 () List!50670)

(declare-fun $colon$colon!900 (List!50670 tuple2!50938) List!50670)

(assert (=> b!4500950 (= lt!1681805 ($colon$colon!900 (removePresrvNoDuplicatedKeys!109 (t!357628 (toList!4260 lt!1680976)) key!3287) (h!56367 (toList!4260 lt!1680976))))))

(assert (=> b!4500950 (= e!2803667 lt!1681805)))

(declare-fun bm!313314 () Bool)

(declare-fun c!767286 () Bool)

(declare-fun e!2803670 () List!50670)

(assert (=> bm!313314 (= call!313319 (containsKey!1684 e!2803670 (ite c!767286 key!3287 (_1!28763 (h!56367 (toList!4260 lt!1680976))))))))

(declare-fun c!767284 () Bool)

(assert (=> bm!313314 (= c!767284 c!767286)))

(declare-fun b!4500951 () Bool)

(assert (=> b!4500951 (= e!2803669 (= call!313318 call!313320))))

(declare-fun bm!313315 () Bool)

(declare-fun call!313322 () Bool)

(declare-fun lt!1681806 () K!11955)

(assert (=> bm!313315 (= call!313322 (containsKey!1684 (t!357628 (toList!4260 lt!1680976)) (ite c!767286 lt!1681806 (_1!28763 (h!56367 (toList!4260 lt!1680976))))))))

(declare-fun b!4500952 () Bool)

(declare-fun Unit!92092 () Unit!91936)

(assert (=> b!4500952 (= e!2803674 Unit!92092)))

(declare-fun lt!1681802 () List!50670)

(assert (=> b!4500952 (= lt!1681802 (removePresrvNoDuplicatedKeys!109 (t!357628 (toList!4260 lt!1680976)) key!3287))))

(declare-fun lt!1681809 () Unit!91936)

(assert (=> b!4500952 (= lt!1681809 (lemmaInListThenGetKeysListContains!429 lt!1681802 (_1!28763 (h!56367 (toList!4260 lt!1680976)))))))

(assert (=> b!4500952 (contains!13223 (getKeysList!433 lt!1681802) (_1!28763 (h!56367 (toList!4260 lt!1680976))))))

(declare-fun lt!1681797 () Unit!91936)

(assert (=> b!4500952 (= lt!1681797 lt!1681809)))

(assert (=> b!4500952 false))

(declare-fun b!4500953 () Bool)

(declare-fun e!2803666 () Unit!91936)

(declare-fun Unit!92093 () Unit!91936)

(assert (=> b!4500953 (= e!2803666 Unit!92093)))

(declare-fun lt!1681810 () V!12201)

(assert (=> b!4500953 (= lt!1681810 (get!16523 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287)))))

(assert (=> b!4500953 (= lt!1681806 key!3287)))

(declare-fun lt!1681794 () K!11955)

(assert (=> b!4500953 (= lt!1681794 key!3287)))

(declare-fun lt!1681795 () Unit!91936)

(declare-fun lemmaContainsTupleThenContainsKey!45 (List!50670 K!11955 V!12201) Unit!91936)

(assert (=> b!4500953 (= lt!1681795 (lemmaContainsTupleThenContainsKey!45 (t!357628 (toList!4260 lt!1680976)) lt!1681806 (get!16523 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287))))))

(assert (=> b!4500953 call!313322))

(declare-fun lt!1681803 () Unit!91936)

(assert (=> b!4500953 (= lt!1681803 lt!1681795)))

(assert (=> b!4500953 false))

(declare-fun b!4500954 () Bool)

(assert (=> b!4500954 (= e!2803673 e!2803669)))

(declare-fun c!767287 () Bool)

(assert (=> b!4500954 (= c!767287 (containsKey!1684 (toList!4260 lt!1680976) key!3287))))

(declare-fun bm!313316 () Bool)

(assert (=> bm!313316 (= call!313318 (content!8262 lt!1681801))))

(declare-fun b!4500955 () Bool)

(declare-fun Unit!92094 () Unit!91936)

(assert (=> b!4500955 (= e!2803671 Unit!92094)))

(declare-fun lt!1681811 () Unit!91936)

(assert (=> b!4500955 (= lt!1681811 (lemmaInGetKeysListThenContainsKey!432 (t!357628 (toList!4260 lt!1680976)) (_1!28763 (h!56367 (toList!4260 lt!1680976)))))))

(assert (=> b!4500955 call!313322))

(declare-fun lt!1681804 () Unit!91936)

(assert (=> b!4500955 (= lt!1681804 lt!1681811)))

(assert (=> b!4500955 false))

(declare-fun d!1381339 () Bool)

(assert (=> d!1381339 e!2803673))

(declare-fun res!1871142 () Bool)

(assert (=> d!1381339 (=> (not res!1871142) (not e!2803673))))

(assert (=> d!1381339 (= res!1871142 (invariantList!985 lt!1681801))))

(assert (=> d!1381339 (= lt!1681801 e!2803672)))

(assert (=> d!1381339 (= c!767286 (and ((_ is Cons!50546) (toList!4260 lt!1680976)) (= (_1!28763 (h!56367 (toList!4260 lt!1680976))) key!3287)))))

(assert (=> d!1381339 (invariantList!985 (toList!4260 lt!1680976))))

(assert (=> d!1381339 (= (removePresrvNoDuplicatedKeys!109 (toList!4260 lt!1680976) key!3287) lt!1681801)))

(declare-fun b!4500946 () Bool)

(declare-fun Unit!92095 () Unit!91936)

(assert (=> b!4500946 (= e!2803674 Unit!92095)))

(declare-fun b!4500956 () Bool)

(assert (=> b!4500956 (= e!2803670 (toList!4260 lt!1680976))))

(declare-fun b!4500957 () Bool)

(assert (=> b!4500957 (= e!2803670 (removePresrvNoDuplicatedKeys!109 (t!357628 (toList!4260 lt!1680976)) key!3287))))

(declare-fun b!4500958 () Bool)

(declare-fun Unit!92096 () Unit!91936)

(assert (=> b!4500958 (= e!2803666 Unit!92096)))

(declare-fun bm!313317 () Bool)

(assert (=> bm!313317 (= call!313321 (content!8262 (t!357628 (toList!4260 lt!1680976))))))

(declare-fun b!4500959 () Bool)

(declare-fun res!1871144 () Bool)

(assert (=> b!4500959 (=> (not res!1871144) (not e!2803673))))

(assert (=> b!4500959 (= res!1871144 (not (containsKey!1684 lt!1681801 key!3287)))))

(declare-fun b!4500960 () Bool)

(assert (=> b!4500960 (= call!313321 ((_ map and) call!313317 ((_ map not) (store ((as const (Array tuple2!50938 Bool)) false) (tuple2!50939 key!3287 (get!16523 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287))) true))))))

(declare-fun lt!1681808 () Unit!91936)

(assert (=> b!4500960 (= lt!1681808 e!2803666)))

(declare-fun c!767283 () Bool)

(declare-fun contains!13225 (List!50670 tuple2!50938) Bool)

(assert (=> b!4500960 (= c!767283 (contains!13225 (t!357628 (toList!4260 lt!1680976)) (tuple2!50939 key!3287 (get!16523 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287)))))))

(declare-fun Unit!92097 () Unit!91936)

(assert (=> b!4500960 (= e!2803668 Unit!92097)))

(assert (= (and d!1381339 c!767286) b!4500944))

(assert (= (and d!1381339 (not c!767286)) b!4500948))

(assert (= (and b!4500944 c!767290) b!4500960))

(assert (= (and b!4500944 (not c!767290)) b!4500942))

(assert (= (and b!4500960 c!767283) b!4500953))

(assert (= (and b!4500960 (not c!767283)) b!4500958))

(assert (= (or b!4500960 b!4500942) bm!313317))

(assert (= (or b!4500960 b!4500942) bm!313312))

(assert (= (and b!4500948 c!767288) b!4500950))

(assert (= (and b!4500948 (not c!767288)) b!4500945))

(assert (= (and b!4500950 c!767289) b!4500955))

(assert (= (and b!4500950 (not c!767289)) b!4500949))

(assert (= (and b!4500950 c!767285) b!4500952))

(assert (= (and b!4500950 (not c!767285)) b!4500946))

(assert (= (or b!4500953 b!4500955) bm!313315))

(assert (= (or b!4500944 b!4500950) bm!313314))

(assert (= (and bm!313314 c!767284) b!4500956))

(assert (= (and bm!313314 (not c!767284)) b!4500957))

(assert (= (and d!1381339 res!1871142) b!4500959))

(assert (= (and b!4500959 res!1871144) b!4500943))

(assert (= (and b!4500943 res!1871143) b!4500954))

(assert (= (and b!4500954 c!767287) b!4500947))

(assert (= (and b!4500954 (not c!767287)) b!4500951))

(assert (= (or b!4500947 b!4500951) bm!313316))

(assert (= (or b!4500947 b!4500951) bm!313313))

(assert (=> b!4500953 m!5230223))

(assert (=> b!4500953 m!5230223))

(declare-fun m!5231961 () Bool)

(assert (=> b!4500953 m!5231961))

(assert (=> b!4500953 m!5231961))

(declare-fun m!5231963 () Bool)

(assert (=> b!4500953 m!5231963))

(declare-fun m!5231965 () Bool)

(assert (=> b!4500955 m!5231965))

(declare-fun m!5231967 () Bool)

(assert (=> bm!313312 m!5231967))

(declare-fun m!5231969 () Bool)

(assert (=> bm!313314 m!5231969))

(declare-fun m!5231971 () Bool)

(assert (=> b!4500959 m!5231971))

(assert (=> b!4500950 m!5231615))

(assert (=> b!4500950 m!5231615))

(assert (=> b!4500950 m!5231617))

(declare-fun m!5231973 () Bool)

(assert (=> b!4500950 m!5231973))

(assert (=> b!4500950 m!5231973))

(declare-fun m!5231975 () Bool)

(assert (=> b!4500950 m!5231975))

(assert (=> b!4500954 m!5230235))

(declare-fun m!5231977 () Bool)

(assert (=> bm!313317 m!5231977))

(declare-fun m!5231979 () Bool)

(assert (=> bm!313316 m!5231979))

(assert (=> b!4500957 m!5231973))

(assert (=> bm!313313 m!5231967))

(assert (=> b!4500960 m!5230223))

(assert (=> b!4500960 m!5230223))

(assert (=> b!4500960 m!5231961))

(declare-fun m!5231987 () Bool)

(assert (=> b!4500960 m!5231987))

(declare-fun m!5231991 () Bool)

(assert (=> b!4500960 m!5231991))

(declare-fun m!5231993 () Bool)

(assert (=> b!4500943 m!5231993))

(assert (=> b!4500943 m!5230569))

(assert (=> b!4500943 m!5230219))

(assert (=> b!4500943 m!5231993))

(declare-fun m!5231995 () Bool)

(assert (=> b!4500943 m!5231995))

(assert (=> b!4500943 m!5230219))

(declare-fun m!5231997 () Bool)

(assert (=> b!4500943 m!5231997))

(declare-fun m!5231999 () Bool)

(assert (=> bm!313315 m!5231999))

(assert (=> b!4500947 m!5230221))

(assert (=> b!4500947 m!5230235))

(assert (=> b!4500947 m!5230223))

(assert (=> b!4500947 m!5231961))

(assert (=> b!4500947 m!5231987))

(assert (=> b!4500947 m!5230223))

(assert (=> b!4500947 m!5230225))

(assert (=> b!4500947 m!5230223))

(declare-fun m!5232007 () Bool)

(assert (=> d!1381339 m!5232007))

(assert (=> d!1381339 m!5231561))

(assert (=> b!4500952 m!5231973))

(declare-fun m!5232009 () Bool)

(assert (=> b!4500952 m!5232009))

(declare-fun m!5232011 () Bool)

(assert (=> b!4500952 m!5232011))

(assert (=> b!4500952 m!5232011))

(declare-fun m!5232013 () Bool)

(assert (=> b!4500952 m!5232013))

(assert (=> d!1380967 d!1381339))

(assert (=> b!4499908 d!1381061))

(declare-fun d!1381429 () Bool)

(declare-fun e!2803681 () Bool)

(assert (=> d!1381429 e!2803681))

(declare-fun res!1871149 () Bool)

(assert (=> d!1381429 (=> res!1871149 e!2803681)))

(declare-fun lt!1681815 () Bool)

(assert (=> d!1381429 (= res!1871149 (not lt!1681815))))

(declare-fun lt!1681817 () Bool)

(assert (=> d!1381429 (= lt!1681815 lt!1681817)))

(declare-fun lt!1681816 () Unit!91936)

(declare-fun e!2803680 () Unit!91936)

(assert (=> d!1381429 (= lt!1681816 e!2803680)))

(declare-fun c!767292 () Bool)

(assert (=> d!1381429 (= c!767292 lt!1681817)))

(assert (=> d!1381429 (= lt!1681817 (containsKey!1686 (toList!4259 lm!1477) (hash!2691 hashF!1107 key!3287)))))

(assert (=> d!1381429 (= (contains!13221 lm!1477 (hash!2691 hashF!1107 key!3287)) lt!1681815)))

(declare-fun b!4500967 () Bool)

(declare-fun lt!1681818 () Unit!91936)

(assert (=> b!4500967 (= e!2803680 lt!1681818)))

(assert (=> b!4500967 (= lt!1681818 (lemmaContainsKeyImpliesGetValueByKeyDefined!933 (toList!4259 lm!1477) (hash!2691 hashF!1107 key!3287)))))

(assert (=> b!4500967 (isDefined!8336 (getValueByKey!1029 (toList!4259 lm!1477) (hash!2691 hashF!1107 key!3287)))))

(declare-fun b!4500968 () Bool)

(declare-fun Unit!92098 () Unit!91936)

(assert (=> b!4500968 (= e!2803680 Unit!92098)))

(declare-fun b!4500969 () Bool)

(assert (=> b!4500969 (= e!2803681 (isDefined!8336 (getValueByKey!1029 (toList!4259 lm!1477) (hash!2691 hashF!1107 key!3287))))))

(assert (= (and d!1381429 c!767292) b!4500967))

(assert (= (and d!1381429 (not c!767292)) b!4500968))

(assert (= (and d!1381429 (not res!1871149)) b!4500969))

(assert (=> d!1381429 m!5230039))

(declare-fun m!5232023 () Bool)

(assert (=> d!1381429 m!5232023))

(assert (=> b!4500967 m!5230039))

(declare-fun m!5232025 () Bool)

(assert (=> b!4500967 m!5232025))

(assert (=> b!4500967 m!5230039))

(declare-fun m!5232027 () Bool)

(assert (=> b!4500967 m!5232027))

(assert (=> b!4500967 m!5232027))

(declare-fun m!5232029 () Bool)

(assert (=> b!4500967 m!5232029))

(assert (=> b!4500969 m!5230039))

(assert (=> b!4500969 m!5232027))

(assert (=> b!4500969 m!5232027))

(assert (=> b!4500969 m!5232029))

(assert (=> d!1380943 d!1381429))

(assert (=> d!1380943 d!1380991))

(declare-fun d!1381435 () Bool)

(assert (=> d!1381435 (contains!13221 lm!1477 (hash!2691 hashF!1107 key!3287))))

(assert (=> d!1381435 true))

(declare-fun _$27!1182 () Unit!91936)

(assert (=> d!1381435 (= (choose!29128 lm!1477 key!3287 hashF!1107) _$27!1182)))

(declare-fun bs!836429 () Bool)

(assert (= bs!836429 d!1381435))

(assert (=> bs!836429 m!5230039))

(assert (=> bs!836429 m!5230039))

(assert (=> bs!836429 m!5230493))

(assert (=> d!1380943 d!1381435))

(declare-fun d!1381441 () Bool)

(declare-fun res!1871155 () Bool)

(declare-fun e!2803689 () Bool)

(assert (=> d!1381441 (=> res!1871155 e!2803689)))

(assert (=> d!1381441 (= res!1871155 ((_ is Nil!50547) (toList!4259 lm!1477)))))

(assert (=> d!1381441 (= (forall!10179 (toList!4259 lm!1477) lambda!168763) e!2803689)))

(declare-fun b!4500983 () Bool)

(declare-fun e!2803690 () Bool)

(assert (=> b!4500983 (= e!2803689 e!2803690)))

(declare-fun res!1871156 () Bool)

(assert (=> b!4500983 (=> (not res!1871156) (not e!2803690))))

(assert (=> b!4500983 (= res!1871156 (dynLambda!21109 lambda!168763 (h!56368 (toList!4259 lm!1477))))))

(declare-fun b!4500984 () Bool)

(assert (=> b!4500984 (= e!2803690 (forall!10179 (t!357629 (toList!4259 lm!1477)) lambda!168763))))

(assert (= (and d!1381441 (not res!1871155)) b!4500983))

(assert (= (and b!4500983 res!1871156) b!4500984))

(declare-fun b_lambda!152365 () Bool)

(assert (=> (not b_lambda!152365) (not b!4500983)))

(declare-fun m!5232039 () Bool)

(assert (=> b!4500983 m!5232039))

(declare-fun m!5232041 () Bool)

(assert (=> b!4500984 m!5232041))

(assert (=> d!1380943 d!1381441))

(declare-fun b!4500986 () Bool)

(declare-fun e!2803691 () List!50670)

(declare-fun e!2803692 () List!50670)

(assert (=> b!4500986 (= e!2803691 e!2803692)))

(declare-fun c!767298 () Bool)

(assert (=> b!4500986 (= c!767298 ((_ is Cons!50546) (t!357628 lt!1680975)))))

(declare-fun d!1381443 () Bool)

(declare-fun lt!1681820 () List!50670)

(assert (=> d!1381443 (not (containsKey!1682 lt!1681820 key!3287))))

(assert (=> d!1381443 (= lt!1681820 e!2803691)))

(declare-fun c!767297 () Bool)

(assert (=> d!1381443 (= c!767297 (and ((_ is Cons!50546) (t!357628 lt!1680975)) (= (_1!28763 (h!56367 (t!357628 lt!1680975))) key!3287)))))

(assert (=> d!1381443 (noDuplicateKeys!1126 (t!357628 lt!1680975))))

(assert (=> d!1381443 (= (removePairForKey!753 (t!357628 lt!1680975) key!3287) lt!1681820)))

(declare-fun b!4500985 () Bool)

(assert (=> b!4500985 (= e!2803691 (t!357628 (t!357628 lt!1680975)))))

(declare-fun b!4500987 () Bool)

(assert (=> b!4500987 (= e!2803692 (Cons!50546 (h!56367 (t!357628 lt!1680975)) (removePairForKey!753 (t!357628 (t!357628 lt!1680975)) key!3287)))))

(declare-fun b!4500988 () Bool)

(assert (=> b!4500988 (= e!2803692 Nil!50546)))

(assert (= (and d!1381443 c!767297) b!4500985))

(assert (= (and d!1381443 (not c!767297)) b!4500986))

(assert (= (and b!4500986 c!767298) b!4500987))

(assert (= (and b!4500986 (not c!767298)) b!4500988))

(declare-fun m!5232043 () Bool)

(assert (=> d!1381443 m!5232043))

(assert (=> d!1381443 m!5231367))

(declare-fun m!5232045 () Bool)

(assert (=> b!4500987 m!5232045))

(assert (=> b!4500063 d!1381443))

(declare-fun lt!1681821 () Bool)

(declare-fun d!1381445 () Bool)

(assert (=> d!1381445 (= lt!1681821 (select (content!8261 (toList!4259 lm!1477)) (tuple2!50941 hash!344 lt!1680975)))))

(declare-fun e!2803694 () Bool)

(assert (=> d!1381445 (= lt!1681821 e!2803694)))

(declare-fun res!1871158 () Bool)

(assert (=> d!1381445 (=> (not res!1871158) (not e!2803694))))

(assert (=> d!1381445 (= res!1871158 ((_ is Cons!50547) (toList!4259 lm!1477)))))

(assert (=> d!1381445 (= (contains!13220 (toList!4259 lm!1477) (tuple2!50941 hash!344 lt!1680975)) lt!1681821)))

(declare-fun b!4500989 () Bool)

(declare-fun e!2803693 () Bool)

(assert (=> b!4500989 (= e!2803694 e!2803693)))

(declare-fun res!1871157 () Bool)

(assert (=> b!4500989 (=> res!1871157 e!2803693)))

(assert (=> b!4500989 (= res!1871157 (= (h!56368 (toList!4259 lm!1477)) (tuple2!50941 hash!344 lt!1680975)))))

(declare-fun b!4500990 () Bool)

(assert (=> b!4500990 (= e!2803693 (contains!13220 (t!357629 (toList!4259 lm!1477)) (tuple2!50941 hash!344 lt!1680975)))))

(assert (= (and d!1381445 res!1871158) b!4500989))

(assert (= (and b!4500989 (not res!1871157)) b!4500990))

(assert (=> d!1381445 m!5230521))

(declare-fun m!5232047 () Bool)

(assert (=> d!1381445 m!5232047))

(declare-fun m!5232049 () Bool)

(assert (=> b!4500990 m!5232049))

(assert (=> d!1380955 d!1381445))

(declare-fun d!1381447 () Bool)

(assert (=> d!1381447 (contains!13220 (toList!4259 lm!1477) (tuple2!50941 hash!344 lt!1680975))))

(assert (=> d!1381447 true))

(declare-fun _$14!1100 () Unit!91936)

(assert (=> d!1381447 (= (choose!29131 (toList!4259 lm!1477) hash!344 lt!1680975) _$14!1100)))

(declare-fun bs!836444 () Bool)

(assert (= bs!836444 d!1381447))

(assert (=> bs!836444 m!5230525))

(assert (=> d!1380955 d!1381447))

(assert (=> d!1380955 d!1381057))

(declare-fun d!1381451 () Bool)

(assert (=> d!1381451 (= (invariantList!985 (toList!4260 lt!1681082)) (noDuplicatedKeys!244 (toList!4260 lt!1681082)))))

(declare-fun bs!836445 () Bool)

(assert (= bs!836445 d!1381451))

(declare-fun m!5232065 () Bool)

(assert (=> bs!836445 m!5232065))

(assert (=> d!1380861 d!1381451))

(declare-fun d!1381453 () Bool)

(declare-fun res!1871161 () Bool)

(declare-fun e!2803697 () Bool)

(assert (=> d!1381453 (=> res!1871161 e!2803697)))

(assert (=> d!1381453 (= res!1871161 ((_ is Nil!50547) (t!357629 (toList!4259 lm!1477))))))

(assert (=> d!1381453 (= (forall!10179 (t!357629 (toList!4259 lm!1477)) lambda!168734) e!2803697)))

(declare-fun b!4500993 () Bool)

(declare-fun e!2803698 () Bool)

(assert (=> b!4500993 (= e!2803697 e!2803698)))

(declare-fun res!1871162 () Bool)

(assert (=> b!4500993 (=> (not res!1871162) (not e!2803698))))

(assert (=> b!4500993 (= res!1871162 (dynLambda!21109 lambda!168734 (h!56368 (t!357629 (toList!4259 lm!1477)))))))

(declare-fun b!4500994 () Bool)

(assert (=> b!4500994 (= e!2803698 (forall!10179 (t!357629 (t!357629 (toList!4259 lm!1477))) lambda!168734))))

(assert (= (and d!1381453 (not res!1871161)) b!4500993))

(assert (= (and b!4500993 res!1871162) b!4500994))

(declare-fun b_lambda!152367 () Bool)

(assert (=> (not b_lambda!152367) (not b!4500993)))

(declare-fun m!5232067 () Bool)

(assert (=> b!4500993 m!5232067))

(declare-fun m!5232069 () Bool)

(assert (=> b!4500994 m!5232069))

(assert (=> d!1380861 d!1381453))

(declare-fun d!1381455 () Bool)

(declare-fun c!767299 () Bool)

(assert (=> d!1381455 (= c!767299 ((_ is Nil!50546) (toList!4260 (extractMap!1182 (toList!4259 lt!1680963)))))))

(declare-fun e!2803701 () (InoxSet tuple2!50938))

(assert (=> d!1381455 (= (content!8262 (toList!4260 (extractMap!1182 (toList!4259 lt!1680963)))) e!2803701)))

(declare-fun b!4500997 () Bool)

(assert (=> b!4500997 (= e!2803701 ((as const (Array tuple2!50938 Bool)) false))))

(declare-fun b!4500998 () Bool)

(assert (=> b!4500998 (= e!2803701 ((_ map or) (store ((as const (Array tuple2!50938 Bool)) false) (h!56367 (toList!4260 (extractMap!1182 (toList!4259 lt!1680963)))) true) (content!8262 (t!357628 (toList!4260 (extractMap!1182 (toList!4259 lt!1680963)))))))))

(assert (= (and d!1381455 c!767299) b!4500997))

(assert (= (and d!1381455 (not c!767299)) b!4500998))

(declare-fun m!5232071 () Bool)

(assert (=> b!4500998 m!5232071))

(declare-fun m!5232073 () Bool)

(assert (=> b!4500998 m!5232073))

(assert (=> d!1380963 d!1381455))

(declare-fun d!1381457 () Bool)

(declare-fun c!767300 () Bool)

(assert (=> d!1381457 (= c!767300 ((_ is Nil!50546) (toList!4260 (-!352 lt!1680976 key!3287))))))

(declare-fun e!2803702 () (InoxSet tuple2!50938))

(assert (=> d!1381457 (= (content!8262 (toList!4260 (-!352 lt!1680976 key!3287))) e!2803702)))

(declare-fun b!4500999 () Bool)

(assert (=> b!4500999 (= e!2803702 ((as const (Array tuple2!50938 Bool)) false))))

(declare-fun b!4501000 () Bool)

(assert (=> b!4501000 (= e!2803702 ((_ map or) (store ((as const (Array tuple2!50938 Bool)) false) (h!56367 (toList!4260 (-!352 lt!1680976 key!3287))) true) (content!8262 (t!357628 (toList!4260 (-!352 lt!1680976 key!3287))))))))

(assert (= (and d!1381457 c!767300) b!4500999))

(assert (= (and d!1381457 (not c!767300)) b!4501000))

(declare-fun m!5232075 () Bool)

(assert (=> b!4501000 m!5232075))

(declare-fun m!5232077 () Bool)

(assert (=> b!4501000 m!5232077))

(assert (=> d!1380963 d!1381457))

(assert (=> b!4499861 d!1381119))

(assert (=> b!4499861 d!1381121))

(declare-fun d!1381459 () Bool)

(assert (=> d!1381459 (= (head!9348 (toList!4259 lt!1680968)) (h!56368 (toList!4259 lt!1680968)))))

(assert (=> d!1380923 d!1381459))

(declare-fun b!4501006 () Bool)

(declare-fun e!2803706 () Option!11049)

(assert (=> b!4501006 (= e!2803706 None!11048)))

(declare-fun b!4501003 () Bool)

(declare-fun e!2803705 () Option!11049)

(assert (=> b!4501003 (= e!2803705 (Some!11048 (_2!28764 (h!56368 (toList!4259 lt!1681212)))))))

(declare-fun d!1381461 () Bool)

(declare-fun c!767301 () Bool)

(assert (=> d!1381461 (= c!767301 (and ((_ is Cons!50547) (toList!4259 lt!1681212)) (= (_1!28764 (h!56368 (toList!4259 lt!1681212))) (_1!28764 lt!1680977))))))

(assert (=> d!1381461 (= (getValueByKey!1029 (toList!4259 lt!1681212) (_1!28764 lt!1680977)) e!2803705)))

(declare-fun b!4501004 () Bool)

(assert (=> b!4501004 (= e!2803705 e!2803706)))

(declare-fun c!767302 () Bool)

(assert (=> b!4501004 (= c!767302 (and ((_ is Cons!50547) (toList!4259 lt!1681212)) (not (= (_1!28764 (h!56368 (toList!4259 lt!1681212))) (_1!28764 lt!1680977)))))))

(declare-fun b!4501005 () Bool)

(assert (=> b!4501005 (= e!2803706 (getValueByKey!1029 (t!357629 (toList!4259 lt!1681212)) (_1!28764 lt!1680977)))))

(assert (= (and d!1381461 c!767301) b!4501003))

(assert (= (and d!1381461 (not c!767301)) b!4501004))

(assert (= (and b!4501004 c!767302) b!4501005))

(assert (= (and b!4501004 (not c!767302)) b!4501006))

(declare-fun m!5232081 () Bool)

(assert (=> b!4501005 m!5232081))

(assert (=> b!4500085 d!1381461))

(declare-fun d!1381463 () Bool)

(declare-fun res!1871167 () Bool)

(declare-fun e!2803707 () Bool)

(assert (=> d!1381463 (=> res!1871167 e!2803707)))

(assert (=> d!1381463 (= res!1871167 (and ((_ is Cons!50547) (toList!4259 lm!1477)) (= (_1!28764 (h!56368 (toList!4259 lm!1477))) lt!1680971)))))

(assert (=> d!1381463 (= (containsKey!1686 (toList!4259 lm!1477) lt!1680971) e!2803707)))

(declare-fun b!4501007 () Bool)

(declare-fun e!2803708 () Bool)

(assert (=> b!4501007 (= e!2803707 e!2803708)))

(declare-fun res!1871168 () Bool)

(assert (=> b!4501007 (=> (not res!1871168) (not e!2803708))))

(assert (=> b!4501007 (= res!1871168 (and (or (not ((_ is Cons!50547) (toList!4259 lm!1477))) (bvsle (_1!28764 (h!56368 (toList!4259 lm!1477))) lt!1680971)) ((_ is Cons!50547) (toList!4259 lm!1477)) (bvslt (_1!28764 (h!56368 (toList!4259 lm!1477))) lt!1680971)))))

(declare-fun b!4501008 () Bool)

(assert (=> b!4501008 (= e!2803708 (containsKey!1686 (t!357629 (toList!4259 lm!1477)) lt!1680971))))

(assert (= (and d!1381463 (not res!1871167)) b!4501007))

(assert (= (and b!4501007 res!1871168) b!4501008))

(declare-fun m!5232085 () Bool)

(assert (=> b!4501008 m!5232085))

(assert (=> d!1380949 d!1381463))

(declare-fun d!1381467 () Bool)

(declare-fun res!1871170 () Bool)

(declare-fun e!2803711 () Bool)

(assert (=> d!1381467 (=> res!1871170 e!2803711)))

(assert (=> d!1381467 (= res!1871170 (and ((_ is Cons!50546) (t!357628 newBucket!178)) (= (_1!28763 (h!56367 (t!357628 newBucket!178))) (_1!28763 (h!56367 newBucket!178)))))))

(assert (=> d!1381467 (= (containsKey!1682 (t!357628 newBucket!178) (_1!28763 (h!56367 newBucket!178))) e!2803711)))

(declare-fun b!4501012 () Bool)

(declare-fun e!2803712 () Bool)

(assert (=> b!4501012 (= e!2803711 e!2803712)))

(declare-fun res!1871171 () Bool)

(assert (=> b!4501012 (=> (not res!1871171) (not e!2803712))))

(assert (=> b!4501012 (= res!1871171 ((_ is Cons!50546) (t!357628 newBucket!178)))))

(declare-fun b!4501013 () Bool)

(assert (=> b!4501013 (= e!2803712 (containsKey!1682 (t!357628 (t!357628 newBucket!178)) (_1!28763 (h!56367 newBucket!178))))))

(assert (= (and d!1381467 (not res!1871170)) b!4501012))

(assert (= (and b!4501012 res!1871171) b!4501013))

(declare-fun m!5232093 () Bool)

(assert (=> b!4501013 m!5232093))

(assert (=> b!4500074 d!1381467))

(declare-fun d!1381469 () Bool)

(declare-fun lt!1681826 () Bool)

(assert (=> d!1381469 (= lt!1681826 (select (content!8263 e!2802989) key!3287))))

(declare-fun e!2803714 () Bool)

(assert (=> d!1381469 (= lt!1681826 e!2803714)))

(declare-fun res!1871173 () Bool)

(assert (=> d!1381469 (=> (not res!1871173) (not e!2803714))))

(assert (=> d!1381469 (= res!1871173 ((_ is Cons!50549) e!2802989))))

(assert (=> d!1381469 (= (contains!13223 e!2802989 key!3287) lt!1681826)))

(declare-fun b!4501014 () Bool)

(declare-fun e!2803713 () Bool)

(assert (=> b!4501014 (= e!2803714 e!2803713)))

(declare-fun res!1871172 () Bool)

(assert (=> b!4501014 (=> res!1871172 e!2803713)))

(assert (=> b!4501014 (= res!1871172 (= (h!56372 e!2802989) key!3287))))

(declare-fun b!4501015 () Bool)

(assert (=> b!4501015 (= e!2803713 (contains!13223 (t!357631 e!2802989) key!3287))))

(assert (= (and d!1381469 res!1871173) b!4501014))

(assert (= (and b!4501014 (not res!1871172)) b!4501015))

(declare-fun m!5232095 () Bool)

(assert (=> d!1381469 m!5232095))

(declare-fun m!5232097 () Bool)

(assert (=> d!1381469 m!5232097))

(declare-fun m!5232099 () Bool)

(assert (=> b!4501015 m!5232099))

(assert (=> bm!313205 d!1381469))

(declare-fun d!1381473 () Bool)

(declare-fun e!2803718 () Bool)

(assert (=> d!1381473 e!2803718))

(declare-fun res!1871174 () Bool)

(assert (=> d!1381473 (=> res!1871174 e!2803718)))

(declare-fun lt!1681827 () Bool)

(assert (=> d!1381473 (= res!1871174 (not lt!1681827))))

(declare-fun lt!1681829 () Bool)

(assert (=> d!1381473 (= lt!1681827 lt!1681829)))

(declare-fun lt!1681828 () Unit!91936)

(declare-fun e!2803717 () Unit!91936)

(assert (=> d!1381473 (= lt!1681828 e!2803717)))

(declare-fun c!767306 () Bool)

(assert (=> d!1381473 (= c!767306 lt!1681829)))

(assert (=> d!1381473 (= lt!1681829 (containsKey!1686 (toList!4259 lt!1681124) (_1!28764 lt!1680964)))))

(assert (=> d!1381473 (= (contains!13221 lt!1681124 (_1!28764 lt!1680964)) lt!1681827)))

(declare-fun b!4501020 () Bool)

(declare-fun lt!1681830 () Unit!91936)

(assert (=> b!4501020 (= e!2803717 lt!1681830)))

(assert (=> b!4501020 (= lt!1681830 (lemmaContainsKeyImpliesGetValueByKeyDefined!933 (toList!4259 lt!1681124) (_1!28764 lt!1680964)))))

(assert (=> b!4501020 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1681124) (_1!28764 lt!1680964)))))

(declare-fun b!4501021 () Bool)

(declare-fun Unit!92101 () Unit!91936)

(assert (=> b!4501021 (= e!2803717 Unit!92101)))

(declare-fun b!4501022 () Bool)

(assert (=> b!4501022 (= e!2803718 (isDefined!8336 (getValueByKey!1029 (toList!4259 lt!1681124) (_1!28764 lt!1680964))))))

(assert (= (and d!1381473 c!767306) b!4501020))

(assert (= (and d!1381473 (not c!767306)) b!4501021))

(assert (= (and d!1381473 (not res!1871174)) b!4501022))

(declare-fun m!5232103 () Bool)

(assert (=> d!1381473 m!5232103))

(declare-fun m!5232105 () Bool)

(assert (=> b!4501020 m!5232105))

(assert (=> b!4501020 m!5230365))

(assert (=> b!4501020 m!5230365))

(declare-fun m!5232107 () Bool)

(assert (=> b!4501020 m!5232107))

(assert (=> b!4501022 m!5230365))

(assert (=> b!4501022 m!5230365))

(assert (=> b!4501022 m!5232107))

(assert (=> d!1380893 d!1381473))

(declare-fun b!4501028 () Bool)

(declare-fun e!2803721 () Option!11049)

(assert (=> b!4501028 (= e!2803721 None!11048)))

(declare-fun b!4501025 () Bool)

(declare-fun e!2803720 () Option!11049)

(assert (=> b!4501025 (= e!2803720 (Some!11048 (_2!28764 (h!56368 lt!1681125))))))

(declare-fun d!1381477 () Bool)

(declare-fun c!767307 () Bool)

(assert (=> d!1381477 (= c!767307 (and ((_ is Cons!50547) lt!1681125) (= (_1!28764 (h!56368 lt!1681125)) (_1!28764 lt!1680964))))))

(assert (=> d!1381477 (= (getValueByKey!1029 lt!1681125 (_1!28764 lt!1680964)) e!2803720)))

(declare-fun b!4501026 () Bool)

(assert (=> b!4501026 (= e!2803720 e!2803721)))

(declare-fun c!767308 () Bool)

(assert (=> b!4501026 (= c!767308 (and ((_ is Cons!50547) lt!1681125) (not (= (_1!28764 (h!56368 lt!1681125)) (_1!28764 lt!1680964)))))))

(declare-fun b!4501027 () Bool)

(assert (=> b!4501027 (= e!2803721 (getValueByKey!1029 (t!357629 lt!1681125) (_1!28764 lt!1680964)))))

(assert (= (and d!1381477 c!767307) b!4501025))

(assert (= (and d!1381477 (not c!767307)) b!4501026))

(assert (= (and b!4501026 c!767308) b!4501027))

(assert (= (and b!4501026 (not c!767308)) b!4501028))

(declare-fun m!5232117 () Bool)

(assert (=> b!4501027 m!5232117))

(assert (=> d!1380893 d!1381477))

(declare-fun d!1381481 () Bool)

(assert (=> d!1381481 (= (getValueByKey!1029 lt!1681125 (_1!28764 lt!1680964)) (Some!11048 (_2!28764 lt!1680964)))))

(declare-fun lt!1681833 () Unit!91936)

(assert (=> d!1381481 (= lt!1681833 (choose!29138 lt!1681125 (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))

(declare-fun e!2803727 () Bool)

(assert (=> d!1381481 e!2803727))

(declare-fun res!1871179 () Bool)

(assert (=> d!1381481 (=> (not res!1871179) (not e!2803727))))

(assert (=> d!1381481 (= res!1871179 (isStrictlySorted!399 lt!1681125))))

(assert (=> d!1381481 (= (lemmaContainsTupThenGetReturnValue!634 lt!1681125 (_1!28764 lt!1680964) (_2!28764 lt!1680964)) lt!1681833)))

(declare-fun b!4501039 () Bool)

(declare-fun res!1871180 () Bool)

(assert (=> b!4501039 (=> (not res!1871180) (not e!2803727))))

(assert (=> b!4501039 (= res!1871180 (containsKey!1686 lt!1681125 (_1!28764 lt!1680964)))))

(declare-fun b!4501040 () Bool)

(assert (=> b!4501040 (= e!2803727 (contains!13220 lt!1681125 (tuple2!50941 (_1!28764 lt!1680964) (_2!28764 lt!1680964))))))

(assert (= (and d!1381481 res!1871179) b!4501039))

(assert (= (and b!4501039 res!1871180) b!4501040))

(assert (=> d!1381481 m!5230359))

(declare-fun m!5232119 () Bool)

(assert (=> d!1381481 m!5232119))

(declare-fun m!5232121 () Bool)

(assert (=> d!1381481 m!5232121))

(declare-fun m!5232123 () Bool)

(assert (=> b!4501039 m!5232123))

(declare-fun m!5232125 () Bool)

(assert (=> b!4501040 m!5232125))

(assert (=> d!1380893 d!1381481))

(declare-fun b!4501042 () Bool)

(declare-fun res!1871182 () Bool)

(declare-fun e!2803728 () Bool)

(assert (=> b!4501042 (=> (not res!1871182) (not e!2803728))))

(declare-fun lt!1681834 () List!50671)

(assert (=> b!4501042 (= res!1871182 (containsKey!1686 lt!1681834 (_1!28764 lt!1680964)))))

(declare-fun bm!313321 () Bool)

(declare-fun call!313328 () List!50671)

(declare-fun call!313326 () List!50671)

(assert (=> bm!313321 (= call!313328 call!313326)))

(declare-fun bm!313322 () Bool)

(declare-fun call!313327 () List!50671)

(assert (=> bm!313322 (= call!313327 call!313328)))

(declare-fun c!767316 () Bool)

(declare-fun bm!313323 () Bool)

(declare-fun e!2803731 () List!50671)

(assert (=> bm!313323 (= call!313326 ($colon$colon!897 e!2803731 (ite c!767316 (h!56368 (toList!4259 lt!1680963)) (tuple2!50941 (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))))

(declare-fun c!767313 () Bool)

(assert (=> bm!313323 (= c!767313 c!767316)))

(declare-fun b!4501043 () Bool)

(declare-fun e!2803730 () List!50671)

(assert (=> b!4501043 (= e!2803730 call!313326)))

(declare-fun b!4501044 () Bool)

(declare-fun e!2803729 () List!50671)

(assert (=> b!4501044 (= e!2803729 call!313327)))

(declare-fun d!1381483 () Bool)

(assert (=> d!1381483 e!2803728))

(declare-fun res!1871181 () Bool)

(assert (=> d!1381483 (=> (not res!1871181) (not e!2803728))))

(assert (=> d!1381483 (= res!1871181 (isStrictlySorted!399 lt!1681834))))

(assert (=> d!1381483 (= lt!1681834 e!2803730)))

(assert (=> d!1381483 (= c!767316 (and ((_ is Cons!50547) (toList!4259 lt!1680963)) (bvslt (_1!28764 (h!56368 (toList!4259 lt!1680963))) (_1!28764 lt!1680964))))))

(assert (=> d!1381483 (isStrictlySorted!399 (toList!4259 lt!1680963))))

(assert (=> d!1381483 (= (insertStrictlySorted!376 (toList!4259 lt!1680963) (_1!28764 lt!1680964) (_2!28764 lt!1680964)) lt!1681834)))

(declare-fun b!4501041 () Bool)

(declare-fun c!767315 () Bool)

(declare-fun c!767314 () Bool)

(assert (=> b!4501041 (= e!2803731 (ite c!767314 (t!357629 (toList!4259 lt!1680963)) (ite c!767315 (Cons!50547 (h!56368 (toList!4259 lt!1680963)) (t!357629 (toList!4259 lt!1680963))) Nil!50547)))))

(declare-fun b!4501045 () Bool)

(assert (=> b!4501045 (= e!2803728 (contains!13220 lt!1681834 (tuple2!50941 (_1!28764 lt!1680964) (_2!28764 lt!1680964))))))

(declare-fun b!4501046 () Bool)

(assert (=> b!4501046 (= c!767315 (and ((_ is Cons!50547) (toList!4259 lt!1680963)) (bvsgt (_1!28764 (h!56368 (toList!4259 lt!1680963))) (_1!28764 lt!1680964))))))

(declare-fun e!2803732 () List!50671)

(assert (=> b!4501046 (= e!2803732 e!2803729)))

(declare-fun b!4501047 () Bool)

(assert (=> b!4501047 (= e!2803732 call!313328)))

(declare-fun b!4501048 () Bool)

(assert (=> b!4501048 (= e!2803731 (insertStrictlySorted!376 (t!357629 (toList!4259 lt!1680963)) (_1!28764 lt!1680964) (_2!28764 lt!1680964)))))

(declare-fun b!4501049 () Bool)

(assert (=> b!4501049 (= e!2803729 call!313327)))

(declare-fun b!4501050 () Bool)

(assert (=> b!4501050 (= e!2803730 e!2803732)))

(assert (=> b!4501050 (= c!767314 (and ((_ is Cons!50547) (toList!4259 lt!1680963)) (= (_1!28764 (h!56368 (toList!4259 lt!1680963))) (_1!28764 lt!1680964))))))

(assert (= (and d!1381483 c!767316) b!4501043))

(assert (= (and d!1381483 (not c!767316)) b!4501050))

(assert (= (and b!4501050 c!767314) b!4501047))

(assert (= (and b!4501050 (not c!767314)) b!4501046))

(assert (= (and b!4501046 c!767315) b!4501044))

(assert (= (and b!4501046 (not c!767315)) b!4501049))

(assert (= (or b!4501044 b!4501049) bm!313322))

(assert (= (or b!4501047 bm!313322) bm!313321))

(assert (= (or b!4501043 bm!313321) bm!313323))

(assert (= (and bm!313323 c!767313) b!4501048))

(assert (= (and bm!313323 (not c!767313)) b!4501041))

(assert (= (and d!1381483 res!1871181) b!4501042))

(assert (= (and b!4501042 res!1871182) b!4501045))

(declare-fun m!5232145 () Bool)

(assert (=> b!4501048 m!5232145))

(declare-fun m!5232147 () Bool)

(assert (=> bm!313323 m!5232147))

(declare-fun m!5232151 () Bool)

(assert (=> d!1381483 m!5232151))

(declare-fun m!5232153 () Bool)

(assert (=> d!1381483 m!5232153))

(declare-fun m!5232155 () Bool)

(assert (=> b!4501045 m!5232155))

(declare-fun m!5232157 () Bool)

(assert (=> b!4501042 m!5232157))

(assert (=> d!1380893 d!1381483))

(declare-fun bs!836447 () Bool)

(declare-fun b!4501060 () Bool)

(assert (= bs!836447 (and b!4501060 b!4500420)))

(declare-fun lambda!168934 () Int)

(assert (=> bs!836447 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168934 lambda!168882))))

(declare-fun bs!836448 () Bool)

(assert (= bs!836448 (and b!4501060 b!4500201)))

(assert (=> bs!836448 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168934 lambda!168819))))

(declare-fun bs!836449 () Bool)

(assert (= bs!836449 (and b!4501060 b!4500328)))

(assert (=> bs!836449 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681355) (= lambda!168934 lambda!168838))))

(declare-fun bs!836450 () Bool)

(assert (= bs!836450 (and b!4501060 b!4500417)))

(assert (=> bs!836450 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681478) (= lambda!168934 lambda!168886))))

(declare-fun bs!836451 () Bool)

(assert (= bs!836451 (and b!4501060 b!4500350)))

(assert (=> bs!836451 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168934 lambda!168863))))

(declare-fun bs!836452 () Bool)

(assert (= bs!836452 (and b!4501060 d!1380929)))

(assert (=> bs!836452 (not (= lambda!168934 lambda!168760))))

(assert (=> bs!836450 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168934 lambda!168884))))

(declare-fun bs!836453 () Bool)

(assert (= bs!836453 (and b!4501060 d!1381103)))

(assert (=> bs!836453 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681422) (= lambda!168934 lambda!168868))))

(declare-fun bs!836454 () Bool)

(assert (= bs!836454 (and b!4501060 b!4500198)))

(assert (=> bs!836454 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681300) (= lambda!168934 lambda!168821))))

(declare-fun bs!836455 () Bool)

(assert (= bs!836455 (and b!4501060 d!1381135)))

(assert (=> bs!836455 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681486) (= lambda!168934 lambda!168887))))

(declare-fun bs!836456 () Bool)

(assert (= bs!836456 (and b!4501060 d!1381087)))

(assert (=> bs!836456 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681363) (= lambda!168934 lambda!168843))))

(declare-fun bs!836458 () Bool)

(assert (= bs!836458 (and b!4501060 d!1381003)))

(assert (=> bs!836458 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681308) (= lambda!168934 lambda!168822))))

(assert (=> bs!836454 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168934 lambda!168820))))

(declare-fun bs!836459 () Bool)

(assert (= bs!836459 (and b!4501060 b!4500331)))

(assert (=> bs!836459 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168934 lambda!168834))))

(assert (=> bs!836449 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168934 lambda!168837))))

(declare-fun bs!836461 () Bool)

(assert (= bs!836461 (and b!4501060 b!4500347)))

(assert (=> bs!836461 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681414) (= lambda!168934 lambda!168867))))

(assert (=> bs!836461 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168934 lambda!168866))))

(assert (=> b!4501060 true))

(declare-fun bs!836463 () Bool)

(declare-fun b!4501057 () Bool)

(assert (= bs!836463 (and b!4501057 b!4500420)))

(declare-fun lambda!168935 () Int)

(assert (=> bs!836463 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168935 lambda!168882))))

(declare-fun bs!836464 () Bool)

(assert (= bs!836464 (and b!4501057 b!4500201)))

(assert (=> bs!836464 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168935 lambda!168819))))

(declare-fun bs!836465 () Bool)

(assert (= bs!836465 (and b!4501057 b!4500328)))

(assert (=> bs!836465 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681355) (= lambda!168935 lambda!168838))))

(declare-fun bs!836467 () Bool)

(assert (= bs!836467 (and b!4501057 b!4500417)))

(assert (=> bs!836467 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681478) (= lambda!168935 lambda!168886))))

(declare-fun bs!836468 () Bool)

(assert (= bs!836468 (and b!4501057 b!4500350)))

(assert (=> bs!836468 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168935 lambda!168863))))

(declare-fun bs!836469 () Bool)

(assert (= bs!836469 (and b!4501057 d!1380929)))

(assert (=> bs!836469 (not (= lambda!168935 lambda!168760))))

(assert (=> bs!836467 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168935 lambda!168884))))

(declare-fun bs!836470 () Bool)

(assert (= bs!836470 (and b!4501057 d!1381103)))

(assert (=> bs!836470 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681422) (= lambda!168935 lambda!168868))))

(declare-fun bs!836471 () Bool)

(assert (= bs!836471 (and b!4501057 b!4500198)))

(assert (=> bs!836471 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681300) (= lambda!168935 lambda!168821))))

(declare-fun bs!836472 () Bool)

(assert (= bs!836472 (and b!4501057 d!1381135)))

(assert (=> bs!836472 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681486) (= lambda!168935 lambda!168887))))

(declare-fun bs!836473 () Bool)

(assert (= bs!836473 (and b!4501057 d!1381087)))

(assert (=> bs!836473 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681363) (= lambda!168935 lambda!168843))))

(declare-fun bs!836474 () Bool)

(assert (= bs!836474 (and b!4501057 d!1381003)))

(assert (=> bs!836474 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681308) (= lambda!168935 lambda!168822))))

(declare-fun bs!836475 () Bool)

(assert (= bs!836475 (and b!4501057 b!4501060)))

(assert (=> bs!836475 (= lambda!168935 lambda!168934)))

(assert (=> bs!836471 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168935 lambda!168820))))

(declare-fun bs!836476 () Bool)

(assert (= bs!836476 (and b!4501057 b!4500331)))

(assert (=> bs!836476 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168935 lambda!168834))))

(assert (=> bs!836465 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168935 lambda!168837))))

(declare-fun bs!836477 () Bool)

(assert (= bs!836477 (and b!4501057 b!4500347)))

(assert (=> bs!836477 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681414) (= lambda!168935 lambda!168867))))

(assert (=> bs!836477 (= (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168935 lambda!168866))))

(assert (=> b!4501057 true))

(declare-fun lt!1681844 () ListMap!3521)

(declare-fun lambda!168936 () Int)

(assert (=> bs!836463 (= (= lt!1681844 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168936 lambda!168882))))

(assert (=> bs!836464 (= (= lt!1681844 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168936 lambda!168819))))

(assert (=> bs!836467 (= (= lt!1681844 lt!1681478) (= lambda!168936 lambda!168886))))

(assert (=> bs!836468 (= (= lt!1681844 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168936 lambda!168863))))

(assert (=> bs!836469 (not (= lambda!168936 lambda!168760))))

(assert (=> bs!836467 (= (= lt!1681844 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168936 lambda!168884))))

(assert (=> bs!836470 (= (= lt!1681844 lt!1681422) (= lambda!168936 lambda!168868))))

(assert (=> bs!836471 (= (= lt!1681844 lt!1681300) (= lambda!168936 lambda!168821))))

(assert (=> bs!836472 (= (= lt!1681844 lt!1681486) (= lambda!168936 lambda!168887))))

(assert (=> bs!836473 (= (= lt!1681844 lt!1681363) (= lambda!168936 lambda!168843))))

(assert (=> bs!836474 (= (= lt!1681844 lt!1681308) (= lambda!168936 lambda!168822))))

(assert (=> bs!836475 (= (= lt!1681844 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) (= lambda!168936 lambda!168934))))

(assert (=> bs!836471 (= (= lt!1681844 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168936 lambda!168820))))

(assert (=> bs!836476 (= (= lt!1681844 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168936 lambda!168834))))

(assert (=> b!4501057 (= (= lt!1681844 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) (= lambda!168936 lambda!168935))))

(assert (=> bs!836465 (= (= lt!1681844 lt!1681355) (= lambda!168936 lambda!168838))))

(assert (=> bs!836465 (= (= lt!1681844 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168936 lambda!168837))))

(assert (=> bs!836477 (= (= lt!1681844 lt!1681414) (= lambda!168936 lambda!168867))))

(assert (=> bs!836477 (= (= lt!1681844 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168936 lambda!168866))))

(assert (=> b!4501057 true))

(declare-fun bs!836478 () Bool)

(declare-fun d!1381493 () Bool)

(assert (= bs!836478 (and d!1381493 b!4500420)))

(declare-fun lt!1681852 () ListMap!3521)

(declare-fun lambda!168937 () Int)

(assert (=> bs!836478 (= (= lt!1681852 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168937 lambda!168882))))

(declare-fun bs!836479 () Bool)

(assert (= bs!836479 (and d!1381493 b!4500201)))

(assert (=> bs!836479 (= (= lt!1681852 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168937 lambda!168819))))

(declare-fun bs!836480 () Bool)

(assert (= bs!836480 (and d!1381493 b!4500417)))

(assert (=> bs!836480 (= (= lt!1681852 lt!1681478) (= lambda!168937 lambda!168886))))

(declare-fun bs!836481 () Bool)

(assert (= bs!836481 (and d!1381493 b!4500350)))

(assert (=> bs!836481 (= (= lt!1681852 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168937 lambda!168863))))

(declare-fun bs!836482 () Bool)

(assert (= bs!836482 (and d!1381493 d!1380929)))

(assert (=> bs!836482 (not (= lambda!168937 lambda!168760))))

(assert (=> bs!836480 (= (= lt!1681852 (extractMap!1182 (t!357629 (toList!4259 lt!1680973)))) (= lambda!168937 lambda!168884))))

(declare-fun bs!836483 () Bool)

(assert (= bs!836483 (and d!1381493 d!1381103)))

(assert (=> bs!836483 (= (= lt!1681852 lt!1681422) (= lambda!168937 lambda!168868))))

(declare-fun bs!836484 () Bool)

(assert (= bs!836484 (and d!1381493 b!4500198)))

(assert (=> bs!836484 (= (= lt!1681852 lt!1681300) (= lambda!168937 lambda!168821))))

(declare-fun bs!836485 () Bool)

(assert (= bs!836485 (and d!1381493 b!4501057)))

(assert (=> bs!836485 (= (= lt!1681852 lt!1681844) (= lambda!168937 lambda!168936))))

(declare-fun bs!836486 () Bool)

(assert (= bs!836486 (and d!1381493 d!1381135)))

(assert (=> bs!836486 (= (= lt!1681852 lt!1681486) (= lambda!168937 lambda!168887))))

(declare-fun bs!836487 () Bool)

(assert (= bs!836487 (and d!1381493 d!1381087)))

(assert (=> bs!836487 (= (= lt!1681852 lt!1681363) (= lambda!168937 lambda!168843))))

(declare-fun bs!836488 () Bool)

(assert (= bs!836488 (and d!1381493 d!1381003)))

(assert (=> bs!836488 (= (= lt!1681852 lt!1681308) (= lambda!168937 lambda!168822))))

(declare-fun bs!836489 () Bool)

(assert (= bs!836489 (and d!1381493 b!4501060)))

(assert (=> bs!836489 (= (= lt!1681852 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) (= lambda!168937 lambda!168934))))

(assert (=> bs!836484 (= (= lt!1681852 (extractMap!1182 (t!357629 (toList!4259 lt!1680963)))) (= lambda!168937 lambda!168820))))

(declare-fun bs!836490 () Bool)

(assert (= bs!836490 (and d!1381493 b!4500331)))

(assert (=> bs!836490 (= (= lt!1681852 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168937 lambda!168834))))

(assert (=> bs!836485 (= (= lt!1681852 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) (= lambda!168937 lambda!168935))))

(declare-fun bs!836491 () Bool)

(assert (= bs!836491 (and d!1381493 b!4500328)))

(assert (=> bs!836491 (= (= lt!1681852 lt!1681355) (= lambda!168937 lambda!168838))))

(assert (=> bs!836491 (= (= lt!1681852 (extractMap!1182 (t!357629 (toList!4259 (+!1474 lt!1680973 lt!1680964))))) (= lambda!168937 lambda!168837))))

(declare-fun bs!836492 () Bool)

(assert (= bs!836492 (and d!1381493 b!4500347)))

(assert (=> bs!836492 (= (= lt!1681852 lt!1681414) (= lambda!168937 lambda!168867))))

(assert (=> bs!836492 (= (= lt!1681852 (extractMap!1182 (t!357629 (toList!4259 lm!1477)))) (= lambda!168937 lambda!168866))))

(assert (=> d!1381493 true))

(declare-fun e!2803737 () ListMap!3521)

(assert (=> b!4501057 (= e!2803737 lt!1681844)))

(declare-fun lt!1681838 () ListMap!3521)

(assert (=> b!4501057 (= lt!1681838 (+!1475 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (h!56367 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))))))))

(assert (=> b!4501057 (= lt!1681844 (addToMapMapFromBucket!653 (t!357628 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))) (+!1475 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) (h!56367 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))))))))

(declare-fun lt!1681851 () Unit!91936)

(declare-fun call!313330 () Unit!91936)

(assert (=> b!4501057 (= lt!1681851 call!313330)))

(assert (=> b!4501057 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) lambda!168935)))

(declare-fun lt!1681842 () Unit!91936)

(assert (=> b!4501057 (= lt!1681842 lt!1681851)))

(assert (=> b!4501057 (forall!10181 (toList!4260 lt!1681838) lambda!168936)))

(declare-fun lt!1681855 () Unit!91936)

(declare-fun Unit!92106 () Unit!91936)

(assert (=> b!4501057 (= lt!1681855 Unit!92106)))

(assert (=> b!4501057 (forall!10181 (t!357628 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))) lambda!168936)))

(declare-fun lt!1681837 () Unit!91936)

(declare-fun Unit!92107 () Unit!91936)

(assert (=> b!4501057 (= lt!1681837 Unit!92107)))

(declare-fun lt!1681835 () Unit!91936)

(declare-fun Unit!92108 () Unit!91936)

(assert (=> b!4501057 (= lt!1681835 Unit!92108)))

(declare-fun lt!1681850 () Unit!91936)

(assert (=> b!4501057 (= lt!1681850 (forallContained!2434 (toList!4260 lt!1681838) lambda!168936 (h!56367 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))))))))

(assert (=> b!4501057 (contains!13219 lt!1681838 (_1!28763 (h!56367 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))))))))

(declare-fun lt!1681836 () Unit!91936)

(declare-fun Unit!92109 () Unit!91936)

(assert (=> b!4501057 (= lt!1681836 Unit!92109)))

(assert (=> b!4501057 (contains!13219 lt!1681844 (_1!28763 (h!56367 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))))))))

(declare-fun lt!1681845 () Unit!91936)

(declare-fun Unit!92110 () Unit!91936)

(assert (=> b!4501057 (= lt!1681845 Unit!92110)))

(declare-fun call!313329 () Bool)

(assert (=> b!4501057 call!313329))

(declare-fun lt!1681854 () Unit!91936)

(declare-fun Unit!92111 () Unit!91936)

(assert (=> b!4501057 (= lt!1681854 Unit!92111)))

(assert (=> b!4501057 (forall!10181 (toList!4260 lt!1681838) lambda!168936)))

(declare-fun lt!1681846 () Unit!91936)

(declare-fun Unit!92112 () Unit!91936)

(assert (=> b!4501057 (= lt!1681846 Unit!92112)))

(declare-fun lt!1681849 () Unit!91936)

(declare-fun Unit!92113 () Unit!91936)

(assert (=> b!4501057 (= lt!1681849 Unit!92113)))

(declare-fun lt!1681853 () Unit!91936)

(assert (=> b!4501057 (= lt!1681853 (addForallContainsKeyThenBeforeAdding!307 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681844 (_1!28763 (h!56367 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))))) (_2!28763 (h!56367 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))))))))

(declare-fun call!313331 () Bool)

(assert (=> b!4501057 call!313331))

(declare-fun lt!1681847 () Unit!91936)

(assert (=> b!4501057 (= lt!1681847 lt!1681853)))

(assert (=> b!4501057 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) lambda!168936)))

(declare-fun lt!1681848 () Unit!91936)

(declare-fun Unit!92114 () Unit!91936)

(assert (=> b!4501057 (= lt!1681848 Unit!92114)))

(declare-fun res!1871185 () Bool)

(assert (=> b!4501057 (= res!1871185 (forall!10181 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))) lambda!168936))))

(declare-fun e!2803738 () Bool)

(assert (=> b!4501057 (=> (not res!1871185) (not e!2803738))))

(assert (=> b!4501057 e!2803738))

(declare-fun lt!1681839 () Unit!91936)

(declare-fun Unit!92115 () Unit!91936)

(assert (=> b!4501057 (= lt!1681839 Unit!92115)))

(declare-fun b!4501058 () Bool)

(assert (=> b!4501058 (= e!2803738 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) lambda!168936))))

(declare-fun bm!313324 () Bool)

(assert (=> bm!313324 (= call!313330 (lemmaContainsAllItsOwnKeys!307 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))))))

(assert (=> b!4501060 (= e!2803737 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))))))

(declare-fun lt!1681843 () Unit!91936)

(assert (=> b!4501060 (= lt!1681843 call!313330)))

(assert (=> b!4501060 call!313331))

(declare-fun lt!1681840 () Unit!91936)

(assert (=> b!4501060 (= lt!1681840 lt!1681843)))

(assert (=> b!4501060 call!313329))

(declare-fun lt!1681841 () Unit!91936)

(declare-fun Unit!92116 () Unit!91936)

(assert (=> b!4501060 (= lt!1681841 Unit!92116)))

(declare-fun c!767319 () Bool)

(declare-fun bm!313325 () Bool)

(assert (=> bm!313325 (= call!313331 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) (ite c!767319 lambda!168934 lambda!168936)))))

(declare-fun b!4501059 () Bool)

(declare-fun res!1871186 () Bool)

(declare-fun e!2803739 () Bool)

(assert (=> b!4501059 (=> (not res!1871186) (not e!2803739))))

(assert (=> b!4501059 (= res!1871186 (forall!10181 (toList!4260 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) lambda!168937))))

(assert (=> d!1381493 e!2803739))

(declare-fun res!1871187 () Bool)

(assert (=> d!1381493 (=> (not res!1871187) (not e!2803739))))

(assert (=> d!1381493 (= res!1871187 (forall!10181 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))) lambda!168937))))

(assert (=> d!1381493 (= lt!1681852 e!2803737)))

(assert (=> d!1381493 (= c!767319 ((_ is Nil!50546) (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))))))

(assert (=> d!1381493 (noDuplicateKeys!1126 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))))))

(assert (=> d!1381493 (= (addToMapMapFromBucket!653 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477)))) (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) lt!1681852)))

(declare-fun b!4501061 () Bool)

(assert (=> b!4501061 (= e!2803739 (invariantList!985 (toList!4260 lt!1681852)))))

(declare-fun bm!313326 () Bool)

(assert (=> bm!313326 (= call!313329 (forall!10181 (ite c!767319 (toList!4260 (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477))))) (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))) (ite c!767319 lambda!168934 lambda!168936)))))

(assert (= (and d!1381493 c!767319) b!4501060))

(assert (= (and d!1381493 (not c!767319)) b!4501057))

(assert (= (and b!4501057 res!1871185) b!4501058))

(assert (= (or b!4501060 b!4501057) bm!313326))

(assert (= (or b!4501060 b!4501057) bm!313325))

(assert (= (or b!4501060 b!4501057) bm!313324))

(assert (= (and d!1381493 res!1871187) b!4501059))

(assert (= (and b!4501059 res!1871186) b!4501061))

(assert (=> b!4501057 m!5230263))

(declare-fun m!5232221 () Bool)

(assert (=> b!4501057 m!5232221))

(declare-fun m!5232223 () Bool)

(assert (=> b!4501057 m!5232223))

(declare-fun m!5232225 () Bool)

(assert (=> b!4501057 m!5232225))

(assert (=> b!4501057 m!5232223))

(assert (=> b!4501057 m!5232221))

(declare-fun m!5232227 () Bool)

(assert (=> b!4501057 m!5232227))

(assert (=> b!4501057 m!5230263))

(declare-fun m!5232229 () Bool)

(assert (=> b!4501057 m!5232229))

(declare-fun m!5232231 () Bool)

(assert (=> b!4501057 m!5232231))

(declare-fun m!5232233 () Bool)

(assert (=> b!4501057 m!5232233))

(declare-fun m!5232235 () Bool)

(assert (=> b!4501057 m!5232235))

(declare-fun m!5232237 () Bool)

(assert (=> b!4501057 m!5232237))

(declare-fun m!5232239 () Bool)

(assert (=> b!4501057 m!5232239))

(declare-fun m!5232241 () Bool)

(assert (=> b!4501057 m!5232241))

(declare-fun m!5232243 () Bool)

(assert (=> d!1381493 m!5232243))

(declare-fun m!5232245 () Bool)

(assert (=> d!1381493 m!5232245))

(declare-fun m!5232247 () Bool)

(assert (=> b!4501059 m!5232247))

(assert (=> b!4501058 m!5232231))

(declare-fun m!5232249 () Bool)

(assert (=> bm!313325 m!5232249))

(declare-fun m!5232251 () Bool)

(assert (=> b!4501061 m!5232251))

(assert (=> bm!313324 m!5230263))

(declare-fun m!5232253 () Bool)

(assert (=> bm!313324 m!5232253))

(declare-fun m!5232255 () Bool)

(assert (=> bm!313326 m!5232255))

(assert (=> b!4499927 d!1381493))

(declare-fun bs!836504 () Bool)

(declare-fun d!1381525 () Bool)

(assert (= bs!836504 (and d!1381525 d!1380959)))

(declare-fun lambda!168939 () Int)

(assert (=> bs!836504 (= lambda!168939 lambda!168766)))

(declare-fun bs!836505 () Bool)

(assert (= bs!836505 (and d!1381525 d!1381089)))

(assert (=> bs!836505 (= lambda!168939 lambda!168852)))

(declare-fun bs!836506 () Bool)

(assert (= bs!836506 (and d!1381525 d!1380863)))

(assert (=> bs!836506 (= lambda!168939 lambda!168750)))

(declare-fun bs!836507 () Bool)

(assert (= bs!836507 (and d!1381525 d!1380861)))

(assert (=> bs!836507 (= lambda!168939 lambda!168734)))

(declare-fun bs!836508 () Bool)

(assert (= bs!836508 (and d!1381525 d!1381155)))

(assert (=> bs!836508 (= lambda!168939 lambda!168888)))

(declare-fun bs!836510 () Bool)

(assert (= bs!836510 (and d!1381525 d!1380969)))

(assert (=> bs!836510 (= lambda!168939 lambda!168767)))

(declare-fun bs!836512 () Bool)

(assert (= bs!836512 (and d!1381525 d!1380971)))

(assert (=> bs!836512 (= lambda!168939 lambda!168770)))

(declare-fun bs!836514 () Bool)

(assert (= bs!836514 (and d!1381525 d!1380983)))

(assert (=> bs!836514 (= lambda!168939 lambda!168774)))

(declare-fun bs!836516 () Bool)

(assert (= bs!836516 (and d!1381525 d!1381031)))

(assert (=> bs!836516 (= lambda!168939 lambda!168823)))

(declare-fun bs!836518 () Bool)

(assert (= bs!836518 (and d!1381525 d!1380943)))

(assert (=> bs!836518 (= lambda!168939 lambda!168763)))

(declare-fun bs!836520 () Bool)

(assert (= bs!836520 (and d!1381525 d!1380837)))

(assert (=> bs!836520 (= lambda!168939 lambda!168731)))

(declare-fun bs!836522 () Bool)

(assert (= bs!836522 (and d!1381525 d!1380857)))

(assert (=> bs!836522 (= lambda!168939 lambda!168733)))

(declare-fun bs!836524 () Bool)

(assert (= bs!836524 (and d!1381525 d!1380989)))

(assert (=> bs!836524 (not (= lambda!168939 lambda!168777))))

(declare-fun bs!836526 () Bool)

(assert (= bs!836526 (and d!1381525 start!444228)))

(assert (=> bs!836526 (= lambda!168939 lambda!168721)))

(declare-fun bs!836528 () Bool)

(assert (= bs!836528 (and d!1381525 d!1381277)))

(assert (=> bs!836528 (= lambda!168939 lambda!168910)))

(declare-fun bs!836530 () Bool)

(assert (= bs!836530 (and d!1381525 d!1380973)))

(assert (=> bs!836530 (= lambda!168939 lambda!168771)))

(declare-fun lt!1681876 () ListMap!3521)

(assert (=> d!1381525 (invariantList!985 (toList!4260 lt!1681876))))

(declare-fun e!2803764 () ListMap!3521)

(assert (=> d!1381525 (= lt!1681876 e!2803764)))

(declare-fun c!767326 () Bool)

(assert (=> d!1381525 (= c!767326 ((_ is Cons!50547) (t!357629 (t!357629 (toList!4259 lm!1477)))))))

(assert (=> d!1381525 (forall!10179 (t!357629 (t!357629 (toList!4259 lm!1477))) lambda!168939)))

(assert (=> d!1381525 (= (extractMap!1182 (t!357629 (t!357629 (toList!4259 lm!1477)))) lt!1681876)))

(declare-fun b!4501094 () Bool)

(assert (=> b!4501094 (= e!2803764 (addToMapMapFromBucket!653 (_2!28764 (h!56368 (t!357629 (t!357629 (toList!4259 lm!1477))))) (extractMap!1182 (t!357629 (t!357629 (t!357629 (toList!4259 lm!1477)))))))))

(declare-fun b!4501095 () Bool)

(assert (=> b!4501095 (= e!2803764 (ListMap!3522 Nil!50546))))

(assert (= (and d!1381525 c!767326) b!4501094))

(assert (= (and d!1381525 (not c!767326)) b!4501095))

(declare-fun m!5232257 () Bool)

(assert (=> d!1381525 m!5232257))

(declare-fun m!5232259 () Bool)

(assert (=> d!1381525 m!5232259))

(declare-fun m!5232261 () Bool)

(assert (=> b!4501094 m!5232261))

(assert (=> b!4501094 m!5232261))

(declare-fun m!5232263 () Bool)

(assert (=> b!4501094 m!5232263))

(assert (=> b!4499927 d!1381525))

(declare-fun d!1381527 () Bool)

(declare-fun res!1871208 () Bool)

(declare-fun e!2803765 () Bool)

(assert (=> d!1381527 (=> res!1871208 e!2803765)))

(assert (=> d!1381527 (= res!1871208 (not ((_ is Cons!50546) (_2!28764 lt!1680978))))))

(assert (=> d!1381527 (= (noDuplicateKeys!1126 (_2!28764 lt!1680978)) e!2803765)))

(declare-fun b!4501096 () Bool)

(declare-fun e!2803766 () Bool)

(assert (=> b!4501096 (= e!2803765 e!2803766)))

(declare-fun res!1871209 () Bool)

(assert (=> b!4501096 (=> (not res!1871209) (not e!2803766))))

(assert (=> b!4501096 (= res!1871209 (not (containsKey!1682 (t!357628 (_2!28764 lt!1680978)) (_1!28763 (h!56367 (_2!28764 lt!1680978))))))))

(declare-fun b!4501097 () Bool)

(assert (=> b!4501097 (= e!2803766 (noDuplicateKeys!1126 (t!357628 (_2!28764 lt!1680978))))))

(assert (= (and d!1381527 (not res!1871208)) b!4501096))

(assert (= (and b!4501096 res!1871209) b!4501097))

(declare-fun m!5232265 () Bool)

(assert (=> b!4501096 m!5232265))

(declare-fun m!5232267 () Bool)

(assert (=> b!4501097 m!5232267))

(assert (=> bs!835974 d!1381527))

(assert (=> d!1380855 d!1381287))

(declare-fun b!4501101 () Bool)

(declare-fun e!2803768 () Option!11049)

(assert (=> b!4501101 (= e!2803768 None!11048)))

(declare-fun b!4501098 () Bool)

(declare-fun e!2803767 () Option!11049)

(assert (=> b!4501098 (= e!2803767 (Some!11048 (_2!28764 (h!56368 (toList!4259 lt!1681117)))))))

(declare-fun d!1381529 () Bool)

(declare-fun c!767327 () Bool)

(assert (=> d!1381529 (= c!767327 (and ((_ is Cons!50547) (toList!4259 lt!1681117)) (= (_1!28764 (h!56368 (toList!4259 lt!1681117))) (_1!28764 lt!1680977))))))

(assert (=> d!1381529 (= (getValueByKey!1029 (toList!4259 lt!1681117) (_1!28764 lt!1680977)) e!2803767)))

(declare-fun b!4501099 () Bool)

(assert (=> b!4501099 (= e!2803767 e!2803768)))

(declare-fun c!767328 () Bool)

(assert (=> b!4501099 (= c!767328 (and ((_ is Cons!50547) (toList!4259 lt!1681117)) (not (= (_1!28764 (h!56368 (toList!4259 lt!1681117))) (_1!28764 lt!1680977)))))))

(declare-fun b!4501100 () Bool)

(assert (=> b!4501100 (= e!2803768 (getValueByKey!1029 (t!357629 (toList!4259 lt!1681117)) (_1!28764 lt!1680977)))))

(assert (= (and d!1381529 c!767327) b!4501098))

(assert (= (and d!1381529 (not c!767327)) b!4501099))

(assert (= (and b!4501099 c!767328) b!4501100))

(assert (= (and b!4501099 (not c!767328)) b!4501101))

(declare-fun m!5232269 () Bool)

(assert (=> b!4501100 m!5232269))

(assert (=> b!4499961 d!1381529))

(declare-fun b!4501105 () Bool)

(declare-fun e!2803770 () Option!11049)

(assert (=> b!4501105 (= e!2803770 None!11048)))

(declare-fun b!4501102 () Bool)

(declare-fun e!2803769 () Option!11049)

(assert (=> b!4501102 (= e!2803769 (Some!11048 (_2!28764 (h!56368 (toList!4259 lt!1681200)))))))

(declare-fun d!1381531 () Bool)

(declare-fun c!767329 () Bool)

(assert (=> d!1381531 (= c!767329 (and ((_ is Cons!50547) (toList!4259 lt!1681200)) (= (_1!28764 (h!56368 (toList!4259 lt!1681200))) (_1!28764 lt!1680964))))))

(assert (=> d!1381531 (= (getValueByKey!1029 (toList!4259 lt!1681200) (_1!28764 lt!1680964)) e!2803769)))

(declare-fun b!4501103 () Bool)

(assert (=> b!4501103 (= e!2803769 e!2803770)))

(declare-fun c!767330 () Bool)

(assert (=> b!4501103 (= c!767330 (and ((_ is Cons!50547) (toList!4259 lt!1681200)) (not (= (_1!28764 (h!56368 (toList!4259 lt!1681200))) (_1!28764 lt!1680964)))))))

(declare-fun b!4501104 () Bool)

(assert (=> b!4501104 (= e!2803770 (getValueByKey!1029 (t!357629 (toList!4259 lt!1681200)) (_1!28764 lt!1680964)))))

(assert (= (and d!1381531 c!767329) b!4501102))

(assert (= (and d!1381531 (not c!767329)) b!4501103))

(assert (= (and b!4501103 c!767330) b!4501104))

(assert (= (and b!4501103 (not c!767330)) b!4501105))

(declare-fun m!5232271 () Bool)

(assert (=> b!4501104 m!5232271))

(assert (=> b!4500076 d!1381531))

(declare-fun d!1381533 () Bool)

(assert (=> d!1381533 (isDefined!8334 (getValueByKey!1028 (toList!4260 lt!1680976) key!3287))))

(declare-fun lt!1681877 () Unit!91936)

(assert (=> d!1381533 (= lt!1681877 (choose!29145 (toList!4260 lt!1680976) key!3287))))

(assert (=> d!1381533 (invariantList!985 (toList!4260 lt!1680976))))

(assert (=> d!1381533 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!931 (toList!4260 lt!1680976) key!3287) lt!1681877)))

(declare-fun bs!836549 () Bool)

(assert (= bs!836549 d!1381533))

(assert (=> bs!836549 m!5230223))

(assert (=> bs!836549 m!5230223))

(assert (=> bs!836549 m!5230225))

(declare-fun m!5232273 () Bool)

(assert (=> bs!836549 m!5232273))

(assert (=> bs!836549 m!5231561))

(assert (=> b!4499914 d!1381533))

(assert (=> b!4499914 d!1381313))

(assert (=> b!4499914 d!1381315))

(declare-fun d!1381535 () Bool)

(assert (=> d!1381535 (contains!13223 (getKeysList!433 (toList!4260 lt!1680976)) key!3287)))

(declare-fun lt!1681878 () Unit!91936)

(assert (=> d!1381535 (= lt!1681878 (choose!29146 (toList!4260 lt!1680976) key!3287))))

(assert (=> d!1381535 (invariantList!985 (toList!4260 lt!1680976))))

(assert (=> d!1381535 (= (lemmaInListThenGetKeysListContains!429 (toList!4260 lt!1680976) key!3287) lt!1681878)))

(declare-fun bs!836550 () Bool)

(assert (= bs!836550 d!1381535))

(assert (=> bs!836550 m!5230219))

(assert (=> bs!836550 m!5230219))

(declare-fun m!5232275 () Bool)

(assert (=> bs!836550 m!5232275))

(declare-fun m!5232277 () Bool)

(assert (=> bs!836550 m!5232277))

(assert (=> bs!836550 m!5231561))

(assert (=> b!4499914 d!1381535))

(assert (=> d!1380993 d!1381039))

(assert (=> d!1380993 d!1381037))

(declare-fun d!1381537 () Bool)

(declare-fun c!767331 () Bool)

(assert (=> d!1381537 (= c!767331 ((_ is Nil!50547) (toList!4259 lm!1477)))))

(declare-fun e!2803771 () (InoxSet tuple2!50940))

(assert (=> d!1381537 (= (content!8261 (toList!4259 lm!1477)) e!2803771)))

(declare-fun b!4501106 () Bool)

(assert (=> b!4501106 (= e!2803771 ((as const (Array tuple2!50940 Bool)) false))))

(declare-fun b!4501107 () Bool)

(assert (=> b!4501107 (= e!2803771 ((_ map or) (store ((as const (Array tuple2!50940 Bool)) false) (h!56368 (toList!4259 lm!1477)) true) (content!8261 (t!357629 (toList!4259 lm!1477)))))))

(assert (= (and d!1381537 c!767331) b!4501106))

(assert (= (and d!1381537 (not c!767331)) b!4501107))

(declare-fun m!5232279 () Bool)

(assert (=> b!4501107 m!5232279))

(assert (=> b!4501107 m!5230487))

(assert (=> d!1380953 d!1381537))

(assert (=> d!1380847 d!1381071))

(declare-fun tp!1337526 () Bool)

(declare-fun e!2803775 () Bool)

(declare-fun b!4501113 () Bool)

(assert (=> b!4501113 (= e!2803775 (and tp_is_empty!27781 tp_is_empty!27783 tp!1337526))))

(assert (=> b!4500116 (= tp!1337524 e!2803775)))

(assert (= (and b!4500116 ((_ is Cons!50546) (_2!28764 (h!56368 (toList!4259 lm!1477))))) b!4501113))

(declare-fun b!4501114 () Bool)

(declare-fun e!2803776 () Bool)

(declare-fun tp!1337527 () Bool)

(declare-fun tp!1337528 () Bool)

(assert (=> b!4501114 (= e!2803776 (and tp!1337527 tp!1337528))))

(assert (=> b!4500116 (= tp!1337525 e!2803776)))

(assert (= (and b!4500116 ((_ is Cons!50547) (t!357629 (toList!4259 lm!1477)))) b!4501114))

(declare-fun tp!1337529 () Bool)

(declare-fun e!2803777 () Bool)

(declare-fun b!4501115 () Bool)

(assert (=> b!4501115 (= e!2803777 (and tp_is_empty!27781 tp_is_empty!27783 tp!1337529))))

(assert (=> b!4500111 (= tp!1337519 e!2803777)))

(assert (= (and b!4500111 ((_ is Cons!50546) (t!357628 (t!357628 newBucket!178)))) b!4501115))

(declare-fun b_lambda!152377 () Bool)

(assert (= b_lambda!152333 (or d!1380863 b_lambda!152377)))

(declare-fun bs!836560 () Bool)

(declare-fun d!1381541 () Bool)

(assert (= bs!836560 (and d!1381541 d!1380863)))

(assert (=> bs!836560 (= (dynLambda!21109 lambda!168750 (h!56368 (toList!4259 lt!1680973))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lt!1680973)))))))

(assert (=> bs!836560 m!5231179))

(assert (=> b!4500376 d!1381541))

(declare-fun b_lambda!152379 () Bool)

(assert (= b_lambda!152327 (or d!1380857 b_lambda!152379)))

(declare-fun bs!836563 () Bool)

(declare-fun d!1381543 () Bool)

(assert (= bs!836563 (and d!1381543 d!1380857)))

(assert (=> bs!836563 (= (dynLambda!21109 lambda!168733 (h!56368 (toList!4259 lt!1680973))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lt!1680973)))))))

(assert (=> bs!836563 m!5231179))

(assert (=> b!4500335 d!1381543))

(declare-fun b_lambda!152381 () Bool)

(assert (= b_lambda!152367 (or d!1380861 b_lambda!152381)))

(declare-fun bs!836564 () Bool)

(declare-fun d!1381545 () Bool)

(assert (= bs!836564 (and d!1381545 d!1380861)))

(assert (=> bs!836564 (= (dynLambda!21109 lambda!168734 (h!56368 (t!357629 (toList!4259 lm!1477)))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))))))

(assert (=> bs!836564 m!5232245))

(assert (=> b!4500993 d!1381545))

(declare-fun b_lambda!152383 () Bool)

(assert (= b_lambda!152335 (or start!444228 b_lambda!152383)))

(assert (=> d!1381123 d!1380997))

(declare-fun b_lambda!152385 () Bool)

(assert (= b_lambda!152365 (or d!1380943 b_lambda!152385)))

(declare-fun bs!836565 () Bool)

(declare-fun d!1381547 () Bool)

(assert (= bs!836565 (and d!1381547 d!1380943)))

(assert (=> bs!836565 (= (dynLambda!21109 lambda!168763 (h!56368 (toList!4259 lm!1477))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lm!1477)))))))

(assert (=> bs!836565 m!5230635))

(assert (=> b!4500983 d!1381547))

(declare-fun b_lambda!152387 () Bool)

(assert (= b_lambda!152325 (or d!1380837 b_lambda!152387)))

(declare-fun bs!836567 () Bool)

(declare-fun d!1381549 () Bool)

(assert (= bs!836567 (and d!1381549 d!1380837)))

(assert (=> bs!836567 (= (dynLambda!21109 lambda!168731 (h!56368 (toList!4259 lm!1477))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lm!1477)))))))

(assert (=> bs!836567 m!5230635))

(assert (=> b!4500326 d!1381549))

(declare-fun b_lambda!152389 () Bool)

(assert (= b_lambda!152353 (or d!1380983 b_lambda!152389)))

(declare-fun bs!836569 () Bool)

(declare-fun d!1381551 () Bool)

(assert (= bs!836569 (and d!1381551 d!1380983)))

(assert (=> bs!836569 (= (dynLambda!21109 lambda!168774 (h!56368 (toList!4259 lt!1680973))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lt!1680973)))))))

(assert (=> bs!836569 m!5231179))

(assert (=> b!4500706 d!1381551))

(declare-fun b_lambda!152391 () Bool)

(assert (= b_lambda!152345 (or d!1380989 b_lambda!152391)))

(declare-fun bs!836570 () Bool)

(declare-fun d!1381553 () Bool)

(assert (= bs!836570 (and d!1381553 d!1380989)))

(assert (=> bs!836570 (= (dynLambda!21109 lambda!168777 (h!56368 (toList!4259 lm!1477))) (allKeysSameHash!980 (_2!28764 (h!56368 (toList!4259 lm!1477))) (_1!28764 (h!56368 (toList!4259 lm!1477))) hashF!1107))))

(declare-fun m!5232305 () Bool)

(assert (=> bs!836570 m!5232305))

(assert (=> b!4500626 d!1381553))

(declare-fun b_lambda!152393 () Bool)

(assert (= b_lambda!152323 (or d!1380973 b_lambda!152393)))

(declare-fun bs!836571 () Bool)

(declare-fun d!1381555 () Bool)

(assert (= bs!836571 (and d!1381555 d!1380973)))

(assert (=> bs!836571 (= (dynLambda!21109 lambda!168771 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964)))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 (+!1474 lt!1680973 lt!1680964))))))))

(assert (=> bs!836571 m!5230911))

(assert (=> b!4500234 d!1381555))

(declare-fun b_lambda!152395 () Bool)

(assert (= b_lambda!152339 (or start!444228 b_lambda!152395)))

(declare-fun bs!836572 () Bool)

(declare-fun d!1381557 () Bool)

(assert (= bs!836572 (and d!1381557 start!444228)))

(assert (=> bs!836572 (= (dynLambda!21109 lambda!168721 (h!56368 (t!357629 (toList!4259 lm!1477)))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (t!357629 (toList!4259 lm!1477))))))))

(assert (=> bs!836572 m!5232245))

(assert (=> b!4500470 d!1381557))

(declare-fun b_lambda!152397 () Bool)

(assert (= b_lambda!152349 (or d!1380971 b_lambda!152397)))

(declare-fun bs!836573 () Bool)

(declare-fun d!1381559 () Bool)

(assert (= bs!836573 (and d!1381559 d!1380971)))

(assert (=> bs!836573 (= (dynLambda!21109 lambda!168770 (h!56368 (toList!4259 lt!1680973))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lt!1680973)))))))

(assert (=> bs!836573 m!5231179))

(assert (=> b!4500639 d!1381559))

(declare-fun b_lambda!152399 () Bool)

(assert (= b_lambda!152329 (or d!1380929 b_lambda!152399)))

(declare-fun bs!836574 () Bool)

(declare-fun d!1381561 () Bool)

(assert (= bs!836574 (and d!1381561 d!1380929)))

(assert (=> bs!836574 (= (dynLambda!21110 lambda!168760 (h!56367 newBucket!178)) (= (hash!2691 hashF!1107 (_1!28763 (h!56367 newBucket!178))) hash!344))))

(declare-fun m!5232307 () Bool)

(assert (=> bs!836574 m!5232307))

(assert (=> b!4500345 d!1381561))

(declare-fun b_lambda!152401 () Bool)

(assert (= b_lambda!152351 (or d!1380959 b_lambda!152401)))

(declare-fun bs!836576 () Bool)

(declare-fun d!1381563 () Bool)

(assert (= bs!836576 (and d!1381563 d!1380959)))

(assert (=> bs!836576 (= (dynLambda!21109 lambda!168766 (h!56368 (toList!4259 lm!1477))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lm!1477)))))))

(assert (=> bs!836576 m!5230635))

(assert (=> b!4500694 d!1381563))

(declare-fun b_lambda!152403 () Bool)

(assert (= b_lambda!152347 (or d!1380969 b_lambda!152403)))

(declare-fun bs!836578 () Bool)

(declare-fun d!1381565 () Bool)

(assert (= bs!836578 (and d!1381565 d!1380969)))

(assert (=> bs!836578 (= (dynLambda!21109 lambda!168767 (h!56368 (toList!4259 lt!1680963))) (noDuplicateKeys!1126 (_2!28764 (h!56368 (toList!4259 lt!1680963)))))))

(assert (=> bs!836578 m!5230747))

(assert (=> b!4500635 d!1381565))

(check-sat (not d!1381533) (not bm!313314) (not bm!313238) (not d!1381277) (not d!1381301) (not b!4500198) (not d!1381443) (not d!1381331) (not b!4500589) (not d!1381107) (not d!1381055) (not b!4500954) (not b!4500943) (not b!4501040) (not d!1381299) (not b!4500757) (not b!4500365) (not b!4501013) (not b!4500591) (not b!4500205) (not b!4500627) (not d!1381319) (not b!4501059) (not bm!313247) (not bm!313312) (not b!4500791) (not b!4500600) (not d!1381155) (not d!1381309) (not d!1381079) (not b!4500235) (not bm!313248) (not b!4500684) (not b!4500614) (not b_lambda!152317) (not d!1381073) (not b!4500787) (not d!1381469) (not b!4500349) (not b!4500677) (not b!4500691) (not b_lambda!152399) (not d!1381249) (not b!4500998) (not d!1381103) (not b!4500952) (not d!1381239) (not b!4500384) (not bm!313315) (not b_lambda!152397) (not b!4500421) (not b!4500265) (not b!4500540) (not d!1381003) (not d!1381031) (not b!4500592) (not bm!313230) (not b!4500781) (not b!4500471) (not b!4500226) (not b!4500250) (not b!4500780) (not d!1381089) (not d!1381161) (not d!1381047) (not d!1381165) (not b!4500327) (not b!4500693) (not bs!836567) (not b!4500959) (not d!1381293) (not b!4501022) (not b!4501027) (not b!4500402) (not d!1381473) (not bm!313244) (not bs!836565) (not b_lambda!152377) (not b!4500957) (not d!1381059) (not bs!836576) (not b!4500587) (not bs!836569) (not d!1381275) (not b!4500594) (not bm!313317) (not bm!313240) (not bm!313324) (not d!1381087) (not b_lambda!152403) (not b!4500346) (not b!4500717) (not b!4500417) (not b!4500947) (not b!4500468) (not d!1381451) (not d!1381483) (not b!4500371) (not b_lambda!152393) (not b!4500593) (not b_lambda!152383) (not d!1381337) (not bm!313218) (not b!4500597) (not d!1381273) (not b!4501048) (not b!4500671) tp_is_empty!27781 (not b!4500410) (not b_lambda!152389) (not b!4500200) (not b!4500330) (not d!1381065) (not b!4500291) (not b!4500681) (not d!1381429) (not b!4500608) (not b!4500316) (not b!4500953) (not b!4500686) (not b!4501057) (not b_lambda!152379) (not b!4501045) (not b!4500690) (not bs!836560) (not b!4500443) (not b!4500404) (not b!4500369) (not b!4500705) (not b!4501096) (not b!4500333) (not b!4501005) (not b!4500598) (not b!4500272) (not b!4500994) (not b!4500788) tp_is_empty!27783 (not b!4500777) (not d!1381333) (not b!4500710) (not b!4500284) (not d!1381325) (not d!1381125) (not b!4500607) (not b!4500611) (not bm!313249) (not b!4500217) (not d!1381447) (not bs!836564) (not b!4500199) (not b!4500568) (not bm!313229) (not b!4500313) (not d!1381105) (not b!4500248) (not b!4500241) (not b!4500754) (not d!1381481) (not b!4501113) (not b!4500386) (not b!4500385) (not b!4500266) (not d!1381225) (not b_lambda!152319) (not bm!313239) (not bm!313217) (not b!4501008) (not b!4500229) (not b!4500278) (not b!4500269) (not b!4500262) (not b!4500617) (not d!1381295) (not b!4500955) (not b!4501100) (not b!4500332) (not b!4500714) (not b!4500790) (not d!1381135) (not b!4501094) (not d!1381329) (not b!4500967) (not b!4500775) (not b_lambda!152395) (not bm!313325) (not d!1381043) (not b!4500452) (not b!4500566) (not bm!313286) (not d!1381061) (not d!1381289) (not b!4500351) (not b!4500707) (not b!4500232) (not bs!836571) (not d!1381053) (not b!4500364) (not b!4500595) (not b!4500340) (not b!4500367) (not b!4500785) (not b!4500328) (not bs!836578) (not b!4500224) (not d!1381339) (not b_lambda!152387) (not bm!313231) (not b!4500723) (not b!4500634) (not d!1381305) (not b!4500698) (not b!4500719) (not b!4500640) (not b!4501114) (not b!4500418) (not d!1381083) (not b!4500383) (not d!1381095) (not b!4500759) (not bm!313250) (not bs!836563) (not b!4500419) (not d!1381313) (not bm!313268) (not b!4500264) (not b!4500396) (not bm!313326) (not bs!836572) (not b!4500722) (not b!4500636) (not b!4500789) (not bm!313219) (not b!4501097) (not d!1381075) (not b!4500290) (not d!1381069) (not bm!313273) (not d!1381091) (not b!4500348) (not b!4501015) (not d!1381435) (not b_lambda!152385) (not b!4501058) (not b!4500534) (not b!4501115) (not b!4500987) (not b!4500984) (not b!4500638) (not d!1381199) (not b!4500605) (not b!4500776) (not b!4500336) (not bs!836574) (not d!1381063) (not b!4501104) (not b!4500676) (not d!1381245) (not b!4500319) (not b!4500689) (not d!1381229) (not bm!313313) (not b!4500377) (not d!1381081) (not d!1381131) (not b!4500394) (not b!4501039) (not b!4500669) (not bs!836570) (not d!1381051) (not b!4501020) (not b!4500536) (not b!4501042) (not d!1381099) (not b_lambda!152381) (not b!4500249) (not b!4500990) (not b!4500692) (not b!4500784) (not b!4500329) (not bs!836573) (not b!4500672) (not b!4500695) (not b!4500254) (not d!1381493) (not b!4500279) (not b!4500675) (not b!4500969) (not d!1381241) (not b!4500679) (not bm!313228) (not b!4500535) (not b!4500687) (not b!4500539) (not d!1381041) (not d!1381525) (not b!4500368) (not d!1381535) (not bm!313316) (not bm!313323) (not b_lambda!152401) (not b!4500347) (not d!1381121) (not b!4501107) (not b!4500758) (not b!4500586) (not b!4500407) (not b!4500263) (not d!1381133) (not b!4500682) (not b!4500950) (not b!4500718) (not b!4500260) (not d!1381221) (not b!4500401) (not b!4500202) (not b!4500670) (not d!1381445) (not d!1381279) (not b!4501061) (not d!1381171) (not b!4501000) (not d!1381119) (not d!1381285) (not b!4500399) (not b!4500281) (not b!4500960) (not b_lambda!152391) (not b!4500370) (not b!4500756))
(check-sat)
