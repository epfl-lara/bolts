; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!449920 () Bool)

(assert start!449920)

(declare-fun bs!871478 () Bool)

(declare-fun b!4534796 () Bool)

(assert (= bs!871478 (and b!4534796 start!449920)))

(declare-fun lambda!175158 () Int)

(declare-fun lambda!175157 () Int)

(assert (=> bs!871478 (not (= lambda!175158 lambda!175157))))

(assert (=> b!4534796 true))

(assert (=> b!4534796 true))

(assert (=> b!4534796 true))

(declare-fun b!4534782 () Bool)

(declare-fun e!2825743 () Bool)

(assert (=> b!4534782 (= e!2825743 true)))

(declare-fun lt!1710026 () Bool)

(declare-datatypes ((K!12110 0))(
  ( (K!12111 (val!17959 Int)) )
))
(declare-datatypes ((V!12356 0))(
  ( (V!12357 (val!17960 Int)) )
))
(declare-datatypes ((tuple2!51186 0))(
  ( (tuple2!51187 (_1!28887 K!12110) (_2!28887 V!12356)) )
))
(declare-datatypes ((List!50848 0))(
  ( (Nil!50724) (Cons!50724 (h!56599 tuple2!51186) (t!357810 List!50848)) )
))
(declare-datatypes ((ListMap!3645 0))(
  ( (ListMap!3646 (toList!4383 List!50848)) )
))
(declare-fun lt!1710024 () ListMap!3645)

(declare-fun lt!1710040 () ListMap!3645)

(declare-fun eq!645 (ListMap!3645 ListMap!3645) Bool)

(assert (=> b!4534782 (= lt!1710026 (eq!645 lt!1710024 lt!1710040))))

(assert (=> b!4534782 (= lt!1710024 lt!1710040)))

(declare-datatypes ((tuple2!51188 0))(
  ( (tuple2!51189 (_1!28888 (_ BitVec 64)) (_2!28888 List!50848)) )
))
(declare-fun lt!1710017 () tuple2!51188)

(declare-fun key!3287 () K!12110)

(declare-fun lt!1710033 () ListMap!3645)

(declare-fun -!414 (ListMap!3645 K!12110) ListMap!3645)

(declare-fun addToMapMapFromBucket!715 (List!50848 ListMap!3645) ListMap!3645)

(assert (=> b!4534782 (= lt!1710040 (-!414 (addToMapMapFromBucket!715 (_2!28888 lt!1710017) lt!1710033) key!3287))))

(declare-datatypes ((Unit!97606 0))(
  ( (Unit!97607) )
))
(declare-fun lt!1710039 () Unit!97606)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!12 (ListMap!3645 K!12110 List!50848) Unit!97606)

(assert (=> b!4534782 (= lt!1710039 (lemmaAddToMapFromBucketMinusKeyIsCommutative!12 lt!1710033 key!3287 (_2!28888 lt!1710017)))))

(declare-fun b!4534783 () Bool)

(declare-fun e!2825736 () Unit!97606)

(declare-fun Unit!97608 () Unit!97606)

(assert (=> b!4534783 (= e!2825736 Unit!97608)))

(declare-datatypes ((Hashable!5583 0))(
  ( (HashableExt!5582 (__x!31286 Int)) )
))
(declare-fun hashF!1107 () Hashable!5583)

(declare-fun lt!1710021 () Unit!97606)

(declare-datatypes ((List!50849 0))(
  ( (Nil!50725) (Cons!50725 (h!56600 tuple2!51188) (t!357811 List!50849)) )
))
(declare-datatypes ((ListLongMap!3015 0))(
  ( (ListLongMap!3016 (toList!4384 List!50849)) )
))
(declare-fun lm!1477 () ListLongMap!3015)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!176 (ListLongMap!3015 K!12110 Hashable!5583) Unit!97606)

(assert (=> b!4534783 (= lt!1710021 (lemmaNotInItsHashBucketThenNotInMap!176 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4534783 false))

(declare-fun b!4534784 () Bool)

(declare-fun e!2825728 () Bool)

(declare-fun e!2825741 () Bool)

(assert (=> b!4534784 (= e!2825728 e!2825741)))

(declare-fun res!1889145 () Bool)

(assert (=> b!4534784 (=> (not res!1889145) (not e!2825741))))

(declare-fun lt!1710027 () ListMap!3645)

(declare-fun contains!13499 (ListMap!3645 K!12110) Bool)

(assert (=> b!4534784 (= res!1889145 (contains!13499 lt!1710027 key!3287))))

(declare-fun extractMap!1244 (List!50849) ListMap!3645)

(assert (=> b!4534784 (= lt!1710027 (extractMap!1244 (toList!4384 lm!1477)))))

(declare-fun b!4534785 () Bool)

(declare-fun res!1889149 () Bool)

(declare-fun e!2825733 () Bool)

(assert (=> b!4534785 (=> (not res!1889149) (not e!2825733))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!50848)

(declare-fun allKeysSameHash!1042 (List!50848 (_ BitVec 64) Hashable!5583) Bool)

(assert (=> b!4534785 (= res!1889149 (allKeysSameHash!1042 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4534786 () Bool)

(declare-fun e!2825735 () Bool)

(declare-fun e!2825727 () Bool)

(assert (=> b!4534786 (= e!2825735 e!2825727)))

(declare-fun res!1889135 () Bool)

(assert (=> b!4534786 (=> res!1889135 e!2825727)))

(assert (=> b!4534786 (= res!1889135 (not (contains!13499 (extractMap!1244 (t!357811 (toList!4384 lm!1477))) key!3287)))))

(assert (=> b!4534786 (contains!13499 lt!1710033 key!3287)))

(declare-fun lt!1710008 () ListLongMap!3015)

(assert (=> b!4534786 (= lt!1710033 (extractMap!1244 (toList!4384 lt!1710008)))))

(declare-fun lt!1710007 () Unit!97606)

(declare-fun lemmaListContainsThenExtractedMapContains!158 (ListLongMap!3015 K!12110 Hashable!5583) Unit!97606)

(assert (=> b!4534786 (= lt!1710007 (lemmaListContainsThenExtractedMapContains!158 lt!1710008 key!3287 hashF!1107))))

(declare-fun b!4534787 () Bool)

(declare-fun e!2825732 () Bool)

(declare-fun e!2825742 () Bool)

(assert (=> b!4534787 (= e!2825732 e!2825742)))

(declare-fun res!1889139 () Bool)

(assert (=> b!4534787 (=> res!1889139 e!2825742)))

(declare-fun contains!13500 (ListLongMap!3015 (_ BitVec 64)) Bool)

(assert (=> b!4534787 (= res!1889139 (not (contains!13500 lt!1710008 hash!344)))))

(declare-fun tail!7784 (ListLongMap!3015) ListLongMap!3015)

(assert (=> b!4534787 (= lt!1710008 (tail!7784 lm!1477))))

(declare-fun b!4534788 () Bool)

(declare-fun res!1889138 () Bool)

(assert (=> b!4534788 (=> res!1889138 e!2825732)))

(declare-fun noDuplicateKeys!1188 (List!50848) Bool)

(assert (=> b!4534788 (= res!1889138 (not (noDuplicateKeys!1188 newBucket!178)))))

(declare-fun b!4534789 () Bool)

(declare-fun res!1889128 () Bool)

(declare-fun e!2825730 () Bool)

(assert (=> b!4534789 (=> res!1889128 e!2825730)))

(assert (=> b!4534789 (= res!1889128 (bvsge (_1!28888 lt!1710017) hash!344))))

(declare-fun b!4534790 () Bool)

(assert (=> b!4534790 (= e!2825727 e!2825730)))

(declare-fun res!1889143 () Bool)

(assert (=> b!4534790 (=> res!1889143 e!2825730)))

(declare-fun lt!1710015 () ListMap!3645)

(assert (=> b!4534790 (= res!1889143 (not (eq!645 lt!1710015 lt!1710027)))))

(declare-fun +!1588 (ListLongMap!3015 tuple2!51188) ListLongMap!3015)

(assert (=> b!4534790 (= lt!1710015 (extractMap!1244 (toList!4384 (+!1588 lt!1710008 lt!1710017))))))

(declare-fun head!9462 (ListLongMap!3015) tuple2!51188)

(assert (=> b!4534790 (= lt!1710017 (head!9462 lm!1477))))

(declare-fun lt!1710032 () ListMap!3645)

(declare-fun lt!1710012 () ListMap!3645)

(assert (=> b!4534790 (eq!645 lt!1710032 lt!1710012)))

(assert (=> b!4534790 (= lt!1710012 (-!414 lt!1710033 key!3287))))

(declare-fun lt!1710031 () ListLongMap!3015)

(assert (=> b!4534790 (= lt!1710032 (extractMap!1244 (toList!4384 lt!1710031)))))

(declare-fun lt!1710034 () tuple2!51188)

(assert (=> b!4534790 (= lt!1710031 (+!1588 lt!1710008 lt!1710034))))

(assert (=> b!4534790 (= lt!1710034 (tuple2!51189 hash!344 newBucket!178))))

(declare-fun lt!1710014 () Unit!97606)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!173 (ListLongMap!3015 (_ BitVec 64) List!50848 K!12110 Hashable!5583) Unit!97606)

(assert (=> b!4534790 (= lt!1710014 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!173 lt!1710008 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun res!1889141 () Bool)

(assert (=> start!449920 (=> (not res!1889141) (not e!2825728))))

(declare-fun forall!10325 (List!50849 Int) Bool)

(assert (=> start!449920 (= res!1889141 (forall!10325 (toList!4384 lm!1477) lambda!175157))))

(assert (=> start!449920 e!2825728))

(assert (=> start!449920 true))

(declare-fun e!2825740 () Bool)

(declare-fun inv!66294 (ListLongMap!3015) Bool)

(assert (=> start!449920 (and (inv!66294 lm!1477) e!2825740)))

(declare-fun tp_is_empty!28029 () Bool)

(assert (=> start!449920 tp_is_empty!28029))

(declare-fun e!2825731 () Bool)

(assert (=> start!449920 e!2825731))

(declare-fun b!4534791 () Bool)

(declare-fun res!1889137 () Bool)

(assert (=> b!4534791 (=> res!1889137 e!2825742)))

(declare-fun lt!1710036 () tuple2!51188)

(declare-fun contains!13501 (List!50849 tuple2!51188) Bool)

(assert (=> b!4534791 (= res!1889137 (not (contains!13501 (t!357811 (toList!4384 lm!1477)) lt!1710036)))))

(declare-fun b!4534792 () Bool)

(declare-fun res!1889142 () Bool)

(assert (=> b!4534792 (=> res!1889142 e!2825732)))

(get-info :version)

(assert (=> b!4534792 (= res!1889142 (or ((_ is Nil!50725) (toList!4384 lm!1477)) (= (_1!28888 (h!56600 (toList!4384 lm!1477))) hash!344)))))

(declare-fun b!4534793 () Bool)

(assert (=> b!4534793 (= e!2825741 e!2825733)))

(declare-fun res!1889150 () Bool)

(assert (=> b!4534793 (=> (not res!1889150) (not e!2825733))))

(declare-fun lt!1710011 () (_ BitVec 64))

(assert (=> b!4534793 (= res!1889150 (= lt!1710011 hash!344))))

(declare-fun hash!2891 (Hashable!5583 K!12110) (_ BitVec 64))

(assert (=> b!4534793 (= lt!1710011 (hash!2891 hashF!1107 key!3287))))

(declare-fun b!4534794 () Bool)

(declare-fun res!1889148 () Bool)

(assert (=> b!4534794 (=> (not res!1889148) (not e!2825728))))

(declare-fun allKeysSameHashInMap!1295 (ListLongMap!3015 Hashable!5583) Bool)

(assert (=> b!4534794 (= res!1889148 (allKeysSameHashInMap!1295 lm!1477 hashF!1107))))

(declare-fun b!4534795 () Bool)

(declare-fun e!2825726 () Bool)

(declare-fun e!2825738 () Bool)

(assert (=> b!4534795 (= e!2825726 e!2825738)))

(declare-fun res!1889147 () Bool)

(assert (=> b!4534795 (=> res!1889147 e!2825738)))

(assert (=> b!4534795 (= res!1889147 (not (noDuplicateKeys!1188 (_2!28888 lt!1710017))))))

(declare-fun lt!1710037 () Unit!97606)

(declare-fun forallContained!2582 (List!50849 Int tuple2!51188) Unit!97606)

(assert (=> b!4534795 (= lt!1710037 (forallContained!2582 (toList!4384 lm!1477) lambda!175157 (h!56600 (toList!4384 lm!1477))))))

(declare-fun e!2825734 () Unit!97606)

(declare-fun Unit!97609 () Unit!97606)

(assert (=> b!4534796 (= e!2825734 Unit!97609)))

(assert (=> b!4534796 (not (= hash!344 (_1!28888 lt!1710017)))))

(declare-datatypes ((Option!11179 0))(
  ( (None!11178) (Some!11178 (v!44852 tuple2!51186)) )
))
(declare-fun lt!1710023 () Option!11179)

(declare-fun getPair!204 (List!50848 K!12110) Option!11179)

(assert (=> b!4534796 (= lt!1710023 (getPair!204 (_2!28888 lt!1710017) key!3287))))

(declare-fun lt!1710013 () Unit!97606)

(assert (=> b!4534796 (= lt!1710013 (forallContained!2582 (toList!4384 lm!1477) lambda!175158 (h!56600 (toList!4384 lm!1477))))))

(declare-fun lambda!175159 () Int)

(declare-fun lt!1710020 () Unit!97606)

(declare-fun forallContained!2583 (List!50848 Int tuple2!51186) Unit!97606)

(declare-fun get!16660 (Option!11179) tuple2!51186)

(assert (=> b!4534796 (= lt!1710020 (forallContained!2583 (_2!28888 (h!56600 (toList!4384 lm!1477))) lambda!175159 (tuple2!51187 key!3287 (_2!28887 (get!16660 lt!1710023)))))))

(assert (=> b!4534796 false))

(declare-fun b!4534797 () Bool)

(declare-fun res!1889134 () Bool)

(assert (=> b!4534797 (=> res!1889134 e!2825730)))

(assert (=> b!4534797 (= res!1889134 (not (eq!645 lt!1710027 lt!1710015)))))

(declare-fun b!4534798 () Bool)

(declare-fun e!2825739 () Bool)

(assert (=> b!4534798 (= e!2825742 e!2825739)))

(declare-fun res!1889129 () Bool)

(assert (=> b!4534798 (=> res!1889129 e!2825739)))

(declare-fun lt!1710028 () Bool)

(assert (=> b!4534798 (= res!1889129 lt!1710028)))

(declare-fun lt!1710030 () Unit!97606)

(assert (=> b!4534798 (= lt!1710030 e!2825736)))

(declare-fun c!774413 () Bool)

(assert (=> b!4534798 (= c!774413 lt!1710028)))

(declare-fun lt!1710035 () List!50848)

(declare-fun containsKey!1852 (List!50848 K!12110) Bool)

(assert (=> b!4534798 (= lt!1710028 (not (containsKey!1852 lt!1710035 key!3287)))))

(declare-fun b!4534799 () Bool)

(declare-fun e!2825737 () Bool)

(assert (=> b!4534799 (= e!2825737 e!2825726)))

(declare-fun res!1889144 () Bool)

(assert (=> b!4534799 (=> res!1889144 e!2825726)))

(declare-fun lt!1710016 () ListMap!3645)

(assert (=> b!4534799 (= res!1889144 (not (eq!645 lt!1710016 lt!1710024)))))

(declare-fun lt!1710022 () ListMap!3645)

(assert (=> b!4534799 (eq!645 lt!1710022 lt!1710024)))

(assert (=> b!4534799 (= lt!1710024 (addToMapMapFromBucket!715 (_2!28888 lt!1710017) lt!1710012))))

(declare-fun lt!1710038 () Unit!97606)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!64 (ListMap!3645 ListMap!3645 List!50848) Unit!97606)

(assert (=> b!4534799 (= lt!1710038 (lemmaAddToMapFromBucketPreservesEquivalence!64 lt!1710032 lt!1710012 (_2!28888 lt!1710017)))))

(declare-fun b!4534800 () Bool)

(declare-fun tp_is_empty!28031 () Bool)

(declare-fun tp!1338495 () Bool)

(assert (=> b!4534800 (= e!2825731 (and tp_is_empty!28029 tp_is_empty!28031 tp!1338495))))

(declare-fun b!4534801 () Bool)

(declare-fun res!1889146 () Bool)

(assert (=> b!4534801 (=> res!1889146 e!2825742)))

(declare-fun apply!11925 (ListLongMap!3015 (_ BitVec 64)) List!50848)

(assert (=> b!4534801 (= res!1889146 (not (= (apply!11925 lt!1710008 hash!344) lt!1710035)))))

(declare-fun b!4534802 () Bool)

(declare-fun res!1889136 () Bool)

(declare-fun e!2825729 () Bool)

(assert (=> b!4534802 (=> res!1889136 e!2825729)))

(declare-fun lt!1710025 () ListLongMap!3015)

(assert (=> b!4534802 (= res!1889136 (not (= (head!9462 lt!1710025) lt!1710017)))))

(declare-fun b!4534803 () Bool)

(assert (=> b!4534803 (= e!2825739 e!2825735)))

(declare-fun res!1889140 () Bool)

(assert (=> b!4534803 (=> res!1889140 e!2825735)))

(declare-fun containsKeyBiggerList!168 (List!50849 K!12110) Bool)

(assert (=> b!4534803 (= res!1889140 (not (containsKeyBiggerList!168 (t!357811 (toList!4384 lm!1477)) key!3287)))))

(assert (=> b!4534803 (containsKeyBiggerList!168 (toList!4384 lt!1710008) key!3287)))

(declare-fun lt!1710029 () Unit!97606)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!104 (ListLongMap!3015 K!12110 Hashable!5583) Unit!97606)

(assert (=> b!4534803 (= lt!1710029 (lemmaInLongMapThenContainsKeyBiggerList!104 lt!1710008 key!3287 hashF!1107))))

(declare-fun b!4534804 () Bool)

(assert (=> b!4534804 (= e!2825729 e!2825737)))

(declare-fun res!1889132 () Bool)

(assert (=> b!4534804 (=> res!1889132 e!2825737)))

(assert (=> b!4534804 (= res!1889132 (not (eq!645 lt!1710016 lt!1710022)))))

(assert (=> b!4534804 (= lt!1710022 (addToMapMapFromBucket!715 (_2!28888 lt!1710017) lt!1710032))))

(assert (=> b!4534804 (= lt!1710016 (extractMap!1244 (toList!4384 lt!1710025)))))

(declare-fun b!4534805 () Bool)

(declare-fun Unit!97610 () Unit!97606)

(assert (=> b!4534805 (= e!2825736 Unit!97610)))

(declare-fun b!4534806 () Bool)

(declare-fun tp!1338494 () Bool)

(assert (=> b!4534806 (= e!2825740 tp!1338494)))

(declare-fun b!4534807 () Bool)

(assert (=> b!4534807 (= e!2825738 e!2825743)))

(declare-fun res!1889131 () Bool)

(assert (=> b!4534807 (=> res!1889131 e!2825743)))

(declare-fun lt!1710018 () Bool)

(assert (=> b!4534807 (= res!1889131 lt!1710018)))

(declare-fun lt!1710009 () Unit!97606)

(assert (=> b!4534807 (= lt!1710009 e!2825734)))

(declare-fun c!774412 () Bool)

(assert (=> b!4534807 (= c!774412 lt!1710018)))

(assert (=> b!4534807 (= lt!1710018 (containsKey!1852 (_2!28888 lt!1710017) key!3287))))

(declare-fun b!4534808 () Bool)

(assert (=> b!4534808 (= e!2825733 (not e!2825732))))

(declare-fun res!1889130 () Bool)

(assert (=> b!4534808 (=> res!1889130 e!2825732)))

(declare-fun removePairForKey!815 (List!50848 K!12110) List!50848)

(assert (=> b!4534808 (= res!1889130 (not (= newBucket!178 (removePairForKey!815 lt!1710035 key!3287))))))

(declare-fun lt!1710006 () Unit!97606)

(assert (=> b!4534808 (= lt!1710006 (forallContained!2582 (toList!4384 lm!1477) lambda!175157 lt!1710036))))

(assert (=> b!4534808 (contains!13501 (toList!4384 lm!1477) lt!1710036)))

(assert (=> b!4534808 (= lt!1710036 (tuple2!51189 hash!344 lt!1710035))))

(declare-fun lt!1710019 () Unit!97606)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!700 (List!50849 (_ BitVec 64) List!50848) Unit!97606)

(assert (=> b!4534808 (= lt!1710019 (lemmaGetValueByKeyImpliesContainsTuple!700 (toList!4384 lm!1477) hash!344 lt!1710035))))

(assert (=> b!4534808 (= lt!1710035 (apply!11925 lm!1477 hash!344))))

(assert (=> b!4534808 (contains!13500 lm!1477 lt!1710011)))

(declare-fun lt!1710010 () Unit!97606)

(declare-fun lemmaInGenMapThenLongMapContainsHash!262 (ListLongMap!3015 K!12110 Hashable!5583) Unit!97606)

(assert (=> b!4534808 (= lt!1710010 (lemmaInGenMapThenLongMapContainsHash!262 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4534809 () Bool)

(declare-fun Unit!97611 () Unit!97606)

(assert (=> b!4534809 (= e!2825734 Unit!97611)))

(declare-fun b!4534810 () Bool)

(assert (=> b!4534810 (= e!2825730 e!2825729)))

(declare-fun res!1889133 () Bool)

(assert (=> b!4534810 (=> res!1889133 e!2825729)))

(assert (=> b!4534810 (= res!1889133 (not (= lt!1710025 (+!1588 lm!1477 lt!1710034))))))

(assert (=> b!4534810 (= lt!1710025 (+!1588 lt!1710031 lt!1710017))))

(assert (= (and start!449920 res!1889141) b!4534794))

(assert (= (and b!4534794 res!1889148) b!4534784))

(assert (= (and b!4534784 res!1889145) b!4534793))

(assert (= (and b!4534793 res!1889150) b!4534785))

(assert (= (and b!4534785 res!1889149) b!4534808))

(assert (= (and b!4534808 (not res!1889130)) b!4534788))

(assert (= (and b!4534788 (not res!1889138)) b!4534792))

(assert (= (and b!4534792 (not res!1889142)) b!4534787))

(assert (= (and b!4534787 (not res!1889139)) b!4534801))

(assert (= (and b!4534801 (not res!1889146)) b!4534791))

(assert (= (and b!4534791 (not res!1889137)) b!4534798))

(assert (= (and b!4534798 c!774413) b!4534783))

(assert (= (and b!4534798 (not c!774413)) b!4534805))

(assert (= (and b!4534798 (not res!1889129)) b!4534803))

(assert (= (and b!4534803 (not res!1889140)) b!4534786))

(assert (= (and b!4534786 (not res!1889135)) b!4534790))

(assert (= (and b!4534790 (not res!1889143)) b!4534797))

(assert (= (and b!4534797 (not res!1889134)) b!4534789))

(assert (= (and b!4534789 (not res!1889128)) b!4534810))

(assert (= (and b!4534810 (not res!1889133)) b!4534802))

(assert (= (and b!4534802 (not res!1889136)) b!4534804))

(assert (= (and b!4534804 (not res!1889132)) b!4534799))

(assert (= (and b!4534799 (not res!1889144)) b!4534795))

(assert (= (and b!4534795 (not res!1889147)) b!4534807))

(assert (= (and b!4534807 c!774412) b!4534796))

(assert (= (and b!4534807 (not c!774412)) b!4534809))

(assert (= (and b!4534807 (not res!1889131)) b!4534782))

(assert (= start!449920 b!4534806))

(assert (= (and start!449920 ((_ is Cons!50724) newBucket!178)) b!4534800))

(declare-fun m!5296043 () Bool)

(assert (=> b!4534784 m!5296043))

(declare-fun m!5296045 () Bool)

(assert (=> b!4534784 m!5296045))

(declare-fun m!5296047 () Bool)

(assert (=> b!4534804 m!5296047))

(declare-fun m!5296049 () Bool)

(assert (=> b!4534804 m!5296049))

(declare-fun m!5296051 () Bool)

(assert (=> b!4534804 m!5296051))

(declare-fun m!5296053 () Bool)

(assert (=> b!4534790 m!5296053))

(declare-fun m!5296055 () Bool)

(assert (=> b!4534790 m!5296055))

(declare-fun m!5296057 () Bool)

(assert (=> b!4534790 m!5296057))

(declare-fun m!5296059 () Bool)

(assert (=> b!4534790 m!5296059))

(declare-fun m!5296061 () Bool)

(assert (=> b!4534790 m!5296061))

(declare-fun m!5296063 () Bool)

(assert (=> b!4534790 m!5296063))

(declare-fun m!5296065 () Bool)

(assert (=> b!4534790 m!5296065))

(declare-fun m!5296067 () Bool)

(assert (=> b!4534790 m!5296067))

(declare-fun m!5296069 () Bool)

(assert (=> b!4534790 m!5296069))

(declare-fun m!5296071 () Bool)

(assert (=> b!4534793 m!5296071))

(declare-fun m!5296073 () Bool)

(assert (=> b!4534786 m!5296073))

(declare-fun m!5296075 () Bool)

(assert (=> b!4534786 m!5296075))

(declare-fun m!5296077 () Bool)

(assert (=> b!4534786 m!5296077))

(declare-fun m!5296079 () Bool)

(assert (=> b!4534786 m!5296079))

(assert (=> b!4534786 m!5296075))

(declare-fun m!5296081 () Bool)

(assert (=> b!4534786 m!5296081))

(declare-fun m!5296083 () Bool)

(assert (=> b!4534796 m!5296083))

(declare-fun m!5296085 () Bool)

(assert (=> b!4534796 m!5296085))

(declare-fun m!5296087 () Bool)

(assert (=> b!4534796 m!5296087))

(declare-fun m!5296089 () Bool)

(assert (=> b!4534796 m!5296089))

(declare-fun m!5296091 () Bool)

(assert (=> b!4534799 m!5296091))

(declare-fun m!5296093 () Bool)

(assert (=> b!4534799 m!5296093))

(declare-fun m!5296095 () Bool)

(assert (=> b!4534799 m!5296095))

(declare-fun m!5296097 () Bool)

(assert (=> b!4534799 m!5296097))

(declare-fun m!5296099 () Bool)

(assert (=> b!4534787 m!5296099))

(declare-fun m!5296101 () Bool)

(assert (=> b!4534787 m!5296101))

(declare-fun m!5296103 () Bool)

(assert (=> b!4534791 m!5296103))

(declare-fun m!5296105 () Bool)

(assert (=> b!4534794 m!5296105))

(declare-fun m!5296107 () Bool)

(assert (=> b!4534788 m!5296107))

(declare-fun m!5296109 () Bool)

(assert (=> b!4534797 m!5296109))

(declare-fun m!5296111 () Bool)

(assert (=> b!4534802 m!5296111))

(declare-fun m!5296113 () Bool)

(assert (=> b!4534798 m!5296113))

(declare-fun m!5296115 () Bool)

(assert (=> b!4534782 m!5296115))

(declare-fun m!5296117 () Bool)

(assert (=> b!4534782 m!5296117))

(assert (=> b!4534782 m!5296117))

(declare-fun m!5296119 () Bool)

(assert (=> b!4534782 m!5296119))

(declare-fun m!5296121 () Bool)

(assert (=> b!4534782 m!5296121))

(declare-fun m!5296123 () Bool)

(assert (=> b!4534795 m!5296123))

(declare-fun m!5296125 () Bool)

(assert (=> b!4534795 m!5296125))

(declare-fun m!5296127 () Bool)

(assert (=> b!4534803 m!5296127))

(declare-fun m!5296129 () Bool)

(assert (=> b!4534803 m!5296129))

(declare-fun m!5296131 () Bool)

(assert (=> b!4534803 m!5296131))

(declare-fun m!5296133 () Bool)

(assert (=> b!4534801 m!5296133))

(declare-fun m!5296135 () Bool)

(assert (=> b!4534808 m!5296135))

(declare-fun m!5296137 () Bool)

(assert (=> b!4534808 m!5296137))

(declare-fun m!5296139 () Bool)

(assert (=> b!4534808 m!5296139))

(declare-fun m!5296141 () Bool)

(assert (=> b!4534808 m!5296141))

(declare-fun m!5296143 () Bool)

(assert (=> b!4534808 m!5296143))

(declare-fun m!5296145 () Bool)

(assert (=> b!4534808 m!5296145))

(declare-fun m!5296147 () Bool)

(assert (=> b!4534808 m!5296147))

(declare-fun m!5296149 () Bool)

(assert (=> b!4534783 m!5296149))

(declare-fun m!5296151 () Bool)

(assert (=> b!4534810 m!5296151))

(declare-fun m!5296153 () Bool)

(assert (=> b!4534810 m!5296153))

(declare-fun m!5296155 () Bool)

(assert (=> b!4534785 m!5296155))

(declare-fun m!5296157 () Bool)

(assert (=> b!4534807 m!5296157))

(declare-fun m!5296159 () Bool)

(assert (=> start!449920 m!5296159))

(declare-fun m!5296161 () Bool)

(assert (=> start!449920 m!5296161))

(check-sat (not b!4534785) (not b!4534803) (not b!4534810) (not b!4534784) (not b!4534804) (not b!4534782) (not b!4534802) (not start!449920) (not b!4534799) (not b!4534798) (not b!4534807) tp_is_empty!28029 (not b!4534794) (not b!4534783) (not b!4534801) (not b!4534800) (not b!4534787) (not b!4534786) (not b!4534793) tp_is_empty!28031 (not b!4534791) (not b!4534806) (not b!4534788) (not b!4534808) (not b!4534795) (not b!4534796) (not b!4534797) (not b!4534790))
(check-sat)
