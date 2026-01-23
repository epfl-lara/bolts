; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!452084 () Bool)

(assert start!452084)

(declare-fun b!4548561 () Bool)

(declare-fun res!1896706 () Bool)

(declare-fun e!2834693 () Bool)

(assert (=> b!4548561 (=> res!1896706 e!2834693)))

(declare-datatypes ((K!12205 0))(
  ( (K!12206 (val!18035 Int)) )
))
(declare-datatypes ((V!12451 0))(
  ( (V!12452 (val!18036 Int)) )
))
(declare-datatypes ((tuple2!51338 0))(
  ( (tuple2!51339 (_1!28963 K!12205) (_2!28963 V!12451)) )
))
(declare-datatypes ((List!50945 0))(
  ( (Nil!50821) (Cons!50821 (h!56718 tuple2!51338) (t!357911 List!50945)) )
))
(declare-datatypes ((tuple2!51340 0))(
  ( (tuple2!51341 (_1!28964 (_ BitVec 64)) (_2!28964 List!50945)) )
))
(declare-datatypes ((List!50946 0))(
  ( (Nil!50822) (Cons!50822 (h!56719 tuple2!51340) (t!357912 List!50946)) )
))
(declare-datatypes ((ListLongMap!3091 0))(
  ( (ListLongMap!3092 (toList!4459 List!50946)) )
))
(declare-fun lm!1477 () ListLongMap!3091)

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4548561 (= res!1896706 (or ((_ is Nil!50822) (toList!4459 lm!1477)) (not (= (_1!28964 (h!56719 (toList!4459 lm!1477))) hash!344))))))

(declare-fun b!4548562 () Bool)

(declare-fun e!2834691 () Bool)

(declare-fun e!2834694 () Bool)

(assert (=> b!4548562 (= e!2834691 e!2834694)))

(declare-fun res!1896702 () Bool)

(assert (=> b!4548562 (=> res!1896702 e!2834694)))

(declare-fun lt!1721874 () ListLongMap!3091)

(declare-fun lt!1721877 () tuple2!51340)

(declare-fun lt!1721869 () ListLongMap!3091)

(declare-fun +!1640 (ListLongMap!3091 tuple2!51340) ListLongMap!3091)

(assert (=> b!4548562 (= res!1896702 (not (= lt!1721869 (+!1640 lt!1721874 lt!1721877))))))

(declare-fun tail!7833 (ListLongMap!3091) ListLongMap!3091)

(assert (=> b!4548562 (= lt!1721874 (tail!7833 lm!1477))))

(declare-fun b!4548563 () Bool)

(declare-datatypes ((Unit!99879 0))(
  ( (Unit!99880) )
))
(declare-fun e!2834692 () Unit!99879)

(declare-fun Unit!99881 () Unit!99879)

(assert (=> b!4548563 (= e!2834692 Unit!99881)))

(declare-datatypes ((Hashable!5621 0))(
  ( (HashableExt!5620 (__x!31324 Int)) )
))
(declare-fun hashF!1107 () Hashable!5621)

(declare-fun lt!1721878 () Unit!99879)

(declare-fun key!3287 () K!12205)

(declare-fun lemmaInGenMapThenLongMapContainsHash!300 (ListLongMap!3091 K!12205 Hashable!5621) Unit!99879)

(assert (=> b!4548563 (= lt!1721878 (lemmaInGenMapThenLongMapContainsHash!300 lt!1721874 key!3287 hashF!1107))))

(declare-fun res!1896709 () Bool)

(declare-fun lt!1721867 () (_ BitVec 64))

(declare-fun contains!13654 (ListLongMap!3091 (_ BitVec 64)) Bool)

(assert (=> b!4548563 (= res!1896709 (contains!13654 lt!1721874 lt!1721867))))

(declare-fun e!2834698 () Bool)

(assert (=> b!4548563 (=> (not res!1896709) (not e!2834698))))

(assert (=> b!4548563 e!2834698))

(declare-fun b!4548564 () Bool)

(declare-fun e!2834696 () Unit!99879)

(declare-fun Unit!99882 () Unit!99879)

(assert (=> b!4548564 (= e!2834696 Unit!99882)))

(declare-fun lt!1721866 () Unit!99879)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!214 (ListLongMap!3091 K!12205 Hashable!5621) Unit!99879)

(assert (=> b!4548564 (= lt!1721866 (lemmaNotInItsHashBucketThenNotInMap!214 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4548564 false))

(declare-fun b!4548566 () Bool)

(declare-fun res!1896699 () Bool)

(assert (=> b!4548566 (=> res!1896699 e!2834693)))

(declare-fun newBucket!178 () List!50945)

(declare-fun noDuplicateKeys!1226 (List!50945) Bool)

(assert (=> b!4548566 (= res!1896699 (not (noDuplicateKeys!1226 newBucket!178)))))

(declare-fun tp_is_empty!28181 () Bool)

(declare-fun tp_is_empty!28183 () Bool)

(declare-fun b!4548567 () Bool)

(declare-fun tp!1338971 () Bool)

(declare-fun e!2834689 () Bool)

(assert (=> b!4548567 (= e!2834689 (and tp_is_empty!28181 tp_is_empty!28183 tp!1338971))))

(declare-fun b!4548568 () Bool)

(declare-fun e!2834699 () Bool)

(declare-fun lt!1721861 () Bool)

(assert (=> b!4548568 (= e!2834699 (not lt!1721861))))

(declare-fun lt!1721875 () Unit!99879)

(assert (=> b!4548568 (= lt!1721875 e!2834692)))

(declare-fun c!777125 () Bool)

(assert (=> b!4548568 (= c!777125 lt!1721861)))

(declare-datatypes ((ListMap!3721 0))(
  ( (ListMap!3722 (toList!4460 List!50945)) )
))
(declare-fun lt!1721860 () ListMap!3721)

(declare-fun contains!13655 (ListMap!3721 K!12205) Bool)

(assert (=> b!4548568 (= lt!1721861 (contains!13655 lt!1721860 key!3287))))

(declare-fun b!4548569 () Bool)

(declare-fun e!2834688 () Bool)

(declare-fun tp!1338970 () Bool)

(assert (=> b!4548569 (= e!2834688 tp!1338970)))

(declare-fun b!4548570 () Bool)

(declare-fun e!2834687 () Bool)

(assert (=> b!4548570 (= e!2834687 e!2834691)))

(declare-fun res!1896703 () Bool)

(assert (=> b!4548570 (=> res!1896703 e!2834691)))

(declare-fun tail!7834 (List!50946) List!50946)

(assert (=> b!4548570 (= res!1896703 (not (= (t!357912 (toList!4459 lm!1477)) (tail!7834 (toList!4459 lt!1721869)))))))

(assert (=> b!4548570 (= lt!1721869 (+!1640 lm!1477 lt!1721877))))

(declare-fun eq!677 (ListMap!3721 ListMap!3721) Bool)

(declare-fun extractMap!1282 (List!50946) ListMap!3721)

(declare-fun -!446 (ListMap!3721 K!12205) ListMap!3721)

(assert (=> b!4548570 (eq!677 (extractMap!1282 (Cons!50822 lt!1721877 Nil!50822)) (-!446 (extractMap!1282 (Cons!50822 (tuple2!51341 hash!344 (_2!28964 (h!56719 (toList!4459 lm!1477)))) Nil!50822)) key!3287))))

(assert (=> b!4548570 (= lt!1721877 (tuple2!51341 hash!344 newBucket!178))))

(declare-fun lt!1721871 () Unit!99879)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!66 ((_ BitVec 64) List!50945 List!50945 K!12205 Hashable!5621) Unit!99879)

(assert (=> b!4548570 (= lt!1721871 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!66 hash!344 (_2!28964 (h!56719 (toList!4459 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1721863 () List!50946)

(assert (=> b!4548570 (contains!13655 (extractMap!1282 lt!1721863) key!3287)))

(declare-fun lt!1721862 () Unit!99879)

(declare-fun lemmaListContainsThenExtractedMapContains!192 (ListLongMap!3091 K!12205 Hashable!5621) Unit!99879)

(assert (=> b!4548570 (= lt!1721862 (lemmaListContainsThenExtractedMapContains!192 (ListLongMap!3092 lt!1721863) key!3287 hashF!1107))))

(declare-fun b!4548571 () Bool)

(declare-fun res!1896700 () Bool)

(declare-fun e!2834695 () Bool)

(assert (=> b!4548571 (=> (not res!1896700) (not e!2834695))))

(assert (=> b!4548571 (= res!1896700 (contains!13655 (extractMap!1282 (toList!4459 lm!1477)) key!3287))))

(declare-fun b!4548572 () Bool)

(declare-fun res!1896707 () Bool)

(assert (=> b!4548572 (=> (not res!1896707) (not e!2834695))))

(declare-fun allKeysSameHashInMap!1333 (ListLongMap!3091 Hashable!5621) Bool)

(assert (=> b!4548572 (= res!1896707 (allKeysSameHashInMap!1333 lm!1477 hashF!1107))))

(declare-fun b!4548573 () Bool)

(declare-fun e!2834697 () Bool)

(assert (=> b!4548573 (= e!2834697 (not e!2834693))))

(declare-fun res!1896711 () Bool)

(assert (=> b!4548573 (=> res!1896711 e!2834693)))

(declare-fun lt!1721876 () List!50945)

(declare-fun removePairForKey!853 (List!50945 K!12205) List!50945)

(assert (=> b!4548573 (= res!1896711 (not (= newBucket!178 (removePairForKey!853 lt!1721876 key!3287))))))

(declare-fun lt!1721870 () tuple2!51340)

(declare-fun lambda!177761 () Int)

(declare-fun lt!1721873 () Unit!99879)

(declare-fun forallContained!2659 (List!50946 Int tuple2!51340) Unit!99879)

(assert (=> b!4548573 (= lt!1721873 (forallContained!2659 (toList!4459 lm!1477) lambda!177761 lt!1721870))))

(declare-fun contains!13656 (List!50946 tuple2!51340) Bool)

(assert (=> b!4548573 (contains!13656 (toList!4459 lm!1477) lt!1721870)))

(assert (=> b!4548573 (= lt!1721870 (tuple2!51341 hash!344 lt!1721876))))

(declare-fun lt!1721872 () Unit!99879)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!738 (List!50946 (_ BitVec 64) List!50945) Unit!99879)

(assert (=> b!4548573 (= lt!1721872 (lemmaGetValueByKeyImpliesContainsTuple!738 (toList!4459 lm!1477) hash!344 lt!1721876))))

(declare-fun apply!11963 (ListLongMap!3091 (_ BitVec 64)) List!50945)

(assert (=> b!4548573 (= lt!1721876 (apply!11963 lm!1477 hash!344))))

(assert (=> b!4548573 (contains!13654 lm!1477 lt!1721867)))

(declare-fun lt!1721864 () Unit!99879)

(assert (=> b!4548573 (= lt!1721864 (lemmaInGenMapThenLongMapContainsHash!300 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1896701 () Bool)

(assert (=> start!452084 (=> (not res!1896701) (not e!2834695))))

(declare-fun forall!10395 (List!50946 Int) Bool)

(assert (=> start!452084 (= res!1896701 (forall!10395 (toList!4459 lm!1477) lambda!177761))))

(assert (=> start!452084 e!2834695))

(assert (=> start!452084 true))

(declare-fun inv!66389 (ListLongMap!3091) Bool)

(assert (=> start!452084 (and (inv!66389 lm!1477) e!2834688)))

(assert (=> start!452084 tp_is_empty!28181))

(assert (=> start!452084 e!2834689))

(declare-fun b!4548565 () Bool)

(assert (=> b!4548565 (= e!2834694 e!2834699)))

(declare-fun res!1896708 () Bool)

(assert (=> b!4548565 (=> res!1896708 e!2834699)))

(assert (=> b!4548565 (= res!1896708 (not (= lt!1721860 (extractMap!1282 (t!357912 (toList!4459 lm!1477))))))))

(assert (=> b!4548565 (= lt!1721860 (extractMap!1282 (toList!4459 lt!1721874)))))

(declare-fun b!4548574 () Bool)

(declare-fun e!2834690 () Bool)

(assert (=> b!4548574 (= e!2834690 e!2834687)))

(declare-fun res!1896705 () Bool)

(assert (=> b!4548574 (=> res!1896705 e!2834687)))

(declare-fun containsKeyBiggerList!204 (List!50946 K!12205) Bool)

(assert (=> b!4548574 (= res!1896705 (not (containsKeyBiggerList!204 lt!1721863 key!3287)))))

(assert (=> b!4548574 (= lt!1721863 (Cons!50822 (h!56719 (toList!4459 lm!1477)) Nil!50822))))

(declare-fun b!4548575 () Bool)

(declare-fun Unit!99883 () Unit!99879)

(assert (=> b!4548575 (= e!2834696 Unit!99883)))

(declare-fun b!4548576 () Bool)

(assert (=> b!4548576 (= e!2834695 e!2834697)))

(declare-fun res!1896710 () Bool)

(assert (=> b!4548576 (=> (not res!1896710) (not e!2834697))))

(assert (=> b!4548576 (= res!1896710 (= lt!1721867 hash!344))))

(declare-fun hash!2980 (Hashable!5621 K!12205) (_ BitVec 64))

(assert (=> b!4548576 (= lt!1721867 (hash!2980 hashF!1107 key!3287))))

(declare-fun b!4548577 () Bool)

(declare-fun Unit!99884 () Unit!99879)

(assert (=> b!4548577 (= e!2834692 Unit!99884)))

(declare-fun b!4548578 () Bool)

(declare-fun res!1896704 () Bool)

(assert (=> b!4548578 (=> (not res!1896704) (not e!2834697))))

(declare-fun allKeysSameHash!1080 (List!50945 (_ BitVec 64) Hashable!5621) Bool)

(assert (=> b!4548578 (= res!1896704 (allKeysSameHash!1080 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4548579 () Bool)

(assert (=> b!4548579 (= e!2834698 false)))

(declare-fun b!4548580 () Bool)

(assert (=> b!4548580 (= e!2834693 e!2834690)))

(declare-fun res!1896712 () Bool)

(assert (=> b!4548580 (=> res!1896712 e!2834690)))

(declare-fun lt!1721865 () Bool)

(assert (=> b!4548580 (= res!1896712 lt!1721865)))

(declare-fun lt!1721868 () Unit!99879)

(assert (=> b!4548580 (= lt!1721868 e!2834696)))

(declare-fun c!777124 () Bool)

(assert (=> b!4548580 (= c!777124 lt!1721865)))

(declare-fun containsKey!1933 (List!50945 K!12205) Bool)

(assert (=> b!4548580 (= lt!1721865 (not (containsKey!1933 (_2!28964 (h!56719 (toList!4459 lm!1477))) key!3287)))))

(assert (= (and start!452084 res!1896701) b!4548572))

(assert (= (and b!4548572 res!1896707) b!4548571))

(assert (= (and b!4548571 res!1896700) b!4548576))

(assert (= (and b!4548576 res!1896710) b!4548578))

(assert (= (and b!4548578 res!1896704) b!4548573))

(assert (= (and b!4548573 (not res!1896711)) b!4548566))

(assert (= (and b!4548566 (not res!1896699)) b!4548561))

(assert (= (and b!4548561 (not res!1896706)) b!4548580))

(assert (= (and b!4548580 c!777124) b!4548564))

(assert (= (and b!4548580 (not c!777124)) b!4548575))

(assert (= (and b!4548580 (not res!1896712)) b!4548574))

(assert (= (and b!4548574 (not res!1896705)) b!4548570))

(assert (= (and b!4548570 (not res!1896703)) b!4548562))

(assert (= (and b!4548562 (not res!1896702)) b!4548565))

(assert (= (and b!4548565 (not res!1896708)) b!4548568))

(assert (= (and b!4548568 c!777125) b!4548563))

(assert (= (and b!4548568 (not c!777125)) b!4548577))

(assert (= (and b!4548563 res!1896709) b!4548579))

(assert (= start!452084 b!4548569))

(assert (= (and start!452084 ((_ is Cons!50821) newBucket!178)) b!4548567))

(declare-fun m!5321933 () Bool)

(assert (=> b!4548573 m!5321933))

(declare-fun m!5321935 () Bool)

(assert (=> b!4548573 m!5321935))

(declare-fun m!5321937 () Bool)

(assert (=> b!4548573 m!5321937))

(declare-fun m!5321939 () Bool)

(assert (=> b!4548573 m!5321939))

(declare-fun m!5321941 () Bool)

(assert (=> b!4548573 m!5321941))

(declare-fun m!5321943 () Bool)

(assert (=> b!4548573 m!5321943))

(declare-fun m!5321945 () Bool)

(assert (=> b!4548573 m!5321945))

(declare-fun m!5321947 () Bool)

(assert (=> b!4548562 m!5321947))

(declare-fun m!5321949 () Bool)

(assert (=> b!4548562 m!5321949))

(declare-fun m!5321951 () Bool)

(assert (=> b!4548576 m!5321951))

(declare-fun m!5321953 () Bool)

(assert (=> b!4548574 m!5321953))

(declare-fun m!5321955 () Bool)

(assert (=> b!4548564 m!5321955))

(declare-fun m!5321957 () Bool)

(assert (=> b!4548563 m!5321957))

(declare-fun m!5321959 () Bool)

(assert (=> b!4548563 m!5321959))

(declare-fun m!5321961 () Bool)

(assert (=> start!452084 m!5321961))

(declare-fun m!5321963 () Bool)

(assert (=> start!452084 m!5321963))

(declare-fun m!5321965 () Bool)

(assert (=> b!4548566 m!5321965))

(declare-fun m!5321967 () Bool)

(assert (=> b!4548570 m!5321967))

(declare-fun m!5321969 () Bool)

(assert (=> b!4548570 m!5321969))

(declare-fun m!5321971 () Bool)

(assert (=> b!4548570 m!5321971))

(assert (=> b!4548570 m!5321969))

(declare-fun m!5321973 () Bool)

(assert (=> b!4548570 m!5321973))

(declare-fun m!5321975 () Bool)

(assert (=> b!4548570 m!5321975))

(declare-fun m!5321977 () Bool)

(assert (=> b!4548570 m!5321977))

(declare-fun m!5321979 () Bool)

(assert (=> b!4548570 m!5321979))

(declare-fun m!5321981 () Bool)

(assert (=> b!4548570 m!5321981))

(assert (=> b!4548570 m!5321967))

(assert (=> b!4548570 m!5321971))

(assert (=> b!4548570 m!5321975))

(declare-fun m!5321983 () Bool)

(assert (=> b!4548570 m!5321983))

(declare-fun m!5321985 () Bool)

(assert (=> b!4548570 m!5321985))

(declare-fun m!5321987 () Bool)

(assert (=> b!4548571 m!5321987))

(assert (=> b!4548571 m!5321987))

(declare-fun m!5321989 () Bool)

(assert (=> b!4548571 m!5321989))

(declare-fun m!5321991 () Bool)

(assert (=> b!4548578 m!5321991))

(declare-fun m!5321993 () Bool)

(assert (=> b!4548568 m!5321993))

(declare-fun m!5321995 () Bool)

(assert (=> b!4548572 m!5321995))

(declare-fun m!5321997 () Bool)

(assert (=> b!4548565 m!5321997))

(declare-fun m!5321999 () Bool)

(assert (=> b!4548565 m!5321999))

(declare-fun m!5322001 () Bool)

(assert (=> b!4548580 m!5322001))

(check-sat (not b!4548580) tp_is_empty!28183 (not b!4548572) (not b!4548563) (not b!4548562) (not b!4548570) (not start!452084) (not b!4548578) (not b!4548569) (not b!4548573) tp_is_empty!28181 (not b!4548566) (not b!4548571) (not b!4548565) (not b!4548564) (not b!4548576) (not b!4548574) (not b!4548568) (not b!4548567))
(check-sat)
