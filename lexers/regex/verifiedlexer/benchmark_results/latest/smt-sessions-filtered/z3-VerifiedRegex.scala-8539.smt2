; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!449480 () Bool)

(assert start!449480)

(declare-fun bs!867992 () Bool)

(declare-fun b!4532128 () Bool)

(assert (= bs!867992 (and b!4532128 start!449480)))

(declare-fun lambda!174636 () Int)

(declare-fun lambda!174635 () Int)

(assert (=> bs!867992 (not (= lambda!174636 lambda!174635))))

(assert (=> b!4532128 true))

(assert (=> b!4532128 true))

(assert (=> b!4532128 true))

(declare-fun b!4532107 () Bool)

(declare-fun e!2823969 () Bool)

(declare-fun e!2823977 () Bool)

(assert (=> b!4532107 (= e!2823969 e!2823977)))

(declare-fun res!1887711 () Bool)

(assert (=> b!4532107 (=> res!1887711 e!2823977)))

(declare-datatypes ((K!12100 0))(
  ( (K!12101 (val!17951 Int)) )
))
(declare-datatypes ((V!12346 0))(
  ( (V!12347 (val!17952 Int)) )
))
(declare-datatypes ((tuple2!51170 0))(
  ( (tuple2!51171 (_1!28879 K!12100) (_2!28879 V!12346)) )
))
(declare-datatypes ((List!50836 0))(
  ( (Nil!50712) (Cons!50712 (h!56583 tuple2!51170) (t!357798 List!50836)) )
))
(declare-datatypes ((tuple2!51172 0))(
  ( (tuple2!51173 (_1!28880 (_ BitVec 64)) (_2!28880 List!50836)) )
))
(declare-fun lt!1707605 () tuple2!51172)

(declare-fun noDuplicateKeys!1184 (List!50836) Bool)

(assert (=> b!4532107 (= res!1887711 (not (noDuplicateKeys!1184 (_2!28880 lt!1707605))))))

(declare-datatypes ((Unit!97092 0))(
  ( (Unit!97093) )
))
(declare-fun lt!1707618 () Unit!97092)

(declare-datatypes ((List!50837 0))(
  ( (Nil!50713) (Cons!50713 (h!56584 tuple2!51172) (t!357799 List!50837)) )
))
(declare-datatypes ((ListLongMap!3007 0))(
  ( (ListLongMap!3008 (toList!4375 List!50837)) )
))
(declare-fun lm!1477 () ListLongMap!3007)

(declare-fun forallContained!2572 (List!50837 Int tuple2!51172) Unit!97092)

(assert (=> b!4532107 (= lt!1707618 (forallContained!2572 (toList!4375 lm!1477) lambda!174635 (h!56584 (toList!4375 lm!1477))))))

(declare-fun b!4532108 () Bool)

(declare-fun e!2823984 () Bool)

(declare-fun e!2823979 () Bool)

(assert (=> b!4532108 (= e!2823984 e!2823979)))

(declare-fun res!1887701 () Bool)

(assert (=> b!4532108 (=> (not res!1887701) (not e!2823979))))

(declare-datatypes ((ListMap!3637 0))(
  ( (ListMap!3638 (toList!4376 List!50836)) )
))
(declare-fun lt!1707611 () ListMap!3637)

(declare-fun key!3287 () K!12100)

(declare-fun contains!13479 (ListMap!3637 K!12100) Bool)

(assert (=> b!4532108 (= res!1887701 (contains!13479 lt!1707611 key!3287))))

(declare-fun extractMap!1240 (List!50837) ListMap!3637)

(assert (=> b!4532108 (= lt!1707611 (extractMap!1240 (toList!4375 lm!1477)))))

(declare-fun b!4532109 () Bool)

(declare-fun res!1887710 () Bool)

(assert (=> b!4532109 (=> (not res!1887710) (not e!2823984))))

(declare-datatypes ((Hashable!5579 0))(
  ( (HashableExt!5578 (__x!31282 Int)) )
))
(declare-fun hashF!1107 () Hashable!5579)

(declare-fun allKeysSameHashInMap!1291 (ListLongMap!3007 Hashable!5579) Bool)

(assert (=> b!4532109 (= res!1887710 (allKeysSameHashInMap!1291 lm!1477 hashF!1107))))

(declare-fun b!4532110 () Bool)

(declare-fun e!2823976 () Bool)

(assert (=> b!4532110 (= e!2823977 e!2823976)))

(declare-fun res!1887706 () Bool)

(assert (=> b!4532110 (=> res!1887706 e!2823976)))

(declare-fun lt!1707620 () Bool)

(assert (=> b!4532110 (= res!1887706 lt!1707620)))

(declare-fun lt!1707615 () Unit!97092)

(declare-fun e!2823970 () Unit!97092)

(assert (=> b!4532110 (= lt!1707615 e!2823970)))

(declare-fun c!773848 () Bool)

(assert (=> b!4532110 (= c!773848 lt!1707620)))

(declare-fun containsKey!1840 (List!50836 K!12100) Bool)

(assert (=> b!4532110 (= lt!1707620 (containsKey!1840 (_2!28880 lt!1707605) key!3287))))

(declare-fun b!4532111 () Bool)

(declare-fun e!2823975 () Unit!97092)

(declare-fun Unit!97094 () Unit!97092)

(assert (=> b!4532111 (= e!2823975 Unit!97094)))

(declare-fun tp!1338427 () Bool)

(declare-fun tp_is_empty!28015 () Bool)

(declare-fun tp_is_empty!28013 () Bool)

(declare-fun b!4532112 () Bool)

(declare-fun e!2823973 () Bool)

(assert (=> b!4532112 (= e!2823973 (and tp_is_empty!28013 tp_is_empty!28015 tp!1338427))))

(declare-fun b!4532113 () Bool)

(declare-fun e!2823967 () Bool)

(declare-fun e!2823981 () Bool)

(assert (=> b!4532113 (= e!2823967 e!2823981)))

(declare-fun res!1887724 () Bool)

(assert (=> b!4532113 (=> res!1887724 e!2823981)))

(declare-fun lt!1707607 () ListMap!3637)

(declare-fun lt!1707596 () ListMap!3637)

(declare-fun eq!641 (ListMap!3637 ListMap!3637) Bool)

(assert (=> b!4532113 (= res!1887724 (not (eq!641 lt!1707607 lt!1707596)))))

(declare-fun lt!1707628 () ListMap!3637)

(declare-fun addToMapMapFromBucket!711 (List!50836 ListMap!3637) ListMap!3637)

(assert (=> b!4532113 (= lt!1707596 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707628))))

(declare-fun lt!1707597 () ListLongMap!3007)

(assert (=> b!4532113 (= lt!1707607 (extractMap!1240 (toList!4375 lt!1707597)))))

(declare-fun res!1887721 () Bool)

(assert (=> start!449480 (=> (not res!1887721) (not e!2823984))))

(declare-fun forall!10315 (List!50837 Int) Bool)

(assert (=> start!449480 (= res!1887721 (forall!10315 (toList!4375 lm!1477) lambda!174635))))

(assert (=> start!449480 e!2823984))

(assert (=> start!449480 true))

(declare-fun e!2823982 () Bool)

(declare-fun inv!66284 (ListLongMap!3007) Bool)

(assert (=> start!449480 (and (inv!66284 lm!1477) e!2823982)))

(assert (=> start!449480 tp_is_empty!28013))

(assert (=> start!449480 e!2823973))

(declare-fun b!4532114 () Bool)

(declare-fun e!2823971 () Bool)

(assert (=> b!4532114 (= e!2823976 e!2823971)))

(declare-fun res!1887716 () Bool)

(assert (=> b!4532114 (=> res!1887716 e!2823971)))

(declare-fun lt!1707626 () ListMap!3637)

(declare-fun lt!1707623 () ListMap!3637)

(assert (=> b!4532114 (= res!1887716 (not (eq!641 lt!1707626 lt!1707623)))))

(assert (=> b!4532114 (= lt!1707626 lt!1707623)))

(declare-fun lt!1707612 () ListMap!3637)

(declare-fun -!410 (ListMap!3637 K!12100) ListMap!3637)

(assert (=> b!4532114 (= lt!1707623 (-!410 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612) key!3287))))

(declare-fun lt!1707621 () Unit!97092)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!8 (ListMap!3637 K!12100 List!50836) Unit!97092)

(assert (=> b!4532114 (= lt!1707621 (lemmaAddToMapFromBucketMinusKeyIsCommutative!8 lt!1707612 key!3287 (_2!28880 lt!1707605)))))

(declare-fun b!4532115 () Bool)

(declare-fun e!2823985 () Bool)

(assert (=> b!4532115 (= e!2823979 e!2823985)))

(declare-fun res!1887720 () Bool)

(assert (=> b!4532115 (=> (not res!1887720) (not e!2823985))))

(declare-fun lt!1707614 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4532115 (= res!1887720 (= lt!1707614 hash!344))))

(declare-fun hash!2877 (Hashable!5579 K!12100) (_ BitVec 64))

(assert (=> b!4532115 (= lt!1707614 (hash!2877 hashF!1107 key!3287))))

(declare-fun b!4532116 () Bool)

(declare-fun e!2823968 () Bool)

(declare-fun e!2823980 () Bool)

(assert (=> b!4532116 (= e!2823968 e!2823980)))

(declare-fun res!1887718 () Bool)

(assert (=> b!4532116 (=> res!1887718 e!2823980)))

(declare-fun lt!1707608 () ListMap!3637)

(assert (=> b!4532116 (= res!1887718 (not (eq!641 lt!1707608 lt!1707611)))))

(declare-fun lt!1707598 () ListLongMap!3007)

(declare-fun +!1580 (ListLongMap!3007 tuple2!51172) ListLongMap!3007)

(assert (=> b!4532116 (= lt!1707608 (extractMap!1240 (toList!4375 (+!1580 lt!1707598 lt!1707605))))))

(declare-fun head!9454 (ListLongMap!3007) tuple2!51172)

(assert (=> b!4532116 (= lt!1707605 (head!9454 lm!1477))))

(declare-fun lt!1707600 () ListMap!3637)

(assert (=> b!4532116 (eq!641 lt!1707628 lt!1707600)))

(assert (=> b!4532116 (= lt!1707600 (-!410 lt!1707612 key!3287))))

(declare-fun lt!1707617 () ListLongMap!3007)

(assert (=> b!4532116 (= lt!1707628 (extractMap!1240 (toList!4375 lt!1707617)))))

(declare-fun lt!1707610 () tuple2!51172)

(assert (=> b!4532116 (= lt!1707617 (+!1580 lt!1707598 lt!1707610))))

(declare-fun newBucket!178 () List!50836)

(assert (=> b!4532116 (= lt!1707610 (tuple2!51173 hash!344 newBucket!178))))

(declare-fun lt!1707619 () Unit!97092)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!169 (ListLongMap!3007 (_ BitVec 64) List!50836 K!12100 Hashable!5579) Unit!97092)

(assert (=> b!4532116 (= lt!1707619 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!169 lt!1707598 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4532117 () Bool)

(assert (=> b!4532117 (= e!2823981 e!2823969)))

(declare-fun res!1887714 () Bool)

(assert (=> b!4532117 (=> res!1887714 e!2823969)))

(assert (=> b!4532117 (= res!1887714 (not (eq!641 lt!1707607 lt!1707626)))))

(assert (=> b!4532117 (eq!641 lt!1707596 lt!1707626)))

(assert (=> b!4532117 (= lt!1707626 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707600))))

(declare-fun lt!1707599 () Unit!97092)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!60 (ListMap!3637 ListMap!3637 List!50836) Unit!97092)

(assert (=> b!4532117 (= lt!1707599 (lemmaAddToMapFromBucketPreservesEquivalence!60 lt!1707628 lt!1707600 (_2!28880 lt!1707605)))))

(declare-fun b!4532118 () Bool)

(declare-fun e!2823978 () Bool)

(assert (=> b!4532118 (= e!2823985 (not e!2823978))))

(declare-fun res!1887702 () Bool)

(assert (=> b!4532118 (=> res!1887702 e!2823978)))

(declare-fun lt!1707613 () List!50836)

(declare-fun removePairForKey!811 (List!50836 K!12100) List!50836)

(assert (=> b!4532118 (= res!1887702 (not (= newBucket!178 (removePairForKey!811 lt!1707613 key!3287))))))

(declare-fun lt!1707609 () Unit!97092)

(declare-fun lt!1707625 () tuple2!51172)

(assert (=> b!4532118 (= lt!1707609 (forallContained!2572 (toList!4375 lm!1477) lambda!174635 lt!1707625))))

(declare-fun contains!13480 (List!50837 tuple2!51172) Bool)

(assert (=> b!4532118 (contains!13480 (toList!4375 lm!1477) lt!1707625)))

(assert (=> b!4532118 (= lt!1707625 (tuple2!51173 hash!344 lt!1707613))))

(declare-fun lt!1707595 () Unit!97092)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!696 (List!50837 (_ BitVec 64) List!50836) Unit!97092)

(assert (=> b!4532118 (= lt!1707595 (lemmaGetValueByKeyImpliesContainsTuple!696 (toList!4375 lm!1477) hash!344 lt!1707613))))

(declare-fun apply!11921 (ListLongMap!3007 (_ BitVec 64)) List!50836)

(assert (=> b!4532118 (= lt!1707613 (apply!11921 lm!1477 hash!344))))

(declare-fun contains!13481 (ListLongMap!3007 (_ BitVec 64)) Bool)

(assert (=> b!4532118 (contains!13481 lm!1477 lt!1707614)))

(declare-fun lt!1707602 () Unit!97092)

(declare-fun lemmaInGenMapThenLongMapContainsHash!258 (ListLongMap!3007 K!12100 Hashable!5579) Unit!97092)

(assert (=> b!4532118 (= lt!1707602 (lemmaInGenMapThenLongMapContainsHash!258 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4532119 () Bool)

(declare-fun e!2823974 () Bool)

(assert (=> b!4532119 (= e!2823974 e!2823968)))

(declare-fun res!1887708 () Bool)

(assert (=> b!4532119 (=> res!1887708 e!2823968)))

(assert (=> b!4532119 (= res!1887708 (not (contains!13479 (extractMap!1240 (t!357799 (toList!4375 lm!1477))) key!3287)))))

(assert (=> b!4532119 (contains!13479 lt!1707612 key!3287)))

(assert (=> b!4532119 (= lt!1707612 (extractMap!1240 (toList!4375 lt!1707598)))))

(declare-fun lt!1707624 () Unit!97092)

(declare-fun lemmaListContainsThenExtractedMapContains!154 (ListLongMap!3007 K!12100 Hashable!5579) Unit!97092)

(assert (=> b!4532119 (= lt!1707624 (lemmaListContainsThenExtractedMapContains!154 lt!1707598 key!3287 hashF!1107))))

(declare-fun b!4532120 () Bool)

(assert (=> b!4532120 (= e!2823980 e!2823967)))

(declare-fun res!1887717 () Bool)

(assert (=> b!4532120 (=> res!1887717 e!2823967)))

(assert (=> b!4532120 (= res!1887717 (not (= lt!1707597 (+!1580 lm!1477 lt!1707610))))))

(assert (=> b!4532120 (= lt!1707597 (+!1580 lt!1707617 lt!1707605))))

(declare-fun b!4532121 () Bool)

(declare-fun Unit!97095 () Unit!97092)

(assert (=> b!4532121 (= e!2823970 Unit!97095)))

(declare-fun b!4532122 () Bool)

(declare-fun res!1887719 () Bool)

(assert (=> b!4532122 (=> res!1887719 e!2823978)))

(get-info :version)

(assert (=> b!4532122 (= res!1887719 (or ((_ is Nil!50713) (toList!4375 lm!1477)) (= (_1!28880 (h!56584 (toList!4375 lm!1477))) hash!344)))))

(declare-fun b!4532123 () Bool)

(declare-fun res!1887722 () Bool)

(assert (=> b!4532123 (=> res!1887722 e!2823978)))

(assert (=> b!4532123 (= res!1887722 (not (noDuplicateKeys!1184 newBucket!178)))))

(declare-fun b!4532124 () Bool)

(declare-fun e!2823972 () Bool)

(declare-fun e!2823983 () Bool)

(assert (=> b!4532124 (= e!2823972 e!2823983)))

(declare-fun res!1887709 () Bool)

(assert (=> b!4532124 (=> res!1887709 e!2823983)))

(declare-fun lt!1707627 () Bool)

(assert (=> b!4532124 (= res!1887709 lt!1707627)))

(declare-fun lt!1707622 () Unit!97092)

(assert (=> b!4532124 (= lt!1707622 e!2823975)))

(declare-fun c!773849 () Bool)

(assert (=> b!4532124 (= c!773849 lt!1707627)))

(assert (=> b!4532124 (= lt!1707627 (not (containsKey!1840 lt!1707613 key!3287)))))

(declare-fun b!4532125 () Bool)

(declare-fun res!1887705 () Bool)

(assert (=> b!4532125 (=> res!1887705 e!2823972)))

(assert (=> b!4532125 (= res!1887705 (not (= (apply!11921 lt!1707598 hash!344) lt!1707613)))))

(declare-fun b!4532126 () Bool)

(declare-fun res!1887715 () Bool)

(assert (=> b!4532126 (=> res!1887715 e!2823980)))

(assert (=> b!4532126 (= res!1887715 (not (eq!641 lt!1707611 lt!1707608)))))

(declare-fun b!4532127 () Bool)

(declare-fun res!1887713 () Bool)

(assert (=> b!4532127 (=> res!1887713 e!2823972)))

(assert (=> b!4532127 (= res!1887713 (not (contains!13480 (t!357799 (toList!4375 lm!1477)) lt!1707625)))))

(declare-fun Unit!97096 () Unit!97092)

(assert (=> b!4532128 (= e!2823970 Unit!97096)))

(assert (=> b!4532128 (not (= hash!344 (_1!28880 lt!1707605)))))

(declare-datatypes ((Option!11167 0))(
  ( (None!11166) (Some!11166 (v!44826 tuple2!51170)) )
))
(declare-fun lt!1707604 () Option!11167)

(declare-fun getPair!200 (List!50836 K!12100) Option!11167)

(assert (=> b!4532128 (= lt!1707604 (getPair!200 (_2!28880 lt!1707605) key!3287))))

(declare-fun lt!1707603 () Unit!97092)

(assert (=> b!4532128 (= lt!1707603 (forallContained!2572 (toList!4375 lm!1477) lambda!174636 (h!56584 (toList!4375 lm!1477))))))

(declare-fun lambda!174637 () Int)

(declare-fun lt!1707606 () Unit!97092)

(declare-fun forallContained!2573 (List!50836 Int tuple2!51170) Unit!97092)

(declare-fun get!16648 (Option!11167) tuple2!51170)

(assert (=> b!4532128 (= lt!1707606 (forallContained!2573 (_2!28880 (h!56584 (toList!4375 lm!1477))) lambda!174637 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))))))

(assert (=> b!4532128 false))

(declare-fun b!4532129 () Bool)

(declare-fun res!1887703 () Bool)

(assert (=> b!4532129 (=> res!1887703 e!2823967)))

(assert (=> b!4532129 (= res!1887703 (not (= (head!9454 lt!1707597) lt!1707605)))))

(declare-fun b!4532130 () Bool)

(declare-fun res!1887704 () Bool)

(assert (=> b!4532130 (=> res!1887704 e!2823980)))

(assert (=> b!4532130 (= res!1887704 (bvsge (_1!28880 lt!1707605) hash!344))))

(declare-fun b!4532131 () Bool)

(declare-fun Unit!97097 () Unit!97092)

(assert (=> b!4532131 (= e!2823975 Unit!97097)))

(declare-fun lt!1707616 () Unit!97092)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!172 (ListLongMap!3007 K!12100 Hashable!5579) Unit!97092)

(assert (=> b!4532131 (= lt!1707616 (lemmaNotInItsHashBucketThenNotInMap!172 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4532131 false))

(declare-fun b!4532132 () Bool)

(declare-fun res!1887723 () Bool)

(assert (=> b!4532132 (=> (not res!1887723) (not e!2823985))))

(declare-fun allKeysSameHash!1038 (List!50836 (_ BitVec 64) Hashable!5579) Bool)

(assert (=> b!4532132 (= res!1887723 (allKeysSameHash!1038 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4532133 () Bool)

(declare-fun isEmpty!28719 (ListLongMap!3007) Bool)

(assert (=> b!4532133 (= e!2823971 (not (isEmpty!28719 lm!1477)))))

(declare-fun b!4532134 () Bool)

(assert (=> b!4532134 (= e!2823978 e!2823972)))

(declare-fun res!1887712 () Bool)

(assert (=> b!4532134 (=> res!1887712 e!2823972)))

(assert (=> b!4532134 (= res!1887712 (not (contains!13481 lt!1707598 hash!344)))))

(declare-fun tail!7776 (ListLongMap!3007) ListLongMap!3007)

(assert (=> b!4532134 (= lt!1707598 (tail!7776 lm!1477))))

(declare-fun b!4532135 () Bool)

(assert (=> b!4532135 (= e!2823983 e!2823974)))

(declare-fun res!1887707 () Bool)

(assert (=> b!4532135 (=> res!1887707 e!2823974)))

(declare-fun containsKeyBiggerList!164 (List!50837 K!12100) Bool)

(assert (=> b!4532135 (= res!1887707 (not (containsKeyBiggerList!164 (t!357799 (toList!4375 lm!1477)) key!3287)))))

(assert (=> b!4532135 (containsKeyBiggerList!164 (toList!4375 lt!1707598) key!3287)))

(declare-fun lt!1707601 () Unit!97092)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!100 (ListLongMap!3007 K!12100 Hashable!5579) Unit!97092)

(assert (=> b!4532135 (= lt!1707601 (lemmaInLongMapThenContainsKeyBiggerList!100 lt!1707598 key!3287 hashF!1107))))

(declare-fun b!4532136 () Bool)

(declare-fun tp!1338426 () Bool)

(assert (=> b!4532136 (= e!2823982 tp!1338426)))

(assert (= (and start!449480 res!1887721) b!4532109))

(assert (= (and b!4532109 res!1887710) b!4532108))

(assert (= (and b!4532108 res!1887701) b!4532115))

(assert (= (and b!4532115 res!1887720) b!4532132))

(assert (= (and b!4532132 res!1887723) b!4532118))

(assert (= (and b!4532118 (not res!1887702)) b!4532123))

(assert (= (and b!4532123 (not res!1887722)) b!4532122))

(assert (= (and b!4532122 (not res!1887719)) b!4532134))

(assert (= (and b!4532134 (not res!1887712)) b!4532125))

(assert (= (and b!4532125 (not res!1887705)) b!4532127))

(assert (= (and b!4532127 (not res!1887713)) b!4532124))

(assert (= (and b!4532124 c!773849) b!4532131))

(assert (= (and b!4532124 (not c!773849)) b!4532111))

(assert (= (and b!4532124 (not res!1887709)) b!4532135))

(assert (= (and b!4532135 (not res!1887707)) b!4532119))

(assert (= (and b!4532119 (not res!1887708)) b!4532116))

(assert (= (and b!4532116 (not res!1887718)) b!4532126))

(assert (= (and b!4532126 (not res!1887715)) b!4532130))

(assert (= (and b!4532130 (not res!1887704)) b!4532120))

(assert (= (and b!4532120 (not res!1887717)) b!4532129))

(assert (= (and b!4532129 (not res!1887703)) b!4532113))

(assert (= (and b!4532113 (not res!1887724)) b!4532117))

(assert (= (and b!4532117 (not res!1887714)) b!4532107))

(assert (= (and b!4532107 (not res!1887711)) b!4532110))

(assert (= (and b!4532110 c!773848) b!4532128))

(assert (= (and b!4532110 (not c!773848)) b!4532121))

(assert (= (and b!4532110 (not res!1887706)) b!4532114))

(assert (= (and b!4532114 (not res!1887716)) b!4532133))

(assert (= start!449480 b!4532136))

(assert (= (and start!449480 ((_ is Cons!50712) newBucket!178)) b!4532112))

(declare-fun m!5290649 () Bool)

(assert (=> b!4532135 m!5290649))

(declare-fun m!5290651 () Bool)

(assert (=> b!4532135 m!5290651))

(declare-fun m!5290653 () Bool)

(assert (=> b!4532135 m!5290653))

(declare-fun m!5290655 () Bool)

(assert (=> b!4532118 m!5290655))

(declare-fun m!5290657 () Bool)

(assert (=> b!4532118 m!5290657))

(declare-fun m!5290659 () Bool)

(assert (=> b!4532118 m!5290659))

(declare-fun m!5290661 () Bool)

(assert (=> b!4532118 m!5290661))

(declare-fun m!5290663 () Bool)

(assert (=> b!4532118 m!5290663))

(declare-fun m!5290665 () Bool)

(assert (=> b!4532118 m!5290665))

(declare-fun m!5290667 () Bool)

(assert (=> b!4532118 m!5290667))

(declare-fun m!5290669 () Bool)

(assert (=> b!4532133 m!5290669))

(declare-fun m!5290671 () Bool)

(assert (=> b!4532132 m!5290671))

(declare-fun m!5290673 () Bool)

(assert (=> b!4532110 m!5290673))

(declare-fun m!5290675 () Bool)

(assert (=> b!4532127 m!5290675))

(declare-fun m!5290677 () Bool)

(assert (=> b!4532109 m!5290677))

(declare-fun m!5290679 () Bool)

(assert (=> b!4532119 m!5290679))

(declare-fun m!5290681 () Bool)

(assert (=> b!4532119 m!5290681))

(declare-fun m!5290683 () Bool)

(assert (=> b!4532119 m!5290683))

(assert (=> b!4532119 m!5290679))

(declare-fun m!5290685 () Bool)

(assert (=> b!4532119 m!5290685))

(declare-fun m!5290687 () Bool)

(assert (=> b!4532119 m!5290687))

(declare-fun m!5290689 () Bool)

(assert (=> b!4532125 m!5290689))

(declare-fun m!5290691 () Bool)

(assert (=> b!4532120 m!5290691))

(declare-fun m!5290693 () Bool)

(assert (=> b!4532120 m!5290693))

(declare-fun m!5290695 () Bool)

(assert (=> b!4532113 m!5290695))

(declare-fun m!5290697 () Bool)

(assert (=> b!4532113 m!5290697))

(declare-fun m!5290699 () Bool)

(assert (=> b!4532113 m!5290699))

(declare-fun m!5290701 () Bool)

(assert (=> b!4532115 m!5290701))

(declare-fun m!5290703 () Bool)

(assert (=> b!4532134 m!5290703))

(declare-fun m!5290705 () Bool)

(assert (=> b!4532134 m!5290705))

(declare-fun m!5290707 () Bool)

(assert (=> b!4532108 m!5290707))

(declare-fun m!5290709 () Bool)

(assert (=> b!4532108 m!5290709))

(declare-fun m!5290711 () Bool)

(assert (=> b!4532129 m!5290711))

(declare-fun m!5290713 () Bool)

(assert (=> b!4532126 m!5290713))

(declare-fun m!5290715 () Bool)

(assert (=> b!4532123 m!5290715))

(declare-fun m!5290717 () Bool)

(assert (=> b!4532114 m!5290717))

(declare-fun m!5290719 () Bool)

(assert (=> b!4532114 m!5290719))

(assert (=> b!4532114 m!5290719))

(declare-fun m!5290721 () Bool)

(assert (=> b!4532114 m!5290721))

(declare-fun m!5290723 () Bool)

(assert (=> b!4532114 m!5290723))

(declare-fun m!5290725 () Bool)

(assert (=> start!449480 m!5290725))

(declare-fun m!5290727 () Bool)

(assert (=> start!449480 m!5290727))

(declare-fun m!5290729 () Bool)

(assert (=> b!4532131 m!5290729))

(declare-fun m!5290731 () Bool)

(assert (=> b!4532128 m!5290731))

(declare-fun m!5290733 () Bool)

(assert (=> b!4532128 m!5290733))

(declare-fun m!5290735 () Bool)

(assert (=> b!4532128 m!5290735))

(declare-fun m!5290737 () Bool)

(assert (=> b!4532128 m!5290737))

(declare-fun m!5290739 () Bool)

(assert (=> b!4532124 m!5290739))

(declare-fun m!5290741 () Bool)

(assert (=> b!4532116 m!5290741))

(declare-fun m!5290743 () Bool)

(assert (=> b!4532116 m!5290743))

(declare-fun m!5290745 () Bool)

(assert (=> b!4532116 m!5290745))

(declare-fun m!5290747 () Bool)

(assert (=> b!4532116 m!5290747))

(declare-fun m!5290749 () Bool)

(assert (=> b!4532116 m!5290749))

(declare-fun m!5290751 () Bool)

(assert (=> b!4532116 m!5290751))

(declare-fun m!5290753 () Bool)

(assert (=> b!4532116 m!5290753))

(declare-fun m!5290755 () Bool)

(assert (=> b!4532116 m!5290755))

(declare-fun m!5290757 () Bool)

(assert (=> b!4532116 m!5290757))

(declare-fun m!5290759 () Bool)

(assert (=> b!4532117 m!5290759))

(declare-fun m!5290761 () Bool)

(assert (=> b!4532117 m!5290761))

(declare-fun m!5290763 () Bool)

(assert (=> b!4532117 m!5290763))

(declare-fun m!5290765 () Bool)

(assert (=> b!4532117 m!5290765))

(declare-fun m!5290767 () Bool)

(assert (=> b!4532107 m!5290767))

(declare-fun m!5290769 () Bool)

(assert (=> b!4532107 m!5290769))

(check-sat (not b!4532124) (not b!4532112) (not b!4532125) (not b!4532134) (not b!4532131) tp_is_empty!28015 (not b!4532114) (not b!4532116) (not b!4532108) tp_is_empty!28013 (not b!4532129) (not b!4532132) (not b!4532120) (not b!4532136) (not b!4532115) (not b!4532118) (not b!4532113) (not b!4532126) (not b!4532135) (not b!4532128) (not start!449480) (not b!4532107) (not b!4532109) (not b!4532127) (not b!4532110) (not b!4532123) (not b!4532133) (not b!4532119) (not b!4532117))
(check-sat)
(get-model)

(declare-fun d!1399088 () Bool)

(declare-fun res!1887729 () Bool)

(declare-fun e!2823990 () Bool)

(assert (=> d!1399088 (=> res!1887729 e!2823990)))

(assert (=> d!1399088 (= res!1887729 (and ((_ is Cons!50712) (_2!28880 lt!1707605)) (= (_1!28879 (h!56583 (_2!28880 lt!1707605))) key!3287)))))

(assert (=> d!1399088 (= (containsKey!1840 (_2!28880 lt!1707605) key!3287) e!2823990)))

(declare-fun b!4532147 () Bool)

(declare-fun e!2823991 () Bool)

(assert (=> b!4532147 (= e!2823990 e!2823991)))

(declare-fun res!1887730 () Bool)

(assert (=> b!4532147 (=> (not res!1887730) (not e!2823991))))

(assert (=> b!4532147 (= res!1887730 ((_ is Cons!50712) (_2!28880 lt!1707605)))))

(declare-fun b!4532148 () Bool)

(assert (=> b!4532148 (= e!2823991 (containsKey!1840 (t!357798 (_2!28880 lt!1707605)) key!3287))))

(assert (= (and d!1399088 (not res!1887729)) b!4532147))

(assert (= (and b!4532147 res!1887730) b!4532148))

(declare-fun m!5290777 () Bool)

(assert (=> b!4532148 m!5290777))

(assert (=> b!4532110 d!1399088))

(declare-fun bs!867997 () Bool)

(declare-fun d!1399090 () Bool)

(assert (= bs!867997 (and d!1399090 b!4532128)))

(declare-fun lambda!174643 () Int)

(assert (=> bs!867997 (= (= hash!344 (_1!28880 (h!56584 (toList!4375 lm!1477)))) (= lambda!174643 lambda!174637))))

(assert (=> d!1399090 true))

(assert (=> d!1399090 true))

(declare-fun forall!10317 (List!50836 Int) Bool)

(assert (=> d!1399090 (= (allKeysSameHash!1038 newBucket!178 hash!344 hashF!1107) (forall!10317 newBucket!178 lambda!174643))))

(declare-fun bs!867998 () Bool)

(assert (= bs!867998 d!1399090))

(declare-fun m!5290779 () Bool)

(assert (=> bs!867998 m!5290779))

(assert (=> b!4532132 d!1399090))

(declare-fun d!1399092 () Bool)

(declare-fun isEmpty!28720 (List!50837) Bool)

(assert (=> d!1399092 (= (isEmpty!28719 lm!1477) (isEmpty!28720 (toList!4375 lm!1477)))))

(declare-fun bs!867999 () Bool)

(assert (= bs!867999 d!1399092))

(declare-fun m!5290781 () Bool)

(assert (=> bs!867999 m!5290781))

(assert (=> b!4532133 d!1399092))

(declare-fun d!1399094 () Bool)

(declare-fun head!9456 (List!50837) tuple2!51172)

(assert (=> d!1399094 (= (head!9454 lt!1707597) (head!9456 (toList!4375 lt!1707597)))))

(declare-fun bs!868000 () Bool)

(assert (= bs!868000 d!1399094))

(declare-fun m!5290783 () Bool)

(assert (=> bs!868000 m!5290783))

(assert (=> b!4532129 d!1399094))

(declare-fun b!4532173 () Bool)

(declare-fun e!2824006 () Bool)

(declare-fun e!2824008 () Bool)

(assert (=> b!4532173 (= e!2824006 e!2824008)))

(declare-fun res!1887738 () Bool)

(assert (=> b!4532173 (=> (not res!1887738) (not e!2824008))))

(declare-datatypes ((Option!11170 0))(
  ( (None!11169) (Some!11169 (v!44833 V!12346)) )
))
(declare-fun isDefined!8451 (Option!11170) Bool)

(declare-fun getValueByKey!1128 (List!50836 K!12100) Option!11170)

(assert (=> b!4532173 (= res!1887738 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707611) key!3287)))))

(declare-fun b!4532174 () Bool)

(declare-datatypes ((List!50839 0))(
  ( (Nil!50715) (Cons!50715 (h!56588 K!12100) (t!357801 List!50839)) )
))
(declare-fun e!2824011 () List!50839)

(declare-fun getKeysList!483 (List!50836) List!50839)

(assert (=> b!4532174 (= e!2824011 (getKeysList!483 (toList!4376 lt!1707611)))))

(declare-fun b!4532175 () Bool)

(declare-fun keys!17636 (ListMap!3637) List!50839)

(assert (=> b!4532175 (= e!2824011 (keys!17636 lt!1707611))))

(declare-fun b!4532176 () Bool)

(declare-fun contains!13483 (List!50839 K!12100) Bool)

(assert (=> b!4532176 (= e!2824008 (contains!13483 (keys!17636 lt!1707611) key!3287))))

(declare-fun b!4532177 () Bool)

(declare-fun e!2824010 () Bool)

(assert (=> b!4532177 (= e!2824010 (not (contains!13483 (keys!17636 lt!1707611) key!3287)))))

(declare-fun b!4532178 () Bool)

(declare-fun e!2824009 () Unit!97092)

(declare-fun lt!1707667 () Unit!97092)

(assert (=> b!4532178 (= e!2824009 lt!1707667)))

(declare-fun lt!1707668 () Unit!97092)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (List!50836 K!12100) Unit!97092)

(assert (=> b!4532178 (= lt!1707668 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1707611) key!3287))))

(assert (=> b!4532178 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707611) key!3287))))

(declare-fun lt!1707663 () Unit!97092)

(assert (=> b!4532178 (= lt!1707663 lt!1707668)))

(declare-fun lemmaInListThenGetKeysListContains!479 (List!50836 K!12100) Unit!97092)

(assert (=> b!4532178 (= lt!1707667 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1707611) key!3287))))

(declare-fun call!315920 () Bool)

(assert (=> b!4532178 call!315920))

(declare-fun b!4532179 () Bool)

(declare-fun e!2824007 () Unit!97092)

(assert (=> b!4532179 (= e!2824009 e!2824007)))

(declare-fun c!773859 () Bool)

(assert (=> b!4532179 (= c!773859 call!315920)))

(declare-fun b!4532180 () Bool)

(assert (=> b!4532180 false))

(declare-fun lt!1707661 () Unit!97092)

(declare-fun lt!1707666 () Unit!97092)

(assert (=> b!4532180 (= lt!1707661 lt!1707666)))

(declare-fun containsKey!1843 (List!50836 K!12100) Bool)

(assert (=> b!4532180 (containsKey!1843 (toList!4376 lt!1707611) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!482 (List!50836 K!12100) Unit!97092)

(assert (=> b!4532180 (= lt!1707666 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1707611) key!3287))))

(declare-fun Unit!97125 () Unit!97092)

(assert (=> b!4532180 (= e!2824007 Unit!97125)))

(declare-fun d!1399096 () Bool)

(assert (=> d!1399096 e!2824006))

(declare-fun res!1887739 () Bool)

(assert (=> d!1399096 (=> res!1887739 e!2824006)))

(assert (=> d!1399096 (= res!1887739 e!2824010)))

(declare-fun res!1887737 () Bool)

(assert (=> d!1399096 (=> (not res!1887737) (not e!2824010))))

(declare-fun lt!1707670 () Bool)

(assert (=> d!1399096 (= res!1887737 (not lt!1707670))))

(declare-fun lt!1707669 () Bool)

(assert (=> d!1399096 (= lt!1707670 lt!1707669)))

(declare-fun lt!1707662 () Unit!97092)

(assert (=> d!1399096 (= lt!1707662 e!2824009)))

(declare-fun c!773860 () Bool)

(assert (=> d!1399096 (= c!773860 lt!1707669)))

(assert (=> d!1399096 (= lt!1707669 (containsKey!1843 (toList!4376 lt!1707611) key!3287))))

(assert (=> d!1399096 (= (contains!13479 lt!1707611 key!3287) lt!1707670)))

(declare-fun b!4532181 () Bool)

(declare-fun Unit!97126 () Unit!97092)

(assert (=> b!4532181 (= e!2824007 Unit!97126)))

(declare-fun bm!315915 () Bool)

(assert (=> bm!315915 (= call!315920 (contains!13483 e!2824011 key!3287))))

(declare-fun c!773858 () Bool)

(assert (=> bm!315915 (= c!773858 c!773860)))

(assert (= (and d!1399096 c!773860) b!4532178))

(assert (= (and d!1399096 (not c!773860)) b!4532179))

(assert (= (and b!4532179 c!773859) b!4532180))

(assert (= (and b!4532179 (not c!773859)) b!4532181))

(assert (= (or b!4532178 b!4532179) bm!315915))

(assert (= (and bm!315915 c!773858) b!4532174))

(assert (= (and bm!315915 (not c!773858)) b!4532175))

(assert (= (and d!1399096 res!1887737) b!4532177))

(assert (= (and d!1399096 (not res!1887739)) b!4532173))

(assert (= (and b!4532173 res!1887738) b!4532176))

(declare-fun m!5290785 () Bool)

(assert (=> b!4532178 m!5290785))

(declare-fun m!5290787 () Bool)

(assert (=> b!4532178 m!5290787))

(assert (=> b!4532178 m!5290787))

(declare-fun m!5290789 () Bool)

(assert (=> b!4532178 m!5290789))

(declare-fun m!5290791 () Bool)

(assert (=> b!4532178 m!5290791))

(declare-fun m!5290793 () Bool)

(assert (=> b!4532176 m!5290793))

(assert (=> b!4532176 m!5290793))

(declare-fun m!5290795 () Bool)

(assert (=> b!4532176 m!5290795))

(assert (=> b!4532175 m!5290793))

(declare-fun m!5290797 () Bool)

(assert (=> bm!315915 m!5290797))

(assert (=> b!4532177 m!5290793))

(assert (=> b!4532177 m!5290793))

(assert (=> b!4532177 m!5290795))

(declare-fun m!5290799 () Bool)

(assert (=> b!4532180 m!5290799))

(declare-fun m!5290801 () Bool)

(assert (=> b!4532180 m!5290801))

(assert (=> b!4532173 m!5290787))

(assert (=> b!4532173 m!5290787))

(assert (=> b!4532173 m!5290789))

(declare-fun m!5290803 () Bool)

(assert (=> b!4532174 m!5290803))

(assert (=> d!1399096 m!5290799))

(assert (=> b!4532108 d!1399096))

(declare-fun bs!868010 () Bool)

(declare-fun d!1399098 () Bool)

(assert (= bs!868010 (and d!1399098 start!449480)))

(declare-fun lambda!174681 () Int)

(assert (=> bs!868010 (= lambda!174681 lambda!174635)))

(declare-fun bs!868011 () Bool)

(assert (= bs!868011 (and d!1399098 b!4532128)))

(assert (=> bs!868011 (not (= lambda!174681 lambda!174636))))

(declare-fun lt!1707721 () ListMap!3637)

(declare-fun invariantList!1035 (List!50836) Bool)

(assert (=> d!1399098 (invariantList!1035 (toList!4376 lt!1707721))))

(declare-fun e!2824024 () ListMap!3637)

(assert (=> d!1399098 (= lt!1707721 e!2824024)))

(declare-fun c!773867 () Bool)

(assert (=> d!1399098 (= c!773867 ((_ is Cons!50713) (toList!4375 lm!1477)))))

(assert (=> d!1399098 (forall!10315 (toList!4375 lm!1477) lambda!174681)))

(assert (=> d!1399098 (= (extractMap!1240 (toList!4375 lm!1477)) lt!1707721)))

(declare-fun b!4532205 () Bool)

(assert (=> b!4532205 (= e!2824024 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 lm!1477))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))

(declare-fun b!4532206 () Bool)

(assert (=> b!4532206 (= e!2824024 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399098 c!773867) b!4532205))

(assert (= (and d!1399098 (not c!773867)) b!4532206))

(declare-fun m!5290845 () Bool)

(assert (=> d!1399098 m!5290845))

(declare-fun m!5290847 () Bool)

(assert (=> d!1399098 m!5290847))

(assert (=> b!4532205 m!5290679))

(assert (=> b!4532205 m!5290679))

(declare-fun m!5290849 () Bool)

(assert (=> b!4532205 m!5290849))

(assert (=> b!4532108 d!1399098))

(declare-fun bs!868012 () Bool)

(declare-fun d!1399104 () Bool)

(assert (= bs!868012 (and d!1399104 start!449480)))

(declare-fun lambda!174684 () Int)

(assert (=> bs!868012 (not (= lambda!174684 lambda!174635))))

(declare-fun bs!868013 () Bool)

(assert (= bs!868013 (and d!1399104 b!4532128)))

(assert (=> bs!868013 (= lambda!174684 lambda!174636)))

(declare-fun bs!868014 () Bool)

(assert (= bs!868014 (and d!1399104 d!1399098)))

(assert (=> bs!868014 (not (= lambda!174684 lambda!174681))))

(assert (=> d!1399104 true))

(assert (=> d!1399104 (= (allKeysSameHashInMap!1291 lm!1477 hashF!1107) (forall!10315 (toList!4375 lm!1477) lambda!174684))))

(declare-fun bs!868015 () Bool)

(assert (= bs!868015 d!1399104))

(declare-fun m!5290851 () Bool)

(assert (=> bs!868015 m!5290851))

(assert (=> b!4532109 d!1399104))

(declare-fun d!1399106 () Bool)

(declare-fun res!1887756 () Bool)

(declare-fun e!2824032 () Bool)

(assert (=> d!1399106 (=> res!1887756 e!2824032)))

(assert (=> d!1399106 (= res!1887756 ((_ is Nil!50713) (toList!4375 lm!1477)))))

(assert (=> d!1399106 (= (forall!10315 (toList!4375 lm!1477) lambda!174635) e!2824032)))

(declare-fun b!4532214 () Bool)

(declare-fun e!2824033 () Bool)

(assert (=> b!4532214 (= e!2824032 e!2824033)))

(declare-fun res!1887757 () Bool)

(assert (=> b!4532214 (=> (not res!1887757) (not e!2824033))))

(declare-fun dynLambda!21195 (Int tuple2!51172) Bool)

(assert (=> b!4532214 (= res!1887757 (dynLambda!21195 lambda!174635 (h!56584 (toList!4375 lm!1477))))))

(declare-fun b!4532215 () Bool)

(assert (=> b!4532215 (= e!2824033 (forall!10315 (t!357799 (toList!4375 lm!1477)) lambda!174635))))

(assert (= (and d!1399106 (not res!1887756)) b!4532214))

(assert (= (and b!4532214 res!1887757) b!4532215))

(declare-fun b_lambda!156755 () Bool)

(assert (=> (not b_lambda!156755) (not b!4532214)))

(declare-fun m!5290871 () Bool)

(assert (=> b!4532214 m!5290871))

(declare-fun m!5290873 () Bool)

(assert (=> b!4532215 m!5290873))

(assert (=> start!449480 d!1399106))

(declare-fun d!1399112 () Bool)

(declare-fun isStrictlySorted!449 (List!50837) Bool)

(assert (=> d!1399112 (= (inv!66284 lm!1477) (isStrictlySorted!449 (toList!4375 lm!1477)))))

(declare-fun bs!868017 () Bool)

(assert (= bs!868017 d!1399112))

(declare-fun m!5290875 () Bool)

(assert (=> bs!868017 m!5290875))

(assert (=> start!449480 d!1399112))

(declare-fun bs!868029 () Bool)

(declare-fun d!1399114 () Bool)

(assert (= bs!868029 (and d!1399114 start!449480)))

(declare-fun lambda!174691 () Int)

(assert (=> bs!868029 (= lambda!174691 lambda!174635)))

(declare-fun bs!868030 () Bool)

(assert (= bs!868030 (and d!1399114 b!4532128)))

(assert (=> bs!868030 (not (= lambda!174691 lambda!174636))))

(declare-fun bs!868031 () Bool)

(assert (= bs!868031 (and d!1399114 d!1399098)))

(assert (=> bs!868031 (= lambda!174691 lambda!174681)))

(declare-fun bs!868032 () Bool)

(assert (= bs!868032 (and d!1399114 d!1399104)))

(assert (=> bs!868032 (not (= lambda!174691 lambda!174684))))

(assert (=> d!1399114 (not (contains!13479 (extractMap!1240 (toList!4375 lm!1477)) key!3287))))

(declare-fun lt!1707739 () Unit!97092)

(declare-fun choose!29756 (ListLongMap!3007 K!12100 Hashable!5579) Unit!97092)

(assert (=> d!1399114 (= lt!1707739 (choose!29756 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1399114 (forall!10315 (toList!4375 lm!1477) lambda!174691)))

(assert (=> d!1399114 (= (lemmaNotInItsHashBucketThenNotInMap!172 lm!1477 key!3287 hashF!1107) lt!1707739)))

(declare-fun bs!868033 () Bool)

(assert (= bs!868033 d!1399114))

(assert (=> bs!868033 m!5290709))

(assert (=> bs!868033 m!5290709))

(declare-fun m!5290901 () Bool)

(assert (=> bs!868033 m!5290901))

(declare-fun m!5290903 () Bool)

(assert (=> bs!868033 m!5290903))

(declare-fun m!5290905 () Bool)

(assert (=> bs!868033 m!5290905))

(assert (=> b!4532131 d!1399114))

(declare-fun d!1399122 () Bool)

(declare-fun e!2824054 () Bool)

(assert (=> d!1399122 e!2824054))

(declare-fun res!1887780 () Bool)

(assert (=> d!1399122 (=> (not res!1887780) (not e!2824054))))

(declare-fun lt!1707771 () ListLongMap!3007)

(assert (=> d!1399122 (= res!1887780 (contains!13481 lt!1707771 (_1!28880 lt!1707610)))))

(declare-fun lt!1707770 () List!50837)

(assert (=> d!1399122 (= lt!1707771 (ListLongMap!3008 lt!1707770))))

(declare-fun lt!1707769 () Unit!97092)

(declare-fun lt!1707772 () Unit!97092)

(assert (=> d!1399122 (= lt!1707769 lt!1707772)))

(declare-datatypes ((Option!11171 0))(
  ( (None!11170) (Some!11170 (v!44834 List!50836)) )
))
(declare-fun getValueByKey!1129 (List!50837 (_ BitVec 64)) Option!11171)

(assert (=> d!1399122 (= (getValueByKey!1129 lt!1707770 (_1!28880 lt!1707610)) (Some!11170 (_2!28880 lt!1707610)))))

(declare-fun lemmaContainsTupThenGetReturnValue!706 (List!50837 (_ BitVec 64) List!50836) Unit!97092)

(assert (=> d!1399122 (= lt!1707772 (lemmaContainsTupThenGetReturnValue!706 lt!1707770 (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))

(declare-fun insertStrictlySorted!426 (List!50837 (_ BitVec 64) List!50836) List!50837)

(assert (=> d!1399122 (= lt!1707770 (insertStrictlySorted!426 (toList!4375 lt!1707598) (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))

(assert (=> d!1399122 (= (+!1580 lt!1707598 lt!1707610) lt!1707771)))

(declare-fun b!4532247 () Bool)

(declare-fun res!1887779 () Bool)

(assert (=> b!4532247 (=> (not res!1887779) (not e!2824054))))

(assert (=> b!4532247 (= res!1887779 (= (getValueByKey!1129 (toList!4375 lt!1707771) (_1!28880 lt!1707610)) (Some!11170 (_2!28880 lt!1707610))))))

(declare-fun b!4532248 () Bool)

(assert (=> b!4532248 (= e!2824054 (contains!13480 (toList!4375 lt!1707771) lt!1707610))))

(assert (= (and d!1399122 res!1887780) b!4532247))

(assert (= (and b!4532247 res!1887779) b!4532248))

(declare-fun m!5290955 () Bool)

(assert (=> d!1399122 m!5290955))

(declare-fun m!5290959 () Bool)

(assert (=> d!1399122 m!5290959))

(declare-fun m!5290961 () Bool)

(assert (=> d!1399122 m!5290961))

(declare-fun m!5290963 () Bool)

(assert (=> d!1399122 m!5290963))

(declare-fun m!5290965 () Bool)

(assert (=> b!4532247 m!5290965))

(declare-fun m!5290967 () Bool)

(assert (=> b!4532248 m!5290967))

(assert (=> b!4532116 d!1399122))

(declare-fun d!1399140 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8411 (List!50836) (InoxSet tuple2!51170))

(assert (=> d!1399140 (= (eq!641 lt!1707628 lt!1707600) (= (content!8411 (toList!4376 lt!1707628)) (content!8411 (toList!4376 lt!1707600))))))

(declare-fun bs!868043 () Bool)

(assert (= bs!868043 d!1399140))

(declare-fun m!5290971 () Bool)

(assert (=> bs!868043 m!5290971))

(declare-fun m!5290973 () Bool)

(assert (=> bs!868043 m!5290973))

(assert (=> b!4532116 d!1399140))

(declare-fun d!1399144 () Bool)

(assert (=> d!1399144 (= (eq!641 lt!1707608 lt!1707611) (= (content!8411 (toList!4376 lt!1707608)) (content!8411 (toList!4376 lt!1707611))))))

(declare-fun bs!868044 () Bool)

(assert (= bs!868044 d!1399144))

(declare-fun m!5290975 () Bool)

(assert (=> bs!868044 m!5290975))

(declare-fun m!5290979 () Bool)

(assert (=> bs!868044 m!5290979))

(assert (=> b!4532116 d!1399144))

(declare-fun bs!868048 () Bool)

(declare-fun d!1399148 () Bool)

(assert (= bs!868048 (and d!1399148 start!449480)))

(declare-fun lambda!174693 () Int)

(assert (=> bs!868048 (= lambda!174693 lambda!174635)))

(declare-fun bs!868049 () Bool)

(assert (= bs!868049 (and d!1399148 d!1399114)))

(assert (=> bs!868049 (= lambda!174693 lambda!174691)))

(declare-fun bs!868051 () Bool)

(assert (= bs!868051 (and d!1399148 d!1399098)))

(assert (=> bs!868051 (= lambda!174693 lambda!174681)))

(declare-fun bs!868053 () Bool)

(assert (= bs!868053 (and d!1399148 b!4532128)))

(assert (=> bs!868053 (not (= lambda!174693 lambda!174636))))

(declare-fun bs!868056 () Bool)

(assert (= bs!868056 (and d!1399148 d!1399104)))

(assert (=> bs!868056 (not (= lambda!174693 lambda!174684))))

(declare-fun lt!1707773 () ListMap!3637)

(assert (=> d!1399148 (invariantList!1035 (toList!4376 lt!1707773))))

(declare-fun e!2824061 () ListMap!3637)

(assert (=> d!1399148 (= lt!1707773 e!2824061)))

(declare-fun c!773873 () Bool)

(assert (=> d!1399148 (= c!773873 ((_ is Cons!50713) (toList!4375 lt!1707617)))))

(assert (=> d!1399148 (forall!10315 (toList!4375 lt!1707617) lambda!174693)))

(assert (=> d!1399148 (= (extractMap!1240 (toList!4375 lt!1707617)) lt!1707773)))

(declare-fun b!4532255 () Bool)

(assert (=> b!4532255 (= e!2824061 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))))))

(declare-fun b!4532256 () Bool)

(assert (=> b!4532256 (= e!2824061 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399148 c!773873) b!4532255))

(assert (= (and d!1399148 (not c!773873)) b!4532256))

(declare-fun m!5290983 () Bool)

(assert (=> d!1399148 m!5290983))

(declare-fun m!5290985 () Bool)

(assert (=> d!1399148 m!5290985))

(declare-fun m!5290987 () Bool)

(assert (=> b!4532255 m!5290987))

(assert (=> b!4532255 m!5290987))

(declare-fun m!5290989 () Bool)

(assert (=> b!4532255 m!5290989))

(assert (=> b!4532116 d!1399148))

(declare-fun d!1399154 () Bool)

(declare-fun e!2824067 () Bool)

(assert (=> d!1399154 e!2824067))

(declare-fun res!1887792 () Bool)

(assert (=> d!1399154 (=> (not res!1887792) (not e!2824067))))

(declare-fun lt!1707797 () ListMap!3637)

(assert (=> d!1399154 (= res!1887792 (not (contains!13479 lt!1707797 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!159 (List!50836 K!12100) List!50836)

(assert (=> d!1399154 (= lt!1707797 (ListMap!3638 (removePresrvNoDuplicatedKeys!159 (toList!4376 lt!1707612) key!3287)))))

(assert (=> d!1399154 (= (-!410 lt!1707612 key!3287) lt!1707797)))

(declare-fun b!4532264 () Bool)

(declare-fun content!8412 (List!50839) (InoxSet K!12100))

(assert (=> b!4532264 (= e!2824067 (= ((_ map and) (content!8412 (keys!17636 lt!1707612)) ((_ map not) (store ((as const (Array K!12100 Bool)) false) key!3287 true))) (content!8412 (keys!17636 lt!1707797))))))

(assert (= (and d!1399154 res!1887792) b!4532264))

(declare-fun m!5291023 () Bool)

(assert (=> d!1399154 m!5291023))

(declare-fun m!5291025 () Bool)

(assert (=> d!1399154 m!5291025))

(declare-fun m!5291027 () Bool)

(assert (=> b!4532264 m!5291027))

(declare-fun m!5291029 () Bool)

(assert (=> b!4532264 m!5291029))

(declare-fun m!5291031 () Bool)

(assert (=> b!4532264 m!5291031))

(declare-fun m!5291033 () Bool)

(assert (=> b!4532264 m!5291033))

(assert (=> b!4532264 m!5291031))

(assert (=> b!4532264 m!5291029))

(declare-fun m!5291035 () Bool)

(assert (=> b!4532264 m!5291035))

(assert (=> b!4532116 d!1399154))

(declare-fun d!1399158 () Bool)

(declare-fun e!2824068 () Bool)

(assert (=> d!1399158 e!2824068))

(declare-fun res!1887794 () Bool)

(assert (=> d!1399158 (=> (not res!1887794) (not e!2824068))))

(declare-fun lt!1707800 () ListLongMap!3007)

(assert (=> d!1399158 (= res!1887794 (contains!13481 lt!1707800 (_1!28880 lt!1707605)))))

(declare-fun lt!1707799 () List!50837)

(assert (=> d!1399158 (= lt!1707800 (ListLongMap!3008 lt!1707799))))

(declare-fun lt!1707798 () Unit!97092)

(declare-fun lt!1707801 () Unit!97092)

(assert (=> d!1399158 (= lt!1707798 lt!1707801)))

(assert (=> d!1399158 (= (getValueByKey!1129 lt!1707799 (_1!28880 lt!1707605)) (Some!11170 (_2!28880 lt!1707605)))))

(assert (=> d!1399158 (= lt!1707801 (lemmaContainsTupThenGetReturnValue!706 lt!1707799 (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))

(assert (=> d!1399158 (= lt!1707799 (insertStrictlySorted!426 (toList!4375 lt!1707598) (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))

(assert (=> d!1399158 (= (+!1580 lt!1707598 lt!1707605) lt!1707800)))

(declare-fun b!4532265 () Bool)

(declare-fun res!1887793 () Bool)

(assert (=> b!4532265 (=> (not res!1887793) (not e!2824068))))

(assert (=> b!4532265 (= res!1887793 (= (getValueByKey!1129 (toList!4375 lt!1707800) (_1!28880 lt!1707605)) (Some!11170 (_2!28880 lt!1707605))))))

(declare-fun b!4532266 () Bool)

(assert (=> b!4532266 (= e!2824068 (contains!13480 (toList!4375 lt!1707800) lt!1707605))))

(assert (= (and d!1399158 res!1887794) b!4532265))

(assert (= (and b!4532265 res!1887793) b!4532266))

(declare-fun m!5291037 () Bool)

(assert (=> d!1399158 m!5291037))

(declare-fun m!5291039 () Bool)

(assert (=> d!1399158 m!5291039))

(declare-fun m!5291041 () Bool)

(assert (=> d!1399158 m!5291041))

(declare-fun m!5291043 () Bool)

(assert (=> d!1399158 m!5291043))

(declare-fun m!5291045 () Bool)

(assert (=> b!4532265 m!5291045))

(declare-fun m!5291047 () Bool)

(assert (=> b!4532266 m!5291047))

(assert (=> b!4532116 d!1399158))

(declare-fun bs!868078 () Bool)

(declare-fun d!1399160 () Bool)

(assert (= bs!868078 (and d!1399160 start!449480)))

(declare-fun lambda!174703 () Int)

(assert (=> bs!868078 (= lambda!174703 lambda!174635)))

(declare-fun bs!868080 () Bool)

(assert (= bs!868080 (and d!1399160 d!1399148)))

(assert (=> bs!868080 (= lambda!174703 lambda!174693)))

(declare-fun bs!868081 () Bool)

(assert (= bs!868081 (and d!1399160 d!1399114)))

(assert (=> bs!868081 (= lambda!174703 lambda!174691)))

(declare-fun bs!868082 () Bool)

(assert (= bs!868082 (and d!1399160 d!1399098)))

(assert (=> bs!868082 (= lambda!174703 lambda!174681)))

(declare-fun bs!868083 () Bool)

(assert (= bs!868083 (and d!1399160 b!4532128)))

(assert (=> bs!868083 (not (= lambda!174703 lambda!174636))))

(declare-fun bs!868084 () Bool)

(assert (= bs!868084 (and d!1399160 d!1399104)))

(assert (=> bs!868084 (not (= lambda!174703 lambda!174684))))

(assert (=> d!1399160 (eq!641 (extractMap!1240 (toList!4375 (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178)))) (-!410 (extractMap!1240 (toList!4375 lt!1707598)) key!3287))))

(declare-fun lt!1707810 () Unit!97092)

(declare-fun choose!29758 (ListLongMap!3007 (_ BitVec 64) List!50836 K!12100 Hashable!5579) Unit!97092)

(assert (=> d!1399160 (= lt!1707810 (choose!29758 lt!1707598 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1399160 (forall!10315 (toList!4375 lt!1707598) lambda!174703)))

(assert (=> d!1399160 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!169 lt!1707598 hash!344 newBucket!178 key!3287 hashF!1107) lt!1707810)))

(declare-fun bs!868085 () Bool)

(assert (= bs!868085 d!1399160))

(assert (=> bs!868085 m!5290683))

(declare-fun m!5291067 () Bool)

(assert (=> bs!868085 m!5291067))

(declare-fun m!5291069 () Bool)

(assert (=> bs!868085 m!5291069))

(declare-fun m!5291071 () Bool)

(assert (=> bs!868085 m!5291071))

(assert (=> bs!868085 m!5291067))

(declare-fun m!5291073 () Bool)

(assert (=> bs!868085 m!5291073))

(assert (=> bs!868085 m!5291071))

(declare-fun m!5291075 () Bool)

(assert (=> bs!868085 m!5291075))

(declare-fun m!5291077 () Bool)

(assert (=> bs!868085 m!5291077))

(assert (=> bs!868085 m!5290683))

(assert (=> b!4532116 d!1399160))

(declare-fun d!1399172 () Bool)

(assert (=> d!1399172 (= (head!9454 lm!1477) (head!9456 (toList!4375 lm!1477)))))

(declare-fun bs!868086 () Bool)

(assert (= bs!868086 d!1399172))

(declare-fun m!5291079 () Bool)

(assert (=> bs!868086 m!5291079))

(assert (=> b!4532116 d!1399172))

(declare-fun bs!868087 () Bool)

(declare-fun d!1399174 () Bool)

(assert (= bs!868087 (and d!1399174 start!449480)))

(declare-fun lambda!174706 () Int)

(assert (=> bs!868087 (= lambda!174706 lambda!174635)))

(declare-fun bs!868088 () Bool)

(assert (= bs!868088 (and d!1399174 d!1399148)))

(assert (=> bs!868088 (= lambda!174706 lambda!174693)))

(declare-fun bs!868089 () Bool)

(assert (= bs!868089 (and d!1399174 d!1399114)))

(assert (=> bs!868089 (= lambda!174706 lambda!174691)))

(declare-fun bs!868090 () Bool)

(assert (= bs!868090 (and d!1399174 d!1399098)))

(assert (=> bs!868090 (= lambda!174706 lambda!174681)))

(declare-fun bs!868091 () Bool)

(assert (= bs!868091 (and d!1399174 b!4532128)))

(assert (=> bs!868091 (not (= lambda!174706 lambda!174636))))

(declare-fun bs!868093 () Bool)

(assert (= bs!868093 (and d!1399174 d!1399160)))

(assert (=> bs!868093 (= lambda!174706 lambda!174703)))

(declare-fun bs!868094 () Bool)

(assert (= bs!868094 (and d!1399174 d!1399104)))

(assert (=> bs!868094 (not (= lambda!174706 lambda!174684))))

(declare-fun lt!1707811 () ListMap!3637)

(assert (=> d!1399174 (invariantList!1035 (toList!4376 lt!1707811))))

(declare-fun e!2824075 () ListMap!3637)

(assert (=> d!1399174 (= lt!1707811 e!2824075)))

(declare-fun c!773875 () Bool)

(assert (=> d!1399174 (= c!773875 ((_ is Cons!50713) (toList!4375 (+!1580 lt!1707598 lt!1707605))))))

(assert (=> d!1399174 (forall!10315 (toList!4375 (+!1580 lt!1707598 lt!1707605)) lambda!174706)))

(assert (=> d!1399174 (= (extractMap!1240 (toList!4375 (+!1580 lt!1707598 lt!1707605))) lt!1707811)))

(declare-fun b!4532273 () Bool)

(assert (=> b!4532273 (= e!2824075 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))))))

(declare-fun b!4532274 () Bool)

(assert (=> b!4532274 (= e!2824075 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399174 c!773875) b!4532273))

(assert (= (and d!1399174 (not c!773875)) b!4532274))

(declare-fun m!5291081 () Bool)

(assert (=> d!1399174 m!5291081))

(declare-fun m!5291083 () Bool)

(assert (=> d!1399174 m!5291083))

(declare-fun m!5291085 () Bool)

(assert (=> b!4532273 m!5291085))

(assert (=> b!4532273 m!5291085))

(declare-fun m!5291087 () Bool)

(assert (=> b!4532273 m!5291087))

(assert (=> b!4532116 d!1399174))

(declare-fun d!1399176 () Bool)

(assert (=> d!1399176 (= (eq!641 lt!1707607 lt!1707626) (= (content!8411 (toList!4376 lt!1707607)) (content!8411 (toList!4376 lt!1707626))))))

(declare-fun bs!868101 () Bool)

(assert (= bs!868101 d!1399176))

(declare-fun m!5291089 () Bool)

(assert (=> bs!868101 m!5291089))

(declare-fun m!5291091 () Bool)

(assert (=> bs!868101 m!5291091))

(assert (=> b!4532117 d!1399176))

(declare-fun d!1399178 () Bool)

(assert (=> d!1399178 (= (eq!641 lt!1707596 lt!1707626) (= (content!8411 (toList!4376 lt!1707596)) (content!8411 (toList!4376 lt!1707626))))))

(declare-fun bs!868103 () Bool)

(assert (= bs!868103 d!1399178))

(declare-fun m!5291095 () Bool)

(assert (=> bs!868103 m!5291095))

(assert (=> bs!868103 m!5291091))

(assert (=> b!4532117 d!1399178))

(declare-fun bs!868202 () Bool)

(declare-fun b!4532428 () Bool)

(assert (= bs!868202 (and b!4532428 b!4532128)))

(declare-fun lambda!174752 () Int)

(assert (=> bs!868202 (not (= lambda!174752 lambda!174637))))

(declare-fun bs!868203 () Bool)

(assert (= bs!868203 (and b!4532428 d!1399090)))

(assert (=> bs!868203 (not (= lambda!174752 lambda!174643))))

(assert (=> b!4532428 true))

(declare-fun bs!868205 () Bool)

(declare-fun b!4532427 () Bool)

(assert (= bs!868205 (and b!4532427 b!4532128)))

(declare-fun lambda!174753 () Int)

(assert (=> bs!868205 (not (= lambda!174753 lambda!174637))))

(declare-fun bs!868207 () Bool)

(assert (= bs!868207 (and b!4532427 d!1399090)))

(assert (=> bs!868207 (not (= lambda!174753 lambda!174643))))

(declare-fun bs!868209 () Bool)

(assert (= bs!868209 (and b!4532427 b!4532428)))

(assert (=> bs!868209 (= lambda!174753 lambda!174752)))

(assert (=> b!4532427 true))

(declare-fun lambda!174754 () Int)

(assert (=> bs!868205 (not (= lambda!174754 lambda!174637))))

(assert (=> bs!868207 (not (= lambda!174754 lambda!174643))))

(declare-fun lt!1707972 () ListMap!3637)

(assert (=> bs!868209 (= (= lt!1707972 lt!1707600) (= lambda!174754 lambda!174752))))

(assert (=> b!4532427 (= (= lt!1707972 lt!1707600) (= lambda!174754 lambda!174753))))

(assert (=> b!4532427 true))

(declare-fun bs!868211 () Bool)

(declare-fun d!1399182 () Bool)

(assert (= bs!868211 (and d!1399182 b!4532427)))

(declare-fun lambda!174755 () Int)

(declare-fun lt!1707976 () ListMap!3637)

(assert (=> bs!868211 (= (= lt!1707976 lt!1707972) (= lambda!174755 lambda!174754))))

(declare-fun bs!868212 () Bool)

(assert (= bs!868212 (and d!1399182 b!4532128)))

(assert (=> bs!868212 (not (= lambda!174755 lambda!174637))))

(assert (=> bs!868211 (= (= lt!1707976 lt!1707600) (= lambda!174755 lambda!174753))))

(declare-fun bs!868213 () Bool)

(assert (= bs!868213 (and d!1399182 d!1399090)))

(assert (=> bs!868213 (not (= lambda!174755 lambda!174643))))

(declare-fun bs!868214 () Bool)

(assert (= bs!868214 (and d!1399182 b!4532428)))

(assert (=> bs!868214 (= (= lt!1707976 lt!1707600) (= lambda!174755 lambda!174752))))

(assert (=> d!1399182 true))

(declare-fun b!4532426 () Bool)

(declare-fun e!2824181 () Bool)

(assert (=> b!4532426 (= e!2824181 (forall!10317 (toList!4376 lt!1707600) lambda!174754))))

(declare-fun bm!315942 () Bool)

(declare-fun call!315947 () Unit!97092)

(declare-fun lemmaContainsAllItsOwnKeys!356 (ListMap!3637) Unit!97092)

(assert (=> bm!315942 (= call!315947 (lemmaContainsAllItsOwnKeys!356 lt!1707600))))

(declare-fun e!2824183 () Bool)

(assert (=> d!1399182 e!2824183))

(declare-fun res!1887878 () Bool)

(assert (=> d!1399182 (=> (not res!1887878) (not e!2824183))))

(assert (=> d!1399182 (= res!1887878 (forall!10317 (_2!28880 lt!1707605) lambda!174755))))

(declare-fun e!2824182 () ListMap!3637)

(assert (=> d!1399182 (= lt!1707976 e!2824182)))

(declare-fun c!773910 () Bool)

(assert (=> d!1399182 (= c!773910 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1399182 (noDuplicateKeys!1184 (_2!28880 lt!1707605))))

(assert (=> d!1399182 (= (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707600) lt!1707976)))

(assert (=> b!4532427 (= e!2824182 lt!1707972)))

(declare-fun lt!1707968 () ListMap!3637)

(declare-fun +!1582 (ListMap!3637 tuple2!51170) ListMap!3637)

(assert (=> b!4532427 (= lt!1707968 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4532427 (= lt!1707972 (addToMapMapFromBucket!711 (t!357798 (_2!28880 lt!1707605)) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1707979 () Unit!97092)

(assert (=> b!4532427 (= lt!1707979 call!315947)))

(declare-fun call!315949 () Bool)

(assert (=> b!4532427 call!315949))

(declare-fun lt!1707977 () Unit!97092)

(assert (=> b!4532427 (= lt!1707977 lt!1707979)))

(assert (=> b!4532427 (forall!10317 (toList!4376 lt!1707968) lambda!174754)))

(declare-fun lt!1707984 () Unit!97092)

(declare-fun Unit!97140 () Unit!97092)

(assert (=> b!4532427 (= lt!1707984 Unit!97140)))

(assert (=> b!4532427 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174754)))

(declare-fun lt!1707970 () Unit!97092)

(declare-fun Unit!97141 () Unit!97092)

(assert (=> b!4532427 (= lt!1707970 Unit!97141)))

(declare-fun lt!1707973 () Unit!97092)

(declare-fun Unit!97142 () Unit!97092)

(assert (=> b!4532427 (= lt!1707973 Unit!97142)))

(declare-fun lt!1707965 () Unit!97092)

(assert (=> b!4532427 (= lt!1707965 (forallContained!2573 (toList!4376 lt!1707968) lambda!174754 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4532427 (contains!13479 lt!1707968 (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1707975 () Unit!97092)

(declare-fun Unit!97143 () Unit!97092)

(assert (=> b!4532427 (= lt!1707975 Unit!97143)))

(assert (=> b!4532427 (contains!13479 lt!1707972 (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1707971 () Unit!97092)

(declare-fun Unit!97144 () Unit!97092)

(assert (=> b!4532427 (= lt!1707971 Unit!97144)))

(declare-fun call!315948 () Bool)

(assert (=> b!4532427 call!315948))

(declare-fun lt!1707967 () Unit!97092)

(declare-fun Unit!97145 () Unit!97092)

(assert (=> b!4532427 (= lt!1707967 Unit!97145)))

(assert (=> b!4532427 (forall!10317 (toList!4376 lt!1707968) lambda!174754)))

(declare-fun lt!1707964 () Unit!97092)

(declare-fun Unit!97146 () Unit!97092)

(assert (=> b!4532427 (= lt!1707964 Unit!97146)))

(declare-fun lt!1707981 () Unit!97092)

(declare-fun Unit!97147 () Unit!97092)

(assert (=> b!4532427 (= lt!1707981 Unit!97147)))

(declare-fun lt!1707966 () Unit!97092)

(declare-fun addForallContainsKeyThenBeforeAdding!356 (ListMap!3637 ListMap!3637 K!12100 V!12346) Unit!97092)

(assert (=> b!4532427 (= lt!1707966 (addForallContainsKeyThenBeforeAdding!356 lt!1707600 lt!1707972 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4532427 (forall!10317 (toList!4376 lt!1707600) lambda!174754)))

(declare-fun lt!1707980 () Unit!97092)

(assert (=> b!4532427 (= lt!1707980 lt!1707966)))

(assert (=> b!4532427 (forall!10317 (toList!4376 lt!1707600) lambda!174754)))

(declare-fun lt!1707982 () Unit!97092)

(declare-fun Unit!97148 () Unit!97092)

(assert (=> b!4532427 (= lt!1707982 Unit!97148)))

(declare-fun res!1887880 () Bool)

(assert (=> b!4532427 (= res!1887880 (forall!10317 (_2!28880 lt!1707605) lambda!174754))))

(assert (=> b!4532427 (=> (not res!1887880) (not e!2824181))))

(assert (=> b!4532427 e!2824181))

(declare-fun lt!1707974 () Unit!97092)

(declare-fun Unit!97149 () Unit!97092)

(assert (=> b!4532427 (= lt!1707974 Unit!97149)))

(assert (=> b!4532428 (= e!2824182 lt!1707600)))

(declare-fun lt!1707969 () Unit!97092)

(assert (=> b!4532428 (= lt!1707969 call!315947)))

(assert (=> b!4532428 call!315948))

(declare-fun lt!1707978 () Unit!97092)

(assert (=> b!4532428 (= lt!1707978 lt!1707969)))

(assert (=> b!4532428 call!315949))

(declare-fun lt!1707983 () Unit!97092)

(declare-fun Unit!97150 () Unit!97092)

(assert (=> b!4532428 (= lt!1707983 Unit!97150)))

(declare-fun bm!315943 () Bool)

(assert (=> bm!315943 (= call!315949 (forall!10317 (toList!4376 lt!1707600) (ite c!773910 lambda!174752 lambda!174753)))))

(declare-fun b!4532429 () Bool)

(assert (=> b!4532429 (= e!2824183 (invariantList!1035 (toList!4376 lt!1707976)))))

(declare-fun b!4532430 () Bool)

(declare-fun res!1887879 () Bool)

(assert (=> b!4532430 (=> (not res!1887879) (not e!2824183))))

(assert (=> b!4532430 (= res!1887879 (forall!10317 (toList!4376 lt!1707600) lambda!174755))))

(declare-fun bm!315944 () Bool)

(assert (=> bm!315944 (= call!315948 (forall!10317 (ite c!773910 (toList!4376 lt!1707600) (_2!28880 lt!1707605)) (ite c!773910 lambda!174752 lambda!174754)))))

(assert (= (and d!1399182 c!773910) b!4532428))

(assert (= (and d!1399182 (not c!773910)) b!4532427))

(assert (= (and b!4532427 res!1887880) b!4532426))

(assert (= (or b!4532428 b!4532427) bm!315944))

(assert (= (or b!4532428 b!4532427) bm!315943))

(assert (= (or b!4532428 b!4532427) bm!315942))

(assert (= (and d!1399182 res!1887878) b!4532430))

(assert (= (and b!4532430 res!1887879) b!4532429))

(declare-fun m!5291355 () Bool)

(assert (=> b!4532427 m!5291355))

(declare-fun m!5291357 () Bool)

(assert (=> b!4532427 m!5291357))

(declare-fun m!5291359 () Bool)

(assert (=> b!4532427 m!5291359))

(declare-fun m!5291361 () Bool)

(assert (=> b!4532427 m!5291361))

(declare-fun m!5291363 () Bool)

(assert (=> b!4532427 m!5291363))

(declare-fun m!5291365 () Bool)

(assert (=> b!4532427 m!5291365))

(declare-fun m!5291367 () Bool)

(assert (=> b!4532427 m!5291367))

(declare-fun m!5291369 () Bool)

(assert (=> b!4532427 m!5291369))

(assert (=> b!4532427 m!5291359))

(assert (=> b!4532427 m!5291357))

(declare-fun m!5291371 () Bool)

(assert (=> b!4532427 m!5291371))

(declare-fun m!5291373 () Bool)

(assert (=> b!4532427 m!5291373))

(assert (=> b!4532427 m!5291361))

(declare-fun m!5291375 () Bool)

(assert (=> b!4532430 m!5291375))

(declare-fun m!5291377 () Bool)

(assert (=> bm!315943 m!5291377))

(assert (=> b!4532426 m!5291359))

(declare-fun m!5291379 () Bool)

(assert (=> b!4532429 m!5291379))

(declare-fun m!5291381 () Bool)

(assert (=> bm!315942 m!5291381))

(declare-fun m!5291383 () Bool)

(assert (=> d!1399182 m!5291383))

(assert (=> d!1399182 m!5290767))

(declare-fun m!5291385 () Bool)

(assert (=> bm!315944 m!5291385))

(assert (=> b!4532117 d!1399182))

(declare-fun d!1399256 () Bool)

(assert (=> d!1399256 (eq!641 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707628) (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707600))))

(declare-fun lt!1707987 () Unit!97092)

(declare-fun choose!29762 (ListMap!3637 ListMap!3637 List!50836) Unit!97092)

(assert (=> d!1399256 (= lt!1707987 (choose!29762 lt!1707628 lt!1707600 (_2!28880 lt!1707605)))))

(assert (=> d!1399256 (noDuplicateKeys!1184 (_2!28880 lt!1707605))))

(assert (=> d!1399256 (= (lemmaAddToMapFromBucketPreservesEquivalence!60 lt!1707628 lt!1707600 (_2!28880 lt!1707605)) lt!1707987)))

(declare-fun bs!868215 () Bool)

(assert (= bs!868215 d!1399256))

(assert (=> bs!868215 m!5290763))

(assert (=> bs!868215 m!5290697))

(assert (=> bs!868215 m!5290697))

(assert (=> bs!868215 m!5290763))

(declare-fun m!5291387 () Bool)

(assert (=> bs!868215 m!5291387))

(assert (=> bs!868215 m!5290767))

(declare-fun m!5291389 () Bool)

(assert (=> bs!868215 m!5291389))

(assert (=> b!4532117 d!1399256))

(declare-fun d!1399258 () Bool)

(declare-fun e!2824193 () Bool)

(assert (=> d!1399258 e!2824193))

(declare-fun res!1887883 () Bool)

(assert (=> d!1399258 (=> res!1887883 e!2824193)))

(declare-fun lt!1707996 () Bool)

(assert (=> d!1399258 (= res!1887883 (not lt!1707996))))

(declare-fun lt!1707999 () Bool)

(assert (=> d!1399258 (= lt!1707996 lt!1707999)))

(declare-fun lt!1707998 () Unit!97092)

(declare-fun e!2824192 () Unit!97092)

(assert (=> d!1399258 (= lt!1707998 e!2824192)))

(declare-fun c!773913 () Bool)

(assert (=> d!1399258 (= c!773913 lt!1707999)))

(declare-fun containsKey!1844 (List!50837 (_ BitVec 64)) Bool)

(assert (=> d!1399258 (= lt!1707999 (containsKey!1844 (toList!4375 lt!1707598) hash!344))))

(assert (=> d!1399258 (= (contains!13481 lt!1707598 hash!344) lt!1707996)))

(declare-fun b!4532445 () Bool)

(declare-fun lt!1707997 () Unit!97092)

(assert (=> b!4532445 (= e!2824192 lt!1707997)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (List!50837 (_ BitVec 64)) Unit!97092)

(assert (=> b!4532445 (= lt!1707997 (lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (toList!4375 lt!1707598) hash!344))))

(declare-fun isDefined!8452 (Option!11171) Bool)

(assert (=> b!4532445 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1707598) hash!344))))

(declare-fun b!4532446 () Bool)

(declare-fun Unit!97152 () Unit!97092)

(assert (=> b!4532446 (= e!2824192 Unit!97152)))

(declare-fun b!4532447 () Bool)

(assert (=> b!4532447 (= e!2824193 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1707598) hash!344)))))

(assert (= (and d!1399258 c!773913) b!4532445))

(assert (= (and d!1399258 (not c!773913)) b!4532446))

(assert (= (and d!1399258 (not res!1887883)) b!4532447))

(declare-fun m!5291391 () Bool)

(assert (=> d!1399258 m!5291391))

(declare-fun m!5291393 () Bool)

(assert (=> b!4532445 m!5291393))

(declare-fun m!5291395 () Bool)

(assert (=> b!4532445 m!5291395))

(assert (=> b!4532445 m!5291395))

(declare-fun m!5291397 () Bool)

(assert (=> b!4532445 m!5291397))

(assert (=> b!4532447 m!5291395))

(assert (=> b!4532447 m!5291395))

(assert (=> b!4532447 m!5291397))

(assert (=> b!4532134 d!1399258))

(declare-fun d!1399260 () Bool)

(declare-fun tail!7778 (List!50837) List!50837)

(assert (=> d!1399260 (= (tail!7776 lm!1477) (ListLongMap!3008 (tail!7778 (toList!4375 lm!1477))))))

(declare-fun bs!868216 () Bool)

(assert (= bs!868216 d!1399260))

(declare-fun m!5291399 () Bool)

(assert (=> bs!868216 m!5291399))

(assert (=> b!4532134 d!1399260))

(declare-fun d!1399262 () Bool)

(assert (=> d!1399262 (= (eq!641 lt!1707607 lt!1707596) (= (content!8411 (toList!4376 lt!1707607)) (content!8411 (toList!4376 lt!1707596))))))

(declare-fun bs!868217 () Bool)

(assert (= bs!868217 d!1399262))

(assert (=> bs!868217 m!5291089))

(assert (=> bs!868217 m!5291095))

(assert (=> b!4532113 d!1399262))

(declare-fun bs!868218 () Bool)

(declare-fun b!4532450 () Bool)

(assert (= bs!868218 (and b!4532450 b!4532427)))

(declare-fun lambda!174756 () Int)

(assert (=> bs!868218 (= (= lt!1707628 lt!1707972) (= lambda!174756 lambda!174754))))

(declare-fun bs!868219 () Bool)

(assert (= bs!868219 (and b!4532450 b!4532128)))

(assert (=> bs!868219 (not (= lambda!174756 lambda!174637))))

(assert (=> bs!868218 (= (= lt!1707628 lt!1707600) (= lambda!174756 lambda!174753))))

(declare-fun bs!868220 () Bool)

(assert (= bs!868220 (and b!4532450 d!1399090)))

(assert (=> bs!868220 (not (= lambda!174756 lambda!174643))))

(declare-fun bs!868221 () Bool)

(assert (= bs!868221 (and b!4532450 d!1399182)))

(assert (=> bs!868221 (= (= lt!1707628 lt!1707976) (= lambda!174756 lambda!174755))))

(declare-fun bs!868222 () Bool)

(assert (= bs!868222 (and b!4532450 b!4532428)))

(assert (=> bs!868222 (= (= lt!1707628 lt!1707600) (= lambda!174756 lambda!174752))))

(assert (=> b!4532450 true))

(declare-fun bs!868223 () Bool)

(declare-fun b!4532449 () Bool)

(assert (= bs!868223 (and b!4532449 b!4532427)))

(declare-fun lambda!174757 () Int)

(assert (=> bs!868223 (= (= lt!1707628 lt!1707972) (= lambda!174757 lambda!174754))))

(declare-fun bs!868224 () Bool)

(assert (= bs!868224 (and b!4532449 b!4532128)))

(assert (=> bs!868224 (not (= lambda!174757 lambda!174637))))

(assert (=> bs!868223 (= (= lt!1707628 lt!1707600) (= lambda!174757 lambda!174753))))

(declare-fun bs!868225 () Bool)

(assert (= bs!868225 (and b!4532449 d!1399090)))

(assert (=> bs!868225 (not (= lambda!174757 lambda!174643))))

(declare-fun bs!868226 () Bool)

(assert (= bs!868226 (and b!4532449 d!1399182)))

(assert (=> bs!868226 (= (= lt!1707628 lt!1707976) (= lambda!174757 lambda!174755))))

(declare-fun bs!868227 () Bool)

(assert (= bs!868227 (and b!4532449 b!4532428)))

(assert (=> bs!868227 (= (= lt!1707628 lt!1707600) (= lambda!174757 lambda!174752))))

(declare-fun bs!868228 () Bool)

(assert (= bs!868228 (and b!4532449 b!4532450)))

(assert (=> bs!868228 (= lambda!174757 lambda!174756)))

(assert (=> b!4532449 true))

(declare-fun lambda!174758 () Int)

(declare-fun lt!1708008 () ListMap!3637)

(assert (=> bs!868223 (= (= lt!1708008 lt!1707972) (= lambda!174758 lambda!174754))))

(assert (=> bs!868224 (not (= lambda!174758 lambda!174637))))

(assert (=> bs!868223 (= (= lt!1708008 lt!1707600) (= lambda!174758 lambda!174753))))

(assert (=> bs!868225 (not (= lambda!174758 lambda!174643))))

(assert (=> bs!868226 (= (= lt!1708008 lt!1707976) (= lambda!174758 lambda!174755))))

(assert (=> b!4532449 (= (= lt!1708008 lt!1707628) (= lambda!174758 lambda!174757))))

(assert (=> bs!868227 (= (= lt!1708008 lt!1707600) (= lambda!174758 lambda!174752))))

(assert (=> bs!868228 (= (= lt!1708008 lt!1707628) (= lambda!174758 lambda!174756))))

(assert (=> b!4532449 true))

(declare-fun bs!868229 () Bool)

(declare-fun d!1399264 () Bool)

(assert (= bs!868229 (and d!1399264 b!4532427)))

(declare-fun lt!1708012 () ListMap!3637)

(declare-fun lambda!174759 () Int)

(assert (=> bs!868229 (= (= lt!1708012 lt!1707972) (= lambda!174759 lambda!174754))))

(declare-fun bs!868230 () Bool)

(assert (= bs!868230 (and d!1399264 b!4532128)))

(assert (=> bs!868230 (not (= lambda!174759 lambda!174637))))

(assert (=> bs!868229 (= (= lt!1708012 lt!1707600) (= lambda!174759 lambda!174753))))

(declare-fun bs!868231 () Bool)

(assert (= bs!868231 (and d!1399264 b!4532449)))

(assert (=> bs!868231 (= (= lt!1708012 lt!1708008) (= lambda!174759 lambda!174758))))

(declare-fun bs!868232 () Bool)

(assert (= bs!868232 (and d!1399264 d!1399090)))

(assert (=> bs!868232 (not (= lambda!174759 lambda!174643))))

(declare-fun bs!868233 () Bool)

(assert (= bs!868233 (and d!1399264 d!1399182)))

(assert (=> bs!868233 (= (= lt!1708012 lt!1707976) (= lambda!174759 lambda!174755))))

(assert (=> bs!868231 (= (= lt!1708012 lt!1707628) (= lambda!174759 lambda!174757))))

(declare-fun bs!868234 () Bool)

(assert (= bs!868234 (and d!1399264 b!4532428)))

(assert (=> bs!868234 (= (= lt!1708012 lt!1707600) (= lambda!174759 lambda!174752))))

(declare-fun bs!868235 () Bool)

(assert (= bs!868235 (and d!1399264 b!4532450)))

(assert (=> bs!868235 (= (= lt!1708012 lt!1707628) (= lambda!174759 lambda!174756))))

(assert (=> d!1399264 true))

(declare-fun b!4532448 () Bool)

(declare-fun e!2824194 () Bool)

(assert (=> b!4532448 (= e!2824194 (forall!10317 (toList!4376 lt!1707628) lambda!174758))))

(declare-fun bm!315945 () Bool)

(declare-fun call!315950 () Unit!97092)

(assert (=> bm!315945 (= call!315950 (lemmaContainsAllItsOwnKeys!356 lt!1707628))))

(declare-fun e!2824196 () Bool)

(assert (=> d!1399264 e!2824196))

(declare-fun res!1887884 () Bool)

(assert (=> d!1399264 (=> (not res!1887884) (not e!2824196))))

(assert (=> d!1399264 (= res!1887884 (forall!10317 (_2!28880 lt!1707605) lambda!174759))))

(declare-fun e!2824195 () ListMap!3637)

(assert (=> d!1399264 (= lt!1708012 e!2824195)))

(declare-fun c!773914 () Bool)

(assert (=> d!1399264 (= c!773914 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1399264 (noDuplicateKeys!1184 (_2!28880 lt!1707605))))

(assert (=> d!1399264 (= (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707628) lt!1708012)))

(assert (=> b!4532449 (= e!2824195 lt!1708008)))

(declare-fun lt!1708004 () ListMap!3637)

(assert (=> b!4532449 (= lt!1708004 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4532449 (= lt!1708008 (addToMapMapFromBucket!711 (t!357798 (_2!28880 lt!1707605)) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708015 () Unit!97092)

(assert (=> b!4532449 (= lt!1708015 call!315950)))

(declare-fun call!315952 () Bool)

(assert (=> b!4532449 call!315952))

(declare-fun lt!1708013 () Unit!97092)

(assert (=> b!4532449 (= lt!1708013 lt!1708015)))

(assert (=> b!4532449 (forall!10317 (toList!4376 lt!1708004) lambda!174758)))

(declare-fun lt!1708020 () Unit!97092)

(declare-fun Unit!97153 () Unit!97092)

(assert (=> b!4532449 (= lt!1708020 Unit!97153)))

(assert (=> b!4532449 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174758)))

(declare-fun lt!1708006 () Unit!97092)

(declare-fun Unit!97154 () Unit!97092)

(assert (=> b!4532449 (= lt!1708006 Unit!97154)))

(declare-fun lt!1708009 () Unit!97092)

(declare-fun Unit!97155 () Unit!97092)

(assert (=> b!4532449 (= lt!1708009 Unit!97155)))

(declare-fun lt!1708001 () Unit!97092)

(assert (=> b!4532449 (= lt!1708001 (forallContained!2573 (toList!4376 lt!1708004) lambda!174758 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4532449 (contains!13479 lt!1708004 (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1708011 () Unit!97092)

(declare-fun Unit!97156 () Unit!97092)

(assert (=> b!4532449 (= lt!1708011 Unit!97156)))

(assert (=> b!4532449 (contains!13479 lt!1708008 (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1708007 () Unit!97092)

(declare-fun Unit!97157 () Unit!97092)

(assert (=> b!4532449 (= lt!1708007 Unit!97157)))

(declare-fun call!315951 () Bool)

(assert (=> b!4532449 call!315951))

(declare-fun lt!1708003 () Unit!97092)

(declare-fun Unit!97158 () Unit!97092)

(assert (=> b!4532449 (= lt!1708003 Unit!97158)))

(assert (=> b!4532449 (forall!10317 (toList!4376 lt!1708004) lambda!174758)))

(declare-fun lt!1708000 () Unit!97092)

(declare-fun Unit!97159 () Unit!97092)

(assert (=> b!4532449 (= lt!1708000 Unit!97159)))

(declare-fun lt!1708017 () Unit!97092)

(declare-fun Unit!97160 () Unit!97092)

(assert (=> b!4532449 (= lt!1708017 Unit!97160)))

(declare-fun lt!1708002 () Unit!97092)

(assert (=> b!4532449 (= lt!1708002 (addForallContainsKeyThenBeforeAdding!356 lt!1707628 lt!1708008 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4532449 (forall!10317 (toList!4376 lt!1707628) lambda!174758)))

(declare-fun lt!1708016 () Unit!97092)

(assert (=> b!4532449 (= lt!1708016 lt!1708002)))

(assert (=> b!4532449 (forall!10317 (toList!4376 lt!1707628) lambda!174758)))

(declare-fun lt!1708018 () Unit!97092)

(declare-fun Unit!97161 () Unit!97092)

(assert (=> b!4532449 (= lt!1708018 Unit!97161)))

(declare-fun res!1887886 () Bool)

(assert (=> b!4532449 (= res!1887886 (forall!10317 (_2!28880 lt!1707605) lambda!174758))))

(assert (=> b!4532449 (=> (not res!1887886) (not e!2824194))))

(assert (=> b!4532449 e!2824194))

(declare-fun lt!1708010 () Unit!97092)

(declare-fun Unit!97162 () Unit!97092)

(assert (=> b!4532449 (= lt!1708010 Unit!97162)))

(assert (=> b!4532450 (= e!2824195 lt!1707628)))

(declare-fun lt!1708005 () Unit!97092)

(assert (=> b!4532450 (= lt!1708005 call!315950)))

(assert (=> b!4532450 call!315951))

(declare-fun lt!1708014 () Unit!97092)

(assert (=> b!4532450 (= lt!1708014 lt!1708005)))

(assert (=> b!4532450 call!315952))

(declare-fun lt!1708019 () Unit!97092)

(declare-fun Unit!97163 () Unit!97092)

(assert (=> b!4532450 (= lt!1708019 Unit!97163)))

(declare-fun bm!315946 () Bool)

(assert (=> bm!315946 (= call!315952 (forall!10317 (toList!4376 lt!1707628) (ite c!773914 lambda!174756 lambda!174757)))))

(declare-fun b!4532451 () Bool)

(assert (=> b!4532451 (= e!2824196 (invariantList!1035 (toList!4376 lt!1708012)))))

(declare-fun b!4532452 () Bool)

(declare-fun res!1887885 () Bool)

(assert (=> b!4532452 (=> (not res!1887885) (not e!2824196))))

(assert (=> b!4532452 (= res!1887885 (forall!10317 (toList!4376 lt!1707628) lambda!174759))))

(declare-fun bm!315947 () Bool)

(assert (=> bm!315947 (= call!315951 (forall!10317 (ite c!773914 (toList!4376 lt!1707628) (_2!28880 lt!1707605)) (ite c!773914 lambda!174756 lambda!174758)))))

(assert (= (and d!1399264 c!773914) b!4532450))

(assert (= (and d!1399264 (not c!773914)) b!4532449))

(assert (= (and b!4532449 res!1887886) b!4532448))

(assert (= (or b!4532450 b!4532449) bm!315947))

(assert (= (or b!4532450 b!4532449) bm!315946))

(assert (= (or b!4532450 b!4532449) bm!315945))

(assert (= (and d!1399264 res!1887884) b!4532452))

(assert (= (and b!4532452 res!1887885) b!4532451))

(declare-fun m!5291401 () Bool)

(assert (=> b!4532449 m!5291401))

(declare-fun m!5291403 () Bool)

(assert (=> b!4532449 m!5291403))

(declare-fun m!5291405 () Bool)

(assert (=> b!4532449 m!5291405))

(declare-fun m!5291407 () Bool)

(assert (=> b!4532449 m!5291407))

(declare-fun m!5291409 () Bool)

(assert (=> b!4532449 m!5291409))

(declare-fun m!5291411 () Bool)

(assert (=> b!4532449 m!5291411))

(declare-fun m!5291413 () Bool)

(assert (=> b!4532449 m!5291413))

(declare-fun m!5291415 () Bool)

(assert (=> b!4532449 m!5291415))

(assert (=> b!4532449 m!5291405))

(assert (=> b!4532449 m!5291403))

(declare-fun m!5291417 () Bool)

(assert (=> b!4532449 m!5291417))

(declare-fun m!5291419 () Bool)

(assert (=> b!4532449 m!5291419))

(assert (=> b!4532449 m!5291407))

(declare-fun m!5291421 () Bool)

(assert (=> b!4532452 m!5291421))

(declare-fun m!5291423 () Bool)

(assert (=> bm!315946 m!5291423))

(assert (=> b!4532448 m!5291405))

(declare-fun m!5291425 () Bool)

(assert (=> b!4532451 m!5291425))

(declare-fun m!5291427 () Bool)

(assert (=> bm!315945 m!5291427))

(declare-fun m!5291429 () Bool)

(assert (=> d!1399264 m!5291429))

(assert (=> d!1399264 m!5290767))

(declare-fun m!5291431 () Bool)

(assert (=> bm!315947 m!5291431))

(assert (=> b!4532113 d!1399264))

(declare-fun bs!868236 () Bool)

(declare-fun d!1399266 () Bool)

(assert (= bs!868236 (and d!1399266 start!449480)))

(declare-fun lambda!174760 () Int)

(assert (=> bs!868236 (= lambda!174760 lambda!174635)))

(declare-fun bs!868237 () Bool)

(assert (= bs!868237 (and d!1399266 d!1399148)))

(assert (=> bs!868237 (= lambda!174760 lambda!174693)))

(declare-fun bs!868238 () Bool)

(assert (= bs!868238 (and d!1399266 d!1399114)))

(assert (=> bs!868238 (= lambda!174760 lambda!174691)))

(declare-fun bs!868239 () Bool)

(assert (= bs!868239 (and d!1399266 d!1399098)))

(assert (=> bs!868239 (= lambda!174760 lambda!174681)))

(declare-fun bs!868240 () Bool)

(assert (= bs!868240 (and d!1399266 b!4532128)))

(assert (=> bs!868240 (not (= lambda!174760 lambda!174636))))

(declare-fun bs!868241 () Bool)

(assert (= bs!868241 (and d!1399266 d!1399160)))

(assert (=> bs!868241 (= lambda!174760 lambda!174703)))

(declare-fun bs!868242 () Bool)

(assert (= bs!868242 (and d!1399266 d!1399104)))

(assert (=> bs!868242 (not (= lambda!174760 lambda!174684))))

(declare-fun bs!868243 () Bool)

(assert (= bs!868243 (and d!1399266 d!1399174)))

(assert (=> bs!868243 (= lambda!174760 lambda!174706)))

(declare-fun lt!1708021 () ListMap!3637)

(assert (=> d!1399266 (invariantList!1035 (toList!4376 lt!1708021))))

(declare-fun e!2824197 () ListMap!3637)

(assert (=> d!1399266 (= lt!1708021 e!2824197)))

(declare-fun c!773915 () Bool)

(assert (=> d!1399266 (= c!773915 ((_ is Cons!50713) (toList!4375 lt!1707597)))))

(assert (=> d!1399266 (forall!10315 (toList!4375 lt!1707597) lambda!174760)))

(assert (=> d!1399266 (= (extractMap!1240 (toList!4375 lt!1707597)) lt!1708021)))

(declare-fun b!4532453 () Bool)

(assert (=> b!4532453 (= e!2824197 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 lt!1707597))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))))))

(declare-fun b!4532454 () Bool)

(assert (=> b!4532454 (= e!2824197 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399266 c!773915) b!4532453))

(assert (= (and d!1399266 (not c!773915)) b!4532454))

(declare-fun m!5291433 () Bool)

(assert (=> d!1399266 m!5291433))

(declare-fun m!5291435 () Bool)

(assert (=> d!1399266 m!5291435))

(declare-fun m!5291437 () Bool)

(assert (=> b!4532453 m!5291437))

(assert (=> b!4532453 m!5291437))

(declare-fun m!5291439 () Bool)

(assert (=> b!4532453 m!5291439))

(assert (=> b!4532113 d!1399266))

(declare-fun d!1399268 () Bool)

(declare-fun res!1887893 () Bool)

(declare-fun e!2824206 () Bool)

(assert (=> d!1399268 (=> res!1887893 e!2824206)))

(declare-fun e!2824205 () Bool)

(assert (=> d!1399268 (= res!1887893 e!2824205)))

(declare-fun res!1887895 () Bool)

(assert (=> d!1399268 (=> (not res!1887895) (not e!2824205))))

(assert (=> d!1399268 (= res!1887895 ((_ is Cons!50713) (t!357799 (toList!4375 lm!1477))))))

(assert (=> d!1399268 (= (containsKeyBiggerList!164 (t!357799 (toList!4375 lm!1477)) key!3287) e!2824206)))

(declare-fun b!4532461 () Bool)

(assert (=> b!4532461 (= e!2824205 (containsKey!1840 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(declare-fun b!4532462 () Bool)

(declare-fun e!2824204 () Bool)

(assert (=> b!4532462 (= e!2824206 e!2824204)))

(declare-fun res!1887894 () Bool)

(assert (=> b!4532462 (=> (not res!1887894) (not e!2824204))))

(assert (=> b!4532462 (= res!1887894 ((_ is Cons!50713) (t!357799 (toList!4375 lm!1477))))))

(declare-fun b!4532463 () Bool)

(assert (=> b!4532463 (= e!2824204 (containsKeyBiggerList!164 (t!357799 (t!357799 (toList!4375 lm!1477))) key!3287))))

(assert (= (and d!1399268 res!1887895) b!4532461))

(assert (= (and d!1399268 (not res!1887893)) b!4532462))

(assert (= (and b!4532462 res!1887894) b!4532463))

(declare-fun m!5291441 () Bool)

(assert (=> b!4532461 m!5291441))

(declare-fun m!5291443 () Bool)

(assert (=> b!4532463 m!5291443))

(assert (=> b!4532135 d!1399268))

(declare-fun d!1399270 () Bool)

(declare-fun res!1887896 () Bool)

(declare-fun e!2824209 () Bool)

(assert (=> d!1399270 (=> res!1887896 e!2824209)))

(declare-fun e!2824208 () Bool)

(assert (=> d!1399270 (= res!1887896 e!2824208)))

(declare-fun res!1887898 () Bool)

(assert (=> d!1399270 (=> (not res!1887898) (not e!2824208))))

(assert (=> d!1399270 (= res!1887898 ((_ is Cons!50713) (toList!4375 lt!1707598)))))

(assert (=> d!1399270 (= (containsKeyBiggerList!164 (toList!4375 lt!1707598) key!3287) e!2824209)))

(declare-fun b!4532464 () Bool)

(assert (=> b!4532464 (= e!2824208 (containsKey!1840 (_2!28880 (h!56584 (toList!4375 lt!1707598))) key!3287))))

(declare-fun b!4532465 () Bool)

(declare-fun e!2824207 () Bool)

(assert (=> b!4532465 (= e!2824209 e!2824207)))

(declare-fun res!1887897 () Bool)

(assert (=> b!4532465 (=> (not res!1887897) (not e!2824207))))

(assert (=> b!4532465 (= res!1887897 ((_ is Cons!50713) (toList!4375 lt!1707598)))))

(declare-fun b!4532466 () Bool)

(assert (=> b!4532466 (= e!2824207 (containsKeyBiggerList!164 (t!357799 (toList!4375 lt!1707598)) key!3287))))

(assert (= (and d!1399270 res!1887898) b!4532464))

(assert (= (and d!1399270 (not res!1887896)) b!4532465))

(assert (= (and b!4532465 res!1887897) b!4532466))

(declare-fun m!5291445 () Bool)

(assert (=> b!4532464 m!5291445))

(declare-fun m!5291447 () Bool)

(assert (=> b!4532466 m!5291447))

(assert (=> b!4532135 d!1399270))

(declare-fun bs!868244 () Bool)

(declare-fun d!1399272 () Bool)

(assert (= bs!868244 (and d!1399272 start!449480)))

(declare-fun lambda!174763 () Int)

(assert (=> bs!868244 (= lambda!174763 lambda!174635)))

(declare-fun bs!868245 () Bool)

(assert (= bs!868245 (and d!1399272 d!1399266)))

(assert (=> bs!868245 (= lambda!174763 lambda!174760)))

(declare-fun bs!868246 () Bool)

(assert (= bs!868246 (and d!1399272 d!1399148)))

(assert (=> bs!868246 (= lambda!174763 lambda!174693)))

(declare-fun bs!868247 () Bool)

(assert (= bs!868247 (and d!1399272 d!1399114)))

(assert (=> bs!868247 (= lambda!174763 lambda!174691)))

(declare-fun bs!868248 () Bool)

(assert (= bs!868248 (and d!1399272 d!1399098)))

(assert (=> bs!868248 (= lambda!174763 lambda!174681)))

(declare-fun bs!868249 () Bool)

(assert (= bs!868249 (and d!1399272 b!4532128)))

(assert (=> bs!868249 (not (= lambda!174763 lambda!174636))))

(declare-fun bs!868250 () Bool)

(assert (= bs!868250 (and d!1399272 d!1399160)))

(assert (=> bs!868250 (= lambda!174763 lambda!174703)))

(declare-fun bs!868251 () Bool)

(assert (= bs!868251 (and d!1399272 d!1399104)))

(assert (=> bs!868251 (not (= lambda!174763 lambda!174684))))

(declare-fun bs!868252 () Bool)

(assert (= bs!868252 (and d!1399272 d!1399174)))

(assert (=> bs!868252 (= lambda!174763 lambda!174706)))

(assert (=> d!1399272 (containsKeyBiggerList!164 (toList!4375 lt!1707598) key!3287)))

(declare-fun lt!1708024 () Unit!97092)

(declare-fun choose!29765 (ListLongMap!3007 K!12100 Hashable!5579) Unit!97092)

(assert (=> d!1399272 (= lt!1708024 (choose!29765 lt!1707598 key!3287 hashF!1107))))

(assert (=> d!1399272 (forall!10315 (toList!4375 lt!1707598) lambda!174763)))

(assert (=> d!1399272 (= (lemmaInLongMapThenContainsKeyBiggerList!100 lt!1707598 key!3287 hashF!1107) lt!1708024)))

(declare-fun bs!868253 () Bool)

(assert (= bs!868253 d!1399272))

(assert (=> bs!868253 m!5290651))

(declare-fun m!5291449 () Bool)

(assert (=> bs!868253 m!5291449))

(declare-fun m!5291451 () Bool)

(assert (=> bs!868253 m!5291451))

(assert (=> b!4532135 d!1399272))

(declare-fun d!1399274 () Bool)

(assert (=> d!1399274 (= (eq!641 lt!1707626 lt!1707623) (= (content!8411 (toList!4376 lt!1707626)) (content!8411 (toList!4376 lt!1707623))))))

(declare-fun bs!868254 () Bool)

(assert (= bs!868254 d!1399274))

(assert (=> bs!868254 m!5291091))

(declare-fun m!5291453 () Bool)

(assert (=> bs!868254 m!5291453))

(assert (=> b!4532114 d!1399274))

(declare-fun d!1399276 () Bool)

(declare-fun e!2824210 () Bool)

(assert (=> d!1399276 e!2824210))

(declare-fun res!1887899 () Bool)

(assert (=> d!1399276 (=> (not res!1887899) (not e!2824210))))

(declare-fun lt!1708025 () ListMap!3637)

(assert (=> d!1399276 (= res!1887899 (not (contains!13479 lt!1708025 key!3287)))))

(assert (=> d!1399276 (= lt!1708025 (ListMap!3638 (removePresrvNoDuplicatedKeys!159 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287)))))

(assert (=> d!1399276 (= (-!410 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612) key!3287) lt!1708025)))

(declare-fun b!4532467 () Bool)

(assert (=> b!4532467 (= e!2824210 (= ((_ map and) (content!8412 (keys!17636 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) ((_ map not) (store ((as const (Array K!12100 Bool)) false) key!3287 true))) (content!8412 (keys!17636 lt!1708025))))))

(assert (= (and d!1399276 res!1887899) b!4532467))

(declare-fun m!5291455 () Bool)

(assert (=> d!1399276 m!5291455))

(declare-fun m!5291457 () Bool)

(assert (=> d!1399276 m!5291457))

(assert (=> b!4532467 m!5291027))

(assert (=> b!4532467 m!5290719))

(declare-fun m!5291459 () Bool)

(assert (=> b!4532467 m!5291459))

(declare-fun m!5291461 () Bool)

(assert (=> b!4532467 m!5291461))

(declare-fun m!5291463 () Bool)

(assert (=> b!4532467 m!5291463))

(assert (=> b!4532467 m!5291461))

(assert (=> b!4532467 m!5291459))

(declare-fun m!5291465 () Bool)

(assert (=> b!4532467 m!5291465))

(assert (=> b!4532114 d!1399276))

(declare-fun bs!868255 () Bool)

(declare-fun b!4532470 () Bool)

(assert (= bs!868255 (and b!4532470 b!4532427)))

(declare-fun lambda!174764 () Int)

(assert (=> bs!868255 (= (= lt!1707612 lt!1707972) (= lambda!174764 lambda!174754))))

(declare-fun bs!868256 () Bool)

(assert (= bs!868256 (and b!4532470 b!4532128)))

(assert (=> bs!868256 (not (= lambda!174764 lambda!174637))))

(assert (=> bs!868255 (= (= lt!1707612 lt!1707600) (= lambda!174764 lambda!174753))))

(declare-fun bs!868257 () Bool)

(assert (= bs!868257 (and b!4532470 b!4532449)))

(assert (=> bs!868257 (= (= lt!1707612 lt!1708008) (= lambda!174764 lambda!174758))))

(declare-fun bs!868258 () Bool)

(assert (= bs!868258 (and b!4532470 d!1399090)))

(assert (=> bs!868258 (not (= lambda!174764 lambda!174643))))

(declare-fun bs!868259 () Bool)

(assert (= bs!868259 (and b!4532470 d!1399264)))

(assert (=> bs!868259 (= (= lt!1707612 lt!1708012) (= lambda!174764 lambda!174759))))

(declare-fun bs!868260 () Bool)

(assert (= bs!868260 (and b!4532470 d!1399182)))

(assert (=> bs!868260 (= (= lt!1707612 lt!1707976) (= lambda!174764 lambda!174755))))

(assert (=> bs!868257 (= (= lt!1707612 lt!1707628) (= lambda!174764 lambda!174757))))

(declare-fun bs!868261 () Bool)

(assert (= bs!868261 (and b!4532470 b!4532428)))

(assert (=> bs!868261 (= (= lt!1707612 lt!1707600) (= lambda!174764 lambda!174752))))

(declare-fun bs!868262 () Bool)

(assert (= bs!868262 (and b!4532470 b!4532450)))

(assert (=> bs!868262 (= (= lt!1707612 lt!1707628) (= lambda!174764 lambda!174756))))

(assert (=> b!4532470 true))

(declare-fun bs!868263 () Bool)

(declare-fun b!4532469 () Bool)

(assert (= bs!868263 (and b!4532469 b!4532427)))

(declare-fun lambda!174765 () Int)

(assert (=> bs!868263 (= (= lt!1707612 lt!1707972) (= lambda!174765 lambda!174754))))

(declare-fun bs!868264 () Bool)

(assert (= bs!868264 (and b!4532469 b!4532128)))

(assert (=> bs!868264 (not (= lambda!174765 lambda!174637))))

(declare-fun bs!868265 () Bool)

(assert (= bs!868265 (and b!4532469 b!4532470)))

(assert (=> bs!868265 (= lambda!174765 lambda!174764)))

(assert (=> bs!868263 (= (= lt!1707612 lt!1707600) (= lambda!174765 lambda!174753))))

(declare-fun bs!868266 () Bool)

(assert (= bs!868266 (and b!4532469 b!4532449)))

(assert (=> bs!868266 (= (= lt!1707612 lt!1708008) (= lambda!174765 lambda!174758))))

(declare-fun bs!868267 () Bool)

(assert (= bs!868267 (and b!4532469 d!1399090)))

(assert (=> bs!868267 (not (= lambda!174765 lambda!174643))))

(declare-fun bs!868268 () Bool)

(assert (= bs!868268 (and b!4532469 d!1399264)))

(assert (=> bs!868268 (= (= lt!1707612 lt!1708012) (= lambda!174765 lambda!174759))))

(declare-fun bs!868269 () Bool)

(assert (= bs!868269 (and b!4532469 d!1399182)))

(assert (=> bs!868269 (= (= lt!1707612 lt!1707976) (= lambda!174765 lambda!174755))))

(assert (=> bs!868266 (= (= lt!1707612 lt!1707628) (= lambda!174765 lambda!174757))))

(declare-fun bs!868270 () Bool)

(assert (= bs!868270 (and b!4532469 b!4532428)))

(assert (=> bs!868270 (= (= lt!1707612 lt!1707600) (= lambda!174765 lambda!174752))))

(declare-fun bs!868271 () Bool)

(assert (= bs!868271 (and b!4532469 b!4532450)))

(assert (=> bs!868271 (= (= lt!1707612 lt!1707628) (= lambda!174765 lambda!174756))))

(assert (=> b!4532469 true))

(declare-fun lambda!174766 () Int)

(declare-fun lt!1708034 () ListMap!3637)

(assert (=> bs!868263 (= (= lt!1708034 lt!1707972) (= lambda!174766 lambda!174754))))

(assert (=> bs!868265 (= (= lt!1708034 lt!1707612) (= lambda!174766 lambda!174764))))

(assert (=> bs!868263 (= (= lt!1708034 lt!1707600) (= lambda!174766 lambda!174753))))

(assert (=> bs!868266 (= (= lt!1708034 lt!1708008) (= lambda!174766 lambda!174758))))

(assert (=> bs!868267 (not (= lambda!174766 lambda!174643))))

(assert (=> bs!868268 (= (= lt!1708034 lt!1708012) (= lambda!174766 lambda!174759))))

(assert (=> bs!868269 (= (= lt!1708034 lt!1707976) (= lambda!174766 lambda!174755))))

(assert (=> bs!868266 (= (= lt!1708034 lt!1707628) (= lambda!174766 lambda!174757))))

(assert (=> bs!868270 (= (= lt!1708034 lt!1707600) (= lambda!174766 lambda!174752))))

(assert (=> bs!868271 (= (= lt!1708034 lt!1707628) (= lambda!174766 lambda!174756))))

(assert (=> bs!868264 (not (= lambda!174766 lambda!174637))))

(assert (=> b!4532469 (= (= lt!1708034 lt!1707612) (= lambda!174766 lambda!174765))))

(assert (=> b!4532469 true))

(declare-fun bs!868272 () Bool)

(declare-fun d!1399278 () Bool)

(assert (= bs!868272 (and d!1399278 b!4532427)))

(declare-fun lambda!174767 () Int)

(declare-fun lt!1708038 () ListMap!3637)

(assert (=> bs!868272 (= (= lt!1708038 lt!1707972) (= lambda!174767 lambda!174754))))

(declare-fun bs!868273 () Bool)

(assert (= bs!868273 (and d!1399278 b!4532470)))

(assert (=> bs!868273 (= (= lt!1708038 lt!1707612) (= lambda!174767 lambda!174764))))

(assert (=> bs!868272 (= (= lt!1708038 lt!1707600) (= lambda!174767 lambda!174753))))

(declare-fun bs!868274 () Bool)

(assert (= bs!868274 (and d!1399278 b!4532449)))

(assert (=> bs!868274 (= (= lt!1708038 lt!1708008) (= lambda!174767 lambda!174758))))

(declare-fun bs!868275 () Bool)

(assert (= bs!868275 (and d!1399278 d!1399090)))

(assert (=> bs!868275 (not (= lambda!174767 lambda!174643))))

(declare-fun bs!868276 () Bool)

(assert (= bs!868276 (and d!1399278 d!1399264)))

(assert (=> bs!868276 (= (= lt!1708038 lt!1708012) (= lambda!174767 lambda!174759))))

(declare-fun bs!868277 () Bool)

(assert (= bs!868277 (and d!1399278 d!1399182)))

(assert (=> bs!868277 (= (= lt!1708038 lt!1707976) (= lambda!174767 lambda!174755))))

(assert (=> bs!868274 (= (= lt!1708038 lt!1707628) (= lambda!174767 lambda!174757))))

(declare-fun bs!868278 () Bool)

(assert (= bs!868278 (and d!1399278 b!4532428)))

(assert (=> bs!868278 (= (= lt!1708038 lt!1707600) (= lambda!174767 lambda!174752))))

(declare-fun bs!868279 () Bool)

(assert (= bs!868279 (and d!1399278 b!4532450)))

(assert (=> bs!868279 (= (= lt!1708038 lt!1707628) (= lambda!174767 lambda!174756))))

(declare-fun bs!868280 () Bool)

(assert (= bs!868280 (and d!1399278 b!4532469)))

(assert (=> bs!868280 (= (= lt!1708038 lt!1708034) (= lambda!174767 lambda!174766))))

(declare-fun bs!868281 () Bool)

(assert (= bs!868281 (and d!1399278 b!4532128)))

(assert (=> bs!868281 (not (= lambda!174767 lambda!174637))))

(assert (=> bs!868280 (= (= lt!1708038 lt!1707612) (= lambda!174767 lambda!174765))))

(assert (=> d!1399278 true))

(declare-fun b!4532468 () Bool)

(declare-fun e!2824211 () Bool)

(assert (=> b!4532468 (= e!2824211 (forall!10317 (toList!4376 lt!1707612) lambda!174766))))

(declare-fun bm!315948 () Bool)

(declare-fun call!315953 () Unit!97092)

(assert (=> bm!315948 (= call!315953 (lemmaContainsAllItsOwnKeys!356 lt!1707612))))

(declare-fun e!2824213 () Bool)

(assert (=> d!1399278 e!2824213))

(declare-fun res!1887900 () Bool)

(assert (=> d!1399278 (=> (not res!1887900) (not e!2824213))))

(assert (=> d!1399278 (= res!1887900 (forall!10317 (_2!28880 lt!1707605) lambda!174767))))

(declare-fun e!2824212 () ListMap!3637)

(assert (=> d!1399278 (= lt!1708038 e!2824212)))

(declare-fun c!773916 () Bool)

(assert (=> d!1399278 (= c!773916 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1399278 (noDuplicateKeys!1184 (_2!28880 lt!1707605))))

(assert (=> d!1399278 (= (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612) lt!1708038)))

(assert (=> b!4532469 (= e!2824212 lt!1708034)))

(declare-fun lt!1708030 () ListMap!3637)

(assert (=> b!4532469 (= lt!1708030 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4532469 (= lt!1708034 (addToMapMapFromBucket!711 (t!357798 (_2!28880 lt!1707605)) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708041 () Unit!97092)

(assert (=> b!4532469 (= lt!1708041 call!315953)))

(declare-fun call!315955 () Bool)

(assert (=> b!4532469 call!315955))

(declare-fun lt!1708039 () Unit!97092)

(assert (=> b!4532469 (= lt!1708039 lt!1708041)))

(assert (=> b!4532469 (forall!10317 (toList!4376 lt!1708030) lambda!174766)))

(declare-fun lt!1708046 () Unit!97092)

(declare-fun Unit!97164 () Unit!97092)

(assert (=> b!4532469 (= lt!1708046 Unit!97164)))

(assert (=> b!4532469 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174766)))

(declare-fun lt!1708032 () Unit!97092)

(declare-fun Unit!97165 () Unit!97092)

(assert (=> b!4532469 (= lt!1708032 Unit!97165)))

(declare-fun lt!1708035 () Unit!97092)

(declare-fun Unit!97166 () Unit!97092)

(assert (=> b!4532469 (= lt!1708035 Unit!97166)))

(declare-fun lt!1708027 () Unit!97092)

(assert (=> b!4532469 (= lt!1708027 (forallContained!2573 (toList!4376 lt!1708030) lambda!174766 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4532469 (contains!13479 lt!1708030 (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1708037 () Unit!97092)

(declare-fun Unit!97167 () Unit!97092)

(assert (=> b!4532469 (= lt!1708037 Unit!97167)))

(assert (=> b!4532469 (contains!13479 lt!1708034 (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1708033 () Unit!97092)

(declare-fun Unit!97168 () Unit!97092)

(assert (=> b!4532469 (= lt!1708033 Unit!97168)))

(declare-fun call!315954 () Bool)

(assert (=> b!4532469 call!315954))

(declare-fun lt!1708029 () Unit!97092)

(declare-fun Unit!97169 () Unit!97092)

(assert (=> b!4532469 (= lt!1708029 Unit!97169)))

(assert (=> b!4532469 (forall!10317 (toList!4376 lt!1708030) lambda!174766)))

(declare-fun lt!1708026 () Unit!97092)

(declare-fun Unit!97170 () Unit!97092)

(assert (=> b!4532469 (= lt!1708026 Unit!97170)))

(declare-fun lt!1708043 () Unit!97092)

(declare-fun Unit!97171 () Unit!97092)

(assert (=> b!4532469 (= lt!1708043 Unit!97171)))

(declare-fun lt!1708028 () Unit!97092)

(assert (=> b!4532469 (= lt!1708028 (addForallContainsKeyThenBeforeAdding!356 lt!1707612 lt!1708034 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4532469 (forall!10317 (toList!4376 lt!1707612) lambda!174766)))

(declare-fun lt!1708042 () Unit!97092)

(assert (=> b!4532469 (= lt!1708042 lt!1708028)))

(assert (=> b!4532469 (forall!10317 (toList!4376 lt!1707612) lambda!174766)))

(declare-fun lt!1708044 () Unit!97092)

(declare-fun Unit!97172 () Unit!97092)

(assert (=> b!4532469 (= lt!1708044 Unit!97172)))

(declare-fun res!1887902 () Bool)

(assert (=> b!4532469 (= res!1887902 (forall!10317 (_2!28880 lt!1707605) lambda!174766))))

(assert (=> b!4532469 (=> (not res!1887902) (not e!2824211))))

(assert (=> b!4532469 e!2824211))

(declare-fun lt!1708036 () Unit!97092)

(declare-fun Unit!97173 () Unit!97092)

(assert (=> b!4532469 (= lt!1708036 Unit!97173)))

(assert (=> b!4532470 (= e!2824212 lt!1707612)))

(declare-fun lt!1708031 () Unit!97092)

(assert (=> b!4532470 (= lt!1708031 call!315953)))

(assert (=> b!4532470 call!315954))

(declare-fun lt!1708040 () Unit!97092)

(assert (=> b!4532470 (= lt!1708040 lt!1708031)))

(assert (=> b!4532470 call!315955))

(declare-fun lt!1708045 () Unit!97092)

(declare-fun Unit!97174 () Unit!97092)

(assert (=> b!4532470 (= lt!1708045 Unit!97174)))

(declare-fun bm!315949 () Bool)

(assert (=> bm!315949 (= call!315955 (forall!10317 (toList!4376 lt!1707612) (ite c!773916 lambda!174764 lambda!174765)))))

(declare-fun b!4532471 () Bool)

(assert (=> b!4532471 (= e!2824213 (invariantList!1035 (toList!4376 lt!1708038)))))

(declare-fun b!4532472 () Bool)

(declare-fun res!1887901 () Bool)

(assert (=> b!4532472 (=> (not res!1887901) (not e!2824213))))

(assert (=> b!4532472 (= res!1887901 (forall!10317 (toList!4376 lt!1707612) lambda!174767))))

(declare-fun bm!315950 () Bool)

(assert (=> bm!315950 (= call!315954 (forall!10317 (ite c!773916 (toList!4376 lt!1707612) (_2!28880 lt!1707605)) (ite c!773916 lambda!174764 lambda!174766)))))

(assert (= (and d!1399278 c!773916) b!4532470))

(assert (= (and d!1399278 (not c!773916)) b!4532469))

(assert (= (and b!4532469 res!1887902) b!4532468))

(assert (= (or b!4532470 b!4532469) bm!315950))

(assert (= (or b!4532470 b!4532469) bm!315949))

(assert (= (or b!4532470 b!4532469) bm!315948))

(assert (= (and d!1399278 res!1887900) b!4532472))

(assert (= (and b!4532472 res!1887901) b!4532471))

(declare-fun m!5291467 () Bool)

(assert (=> b!4532469 m!5291467))

(declare-fun m!5291469 () Bool)

(assert (=> b!4532469 m!5291469))

(declare-fun m!5291471 () Bool)

(assert (=> b!4532469 m!5291471))

(declare-fun m!5291473 () Bool)

(assert (=> b!4532469 m!5291473))

(declare-fun m!5291475 () Bool)

(assert (=> b!4532469 m!5291475))

(declare-fun m!5291477 () Bool)

(assert (=> b!4532469 m!5291477))

(declare-fun m!5291479 () Bool)

(assert (=> b!4532469 m!5291479))

(declare-fun m!5291481 () Bool)

(assert (=> b!4532469 m!5291481))

(assert (=> b!4532469 m!5291471))

(assert (=> b!4532469 m!5291469))

(declare-fun m!5291483 () Bool)

(assert (=> b!4532469 m!5291483))

(declare-fun m!5291485 () Bool)

(assert (=> b!4532469 m!5291485))

(assert (=> b!4532469 m!5291473))

(declare-fun m!5291487 () Bool)

(assert (=> b!4532472 m!5291487))

(declare-fun m!5291489 () Bool)

(assert (=> bm!315949 m!5291489))

(assert (=> b!4532468 m!5291471))

(declare-fun m!5291491 () Bool)

(assert (=> b!4532471 m!5291491))

(declare-fun m!5291493 () Bool)

(assert (=> bm!315948 m!5291493))

(declare-fun m!5291495 () Bool)

(assert (=> d!1399278 m!5291495))

(assert (=> d!1399278 m!5290767))

(declare-fun m!5291497 () Bool)

(assert (=> bm!315950 m!5291497))

(assert (=> b!4532114 d!1399278))

(declare-fun d!1399280 () Bool)

(assert (=> d!1399280 (= (addToMapMapFromBucket!711 (_2!28880 lt!1707605) (-!410 lt!1707612 key!3287)) (-!410 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612) key!3287))))

(declare-fun lt!1708049 () Unit!97092)

(declare-fun choose!29766 (ListMap!3637 K!12100 List!50836) Unit!97092)

(assert (=> d!1399280 (= lt!1708049 (choose!29766 lt!1707612 key!3287 (_2!28880 lt!1707605)))))

(assert (=> d!1399280 (not (containsKey!1840 (_2!28880 lt!1707605) key!3287))))

(assert (=> d!1399280 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!8 lt!1707612 key!3287 (_2!28880 lt!1707605)) lt!1708049)))

(declare-fun bs!868282 () Bool)

(assert (= bs!868282 d!1399280))

(declare-fun m!5291499 () Bool)

(assert (=> bs!868282 m!5291499))

(assert (=> bs!868282 m!5290719))

(assert (=> bs!868282 m!5290755))

(assert (=> bs!868282 m!5290719))

(assert (=> bs!868282 m!5290721))

(assert (=> bs!868282 m!5290755))

(declare-fun m!5291501 () Bool)

(assert (=> bs!868282 m!5291501))

(assert (=> bs!868282 m!5290673))

(assert (=> b!4532114 d!1399280))

(declare-fun d!1399282 () Bool)

(declare-fun hash!2881 (Hashable!5579 K!12100) (_ BitVec 64))

(assert (=> d!1399282 (= (hash!2877 hashF!1107 key!3287) (hash!2881 hashF!1107 key!3287))))

(declare-fun bs!868283 () Bool)

(assert (= bs!868283 d!1399282))

(declare-fun m!5291503 () Bool)

(assert (=> bs!868283 m!5291503))

(assert (=> b!4532115 d!1399282))

(declare-fun d!1399284 () Bool)

(declare-fun res!1887907 () Bool)

(declare-fun e!2824218 () Bool)

(assert (=> d!1399284 (=> res!1887907 e!2824218)))

(assert (=> d!1399284 (= res!1887907 (not ((_ is Cons!50712) newBucket!178)))))

(assert (=> d!1399284 (= (noDuplicateKeys!1184 newBucket!178) e!2824218)))

(declare-fun b!4532477 () Bool)

(declare-fun e!2824219 () Bool)

(assert (=> b!4532477 (= e!2824218 e!2824219)))

(declare-fun res!1887908 () Bool)

(assert (=> b!4532477 (=> (not res!1887908) (not e!2824219))))

(assert (=> b!4532477 (= res!1887908 (not (containsKey!1840 (t!357798 newBucket!178) (_1!28879 (h!56583 newBucket!178)))))))

(declare-fun b!4532478 () Bool)

(assert (=> b!4532478 (= e!2824219 (noDuplicateKeys!1184 (t!357798 newBucket!178)))))

(assert (= (and d!1399284 (not res!1887907)) b!4532477))

(assert (= (and b!4532477 res!1887908) b!4532478))

(declare-fun m!5291505 () Bool)

(assert (=> b!4532477 m!5291505))

(declare-fun m!5291507 () Bool)

(assert (=> b!4532478 m!5291507))

(assert (=> b!4532123 d!1399284))

(declare-fun bs!868284 () Bool)

(declare-fun d!1399286 () Bool)

(assert (= bs!868284 (and d!1399286 start!449480)))

(declare-fun lambda!174770 () Int)

(assert (=> bs!868284 (= lambda!174770 lambda!174635)))

(declare-fun bs!868285 () Bool)

(assert (= bs!868285 (and d!1399286 d!1399266)))

(assert (=> bs!868285 (= lambda!174770 lambda!174760)))

(declare-fun bs!868286 () Bool)

(assert (= bs!868286 (and d!1399286 d!1399148)))

(assert (=> bs!868286 (= lambda!174770 lambda!174693)))

(declare-fun bs!868287 () Bool)

(assert (= bs!868287 (and d!1399286 d!1399114)))

(assert (=> bs!868287 (= lambda!174770 lambda!174691)))

(declare-fun bs!868288 () Bool)

(assert (= bs!868288 (and d!1399286 d!1399098)))

(assert (=> bs!868288 (= lambda!174770 lambda!174681)))

(declare-fun bs!868289 () Bool)

(assert (= bs!868289 (and d!1399286 b!4532128)))

(assert (=> bs!868289 (not (= lambda!174770 lambda!174636))))

(declare-fun bs!868290 () Bool)

(assert (= bs!868290 (and d!1399286 d!1399160)))

(assert (=> bs!868290 (= lambda!174770 lambda!174703)))

(declare-fun bs!868291 () Bool)

(assert (= bs!868291 (and d!1399286 d!1399272)))

(assert (=> bs!868291 (= lambda!174770 lambda!174763)))

(declare-fun bs!868292 () Bool)

(assert (= bs!868292 (and d!1399286 d!1399104)))

(assert (=> bs!868292 (not (= lambda!174770 lambda!174684))))

(declare-fun bs!868293 () Bool)

(assert (= bs!868293 (and d!1399286 d!1399174)))

(assert (=> bs!868293 (= lambda!174770 lambda!174706)))

(assert (=> d!1399286 (contains!13481 lm!1477 (hash!2877 hashF!1107 key!3287))))

(declare-fun lt!1708052 () Unit!97092)

(declare-fun choose!29767 (ListLongMap!3007 K!12100 Hashable!5579) Unit!97092)

(assert (=> d!1399286 (= lt!1708052 (choose!29767 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1399286 (forall!10315 (toList!4375 lm!1477) lambda!174770)))

(assert (=> d!1399286 (= (lemmaInGenMapThenLongMapContainsHash!258 lm!1477 key!3287 hashF!1107) lt!1708052)))

(declare-fun bs!868294 () Bool)

(assert (= bs!868294 d!1399286))

(assert (=> bs!868294 m!5290701))

(assert (=> bs!868294 m!5290701))

(declare-fun m!5291509 () Bool)

(assert (=> bs!868294 m!5291509))

(declare-fun m!5291511 () Bool)

(assert (=> bs!868294 m!5291511))

(declare-fun m!5291513 () Bool)

(assert (=> bs!868294 m!5291513))

(assert (=> b!4532118 d!1399286))

(declare-fun d!1399288 () Bool)

(declare-fun get!16650 (Option!11171) List!50836)

(assert (=> d!1399288 (= (apply!11921 lm!1477 hash!344) (get!16650 (getValueByKey!1129 (toList!4375 lm!1477) hash!344)))))

(declare-fun bs!868295 () Bool)

(assert (= bs!868295 d!1399288))

(declare-fun m!5291515 () Bool)

(assert (=> bs!868295 m!5291515))

(assert (=> bs!868295 m!5291515))

(declare-fun m!5291517 () Bool)

(assert (=> bs!868295 m!5291517))

(assert (=> b!4532118 d!1399288))

(declare-fun d!1399290 () Bool)

(declare-fun e!2824221 () Bool)

(assert (=> d!1399290 e!2824221))

(declare-fun res!1887909 () Bool)

(assert (=> d!1399290 (=> res!1887909 e!2824221)))

(declare-fun lt!1708053 () Bool)

(assert (=> d!1399290 (= res!1887909 (not lt!1708053))))

(declare-fun lt!1708056 () Bool)

(assert (=> d!1399290 (= lt!1708053 lt!1708056)))

(declare-fun lt!1708055 () Unit!97092)

(declare-fun e!2824220 () Unit!97092)

(assert (=> d!1399290 (= lt!1708055 e!2824220)))

(declare-fun c!773917 () Bool)

(assert (=> d!1399290 (= c!773917 lt!1708056)))

(assert (=> d!1399290 (= lt!1708056 (containsKey!1844 (toList!4375 lm!1477) lt!1707614))))

(assert (=> d!1399290 (= (contains!13481 lm!1477 lt!1707614) lt!1708053)))

(declare-fun b!4532479 () Bool)

(declare-fun lt!1708054 () Unit!97092)

(assert (=> b!4532479 (= e!2824220 lt!1708054)))

(assert (=> b!4532479 (= lt!1708054 (lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (toList!4375 lm!1477) lt!1707614))))

(assert (=> b!4532479 (isDefined!8452 (getValueByKey!1129 (toList!4375 lm!1477) lt!1707614))))

(declare-fun b!4532480 () Bool)

(declare-fun Unit!97175 () Unit!97092)

(assert (=> b!4532480 (= e!2824220 Unit!97175)))

(declare-fun b!4532481 () Bool)

(assert (=> b!4532481 (= e!2824221 (isDefined!8452 (getValueByKey!1129 (toList!4375 lm!1477) lt!1707614)))))

(assert (= (and d!1399290 c!773917) b!4532479))

(assert (= (and d!1399290 (not c!773917)) b!4532480))

(assert (= (and d!1399290 (not res!1887909)) b!4532481))

(declare-fun m!5291519 () Bool)

(assert (=> d!1399290 m!5291519))

(declare-fun m!5291521 () Bool)

(assert (=> b!4532479 m!5291521))

(declare-fun m!5291523 () Bool)

(assert (=> b!4532479 m!5291523))

(assert (=> b!4532479 m!5291523))

(declare-fun m!5291525 () Bool)

(assert (=> b!4532479 m!5291525))

(assert (=> b!4532481 m!5291523))

(assert (=> b!4532481 m!5291523))

(assert (=> b!4532481 m!5291525))

(assert (=> b!4532118 d!1399290))

(declare-fun d!1399292 () Bool)

(assert (=> d!1399292 (contains!13480 (toList!4375 lm!1477) (tuple2!51173 hash!344 lt!1707613))))

(declare-fun lt!1708059 () Unit!97092)

(declare-fun choose!29768 (List!50837 (_ BitVec 64) List!50836) Unit!97092)

(assert (=> d!1399292 (= lt!1708059 (choose!29768 (toList!4375 lm!1477) hash!344 lt!1707613))))

(declare-fun e!2824224 () Bool)

(assert (=> d!1399292 e!2824224))

(declare-fun res!1887912 () Bool)

(assert (=> d!1399292 (=> (not res!1887912) (not e!2824224))))

(assert (=> d!1399292 (= res!1887912 (isStrictlySorted!449 (toList!4375 lm!1477)))))

(assert (=> d!1399292 (= (lemmaGetValueByKeyImpliesContainsTuple!696 (toList!4375 lm!1477) hash!344 lt!1707613) lt!1708059)))

(declare-fun b!4532484 () Bool)

(assert (=> b!4532484 (= e!2824224 (= (getValueByKey!1129 (toList!4375 lm!1477) hash!344) (Some!11170 lt!1707613)))))

(assert (= (and d!1399292 res!1887912) b!4532484))

(declare-fun m!5291527 () Bool)

(assert (=> d!1399292 m!5291527))

(declare-fun m!5291529 () Bool)

(assert (=> d!1399292 m!5291529))

(assert (=> d!1399292 m!5290875))

(assert (=> b!4532484 m!5291515))

(assert (=> b!4532118 d!1399292))

(declare-fun d!1399294 () Bool)

(declare-fun lt!1708062 () Bool)

(declare-fun content!8413 (List!50837) (InoxSet tuple2!51172))

(assert (=> d!1399294 (= lt!1708062 (select (content!8413 (toList!4375 lm!1477)) lt!1707625))))

(declare-fun e!2824229 () Bool)

(assert (=> d!1399294 (= lt!1708062 e!2824229)))

(declare-fun res!1887918 () Bool)

(assert (=> d!1399294 (=> (not res!1887918) (not e!2824229))))

(assert (=> d!1399294 (= res!1887918 ((_ is Cons!50713) (toList!4375 lm!1477)))))

(assert (=> d!1399294 (= (contains!13480 (toList!4375 lm!1477) lt!1707625) lt!1708062)))

(declare-fun b!4532489 () Bool)

(declare-fun e!2824230 () Bool)

(assert (=> b!4532489 (= e!2824229 e!2824230)))

(declare-fun res!1887917 () Bool)

(assert (=> b!4532489 (=> res!1887917 e!2824230)))

(assert (=> b!4532489 (= res!1887917 (= (h!56584 (toList!4375 lm!1477)) lt!1707625))))

(declare-fun b!4532490 () Bool)

(assert (=> b!4532490 (= e!2824230 (contains!13480 (t!357799 (toList!4375 lm!1477)) lt!1707625))))

(assert (= (and d!1399294 res!1887918) b!4532489))

(assert (= (and b!4532489 (not res!1887917)) b!4532490))

(declare-fun m!5291531 () Bool)

(assert (=> d!1399294 m!5291531))

(declare-fun m!5291533 () Bool)

(assert (=> d!1399294 m!5291533))

(assert (=> b!4532490 m!5290675))

(assert (=> b!4532118 d!1399294))

(declare-fun d!1399296 () Bool)

(assert (=> d!1399296 (dynLambda!21195 lambda!174635 lt!1707625)))

(declare-fun lt!1708065 () Unit!97092)

(declare-fun choose!29769 (List!50837 Int tuple2!51172) Unit!97092)

(assert (=> d!1399296 (= lt!1708065 (choose!29769 (toList!4375 lm!1477) lambda!174635 lt!1707625))))

(declare-fun e!2824233 () Bool)

(assert (=> d!1399296 e!2824233))

(declare-fun res!1887921 () Bool)

(assert (=> d!1399296 (=> (not res!1887921) (not e!2824233))))

(assert (=> d!1399296 (= res!1887921 (forall!10315 (toList!4375 lm!1477) lambda!174635))))

(assert (=> d!1399296 (= (forallContained!2572 (toList!4375 lm!1477) lambda!174635 lt!1707625) lt!1708065)))

(declare-fun b!4532493 () Bool)

(assert (=> b!4532493 (= e!2824233 (contains!13480 (toList!4375 lm!1477) lt!1707625))))

(assert (= (and d!1399296 res!1887921) b!4532493))

(declare-fun b_lambda!156777 () Bool)

(assert (=> (not b_lambda!156777) (not d!1399296)))

(declare-fun m!5291535 () Bool)

(assert (=> d!1399296 m!5291535))

(declare-fun m!5291537 () Bool)

(assert (=> d!1399296 m!5291537))

(assert (=> d!1399296 m!5290725))

(assert (=> b!4532493 m!5290663))

(assert (=> b!4532118 d!1399296))

(declare-fun b!4532505 () Bool)

(declare-fun e!2824238 () List!50836)

(assert (=> b!4532505 (= e!2824238 Nil!50712)))

(declare-fun b!4532504 () Bool)

(assert (=> b!4532504 (= e!2824238 (Cons!50712 (h!56583 lt!1707613) (removePairForKey!811 (t!357798 lt!1707613) key!3287)))))

(declare-fun b!4532502 () Bool)

(declare-fun e!2824239 () List!50836)

(assert (=> b!4532502 (= e!2824239 (t!357798 lt!1707613))))

(declare-fun b!4532503 () Bool)

(assert (=> b!4532503 (= e!2824239 e!2824238)))

(declare-fun c!773923 () Bool)

(assert (=> b!4532503 (= c!773923 ((_ is Cons!50712) lt!1707613))))

(declare-fun d!1399298 () Bool)

(declare-fun lt!1708068 () List!50836)

(assert (=> d!1399298 (not (containsKey!1840 lt!1708068 key!3287))))

(assert (=> d!1399298 (= lt!1708068 e!2824239)))

(declare-fun c!773922 () Bool)

(assert (=> d!1399298 (= c!773922 (and ((_ is Cons!50712) lt!1707613) (= (_1!28879 (h!56583 lt!1707613)) key!3287)))))

(assert (=> d!1399298 (noDuplicateKeys!1184 lt!1707613)))

(assert (=> d!1399298 (= (removePairForKey!811 lt!1707613 key!3287) lt!1708068)))

(assert (= (and d!1399298 c!773922) b!4532502))

(assert (= (and d!1399298 (not c!773922)) b!4532503))

(assert (= (and b!4532503 c!773923) b!4532504))

(assert (= (and b!4532503 (not c!773923)) b!4532505))

(declare-fun m!5291539 () Bool)

(assert (=> b!4532504 m!5291539))

(declare-fun m!5291541 () Bool)

(assert (=> d!1399298 m!5291541))

(declare-fun m!5291543 () Bool)

(assert (=> d!1399298 m!5291543))

(assert (=> b!4532118 d!1399298))

(declare-fun b!4532506 () Bool)

(declare-fun e!2824240 () Bool)

(declare-fun e!2824242 () Bool)

(assert (=> b!4532506 (= e!2824240 e!2824242)))

(declare-fun res!1887923 () Bool)

(assert (=> b!4532506 (=> (not res!1887923) (not e!2824242))))

(assert (=> b!4532506 (= res!1887923 (isDefined!8451 (getValueByKey!1128 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287)))))

(declare-fun b!4532507 () Bool)

(declare-fun e!2824245 () List!50839)

(assert (=> b!4532507 (= e!2824245 (getKeysList!483 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))

(declare-fun b!4532508 () Bool)

(assert (=> b!4532508 (= e!2824245 (keys!17636 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))

(declare-fun b!4532509 () Bool)

(assert (=> b!4532509 (= e!2824242 (contains!13483 (keys!17636 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(declare-fun b!4532510 () Bool)

(declare-fun e!2824244 () Bool)

(assert (=> b!4532510 (= e!2824244 (not (contains!13483 (keys!17636 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287)))))

(declare-fun b!4532511 () Bool)

(declare-fun e!2824243 () Unit!97092)

(declare-fun lt!1708073 () Unit!97092)

(assert (=> b!4532511 (= e!2824243 lt!1708073)))

(declare-fun lt!1708074 () Unit!97092)

(assert (=> b!4532511 (= lt!1708074 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(assert (=> b!4532511 (isDefined!8451 (getValueByKey!1128 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(declare-fun lt!1708071 () Unit!97092)

(assert (=> b!4532511 (= lt!1708071 lt!1708074)))

(assert (=> b!4532511 (= lt!1708073 (lemmaInListThenGetKeysListContains!479 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(declare-fun call!315956 () Bool)

(assert (=> b!4532511 call!315956))

(declare-fun b!4532512 () Bool)

(declare-fun e!2824241 () Unit!97092)

(assert (=> b!4532512 (= e!2824243 e!2824241)))

(declare-fun c!773925 () Bool)

(assert (=> b!4532512 (= c!773925 call!315956)))

(declare-fun b!4532513 () Bool)

(assert (=> b!4532513 false))

(declare-fun lt!1708069 () Unit!97092)

(declare-fun lt!1708072 () Unit!97092)

(assert (=> b!4532513 (= lt!1708069 lt!1708072)))

(assert (=> b!4532513 (containsKey!1843 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287)))

(assert (=> b!4532513 (= lt!1708072 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(declare-fun Unit!97176 () Unit!97092)

(assert (=> b!4532513 (= e!2824241 Unit!97176)))

(declare-fun d!1399300 () Bool)

(assert (=> d!1399300 e!2824240))

(declare-fun res!1887924 () Bool)

(assert (=> d!1399300 (=> res!1887924 e!2824240)))

(assert (=> d!1399300 (= res!1887924 e!2824244)))

(declare-fun res!1887922 () Bool)

(assert (=> d!1399300 (=> (not res!1887922) (not e!2824244))))

(declare-fun lt!1708076 () Bool)

(assert (=> d!1399300 (= res!1887922 (not lt!1708076))))

(declare-fun lt!1708075 () Bool)

(assert (=> d!1399300 (= lt!1708076 lt!1708075)))

(declare-fun lt!1708070 () Unit!97092)

(assert (=> d!1399300 (= lt!1708070 e!2824243)))

(declare-fun c!773926 () Bool)

(assert (=> d!1399300 (= c!773926 lt!1708075)))

(assert (=> d!1399300 (= lt!1708075 (containsKey!1843 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(assert (=> d!1399300 (= (contains!13479 (extractMap!1240 (t!357799 (toList!4375 lm!1477))) key!3287) lt!1708076)))

(declare-fun b!4532514 () Bool)

(declare-fun Unit!97177 () Unit!97092)

(assert (=> b!4532514 (= e!2824241 Unit!97177)))

(declare-fun bm!315951 () Bool)

(assert (=> bm!315951 (= call!315956 (contains!13483 e!2824245 key!3287))))

(declare-fun c!773924 () Bool)

(assert (=> bm!315951 (= c!773924 c!773926)))

(assert (= (and d!1399300 c!773926) b!4532511))

(assert (= (and d!1399300 (not c!773926)) b!4532512))

(assert (= (and b!4532512 c!773925) b!4532513))

(assert (= (and b!4532512 (not c!773925)) b!4532514))

(assert (= (or b!4532511 b!4532512) bm!315951))

(assert (= (and bm!315951 c!773924) b!4532507))

(assert (= (and bm!315951 (not c!773924)) b!4532508))

(assert (= (and d!1399300 res!1887922) b!4532510))

(assert (= (and d!1399300 (not res!1887924)) b!4532506))

(assert (= (and b!4532506 res!1887923) b!4532509))

(declare-fun m!5291545 () Bool)

(assert (=> b!4532511 m!5291545))

(declare-fun m!5291547 () Bool)

(assert (=> b!4532511 m!5291547))

(assert (=> b!4532511 m!5291547))

(declare-fun m!5291549 () Bool)

(assert (=> b!4532511 m!5291549))

(declare-fun m!5291551 () Bool)

(assert (=> b!4532511 m!5291551))

(assert (=> b!4532509 m!5290679))

(declare-fun m!5291553 () Bool)

(assert (=> b!4532509 m!5291553))

(assert (=> b!4532509 m!5291553))

(declare-fun m!5291555 () Bool)

(assert (=> b!4532509 m!5291555))

(assert (=> b!4532508 m!5290679))

(assert (=> b!4532508 m!5291553))

(declare-fun m!5291557 () Bool)

(assert (=> bm!315951 m!5291557))

(assert (=> b!4532510 m!5290679))

(assert (=> b!4532510 m!5291553))

(assert (=> b!4532510 m!5291553))

(assert (=> b!4532510 m!5291555))

(declare-fun m!5291559 () Bool)

(assert (=> b!4532513 m!5291559))

(declare-fun m!5291561 () Bool)

(assert (=> b!4532513 m!5291561))

(assert (=> b!4532506 m!5291547))

(assert (=> b!4532506 m!5291547))

(assert (=> b!4532506 m!5291549))

(declare-fun m!5291563 () Bool)

(assert (=> b!4532507 m!5291563))

(assert (=> d!1399300 m!5291559))

(assert (=> b!4532119 d!1399300))

(declare-fun b!4532515 () Bool)

(declare-fun e!2824246 () Bool)

(declare-fun e!2824248 () Bool)

(assert (=> b!4532515 (= e!2824246 e!2824248)))

(declare-fun res!1887926 () Bool)

(assert (=> b!4532515 (=> (not res!1887926) (not e!2824248))))

(assert (=> b!4532515 (= res!1887926 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287)))))

(declare-fun b!4532516 () Bool)

(declare-fun e!2824251 () List!50839)

(assert (=> b!4532516 (= e!2824251 (getKeysList!483 (toList!4376 lt!1707612)))))

(declare-fun b!4532517 () Bool)

(assert (=> b!4532517 (= e!2824251 (keys!17636 lt!1707612))))

(declare-fun b!4532518 () Bool)

(assert (=> b!4532518 (= e!2824248 (contains!13483 (keys!17636 lt!1707612) key!3287))))

(declare-fun b!4532519 () Bool)

(declare-fun e!2824250 () Bool)

(assert (=> b!4532519 (= e!2824250 (not (contains!13483 (keys!17636 lt!1707612) key!3287)))))

(declare-fun b!4532520 () Bool)

(declare-fun e!2824249 () Unit!97092)

(declare-fun lt!1708081 () Unit!97092)

(assert (=> b!4532520 (= e!2824249 lt!1708081)))

(declare-fun lt!1708082 () Unit!97092)

(assert (=> b!4532520 (= lt!1708082 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1707612) key!3287))))

(assert (=> b!4532520 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287))))

(declare-fun lt!1708079 () Unit!97092)

(assert (=> b!4532520 (= lt!1708079 lt!1708082)))

(assert (=> b!4532520 (= lt!1708081 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1707612) key!3287))))

(declare-fun call!315957 () Bool)

(assert (=> b!4532520 call!315957))

(declare-fun b!4532521 () Bool)

(declare-fun e!2824247 () Unit!97092)

(assert (=> b!4532521 (= e!2824249 e!2824247)))

(declare-fun c!773928 () Bool)

(assert (=> b!4532521 (= c!773928 call!315957)))

(declare-fun b!4532522 () Bool)

(assert (=> b!4532522 false))

(declare-fun lt!1708077 () Unit!97092)

(declare-fun lt!1708080 () Unit!97092)

(assert (=> b!4532522 (= lt!1708077 lt!1708080)))

(assert (=> b!4532522 (containsKey!1843 (toList!4376 lt!1707612) key!3287)))

(assert (=> b!4532522 (= lt!1708080 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1707612) key!3287))))

(declare-fun Unit!97178 () Unit!97092)

(assert (=> b!4532522 (= e!2824247 Unit!97178)))

(declare-fun d!1399302 () Bool)

(assert (=> d!1399302 e!2824246))

(declare-fun res!1887927 () Bool)

(assert (=> d!1399302 (=> res!1887927 e!2824246)))

(assert (=> d!1399302 (= res!1887927 e!2824250)))

(declare-fun res!1887925 () Bool)

(assert (=> d!1399302 (=> (not res!1887925) (not e!2824250))))

(declare-fun lt!1708084 () Bool)

(assert (=> d!1399302 (= res!1887925 (not lt!1708084))))

(declare-fun lt!1708083 () Bool)

(assert (=> d!1399302 (= lt!1708084 lt!1708083)))

(declare-fun lt!1708078 () Unit!97092)

(assert (=> d!1399302 (= lt!1708078 e!2824249)))

(declare-fun c!773929 () Bool)

(assert (=> d!1399302 (= c!773929 lt!1708083)))

(assert (=> d!1399302 (= lt!1708083 (containsKey!1843 (toList!4376 lt!1707612) key!3287))))

(assert (=> d!1399302 (= (contains!13479 lt!1707612 key!3287) lt!1708084)))

(declare-fun b!4532523 () Bool)

(declare-fun Unit!97179 () Unit!97092)

(assert (=> b!4532523 (= e!2824247 Unit!97179)))

(declare-fun bm!315952 () Bool)

(assert (=> bm!315952 (= call!315957 (contains!13483 e!2824251 key!3287))))

(declare-fun c!773927 () Bool)

(assert (=> bm!315952 (= c!773927 c!773929)))

(assert (= (and d!1399302 c!773929) b!4532520))

(assert (= (and d!1399302 (not c!773929)) b!4532521))

(assert (= (and b!4532521 c!773928) b!4532522))

(assert (= (and b!4532521 (not c!773928)) b!4532523))

(assert (= (or b!4532520 b!4532521) bm!315952))

(assert (= (and bm!315952 c!773927) b!4532516))

(assert (= (and bm!315952 (not c!773927)) b!4532517))

(assert (= (and d!1399302 res!1887925) b!4532519))

(assert (= (and d!1399302 (not res!1887927)) b!4532515))

(assert (= (and b!4532515 res!1887926) b!4532518))

(declare-fun m!5291565 () Bool)

(assert (=> b!4532520 m!5291565))

(declare-fun m!5291567 () Bool)

(assert (=> b!4532520 m!5291567))

(assert (=> b!4532520 m!5291567))

(declare-fun m!5291569 () Bool)

(assert (=> b!4532520 m!5291569))

(declare-fun m!5291571 () Bool)

(assert (=> b!4532520 m!5291571))

(assert (=> b!4532518 m!5291029))

(assert (=> b!4532518 m!5291029))

(declare-fun m!5291573 () Bool)

(assert (=> b!4532518 m!5291573))

(assert (=> b!4532517 m!5291029))

(declare-fun m!5291575 () Bool)

(assert (=> bm!315952 m!5291575))

(assert (=> b!4532519 m!5291029))

(assert (=> b!4532519 m!5291029))

(assert (=> b!4532519 m!5291573))

(declare-fun m!5291577 () Bool)

(assert (=> b!4532522 m!5291577))

(declare-fun m!5291579 () Bool)

(assert (=> b!4532522 m!5291579))

(assert (=> b!4532515 m!5291567))

(assert (=> b!4532515 m!5291567))

(assert (=> b!4532515 m!5291569))

(declare-fun m!5291581 () Bool)

(assert (=> b!4532516 m!5291581))

(assert (=> d!1399302 m!5291577))

(assert (=> b!4532119 d!1399302))

(declare-fun bs!868296 () Bool)

(declare-fun d!1399304 () Bool)

(assert (= bs!868296 (and d!1399304 d!1399286)))

(declare-fun lambda!174771 () Int)

(assert (=> bs!868296 (= lambda!174771 lambda!174770)))

(declare-fun bs!868297 () Bool)

(assert (= bs!868297 (and d!1399304 start!449480)))

(assert (=> bs!868297 (= lambda!174771 lambda!174635)))

(declare-fun bs!868298 () Bool)

(assert (= bs!868298 (and d!1399304 d!1399266)))

(assert (=> bs!868298 (= lambda!174771 lambda!174760)))

(declare-fun bs!868299 () Bool)

(assert (= bs!868299 (and d!1399304 d!1399148)))

(assert (=> bs!868299 (= lambda!174771 lambda!174693)))

(declare-fun bs!868300 () Bool)

(assert (= bs!868300 (and d!1399304 d!1399114)))

(assert (=> bs!868300 (= lambda!174771 lambda!174691)))

(declare-fun bs!868301 () Bool)

(assert (= bs!868301 (and d!1399304 d!1399098)))

(assert (=> bs!868301 (= lambda!174771 lambda!174681)))

(declare-fun bs!868302 () Bool)

(assert (= bs!868302 (and d!1399304 b!4532128)))

(assert (=> bs!868302 (not (= lambda!174771 lambda!174636))))

(declare-fun bs!868303 () Bool)

(assert (= bs!868303 (and d!1399304 d!1399160)))

(assert (=> bs!868303 (= lambda!174771 lambda!174703)))

(declare-fun bs!868304 () Bool)

(assert (= bs!868304 (and d!1399304 d!1399272)))

(assert (=> bs!868304 (= lambda!174771 lambda!174763)))

(declare-fun bs!868305 () Bool)

(assert (= bs!868305 (and d!1399304 d!1399104)))

(assert (=> bs!868305 (not (= lambda!174771 lambda!174684))))

(declare-fun bs!868306 () Bool)

(assert (= bs!868306 (and d!1399304 d!1399174)))

(assert (=> bs!868306 (= lambda!174771 lambda!174706)))

(declare-fun lt!1708085 () ListMap!3637)

(assert (=> d!1399304 (invariantList!1035 (toList!4376 lt!1708085))))

(declare-fun e!2824252 () ListMap!3637)

(assert (=> d!1399304 (= lt!1708085 e!2824252)))

(declare-fun c!773930 () Bool)

(assert (=> d!1399304 (= c!773930 ((_ is Cons!50713) (t!357799 (toList!4375 lm!1477))))))

(assert (=> d!1399304 (forall!10315 (t!357799 (toList!4375 lm!1477)) lambda!174771)))

(assert (=> d!1399304 (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708085)))

(declare-fun b!4532524 () Bool)

(assert (=> b!4532524 (= e!2824252 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))))))

(declare-fun b!4532525 () Bool)

(assert (=> b!4532525 (= e!2824252 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399304 c!773930) b!4532524))

(assert (= (and d!1399304 (not c!773930)) b!4532525))

(declare-fun m!5291583 () Bool)

(assert (=> d!1399304 m!5291583))

(declare-fun m!5291585 () Bool)

(assert (=> d!1399304 m!5291585))

(declare-fun m!5291587 () Bool)

(assert (=> b!4532524 m!5291587))

(assert (=> b!4532524 m!5291587))

(declare-fun m!5291589 () Bool)

(assert (=> b!4532524 m!5291589))

(assert (=> b!4532119 d!1399304))

(declare-fun bs!868307 () Bool)

(declare-fun d!1399306 () Bool)

(assert (= bs!868307 (and d!1399306 d!1399286)))

(declare-fun lambda!174774 () Int)

(assert (=> bs!868307 (= lambda!174774 lambda!174770)))

(declare-fun bs!868308 () Bool)

(assert (= bs!868308 (and d!1399306 start!449480)))

(assert (=> bs!868308 (= lambda!174774 lambda!174635)))

(declare-fun bs!868309 () Bool)

(assert (= bs!868309 (and d!1399306 d!1399266)))

(assert (=> bs!868309 (= lambda!174774 lambda!174760)))

(declare-fun bs!868310 () Bool)

(assert (= bs!868310 (and d!1399306 d!1399148)))

(assert (=> bs!868310 (= lambda!174774 lambda!174693)))

(declare-fun bs!868311 () Bool)

(assert (= bs!868311 (and d!1399306 d!1399114)))

(assert (=> bs!868311 (= lambda!174774 lambda!174691)))

(declare-fun bs!868312 () Bool)

(assert (= bs!868312 (and d!1399306 d!1399098)))

(assert (=> bs!868312 (= lambda!174774 lambda!174681)))

(declare-fun bs!868313 () Bool)

(assert (= bs!868313 (and d!1399306 b!4532128)))

(assert (=> bs!868313 (not (= lambda!174774 lambda!174636))))

(declare-fun bs!868314 () Bool)

(assert (= bs!868314 (and d!1399306 d!1399160)))

(assert (=> bs!868314 (= lambda!174774 lambda!174703)))

(declare-fun bs!868315 () Bool)

(assert (= bs!868315 (and d!1399306 d!1399272)))

(assert (=> bs!868315 (= lambda!174774 lambda!174763)))

(declare-fun bs!868316 () Bool)

(assert (= bs!868316 (and d!1399306 d!1399304)))

(assert (=> bs!868316 (= lambda!174774 lambda!174771)))

(declare-fun bs!868317 () Bool)

(assert (= bs!868317 (and d!1399306 d!1399104)))

(assert (=> bs!868317 (not (= lambda!174774 lambda!174684))))

(declare-fun bs!868318 () Bool)

(assert (= bs!868318 (and d!1399306 d!1399174)))

(assert (=> bs!868318 (= lambda!174774 lambda!174706)))

(assert (=> d!1399306 (contains!13479 (extractMap!1240 (toList!4375 lt!1707598)) key!3287)))

(declare-fun lt!1708088 () Unit!97092)

(declare-fun choose!29770 (ListLongMap!3007 K!12100 Hashable!5579) Unit!97092)

(assert (=> d!1399306 (= lt!1708088 (choose!29770 lt!1707598 key!3287 hashF!1107))))

(assert (=> d!1399306 (forall!10315 (toList!4375 lt!1707598) lambda!174774)))

(assert (=> d!1399306 (= (lemmaListContainsThenExtractedMapContains!154 lt!1707598 key!3287 hashF!1107) lt!1708088)))

(declare-fun bs!868319 () Bool)

(assert (= bs!868319 d!1399306))

(assert (=> bs!868319 m!5290683))

(assert (=> bs!868319 m!5290683))

(declare-fun m!5291591 () Bool)

(assert (=> bs!868319 m!5291591))

(declare-fun m!5291593 () Bool)

(assert (=> bs!868319 m!5291593))

(declare-fun m!5291595 () Bool)

(assert (=> bs!868319 m!5291595))

(assert (=> b!4532119 d!1399306))

(declare-fun bs!868320 () Bool)

(declare-fun d!1399308 () Bool)

(assert (= bs!868320 (and d!1399308 d!1399286)))

(declare-fun lambda!174775 () Int)

(assert (=> bs!868320 (= lambda!174775 lambda!174770)))

(declare-fun bs!868321 () Bool)

(assert (= bs!868321 (and d!1399308 start!449480)))

(assert (=> bs!868321 (= lambda!174775 lambda!174635)))

(declare-fun bs!868322 () Bool)

(assert (= bs!868322 (and d!1399308 d!1399266)))

(assert (=> bs!868322 (= lambda!174775 lambda!174760)))

(declare-fun bs!868323 () Bool)

(assert (= bs!868323 (and d!1399308 d!1399148)))

(assert (=> bs!868323 (= lambda!174775 lambda!174693)))

(declare-fun bs!868324 () Bool)

(assert (= bs!868324 (and d!1399308 d!1399114)))

(assert (=> bs!868324 (= lambda!174775 lambda!174691)))

(declare-fun bs!868325 () Bool)

(assert (= bs!868325 (and d!1399308 d!1399098)))

(assert (=> bs!868325 (= lambda!174775 lambda!174681)))

(declare-fun bs!868326 () Bool)

(assert (= bs!868326 (and d!1399308 b!4532128)))

(assert (=> bs!868326 (not (= lambda!174775 lambda!174636))))

(declare-fun bs!868327 () Bool)

(assert (= bs!868327 (and d!1399308 d!1399160)))

(assert (=> bs!868327 (= lambda!174775 lambda!174703)))

(declare-fun bs!868328 () Bool)

(assert (= bs!868328 (and d!1399308 d!1399272)))

(assert (=> bs!868328 (= lambda!174775 lambda!174763)))

(declare-fun bs!868329 () Bool)

(assert (= bs!868329 (and d!1399308 d!1399306)))

(assert (=> bs!868329 (= lambda!174775 lambda!174774)))

(declare-fun bs!868330 () Bool)

(assert (= bs!868330 (and d!1399308 d!1399304)))

(assert (=> bs!868330 (= lambda!174775 lambda!174771)))

(declare-fun bs!868331 () Bool)

(assert (= bs!868331 (and d!1399308 d!1399104)))

(assert (=> bs!868331 (not (= lambda!174775 lambda!174684))))

(declare-fun bs!868332 () Bool)

(assert (= bs!868332 (and d!1399308 d!1399174)))

(assert (=> bs!868332 (= lambda!174775 lambda!174706)))

(declare-fun lt!1708089 () ListMap!3637)

(assert (=> d!1399308 (invariantList!1035 (toList!4376 lt!1708089))))

(declare-fun e!2824253 () ListMap!3637)

(assert (=> d!1399308 (= lt!1708089 e!2824253)))

(declare-fun c!773931 () Bool)

(assert (=> d!1399308 (= c!773931 ((_ is Cons!50713) (toList!4375 lt!1707598)))))

(assert (=> d!1399308 (forall!10315 (toList!4375 lt!1707598) lambda!174775)))

(assert (=> d!1399308 (= (extractMap!1240 (toList!4375 lt!1707598)) lt!1708089)))

(declare-fun b!4532526 () Bool)

(assert (=> b!4532526 (= e!2824253 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))))))

(declare-fun b!4532527 () Bool)

(assert (=> b!4532527 (= e!2824253 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399308 c!773931) b!4532526))

(assert (= (and d!1399308 (not c!773931)) b!4532527))

(declare-fun m!5291597 () Bool)

(assert (=> d!1399308 m!5291597))

(declare-fun m!5291599 () Bool)

(assert (=> d!1399308 m!5291599))

(declare-fun m!5291601 () Bool)

(assert (=> b!4532526 m!5291601))

(assert (=> b!4532526 m!5291601))

(declare-fun m!5291603 () Bool)

(assert (=> b!4532526 m!5291603))

(assert (=> b!4532119 d!1399308))

(declare-fun d!1399310 () Bool)

(declare-fun e!2824254 () Bool)

(assert (=> d!1399310 e!2824254))

(declare-fun res!1887929 () Bool)

(assert (=> d!1399310 (=> (not res!1887929) (not e!2824254))))

(declare-fun lt!1708092 () ListLongMap!3007)

(assert (=> d!1399310 (= res!1887929 (contains!13481 lt!1708092 (_1!28880 lt!1707610)))))

(declare-fun lt!1708091 () List!50837)

(assert (=> d!1399310 (= lt!1708092 (ListLongMap!3008 lt!1708091))))

(declare-fun lt!1708090 () Unit!97092)

(declare-fun lt!1708093 () Unit!97092)

(assert (=> d!1399310 (= lt!1708090 lt!1708093)))

(assert (=> d!1399310 (= (getValueByKey!1129 lt!1708091 (_1!28880 lt!1707610)) (Some!11170 (_2!28880 lt!1707610)))))

(assert (=> d!1399310 (= lt!1708093 (lemmaContainsTupThenGetReturnValue!706 lt!1708091 (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))

(assert (=> d!1399310 (= lt!1708091 (insertStrictlySorted!426 (toList!4375 lm!1477) (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))

(assert (=> d!1399310 (= (+!1580 lm!1477 lt!1707610) lt!1708092)))

(declare-fun b!4532528 () Bool)

(declare-fun res!1887928 () Bool)

(assert (=> b!4532528 (=> (not res!1887928) (not e!2824254))))

(assert (=> b!4532528 (= res!1887928 (= (getValueByKey!1129 (toList!4375 lt!1708092) (_1!28880 lt!1707610)) (Some!11170 (_2!28880 lt!1707610))))))

(declare-fun b!4532529 () Bool)

(assert (=> b!4532529 (= e!2824254 (contains!13480 (toList!4375 lt!1708092) lt!1707610))))

(assert (= (and d!1399310 res!1887929) b!4532528))

(assert (= (and b!4532528 res!1887928) b!4532529))

(declare-fun m!5291605 () Bool)

(assert (=> d!1399310 m!5291605))

(declare-fun m!5291607 () Bool)

(assert (=> d!1399310 m!5291607))

(declare-fun m!5291609 () Bool)

(assert (=> d!1399310 m!5291609))

(declare-fun m!5291611 () Bool)

(assert (=> d!1399310 m!5291611))

(declare-fun m!5291613 () Bool)

(assert (=> b!4532528 m!5291613))

(declare-fun m!5291615 () Bool)

(assert (=> b!4532529 m!5291615))

(assert (=> b!4532120 d!1399310))

(declare-fun d!1399312 () Bool)

(declare-fun e!2824255 () Bool)

(assert (=> d!1399312 e!2824255))

(declare-fun res!1887931 () Bool)

(assert (=> d!1399312 (=> (not res!1887931) (not e!2824255))))

(declare-fun lt!1708096 () ListLongMap!3007)

(assert (=> d!1399312 (= res!1887931 (contains!13481 lt!1708096 (_1!28880 lt!1707605)))))

(declare-fun lt!1708095 () List!50837)

(assert (=> d!1399312 (= lt!1708096 (ListLongMap!3008 lt!1708095))))

(declare-fun lt!1708094 () Unit!97092)

(declare-fun lt!1708097 () Unit!97092)

(assert (=> d!1399312 (= lt!1708094 lt!1708097)))

(assert (=> d!1399312 (= (getValueByKey!1129 lt!1708095 (_1!28880 lt!1707605)) (Some!11170 (_2!28880 lt!1707605)))))

(assert (=> d!1399312 (= lt!1708097 (lemmaContainsTupThenGetReturnValue!706 lt!1708095 (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))

(assert (=> d!1399312 (= lt!1708095 (insertStrictlySorted!426 (toList!4375 lt!1707617) (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))

(assert (=> d!1399312 (= (+!1580 lt!1707617 lt!1707605) lt!1708096)))

(declare-fun b!4532530 () Bool)

(declare-fun res!1887930 () Bool)

(assert (=> b!4532530 (=> (not res!1887930) (not e!2824255))))

(assert (=> b!4532530 (= res!1887930 (= (getValueByKey!1129 (toList!4375 lt!1708096) (_1!28880 lt!1707605)) (Some!11170 (_2!28880 lt!1707605))))))

(declare-fun b!4532531 () Bool)

(assert (=> b!4532531 (= e!2824255 (contains!13480 (toList!4375 lt!1708096) lt!1707605))))

(assert (= (and d!1399312 res!1887931) b!4532530))

(assert (= (and b!4532530 res!1887930) b!4532531))

(declare-fun m!5291617 () Bool)

(assert (=> d!1399312 m!5291617))

(declare-fun m!5291619 () Bool)

(assert (=> d!1399312 m!5291619))

(declare-fun m!5291621 () Bool)

(assert (=> d!1399312 m!5291621))

(declare-fun m!5291623 () Bool)

(assert (=> d!1399312 m!5291623))

(declare-fun m!5291625 () Bool)

(assert (=> b!4532530 m!5291625))

(declare-fun m!5291627 () Bool)

(assert (=> b!4532531 m!5291627))

(assert (=> b!4532120 d!1399312))

(declare-fun d!1399314 () Bool)

(assert (=> d!1399314 (= (eq!641 lt!1707611 lt!1707608) (= (content!8411 (toList!4376 lt!1707611)) (content!8411 (toList!4376 lt!1707608))))))

(declare-fun bs!868333 () Bool)

(assert (= bs!868333 d!1399314))

(assert (=> bs!868333 m!5290979))

(assert (=> bs!868333 m!5290975))

(assert (=> b!4532126 d!1399314))

(declare-fun d!1399316 () Bool)

(declare-fun lt!1708098 () Bool)

(assert (=> d!1399316 (= lt!1708098 (select (content!8413 (t!357799 (toList!4375 lm!1477))) lt!1707625))))

(declare-fun e!2824256 () Bool)

(assert (=> d!1399316 (= lt!1708098 e!2824256)))

(declare-fun res!1887933 () Bool)

(assert (=> d!1399316 (=> (not res!1887933) (not e!2824256))))

(assert (=> d!1399316 (= res!1887933 ((_ is Cons!50713) (t!357799 (toList!4375 lm!1477))))))

(assert (=> d!1399316 (= (contains!13480 (t!357799 (toList!4375 lm!1477)) lt!1707625) lt!1708098)))

(declare-fun b!4532532 () Bool)

(declare-fun e!2824257 () Bool)

(assert (=> b!4532532 (= e!2824256 e!2824257)))

(declare-fun res!1887932 () Bool)

(assert (=> b!4532532 (=> res!1887932 e!2824257)))

(assert (=> b!4532532 (= res!1887932 (= (h!56584 (t!357799 (toList!4375 lm!1477))) lt!1707625))))

(declare-fun b!4532533 () Bool)

(assert (=> b!4532533 (= e!2824257 (contains!13480 (t!357799 (t!357799 (toList!4375 lm!1477))) lt!1707625))))

(assert (= (and d!1399316 res!1887933) b!4532532))

(assert (= (and b!4532532 (not res!1887932)) b!4532533))

(declare-fun m!5291629 () Bool)

(assert (=> d!1399316 m!5291629))

(declare-fun m!5291631 () Bool)

(assert (=> d!1399316 m!5291631))

(declare-fun m!5291633 () Bool)

(assert (=> b!4532533 m!5291633))

(assert (=> b!4532127 d!1399316))

(declare-fun d!1399318 () Bool)

(declare-fun e!2824270 () Bool)

(assert (=> d!1399318 e!2824270))

(declare-fun res!1887944 () Bool)

(assert (=> d!1399318 (=> res!1887944 e!2824270)))

(declare-fun e!2824269 () Bool)

(assert (=> d!1399318 (= res!1887944 e!2824269)))

(declare-fun res!1887943 () Bool)

(assert (=> d!1399318 (=> (not res!1887943) (not e!2824269))))

(declare-fun lt!1708101 () Option!11167)

(declare-fun isEmpty!28723 (Option!11167) Bool)

(assert (=> d!1399318 (= res!1887943 (isEmpty!28723 lt!1708101))))

(declare-fun e!2824272 () Option!11167)

(assert (=> d!1399318 (= lt!1708101 e!2824272)))

(declare-fun c!773937 () Bool)

(assert (=> d!1399318 (= c!773937 (and ((_ is Cons!50712) (_2!28880 lt!1707605)) (= (_1!28879 (h!56583 (_2!28880 lt!1707605))) key!3287)))))

(assert (=> d!1399318 (noDuplicateKeys!1184 (_2!28880 lt!1707605))))

(assert (=> d!1399318 (= (getPair!200 (_2!28880 lt!1707605) key!3287) lt!1708101)))

(declare-fun b!4532550 () Bool)

(declare-fun e!2824268 () Bool)

(assert (=> b!4532550 (= e!2824270 e!2824268)))

(declare-fun res!1887945 () Bool)

(assert (=> b!4532550 (=> (not res!1887945) (not e!2824268))))

(declare-fun isDefined!8454 (Option!11167) Bool)

(assert (=> b!4532550 (= res!1887945 (isDefined!8454 lt!1708101))))

(declare-fun b!4532551 () Bool)

(declare-fun res!1887942 () Bool)

(assert (=> b!4532551 (=> (not res!1887942) (not e!2824268))))

(assert (=> b!4532551 (= res!1887942 (= (_1!28879 (get!16648 lt!1708101)) key!3287))))

(declare-fun b!4532552 () Bool)

(assert (=> b!4532552 (= e!2824269 (not (containsKey!1840 (_2!28880 lt!1707605) key!3287)))))

(declare-fun b!4532553 () Bool)

(declare-fun contains!13485 (List!50836 tuple2!51170) Bool)

(assert (=> b!4532553 (= e!2824268 (contains!13485 (_2!28880 lt!1707605) (get!16648 lt!1708101)))))

(declare-fun b!4532554 () Bool)

(assert (=> b!4532554 (= e!2824272 (Some!11166 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun b!4532555 () Bool)

(declare-fun e!2824271 () Option!11167)

(assert (=> b!4532555 (= e!2824271 None!11166)))

(declare-fun b!4532556 () Bool)

(assert (=> b!4532556 (= e!2824272 e!2824271)))

(declare-fun c!773936 () Bool)

(assert (=> b!4532556 (= c!773936 ((_ is Cons!50712) (_2!28880 lt!1707605)))))

(declare-fun b!4532557 () Bool)

(assert (=> b!4532557 (= e!2824271 (getPair!200 (t!357798 (_2!28880 lt!1707605)) key!3287))))

(assert (= (and d!1399318 c!773937) b!4532554))

(assert (= (and d!1399318 (not c!773937)) b!4532556))

(assert (= (and b!4532556 c!773936) b!4532557))

(assert (= (and b!4532556 (not c!773936)) b!4532555))

(assert (= (and d!1399318 res!1887943) b!4532552))

(assert (= (and d!1399318 (not res!1887944)) b!4532550))

(assert (= (and b!4532550 res!1887945) b!4532551))

(assert (= (and b!4532551 res!1887942) b!4532553))

(assert (=> b!4532552 m!5290673))

(declare-fun m!5291635 () Bool)

(assert (=> b!4532550 m!5291635))

(declare-fun m!5291637 () Bool)

(assert (=> d!1399318 m!5291637))

(assert (=> d!1399318 m!5290767))

(declare-fun m!5291639 () Bool)

(assert (=> b!4532553 m!5291639))

(assert (=> b!4532553 m!5291639))

(declare-fun m!5291641 () Bool)

(assert (=> b!4532553 m!5291641))

(assert (=> b!4532551 m!5291639))

(declare-fun m!5291643 () Bool)

(assert (=> b!4532557 m!5291643))

(assert (=> b!4532128 d!1399318))

(declare-fun d!1399320 () Bool)

(assert (=> d!1399320 (dynLambda!21195 lambda!174636 (h!56584 (toList!4375 lm!1477)))))

(declare-fun lt!1708102 () Unit!97092)

(assert (=> d!1399320 (= lt!1708102 (choose!29769 (toList!4375 lm!1477) lambda!174636 (h!56584 (toList!4375 lm!1477))))))

(declare-fun e!2824273 () Bool)

(assert (=> d!1399320 e!2824273))

(declare-fun res!1887946 () Bool)

(assert (=> d!1399320 (=> (not res!1887946) (not e!2824273))))

(assert (=> d!1399320 (= res!1887946 (forall!10315 (toList!4375 lm!1477) lambda!174636))))

(assert (=> d!1399320 (= (forallContained!2572 (toList!4375 lm!1477) lambda!174636 (h!56584 (toList!4375 lm!1477))) lt!1708102)))

(declare-fun b!4532558 () Bool)

(assert (=> b!4532558 (= e!2824273 (contains!13480 (toList!4375 lm!1477) (h!56584 (toList!4375 lm!1477))))))

(assert (= (and d!1399320 res!1887946) b!4532558))

(declare-fun b_lambda!156779 () Bool)

(assert (=> (not b_lambda!156779) (not d!1399320)))

(declare-fun m!5291645 () Bool)

(assert (=> d!1399320 m!5291645))

(declare-fun m!5291647 () Bool)

(assert (=> d!1399320 m!5291647))

(declare-fun m!5291649 () Bool)

(assert (=> d!1399320 m!5291649))

(declare-fun m!5291651 () Bool)

(assert (=> b!4532558 m!5291651))

(assert (=> b!4532128 d!1399320))

(declare-fun d!1399322 () Bool)

(declare-fun dynLambda!21197 (Int tuple2!51170) Bool)

(assert (=> d!1399322 (dynLambda!21197 lambda!174637 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604))))))

(declare-fun lt!1708105 () Unit!97092)

(declare-fun choose!29771 (List!50836 Int tuple2!51170) Unit!97092)

(assert (=> d!1399322 (= lt!1708105 (choose!29771 (_2!28880 (h!56584 (toList!4375 lm!1477))) lambda!174637 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))))))

(declare-fun e!2824276 () Bool)

(assert (=> d!1399322 e!2824276))

(declare-fun res!1887949 () Bool)

(assert (=> d!1399322 (=> (not res!1887949) (not e!2824276))))

(assert (=> d!1399322 (= res!1887949 (forall!10317 (_2!28880 (h!56584 (toList!4375 lm!1477))) lambda!174637))))

(assert (=> d!1399322 (= (forallContained!2573 (_2!28880 (h!56584 (toList!4375 lm!1477))) lambda!174637 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))) lt!1708105)))

(declare-fun b!4532561 () Bool)

(assert (=> b!4532561 (= e!2824276 (contains!13485 (_2!28880 (h!56584 (toList!4375 lm!1477))) (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))))))

(assert (= (and d!1399322 res!1887949) b!4532561))

(declare-fun b_lambda!156781 () Bool)

(assert (=> (not b_lambda!156781) (not d!1399322)))

(declare-fun m!5291653 () Bool)

(assert (=> d!1399322 m!5291653))

(declare-fun m!5291655 () Bool)

(assert (=> d!1399322 m!5291655))

(declare-fun m!5291657 () Bool)

(assert (=> d!1399322 m!5291657))

(declare-fun m!5291659 () Bool)

(assert (=> b!4532561 m!5291659))

(assert (=> b!4532128 d!1399322))

(declare-fun d!1399324 () Bool)

(assert (=> d!1399324 (= (get!16648 lt!1707604) (v!44826 lt!1707604))))

(assert (=> b!4532128 d!1399324))

(declare-fun d!1399326 () Bool)

(declare-fun res!1887950 () Bool)

(declare-fun e!2824277 () Bool)

(assert (=> d!1399326 (=> res!1887950 e!2824277)))

(assert (=> d!1399326 (= res!1887950 (not ((_ is Cons!50712) (_2!28880 lt!1707605))))))

(assert (=> d!1399326 (= (noDuplicateKeys!1184 (_2!28880 lt!1707605)) e!2824277)))

(declare-fun b!4532562 () Bool)

(declare-fun e!2824278 () Bool)

(assert (=> b!4532562 (= e!2824277 e!2824278)))

(declare-fun res!1887951 () Bool)

(assert (=> b!4532562 (=> (not res!1887951) (not e!2824278))))

(assert (=> b!4532562 (= res!1887951 (not (containsKey!1840 (t!357798 (_2!28880 lt!1707605)) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4532563 () Bool)

(assert (=> b!4532563 (= e!2824278 (noDuplicateKeys!1184 (t!357798 (_2!28880 lt!1707605))))))

(assert (= (and d!1399326 (not res!1887950)) b!4532562))

(assert (= (and b!4532562 res!1887951) b!4532563))

(declare-fun m!5291661 () Bool)

(assert (=> b!4532562 m!5291661))

(declare-fun m!5291663 () Bool)

(assert (=> b!4532563 m!5291663))

(assert (=> b!4532107 d!1399326))

(declare-fun d!1399328 () Bool)

(assert (=> d!1399328 (dynLambda!21195 lambda!174635 (h!56584 (toList!4375 lm!1477)))))

(declare-fun lt!1708106 () Unit!97092)

(assert (=> d!1399328 (= lt!1708106 (choose!29769 (toList!4375 lm!1477) lambda!174635 (h!56584 (toList!4375 lm!1477))))))

(declare-fun e!2824279 () Bool)

(assert (=> d!1399328 e!2824279))

(declare-fun res!1887952 () Bool)

(assert (=> d!1399328 (=> (not res!1887952) (not e!2824279))))

(assert (=> d!1399328 (= res!1887952 (forall!10315 (toList!4375 lm!1477) lambda!174635))))

(assert (=> d!1399328 (= (forallContained!2572 (toList!4375 lm!1477) lambda!174635 (h!56584 (toList!4375 lm!1477))) lt!1708106)))

(declare-fun b!4532564 () Bool)

(assert (=> b!4532564 (= e!2824279 (contains!13480 (toList!4375 lm!1477) (h!56584 (toList!4375 lm!1477))))))

(assert (= (and d!1399328 res!1887952) b!4532564))

(declare-fun b_lambda!156783 () Bool)

(assert (=> (not b_lambda!156783) (not d!1399328)))

(assert (=> d!1399328 m!5290871))

(declare-fun m!5291665 () Bool)

(assert (=> d!1399328 m!5291665))

(assert (=> d!1399328 m!5290725))

(assert (=> b!4532564 m!5291651))

(assert (=> b!4532107 d!1399328))

(declare-fun d!1399330 () Bool)

(declare-fun res!1887953 () Bool)

(declare-fun e!2824280 () Bool)

(assert (=> d!1399330 (=> res!1887953 e!2824280)))

(assert (=> d!1399330 (= res!1887953 (and ((_ is Cons!50712) lt!1707613) (= (_1!28879 (h!56583 lt!1707613)) key!3287)))))

(assert (=> d!1399330 (= (containsKey!1840 lt!1707613 key!3287) e!2824280)))

(declare-fun b!4532565 () Bool)

(declare-fun e!2824281 () Bool)

(assert (=> b!4532565 (= e!2824280 e!2824281)))

(declare-fun res!1887954 () Bool)

(assert (=> b!4532565 (=> (not res!1887954) (not e!2824281))))

(assert (=> b!4532565 (= res!1887954 ((_ is Cons!50712) lt!1707613))))

(declare-fun b!4532566 () Bool)

(assert (=> b!4532566 (= e!2824281 (containsKey!1840 (t!357798 lt!1707613) key!3287))))

(assert (= (and d!1399330 (not res!1887953)) b!4532565))

(assert (= (and b!4532565 res!1887954) b!4532566))

(declare-fun m!5291667 () Bool)

(assert (=> b!4532566 m!5291667))

(assert (=> b!4532124 d!1399330))

(declare-fun d!1399332 () Bool)

(assert (=> d!1399332 (= (apply!11921 lt!1707598 hash!344) (get!16650 (getValueByKey!1129 (toList!4375 lt!1707598) hash!344)))))

(declare-fun bs!868334 () Bool)

(assert (= bs!868334 d!1399332))

(assert (=> bs!868334 m!5291395))

(assert (=> bs!868334 m!5291395))

(declare-fun m!5291669 () Bool)

(assert (=> bs!868334 m!5291669))

(assert (=> b!4532125 d!1399332))

(declare-fun b!4532571 () Bool)

(declare-fun e!2824284 () Bool)

(declare-fun tp!1338439 () Bool)

(assert (=> b!4532571 (= e!2824284 (and tp_is_empty!28013 tp_is_empty!28015 tp!1338439))))

(assert (=> b!4532112 (= tp!1338427 e!2824284)))

(assert (= (and b!4532112 ((_ is Cons!50712) (t!357798 newBucket!178))) b!4532571))

(declare-fun b!4532576 () Bool)

(declare-fun e!2824287 () Bool)

(declare-fun tp!1338444 () Bool)

(declare-fun tp!1338445 () Bool)

(assert (=> b!4532576 (= e!2824287 (and tp!1338444 tp!1338445))))

(assert (=> b!4532136 (= tp!1338426 e!2824287)))

(assert (= (and b!4532136 ((_ is Cons!50713) (toList!4375 lm!1477))) b!4532576))

(declare-fun b_lambda!156785 () Bool)

(assert (= b_lambda!156755 (or start!449480 b_lambda!156785)))

(declare-fun bs!868335 () Bool)

(declare-fun d!1399334 () Bool)

(assert (= bs!868335 (and d!1399334 start!449480)))

(assert (=> bs!868335 (= (dynLambda!21195 lambda!174635 (h!56584 (toList!4375 lm!1477))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lm!1477)))))))

(declare-fun m!5291671 () Bool)

(assert (=> bs!868335 m!5291671))

(assert (=> b!4532214 d!1399334))

(declare-fun b_lambda!156787 () Bool)

(assert (= b_lambda!156781 (or b!4532128 b_lambda!156787)))

(declare-fun bs!868336 () Bool)

(declare-fun d!1399336 () Bool)

(assert (= bs!868336 (and d!1399336 b!4532128)))

(assert (=> bs!868336 (= (dynLambda!21197 lambda!174637 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))) (= (hash!2877 hashF!1107 (_1!28879 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604))))) (_1!28880 (h!56584 (toList!4375 lm!1477)))))))

(declare-fun m!5291673 () Bool)

(assert (=> bs!868336 m!5291673))

(assert (=> d!1399322 d!1399336))

(declare-fun b_lambda!156789 () Bool)

(assert (= b_lambda!156783 (or start!449480 b_lambda!156789)))

(assert (=> d!1399328 d!1399334))

(declare-fun b_lambda!156791 () Bool)

(assert (= b_lambda!156777 (or start!449480 b_lambda!156791)))

(declare-fun bs!868337 () Bool)

(declare-fun d!1399338 () Bool)

(assert (= bs!868337 (and d!1399338 start!449480)))

(assert (=> bs!868337 (= (dynLambda!21195 lambda!174635 lt!1707625) (noDuplicateKeys!1184 (_2!28880 lt!1707625)))))

(declare-fun m!5291675 () Bool)

(assert (=> bs!868337 m!5291675))

(assert (=> d!1399296 d!1399338))

(declare-fun b_lambda!156793 () Bool)

(assert (= b_lambda!156779 (or b!4532128 b_lambda!156793)))

(declare-fun bs!868338 () Bool)

(declare-fun d!1399340 () Bool)

(assert (= bs!868338 (and d!1399340 b!4532128)))

(assert (=> bs!868338 (= (dynLambda!21195 lambda!174636 (h!56584 (toList!4375 lm!1477))) (allKeysSameHash!1038 (_2!28880 (h!56584 (toList!4375 lm!1477))) (_1!28880 (h!56584 (toList!4375 lm!1477))) hashF!1107))))

(declare-fun m!5291677 () Bool)

(assert (=> bs!868338 m!5291677))

(assert (=> d!1399320 d!1399340))

(check-sat (not d!1399258) (not d!1399290) (not d!1399090) (not d!1399282) (not d!1399300) (not b!4532264) (not b!4532519) (not d!1399260) (not b!4532266) (not b!4532531) (not b!4532472) (not b!4532518) (not b!4532429) (not b!4532552) (not d!1399302) (not b!4532426) (not d!1399332) (not b!4532205) (not d!1399310) (not d!1399174) (not b!4532481) (not d!1399278) (not d!1399182) (not b!4532445) (not b!4532550) (not b_lambda!156785) (not b_lambda!156789) (not d!1399292) (not b!4532174) (not b_lambda!156787) (not b_lambda!156791) (not d!1399304) (not b!4532449) (not b!4532508) (not d!1399306) (not b!4532563) (not d!1399122) (not b!4532561) (not b!4532507) (not b!4532466) (not bs!868338) (not b!4532484) (not bm!315948) (not b!4532564) (not b!4532176) (not d!1399320) (not d!1399296) (not bm!315942) (not b!4532490) (not b!4532566) (not b!4532571) (not b!4532247) (not bm!315949) tp_is_empty!28015 (not bm!315915) (not b!4532215) (not b!4532248) (not b!4532461) (not b!4532478) (not d!1399314) (not d!1399286) (not b!4532513) (not b!4532479) (not d!1399328) (not b!4532447) (not b!4532148) (not b!4532448) (not b!4532463) (not d!1399092) (not d!1399298) (not b!4532553) (not b!4532177) (not b!4532533) (not d!1399316) (not b!4532530) (not b!4532562) (not bm!315951) (not d!1399176) (not d!1399140) (not d!1399266) (not b!4532520) (not b!4532178) (not b!4532522) (not b!4532471) tp_is_empty!28013 (not d!1399308) (not b!4532451) (not b!4532516) (not b!4532515) (not bm!315945) (not b!4532524) (not d!1399172) (not d!1399312) (not bm!315947) (not d!1399098) (not b!4532510) (not b!4532529) (not bs!868335) (not b!4532511) (not b!4532273) (not b!4532509) (not d!1399154) (not d!1399272) (not bm!315952) (not b!4532180) (not bm!315950) (not b!4532430) (not d!1399262) (not d!1399288) (not b!4532506) (not b!4532265) (not d!1399256) (not b!4532504) (not b_lambda!156793) (not d!1399322) (not b!4532528) (not d!1399114) (not b!4532452) (not b!4532493) (not d!1399318) (not b!4532427) (not bm!315943) (not bs!868336) (not b!4532558) (not d!1399094) (not b!4532557) (not d!1399096) (not d!1399160) (not b!4532453) (not bm!315946) (not b!4532477) (not bm!315944) (not b!4532464) (not d!1399158) (not d!1399274) (not b!4532526) (not b!4532173) (not b!4532255) (not b!4532175) (not d!1399276) (not d!1399148) (not b!4532467) (not b!4532576) (not b!4532468) (not b!4532551) (not d!1399294) (not bs!868337) (not d!1399280) (not b!4532517) (not d!1399178) (not b!4532469) (not d!1399144) (not d!1399264) (not d!1399104) (not d!1399112))
(check-sat)
(get-model)

(declare-fun d!1399480 () Bool)

(declare-fun res!1888089 () Bool)

(declare-fun e!2824463 () Bool)

(assert (=> d!1399480 (=> res!1888089 e!2824463)))

(assert (=> d!1399480 (= res!1888089 ((_ is Nil!50712) (ite c!773914 (toList!4376 lt!1707628) (_2!28880 lt!1707605))))))

(assert (=> d!1399480 (= (forall!10317 (ite c!773914 (toList!4376 lt!1707628) (_2!28880 lt!1707605)) (ite c!773914 lambda!174756 lambda!174758)) e!2824463)))

(declare-fun b!4532856 () Bool)

(declare-fun e!2824464 () Bool)

(assert (=> b!4532856 (= e!2824463 e!2824464)))

(declare-fun res!1888090 () Bool)

(assert (=> b!4532856 (=> (not res!1888090) (not e!2824464))))

(assert (=> b!4532856 (= res!1888090 (dynLambda!21197 (ite c!773914 lambda!174756 lambda!174758) (h!56583 (ite c!773914 (toList!4376 lt!1707628) (_2!28880 lt!1707605)))))))

(declare-fun b!4532857 () Bool)

(assert (=> b!4532857 (= e!2824464 (forall!10317 (t!357798 (ite c!773914 (toList!4376 lt!1707628) (_2!28880 lt!1707605))) (ite c!773914 lambda!174756 lambda!174758)))))

(assert (= (and d!1399480 (not res!1888089)) b!4532856))

(assert (= (and b!4532856 res!1888090) b!4532857))

(declare-fun b_lambda!156817 () Bool)

(assert (=> (not b_lambda!156817) (not b!4532856)))

(declare-fun m!5292113 () Bool)

(assert (=> b!4532856 m!5292113))

(declare-fun m!5292115 () Bool)

(assert (=> b!4532857 m!5292115))

(assert (=> bm!315947 d!1399480))

(declare-fun d!1399482 () Bool)

(assert (=> d!1399482 (= (isEmpty!28720 (toList!4375 lm!1477)) ((_ is Nil!50713) (toList!4375 lm!1477)))))

(assert (=> d!1399092 d!1399482))

(declare-fun d!1399484 () Bool)

(declare-fun e!2824466 () Bool)

(assert (=> d!1399484 e!2824466))

(declare-fun res!1888091 () Bool)

(assert (=> d!1399484 (=> res!1888091 e!2824466)))

(declare-fun lt!1708289 () Bool)

(assert (=> d!1399484 (= res!1888091 (not lt!1708289))))

(declare-fun lt!1708292 () Bool)

(assert (=> d!1399484 (= lt!1708289 lt!1708292)))

(declare-fun lt!1708291 () Unit!97092)

(declare-fun e!2824465 () Unit!97092)

(assert (=> d!1399484 (= lt!1708291 e!2824465)))

(declare-fun c!774008 () Bool)

(assert (=> d!1399484 (= c!774008 lt!1708292)))

(assert (=> d!1399484 (= lt!1708292 (containsKey!1844 (toList!4375 lm!1477) (hash!2877 hashF!1107 key!3287)))))

(assert (=> d!1399484 (= (contains!13481 lm!1477 (hash!2877 hashF!1107 key!3287)) lt!1708289)))

(declare-fun b!4532858 () Bool)

(declare-fun lt!1708290 () Unit!97092)

(assert (=> b!4532858 (= e!2824465 lt!1708290)))

(assert (=> b!4532858 (= lt!1708290 (lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (toList!4375 lm!1477) (hash!2877 hashF!1107 key!3287)))))

(assert (=> b!4532858 (isDefined!8452 (getValueByKey!1129 (toList!4375 lm!1477) (hash!2877 hashF!1107 key!3287)))))

(declare-fun b!4532859 () Bool)

(declare-fun Unit!97196 () Unit!97092)

(assert (=> b!4532859 (= e!2824465 Unit!97196)))

(declare-fun b!4532860 () Bool)

(assert (=> b!4532860 (= e!2824466 (isDefined!8452 (getValueByKey!1129 (toList!4375 lm!1477) (hash!2877 hashF!1107 key!3287))))))

(assert (= (and d!1399484 c!774008) b!4532858))

(assert (= (and d!1399484 (not c!774008)) b!4532859))

(assert (= (and d!1399484 (not res!1888091)) b!4532860))

(assert (=> d!1399484 m!5290701))

(declare-fun m!5292117 () Bool)

(assert (=> d!1399484 m!5292117))

(assert (=> b!4532858 m!5290701))

(declare-fun m!5292119 () Bool)

(assert (=> b!4532858 m!5292119))

(assert (=> b!4532858 m!5290701))

(declare-fun m!5292121 () Bool)

(assert (=> b!4532858 m!5292121))

(assert (=> b!4532858 m!5292121))

(declare-fun m!5292123 () Bool)

(assert (=> b!4532858 m!5292123))

(assert (=> b!4532860 m!5290701))

(assert (=> b!4532860 m!5292121))

(assert (=> b!4532860 m!5292121))

(assert (=> b!4532860 m!5292123))

(assert (=> d!1399286 d!1399484))

(assert (=> d!1399286 d!1399282))

(declare-fun d!1399486 () Bool)

(assert (=> d!1399486 (contains!13481 lm!1477 (hash!2877 hashF!1107 key!3287))))

(assert (=> d!1399486 true))

(declare-fun _$27!1263 () Unit!97092)

(assert (=> d!1399486 (= (choose!29767 lm!1477 key!3287 hashF!1107) _$27!1263)))

(declare-fun bs!868666 () Bool)

(assert (= bs!868666 d!1399486))

(assert (=> bs!868666 m!5290701))

(assert (=> bs!868666 m!5290701))

(assert (=> bs!868666 m!5291509))

(assert (=> d!1399286 d!1399486))

(declare-fun d!1399488 () Bool)

(declare-fun res!1888092 () Bool)

(declare-fun e!2824467 () Bool)

(assert (=> d!1399488 (=> res!1888092 e!2824467)))

(assert (=> d!1399488 (= res!1888092 ((_ is Nil!50713) (toList!4375 lm!1477)))))

(assert (=> d!1399488 (= (forall!10315 (toList!4375 lm!1477) lambda!174770) e!2824467)))

(declare-fun b!4532861 () Bool)

(declare-fun e!2824468 () Bool)

(assert (=> b!4532861 (= e!2824467 e!2824468)))

(declare-fun res!1888093 () Bool)

(assert (=> b!4532861 (=> (not res!1888093) (not e!2824468))))

(assert (=> b!4532861 (= res!1888093 (dynLambda!21195 lambda!174770 (h!56584 (toList!4375 lm!1477))))))

(declare-fun b!4532862 () Bool)

(assert (=> b!4532862 (= e!2824468 (forall!10315 (t!357799 (toList!4375 lm!1477)) lambda!174770))))

(assert (= (and d!1399488 (not res!1888092)) b!4532861))

(assert (= (and b!4532861 res!1888093) b!4532862))

(declare-fun b_lambda!156819 () Bool)

(assert (=> (not b_lambda!156819) (not b!4532861)))

(declare-fun m!5292125 () Bool)

(assert (=> b!4532861 m!5292125))

(declare-fun m!5292127 () Bool)

(assert (=> b!4532862 m!5292127))

(assert (=> d!1399286 d!1399488))

(declare-fun d!1399490 () Bool)

(declare-fun res!1888100 () Bool)

(declare-fun e!2824475 () Bool)

(assert (=> d!1399490 (=> res!1888100 e!2824475)))

(assert (=> d!1399490 (= res!1888100 (and ((_ is Cons!50712) (toList!4376 lt!1707612)) (= (_1!28879 (h!56583 (toList!4376 lt!1707612))) key!3287)))))

(assert (=> d!1399490 (= (containsKey!1843 (toList!4376 lt!1707612) key!3287) e!2824475)))

(declare-fun b!4532869 () Bool)

(declare-fun e!2824476 () Bool)

(assert (=> b!4532869 (= e!2824475 e!2824476)))

(declare-fun res!1888101 () Bool)

(assert (=> b!4532869 (=> (not res!1888101) (not e!2824476))))

(assert (=> b!4532869 (= res!1888101 ((_ is Cons!50712) (toList!4376 lt!1707612)))))

(declare-fun b!4532870 () Bool)

(assert (=> b!4532870 (= e!2824476 (containsKey!1843 (t!357798 (toList!4376 lt!1707612)) key!3287))))

(assert (= (and d!1399490 (not res!1888100)) b!4532869))

(assert (= (and b!4532869 res!1888101) b!4532870))

(declare-fun m!5292167 () Bool)

(assert (=> b!4532870 m!5292167))

(assert (=> b!4532522 d!1399490))

(declare-fun d!1399498 () Bool)

(assert (=> d!1399498 (containsKey!1843 (toList!4376 lt!1707612) key!3287)))

(declare-fun lt!1708304 () Unit!97092)

(declare-fun choose!29779 (List!50836 K!12100) Unit!97092)

(assert (=> d!1399498 (= lt!1708304 (choose!29779 (toList!4376 lt!1707612) key!3287))))

(assert (=> d!1399498 (invariantList!1035 (toList!4376 lt!1707612))))

(assert (=> d!1399498 (= (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1707612) key!3287) lt!1708304)))

(declare-fun bs!868668 () Bool)

(assert (= bs!868668 d!1399498))

(assert (=> bs!868668 m!5291577))

(declare-fun m!5292175 () Bool)

(assert (=> bs!868668 m!5292175))

(declare-fun m!5292177 () Bool)

(assert (=> bs!868668 m!5292177))

(assert (=> b!4532522 d!1399498))

(declare-fun d!1399504 () Bool)

(declare-fun c!774014 () Bool)

(assert (=> d!1399504 (= c!774014 ((_ is Nil!50712) (toList!4376 lt!1707596)))))

(declare-fun e!2824489 () (InoxSet tuple2!51170))

(assert (=> d!1399504 (= (content!8411 (toList!4376 lt!1707596)) e!2824489)))

(declare-fun b!4532888 () Bool)

(assert (=> b!4532888 (= e!2824489 ((as const (Array tuple2!51170 Bool)) false))))

(declare-fun b!4532889 () Bool)

(assert (=> b!4532889 (= e!2824489 ((_ map or) (store ((as const (Array tuple2!51170 Bool)) false) (h!56583 (toList!4376 lt!1707596)) true) (content!8411 (t!357798 (toList!4376 lt!1707596)))))))

(assert (= (and d!1399504 c!774014) b!4532888))

(assert (= (and d!1399504 (not c!774014)) b!4532889))

(declare-fun m!5292197 () Bool)

(assert (=> b!4532889 m!5292197))

(declare-fun m!5292199 () Bool)

(assert (=> b!4532889 m!5292199))

(assert (=> d!1399178 d!1399504))

(declare-fun d!1399508 () Bool)

(declare-fun c!774015 () Bool)

(assert (=> d!1399508 (= c!774015 ((_ is Nil!50712) (toList!4376 lt!1707626)))))

(declare-fun e!2824490 () (InoxSet tuple2!51170))

(assert (=> d!1399508 (= (content!8411 (toList!4376 lt!1707626)) e!2824490)))

(declare-fun b!4532890 () Bool)

(assert (=> b!4532890 (= e!2824490 ((as const (Array tuple2!51170 Bool)) false))))

(declare-fun b!4532891 () Bool)

(assert (=> b!4532891 (= e!2824490 ((_ map or) (store ((as const (Array tuple2!51170 Bool)) false) (h!56583 (toList!4376 lt!1707626)) true) (content!8411 (t!357798 (toList!4376 lt!1707626)))))))

(assert (= (and d!1399508 c!774015) b!4532890))

(assert (= (and d!1399508 (not c!774015)) b!4532891))

(declare-fun m!5292201 () Bool)

(assert (=> b!4532891 m!5292201))

(declare-fun m!5292203 () Bool)

(assert (=> b!4532891 m!5292203))

(assert (=> d!1399178 d!1399508))

(declare-fun d!1399510 () Bool)

(declare-fun noDuplicatedKeys!273 (List!50836) Bool)

(assert (=> d!1399510 (= (invariantList!1035 (toList!4376 lt!1707721)) (noDuplicatedKeys!273 (toList!4376 lt!1707721)))))

(declare-fun bs!868669 () Bool)

(assert (= bs!868669 d!1399510))

(declare-fun m!5292205 () Bool)

(assert (=> bs!868669 m!5292205))

(assert (=> d!1399098 d!1399510))

(declare-fun d!1399512 () Bool)

(declare-fun res!1888109 () Bool)

(declare-fun e!2824491 () Bool)

(assert (=> d!1399512 (=> res!1888109 e!2824491)))

(assert (=> d!1399512 (= res!1888109 ((_ is Nil!50713) (toList!4375 lm!1477)))))

(assert (=> d!1399512 (= (forall!10315 (toList!4375 lm!1477) lambda!174681) e!2824491)))

(declare-fun b!4532892 () Bool)

(declare-fun e!2824492 () Bool)

(assert (=> b!4532892 (= e!2824491 e!2824492)))

(declare-fun res!1888110 () Bool)

(assert (=> b!4532892 (=> (not res!1888110) (not e!2824492))))

(assert (=> b!4532892 (= res!1888110 (dynLambda!21195 lambda!174681 (h!56584 (toList!4375 lm!1477))))))

(declare-fun b!4532893 () Bool)

(assert (=> b!4532893 (= e!2824492 (forall!10315 (t!357799 (toList!4375 lm!1477)) lambda!174681))))

(assert (= (and d!1399512 (not res!1888109)) b!4532892))

(assert (= (and b!4532892 res!1888110) b!4532893))

(declare-fun b_lambda!156823 () Bool)

(assert (=> (not b_lambda!156823) (not b!4532892)))

(declare-fun m!5292207 () Bool)

(assert (=> b!4532892 m!5292207))

(declare-fun m!5292209 () Bool)

(assert (=> b!4532893 m!5292209))

(assert (=> d!1399098 d!1399512))

(declare-fun b!4532901 () Bool)

(assert (=> b!4532901 true))

(declare-fun d!1399514 () Bool)

(declare-fun e!2824495 () Bool)

(assert (=> d!1399514 e!2824495))

(declare-fun res!1888119 () Bool)

(assert (=> d!1399514 (=> (not res!1888119) (not e!2824495))))

(declare-fun lt!1708307 () List!50839)

(declare-fun noDuplicate!758 (List!50839) Bool)

(assert (=> d!1399514 (= res!1888119 (noDuplicate!758 lt!1708307))))

(assert (=> d!1399514 (= lt!1708307 (getKeysList!483 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))

(assert (=> d!1399514 (= (keys!17636 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) lt!1708307)))

(declare-fun b!4532900 () Bool)

(declare-fun res!1888118 () Bool)

(assert (=> b!4532900 (=> (not res!1888118) (not e!2824495))))

(declare-fun length!372 (List!50839) Int)

(declare-fun length!373 (List!50836) Int)

(assert (=> b!4532900 (= res!1888118 (= (length!372 lt!1708307) (length!373 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))))

(declare-fun res!1888117 () Bool)

(assert (=> b!4532901 (=> (not res!1888117) (not e!2824495))))

(declare-fun lambda!174827 () Int)

(declare-fun forall!10319 (List!50839 Int) Bool)

(assert (=> b!4532901 (= res!1888117 (forall!10319 lt!1708307 lambda!174827))))

(declare-fun b!4532902 () Bool)

(declare-fun lambda!174828 () Int)

(declare-fun map!11161 (List!50836 Int) List!50839)

(assert (=> b!4532902 (= e!2824495 (= (content!8412 lt!1708307) (content!8412 (map!11161 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) lambda!174828))))))

(assert (= (and d!1399514 res!1888119) b!4532900))

(assert (= (and b!4532900 res!1888118) b!4532901))

(assert (= (and b!4532901 res!1888117) b!4532902))

(declare-fun m!5292211 () Bool)

(assert (=> d!1399514 m!5292211))

(assert (=> d!1399514 m!5291563))

(declare-fun m!5292213 () Bool)

(assert (=> b!4532900 m!5292213))

(declare-fun m!5292215 () Bool)

(assert (=> b!4532900 m!5292215))

(declare-fun m!5292217 () Bool)

(assert (=> b!4532901 m!5292217))

(declare-fun m!5292219 () Bool)

(assert (=> b!4532902 m!5292219))

(declare-fun m!5292221 () Bool)

(assert (=> b!4532902 m!5292221))

(assert (=> b!4532902 m!5292221))

(declare-fun m!5292223 () Bool)

(assert (=> b!4532902 m!5292223))

(assert (=> b!4532508 d!1399514))

(declare-fun d!1399516 () Bool)

(declare-fun res!1888120 () Bool)

(declare-fun e!2824496 () Bool)

(assert (=> d!1399516 (=> res!1888120 e!2824496)))

(assert (=> d!1399516 (= res!1888120 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1399516 (= (forall!10317 (_2!28880 lt!1707605) lambda!174767) e!2824496)))

(declare-fun b!4532905 () Bool)

(declare-fun e!2824497 () Bool)

(assert (=> b!4532905 (= e!2824496 e!2824497)))

(declare-fun res!1888121 () Bool)

(assert (=> b!4532905 (=> (not res!1888121) (not e!2824497))))

(assert (=> b!4532905 (= res!1888121 (dynLambda!21197 lambda!174767 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun b!4532906 () Bool)

(assert (=> b!4532906 (= e!2824497 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174767))))

(assert (= (and d!1399516 (not res!1888120)) b!4532905))

(assert (= (and b!4532905 res!1888121) b!4532906))

(declare-fun b_lambda!156825 () Bool)

(assert (=> (not b_lambda!156825) (not b!4532905)))

(declare-fun m!5292225 () Bool)

(assert (=> b!4532905 m!5292225))

(declare-fun m!5292227 () Bool)

(assert (=> b!4532906 m!5292227))

(assert (=> d!1399278 d!1399516))

(assert (=> d!1399278 d!1399326))

(declare-fun d!1399518 () Bool)

(declare-fun c!774016 () Bool)

(assert (=> d!1399518 (= c!774016 ((_ is Nil!50712) (toList!4376 lt!1707607)))))

(declare-fun e!2824498 () (InoxSet tuple2!51170))

(assert (=> d!1399518 (= (content!8411 (toList!4376 lt!1707607)) e!2824498)))

(declare-fun b!4532907 () Bool)

(assert (=> b!4532907 (= e!2824498 ((as const (Array tuple2!51170 Bool)) false))))

(declare-fun b!4532908 () Bool)

(assert (=> b!4532908 (= e!2824498 ((_ map or) (store ((as const (Array tuple2!51170 Bool)) false) (h!56583 (toList!4376 lt!1707607)) true) (content!8411 (t!357798 (toList!4376 lt!1707607)))))))

(assert (= (and d!1399518 c!774016) b!4532907))

(assert (= (and d!1399518 (not c!774016)) b!4532908))

(declare-fun m!5292229 () Bool)

(assert (=> b!4532908 m!5292229))

(declare-fun m!5292231 () Bool)

(assert (=> b!4532908 m!5292231))

(assert (=> d!1399262 d!1399518))

(assert (=> d!1399262 d!1399504))

(declare-fun d!1399520 () Bool)

(declare-fun res!1888122 () Bool)

(declare-fun e!2824499 () Bool)

(assert (=> d!1399520 (=> res!1888122 e!2824499)))

(assert (=> d!1399520 (= res!1888122 (and ((_ is Cons!50712) (t!357798 lt!1707613)) (= (_1!28879 (h!56583 (t!357798 lt!1707613))) key!3287)))))

(assert (=> d!1399520 (= (containsKey!1840 (t!357798 lt!1707613) key!3287) e!2824499)))

(declare-fun b!4532909 () Bool)

(declare-fun e!2824500 () Bool)

(assert (=> b!4532909 (= e!2824499 e!2824500)))

(declare-fun res!1888123 () Bool)

(assert (=> b!4532909 (=> (not res!1888123) (not e!2824500))))

(assert (=> b!4532909 (= res!1888123 ((_ is Cons!50712) (t!357798 lt!1707613)))))

(declare-fun b!4532910 () Bool)

(assert (=> b!4532910 (= e!2824500 (containsKey!1840 (t!357798 (t!357798 lt!1707613)) key!3287))))

(assert (= (and d!1399520 (not res!1888122)) b!4532909))

(assert (= (and b!4532909 res!1888123) b!4532910))

(declare-fun m!5292233 () Bool)

(assert (=> b!4532910 m!5292233))

(assert (=> b!4532566 d!1399520))

(declare-fun d!1399522 () Bool)

(declare-fun e!2824502 () Bool)

(assert (=> d!1399522 e!2824502))

(declare-fun res!1888124 () Bool)

(assert (=> d!1399522 (=> res!1888124 e!2824502)))

(declare-fun lt!1708308 () Bool)

(assert (=> d!1399522 (= res!1888124 (not lt!1708308))))

(declare-fun lt!1708311 () Bool)

(assert (=> d!1399522 (= lt!1708308 lt!1708311)))

(declare-fun lt!1708310 () Unit!97092)

(declare-fun e!2824501 () Unit!97092)

(assert (=> d!1399522 (= lt!1708310 e!2824501)))

(declare-fun c!774017 () Bool)

(assert (=> d!1399522 (= c!774017 lt!1708311)))

(assert (=> d!1399522 (= lt!1708311 (containsKey!1844 (toList!4375 lt!1707800) (_1!28880 lt!1707605)))))

(assert (=> d!1399522 (= (contains!13481 lt!1707800 (_1!28880 lt!1707605)) lt!1708308)))

(declare-fun b!4532911 () Bool)

(declare-fun lt!1708309 () Unit!97092)

(assert (=> b!4532911 (= e!2824501 lt!1708309)))

(assert (=> b!4532911 (= lt!1708309 (lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (toList!4375 lt!1707800) (_1!28880 lt!1707605)))))

(assert (=> b!4532911 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1707800) (_1!28880 lt!1707605)))))

(declare-fun b!4532912 () Bool)

(declare-fun Unit!97208 () Unit!97092)

(assert (=> b!4532912 (= e!2824501 Unit!97208)))

(declare-fun b!4532913 () Bool)

(assert (=> b!4532913 (= e!2824502 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1707800) (_1!28880 lt!1707605))))))

(assert (= (and d!1399522 c!774017) b!4532911))

(assert (= (and d!1399522 (not c!774017)) b!4532912))

(assert (= (and d!1399522 (not res!1888124)) b!4532913))

(declare-fun m!5292235 () Bool)

(assert (=> d!1399522 m!5292235))

(declare-fun m!5292237 () Bool)

(assert (=> b!4532911 m!5292237))

(assert (=> b!4532911 m!5291045))

(assert (=> b!4532911 m!5291045))

(declare-fun m!5292239 () Bool)

(assert (=> b!4532911 m!5292239))

(assert (=> b!4532913 m!5291045))

(assert (=> b!4532913 m!5291045))

(assert (=> b!4532913 m!5292239))

(assert (=> d!1399158 d!1399522))

(declare-fun b!4532923 () Bool)

(declare-fun e!2824507 () Option!11171)

(declare-fun e!2824508 () Option!11171)

(assert (=> b!4532923 (= e!2824507 e!2824508)))

(declare-fun c!774023 () Bool)

(assert (=> b!4532923 (= c!774023 (and ((_ is Cons!50713) lt!1707799) (not (= (_1!28880 (h!56584 lt!1707799)) (_1!28880 lt!1707605)))))))

(declare-fun b!4532925 () Bool)

(assert (=> b!4532925 (= e!2824508 None!11170)))

(declare-fun b!4532924 () Bool)

(assert (=> b!4532924 (= e!2824508 (getValueByKey!1129 (t!357799 lt!1707799) (_1!28880 lt!1707605)))))

(declare-fun b!4532922 () Bool)

(assert (=> b!4532922 (= e!2824507 (Some!11170 (_2!28880 (h!56584 lt!1707799))))))

(declare-fun d!1399524 () Bool)

(declare-fun c!774022 () Bool)

(assert (=> d!1399524 (= c!774022 (and ((_ is Cons!50713) lt!1707799) (= (_1!28880 (h!56584 lt!1707799)) (_1!28880 lt!1707605))))))

(assert (=> d!1399524 (= (getValueByKey!1129 lt!1707799 (_1!28880 lt!1707605)) e!2824507)))

(assert (= (and d!1399524 c!774022) b!4532922))

(assert (= (and d!1399524 (not c!774022)) b!4532923))

(assert (= (and b!4532923 c!774023) b!4532924))

(assert (= (and b!4532923 (not c!774023)) b!4532925))

(declare-fun m!5292241 () Bool)

(assert (=> b!4532924 m!5292241))

(assert (=> d!1399158 d!1399524))

(declare-fun d!1399526 () Bool)

(assert (=> d!1399526 (= (getValueByKey!1129 lt!1707799 (_1!28880 lt!1707605)) (Some!11170 (_2!28880 lt!1707605)))))

(declare-fun lt!1708314 () Unit!97092)

(declare-fun choose!29780 (List!50837 (_ BitVec 64) List!50836) Unit!97092)

(assert (=> d!1399526 (= lt!1708314 (choose!29780 lt!1707799 (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))

(declare-fun e!2824511 () Bool)

(assert (=> d!1399526 e!2824511))

(declare-fun res!1888129 () Bool)

(assert (=> d!1399526 (=> (not res!1888129) (not e!2824511))))

(assert (=> d!1399526 (= res!1888129 (isStrictlySorted!449 lt!1707799))))

(assert (=> d!1399526 (= (lemmaContainsTupThenGetReturnValue!706 lt!1707799 (_1!28880 lt!1707605) (_2!28880 lt!1707605)) lt!1708314)))

(declare-fun b!4532930 () Bool)

(declare-fun res!1888130 () Bool)

(assert (=> b!4532930 (=> (not res!1888130) (not e!2824511))))

(assert (=> b!4532930 (= res!1888130 (containsKey!1844 lt!1707799 (_1!28880 lt!1707605)))))

(declare-fun b!4532931 () Bool)

(assert (=> b!4532931 (= e!2824511 (contains!13480 lt!1707799 (tuple2!51173 (_1!28880 lt!1707605) (_2!28880 lt!1707605))))))

(assert (= (and d!1399526 res!1888129) b!4532930))

(assert (= (and b!4532930 res!1888130) b!4532931))

(assert (=> d!1399526 m!5291039))

(declare-fun m!5292243 () Bool)

(assert (=> d!1399526 m!5292243))

(declare-fun m!5292245 () Bool)

(assert (=> d!1399526 m!5292245))

(declare-fun m!5292247 () Bool)

(assert (=> b!4532930 m!5292247))

(declare-fun m!5292249 () Bool)

(assert (=> b!4532931 m!5292249))

(assert (=> d!1399158 d!1399526))

(declare-fun bm!315986 () Bool)

(declare-fun call!315993 () List!50837)

(declare-fun call!315991 () List!50837)

(assert (=> bm!315986 (= call!315993 call!315991)))

(declare-fun c!774032 () Bool)

(declare-fun e!2824527 () List!50837)

(declare-fun c!774033 () Bool)

(declare-fun b!4532952 () Bool)

(assert (=> b!4532952 (= e!2824527 (ite c!774032 (t!357799 (toList!4375 lt!1707598)) (ite c!774033 (Cons!50713 (h!56584 (toList!4375 lt!1707598)) (t!357799 (toList!4375 lt!1707598))) Nil!50713)))))

(declare-fun b!4532953 () Bool)

(declare-fun e!2824528 () Bool)

(declare-fun lt!1708317 () List!50837)

(assert (=> b!4532953 (= e!2824528 (contains!13480 lt!1708317 (tuple2!51173 (_1!28880 lt!1707605) (_2!28880 lt!1707605))))))

(declare-fun b!4532954 () Bool)

(assert (=> b!4532954 (= c!774033 (and ((_ is Cons!50713) (toList!4375 lt!1707598)) (bvsgt (_1!28880 (h!56584 (toList!4375 lt!1707598))) (_1!28880 lt!1707605))))))

(declare-fun e!2824524 () List!50837)

(declare-fun e!2824526 () List!50837)

(assert (=> b!4532954 (= e!2824524 e!2824526)))

(declare-fun b!4532956 () Bool)

(declare-fun e!2824525 () List!50837)

(assert (=> b!4532956 (= e!2824525 e!2824524)))

(assert (=> b!4532956 (= c!774032 (and ((_ is Cons!50713) (toList!4375 lt!1707598)) (= (_1!28880 (h!56584 (toList!4375 lt!1707598))) (_1!28880 lt!1707605))))))

(declare-fun b!4532957 () Bool)

(assert (=> b!4532957 (= e!2824526 call!315993)))

(declare-fun b!4532958 () Bool)

(assert (=> b!4532958 (= e!2824524 call!315991)))

(declare-fun bm!315987 () Bool)

(declare-fun call!315992 () List!50837)

(declare-fun c!774034 () Bool)

(declare-fun $colon$colon!956 (List!50837 tuple2!51172) List!50837)

(assert (=> bm!315987 (= call!315992 ($colon$colon!956 e!2824527 (ite c!774034 (h!56584 (toList!4375 lt!1707598)) (tuple2!51173 (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))))

(declare-fun c!774035 () Bool)

(assert (=> bm!315987 (= c!774035 c!774034)))

(declare-fun b!4532959 () Bool)

(assert (=> b!4532959 (= e!2824527 (insertStrictlySorted!426 (t!357799 (toList!4375 lt!1707598)) (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))

(declare-fun b!4532960 () Bool)

(assert (=> b!4532960 (= e!2824525 call!315992)))

(declare-fun b!4532961 () Bool)

(assert (=> b!4532961 (= e!2824526 call!315993)))

(declare-fun bm!315988 () Bool)

(assert (=> bm!315988 (= call!315991 call!315992)))

(declare-fun b!4532955 () Bool)

(declare-fun res!1888135 () Bool)

(assert (=> b!4532955 (=> (not res!1888135) (not e!2824528))))

(assert (=> b!4532955 (= res!1888135 (containsKey!1844 lt!1708317 (_1!28880 lt!1707605)))))

(declare-fun d!1399528 () Bool)

(assert (=> d!1399528 e!2824528))

(declare-fun res!1888136 () Bool)

(assert (=> d!1399528 (=> (not res!1888136) (not e!2824528))))

(assert (=> d!1399528 (= res!1888136 (isStrictlySorted!449 lt!1708317))))

(assert (=> d!1399528 (= lt!1708317 e!2824525)))

(assert (=> d!1399528 (= c!774034 (and ((_ is Cons!50713) (toList!4375 lt!1707598)) (bvslt (_1!28880 (h!56584 (toList!4375 lt!1707598))) (_1!28880 lt!1707605))))))

(assert (=> d!1399528 (isStrictlySorted!449 (toList!4375 lt!1707598))))

(assert (=> d!1399528 (= (insertStrictlySorted!426 (toList!4375 lt!1707598) (_1!28880 lt!1707605) (_2!28880 lt!1707605)) lt!1708317)))

(assert (= (and d!1399528 c!774034) b!4532960))

(assert (= (and d!1399528 (not c!774034)) b!4532956))

(assert (= (and b!4532956 c!774032) b!4532958))

(assert (= (and b!4532956 (not c!774032)) b!4532954))

(assert (= (and b!4532954 c!774033) b!4532957))

(assert (= (and b!4532954 (not c!774033)) b!4532961))

(assert (= (or b!4532957 b!4532961) bm!315986))

(assert (= (or b!4532958 bm!315986) bm!315988))

(assert (= (or b!4532960 bm!315988) bm!315987))

(assert (= (and bm!315987 c!774035) b!4532959))

(assert (= (and bm!315987 (not c!774035)) b!4532952))

(assert (= (and d!1399528 res!1888136) b!4532955))

(assert (= (and b!4532955 res!1888135) b!4532953))

(declare-fun m!5292251 () Bool)

(assert (=> d!1399528 m!5292251))

(declare-fun m!5292253 () Bool)

(assert (=> d!1399528 m!5292253))

(declare-fun m!5292255 () Bool)

(assert (=> b!4532959 m!5292255))

(declare-fun m!5292257 () Bool)

(assert (=> bm!315987 m!5292257))

(declare-fun m!5292259 () Bool)

(assert (=> b!4532953 m!5292259))

(declare-fun m!5292261 () Bool)

(assert (=> b!4532955 m!5292261))

(assert (=> d!1399158 d!1399528))

(declare-fun d!1399530 () Bool)

(declare-fun lt!1708320 () Bool)

(assert (=> d!1399530 (= lt!1708320 (select (content!8412 (keys!17636 lt!1707611)) key!3287))))

(declare-fun e!2824533 () Bool)

(assert (=> d!1399530 (= lt!1708320 e!2824533)))

(declare-fun res!1888142 () Bool)

(assert (=> d!1399530 (=> (not res!1888142) (not e!2824533))))

(assert (=> d!1399530 (= res!1888142 ((_ is Cons!50715) (keys!17636 lt!1707611)))))

(assert (=> d!1399530 (= (contains!13483 (keys!17636 lt!1707611) key!3287) lt!1708320)))

(declare-fun b!4532966 () Bool)

(declare-fun e!2824534 () Bool)

(assert (=> b!4532966 (= e!2824533 e!2824534)))

(declare-fun res!1888141 () Bool)

(assert (=> b!4532966 (=> res!1888141 e!2824534)))

(assert (=> b!4532966 (= res!1888141 (= (h!56588 (keys!17636 lt!1707611)) key!3287))))

(declare-fun b!4532967 () Bool)

(assert (=> b!4532967 (= e!2824534 (contains!13483 (t!357801 (keys!17636 lt!1707611)) key!3287))))

(assert (= (and d!1399530 res!1888142) b!4532966))

(assert (= (and b!4532966 (not res!1888141)) b!4532967))

(assert (=> d!1399530 m!5290793))

(declare-fun m!5292263 () Bool)

(assert (=> d!1399530 m!5292263))

(declare-fun m!5292265 () Bool)

(assert (=> d!1399530 m!5292265))

(declare-fun m!5292267 () Bool)

(assert (=> b!4532967 m!5292267))

(assert (=> b!4532177 d!1399530))

(declare-fun bs!868670 () Bool)

(declare-fun b!4532969 () Bool)

(assert (= bs!868670 (and b!4532969 b!4532901)))

(declare-fun lambda!174829 () Int)

(assert (=> bs!868670 (= (= (toList!4376 lt!1707611) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174829 lambda!174827))))

(assert (=> b!4532969 true))

(declare-fun bs!868671 () Bool)

(declare-fun b!4532970 () Bool)

(assert (= bs!868671 (and b!4532970 b!4532902)))

(declare-fun lambda!174830 () Int)

(assert (=> bs!868671 (= lambda!174830 lambda!174828)))

(declare-fun d!1399532 () Bool)

(declare-fun e!2824535 () Bool)

(assert (=> d!1399532 e!2824535))

(declare-fun res!1888145 () Bool)

(assert (=> d!1399532 (=> (not res!1888145) (not e!2824535))))

(declare-fun lt!1708321 () List!50839)

(assert (=> d!1399532 (= res!1888145 (noDuplicate!758 lt!1708321))))

(assert (=> d!1399532 (= lt!1708321 (getKeysList!483 (toList!4376 lt!1707611)))))

(assert (=> d!1399532 (= (keys!17636 lt!1707611) lt!1708321)))

(declare-fun b!4532968 () Bool)

(declare-fun res!1888144 () Bool)

(assert (=> b!4532968 (=> (not res!1888144) (not e!2824535))))

(assert (=> b!4532968 (= res!1888144 (= (length!372 lt!1708321) (length!373 (toList!4376 lt!1707611))))))

(declare-fun res!1888143 () Bool)

(assert (=> b!4532969 (=> (not res!1888143) (not e!2824535))))

(assert (=> b!4532969 (= res!1888143 (forall!10319 lt!1708321 lambda!174829))))

(assert (=> b!4532970 (= e!2824535 (= (content!8412 lt!1708321) (content!8412 (map!11161 (toList!4376 lt!1707611) lambda!174830))))))

(assert (= (and d!1399532 res!1888145) b!4532968))

(assert (= (and b!4532968 res!1888144) b!4532969))

(assert (= (and b!4532969 res!1888143) b!4532970))

(declare-fun m!5292269 () Bool)

(assert (=> d!1399532 m!5292269))

(assert (=> d!1399532 m!5290803))

(declare-fun m!5292271 () Bool)

(assert (=> b!4532968 m!5292271))

(declare-fun m!5292273 () Bool)

(assert (=> b!4532968 m!5292273))

(declare-fun m!5292275 () Bool)

(assert (=> b!4532969 m!5292275))

(declare-fun m!5292277 () Bool)

(assert (=> b!4532970 m!5292277))

(declare-fun m!5292279 () Bool)

(assert (=> b!4532970 m!5292279))

(assert (=> b!4532970 m!5292279))

(declare-fun m!5292281 () Bool)

(assert (=> b!4532970 m!5292281))

(assert (=> b!4532177 d!1399532))

(declare-fun d!1399534 () Bool)

(declare-fun res!1888146 () Bool)

(declare-fun e!2824538 () Bool)

(assert (=> d!1399534 (=> res!1888146 e!2824538)))

(assert (=> d!1399534 (= res!1888146 (not ((_ is Cons!50712) (_2!28880 lt!1707625))))))

(assert (=> d!1399534 (= (noDuplicateKeys!1184 (_2!28880 lt!1707625)) e!2824538)))

(declare-fun b!4532975 () Bool)

(declare-fun e!2824539 () Bool)

(assert (=> b!4532975 (= e!2824538 e!2824539)))

(declare-fun res!1888147 () Bool)

(assert (=> b!4532975 (=> (not res!1888147) (not e!2824539))))

(assert (=> b!4532975 (= res!1888147 (not (containsKey!1840 (t!357798 (_2!28880 lt!1707625)) (_1!28879 (h!56583 (_2!28880 lt!1707625))))))))

(declare-fun b!4532976 () Bool)

(assert (=> b!4532976 (= e!2824539 (noDuplicateKeys!1184 (t!357798 (_2!28880 lt!1707625))))))

(assert (= (and d!1399534 (not res!1888146)) b!4532975))

(assert (= (and b!4532975 res!1888147) b!4532976))

(declare-fun m!5292283 () Bool)

(assert (=> b!4532975 m!5292283))

(declare-fun m!5292285 () Bool)

(assert (=> b!4532976 m!5292285))

(assert (=> bs!868337 d!1399534))

(declare-fun d!1399536 () Bool)

(declare-fun e!2824545 () Bool)

(assert (=> d!1399536 e!2824545))

(declare-fun res!1888148 () Bool)

(assert (=> d!1399536 (=> res!1888148 e!2824545)))

(declare-fun lt!1708338 () Bool)

(assert (=> d!1399536 (= res!1888148 (not lt!1708338))))

(declare-fun lt!1708341 () Bool)

(assert (=> d!1399536 (= lt!1708338 lt!1708341)))

(declare-fun lt!1708340 () Unit!97092)

(declare-fun e!2824544 () Unit!97092)

(assert (=> d!1399536 (= lt!1708340 e!2824544)))

(declare-fun c!774042 () Bool)

(assert (=> d!1399536 (= c!774042 lt!1708341)))

(assert (=> d!1399536 (= lt!1708341 (containsKey!1844 (toList!4375 lt!1707771) (_1!28880 lt!1707610)))))

(assert (=> d!1399536 (= (contains!13481 lt!1707771 (_1!28880 lt!1707610)) lt!1708338)))

(declare-fun b!4532985 () Bool)

(declare-fun lt!1708339 () Unit!97092)

(assert (=> b!4532985 (= e!2824544 lt!1708339)))

(assert (=> b!4532985 (= lt!1708339 (lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (toList!4375 lt!1707771) (_1!28880 lt!1707610)))))

(assert (=> b!4532985 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1707771) (_1!28880 lt!1707610)))))

(declare-fun b!4532986 () Bool)

(declare-fun Unit!97210 () Unit!97092)

(assert (=> b!4532986 (= e!2824544 Unit!97210)))

(declare-fun b!4532987 () Bool)

(assert (=> b!4532987 (= e!2824545 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1707771) (_1!28880 lt!1707610))))))

(assert (= (and d!1399536 c!774042) b!4532985))

(assert (= (and d!1399536 (not c!774042)) b!4532986))

(assert (= (and d!1399536 (not res!1888148)) b!4532987))

(declare-fun m!5292287 () Bool)

(assert (=> d!1399536 m!5292287))

(declare-fun m!5292289 () Bool)

(assert (=> b!4532985 m!5292289))

(assert (=> b!4532985 m!5290965))

(assert (=> b!4532985 m!5290965))

(declare-fun m!5292291 () Bool)

(assert (=> b!4532985 m!5292291))

(assert (=> b!4532987 m!5290965))

(assert (=> b!4532987 m!5290965))

(assert (=> b!4532987 m!5292291))

(assert (=> d!1399122 d!1399536))

(declare-fun b!4532989 () Bool)

(declare-fun e!2824546 () Option!11171)

(declare-fun e!2824547 () Option!11171)

(assert (=> b!4532989 (= e!2824546 e!2824547)))

(declare-fun c!774044 () Bool)

(assert (=> b!4532989 (= c!774044 (and ((_ is Cons!50713) lt!1707770) (not (= (_1!28880 (h!56584 lt!1707770)) (_1!28880 lt!1707610)))))))

(declare-fun b!4532991 () Bool)

(assert (=> b!4532991 (= e!2824547 None!11170)))

(declare-fun b!4532990 () Bool)

(assert (=> b!4532990 (= e!2824547 (getValueByKey!1129 (t!357799 lt!1707770) (_1!28880 lt!1707610)))))

(declare-fun b!4532988 () Bool)

(assert (=> b!4532988 (= e!2824546 (Some!11170 (_2!28880 (h!56584 lt!1707770))))))

(declare-fun d!1399538 () Bool)

(declare-fun c!774043 () Bool)

(assert (=> d!1399538 (= c!774043 (and ((_ is Cons!50713) lt!1707770) (= (_1!28880 (h!56584 lt!1707770)) (_1!28880 lt!1707610))))))

(assert (=> d!1399538 (= (getValueByKey!1129 lt!1707770 (_1!28880 lt!1707610)) e!2824546)))

(assert (= (and d!1399538 c!774043) b!4532988))

(assert (= (and d!1399538 (not c!774043)) b!4532989))

(assert (= (and b!4532989 c!774044) b!4532990))

(assert (= (and b!4532989 (not c!774044)) b!4532991))

(declare-fun m!5292293 () Bool)

(assert (=> b!4532990 m!5292293))

(assert (=> d!1399122 d!1399538))

(declare-fun d!1399540 () Bool)

(assert (=> d!1399540 (= (getValueByKey!1129 lt!1707770 (_1!28880 lt!1707610)) (Some!11170 (_2!28880 lt!1707610)))))

(declare-fun lt!1708342 () Unit!97092)

(assert (=> d!1399540 (= lt!1708342 (choose!29780 lt!1707770 (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))

(declare-fun e!2824548 () Bool)

(assert (=> d!1399540 e!2824548))

(declare-fun res!1888149 () Bool)

(assert (=> d!1399540 (=> (not res!1888149) (not e!2824548))))

(assert (=> d!1399540 (= res!1888149 (isStrictlySorted!449 lt!1707770))))

(assert (=> d!1399540 (= (lemmaContainsTupThenGetReturnValue!706 lt!1707770 (_1!28880 lt!1707610) (_2!28880 lt!1707610)) lt!1708342)))

(declare-fun b!4532992 () Bool)

(declare-fun res!1888150 () Bool)

(assert (=> b!4532992 (=> (not res!1888150) (not e!2824548))))

(assert (=> b!4532992 (= res!1888150 (containsKey!1844 lt!1707770 (_1!28880 lt!1707610)))))

(declare-fun b!4532993 () Bool)

(assert (=> b!4532993 (= e!2824548 (contains!13480 lt!1707770 (tuple2!51173 (_1!28880 lt!1707610) (_2!28880 lt!1707610))))))

(assert (= (and d!1399540 res!1888149) b!4532992))

(assert (= (and b!4532992 res!1888150) b!4532993))

(assert (=> d!1399540 m!5290959))

(declare-fun m!5292295 () Bool)

(assert (=> d!1399540 m!5292295))

(declare-fun m!5292297 () Bool)

(assert (=> d!1399540 m!5292297))

(declare-fun m!5292299 () Bool)

(assert (=> b!4532992 m!5292299))

(declare-fun m!5292301 () Bool)

(assert (=> b!4532993 m!5292301))

(assert (=> d!1399122 d!1399540))

(declare-fun bm!315993 () Bool)

(declare-fun call!316000 () List!50837)

(declare-fun call!315998 () List!50837)

(assert (=> bm!315993 (= call!316000 call!315998)))

(declare-fun e!2824556 () List!50837)

(declare-fun c!774050 () Bool)

(declare-fun c!774049 () Bool)

(declare-fun b!4533002 () Bool)

(assert (=> b!4533002 (= e!2824556 (ite c!774049 (t!357799 (toList!4375 lt!1707598)) (ite c!774050 (Cons!50713 (h!56584 (toList!4375 lt!1707598)) (t!357799 (toList!4375 lt!1707598))) Nil!50713)))))

(declare-fun b!4533003 () Bool)

(declare-fun e!2824557 () Bool)

(declare-fun lt!1708347 () List!50837)

(assert (=> b!4533003 (= e!2824557 (contains!13480 lt!1708347 (tuple2!51173 (_1!28880 lt!1707610) (_2!28880 lt!1707610))))))

(declare-fun b!4533004 () Bool)

(assert (=> b!4533004 (= c!774050 (and ((_ is Cons!50713) (toList!4375 lt!1707598)) (bvsgt (_1!28880 (h!56584 (toList!4375 lt!1707598))) (_1!28880 lt!1707610))))))

(declare-fun e!2824553 () List!50837)

(declare-fun e!2824555 () List!50837)

(assert (=> b!4533004 (= e!2824553 e!2824555)))

(declare-fun b!4533006 () Bool)

(declare-fun e!2824554 () List!50837)

(assert (=> b!4533006 (= e!2824554 e!2824553)))

(assert (=> b!4533006 (= c!774049 (and ((_ is Cons!50713) (toList!4375 lt!1707598)) (= (_1!28880 (h!56584 (toList!4375 lt!1707598))) (_1!28880 lt!1707610))))))

(declare-fun b!4533007 () Bool)

(assert (=> b!4533007 (= e!2824555 call!316000)))

(declare-fun b!4533008 () Bool)

(assert (=> b!4533008 (= e!2824553 call!315998)))

(declare-fun bm!315994 () Bool)

(declare-fun c!774051 () Bool)

(declare-fun call!315999 () List!50837)

(assert (=> bm!315994 (= call!315999 ($colon$colon!956 e!2824556 (ite c!774051 (h!56584 (toList!4375 lt!1707598)) (tuple2!51173 (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))))

(declare-fun c!774052 () Bool)

(assert (=> bm!315994 (= c!774052 c!774051)))

(declare-fun b!4533009 () Bool)

(assert (=> b!4533009 (= e!2824556 (insertStrictlySorted!426 (t!357799 (toList!4375 lt!1707598)) (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))

(declare-fun b!4533010 () Bool)

(assert (=> b!4533010 (= e!2824554 call!315999)))

(declare-fun b!4533011 () Bool)

(assert (=> b!4533011 (= e!2824555 call!316000)))

(declare-fun bm!315995 () Bool)

(assert (=> bm!315995 (= call!315998 call!315999)))

(declare-fun b!4533005 () Bool)

(declare-fun res!1888151 () Bool)

(assert (=> b!4533005 (=> (not res!1888151) (not e!2824557))))

(assert (=> b!4533005 (= res!1888151 (containsKey!1844 lt!1708347 (_1!28880 lt!1707610)))))

(declare-fun d!1399542 () Bool)

(assert (=> d!1399542 e!2824557))

(declare-fun res!1888152 () Bool)

(assert (=> d!1399542 (=> (not res!1888152) (not e!2824557))))

(assert (=> d!1399542 (= res!1888152 (isStrictlySorted!449 lt!1708347))))

(assert (=> d!1399542 (= lt!1708347 e!2824554)))

(assert (=> d!1399542 (= c!774051 (and ((_ is Cons!50713) (toList!4375 lt!1707598)) (bvslt (_1!28880 (h!56584 (toList!4375 lt!1707598))) (_1!28880 lt!1707610))))))

(assert (=> d!1399542 (isStrictlySorted!449 (toList!4375 lt!1707598))))

(assert (=> d!1399542 (= (insertStrictlySorted!426 (toList!4375 lt!1707598) (_1!28880 lt!1707610) (_2!28880 lt!1707610)) lt!1708347)))

(assert (= (and d!1399542 c!774051) b!4533010))

(assert (= (and d!1399542 (not c!774051)) b!4533006))

(assert (= (and b!4533006 c!774049) b!4533008))

(assert (= (and b!4533006 (not c!774049)) b!4533004))

(assert (= (and b!4533004 c!774050) b!4533007))

(assert (= (and b!4533004 (not c!774050)) b!4533011))

(assert (= (or b!4533007 b!4533011) bm!315993))

(assert (= (or b!4533008 bm!315993) bm!315995))

(assert (= (or b!4533010 bm!315995) bm!315994))

(assert (= (and bm!315994 c!774052) b!4533009))

(assert (= (and bm!315994 (not c!774052)) b!4533002))

(assert (= (and d!1399542 res!1888152) b!4533005))

(assert (= (and b!4533005 res!1888151) b!4533003))

(declare-fun m!5292303 () Bool)

(assert (=> d!1399542 m!5292303))

(assert (=> d!1399542 m!5292253))

(declare-fun m!5292305 () Bool)

(assert (=> b!4533009 m!5292305))

(declare-fun m!5292307 () Bool)

(assert (=> bm!315994 m!5292307))

(declare-fun m!5292309 () Bool)

(assert (=> b!4533003 m!5292309))

(declare-fun m!5292311 () Bool)

(assert (=> b!4533005 m!5292311))

(assert (=> d!1399122 d!1399542))

(declare-fun d!1399544 () Bool)

(declare-fun res!1888153 () Bool)

(declare-fun e!2824560 () Bool)

(assert (=> d!1399544 (=> res!1888153 e!2824560)))

(assert (=> d!1399544 (= res!1888153 ((_ is Nil!50712) (ite c!773910 (toList!4376 lt!1707600) (_2!28880 lt!1707605))))))

(assert (=> d!1399544 (= (forall!10317 (ite c!773910 (toList!4376 lt!1707600) (_2!28880 lt!1707605)) (ite c!773910 lambda!174752 lambda!174754)) e!2824560)))

(declare-fun b!4533016 () Bool)

(declare-fun e!2824561 () Bool)

(assert (=> b!4533016 (= e!2824560 e!2824561)))

(declare-fun res!1888154 () Bool)

(assert (=> b!4533016 (=> (not res!1888154) (not e!2824561))))

(assert (=> b!4533016 (= res!1888154 (dynLambda!21197 (ite c!773910 lambda!174752 lambda!174754) (h!56583 (ite c!773910 (toList!4376 lt!1707600) (_2!28880 lt!1707605)))))))

(declare-fun b!4533017 () Bool)

(assert (=> b!4533017 (= e!2824561 (forall!10317 (t!357798 (ite c!773910 (toList!4376 lt!1707600) (_2!28880 lt!1707605))) (ite c!773910 lambda!174752 lambda!174754)))))

(assert (= (and d!1399544 (not res!1888153)) b!4533016))

(assert (= (and b!4533016 res!1888154) b!4533017))

(declare-fun b_lambda!156827 () Bool)

(assert (=> (not b_lambda!156827) (not b!4533016)))

(declare-fun m!5292313 () Bool)

(assert (=> b!4533016 m!5292313))

(declare-fun m!5292315 () Bool)

(assert (=> b!4533017 m!5292315))

(assert (=> bm!315944 d!1399544))

(declare-fun d!1399546 () Bool)

(declare-fun isEmpty!28726 (Option!11170) Bool)

(assert (=> d!1399546 (= (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707611) key!3287)) (not (isEmpty!28726 (getValueByKey!1128 (toList!4376 lt!1707611) key!3287))))))

(declare-fun bs!868672 () Bool)

(assert (= bs!868672 d!1399546))

(assert (=> bs!868672 m!5290787))

(declare-fun m!5292317 () Bool)

(assert (=> bs!868672 m!5292317))

(assert (=> b!4532173 d!1399546))

(declare-fun b!4533043 () Bool)

(declare-fun e!2824573 () Option!11170)

(assert (=> b!4533043 (= e!2824573 None!11169)))

(declare-fun d!1399548 () Bool)

(declare-fun c!774063 () Bool)

(assert (=> d!1399548 (= c!774063 (and ((_ is Cons!50712) (toList!4376 lt!1707611)) (= (_1!28879 (h!56583 (toList!4376 lt!1707611))) key!3287)))))

(declare-fun e!2824572 () Option!11170)

(assert (=> d!1399548 (= (getValueByKey!1128 (toList!4376 lt!1707611) key!3287) e!2824572)))

(declare-fun b!4533040 () Bool)

(assert (=> b!4533040 (= e!2824572 (Some!11169 (_2!28879 (h!56583 (toList!4376 lt!1707611)))))))

(declare-fun b!4533042 () Bool)

(assert (=> b!4533042 (= e!2824573 (getValueByKey!1128 (t!357798 (toList!4376 lt!1707611)) key!3287))))

(declare-fun b!4533041 () Bool)

(assert (=> b!4533041 (= e!2824572 e!2824573)))

(declare-fun c!774064 () Bool)

(assert (=> b!4533041 (= c!774064 (and ((_ is Cons!50712) (toList!4376 lt!1707611)) (not (= (_1!28879 (h!56583 (toList!4376 lt!1707611))) key!3287))))))

(assert (= (and d!1399548 c!774063) b!4533040))

(assert (= (and d!1399548 (not c!774063)) b!4533041))

(assert (= (and b!4533041 c!774064) b!4533042))

(assert (= (and b!4533041 (not c!774064)) b!4533043))

(declare-fun m!5292319 () Bool)

(assert (=> b!4533042 m!5292319))

(assert (=> b!4532173 d!1399548))

(assert (=> b!4532493 d!1399294))

(declare-fun d!1399550 () Bool)

(declare-fun res!1888161 () Bool)

(declare-fun e!2824576 () Bool)

(assert (=> d!1399550 (=> res!1888161 e!2824576)))

(declare-fun e!2824575 () Bool)

(assert (=> d!1399550 (= res!1888161 e!2824575)))

(declare-fun res!1888163 () Bool)

(assert (=> d!1399550 (=> (not res!1888163) (not e!2824575))))

(assert (=> d!1399550 (= res!1888163 ((_ is Cons!50713) (t!357799 (toList!4375 lt!1707598))))))

(assert (=> d!1399550 (= (containsKeyBiggerList!164 (t!357799 (toList!4375 lt!1707598)) key!3287) e!2824576)))

(declare-fun b!4533044 () Bool)

(assert (=> b!4533044 (= e!2824575 (containsKey!1840 (_2!28880 (h!56584 (t!357799 (toList!4375 lt!1707598)))) key!3287))))

(declare-fun b!4533045 () Bool)

(declare-fun e!2824574 () Bool)

(assert (=> b!4533045 (= e!2824576 e!2824574)))

(declare-fun res!1888162 () Bool)

(assert (=> b!4533045 (=> (not res!1888162) (not e!2824574))))

(assert (=> b!4533045 (= res!1888162 ((_ is Cons!50713) (t!357799 (toList!4375 lt!1707598))))))

(declare-fun b!4533046 () Bool)

(assert (=> b!4533046 (= e!2824574 (containsKeyBiggerList!164 (t!357799 (t!357799 (toList!4375 lt!1707598))) key!3287))))

(assert (= (and d!1399550 res!1888163) b!4533044))

(assert (= (and d!1399550 (not res!1888161)) b!4533045))

(assert (= (and b!4533045 res!1888162) b!4533046))

(declare-fun m!5292321 () Bool)

(assert (=> b!4533044 m!5292321))

(declare-fun m!5292323 () Bool)

(assert (=> b!4533046 m!5292323))

(assert (=> b!4532466 d!1399550))

(declare-fun d!1399552 () Bool)

(assert (=> d!1399552 (dynLambda!21195 lambda!174635 (h!56584 (toList!4375 lm!1477)))))

(assert (=> d!1399552 true))

(declare-fun _$7!1906 () Unit!97092)

(assert (=> d!1399552 (= (choose!29769 (toList!4375 lm!1477) lambda!174635 (h!56584 (toList!4375 lm!1477))) _$7!1906)))

(declare-fun b_lambda!156829 () Bool)

(assert (=> (not b_lambda!156829) (not d!1399552)))

(declare-fun bs!868673 () Bool)

(assert (= bs!868673 d!1399552))

(assert (=> bs!868673 m!5290871))

(assert (=> d!1399328 d!1399552))

(assert (=> d!1399328 d!1399106))

(declare-fun b!4533047 () Bool)

(declare-fun e!2824577 () Bool)

(declare-fun e!2824579 () Bool)

(assert (=> b!4533047 (= e!2824577 e!2824579)))

(declare-fun res!1888165 () Bool)

(assert (=> b!4533047 (=> (not res!1888165) (not e!2824579))))

(assert (=> b!4533047 (= res!1888165 (isDefined!8451 (getValueByKey!1128 (toList!4376 (extractMap!1240 (toList!4375 lm!1477))) key!3287)))))

(declare-fun b!4533048 () Bool)

(declare-fun e!2824582 () List!50839)

(assert (=> b!4533048 (= e!2824582 (getKeysList!483 (toList!4376 (extractMap!1240 (toList!4375 lm!1477)))))))

(declare-fun b!4533049 () Bool)

(assert (=> b!4533049 (= e!2824582 (keys!17636 (extractMap!1240 (toList!4375 lm!1477))))))

(declare-fun b!4533050 () Bool)

(assert (=> b!4533050 (= e!2824579 (contains!13483 (keys!17636 (extractMap!1240 (toList!4375 lm!1477))) key!3287))))

(declare-fun b!4533051 () Bool)

(declare-fun e!2824581 () Bool)

(assert (=> b!4533051 (= e!2824581 (not (contains!13483 (keys!17636 (extractMap!1240 (toList!4375 lm!1477))) key!3287)))))

(declare-fun b!4533052 () Bool)

(declare-fun e!2824580 () Unit!97092)

(declare-fun lt!1708368 () Unit!97092)

(assert (=> b!4533052 (= e!2824580 lt!1708368)))

(declare-fun lt!1708369 () Unit!97092)

(assert (=> b!4533052 (= lt!1708369 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 (extractMap!1240 (toList!4375 lm!1477))) key!3287))))

(assert (=> b!4533052 (isDefined!8451 (getValueByKey!1128 (toList!4376 (extractMap!1240 (toList!4375 lm!1477))) key!3287))))

(declare-fun lt!1708366 () Unit!97092)

(assert (=> b!4533052 (= lt!1708366 lt!1708369)))

(assert (=> b!4533052 (= lt!1708368 (lemmaInListThenGetKeysListContains!479 (toList!4376 (extractMap!1240 (toList!4375 lm!1477))) key!3287))))

(declare-fun call!316009 () Bool)

(assert (=> b!4533052 call!316009))

(declare-fun b!4533053 () Bool)

(declare-fun e!2824578 () Unit!97092)

(assert (=> b!4533053 (= e!2824580 e!2824578)))

(declare-fun c!774066 () Bool)

(assert (=> b!4533053 (= c!774066 call!316009)))

(declare-fun b!4533054 () Bool)

(assert (=> b!4533054 false))

(declare-fun lt!1708364 () Unit!97092)

(declare-fun lt!1708367 () Unit!97092)

(assert (=> b!4533054 (= lt!1708364 lt!1708367)))

(assert (=> b!4533054 (containsKey!1843 (toList!4376 (extractMap!1240 (toList!4375 lm!1477))) key!3287)))

(assert (=> b!4533054 (= lt!1708367 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 (extractMap!1240 (toList!4375 lm!1477))) key!3287))))

(declare-fun Unit!97215 () Unit!97092)

(assert (=> b!4533054 (= e!2824578 Unit!97215)))

(declare-fun d!1399554 () Bool)

(assert (=> d!1399554 e!2824577))

(declare-fun res!1888166 () Bool)

(assert (=> d!1399554 (=> res!1888166 e!2824577)))

(assert (=> d!1399554 (= res!1888166 e!2824581)))

(declare-fun res!1888164 () Bool)

(assert (=> d!1399554 (=> (not res!1888164) (not e!2824581))))

(declare-fun lt!1708371 () Bool)

(assert (=> d!1399554 (= res!1888164 (not lt!1708371))))

(declare-fun lt!1708370 () Bool)

(assert (=> d!1399554 (= lt!1708371 lt!1708370)))

(declare-fun lt!1708365 () Unit!97092)

(assert (=> d!1399554 (= lt!1708365 e!2824580)))

(declare-fun c!774067 () Bool)

(assert (=> d!1399554 (= c!774067 lt!1708370)))

(assert (=> d!1399554 (= lt!1708370 (containsKey!1843 (toList!4376 (extractMap!1240 (toList!4375 lm!1477))) key!3287))))

(assert (=> d!1399554 (= (contains!13479 (extractMap!1240 (toList!4375 lm!1477)) key!3287) lt!1708371)))

(declare-fun b!4533055 () Bool)

(declare-fun Unit!97216 () Unit!97092)

(assert (=> b!4533055 (= e!2824578 Unit!97216)))

(declare-fun bm!316004 () Bool)

(assert (=> bm!316004 (= call!316009 (contains!13483 e!2824582 key!3287))))

(declare-fun c!774065 () Bool)

(assert (=> bm!316004 (= c!774065 c!774067)))

(assert (= (and d!1399554 c!774067) b!4533052))

(assert (= (and d!1399554 (not c!774067)) b!4533053))

(assert (= (and b!4533053 c!774066) b!4533054))

(assert (= (and b!4533053 (not c!774066)) b!4533055))

(assert (= (or b!4533052 b!4533053) bm!316004))

(assert (= (and bm!316004 c!774065) b!4533048))

(assert (= (and bm!316004 (not c!774065)) b!4533049))

(assert (= (and d!1399554 res!1888164) b!4533051))

(assert (= (and d!1399554 (not res!1888166)) b!4533047))

(assert (= (and b!4533047 res!1888165) b!4533050))

(declare-fun m!5292325 () Bool)

(assert (=> b!4533052 m!5292325))

(declare-fun m!5292327 () Bool)

(assert (=> b!4533052 m!5292327))

(assert (=> b!4533052 m!5292327))

(declare-fun m!5292329 () Bool)

(assert (=> b!4533052 m!5292329))

(declare-fun m!5292331 () Bool)

(assert (=> b!4533052 m!5292331))

(assert (=> b!4533050 m!5290709))

(declare-fun m!5292333 () Bool)

(assert (=> b!4533050 m!5292333))

(assert (=> b!4533050 m!5292333))

(declare-fun m!5292335 () Bool)

(assert (=> b!4533050 m!5292335))

(assert (=> b!4533049 m!5290709))

(assert (=> b!4533049 m!5292333))

(declare-fun m!5292337 () Bool)

(assert (=> bm!316004 m!5292337))

(assert (=> b!4533051 m!5290709))

(assert (=> b!4533051 m!5292333))

(assert (=> b!4533051 m!5292333))

(assert (=> b!4533051 m!5292335))

(declare-fun m!5292339 () Bool)

(assert (=> b!4533054 m!5292339))

(declare-fun m!5292341 () Bool)

(assert (=> b!4533054 m!5292341))

(assert (=> b!4533047 m!5292327))

(assert (=> b!4533047 m!5292327))

(assert (=> b!4533047 m!5292329))

(declare-fun m!5292343 () Bool)

(assert (=> b!4533048 m!5292343))

(assert (=> d!1399554 m!5292339))

(assert (=> d!1399114 d!1399554))

(assert (=> d!1399114 d!1399098))

(declare-fun d!1399556 () Bool)

(assert (=> d!1399556 (not (contains!13479 (extractMap!1240 (toList!4375 lm!1477)) key!3287))))

(assert (=> d!1399556 true))

(declare-fun _$26!404 () Unit!97092)

(assert (=> d!1399556 (= (choose!29756 lm!1477 key!3287 hashF!1107) _$26!404)))

(declare-fun bs!868674 () Bool)

(assert (= bs!868674 d!1399556))

(assert (=> bs!868674 m!5290709))

(assert (=> bs!868674 m!5290709))

(assert (=> bs!868674 m!5290901))

(assert (=> d!1399114 d!1399556))

(declare-fun d!1399562 () Bool)

(declare-fun res!1888172 () Bool)

(declare-fun e!2824594 () Bool)

(assert (=> d!1399562 (=> res!1888172 e!2824594)))

(assert (=> d!1399562 (= res!1888172 ((_ is Nil!50713) (toList!4375 lm!1477)))))

(assert (=> d!1399562 (= (forall!10315 (toList!4375 lm!1477) lambda!174691) e!2824594)))

(declare-fun b!4533077 () Bool)

(declare-fun e!2824595 () Bool)

(assert (=> b!4533077 (= e!2824594 e!2824595)))

(declare-fun res!1888173 () Bool)

(assert (=> b!4533077 (=> (not res!1888173) (not e!2824595))))

(assert (=> b!4533077 (= res!1888173 (dynLambda!21195 lambda!174691 (h!56584 (toList!4375 lm!1477))))))

(declare-fun b!4533078 () Bool)

(assert (=> b!4533078 (= e!2824595 (forall!10315 (t!357799 (toList!4375 lm!1477)) lambda!174691))))

(assert (= (and d!1399562 (not res!1888172)) b!4533077))

(assert (= (and b!4533077 res!1888173) b!4533078))

(declare-fun b_lambda!156833 () Bool)

(assert (=> (not b_lambda!156833) (not b!4533077)))

(declare-fun m!5292407 () Bool)

(assert (=> b!4533077 m!5292407))

(declare-fun m!5292409 () Bool)

(assert (=> b!4533078 m!5292409))

(assert (=> d!1399114 d!1399562))

(declare-fun d!1399564 () Bool)

(declare-fun c!774079 () Bool)

(assert (=> d!1399564 (= c!774079 ((_ is Nil!50715) (keys!17636 lt!1707612)))))

(declare-fun e!2824601 () (InoxSet K!12100))

(assert (=> d!1399564 (= (content!8412 (keys!17636 lt!1707612)) e!2824601)))

(declare-fun b!4533088 () Bool)

(assert (=> b!4533088 (= e!2824601 ((as const (Array K!12100 Bool)) false))))

(declare-fun b!4533089 () Bool)

(assert (=> b!4533089 (= e!2824601 ((_ map or) (store ((as const (Array K!12100 Bool)) false) (h!56588 (keys!17636 lt!1707612)) true) (content!8412 (t!357801 (keys!17636 lt!1707612)))))))

(assert (= (and d!1399564 c!774079) b!4533088))

(assert (= (and d!1399564 (not c!774079)) b!4533089))

(declare-fun m!5292411 () Bool)

(assert (=> b!4533089 m!5292411))

(declare-fun m!5292413 () Bool)

(assert (=> b!4533089 m!5292413))

(assert (=> b!4532264 d!1399564))

(declare-fun bs!868696 () Bool)

(declare-fun b!4533091 () Bool)

(assert (= bs!868696 (and b!4533091 b!4532901)))

(declare-fun lambda!174832 () Int)

(assert (=> bs!868696 (= (= (toList!4376 lt!1707612) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174832 lambda!174827))))

(declare-fun bs!868697 () Bool)

(assert (= bs!868697 (and b!4533091 b!4532969)))

(assert (=> bs!868697 (= (= (toList!4376 lt!1707612) (toList!4376 lt!1707611)) (= lambda!174832 lambda!174829))))

(assert (=> b!4533091 true))

(declare-fun bs!868700 () Bool)

(declare-fun b!4533092 () Bool)

(assert (= bs!868700 (and b!4533092 b!4532902)))

(declare-fun lambda!174833 () Int)

(assert (=> bs!868700 (= lambda!174833 lambda!174828)))

(declare-fun bs!868702 () Bool)

(assert (= bs!868702 (and b!4533092 b!4532970)))

(assert (=> bs!868702 (= lambda!174833 lambda!174830)))

(declare-fun d!1399566 () Bool)

(declare-fun e!2824602 () Bool)

(assert (=> d!1399566 e!2824602))

(declare-fun res!1888179 () Bool)

(assert (=> d!1399566 (=> (not res!1888179) (not e!2824602))))

(declare-fun lt!1708411 () List!50839)

(assert (=> d!1399566 (= res!1888179 (noDuplicate!758 lt!1708411))))

(assert (=> d!1399566 (= lt!1708411 (getKeysList!483 (toList!4376 lt!1707612)))))

(assert (=> d!1399566 (= (keys!17636 lt!1707612) lt!1708411)))

(declare-fun b!4533090 () Bool)

(declare-fun res!1888178 () Bool)

(assert (=> b!4533090 (=> (not res!1888178) (not e!2824602))))

(assert (=> b!4533090 (= res!1888178 (= (length!372 lt!1708411) (length!373 (toList!4376 lt!1707612))))))

(declare-fun res!1888177 () Bool)

(assert (=> b!4533091 (=> (not res!1888177) (not e!2824602))))

(assert (=> b!4533091 (= res!1888177 (forall!10319 lt!1708411 lambda!174832))))

(assert (=> b!4533092 (= e!2824602 (= (content!8412 lt!1708411) (content!8412 (map!11161 (toList!4376 lt!1707612) lambda!174833))))))

(assert (= (and d!1399566 res!1888179) b!4533090))

(assert (= (and b!4533090 res!1888178) b!4533091))

(assert (= (and b!4533091 res!1888177) b!4533092))

(declare-fun m!5292415 () Bool)

(assert (=> d!1399566 m!5292415))

(assert (=> d!1399566 m!5291581))

(declare-fun m!5292417 () Bool)

(assert (=> b!4533090 m!5292417))

(declare-fun m!5292419 () Bool)

(assert (=> b!4533090 m!5292419))

(declare-fun m!5292421 () Bool)

(assert (=> b!4533091 m!5292421))

(declare-fun m!5292423 () Bool)

(assert (=> b!4533092 m!5292423))

(declare-fun m!5292425 () Bool)

(assert (=> b!4533092 m!5292425))

(assert (=> b!4533092 m!5292425))

(declare-fun m!5292427 () Bool)

(assert (=> b!4533092 m!5292427))

(assert (=> b!4532264 d!1399566))

(declare-fun d!1399568 () Bool)

(declare-fun c!774080 () Bool)

(assert (=> d!1399568 (= c!774080 ((_ is Nil!50715) (keys!17636 lt!1707797)))))

(declare-fun e!2824603 () (InoxSet K!12100))

(assert (=> d!1399568 (= (content!8412 (keys!17636 lt!1707797)) e!2824603)))

(declare-fun b!4533093 () Bool)

(assert (=> b!4533093 (= e!2824603 ((as const (Array K!12100 Bool)) false))))

(declare-fun b!4533094 () Bool)

(assert (=> b!4533094 (= e!2824603 ((_ map or) (store ((as const (Array K!12100 Bool)) false) (h!56588 (keys!17636 lt!1707797)) true) (content!8412 (t!357801 (keys!17636 lt!1707797)))))))

(assert (= (and d!1399568 c!774080) b!4533093))

(assert (= (and d!1399568 (not c!774080)) b!4533094))

(declare-fun m!5292429 () Bool)

(assert (=> b!4533094 m!5292429))

(declare-fun m!5292431 () Bool)

(assert (=> b!4533094 m!5292431))

(assert (=> b!4532264 d!1399568))

(declare-fun bs!868710 () Bool)

(declare-fun b!4533096 () Bool)

(assert (= bs!868710 (and b!4533096 b!4532901)))

(declare-fun lambda!174835 () Int)

(assert (=> bs!868710 (= (= (toList!4376 lt!1707797) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174835 lambda!174827))))

(declare-fun bs!868713 () Bool)

(assert (= bs!868713 (and b!4533096 b!4532969)))

(assert (=> bs!868713 (= (= (toList!4376 lt!1707797) (toList!4376 lt!1707611)) (= lambda!174835 lambda!174829))))

(declare-fun bs!868715 () Bool)

(assert (= bs!868715 (and b!4533096 b!4533091)))

(assert (=> bs!868715 (= (= (toList!4376 lt!1707797) (toList!4376 lt!1707612)) (= lambda!174835 lambda!174832))))

(assert (=> b!4533096 true))

(declare-fun bs!868718 () Bool)

(declare-fun b!4533097 () Bool)

(assert (= bs!868718 (and b!4533097 b!4532902)))

(declare-fun lambda!174836 () Int)

(assert (=> bs!868718 (= lambda!174836 lambda!174828)))

(declare-fun bs!868720 () Bool)

(assert (= bs!868720 (and b!4533097 b!4532970)))

(assert (=> bs!868720 (= lambda!174836 lambda!174830)))

(declare-fun bs!868721 () Bool)

(assert (= bs!868721 (and b!4533097 b!4533092)))

(assert (=> bs!868721 (= lambda!174836 lambda!174833)))

(declare-fun d!1399570 () Bool)

(declare-fun e!2824604 () Bool)

(assert (=> d!1399570 e!2824604))

(declare-fun res!1888182 () Bool)

(assert (=> d!1399570 (=> (not res!1888182) (not e!2824604))))

(declare-fun lt!1708412 () List!50839)

(assert (=> d!1399570 (= res!1888182 (noDuplicate!758 lt!1708412))))

(assert (=> d!1399570 (= lt!1708412 (getKeysList!483 (toList!4376 lt!1707797)))))

(assert (=> d!1399570 (= (keys!17636 lt!1707797) lt!1708412)))

(declare-fun b!4533095 () Bool)

(declare-fun res!1888181 () Bool)

(assert (=> b!4533095 (=> (not res!1888181) (not e!2824604))))

(assert (=> b!4533095 (= res!1888181 (= (length!372 lt!1708412) (length!373 (toList!4376 lt!1707797))))))

(declare-fun res!1888180 () Bool)

(assert (=> b!4533096 (=> (not res!1888180) (not e!2824604))))

(assert (=> b!4533096 (= res!1888180 (forall!10319 lt!1708412 lambda!174835))))

(assert (=> b!4533097 (= e!2824604 (= (content!8412 lt!1708412) (content!8412 (map!11161 (toList!4376 lt!1707797) lambda!174836))))))

(assert (= (and d!1399570 res!1888182) b!4533095))

(assert (= (and b!4533095 res!1888181) b!4533096))

(assert (= (and b!4533096 res!1888180) b!4533097))

(declare-fun m!5292433 () Bool)

(assert (=> d!1399570 m!5292433))

(declare-fun m!5292435 () Bool)

(assert (=> d!1399570 m!5292435))

(declare-fun m!5292437 () Bool)

(assert (=> b!4533095 m!5292437))

(declare-fun m!5292439 () Bool)

(assert (=> b!4533095 m!5292439))

(declare-fun m!5292441 () Bool)

(assert (=> b!4533096 m!5292441))

(declare-fun m!5292443 () Bool)

(assert (=> b!4533097 m!5292443))

(declare-fun m!5292445 () Bool)

(assert (=> b!4533097 m!5292445))

(assert (=> b!4533097 m!5292445))

(declare-fun m!5292447 () Bool)

(assert (=> b!4533097 m!5292447))

(assert (=> b!4532264 d!1399570))

(declare-fun d!1399572 () Bool)

(assert (=> d!1399572 (= (get!16650 (getValueByKey!1129 (toList!4375 lm!1477) hash!344)) (v!44834 (getValueByKey!1129 (toList!4375 lm!1477) hash!344)))))

(assert (=> d!1399288 d!1399572))

(declare-fun b!4533099 () Bool)

(declare-fun e!2824605 () Option!11171)

(declare-fun e!2824606 () Option!11171)

(assert (=> b!4533099 (= e!2824605 e!2824606)))

(declare-fun c!774082 () Bool)

(assert (=> b!4533099 (= c!774082 (and ((_ is Cons!50713) (toList!4375 lm!1477)) (not (= (_1!28880 (h!56584 (toList!4375 lm!1477))) hash!344))))))

(declare-fun b!4533101 () Bool)

(assert (=> b!4533101 (= e!2824606 None!11170)))

(declare-fun b!4533100 () Bool)

(assert (=> b!4533100 (= e!2824606 (getValueByKey!1129 (t!357799 (toList!4375 lm!1477)) hash!344))))

(declare-fun b!4533098 () Bool)

(assert (=> b!4533098 (= e!2824605 (Some!11170 (_2!28880 (h!56584 (toList!4375 lm!1477)))))))

(declare-fun d!1399574 () Bool)

(declare-fun c!774081 () Bool)

(assert (=> d!1399574 (= c!774081 (and ((_ is Cons!50713) (toList!4375 lm!1477)) (= (_1!28880 (h!56584 (toList!4375 lm!1477))) hash!344)))))

(assert (=> d!1399574 (= (getValueByKey!1129 (toList!4375 lm!1477) hash!344) e!2824605)))

(assert (= (and d!1399574 c!774081) b!4533098))

(assert (= (and d!1399574 (not c!774081)) b!4533099))

(assert (= (and b!4533099 c!774082) b!4533100))

(assert (= (and b!4533099 (not c!774082)) b!4533101))

(declare-fun m!5292449 () Bool)

(assert (=> b!4533100 m!5292449))

(assert (=> d!1399288 d!1399574))

(declare-fun b!4533103 () Bool)

(declare-fun e!2824607 () Option!11171)

(declare-fun e!2824608 () Option!11171)

(assert (=> b!4533103 (= e!2824607 e!2824608)))

(declare-fun c!774084 () Bool)

(assert (=> b!4533103 (= c!774084 (and ((_ is Cons!50713) (toList!4375 lt!1707771)) (not (= (_1!28880 (h!56584 (toList!4375 lt!1707771))) (_1!28880 lt!1707610)))))))

(declare-fun b!4533105 () Bool)

(assert (=> b!4533105 (= e!2824608 None!11170)))

(declare-fun b!4533104 () Bool)

(assert (=> b!4533104 (= e!2824608 (getValueByKey!1129 (t!357799 (toList!4375 lt!1707771)) (_1!28880 lt!1707610)))))

(declare-fun b!4533102 () Bool)

(assert (=> b!4533102 (= e!2824607 (Some!11170 (_2!28880 (h!56584 (toList!4375 lt!1707771)))))))

(declare-fun d!1399576 () Bool)

(declare-fun c!774083 () Bool)

(assert (=> d!1399576 (= c!774083 (and ((_ is Cons!50713) (toList!4375 lt!1707771)) (= (_1!28880 (h!56584 (toList!4375 lt!1707771))) (_1!28880 lt!1707610))))))

(assert (=> d!1399576 (= (getValueByKey!1129 (toList!4375 lt!1707771) (_1!28880 lt!1707610)) e!2824607)))

(assert (= (and d!1399576 c!774083) b!4533102))

(assert (= (and d!1399576 (not c!774083)) b!4533103))

(assert (= (and b!4533103 c!774084) b!4533104))

(assert (= (and b!4533103 (not c!774084)) b!4533105))

(declare-fun m!5292451 () Bool)

(assert (=> b!4533104 m!5292451))

(assert (=> b!4532247 d!1399576))

(declare-fun d!1399578 () Bool)

(declare-fun lt!1708413 () Bool)

(assert (=> d!1399578 (= lt!1708413 (select (content!8412 e!2824011) key!3287))))

(declare-fun e!2824609 () Bool)

(assert (=> d!1399578 (= lt!1708413 e!2824609)))

(declare-fun res!1888184 () Bool)

(assert (=> d!1399578 (=> (not res!1888184) (not e!2824609))))

(assert (=> d!1399578 (= res!1888184 ((_ is Cons!50715) e!2824011))))

(assert (=> d!1399578 (= (contains!13483 e!2824011 key!3287) lt!1708413)))

(declare-fun b!4533106 () Bool)

(declare-fun e!2824610 () Bool)

(assert (=> b!4533106 (= e!2824609 e!2824610)))

(declare-fun res!1888183 () Bool)

(assert (=> b!4533106 (=> res!1888183 e!2824610)))

(assert (=> b!4533106 (= res!1888183 (= (h!56588 e!2824011) key!3287))))

(declare-fun b!4533107 () Bool)

(assert (=> b!4533107 (= e!2824610 (contains!13483 (t!357801 e!2824011) key!3287))))

(assert (= (and d!1399578 res!1888184) b!4533106))

(assert (= (and b!4533106 (not res!1888183)) b!4533107))

(declare-fun m!5292453 () Bool)

(assert (=> d!1399578 m!5292453))

(declare-fun m!5292455 () Bool)

(assert (=> d!1399578 m!5292455))

(declare-fun m!5292457 () Bool)

(assert (=> b!4533107 m!5292457))

(assert (=> bm!315915 d!1399578))

(declare-fun bs!868738 () Bool)

(declare-fun d!1399580 () Bool)

(assert (= bs!868738 (and d!1399580 b!4532427)))

(declare-fun lambda!174838 () Int)

(assert (=> bs!868738 (not (= lambda!174838 lambda!174754))))

(declare-fun bs!868739 () Bool)

(assert (= bs!868739 (and d!1399580 b!4532470)))

(assert (=> bs!868739 (not (= lambda!174838 lambda!174764))))

(assert (=> bs!868738 (not (= lambda!174838 lambda!174753))))

(declare-fun bs!868740 () Bool)

(assert (= bs!868740 (and d!1399580 b!4532449)))

(assert (=> bs!868740 (not (= lambda!174838 lambda!174758))))

(declare-fun bs!868741 () Bool)

(assert (= bs!868741 (and d!1399580 d!1399090)))

(assert (=> bs!868741 (= (= (_1!28880 (h!56584 (toList!4375 lm!1477))) hash!344) (= lambda!174838 lambda!174643))))

(declare-fun bs!868742 () Bool)

(assert (= bs!868742 (and d!1399580 d!1399264)))

(assert (=> bs!868742 (not (= lambda!174838 lambda!174759))))

(declare-fun bs!868743 () Bool)

(assert (= bs!868743 (and d!1399580 d!1399182)))

(assert (=> bs!868743 (not (= lambda!174838 lambda!174755))))

(assert (=> bs!868740 (not (= lambda!174838 lambda!174757))))

(declare-fun bs!868744 () Bool)

(assert (= bs!868744 (and d!1399580 b!4532428)))

(assert (=> bs!868744 (not (= lambda!174838 lambda!174752))))

(declare-fun bs!868745 () Bool)

(assert (= bs!868745 (and d!1399580 b!4532450)))

(assert (=> bs!868745 (not (= lambda!174838 lambda!174756))))

(declare-fun bs!868746 () Bool)

(assert (= bs!868746 (and d!1399580 b!4532469)))

(assert (=> bs!868746 (not (= lambda!174838 lambda!174766))))

(declare-fun bs!868747 () Bool)

(assert (= bs!868747 (and d!1399580 b!4532128)))

(assert (=> bs!868747 (= lambda!174838 lambda!174637)))

(assert (=> bs!868746 (not (= lambda!174838 lambda!174765))))

(declare-fun bs!868748 () Bool)

(assert (= bs!868748 (and d!1399580 d!1399278)))

(assert (=> bs!868748 (not (= lambda!174838 lambda!174767))))

(assert (=> d!1399580 true))

(assert (=> d!1399580 true))

(assert (=> d!1399580 (= (allKeysSameHash!1038 (_2!28880 (h!56584 (toList!4375 lm!1477))) (_1!28880 (h!56584 (toList!4375 lm!1477))) hashF!1107) (forall!10317 (_2!28880 (h!56584 (toList!4375 lm!1477))) lambda!174838))))

(declare-fun bs!868749 () Bool)

(assert (= bs!868749 d!1399580))

(declare-fun m!5292459 () Bool)

(assert (=> bs!868749 m!5292459))

(assert (=> bs!868338 d!1399580))

(declare-fun d!1399582 () Bool)

(assert (=> d!1399582 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707611) key!3287))))

(declare-fun lt!1708416 () Unit!97092)

(declare-fun choose!29781 (List!50836 K!12100) Unit!97092)

(assert (=> d!1399582 (= lt!1708416 (choose!29781 (toList!4376 lt!1707611) key!3287))))

(assert (=> d!1399582 (invariantList!1035 (toList!4376 lt!1707611))))

(assert (=> d!1399582 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1707611) key!3287) lt!1708416)))

(declare-fun bs!868756 () Bool)

(assert (= bs!868756 d!1399582))

(assert (=> bs!868756 m!5290787))

(assert (=> bs!868756 m!5290787))

(assert (=> bs!868756 m!5290789))

(declare-fun m!5292461 () Bool)

(assert (=> bs!868756 m!5292461))

(declare-fun m!5292463 () Bool)

(assert (=> bs!868756 m!5292463))

(assert (=> b!4532178 d!1399582))

(assert (=> b!4532178 d!1399546))

(assert (=> b!4532178 d!1399548))

(declare-fun d!1399584 () Bool)

(assert (=> d!1399584 (contains!13483 (getKeysList!483 (toList!4376 lt!1707611)) key!3287)))

(declare-fun lt!1708419 () Unit!97092)

(declare-fun choose!29782 (List!50836 K!12100) Unit!97092)

(assert (=> d!1399584 (= lt!1708419 (choose!29782 (toList!4376 lt!1707611) key!3287))))

(assert (=> d!1399584 (invariantList!1035 (toList!4376 lt!1707611))))

(assert (=> d!1399584 (= (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1707611) key!3287) lt!1708419)))

(declare-fun bs!868779 () Bool)

(assert (= bs!868779 d!1399584))

(assert (=> bs!868779 m!5290803))

(assert (=> bs!868779 m!5290803))

(declare-fun m!5292465 () Bool)

(assert (=> bs!868779 m!5292465))

(declare-fun m!5292467 () Bool)

(assert (=> bs!868779 m!5292467))

(assert (=> bs!868779 m!5292463))

(assert (=> b!4532178 d!1399584))

(declare-fun b!4533111 () Bool)

(declare-fun e!2824611 () List!50836)

(assert (=> b!4533111 (= e!2824611 Nil!50712)))

(declare-fun b!4533110 () Bool)

(assert (=> b!4533110 (= e!2824611 (Cons!50712 (h!56583 (t!357798 lt!1707613)) (removePairForKey!811 (t!357798 (t!357798 lt!1707613)) key!3287)))))

(declare-fun b!4533108 () Bool)

(declare-fun e!2824612 () List!50836)

(assert (=> b!4533108 (= e!2824612 (t!357798 (t!357798 lt!1707613)))))

(declare-fun b!4533109 () Bool)

(assert (=> b!4533109 (= e!2824612 e!2824611)))

(declare-fun c!774086 () Bool)

(assert (=> b!4533109 (= c!774086 ((_ is Cons!50712) (t!357798 lt!1707613)))))

(declare-fun d!1399586 () Bool)

(declare-fun lt!1708420 () List!50836)

(assert (=> d!1399586 (not (containsKey!1840 lt!1708420 key!3287))))

(assert (=> d!1399586 (= lt!1708420 e!2824612)))

(declare-fun c!774085 () Bool)

(assert (=> d!1399586 (= c!774085 (and ((_ is Cons!50712) (t!357798 lt!1707613)) (= (_1!28879 (h!56583 (t!357798 lt!1707613))) key!3287)))))

(assert (=> d!1399586 (noDuplicateKeys!1184 (t!357798 lt!1707613))))

(assert (=> d!1399586 (= (removePairForKey!811 (t!357798 lt!1707613) key!3287) lt!1708420)))

(assert (= (and d!1399586 c!774085) b!4533108))

(assert (= (and d!1399586 (not c!774085)) b!4533109))

(assert (= (and b!4533109 c!774086) b!4533110))

(assert (= (and b!4533109 (not c!774086)) b!4533111))

(declare-fun m!5292469 () Bool)

(assert (=> b!4533110 m!5292469))

(declare-fun m!5292471 () Bool)

(assert (=> d!1399586 m!5292471))

(declare-fun m!5292473 () Bool)

(assert (=> d!1399586 m!5292473))

(assert (=> b!4532504 d!1399586))

(declare-fun d!1399588 () Bool)

(declare-fun res!1888185 () Bool)

(declare-fun e!2824613 () Bool)

(assert (=> d!1399588 (=> res!1888185 e!2824613)))

(assert (=> d!1399588 (= res!1888185 ((_ is Nil!50712) (toList!4376 lt!1708030)))))

(assert (=> d!1399588 (= (forall!10317 (toList!4376 lt!1708030) lambda!174766) e!2824613)))

(declare-fun b!4533112 () Bool)

(declare-fun e!2824614 () Bool)

(assert (=> b!4533112 (= e!2824613 e!2824614)))

(declare-fun res!1888186 () Bool)

(assert (=> b!4533112 (=> (not res!1888186) (not e!2824614))))

(assert (=> b!4533112 (= res!1888186 (dynLambda!21197 lambda!174766 (h!56583 (toList!4376 lt!1708030))))))

(declare-fun b!4533113 () Bool)

(assert (=> b!4533113 (= e!2824614 (forall!10317 (t!357798 (toList!4376 lt!1708030)) lambda!174766))))

(assert (= (and d!1399588 (not res!1888185)) b!4533112))

(assert (= (and b!4533112 res!1888186) b!4533113))

(declare-fun b_lambda!156835 () Bool)

(assert (=> (not b_lambda!156835) (not b!4533112)))

(declare-fun m!5292483 () Bool)

(assert (=> b!4533112 m!5292483))

(declare-fun m!5292487 () Bool)

(assert (=> b!4533113 m!5292487))

(assert (=> b!4532469 d!1399588))

(declare-fun b!4533114 () Bool)

(declare-fun e!2824615 () Bool)

(declare-fun e!2824617 () Bool)

(assert (=> b!4533114 (= e!2824615 e!2824617)))

(declare-fun res!1888188 () Bool)

(assert (=> b!4533114 (=> (not res!1888188) (not e!2824617))))

(assert (=> b!4533114 (= res!1888188 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708034) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533115 () Bool)

(declare-fun e!2824620 () List!50839)

(assert (=> b!4533115 (= e!2824620 (getKeysList!483 (toList!4376 lt!1708034)))))

(declare-fun b!4533116 () Bool)

(assert (=> b!4533116 (= e!2824620 (keys!17636 lt!1708034))))

(declare-fun b!4533117 () Bool)

(assert (=> b!4533117 (= e!2824617 (contains!13483 (keys!17636 lt!1708034) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun b!4533118 () Bool)

(declare-fun e!2824619 () Bool)

(assert (=> b!4533118 (= e!2824619 (not (contains!13483 (keys!17636 lt!1708034) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533119 () Bool)

(declare-fun e!2824618 () Unit!97092)

(declare-fun lt!1708425 () Unit!97092)

(assert (=> b!4533119 (= e!2824618 lt!1708425)))

(declare-fun lt!1708426 () Unit!97092)

(assert (=> b!4533119 (= lt!1708426 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1708034) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4533119 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708034) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708423 () Unit!97092)

(assert (=> b!4533119 (= lt!1708423 lt!1708426)))

(assert (=> b!4533119 (= lt!1708425 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1708034) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun call!316019 () Bool)

(assert (=> b!4533119 call!316019))

(declare-fun b!4533120 () Bool)

(declare-fun e!2824616 () Unit!97092)

(assert (=> b!4533120 (= e!2824618 e!2824616)))

(declare-fun c!774088 () Bool)

(assert (=> b!4533120 (= c!774088 call!316019)))

(declare-fun b!4533121 () Bool)

(assert (=> b!4533121 false))

(declare-fun lt!1708421 () Unit!97092)

(declare-fun lt!1708424 () Unit!97092)

(assert (=> b!4533121 (= lt!1708421 lt!1708424)))

(assert (=> b!4533121 (containsKey!1843 (toList!4376 lt!1708034) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4533121 (= lt!1708424 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1708034) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun Unit!97226 () Unit!97092)

(assert (=> b!4533121 (= e!2824616 Unit!97226)))

(declare-fun d!1399590 () Bool)

(assert (=> d!1399590 e!2824615))

(declare-fun res!1888189 () Bool)

(assert (=> d!1399590 (=> res!1888189 e!2824615)))

(assert (=> d!1399590 (= res!1888189 e!2824619)))

(declare-fun res!1888187 () Bool)

(assert (=> d!1399590 (=> (not res!1888187) (not e!2824619))))

(declare-fun lt!1708428 () Bool)

(assert (=> d!1399590 (= res!1888187 (not lt!1708428))))

(declare-fun lt!1708427 () Bool)

(assert (=> d!1399590 (= lt!1708428 lt!1708427)))

(declare-fun lt!1708422 () Unit!97092)

(assert (=> d!1399590 (= lt!1708422 e!2824618)))

(declare-fun c!774089 () Bool)

(assert (=> d!1399590 (= c!774089 lt!1708427)))

(assert (=> d!1399590 (= lt!1708427 (containsKey!1843 (toList!4376 lt!1708034) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399590 (= (contains!13479 lt!1708034 (_1!28879 (h!56583 (_2!28880 lt!1707605)))) lt!1708428)))

(declare-fun b!4533122 () Bool)

(declare-fun Unit!97228 () Unit!97092)

(assert (=> b!4533122 (= e!2824616 Unit!97228)))

(declare-fun bm!316014 () Bool)

(assert (=> bm!316014 (= call!316019 (contains!13483 e!2824620 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun c!774087 () Bool)

(assert (=> bm!316014 (= c!774087 c!774089)))

(assert (= (and d!1399590 c!774089) b!4533119))

(assert (= (and d!1399590 (not c!774089)) b!4533120))

(assert (= (and b!4533120 c!774088) b!4533121))

(assert (= (and b!4533120 (not c!774088)) b!4533122))

(assert (= (or b!4533119 b!4533120) bm!316014))

(assert (= (and bm!316014 c!774087) b!4533115))

(assert (= (and bm!316014 (not c!774087)) b!4533116))

(assert (= (and d!1399590 res!1888187) b!4533118))

(assert (= (and d!1399590 (not res!1888189)) b!4533114))

(assert (= (and b!4533114 res!1888188) b!4533117))

(declare-fun m!5292513 () Bool)

(assert (=> b!4533119 m!5292513))

(declare-fun m!5292515 () Bool)

(assert (=> b!4533119 m!5292515))

(assert (=> b!4533119 m!5292515))

(declare-fun m!5292517 () Bool)

(assert (=> b!4533119 m!5292517))

(declare-fun m!5292519 () Bool)

(assert (=> b!4533119 m!5292519))

(declare-fun m!5292521 () Bool)

(assert (=> b!4533117 m!5292521))

(assert (=> b!4533117 m!5292521))

(declare-fun m!5292523 () Bool)

(assert (=> b!4533117 m!5292523))

(assert (=> b!4533116 m!5292521))

(declare-fun m!5292525 () Bool)

(assert (=> bm!316014 m!5292525))

(assert (=> b!4533118 m!5292521))

(assert (=> b!4533118 m!5292521))

(assert (=> b!4533118 m!5292523))

(declare-fun m!5292527 () Bool)

(assert (=> b!4533121 m!5292527))

(declare-fun m!5292529 () Bool)

(assert (=> b!4533121 m!5292529))

(assert (=> b!4533114 m!5292515))

(assert (=> b!4533114 m!5292515))

(assert (=> b!4533114 m!5292517))

(declare-fun m!5292531 () Bool)

(assert (=> b!4533115 m!5292531))

(assert (=> d!1399590 m!5292527))

(assert (=> b!4532469 d!1399590))

(declare-fun d!1399594 () Bool)

(assert (=> d!1399594 (dynLambda!21197 lambda!174766 (h!56583 (_2!28880 lt!1707605)))))

(declare-fun lt!1708430 () Unit!97092)

(assert (=> d!1399594 (= lt!1708430 (choose!29771 (toList!4376 lt!1708030) lambda!174766 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun e!2824622 () Bool)

(assert (=> d!1399594 e!2824622))

(declare-fun res!1888190 () Bool)

(assert (=> d!1399594 (=> (not res!1888190) (not e!2824622))))

(assert (=> d!1399594 (= res!1888190 (forall!10317 (toList!4376 lt!1708030) lambda!174766))))

(assert (=> d!1399594 (= (forallContained!2573 (toList!4376 lt!1708030) lambda!174766 (h!56583 (_2!28880 lt!1707605))) lt!1708430)))

(declare-fun b!4533125 () Bool)

(assert (=> b!4533125 (= e!2824622 (contains!13485 (toList!4376 lt!1708030) (h!56583 (_2!28880 lt!1707605))))))

(assert (= (and d!1399594 res!1888190) b!4533125))

(declare-fun b_lambda!156837 () Bool)

(assert (=> (not b_lambda!156837) (not d!1399594)))

(declare-fun m!5292533 () Bool)

(assert (=> d!1399594 m!5292533))

(declare-fun m!5292535 () Bool)

(assert (=> d!1399594 m!5292535))

(assert (=> d!1399594 m!5291473))

(declare-fun m!5292537 () Bool)

(assert (=> b!4533125 m!5292537))

(assert (=> b!4532469 d!1399594))

(declare-fun d!1399596 () Bool)

(declare-fun res!1888191 () Bool)

(declare-fun e!2824623 () Bool)

(assert (=> d!1399596 (=> res!1888191 e!2824623)))

(assert (=> d!1399596 (= res!1888191 ((_ is Nil!50712) (t!357798 (_2!28880 lt!1707605))))))

(assert (=> d!1399596 (= (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174766) e!2824623)))

(declare-fun b!4533126 () Bool)

(declare-fun e!2824624 () Bool)

(assert (=> b!4533126 (= e!2824623 e!2824624)))

(declare-fun res!1888192 () Bool)

(assert (=> b!4533126 (=> (not res!1888192) (not e!2824624))))

(assert (=> b!4533126 (= res!1888192 (dynLambda!21197 lambda!174766 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun b!4533127 () Bool)

(assert (=> b!4533127 (= e!2824624 (forall!10317 (t!357798 (t!357798 (_2!28880 lt!1707605))) lambda!174766))))

(assert (= (and d!1399596 (not res!1888191)) b!4533126))

(assert (= (and b!4533126 res!1888192) b!4533127))

(declare-fun b_lambda!156839 () Bool)

(assert (=> (not b_lambda!156839) (not b!4533126)))

(declare-fun m!5292539 () Bool)

(assert (=> b!4533126 m!5292539))

(declare-fun m!5292541 () Bool)

(assert (=> b!4533127 m!5292541))

(assert (=> b!4532469 d!1399596))

(declare-fun d!1399598 () Bool)

(declare-fun e!2824637 () Bool)

(assert (=> d!1399598 e!2824637))

(declare-fun res!1888209 () Bool)

(assert (=> d!1399598 (=> (not res!1888209) (not e!2824637))))

(declare-fun lt!1708445 () ListMap!3637)

(assert (=> d!1399598 (= res!1888209 (contains!13479 lt!1708445 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708446 () List!50836)

(assert (=> d!1399598 (= lt!1708445 (ListMap!3638 lt!1708446))))

(declare-fun lt!1708448 () Unit!97092)

(declare-fun lt!1708447 () Unit!97092)

(assert (=> d!1399598 (= lt!1708448 lt!1708447)))

(assert (=> d!1399598 (= (getValueByKey!1128 lt!1708446 (_1!28879 (h!56583 (_2!28880 lt!1707605)))) (Some!11169 (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!708 (List!50836 K!12100 V!12346) Unit!97092)

(assert (=> d!1399598 (= lt!1708447 (lemmaContainsTupThenGetReturnValue!708 lt!1708446 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun insertNoDuplicatedKeys!290 (List!50836 K!12100 V!12346) List!50836)

(assert (=> d!1399598 (= lt!1708446 (insertNoDuplicatedKeys!290 (toList!4376 lt!1707612) (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399598 (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708445)))

(declare-fun b!4533147 () Bool)

(declare-fun res!1888208 () Bool)

(assert (=> b!4533147 (=> (not res!1888208) (not e!2824637))))

(assert (=> b!4533147 (= res!1888208 (= (getValueByKey!1128 (toList!4376 lt!1708445) (_1!28879 (h!56583 (_2!28880 lt!1707605)))) (Some!11169 (_2!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533148 () Bool)

(assert (=> b!4533148 (= e!2824637 (contains!13485 (toList!4376 lt!1708445) (h!56583 (_2!28880 lt!1707605))))))

(assert (= (and d!1399598 res!1888209) b!4533147))

(assert (= (and b!4533147 res!1888208) b!4533148))

(declare-fun m!5292595 () Bool)

(assert (=> d!1399598 m!5292595))

(declare-fun m!5292597 () Bool)

(assert (=> d!1399598 m!5292597))

(declare-fun m!5292599 () Bool)

(assert (=> d!1399598 m!5292599))

(declare-fun m!5292601 () Bool)

(assert (=> d!1399598 m!5292601))

(declare-fun m!5292603 () Bool)

(assert (=> b!4533147 m!5292603))

(declare-fun m!5292605 () Bool)

(assert (=> b!4533148 m!5292605))

(assert (=> b!4532469 d!1399598))

(declare-fun bs!868805 () Bool)

(declare-fun d!1399618 () Bool)

(assert (= bs!868805 (and d!1399618 b!4532427)))

(declare-fun lambda!174847 () Int)

(assert (=> bs!868805 (= (= lt!1708034 lt!1707972) (= lambda!174847 lambda!174754))))

(declare-fun bs!868806 () Bool)

(assert (= bs!868806 (and d!1399618 b!4532470)))

(assert (=> bs!868806 (= (= lt!1708034 lt!1707612) (= lambda!174847 lambda!174764))))

(assert (=> bs!868805 (= (= lt!1708034 lt!1707600) (= lambda!174847 lambda!174753))))

(declare-fun bs!868807 () Bool)

(assert (= bs!868807 (and d!1399618 d!1399580)))

(assert (=> bs!868807 (not (= lambda!174847 lambda!174838))))

(declare-fun bs!868808 () Bool)

(assert (= bs!868808 (and d!1399618 b!4532449)))

(assert (=> bs!868808 (= (= lt!1708034 lt!1708008) (= lambda!174847 lambda!174758))))

(declare-fun bs!868809 () Bool)

(assert (= bs!868809 (and d!1399618 d!1399090)))

(assert (=> bs!868809 (not (= lambda!174847 lambda!174643))))

(declare-fun bs!868810 () Bool)

(assert (= bs!868810 (and d!1399618 d!1399264)))

(assert (=> bs!868810 (= (= lt!1708034 lt!1708012) (= lambda!174847 lambda!174759))))

(declare-fun bs!868811 () Bool)

(assert (= bs!868811 (and d!1399618 d!1399182)))

(assert (=> bs!868811 (= (= lt!1708034 lt!1707976) (= lambda!174847 lambda!174755))))

(assert (=> bs!868808 (= (= lt!1708034 lt!1707628) (= lambda!174847 lambda!174757))))

(declare-fun bs!868812 () Bool)

(assert (= bs!868812 (and d!1399618 b!4532428)))

(assert (=> bs!868812 (= (= lt!1708034 lt!1707600) (= lambda!174847 lambda!174752))))

(declare-fun bs!868813 () Bool)

(assert (= bs!868813 (and d!1399618 b!4532450)))

(assert (=> bs!868813 (= (= lt!1708034 lt!1707628) (= lambda!174847 lambda!174756))))

(declare-fun bs!868814 () Bool)

(assert (= bs!868814 (and d!1399618 b!4532469)))

(assert (=> bs!868814 (= lambda!174847 lambda!174766)))

(declare-fun bs!868815 () Bool)

(assert (= bs!868815 (and d!1399618 b!4532128)))

(assert (=> bs!868815 (not (= lambda!174847 lambda!174637))))

(assert (=> bs!868814 (= (= lt!1708034 lt!1707612) (= lambda!174847 lambda!174765))))

(declare-fun bs!868816 () Bool)

(assert (= bs!868816 (and d!1399618 d!1399278)))

(assert (=> bs!868816 (= (= lt!1708034 lt!1708038) (= lambda!174847 lambda!174767))))

(assert (=> d!1399618 true))

(assert (=> d!1399618 (forall!10317 (toList!4376 lt!1707612) lambda!174847)))

(declare-fun lt!1708451 () Unit!97092)

(declare-fun choose!29783 (ListMap!3637 ListMap!3637 K!12100 V!12346) Unit!97092)

(assert (=> d!1399618 (= lt!1708451 (choose!29783 lt!1707612 lt!1708034 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399618 (forall!10317 (toList!4376 (+!1582 lt!1707612 (tuple2!51171 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))) lambda!174847)))

(assert (=> d!1399618 (= (addForallContainsKeyThenBeforeAdding!356 lt!1707612 lt!1708034 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))) lt!1708451)))

(declare-fun bs!868817 () Bool)

(assert (= bs!868817 d!1399618))

(declare-fun m!5292607 () Bool)

(assert (=> bs!868817 m!5292607))

(declare-fun m!5292609 () Bool)

(assert (=> bs!868817 m!5292609))

(declare-fun m!5292611 () Bool)

(assert (=> bs!868817 m!5292611))

(declare-fun m!5292613 () Bool)

(assert (=> bs!868817 m!5292613))

(assert (=> b!4532469 d!1399618))

(declare-fun b!4533150 () Bool)

(declare-fun e!2824638 () Bool)

(declare-fun e!2824640 () Bool)

(assert (=> b!4533150 (= e!2824638 e!2824640)))

(declare-fun res!1888211 () Bool)

(assert (=> b!4533150 (=> (not res!1888211) (not e!2824640))))

(assert (=> b!4533150 (= res!1888211 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708030) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533151 () Bool)

(declare-fun e!2824643 () List!50839)

(assert (=> b!4533151 (= e!2824643 (getKeysList!483 (toList!4376 lt!1708030)))))

(declare-fun b!4533152 () Bool)

(assert (=> b!4533152 (= e!2824643 (keys!17636 lt!1708030))))

(declare-fun b!4533153 () Bool)

(assert (=> b!4533153 (= e!2824640 (contains!13483 (keys!17636 lt!1708030) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun b!4533154 () Bool)

(declare-fun e!2824642 () Bool)

(assert (=> b!4533154 (= e!2824642 (not (contains!13483 (keys!17636 lt!1708030) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533155 () Bool)

(declare-fun e!2824641 () Unit!97092)

(declare-fun lt!1708456 () Unit!97092)

(assert (=> b!4533155 (= e!2824641 lt!1708456)))

(declare-fun lt!1708457 () Unit!97092)

(assert (=> b!4533155 (= lt!1708457 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1708030) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4533155 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708030) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708454 () Unit!97092)

(assert (=> b!4533155 (= lt!1708454 lt!1708457)))

(assert (=> b!4533155 (= lt!1708456 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1708030) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun call!316020 () Bool)

(assert (=> b!4533155 call!316020))

(declare-fun b!4533156 () Bool)

(declare-fun e!2824639 () Unit!97092)

(assert (=> b!4533156 (= e!2824641 e!2824639)))

(declare-fun c!774094 () Bool)

(assert (=> b!4533156 (= c!774094 call!316020)))

(declare-fun b!4533157 () Bool)

(assert (=> b!4533157 false))

(declare-fun lt!1708452 () Unit!97092)

(declare-fun lt!1708455 () Unit!97092)

(assert (=> b!4533157 (= lt!1708452 lt!1708455)))

(assert (=> b!4533157 (containsKey!1843 (toList!4376 lt!1708030) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4533157 (= lt!1708455 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1708030) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun Unit!97230 () Unit!97092)

(assert (=> b!4533157 (= e!2824639 Unit!97230)))

(declare-fun d!1399620 () Bool)

(assert (=> d!1399620 e!2824638))

(declare-fun res!1888212 () Bool)

(assert (=> d!1399620 (=> res!1888212 e!2824638)))

(assert (=> d!1399620 (= res!1888212 e!2824642)))

(declare-fun res!1888210 () Bool)

(assert (=> d!1399620 (=> (not res!1888210) (not e!2824642))))

(declare-fun lt!1708459 () Bool)

(assert (=> d!1399620 (= res!1888210 (not lt!1708459))))

(declare-fun lt!1708458 () Bool)

(assert (=> d!1399620 (= lt!1708459 lt!1708458)))

(declare-fun lt!1708453 () Unit!97092)

(assert (=> d!1399620 (= lt!1708453 e!2824641)))

(declare-fun c!774095 () Bool)

(assert (=> d!1399620 (= c!774095 lt!1708458)))

(assert (=> d!1399620 (= lt!1708458 (containsKey!1843 (toList!4376 lt!1708030) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399620 (= (contains!13479 lt!1708030 (_1!28879 (h!56583 (_2!28880 lt!1707605)))) lt!1708459)))

(declare-fun b!4533158 () Bool)

(declare-fun Unit!97231 () Unit!97092)

(assert (=> b!4533158 (= e!2824639 Unit!97231)))

(declare-fun bm!316015 () Bool)

(assert (=> bm!316015 (= call!316020 (contains!13483 e!2824643 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun c!774093 () Bool)

(assert (=> bm!316015 (= c!774093 c!774095)))

(assert (= (and d!1399620 c!774095) b!4533155))

(assert (= (and d!1399620 (not c!774095)) b!4533156))

(assert (= (and b!4533156 c!774094) b!4533157))

(assert (= (and b!4533156 (not c!774094)) b!4533158))

(assert (= (or b!4533155 b!4533156) bm!316015))

(assert (= (and bm!316015 c!774093) b!4533151))

(assert (= (and bm!316015 (not c!774093)) b!4533152))

(assert (= (and d!1399620 res!1888210) b!4533154))

(assert (= (and d!1399620 (not res!1888212)) b!4533150))

(assert (= (and b!4533150 res!1888211) b!4533153))

(declare-fun m!5292615 () Bool)

(assert (=> b!4533155 m!5292615))

(declare-fun m!5292617 () Bool)

(assert (=> b!4533155 m!5292617))

(assert (=> b!4533155 m!5292617))

(declare-fun m!5292619 () Bool)

(assert (=> b!4533155 m!5292619))

(declare-fun m!5292621 () Bool)

(assert (=> b!4533155 m!5292621))

(declare-fun m!5292623 () Bool)

(assert (=> b!4533153 m!5292623))

(assert (=> b!4533153 m!5292623))

(declare-fun m!5292625 () Bool)

(assert (=> b!4533153 m!5292625))

(assert (=> b!4533152 m!5292623))

(declare-fun m!5292627 () Bool)

(assert (=> bm!316015 m!5292627))

(assert (=> b!4533154 m!5292623))

(assert (=> b!4533154 m!5292623))

(assert (=> b!4533154 m!5292625))

(declare-fun m!5292629 () Bool)

(assert (=> b!4533157 m!5292629))

(declare-fun m!5292631 () Bool)

(assert (=> b!4533157 m!5292631))

(assert (=> b!4533150 m!5292617))

(assert (=> b!4533150 m!5292617))

(assert (=> b!4533150 m!5292619))

(declare-fun m!5292633 () Bool)

(assert (=> b!4533151 m!5292633))

(assert (=> d!1399620 m!5292629))

(assert (=> b!4532469 d!1399620))

(declare-fun bs!868820 () Bool)

(declare-fun b!4533161 () Bool)

(assert (= bs!868820 (and b!4533161 b!4532427)))

(declare-fun lambda!174848 () Int)

(assert (=> bs!868820 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174848 lambda!174754))))

(assert (=> bs!868820 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174848 lambda!174753))))

(declare-fun bs!868821 () Bool)

(assert (= bs!868821 (and b!4533161 d!1399580)))

(assert (=> bs!868821 (not (= lambda!174848 lambda!174838))))

(declare-fun bs!868823 () Bool)

(assert (= bs!868823 (and b!4533161 b!4532449)))

(assert (=> bs!868823 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708008) (= lambda!174848 lambda!174758))))

(declare-fun bs!868824 () Bool)

(assert (= bs!868824 (and b!4533161 d!1399090)))

(assert (=> bs!868824 (not (= lambda!174848 lambda!174643))))

(declare-fun bs!868826 () Bool)

(assert (= bs!868826 (and b!4533161 d!1399264)))

(assert (=> bs!868826 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708012) (= lambda!174848 lambda!174759))))

(declare-fun bs!868827 () Bool)

(assert (= bs!868827 (and b!4533161 d!1399182)))

(assert (=> bs!868827 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707976) (= lambda!174848 lambda!174755))))

(assert (=> bs!868823 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174848 lambda!174757))))

(declare-fun bs!868828 () Bool)

(assert (= bs!868828 (and b!4533161 b!4532428)))

(assert (=> bs!868828 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174848 lambda!174752))))

(declare-fun bs!868829 () Bool)

(assert (= bs!868829 (and b!4533161 b!4532450)))

(assert (=> bs!868829 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174848 lambda!174756))))

(declare-fun bs!868831 () Bool)

(assert (= bs!868831 (and b!4533161 b!4532469)))

(assert (=> bs!868831 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174848 lambda!174766))))

(declare-fun bs!868832 () Bool)

(assert (= bs!868832 (and b!4533161 b!4532128)))

(assert (=> bs!868832 (not (= lambda!174848 lambda!174637))))

(assert (=> bs!868831 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174848 lambda!174765))))

(declare-fun bs!868833 () Bool)

(assert (= bs!868833 (and b!4533161 d!1399278)))

(assert (=> bs!868833 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708038) (= lambda!174848 lambda!174767))))

(declare-fun bs!868835 () Bool)

(assert (= bs!868835 (and b!4533161 b!4532470)))

(assert (=> bs!868835 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174848 lambda!174764))))

(declare-fun bs!868836 () Bool)

(assert (= bs!868836 (and b!4533161 d!1399618)))

(assert (=> bs!868836 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174848 lambda!174847))))

(assert (=> b!4533161 true))

(declare-fun bs!868840 () Bool)

(declare-fun b!4533160 () Bool)

(assert (= bs!868840 (and b!4533160 b!4532427)))

(declare-fun lambda!174850 () Int)

(assert (=> bs!868840 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174850 lambda!174754))))

(assert (=> bs!868840 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174850 lambda!174753))))

(declare-fun bs!868842 () Bool)

(assert (= bs!868842 (and b!4533160 d!1399580)))

(assert (=> bs!868842 (not (= lambda!174850 lambda!174838))))

(declare-fun bs!868843 () Bool)

(assert (= bs!868843 (and b!4533160 b!4533161)))

(assert (=> bs!868843 (= lambda!174850 lambda!174848)))

(declare-fun bs!868845 () Bool)

(assert (= bs!868845 (and b!4533160 b!4532449)))

(assert (=> bs!868845 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708008) (= lambda!174850 lambda!174758))))

(declare-fun bs!868847 () Bool)

(assert (= bs!868847 (and b!4533160 d!1399090)))

(assert (=> bs!868847 (not (= lambda!174850 lambda!174643))))

(declare-fun bs!868849 () Bool)

(assert (= bs!868849 (and b!4533160 d!1399264)))

(assert (=> bs!868849 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708012) (= lambda!174850 lambda!174759))))

(declare-fun bs!868851 () Bool)

(assert (= bs!868851 (and b!4533160 d!1399182)))

(assert (=> bs!868851 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707976) (= lambda!174850 lambda!174755))))

(assert (=> bs!868845 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174850 lambda!174757))))

(declare-fun bs!868853 () Bool)

(assert (= bs!868853 (and b!4533160 b!4532428)))

(assert (=> bs!868853 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174850 lambda!174752))))

(declare-fun bs!868855 () Bool)

(assert (= bs!868855 (and b!4533160 b!4532450)))

(assert (=> bs!868855 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174850 lambda!174756))))

(declare-fun bs!868857 () Bool)

(assert (= bs!868857 (and b!4533160 b!4532469)))

(assert (=> bs!868857 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174850 lambda!174766))))

(declare-fun bs!868859 () Bool)

(assert (= bs!868859 (and b!4533160 b!4532128)))

(assert (=> bs!868859 (not (= lambda!174850 lambda!174637))))

(assert (=> bs!868857 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174850 lambda!174765))))

(declare-fun bs!868861 () Bool)

(assert (= bs!868861 (and b!4533160 d!1399278)))

(assert (=> bs!868861 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708038) (= lambda!174850 lambda!174767))))

(declare-fun bs!868862 () Bool)

(assert (= bs!868862 (and b!4533160 b!4532470)))

(assert (=> bs!868862 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174850 lambda!174764))))

(declare-fun bs!868863 () Bool)

(assert (= bs!868863 (and b!4533160 d!1399618)))

(assert (=> bs!868863 (= (= (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174850 lambda!174847))))

(assert (=> b!4533160 true))

(declare-fun lambda!174851 () Int)

(declare-fun lt!1708468 () ListMap!3637)

(assert (=> bs!868840 (= (= lt!1708468 lt!1707972) (= lambda!174851 lambda!174754))))

(assert (=> bs!868840 (= (= lt!1708468 lt!1707600) (= lambda!174851 lambda!174753))))

(assert (=> bs!868842 (not (= lambda!174851 lambda!174838))))

(assert (=> bs!868843 (= (= lt!1708468 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174851 lambda!174848))))

(assert (=> bs!868845 (= (= lt!1708468 lt!1708008) (= lambda!174851 lambda!174758))))

(assert (=> bs!868847 (not (= lambda!174851 lambda!174643))))

(assert (=> bs!868849 (= (= lt!1708468 lt!1708012) (= lambda!174851 lambda!174759))))

(assert (=> b!4533160 (= (= lt!1708468 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174851 lambda!174850))))

(assert (=> bs!868851 (= (= lt!1708468 lt!1707976) (= lambda!174851 lambda!174755))))

(assert (=> bs!868845 (= (= lt!1708468 lt!1707628) (= lambda!174851 lambda!174757))))

(assert (=> bs!868853 (= (= lt!1708468 lt!1707600) (= lambda!174851 lambda!174752))))

(assert (=> bs!868855 (= (= lt!1708468 lt!1707628) (= lambda!174851 lambda!174756))))

(assert (=> bs!868857 (= (= lt!1708468 lt!1708034) (= lambda!174851 lambda!174766))))

(assert (=> bs!868859 (not (= lambda!174851 lambda!174637))))

(assert (=> bs!868857 (= (= lt!1708468 lt!1707612) (= lambda!174851 lambda!174765))))

(assert (=> bs!868861 (= (= lt!1708468 lt!1708038) (= lambda!174851 lambda!174767))))

(assert (=> bs!868862 (= (= lt!1708468 lt!1707612) (= lambda!174851 lambda!174764))))

(assert (=> bs!868863 (= (= lt!1708468 lt!1708034) (= lambda!174851 lambda!174847))))

(assert (=> b!4533160 true))

(declare-fun bs!868868 () Bool)

(declare-fun d!1399622 () Bool)

(assert (= bs!868868 (and d!1399622 b!4532427)))

(declare-fun lambda!174853 () Int)

(declare-fun lt!1708472 () ListMap!3637)

(assert (=> bs!868868 (= (= lt!1708472 lt!1707600) (= lambda!174853 lambda!174753))))

(declare-fun bs!868870 () Bool)

(assert (= bs!868870 (and d!1399622 d!1399580)))

(assert (=> bs!868870 (not (= lambda!174853 lambda!174838))))

(declare-fun bs!868872 () Bool)

(assert (= bs!868872 (and d!1399622 b!4533161)))

(assert (=> bs!868872 (= (= lt!1708472 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174853 lambda!174848))))

(declare-fun bs!868874 () Bool)

(assert (= bs!868874 (and d!1399622 b!4532449)))

(assert (=> bs!868874 (= (= lt!1708472 lt!1708008) (= lambda!174853 lambda!174758))))

(declare-fun bs!868876 () Bool)

(assert (= bs!868876 (and d!1399622 d!1399090)))

(assert (=> bs!868876 (not (= lambda!174853 lambda!174643))))

(declare-fun bs!868877 () Bool)

(assert (= bs!868877 (and d!1399622 d!1399264)))

(assert (=> bs!868877 (= (= lt!1708472 lt!1708012) (= lambda!174853 lambda!174759))))

(declare-fun bs!868879 () Bool)

(assert (= bs!868879 (and d!1399622 b!4533160)))

(assert (=> bs!868879 (= (= lt!1708472 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174853 lambda!174850))))

(declare-fun bs!868881 () Bool)

(assert (= bs!868881 (and d!1399622 d!1399182)))

(assert (=> bs!868881 (= (= lt!1708472 lt!1707976) (= lambda!174853 lambda!174755))))

(assert (=> bs!868874 (= (= lt!1708472 lt!1707628) (= lambda!174853 lambda!174757))))

(declare-fun bs!868883 () Bool)

(assert (= bs!868883 (and d!1399622 b!4532428)))

(assert (=> bs!868883 (= (= lt!1708472 lt!1707600) (= lambda!174853 lambda!174752))))

(declare-fun bs!868885 () Bool)

(assert (= bs!868885 (and d!1399622 b!4532450)))

(assert (=> bs!868885 (= (= lt!1708472 lt!1707628) (= lambda!174853 lambda!174756))))

(declare-fun bs!868887 () Bool)

(assert (= bs!868887 (and d!1399622 b!4532469)))

(assert (=> bs!868887 (= (= lt!1708472 lt!1708034) (= lambda!174853 lambda!174766))))

(assert (=> bs!868879 (= (= lt!1708472 lt!1708468) (= lambda!174853 lambda!174851))))

(assert (=> bs!868868 (= (= lt!1708472 lt!1707972) (= lambda!174853 lambda!174754))))

(declare-fun bs!868890 () Bool)

(assert (= bs!868890 (and d!1399622 b!4532128)))

(assert (=> bs!868890 (not (= lambda!174853 lambda!174637))))

(assert (=> bs!868887 (= (= lt!1708472 lt!1707612) (= lambda!174853 lambda!174765))))

(declare-fun bs!868893 () Bool)

(assert (= bs!868893 (and d!1399622 d!1399278)))

(assert (=> bs!868893 (= (= lt!1708472 lt!1708038) (= lambda!174853 lambda!174767))))

(declare-fun bs!868895 () Bool)

(assert (= bs!868895 (and d!1399622 b!4532470)))

(assert (=> bs!868895 (= (= lt!1708472 lt!1707612) (= lambda!174853 lambda!174764))))

(declare-fun bs!868897 () Bool)

(assert (= bs!868897 (and d!1399622 d!1399618)))

(assert (=> bs!868897 (= (= lt!1708472 lt!1708034) (= lambda!174853 lambda!174847))))

(assert (=> d!1399622 true))

(declare-fun e!2824644 () Bool)

(declare-fun b!4533159 () Bool)

(assert (=> b!4533159 (= e!2824644 (forall!10317 (toList!4376 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) lambda!174851))))

(declare-fun bm!316016 () Bool)

(declare-fun call!316021 () Unit!97092)

(assert (=> bm!316016 (= call!316021 (lemmaContainsAllItsOwnKeys!356 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun e!2824646 () Bool)

(assert (=> d!1399622 e!2824646))

(declare-fun res!1888213 () Bool)

(assert (=> d!1399622 (=> (not res!1888213) (not e!2824646))))

(assert (=> d!1399622 (= res!1888213 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174853))))

(declare-fun e!2824645 () ListMap!3637)

(assert (=> d!1399622 (= lt!1708472 e!2824645)))

(declare-fun c!774096 () Bool)

(assert (=> d!1399622 (= c!774096 ((_ is Nil!50712) (t!357798 (_2!28880 lt!1707605))))))

(assert (=> d!1399622 (noDuplicateKeys!1184 (t!357798 (_2!28880 lt!1707605)))))

(assert (=> d!1399622 (= (addToMapMapFromBucket!711 (t!357798 (_2!28880 lt!1707605)) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) lt!1708472)))

(assert (=> b!4533160 (= e!2824645 lt!1708468)))

(declare-fun lt!1708464 () ListMap!3637)

(assert (=> b!4533160 (= lt!1708464 (+!1582 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(assert (=> b!4533160 (= lt!1708468 (addToMapMapFromBucket!711 (t!357798 (t!357798 (_2!28880 lt!1707605))) (+!1582 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) (h!56583 (t!357798 (_2!28880 lt!1707605))))))))

(declare-fun lt!1708475 () Unit!97092)

(assert (=> b!4533160 (= lt!1708475 call!316021)))

(declare-fun call!316023 () Bool)

(assert (=> b!4533160 call!316023))

(declare-fun lt!1708473 () Unit!97092)

(assert (=> b!4533160 (= lt!1708473 lt!1708475)))

(assert (=> b!4533160 (forall!10317 (toList!4376 lt!1708464) lambda!174851)))

(declare-fun lt!1708480 () Unit!97092)

(declare-fun Unit!97232 () Unit!97092)

(assert (=> b!4533160 (= lt!1708480 Unit!97232)))

(assert (=> b!4533160 (forall!10317 (t!357798 (t!357798 (_2!28880 lt!1707605))) lambda!174851)))

(declare-fun lt!1708466 () Unit!97092)

(declare-fun Unit!97233 () Unit!97092)

(assert (=> b!4533160 (= lt!1708466 Unit!97233)))

(declare-fun lt!1708469 () Unit!97092)

(declare-fun Unit!97234 () Unit!97092)

(assert (=> b!4533160 (= lt!1708469 Unit!97234)))

(declare-fun lt!1708461 () Unit!97092)

(assert (=> b!4533160 (= lt!1708461 (forallContained!2573 (toList!4376 lt!1708464) lambda!174851 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(assert (=> b!4533160 (contains!13479 lt!1708464 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708471 () Unit!97092)

(declare-fun Unit!97235 () Unit!97092)

(assert (=> b!4533160 (= lt!1708471 Unit!97235)))

(assert (=> b!4533160 (contains!13479 lt!1708468 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708467 () Unit!97092)

(declare-fun Unit!97236 () Unit!97092)

(assert (=> b!4533160 (= lt!1708467 Unit!97236)))

(declare-fun call!316022 () Bool)

(assert (=> b!4533160 call!316022))

(declare-fun lt!1708463 () Unit!97092)

(declare-fun Unit!97237 () Unit!97092)

(assert (=> b!4533160 (= lt!1708463 Unit!97237)))

(assert (=> b!4533160 (forall!10317 (toList!4376 lt!1708464) lambda!174851)))

(declare-fun lt!1708460 () Unit!97092)

(declare-fun Unit!97238 () Unit!97092)

(assert (=> b!4533160 (= lt!1708460 Unit!97238)))

(declare-fun lt!1708477 () Unit!97092)

(declare-fun Unit!97239 () Unit!97092)

(assert (=> b!4533160 (= lt!1708477 Unit!97239)))

(declare-fun lt!1708462 () Unit!97092)

(assert (=> b!4533160 (= lt!1708462 (addForallContainsKeyThenBeforeAdding!356 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))) lt!1708468 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))) (_2!28879 (h!56583 (t!357798 (_2!28880 lt!1707605))))))))

(assert (=> b!4533160 (forall!10317 (toList!4376 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) lambda!174851)))

(declare-fun lt!1708476 () Unit!97092)

(assert (=> b!4533160 (= lt!1708476 lt!1708462)))

(assert (=> b!4533160 (forall!10317 (toList!4376 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) lambda!174851)))

(declare-fun lt!1708478 () Unit!97092)

(declare-fun Unit!97240 () Unit!97092)

(assert (=> b!4533160 (= lt!1708478 Unit!97240)))

(declare-fun res!1888215 () Bool)

(assert (=> b!4533160 (= res!1888215 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174851))))

(assert (=> b!4533160 (=> (not res!1888215) (not e!2824644))))

(assert (=> b!4533160 e!2824644))

(declare-fun lt!1708470 () Unit!97092)

(declare-fun Unit!97241 () Unit!97092)

(assert (=> b!4533160 (= lt!1708470 Unit!97241)))

(assert (=> b!4533161 (= e!2824645 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1708465 () Unit!97092)

(assert (=> b!4533161 (= lt!1708465 call!316021)))

(assert (=> b!4533161 call!316022))

(declare-fun lt!1708474 () Unit!97092)

(assert (=> b!4533161 (= lt!1708474 lt!1708465)))

(assert (=> b!4533161 call!316023))

(declare-fun lt!1708479 () Unit!97092)

(declare-fun Unit!97242 () Unit!97092)

(assert (=> b!4533161 (= lt!1708479 Unit!97242)))

(declare-fun bm!316017 () Bool)

(assert (=> bm!316017 (= call!316023 (forall!10317 (toList!4376 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (ite c!774096 lambda!174848 lambda!174850)))))

(declare-fun b!4533162 () Bool)

(assert (=> b!4533162 (= e!2824646 (invariantList!1035 (toList!4376 lt!1708472)))))

(declare-fun b!4533163 () Bool)

(declare-fun res!1888214 () Bool)

(assert (=> b!4533163 (=> (not res!1888214) (not e!2824646))))

(assert (=> b!4533163 (= res!1888214 (forall!10317 (toList!4376 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) lambda!174853))))

(declare-fun bm!316018 () Bool)

(assert (=> bm!316018 (= call!316022 (forall!10317 (ite c!774096 (toList!4376 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (t!357798 (_2!28880 lt!1707605))) (ite c!774096 lambda!174848 lambda!174851)))))

(assert (= (and d!1399622 c!774096) b!4533161))

(assert (= (and d!1399622 (not c!774096)) b!4533160))

(assert (= (and b!4533160 res!1888215) b!4533159))

(assert (= (or b!4533161 b!4533160) bm!316018))

(assert (= (or b!4533161 b!4533160) bm!316017))

(assert (= (or b!4533161 b!4533160) bm!316016))

(assert (= (and d!1399622 res!1888213) b!4533163))

(assert (= (and b!4533163 res!1888214) b!4533162))

(declare-fun m!5292659 () Bool)

(assert (=> b!4533160 m!5292659))

(assert (=> b!4533160 m!5291469))

(declare-fun m!5292661 () Bool)

(assert (=> b!4533160 m!5292661))

(declare-fun m!5292663 () Bool)

(assert (=> b!4533160 m!5292663))

(declare-fun m!5292665 () Bool)

(assert (=> b!4533160 m!5292665))

(assert (=> b!4533160 m!5291469))

(declare-fun m!5292667 () Bool)

(assert (=> b!4533160 m!5292667))

(declare-fun m!5292669 () Bool)

(assert (=> b!4533160 m!5292669))

(declare-fun m!5292671 () Bool)

(assert (=> b!4533160 m!5292671))

(declare-fun m!5292673 () Bool)

(assert (=> b!4533160 m!5292673))

(assert (=> b!4533160 m!5292663))

(assert (=> b!4533160 m!5292661))

(declare-fun m!5292675 () Bool)

(assert (=> b!4533160 m!5292675))

(declare-fun m!5292677 () Bool)

(assert (=> b!4533160 m!5292677))

(assert (=> b!4533160 m!5292665))

(declare-fun m!5292679 () Bool)

(assert (=> b!4533163 m!5292679))

(declare-fun m!5292681 () Bool)

(assert (=> bm!316017 m!5292681))

(assert (=> b!4533159 m!5292663))

(declare-fun m!5292683 () Bool)

(assert (=> b!4533162 m!5292683))

(assert (=> bm!316016 m!5291469))

(declare-fun m!5292685 () Bool)

(assert (=> bm!316016 m!5292685))

(declare-fun m!5292687 () Bool)

(assert (=> d!1399622 m!5292687))

(assert (=> d!1399622 m!5291663))

(declare-fun m!5292689 () Bool)

(assert (=> bm!316018 m!5292689))

(assert (=> b!4532469 d!1399622))

(declare-fun d!1399632 () Bool)

(declare-fun res!1888220 () Bool)

(declare-fun e!2824652 () Bool)

(assert (=> d!1399632 (=> res!1888220 e!2824652)))

(assert (=> d!1399632 (= res!1888220 ((_ is Nil!50712) (toList!4376 lt!1707612)))))

(assert (=> d!1399632 (= (forall!10317 (toList!4376 lt!1707612) lambda!174766) e!2824652)))

(declare-fun b!4533172 () Bool)

(declare-fun e!2824653 () Bool)

(assert (=> b!4533172 (= e!2824652 e!2824653)))

(declare-fun res!1888221 () Bool)

(assert (=> b!4533172 (=> (not res!1888221) (not e!2824653))))

(assert (=> b!4533172 (= res!1888221 (dynLambda!21197 lambda!174766 (h!56583 (toList!4376 lt!1707612))))))

(declare-fun b!4533173 () Bool)

(assert (=> b!4533173 (= e!2824653 (forall!10317 (t!357798 (toList!4376 lt!1707612)) lambda!174766))))

(assert (= (and d!1399632 (not res!1888220)) b!4533172))

(assert (= (and b!4533172 res!1888221) b!4533173))

(declare-fun b_lambda!156845 () Bool)

(assert (=> (not b_lambda!156845) (not b!4533172)))

(declare-fun m!5292691 () Bool)

(assert (=> b!4533172 m!5292691))

(declare-fun m!5292693 () Bool)

(assert (=> b!4533173 m!5292693))

(assert (=> b!4532469 d!1399632))

(declare-fun d!1399634 () Bool)

(declare-fun res!1888222 () Bool)

(declare-fun e!2824654 () Bool)

(assert (=> d!1399634 (=> res!1888222 e!2824654)))

(assert (=> d!1399634 (= res!1888222 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1399634 (= (forall!10317 (_2!28880 lt!1707605) lambda!174766) e!2824654)))

(declare-fun b!4533174 () Bool)

(declare-fun e!2824655 () Bool)

(assert (=> b!4533174 (= e!2824654 e!2824655)))

(declare-fun res!1888223 () Bool)

(assert (=> b!4533174 (=> (not res!1888223) (not e!2824655))))

(assert (=> b!4533174 (= res!1888223 (dynLambda!21197 lambda!174766 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun b!4533175 () Bool)

(assert (=> b!4533175 (= e!2824655 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174766))))

(assert (= (and d!1399634 (not res!1888222)) b!4533174))

(assert (= (and b!4533174 res!1888223) b!4533175))

(declare-fun b_lambda!156847 () Bool)

(assert (=> (not b_lambda!156847) (not b!4533174)))

(assert (=> b!4533174 m!5292533))

(assert (=> b!4533175 m!5291481))

(assert (=> b!4532469 d!1399634))

(assert (=> d!1399302 d!1399490))

(declare-fun d!1399636 () Bool)

(assert (=> d!1399636 (= (get!16648 lt!1708101) (v!44826 lt!1708101))))

(assert (=> b!4532551 d!1399636))

(declare-fun d!1399638 () Bool)

(declare-fun lt!1708504 () Bool)

(assert (=> d!1399638 (= lt!1708504 (select (content!8412 (keys!17636 lt!1707612)) key!3287))))

(declare-fun e!2824656 () Bool)

(assert (=> d!1399638 (= lt!1708504 e!2824656)))

(declare-fun res!1888225 () Bool)

(assert (=> d!1399638 (=> (not res!1888225) (not e!2824656))))

(assert (=> d!1399638 (= res!1888225 ((_ is Cons!50715) (keys!17636 lt!1707612)))))

(assert (=> d!1399638 (= (contains!13483 (keys!17636 lt!1707612) key!3287) lt!1708504)))

(declare-fun b!4533176 () Bool)

(declare-fun e!2824657 () Bool)

(assert (=> b!4533176 (= e!2824656 e!2824657)))

(declare-fun res!1888224 () Bool)

(assert (=> b!4533176 (=> res!1888224 e!2824657)))

(assert (=> b!4533176 (= res!1888224 (= (h!56588 (keys!17636 lt!1707612)) key!3287))))

(declare-fun b!4533177 () Bool)

(assert (=> b!4533177 (= e!2824657 (contains!13483 (t!357801 (keys!17636 lt!1707612)) key!3287))))

(assert (= (and d!1399638 res!1888225) b!4533176))

(assert (= (and b!4533176 (not res!1888224)) b!4533177))

(assert (=> d!1399638 m!5291029))

(assert (=> d!1399638 m!5291035))

(declare-fun m!5292695 () Bool)

(assert (=> d!1399638 m!5292695))

(declare-fun m!5292697 () Bool)

(assert (=> b!4533177 m!5292697))

(assert (=> b!4532518 d!1399638))

(assert (=> b!4532518 d!1399566))

(declare-fun d!1399640 () Bool)

(declare-fun lt!1708505 () Bool)

(assert (=> d!1399640 (= lt!1708505 (select (content!8413 (toList!4375 lm!1477)) (h!56584 (toList!4375 lm!1477))))))

(declare-fun e!2824658 () Bool)

(assert (=> d!1399640 (= lt!1708505 e!2824658)))

(declare-fun res!1888227 () Bool)

(assert (=> d!1399640 (=> (not res!1888227) (not e!2824658))))

(assert (=> d!1399640 (= res!1888227 ((_ is Cons!50713) (toList!4375 lm!1477)))))

(assert (=> d!1399640 (= (contains!13480 (toList!4375 lm!1477) (h!56584 (toList!4375 lm!1477))) lt!1708505)))

(declare-fun b!4533178 () Bool)

(declare-fun e!2824659 () Bool)

(assert (=> b!4533178 (= e!2824658 e!2824659)))

(declare-fun res!1888226 () Bool)

(assert (=> b!4533178 (=> res!1888226 e!2824659)))

(assert (=> b!4533178 (= res!1888226 (= (h!56584 (toList!4375 lm!1477)) (h!56584 (toList!4375 lm!1477))))))

(declare-fun b!4533179 () Bool)

(assert (=> b!4533179 (= e!2824659 (contains!13480 (t!357799 (toList!4375 lm!1477)) (h!56584 (toList!4375 lm!1477))))))

(assert (= (and d!1399640 res!1888227) b!4533178))

(assert (= (and b!4533178 (not res!1888226)) b!4533179))

(assert (=> d!1399640 m!5291531))

(declare-fun m!5292699 () Bool)

(assert (=> d!1399640 m!5292699))

(declare-fun m!5292701 () Bool)

(assert (=> b!4533179 m!5292701))

(assert (=> b!4532564 d!1399640))

(declare-fun d!1399642 () Bool)

(assert (=> d!1399642 (= (tail!7778 (toList!4375 lm!1477)) (t!357799 (toList!4375 lm!1477)))))

(assert (=> d!1399260 d!1399642))

(declare-fun d!1399644 () Bool)

(declare-fun lt!1708506 () Bool)

(assert (=> d!1399644 (= lt!1708506 (select (content!8413 (toList!4375 lt!1707800)) lt!1707605))))

(declare-fun e!2824660 () Bool)

(assert (=> d!1399644 (= lt!1708506 e!2824660)))

(declare-fun res!1888229 () Bool)

(assert (=> d!1399644 (=> (not res!1888229) (not e!2824660))))

(assert (=> d!1399644 (= res!1888229 ((_ is Cons!50713) (toList!4375 lt!1707800)))))

(assert (=> d!1399644 (= (contains!13480 (toList!4375 lt!1707800) lt!1707605) lt!1708506)))

(declare-fun b!4533180 () Bool)

(declare-fun e!2824661 () Bool)

(assert (=> b!4533180 (= e!2824660 e!2824661)))

(declare-fun res!1888228 () Bool)

(assert (=> b!4533180 (=> res!1888228 e!2824661)))

(assert (=> b!4533180 (= res!1888228 (= (h!56584 (toList!4375 lt!1707800)) lt!1707605))))

(declare-fun b!4533181 () Bool)

(assert (=> b!4533181 (= e!2824661 (contains!13480 (t!357799 (toList!4375 lt!1707800)) lt!1707605))))

(assert (= (and d!1399644 res!1888229) b!4533180))

(assert (= (and b!4533180 (not res!1888228)) b!4533181))

(declare-fun m!5292703 () Bool)

(assert (=> d!1399644 m!5292703))

(declare-fun m!5292705 () Bool)

(assert (=> d!1399644 m!5292705))

(declare-fun m!5292707 () Bool)

(assert (=> b!4533181 m!5292707))

(assert (=> b!4532266 d!1399644))

(declare-fun d!1399646 () Bool)

(assert (=> d!1399646 (eq!641 (extractMap!1240 (toList!4375 (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178)))) (-!410 (extractMap!1240 (toList!4375 lt!1707598)) key!3287))))

(assert (=> d!1399646 true))

(declare-fun _$8!686 () Unit!97092)

(assert (=> d!1399646 (= (choose!29758 lt!1707598 hash!344 newBucket!178 key!3287 hashF!1107) _$8!686)))

(declare-fun bs!868970 () Bool)

(assert (= bs!868970 d!1399646))

(assert (=> bs!868970 m!5291075))

(assert (=> bs!868970 m!5291071))

(assert (=> bs!868970 m!5291071))

(assert (=> bs!868970 m!5291067))

(assert (=> bs!868970 m!5291073))

(assert (=> bs!868970 m!5290683))

(assert (=> bs!868970 m!5290683))

(assert (=> bs!868970 m!5291067))

(assert (=> d!1399160 d!1399646))

(declare-fun d!1399664 () Bool)

(declare-fun e!2824677 () Bool)

(assert (=> d!1399664 e!2824677))

(declare-fun res!1888240 () Bool)

(assert (=> d!1399664 (=> (not res!1888240) (not e!2824677))))

(declare-fun lt!1708534 () ListMap!3637)

(assert (=> d!1399664 (= res!1888240 (not (contains!13479 lt!1708534 key!3287)))))

(assert (=> d!1399664 (= lt!1708534 (ListMap!3638 (removePresrvNoDuplicatedKeys!159 (toList!4376 (extractMap!1240 (toList!4375 lt!1707598))) key!3287)))))

(assert (=> d!1399664 (= (-!410 (extractMap!1240 (toList!4375 lt!1707598)) key!3287) lt!1708534)))

(declare-fun b!4533208 () Bool)

(assert (=> b!4533208 (= e!2824677 (= ((_ map and) (content!8412 (keys!17636 (extractMap!1240 (toList!4375 lt!1707598)))) ((_ map not) (store ((as const (Array K!12100 Bool)) false) key!3287 true))) (content!8412 (keys!17636 lt!1708534))))))

(assert (= (and d!1399664 res!1888240) b!4533208))

(declare-fun m!5292773 () Bool)

(assert (=> d!1399664 m!5292773))

(declare-fun m!5292775 () Bool)

(assert (=> d!1399664 m!5292775))

(assert (=> b!4533208 m!5291027))

(assert (=> b!4533208 m!5290683))

(declare-fun m!5292777 () Bool)

(assert (=> b!4533208 m!5292777))

(declare-fun m!5292779 () Bool)

(assert (=> b!4533208 m!5292779))

(declare-fun m!5292781 () Bool)

(assert (=> b!4533208 m!5292781))

(assert (=> b!4533208 m!5292779))

(assert (=> b!4533208 m!5292777))

(declare-fun m!5292783 () Bool)

(assert (=> b!4533208 m!5292783))

(assert (=> d!1399160 d!1399664))

(declare-fun bs!868979 () Bool)

(declare-fun d!1399666 () Bool)

(assert (= bs!868979 (and d!1399666 d!1399286)))

(declare-fun lambda!174858 () Int)

(assert (=> bs!868979 (= lambda!174858 lambda!174770)))

(declare-fun bs!868982 () Bool)

(assert (= bs!868982 (and d!1399666 d!1399308)))

(assert (=> bs!868982 (= lambda!174858 lambda!174775)))

(declare-fun bs!868984 () Bool)

(assert (= bs!868984 (and d!1399666 start!449480)))

(assert (=> bs!868984 (= lambda!174858 lambda!174635)))

(declare-fun bs!868986 () Bool)

(assert (= bs!868986 (and d!1399666 d!1399266)))

(assert (=> bs!868986 (= lambda!174858 lambda!174760)))

(declare-fun bs!868988 () Bool)

(assert (= bs!868988 (and d!1399666 d!1399148)))

(assert (=> bs!868988 (= lambda!174858 lambda!174693)))

(declare-fun bs!868990 () Bool)

(assert (= bs!868990 (and d!1399666 d!1399114)))

(assert (=> bs!868990 (= lambda!174858 lambda!174691)))

(declare-fun bs!868992 () Bool)

(assert (= bs!868992 (and d!1399666 d!1399098)))

(assert (=> bs!868992 (= lambda!174858 lambda!174681)))

(declare-fun bs!868994 () Bool)

(assert (= bs!868994 (and d!1399666 b!4532128)))

(assert (=> bs!868994 (not (= lambda!174858 lambda!174636))))

(declare-fun bs!868996 () Bool)

(assert (= bs!868996 (and d!1399666 d!1399160)))

(assert (=> bs!868996 (= lambda!174858 lambda!174703)))

(declare-fun bs!868998 () Bool)

(assert (= bs!868998 (and d!1399666 d!1399272)))

(assert (=> bs!868998 (= lambda!174858 lambda!174763)))

(declare-fun bs!869000 () Bool)

(assert (= bs!869000 (and d!1399666 d!1399306)))

(assert (=> bs!869000 (= lambda!174858 lambda!174774)))

(declare-fun bs!869002 () Bool)

(assert (= bs!869002 (and d!1399666 d!1399304)))

(assert (=> bs!869002 (= lambda!174858 lambda!174771)))

(declare-fun bs!869004 () Bool)

(assert (= bs!869004 (and d!1399666 d!1399104)))

(assert (=> bs!869004 (not (= lambda!174858 lambda!174684))))

(declare-fun bs!869005 () Bool)

(assert (= bs!869005 (and d!1399666 d!1399174)))

(assert (=> bs!869005 (= lambda!174858 lambda!174706)))

(declare-fun lt!1708535 () ListMap!3637)

(assert (=> d!1399666 (invariantList!1035 (toList!4376 lt!1708535))))

(declare-fun e!2824678 () ListMap!3637)

(assert (=> d!1399666 (= lt!1708535 e!2824678)))

(declare-fun c!774107 () Bool)

(assert (=> d!1399666 (= c!774107 ((_ is Cons!50713) (toList!4375 (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178)))))))

(assert (=> d!1399666 (forall!10315 (toList!4375 (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178))) lambda!174858)))

(assert (=> d!1399666 (= (extractMap!1240 (toList!4375 (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178)))) lt!1708535)))

(declare-fun b!4533209 () Bool)

(assert (=> b!4533209 (= e!2824678 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178))))) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178)))))))))

(declare-fun b!4533210 () Bool)

(assert (=> b!4533210 (= e!2824678 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399666 c!774107) b!4533209))

(assert (= (and d!1399666 (not c!774107)) b!4533210))

(declare-fun m!5292785 () Bool)

(assert (=> d!1399666 m!5292785))

(declare-fun m!5292787 () Bool)

(assert (=> d!1399666 m!5292787))

(declare-fun m!5292789 () Bool)

(assert (=> b!4533209 m!5292789))

(assert (=> b!4533209 m!5292789))

(declare-fun m!5292791 () Bool)

(assert (=> b!4533209 m!5292791))

(assert (=> d!1399160 d!1399666))

(assert (=> d!1399160 d!1399308))

(declare-fun d!1399668 () Bool)

(declare-fun e!2824679 () Bool)

(assert (=> d!1399668 e!2824679))

(declare-fun res!1888242 () Bool)

(assert (=> d!1399668 (=> (not res!1888242) (not e!2824679))))

(declare-fun lt!1708538 () ListLongMap!3007)

(assert (=> d!1399668 (= res!1888242 (contains!13481 lt!1708538 (_1!28880 (tuple2!51173 hash!344 newBucket!178))))))

(declare-fun lt!1708537 () List!50837)

(assert (=> d!1399668 (= lt!1708538 (ListLongMap!3008 lt!1708537))))

(declare-fun lt!1708536 () Unit!97092)

(declare-fun lt!1708539 () Unit!97092)

(assert (=> d!1399668 (= lt!1708536 lt!1708539)))

(assert (=> d!1399668 (= (getValueByKey!1129 lt!1708537 (_1!28880 (tuple2!51173 hash!344 newBucket!178))) (Some!11170 (_2!28880 (tuple2!51173 hash!344 newBucket!178))))))

(assert (=> d!1399668 (= lt!1708539 (lemmaContainsTupThenGetReturnValue!706 lt!1708537 (_1!28880 (tuple2!51173 hash!344 newBucket!178)) (_2!28880 (tuple2!51173 hash!344 newBucket!178))))))

(assert (=> d!1399668 (= lt!1708537 (insertStrictlySorted!426 (toList!4375 lt!1707598) (_1!28880 (tuple2!51173 hash!344 newBucket!178)) (_2!28880 (tuple2!51173 hash!344 newBucket!178))))))

(assert (=> d!1399668 (= (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178)) lt!1708538)))

(declare-fun b!4533211 () Bool)

(declare-fun res!1888241 () Bool)

(assert (=> b!4533211 (=> (not res!1888241) (not e!2824679))))

(assert (=> b!4533211 (= res!1888241 (= (getValueByKey!1129 (toList!4375 lt!1708538) (_1!28880 (tuple2!51173 hash!344 newBucket!178))) (Some!11170 (_2!28880 (tuple2!51173 hash!344 newBucket!178)))))))

(declare-fun b!4533212 () Bool)

(assert (=> b!4533212 (= e!2824679 (contains!13480 (toList!4375 lt!1708538) (tuple2!51173 hash!344 newBucket!178)))))

(assert (= (and d!1399668 res!1888242) b!4533211))

(assert (= (and b!4533211 res!1888241) b!4533212))

(declare-fun m!5292793 () Bool)

(assert (=> d!1399668 m!5292793))

(declare-fun m!5292795 () Bool)

(assert (=> d!1399668 m!5292795))

(declare-fun m!5292797 () Bool)

(assert (=> d!1399668 m!5292797))

(declare-fun m!5292799 () Bool)

(assert (=> d!1399668 m!5292799))

(declare-fun m!5292801 () Bool)

(assert (=> b!4533211 m!5292801))

(declare-fun m!5292803 () Bool)

(assert (=> b!4533212 m!5292803))

(assert (=> d!1399160 d!1399668))

(declare-fun d!1399670 () Bool)

(assert (=> d!1399670 (= (eq!641 (extractMap!1240 (toList!4375 (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178)))) (-!410 (extractMap!1240 (toList!4375 lt!1707598)) key!3287)) (= (content!8411 (toList!4376 (extractMap!1240 (toList!4375 (+!1580 lt!1707598 (tuple2!51173 hash!344 newBucket!178)))))) (content!8411 (toList!4376 (-!410 (extractMap!1240 (toList!4375 lt!1707598)) key!3287)))))))

(declare-fun bs!869017 () Bool)

(assert (= bs!869017 d!1399670))

(declare-fun m!5292805 () Bool)

(assert (=> bs!869017 m!5292805))

(declare-fun m!5292807 () Bool)

(assert (=> bs!869017 m!5292807))

(assert (=> d!1399160 d!1399670))

(declare-fun d!1399672 () Bool)

(declare-fun res!1888243 () Bool)

(declare-fun e!2824680 () Bool)

(assert (=> d!1399672 (=> res!1888243 e!2824680)))

(assert (=> d!1399672 (= res!1888243 ((_ is Nil!50713) (toList!4375 lt!1707598)))))

(assert (=> d!1399672 (= (forall!10315 (toList!4375 lt!1707598) lambda!174703) e!2824680)))

(declare-fun b!4533213 () Bool)

(declare-fun e!2824681 () Bool)

(assert (=> b!4533213 (= e!2824680 e!2824681)))

(declare-fun res!1888244 () Bool)

(assert (=> b!4533213 (=> (not res!1888244) (not e!2824681))))

(assert (=> b!4533213 (= res!1888244 (dynLambda!21195 lambda!174703 (h!56584 (toList!4375 lt!1707598))))))

(declare-fun b!4533214 () Bool)

(assert (=> b!4533214 (= e!2824681 (forall!10315 (t!357799 (toList!4375 lt!1707598)) lambda!174703))))

(assert (= (and d!1399672 (not res!1888243)) b!4533213))

(assert (= (and b!4533213 res!1888244) b!4533214))

(declare-fun b_lambda!156851 () Bool)

(assert (=> (not b_lambda!156851) (not b!4533213)))

(declare-fun m!5292809 () Bool)

(assert (=> b!4533213 m!5292809))

(declare-fun m!5292811 () Bool)

(assert (=> b!4533214 m!5292811))

(assert (=> d!1399160 d!1399672))

(declare-fun d!1399674 () Bool)

(declare-fun res!1888245 () Bool)

(declare-fun e!2824682 () Bool)

(assert (=> d!1399674 (=> res!1888245 e!2824682)))

(assert (=> d!1399674 (= res!1888245 ((_ is Nil!50712) (toList!4376 lt!1707612)))))

(assert (=> d!1399674 (= (forall!10317 (toList!4376 lt!1707612) lambda!174767) e!2824682)))

(declare-fun b!4533215 () Bool)

(declare-fun e!2824683 () Bool)

(assert (=> b!4533215 (= e!2824682 e!2824683)))

(declare-fun res!1888246 () Bool)

(assert (=> b!4533215 (=> (not res!1888246) (not e!2824683))))

(assert (=> b!4533215 (= res!1888246 (dynLambda!21197 lambda!174767 (h!56583 (toList!4376 lt!1707612))))))

(declare-fun b!4533216 () Bool)

(assert (=> b!4533216 (= e!2824683 (forall!10317 (t!357798 (toList!4376 lt!1707612)) lambda!174767))))

(assert (= (and d!1399674 (not res!1888245)) b!4533215))

(assert (= (and b!4533215 res!1888246) b!4533216))

(declare-fun b_lambda!156853 () Bool)

(assert (=> (not b_lambda!156853) (not b!4533215)))

(declare-fun m!5292813 () Bool)

(assert (=> b!4533215 m!5292813))

(declare-fun m!5292815 () Bool)

(assert (=> b!4533216 m!5292815))

(assert (=> b!4532472 d!1399674))

(declare-fun d!1399676 () Bool)

(assert (=> d!1399676 (= (invariantList!1035 (toList!4376 lt!1708089)) (noDuplicatedKeys!273 (toList!4376 lt!1708089)))))

(declare-fun bs!869026 () Bool)

(assert (= bs!869026 d!1399676))

(declare-fun m!5292817 () Bool)

(assert (=> bs!869026 m!5292817))

(assert (=> d!1399308 d!1399676))

(declare-fun d!1399678 () Bool)

(declare-fun res!1888247 () Bool)

(declare-fun e!2824684 () Bool)

(assert (=> d!1399678 (=> res!1888247 e!2824684)))

(assert (=> d!1399678 (= res!1888247 ((_ is Nil!50713) (toList!4375 lt!1707598)))))

(assert (=> d!1399678 (= (forall!10315 (toList!4375 lt!1707598) lambda!174775) e!2824684)))

(declare-fun b!4533217 () Bool)

(declare-fun e!2824685 () Bool)

(assert (=> b!4533217 (= e!2824684 e!2824685)))

(declare-fun res!1888248 () Bool)

(assert (=> b!4533217 (=> (not res!1888248) (not e!2824685))))

(assert (=> b!4533217 (= res!1888248 (dynLambda!21195 lambda!174775 (h!56584 (toList!4375 lt!1707598))))))

(declare-fun b!4533218 () Bool)

(assert (=> b!4533218 (= e!2824685 (forall!10315 (t!357799 (toList!4375 lt!1707598)) lambda!174775))))

(assert (= (and d!1399678 (not res!1888247)) b!4533217))

(assert (= (and b!4533217 res!1888248) b!4533218))

(declare-fun b_lambda!156855 () Bool)

(assert (=> (not b_lambda!156855) (not b!4533217)))

(declare-fun m!5292819 () Bool)

(assert (=> b!4533217 m!5292819))

(declare-fun m!5292821 () Bool)

(assert (=> b!4533218 m!5292821))

(assert (=> d!1399308 d!1399678))

(declare-fun lt!1708540 () Bool)

(declare-fun d!1399680 () Bool)

(assert (=> d!1399680 (= lt!1708540 (select (content!8413 (toList!4375 lm!1477)) (tuple2!51173 hash!344 lt!1707613)))))

(declare-fun e!2824686 () Bool)

(assert (=> d!1399680 (= lt!1708540 e!2824686)))

(declare-fun res!1888250 () Bool)

(assert (=> d!1399680 (=> (not res!1888250) (not e!2824686))))

(assert (=> d!1399680 (= res!1888250 ((_ is Cons!50713) (toList!4375 lm!1477)))))

(assert (=> d!1399680 (= (contains!13480 (toList!4375 lm!1477) (tuple2!51173 hash!344 lt!1707613)) lt!1708540)))

(declare-fun b!4533219 () Bool)

(declare-fun e!2824687 () Bool)

(assert (=> b!4533219 (= e!2824686 e!2824687)))

(declare-fun res!1888249 () Bool)

(assert (=> b!4533219 (=> res!1888249 e!2824687)))

(assert (=> b!4533219 (= res!1888249 (= (h!56584 (toList!4375 lm!1477)) (tuple2!51173 hash!344 lt!1707613)))))

(declare-fun b!4533220 () Bool)

(assert (=> b!4533220 (= e!2824687 (contains!13480 (t!357799 (toList!4375 lm!1477)) (tuple2!51173 hash!344 lt!1707613)))))

(assert (= (and d!1399680 res!1888250) b!4533219))

(assert (= (and b!4533219 (not res!1888249)) b!4533220))

(assert (=> d!1399680 m!5291531))

(declare-fun m!5292823 () Bool)

(assert (=> d!1399680 m!5292823))

(declare-fun m!5292825 () Bool)

(assert (=> b!4533220 m!5292825))

(assert (=> d!1399292 d!1399680))

(declare-fun d!1399682 () Bool)

(assert (=> d!1399682 (contains!13480 (toList!4375 lm!1477) (tuple2!51173 hash!344 lt!1707613))))

(assert (=> d!1399682 true))

(declare-fun _$14!1200 () Unit!97092)

(assert (=> d!1399682 (= (choose!29768 (toList!4375 lm!1477) hash!344 lt!1707613) _$14!1200)))

(declare-fun bs!869045 () Bool)

(assert (= bs!869045 d!1399682))

(assert (=> bs!869045 m!5291527))

(assert (=> d!1399292 d!1399682))

(declare-fun d!1399684 () Bool)

(declare-fun res!1888255 () Bool)

(declare-fun e!2824692 () Bool)

(assert (=> d!1399684 (=> res!1888255 e!2824692)))

(assert (=> d!1399684 (= res!1888255 (or ((_ is Nil!50713) (toList!4375 lm!1477)) ((_ is Nil!50713) (t!357799 (toList!4375 lm!1477)))))))

(assert (=> d!1399684 (= (isStrictlySorted!449 (toList!4375 lm!1477)) e!2824692)))

(declare-fun b!4533225 () Bool)

(declare-fun e!2824693 () Bool)

(assert (=> b!4533225 (= e!2824692 e!2824693)))

(declare-fun res!1888256 () Bool)

(assert (=> b!4533225 (=> (not res!1888256) (not e!2824693))))

(assert (=> b!4533225 (= res!1888256 (bvslt (_1!28880 (h!56584 (toList!4375 lm!1477))) (_1!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))))))

(declare-fun b!4533226 () Bool)

(assert (=> b!4533226 (= e!2824693 (isStrictlySorted!449 (t!357799 (toList!4375 lm!1477))))))

(assert (= (and d!1399684 (not res!1888255)) b!4533225))

(assert (= (and b!4533225 res!1888256) b!4533226))

(declare-fun m!5292827 () Bool)

(assert (=> b!4533226 m!5292827))

(assert (=> d!1399292 d!1399684))

(declare-fun d!1399686 () Bool)

(declare-fun e!2824694 () Bool)

(assert (=> d!1399686 e!2824694))

(declare-fun res!1888258 () Bool)

(assert (=> d!1399686 (=> (not res!1888258) (not e!2824694))))

(declare-fun lt!1708541 () ListMap!3637)

(assert (=> d!1399686 (= res!1888258 (contains!13479 lt!1708541 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708542 () List!50836)

(assert (=> d!1399686 (= lt!1708541 (ListMap!3638 lt!1708542))))

(declare-fun lt!1708544 () Unit!97092)

(declare-fun lt!1708543 () Unit!97092)

(assert (=> d!1399686 (= lt!1708544 lt!1708543)))

(assert (=> d!1399686 (= (getValueByKey!1128 lt!1708542 (_1!28879 (h!56583 (_2!28880 lt!1707605)))) (Some!11169 (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399686 (= lt!1708543 (lemmaContainsTupThenGetReturnValue!708 lt!1708542 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399686 (= lt!1708542 (insertNoDuplicatedKeys!290 (toList!4376 lt!1707600) (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399686 (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708541)))

(declare-fun b!4533227 () Bool)

(declare-fun res!1888257 () Bool)

(assert (=> b!4533227 (=> (not res!1888257) (not e!2824694))))

(assert (=> b!4533227 (= res!1888257 (= (getValueByKey!1128 (toList!4376 lt!1708541) (_1!28879 (h!56583 (_2!28880 lt!1707605)))) (Some!11169 (_2!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533228 () Bool)

(assert (=> b!4533228 (= e!2824694 (contains!13485 (toList!4376 lt!1708541) (h!56583 (_2!28880 lt!1707605))))))

(assert (= (and d!1399686 res!1888258) b!4533227))

(assert (= (and b!4533227 res!1888257) b!4533228))

(declare-fun m!5292829 () Bool)

(assert (=> d!1399686 m!5292829))

(declare-fun m!5292831 () Bool)

(assert (=> d!1399686 m!5292831))

(declare-fun m!5292833 () Bool)

(assert (=> d!1399686 m!5292833))

(declare-fun m!5292835 () Bool)

(assert (=> d!1399686 m!5292835))

(declare-fun m!5292837 () Bool)

(assert (=> b!4533227 m!5292837))

(declare-fun m!5292839 () Bool)

(assert (=> b!4533228 m!5292839))

(assert (=> b!4532427 d!1399686))

(declare-fun bs!869053 () Bool)

(declare-fun d!1399688 () Bool)

(assert (= bs!869053 (and d!1399688 b!4532427)))

(declare-fun lambda!174861 () Int)

(assert (=> bs!869053 (= (= lt!1707972 lt!1707600) (= lambda!174861 lambda!174753))))

(declare-fun bs!869054 () Bool)

(assert (= bs!869054 (and d!1399688 d!1399580)))

(assert (=> bs!869054 (not (= lambda!174861 lambda!174838))))

(declare-fun bs!869055 () Bool)

(assert (= bs!869055 (and d!1399688 b!4533161)))

(assert (=> bs!869055 (= (= lt!1707972 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174861 lambda!174848))))

(declare-fun bs!869056 () Bool)

(assert (= bs!869056 (and d!1399688 b!4532449)))

(assert (=> bs!869056 (= (= lt!1707972 lt!1708008) (= lambda!174861 lambda!174758))))

(declare-fun bs!869057 () Bool)

(assert (= bs!869057 (and d!1399688 d!1399090)))

(assert (=> bs!869057 (not (= lambda!174861 lambda!174643))))

(declare-fun bs!869058 () Bool)

(assert (= bs!869058 (and d!1399688 d!1399264)))

(assert (=> bs!869058 (= (= lt!1707972 lt!1708012) (= lambda!174861 lambda!174759))))

(declare-fun bs!869059 () Bool)

(assert (= bs!869059 (and d!1399688 b!4533160)))

(assert (=> bs!869059 (= (= lt!1707972 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174861 lambda!174850))))

(declare-fun bs!869060 () Bool)

(assert (= bs!869060 (and d!1399688 d!1399182)))

(assert (=> bs!869060 (= (= lt!1707972 lt!1707976) (= lambda!174861 lambda!174755))))

(declare-fun bs!869061 () Bool)

(assert (= bs!869061 (and d!1399688 b!4532428)))

(assert (=> bs!869061 (= (= lt!1707972 lt!1707600) (= lambda!174861 lambda!174752))))

(declare-fun bs!869062 () Bool)

(assert (= bs!869062 (and d!1399688 b!4532450)))

(assert (=> bs!869062 (= (= lt!1707972 lt!1707628) (= lambda!174861 lambda!174756))))

(declare-fun bs!869063 () Bool)

(assert (= bs!869063 (and d!1399688 b!4532469)))

(assert (=> bs!869063 (= (= lt!1707972 lt!1708034) (= lambda!174861 lambda!174766))))

(assert (=> bs!869059 (= (= lt!1707972 lt!1708468) (= lambda!174861 lambda!174851))))

(assert (=> bs!869053 (= lambda!174861 lambda!174754)))

(declare-fun bs!869064 () Bool)

(assert (= bs!869064 (and d!1399688 b!4532128)))

(assert (=> bs!869064 (not (= lambda!174861 lambda!174637))))

(assert (=> bs!869063 (= (= lt!1707972 lt!1707612) (= lambda!174861 lambda!174765))))

(declare-fun bs!869065 () Bool)

(assert (= bs!869065 (and d!1399688 d!1399278)))

(assert (=> bs!869065 (= (= lt!1707972 lt!1708038) (= lambda!174861 lambda!174767))))

(declare-fun bs!869066 () Bool)

(assert (= bs!869066 (and d!1399688 b!4532470)))

(assert (=> bs!869066 (= (= lt!1707972 lt!1707612) (= lambda!174861 lambda!174764))))

(declare-fun bs!869067 () Bool)

(assert (= bs!869067 (and d!1399688 d!1399618)))

(assert (=> bs!869067 (= (= lt!1707972 lt!1708034) (= lambda!174861 lambda!174847))))

(declare-fun bs!869068 () Bool)

(assert (= bs!869068 (and d!1399688 d!1399622)))

(assert (=> bs!869068 (= (= lt!1707972 lt!1708472) (= lambda!174861 lambda!174853))))

(assert (=> bs!869056 (= (= lt!1707972 lt!1707628) (= lambda!174861 lambda!174757))))

(assert (=> d!1399688 true))

(assert (=> d!1399688 (forall!10317 (toList!4376 lt!1707600) lambda!174861)))

(declare-fun lt!1708545 () Unit!97092)

(assert (=> d!1399688 (= lt!1708545 (choose!29783 lt!1707600 lt!1707972 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399688 (forall!10317 (toList!4376 (+!1582 lt!1707600 (tuple2!51171 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))) lambda!174861)))

(assert (=> d!1399688 (= (addForallContainsKeyThenBeforeAdding!356 lt!1707600 lt!1707972 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))) lt!1708545)))

(declare-fun bs!869072 () Bool)

(assert (= bs!869072 d!1399688))

(declare-fun m!5292841 () Bool)

(assert (=> bs!869072 m!5292841))

(declare-fun m!5292843 () Bool)

(assert (=> bs!869072 m!5292843))

(declare-fun m!5292845 () Bool)

(assert (=> bs!869072 m!5292845))

(declare-fun m!5292847 () Bool)

(assert (=> bs!869072 m!5292847))

(assert (=> b!4532427 d!1399688))

(declare-fun bs!869082 () Bool)

(declare-fun b!4533231 () Bool)

(assert (= bs!869082 (and b!4533231 b!4532427)))

(declare-fun lambda!174863 () Int)

(assert (=> bs!869082 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174863 lambda!174753))))

(declare-fun bs!869085 () Bool)

(assert (= bs!869085 (and b!4533231 d!1399580)))

(assert (=> bs!869085 (not (= lambda!174863 lambda!174838))))

(declare-fun bs!869087 () Bool)

(assert (= bs!869087 (and b!4533231 b!4533161)))

(assert (=> bs!869087 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174863 lambda!174848))))

(declare-fun bs!869089 () Bool)

(assert (= bs!869089 (and b!4533231 b!4532449)))

(assert (=> bs!869089 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708008) (= lambda!174863 lambda!174758))))

(declare-fun bs!869091 () Bool)

(assert (= bs!869091 (and b!4533231 d!1399090)))

(assert (=> bs!869091 (not (= lambda!174863 lambda!174643))))

(declare-fun bs!869093 () Bool)

(assert (= bs!869093 (and b!4533231 d!1399264)))

(assert (=> bs!869093 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708012) (= lambda!174863 lambda!174759))))

(declare-fun bs!869096 () Bool)

(assert (= bs!869096 (and b!4533231 d!1399688)))

(assert (=> bs!869096 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174863 lambda!174861))))

(declare-fun bs!869101 () Bool)

(assert (= bs!869101 (and b!4533231 b!4533160)))

(assert (=> bs!869101 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174863 lambda!174850))))

(declare-fun bs!869104 () Bool)

(assert (= bs!869104 (and b!4533231 d!1399182)))

(assert (=> bs!869104 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707976) (= lambda!174863 lambda!174755))))

(declare-fun bs!869106 () Bool)

(assert (= bs!869106 (and b!4533231 b!4532428)))

(assert (=> bs!869106 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174863 lambda!174752))))

(declare-fun bs!869108 () Bool)

(assert (= bs!869108 (and b!4533231 b!4532450)))

(assert (=> bs!869108 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174863 lambda!174756))))

(declare-fun bs!869110 () Bool)

(assert (= bs!869110 (and b!4533231 b!4532469)))

(assert (=> bs!869110 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174863 lambda!174766))))

(assert (=> bs!869101 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708468) (= lambda!174863 lambda!174851))))

(assert (=> bs!869082 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174863 lambda!174754))))

(declare-fun bs!869116 () Bool)

(assert (= bs!869116 (and b!4533231 b!4532128)))

(assert (=> bs!869116 (not (= lambda!174863 lambda!174637))))

(assert (=> bs!869110 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174863 lambda!174765))))

(declare-fun bs!869117 () Bool)

(assert (= bs!869117 (and b!4533231 d!1399278)))

(assert (=> bs!869117 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708038) (= lambda!174863 lambda!174767))))

(declare-fun bs!869118 () Bool)

(assert (= bs!869118 (and b!4533231 b!4532470)))

(assert (=> bs!869118 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174863 lambda!174764))))

(declare-fun bs!869119 () Bool)

(assert (= bs!869119 (and b!4533231 d!1399618)))

(assert (=> bs!869119 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174863 lambda!174847))))

(declare-fun bs!869120 () Bool)

(assert (= bs!869120 (and b!4533231 d!1399622)))

(assert (=> bs!869120 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708472) (= lambda!174863 lambda!174853))))

(assert (=> bs!869089 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174863 lambda!174757))))

(assert (=> b!4533231 true))

(declare-fun bs!869121 () Bool)

(declare-fun b!4533230 () Bool)

(assert (= bs!869121 (and b!4533230 b!4532427)))

(declare-fun lambda!174864 () Int)

(assert (=> bs!869121 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174864 lambda!174753))))

(declare-fun bs!869122 () Bool)

(assert (= bs!869122 (and b!4533230 d!1399580)))

(assert (=> bs!869122 (not (= lambda!174864 lambda!174838))))

(declare-fun bs!869123 () Bool)

(assert (= bs!869123 (and b!4533230 b!4533161)))

(assert (=> bs!869123 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174864 lambda!174848))))

(declare-fun bs!869124 () Bool)

(assert (= bs!869124 (and b!4533230 b!4532449)))

(assert (=> bs!869124 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708008) (= lambda!174864 lambda!174758))))

(declare-fun bs!869125 () Bool)

(assert (= bs!869125 (and b!4533230 d!1399090)))

(assert (=> bs!869125 (not (= lambda!174864 lambda!174643))))

(declare-fun bs!869126 () Bool)

(assert (= bs!869126 (and b!4533230 d!1399264)))

(assert (=> bs!869126 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708012) (= lambda!174864 lambda!174759))))

(declare-fun bs!869127 () Bool)

(assert (= bs!869127 (and b!4533230 d!1399688)))

(assert (=> bs!869127 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174864 lambda!174861))))

(declare-fun bs!869129 () Bool)

(assert (= bs!869129 (and b!4533230 b!4533160)))

(assert (=> bs!869129 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174864 lambda!174850))))

(declare-fun bs!869131 () Bool)

(assert (= bs!869131 (and b!4533230 d!1399182)))

(assert (=> bs!869131 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707976) (= lambda!174864 lambda!174755))))

(declare-fun bs!869133 () Bool)

(assert (= bs!869133 (and b!4533230 b!4532428)))

(assert (=> bs!869133 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174864 lambda!174752))))

(declare-fun bs!869137 () Bool)

(assert (= bs!869137 (and b!4533230 b!4532450)))

(assert (=> bs!869137 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174864 lambda!174756))))

(declare-fun bs!869140 () Bool)

(assert (= bs!869140 (and b!4533230 b!4532469)))

(assert (=> bs!869140 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174864 lambda!174766))))

(assert (=> bs!869129 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708468) (= lambda!174864 lambda!174851))))

(assert (=> bs!869121 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174864 lambda!174754))))

(declare-fun bs!869143 () Bool)

(assert (= bs!869143 (and b!4533230 b!4532128)))

(assert (=> bs!869143 (not (= lambda!174864 lambda!174637))))

(assert (=> bs!869140 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174864 lambda!174765))))

(declare-fun bs!869147 () Bool)

(assert (= bs!869147 (and b!4533230 d!1399278)))

(assert (=> bs!869147 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708038) (= lambda!174864 lambda!174767))))

(declare-fun bs!869149 () Bool)

(assert (= bs!869149 (and b!4533230 b!4533231)))

(assert (=> bs!869149 (= lambda!174864 lambda!174863)))

(declare-fun bs!869151 () Bool)

(assert (= bs!869151 (and b!4533230 b!4532470)))

(assert (=> bs!869151 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174864 lambda!174764))))

(declare-fun bs!869153 () Bool)

(assert (= bs!869153 (and b!4533230 d!1399618)))

(assert (=> bs!869153 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174864 lambda!174847))))

(declare-fun bs!869154 () Bool)

(assert (= bs!869154 (and b!4533230 d!1399622)))

(assert (=> bs!869154 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708472) (= lambda!174864 lambda!174853))))

(assert (=> bs!869124 (= (= (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174864 lambda!174757))))

(assert (=> b!4533230 true))

(declare-fun lambda!174866 () Int)

(declare-fun lt!1708554 () ListMap!3637)

(assert (=> bs!869121 (= (= lt!1708554 lt!1707600) (= lambda!174866 lambda!174753))))

(assert (=> b!4533230 (= (= lt!1708554 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174866 lambda!174864))))

(assert (=> bs!869122 (not (= lambda!174866 lambda!174838))))

(assert (=> bs!869123 (= (= lt!1708554 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174866 lambda!174848))))

(assert (=> bs!869124 (= (= lt!1708554 lt!1708008) (= lambda!174866 lambda!174758))))

(assert (=> bs!869125 (not (= lambda!174866 lambda!174643))))

(assert (=> bs!869126 (= (= lt!1708554 lt!1708012) (= lambda!174866 lambda!174759))))

(assert (=> bs!869127 (= (= lt!1708554 lt!1707972) (= lambda!174866 lambda!174861))))

(assert (=> bs!869129 (= (= lt!1708554 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174866 lambda!174850))))

(assert (=> bs!869131 (= (= lt!1708554 lt!1707976) (= lambda!174866 lambda!174755))))

(assert (=> bs!869133 (= (= lt!1708554 lt!1707600) (= lambda!174866 lambda!174752))))

(assert (=> bs!869137 (= (= lt!1708554 lt!1707628) (= lambda!174866 lambda!174756))))

(assert (=> bs!869140 (= (= lt!1708554 lt!1708034) (= lambda!174866 lambda!174766))))

(assert (=> bs!869129 (= (= lt!1708554 lt!1708468) (= lambda!174866 lambda!174851))))

(assert (=> bs!869121 (= (= lt!1708554 lt!1707972) (= lambda!174866 lambda!174754))))

(assert (=> bs!869143 (not (= lambda!174866 lambda!174637))))

(assert (=> bs!869140 (= (= lt!1708554 lt!1707612) (= lambda!174866 lambda!174765))))

(assert (=> bs!869147 (= (= lt!1708554 lt!1708038) (= lambda!174866 lambda!174767))))

(assert (=> bs!869149 (= (= lt!1708554 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174866 lambda!174863))))

(assert (=> bs!869151 (= (= lt!1708554 lt!1707612) (= lambda!174866 lambda!174764))))

(assert (=> bs!869153 (= (= lt!1708554 lt!1708034) (= lambda!174866 lambda!174847))))

(assert (=> bs!869154 (= (= lt!1708554 lt!1708472) (= lambda!174866 lambda!174853))))

(assert (=> bs!869124 (= (= lt!1708554 lt!1707628) (= lambda!174866 lambda!174757))))

(assert (=> b!4533230 true))

(declare-fun bs!869159 () Bool)

(declare-fun d!1399690 () Bool)

(assert (= bs!869159 (and d!1399690 b!4532427)))

(declare-fun lambda!174867 () Int)

(declare-fun lt!1708558 () ListMap!3637)

(assert (=> bs!869159 (= (= lt!1708558 lt!1707600) (= lambda!174867 lambda!174753))))

(declare-fun bs!869160 () Bool)

(assert (= bs!869160 (and d!1399690 b!4533230)))

(assert (=> bs!869160 (= (= lt!1708558 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174867 lambda!174864))))

(declare-fun bs!869161 () Bool)

(assert (= bs!869161 (and d!1399690 d!1399580)))

(assert (=> bs!869161 (not (= lambda!174867 lambda!174838))))

(declare-fun bs!869162 () Bool)

(assert (= bs!869162 (and d!1399690 b!4533161)))

(assert (=> bs!869162 (= (= lt!1708558 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174867 lambda!174848))))

(declare-fun bs!869163 () Bool)

(assert (= bs!869163 (and d!1399690 b!4532449)))

(assert (=> bs!869163 (= (= lt!1708558 lt!1708008) (= lambda!174867 lambda!174758))))

(declare-fun bs!869164 () Bool)

(assert (= bs!869164 (and d!1399690 d!1399090)))

(assert (=> bs!869164 (not (= lambda!174867 lambda!174643))))

(declare-fun bs!869165 () Bool)

(assert (= bs!869165 (and d!1399690 d!1399264)))

(assert (=> bs!869165 (= (= lt!1708558 lt!1708012) (= lambda!174867 lambda!174759))))

(declare-fun bs!869167 () Bool)

(assert (= bs!869167 (and d!1399690 d!1399688)))

(assert (=> bs!869167 (= (= lt!1708558 lt!1707972) (= lambda!174867 lambda!174861))))

(assert (=> bs!869160 (= (= lt!1708558 lt!1708554) (= lambda!174867 lambda!174866))))

(declare-fun bs!869168 () Bool)

(assert (= bs!869168 (and d!1399690 b!4533160)))

(assert (=> bs!869168 (= (= lt!1708558 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174867 lambda!174850))))

(declare-fun bs!869169 () Bool)

(assert (= bs!869169 (and d!1399690 d!1399182)))

(assert (=> bs!869169 (= (= lt!1708558 lt!1707976) (= lambda!174867 lambda!174755))))

(declare-fun bs!869170 () Bool)

(assert (= bs!869170 (and d!1399690 b!4532428)))

(assert (=> bs!869170 (= (= lt!1708558 lt!1707600) (= lambda!174867 lambda!174752))))

(declare-fun bs!869171 () Bool)

(assert (= bs!869171 (and d!1399690 b!4532450)))

(assert (=> bs!869171 (= (= lt!1708558 lt!1707628) (= lambda!174867 lambda!174756))))

(declare-fun bs!869172 () Bool)

(assert (= bs!869172 (and d!1399690 b!4532469)))

(assert (=> bs!869172 (= (= lt!1708558 lt!1708034) (= lambda!174867 lambda!174766))))

(assert (=> bs!869168 (= (= lt!1708558 lt!1708468) (= lambda!174867 lambda!174851))))

(assert (=> bs!869159 (= (= lt!1708558 lt!1707972) (= lambda!174867 lambda!174754))))

(declare-fun bs!869174 () Bool)

(assert (= bs!869174 (and d!1399690 b!4532128)))

(assert (=> bs!869174 (not (= lambda!174867 lambda!174637))))

(assert (=> bs!869172 (= (= lt!1708558 lt!1707612) (= lambda!174867 lambda!174765))))

(declare-fun bs!869176 () Bool)

(assert (= bs!869176 (and d!1399690 d!1399278)))

(assert (=> bs!869176 (= (= lt!1708558 lt!1708038) (= lambda!174867 lambda!174767))))

(declare-fun bs!869178 () Bool)

(assert (= bs!869178 (and d!1399690 b!4533231)))

(assert (=> bs!869178 (= (= lt!1708558 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174867 lambda!174863))))

(declare-fun bs!869179 () Bool)

(assert (= bs!869179 (and d!1399690 b!4532470)))

(assert (=> bs!869179 (= (= lt!1708558 lt!1707612) (= lambda!174867 lambda!174764))))

(declare-fun bs!869180 () Bool)

(assert (= bs!869180 (and d!1399690 d!1399618)))

(assert (=> bs!869180 (= (= lt!1708558 lt!1708034) (= lambda!174867 lambda!174847))))

(declare-fun bs!869181 () Bool)

(assert (= bs!869181 (and d!1399690 d!1399622)))

(assert (=> bs!869181 (= (= lt!1708558 lt!1708472) (= lambda!174867 lambda!174853))))

(assert (=> bs!869163 (= (= lt!1708558 lt!1707628) (= lambda!174867 lambda!174757))))

(assert (=> d!1399690 true))

(declare-fun e!2824695 () Bool)

(declare-fun b!4533229 () Bool)

(assert (=> b!4533229 (= e!2824695 (forall!10317 (toList!4376 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) lambda!174866))))

(declare-fun bm!316028 () Bool)

(declare-fun call!316033 () Unit!97092)

(assert (=> bm!316028 (= call!316033 (lemmaContainsAllItsOwnKeys!356 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun e!2824697 () Bool)

(assert (=> d!1399690 e!2824697))

(declare-fun res!1888259 () Bool)

(assert (=> d!1399690 (=> (not res!1888259) (not e!2824697))))

(assert (=> d!1399690 (= res!1888259 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174867))))

(declare-fun e!2824696 () ListMap!3637)

(assert (=> d!1399690 (= lt!1708558 e!2824696)))

(declare-fun c!774108 () Bool)

(assert (=> d!1399690 (= c!774108 ((_ is Nil!50712) (t!357798 (_2!28880 lt!1707605))))))

(assert (=> d!1399690 (noDuplicateKeys!1184 (t!357798 (_2!28880 lt!1707605)))))

(assert (=> d!1399690 (= (addToMapMapFromBucket!711 (t!357798 (_2!28880 lt!1707605)) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) lt!1708558)))

(assert (=> b!4533230 (= e!2824696 lt!1708554)))

(declare-fun lt!1708550 () ListMap!3637)

(assert (=> b!4533230 (= lt!1708550 (+!1582 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(assert (=> b!4533230 (= lt!1708554 (addToMapMapFromBucket!711 (t!357798 (t!357798 (_2!28880 lt!1707605))) (+!1582 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) (h!56583 (t!357798 (_2!28880 lt!1707605))))))))

(declare-fun lt!1708561 () Unit!97092)

(assert (=> b!4533230 (= lt!1708561 call!316033)))

(declare-fun call!316035 () Bool)

(assert (=> b!4533230 call!316035))

(declare-fun lt!1708559 () Unit!97092)

(assert (=> b!4533230 (= lt!1708559 lt!1708561)))

(assert (=> b!4533230 (forall!10317 (toList!4376 lt!1708550) lambda!174866)))

(declare-fun lt!1708566 () Unit!97092)

(declare-fun Unit!97264 () Unit!97092)

(assert (=> b!4533230 (= lt!1708566 Unit!97264)))

(assert (=> b!4533230 (forall!10317 (t!357798 (t!357798 (_2!28880 lt!1707605))) lambda!174866)))

(declare-fun lt!1708552 () Unit!97092)

(declare-fun Unit!97265 () Unit!97092)

(assert (=> b!4533230 (= lt!1708552 Unit!97265)))

(declare-fun lt!1708555 () Unit!97092)

(declare-fun Unit!97266 () Unit!97092)

(assert (=> b!4533230 (= lt!1708555 Unit!97266)))

(declare-fun lt!1708547 () Unit!97092)

(assert (=> b!4533230 (= lt!1708547 (forallContained!2573 (toList!4376 lt!1708550) lambda!174866 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(assert (=> b!4533230 (contains!13479 lt!1708550 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708557 () Unit!97092)

(declare-fun Unit!97267 () Unit!97092)

(assert (=> b!4533230 (= lt!1708557 Unit!97267)))

(assert (=> b!4533230 (contains!13479 lt!1708554 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708553 () Unit!97092)

(declare-fun Unit!97268 () Unit!97092)

(assert (=> b!4533230 (= lt!1708553 Unit!97268)))

(declare-fun call!316034 () Bool)

(assert (=> b!4533230 call!316034))

(declare-fun lt!1708549 () Unit!97092)

(declare-fun Unit!97269 () Unit!97092)

(assert (=> b!4533230 (= lt!1708549 Unit!97269)))

(assert (=> b!4533230 (forall!10317 (toList!4376 lt!1708550) lambda!174866)))

(declare-fun lt!1708546 () Unit!97092)

(declare-fun Unit!97270 () Unit!97092)

(assert (=> b!4533230 (= lt!1708546 Unit!97270)))

(declare-fun lt!1708563 () Unit!97092)

(declare-fun Unit!97271 () Unit!97092)

(assert (=> b!4533230 (= lt!1708563 Unit!97271)))

(declare-fun lt!1708548 () Unit!97092)

(assert (=> b!4533230 (= lt!1708548 (addForallContainsKeyThenBeforeAdding!356 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))) lt!1708554 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))) (_2!28879 (h!56583 (t!357798 (_2!28880 lt!1707605))))))))

(assert (=> b!4533230 (forall!10317 (toList!4376 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) lambda!174866)))

(declare-fun lt!1708562 () Unit!97092)

(assert (=> b!4533230 (= lt!1708562 lt!1708548)))

(assert (=> b!4533230 (forall!10317 (toList!4376 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) lambda!174866)))

(declare-fun lt!1708564 () Unit!97092)

(declare-fun Unit!97272 () Unit!97092)

(assert (=> b!4533230 (= lt!1708564 Unit!97272)))

(declare-fun res!1888261 () Bool)

(assert (=> b!4533230 (= res!1888261 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174866))))

(assert (=> b!4533230 (=> (not res!1888261) (not e!2824695))))

(assert (=> b!4533230 e!2824695))

(declare-fun lt!1708556 () Unit!97092)

(declare-fun Unit!97273 () Unit!97092)

(assert (=> b!4533230 (= lt!1708556 Unit!97273)))

(assert (=> b!4533231 (= e!2824696 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1708551 () Unit!97092)

(assert (=> b!4533231 (= lt!1708551 call!316033)))

(assert (=> b!4533231 call!316034))

(declare-fun lt!1708560 () Unit!97092)

(assert (=> b!4533231 (= lt!1708560 lt!1708551)))

(assert (=> b!4533231 call!316035))

(declare-fun lt!1708565 () Unit!97092)

(declare-fun Unit!97274 () Unit!97092)

(assert (=> b!4533231 (= lt!1708565 Unit!97274)))

(declare-fun bm!316029 () Bool)

(assert (=> bm!316029 (= call!316035 (forall!10317 (toList!4376 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (ite c!774108 lambda!174863 lambda!174864)))))

(declare-fun b!4533232 () Bool)

(assert (=> b!4533232 (= e!2824697 (invariantList!1035 (toList!4376 lt!1708558)))))

(declare-fun b!4533233 () Bool)

(declare-fun res!1888260 () Bool)

(assert (=> b!4533233 (=> (not res!1888260) (not e!2824697))))

(assert (=> b!4533233 (= res!1888260 (forall!10317 (toList!4376 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) lambda!174867))))

(declare-fun bm!316030 () Bool)

(assert (=> bm!316030 (= call!316034 (forall!10317 (ite c!774108 (toList!4376 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (t!357798 (_2!28880 lt!1707605))) (ite c!774108 lambda!174863 lambda!174866)))))

(assert (= (and d!1399690 c!774108) b!4533231))

(assert (= (and d!1399690 (not c!774108)) b!4533230))

(assert (= (and b!4533230 res!1888261) b!4533229))

(assert (= (or b!4533231 b!4533230) bm!316030))

(assert (= (or b!4533231 b!4533230) bm!316029))

(assert (= (or b!4533231 b!4533230) bm!316028))

(assert (= (and d!1399690 res!1888259) b!4533233))

(assert (= (and b!4533233 res!1888260) b!4533232))

(declare-fun m!5292939 () Bool)

(assert (=> b!4533230 m!5292939))

(assert (=> b!4533230 m!5291357))

(declare-fun m!5292941 () Bool)

(assert (=> b!4533230 m!5292941))

(declare-fun m!5292943 () Bool)

(assert (=> b!4533230 m!5292943))

(declare-fun m!5292945 () Bool)

(assert (=> b!4533230 m!5292945))

(assert (=> b!4533230 m!5291357))

(declare-fun m!5292947 () Bool)

(assert (=> b!4533230 m!5292947))

(declare-fun m!5292949 () Bool)

(assert (=> b!4533230 m!5292949))

(declare-fun m!5292953 () Bool)

(assert (=> b!4533230 m!5292953))

(declare-fun m!5292955 () Bool)

(assert (=> b!4533230 m!5292955))

(assert (=> b!4533230 m!5292943))

(assert (=> b!4533230 m!5292941))

(declare-fun m!5292957 () Bool)

(assert (=> b!4533230 m!5292957))

(declare-fun m!5292959 () Bool)

(assert (=> b!4533230 m!5292959))

(assert (=> b!4533230 m!5292945))

(declare-fun m!5292961 () Bool)

(assert (=> b!4533233 m!5292961))

(declare-fun m!5292963 () Bool)

(assert (=> bm!316029 m!5292963))

(assert (=> b!4533229 m!5292943))

(declare-fun m!5292965 () Bool)

(assert (=> b!4533232 m!5292965))

(assert (=> bm!316028 m!5291357))

(declare-fun m!5292967 () Bool)

(assert (=> bm!316028 m!5292967))

(declare-fun m!5292971 () Bool)

(assert (=> d!1399690 m!5292971))

(assert (=> d!1399690 m!5291663))

(declare-fun m!5292979 () Bool)

(assert (=> bm!316030 m!5292979))

(assert (=> b!4532427 d!1399690))

(declare-fun b!4533277 () Bool)

(declare-fun e!2824726 () Bool)

(declare-fun e!2824728 () Bool)

(assert (=> b!4533277 (= e!2824726 e!2824728)))

(declare-fun res!1888280 () Bool)

(assert (=> b!4533277 (=> (not res!1888280) (not e!2824728))))

(assert (=> b!4533277 (= res!1888280 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707968) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533278 () Bool)

(declare-fun e!2824731 () List!50839)

(assert (=> b!4533278 (= e!2824731 (getKeysList!483 (toList!4376 lt!1707968)))))

(declare-fun b!4533279 () Bool)

(assert (=> b!4533279 (= e!2824731 (keys!17636 lt!1707968))))

(declare-fun b!4533280 () Bool)

(assert (=> b!4533280 (= e!2824728 (contains!13483 (keys!17636 lt!1707968) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun b!4533281 () Bool)

(declare-fun e!2824730 () Bool)

(assert (=> b!4533281 (= e!2824730 (not (contains!13483 (keys!17636 lt!1707968) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533282 () Bool)

(declare-fun e!2824729 () Unit!97092)

(declare-fun lt!1708580 () Unit!97092)

(assert (=> b!4533282 (= e!2824729 lt!1708580)))

(declare-fun lt!1708581 () Unit!97092)

(assert (=> b!4533282 (= lt!1708581 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1707968) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4533282 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707968) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708578 () Unit!97092)

(assert (=> b!4533282 (= lt!1708578 lt!1708581)))

(assert (=> b!4533282 (= lt!1708580 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1707968) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun call!316039 () Bool)

(assert (=> b!4533282 call!316039))

(declare-fun b!4533283 () Bool)

(declare-fun e!2824727 () Unit!97092)

(assert (=> b!4533283 (= e!2824729 e!2824727)))

(declare-fun c!774123 () Bool)

(assert (=> b!4533283 (= c!774123 call!316039)))

(declare-fun b!4533284 () Bool)

(assert (=> b!4533284 false))

(declare-fun lt!1708576 () Unit!97092)

(declare-fun lt!1708579 () Unit!97092)

(assert (=> b!4533284 (= lt!1708576 lt!1708579)))

(assert (=> b!4533284 (containsKey!1843 (toList!4376 lt!1707968) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4533284 (= lt!1708579 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1707968) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun Unit!97275 () Unit!97092)

(assert (=> b!4533284 (= e!2824727 Unit!97275)))

(declare-fun d!1399738 () Bool)

(assert (=> d!1399738 e!2824726))

(declare-fun res!1888281 () Bool)

(assert (=> d!1399738 (=> res!1888281 e!2824726)))

(assert (=> d!1399738 (= res!1888281 e!2824730)))

(declare-fun res!1888279 () Bool)

(assert (=> d!1399738 (=> (not res!1888279) (not e!2824730))))

(declare-fun lt!1708583 () Bool)

(assert (=> d!1399738 (= res!1888279 (not lt!1708583))))

(declare-fun lt!1708582 () Bool)

(assert (=> d!1399738 (= lt!1708583 lt!1708582)))

(declare-fun lt!1708577 () Unit!97092)

(assert (=> d!1399738 (= lt!1708577 e!2824729)))

(declare-fun c!774124 () Bool)

(assert (=> d!1399738 (= c!774124 lt!1708582)))

(assert (=> d!1399738 (= lt!1708582 (containsKey!1843 (toList!4376 lt!1707968) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399738 (= (contains!13479 lt!1707968 (_1!28879 (h!56583 (_2!28880 lt!1707605)))) lt!1708583)))

(declare-fun b!4533285 () Bool)

(declare-fun Unit!97276 () Unit!97092)

(assert (=> b!4533285 (= e!2824727 Unit!97276)))

(declare-fun bm!316034 () Bool)

(assert (=> bm!316034 (= call!316039 (contains!13483 e!2824731 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun c!774122 () Bool)

(assert (=> bm!316034 (= c!774122 c!774124)))

(assert (= (and d!1399738 c!774124) b!4533282))

(assert (= (and d!1399738 (not c!774124)) b!4533283))

(assert (= (and b!4533283 c!774123) b!4533284))

(assert (= (and b!4533283 (not c!774123)) b!4533285))

(assert (= (or b!4533282 b!4533283) bm!316034))

(assert (= (and bm!316034 c!774122) b!4533278))

(assert (= (and bm!316034 (not c!774122)) b!4533279))

(assert (= (and d!1399738 res!1888279) b!4533281))

(assert (= (and d!1399738 (not res!1888281)) b!4533277))

(assert (= (and b!4533277 res!1888280) b!4533280))

(declare-fun m!5292985 () Bool)

(assert (=> b!4533282 m!5292985))

(declare-fun m!5292989 () Bool)

(assert (=> b!4533282 m!5292989))

(assert (=> b!4533282 m!5292989))

(declare-fun m!5292993 () Bool)

(assert (=> b!4533282 m!5292993))

(declare-fun m!5292997 () Bool)

(assert (=> b!4533282 m!5292997))

(declare-fun m!5292999 () Bool)

(assert (=> b!4533280 m!5292999))

(assert (=> b!4533280 m!5292999))

(declare-fun m!5293003 () Bool)

(assert (=> b!4533280 m!5293003))

(assert (=> b!4533279 m!5292999))

(declare-fun m!5293005 () Bool)

(assert (=> bm!316034 m!5293005))

(assert (=> b!4533281 m!5292999))

(assert (=> b!4533281 m!5292999))

(assert (=> b!4533281 m!5293003))

(declare-fun m!5293007 () Bool)

(assert (=> b!4533284 m!5293007))

(declare-fun m!5293009 () Bool)

(assert (=> b!4533284 m!5293009))

(assert (=> b!4533277 m!5292989))

(assert (=> b!4533277 m!5292989))

(assert (=> b!4533277 m!5292993))

(declare-fun m!5293011 () Bool)

(assert (=> b!4533278 m!5293011))

(assert (=> d!1399738 m!5293007))

(assert (=> b!4532427 d!1399738))

(declare-fun d!1399742 () Bool)

(declare-fun res!1888284 () Bool)

(declare-fun e!2824734 () Bool)

(assert (=> d!1399742 (=> res!1888284 e!2824734)))

(assert (=> d!1399742 (= res!1888284 ((_ is Nil!50712) (toList!4376 lt!1707600)))))

(assert (=> d!1399742 (= (forall!10317 (toList!4376 lt!1707600) lambda!174754) e!2824734)))

(declare-fun b!4533288 () Bool)

(declare-fun e!2824735 () Bool)

(assert (=> b!4533288 (= e!2824734 e!2824735)))

(declare-fun res!1888285 () Bool)

(assert (=> b!4533288 (=> (not res!1888285) (not e!2824735))))

(assert (=> b!4533288 (= res!1888285 (dynLambda!21197 lambda!174754 (h!56583 (toList!4376 lt!1707600))))))

(declare-fun b!4533289 () Bool)

(assert (=> b!4533289 (= e!2824735 (forall!10317 (t!357798 (toList!4376 lt!1707600)) lambda!174754))))

(assert (= (and d!1399742 (not res!1888284)) b!4533288))

(assert (= (and b!4533288 res!1888285) b!4533289))

(declare-fun b_lambda!156867 () Bool)

(assert (=> (not b_lambda!156867) (not b!4533288)))

(declare-fun m!5293017 () Bool)

(assert (=> b!4533288 m!5293017))

(declare-fun m!5293019 () Bool)

(assert (=> b!4533289 m!5293019))

(assert (=> b!4532427 d!1399742))

(declare-fun d!1399748 () Bool)

(declare-fun res!1888288 () Bool)

(declare-fun e!2824738 () Bool)

(assert (=> d!1399748 (=> res!1888288 e!2824738)))

(assert (=> d!1399748 (= res!1888288 ((_ is Nil!50712) (toList!4376 lt!1707968)))))

(assert (=> d!1399748 (= (forall!10317 (toList!4376 lt!1707968) lambda!174754) e!2824738)))

(declare-fun b!4533292 () Bool)

(declare-fun e!2824739 () Bool)

(assert (=> b!4533292 (= e!2824738 e!2824739)))

(declare-fun res!1888289 () Bool)

(assert (=> b!4533292 (=> (not res!1888289) (not e!2824739))))

(assert (=> b!4533292 (= res!1888289 (dynLambda!21197 lambda!174754 (h!56583 (toList!4376 lt!1707968))))))

(declare-fun b!4533293 () Bool)

(assert (=> b!4533293 (= e!2824739 (forall!10317 (t!357798 (toList!4376 lt!1707968)) lambda!174754))))

(assert (= (and d!1399748 (not res!1888288)) b!4533292))

(assert (= (and b!4533292 res!1888289) b!4533293))

(declare-fun b_lambda!156871 () Bool)

(assert (=> (not b_lambda!156871) (not b!4533292)))

(declare-fun m!5293025 () Bool)

(assert (=> b!4533292 m!5293025))

(declare-fun m!5293027 () Bool)

(assert (=> b!4533293 m!5293027))

(assert (=> b!4532427 d!1399748))

(declare-fun b!4533297 () Bool)

(declare-fun e!2824742 () Bool)

(declare-fun e!2824744 () Bool)

(assert (=> b!4533297 (= e!2824742 e!2824744)))

(declare-fun res!1888292 () Bool)

(assert (=> b!4533297 (=> (not res!1888292) (not e!2824744))))

(assert (=> b!4533297 (= res!1888292 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707972) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533298 () Bool)

(declare-fun e!2824747 () List!50839)

(assert (=> b!4533298 (= e!2824747 (getKeysList!483 (toList!4376 lt!1707972)))))

(declare-fun b!4533299 () Bool)

(assert (=> b!4533299 (= e!2824747 (keys!17636 lt!1707972))))

(declare-fun b!4533300 () Bool)

(assert (=> b!4533300 (= e!2824744 (contains!13483 (keys!17636 lt!1707972) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun b!4533301 () Bool)

(declare-fun e!2824746 () Bool)

(assert (=> b!4533301 (= e!2824746 (not (contains!13483 (keys!17636 lt!1707972) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533302 () Bool)

(declare-fun e!2824745 () Unit!97092)

(declare-fun lt!1708592 () Unit!97092)

(assert (=> b!4533302 (= e!2824745 lt!1708592)))

(declare-fun lt!1708593 () Unit!97092)

(assert (=> b!4533302 (= lt!1708593 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1707972) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4533302 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707972) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708590 () Unit!97092)

(assert (=> b!4533302 (= lt!1708590 lt!1708593)))

(assert (=> b!4533302 (= lt!1708592 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1707972) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun call!316040 () Bool)

(assert (=> b!4533302 call!316040))

(declare-fun b!4533303 () Bool)

(declare-fun e!2824743 () Unit!97092)

(assert (=> b!4533303 (= e!2824745 e!2824743)))

(declare-fun c!774127 () Bool)

(assert (=> b!4533303 (= c!774127 call!316040)))

(declare-fun b!4533304 () Bool)

(assert (=> b!4533304 false))

(declare-fun lt!1708588 () Unit!97092)

(declare-fun lt!1708591 () Unit!97092)

(assert (=> b!4533304 (= lt!1708588 lt!1708591)))

(assert (=> b!4533304 (containsKey!1843 (toList!4376 lt!1707972) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4533304 (= lt!1708591 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1707972) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun Unit!97286 () Unit!97092)

(assert (=> b!4533304 (= e!2824743 Unit!97286)))

(declare-fun d!1399752 () Bool)

(assert (=> d!1399752 e!2824742))

(declare-fun res!1888293 () Bool)

(assert (=> d!1399752 (=> res!1888293 e!2824742)))

(assert (=> d!1399752 (= res!1888293 e!2824746)))

(declare-fun res!1888291 () Bool)

(assert (=> d!1399752 (=> (not res!1888291) (not e!2824746))))

(declare-fun lt!1708595 () Bool)

(assert (=> d!1399752 (= res!1888291 (not lt!1708595))))

(declare-fun lt!1708594 () Bool)

(assert (=> d!1399752 (= lt!1708595 lt!1708594)))

(declare-fun lt!1708589 () Unit!97092)

(assert (=> d!1399752 (= lt!1708589 e!2824745)))

(declare-fun c!774128 () Bool)

(assert (=> d!1399752 (= c!774128 lt!1708594)))

(assert (=> d!1399752 (= lt!1708594 (containsKey!1843 (toList!4376 lt!1707972) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1399752 (= (contains!13479 lt!1707972 (_1!28879 (h!56583 (_2!28880 lt!1707605)))) lt!1708595)))

(declare-fun b!4533305 () Bool)

(declare-fun Unit!97288 () Unit!97092)

(assert (=> b!4533305 (= e!2824743 Unit!97288)))

(declare-fun bm!316035 () Bool)

(assert (=> bm!316035 (= call!316040 (contains!13483 e!2824747 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun c!774126 () Bool)

(assert (=> bm!316035 (= c!774126 c!774128)))

(assert (= (and d!1399752 c!774128) b!4533302))

(assert (= (and d!1399752 (not c!774128)) b!4533303))

(assert (= (and b!4533303 c!774127) b!4533304))

(assert (= (and b!4533303 (not c!774127)) b!4533305))

(assert (= (or b!4533302 b!4533303) bm!316035))

(assert (= (and bm!316035 c!774126) b!4533298))

(assert (= (and bm!316035 (not c!774126)) b!4533299))

(assert (= (and d!1399752 res!1888291) b!4533301))

(assert (= (and d!1399752 (not res!1888293)) b!4533297))

(assert (= (and b!4533297 res!1888292) b!4533300))

(declare-fun m!5293037 () Bool)

(assert (=> b!4533302 m!5293037))

(declare-fun m!5293039 () Bool)

(assert (=> b!4533302 m!5293039))

(assert (=> b!4533302 m!5293039))

(declare-fun m!5293041 () Bool)

(assert (=> b!4533302 m!5293041))

(declare-fun m!5293043 () Bool)

(assert (=> b!4533302 m!5293043))

(declare-fun m!5293045 () Bool)

(assert (=> b!4533300 m!5293045))

(assert (=> b!4533300 m!5293045))

(declare-fun m!5293047 () Bool)

(assert (=> b!4533300 m!5293047))

(assert (=> b!4533299 m!5293045))

(declare-fun m!5293049 () Bool)

(assert (=> bm!316035 m!5293049))

(assert (=> b!4533301 m!5293045))

(assert (=> b!4533301 m!5293045))

(assert (=> b!4533301 m!5293047))

(declare-fun m!5293051 () Bool)

(assert (=> b!4533304 m!5293051))

(declare-fun m!5293053 () Bool)

(assert (=> b!4533304 m!5293053))

(assert (=> b!4533297 m!5293039))

(assert (=> b!4533297 m!5293039))

(assert (=> b!4533297 m!5293041))

(declare-fun m!5293055 () Bool)

(assert (=> b!4533298 m!5293055))

(assert (=> d!1399752 m!5293051))

(assert (=> b!4532427 d!1399752))

(declare-fun d!1399756 () Bool)

(declare-fun res!1888294 () Bool)

(declare-fun e!2824748 () Bool)

(assert (=> d!1399756 (=> res!1888294 e!2824748)))

(assert (=> d!1399756 (= res!1888294 ((_ is Nil!50712) (t!357798 (_2!28880 lt!1707605))))))

(assert (=> d!1399756 (= (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174754) e!2824748)))

(declare-fun b!4533306 () Bool)

(declare-fun e!2824749 () Bool)

(assert (=> b!4533306 (= e!2824748 e!2824749)))

(declare-fun res!1888295 () Bool)

(assert (=> b!4533306 (=> (not res!1888295) (not e!2824749))))

(assert (=> b!4533306 (= res!1888295 (dynLambda!21197 lambda!174754 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun b!4533307 () Bool)

(assert (=> b!4533307 (= e!2824749 (forall!10317 (t!357798 (t!357798 (_2!28880 lt!1707605))) lambda!174754))))

(assert (= (and d!1399756 (not res!1888294)) b!4533306))

(assert (= (and b!4533306 res!1888295) b!4533307))

(declare-fun b_lambda!156873 () Bool)

(assert (=> (not b_lambda!156873) (not b!4533306)))

(declare-fun m!5293057 () Bool)

(assert (=> b!4533306 m!5293057))

(declare-fun m!5293059 () Bool)

(assert (=> b!4533307 m!5293059))

(assert (=> b!4532427 d!1399756))

(declare-fun d!1399758 () Bool)

(declare-fun res!1888296 () Bool)

(declare-fun e!2824750 () Bool)

(assert (=> d!1399758 (=> res!1888296 e!2824750)))

(assert (=> d!1399758 (= res!1888296 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1399758 (= (forall!10317 (_2!28880 lt!1707605) lambda!174754) e!2824750)))

(declare-fun b!4533308 () Bool)

(declare-fun e!2824751 () Bool)

(assert (=> b!4533308 (= e!2824750 e!2824751)))

(declare-fun res!1888297 () Bool)

(assert (=> b!4533308 (=> (not res!1888297) (not e!2824751))))

(assert (=> b!4533308 (= res!1888297 (dynLambda!21197 lambda!174754 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun b!4533309 () Bool)

(assert (=> b!4533309 (= e!2824751 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174754))))

(assert (= (and d!1399758 (not res!1888296)) b!4533308))

(assert (= (and b!4533308 res!1888297) b!4533309))

(declare-fun b_lambda!156875 () Bool)

(assert (=> (not b_lambda!156875) (not b!4533308)))

(declare-fun m!5293061 () Bool)

(assert (=> b!4533308 m!5293061))

(assert (=> b!4533309 m!5291369))

(assert (=> b!4532427 d!1399758))

(declare-fun d!1399762 () Bool)

(assert (=> d!1399762 (dynLambda!21197 lambda!174754 (h!56583 (_2!28880 lt!1707605)))))

(declare-fun lt!1708596 () Unit!97092)

(assert (=> d!1399762 (= lt!1708596 (choose!29771 (toList!4376 lt!1707968) lambda!174754 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun e!2824752 () Bool)

(assert (=> d!1399762 e!2824752))

(declare-fun res!1888298 () Bool)

(assert (=> d!1399762 (=> (not res!1888298) (not e!2824752))))

(assert (=> d!1399762 (= res!1888298 (forall!10317 (toList!4376 lt!1707968) lambda!174754))))

(assert (=> d!1399762 (= (forallContained!2573 (toList!4376 lt!1707968) lambda!174754 (h!56583 (_2!28880 lt!1707605))) lt!1708596)))

(declare-fun b!4533310 () Bool)

(assert (=> b!4533310 (= e!2824752 (contains!13485 (toList!4376 lt!1707968) (h!56583 (_2!28880 lt!1707605))))))

(assert (= (and d!1399762 res!1888298) b!4533310))

(declare-fun b_lambda!156877 () Bool)

(assert (=> (not b_lambda!156877) (not d!1399762)))

(assert (=> d!1399762 m!5293061))

(declare-fun m!5293063 () Bool)

(assert (=> d!1399762 m!5293063))

(assert (=> d!1399762 m!5291361))

(declare-fun m!5293065 () Bool)

(assert (=> b!4533310 m!5293065))

(assert (=> b!4532427 d!1399762))

(declare-fun bs!869185 () Bool)

(declare-fun b!4533315 () Bool)

(assert (= bs!869185 (and b!4533315 b!4533230)))

(declare-fun lambda!174868 () Int)

(assert (=> bs!869185 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174868 lambda!174864))))

(declare-fun bs!869186 () Bool)

(assert (= bs!869186 (and b!4533315 d!1399580)))

(assert (=> bs!869186 (not (= lambda!174868 lambda!174838))))

(declare-fun bs!869187 () Bool)

(assert (= bs!869187 (and b!4533315 b!4533161)))

(assert (=> bs!869187 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174868 lambda!174848))))

(declare-fun bs!869188 () Bool)

(assert (= bs!869188 (and b!4533315 b!4532449)))

(assert (=> bs!869188 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708008) (= lambda!174868 lambda!174758))))

(declare-fun bs!869189 () Bool)

(assert (= bs!869189 (and b!4533315 d!1399090)))

(assert (=> bs!869189 (not (= lambda!174868 lambda!174643))))

(declare-fun bs!869190 () Bool)

(assert (= bs!869190 (and b!4533315 d!1399264)))

(assert (=> bs!869190 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708012) (= lambda!174868 lambda!174759))))

(declare-fun bs!869192 () Bool)

(assert (= bs!869192 (and b!4533315 d!1399688)))

(assert (=> bs!869192 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707972) (= lambda!174868 lambda!174861))))

(assert (=> bs!869185 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708554) (= lambda!174868 lambda!174866))))

(declare-fun bs!869193 () Bool)

(assert (= bs!869193 (and b!4533315 b!4533160)))

(assert (=> bs!869193 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174868 lambda!174850))))

(declare-fun bs!869194 () Bool)

(assert (= bs!869194 (and b!4533315 d!1399182)))

(assert (=> bs!869194 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707976) (= lambda!174868 lambda!174755))))

(declare-fun bs!869195 () Bool)

(assert (= bs!869195 (and b!4533315 b!4532428)))

(assert (=> bs!869195 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707600) (= lambda!174868 lambda!174752))))

(declare-fun bs!869196 () Bool)

(assert (= bs!869196 (and b!4533315 b!4532450)))

(assert (=> bs!869196 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707628) (= lambda!174868 lambda!174756))))

(declare-fun bs!869197 () Bool)

(assert (= bs!869197 (and b!4533315 b!4532469)))

(assert (=> bs!869197 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708034) (= lambda!174868 lambda!174766))))

(assert (=> bs!869193 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708468) (= lambda!174868 lambda!174851))))

(declare-fun bs!869198 () Bool)

(assert (= bs!869198 (and b!4533315 b!4532427)))

(assert (=> bs!869198 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707972) (= lambda!174868 lambda!174754))))

(declare-fun bs!869199 () Bool)

(assert (= bs!869199 (and b!4533315 b!4532128)))

(assert (=> bs!869199 (not (= lambda!174868 lambda!174637))))

(assert (=> bs!869197 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707612) (= lambda!174868 lambda!174765))))

(declare-fun bs!869200 () Bool)

(assert (= bs!869200 (and b!4533315 d!1399278)))

(assert (=> bs!869200 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708038) (= lambda!174868 lambda!174767))))

(declare-fun bs!869201 () Bool)

(assert (= bs!869201 (and b!4533315 b!4533231)))

(assert (=> bs!869201 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174868 lambda!174863))))

(declare-fun bs!869202 () Bool)

(assert (= bs!869202 (and b!4533315 b!4532470)))

(assert (=> bs!869202 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707612) (= lambda!174868 lambda!174764))))

(declare-fun bs!869203 () Bool)

(assert (= bs!869203 (and b!4533315 d!1399618)))

(assert (=> bs!869203 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708034) (= lambda!174868 lambda!174847))))

(assert (=> bs!869198 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707600) (= lambda!174868 lambda!174753))))

(declare-fun bs!869204 () Bool)

(assert (= bs!869204 (and b!4533315 d!1399690)))

(assert (=> bs!869204 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708558) (= lambda!174868 lambda!174867))))

(declare-fun bs!869205 () Bool)

(assert (= bs!869205 (and b!4533315 d!1399622)))

(assert (=> bs!869205 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708472) (= lambda!174868 lambda!174853))))

(assert (=> bs!869188 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707628) (= lambda!174868 lambda!174757))))

(assert (=> b!4533315 true))

(declare-fun bs!869212 () Bool)

(declare-fun b!4533314 () Bool)

(assert (= bs!869212 (and b!4533314 b!4533230)))

(declare-fun lambda!174870 () Int)

(assert (=> bs!869212 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174870 lambda!174864))))

(declare-fun bs!869214 () Bool)

(assert (= bs!869214 (and b!4533314 d!1399580)))

(assert (=> bs!869214 (not (= lambda!174870 lambda!174838))))

(declare-fun bs!869216 () Bool)

(assert (= bs!869216 (and b!4533314 b!4533161)))

(assert (=> bs!869216 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174870 lambda!174848))))

(declare-fun bs!869218 () Bool)

(assert (= bs!869218 (and b!4533314 b!4532449)))

(assert (=> bs!869218 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708008) (= lambda!174870 lambda!174758))))

(declare-fun bs!869220 () Bool)

(assert (= bs!869220 (and b!4533314 d!1399090)))

(assert (=> bs!869220 (not (= lambda!174870 lambda!174643))))

(declare-fun bs!869222 () Bool)

(assert (= bs!869222 (and b!4533314 d!1399264)))

(assert (=> bs!869222 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708012) (= lambda!174870 lambda!174759))))

(declare-fun bs!869224 () Bool)

(assert (= bs!869224 (and b!4533314 d!1399688)))

(assert (=> bs!869224 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707972) (= lambda!174870 lambda!174861))))

(assert (=> bs!869212 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708554) (= lambda!174870 lambda!174866))))

(declare-fun bs!869228 () Bool)

(assert (= bs!869228 (and b!4533314 d!1399182)))

(assert (=> bs!869228 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707976) (= lambda!174870 lambda!174755))))

(declare-fun bs!869230 () Bool)

(assert (= bs!869230 (and b!4533314 b!4532428)))

(assert (=> bs!869230 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707600) (= lambda!174870 lambda!174752))))

(declare-fun bs!869232 () Bool)

(assert (= bs!869232 (and b!4533314 b!4532450)))

(assert (=> bs!869232 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707628) (= lambda!174870 lambda!174756))))

(declare-fun bs!869234 () Bool)

(assert (= bs!869234 (and b!4533314 b!4532469)))

(assert (=> bs!869234 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708034) (= lambda!174870 lambda!174766))))

(declare-fun bs!869236 () Bool)

(assert (= bs!869236 (and b!4533314 b!4533160)))

(assert (=> bs!869236 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708468) (= lambda!174870 lambda!174851))))

(declare-fun bs!869238 () Bool)

(assert (= bs!869238 (and b!4533314 b!4532427)))

(assert (=> bs!869238 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707972) (= lambda!174870 lambda!174754))))

(declare-fun bs!869240 () Bool)

(assert (= bs!869240 (and b!4533314 b!4532128)))

(assert (=> bs!869240 (not (= lambda!174870 lambda!174637))))

(assert (=> bs!869234 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707612) (= lambda!174870 lambda!174765))))

(declare-fun bs!869243 () Bool)

(assert (= bs!869243 (and b!4533314 d!1399278)))

(assert (=> bs!869243 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708038) (= lambda!174870 lambda!174767))))

(declare-fun bs!869245 () Bool)

(assert (= bs!869245 (and b!4533314 b!4533231)))

(assert (=> bs!869245 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174870 lambda!174863))))

(declare-fun bs!869246 () Bool)

(assert (= bs!869246 (and b!4533314 b!4532470)))

(assert (=> bs!869246 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707612) (= lambda!174870 lambda!174764))))

(declare-fun bs!869247 () Bool)

(assert (= bs!869247 (and b!4533314 d!1399618)))

(assert (=> bs!869247 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708034) (= lambda!174870 lambda!174847))))

(assert (=> bs!869238 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707600) (= lambda!174870 lambda!174753))))

(declare-fun bs!869249 () Bool)

(assert (= bs!869249 (and b!4533314 d!1399690)))

(assert (=> bs!869249 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708558) (= lambda!174870 lambda!174867))))

(declare-fun bs!869253 () Bool)

(assert (= bs!869253 (and b!4533314 b!4533315)))

(assert (=> bs!869253 (= lambda!174870 lambda!174868)))

(assert (=> bs!869236 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174870 lambda!174850))))

(declare-fun bs!869258 () Bool)

(assert (= bs!869258 (and b!4533314 d!1399622)))

(assert (=> bs!869258 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708472) (= lambda!174870 lambda!174853))))

(assert (=> bs!869218 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1707628) (= lambda!174870 lambda!174757))))

(assert (=> b!4533314 true))

(declare-fun lt!1708605 () ListMap!3637)

(declare-fun lambda!174871 () Int)

(assert (=> bs!869212 (= (= lt!1708605 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174871 lambda!174864))))

(assert (=> bs!869214 (not (= lambda!174871 lambda!174838))))

(assert (=> bs!869216 (= (= lt!1708605 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174871 lambda!174848))))

(assert (=> bs!869218 (= (= lt!1708605 lt!1708008) (= lambda!174871 lambda!174758))))

(assert (=> bs!869222 (= (= lt!1708605 lt!1708012) (= lambda!174871 lambda!174759))))

(assert (=> bs!869224 (= (= lt!1708605 lt!1707972) (= lambda!174871 lambda!174861))))

(assert (=> bs!869212 (= (= lt!1708605 lt!1708554) (= lambda!174871 lambda!174866))))

(assert (=> bs!869228 (= (= lt!1708605 lt!1707976) (= lambda!174871 lambda!174755))))

(assert (=> bs!869230 (= (= lt!1708605 lt!1707600) (= lambda!174871 lambda!174752))))

(assert (=> bs!869232 (= (= lt!1708605 lt!1707628) (= lambda!174871 lambda!174756))))

(assert (=> bs!869234 (= (= lt!1708605 lt!1708034) (= lambda!174871 lambda!174766))))

(assert (=> bs!869236 (= (= lt!1708605 lt!1708468) (= lambda!174871 lambda!174851))))

(assert (=> bs!869238 (= (= lt!1708605 lt!1707972) (= lambda!174871 lambda!174754))))

(assert (=> bs!869240 (not (= lambda!174871 lambda!174637))))

(assert (=> bs!869234 (= (= lt!1708605 lt!1707612) (= lambda!174871 lambda!174765))))

(assert (=> bs!869243 (= (= lt!1708605 lt!1708038) (= lambda!174871 lambda!174767))))

(assert (=> bs!869245 (= (= lt!1708605 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174871 lambda!174863))))

(assert (=> bs!869246 (= (= lt!1708605 lt!1707612) (= lambda!174871 lambda!174764))))

(assert (=> bs!869247 (= (= lt!1708605 lt!1708034) (= lambda!174871 lambda!174847))))

(assert (=> bs!869238 (= (= lt!1708605 lt!1707600) (= lambda!174871 lambda!174753))))

(assert (=> bs!869249 (= (= lt!1708605 lt!1708558) (= lambda!174871 lambda!174867))))

(assert (=> b!4533314 (= (= lt!1708605 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174871 lambda!174870))))

(assert (=> bs!869220 (not (= lambda!174871 lambda!174643))))

(assert (=> bs!869253 (= (= lt!1708605 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174871 lambda!174868))))

(assert (=> bs!869236 (= (= lt!1708605 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174871 lambda!174850))))

(assert (=> bs!869258 (= (= lt!1708605 lt!1708472) (= lambda!174871 lambda!174853))))

(assert (=> bs!869218 (= (= lt!1708605 lt!1707628) (= lambda!174871 lambda!174757))))

(assert (=> b!4533314 true))

(declare-fun bs!869270 () Bool)

(declare-fun d!1399764 () Bool)

(assert (= bs!869270 (and d!1399764 b!4533230)))

(declare-fun lt!1708609 () ListMap!3637)

(declare-fun lambda!174873 () Int)

(assert (=> bs!869270 (= (= lt!1708609 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174873 lambda!174864))))

(declare-fun bs!869272 () Bool)

(assert (= bs!869272 (and d!1399764 d!1399580)))

(assert (=> bs!869272 (not (= lambda!174873 lambda!174838))))

(declare-fun bs!869274 () Bool)

(assert (= bs!869274 (and d!1399764 b!4533314)))

(assert (=> bs!869274 (= (= lt!1708609 lt!1708605) (= lambda!174873 lambda!174871))))

(declare-fun bs!869275 () Bool)

(assert (= bs!869275 (and d!1399764 b!4533161)))

(assert (=> bs!869275 (= (= lt!1708609 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174873 lambda!174848))))

(declare-fun bs!869277 () Bool)

(assert (= bs!869277 (and d!1399764 b!4532449)))

(assert (=> bs!869277 (= (= lt!1708609 lt!1708008) (= lambda!174873 lambda!174758))))

(declare-fun bs!869278 () Bool)

(assert (= bs!869278 (and d!1399764 d!1399264)))

(assert (=> bs!869278 (= (= lt!1708609 lt!1708012) (= lambda!174873 lambda!174759))))

(declare-fun bs!869279 () Bool)

(assert (= bs!869279 (and d!1399764 d!1399688)))

(assert (=> bs!869279 (= (= lt!1708609 lt!1707972) (= lambda!174873 lambda!174861))))

(assert (=> bs!869270 (= (= lt!1708609 lt!1708554) (= lambda!174873 lambda!174866))))

(declare-fun bs!869281 () Bool)

(assert (= bs!869281 (and d!1399764 d!1399182)))

(assert (=> bs!869281 (= (= lt!1708609 lt!1707976) (= lambda!174873 lambda!174755))))

(declare-fun bs!869283 () Bool)

(assert (= bs!869283 (and d!1399764 b!4532428)))

(assert (=> bs!869283 (= (= lt!1708609 lt!1707600) (= lambda!174873 lambda!174752))))

(declare-fun bs!869284 () Bool)

(assert (= bs!869284 (and d!1399764 b!4532450)))

(assert (=> bs!869284 (= (= lt!1708609 lt!1707628) (= lambda!174873 lambda!174756))))

(declare-fun bs!869285 () Bool)

(assert (= bs!869285 (and d!1399764 b!4532469)))

(assert (=> bs!869285 (= (= lt!1708609 lt!1708034) (= lambda!174873 lambda!174766))))

(declare-fun bs!869286 () Bool)

(assert (= bs!869286 (and d!1399764 b!4533160)))

(assert (=> bs!869286 (= (= lt!1708609 lt!1708468) (= lambda!174873 lambda!174851))))

(declare-fun bs!869288 () Bool)

(assert (= bs!869288 (and d!1399764 b!4532427)))

(assert (=> bs!869288 (= (= lt!1708609 lt!1707972) (= lambda!174873 lambda!174754))))

(declare-fun bs!869290 () Bool)

(assert (= bs!869290 (and d!1399764 b!4532128)))

(assert (=> bs!869290 (not (= lambda!174873 lambda!174637))))

(assert (=> bs!869285 (= (= lt!1708609 lt!1707612) (= lambda!174873 lambda!174765))))

(declare-fun bs!869292 () Bool)

(assert (= bs!869292 (and d!1399764 d!1399278)))

(assert (=> bs!869292 (= (= lt!1708609 lt!1708038) (= lambda!174873 lambda!174767))))

(declare-fun bs!869293 () Bool)

(assert (= bs!869293 (and d!1399764 b!4533231)))

(assert (=> bs!869293 (= (= lt!1708609 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174873 lambda!174863))))

(declare-fun bs!869295 () Bool)

(assert (= bs!869295 (and d!1399764 b!4532470)))

(assert (=> bs!869295 (= (= lt!1708609 lt!1707612) (= lambda!174873 lambda!174764))))

(declare-fun bs!869297 () Bool)

(assert (= bs!869297 (and d!1399764 d!1399618)))

(assert (=> bs!869297 (= (= lt!1708609 lt!1708034) (= lambda!174873 lambda!174847))))

(assert (=> bs!869288 (= (= lt!1708609 lt!1707600) (= lambda!174873 lambda!174753))))

(declare-fun bs!869299 () Bool)

(assert (= bs!869299 (and d!1399764 d!1399690)))

(assert (=> bs!869299 (= (= lt!1708609 lt!1708558) (= lambda!174873 lambda!174867))))

(assert (=> bs!869274 (= (= lt!1708609 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174873 lambda!174870))))

(declare-fun bs!869301 () Bool)

(assert (= bs!869301 (and d!1399764 d!1399090)))

(assert (=> bs!869301 (not (= lambda!174873 lambda!174643))))

(declare-fun bs!869302 () Bool)

(assert (= bs!869302 (and d!1399764 b!4533315)))

(assert (=> bs!869302 (= (= lt!1708609 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174873 lambda!174868))))

(assert (=> bs!869286 (= (= lt!1708609 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174873 lambda!174850))))

(declare-fun bs!869303 () Bool)

(assert (= bs!869303 (and d!1399764 d!1399622)))

(assert (=> bs!869303 (= (= lt!1708609 lt!1708472) (= lambda!174873 lambda!174853))))

(assert (=> bs!869277 (= (= lt!1708609 lt!1707628) (= lambda!174873 lambda!174757))))

(assert (=> d!1399764 true))

(declare-fun b!4533313 () Bool)

(declare-fun e!2824755 () Bool)

(assert (=> b!4533313 (= e!2824755 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) lambda!174871))))

(declare-fun bm!316036 () Bool)

(declare-fun call!316041 () Unit!97092)

(assert (=> bm!316036 (= call!316041 (lemmaContainsAllItsOwnKeys!356 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))))))

(declare-fun e!2824757 () Bool)

(assert (=> d!1399764 e!2824757))

(declare-fun res!1888301 () Bool)

(assert (=> d!1399764 (=> (not res!1888301) (not e!2824757))))

(assert (=> d!1399764 (= res!1888301 (forall!10317 (_2!28880 (h!56584 (toList!4375 lt!1707597))) lambda!174873))))

(declare-fun e!2824756 () ListMap!3637)

(assert (=> d!1399764 (= lt!1708609 e!2824756)))

(declare-fun c!774129 () Bool)

(assert (=> d!1399764 (= c!774129 ((_ is Nil!50712) (_2!28880 (h!56584 (toList!4375 lt!1707597)))))))

(assert (=> d!1399764 (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lt!1707597))))))

(assert (=> d!1399764 (= (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 lt!1707597))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) lt!1708609)))

(assert (=> b!4533314 (= e!2824756 lt!1708605)))

(declare-fun lt!1708601 () ListMap!3637)

(assert (=> b!4533314 (= lt!1708601 (+!1582 (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707597))))))))

(assert (=> b!4533314 (= lt!1708605 (addToMapMapFromBucket!711 (t!357798 (_2!28880 (h!56584 (toList!4375 lt!1707597)))) (+!1582 (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707597)))))))))

(declare-fun lt!1708612 () Unit!97092)

(assert (=> b!4533314 (= lt!1708612 call!316041)))

(declare-fun call!316043 () Bool)

(assert (=> b!4533314 call!316043))

(declare-fun lt!1708610 () Unit!97092)

(assert (=> b!4533314 (= lt!1708610 lt!1708612)))

(assert (=> b!4533314 (forall!10317 (toList!4376 lt!1708601) lambda!174871)))

(declare-fun lt!1708617 () Unit!97092)

(declare-fun Unit!97290 () Unit!97092)

(assert (=> b!4533314 (= lt!1708617 Unit!97290)))

(assert (=> b!4533314 (forall!10317 (t!357798 (_2!28880 (h!56584 (toList!4375 lt!1707597)))) lambda!174871)))

(declare-fun lt!1708603 () Unit!97092)

(declare-fun Unit!97291 () Unit!97092)

(assert (=> b!4533314 (= lt!1708603 Unit!97291)))

(declare-fun lt!1708606 () Unit!97092)

(declare-fun Unit!97292 () Unit!97092)

(assert (=> b!4533314 (= lt!1708606 Unit!97292)))

(declare-fun lt!1708598 () Unit!97092)

(assert (=> b!4533314 (= lt!1708598 (forallContained!2573 (toList!4376 lt!1708601) lambda!174871 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707597))))))))

(assert (=> b!4533314 (contains!13479 lt!1708601 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707597))))))))

(declare-fun lt!1708608 () Unit!97092)

(declare-fun Unit!97293 () Unit!97092)

(assert (=> b!4533314 (= lt!1708608 Unit!97293)))

(assert (=> b!4533314 (contains!13479 lt!1708605 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707597))))))))

(declare-fun lt!1708604 () Unit!97092)

(declare-fun Unit!97294 () Unit!97092)

(assert (=> b!4533314 (= lt!1708604 Unit!97294)))

(declare-fun call!316042 () Bool)

(assert (=> b!4533314 call!316042))

(declare-fun lt!1708600 () Unit!97092)

(declare-fun Unit!97295 () Unit!97092)

(assert (=> b!4533314 (= lt!1708600 Unit!97295)))

(assert (=> b!4533314 (forall!10317 (toList!4376 lt!1708601) lambda!174871)))

(declare-fun lt!1708597 () Unit!97092)

(declare-fun Unit!97296 () Unit!97092)

(assert (=> b!4533314 (= lt!1708597 Unit!97296)))

(declare-fun lt!1708614 () Unit!97092)

(declare-fun Unit!97297 () Unit!97092)

(assert (=> b!4533314 (= lt!1708614 Unit!97297)))

(declare-fun lt!1708599 () Unit!97092)

(assert (=> b!4533314 (= lt!1708599 (addForallContainsKeyThenBeforeAdding!356 (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708605 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707597))))) (_2!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707597)))))))))

(assert (=> b!4533314 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) lambda!174871)))

(declare-fun lt!1708613 () Unit!97092)

(assert (=> b!4533314 (= lt!1708613 lt!1708599)))

(assert (=> b!4533314 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) lambda!174871)))

(declare-fun lt!1708615 () Unit!97092)

(declare-fun Unit!97298 () Unit!97092)

(assert (=> b!4533314 (= lt!1708615 Unit!97298)))

(declare-fun res!1888303 () Bool)

(assert (=> b!4533314 (= res!1888303 (forall!10317 (_2!28880 (h!56584 (toList!4375 lt!1707597))) lambda!174871))))

(assert (=> b!4533314 (=> (not res!1888303) (not e!2824755))))

(assert (=> b!4533314 e!2824755))

(declare-fun lt!1708607 () Unit!97092)

(declare-fun Unit!97299 () Unit!97092)

(assert (=> b!4533314 (= lt!1708607 Unit!97299)))

(assert (=> b!4533315 (= e!2824756 (extractMap!1240 (t!357799 (toList!4375 lt!1707597))))))

(declare-fun lt!1708602 () Unit!97092)

(assert (=> b!4533315 (= lt!1708602 call!316041)))

(assert (=> b!4533315 call!316042))

(declare-fun lt!1708611 () Unit!97092)

(assert (=> b!4533315 (= lt!1708611 lt!1708602)))

(assert (=> b!4533315 call!316043))

(declare-fun lt!1708616 () Unit!97092)

(declare-fun Unit!97300 () Unit!97092)

(assert (=> b!4533315 (= lt!1708616 Unit!97300)))

(declare-fun bm!316037 () Bool)

(assert (=> bm!316037 (= call!316043 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (ite c!774129 lambda!174868 lambda!174870)))))

(declare-fun b!4533316 () Bool)

(assert (=> b!4533316 (= e!2824757 (invariantList!1035 (toList!4376 lt!1708609)))))

(declare-fun b!4533317 () Bool)

(declare-fun res!1888302 () Bool)

(assert (=> b!4533317 (=> (not res!1888302) (not e!2824757))))

(assert (=> b!4533317 (= res!1888302 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) lambda!174873))))

(declare-fun bm!316038 () Bool)

(assert (=> bm!316038 (= call!316042 (forall!10317 (ite c!774129 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (_2!28880 (h!56584 (toList!4375 lt!1707597)))) (ite c!774129 lambda!174868 lambda!174871)))))

(assert (= (and d!1399764 c!774129) b!4533315))

(assert (= (and d!1399764 (not c!774129)) b!4533314))

(assert (= (and b!4533314 res!1888303) b!4533313))

(assert (= (or b!4533315 b!4533314) bm!316038))

(assert (= (or b!4533315 b!4533314) bm!316037))

(assert (= (or b!4533315 b!4533314) bm!316036))

(assert (= (and d!1399764 res!1888301) b!4533317))

(assert (= (and b!4533317 res!1888302) b!4533316))

(declare-fun m!5293105 () Bool)

(assert (=> b!4533314 m!5293105))

(assert (=> b!4533314 m!5291437))

(declare-fun m!5293107 () Bool)

(assert (=> b!4533314 m!5293107))

(declare-fun m!5293109 () Bool)

(assert (=> b!4533314 m!5293109))

(declare-fun m!5293111 () Bool)

(assert (=> b!4533314 m!5293111))

(assert (=> b!4533314 m!5291437))

(declare-fun m!5293113 () Bool)

(assert (=> b!4533314 m!5293113))

(declare-fun m!5293115 () Bool)

(assert (=> b!4533314 m!5293115))

(declare-fun m!5293117 () Bool)

(assert (=> b!4533314 m!5293117))

(declare-fun m!5293119 () Bool)

(assert (=> b!4533314 m!5293119))

(assert (=> b!4533314 m!5293109))

(assert (=> b!4533314 m!5293107))

(declare-fun m!5293121 () Bool)

(assert (=> b!4533314 m!5293121))

(declare-fun m!5293123 () Bool)

(assert (=> b!4533314 m!5293123))

(assert (=> b!4533314 m!5293111))

(declare-fun m!5293125 () Bool)

(assert (=> b!4533317 m!5293125))

(declare-fun m!5293127 () Bool)

(assert (=> bm!316037 m!5293127))

(assert (=> b!4533313 m!5293109))

(declare-fun m!5293129 () Bool)

(assert (=> b!4533316 m!5293129))

(assert (=> bm!316036 m!5291437))

(declare-fun m!5293131 () Bool)

(assert (=> bm!316036 m!5293131))

(declare-fun m!5293133 () Bool)

(assert (=> d!1399764 m!5293133))

(declare-fun m!5293135 () Bool)

(assert (=> d!1399764 m!5293135))

(declare-fun m!5293137 () Bool)

(assert (=> bm!316038 m!5293137))

(assert (=> b!4532453 d!1399764))

(declare-fun bs!869322 () Bool)

(declare-fun d!1399790 () Bool)

(assert (= bs!869322 (and d!1399790 d!1399308)))

(declare-fun lambda!174874 () Int)

(assert (=> bs!869322 (= lambda!174874 lambda!174775)))

(declare-fun bs!869324 () Bool)

(assert (= bs!869324 (and d!1399790 start!449480)))

(assert (=> bs!869324 (= lambda!174874 lambda!174635)))

(declare-fun bs!869325 () Bool)

(assert (= bs!869325 (and d!1399790 d!1399266)))

(assert (=> bs!869325 (= lambda!174874 lambda!174760)))

(declare-fun bs!869326 () Bool)

(assert (= bs!869326 (and d!1399790 d!1399148)))

(assert (=> bs!869326 (= lambda!174874 lambda!174693)))

(declare-fun bs!869327 () Bool)

(assert (= bs!869327 (and d!1399790 d!1399114)))

(assert (=> bs!869327 (= lambda!174874 lambda!174691)))

(declare-fun bs!869328 () Bool)

(assert (= bs!869328 (and d!1399790 d!1399098)))

(assert (=> bs!869328 (= lambda!174874 lambda!174681)))

(declare-fun bs!869329 () Bool)

(assert (= bs!869329 (and d!1399790 b!4532128)))

(assert (=> bs!869329 (not (= lambda!174874 lambda!174636))))

(declare-fun bs!869330 () Bool)

(assert (= bs!869330 (and d!1399790 d!1399160)))

(assert (=> bs!869330 (= lambda!174874 lambda!174703)))

(declare-fun bs!869331 () Bool)

(assert (= bs!869331 (and d!1399790 d!1399272)))

(assert (=> bs!869331 (= lambda!174874 lambda!174763)))

(declare-fun bs!869332 () Bool)

(assert (= bs!869332 (and d!1399790 d!1399286)))

(assert (=> bs!869332 (= lambda!174874 lambda!174770)))

(declare-fun bs!869333 () Bool)

(assert (= bs!869333 (and d!1399790 d!1399666)))

(assert (=> bs!869333 (= lambda!174874 lambda!174858)))

(declare-fun bs!869334 () Bool)

(assert (= bs!869334 (and d!1399790 d!1399306)))

(assert (=> bs!869334 (= lambda!174874 lambda!174774)))

(declare-fun bs!869335 () Bool)

(assert (= bs!869335 (and d!1399790 d!1399304)))

(assert (=> bs!869335 (= lambda!174874 lambda!174771)))

(declare-fun bs!869336 () Bool)

(assert (= bs!869336 (and d!1399790 d!1399104)))

(assert (=> bs!869336 (not (= lambda!174874 lambda!174684))))

(declare-fun bs!869337 () Bool)

(assert (= bs!869337 (and d!1399790 d!1399174)))

(assert (=> bs!869337 (= lambda!174874 lambda!174706)))

(declare-fun lt!1708621 () ListMap!3637)

(assert (=> d!1399790 (invariantList!1035 (toList!4376 lt!1708621))))

(declare-fun e!2824773 () ListMap!3637)

(assert (=> d!1399790 (= lt!1708621 e!2824773)))

(declare-fun c!774133 () Bool)

(assert (=> d!1399790 (= c!774133 ((_ is Cons!50713) (t!357799 (toList!4375 lt!1707597))))))

(assert (=> d!1399790 (forall!10315 (t!357799 (toList!4375 lt!1707597)) lambda!174874)))

(assert (=> d!1399790 (= (extractMap!1240 (t!357799 (toList!4375 lt!1707597))) lt!1708621)))

(declare-fun b!4533336 () Bool)

(assert (=> b!4533336 (= e!2824773 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (t!357799 (toList!4375 lt!1707597)))) (extractMap!1240 (t!357799 (t!357799 (toList!4375 lt!1707597))))))))

(declare-fun b!4533337 () Bool)

(assert (=> b!4533337 (= e!2824773 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399790 c!774133) b!4533336))

(assert (= (and d!1399790 (not c!774133)) b!4533337))

(declare-fun m!5293149 () Bool)

(assert (=> d!1399790 m!5293149))

(declare-fun m!5293151 () Bool)

(assert (=> d!1399790 m!5293151))

(declare-fun m!5293153 () Bool)

(assert (=> b!4533336 m!5293153))

(assert (=> b!4533336 m!5293153))

(declare-fun m!5293155 () Bool)

(assert (=> b!4533336 m!5293155))

(assert (=> b!4532453 d!1399790))

(declare-fun d!1399796 () Bool)

(declare-fun res!1888320 () Bool)

(declare-fun e!2824778 () Bool)

(assert (=> d!1399796 (=> res!1888320 e!2824778)))

(assert (=> d!1399796 (= res!1888320 ((_ is Nil!50712) (toList!4376 lt!1707628)))))

(assert (=> d!1399796 (= (forall!10317 (toList!4376 lt!1707628) lambda!174759) e!2824778)))

(declare-fun b!4533342 () Bool)

(declare-fun e!2824779 () Bool)

(assert (=> b!4533342 (= e!2824778 e!2824779)))

(declare-fun res!1888321 () Bool)

(assert (=> b!4533342 (=> (not res!1888321) (not e!2824779))))

(assert (=> b!4533342 (= res!1888321 (dynLambda!21197 lambda!174759 (h!56583 (toList!4376 lt!1707628))))))

(declare-fun b!4533343 () Bool)

(assert (=> b!4533343 (= e!2824779 (forall!10317 (t!357798 (toList!4376 lt!1707628)) lambda!174759))))

(assert (= (and d!1399796 (not res!1888320)) b!4533342))

(assert (= (and b!4533342 res!1888321) b!4533343))

(declare-fun b_lambda!156889 () Bool)

(assert (=> (not b_lambda!156889) (not b!4533342)))

(declare-fun m!5293157 () Bool)

(assert (=> b!4533342 m!5293157))

(declare-fun m!5293159 () Bool)

(assert (=> b!4533343 m!5293159))

(assert (=> b!4532452 d!1399796))

(declare-fun d!1399798 () Bool)

(assert (=> d!1399798 (= (hash!2877 hashF!1107 (_1!28879 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604))))) (hash!2881 hashF!1107 (_1!28879 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604))))))))

(declare-fun bs!869338 () Bool)

(assert (= bs!869338 d!1399798))

(declare-fun m!5293161 () Bool)

(assert (=> bs!869338 m!5293161))

(assert (=> bs!868336 d!1399798))

(declare-fun d!1399800 () Bool)

(declare-fun res!1888322 () Bool)

(declare-fun e!2824780 () Bool)

(assert (=> d!1399800 (=> res!1888322 e!2824780)))

(assert (=> d!1399800 (= res!1888322 ((_ is Nil!50712) (toList!4376 lt!1707600)))))

(assert (=> d!1399800 (= (forall!10317 (toList!4376 lt!1707600) lambda!174755) e!2824780)))

(declare-fun b!4533344 () Bool)

(declare-fun e!2824781 () Bool)

(assert (=> b!4533344 (= e!2824780 e!2824781)))

(declare-fun res!1888323 () Bool)

(assert (=> b!4533344 (=> (not res!1888323) (not e!2824781))))

(assert (=> b!4533344 (= res!1888323 (dynLambda!21197 lambda!174755 (h!56583 (toList!4376 lt!1707600))))))

(declare-fun b!4533345 () Bool)

(assert (=> b!4533345 (= e!2824781 (forall!10317 (t!357798 (toList!4376 lt!1707600)) lambda!174755))))

(assert (= (and d!1399800 (not res!1888322)) b!4533344))

(assert (= (and b!4533344 res!1888323) b!4533345))

(declare-fun b_lambda!156891 () Bool)

(assert (=> (not b_lambda!156891) (not b!4533344)))

(declare-fun m!5293163 () Bool)

(assert (=> b!4533344 m!5293163))

(declare-fun m!5293165 () Bool)

(assert (=> b!4533345 m!5293165))

(assert (=> b!4532430 d!1399800))

(declare-fun bs!869340 () Bool)

(declare-fun b!4533349 () Bool)

(assert (= bs!869340 (and b!4533349 b!4533230)))

(declare-fun lambda!174875 () Int)

(assert (=> bs!869340 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174875 lambda!174864))))

(declare-fun bs!869341 () Bool)

(assert (= bs!869341 (and b!4533349 d!1399580)))

(assert (=> bs!869341 (not (= lambda!174875 lambda!174838))))

(declare-fun bs!869342 () Bool)

(assert (= bs!869342 (and b!4533349 b!4533314)))

(assert (=> bs!869342 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708605) (= lambda!174875 lambda!174871))))

(declare-fun bs!869343 () Bool)

(assert (= bs!869343 (and b!4533349 b!4533161)))

(assert (=> bs!869343 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174875 lambda!174848))))

(declare-fun bs!869344 () Bool)

(assert (= bs!869344 (and b!4533349 b!4532449)))

(assert (=> bs!869344 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708008) (= lambda!174875 lambda!174758))))

(declare-fun bs!869345 () Bool)

(assert (= bs!869345 (and b!4533349 d!1399264)))

(assert (=> bs!869345 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708012) (= lambda!174875 lambda!174759))))

(declare-fun bs!869346 () Bool)

(assert (= bs!869346 (and b!4533349 d!1399688)))

(assert (=> bs!869346 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707972) (= lambda!174875 lambda!174861))))

(assert (=> bs!869340 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708554) (= lambda!174875 lambda!174866))))

(declare-fun bs!869347 () Bool)

(assert (= bs!869347 (and b!4533349 d!1399182)))

(assert (=> bs!869347 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707976) (= lambda!174875 lambda!174755))))

(declare-fun bs!869348 () Bool)

(assert (= bs!869348 (and b!4533349 b!4532428)))

(assert (=> bs!869348 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707600) (= lambda!174875 lambda!174752))))

(declare-fun bs!869349 () Bool)

(assert (= bs!869349 (and b!4533349 b!4532450)))

(assert (=> bs!869349 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707628) (= lambda!174875 lambda!174756))))

(declare-fun bs!869350 () Bool)

(assert (= bs!869350 (and b!4533349 b!4532469)))

(assert (=> bs!869350 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708034) (= lambda!174875 lambda!174766))))

(declare-fun bs!869351 () Bool)

(assert (= bs!869351 (and b!4533349 b!4533160)))

(assert (=> bs!869351 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708468) (= lambda!174875 lambda!174851))))

(declare-fun bs!869352 () Bool)

(assert (= bs!869352 (and b!4533349 b!4532427)))

(assert (=> bs!869352 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707972) (= lambda!174875 lambda!174754))))

(declare-fun bs!869353 () Bool)

(assert (= bs!869353 (and b!4533349 d!1399764)))

(assert (=> bs!869353 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708609) (= lambda!174875 lambda!174873))))

(declare-fun bs!869354 () Bool)

(assert (= bs!869354 (and b!4533349 b!4532128)))

(assert (=> bs!869354 (not (= lambda!174875 lambda!174637))))

(assert (=> bs!869350 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707612) (= lambda!174875 lambda!174765))))

(declare-fun bs!869355 () Bool)

(assert (= bs!869355 (and b!4533349 d!1399278)))

(assert (=> bs!869355 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708038) (= lambda!174875 lambda!174767))))

(declare-fun bs!869356 () Bool)

(assert (= bs!869356 (and b!4533349 b!4533231)))

(assert (=> bs!869356 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174875 lambda!174863))))

(declare-fun bs!869357 () Bool)

(assert (= bs!869357 (and b!4533349 b!4532470)))

(assert (=> bs!869357 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707612) (= lambda!174875 lambda!174764))))

(declare-fun bs!869358 () Bool)

(assert (= bs!869358 (and b!4533349 d!1399618)))

(assert (=> bs!869358 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708034) (= lambda!174875 lambda!174847))))

(assert (=> bs!869352 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707600) (= lambda!174875 lambda!174753))))

(declare-fun bs!869359 () Bool)

(assert (= bs!869359 (and b!4533349 d!1399690)))

(assert (=> bs!869359 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708558) (= lambda!174875 lambda!174867))))

(assert (=> bs!869342 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174875 lambda!174870))))

(declare-fun bs!869360 () Bool)

(assert (= bs!869360 (and b!4533349 d!1399090)))

(assert (=> bs!869360 (not (= lambda!174875 lambda!174643))))

(declare-fun bs!869361 () Bool)

(assert (= bs!869361 (and b!4533349 b!4533315)))

(assert (=> bs!869361 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174875 lambda!174868))))

(assert (=> bs!869351 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174875 lambda!174850))))

(declare-fun bs!869363 () Bool)

(assert (= bs!869363 (and b!4533349 d!1399622)))

(assert (=> bs!869363 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708472) (= lambda!174875 lambda!174853))))

(assert (=> bs!869344 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707628) (= lambda!174875 lambda!174757))))

(assert (=> b!4533349 true))

(declare-fun bs!869369 () Bool)

(declare-fun b!4533348 () Bool)

(assert (= bs!869369 (and b!4533348 b!4533230)))

(declare-fun lambda!174877 () Int)

(assert (=> bs!869369 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174877 lambda!174864))))

(declare-fun bs!869372 () Bool)

(assert (= bs!869372 (and b!4533348 d!1399580)))

(assert (=> bs!869372 (not (= lambda!174877 lambda!174838))))

(declare-fun bs!869374 () Bool)

(assert (= bs!869374 (and b!4533348 b!4533314)))

(assert (=> bs!869374 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708605) (= lambda!174877 lambda!174871))))

(declare-fun bs!869376 () Bool)

(assert (= bs!869376 (and b!4533348 b!4533161)))

(assert (=> bs!869376 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174877 lambda!174848))))

(declare-fun bs!869377 () Bool)

(assert (= bs!869377 (and b!4533348 b!4532449)))

(assert (=> bs!869377 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708008) (= lambda!174877 lambda!174758))))

(declare-fun bs!869378 () Bool)

(assert (= bs!869378 (and b!4533348 d!1399264)))

(assert (=> bs!869378 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708012) (= lambda!174877 lambda!174759))))

(declare-fun bs!869379 () Bool)

(assert (= bs!869379 (and b!4533348 d!1399688)))

(assert (=> bs!869379 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707972) (= lambda!174877 lambda!174861))))

(declare-fun bs!869380 () Bool)

(assert (= bs!869380 (and b!4533348 d!1399182)))

(assert (=> bs!869380 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707976) (= lambda!174877 lambda!174755))))

(declare-fun bs!869381 () Bool)

(assert (= bs!869381 (and b!4533348 b!4532428)))

(assert (=> bs!869381 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707600) (= lambda!174877 lambda!174752))))

(declare-fun bs!869382 () Bool)

(assert (= bs!869382 (and b!4533348 b!4532450)))

(assert (=> bs!869382 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707628) (= lambda!174877 lambda!174756))))

(declare-fun bs!869383 () Bool)

(assert (= bs!869383 (and b!4533348 b!4532469)))

(assert (=> bs!869383 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708034) (= lambda!174877 lambda!174766))))

(declare-fun bs!869384 () Bool)

(assert (= bs!869384 (and b!4533348 b!4533160)))

(assert (=> bs!869384 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708468) (= lambda!174877 lambda!174851))))

(declare-fun bs!869385 () Bool)

(assert (= bs!869385 (and b!4533348 b!4532427)))

(assert (=> bs!869385 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707972) (= lambda!174877 lambda!174754))))

(declare-fun bs!869386 () Bool)

(assert (= bs!869386 (and b!4533348 d!1399764)))

(assert (=> bs!869386 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708609) (= lambda!174877 lambda!174873))))

(declare-fun bs!869387 () Bool)

(assert (= bs!869387 (and b!4533348 b!4532128)))

(assert (=> bs!869387 (not (= lambda!174877 lambda!174637))))

(assert (=> bs!869383 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707612) (= lambda!174877 lambda!174765))))

(declare-fun bs!869388 () Bool)

(assert (= bs!869388 (and b!4533348 d!1399278)))

(assert (=> bs!869388 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708038) (= lambda!174877 lambda!174767))))

(declare-fun bs!869389 () Bool)

(assert (= bs!869389 (and b!4533348 b!4533231)))

(assert (=> bs!869389 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174877 lambda!174863))))

(declare-fun bs!869390 () Bool)

(assert (= bs!869390 (and b!4533348 b!4532470)))

(assert (=> bs!869390 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707612) (= lambda!174877 lambda!174764))))

(declare-fun bs!869391 () Bool)

(assert (= bs!869391 (and b!4533348 d!1399618)))

(assert (=> bs!869391 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708034) (= lambda!174877 lambda!174847))))

(assert (=> bs!869385 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707600) (= lambda!174877 lambda!174753))))

(declare-fun bs!869392 () Bool)

(assert (= bs!869392 (and b!4533348 d!1399690)))

(assert (=> bs!869392 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708558) (= lambda!174877 lambda!174867))))

(assert (=> bs!869374 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174877 lambda!174870))))

(declare-fun bs!869393 () Bool)

(assert (= bs!869393 (and b!4533348 d!1399090)))

(assert (=> bs!869393 (not (= lambda!174877 lambda!174643))))

(declare-fun bs!869394 () Bool)

(assert (= bs!869394 (and b!4533348 b!4533349)))

(assert (=> bs!869394 (= lambda!174877 lambda!174875)))

(assert (=> bs!869369 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708554) (= lambda!174877 lambda!174866))))

(declare-fun bs!869395 () Bool)

(assert (= bs!869395 (and b!4533348 b!4533315)))

(assert (=> bs!869395 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174877 lambda!174868))))

(assert (=> bs!869384 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174877 lambda!174850))))

(declare-fun bs!869396 () Bool)

(assert (= bs!869396 (and b!4533348 d!1399622)))

(assert (=> bs!869396 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708472) (= lambda!174877 lambda!174853))))

(assert (=> bs!869377 (= (= (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1707628) (= lambda!174877 lambda!174757))))

(assert (=> b!4533348 true))

(declare-fun lt!1708634 () ListMap!3637)

(declare-fun lambda!174879 () Int)

(assert (=> bs!869369 (= (= lt!1708634 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174879 lambda!174864))))

(assert (=> bs!869372 (not (= lambda!174879 lambda!174838))))

(assert (=> bs!869376 (= (= lt!1708634 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174879 lambda!174848))))

(assert (=> bs!869377 (= (= lt!1708634 lt!1708008) (= lambda!174879 lambda!174758))))

(assert (=> bs!869378 (= (= lt!1708634 lt!1708012) (= lambda!174879 lambda!174759))))

(assert (=> bs!869379 (= (= lt!1708634 lt!1707972) (= lambda!174879 lambda!174861))))

(assert (=> bs!869380 (= (= lt!1708634 lt!1707976) (= lambda!174879 lambda!174755))))

(assert (=> bs!869381 (= (= lt!1708634 lt!1707600) (= lambda!174879 lambda!174752))))

(assert (=> bs!869382 (= (= lt!1708634 lt!1707628) (= lambda!174879 lambda!174756))))

(assert (=> bs!869383 (= (= lt!1708634 lt!1708034) (= lambda!174879 lambda!174766))))

(assert (=> bs!869384 (= (= lt!1708634 lt!1708468) (= lambda!174879 lambda!174851))))

(assert (=> bs!869385 (= (= lt!1708634 lt!1707972) (= lambda!174879 lambda!174754))))

(assert (=> bs!869386 (= (= lt!1708634 lt!1708609) (= lambda!174879 lambda!174873))))

(assert (=> bs!869387 (not (= lambda!174879 lambda!174637))))

(assert (=> bs!869383 (= (= lt!1708634 lt!1707612) (= lambda!174879 lambda!174765))))

(assert (=> bs!869388 (= (= lt!1708634 lt!1708038) (= lambda!174879 lambda!174767))))

(assert (=> bs!869389 (= (= lt!1708634 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174879 lambda!174863))))

(assert (=> bs!869390 (= (= lt!1708634 lt!1707612) (= lambda!174879 lambda!174764))))

(assert (=> bs!869391 (= (= lt!1708634 lt!1708034) (= lambda!174879 lambda!174847))))

(assert (=> bs!869385 (= (= lt!1708634 lt!1707600) (= lambda!174879 lambda!174753))))

(assert (=> bs!869392 (= (= lt!1708634 lt!1708558) (= lambda!174879 lambda!174867))))

(assert (=> bs!869374 (= (= lt!1708634 lt!1708605) (= lambda!174879 lambda!174871))))

(assert (=> b!4533348 (= (= lt!1708634 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174879 lambda!174877))))

(assert (=> bs!869374 (= (= lt!1708634 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174879 lambda!174870))))

(assert (=> bs!869393 (not (= lambda!174879 lambda!174643))))

(assert (=> bs!869394 (= (= lt!1708634 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174879 lambda!174875))))

(assert (=> bs!869369 (= (= lt!1708634 lt!1708554) (= lambda!174879 lambda!174866))))

(assert (=> bs!869395 (= (= lt!1708634 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174879 lambda!174868))))

(assert (=> bs!869384 (= (= lt!1708634 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174879 lambda!174850))))

(assert (=> bs!869396 (= (= lt!1708634 lt!1708472) (= lambda!174879 lambda!174853))))

(assert (=> bs!869377 (= (= lt!1708634 lt!1707628) (= lambda!174879 lambda!174757))))

(assert (=> b!4533348 true))

(declare-fun bs!869397 () Bool)

(declare-fun d!1399802 () Bool)

(assert (= bs!869397 (and d!1399802 b!4533348)))

(declare-fun lt!1708638 () ListMap!3637)

(declare-fun lambda!174880 () Int)

(assert (=> bs!869397 (= (= lt!1708638 lt!1708634) (= lambda!174880 lambda!174879))))

(declare-fun bs!869398 () Bool)

(assert (= bs!869398 (and d!1399802 b!4533230)))

(assert (=> bs!869398 (= (= lt!1708638 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174880 lambda!174864))))

(declare-fun bs!869399 () Bool)

(assert (= bs!869399 (and d!1399802 d!1399580)))

(assert (=> bs!869399 (not (= lambda!174880 lambda!174838))))

(declare-fun bs!869400 () Bool)

(assert (= bs!869400 (and d!1399802 b!4533161)))

(assert (=> bs!869400 (= (= lt!1708638 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174880 lambda!174848))))

(declare-fun bs!869401 () Bool)

(assert (= bs!869401 (and d!1399802 b!4532449)))

(assert (=> bs!869401 (= (= lt!1708638 lt!1708008) (= lambda!174880 lambda!174758))))

(declare-fun bs!869402 () Bool)

(assert (= bs!869402 (and d!1399802 d!1399264)))

(assert (=> bs!869402 (= (= lt!1708638 lt!1708012) (= lambda!174880 lambda!174759))))

(declare-fun bs!869403 () Bool)

(assert (= bs!869403 (and d!1399802 d!1399688)))

(assert (=> bs!869403 (= (= lt!1708638 lt!1707972) (= lambda!174880 lambda!174861))))

(declare-fun bs!869404 () Bool)

(assert (= bs!869404 (and d!1399802 d!1399182)))

(assert (=> bs!869404 (= (= lt!1708638 lt!1707976) (= lambda!174880 lambda!174755))))

(declare-fun bs!869405 () Bool)

(assert (= bs!869405 (and d!1399802 b!4532428)))

(assert (=> bs!869405 (= (= lt!1708638 lt!1707600) (= lambda!174880 lambda!174752))))

(declare-fun bs!869406 () Bool)

(assert (= bs!869406 (and d!1399802 b!4532450)))

(assert (=> bs!869406 (= (= lt!1708638 lt!1707628) (= lambda!174880 lambda!174756))))

(declare-fun bs!869407 () Bool)

(assert (= bs!869407 (and d!1399802 b!4532469)))

(assert (=> bs!869407 (= (= lt!1708638 lt!1708034) (= lambda!174880 lambda!174766))))

(declare-fun bs!869408 () Bool)

(assert (= bs!869408 (and d!1399802 b!4533160)))

(assert (=> bs!869408 (= (= lt!1708638 lt!1708468) (= lambda!174880 lambda!174851))))

(declare-fun bs!869409 () Bool)

(assert (= bs!869409 (and d!1399802 b!4532427)))

(assert (=> bs!869409 (= (= lt!1708638 lt!1707972) (= lambda!174880 lambda!174754))))

(declare-fun bs!869410 () Bool)

(assert (= bs!869410 (and d!1399802 d!1399764)))

(assert (=> bs!869410 (= (= lt!1708638 lt!1708609) (= lambda!174880 lambda!174873))))

(declare-fun bs!869411 () Bool)

(assert (= bs!869411 (and d!1399802 b!4532128)))

(assert (=> bs!869411 (not (= lambda!174880 lambda!174637))))

(assert (=> bs!869407 (= (= lt!1708638 lt!1707612) (= lambda!174880 lambda!174765))))

(declare-fun bs!869412 () Bool)

(assert (= bs!869412 (and d!1399802 d!1399278)))

(assert (=> bs!869412 (= (= lt!1708638 lt!1708038) (= lambda!174880 lambda!174767))))

(declare-fun bs!869413 () Bool)

(assert (= bs!869413 (and d!1399802 b!4533231)))

(assert (=> bs!869413 (= (= lt!1708638 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174880 lambda!174863))))

(declare-fun bs!869414 () Bool)

(assert (= bs!869414 (and d!1399802 b!4532470)))

(assert (=> bs!869414 (= (= lt!1708638 lt!1707612) (= lambda!174880 lambda!174764))))

(declare-fun bs!869415 () Bool)

(assert (= bs!869415 (and d!1399802 d!1399618)))

(assert (=> bs!869415 (= (= lt!1708638 lt!1708034) (= lambda!174880 lambda!174847))))

(assert (=> bs!869409 (= (= lt!1708638 lt!1707600) (= lambda!174880 lambda!174753))))

(declare-fun bs!869416 () Bool)

(assert (= bs!869416 (and d!1399802 d!1399690)))

(assert (=> bs!869416 (= (= lt!1708638 lt!1708558) (= lambda!174880 lambda!174867))))

(declare-fun bs!869417 () Bool)

(assert (= bs!869417 (and d!1399802 b!4533314)))

(assert (=> bs!869417 (= (= lt!1708638 lt!1708605) (= lambda!174880 lambda!174871))))

(assert (=> bs!869397 (= (= lt!1708638 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174880 lambda!174877))))

(assert (=> bs!869417 (= (= lt!1708638 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174880 lambda!174870))))

(declare-fun bs!869418 () Bool)

(assert (= bs!869418 (and d!1399802 d!1399090)))

(assert (=> bs!869418 (not (= lambda!174880 lambda!174643))))

(declare-fun bs!869419 () Bool)

(assert (= bs!869419 (and d!1399802 b!4533349)))

(assert (=> bs!869419 (= (= lt!1708638 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174880 lambda!174875))))

(assert (=> bs!869398 (= (= lt!1708638 lt!1708554) (= lambda!174880 lambda!174866))))

(declare-fun bs!869420 () Bool)

(assert (= bs!869420 (and d!1399802 b!4533315)))

(assert (=> bs!869420 (= (= lt!1708638 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174880 lambda!174868))))

(assert (=> bs!869408 (= (= lt!1708638 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174880 lambda!174850))))

(declare-fun bs!869421 () Bool)

(assert (= bs!869421 (and d!1399802 d!1399622)))

(assert (=> bs!869421 (= (= lt!1708638 lt!1708472) (= lambda!174880 lambda!174853))))

(assert (=> bs!869401 (= (= lt!1708638 lt!1707628) (= lambda!174880 lambda!174757))))

(assert (=> d!1399802 true))

(declare-fun b!4533347 () Bool)

(declare-fun e!2824783 () Bool)

(assert (=> b!4533347 (= e!2824783 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) lambda!174879))))

(declare-fun bm!316039 () Bool)

(declare-fun call!316044 () Unit!97092)

(assert (=> bm!316039 (= call!316044 (lemmaContainsAllItsOwnKeys!356 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))

(declare-fun e!2824785 () Bool)

(assert (=> d!1399802 e!2824785))

(declare-fun res!1888325 () Bool)

(assert (=> d!1399802 (=> (not res!1888325) (not e!2824785))))

(assert (=> d!1399802 (= res!1888325 (forall!10317 (_2!28880 (h!56584 (toList!4375 lm!1477))) lambda!174880))))

(declare-fun e!2824784 () ListMap!3637)

(assert (=> d!1399802 (= lt!1708638 e!2824784)))

(declare-fun c!774134 () Bool)

(assert (=> d!1399802 (= c!774134 ((_ is Nil!50712) (_2!28880 (h!56584 (toList!4375 lm!1477)))))))

(assert (=> d!1399802 (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lm!1477))))))

(assert (=> d!1399802 (= (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 lm!1477))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) lt!1708638)))

(assert (=> b!4533348 (= e!2824784 lt!1708634)))

(declare-fun lt!1708630 () ListMap!3637)

(assert (=> b!4533348 (= lt!1708630 (+!1582 (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477))))))))

(assert (=> b!4533348 (= lt!1708634 (addToMapMapFromBucket!711 (t!357798 (_2!28880 (h!56584 (toList!4375 lm!1477)))) (+!1582 (extractMap!1240 (t!357799 (toList!4375 lm!1477))) (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477)))))))))

(declare-fun lt!1708641 () Unit!97092)

(assert (=> b!4533348 (= lt!1708641 call!316044)))

(declare-fun call!316046 () Bool)

(assert (=> b!4533348 call!316046))

(declare-fun lt!1708639 () Unit!97092)

(assert (=> b!4533348 (= lt!1708639 lt!1708641)))

(assert (=> b!4533348 (forall!10317 (toList!4376 lt!1708630) lambda!174879)))

(declare-fun lt!1708646 () Unit!97092)

(declare-fun Unit!97312 () Unit!97092)

(assert (=> b!4533348 (= lt!1708646 Unit!97312)))

(assert (=> b!4533348 (forall!10317 (t!357798 (_2!28880 (h!56584 (toList!4375 lm!1477)))) lambda!174879)))

(declare-fun lt!1708632 () Unit!97092)

(declare-fun Unit!97313 () Unit!97092)

(assert (=> b!4533348 (= lt!1708632 Unit!97313)))

(declare-fun lt!1708635 () Unit!97092)

(declare-fun Unit!97314 () Unit!97092)

(assert (=> b!4533348 (= lt!1708635 Unit!97314)))

(declare-fun lt!1708627 () Unit!97092)

(assert (=> b!4533348 (= lt!1708627 (forallContained!2573 (toList!4376 lt!1708630) lambda!174879 (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477))))))))

(assert (=> b!4533348 (contains!13479 lt!1708630 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477))))))))

(declare-fun lt!1708637 () Unit!97092)

(declare-fun Unit!97315 () Unit!97092)

(assert (=> b!4533348 (= lt!1708637 Unit!97315)))

(assert (=> b!4533348 (contains!13479 lt!1708634 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477))))))))

(declare-fun lt!1708633 () Unit!97092)

(declare-fun Unit!97316 () Unit!97092)

(assert (=> b!4533348 (= lt!1708633 Unit!97316)))

(declare-fun call!316045 () Bool)

(assert (=> b!4533348 call!316045))

(declare-fun lt!1708629 () Unit!97092)

(declare-fun Unit!97317 () Unit!97092)

(assert (=> b!4533348 (= lt!1708629 Unit!97317)))

(assert (=> b!4533348 (forall!10317 (toList!4376 lt!1708630) lambda!174879)))

(declare-fun lt!1708626 () Unit!97092)

(declare-fun Unit!97318 () Unit!97092)

(assert (=> b!4533348 (= lt!1708626 Unit!97318)))

(declare-fun lt!1708643 () Unit!97092)

(declare-fun Unit!97319 () Unit!97092)

(assert (=> b!4533348 (= lt!1708643 Unit!97319)))

(declare-fun lt!1708628 () Unit!97092)

(assert (=> b!4533348 (= lt!1708628 (addForallContainsKeyThenBeforeAdding!356 (extractMap!1240 (t!357799 (toList!4375 lm!1477))) lt!1708634 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477))))) (_2!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477)))))))))

(assert (=> b!4533348 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) lambda!174879)))

(declare-fun lt!1708642 () Unit!97092)

(assert (=> b!4533348 (= lt!1708642 lt!1708628)))

(assert (=> b!4533348 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) lambda!174879)))

(declare-fun lt!1708644 () Unit!97092)

(declare-fun Unit!97320 () Unit!97092)

(assert (=> b!4533348 (= lt!1708644 Unit!97320)))

(declare-fun res!1888327 () Bool)

(assert (=> b!4533348 (= res!1888327 (forall!10317 (_2!28880 (h!56584 (toList!4375 lm!1477))) lambda!174879))))

(assert (=> b!4533348 (=> (not res!1888327) (not e!2824783))))

(assert (=> b!4533348 e!2824783))

(declare-fun lt!1708636 () Unit!97092)

(declare-fun Unit!97321 () Unit!97092)

(assert (=> b!4533348 (= lt!1708636 Unit!97321)))

(assert (=> b!4533349 (= e!2824784 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))

(declare-fun lt!1708631 () Unit!97092)

(assert (=> b!4533349 (= lt!1708631 call!316044)))

(assert (=> b!4533349 call!316045))

(declare-fun lt!1708640 () Unit!97092)

(assert (=> b!4533349 (= lt!1708640 lt!1708631)))

(assert (=> b!4533349 call!316046))

(declare-fun lt!1708645 () Unit!97092)

(declare-fun Unit!97322 () Unit!97092)

(assert (=> b!4533349 (= lt!1708645 Unit!97322)))

(declare-fun bm!316040 () Bool)

(assert (=> bm!316040 (= call!316046 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (ite c!774134 lambda!174875 lambda!174877)))))

(declare-fun b!4533350 () Bool)

(assert (=> b!4533350 (= e!2824785 (invariantList!1035 (toList!4376 lt!1708638)))))

(declare-fun b!4533351 () Bool)

(declare-fun res!1888326 () Bool)

(assert (=> b!4533351 (=> (not res!1888326) (not e!2824785))))

(assert (=> b!4533351 (= res!1888326 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) lambda!174880))))

(declare-fun bm!316041 () Bool)

(assert (=> bm!316041 (= call!316045 (forall!10317 (ite c!774134 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (_2!28880 (h!56584 (toList!4375 lm!1477)))) (ite c!774134 lambda!174875 lambda!174879)))))

(assert (= (and d!1399802 c!774134) b!4533349))

(assert (= (and d!1399802 (not c!774134)) b!4533348))

(assert (= (and b!4533348 res!1888327) b!4533347))

(assert (= (or b!4533349 b!4533348) bm!316041))

(assert (= (or b!4533349 b!4533348) bm!316040))

(assert (= (or b!4533349 b!4533348) bm!316039))

(assert (= (and d!1399802 res!1888325) b!4533351))

(assert (= (and b!4533351 res!1888326) b!4533350))

(declare-fun m!5293219 () Bool)

(assert (=> b!4533348 m!5293219))

(assert (=> b!4533348 m!5290679))

(declare-fun m!5293221 () Bool)

(assert (=> b!4533348 m!5293221))

(declare-fun m!5293223 () Bool)

(assert (=> b!4533348 m!5293223))

(declare-fun m!5293225 () Bool)

(assert (=> b!4533348 m!5293225))

(assert (=> b!4533348 m!5290679))

(declare-fun m!5293227 () Bool)

(assert (=> b!4533348 m!5293227))

(declare-fun m!5293229 () Bool)

(assert (=> b!4533348 m!5293229))

(declare-fun m!5293231 () Bool)

(assert (=> b!4533348 m!5293231))

(declare-fun m!5293233 () Bool)

(assert (=> b!4533348 m!5293233))

(assert (=> b!4533348 m!5293223))

(assert (=> b!4533348 m!5293221))

(declare-fun m!5293235 () Bool)

(assert (=> b!4533348 m!5293235))

(declare-fun m!5293237 () Bool)

(assert (=> b!4533348 m!5293237))

(assert (=> b!4533348 m!5293225))

(declare-fun m!5293239 () Bool)

(assert (=> b!4533351 m!5293239))

(declare-fun m!5293241 () Bool)

(assert (=> bm!316040 m!5293241))

(assert (=> b!4533347 m!5293223))

(declare-fun m!5293243 () Bool)

(assert (=> b!4533350 m!5293243))

(assert (=> bm!316039 m!5290679))

(declare-fun m!5293245 () Bool)

(assert (=> bm!316039 m!5293245))

(declare-fun m!5293247 () Bool)

(assert (=> d!1399802 m!5293247))

(assert (=> d!1399802 m!5291671))

(declare-fun m!5293249 () Bool)

(assert (=> bm!316041 m!5293249))

(assert (=> b!4532205 d!1399802))

(assert (=> b!4532205 d!1399304))

(declare-fun d!1399824 () Bool)

(declare-fun choose!29784 (Hashable!5579 K!12100) (_ BitVec 64))

(assert (=> d!1399824 (= (hash!2881 hashF!1107 key!3287) (choose!29784 hashF!1107 key!3287))))

(declare-fun bs!869434 () Bool)

(assert (= bs!869434 d!1399824))

(declare-fun m!5293251 () Bool)

(assert (=> bs!869434 m!5293251))

(assert (=> d!1399282 d!1399824))

(declare-fun bs!869542 () Bool)

(declare-fun b!4533448 () Bool)

(assert (= bs!869542 (and b!4533448 b!4532901)))

(declare-fun lambda!174896 () Int)

(assert (=> bs!869542 (= (= (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174896 lambda!174827))))

(declare-fun bs!869546 () Bool)

(assert (= bs!869546 (and b!4533448 b!4532969)))

(assert (=> bs!869546 (= (= (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (toList!4376 lt!1707611)) (= lambda!174896 lambda!174829))))

(declare-fun bs!869549 () Bool)

(assert (= bs!869549 (and b!4533448 b!4533091)))

(assert (=> bs!869549 (= (= (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (toList!4376 lt!1707612)) (= lambda!174896 lambda!174832))))

(declare-fun bs!869552 () Bool)

(assert (= bs!869552 (and b!4533448 b!4533096)))

(assert (=> bs!869552 (= (= (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (toList!4376 lt!1707797)) (= lambda!174896 lambda!174835))))

(assert (=> b!4533448 true))

(declare-fun bs!869557 () Bool)

(declare-fun b!4533454 () Bool)

(assert (= bs!869557 (and b!4533454 b!4532969)))

(declare-fun lambda!174897 () Int)

(assert (=> bs!869557 (= (= (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (toList!4376 lt!1707611)) (= lambda!174897 lambda!174829))))

(declare-fun bs!869560 () Bool)

(assert (= bs!869560 (and b!4533454 b!4532901)))

(assert (=> bs!869560 (= (= (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174897 lambda!174827))))

(declare-fun bs!869563 () Bool)

(assert (= bs!869563 (and b!4533454 b!4533096)))

(assert (=> bs!869563 (= (= (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (toList!4376 lt!1707797)) (= lambda!174897 lambda!174835))))

(declare-fun bs!869564 () Bool)

(assert (= bs!869564 (and b!4533454 b!4533091)))

(assert (=> bs!869564 (= (= (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (toList!4376 lt!1707612)) (= lambda!174897 lambda!174832))))

(declare-fun bs!869566 () Bool)

(assert (= bs!869566 (and b!4533454 b!4533448)))

(assert (=> bs!869566 (= (= (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174897 lambda!174896))))

(assert (=> b!4533454 true))

(declare-fun bs!869571 () Bool)

(declare-fun b!4533453 () Bool)

(assert (= bs!869571 (and b!4533453 b!4532969)))

(declare-fun lambda!174898 () Int)

(assert (=> bs!869571 (= (= (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (toList!4376 lt!1707611)) (= lambda!174898 lambda!174829))))

(declare-fun bs!869574 () Bool)

(assert (= bs!869574 (and b!4533453 b!4533454)))

(assert (=> bs!869574 (= (= (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))) (= lambda!174898 lambda!174897))))

(declare-fun bs!869575 () Bool)

(assert (= bs!869575 (and b!4533453 b!4532901)))

(assert (=> bs!869575 (= lambda!174898 lambda!174827)))

(declare-fun bs!869576 () Bool)

(assert (= bs!869576 (and b!4533453 b!4533096)))

(assert (=> bs!869576 (= (= (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (toList!4376 lt!1707797)) (= lambda!174898 lambda!174835))))

(declare-fun bs!869577 () Bool)

(assert (= bs!869577 (and b!4533453 b!4533091)))

(assert (=> bs!869577 (= (= (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (toList!4376 lt!1707612)) (= lambda!174898 lambda!174832))))

(declare-fun bs!869578 () Bool)

(assert (= bs!869578 (and b!4533453 b!4533448)))

(assert (=> bs!869578 (= (= (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174898 lambda!174896))))

(assert (=> b!4533453 true))

(declare-fun bs!869579 () Bool)

(declare-fun b!4533449 () Bool)

(assert (= bs!869579 (and b!4533449 b!4532902)))

(declare-fun lambda!174899 () Int)

(assert (=> bs!869579 (= lambda!174899 lambda!174828)))

(declare-fun bs!869580 () Bool)

(assert (= bs!869580 (and b!4533449 b!4532970)))

(assert (=> bs!869580 (= lambda!174899 lambda!174830)))

(declare-fun bs!869582 () Bool)

(assert (= bs!869582 (and b!4533449 b!4533092)))

(assert (=> bs!869582 (= lambda!174899 lambda!174833)))

(declare-fun bs!869583 () Bool)

(assert (= bs!869583 (and b!4533449 b!4533097)))

(assert (=> bs!869583 (= lambda!174899 lambda!174836)))

(declare-fun d!1399826 () Bool)

(declare-fun e!2824843 () Bool)

(assert (=> d!1399826 e!2824843))

(declare-fun res!1888370 () Bool)

(assert (=> d!1399826 (=> (not res!1888370) (not e!2824843))))

(declare-fun lt!1708719 () List!50839)

(assert (=> d!1399826 (= res!1888370 (noDuplicate!758 lt!1708719))))

(declare-fun e!2824844 () List!50839)

(assert (=> d!1399826 (= lt!1708719 e!2824844)))

(declare-fun c!774163 () Bool)

(assert (=> d!1399826 (= c!774163 ((_ is Cons!50712) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))

(assert (=> d!1399826 (invariantList!1035 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))

(assert (=> d!1399826 (= (getKeysList!483 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) lt!1708719)))

(declare-fun b!4533446 () Bool)

(assert (=> b!4533446 false))

(declare-fun e!2824842 () Unit!97092)

(declare-fun Unit!97324 () Unit!97092)

(assert (=> b!4533446 (= e!2824842 Unit!97324)))

(declare-fun b!4533447 () Bool)

(declare-fun Unit!97325 () Unit!97092)

(assert (=> b!4533447 (= e!2824842 Unit!97325)))

(assert (=> b!4533448 false))

(declare-fun lt!1708718 () Unit!97092)

(declare-fun forallContained!2575 (List!50839 Int K!12100) Unit!97092)

(assert (=> b!4533448 (= lt!1708718 (forallContained!2575 (getKeysList!483 (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) lambda!174896 (_1!28879 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))))

(declare-fun e!2824845 () Unit!97092)

(declare-fun Unit!97326 () Unit!97092)

(assert (=> b!4533448 (= e!2824845 Unit!97326)))

(assert (=> b!4533449 (= e!2824843 (= (content!8412 lt!1708719) (content!8412 (map!11161 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) lambda!174899))))))

(declare-fun b!4533450 () Bool)

(assert (=> b!4533450 (= e!2824844 Nil!50715)))

(declare-fun b!4533451 () Bool)

(declare-fun Unit!97327 () Unit!97092)

(assert (=> b!4533451 (= e!2824845 Unit!97327)))

(declare-fun b!4533452 () Bool)

(declare-fun res!1888371 () Bool)

(assert (=> b!4533452 (=> (not res!1888371) (not e!2824843))))

(assert (=> b!4533452 (= res!1888371 (= (length!372 lt!1708719) (length!373 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))))

(declare-fun res!1888372 () Bool)

(assert (=> b!4533453 (=> (not res!1888372) (not e!2824843))))

(assert (=> b!4533453 (= res!1888372 (forall!10319 lt!1708719 lambda!174898))))

(assert (=> b!4533454 (= e!2824844 (Cons!50715 (_1!28879 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (getKeysList!483 (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))))

(declare-fun c!774161 () Bool)

(assert (=> b!4533454 (= c!774161 (containsKey!1843 (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (_1!28879 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))))

(declare-fun lt!1708723 () Unit!97092)

(assert (=> b!4533454 (= lt!1708723 e!2824842)))

(declare-fun c!774162 () Bool)

(assert (=> b!4533454 (= c!774162 (contains!13483 (getKeysList!483 (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (_1!28879 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))))

(declare-fun lt!1708724 () Unit!97092)

(assert (=> b!4533454 (= lt!1708724 e!2824845)))

(declare-fun lt!1708721 () List!50839)

(assert (=> b!4533454 (= lt!1708721 (getKeysList!483 (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))))

(declare-fun lt!1708720 () Unit!97092)

(declare-fun lemmaForallContainsAddHeadPreserves!179 (List!50836 List!50839 tuple2!51170) Unit!97092)

(assert (=> b!4533454 (= lt!1708720 (lemmaForallContainsAddHeadPreserves!179 (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) lt!1708721 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))))

(assert (=> b!4533454 (forall!10319 lt!1708721 lambda!174897)))

(declare-fun lt!1708722 () Unit!97092)

(assert (=> b!4533454 (= lt!1708722 lt!1708720)))

(assert (= (and d!1399826 c!774163) b!4533454))

(assert (= (and d!1399826 (not c!774163)) b!4533450))

(assert (= (and b!4533454 c!774161) b!4533446))

(assert (= (and b!4533454 (not c!774161)) b!4533447))

(assert (= (and b!4533454 c!774162) b!4533448))

(assert (= (and b!4533454 (not c!774162)) b!4533451))

(assert (= (and d!1399826 res!1888370) b!4533452))

(assert (= (and b!4533452 res!1888371) b!4533453))

(assert (= (and b!4533453 res!1888372) b!4533449))

(declare-fun m!5293377 () Bool)

(assert (=> d!1399826 m!5293377))

(declare-fun m!5293379 () Bool)

(assert (=> d!1399826 m!5293379))

(declare-fun m!5293381 () Bool)

(assert (=> b!4533454 m!5293381))

(declare-fun m!5293383 () Bool)

(assert (=> b!4533454 m!5293383))

(declare-fun m!5293385 () Bool)

(assert (=> b!4533454 m!5293385))

(declare-fun m!5293387 () Bool)

(assert (=> b!4533454 m!5293387))

(assert (=> b!4533454 m!5293383))

(declare-fun m!5293389 () Bool)

(assert (=> b!4533454 m!5293389))

(declare-fun m!5293391 () Bool)

(assert (=> b!4533453 m!5293391))

(assert (=> b!4533448 m!5293383))

(assert (=> b!4533448 m!5293383))

(declare-fun m!5293393 () Bool)

(assert (=> b!4533448 m!5293393))

(declare-fun m!5293395 () Bool)

(assert (=> b!4533452 m!5293395))

(assert (=> b!4533452 m!5292215))

(declare-fun m!5293397 () Bool)

(assert (=> b!4533449 m!5293397))

(declare-fun m!5293399 () Bool)

(assert (=> b!4533449 m!5293399))

(assert (=> b!4533449 m!5293399))

(declare-fun m!5293401 () Bool)

(assert (=> b!4533449 m!5293401))

(assert (=> b!4532507 d!1399826))

(declare-fun d!1399868 () Bool)

(declare-fun res!1888377 () Bool)

(declare-fun e!2824850 () Bool)

(assert (=> d!1399868 (=> res!1888377 e!2824850)))

(assert (=> d!1399868 (= res!1888377 (and ((_ is Cons!50713) (toList!4375 lm!1477)) (= (_1!28880 (h!56584 (toList!4375 lm!1477))) lt!1707614)))))

(assert (=> d!1399868 (= (containsKey!1844 (toList!4375 lm!1477) lt!1707614) e!2824850)))

(declare-fun b!4533461 () Bool)

(declare-fun e!2824851 () Bool)

(assert (=> b!4533461 (= e!2824850 e!2824851)))

(declare-fun res!1888378 () Bool)

(assert (=> b!4533461 (=> (not res!1888378) (not e!2824851))))

(assert (=> b!4533461 (= res!1888378 (and (or (not ((_ is Cons!50713) (toList!4375 lm!1477))) (bvsle (_1!28880 (h!56584 (toList!4375 lm!1477))) lt!1707614)) ((_ is Cons!50713) (toList!4375 lm!1477)) (bvslt (_1!28880 (h!56584 (toList!4375 lm!1477))) lt!1707614)))))

(declare-fun b!4533462 () Bool)

(assert (=> b!4533462 (= e!2824851 (containsKey!1844 (t!357799 (toList!4375 lm!1477)) lt!1707614))))

(assert (= (and d!1399868 (not res!1888377)) b!4533461))

(assert (= (and b!4533461 res!1888378) b!4533462))

(declare-fun m!5293403 () Bool)

(assert (=> b!4533462 m!5293403))

(assert (=> d!1399290 d!1399868))

(declare-fun d!1399870 () Bool)

(declare-fun res!1888379 () Bool)

(declare-fun e!2824852 () Bool)

(assert (=> d!1399870 (=> res!1888379 e!2824852)))

(assert (=> d!1399870 (= res!1888379 (and ((_ is Cons!50713) (toList!4375 lt!1707598)) (= (_1!28880 (h!56584 (toList!4375 lt!1707598))) hash!344)))))

(assert (=> d!1399870 (= (containsKey!1844 (toList!4375 lt!1707598) hash!344) e!2824852)))

(declare-fun b!4533463 () Bool)

(declare-fun e!2824853 () Bool)

(assert (=> b!4533463 (= e!2824852 e!2824853)))

(declare-fun res!1888380 () Bool)

(assert (=> b!4533463 (=> (not res!1888380) (not e!2824853))))

(assert (=> b!4533463 (= res!1888380 (and (or (not ((_ is Cons!50713) (toList!4375 lt!1707598))) (bvsle (_1!28880 (h!56584 (toList!4375 lt!1707598))) hash!344)) ((_ is Cons!50713) (toList!4375 lt!1707598)) (bvslt (_1!28880 (h!56584 (toList!4375 lt!1707598))) hash!344)))))

(declare-fun b!4533464 () Bool)

(assert (=> b!4533464 (= e!2824853 (containsKey!1844 (t!357799 (toList!4375 lt!1707598)) hash!344))))

(assert (= (and d!1399870 (not res!1888379)) b!4533463))

(assert (= (and b!4533463 res!1888380) b!4533464))

(declare-fun m!5293405 () Bool)

(assert (=> b!4533464 m!5293405))

(assert (=> d!1399258 d!1399870))

(assert (=> b!4532176 d!1399530))

(assert (=> b!4532176 d!1399532))

(declare-fun d!1399872 () Bool)

(declare-fun res!1888381 () Bool)

(declare-fun e!2824854 () Bool)

(assert (=> d!1399872 (=> res!1888381 e!2824854)))

(assert (=> d!1399872 (= res!1888381 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1399872 (= (forall!10317 (_2!28880 lt!1707605) lambda!174759) e!2824854)))

(declare-fun b!4533465 () Bool)

(declare-fun e!2824855 () Bool)

(assert (=> b!4533465 (= e!2824854 e!2824855)))

(declare-fun res!1888382 () Bool)

(assert (=> b!4533465 (=> (not res!1888382) (not e!2824855))))

(assert (=> b!4533465 (= res!1888382 (dynLambda!21197 lambda!174759 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun b!4533466 () Bool)

(assert (=> b!4533466 (= e!2824855 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174759))))

(assert (= (and d!1399872 (not res!1888381)) b!4533465))

(assert (= (and b!4533465 res!1888382) b!4533466))

(declare-fun b_lambda!156907 () Bool)

(assert (=> (not b_lambda!156907) (not b!4533465)))

(declare-fun m!5293407 () Bool)

(assert (=> b!4533465 m!5293407))

(declare-fun m!5293409 () Bool)

(assert (=> b!4533466 m!5293409))

(assert (=> d!1399264 d!1399872))

(assert (=> d!1399264 d!1399326))

(declare-fun bs!869589 () Bool)

(declare-fun b!4533469 () Bool)

(assert (= bs!869589 (and b!4533469 b!4533348)))

(declare-fun lambda!174901 () Int)

(assert (=> bs!869589 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708634) (= lambda!174901 lambda!174879))))

(declare-fun bs!869590 () Bool)

(assert (= bs!869590 (and b!4533469 b!4533230)))

(assert (=> bs!869590 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174901 lambda!174864))))

(declare-fun bs!869591 () Bool)

(assert (= bs!869591 (and b!4533469 d!1399580)))

(assert (=> bs!869591 (not (= lambda!174901 lambda!174838))))

(declare-fun bs!869592 () Bool)

(assert (= bs!869592 (and b!4533469 d!1399802)))

(assert (=> bs!869592 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708638) (= lambda!174901 lambda!174880))))

(declare-fun bs!869593 () Bool)

(assert (= bs!869593 (and b!4533469 b!4533161)))

(assert (=> bs!869593 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174901 lambda!174848))))

(declare-fun bs!869594 () Bool)

(assert (= bs!869594 (and b!4533469 b!4532449)))

(assert (=> bs!869594 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708008) (= lambda!174901 lambda!174758))))

(declare-fun bs!869595 () Bool)

(assert (= bs!869595 (and b!4533469 d!1399264)))

(assert (=> bs!869595 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708012) (= lambda!174901 lambda!174759))))

(declare-fun bs!869596 () Bool)

(assert (= bs!869596 (and b!4533469 d!1399688)))

(assert (=> bs!869596 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707972) (= lambda!174901 lambda!174861))))

(declare-fun bs!869597 () Bool)

(assert (= bs!869597 (and b!4533469 d!1399182)))

(assert (=> bs!869597 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707976) (= lambda!174901 lambda!174755))))

(declare-fun bs!869598 () Bool)

(assert (= bs!869598 (and b!4533469 b!4532428)))

(assert (=> bs!869598 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707600) (= lambda!174901 lambda!174752))))

(declare-fun bs!869599 () Bool)

(assert (= bs!869599 (and b!4533469 b!4532450)))

(assert (=> bs!869599 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707628) (= lambda!174901 lambda!174756))))

(declare-fun bs!869600 () Bool)

(assert (= bs!869600 (and b!4533469 b!4532469)))

(assert (=> bs!869600 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708034) (= lambda!174901 lambda!174766))))

(declare-fun bs!869601 () Bool)

(assert (= bs!869601 (and b!4533469 b!4533160)))

(assert (=> bs!869601 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708468) (= lambda!174901 lambda!174851))))

(declare-fun bs!869602 () Bool)

(assert (= bs!869602 (and b!4533469 b!4532427)))

(assert (=> bs!869602 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707972) (= lambda!174901 lambda!174754))))

(declare-fun bs!869603 () Bool)

(assert (= bs!869603 (and b!4533469 d!1399764)))

(assert (=> bs!869603 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708609) (= lambda!174901 lambda!174873))))

(declare-fun bs!869609 () Bool)

(assert (= bs!869609 (and b!4533469 b!4532128)))

(assert (=> bs!869609 (not (= lambda!174901 lambda!174637))))

(assert (=> bs!869600 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707612) (= lambda!174901 lambda!174765))))

(declare-fun bs!869614 () Bool)

(assert (= bs!869614 (and b!4533469 d!1399278)))

(assert (=> bs!869614 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708038) (= lambda!174901 lambda!174767))))

(declare-fun bs!869616 () Bool)

(assert (= bs!869616 (and b!4533469 b!4533231)))

(assert (=> bs!869616 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174901 lambda!174863))))

(declare-fun bs!869617 () Bool)

(assert (= bs!869617 (and b!4533469 b!4532470)))

(assert (=> bs!869617 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707612) (= lambda!174901 lambda!174764))))

(declare-fun bs!869619 () Bool)

(assert (= bs!869619 (and b!4533469 d!1399618)))

(assert (=> bs!869619 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708034) (= lambda!174901 lambda!174847))))

(assert (=> bs!869602 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707600) (= lambda!174901 lambda!174753))))

(declare-fun bs!869621 () Bool)

(assert (= bs!869621 (and b!4533469 d!1399690)))

(assert (=> bs!869621 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708558) (= lambda!174901 lambda!174867))))

(declare-fun bs!869623 () Bool)

(assert (= bs!869623 (and b!4533469 b!4533314)))

(assert (=> bs!869623 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708605) (= lambda!174901 lambda!174871))))

(assert (=> bs!869589 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174901 lambda!174877))))

(assert (=> bs!869623 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174901 lambda!174870))))

(declare-fun bs!869626 () Bool)

(assert (= bs!869626 (and b!4533469 d!1399090)))

(assert (=> bs!869626 (not (= lambda!174901 lambda!174643))))

(declare-fun bs!869627 () Bool)

(assert (= bs!869627 (and b!4533469 b!4533349)))

(assert (=> bs!869627 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174901 lambda!174875))))

(assert (=> bs!869590 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708554) (= lambda!174901 lambda!174866))))

(declare-fun bs!869630 () Bool)

(assert (= bs!869630 (and b!4533469 b!4533315)))

(assert (=> bs!869630 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174901 lambda!174868))))

(assert (=> bs!869601 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174901 lambda!174850))))

(declare-fun bs!869632 () Bool)

(assert (= bs!869632 (and b!4533469 d!1399622)))

(assert (=> bs!869632 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708472) (= lambda!174901 lambda!174853))))

(assert (=> bs!869594 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707628) (= lambda!174901 lambda!174757))))

(assert (=> b!4533469 true))

(declare-fun bs!869639 () Bool)

(declare-fun b!4533468 () Bool)

(assert (= bs!869639 (and b!4533468 b!4533348)))

(declare-fun lambda!174903 () Int)

(assert (=> bs!869639 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708634) (= lambda!174903 lambda!174879))))

(declare-fun bs!869643 () Bool)

(assert (= bs!869643 (and b!4533468 b!4533230)))

(assert (=> bs!869643 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174903 lambda!174864))))

(declare-fun bs!869644 () Bool)

(assert (= bs!869644 (and b!4533468 d!1399580)))

(assert (=> bs!869644 (not (= lambda!174903 lambda!174838))))

(declare-fun bs!869646 () Bool)

(assert (= bs!869646 (and b!4533468 d!1399802)))

(assert (=> bs!869646 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708638) (= lambda!174903 lambda!174880))))

(declare-fun bs!869648 () Bool)

(assert (= bs!869648 (and b!4533468 b!4533161)))

(assert (=> bs!869648 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174903 lambda!174848))))

(declare-fun bs!869650 () Bool)

(assert (= bs!869650 (and b!4533468 b!4532449)))

(assert (=> bs!869650 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708008) (= lambda!174903 lambda!174758))))

(declare-fun bs!869652 () Bool)

(assert (= bs!869652 (and b!4533468 d!1399264)))

(assert (=> bs!869652 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708012) (= lambda!174903 lambda!174759))))

(declare-fun bs!869653 () Bool)

(assert (= bs!869653 (and b!4533468 d!1399688)))

(assert (=> bs!869653 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707972) (= lambda!174903 lambda!174861))))

(declare-fun bs!869654 () Bool)

(assert (= bs!869654 (and b!4533468 d!1399182)))

(assert (=> bs!869654 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707976) (= lambda!174903 lambda!174755))))

(declare-fun bs!869655 () Bool)

(assert (= bs!869655 (and b!4533468 b!4532428)))

(assert (=> bs!869655 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707600) (= lambda!174903 lambda!174752))))

(declare-fun bs!869656 () Bool)

(assert (= bs!869656 (and b!4533468 b!4533469)))

(assert (=> bs!869656 (= lambda!174903 lambda!174901)))

(declare-fun bs!869657 () Bool)

(assert (= bs!869657 (and b!4533468 b!4532450)))

(assert (=> bs!869657 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707628) (= lambda!174903 lambda!174756))))

(declare-fun bs!869658 () Bool)

(assert (= bs!869658 (and b!4533468 b!4532469)))

(assert (=> bs!869658 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708034) (= lambda!174903 lambda!174766))))

(declare-fun bs!869659 () Bool)

(assert (= bs!869659 (and b!4533468 b!4533160)))

(assert (=> bs!869659 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708468) (= lambda!174903 lambda!174851))))

(declare-fun bs!869661 () Bool)

(assert (= bs!869661 (and b!4533468 b!4532427)))

(assert (=> bs!869661 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707972) (= lambda!174903 lambda!174754))))

(declare-fun bs!869662 () Bool)

(assert (= bs!869662 (and b!4533468 d!1399764)))

(assert (=> bs!869662 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708609) (= lambda!174903 lambda!174873))))

(declare-fun bs!869663 () Bool)

(assert (= bs!869663 (and b!4533468 b!4532128)))

(assert (=> bs!869663 (not (= lambda!174903 lambda!174637))))

(assert (=> bs!869658 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707612) (= lambda!174903 lambda!174765))))

(declare-fun bs!869665 () Bool)

(assert (= bs!869665 (and b!4533468 d!1399278)))

(assert (=> bs!869665 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708038) (= lambda!174903 lambda!174767))))

(declare-fun bs!869666 () Bool)

(assert (= bs!869666 (and b!4533468 b!4533231)))

(assert (=> bs!869666 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174903 lambda!174863))))

(declare-fun bs!869667 () Bool)

(assert (= bs!869667 (and b!4533468 b!4532470)))

(assert (=> bs!869667 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707612) (= lambda!174903 lambda!174764))))

(declare-fun bs!869669 () Bool)

(assert (= bs!869669 (and b!4533468 d!1399618)))

(assert (=> bs!869669 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708034) (= lambda!174903 lambda!174847))))

(assert (=> bs!869661 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707600) (= lambda!174903 lambda!174753))))

(declare-fun bs!869671 () Bool)

(assert (= bs!869671 (and b!4533468 d!1399690)))

(assert (=> bs!869671 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708558) (= lambda!174903 lambda!174867))))

(declare-fun bs!869672 () Bool)

(assert (= bs!869672 (and b!4533468 b!4533314)))

(assert (=> bs!869672 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708605) (= lambda!174903 lambda!174871))))

(assert (=> bs!869639 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174903 lambda!174877))))

(assert (=> bs!869672 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174903 lambda!174870))))

(declare-fun bs!869676 () Bool)

(assert (= bs!869676 (and b!4533468 d!1399090)))

(assert (=> bs!869676 (not (= lambda!174903 lambda!174643))))

(declare-fun bs!869678 () Bool)

(assert (= bs!869678 (and b!4533468 b!4533349)))

(assert (=> bs!869678 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174903 lambda!174875))))

(assert (=> bs!869643 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708554) (= lambda!174903 lambda!174866))))

(declare-fun bs!869680 () Bool)

(assert (= bs!869680 (and b!4533468 b!4533315)))

(assert (=> bs!869680 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174903 lambda!174868))))

(assert (=> bs!869659 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174903 lambda!174850))))

(declare-fun bs!869681 () Bool)

(assert (= bs!869681 (and b!4533468 d!1399622)))

(assert (=> bs!869681 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708472) (= lambda!174903 lambda!174853))))

(assert (=> bs!869650 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1707628) (= lambda!174903 lambda!174757))))

(assert (=> b!4533468 true))

(declare-fun lambda!174904 () Int)

(declare-fun lt!1708733 () ListMap!3637)

(assert (=> bs!869639 (= (= lt!1708733 lt!1708634) (= lambda!174904 lambda!174879))))

(assert (=> bs!869643 (= (= lt!1708733 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174904 lambda!174864))))

(assert (=> bs!869644 (not (= lambda!174904 lambda!174838))))

(assert (=> bs!869646 (= (= lt!1708733 lt!1708638) (= lambda!174904 lambda!174880))))

(assert (=> bs!869648 (= (= lt!1708733 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174904 lambda!174848))))

(assert (=> bs!869650 (= (= lt!1708733 lt!1708008) (= lambda!174904 lambda!174758))))

(assert (=> bs!869652 (= (= lt!1708733 lt!1708012) (= lambda!174904 lambda!174759))))

(assert (=> bs!869653 (= (= lt!1708733 lt!1707972) (= lambda!174904 lambda!174861))))

(assert (=> bs!869654 (= (= lt!1708733 lt!1707976) (= lambda!174904 lambda!174755))))

(assert (=> bs!869656 (= (= lt!1708733 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174904 lambda!174901))))

(assert (=> bs!869657 (= (= lt!1708733 lt!1707628) (= lambda!174904 lambda!174756))))

(assert (=> bs!869658 (= (= lt!1708733 lt!1708034) (= lambda!174904 lambda!174766))))

(assert (=> bs!869659 (= (= lt!1708733 lt!1708468) (= lambda!174904 lambda!174851))))

(assert (=> bs!869661 (= (= lt!1708733 lt!1707972) (= lambda!174904 lambda!174754))))

(assert (=> bs!869662 (= (= lt!1708733 lt!1708609) (= lambda!174904 lambda!174873))))

(assert (=> bs!869663 (not (= lambda!174904 lambda!174637))))

(assert (=> bs!869658 (= (= lt!1708733 lt!1707612) (= lambda!174904 lambda!174765))))

(assert (=> bs!869665 (= (= lt!1708733 lt!1708038) (= lambda!174904 lambda!174767))))

(assert (=> bs!869666 (= (= lt!1708733 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174904 lambda!174863))))

(assert (=> bs!869667 (= (= lt!1708733 lt!1707612) (= lambda!174904 lambda!174764))))

(assert (=> bs!869669 (= (= lt!1708733 lt!1708034) (= lambda!174904 lambda!174847))))

(assert (=> bs!869661 (= (= lt!1708733 lt!1707600) (= lambda!174904 lambda!174753))))

(assert (=> bs!869671 (= (= lt!1708733 lt!1708558) (= lambda!174904 lambda!174867))))

(assert (=> bs!869672 (= (= lt!1708733 lt!1708605) (= lambda!174904 lambda!174871))))

(assert (=> bs!869639 (= (= lt!1708733 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174904 lambda!174877))))

(assert (=> bs!869672 (= (= lt!1708733 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174904 lambda!174870))))

(assert (=> bs!869676 (not (= lambda!174904 lambda!174643))))

(assert (=> bs!869678 (= (= lt!1708733 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174904 lambda!174875))))

(assert (=> bs!869643 (= (= lt!1708733 lt!1708554) (= lambda!174904 lambda!174866))))

(assert (=> bs!869680 (= (= lt!1708733 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174904 lambda!174868))))

(assert (=> bs!869659 (= (= lt!1708733 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174904 lambda!174850))))

(assert (=> bs!869681 (= (= lt!1708733 lt!1708472) (= lambda!174904 lambda!174853))))

(assert (=> bs!869650 (= (= lt!1708733 lt!1707628) (= lambda!174904 lambda!174757))))

(assert (=> b!4533468 (= (= lt!1708733 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174904 lambda!174903))))

(assert (=> bs!869655 (= (= lt!1708733 lt!1707600) (= lambda!174904 lambda!174752))))

(assert (=> b!4533468 true))

(declare-fun bs!869699 () Bool)

(declare-fun d!1399874 () Bool)

(assert (= bs!869699 (and d!1399874 b!4533348)))

(declare-fun lambda!174906 () Int)

(declare-fun lt!1708737 () ListMap!3637)

(assert (=> bs!869699 (= (= lt!1708737 lt!1708634) (= lambda!174906 lambda!174879))))

(declare-fun bs!869703 () Bool)

(assert (= bs!869703 (and d!1399874 b!4533230)))

(assert (=> bs!869703 (= (= lt!1708737 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174906 lambda!174864))))

(declare-fun bs!869705 () Bool)

(assert (= bs!869705 (and d!1399874 d!1399580)))

(assert (=> bs!869705 (not (= lambda!174906 lambda!174838))))

(declare-fun bs!869707 () Bool)

(assert (= bs!869707 (and d!1399874 d!1399802)))

(assert (=> bs!869707 (= (= lt!1708737 lt!1708638) (= lambda!174906 lambda!174880))))

(declare-fun bs!869709 () Bool)

(assert (= bs!869709 (and d!1399874 b!4533161)))

(assert (=> bs!869709 (= (= lt!1708737 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174906 lambda!174848))))

(declare-fun bs!869713 () Bool)

(assert (= bs!869713 (and d!1399874 b!4532449)))

(assert (=> bs!869713 (= (= lt!1708737 lt!1708008) (= lambda!174906 lambda!174758))))

(declare-fun bs!869715 () Bool)

(assert (= bs!869715 (and d!1399874 d!1399264)))

(assert (=> bs!869715 (= (= lt!1708737 lt!1708012) (= lambda!174906 lambda!174759))))

(declare-fun bs!869717 () Bool)

(assert (= bs!869717 (and d!1399874 d!1399688)))

(assert (=> bs!869717 (= (= lt!1708737 lt!1707972) (= lambda!174906 lambda!174861))))

(declare-fun bs!869719 () Bool)

(assert (= bs!869719 (and d!1399874 d!1399182)))

(assert (=> bs!869719 (= (= lt!1708737 lt!1707976) (= lambda!174906 lambda!174755))))

(declare-fun bs!869721 () Bool)

(assert (= bs!869721 (and d!1399874 b!4533469)))

(assert (=> bs!869721 (= (= lt!1708737 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174906 lambda!174901))))

(declare-fun bs!869723 () Bool)

(assert (= bs!869723 (and d!1399874 b!4532450)))

(assert (=> bs!869723 (= (= lt!1708737 lt!1707628) (= lambda!174906 lambda!174756))))

(declare-fun bs!869725 () Bool)

(assert (= bs!869725 (and d!1399874 b!4532469)))

(assert (=> bs!869725 (= (= lt!1708737 lt!1708034) (= lambda!174906 lambda!174766))))

(declare-fun bs!869726 () Bool)

(assert (= bs!869726 (and d!1399874 b!4533160)))

(assert (=> bs!869726 (= (= lt!1708737 lt!1708468) (= lambda!174906 lambda!174851))))

(declare-fun bs!869730 () Bool)

(assert (= bs!869730 (and d!1399874 b!4532427)))

(assert (=> bs!869730 (= (= lt!1708737 lt!1707972) (= lambda!174906 lambda!174754))))

(declare-fun bs!869733 () Bool)

(assert (= bs!869733 (and d!1399874 d!1399764)))

(assert (=> bs!869733 (= (= lt!1708737 lt!1708609) (= lambda!174906 lambda!174873))))

(declare-fun bs!869735 () Bool)

(assert (= bs!869735 (and d!1399874 b!4532128)))

(assert (=> bs!869735 (not (= lambda!174906 lambda!174637))))

(assert (=> bs!869725 (= (= lt!1708737 lt!1707612) (= lambda!174906 lambda!174765))))

(declare-fun bs!869738 () Bool)

(assert (= bs!869738 (and d!1399874 d!1399278)))

(assert (=> bs!869738 (= (= lt!1708737 lt!1708038) (= lambda!174906 lambda!174767))))

(declare-fun bs!869740 () Bool)

(assert (= bs!869740 (and d!1399874 b!4533231)))

(assert (=> bs!869740 (= (= lt!1708737 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174906 lambda!174863))))

(declare-fun bs!869741 () Bool)

(assert (= bs!869741 (and d!1399874 b!4532470)))

(assert (=> bs!869741 (= (= lt!1708737 lt!1707612) (= lambda!174906 lambda!174764))))

(declare-fun bs!869742 () Bool)

(assert (= bs!869742 (and d!1399874 d!1399618)))

(assert (=> bs!869742 (= (= lt!1708737 lt!1708034) (= lambda!174906 lambda!174847))))

(assert (=> bs!869730 (= (= lt!1708737 lt!1707600) (= lambda!174906 lambda!174753))))

(declare-fun bs!869743 () Bool)

(assert (= bs!869743 (and d!1399874 d!1399690)))

(assert (=> bs!869743 (= (= lt!1708737 lt!1708558) (= lambda!174906 lambda!174867))))

(declare-fun bs!869744 () Bool)

(assert (= bs!869744 (and d!1399874 b!4533314)))

(assert (=> bs!869744 (= (= lt!1708737 lt!1708605) (= lambda!174906 lambda!174871))))

(assert (=> bs!869699 (= (= lt!1708737 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174906 lambda!174877))))

(assert (=> bs!869744 (= (= lt!1708737 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174906 lambda!174870))))

(declare-fun bs!869746 () Bool)

(assert (= bs!869746 (and d!1399874 d!1399090)))

(assert (=> bs!869746 (not (= lambda!174906 lambda!174643))))

(declare-fun bs!869748 () Bool)

(assert (= bs!869748 (and d!1399874 b!4533349)))

(assert (=> bs!869748 (= (= lt!1708737 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174906 lambda!174875))))

(assert (=> bs!869703 (= (= lt!1708737 lt!1708554) (= lambda!174906 lambda!174866))))

(declare-fun bs!869751 () Bool)

(assert (= bs!869751 (and d!1399874 b!4533315)))

(assert (=> bs!869751 (= (= lt!1708737 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174906 lambda!174868))))

(assert (=> bs!869726 (= (= lt!1708737 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174906 lambda!174850))))

(declare-fun bs!869759 () Bool)

(assert (= bs!869759 (and d!1399874 d!1399622)))

(assert (=> bs!869759 (= (= lt!1708737 lt!1708472) (= lambda!174906 lambda!174853))))

(assert (=> bs!869713 (= (= lt!1708737 lt!1707628) (= lambda!174906 lambda!174757))))

(declare-fun bs!869764 () Bool)

(assert (= bs!869764 (and d!1399874 b!4533468)))

(assert (=> bs!869764 (= (= lt!1708737 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174906 lambda!174903))))

(assert (=> bs!869764 (= (= lt!1708737 lt!1708733) (= lambda!174906 lambda!174904))))

(declare-fun bs!869768 () Bool)

(assert (= bs!869768 (and d!1399874 b!4532428)))

(assert (=> bs!869768 (= (= lt!1708737 lt!1707600) (= lambda!174906 lambda!174752))))

(assert (=> d!1399874 true))

(declare-fun b!4533467 () Bool)

(declare-fun e!2824856 () Bool)

(assert (=> b!4533467 (= e!2824856 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) lambda!174904))))

(declare-fun bm!316048 () Bool)

(declare-fun call!316053 () Unit!97092)

(assert (=> bm!316048 (= call!316053 (lemmaContainsAllItsOwnKeys!356 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))))))

(declare-fun e!2824858 () Bool)

(assert (=> d!1399874 e!2824858))

(declare-fun res!1888383 () Bool)

(assert (=> d!1399874 (=> (not res!1888383) (not e!2824858))))

(assert (=> d!1399874 (= res!1888383 (forall!10317 (_2!28880 (h!56584 (toList!4375 lt!1707598))) lambda!174906))))

(declare-fun e!2824857 () ListMap!3637)

(assert (=> d!1399874 (= lt!1708737 e!2824857)))

(declare-fun c!774164 () Bool)

(assert (=> d!1399874 (= c!774164 ((_ is Nil!50712) (_2!28880 (h!56584 (toList!4375 lt!1707598)))))))

(assert (=> d!1399874 (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lt!1707598))))))

(assert (=> d!1399874 (= (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 lt!1707598))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) lt!1708737)))

(assert (=> b!4533468 (= e!2824857 lt!1708733)))

(declare-fun lt!1708729 () ListMap!3637)

(assert (=> b!4533468 (= lt!1708729 (+!1582 (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707598))))))))

(assert (=> b!4533468 (= lt!1708733 (addToMapMapFromBucket!711 (t!357798 (_2!28880 (h!56584 (toList!4375 lt!1707598)))) (+!1582 (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707598)))))))))

(declare-fun lt!1708740 () Unit!97092)

(assert (=> b!4533468 (= lt!1708740 call!316053)))

(declare-fun call!316055 () Bool)

(assert (=> b!4533468 call!316055))

(declare-fun lt!1708738 () Unit!97092)

(assert (=> b!4533468 (= lt!1708738 lt!1708740)))

(assert (=> b!4533468 (forall!10317 (toList!4376 lt!1708729) lambda!174904)))

(declare-fun lt!1708745 () Unit!97092)

(declare-fun Unit!97338 () Unit!97092)

(assert (=> b!4533468 (= lt!1708745 Unit!97338)))

(assert (=> b!4533468 (forall!10317 (t!357798 (_2!28880 (h!56584 (toList!4375 lt!1707598)))) lambda!174904)))

(declare-fun lt!1708731 () Unit!97092)

(declare-fun Unit!97339 () Unit!97092)

(assert (=> b!4533468 (= lt!1708731 Unit!97339)))

(declare-fun lt!1708734 () Unit!97092)

(declare-fun Unit!97340 () Unit!97092)

(assert (=> b!4533468 (= lt!1708734 Unit!97340)))

(declare-fun lt!1708726 () Unit!97092)

(assert (=> b!4533468 (= lt!1708726 (forallContained!2573 (toList!4376 lt!1708729) lambda!174904 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707598))))))))

(assert (=> b!4533468 (contains!13479 lt!1708729 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707598))))))))

(declare-fun lt!1708736 () Unit!97092)

(declare-fun Unit!97342 () Unit!97092)

(assert (=> b!4533468 (= lt!1708736 Unit!97342)))

(assert (=> b!4533468 (contains!13479 lt!1708733 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707598))))))))

(declare-fun lt!1708732 () Unit!97092)

(declare-fun Unit!97343 () Unit!97092)

(assert (=> b!4533468 (= lt!1708732 Unit!97343)))

(declare-fun call!316054 () Bool)

(assert (=> b!4533468 call!316054))

(declare-fun lt!1708728 () Unit!97092)

(declare-fun Unit!97344 () Unit!97092)

(assert (=> b!4533468 (= lt!1708728 Unit!97344)))

(assert (=> b!4533468 (forall!10317 (toList!4376 lt!1708729) lambda!174904)))

(declare-fun lt!1708725 () Unit!97092)

(declare-fun Unit!97345 () Unit!97092)

(assert (=> b!4533468 (= lt!1708725 Unit!97345)))

(declare-fun lt!1708742 () Unit!97092)

(declare-fun Unit!97346 () Unit!97092)

(assert (=> b!4533468 (= lt!1708742 Unit!97346)))

(declare-fun lt!1708727 () Unit!97092)

(assert (=> b!4533468 (= lt!1708727 (addForallContainsKeyThenBeforeAdding!356 (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708733 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707598))))) (_2!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707598)))))))))

(assert (=> b!4533468 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) lambda!174904)))

(declare-fun lt!1708741 () Unit!97092)

(assert (=> b!4533468 (= lt!1708741 lt!1708727)))

(assert (=> b!4533468 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) lambda!174904)))

(declare-fun lt!1708743 () Unit!97092)

(declare-fun Unit!97347 () Unit!97092)

(assert (=> b!4533468 (= lt!1708743 Unit!97347)))

(declare-fun res!1888385 () Bool)

(assert (=> b!4533468 (= res!1888385 (forall!10317 (_2!28880 (h!56584 (toList!4375 lt!1707598))) lambda!174904))))

(assert (=> b!4533468 (=> (not res!1888385) (not e!2824856))))

(assert (=> b!4533468 e!2824856))

(declare-fun lt!1708735 () Unit!97092)

(declare-fun Unit!97348 () Unit!97092)

(assert (=> b!4533468 (= lt!1708735 Unit!97348)))

(assert (=> b!4533469 (= e!2824857 (extractMap!1240 (t!357799 (toList!4375 lt!1707598))))))

(declare-fun lt!1708730 () Unit!97092)

(assert (=> b!4533469 (= lt!1708730 call!316053)))

(assert (=> b!4533469 call!316054))

(declare-fun lt!1708739 () Unit!97092)

(assert (=> b!4533469 (= lt!1708739 lt!1708730)))

(assert (=> b!4533469 call!316055))

(declare-fun lt!1708744 () Unit!97092)

(declare-fun Unit!97349 () Unit!97092)

(assert (=> b!4533469 (= lt!1708744 Unit!97349)))

(declare-fun bm!316049 () Bool)

(assert (=> bm!316049 (= call!316055 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (ite c!774164 lambda!174901 lambda!174903)))))

(declare-fun b!4533470 () Bool)

(assert (=> b!4533470 (= e!2824858 (invariantList!1035 (toList!4376 lt!1708737)))))

(declare-fun b!4533471 () Bool)

(declare-fun res!1888384 () Bool)

(assert (=> b!4533471 (=> (not res!1888384) (not e!2824858))))

(assert (=> b!4533471 (= res!1888384 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) lambda!174906))))

(declare-fun bm!316050 () Bool)

(assert (=> bm!316050 (= call!316054 (forall!10317 (ite c!774164 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (_2!28880 (h!56584 (toList!4375 lt!1707598)))) (ite c!774164 lambda!174901 lambda!174904)))))

(assert (= (and d!1399874 c!774164) b!4533469))

(assert (= (and d!1399874 (not c!774164)) b!4533468))

(assert (= (and b!4533468 res!1888385) b!4533467))

(assert (= (or b!4533469 b!4533468) bm!316050))

(assert (= (or b!4533469 b!4533468) bm!316049))

(assert (= (or b!4533469 b!4533468) bm!316048))

(assert (= (and d!1399874 res!1888383) b!4533471))

(assert (= (and b!4533471 res!1888384) b!4533470))

(declare-fun m!5293447 () Bool)

(assert (=> b!4533468 m!5293447))

(assert (=> b!4533468 m!5291601))

(declare-fun m!5293449 () Bool)

(assert (=> b!4533468 m!5293449))

(declare-fun m!5293451 () Bool)

(assert (=> b!4533468 m!5293451))

(declare-fun m!5293453 () Bool)

(assert (=> b!4533468 m!5293453))

(assert (=> b!4533468 m!5291601))

(declare-fun m!5293455 () Bool)

(assert (=> b!4533468 m!5293455))

(declare-fun m!5293457 () Bool)

(assert (=> b!4533468 m!5293457))

(declare-fun m!5293459 () Bool)

(assert (=> b!4533468 m!5293459))

(declare-fun m!5293461 () Bool)

(assert (=> b!4533468 m!5293461))

(assert (=> b!4533468 m!5293451))

(assert (=> b!4533468 m!5293449))

(declare-fun m!5293463 () Bool)

(assert (=> b!4533468 m!5293463))

(declare-fun m!5293465 () Bool)

(assert (=> b!4533468 m!5293465))

(assert (=> b!4533468 m!5293453))

(declare-fun m!5293467 () Bool)

(assert (=> b!4533471 m!5293467))

(declare-fun m!5293469 () Bool)

(assert (=> bm!316049 m!5293469))

(assert (=> b!4533467 m!5293451))

(declare-fun m!5293471 () Bool)

(assert (=> b!4533470 m!5293471))

(assert (=> bm!316048 m!5291601))

(declare-fun m!5293473 () Bool)

(assert (=> bm!316048 m!5293473))

(declare-fun m!5293475 () Bool)

(assert (=> d!1399874 m!5293475))

(declare-fun m!5293477 () Bool)

(assert (=> d!1399874 m!5293477))

(declare-fun m!5293479 () Bool)

(assert (=> bm!316050 m!5293479))

(assert (=> b!4532526 d!1399874))

(declare-fun bs!869793 () Bool)

(declare-fun d!1399880 () Bool)

(assert (= bs!869793 (and d!1399880 d!1399308)))

(declare-fun lambda!174909 () Int)

(assert (=> bs!869793 (= lambda!174909 lambda!174775)))

(declare-fun bs!869794 () Bool)

(assert (= bs!869794 (and d!1399880 start!449480)))

(assert (=> bs!869794 (= lambda!174909 lambda!174635)))

(declare-fun bs!869795 () Bool)

(assert (= bs!869795 (and d!1399880 d!1399266)))

(assert (=> bs!869795 (= lambda!174909 lambda!174760)))

(declare-fun bs!869796 () Bool)

(assert (= bs!869796 (and d!1399880 d!1399148)))

(assert (=> bs!869796 (= lambda!174909 lambda!174693)))

(declare-fun bs!869797 () Bool)

(assert (= bs!869797 (and d!1399880 d!1399114)))

(assert (=> bs!869797 (= lambda!174909 lambda!174691)))

(declare-fun bs!869798 () Bool)

(assert (= bs!869798 (and d!1399880 d!1399098)))

(assert (=> bs!869798 (= lambda!174909 lambda!174681)))

(declare-fun bs!869799 () Bool)

(assert (= bs!869799 (and d!1399880 d!1399160)))

(assert (=> bs!869799 (= lambda!174909 lambda!174703)))

(declare-fun bs!869800 () Bool)

(assert (= bs!869800 (and d!1399880 d!1399272)))

(assert (=> bs!869800 (= lambda!174909 lambda!174763)))

(declare-fun bs!869801 () Bool)

(assert (= bs!869801 (and d!1399880 d!1399286)))

(assert (=> bs!869801 (= lambda!174909 lambda!174770)))

(declare-fun bs!869802 () Bool)

(assert (= bs!869802 (and d!1399880 d!1399666)))

(assert (=> bs!869802 (= lambda!174909 lambda!174858)))

(declare-fun bs!869803 () Bool)

(assert (= bs!869803 (and d!1399880 d!1399790)))

(assert (=> bs!869803 (= lambda!174909 lambda!174874)))

(declare-fun bs!869804 () Bool)

(assert (= bs!869804 (and d!1399880 b!4532128)))

(assert (=> bs!869804 (not (= lambda!174909 lambda!174636))))

(declare-fun bs!869805 () Bool)

(assert (= bs!869805 (and d!1399880 d!1399306)))

(assert (=> bs!869805 (= lambda!174909 lambda!174774)))

(declare-fun bs!869806 () Bool)

(assert (= bs!869806 (and d!1399880 d!1399304)))

(assert (=> bs!869806 (= lambda!174909 lambda!174771)))

(declare-fun bs!869807 () Bool)

(assert (= bs!869807 (and d!1399880 d!1399104)))

(assert (=> bs!869807 (not (= lambda!174909 lambda!174684))))

(declare-fun bs!869808 () Bool)

(assert (= bs!869808 (and d!1399880 d!1399174)))

(assert (=> bs!869808 (= lambda!174909 lambda!174706)))

(declare-fun lt!1708767 () ListMap!3637)

(assert (=> d!1399880 (invariantList!1035 (toList!4376 lt!1708767))))

(declare-fun e!2824864 () ListMap!3637)

(assert (=> d!1399880 (= lt!1708767 e!2824864)))

(declare-fun c!774166 () Bool)

(assert (=> d!1399880 (= c!774166 ((_ is Cons!50713) (t!357799 (toList!4375 lt!1707598))))))

(assert (=> d!1399880 (forall!10315 (t!357799 (toList!4375 lt!1707598)) lambda!174909)))

(assert (=> d!1399880 (= (extractMap!1240 (t!357799 (toList!4375 lt!1707598))) lt!1708767)))

(declare-fun b!4533479 () Bool)

(assert (=> b!4533479 (= e!2824864 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (t!357799 (toList!4375 lt!1707598)))) (extractMap!1240 (t!357799 (t!357799 (toList!4375 lt!1707598))))))))

(declare-fun b!4533480 () Bool)

(assert (=> b!4533480 (= e!2824864 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399880 c!774166) b!4533479))

(assert (= (and d!1399880 (not c!774166)) b!4533480))

(declare-fun m!5293481 () Bool)

(assert (=> d!1399880 m!5293481))

(declare-fun m!5293483 () Bool)

(assert (=> d!1399880 m!5293483))

(declare-fun m!5293485 () Bool)

(assert (=> b!4533479 m!5293485))

(assert (=> b!4533479 m!5293485))

(declare-fun m!5293487 () Bool)

(assert (=> b!4533479 m!5293487))

(assert (=> b!4532526 d!1399880))

(declare-fun b!4533481 () Bool)

(declare-fun e!2824865 () Bool)

(declare-fun e!2824867 () Bool)

(assert (=> b!4533481 (= e!2824865 e!2824867)))

(declare-fun res!1888392 () Bool)

(assert (=> b!4533481 (=> (not res!1888392) (not e!2824867))))

(assert (=> b!4533481 (= res!1888392 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708025) key!3287)))))

(declare-fun b!4533482 () Bool)

(declare-fun e!2824870 () List!50839)

(assert (=> b!4533482 (= e!2824870 (getKeysList!483 (toList!4376 lt!1708025)))))

(declare-fun b!4533483 () Bool)

(assert (=> b!4533483 (= e!2824870 (keys!17636 lt!1708025))))

(declare-fun b!4533484 () Bool)

(assert (=> b!4533484 (= e!2824867 (contains!13483 (keys!17636 lt!1708025) key!3287))))

(declare-fun b!4533485 () Bool)

(declare-fun e!2824869 () Bool)

(assert (=> b!4533485 (= e!2824869 (not (contains!13483 (keys!17636 lt!1708025) key!3287)))))

(declare-fun b!4533486 () Bool)

(declare-fun e!2824868 () Unit!97092)

(declare-fun lt!1708772 () Unit!97092)

(assert (=> b!4533486 (= e!2824868 lt!1708772)))

(declare-fun lt!1708773 () Unit!97092)

(assert (=> b!4533486 (= lt!1708773 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1708025) key!3287))))

(assert (=> b!4533486 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708025) key!3287))))

(declare-fun lt!1708770 () Unit!97092)

(assert (=> b!4533486 (= lt!1708770 lt!1708773)))

(assert (=> b!4533486 (= lt!1708772 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1708025) key!3287))))

(declare-fun call!316059 () Bool)

(assert (=> b!4533486 call!316059))

(declare-fun b!4533487 () Bool)

(declare-fun e!2824866 () Unit!97092)

(assert (=> b!4533487 (= e!2824868 e!2824866)))

(declare-fun c!774168 () Bool)

(assert (=> b!4533487 (= c!774168 call!316059)))

(declare-fun b!4533488 () Bool)

(assert (=> b!4533488 false))

(declare-fun lt!1708768 () Unit!97092)

(declare-fun lt!1708771 () Unit!97092)

(assert (=> b!4533488 (= lt!1708768 lt!1708771)))

(assert (=> b!4533488 (containsKey!1843 (toList!4376 lt!1708025) key!3287)))

(assert (=> b!4533488 (= lt!1708771 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1708025) key!3287))))

(declare-fun Unit!97350 () Unit!97092)

(assert (=> b!4533488 (= e!2824866 Unit!97350)))

(declare-fun d!1399882 () Bool)

(assert (=> d!1399882 e!2824865))

(declare-fun res!1888393 () Bool)

(assert (=> d!1399882 (=> res!1888393 e!2824865)))

(assert (=> d!1399882 (= res!1888393 e!2824869)))

(declare-fun res!1888391 () Bool)

(assert (=> d!1399882 (=> (not res!1888391) (not e!2824869))))

(declare-fun lt!1708775 () Bool)

(assert (=> d!1399882 (= res!1888391 (not lt!1708775))))

(declare-fun lt!1708774 () Bool)

(assert (=> d!1399882 (= lt!1708775 lt!1708774)))

(declare-fun lt!1708769 () Unit!97092)

(assert (=> d!1399882 (= lt!1708769 e!2824868)))

(declare-fun c!774169 () Bool)

(assert (=> d!1399882 (= c!774169 lt!1708774)))

(assert (=> d!1399882 (= lt!1708774 (containsKey!1843 (toList!4376 lt!1708025) key!3287))))

(assert (=> d!1399882 (= (contains!13479 lt!1708025 key!3287) lt!1708775)))

(declare-fun b!4533489 () Bool)

(declare-fun Unit!97351 () Unit!97092)

(assert (=> b!4533489 (= e!2824866 Unit!97351)))

(declare-fun bm!316054 () Bool)

(assert (=> bm!316054 (= call!316059 (contains!13483 e!2824870 key!3287))))

(declare-fun c!774167 () Bool)

(assert (=> bm!316054 (= c!774167 c!774169)))

(assert (= (and d!1399882 c!774169) b!4533486))

(assert (= (and d!1399882 (not c!774169)) b!4533487))

(assert (= (and b!4533487 c!774168) b!4533488))

(assert (= (and b!4533487 (not c!774168)) b!4533489))

(assert (= (or b!4533486 b!4533487) bm!316054))

(assert (= (and bm!316054 c!774167) b!4533482))

(assert (= (and bm!316054 (not c!774167)) b!4533483))

(assert (= (and d!1399882 res!1888391) b!4533485))

(assert (= (and d!1399882 (not res!1888393)) b!4533481))

(assert (= (and b!4533481 res!1888392) b!4533484))

(declare-fun m!5293489 () Bool)

(assert (=> b!4533486 m!5293489))

(declare-fun m!5293491 () Bool)

(assert (=> b!4533486 m!5293491))

(assert (=> b!4533486 m!5293491))

(declare-fun m!5293493 () Bool)

(assert (=> b!4533486 m!5293493))

(declare-fun m!5293495 () Bool)

(assert (=> b!4533486 m!5293495))

(assert (=> b!4533484 m!5291461))

(assert (=> b!4533484 m!5291461))

(declare-fun m!5293497 () Bool)

(assert (=> b!4533484 m!5293497))

(assert (=> b!4533483 m!5291461))

(declare-fun m!5293499 () Bool)

(assert (=> bm!316054 m!5293499))

(assert (=> b!4533485 m!5291461))

(assert (=> b!4533485 m!5291461))

(assert (=> b!4533485 m!5293497))

(declare-fun m!5293501 () Bool)

(assert (=> b!4533488 m!5293501))

(declare-fun m!5293503 () Bool)

(assert (=> b!4533488 m!5293503))

(assert (=> b!4533481 m!5293491))

(assert (=> b!4533481 m!5293491))

(assert (=> b!4533481 m!5293493))

(declare-fun m!5293505 () Bool)

(assert (=> b!4533482 m!5293505))

(assert (=> d!1399882 m!5293501))

(assert (=> d!1399276 d!1399882))

(declare-fun b!4533577 () Bool)

(declare-fun res!1888437 () Bool)

(declare-fun e!2824939 () Bool)

(assert (=> b!4533577 (=> (not res!1888437) (not e!2824939))))

(declare-fun lt!1708838 () List!50836)

(assert (=> b!4533577 (= res!1888437 (not (containsKey!1843 lt!1708838 key!3287)))))

(declare-fun b!4533578 () Bool)

(declare-fun e!2824935 () Unit!97092)

(declare-fun Unit!97352 () Unit!97092)

(assert (=> b!4533578 (= e!2824935 Unit!97352)))

(declare-fun lt!1708844 () Unit!97092)

(assert (=> b!4533578 (= lt!1708844 (lemmaInGetKeysListThenContainsKey!482 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (_1!28879 (h!56583 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))))))))

(declare-fun call!316074 () Bool)

(assert (=> b!4533578 call!316074))

(declare-fun lt!1708834 () Unit!97092)

(assert (=> b!4533578 (= lt!1708834 lt!1708844)))

(assert (=> b!4533578 false))

(declare-fun b!4533579 () Bool)

(declare-fun Unit!97353 () Unit!97092)

(assert (=> b!4533579 (= e!2824935 Unit!97353)))

(declare-fun lt!1708830 () K!12100)

(declare-fun bm!316068 () Bool)

(declare-fun c!774199 () Bool)

(assert (=> bm!316068 (= call!316074 (containsKey!1843 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (ite c!774199 lt!1708830 (_1!28879 (h!56583 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))))))))

(declare-fun b!4533580 () Bool)

(declare-fun e!2824936 () Unit!97092)

(declare-fun Unit!97354 () Unit!97092)

(assert (=> b!4533580 (= e!2824936 Unit!97354)))

(declare-fun b!4533581 () Bool)

(declare-fun e!2824937 () Unit!97092)

(declare-fun Unit!97355 () Unit!97092)

(assert (=> b!4533581 (= e!2824937 Unit!97355)))

(declare-fun lt!1708839 () V!12346)

(declare-fun get!16652 (Option!11170) V!12346)

(assert (=> b!4533581 (= lt!1708839 (get!16652 (getValueByKey!1128 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287)))))

(assert (=> b!4533581 (= lt!1708830 key!3287)))

(declare-fun lt!1708836 () K!12100)

(assert (=> b!4533581 (= lt!1708836 key!3287)))

(declare-fun lt!1708828 () Unit!97092)

(declare-fun lemmaContainsTupleThenContainsKey!73 (List!50836 K!12100 V!12346) Unit!97092)

(assert (=> b!4533581 (= lt!1708828 (lemmaContainsTupleThenContainsKey!73 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) lt!1708830 (get!16652 (getValueByKey!1128 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287))))))

(assert (=> b!4533581 call!316074))

(declare-fun lt!1708842 () Unit!97092)

(assert (=> b!4533581 (= lt!1708842 lt!1708828)))

(assert (=> b!4533581 false))

(declare-fun b!4533583 () Bool)

(declare-fun e!2824934 () List!50836)

(assert (=> b!4533583 (= e!2824934 Nil!50712)))

(declare-fun bm!316069 () Bool)

(declare-fun call!316073 () (InoxSet tuple2!51170))

(assert (=> bm!316069 (= call!316073 (content!8411 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))))))

(declare-fun b!4533584 () Bool)

(declare-fun e!2824938 () List!50836)

(assert (=> b!4533584 (= e!2824938 (removePresrvNoDuplicatedKeys!159 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) key!3287))))

(declare-fun bm!316070 () Bool)

(declare-fun call!316077 () (InoxSet tuple2!51170))

(assert (=> bm!316070 (= call!316077 (content!8411 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))))))

(declare-fun bm!316071 () Bool)

(declare-fun call!316075 () (InoxSet tuple2!51170))

(assert (=> bm!316071 (= call!316075 (content!8411 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))))))

(declare-fun b!4533585 () Bool)

(declare-fun Unit!97356 () Unit!97092)

(assert (=> b!4533585 (= e!2824936 Unit!97356)))

(declare-fun lt!1708835 () List!50836)

(assert (=> b!4533585 (= lt!1708835 (removePresrvNoDuplicatedKeys!159 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) key!3287))))

(declare-fun lt!1708831 () Unit!97092)

(assert (=> b!4533585 (= lt!1708831 (lemmaInListThenGetKeysListContains!479 lt!1708835 (_1!28879 (h!56583 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))))))))

(assert (=> b!4533585 (contains!13483 (getKeysList!483 lt!1708835) (_1!28879 (h!56583 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))))))

(declare-fun lt!1708832 () Unit!97092)

(assert (=> b!4533585 (= lt!1708832 lt!1708831)))

(assert (=> b!4533585 false))

(declare-fun b!4533586 () Bool)

(assert (=> b!4533586 (= e!2824938 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))))

(declare-fun b!4533587 () Bool)

(declare-fun e!2824933 () Bool)

(declare-fun call!316076 () (InoxSet tuple2!51170))

(assert (=> b!4533587 (= e!2824933 (= call!316076 call!316077))))

(declare-fun b!4533588 () Bool)

(assert (=> b!4533588 (= e!2824939 e!2824933)))

(declare-fun c!774193 () Bool)

(assert (=> b!4533588 (= c!774193 (containsKey!1843 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287))))

(declare-fun b!4533589 () Bool)

(declare-fun res!1888436 () Bool)

(assert (=> b!4533589 (=> (not res!1888436) (not e!2824939))))

(assert (=> b!4533589 (= res!1888436 (= (content!8412 (getKeysList!483 lt!1708838)) ((_ map and) (content!8412 (getKeysList!483 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))) ((_ map not) (store ((as const (Array K!12100 Bool)) false) key!3287 true)))))))

(declare-fun b!4533590 () Bool)

(assert (=> b!4533590 (= call!316073 ((_ map and) call!316075 ((_ map not) (store ((as const (Array tuple2!51170 Bool)) false) (tuple2!51171 key!3287 (get!16652 (getValueByKey!1128 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287))) true))))))

(declare-fun lt!1708833 () Unit!97092)

(assert (=> b!4533590 (= lt!1708833 e!2824937)))

(declare-fun c!774195 () Bool)

(assert (=> b!4533590 (= c!774195 (contains!13485 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (tuple2!51171 key!3287 (get!16652 (getValueByKey!1128 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287)))))))

(declare-fun e!2824940 () Unit!97092)

(declare-fun Unit!97357 () Unit!97092)

(assert (=> b!4533590 (= e!2824940 Unit!97357)))

(declare-fun bm!316072 () Bool)

(assert (=> bm!316072 (= call!316076 (content!8411 lt!1708838))))

(declare-fun b!4533591 () Bool)

(declare-fun e!2824941 () List!50836)

(assert (=> b!4533591 (= e!2824941 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))))))

(declare-fun c!774200 () Bool)

(declare-fun call!316078 () Bool)

(assert (=> b!4533591 (= c!774200 call!316078)))

(declare-fun lt!1708827 () Unit!97092)

(assert (=> b!4533591 (= lt!1708827 e!2824940)))

(declare-fun b!4533592 () Bool)

(assert (=> b!4533592 (= e!2824933 (= call!316076 ((_ map and) call!316077 ((_ map not) (store ((as const (Array tuple2!51170 Bool)) false) (tuple2!51171 key!3287 (get!16652 (getValueByKey!1128 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287))) true)))))))

(assert (=> b!4533592 (containsKey!1843 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287)))

(declare-fun lt!1708829 () Unit!97092)

(assert (=> b!4533592 (= lt!1708829 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287))))

(assert (=> b!4533592 (isDefined!8451 (getValueByKey!1128 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287))))

(declare-fun lt!1708841 () Unit!97092)

(assert (=> b!4533592 (= lt!1708841 lt!1708829)))

(declare-fun d!1399884 () Bool)

(assert (=> d!1399884 e!2824939))

(declare-fun res!1888435 () Bool)

(assert (=> d!1399884 (=> (not res!1888435) (not e!2824939))))

(assert (=> d!1399884 (= res!1888435 (invariantList!1035 lt!1708838))))

(assert (=> d!1399884 (= lt!1708838 e!2824941)))

(assert (=> d!1399884 (= c!774199 (and ((_ is Cons!50712) (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (= (_1!28879 (h!56583 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))) key!3287)))))

(assert (=> d!1399884 (invariantList!1035 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))))

(assert (=> d!1399884 (= (removePresrvNoDuplicatedKeys!159 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) key!3287) lt!1708838)))

(declare-fun b!4533582 () Bool)

(declare-fun lt!1708843 () Unit!97092)

(assert (=> b!4533582 (= lt!1708843 e!2824936)))

(declare-fun c!774196 () Bool)

(assert (=> b!4533582 (= c!774196 call!316078)))

(declare-fun lt!1708840 () Unit!97092)

(assert (=> b!4533582 (= lt!1708840 e!2824935)))

(declare-fun c!774198 () Bool)

(assert (=> b!4533582 (= c!774198 (contains!13483 (getKeysList!483 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))) (_1!28879 (h!56583 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))))))))

(declare-fun lt!1708837 () List!50836)

(declare-fun $colon$colon!958 (List!50836 tuple2!51170) List!50836)

(assert (=> b!4533582 (= lt!1708837 ($colon$colon!958 (removePresrvNoDuplicatedKeys!159 (t!357798 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) key!3287) (h!56583 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))))))

(assert (=> b!4533582 (= e!2824934 lt!1708837)))

(declare-fun b!4533593 () Bool)

(declare-fun Unit!97359 () Unit!97092)

(assert (=> b!4533593 (= e!2824937 Unit!97359)))

(declare-fun b!4533594 () Bool)

(assert (=> b!4533594 (= e!2824941 e!2824934)))

(declare-fun c!774194 () Bool)

(assert (=> b!4533594 (= c!774194 (and ((_ is Cons!50712) (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (not (= (_1!28879 (h!56583 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))) key!3287))))))

(declare-fun b!4533595 () Bool)

(assert (=> b!4533595 (= call!316073 call!316075)))

(declare-fun Unit!97360 () Unit!97092)

(assert (=> b!4533595 (= e!2824940 Unit!97360)))

(declare-fun bm!316073 () Bool)

(assert (=> bm!316073 (= call!316078 (containsKey!1843 e!2824938 (ite c!774199 key!3287 (_1!28879 (h!56583 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))))))))

(declare-fun c!774197 () Bool)

(assert (=> bm!316073 (= c!774197 c!774199)))

(assert (= (and d!1399884 c!774199) b!4533591))

(assert (= (and d!1399884 (not c!774199)) b!4533594))

(assert (= (and b!4533591 c!774200) b!4533590))

(assert (= (and b!4533591 (not c!774200)) b!4533595))

(assert (= (and b!4533590 c!774195) b!4533581))

(assert (= (and b!4533590 (not c!774195)) b!4533593))

(assert (= (or b!4533590 b!4533595) bm!316069))

(assert (= (or b!4533590 b!4533595) bm!316071))

(assert (= (and b!4533594 c!774194) b!4533582))

(assert (= (and b!4533594 (not c!774194)) b!4533583))

(assert (= (and b!4533582 c!774198) b!4533578))

(assert (= (and b!4533582 (not c!774198)) b!4533579))

(assert (= (and b!4533582 c!774196) b!4533585))

(assert (= (and b!4533582 (not c!774196)) b!4533580))

(assert (= (or b!4533581 b!4533578) bm!316068))

(assert (= (or b!4533591 b!4533582) bm!316073))

(assert (= (and bm!316073 c!774197) b!4533586))

(assert (= (and bm!316073 (not c!774197)) b!4533584))

(assert (= (and d!1399884 res!1888435) b!4533577))

(assert (= (and b!4533577 res!1888437) b!4533589))

(assert (= (and b!4533589 res!1888436) b!4533588))

(assert (= (and b!4533588 c!774193) b!4533592))

(assert (= (and b!4533588 (not c!774193)) b!4533587))

(assert (= (or b!4533592 b!4533587) bm!316072))

(assert (= (or b!4533592 b!4533587) bm!316070))

(declare-fun m!5293639 () Bool)

(assert (=> d!1399884 m!5293639))

(declare-fun m!5293641 () Bool)

(assert (=> d!1399884 m!5293641))

(declare-fun m!5293643 () Bool)

(assert (=> bm!316073 m!5293643))

(declare-fun m!5293645 () Bool)

(assert (=> bm!316070 m!5293645))

(declare-fun m!5293647 () Bool)

(assert (=> b!4533590 m!5293647))

(assert (=> b!4533590 m!5293647))

(declare-fun m!5293649 () Bool)

(assert (=> b!4533590 m!5293649))

(declare-fun m!5293651 () Bool)

(assert (=> b!4533590 m!5293651))

(declare-fun m!5293653 () Bool)

(assert (=> b!4533590 m!5293653))

(assert (=> b!4533589 m!5291027))

(declare-fun m!5293655 () Bool)

(assert (=> b!4533589 m!5293655))

(declare-fun m!5293657 () Bool)

(assert (=> b!4533589 m!5293657))

(declare-fun m!5293659 () Bool)

(assert (=> b!4533589 m!5293659))

(assert (=> b!4533589 m!5293655))

(declare-fun m!5293661 () Bool)

(assert (=> b!4533589 m!5293661))

(assert (=> b!4533589 m!5293657))

(assert (=> b!4533581 m!5293647))

(assert (=> b!4533581 m!5293647))

(assert (=> b!4533581 m!5293649))

(assert (=> b!4533581 m!5293649))

(declare-fun m!5293663 () Bool)

(assert (=> b!4533581 m!5293663))

(assert (=> b!4533592 m!5293647))

(assert (=> b!4533592 m!5293649))

(assert (=> b!4533592 m!5293647))

(declare-fun m!5293665 () Bool)

(assert (=> b!4533592 m!5293665))

(declare-fun m!5293667 () Bool)

(assert (=> b!4533592 m!5293667))

(assert (=> b!4533592 m!5293647))

(declare-fun m!5293669 () Bool)

(assert (=> b!4533592 m!5293669))

(assert (=> b!4533592 m!5293651))

(declare-fun m!5293671 () Bool)

(assert (=> b!4533585 m!5293671))

(declare-fun m!5293673 () Bool)

(assert (=> b!4533585 m!5293673))

(declare-fun m!5293675 () Bool)

(assert (=> b!4533585 m!5293675))

(assert (=> b!4533585 m!5293675))

(declare-fun m!5293677 () Bool)

(assert (=> b!4533585 m!5293677))

(declare-fun m!5293679 () Bool)

(assert (=> bm!316069 m!5293679))

(declare-fun m!5293681 () Bool)

(assert (=> b!4533578 m!5293681))

(declare-fun m!5293683 () Bool)

(assert (=> bm!316072 m!5293683))

(declare-fun m!5293685 () Bool)

(assert (=> bm!316068 m!5293685))

(assert (=> bm!316071 m!5293645))

(declare-fun m!5293687 () Bool)

(assert (=> b!4533582 m!5293687))

(assert (=> b!4533582 m!5293687))

(declare-fun m!5293689 () Bool)

(assert (=> b!4533582 m!5293689))

(assert (=> b!4533582 m!5293671))

(assert (=> b!4533582 m!5293671))

(declare-fun m!5293691 () Bool)

(assert (=> b!4533582 m!5293691))

(declare-fun m!5293693 () Bool)

(assert (=> b!4533577 m!5293693))

(assert (=> b!4533588 m!5293665))

(assert (=> b!4533584 m!5293671))

(assert (=> d!1399276 d!1399884))

(declare-fun b!4533596 () Bool)

(declare-fun e!2824942 () Bool)

(declare-fun e!2824944 () Bool)

(assert (=> b!4533596 (= e!2824942 e!2824944)))

(declare-fun res!1888439 () Bool)

(assert (=> b!4533596 (=> (not res!1888439) (not e!2824944))))

(assert (=> b!4533596 (= res!1888439 (isDefined!8451 (getValueByKey!1128 (toList!4376 (extractMap!1240 (toList!4375 lt!1707598))) key!3287)))))

(declare-fun b!4533597 () Bool)

(declare-fun e!2824947 () List!50839)

(assert (=> b!4533597 (= e!2824947 (getKeysList!483 (toList!4376 (extractMap!1240 (toList!4375 lt!1707598)))))))

(declare-fun b!4533598 () Bool)

(assert (=> b!4533598 (= e!2824947 (keys!17636 (extractMap!1240 (toList!4375 lt!1707598))))))

(declare-fun b!4533599 () Bool)

(assert (=> b!4533599 (= e!2824944 (contains!13483 (keys!17636 (extractMap!1240 (toList!4375 lt!1707598))) key!3287))))

(declare-fun b!4533600 () Bool)

(declare-fun e!2824946 () Bool)

(assert (=> b!4533600 (= e!2824946 (not (contains!13483 (keys!17636 (extractMap!1240 (toList!4375 lt!1707598))) key!3287)))))

(declare-fun b!4533601 () Bool)

(declare-fun e!2824945 () Unit!97092)

(declare-fun lt!1708849 () Unit!97092)

(assert (=> b!4533601 (= e!2824945 lt!1708849)))

(declare-fun lt!1708850 () Unit!97092)

(assert (=> b!4533601 (= lt!1708850 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 (extractMap!1240 (toList!4375 lt!1707598))) key!3287))))

(assert (=> b!4533601 (isDefined!8451 (getValueByKey!1128 (toList!4376 (extractMap!1240 (toList!4375 lt!1707598))) key!3287))))

(declare-fun lt!1708847 () Unit!97092)

(assert (=> b!4533601 (= lt!1708847 lt!1708850)))

(assert (=> b!4533601 (= lt!1708849 (lemmaInListThenGetKeysListContains!479 (toList!4376 (extractMap!1240 (toList!4375 lt!1707598))) key!3287))))

(declare-fun call!316079 () Bool)

(assert (=> b!4533601 call!316079))

(declare-fun b!4533602 () Bool)

(declare-fun e!2824943 () Unit!97092)

(assert (=> b!4533602 (= e!2824945 e!2824943)))

(declare-fun c!774202 () Bool)

(assert (=> b!4533602 (= c!774202 call!316079)))

(declare-fun b!4533603 () Bool)

(assert (=> b!4533603 false))

(declare-fun lt!1708845 () Unit!97092)

(declare-fun lt!1708848 () Unit!97092)

(assert (=> b!4533603 (= lt!1708845 lt!1708848)))

(assert (=> b!4533603 (containsKey!1843 (toList!4376 (extractMap!1240 (toList!4375 lt!1707598))) key!3287)))

(assert (=> b!4533603 (= lt!1708848 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 (extractMap!1240 (toList!4375 lt!1707598))) key!3287))))

(declare-fun Unit!97361 () Unit!97092)

(assert (=> b!4533603 (= e!2824943 Unit!97361)))

(declare-fun d!1399938 () Bool)

(assert (=> d!1399938 e!2824942))

(declare-fun res!1888440 () Bool)

(assert (=> d!1399938 (=> res!1888440 e!2824942)))

(assert (=> d!1399938 (= res!1888440 e!2824946)))

(declare-fun res!1888438 () Bool)

(assert (=> d!1399938 (=> (not res!1888438) (not e!2824946))))

(declare-fun lt!1708852 () Bool)

(assert (=> d!1399938 (= res!1888438 (not lt!1708852))))

(declare-fun lt!1708851 () Bool)

(assert (=> d!1399938 (= lt!1708852 lt!1708851)))

(declare-fun lt!1708846 () Unit!97092)

(assert (=> d!1399938 (= lt!1708846 e!2824945)))

(declare-fun c!774203 () Bool)

(assert (=> d!1399938 (= c!774203 lt!1708851)))

(assert (=> d!1399938 (= lt!1708851 (containsKey!1843 (toList!4376 (extractMap!1240 (toList!4375 lt!1707598))) key!3287))))

(assert (=> d!1399938 (= (contains!13479 (extractMap!1240 (toList!4375 lt!1707598)) key!3287) lt!1708852)))

(declare-fun b!4533604 () Bool)

(declare-fun Unit!97362 () Unit!97092)

(assert (=> b!4533604 (= e!2824943 Unit!97362)))

(declare-fun bm!316074 () Bool)

(assert (=> bm!316074 (= call!316079 (contains!13483 e!2824947 key!3287))))

(declare-fun c!774201 () Bool)

(assert (=> bm!316074 (= c!774201 c!774203)))

(assert (= (and d!1399938 c!774203) b!4533601))

(assert (= (and d!1399938 (not c!774203)) b!4533602))

(assert (= (and b!4533602 c!774202) b!4533603))

(assert (= (and b!4533602 (not c!774202)) b!4533604))

(assert (= (or b!4533601 b!4533602) bm!316074))

(assert (= (and bm!316074 c!774201) b!4533597))

(assert (= (and bm!316074 (not c!774201)) b!4533598))

(assert (= (and d!1399938 res!1888438) b!4533600))

(assert (= (and d!1399938 (not res!1888440)) b!4533596))

(assert (= (and b!4533596 res!1888439) b!4533599))

(declare-fun m!5293703 () Bool)

(assert (=> b!4533601 m!5293703))

(declare-fun m!5293705 () Bool)

(assert (=> b!4533601 m!5293705))

(assert (=> b!4533601 m!5293705))

(declare-fun m!5293707 () Bool)

(assert (=> b!4533601 m!5293707))

(declare-fun m!5293709 () Bool)

(assert (=> b!4533601 m!5293709))

(assert (=> b!4533599 m!5290683))

(assert (=> b!4533599 m!5292777))

(assert (=> b!4533599 m!5292777))

(declare-fun m!5293711 () Bool)

(assert (=> b!4533599 m!5293711))

(assert (=> b!4533598 m!5290683))

(assert (=> b!4533598 m!5292777))

(declare-fun m!5293717 () Bool)

(assert (=> bm!316074 m!5293717))

(assert (=> b!4533600 m!5290683))

(assert (=> b!4533600 m!5292777))

(assert (=> b!4533600 m!5292777))

(assert (=> b!4533600 m!5293711))

(declare-fun m!5293725 () Bool)

(assert (=> b!4533603 m!5293725))

(declare-fun m!5293729 () Bool)

(assert (=> b!4533603 m!5293729))

(assert (=> b!4533596 m!5293705))

(assert (=> b!4533596 m!5293705))

(assert (=> b!4533596 m!5293707))

(declare-fun m!5293735 () Bool)

(assert (=> b!4533597 m!5293735))

(assert (=> d!1399938 m!5293725))

(assert (=> d!1399306 d!1399938))

(assert (=> d!1399306 d!1399308))

(declare-fun d!1399942 () Bool)

(assert (=> d!1399942 (contains!13479 (extractMap!1240 (toList!4375 lt!1707598)) key!3287)))

(assert (=> d!1399942 true))

(declare-fun _$34!712 () Unit!97092)

(assert (=> d!1399942 (= (choose!29770 lt!1707598 key!3287 hashF!1107) _$34!712)))

(declare-fun bs!869996 () Bool)

(assert (= bs!869996 d!1399942))

(assert (=> bs!869996 m!5290683))

(assert (=> bs!869996 m!5290683))

(assert (=> bs!869996 m!5291591))

(assert (=> d!1399306 d!1399942))

(declare-fun d!1399946 () Bool)

(declare-fun res!1888447 () Bool)

(declare-fun e!2824957 () Bool)

(assert (=> d!1399946 (=> res!1888447 e!2824957)))

(assert (=> d!1399946 (= res!1888447 ((_ is Nil!50713) (toList!4375 lt!1707598)))))

(assert (=> d!1399946 (= (forall!10315 (toList!4375 lt!1707598) lambda!174774) e!2824957)))

(declare-fun b!4533619 () Bool)

(declare-fun e!2824958 () Bool)

(assert (=> b!4533619 (= e!2824957 e!2824958)))

(declare-fun res!1888448 () Bool)

(assert (=> b!4533619 (=> (not res!1888448) (not e!2824958))))

(assert (=> b!4533619 (= res!1888448 (dynLambda!21195 lambda!174774 (h!56584 (toList!4375 lt!1707598))))))

(declare-fun b!4533620 () Bool)

(assert (=> b!4533620 (= e!2824958 (forall!10315 (t!357799 (toList!4375 lt!1707598)) lambda!174774))))

(assert (= (and d!1399946 (not res!1888447)) b!4533619))

(assert (= (and b!4533619 res!1888448) b!4533620))

(declare-fun b_lambda!156925 () Bool)

(assert (=> (not b_lambda!156925) (not b!4533619)))

(declare-fun m!5293741 () Bool)

(assert (=> b!4533619 m!5293741))

(declare-fun m!5293743 () Bool)

(assert (=> b!4533620 m!5293743))

(assert (=> d!1399306 d!1399946))

(declare-fun d!1399948 () Bool)

(declare-fun res!1888449 () Bool)

(declare-fun e!2824959 () Bool)

(assert (=> d!1399948 (=> res!1888449 e!2824959)))

(assert (=> d!1399948 (= res!1888449 (not ((_ is Cons!50712) (t!357798 (_2!28880 lt!1707605)))))))

(assert (=> d!1399948 (= (noDuplicateKeys!1184 (t!357798 (_2!28880 lt!1707605))) e!2824959)))

(declare-fun b!4533621 () Bool)

(declare-fun e!2824960 () Bool)

(assert (=> b!4533621 (= e!2824959 e!2824960)))

(declare-fun res!1888450 () Bool)

(assert (=> b!4533621 (=> (not res!1888450) (not e!2824960))))

(assert (=> b!4533621 (= res!1888450 (not (containsKey!1840 (t!357798 (t!357798 (_2!28880 lt!1707605))) (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))))

(declare-fun b!4533622 () Bool)

(assert (=> b!4533622 (= e!2824960 (noDuplicateKeys!1184 (t!357798 (t!357798 (_2!28880 lt!1707605)))))))

(assert (= (and d!1399948 (not res!1888449)) b!4533621))

(assert (= (and b!4533621 res!1888450) b!4533622))

(declare-fun m!5293745 () Bool)

(assert (=> b!4533621 m!5293745))

(declare-fun m!5293747 () Bool)

(assert (=> b!4533622 m!5293747))

(assert (=> b!4532563 d!1399948))

(declare-fun d!1399950 () Bool)

(declare-fun isEmpty!28727 (Option!11171) Bool)

(assert (=> d!1399950 (= (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1707598) hash!344)) (not (isEmpty!28727 (getValueByKey!1129 (toList!4375 lt!1707598) hash!344))))))

(declare-fun bs!870008 () Bool)

(assert (= bs!870008 d!1399950))

(assert (=> bs!870008 m!5291395))

(declare-fun m!5293749 () Bool)

(assert (=> bs!870008 m!5293749))

(assert (=> b!4532447 d!1399950))

(declare-fun b!4533624 () Bool)

(declare-fun e!2824961 () Option!11171)

(declare-fun e!2824962 () Option!11171)

(assert (=> b!4533624 (= e!2824961 e!2824962)))

(declare-fun c!774209 () Bool)

(assert (=> b!4533624 (= c!774209 (and ((_ is Cons!50713) (toList!4375 lt!1707598)) (not (= (_1!28880 (h!56584 (toList!4375 lt!1707598))) hash!344))))))

(declare-fun b!4533626 () Bool)

(assert (=> b!4533626 (= e!2824962 None!11170)))

(declare-fun b!4533625 () Bool)

(assert (=> b!4533625 (= e!2824962 (getValueByKey!1129 (t!357799 (toList!4375 lt!1707598)) hash!344))))

(declare-fun b!4533623 () Bool)

(assert (=> b!4533623 (= e!2824961 (Some!11170 (_2!28880 (h!56584 (toList!4375 lt!1707598)))))))

(declare-fun d!1399952 () Bool)

(declare-fun c!774208 () Bool)

(assert (=> d!1399952 (= c!774208 (and ((_ is Cons!50713) (toList!4375 lt!1707598)) (= (_1!28880 (h!56584 (toList!4375 lt!1707598))) hash!344)))))

(assert (=> d!1399952 (= (getValueByKey!1129 (toList!4375 lt!1707598) hash!344) e!2824961)))

(assert (= (and d!1399952 c!774208) b!4533623))

(assert (= (and d!1399952 (not c!774208)) b!4533624))

(assert (= (and b!4533624 c!774209) b!4533625))

(assert (= (and b!4533624 (not c!774209)) b!4533626))

(declare-fun m!5293751 () Bool)

(assert (=> b!4533625 m!5293751))

(assert (=> b!4532447 d!1399952))

(declare-fun d!1399954 () Bool)

(declare-fun e!2824964 () Bool)

(assert (=> d!1399954 e!2824964))

(declare-fun res!1888451 () Bool)

(assert (=> d!1399954 (=> res!1888451 e!2824964)))

(declare-fun lt!1708882 () Bool)

(assert (=> d!1399954 (= res!1888451 (not lt!1708882))))

(declare-fun lt!1708885 () Bool)

(assert (=> d!1399954 (= lt!1708882 lt!1708885)))

(declare-fun lt!1708884 () Unit!97092)

(declare-fun e!2824963 () Unit!97092)

(assert (=> d!1399954 (= lt!1708884 e!2824963)))

(declare-fun c!774210 () Bool)

(assert (=> d!1399954 (= c!774210 lt!1708885)))

(assert (=> d!1399954 (= lt!1708885 (containsKey!1844 (toList!4375 lt!1708092) (_1!28880 lt!1707610)))))

(assert (=> d!1399954 (= (contains!13481 lt!1708092 (_1!28880 lt!1707610)) lt!1708882)))

(declare-fun b!4533627 () Bool)

(declare-fun lt!1708883 () Unit!97092)

(assert (=> b!4533627 (= e!2824963 lt!1708883)))

(assert (=> b!4533627 (= lt!1708883 (lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (toList!4375 lt!1708092) (_1!28880 lt!1707610)))))

(assert (=> b!4533627 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1708092) (_1!28880 lt!1707610)))))

(declare-fun b!4533628 () Bool)

(declare-fun Unit!97364 () Unit!97092)

(assert (=> b!4533628 (= e!2824963 Unit!97364)))

(declare-fun b!4533629 () Bool)

(assert (=> b!4533629 (= e!2824964 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1708092) (_1!28880 lt!1707610))))))

(assert (= (and d!1399954 c!774210) b!4533627))

(assert (= (and d!1399954 (not c!774210)) b!4533628))

(assert (= (and d!1399954 (not res!1888451)) b!4533629))

(declare-fun m!5293753 () Bool)

(assert (=> d!1399954 m!5293753))

(declare-fun m!5293755 () Bool)

(assert (=> b!4533627 m!5293755))

(assert (=> b!4533627 m!5291613))

(assert (=> b!4533627 m!5291613))

(declare-fun m!5293757 () Bool)

(assert (=> b!4533627 m!5293757))

(assert (=> b!4533629 m!5291613))

(assert (=> b!4533629 m!5291613))

(assert (=> b!4533629 m!5293757))

(assert (=> d!1399310 d!1399954))

(declare-fun b!4533631 () Bool)

(declare-fun e!2824965 () Option!11171)

(declare-fun e!2824966 () Option!11171)

(assert (=> b!4533631 (= e!2824965 e!2824966)))

(declare-fun c!774212 () Bool)

(assert (=> b!4533631 (= c!774212 (and ((_ is Cons!50713) lt!1708091) (not (= (_1!28880 (h!56584 lt!1708091)) (_1!28880 lt!1707610)))))))

(declare-fun b!4533633 () Bool)

(assert (=> b!4533633 (= e!2824966 None!11170)))

(declare-fun b!4533632 () Bool)

(assert (=> b!4533632 (= e!2824966 (getValueByKey!1129 (t!357799 lt!1708091) (_1!28880 lt!1707610)))))

(declare-fun b!4533630 () Bool)

(assert (=> b!4533630 (= e!2824965 (Some!11170 (_2!28880 (h!56584 lt!1708091))))))

(declare-fun d!1399956 () Bool)

(declare-fun c!774211 () Bool)

(assert (=> d!1399956 (= c!774211 (and ((_ is Cons!50713) lt!1708091) (= (_1!28880 (h!56584 lt!1708091)) (_1!28880 lt!1707610))))))

(assert (=> d!1399956 (= (getValueByKey!1129 lt!1708091 (_1!28880 lt!1707610)) e!2824965)))

(assert (= (and d!1399956 c!774211) b!4533630))

(assert (= (and d!1399956 (not c!774211)) b!4533631))

(assert (= (and b!4533631 c!774212) b!4533632))

(assert (= (and b!4533631 (not c!774212)) b!4533633))

(declare-fun m!5293759 () Bool)

(assert (=> b!4533632 m!5293759))

(assert (=> d!1399310 d!1399956))

(declare-fun d!1399958 () Bool)

(assert (=> d!1399958 (= (getValueByKey!1129 lt!1708091 (_1!28880 lt!1707610)) (Some!11170 (_2!28880 lt!1707610)))))

(declare-fun lt!1708886 () Unit!97092)

(assert (=> d!1399958 (= lt!1708886 (choose!29780 lt!1708091 (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))

(declare-fun e!2824967 () Bool)

(assert (=> d!1399958 e!2824967))

(declare-fun res!1888452 () Bool)

(assert (=> d!1399958 (=> (not res!1888452) (not e!2824967))))

(assert (=> d!1399958 (= res!1888452 (isStrictlySorted!449 lt!1708091))))

(assert (=> d!1399958 (= (lemmaContainsTupThenGetReturnValue!706 lt!1708091 (_1!28880 lt!1707610) (_2!28880 lt!1707610)) lt!1708886)))

(declare-fun b!4533634 () Bool)

(declare-fun res!1888453 () Bool)

(assert (=> b!4533634 (=> (not res!1888453) (not e!2824967))))

(assert (=> b!4533634 (= res!1888453 (containsKey!1844 lt!1708091 (_1!28880 lt!1707610)))))

(declare-fun b!4533635 () Bool)

(assert (=> b!4533635 (= e!2824967 (contains!13480 lt!1708091 (tuple2!51173 (_1!28880 lt!1707610) (_2!28880 lt!1707610))))))

(assert (= (and d!1399958 res!1888452) b!4533634))

(assert (= (and b!4533634 res!1888453) b!4533635))

(assert (=> d!1399958 m!5291607))

(declare-fun m!5293761 () Bool)

(assert (=> d!1399958 m!5293761))

(declare-fun m!5293763 () Bool)

(assert (=> d!1399958 m!5293763))

(declare-fun m!5293765 () Bool)

(assert (=> b!4533634 m!5293765))

(declare-fun m!5293767 () Bool)

(assert (=> b!4533635 m!5293767))

(assert (=> d!1399310 d!1399958))

(declare-fun bm!316079 () Bool)

(declare-fun call!316086 () List!50837)

(declare-fun call!316084 () List!50837)

(assert (=> bm!316079 (= call!316086 call!316084)))

(declare-fun e!2824971 () List!50837)

(declare-fun c!774214 () Bool)

(declare-fun c!774213 () Bool)

(declare-fun b!4533636 () Bool)

(assert (=> b!4533636 (= e!2824971 (ite c!774213 (t!357799 (toList!4375 lm!1477)) (ite c!774214 (Cons!50713 (h!56584 (toList!4375 lm!1477)) (t!357799 (toList!4375 lm!1477))) Nil!50713)))))

(declare-fun b!4533637 () Bool)

(declare-fun e!2824972 () Bool)

(declare-fun lt!1708887 () List!50837)

(assert (=> b!4533637 (= e!2824972 (contains!13480 lt!1708887 (tuple2!51173 (_1!28880 lt!1707610) (_2!28880 lt!1707610))))))

(declare-fun b!4533638 () Bool)

(assert (=> b!4533638 (= c!774214 (and ((_ is Cons!50713) (toList!4375 lm!1477)) (bvsgt (_1!28880 (h!56584 (toList!4375 lm!1477))) (_1!28880 lt!1707610))))))

(declare-fun e!2824968 () List!50837)

(declare-fun e!2824970 () List!50837)

(assert (=> b!4533638 (= e!2824968 e!2824970)))

(declare-fun b!4533640 () Bool)

(declare-fun e!2824969 () List!50837)

(assert (=> b!4533640 (= e!2824969 e!2824968)))

(assert (=> b!4533640 (= c!774213 (and ((_ is Cons!50713) (toList!4375 lm!1477)) (= (_1!28880 (h!56584 (toList!4375 lm!1477))) (_1!28880 lt!1707610))))))

(declare-fun b!4533641 () Bool)

(assert (=> b!4533641 (= e!2824970 call!316086)))

(declare-fun b!4533642 () Bool)

(assert (=> b!4533642 (= e!2824968 call!316084)))

(declare-fun c!774215 () Bool)

(declare-fun call!316085 () List!50837)

(declare-fun bm!316080 () Bool)

(assert (=> bm!316080 (= call!316085 ($colon$colon!956 e!2824971 (ite c!774215 (h!56584 (toList!4375 lm!1477)) (tuple2!51173 (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))))

(declare-fun c!774216 () Bool)

(assert (=> bm!316080 (= c!774216 c!774215)))

(declare-fun b!4533643 () Bool)

(assert (=> b!4533643 (= e!2824971 (insertStrictlySorted!426 (t!357799 (toList!4375 lm!1477)) (_1!28880 lt!1707610) (_2!28880 lt!1707610)))))

(declare-fun b!4533644 () Bool)

(assert (=> b!4533644 (= e!2824969 call!316085)))

(declare-fun b!4533645 () Bool)

(assert (=> b!4533645 (= e!2824970 call!316086)))

(declare-fun bm!316081 () Bool)

(assert (=> bm!316081 (= call!316084 call!316085)))

(declare-fun b!4533639 () Bool)

(declare-fun res!1888454 () Bool)

(assert (=> b!4533639 (=> (not res!1888454) (not e!2824972))))

(assert (=> b!4533639 (= res!1888454 (containsKey!1844 lt!1708887 (_1!28880 lt!1707610)))))

(declare-fun d!1399960 () Bool)

(assert (=> d!1399960 e!2824972))

(declare-fun res!1888455 () Bool)

(assert (=> d!1399960 (=> (not res!1888455) (not e!2824972))))

(assert (=> d!1399960 (= res!1888455 (isStrictlySorted!449 lt!1708887))))

(assert (=> d!1399960 (= lt!1708887 e!2824969)))

(assert (=> d!1399960 (= c!774215 (and ((_ is Cons!50713) (toList!4375 lm!1477)) (bvslt (_1!28880 (h!56584 (toList!4375 lm!1477))) (_1!28880 lt!1707610))))))

(assert (=> d!1399960 (isStrictlySorted!449 (toList!4375 lm!1477))))

(assert (=> d!1399960 (= (insertStrictlySorted!426 (toList!4375 lm!1477) (_1!28880 lt!1707610) (_2!28880 lt!1707610)) lt!1708887)))

(assert (= (and d!1399960 c!774215) b!4533644))

(assert (= (and d!1399960 (not c!774215)) b!4533640))

(assert (= (and b!4533640 c!774213) b!4533642))

(assert (= (and b!4533640 (not c!774213)) b!4533638))

(assert (= (and b!4533638 c!774214) b!4533641))

(assert (= (and b!4533638 (not c!774214)) b!4533645))

(assert (= (or b!4533641 b!4533645) bm!316079))

(assert (= (or b!4533642 bm!316079) bm!316081))

(assert (= (or b!4533644 bm!316081) bm!316080))

(assert (= (and bm!316080 c!774216) b!4533643))

(assert (= (and bm!316080 (not c!774216)) b!4533636))

(assert (= (and d!1399960 res!1888455) b!4533639))

(assert (= (and b!4533639 res!1888454) b!4533637))

(declare-fun m!5293769 () Bool)

(assert (=> d!1399960 m!5293769))

(assert (=> d!1399960 m!5290875))

(declare-fun m!5293771 () Bool)

(assert (=> b!4533643 m!5293771))

(declare-fun m!5293773 () Bool)

(assert (=> bm!316080 m!5293773))

(declare-fun m!5293775 () Bool)

(assert (=> b!4533637 m!5293775))

(declare-fun m!5293777 () Bool)

(assert (=> b!4533639 m!5293777))

(assert (=> d!1399310 d!1399960))

(declare-fun d!1399962 () Bool)

(declare-fun c!774217 () Bool)

(assert (=> d!1399962 (= c!774217 ((_ is Nil!50715) (keys!17636 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))))))

(declare-fun e!2824973 () (InoxSet K!12100))

(assert (=> d!1399962 (= (content!8412 (keys!17636 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) e!2824973)))

(declare-fun b!4533646 () Bool)

(assert (=> b!4533646 (= e!2824973 ((as const (Array K!12100 Bool)) false))))

(declare-fun b!4533647 () Bool)

(assert (=> b!4533647 (= e!2824973 ((_ map or) (store ((as const (Array K!12100 Bool)) false) (h!56588 (keys!17636 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) true) (content!8412 (t!357801 (keys!17636 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))))))))

(assert (= (and d!1399962 c!774217) b!4533646))

(assert (= (and d!1399962 (not c!774217)) b!4533647))

(declare-fun m!5293779 () Bool)

(assert (=> b!4533647 m!5293779))

(declare-fun m!5293781 () Bool)

(assert (=> b!4533647 m!5293781))

(assert (=> b!4532467 d!1399962))

(declare-fun bs!870012 () Bool)

(declare-fun b!4533649 () Bool)

(assert (= bs!870012 (and b!4533649 b!4532969)))

(declare-fun lambda!174916 () Int)

(assert (=> bs!870012 (= (= (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) (toList!4376 lt!1707611)) (= lambda!174916 lambda!174829))))

(declare-fun bs!870013 () Bool)

(assert (= bs!870013 (and b!4533649 b!4533454)))

(assert (=> bs!870013 (= (= (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))) (= lambda!174916 lambda!174897))))

(declare-fun bs!870014 () Bool)

(assert (= bs!870014 (and b!4533649 b!4532901)))

(assert (=> bs!870014 (= (= (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174916 lambda!174827))))

(declare-fun bs!870015 () Bool)

(assert (= bs!870015 (and b!4533649 b!4533453)))

(assert (=> bs!870015 (= (= (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174916 lambda!174898))))

(declare-fun bs!870016 () Bool)

(assert (= bs!870016 (and b!4533649 b!4533096)))

(assert (=> bs!870016 (= (= (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) (toList!4376 lt!1707797)) (= lambda!174916 lambda!174835))))

(declare-fun bs!870017 () Bool)

(assert (= bs!870017 (and b!4533649 b!4533091)))

(assert (=> bs!870017 (= (= (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) (toList!4376 lt!1707612)) (= lambda!174916 lambda!174832))))

(declare-fun bs!870018 () Bool)

(assert (= bs!870018 (and b!4533649 b!4533448)))

(assert (=> bs!870018 (= (= (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174916 lambda!174896))))

(assert (=> b!4533649 true))

(declare-fun bs!870019 () Bool)

(declare-fun b!4533650 () Bool)

(assert (= bs!870019 (and b!4533650 b!4532970)))

(declare-fun lambda!174917 () Int)

(assert (=> bs!870019 (= lambda!174917 lambda!174830)))

(declare-fun bs!870020 () Bool)

(assert (= bs!870020 (and b!4533650 b!4533092)))

(assert (=> bs!870020 (= lambda!174917 lambda!174833)))

(declare-fun bs!870021 () Bool)

(assert (= bs!870021 (and b!4533650 b!4533449)))

(assert (=> bs!870021 (= lambda!174917 lambda!174899)))

(declare-fun bs!870022 () Bool)

(assert (= bs!870022 (and b!4533650 b!4532902)))

(assert (=> bs!870022 (= lambda!174917 lambda!174828)))

(declare-fun bs!870023 () Bool)

(assert (= bs!870023 (and b!4533650 b!4533097)))

(assert (=> bs!870023 (= lambda!174917 lambda!174836)))

(declare-fun d!1399964 () Bool)

(declare-fun e!2824974 () Bool)

(assert (=> d!1399964 e!2824974))

(declare-fun res!1888458 () Bool)

(assert (=> d!1399964 (=> (not res!1888458) (not e!2824974))))

(declare-fun lt!1708888 () List!50839)

(assert (=> d!1399964 (= res!1888458 (noDuplicate!758 lt!1708888))))

(assert (=> d!1399964 (= lt!1708888 (getKeysList!483 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))))))

(assert (=> d!1399964 (= (keys!17636 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) lt!1708888)))

(declare-fun b!4533648 () Bool)

(declare-fun res!1888457 () Bool)

(assert (=> b!4533648 (=> (not res!1888457) (not e!2824974))))

(assert (=> b!4533648 (= res!1888457 (= (length!372 lt!1708888) (length!373 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)))))))

(declare-fun res!1888456 () Bool)

(assert (=> b!4533649 (=> (not res!1888456) (not e!2824974))))

(assert (=> b!4533649 (= res!1888456 (forall!10319 lt!1708888 lambda!174916))))

(assert (=> b!4533650 (= e!2824974 (= (content!8412 lt!1708888) (content!8412 (map!11161 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612)) lambda!174917))))))

(assert (= (and d!1399964 res!1888458) b!4533648))

(assert (= (and b!4533648 res!1888457) b!4533649))

(assert (= (and b!4533649 res!1888456) b!4533650))

(declare-fun m!5293783 () Bool)

(assert (=> d!1399964 m!5293783))

(assert (=> d!1399964 m!5293655))

(declare-fun m!5293785 () Bool)

(assert (=> b!4533648 m!5293785))

(declare-fun m!5293787 () Bool)

(assert (=> b!4533648 m!5293787))

(declare-fun m!5293789 () Bool)

(assert (=> b!4533649 m!5293789))

(declare-fun m!5293791 () Bool)

(assert (=> b!4533650 m!5293791))

(declare-fun m!5293793 () Bool)

(assert (=> b!4533650 m!5293793))

(assert (=> b!4533650 m!5293793))

(declare-fun m!5293795 () Bool)

(assert (=> b!4533650 m!5293795))

(assert (=> b!4532467 d!1399964))

(declare-fun d!1399966 () Bool)

(declare-fun c!774218 () Bool)

(assert (=> d!1399966 (= c!774218 ((_ is Nil!50715) (keys!17636 lt!1708025)))))

(declare-fun e!2824975 () (InoxSet K!12100))

(assert (=> d!1399966 (= (content!8412 (keys!17636 lt!1708025)) e!2824975)))

(declare-fun b!4533651 () Bool)

(assert (=> b!4533651 (= e!2824975 ((as const (Array K!12100 Bool)) false))))

(declare-fun b!4533652 () Bool)

(assert (=> b!4533652 (= e!2824975 ((_ map or) (store ((as const (Array K!12100 Bool)) false) (h!56588 (keys!17636 lt!1708025)) true) (content!8412 (t!357801 (keys!17636 lt!1708025)))))))

(assert (= (and d!1399966 c!774218) b!4533651))

(assert (= (and d!1399966 (not c!774218)) b!4533652))

(declare-fun m!5293797 () Bool)

(assert (=> b!4533652 m!5293797))

(declare-fun m!5293799 () Bool)

(assert (=> b!4533652 m!5293799))

(assert (=> b!4532467 d!1399966))

(declare-fun bs!870024 () Bool)

(declare-fun b!4533654 () Bool)

(assert (= bs!870024 (and b!4533654 b!4533649)))

(declare-fun lambda!174918 () Int)

(assert (=> bs!870024 (= (= (toList!4376 lt!1708025) (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (= lambda!174918 lambda!174916))))

(declare-fun bs!870025 () Bool)

(assert (= bs!870025 (and b!4533654 b!4532969)))

(assert (=> bs!870025 (= (= (toList!4376 lt!1708025) (toList!4376 lt!1707611)) (= lambda!174918 lambda!174829))))

(declare-fun bs!870026 () Bool)

(assert (= bs!870026 (and b!4533654 b!4533454)))

(assert (=> bs!870026 (= (= (toList!4376 lt!1708025) (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))) (= lambda!174918 lambda!174897))))

(declare-fun bs!870027 () Bool)

(assert (= bs!870027 (and b!4533654 b!4532901)))

(assert (=> bs!870027 (= (= (toList!4376 lt!1708025) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174918 lambda!174827))))

(declare-fun bs!870028 () Bool)

(assert (= bs!870028 (and b!4533654 b!4533453)))

(assert (=> bs!870028 (= (= (toList!4376 lt!1708025) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174918 lambda!174898))))

(declare-fun bs!870029 () Bool)

(assert (= bs!870029 (and b!4533654 b!4533096)))

(assert (=> bs!870029 (= (= (toList!4376 lt!1708025) (toList!4376 lt!1707797)) (= lambda!174918 lambda!174835))))

(declare-fun bs!870030 () Bool)

(assert (= bs!870030 (and b!4533654 b!4533091)))

(assert (=> bs!870030 (= (= (toList!4376 lt!1708025) (toList!4376 lt!1707612)) (= lambda!174918 lambda!174832))))

(declare-fun bs!870031 () Bool)

(assert (= bs!870031 (and b!4533654 b!4533448)))

(assert (=> bs!870031 (= (= (toList!4376 lt!1708025) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174918 lambda!174896))))

(assert (=> b!4533654 true))

(declare-fun bs!870033 () Bool)

(declare-fun b!4533655 () Bool)

(assert (= bs!870033 (and b!4533655 b!4532970)))

(declare-fun lambda!174920 () Int)

(assert (=> bs!870033 (= lambda!174920 lambda!174830)))

(declare-fun bs!870035 () Bool)

(assert (= bs!870035 (and b!4533655 b!4533092)))

(assert (=> bs!870035 (= lambda!174920 lambda!174833)))

(declare-fun bs!870036 () Bool)

(assert (= bs!870036 (and b!4533655 b!4533449)))

(assert (=> bs!870036 (= lambda!174920 lambda!174899)))

(declare-fun bs!870038 () Bool)

(assert (= bs!870038 (and b!4533655 b!4532902)))

(assert (=> bs!870038 (= lambda!174920 lambda!174828)))

(declare-fun bs!870039 () Bool)

(assert (= bs!870039 (and b!4533655 b!4533650)))

(assert (=> bs!870039 (= lambda!174920 lambda!174917)))

(declare-fun bs!870041 () Bool)

(assert (= bs!870041 (and b!4533655 b!4533097)))

(assert (=> bs!870041 (= lambda!174920 lambda!174836)))

(declare-fun d!1399968 () Bool)

(declare-fun e!2824976 () Bool)

(assert (=> d!1399968 e!2824976))

(declare-fun res!1888461 () Bool)

(assert (=> d!1399968 (=> (not res!1888461) (not e!2824976))))

(declare-fun lt!1708889 () List!50839)

(assert (=> d!1399968 (= res!1888461 (noDuplicate!758 lt!1708889))))

(assert (=> d!1399968 (= lt!1708889 (getKeysList!483 (toList!4376 lt!1708025)))))

(assert (=> d!1399968 (= (keys!17636 lt!1708025) lt!1708889)))

(declare-fun b!4533653 () Bool)

(declare-fun res!1888460 () Bool)

(assert (=> b!4533653 (=> (not res!1888460) (not e!2824976))))

(assert (=> b!4533653 (= res!1888460 (= (length!372 lt!1708889) (length!373 (toList!4376 lt!1708025))))))

(declare-fun res!1888459 () Bool)

(assert (=> b!4533654 (=> (not res!1888459) (not e!2824976))))

(assert (=> b!4533654 (= res!1888459 (forall!10319 lt!1708889 lambda!174918))))

(assert (=> b!4533655 (= e!2824976 (= (content!8412 lt!1708889) (content!8412 (map!11161 (toList!4376 lt!1708025) lambda!174920))))))

(assert (= (and d!1399968 res!1888461) b!4533653))

(assert (= (and b!4533653 res!1888460) b!4533654))

(assert (= (and b!4533654 res!1888459) b!4533655))

(declare-fun m!5293801 () Bool)

(assert (=> d!1399968 m!5293801))

(assert (=> d!1399968 m!5293505))

(declare-fun m!5293803 () Bool)

(assert (=> b!4533653 m!5293803))

(declare-fun m!5293805 () Bool)

(assert (=> b!4533653 m!5293805))

(declare-fun m!5293807 () Bool)

(assert (=> b!4533654 m!5293807))

(declare-fun m!5293809 () Bool)

(assert (=> b!4533655 m!5293809))

(declare-fun m!5293811 () Bool)

(assert (=> b!4533655 m!5293811))

(assert (=> b!4533655 m!5293811))

(declare-fun m!5293813 () Bool)

(assert (=> b!4533655 m!5293813))

(assert (=> b!4532467 d!1399968))

(declare-fun bs!870055 () Bool)

(declare-fun b!4533658 () Bool)

(assert (= bs!870055 (and b!4533658 b!4533348)))

(declare-fun lambda!174921 () Int)

(assert (=> bs!870055 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708634) (= lambda!174921 lambda!174879))))

(declare-fun bs!870058 () Bool)

(assert (= bs!870058 (and b!4533658 b!4533230)))

(assert (=> bs!870058 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174921 lambda!174864))))

(declare-fun bs!870060 () Bool)

(assert (= bs!870060 (and b!4533658 d!1399580)))

(assert (=> bs!870060 (not (= lambda!174921 lambda!174838))))

(declare-fun bs!870063 () Bool)

(assert (= bs!870063 (and b!4533658 d!1399802)))

(assert (=> bs!870063 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708638) (= lambda!174921 lambda!174880))))

(declare-fun bs!870065 () Bool)

(assert (= bs!870065 (and b!4533658 b!4533161)))

(assert (=> bs!870065 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174921 lambda!174848))))

(declare-fun bs!870068 () Bool)

(assert (= bs!870068 (and b!4533658 b!4532449)))

(assert (=> bs!870068 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708008) (= lambda!174921 lambda!174758))))

(declare-fun bs!870071 () Bool)

(assert (= bs!870071 (and b!4533658 d!1399264)))

(assert (=> bs!870071 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708012) (= lambda!174921 lambda!174759))))

(declare-fun bs!870073 () Bool)

(assert (= bs!870073 (and b!4533658 d!1399688)))

(assert (=> bs!870073 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707972) (= lambda!174921 lambda!174861))))

(declare-fun bs!870076 () Bool)

(assert (= bs!870076 (and b!4533658 d!1399182)))

(assert (=> bs!870076 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707976) (= lambda!174921 lambda!174755))))

(declare-fun bs!870078 () Bool)

(assert (= bs!870078 (and b!4533658 b!4533469)))

(assert (=> bs!870078 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174921 lambda!174901))))

(declare-fun bs!870079 () Bool)

(assert (= bs!870079 (and b!4533658 b!4532450)))

(assert (=> bs!870079 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707628) (= lambda!174921 lambda!174756))))

(declare-fun bs!870080 () Bool)

(assert (= bs!870080 (and b!4533658 b!4532469)))

(assert (=> bs!870080 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708034) (= lambda!174921 lambda!174766))))

(declare-fun bs!870082 () Bool)

(assert (= bs!870082 (and b!4533658 b!4533160)))

(assert (=> bs!870082 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708468) (= lambda!174921 lambda!174851))))

(declare-fun bs!870085 () Bool)

(assert (= bs!870085 (and b!4533658 b!4532427)))

(assert (=> bs!870085 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707972) (= lambda!174921 lambda!174754))))

(declare-fun bs!870088 () Bool)

(assert (= bs!870088 (and b!4533658 d!1399874)))

(assert (=> bs!870088 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708737) (= lambda!174921 lambda!174906))))

(declare-fun bs!870090 () Bool)

(assert (= bs!870090 (and b!4533658 d!1399764)))

(assert (=> bs!870090 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708609) (= lambda!174921 lambda!174873))))

(declare-fun bs!870092 () Bool)

(assert (= bs!870092 (and b!4533658 b!4532128)))

(assert (=> bs!870092 (not (= lambda!174921 lambda!174637))))

(assert (=> bs!870080 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707612) (= lambda!174921 lambda!174765))))

(declare-fun bs!870094 () Bool)

(assert (= bs!870094 (and b!4533658 d!1399278)))

(assert (=> bs!870094 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708038) (= lambda!174921 lambda!174767))))

(declare-fun bs!870096 () Bool)

(assert (= bs!870096 (and b!4533658 b!4533231)))

(assert (=> bs!870096 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174921 lambda!174863))))

(declare-fun bs!870097 () Bool)

(assert (= bs!870097 (and b!4533658 b!4532470)))

(assert (=> bs!870097 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707612) (= lambda!174921 lambda!174764))))

(declare-fun bs!870098 () Bool)

(assert (= bs!870098 (and b!4533658 d!1399618)))

(assert (=> bs!870098 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708034) (= lambda!174921 lambda!174847))))

(assert (=> bs!870085 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707600) (= lambda!174921 lambda!174753))))

(declare-fun bs!870101 () Bool)

(assert (= bs!870101 (and b!4533658 d!1399690)))

(assert (=> bs!870101 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708558) (= lambda!174921 lambda!174867))))

(declare-fun bs!870102 () Bool)

(assert (= bs!870102 (and b!4533658 b!4533314)))

(assert (=> bs!870102 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708605) (= lambda!174921 lambda!174871))))

(assert (=> bs!870055 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174921 lambda!174877))))

(assert (=> bs!870102 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174921 lambda!174870))))

(declare-fun bs!870105 () Bool)

(assert (= bs!870105 (and b!4533658 d!1399090)))

(assert (=> bs!870105 (not (= lambda!174921 lambda!174643))))

(declare-fun bs!870107 () Bool)

(assert (= bs!870107 (and b!4533658 b!4533349)))

(assert (=> bs!870107 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174921 lambda!174875))))

(assert (=> bs!870058 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708554) (= lambda!174921 lambda!174866))))

(declare-fun bs!870109 () Bool)

(assert (= bs!870109 (and b!4533658 b!4533315)))

(assert (=> bs!870109 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174921 lambda!174868))))

(assert (=> bs!870082 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174921 lambda!174850))))

(declare-fun bs!870111 () Bool)

(assert (= bs!870111 (and b!4533658 d!1399622)))

(assert (=> bs!870111 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708472) (= lambda!174921 lambda!174853))))

(assert (=> bs!870068 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707628) (= lambda!174921 lambda!174757))))

(declare-fun bs!870112 () Bool)

(assert (= bs!870112 (and b!4533658 b!4533468)))

(assert (=> bs!870112 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174921 lambda!174903))))

(assert (=> bs!870112 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708733) (= lambda!174921 lambda!174904))))

(declare-fun bs!870113 () Bool)

(assert (= bs!870113 (and b!4533658 b!4532428)))

(assert (=> bs!870113 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707600) (= lambda!174921 lambda!174752))))

(assert (=> b!4533658 true))

(declare-fun bs!870114 () Bool)

(declare-fun b!4533657 () Bool)

(assert (= bs!870114 (and b!4533657 b!4533658)))

(declare-fun lambda!174922 () Int)

(assert (=> bs!870114 (= lambda!174922 lambda!174921)))

(declare-fun bs!870115 () Bool)

(assert (= bs!870115 (and b!4533657 b!4533348)))

(assert (=> bs!870115 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708634) (= lambda!174922 lambda!174879))))

(declare-fun bs!870116 () Bool)

(assert (= bs!870116 (and b!4533657 b!4533230)))

(assert (=> bs!870116 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174922 lambda!174864))))

(declare-fun bs!870117 () Bool)

(assert (= bs!870117 (and b!4533657 d!1399580)))

(assert (=> bs!870117 (not (= lambda!174922 lambda!174838))))

(declare-fun bs!870118 () Bool)

(assert (= bs!870118 (and b!4533657 d!1399802)))

(assert (=> bs!870118 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708638) (= lambda!174922 lambda!174880))))

(declare-fun bs!870119 () Bool)

(assert (= bs!870119 (and b!4533657 b!4533161)))

(assert (=> bs!870119 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174922 lambda!174848))))

(declare-fun bs!870120 () Bool)

(assert (= bs!870120 (and b!4533657 b!4532449)))

(assert (=> bs!870120 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708008) (= lambda!174922 lambda!174758))))

(declare-fun bs!870121 () Bool)

(assert (= bs!870121 (and b!4533657 d!1399264)))

(assert (=> bs!870121 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708012) (= lambda!174922 lambda!174759))))

(declare-fun bs!870122 () Bool)

(assert (= bs!870122 (and b!4533657 d!1399688)))

(assert (=> bs!870122 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707972) (= lambda!174922 lambda!174861))))

(declare-fun bs!870123 () Bool)

(assert (= bs!870123 (and b!4533657 d!1399182)))

(assert (=> bs!870123 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707976) (= lambda!174922 lambda!174755))))

(declare-fun bs!870124 () Bool)

(assert (= bs!870124 (and b!4533657 b!4533469)))

(assert (=> bs!870124 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174922 lambda!174901))))

(declare-fun bs!870125 () Bool)

(assert (= bs!870125 (and b!4533657 b!4532450)))

(assert (=> bs!870125 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707628) (= lambda!174922 lambda!174756))))

(declare-fun bs!870126 () Bool)

(assert (= bs!870126 (and b!4533657 b!4532469)))

(assert (=> bs!870126 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708034) (= lambda!174922 lambda!174766))))

(declare-fun bs!870127 () Bool)

(assert (= bs!870127 (and b!4533657 b!4533160)))

(assert (=> bs!870127 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708468) (= lambda!174922 lambda!174851))))

(declare-fun bs!870128 () Bool)

(assert (= bs!870128 (and b!4533657 b!4532427)))

(assert (=> bs!870128 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707972) (= lambda!174922 lambda!174754))))

(declare-fun bs!870129 () Bool)

(assert (= bs!870129 (and b!4533657 d!1399874)))

(assert (=> bs!870129 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708737) (= lambda!174922 lambda!174906))))

(declare-fun bs!870130 () Bool)

(assert (= bs!870130 (and b!4533657 d!1399764)))

(assert (=> bs!870130 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708609) (= lambda!174922 lambda!174873))))

(declare-fun bs!870131 () Bool)

(assert (= bs!870131 (and b!4533657 b!4532128)))

(assert (=> bs!870131 (not (= lambda!174922 lambda!174637))))

(assert (=> bs!870126 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707612) (= lambda!174922 lambda!174765))))

(declare-fun bs!870132 () Bool)

(assert (= bs!870132 (and b!4533657 d!1399278)))

(assert (=> bs!870132 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708038) (= lambda!174922 lambda!174767))))

(declare-fun bs!870133 () Bool)

(assert (= bs!870133 (and b!4533657 b!4533231)))

(assert (=> bs!870133 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174922 lambda!174863))))

(declare-fun bs!870134 () Bool)

(assert (= bs!870134 (and b!4533657 b!4532470)))

(assert (=> bs!870134 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707612) (= lambda!174922 lambda!174764))))

(declare-fun bs!870135 () Bool)

(assert (= bs!870135 (and b!4533657 d!1399618)))

(assert (=> bs!870135 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708034) (= lambda!174922 lambda!174847))))

(assert (=> bs!870128 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707600) (= lambda!174922 lambda!174753))))

(declare-fun bs!870136 () Bool)

(assert (= bs!870136 (and b!4533657 d!1399690)))

(assert (=> bs!870136 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708558) (= lambda!174922 lambda!174867))))

(declare-fun bs!870137 () Bool)

(assert (= bs!870137 (and b!4533657 b!4533314)))

(assert (=> bs!870137 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708605) (= lambda!174922 lambda!174871))))

(assert (=> bs!870115 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174922 lambda!174877))))

(assert (=> bs!870137 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174922 lambda!174870))))

(declare-fun bs!870138 () Bool)

(assert (= bs!870138 (and b!4533657 d!1399090)))

(assert (=> bs!870138 (not (= lambda!174922 lambda!174643))))

(declare-fun bs!870139 () Bool)

(assert (= bs!870139 (and b!4533657 b!4533349)))

(assert (=> bs!870139 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174922 lambda!174875))))

(assert (=> bs!870116 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708554) (= lambda!174922 lambda!174866))))

(declare-fun bs!870140 () Bool)

(assert (= bs!870140 (and b!4533657 b!4533315)))

(assert (=> bs!870140 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174922 lambda!174868))))

(assert (=> bs!870127 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174922 lambda!174850))))

(declare-fun bs!870141 () Bool)

(assert (= bs!870141 (and b!4533657 d!1399622)))

(assert (=> bs!870141 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708472) (= lambda!174922 lambda!174853))))

(assert (=> bs!870120 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707628) (= lambda!174922 lambda!174757))))

(declare-fun bs!870142 () Bool)

(assert (= bs!870142 (and b!4533657 b!4533468)))

(assert (=> bs!870142 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174922 lambda!174903))))

(assert (=> bs!870142 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708733) (= lambda!174922 lambda!174904))))

(declare-fun bs!870143 () Bool)

(assert (= bs!870143 (and b!4533657 b!4532428)))

(assert (=> bs!870143 (= (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1707600) (= lambda!174922 lambda!174752))))

(assert (=> b!4533657 true))

(declare-fun lt!1708898 () ListMap!3637)

(declare-fun lambda!174923 () Int)

(assert (=> bs!870114 (= (= lt!1708898 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174923 lambda!174921))))

(assert (=> bs!870115 (= (= lt!1708898 lt!1708634) (= lambda!174923 lambda!174879))))

(assert (=> bs!870116 (= (= lt!1708898 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174923 lambda!174864))))

(assert (=> bs!870118 (= (= lt!1708898 lt!1708638) (= lambda!174923 lambda!174880))))

(assert (=> bs!870119 (= (= lt!1708898 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174923 lambda!174848))))

(assert (=> bs!870120 (= (= lt!1708898 lt!1708008) (= lambda!174923 lambda!174758))))

(assert (=> bs!870121 (= (= lt!1708898 lt!1708012) (= lambda!174923 lambda!174759))))

(assert (=> bs!870122 (= (= lt!1708898 lt!1707972) (= lambda!174923 lambda!174861))))

(assert (=> bs!870123 (= (= lt!1708898 lt!1707976) (= lambda!174923 lambda!174755))))

(assert (=> bs!870124 (= (= lt!1708898 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174923 lambda!174901))))

(assert (=> bs!870125 (= (= lt!1708898 lt!1707628) (= lambda!174923 lambda!174756))))

(assert (=> bs!870126 (= (= lt!1708898 lt!1708034) (= lambda!174923 lambda!174766))))

(assert (=> bs!870127 (= (= lt!1708898 lt!1708468) (= lambda!174923 lambda!174851))))

(assert (=> bs!870128 (= (= lt!1708898 lt!1707972) (= lambda!174923 lambda!174754))))

(assert (=> bs!870129 (= (= lt!1708898 lt!1708737) (= lambda!174923 lambda!174906))))

(assert (=> bs!870130 (= (= lt!1708898 lt!1708609) (= lambda!174923 lambda!174873))))

(assert (=> bs!870131 (not (= lambda!174923 lambda!174637))))

(assert (=> bs!870126 (= (= lt!1708898 lt!1707612) (= lambda!174923 lambda!174765))))

(assert (=> bs!870132 (= (= lt!1708898 lt!1708038) (= lambda!174923 lambda!174767))))

(assert (=> bs!870133 (= (= lt!1708898 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174923 lambda!174863))))

(assert (=> bs!870134 (= (= lt!1708898 lt!1707612) (= lambda!174923 lambda!174764))))

(assert (=> bs!870135 (= (= lt!1708898 lt!1708034) (= lambda!174923 lambda!174847))))

(assert (=> bs!870128 (= (= lt!1708898 lt!1707600) (= lambda!174923 lambda!174753))))

(assert (=> bs!870136 (= (= lt!1708898 lt!1708558) (= lambda!174923 lambda!174867))))

(assert (=> bs!870117 (not (= lambda!174923 lambda!174838))))

(assert (=> b!4533657 (= (= lt!1708898 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174923 lambda!174922))))

(assert (=> bs!870137 (= (= lt!1708898 lt!1708605) (= lambda!174923 lambda!174871))))

(assert (=> bs!870115 (= (= lt!1708898 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174923 lambda!174877))))

(assert (=> bs!870137 (= (= lt!1708898 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174923 lambda!174870))))

(assert (=> bs!870138 (not (= lambda!174923 lambda!174643))))

(assert (=> bs!870139 (= (= lt!1708898 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174923 lambda!174875))))

(assert (=> bs!870116 (= (= lt!1708898 lt!1708554) (= lambda!174923 lambda!174866))))

(assert (=> bs!870140 (= (= lt!1708898 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174923 lambda!174868))))

(assert (=> bs!870127 (= (= lt!1708898 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174923 lambda!174850))))

(assert (=> bs!870141 (= (= lt!1708898 lt!1708472) (= lambda!174923 lambda!174853))))

(assert (=> bs!870120 (= (= lt!1708898 lt!1707628) (= lambda!174923 lambda!174757))))

(assert (=> bs!870142 (= (= lt!1708898 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174923 lambda!174903))))

(assert (=> bs!870142 (= (= lt!1708898 lt!1708733) (= lambda!174923 lambda!174904))))

(assert (=> bs!870143 (= (= lt!1708898 lt!1707600) (= lambda!174923 lambda!174752))))

(assert (=> b!4533657 true))

(declare-fun bs!870165 () Bool)

(declare-fun d!1399970 () Bool)

(assert (= bs!870165 (and d!1399970 b!4533658)))

(declare-fun lambda!174927 () Int)

(declare-fun lt!1708902 () ListMap!3637)

(assert (=> bs!870165 (= (= lt!1708902 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174927 lambda!174921))))

(declare-fun bs!870167 () Bool)

(assert (= bs!870167 (and d!1399970 b!4533348)))

(assert (=> bs!870167 (= (= lt!1708902 lt!1708634) (= lambda!174927 lambda!174879))))

(declare-fun bs!870169 () Bool)

(assert (= bs!870169 (and d!1399970 b!4533230)))

(assert (=> bs!870169 (= (= lt!1708902 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174927 lambda!174864))))

(declare-fun bs!870170 () Bool)

(assert (= bs!870170 (and d!1399970 d!1399802)))

(assert (=> bs!870170 (= (= lt!1708902 lt!1708638) (= lambda!174927 lambda!174880))))

(declare-fun bs!870172 () Bool)

(assert (= bs!870172 (and d!1399970 b!4533161)))

(assert (=> bs!870172 (= (= lt!1708902 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174927 lambda!174848))))

(declare-fun bs!870174 () Bool)

(assert (= bs!870174 (and d!1399970 b!4532449)))

(assert (=> bs!870174 (= (= lt!1708902 lt!1708008) (= lambda!174927 lambda!174758))))

(declare-fun bs!870175 () Bool)

(assert (= bs!870175 (and d!1399970 d!1399264)))

(assert (=> bs!870175 (= (= lt!1708902 lt!1708012) (= lambda!174927 lambda!174759))))

(declare-fun bs!870177 () Bool)

(assert (= bs!870177 (and d!1399970 d!1399688)))

(assert (=> bs!870177 (= (= lt!1708902 lt!1707972) (= lambda!174927 lambda!174861))))

(declare-fun bs!870179 () Bool)

(assert (= bs!870179 (and d!1399970 b!4533469)))

(assert (=> bs!870179 (= (= lt!1708902 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174927 lambda!174901))))

(declare-fun bs!870180 () Bool)

(assert (= bs!870180 (and d!1399970 b!4532450)))

(assert (=> bs!870180 (= (= lt!1708902 lt!1707628) (= lambda!174927 lambda!174756))))

(declare-fun bs!870182 () Bool)

(assert (= bs!870182 (and d!1399970 b!4532469)))

(assert (=> bs!870182 (= (= lt!1708902 lt!1708034) (= lambda!174927 lambda!174766))))

(declare-fun bs!870184 () Bool)

(assert (= bs!870184 (and d!1399970 b!4533160)))

(assert (=> bs!870184 (= (= lt!1708902 lt!1708468) (= lambda!174927 lambda!174851))))

(declare-fun bs!870186 () Bool)

(assert (= bs!870186 (and d!1399970 b!4532427)))

(assert (=> bs!870186 (= (= lt!1708902 lt!1707972) (= lambda!174927 lambda!174754))))

(declare-fun bs!870187 () Bool)

(assert (= bs!870187 (and d!1399970 d!1399874)))

(assert (=> bs!870187 (= (= lt!1708902 lt!1708737) (= lambda!174927 lambda!174906))))

(declare-fun bs!870188 () Bool)

(assert (= bs!870188 (and d!1399970 d!1399764)))

(assert (=> bs!870188 (= (= lt!1708902 lt!1708609) (= lambda!174927 lambda!174873))))

(declare-fun bs!870189 () Bool)

(assert (= bs!870189 (and d!1399970 b!4532128)))

(assert (=> bs!870189 (not (= lambda!174927 lambda!174637))))

(assert (=> bs!870182 (= (= lt!1708902 lt!1707612) (= lambda!174927 lambda!174765))))

(declare-fun bs!870192 () Bool)

(assert (= bs!870192 (and d!1399970 d!1399278)))

(assert (=> bs!870192 (= (= lt!1708902 lt!1708038) (= lambda!174927 lambda!174767))))

(declare-fun bs!870194 () Bool)

(assert (= bs!870194 (and d!1399970 b!4533231)))

(assert (=> bs!870194 (= (= lt!1708902 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174927 lambda!174863))))

(declare-fun bs!870196 () Bool)

(assert (= bs!870196 (and d!1399970 b!4532470)))

(assert (=> bs!870196 (= (= lt!1708902 lt!1707612) (= lambda!174927 lambda!174764))))

(declare-fun bs!870198 () Bool)

(assert (= bs!870198 (and d!1399970 d!1399618)))

(assert (=> bs!870198 (= (= lt!1708902 lt!1708034) (= lambda!174927 lambda!174847))))

(assert (=> bs!870186 (= (= lt!1708902 lt!1707600) (= lambda!174927 lambda!174753))))

(declare-fun bs!870200 () Bool)

(assert (= bs!870200 (and d!1399970 d!1399690)))

(assert (=> bs!870200 (= (= lt!1708902 lt!1708558) (= lambda!174927 lambda!174867))))

(declare-fun bs!870201 () Bool)

(assert (= bs!870201 (and d!1399970 d!1399580)))

(assert (=> bs!870201 (not (= lambda!174927 lambda!174838))))

(declare-fun bs!870203 () Bool)

(assert (= bs!870203 (and d!1399970 b!4533657)))

(assert (=> bs!870203 (= (= lt!1708902 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174927 lambda!174922))))

(declare-fun bs!870204 () Bool)

(assert (= bs!870204 (and d!1399970 b!4533314)))

(assert (=> bs!870204 (= (= lt!1708902 lt!1708605) (= lambda!174927 lambda!174871))))

(assert (=> bs!870167 (= (= lt!1708902 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174927 lambda!174877))))

(assert (=> bs!870204 (= (= lt!1708902 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174927 lambda!174870))))

(declare-fun bs!870205 () Bool)

(assert (= bs!870205 (and d!1399970 d!1399090)))

(assert (=> bs!870205 (not (= lambda!174927 lambda!174643))))

(declare-fun bs!870206 () Bool)

(assert (= bs!870206 (and d!1399970 b!4533349)))

(assert (=> bs!870206 (= (= lt!1708902 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174927 lambda!174875))))

(assert (=> bs!870169 (= (= lt!1708902 lt!1708554) (= lambda!174927 lambda!174866))))

(declare-fun bs!870207 () Bool)

(assert (= bs!870207 (and d!1399970 b!4533315)))

(assert (=> bs!870207 (= (= lt!1708902 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174927 lambda!174868))))

(assert (=> bs!870184 (= (= lt!1708902 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174927 lambda!174850))))

(declare-fun bs!870208 () Bool)

(assert (= bs!870208 (and d!1399970 d!1399182)))

(assert (=> bs!870208 (= (= lt!1708902 lt!1707976) (= lambda!174927 lambda!174755))))

(assert (=> bs!870203 (= (= lt!1708902 lt!1708898) (= lambda!174927 lambda!174923))))

(declare-fun bs!870209 () Bool)

(assert (= bs!870209 (and d!1399970 d!1399622)))

(assert (=> bs!870209 (= (= lt!1708902 lt!1708472) (= lambda!174927 lambda!174853))))

(assert (=> bs!870174 (= (= lt!1708902 lt!1707628) (= lambda!174927 lambda!174757))))

(declare-fun bs!870210 () Bool)

(assert (= bs!870210 (and d!1399970 b!4533468)))

(assert (=> bs!870210 (= (= lt!1708902 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174927 lambda!174903))))

(assert (=> bs!870210 (= (= lt!1708902 lt!1708733) (= lambda!174927 lambda!174904))))

(declare-fun bs!870211 () Bool)

(assert (= bs!870211 (and d!1399970 b!4532428)))

(assert (=> bs!870211 (= (= lt!1708902 lt!1707600) (= lambda!174927 lambda!174752))))

(assert (=> d!1399970 true))

(declare-fun b!4533656 () Bool)

(declare-fun e!2824977 () Bool)

(assert (=> b!4533656 (= e!2824977 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) lambda!174923))))

(declare-fun bm!316082 () Bool)

(declare-fun call!316087 () Unit!97092)

(assert (=> bm!316082 (= call!316087 (lemmaContainsAllItsOwnKeys!356 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))))))

(declare-fun e!2824979 () Bool)

(assert (=> d!1399970 e!2824979))

(declare-fun res!1888462 () Bool)

(assert (=> d!1399970 (=> (not res!1888462) (not e!2824979))))

(assert (=> d!1399970 (= res!1888462 (forall!10317 (_2!28880 (h!56584 (toList!4375 lt!1707617))) lambda!174927))))

(declare-fun e!2824978 () ListMap!3637)

(assert (=> d!1399970 (= lt!1708902 e!2824978)))

(declare-fun c!774219 () Bool)

(assert (=> d!1399970 (= c!774219 ((_ is Nil!50712) (_2!28880 (h!56584 (toList!4375 lt!1707617)))))))

(assert (=> d!1399970 (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lt!1707617))))))

(assert (=> d!1399970 (= (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 lt!1707617))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) lt!1708902)))

(assert (=> b!4533657 (= e!2824978 lt!1708898)))

(declare-fun lt!1708894 () ListMap!3637)

(assert (=> b!4533657 (= lt!1708894 (+!1582 (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707617))))))))

(assert (=> b!4533657 (= lt!1708898 (addToMapMapFromBucket!711 (t!357798 (_2!28880 (h!56584 (toList!4375 lt!1707617)))) (+!1582 (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707617)))))))))

(declare-fun lt!1708905 () Unit!97092)

(assert (=> b!4533657 (= lt!1708905 call!316087)))

(declare-fun call!316089 () Bool)

(assert (=> b!4533657 call!316089))

(declare-fun lt!1708903 () Unit!97092)

(assert (=> b!4533657 (= lt!1708903 lt!1708905)))

(assert (=> b!4533657 (forall!10317 (toList!4376 lt!1708894) lambda!174923)))

(declare-fun lt!1708910 () Unit!97092)

(declare-fun Unit!97367 () Unit!97092)

(assert (=> b!4533657 (= lt!1708910 Unit!97367)))

(assert (=> b!4533657 (forall!10317 (t!357798 (_2!28880 (h!56584 (toList!4375 lt!1707617)))) lambda!174923)))

(declare-fun lt!1708896 () Unit!97092)

(declare-fun Unit!97368 () Unit!97092)

(assert (=> b!4533657 (= lt!1708896 Unit!97368)))

(declare-fun lt!1708899 () Unit!97092)

(declare-fun Unit!97369 () Unit!97092)

(assert (=> b!4533657 (= lt!1708899 Unit!97369)))

(declare-fun lt!1708891 () Unit!97092)

(assert (=> b!4533657 (= lt!1708891 (forallContained!2573 (toList!4376 lt!1708894) lambda!174923 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707617))))))))

(assert (=> b!4533657 (contains!13479 lt!1708894 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707617))))))))

(declare-fun lt!1708901 () Unit!97092)

(declare-fun Unit!97370 () Unit!97092)

(assert (=> b!4533657 (= lt!1708901 Unit!97370)))

(assert (=> b!4533657 (contains!13479 lt!1708898 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707617))))))))

(declare-fun lt!1708897 () Unit!97092)

(declare-fun Unit!97371 () Unit!97092)

(assert (=> b!4533657 (= lt!1708897 Unit!97371)))

(declare-fun call!316088 () Bool)

(assert (=> b!4533657 call!316088))

(declare-fun lt!1708893 () Unit!97092)

(declare-fun Unit!97372 () Unit!97092)

(assert (=> b!4533657 (= lt!1708893 Unit!97372)))

(assert (=> b!4533657 (forall!10317 (toList!4376 lt!1708894) lambda!174923)))

(declare-fun lt!1708890 () Unit!97092)

(declare-fun Unit!97373 () Unit!97092)

(assert (=> b!4533657 (= lt!1708890 Unit!97373)))

(declare-fun lt!1708907 () Unit!97092)

(declare-fun Unit!97374 () Unit!97092)

(assert (=> b!4533657 (= lt!1708907 Unit!97374)))

(declare-fun lt!1708892 () Unit!97092)

(assert (=> b!4533657 (= lt!1708892 (addForallContainsKeyThenBeforeAdding!356 (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708898 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707617))))) (_2!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707617)))))))))

(assert (=> b!4533657 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) lambda!174923)))

(declare-fun lt!1708906 () Unit!97092)

(assert (=> b!4533657 (= lt!1708906 lt!1708892)))

(assert (=> b!4533657 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) lambda!174923)))

(declare-fun lt!1708908 () Unit!97092)

(declare-fun Unit!97375 () Unit!97092)

(assert (=> b!4533657 (= lt!1708908 Unit!97375)))

(declare-fun res!1888464 () Bool)

(assert (=> b!4533657 (= res!1888464 (forall!10317 (_2!28880 (h!56584 (toList!4375 lt!1707617))) lambda!174923))))

(assert (=> b!4533657 (=> (not res!1888464) (not e!2824977))))

(assert (=> b!4533657 e!2824977))

(declare-fun lt!1708900 () Unit!97092)

(declare-fun Unit!97376 () Unit!97092)

(assert (=> b!4533657 (= lt!1708900 Unit!97376)))

(assert (=> b!4533658 (= e!2824978 (extractMap!1240 (t!357799 (toList!4375 lt!1707617))))))

(declare-fun lt!1708895 () Unit!97092)

(assert (=> b!4533658 (= lt!1708895 call!316087)))

(assert (=> b!4533658 call!316088))

(declare-fun lt!1708904 () Unit!97092)

(assert (=> b!4533658 (= lt!1708904 lt!1708895)))

(assert (=> b!4533658 call!316089))

(declare-fun lt!1708909 () Unit!97092)

(declare-fun Unit!97377 () Unit!97092)

(assert (=> b!4533658 (= lt!1708909 Unit!97377)))

(declare-fun bm!316083 () Bool)

(assert (=> bm!316083 (= call!316089 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (ite c!774219 lambda!174921 lambda!174922)))))

(declare-fun b!4533659 () Bool)

(assert (=> b!4533659 (= e!2824979 (invariantList!1035 (toList!4376 lt!1708902)))))

(declare-fun b!4533660 () Bool)

(declare-fun res!1888463 () Bool)

(assert (=> b!4533660 (=> (not res!1888463) (not e!2824979))))

(assert (=> b!4533660 (= res!1888463 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) lambda!174927))))

(declare-fun bm!316084 () Bool)

(assert (=> bm!316084 (= call!316088 (forall!10317 (ite c!774219 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (_2!28880 (h!56584 (toList!4375 lt!1707617)))) (ite c!774219 lambda!174921 lambda!174923)))))

(assert (= (and d!1399970 c!774219) b!4533658))

(assert (= (and d!1399970 (not c!774219)) b!4533657))

(assert (= (and b!4533657 res!1888464) b!4533656))

(assert (= (or b!4533658 b!4533657) bm!316084))

(assert (= (or b!4533658 b!4533657) bm!316083))

(assert (= (or b!4533658 b!4533657) bm!316082))

(assert (= (and d!1399970 res!1888462) b!4533660))

(assert (= (and b!4533660 res!1888463) b!4533659))

(declare-fun m!5293921 () Bool)

(assert (=> b!4533657 m!5293921))

(assert (=> b!4533657 m!5290987))

(declare-fun m!5293927 () Bool)

(assert (=> b!4533657 m!5293927))

(declare-fun m!5293929 () Bool)

(assert (=> b!4533657 m!5293929))

(declare-fun m!5293931 () Bool)

(assert (=> b!4533657 m!5293931))

(assert (=> b!4533657 m!5290987))

(declare-fun m!5293933 () Bool)

(assert (=> b!4533657 m!5293933))

(declare-fun m!5293935 () Bool)

(assert (=> b!4533657 m!5293935))

(declare-fun m!5293937 () Bool)

(assert (=> b!4533657 m!5293937))

(declare-fun m!5293939 () Bool)

(assert (=> b!4533657 m!5293939))

(assert (=> b!4533657 m!5293929))

(assert (=> b!4533657 m!5293927))

(declare-fun m!5293941 () Bool)

(assert (=> b!4533657 m!5293941))

(declare-fun m!5293943 () Bool)

(assert (=> b!4533657 m!5293943))

(assert (=> b!4533657 m!5293931))

(declare-fun m!5293945 () Bool)

(assert (=> b!4533660 m!5293945))

(declare-fun m!5293947 () Bool)

(assert (=> bm!316083 m!5293947))

(assert (=> b!4533656 m!5293929))

(declare-fun m!5293949 () Bool)

(assert (=> b!4533659 m!5293949))

(assert (=> bm!316082 m!5290987))

(declare-fun m!5293951 () Bool)

(assert (=> bm!316082 m!5293951))

(declare-fun m!5293953 () Bool)

(assert (=> d!1399970 m!5293953))

(declare-fun m!5293955 () Bool)

(assert (=> d!1399970 m!5293955))

(declare-fun m!5293957 () Bool)

(assert (=> bm!316084 m!5293957))

(assert (=> b!4532255 d!1399970))

(declare-fun bs!870212 () Bool)

(declare-fun d!1399990 () Bool)

(assert (= bs!870212 (and d!1399990 d!1399308)))

(declare-fun lambda!174929 () Int)

(assert (=> bs!870212 (= lambda!174929 lambda!174775)))

(declare-fun bs!870213 () Bool)

(assert (= bs!870213 (and d!1399990 start!449480)))

(assert (=> bs!870213 (= lambda!174929 lambda!174635)))

(declare-fun bs!870215 () Bool)

(assert (= bs!870215 (and d!1399990 d!1399266)))

(assert (=> bs!870215 (= lambda!174929 lambda!174760)))

(declare-fun bs!870216 () Bool)

(assert (= bs!870216 (and d!1399990 d!1399148)))

(assert (=> bs!870216 (= lambda!174929 lambda!174693)))

(declare-fun bs!870218 () Bool)

(assert (= bs!870218 (and d!1399990 d!1399114)))

(assert (=> bs!870218 (= lambda!174929 lambda!174691)))

(declare-fun bs!870220 () Bool)

(assert (= bs!870220 (and d!1399990 d!1399098)))

(assert (=> bs!870220 (= lambda!174929 lambda!174681)))

(declare-fun bs!870222 () Bool)

(assert (= bs!870222 (and d!1399990 d!1399160)))

(assert (=> bs!870222 (= lambda!174929 lambda!174703)))

(declare-fun bs!870224 () Bool)

(assert (= bs!870224 (and d!1399990 d!1399272)))

(assert (=> bs!870224 (= lambda!174929 lambda!174763)))

(declare-fun bs!870226 () Bool)

(assert (= bs!870226 (and d!1399990 d!1399880)))

(assert (=> bs!870226 (= lambda!174929 lambda!174909)))

(declare-fun bs!870228 () Bool)

(assert (= bs!870228 (and d!1399990 d!1399286)))

(assert (=> bs!870228 (= lambda!174929 lambda!174770)))

(declare-fun bs!870230 () Bool)

(assert (= bs!870230 (and d!1399990 d!1399666)))

(assert (=> bs!870230 (= lambda!174929 lambda!174858)))

(declare-fun bs!870232 () Bool)

(assert (= bs!870232 (and d!1399990 d!1399790)))

(assert (=> bs!870232 (= lambda!174929 lambda!174874)))

(declare-fun bs!870234 () Bool)

(assert (= bs!870234 (and d!1399990 b!4532128)))

(assert (=> bs!870234 (not (= lambda!174929 lambda!174636))))

(declare-fun bs!870236 () Bool)

(assert (= bs!870236 (and d!1399990 d!1399306)))

(assert (=> bs!870236 (= lambda!174929 lambda!174774)))

(declare-fun bs!870238 () Bool)

(assert (= bs!870238 (and d!1399990 d!1399304)))

(assert (=> bs!870238 (= lambda!174929 lambda!174771)))

(declare-fun bs!870239 () Bool)

(assert (= bs!870239 (and d!1399990 d!1399104)))

(assert (=> bs!870239 (not (= lambda!174929 lambda!174684))))

(declare-fun bs!870241 () Bool)

(assert (= bs!870241 (and d!1399990 d!1399174)))

(assert (=> bs!870241 (= lambda!174929 lambda!174706)))

(declare-fun lt!1708933 () ListMap!3637)

(assert (=> d!1399990 (invariantList!1035 (toList!4376 lt!1708933))))

(declare-fun e!2825006 () ListMap!3637)

(assert (=> d!1399990 (= lt!1708933 e!2825006)))

(declare-fun c!774228 () Bool)

(assert (=> d!1399990 (= c!774228 ((_ is Cons!50713) (t!357799 (toList!4375 lt!1707617))))))

(assert (=> d!1399990 (forall!10315 (t!357799 (toList!4375 lt!1707617)) lambda!174929)))

(assert (=> d!1399990 (= (extractMap!1240 (t!357799 (toList!4375 lt!1707617))) lt!1708933)))

(declare-fun b!4533699 () Bool)

(assert (=> b!4533699 (= e!2825006 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (t!357799 (toList!4375 lt!1707617)))) (extractMap!1240 (t!357799 (t!357799 (toList!4375 lt!1707617))))))))

(declare-fun b!4533700 () Bool)

(assert (=> b!4533700 (= e!2825006 (ListMap!3638 Nil!50712))))

(assert (= (and d!1399990 c!774228) b!4533699))

(assert (= (and d!1399990 (not c!774228)) b!4533700))

(declare-fun m!5293969 () Bool)

(assert (=> d!1399990 m!5293969))

(declare-fun m!5293971 () Bool)

(assert (=> d!1399990 m!5293971))

(declare-fun m!5293973 () Bool)

(assert (=> b!4533699 m!5293973))

(assert (=> b!4533699 m!5293973))

(declare-fun m!5293975 () Bool)

(assert (=> b!4533699 m!5293975))

(assert (=> b!4532255 d!1399990))

(declare-fun d!1399994 () Bool)

(assert (=> d!1399994 (isDefined!8451 (getValueByKey!1128 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(declare-fun lt!1708941 () Unit!97092)

(assert (=> d!1399994 (= lt!1708941 (choose!29781 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(assert (=> d!1399994 (invariantList!1035 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))

(assert (=> d!1399994 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287) lt!1708941)))

(declare-fun bs!870254 () Bool)

(assert (= bs!870254 d!1399994))

(assert (=> bs!870254 m!5291547))

(assert (=> bs!870254 m!5291547))

(assert (=> bs!870254 m!5291549))

(declare-fun m!5293977 () Bool)

(assert (=> bs!870254 m!5293977))

(assert (=> bs!870254 m!5293379))

(assert (=> b!4532511 d!1399994))

(declare-fun d!1399996 () Bool)

(assert (=> d!1399996 (= (isDefined!8451 (getValueByKey!1128 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287)) (not (isEmpty!28726 (getValueByKey!1128 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))))

(declare-fun bs!870256 () Bool)

(assert (= bs!870256 d!1399996))

(assert (=> bs!870256 m!5291547))

(declare-fun m!5293979 () Bool)

(assert (=> bs!870256 m!5293979))

(assert (=> b!4532511 d!1399996))

(declare-fun b!4533713 () Bool)

(declare-fun e!2825012 () Option!11170)

(assert (=> b!4533713 (= e!2825012 None!11169)))

(declare-fun d!1399998 () Bool)

(declare-fun c!774232 () Bool)

(assert (=> d!1399998 (= c!774232 (and ((_ is Cons!50712) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= (_1!28879 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) key!3287)))))

(declare-fun e!2825011 () Option!11170)

(assert (=> d!1399998 (= (getValueByKey!1128 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287) e!2825011)))

(declare-fun b!4533710 () Bool)

(assert (=> b!4533710 (= e!2825011 (Some!11169 (_2!28879 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))))

(declare-fun b!4533712 () Bool)

(assert (=> b!4533712 (= e!2825012 (getValueByKey!1128 (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) key!3287))))

(declare-fun b!4533711 () Bool)

(assert (=> b!4533711 (= e!2825011 e!2825012)))

(declare-fun c!774233 () Bool)

(assert (=> b!4533711 (= c!774233 (and ((_ is Cons!50712) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (not (= (_1!28879 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) key!3287))))))

(assert (= (and d!1399998 c!774232) b!4533710))

(assert (= (and d!1399998 (not c!774232)) b!4533711))

(assert (= (and b!4533711 c!774233) b!4533712))

(assert (= (and b!4533711 (not c!774233)) b!4533713))

(declare-fun m!5293981 () Bool)

(assert (=> b!4533712 m!5293981))

(assert (=> b!4532511 d!1399998))

(declare-fun d!1400000 () Bool)

(assert (=> d!1400000 (contains!13483 (getKeysList!483 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) key!3287)))

(declare-fun lt!1708942 () Unit!97092)

(assert (=> d!1400000 (= lt!1708942 (choose!29782 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(assert (=> d!1400000 (invariantList!1035 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))

(assert (=> d!1400000 (= (lemmaInListThenGetKeysListContains!479 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287) lt!1708942)))

(declare-fun bs!870266 () Bool)

(assert (= bs!870266 d!1400000))

(assert (=> bs!870266 m!5291563))

(assert (=> bs!870266 m!5291563))

(declare-fun m!5293983 () Bool)

(assert (=> bs!870266 m!5293983))

(declare-fun m!5293985 () Bool)

(assert (=> bs!870266 m!5293985))

(assert (=> bs!870266 m!5293379))

(assert (=> b!4532511 d!1400000))

(declare-fun d!1400002 () Bool)

(declare-fun res!1888490 () Bool)

(declare-fun e!2825013 () Bool)

(assert (=> d!1400002 (=> res!1888490 e!2825013)))

(assert (=> d!1400002 (= res!1888490 (and ((_ is Cons!50712) (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))) (= (_1!28879 (h!56583 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))))) key!3287)))))

(assert (=> d!1400002 (= (containsKey!1840 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))) key!3287) e!2825013)))

(declare-fun b!4533714 () Bool)

(declare-fun e!2825014 () Bool)

(assert (=> b!4533714 (= e!2825013 e!2825014)))

(declare-fun res!1888491 () Bool)

(assert (=> b!4533714 (=> (not res!1888491) (not e!2825014))))

(assert (=> b!4533714 (= res!1888491 ((_ is Cons!50712) (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))))))

(declare-fun b!4533715 () Bool)

(assert (=> b!4533715 (= e!2825014 (containsKey!1840 (t!357798 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))) key!3287))))

(assert (= (and d!1400002 (not res!1888490)) b!4533714))

(assert (= (and b!4533714 res!1888491) b!4533715))

(declare-fun m!5293987 () Bool)

(assert (=> b!4533715 m!5293987))

(assert (=> b!4532461 d!1400002))

(declare-fun d!1400004 () Bool)

(assert (=> d!1400004 (= (get!16650 (getValueByKey!1129 (toList!4375 lt!1707598) hash!344)) (v!44834 (getValueByKey!1129 (toList!4375 lt!1707598) hash!344)))))

(assert (=> d!1399332 d!1400004))

(assert (=> d!1399332 d!1399952))

(declare-fun d!1400006 () Bool)

(assert (=> d!1400006 (isDefined!8452 (getValueByKey!1129 (toList!4375 lm!1477) lt!1707614))))

(declare-fun lt!1708945 () Unit!97092)

(declare-fun choose!29786 (List!50837 (_ BitVec 64)) Unit!97092)

(assert (=> d!1400006 (= lt!1708945 (choose!29786 (toList!4375 lm!1477) lt!1707614))))

(declare-fun e!2825019 () Bool)

(assert (=> d!1400006 e!2825019))

(declare-fun res!1888496 () Bool)

(assert (=> d!1400006 (=> (not res!1888496) (not e!2825019))))

(assert (=> d!1400006 (= res!1888496 (isStrictlySorted!449 (toList!4375 lm!1477)))))

(assert (=> d!1400006 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (toList!4375 lm!1477) lt!1707614) lt!1708945)))

(declare-fun b!4533720 () Bool)

(assert (=> b!4533720 (= e!2825019 (containsKey!1844 (toList!4375 lm!1477) lt!1707614))))

(assert (= (and d!1400006 res!1888496) b!4533720))

(assert (=> d!1400006 m!5291523))

(assert (=> d!1400006 m!5291523))

(assert (=> d!1400006 m!5291525))

(declare-fun m!5294013 () Bool)

(assert (=> d!1400006 m!5294013))

(assert (=> d!1400006 m!5290875))

(assert (=> b!4533720 m!5291519))

(assert (=> b!4532479 d!1400006))

(declare-fun d!1400010 () Bool)

(assert (=> d!1400010 (= (isDefined!8452 (getValueByKey!1129 (toList!4375 lm!1477) lt!1707614)) (not (isEmpty!28727 (getValueByKey!1129 (toList!4375 lm!1477) lt!1707614))))))

(declare-fun bs!870279 () Bool)

(assert (= bs!870279 d!1400010))

(assert (=> bs!870279 m!5291523))

(declare-fun m!5294015 () Bool)

(assert (=> bs!870279 m!5294015))

(assert (=> b!4532479 d!1400010))

(declare-fun b!4533722 () Bool)

(declare-fun e!2825020 () Option!11171)

(declare-fun e!2825021 () Option!11171)

(assert (=> b!4533722 (= e!2825020 e!2825021)))

(declare-fun c!774235 () Bool)

(assert (=> b!4533722 (= c!774235 (and ((_ is Cons!50713) (toList!4375 lm!1477)) (not (= (_1!28880 (h!56584 (toList!4375 lm!1477))) lt!1707614))))))

(declare-fun b!4533724 () Bool)

(assert (=> b!4533724 (= e!2825021 None!11170)))

(declare-fun b!4533723 () Bool)

(assert (=> b!4533723 (= e!2825021 (getValueByKey!1129 (t!357799 (toList!4375 lm!1477)) lt!1707614))))

(declare-fun b!4533721 () Bool)

(assert (=> b!4533721 (= e!2825020 (Some!11170 (_2!28880 (h!56584 (toList!4375 lm!1477)))))))

(declare-fun d!1400012 () Bool)

(declare-fun c!774234 () Bool)

(assert (=> d!1400012 (= c!774234 (and ((_ is Cons!50713) (toList!4375 lm!1477)) (= (_1!28880 (h!56584 (toList!4375 lm!1477))) lt!1707614)))))

(assert (=> d!1400012 (= (getValueByKey!1129 (toList!4375 lm!1477) lt!1707614) e!2825020)))

(assert (= (and d!1400012 c!774234) b!4533721))

(assert (= (and d!1400012 (not c!774234)) b!4533722))

(assert (= (and b!4533722 c!774235) b!4533723))

(assert (= (and b!4533722 (not c!774235)) b!4533724))

(declare-fun m!5294021 () Bool)

(assert (=> b!4533723 m!5294021))

(assert (=> b!4532479 d!1400012))

(declare-fun b!4533728 () Bool)

(declare-fun e!2825024 () Option!11171)

(declare-fun e!2825025 () Option!11171)

(assert (=> b!4533728 (= e!2825024 e!2825025)))

(declare-fun c!774237 () Bool)

(assert (=> b!4533728 (= c!774237 (and ((_ is Cons!50713) (toList!4375 lt!1707800)) (not (= (_1!28880 (h!56584 (toList!4375 lt!1707800))) (_1!28880 lt!1707605)))))))

(declare-fun b!4533730 () Bool)

(assert (=> b!4533730 (= e!2825025 None!11170)))

(declare-fun b!4533729 () Bool)

(assert (=> b!4533729 (= e!2825025 (getValueByKey!1129 (t!357799 (toList!4375 lt!1707800)) (_1!28880 lt!1707605)))))

(declare-fun b!4533727 () Bool)

(assert (=> b!4533727 (= e!2825024 (Some!11170 (_2!28880 (h!56584 (toList!4375 lt!1707800)))))))

(declare-fun d!1400016 () Bool)

(declare-fun c!774236 () Bool)

(assert (=> d!1400016 (= c!774236 (and ((_ is Cons!50713) (toList!4375 lt!1707800)) (= (_1!28880 (h!56584 (toList!4375 lt!1707800))) (_1!28880 lt!1707605))))))

(assert (=> d!1400016 (= (getValueByKey!1129 (toList!4375 lt!1707800) (_1!28880 lt!1707605)) e!2825024)))

(assert (= (and d!1400016 c!774236) b!4533727))

(assert (= (and d!1400016 (not c!774236)) b!4533728))

(assert (= (and b!4533728 c!774237) b!4533729))

(assert (= (and b!4533728 (not c!774237)) b!4533730))

(declare-fun m!5294027 () Bool)

(assert (=> b!4533729 m!5294027))

(assert (=> b!4532265 d!1400016))

(declare-fun bs!870280 () Bool)

(declare-fun d!1400020 () Bool)

(assert (= bs!870280 (and d!1400020 b!4533658)))

(declare-fun lambda!174936 () Int)

(assert (=> bs!870280 (= (= lt!1707612 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174936 lambda!174921))))

(declare-fun bs!870281 () Bool)

(assert (= bs!870281 (and d!1400020 b!4533348)))

(assert (=> bs!870281 (= (= lt!1707612 lt!1708634) (= lambda!174936 lambda!174879))))

(declare-fun bs!870282 () Bool)

(assert (= bs!870282 (and d!1400020 b!4533230)))

(assert (=> bs!870282 (= (= lt!1707612 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174936 lambda!174864))))

(declare-fun bs!870283 () Bool)

(assert (= bs!870283 (and d!1400020 d!1399802)))

(assert (=> bs!870283 (= (= lt!1707612 lt!1708638) (= lambda!174936 lambda!174880))))

(declare-fun bs!870284 () Bool)

(assert (= bs!870284 (and d!1400020 b!4533161)))

(assert (=> bs!870284 (= (= lt!1707612 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174936 lambda!174848))))

(declare-fun bs!870285 () Bool)

(assert (= bs!870285 (and d!1400020 b!4532449)))

(assert (=> bs!870285 (= (= lt!1707612 lt!1708008) (= lambda!174936 lambda!174758))))

(declare-fun bs!870286 () Bool)

(assert (= bs!870286 (and d!1400020 d!1399264)))

(assert (=> bs!870286 (= (= lt!1707612 lt!1708012) (= lambda!174936 lambda!174759))))

(declare-fun bs!870287 () Bool)

(assert (= bs!870287 (and d!1400020 d!1399688)))

(assert (=> bs!870287 (= (= lt!1707612 lt!1707972) (= lambda!174936 lambda!174861))))

(declare-fun bs!870288 () Bool)

(assert (= bs!870288 (and d!1400020 b!4533469)))

(assert (=> bs!870288 (= (= lt!1707612 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174936 lambda!174901))))

(declare-fun bs!870289 () Bool)

(assert (= bs!870289 (and d!1400020 b!4532450)))

(assert (=> bs!870289 (= (= lt!1707612 lt!1707628) (= lambda!174936 lambda!174756))))

(declare-fun bs!870290 () Bool)

(assert (= bs!870290 (and d!1400020 b!4532469)))

(assert (=> bs!870290 (= (= lt!1707612 lt!1708034) (= lambda!174936 lambda!174766))))

(declare-fun bs!870291 () Bool)

(assert (= bs!870291 (and d!1400020 b!4533160)))

(assert (=> bs!870291 (= (= lt!1707612 lt!1708468) (= lambda!174936 lambda!174851))))

(declare-fun bs!870292 () Bool)

(assert (= bs!870292 (and d!1400020 b!4532427)))

(assert (=> bs!870292 (= (= lt!1707612 lt!1707972) (= lambda!174936 lambda!174754))))

(declare-fun bs!870293 () Bool)

(assert (= bs!870293 (and d!1400020 d!1399874)))

(assert (=> bs!870293 (= (= lt!1707612 lt!1708737) (= lambda!174936 lambda!174906))))

(declare-fun bs!870294 () Bool)

(assert (= bs!870294 (and d!1400020 d!1399764)))

(assert (=> bs!870294 (= (= lt!1707612 lt!1708609) (= lambda!174936 lambda!174873))))

(declare-fun bs!870295 () Bool)

(assert (= bs!870295 (and d!1400020 b!4532128)))

(assert (=> bs!870295 (not (= lambda!174936 lambda!174637))))

(assert (=> bs!870290 (= lambda!174936 lambda!174765)))

(declare-fun bs!870296 () Bool)

(assert (= bs!870296 (and d!1400020 d!1399278)))

(assert (=> bs!870296 (= (= lt!1707612 lt!1708038) (= lambda!174936 lambda!174767))))

(declare-fun bs!870297 () Bool)

(assert (= bs!870297 (and d!1400020 b!4533231)))

(assert (=> bs!870297 (= (= lt!1707612 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174936 lambda!174863))))

(declare-fun bs!870298 () Bool)

(assert (= bs!870298 (and d!1400020 b!4532470)))

(assert (=> bs!870298 (= lambda!174936 lambda!174764)))

(declare-fun bs!870299 () Bool)

(assert (= bs!870299 (and d!1400020 d!1399618)))

(assert (=> bs!870299 (= (= lt!1707612 lt!1708034) (= lambda!174936 lambda!174847))))

(assert (=> bs!870292 (= (= lt!1707612 lt!1707600) (= lambda!174936 lambda!174753))))

(declare-fun bs!870300 () Bool)

(assert (= bs!870300 (and d!1400020 d!1399690)))

(assert (=> bs!870300 (= (= lt!1707612 lt!1708558) (= lambda!174936 lambda!174867))))

(declare-fun bs!870301 () Bool)

(assert (= bs!870301 (and d!1400020 d!1399580)))

(assert (=> bs!870301 (not (= lambda!174936 lambda!174838))))

(declare-fun bs!870302 () Bool)

(assert (= bs!870302 (and d!1400020 d!1399970)))

(assert (=> bs!870302 (= (= lt!1707612 lt!1708902) (= lambda!174936 lambda!174927))))

(declare-fun bs!870303 () Bool)

(assert (= bs!870303 (and d!1400020 b!4533657)))

(assert (=> bs!870303 (= (= lt!1707612 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174936 lambda!174922))))

(declare-fun bs!870304 () Bool)

(assert (= bs!870304 (and d!1400020 b!4533314)))

(assert (=> bs!870304 (= (= lt!1707612 lt!1708605) (= lambda!174936 lambda!174871))))

(assert (=> bs!870281 (= (= lt!1707612 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174936 lambda!174877))))

(assert (=> bs!870304 (= (= lt!1707612 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174936 lambda!174870))))

(declare-fun bs!870305 () Bool)

(assert (= bs!870305 (and d!1400020 d!1399090)))

(assert (=> bs!870305 (not (= lambda!174936 lambda!174643))))

(declare-fun bs!870306 () Bool)

(assert (= bs!870306 (and d!1400020 b!4533349)))

(assert (=> bs!870306 (= (= lt!1707612 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174936 lambda!174875))))

(assert (=> bs!870282 (= (= lt!1707612 lt!1708554) (= lambda!174936 lambda!174866))))

(declare-fun bs!870307 () Bool)

(assert (= bs!870307 (and d!1400020 b!4533315)))

(assert (=> bs!870307 (= (= lt!1707612 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174936 lambda!174868))))

(assert (=> bs!870291 (= (= lt!1707612 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174936 lambda!174850))))

(declare-fun bs!870308 () Bool)

(assert (= bs!870308 (and d!1400020 d!1399182)))

(assert (=> bs!870308 (= (= lt!1707612 lt!1707976) (= lambda!174936 lambda!174755))))

(assert (=> bs!870303 (= (= lt!1707612 lt!1708898) (= lambda!174936 lambda!174923))))

(declare-fun bs!870309 () Bool)

(assert (= bs!870309 (and d!1400020 d!1399622)))

(assert (=> bs!870309 (= (= lt!1707612 lt!1708472) (= lambda!174936 lambda!174853))))

(assert (=> bs!870285 (= (= lt!1707612 lt!1707628) (= lambda!174936 lambda!174757))))

(declare-fun bs!870310 () Bool)

(assert (= bs!870310 (and d!1400020 b!4533468)))

(assert (=> bs!870310 (= (= lt!1707612 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174936 lambda!174903))))

(assert (=> bs!870310 (= (= lt!1707612 lt!1708733) (= lambda!174936 lambda!174904))))

(declare-fun bs!870311 () Bool)

(assert (= bs!870311 (and d!1400020 b!4532428)))

(assert (=> bs!870311 (= (= lt!1707612 lt!1707600) (= lambda!174936 lambda!174752))))

(assert (=> d!1400020 true))

(assert (=> d!1400020 (forall!10317 (toList!4376 lt!1707612) lambda!174936)))

(declare-fun lt!1708974 () Unit!97092)

(declare-fun choose!29787 (ListMap!3637) Unit!97092)

(assert (=> d!1400020 (= lt!1708974 (choose!29787 lt!1707612))))

(assert (=> d!1400020 (= (lemmaContainsAllItsOwnKeys!356 lt!1707612) lt!1708974)))

(declare-fun bs!870312 () Bool)

(assert (= bs!870312 d!1400020))

(declare-fun m!5294087 () Bool)

(assert (=> bs!870312 m!5294087))

(declare-fun m!5294089 () Bool)

(assert (=> bs!870312 m!5294089))

(assert (=> bm!315948 d!1400020))

(declare-fun d!1400026 () Bool)

(declare-fun c!774249 () Bool)

(assert (=> d!1400026 (= c!774249 ((_ is Nil!50712) (toList!4376 lt!1707628)))))

(declare-fun e!2825041 () (InoxSet tuple2!51170))

(assert (=> d!1400026 (= (content!8411 (toList!4376 lt!1707628)) e!2825041)))

(declare-fun b!4533759 () Bool)

(assert (=> b!4533759 (= e!2825041 ((as const (Array tuple2!51170 Bool)) false))))

(declare-fun b!4533760 () Bool)

(assert (=> b!4533760 (= e!2825041 ((_ map or) (store ((as const (Array tuple2!51170 Bool)) false) (h!56583 (toList!4376 lt!1707628)) true) (content!8411 (t!357798 (toList!4376 lt!1707628)))))))

(assert (= (and d!1400026 c!774249) b!4533759))

(assert (= (and d!1400026 (not c!774249)) b!4533760))

(declare-fun m!5294091 () Bool)

(assert (=> b!4533760 m!5294091))

(declare-fun m!5294093 () Bool)

(assert (=> b!4533760 m!5294093))

(assert (=> d!1399140 d!1400026))

(declare-fun d!1400028 () Bool)

(declare-fun c!774250 () Bool)

(assert (=> d!1400028 (= c!774250 ((_ is Nil!50712) (toList!4376 lt!1707600)))))

(declare-fun e!2825042 () (InoxSet tuple2!51170))

(assert (=> d!1400028 (= (content!8411 (toList!4376 lt!1707600)) e!2825042)))

(declare-fun b!4533761 () Bool)

(assert (=> b!4533761 (= e!2825042 ((as const (Array tuple2!51170 Bool)) false))))

(declare-fun b!4533762 () Bool)

(assert (=> b!4533762 (= e!2825042 ((_ map or) (store ((as const (Array tuple2!51170 Bool)) false) (h!56583 (toList!4376 lt!1707600)) true) (content!8411 (t!357798 (toList!4376 lt!1707600)))))))

(assert (= (and d!1400028 c!774250) b!4533761))

(assert (= (and d!1400028 (not c!774250)) b!4533762))

(declare-fun m!5294095 () Bool)

(assert (=> b!4533762 m!5294095))

(declare-fun m!5294097 () Bool)

(assert (=> b!4533762 m!5294097))

(assert (=> d!1399140 d!1400028))

(declare-fun d!1400030 () Bool)

(assert (=> d!1400030 (= (head!9456 (toList!4375 lt!1707597)) (h!56584 (toList!4375 lt!1707597)))))

(assert (=> d!1399094 d!1400030))

(declare-fun d!1400032 () Bool)

(declare-fun c!774251 () Bool)

(assert (=> d!1400032 (= c!774251 ((_ is Nil!50712) (toList!4376 lt!1707611)))))

(declare-fun e!2825043 () (InoxSet tuple2!51170))

(assert (=> d!1400032 (= (content!8411 (toList!4376 lt!1707611)) e!2825043)))

(declare-fun b!4533763 () Bool)

(assert (=> b!4533763 (= e!2825043 ((as const (Array tuple2!51170 Bool)) false))))

(declare-fun b!4533764 () Bool)

(assert (=> b!4533764 (= e!2825043 ((_ map or) (store ((as const (Array tuple2!51170 Bool)) false) (h!56583 (toList!4376 lt!1707611)) true) (content!8411 (t!357798 (toList!4376 lt!1707611)))))))

(assert (= (and d!1400032 c!774251) b!4533763))

(assert (= (and d!1400032 (not c!774251)) b!4533764))

(declare-fun m!5294099 () Bool)

(assert (=> b!4533764 m!5294099))

(declare-fun m!5294101 () Bool)

(assert (=> b!4533764 m!5294101))

(assert (=> d!1399314 d!1400032))

(declare-fun d!1400034 () Bool)

(declare-fun c!774252 () Bool)

(assert (=> d!1400034 (= c!774252 ((_ is Nil!50712) (toList!4376 lt!1707608)))))

(declare-fun e!2825044 () (InoxSet tuple2!51170))

(assert (=> d!1400034 (= (content!8411 (toList!4376 lt!1707608)) e!2825044)))

(declare-fun b!4533765 () Bool)

(assert (=> b!4533765 (= e!2825044 ((as const (Array tuple2!51170 Bool)) false))))

(declare-fun b!4533766 () Bool)

(assert (=> b!4533766 (= e!2825044 ((_ map or) (store ((as const (Array tuple2!51170 Bool)) false) (h!56583 (toList!4376 lt!1707608)) true) (content!8411 (t!357798 (toList!4376 lt!1707608)))))))

(assert (= (and d!1400034 c!774252) b!4533765))

(assert (= (and d!1400034 (not c!774252)) b!4533766))

(declare-fun m!5294103 () Bool)

(assert (=> b!4533766 m!5294103))

(declare-fun m!5294105 () Bool)

(assert (=> b!4533766 m!5294105))

(assert (=> d!1399314 d!1400034))

(declare-fun d!1400036 () Bool)

(assert (=> d!1400036 (= (invariantList!1035 (toList!4376 lt!1708021)) (noDuplicatedKeys!273 (toList!4376 lt!1708021)))))

(declare-fun bs!870313 () Bool)

(assert (= bs!870313 d!1400036))

(declare-fun m!5294107 () Bool)

(assert (=> bs!870313 m!5294107))

(assert (=> d!1399266 d!1400036))

(declare-fun d!1400038 () Bool)

(declare-fun res!1888505 () Bool)

(declare-fun e!2825045 () Bool)

(assert (=> d!1400038 (=> res!1888505 e!2825045)))

(assert (=> d!1400038 (= res!1888505 ((_ is Nil!50713) (toList!4375 lt!1707597)))))

(assert (=> d!1400038 (= (forall!10315 (toList!4375 lt!1707597) lambda!174760) e!2825045)))

(declare-fun b!4533767 () Bool)

(declare-fun e!2825046 () Bool)

(assert (=> b!4533767 (= e!2825045 e!2825046)))

(declare-fun res!1888506 () Bool)

(assert (=> b!4533767 (=> (not res!1888506) (not e!2825046))))

(assert (=> b!4533767 (= res!1888506 (dynLambda!21195 lambda!174760 (h!56584 (toList!4375 lt!1707597))))))

(declare-fun b!4533768 () Bool)

(assert (=> b!4533768 (= e!2825046 (forall!10315 (t!357799 (toList!4375 lt!1707597)) lambda!174760))))

(assert (= (and d!1400038 (not res!1888505)) b!4533767))

(assert (= (and b!4533767 res!1888506) b!4533768))

(declare-fun b_lambda!156935 () Bool)

(assert (=> (not b_lambda!156935) (not b!4533767)))

(declare-fun m!5294109 () Bool)

(assert (=> b!4533767 m!5294109))

(declare-fun m!5294111 () Bool)

(assert (=> b!4533768 m!5294111))

(assert (=> d!1399266 d!1400038))

(declare-fun d!1400040 () Bool)

(assert (=> d!1400040 (dynLambda!21197 lambda!174758 (h!56583 (_2!28880 lt!1707605)))))

(declare-fun lt!1708975 () Unit!97092)

(assert (=> d!1400040 (= lt!1708975 (choose!29771 (toList!4376 lt!1708004) lambda!174758 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun e!2825047 () Bool)

(assert (=> d!1400040 e!2825047))

(declare-fun res!1888507 () Bool)

(assert (=> d!1400040 (=> (not res!1888507) (not e!2825047))))

(assert (=> d!1400040 (= res!1888507 (forall!10317 (toList!4376 lt!1708004) lambda!174758))))

(assert (=> d!1400040 (= (forallContained!2573 (toList!4376 lt!1708004) lambda!174758 (h!56583 (_2!28880 lt!1707605))) lt!1708975)))

(declare-fun b!4533769 () Bool)

(assert (=> b!4533769 (= e!2825047 (contains!13485 (toList!4376 lt!1708004) (h!56583 (_2!28880 lt!1707605))))))

(assert (= (and d!1400040 res!1888507) b!4533769))

(declare-fun b_lambda!156937 () Bool)

(assert (=> (not b_lambda!156937) (not d!1400040)))

(declare-fun m!5294113 () Bool)

(assert (=> d!1400040 m!5294113))

(declare-fun m!5294115 () Bool)

(assert (=> d!1400040 m!5294115))

(assert (=> d!1400040 m!5291407))

(declare-fun m!5294117 () Bool)

(assert (=> b!4533769 m!5294117))

(assert (=> b!4532449 d!1400040))

(declare-fun d!1400042 () Bool)

(declare-fun res!1888508 () Bool)

(declare-fun e!2825048 () Bool)

(assert (=> d!1400042 (=> res!1888508 e!2825048)))

(assert (=> d!1400042 (= res!1888508 ((_ is Nil!50712) (toList!4376 lt!1708004)))))

(assert (=> d!1400042 (= (forall!10317 (toList!4376 lt!1708004) lambda!174758) e!2825048)))

(declare-fun b!4533770 () Bool)

(declare-fun e!2825049 () Bool)

(assert (=> b!4533770 (= e!2825048 e!2825049)))

(declare-fun res!1888509 () Bool)

(assert (=> b!4533770 (=> (not res!1888509) (not e!2825049))))

(assert (=> b!4533770 (= res!1888509 (dynLambda!21197 lambda!174758 (h!56583 (toList!4376 lt!1708004))))))

(declare-fun b!4533771 () Bool)

(assert (=> b!4533771 (= e!2825049 (forall!10317 (t!357798 (toList!4376 lt!1708004)) lambda!174758))))

(assert (= (and d!1400042 (not res!1888508)) b!4533770))

(assert (= (and b!4533770 res!1888509) b!4533771))

(declare-fun b_lambda!156939 () Bool)

(assert (=> (not b_lambda!156939) (not b!4533770)))

(declare-fun m!5294119 () Bool)

(assert (=> b!4533770 m!5294119))

(declare-fun m!5294123 () Bool)

(assert (=> b!4533771 m!5294123))

(assert (=> b!4532449 d!1400042))

(declare-fun b!4533772 () Bool)

(declare-fun e!2825050 () Bool)

(declare-fun e!2825052 () Bool)

(assert (=> b!4533772 (= e!2825050 e!2825052)))

(declare-fun res!1888511 () Bool)

(assert (=> b!4533772 (=> (not res!1888511) (not e!2825052))))

(assert (=> b!4533772 (= res!1888511 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708008) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533773 () Bool)

(declare-fun e!2825055 () List!50839)

(assert (=> b!4533773 (= e!2825055 (getKeysList!483 (toList!4376 lt!1708008)))))

(declare-fun b!4533774 () Bool)

(assert (=> b!4533774 (= e!2825055 (keys!17636 lt!1708008))))

(declare-fun b!4533775 () Bool)

(assert (=> b!4533775 (= e!2825052 (contains!13483 (keys!17636 lt!1708008) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun b!4533776 () Bool)

(declare-fun e!2825054 () Bool)

(assert (=> b!4533776 (= e!2825054 (not (contains!13483 (keys!17636 lt!1708008) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533777 () Bool)

(declare-fun e!2825053 () Unit!97092)

(declare-fun lt!1708980 () Unit!97092)

(assert (=> b!4533777 (= e!2825053 lt!1708980)))

(declare-fun lt!1708981 () Unit!97092)

(assert (=> b!4533777 (= lt!1708981 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1708008) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4533777 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708008) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708978 () Unit!97092)

(assert (=> b!4533777 (= lt!1708978 lt!1708981)))

(assert (=> b!4533777 (= lt!1708980 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1708008) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun call!316098 () Bool)

(assert (=> b!4533777 call!316098))

(declare-fun b!4533778 () Bool)

(declare-fun e!2825051 () Unit!97092)

(assert (=> b!4533778 (= e!2825053 e!2825051)))

(declare-fun c!774254 () Bool)

(assert (=> b!4533778 (= c!774254 call!316098)))

(declare-fun b!4533779 () Bool)

(assert (=> b!4533779 false))

(declare-fun lt!1708976 () Unit!97092)

(declare-fun lt!1708979 () Unit!97092)

(assert (=> b!4533779 (= lt!1708976 lt!1708979)))

(assert (=> b!4533779 (containsKey!1843 (toList!4376 lt!1708008) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4533779 (= lt!1708979 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1708008) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun Unit!97380 () Unit!97092)

(assert (=> b!4533779 (= e!2825051 Unit!97380)))

(declare-fun d!1400046 () Bool)

(assert (=> d!1400046 e!2825050))

(declare-fun res!1888512 () Bool)

(assert (=> d!1400046 (=> res!1888512 e!2825050)))

(assert (=> d!1400046 (= res!1888512 e!2825054)))

(declare-fun res!1888510 () Bool)

(assert (=> d!1400046 (=> (not res!1888510) (not e!2825054))))

(declare-fun lt!1708983 () Bool)

(assert (=> d!1400046 (= res!1888510 (not lt!1708983))))

(declare-fun lt!1708982 () Bool)

(assert (=> d!1400046 (= lt!1708983 lt!1708982)))

(declare-fun lt!1708977 () Unit!97092)

(assert (=> d!1400046 (= lt!1708977 e!2825053)))

(declare-fun c!774255 () Bool)

(assert (=> d!1400046 (= c!774255 lt!1708982)))

(assert (=> d!1400046 (= lt!1708982 (containsKey!1843 (toList!4376 lt!1708008) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1400046 (= (contains!13479 lt!1708008 (_1!28879 (h!56583 (_2!28880 lt!1707605)))) lt!1708983)))

(declare-fun b!4533780 () Bool)

(declare-fun Unit!97381 () Unit!97092)

(assert (=> b!4533780 (= e!2825051 Unit!97381)))

(declare-fun bm!316093 () Bool)

(assert (=> bm!316093 (= call!316098 (contains!13483 e!2825055 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun c!774253 () Bool)

(assert (=> bm!316093 (= c!774253 c!774255)))

(assert (= (and d!1400046 c!774255) b!4533777))

(assert (= (and d!1400046 (not c!774255)) b!4533778))

(assert (= (and b!4533778 c!774254) b!4533779))

(assert (= (and b!4533778 (not c!774254)) b!4533780))

(assert (= (or b!4533777 b!4533778) bm!316093))

(assert (= (and bm!316093 c!774253) b!4533773))

(assert (= (and bm!316093 (not c!774253)) b!4533774))

(assert (= (and d!1400046 res!1888510) b!4533776))

(assert (= (and d!1400046 (not res!1888512)) b!4533772))

(assert (= (and b!4533772 res!1888511) b!4533775))

(declare-fun m!5294133 () Bool)

(assert (=> b!4533777 m!5294133))

(declare-fun m!5294135 () Bool)

(assert (=> b!4533777 m!5294135))

(assert (=> b!4533777 m!5294135))

(declare-fun m!5294139 () Bool)

(assert (=> b!4533777 m!5294139))

(declare-fun m!5294143 () Bool)

(assert (=> b!4533777 m!5294143))

(declare-fun m!5294145 () Bool)

(assert (=> b!4533775 m!5294145))

(assert (=> b!4533775 m!5294145))

(declare-fun m!5294147 () Bool)

(assert (=> b!4533775 m!5294147))

(assert (=> b!4533774 m!5294145))

(declare-fun m!5294149 () Bool)

(assert (=> bm!316093 m!5294149))

(assert (=> b!4533776 m!5294145))

(assert (=> b!4533776 m!5294145))

(assert (=> b!4533776 m!5294147))

(declare-fun m!5294151 () Bool)

(assert (=> b!4533779 m!5294151))

(declare-fun m!5294153 () Bool)

(assert (=> b!4533779 m!5294153))

(assert (=> b!4533772 m!5294135))

(assert (=> b!4533772 m!5294135))

(assert (=> b!4533772 m!5294139))

(declare-fun m!5294155 () Bool)

(assert (=> b!4533773 m!5294155))

(assert (=> d!1400046 m!5294151))

(assert (=> b!4532449 d!1400046))

(declare-fun bs!870316 () Bool)

(declare-fun d!1400052 () Bool)

(assert (= bs!870316 (and d!1400052 b!4533658)))

(declare-fun lambda!174937 () Int)

(assert (=> bs!870316 (= (= lt!1708008 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174937 lambda!174921))))

(declare-fun bs!870317 () Bool)

(assert (= bs!870317 (and d!1400052 b!4533348)))

(assert (=> bs!870317 (= (= lt!1708008 lt!1708634) (= lambda!174937 lambda!174879))))

(declare-fun bs!870318 () Bool)

(assert (= bs!870318 (and d!1400052 b!4533230)))

(assert (=> bs!870318 (= (= lt!1708008 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174937 lambda!174864))))

(declare-fun bs!870319 () Bool)

(assert (= bs!870319 (and d!1400052 d!1399802)))

(assert (=> bs!870319 (= (= lt!1708008 lt!1708638) (= lambda!174937 lambda!174880))))

(declare-fun bs!870320 () Bool)

(assert (= bs!870320 (and d!1400052 b!4533161)))

(assert (=> bs!870320 (= (= lt!1708008 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174937 lambda!174848))))

(declare-fun bs!870321 () Bool)

(assert (= bs!870321 (and d!1400052 b!4532449)))

(assert (=> bs!870321 (= lambda!174937 lambda!174758)))

(declare-fun bs!870322 () Bool)

(assert (= bs!870322 (and d!1400052 d!1399264)))

(assert (=> bs!870322 (= (= lt!1708008 lt!1708012) (= lambda!174937 lambda!174759))))

(declare-fun bs!870323 () Bool)

(assert (= bs!870323 (and d!1400052 d!1399688)))

(assert (=> bs!870323 (= (= lt!1708008 lt!1707972) (= lambda!174937 lambda!174861))))

(declare-fun bs!870324 () Bool)

(assert (= bs!870324 (and d!1400052 b!4533469)))

(assert (=> bs!870324 (= (= lt!1708008 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174937 lambda!174901))))

(declare-fun bs!870325 () Bool)

(assert (= bs!870325 (and d!1400052 b!4532450)))

(assert (=> bs!870325 (= (= lt!1708008 lt!1707628) (= lambda!174937 lambda!174756))))

(declare-fun bs!870326 () Bool)

(assert (= bs!870326 (and d!1400052 b!4533160)))

(assert (=> bs!870326 (= (= lt!1708008 lt!1708468) (= lambda!174937 lambda!174851))))

(declare-fun bs!870327 () Bool)

(assert (= bs!870327 (and d!1400052 b!4532427)))

(assert (=> bs!870327 (= (= lt!1708008 lt!1707972) (= lambda!174937 lambda!174754))))

(declare-fun bs!870328 () Bool)

(assert (= bs!870328 (and d!1400052 d!1399874)))

(assert (=> bs!870328 (= (= lt!1708008 lt!1708737) (= lambda!174937 lambda!174906))))

(declare-fun bs!870329 () Bool)

(assert (= bs!870329 (and d!1400052 d!1399764)))

(assert (=> bs!870329 (= (= lt!1708008 lt!1708609) (= lambda!174937 lambda!174873))))

(declare-fun bs!870330 () Bool)

(assert (= bs!870330 (and d!1400052 b!4532128)))

(assert (=> bs!870330 (not (= lambda!174937 lambda!174637))))

(declare-fun bs!870331 () Bool)

(assert (= bs!870331 (and d!1400052 b!4532469)))

(assert (=> bs!870331 (= (= lt!1708008 lt!1707612) (= lambda!174937 lambda!174765))))

(declare-fun bs!870332 () Bool)

(assert (= bs!870332 (and d!1400052 d!1399278)))

(assert (=> bs!870332 (= (= lt!1708008 lt!1708038) (= lambda!174937 lambda!174767))))

(declare-fun bs!870333 () Bool)

(assert (= bs!870333 (and d!1400052 b!4533231)))

(assert (=> bs!870333 (= (= lt!1708008 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174937 lambda!174863))))

(declare-fun bs!870334 () Bool)

(assert (= bs!870334 (and d!1400052 b!4532470)))

(assert (=> bs!870334 (= (= lt!1708008 lt!1707612) (= lambda!174937 lambda!174764))))

(declare-fun bs!870335 () Bool)

(assert (= bs!870335 (and d!1400052 d!1399618)))

(assert (=> bs!870335 (= (= lt!1708008 lt!1708034) (= lambda!174937 lambda!174847))))

(assert (=> bs!870327 (= (= lt!1708008 lt!1707600) (= lambda!174937 lambda!174753))))

(declare-fun bs!870336 () Bool)

(assert (= bs!870336 (and d!1400052 d!1399690)))

(assert (=> bs!870336 (= (= lt!1708008 lt!1708558) (= lambda!174937 lambda!174867))))

(declare-fun bs!870337 () Bool)

(assert (= bs!870337 (and d!1400052 d!1399580)))

(assert (=> bs!870337 (not (= lambda!174937 lambda!174838))))

(declare-fun bs!870338 () Bool)

(assert (= bs!870338 (and d!1400052 d!1399970)))

(assert (=> bs!870338 (= (= lt!1708008 lt!1708902) (= lambda!174937 lambda!174927))))

(declare-fun bs!870339 () Bool)

(assert (= bs!870339 (and d!1400052 b!4533657)))

(assert (=> bs!870339 (= (= lt!1708008 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174937 lambda!174922))))

(declare-fun bs!870340 () Bool)

(assert (= bs!870340 (and d!1400052 b!4533314)))

(assert (=> bs!870340 (= (= lt!1708008 lt!1708605) (= lambda!174937 lambda!174871))))

(assert (=> bs!870317 (= (= lt!1708008 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174937 lambda!174877))))

(assert (=> bs!870340 (= (= lt!1708008 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174937 lambda!174870))))

(declare-fun bs!870341 () Bool)

(assert (= bs!870341 (and d!1400052 d!1399090)))

(assert (=> bs!870341 (not (= lambda!174937 lambda!174643))))

(declare-fun bs!870342 () Bool)

(assert (= bs!870342 (and d!1400052 b!4533349)))

(assert (=> bs!870342 (= (= lt!1708008 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174937 lambda!174875))))

(assert (=> bs!870318 (= (= lt!1708008 lt!1708554) (= lambda!174937 lambda!174866))))

(declare-fun bs!870343 () Bool)

(assert (= bs!870343 (and d!1400052 b!4533315)))

(assert (=> bs!870343 (= (= lt!1708008 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174937 lambda!174868))))

(assert (=> bs!870326 (= (= lt!1708008 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174937 lambda!174850))))

(declare-fun bs!870345 () Bool)

(assert (= bs!870345 (and d!1400052 d!1399182)))

(assert (=> bs!870345 (= (= lt!1708008 lt!1707976) (= lambda!174937 lambda!174755))))

(assert (=> bs!870339 (= (= lt!1708008 lt!1708898) (= lambda!174937 lambda!174923))))

(declare-fun bs!870347 () Bool)

(assert (= bs!870347 (and d!1400052 d!1399622)))

(assert (=> bs!870347 (= (= lt!1708008 lt!1708472) (= lambda!174937 lambda!174853))))

(assert (=> bs!870321 (= (= lt!1708008 lt!1707628) (= lambda!174937 lambda!174757))))

(declare-fun bs!870348 () Bool)

(assert (= bs!870348 (and d!1400052 b!4533468)))

(assert (=> bs!870348 (= (= lt!1708008 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174937 lambda!174903))))

(assert (=> bs!870348 (= (= lt!1708008 lt!1708733) (= lambda!174937 lambda!174904))))

(declare-fun bs!870349 () Bool)

(assert (= bs!870349 (and d!1400052 b!4532428)))

(assert (=> bs!870349 (= (= lt!1708008 lt!1707600) (= lambda!174937 lambda!174752))))

(assert (=> bs!870331 (= (= lt!1708008 lt!1708034) (= lambda!174937 lambda!174766))))

(declare-fun bs!870350 () Bool)

(assert (= bs!870350 (and d!1400052 d!1400020)))

(assert (=> bs!870350 (= (= lt!1708008 lt!1707612) (= lambda!174937 lambda!174936))))

(assert (=> d!1400052 true))

(assert (=> d!1400052 (forall!10317 (toList!4376 lt!1707628) lambda!174937)))

(declare-fun lt!1708985 () Unit!97092)

(assert (=> d!1400052 (= lt!1708985 (choose!29783 lt!1707628 lt!1708008 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1400052 (forall!10317 (toList!4376 (+!1582 lt!1707628 (tuple2!51171 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))) lambda!174937)))

(assert (=> d!1400052 (= (addForallContainsKeyThenBeforeAdding!356 lt!1707628 lt!1708008 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))) lt!1708985)))

(declare-fun bs!870354 () Bool)

(assert (= bs!870354 d!1400052))

(declare-fun m!5294159 () Bool)

(assert (=> bs!870354 m!5294159))

(declare-fun m!5294163 () Bool)

(assert (=> bs!870354 m!5294163))

(declare-fun m!5294165 () Bool)

(assert (=> bs!870354 m!5294165))

(declare-fun m!5294167 () Bool)

(assert (=> bs!870354 m!5294167))

(assert (=> b!4532449 d!1400052))

(declare-fun bs!870364 () Bool)

(declare-fun b!4533790 () Bool)

(assert (= bs!870364 (and b!4533790 b!4533658)))

(declare-fun lambda!174938 () Int)

(assert (=> bs!870364 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174938 lambda!174921))))

(declare-fun bs!870366 () Bool)

(assert (= bs!870366 (and b!4533790 b!4533348)))

(assert (=> bs!870366 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708634) (= lambda!174938 lambda!174879))))

(declare-fun bs!870368 () Bool)

(assert (= bs!870368 (and b!4533790 b!4533230)))

(assert (=> bs!870368 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174938 lambda!174864))))

(declare-fun bs!870370 () Bool)

(assert (= bs!870370 (and b!4533790 d!1399802)))

(assert (=> bs!870370 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708638) (= lambda!174938 lambda!174880))))

(declare-fun bs!870372 () Bool)

(assert (= bs!870372 (and b!4533790 b!4533161)))

(assert (=> bs!870372 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174938 lambda!174848))))

(declare-fun bs!870374 () Bool)

(assert (= bs!870374 (and b!4533790 b!4532449)))

(assert (=> bs!870374 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708008) (= lambda!174938 lambda!174758))))

(declare-fun bs!870376 () Bool)

(assert (= bs!870376 (and b!4533790 d!1399264)))

(assert (=> bs!870376 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708012) (= lambda!174938 lambda!174759))))

(declare-fun bs!870377 () Bool)

(assert (= bs!870377 (and b!4533790 d!1399688)))

(assert (=> bs!870377 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174938 lambda!174861))))

(declare-fun bs!870378 () Bool)

(assert (= bs!870378 (and b!4533790 b!4533469)))

(assert (=> bs!870378 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174938 lambda!174901))))

(declare-fun bs!870380 () Bool)

(assert (= bs!870380 (and b!4533790 b!4533160)))

(assert (=> bs!870380 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708468) (= lambda!174938 lambda!174851))))

(declare-fun bs!870382 () Bool)

(assert (= bs!870382 (and b!4533790 b!4532427)))

(assert (=> bs!870382 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174938 lambda!174754))))

(declare-fun bs!870385 () Bool)

(assert (= bs!870385 (and b!4533790 d!1399874)))

(assert (=> bs!870385 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708737) (= lambda!174938 lambda!174906))))

(declare-fun bs!870387 () Bool)

(assert (= bs!870387 (and b!4533790 d!1399764)))

(assert (=> bs!870387 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708609) (= lambda!174938 lambda!174873))))

(declare-fun bs!870389 () Bool)

(assert (= bs!870389 (and b!4533790 b!4532128)))

(assert (=> bs!870389 (not (= lambda!174938 lambda!174637))))

(declare-fun bs!870391 () Bool)

(assert (= bs!870391 (and b!4533790 b!4532469)))

(assert (=> bs!870391 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174938 lambda!174765))))

(declare-fun bs!870393 () Bool)

(assert (= bs!870393 (and b!4533790 d!1399278)))

(assert (=> bs!870393 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708038) (= lambda!174938 lambda!174767))))

(declare-fun bs!870395 () Bool)

(assert (= bs!870395 (and b!4533790 b!4533231)))

(assert (=> bs!870395 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174938 lambda!174863))))

(declare-fun bs!870396 () Bool)

(assert (= bs!870396 (and b!4533790 b!4532470)))

(assert (=> bs!870396 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174938 lambda!174764))))

(declare-fun bs!870398 () Bool)

(assert (= bs!870398 (and b!4533790 d!1399618)))

(assert (=> bs!870398 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174938 lambda!174847))))

(assert (=> bs!870382 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174938 lambda!174753))))

(declare-fun bs!870400 () Bool)

(assert (= bs!870400 (and b!4533790 d!1399690)))

(assert (=> bs!870400 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708558) (= lambda!174938 lambda!174867))))

(declare-fun bs!870401 () Bool)

(assert (= bs!870401 (and b!4533790 d!1399580)))

(assert (=> bs!870401 (not (= lambda!174938 lambda!174838))))

(declare-fun bs!870403 () Bool)

(assert (= bs!870403 (and b!4533790 d!1399970)))

(assert (=> bs!870403 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708902) (= lambda!174938 lambda!174927))))

(declare-fun bs!870405 () Bool)

(assert (= bs!870405 (and b!4533790 b!4533657)))

(assert (=> bs!870405 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174938 lambda!174922))))

(declare-fun bs!870406 () Bool)

(assert (= bs!870406 (and b!4533790 b!4533314)))

(assert (=> bs!870406 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708605) (= lambda!174938 lambda!174871))))

(assert (=> bs!870366 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174938 lambda!174877))))

(assert (=> bs!870406 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174938 lambda!174870))))

(declare-fun bs!870407 () Bool)

(assert (= bs!870407 (and b!4533790 d!1399090)))

(assert (=> bs!870407 (not (= lambda!174938 lambda!174643))))

(declare-fun bs!870408 () Bool)

(assert (= bs!870408 (and b!4533790 b!4533349)))

(assert (=> bs!870408 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174938 lambda!174875))))

(assert (=> bs!870368 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708554) (= lambda!174938 lambda!174866))))

(declare-fun bs!870409 () Bool)

(assert (= bs!870409 (and b!4533790 b!4533315)))

(assert (=> bs!870409 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174938 lambda!174868))))

(assert (=> bs!870380 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174938 lambda!174850))))

(declare-fun bs!870410 () Bool)

(assert (= bs!870410 (and b!4533790 d!1399182)))

(assert (=> bs!870410 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707976) (= lambda!174938 lambda!174755))))

(assert (=> bs!870405 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708898) (= lambda!174938 lambda!174923))))

(declare-fun bs!870411 () Bool)

(assert (= bs!870411 (and b!4533790 d!1399622)))

(assert (=> bs!870411 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708472) (= lambda!174938 lambda!174853))))

(assert (=> bs!870374 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174938 lambda!174757))))

(declare-fun bs!870412 () Bool)

(assert (= bs!870412 (and b!4533790 b!4533468)))

(assert (=> bs!870412 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174938 lambda!174903))))

(assert (=> bs!870412 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708733) (= lambda!174938 lambda!174904))))

(declare-fun bs!870413 () Bool)

(assert (= bs!870413 (and b!4533790 b!4532428)))

(assert (=> bs!870413 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174938 lambda!174752))))

(declare-fun bs!870414 () Bool)

(assert (= bs!870414 (and b!4533790 b!4532450)))

(assert (=> bs!870414 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174938 lambda!174756))))

(declare-fun bs!870415 () Bool)

(assert (= bs!870415 (and b!4533790 d!1400052)))

(assert (=> bs!870415 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708008) (= lambda!174938 lambda!174937))))

(assert (=> bs!870391 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174938 lambda!174766))))

(declare-fun bs!870416 () Bool)

(assert (= bs!870416 (and b!4533790 d!1400020)))

(assert (=> bs!870416 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174938 lambda!174936))))

(assert (=> b!4533790 true))

(declare-fun bs!870417 () Bool)

(declare-fun b!4533789 () Bool)

(assert (= bs!870417 (and b!4533789 b!4533658)))

(declare-fun lambda!174939 () Int)

(assert (=> bs!870417 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174939 lambda!174921))))

(declare-fun bs!870418 () Bool)

(assert (= bs!870418 (and b!4533789 b!4533348)))

(assert (=> bs!870418 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708634) (= lambda!174939 lambda!174879))))

(declare-fun bs!870419 () Bool)

(assert (= bs!870419 (and b!4533789 b!4533230)))

(assert (=> bs!870419 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174939 lambda!174864))))

(declare-fun bs!870420 () Bool)

(assert (= bs!870420 (and b!4533789 d!1399802)))

(assert (=> bs!870420 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708638) (= lambda!174939 lambda!174880))))

(declare-fun bs!870421 () Bool)

(assert (= bs!870421 (and b!4533789 b!4533161)))

(assert (=> bs!870421 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174939 lambda!174848))))

(declare-fun bs!870422 () Bool)

(assert (= bs!870422 (and b!4533789 b!4532449)))

(assert (=> bs!870422 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708008) (= lambda!174939 lambda!174758))))

(declare-fun bs!870423 () Bool)

(assert (= bs!870423 (and b!4533789 d!1399264)))

(assert (=> bs!870423 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708012) (= lambda!174939 lambda!174759))))

(declare-fun bs!870424 () Bool)

(assert (= bs!870424 (and b!4533789 d!1399688)))

(assert (=> bs!870424 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174939 lambda!174861))))

(declare-fun bs!870425 () Bool)

(assert (= bs!870425 (and b!4533789 b!4533160)))

(assert (=> bs!870425 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708468) (= lambda!174939 lambda!174851))))

(declare-fun bs!870426 () Bool)

(assert (= bs!870426 (and b!4533789 b!4532427)))

(assert (=> bs!870426 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707972) (= lambda!174939 lambda!174754))))

(declare-fun bs!870427 () Bool)

(assert (= bs!870427 (and b!4533789 d!1399874)))

(assert (=> bs!870427 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708737) (= lambda!174939 lambda!174906))))

(declare-fun bs!870428 () Bool)

(assert (= bs!870428 (and b!4533789 d!1399764)))

(assert (=> bs!870428 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708609) (= lambda!174939 lambda!174873))))

(declare-fun bs!870429 () Bool)

(assert (= bs!870429 (and b!4533789 b!4532128)))

(assert (=> bs!870429 (not (= lambda!174939 lambda!174637))))

(declare-fun bs!870430 () Bool)

(assert (= bs!870430 (and b!4533789 b!4532469)))

(assert (=> bs!870430 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174939 lambda!174765))))

(declare-fun bs!870431 () Bool)

(assert (= bs!870431 (and b!4533789 d!1399278)))

(assert (=> bs!870431 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708038) (= lambda!174939 lambda!174767))))

(declare-fun bs!870432 () Bool)

(assert (= bs!870432 (and b!4533789 b!4533231)))

(assert (=> bs!870432 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174939 lambda!174863))))

(declare-fun bs!870433 () Bool)

(assert (= bs!870433 (and b!4533789 b!4532470)))

(assert (=> bs!870433 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174939 lambda!174764))))

(declare-fun bs!870434 () Bool)

(assert (= bs!870434 (and b!4533789 d!1399618)))

(assert (=> bs!870434 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174939 lambda!174847))))

(assert (=> bs!870426 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174939 lambda!174753))))

(declare-fun bs!870435 () Bool)

(assert (= bs!870435 (and b!4533789 d!1399690)))

(assert (=> bs!870435 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708558) (= lambda!174939 lambda!174867))))

(declare-fun bs!870436 () Bool)

(assert (= bs!870436 (and b!4533789 d!1399580)))

(assert (=> bs!870436 (not (= lambda!174939 lambda!174838))))

(declare-fun bs!870437 () Bool)

(assert (= bs!870437 (and b!4533789 d!1399970)))

(assert (=> bs!870437 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708902) (= lambda!174939 lambda!174927))))

(declare-fun bs!870438 () Bool)

(assert (= bs!870438 (and b!4533789 b!4533657)))

(assert (=> bs!870438 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174939 lambda!174922))))

(declare-fun bs!870439 () Bool)

(assert (= bs!870439 (and b!4533789 b!4533314)))

(assert (=> bs!870439 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708605) (= lambda!174939 lambda!174871))))

(assert (=> bs!870418 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174939 lambda!174877))))

(assert (=> bs!870439 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174939 lambda!174870))))

(declare-fun bs!870440 () Bool)

(assert (= bs!870440 (and b!4533789 d!1399090)))

(assert (=> bs!870440 (not (= lambda!174939 lambda!174643))))

(declare-fun bs!870441 () Bool)

(assert (= bs!870441 (and b!4533789 b!4533349)))

(assert (=> bs!870441 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174939 lambda!174875))))

(assert (=> bs!870419 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708554) (= lambda!174939 lambda!174866))))

(declare-fun bs!870442 () Bool)

(assert (= bs!870442 (and b!4533789 b!4533315)))

(assert (=> bs!870442 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174939 lambda!174868))))

(assert (=> bs!870425 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174939 lambda!174850))))

(declare-fun bs!870443 () Bool)

(assert (= bs!870443 (and b!4533789 d!1399182)))

(assert (=> bs!870443 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707976) (= lambda!174939 lambda!174755))))

(assert (=> bs!870438 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708898) (= lambda!174939 lambda!174923))))

(declare-fun bs!870444 () Bool)

(assert (= bs!870444 (and b!4533789 d!1399622)))

(assert (=> bs!870444 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708472) (= lambda!174939 lambda!174853))))

(assert (=> bs!870422 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174939 lambda!174757))))

(declare-fun bs!870445 () Bool)

(assert (= bs!870445 (and b!4533789 b!4533468)))

(assert (=> bs!870445 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174939 lambda!174903))))

(assert (=> bs!870445 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708733) (= lambda!174939 lambda!174904))))

(declare-fun bs!870446 () Bool)

(assert (= bs!870446 (and b!4533789 b!4532428)))

(assert (=> bs!870446 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707600) (= lambda!174939 lambda!174752))))

(declare-fun bs!870447 () Bool)

(assert (= bs!870447 (and b!4533789 b!4533469)))

(assert (=> bs!870447 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174939 lambda!174901))))

(declare-fun bs!870448 () Bool)

(assert (= bs!870448 (and b!4533789 b!4533790)))

(assert (=> bs!870448 (= lambda!174939 lambda!174938)))

(declare-fun bs!870449 () Bool)

(assert (= bs!870449 (and b!4533789 b!4532450)))

(assert (=> bs!870449 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707628) (= lambda!174939 lambda!174756))))

(declare-fun bs!870450 () Bool)

(assert (= bs!870450 (and b!4533789 d!1400052)))

(assert (=> bs!870450 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708008) (= lambda!174939 lambda!174937))))

(assert (=> bs!870430 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708034) (= lambda!174939 lambda!174766))))

(declare-fun bs!870451 () Bool)

(assert (= bs!870451 (and b!4533789 d!1400020)))

(assert (=> bs!870451 (= (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1707612) (= lambda!174939 lambda!174936))))

(assert (=> b!4533789 true))

(declare-fun lambda!174940 () Int)

(declare-fun lt!1708994 () ListMap!3637)

(assert (=> bs!870418 (= (= lt!1708994 lt!1708634) (= lambda!174940 lambda!174879))))

(assert (=> bs!870419 (= (= lt!1708994 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174940 lambda!174864))))

(assert (=> bs!870420 (= (= lt!1708994 lt!1708638) (= lambda!174940 lambda!174880))))

(assert (=> bs!870421 (= (= lt!1708994 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174940 lambda!174848))))

(assert (=> bs!870422 (= (= lt!1708994 lt!1708008) (= lambda!174940 lambda!174758))))

(assert (=> bs!870423 (= (= lt!1708994 lt!1708012) (= lambda!174940 lambda!174759))))

(assert (=> bs!870424 (= (= lt!1708994 lt!1707972) (= lambda!174940 lambda!174861))))

(assert (=> b!4533789 (= (= lt!1708994 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174940 lambda!174939))))

(assert (=> bs!870417 (= (= lt!1708994 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174940 lambda!174921))))

(assert (=> bs!870425 (= (= lt!1708994 lt!1708468) (= lambda!174940 lambda!174851))))

(assert (=> bs!870426 (= (= lt!1708994 lt!1707972) (= lambda!174940 lambda!174754))))

(assert (=> bs!870427 (= (= lt!1708994 lt!1708737) (= lambda!174940 lambda!174906))))

(assert (=> bs!870428 (= (= lt!1708994 lt!1708609) (= lambda!174940 lambda!174873))))

(assert (=> bs!870429 (not (= lambda!174940 lambda!174637))))

(assert (=> bs!870430 (= (= lt!1708994 lt!1707612) (= lambda!174940 lambda!174765))))

(assert (=> bs!870431 (= (= lt!1708994 lt!1708038) (= lambda!174940 lambda!174767))))

(assert (=> bs!870432 (= (= lt!1708994 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174940 lambda!174863))))

(assert (=> bs!870433 (= (= lt!1708994 lt!1707612) (= lambda!174940 lambda!174764))))

(assert (=> bs!870434 (= (= lt!1708994 lt!1708034) (= lambda!174940 lambda!174847))))

(assert (=> bs!870426 (= (= lt!1708994 lt!1707600) (= lambda!174940 lambda!174753))))

(assert (=> bs!870435 (= (= lt!1708994 lt!1708558) (= lambda!174940 lambda!174867))))

(assert (=> bs!870436 (not (= lambda!174940 lambda!174838))))

(assert (=> bs!870437 (= (= lt!1708994 lt!1708902) (= lambda!174940 lambda!174927))))

(assert (=> bs!870438 (= (= lt!1708994 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174940 lambda!174922))))

(assert (=> bs!870439 (= (= lt!1708994 lt!1708605) (= lambda!174940 lambda!174871))))

(assert (=> bs!870418 (= (= lt!1708994 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174940 lambda!174877))))

(assert (=> bs!870439 (= (= lt!1708994 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174940 lambda!174870))))

(assert (=> bs!870440 (not (= lambda!174940 lambda!174643))))

(assert (=> bs!870441 (= (= lt!1708994 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174940 lambda!174875))))

(assert (=> bs!870419 (= (= lt!1708994 lt!1708554) (= lambda!174940 lambda!174866))))

(assert (=> bs!870442 (= (= lt!1708994 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174940 lambda!174868))))

(assert (=> bs!870425 (= (= lt!1708994 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174940 lambda!174850))))

(assert (=> bs!870443 (= (= lt!1708994 lt!1707976) (= lambda!174940 lambda!174755))))

(assert (=> bs!870438 (= (= lt!1708994 lt!1708898) (= lambda!174940 lambda!174923))))

(assert (=> bs!870444 (= (= lt!1708994 lt!1708472) (= lambda!174940 lambda!174853))))

(assert (=> bs!870422 (= (= lt!1708994 lt!1707628) (= lambda!174940 lambda!174757))))

(assert (=> bs!870445 (= (= lt!1708994 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174940 lambda!174903))))

(assert (=> bs!870445 (= (= lt!1708994 lt!1708733) (= lambda!174940 lambda!174904))))

(assert (=> bs!870446 (= (= lt!1708994 lt!1707600) (= lambda!174940 lambda!174752))))

(assert (=> bs!870447 (= (= lt!1708994 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174940 lambda!174901))))

(assert (=> bs!870448 (= (= lt!1708994 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174940 lambda!174938))))

(assert (=> bs!870449 (= (= lt!1708994 lt!1707628) (= lambda!174940 lambda!174756))))

(assert (=> bs!870450 (= (= lt!1708994 lt!1708008) (= lambda!174940 lambda!174937))))

(assert (=> bs!870430 (= (= lt!1708994 lt!1708034) (= lambda!174940 lambda!174766))))

(assert (=> bs!870451 (= (= lt!1708994 lt!1707612) (= lambda!174940 lambda!174936))))

(assert (=> b!4533789 true))

(declare-fun bs!870452 () Bool)

(declare-fun d!1400068 () Bool)

(assert (= bs!870452 (and d!1400068 b!4533348)))

(declare-fun lt!1708998 () ListMap!3637)

(declare-fun lambda!174941 () Int)

(assert (=> bs!870452 (= (= lt!1708998 lt!1708634) (= lambda!174941 lambda!174879))))

(declare-fun bs!870453 () Bool)

(assert (= bs!870453 (and d!1400068 b!4533230)))

(assert (=> bs!870453 (= (= lt!1708998 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174941 lambda!174864))))

(declare-fun bs!870454 () Bool)

(assert (= bs!870454 (and d!1400068 d!1399802)))

(assert (=> bs!870454 (= (= lt!1708998 lt!1708638) (= lambda!174941 lambda!174880))))

(declare-fun bs!870455 () Bool)

(assert (= bs!870455 (and d!1400068 b!4533161)))

(assert (=> bs!870455 (= (= lt!1708998 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174941 lambda!174848))))

(declare-fun bs!870456 () Bool)

(assert (= bs!870456 (and d!1400068 b!4532449)))

(assert (=> bs!870456 (= (= lt!1708998 lt!1708008) (= lambda!174941 lambda!174758))))

(declare-fun bs!870457 () Bool)

(assert (= bs!870457 (and d!1400068 d!1399264)))

(assert (=> bs!870457 (= (= lt!1708998 lt!1708012) (= lambda!174941 lambda!174759))))

(declare-fun bs!870458 () Bool)

(assert (= bs!870458 (and d!1400068 d!1399688)))

(assert (=> bs!870458 (= (= lt!1708998 lt!1707972) (= lambda!174941 lambda!174861))))

(declare-fun bs!870459 () Bool)

(assert (= bs!870459 (and d!1400068 b!4533789)))

(assert (=> bs!870459 (= (= lt!1708998 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174941 lambda!174939))))

(declare-fun bs!870460 () Bool)

(assert (= bs!870460 (and d!1400068 b!4533658)))

(assert (=> bs!870460 (= (= lt!1708998 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174941 lambda!174921))))

(declare-fun bs!870461 () Bool)

(assert (= bs!870461 (and d!1400068 b!4533160)))

(assert (=> bs!870461 (= (= lt!1708998 lt!1708468) (= lambda!174941 lambda!174851))))

(declare-fun bs!870462 () Bool)

(assert (= bs!870462 (and d!1400068 b!4532427)))

(assert (=> bs!870462 (= (= lt!1708998 lt!1707972) (= lambda!174941 lambda!174754))))

(declare-fun bs!870463 () Bool)

(assert (= bs!870463 (and d!1400068 d!1399874)))

(assert (=> bs!870463 (= (= lt!1708998 lt!1708737) (= lambda!174941 lambda!174906))))

(declare-fun bs!870464 () Bool)

(assert (= bs!870464 (and d!1400068 d!1399764)))

(assert (=> bs!870464 (= (= lt!1708998 lt!1708609) (= lambda!174941 lambda!174873))))

(declare-fun bs!870465 () Bool)

(assert (= bs!870465 (and d!1400068 b!4532128)))

(assert (=> bs!870465 (not (= lambda!174941 lambda!174637))))

(declare-fun bs!870466 () Bool)

(assert (= bs!870466 (and d!1400068 b!4532469)))

(assert (=> bs!870466 (= (= lt!1708998 lt!1707612) (= lambda!174941 lambda!174765))))

(declare-fun bs!870467 () Bool)

(assert (= bs!870467 (and d!1400068 d!1399278)))

(assert (=> bs!870467 (= (= lt!1708998 lt!1708038) (= lambda!174941 lambda!174767))))

(declare-fun bs!870468 () Bool)

(assert (= bs!870468 (and d!1400068 b!4533231)))

(assert (=> bs!870468 (= (= lt!1708998 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174941 lambda!174863))))

(declare-fun bs!870469 () Bool)

(assert (= bs!870469 (and d!1400068 b!4532470)))

(assert (=> bs!870469 (= (= lt!1708998 lt!1707612) (= lambda!174941 lambda!174764))))

(declare-fun bs!870470 () Bool)

(assert (= bs!870470 (and d!1400068 d!1399618)))

(assert (=> bs!870470 (= (= lt!1708998 lt!1708034) (= lambda!174941 lambda!174847))))

(assert (=> bs!870462 (= (= lt!1708998 lt!1707600) (= lambda!174941 lambda!174753))))

(declare-fun bs!870471 () Bool)

(assert (= bs!870471 (and d!1400068 d!1399690)))

(assert (=> bs!870471 (= (= lt!1708998 lt!1708558) (= lambda!174941 lambda!174867))))

(declare-fun bs!870472 () Bool)

(assert (= bs!870472 (and d!1400068 d!1399580)))

(assert (=> bs!870472 (not (= lambda!174941 lambda!174838))))

(declare-fun bs!870473 () Bool)

(assert (= bs!870473 (and d!1400068 d!1399970)))

(assert (=> bs!870473 (= (= lt!1708998 lt!1708902) (= lambda!174941 lambda!174927))))

(declare-fun bs!870474 () Bool)

(assert (= bs!870474 (and d!1400068 b!4533657)))

(assert (=> bs!870474 (= (= lt!1708998 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174941 lambda!174922))))

(declare-fun bs!870475 () Bool)

(assert (= bs!870475 (and d!1400068 b!4533314)))

(assert (=> bs!870475 (= (= lt!1708998 lt!1708605) (= lambda!174941 lambda!174871))))

(assert (=> bs!870452 (= (= lt!1708998 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174941 lambda!174877))))

(assert (=> bs!870475 (= (= lt!1708998 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174941 lambda!174870))))

(declare-fun bs!870476 () Bool)

(assert (= bs!870476 (and d!1400068 d!1399090)))

(assert (=> bs!870476 (not (= lambda!174941 lambda!174643))))

(declare-fun bs!870477 () Bool)

(assert (= bs!870477 (and d!1400068 b!4533349)))

(assert (=> bs!870477 (= (= lt!1708998 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174941 lambda!174875))))

(assert (=> bs!870453 (= (= lt!1708998 lt!1708554) (= lambda!174941 lambda!174866))))

(declare-fun bs!870478 () Bool)

(assert (= bs!870478 (and d!1400068 b!4533315)))

(assert (=> bs!870478 (= (= lt!1708998 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174941 lambda!174868))))

(assert (=> bs!870461 (= (= lt!1708998 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174941 lambda!174850))))

(declare-fun bs!870479 () Bool)

(assert (= bs!870479 (and d!1400068 d!1399182)))

(assert (=> bs!870479 (= (= lt!1708998 lt!1707976) (= lambda!174941 lambda!174755))))

(assert (=> bs!870474 (= (= lt!1708998 lt!1708898) (= lambda!174941 lambda!174923))))

(declare-fun bs!870480 () Bool)

(assert (= bs!870480 (and d!1400068 d!1399622)))

(assert (=> bs!870480 (= (= lt!1708998 lt!1708472) (= lambda!174941 lambda!174853))))

(assert (=> bs!870456 (= (= lt!1708998 lt!1707628) (= lambda!174941 lambda!174757))))

(assert (=> bs!870459 (= (= lt!1708998 lt!1708994) (= lambda!174941 lambda!174940))))

(declare-fun bs!870481 () Bool)

(assert (= bs!870481 (and d!1400068 b!4533468)))

(assert (=> bs!870481 (= (= lt!1708998 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174941 lambda!174903))))

(assert (=> bs!870481 (= (= lt!1708998 lt!1708733) (= lambda!174941 lambda!174904))))

(declare-fun bs!870482 () Bool)

(assert (= bs!870482 (and d!1400068 b!4532428)))

(assert (=> bs!870482 (= (= lt!1708998 lt!1707600) (= lambda!174941 lambda!174752))))

(declare-fun bs!870483 () Bool)

(assert (= bs!870483 (and d!1400068 b!4533469)))

(assert (=> bs!870483 (= (= lt!1708998 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174941 lambda!174901))))

(declare-fun bs!870484 () Bool)

(assert (= bs!870484 (and d!1400068 b!4533790)))

(assert (=> bs!870484 (= (= lt!1708998 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174941 lambda!174938))))

(declare-fun bs!870485 () Bool)

(assert (= bs!870485 (and d!1400068 b!4532450)))

(assert (=> bs!870485 (= (= lt!1708998 lt!1707628) (= lambda!174941 lambda!174756))))

(declare-fun bs!870486 () Bool)

(assert (= bs!870486 (and d!1400068 d!1400052)))

(assert (=> bs!870486 (= (= lt!1708998 lt!1708008) (= lambda!174941 lambda!174937))))

(assert (=> bs!870466 (= (= lt!1708998 lt!1708034) (= lambda!174941 lambda!174766))))

(declare-fun bs!870487 () Bool)

(assert (= bs!870487 (and d!1400068 d!1400020)))

(assert (=> bs!870487 (= (= lt!1708998 lt!1707612) (= lambda!174941 lambda!174936))))

(assert (=> d!1400068 true))

(declare-fun e!2825063 () Bool)

(declare-fun b!4533788 () Bool)

(assert (=> b!4533788 (= e!2825063 (forall!10317 (toList!4376 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) lambda!174940))))

(declare-fun bm!316094 () Bool)

(declare-fun call!316099 () Unit!97092)

(assert (=> bm!316094 (= call!316099 (lemmaContainsAllItsOwnKeys!356 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun e!2825065 () Bool)

(assert (=> d!1400068 e!2825065))

(declare-fun res!1888517 () Bool)

(assert (=> d!1400068 (=> (not res!1888517) (not e!2825065))))

(assert (=> d!1400068 (= res!1888517 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174941))))

(declare-fun e!2825064 () ListMap!3637)

(assert (=> d!1400068 (= lt!1708998 e!2825064)))

(declare-fun c!774256 () Bool)

(assert (=> d!1400068 (= c!774256 ((_ is Nil!50712) (t!357798 (_2!28880 lt!1707605))))))

(assert (=> d!1400068 (noDuplicateKeys!1184 (t!357798 (_2!28880 lt!1707605)))))

(assert (=> d!1400068 (= (addToMapMapFromBucket!711 (t!357798 (_2!28880 lt!1707605)) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) lt!1708998)))

(assert (=> b!4533789 (= e!2825064 lt!1708994)))

(declare-fun lt!1708990 () ListMap!3637)

(assert (=> b!4533789 (= lt!1708990 (+!1582 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(assert (=> b!4533789 (= lt!1708994 (addToMapMapFromBucket!711 (t!357798 (t!357798 (_2!28880 lt!1707605))) (+!1582 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) (h!56583 (t!357798 (_2!28880 lt!1707605))))))))

(declare-fun lt!1709001 () Unit!97092)

(assert (=> b!4533789 (= lt!1709001 call!316099)))

(declare-fun call!316101 () Bool)

(assert (=> b!4533789 call!316101))

(declare-fun lt!1708999 () Unit!97092)

(assert (=> b!4533789 (= lt!1708999 lt!1709001)))

(assert (=> b!4533789 (forall!10317 (toList!4376 lt!1708990) lambda!174940)))

(declare-fun lt!1709006 () Unit!97092)

(declare-fun Unit!97392 () Unit!97092)

(assert (=> b!4533789 (= lt!1709006 Unit!97392)))

(assert (=> b!4533789 (forall!10317 (t!357798 (t!357798 (_2!28880 lt!1707605))) lambda!174940)))

(declare-fun lt!1708992 () Unit!97092)

(declare-fun Unit!97394 () Unit!97092)

(assert (=> b!4533789 (= lt!1708992 Unit!97394)))

(declare-fun lt!1708995 () Unit!97092)

(declare-fun Unit!97395 () Unit!97092)

(assert (=> b!4533789 (= lt!1708995 Unit!97395)))

(declare-fun lt!1708987 () Unit!97092)

(assert (=> b!4533789 (= lt!1708987 (forallContained!2573 (toList!4376 lt!1708990) lambda!174940 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(assert (=> b!4533789 (contains!13479 lt!1708990 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708997 () Unit!97092)

(declare-fun Unit!97397 () Unit!97092)

(assert (=> b!4533789 (= lt!1708997 Unit!97397)))

(assert (=> b!4533789 (contains!13479 lt!1708994 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun lt!1708993 () Unit!97092)

(declare-fun Unit!97398 () Unit!97092)

(assert (=> b!4533789 (= lt!1708993 Unit!97398)))

(declare-fun call!316100 () Bool)

(assert (=> b!4533789 call!316100))

(declare-fun lt!1708989 () Unit!97092)

(declare-fun Unit!97399 () Unit!97092)

(assert (=> b!4533789 (= lt!1708989 Unit!97399)))

(assert (=> b!4533789 (forall!10317 (toList!4376 lt!1708990) lambda!174940)))

(declare-fun lt!1708986 () Unit!97092)

(declare-fun Unit!97400 () Unit!97092)

(assert (=> b!4533789 (= lt!1708986 Unit!97400)))

(declare-fun lt!1709003 () Unit!97092)

(declare-fun Unit!97401 () Unit!97092)

(assert (=> b!4533789 (= lt!1709003 Unit!97401)))

(declare-fun lt!1708988 () Unit!97092)

(assert (=> b!4533789 (= lt!1708988 (addForallContainsKeyThenBeforeAdding!356 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1708994 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))) (_2!28879 (h!56583 (t!357798 (_2!28880 lt!1707605))))))))

(assert (=> b!4533789 (forall!10317 (toList!4376 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) lambda!174940)))

(declare-fun lt!1709002 () Unit!97092)

(assert (=> b!4533789 (= lt!1709002 lt!1708988)))

(assert (=> b!4533789 (forall!10317 (toList!4376 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) lambda!174940)))

(declare-fun lt!1709004 () Unit!97092)

(declare-fun Unit!97403 () Unit!97092)

(assert (=> b!4533789 (= lt!1709004 Unit!97403)))

(declare-fun res!1888519 () Bool)

(assert (=> b!4533789 (= res!1888519 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174940))))

(assert (=> b!4533789 (=> (not res!1888519) (not e!2825063))))

(assert (=> b!4533789 e!2825063))

(declare-fun lt!1708996 () Unit!97092)

(declare-fun Unit!97404 () Unit!97092)

(assert (=> b!4533789 (= lt!1708996 Unit!97404)))

(assert (=> b!4533790 (= e!2825064 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1708991 () Unit!97092)

(assert (=> b!4533790 (= lt!1708991 call!316099)))

(assert (=> b!4533790 call!316100))

(declare-fun lt!1709000 () Unit!97092)

(assert (=> b!4533790 (= lt!1709000 lt!1708991)))

(assert (=> b!4533790 call!316101))

(declare-fun lt!1709005 () Unit!97092)

(declare-fun Unit!97405 () Unit!97092)

(assert (=> b!4533790 (= lt!1709005 Unit!97405)))

(declare-fun bm!316095 () Bool)

(assert (=> bm!316095 (= call!316101 (forall!10317 (toList!4376 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (ite c!774256 lambda!174938 lambda!174939)))))

(declare-fun b!4533791 () Bool)

(assert (=> b!4533791 (= e!2825065 (invariantList!1035 (toList!4376 lt!1708998)))))

(declare-fun b!4533792 () Bool)

(declare-fun res!1888518 () Bool)

(assert (=> b!4533792 (=> (not res!1888518) (not e!2825065))))

(assert (=> b!4533792 (= res!1888518 (forall!10317 (toList!4376 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) lambda!174941))))

(declare-fun bm!316096 () Bool)

(assert (=> bm!316096 (= call!316100 (forall!10317 (ite c!774256 (toList!4376 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (t!357798 (_2!28880 lt!1707605))) (ite c!774256 lambda!174938 lambda!174940)))))

(assert (= (and d!1400068 c!774256) b!4533790))

(assert (= (and d!1400068 (not c!774256)) b!4533789))

(assert (= (and b!4533789 res!1888519) b!4533788))

(assert (= (or b!4533790 b!4533789) bm!316096))

(assert (= (or b!4533790 b!4533789) bm!316095))

(assert (= (or b!4533790 b!4533789) bm!316094))

(assert (= (and d!1400068 res!1888517) b!4533792))

(assert (= (and b!4533792 res!1888518) b!4533791))

(declare-fun m!5294199 () Bool)

(assert (=> b!4533789 m!5294199))

(assert (=> b!4533789 m!5291403))

(declare-fun m!5294201 () Bool)

(assert (=> b!4533789 m!5294201))

(declare-fun m!5294203 () Bool)

(assert (=> b!4533789 m!5294203))

(declare-fun m!5294205 () Bool)

(assert (=> b!4533789 m!5294205))

(assert (=> b!4533789 m!5291403))

(declare-fun m!5294207 () Bool)

(assert (=> b!4533789 m!5294207))

(declare-fun m!5294209 () Bool)

(assert (=> b!4533789 m!5294209))

(declare-fun m!5294211 () Bool)

(assert (=> b!4533789 m!5294211))

(declare-fun m!5294213 () Bool)

(assert (=> b!4533789 m!5294213))

(assert (=> b!4533789 m!5294203))

(assert (=> b!4533789 m!5294201))

(declare-fun m!5294215 () Bool)

(assert (=> b!4533789 m!5294215))

(declare-fun m!5294217 () Bool)

(assert (=> b!4533789 m!5294217))

(assert (=> b!4533789 m!5294205))

(declare-fun m!5294219 () Bool)

(assert (=> b!4533792 m!5294219))

(declare-fun m!5294221 () Bool)

(assert (=> bm!316095 m!5294221))

(assert (=> b!4533788 m!5294203))

(declare-fun m!5294223 () Bool)

(assert (=> b!4533791 m!5294223))

(assert (=> bm!316094 m!5291403))

(declare-fun m!5294225 () Bool)

(assert (=> bm!316094 m!5294225))

(declare-fun m!5294227 () Bool)

(assert (=> d!1400068 m!5294227))

(assert (=> d!1400068 m!5291663))

(declare-fun m!5294229 () Bool)

(assert (=> bm!316096 m!5294229))

(assert (=> b!4532449 d!1400068))

(declare-fun d!1400122 () Bool)

(declare-fun res!1888520 () Bool)

(declare-fun e!2825066 () Bool)

(assert (=> d!1400122 (=> res!1888520 e!2825066)))

(assert (=> d!1400122 (= res!1888520 ((_ is Nil!50712) (toList!4376 lt!1707628)))))

(assert (=> d!1400122 (= (forall!10317 (toList!4376 lt!1707628) lambda!174758) e!2825066)))

(declare-fun b!4533793 () Bool)

(declare-fun e!2825067 () Bool)

(assert (=> b!4533793 (= e!2825066 e!2825067)))

(declare-fun res!1888521 () Bool)

(assert (=> b!4533793 (=> (not res!1888521) (not e!2825067))))

(assert (=> b!4533793 (= res!1888521 (dynLambda!21197 lambda!174758 (h!56583 (toList!4376 lt!1707628))))))

(declare-fun b!4533794 () Bool)

(assert (=> b!4533794 (= e!2825067 (forall!10317 (t!357798 (toList!4376 lt!1707628)) lambda!174758))))

(assert (= (and d!1400122 (not res!1888520)) b!4533793))

(assert (= (and b!4533793 res!1888521) b!4533794))

(declare-fun b_lambda!157025 () Bool)

(assert (=> (not b_lambda!157025) (not b!4533793)))

(declare-fun m!5294231 () Bool)

(assert (=> b!4533793 m!5294231))

(declare-fun m!5294233 () Bool)

(assert (=> b!4533794 m!5294233))

(assert (=> b!4532449 d!1400122))

(declare-fun d!1400124 () Bool)

(declare-fun res!1888522 () Bool)

(declare-fun e!2825068 () Bool)

(assert (=> d!1400124 (=> res!1888522 e!2825068)))

(assert (=> d!1400124 (= res!1888522 ((_ is Nil!50712) (t!357798 (_2!28880 lt!1707605))))))

(assert (=> d!1400124 (= (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174758) e!2825068)))

(declare-fun b!4533795 () Bool)

(declare-fun e!2825069 () Bool)

(assert (=> b!4533795 (= e!2825068 e!2825069)))

(declare-fun res!1888523 () Bool)

(assert (=> b!4533795 (=> (not res!1888523) (not e!2825069))))

(assert (=> b!4533795 (= res!1888523 (dynLambda!21197 lambda!174758 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun b!4533796 () Bool)

(assert (=> b!4533796 (= e!2825069 (forall!10317 (t!357798 (t!357798 (_2!28880 lt!1707605))) lambda!174758))))

(assert (= (and d!1400124 (not res!1888522)) b!4533795))

(assert (= (and b!4533795 res!1888523) b!4533796))

(declare-fun b_lambda!157027 () Bool)

(assert (=> (not b_lambda!157027) (not b!4533795)))

(declare-fun m!5294235 () Bool)

(assert (=> b!4533795 m!5294235))

(declare-fun m!5294237 () Bool)

(assert (=> b!4533796 m!5294237))

(assert (=> b!4532449 d!1400124))

(declare-fun d!1400126 () Bool)

(declare-fun res!1888524 () Bool)

(declare-fun e!2825070 () Bool)

(assert (=> d!1400126 (=> res!1888524 e!2825070)))

(assert (=> d!1400126 (= res!1888524 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1400126 (= (forall!10317 (_2!28880 lt!1707605) lambda!174758) e!2825070)))

(declare-fun b!4533797 () Bool)

(declare-fun e!2825071 () Bool)

(assert (=> b!4533797 (= e!2825070 e!2825071)))

(declare-fun res!1888525 () Bool)

(assert (=> b!4533797 (=> (not res!1888525) (not e!2825071))))

(assert (=> b!4533797 (= res!1888525 (dynLambda!21197 lambda!174758 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun b!4533798 () Bool)

(assert (=> b!4533798 (= e!2825071 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174758))))

(assert (= (and d!1400126 (not res!1888524)) b!4533797))

(assert (= (and b!4533797 res!1888525) b!4533798))

(declare-fun b_lambda!157029 () Bool)

(assert (=> (not b_lambda!157029) (not b!4533797)))

(assert (=> b!4533797 m!5294113))

(assert (=> b!4533798 m!5291415))

(assert (=> b!4532449 d!1400126))

(declare-fun d!1400128 () Bool)

(declare-fun e!2825072 () Bool)

(assert (=> d!1400128 e!2825072))

(declare-fun res!1888527 () Bool)

(assert (=> d!1400128 (=> (not res!1888527) (not e!2825072))))

(declare-fun lt!1709007 () ListMap!3637)

(assert (=> d!1400128 (= res!1888527 (contains!13479 lt!1709007 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1709008 () List!50836)

(assert (=> d!1400128 (= lt!1709007 (ListMap!3638 lt!1709008))))

(declare-fun lt!1709010 () Unit!97092)

(declare-fun lt!1709009 () Unit!97092)

(assert (=> d!1400128 (= lt!1709010 lt!1709009)))

(assert (=> d!1400128 (= (getValueByKey!1128 lt!1709008 (_1!28879 (h!56583 (_2!28880 lt!1707605)))) (Some!11169 (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1400128 (= lt!1709009 (lemmaContainsTupThenGetReturnValue!708 lt!1709008 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1400128 (= lt!1709008 (insertNoDuplicatedKeys!290 (toList!4376 lt!1707628) (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1400128 (= (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605))) lt!1709007)))

(declare-fun b!4533799 () Bool)

(declare-fun res!1888526 () Bool)

(assert (=> b!4533799 (=> (not res!1888526) (not e!2825072))))

(assert (=> b!4533799 (= res!1888526 (= (getValueByKey!1128 (toList!4376 lt!1709007) (_1!28879 (h!56583 (_2!28880 lt!1707605)))) (Some!11169 (_2!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533800 () Bool)

(assert (=> b!4533800 (= e!2825072 (contains!13485 (toList!4376 lt!1709007) (h!56583 (_2!28880 lt!1707605))))))

(assert (= (and d!1400128 res!1888527) b!4533799))

(assert (= (and b!4533799 res!1888526) b!4533800))

(declare-fun m!5294239 () Bool)

(assert (=> d!1400128 m!5294239))

(declare-fun m!5294241 () Bool)

(assert (=> d!1400128 m!5294241))

(declare-fun m!5294243 () Bool)

(assert (=> d!1400128 m!5294243))

(declare-fun m!5294245 () Bool)

(assert (=> d!1400128 m!5294245))

(declare-fun m!5294247 () Bool)

(assert (=> b!4533799 m!5294247))

(declare-fun m!5294249 () Bool)

(assert (=> b!4533800 m!5294249))

(assert (=> b!4532449 d!1400128))

(declare-fun b!4533801 () Bool)

(declare-fun e!2825073 () Bool)

(declare-fun e!2825075 () Bool)

(assert (=> b!4533801 (= e!2825073 e!2825075)))

(declare-fun res!1888529 () Bool)

(assert (=> b!4533801 (=> (not res!1888529) (not e!2825075))))

(assert (=> b!4533801 (= res!1888529 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708004) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533802 () Bool)

(declare-fun e!2825078 () List!50839)

(assert (=> b!4533802 (= e!2825078 (getKeysList!483 (toList!4376 lt!1708004)))))

(declare-fun b!4533803 () Bool)

(assert (=> b!4533803 (= e!2825078 (keys!17636 lt!1708004))))

(declare-fun b!4533804 () Bool)

(assert (=> b!4533804 (= e!2825075 (contains!13483 (keys!17636 lt!1708004) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun b!4533805 () Bool)

(declare-fun e!2825077 () Bool)

(assert (=> b!4533805 (= e!2825077 (not (contains!13483 (keys!17636 lt!1708004) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(declare-fun b!4533806 () Bool)

(declare-fun e!2825076 () Unit!97092)

(declare-fun lt!1709015 () Unit!97092)

(assert (=> b!4533806 (= e!2825076 lt!1709015)))

(declare-fun lt!1709016 () Unit!97092)

(assert (=> b!4533806 (= lt!1709016 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1708004) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4533806 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1708004) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1709013 () Unit!97092)

(assert (=> b!4533806 (= lt!1709013 lt!1709016)))

(assert (=> b!4533806 (= lt!1709015 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1708004) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun call!316102 () Bool)

(assert (=> b!4533806 call!316102))

(declare-fun b!4533807 () Bool)

(declare-fun e!2825074 () Unit!97092)

(assert (=> b!4533807 (= e!2825076 e!2825074)))

(declare-fun c!774258 () Bool)

(assert (=> b!4533807 (= c!774258 call!316102)))

(declare-fun b!4533808 () Bool)

(assert (=> b!4533808 false))

(declare-fun lt!1709011 () Unit!97092)

(declare-fun lt!1709014 () Unit!97092)

(assert (=> b!4533808 (= lt!1709011 lt!1709014)))

(assert (=> b!4533808 (containsKey!1843 (toList!4376 lt!1708004) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4533808 (= lt!1709014 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1708004) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun Unit!97406 () Unit!97092)

(assert (=> b!4533808 (= e!2825074 Unit!97406)))

(declare-fun d!1400130 () Bool)

(assert (=> d!1400130 e!2825073))

(declare-fun res!1888530 () Bool)

(assert (=> d!1400130 (=> res!1888530 e!2825073)))

(assert (=> d!1400130 (= res!1888530 e!2825077)))

(declare-fun res!1888528 () Bool)

(assert (=> d!1400130 (=> (not res!1888528) (not e!2825077))))

(declare-fun lt!1709018 () Bool)

(assert (=> d!1400130 (= res!1888528 (not lt!1709018))))

(declare-fun lt!1709017 () Bool)

(assert (=> d!1400130 (= lt!1709018 lt!1709017)))

(declare-fun lt!1709012 () Unit!97092)

(assert (=> d!1400130 (= lt!1709012 e!2825076)))

(declare-fun c!774259 () Bool)

(assert (=> d!1400130 (= c!774259 lt!1709017)))

(assert (=> d!1400130 (= lt!1709017 (containsKey!1843 (toList!4376 lt!1708004) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> d!1400130 (= (contains!13479 lt!1708004 (_1!28879 (h!56583 (_2!28880 lt!1707605)))) lt!1709018)))

(declare-fun b!4533809 () Bool)

(declare-fun Unit!97407 () Unit!97092)

(assert (=> b!4533809 (= e!2825074 Unit!97407)))

(declare-fun bm!316097 () Bool)

(assert (=> bm!316097 (= call!316102 (contains!13483 e!2825078 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun c!774257 () Bool)

(assert (=> bm!316097 (= c!774257 c!774259)))

(assert (= (and d!1400130 c!774259) b!4533806))

(assert (= (and d!1400130 (not c!774259)) b!4533807))

(assert (= (and b!4533807 c!774258) b!4533808))

(assert (= (and b!4533807 (not c!774258)) b!4533809))

(assert (= (or b!4533806 b!4533807) bm!316097))

(assert (= (and bm!316097 c!774257) b!4533802))

(assert (= (and bm!316097 (not c!774257)) b!4533803))

(assert (= (and d!1400130 res!1888528) b!4533805))

(assert (= (and d!1400130 (not res!1888530)) b!4533801))

(assert (= (and b!4533801 res!1888529) b!4533804))

(declare-fun m!5294251 () Bool)

(assert (=> b!4533806 m!5294251))

(declare-fun m!5294253 () Bool)

(assert (=> b!4533806 m!5294253))

(assert (=> b!4533806 m!5294253))

(declare-fun m!5294255 () Bool)

(assert (=> b!4533806 m!5294255))

(declare-fun m!5294257 () Bool)

(assert (=> b!4533806 m!5294257))

(declare-fun m!5294259 () Bool)

(assert (=> b!4533804 m!5294259))

(assert (=> b!4533804 m!5294259))

(declare-fun m!5294261 () Bool)

(assert (=> b!4533804 m!5294261))

(assert (=> b!4533803 m!5294259))

(declare-fun m!5294263 () Bool)

(assert (=> bm!316097 m!5294263))

(assert (=> b!4533805 m!5294259))

(assert (=> b!4533805 m!5294259))

(assert (=> b!4533805 m!5294261))

(declare-fun m!5294265 () Bool)

(assert (=> b!4533808 m!5294265))

(declare-fun m!5294267 () Bool)

(assert (=> b!4533808 m!5294267))

(assert (=> b!4533801 m!5294253))

(assert (=> b!4533801 m!5294253))

(assert (=> b!4533801 m!5294255))

(declare-fun m!5294269 () Bool)

(assert (=> b!4533802 m!5294269))

(assert (=> d!1400130 m!5294265))

(assert (=> b!4532449 d!1400130))

(declare-fun d!1400132 () Bool)

(declare-fun lt!1709019 () Bool)

(assert (=> d!1400132 (= lt!1709019 (select (content!8413 (toList!4375 lt!1708092)) lt!1707610))))

(declare-fun e!2825079 () Bool)

(assert (=> d!1400132 (= lt!1709019 e!2825079)))

(declare-fun res!1888532 () Bool)

(assert (=> d!1400132 (=> (not res!1888532) (not e!2825079))))

(assert (=> d!1400132 (= res!1888532 ((_ is Cons!50713) (toList!4375 lt!1708092)))))

(assert (=> d!1400132 (= (contains!13480 (toList!4375 lt!1708092) lt!1707610) lt!1709019)))

(declare-fun b!4533810 () Bool)

(declare-fun e!2825080 () Bool)

(assert (=> b!4533810 (= e!2825079 e!2825080)))

(declare-fun res!1888531 () Bool)

(assert (=> b!4533810 (=> res!1888531 e!2825080)))

(assert (=> b!4533810 (= res!1888531 (= (h!56584 (toList!4375 lt!1708092)) lt!1707610))))

(declare-fun b!4533811 () Bool)

(assert (=> b!4533811 (= e!2825080 (contains!13480 (t!357799 (toList!4375 lt!1708092)) lt!1707610))))

(assert (= (and d!1400132 res!1888532) b!4533810))

(assert (= (and b!4533810 (not res!1888531)) b!4533811))

(declare-fun m!5294271 () Bool)

(assert (=> d!1400132 m!5294271))

(declare-fun m!5294273 () Bool)

(assert (=> d!1400132 m!5294273))

(declare-fun m!5294275 () Bool)

(assert (=> b!4533811 m!5294275))

(assert (=> b!4532529 d!1400132))

(declare-fun d!1400134 () Bool)

(declare-fun res!1888533 () Bool)

(declare-fun e!2825081 () Bool)

(assert (=> d!1400134 (=> res!1888533 e!2825081)))

(assert (=> d!1400134 (= res!1888533 (and ((_ is Cons!50712) (toList!4376 lt!1707611)) (= (_1!28879 (h!56583 (toList!4376 lt!1707611))) key!3287)))))

(assert (=> d!1400134 (= (containsKey!1843 (toList!4376 lt!1707611) key!3287) e!2825081)))

(declare-fun b!4533812 () Bool)

(declare-fun e!2825082 () Bool)

(assert (=> b!4533812 (= e!2825081 e!2825082)))

(declare-fun res!1888534 () Bool)

(assert (=> b!4533812 (=> (not res!1888534) (not e!2825082))))

(assert (=> b!4533812 (= res!1888534 ((_ is Cons!50712) (toList!4376 lt!1707611)))))

(declare-fun b!4533813 () Bool)

(assert (=> b!4533813 (= e!2825082 (containsKey!1843 (t!357798 (toList!4376 lt!1707611)) key!3287))))

(assert (= (and d!1400134 (not res!1888533)) b!4533812))

(assert (= (and b!4533812 res!1888534) b!4533813))

(declare-fun m!5294277 () Bool)

(assert (=> b!4533813 m!5294277))

(assert (=> d!1399096 d!1400134))

(declare-fun d!1400136 () Bool)

(assert (=> d!1400136 (= (isDefined!8454 lt!1708101) (not (isEmpty!28723 lt!1708101)))))

(declare-fun bs!870488 () Bool)

(assert (= bs!870488 d!1400136))

(assert (=> bs!870488 m!5291637))

(assert (=> b!4532550 d!1400136))

(assert (=> b!4532517 d!1399566))

(declare-fun d!1400138 () Bool)

(assert (=> d!1400138 (= (invariantList!1035 (toList!4376 lt!1708038)) (noDuplicatedKeys!273 (toList!4376 lt!1708038)))))

(declare-fun bs!870489 () Bool)

(assert (= bs!870489 d!1400138))

(declare-fun m!5294279 () Bool)

(assert (=> bs!870489 m!5294279))

(assert (=> b!4532471 d!1400138))

(assert (=> b!4532484 d!1399574))

(assert (=> d!1399256 d!1399326))

(declare-fun d!1400140 () Bool)

(assert (=> d!1400140 (= (eq!641 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707628) (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707600)) (= (content!8411 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707628))) (content!8411 (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707600)))))))

(declare-fun bs!870490 () Bool)

(assert (= bs!870490 d!1400140))

(declare-fun m!5294281 () Bool)

(assert (=> bs!870490 m!5294281))

(declare-fun m!5294283 () Bool)

(assert (=> bs!870490 m!5294283))

(assert (=> d!1399256 d!1400140))

(assert (=> d!1399256 d!1399264))

(declare-fun d!1400142 () Bool)

(assert (=> d!1400142 (eq!641 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707628) (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707600))))

(assert (=> d!1400142 true))

(declare-fun _$16!251 () Unit!97092)

(assert (=> d!1400142 (= (choose!29762 lt!1707628 lt!1707600 (_2!28880 lt!1707605)) _$16!251)))

(declare-fun bs!870491 () Bool)

(assert (= bs!870491 d!1400142))

(assert (=> bs!870491 m!5290697))

(assert (=> bs!870491 m!5290763))

(assert (=> bs!870491 m!5290697))

(assert (=> bs!870491 m!5290763))

(assert (=> bs!870491 m!5291387))

(assert (=> d!1399256 d!1400142))

(assert (=> d!1399256 d!1399182))

(assert (=> d!1399274 d!1399508))

(declare-fun d!1400144 () Bool)

(declare-fun c!774260 () Bool)

(assert (=> d!1400144 (= c!774260 ((_ is Nil!50712) (toList!4376 lt!1707623)))))

(declare-fun e!2825083 () (InoxSet tuple2!51170))

(assert (=> d!1400144 (= (content!8411 (toList!4376 lt!1707623)) e!2825083)))

(declare-fun b!4533814 () Bool)

(assert (=> b!4533814 (= e!2825083 ((as const (Array tuple2!51170 Bool)) false))))

(declare-fun b!4533815 () Bool)

(assert (=> b!4533815 (= e!2825083 ((_ map or) (store ((as const (Array tuple2!51170 Bool)) false) (h!56583 (toList!4376 lt!1707623)) true) (content!8411 (t!357798 (toList!4376 lt!1707623)))))))

(assert (= (and d!1400144 c!774260) b!4533814))

(assert (= (and d!1400144 (not c!774260)) b!4533815))

(declare-fun m!5294285 () Bool)

(assert (=> b!4533815 m!5294285))

(declare-fun m!5294287 () Bool)

(assert (=> b!4533815 m!5294287))

(assert (=> d!1399274 d!1400144))

(declare-fun d!1400146 () Bool)

(declare-fun e!2825086 () Bool)

(assert (=> d!1400146 e!2825086))

(declare-fun res!1888537 () Bool)

(assert (=> d!1400146 (=> res!1888537 e!2825086)))

(declare-fun e!2825085 () Bool)

(assert (=> d!1400146 (= res!1888537 e!2825085)))

(declare-fun res!1888536 () Bool)

(assert (=> d!1400146 (=> (not res!1888536) (not e!2825085))))

(declare-fun lt!1709020 () Option!11167)

(assert (=> d!1400146 (= res!1888536 (isEmpty!28723 lt!1709020))))

(declare-fun e!2825088 () Option!11167)

(assert (=> d!1400146 (= lt!1709020 e!2825088)))

(declare-fun c!774262 () Bool)

(assert (=> d!1400146 (= c!774262 (and ((_ is Cons!50712) (t!357798 (_2!28880 lt!1707605))) (= (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))) key!3287)))))

(assert (=> d!1400146 (noDuplicateKeys!1184 (t!357798 (_2!28880 lt!1707605)))))

(assert (=> d!1400146 (= (getPair!200 (t!357798 (_2!28880 lt!1707605)) key!3287) lt!1709020)))

(declare-fun b!4533816 () Bool)

(declare-fun e!2825084 () Bool)

(assert (=> b!4533816 (= e!2825086 e!2825084)))

(declare-fun res!1888538 () Bool)

(assert (=> b!4533816 (=> (not res!1888538) (not e!2825084))))

(assert (=> b!4533816 (= res!1888538 (isDefined!8454 lt!1709020))))

(declare-fun b!4533817 () Bool)

(declare-fun res!1888535 () Bool)

(assert (=> b!4533817 (=> (not res!1888535) (not e!2825084))))

(assert (=> b!4533817 (= res!1888535 (= (_1!28879 (get!16648 lt!1709020)) key!3287))))

(declare-fun b!4533818 () Bool)

(assert (=> b!4533818 (= e!2825085 (not (containsKey!1840 (t!357798 (_2!28880 lt!1707605)) key!3287)))))

(declare-fun b!4533819 () Bool)

(assert (=> b!4533819 (= e!2825084 (contains!13485 (t!357798 (_2!28880 lt!1707605)) (get!16648 lt!1709020)))))

(declare-fun b!4533820 () Bool)

(assert (=> b!4533820 (= e!2825088 (Some!11166 (h!56583 (t!357798 (_2!28880 lt!1707605)))))))

(declare-fun b!4533821 () Bool)

(declare-fun e!2825087 () Option!11167)

(assert (=> b!4533821 (= e!2825087 None!11166)))

(declare-fun b!4533822 () Bool)

(assert (=> b!4533822 (= e!2825088 e!2825087)))

(declare-fun c!774261 () Bool)

(assert (=> b!4533822 (= c!774261 ((_ is Cons!50712) (t!357798 (_2!28880 lt!1707605))))))

(declare-fun b!4533823 () Bool)

(assert (=> b!4533823 (= e!2825087 (getPair!200 (t!357798 (t!357798 (_2!28880 lt!1707605))) key!3287))))

(assert (= (and d!1400146 c!774262) b!4533820))

(assert (= (and d!1400146 (not c!774262)) b!4533822))

(assert (= (and b!4533822 c!774261) b!4533823))

(assert (= (and b!4533822 (not c!774261)) b!4533821))

(assert (= (and d!1400146 res!1888536) b!4533818))

(assert (= (and d!1400146 (not res!1888537)) b!4533816))

(assert (= (and b!4533816 res!1888538) b!4533817))

(assert (= (and b!4533817 res!1888535) b!4533819))

(assert (=> b!4533818 m!5290777))

(declare-fun m!5294289 () Bool)

(assert (=> b!4533816 m!5294289))

(declare-fun m!5294291 () Bool)

(assert (=> d!1400146 m!5294291))

(assert (=> d!1400146 m!5291663))

(declare-fun m!5294293 () Bool)

(assert (=> b!4533819 m!5294293))

(assert (=> b!4533819 m!5294293))

(declare-fun m!5294295 () Bool)

(assert (=> b!4533819 m!5294295))

(assert (=> b!4533817 m!5294293))

(declare-fun m!5294297 () Bool)

(assert (=> b!4533823 m!5294297))

(assert (=> b!4532557 d!1400146))

(declare-fun d!1400148 () Bool)

(declare-fun lt!1709021 () Bool)

(assert (=> d!1400148 (= lt!1709021 (select (content!8412 e!2824251) key!3287))))

(declare-fun e!2825089 () Bool)

(assert (=> d!1400148 (= lt!1709021 e!2825089)))

(declare-fun res!1888540 () Bool)

(assert (=> d!1400148 (=> (not res!1888540) (not e!2825089))))

(assert (=> d!1400148 (= res!1888540 ((_ is Cons!50715) e!2824251))))

(assert (=> d!1400148 (= (contains!13483 e!2824251 key!3287) lt!1709021)))

(declare-fun b!4533824 () Bool)

(declare-fun e!2825090 () Bool)

(assert (=> b!4533824 (= e!2825089 e!2825090)))

(declare-fun res!1888539 () Bool)

(assert (=> b!4533824 (=> res!1888539 e!2825090)))

(assert (=> b!4533824 (= res!1888539 (= (h!56588 e!2824251) key!3287))))

(declare-fun b!4533825 () Bool)

(assert (=> b!4533825 (= e!2825090 (contains!13483 (t!357801 e!2824251) key!3287))))

(assert (= (and d!1400148 res!1888540) b!4533824))

(assert (= (and b!4533824 (not res!1888539)) b!4533825))

(declare-fun m!5294299 () Bool)

(assert (=> d!1400148 m!5294299))

(declare-fun m!5294301 () Bool)

(assert (=> d!1400148 m!5294301))

(declare-fun m!5294303 () Bool)

(assert (=> b!4533825 m!5294303))

(assert (=> bm!315952 d!1400148))

(declare-fun d!1400150 () Bool)

(assert (=> d!1400150 (= (invariantList!1035 (toList!4376 lt!1708012)) (noDuplicatedKeys!273 (toList!4376 lt!1708012)))))

(declare-fun bs!870492 () Bool)

(assert (= bs!870492 d!1400150))

(declare-fun m!5294305 () Bool)

(assert (=> bs!870492 m!5294305))

(assert (=> b!4532451 d!1400150))

(declare-fun d!1400152 () Bool)

(declare-fun res!1888541 () Bool)

(declare-fun e!2825091 () Bool)

(assert (=> d!1400152 (=> res!1888541 e!2825091)))

(assert (=> d!1400152 (= res!1888541 (and ((_ is Cons!50712) (t!357798 (_2!28880 lt!1707605))) (= (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))) (_1!28879 (h!56583 (_2!28880 lt!1707605))))))))

(assert (=> d!1400152 (= (containsKey!1840 (t!357798 (_2!28880 lt!1707605)) (_1!28879 (h!56583 (_2!28880 lt!1707605)))) e!2825091)))

(declare-fun b!4533826 () Bool)

(declare-fun e!2825092 () Bool)

(assert (=> b!4533826 (= e!2825091 e!2825092)))

(declare-fun res!1888542 () Bool)

(assert (=> b!4533826 (=> (not res!1888542) (not e!2825092))))

(assert (=> b!4533826 (= res!1888542 ((_ is Cons!50712) (t!357798 (_2!28880 lt!1707605))))))

(declare-fun b!4533827 () Bool)

(assert (=> b!4533827 (= e!2825092 (containsKey!1840 (t!357798 (t!357798 (_2!28880 lt!1707605))) (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (= (and d!1400152 (not res!1888541)) b!4533826))

(assert (= (and b!4533826 res!1888542) b!4533827))

(declare-fun m!5294307 () Bool)

(assert (=> b!4533827 m!5294307))

(assert (=> b!4532562 d!1400152))

(declare-fun d!1400154 () Bool)

(assert (=> d!1400154 (= (invariantList!1035 (toList!4376 lt!1707773)) (noDuplicatedKeys!273 (toList!4376 lt!1707773)))))

(declare-fun bs!870493 () Bool)

(assert (= bs!870493 d!1400154))

(declare-fun m!5294309 () Bool)

(assert (=> bs!870493 m!5294309))

(assert (=> d!1399148 d!1400154))

(declare-fun d!1400156 () Bool)

(declare-fun res!1888543 () Bool)

(declare-fun e!2825093 () Bool)

(assert (=> d!1400156 (=> res!1888543 e!2825093)))

(assert (=> d!1400156 (= res!1888543 ((_ is Nil!50713) (toList!4375 lt!1707617)))))

(assert (=> d!1400156 (= (forall!10315 (toList!4375 lt!1707617) lambda!174693) e!2825093)))

(declare-fun b!4533828 () Bool)

(declare-fun e!2825094 () Bool)

(assert (=> b!4533828 (= e!2825093 e!2825094)))

(declare-fun res!1888544 () Bool)

(assert (=> b!4533828 (=> (not res!1888544) (not e!2825094))))

(assert (=> b!4533828 (= res!1888544 (dynLambda!21195 lambda!174693 (h!56584 (toList!4375 lt!1707617))))))

(declare-fun b!4533829 () Bool)

(assert (=> b!4533829 (= e!2825094 (forall!10315 (t!357799 (toList!4375 lt!1707617)) lambda!174693))))

(assert (= (and d!1400156 (not res!1888543)) b!4533828))

(assert (= (and b!4533828 res!1888544) b!4533829))

(declare-fun b_lambda!157031 () Bool)

(assert (=> (not b_lambda!157031) (not b!4533828)))

(declare-fun m!5294311 () Bool)

(assert (=> b!4533828 m!5294311))

(declare-fun m!5294313 () Bool)

(assert (=> b!4533829 m!5294313))

(assert (=> d!1399148 d!1400156))

(assert (=> b!4532506 d!1399996))

(assert (=> b!4532506 d!1399998))

(declare-fun d!1400158 () Bool)

(assert (=> d!1400158 (= (invariantList!1035 (toList!4376 lt!1707976)) (noDuplicatedKeys!273 (toList!4376 lt!1707976)))))

(declare-fun bs!870494 () Bool)

(assert (= bs!870494 d!1400158))

(declare-fun m!5294315 () Bool)

(assert (=> bs!870494 m!5294315))

(assert (=> b!4532429 d!1400158))

(declare-fun d!1400160 () Bool)

(declare-fun res!1888545 () Bool)

(declare-fun e!2825095 () Bool)

(assert (=> d!1400160 (=> res!1888545 e!2825095)))

(assert (=> d!1400160 (= res!1888545 ((_ is Nil!50713) (toList!4375 lm!1477)))))

(assert (=> d!1400160 (= (forall!10315 (toList!4375 lm!1477) lambda!174684) e!2825095)))

(declare-fun b!4533830 () Bool)

(declare-fun e!2825096 () Bool)

(assert (=> b!4533830 (= e!2825095 e!2825096)))

(declare-fun res!1888546 () Bool)

(assert (=> b!4533830 (=> (not res!1888546) (not e!2825096))))

(assert (=> b!4533830 (= res!1888546 (dynLambda!21195 lambda!174684 (h!56584 (toList!4375 lm!1477))))))

(declare-fun b!4533831 () Bool)

(assert (=> b!4533831 (= e!2825096 (forall!10315 (t!357799 (toList!4375 lm!1477)) lambda!174684))))

(assert (= (and d!1400160 (not res!1888545)) b!4533830))

(assert (= (and b!4533830 res!1888546) b!4533831))

(declare-fun b_lambda!157033 () Bool)

(assert (=> (not b_lambda!157033) (not b!4533830)))

(declare-fun m!5294317 () Bool)

(assert (=> b!4533830 m!5294317))

(declare-fun m!5294319 () Bool)

(assert (=> b!4533831 m!5294319))

(assert (=> d!1399104 d!1400160))

(declare-fun bs!870495 () Bool)

(declare-fun b!4533834 () Bool)

(assert (= bs!870495 (and b!4533834 b!4533348)))

(declare-fun lambda!174942 () Int)

(assert (=> bs!870495 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708634) (= lambda!174942 lambda!174879))))

(declare-fun bs!870496 () Bool)

(assert (= bs!870496 (and b!4533834 b!4533230)))

(assert (=> bs!870496 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174942 lambda!174864))))

(declare-fun bs!870497 () Bool)

(assert (= bs!870497 (and b!4533834 d!1399802)))

(assert (=> bs!870497 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708638) (= lambda!174942 lambda!174880))))

(declare-fun bs!870498 () Bool)

(assert (= bs!870498 (and b!4533834 b!4533161)))

(assert (=> bs!870498 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174942 lambda!174848))))

(declare-fun bs!870499 () Bool)

(assert (= bs!870499 (and b!4533834 b!4532449)))

(assert (=> bs!870499 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708008) (= lambda!174942 lambda!174758))))

(declare-fun bs!870500 () Bool)

(assert (= bs!870500 (and b!4533834 d!1399264)))

(assert (=> bs!870500 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708012) (= lambda!174942 lambda!174759))))

(declare-fun bs!870501 () Bool)

(assert (= bs!870501 (and b!4533834 d!1399688)))

(assert (=> bs!870501 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707972) (= lambda!174942 lambda!174861))))

(declare-fun bs!870502 () Bool)

(assert (= bs!870502 (and b!4533834 b!4533789)))

(assert (=> bs!870502 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174942 lambda!174939))))

(declare-fun bs!870503 () Bool)

(assert (= bs!870503 (and b!4533834 b!4533658)))

(assert (=> bs!870503 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174942 lambda!174921))))

(declare-fun bs!870504 () Bool)

(assert (= bs!870504 (and b!4533834 b!4533160)))

(assert (=> bs!870504 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708468) (= lambda!174942 lambda!174851))))

(declare-fun bs!870505 () Bool)

(assert (= bs!870505 (and b!4533834 b!4532427)))

(assert (=> bs!870505 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707972) (= lambda!174942 lambda!174754))))

(declare-fun bs!870506 () Bool)

(assert (= bs!870506 (and b!4533834 d!1399874)))

(assert (=> bs!870506 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708737) (= lambda!174942 lambda!174906))))

(declare-fun bs!870507 () Bool)

(assert (= bs!870507 (and b!4533834 d!1399764)))

(assert (=> bs!870507 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708609) (= lambda!174942 lambda!174873))))

(declare-fun bs!870508 () Bool)

(assert (= bs!870508 (and b!4533834 b!4532128)))

(assert (=> bs!870508 (not (= lambda!174942 lambda!174637))))

(declare-fun bs!870509 () Bool)

(assert (= bs!870509 (and b!4533834 b!4532469)))

(assert (=> bs!870509 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707612) (= lambda!174942 lambda!174765))))

(declare-fun bs!870510 () Bool)

(assert (= bs!870510 (and b!4533834 d!1399278)))

(assert (=> bs!870510 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708038) (= lambda!174942 lambda!174767))))

(declare-fun bs!870511 () Bool)

(assert (= bs!870511 (and b!4533834 b!4533231)))

(assert (=> bs!870511 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174942 lambda!174863))))

(declare-fun bs!870512 () Bool)

(assert (= bs!870512 (and b!4533834 b!4532470)))

(assert (=> bs!870512 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707612) (= lambda!174942 lambda!174764))))

(declare-fun bs!870513 () Bool)

(assert (= bs!870513 (and b!4533834 d!1399618)))

(assert (=> bs!870513 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708034) (= lambda!174942 lambda!174847))))

(assert (=> bs!870505 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707600) (= lambda!174942 lambda!174753))))

(declare-fun bs!870514 () Bool)

(assert (= bs!870514 (and b!4533834 d!1399690)))

(assert (=> bs!870514 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708558) (= lambda!174942 lambda!174867))))

(declare-fun bs!870515 () Bool)

(assert (= bs!870515 (and b!4533834 d!1399580)))

(assert (=> bs!870515 (not (= lambda!174942 lambda!174838))))

(declare-fun bs!870516 () Bool)

(assert (= bs!870516 (and b!4533834 d!1399970)))

(assert (=> bs!870516 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708902) (= lambda!174942 lambda!174927))))

(declare-fun bs!870517 () Bool)

(assert (= bs!870517 (and b!4533834 b!4533657)))

(assert (=> bs!870517 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174942 lambda!174922))))

(declare-fun bs!870518 () Bool)

(assert (= bs!870518 (and b!4533834 b!4533314)))

(assert (=> bs!870518 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708605) (= lambda!174942 lambda!174871))))

(assert (=> bs!870495 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174942 lambda!174877))))

(assert (=> bs!870518 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174942 lambda!174870))))

(declare-fun bs!870519 () Bool)

(assert (= bs!870519 (and b!4533834 d!1399090)))

(assert (=> bs!870519 (not (= lambda!174942 lambda!174643))))

(declare-fun bs!870520 () Bool)

(assert (= bs!870520 (and b!4533834 b!4533349)))

(assert (=> bs!870520 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174942 lambda!174875))))

(assert (=> bs!870496 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708554) (= lambda!174942 lambda!174866))))

(declare-fun bs!870521 () Bool)

(assert (= bs!870521 (and b!4533834 b!4533315)))

(assert (=> bs!870521 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174942 lambda!174868))))

(assert (=> bs!870504 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174942 lambda!174850))))

(declare-fun bs!870522 () Bool)

(assert (= bs!870522 (and b!4533834 d!1399182)))

(assert (=> bs!870522 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707976) (= lambda!174942 lambda!174755))))

(declare-fun bs!870523 () Bool)

(assert (= bs!870523 (and b!4533834 d!1400068)))

(assert (=> bs!870523 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708998) (= lambda!174942 lambda!174941))))

(assert (=> bs!870517 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708898) (= lambda!174942 lambda!174923))))

(declare-fun bs!870524 () Bool)

(assert (= bs!870524 (and b!4533834 d!1399622)))

(assert (=> bs!870524 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708472) (= lambda!174942 lambda!174853))))

(assert (=> bs!870499 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707628) (= lambda!174942 lambda!174757))))

(assert (=> bs!870502 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708994) (= lambda!174942 lambda!174940))))

(declare-fun bs!870525 () Bool)

(assert (= bs!870525 (and b!4533834 b!4533468)))

(assert (=> bs!870525 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174942 lambda!174903))))

(assert (=> bs!870525 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708733) (= lambda!174942 lambda!174904))))

(declare-fun bs!870526 () Bool)

(assert (= bs!870526 (and b!4533834 b!4532428)))

(assert (=> bs!870526 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707600) (= lambda!174942 lambda!174752))))

(declare-fun bs!870527 () Bool)

(assert (= bs!870527 (and b!4533834 b!4533469)))

(assert (=> bs!870527 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174942 lambda!174901))))

(declare-fun bs!870528 () Bool)

(assert (= bs!870528 (and b!4533834 b!4533790)))

(assert (=> bs!870528 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174942 lambda!174938))))

(declare-fun bs!870529 () Bool)

(assert (= bs!870529 (and b!4533834 b!4532450)))

(assert (=> bs!870529 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707628) (= lambda!174942 lambda!174756))))

(declare-fun bs!870530 () Bool)

(assert (= bs!870530 (and b!4533834 d!1400052)))

(assert (=> bs!870530 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708008) (= lambda!174942 lambda!174937))))

(assert (=> bs!870509 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708034) (= lambda!174942 lambda!174766))))

(declare-fun bs!870531 () Bool)

(assert (= bs!870531 (and b!4533834 d!1400020)))

(assert (=> bs!870531 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707612) (= lambda!174942 lambda!174936))))

(assert (=> b!4533834 true))

(declare-fun bs!870532 () Bool)

(declare-fun b!4533833 () Bool)

(assert (= bs!870532 (and b!4533833 b!4533348)))

(declare-fun lambda!174943 () Int)

(assert (=> bs!870532 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708634) (= lambda!174943 lambda!174879))))

(declare-fun bs!870533 () Bool)

(assert (= bs!870533 (and b!4533833 b!4533230)))

(assert (=> bs!870533 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174943 lambda!174864))))

(declare-fun bs!870534 () Bool)

(assert (= bs!870534 (and b!4533833 d!1399802)))

(assert (=> bs!870534 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708638) (= lambda!174943 lambda!174880))))

(declare-fun bs!870535 () Bool)

(assert (= bs!870535 (and b!4533833 b!4533161)))

(assert (=> bs!870535 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174943 lambda!174848))))

(declare-fun bs!870536 () Bool)

(assert (= bs!870536 (and b!4533833 b!4532449)))

(assert (=> bs!870536 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708008) (= lambda!174943 lambda!174758))))

(declare-fun bs!870537 () Bool)

(assert (= bs!870537 (and b!4533833 d!1399264)))

(assert (=> bs!870537 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708012) (= lambda!174943 lambda!174759))))

(declare-fun bs!870538 () Bool)

(assert (= bs!870538 (and b!4533833 d!1399688)))

(assert (=> bs!870538 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707972) (= lambda!174943 lambda!174861))))

(declare-fun bs!870539 () Bool)

(assert (= bs!870539 (and b!4533833 b!4533789)))

(assert (=> bs!870539 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174943 lambda!174939))))

(declare-fun bs!870540 () Bool)

(assert (= bs!870540 (and b!4533833 b!4533834)))

(assert (=> bs!870540 (= lambda!174943 lambda!174942)))

(declare-fun bs!870541 () Bool)

(assert (= bs!870541 (and b!4533833 b!4533658)))

(assert (=> bs!870541 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174943 lambda!174921))))

(declare-fun bs!870542 () Bool)

(assert (= bs!870542 (and b!4533833 b!4533160)))

(assert (=> bs!870542 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708468) (= lambda!174943 lambda!174851))))

(declare-fun bs!870543 () Bool)

(assert (= bs!870543 (and b!4533833 b!4532427)))

(assert (=> bs!870543 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707972) (= lambda!174943 lambda!174754))))

(declare-fun bs!870544 () Bool)

(assert (= bs!870544 (and b!4533833 d!1399874)))

(assert (=> bs!870544 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708737) (= lambda!174943 lambda!174906))))

(declare-fun bs!870545 () Bool)

(assert (= bs!870545 (and b!4533833 d!1399764)))

(assert (=> bs!870545 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708609) (= lambda!174943 lambda!174873))))

(declare-fun bs!870546 () Bool)

(assert (= bs!870546 (and b!4533833 b!4532128)))

(assert (=> bs!870546 (not (= lambda!174943 lambda!174637))))

(declare-fun bs!870547 () Bool)

(assert (= bs!870547 (and b!4533833 b!4532469)))

(assert (=> bs!870547 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707612) (= lambda!174943 lambda!174765))))

(declare-fun bs!870548 () Bool)

(assert (= bs!870548 (and b!4533833 d!1399278)))

(assert (=> bs!870548 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708038) (= lambda!174943 lambda!174767))))

(declare-fun bs!870549 () Bool)

(assert (= bs!870549 (and b!4533833 b!4533231)))

(assert (=> bs!870549 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174943 lambda!174863))))

(declare-fun bs!870550 () Bool)

(assert (= bs!870550 (and b!4533833 b!4532470)))

(assert (=> bs!870550 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707612) (= lambda!174943 lambda!174764))))

(declare-fun bs!870551 () Bool)

(assert (= bs!870551 (and b!4533833 d!1399618)))

(assert (=> bs!870551 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708034) (= lambda!174943 lambda!174847))))

(assert (=> bs!870543 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707600) (= lambda!174943 lambda!174753))))

(declare-fun bs!870552 () Bool)

(assert (= bs!870552 (and b!4533833 d!1399690)))

(assert (=> bs!870552 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708558) (= lambda!174943 lambda!174867))))

(declare-fun bs!870553 () Bool)

(assert (= bs!870553 (and b!4533833 d!1399580)))

(assert (=> bs!870553 (not (= lambda!174943 lambda!174838))))

(declare-fun bs!870554 () Bool)

(assert (= bs!870554 (and b!4533833 d!1399970)))

(assert (=> bs!870554 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708902) (= lambda!174943 lambda!174927))))

(declare-fun bs!870555 () Bool)

(assert (= bs!870555 (and b!4533833 b!4533657)))

(assert (=> bs!870555 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174943 lambda!174922))))

(declare-fun bs!870556 () Bool)

(assert (= bs!870556 (and b!4533833 b!4533314)))

(assert (=> bs!870556 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708605) (= lambda!174943 lambda!174871))))

(assert (=> bs!870532 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174943 lambda!174877))))

(assert (=> bs!870556 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174943 lambda!174870))))

(declare-fun bs!870557 () Bool)

(assert (= bs!870557 (and b!4533833 d!1399090)))

(assert (=> bs!870557 (not (= lambda!174943 lambda!174643))))

(declare-fun bs!870558 () Bool)

(assert (= bs!870558 (and b!4533833 b!4533349)))

(assert (=> bs!870558 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174943 lambda!174875))))

(assert (=> bs!870533 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708554) (= lambda!174943 lambda!174866))))

(declare-fun bs!870559 () Bool)

(assert (= bs!870559 (and b!4533833 b!4533315)))

(assert (=> bs!870559 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174943 lambda!174868))))

(assert (=> bs!870542 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174943 lambda!174850))))

(declare-fun bs!870560 () Bool)

(assert (= bs!870560 (and b!4533833 d!1399182)))

(assert (=> bs!870560 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707976) (= lambda!174943 lambda!174755))))

(declare-fun bs!870561 () Bool)

(assert (= bs!870561 (and b!4533833 d!1400068)))

(assert (=> bs!870561 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708998) (= lambda!174943 lambda!174941))))

(assert (=> bs!870555 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708898) (= lambda!174943 lambda!174923))))

(declare-fun bs!870562 () Bool)

(assert (= bs!870562 (and b!4533833 d!1399622)))

(assert (=> bs!870562 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708472) (= lambda!174943 lambda!174853))))

(assert (=> bs!870536 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707628) (= lambda!174943 lambda!174757))))

(assert (=> bs!870539 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708994) (= lambda!174943 lambda!174940))))

(declare-fun bs!870563 () Bool)

(assert (= bs!870563 (and b!4533833 b!4533468)))

(assert (=> bs!870563 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174943 lambda!174903))))

(assert (=> bs!870563 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708733) (= lambda!174943 lambda!174904))))

(declare-fun bs!870564 () Bool)

(assert (= bs!870564 (and b!4533833 b!4532428)))

(assert (=> bs!870564 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707600) (= lambda!174943 lambda!174752))))

(declare-fun bs!870565 () Bool)

(assert (= bs!870565 (and b!4533833 b!4533469)))

(assert (=> bs!870565 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174943 lambda!174901))))

(declare-fun bs!870566 () Bool)

(assert (= bs!870566 (and b!4533833 b!4533790)))

(assert (=> bs!870566 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174943 lambda!174938))))

(declare-fun bs!870567 () Bool)

(assert (= bs!870567 (and b!4533833 b!4532450)))

(assert (=> bs!870567 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707628) (= lambda!174943 lambda!174756))))

(declare-fun bs!870568 () Bool)

(assert (= bs!870568 (and b!4533833 d!1400052)))

(assert (=> bs!870568 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708008) (= lambda!174943 lambda!174937))))

(assert (=> bs!870547 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1708034) (= lambda!174943 lambda!174766))))

(declare-fun bs!870569 () Bool)

(assert (= bs!870569 (and b!4533833 d!1400020)))

(assert (=> bs!870569 (= (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1707612) (= lambda!174943 lambda!174936))))

(assert (=> b!4533833 true))

(declare-fun lambda!174944 () Int)

(declare-fun lt!1709030 () ListMap!3637)

(assert (=> bs!870532 (= (= lt!1709030 lt!1708634) (= lambda!174944 lambda!174879))))

(assert (=> bs!870534 (= (= lt!1709030 lt!1708638) (= lambda!174944 lambda!174880))))

(assert (=> bs!870535 (= (= lt!1709030 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174944 lambda!174848))))

(assert (=> bs!870536 (= (= lt!1709030 lt!1708008) (= lambda!174944 lambda!174758))))

(assert (=> bs!870537 (= (= lt!1709030 lt!1708012) (= lambda!174944 lambda!174759))))

(assert (=> bs!870538 (= (= lt!1709030 lt!1707972) (= lambda!174944 lambda!174861))))

(assert (=> bs!870539 (= (= lt!1709030 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174944 lambda!174939))))

(assert (=> bs!870540 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174944 lambda!174942))))

(assert (=> bs!870541 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174944 lambda!174921))))

(assert (=> bs!870542 (= (= lt!1709030 lt!1708468) (= lambda!174944 lambda!174851))))

(assert (=> bs!870543 (= (= lt!1709030 lt!1707972) (= lambda!174944 lambda!174754))))

(assert (=> bs!870544 (= (= lt!1709030 lt!1708737) (= lambda!174944 lambda!174906))))

(assert (=> bs!870545 (= (= lt!1709030 lt!1708609) (= lambda!174944 lambda!174873))))

(assert (=> bs!870546 (not (= lambda!174944 lambda!174637))))

(assert (=> bs!870547 (= (= lt!1709030 lt!1707612) (= lambda!174944 lambda!174765))))

(assert (=> bs!870548 (= (= lt!1709030 lt!1708038) (= lambda!174944 lambda!174767))))

(assert (=> bs!870549 (= (= lt!1709030 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174944 lambda!174863))))

(assert (=> bs!870550 (= (= lt!1709030 lt!1707612) (= lambda!174944 lambda!174764))))

(assert (=> bs!870551 (= (= lt!1709030 lt!1708034) (= lambda!174944 lambda!174847))))

(assert (=> bs!870543 (= (= lt!1709030 lt!1707600) (= lambda!174944 lambda!174753))))

(assert (=> bs!870552 (= (= lt!1709030 lt!1708558) (= lambda!174944 lambda!174867))))

(assert (=> bs!870533 (= (= lt!1709030 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174944 lambda!174864))))

(assert (=> b!4533833 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174944 lambda!174943))))

(assert (=> bs!870553 (not (= lambda!174944 lambda!174838))))

(assert (=> bs!870554 (= (= lt!1709030 lt!1708902) (= lambda!174944 lambda!174927))))

(assert (=> bs!870555 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174944 lambda!174922))))

(assert (=> bs!870556 (= (= lt!1709030 lt!1708605) (= lambda!174944 lambda!174871))))

(assert (=> bs!870532 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174944 lambda!174877))))

(assert (=> bs!870556 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174944 lambda!174870))))

(assert (=> bs!870557 (not (= lambda!174944 lambda!174643))))

(assert (=> bs!870558 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174944 lambda!174875))))

(assert (=> bs!870533 (= (= lt!1709030 lt!1708554) (= lambda!174944 lambda!174866))))

(assert (=> bs!870559 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174944 lambda!174868))))

(assert (=> bs!870542 (= (= lt!1709030 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174944 lambda!174850))))

(assert (=> bs!870560 (= (= lt!1709030 lt!1707976) (= lambda!174944 lambda!174755))))

(assert (=> bs!870561 (= (= lt!1709030 lt!1708998) (= lambda!174944 lambda!174941))))

(assert (=> bs!870555 (= (= lt!1709030 lt!1708898) (= lambda!174944 lambda!174923))))

(assert (=> bs!870562 (= (= lt!1709030 lt!1708472) (= lambda!174944 lambda!174853))))

(assert (=> bs!870536 (= (= lt!1709030 lt!1707628) (= lambda!174944 lambda!174757))))

(assert (=> bs!870539 (= (= lt!1709030 lt!1708994) (= lambda!174944 lambda!174940))))

(assert (=> bs!870563 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174944 lambda!174903))))

(assert (=> bs!870563 (= (= lt!1709030 lt!1708733) (= lambda!174944 lambda!174904))))

(assert (=> bs!870564 (= (= lt!1709030 lt!1707600) (= lambda!174944 lambda!174752))))

(assert (=> bs!870565 (= (= lt!1709030 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174944 lambda!174901))))

(assert (=> bs!870566 (= (= lt!1709030 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174944 lambda!174938))))

(assert (=> bs!870567 (= (= lt!1709030 lt!1707628) (= lambda!174944 lambda!174756))))

(assert (=> bs!870568 (= (= lt!1709030 lt!1708008) (= lambda!174944 lambda!174937))))

(assert (=> bs!870547 (= (= lt!1709030 lt!1708034) (= lambda!174944 lambda!174766))))

(assert (=> bs!870569 (= (= lt!1709030 lt!1707612) (= lambda!174944 lambda!174936))))

(assert (=> b!4533833 true))

(declare-fun bs!870570 () Bool)

(declare-fun d!1400162 () Bool)

(assert (= bs!870570 (and d!1400162 b!4533348)))

(declare-fun lt!1709034 () ListMap!3637)

(declare-fun lambda!174945 () Int)

(assert (=> bs!870570 (= (= lt!1709034 lt!1708634) (= lambda!174945 lambda!174879))))

(declare-fun bs!870571 () Bool)

(assert (= bs!870571 (and d!1400162 d!1399802)))

(assert (=> bs!870571 (= (= lt!1709034 lt!1708638) (= lambda!174945 lambda!174880))))

(declare-fun bs!870572 () Bool)

(assert (= bs!870572 (and d!1400162 b!4533161)))

(assert (=> bs!870572 (= (= lt!1709034 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174945 lambda!174848))))

(declare-fun bs!870573 () Bool)

(assert (= bs!870573 (and d!1400162 b!4532449)))

(assert (=> bs!870573 (= (= lt!1709034 lt!1708008) (= lambda!174945 lambda!174758))))

(declare-fun bs!870574 () Bool)

(assert (= bs!870574 (and d!1400162 d!1399264)))

(assert (=> bs!870574 (= (= lt!1709034 lt!1708012) (= lambda!174945 lambda!174759))))

(declare-fun bs!870575 () Bool)

(assert (= bs!870575 (and d!1400162 d!1399688)))

(assert (=> bs!870575 (= (= lt!1709034 lt!1707972) (= lambda!174945 lambda!174861))))

(declare-fun bs!870576 () Bool)

(assert (= bs!870576 (and d!1400162 b!4533789)))

(assert (=> bs!870576 (= (= lt!1709034 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174945 lambda!174939))))

(declare-fun bs!870577 () Bool)

(assert (= bs!870577 (and d!1400162 b!4533834)))

(assert (=> bs!870577 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174945 lambda!174942))))

(declare-fun bs!870578 () Bool)

(assert (= bs!870578 (and d!1400162 b!4533833)))

(assert (=> bs!870578 (= (= lt!1709034 lt!1709030) (= lambda!174945 lambda!174944))))

(declare-fun bs!870579 () Bool)

(assert (= bs!870579 (and d!1400162 b!4533658)))

(assert (=> bs!870579 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174945 lambda!174921))))

(declare-fun bs!870580 () Bool)

(assert (= bs!870580 (and d!1400162 b!4533160)))

(assert (=> bs!870580 (= (= lt!1709034 lt!1708468) (= lambda!174945 lambda!174851))))

(declare-fun bs!870581 () Bool)

(assert (= bs!870581 (and d!1400162 b!4532427)))

(assert (=> bs!870581 (= (= lt!1709034 lt!1707972) (= lambda!174945 lambda!174754))))

(declare-fun bs!870582 () Bool)

(assert (= bs!870582 (and d!1400162 d!1399874)))

(assert (=> bs!870582 (= (= lt!1709034 lt!1708737) (= lambda!174945 lambda!174906))))

(declare-fun bs!870583 () Bool)

(assert (= bs!870583 (and d!1400162 d!1399764)))

(assert (=> bs!870583 (= (= lt!1709034 lt!1708609) (= lambda!174945 lambda!174873))))

(declare-fun bs!870584 () Bool)

(assert (= bs!870584 (and d!1400162 b!4532128)))

(assert (=> bs!870584 (not (= lambda!174945 lambda!174637))))

(declare-fun bs!870585 () Bool)

(assert (= bs!870585 (and d!1400162 b!4532469)))

(assert (=> bs!870585 (= (= lt!1709034 lt!1707612) (= lambda!174945 lambda!174765))))

(declare-fun bs!870586 () Bool)

(assert (= bs!870586 (and d!1400162 d!1399278)))

(assert (=> bs!870586 (= (= lt!1709034 lt!1708038) (= lambda!174945 lambda!174767))))

(declare-fun bs!870587 () Bool)

(assert (= bs!870587 (and d!1400162 b!4533231)))

(assert (=> bs!870587 (= (= lt!1709034 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174945 lambda!174863))))

(declare-fun bs!870588 () Bool)

(assert (= bs!870588 (and d!1400162 b!4532470)))

(assert (=> bs!870588 (= (= lt!1709034 lt!1707612) (= lambda!174945 lambda!174764))))

(declare-fun bs!870589 () Bool)

(assert (= bs!870589 (and d!1400162 d!1399618)))

(assert (=> bs!870589 (= (= lt!1709034 lt!1708034) (= lambda!174945 lambda!174847))))

(assert (=> bs!870581 (= (= lt!1709034 lt!1707600) (= lambda!174945 lambda!174753))))

(declare-fun bs!870590 () Bool)

(assert (= bs!870590 (and d!1400162 d!1399690)))

(assert (=> bs!870590 (= (= lt!1709034 lt!1708558) (= lambda!174945 lambda!174867))))

(declare-fun bs!870591 () Bool)

(assert (= bs!870591 (and d!1400162 b!4533230)))

(assert (=> bs!870591 (= (= lt!1709034 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174945 lambda!174864))))

(assert (=> bs!870578 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174945 lambda!174943))))

(declare-fun bs!870592 () Bool)

(assert (= bs!870592 (and d!1400162 d!1399580)))

(assert (=> bs!870592 (not (= lambda!174945 lambda!174838))))

(declare-fun bs!870593 () Bool)

(assert (= bs!870593 (and d!1400162 d!1399970)))

(assert (=> bs!870593 (= (= lt!1709034 lt!1708902) (= lambda!174945 lambda!174927))))

(declare-fun bs!870594 () Bool)

(assert (= bs!870594 (and d!1400162 b!4533657)))

(assert (=> bs!870594 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174945 lambda!174922))))

(declare-fun bs!870595 () Bool)

(assert (= bs!870595 (and d!1400162 b!4533314)))

(assert (=> bs!870595 (= (= lt!1709034 lt!1708605) (= lambda!174945 lambda!174871))))

(assert (=> bs!870570 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174945 lambda!174877))))

(assert (=> bs!870595 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174945 lambda!174870))))

(declare-fun bs!870596 () Bool)

(assert (= bs!870596 (and d!1400162 d!1399090)))

(assert (=> bs!870596 (not (= lambda!174945 lambda!174643))))

(declare-fun bs!870597 () Bool)

(assert (= bs!870597 (and d!1400162 b!4533349)))

(assert (=> bs!870597 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174945 lambda!174875))))

(assert (=> bs!870591 (= (= lt!1709034 lt!1708554) (= lambda!174945 lambda!174866))))

(declare-fun bs!870598 () Bool)

(assert (= bs!870598 (and d!1400162 b!4533315)))

(assert (=> bs!870598 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174945 lambda!174868))))

(assert (=> bs!870580 (= (= lt!1709034 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174945 lambda!174850))))

(declare-fun bs!870599 () Bool)

(assert (= bs!870599 (and d!1400162 d!1399182)))

(assert (=> bs!870599 (= (= lt!1709034 lt!1707976) (= lambda!174945 lambda!174755))))

(declare-fun bs!870600 () Bool)

(assert (= bs!870600 (and d!1400162 d!1400068)))

(assert (=> bs!870600 (= (= lt!1709034 lt!1708998) (= lambda!174945 lambda!174941))))

(assert (=> bs!870594 (= (= lt!1709034 lt!1708898) (= lambda!174945 lambda!174923))))

(declare-fun bs!870601 () Bool)

(assert (= bs!870601 (and d!1400162 d!1399622)))

(assert (=> bs!870601 (= (= lt!1709034 lt!1708472) (= lambda!174945 lambda!174853))))

(assert (=> bs!870573 (= (= lt!1709034 lt!1707628) (= lambda!174945 lambda!174757))))

(assert (=> bs!870576 (= (= lt!1709034 lt!1708994) (= lambda!174945 lambda!174940))))

(declare-fun bs!870602 () Bool)

(assert (= bs!870602 (and d!1400162 b!4533468)))

(assert (=> bs!870602 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174945 lambda!174903))))

(assert (=> bs!870602 (= (= lt!1709034 lt!1708733) (= lambda!174945 lambda!174904))))

(declare-fun bs!870603 () Bool)

(assert (= bs!870603 (and d!1400162 b!4532428)))

(assert (=> bs!870603 (= (= lt!1709034 lt!1707600) (= lambda!174945 lambda!174752))))

(declare-fun bs!870604 () Bool)

(assert (= bs!870604 (and d!1400162 b!4533469)))

(assert (=> bs!870604 (= (= lt!1709034 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174945 lambda!174901))))

(declare-fun bs!870605 () Bool)

(assert (= bs!870605 (and d!1400162 b!4533790)))

(assert (=> bs!870605 (= (= lt!1709034 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174945 lambda!174938))))

(declare-fun bs!870606 () Bool)

(assert (= bs!870606 (and d!1400162 b!4532450)))

(assert (=> bs!870606 (= (= lt!1709034 lt!1707628) (= lambda!174945 lambda!174756))))

(declare-fun bs!870607 () Bool)

(assert (= bs!870607 (and d!1400162 d!1400052)))

(assert (=> bs!870607 (= (= lt!1709034 lt!1708008) (= lambda!174945 lambda!174937))))

(assert (=> bs!870585 (= (= lt!1709034 lt!1708034) (= lambda!174945 lambda!174766))))

(declare-fun bs!870608 () Bool)

(assert (= bs!870608 (and d!1400162 d!1400020)))

(assert (=> bs!870608 (= (= lt!1709034 lt!1707612) (= lambda!174945 lambda!174936))))

(assert (=> d!1400162 true))

(declare-fun e!2825097 () Bool)

(declare-fun b!4533832 () Bool)

(assert (=> b!4533832 (= e!2825097 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) lambda!174944))))

(declare-fun bm!316098 () Bool)

(declare-fun call!316103 () Unit!97092)

(assert (=> bm!316098 (= call!316103 (lemmaContainsAllItsOwnKeys!356 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))))))

(declare-fun e!2825099 () Bool)

(assert (=> d!1400162 e!2825099))

(declare-fun res!1888547 () Bool)

(assert (=> d!1400162 (=> (not res!1888547) (not e!2825099))))

(assert (=> d!1400162 (= res!1888547 (forall!10317 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lambda!174945))))

(declare-fun e!2825098 () ListMap!3637)

(assert (=> d!1400162 (= lt!1709034 e!2825098)))

(declare-fun c!774263 () Bool)

(assert (=> d!1400162 (= c!774263 ((_ is Nil!50712) (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605))))))))

(assert (=> d!1400162 (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))))

(assert (=> d!1400162 (= (addToMapMapFromBucket!711 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) lt!1709034)))

(assert (=> b!4533833 (= e!2825098 lt!1709030)))

(declare-fun lt!1709026 () ListMap!3637)

(assert (=> b!4533833 (= lt!1709026 (+!1582 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (h!56583 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))))))

(assert (=> b!4533833 (= lt!1709030 (addToMapMapFromBucket!711 (t!357798 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (+!1582 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (h!56583 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605))))))))))

(declare-fun lt!1709037 () Unit!97092)

(assert (=> b!4533833 (= lt!1709037 call!316103)))

(declare-fun call!316105 () Bool)

(assert (=> b!4533833 call!316105))

(declare-fun lt!1709035 () Unit!97092)

(assert (=> b!4533833 (= lt!1709035 lt!1709037)))

(assert (=> b!4533833 (forall!10317 (toList!4376 lt!1709026) lambda!174944)))

(declare-fun lt!1709042 () Unit!97092)

(declare-fun Unit!97419 () Unit!97092)

(assert (=> b!4533833 (= lt!1709042 Unit!97419)))

(assert (=> b!4533833 (forall!10317 (t!357798 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) lambda!174944)))

(declare-fun lt!1709028 () Unit!97092)

(declare-fun Unit!97420 () Unit!97092)

(assert (=> b!4533833 (= lt!1709028 Unit!97420)))

(declare-fun lt!1709031 () Unit!97092)

(declare-fun Unit!97421 () Unit!97092)

(assert (=> b!4533833 (= lt!1709031 Unit!97421)))

(declare-fun lt!1709023 () Unit!97092)

(assert (=> b!4533833 (= lt!1709023 (forallContained!2573 (toList!4376 lt!1709026) lambda!174944 (h!56583 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))))))

(assert (=> b!4533833 (contains!13479 lt!1709026 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))))))

(declare-fun lt!1709033 () Unit!97092)

(declare-fun Unit!97422 () Unit!97092)

(assert (=> b!4533833 (= lt!1709033 Unit!97422)))

(assert (=> b!4533833 (contains!13479 lt!1709030 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))))))

(declare-fun lt!1709029 () Unit!97092)

(declare-fun Unit!97423 () Unit!97092)

(assert (=> b!4533833 (= lt!1709029 Unit!97423)))

(declare-fun call!316104 () Bool)

(assert (=> b!4533833 call!316104))

(declare-fun lt!1709025 () Unit!97092)

(declare-fun Unit!97424 () Unit!97092)

(assert (=> b!4533833 (= lt!1709025 Unit!97424)))

(assert (=> b!4533833 (forall!10317 (toList!4376 lt!1709026) lambda!174944)))

(declare-fun lt!1709022 () Unit!97092)

(declare-fun Unit!97425 () Unit!97092)

(assert (=> b!4533833 (= lt!1709022 Unit!97425)))

(declare-fun lt!1709039 () Unit!97092)

(declare-fun Unit!97426 () Unit!97092)

(assert (=> b!4533833 (= lt!1709039 Unit!97426)))

(declare-fun lt!1709024 () Unit!97092)

(assert (=> b!4533833 (= lt!1709024 (addForallContainsKeyThenBeforeAdding!356 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1709030 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))) (_2!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605))))))))))

(assert (=> b!4533833 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) lambda!174944)))

(declare-fun lt!1709038 () Unit!97092)

(assert (=> b!4533833 (= lt!1709038 lt!1709024)))

(assert (=> b!4533833 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) lambda!174944)))

(declare-fun lt!1709040 () Unit!97092)

(declare-fun Unit!97427 () Unit!97092)

(assert (=> b!4533833 (= lt!1709040 Unit!97427)))

(declare-fun res!1888549 () Bool)

(assert (=> b!4533833 (= res!1888549 (forall!10317 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lambda!174944))))

(assert (=> b!4533833 (=> (not res!1888549) (not e!2825097))))

(assert (=> b!4533833 e!2825097))

(declare-fun lt!1709032 () Unit!97092)

(declare-fun Unit!97428 () Unit!97092)

(assert (=> b!4533833 (= lt!1709032 Unit!97428)))

(assert (=> b!4533834 (= e!2825098 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))))

(declare-fun lt!1709027 () Unit!97092)

(assert (=> b!4533834 (= lt!1709027 call!316103)))

(assert (=> b!4533834 call!316104))

(declare-fun lt!1709036 () Unit!97092)

(assert (=> b!4533834 (= lt!1709036 lt!1709027)))

(assert (=> b!4533834 call!316105))

(declare-fun lt!1709041 () Unit!97092)

(declare-fun Unit!97429 () Unit!97092)

(assert (=> b!4533834 (= lt!1709041 Unit!97429)))

(declare-fun bm!316099 () Bool)

(assert (=> bm!316099 (= call!316105 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (ite c!774263 lambda!174942 lambda!174943)))))

(declare-fun b!4533835 () Bool)

(assert (=> b!4533835 (= e!2825099 (invariantList!1035 (toList!4376 lt!1709034)))))

(declare-fun b!4533836 () Bool)

(declare-fun res!1888548 () Bool)

(assert (=> b!4533836 (=> (not res!1888548) (not e!2825099))))

(assert (=> b!4533836 (= res!1888548 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) lambda!174945))))

(declare-fun bm!316100 () Bool)

(assert (=> bm!316100 (= call!316104 (forall!10317 (ite c!774263 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (ite c!774263 lambda!174942 lambda!174944)))))

(assert (= (and d!1400162 c!774263) b!4533834))

(assert (= (and d!1400162 (not c!774263)) b!4533833))

(assert (= (and b!4533833 res!1888549) b!4533832))

(assert (= (or b!4533834 b!4533833) bm!316100))

(assert (= (or b!4533834 b!4533833) bm!316099))

(assert (= (or b!4533834 b!4533833) bm!316098))

(assert (= (and d!1400162 res!1888547) b!4533836))

(assert (= (and b!4533836 res!1888548) b!4533835))

(declare-fun m!5294321 () Bool)

(assert (=> b!4533833 m!5294321))

(assert (=> b!4533833 m!5291085))

(declare-fun m!5294323 () Bool)

(assert (=> b!4533833 m!5294323))

(declare-fun m!5294325 () Bool)

(assert (=> b!4533833 m!5294325))

(declare-fun m!5294327 () Bool)

(assert (=> b!4533833 m!5294327))

(assert (=> b!4533833 m!5291085))

(declare-fun m!5294329 () Bool)

(assert (=> b!4533833 m!5294329))

(declare-fun m!5294331 () Bool)

(assert (=> b!4533833 m!5294331))

(declare-fun m!5294333 () Bool)

(assert (=> b!4533833 m!5294333))

(declare-fun m!5294335 () Bool)

(assert (=> b!4533833 m!5294335))

(assert (=> b!4533833 m!5294325))

(assert (=> b!4533833 m!5294323))

(declare-fun m!5294337 () Bool)

(assert (=> b!4533833 m!5294337))

(declare-fun m!5294339 () Bool)

(assert (=> b!4533833 m!5294339))

(assert (=> b!4533833 m!5294327))

(declare-fun m!5294341 () Bool)

(assert (=> b!4533836 m!5294341))

(declare-fun m!5294343 () Bool)

(assert (=> bm!316099 m!5294343))

(assert (=> b!4533832 m!5294325))

(declare-fun m!5294345 () Bool)

(assert (=> b!4533835 m!5294345))

(assert (=> bm!316098 m!5291085))

(declare-fun m!5294347 () Bool)

(assert (=> bm!316098 m!5294347))

(declare-fun m!5294349 () Bool)

(assert (=> d!1400162 m!5294349))

(declare-fun m!5294351 () Bool)

(assert (=> d!1400162 m!5294351))

(declare-fun m!5294353 () Bool)

(assert (=> bm!316100 m!5294353))

(assert (=> b!4532273 d!1400162))

(declare-fun bs!870609 () Bool)

(declare-fun d!1400164 () Bool)

(assert (= bs!870609 (and d!1400164 d!1399308)))

(declare-fun lambda!174946 () Int)

(assert (=> bs!870609 (= lambda!174946 lambda!174775)))

(declare-fun bs!870610 () Bool)

(assert (= bs!870610 (and d!1400164 start!449480)))

(assert (=> bs!870610 (= lambda!174946 lambda!174635)))

(declare-fun bs!870611 () Bool)

(assert (= bs!870611 (and d!1400164 d!1399266)))

(assert (=> bs!870611 (= lambda!174946 lambda!174760)))

(declare-fun bs!870612 () Bool)

(assert (= bs!870612 (and d!1400164 d!1399148)))

(assert (=> bs!870612 (= lambda!174946 lambda!174693)))

(declare-fun bs!870613 () Bool)

(assert (= bs!870613 (and d!1400164 d!1399990)))

(assert (=> bs!870613 (= lambda!174946 lambda!174929)))

(declare-fun bs!870614 () Bool)

(assert (= bs!870614 (and d!1400164 d!1399114)))

(assert (=> bs!870614 (= lambda!174946 lambda!174691)))

(declare-fun bs!870615 () Bool)

(assert (= bs!870615 (and d!1400164 d!1399098)))

(assert (=> bs!870615 (= lambda!174946 lambda!174681)))

(declare-fun bs!870616 () Bool)

(assert (= bs!870616 (and d!1400164 d!1399160)))

(assert (=> bs!870616 (= lambda!174946 lambda!174703)))

(declare-fun bs!870617 () Bool)

(assert (= bs!870617 (and d!1400164 d!1399272)))

(assert (=> bs!870617 (= lambda!174946 lambda!174763)))

(declare-fun bs!870618 () Bool)

(assert (= bs!870618 (and d!1400164 d!1399880)))

(assert (=> bs!870618 (= lambda!174946 lambda!174909)))

(declare-fun bs!870619 () Bool)

(assert (= bs!870619 (and d!1400164 d!1399286)))

(assert (=> bs!870619 (= lambda!174946 lambda!174770)))

(declare-fun bs!870620 () Bool)

(assert (= bs!870620 (and d!1400164 d!1399666)))

(assert (=> bs!870620 (= lambda!174946 lambda!174858)))

(declare-fun bs!870621 () Bool)

(assert (= bs!870621 (and d!1400164 d!1399790)))

(assert (=> bs!870621 (= lambda!174946 lambda!174874)))

(declare-fun bs!870622 () Bool)

(assert (= bs!870622 (and d!1400164 b!4532128)))

(assert (=> bs!870622 (not (= lambda!174946 lambda!174636))))

(declare-fun bs!870623 () Bool)

(assert (= bs!870623 (and d!1400164 d!1399306)))

(assert (=> bs!870623 (= lambda!174946 lambda!174774)))

(declare-fun bs!870624 () Bool)

(assert (= bs!870624 (and d!1400164 d!1399304)))

(assert (=> bs!870624 (= lambda!174946 lambda!174771)))

(declare-fun bs!870625 () Bool)

(assert (= bs!870625 (and d!1400164 d!1399104)))

(assert (=> bs!870625 (not (= lambda!174946 lambda!174684))))

(declare-fun bs!870626 () Bool)

(assert (= bs!870626 (and d!1400164 d!1399174)))

(assert (=> bs!870626 (= lambda!174946 lambda!174706)))

(declare-fun lt!1709043 () ListMap!3637)

(assert (=> d!1400164 (invariantList!1035 (toList!4376 lt!1709043))))

(declare-fun e!2825100 () ListMap!3637)

(assert (=> d!1400164 (= lt!1709043 e!2825100)))

(declare-fun c!774264 () Bool)

(assert (=> d!1400164 (= c!774264 ((_ is Cons!50713) (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))))

(assert (=> d!1400164 (forall!10315 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))) lambda!174946)))

(assert (=> d!1400164 (= (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) lt!1709043)))

(declare-fun b!4533837 () Bool)

(assert (=> b!4533837 (= e!2825100 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (extractMap!1240 (t!357799 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))))))

(declare-fun b!4533838 () Bool)

(assert (=> b!4533838 (= e!2825100 (ListMap!3638 Nil!50712))))

(assert (= (and d!1400164 c!774264) b!4533837))

(assert (= (and d!1400164 (not c!774264)) b!4533838))

(declare-fun m!5294355 () Bool)

(assert (=> d!1400164 m!5294355))

(declare-fun m!5294357 () Bool)

(assert (=> d!1400164 m!5294357))

(declare-fun m!5294359 () Bool)

(assert (=> b!4533837 m!5294359))

(assert (=> b!4533837 m!5294359))

(declare-fun m!5294361 () Bool)

(assert (=> b!4533837 m!5294361))

(assert (=> b!4532273 d!1400164))

(declare-fun d!1400166 () Bool)

(declare-fun lt!1709044 () Bool)

(assert (=> d!1400166 (= lt!1709044 (select (content!8413 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707625))))

(declare-fun e!2825101 () Bool)

(assert (=> d!1400166 (= lt!1709044 e!2825101)))

(declare-fun res!1888551 () Bool)

(assert (=> d!1400166 (=> (not res!1888551) (not e!2825101))))

(assert (=> d!1400166 (= res!1888551 ((_ is Cons!50713) (t!357799 (t!357799 (toList!4375 lm!1477)))))))

(assert (=> d!1400166 (= (contains!13480 (t!357799 (t!357799 (toList!4375 lm!1477))) lt!1707625) lt!1709044)))

(declare-fun b!4533839 () Bool)

(declare-fun e!2825102 () Bool)

(assert (=> b!4533839 (= e!2825101 e!2825102)))

(declare-fun res!1888550 () Bool)

(assert (=> b!4533839 (=> res!1888550 e!2825102)))

(assert (=> b!4533839 (= res!1888550 (= (h!56584 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707625))))

(declare-fun b!4533840 () Bool)

(assert (=> b!4533840 (= e!2825102 (contains!13480 (t!357799 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707625))))

(assert (= (and d!1400166 res!1888551) b!4533839))

(assert (= (and b!4533839 (not res!1888550)) b!4533840))

(declare-fun m!5294363 () Bool)

(assert (=> d!1400166 m!5294363))

(declare-fun m!5294365 () Bool)

(assert (=> d!1400166 m!5294365))

(declare-fun m!5294367 () Bool)

(assert (=> b!4533840 m!5294367))

(assert (=> b!4532533 d!1400166))

(declare-fun d!1400168 () Bool)

(declare-fun lt!1709045 () Bool)

(assert (=> d!1400168 (= lt!1709045 (select (content!8412 (keys!17636 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) key!3287))))

(declare-fun e!2825103 () Bool)

(assert (=> d!1400168 (= lt!1709045 e!2825103)))

(declare-fun res!1888553 () Bool)

(assert (=> d!1400168 (=> (not res!1888553) (not e!2825103))))

(assert (=> d!1400168 (= res!1888553 ((_ is Cons!50715) (keys!17636 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))

(assert (=> d!1400168 (= (contains!13483 (keys!17636 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287) lt!1709045)))

(declare-fun b!4533841 () Bool)

(declare-fun e!2825104 () Bool)

(assert (=> b!4533841 (= e!2825103 e!2825104)))

(declare-fun res!1888552 () Bool)

(assert (=> b!4533841 (=> res!1888552 e!2825104)))

(assert (=> b!4533841 (= res!1888552 (= (h!56588 (keys!17636 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) key!3287))))

(declare-fun b!4533842 () Bool)

(assert (=> b!4533842 (= e!2825104 (contains!13483 (t!357801 (keys!17636 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) key!3287))))

(assert (= (and d!1400168 res!1888553) b!4533841))

(assert (= (and b!4533841 (not res!1888552)) b!4533842))

(assert (=> d!1400168 m!5291553))

(declare-fun m!5294369 () Bool)

(assert (=> d!1400168 m!5294369))

(declare-fun m!5294371 () Bool)

(assert (=> d!1400168 m!5294371))

(declare-fun m!5294373 () Bool)

(assert (=> b!4533842 m!5294373))

(assert (=> b!4532510 d!1400168))

(assert (=> b!4532510 d!1399514))

(assert (=> d!1399280 d!1399278))

(declare-fun bs!870627 () Bool)

(declare-fun b!4533845 () Bool)

(assert (= bs!870627 (and b!4533845 d!1400162)))

(declare-fun lambda!174947 () Int)

(assert (=> bs!870627 (= (= (-!410 lt!1707612 key!3287) lt!1709034) (= lambda!174947 lambda!174945))))

(declare-fun bs!870628 () Bool)

(assert (= bs!870628 (and b!4533845 b!4533348)))

(assert (=> bs!870628 (= (= (-!410 lt!1707612 key!3287) lt!1708634) (= lambda!174947 lambda!174879))))

(declare-fun bs!870629 () Bool)

(assert (= bs!870629 (and b!4533845 d!1399802)))

(assert (=> bs!870629 (= (= (-!410 lt!1707612 key!3287) lt!1708638) (= lambda!174947 lambda!174880))))

(declare-fun bs!870630 () Bool)

(assert (= bs!870630 (and b!4533845 b!4533161)))

(assert (=> bs!870630 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174947 lambda!174848))))

(declare-fun bs!870631 () Bool)

(assert (= bs!870631 (and b!4533845 b!4532449)))

(assert (=> bs!870631 (= (= (-!410 lt!1707612 key!3287) lt!1708008) (= lambda!174947 lambda!174758))))

(declare-fun bs!870632 () Bool)

(assert (= bs!870632 (and b!4533845 d!1399264)))

(assert (=> bs!870632 (= (= (-!410 lt!1707612 key!3287) lt!1708012) (= lambda!174947 lambda!174759))))

(declare-fun bs!870633 () Bool)

(assert (= bs!870633 (and b!4533845 d!1399688)))

(assert (=> bs!870633 (= (= (-!410 lt!1707612 key!3287) lt!1707972) (= lambda!174947 lambda!174861))))

(declare-fun bs!870634 () Bool)

(assert (= bs!870634 (and b!4533845 b!4533789)))

(assert (=> bs!870634 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174947 lambda!174939))))

(declare-fun bs!870635 () Bool)

(assert (= bs!870635 (and b!4533845 b!4533834)))

(assert (=> bs!870635 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174947 lambda!174942))))

(declare-fun bs!870636 () Bool)

(assert (= bs!870636 (and b!4533845 b!4533833)))

(assert (=> bs!870636 (= (= (-!410 lt!1707612 key!3287) lt!1709030) (= lambda!174947 lambda!174944))))

(declare-fun bs!870637 () Bool)

(assert (= bs!870637 (and b!4533845 b!4533658)))

(assert (=> bs!870637 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174947 lambda!174921))))

(declare-fun bs!870638 () Bool)

(assert (= bs!870638 (and b!4533845 b!4533160)))

(assert (=> bs!870638 (= (= (-!410 lt!1707612 key!3287) lt!1708468) (= lambda!174947 lambda!174851))))

(declare-fun bs!870639 () Bool)

(assert (= bs!870639 (and b!4533845 b!4532427)))

(assert (=> bs!870639 (= (= (-!410 lt!1707612 key!3287) lt!1707972) (= lambda!174947 lambda!174754))))

(declare-fun bs!870640 () Bool)

(assert (= bs!870640 (and b!4533845 d!1399874)))

(assert (=> bs!870640 (= (= (-!410 lt!1707612 key!3287) lt!1708737) (= lambda!174947 lambda!174906))))

(declare-fun bs!870641 () Bool)

(assert (= bs!870641 (and b!4533845 d!1399764)))

(assert (=> bs!870641 (= (= (-!410 lt!1707612 key!3287) lt!1708609) (= lambda!174947 lambda!174873))))

(declare-fun bs!870642 () Bool)

(assert (= bs!870642 (and b!4533845 b!4532128)))

(assert (=> bs!870642 (not (= lambda!174947 lambda!174637))))

(declare-fun bs!870643 () Bool)

(assert (= bs!870643 (and b!4533845 b!4532469)))

(assert (=> bs!870643 (= (= (-!410 lt!1707612 key!3287) lt!1707612) (= lambda!174947 lambda!174765))))

(declare-fun bs!870644 () Bool)

(assert (= bs!870644 (and b!4533845 d!1399278)))

(assert (=> bs!870644 (= (= (-!410 lt!1707612 key!3287) lt!1708038) (= lambda!174947 lambda!174767))))

(declare-fun bs!870645 () Bool)

(assert (= bs!870645 (and b!4533845 b!4533231)))

(assert (=> bs!870645 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174947 lambda!174863))))

(declare-fun bs!870646 () Bool)

(assert (= bs!870646 (and b!4533845 b!4532470)))

(assert (=> bs!870646 (= (= (-!410 lt!1707612 key!3287) lt!1707612) (= lambda!174947 lambda!174764))))

(declare-fun bs!870647 () Bool)

(assert (= bs!870647 (and b!4533845 d!1399618)))

(assert (=> bs!870647 (= (= (-!410 lt!1707612 key!3287) lt!1708034) (= lambda!174947 lambda!174847))))

(assert (=> bs!870639 (= (= (-!410 lt!1707612 key!3287) lt!1707600) (= lambda!174947 lambda!174753))))

(declare-fun bs!870648 () Bool)

(assert (= bs!870648 (and b!4533845 d!1399690)))

(assert (=> bs!870648 (= (= (-!410 lt!1707612 key!3287) lt!1708558) (= lambda!174947 lambda!174867))))

(declare-fun bs!870649 () Bool)

(assert (= bs!870649 (and b!4533845 b!4533230)))

(assert (=> bs!870649 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174947 lambda!174864))))

(assert (=> bs!870636 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174947 lambda!174943))))

(declare-fun bs!870650 () Bool)

(assert (= bs!870650 (and b!4533845 d!1399580)))

(assert (=> bs!870650 (not (= lambda!174947 lambda!174838))))

(declare-fun bs!870651 () Bool)

(assert (= bs!870651 (and b!4533845 d!1399970)))

(assert (=> bs!870651 (= (= (-!410 lt!1707612 key!3287) lt!1708902) (= lambda!174947 lambda!174927))))

(declare-fun bs!870652 () Bool)

(assert (= bs!870652 (and b!4533845 b!4533657)))

(assert (=> bs!870652 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174947 lambda!174922))))

(declare-fun bs!870653 () Bool)

(assert (= bs!870653 (and b!4533845 b!4533314)))

(assert (=> bs!870653 (= (= (-!410 lt!1707612 key!3287) lt!1708605) (= lambda!174947 lambda!174871))))

(assert (=> bs!870628 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174947 lambda!174877))))

(assert (=> bs!870653 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174947 lambda!174870))))

(declare-fun bs!870654 () Bool)

(assert (= bs!870654 (and b!4533845 d!1399090)))

(assert (=> bs!870654 (not (= lambda!174947 lambda!174643))))

(declare-fun bs!870655 () Bool)

(assert (= bs!870655 (and b!4533845 b!4533349)))

(assert (=> bs!870655 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174947 lambda!174875))))

(assert (=> bs!870649 (= (= (-!410 lt!1707612 key!3287) lt!1708554) (= lambda!174947 lambda!174866))))

(declare-fun bs!870656 () Bool)

(assert (= bs!870656 (and b!4533845 b!4533315)))

(assert (=> bs!870656 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174947 lambda!174868))))

(assert (=> bs!870638 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174947 lambda!174850))))

(declare-fun bs!870657 () Bool)

(assert (= bs!870657 (and b!4533845 d!1399182)))

(assert (=> bs!870657 (= (= (-!410 lt!1707612 key!3287) lt!1707976) (= lambda!174947 lambda!174755))))

(declare-fun bs!870658 () Bool)

(assert (= bs!870658 (and b!4533845 d!1400068)))

(assert (=> bs!870658 (= (= (-!410 lt!1707612 key!3287) lt!1708998) (= lambda!174947 lambda!174941))))

(assert (=> bs!870652 (= (= (-!410 lt!1707612 key!3287) lt!1708898) (= lambda!174947 lambda!174923))))

(declare-fun bs!870659 () Bool)

(assert (= bs!870659 (and b!4533845 d!1399622)))

(assert (=> bs!870659 (= (= (-!410 lt!1707612 key!3287) lt!1708472) (= lambda!174947 lambda!174853))))

(assert (=> bs!870631 (= (= (-!410 lt!1707612 key!3287) lt!1707628) (= lambda!174947 lambda!174757))))

(assert (=> bs!870634 (= (= (-!410 lt!1707612 key!3287) lt!1708994) (= lambda!174947 lambda!174940))))

(declare-fun bs!870660 () Bool)

(assert (= bs!870660 (and b!4533845 b!4533468)))

(assert (=> bs!870660 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174947 lambda!174903))))

(assert (=> bs!870660 (= (= (-!410 lt!1707612 key!3287) lt!1708733) (= lambda!174947 lambda!174904))))

(declare-fun bs!870661 () Bool)

(assert (= bs!870661 (and b!4533845 b!4532428)))

(assert (=> bs!870661 (= (= (-!410 lt!1707612 key!3287) lt!1707600) (= lambda!174947 lambda!174752))))

(declare-fun bs!870662 () Bool)

(assert (= bs!870662 (and b!4533845 b!4533469)))

(assert (=> bs!870662 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174947 lambda!174901))))

(declare-fun bs!870663 () Bool)

(assert (= bs!870663 (and b!4533845 b!4533790)))

(assert (=> bs!870663 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174947 lambda!174938))))

(declare-fun bs!870664 () Bool)

(assert (= bs!870664 (and b!4533845 b!4532450)))

(assert (=> bs!870664 (= (= (-!410 lt!1707612 key!3287) lt!1707628) (= lambda!174947 lambda!174756))))

(declare-fun bs!870665 () Bool)

(assert (= bs!870665 (and b!4533845 d!1400052)))

(assert (=> bs!870665 (= (= (-!410 lt!1707612 key!3287) lt!1708008) (= lambda!174947 lambda!174937))))

(assert (=> bs!870643 (= (= (-!410 lt!1707612 key!3287) lt!1708034) (= lambda!174947 lambda!174766))))

(declare-fun bs!870666 () Bool)

(assert (= bs!870666 (and b!4533845 d!1400020)))

(assert (=> bs!870666 (= (= (-!410 lt!1707612 key!3287) lt!1707612) (= lambda!174947 lambda!174936))))

(assert (=> b!4533845 true))

(declare-fun bs!870667 () Bool)

(declare-fun b!4533844 () Bool)

(assert (= bs!870667 (and b!4533844 d!1400162)))

(declare-fun lambda!174948 () Int)

(assert (=> bs!870667 (= (= (-!410 lt!1707612 key!3287) lt!1709034) (= lambda!174948 lambda!174945))))

(declare-fun bs!870668 () Bool)

(assert (= bs!870668 (and b!4533844 b!4533348)))

(assert (=> bs!870668 (= (= (-!410 lt!1707612 key!3287) lt!1708634) (= lambda!174948 lambda!174879))))

(declare-fun bs!870669 () Bool)

(assert (= bs!870669 (and b!4533844 d!1399802)))

(assert (=> bs!870669 (= (= (-!410 lt!1707612 key!3287) lt!1708638) (= lambda!174948 lambda!174880))))

(declare-fun bs!870670 () Bool)

(assert (= bs!870670 (and b!4533844 b!4532449)))

(assert (=> bs!870670 (= (= (-!410 lt!1707612 key!3287) lt!1708008) (= lambda!174948 lambda!174758))))

(declare-fun bs!870671 () Bool)

(assert (= bs!870671 (and b!4533844 d!1399264)))

(assert (=> bs!870671 (= (= (-!410 lt!1707612 key!3287) lt!1708012) (= lambda!174948 lambda!174759))))

(declare-fun bs!870672 () Bool)

(assert (= bs!870672 (and b!4533844 d!1399688)))

(assert (=> bs!870672 (= (= (-!410 lt!1707612 key!3287) lt!1707972) (= lambda!174948 lambda!174861))))

(declare-fun bs!870673 () Bool)

(assert (= bs!870673 (and b!4533844 b!4533789)))

(assert (=> bs!870673 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174948 lambda!174939))))

(declare-fun bs!870674 () Bool)

(assert (= bs!870674 (and b!4533844 b!4533834)))

(assert (=> bs!870674 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174948 lambda!174942))))

(declare-fun bs!870675 () Bool)

(assert (= bs!870675 (and b!4533844 b!4533833)))

(assert (=> bs!870675 (= (= (-!410 lt!1707612 key!3287) lt!1709030) (= lambda!174948 lambda!174944))))

(declare-fun bs!870676 () Bool)

(assert (= bs!870676 (and b!4533844 b!4533658)))

(assert (=> bs!870676 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174948 lambda!174921))))

(declare-fun bs!870677 () Bool)

(assert (= bs!870677 (and b!4533844 b!4533160)))

(assert (=> bs!870677 (= (= (-!410 lt!1707612 key!3287) lt!1708468) (= lambda!174948 lambda!174851))))

(declare-fun bs!870678 () Bool)

(assert (= bs!870678 (and b!4533844 b!4532427)))

(assert (=> bs!870678 (= (= (-!410 lt!1707612 key!3287) lt!1707972) (= lambda!174948 lambda!174754))))

(declare-fun bs!870679 () Bool)

(assert (= bs!870679 (and b!4533844 d!1399874)))

(assert (=> bs!870679 (= (= (-!410 lt!1707612 key!3287) lt!1708737) (= lambda!174948 lambda!174906))))

(declare-fun bs!870680 () Bool)

(assert (= bs!870680 (and b!4533844 d!1399764)))

(assert (=> bs!870680 (= (= (-!410 lt!1707612 key!3287) lt!1708609) (= lambda!174948 lambda!174873))))

(declare-fun bs!870681 () Bool)

(assert (= bs!870681 (and b!4533844 b!4532128)))

(assert (=> bs!870681 (not (= lambda!174948 lambda!174637))))

(declare-fun bs!870682 () Bool)

(assert (= bs!870682 (and b!4533844 b!4532469)))

(assert (=> bs!870682 (= (= (-!410 lt!1707612 key!3287) lt!1707612) (= lambda!174948 lambda!174765))))

(declare-fun bs!870683 () Bool)

(assert (= bs!870683 (and b!4533844 d!1399278)))

(assert (=> bs!870683 (= (= (-!410 lt!1707612 key!3287) lt!1708038) (= lambda!174948 lambda!174767))))

(declare-fun bs!870684 () Bool)

(assert (= bs!870684 (and b!4533844 b!4533231)))

(assert (=> bs!870684 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174948 lambda!174863))))

(declare-fun bs!870685 () Bool)

(assert (= bs!870685 (and b!4533844 b!4532470)))

(assert (=> bs!870685 (= (= (-!410 lt!1707612 key!3287) lt!1707612) (= lambda!174948 lambda!174764))))

(declare-fun bs!870686 () Bool)

(assert (= bs!870686 (and b!4533844 d!1399618)))

(assert (=> bs!870686 (= (= (-!410 lt!1707612 key!3287) lt!1708034) (= lambda!174948 lambda!174847))))

(assert (=> bs!870678 (= (= (-!410 lt!1707612 key!3287) lt!1707600) (= lambda!174948 lambda!174753))))

(declare-fun bs!870687 () Bool)

(assert (= bs!870687 (and b!4533844 d!1399690)))

(assert (=> bs!870687 (= (= (-!410 lt!1707612 key!3287) lt!1708558) (= lambda!174948 lambda!174867))))

(declare-fun bs!870688 () Bool)

(assert (= bs!870688 (and b!4533844 b!4533230)))

(assert (=> bs!870688 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174948 lambda!174864))))

(assert (=> bs!870675 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174948 lambda!174943))))

(declare-fun bs!870689 () Bool)

(assert (= bs!870689 (and b!4533844 d!1399580)))

(assert (=> bs!870689 (not (= lambda!174948 lambda!174838))))

(declare-fun bs!870690 () Bool)

(assert (= bs!870690 (and b!4533844 d!1399970)))

(assert (=> bs!870690 (= (= (-!410 lt!1707612 key!3287) lt!1708902) (= lambda!174948 lambda!174927))))

(declare-fun bs!870691 () Bool)

(assert (= bs!870691 (and b!4533844 b!4533657)))

(assert (=> bs!870691 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174948 lambda!174922))))

(declare-fun bs!870692 () Bool)

(assert (= bs!870692 (and b!4533844 b!4533314)))

(assert (=> bs!870692 (= (= (-!410 lt!1707612 key!3287) lt!1708605) (= lambda!174948 lambda!174871))))

(assert (=> bs!870668 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174948 lambda!174877))))

(declare-fun bs!870693 () Bool)

(assert (= bs!870693 (and b!4533844 b!4533161)))

(assert (=> bs!870693 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174948 lambda!174848))))

(declare-fun bs!870694 () Bool)

(assert (= bs!870694 (and b!4533844 b!4533845)))

(assert (=> bs!870694 (= lambda!174948 lambda!174947)))

(assert (=> bs!870692 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174948 lambda!174870))))

(declare-fun bs!870695 () Bool)

(assert (= bs!870695 (and b!4533844 d!1399090)))

(assert (=> bs!870695 (not (= lambda!174948 lambda!174643))))

(declare-fun bs!870696 () Bool)

(assert (= bs!870696 (and b!4533844 b!4533349)))

(assert (=> bs!870696 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174948 lambda!174875))))

(assert (=> bs!870688 (= (= (-!410 lt!1707612 key!3287) lt!1708554) (= lambda!174948 lambda!174866))))

(declare-fun bs!870697 () Bool)

(assert (= bs!870697 (and b!4533844 b!4533315)))

(assert (=> bs!870697 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174948 lambda!174868))))

(assert (=> bs!870677 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174948 lambda!174850))))

(declare-fun bs!870698 () Bool)

(assert (= bs!870698 (and b!4533844 d!1399182)))

(assert (=> bs!870698 (= (= (-!410 lt!1707612 key!3287) lt!1707976) (= lambda!174948 lambda!174755))))

(declare-fun bs!870699 () Bool)

(assert (= bs!870699 (and b!4533844 d!1400068)))

(assert (=> bs!870699 (= (= (-!410 lt!1707612 key!3287) lt!1708998) (= lambda!174948 lambda!174941))))

(assert (=> bs!870691 (= (= (-!410 lt!1707612 key!3287) lt!1708898) (= lambda!174948 lambda!174923))))

(declare-fun bs!870700 () Bool)

(assert (= bs!870700 (and b!4533844 d!1399622)))

(assert (=> bs!870700 (= (= (-!410 lt!1707612 key!3287) lt!1708472) (= lambda!174948 lambda!174853))))

(assert (=> bs!870670 (= (= (-!410 lt!1707612 key!3287) lt!1707628) (= lambda!174948 lambda!174757))))

(assert (=> bs!870673 (= (= (-!410 lt!1707612 key!3287) lt!1708994) (= lambda!174948 lambda!174940))))

(declare-fun bs!870701 () Bool)

(assert (= bs!870701 (and b!4533844 b!4533468)))

(assert (=> bs!870701 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174948 lambda!174903))))

(assert (=> bs!870701 (= (= (-!410 lt!1707612 key!3287) lt!1708733) (= lambda!174948 lambda!174904))))

(declare-fun bs!870702 () Bool)

(assert (= bs!870702 (and b!4533844 b!4532428)))

(assert (=> bs!870702 (= (= (-!410 lt!1707612 key!3287) lt!1707600) (= lambda!174948 lambda!174752))))

(declare-fun bs!870703 () Bool)

(assert (= bs!870703 (and b!4533844 b!4533469)))

(assert (=> bs!870703 (= (= (-!410 lt!1707612 key!3287) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174948 lambda!174901))))

(declare-fun bs!870704 () Bool)

(assert (= bs!870704 (and b!4533844 b!4533790)))

(assert (=> bs!870704 (= (= (-!410 lt!1707612 key!3287) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174948 lambda!174938))))

(declare-fun bs!870705 () Bool)

(assert (= bs!870705 (and b!4533844 b!4532450)))

(assert (=> bs!870705 (= (= (-!410 lt!1707612 key!3287) lt!1707628) (= lambda!174948 lambda!174756))))

(declare-fun bs!870706 () Bool)

(assert (= bs!870706 (and b!4533844 d!1400052)))

(assert (=> bs!870706 (= (= (-!410 lt!1707612 key!3287) lt!1708008) (= lambda!174948 lambda!174937))))

(assert (=> bs!870682 (= (= (-!410 lt!1707612 key!3287) lt!1708034) (= lambda!174948 lambda!174766))))

(declare-fun bs!870707 () Bool)

(assert (= bs!870707 (and b!4533844 d!1400020)))

(assert (=> bs!870707 (= (= (-!410 lt!1707612 key!3287) lt!1707612) (= lambda!174948 lambda!174936))))

(assert (=> b!4533844 true))

(declare-fun lambda!174949 () Int)

(declare-fun lt!1709054 () ListMap!3637)

(assert (=> bs!870667 (= (= lt!1709054 lt!1709034) (= lambda!174949 lambda!174945))))

(assert (=> bs!870668 (= (= lt!1709054 lt!1708634) (= lambda!174949 lambda!174879))))

(assert (=> b!4533844 (= (= lt!1709054 (-!410 lt!1707612 key!3287)) (= lambda!174949 lambda!174948))))

(assert (=> bs!870669 (= (= lt!1709054 lt!1708638) (= lambda!174949 lambda!174880))))

(assert (=> bs!870670 (= (= lt!1709054 lt!1708008) (= lambda!174949 lambda!174758))))

(assert (=> bs!870671 (= (= lt!1709054 lt!1708012) (= lambda!174949 lambda!174759))))

(assert (=> bs!870672 (= (= lt!1709054 lt!1707972) (= lambda!174949 lambda!174861))))

(assert (=> bs!870673 (= (= lt!1709054 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174949 lambda!174939))))

(assert (=> bs!870674 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174949 lambda!174942))))

(assert (=> bs!870675 (= (= lt!1709054 lt!1709030) (= lambda!174949 lambda!174944))))

(assert (=> bs!870676 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174949 lambda!174921))))

(assert (=> bs!870677 (= (= lt!1709054 lt!1708468) (= lambda!174949 lambda!174851))))

(assert (=> bs!870678 (= (= lt!1709054 lt!1707972) (= lambda!174949 lambda!174754))))

(assert (=> bs!870679 (= (= lt!1709054 lt!1708737) (= lambda!174949 lambda!174906))))

(assert (=> bs!870680 (= (= lt!1709054 lt!1708609) (= lambda!174949 lambda!174873))))

(assert (=> bs!870681 (not (= lambda!174949 lambda!174637))))

(assert (=> bs!870682 (= (= lt!1709054 lt!1707612) (= lambda!174949 lambda!174765))))

(assert (=> bs!870683 (= (= lt!1709054 lt!1708038) (= lambda!174949 lambda!174767))))

(assert (=> bs!870684 (= (= lt!1709054 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174949 lambda!174863))))

(assert (=> bs!870685 (= (= lt!1709054 lt!1707612) (= lambda!174949 lambda!174764))))

(assert (=> bs!870686 (= (= lt!1709054 lt!1708034) (= lambda!174949 lambda!174847))))

(assert (=> bs!870678 (= (= lt!1709054 lt!1707600) (= lambda!174949 lambda!174753))))

(assert (=> bs!870687 (= (= lt!1709054 lt!1708558) (= lambda!174949 lambda!174867))))

(assert (=> bs!870688 (= (= lt!1709054 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174949 lambda!174864))))

(assert (=> bs!870675 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174949 lambda!174943))))

(assert (=> bs!870689 (not (= lambda!174949 lambda!174838))))

(assert (=> bs!870690 (= (= lt!1709054 lt!1708902) (= lambda!174949 lambda!174927))))

(assert (=> bs!870691 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174949 lambda!174922))))

(assert (=> bs!870692 (= (= lt!1709054 lt!1708605) (= lambda!174949 lambda!174871))))

(assert (=> bs!870668 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174949 lambda!174877))))

(assert (=> bs!870693 (= (= lt!1709054 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174949 lambda!174848))))

(assert (=> bs!870694 (= (= lt!1709054 (-!410 lt!1707612 key!3287)) (= lambda!174949 lambda!174947))))

(assert (=> bs!870692 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174949 lambda!174870))))

(assert (=> bs!870695 (not (= lambda!174949 lambda!174643))))

(assert (=> bs!870696 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174949 lambda!174875))))

(assert (=> bs!870688 (= (= lt!1709054 lt!1708554) (= lambda!174949 lambda!174866))))

(assert (=> bs!870697 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174949 lambda!174868))))

(assert (=> bs!870677 (= (= lt!1709054 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174949 lambda!174850))))

(assert (=> bs!870698 (= (= lt!1709054 lt!1707976) (= lambda!174949 lambda!174755))))

(assert (=> bs!870699 (= (= lt!1709054 lt!1708998) (= lambda!174949 lambda!174941))))

(assert (=> bs!870691 (= (= lt!1709054 lt!1708898) (= lambda!174949 lambda!174923))))

(assert (=> bs!870700 (= (= lt!1709054 lt!1708472) (= lambda!174949 lambda!174853))))

(assert (=> bs!870670 (= (= lt!1709054 lt!1707628) (= lambda!174949 lambda!174757))))

(assert (=> bs!870673 (= (= lt!1709054 lt!1708994) (= lambda!174949 lambda!174940))))

(assert (=> bs!870701 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174949 lambda!174903))))

(assert (=> bs!870701 (= (= lt!1709054 lt!1708733) (= lambda!174949 lambda!174904))))

(assert (=> bs!870702 (= (= lt!1709054 lt!1707600) (= lambda!174949 lambda!174752))))

(assert (=> bs!870703 (= (= lt!1709054 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174949 lambda!174901))))

(assert (=> bs!870704 (= (= lt!1709054 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174949 lambda!174938))))

(assert (=> bs!870705 (= (= lt!1709054 lt!1707628) (= lambda!174949 lambda!174756))))

(assert (=> bs!870706 (= (= lt!1709054 lt!1708008) (= lambda!174949 lambda!174937))))

(assert (=> bs!870682 (= (= lt!1709054 lt!1708034) (= lambda!174949 lambda!174766))))

(assert (=> bs!870707 (= (= lt!1709054 lt!1707612) (= lambda!174949 lambda!174936))))

(assert (=> b!4533844 true))

(declare-fun bs!870708 () Bool)

(declare-fun d!1400170 () Bool)

(assert (= bs!870708 (and d!1400170 d!1400162)))

(declare-fun lambda!174950 () Int)

(declare-fun lt!1709058 () ListMap!3637)

(assert (=> bs!870708 (= (= lt!1709058 lt!1709034) (= lambda!174950 lambda!174945))))

(declare-fun bs!870709 () Bool)

(assert (= bs!870709 (and d!1400170 b!4533348)))

(assert (=> bs!870709 (= (= lt!1709058 lt!1708634) (= lambda!174950 lambda!174879))))

(declare-fun bs!870710 () Bool)

(assert (= bs!870710 (and d!1400170 b!4533844)))

(assert (=> bs!870710 (= (= lt!1709058 (-!410 lt!1707612 key!3287)) (= lambda!174950 lambda!174948))))

(declare-fun bs!870711 () Bool)

(assert (= bs!870711 (and d!1400170 d!1399802)))

(assert (=> bs!870711 (= (= lt!1709058 lt!1708638) (= lambda!174950 lambda!174880))))

(declare-fun bs!870712 () Bool)

(assert (= bs!870712 (and d!1400170 b!4532449)))

(assert (=> bs!870712 (= (= lt!1709058 lt!1708008) (= lambda!174950 lambda!174758))))

(declare-fun bs!870713 () Bool)

(assert (= bs!870713 (and d!1400170 d!1399264)))

(assert (=> bs!870713 (= (= lt!1709058 lt!1708012) (= lambda!174950 lambda!174759))))

(declare-fun bs!870714 () Bool)

(assert (= bs!870714 (and d!1400170 d!1399688)))

(assert (=> bs!870714 (= (= lt!1709058 lt!1707972) (= lambda!174950 lambda!174861))))

(declare-fun bs!870715 () Bool)

(assert (= bs!870715 (and d!1400170 b!4533789)))

(assert (=> bs!870715 (= (= lt!1709058 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174950 lambda!174939))))

(declare-fun bs!870716 () Bool)

(assert (= bs!870716 (and d!1400170 b!4533834)))

(assert (=> bs!870716 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174950 lambda!174942))))

(declare-fun bs!870717 () Bool)

(assert (= bs!870717 (and d!1400170 b!4533833)))

(assert (=> bs!870717 (= (= lt!1709058 lt!1709030) (= lambda!174950 lambda!174944))))

(declare-fun bs!870718 () Bool)

(assert (= bs!870718 (and d!1400170 b!4533658)))

(assert (=> bs!870718 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174950 lambda!174921))))

(declare-fun bs!870719 () Bool)

(assert (= bs!870719 (and d!1400170 b!4533160)))

(assert (=> bs!870719 (= (= lt!1709058 lt!1708468) (= lambda!174950 lambda!174851))))

(declare-fun bs!870720 () Bool)

(assert (= bs!870720 (and d!1400170 b!4532427)))

(assert (=> bs!870720 (= (= lt!1709058 lt!1707972) (= lambda!174950 lambda!174754))))

(declare-fun bs!870721 () Bool)

(assert (= bs!870721 (and d!1400170 d!1399874)))

(assert (=> bs!870721 (= (= lt!1709058 lt!1708737) (= lambda!174950 lambda!174906))))

(declare-fun bs!870722 () Bool)

(assert (= bs!870722 (and d!1400170 d!1399764)))

(assert (=> bs!870722 (= (= lt!1709058 lt!1708609) (= lambda!174950 lambda!174873))))

(declare-fun bs!870723 () Bool)

(assert (= bs!870723 (and d!1400170 b!4532128)))

(assert (=> bs!870723 (not (= lambda!174950 lambda!174637))))

(declare-fun bs!870724 () Bool)

(assert (= bs!870724 (and d!1400170 b!4532469)))

(assert (=> bs!870724 (= (= lt!1709058 lt!1707612) (= lambda!174950 lambda!174765))))

(declare-fun bs!870725 () Bool)

(assert (= bs!870725 (and d!1400170 d!1399278)))

(assert (=> bs!870725 (= (= lt!1709058 lt!1708038) (= lambda!174950 lambda!174767))))

(declare-fun bs!870726 () Bool)

(assert (= bs!870726 (and d!1400170 b!4533231)))

(assert (=> bs!870726 (= (= lt!1709058 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174950 lambda!174863))))

(declare-fun bs!870727 () Bool)

(assert (= bs!870727 (and d!1400170 b!4532470)))

(assert (=> bs!870727 (= (= lt!1709058 lt!1707612) (= lambda!174950 lambda!174764))))

(declare-fun bs!870728 () Bool)

(assert (= bs!870728 (and d!1400170 d!1399618)))

(assert (=> bs!870728 (= (= lt!1709058 lt!1708034) (= lambda!174950 lambda!174847))))

(assert (=> bs!870720 (= (= lt!1709058 lt!1707600) (= lambda!174950 lambda!174753))))

(declare-fun bs!870729 () Bool)

(assert (= bs!870729 (and d!1400170 d!1399690)))

(assert (=> bs!870729 (= (= lt!1709058 lt!1708558) (= lambda!174950 lambda!174867))))

(declare-fun bs!870730 () Bool)

(assert (= bs!870730 (and d!1400170 b!4533230)))

(assert (=> bs!870730 (= (= lt!1709058 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174950 lambda!174864))))

(assert (=> bs!870717 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174950 lambda!174943))))

(declare-fun bs!870731 () Bool)

(assert (= bs!870731 (and d!1400170 d!1399580)))

(assert (=> bs!870731 (not (= lambda!174950 lambda!174838))))

(declare-fun bs!870732 () Bool)

(assert (= bs!870732 (and d!1400170 d!1399970)))

(assert (=> bs!870732 (= (= lt!1709058 lt!1708902) (= lambda!174950 lambda!174927))))

(declare-fun bs!870733 () Bool)

(assert (= bs!870733 (and d!1400170 b!4533657)))

(assert (=> bs!870733 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174950 lambda!174922))))

(declare-fun bs!870734 () Bool)

(assert (= bs!870734 (and d!1400170 b!4533314)))

(assert (=> bs!870734 (= (= lt!1709058 lt!1708605) (= lambda!174950 lambda!174871))))

(assert (=> bs!870709 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174950 lambda!174877))))

(declare-fun bs!870735 () Bool)

(assert (= bs!870735 (and d!1400170 b!4533161)))

(assert (=> bs!870735 (= (= lt!1709058 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174950 lambda!174848))))

(declare-fun bs!870736 () Bool)

(assert (= bs!870736 (and d!1400170 b!4533845)))

(assert (=> bs!870736 (= (= lt!1709058 (-!410 lt!1707612 key!3287)) (= lambda!174950 lambda!174947))))

(assert (=> bs!870734 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174950 lambda!174870))))

(declare-fun bs!870737 () Bool)

(assert (= bs!870737 (and d!1400170 d!1399090)))

(assert (=> bs!870737 (not (= lambda!174950 lambda!174643))))

(declare-fun bs!870738 () Bool)

(assert (= bs!870738 (and d!1400170 b!4533349)))

(assert (=> bs!870738 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174950 lambda!174875))))

(assert (=> bs!870730 (= (= lt!1709058 lt!1708554) (= lambda!174950 lambda!174866))))

(declare-fun bs!870739 () Bool)

(assert (= bs!870739 (and d!1400170 b!4533315)))

(assert (=> bs!870739 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174950 lambda!174868))))

(assert (=> bs!870719 (= (= lt!1709058 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174950 lambda!174850))))

(assert (=> bs!870710 (= (= lt!1709058 lt!1709054) (= lambda!174950 lambda!174949))))

(declare-fun bs!870740 () Bool)

(assert (= bs!870740 (and d!1400170 d!1399182)))

(assert (=> bs!870740 (= (= lt!1709058 lt!1707976) (= lambda!174950 lambda!174755))))

(declare-fun bs!870741 () Bool)

(assert (= bs!870741 (and d!1400170 d!1400068)))

(assert (=> bs!870741 (= (= lt!1709058 lt!1708998) (= lambda!174950 lambda!174941))))

(assert (=> bs!870733 (= (= lt!1709058 lt!1708898) (= lambda!174950 lambda!174923))))

(declare-fun bs!870742 () Bool)

(assert (= bs!870742 (and d!1400170 d!1399622)))

(assert (=> bs!870742 (= (= lt!1709058 lt!1708472) (= lambda!174950 lambda!174853))))

(assert (=> bs!870712 (= (= lt!1709058 lt!1707628) (= lambda!174950 lambda!174757))))

(assert (=> bs!870715 (= (= lt!1709058 lt!1708994) (= lambda!174950 lambda!174940))))

(declare-fun bs!870743 () Bool)

(assert (= bs!870743 (and d!1400170 b!4533468)))

(assert (=> bs!870743 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174950 lambda!174903))))

(assert (=> bs!870743 (= (= lt!1709058 lt!1708733) (= lambda!174950 lambda!174904))))

(declare-fun bs!870744 () Bool)

(assert (= bs!870744 (and d!1400170 b!4532428)))

(assert (=> bs!870744 (= (= lt!1709058 lt!1707600) (= lambda!174950 lambda!174752))))

(declare-fun bs!870745 () Bool)

(assert (= bs!870745 (and d!1400170 b!4533469)))

(assert (=> bs!870745 (= (= lt!1709058 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174950 lambda!174901))))

(declare-fun bs!870746 () Bool)

(assert (= bs!870746 (and d!1400170 b!4533790)))

(assert (=> bs!870746 (= (= lt!1709058 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174950 lambda!174938))))

(declare-fun bs!870747 () Bool)

(assert (= bs!870747 (and d!1400170 b!4532450)))

(assert (=> bs!870747 (= (= lt!1709058 lt!1707628) (= lambda!174950 lambda!174756))))

(declare-fun bs!870748 () Bool)

(assert (= bs!870748 (and d!1400170 d!1400052)))

(assert (=> bs!870748 (= (= lt!1709058 lt!1708008) (= lambda!174950 lambda!174937))))

(assert (=> bs!870724 (= (= lt!1709058 lt!1708034) (= lambda!174950 lambda!174766))))

(declare-fun bs!870749 () Bool)

(assert (= bs!870749 (and d!1400170 d!1400020)))

(assert (=> bs!870749 (= (= lt!1709058 lt!1707612) (= lambda!174950 lambda!174936))))

(assert (=> d!1400170 true))

(declare-fun b!4533843 () Bool)

(declare-fun e!2825105 () Bool)

(assert (=> b!4533843 (= e!2825105 (forall!10317 (toList!4376 (-!410 lt!1707612 key!3287)) lambda!174949))))

(declare-fun bm!316101 () Bool)

(declare-fun call!316106 () Unit!97092)

(assert (=> bm!316101 (= call!316106 (lemmaContainsAllItsOwnKeys!356 (-!410 lt!1707612 key!3287)))))

(declare-fun e!2825107 () Bool)

(assert (=> d!1400170 e!2825107))

(declare-fun res!1888554 () Bool)

(assert (=> d!1400170 (=> (not res!1888554) (not e!2825107))))

(assert (=> d!1400170 (= res!1888554 (forall!10317 (_2!28880 lt!1707605) lambda!174950))))

(declare-fun e!2825106 () ListMap!3637)

(assert (=> d!1400170 (= lt!1709058 e!2825106)))

(declare-fun c!774265 () Bool)

(assert (=> d!1400170 (= c!774265 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1400170 (noDuplicateKeys!1184 (_2!28880 lt!1707605))))

(assert (=> d!1400170 (= (addToMapMapFromBucket!711 (_2!28880 lt!1707605) (-!410 lt!1707612 key!3287)) lt!1709058)))

(assert (=> b!4533844 (= e!2825106 lt!1709054)))

(declare-fun lt!1709050 () ListMap!3637)

(assert (=> b!4533844 (= lt!1709050 (+!1582 (-!410 lt!1707612 key!3287) (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4533844 (= lt!1709054 (addToMapMapFromBucket!711 (t!357798 (_2!28880 lt!1707605)) (+!1582 (-!410 lt!1707612 key!3287) (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun lt!1709061 () Unit!97092)

(assert (=> b!4533844 (= lt!1709061 call!316106)))

(declare-fun call!316108 () Bool)

(assert (=> b!4533844 call!316108))

(declare-fun lt!1709059 () Unit!97092)

(assert (=> b!4533844 (= lt!1709059 lt!1709061)))

(assert (=> b!4533844 (forall!10317 (toList!4376 lt!1709050) lambda!174949)))

(declare-fun lt!1709066 () Unit!97092)

(declare-fun Unit!97434 () Unit!97092)

(assert (=> b!4533844 (= lt!1709066 Unit!97434)))

(assert (=> b!4533844 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174949)))

(declare-fun lt!1709052 () Unit!97092)

(declare-fun Unit!97435 () Unit!97092)

(assert (=> b!4533844 (= lt!1709052 Unit!97435)))

(declare-fun lt!1709055 () Unit!97092)

(declare-fun Unit!97436 () Unit!97092)

(assert (=> b!4533844 (= lt!1709055 Unit!97436)))

(declare-fun lt!1709047 () Unit!97092)

(assert (=> b!4533844 (= lt!1709047 (forallContained!2573 (toList!4376 lt!1709050) lambda!174949 (h!56583 (_2!28880 lt!1707605))))))

(assert (=> b!4533844 (contains!13479 lt!1709050 (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1709057 () Unit!97092)

(declare-fun Unit!97437 () Unit!97092)

(assert (=> b!4533844 (= lt!1709057 Unit!97437)))

(assert (=> b!4533844 (contains!13479 lt!1709054 (_1!28879 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun lt!1709053 () Unit!97092)

(declare-fun Unit!97438 () Unit!97092)

(assert (=> b!4533844 (= lt!1709053 Unit!97438)))

(declare-fun call!316107 () Bool)

(assert (=> b!4533844 call!316107))

(declare-fun lt!1709049 () Unit!97092)

(declare-fun Unit!97439 () Unit!97092)

(assert (=> b!4533844 (= lt!1709049 Unit!97439)))

(assert (=> b!4533844 (forall!10317 (toList!4376 lt!1709050) lambda!174949)))

(declare-fun lt!1709046 () Unit!97092)

(declare-fun Unit!97440 () Unit!97092)

(assert (=> b!4533844 (= lt!1709046 Unit!97440)))

(declare-fun lt!1709063 () Unit!97092)

(declare-fun Unit!97441 () Unit!97092)

(assert (=> b!4533844 (= lt!1709063 Unit!97441)))

(declare-fun lt!1709048 () Unit!97092)

(assert (=> b!4533844 (= lt!1709048 (addForallContainsKeyThenBeforeAdding!356 (-!410 lt!1707612 key!3287) lt!1709054 (_1!28879 (h!56583 (_2!28880 lt!1707605))) (_2!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> b!4533844 (forall!10317 (toList!4376 (-!410 lt!1707612 key!3287)) lambda!174949)))

(declare-fun lt!1709062 () Unit!97092)

(assert (=> b!4533844 (= lt!1709062 lt!1709048)))

(assert (=> b!4533844 (forall!10317 (toList!4376 (-!410 lt!1707612 key!3287)) lambda!174949)))

(declare-fun lt!1709064 () Unit!97092)

(declare-fun Unit!97442 () Unit!97092)

(assert (=> b!4533844 (= lt!1709064 Unit!97442)))

(declare-fun res!1888556 () Bool)

(assert (=> b!4533844 (= res!1888556 (forall!10317 (_2!28880 lt!1707605) lambda!174949))))

(assert (=> b!4533844 (=> (not res!1888556) (not e!2825105))))

(assert (=> b!4533844 e!2825105))

(declare-fun lt!1709056 () Unit!97092)

(declare-fun Unit!97443 () Unit!97092)

(assert (=> b!4533844 (= lt!1709056 Unit!97443)))

(assert (=> b!4533845 (= e!2825106 (-!410 lt!1707612 key!3287))))

(declare-fun lt!1709051 () Unit!97092)

(assert (=> b!4533845 (= lt!1709051 call!316106)))

(assert (=> b!4533845 call!316107))

(declare-fun lt!1709060 () Unit!97092)

(assert (=> b!4533845 (= lt!1709060 lt!1709051)))

(assert (=> b!4533845 call!316108))

(declare-fun lt!1709065 () Unit!97092)

(declare-fun Unit!97444 () Unit!97092)

(assert (=> b!4533845 (= lt!1709065 Unit!97444)))

(declare-fun bm!316102 () Bool)

(assert (=> bm!316102 (= call!316108 (forall!10317 (toList!4376 (-!410 lt!1707612 key!3287)) (ite c!774265 lambda!174947 lambda!174948)))))

(declare-fun b!4533846 () Bool)

(assert (=> b!4533846 (= e!2825107 (invariantList!1035 (toList!4376 lt!1709058)))))

(declare-fun b!4533847 () Bool)

(declare-fun res!1888555 () Bool)

(assert (=> b!4533847 (=> (not res!1888555) (not e!2825107))))

(assert (=> b!4533847 (= res!1888555 (forall!10317 (toList!4376 (-!410 lt!1707612 key!3287)) lambda!174950))))

(declare-fun bm!316103 () Bool)

(assert (=> bm!316103 (= call!316107 (forall!10317 (ite c!774265 (toList!4376 (-!410 lt!1707612 key!3287)) (_2!28880 lt!1707605)) (ite c!774265 lambda!174947 lambda!174949)))))

(assert (= (and d!1400170 c!774265) b!4533845))

(assert (= (and d!1400170 (not c!774265)) b!4533844))

(assert (= (and b!4533844 res!1888556) b!4533843))

(assert (= (or b!4533845 b!4533844) bm!316103))

(assert (= (or b!4533845 b!4533844) bm!316102))

(assert (= (or b!4533845 b!4533844) bm!316101))

(assert (= (and d!1400170 res!1888554) b!4533847))

(assert (= (and b!4533847 res!1888555) b!4533846))

(declare-fun m!5294375 () Bool)

(assert (=> b!4533844 m!5294375))

(assert (=> b!4533844 m!5290755))

(declare-fun m!5294377 () Bool)

(assert (=> b!4533844 m!5294377))

(declare-fun m!5294379 () Bool)

(assert (=> b!4533844 m!5294379))

(declare-fun m!5294381 () Bool)

(assert (=> b!4533844 m!5294381))

(assert (=> b!4533844 m!5290755))

(declare-fun m!5294383 () Bool)

(assert (=> b!4533844 m!5294383))

(declare-fun m!5294385 () Bool)

(assert (=> b!4533844 m!5294385))

(declare-fun m!5294387 () Bool)

(assert (=> b!4533844 m!5294387))

(declare-fun m!5294389 () Bool)

(assert (=> b!4533844 m!5294389))

(assert (=> b!4533844 m!5294379))

(assert (=> b!4533844 m!5294377))

(declare-fun m!5294391 () Bool)

(assert (=> b!4533844 m!5294391))

(declare-fun m!5294393 () Bool)

(assert (=> b!4533844 m!5294393))

(assert (=> b!4533844 m!5294381))

(declare-fun m!5294395 () Bool)

(assert (=> b!4533847 m!5294395))

(declare-fun m!5294397 () Bool)

(assert (=> bm!316102 m!5294397))

(assert (=> b!4533843 m!5294379))

(declare-fun m!5294399 () Bool)

(assert (=> b!4533846 m!5294399))

(assert (=> bm!316101 m!5290755))

(declare-fun m!5294401 () Bool)

(assert (=> bm!316101 m!5294401))

(declare-fun m!5294403 () Bool)

(assert (=> d!1400170 m!5294403))

(assert (=> d!1400170 m!5290767))

(declare-fun m!5294405 () Bool)

(assert (=> bm!316103 m!5294405))

(assert (=> d!1399280 d!1400170))

(declare-fun d!1400172 () Bool)

(assert (=> d!1400172 (= (addToMapMapFromBucket!711 (_2!28880 lt!1707605) (-!410 lt!1707612 key!3287)) (-!410 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612) key!3287))))

(assert (=> d!1400172 true))

(declare-fun _$14!1206 () Unit!97092)

(assert (=> d!1400172 (= (choose!29766 lt!1707612 key!3287 (_2!28880 lt!1707605)) _$14!1206)))

(declare-fun bs!870750 () Bool)

(assert (= bs!870750 d!1400172))

(assert (=> bs!870750 m!5290755))

(assert (=> bs!870750 m!5290755))

(assert (=> bs!870750 m!5291501))

(assert (=> bs!870750 m!5290719))

(assert (=> bs!870750 m!5290719))

(assert (=> bs!870750 m!5290721))

(assert (=> d!1399280 d!1400172))

(assert (=> d!1399280 d!1399088))

(assert (=> d!1399280 d!1399154))

(assert (=> d!1399280 d!1399276))

(declare-fun d!1400174 () Bool)

(declare-fun res!1888557 () Bool)

(declare-fun e!2825108 () Bool)

(assert (=> d!1400174 (=> res!1888557 e!2825108)))

(assert (=> d!1400174 (= res!1888557 (and ((_ is Cons!50712) (_2!28880 (h!56584 (toList!4375 lt!1707598)))) (= (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lt!1707598))))) key!3287)))))

(assert (=> d!1400174 (= (containsKey!1840 (_2!28880 (h!56584 (toList!4375 lt!1707598))) key!3287) e!2825108)))

(declare-fun b!4533848 () Bool)

(declare-fun e!2825109 () Bool)

(assert (=> b!4533848 (= e!2825108 e!2825109)))

(declare-fun res!1888558 () Bool)

(assert (=> b!4533848 (=> (not res!1888558) (not e!2825109))))

(assert (=> b!4533848 (= res!1888558 ((_ is Cons!50712) (_2!28880 (h!56584 (toList!4375 lt!1707598)))))))

(declare-fun b!4533849 () Bool)

(assert (=> b!4533849 (= e!2825109 (containsKey!1840 (t!357798 (_2!28880 (h!56584 (toList!4375 lt!1707598)))) key!3287))))

(assert (= (and d!1400174 (not res!1888557)) b!4533848))

(assert (= (and b!4533848 res!1888558) b!4533849))

(declare-fun m!5294407 () Bool)

(assert (=> b!4533849 m!5294407))

(assert (=> b!4532464 d!1400174))

(declare-fun d!1400176 () Bool)

(declare-fun res!1888559 () Bool)

(declare-fun e!2825110 () Bool)

(assert (=> d!1400176 (=> res!1888559 e!2825110)))

(assert (=> d!1400176 (= res!1888559 ((_ is Nil!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1400176 (= (forall!10317 (_2!28880 lt!1707605) lambda!174755) e!2825110)))

(declare-fun b!4533850 () Bool)

(declare-fun e!2825111 () Bool)

(assert (=> b!4533850 (= e!2825110 e!2825111)))

(declare-fun res!1888560 () Bool)

(assert (=> b!4533850 (=> (not res!1888560) (not e!2825111))))

(assert (=> b!4533850 (= res!1888560 (dynLambda!21197 lambda!174755 (h!56583 (_2!28880 lt!1707605))))))

(declare-fun b!4533851 () Bool)

(assert (=> b!4533851 (= e!2825111 (forall!10317 (t!357798 (_2!28880 lt!1707605)) lambda!174755))))

(assert (= (and d!1400176 (not res!1888559)) b!4533850))

(assert (= (and b!4533850 res!1888560) b!4533851))

(declare-fun b_lambda!157035 () Bool)

(assert (=> (not b_lambda!157035) (not b!4533850)))

(declare-fun m!5294409 () Bool)

(assert (=> b!4533850 m!5294409))

(declare-fun m!5294411 () Bool)

(assert (=> b!4533851 m!5294411))

(assert (=> d!1399182 d!1400176))

(assert (=> d!1399182 d!1399326))

(assert (=> b!4532175 d!1399532))

(assert (=> d!1399144 d!1400034))

(assert (=> d!1399144 d!1400032))

(declare-fun d!1400178 () Bool)

(assert (=> d!1400178 (= (isEmpty!28723 lt!1708101) (not ((_ is Some!11166) lt!1708101)))))

(assert (=> d!1399318 d!1400178))

(assert (=> d!1399318 d!1399326))

(declare-fun d!1400180 () Bool)

(declare-fun lt!1709067 () Bool)

(assert (=> d!1400180 (= lt!1709067 (select (content!8412 e!2824245) key!3287))))

(declare-fun e!2825112 () Bool)

(assert (=> d!1400180 (= lt!1709067 e!2825112)))

(declare-fun res!1888562 () Bool)

(assert (=> d!1400180 (=> (not res!1888562) (not e!2825112))))

(assert (=> d!1400180 (= res!1888562 ((_ is Cons!50715) e!2824245))))

(assert (=> d!1400180 (= (contains!13483 e!2824245 key!3287) lt!1709067)))

(declare-fun b!4533852 () Bool)

(declare-fun e!2825113 () Bool)

(assert (=> b!4533852 (= e!2825112 e!2825113)))

(declare-fun res!1888561 () Bool)

(assert (=> b!4533852 (=> res!1888561 e!2825113)))

(assert (=> b!4533852 (= res!1888561 (= (h!56588 e!2824245) key!3287))))

(declare-fun b!4533853 () Bool)

(assert (=> b!4533853 (= e!2825113 (contains!13483 (t!357801 e!2824245) key!3287))))

(assert (= (and d!1400180 res!1888562) b!4533852))

(assert (= (and b!4533852 (not res!1888561)) b!4533853))

(declare-fun m!5294413 () Bool)

(assert (=> d!1400180 m!5294413))

(declare-fun m!5294415 () Bool)

(assert (=> d!1400180 m!5294415))

(declare-fun m!5294417 () Bool)

(assert (=> b!4533853 m!5294417))

(assert (=> bm!315951 d!1400180))

(declare-fun d!1400182 () Bool)

(declare-fun res!1888563 () Bool)

(declare-fun e!2825114 () Bool)

(assert (=> d!1400182 (=> res!1888563 e!2825114)))

(assert (=> d!1400182 (= res!1888563 (not ((_ is Cons!50712) (t!357798 newBucket!178))))))

(assert (=> d!1400182 (= (noDuplicateKeys!1184 (t!357798 newBucket!178)) e!2825114)))

(declare-fun b!4533854 () Bool)

(declare-fun e!2825115 () Bool)

(assert (=> b!4533854 (= e!2825114 e!2825115)))

(declare-fun res!1888564 () Bool)

(assert (=> b!4533854 (=> (not res!1888564) (not e!2825115))))

(assert (=> b!4533854 (= res!1888564 (not (containsKey!1840 (t!357798 (t!357798 newBucket!178)) (_1!28879 (h!56583 (t!357798 newBucket!178))))))))

(declare-fun b!4533855 () Bool)

(assert (=> b!4533855 (= e!2825115 (noDuplicateKeys!1184 (t!357798 (t!357798 newBucket!178))))))

(assert (= (and d!1400182 (not res!1888563)) b!4533854))

(assert (= (and b!4533854 res!1888564) b!4533855))

(declare-fun m!5294419 () Bool)

(assert (=> b!4533854 m!5294419))

(declare-fun m!5294421 () Bool)

(assert (=> b!4533855 m!5294421))

(assert (=> b!4532478 d!1400182))

(declare-fun bs!870751 () Bool)

(declare-fun b!4533858 () Bool)

(assert (= bs!870751 (and b!4533858 b!4533649)))

(declare-fun lambda!174951 () Int)

(assert (=> bs!870751 (= (= (t!357798 (toList!4376 lt!1707612)) (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (= lambda!174951 lambda!174916))))

(declare-fun bs!870752 () Bool)

(assert (= bs!870752 (and b!4533858 b!4532969)))

(assert (=> bs!870752 (= (= (t!357798 (toList!4376 lt!1707612)) (toList!4376 lt!1707611)) (= lambda!174951 lambda!174829))))

(declare-fun bs!870753 () Bool)

(assert (= bs!870753 (and b!4533858 b!4533454)))

(assert (=> bs!870753 (= (= (t!357798 (toList!4376 lt!1707612)) (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))) (= lambda!174951 lambda!174897))))

(declare-fun bs!870754 () Bool)

(assert (= bs!870754 (and b!4533858 b!4533654)))

(assert (=> bs!870754 (= (= (t!357798 (toList!4376 lt!1707612)) (toList!4376 lt!1708025)) (= lambda!174951 lambda!174918))))

(declare-fun bs!870755 () Bool)

(assert (= bs!870755 (and b!4533858 b!4532901)))

(assert (=> bs!870755 (= (= (t!357798 (toList!4376 lt!1707612)) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174951 lambda!174827))))

(declare-fun bs!870756 () Bool)

(assert (= bs!870756 (and b!4533858 b!4533453)))

(assert (=> bs!870756 (= (= (t!357798 (toList!4376 lt!1707612)) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174951 lambda!174898))))

(declare-fun bs!870757 () Bool)

(assert (= bs!870757 (and b!4533858 b!4533096)))

(assert (=> bs!870757 (= (= (t!357798 (toList!4376 lt!1707612)) (toList!4376 lt!1707797)) (= lambda!174951 lambda!174835))))

(declare-fun bs!870758 () Bool)

(assert (= bs!870758 (and b!4533858 b!4533091)))

(assert (=> bs!870758 (= (= (t!357798 (toList!4376 lt!1707612)) (toList!4376 lt!1707612)) (= lambda!174951 lambda!174832))))

(declare-fun bs!870759 () Bool)

(assert (= bs!870759 (and b!4533858 b!4533448)))

(assert (=> bs!870759 (= (= (t!357798 (toList!4376 lt!1707612)) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174951 lambda!174896))))

(assert (=> b!4533858 true))

(declare-fun bs!870760 () Bool)

(declare-fun b!4533864 () Bool)

(assert (= bs!870760 (and b!4533864 b!4533649)))

(declare-fun lambda!174952 () Int)

(assert (=> bs!870760 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (= lambda!174952 lambda!174916))))

(declare-fun bs!870761 () Bool)

(assert (= bs!870761 (and b!4533864 b!4532969)))

(assert (=> bs!870761 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (toList!4376 lt!1707611)) (= lambda!174952 lambda!174829))))

(declare-fun bs!870762 () Bool)

(assert (= bs!870762 (and b!4533864 b!4533654)))

(assert (=> bs!870762 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (toList!4376 lt!1708025)) (= lambda!174952 lambda!174918))))

(declare-fun bs!870763 () Bool)

(assert (= bs!870763 (and b!4533864 b!4532901)))

(assert (=> bs!870763 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174952 lambda!174827))))

(declare-fun bs!870764 () Bool)

(assert (= bs!870764 (and b!4533864 b!4533453)))

(assert (=> bs!870764 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174952 lambda!174898))))

(declare-fun bs!870765 () Bool)

(assert (= bs!870765 (and b!4533864 b!4533096)))

(assert (=> bs!870765 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (toList!4376 lt!1707797)) (= lambda!174952 lambda!174835))))

(declare-fun bs!870766 () Bool)

(assert (= bs!870766 (and b!4533864 b!4533091)))

(assert (=> bs!870766 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (toList!4376 lt!1707612)) (= lambda!174952 lambda!174832))))

(declare-fun bs!870767 () Bool)

(assert (= bs!870767 (and b!4533864 b!4533448)))

(assert (=> bs!870767 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174952 lambda!174896))))

(declare-fun bs!870768 () Bool)

(assert (= bs!870768 (and b!4533864 b!4533858)))

(assert (=> bs!870768 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (t!357798 (toList!4376 lt!1707612))) (= lambda!174952 lambda!174951))))

(declare-fun bs!870769 () Bool)

(assert (= bs!870769 (and b!4533864 b!4533454)))

(assert (=> bs!870769 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612))) (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))) (= lambda!174952 lambda!174897))))

(assert (=> b!4533864 true))

(declare-fun bs!870770 () Bool)

(declare-fun b!4533863 () Bool)

(assert (= bs!870770 (and b!4533863 b!4533649)))

(declare-fun lambda!174953 () Int)

(assert (=> bs!870770 (= (= (toList!4376 lt!1707612) (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (= lambda!174953 lambda!174916))))

(declare-fun bs!870771 () Bool)

(assert (= bs!870771 (and b!4533863 b!4532969)))

(assert (=> bs!870771 (= (= (toList!4376 lt!1707612) (toList!4376 lt!1707611)) (= lambda!174953 lambda!174829))))

(declare-fun bs!870772 () Bool)

(assert (= bs!870772 (and b!4533863 b!4533654)))

(assert (=> bs!870772 (= (= (toList!4376 lt!1707612) (toList!4376 lt!1708025)) (= lambda!174953 lambda!174918))))

(declare-fun bs!870773 () Bool)

(assert (= bs!870773 (and b!4533863 b!4532901)))

(assert (=> bs!870773 (= (= (toList!4376 lt!1707612) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174953 lambda!174827))))

(declare-fun bs!870774 () Bool)

(assert (= bs!870774 (and b!4533863 b!4533453)))

(assert (=> bs!870774 (= (= (toList!4376 lt!1707612) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174953 lambda!174898))))

(declare-fun bs!870775 () Bool)

(assert (= bs!870775 (and b!4533863 b!4533096)))

(assert (=> bs!870775 (= (= (toList!4376 lt!1707612) (toList!4376 lt!1707797)) (= lambda!174953 lambda!174835))))

(declare-fun bs!870776 () Bool)

(assert (= bs!870776 (and b!4533863 b!4533091)))

(assert (=> bs!870776 (= lambda!174953 lambda!174832)))

(declare-fun bs!870777 () Bool)

(assert (= bs!870777 (and b!4533863 b!4533448)))

(assert (=> bs!870777 (= (= (toList!4376 lt!1707612) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174953 lambda!174896))))

(declare-fun bs!870778 () Bool)

(assert (= bs!870778 (and b!4533863 b!4533858)))

(assert (=> bs!870778 (= (= (toList!4376 lt!1707612) (t!357798 (toList!4376 lt!1707612))) (= lambda!174953 lambda!174951))))

(declare-fun bs!870779 () Bool)

(assert (= bs!870779 (and b!4533863 b!4533454)))

(assert (=> bs!870779 (= (= (toList!4376 lt!1707612) (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))) (= lambda!174953 lambda!174897))))

(declare-fun bs!870780 () Bool)

(assert (= bs!870780 (and b!4533863 b!4533864)))

(assert (=> bs!870780 (= (= (toList!4376 lt!1707612) (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612)))) (= lambda!174953 lambda!174952))))

(assert (=> b!4533863 true))

(declare-fun bs!870781 () Bool)

(declare-fun b!4533859 () Bool)

(assert (= bs!870781 (and b!4533859 b!4532970)))

(declare-fun lambda!174954 () Int)

(assert (=> bs!870781 (= lambda!174954 lambda!174830)))

(declare-fun bs!870782 () Bool)

(assert (= bs!870782 (and b!4533859 b!4533092)))

(assert (=> bs!870782 (= lambda!174954 lambda!174833)))

(declare-fun bs!870783 () Bool)

(assert (= bs!870783 (and b!4533859 b!4533449)))

(assert (=> bs!870783 (= lambda!174954 lambda!174899)))

(declare-fun bs!870784 () Bool)

(assert (= bs!870784 (and b!4533859 b!4532902)))

(assert (=> bs!870784 (= lambda!174954 lambda!174828)))

(declare-fun bs!870785 () Bool)

(assert (= bs!870785 (and b!4533859 b!4533650)))

(assert (=> bs!870785 (= lambda!174954 lambda!174917)))

(declare-fun bs!870786 () Bool)

(assert (= bs!870786 (and b!4533859 b!4533097)))

(assert (=> bs!870786 (= lambda!174954 lambda!174836)))

(declare-fun bs!870787 () Bool)

(assert (= bs!870787 (and b!4533859 b!4533655)))

(assert (=> bs!870787 (= lambda!174954 lambda!174920)))

(declare-fun d!1400184 () Bool)

(declare-fun e!2825117 () Bool)

(assert (=> d!1400184 e!2825117))

(declare-fun res!1888565 () Bool)

(assert (=> d!1400184 (=> (not res!1888565) (not e!2825117))))

(declare-fun lt!1709069 () List!50839)

(assert (=> d!1400184 (= res!1888565 (noDuplicate!758 lt!1709069))))

(declare-fun e!2825118 () List!50839)

(assert (=> d!1400184 (= lt!1709069 e!2825118)))

(declare-fun c!774268 () Bool)

(assert (=> d!1400184 (= c!774268 ((_ is Cons!50712) (toList!4376 lt!1707612)))))

(assert (=> d!1400184 (invariantList!1035 (toList!4376 lt!1707612))))

(assert (=> d!1400184 (= (getKeysList!483 (toList!4376 lt!1707612)) lt!1709069)))

(declare-fun b!4533856 () Bool)

(assert (=> b!4533856 false))

(declare-fun e!2825116 () Unit!97092)

(declare-fun Unit!97445 () Unit!97092)

(assert (=> b!4533856 (= e!2825116 Unit!97445)))

(declare-fun b!4533857 () Bool)

(declare-fun Unit!97446 () Unit!97092)

(assert (=> b!4533857 (= e!2825116 Unit!97446)))

(assert (=> b!4533858 false))

(declare-fun lt!1709068 () Unit!97092)

(assert (=> b!4533858 (= lt!1709068 (forallContained!2575 (getKeysList!483 (t!357798 (toList!4376 lt!1707612))) lambda!174951 (_1!28879 (h!56583 (toList!4376 lt!1707612)))))))

(declare-fun e!2825119 () Unit!97092)

(declare-fun Unit!97447 () Unit!97092)

(assert (=> b!4533858 (= e!2825119 Unit!97447)))

(assert (=> b!4533859 (= e!2825117 (= (content!8412 lt!1709069) (content!8412 (map!11161 (toList!4376 lt!1707612) lambda!174954))))))

(declare-fun b!4533860 () Bool)

(assert (=> b!4533860 (= e!2825118 Nil!50715)))

(declare-fun b!4533861 () Bool)

(declare-fun Unit!97448 () Unit!97092)

(assert (=> b!4533861 (= e!2825119 Unit!97448)))

(declare-fun b!4533862 () Bool)

(declare-fun res!1888566 () Bool)

(assert (=> b!4533862 (=> (not res!1888566) (not e!2825117))))

(assert (=> b!4533862 (= res!1888566 (= (length!372 lt!1709069) (length!373 (toList!4376 lt!1707612))))))

(declare-fun res!1888567 () Bool)

(assert (=> b!4533863 (=> (not res!1888567) (not e!2825117))))

(assert (=> b!4533863 (= res!1888567 (forall!10319 lt!1709069 lambda!174953))))

(assert (=> b!4533864 (= e!2825118 (Cons!50715 (_1!28879 (h!56583 (toList!4376 lt!1707612))) (getKeysList!483 (t!357798 (toList!4376 lt!1707612)))))))

(declare-fun c!774266 () Bool)

(assert (=> b!4533864 (= c!774266 (containsKey!1843 (t!357798 (toList!4376 lt!1707612)) (_1!28879 (h!56583 (toList!4376 lt!1707612)))))))

(declare-fun lt!1709073 () Unit!97092)

(assert (=> b!4533864 (= lt!1709073 e!2825116)))

(declare-fun c!774267 () Bool)

(assert (=> b!4533864 (= c!774267 (contains!13483 (getKeysList!483 (t!357798 (toList!4376 lt!1707612))) (_1!28879 (h!56583 (toList!4376 lt!1707612)))))))

(declare-fun lt!1709074 () Unit!97092)

(assert (=> b!4533864 (= lt!1709074 e!2825119)))

(declare-fun lt!1709071 () List!50839)

(assert (=> b!4533864 (= lt!1709071 (getKeysList!483 (t!357798 (toList!4376 lt!1707612))))))

(declare-fun lt!1709070 () Unit!97092)

(assert (=> b!4533864 (= lt!1709070 (lemmaForallContainsAddHeadPreserves!179 (t!357798 (toList!4376 lt!1707612)) lt!1709071 (h!56583 (toList!4376 lt!1707612))))))

(assert (=> b!4533864 (forall!10319 lt!1709071 lambda!174952)))

(declare-fun lt!1709072 () Unit!97092)

(assert (=> b!4533864 (= lt!1709072 lt!1709070)))

(assert (= (and d!1400184 c!774268) b!4533864))

(assert (= (and d!1400184 (not c!774268)) b!4533860))

(assert (= (and b!4533864 c!774266) b!4533856))

(assert (= (and b!4533864 (not c!774266)) b!4533857))

(assert (= (and b!4533864 c!774267) b!4533858))

(assert (= (and b!4533864 (not c!774267)) b!4533861))

(assert (= (and d!1400184 res!1888565) b!4533862))

(assert (= (and b!4533862 res!1888566) b!4533863))

(assert (= (and b!4533863 res!1888567) b!4533859))

(declare-fun m!5294423 () Bool)

(assert (=> d!1400184 m!5294423))

(assert (=> d!1400184 m!5292177))

(declare-fun m!5294425 () Bool)

(assert (=> b!4533864 m!5294425))

(declare-fun m!5294427 () Bool)

(assert (=> b!4533864 m!5294427))

(declare-fun m!5294429 () Bool)

(assert (=> b!4533864 m!5294429))

(declare-fun m!5294431 () Bool)

(assert (=> b!4533864 m!5294431))

(assert (=> b!4533864 m!5294427))

(declare-fun m!5294433 () Bool)

(assert (=> b!4533864 m!5294433))

(declare-fun m!5294435 () Bool)

(assert (=> b!4533863 m!5294435))

(assert (=> b!4533858 m!5294427))

(assert (=> b!4533858 m!5294427))

(declare-fun m!5294437 () Bool)

(assert (=> b!4533858 m!5294437))

(declare-fun m!5294439 () Bool)

(assert (=> b!4533862 m!5294439))

(assert (=> b!4533862 m!5292419))

(declare-fun m!5294441 () Bool)

(assert (=> b!4533859 m!5294441))

(declare-fun m!5294443 () Bool)

(assert (=> b!4533859 m!5294443))

(assert (=> b!4533859 m!5294443))

(declare-fun m!5294445 () Bool)

(assert (=> b!4533859 m!5294445))

(assert (=> b!4532516 d!1400184))

(assert (=> b!4532468 d!1399632))

(declare-fun d!1400186 () Bool)

(assert (=> d!1400186 (dynLambda!21195 lambda!174635 lt!1707625)))

(assert (=> d!1400186 true))

(declare-fun _$7!1915 () Unit!97092)

(assert (=> d!1400186 (= (choose!29769 (toList!4375 lm!1477) lambda!174635 lt!1707625) _$7!1915)))

(declare-fun b_lambda!157037 () Bool)

(assert (=> (not b_lambda!157037) (not d!1400186)))

(declare-fun bs!870788 () Bool)

(assert (= bs!870788 d!1400186))

(assert (=> bs!870788 m!5291535))

(assert (=> d!1399296 d!1400186))

(assert (=> d!1399296 d!1399106))

(assert (=> b!4532180 d!1400134))

(declare-fun d!1400188 () Bool)

(assert (=> d!1400188 (containsKey!1843 (toList!4376 lt!1707611) key!3287)))

(declare-fun lt!1709075 () Unit!97092)

(assert (=> d!1400188 (= lt!1709075 (choose!29779 (toList!4376 lt!1707611) key!3287))))

(assert (=> d!1400188 (invariantList!1035 (toList!4376 lt!1707611))))

(assert (=> d!1400188 (= (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1707611) key!3287) lt!1709075)))

(declare-fun bs!870789 () Bool)

(assert (= bs!870789 d!1400188))

(assert (=> bs!870789 m!5290799))

(declare-fun m!5294447 () Bool)

(assert (=> bs!870789 m!5294447))

(assert (=> bs!870789 m!5292463))

(assert (=> b!4532180 d!1400188))

(declare-fun d!1400190 () Bool)

(declare-fun res!1888568 () Bool)

(declare-fun e!2825120 () Bool)

(assert (=> d!1400190 (=> res!1888568 e!2825120)))

(assert (=> d!1400190 (= res!1888568 ((_ is Nil!50712) (toList!4376 lt!1707612)))))

(assert (=> d!1400190 (= (forall!10317 (toList!4376 lt!1707612) (ite c!773916 lambda!174764 lambda!174765)) e!2825120)))

(declare-fun b!4533865 () Bool)

(declare-fun e!2825121 () Bool)

(assert (=> b!4533865 (= e!2825120 e!2825121)))

(declare-fun res!1888569 () Bool)

(assert (=> b!4533865 (=> (not res!1888569) (not e!2825121))))

(assert (=> b!4533865 (= res!1888569 (dynLambda!21197 (ite c!773916 lambda!174764 lambda!174765) (h!56583 (toList!4376 lt!1707612))))))

(declare-fun b!4533866 () Bool)

(assert (=> b!4533866 (= e!2825121 (forall!10317 (t!357798 (toList!4376 lt!1707612)) (ite c!773916 lambda!174764 lambda!174765)))))

(assert (= (and d!1400190 (not res!1888568)) b!4533865))

(assert (= (and b!4533865 res!1888569) b!4533866))

(declare-fun b_lambda!157039 () Bool)

(assert (=> (not b_lambda!157039) (not b!4533865)))

(declare-fun m!5294449 () Bool)

(assert (=> b!4533865 m!5294449))

(declare-fun m!5294451 () Bool)

(assert (=> b!4533866 m!5294451))

(assert (=> bm!315949 d!1400190))

(declare-fun bs!870790 () Bool)

(declare-fun d!1400192 () Bool)

(assert (= bs!870790 (and d!1400192 d!1400162)))

(declare-fun lambda!174955 () Int)

(assert (=> bs!870790 (= (= lt!1707628 lt!1709034) (= lambda!174955 lambda!174945))))

(declare-fun bs!870791 () Bool)

(assert (= bs!870791 (and d!1400192 b!4533348)))

(assert (=> bs!870791 (= (= lt!1707628 lt!1708634) (= lambda!174955 lambda!174879))))

(declare-fun bs!870792 () Bool)

(assert (= bs!870792 (and d!1400192 b!4533844)))

(assert (=> bs!870792 (= (= lt!1707628 (-!410 lt!1707612 key!3287)) (= lambda!174955 lambda!174948))))

(declare-fun bs!870793 () Bool)

(assert (= bs!870793 (and d!1400192 d!1399802)))

(assert (=> bs!870793 (= (= lt!1707628 lt!1708638) (= lambda!174955 lambda!174880))))

(declare-fun bs!870794 () Bool)

(assert (= bs!870794 (and d!1400192 b!4532449)))

(assert (=> bs!870794 (= (= lt!1707628 lt!1708008) (= lambda!174955 lambda!174758))))

(declare-fun bs!870795 () Bool)

(assert (= bs!870795 (and d!1400192 d!1400170)))

(assert (=> bs!870795 (= (= lt!1707628 lt!1709058) (= lambda!174955 lambda!174950))))

(declare-fun bs!870796 () Bool)

(assert (= bs!870796 (and d!1400192 d!1399264)))

(assert (=> bs!870796 (= (= lt!1707628 lt!1708012) (= lambda!174955 lambda!174759))))

(declare-fun bs!870797 () Bool)

(assert (= bs!870797 (and d!1400192 d!1399688)))

(assert (=> bs!870797 (= (= lt!1707628 lt!1707972) (= lambda!174955 lambda!174861))))

(declare-fun bs!870798 () Bool)

(assert (= bs!870798 (and d!1400192 b!4533789)))

(assert (=> bs!870798 (= (= lt!1707628 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174955 lambda!174939))))

(declare-fun bs!870799 () Bool)

(assert (= bs!870799 (and d!1400192 b!4533834)))

(assert (=> bs!870799 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174955 lambda!174942))))

(declare-fun bs!870800 () Bool)

(assert (= bs!870800 (and d!1400192 b!4533833)))

(assert (=> bs!870800 (= (= lt!1707628 lt!1709030) (= lambda!174955 lambda!174944))))

(declare-fun bs!870801 () Bool)

(assert (= bs!870801 (and d!1400192 b!4533658)))

(assert (=> bs!870801 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174955 lambda!174921))))

(declare-fun bs!870802 () Bool)

(assert (= bs!870802 (and d!1400192 b!4533160)))

(assert (=> bs!870802 (= (= lt!1707628 lt!1708468) (= lambda!174955 lambda!174851))))

(declare-fun bs!870803 () Bool)

(assert (= bs!870803 (and d!1400192 b!4532427)))

(assert (=> bs!870803 (= (= lt!1707628 lt!1707972) (= lambda!174955 lambda!174754))))

(declare-fun bs!870804 () Bool)

(assert (= bs!870804 (and d!1400192 d!1399874)))

(assert (=> bs!870804 (= (= lt!1707628 lt!1708737) (= lambda!174955 lambda!174906))))

(declare-fun bs!870805 () Bool)

(assert (= bs!870805 (and d!1400192 d!1399764)))

(assert (=> bs!870805 (= (= lt!1707628 lt!1708609) (= lambda!174955 lambda!174873))))

(declare-fun bs!870806 () Bool)

(assert (= bs!870806 (and d!1400192 b!4532128)))

(assert (=> bs!870806 (not (= lambda!174955 lambda!174637))))

(declare-fun bs!870807 () Bool)

(assert (= bs!870807 (and d!1400192 b!4532469)))

(assert (=> bs!870807 (= (= lt!1707628 lt!1707612) (= lambda!174955 lambda!174765))))

(declare-fun bs!870808 () Bool)

(assert (= bs!870808 (and d!1400192 d!1399278)))

(assert (=> bs!870808 (= (= lt!1707628 lt!1708038) (= lambda!174955 lambda!174767))))

(declare-fun bs!870809 () Bool)

(assert (= bs!870809 (and d!1400192 b!4533231)))

(assert (=> bs!870809 (= (= lt!1707628 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174955 lambda!174863))))

(declare-fun bs!870810 () Bool)

(assert (= bs!870810 (and d!1400192 b!4532470)))

(assert (=> bs!870810 (= (= lt!1707628 lt!1707612) (= lambda!174955 lambda!174764))))

(declare-fun bs!870811 () Bool)

(assert (= bs!870811 (and d!1400192 d!1399618)))

(assert (=> bs!870811 (= (= lt!1707628 lt!1708034) (= lambda!174955 lambda!174847))))

(assert (=> bs!870803 (= (= lt!1707628 lt!1707600) (= lambda!174955 lambda!174753))))

(declare-fun bs!870812 () Bool)

(assert (= bs!870812 (and d!1400192 d!1399690)))

(assert (=> bs!870812 (= (= lt!1707628 lt!1708558) (= lambda!174955 lambda!174867))))

(declare-fun bs!870813 () Bool)

(assert (= bs!870813 (and d!1400192 b!4533230)))

(assert (=> bs!870813 (= (= lt!1707628 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174955 lambda!174864))))

(assert (=> bs!870800 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174955 lambda!174943))))

(declare-fun bs!870814 () Bool)

(assert (= bs!870814 (and d!1400192 d!1399580)))

(assert (=> bs!870814 (not (= lambda!174955 lambda!174838))))

(declare-fun bs!870815 () Bool)

(assert (= bs!870815 (and d!1400192 d!1399970)))

(assert (=> bs!870815 (= (= lt!1707628 lt!1708902) (= lambda!174955 lambda!174927))))

(declare-fun bs!870816 () Bool)

(assert (= bs!870816 (and d!1400192 b!4533657)))

(assert (=> bs!870816 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174955 lambda!174922))))

(declare-fun bs!870817 () Bool)

(assert (= bs!870817 (and d!1400192 b!4533314)))

(assert (=> bs!870817 (= (= lt!1707628 lt!1708605) (= lambda!174955 lambda!174871))))

(assert (=> bs!870791 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174955 lambda!174877))))

(declare-fun bs!870818 () Bool)

(assert (= bs!870818 (and d!1400192 b!4533161)))

(assert (=> bs!870818 (= (= lt!1707628 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174955 lambda!174848))))

(declare-fun bs!870819 () Bool)

(assert (= bs!870819 (and d!1400192 b!4533845)))

(assert (=> bs!870819 (= (= lt!1707628 (-!410 lt!1707612 key!3287)) (= lambda!174955 lambda!174947))))

(assert (=> bs!870817 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174955 lambda!174870))))

(declare-fun bs!870820 () Bool)

(assert (= bs!870820 (and d!1400192 d!1399090)))

(assert (=> bs!870820 (not (= lambda!174955 lambda!174643))))

(declare-fun bs!870821 () Bool)

(assert (= bs!870821 (and d!1400192 b!4533349)))

(assert (=> bs!870821 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174955 lambda!174875))))

(assert (=> bs!870813 (= (= lt!1707628 lt!1708554) (= lambda!174955 lambda!174866))))

(declare-fun bs!870822 () Bool)

(assert (= bs!870822 (and d!1400192 b!4533315)))

(assert (=> bs!870822 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174955 lambda!174868))))

(assert (=> bs!870802 (= (= lt!1707628 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174955 lambda!174850))))

(assert (=> bs!870792 (= (= lt!1707628 lt!1709054) (= lambda!174955 lambda!174949))))

(declare-fun bs!870823 () Bool)

(assert (= bs!870823 (and d!1400192 d!1399182)))

(assert (=> bs!870823 (= (= lt!1707628 lt!1707976) (= lambda!174955 lambda!174755))))

(declare-fun bs!870824 () Bool)

(assert (= bs!870824 (and d!1400192 d!1400068)))

(assert (=> bs!870824 (= (= lt!1707628 lt!1708998) (= lambda!174955 lambda!174941))))

(assert (=> bs!870816 (= (= lt!1707628 lt!1708898) (= lambda!174955 lambda!174923))))

(declare-fun bs!870825 () Bool)

(assert (= bs!870825 (and d!1400192 d!1399622)))

(assert (=> bs!870825 (= (= lt!1707628 lt!1708472) (= lambda!174955 lambda!174853))))

(assert (=> bs!870794 (= lambda!174955 lambda!174757)))

(assert (=> bs!870798 (= (= lt!1707628 lt!1708994) (= lambda!174955 lambda!174940))))

(declare-fun bs!870826 () Bool)

(assert (= bs!870826 (and d!1400192 b!4533468)))

(assert (=> bs!870826 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174955 lambda!174903))))

(assert (=> bs!870826 (= (= lt!1707628 lt!1708733) (= lambda!174955 lambda!174904))))

(declare-fun bs!870827 () Bool)

(assert (= bs!870827 (and d!1400192 b!4532428)))

(assert (=> bs!870827 (= (= lt!1707628 lt!1707600) (= lambda!174955 lambda!174752))))

(declare-fun bs!870828 () Bool)

(assert (= bs!870828 (and d!1400192 b!4533469)))

(assert (=> bs!870828 (= (= lt!1707628 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174955 lambda!174901))))

(declare-fun bs!870829 () Bool)

(assert (= bs!870829 (and d!1400192 b!4533790)))

(assert (=> bs!870829 (= (= lt!1707628 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174955 lambda!174938))))

(declare-fun bs!870830 () Bool)

(assert (= bs!870830 (and d!1400192 b!4532450)))

(assert (=> bs!870830 (= lambda!174955 lambda!174756)))

(declare-fun bs!870831 () Bool)

(assert (= bs!870831 (and d!1400192 d!1400052)))

(assert (=> bs!870831 (= (= lt!1707628 lt!1708008) (= lambda!174955 lambda!174937))))

(assert (=> bs!870807 (= (= lt!1707628 lt!1708034) (= lambda!174955 lambda!174766))))

(declare-fun bs!870832 () Bool)

(assert (= bs!870832 (and d!1400192 d!1400020)))

(assert (=> bs!870832 (= (= lt!1707628 lt!1707612) (= lambda!174955 lambda!174936))))

(assert (=> d!1400192 true))

(assert (=> d!1400192 (forall!10317 (toList!4376 lt!1707628) lambda!174955)))

(declare-fun lt!1709076 () Unit!97092)

(assert (=> d!1400192 (= lt!1709076 (choose!29787 lt!1707628))))

(assert (=> d!1400192 (= (lemmaContainsAllItsOwnKeys!356 lt!1707628) lt!1709076)))

(declare-fun bs!870833 () Bool)

(assert (= bs!870833 d!1400192))

(declare-fun m!5294453 () Bool)

(assert (=> bs!870833 m!5294453))

(declare-fun m!5294455 () Bool)

(assert (=> bs!870833 m!5294455))

(assert (=> bm!315945 d!1400192))

(declare-fun b!4533868 () Bool)

(declare-fun e!2825122 () Option!11171)

(declare-fun e!2825123 () Option!11171)

(assert (=> b!4533868 (= e!2825122 e!2825123)))

(declare-fun c!774270 () Bool)

(assert (=> b!4533868 (= c!774270 (and ((_ is Cons!50713) (toList!4375 lt!1708092)) (not (= (_1!28880 (h!56584 (toList!4375 lt!1708092))) (_1!28880 lt!1707610)))))))

(declare-fun b!4533870 () Bool)

(assert (=> b!4533870 (= e!2825123 None!11170)))

(declare-fun b!4533869 () Bool)

(assert (=> b!4533869 (= e!2825123 (getValueByKey!1129 (t!357799 (toList!4375 lt!1708092)) (_1!28880 lt!1707610)))))

(declare-fun b!4533867 () Bool)

(assert (=> b!4533867 (= e!2825122 (Some!11170 (_2!28880 (h!56584 (toList!4375 lt!1708092)))))))

(declare-fun d!1400194 () Bool)

(declare-fun c!774269 () Bool)

(assert (=> d!1400194 (= c!774269 (and ((_ is Cons!50713) (toList!4375 lt!1708092)) (= (_1!28880 (h!56584 (toList!4375 lt!1708092))) (_1!28880 lt!1707610))))))

(assert (=> d!1400194 (= (getValueByKey!1129 (toList!4375 lt!1708092) (_1!28880 lt!1707610)) e!2825122)))

(assert (= (and d!1400194 c!774269) b!4533867))

(assert (= (and d!1400194 (not c!774269)) b!4533868))

(assert (= (and b!4533868 c!774270) b!4533869))

(assert (= (and b!4533868 (not c!774270)) b!4533870))

(declare-fun m!5294457 () Bool)

(assert (=> b!4533869 m!5294457))

(assert (=> b!4532528 d!1400194))

(declare-fun d!1400196 () Bool)

(declare-fun c!774273 () Bool)

(assert (=> d!1400196 (= c!774273 ((_ is Nil!50713) (t!357799 (toList!4375 lm!1477))))))

(declare-fun e!2825126 () (InoxSet tuple2!51172))

(assert (=> d!1400196 (= (content!8413 (t!357799 (toList!4375 lm!1477))) e!2825126)))

(declare-fun b!4533875 () Bool)

(assert (=> b!4533875 (= e!2825126 ((as const (Array tuple2!51172 Bool)) false))))

(declare-fun b!4533876 () Bool)

(assert (=> b!4533876 (= e!2825126 ((_ map or) (store ((as const (Array tuple2!51172 Bool)) false) (h!56584 (t!357799 (toList!4375 lm!1477))) true) (content!8413 (t!357799 (t!357799 (toList!4375 lm!1477))))))))

(assert (= (and d!1400196 c!774273) b!4533875))

(assert (= (and d!1400196 (not c!774273)) b!4533876))

(declare-fun m!5294459 () Bool)

(assert (=> b!4533876 m!5294459))

(assert (=> b!4533876 m!5294363))

(assert (=> d!1399316 d!1400196))

(declare-fun d!1400198 () Bool)

(declare-fun res!1888570 () Bool)

(declare-fun e!2825127 () Bool)

(assert (=> d!1400198 (=> res!1888570 e!2825127)))

(assert (=> d!1400198 (= res!1888570 (not ((_ is Cons!50712) (_2!28880 (h!56584 (toList!4375 lm!1477))))))))

(assert (=> d!1400198 (= (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lm!1477)))) e!2825127)))

(declare-fun b!4533877 () Bool)

(declare-fun e!2825128 () Bool)

(assert (=> b!4533877 (= e!2825127 e!2825128)))

(declare-fun res!1888571 () Bool)

(assert (=> b!4533877 (=> (not res!1888571) (not e!2825128))))

(assert (=> b!4533877 (= res!1888571 (not (containsKey!1840 (t!357798 (_2!28880 (h!56584 (toList!4375 lm!1477)))) (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477))))))))))

(declare-fun b!4533878 () Bool)

(assert (=> b!4533878 (= e!2825128 (noDuplicateKeys!1184 (t!357798 (_2!28880 (h!56584 (toList!4375 lm!1477))))))))

(assert (= (and d!1400198 (not res!1888570)) b!4533877))

(assert (= (and b!4533877 res!1888571) b!4533878))

(declare-fun m!5294461 () Bool)

(assert (=> b!4533877 m!5294461))

(declare-fun m!5294463 () Bool)

(assert (=> b!4533878 m!5294463))

(assert (=> bs!868335 d!1400198))

(declare-fun bs!870834 () Bool)

(declare-fun d!1400200 () Bool)

(assert (= bs!870834 (and d!1400200 d!1400162)))

(declare-fun lambda!174956 () Int)

(assert (=> bs!870834 (= (= lt!1707600 lt!1709034) (= lambda!174956 lambda!174945))))

(declare-fun bs!870835 () Bool)

(assert (= bs!870835 (and d!1400200 b!4533348)))

(assert (=> bs!870835 (= (= lt!1707600 lt!1708634) (= lambda!174956 lambda!174879))))

(declare-fun bs!870836 () Bool)

(assert (= bs!870836 (and d!1400200 b!4533844)))

(assert (=> bs!870836 (= (= lt!1707600 (-!410 lt!1707612 key!3287)) (= lambda!174956 lambda!174948))))

(declare-fun bs!870837 () Bool)

(assert (= bs!870837 (and d!1400200 d!1399802)))

(assert (=> bs!870837 (= (= lt!1707600 lt!1708638) (= lambda!174956 lambda!174880))))

(declare-fun bs!870838 () Bool)

(assert (= bs!870838 (and d!1400200 b!4532449)))

(assert (=> bs!870838 (= (= lt!1707600 lt!1708008) (= lambda!174956 lambda!174758))))

(declare-fun bs!870839 () Bool)

(assert (= bs!870839 (and d!1400200 d!1400170)))

(assert (=> bs!870839 (= (= lt!1707600 lt!1709058) (= lambda!174956 lambda!174950))))

(declare-fun bs!870840 () Bool)

(assert (= bs!870840 (and d!1400200 d!1399264)))

(assert (=> bs!870840 (= (= lt!1707600 lt!1708012) (= lambda!174956 lambda!174759))))

(declare-fun bs!870841 () Bool)

(assert (= bs!870841 (and d!1400200 d!1399688)))

(assert (=> bs!870841 (= (= lt!1707600 lt!1707972) (= lambda!174956 lambda!174861))))

(declare-fun bs!870842 () Bool)

(assert (= bs!870842 (and d!1400200 b!4533789)))

(assert (=> bs!870842 (= (= lt!1707600 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174956 lambda!174939))))

(declare-fun bs!870843 () Bool)

(assert (= bs!870843 (and d!1400200 b!4533834)))

(assert (=> bs!870843 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174956 lambda!174942))))

(declare-fun bs!870844 () Bool)

(assert (= bs!870844 (and d!1400200 b!4533833)))

(assert (=> bs!870844 (= (= lt!1707600 lt!1709030) (= lambda!174956 lambda!174944))))

(declare-fun bs!870845 () Bool)

(assert (= bs!870845 (and d!1400200 b!4533658)))

(assert (=> bs!870845 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174956 lambda!174921))))

(declare-fun bs!870846 () Bool)

(assert (= bs!870846 (and d!1400200 b!4533160)))

(assert (=> bs!870846 (= (= lt!1707600 lt!1708468) (= lambda!174956 lambda!174851))))

(declare-fun bs!870847 () Bool)

(assert (= bs!870847 (and d!1400200 d!1400192)))

(assert (=> bs!870847 (= (= lt!1707600 lt!1707628) (= lambda!174956 lambda!174955))))

(declare-fun bs!870848 () Bool)

(assert (= bs!870848 (and d!1400200 b!4532427)))

(assert (=> bs!870848 (= (= lt!1707600 lt!1707972) (= lambda!174956 lambda!174754))))

(declare-fun bs!870849 () Bool)

(assert (= bs!870849 (and d!1400200 d!1399874)))

(assert (=> bs!870849 (= (= lt!1707600 lt!1708737) (= lambda!174956 lambda!174906))))

(declare-fun bs!870850 () Bool)

(assert (= bs!870850 (and d!1400200 d!1399764)))

(assert (=> bs!870850 (= (= lt!1707600 lt!1708609) (= lambda!174956 lambda!174873))))

(declare-fun bs!870851 () Bool)

(assert (= bs!870851 (and d!1400200 b!4532128)))

(assert (=> bs!870851 (not (= lambda!174956 lambda!174637))))

(declare-fun bs!870852 () Bool)

(assert (= bs!870852 (and d!1400200 b!4532469)))

(assert (=> bs!870852 (= (= lt!1707600 lt!1707612) (= lambda!174956 lambda!174765))))

(declare-fun bs!870853 () Bool)

(assert (= bs!870853 (and d!1400200 d!1399278)))

(assert (=> bs!870853 (= (= lt!1707600 lt!1708038) (= lambda!174956 lambda!174767))))

(declare-fun bs!870854 () Bool)

(assert (= bs!870854 (and d!1400200 b!4533231)))

(assert (=> bs!870854 (= (= lt!1707600 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174956 lambda!174863))))

(declare-fun bs!870855 () Bool)

(assert (= bs!870855 (and d!1400200 b!4532470)))

(assert (=> bs!870855 (= (= lt!1707600 lt!1707612) (= lambda!174956 lambda!174764))))

(declare-fun bs!870856 () Bool)

(assert (= bs!870856 (and d!1400200 d!1399618)))

(assert (=> bs!870856 (= (= lt!1707600 lt!1708034) (= lambda!174956 lambda!174847))))

(assert (=> bs!870848 (= lambda!174956 lambda!174753)))

(declare-fun bs!870857 () Bool)

(assert (= bs!870857 (and d!1400200 d!1399690)))

(assert (=> bs!870857 (= (= lt!1707600 lt!1708558) (= lambda!174956 lambda!174867))))

(declare-fun bs!870858 () Bool)

(assert (= bs!870858 (and d!1400200 b!4533230)))

(assert (=> bs!870858 (= (= lt!1707600 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174956 lambda!174864))))

(assert (=> bs!870844 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174956 lambda!174943))))

(declare-fun bs!870859 () Bool)

(assert (= bs!870859 (and d!1400200 d!1399580)))

(assert (=> bs!870859 (not (= lambda!174956 lambda!174838))))

(declare-fun bs!870860 () Bool)

(assert (= bs!870860 (and d!1400200 d!1399970)))

(assert (=> bs!870860 (= (= lt!1707600 lt!1708902) (= lambda!174956 lambda!174927))))

(declare-fun bs!870861 () Bool)

(assert (= bs!870861 (and d!1400200 b!4533657)))

(assert (=> bs!870861 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174956 lambda!174922))))

(declare-fun bs!870862 () Bool)

(assert (= bs!870862 (and d!1400200 b!4533314)))

(assert (=> bs!870862 (= (= lt!1707600 lt!1708605) (= lambda!174956 lambda!174871))))

(assert (=> bs!870835 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174956 lambda!174877))))

(declare-fun bs!870863 () Bool)

(assert (= bs!870863 (and d!1400200 b!4533161)))

(assert (=> bs!870863 (= (= lt!1707600 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174956 lambda!174848))))

(declare-fun bs!870864 () Bool)

(assert (= bs!870864 (and d!1400200 b!4533845)))

(assert (=> bs!870864 (= (= lt!1707600 (-!410 lt!1707612 key!3287)) (= lambda!174956 lambda!174947))))

(assert (=> bs!870862 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174956 lambda!174870))))

(declare-fun bs!870865 () Bool)

(assert (= bs!870865 (and d!1400200 d!1399090)))

(assert (=> bs!870865 (not (= lambda!174956 lambda!174643))))

(declare-fun bs!870866 () Bool)

(assert (= bs!870866 (and d!1400200 b!4533349)))

(assert (=> bs!870866 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174956 lambda!174875))))

(assert (=> bs!870858 (= (= lt!1707600 lt!1708554) (= lambda!174956 lambda!174866))))

(declare-fun bs!870867 () Bool)

(assert (= bs!870867 (and d!1400200 b!4533315)))

(assert (=> bs!870867 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174956 lambda!174868))))

(assert (=> bs!870846 (= (= lt!1707600 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174956 lambda!174850))))

(assert (=> bs!870836 (= (= lt!1707600 lt!1709054) (= lambda!174956 lambda!174949))))

(declare-fun bs!870868 () Bool)

(assert (= bs!870868 (and d!1400200 d!1399182)))

(assert (=> bs!870868 (= (= lt!1707600 lt!1707976) (= lambda!174956 lambda!174755))))

(declare-fun bs!870869 () Bool)

(assert (= bs!870869 (and d!1400200 d!1400068)))

(assert (=> bs!870869 (= (= lt!1707600 lt!1708998) (= lambda!174956 lambda!174941))))

(assert (=> bs!870861 (= (= lt!1707600 lt!1708898) (= lambda!174956 lambda!174923))))

(declare-fun bs!870870 () Bool)

(assert (= bs!870870 (and d!1400200 d!1399622)))

(assert (=> bs!870870 (= (= lt!1707600 lt!1708472) (= lambda!174956 lambda!174853))))

(assert (=> bs!870838 (= (= lt!1707600 lt!1707628) (= lambda!174956 lambda!174757))))

(assert (=> bs!870842 (= (= lt!1707600 lt!1708994) (= lambda!174956 lambda!174940))))

(declare-fun bs!870871 () Bool)

(assert (= bs!870871 (and d!1400200 b!4533468)))

(assert (=> bs!870871 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174956 lambda!174903))))

(assert (=> bs!870871 (= (= lt!1707600 lt!1708733) (= lambda!174956 lambda!174904))))

(declare-fun bs!870872 () Bool)

(assert (= bs!870872 (and d!1400200 b!4532428)))

(assert (=> bs!870872 (= lambda!174956 lambda!174752)))

(declare-fun bs!870873 () Bool)

(assert (= bs!870873 (and d!1400200 b!4533469)))

(assert (=> bs!870873 (= (= lt!1707600 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174956 lambda!174901))))

(declare-fun bs!870874 () Bool)

(assert (= bs!870874 (and d!1400200 b!4533790)))

(assert (=> bs!870874 (= (= lt!1707600 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174956 lambda!174938))))

(declare-fun bs!870875 () Bool)

(assert (= bs!870875 (and d!1400200 b!4532450)))

(assert (=> bs!870875 (= (= lt!1707600 lt!1707628) (= lambda!174956 lambda!174756))))

(declare-fun bs!870876 () Bool)

(assert (= bs!870876 (and d!1400200 d!1400052)))

(assert (=> bs!870876 (= (= lt!1707600 lt!1708008) (= lambda!174956 lambda!174937))))

(assert (=> bs!870852 (= (= lt!1707600 lt!1708034) (= lambda!174956 lambda!174766))))

(declare-fun bs!870877 () Bool)

(assert (= bs!870877 (and d!1400200 d!1400020)))

(assert (=> bs!870877 (= (= lt!1707600 lt!1707612) (= lambda!174956 lambda!174936))))

(assert (=> d!1400200 true))

(assert (=> d!1400200 (forall!10317 (toList!4376 lt!1707600) lambda!174956)))

(declare-fun lt!1709077 () Unit!97092)

(assert (=> d!1400200 (= lt!1709077 (choose!29787 lt!1707600))))

(assert (=> d!1400200 (= (lemmaContainsAllItsOwnKeys!356 lt!1707600) lt!1709077)))

(declare-fun bs!870878 () Bool)

(assert (= bs!870878 d!1400200))

(declare-fun m!5294465 () Bool)

(assert (=> bs!870878 m!5294465))

(declare-fun m!5294467 () Bool)

(assert (=> bs!870878 m!5294467))

(assert (=> bm!315942 d!1400200))

(declare-fun d!1400202 () Bool)

(declare-fun lt!1709078 () Bool)

(assert (=> d!1400202 (= lt!1709078 (select (content!8413 (toList!4375 lt!1708096)) lt!1707605))))

(declare-fun e!2825129 () Bool)

(assert (=> d!1400202 (= lt!1709078 e!2825129)))

(declare-fun res!1888573 () Bool)

(assert (=> d!1400202 (=> (not res!1888573) (not e!2825129))))

(assert (=> d!1400202 (= res!1888573 ((_ is Cons!50713) (toList!4375 lt!1708096)))))

(assert (=> d!1400202 (= (contains!13480 (toList!4375 lt!1708096) lt!1707605) lt!1709078)))

(declare-fun b!4533879 () Bool)

(declare-fun e!2825130 () Bool)

(assert (=> b!4533879 (= e!2825129 e!2825130)))

(declare-fun res!1888572 () Bool)

(assert (=> b!4533879 (=> res!1888572 e!2825130)))

(assert (=> b!4533879 (= res!1888572 (= (h!56584 (toList!4375 lt!1708096)) lt!1707605))))

(declare-fun b!4533880 () Bool)

(assert (=> b!4533880 (= e!2825130 (contains!13480 (t!357799 (toList!4375 lt!1708096)) lt!1707605))))

(assert (= (and d!1400202 res!1888573) b!4533879))

(assert (= (and b!4533879 (not res!1888572)) b!4533880))

(declare-fun m!5294469 () Bool)

(assert (=> d!1400202 m!5294469))

(declare-fun m!5294471 () Bool)

(assert (=> d!1400202 m!5294471))

(declare-fun m!5294473 () Bool)

(assert (=> b!4533880 m!5294473))

(assert (=> b!4532531 d!1400202))

(declare-fun d!1400204 () Bool)

(assert (=> d!1400204 (= (invariantList!1035 (toList!4376 lt!1707811)) (noDuplicatedKeys!273 (toList!4376 lt!1707811)))))

(declare-fun bs!870879 () Bool)

(assert (= bs!870879 d!1400204))

(declare-fun m!5294475 () Bool)

(assert (=> bs!870879 m!5294475))

(assert (=> d!1399174 d!1400204))

(declare-fun d!1400206 () Bool)

(declare-fun res!1888574 () Bool)

(declare-fun e!2825131 () Bool)

(assert (=> d!1400206 (=> res!1888574 e!2825131)))

(assert (=> d!1400206 (= res!1888574 ((_ is Nil!50713) (toList!4375 (+!1580 lt!1707598 lt!1707605))))))

(assert (=> d!1400206 (= (forall!10315 (toList!4375 (+!1580 lt!1707598 lt!1707605)) lambda!174706) e!2825131)))

(declare-fun b!4533881 () Bool)

(declare-fun e!2825132 () Bool)

(assert (=> b!4533881 (= e!2825131 e!2825132)))

(declare-fun res!1888575 () Bool)

(assert (=> b!4533881 (=> (not res!1888575) (not e!2825132))))

(assert (=> b!4533881 (= res!1888575 (dynLambda!21195 lambda!174706 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))))))

(declare-fun b!4533882 () Bool)

(assert (=> b!4533882 (= e!2825132 (forall!10315 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))) lambda!174706))))

(assert (= (and d!1400206 (not res!1888574)) b!4533881))

(assert (= (and b!4533881 res!1888575) b!4533882))

(declare-fun b_lambda!157041 () Bool)

(assert (=> (not b_lambda!157041) (not b!4533881)))

(declare-fun m!5294477 () Bool)

(assert (=> b!4533881 m!5294477))

(declare-fun m!5294479 () Bool)

(assert (=> b!4533882 m!5294479))

(assert (=> d!1399174 d!1400206))

(declare-fun d!1400208 () Bool)

(declare-fun lt!1709081 () Bool)

(assert (=> d!1400208 (= lt!1709081 (select (content!8411 (_2!28880 lt!1707605)) (get!16648 lt!1708101)))))

(declare-fun e!2825138 () Bool)

(assert (=> d!1400208 (= lt!1709081 e!2825138)))

(declare-fun res!1888581 () Bool)

(assert (=> d!1400208 (=> (not res!1888581) (not e!2825138))))

(assert (=> d!1400208 (= res!1888581 ((_ is Cons!50712) (_2!28880 lt!1707605)))))

(assert (=> d!1400208 (= (contains!13485 (_2!28880 lt!1707605) (get!16648 lt!1708101)) lt!1709081)))

(declare-fun b!4533887 () Bool)

(declare-fun e!2825137 () Bool)

(assert (=> b!4533887 (= e!2825138 e!2825137)))

(declare-fun res!1888580 () Bool)

(assert (=> b!4533887 (=> res!1888580 e!2825137)))

(assert (=> b!4533887 (= res!1888580 (= (h!56583 (_2!28880 lt!1707605)) (get!16648 lt!1708101)))))

(declare-fun b!4533888 () Bool)

(assert (=> b!4533888 (= e!2825137 (contains!13485 (t!357798 (_2!28880 lt!1707605)) (get!16648 lt!1708101)))))

(assert (= (and d!1400208 res!1888581) b!4533887))

(assert (= (and b!4533887 (not res!1888580)) b!4533888))

(declare-fun m!5294481 () Bool)

(assert (=> d!1400208 m!5294481))

(assert (=> d!1400208 m!5291639))

(declare-fun m!5294483 () Bool)

(assert (=> d!1400208 m!5294483))

(assert (=> b!4533888 m!5291639))

(declare-fun m!5294485 () Bool)

(assert (=> b!4533888 m!5294485))

(assert (=> b!4532553 d!1400208))

(assert (=> b!4532553 d!1399636))

(declare-fun d!1400210 () Bool)

(assert (=> d!1400210 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287))))

(declare-fun lt!1709082 () Unit!97092)

(assert (=> d!1400210 (= lt!1709082 (choose!29781 (toList!4376 lt!1707612) key!3287))))

(assert (=> d!1400210 (invariantList!1035 (toList!4376 lt!1707612))))

(assert (=> d!1400210 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1707612) key!3287) lt!1709082)))

(declare-fun bs!870880 () Bool)

(assert (= bs!870880 d!1400210))

(assert (=> bs!870880 m!5291567))

(assert (=> bs!870880 m!5291567))

(assert (=> bs!870880 m!5291569))

(declare-fun m!5294487 () Bool)

(assert (=> bs!870880 m!5294487))

(assert (=> bs!870880 m!5292177))

(assert (=> b!4532520 d!1400210))

(declare-fun d!1400212 () Bool)

(assert (=> d!1400212 (= (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287)) (not (isEmpty!28726 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287))))))

(declare-fun bs!870881 () Bool)

(assert (= bs!870881 d!1400212))

(assert (=> bs!870881 m!5291567))

(declare-fun m!5294489 () Bool)

(assert (=> bs!870881 m!5294489))

(assert (=> b!4532520 d!1400212))

(declare-fun b!4533892 () Bool)

(declare-fun e!2825140 () Option!11170)

(assert (=> b!4533892 (= e!2825140 None!11169)))

(declare-fun d!1400214 () Bool)

(declare-fun c!774274 () Bool)

(assert (=> d!1400214 (= c!774274 (and ((_ is Cons!50712) (toList!4376 lt!1707612)) (= (_1!28879 (h!56583 (toList!4376 lt!1707612))) key!3287)))))

(declare-fun e!2825139 () Option!11170)

(assert (=> d!1400214 (= (getValueByKey!1128 (toList!4376 lt!1707612) key!3287) e!2825139)))

(declare-fun b!4533889 () Bool)

(assert (=> b!4533889 (= e!2825139 (Some!11169 (_2!28879 (h!56583 (toList!4376 lt!1707612)))))))

(declare-fun b!4533891 () Bool)

(assert (=> b!4533891 (= e!2825140 (getValueByKey!1128 (t!357798 (toList!4376 lt!1707612)) key!3287))))

(declare-fun b!4533890 () Bool)

(assert (=> b!4533890 (= e!2825139 e!2825140)))

(declare-fun c!774275 () Bool)

(assert (=> b!4533890 (= c!774275 (and ((_ is Cons!50712) (toList!4376 lt!1707612)) (not (= (_1!28879 (h!56583 (toList!4376 lt!1707612))) key!3287))))))

(assert (= (and d!1400214 c!774274) b!4533889))

(assert (= (and d!1400214 (not c!774274)) b!4533890))

(assert (= (and b!4533890 c!774275) b!4533891))

(assert (= (and b!4533890 (not c!774275)) b!4533892))

(declare-fun m!5294491 () Bool)

(assert (=> b!4533891 m!5294491))

(assert (=> b!4532520 d!1400214))

(declare-fun d!1400216 () Bool)

(assert (=> d!1400216 (contains!13483 (getKeysList!483 (toList!4376 lt!1707612)) key!3287)))

(declare-fun lt!1709083 () Unit!97092)

(assert (=> d!1400216 (= lt!1709083 (choose!29782 (toList!4376 lt!1707612) key!3287))))

(assert (=> d!1400216 (invariantList!1035 (toList!4376 lt!1707612))))

(assert (=> d!1400216 (= (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1707612) key!3287) lt!1709083)))

(declare-fun bs!870882 () Bool)

(assert (= bs!870882 d!1400216))

(assert (=> bs!870882 m!5291581))

(assert (=> bs!870882 m!5291581))

(declare-fun m!5294493 () Bool)

(assert (=> bs!870882 m!5294493))

(declare-fun m!5294495 () Bool)

(assert (=> bs!870882 m!5294495))

(assert (=> bs!870882 m!5292177))

(assert (=> b!4532520 d!1400216))

(declare-fun d!1400218 () Bool)

(declare-fun res!1888582 () Bool)

(declare-fun e!2825141 () Bool)

(assert (=> d!1400218 (=> res!1888582 e!2825141)))

(assert (=> d!1400218 (= res!1888582 (and ((_ is Cons!50712) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= (_1!28879 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) key!3287)))))

(assert (=> d!1400218 (= (containsKey!1843 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287) e!2825141)))

(declare-fun b!4533893 () Bool)

(declare-fun e!2825142 () Bool)

(assert (=> b!4533893 (= e!2825141 e!2825142)))

(declare-fun res!1888583 () Bool)

(assert (=> b!4533893 (=> (not res!1888583) (not e!2825142))))

(assert (=> b!4533893 (= res!1888583 ((_ is Cons!50712) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))))

(declare-fun b!4533894 () Bool)

(assert (=> b!4533894 (= e!2825142 (containsKey!1843 (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) key!3287))))

(assert (= (and d!1400218 (not res!1888582)) b!4533893))

(assert (= (and b!4533893 res!1888583) b!4533894))

(declare-fun m!5294497 () Bool)

(assert (=> b!4533894 m!5294497))

(assert (=> d!1399300 d!1400218))

(declare-fun d!1400220 () Bool)

(assert (=> d!1400220 (= (invariantList!1035 (toList!4376 lt!1708085)) (noDuplicatedKeys!273 (toList!4376 lt!1708085)))))

(declare-fun bs!870883 () Bool)

(assert (= bs!870883 d!1400220))

(declare-fun m!5294499 () Bool)

(assert (=> bs!870883 m!5294499))

(assert (=> d!1399304 d!1400220))

(declare-fun d!1400222 () Bool)

(declare-fun res!1888584 () Bool)

(declare-fun e!2825143 () Bool)

(assert (=> d!1400222 (=> res!1888584 e!2825143)))

(assert (=> d!1400222 (= res!1888584 ((_ is Nil!50713) (t!357799 (toList!4375 lm!1477))))))

(assert (=> d!1400222 (= (forall!10315 (t!357799 (toList!4375 lm!1477)) lambda!174771) e!2825143)))

(declare-fun b!4533895 () Bool)

(declare-fun e!2825144 () Bool)

(assert (=> b!4533895 (= e!2825143 e!2825144)))

(declare-fun res!1888585 () Bool)

(assert (=> b!4533895 (=> (not res!1888585) (not e!2825144))))

(assert (=> b!4533895 (= res!1888585 (dynLambda!21195 lambda!174771 (h!56584 (t!357799 (toList!4375 lm!1477)))))))

(declare-fun b!4533896 () Bool)

(assert (=> b!4533896 (= e!2825144 (forall!10315 (t!357799 (t!357799 (toList!4375 lm!1477))) lambda!174771))))

(assert (= (and d!1400222 (not res!1888584)) b!4533895))

(assert (= (and b!4533895 res!1888585) b!4533896))

(declare-fun b_lambda!157043 () Bool)

(assert (=> (not b_lambda!157043) (not b!4533895)))

(declare-fun m!5294501 () Bool)

(assert (=> b!4533895 m!5294501))

(declare-fun m!5294503 () Bool)

(assert (=> b!4533896 m!5294503))

(assert (=> d!1399304 d!1400222))

(declare-fun lt!1709084 () Bool)

(declare-fun d!1400224 () Bool)

(assert (=> d!1400224 (= lt!1709084 (select (content!8411 (_2!28880 (h!56584 (toList!4375 lm!1477)))) (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))))))

(declare-fun e!2825146 () Bool)

(assert (=> d!1400224 (= lt!1709084 e!2825146)))

(declare-fun res!1888587 () Bool)

(assert (=> d!1400224 (=> (not res!1888587) (not e!2825146))))

(assert (=> d!1400224 (= res!1888587 ((_ is Cons!50712) (_2!28880 (h!56584 (toList!4375 lm!1477)))))))

(assert (=> d!1400224 (= (contains!13485 (_2!28880 (h!56584 (toList!4375 lm!1477))) (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))) lt!1709084)))

(declare-fun b!4533897 () Bool)

(declare-fun e!2825145 () Bool)

(assert (=> b!4533897 (= e!2825146 e!2825145)))

(declare-fun res!1888586 () Bool)

(assert (=> b!4533897 (=> res!1888586 e!2825145)))

(assert (=> b!4533897 (= res!1888586 (= (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477)))) (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))))))

(declare-fun b!4533898 () Bool)

(assert (=> b!4533898 (= e!2825145 (contains!13485 (t!357798 (_2!28880 (h!56584 (toList!4375 lm!1477)))) (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))))))

(assert (= (and d!1400224 res!1888587) b!4533897))

(assert (= (and b!4533897 (not res!1888586)) b!4533898))

(declare-fun m!5294505 () Bool)

(assert (=> d!1400224 m!5294505))

(declare-fun m!5294507 () Bool)

(assert (=> d!1400224 m!5294507))

(declare-fun m!5294509 () Bool)

(assert (=> b!4533898 m!5294509))

(assert (=> b!4532561 d!1400224))

(assert (=> d!1399112 d!1399684))

(declare-fun d!1400226 () Bool)

(assert (=> d!1400226 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1707598) hash!344))))

(declare-fun lt!1709085 () Unit!97092)

(assert (=> d!1400226 (= lt!1709085 (choose!29786 (toList!4375 lt!1707598) hash!344))))

(declare-fun e!2825147 () Bool)

(assert (=> d!1400226 e!2825147))

(declare-fun res!1888588 () Bool)

(assert (=> d!1400226 (=> (not res!1888588) (not e!2825147))))

(assert (=> d!1400226 (= res!1888588 (isStrictlySorted!449 (toList!4375 lt!1707598)))))

(assert (=> d!1400226 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (toList!4375 lt!1707598) hash!344) lt!1709085)))

(declare-fun b!4533899 () Bool)

(assert (=> b!4533899 (= e!2825147 (containsKey!1844 (toList!4375 lt!1707598) hash!344))))

(assert (= (and d!1400226 res!1888588) b!4533899))

(assert (=> d!1400226 m!5291395))

(assert (=> d!1400226 m!5291395))

(assert (=> d!1400226 m!5291397))

(declare-fun m!5294511 () Bool)

(assert (=> d!1400226 m!5294511))

(assert (=> d!1400226 m!5292253))

(assert (=> b!4533899 m!5291391))

(assert (=> b!4532445 d!1400226))

(assert (=> b!4532445 d!1399950))

(assert (=> b!4532445 d!1399952))

(declare-fun d!1400228 () Bool)

(declare-fun c!774276 () Bool)

(assert (=> d!1400228 (= c!774276 ((_ is Nil!50713) (toList!4375 lm!1477)))))

(declare-fun e!2825148 () (InoxSet tuple2!51172))

(assert (=> d!1400228 (= (content!8413 (toList!4375 lm!1477)) e!2825148)))

(declare-fun b!4533900 () Bool)

(assert (=> b!4533900 (= e!2825148 ((as const (Array tuple2!51172 Bool)) false))))

(declare-fun b!4533901 () Bool)

(assert (=> b!4533901 (= e!2825148 ((_ map or) (store ((as const (Array tuple2!51172 Bool)) false) (h!56584 (toList!4375 lm!1477)) true) (content!8413 (t!357799 (toList!4375 lm!1477)))))))

(assert (= (and d!1400228 c!774276) b!4533900))

(assert (= (and d!1400228 (not c!774276)) b!4533901))

(declare-fun m!5294513 () Bool)

(assert (=> b!4533901 m!5294513))

(assert (=> b!4533901 m!5291629))

(assert (=> d!1399294 d!1400228))

(declare-fun bs!870884 () Bool)

(declare-fun b!4533904 () Bool)

(assert (= bs!870884 (and b!4533904 d!1400162)))

(declare-fun lambda!174957 () Int)

(assert (=> bs!870884 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709034) (= lambda!174957 lambda!174945))))

(declare-fun bs!870885 () Bool)

(assert (= bs!870885 (and b!4533904 b!4533348)))

(assert (=> bs!870885 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708634) (= lambda!174957 lambda!174879))))

(declare-fun bs!870886 () Bool)

(assert (= bs!870886 (and b!4533904 b!4533844)))

(assert (=> bs!870886 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (-!410 lt!1707612 key!3287)) (= lambda!174957 lambda!174948))))

(declare-fun bs!870887 () Bool)

(assert (= bs!870887 (and b!4533904 d!1400200)))

(assert (=> bs!870887 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707600) (= lambda!174957 lambda!174956))))

(declare-fun bs!870888 () Bool)

(assert (= bs!870888 (and b!4533904 d!1399802)))

(assert (=> bs!870888 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708638) (= lambda!174957 lambda!174880))))

(declare-fun bs!870889 () Bool)

(assert (= bs!870889 (and b!4533904 b!4532449)))

(assert (=> bs!870889 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708008) (= lambda!174957 lambda!174758))))

(declare-fun bs!870890 () Bool)

(assert (= bs!870890 (and b!4533904 d!1400170)))

(assert (=> bs!870890 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709058) (= lambda!174957 lambda!174950))))

(declare-fun bs!870891 () Bool)

(assert (= bs!870891 (and b!4533904 d!1399264)))

(assert (=> bs!870891 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708012) (= lambda!174957 lambda!174759))))

(declare-fun bs!870892 () Bool)

(assert (= bs!870892 (and b!4533904 d!1399688)))

(assert (=> bs!870892 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707972) (= lambda!174957 lambda!174861))))

(declare-fun bs!870893 () Bool)

(assert (= bs!870893 (and b!4533904 b!4533789)))

(assert (=> bs!870893 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174957 lambda!174939))))

(declare-fun bs!870894 () Bool)

(assert (= bs!870894 (and b!4533904 b!4533834)))

(assert (=> bs!870894 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174957 lambda!174942))))

(declare-fun bs!870895 () Bool)

(assert (= bs!870895 (and b!4533904 b!4533833)))

(assert (=> bs!870895 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709030) (= lambda!174957 lambda!174944))))

(declare-fun bs!870896 () Bool)

(assert (= bs!870896 (and b!4533904 b!4533658)))

(assert (=> bs!870896 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174957 lambda!174921))))

(declare-fun bs!870897 () Bool)

(assert (= bs!870897 (and b!4533904 b!4533160)))

(assert (=> bs!870897 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708468) (= lambda!174957 lambda!174851))))

(declare-fun bs!870898 () Bool)

(assert (= bs!870898 (and b!4533904 d!1400192)))

(assert (=> bs!870898 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707628) (= lambda!174957 lambda!174955))))

(declare-fun bs!870899 () Bool)

(assert (= bs!870899 (and b!4533904 b!4532427)))

(assert (=> bs!870899 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707972) (= lambda!174957 lambda!174754))))

(declare-fun bs!870900 () Bool)

(assert (= bs!870900 (and b!4533904 d!1399874)))

(assert (=> bs!870900 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708737) (= lambda!174957 lambda!174906))))

(declare-fun bs!870901 () Bool)

(assert (= bs!870901 (and b!4533904 d!1399764)))

(assert (=> bs!870901 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708609) (= lambda!174957 lambda!174873))))

(declare-fun bs!870902 () Bool)

(assert (= bs!870902 (and b!4533904 b!4532128)))

(assert (=> bs!870902 (not (= lambda!174957 lambda!174637))))

(declare-fun bs!870903 () Bool)

(assert (= bs!870903 (and b!4533904 b!4532469)))

(assert (=> bs!870903 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707612) (= lambda!174957 lambda!174765))))

(declare-fun bs!870904 () Bool)

(assert (= bs!870904 (and b!4533904 d!1399278)))

(assert (=> bs!870904 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708038) (= lambda!174957 lambda!174767))))

(declare-fun bs!870905 () Bool)

(assert (= bs!870905 (and b!4533904 b!4533231)))

(assert (=> bs!870905 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174957 lambda!174863))))

(declare-fun bs!870906 () Bool)

(assert (= bs!870906 (and b!4533904 b!4532470)))

(assert (=> bs!870906 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707612) (= lambda!174957 lambda!174764))))

(declare-fun bs!870907 () Bool)

(assert (= bs!870907 (and b!4533904 d!1399618)))

(assert (=> bs!870907 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708034) (= lambda!174957 lambda!174847))))

(assert (=> bs!870899 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707600) (= lambda!174957 lambda!174753))))

(declare-fun bs!870908 () Bool)

(assert (= bs!870908 (and b!4533904 d!1399690)))

(assert (=> bs!870908 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708558) (= lambda!174957 lambda!174867))))

(declare-fun bs!870909 () Bool)

(assert (= bs!870909 (and b!4533904 b!4533230)))

(assert (=> bs!870909 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174957 lambda!174864))))

(assert (=> bs!870895 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174957 lambda!174943))))

(declare-fun bs!870910 () Bool)

(assert (= bs!870910 (and b!4533904 d!1399580)))

(assert (=> bs!870910 (not (= lambda!174957 lambda!174838))))

(declare-fun bs!870911 () Bool)

(assert (= bs!870911 (and b!4533904 d!1399970)))

(assert (=> bs!870911 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708902) (= lambda!174957 lambda!174927))))

(declare-fun bs!870912 () Bool)

(assert (= bs!870912 (and b!4533904 b!4533657)))

(assert (=> bs!870912 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174957 lambda!174922))))

(declare-fun bs!870913 () Bool)

(assert (= bs!870913 (and b!4533904 b!4533314)))

(assert (=> bs!870913 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708605) (= lambda!174957 lambda!174871))))

(assert (=> bs!870885 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174957 lambda!174877))))

(declare-fun bs!870914 () Bool)

(assert (= bs!870914 (and b!4533904 b!4533161)))

(assert (=> bs!870914 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174957 lambda!174848))))

(declare-fun bs!870915 () Bool)

(assert (= bs!870915 (and b!4533904 b!4533845)))

(assert (=> bs!870915 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (-!410 lt!1707612 key!3287)) (= lambda!174957 lambda!174947))))

(assert (=> bs!870913 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174957 lambda!174870))))

(declare-fun bs!870916 () Bool)

(assert (= bs!870916 (and b!4533904 d!1399090)))

(assert (=> bs!870916 (not (= lambda!174957 lambda!174643))))

(declare-fun bs!870917 () Bool)

(assert (= bs!870917 (and b!4533904 b!4533349)))

(assert (=> bs!870917 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174957 lambda!174875))))

(assert (=> bs!870909 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708554) (= lambda!174957 lambda!174866))))

(declare-fun bs!870918 () Bool)

(assert (= bs!870918 (and b!4533904 b!4533315)))

(assert (=> bs!870918 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174957 lambda!174868))))

(assert (=> bs!870897 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174957 lambda!174850))))

(assert (=> bs!870886 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709054) (= lambda!174957 lambda!174949))))

(declare-fun bs!870919 () Bool)

(assert (= bs!870919 (and b!4533904 d!1399182)))

(assert (=> bs!870919 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707976) (= lambda!174957 lambda!174755))))

(declare-fun bs!870920 () Bool)

(assert (= bs!870920 (and b!4533904 d!1400068)))

(assert (=> bs!870920 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708998) (= lambda!174957 lambda!174941))))

(assert (=> bs!870912 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708898) (= lambda!174957 lambda!174923))))

(declare-fun bs!870921 () Bool)

(assert (= bs!870921 (and b!4533904 d!1399622)))

(assert (=> bs!870921 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708472) (= lambda!174957 lambda!174853))))

(assert (=> bs!870889 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707628) (= lambda!174957 lambda!174757))))

(assert (=> bs!870893 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708994) (= lambda!174957 lambda!174940))))

(declare-fun bs!870922 () Bool)

(assert (= bs!870922 (and b!4533904 b!4533468)))

(assert (=> bs!870922 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174957 lambda!174903))))

(assert (=> bs!870922 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708733) (= lambda!174957 lambda!174904))))

(declare-fun bs!870923 () Bool)

(assert (= bs!870923 (and b!4533904 b!4532428)))

(assert (=> bs!870923 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707600) (= lambda!174957 lambda!174752))))

(declare-fun bs!870924 () Bool)

(assert (= bs!870924 (and b!4533904 b!4533469)))

(assert (=> bs!870924 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174957 lambda!174901))))

(declare-fun bs!870925 () Bool)

(assert (= bs!870925 (and b!4533904 b!4533790)))

(assert (=> bs!870925 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174957 lambda!174938))))

(declare-fun bs!870926 () Bool)

(assert (= bs!870926 (and b!4533904 b!4532450)))

(assert (=> bs!870926 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707628) (= lambda!174957 lambda!174756))))

(declare-fun bs!870927 () Bool)

(assert (= bs!870927 (and b!4533904 d!1400052)))

(assert (=> bs!870927 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708008) (= lambda!174957 lambda!174937))))

(assert (=> bs!870903 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708034) (= lambda!174957 lambda!174766))))

(declare-fun bs!870928 () Bool)

(assert (= bs!870928 (and b!4533904 d!1400020)))

(assert (=> bs!870928 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707612) (= lambda!174957 lambda!174936))))

(assert (=> b!4533904 true))

(declare-fun bs!870929 () Bool)

(declare-fun b!4533903 () Bool)

(assert (= bs!870929 (and b!4533903 d!1400162)))

(declare-fun lambda!174958 () Int)

(assert (=> bs!870929 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709034) (= lambda!174958 lambda!174945))))

(declare-fun bs!870930 () Bool)

(assert (= bs!870930 (and b!4533903 b!4533348)))

(assert (=> bs!870930 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708634) (= lambda!174958 lambda!174879))))

(declare-fun bs!870931 () Bool)

(assert (= bs!870931 (and b!4533903 b!4533844)))

(assert (=> bs!870931 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (-!410 lt!1707612 key!3287)) (= lambda!174958 lambda!174948))))

(declare-fun bs!870932 () Bool)

(assert (= bs!870932 (and b!4533903 d!1400200)))

(assert (=> bs!870932 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707600) (= lambda!174958 lambda!174956))))

(declare-fun bs!870933 () Bool)

(assert (= bs!870933 (and b!4533903 d!1399802)))

(assert (=> bs!870933 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708638) (= lambda!174958 lambda!174880))))

(declare-fun bs!870934 () Bool)

(assert (= bs!870934 (and b!4533903 b!4532449)))

(assert (=> bs!870934 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708008) (= lambda!174958 lambda!174758))))

(declare-fun bs!870935 () Bool)

(assert (= bs!870935 (and b!4533903 d!1400170)))

(assert (=> bs!870935 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709058) (= lambda!174958 lambda!174950))))

(declare-fun bs!870936 () Bool)

(assert (= bs!870936 (and b!4533903 d!1399264)))

(assert (=> bs!870936 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708012) (= lambda!174958 lambda!174759))))

(declare-fun bs!870937 () Bool)

(assert (= bs!870937 (and b!4533903 d!1399688)))

(assert (=> bs!870937 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707972) (= lambda!174958 lambda!174861))))

(declare-fun bs!870938 () Bool)

(assert (= bs!870938 (and b!4533903 b!4533904)))

(assert (=> bs!870938 (= lambda!174958 lambda!174957)))

(declare-fun bs!870939 () Bool)

(assert (= bs!870939 (and b!4533903 b!4533789)))

(assert (=> bs!870939 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174958 lambda!174939))))

(declare-fun bs!870940 () Bool)

(assert (= bs!870940 (and b!4533903 b!4533834)))

(assert (=> bs!870940 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174958 lambda!174942))))

(declare-fun bs!870941 () Bool)

(assert (= bs!870941 (and b!4533903 b!4533833)))

(assert (=> bs!870941 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709030) (= lambda!174958 lambda!174944))))

(declare-fun bs!870942 () Bool)

(assert (= bs!870942 (and b!4533903 b!4533658)))

(assert (=> bs!870942 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174958 lambda!174921))))

(declare-fun bs!870943 () Bool)

(assert (= bs!870943 (and b!4533903 b!4533160)))

(assert (=> bs!870943 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708468) (= lambda!174958 lambda!174851))))

(declare-fun bs!870944 () Bool)

(assert (= bs!870944 (and b!4533903 d!1400192)))

(assert (=> bs!870944 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707628) (= lambda!174958 lambda!174955))))

(declare-fun bs!870945 () Bool)

(assert (= bs!870945 (and b!4533903 b!4532427)))

(assert (=> bs!870945 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707972) (= lambda!174958 lambda!174754))))

(declare-fun bs!870946 () Bool)

(assert (= bs!870946 (and b!4533903 d!1399874)))

(assert (=> bs!870946 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708737) (= lambda!174958 lambda!174906))))

(declare-fun bs!870947 () Bool)

(assert (= bs!870947 (and b!4533903 d!1399764)))

(assert (=> bs!870947 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708609) (= lambda!174958 lambda!174873))))

(declare-fun bs!870948 () Bool)

(assert (= bs!870948 (and b!4533903 b!4532128)))

(assert (=> bs!870948 (not (= lambda!174958 lambda!174637))))

(declare-fun bs!870949 () Bool)

(assert (= bs!870949 (and b!4533903 b!4532469)))

(assert (=> bs!870949 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707612) (= lambda!174958 lambda!174765))))

(declare-fun bs!870950 () Bool)

(assert (= bs!870950 (and b!4533903 d!1399278)))

(assert (=> bs!870950 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708038) (= lambda!174958 lambda!174767))))

(declare-fun bs!870951 () Bool)

(assert (= bs!870951 (and b!4533903 b!4533231)))

(assert (=> bs!870951 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174958 lambda!174863))))

(declare-fun bs!870952 () Bool)

(assert (= bs!870952 (and b!4533903 b!4532470)))

(assert (=> bs!870952 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707612) (= lambda!174958 lambda!174764))))

(declare-fun bs!870953 () Bool)

(assert (= bs!870953 (and b!4533903 d!1399618)))

(assert (=> bs!870953 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708034) (= lambda!174958 lambda!174847))))

(assert (=> bs!870945 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707600) (= lambda!174958 lambda!174753))))

(declare-fun bs!870954 () Bool)

(assert (= bs!870954 (and b!4533903 d!1399690)))

(assert (=> bs!870954 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708558) (= lambda!174958 lambda!174867))))

(declare-fun bs!870955 () Bool)

(assert (= bs!870955 (and b!4533903 b!4533230)))

(assert (=> bs!870955 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174958 lambda!174864))))

(assert (=> bs!870941 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174958 lambda!174943))))

(declare-fun bs!870956 () Bool)

(assert (= bs!870956 (and b!4533903 d!1399580)))

(assert (=> bs!870956 (not (= lambda!174958 lambda!174838))))

(declare-fun bs!870957 () Bool)

(assert (= bs!870957 (and b!4533903 d!1399970)))

(assert (=> bs!870957 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708902) (= lambda!174958 lambda!174927))))

(declare-fun bs!870958 () Bool)

(assert (= bs!870958 (and b!4533903 b!4533657)))

(assert (=> bs!870958 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174958 lambda!174922))))

(declare-fun bs!870959 () Bool)

(assert (= bs!870959 (and b!4533903 b!4533314)))

(assert (=> bs!870959 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708605) (= lambda!174958 lambda!174871))))

(assert (=> bs!870930 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174958 lambda!174877))))

(declare-fun bs!870960 () Bool)

(assert (= bs!870960 (and b!4533903 b!4533161)))

(assert (=> bs!870960 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174958 lambda!174848))))

(declare-fun bs!870961 () Bool)

(assert (= bs!870961 (and b!4533903 b!4533845)))

(assert (=> bs!870961 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (-!410 lt!1707612 key!3287)) (= lambda!174958 lambda!174947))))

(assert (=> bs!870959 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174958 lambda!174870))))

(declare-fun bs!870962 () Bool)

(assert (= bs!870962 (and b!4533903 d!1399090)))

(assert (=> bs!870962 (not (= lambda!174958 lambda!174643))))

(declare-fun bs!870963 () Bool)

(assert (= bs!870963 (and b!4533903 b!4533349)))

(assert (=> bs!870963 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174958 lambda!174875))))

(assert (=> bs!870955 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708554) (= lambda!174958 lambda!174866))))

(declare-fun bs!870964 () Bool)

(assert (= bs!870964 (and b!4533903 b!4533315)))

(assert (=> bs!870964 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174958 lambda!174868))))

(assert (=> bs!870943 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174958 lambda!174850))))

(assert (=> bs!870931 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709054) (= lambda!174958 lambda!174949))))

(declare-fun bs!870965 () Bool)

(assert (= bs!870965 (and b!4533903 d!1399182)))

(assert (=> bs!870965 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707976) (= lambda!174958 lambda!174755))))

(declare-fun bs!870966 () Bool)

(assert (= bs!870966 (and b!4533903 d!1400068)))

(assert (=> bs!870966 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708998) (= lambda!174958 lambda!174941))))

(assert (=> bs!870958 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708898) (= lambda!174958 lambda!174923))))

(declare-fun bs!870967 () Bool)

(assert (= bs!870967 (and b!4533903 d!1399622)))

(assert (=> bs!870967 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708472) (= lambda!174958 lambda!174853))))

(assert (=> bs!870934 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707628) (= lambda!174958 lambda!174757))))

(assert (=> bs!870939 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708994) (= lambda!174958 lambda!174940))))

(declare-fun bs!870968 () Bool)

(assert (= bs!870968 (and b!4533903 b!4533468)))

(assert (=> bs!870968 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174958 lambda!174903))))

(assert (=> bs!870968 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708733) (= lambda!174958 lambda!174904))))

(declare-fun bs!870969 () Bool)

(assert (= bs!870969 (and b!4533903 b!4532428)))

(assert (=> bs!870969 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707600) (= lambda!174958 lambda!174752))))

(declare-fun bs!870970 () Bool)

(assert (= bs!870970 (and b!4533903 b!4533469)))

(assert (=> bs!870970 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174958 lambda!174901))))

(declare-fun bs!870971 () Bool)

(assert (= bs!870971 (and b!4533903 b!4533790)))

(assert (=> bs!870971 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174958 lambda!174938))))

(declare-fun bs!870972 () Bool)

(assert (= bs!870972 (and b!4533903 b!4532450)))

(assert (=> bs!870972 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707628) (= lambda!174958 lambda!174756))))

(declare-fun bs!870973 () Bool)

(assert (= bs!870973 (and b!4533903 d!1400052)))

(assert (=> bs!870973 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708008) (= lambda!174958 lambda!174937))))

(assert (=> bs!870949 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1708034) (= lambda!174958 lambda!174766))))

(declare-fun bs!870974 () Bool)

(assert (= bs!870974 (and b!4533903 d!1400020)))

(assert (=> bs!870974 (= (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1707612) (= lambda!174958 lambda!174936))))

(assert (=> b!4533903 true))

(declare-fun lt!1709094 () ListMap!3637)

(declare-fun lambda!174959 () Int)

(assert (=> bs!870929 (= (= lt!1709094 lt!1709034) (= lambda!174959 lambda!174945))))

(assert (=> bs!870930 (= (= lt!1709094 lt!1708634) (= lambda!174959 lambda!174879))))

(assert (=> bs!870931 (= (= lt!1709094 (-!410 lt!1707612 key!3287)) (= lambda!174959 lambda!174948))))

(assert (=> bs!870932 (= (= lt!1709094 lt!1707600) (= lambda!174959 lambda!174956))))

(assert (=> bs!870933 (= (= lt!1709094 lt!1708638) (= lambda!174959 lambda!174880))))

(assert (=> bs!870934 (= (= lt!1709094 lt!1708008) (= lambda!174959 lambda!174758))))

(assert (=> bs!870935 (= (= lt!1709094 lt!1709058) (= lambda!174959 lambda!174950))))

(assert (=> bs!870936 (= (= lt!1709094 lt!1708012) (= lambda!174959 lambda!174759))))

(assert (=> bs!870937 (= (= lt!1709094 lt!1707972) (= lambda!174959 lambda!174861))))

(assert (=> bs!870938 (= (= lt!1709094 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) (= lambda!174959 lambda!174957))))

(assert (=> bs!870939 (= (= lt!1709094 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174959 lambda!174939))))

(assert (=> bs!870940 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174959 lambda!174942))))

(assert (=> bs!870941 (= (= lt!1709094 lt!1709030) (= lambda!174959 lambda!174944))))

(assert (=> bs!870942 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174959 lambda!174921))))

(assert (=> bs!870943 (= (= lt!1709094 lt!1708468) (= lambda!174959 lambda!174851))))

(assert (=> bs!870944 (= (= lt!1709094 lt!1707628) (= lambda!174959 lambda!174955))))

(assert (=> bs!870945 (= (= lt!1709094 lt!1707972) (= lambda!174959 lambda!174754))))

(assert (=> bs!870946 (= (= lt!1709094 lt!1708737) (= lambda!174959 lambda!174906))))

(assert (=> bs!870947 (= (= lt!1709094 lt!1708609) (= lambda!174959 lambda!174873))))

(assert (=> bs!870948 (not (= lambda!174959 lambda!174637))))

(assert (=> bs!870949 (= (= lt!1709094 lt!1707612) (= lambda!174959 lambda!174765))))

(assert (=> bs!870950 (= (= lt!1709094 lt!1708038) (= lambda!174959 lambda!174767))))

(assert (=> b!4533903 (= (= lt!1709094 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) (= lambda!174959 lambda!174958))))

(assert (=> bs!870951 (= (= lt!1709094 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174959 lambda!174863))))

(assert (=> bs!870952 (= (= lt!1709094 lt!1707612) (= lambda!174959 lambda!174764))))

(assert (=> bs!870953 (= (= lt!1709094 lt!1708034) (= lambda!174959 lambda!174847))))

(assert (=> bs!870945 (= (= lt!1709094 lt!1707600) (= lambda!174959 lambda!174753))))

(assert (=> bs!870954 (= (= lt!1709094 lt!1708558) (= lambda!174959 lambda!174867))))

(assert (=> bs!870955 (= (= lt!1709094 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174959 lambda!174864))))

(assert (=> bs!870941 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174959 lambda!174943))))

(assert (=> bs!870956 (not (= lambda!174959 lambda!174838))))

(assert (=> bs!870957 (= (= lt!1709094 lt!1708902) (= lambda!174959 lambda!174927))))

(assert (=> bs!870958 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174959 lambda!174922))))

(assert (=> bs!870959 (= (= lt!1709094 lt!1708605) (= lambda!174959 lambda!174871))))

(assert (=> bs!870930 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174959 lambda!174877))))

(assert (=> bs!870960 (= (= lt!1709094 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174959 lambda!174848))))

(assert (=> bs!870961 (= (= lt!1709094 (-!410 lt!1707612 key!3287)) (= lambda!174959 lambda!174947))))

(assert (=> bs!870959 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174959 lambda!174870))))

(assert (=> bs!870962 (not (= lambda!174959 lambda!174643))))

(assert (=> bs!870963 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174959 lambda!174875))))

(assert (=> bs!870955 (= (= lt!1709094 lt!1708554) (= lambda!174959 lambda!174866))))

(assert (=> bs!870964 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174959 lambda!174868))))

(assert (=> bs!870943 (= (= lt!1709094 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174959 lambda!174850))))

(assert (=> bs!870931 (= (= lt!1709094 lt!1709054) (= lambda!174959 lambda!174949))))

(assert (=> bs!870965 (= (= lt!1709094 lt!1707976) (= lambda!174959 lambda!174755))))

(assert (=> bs!870966 (= (= lt!1709094 lt!1708998) (= lambda!174959 lambda!174941))))

(assert (=> bs!870958 (= (= lt!1709094 lt!1708898) (= lambda!174959 lambda!174923))))

(assert (=> bs!870967 (= (= lt!1709094 lt!1708472) (= lambda!174959 lambda!174853))))

(assert (=> bs!870934 (= (= lt!1709094 lt!1707628) (= lambda!174959 lambda!174757))))

(assert (=> bs!870939 (= (= lt!1709094 lt!1708994) (= lambda!174959 lambda!174940))))

(assert (=> bs!870968 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174959 lambda!174903))))

(assert (=> bs!870968 (= (= lt!1709094 lt!1708733) (= lambda!174959 lambda!174904))))

(assert (=> bs!870969 (= (= lt!1709094 lt!1707600) (= lambda!174959 lambda!174752))))

(assert (=> bs!870970 (= (= lt!1709094 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174959 lambda!174901))))

(assert (=> bs!870971 (= (= lt!1709094 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174959 lambda!174938))))

(assert (=> bs!870972 (= (= lt!1709094 lt!1707628) (= lambda!174959 lambda!174756))))

(assert (=> bs!870973 (= (= lt!1709094 lt!1708008) (= lambda!174959 lambda!174937))))

(assert (=> bs!870949 (= (= lt!1709094 lt!1708034) (= lambda!174959 lambda!174766))))

(assert (=> bs!870974 (= (= lt!1709094 lt!1707612) (= lambda!174959 lambda!174936))))

(assert (=> b!4533903 true))

(declare-fun bs!870975 () Bool)

(declare-fun d!1400230 () Bool)

(assert (= bs!870975 (and d!1400230 d!1400162)))

(declare-fun lambda!174960 () Int)

(declare-fun lt!1709098 () ListMap!3637)

(assert (=> bs!870975 (= (= lt!1709098 lt!1709034) (= lambda!174960 lambda!174945))))

(declare-fun bs!870976 () Bool)

(assert (= bs!870976 (and d!1400230 b!4533348)))

(assert (=> bs!870976 (= (= lt!1709098 lt!1708634) (= lambda!174960 lambda!174879))))

(declare-fun bs!870977 () Bool)

(assert (= bs!870977 (and d!1400230 b!4533844)))

(assert (=> bs!870977 (= (= lt!1709098 (-!410 lt!1707612 key!3287)) (= lambda!174960 lambda!174948))))

(declare-fun bs!870978 () Bool)

(assert (= bs!870978 (and d!1400230 d!1400200)))

(assert (=> bs!870978 (= (= lt!1709098 lt!1707600) (= lambda!174960 lambda!174956))))

(declare-fun bs!870979 () Bool)

(assert (= bs!870979 (and d!1400230 d!1399802)))

(assert (=> bs!870979 (= (= lt!1709098 lt!1708638) (= lambda!174960 lambda!174880))))

(declare-fun bs!870980 () Bool)

(assert (= bs!870980 (and d!1400230 b!4532449)))

(assert (=> bs!870980 (= (= lt!1709098 lt!1708008) (= lambda!174960 lambda!174758))))

(declare-fun bs!870981 () Bool)

(assert (= bs!870981 (and d!1400230 d!1400170)))

(assert (=> bs!870981 (= (= lt!1709098 lt!1709058) (= lambda!174960 lambda!174950))))

(declare-fun bs!870982 () Bool)

(assert (= bs!870982 (and d!1400230 d!1399264)))

(assert (=> bs!870982 (= (= lt!1709098 lt!1708012) (= lambda!174960 lambda!174759))))

(declare-fun bs!870983 () Bool)

(assert (= bs!870983 (and d!1400230 d!1399688)))

(assert (=> bs!870983 (= (= lt!1709098 lt!1707972) (= lambda!174960 lambda!174861))))

(declare-fun bs!870984 () Bool)

(assert (= bs!870984 (and d!1400230 b!4533904)))

(assert (=> bs!870984 (= (= lt!1709098 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) (= lambda!174960 lambda!174957))))

(declare-fun bs!870985 () Bool)

(assert (= bs!870985 (and d!1400230 b!4533789)))

(assert (=> bs!870985 (= (= lt!1709098 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174960 lambda!174939))))

(declare-fun bs!870986 () Bool)

(assert (= bs!870986 (and d!1400230 b!4533834)))

(assert (=> bs!870986 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174960 lambda!174942))))

(declare-fun bs!870987 () Bool)

(assert (= bs!870987 (and d!1400230 b!4533903)))

(assert (=> bs!870987 (= (= lt!1709098 lt!1709094) (= lambda!174960 lambda!174959))))

(declare-fun bs!870988 () Bool)

(assert (= bs!870988 (and d!1400230 b!4533833)))

(assert (=> bs!870988 (= (= lt!1709098 lt!1709030) (= lambda!174960 lambda!174944))))

(declare-fun bs!870989 () Bool)

(assert (= bs!870989 (and d!1400230 b!4533658)))

(assert (=> bs!870989 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174960 lambda!174921))))

(declare-fun bs!870990 () Bool)

(assert (= bs!870990 (and d!1400230 b!4533160)))

(assert (=> bs!870990 (= (= lt!1709098 lt!1708468) (= lambda!174960 lambda!174851))))

(declare-fun bs!870991 () Bool)

(assert (= bs!870991 (and d!1400230 d!1400192)))

(assert (=> bs!870991 (= (= lt!1709098 lt!1707628) (= lambda!174960 lambda!174955))))

(declare-fun bs!870992 () Bool)

(assert (= bs!870992 (and d!1400230 b!4532427)))

(assert (=> bs!870992 (= (= lt!1709098 lt!1707972) (= lambda!174960 lambda!174754))))

(declare-fun bs!870993 () Bool)

(assert (= bs!870993 (and d!1400230 d!1399874)))

(assert (=> bs!870993 (= (= lt!1709098 lt!1708737) (= lambda!174960 lambda!174906))))

(declare-fun bs!870994 () Bool)

(assert (= bs!870994 (and d!1400230 d!1399764)))

(assert (=> bs!870994 (= (= lt!1709098 lt!1708609) (= lambda!174960 lambda!174873))))

(declare-fun bs!870995 () Bool)

(assert (= bs!870995 (and d!1400230 b!4532128)))

(assert (=> bs!870995 (not (= lambda!174960 lambda!174637))))

(declare-fun bs!870996 () Bool)

(assert (= bs!870996 (and d!1400230 b!4532469)))

(assert (=> bs!870996 (= (= lt!1709098 lt!1707612) (= lambda!174960 lambda!174765))))

(declare-fun bs!870997 () Bool)

(assert (= bs!870997 (and d!1400230 d!1399278)))

(assert (=> bs!870997 (= (= lt!1709098 lt!1708038) (= lambda!174960 lambda!174767))))

(assert (=> bs!870987 (= (= lt!1709098 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) (= lambda!174960 lambda!174958))))

(declare-fun bs!870998 () Bool)

(assert (= bs!870998 (and d!1400230 b!4533231)))

(assert (=> bs!870998 (= (= lt!1709098 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174960 lambda!174863))))

(declare-fun bs!870999 () Bool)

(assert (= bs!870999 (and d!1400230 b!4532470)))

(assert (=> bs!870999 (= (= lt!1709098 lt!1707612) (= lambda!174960 lambda!174764))))

(declare-fun bs!871000 () Bool)

(assert (= bs!871000 (and d!1400230 d!1399618)))

(assert (=> bs!871000 (= (= lt!1709098 lt!1708034) (= lambda!174960 lambda!174847))))

(assert (=> bs!870992 (= (= lt!1709098 lt!1707600) (= lambda!174960 lambda!174753))))

(declare-fun bs!871001 () Bool)

(assert (= bs!871001 (and d!1400230 d!1399690)))

(assert (=> bs!871001 (= (= lt!1709098 lt!1708558) (= lambda!174960 lambda!174867))))

(declare-fun bs!871002 () Bool)

(assert (= bs!871002 (and d!1400230 b!4533230)))

(assert (=> bs!871002 (= (= lt!1709098 (+!1582 lt!1707600 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174960 lambda!174864))))

(assert (=> bs!870988 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 (+!1580 lt!1707598 lt!1707605))))) (= lambda!174960 lambda!174943))))

(declare-fun bs!871003 () Bool)

(assert (= bs!871003 (and d!1400230 d!1399580)))

(assert (=> bs!871003 (not (= lambda!174960 lambda!174838))))

(declare-fun bs!871004 () Bool)

(assert (= bs!871004 (and d!1400230 d!1399970)))

(assert (=> bs!871004 (= (= lt!1709098 lt!1708902) (= lambda!174960 lambda!174927))))

(declare-fun bs!871005 () Bool)

(assert (= bs!871005 (and d!1400230 b!4533657)))

(assert (=> bs!871005 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 lt!1707617)))) (= lambda!174960 lambda!174922))))

(declare-fun bs!871006 () Bool)

(assert (= bs!871006 (and d!1400230 b!4533314)))

(assert (=> bs!871006 (= (= lt!1709098 lt!1708605) (= lambda!174960 lambda!174871))))

(assert (=> bs!870976 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174960 lambda!174877))))

(declare-fun bs!871007 () Bool)

(assert (= bs!871007 (and d!1400230 b!4533161)))

(assert (=> bs!871007 (= (= lt!1709098 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174960 lambda!174848))))

(declare-fun bs!871008 () Bool)

(assert (= bs!871008 (and d!1400230 b!4533845)))

(assert (=> bs!871008 (= (= lt!1709098 (-!410 lt!1707612 key!3287)) (= lambda!174960 lambda!174947))))

(assert (=> bs!871006 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174960 lambda!174870))))

(declare-fun bs!871009 () Bool)

(assert (= bs!871009 (and d!1400230 d!1399090)))

(assert (=> bs!871009 (not (= lambda!174960 lambda!174643))))

(declare-fun bs!871010 () Bool)

(assert (= bs!871010 (and d!1400230 b!4533349)))

(assert (=> bs!871010 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) (= lambda!174960 lambda!174875))))

(assert (=> bs!871002 (= (= lt!1709098 lt!1708554) (= lambda!174960 lambda!174866))))

(declare-fun bs!871011 () Bool)

(assert (= bs!871011 (and d!1400230 b!4533315)))

(assert (=> bs!871011 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 lt!1707597)))) (= lambda!174960 lambda!174868))))

(assert (=> bs!870990 (= (= lt!1709098 (+!1582 lt!1707612 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174960 lambda!174850))))

(assert (=> bs!870977 (= (= lt!1709098 lt!1709054) (= lambda!174960 lambda!174949))))

(declare-fun bs!871012 () Bool)

(assert (= bs!871012 (and d!1400230 d!1399182)))

(assert (=> bs!871012 (= (= lt!1709098 lt!1707976) (= lambda!174960 lambda!174755))))

(declare-fun bs!871013 () Bool)

(assert (= bs!871013 (and d!1400230 d!1400068)))

(assert (=> bs!871013 (= (= lt!1709098 lt!1708998) (= lambda!174960 lambda!174941))))

(assert (=> bs!871005 (= (= lt!1709098 lt!1708898) (= lambda!174960 lambda!174923))))

(declare-fun bs!871014 () Bool)

(assert (= bs!871014 (and d!1400230 d!1399622)))

(assert (=> bs!871014 (= (= lt!1709098 lt!1708472) (= lambda!174960 lambda!174853))))

(assert (=> bs!870980 (= (= lt!1709098 lt!1707628) (= lambda!174960 lambda!174757))))

(assert (=> bs!870985 (= (= lt!1709098 lt!1708994) (= lambda!174960 lambda!174940))))

(declare-fun bs!871015 () Bool)

(assert (= bs!871015 (and d!1400230 b!4533468)))

(assert (=> bs!871015 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174960 lambda!174903))))

(assert (=> bs!871015 (= (= lt!1709098 lt!1708733) (= lambda!174960 lambda!174904))))

(declare-fun bs!871016 () Bool)

(assert (= bs!871016 (and d!1400230 b!4532428)))

(assert (=> bs!871016 (= (= lt!1709098 lt!1707600) (= lambda!174960 lambda!174752))))

(declare-fun bs!871017 () Bool)

(assert (= bs!871017 (and d!1400230 b!4533469)))

(assert (=> bs!871017 (= (= lt!1709098 (extractMap!1240 (t!357799 (toList!4375 lt!1707598)))) (= lambda!174960 lambda!174901))))

(declare-fun bs!871018 () Bool)

(assert (= bs!871018 (and d!1400230 b!4533790)))

(assert (=> bs!871018 (= (= lt!1709098 (+!1582 lt!1707628 (h!56583 (_2!28880 lt!1707605)))) (= lambda!174960 lambda!174938))))

(declare-fun bs!871019 () Bool)

(assert (= bs!871019 (and d!1400230 b!4532450)))

(assert (=> bs!871019 (= (= lt!1709098 lt!1707628) (= lambda!174960 lambda!174756))))

(declare-fun bs!871020 () Bool)

(assert (= bs!871020 (and d!1400230 d!1400052)))

(assert (=> bs!871020 (= (= lt!1709098 lt!1708008) (= lambda!174960 lambda!174937))))

(assert (=> bs!870996 (= (= lt!1709098 lt!1708034) (= lambda!174960 lambda!174766))))

(declare-fun bs!871021 () Bool)

(assert (= bs!871021 (and d!1400230 d!1400020)))

(assert (=> bs!871021 (= (= lt!1709098 lt!1707612) (= lambda!174960 lambda!174936))))

(assert (=> d!1400230 true))

(declare-fun b!4533902 () Bool)

(declare-fun e!2825149 () Bool)

(assert (=> b!4533902 (= e!2825149 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) lambda!174959))))

(declare-fun bm!316104 () Bool)

(declare-fun call!316109 () Unit!97092)

(assert (=> bm!316104 (= call!316109 (lemmaContainsAllItsOwnKeys!356 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))))))

(declare-fun e!2825151 () Bool)

(assert (=> d!1400230 e!2825151))

(declare-fun res!1888589 () Bool)

(assert (=> d!1400230 (=> (not res!1888589) (not e!2825151))))

(assert (=> d!1400230 (= res!1888589 (forall!10317 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))) lambda!174960))))

(declare-fun e!2825150 () ListMap!3637)

(assert (=> d!1400230 (= lt!1709098 e!2825150)))

(declare-fun c!774277 () Bool)

(assert (=> d!1400230 (= c!774277 ((_ is Nil!50712) (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))))))

(assert (=> d!1400230 (noDuplicateKeys!1184 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))))))

(assert (=> d!1400230 (= (addToMapMapFromBucket!711 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))) (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) lt!1709098)))

(assert (=> b!4533903 (= e!2825150 lt!1709094)))

(declare-fun lt!1709090 () ListMap!3637)

(assert (=> b!4533903 (= lt!1709090 (+!1582 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (h!56583 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))))))))

(assert (=> b!4533903 (= lt!1709094 (addToMapMapFromBucket!711 (t!357798 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))) (+!1582 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) (h!56583 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))))))))

(declare-fun lt!1709101 () Unit!97092)

(assert (=> b!4533903 (= lt!1709101 call!316109)))

(declare-fun call!316111 () Bool)

(assert (=> b!4533903 call!316111))

(declare-fun lt!1709099 () Unit!97092)

(assert (=> b!4533903 (= lt!1709099 lt!1709101)))

(assert (=> b!4533903 (forall!10317 (toList!4376 lt!1709090) lambda!174959)))

(declare-fun lt!1709106 () Unit!97092)

(declare-fun Unit!97479 () Unit!97092)

(assert (=> b!4533903 (= lt!1709106 Unit!97479)))

(assert (=> b!4533903 (forall!10317 (t!357798 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))) lambda!174959)))

(declare-fun lt!1709092 () Unit!97092)

(declare-fun Unit!97480 () Unit!97092)

(assert (=> b!4533903 (= lt!1709092 Unit!97480)))

(declare-fun lt!1709095 () Unit!97092)

(declare-fun Unit!97481 () Unit!97092)

(assert (=> b!4533903 (= lt!1709095 Unit!97481)))

(declare-fun lt!1709087 () Unit!97092)

(assert (=> b!4533903 (= lt!1709087 (forallContained!2573 (toList!4376 lt!1709090) lambda!174959 (h!56583 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))))))))

(assert (=> b!4533903 (contains!13479 lt!1709090 (_1!28879 (h!56583 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))))))))

(declare-fun lt!1709097 () Unit!97092)

(declare-fun Unit!97483 () Unit!97092)

(assert (=> b!4533903 (= lt!1709097 Unit!97483)))

(assert (=> b!4533903 (contains!13479 lt!1709094 (_1!28879 (h!56583 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))))))))

(declare-fun lt!1709093 () Unit!97092)

(declare-fun Unit!97484 () Unit!97092)

(assert (=> b!4533903 (= lt!1709093 Unit!97484)))

(declare-fun call!316110 () Bool)

(assert (=> b!4533903 call!316110))

(declare-fun lt!1709089 () Unit!97092)

(declare-fun Unit!97485 () Unit!97092)

(assert (=> b!4533903 (= lt!1709089 Unit!97485)))

(assert (=> b!4533903 (forall!10317 (toList!4376 lt!1709090) lambda!174959)))

(declare-fun lt!1709086 () Unit!97092)

(declare-fun Unit!97486 () Unit!97092)

(assert (=> b!4533903 (= lt!1709086 Unit!97486)))

(declare-fun lt!1709103 () Unit!97092)

(declare-fun Unit!97487 () Unit!97092)

(assert (=> b!4533903 (= lt!1709103 Unit!97487)))

(declare-fun lt!1709088 () Unit!97092)

(assert (=> b!4533903 (= lt!1709088 (addForallContainsKeyThenBeforeAdding!356 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709094 (_1!28879 (h!56583 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))))) (_2!28879 (h!56583 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))))))))

(assert (=> b!4533903 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) lambda!174959)))

(declare-fun lt!1709102 () Unit!97092)

(assert (=> b!4533903 (= lt!1709102 lt!1709088)))

(assert (=> b!4533903 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) lambda!174959)))

(declare-fun lt!1709104 () Unit!97092)

(declare-fun Unit!97488 () Unit!97092)

(assert (=> b!4533903 (= lt!1709104 Unit!97488)))

(declare-fun res!1888591 () Bool)

(assert (=> b!4533903 (= res!1888591 (forall!10317 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477)))) lambda!174959))))

(assert (=> b!4533903 (=> (not res!1888591) (not e!2825149))))

(assert (=> b!4533903 e!2825149))

(declare-fun lt!1709096 () Unit!97092)

(declare-fun Unit!97489 () Unit!97092)

(assert (=> b!4533903 (= lt!1709096 Unit!97489)))

(assert (=> b!4533904 (= e!2825150 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))))))

(declare-fun lt!1709091 () Unit!97092)

(assert (=> b!4533904 (= lt!1709091 call!316109)))

(assert (=> b!4533904 call!316110))

(declare-fun lt!1709100 () Unit!97092)

(assert (=> b!4533904 (= lt!1709100 lt!1709091)))

(assert (=> b!4533904 call!316111))

(declare-fun lt!1709105 () Unit!97092)

(declare-fun Unit!97490 () Unit!97092)

(assert (=> b!4533904 (= lt!1709105 Unit!97490)))

(declare-fun bm!316105 () Bool)

(assert (=> bm!316105 (= call!316111 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) (ite c!774277 lambda!174957 lambda!174958)))))

(declare-fun b!4533905 () Bool)

(assert (=> b!4533905 (= e!2825151 (invariantList!1035 (toList!4376 lt!1709098)))))

(declare-fun b!4533906 () Bool)

(declare-fun res!1888590 () Bool)

(assert (=> b!4533906 (=> (not res!1888590) (not e!2825151))))

(assert (=> b!4533906 (= res!1888590 (forall!10317 (toList!4376 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) lambda!174960))))

(declare-fun bm!316106 () Bool)

(assert (=> bm!316106 (= call!316110 (forall!10317 (ite c!774277 (toList!4376 (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477))))) (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))) (ite c!774277 lambda!174957 lambda!174959)))))

(assert (= (and d!1400230 c!774277) b!4533904))

(assert (= (and d!1400230 (not c!774277)) b!4533903))

(assert (= (and b!4533903 res!1888591) b!4533902))

(assert (= (or b!4533904 b!4533903) bm!316106))

(assert (= (or b!4533904 b!4533903) bm!316105))

(assert (= (or b!4533904 b!4533903) bm!316104))

(assert (= (and d!1400230 res!1888589) b!4533906))

(assert (= (and b!4533906 res!1888590) b!4533905))

(declare-fun m!5294515 () Bool)

(assert (=> b!4533903 m!5294515))

(assert (=> b!4533903 m!5291587))

(declare-fun m!5294517 () Bool)

(assert (=> b!4533903 m!5294517))

(declare-fun m!5294519 () Bool)

(assert (=> b!4533903 m!5294519))

(declare-fun m!5294521 () Bool)

(assert (=> b!4533903 m!5294521))

(assert (=> b!4533903 m!5291587))

(declare-fun m!5294523 () Bool)

(assert (=> b!4533903 m!5294523))

(declare-fun m!5294525 () Bool)

(assert (=> b!4533903 m!5294525))

(declare-fun m!5294527 () Bool)

(assert (=> b!4533903 m!5294527))

(declare-fun m!5294529 () Bool)

(assert (=> b!4533903 m!5294529))

(assert (=> b!4533903 m!5294519))

(assert (=> b!4533903 m!5294517))

(declare-fun m!5294531 () Bool)

(assert (=> b!4533903 m!5294531))

(declare-fun m!5294533 () Bool)

(assert (=> b!4533903 m!5294533))

(assert (=> b!4533903 m!5294521))

(declare-fun m!5294535 () Bool)

(assert (=> b!4533906 m!5294535))

(declare-fun m!5294537 () Bool)

(assert (=> bm!316105 m!5294537))

(assert (=> b!4533902 m!5294519))

(declare-fun m!5294539 () Bool)

(assert (=> b!4533905 m!5294539))

(assert (=> bm!316104 m!5291587))

(declare-fun m!5294541 () Bool)

(assert (=> bm!316104 m!5294541))

(declare-fun m!5294543 () Bool)

(assert (=> d!1400230 m!5294543))

(declare-fun m!5294545 () Bool)

(assert (=> d!1400230 m!5294545))

(declare-fun m!5294547 () Bool)

(assert (=> bm!316106 m!5294547))

(assert (=> b!4532524 d!1400230))

(declare-fun bs!871022 () Bool)

(declare-fun d!1400232 () Bool)

(assert (= bs!871022 (and d!1400232 d!1399308)))

(declare-fun lambda!174961 () Int)

(assert (=> bs!871022 (= lambda!174961 lambda!174775)))

(declare-fun bs!871023 () Bool)

(assert (= bs!871023 (and d!1400232 start!449480)))

(assert (=> bs!871023 (= lambda!174961 lambda!174635)))

(declare-fun bs!871024 () Bool)

(assert (= bs!871024 (and d!1400232 d!1399266)))

(assert (=> bs!871024 (= lambda!174961 lambda!174760)))

(declare-fun bs!871025 () Bool)

(assert (= bs!871025 (and d!1400232 d!1399148)))

(assert (=> bs!871025 (= lambda!174961 lambda!174693)))

(declare-fun bs!871026 () Bool)

(assert (= bs!871026 (and d!1400232 d!1399990)))

(assert (=> bs!871026 (= lambda!174961 lambda!174929)))

(declare-fun bs!871027 () Bool)

(assert (= bs!871027 (and d!1400232 d!1399114)))

(assert (=> bs!871027 (= lambda!174961 lambda!174691)))

(declare-fun bs!871028 () Bool)

(assert (= bs!871028 (and d!1400232 d!1399098)))

(assert (=> bs!871028 (= lambda!174961 lambda!174681)))

(declare-fun bs!871029 () Bool)

(assert (= bs!871029 (and d!1400232 d!1399272)))

(assert (=> bs!871029 (= lambda!174961 lambda!174763)))

(declare-fun bs!871030 () Bool)

(assert (= bs!871030 (and d!1400232 d!1399880)))

(assert (=> bs!871030 (= lambda!174961 lambda!174909)))

(declare-fun bs!871031 () Bool)

(assert (= bs!871031 (and d!1400232 d!1399286)))

(assert (=> bs!871031 (= lambda!174961 lambda!174770)))

(declare-fun bs!871032 () Bool)

(assert (= bs!871032 (and d!1400232 d!1399666)))

(assert (=> bs!871032 (= lambda!174961 lambda!174858)))

(declare-fun bs!871033 () Bool)

(assert (= bs!871033 (and d!1400232 d!1399790)))

(assert (=> bs!871033 (= lambda!174961 lambda!174874)))

(declare-fun bs!871034 () Bool)

(assert (= bs!871034 (and d!1400232 b!4532128)))

(assert (=> bs!871034 (not (= lambda!174961 lambda!174636))))

(declare-fun bs!871035 () Bool)

(assert (= bs!871035 (and d!1400232 d!1399160)))

(assert (=> bs!871035 (= lambda!174961 lambda!174703)))

(declare-fun bs!871036 () Bool)

(assert (= bs!871036 (and d!1400232 d!1400164)))

(assert (=> bs!871036 (= lambda!174961 lambda!174946)))

(declare-fun bs!871037 () Bool)

(assert (= bs!871037 (and d!1400232 d!1399306)))

(assert (=> bs!871037 (= lambda!174961 lambda!174774)))

(declare-fun bs!871038 () Bool)

(assert (= bs!871038 (and d!1400232 d!1399304)))

(assert (=> bs!871038 (= lambda!174961 lambda!174771)))

(declare-fun bs!871039 () Bool)

(assert (= bs!871039 (and d!1400232 d!1399104)))

(assert (=> bs!871039 (not (= lambda!174961 lambda!174684))))

(declare-fun bs!871040 () Bool)

(assert (= bs!871040 (and d!1400232 d!1399174)))

(assert (=> bs!871040 (= lambda!174961 lambda!174706)))

(declare-fun lt!1709107 () ListMap!3637)

(assert (=> d!1400232 (invariantList!1035 (toList!4376 lt!1709107))))

(declare-fun e!2825152 () ListMap!3637)

(assert (=> d!1400232 (= lt!1709107 e!2825152)))

(declare-fun c!774278 () Bool)

(assert (=> d!1400232 (= c!774278 ((_ is Cons!50713) (t!357799 (t!357799 (toList!4375 lm!1477)))))))

(assert (=> d!1400232 (forall!10315 (t!357799 (t!357799 (toList!4375 lm!1477))) lambda!174961)))

(assert (=> d!1400232 (= (extractMap!1240 (t!357799 (t!357799 (toList!4375 lm!1477)))) lt!1709107)))

(declare-fun b!4533907 () Bool)

(assert (=> b!4533907 (= e!2825152 (addToMapMapFromBucket!711 (_2!28880 (h!56584 (t!357799 (t!357799 (toList!4375 lm!1477))))) (extractMap!1240 (t!357799 (t!357799 (t!357799 (toList!4375 lm!1477)))))))))

(declare-fun b!4533908 () Bool)

(assert (=> b!4533908 (= e!2825152 (ListMap!3638 Nil!50712))))

(assert (= (and d!1400232 c!774278) b!4533907))

(assert (= (and d!1400232 (not c!774278)) b!4533908))

(declare-fun m!5294549 () Bool)

(assert (=> d!1400232 m!5294549))

(declare-fun m!5294551 () Bool)

(assert (=> d!1400232 m!5294551))

(declare-fun m!5294553 () Bool)

(assert (=> b!4533907 m!5294553))

(assert (=> b!4533907 m!5294553))

(declare-fun m!5294555 () Bool)

(assert (=> b!4533907 m!5294555))

(assert (=> b!4532524 d!1400232))

(declare-fun d!1400234 () Bool)

(declare-fun res!1888592 () Bool)

(declare-fun e!2825153 () Bool)

(assert (=> d!1400234 (=> res!1888592 e!2825153)))

(assert (=> d!1400234 (= res!1888592 ((_ is Nil!50712) newBucket!178))))

(assert (=> d!1400234 (= (forall!10317 newBucket!178 lambda!174643) e!2825153)))

(declare-fun b!4533909 () Bool)

(declare-fun e!2825154 () Bool)

(assert (=> b!4533909 (= e!2825153 e!2825154)))

(declare-fun res!1888593 () Bool)

(assert (=> b!4533909 (=> (not res!1888593) (not e!2825154))))

(assert (=> b!4533909 (= res!1888593 (dynLambda!21197 lambda!174643 (h!56583 newBucket!178)))))

(declare-fun b!4533910 () Bool)

(assert (=> b!4533910 (= e!2825154 (forall!10317 (t!357798 newBucket!178) lambda!174643))))

(assert (= (and d!1400234 (not res!1888592)) b!4533909))

(assert (= (and b!4533909 res!1888593) b!4533910))

(declare-fun b_lambda!157045 () Bool)

(assert (=> (not b_lambda!157045) (not b!4533909)))

(declare-fun m!5294557 () Bool)

(assert (=> b!4533909 m!5294557))

(declare-fun m!5294559 () Bool)

(assert (=> b!4533910 m!5294559))

(assert (=> d!1399090 d!1400234))

(declare-fun d!1400236 () Bool)

(declare-fun res!1888594 () Bool)

(declare-fun e!2825155 () Bool)

(assert (=> d!1400236 (=> res!1888594 e!2825155)))

(assert (=> d!1400236 (= res!1888594 ((_ is Nil!50712) (toList!4376 lt!1707600)))))

(assert (=> d!1400236 (= (forall!10317 (toList!4376 lt!1707600) (ite c!773910 lambda!174752 lambda!174753)) e!2825155)))

(declare-fun b!4533911 () Bool)

(declare-fun e!2825156 () Bool)

(assert (=> b!4533911 (= e!2825155 e!2825156)))

(declare-fun res!1888595 () Bool)

(assert (=> b!4533911 (=> (not res!1888595) (not e!2825156))))

(assert (=> b!4533911 (= res!1888595 (dynLambda!21197 (ite c!773910 lambda!174752 lambda!174753) (h!56583 (toList!4376 lt!1707600))))))

(declare-fun b!4533912 () Bool)

(assert (=> b!4533912 (= e!2825156 (forall!10317 (t!357798 (toList!4376 lt!1707600)) (ite c!773910 lambda!174752 lambda!174753)))))

(assert (= (and d!1400236 (not res!1888594)) b!4533911))

(assert (= (and b!4533911 res!1888595) b!4533912))

(declare-fun b_lambda!157047 () Bool)

(assert (=> (not b_lambda!157047) (not b!4533911)))

(declare-fun m!5294561 () Bool)

(assert (=> b!4533911 m!5294561))

(declare-fun m!5294563 () Bool)

(assert (=> b!4533912 m!5294563))

(assert (=> bm!315943 d!1400236))

(assert (=> b!4532490 d!1399316))

(assert (=> b!4532509 d!1400168))

(assert (=> b!4532509 d!1399514))

(assert (=> b!4532513 d!1400218))

(declare-fun d!1400238 () Bool)

(assert (=> d!1400238 (containsKey!1843 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287)))

(declare-fun lt!1709108 () Unit!97092)

(assert (=> d!1400238 (= lt!1709108 (choose!29779 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(assert (=> d!1400238 (invariantList!1035 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))))

(assert (=> d!1400238 (= (lemmaInGetKeysListThenContainsKey!482 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))) key!3287) lt!1709108)))

(declare-fun bs!871041 () Bool)

(assert (= bs!871041 d!1400238))

(assert (=> bs!871041 m!5291559))

(declare-fun m!5294565 () Bool)

(assert (=> bs!871041 m!5294565))

(assert (=> bs!871041 m!5293379))

(assert (=> b!4532513 d!1400238))

(declare-fun bs!871042 () Bool)

(declare-fun b!4533915 () Bool)

(assert (= bs!871042 (and b!4533915 b!4533649)))

(declare-fun lambda!174962 () Int)

(assert (=> bs!871042 (= (= (t!357798 (toList!4376 lt!1707611)) (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (= lambda!174962 lambda!174916))))

(declare-fun bs!871043 () Bool)

(assert (= bs!871043 (and b!4533915 b!4532969)))

(assert (=> bs!871043 (= (= (t!357798 (toList!4376 lt!1707611)) (toList!4376 lt!1707611)) (= lambda!174962 lambda!174829))))

(declare-fun bs!871044 () Bool)

(assert (= bs!871044 (and b!4533915 b!4533863)))

(assert (=> bs!871044 (= (= (t!357798 (toList!4376 lt!1707611)) (toList!4376 lt!1707612)) (= lambda!174962 lambda!174953))))

(declare-fun bs!871045 () Bool)

(assert (= bs!871045 (and b!4533915 b!4533654)))

(assert (=> bs!871045 (= (= (t!357798 (toList!4376 lt!1707611)) (toList!4376 lt!1708025)) (= lambda!174962 lambda!174918))))

(declare-fun bs!871046 () Bool)

(assert (= bs!871046 (and b!4533915 b!4532901)))

(assert (=> bs!871046 (= (= (t!357798 (toList!4376 lt!1707611)) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174962 lambda!174827))))

(declare-fun bs!871047 () Bool)

(assert (= bs!871047 (and b!4533915 b!4533453)))

(assert (=> bs!871047 (= (= (t!357798 (toList!4376 lt!1707611)) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174962 lambda!174898))))

(declare-fun bs!871048 () Bool)

(assert (= bs!871048 (and b!4533915 b!4533096)))

(assert (=> bs!871048 (= (= (t!357798 (toList!4376 lt!1707611)) (toList!4376 lt!1707797)) (= lambda!174962 lambda!174835))))

(declare-fun bs!871049 () Bool)

(assert (= bs!871049 (and b!4533915 b!4533091)))

(assert (=> bs!871049 (= (= (t!357798 (toList!4376 lt!1707611)) (toList!4376 lt!1707612)) (= lambda!174962 lambda!174832))))

(declare-fun bs!871050 () Bool)

(assert (= bs!871050 (and b!4533915 b!4533448)))

(assert (=> bs!871050 (= (= (t!357798 (toList!4376 lt!1707611)) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174962 lambda!174896))))

(declare-fun bs!871051 () Bool)

(assert (= bs!871051 (and b!4533915 b!4533858)))

(assert (=> bs!871051 (= (= (t!357798 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707612))) (= lambda!174962 lambda!174951))))

(declare-fun bs!871052 () Bool)

(assert (= bs!871052 (and b!4533915 b!4533454)))

(assert (=> bs!871052 (= (= (t!357798 (toList!4376 lt!1707611)) (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))) (= lambda!174962 lambda!174897))))

(declare-fun bs!871053 () Bool)

(assert (= bs!871053 (and b!4533915 b!4533864)))

(assert (=> bs!871053 (= (= (t!357798 (toList!4376 lt!1707611)) (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612)))) (= lambda!174962 lambda!174952))))

(assert (=> b!4533915 true))

(declare-fun bs!871054 () Bool)

(declare-fun b!4533921 () Bool)

(assert (= bs!871054 (and b!4533921 b!4533649)))

(declare-fun lambda!174963 () Int)

(assert (=> bs!871054 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (= lambda!174963 lambda!174916))))

(declare-fun bs!871055 () Bool)

(assert (= bs!871055 (and b!4533921 b!4532969)))

(assert (=> bs!871055 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (toList!4376 lt!1707611)) (= lambda!174963 lambda!174829))))

(declare-fun bs!871056 () Bool)

(assert (= bs!871056 (and b!4533921 b!4533863)))

(assert (=> bs!871056 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (toList!4376 lt!1707612)) (= lambda!174963 lambda!174953))))

(declare-fun bs!871057 () Bool)

(assert (= bs!871057 (and b!4533921 b!4533915)))

(assert (=> bs!871057 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (t!357798 (toList!4376 lt!1707611))) (= lambda!174963 lambda!174962))))

(declare-fun bs!871058 () Bool)

(assert (= bs!871058 (and b!4533921 b!4533654)))

(assert (=> bs!871058 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (toList!4376 lt!1708025)) (= lambda!174963 lambda!174918))))

(declare-fun bs!871059 () Bool)

(assert (= bs!871059 (and b!4533921 b!4532901)))

(assert (=> bs!871059 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174963 lambda!174827))))

(declare-fun bs!871060 () Bool)

(assert (= bs!871060 (and b!4533921 b!4533453)))

(assert (=> bs!871060 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174963 lambda!174898))))

(declare-fun bs!871061 () Bool)

(assert (= bs!871061 (and b!4533921 b!4533096)))

(assert (=> bs!871061 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (toList!4376 lt!1707797)) (= lambda!174963 lambda!174835))))

(declare-fun bs!871062 () Bool)

(assert (= bs!871062 (and b!4533921 b!4533091)))

(assert (=> bs!871062 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (toList!4376 lt!1707612)) (= lambda!174963 lambda!174832))))

(declare-fun bs!871063 () Bool)

(assert (= bs!871063 (and b!4533921 b!4533448)))

(assert (=> bs!871063 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174963 lambda!174896))))

(declare-fun bs!871064 () Bool)

(assert (= bs!871064 (and b!4533921 b!4533858)))

(assert (=> bs!871064 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (t!357798 (toList!4376 lt!1707612))) (= lambda!174963 lambda!174951))))

(declare-fun bs!871065 () Bool)

(assert (= bs!871065 (and b!4533921 b!4533454)))

(assert (=> bs!871065 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))) (= lambda!174963 lambda!174897))))

(declare-fun bs!871066 () Bool)

(assert (= bs!871066 (and b!4533921 b!4533864)))

(assert (=> bs!871066 (= (= (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611))) (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612)))) (= lambda!174963 lambda!174952))))

(assert (=> b!4533921 true))

(declare-fun bs!871067 () Bool)

(declare-fun b!4533920 () Bool)

(assert (= bs!871067 (and b!4533920 b!4533921)))

(declare-fun lambda!174964 () Int)

(assert (=> bs!871067 (= (= (toList!4376 lt!1707611) (Cons!50712 (h!56583 (toList!4376 lt!1707611)) (t!357798 (toList!4376 lt!1707611)))) (= lambda!174964 lambda!174963))))

(declare-fun bs!871068 () Bool)

(assert (= bs!871068 (and b!4533920 b!4533649)))

(assert (=> bs!871068 (= (= (toList!4376 lt!1707611) (toList!4376 (addToMapMapFromBucket!711 (_2!28880 lt!1707605) lt!1707612))) (= lambda!174964 lambda!174916))))

(declare-fun bs!871069 () Bool)

(assert (= bs!871069 (and b!4533920 b!4532969)))

(assert (=> bs!871069 (= lambda!174964 lambda!174829)))

(declare-fun bs!871070 () Bool)

(assert (= bs!871070 (and b!4533920 b!4533863)))

(assert (=> bs!871070 (= (= (toList!4376 lt!1707611) (toList!4376 lt!1707612)) (= lambda!174964 lambda!174953))))

(declare-fun bs!871071 () Bool)

(assert (= bs!871071 (and b!4533920 b!4533915)))

(assert (=> bs!871071 (= (= (toList!4376 lt!1707611) (t!357798 (toList!4376 lt!1707611))) (= lambda!174964 lambda!174962))))

(declare-fun bs!871072 () Bool)

(assert (= bs!871072 (and b!4533920 b!4533654)))

(assert (=> bs!871072 (= (= (toList!4376 lt!1707611) (toList!4376 lt!1708025)) (= lambda!174964 lambda!174918))))

(declare-fun bs!871073 () Bool)

(assert (= bs!871073 (and b!4533920 b!4532901)))

(assert (=> bs!871073 (= (= (toList!4376 lt!1707611) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174964 lambda!174827))))

(declare-fun bs!871074 () Bool)

(assert (= bs!871074 (and b!4533920 b!4533453)))

(assert (=> bs!871074 (= (= (toList!4376 lt!1707611) (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (= lambda!174964 lambda!174898))))

(declare-fun bs!871075 () Bool)

(assert (= bs!871075 (and b!4533920 b!4533096)))

(assert (=> bs!871075 (= (= (toList!4376 lt!1707611) (toList!4376 lt!1707797)) (= lambda!174964 lambda!174835))))

(declare-fun bs!871076 () Bool)

(assert (= bs!871076 (and b!4533920 b!4533091)))

(assert (=> bs!871076 (= (= (toList!4376 lt!1707611) (toList!4376 lt!1707612)) (= lambda!174964 lambda!174832))))

(declare-fun bs!871077 () Bool)

(assert (= bs!871077 (and b!4533920 b!4533448)))

(assert (=> bs!871077 (= (= (toList!4376 lt!1707611) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477)))))) (= lambda!174964 lambda!174896))))

(declare-fun bs!871078 () Bool)

(assert (= bs!871078 (and b!4533920 b!4533858)))

(assert (=> bs!871078 (= (= (toList!4376 lt!1707611) (t!357798 (toList!4376 lt!1707612))) (= lambda!174964 lambda!174951))))

(declare-fun bs!871079 () Bool)

(assert (= bs!871079 (and b!4533920 b!4533454)))

(assert (=> bs!871079 (= (= (toList!4376 lt!1707611) (Cons!50712 (h!56583 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))) (t!357798 (toList!4376 (extractMap!1240 (t!357799 (toList!4375 lm!1477))))))) (= lambda!174964 lambda!174897))))

(declare-fun bs!871080 () Bool)

(assert (= bs!871080 (and b!4533920 b!4533864)))

(assert (=> bs!871080 (= (= (toList!4376 lt!1707611) (Cons!50712 (h!56583 (toList!4376 lt!1707612)) (t!357798 (toList!4376 lt!1707612)))) (= lambda!174964 lambda!174952))))

(assert (=> b!4533920 true))

(declare-fun bs!871081 () Bool)

(declare-fun b!4533916 () Bool)

(assert (= bs!871081 (and b!4533916 b!4533859)))

(declare-fun lambda!174965 () Int)

(assert (=> bs!871081 (= lambda!174965 lambda!174954)))

(declare-fun bs!871082 () Bool)

(assert (= bs!871082 (and b!4533916 b!4532970)))

(assert (=> bs!871082 (= lambda!174965 lambda!174830)))

(declare-fun bs!871083 () Bool)

(assert (= bs!871083 (and b!4533916 b!4533092)))

(assert (=> bs!871083 (= lambda!174965 lambda!174833)))

(declare-fun bs!871084 () Bool)

(assert (= bs!871084 (and b!4533916 b!4533449)))

(assert (=> bs!871084 (= lambda!174965 lambda!174899)))

(declare-fun bs!871085 () Bool)

(assert (= bs!871085 (and b!4533916 b!4532902)))

(assert (=> bs!871085 (= lambda!174965 lambda!174828)))

(declare-fun bs!871086 () Bool)

(assert (= bs!871086 (and b!4533916 b!4533650)))

(assert (=> bs!871086 (= lambda!174965 lambda!174917)))

(declare-fun bs!871087 () Bool)

(assert (= bs!871087 (and b!4533916 b!4533097)))

(assert (=> bs!871087 (= lambda!174965 lambda!174836)))

(declare-fun bs!871088 () Bool)

(assert (= bs!871088 (and b!4533916 b!4533655)))

(assert (=> bs!871088 (= lambda!174965 lambda!174920)))

(declare-fun d!1400240 () Bool)

(declare-fun e!2825158 () Bool)

(assert (=> d!1400240 e!2825158))

(declare-fun res!1888596 () Bool)

(assert (=> d!1400240 (=> (not res!1888596) (not e!2825158))))

(declare-fun lt!1709110 () List!50839)

(assert (=> d!1400240 (= res!1888596 (noDuplicate!758 lt!1709110))))

(declare-fun e!2825159 () List!50839)

(assert (=> d!1400240 (= lt!1709110 e!2825159)))

(declare-fun c!774281 () Bool)

(assert (=> d!1400240 (= c!774281 ((_ is Cons!50712) (toList!4376 lt!1707611)))))

(assert (=> d!1400240 (invariantList!1035 (toList!4376 lt!1707611))))

(assert (=> d!1400240 (= (getKeysList!483 (toList!4376 lt!1707611)) lt!1709110)))

(declare-fun b!4533913 () Bool)

(assert (=> b!4533913 false))

(declare-fun e!2825157 () Unit!97092)

(declare-fun Unit!97491 () Unit!97092)

(assert (=> b!4533913 (= e!2825157 Unit!97491)))

(declare-fun b!4533914 () Bool)

(declare-fun Unit!97492 () Unit!97092)

(assert (=> b!4533914 (= e!2825157 Unit!97492)))

(assert (=> b!4533915 false))

(declare-fun lt!1709109 () Unit!97092)

(assert (=> b!4533915 (= lt!1709109 (forallContained!2575 (getKeysList!483 (t!357798 (toList!4376 lt!1707611))) lambda!174962 (_1!28879 (h!56583 (toList!4376 lt!1707611)))))))

(declare-fun e!2825160 () Unit!97092)

(declare-fun Unit!97493 () Unit!97092)

(assert (=> b!4533915 (= e!2825160 Unit!97493)))

(assert (=> b!4533916 (= e!2825158 (= (content!8412 lt!1709110) (content!8412 (map!11161 (toList!4376 lt!1707611) lambda!174965))))))

(declare-fun b!4533917 () Bool)

(assert (=> b!4533917 (= e!2825159 Nil!50715)))

(declare-fun b!4533918 () Bool)

(declare-fun Unit!97494 () Unit!97092)

(assert (=> b!4533918 (= e!2825160 Unit!97494)))

(declare-fun b!4533919 () Bool)

(declare-fun res!1888597 () Bool)

(assert (=> b!4533919 (=> (not res!1888597) (not e!2825158))))

(assert (=> b!4533919 (= res!1888597 (= (length!372 lt!1709110) (length!373 (toList!4376 lt!1707611))))))

(declare-fun res!1888598 () Bool)

(assert (=> b!4533920 (=> (not res!1888598) (not e!2825158))))

(assert (=> b!4533920 (= res!1888598 (forall!10319 lt!1709110 lambda!174964))))

(assert (=> b!4533921 (= e!2825159 (Cons!50715 (_1!28879 (h!56583 (toList!4376 lt!1707611))) (getKeysList!483 (t!357798 (toList!4376 lt!1707611)))))))

(declare-fun c!774279 () Bool)

(assert (=> b!4533921 (= c!774279 (containsKey!1843 (t!357798 (toList!4376 lt!1707611)) (_1!28879 (h!56583 (toList!4376 lt!1707611)))))))

(declare-fun lt!1709114 () Unit!97092)

(assert (=> b!4533921 (= lt!1709114 e!2825157)))

(declare-fun c!774280 () Bool)

(assert (=> b!4533921 (= c!774280 (contains!13483 (getKeysList!483 (t!357798 (toList!4376 lt!1707611))) (_1!28879 (h!56583 (toList!4376 lt!1707611)))))))

(declare-fun lt!1709115 () Unit!97092)

(assert (=> b!4533921 (= lt!1709115 e!2825160)))

(declare-fun lt!1709112 () List!50839)

(assert (=> b!4533921 (= lt!1709112 (getKeysList!483 (t!357798 (toList!4376 lt!1707611))))))

(declare-fun lt!1709111 () Unit!97092)

(assert (=> b!4533921 (= lt!1709111 (lemmaForallContainsAddHeadPreserves!179 (t!357798 (toList!4376 lt!1707611)) lt!1709112 (h!56583 (toList!4376 lt!1707611))))))

(assert (=> b!4533921 (forall!10319 lt!1709112 lambda!174963)))

(declare-fun lt!1709113 () Unit!97092)

(assert (=> b!4533921 (= lt!1709113 lt!1709111)))

(assert (= (and d!1400240 c!774281) b!4533921))

(assert (= (and d!1400240 (not c!774281)) b!4533917))

(assert (= (and b!4533921 c!774279) b!4533913))

(assert (= (and b!4533921 (not c!774279)) b!4533914))

(assert (= (and b!4533921 c!774280) b!4533915))

(assert (= (and b!4533921 (not c!774280)) b!4533918))

(assert (= (and d!1400240 res!1888596) b!4533919))

(assert (= (and b!4533919 res!1888597) b!4533920))

(assert (= (and b!4533920 res!1888598) b!4533916))

(declare-fun m!5294567 () Bool)

(assert (=> d!1400240 m!5294567))

(assert (=> d!1400240 m!5292463))

(declare-fun m!5294569 () Bool)

(assert (=> b!4533921 m!5294569))

(declare-fun m!5294571 () Bool)

(assert (=> b!4533921 m!5294571))

(declare-fun m!5294573 () Bool)

(assert (=> b!4533921 m!5294573))

(declare-fun m!5294575 () Bool)

(assert (=> b!4533921 m!5294575))

(assert (=> b!4533921 m!5294571))

(declare-fun m!5294577 () Bool)

(assert (=> b!4533921 m!5294577))

(declare-fun m!5294579 () Bool)

(assert (=> b!4533920 m!5294579))

(assert (=> b!4533915 m!5294571))

(assert (=> b!4533915 m!5294571))

(declare-fun m!5294581 () Bool)

(assert (=> b!4533915 m!5294581))

(declare-fun m!5294583 () Bool)

(assert (=> b!4533919 m!5294583))

(assert (=> b!4533919 m!5292273))

(declare-fun m!5294585 () Bool)

(assert (=> b!4533916 m!5294585))

(declare-fun m!5294587 () Bool)

(assert (=> b!4533916 m!5294587))

(assert (=> b!4533916 m!5294587))

(declare-fun m!5294589 () Bool)

(assert (=> b!4533916 m!5294589))

(assert (=> b!4532174 d!1400240))

(declare-fun d!1400242 () Bool)

(assert (=> d!1400242 (dynLambda!21197 lambda!174637 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604))))))

(assert (=> d!1400242 true))

(declare-fun _$7!1918 () Unit!97092)

(assert (=> d!1400242 (= (choose!29771 (_2!28880 (h!56584 (toList!4375 lm!1477))) lambda!174637 (tuple2!51171 key!3287 (_2!28879 (get!16648 lt!1707604)))) _$7!1918)))

(declare-fun b_lambda!157049 () Bool)

(assert (=> (not b_lambda!157049) (not d!1400242)))

(declare-fun bs!871089 () Bool)

(assert (= bs!871089 d!1400242))

(assert (=> bs!871089 m!5291653))

(assert (=> d!1399322 d!1400242))

(declare-fun d!1400244 () Bool)

(declare-fun res!1888599 () Bool)

(declare-fun e!2825161 () Bool)

(assert (=> d!1400244 (=> res!1888599 e!2825161)))

(assert (=> d!1400244 (= res!1888599 ((_ is Nil!50712) (_2!28880 (h!56584 (toList!4375 lm!1477)))))))

(assert (=> d!1400244 (= (forall!10317 (_2!28880 (h!56584 (toList!4375 lm!1477))) lambda!174637) e!2825161)))

(declare-fun b!4533922 () Bool)

(declare-fun e!2825162 () Bool)

(assert (=> b!4533922 (= e!2825161 e!2825162)))

(declare-fun res!1888600 () Bool)

(assert (=> b!4533922 (=> (not res!1888600) (not e!2825162))))

(assert (=> b!4533922 (= res!1888600 (dynLambda!21197 lambda!174637 (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477))))))))

(declare-fun b!4533923 () Bool)

(assert (=> b!4533923 (= e!2825162 (forall!10317 (t!357798 (_2!28880 (h!56584 (toList!4375 lm!1477)))) lambda!174637))))

(assert (= (and d!1400244 (not res!1888599)) b!4533922))

(assert (= (and b!4533922 res!1888600) b!4533923))

(declare-fun b_lambda!157051 () Bool)

(assert (=> (not b_lambda!157051) (not b!4533922)))

(declare-fun m!5294591 () Bool)

(assert (=> b!4533922 m!5294591))

(declare-fun m!5294593 () Bool)

(assert (=> b!4533923 m!5294593))

(assert (=> d!1399322 d!1400244))

(declare-fun d!1400246 () Bool)

(declare-fun lt!1709116 () Bool)

(assert (=> d!1400246 (= lt!1709116 (select (content!8413 (toList!4375 lt!1707771)) lt!1707610))))

(declare-fun e!2825163 () Bool)

(assert (=> d!1400246 (= lt!1709116 e!2825163)))

(declare-fun res!1888602 () Bool)

(assert (=> d!1400246 (=> (not res!1888602) (not e!2825163))))

(assert (=> d!1400246 (= res!1888602 ((_ is Cons!50713) (toList!4375 lt!1707771)))))

(assert (=> d!1400246 (= (contains!13480 (toList!4375 lt!1707771) lt!1707610) lt!1709116)))

(declare-fun b!4533924 () Bool)

(declare-fun e!2825164 () Bool)

(assert (=> b!4533924 (= e!2825163 e!2825164)))

(declare-fun res!1888601 () Bool)

(assert (=> b!4533924 (=> res!1888601 e!2825164)))

(assert (=> b!4533924 (= res!1888601 (= (h!56584 (toList!4375 lt!1707771)) lt!1707610))))

(declare-fun b!4533925 () Bool)

(assert (=> b!4533925 (= e!2825164 (contains!13480 (t!357799 (toList!4375 lt!1707771)) lt!1707610))))

(assert (= (and d!1400246 res!1888602) b!4533924))

(assert (= (and b!4533924 (not res!1888601)) b!4533925))

(declare-fun m!5294595 () Bool)

(assert (=> d!1400246 m!5294595))

(declare-fun m!5294597 () Bool)

(assert (=> d!1400246 m!5294597))

(declare-fun m!5294599 () Bool)

(assert (=> b!4533925 m!5294599))

(assert (=> b!4532248 d!1400246))

(declare-fun d!1400248 () Bool)

(declare-fun e!2825166 () Bool)

(assert (=> d!1400248 e!2825166))

(declare-fun res!1888603 () Bool)

(assert (=> d!1400248 (=> res!1888603 e!2825166)))

(declare-fun lt!1709117 () Bool)

(assert (=> d!1400248 (= res!1888603 (not lt!1709117))))

(declare-fun lt!1709120 () Bool)

(assert (=> d!1400248 (= lt!1709117 lt!1709120)))

(declare-fun lt!1709119 () Unit!97092)

(declare-fun e!2825165 () Unit!97092)

(assert (=> d!1400248 (= lt!1709119 e!2825165)))

(declare-fun c!774282 () Bool)

(assert (=> d!1400248 (= c!774282 lt!1709120)))

(assert (=> d!1400248 (= lt!1709120 (containsKey!1844 (toList!4375 lt!1708096) (_1!28880 lt!1707605)))))

(assert (=> d!1400248 (= (contains!13481 lt!1708096 (_1!28880 lt!1707605)) lt!1709117)))

(declare-fun b!4533926 () Bool)

(declare-fun lt!1709118 () Unit!97092)

(assert (=> b!4533926 (= e!2825165 lt!1709118)))

(assert (=> b!4533926 (= lt!1709118 (lemmaContainsKeyImpliesGetValueByKeyDefined!1033 (toList!4375 lt!1708096) (_1!28880 lt!1707605)))))

(assert (=> b!4533926 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1708096) (_1!28880 lt!1707605)))))

(declare-fun b!4533927 () Bool)

(declare-fun Unit!97495 () Unit!97092)

(assert (=> b!4533927 (= e!2825165 Unit!97495)))

(declare-fun b!4533928 () Bool)

(assert (=> b!4533928 (= e!2825166 (isDefined!8452 (getValueByKey!1129 (toList!4375 lt!1708096) (_1!28880 lt!1707605))))))

(assert (= (and d!1400248 c!774282) b!4533926))

(assert (= (and d!1400248 (not c!774282)) b!4533927))

(assert (= (and d!1400248 (not res!1888603)) b!4533928))

(declare-fun m!5294601 () Bool)

(assert (=> d!1400248 m!5294601))

(declare-fun m!5294603 () Bool)

(assert (=> b!4533926 m!5294603))

(assert (=> b!4533926 m!5291625))

(assert (=> b!4533926 m!5291625))

(declare-fun m!5294605 () Bool)

(assert (=> b!4533926 m!5294605))

(assert (=> b!4533928 m!5291625))

(assert (=> b!4533928 m!5291625))

(assert (=> b!4533928 m!5294605))

(assert (=> d!1399312 d!1400248))

(declare-fun b!4533930 () Bool)

(declare-fun e!2825167 () Option!11171)

(declare-fun e!2825168 () Option!11171)

(assert (=> b!4533930 (= e!2825167 e!2825168)))

(declare-fun c!774284 () Bool)

(assert (=> b!4533930 (= c!774284 (and ((_ is Cons!50713) lt!1708095) (not (= (_1!28880 (h!56584 lt!1708095)) (_1!28880 lt!1707605)))))))

(declare-fun b!4533932 () Bool)

(assert (=> b!4533932 (= e!2825168 None!11170)))

(declare-fun b!4533931 () Bool)

(assert (=> b!4533931 (= e!2825168 (getValueByKey!1129 (t!357799 lt!1708095) (_1!28880 lt!1707605)))))

(declare-fun b!4533929 () Bool)

(assert (=> b!4533929 (= e!2825167 (Some!11170 (_2!28880 (h!56584 lt!1708095))))))

(declare-fun d!1400250 () Bool)

(declare-fun c!774283 () Bool)

(assert (=> d!1400250 (= c!774283 (and ((_ is Cons!50713) lt!1708095) (= (_1!28880 (h!56584 lt!1708095)) (_1!28880 lt!1707605))))))

(assert (=> d!1400250 (= (getValueByKey!1129 lt!1708095 (_1!28880 lt!1707605)) e!2825167)))

(assert (= (and d!1400250 c!774283) b!4533929))

(assert (= (and d!1400250 (not c!774283)) b!4533930))

(assert (= (and b!4533930 c!774284) b!4533931))

(assert (= (and b!4533930 (not c!774284)) b!4533932))

(declare-fun m!5294607 () Bool)

(assert (=> b!4533931 m!5294607))

(assert (=> d!1399312 d!1400250))

(declare-fun d!1400252 () Bool)

(assert (=> d!1400252 (= (getValueByKey!1129 lt!1708095 (_1!28880 lt!1707605)) (Some!11170 (_2!28880 lt!1707605)))))

(declare-fun lt!1709121 () Unit!97092)

(assert (=> d!1400252 (= lt!1709121 (choose!29780 lt!1708095 (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))

(declare-fun e!2825169 () Bool)

(assert (=> d!1400252 e!2825169))

(declare-fun res!1888604 () Bool)

(assert (=> d!1400252 (=> (not res!1888604) (not e!2825169))))

(assert (=> d!1400252 (= res!1888604 (isStrictlySorted!449 lt!1708095))))

(assert (=> d!1400252 (= (lemmaContainsTupThenGetReturnValue!706 lt!1708095 (_1!28880 lt!1707605) (_2!28880 lt!1707605)) lt!1709121)))

(declare-fun b!4533933 () Bool)

(declare-fun res!1888605 () Bool)

(assert (=> b!4533933 (=> (not res!1888605) (not e!2825169))))

(assert (=> b!4533933 (= res!1888605 (containsKey!1844 lt!1708095 (_1!28880 lt!1707605)))))

(declare-fun b!4533934 () Bool)

(assert (=> b!4533934 (= e!2825169 (contains!13480 lt!1708095 (tuple2!51173 (_1!28880 lt!1707605) (_2!28880 lt!1707605))))))

(assert (= (and d!1400252 res!1888604) b!4533933))

(assert (= (and b!4533933 res!1888605) b!4533934))

(assert (=> d!1400252 m!5291619))

(declare-fun m!5294609 () Bool)

(assert (=> d!1400252 m!5294609))

(declare-fun m!5294611 () Bool)

(assert (=> d!1400252 m!5294611))

(declare-fun m!5294613 () Bool)

(assert (=> b!4533933 m!5294613))

(declare-fun m!5294615 () Bool)

(assert (=> b!4533934 m!5294615))

(assert (=> d!1399312 d!1400252))

(declare-fun bm!316107 () Bool)

(declare-fun call!316114 () List!50837)

(declare-fun call!316112 () List!50837)

(assert (=> bm!316107 (= call!316114 call!316112)))

(declare-fun b!4533935 () Bool)

(declare-fun e!2825173 () List!50837)

(declare-fun c!774285 () Bool)

(declare-fun c!774286 () Bool)

(assert (=> b!4533935 (= e!2825173 (ite c!774285 (t!357799 (toList!4375 lt!1707617)) (ite c!774286 (Cons!50713 (h!56584 (toList!4375 lt!1707617)) (t!357799 (toList!4375 lt!1707617))) Nil!50713)))))

(declare-fun b!4533936 () Bool)

(declare-fun e!2825174 () Bool)

(declare-fun lt!1709122 () List!50837)

(assert (=> b!4533936 (= e!2825174 (contains!13480 lt!1709122 (tuple2!51173 (_1!28880 lt!1707605) (_2!28880 lt!1707605))))))

(declare-fun b!4533937 () Bool)

(assert (=> b!4533937 (= c!774286 (and ((_ is Cons!50713) (toList!4375 lt!1707617)) (bvsgt (_1!28880 (h!56584 (toList!4375 lt!1707617))) (_1!28880 lt!1707605))))))

(declare-fun e!2825170 () List!50837)

(declare-fun e!2825172 () List!50837)

(assert (=> b!4533937 (= e!2825170 e!2825172)))

(declare-fun b!4533939 () Bool)

(declare-fun e!2825171 () List!50837)

(assert (=> b!4533939 (= e!2825171 e!2825170)))

(assert (=> b!4533939 (= c!774285 (and ((_ is Cons!50713) (toList!4375 lt!1707617)) (= (_1!28880 (h!56584 (toList!4375 lt!1707617))) (_1!28880 lt!1707605))))))

(declare-fun b!4533940 () Bool)

(assert (=> b!4533940 (= e!2825172 call!316114)))

(declare-fun b!4533941 () Bool)

(assert (=> b!4533941 (= e!2825170 call!316112)))

(declare-fun c!774287 () Bool)

(declare-fun call!316113 () List!50837)

(declare-fun bm!316108 () Bool)

(assert (=> bm!316108 (= call!316113 ($colon$colon!956 e!2825173 (ite c!774287 (h!56584 (toList!4375 lt!1707617)) (tuple2!51173 (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))))

(declare-fun c!774288 () Bool)

(assert (=> bm!316108 (= c!774288 c!774287)))

(declare-fun b!4533942 () Bool)

(assert (=> b!4533942 (= e!2825173 (insertStrictlySorted!426 (t!357799 (toList!4375 lt!1707617)) (_1!28880 lt!1707605) (_2!28880 lt!1707605)))))

(declare-fun b!4533943 () Bool)

(assert (=> b!4533943 (= e!2825171 call!316113)))

(declare-fun b!4533944 () Bool)

(assert (=> b!4533944 (= e!2825172 call!316114)))

(declare-fun bm!316109 () Bool)

(assert (=> bm!316109 (= call!316112 call!316113)))

(declare-fun b!4533938 () Bool)

(declare-fun res!1888606 () Bool)

(assert (=> b!4533938 (=> (not res!1888606) (not e!2825174))))

(assert (=> b!4533938 (= res!1888606 (containsKey!1844 lt!1709122 (_1!28880 lt!1707605)))))

(declare-fun d!1400254 () Bool)

(assert (=> d!1400254 e!2825174))

(declare-fun res!1888607 () Bool)

(assert (=> d!1400254 (=> (not res!1888607) (not e!2825174))))

(assert (=> d!1400254 (= res!1888607 (isStrictlySorted!449 lt!1709122))))

(assert (=> d!1400254 (= lt!1709122 e!2825171)))

(assert (=> d!1400254 (= c!774287 (and ((_ is Cons!50713) (toList!4375 lt!1707617)) (bvslt (_1!28880 (h!56584 (toList!4375 lt!1707617))) (_1!28880 lt!1707605))))))

(assert (=> d!1400254 (isStrictlySorted!449 (toList!4375 lt!1707617))))

(assert (=> d!1400254 (= (insertStrictlySorted!426 (toList!4375 lt!1707617) (_1!28880 lt!1707605) (_2!28880 lt!1707605)) lt!1709122)))

(assert (= (and d!1400254 c!774287) b!4533943))

(assert (= (and d!1400254 (not c!774287)) b!4533939))

(assert (= (and b!4533939 c!774285) b!4533941))

(assert (= (and b!4533939 (not c!774285)) b!4533937))

(assert (= (and b!4533937 c!774286) b!4533940))

(assert (= (and b!4533937 (not c!774286)) b!4533944))

(assert (= (or b!4533940 b!4533944) bm!316107))

(assert (= (or b!4533941 bm!316107) bm!316109))

(assert (= (or b!4533943 bm!316109) bm!316108))

(assert (= (and bm!316108 c!774288) b!4533942))

(assert (= (and bm!316108 (not c!774288)) b!4533935))

(assert (= (and d!1400254 res!1888607) b!4533938))

(assert (= (and b!4533938 res!1888606) b!4533936))

(declare-fun m!5294617 () Bool)

(assert (=> d!1400254 m!5294617))

(declare-fun m!5294619 () Bool)

(assert (=> d!1400254 m!5294619))

(declare-fun m!5294621 () Bool)

(assert (=> b!4533942 m!5294621))

(declare-fun m!5294623 () Bool)

(assert (=> bm!316108 m!5294623))

(declare-fun m!5294625 () Bool)

(assert (=> b!4533936 m!5294625))

(declare-fun m!5294627 () Bool)

(assert (=> b!4533938 m!5294627))

(assert (=> d!1399312 d!1400254))

(declare-fun d!1400256 () Bool)

(declare-fun res!1888608 () Bool)

(declare-fun e!2825175 () Bool)

(assert (=> d!1400256 (=> res!1888608 e!2825175)))

(assert (=> d!1400256 (= res!1888608 (and ((_ is Cons!50712) (t!357798 newBucket!178)) (= (_1!28879 (h!56583 (t!357798 newBucket!178))) (_1!28879 (h!56583 newBucket!178)))))))

(assert (=> d!1400256 (= (containsKey!1840 (t!357798 newBucket!178) (_1!28879 (h!56583 newBucket!178))) e!2825175)))

(declare-fun b!4533945 () Bool)

(declare-fun e!2825176 () Bool)

(assert (=> b!4533945 (= e!2825175 e!2825176)))

(declare-fun res!1888609 () Bool)

(assert (=> b!4533945 (=> (not res!1888609) (not e!2825176))))

(assert (=> b!4533945 (= res!1888609 ((_ is Cons!50712) (t!357798 newBucket!178)))))

(declare-fun b!4533946 () Bool)

(assert (=> b!4533946 (= e!2825176 (containsKey!1840 (t!357798 (t!357798 newBucket!178)) (_1!28879 (h!56583 newBucket!178))))))

(assert (= (and d!1400256 (not res!1888608)) b!4533945))

(assert (= (and b!4533945 res!1888609) b!4533946))

(declare-fun m!5294629 () Bool)

(assert (=> b!4533946 m!5294629))

(assert (=> b!4532477 d!1400256))

(declare-fun d!1400258 () Bool)

(assert (=> d!1400258 (= (head!9456 (toList!4375 lm!1477)) (h!56584 (toList!4375 lm!1477)))))

(assert (=> d!1399172 d!1400258))

(assert (=> d!1399176 d!1399518))

(assert (=> d!1399176 d!1399508))

(assert (=> b!4532481 d!1400010))

(assert (=> b!4532481 d!1400012))

(declare-fun d!1400260 () Bool)

(declare-fun res!1888610 () Bool)

(declare-fun e!2825179 () Bool)

(assert (=> d!1400260 (=> res!1888610 e!2825179)))

(declare-fun e!2825178 () Bool)

(assert (=> d!1400260 (= res!1888610 e!2825178)))

(declare-fun res!1888612 () Bool)

(assert (=> d!1400260 (=> (not res!1888612) (not e!2825178))))

(assert (=> d!1400260 (= res!1888612 ((_ is Cons!50713) (t!357799 (t!357799 (toList!4375 lm!1477)))))))

(assert (=> d!1400260 (= (containsKeyBiggerList!164 (t!357799 (t!357799 (toList!4375 lm!1477))) key!3287) e!2825179)))

(declare-fun b!4533947 () Bool)

(assert (=> b!4533947 (= e!2825178 (containsKey!1840 (_2!28880 (h!56584 (t!357799 (t!357799 (toList!4375 lm!1477))))) key!3287))))

(declare-fun b!4533948 () Bool)

(declare-fun e!2825177 () Bool)

(assert (=> b!4533948 (= e!2825179 e!2825177)))

(declare-fun res!1888611 () Bool)

(assert (=> b!4533948 (=> (not res!1888611) (not e!2825177))))

(assert (=> b!4533948 (= res!1888611 ((_ is Cons!50713) (t!357799 (t!357799 (toList!4375 lm!1477)))))))

(declare-fun b!4533949 () Bool)

(assert (=> b!4533949 (= e!2825177 (containsKeyBiggerList!164 (t!357799 (t!357799 (t!357799 (toList!4375 lm!1477)))) key!3287))))

(assert (= (and d!1400260 res!1888612) b!4533947))

(assert (= (and d!1400260 (not res!1888610)) b!4533948))

(assert (= (and b!4533948 res!1888611) b!4533949))

(declare-fun m!5294631 () Bool)

(assert (=> b!4533947 m!5294631))

(declare-fun m!5294633 () Bool)

(assert (=> b!4533949 m!5294633))

(assert (=> b!4532463 d!1400260))

(assert (=> b!4532515 d!1400212))

(assert (=> b!4532515 d!1400214))

(assert (=> d!1399272 d!1399270))

(declare-fun d!1400262 () Bool)

(assert (=> d!1400262 (containsKeyBiggerList!164 (toList!4375 lt!1707598) key!3287)))

(assert (=> d!1400262 true))

(declare-fun _$33!700 () Unit!97092)

(assert (=> d!1400262 (= (choose!29765 lt!1707598 key!3287 hashF!1107) _$33!700)))

(declare-fun bs!871090 () Bool)

(assert (= bs!871090 d!1400262))

(assert (=> bs!871090 m!5290651))

(assert (=> d!1399272 d!1400262))

(declare-fun d!1400264 () Bool)

(declare-fun res!1888613 () Bool)

(declare-fun e!2825180 () Bool)

(assert (=> d!1400264 (=> res!1888613 e!2825180)))

(assert (=> d!1400264 (= res!1888613 ((_ is Nil!50713) (toList!4375 lt!1707598)))))

(assert (=> d!1400264 (= (forall!10315 (toList!4375 lt!1707598) lambda!174763) e!2825180)))

(declare-fun b!4533950 () Bool)

(declare-fun e!2825181 () Bool)

(assert (=> b!4533950 (= e!2825180 e!2825181)))

(declare-fun res!1888614 () Bool)

(assert (=> b!4533950 (=> (not res!1888614) (not e!2825181))))

(assert (=> b!4533950 (= res!1888614 (dynLambda!21195 lambda!174763 (h!56584 (toList!4375 lt!1707598))))))

(declare-fun b!4533951 () Bool)

(assert (=> b!4533951 (= e!2825181 (forall!10315 (t!357799 (toList!4375 lt!1707598)) lambda!174763))))

(assert (= (and d!1400264 (not res!1888613)) b!4533950))

(assert (= (and b!4533950 res!1888614) b!4533951))

(declare-fun b_lambda!157053 () Bool)

(assert (=> (not b_lambda!157053) (not b!4533950)))

(declare-fun m!5294635 () Bool)

(assert (=> b!4533950 m!5294635))

(declare-fun m!5294637 () Bool)

(assert (=> b!4533951 m!5294637))

(assert (=> d!1399272 d!1400264))

(declare-fun d!1400266 () Bool)

(assert (=> d!1400266 (dynLambda!21195 lambda!174636 (h!56584 (toList!4375 lm!1477)))))

(assert (=> d!1400266 true))

(declare-fun _$7!1919 () Unit!97092)

(assert (=> d!1400266 (= (choose!29769 (toList!4375 lm!1477) lambda!174636 (h!56584 (toList!4375 lm!1477))) _$7!1919)))

(declare-fun b_lambda!157055 () Bool)

(assert (=> (not b_lambda!157055) (not d!1400266)))

(declare-fun bs!871091 () Bool)

(assert (= bs!871091 d!1400266))

(assert (=> bs!871091 m!5291645))

(assert (=> d!1399320 d!1400266))

(declare-fun d!1400268 () Bool)

(declare-fun res!1888615 () Bool)

(declare-fun e!2825182 () Bool)

(assert (=> d!1400268 (=> res!1888615 e!2825182)))

(assert (=> d!1400268 (= res!1888615 ((_ is Nil!50713) (toList!4375 lm!1477)))))

(assert (=> d!1400268 (= (forall!10315 (toList!4375 lm!1477) lambda!174636) e!2825182)))

(declare-fun b!4533952 () Bool)

(declare-fun e!2825183 () Bool)

(assert (=> b!4533952 (= e!2825182 e!2825183)))

(declare-fun res!1888616 () Bool)

(assert (=> b!4533952 (=> (not res!1888616) (not e!2825183))))

(assert (=> b!4533952 (= res!1888616 (dynLambda!21195 lambda!174636 (h!56584 (toList!4375 lm!1477))))))

(declare-fun b!4533953 () Bool)

(assert (=> b!4533953 (= e!2825183 (forall!10315 (t!357799 (toList!4375 lm!1477)) lambda!174636))))

(assert (= (and d!1400268 (not res!1888615)) b!4533952))

(assert (= (and b!4533952 res!1888616) b!4533953))

(declare-fun b_lambda!157057 () Bool)

(assert (=> (not b_lambda!157057) (not b!4533952)))

(assert (=> b!4533952 m!5291645))

(declare-fun m!5294639 () Bool)

(assert (=> b!4533953 m!5294639))

(assert (=> d!1399320 d!1400268))

(declare-fun d!1400270 () Bool)

(declare-fun res!1888617 () Bool)

(declare-fun e!2825184 () Bool)

(assert (=> d!1400270 (=> res!1888617 e!2825184)))

(assert (=> d!1400270 (= res!1888617 (and ((_ is Cons!50712) (t!357798 (_2!28880 lt!1707605))) (= (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605)))) key!3287)))))

(assert (=> d!1400270 (= (containsKey!1840 (t!357798 (_2!28880 lt!1707605)) key!3287) e!2825184)))

(declare-fun b!4533954 () Bool)

(declare-fun e!2825185 () Bool)

(assert (=> b!4533954 (= e!2825184 e!2825185)))

(declare-fun res!1888618 () Bool)

(assert (=> b!4533954 (=> (not res!1888618) (not e!2825185))))

(assert (=> b!4533954 (= res!1888618 ((_ is Cons!50712) (t!357798 (_2!28880 lt!1707605))))))

(declare-fun b!4533955 () Bool)

(assert (=> b!4533955 (= e!2825185 (containsKey!1840 (t!357798 (t!357798 (_2!28880 lt!1707605))) key!3287))))

(assert (= (and d!1400270 (not res!1888617)) b!4533954))

(assert (= (and b!4533954 res!1888618) b!4533955))

(declare-fun m!5294641 () Bool)

(assert (=> b!4533955 m!5294641))

(assert (=> b!4532148 d!1400270))

(declare-fun d!1400272 () Bool)

(declare-fun res!1888619 () Bool)

(declare-fun e!2825186 () Bool)

(assert (=> d!1400272 (=> res!1888619 e!2825186)))

(assert (=> d!1400272 (= res!1888619 ((_ is Nil!50713) (t!357799 (toList!4375 lm!1477))))))

(assert (=> d!1400272 (= (forall!10315 (t!357799 (toList!4375 lm!1477)) lambda!174635) e!2825186)))

(declare-fun b!4533956 () Bool)

(declare-fun e!2825187 () Bool)

(assert (=> b!4533956 (= e!2825186 e!2825187)))

(declare-fun res!1888620 () Bool)

(assert (=> b!4533956 (=> (not res!1888620) (not e!2825187))))

(assert (=> b!4533956 (= res!1888620 (dynLambda!21195 lambda!174635 (h!56584 (t!357799 (toList!4375 lm!1477)))))))

(declare-fun b!4533957 () Bool)

(assert (=> b!4533957 (= e!2825187 (forall!10315 (t!357799 (t!357799 (toList!4375 lm!1477))) lambda!174635))))

(assert (= (and d!1400272 (not res!1888619)) b!4533956))

(assert (= (and b!4533956 res!1888620) b!4533957))

(declare-fun b_lambda!157059 () Bool)

(assert (=> (not b_lambda!157059) (not b!4533956)))

(declare-fun m!5294643 () Bool)

(assert (=> b!4533956 m!5294643))

(declare-fun m!5294645 () Bool)

(assert (=> b!4533957 m!5294645))

(assert (=> b!4532215 d!1400272))

(assert (=> b!4532552 d!1399088))

(assert (=> b!4532519 d!1399638))

(assert (=> b!4532519 d!1399566))

(assert (=> b!4532558 d!1399640))

(assert (=> b!4532448 d!1400122))

(declare-fun d!1400274 () Bool)

(declare-fun res!1888621 () Bool)

(declare-fun e!2825188 () Bool)

(assert (=> d!1400274 (=> res!1888621 e!2825188)))

(assert (=> d!1400274 (= res!1888621 ((_ is Nil!50712) (toList!4376 lt!1707628)))))

(assert (=> d!1400274 (= (forall!10317 (toList!4376 lt!1707628) (ite c!773914 lambda!174756 lambda!174757)) e!2825188)))

(declare-fun b!4533958 () Bool)

(declare-fun e!2825189 () Bool)

(assert (=> b!4533958 (= e!2825188 e!2825189)))

(declare-fun res!1888622 () Bool)

(assert (=> b!4533958 (=> (not res!1888622) (not e!2825189))))

(assert (=> b!4533958 (= res!1888622 (dynLambda!21197 (ite c!773914 lambda!174756 lambda!174757) (h!56583 (toList!4376 lt!1707628))))))

(declare-fun b!4533959 () Bool)

(assert (=> b!4533959 (= e!2825189 (forall!10317 (t!357798 (toList!4376 lt!1707628)) (ite c!773914 lambda!174756 lambda!174757)))))

(assert (= (and d!1400274 (not res!1888621)) b!4533958))

(assert (= (and b!4533958 res!1888622) b!4533959))

(declare-fun b_lambda!157061 () Bool)

(assert (=> (not b_lambda!157061) (not b!4533958)))

(declare-fun m!5294647 () Bool)

(assert (=> b!4533958 m!5294647))

(declare-fun m!5294649 () Bool)

(assert (=> b!4533959 m!5294649))

(assert (=> bm!315946 d!1400274))

(declare-fun d!1400276 () Bool)

(declare-fun res!1888623 () Bool)

(declare-fun e!2825190 () Bool)

(assert (=> d!1400276 (=> res!1888623 e!2825190)))

(assert (=> d!1400276 (= res!1888623 (and ((_ is Cons!50712) lt!1708068) (= (_1!28879 (h!56583 lt!1708068)) key!3287)))))

(assert (=> d!1400276 (= (containsKey!1840 lt!1708068 key!3287) e!2825190)))

(declare-fun b!4533960 () Bool)

(declare-fun e!2825191 () Bool)

(assert (=> b!4533960 (= e!2825190 e!2825191)))

(declare-fun res!1888624 () Bool)

(assert (=> b!4533960 (=> (not res!1888624) (not e!2825191))))

(assert (=> b!4533960 (= res!1888624 ((_ is Cons!50712) lt!1708068))))

(declare-fun b!4533961 () Bool)

(assert (=> b!4533961 (= e!2825191 (containsKey!1840 (t!357798 lt!1708068) key!3287))))

(assert (= (and d!1400276 (not res!1888623)) b!4533960))

(assert (= (and b!4533960 res!1888624) b!4533961))

(declare-fun m!5294651 () Bool)

(assert (=> b!4533961 m!5294651))

(assert (=> d!1399298 d!1400276))

(declare-fun d!1400278 () Bool)

(declare-fun res!1888625 () Bool)

(declare-fun e!2825192 () Bool)

(assert (=> d!1400278 (=> res!1888625 e!2825192)))

(assert (=> d!1400278 (= res!1888625 (not ((_ is Cons!50712) lt!1707613)))))

(assert (=> d!1400278 (= (noDuplicateKeys!1184 lt!1707613) e!2825192)))

(declare-fun b!4533962 () Bool)

(declare-fun e!2825193 () Bool)

(assert (=> b!4533962 (= e!2825192 e!2825193)))

(declare-fun res!1888626 () Bool)

(assert (=> b!4533962 (=> (not res!1888626) (not e!2825193))))

(assert (=> b!4533962 (= res!1888626 (not (containsKey!1840 (t!357798 lt!1707613) (_1!28879 (h!56583 lt!1707613)))))))

(declare-fun b!4533963 () Bool)

(assert (=> b!4533963 (= e!2825193 (noDuplicateKeys!1184 (t!357798 lt!1707613)))))

(assert (= (and d!1400278 (not res!1888625)) b!4533962))

(assert (= (and b!4533962 res!1888626) b!4533963))

(declare-fun m!5294653 () Bool)

(assert (=> b!4533962 m!5294653))

(assert (=> b!4533963 m!5292473))

(assert (=> d!1399298 d!1400278))

(declare-fun b!4533965 () Bool)

(declare-fun e!2825194 () Option!11171)

(declare-fun e!2825195 () Option!11171)

(assert (=> b!4533965 (= e!2825194 e!2825195)))

(declare-fun c!774290 () Bool)

(assert (=> b!4533965 (= c!774290 (and ((_ is Cons!50713) (toList!4375 lt!1708096)) (not (= (_1!28880 (h!56584 (toList!4375 lt!1708096))) (_1!28880 lt!1707605)))))))

(declare-fun b!4533967 () Bool)

(assert (=> b!4533967 (= e!2825195 None!11170)))

(declare-fun b!4533966 () Bool)

(assert (=> b!4533966 (= e!2825195 (getValueByKey!1129 (t!357799 (toList!4375 lt!1708096)) (_1!28880 lt!1707605)))))

(declare-fun b!4533964 () Bool)

(assert (=> b!4533964 (= e!2825194 (Some!11170 (_2!28880 (h!56584 (toList!4375 lt!1708096)))))))

(declare-fun d!1400280 () Bool)

(declare-fun c!774289 () Bool)

(assert (=> d!1400280 (= c!774289 (and ((_ is Cons!50713) (toList!4375 lt!1708096)) (= (_1!28880 (h!56584 (toList!4375 lt!1708096))) (_1!28880 lt!1707605))))))

(assert (=> d!1400280 (= (getValueByKey!1129 (toList!4375 lt!1708096) (_1!28880 lt!1707605)) e!2825194)))

(assert (= (and d!1400280 c!774289) b!4533964))

(assert (= (and d!1400280 (not c!774289)) b!4533965))

(assert (= (and b!4533965 c!774290) b!4533966))

(assert (= (and b!4533965 (not c!774290)) b!4533967))

(declare-fun m!5294655 () Bool)

(assert (=> b!4533966 m!5294655))

(assert (=> b!4532530 d!1400280))

(assert (=> b!4532426 d!1399742))

(declare-fun d!1400282 () Bool)

(declare-fun res!1888627 () Bool)

(declare-fun e!2825196 () Bool)

(assert (=> d!1400282 (=> res!1888627 e!2825196)))

(assert (=> d!1400282 (= res!1888627 ((_ is Nil!50712) (ite c!773916 (toList!4376 lt!1707612) (_2!28880 lt!1707605))))))

(assert (=> d!1400282 (= (forall!10317 (ite c!773916 (toList!4376 lt!1707612) (_2!28880 lt!1707605)) (ite c!773916 lambda!174764 lambda!174766)) e!2825196)))

(declare-fun b!4533968 () Bool)

(declare-fun e!2825197 () Bool)

(assert (=> b!4533968 (= e!2825196 e!2825197)))

(declare-fun res!1888628 () Bool)

(assert (=> b!4533968 (=> (not res!1888628) (not e!2825197))))

(assert (=> b!4533968 (= res!1888628 (dynLambda!21197 (ite c!773916 lambda!174764 lambda!174766) (h!56583 (ite c!773916 (toList!4376 lt!1707612) (_2!28880 lt!1707605)))))))

(declare-fun b!4533969 () Bool)

(assert (=> b!4533969 (= e!2825197 (forall!10317 (t!357798 (ite c!773916 (toList!4376 lt!1707612) (_2!28880 lt!1707605))) (ite c!773916 lambda!174764 lambda!174766)))))

(assert (= (and d!1400282 (not res!1888627)) b!4533968))

(assert (= (and b!4533968 res!1888628) b!4533969))

(declare-fun b_lambda!157063 () Bool)

(assert (=> (not b_lambda!157063) (not b!4533968)))

(declare-fun m!5294657 () Bool)

(assert (=> b!4533968 m!5294657))

(declare-fun m!5294659 () Bool)

(assert (=> b!4533969 m!5294659))

(assert (=> bm!315950 d!1400282))

(declare-fun b!4533970 () Bool)

(declare-fun e!2825198 () Bool)

(declare-fun e!2825200 () Bool)

(assert (=> b!4533970 (= e!2825198 e!2825200)))

(declare-fun res!1888630 () Bool)

(assert (=> b!4533970 (=> (not res!1888630) (not e!2825200))))

(assert (=> b!4533970 (= res!1888630 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707797) key!3287)))))

(declare-fun b!4533971 () Bool)

(declare-fun e!2825203 () List!50839)

(assert (=> b!4533971 (= e!2825203 (getKeysList!483 (toList!4376 lt!1707797)))))

(declare-fun b!4533972 () Bool)

(assert (=> b!4533972 (= e!2825203 (keys!17636 lt!1707797))))

(declare-fun b!4533973 () Bool)

(assert (=> b!4533973 (= e!2825200 (contains!13483 (keys!17636 lt!1707797) key!3287))))

(declare-fun b!4533974 () Bool)

(declare-fun e!2825202 () Bool)

(assert (=> b!4533974 (= e!2825202 (not (contains!13483 (keys!17636 lt!1707797) key!3287)))))

(declare-fun b!4533975 () Bool)

(declare-fun e!2825201 () Unit!97092)

(declare-fun lt!1709127 () Unit!97092)

(assert (=> b!4533975 (= e!2825201 lt!1709127)))

(declare-fun lt!1709128 () Unit!97092)

(assert (=> b!4533975 (= lt!1709128 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1707797) key!3287))))

(assert (=> b!4533975 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707797) key!3287))))

(declare-fun lt!1709125 () Unit!97092)

(assert (=> b!4533975 (= lt!1709125 lt!1709128)))

(assert (=> b!4533975 (= lt!1709127 (lemmaInListThenGetKeysListContains!479 (toList!4376 lt!1707797) key!3287))))

(declare-fun call!316115 () Bool)

(assert (=> b!4533975 call!316115))

(declare-fun b!4533976 () Bool)

(declare-fun e!2825199 () Unit!97092)

(assert (=> b!4533976 (= e!2825201 e!2825199)))

(declare-fun c!774292 () Bool)

(assert (=> b!4533976 (= c!774292 call!316115)))

(declare-fun b!4533977 () Bool)

(assert (=> b!4533977 false))

(declare-fun lt!1709123 () Unit!97092)

(declare-fun lt!1709126 () Unit!97092)

(assert (=> b!4533977 (= lt!1709123 lt!1709126)))

(assert (=> b!4533977 (containsKey!1843 (toList!4376 lt!1707797) key!3287)))

(assert (=> b!4533977 (= lt!1709126 (lemmaInGetKeysListThenContainsKey!482 (toList!4376 lt!1707797) key!3287))))

(declare-fun Unit!97496 () Unit!97092)

(assert (=> b!4533977 (= e!2825199 Unit!97496)))

(declare-fun d!1400284 () Bool)

(assert (=> d!1400284 e!2825198))

(declare-fun res!1888631 () Bool)

(assert (=> d!1400284 (=> res!1888631 e!2825198)))

(assert (=> d!1400284 (= res!1888631 e!2825202)))

(declare-fun res!1888629 () Bool)

(assert (=> d!1400284 (=> (not res!1888629) (not e!2825202))))

(declare-fun lt!1709130 () Bool)

(assert (=> d!1400284 (= res!1888629 (not lt!1709130))))

(declare-fun lt!1709129 () Bool)

(assert (=> d!1400284 (= lt!1709130 lt!1709129)))

(declare-fun lt!1709124 () Unit!97092)

(assert (=> d!1400284 (= lt!1709124 e!2825201)))

(declare-fun c!774293 () Bool)

(assert (=> d!1400284 (= c!774293 lt!1709129)))

(assert (=> d!1400284 (= lt!1709129 (containsKey!1843 (toList!4376 lt!1707797) key!3287))))

(assert (=> d!1400284 (= (contains!13479 lt!1707797 key!3287) lt!1709130)))

(declare-fun b!4533978 () Bool)

(declare-fun Unit!97497 () Unit!97092)

(assert (=> b!4533978 (= e!2825199 Unit!97497)))

(declare-fun bm!316110 () Bool)

(assert (=> bm!316110 (= call!316115 (contains!13483 e!2825203 key!3287))))

(declare-fun c!774291 () Bool)

(assert (=> bm!316110 (= c!774291 c!774293)))

(assert (= (and d!1400284 c!774293) b!4533975))

(assert (= (and d!1400284 (not c!774293)) b!4533976))

(assert (= (and b!4533976 c!774292) b!4533977))

(assert (= (and b!4533976 (not c!774292)) b!4533978))

(assert (= (or b!4533975 b!4533976) bm!316110))

(assert (= (and bm!316110 c!774291) b!4533971))

(assert (= (and bm!316110 (not c!774291)) b!4533972))

(assert (= (and d!1400284 res!1888629) b!4533974))

(assert (= (and d!1400284 (not res!1888631)) b!4533970))

(assert (= (and b!4533970 res!1888630) b!4533973))

(declare-fun m!5294661 () Bool)

(assert (=> b!4533975 m!5294661))

(declare-fun m!5294663 () Bool)

(assert (=> b!4533975 m!5294663))

(assert (=> b!4533975 m!5294663))

(declare-fun m!5294665 () Bool)

(assert (=> b!4533975 m!5294665))

(declare-fun m!5294667 () Bool)

(assert (=> b!4533975 m!5294667))

(assert (=> b!4533973 m!5291031))

(assert (=> b!4533973 m!5291031))

(declare-fun m!5294669 () Bool)

(assert (=> b!4533973 m!5294669))

(assert (=> b!4533972 m!5291031))

(declare-fun m!5294671 () Bool)

(assert (=> bm!316110 m!5294671))

(assert (=> b!4533974 m!5291031))

(assert (=> b!4533974 m!5291031))

(assert (=> b!4533974 m!5294669))

(declare-fun m!5294673 () Bool)

(assert (=> b!4533977 m!5294673))

(declare-fun m!5294675 () Bool)

(assert (=> b!4533977 m!5294675))

(assert (=> b!4533970 m!5294663))

(assert (=> b!4533970 m!5294663))

(assert (=> b!4533970 m!5294665))

(assert (=> b!4533971 m!5292435))

(assert (=> d!1400284 m!5294673))

(assert (=> d!1399154 d!1400284))

(declare-fun b!4533979 () Bool)

(declare-fun res!1888634 () Bool)

(declare-fun e!2825210 () Bool)

(assert (=> b!4533979 (=> (not res!1888634) (not e!2825210))))

(declare-fun lt!1709142 () List!50836)

(assert (=> b!4533979 (= res!1888634 (not (containsKey!1843 lt!1709142 key!3287)))))

(declare-fun b!4533980 () Bool)

(declare-fun e!2825206 () Unit!97092)

(declare-fun Unit!97498 () Unit!97092)

(assert (=> b!4533980 (= e!2825206 Unit!97498)))

(declare-fun lt!1709148 () Unit!97092)

(assert (=> b!4533980 (= lt!1709148 (lemmaInGetKeysListThenContainsKey!482 (t!357798 (toList!4376 lt!1707612)) (_1!28879 (h!56583 (toList!4376 lt!1707612)))))))

(declare-fun call!316117 () Bool)

(assert (=> b!4533980 call!316117))

(declare-fun lt!1709138 () Unit!97092)

(assert (=> b!4533980 (= lt!1709138 lt!1709148)))

(assert (=> b!4533980 false))

(declare-fun b!4533981 () Bool)

(declare-fun Unit!97499 () Unit!97092)

(assert (=> b!4533981 (= e!2825206 Unit!97499)))

(declare-fun c!774300 () Bool)

(declare-fun bm!316111 () Bool)

(declare-fun lt!1709134 () K!12100)

(assert (=> bm!316111 (= call!316117 (containsKey!1843 (t!357798 (toList!4376 lt!1707612)) (ite c!774300 lt!1709134 (_1!28879 (h!56583 (toList!4376 lt!1707612))))))))

(declare-fun b!4533982 () Bool)

(declare-fun e!2825207 () Unit!97092)

(declare-fun Unit!97500 () Unit!97092)

(assert (=> b!4533982 (= e!2825207 Unit!97500)))

(declare-fun b!4533983 () Bool)

(declare-fun e!2825208 () Unit!97092)

(declare-fun Unit!97501 () Unit!97092)

(assert (=> b!4533983 (= e!2825208 Unit!97501)))

(declare-fun lt!1709143 () V!12346)

(assert (=> b!4533983 (= lt!1709143 (get!16652 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287)))))

(assert (=> b!4533983 (= lt!1709134 key!3287)))

(declare-fun lt!1709140 () K!12100)

(assert (=> b!4533983 (= lt!1709140 key!3287)))

(declare-fun lt!1709132 () Unit!97092)

(assert (=> b!4533983 (= lt!1709132 (lemmaContainsTupleThenContainsKey!73 (t!357798 (toList!4376 lt!1707612)) lt!1709134 (get!16652 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287))))))

(assert (=> b!4533983 call!316117))

(declare-fun lt!1709146 () Unit!97092)

(assert (=> b!4533983 (= lt!1709146 lt!1709132)))

(assert (=> b!4533983 false))

(declare-fun b!4533985 () Bool)

(declare-fun e!2825205 () List!50836)

(assert (=> b!4533985 (= e!2825205 Nil!50712)))

(declare-fun bm!316112 () Bool)

(declare-fun call!316116 () (InoxSet tuple2!51170))

(assert (=> bm!316112 (= call!316116 (content!8411 (t!357798 (toList!4376 lt!1707612))))))

(declare-fun b!4533986 () Bool)

(declare-fun e!2825209 () List!50836)

(assert (=> b!4533986 (= e!2825209 (removePresrvNoDuplicatedKeys!159 (t!357798 (toList!4376 lt!1707612)) key!3287))))

(declare-fun bm!316113 () Bool)

(declare-fun call!316120 () (InoxSet tuple2!51170))

(assert (=> bm!316113 (= call!316120 (content!8411 (toList!4376 lt!1707612)))))

(declare-fun bm!316114 () Bool)

(declare-fun call!316118 () (InoxSet tuple2!51170))

(assert (=> bm!316114 (= call!316118 (content!8411 (toList!4376 lt!1707612)))))

(declare-fun b!4533987 () Bool)

(declare-fun Unit!97502 () Unit!97092)

(assert (=> b!4533987 (= e!2825207 Unit!97502)))

(declare-fun lt!1709139 () List!50836)

(assert (=> b!4533987 (= lt!1709139 (removePresrvNoDuplicatedKeys!159 (t!357798 (toList!4376 lt!1707612)) key!3287))))

(declare-fun lt!1709135 () Unit!97092)

(assert (=> b!4533987 (= lt!1709135 (lemmaInListThenGetKeysListContains!479 lt!1709139 (_1!28879 (h!56583 (toList!4376 lt!1707612)))))))

(assert (=> b!4533987 (contains!13483 (getKeysList!483 lt!1709139) (_1!28879 (h!56583 (toList!4376 lt!1707612))))))

(declare-fun lt!1709136 () Unit!97092)

(assert (=> b!4533987 (= lt!1709136 lt!1709135)))

(assert (=> b!4533987 false))

(declare-fun b!4533988 () Bool)

(assert (=> b!4533988 (= e!2825209 (toList!4376 lt!1707612))))

(declare-fun b!4533989 () Bool)

(declare-fun e!2825204 () Bool)

(declare-fun call!316119 () (InoxSet tuple2!51170))

(assert (=> b!4533989 (= e!2825204 (= call!316119 call!316120))))

(declare-fun b!4533990 () Bool)

(assert (=> b!4533990 (= e!2825210 e!2825204)))

(declare-fun c!774294 () Bool)

(assert (=> b!4533990 (= c!774294 (containsKey!1843 (toList!4376 lt!1707612) key!3287))))

(declare-fun b!4533991 () Bool)

(declare-fun res!1888633 () Bool)

(assert (=> b!4533991 (=> (not res!1888633) (not e!2825210))))

(assert (=> b!4533991 (= res!1888633 (= (content!8412 (getKeysList!483 lt!1709142)) ((_ map and) (content!8412 (getKeysList!483 (toList!4376 lt!1707612))) ((_ map not) (store ((as const (Array K!12100 Bool)) false) key!3287 true)))))))

(declare-fun b!4533992 () Bool)

(assert (=> b!4533992 (= call!316116 ((_ map and) call!316118 ((_ map not) (store ((as const (Array tuple2!51170 Bool)) false) (tuple2!51171 key!3287 (get!16652 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287))) true))))))

(declare-fun lt!1709137 () Unit!97092)

(assert (=> b!4533992 (= lt!1709137 e!2825208)))

(declare-fun c!774296 () Bool)

(assert (=> b!4533992 (= c!774296 (contains!13485 (t!357798 (toList!4376 lt!1707612)) (tuple2!51171 key!3287 (get!16652 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287)))))))

(declare-fun e!2825211 () Unit!97092)

(declare-fun Unit!97503 () Unit!97092)

(assert (=> b!4533992 (= e!2825211 Unit!97503)))

(declare-fun bm!316115 () Bool)

(assert (=> bm!316115 (= call!316119 (content!8411 lt!1709142))))

(declare-fun b!4533993 () Bool)

(declare-fun e!2825212 () List!50836)

(assert (=> b!4533993 (= e!2825212 (t!357798 (toList!4376 lt!1707612)))))

(declare-fun c!774301 () Bool)

(declare-fun call!316121 () Bool)

(assert (=> b!4533993 (= c!774301 call!316121)))

(declare-fun lt!1709131 () Unit!97092)

(assert (=> b!4533993 (= lt!1709131 e!2825211)))

(declare-fun b!4533994 () Bool)

(assert (=> b!4533994 (= e!2825204 (= call!316119 ((_ map and) call!316120 ((_ map not) (store ((as const (Array tuple2!51170 Bool)) false) (tuple2!51171 key!3287 (get!16652 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287))) true)))))))

(assert (=> b!4533994 (containsKey!1843 (toList!4376 lt!1707612) key!3287)))

(declare-fun lt!1709133 () Unit!97092)

(assert (=> b!4533994 (= lt!1709133 (lemmaContainsKeyImpliesGetValueByKeyDefined!1032 (toList!4376 lt!1707612) key!3287))))

(assert (=> b!4533994 (isDefined!8451 (getValueByKey!1128 (toList!4376 lt!1707612) key!3287))))

(declare-fun lt!1709145 () Unit!97092)

(assert (=> b!4533994 (= lt!1709145 lt!1709133)))

(declare-fun d!1400286 () Bool)

(assert (=> d!1400286 e!2825210))

(declare-fun res!1888632 () Bool)

(assert (=> d!1400286 (=> (not res!1888632) (not e!2825210))))

(assert (=> d!1400286 (= res!1888632 (invariantList!1035 lt!1709142))))

(assert (=> d!1400286 (= lt!1709142 e!2825212)))

(assert (=> d!1400286 (= c!774300 (and ((_ is Cons!50712) (toList!4376 lt!1707612)) (= (_1!28879 (h!56583 (toList!4376 lt!1707612))) key!3287)))))

(assert (=> d!1400286 (invariantList!1035 (toList!4376 lt!1707612))))

(assert (=> d!1400286 (= (removePresrvNoDuplicatedKeys!159 (toList!4376 lt!1707612) key!3287) lt!1709142)))

(declare-fun b!4533984 () Bool)

(declare-fun lt!1709147 () Unit!97092)

(assert (=> b!4533984 (= lt!1709147 e!2825207)))

(declare-fun c!774297 () Bool)

(assert (=> b!4533984 (= c!774297 call!316121)))

(declare-fun lt!1709144 () Unit!97092)

(assert (=> b!4533984 (= lt!1709144 e!2825206)))

(declare-fun c!774299 () Bool)

(assert (=> b!4533984 (= c!774299 (contains!13483 (getKeysList!483 (t!357798 (toList!4376 lt!1707612))) (_1!28879 (h!56583 (toList!4376 lt!1707612)))))))

(declare-fun lt!1709141 () List!50836)

(assert (=> b!4533984 (= lt!1709141 ($colon$colon!958 (removePresrvNoDuplicatedKeys!159 (t!357798 (toList!4376 lt!1707612)) key!3287) (h!56583 (toList!4376 lt!1707612))))))

(assert (=> b!4533984 (= e!2825205 lt!1709141)))

(declare-fun b!4533995 () Bool)

(declare-fun Unit!97504 () Unit!97092)

(assert (=> b!4533995 (= e!2825208 Unit!97504)))

(declare-fun b!4533996 () Bool)

(assert (=> b!4533996 (= e!2825212 e!2825205)))

(declare-fun c!774295 () Bool)

(assert (=> b!4533996 (= c!774295 (and ((_ is Cons!50712) (toList!4376 lt!1707612)) (not (= (_1!28879 (h!56583 (toList!4376 lt!1707612))) key!3287))))))

(declare-fun b!4533997 () Bool)

(assert (=> b!4533997 (= call!316116 call!316118)))

(declare-fun Unit!97505 () Unit!97092)

(assert (=> b!4533997 (= e!2825211 Unit!97505)))

(declare-fun bm!316116 () Bool)

(assert (=> bm!316116 (= call!316121 (containsKey!1843 e!2825209 (ite c!774300 key!3287 (_1!28879 (h!56583 (toList!4376 lt!1707612))))))))

(declare-fun c!774298 () Bool)

(assert (=> bm!316116 (= c!774298 c!774300)))

(assert (= (and d!1400286 c!774300) b!4533993))

(assert (= (and d!1400286 (not c!774300)) b!4533996))

(assert (= (and b!4533993 c!774301) b!4533992))

(assert (= (and b!4533993 (not c!774301)) b!4533997))

(assert (= (and b!4533992 c!774296) b!4533983))

(assert (= (and b!4533992 (not c!774296)) b!4533995))

(assert (= (or b!4533992 b!4533997) bm!316112))

(assert (= (or b!4533992 b!4533997) bm!316114))

(assert (= (and b!4533996 c!774295) b!4533984))

(assert (= (and b!4533996 (not c!774295)) b!4533985))

(assert (= (and b!4533984 c!774299) b!4533980))

(assert (= (and b!4533984 (not c!774299)) b!4533981))

(assert (= (and b!4533984 c!774297) b!4533987))

(assert (= (and b!4533984 (not c!774297)) b!4533982))

(assert (= (or b!4533983 b!4533980) bm!316111))

(assert (= (or b!4533993 b!4533984) bm!316116))

(assert (= (and bm!316116 c!774298) b!4533988))

(assert (= (and bm!316116 (not c!774298)) b!4533986))

(assert (= (and d!1400286 res!1888632) b!4533979))

(assert (= (and b!4533979 res!1888634) b!4533991))

(assert (= (and b!4533991 res!1888633) b!4533990))

(assert (= (and b!4533990 c!774294) b!4533994))

(assert (= (and b!4533990 (not c!774294)) b!4533989))

(assert (= (or b!4533994 b!4533989) bm!316115))

(assert (= (or b!4533994 b!4533989) bm!316113))

(declare-fun m!5294677 () Bool)

(assert (=> d!1400286 m!5294677))

(assert (=> d!1400286 m!5292177))

(declare-fun m!5294679 () Bool)

(assert (=> bm!316116 m!5294679))

(declare-fun m!5294681 () Bool)

(assert (=> bm!316113 m!5294681))

(assert (=> b!4533992 m!5291567))

(assert (=> b!4533992 m!5291567))

(declare-fun m!5294683 () Bool)

(assert (=> b!4533992 m!5294683))

(declare-fun m!5294685 () Bool)

(assert (=> b!4533992 m!5294685))

(declare-fun m!5294687 () Bool)

(assert (=> b!4533992 m!5294687))

(assert (=> b!4533991 m!5291027))

(assert (=> b!4533991 m!5291581))

(declare-fun m!5294689 () Bool)

(assert (=> b!4533991 m!5294689))

(declare-fun m!5294691 () Bool)

(assert (=> b!4533991 m!5294691))

(assert (=> b!4533991 m!5291581))

(declare-fun m!5294693 () Bool)

(assert (=> b!4533991 m!5294693))

(assert (=> b!4533991 m!5294689))

(assert (=> b!4533983 m!5291567))

(assert (=> b!4533983 m!5291567))

(assert (=> b!4533983 m!5294683))

(assert (=> b!4533983 m!5294683))

(declare-fun m!5294695 () Bool)

(assert (=> b!4533983 m!5294695))

(assert (=> b!4533994 m!5291567))

(assert (=> b!4533994 m!5294683))

(assert (=> b!4533994 m!5291567))

(assert (=> b!4533994 m!5291577))

(assert (=> b!4533994 m!5291565))

(assert (=> b!4533994 m!5291567))

(assert (=> b!4533994 m!5291569))

(assert (=> b!4533994 m!5294685))

(declare-fun m!5294697 () Bool)

(assert (=> b!4533987 m!5294697))

(declare-fun m!5294699 () Bool)

(assert (=> b!4533987 m!5294699))

(declare-fun m!5294701 () Bool)

(assert (=> b!4533987 m!5294701))

(assert (=> b!4533987 m!5294701))

(declare-fun m!5294703 () Bool)

(assert (=> b!4533987 m!5294703))

(declare-fun m!5294705 () Bool)

(assert (=> bm!316112 m!5294705))

(declare-fun m!5294707 () Bool)

(assert (=> b!4533980 m!5294707))

(declare-fun m!5294709 () Bool)

(assert (=> bm!316115 m!5294709))

(declare-fun m!5294711 () Bool)

(assert (=> bm!316111 m!5294711))

(assert (=> bm!316114 m!5294681))

(assert (=> b!4533984 m!5294427))

(assert (=> b!4533984 m!5294427))

(assert (=> b!4533984 m!5294433))

(assert (=> b!4533984 m!5294697))

(assert (=> b!4533984 m!5294697))

(declare-fun m!5294713 () Bool)

(assert (=> b!4533984 m!5294713))

(declare-fun m!5294715 () Bool)

(assert (=> b!4533979 m!5294715))

(assert (=> b!4533990 m!5291577))

(assert (=> b!4533986 m!5294697))

(assert (=> d!1399154 d!1400286))

(declare-fun b!4533998 () Bool)

(declare-fun e!2825213 () Bool)

(declare-fun tp!1338450 () Bool)

(assert (=> b!4533998 (= e!2825213 (and tp_is_empty!28013 tp_is_empty!28015 tp!1338450))))

(assert (=> b!4532571 (= tp!1338439 e!2825213)))

(assert (= (and b!4532571 ((_ is Cons!50712) (t!357798 (t!357798 newBucket!178)))) b!4533998))

(declare-fun b!4533999 () Bool)

(declare-fun tp!1338451 () Bool)

(declare-fun e!2825214 () Bool)

(assert (=> b!4533999 (= e!2825214 (and tp_is_empty!28013 tp_is_empty!28015 tp!1338451))))

(assert (=> b!4532576 (= tp!1338444 e!2825214)))

(assert (= (and b!4532576 ((_ is Cons!50712) (_2!28880 (h!56584 (toList!4375 lm!1477))))) b!4533999))

(declare-fun b!4534000 () Bool)

(declare-fun e!2825215 () Bool)

(declare-fun tp!1338452 () Bool)

(declare-fun tp!1338453 () Bool)

(assert (=> b!4534000 (= e!2825215 (and tp!1338452 tp!1338453))))

(assert (=> b!4532576 (= tp!1338445 e!2825215)))

(assert (= (and b!4532576 ((_ is Cons!50713) (t!357799 (toList!4375 lm!1477)))) b!4534000))

(declare-fun b_lambda!157065 () Bool)

(assert (= b_lambda!157027 (or b!4532449 b_lambda!157065)))

(declare-fun bs!871092 () Bool)

(declare-fun d!1400288 () Bool)

(assert (= bs!871092 (and d!1400288 b!4532449)))

(assert (=> bs!871092 (= (dynLambda!21197 lambda!174758 (h!56583 (t!357798 (_2!28880 lt!1707605)))) (contains!13479 lt!1708008 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605))))))))

(declare-fun m!5294717 () Bool)

(assert (=> bs!871092 m!5294717))

(assert (=> b!4533795 d!1400288))

(declare-fun b_lambda!157067 () Bool)

(assert (= b_lambda!156891 (or d!1399182 b_lambda!157067)))

(declare-fun bs!871093 () Bool)

(declare-fun d!1400290 () Bool)

(assert (= bs!871093 (and d!1400290 d!1399182)))

(assert (=> bs!871093 (= (dynLambda!21197 lambda!174755 (h!56583 (toList!4376 lt!1707600))) (contains!13479 lt!1707976 (_1!28879 (h!56583 (toList!4376 lt!1707600)))))))

(declare-fun m!5294719 () Bool)

(assert (=> bs!871093 m!5294719))

(assert (=> b!4533344 d!1400290))

(declare-fun b_lambda!157069 () Bool)

(assert (= b_lambda!157031 (or d!1399148 b_lambda!157069)))

(declare-fun bs!871094 () Bool)

(declare-fun d!1400292 () Bool)

(assert (= bs!871094 (and d!1400292 d!1399148)))

(assert (=> bs!871094 (= (dynLambda!21195 lambda!174693 (h!56584 (toList!4375 lt!1707617))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lt!1707617)))))))

(assert (=> bs!871094 m!5293955))

(assert (=> b!4533828 d!1400292))

(declare-fun b_lambda!157071 () Bool)

(assert (= b_lambda!156833 (or d!1399114 b_lambda!157071)))

(declare-fun bs!871095 () Bool)

(declare-fun d!1400294 () Bool)

(assert (= bs!871095 (and d!1400294 d!1399114)))

(assert (=> bs!871095 (= (dynLambda!21195 lambda!174691 (h!56584 (toList!4375 lm!1477))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lm!1477)))))))

(assert (=> bs!871095 m!5291671))

(assert (=> b!4533077 d!1400294))

(declare-fun b_lambda!157073 () Bool)

(assert (= b_lambda!157051 (or b!4532128 b_lambda!157073)))

(declare-fun bs!871096 () Bool)

(declare-fun d!1400296 () Bool)

(assert (= bs!871096 (and d!1400296 b!4532128)))

(assert (=> bs!871096 (= (dynLambda!21197 lambda!174637 (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477))))) (= (hash!2877 hashF!1107 (_1!28879 (h!56583 (_2!28880 (h!56584 (toList!4375 lm!1477)))))) (_1!28880 (h!56584 (toList!4375 lm!1477)))))))

(declare-fun m!5294721 () Bool)

(assert (=> bs!871096 m!5294721))

(assert (=> b!4533922 d!1400296))

(declare-fun b_lambda!157075 () Bool)

(assert (= b_lambda!157049 (or b!4532128 b_lambda!157075)))

(assert (=> d!1400242 d!1399336))

(declare-fun b_lambda!157077 () Bool)

(assert (= b_lambda!156907 (or d!1399264 b_lambda!157077)))

(declare-fun bs!871097 () Bool)

(declare-fun d!1400298 () Bool)

(assert (= bs!871097 (and d!1400298 d!1399264)))

(assert (=> bs!871097 (= (dynLambda!21197 lambda!174759 (h!56583 (_2!28880 lt!1707605))) (contains!13479 lt!1708012 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun m!5294723 () Bool)

(assert (=> bs!871097 m!5294723))

(assert (=> b!4533465 d!1400298))

(declare-fun b_lambda!157079 () Bool)

(assert (= b_lambda!156855 (or d!1399308 b_lambda!157079)))

(declare-fun bs!871098 () Bool)

(declare-fun d!1400300 () Bool)

(assert (= bs!871098 (and d!1400300 d!1399308)))

(assert (=> bs!871098 (= (dynLambda!21195 lambda!174775 (h!56584 (toList!4375 lt!1707598))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lt!1707598)))))))

(assert (=> bs!871098 m!5293477))

(assert (=> b!4533217 d!1400300))

(declare-fun b_lambda!157081 () Bool)

(assert (= b_lambda!156851 (or d!1399160 b_lambda!157081)))

(declare-fun bs!871099 () Bool)

(declare-fun d!1400302 () Bool)

(assert (= bs!871099 (and d!1400302 d!1399160)))

(assert (=> bs!871099 (= (dynLambda!21195 lambda!174703 (h!56584 (toList!4375 lt!1707598))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lt!1707598)))))))

(assert (=> bs!871099 m!5293477))

(assert (=> b!4533213 d!1400302))

(declare-fun b_lambda!157083 () Bool)

(assert (= b_lambda!156845 (or b!4532469 b_lambda!157083)))

(declare-fun bs!871100 () Bool)

(declare-fun d!1400304 () Bool)

(assert (= bs!871100 (and d!1400304 b!4532469)))

(assert (=> bs!871100 (= (dynLambda!21197 lambda!174766 (h!56583 (toList!4376 lt!1707612))) (contains!13479 lt!1708034 (_1!28879 (h!56583 (toList!4376 lt!1707612)))))))

(declare-fun m!5294725 () Bool)

(assert (=> bs!871100 m!5294725))

(assert (=> b!4533172 d!1400304))

(declare-fun b_lambda!157085 () Bool)

(assert (= b_lambda!156853 (or d!1399278 b_lambda!157085)))

(declare-fun bs!871101 () Bool)

(declare-fun d!1400306 () Bool)

(assert (= bs!871101 (and d!1400306 d!1399278)))

(assert (=> bs!871101 (= (dynLambda!21197 lambda!174767 (h!56583 (toList!4376 lt!1707612))) (contains!13479 lt!1708038 (_1!28879 (h!56583 (toList!4376 lt!1707612)))))))

(declare-fun m!5294727 () Bool)

(assert (=> bs!871101 m!5294727))

(assert (=> b!4533215 d!1400306))

(declare-fun b_lambda!157087 () Bool)

(assert (= b_lambda!156835 (or b!4532469 b_lambda!157087)))

(declare-fun bs!871102 () Bool)

(declare-fun d!1400308 () Bool)

(assert (= bs!871102 (and d!1400308 b!4532469)))

(assert (=> bs!871102 (= (dynLambda!21197 lambda!174766 (h!56583 (toList!4376 lt!1708030))) (contains!13479 lt!1708034 (_1!28879 (h!56583 (toList!4376 lt!1708030)))))))

(declare-fun m!5294729 () Bool)

(assert (=> bs!871102 m!5294729))

(assert (=> b!4533112 d!1400308))

(declare-fun b_lambda!157089 () Bool)

(assert (= b_lambda!156877 (or b!4532427 b_lambda!157089)))

(declare-fun bs!871103 () Bool)

(declare-fun d!1400310 () Bool)

(assert (= bs!871103 (and d!1400310 b!4532427)))

(assert (=> bs!871103 (= (dynLambda!21197 lambda!174754 (h!56583 (_2!28880 lt!1707605))) (contains!13479 lt!1707972 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> bs!871103 m!5291367))

(assert (=> d!1399762 d!1400310))

(declare-fun b_lambda!157091 () Bool)

(assert (= b_lambda!156875 (or b!4532427 b_lambda!157091)))

(assert (=> b!4533308 d!1400310))

(declare-fun b_lambda!157093 () Bool)

(assert (= b_lambda!156867 (or b!4532427 b_lambda!157093)))

(declare-fun bs!871104 () Bool)

(declare-fun d!1400312 () Bool)

(assert (= bs!871104 (and d!1400312 b!4532427)))

(assert (=> bs!871104 (= (dynLambda!21197 lambda!174754 (h!56583 (toList!4376 lt!1707600))) (contains!13479 lt!1707972 (_1!28879 (h!56583 (toList!4376 lt!1707600)))))))

(declare-fun m!5294731 () Bool)

(assert (=> bs!871104 m!5294731))

(assert (=> b!4533288 d!1400312))

(declare-fun b_lambda!157095 () Bool)

(assert (= b_lambda!156939 (or b!4532449 b_lambda!157095)))

(declare-fun bs!871105 () Bool)

(declare-fun d!1400314 () Bool)

(assert (= bs!871105 (and d!1400314 b!4532449)))

(assert (=> bs!871105 (= (dynLambda!21197 lambda!174758 (h!56583 (toList!4376 lt!1708004))) (contains!13479 lt!1708008 (_1!28879 (h!56583 (toList!4376 lt!1708004)))))))

(declare-fun m!5294733 () Bool)

(assert (=> bs!871105 m!5294733))

(assert (=> b!4533770 d!1400314))

(declare-fun b_lambda!157097 () Bool)

(assert (= b_lambda!156837 (or b!4532469 b_lambda!157097)))

(declare-fun bs!871106 () Bool)

(declare-fun d!1400316 () Bool)

(assert (= bs!871106 (and d!1400316 b!4532469)))

(assert (=> bs!871106 (= (dynLambda!21197 lambda!174766 (h!56583 (_2!28880 lt!1707605))) (contains!13479 lt!1708034 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> bs!871106 m!5291479))

(assert (=> d!1399594 d!1400316))

(declare-fun b_lambda!157099 () Bool)

(assert (= b_lambda!157041 (or d!1399174 b_lambda!157099)))

(declare-fun bs!871107 () Bool)

(declare-fun d!1400318 () Bool)

(assert (= bs!871107 (and d!1400318 d!1399174)))

(assert (=> bs!871107 (= (dynLambda!21195 lambda!174706 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605)))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 (+!1580 lt!1707598 lt!1707605))))))))

(assert (=> bs!871107 m!5294351))

(assert (=> b!4533881 d!1400318))

(declare-fun b_lambda!157101 () Bool)

(assert (= b_lambda!157043 (or d!1399304 b_lambda!157101)))

(declare-fun bs!871108 () Bool)

(declare-fun d!1400320 () Bool)

(assert (= bs!871108 (and d!1400320 d!1399304)))

(assert (=> bs!871108 (= (dynLambda!21195 lambda!174771 (h!56584 (t!357799 (toList!4375 lm!1477)))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))))))

(assert (=> bs!871108 m!5294545))

(assert (=> b!4533895 d!1400320))

(declare-fun b_lambda!157103 () Bool)

(assert (= b_lambda!156935 (or d!1399266 b_lambda!157103)))

(declare-fun bs!871109 () Bool)

(declare-fun d!1400322 () Bool)

(assert (= bs!871109 (and d!1400322 d!1399266)))

(assert (=> bs!871109 (= (dynLambda!21195 lambda!174760 (h!56584 (toList!4375 lt!1707597))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lt!1707597)))))))

(assert (=> bs!871109 m!5293135))

(assert (=> b!4533767 d!1400322))

(declare-fun b_lambda!157105 () Bool)

(assert (= b_lambda!157029 (or b!4532449 b_lambda!157105)))

(declare-fun bs!871110 () Bool)

(declare-fun d!1400324 () Bool)

(assert (= bs!871110 (and d!1400324 b!4532449)))

(assert (=> bs!871110 (= (dynLambda!21197 lambda!174758 (h!56583 (_2!28880 lt!1707605))) (contains!13479 lt!1708008 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(assert (=> bs!871110 m!5291413))

(assert (=> b!4533797 d!1400324))

(declare-fun b_lambda!157107 () Bool)

(assert (= b_lambda!156819 (or d!1399286 b_lambda!157107)))

(declare-fun bs!871111 () Bool)

(declare-fun d!1400326 () Bool)

(assert (= bs!871111 (and d!1400326 d!1399286)))

(assert (=> bs!871111 (= (dynLambda!21195 lambda!174770 (h!56584 (toList!4375 lm!1477))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lm!1477)))))))

(assert (=> bs!871111 m!5291671))

(assert (=> b!4532861 d!1400326))

(declare-fun b_lambda!157109 () Bool)

(assert (= b_lambda!157045 (or d!1399090 b_lambda!157109)))

(declare-fun bs!871112 () Bool)

(declare-fun d!1400328 () Bool)

(assert (= bs!871112 (and d!1400328 d!1399090)))

(assert (=> bs!871112 (= (dynLambda!21197 lambda!174643 (h!56583 newBucket!178)) (= (hash!2877 hashF!1107 (_1!28879 (h!56583 newBucket!178))) hash!344))))

(declare-fun m!5294735 () Bool)

(assert (=> bs!871112 m!5294735))

(assert (=> b!4533909 d!1400328))

(declare-fun b_lambda!157111 () Bool)

(assert (= b_lambda!156873 (or b!4532427 b_lambda!157111)))

(declare-fun bs!871113 () Bool)

(declare-fun d!1400330 () Bool)

(assert (= bs!871113 (and d!1400330 b!4532427)))

(assert (=> bs!871113 (= (dynLambda!21197 lambda!174754 (h!56583 (t!357798 (_2!28880 lt!1707605)))) (contains!13479 lt!1707972 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605))))))))

(declare-fun m!5294737 () Bool)

(assert (=> bs!871113 m!5294737))

(assert (=> b!4533306 d!1400330))

(declare-fun b_lambda!157113 () Bool)

(assert (= b_lambda!157055 (or b!4532128 b_lambda!157113)))

(assert (=> d!1400266 d!1399340))

(declare-fun b_lambda!157115 () Bool)

(assert (= b_lambda!157053 (or d!1399272 b_lambda!157115)))

(declare-fun bs!871114 () Bool)

(declare-fun d!1400332 () Bool)

(assert (= bs!871114 (and d!1400332 d!1399272)))

(assert (=> bs!871114 (= (dynLambda!21195 lambda!174763 (h!56584 (toList!4375 lt!1707598))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lt!1707598)))))))

(assert (=> bs!871114 m!5293477))

(assert (=> b!4533950 d!1400332))

(declare-fun b_lambda!157117 () Bool)

(assert (= b_lambda!156925 (or d!1399306 b_lambda!157117)))

(declare-fun bs!871115 () Bool)

(declare-fun d!1400334 () Bool)

(assert (= bs!871115 (and d!1400334 d!1399306)))

(assert (=> bs!871115 (= (dynLambda!21195 lambda!174774 (h!56584 (toList!4375 lt!1707598))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lt!1707598)))))))

(assert (=> bs!871115 m!5293477))

(assert (=> b!4533619 d!1400334))

(declare-fun b_lambda!157119 () Bool)

(assert (= b_lambda!157057 (or b!4532128 b_lambda!157119)))

(assert (=> b!4533952 d!1399340))

(declare-fun b_lambda!157121 () Bool)

(assert (= b_lambda!156839 (or b!4532469 b_lambda!157121)))

(declare-fun bs!871116 () Bool)

(declare-fun d!1400336 () Bool)

(assert (= bs!871116 (and d!1400336 b!4532469)))

(assert (=> bs!871116 (= (dynLambda!21197 lambda!174766 (h!56583 (t!357798 (_2!28880 lt!1707605)))) (contains!13479 lt!1708034 (_1!28879 (h!56583 (t!357798 (_2!28880 lt!1707605))))))))

(declare-fun m!5294739 () Bool)

(assert (=> bs!871116 m!5294739))

(assert (=> b!4533126 d!1400336))

(declare-fun b_lambda!157123 () Bool)

(assert (= b_lambda!156823 (or d!1399098 b_lambda!157123)))

(declare-fun bs!871117 () Bool)

(declare-fun d!1400338 () Bool)

(assert (= bs!871117 (and d!1400338 d!1399098)))

(assert (=> bs!871117 (= (dynLambda!21195 lambda!174681 (h!56584 (toList!4375 lm!1477))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (toList!4375 lm!1477)))))))

(assert (=> bs!871117 m!5291671))

(assert (=> b!4532892 d!1400338))

(declare-fun b_lambda!157125 () Bool)

(assert (= b_lambda!157059 (or start!449480 b_lambda!157125)))

(declare-fun bs!871118 () Bool)

(declare-fun d!1400340 () Bool)

(assert (= bs!871118 (and d!1400340 start!449480)))

(assert (=> bs!871118 (= (dynLambda!21195 lambda!174635 (h!56584 (t!357799 (toList!4375 lm!1477)))) (noDuplicateKeys!1184 (_2!28880 (h!56584 (t!357799 (toList!4375 lm!1477))))))))

(assert (=> bs!871118 m!5294545))

(assert (=> b!4533956 d!1400340))

(declare-fun b_lambda!157127 () Bool)

(assert (= b_lambda!156825 (or d!1399278 b_lambda!157127)))

(declare-fun bs!871119 () Bool)

(declare-fun d!1400342 () Bool)

(assert (= bs!871119 (and d!1400342 d!1399278)))

(assert (=> bs!871119 (= (dynLambda!21197 lambda!174767 (h!56583 (_2!28880 lt!1707605))) (contains!13479 lt!1708038 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun m!5294741 () Bool)

(assert (=> bs!871119 m!5294741))

(assert (=> b!4532905 d!1400342))

(declare-fun b_lambda!157129 () Bool)

(assert (= b_lambda!156889 (or d!1399264 b_lambda!157129)))

(declare-fun bs!871120 () Bool)

(declare-fun d!1400344 () Bool)

(assert (= bs!871120 (and d!1400344 d!1399264)))

(assert (=> bs!871120 (= (dynLambda!21197 lambda!174759 (h!56583 (toList!4376 lt!1707628))) (contains!13479 lt!1708012 (_1!28879 (h!56583 (toList!4376 lt!1707628)))))))

(declare-fun m!5294743 () Bool)

(assert (=> bs!871120 m!5294743))

(assert (=> b!4533342 d!1400344))

(declare-fun b_lambda!157131 () Bool)

(assert (= b_lambda!156871 (or b!4532427 b_lambda!157131)))

(declare-fun bs!871121 () Bool)

(declare-fun d!1400346 () Bool)

(assert (= bs!871121 (and d!1400346 b!4532427)))

(assert (=> bs!871121 (= (dynLambda!21197 lambda!174754 (h!56583 (toList!4376 lt!1707968))) (contains!13479 lt!1707972 (_1!28879 (h!56583 (toList!4376 lt!1707968)))))))

(declare-fun m!5294745 () Bool)

(assert (=> bs!871121 m!5294745))

(assert (=> b!4533292 d!1400346))

(declare-fun b_lambda!157133 () Bool)

(assert (= b_lambda!156937 (or b!4532449 b_lambda!157133)))

(assert (=> d!1400040 d!1400324))

(declare-fun b_lambda!157135 () Bool)

(assert (= b_lambda!156829 (or start!449480 b_lambda!157135)))

(assert (=> d!1399552 d!1399334))

(declare-fun b_lambda!157137 () Bool)

(assert (= b_lambda!156847 (or b!4532469 b_lambda!157137)))

(assert (=> b!4533174 d!1400316))

(declare-fun b_lambda!157139 () Bool)

(assert (= b_lambda!157037 (or start!449480 b_lambda!157139)))

(assert (=> d!1400186 d!1399338))

(declare-fun b_lambda!157141 () Bool)

(assert (= b_lambda!157025 (or b!4532449 b_lambda!157141)))

(declare-fun bs!871122 () Bool)

(declare-fun d!1400348 () Bool)

(assert (= bs!871122 (and d!1400348 b!4532449)))

(assert (=> bs!871122 (= (dynLambda!21197 lambda!174758 (h!56583 (toList!4376 lt!1707628))) (contains!13479 lt!1708008 (_1!28879 (h!56583 (toList!4376 lt!1707628)))))))

(declare-fun m!5294747 () Bool)

(assert (=> bs!871122 m!5294747))

(assert (=> b!4533793 d!1400348))

(declare-fun b_lambda!157143 () Bool)

(assert (= b_lambda!157033 (or d!1399104 b_lambda!157143)))

(declare-fun bs!871123 () Bool)

(declare-fun d!1400350 () Bool)

(assert (= bs!871123 (and d!1400350 d!1399104)))

(assert (=> bs!871123 (= (dynLambda!21195 lambda!174684 (h!56584 (toList!4375 lm!1477))) (allKeysSameHash!1038 (_2!28880 (h!56584 (toList!4375 lm!1477))) (_1!28880 (h!56584 (toList!4375 lm!1477))) hashF!1107))))

(assert (=> bs!871123 m!5291677))

(assert (=> b!4533830 d!1400350))

(declare-fun b_lambda!157145 () Bool)

(assert (= b_lambda!157035 (or d!1399182 b_lambda!157145)))

(declare-fun bs!871124 () Bool)

(declare-fun d!1400352 () Bool)

(assert (= bs!871124 (and d!1400352 d!1399182)))

(assert (=> bs!871124 (= (dynLambda!21197 lambda!174755 (h!56583 (_2!28880 lt!1707605))) (contains!13479 lt!1707976 (_1!28879 (h!56583 (_2!28880 lt!1707605)))))))

(declare-fun m!5294749 () Bool)

(assert (=> bs!871124 m!5294749))

(assert (=> b!4533850 d!1400352))

(check-sat (not bs!871115) (not b_lambda!156817) (not b!4532901) (not b!4533972) (not bs!871108) (not b_lambda!157119) (not b!4533837) (not bm!316074) (not d!1400208) (not b!4533159) (not b!4533100) (not b!4533486) (not b!4533973) (not b!4533454) (not b!4533901) (not bs!871113) (not b!4533864) (not bs!871099) (not d!1400036) (not bm!316036) (not b_lambda!157069) (not b!4533986) (not b!4533343) (not b!4533843) (not bs!871123) (not b!4533597) (not d!1399622) (not b!4533095) (not b!4533113) (not bs!871114) (not b!4533464) (not b!4533760) (not b_lambda!157099) (not b!4533596) (not b!4533314) (not b!4533208) (not b!4533051) (not b!4533817) (not b!4533627) (not b!4533894) (not b!4533648) (not b!4533488) (not b!4533280) (not b!4533849) (not b_lambda!157109) (not b!4533942) (not b!4533578) (not b!4533453) (not d!1399738) (not b!4533764) (not d!1399536) (not bm!316015) (not bm!316110) (not d!1399620) (not b!4533313) (not b!4533801) (not d!1399498) (not d!1399970) (not b!4532893) (not b!4532976) (not bs!871103) (not b!4533127) (not b!4533959) (not b!4533634) (not b!4533654) (not b!4533448) (not d!1399486) (not b!4533160) (not b!4533042) (not b!4533603) (not b!4533766) (not bs!871107) (not b!4533599) (not b!4533863) (not b!4533969) (not b!4533951) (not d!1399580) (not b!4533762) (not b_lambda!157111) (not d!1400184) (not bm!316054) (not b!4533827) (not d!1399802) (not b!4533620) (not b!4533152) (not b!4533729) (not d!1399556) (not bs!871094) (not b!4533842) (not b!4533772) (not bm!316030) (not bs!871097) (not b!4533657) (not bm!316099) (not d!1399682) (not bm!316070) (not d!1400020) (not b!4533653) (not d!1400150) (not b_lambda!157129) (not d!1399880) (not b!4533150) (not d!1400046) (not b!4533216) (not b!4533910) (not b!4533802) (not d!1400154) (not b_lambda!157067) (not b!4533096) (not bs!871092) (not b!4533621) (not b!4533947) (not b!4533953) (not bs!871102) (not d!1399762) (not b_lambda!157141) (not b!4533919) (not b!4533316) (not b!4533585) (not bs!871117) (not d!1399824) (not b_lambda!157077) (not b!4533107) (not bm!316037) (not b!4533003) (not bm!316080) (not b!4532955) (not b!4533121) (not b!4533297) (not d!1400238) (not b!4533975) (not b_lambda!156785) (not b_lambda!157085) (not b_lambda!156789) (not b!4533181) (not bm!316100) (not bm!316049) (not d!1399522) (not b_lambda!156787) (not b_lambda!156791) (not b!4533300) (not b!4532910) (not d!1399950) (not b!4533829) (not b!4533846) (not b_lambda!157065) (not b!4533179) (not bm!315987) (not b!4533946) (not b!4532985) (not b!4533177) (not d!1400040) (not b!4533926) (not b!4533799) (not b_lambda!157081) (not d!1400136) (not b!4533720) (not b_lambda!157131) (not b!4533699) (not b_lambda!157125) (not b!4533796) (not d!1399664) (not b!4533905) (not d!1399668) (not d!1399666) (not d!1400142) (not d!1399532) (not b!4533279) (not b!4532959) (not d!1399958) (not d!1400246) (not b!4533912) (not b!4533153) (not b_lambda!157145) (not bs!871116) (not bs!871104) (not bm!316050) (not b!4533983) (not d!1400224) (not b!4533092) (not b!4533348) (not d!1400240) (not b_lambda!157083) (not b!4533351) (not b!4533788) (not d!1400232) (not d!1400252) (not b!4533832) (not bs!871118) (not b_lambda!157123) (not bs!871120) (not b!4533963) (not bm!316038) (not b!4533639) (not b!4533151) (not b!4532987) (not b!4533157) (not b!4533047) (not b!4533302) (not b!4533882) (not bm!316096) (not d!1399514) (not b!4533891) (not b!4533816) (not bm!316048) (not b!4533962) (not b!4533471) (not b!4533833) (not bs!871121) (not b!4533836) (not b_lambda!157121) (not d!1399528) (not d!1399566) (not b!4533589) (not b!4533481) (not b_lambda!157075) (not d!1400212) (not b!4532908) (not b!4533582) (not b!4533776) (not b!4533999) (not b!4533998) (not b_lambda!157115) (not b!4533632) (not b!4533049) (not b!4532990) (not b!4533775) (not d!1400140) (not b_lambda!157079) (not b!4533656) (not d!1400284) (not b!4533485) (not d!1399686) (not bm!316112) (not b!4533880) (not b_lambda!157135) (not b_lambda!157101) (not b_lambda!157107) (not b!4533855) (not d!1400202) (not bs!871112) (not b!4533815) (not d!1400006) (not b!4533304) (not b!4533125) (not bm!316097) (not d!1400162) (not bm!316040) (not b!4533794) (not bs!871119) (not d!1399960) (not b!4533163) (not d!1399826) tp_is_empty!28015 (not b!4533957) (not b!4533803) (not d!1399954) (not b!4533214) (not b!4533310) (not b_lambda!157097) (not b!4533847) (not bm!316094) (not b!4533854) (not b!4533779) (not d!1400138) (not b!4533652) (not d!1399542) (not b_lambda!157089) (not b!4532924) (not b!4533147) (not b!4533005) (not b!4533928) (not b!4533798) (not d!1399640) (not b!4533994) (not b!4533869) (not b!4533712) (not b!4533808) (not b!4533229) (not b!4533232) (not b_lambda!157137) (not b!4533923) (not d!1399638) (not b!4533971) (not d!1400130) (not b!4533091) (not b!4533970) (not b!4533462) (not b!4533601) (not b!4533804) (not d!1399618) (not b!4533233) (not b!4532968) (not b!4533933) (not b!4533175) (not bm!316114) (not b!4533647) (not b!4532900) (not bm!316111) (not b!4533916) (not d!1400172) (not b!4533650) (not b!4533345) (not bm!316115) (not b!4533858) (not bm!316016) (not b_lambda!157127) (not b!4533936) (not b!4533592) (not b!4533920) (not bm!316108) (not bm!316106) (not b!4533048) (not d!1399582) (not b!4533635) (not d!1399680) (not b!4533655) (not d!1399884) (not b!4533907) (not b!4533017) (not d!1399530) (not b!4532970) (not d!1399968) (not b!4533811) (not b!4533902) (not b!4532911) (not b!4533479) (not bm!316084) (not bs!871095) (not b!4533876) (not b!4533484) (not b!4533791) (not b!4532993) (not d!1400068) (not b!4533173) (not b!4533116) (not b!4533054) (not b!4533110) (not d!1400204) (not b!4533622) (not bm!316105) (not bm!316014) (not b!4533643) (not bm!316093) (not d!1399938) (not b!4533581) (not d!1400262) (not b!4532857) (not b!4533723) (not b!4533800) (not bs!871105) (not d!1399554) (not b!4533228) (not b!4533336) (not b!4533878) (not b!4533862) (not b!4533896) (not b!4532858) (not b!4533979) (not b!4533155) (not bm!316072) tp_is_empty!28013 (not bm!316098) (not b!4533625) (not b!4533094) (not d!1400170) (not b!4533600) (not b_lambda!157091) (not bm!316004) (not d!1400210) (not bm!316083) (not b!4533309) (not b!4533211) (not b_lambda!157095) (not bm!316039) (not b!4533915) (not b!4533921) (not b!4533966) (not b!4532862) (not b!4533980) (not b_lambda!157139) (not b!4533218) (not d!1399546) (not b!4533162) (not b!4533823) (not b!4533050) (not d!1399798) (not b!4533148) (not b!4533992) (not b!4533831) (not b!4533009) (not b_lambda!157133) (not b!4533637) (not d!1400158) (not b!4533773) (not b!4533298) (not d!1400286) (not bs!871109) (not b_lambda!157143) (not bm!316116) (not b!4533227) (not bm!316102) (not d!1399688) (not b!4533299) (not bs!871124) (not b_lambda!157061) (not b!4533899) (not bm!316018) (not d!1400010) (not b!4533660) (not d!1400164) (not bm!316017) (not b!4533974) (not bs!871106) (not d!1400052) (not bm!316029) (not b!4533209) (not d!1399752) (not b!4533987) (not d!1400128) (not d!1399764) (not b!4533789) (not b!4533888) (not b!4532969) (not b!4533813) (not b!4533955) (not b_lambda!157087) (not b!4533819) (not d!1400166) (not b!4533114) (not b!4533938) (not d!1399590) (not b!4533768) (not b!4533851) (not b!4533467) (not b!4533449) (not b!4533482) (not b!4532889) (not b!4532931) (not d!1399484) (not d!1399644) (not bm!316103) (not bm!316104) (not bm!316069) (not b!4533771) (not b_lambda!157113) (not d!1399964) (not b!4533859) (not b!4532975) (not b!4533281) (not d!1400230) (not b!4533825) (not b!4533466) (not b!4533483) (not b!4533844) (not d!1399598) (not b!4533230) (not b!4533991) (not d!1400254) (not b!4532902) (not b!4533278) (not b_lambda!157117) (not d!1400168) (not b!4533769) (not b!4533104) (not bm!316073) (not b!4533777) (not bm!316113) (not b!4532953) (not d!1400188) (not bm!316034) (not b_lambda!156827) (not b!4533598) (not b!4533977) (not d!1399676) (not bs!871122) (not b_lambda!157039) (not b!4533835) (not b!4533840) (not b_lambda!156793) (not b!4533903) (not bm!316041) (not d!1400000) (not d!1399570) (not b!4533452) (not d!1400200) (not d!1399670) (not b!4533220) (not d!1399790) (not b!4532860) (not bm!316035) (not bm!316068) (not d!1400220) (not d!1399990) (not d!1400216) (not b!4533931) (not b!4533853) (not d!1399994) (not b!4533119) (not bm!316071) (not b!4533317) (not b!4533877) (not b!4533226) (not d!1399996) (not b_lambda!157073) (not d!1399526) (not b!4533961) (not bs!871096) (not d!1400192) (not b!4533818) (not d!1399690) (not d!1399510) (not b!4533282) (not b!4532967) (not d!1400226) (not b!4533350) (not b!4533307) (not b!4532930) (not b!4534000) (not bs!871111) (not b_lambda!157047) (not b_lambda!157103) (not b!4533792) (not bs!871098) (not b!4533906) (not b!4533805) (not b!4533089) (not d!1399578) (not b!4533097) (not b!4533577) (not b!4533301) (not bm!316028) (not d!1399942) (not bm!316101) (not b!4533046) (not bm!316095) (not b!4533990) (not b!4533154) (not d!1399584) (not b!4533090) (not b_lambda!157105) (not b!4533588) (not b!4533212) (not b!4533774) (not b!4532870) (not d!1399882) (not b!4533277) (not b!4533934) (not bs!871100) (not d!1399646) (not d!1400148) (not b!4532891) (not b!4533925) (not b!4532913) (not b!4533044) (not b!4533659) (not b!4533117) (not b!4533118) (not bm!315994) (not b_lambda!157071) (not b!4533984) (not d!1400146) (not d!1399874) (not b!4533949) (not b!4533284) (not b!4533590) (not b!4533866) (not b!4533289) (not b!4533468) (not b!4533715) (not d!1399540) (not b!4533115) (not b!4533898) (not d!1399594) (not b!4533806) (not b!4533649) (not d!1400248) (not bm!316082) (not b!4533629) (not b_lambda!157093) (not d!1400132) (not bs!871101) (not b!4532906) (not d!1399586) (not b!4533078) (not b!4533347) (not b!4533293) (not b!4532992) (not b!4533470) (not d!1400180) (not bs!871110) (not b_lambda!157063) (not bs!871093) (not b!4533584) (not b!4533052))
(check-sat)
