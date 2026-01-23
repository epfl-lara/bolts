; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!453908 () Bool)

(assert start!453908)

(declare-fun b!4562606 () Bool)

(declare-fun res!1904156 () Bool)

(declare-fun e!2844200 () Bool)

(assert (=> b!4562606 (=> res!1904156 e!2844200)))

(declare-datatypes ((K!12265 0))(
  ( (K!12266 (val!18083 Int)) )
))
(declare-datatypes ((V!12511 0))(
  ( (V!12512 (val!18084 Int)) )
))
(declare-datatypes ((tuple2!51434 0))(
  ( (tuple2!51435 (_1!29011 K!12265) (_2!29011 V!12511)) )
))
(declare-datatypes ((List!51012 0))(
  ( (Nil!50888) (Cons!50888 (h!56805 tuple2!51434) (t!357986 List!51012)) )
))
(declare-datatypes ((tuple2!51436 0))(
  ( (tuple2!51437 (_1!29012 (_ BitVec 64)) (_2!29012 List!51012)) )
))
(declare-datatypes ((List!51013 0))(
  ( (Nil!50889) (Cons!50889 (h!56806 tuple2!51436) (t!357987 List!51013)) )
))
(declare-datatypes ((ListLongMap!3139 0))(
  ( (ListLongMap!3140 (toList!4507 List!51013)) )
))
(declare-fun lm!1477 () ListLongMap!3139)

(declare-fun lt!1732825 () tuple2!51436)

(declare-fun contains!13749 (List!51013 tuple2!51436) Bool)

(assert (=> b!4562606 (= res!1904156 (not (contains!13749 (t!357987 (toList!4507 lm!1477)) lt!1732825)))))

(declare-fun b!4562607 () Bool)

(declare-fun e!2844196 () Bool)

(declare-fun e!2844201 () Bool)

(assert (=> b!4562607 (= e!2844196 (not e!2844201))))

(declare-fun res!1904166 () Bool)

(assert (=> b!4562607 (=> res!1904166 e!2844201)))

(declare-fun key!3287 () K!12265)

(declare-fun newBucket!178 () List!51012)

(declare-fun lt!1732822 () List!51012)

(declare-fun removePairForKey!877 (List!51012 K!12265) List!51012)

(assert (=> b!4562607 (= res!1904166 (not (= newBucket!178 (removePairForKey!877 lt!1732822 key!3287))))))

(declare-datatypes ((Unit!102671 0))(
  ( (Unit!102672) )
))
(declare-fun lt!1732819 () Unit!102671)

(declare-fun lambda!180369 () Int)

(declare-fun forallContained!2713 (List!51013 Int tuple2!51436) Unit!102671)

(assert (=> b!4562607 (= lt!1732819 (forallContained!2713 (toList!4507 lm!1477) lambda!180369 lt!1732825))))

(assert (=> b!4562607 (contains!13749 (toList!4507 lm!1477) lt!1732825)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4562607 (= lt!1732825 (tuple2!51437 hash!344 lt!1732822))))

(declare-fun lt!1732820 () Unit!102671)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!762 (List!51013 (_ BitVec 64) List!51012) Unit!102671)

(assert (=> b!4562607 (= lt!1732820 (lemmaGetValueByKeyImpliesContainsTuple!762 (toList!4507 lm!1477) hash!344 lt!1732822))))

(declare-fun apply!11987 (ListLongMap!3139 (_ BitVec 64)) List!51012)

(assert (=> b!4562607 (= lt!1732822 (apply!11987 lm!1477 hash!344))))

(declare-fun lt!1732827 () (_ BitVec 64))

(declare-fun contains!13750 (ListLongMap!3139 (_ BitVec 64)) Bool)

(assert (=> b!4562607 (contains!13750 lm!1477 lt!1732827)))

(declare-datatypes ((Hashable!5645 0))(
  ( (HashableExt!5644 (__x!31348 Int)) )
))
(declare-fun hashF!1107 () Hashable!5645)

(declare-fun lt!1732823 () Unit!102671)

(declare-fun lemmaInGenMapThenLongMapContainsHash!324 (ListLongMap!3139 K!12265 Hashable!5645) Unit!102671)

(assert (=> b!4562607 (= lt!1732823 (lemmaInGenMapThenLongMapContainsHash!324 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4562608 () Bool)

(declare-fun e!2844198 () Unit!102671)

(declare-fun Unit!102673 () Unit!102671)

(assert (=> b!4562608 (= e!2844198 Unit!102673)))

(declare-fun tp_is_empty!28279 () Bool)

(declare-fun e!2844194 () Bool)

(declare-fun b!4562609 () Bool)

(declare-fun tp!1339362 () Bool)

(declare-fun tp_is_empty!28277 () Bool)

(assert (=> b!4562609 (= e!2844194 (and tp_is_empty!28277 tp_is_empty!28279 tp!1339362))))

(declare-fun b!4562610 () Bool)

(declare-fun res!1904154 () Bool)

(assert (=> b!4562610 (=> res!1904154 e!2844201)))

(declare-fun noDuplicateKeys!1250 (List!51012) Bool)

(assert (=> b!4562610 (= res!1904154 (not (noDuplicateKeys!1250 newBucket!178)))))

(declare-fun b!4562611 () Bool)

(declare-fun Unit!102674 () Unit!102671)

(assert (=> b!4562611 (= e!2844198 Unit!102674)))

(declare-fun lt!1732832 () Unit!102671)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!232 (ListLongMap!3139 K!12265 Hashable!5645) Unit!102671)

(assert (=> b!4562611 (= lt!1732832 (lemmaNotInItsHashBucketThenNotInMap!232 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4562611 false))

(declare-fun b!4562612 () Bool)

(declare-fun e!2844195 () Bool)

(assert (=> b!4562612 (= e!2844200 e!2844195)))

(declare-fun res!1904165 () Bool)

(assert (=> b!4562612 (=> res!1904165 e!2844195)))

(declare-fun lt!1732830 () Bool)

(assert (=> b!4562612 (= res!1904165 lt!1732830)))

(declare-fun lt!1732828 () Unit!102671)

(assert (=> b!4562612 (= lt!1732828 e!2844198)))

(declare-fun c!780118 () Bool)

(assert (=> b!4562612 (= c!780118 lt!1732830)))

(declare-fun containsKey!1996 (List!51012 K!12265) Bool)

(assert (=> b!4562612 (= lt!1732830 (not (containsKey!1996 lt!1732822 key!3287)))))

(declare-fun b!4562613 () Bool)

(declare-fun e!2844199 () Bool)

(assert (=> b!4562613 (= e!2844195 e!2844199)))

(declare-fun res!1904155 () Bool)

(assert (=> b!4562613 (=> res!1904155 e!2844199)))

(declare-fun containsKeyBiggerList!220 (List!51013 K!12265) Bool)

(assert (=> b!4562613 (= res!1904155 (not (containsKeyBiggerList!220 (t!357987 (toList!4507 lm!1477)) key!3287)))))

(declare-fun lt!1732831 () ListLongMap!3139)

(assert (=> b!4562613 (containsKeyBiggerList!220 (toList!4507 lt!1732831) key!3287)))

(declare-fun lt!1732826 () Unit!102671)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!132 (ListLongMap!3139 K!12265 Hashable!5645) Unit!102671)

(assert (=> b!4562613 (= lt!1732826 (lemmaInLongMapThenContainsKeyBiggerList!132 lt!1732831 key!3287 hashF!1107))))

(declare-fun res!1904157 () Bool)

(declare-fun e!2844192 () Bool)

(assert (=> start!453908 (=> (not res!1904157) (not e!2844192))))

(declare-fun forall!10450 (List!51013 Int) Bool)

(assert (=> start!453908 (= res!1904157 (forall!10450 (toList!4507 lm!1477) lambda!180369))))

(assert (=> start!453908 e!2844192))

(assert (=> start!453908 true))

(declare-fun e!2844197 () Bool)

(declare-fun inv!66449 (ListLongMap!3139) Bool)

(assert (=> start!453908 (and (inv!66449 lm!1477) e!2844197)))

(assert (=> start!453908 tp_is_empty!28277))

(assert (=> start!453908 e!2844194))

(declare-fun b!4562614 () Bool)

(assert (=> b!4562614 (= e!2844201 e!2844200)))

(declare-fun res!1904160 () Bool)

(assert (=> b!4562614 (=> res!1904160 e!2844200)))

(assert (=> b!4562614 (= res!1904160 (not (contains!13750 lt!1732831 hash!344)))))

(declare-fun tail!7877 (ListLongMap!3139) ListLongMap!3139)

(assert (=> b!4562614 (= lt!1732831 (tail!7877 lm!1477))))

(declare-fun b!4562615 () Bool)

(declare-fun res!1904161 () Bool)

(assert (=> b!4562615 (=> (not res!1904161) (not e!2844192))))

(declare-fun allKeysSameHashInMap!1357 (ListLongMap!3139 Hashable!5645) Bool)

(assert (=> b!4562615 (= res!1904161 (allKeysSameHashInMap!1357 lm!1477 hashF!1107))))

(declare-fun b!4562616 () Bool)

(declare-fun res!1904167 () Bool)

(assert (=> b!4562616 (=> res!1904167 e!2844200)))

(assert (=> b!4562616 (= res!1904167 (not (= (apply!11987 lt!1732831 hash!344) lt!1732822)))))

(declare-fun b!4562617 () Bool)

(declare-fun res!1904158 () Bool)

(assert (=> b!4562617 (=> (not res!1904158) (not e!2844196))))

(declare-fun allKeysSameHash!1104 (List!51012 (_ BitVec 64) Hashable!5645) Bool)

(assert (=> b!4562617 (= res!1904158 (allKeysSameHash!1104 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4562618 () Bool)

(declare-fun e!2844193 () Bool)

(assert (=> b!4562618 (= e!2844193 true)))

(declare-datatypes ((ListMap!3769 0))(
  ( (ListMap!3770 (toList!4508 List!51012)) )
))
(declare-fun lt!1732821 () ListMap!3769)

(declare-fun eq!689 (ListMap!3769 ListMap!3769) Bool)

(declare-fun extractMap!1306 (List!51013) ListMap!3769)

(declare-fun +!1670 (ListLongMap!3139 tuple2!51436) ListLongMap!3139)

(declare-fun -!458 (ListMap!3769 K!12265) ListMap!3769)

(assert (=> b!4562618 (eq!689 (extractMap!1306 (toList!4507 (+!1670 lt!1732831 (tuple2!51437 hash!344 newBucket!178)))) (-!458 lt!1732821 key!3287))))

(declare-fun lt!1732824 () Unit!102671)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!197 (ListLongMap!3139 (_ BitVec 64) List!51012 K!12265 Hashable!5645) Unit!102671)

(assert (=> b!4562618 (= lt!1732824 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!197 lt!1732831 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4562619 () Bool)

(declare-fun res!1904162 () Bool)

(assert (=> b!4562619 (=> res!1904162 e!2844201)))

(get-info :version)

(assert (=> b!4562619 (= res!1904162 (or ((_ is Nil!50889) (toList!4507 lm!1477)) (= (_1!29012 (h!56806 (toList!4507 lm!1477))) hash!344)))))

(declare-fun b!4562620 () Bool)

(assert (=> b!4562620 (= e!2844199 e!2844193)))

(declare-fun res!1904164 () Bool)

(assert (=> b!4562620 (=> res!1904164 e!2844193)))

(declare-fun contains!13751 (ListMap!3769 K!12265) Bool)

(assert (=> b!4562620 (= res!1904164 (not (contains!13751 (extractMap!1306 (t!357987 (toList!4507 lm!1477))) key!3287)))))

(assert (=> b!4562620 (contains!13751 lt!1732821 key!3287)))

(assert (=> b!4562620 (= lt!1732821 (extractMap!1306 (toList!4507 lt!1732831)))))

(declare-fun lt!1732829 () Unit!102671)

(declare-fun lemmaListContainsThenExtractedMapContains!206 (ListLongMap!3139 K!12265 Hashable!5645) Unit!102671)

(assert (=> b!4562620 (= lt!1732829 (lemmaListContainsThenExtractedMapContains!206 lt!1732831 key!3287 hashF!1107))))

(declare-fun b!4562621 () Bool)

(assert (=> b!4562621 (= e!2844192 e!2844196)))

(declare-fun res!1904159 () Bool)

(assert (=> b!4562621 (=> (not res!1904159) (not e!2844196))))

(assert (=> b!4562621 (= res!1904159 (= lt!1732827 hash!344))))

(declare-fun hash!3051 (Hashable!5645 K!12265) (_ BitVec 64))

(assert (=> b!4562621 (= lt!1732827 (hash!3051 hashF!1107 key!3287))))

(declare-fun b!4562622 () Bool)

(declare-fun tp!1339363 () Bool)

(assert (=> b!4562622 (= e!2844197 tp!1339363)))

(declare-fun b!4562623 () Bool)

(declare-fun res!1904163 () Bool)

(assert (=> b!4562623 (=> (not res!1904163) (not e!2844192))))

(assert (=> b!4562623 (= res!1904163 (contains!13751 (extractMap!1306 (toList!4507 lm!1477)) key!3287))))

(assert (= (and start!453908 res!1904157) b!4562615))

(assert (= (and b!4562615 res!1904161) b!4562623))

(assert (= (and b!4562623 res!1904163) b!4562621))

(assert (= (and b!4562621 res!1904159) b!4562617))

(assert (= (and b!4562617 res!1904158) b!4562607))

(assert (= (and b!4562607 (not res!1904166)) b!4562610))

(assert (= (and b!4562610 (not res!1904154)) b!4562619))

(assert (= (and b!4562619 (not res!1904162)) b!4562614))

(assert (= (and b!4562614 (not res!1904160)) b!4562616))

(assert (= (and b!4562616 (not res!1904167)) b!4562606))

(assert (= (and b!4562606 (not res!1904156)) b!4562612))

(assert (= (and b!4562612 c!780118) b!4562611))

(assert (= (and b!4562612 (not c!780118)) b!4562608))

(assert (= (and b!4562612 (not res!1904165)) b!4562613))

(assert (= (and b!4562613 (not res!1904155)) b!4562620))

(assert (= (and b!4562620 (not res!1904164)) b!4562618))

(assert (= start!453908 b!4562622))

(assert (= (and start!453908 ((_ is Cons!50888) newBucket!178)) b!4562609))

(declare-fun m!5353601 () Bool)

(assert (=> start!453908 m!5353601))

(declare-fun m!5353603 () Bool)

(assert (=> start!453908 m!5353603))

(declare-fun m!5353605 () Bool)

(assert (=> b!4562612 m!5353605))

(declare-fun m!5353607 () Bool)

(assert (=> b!4562606 m!5353607))

(declare-fun m!5353609 () Bool)

(assert (=> b!4562617 m!5353609))

(declare-fun m!5353611 () Bool)

(assert (=> b!4562620 m!5353611))

(declare-fun m!5353613 () Bool)

(assert (=> b!4562620 m!5353613))

(declare-fun m!5353615 () Bool)

(assert (=> b!4562620 m!5353615))

(declare-fun m!5353617 () Bool)

(assert (=> b!4562620 m!5353617))

(assert (=> b!4562620 m!5353615))

(declare-fun m!5353619 () Bool)

(assert (=> b!4562620 m!5353619))

(declare-fun m!5353621 () Bool)

(assert (=> b!4562607 m!5353621))

(declare-fun m!5353623 () Bool)

(assert (=> b!4562607 m!5353623))

(declare-fun m!5353625 () Bool)

(assert (=> b!4562607 m!5353625))

(declare-fun m!5353627 () Bool)

(assert (=> b!4562607 m!5353627))

(declare-fun m!5353629 () Bool)

(assert (=> b!4562607 m!5353629))

(declare-fun m!5353631 () Bool)

(assert (=> b!4562607 m!5353631))

(declare-fun m!5353633 () Bool)

(assert (=> b!4562607 m!5353633))

(declare-fun m!5353635 () Bool)

(assert (=> b!4562615 m!5353635))

(declare-fun m!5353637 () Bool)

(assert (=> b!4562618 m!5353637))

(declare-fun m!5353639 () Bool)

(assert (=> b!4562618 m!5353639))

(declare-fun m!5353641 () Bool)

(assert (=> b!4562618 m!5353641))

(assert (=> b!4562618 m!5353637))

(declare-fun m!5353643 () Bool)

(assert (=> b!4562618 m!5353643))

(declare-fun m!5353645 () Bool)

(assert (=> b!4562618 m!5353645))

(assert (=> b!4562618 m!5353639))

(declare-fun m!5353647 () Bool)

(assert (=> b!4562610 m!5353647))

(declare-fun m!5353649 () Bool)

(assert (=> b!4562616 m!5353649))

(declare-fun m!5353651 () Bool)

(assert (=> b!4562621 m!5353651))

(declare-fun m!5353653 () Bool)

(assert (=> b!4562623 m!5353653))

(assert (=> b!4562623 m!5353653))

(declare-fun m!5353655 () Bool)

(assert (=> b!4562623 m!5353655))

(declare-fun m!5353657 () Bool)

(assert (=> b!4562613 m!5353657))

(declare-fun m!5353659 () Bool)

(assert (=> b!4562613 m!5353659))

(declare-fun m!5353661 () Bool)

(assert (=> b!4562613 m!5353661))

(declare-fun m!5353663 () Bool)

(assert (=> b!4562611 m!5353663))

(declare-fun m!5353665 () Bool)

(assert (=> b!4562614 m!5353665))

(declare-fun m!5353667 () Bool)

(assert (=> b!4562614 m!5353667))

(check-sat (not b!4562622) tp_is_empty!28279 (not b!4562623) (not b!4562617) (not b!4562615) (not b!4562612) (not b!4562611) (not b!4562616) (not start!453908) (not b!4562609) (not b!4562607) tp_is_empty!28277 (not b!4562620) (not b!4562614) (not b!4562610) (not b!4562618) (not b!4562613) (not b!4562621) (not b!4562606))
(check-sat)
