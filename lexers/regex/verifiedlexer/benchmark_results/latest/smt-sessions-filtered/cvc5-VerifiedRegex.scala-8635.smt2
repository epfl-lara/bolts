; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461014 () Bool)

(assert start!461014)

(declare-fun b!4609747 () Bool)

(declare-fun e!2875518 () Bool)

(declare-fun e!2875526 () Bool)

(assert (=> b!4609747 (= e!2875518 e!2875526)))

(declare-fun res!1929788 () Bool)

(assert (=> b!4609747 (=> res!1929788 e!2875526)))

(declare-datatypes ((K!12578 0))(
  ( (K!12579 (val!18333 Int)) )
))
(declare-datatypes ((V!12824 0))(
  ( (V!12825 (val!18334 Int)) )
))
(declare-datatypes ((tuple2!51934 0))(
  ( (tuple2!51935 (_1!29261 K!12578) (_2!29261 V!12824)) )
))
(declare-datatypes ((List!51335 0))(
  ( (Nil!51211) (Cons!51211 (h!57203 tuple2!51934) (t!358329 List!51335)) )
))
(declare-datatypes ((ListMap!4019 0))(
  ( (ListMap!4020 (toList!4757 List!51335)) )
))
(declare-fun lt!1766179 () ListMap!4019)

(declare-fun lt!1766180 () ListMap!4019)

(declare-fun eq!744 (ListMap!4019 ListMap!4019) Bool)

(assert (=> b!4609747 (= res!1929788 (not (eq!744 lt!1766179 lt!1766180)))))

(declare-fun lt!1766183 () ListMap!4019)

(assert (=> b!4609747 (eq!744 lt!1766183 lt!1766180)))

(declare-datatypes ((tuple2!51936 0))(
  ( (tuple2!51937 (_1!29262 (_ BitVec 64)) (_2!29262 List!51335)) )
))
(declare-fun lt!1766185 () tuple2!51936)

(declare-fun lt!1766174 () ListMap!4019)

(declare-fun addToMapMapFromBucket!841 (List!51335 ListMap!4019) ListMap!4019)

(assert (=> b!4609747 (= lt!1766180 (addToMapMapFromBucket!841 (_2!29262 lt!1766185) lt!1766174))))

(declare-datatypes ((Unit!109335 0))(
  ( (Unit!109336) )
))
(declare-fun lt!1766172 () Unit!109335)

(declare-fun lt!1766186 () ListMap!4019)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!103 (ListMap!4019 ListMap!4019 List!51335) Unit!109335)

(assert (=> b!4609747 (= lt!1766172 (lemmaAddToMapFromBucketPreservesEquivalence!103 lt!1766186 lt!1766174 (_2!29262 lt!1766185)))))

(declare-fun b!4609748 () Bool)

(declare-fun res!1929774 () Bool)

(declare-fun e!2875514 () Bool)

(assert (=> b!4609748 (=> res!1929774 e!2875514)))

(declare-fun key!3287 () K!12578)

(declare-fun containsKey!2261 (List!51335 K!12578) Bool)

(assert (=> b!4609748 (= res!1929774 (not (containsKey!2261 (_2!29262 lt!1766185) key!3287)))))

(declare-fun b!4609749 () Bool)

(declare-fun e!2875512 () Unit!109335)

(declare-fun Unit!109337 () Unit!109335)

(assert (=> b!4609749 (= e!2875512 Unit!109337)))

(declare-datatypes ((Hashable!5770 0))(
  ( (HashableExt!5769 (__x!31473 Int)) )
))
(declare-fun hashF!1107 () Hashable!5770)

(declare-datatypes ((List!51336 0))(
  ( (Nil!51212) (Cons!51212 (h!57204 tuple2!51936) (t!358330 List!51336)) )
))
(declare-datatypes ((ListLongMap!3389 0))(
  ( (ListLongMap!3390 (toList!4758 List!51336)) )
))
(declare-fun lm!1477 () ListLongMap!3389)

(declare-fun lt!1766178 () Unit!109335)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!335 (ListLongMap!3389 K!12578 Hashable!5770) Unit!109335)

(assert (=> b!4609749 (= lt!1766178 (lemmaNotInItsHashBucketThenNotInMap!335 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4609749 false))

(declare-fun b!4609750 () Bool)

(declare-fun res!1929786 () Bool)

(declare-fun e!2875525 () Bool)

(assert (=> b!4609750 (=> res!1929786 e!2875525)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4609750 (= res!1929786 (or (is-Nil!51212 (toList!4758 lm!1477)) (= (_1!29262 (h!57204 (toList!4758 lm!1477))) hash!344)))))

(declare-fun b!4609751 () Bool)

(declare-fun e!2875517 () Bool)

(declare-fun e!2875523 () Bool)

(assert (=> b!4609751 (= e!2875517 e!2875523)))

(declare-fun res!1929776 () Bool)

(assert (=> b!4609751 (=> res!1929776 e!2875523)))

(declare-fun lt!1766188 () ListMap!4019)

(declare-fun lt!1766175 () ListMap!4019)

(assert (=> b!4609751 (= res!1929776 (not (eq!744 lt!1766188 lt!1766175)))))

(declare-fun lt!1766182 () ListLongMap!3389)

(declare-fun extractMap!1431 (List!51336) ListMap!4019)

(declare-fun +!1781 (ListLongMap!3389 tuple2!51936) ListLongMap!3389)

(assert (=> b!4609751 (= lt!1766188 (extractMap!1431 (toList!4758 (+!1781 lt!1766182 lt!1766185))))))

(declare-fun head!9557 (ListLongMap!3389) tuple2!51936)

(assert (=> b!4609751 (= lt!1766185 (head!9557 lm!1477))))

(assert (=> b!4609751 (eq!744 lt!1766186 lt!1766174)))

(declare-fun lt!1766167 () ListMap!4019)

(declare-fun -!513 (ListMap!4019 K!12578) ListMap!4019)

(assert (=> b!4609751 (= lt!1766174 (-!513 lt!1766167 key!3287))))

(declare-fun lt!1766177 () ListLongMap!3389)

(assert (=> b!4609751 (= lt!1766186 (extractMap!1431 (toList!4758 lt!1766177)))))

(declare-fun lt!1766173 () tuple2!51936)

(assert (=> b!4609751 (= lt!1766177 (+!1781 lt!1766182 lt!1766173))))

(declare-fun newBucket!178 () List!51335)

(assert (=> b!4609751 (= lt!1766173 (tuple2!51937 hash!344 newBucket!178))))

(declare-fun lt!1766165 () Unit!109335)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!228 (ListLongMap!3389 (_ BitVec 64) List!51335 K!12578 Hashable!5770) Unit!109335)

(assert (=> b!4609751 (= lt!1766165 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!228 lt!1766182 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4609752 () Bool)

(declare-fun e!2875520 () Bool)

(declare-fun e!2875522 () Bool)

(assert (=> b!4609752 (= e!2875520 e!2875522)))

(declare-fun res!1929790 () Bool)

(assert (=> b!4609752 (=> (not res!1929790) (not e!2875522))))

(declare-fun lt!1766164 () (_ BitVec 64))

(assert (=> b!4609752 (= res!1929790 (= lt!1766164 hash!344))))

(declare-fun hash!3310 (Hashable!5770 K!12578) (_ BitVec 64))

(assert (=> b!4609752 (= lt!1766164 (hash!3310 hashF!1107 key!3287))))

(declare-fun b!4609753 () Bool)

(assert (=> b!4609753 (= e!2875514 (not (= hash!344 (_1!29262 lt!1766185))))))

(declare-fun b!4609754 () Bool)

(declare-fun e!2875521 () Bool)

(assert (=> b!4609754 (= e!2875525 e!2875521)))

(declare-fun res!1929773 () Bool)

(assert (=> b!4609754 (=> res!1929773 e!2875521)))

(declare-fun contains!14219 (ListLongMap!3389 (_ BitVec 64)) Bool)

(assert (=> b!4609754 (= res!1929773 (not (contains!14219 lt!1766182 hash!344)))))

(declare-fun tail!8030 (ListLongMap!3389) ListLongMap!3389)

(assert (=> b!4609754 (= lt!1766182 (tail!8030 lm!1477))))

(declare-fun res!1929789 () Bool)

(declare-fun e!2875511 () Bool)

(assert (=> start!461014 (=> (not res!1929789) (not e!2875511))))

(declare-fun lambda!188283 () Int)

(declare-fun forall!10693 (List!51336 Int) Bool)

(assert (=> start!461014 (= res!1929789 (forall!10693 (toList!4758 lm!1477) lambda!188283))))

(assert (=> start!461014 e!2875511))

(assert (=> start!461014 true))

(declare-fun e!2875513 () Bool)

(declare-fun inv!66763 (ListLongMap!3389) Bool)

(assert (=> start!461014 (and (inv!66763 lm!1477) e!2875513)))

(declare-fun tp_is_empty!28777 () Bool)

(assert (=> start!461014 tp_is_empty!28777))

(declare-fun e!2875516 () Bool)

(assert (=> start!461014 e!2875516))

(declare-fun b!4609755 () Bool)

(declare-fun res!1929777 () Bool)

(assert (=> b!4609755 (=> (not res!1929777) (not e!2875511))))

(declare-fun allKeysSameHashInMap!1482 (ListLongMap!3389 Hashable!5770) Bool)

(assert (=> b!4609755 (= res!1929777 (allKeysSameHashInMap!1482 lm!1477 hashF!1107))))

(declare-fun b!4609756 () Bool)

(declare-fun e!2875524 () Bool)

(assert (=> b!4609756 (= e!2875524 e!2875517)))

(declare-fun res!1929791 () Bool)

(assert (=> b!4609756 (=> res!1929791 e!2875517)))

(declare-fun contains!14220 (ListMap!4019 K!12578) Bool)

(assert (=> b!4609756 (= res!1929791 (not (contains!14220 (extractMap!1431 (t!358330 (toList!4758 lm!1477))) key!3287)))))

(assert (=> b!4609756 (contains!14220 lt!1766167 key!3287)))

(assert (=> b!4609756 (= lt!1766167 (extractMap!1431 (toList!4758 lt!1766182)))))

(declare-fun lt!1766168 () Unit!109335)

(declare-fun lemmaListContainsThenExtractedMapContains!283 (ListLongMap!3389 K!12578 Hashable!5770) Unit!109335)

(assert (=> b!4609756 (= lt!1766168 (lemmaListContainsThenExtractedMapContains!283 lt!1766182 key!3287 hashF!1107))))

(declare-fun b!4609757 () Bool)

(declare-fun e!2875515 () Bool)

(assert (=> b!4609757 (= e!2875515 e!2875524)))

(declare-fun res!1929783 () Bool)

(assert (=> b!4609757 (=> res!1929783 e!2875524)))

(declare-fun containsKeyBiggerList!311 (List!51336 K!12578) Bool)

(assert (=> b!4609757 (= res!1929783 (not (containsKeyBiggerList!311 (t!358330 (toList!4758 lm!1477)) key!3287)))))

(assert (=> b!4609757 (containsKeyBiggerList!311 (toList!4758 lt!1766182) key!3287)))

(declare-fun lt!1766176 () Unit!109335)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!181 (ListLongMap!3389 K!12578 Hashable!5770) Unit!109335)

(assert (=> b!4609757 (= lt!1766176 (lemmaInLongMapThenContainsKeyBiggerList!181 lt!1766182 key!3287 hashF!1107))))

(declare-fun b!4609758 () Bool)

(declare-fun res!1929769 () Bool)

(assert (=> b!4609758 (=> res!1929769 e!2875525)))

(declare-fun noDuplicateKeys!1371 (List!51335) Bool)

(assert (=> b!4609758 (= res!1929769 (not (noDuplicateKeys!1371 newBucket!178)))))

(declare-fun tp!1341051 () Bool)

(declare-fun tp_is_empty!28779 () Bool)

(declare-fun b!4609759 () Bool)

(assert (=> b!4609759 (= e!2875516 (and tp_is_empty!28777 tp_is_empty!28779 tp!1341051))))

(declare-fun b!4609760 () Bool)

(declare-fun res!1929781 () Bool)

(assert (=> b!4609760 (=> res!1929781 e!2875523)))

(assert (=> b!4609760 (= res!1929781 (bvsge (_1!29262 lt!1766185) hash!344))))

(declare-fun b!4609761 () Bool)

(declare-fun tp!1341050 () Bool)

(assert (=> b!4609761 (= e!2875513 tp!1341050)))

(declare-fun b!4609762 () Bool)

(declare-fun res!1929772 () Bool)

(assert (=> b!4609762 (=> res!1929772 e!2875521)))

(declare-fun lt!1766189 () List!51335)

(declare-fun apply!12108 (ListLongMap!3389 (_ BitVec 64)) List!51335)

(assert (=> b!4609762 (= res!1929772 (not (= (apply!12108 lt!1766182 hash!344) lt!1766189)))))

(declare-fun b!4609763 () Bool)

(declare-fun Unit!109338 () Unit!109335)

(assert (=> b!4609763 (= e!2875512 Unit!109338)))

(declare-fun b!4609764 () Bool)

(declare-fun res!1929787 () Bool)

(assert (=> b!4609764 (=> (not res!1929787) (not e!2875522))))

(declare-fun allKeysSameHash!1227 (List!51335 (_ BitVec 64) Hashable!5770) Bool)

(assert (=> b!4609764 (= res!1929787 (allKeysSameHash!1227 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4609765 () Bool)

(declare-fun e!2875519 () Bool)

(assert (=> b!4609765 (= e!2875523 e!2875519)))

(declare-fun res!1929784 () Bool)

(assert (=> b!4609765 (=> res!1929784 e!2875519)))

(declare-fun lt!1766166 () ListLongMap!3389)

(assert (=> b!4609765 (= res!1929784 (not (= lt!1766166 (+!1781 lm!1477 lt!1766173))))))

(assert (=> b!4609765 (= lt!1766166 (+!1781 lt!1766177 lt!1766185))))

(declare-fun b!4609766 () Bool)

(assert (=> b!4609766 (= e!2875526 e!2875514)))

(declare-fun res!1929770 () Bool)

(assert (=> b!4609766 (=> res!1929770 e!2875514)))

(assert (=> b!4609766 (= res!1929770 (not (noDuplicateKeys!1371 (_2!29262 lt!1766185))))))

(declare-fun lt!1766169 () Unit!109335)

(declare-fun forallContained!2938 (List!51336 Int tuple2!51936) Unit!109335)

(assert (=> b!4609766 (= lt!1766169 (forallContained!2938 (toList!4758 lm!1477) lambda!188283 (h!57204 (toList!4758 lm!1477))))))

(declare-fun b!4609767 () Bool)

(declare-fun res!1929779 () Bool)

(assert (=> b!4609767 (=> res!1929779 e!2875523)))

(assert (=> b!4609767 (= res!1929779 (not (eq!744 lt!1766175 lt!1766188)))))

(declare-fun b!4609768 () Bool)

(assert (=> b!4609768 (= e!2875511 e!2875520)))

(declare-fun res!1929780 () Bool)

(assert (=> b!4609768 (=> (not res!1929780) (not e!2875520))))

(assert (=> b!4609768 (= res!1929780 (contains!14220 lt!1766175 key!3287))))

(assert (=> b!4609768 (= lt!1766175 (extractMap!1431 (toList!4758 lm!1477)))))

(declare-fun b!4609769 () Bool)

(assert (=> b!4609769 (= e!2875522 (not e!2875525))))

(declare-fun res!1929778 () Bool)

(assert (=> b!4609769 (=> res!1929778 e!2875525)))

(declare-fun removePairForKey!996 (List!51335 K!12578) List!51335)

(assert (=> b!4609769 (= res!1929778 (not (= newBucket!178 (removePairForKey!996 lt!1766189 key!3287))))))

(declare-fun lt!1766181 () tuple2!51936)

(declare-fun lt!1766190 () Unit!109335)

(assert (=> b!4609769 (= lt!1766190 (forallContained!2938 (toList!4758 lm!1477) lambda!188283 lt!1766181))))

(declare-fun contains!14221 (List!51336 tuple2!51936) Bool)

(assert (=> b!4609769 (contains!14221 (toList!4758 lm!1477) lt!1766181)))

(assert (=> b!4609769 (= lt!1766181 (tuple2!51937 hash!344 lt!1766189))))

(declare-fun lt!1766170 () Unit!109335)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!881 (List!51336 (_ BitVec 64) List!51335) Unit!109335)

(assert (=> b!4609769 (= lt!1766170 (lemmaGetValueByKeyImpliesContainsTuple!881 (toList!4758 lm!1477) hash!344 lt!1766189))))

(assert (=> b!4609769 (= lt!1766189 (apply!12108 lm!1477 hash!344))))

(assert (=> b!4609769 (contains!14219 lm!1477 lt!1766164)))

(declare-fun lt!1766171 () Unit!109335)

(declare-fun lemmaInGenMapThenLongMapContainsHash!445 (ListLongMap!3389 K!12578 Hashable!5770) Unit!109335)

(assert (=> b!4609769 (= lt!1766171 (lemmaInGenMapThenLongMapContainsHash!445 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4609770 () Bool)

(assert (=> b!4609770 (= e!2875519 e!2875518)))

(declare-fun res!1929785 () Bool)

(assert (=> b!4609770 (=> res!1929785 e!2875518)))

(assert (=> b!4609770 (= res!1929785 (not (eq!744 lt!1766179 lt!1766183)))))

(assert (=> b!4609770 (= lt!1766183 (addToMapMapFromBucket!841 (_2!29262 lt!1766185) lt!1766186))))

(assert (=> b!4609770 (= lt!1766179 (extractMap!1431 (toList!4758 lt!1766166)))))

(declare-fun b!4609771 () Bool)

(declare-fun res!1929782 () Bool)

(assert (=> b!4609771 (=> res!1929782 e!2875521)))

(assert (=> b!4609771 (= res!1929782 (not (contains!14221 (t!358330 (toList!4758 lm!1477)) lt!1766181)))))

(declare-fun b!4609772 () Bool)

(assert (=> b!4609772 (= e!2875521 e!2875515)))

(declare-fun res!1929775 () Bool)

(assert (=> b!4609772 (=> res!1929775 e!2875515)))

(declare-fun lt!1766187 () Bool)

(assert (=> b!4609772 (= res!1929775 lt!1766187)))

(declare-fun lt!1766184 () Unit!109335)

(assert (=> b!4609772 (= lt!1766184 e!2875512)))

(declare-fun c!789631 () Bool)

(assert (=> b!4609772 (= c!789631 lt!1766187)))

(assert (=> b!4609772 (= lt!1766187 (not (containsKey!2261 lt!1766189 key!3287)))))

(declare-fun b!4609773 () Bool)

(declare-fun res!1929771 () Bool)

(assert (=> b!4609773 (=> res!1929771 e!2875519)))

(assert (=> b!4609773 (= res!1929771 (not (= (head!9557 lt!1766166) lt!1766185)))))

(assert (= (and start!461014 res!1929789) b!4609755))

(assert (= (and b!4609755 res!1929777) b!4609768))

(assert (= (and b!4609768 res!1929780) b!4609752))

(assert (= (and b!4609752 res!1929790) b!4609764))

(assert (= (and b!4609764 res!1929787) b!4609769))

(assert (= (and b!4609769 (not res!1929778)) b!4609758))

(assert (= (and b!4609758 (not res!1929769)) b!4609750))

(assert (= (and b!4609750 (not res!1929786)) b!4609754))

(assert (= (and b!4609754 (not res!1929773)) b!4609762))

(assert (= (and b!4609762 (not res!1929772)) b!4609771))

(assert (= (and b!4609771 (not res!1929782)) b!4609772))

(assert (= (and b!4609772 c!789631) b!4609749))

(assert (= (and b!4609772 (not c!789631)) b!4609763))

(assert (= (and b!4609772 (not res!1929775)) b!4609757))

(assert (= (and b!4609757 (not res!1929783)) b!4609756))

(assert (= (and b!4609756 (not res!1929791)) b!4609751))

(assert (= (and b!4609751 (not res!1929776)) b!4609767))

(assert (= (and b!4609767 (not res!1929779)) b!4609760))

(assert (= (and b!4609760 (not res!1929781)) b!4609765))

(assert (= (and b!4609765 (not res!1929784)) b!4609773))

(assert (= (and b!4609773 (not res!1929771)) b!4609770))

(assert (= (and b!4609770 (not res!1929785)) b!4609747))

(assert (= (and b!4609747 (not res!1929788)) b!4609766))

(assert (= (and b!4609766 (not res!1929770)) b!4609748))

(assert (= (and b!4609748 (not res!1929774)) b!4609753))

(assert (= start!461014 b!4609761))

(assert (= (and start!461014 (is-Cons!51211 newBucket!178)) b!4609759))

(declare-fun m!5440819 () Bool)

(assert (=> b!4609756 m!5440819))

(declare-fun m!5440821 () Bool)

(assert (=> b!4609756 m!5440821))

(assert (=> b!4609756 m!5440819))

(declare-fun m!5440823 () Bool)

(assert (=> b!4609756 m!5440823))

(declare-fun m!5440825 () Bool)

(assert (=> b!4609756 m!5440825))

(declare-fun m!5440827 () Bool)

(assert (=> b!4609756 m!5440827))

(declare-fun m!5440829 () Bool)

(assert (=> b!4609747 m!5440829))

(declare-fun m!5440831 () Bool)

(assert (=> b!4609747 m!5440831))

(declare-fun m!5440833 () Bool)

(assert (=> b!4609747 m!5440833))

(declare-fun m!5440835 () Bool)

(assert (=> b!4609747 m!5440835))

(declare-fun m!5440837 () Bool)

(assert (=> b!4609754 m!5440837))

(declare-fun m!5440839 () Bool)

(assert (=> b!4609754 m!5440839))

(declare-fun m!5440841 () Bool)

(assert (=> b!4609749 m!5440841))

(declare-fun m!5440843 () Bool)

(assert (=> b!4609764 m!5440843))

(declare-fun m!5440845 () Bool)

(assert (=> b!4609762 m!5440845))

(declare-fun m!5440847 () Bool)

(assert (=> start!461014 m!5440847))

(declare-fun m!5440849 () Bool)

(assert (=> start!461014 m!5440849))

(declare-fun m!5440851 () Bool)

(assert (=> b!4609767 m!5440851))

(declare-fun m!5440853 () Bool)

(assert (=> b!4609771 m!5440853))

(declare-fun m!5440855 () Bool)

(assert (=> b!4609765 m!5440855))

(declare-fun m!5440857 () Bool)

(assert (=> b!4609765 m!5440857))

(declare-fun m!5440859 () Bool)

(assert (=> b!4609766 m!5440859))

(declare-fun m!5440861 () Bool)

(assert (=> b!4609766 m!5440861))

(declare-fun m!5440863 () Bool)

(assert (=> b!4609773 m!5440863))

(declare-fun m!5440865 () Bool)

(assert (=> b!4609772 m!5440865))

(declare-fun m!5440867 () Bool)

(assert (=> b!4609748 m!5440867))

(declare-fun m!5440869 () Bool)

(assert (=> b!4609757 m!5440869))

(declare-fun m!5440871 () Bool)

(assert (=> b!4609757 m!5440871))

(declare-fun m!5440873 () Bool)

(assert (=> b!4609757 m!5440873))

(declare-fun m!5440875 () Bool)

(assert (=> b!4609751 m!5440875))

(declare-fun m!5440877 () Bool)

(assert (=> b!4609751 m!5440877))

(declare-fun m!5440879 () Bool)

(assert (=> b!4609751 m!5440879))

(declare-fun m!5440881 () Bool)

(assert (=> b!4609751 m!5440881))

(declare-fun m!5440883 () Bool)

(assert (=> b!4609751 m!5440883))

(declare-fun m!5440885 () Bool)

(assert (=> b!4609751 m!5440885))

(declare-fun m!5440887 () Bool)

(assert (=> b!4609751 m!5440887))

(declare-fun m!5440889 () Bool)

(assert (=> b!4609751 m!5440889))

(declare-fun m!5440891 () Bool)

(assert (=> b!4609751 m!5440891))

(declare-fun m!5440893 () Bool)

(assert (=> b!4609769 m!5440893))

(declare-fun m!5440895 () Bool)

(assert (=> b!4609769 m!5440895))

(declare-fun m!5440897 () Bool)

(assert (=> b!4609769 m!5440897))

(declare-fun m!5440899 () Bool)

(assert (=> b!4609769 m!5440899))

(declare-fun m!5440901 () Bool)

(assert (=> b!4609769 m!5440901))

(declare-fun m!5440903 () Bool)

(assert (=> b!4609769 m!5440903))

(declare-fun m!5440905 () Bool)

(assert (=> b!4609769 m!5440905))

(declare-fun m!5440907 () Bool)

(assert (=> b!4609770 m!5440907))

(declare-fun m!5440909 () Bool)

(assert (=> b!4609770 m!5440909))

(declare-fun m!5440911 () Bool)

(assert (=> b!4609770 m!5440911))

(declare-fun m!5440913 () Bool)

(assert (=> b!4609768 m!5440913))

(declare-fun m!5440915 () Bool)

(assert (=> b!4609768 m!5440915))

(declare-fun m!5440917 () Bool)

(assert (=> b!4609755 m!5440917))

(declare-fun m!5440919 () Bool)

(assert (=> b!4609752 m!5440919))

(declare-fun m!5440921 () Bool)

(assert (=> b!4609758 m!5440921))

(push 1)

(assert (not b!4609761))

(assert (not b!4609764))

(assert (not b!4609755))

(assert (not b!4609758))

(assert (not b!4609767))

(assert (not b!4609772))

(assert (not b!4609765))

(assert (not b!4609762))

(assert (not b!4609747))

(assert (not b!4609768))

(assert (not b!4609771))

(assert (not b!4609754))

(assert (not b!4609752))

(assert (not b!4609759))

(assert (not b!4609756))

(assert (not b!4609769))

(assert (not b!4609773))

(assert (not b!4609770))

(assert tp_is_empty!28777)

(assert (not b!4609751))

(assert tp_is_empty!28779)

(assert (not b!4609748))

(assert (not b!4609766))

(assert (not start!461014))

(assert (not b!4609757))

(assert (not b!4609749))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

