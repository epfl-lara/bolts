; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471780 () Bool)

(assert start!471780)

(declare-fun b!4674732 () Bool)

(declare-fun res!1968621 () Bool)

(declare-fun e!2916971 () Bool)

(assert (=> b!4674732 (=> (not res!1968621) (not e!2916971))))

(declare-datatypes ((K!13520 0))(
  ( (K!13521 (val!19087 Int)) )
))
(declare-datatypes ((V!13766 0))(
  ( (V!13767 (val!19088 Int)) )
))
(declare-datatypes ((tuple2!53386 0))(
  ( (tuple2!53387 (_1!29987 K!13520) (_2!29987 V!13766)) )
))
(declare-datatypes ((List!52269 0))(
  ( (Nil!52145) (Cons!52145 (h!58338 tuple2!53386) (t!359407 List!52269)) )
))
(declare-fun newBucket!218 () List!52269)

(declare-fun noDuplicateKeys!1748 (List!52269) Bool)

(assert (=> b!4674732 (= res!1968621 (noDuplicateKeys!1748 newBucket!218))))

(declare-fun e!2916973 () Bool)

(declare-fun b!4674733 () Bool)

(declare-fun tp_is_empty!30287 () Bool)

(declare-fun tp!1344443 () Bool)

(declare-fun tp_is_empty!30285 () Bool)

(assert (=> b!4674733 (= e!2916973 (and tp_is_empty!30285 tp_is_empty!30287 tp!1344443))))

(declare-fun b!4674734 () Bool)

(declare-fun res!1968623 () Bool)

(declare-fun e!2916974 () Bool)

(assert (=> b!4674734 (=> (not res!1968623) (not e!2916974))))

(declare-datatypes ((tuple2!53388 0))(
  ( (tuple2!53389 (_1!29988 (_ BitVec 64)) (_2!29988 List!52269)) )
))
(declare-datatypes ((List!52270 0))(
  ( (Nil!52146) (Cons!52146 (h!58339 tuple2!53388) (t!359408 List!52270)) )
))
(declare-datatypes ((ListLongMap!3915 0))(
  ( (ListLongMap!3916 (toList!5385 List!52270)) )
))
(declare-fun lm!2023 () ListLongMap!3915)

(get-info :version)

(assert (=> b!4674734 (= res!1968623 ((_ is Cons!52146) (toList!5385 lm!2023)))))

(declare-fun b!4674735 () Bool)

(declare-fun e!2916970 () Bool)

(declare-fun lambda!203307 () Int)

(declare-fun forall!11163 (List!52270 Int) Bool)

(assert (=> b!4674735 (= e!2916970 (forall!11163 (t!359408 (toList!5385 lm!2023)) lambda!203307))))

(declare-fun b!4674736 () Bool)

(assert (=> b!4674736 (= e!2916971 e!2916974)))

(declare-fun res!1968628 () Bool)

(assert (=> b!4674736 (=> (not res!1968628) (not e!2916974))))

(declare-datatypes ((ListMap!4749 0))(
  ( (ListMap!4750 (toList!5386 List!52269)) )
))
(declare-fun lt!1834928 () ListMap!4749)

(declare-fun key!4653 () K!13520)

(declare-fun contains!15302 (ListMap!4749 K!13520) Bool)

(assert (=> b!4674736 (= res!1968628 (contains!15302 lt!1834928 key!4653))))

(declare-fun extractMap!1774 (List!52270) ListMap!4749)

(assert (=> b!4674736 (= lt!1834928 (extractMap!1774 (toList!5385 lm!2023)))))

(declare-fun b!4674737 () Bool)

(declare-fun e!2916968 () Bool)

(assert (=> b!4674737 (= e!2916968 e!2916970)))

(declare-fun res!1968632 () Bool)

(assert (=> b!4674737 (=> res!1968632 e!2916970)))

(declare-fun lt!1834929 () List!52269)

(assert (=> b!4674737 (= res!1968632 (not (= lt!1834929 newBucket!218)))))

(declare-fun oldBucket!34 () List!52269)

(declare-fun tail!8336 (List!52269) List!52269)

(assert (=> b!4674737 (= lt!1834929 (tail!8336 oldBucket!34))))

(declare-fun b!4674738 () Bool)

(declare-fun res!1968622 () Bool)

(assert (=> b!4674738 (=> (not res!1968622) (not e!2916974))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6117 0))(
  ( (HashableExt!6116 (__x!31820 Int)) )
))
(declare-fun hashF!1323 () Hashable!6117)

(declare-fun allKeysSameHash!1574 (List!52269 (_ BitVec 64) Hashable!6117) Bool)

(assert (=> b!4674738 (= res!1968622 (allKeysSameHash!1574 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4674739 () Bool)

(declare-fun res!1968624 () Bool)

(assert (=> b!4674739 (=> (not res!1968624) (not e!2916974))))

(declare-fun head!9788 (List!52270) tuple2!53388)

(assert (=> b!4674739 (= res!1968624 (= (head!9788 (toList!5385 lm!2023)) (tuple2!53389 hash!405 oldBucket!34)))))

(declare-fun b!4674740 () Bool)

(declare-fun res!1968633 () Bool)

(assert (=> b!4674740 (=> res!1968633 e!2916970)))

(declare-fun lt!1834930 () ListMap!4749)

(declare-fun addToMapMapFromBucket!1180 (List!52269 ListMap!4749) ListMap!4749)

(assert (=> b!4674740 (= res!1968633 (not (= (addToMapMapFromBucket!1180 lt!1834929 lt!1834930) (addToMapMapFromBucket!1180 newBucket!218 lt!1834930))))))

(declare-fun b!4674741 () Bool)

(declare-fun res!1968627 () Bool)

(assert (=> b!4674741 (=> (not res!1968627) (not e!2916971))))

(assert (=> b!4674741 (= res!1968627 (allKeysSameHash!1574 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp!1344442 () Bool)

(declare-fun e!2916972 () Bool)

(declare-fun b!4674742 () Bool)

(assert (=> b!4674742 (= e!2916972 (and tp_is_empty!30285 tp_is_empty!30287 tp!1344442))))

(declare-fun b!4674743 () Bool)

(declare-fun res!1968634 () Bool)

(assert (=> b!4674743 (=> (not res!1968634) (not e!2916971))))

(assert (=> b!4674743 (= res!1968634 (noDuplicateKeys!1748 oldBucket!34))))

(declare-fun b!4674744 () Bool)

(declare-fun res!1968631 () Bool)

(assert (=> b!4674744 (=> (not res!1968631) (not e!2916974))))

(declare-fun allKeysSameHashInMap!1662 (ListLongMap!3915 Hashable!6117) Bool)

(assert (=> b!4674744 (= res!1968631 (allKeysSameHashInMap!1662 lm!2023 hashF!1323))))

(declare-fun b!4674745 () Bool)

(declare-fun res!1968630 () Bool)

(assert (=> b!4674745 (=> (not res!1968630) (not e!2916971))))

(declare-fun removePairForKey!1343 (List!52269 K!13520) List!52269)

(assert (=> b!4674745 (= res!1968630 (= (removePairForKey!1343 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4674746 () Bool)

(declare-fun res!1968625 () Bool)

(assert (=> b!4674746 (=> (not res!1968625) (not e!2916974))))

(declare-fun hash!3908 (Hashable!6117 K!13520) (_ BitVec 64))

(assert (=> b!4674746 (= res!1968625 (= (hash!3908 hashF!1323 key!4653) hash!405))))

(declare-fun res!1968635 () Bool)

(assert (=> start!471780 (=> (not res!1968635) (not e!2916971))))

(assert (=> start!471780 (= res!1968635 (forall!11163 (toList!5385 lm!2023) lambda!203307))))

(assert (=> start!471780 e!2916971))

(declare-fun e!2916969 () Bool)

(declare-fun inv!67394 (ListLongMap!3915) Bool)

(assert (=> start!471780 (and (inv!67394 lm!2023) e!2916969)))

(assert (=> start!471780 tp_is_empty!30285))

(assert (=> start!471780 e!2916972))

(assert (=> start!471780 true))

(assert (=> start!471780 e!2916973))

(declare-fun b!4674747 () Bool)

(assert (=> b!4674747 (= e!2916974 (not e!2916968))))

(declare-fun res!1968629 () Bool)

(assert (=> b!4674747 (=> res!1968629 e!2916968)))

(assert (=> b!4674747 (= res!1968629 (or (not ((_ is Cons!52145) oldBucket!34)) (not (= (_1!29987 (h!58338 oldBucket!34)) key!4653))))))

(assert (=> b!4674747 (= lt!1834928 (addToMapMapFromBucket!1180 (_2!29988 (h!58339 (toList!5385 lm!2023))) lt!1834930))))

(assert (=> b!4674747 (= lt!1834930 (extractMap!1774 (t!359408 (toList!5385 lm!2023))))))

(declare-fun tail!8337 (ListLongMap!3915) ListLongMap!3915)

(assert (=> b!4674747 (= (t!359408 (toList!5385 lm!2023)) (toList!5385 (tail!8337 lm!2023)))))

(declare-fun b!4674748 () Bool)

(declare-fun res!1968626 () Bool)

(assert (=> b!4674748 (=> res!1968626 e!2916970)))

(assert (=> b!4674748 (= res!1968626 (not (= (extractMap!1774 (Cons!52146 (tuple2!53389 hash!405 lt!1834929) (t!359408 (toList!5385 lm!2023)))) (extractMap!1774 (Cons!52146 (tuple2!53389 hash!405 newBucket!218) (t!359408 (toList!5385 lm!2023)))))))))

(declare-fun b!4674749 () Bool)

(declare-fun tp!1344441 () Bool)

(assert (=> b!4674749 (= e!2916969 tp!1344441)))

(assert (= (and start!471780 res!1968635) b!4674743))

(assert (= (and b!4674743 res!1968634) b!4674732))

(assert (= (and b!4674732 res!1968621) b!4674745))

(assert (= (and b!4674745 res!1968630) b!4674741))

(assert (= (and b!4674741 res!1968627) b!4674736))

(assert (= (and b!4674736 res!1968628) b!4674746))

(assert (= (and b!4674746 res!1968625) b!4674738))

(assert (= (and b!4674738 res!1968622) b!4674744))

(assert (= (and b!4674744 res!1968631) b!4674739))

(assert (= (and b!4674739 res!1968624) b!4674734))

(assert (= (and b!4674734 res!1968623) b!4674747))

(assert (= (and b!4674747 (not res!1968629)) b!4674737))

(assert (= (and b!4674737 (not res!1968632)) b!4674748))

(assert (= (and b!4674748 (not res!1968626)) b!4674740))

(assert (= (and b!4674740 (not res!1968633)) b!4674735))

(assert (= start!471780 b!4674749))

(assert (= (and start!471780 ((_ is Cons!52145) oldBucket!34)) b!4674742))

(assert (= (and start!471780 ((_ is Cons!52145) newBucket!218)) b!4674733))

(declare-fun m!5568063 () Bool)

(assert (=> b!4674738 m!5568063))

(declare-fun m!5568065 () Bool)

(assert (=> b!4674741 m!5568065))

(declare-fun m!5568067 () Bool)

(assert (=> b!4674746 m!5568067))

(declare-fun m!5568069 () Bool)

(assert (=> b!4674748 m!5568069))

(declare-fun m!5568071 () Bool)

(assert (=> b!4674748 m!5568071))

(declare-fun m!5568073 () Bool)

(assert (=> b!4674740 m!5568073))

(declare-fun m!5568075 () Bool)

(assert (=> b!4674740 m!5568075))

(declare-fun m!5568077 () Bool)

(assert (=> b!4674732 m!5568077))

(declare-fun m!5568079 () Bool)

(assert (=> b!4674745 m!5568079))

(declare-fun m!5568081 () Bool)

(assert (=> b!4674735 m!5568081))

(declare-fun m!5568083 () Bool)

(assert (=> b!4674739 m!5568083))

(declare-fun m!5568085 () Bool)

(assert (=> start!471780 m!5568085))

(declare-fun m!5568087 () Bool)

(assert (=> start!471780 m!5568087))

(declare-fun m!5568089 () Bool)

(assert (=> b!4674747 m!5568089))

(declare-fun m!5568091 () Bool)

(assert (=> b!4674747 m!5568091))

(declare-fun m!5568093 () Bool)

(assert (=> b!4674747 m!5568093))

(declare-fun m!5568095 () Bool)

(assert (=> b!4674737 m!5568095))

(declare-fun m!5568097 () Bool)

(assert (=> b!4674743 m!5568097))

(declare-fun m!5568099 () Bool)

(assert (=> b!4674736 m!5568099))

(declare-fun m!5568101 () Bool)

(assert (=> b!4674736 m!5568101))

(declare-fun m!5568103 () Bool)

(assert (=> b!4674744 m!5568103))

(check-sat (not b!4674732) (not start!471780) (not b!4674735) (not b!4674747) (not b!4674740) (not b!4674749) (not b!4674739) (not b!4674733) tp_is_empty!30287 (not b!4674746) (not b!4674741) (not b!4674737) (not b!4674742) (not b!4674744) (not b!4674736) (not b!4674745) (not b!4674743) (not b!4674738) tp_is_empty!30285 (not b!4674748))
(check-sat)
(get-model)

(declare-fun b!4674774 () Bool)

(declare-datatypes ((List!52271 0))(
  ( (Nil!52147) (Cons!52147 (h!58342 K!13520) (t!359409 List!52271)) )
))
(declare-fun e!2916989 () List!52271)

(declare-fun getKeysList!797 (List!52269) List!52271)

(assert (=> b!4674774 (= e!2916989 (getKeysList!797 (toList!5386 lt!1834928)))))

(declare-fun d!1486224 () Bool)

(declare-fun e!2916987 () Bool)

(assert (=> d!1486224 e!2916987))

(declare-fun res!1968643 () Bool)

(assert (=> d!1486224 (=> res!1968643 e!2916987)))

(declare-fun e!2916992 () Bool)

(assert (=> d!1486224 (= res!1968643 e!2916992)))

(declare-fun res!1968642 () Bool)

(assert (=> d!1486224 (=> (not res!1968642) (not e!2916992))))

(declare-fun lt!1834948 () Bool)

(assert (=> d!1486224 (= res!1968642 (not lt!1834948))))

(declare-fun lt!1834954 () Bool)

(assert (=> d!1486224 (= lt!1834948 lt!1834954)))

(declare-datatypes ((Unit!121461 0))(
  ( (Unit!121462) )
))
(declare-fun lt!1834953 () Unit!121461)

(declare-fun e!2916990 () Unit!121461)

(assert (=> d!1486224 (= lt!1834953 e!2916990)))

(declare-fun c!800027 () Bool)

(assert (=> d!1486224 (= c!800027 lt!1834954)))

(declare-fun containsKey!2884 (List!52269 K!13520) Bool)

(assert (=> d!1486224 (= lt!1834954 (containsKey!2884 (toList!5386 lt!1834928) key!4653))))

(assert (=> d!1486224 (= (contains!15302 lt!1834928 key!4653) lt!1834948)))

(declare-fun b!4674775 () Bool)

(assert (=> b!4674775 false))

(declare-fun lt!1834952 () Unit!121461)

(declare-fun lt!1834949 () Unit!121461)

(assert (=> b!4674775 (= lt!1834952 lt!1834949)))

(assert (=> b!4674775 (containsKey!2884 (toList!5386 lt!1834928) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!796 (List!52269 K!13520) Unit!121461)

(assert (=> b!4674775 (= lt!1834949 (lemmaInGetKeysListThenContainsKey!796 (toList!5386 lt!1834928) key!4653))))

(declare-fun e!2916991 () Unit!121461)

(declare-fun Unit!121463 () Unit!121461)

(assert (=> b!4674775 (= e!2916991 Unit!121463)))

(declare-fun b!4674776 () Bool)

(declare-fun e!2916988 () Bool)

(declare-fun contains!15303 (List!52271 K!13520) Bool)

(declare-fun keys!18554 (ListMap!4749) List!52271)

(assert (=> b!4674776 (= e!2916988 (contains!15303 (keys!18554 lt!1834928) key!4653))))

(declare-fun b!4674777 () Bool)

(assert (=> b!4674777 (= e!2916987 e!2916988)))

(declare-fun res!1968644 () Bool)

(assert (=> b!4674777 (=> (not res!1968644) (not e!2916988))))

(declare-datatypes ((Option!11952 0))(
  ( (None!11951) (Some!11951 (v!46314 V!13766)) )
))
(declare-fun isDefined!9207 (Option!11952) Bool)

(declare-fun getValueByKey!1700 (List!52269 K!13520) Option!11952)

(assert (=> b!4674777 (= res!1968644 (isDefined!9207 (getValueByKey!1700 (toList!5386 lt!1834928) key!4653)))))

(declare-fun b!4674778 () Bool)

(assert (=> b!4674778 (= e!2916992 (not (contains!15303 (keys!18554 lt!1834928) key!4653)))))

(declare-fun bm!326649 () Bool)

(declare-fun call!326654 () Bool)

(assert (=> bm!326649 (= call!326654 (contains!15303 e!2916989 key!4653))))

(declare-fun c!800026 () Bool)

(assert (=> bm!326649 (= c!800026 c!800027)))

(declare-fun b!4674779 () Bool)

(declare-fun lt!1834947 () Unit!121461)

(assert (=> b!4674779 (= e!2916990 lt!1834947)))

(declare-fun lt!1834951 () Unit!121461)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1592 (List!52269 K!13520) Unit!121461)

(assert (=> b!4674779 (= lt!1834951 (lemmaContainsKeyImpliesGetValueByKeyDefined!1592 (toList!5386 lt!1834928) key!4653))))

(assert (=> b!4674779 (isDefined!9207 (getValueByKey!1700 (toList!5386 lt!1834928) key!4653))))

(declare-fun lt!1834950 () Unit!121461)

(assert (=> b!4674779 (= lt!1834950 lt!1834951)))

(declare-fun lemmaInListThenGetKeysListContains!792 (List!52269 K!13520) Unit!121461)

(assert (=> b!4674779 (= lt!1834947 (lemmaInListThenGetKeysListContains!792 (toList!5386 lt!1834928) key!4653))))

(assert (=> b!4674779 call!326654))

(declare-fun b!4674780 () Bool)

(assert (=> b!4674780 (= e!2916989 (keys!18554 lt!1834928))))

(declare-fun b!4674781 () Bool)

(declare-fun Unit!121464 () Unit!121461)

(assert (=> b!4674781 (= e!2916991 Unit!121464)))

(declare-fun b!4674782 () Bool)

(assert (=> b!4674782 (= e!2916990 e!2916991)))

(declare-fun c!800028 () Bool)

(assert (=> b!4674782 (= c!800028 call!326654)))

(assert (= (and d!1486224 c!800027) b!4674779))

(assert (= (and d!1486224 (not c!800027)) b!4674782))

(assert (= (and b!4674782 c!800028) b!4674775))

(assert (= (and b!4674782 (not c!800028)) b!4674781))

(assert (= (or b!4674779 b!4674782) bm!326649))

(assert (= (and bm!326649 c!800026) b!4674774))

(assert (= (and bm!326649 (not c!800026)) b!4674780))

(assert (= (and d!1486224 res!1968642) b!4674778))

(assert (= (and d!1486224 (not res!1968643)) b!4674777))

(assert (= (and b!4674777 res!1968644) b!4674776))

(declare-fun m!5568109 () Bool)

(assert (=> b!4674777 m!5568109))

(assert (=> b!4674777 m!5568109))

(declare-fun m!5568111 () Bool)

(assert (=> b!4674777 m!5568111))

(declare-fun m!5568113 () Bool)

(assert (=> b!4674775 m!5568113))

(declare-fun m!5568115 () Bool)

(assert (=> b!4674775 m!5568115))

(declare-fun m!5568117 () Bool)

(assert (=> b!4674776 m!5568117))

(assert (=> b!4674776 m!5568117))

(declare-fun m!5568119 () Bool)

(assert (=> b!4674776 m!5568119))

(declare-fun m!5568121 () Bool)

(assert (=> b!4674774 m!5568121))

(assert (=> b!4674778 m!5568117))

(assert (=> b!4674778 m!5568117))

(assert (=> b!4674778 m!5568119))

(declare-fun m!5568123 () Bool)

(assert (=> b!4674779 m!5568123))

(assert (=> b!4674779 m!5568109))

(assert (=> b!4674779 m!5568109))

(assert (=> b!4674779 m!5568111))

(declare-fun m!5568125 () Bool)

(assert (=> b!4674779 m!5568125))

(assert (=> d!1486224 m!5568113))

(assert (=> b!4674780 m!5568117))

(declare-fun m!5568127 () Bool)

(assert (=> bm!326649 m!5568127))

(assert (=> b!4674736 d!1486224))

(declare-fun bs!1079407 () Bool)

(declare-fun d!1486234 () Bool)

(assert (= bs!1079407 (and d!1486234 start!471780)))

(declare-fun lambda!203316 () Int)

(assert (=> bs!1079407 (= lambda!203316 lambda!203307)))

(declare-fun lt!1834957 () ListMap!4749)

(declare-fun invariantList!1358 (List!52269) Bool)

(assert (=> d!1486234 (invariantList!1358 (toList!5386 lt!1834957))))

(declare-fun e!2916995 () ListMap!4749)

(assert (=> d!1486234 (= lt!1834957 e!2916995)))

(declare-fun c!800031 () Bool)

(assert (=> d!1486234 (= c!800031 ((_ is Cons!52146) (toList!5385 lm!2023)))))

(assert (=> d!1486234 (forall!11163 (toList!5385 lm!2023) lambda!203316)))

(assert (=> d!1486234 (= (extractMap!1774 (toList!5385 lm!2023)) lt!1834957)))

(declare-fun b!4674787 () Bool)

(assert (=> b!4674787 (= e!2916995 (addToMapMapFromBucket!1180 (_2!29988 (h!58339 (toList!5385 lm!2023))) (extractMap!1774 (t!359408 (toList!5385 lm!2023)))))))

(declare-fun b!4674788 () Bool)

(assert (=> b!4674788 (= e!2916995 (ListMap!4750 Nil!52145))))

(assert (= (and d!1486234 c!800031) b!4674787))

(assert (= (and d!1486234 (not c!800031)) b!4674788))

(declare-fun m!5568129 () Bool)

(assert (=> d!1486234 m!5568129))

(declare-fun m!5568131 () Bool)

(assert (=> d!1486234 m!5568131))

(assert (=> b!4674787 m!5568091))

(assert (=> b!4674787 m!5568091))

(declare-fun m!5568133 () Bool)

(assert (=> b!4674787 m!5568133))

(assert (=> b!4674736 d!1486234))

(declare-fun b!4674906 () Bool)

(assert (=> b!4674906 true))

(declare-fun bs!1079483 () Bool)

(declare-fun b!4674905 () Bool)

(assert (= bs!1079483 (and b!4674905 b!4674906)))

(declare-fun lambda!203393 () Int)

(declare-fun lambda!203392 () Int)

(assert (=> bs!1079483 (= lambda!203393 lambda!203392)))

(assert (=> b!4674905 true))

(declare-fun lt!1835143 () ListMap!4749)

(declare-fun lambda!203394 () Int)

(assert (=> bs!1079483 (= (= lt!1835143 lt!1834930) (= lambda!203394 lambda!203392))))

(assert (=> b!4674905 (= (= lt!1835143 lt!1834930) (= lambda!203394 lambda!203393))))

(assert (=> b!4674905 true))

(declare-fun bs!1079484 () Bool)

(declare-fun d!1486236 () Bool)

(assert (= bs!1079484 (and d!1486236 b!4674906)))

(declare-fun lambda!203395 () Int)

(declare-fun lt!1835147 () ListMap!4749)

(assert (=> bs!1079484 (= (= lt!1835147 lt!1834930) (= lambda!203395 lambda!203392))))

(declare-fun bs!1079485 () Bool)

(assert (= bs!1079485 (and d!1486236 b!4674905)))

(assert (=> bs!1079485 (= (= lt!1835147 lt!1834930) (= lambda!203395 lambda!203393))))

(assert (=> bs!1079485 (= (= lt!1835147 lt!1835143) (= lambda!203395 lambda!203394))))

(assert (=> d!1486236 true))

(declare-fun b!4674904 () Bool)

(declare-fun e!2917070 () Bool)

(assert (=> b!4674904 (= e!2917070 (invariantList!1358 (toList!5386 lt!1835147)))))

(declare-fun e!2917071 () ListMap!4749)

(assert (=> b!4674905 (= e!2917071 lt!1835143)))

(declare-fun lt!1835148 () ListMap!4749)

(declare-fun +!2052 (ListMap!4749 tuple2!53386) ListMap!4749)

(assert (=> b!4674905 (= lt!1835148 (+!2052 lt!1834930 (h!58338 (_2!29988 (h!58339 (toList!5385 lm!2023))))))))

(assert (=> b!4674905 (= lt!1835143 (addToMapMapFromBucket!1180 (t!359407 (_2!29988 (h!58339 (toList!5385 lm!2023)))) (+!2052 lt!1834930 (h!58338 (_2!29988 (h!58339 (toList!5385 lm!2023)))))))))

(declare-fun lt!1835145 () Unit!121461)

(declare-fun call!326681 () Unit!121461)

(assert (=> b!4674905 (= lt!1835145 call!326681)))

(declare-fun forall!11165 (List!52269 Int) Bool)

(assert (=> b!4674905 (forall!11165 (toList!5386 lt!1834930) lambda!203393)))

(declare-fun lt!1835149 () Unit!121461)

(assert (=> b!4674905 (= lt!1835149 lt!1835145)))

(assert (=> b!4674905 (forall!11165 (toList!5386 lt!1835148) lambda!203394)))

(declare-fun lt!1835150 () Unit!121461)

(declare-fun Unit!121465 () Unit!121461)

(assert (=> b!4674905 (= lt!1835150 Unit!121465)))

(assert (=> b!4674905 (forall!11165 (t!359407 (_2!29988 (h!58339 (toList!5385 lm!2023)))) lambda!203394)))

(declare-fun lt!1835157 () Unit!121461)

(declare-fun Unit!121466 () Unit!121461)

(assert (=> b!4674905 (= lt!1835157 Unit!121466)))

(declare-fun lt!1835141 () Unit!121461)

(declare-fun Unit!121467 () Unit!121461)

(assert (=> b!4674905 (= lt!1835141 Unit!121467)))

(declare-fun lt!1835144 () Unit!121461)

(declare-fun forallContained!3330 (List!52269 Int tuple2!53386) Unit!121461)

(assert (=> b!4674905 (= lt!1835144 (forallContained!3330 (toList!5386 lt!1835148) lambda!203394 (h!58338 (_2!29988 (h!58339 (toList!5385 lm!2023))))))))

(assert (=> b!4674905 (contains!15302 lt!1835148 (_1!29987 (h!58338 (_2!29988 (h!58339 (toList!5385 lm!2023))))))))

(declare-fun lt!1835142 () Unit!121461)

(declare-fun Unit!121468 () Unit!121461)

(assert (=> b!4674905 (= lt!1835142 Unit!121468)))

(assert (=> b!4674905 (contains!15302 lt!1835143 (_1!29987 (h!58338 (_2!29988 (h!58339 (toList!5385 lm!2023))))))))

(declare-fun lt!1835153 () Unit!121461)

(declare-fun Unit!121469 () Unit!121461)

(assert (=> b!4674905 (= lt!1835153 Unit!121469)))

(assert (=> b!4674905 (forall!11165 (_2!29988 (h!58339 (toList!5385 lm!2023))) lambda!203394)))

(declare-fun lt!1835140 () Unit!121461)

(declare-fun Unit!121470 () Unit!121461)

(assert (=> b!4674905 (= lt!1835140 Unit!121470)))

(assert (=> b!4674905 (forall!11165 (toList!5386 lt!1835148) lambda!203394)))

(declare-fun lt!1835151 () Unit!121461)

(declare-fun Unit!121471 () Unit!121461)

(assert (=> b!4674905 (= lt!1835151 Unit!121471)))

(declare-fun lt!1835154 () Unit!121461)

(declare-fun Unit!121472 () Unit!121461)

(assert (=> b!4674905 (= lt!1835154 Unit!121472)))

(declare-fun lt!1835138 () Unit!121461)

(declare-fun addForallContainsKeyThenBeforeAdding!645 (ListMap!4749 ListMap!4749 K!13520 V!13766) Unit!121461)

(assert (=> b!4674905 (= lt!1835138 (addForallContainsKeyThenBeforeAdding!645 lt!1834930 lt!1835143 (_1!29987 (h!58338 (_2!29988 (h!58339 (toList!5385 lm!2023))))) (_2!29987 (h!58338 (_2!29988 (h!58339 (toList!5385 lm!2023)))))))))

(declare-fun call!326680 () Bool)

(assert (=> b!4674905 call!326680))

(declare-fun lt!1835155 () Unit!121461)

(assert (=> b!4674905 (= lt!1835155 lt!1835138)))

(declare-fun call!326679 () Bool)

(assert (=> b!4674905 call!326679))

(declare-fun lt!1835156 () Unit!121461)

(declare-fun Unit!121473 () Unit!121461)

(assert (=> b!4674905 (= lt!1835156 Unit!121473)))

(declare-fun res!1968691 () Bool)

(assert (=> b!4674905 (= res!1968691 (forall!11165 (_2!29988 (h!58339 (toList!5385 lm!2023))) lambda!203394))))

(declare-fun e!2917072 () Bool)

(assert (=> b!4674905 (=> (not res!1968691) (not e!2917072))))

(assert (=> b!4674905 e!2917072))

(declare-fun lt!1835158 () Unit!121461)

(declare-fun Unit!121474 () Unit!121461)

(assert (=> b!4674905 (= lt!1835158 Unit!121474)))

(assert (=> b!4674906 (= e!2917071 lt!1834930)))

(declare-fun lt!1835146 () Unit!121461)

(assert (=> b!4674906 (= lt!1835146 call!326681)))

(assert (=> b!4674906 call!326680))

(declare-fun lt!1835152 () Unit!121461)

(assert (=> b!4674906 (= lt!1835152 lt!1835146)))

(assert (=> b!4674906 call!326679))

(declare-fun lt!1835139 () Unit!121461)

(declare-fun Unit!121476 () Unit!121461)

(assert (=> b!4674906 (= lt!1835139 Unit!121476)))

(declare-fun bm!326674 () Bool)

(declare-fun c!800060 () Bool)

(assert (=> bm!326674 (= call!326680 (forall!11165 (toList!5386 lt!1834930) (ite c!800060 lambda!203392 lambda!203394)))))

(declare-fun b!4674907 () Bool)

(declare-fun res!1968693 () Bool)

(assert (=> b!4674907 (=> (not res!1968693) (not e!2917070))))

(assert (=> b!4674907 (= res!1968693 (forall!11165 (toList!5386 lt!1834930) lambda!203395))))

(assert (=> d!1486236 e!2917070))

(declare-fun res!1968692 () Bool)

(assert (=> d!1486236 (=> (not res!1968692) (not e!2917070))))

(assert (=> d!1486236 (= res!1968692 (forall!11165 (_2!29988 (h!58339 (toList!5385 lm!2023))) lambda!203395))))

(assert (=> d!1486236 (= lt!1835147 e!2917071)))

(assert (=> d!1486236 (= c!800060 ((_ is Nil!52145) (_2!29988 (h!58339 (toList!5385 lm!2023)))))))

(assert (=> d!1486236 (noDuplicateKeys!1748 (_2!29988 (h!58339 (toList!5385 lm!2023))))))

(assert (=> d!1486236 (= (addToMapMapFromBucket!1180 (_2!29988 (h!58339 (toList!5385 lm!2023))) lt!1834930) lt!1835147)))

(declare-fun bm!326675 () Bool)

(assert (=> bm!326675 (= call!326679 (forall!11165 (toList!5386 lt!1834930) (ite c!800060 lambda!203392 lambda!203394)))))

(declare-fun b!4674908 () Bool)

(assert (=> b!4674908 (= e!2917072 (forall!11165 (toList!5386 lt!1834930) lambda!203394))))

(declare-fun bm!326676 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!646 (ListMap!4749) Unit!121461)

(assert (=> bm!326676 (= call!326681 (lemmaContainsAllItsOwnKeys!646 lt!1834930))))

(assert (= (and d!1486236 c!800060) b!4674906))

(assert (= (and d!1486236 (not c!800060)) b!4674905))

(assert (= (and b!4674905 res!1968691) b!4674908))

(assert (= (or b!4674906 b!4674905) bm!326676))

(assert (= (or b!4674906 b!4674905) bm!326675))

(assert (= (or b!4674906 b!4674905) bm!326674))

(assert (= (and d!1486236 res!1968692) b!4674907))

(assert (= (and b!4674907 res!1968693) b!4674904))

(declare-fun m!5568309 () Bool)

(assert (=> b!4674908 m!5568309))

(declare-fun m!5568311 () Bool)

(assert (=> bm!326675 m!5568311))

(declare-fun m!5568313 () Bool)

(assert (=> b!4674905 m!5568313))

(declare-fun m!5568315 () Bool)

(assert (=> b!4674905 m!5568315))

(declare-fun m!5568317 () Bool)

(assert (=> b!4674905 m!5568317))

(assert (=> b!4674905 m!5568317))

(declare-fun m!5568319 () Bool)

(assert (=> b!4674905 m!5568319))

(declare-fun m!5568321 () Bool)

(assert (=> b!4674905 m!5568321))

(declare-fun m!5568323 () Bool)

(assert (=> b!4674905 m!5568323))

(declare-fun m!5568325 () Bool)

(assert (=> b!4674905 m!5568325))

(assert (=> b!4674905 m!5568315))

(assert (=> b!4674905 m!5568325))

(declare-fun m!5568327 () Bool)

(assert (=> b!4674905 m!5568327))

(declare-fun m!5568329 () Bool)

(assert (=> b!4674905 m!5568329))

(declare-fun m!5568331 () Bool)

(assert (=> b!4674905 m!5568331))

(declare-fun m!5568333 () Bool)

(assert (=> bm!326676 m!5568333))

(declare-fun m!5568335 () Bool)

(assert (=> d!1486236 m!5568335))

(declare-fun m!5568337 () Bool)

(assert (=> d!1486236 m!5568337))

(declare-fun m!5568339 () Bool)

(assert (=> b!4674907 m!5568339))

(assert (=> bm!326674 m!5568311))

(declare-fun m!5568341 () Bool)

(assert (=> b!4674904 m!5568341))

(assert (=> b!4674747 d!1486236))

(declare-fun bs!1079486 () Bool)

(declare-fun d!1486276 () Bool)

(assert (= bs!1079486 (and d!1486276 start!471780)))

(declare-fun lambda!203396 () Int)

(assert (=> bs!1079486 (= lambda!203396 lambda!203307)))

(declare-fun bs!1079487 () Bool)

(assert (= bs!1079487 (and d!1486276 d!1486234)))

(assert (=> bs!1079487 (= lambda!203396 lambda!203316)))

(declare-fun lt!1835159 () ListMap!4749)

(assert (=> d!1486276 (invariantList!1358 (toList!5386 lt!1835159))))

(declare-fun e!2917073 () ListMap!4749)

(assert (=> d!1486276 (= lt!1835159 e!2917073)))

(declare-fun c!800061 () Bool)

(assert (=> d!1486276 (= c!800061 ((_ is Cons!52146) (t!359408 (toList!5385 lm!2023))))))

(assert (=> d!1486276 (forall!11163 (t!359408 (toList!5385 lm!2023)) lambda!203396)))

(assert (=> d!1486276 (= (extractMap!1774 (t!359408 (toList!5385 lm!2023))) lt!1835159)))

(declare-fun b!4674911 () Bool)

(assert (=> b!4674911 (= e!2917073 (addToMapMapFromBucket!1180 (_2!29988 (h!58339 (t!359408 (toList!5385 lm!2023)))) (extractMap!1774 (t!359408 (t!359408 (toList!5385 lm!2023))))))))

(declare-fun b!4674912 () Bool)

(assert (=> b!4674912 (= e!2917073 (ListMap!4750 Nil!52145))))

(assert (= (and d!1486276 c!800061) b!4674911))

(assert (= (and d!1486276 (not c!800061)) b!4674912))

(declare-fun m!5568343 () Bool)

(assert (=> d!1486276 m!5568343))

(declare-fun m!5568345 () Bool)

(assert (=> d!1486276 m!5568345))

(declare-fun m!5568347 () Bool)

(assert (=> b!4674911 m!5568347))

(assert (=> b!4674911 m!5568347))

(declare-fun m!5568349 () Bool)

(assert (=> b!4674911 m!5568349))

(assert (=> b!4674747 d!1486276))

(declare-fun d!1486278 () Bool)

(declare-fun tail!8338 (List!52270) List!52270)

(assert (=> d!1486278 (= (tail!8337 lm!2023) (ListLongMap!3916 (tail!8338 (toList!5385 lm!2023))))))

(declare-fun bs!1079488 () Bool)

(assert (= bs!1079488 d!1486278))

(declare-fun m!5568351 () Bool)

(assert (=> bs!1079488 m!5568351))

(assert (=> b!4674747 d!1486278))

(declare-fun d!1486280 () Bool)

(assert (=> d!1486280 (= (tail!8336 oldBucket!34) (t!359407 oldBucket!34))))

(assert (=> b!4674737 d!1486280))

(declare-fun bs!1079489 () Bool)

(declare-fun d!1486282 () Bool)

(assert (= bs!1079489 (and d!1486282 start!471780)))

(declare-fun lambda!203397 () Int)

(assert (=> bs!1079489 (= lambda!203397 lambda!203307)))

(declare-fun bs!1079490 () Bool)

(assert (= bs!1079490 (and d!1486282 d!1486234)))

(assert (=> bs!1079490 (= lambda!203397 lambda!203316)))

(declare-fun bs!1079491 () Bool)

(assert (= bs!1079491 (and d!1486282 d!1486276)))

(assert (=> bs!1079491 (= lambda!203397 lambda!203396)))

(declare-fun lt!1835160 () ListMap!4749)

(assert (=> d!1486282 (invariantList!1358 (toList!5386 lt!1835160))))

(declare-fun e!2917074 () ListMap!4749)

(assert (=> d!1486282 (= lt!1835160 e!2917074)))

(declare-fun c!800062 () Bool)

(assert (=> d!1486282 (= c!800062 ((_ is Cons!52146) (Cons!52146 (tuple2!53389 hash!405 lt!1834929) (t!359408 (toList!5385 lm!2023)))))))

(assert (=> d!1486282 (forall!11163 (Cons!52146 (tuple2!53389 hash!405 lt!1834929) (t!359408 (toList!5385 lm!2023))) lambda!203397)))

(assert (=> d!1486282 (= (extractMap!1774 (Cons!52146 (tuple2!53389 hash!405 lt!1834929) (t!359408 (toList!5385 lm!2023)))) lt!1835160)))

(declare-fun b!4674913 () Bool)

(assert (=> b!4674913 (= e!2917074 (addToMapMapFromBucket!1180 (_2!29988 (h!58339 (Cons!52146 (tuple2!53389 hash!405 lt!1834929) (t!359408 (toList!5385 lm!2023))))) (extractMap!1774 (t!359408 (Cons!52146 (tuple2!53389 hash!405 lt!1834929) (t!359408 (toList!5385 lm!2023)))))))))

(declare-fun b!4674914 () Bool)

(assert (=> b!4674914 (= e!2917074 (ListMap!4750 Nil!52145))))

(assert (= (and d!1486282 c!800062) b!4674913))

(assert (= (and d!1486282 (not c!800062)) b!4674914))

(declare-fun m!5568353 () Bool)

(assert (=> d!1486282 m!5568353))

(declare-fun m!5568355 () Bool)

(assert (=> d!1486282 m!5568355))

(declare-fun m!5568357 () Bool)

(assert (=> b!4674913 m!5568357))

(assert (=> b!4674913 m!5568357))

(declare-fun m!5568359 () Bool)

(assert (=> b!4674913 m!5568359))

(assert (=> b!4674748 d!1486282))

(declare-fun bs!1079492 () Bool)

(declare-fun d!1486284 () Bool)

(assert (= bs!1079492 (and d!1486284 start!471780)))

(declare-fun lambda!203398 () Int)

(assert (=> bs!1079492 (= lambda!203398 lambda!203307)))

(declare-fun bs!1079493 () Bool)

(assert (= bs!1079493 (and d!1486284 d!1486234)))

(assert (=> bs!1079493 (= lambda!203398 lambda!203316)))

(declare-fun bs!1079494 () Bool)

(assert (= bs!1079494 (and d!1486284 d!1486276)))

(assert (=> bs!1079494 (= lambda!203398 lambda!203396)))

(declare-fun bs!1079495 () Bool)

(assert (= bs!1079495 (and d!1486284 d!1486282)))

(assert (=> bs!1079495 (= lambda!203398 lambda!203397)))

(declare-fun lt!1835161 () ListMap!4749)

(assert (=> d!1486284 (invariantList!1358 (toList!5386 lt!1835161))))

(declare-fun e!2917075 () ListMap!4749)

(assert (=> d!1486284 (= lt!1835161 e!2917075)))

(declare-fun c!800063 () Bool)

(assert (=> d!1486284 (= c!800063 ((_ is Cons!52146) (Cons!52146 (tuple2!53389 hash!405 newBucket!218) (t!359408 (toList!5385 lm!2023)))))))

(assert (=> d!1486284 (forall!11163 (Cons!52146 (tuple2!53389 hash!405 newBucket!218) (t!359408 (toList!5385 lm!2023))) lambda!203398)))

(assert (=> d!1486284 (= (extractMap!1774 (Cons!52146 (tuple2!53389 hash!405 newBucket!218) (t!359408 (toList!5385 lm!2023)))) lt!1835161)))

(declare-fun b!4674915 () Bool)

(assert (=> b!4674915 (= e!2917075 (addToMapMapFromBucket!1180 (_2!29988 (h!58339 (Cons!52146 (tuple2!53389 hash!405 newBucket!218) (t!359408 (toList!5385 lm!2023))))) (extractMap!1774 (t!359408 (Cons!52146 (tuple2!53389 hash!405 newBucket!218) (t!359408 (toList!5385 lm!2023)))))))))

(declare-fun b!4674916 () Bool)

(assert (=> b!4674916 (= e!2917075 (ListMap!4750 Nil!52145))))

(assert (= (and d!1486284 c!800063) b!4674915))

(assert (= (and d!1486284 (not c!800063)) b!4674916))

(declare-fun m!5568361 () Bool)

(assert (=> d!1486284 m!5568361))

(declare-fun m!5568363 () Bool)

(assert (=> d!1486284 m!5568363))

(declare-fun m!5568365 () Bool)

(assert (=> b!4674915 m!5568365))

(assert (=> b!4674915 m!5568365))

(declare-fun m!5568367 () Bool)

(assert (=> b!4674915 m!5568367))

(assert (=> b!4674748 d!1486284))

(declare-fun bs!1079496 () Bool)

(declare-fun d!1486286 () Bool)

(assert (= bs!1079496 (and d!1486286 b!4674906)))

(declare-fun lambda!203401 () Int)

(assert (=> bs!1079496 (not (= lambda!203401 lambda!203392))))

(declare-fun bs!1079497 () Bool)

(assert (= bs!1079497 (and d!1486286 b!4674905)))

(assert (=> bs!1079497 (not (= lambda!203401 lambda!203393))))

(assert (=> bs!1079497 (not (= lambda!203401 lambda!203394))))

(declare-fun bs!1079498 () Bool)

(assert (= bs!1079498 (and d!1486286 d!1486236)))

(assert (=> bs!1079498 (not (= lambda!203401 lambda!203395))))

(assert (=> d!1486286 true))

(assert (=> d!1486286 true))

(assert (=> d!1486286 (= (allKeysSameHash!1574 newBucket!218 hash!405 hashF!1323) (forall!11165 newBucket!218 lambda!203401))))

(declare-fun bs!1079499 () Bool)

(assert (= bs!1079499 d!1486286))

(declare-fun m!5568369 () Bool)

(assert (=> bs!1079499 m!5568369))

(assert (=> b!4674738 d!1486286))

(declare-fun d!1486288 () Bool)

(assert (=> d!1486288 (= (head!9788 (toList!5385 lm!2023)) (h!58339 (toList!5385 lm!2023)))))

(assert (=> b!4674739 d!1486288))

(declare-fun bs!1079500 () Bool)

(declare-fun b!4674923 () Bool)

(assert (= bs!1079500 (and b!4674923 d!1486236)))

(declare-fun lambda!203402 () Int)

(assert (=> bs!1079500 (= (= lt!1834930 lt!1835147) (= lambda!203402 lambda!203395))))

(declare-fun bs!1079501 () Bool)

(assert (= bs!1079501 (and b!4674923 d!1486286)))

(assert (=> bs!1079501 (not (= lambda!203402 lambda!203401))))

(declare-fun bs!1079502 () Bool)

(assert (= bs!1079502 (and b!4674923 b!4674905)))

(assert (=> bs!1079502 (= (= lt!1834930 lt!1835143) (= lambda!203402 lambda!203394))))

(declare-fun bs!1079503 () Bool)

(assert (= bs!1079503 (and b!4674923 b!4674906)))

(assert (=> bs!1079503 (= lambda!203402 lambda!203392)))

(assert (=> bs!1079502 (= lambda!203402 lambda!203393)))

(assert (=> b!4674923 true))

(declare-fun bs!1079504 () Bool)

(declare-fun b!4674922 () Bool)

(assert (= bs!1079504 (and b!4674922 b!4674923)))

(declare-fun lambda!203403 () Int)

(assert (=> bs!1079504 (= lambda!203403 lambda!203402)))

(declare-fun bs!1079505 () Bool)

(assert (= bs!1079505 (and b!4674922 d!1486236)))

(assert (=> bs!1079505 (= (= lt!1834930 lt!1835147) (= lambda!203403 lambda!203395))))

(declare-fun bs!1079506 () Bool)

(assert (= bs!1079506 (and b!4674922 d!1486286)))

(assert (=> bs!1079506 (not (= lambda!203403 lambda!203401))))

(declare-fun bs!1079507 () Bool)

(assert (= bs!1079507 (and b!4674922 b!4674905)))

(assert (=> bs!1079507 (= (= lt!1834930 lt!1835143) (= lambda!203403 lambda!203394))))

(declare-fun bs!1079508 () Bool)

(assert (= bs!1079508 (and b!4674922 b!4674906)))

(assert (=> bs!1079508 (= lambda!203403 lambda!203392)))

(assert (=> bs!1079507 (= lambda!203403 lambda!203393)))

(assert (=> b!4674922 true))

(declare-fun lt!1835167 () ListMap!4749)

(declare-fun lambda!203404 () Int)

(assert (=> b!4674922 (= (= lt!1835167 lt!1834930) (= lambda!203404 lambda!203403))))

(assert (=> bs!1079504 (= (= lt!1835167 lt!1834930) (= lambda!203404 lambda!203402))))

(assert (=> bs!1079505 (= (= lt!1835167 lt!1835147) (= lambda!203404 lambda!203395))))

(assert (=> bs!1079506 (not (= lambda!203404 lambda!203401))))

(assert (=> bs!1079507 (= (= lt!1835167 lt!1835143) (= lambda!203404 lambda!203394))))

(assert (=> bs!1079508 (= (= lt!1835167 lt!1834930) (= lambda!203404 lambda!203392))))

(assert (=> bs!1079507 (= (= lt!1835167 lt!1834930) (= lambda!203404 lambda!203393))))

(assert (=> b!4674922 true))

(declare-fun bs!1079509 () Bool)

(declare-fun d!1486290 () Bool)

(assert (= bs!1079509 (and d!1486290 b!4674922)))

(declare-fun lt!1835171 () ListMap!4749)

(declare-fun lambda!203405 () Int)

(assert (=> bs!1079509 (= (= lt!1835171 lt!1835167) (= lambda!203405 lambda!203404))))

(assert (=> bs!1079509 (= (= lt!1835171 lt!1834930) (= lambda!203405 lambda!203403))))

(declare-fun bs!1079510 () Bool)

(assert (= bs!1079510 (and d!1486290 b!4674923)))

(assert (=> bs!1079510 (= (= lt!1835171 lt!1834930) (= lambda!203405 lambda!203402))))

(declare-fun bs!1079511 () Bool)

(assert (= bs!1079511 (and d!1486290 d!1486236)))

(assert (=> bs!1079511 (= (= lt!1835171 lt!1835147) (= lambda!203405 lambda!203395))))

(declare-fun bs!1079512 () Bool)

(assert (= bs!1079512 (and d!1486290 d!1486286)))

(assert (=> bs!1079512 (not (= lambda!203405 lambda!203401))))

(declare-fun bs!1079513 () Bool)

(assert (= bs!1079513 (and d!1486290 b!4674905)))

(assert (=> bs!1079513 (= (= lt!1835171 lt!1835143) (= lambda!203405 lambda!203394))))

(declare-fun bs!1079514 () Bool)

(assert (= bs!1079514 (and d!1486290 b!4674906)))

(assert (=> bs!1079514 (= (= lt!1835171 lt!1834930) (= lambda!203405 lambda!203392))))

(assert (=> bs!1079513 (= (= lt!1835171 lt!1834930) (= lambda!203405 lambda!203393))))

(assert (=> d!1486290 true))

(declare-fun b!4674921 () Bool)

(declare-fun e!2917076 () Bool)

(assert (=> b!4674921 (= e!2917076 (invariantList!1358 (toList!5386 lt!1835171)))))

(declare-fun e!2917077 () ListMap!4749)

(assert (=> b!4674922 (= e!2917077 lt!1835167)))

(declare-fun lt!1835172 () ListMap!4749)

(assert (=> b!4674922 (= lt!1835172 (+!2052 lt!1834930 (h!58338 lt!1834929)))))

(assert (=> b!4674922 (= lt!1835167 (addToMapMapFromBucket!1180 (t!359407 lt!1834929) (+!2052 lt!1834930 (h!58338 lt!1834929))))))

(declare-fun lt!1835169 () Unit!121461)

(declare-fun call!326684 () Unit!121461)

(assert (=> b!4674922 (= lt!1835169 call!326684)))

(assert (=> b!4674922 (forall!11165 (toList!5386 lt!1834930) lambda!203403)))

(declare-fun lt!1835173 () Unit!121461)

(assert (=> b!4674922 (= lt!1835173 lt!1835169)))

(assert (=> b!4674922 (forall!11165 (toList!5386 lt!1835172) lambda!203404)))

(declare-fun lt!1835174 () Unit!121461)

(declare-fun Unit!121489 () Unit!121461)

(assert (=> b!4674922 (= lt!1835174 Unit!121489)))

(assert (=> b!4674922 (forall!11165 (t!359407 lt!1834929) lambda!203404)))

(declare-fun lt!1835181 () Unit!121461)

(declare-fun Unit!121490 () Unit!121461)

(assert (=> b!4674922 (= lt!1835181 Unit!121490)))

(declare-fun lt!1835165 () Unit!121461)

(declare-fun Unit!121491 () Unit!121461)

(assert (=> b!4674922 (= lt!1835165 Unit!121491)))

(declare-fun lt!1835168 () Unit!121461)

(assert (=> b!4674922 (= lt!1835168 (forallContained!3330 (toList!5386 lt!1835172) lambda!203404 (h!58338 lt!1834929)))))

(assert (=> b!4674922 (contains!15302 lt!1835172 (_1!29987 (h!58338 lt!1834929)))))

(declare-fun lt!1835166 () Unit!121461)

(declare-fun Unit!121492 () Unit!121461)

(assert (=> b!4674922 (= lt!1835166 Unit!121492)))

(assert (=> b!4674922 (contains!15302 lt!1835167 (_1!29987 (h!58338 lt!1834929)))))

(declare-fun lt!1835177 () Unit!121461)

(declare-fun Unit!121493 () Unit!121461)

(assert (=> b!4674922 (= lt!1835177 Unit!121493)))

(assert (=> b!4674922 (forall!11165 lt!1834929 lambda!203404)))

(declare-fun lt!1835164 () Unit!121461)

(declare-fun Unit!121494 () Unit!121461)

(assert (=> b!4674922 (= lt!1835164 Unit!121494)))

(assert (=> b!4674922 (forall!11165 (toList!5386 lt!1835172) lambda!203404)))

(declare-fun lt!1835175 () Unit!121461)

(declare-fun Unit!121495 () Unit!121461)

(assert (=> b!4674922 (= lt!1835175 Unit!121495)))

(declare-fun lt!1835178 () Unit!121461)

(declare-fun Unit!121496 () Unit!121461)

(assert (=> b!4674922 (= lt!1835178 Unit!121496)))

(declare-fun lt!1835162 () Unit!121461)

(assert (=> b!4674922 (= lt!1835162 (addForallContainsKeyThenBeforeAdding!645 lt!1834930 lt!1835167 (_1!29987 (h!58338 lt!1834929)) (_2!29987 (h!58338 lt!1834929))))))

(declare-fun call!326683 () Bool)

(assert (=> b!4674922 call!326683))

(declare-fun lt!1835179 () Unit!121461)

(assert (=> b!4674922 (= lt!1835179 lt!1835162)))

(declare-fun call!326682 () Bool)

(assert (=> b!4674922 call!326682))

(declare-fun lt!1835180 () Unit!121461)

(declare-fun Unit!121497 () Unit!121461)

(assert (=> b!4674922 (= lt!1835180 Unit!121497)))

(declare-fun res!1968694 () Bool)

(assert (=> b!4674922 (= res!1968694 (forall!11165 lt!1834929 lambda!203404))))

(declare-fun e!2917078 () Bool)

(assert (=> b!4674922 (=> (not res!1968694) (not e!2917078))))

(assert (=> b!4674922 e!2917078))

(declare-fun lt!1835182 () Unit!121461)

(declare-fun Unit!121498 () Unit!121461)

(assert (=> b!4674922 (= lt!1835182 Unit!121498)))

(assert (=> b!4674923 (= e!2917077 lt!1834930)))

(declare-fun lt!1835170 () Unit!121461)

(assert (=> b!4674923 (= lt!1835170 call!326684)))

(assert (=> b!4674923 call!326683))

(declare-fun lt!1835176 () Unit!121461)

(assert (=> b!4674923 (= lt!1835176 lt!1835170)))

(assert (=> b!4674923 call!326682))

(declare-fun lt!1835163 () Unit!121461)

(declare-fun Unit!121499 () Unit!121461)

(assert (=> b!4674923 (= lt!1835163 Unit!121499)))

(declare-fun c!800064 () Bool)

(declare-fun bm!326677 () Bool)

(assert (=> bm!326677 (= call!326683 (forall!11165 (toList!5386 lt!1834930) (ite c!800064 lambda!203402 lambda!203404)))))

(declare-fun b!4674924 () Bool)

(declare-fun res!1968696 () Bool)

(assert (=> b!4674924 (=> (not res!1968696) (not e!2917076))))

(assert (=> b!4674924 (= res!1968696 (forall!11165 (toList!5386 lt!1834930) lambda!203405))))

(assert (=> d!1486290 e!2917076))

(declare-fun res!1968695 () Bool)

(assert (=> d!1486290 (=> (not res!1968695) (not e!2917076))))

(assert (=> d!1486290 (= res!1968695 (forall!11165 lt!1834929 lambda!203405))))

(assert (=> d!1486290 (= lt!1835171 e!2917077)))

(assert (=> d!1486290 (= c!800064 ((_ is Nil!52145) lt!1834929))))

(assert (=> d!1486290 (noDuplicateKeys!1748 lt!1834929)))

(assert (=> d!1486290 (= (addToMapMapFromBucket!1180 lt!1834929 lt!1834930) lt!1835171)))

(declare-fun bm!326678 () Bool)

(assert (=> bm!326678 (= call!326682 (forall!11165 (toList!5386 lt!1834930) (ite c!800064 lambda!203402 lambda!203404)))))

(declare-fun b!4674925 () Bool)

(assert (=> b!4674925 (= e!2917078 (forall!11165 (toList!5386 lt!1834930) lambda!203404))))

(declare-fun bm!326679 () Bool)

(assert (=> bm!326679 (= call!326684 (lemmaContainsAllItsOwnKeys!646 lt!1834930))))

(assert (= (and d!1486290 c!800064) b!4674923))

(assert (= (and d!1486290 (not c!800064)) b!4674922))

(assert (= (and b!4674922 res!1968694) b!4674925))

(assert (= (or b!4674923 b!4674922) bm!326679))

(assert (= (or b!4674923 b!4674922) bm!326678))

(assert (= (or b!4674923 b!4674922) bm!326677))

(assert (= (and d!1486290 res!1968695) b!4674924))

(assert (= (and b!4674924 res!1968696) b!4674921))

(declare-fun m!5568371 () Bool)

(assert (=> b!4674925 m!5568371))

(declare-fun m!5568373 () Bool)

(assert (=> bm!326678 m!5568373))

(declare-fun m!5568375 () Bool)

(assert (=> b!4674922 m!5568375))

(declare-fun m!5568377 () Bool)

(assert (=> b!4674922 m!5568377))

(declare-fun m!5568379 () Bool)

(assert (=> b!4674922 m!5568379))

(assert (=> b!4674922 m!5568379))

(declare-fun m!5568381 () Bool)

(assert (=> b!4674922 m!5568381))

(declare-fun m!5568383 () Bool)

(assert (=> b!4674922 m!5568383))

(declare-fun m!5568385 () Bool)

(assert (=> b!4674922 m!5568385))

(declare-fun m!5568387 () Bool)

(assert (=> b!4674922 m!5568387))

(assert (=> b!4674922 m!5568377))

(assert (=> b!4674922 m!5568387))

(declare-fun m!5568389 () Bool)

(assert (=> b!4674922 m!5568389))

(declare-fun m!5568391 () Bool)

(assert (=> b!4674922 m!5568391))

(declare-fun m!5568393 () Bool)

(assert (=> b!4674922 m!5568393))

(assert (=> bm!326679 m!5568333))

(declare-fun m!5568395 () Bool)

(assert (=> d!1486290 m!5568395))

(declare-fun m!5568397 () Bool)

(assert (=> d!1486290 m!5568397))

(declare-fun m!5568399 () Bool)

(assert (=> b!4674924 m!5568399))

(assert (=> bm!326677 m!5568373))

(declare-fun m!5568401 () Bool)

(assert (=> b!4674921 m!5568401))

(assert (=> b!4674740 d!1486290))

(declare-fun bs!1079515 () Bool)

(declare-fun b!4674928 () Bool)

(assert (= bs!1079515 (and b!4674928 b!4674922)))

(declare-fun lambda!203406 () Int)

(assert (=> bs!1079515 (= (= lt!1834930 lt!1835167) (= lambda!203406 lambda!203404))))

(assert (=> bs!1079515 (= lambda!203406 lambda!203403)))

(declare-fun bs!1079516 () Bool)

(assert (= bs!1079516 (and b!4674928 b!4674923)))

(assert (=> bs!1079516 (= lambda!203406 lambda!203402)))

(declare-fun bs!1079517 () Bool)

(assert (= bs!1079517 (and b!4674928 d!1486236)))

(assert (=> bs!1079517 (= (= lt!1834930 lt!1835147) (= lambda!203406 lambda!203395))))

(declare-fun bs!1079518 () Bool)

(assert (= bs!1079518 (and b!4674928 d!1486286)))

(assert (=> bs!1079518 (not (= lambda!203406 lambda!203401))))

(declare-fun bs!1079519 () Bool)

(assert (= bs!1079519 (and b!4674928 b!4674905)))

(assert (=> bs!1079519 (= (= lt!1834930 lt!1835143) (= lambda!203406 lambda!203394))))

(declare-fun bs!1079520 () Bool)

(assert (= bs!1079520 (and b!4674928 d!1486290)))

(assert (=> bs!1079520 (= (= lt!1834930 lt!1835171) (= lambda!203406 lambda!203405))))

(declare-fun bs!1079521 () Bool)

(assert (= bs!1079521 (and b!4674928 b!4674906)))

(assert (=> bs!1079521 (= lambda!203406 lambda!203392)))

(assert (=> bs!1079519 (= lambda!203406 lambda!203393)))

(assert (=> b!4674928 true))

(declare-fun bs!1079522 () Bool)

(declare-fun b!4674927 () Bool)

(assert (= bs!1079522 (and b!4674927 b!4674922)))

(declare-fun lambda!203407 () Int)

(assert (=> bs!1079522 (= (= lt!1834930 lt!1835167) (= lambda!203407 lambda!203404))))

(assert (=> bs!1079522 (= lambda!203407 lambda!203403)))

(declare-fun bs!1079523 () Bool)

(assert (= bs!1079523 (and b!4674927 b!4674923)))

(assert (=> bs!1079523 (= lambda!203407 lambda!203402)))

(declare-fun bs!1079524 () Bool)

(assert (= bs!1079524 (and b!4674927 b!4674928)))

(assert (=> bs!1079524 (= lambda!203407 lambda!203406)))

(declare-fun bs!1079525 () Bool)

(assert (= bs!1079525 (and b!4674927 d!1486236)))

(assert (=> bs!1079525 (= (= lt!1834930 lt!1835147) (= lambda!203407 lambda!203395))))

(declare-fun bs!1079526 () Bool)

(assert (= bs!1079526 (and b!4674927 d!1486286)))

(assert (=> bs!1079526 (not (= lambda!203407 lambda!203401))))

(declare-fun bs!1079527 () Bool)

(assert (= bs!1079527 (and b!4674927 b!4674905)))

(assert (=> bs!1079527 (= (= lt!1834930 lt!1835143) (= lambda!203407 lambda!203394))))

(declare-fun bs!1079528 () Bool)

(assert (= bs!1079528 (and b!4674927 d!1486290)))

(assert (=> bs!1079528 (= (= lt!1834930 lt!1835171) (= lambda!203407 lambda!203405))))

(declare-fun bs!1079529 () Bool)

(assert (= bs!1079529 (and b!4674927 b!4674906)))

(assert (=> bs!1079529 (= lambda!203407 lambda!203392)))

(assert (=> bs!1079527 (= lambda!203407 lambda!203393)))

(assert (=> b!4674927 true))

(declare-fun lambda!203408 () Int)

(declare-fun lt!1835188 () ListMap!4749)

(assert (=> bs!1079522 (= (= lt!1835188 lt!1835167) (= lambda!203408 lambda!203404))))

(assert (=> bs!1079522 (= (= lt!1835188 lt!1834930) (= lambda!203408 lambda!203403))))

(assert (=> bs!1079523 (= (= lt!1835188 lt!1834930) (= lambda!203408 lambda!203402))))

(assert (=> bs!1079524 (= (= lt!1835188 lt!1834930) (= lambda!203408 lambda!203406))))

(assert (=> bs!1079525 (= (= lt!1835188 lt!1835147) (= lambda!203408 lambda!203395))))

(assert (=> bs!1079526 (not (= lambda!203408 lambda!203401))))

(assert (=> bs!1079528 (= (= lt!1835188 lt!1835171) (= lambda!203408 lambda!203405))))

(assert (=> b!4674927 (= (= lt!1835188 lt!1834930) (= lambda!203408 lambda!203407))))

(assert (=> bs!1079527 (= (= lt!1835188 lt!1835143) (= lambda!203408 lambda!203394))))

(assert (=> bs!1079529 (= (= lt!1835188 lt!1834930) (= lambda!203408 lambda!203392))))

(assert (=> bs!1079527 (= (= lt!1835188 lt!1834930) (= lambda!203408 lambda!203393))))

(assert (=> b!4674927 true))

(declare-fun bs!1079530 () Bool)

(declare-fun d!1486292 () Bool)

(assert (= bs!1079530 (and d!1486292 b!4674922)))

(declare-fun lambda!203409 () Int)

(declare-fun lt!1835192 () ListMap!4749)

(assert (=> bs!1079530 (= (= lt!1835192 lt!1835167) (= lambda!203409 lambda!203404))))

(assert (=> bs!1079530 (= (= lt!1835192 lt!1834930) (= lambda!203409 lambda!203403))))

(declare-fun bs!1079531 () Bool)

(assert (= bs!1079531 (and d!1486292 b!4674923)))

(assert (=> bs!1079531 (= (= lt!1835192 lt!1834930) (= lambda!203409 lambda!203402))))

(declare-fun bs!1079532 () Bool)

(assert (= bs!1079532 (and d!1486292 b!4674927)))

(assert (=> bs!1079532 (= (= lt!1835192 lt!1835188) (= lambda!203409 lambda!203408))))

(declare-fun bs!1079533 () Bool)

(assert (= bs!1079533 (and d!1486292 b!4674928)))

(assert (=> bs!1079533 (= (= lt!1835192 lt!1834930) (= lambda!203409 lambda!203406))))

(declare-fun bs!1079534 () Bool)

(assert (= bs!1079534 (and d!1486292 d!1486236)))

(assert (=> bs!1079534 (= (= lt!1835192 lt!1835147) (= lambda!203409 lambda!203395))))

(declare-fun bs!1079535 () Bool)

(assert (= bs!1079535 (and d!1486292 d!1486286)))

(assert (=> bs!1079535 (not (= lambda!203409 lambda!203401))))

(declare-fun bs!1079536 () Bool)

(assert (= bs!1079536 (and d!1486292 d!1486290)))

(assert (=> bs!1079536 (= (= lt!1835192 lt!1835171) (= lambda!203409 lambda!203405))))

(assert (=> bs!1079532 (= (= lt!1835192 lt!1834930) (= lambda!203409 lambda!203407))))

(declare-fun bs!1079537 () Bool)

(assert (= bs!1079537 (and d!1486292 b!4674905)))

(assert (=> bs!1079537 (= (= lt!1835192 lt!1835143) (= lambda!203409 lambda!203394))))

(declare-fun bs!1079538 () Bool)

(assert (= bs!1079538 (and d!1486292 b!4674906)))

(assert (=> bs!1079538 (= (= lt!1835192 lt!1834930) (= lambda!203409 lambda!203392))))

(assert (=> bs!1079537 (= (= lt!1835192 lt!1834930) (= lambda!203409 lambda!203393))))

(assert (=> d!1486292 true))

(declare-fun b!4674926 () Bool)

(declare-fun e!2917079 () Bool)

(assert (=> b!4674926 (= e!2917079 (invariantList!1358 (toList!5386 lt!1835192)))))

(declare-fun e!2917080 () ListMap!4749)

(assert (=> b!4674927 (= e!2917080 lt!1835188)))

(declare-fun lt!1835193 () ListMap!4749)

(assert (=> b!4674927 (= lt!1835193 (+!2052 lt!1834930 (h!58338 newBucket!218)))))

(assert (=> b!4674927 (= lt!1835188 (addToMapMapFromBucket!1180 (t!359407 newBucket!218) (+!2052 lt!1834930 (h!58338 newBucket!218))))))

(declare-fun lt!1835190 () Unit!121461)

(declare-fun call!326687 () Unit!121461)

(assert (=> b!4674927 (= lt!1835190 call!326687)))

(assert (=> b!4674927 (forall!11165 (toList!5386 lt!1834930) lambda!203407)))

(declare-fun lt!1835194 () Unit!121461)

(assert (=> b!4674927 (= lt!1835194 lt!1835190)))

(assert (=> b!4674927 (forall!11165 (toList!5386 lt!1835193) lambda!203408)))

(declare-fun lt!1835195 () Unit!121461)

(declare-fun Unit!121500 () Unit!121461)

(assert (=> b!4674927 (= lt!1835195 Unit!121500)))

(assert (=> b!4674927 (forall!11165 (t!359407 newBucket!218) lambda!203408)))

(declare-fun lt!1835202 () Unit!121461)

(declare-fun Unit!121501 () Unit!121461)

(assert (=> b!4674927 (= lt!1835202 Unit!121501)))

(declare-fun lt!1835186 () Unit!121461)

(declare-fun Unit!121502 () Unit!121461)

(assert (=> b!4674927 (= lt!1835186 Unit!121502)))

(declare-fun lt!1835189 () Unit!121461)

(assert (=> b!4674927 (= lt!1835189 (forallContained!3330 (toList!5386 lt!1835193) lambda!203408 (h!58338 newBucket!218)))))

(assert (=> b!4674927 (contains!15302 lt!1835193 (_1!29987 (h!58338 newBucket!218)))))

(declare-fun lt!1835187 () Unit!121461)

(declare-fun Unit!121503 () Unit!121461)

(assert (=> b!4674927 (= lt!1835187 Unit!121503)))

(assert (=> b!4674927 (contains!15302 lt!1835188 (_1!29987 (h!58338 newBucket!218)))))

(declare-fun lt!1835198 () Unit!121461)

(declare-fun Unit!121504 () Unit!121461)

(assert (=> b!4674927 (= lt!1835198 Unit!121504)))

(assert (=> b!4674927 (forall!11165 newBucket!218 lambda!203408)))

(declare-fun lt!1835185 () Unit!121461)

(declare-fun Unit!121505 () Unit!121461)

(assert (=> b!4674927 (= lt!1835185 Unit!121505)))

(assert (=> b!4674927 (forall!11165 (toList!5386 lt!1835193) lambda!203408)))

(declare-fun lt!1835196 () Unit!121461)

(declare-fun Unit!121506 () Unit!121461)

(assert (=> b!4674927 (= lt!1835196 Unit!121506)))

(declare-fun lt!1835199 () Unit!121461)

(declare-fun Unit!121507 () Unit!121461)

(assert (=> b!4674927 (= lt!1835199 Unit!121507)))

(declare-fun lt!1835183 () Unit!121461)

(assert (=> b!4674927 (= lt!1835183 (addForallContainsKeyThenBeforeAdding!645 lt!1834930 lt!1835188 (_1!29987 (h!58338 newBucket!218)) (_2!29987 (h!58338 newBucket!218))))))

(declare-fun call!326686 () Bool)

(assert (=> b!4674927 call!326686))

(declare-fun lt!1835200 () Unit!121461)

(assert (=> b!4674927 (= lt!1835200 lt!1835183)))

(declare-fun call!326685 () Bool)

(assert (=> b!4674927 call!326685))

(declare-fun lt!1835201 () Unit!121461)

(declare-fun Unit!121508 () Unit!121461)

(assert (=> b!4674927 (= lt!1835201 Unit!121508)))

(declare-fun res!1968697 () Bool)

(assert (=> b!4674927 (= res!1968697 (forall!11165 newBucket!218 lambda!203408))))

(declare-fun e!2917081 () Bool)

(assert (=> b!4674927 (=> (not res!1968697) (not e!2917081))))

(assert (=> b!4674927 e!2917081))

(declare-fun lt!1835203 () Unit!121461)

(declare-fun Unit!121509 () Unit!121461)

(assert (=> b!4674927 (= lt!1835203 Unit!121509)))

(assert (=> b!4674928 (= e!2917080 lt!1834930)))

(declare-fun lt!1835191 () Unit!121461)

(assert (=> b!4674928 (= lt!1835191 call!326687)))

(assert (=> b!4674928 call!326686))

(declare-fun lt!1835197 () Unit!121461)

(assert (=> b!4674928 (= lt!1835197 lt!1835191)))

(assert (=> b!4674928 call!326685))

(declare-fun lt!1835184 () Unit!121461)

(declare-fun Unit!121510 () Unit!121461)

(assert (=> b!4674928 (= lt!1835184 Unit!121510)))

(declare-fun c!800065 () Bool)

(declare-fun bm!326680 () Bool)

(assert (=> bm!326680 (= call!326686 (forall!11165 (toList!5386 lt!1834930) (ite c!800065 lambda!203406 lambda!203408)))))

(declare-fun b!4674929 () Bool)

(declare-fun res!1968699 () Bool)

(assert (=> b!4674929 (=> (not res!1968699) (not e!2917079))))

(assert (=> b!4674929 (= res!1968699 (forall!11165 (toList!5386 lt!1834930) lambda!203409))))

(assert (=> d!1486292 e!2917079))

(declare-fun res!1968698 () Bool)

(assert (=> d!1486292 (=> (not res!1968698) (not e!2917079))))

(assert (=> d!1486292 (= res!1968698 (forall!11165 newBucket!218 lambda!203409))))

(assert (=> d!1486292 (= lt!1835192 e!2917080)))

(assert (=> d!1486292 (= c!800065 ((_ is Nil!52145) newBucket!218))))

(assert (=> d!1486292 (noDuplicateKeys!1748 newBucket!218)))

(assert (=> d!1486292 (= (addToMapMapFromBucket!1180 newBucket!218 lt!1834930) lt!1835192)))

(declare-fun bm!326681 () Bool)

(assert (=> bm!326681 (= call!326685 (forall!11165 (toList!5386 lt!1834930) (ite c!800065 lambda!203406 lambda!203408)))))

(declare-fun b!4674930 () Bool)

(assert (=> b!4674930 (= e!2917081 (forall!11165 (toList!5386 lt!1834930) lambda!203408))))

(declare-fun bm!326682 () Bool)

(assert (=> bm!326682 (= call!326687 (lemmaContainsAllItsOwnKeys!646 lt!1834930))))

(assert (= (and d!1486292 c!800065) b!4674928))

(assert (= (and d!1486292 (not c!800065)) b!4674927))

(assert (= (and b!4674927 res!1968697) b!4674930))

(assert (= (or b!4674928 b!4674927) bm!326682))

(assert (= (or b!4674928 b!4674927) bm!326681))

(assert (= (or b!4674928 b!4674927) bm!326680))

(assert (= (and d!1486292 res!1968698) b!4674929))

(assert (= (and b!4674929 res!1968699) b!4674926))

(declare-fun m!5568403 () Bool)

(assert (=> b!4674930 m!5568403))

(declare-fun m!5568405 () Bool)

(assert (=> bm!326681 m!5568405))

(declare-fun m!5568407 () Bool)

(assert (=> b!4674927 m!5568407))

(declare-fun m!5568409 () Bool)

(assert (=> b!4674927 m!5568409))

(declare-fun m!5568411 () Bool)

(assert (=> b!4674927 m!5568411))

(assert (=> b!4674927 m!5568411))

(declare-fun m!5568413 () Bool)

(assert (=> b!4674927 m!5568413))

(declare-fun m!5568415 () Bool)

(assert (=> b!4674927 m!5568415))

(declare-fun m!5568417 () Bool)

(assert (=> b!4674927 m!5568417))

(declare-fun m!5568419 () Bool)

(assert (=> b!4674927 m!5568419))

(assert (=> b!4674927 m!5568409))

(assert (=> b!4674927 m!5568419))

(declare-fun m!5568421 () Bool)

(assert (=> b!4674927 m!5568421))

(declare-fun m!5568423 () Bool)

(assert (=> b!4674927 m!5568423))

(declare-fun m!5568425 () Bool)

(assert (=> b!4674927 m!5568425))

(assert (=> bm!326682 m!5568333))

(declare-fun m!5568427 () Bool)

(assert (=> d!1486292 m!5568427))

(assert (=> d!1486292 m!5568077))

(declare-fun m!5568429 () Bool)

(assert (=> b!4674929 m!5568429))

(assert (=> bm!326680 m!5568405))

(declare-fun m!5568431 () Bool)

(assert (=> b!4674926 m!5568431))

(assert (=> b!4674740 d!1486292))

(declare-fun bs!1079539 () Bool)

(declare-fun d!1486294 () Bool)

(assert (= bs!1079539 (and d!1486294 b!4674922)))

(declare-fun lambda!203410 () Int)

(assert (=> bs!1079539 (not (= lambda!203410 lambda!203404))))

(assert (=> bs!1079539 (not (= lambda!203410 lambda!203403))))

(declare-fun bs!1079540 () Bool)

(assert (= bs!1079540 (and d!1486294 b!4674923)))

(assert (=> bs!1079540 (not (= lambda!203410 lambda!203402))))

(declare-fun bs!1079541 () Bool)

(assert (= bs!1079541 (and d!1486294 b!4674927)))

(assert (=> bs!1079541 (not (= lambda!203410 lambda!203408))))

(declare-fun bs!1079542 () Bool)

(assert (= bs!1079542 (and d!1486294 b!4674928)))

(assert (=> bs!1079542 (not (= lambda!203410 lambda!203406))))

(declare-fun bs!1079543 () Bool)

(assert (= bs!1079543 (and d!1486294 d!1486236)))

(assert (=> bs!1079543 (not (= lambda!203410 lambda!203395))))

(declare-fun bs!1079544 () Bool)

(assert (= bs!1079544 (and d!1486294 d!1486286)))

(assert (=> bs!1079544 (= lambda!203410 lambda!203401)))

(declare-fun bs!1079545 () Bool)

(assert (= bs!1079545 (and d!1486294 d!1486290)))

(assert (=> bs!1079545 (not (= lambda!203410 lambda!203405))))

(declare-fun bs!1079546 () Bool)

(assert (= bs!1079546 (and d!1486294 d!1486292)))

(assert (=> bs!1079546 (not (= lambda!203410 lambda!203409))))

(assert (=> bs!1079541 (not (= lambda!203410 lambda!203407))))

(declare-fun bs!1079547 () Bool)

(assert (= bs!1079547 (and d!1486294 b!4674905)))

(assert (=> bs!1079547 (not (= lambda!203410 lambda!203394))))

(declare-fun bs!1079548 () Bool)

(assert (= bs!1079548 (and d!1486294 b!4674906)))

(assert (=> bs!1079548 (not (= lambda!203410 lambda!203392))))

(assert (=> bs!1079547 (not (= lambda!203410 lambda!203393))))

(assert (=> d!1486294 true))

(assert (=> d!1486294 true))

(assert (=> d!1486294 (= (allKeysSameHash!1574 oldBucket!34 hash!405 hashF!1323) (forall!11165 oldBucket!34 lambda!203410))))

(declare-fun bs!1079549 () Bool)

(assert (= bs!1079549 d!1486294))

(declare-fun m!5568433 () Bool)

(assert (=> bs!1079549 m!5568433))

(assert (=> b!4674741 d!1486294))

(declare-fun d!1486296 () Bool)

(declare-fun res!1968704 () Bool)

(declare-fun e!2917086 () Bool)

(assert (=> d!1486296 (=> res!1968704 e!2917086)))

(assert (=> d!1486296 (= res!1968704 (not ((_ is Cons!52145) newBucket!218)))))

(assert (=> d!1486296 (= (noDuplicateKeys!1748 newBucket!218) e!2917086)))

(declare-fun b!4674935 () Bool)

(declare-fun e!2917087 () Bool)

(assert (=> b!4674935 (= e!2917086 e!2917087)))

(declare-fun res!1968705 () Bool)

(assert (=> b!4674935 (=> (not res!1968705) (not e!2917087))))

(declare-fun containsKey!2887 (List!52269 K!13520) Bool)

(assert (=> b!4674935 (= res!1968705 (not (containsKey!2887 (t!359407 newBucket!218) (_1!29987 (h!58338 newBucket!218)))))))

(declare-fun b!4674936 () Bool)

(assert (=> b!4674936 (= e!2917087 (noDuplicateKeys!1748 (t!359407 newBucket!218)))))

(assert (= (and d!1486296 (not res!1968704)) b!4674935))

(assert (= (and b!4674935 res!1968705) b!4674936))

(declare-fun m!5568435 () Bool)

(assert (=> b!4674935 m!5568435))

(declare-fun m!5568437 () Bool)

(assert (=> b!4674936 m!5568437))

(assert (=> b!4674732 d!1486296))

(declare-fun d!1486298 () Bool)

(declare-fun res!1968706 () Bool)

(declare-fun e!2917088 () Bool)

(assert (=> d!1486298 (=> res!1968706 e!2917088)))

(assert (=> d!1486298 (= res!1968706 (not ((_ is Cons!52145) oldBucket!34)))))

(assert (=> d!1486298 (= (noDuplicateKeys!1748 oldBucket!34) e!2917088)))

(declare-fun b!4674937 () Bool)

(declare-fun e!2917089 () Bool)

(assert (=> b!4674937 (= e!2917088 e!2917089)))

(declare-fun res!1968707 () Bool)

(assert (=> b!4674937 (=> (not res!1968707) (not e!2917089))))

(assert (=> b!4674937 (= res!1968707 (not (containsKey!2887 (t!359407 oldBucket!34) (_1!29987 (h!58338 oldBucket!34)))))))

(declare-fun b!4674938 () Bool)

(assert (=> b!4674938 (= e!2917089 (noDuplicateKeys!1748 (t!359407 oldBucket!34)))))

(assert (= (and d!1486298 (not res!1968706)) b!4674937))

(assert (= (and b!4674937 res!1968707) b!4674938))

(declare-fun m!5568439 () Bool)

(assert (=> b!4674937 m!5568439))

(declare-fun m!5568441 () Bool)

(assert (=> b!4674938 m!5568441))

(assert (=> b!4674743 d!1486298))

(declare-fun bs!1079550 () Bool)

(declare-fun d!1486300 () Bool)

(assert (= bs!1079550 (and d!1486300 d!1486282)))

(declare-fun lambda!203413 () Int)

(assert (=> bs!1079550 (not (= lambda!203413 lambda!203397))))

(declare-fun bs!1079551 () Bool)

(assert (= bs!1079551 (and d!1486300 start!471780)))

(assert (=> bs!1079551 (not (= lambda!203413 lambda!203307))))

(declare-fun bs!1079552 () Bool)

(assert (= bs!1079552 (and d!1486300 d!1486234)))

(assert (=> bs!1079552 (not (= lambda!203413 lambda!203316))))

(declare-fun bs!1079553 () Bool)

(assert (= bs!1079553 (and d!1486300 d!1486276)))

(assert (=> bs!1079553 (not (= lambda!203413 lambda!203396))))

(declare-fun bs!1079554 () Bool)

(assert (= bs!1079554 (and d!1486300 d!1486284)))

(assert (=> bs!1079554 (not (= lambda!203413 lambda!203398))))

(assert (=> d!1486300 true))

(assert (=> d!1486300 (= (allKeysSameHashInMap!1662 lm!2023 hashF!1323) (forall!11163 (toList!5385 lm!2023) lambda!203413))))

(declare-fun bs!1079555 () Bool)

(assert (= bs!1079555 d!1486300))

(declare-fun m!5568443 () Bool)

(assert (=> bs!1079555 m!5568443))

(assert (=> b!4674744 d!1486300))

(declare-fun d!1486302 () Bool)

(declare-fun res!1968712 () Bool)

(declare-fun e!2917094 () Bool)

(assert (=> d!1486302 (=> res!1968712 e!2917094)))

(assert (=> d!1486302 (= res!1968712 ((_ is Nil!52146) (toList!5385 lm!2023)))))

(assert (=> d!1486302 (= (forall!11163 (toList!5385 lm!2023) lambda!203307) e!2917094)))

(declare-fun b!4674945 () Bool)

(declare-fun e!2917095 () Bool)

(assert (=> b!4674945 (= e!2917094 e!2917095)))

(declare-fun res!1968713 () Bool)

(assert (=> b!4674945 (=> (not res!1968713) (not e!2917095))))

(declare-fun dynLambda!21661 (Int tuple2!53388) Bool)

(assert (=> b!4674945 (= res!1968713 (dynLambda!21661 lambda!203307 (h!58339 (toList!5385 lm!2023))))))

(declare-fun b!4674946 () Bool)

(assert (=> b!4674946 (= e!2917095 (forall!11163 (t!359408 (toList!5385 lm!2023)) lambda!203307))))

(assert (= (and d!1486302 (not res!1968712)) b!4674945))

(assert (= (and b!4674945 res!1968713) b!4674946))

(declare-fun b_lambda!176525 () Bool)

(assert (=> (not b_lambda!176525) (not b!4674945)))

(declare-fun m!5568445 () Bool)

(assert (=> b!4674945 m!5568445))

(assert (=> b!4674946 m!5568081))

(assert (=> start!471780 d!1486302))

(declare-fun d!1486304 () Bool)

(declare-fun isStrictlySorted!598 (List!52270) Bool)

(assert (=> d!1486304 (= (inv!67394 lm!2023) (isStrictlySorted!598 (toList!5385 lm!2023)))))

(declare-fun bs!1079556 () Bool)

(assert (= bs!1079556 d!1486304))

(declare-fun m!5568447 () Bool)

(assert (=> bs!1079556 m!5568447))

(assert (=> start!471780 d!1486304))

(declare-fun d!1486306 () Bool)

(declare-fun lt!1835206 () List!52269)

(assert (=> d!1486306 (not (containsKey!2887 lt!1835206 key!4653))))

(declare-fun e!2917101 () List!52269)

(assert (=> d!1486306 (= lt!1835206 e!2917101)))

(declare-fun c!800071 () Bool)

(assert (=> d!1486306 (= c!800071 (and ((_ is Cons!52145) oldBucket!34) (= (_1!29987 (h!58338 oldBucket!34)) key!4653)))))

(assert (=> d!1486306 (noDuplicateKeys!1748 oldBucket!34)))

(assert (=> d!1486306 (= (removePairForKey!1343 oldBucket!34 key!4653) lt!1835206)))

(declare-fun b!4674956 () Bool)

(declare-fun e!2917100 () List!52269)

(assert (=> b!4674956 (= e!2917101 e!2917100)))

(declare-fun c!800070 () Bool)

(assert (=> b!4674956 (= c!800070 ((_ is Cons!52145) oldBucket!34))))

(declare-fun b!4674955 () Bool)

(assert (=> b!4674955 (= e!2917101 (t!359407 oldBucket!34))))

(declare-fun b!4674957 () Bool)

(assert (=> b!4674957 (= e!2917100 (Cons!52145 (h!58338 oldBucket!34) (removePairForKey!1343 (t!359407 oldBucket!34) key!4653)))))

(declare-fun b!4674958 () Bool)

(assert (=> b!4674958 (= e!2917100 Nil!52145)))

(assert (= (and d!1486306 c!800071) b!4674955))

(assert (= (and d!1486306 (not c!800071)) b!4674956))

(assert (= (and b!4674956 c!800070) b!4674957))

(assert (= (and b!4674956 (not c!800070)) b!4674958))

(declare-fun m!5568449 () Bool)

(assert (=> d!1486306 m!5568449))

(assert (=> d!1486306 m!5568097))

(declare-fun m!5568451 () Bool)

(assert (=> b!4674957 m!5568451))

(assert (=> b!4674745 d!1486306))

(declare-fun d!1486308 () Bool)

(declare-fun res!1968714 () Bool)

(declare-fun e!2917102 () Bool)

(assert (=> d!1486308 (=> res!1968714 e!2917102)))

(assert (=> d!1486308 (= res!1968714 ((_ is Nil!52146) (t!359408 (toList!5385 lm!2023))))))

(assert (=> d!1486308 (= (forall!11163 (t!359408 (toList!5385 lm!2023)) lambda!203307) e!2917102)))

(declare-fun b!4674959 () Bool)

(declare-fun e!2917103 () Bool)

(assert (=> b!4674959 (= e!2917102 e!2917103)))

(declare-fun res!1968715 () Bool)

(assert (=> b!4674959 (=> (not res!1968715) (not e!2917103))))

(assert (=> b!4674959 (= res!1968715 (dynLambda!21661 lambda!203307 (h!58339 (t!359408 (toList!5385 lm!2023)))))))

(declare-fun b!4674960 () Bool)

(assert (=> b!4674960 (= e!2917103 (forall!11163 (t!359408 (t!359408 (toList!5385 lm!2023))) lambda!203307))))

(assert (= (and d!1486308 (not res!1968714)) b!4674959))

(assert (= (and b!4674959 res!1968715) b!4674960))

(declare-fun b_lambda!176527 () Bool)

(assert (=> (not b_lambda!176527) (not b!4674959)))

(declare-fun m!5568453 () Bool)

(assert (=> b!4674959 m!5568453))

(declare-fun m!5568455 () Bool)

(assert (=> b!4674960 m!5568455))

(assert (=> b!4674735 d!1486308))

(declare-fun d!1486310 () Bool)

(declare-fun hash!3910 (Hashable!6117 K!13520) (_ BitVec 64))

(assert (=> d!1486310 (= (hash!3908 hashF!1323 key!4653) (hash!3910 hashF!1323 key!4653))))

(declare-fun bs!1079557 () Bool)

(assert (= bs!1079557 d!1486310))

(declare-fun m!5568457 () Bool)

(assert (=> bs!1079557 m!5568457))

(assert (=> b!4674746 d!1486310))

(declare-fun b!4674965 () Bool)

(declare-fun tp!1344456 () Bool)

(declare-fun e!2917106 () Bool)

(assert (=> b!4674965 (= e!2917106 (and tp_is_empty!30285 tp_is_empty!30287 tp!1344456))))

(assert (=> b!4674742 (= tp!1344442 e!2917106)))

(assert (= (and b!4674742 ((_ is Cons!52145) (t!359407 oldBucket!34))) b!4674965))

(declare-fun b!4674966 () Bool)

(declare-fun e!2917107 () Bool)

(declare-fun tp!1344457 () Bool)

(assert (=> b!4674966 (= e!2917107 (and tp_is_empty!30285 tp_is_empty!30287 tp!1344457))))

(assert (=> b!4674733 (= tp!1344443 e!2917107)))

(assert (= (and b!4674733 ((_ is Cons!52145) (t!359407 newBucket!218))) b!4674966))

(declare-fun b!4674971 () Bool)

(declare-fun e!2917110 () Bool)

(declare-fun tp!1344462 () Bool)

(declare-fun tp!1344463 () Bool)

(assert (=> b!4674971 (= e!2917110 (and tp!1344462 tp!1344463))))

(assert (=> b!4674749 (= tp!1344441 e!2917110)))

(assert (= (and b!4674749 ((_ is Cons!52146) (toList!5385 lm!2023))) b!4674971))

(declare-fun b_lambda!176529 () Bool)

(assert (= b_lambda!176527 (or start!471780 b_lambda!176529)))

(declare-fun bs!1079558 () Bool)

(declare-fun d!1486312 () Bool)

(assert (= bs!1079558 (and d!1486312 start!471780)))

(assert (=> bs!1079558 (= (dynLambda!21661 lambda!203307 (h!58339 (t!359408 (toList!5385 lm!2023)))) (noDuplicateKeys!1748 (_2!29988 (h!58339 (t!359408 (toList!5385 lm!2023))))))))

(declare-fun m!5568459 () Bool)

(assert (=> bs!1079558 m!5568459))

(assert (=> b!4674959 d!1486312))

(declare-fun b_lambda!176531 () Bool)

(assert (= b_lambda!176525 (or start!471780 b_lambda!176531)))

(declare-fun bs!1079559 () Bool)

(declare-fun d!1486314 () Bool)

(assert (= bs!1079559 (and d!1486314 start!471780)))

(assert (=> bs!1079559 (= (dynLambda!21661 lambda!203307 (h!58339 (toList!5385 lm!2023))) (noDuplicateKeys!1748 (_2!29988 (h!58339 (toList!5385 lm!2023)))))))

(assert (=> bs!1079559 m!5568337))

(assert (=> b!4674945 d!1486314))

(check-sat (not bm!326676) (not d!1486306) (not b!4674966) (not b!4674946) (not d!1486224) (not b!4674911) (not b!4674778) (not b!4674915) (not d!1486286) (not d!1486234) (not d!1486278) (not b!4674937) (not b!4674904) (not b!4674935) (not bm!326649) (not b!4674777) (not b!4674957) (not d!1486292) (not bm!326674) (not b!4674921) (not b!4674908) (not b!4674930) (not bm!326678) (not b!4674776) (not d!1486300) (not b!4674907) (not b!4674779) (not b!4674929) (not d!1486304) (not bm!326675) (not d!1486282) (not d!1486276) (not b!4674936) (not b!4674927) (not b!4674905) (not b!4674922) (not b!4674924) (not bm!326680) (not bs!1079559) (not d!1486290) (not b!4674925) (not b!4674965) (not b!4674913) (not b!4674926) (not d!1486236) (not b!4674775) (not bs!1079558) (not b!4674960) (not b!4674938) (not d!1486310) (not b!4674774) (not bm!326682) (not d!1486294) (not bm!326677) (not b!4674780) tp_is_empty!30287 (not b!4674787) (not b_lambda!176529) (not b_lambda!176531) (not d!1486284) (not b!4674971) (not bm!326681) (not bm!326679) tp_is_empty!30285)
(check-sat)
