; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!443220 () Bool)

(assert start!443220)

(declare-fun b!4494181 () Bool)

(declare-datatypes ((Unit!91160 0))(
  ( (Unit!91161) )
))
(declare-fun e!2799384 () Unit!91160)

(declare-fun Unit!91162 () Unit!91160)

(assert (=> b!4494181 (= e!2799384 Unit!91162)))

(declare-fun b!4494182 () Bool)

(declare-fun e!2799390 () Bool)

(declare-fun tp!1337354 () Bool)

(assert (=> b!4494182 (= e!2799390 tp!1337354)))

(declare-fun b!4494183 () Bool)

(declare-fun res!1867936 () Bool)

(declare-fun e!2799393 () Bool)

(assert (=> b!4494183 (=> res!1867936 e!2799393)))

(declare-datatypes ((K!11935 0))(
  ( (K!11936 (val!17819 Int)) )
))
(declare-datatypes ((V!12181 0))(
  ( (V!12182 (val!17820 Int)) )
))
(declare-datatypes ((tuple2!50906 0))(
  ( (tuple2!50907 (_1!28747 K!11935) (_2!28747 V!12181)) )
))
(declare-datatypes ((List!50646 0))(
  ( (Nil!50522) (Cons!50522 (h!56335 tuple2!50906) (t!357604 List!50646)) )
))
(declare-datatypes ((tuple2!50908 0))(
  ( (tuple2!50909 (_1!28748 (_ BitVec 64)) (_2!28748 List!50646)) )
))
(declare-datatypes ((List!50647 0))(
  ( (Nil!50523) (Cons!50523 (h!56336 tuple2!50908) (t!357605 List!50647)) )
))
(declare-datatypes ((ListLongMap!2875 0))(
  ( (ListLongMap!2876 (toList!4243 List!50647)) )
))
(declare-fun lm!1477 () ListLongMap!2875)

(declare-fun lt!1676945 () tuple2!50908)

(declare-fun contains!13179 (List!50647 tuple2!50908) Bool)

(assert (=> b!4494183 (= res!1867936 (not (contains!13179 (t!357605 (toList!4243 lm!1477)) lt!1676945)))))

(declare-fun b!4494184 () Bool)

(declare-fun e!2799391 () Bool)

(declare-fun e!2799387 () Bool)

(assert (=> b!4494184 (= e!2799391 e!2799387)))

(declare-fun res!1867927 () Bool)

(assert (=> b!4494184 (=> res!1867927 e!2799387)))

(declare-datatypes ((ListMap!3505 0))(
  ( (ListMap!3506 (toList!4244 List!50646)) )
))
(declare-fun lt!1676947 () ListMap!3505)

(declare-fun lt!1676952 () ListMap!3505)

(declare-fun eq!575 (ListMap!3505 ListMap!3505) Bool)

(assert (=> b!4494184 (= res!1867927 (not (eq!575 lt!1676947 lt!1676952)))))

(declare-fun lt!1676946 () ListLongMap!2875)

(declare-fun extractMap!1174 (List!50647) ListMap!3505)

(declare-fun +!1458 (ListLongMap!2875 tuple2!50908) ListLongMap!2875)

(declare-fun head!9330 (ListLongMap!2875) tuple2!50908)

(assert (=> b!4494184 (= lt!1676947 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))))

(declare-fun lt!1676948 () ListMap!3505)

(declare-fun key!3287 () K!11935)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!50646)

(declare-fun -!344 (ListMap!3505 K!11935) ListMap!3505)

(assert (=> b!4494184 (eq!575 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))) (-!344 lt!1676948 key!3287))))

(declare-datatypes ((Hashable!5513 0))(
  ( (HashableExt!5512 (__x!31216 Int)) )
))
(declare-fun hashF!1107 () Hashable!5513)

(declare-fun lt!1676940 () Unit!91160)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!103 (ListLongMap!2875 (_ BitVec 64) List!50646 K!11935 Hashable!5513) Unit!91160)

(assert (=> b!4494184 (= lt!1676940 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!103 lt!1676946 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4494185 () Bool)

(declare-fun res!1867928 () Bool)

(assert (=> b!4494185 (=> res!1867928 e!2799393)))

(declare-fun lt!1676944 () List!50646)

(declare-fun apply!11855 (ListLongMap!2875 (_ BitVec 64)) List!50646)

(assert (=> b!4494185 (= res!1867928 (not (= (apply!11855 lt!1676946 hash!344) lt!1676944)))))

(declare-fun b!4494186 () Bool)

(declare-fun res!1867931 () Bool)

(declare-fun e!2799389 () Bool)

(assert (=> b!4494186 (=> (not res!1867931) (not e!2799389))))

(declare-fun allKeysSameHashInMap!1225 (ListLongMap!2875 Hashable!5513) Bool)

(assert (=> b!4494186 (= res!1867931 (allKeysSameHashInMap!1225 lm!1477 hashF!1107))))

(declare-fun b!4494187 () Bool)

(declare-fun res!1867930 () Bool)

(declare-fun e!2799382 () Bool)

(assert (=> b!4494187 (=> res!1867930 e!2799382)))

(get-info :version)

(assert (=> b!4494187 (= res!1867930 (or ((_ is Nil!50523) (toList!4243 lm!1477)) (= (_1!28748 (h!56336 (toList!4243 lm!1477))) hash!344)))))

(declare-fun b!4494188 () Bool)

(declare-fun Unit!91163 () Unit!91160)

(assert (=> b!4494188 (= e!2799384 Unit!91163)))

(declare-fun lt!1676953 () Unit!91160)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!106 (ListLongMap!2875 K!11935 Hashable!5513) Unit!91160)

(assert (=> b!4494188 (= lt!1676953 (lemmaNotInItsHashBucketThenNotInMap!106 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4494188 false))

(declare-fun b!4494189 () Bool)

(declare-fun e!2799383 () Bool)

(declare-fun e!2799392 () Bool)

(assert (=> b!4494189 (= e!2799383 e!2799392)))

(declare-fun res!1867942 () Bool)

(assert (=> b!4494189 (=> res!1867942 e!2799392)))

(declare-fun containsKeyBiggerList!98 (List!50647 K!11935) Bool)

(assert (=> b!4494189 (= res!1867942 (not (containsKeyBiggerList!98 (t!357605 (toList!4243 lm!1477)) key!3287)))))

(assert (=> b!4494189 (containsKeyBiggerList!98 (toList!4243 lt!1676946) key!3287)))

(declare-fun lt!1676950 () Unit!91160)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!34 (ListLongMap!2875 K!11935 Hashable!5513) Unit!91160)

(assert (=> b!4494189 (= lt!1676950 (lemmaInLongMapThenContainsKeyBiggerList!34 lt!1676946 key!3287 hashF!1107))))

(declare-fun res!1867939 () Bool)

(assert (=> start!443220 (=> (not res!1867939) (not e!2799389))))

(declare-fun lambda!167781 () Int)

(declare-fun forall!10155 (List!50647 Int) Bool)

(assert (=> start!443220 (= res!1867939 (forall!10155 (toList!4243 lm!1477) lambda!167781))))

(assert (=> start!443220 e!2799389))

(assert (=> start!443220 true))

(declare-fun inv!66119 (ListLongMap!2875) Bool)

(assert (=> start!443220 (and (inv!66119 lm!1477) e!2799390)))

(declare-fun tp_is_empty!27749 () Bool)

(assert (=> start!443220 tp_is_empty!27749))

(declare-fun e!2799386 () Bool)

(assert (=> start!443220 e!2799386))

(declare-fun b!4494190 () Bool)

(assert (=> b!4494190 (= e!2799392 e!2799391)))

(declare-fun res!1867934 () Bool)

(assert (=> b!4494190 (=> res!1867934 e!2799391)))

(declare-fun contains!13180 (ListMap!3505 K!11935) Bool)

(assert (=> b!4494190 (= res!1867934 (not (contains!13180 (extractMap!1174 (t!357605 (toList!4243 lm!1477))) key!3287)))))

(assert (=> b!4494190 (contains!13180 lt!1676948 key!3287)))

(assert (=> b!4494190 (= lt!1676948 (extractMap!1174 (toList!4243 lt!1676946)))))

(declare-fun lt!1676951 () Unit!91160)

(declare-fun lemmaListContainsThenExtractedMapContains!88 (ListLongMap!2875 K!11935 Hashable!5513) Unit!91160)

(assert (=> b!4494190 (= lt!1676951 (lemmaListContainsThenExtractedMapContains!88 lt!1676946 key!3287 hashF!1107))))

(declare-fun b!4494191 () Bool)

(assert (=> b!4494191 (= e!2799382 e!2799393)))

(declare-fun res!1867938 () Bool)

(assert (=> b!4494191 (=> res!1867938 e!2799393)))

(declare-fun contains!13181 (ListLongMap!2875 (_ BitVec 64)) Bool)

(assert (=> b!4494191 (= res!1867938 (not (contains!13181 lt!1676946 hash!344)))))

(declare-fun tail!7652 (ListLongMap!2875) ListLongMap!2875)

(assert (=> b!4494191 (= lt!1676946 (tail!7652 lm!1477))))

(declare-fun b!4494192 () Bool)

(declare-fun isEmpty!28571 (ListLongMap!2875) Bool)

(assert (=> b!4494192 (= e!2799387 (not (isEmpty!28571 lm!1477)))))

(declare-fun b!4494193 () Bool)

(declare-fun res!1867940 () Bool)

(assert (=> b!4494193 (=> res!1867940 e!2799382)))

(declare-fun noDuplicateKeys!1118 (List!50646) Bool)

(assert (=> b!4494193 (= res!1867940 (not (noDuplicateKeys!1118 newBucket!178)))))

(declare-fun b!4494194 () Bool)

(declare-fun res!1867941 () Bool)

(assert (=> b!4494194 (=> res!1867941 e!2799387)))

(assert (=> b!4494194 (= res!1867941 (not (eq!575 lt!1676952 lt!1676947)))))

(declare-fun tp!1337355 () Bool)

(declare-fun b!4494195 () Bool)

(declare-fun tp_is_empty!27751 () Bool)

(assert (=> b!4494195 (= e!2799386 (and tp_is_empty!27749 tp_is_empty!27751 tp!1337355))))

(declare-fun b!4494196 () Bool)

(declare-fun res!1867933 () Bool)

(declare-fun e!2799388 () Bool)

(assert (=> b!4494196 (=> (not res!1867933) (not e!2799388))))

(declare-fun allKeysSameHash!972 (List!50646 (_ BitVec 64) Hashable!5513) Bool)

(assert (=> b!4494196 (= res!1867933 (allKeysSameHash!972 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4494197 () Bool)

(assert (=> b!4494197 (= e!2799393 e!2799383)))

(declare-fun res!1867929 () Bool)

(assert (=> b!4494197 (=> res!1867929 e!2799383)))

(declare-fun lt!1676954 () Bool)

(assert (=> b!4494197 (= res!1867929 lt!1676954)))

(declare-fun lt!1676943 () Unit!91160)

(assert (=> b!4494197 (= lt!1676943 e!2799384)))

(declare-fun c!765657 () Bool)

(assert (=> b!4494197 (= c!765657 lt!1676954)))

(declare-fun containsKey!1658 (List!50646 K!11935) Bool)

(assert (=> b!4494197 (= lt!1676954 (not (containsKey!1658 lt!1676944 key!3287)))))

(declare-fun b!4494198 () Bool)

(declare-fun e!2799385 () Bool)

(assert (=> b!4494198 (= e!2799385 e!2799388)))

(declare-fun res!1867932 () Bool)

(assert (=> b!4494198 (=> (not res!1867932) (not e!2799388))))

(declare-fun lt!1676942 () (_ BitVec 64))

(assert (=> b!4494198 (= res!1867932 (= lt!1676942 hash!344))))

(declare-fun hash!2659 (Hashable!5513 K!11935) (_ BitVec 64))

(assert (=> b!4494198 (= lt!1676942 (hash!2659 hashF!1107 key!3287))))

(declare-fun b!4494199 () Bool)

(assert (=> b!4494199 (= e!2799389 e!2799385)))

(declare-fun res!1867935 () Bool)

(assert (=> b!4494199 (=> (not res!1867935) (not e!2799385))))

(assert (=> b!4494199 (= res!1867935 (contains!13180 lt!1676952 key!3287))))

(assert (=> b!4494199 (= lt!1676952 (extractMap!1174 (toList!4243 lm!1477)))))

(declare-fun b!4494200 () Bool)

(assert (=> b!4494200 (= e!2799388 (not e!2799382))))

(declare-fun res!1867937 () Bool)

(assert (=> b!4494200 (=> res!1867937 e!2799382)))

(declare-fun removePairForKey!745 (List!50646 K!11935) List!50646)

(assert (=> b!4494200 (= res!1867937 (not (= newBucket!178 (removePairForKey!745 lt!1676944 key!3287))))))

(declare-fun lt!1676949 () Unit!91160)

(declare-fun forallContained!2409 (List!50647 Int tuple2!50908) Unit!91160)

(assert (=> b!4494200 (= lt!1676949 (forallContained!2409 (toList!4243 lm!1477) lambda!167781 lt!1676945))))

(assert (=> b!4494200 (contains!13179 (toList!4243 lm!1477) lt!1676945)))

(assert (=> b!4494200 (= lt!1676945 (tuple2!50909 hash!344 lt!1676944))))

(declare-fun lt!1676941 () Unit!91160)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!630 (List!50647 (_ BitVec 64) List!50646) Unit!91160)

(assert (=> b!4494200 (= lt!1676941 (lemmaGetValueByKeyImpliesContainsTuple!630 (toList!4243 lm!1477) hash!344 lt!1676944))))

(assert (=> b!4494200 (= lt!1676944 (apply!11855 lm!1477 hash!344))))

(assert (=> b!4494200 (contains!13181 lm!1477 lt!1676942)))

(declare-fun lt!1676939 () Unit!91160)

(declare-fun lemmaInGenMapThenLongMapContainsHash!192 (ListLongMap!2875 K!11935 Hashable!5513) Unit!91160)

(assert (=> b!4494200 (= lt!1676939 (lemmaInGenMapThenLongMapContainsHash!192 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!443220 res!1867939) b!4494186))

(assert (= (and b!4494186 res!1867931) b!4494199))

(assert (= (and b!4494199 res!1867935) b!4494198))

(assert (= (and b!4494198 res!1867932) b!4494196))

(assert (= (and b!4494196 res!1867933) b!4494200))

(assert (= (and b!4494200 (not res!1867937)) b!4494193))

(assert (= (and b!4494193 (not res!1867940)) b!4494187))

(assert (= (and b!4494187 (not res!1867930)) b!4494191))

(assert (= (and b!4494191 (not res!1867938)) b!4494185))

(assert (= (and b!4494185 (not res!1867928)) b!4494183))

(assert (= (and b!4494183 (not res!1867936)) b!4494197))

(assert (= (and b!4494197 c!765657) b!4494188))

(assert (= (and b!4494197 (not c!765657)) b!4494181))

(assert (= (and b!4494197 (not res!1867929)) b!4494189))

(assert (= (and b!4494189 (not res!1867942)) b!4494190))

(assert (= (and b!4494190 (not res!1867934)) b!4494184))

(assert (= (and b!4494184 (not res!1867927)) b!4494194))

(assert (= (and b!4494194 (not res!1867941)) b!4494192))

(assert (= start!443220 b!4494182))

(assert (= (and start!443220 ((_ is Cons!50522) newBucket!178)) b!4494195))

(declare-fun m!5220703 () Bool)

(assert (=> b!4494193 m!5220703))

(declare-fun m!5220705 () Bool)

(assert (=> b!4494198 m!5220705))

(declare-fun m!5220707 () Bool)

(assert (=> b!4494194 m!5220707))

(declare-fun m!5220709 () Bool)

(assert (=> b!4494192 m!5220709))

(declare-fun m!5220711 () Bool)

(assert (=> b!4494185 m!5220711))

(declare-fun m!5220713 () Bool)

(assert (=> b!4494196 m!5220713))

(declare-fun m!5220715 () Bool)

(assert (=> b!4494189 m!5220715))

(declare-fun m!5220717 () Bool)

(assert (=> b!4494189 m!5220717))

(declare-fun m!5220719 () Bool)

(assert (=> b!4494189 m!5220719))

(declare-fun m!5220721 () Bool)

(assert (=> b!4494183 m!5220721))

(declare-fun m!5220723 () Bool)

(assert (=> b!4494197 m!5220723))

(declare-fun m!5220725 () Bool)

(assert (=> start!443220 m!5220725))

(declare-fun m!5220727 () Bool)

(assert (=> start!443220 m!5220727))

(declare-fun m!5220729 () Bool)

(assert (=> b!4494188 m!5220729))

(declare-fun m!5220731 () Bool)

(assert (=> b!4494190 m!5220731))

(declare-fun m!5220733 () Bool)

(assert (=> b!4494190 m!5220733))

(declare-fun m!5220735 () Bool)

(assert (=> b!4494190 m!5220735))

(declare-fun m!5220737 () Bool)

(assert (=> b!4494190 m!5220737))

(assert (=> b!4494190 m!5220735))

(declare-fun m!5220739 () Bool)

(assert (=> b!4494190 m!5220739))

(declare-fun m!5220741 () Bool)

(assert (=> b!4494191 m!5220741))

(declare-fun m!5220743 () Bool)

(assert (=> b!4494191 m!5220743))

(declare-fun m!5220745 () Bool)

(assert (=> b!4494199 m!5220745))

(declare-fun m!5220747 () Bool)

(assert (=> b!4494199 m!5220747))

(declare-fun m!5220749 () Bool)

(assert (=> b!4494186 m!5220749))

(declare-fun m!5220751 () Bool)

(assert (=> b!4494184 m!5220751))

(declare-fun m!5220753 () Bool)

(assert (=> b!4494184 m!5220753))

(declare-fun m!5220755 () Bool)

(assert (=> b!4494184 m!5220755))

(declare-fun m!5220757 () Bool)

(assert (=> b!4494184 m!5220757))

(declare-fun m!5220759 () Bool)

(assert (=> b!4494184 m!5220759))

(assert (=> b!4494184 m!5220755))

(declare-fun m!5220761 () Bool)

(assert (=> b!4494184 m!5220761))

(declare-fun m!5220763 () Bool)

(assert (=> b!4494184 m!5220763))

(declare-fun m!5220765 () Bool)

(assert (=> b!4494184 m!5220765))

(assert (=> b!4494184 m!5220751))

(assert (=> b!4494184 m!5220757))

(declare-fun m!5220767 () Bool)

(assert (=> b!4494184 m!5220767))

(declare-fun m!5220769 () Bool)

(assert (=> b!4494200 m!5220769))

(declare-fun m!5220771 () Bool)

(assert (=> b!4494200 m!5220771))

(declare-fun m!5220773 () Bool)

(assert (=> b!4494200 m!5220773))

(declare-fun m!5220775 () Bool)

(assert (=> b!4494200 m!5220775))

(declare-fun m!5220777 () Bool)

(assert (=> b!4494200 m!5220777))

(declare-fun m!5220779 () Bool)

(assert (=> b!4494200 m!5220779))

(declare-fun m!5220781 () Bool)

(assert (=> b!4494200 m!5220781))

(check-sat (not b!4494196) (not b!4494195) (not b!4494189) (not b!4494183) (not b!4494200) (not b!4494199) (not b!4494190) (not b!4494184) (not b!4494185) (not b!4494188) (not b!4494186) (not b!4494182) (not start!443220) tp_is_empty!27751 tp_is_empty!27749 (not b!4494197) (not b!4494198) (not b!4494193) (not b!4494191) (not b!4494192) (not b!4494194))
(check-sat)
(get-model)

(declare-fun d!1377855 () Bool)

(declare-datatypes ((Option!11032 0))(
  ( (None!11031) (Some!11031 (v!44497 List!50646)) )
))
(declare-fun get!16501 (Option!11032) List!50646)

(declare-fun getValueByKey!1012 (List!50647 (_ BitVec 64)) Option!11032)

(assert (=> d!1377855 (= (apply!11855 lm!1477 hash!344) (get!16501 (getValueByKey!1012 (toList!4243 lm!1477) hash!344)))))

(declare-fun bs!832539 () Bool)

(assert (= bs!832539 d!1377855))

(declare-fun m!5220783 () Bool)

(assert (=> bs!832539 m!5220783))

(assert (=> bs!832539 m!5220783))

(declare-fun m!5220785 () Bool)

(assert (=> bs!832539 m!5220785))

(assert (=> b!4494200 d!1377855))

(declare-fun d!1377857 () Bool)

(assert (=> d!1377857 (contains!13179 (toList!4243 lm!1477) (tuple2!50909 hash!344 lt!1676944))))

(declare-fun lt!1676957 () Unit!91160)

(declare-fun choose!29018 (List!50647 (_ BitVec 64) List!50646) Unit!91160)

(assert (=> d!1377857 (= lt!1676957 (choose!29018 (toList!4243 lm!1477) hash!344 lt!1676944))))

(declare-fun e!2799396 () Bool)

(assert (=> d!1377857 e!2799396))

(declare-fun res!1867945 () Bool)

(assert (=> d!1377857 (=> (not res!1867945) (not e!2799396))))

(declare-fun isStrictlySorted!391 (List!50647) Bool)

(assert (=> d!1377857 (= res!1867945 (isStrictlySorted!391 (toList!4243 lm!1477)))))

(assert (=> d!1377857 (= (lemmaGetValueByKeyImpliesContainsTuple!630 (toList!4243 lm!1477) hash!344 lt!1676944) lt!1676957)))

(declare-fun b!4494203 () Bool)

(assert (=> b!4494203 (= e!2799396 (= (getValueByKey!1012 (toList!4243 lm!1477) hash!344) (Some!11031 lt!1676944)))))

(assert (= (and d!1377857 res!1867945) b!4494203))

(declare-fun m!5220787 () Bool)

(assert (=> d!1377857 m!5220787))

(declare-fun m!5220789 () Bool)

(assert (=> d!1377857 m!5220789))

(declare-fun m!5220791 () Bool)

(assert (=> d!1377857 m!5220791))

(assert (=> b!4494203 m!5220783))

(assert (=> b!4494200 d!1377857))

(declare-fun b!4494222 () Bool)

(declare-fun e!2799406 () List!50646)

(assert (=> b!4494222 (= e!2799406 (t!357604 lt!1676944))))

(declare-fun b!4494224 () Bool)

(declare-fun e!2799405 () List!50646)

(assert (=> b!4494224 (= e!2799405 (Cons!50522 (h!56335 lt!1676944) (removePairForKey!745 (t!357604 lt!1676944) key!3287)))))

(declare-fun d!1377861 () Bool)

(declare-fun lt!1676968 () List!50646)

(assert (=> d!1377861 (not (containsKey!1658 lt!1676968 key!3287))))

(assert (=> d!1377861 (= lt!1676968 e!2799406)))

(declare-fun c!765664 () Bool)

(assert (=> d!1377861 (= c!765664 (and ((_ is Cons!50522) lt!1676944) (= (_1!28747 (h!56335 lt!1676944)) key!3287)))))

(assert (=> d!1377861 (noDuplicateKeys!1118 lt!1676944)))

(assert (=> d!1377861 (= (removePairForKey!745 lt!1676944 key!3287) lt!1676968)))

(declare-fun b!4494223 () Bool)

(assert (=> b!4494223 (= e!2799406 e!2799405)))

(declare-fun c!765665 () Bool)

(assert (=> b!4494223 (= c!765665 ((_ is Cons!50522) lt!1676944))))

(declare-fun b!4494225 () Bool)

(assert (=> b!4494225 (= e!2799405 Nil!50522)))

(assert (= (and d!1377861 c!765664) b!4494222))

(assert (= (and d!1377861 (not c!765664)) b!4494223))

(assert (= (and b!4494223 c!765665) b!4494224))

(assert (= (and b!4494223 (not c!765665)) b!4494225))

(declare-fun m!5220797 () Bool)

(assert (=> b!4494224 m!5220797))

(declare-fun m!5220799 () Bool)

(assert (=> d!1377861 m!5220799))

(declare-fun m!5220801 () Bool)

(assert (=> d!1377861 m!5220801))

(assert (=> b!4494200 d!1377861))

(declare-fun d!1377867 () Bool)

(declare-fun dynLambda!21093 (Int tuple2!50908) Bool)

(assert (=> d!1377867 (dynLambda!21093 lambda!167781 lt!1676945)))

(declare-fun lt!1676975 () Unit!91160)

(declare-fun choose!29019 (List!50647 Int tuple2!50908) Unit!91160)

(assert (=> d!1377867 (= lt!1676975 (choose!29019 (toList!4243 lm!1477) lambda!167781 lt!1676945))))

(declare-fun e!2799417 () Bool)

(assert (=> d!1377867 e!2799417))

(declare-fun res!1867957 () Bool)

(assert (=> d!1377867 (=> (not res!1867957) (not e!2799417))))

(assert (=> d!1377867 (= res!1867957 (forall!10155 (toList!4243 lm!1477) lambda!167781))))

(assert (=> d!1377867 (= (forallContained!2409 (toList!4243 lm!1477) lambda!167781 lt!1676945) lt!1676975)))

(declare-fun b!4494237 () Bool)

(assert (=> b!4494237 (= e!2799417 (contains!13179 (toList!4243 lm!1477) lt!1676945))))

(assert (= (and d!1377867 res!1867957) b!4494237))

(declare-fun b_lambda!151793 () Bool)

(assert (=> (not b_lambda!151793) (not d!1377867)))

(declare-fun m!5220821 () Bool)

(assert (=> d!1377867 m!5220821))

(declare-fun m!5220823 () Bool)

(assert (=> d!1377867 m!5220823))

(assert (=> d!1377867 m!5220725))

(assert (=> b!4494237 m!5220771))

(assert (=> b!4494200 d!1377867))

(declare-fun d!1377879 () Bool)

(declare-fun e!2799435 () Bool)

(assert (=> d!1377879 e!2799435))

(declare-fun res!1867966 () Bool)

(assert (=> d!1377879 (=> res!1867966 e!2799435)))

(declare-fun lt!1677002 () Bool)

(assert (=> d!1377879 (= res!1867966 (not lt!1677002))))

(declare-fun lt!1677000 () Bool)

(assert (=> d!1377879 (= lt!1677002 lt!1677000)))

(declare-fun lt!1677003 () Unit!91160)

(declare-fun e!2799434 () Unit!91160)

(assert (=> d!1377879 (= lt!1677003 e!2799434)))

(declare-fun c!765675 () Bool)

(assert (=> d!1377879 (= c!765675 lt!1677000)))

(declare-fun containsKey!1661 (List!50647 (_ BitVec 64)) Bool)

(assert (=> d!1377879 (= lt!1677000 (containsKey!1661 (toList!4243 lm!1477) lt!1676942))))

(assert (=> d!1377879 (= (contains!13181 lm!1477 lt!1676942) lt!1677002)))

(declare-fun b!4494264 () Bool)

(declare-fun lt!1677001 () Unit!91160)

(assert (=> b!4494264 (= e!2799434 lt!1677001)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!916 (List!50647 (_ BitVec 64)) Unit!91160)

(assert (=> b!4494264 (= lt!1677001 (lemmaContainsKeyImpliesGetValueByKeyDefined!916 (toList!4243 lm!1477) lt!1676942))))

(declare-fun isDefined!8319 (Option!11032) Bool)

(assert (=> b!4494264 (isDefined!8319 (getValueByKey!1012 (toList!4243 lm!1477) lt!1676942))))

(declare-fun b!4494265 () Bool)

(declare-fun Unit!91171 () Unit!91160)

(assert (=> b!4494265 (= e!2799434 Unit!91171)))

(declare-fun b!4494266 () Bool)

(assert (=> b!4494266 (= e!2799435 (isDefined!8319 (getValueByKey!1012 (toList!4243 lm!1477) lt!1676942)))))

(assert (= (and d!1377879 c!765675) b!4494264))

(assert (= (and d!1377879 (not c!765675)) b!4494265))

(assert (= (and d!1377879 (not res!1867966)) b!4494266))

(declare-fun m!5220825 () Bool)

(assert (=> d!1377879 m!5220825))

(declare-fun m!5220827 () Bool)

(assert (=> b!4494264 m!5220827))

(declare-fun m!5220829 () Bool)

(assert (=> b!4494264 m!5220829))

(assert (=> b!4494264 m!5220829))

(declare-fun m!5220831 () Bool)

(assert (=> b!4494264 m!5220831))

(assert (=> b!4494266 m!5220829))

(assert (=> b!4494266 m!5220829))

(assert (=> b!4494266 m!5220831))

(assert (=> b!4494200 d!1377879))

(declare-fun bs!832546 () Bool)

(declare-fun d!1377881 () Bool)

(assert (= bs!832546 (and d!1377881 start!443220)))

(declare-fun lambda!167790 () Int)

(assert (=> bs!832546 (= lambda!167790 lambda!167781)))

(assert (=> d!1377881 (contains!13181 lm!1477 (hash!2659 hashF!1107 key!3287))))

(declare-fun lt!1677014 () Unit!91160)

(declare-fun choose!29021 (ListLongMap!2875 K!11935 Hashable!5513) Unit!91160)

(assert (=> d!1377881 (= lt!1677014 (choose!29021 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1377881 (forall!10155 (toList!4243 lm!1477) lambda!167790)))

(assert (=> d!1377881 (= (lemmaInGenMapThenLongMapContainsHash!192 lm!1477 key!3287 hashF!1107) lt!1677014)))

(declare-fun bs!832547 () Bool)

(assert (= bs!832547 d!1377881))

(assert (=> bs!832547 m!5220705))

(assert (=> bs!832547 m!5220705))

(declare-fun m!5220853 () Bool)

(assert (=> bs!832547 m!5220853))

(declare-fun m!5220855 () Bool)

(assert (=> bs!832547 m!5220855))

(declare-fun m!5220857 () Bool)

(assert (=> bs!832547 m!5220857))

(assert (=> b!4494200 d!1377881))

(declare-fun d!1377885 () Bool)

(declare-fun lt!1677021 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8236 (List!50647) (InoxSet tuple2!50908))

(assert (=> d!1377885 (= lt!1677021 (select (content!8236 (toList!4243 lm!1477)) lt!1676945))))

(declare-fun e!2799450 () Bool)

(assert (=> d!1377885 (= lt!1677021 e!2799450)))

(declare-fun res!1867975 () Bool)

(assert (=> d!1377885 (=> (not res!1867975) (not e!2799450))))

(assert (=> d!1377885 (= res!1867975 ((_ is Cons!50523) (toList!4243 lm!1477)))))

(assert (=> d!1377885 (= (contains!13179 (toList!4243 lm!1477) lt!1676945) lt!1677021)))

(declare-fun b!4494288 () Bool)

(declare-fun e!2799451 () Bool)

(assert (=> b!4494288 (= e!2799450 e!2799451)))

(declare-fun res!1867974 () Bool)

(assert (=> b!4494288 (=> res!1867974 e!2799451)))

(assert (=> b!4494288 (= res!1867974 (= (h!56336 (toList!4243 lm!1477)) lt!1676945))))

(declare-fun b!4494289 () Bool)

(assert (=> b!4494289 (= e!2799451 (contains!13179 (t!357605 (toList!4243 lm!1477)) lt!1676945))))

(assert (= (and d!1377885 res!1867975) b!4494288))

(assert (= (and b!4494288 (not res!1867974)) b!4494289))

(declare-fun m!5220875 () Bool)

(assert (=> d!1377885 m!5220875))

(declare-fun m!5220877 () Bool)

(assert (=> d!1377885 m!5220877))

(assert (=> b!4494289 m!5220721))

(assert (=> b!4494200 d!1377885))

(declare-fun b!4494345 () Bool)

(declare-fun e!2799493 () Bool)

(declare-datatypes ((List!50649 0))(
  ( (Nil!50525) (Cons!50525 (h!56340 K!11935) (t!357607 List!50649)) )
))
(declare-fun contains!13183 (List!50649 K!11935) Bool)

(declare-fun keys!17510 (ListMap!3505) List!50649)

(assert (=> b!4494345 (= e!2799493 (not (contains!13183 (keys!17510 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287)))))

(declare-fun b!4494346 () Bool)

(declare-fun e!2799496 () List!50649)

(declare-fun getKeysList!425 (List!50646) List!50649)

(assert (=> b!4494346 (= e!2799496 (getKeysList!425 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))

(declare-fun b!4494347 () Bool)

(declare-fun e!2799498 () Bool)

(assert (=> b!4494347 (= e!2799498 (contains!13183 (keys!17510 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(declare-fun b!4494348 () Bool)

(declare-fun e!2799495 () Unit!91160)

(declare-fun e!2799497 () Unit!91160)

(assert (=> b!4494348 (= e!2799495 e!2799497)))

(declare-fun c!765698 () Bool)

(declare-fun call!312717 () Bool)

(assert (=> b!4494348 (= c!765698 call!312717)))

(declare-fun bm!312712 () Bool)

(assert (=> bm!312712 (= call!312717 (contains!13183 e!2799496 key!3287))))

(declare-fun c!765699 () Bool)

(declare-fun c!765697 () Bool)

(assert (=> bm!312712 (= c!765699 c!765697)))

(declare-fun b!4494350 () Bool)

(declare-fun Unit!91172 () Unit!91160)

(assert (=> b!4494350 (= e!2799497 Unit!91172)))

(declare-fun b!4494351 () Bool)

(declare-fun e!2799494 () Bool)

(assert (=> b!4494351 (= e!2799494 e!2799498)))

(declare-fun res!1868004 () Bool)

(assert (=> b!4494351 (=> (not res!1868004) (not e!2799498))))

(declare-datatypes ((Option!11033 0))(
  ( (None!11032) (Some!11032 (v!44498 V!12181)) )
))
(declare-fun isDefined!8320 (Option!11033) Bool)

(declare-fun getValueByKey!1013 (List!50646 K!11935) Option!11033)

(assert (=> b!4494351 (= res!1868004 (isDefined!8320 (getValueByKey!1013 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287)))))

(declare-fun b!4494352 () Bool)

(assert (=> b!4494352 (= e!2799496 (keys!17510 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))

(declare-fun b!4494353 () Bool)

(declare-fun lt!1677069 () Unit!91160)

(assert (=> b!4494353 (= e!2799495 lt!1677069)))

(declare-fun lt!1677070 () Unit!91160)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!917 (List!50646 K!11935) Unit!91160)

(assert (=> b!4494353 (= lt!1677070 (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(assert (=> b!4494353 (isDefined!8320 (getValueByKey!1013 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(declare-fun lt!1677065 () Unit!91160)

(assert (=> b!4494353 (= lt!1677065 lt!1677070)))

(declare-fun lemmaInListThenGetKeysListContains!421 (List!50646 K!11935) Unit!91160)

(assert (=> b!4494353 (= lt!1677069 (lemmaInListThenGetKeysListContains!421 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(assert (=> b!4494353 call!312717))

(declare-fun d!1377891 () Bool)

(assert (=> d!1377891 e!2799494))

(declare-fun res!1868003 () Bool)

(assert (=> d!1377891 (=> res!1868003 e!2799494)))

(assert (=> d!1377891 (= res!1868003 e!2799493)))

(declare-fun res!1868005 () Bool)

(assert (=> d!1377891 (=> (not res!1868005) (not e!2799493))))

(declare-fun lt!1677072 () Bool)

(assert (=> d!1377891 (= res!1868005 (not lt!1677072))))

(declare-fun lt!1677071 () Bool)

(assert (=> d!1377891 (= lt!1677072 lt!1677071)))

(declare-fun lt!1677068 () Unit!91160)

(assert (=> d!1377891 (= lt!1677068 e!2799495)))

(assert (=> d!1377891 (= c!765697 lt!1677071)))

(declare-fun containsKey!1662 (List!50646 K!11935) Bool)

(assert (=> d!1377891 (= lt!1677071 (containsKey!1662 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(assert (=> d!1377891 (= (contains!13180 (extractMap!1174 (t!357605 (toList!4243 lm!1477))) key!3287) lt!1677072)))

(declare-fun b!4494349 () Bool)

(assert (=> b!4494349 false))

(declare-fun lt!1677067 () Unit!91160)

(declare-fun lt!1677066 () Unit!91160)

(assert (=> b!4494349 (= lt!1677067 lt!1677066)))

(assert (=> b!4494349 (containsKey!1662 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!424 (List!50646 K!11935) Unit!91160)

(assert (=> b!4494349 (= lt!1677066 (lemmaInGetKeysListThenContainsKey!424 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(declare-fun Unit!91173 () Unit!91160)

(assert (=> b!4494349 (= e!2799497 Unit!91173)))

(assert (= (and d!1377891 c!765697) b!4494353))

(assert (= (and d!1377891 (not c!765697)) b!4494348))

(assert (= (and b!4494348 c!765698) b!4494349))

(assert (= (and b!4494348 (not c!765698)) b!4494350))

(assert (= (or b!4494353 b!4494348) bm!312712))

(assert (= (and bm!312712 c!765699) b!4494346))

(assert (= (and bm!312712 (not c!765699)) b!4494352))

(assert (= (and d!1377891 res!1868005) b!4494345))

(assert (= (and d!1377891 (not res!1868003)) b!4494351))

(assert (= (and b!4494351 res!1868004) b!4494347))

(assert (=> b!4494345 m!5220735))

(declare-fun m!5220977 () Bool)

(assert (=> b!4494345 m!5220977))

(assert (=> b!4494345 m!5220977))

(declare-fun m!5220979 () Bool)

(assert (=> b!4494345 m!5220979))

(declare-fun m!5220981 () Bool)

(assert (=> bm!312712 m!5220981))

(declare-fun m!5220983 () Bool)

(assert (=> d!1377891 m!5220983))

(assert (=> b!4494349 m!5220983))

(declare-fun m!5220985 () Bool)

(assert (=> b!4494349 m!5220985))

(declare-fun m!5220987 () Bool)

(assert (=> b!4494351 m!5220987))

(assert (=> b!4494351 m!5220987))

(declare-fun m!5220989 () Bool)

(assert (=> b!4494351 m!5220989))

(assert (=> b!4494352 m!5220735))

(assert (=> b!4494352 m!5220977))

(declare-fun m!5220991 () Bool)

(assert (=> b!4494346 m!5220991))

(declare-fun m!5220993 () Bool)

(assert (=> b!4494353 m!5220993))

(assert (=> b!4494353 m!5220987))

(assert (=> b!4494353 m!5220987))

(assert (=> b!4494353 m!5220989))

(declare-fun m!5220995 () Bool)

(assert (=> b!4494353 m!5220995))

(assert (=> b!4494347 m!5220735))

(assert (=> b!4494347 m!5220977))

(assert (=> b!4494347 m!5220977))

(assert (=> b!4494347 m!5220979))

(assert (=> b!4494190 d!1377891))

(declare-fun bs!832611 () Bool)

(declare-fun d!1377921 () Bool)

(assert (= bs!832611 (and d!1377921 start!443220)))

(declare-fun lambda!167812 () Int)

(assert (=> bs!832611 (= lambda!167812 lambda!167781)))

(declare-fun bs!832612 () Bool)

(assert (= bs!832612 (and d!1377921 d!1377881)))

(assert (=> bs!832612 (= lambda!167812 lambda!167790)))

(declare-fun lt!1677098 () ListMap!3505)

(declare-fun invariantList!977 (List!50646) Bool)

(assert (=> d!1377921 (invariantList!977 (toList!4244 lt!1677098))))

(declare-fun e!2799518 () ListMap!3505)

(assert (=> d!1377921 (= lt!1677098 e!2799518)))

(declare-fun c!765703 () Bool)

(assert (=> d!1377921 (= c!765703 ((_ is Cons!50523) (t!357605 (toList!4243 lm!1477))))))

(assert (=> d!1377921 (forall!10155 (t!357605 (toList!4243 lm!1477)) lambda!167812)))

(assert (=> d!1377921 (= (extractMap!1174 (t!357605 (toList!4243 lm!1477))) lt!1677098)))

(declare-fun b!4494380 () Bool)

(declare-fun addToMapMapFromBucket!645 (List!50646 ListMap!3505) ListMap!3505)

(assert (=> b!4494380 (= e!2799518 (addToMapMapFromBucket!645 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))))))

(declare-fun b!4494381 () Bool)

(assert (=> b!4494381 (= e!2799518 (ListMap!3506 Nil!50522))))

(assert (= (and d!1377921 c!765703) b!4494380))

(assert (= (and d!1377921 (not c!765703)) b!4494381))

(declare-fun m!5221047 () Bool)

(assert (=> d!1377921 m!5221047))

(declare-fun m!5221049 () Bool)

(assert (=> d!1377921 m!5221049))

(declare-fun m!5221051 () Bool)

(assert (=> b!4494380 m!5221051))

(assert (=> b!4494380 m!5221051))

(declare-fun m!5221053 () Bool)

(assert (=> b!4494380 m!5221053))

(assert (=> b!4494190 d!1377921))

(declare-fun bs!832613 () Bool)

(declare-fun d!1377937 () Bool)

(assert (= bs!832613 (and d!1377937 start!443220)))

(declare-fun lambda!167813 () Int)

(assert (=> bs!832613 (= lambda!167813 lambda!167781)))

(declare-fun bs!832614 () Bool)

(assert (= bs!832614 (and d!1377937 d!1377881)))

(assert (=> bs!832614 (= lambda!167813 lambda!167790)))

(declare-fun bs!832615 () Bool)

(assert (= bs!832615 (and d!1377937 d!1377921)))

(assert (=> bs!832615 (= lambda!167813 lambda!167812)))

(declare-fun lt!1677099 () ListMap!3505)

(assert (=> d!1377937 (invariantList!977 (toList!4244 lt!1677099))))

(declare-fun e!2799519 () ListMap!3505)

(assert (=> d!1377937 (= lt!1677099 e!2799519)))

(declare-fun c!765704 () Bool)

(assert (=> d!1377937 (= c!765704 ((_ is Cons!50523) (toList!4243 lt!1676946)))))

(assert (=> d!1377937 (forall!10155 (toList!4243 lt!1676946) lambda!167813)))

(assert (=> d!1377937 (= (extractMap!1174 (toList!4243 lt!1676946)) lt!1677099)))

(declare-fun b!4494382 () Bool)

(assert (=> b!4494382 (= e!2799519 (addToMapMapFromBucket!645 (_2!28748 (h!56336 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))))))

(declare-fun b!4494383 () Bool)

(assert (=> b!4494383 (= e!2799519 (ListMap!3506 Nil!50522))))

(assert (= (and d!1377937 c!765704) b!4494382))

(assert (= (and d!1377937 (not c!765704)) b!4494383))

(declare-fun m!5221055 () Bool)

(assert (=> d!1377937 m!5221055))

(declare-fun m!5221057 () Bool)

(assert (=> d!1377937 m!5221057))

(declare-fun m!5221059 () Bool)

(assert (=> b!4494382 m!5221059))

(assert (=> b!4494382 m!5221059))

(declare-fun m!5221061 () Bool)

(assert (=> b!4494382 m!5221061))

(assert (=> b!4494190 d!1377937))

(declare-fun b!4494392 () Bool)

(declare-fun e!2799524 () Bool)

(assert (=> b!4494392 (= e!2799524 (not (contains!13183 (keys!17510 lt!1676948) key!3287)))))

(declare-fun b!4494393 () Bool)

(declare-fun e!2799527 () List!50649)

(assert (=> b!4494393 (= e!2799527 (getKeysList!425 (toList!4244 lt!1676948)))))

(declare-fun b!4494394 () Bool)

(declare-fun e!2799529 () Bool)

(assert (=> b!4494394 (= e!2799529 (contains!13183 (keys!17510 lt!1676948) key!3287))))

(declare-fun b!4494395 () Bool)

(declare-fun e!2799526 () Unit!91160)

(declare-fun e!2799528 () Unit!91160)

(assert (=> b!4494395 (= e!2799526 e!2799528)))

(declare-fun c!765710 () Bool)

(declare-fun call!312718 () Bool)

(assert (=> b!4494395 (= c!765710 call!312718)))

(declare-fun bm!312713 () Bool)

(assert (=> bm!312713 (= call!312718 (contains!13183 e!2799527 key!3287))))

(declare-fun c!765711 () Bool)

(declare-fun c!765709 () Bool)

(assert (=> bm!312713 (= c!765711 c!765709)))

(declare-fun b!4494397 () Bool)

(declare-fun Unit!91174 () Unit!91160)

(assert (=> b!4494397 (= e!2799528 Unit!91174)))

(declare-fun b!4494398 () Bool)

(declare-fun e!2799525 () Bool)

(assert (=> b!4494398 (= e!2799525 e!2799529)))

(declare-fun res!1868027 () Bool)

(assert (=> b!4494398 (=> (not res!1868027) (not e!2799529))))

(assert (=> b!4494398 (= res!1868027 (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287)))))

(declare-fun b!4494399 () Bool)

(assert (=> b!4494399 (= e!2799527 (keys!17510 lt!1676948))))

(declare-fun b!4494400 () Bool)

(declare-fun lt!1677106 () Unit!91160)

(assert (=> b!4494400 (= e!2799526 lt!1677106)))

(declare-fun lt!1677107 () Unit!91160)

(assert (=> b!4494400 (= lt!1677107 (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 lt!1676948) key!3287))))

(assert (=> b!4494400 (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287))))

(declare-fun lt!1677102 () Unit!91160)

(assert (=> b!4494400 (= lt!1677102 lt!1677107)))

(assert (=> b!4494400 (= lt!1677106 (lemmaInListThenGetKeysListContains!421 (toList!4244 lt!1676948) key!3287))))

(assert (=> b!4494400 call!312718))

(declare-fun d!1377939 () Bool)

(assert (=> d!1377939 e!2799525))

(declare-fun res!1868026 () Bool)

(assert (=> d!1377939 (=> res!1868026 e!2799525)))

(assert (=> d!1377939 (= res!1868026 e!2799524)))

(declare-fun res!1868028 () Bool)

(assert (=> d!1377939 (=> (not res!1868028) (not e!2799524))))

(declare-fun lt!1677109 () Bool)

(assert (=> d!1377939 (= res!1868028 (not lt!1677109))))

(declare-fun lt!1677108 () Bool)

(assert (=> d!1377939 (= lt!1677109 lt!1677108)))

(declare-fun lt!1677105 () Unit!91160)

(assert (=> d!1377939 (= lt!1677105 e!2799526)))

(assert (=> d!1377939 (= c!765709 lt!1677108)))

(assert (=> d!1377939 (= lt!1677108 (containsKey!1662 (toList!4244 lt!1676948) key!3287))))

(assert (=> d!1377939 (= (contains!13180 lt!1676948 key!3287) lt!1677109)))

(declare-fun b!4494396 () Bool)

(assert (=> b!4494396 false))

(declare-fun lt!1677104 () Unit!91160)

(declare-fun lt!1677103 () Unit!91160)

(assert (=> b!4494396 (= lt!1677104 lt!1677103)))

(assert (=> b!4494396 (containsKey!1662 (toList!4244 lt!1676948) key!3287)))

(assert (=> b!4494396 (= lt!1677103 (lemmaInGetKeysListThenContainsKey!424 (toList!4244 lt!1676948) key!3287))))

(declare-fun Unit!91175 () Unit!91160)

(assert (=> b!4494396 (= e!2799528 Unit!91175)))

(assert (= (and d!1377939 c!765709) b!4494400))

(assert (= (and d!1377939 (not c!765709)) b!4494395))

(assert (= (and b!4494395 c!765710) b!4494396))

(assert (= (and b!4494395 (not c!765710)) b!4494397))

(assert (= (or b!4494400 b!4494395) bm!312713))

(assert (= (and bm!312713 c!765711) b!4494393))

(assert (= (and bm!312713 (not c!765711)) b!4494399))

(assert (= (and d!1377939 res!1868028) b!4494392))

(assert (= (and d!1377939 (not res!1868026)) b!4494398))

(assert (= (and b!4494398 res!1868027) b!4494394))

(declare-fun m!5221069 () Bool)

(assert (=> b!4494392 m!5221069))

(assert (=> b!4494392 m!5221069))

(declare-fun m!5221071 () Bool)

(assert (=> b!4494392 m!5221071))

(declare-fun m!5221073 () Bool)

(assert (=> bm!312713 m!5221073))

(declare-fun m!5221075 () Bool)

(assert (=> d!1377939 m!5221075))

(assert (=> b!4494396 m!5221075))

(declare-fun m!5221077 () Bool)

(assert (=> b!4494396 m!5221077))

(declare-fun m!5221079 () Bool)

(assert (=> b!4494398 m!5221079))

(assert (=> b!4494398 m!5221079))

(declare-fun m!5221081 () Bool)

(assert (=> b!4494398 m!5221081))

(assert (=> b!4494399 m!5221069))

(declare-fun m!5221083 () Bool)

(assert (=> b!4494393 m!5221083))

(declare-fun m!5221085 () Bool)

(assert (=> b!4494400 m!5221085))

(assert (=> b!4494400 m!5221079))

(assert (=> b!4494400 m!5221079))

(assert (=> b!4494400 m!5221081))

(declare-fun m!5221087 () Bool)

(assert (=> b!4494400 m!5221087))

(assert (=> b!4494394 m!5221069))

(assert (=> b!4494394 m!5221069))

(assert (=> b!4494394 m!5221071))

(assert (=> b!4494190 d!1377939))

(declare-fun bs!832632 () Bool)

(declare-fun d!1377943 () Bool)

(assert (= bs!832632 (and d!1377943 start!443220)))

(declare-fun lambda!167819 () Int)

(assert (=> bs!832632 (= lambda!167819 lambda!167781)))

(declare-fun bs!832633 () Bool)

(assert (= bs!832633 (and d!1377943 d!1377881)))

(assert (=> bs!832633 (= lambda!167819 lambda!167790)))

(declare-fun bs!832634 () Bool)

(assert (= bs!832634 (and d!1377943 d!1377921)))

(assert (=> bs!832634 (= lambda!167819 lambda!167812)))

(declare-fun bs!832635 () Bool)

(assert (= bs!832635 (and d!1377943 d!1377937)))

(assert (=> bs!832635 (= lambda!167819 lambda!167813)))

(assert (=> d!1377943 (contains!13180 (extractMap!1174 (toList!4243 lt!1676946)) key!3287)))

(declare-fun lt!1677130 () Unit!91160)

(declare-fun choose!29025 (ListLongMap!2875 K!11935 Hashable!5513) Unit!91160)

(assert (=> d!1377943 (= lt!1677130 (choose!29025 lt!1676946 key!3287 hashF!1107))))

(assert (=> d!1377943 (forall!10155 (toList!4243 lt!1676946) lambda!167819)))

(assert (=> d!1377943 (= (lemmaListContainsThenExtractedMapContains!88 lt!1676946 key!3287 hashF!1107) lt!1677130)))

(declare-fun bs!832636 () Bool)

(assert (= bs!832636 d!1377943))

(assert (=> bs!832636 m!5220733))

(assert (=> bs!832636 m!5220733))

(declare-fun m!5221131 () Bool)

(assert (=> bs!832636 m!5221131))

(declare-fun m!5221133 () Bool)

(assert (=> bs!832636 m!5221133))

(declare-fun m!5221135 () Bool)

(assert (=> bs!832636 m!5221135))

(assert (=> b!4494190 d!1377943))

(declare-fun d!1377963 () Bool)

(declare-fun e!2799555 () Bool)

(assert (=> d!1377963 e!2799555))

(declare-fun res!1868044 () Bool)

(assert (=> d!1377963 (=> res!1868044 e!2799555)))

(declare-fun lt!1677133 () Bool)

(assert (=> d!1377963 (= res!1868044 (not lt!1677133))))

(declare-fun lt!1677131 () Bool)

(assert (=> d!1377963 (= lt!1677133 lt!1677131)))

(declare-fun lt!1677134 () Unit!91160)

(declare-fun e!2799554 () Unit!91160)

(assert (=> d!1377963 (= lt!1677134 e!2799554)))

(declare-fun c!765715 () Bool)

(assert (=> d!1377963 (= c!765715 lt!1677131)))

(assert (=> d!1377963 (= lt!1677131 (containsKey!1661 (toList!4243 lt!1676946) hash!344))))

(assert (=> d!1377963 (= (contains!13181 lt!1676946 hash!344) lt!1677133)))

(declare-fun b!4494432 () Bool)

(declare-fun lt!1677132 () Unit!91160)

(assert (=> b!4494432 (= e!2799554 lt!1677132)))

(assert (=> b!4494432 (= lt!1677132 (lemmaContainsKeyImpliesGetValueByKeyDefined!916 (toList!4243 lt!1676946) hash!344))))

(assert (=> b!4494432 (isDefined!8319 (getValueByKey!1012 (toList!4243 lt!1676946) hash!344))))

(declare-fun b!4494433 () Bool)

(declare-fun Unit!91176 () Unit!91160)

(assert (=> b!4494433 (= e!2799554 Unit!91176)))

(declare-fun b!4494434 () Bool)

(assert (=> b!4494434 (= e!2799555 (isDefined!8319 (getValueByKey!1012 (toList!4243 lt!1676946) hash!344)))))

(assert (= (and d!1377963 c!765715) b!4494432))

(assert (= (and d!1377963 (not c!765715)) b!4494433))

(assert (= (and d!1377963 (not res!1868044)) b!4494434))

(declare-fun m!5221137 () Bool)

(assert (=> d!1377963 m!5221137))

(declare-fun m!5221139 () Bool)

(assert (=> b!4494432 m!5221139))

(declare-fun m!5221141 () Bool)

(assert (=> b!4494432 m!5221141))

(assert (=> b!4494432 m!5221141))

(declare-fun m!5221143 () Bool)

(assert (=> b!4494432 m!5221143))

(assert (=> b!4494434 m!5221141))

(assert (=> b!4494434 m!5221141))

(assert (=> b!4494434 m!5221143))

(assert (=> b!4494191 d!1377963))

(declare-fun d!1377965 () Bool)

(declare-fun tail!7654 (List!50647) List!50647)

(assert (=> d!1377965 (= (tail!7652 lm!1477) (ListLongMap!2876 (tail!7654 (toList!4243 lm!1477))))))

(declare-fun bs!832637 () Bool)

(assert (= bs!832637 d!1377965))

(declare-fun m!5221145 () Bool)

(assert (=> bs!832637 m!5221145))

(assert (=> b!4494191 d!1377965))

(declare-fun d!1377967 () Bool)

(declare-fun hash!2663 (Hashable!5513 K!11935) (_ BitVec 64))

(assert (=> d!1377967 (= (hash!2659 hashF!1107 key!3287) (hash!2663 hashF!1107 key!3287))))

(declare-fun bs!832638 () Bool)

(assert (= bs!832638 d!1377967))

(declare-fun m!5221147 () Bool)

(assert (=> bs!832638 m!5221147))

(assert (=> b!4494198 d!1377967))

(declare-fun bs!832639 () Bool)

(declare-fun d!1377969 () Bool)

(assert (= bs!832639 (and d!1377969 d!1377937)))

(declare-fun lambda!167822 () Int)

(assert (=> bs!832639 (= lambda!167822 lambda!167813)))

(declare-fun bs!832640 () Bool)

(assert (= bs!832640 (and d!1377969 d!1377943)))

(assert (=> bs!832640 (= lambda!167822 lambda!167819)))

(declare-fun bs!832641 () Bool)

(assert (= bs!832641 (and d!1377969 d!1377921)))

(assert (=> bs!832641 (= lambda!167822 lambda!167812)))

(declare-fun bs!832642 () Bool)

(assert (= bs!832642 (and d!1377969 start!443220)))

(assert (=> bs!832642 (= lambda!167822 lambda!167781)))

(declare-fun bs!832643 () Bool)

(assert (= bs!832643 (and d!1377969 d!1377881)))

(assert (=> bs!832643 (= lambda!167822 lambda!167790)))

(assert (=> d!1377969 (not (contains!13180 (extractMap!1174 (toList!4243 lm!1477)) key!3287))))

(declare-fun lt!1677137 () Unit!91160)

(declare-fun choose!29028 (ListLongMap!2875 K!11935 Hashable!5513) Unit!91160)

(assert (=> d!1377969 (= lt!1677137 (choose!29028 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1377969 (forall!10155 (toList!4243 lm!1477) lambda!167822)))

(assert (=> d!1377969 (= (lemmaNotInItsHashBucketThenNotInMap!106 lm!1477 key!3287 hashF!1107) lt!1677137)))

(declare-fun bs!832644 () Bool)

(assert (= bs!832644 d!1377969))

(assert (=> bs!832644 m!5220747))

(assert (=> bs!832644 m!5220747))

(declare-fun m!5221149 () Bool)

(assert (=> bs!832644 m!5221149))

(declare-fun m!5221151 () Bool)

(assert (=> bs!832644 m!5221151))

(declare-fun m!5221153 () Bool)

(assert (=> bs!832644 m!5221153))

(assert (=> b!4494188 d!1377969))

(declare-fun b!4494435 () Bool)

(declare-fun e!2799556 () Bool)

(assert (=> b!4494435 (= e!2799556 (not (contains!13183 (keys!17510 lt!1676952) key!3287)))))

(declare-fun b!4494436 () Bool)

(declare-fun e!2799559 () List!50649)

(assert (=> b!4494436 (= e!2799559 (getKeysList!425 (toList!4244 lt!1676952)))))

(declare-fun b!4494437 () Bool)

(declare-fun e!2799561 () Bool)

(assert (=> b!4494437 (= e!2799561 (contains!13183 (keys!17510 lt!1676952) key!3287))))

(declare-fun b!4494438 () Bool)

(declare-fun e!2799558 () Unit!91160)

(declare-fun e!2799560 () Unit!91160)

(assert (=> b!4494438 (= e!2799558 e!2799560)))

(declare-fun c!765717 () Bool)

(declare-fun call!312719 () Bool)

(assert (=> b!4494438 (= c!765717 call!312719)))

(declare-fun bm!312714 () Bool)

(assert (=> bm!312714 (= call!312719 (contains!13183 e!2799559 key!3287))))

(declare-fun c!765718 () Bool)

(declare-fun c!765716 () Bool)

(assert (=> bm!312714 (= c!765718 c!765716)))

(declare-fun b!4494440 () Bool)

(declare-fun Unit!91177 () Unit!91160)

(assert (=> b!4494440 (= e!2799560 Unit!91177)))

(declare-fun b!4494441 () Bool)

(declare-fun e!2799557 () Bool)

(assert (=> b!4494441 (= e!2799557 e!2799561)))

(declare-fun res!1868046 () Bool)

(assert (=> b!4494441 (=> (not res!1868046) (not e!2799561))))

(assert (=> b!4494441 (= res!1868046 (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1676952) key!3287)))))

(declare-fun b!4494442 () Bool)

(assert (=> b!4494442 (= e!2799559 (keys!17510 lt!1676952))))

(declare-fun b!4494443 () Bool)

(declare-fun lt!1677142 () Unit!91160)

(assert (=> b!4494443 (= e!2799558 lt!1677142)))

(declare-fun lt!1677143 () Unit!91160)

(assert (=> b!4494443 (= lt!1677143 (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 lt!1676952) key!3287))))

(assert (=> b!4494443 (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1676952) key!3287))))

(declare-fun lt!1677138 () Unit!91160)

(assert (=> b!4494443 (= lt!1677138 lt!1677143)))

(assert (=> b!4494443 (= lt!1677142 (lemmaInListThenGetKeysListContains!421 (toList!4244 lt!1676952) key!3287))))

(assert (=> b!4494443 call!312719))

(declare-fun d!1377971 () Bool)

(assert (=> d!1377971 e!2799557))

(declare-fun res!1868045 () Bool)

(assert (=> d!1377971 (=> res!1868045 e!2799557)))

(assert (=> d!1377971 (= res!1868045 e!2799556)))

(declare-fun res!1868047 () Bool)

(assert (=> d!1377971 (=> (not res!1868047) (not e!2799556))))

(declare-fun lt!1677145 () Bool)

(assert (=> d!1377971 (= res!1868047 (not lt!1677145))))

(declare-fun lt!1677144 () Bool)

(assert (=> d!1377971 (= lt!1677145 lt!1677144)))

(declare-fun lt!1677141 () Unit!91160)

(assert (=> d!1377971 (= lt!1677141 e!2799558)))

(assert (=> d!1377971 (= c!765716 lt!1677144)))

(assert (=> d!1377971 (= lt!1677144 (containsKey!1662 (toList!4244 lt!1676952) key!3287))))

(assert (=> d!1377971 (= (contains!13180 lt!1676952 key!3287) lt!1677145)))

(declare-fun b!4494439 () Bool)

(assert (=> b!4494439 false))

(declare-fun lt!1677140 () Unit!91160)

(declare-fun lt!1677139 () Unit!91160)

(assert (=> b!4494439 (= lt!1677140 lt!1677139)))

(assert (=> b!4494439 (containsKey!1662 (toList!4244 lt!1676952) key!3287)))

(assert (=> b!4494439 (= lt!1677139 (lemmaInGetKeysListThenContainsKey!424 (toList!4244 lt!1676952) key!3287))))

(declare-fun Unit!91179 () Unit!91160)

(assert (=> b!4494439 (= e!2799560 Unit!91179)))

(assert (= (and d!1377971 c!765716) b!4494443))

(assert (= (and d!1377971 (not c!765716)) b!4494438))

(assert (= (and b!4494438 c!765717) b!4494439))

(assert (= (and b!4494438 (not c!765717)) b!4494440))

(assert (= (or b!4494443 b!4494438) bm!312714))

(assert (= (and bm!312714 c!765718) b!4494436))

(assert (= (and bm!312714 (not c!765718)) b!4494442))

(assert (= (and d!1377971 res!1868047) b!4494435))

(assert (= (and d!1377971 (not res!1868045)) b!4494441))

(assert (= (and b!4494441 res!1868046) b!4494437))

(declare-fun m!5221155 () Bool)

(assert (=> b!4494435 m!5221155))

(assert (=> b!4494435 m!5221155))

(declare-fun m!5221157 () Bool)

(assert (=> b!4494435 m!5221157))

(declare-fun m!5221159 () Bool)

(assert (=> bm!312714 m!5221159))

(declare-fun m!5221161 () Bool)

(assert (=> d!1377971 m!5221161))

(assert (=> b!4494439 m!5221161))

(declare-fun m!5221163 () Bool)

(assert (=> b!4494439 m!5221163))

(declare-fun m!5221165 () Bool)

(assert (=> b!4494441 m!5221165))

(assert (=> b!4494441 m!5221165))

(declare-fun m!5221167 () Bool)

(assert (=> b!4494441 m!5221167))

(assert (=> b!4494442 m!5221155))

(declare-fun m!5221169 () Bool)

(assert (=> b!4494436 m!5221169))

(declare-fun m!5221171 () Bool)

(assert (=> b!4494443 m!5221171))

(assert (=> b!4494443 m!5221165))

(assert (=> b!4494443 m!5221165))

(assert (=> b!4494443 m!5221167))

(declare-fun m!5221173 () Bool)

(assert (=> b!4494443 m!5221173))

(assert (=> b!4494437 m!5221155))

(assert (=> b!4494437 m!5221155))

(assert (=> b!4494437 m!5221157))

(assert (=> b!4494199 d!1377971))

(declare-fun bs!832645 () Bool)

(declare-fun d!1377973 () Bool)

(assert (= bs!832645 (and d!1377973 d!1377969)))

(declare-fun lambda!167823 () Int)

(assert (=> bs!832645 (= lambda!167823 lambda!167822)))

(declare-fun bs!832646 () Bool)

(assert (= bs!832646 (and d!1377973 d!1377937)))

(assert (=> bs!832646 (= lambda!167823 lambda!167813)))

(declare-fun bs!832647 () Bool)

(assert (= bs!832647 (and d!1377973 d!1377943)))

(assert (=> bs!832647 (= lambda!167823 lambda!167819)))

(declare-fun bs!832648 () Bool)

(assert (= bs!832648 (and d!1377973 d!1377921)))

(assert (=> bs!832648 (= lambda!167823 lambda!167812)))

(declare-fun bs!832649 () Bool)

(assert (= bs!832649 (and d!1377973 start!443220)))

(assert (=> bs!832649 (= lambda!167823 lambda!167781)))

(declare-fun bs!832650 () Bool)

(assert (= bs!832650 (and d!1377973 d!1377881)))

(assert (=> bs!832650 (= lambda!167823 lambda!167790)))

(declare-fun lt!1677146 () ListMap!3505)

(assert (=> d!1377973 (invariantList!977 (toList!4244 lt!1677146))))

(declare-fun e!2799562 () ListMap!3505)

(assert (=> d!1377973 (= lt!1677146 e!2799562)))

(declare-fun c!765719 () Bool)

(assert (=> d!1377973 (= c!765719 ((_ is Cons!50523) (toList!4243 lm!1477)))))

(assert (=> d!1377973 (forall!10155 (toList!4243 lm!1477) lambda!167823)))

(assert (=> d!1377973 (= (extractMap!1174 (toList!4243 lm!1477)) lt!1677146)))

(declare-fun b!4494444 () Bool)

(assert (=> b!4494444 (= e!2799562 (addToMapMapFromBucket!645 (_2!28748 (h!56336 (toList!4243 lm!1477))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))

(declare-fun b!4494445 () Bool)

(assert (=> b!4494445 (= e!2799562 (ListMap!3506 Nil!50522))))

(assert (= (and d!1377973 c!765719) b!4494444))

(assert (= (and d!1377973 (not c!765719)) b!4494445))

(declare-fun m!5221175 () Bool)

(assert (=> d!1377973 m!5221175))

(declare-fun m!5221177 () Bool)

(assert (=> d!1377973 m!5221177))

(assert (=> b!4494444 m!5220735))

(assert (=> b!4494444 m!5220735))

(declare-fun m!5221179 () Bool)

(assert (=> b!4494444 m!5221179))

(assert (=> b!4494199 d!1377973))

(declare-fun d!1377975 () Bool)

(declare-fun res!1868054 () Bool)

(declare-fun e!2799569 () Bool)

(assert (=> d!1377975 (=> res!1868054 e!2799569)))

(declare-fun e!2799570 () Bool)

(assert (=> d!1377975 (= res!1868054 e!2799570)))

(declare-fun res!1868056 () Bool)

(assert (=> d!1377975 (=> (not res!1868056) (not e!2799570))))

(assert (=> d!1377975 (= res!1868056 ((_ is Cons!50523) (t!357605 (toList!4243 lm!1477))))))

(assert (=> d!1377975 (= (containsKeyBiggerList!98 (t!357605 (toList!4243 lm!1477)) key!3287) e!2799569)))

(declare-fun b!4494452 () Bool)

(assert (=> b!4494452 (= e!2799570 (containsKey!1658 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(declare-fun b!4494453 () Bool)

(declare-fun e!2799571 () Bool)

(assert (=> b!4494453 (= e!2799569 e!2799571)))

(declare-fun res!1868055 () Bool)

(assert (=> b!4494453 (=> (not res!1868055) (not e!2799571))))

(assert (=> b!4494453 (= res!1868055 ((_ is Cons!50523) (t!357605 (toList!4243 lm!1477))))))

(declare-fun b!4494454 () Bool)

(assert (=> b!4494454 (= e!2799571 (containsKeyBiggerList!98 (t!357605 (t!357605 (toList!4243 lm!1477))) key!3287))))

(assert (= (and d!1377975 res!1868056) b!4494452))

(assert (= (and d!1377975 (not res!1868054)) b!4494453))

(assert (= (and b!4494453 res!1868055) b!4494454))

(declare-fun m!5221181 () Bool)

(assert (=> b!4494452 m!5221181))

(declare-fun m!5221183 () Bool)

(assert (=> b!4494454 m!5221183))

(assert (=> b!4494189 d!1377975))

(declare-fun d!1377977 () Bool)

(declare-fun res!1868057 () Bool)

(declare-fun e!2799572 () Bool)

(assert (=> d!1377977 (=> res!1868057 e!2799572)))

(declare-fun e!2799573 () Bool)

(assert (=> d!1377977 (= res!1868057 e!2799573)))

(declare-fun res!1868059 () Bool)

(assert (=> d!1377977 (=> (not res!1868059) (not e!2799573))))

(assert (=> d!1377977 (= res!1868059 ((_ is Cons!50523) (toList!4243 lt!1676946)))))

(assert (=> d!1377977 (= (containsKeyBiggerList!98 (toList!4243 lt!1676946) key!3287) e!2799572)))

(declare-fun b!4494455 () Bool)

(assert (=> b!4494455 (= e!2799573 (containsKey!1658 (_2!28748 (h!56336 (toList!4243 lt!1676946))) key!3287))))

(declare-fun b!4494456 () Bool)

(declare-fun e!2799574 () Bool)

(assert (=> b!4494456 (= e!2799572 e!2799574)))

(declare-fun res!1868058 () Bool)

(assert (=> b!4494456 (=> (not res!1868058) (not e!2799574))))

(assert (=> b!4494456 (= res!1868058 ((_ is Cons!50523) (toList!4243 lt!1676946)))))

(declare-fun b!4494457 () Bool)

(assert (=> b!4494457 (= e!2799574 (containsKeyBiggerList!98 (t!357605 (toList!4243 lt!1676946)) key!3287))))

(assert (= (and d!1377977 res!1868059) b!4494455))

(assert (= (and d!1377977 (not res!1868057)) b!4494456))

(assert (= (and b!4494456 res!1868058) b!4494457))

(declare-fun m!5221185 () Bool)

(assert (=> b!4494455 m!5221185))

(declare-fun m!5221187 () Bool)

(assert (=> b!4494457 m!5221187))

(assert (=> b!4494189 d!1377977))

(declare-fun bs!832651 () Bool)

(declare-fun d!1377979 () Bool)

(assert (= bs!832651 (and d!1377979 d!1377969)))

(declare-fun lambda!167826 () Int)

(assert (=> bs!832651 (= lambda!167826 lambda!167822)))

(declare-fun bs!832652 () Bool)

(assert (= bs!832652 (and d!1377979 d!1377973)))

(assert (=> bs!832652 (= lambda!167826 lambda!167823)))

(declare-fun bs!832653 () Bool)

(assert (= bs!832653 (and d!1377979 d!1377937)))

(assert (=> bs!832653 (= lambda!167826 lambda!167813)))

(declare-fun bs!832654 () Bool)

(assert (= bs!832654 (and d!1377979 d!1377943)))

(assert (=> bs!832654 (= lambda!167826 lambda!167819)))

(declare-fun bs!832655 () Bool)

(assert (= bs!832655 (and d!1377979 d!1377921)))

(assert (=> bs!832655 (= lambda!167826 lambda!167812)))

(declare-fun bs!832656 () Bool)

(assert (= bs!832656 (and d!1377979 start!443220)))

(assert (=> bs!832656 (= lambda!167826 lambda!167781)))

(declare-fun bs!832657 () Bool)

(assert (= bs!832657 (and d!1377979 d!1377881)))

(assert (=> bs!832657 (= lambda!167826 lambda!167790)))

(assert (=> d!1377979 (containsKeyBiggerList!98 (toList!4243 lt!1676946) key!3287)))

(declare-fun lt!1677149 () Unit!91160)

(declare-fun choose!29029 (ListLongMap!2875 K!11935 Hashable!5513) Unit!91160)

(assert (=> d!1377979 (= lt!1677149 (choose!29029 lt!1676946 key!3287 hashF!1107))))

(assert (=> d!1377979 (forall!10155 (toList!4243 lt!1676946) lambda!167826)))

(assert (=> d!1377979 (= (lemmaInLongMapThenContainsKeyBiggerList!34 lt!1676946 key!3287 hashF!1107) lt!1677149)))

(declare-fun bs!832658 () Bool)

(assert (= bs!832658 d!1377979))

(assert (=> bs!832658 m!5220717))

(declare-fun m!5221189 () Bool)

(assert (=> bs!832658 m!5221189))

(declare-fun m!5221191 () Bool)

(assert (=> bs!832658 m!5221191))

(assert (=> b!4494189 d!1377979))

(declare-fun bs!832659 () Bool)

(declare-fun d!1377981 () Bool)

(assert (= bs!832659 (and d!1377981 d!1377969)))

(declare-fun lambda!167827 () Int)

(assert (=> bs!832659 (= lambda!167827 lambda!167822)))

(declare-fun bs!832660 () Bool)

(assert (= bs!832660 (and d!1377981 d!1377973)))

(assert (=> bs!832660 (= lambda!167827 lambda!167823)))

(declare-fun bs!832661 () Bool)

(assert (= bs!832661 (and d!1377981 d!1377937)))

(assert (=> bs!832661 (= lambda!167827 lambda!167813)))

(declare-fun bs!832662 () Bool)

(assert (= bs!832662 (and d!1377981 d!1377943)))

(assert (=> bs!832662 (= lambda!167827 lambda!167819)))

(declare-fun bs!832663 () Bool)

(assert (= bs!832663 (and d!1377981 start!443220)))

(assert (=> bs!832663 (= lambda!167827 lambda!167781)))

(declare-fun bs!832664 () Bool)

(assert (= bs!832664 (and d!1377981 d!1377881)))

(assert (=> bs!832664 (= lambda!167827 lambda!167790)))

(declare-fun bs!832665 () Bool)

(assert (= bs!832665 (and d!1377981 d!1377979)))

(assert (=> bs!832665 (= lambda!167827 lambda!167826)))

(declare-fun bs!832666 () Bool)

(assert (= bs!832666 (and d!1377981 d!1377921)))

(assert (=> bs!832666 (= lambda!167827 lambda!167812)))

(declare-fun lt!1677150 () ListMap!3505)

(assert (=> d!1377981 (invariantList!977 (toList!4244 lt!1677150))))

(declare-fun e!2799575 () ListMap!3505)

(assert (=> d!1377981 (= lt!1677150 e!2799575)))

(declare-fun c!765720 () Bool)

(assert (=> d!1377981 (= c!765720 ((_ is Cons!50523) (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))

(assert (=> d!1377981 (forall!10155 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))) lambda!167827)))

(assert (=> d!1377981 (= (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))) lt!1677150)))

(declare-fun b!4494458 () Bool)

(assert (=> b!4494458 (= e!2799575 (addToMapMapFromBucket!645 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))))

(declare-fun b!4494459 () Bool)

(assert (=> b!4494459 (= e!2799575 (ListMap!3506 Nil!50522))))

(assert (= (and d!1377981 c!765720) b!4494458))

(assert (= (and d!1377981 (not c!765720)) b!4494459))

(declare-fun m!5221193 () Bool)

(assert (=> d!1377981 m!5221193))

(declare-fun m!5221195 () Bool)

(assert (=> d!1377981 m!5221195))

(declare-fun m!5221197 () Bool)

(assert (=> b!4494458 m!5221197))

(assert (=> b!4494458 m!5221197))

(declare-fun m!5221199 () Bool)

(assert (=> b!4494458 m!5221199))

(assert (=> b!4494184 d!1377981))

(declare-fun bs!832667 () Bool)

(declare-fun d!1377983 () Bool)

(assert (= bs!832667 (and d!1377983 d!1377969)))

(declare-fun lambda!167830 () Int)

(assert (=> bs!832667 (= lambda!167830 lambda!167822)))

(declare-fun bs!832668 () Bool)

(assert (= bs!832668 (and d!1377983 d!1377981)))

(assert (=> bs!832668 (= lambda!167830 lambda!167827)))

(declare-fun bs!832669 () Bool)

(assert (= bs!832669 (and d!1377983 d!1377973)))

(assert (=> bs!832669 (= lambda!167830 lambda!167823)))

(declare-fun bs!832670 () Bool)

(assert (= bs!832670 (and d!1377983 d!1377937)))

(assert (=> bs!832670 (= lambda!167830 lambda!167813)))

(declare-fun bs!832671 () Bool)

(assert (= bs!832671 (and d!1377983 d!1377943)))

(assert (=> bs!832671 (= lambda!167830 lambda!167819)))

(declare-fun bs!832672 () Bool)

(assert (= bs!832672 (and d!1377983 start!443220)))

(assert (=> bs!832672 (= lambda!167830 lambda!167781)))

(declare-fun bs!832673 () Bool)

(assert (= bs!832673 (and d!1377983 d!1377881)))

(assert (=> bs!832673 (= lambda!167830 lambda!167790)))

(declare-fun bs!832674 () Bool)

(assert (= bs!832674 (and d!1377983 d!1377979)))

(assert (=> bs!832674 (= lambda!167830 lambda!167826)))

(declare-fun bs!832675 () Bool)

(assert (= bs!832675 (and d!1377983 d!1377921)))

(assert (=> bs!832675 (= lambda!167830 lambda!167812)))

(assert (=> d!1377983 (eq!575 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))) (-!344 (extractMap!1174 (toList!4243 lt!1676946)) key!3287))))

(declare-fun lt!1677153 () Unit!91160)

(declare-fun choose!29030 (ListLongMap!2875 (_ BitVec 64) List!50646 K!11935 Hashable!5513) Unit!91160)

(assert (=> d!1377983 (= lt!1677153 (choose!29030 lt!1676946 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1377983 (forall!10155 (toList!4243 lt!1676946) lambda!167830)))

(assert (=> d!1377983 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!103 lt!1676946 hash!344 newBucket!178 key!3287 hashF!1107) lt!1677153)))

(declare-fun bs!832676 () Bool)

(assert (= bs!832676 d!1377983))

(assert (=> bs!832676 m!5220755))

(assert (=> bs!832676 m!5220733))

(declare-fun m!5221201 () Bool)

(assert (=> bs!832676 m!5221201))

(assert (=> bs!832676 m!5220765))

(assert (=> bs!832676 m!5220755))

(assert (=> bs!832676 m!5221201))

(declare-fun m!5221203 () Bool)

(assert (=> bs!832676 m!5221203))

(declare-fun m!5221205 () Bool)

(assert (=> bs!832676 m!5221205))

(assert (=> bs!832676 m!5220733))

(declare-fun m!5221207 () Bool)

(assert (=> bs!832676 m!5221207))

(assert (=> b!4494184 d!1377983))

(declare-fun d!1377985 () Bool)

(declare-fun content!8238 (List!50646) (InoxSet tuple2!50906))

(assert (=> d!1377985 (= (eq!575 lt!1676947 lt!1676952) (= (content!8238 (toList!4244 lt!1676947)) (content!8238 (toList!4244 lt!1676952))))))

(declare-fun bs!832677 () Bool)

(assert (= bs!832677 d!1377985))

(declare-fun m!5221209 () Bool)

(assert (=> bs!832677 m!5221209))

(declare-fun m!5221211 () Bool)

(assert (=> bs!832677 m!5221211))

(assert (=> b!4494184 d!1377985))

(declare-fun d!1377987 () Bool)

(declare-fun e!2799578 () Bool)

(assert (=> d!1377987 e!2799578))

(declare-fun res!1868062 () Bool)

(assert (=> d!1377987 (=> (not res!1868062) (not e!2799578))))

(declare-fun lt!1677156 () ListMap!3505)

(assert (=> d!1377987 (= res!1868062 (not (contains!13180 lt!1677156 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!101 (List!50646 K!11935) List!50646)

(assert (=> d!1377987 (= lt!1677156 (ListMap!3506 (removePresrvNoDuplicatedKeys!101 (toList!4244 lt!1676948) key!3287)))))

(assert (=> d!1377987 (= (-!344 lt!1676948 key!3287) lt!1677156)))

(declare-fun b!4494462 () Bool)

(declare-fun content!8239 (List!50649) (InoxSet K!11935))

(assert (=> b!4494462 (= e!2799578 (= ((_ map and) (content!8239 (keys!17510 lt!1676948)) ((_ map not) (store ((as const (Array K!11935 Bool)) false) key!3287 true))) (content!8239 (keys!17510 lt!1677156))))))

(assert (= (and d!1377987 res!1868062) b!4494462))

(declare-fun m!5221213 () Bool)

(assert (=> d!1377987 m!5221213))

(declare-fun m!5221215 () Bool)

(assert (=> d!1377987 m!5221215))

(assert (=> b!4494462 m!5221069))

(declare-fun m!5221217 () Bool)

(assert (=> b!4494462 m!5221217))

(assert (=> b!4494462 m!5221217))

(declare-fun m!5221219 () Bool)

(assert (=> b!4494462 m!5221219))

(assert (=> b!4494462 m!5221069))

(declare-fun m!5221221 () Bool)

(assert (=> b!4494462 m!5221221))

(declare-fun m!5221223 () Bool)

(assert (=> b!4494462 m!5221223))

(assert (=> b!4494184 d!1377987))

(declare-fun d!1377989 () Bool)

(declare-fun e!2799581 () Bool)

(assert (=> d!1377989 e!2799581))

(declare-fun res!1868067 () Bool)

(assert (=> d!1377989 (=> (not res!1868067) (not e!2799581))))

(declare-fun lt!1677166 () ListLongMap!2875)

(assert (=> d!1377989 (= res!1868067 (contains!13181 lt!1677166 (_1!28748 (head!9330 lm!1477))))))

(declare-fun lt!1677167 () List!50647)

(assert (=> d!1377989 (= lt!1677166 (ListLongMap!2876 lt!1677167))))

(declare-fun lt!1677168 () Unit!91160)

(declare-fun lt!1677165 () Unit!91160)

(assert (=> d!1377989 (= lt!1677168 lt!1677165)))

(assert (=> d!1377989 (= (getValueByKey!1012 lt!1677167 (_1!28748 (head!9330 lm!1477))) (Some!11031 (_2!28748 (head!9330 lm!1477))))))

(declare-fun lemmaContainsTupThenGetReturnValue!626 (List!50647 (_ BitVec 64) List!50646) Unit!91160)

(assert (=> d!1377989 (= lt!1677165 (lemmaContainsTupThenGetReturnValue!626 lt!1677167 (_1!28748 (head!9330 lm!1477)) (_2!28748 (head!9330 lm!1477))))))

(declare-fun insertStrictlySorted!368 (List!50647 (_ BitVec 64) List!50646) List!50647)

(assert (=> d!1377989 (= lt!1677167 (insertStrictlySorted!368 (toList!4243 lt!1676946) (_1!28748 (head!9330 lm!1477)) (_2!28748 (head!9330 lm!1477))))))

(assert (=> d!1377989 (= (+!1458 lt!1676946 (head!9330 lm!1477)) lt!1677166)))

(declare-fun b!4494467 () Bool)

(declare-fun res!1868068 () Bool)

(assert (=> b!4494467 (=> (not res!1868068) (not e!2799581))))

(assert (=> b!4494467 (= res!1868068 (= (getValueByKey!1012 (toList!4243 lt!1677166) (_1!28748 (head!9330 lm!1477))) (Some!11031 (_2!28748 (head!9330 lm!1477)))))))

(declare-fun b!4494468 () Bool)

(assert (=> b!4494468 (= e!2799581 (contains!13179 (toList!4243 lt!1677166) (head!9330 lm!1477)))))

(assert (= (and d!1377989 res!1868067) b!4494467))

(assert (= (and b!4494467 res!1868068) b!4494468))

(declare-fun m!5221225 () Bool)

(assert (=> d!1377989 m!5221225))

(declare-fun m!5221227 () Bool)

(assert (=> d!1377989 m!5221227))

(declare-fun m!5221229 () Bool)

(assert (=> d!1377989 m!5221229))

(declare-fun m!5221231 () Bool)

(assert (=> d!1377989 m!5221231))

(declare-fun m!5221233 () Bool)

(assert (=> b!4494467 m!5221233))

(assert (=> b!4494468 m!5220751))

(declare-fun m!5221235 () Bool)

(assert (=> b!4494468 m!5221235))

(assert (=> b!4494184 d!1377989))

(declare-fun bs!832678 () Bool)

(declare-fun d!1377991 () Bool)

(assert (= bs!832678 (and d!1377991 d!1377969)))

(declare-fun lambda!167831 () Int)

(assert (=> bs!832678 (= lambda!167831 lambda!167822)))

(declare-fun bs!832679 () Bool)

(assert (= bs!832679 (and d!1377991 d!1377981)))

(assert (=> bs!832679 (= lambda!167831 lambda!167827)))

(declare-fun bs!832680 () Bool)

(assert (= bs!832680 (and d!1377991 d!1377983)))

(assert (=> bs!832680 (= lambda!167831 lambda!167830)))

(declare-fun bs!832681 () Bool)

(assert (= bs!832681 (and d!1377991 d!1377973)))

(assert (=> bs!832681 (= lambda!167831 lambda!167823)))

(declare-fun bs!832682 () Bool)

(assert (= bs!832682 (and d!1377991 d!1377937)))

(assert (=> bs!832682 (= lambda!167831 lambda!167813)))

(declare-fun bs!832683 () Bool)

(assert (= bs!832683 (and d!1377991 d!1377943)))

(assert (=> bs!832683 (= lambda!167831 lambda!167819)))

(declare-fun bs!832684 () Bool)

(assert (= bs!832684 (and d!1377991 start!443220)))

(assert (=> bs!832684 (= lambda!167831 lambda!167781)))

(declare-fun bs!832685 () Bool)

(assert (= bs!832685 (and d!1377991 d!1377881)))

(assert (=> bs!832685 (= lambda!167831 lambda!167790)))

(declare-fun bs!832686 () Bool)

(assert (= bs!832686 (and d!1377991 d!1377979)))

(assert (=> bs!832686 (= lambda!167831 lambda!167826)))

(declare-fun bs!832687 () Bool)

(assert (= bs!832687 (and d!1377991 d!1377921)))

(assert (=> bs!832687 (= lambda!167831 lambda!167812)))

(declare-fun lt!1677169 () ListMap!3505)

(assert (=> d!1377991 (invariantList!977 (toList!4244 lt!1677169))))

(declare-fun e!2799582 () ListMap!3505)

(assert (=> d!1377991 (= lt!1677169 e!2799582)))

(declare-fun c!765721 () Bool)

(assert (=> d!1377991 (= c!765721 ((_ is Cons!50523) (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))))

(assert (=> d!1377991 (forall!10155 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))) lambda!167831)))

(assert (=> d!1377991 (= (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))) lt!1677169)))

(declare-fun b!4494469 () Bool)

(assert (=> b!4494469 (= e!2799582 (addToMapMapFromBucket!645 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))))))

(declare-fun b!4494470 () Bool)

(assert (=> b!4494470 (= e!2799582 (ListMap!3506 Nil!50522))))

(assert (= (and d!1377991 c!765721) b!4494469))

(assert (= (and d!1377991 (not c!765721)) b!4494470))

(declare-fun m!5221237 () Bool)

(assert (=> d!1377991 m!5221237))

(declare-fun m!5221239 () Bool)

(assert (=> d!1377991 m!5221239))

(declare-fun m!5221241 () Bool)

(assert (=> b!4494469 m!5221241))

(assert (=> b!4494469 m!5221241))

(declare-fun m!5221243 () Bool)

(assert (=> b!4494469 m!5221243))

(assert (=> b!4494184 d!1377991))

(declare-fun d!1377993 () Bool)

(declare-fun head!9332 (List!50647) tuple2!50908)

(assert (=> d!1377993 (= (head!9330 lm!1477) (head!9332 (toList!4243 lm!1477)))))

(declare-fun bs!832688 () Bool)

(assert (= bs!832688 d!1377993))

(declare-fun m!5221245 () Bool)

(assert (=> bs!832688 m!5221245))

(assert (=> b!4494184 d!1377993))

(declare-fun d!1377995 () Bool)

(assert (=> d!1377995 (= (eq!575 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))) (-!344 lt!1676948 key!3287)) (= (content!8238 (toList!4244 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (content!8238 (toList!4244 (-!344 lt!1676948 key!3287)))))))

(declare-fun bs!832689 () Bool)

(assert (= bs!832689 d!1377995))

(declare-fun m!5221247 () Bool)

(assert (=> bs!832689 m!5221247))

(declare-fun m!5221249 () Bool)

(assert (=> bs!832689 m!5221249))

(assert (=> b!4494184 d!1377995))

(declare-fun d!1377997 () Bool)

(declare-fun e!2799583 () Bool)

(assert (=> d!1377997 e!2799583))

(declare-fun res!1868069 () Bool)

(assert (=> d!1377997 (=> (not res!1868069) (not e!2799583))))

(declare-fun lt!1677171 () ListLongMap!2875)

(assert (=> d!1377997 (= res!1868069 (contains!13181 lt!1677171 (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))

(declare-fun lt!1677172 () List!50647)

(assert (=> d!1377997 (= lt!1677171 (ListLongMap!2876 lt!1677172))))

(declare-fun lt!1677173 () Unit!91160)

(declare-fun lt!1677170 () Unit!91160)

(assert (=> d!1377997 (= lt!1677173 lt!1677170)))

(assert (=> d!1377997 (= (getValueByKey!1012 lt!1677172 (_1!28748 (tuple2!50909 hash!344 newBucket!178))) (Some!11031 (_2!28748 (tuple2!50909 hash!344 newBucket!178))))))

(assert (=> d!1377997 (= lt!1677170 (lemmaContainsTupThenGetReturnValue!626 lt!1677172 (_1!28748 (tuple2!50909 hash!344 newBucket!178)) (_2!28748 (tuple2!50909 hash!344 newBucket!178))))))

(assert (=> d!1377997 (= lt!1677172 (insertStrictlySorted!368 (toList!4243 lt!1676946) (_1!28748 (tuple2!50909 hash!344 newBucket!178)) (_2!28748 (tuple2!50909 hash!344 newBucket!178))))))

(assert (=> d!1377997 (= (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)) lt!1677171)))

(declare-fun b!4494471 () Bool)

(declare-fun res!1868070 () Bool)

(assert (=> b!4494471 (=> (not res!1868070) (not e!2799583))))

(assert (=> b!4494471 (= res!1868070 (= (getValueByKey!1012 (toList!4243 lt!1677171) (_1!28748 (tuple2!50909 hash!344 newBucket!178))) (Some!11031 (_2!28748 (tuple2!50909 hash!344 newBucket!178)))))))

(declare-fun b!4494472 () Bool)

(assert (=> b!4494472 (= e!2799583 (contains!13179 (toList!4243 lt!1677171) (tuple2!50909 hash!344 newBucket!178)))))

(assert (= (and d!1377997 res!1868069) b!4494471))

(assert (= (and b!4494471 res!1868070) b!4494472))

(declare-fun m!5221251 () Bool)

(assert (=> d!1377997 m!5221251))

(declare-fun m!5221253 () Bool)

(assert (=> d!1377997 m!5221253))

(declare-fun m!5221255 () Bool)

(assert (=> d!1377997 m!5221255))

(declare-fun m!5221257 () Bool)

(assert (=> d!1377997 m!5221257))

(declare-fun m!5221259 () Bool)

(assert (=> b!4494471 m!5221259))

(declare-fun m!5221261 () Bool)

(assert (=> b!4494472 m!5221261))

(assert (=> b!4494184 d!1377997))

(declare-fun d!1377999 () Bool)

(assert (=> d!1377999 (= (apply!11855 lt!1676946 hash!344) (get!16501 (getValueByKey!1012 (toList!4243 lt!1676946) hash!344)))))

(declare-fun bs!832690 () Bool)

(assert (= bs!832690 d!1377999))

(assert (=> bs!832690 m!5221141))

(assert (=> bs!832690 m!5221141))

(declare-fun m!5221263 () Bool)

(assert (=> bs!832690 m!5221263))

(assert (=> b!4494185 d!1377999))

(declare-fun d!1378001 () Bool)

(assert (=> d!1378001 true))

(assert (=> d!1378001 true))

(declare-fun lambda!167834 () Int)

(declare-fun forall!10157 (List!50646 Int) Bool)

(assert (=> d!1378001 (= (allKeysSameHash!972 newBucket!178 hash!344 hashF!1107) (forall!10157 newBucket!178 lambda!167834))))

(declare-fun bs!832691 () Bool)

(assert (= bs!832691 d!1378001))

(declare-fun m!5221265 () Bool)

(assert (=> bs!832691 m!5221265))

(assert (=> b!4494196 d!1378001))

(declare-fun d!1378003 () Bool)

(declare-fun res!1868075 () Bool)

(declare-fun e!2799588 () Bool)

(assert (=> d!1378003 (=> res!1868075 e!2799588)))

(assert (=> d!1378003 (= res!1868075 ((_ is Nil!50523) (toList!4243 lm!1477)))))

(assert (=> d!1378003 (= (forall!10155 (toList!4243 lm!1477) lambda!167781) e!2799588)))

(declare-fun b!4494481 () Bool)

(declare-fun e!2799589 () Bool)

(assert (=> b!4494481 (= e!2799588 e!2799589)))

(declare-fun res!1868076 () Bool)

(assert (=> b!4494481 (=> (not res!1868076) (not e!2799589))))

(assert (=> b!4494481 (= res!1868076 (dynLambda!21093 lambda!167781 (h!56336 (toList!4243 lm!1477))))))

(declare-fun b!4494482 () Bool)

(assert (=> b!4494482 (= e!2799589 (forall!10155 (t!357605 (toList!4243 lm!1477)) lambda!167781))))

(assert (= (and d!1378003 (not res!1868075)) b!4494481))

(assert (= (and b!4494481 res!1868076) b!4494482))

(declare-fun b_lambda!151803 () Bool)

(assert (=> (not b_lambda!151803) (not b!4494481)))

(declare-fun m!5221267 () Bool)

(assert (=> b!4494481 m!5221267))

(declare-fun m!5221269 () Bool)

(assert (=> b!4494482 m!5221269))

(assert (=> start!443220 d!1378003))

(declare-fun d!1378005 () Bool)

(assert (=> d!1378005 (= (inv!66119 lm!1477) (isStrictlySorted!391 (toList!4243 lm!1477)))))

(declare-fun bs!832692 () Bool)

(assert (= bs!832692 d!1378005))

(assert (=> bs!832692 m!5220791))

(assert (=> start!443220 d!1378005))

(declare-fun bs!832693 () Bool)

(declare-fun d!1378007 () Bool)

(assert (= bs!832693 (and d!1378007 d!1377969)))

(declare-fun lambda!167837 () Int)

(assert (=> bs!832693 (not (= lambda!167837 lambda!167822))))

(declare-fun bs!832694 () Bool)

(assert (= bs!832694 (and d!1378007 d!1377981)))

(assert (=> bs!832694 (not (= lambda!167837 lambda!167827))))

(declare-fun bs!832695 () Bool)

(assert (= bs!832695 (and d!1378007 d!1377991)))

(assert (=> bs!832695 (not (= lambda!167837 lambda!167831))))

(declare-fun bs!832696 () Bool)

(assert (= bs!832696 (and d!1378007 d!1377983)))

(assert (=> bs!832696 (not (= lambda!167837 lambda!167830))))

(declare-fun bs!832697 () Bool)

(assert (= bs!832697 (and d!1378007 d!1377973)))

(assert (=> bs!832697 (not (= lambda!167837 lambda!167823))))

(declare-fun bs!832698 () Bool)

(assert (= bs!832698 (and d!1378007 d!1377937)))

(assert (=> bs!832698 (not (= lambda!167837 lambda!167813))))

(declare-fun bs!832699 () Bool)

(assert (= bs!832699 (and d!1378007 d!1377943)))

(assert (=> bs!832699 (not (= lambda!167837 lambda!167819))))

(declare-fun bs!832700 () Bool)

(assert (= bs!832700 (and d!1378007 start!443220)))

(assert (=> bs!832700 (not (= lambda!167837 lambda!167781))))

(declare-fun bs!832701 () Bool)

(assert (= bs!832701 (and d!1378007 d!1377881)))

(assert (=> bs!832701 (not (= lambda!167837 lambda!167790))))

(declare-fun bs!832702 () Bool)

(assert (= bs!832702 (and d!1378007 d!1377979)))

(assert (=> bs!832702 (not (= lambda!167837 lambda!167826))))

(declare-fun bs!832703 () Bool)

(assert (= bs!832703 (and d!1378007 d!1377921)))

(assert (=> bs!832703 (not (= lambda!167837 lambda!167812))))

(assert (=> d!1378007 true))

(assert (=> d!1378007 (= (allKeysSameHashInMap!1225 lm!1477 hashF!1107) (forall!10155 (toList!4243 lm!1477) lambda!167837))))

(declare-fun bs!832704 () Bool)

(assert (= bs!832704 d!1378007))

(declare-fun m!5221271 () Bool)

(assert (=> bs!832704 m!5221271))

(assert (=> b!4494186 d!1378007))

(declare-fun d!1378009 () Bool)

(declare-fun res!1868081 () Bool)

(declare-fun e!2799594 () Bool)

(assert (=> d!1378009 (=> res!1868081 e!2799594)))

(assert (=> d!1378009 (= res!1868081 (and ((_ is Cons!50522) lt!1676944) (= (_1!28747 (h!56335 lt!1676944)) key!3287)))))

(assert (=> d!1378009 (= (containsKey!1658 lt!1676944 key!3287) e!2799594)))

(declare-fun b!4494489 () Bool)

(declare-fun e!2799595 () Bool)

(assert (=> b!4494489 (= e!2799594 e!2799595)))

(declare-fun res!1868082 () Bool)

(assert (=> b!4494489 (=> (not res!1868082) (not e!2799595))))

(assert (=> b!4494489 (= res!1868082 ((_ is Cons!50522) lt!1676944))))

(declare-fun b!4494490 () Bool)

(assert (=> b!4494490 (= e!2799595 (containsKey!1658 (t!357604 lt!1676944) key!3287))))

(assert (= (and d!1378009 (not res!1868081)) b!4494489))

(assert (= (and b!4494489 res!1868082) b!4494490))

(declare-fun m!5221273 () Bool)

(assert (=> b!4494490 m!5221273))

(assert (=> b!4494197 d!1378009))

(declare-fun d!1378011 () Bool)

(declare-fun isEmpty!28573 (List!50647) Bool)

(assert (=> d!1378011 (= (isEmpty!28571 lm!1477) (isEmpty!28573 (toList!4243 lm!1477)))))

(declare-fun bs!832705 () Bool)

(assert (= bs!832705 d!1378011))

(declare-fun m!5221275 () Bool)

(assert (=> bs!832705 m!5221275))

(assert (=> b!4494192 d!1378011))

(declare-fun d!1378013 () Bool)

(declare-fun res!1868087 () Bool)

(declare-fun e!2799600 () Bool)

(assert (=> d!1378013 (=> res!1868087 e!2799600)))

(assert (=> d!1378013 (= res!1868087 (not ((_ is Cons!50522) newBucket!178)))))

(assert (=> d!1378013 (= (noDuplicateKeys!1118 newBucket!178) e!2799600)))

(declare-fun b!4494495 () Bool)

(declare-fun e!2799601 () Bool)

(assert (=> b!4494495 (= e!2799600 e!2799601)))

(declare-fun res!1868088 () Bool)

(assert (=> b!4494495 (=> (not res!1868088) (not e!2799601))))

(assert (=> b!4494495 (= res!1868088 (not (containsKey!1658 (t!357604 newBucket!178) (_1!28747 (h!56335 newBucket!178)))))))

(declare-fun b!4494496 () Bool)

(assert (=> b!4494496 (= e!2799601 (noDuplicateKeys!1118 (t!357604 newBucket!178)))))

(assert (= (and d!1378013 (not res!1868087)) b!4494495))

(assert (= (and b!4494495 res!1868088) b!4494496))

(declare-fun m!5221277 () Bool)

(assert (=> b!4494495 m!5221277))

(declare-fun m!5221279 () Bool)

(assert (=> b!4494496 m!5221279))

(assert (=> b!4494193 d!1378013))

(declare-fun d!1378015 () Bool)

(declare-fun lt!1677174 () Bool)

(assert (=> d!1378015 (= lt!1677174 (select (content!8236 (t!357605 (toList!4243 lm!1477))) lt!1676945))))

(declare-fun e!2799602 () Bool)

(assert (=> d!1378015 (= lt!1677174 e!2799602)))

(declare-fun res!1868090 () Bool)

(assert (=> d!1378015 (=> (not res!1868090) (not e!2799602))))

(assert (=> d!1378015 (= res!1868090 ((_ is Cons!50523) (t!357605 (toList!4243 lm!1477))))))

(assert (=> d!1378015 (= (contains!13179 (t!357605 (toList!4243 lm!1477)) lt!1676945) lt!1677174)))

(declare-fun b!4494497 () Bool)

(declare-fun e!2799603 () Bool)

(assert (=> b!4494497 (= e!2799602 e!2799603)))

(declare-fun res!1868089 () Bool)

(assert (=> b!4494497 (=> res!1868089 e!2799603)))

(assert (=> b!4494497 (= res!1868089 (= (h!56336 (t!357605 (toList!4243 lm!1477))) lt!1676945))))

(declare-fun b!4494498 () Bool)

(assert (=> b!4494498 (= e!2799603 (contains!13179 (t!357605 (t!357605 (toList!4243 lm!1477))) lt!1676945))))

(assert (= (and d!1378015 res!1868090) b!4494497))

(assert (= (and b!4494497 (not res!1868089)) b!4494498))

(declare-fun m!5221281 () Bool)

(assert (=> d!1378015 m!5221281))

(declare-fun m!5221283 () Bool)

(assert (=> d!1378015 m!5221283))

(declare-fun m!5221285 () Bool)

(assert (=> b!4494498 m!5221285))

(assert (=> b!4494183 d!1378015))

(declare-fun d!1378017 () Bool)

(assert (=> d!1378017 (= (eq!575 lt!1676952 lt!1676947) (= (content!8238 (toList!4244 lt!1676952)) (content!8238 (toList!4244 lt!1676947))))))

(declare-fun bs!832706 () Bool)

(assert (= bs!832706 d!1378017))

(assert (=> bs!832706 m!5221211))

(assert (=> bs!832706 m!5221209))

(assert (=> b!4494194 d!1378017))

(declare-fun e!2799606 () Bool)

(declare-fun tp!1337367 () Bool)

(declare-fun b!4494503 () Bool)

(assert (=> b!4494503 (= e!2799606 (and tp_is_empty!27749 tp_is_empty!27751 tp!1337367))))

(assert (=> b!4494195 (= tp!1337355 e!2799606)))

(assert (= (and b!4494195 ((_ is Cons!50522) (t!357604 newBucket!178))) b!4494503))

(declare-fun b!4494508 () Bool)

(declare-fun e!2799609 () Bool)

(declare-fun tp!1337372 () Bool)

(declare-fun tp!1337373 () Bool)

(assert (=> b!4494508 (= e!2799609 (and tp!1337372 tp!1337373))))

(assert (=> b!4494182 (= tp!1337354 e!2799609)))

(assert (= (and b!4494182 ((_ is Cons!50523) (toList!4243 lm!1477))) b!4494508))

(declare-fun b_lambda!151805 () Bool)

(assert (= b_lambda!151793 (or start!443220 b_lambda!151805)))

(declare-fun bs!832707 () Bool)

(declare-fun d!1378019 () Bool)

(assert (= bs!832707 (and d!1378019 start!443220)))

(assert (=> bs!832707 (= (dynLambda!21093 lambda!167781 lt!1676945) (noDuplicateKeys!1118 (_2!28748 lt!1676945)))))

(declare-fun m!5221287 () Bool)

(assert (=> bs!832707 m!5221287))

(assert (=> d!1377867 d!1378019))

(declare-fun b_lambda!151807 () Bool)

(assert (= b_lambda!151803 (or start!443220 b_lambda!151807)))

(declare-fun bs!832708 () Bool)

(declare-fun d!1378021 () Bool)

(assert (= bs!832708 (and d!1378021 start!443220)))

(assert (=> bs!832708 (= (dynLambda!21093 lambda!167781 (h!56336 (toList!4243 lm!1477))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lm!1477)))))))

(declare-fun m!5221289 () Bool)

(assert (=> bs!832708 m!5221289))

(assert (=> b!4494481 d!1378021))

(check-sat (not b!4494289) (not b!4494472) (not d!1377857) (not d!1378011) (not d!1378017) (not b!4494266) (not b!4494436) (not b!4494264) (not d!1377987) (not b!4494393) (not b!4494457) (not b!4494349) (not b!4494495) (not b!4494452) (not d!1377971) (not d!1377997) (not b!4494442) (not d!1377995) (not d!1377943) tp_is_empty!27749 (not d!1377981) (not bs!832707) (not b!4494498) (not b!4494503) (not b!4494400) (not d!1377921) (not b!4494346) (not d!1377999) (not d!1377967) (not b!4494237) (not b!4494443) (not b!4494398) (not b!4494444) (not b!4494441) (not b!4494352) (not b!4494439) (not d!1377885) (not d!1377973) (not b!4494434) (not d!1377861) (not b!4494224) (not d!1377991) (not b!4494392) (not b!4494508) (not b!4494380) (not b!4494458) (not d!1377989) (not d!1377879) (not d!1378015) (not bm!312712) (not b!4494467) (not b!4494347) (not b!4494462) (not b!4494468) (not b!4494353) (not d!1377993) (not bm!312713) (not b_lambda!151805) (not b!4494490) (not d!1377979) (not b!4494482) (not b!4494437) (not b!4494396) (not d!1377937) (not b_lambda!151807) (not d!1377965) (not d!1378005) (not b!4494394) (not b!4494455) (not d!1378007) (not d!1378001) (not b!4494399) (not b!4494469) (not bm!312714) (not b!4494471) (not b!4494432) (not b!4494203) (not bs!832708) (not d!1377867) (not b!4494454) (not d!1377985) (not d!1377939) (not d!1377891) (not d!1377963) (not d!1377881) (not b!4494435) (not b!4494345) (not d!1377969) (not b!4494496) (not b!4494351) (not d!1377855) (not d!1377983) tp_is_empty!27751 (not b!4494382))
(check-sat)
(get-model)

(declare-fun d!1378027 () Bool)

(assert (=> d!1378027 (dynLambda!21093 lambda!167781 lt!1676945)))

(assert (=> d!1378027 true))

(declare-fun _$7!1756 () Unit!91160)

(assert (=> d!1378027 (= (choose!29019 (toList!4243 lm!1477) lambda!167781 lt!1676945) _$7!1756)))

(declare-fun b_lambda!151809 () Bool)

(assert (=> (not b_lambda!151809) (not d!1378027)))

(declare-fun bs!832709 () Bool)

(assert (= bs!832709 d!1378027))

(assert (=> bs!832709 m!5220821))

(assert (=> d!1377867 d!1378027))

(assert (=> d!1377867 d!1378003))

(declare-fun b!4494545 () Bool)

(assert (=> b!4494545 true))

(declare-fun bs!832710 () Bool)

(declare-fun b!4494549 () Bool)

(assert (= bs!832710 (and b!4494549 b!4494545)))

(declare-fun lambda!167863 () Int)

(declare-fun lambda!167860 () Int)

(assert (=> bs!832710 (= (= (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948))) (t!357604 (toList!4244 lt!1676948))) (= lambda!167863 lambda!167860))))

(assert (=> b!4494549 true))

(declare-fun bs!832711 () Bool)

(declare-fun b!4494551 () Bool)

(assert (= bs!832711 (and b!4494551 b!4494545)))

(declare-fun lambda!167864 () Int)

(assert (=> bs!832711 (= (= (toList!4244 lt!1676948) (t!357604 (toList!4244 lt!1676948))) (= lambda!167864 lambda!167860))))

(declare-fun bs!832712 () Bool)

(assert (= bs!832712 (and b!4494551 b!4494549)))

(assert (=> bs!832712 (= (= (toList!4244 lt!1676948) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!167864 lambda!167863))))

(assert (=> b!4494551 true))

(declare-fun b!4494543 () Bool)

(declare-fun res!1868097 () Bool)

(declare-fun e!2799628 () Bool)

(assert (=> b!4494543 (=> (not res!1868097) (not e!2799628))))

(declare-fun lt!1677221 () List!50649)

(declare-fun length!300 (List!50649) Int)

(declare-fun length!301 (List!50646) Int)

(assert (=> b!4494543 (= res!1868097 (= (length!300 lt!1677221) (length!301 (toList!4244 lt!1676948))))))

(declare-fun lambda!167865 () Int)

(declare-fun b!4494544 () Bool)

(declare-fun map!11092 (List!50646 Int) List!50649)

(assert (=> b!4494544 (= e!2799628 (= (content!8239 lt!1677221) (content!8239 (map!11092 (toList!4244 lt!1676948) lambda!167865))))))

(assert (=> b!4494545 false))

(declare-fun lt!1677224 () Unit!91160)

(declare-fun forallContained!2411 (List!50649 Int K!11935) Unit!91160)

(assert (=> b!4494545 (= lt!1677224 (forallContained!2411 (getKeysList!425 (t!357604 (toList!4244 lt!1676948))) lambda!167860 (_1!28747 (h!56335 (toList!4244 lt!1676948)))))))

(declare-fun e!2799629 () Unit!91160)

(declare-fun Unit!91201 () Unit!91160)

(assert (=> b!4494545 (= e!2799629 Unit!91201)))

(declare-fun b!4494546 () Bool)

(declare-fun e!2799626 () List!50649)

(assert (=> b!4494546 (= e!2799626 Nil!50525)))

(declare-fun b!4494547 () Bool)

(assert (=> b!4494547 false))

(declare-fun e!2799627 () Unit!91160)

(declare-fun Unit!91203 () Unit!91160)

(assert (=> b!4494547 (= e!2799627 Unit!91203)))

(declare-fun b!4494548 () Bool)

(declare-fun Unit!91204 () Unit!91160)

(assert (=> b!4494548 (= e!2799627 Unit!91204)))

(declare-fun d!1378029 () Bool)

(assert (=> d!1378029 e!2799628))

(declare-fun res!1868098 () Bool)

(assert (=> d!1378029 (=> (not res!1868098) (not e!2799628))))

(declare-fun noDuplicate!722 (List!50649) Bool)

(assert (=> d!1378029 (= res!1868098 (noDuplicate!722 lt!1677221))))

(assert (=> d!1378029 (= lt!1677221 e!2799626)))

(declare-fun c!765738 () Bool)

(assert (=> d!1378029 (= c!765738 ((_ is Cons!50522) (toList!4244 lt!1676948)))))

(assert (=> d!1378029 (invariantList!977 (toList!4244 lt!1676948))))

(assert (=> d!1378029 (= (getKeysList!425 (toList!4244 lt!1676948)) lt!1677221)))

(assert (=> b!4494549 (= e!2799626 (Cons!50525 (_1!28747 (h!56335 (toList!4244 lt!1676948))) (getKeysList!425 (t!357604 (toList!4244 lt!1676948)))))))

(declare-fun c!765736 () Bool)

(assert (=> b!4494549 (= c!765736 (containsKey!1662 (t!357604 (toList!4244 lt!1676948)) (_1!28747 (h!56335 (toList!4244 lt!1676948)))))))

(declare-fun lt!1677225 () Unit!91160)

(assert (=> b!4494549 (= lt!1677225 e!2799627)))

(declare-fun c!765737 () Bool)

(assert (=> b!4494549 (= c!765737 (contains!13183 (getKeysList!425 (t!357604 (toList!4244 lt!1676948))) (_1!28747 (h!56335 (toList!4244 lt!1676948)))))))

(declare-fun lt!1677223 () Unit!91160)

(assert (=> b!4494549 (= lt!1677223 e!2799629)))

(declare-fun lt!1677222 () List!50649)

(assert (=> b!4494549 (= lt!1677222 (getKeysList!425 (t!357604 (toList!4244 lt!1676948))))))

(declare-fun lt!1677219 () Unit!91160)

(declare-fun lemmaForallContainsAddHeadPreserves!142 (List!50646 List!50649 tuple2!50906) Unit!91160)

(assert (=> b!4494549 (= lt!1677219 (lemmaForallContainsAddHeadPreserves!142 (t!357604 (toList!4244 lt!1676948)) lt!1677222 (h!56335 (toList!4244 lt!1676948))))))

(declare-fun forall!10159 (List!50649 Int) Bool)

(assert (=> b!4494549 (forall!10159 lt!1677222 lambda!167863)))

(declare-fun lt!1677220 () Unit!91160)

(assert (=> b!4494549 (= lt!1677220 lt!1677219)))

(declare-fun b!4494550 () Bool)

(declare-fun Unit!91205 () Unit!91160)

(assert (=> b!4494550 (= e!2799629 Unit!91205)))

(declare-fun res!1868099 () Bool)

(assert (=> b!4494551 (=> (not res!1868099) (not e!2799628))))

(assert (=> b!4494551 (= res!1868099 (forall!10159 lt!1677221 lambda!167864))))

(assert (= (and d!1378029 c!765738) b!4494549))

(assert (= (and d!1378029 (not c!765738)) b!4494546))

(assert (= (and b!4494549 c!765736) b!4494547))

(assert (= (and b!4494549 (not c!765736)) b!4494548))

(assert (= (and b!4494549 c!765737) b!4494545))

(assert (= (and b!4494549 (not c!765737)) b!4494550))

(assert (= (and d!1378029 res!1868098) b!4494543))

(assert (= (and b!4494543 res!1868097) b!4494551))

(assert (= (and b!4494551 res!1868099) b!4494544))

(declare-fun m!5221293 () Bool)

(assert (=> b!4494551 m!5221293))

(declare-fun m!5221295 () Bool)

(assert (=> d!1378029 m!5221295))

(declare-fun m!5221297 () Bool)

(assert (=> d!1378029 m!5221297))

(declare-fun m!5221299 () Bool)

(assert (=> b!4494544 m!5221299))

(declare-fun m!5221301 () Bool)

(assert (=> b!4494544 m!5221301))

(assert (=> b!4494544 m!5221301))

(declare-fun m!5221303 () Bool)

(assert (=> b!4494544 m!5221303))

(declare-fun m!5221305 () Bool)

(assert (=> b!4494543 m!5221305))

(declare-fun m!5221307 () Bool)

(assert (=> b!4494543 m!5221307))

(declare-fun m!5221309 () Bool)

(assert (=> b!4494549 m!5221309))

(declare-fun m!5221311 () Bool)

(assert (=> b!4494549 m!5221311))

(declare-fun m!5221313 () Bool)

(assert (=> b!4494549 m!5221313))

(declare-fun m!5221315 () Bool)

(assert (=> b!4494549 m!5221315))

(assert (=> b!4494549 m!5221309))

(declare-fun m!5221317 () Bool)

(assert (=> b!4494549 m!5221317))

(assert (=> b!4494545 m!5221309))

(assert (=> b!4494545 m!5221309))

(declare-fun m!5221319 () Bool)

(assert (=> b!4494545 m!5221319))

(assert (=> b!4494393 d!1378029))

(declare-fun d!1378031 () Bool)

(assert (=> d!1378031 (= (get!16501 (getValueByKey!1012 (toList!4243 lt!1676946) hash!344)) (v!44497 (getValueByKey!1012 (toList!4243 lt!1676946) hash!344)))))

(assert (=> d!1377999 d!1378031))

(declare-fun b!4494566 () Bool)

(declare-fun e!2799639 () Option!11032)

(assert (=> b!4494566 (= e!2799639 (getValueByKey!1012 (t!357605 (toList!4243 lt!1676946)) hash!344))))

(declare-fun b!4494565 () Bool)

(declare-fun e!2799638 () Option!11032)

(assert (=> b!4494565 (= e!2799638 e!2799639)))

(declare-fun c!765744 () Bool)

(assert (=> b!4494565 (= c!765744 (and ((_ is Cons!50523) (toList!4243 lt!1676946)) (not (= (_1!28748 (h!56336 (toList!4243 lt!1676946))) hash!344))))))

(declare-fun d!1378033 () Bool)

(declare-fun c!765743 () Bool)

(assert (=> d!1378033 (= c!765743 (and ((_ is Cons!50523) (toList!4243 lt!1676946)) (= (_1!28748 (h!56336 (toList!4243 lt!1676946))) hash!344)))))

(assert (=> d!1378033 (= (getValueByKey!1012 (toList!4243 lt!1676946) hash!344) e!2799638)))

(declare-fun b!4494567 () Bool)

(assert (=> b!4494567 (= e!2799639 None!11031)))

(declare-fun b!4494564 () Bool)

(assert (=> b!4494564 (= e!2799638 (Some!11031 (_2!28748 (h!56336 (toList!4243 lt!1676946)))))))

(assert (= (and d!1378033 c!765743) b!4494564))

(assert (= (and d!1378033 (not c!765743)) b!4494565))

(assert (= (and b!4494565 c!765744) b!4494566))

(assert (= (and b!4494565 (not c!765744)) b!4494567))

(declare-fun m!5221321 () Bool)

(assert (=> b!4494566 m!5221321))

(assert (=> d!1377999 d!1378033))

(declare-fun d!1378035 () Bool)

(assert (=> d!1378035 (= (head!9332 (toList!4243 lm!1477)) (h!56336 (toList!4243 lm!1477)))))

(assert (=> d!1377993 d!1378035))

(declare-fun d!1378037 () Bool)

(declare-fun lt!1677240 () Bool)

(assert (=> d!1378037 (= lt!1677240 (select (content!8239 e!2799527) key!3287))))

(declare-fun e!2799645 () Bool)

(assert (=> d!1378037 (= lt!1677240 e!2799645)))

(declare-fun res!1868110 () Bool)

(assert (=> d!1378037 (=> (not res!1868110) (not e!2799645))))

(assert (=> d!1378037 (= res!1868110 ((_ is Cons!50525) e!2799527))))

(assert (=> d!1378037 (= (contains!13183 e!2799527 key!3287) lt!1677240)))

(declare-fun b!4494576 () Bool)

(declare-fun e!2799644 () Bool)

(assert (=> b!4494576 (= e!2799645 e!2799644)))

(declare-fun res!1868111 () Bool)

(assert (=> b!4494576 (=> res!1868111 e!2799644)))

(assert (=> b!4494576 (= res!1868111 (= (h!56340 e!2799527) key!3287))))

(declare-fun b!4494577 () Bool)

(assert (=> b!4494577 (= e!2799644 (contains!13183 (t!357607 e!2799527) key!3287))))

(assert (= (and d!1378037 res!1868110) b!4494576))

(assert (= (and b!4494576 (not res!1868111)) b!4494577))

(declare-fun m!5221323 () Bool)

(assert (=> d!1378037 m!5221323))

(declare-fun m!5221325 () Bool)

(assert (=> d!1378037 m!5221325))

(declare-fun m!5221327 () Bool)

(assert (=> b!4494577 m!5221327))

(assert (=> bm!312713 d!1378037))

(declare-fun d!1378039 () Bool)

(declare-fun res!1868112 () Bool)

(declare-fun e!2799646 () Bool)

(assert (=> d!1378039 (=> res!1868112 e!2799646)))

(assert (=> d!1378039 (= res!1868112 (and ((_ is Cons!50522) (t!357604 lt!1676944)) (= (_1!28747 (h!56335 (t!357604 lt!1676944))) key!3287)))))

(assert (=> d!1378039 (= (containsKey!1658 (t!357604 lt!1676944) key!3287) e!2799646)))

(declare-fun b!4494578 () Bool)

(declare-fun e!2799647 () Bool)

(assert (=> b!4494578 (= e!2799646 e!2799647)))

(declare-fun res!1868113 () Bool)

(assert (=> b!4494578 (=> (not res!1868113) (not e!2799647))))

(assert (=> b!4494578 (= res!1868113 ((_ is Cons!50522) (t!357604 lt!1676944)))))

(declare-fun b!4494579 () Bool)

(assert (=> b!4494579 (= e!2799647 (containsKey!1658 (t!357604 (t!357604 lt!1676944)) key!3287))))

(assert (= (and d!1378039 (not res!1868112)) b!4494578))

(assert (= (and b!4494578 res!1868113) b!4494579))

(declare-fun m!5221329 () Bool)

(assert (=> b!4494579 m!5221329))

(assert (=> b!4494490 d!1378039))

(declare-fun bs!832716 () Bool)

(declare-fun b!4494594 () Bool)

(assert (= bs!832716 (and b!4494594 b!4494545)))

(declare-fun lambda!167885 () Int)

(assert (=> bs!832716 (= (= (toList!4244 lt!1676952) (t!357604 (toList!4244 lt!1676948))) (= lambda!167885 lambda!167860))))

(declare-fun bs!832717 () Bool)

(assert (= bs!832717 (and b!4494594 b!4494549)))

(assert (=> bs!832717 (= (= (toList!4244 lt!1676952) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!167885 lambda!167863))))

(declare-fun bs!832718 () Bool)

(assert (= bs!832718 (and b!4494594 b!4494551)))

(assert (=> bs!832718 (= (= (toList!4244 lt!1676952) (toList!4244 lt!1676948)) (= lambda!167885 lambda!167864))))

(assert (=> b!4494594 true))

(declare-fun bs!832722 () Bool)

(declare-fun b!4494595 () Bool)

(assert (= bs!832722 (and b!4494595 b!4494544)))

(declare-fun lambda!167887 () Int)

(assert (=> bs!832722 (= lambda!167887 lambda!167865)))

(declare-fun d!1378041 () Bool)

(declare-fun e!2799653 () Bool)

(assert (=> d!1378041 e!2799653))

(declare-fun res!1868125 () Bool)

(assert (=> d!1378041 (=> (not res!1868125) (not e!2799653))))

(declare-fun lt!1677264 () List!50649)

(assert (=> d!1378041 (= res!1868125 (noDuplicate!722 lt!1677264))))

(assert (=> d!1378041 (= lt!1677264 (getKeysList!425 (toList!4244 lt!1676952)))))

(assert (=> d!1378041 (= (keys!17510 lt!1676952) lt!1677264)))

(declare-fun b!4494593 () Bool)

(declare-fun res!1868123 () Bool)

(assert (=> b!4494593 (=> (not res!1868123) (not e!2799653))))

(assert (=> b!4494593 (= res!1868123 (= (length!300 lt!1677264) (length!301 (toList!4244 lt!1676952))))))

(declare-fun res!1868124 () Bool)

(assert (=> b!4494594 (=> (not res!1868124) (not e!2799653))))

(assert (=> b!4494594 (= res!1868124 (forall!10159 lt!1677264 lambda!167885))))

(assert (=> b!4494595 (= e!2799653 (= (content!8239 lt!1677264) (content!8239 (map!11092 (toList!4244 lt!1676952) lambda!167887))))))

(assert (= (and d!1378041 res!1868125) b!4494593))

(assert (= (and b!4494593 res!1868123) b!4494594))

(assert (= (and b!4494594 res!1868124) b!4494595))

(declare-fun m!5221331 () Bool)

(assert (=> d!1378041 m!5221331))

(assert (=> d!1378041 m!5221169))

(declare-fun m!5221333 () Bool)

(assert (=> b!4494593 m!5221333))

(declare-fun m!5221335 () Bool)

(assert (=> b!4494593 m!5221335))

(declare-fun m!5221337 () Bool)

(assert (=> b!4494594 m!5221337))

(declare-fun m!5221339 () Bool)

(assert (=> b!4494595 m!5221339))

(declare-fun m!5221341 () Bool)

(assert (=> b!4494595 m!5221341))

(assert (=> b!4494595 m!5221341))

(declare-fun m!5221343 () Bool)

(assert (=> b!4494595 m!5221343))

(assert (=> b!4494442 d!1378041))

(declare-fun d!1378043 () Bool)

(declare-fun e!2799655 () Bool)

(assert (=> d!1378043 e!2799655))

(declare-fun res!1868126 () Bool)

(assert (=> d!1378043 (=> res!1868126 e!2799655)))

(declare-fun lt!1677267 () Bool)

(assert (=> d!1378043 (= res!1868126 (not lt!1677267))))

(declare-fun lt!1677265 () Bool)

(assert (=> d!1378043 (= lt!1677267 lt!1677265)))

(declare-fun lt!1677268 () Unit!91160)

(declare-fun e!2799654 () Unit!91160)

(assert (=> d!1378043 (= lt!1677268 e!2799654)))

(declare-fun c!765746 () Bool)

(assert (=> d!1378043 (= c!765746 lt!1677265)))

(assert (=> d!1378043 (= lt!1677265 (containsKey!1661 (toList!4243 lm!1477) (hash!2659 hashF!1107 key!3287)))))

(assert (=> d!1378043 (= (contains!13181 lm!1477 (hash!2659 hashF!1107 key!3287)) lt!1677267)))

(declare-fun b!4494598 () Bool)

(declare-fun lt!1677266 () Unit!91160)

(assert (=> b!4494598 (= e!2799654 lt!1677266)))

(assert (=> b!4494598 (= lt!1677266 (lemmaContainsKeyImpliesGetValueByKeyDefined!916 (toList!4243 lm!1477) (hash!2659 hashF!1107 key!3287)))))

(assert (=> b!4494598 (isDefined!8319 (getValueByKey!1012 (toList!4243 lm!1477) (hash!2659 hashF!1107 key!3287)))))

(declare-fun b!4494599 () Bool)

(declare-fun Unit!91210 () Unit!91160)

(assert (=> b!4494599 (= e!2799654 Unit!91210)))

(declare-fun b!4494600 () Bool)

(assert (=> b!4494600 (= e!2799655 (isDefined!8319 (getValueByKey!1012 (toList!4243 lm!1477) (hash!2659 hashF!1107 key!3287))))))

(assert (= (and d!1378043 c!765746) b!4494598))

(assert (= (and d!1378043 (not c!765746)) b!4494599))

(assert (= (and d!1378043 (not res!1868126)) b!4494600))

(assert (=> d!1378043 m!5220705))

(declare-fun m!5221345 () Bool)

(assert (=> d!1378043 m!5221345))

(assert (=> b!4494598 m!5220705))

(declare-fun m!5221347 () Bool)

(assert (=> b!4494598 m!5221347))

(assert (=> b!4494598 m!5220705))

(declare-fun m!5221349 () Bool)

(assert (=> b!4494598 m!5221349))

(assert (=> b!4494598 m!5221349))

(declare-fun m!5221351 () Bool)

(assert (=> b!4494598 m!5221351))

(assert (=> b!4494600 m!5220705))

(assert (=> b!4494600 m!5221349))

(assert (=> b!4494600 m!5221349))

(assert (=> b!4494600 m!5221351))

(assert (=> d!1377881 d!1378043))

(assert (=> d!1377881 d!1377967))

(declare-fun d!1378045 () Bool)

(assert (=> d!1378045 (contains!13181 lm!1477 (hash!2659 hashF!1107 key!3287))))

(assert (=> d!1378045 true))

(declare-fun _$27!1155 () Unit!91160)

(assert (=> d!1378045 (= (choose!29021 lm!1477 key!3287 hashF!1107) _$27!1155)))

(declare-fun bs!832723 () Bool)

(assert (= bs!832723 d!1378045))

(assert (=> bs!832723 m!5220705))

(assert (=> bs!832723 m!5220705))

(assert (=> bs!832723 m!5220853))

(assert (=> d!1377881 d!1378045))

(declare-fun d!1378049 () Bool)

(declare-fun res!1868127 () Bool)

(declare-fun e!2799656 () Bool)

(assert (=> d!1378049 (=> res!1868127 e!2799656)))

(assert (=> d!1378049 (= res!1868127 ((_ is Nil!50523) (toList!4243 lm!1477)))))

(assert (=> d!1378049 (= (forall!10155 (toList!4243 lm!1477) lambda!167790) e!2799656)))

(declare-fun b!4494601 () Bool)

(declare-fun e!2799657 () Bool)

(assert (=> b!4494601 (= e!2799656 e!2799657)))

(declare-fun res!1868128 () Bool)

(assert (=> b!4494601 (=> (not res!1868128) (not e!2799657))))

(assert (=> b!4494601 (= res!1868128 (dynLambda!21093 lambda!167790 (h!56336 (toList!4243 lm!1477))))))

(declare-fun b!4494602 () Bool)

(assert (=> b!4494602 (= e!2799657 (forall!10155 (t!357605 (toList!4243 lm!1477)) lambda!167790))))

(assert (= (and d!1378049 (not res!1868127)) b!4494601))

(assert (= (and b!4494601 res!1868128) b!4494602))

(declare-fun b_lambda!151811 () Bool)

(assert (=> (not b_lambda!151811) (not b!4494601)))

(declare-fun m!5221383 () Bool)

(assert (=> b!4494601 m!5221383))

(declare-fun m!5221385 () Bool)

(assert (=> b!4494602 m!5221385))

(assert (=> d!1377881 d!1378049))

(declare-fun d!1378051 () Bool)

(assert (=> d!1378051 (= (get!16501 (getValueByKey!1012 (toList!4243 lm!1477) hash!344)) (v!44497 (getValueByKey!1012 (toList!4243 lm!1477) hash!344)))))

(assert (=> d!1377855 d!1378051))

(declare-fun b!4494605 () Bool)

(declare-fun e!2799659 () Option!11032)

(assert (=> b!4494605 (= e!2799659 (getValueByKey!1012 (t!357605 (toList!4243 lm!1477)) hash!344))))

(declare-fun b!4494604 () Bool)

(declare-fun e!2799658 () Option!11032)

(assert (=> b!4494604 (= e!2799658 e!2799659)))

(declare-fun c!765748 () Bool)

(assert (=> b!4494604 (= c!765748 (and ((_ is Cons!50523) (toList!4243 lm!1477)) (not (= (_1!28748 (h!56336 (toList!4243 lm!1477))) hash!344))))))

(declare-fun d!1378053 () Bool)

(declare-fun c!765747 () Bool)

(assert (=> d!1378053 (= c!765747 (and ((_ is Cons!50523) (toList!4243 lm!1477)) (= (_1!28748 (h!56336 (toList!4243 lm!1477))) hash!344)))))

(assert (=> d!1378053 (= (getValueByKey!1012 (toList!4243 lm!1477) hash!344) e!2799658)))

(declare-fun b!4494606 () Bool)

(assert (=> b!4494606 (= e!2799659 None!11031)))

(declare-fun b!4494603 () Bool)

(assert (=> b!4494603 (= e!2799658 (Some!11031 (_2!28748 (h!56336 (toList!4243 lm!1477)))))))

(assert (= (and d!1378053 c!765747) b!4494603))

(assert (= (and d!1378053 (not c!765747)) b!4494604))

(assert (= (and b!4494604 c!765748) b!4494605))

(assert (= (and b!4494604 (not c!765748)) b!4494606))

(declare-fun m!5221387 () Bool)

(assert (=> b!4494605 m!5221387))

(assert (=> d!1377855 d!1378053))

(declare-fun d!1378055 () Bool)

(declare-fun lt!1677271 () Bool)

(assert (=> d!1378055 (= lt!1677271 (select (content!8239 (keys!17510 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) key!3287))))

(declare-fun e!2799665 () Bool)

(assert (=> d!1378055 (= lt!1677271 e!2799665)))

(declare-fun res!1868133 () Bool)

(assert (=> d!1378055 (=> (not res!1868133) (not e!2799665))))

(assert (=> d!1378055 (= res!1868133 ((_ is Cons!50525) (keys!17510 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))

(assert (=> d!1378055 (= (contains!13183 (keys!17510 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287) lt!1677271)))

(declare-fun b!4494611 () Bool)

(declare-fun e!2799664 () Bool)

(assert (=> b!4494611 (= e!2799665 e!2799664)))

(declare-fun res!1868134 () Bool)

(assert (=> b!4494611 (=> res!1868134 e!2799664)))

(assert (=> b!4494611 (= res!1868134 (= (h!56340 (keys!17510 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) key!3287))))

(declare-fun b!4494612 () Bool)

(assert (=> b!4494612 (= e!2799664 (contains!13183 (t!357607 (keys!17510 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) key!3287))))

(assert (= (and d!1378055 res!1868133) b!4494611))

(assert (= (and b!4494611 (not res!1868134)) b!4494612))

(assert (=> d!1378055 m!5220977))

(declare-fun m!5221389 () Bool)

(assert (=> d!1378055 m!5221389))

(declare-fun m!5221391 () Bool)

(assert (=> d!1378055 m!5221391))

(declare-fun m!5221393 () Bool)

(assert (=> b!4494612 m!5221393))

(assert (=> b!4494347 d!1378055))

(declare-fun bs!832724 () Bool)

(declare-fun b!4494614 () Bool)

(assert (= bs!832724 (and b!4494614 b!4494545)))

(declare-fun lambda!167888 () Int)

(assert (=> bs!832724 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (t!357604 (toList!4244 lt!1676948))) (= lambda!167888 lambda!167860))))

(declare-fun bs!832725 () Bool)

(assert (= bs!832725 (and b!4494614 b!4494549)))

(assert (=> bs!832725 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!167888 lambda!167863))))

(declare-fun bs!832726 () Bool)

(assert (= bs!832726 (and b!4494614 b!4494551)))

(assert (=> bs!832726 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (toList!4244 lt!1676948)) (= lambda!167888 lambda!167864))))

(declare-fun bs!832727 () Bool)

(assert (= bs!832727 (and b!4494614 b!4494594)))

(assert (=> bs!832727 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (toList!4244 lt!1676952)) (= lambda!167888 lambda!167885))))

(assert (=> b!4494614 true))

(declare-fun bs!832728 () Bool)

(declare-fun b!4494615 () Bool)

(assert (= bs!832728 (and b!4494615 b!4494544)))

(declare-fun lambda!167889 () Int)

(assert (=> bs!832728 (= lambda!167889 lambda!167865)))

(declare-fun bs!832729 () Bool)

(assert (= bs!832729 (and b!4494615 b!4494595)))

(assert (=> bs!832729 (= lambda!167889 lambda!167887)))

(declare-fun d!1378057 () Bool)

(declare-fun e!2799666 () Bool)

(assert (=> d!1378057 e!2799666))

(declare-fun res!1868137 () Bool)

(assert (=> d!1378057 (=> (not res!1868137) (not e!2799666))))

(declare-fun lt!1677272 () List!50649)

(assert (=> d!1378057 (= res!1868137 (noDuplicate!722 lt!1677272))))

(assert (=> d!1378057 (= lt!1677272 (getKeysList!425 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))

(assert (=> d!1378057 (= (keys!17510 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) lt!1677272)))

(declare-fun b!4494613 () Bool)

(declare-fun res!1868135 () Bool)

(assert (=> b!4494613 (=> (not res!1868135) (not e!2799666))))

(assert (=> b!4494613 (= res!1868135 (= (length!300 lt!1677272) (length!301 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))))

(declare-fun res!1868136 () Bool)

(assert (=> b!4494614 (=> (not res!1868136) (not e!2799666))))

(assert (=> b!4494614 (= res!1868136 (forall!10159 lt!1677272 lambda!167888))))

(assert (=> b!4494615 (= e!2799666 (= (content!8239 lt!1677272) (content!8239 (map!11092 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) lambda!167889))))))

(assert (= (and d!1378057 res!1868137) b!4494613))

(assert (= (and b!4494613 res!1868135) b!4494614))

(assert (= (and b!4494614 res!1868136) b!4494615))

(declare-fun m!5221401 () Bool)

(assert (=> d!1378057 m!5221401))

(assert (=> d!1378057 m!5220991))

(declare-fun m!5221403 () Bool)

(assert (=> b!4494613 m!5221403))

(declare-fun m!5221405 () Bool)

(assert (=> b!4494613 m!5221405))

(declare-fun m!5221407 () Bool)

(assert (=> b!4494614 m!5221407))

(declare-fun m!5221409 () Bool)

(assert (=> b!4494615 m!5221409))

(declare-fun m!5221411 () Bool)

(assert (=> b!4494615 m!5221411))

(assert (=> b!4494615 m!5221411))

(declare-fun m!5221413 () Bool)

(assert (=> b!4494615 m!5221413))

(assert (=> b!4494347 d!1378057))

(declare-fun bs!832833 () Bool)

(declare-fun b!4494830 () Bool)

(assert (= bs!832833 (and b!4494830 d!1378001)))

(declare-fun lambda!167952 () Int)

(assert (=> bs!832833 (not (= lambda!167952 lambda!167834))))

(assert (=> b!4494830 true))

(declare-fun bs!832834 () Bool)

(declare-fun b!4494831 () Bool)

(assert (= bs!832834 (and b!4494831 d!1378001)))

(declare-fun lambda!167953 () Int)

(assert (=> bs!832834 (not (= lambda!167953 lambda!167834))))

(declare-fun bs!832835 () Bool)

(assert (= bs!832835 (and b!4494831 b!4494830)))

(assert (=> bs!832835 (= lambda!167953 lambda!167952)))

(assert (=> b!4494831 true))

(declare-fun lambda!167954 () Int)

(assert (=> bs!832834 (not (= lambda!167954 lambda!167834))))

(declare-fun lt!1677422 () ListMap!3505)

(assert (=> bs!832835 (= (= lt!1677422 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167954 lambda!167952))))

(assert (=> b!4494831 (= (= lt!1677422 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167954 lambda!167953))))

(assert (=> b!4494831 true))

(declare-fun bs!832837 () Bool)

(declare-fun d!1378061 () Bool)

(assert (= bs!832837 (and d!1378061 d!1378001)))

(declare-fun lambda!167955 () Int)

(assert (=> bs!832837 (not (= lambda!167955 lambda!167834))))

(declare-fun bs!832838 () Bool)

(assert (= bs!832838 (and d!1378061 b!4494830)))

(declare-fun lt!1677416 () ListMap!3505)

(assert (=> bs!832838 (= (= lt!1677416 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167955 lambda!167952))))

(declare-fun bs!832839 () Bool)

(assert (= bs!832839 (and d!1378061 b!4494831)))

(assert (=> bs!832839 (= (= lt!1677416 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167955 lambda!167953))))

(assert (=> bs!832839 (= (= lt!1677416 lt!1677422) (= lambda!167955 lambda!167954))))

(assert (=> d!1378061 true))

(declare-fun c!765803 () Bool)

(declare-fun call!312750 () Bool)

(declare-fun bm!312745 () Bool)

(assert (=> bm!312745 (= call!312750 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (ite c!765803 lambda!167952 lambda!167954)))))

(declare-fun b!4494828 () Bool)

(declare-fun e!2799795 () Bool)

(assert (=> b!4494828 (= e!2799795 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) lambda!167954))))

(declare-fun b!4494829 () Bool)

(declare-fun e!2799793 () Bool)

(assert (=> b!4494829 (= e!2799793 (invariantList!977 (toList!4244 lt!1677416)))))

(declare-fun e!2799794 () ListMap!3505)

(assert (=> b!4494830 (= e!2799794 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477)))))))

(declare-fun lt!1677419 () Unit!91160)

(declare-fun call!312752 () Unit!91160)

(assert (=> b!4494830 (= lt!1677419 call!312752)))

(assert (=> b!4494830 call!312750))

(declare-fun lt!1677413 () Unit!91160)

(assert (=> b!4494830 (= lt!1677413 lt!1677419)))

(declare-fun call!312751 () Bool)

(assert (=> b!4494830 call!312751))

(declare-fun lt!1677418 () Unit!91160)

(declare-fun Unit!91211 () Unit!91160)

(assert (=> b!4494830 (= lt!1677418 Unit!91211)))

(declare-fun bm!312746 () Bool)

(assert (=> bm!312746 (= call!312751 (forall!10157 (ite c!765803 (toList!4244 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (t!357604 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))))) (ite c!765803 lambda!167952 lambda!167954)))))

(assert (=> b!4494831 (= e!2799794 lt!1677422)))

(declare-fun lt!1677410 () ListMap!3505)

(declare-fun +!1460 (ListMap!3505 tuple2!50906) ListMap!3505)

(assert (=> b!4494831 (= lt!1677410 (+!1460 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477)))) (h!56335 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))))))))

(assert (=> b!4494831 (= lt!1677422 (addToMapMapFromBucket!645 (t!357604 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))) (+!1460 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477)))) (h!56335 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))))))))

(declare-fun lt!1677426 () Unit!91160)

(assert (=> b!4494831 (= lt!1677426 call!312752)))

(assert (=> b!4494831 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) lambda!167953)))

(declare-fun lt!1677424 () Unit!91160)

(assert (=> b!4494831 (= lt!1677424 lt!1677426)))

(assert (=> b!4494831 (forall!10157 (toList!4244 lt!1677410) lambda!167954)))

(declare-fun lt!1677412 () Unit!91160)

(declare-fun Unit!91212 () Unit!91160)

(assert (=> b!4494831 (= lt!1677412 Unit!91212)))

(assert (=> b!4494831 call!312751))

(declare-fun lt!1677425 () Unit!91160)

(declare-fun Unit!91213 () Unit!91160)

(assert (=> b!4494831 (= lt!1677425 Unit!91213)))

(declare-fun lt!1677429 () Unit!91160)

(declare-fun Unit!91214 () Unit!91160)

(assert (=> b!4494831 (= lt!1677429 Unit!91214)))

(declare-fun lt!1677414 () Unit!91160)

(declare-fun forallContained!2413 (List!50646 Int tuple2!50906) Unit!91160)

(assert (=> b!4494831 (= lt!1677414 (forallContained!2413 (toList!4244 lt!1677410) lambda!167954 (h!56335 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))))))))

(assert (=> b!4494831 (contains!13180 lt!1677410 (_1!28747 (h!56335 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))))))))

(declare-fun lt!1677417 () Unit!91160)

(declare-fun Unit!91215 () Unit!91160)

(assert (=> b!4494831 (= lt!1677417 Unit!91215)))

(assert (=> b!4494831 (contains!13180 lt!1677422 (_1!28747 (h!56335 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))))))))

(declare-fun lt!1677415 () Unit!91160)

(declare-fun Unit!91216 () Unit!91160)

(assert (=> b!4494831 (= lt!1677415 Unit!91216)))

(assert (=> b!4494831 (forall!10157 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))) lambda!167954)))

(declare-fun lt!1677411 () Unit!91160)

(declare-fun Unit!91217 () Unit!91160)

(assert (=> b!4494831 (= lt!1677411 Unit!91217)))

(assert (=> b!4494831 (forall!10157 (toList!4244 lt!1677410) lambda!167954)))

(declare-fun lt!1677423 () Unit!91160)

(declare-fun Unit!91218 () Unit!91160)

(assert (=> b!4494831 (= lt!1677423 Unit!91218)))

(declare-fun lt!1677427 () Unit!91160)

(declare-fun Unit!91219 () Unit!91160)

(assert (=> b!4494831 (= lt!1677427 Unit!91219)))

(declare-fun lt!1677428 () Unit!91160)

(declare-fun addForallContainsKeyThenBeforeAdding!300 (ListMap!3505 ListMap!3505 K!11935 V!12181) Unit!91160)

(assert (=> b!4494831 (= lt!1677428 (addForallContainsKeyThenBeforeAdding!300 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477)))) lt!1677422 (_1!28747 (h!56335 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))))) (_2!28747 (h!56335 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))))))))

(assert (=> b!4494831 call!312750))

(declare-fun lt!1677420 () Unit!91160)

(assert (=> b!4494831 (= lt!1677420 lt!1677428)))

(assert (=> b!4494831 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) lambda!167954)))

(declare-fun lt!1677421 () Unit!91160)

(declare-fun Unit!91220 () Unit!91160)

(assert (=> b!4494831 (= lt!1677421 Unit!91220)))

(declare-fun res!1868240 () Bool)

(assert (=> b!4494831 (= res!1868240 (forall!10157 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))) lambda!167954))))

(assert (=> b!4494831 (=> (not res!1868240) (not e!2799795))))

(assert (=> b!4494831 e!2799795))

(declare-fun lt!1677430 () Unit!91160)

(declare-fun Unit!91221 () Unit!91160)

(assert (=> b!4494831 (= lt!1677430 Unit!91221)))

(assert (=> d!1378061 e!2799793))

(declare-fun res!1868238 () Bool)

(assert (=> d!1378061 (=> (not res!1868238) (not e!2799793))))

(assert (=> d!1378061 (= res!1868238 (forall!10157 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))) lambda!167955))))

(assert (=> d!1378061 (= lt!1677416 e!2799794)))

(assert (=> d!1378061 (= c!765803 ((_ is Nil!50522) (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))))))

(assert (=> d!1378061 (noDuplicateKeys!1118 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))))))

(assert (=> d!1378061 (= (addToMapMapFromBucket!645 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) lt!1677416)))

(declare-fun b!4494832 () Bool)

(declare-fun res!1868239 () Bool)

(assert (=> b!4494832 (=> (not res!1868239) (not e!2799793))))

(assert (=> b!4494832 (= res!1868239 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) lambda!167955))))

(declare-fun bm!312747 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!300 (ListMap!3505) Unit!91160)

(assert (=> bm!312747 (= call!312752 (lemmaContainsAllItsOwnKeys!300 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))))))

(assert (= (and d!1378061 c!765803) b!4494830))

(assert (= (and d!1378061 (not c!765803)) b!4494831))

(assert (= (and b!4494831 res!1868240) b!4494828))

(assert (= (or b!4494830 b!4494831) bm!312745))

(assert (= (or b!4494830 b!4494831) bm!312746))

(assert (= (or b!4494830 b!4494831) bm!312747))

(assert (= (and d!1378061 res!1868238) b!4494832))

(assert (= (and b!4494832 res!1868239) b!4494829))

(declare-fun m!5221751 () Bool)

(assert (=> b!4494831 m!5221751))

(declare-fun m!5221753 () Bool)

(assert (=> b!4494831 m!5221753))

(assert (=> b!4494831 m!5221051))

(declare-fun m!5221755 () Bool)

(assert (=> b!4494831 m!5221755))

(assert (=> b!4494831 m!5221051))

(declare-fun m!5221757 () Bool)

(assert (=> b!4494831 m!5221757))

(declare-fun m!5221759 () Bool)

(assert (=> b!4494831 m!5221759))

(declare-fun m!5221761 () Bool)

(assert (=> b!4494831 m!5221761))

(assert (=> b!4494831 m!5221757))

(declare-fun m!5221763 () Bool)

(assert (=> b!4494831 m!5221763))

(declare-fun m!5221765 () Bool)

(assert (=> b!4494831 m!5221765))

(assert (=> b!4494831 m!5221765))

(assert (=> b!4494831 m!5221753))

(declare-fun m!5221767 () Bool)

(assert (=> b!4494831 m!5221767))

(declare-fun m!5221769 () Bool)

(assert (=> b!4494831 m!5221769))

(declare-fun m!5221771 () Bool)

(assert (=> bm!312746 m!5221771))

(assert (=> bm!312747 m!5221051))

(declare-fun m!5221773 () Bool)

(assert (=> bm!312747 m!5221773))

(declare-fun m!5221775 () Bool)

(assert (=> b!4494832 m!5221775))

(assert (=> b!4494828 m!5221751))

(declare-fun m!5221777 () Bool)

(assert (=> bm!312745 m!5221777))

(declare-fun m!5221779 () Bool)

(assert (=> d!1378061 m!5221779))

(declare-fun m!5221781 () Bool)

(assert (=> d!1378061 m!5221781))

(declare-fun m!5221783 () Bool)

(assert (=> b!4494829 m!5221783))

(assert (=> b!4494380 d!1378061))

(declare-fun bs!832840 () Bool)

(declare-fun d!1378173 () Bool)

(assert (= bs!832840 (and d!1378173 d!1378007)))

(declare-fun lambda!167956 () Int)

(assert (=> bs!832840 (not (= lambda!167956 lambda!167837))))

(declare-fun bs!832841 () Bool)

(assert (= bs!832841 (and d!1378173 d!1377969)))

(assert (=> bs!832841 (= lambda!167956 lambda!167822)))

(declare-fun bs!832842 () Bool)

(assert (= bs!832842 (and d!1378173 d!1377981)))

(assert (=> bs!832842 (= lambda!167956 lambda!167827)))

(declare-fun bs!832843 () Bool)

(assert (= bs!832843 (and d!1378173 d!1377991)))

(assert (=> bs!832843 (= lambda!167956 lambda!167831)))

(declare-fun bs!832844 () Bool)

(assert (= bs!832844 (and d!1378173 d!1377983)))

(assert (=> bs!832844 (= lambda!167956 lambda!167830)))

(declare-fun bs!832845 () Bool)

(assert (= bs!832845 (and d!1378173 d!1377973)))

(assert (=> bs!832845 (= lambda!167956 lambda!167823)))

(declare-fun bs!832846 () Bool)

(assert (= bs!832846 (and d!1378173 d!1377937)))

(assert (=> bs!832846 (= lambda!167956 lambda!167813)))

(declare-fun bs!832847 () Bool)

(assert (= bs!832847 (and d!1378173 d!1377943)))

(assert (=> bs!832847 (= lambda!167956 lambda!167819)))

(declare-fun bs!832848 () Bool)

(assert (= bs!832848 (and d!1378173 start!443220)))

(assert (=> bs!832848 (= lambda!167956 lambda!167781)))

(declare-fun bs!832849 () Bool)

(assert (= bs!832849 (and d!1378173 d!1377881)))

(assert (=> bs!832849 (= lambda!167956 lambda!167790)))

(declare-fun bs!832850 () Bool)

(assert (= bs!832850 (and d!1378173 d!1377979)))

(assert (=> bs!832850 (= lambda!167956 lambda!167826)))

(declare-fun bs!832851 () Bool)

(assert (= bs!832851 (and d!1378173 d!1377921)))

(assert (=> bs!832851 (= lambda!167956 lambda!167812)))

(declare-fun lt!1677443 () ListMap!3505)

(assert (=> d!1378173 (invariantList!977 (toList!4244 lt!1677443))))

(declare-fun e!2799808 () ListMap!3505)

(assert (=> d!1378173 (= lt!1677443 e!2799808)))

(declare-fun c!765807 () Bool)

(assert (=> d!1378173 (= c!765807 ((_ is Cons!50523) (t!357605 (t!357605 (toList!4243 lm!1477)))))))

(assert (=> d!1378173 (forall!10155 (t!357605 (t!357605 (toList!4243 lm!1477))) lambda!167956)))

(assert (=> d!1378173 (= (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477)))) lt!1677443)))

(declare-fun b!4494850 () Bool)

(assert (=> b!4494850 (= e!2799808 (addToMapMapFromBucket!645 (_2!28748 (h!56336 (t!357605 (t!357605 (toList!4243 lm!1477))))) (extractMap!1174 (t!357605 (t!357605 (t!357605 (toList!4243 lm!1477)))))))))

(declare-fun b!4494851 () Bool)

(assert (=> b!4494851 (= e!2799808 (ListMap!3506 Nil!50522))))

(assert (= (and d!1378173 c!765807) b!4494850))

(assert (= (and d!1378173 (not c!765807)) b!4494851))

(declare-fun m!5221785 () Bool)

(assert (=> d!1378173 m!5221785))

(declare-fun m!5221787 () Bool)

(assert (=> d!1378173 m!5221787))

(declare-fun m!5221789 () Bool)

(assert (=> b!4494850 m!5221789))

(assert (=> b!4494850 m!5221789))

(declare-fun m!5221791 () Bool)

(assert (=> b!4494850 m!5221791))

(assert (=> b!4494380 d!1378173))

(declare-fun d!1378175 () Bool)

(declare-fun lt!1677444 () Bool)

(assert (=> d!1378175 (= lt!1677444 (select (content!8236 (toList!4243 lt!1677166)) (head!9330 lm!1477)))))

(declare-fun e!2799809 () Bool)

(assert (=> d!1378175 (= lt!1677444 e!2799809)))

(declare-fun res!1868251 () Bool)

(assert (=> d!1378175 (=> (not res!1868251) (not e!2799809))))

(assert (=> d!1378175 (= res!1868251 ((_ is Cons!50523) (toList!4243 lt!1677166)))))

(assert (=> d!1378175 (= (contains!13179 (toList!4243 lt!1677166) (head!9330 lm!1477)) lt!1677444)))

(declare-fun b!4494852 () Bool)

(declare-fun e!2799810 () Bool)

(assert (=> b!4494852 (= e!2799809 e!2799810)))

(declare-fun res!1868250 () Bool)

(assert (=> b!4494852 (=> res!1868250 e!2799810)))

(assert (=> b!4494852 (= res!1868250 (= (h!56336 (toList!4243 lt!1677166)) (head!9330 lm!1477)))))

(declare-fun b!4494853 () Bool)

(assert (=> b!4494853 (= e!2799810 (contains!13179 (t!357605 (toList!4243 lt!1677166)) (head!9330 lm!1477)))))

(assert (= (and d!1378175 res!1868251) b!4494852))

(assert (= (and b!4494852 (not res!1868250)) b!4494853))

(declare-fun m!5221793 () Bool)

(assert (=> d!1378175 m!5221793))

(assert (=> d!1378175 m!5220751))

(declare-fun m!5221795 () Bool)

(assert (=> d!1378175 m!5221795))

(assert (=> b!4494853 m!5220751))

(declare-fun m!5221797 () Bool)

(assert (=> b!4494853 m!5221797))

(assert (=> b!4494468 d!1378175))

(declare-fun b!4494856 () Bool)

(declare-fun e!2799812 () Option!11032)

(assert (=> b!4494856 (= e!2799812 (getValueByKey!1012 (t!357605 (toList!4243 lt!1677171)) (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))

(declare-fun b!4494855 () Bool)

(declare-fun e!2799811 () Option!11032)

(assert (=> b!4494855 (= e!2799811 e!2799812)))

(declare-fun c!765809 () Bool)

(assert (=> b!4494855 (= c!765809 (and ((_ is Cons!50523) (toList!4243 lt!1677171)) (not (= (_1!28748 (h!56336 (toList!4243 lt!1677171))) (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))))

(declare-fun d!1378177 () Bool)

(declare-fun c!765808 () Bool)

(assert (=> d!1378177 (= c!765808 (and ((_ is Cons!50523) (toList!4243 lt!1677171)) (= (_1!28748 (h!56336 (toList!4243 lt!1677171))) (_1!28748 (tuple2!50909 hash!344 newBucket!178)))))))

(assert (=> d!1378177 (= (getValueByKey!1012 (toList!4243 lt!1677171) (_1!28748 (tuple2!50909 hash!344 newBucket!178))) e!2799811)))

(declare-fun b!4494857 () Bool)

(assert (=> b!4494857 (= e!2799812 None!11031)))

(declare-fun b!4494854 () Bool)

(assert (=> b!4494854 (= e!2799811 (Some!11031 (_2!28748 (h!56336 (toList!4243 lt!1677171)))))))

(assert (= (and d!1378177 c!765808) b!4494854))

(assert (= (and d!1378177 (not c!765808)) b!4494855))

(assert (= (and b!4494855 c!765809) b!4494856))

(assert (= (and b!4494855 (not c!765809)) b!4494857))

(declare-fun m!5221799 () Bool)

(assert (=> b!4494856 m!5221799))

(assert (=> b!4494471 d!1378177))

(declare-fun d!1378179 () Bool)

(declare-fun isEmpty!28575 (Option!11033) Bool)

(assert (=> d!1378179 (= (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287)) (not (isEmpty!28575 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287))))))

(declare-fun bs!832852 () Bool)

(assert (= bs!832852 d!1378179))

(assert (=> bs!832852 m!5221079))

(declare-fun m!5221801 () Bool)

(assert (=> bs!832852 m!5221801))

(assert (=> b!4494398 d!1378179))

(declare-fun b!4494868 () Bool)

(declare-fun e!2799818 () Option!11033)

(assert (=> b!4494868 (= e!2799818 (getValueByKey!1013 (t!357604 (toList!4244 lt!1676948)) key!3287))))

(declare-fun b!4494869 () Bool)

(assert (=> b!4494869 (= e!2799818 None!11032)))

(declare-fun d!1378181 () Bool)

(declare-fun c!765814 () Bool)

(assert (=> d!1378181 (= c!765814 (and ((_ is Cons!50522) (toList!4244 lt!1676948)) (= (_1!28747 (h!56335 (toList!4244 lt!1676948))) key!3287)))))

(declare-fun e!2799817 () Option!11033)

(assert (=> d!1378181 (= (getValueByKey!1013 (toList!4244 lt!1676948) key!3287) e!2799817)))

(declare-fun b!4494867 () Bool)

(assert (=> b!4494867 (= e!2799817 e!2799818)))

(declare-fun c!765815 () Bool)

(assert (=> b!4494867 (= c!765815 (and ((_ is Cons!50522) (toList!4244 lt!1676948)) (not (= (_1!28747 (h!56335 (toList!4244 lt!1676948))) key!3287))))))

(declare-fun b!4494866 () Bool)

(assert (=> b!4494866 (= e!2799817 (Some!11032 (_2!28747 (h!56335 (toList!4244 lt!1676948)))))))

(assert (= (and d!1378181 c!765814) b!4494866))

(assert (= (and d!1378181 (not c!765814)) b!4494867))

(assert (= (and b!4494867 c!765815) b!4494868))

(assert (= (and b!4494867 (not c!765815)) b!4494869))

(declare-fun m!5221803 () Bool)

(assert (=> b!4494868 m!5221803))

(assert (=> b!4494398 d!1378181))

(declare-fun d!1378183 () Bool)

(declare-fun res!1868260 () Bool)

(declare-fun e!2799829 () Bool)

(assert (=> d!1378183 (=> res!1868260 e!2799829)))

(assert (=> d!1378183 (= res!1868260 (and ((_ is Cons!50523) (toList!4243 lt!1676946)) (= (_1!28748 (h!56336 (toList!4243 lt!1676946))) hash!344)))))

(assert (=> d!1378183 (= (containsKey!1661 (toList!4243 lt!1676946) hash!344) e!2799829)))

(declare-fun b!4494882 () Bool)

(declare-fun e!2799830 () Bool)

(assert (=> b!4494882 (= e!2799829 e!2799830)))

(declare-fun res!1868261 () Bool)

(assert (=> b!4494882 (=> (not res!1868261) (not e!2799830))))

(assert (=> b!4494882 (= res!1868261 (and (or (not ((_ is Cons!50523) (toList!4243 lt!1676946))) (bvsle (_1!28748 (h!56336 (toList!4243 lt!1676946))) hash!344)) ((_ is Cons!50523) (toList!4243 lt!1676946)) (bvslt (_1!28748 (h!56336 (toList!4243 lt!1676946))) hash!344)))))

(declare-fun b!4494883 () Bool)

(assert (=> b!4494883 (= e!2799830 (containsKey!1661 (t!357605 (toList!4243 lt!1676946)) hash!344))))

(assert (= (and d!1378183 (not res!1868260)) b!4494882))

(assert (= (and b!4494882 res!1868261) b!4494883))

(declare-fun m!5221815 () Bool)

(assert (=> b!4494883 m!5221815))

(assert (=> d!1377963 d!1378183))

(declare-fun d!1378193 () Bool)

(declare-fun noDuplicatedKeys!236 (List!50646) Bool)

(assert (=> d!1378193 (= (invariantList!977 (toList!4244 lt!1677146)) (noDuplicatedKeys!236 (toList!4244 lt!1677146)))))

(declare-fun bs!832854 () Bool)

(assert (= bs!832854 d!1378193))

(declare-fun m!5221823 () Bool)

(assert (=> bs!832854 m!5221823))

(assert (=> d!1377973 d!1378193))

(declare-fun d!1378197 () Bool)

(declare-fun res!1868263 () Bool)

(declare-fun e!2799835 () Bool)

(assert (=> d!1378197 (=> res!1868263 e!2799835)))

(assert (=> d!1378197 (= res!1868263 ((_ is Nil!50523) (toList!4243 lm!1477)))))

(assert (=> d!1378197 (= (forall!10155 (toList!4243 lm!1477) lambda!167823) e!2799835)))

(declare-fun b!4494891 () Bool)

(declare-fun e!2799836 () Bool)

(assert (=> b!4494891 (= e!2799835 e!2799836)))

(declare-fun res!1868264 () Bool)

(assert (=> b!4494891 (=> (not res!1868264) (not e!2799836))))

(assert (=> b!4494891 (= res!1868264 (dynLambda!21093 lambda!167823 (h!56336 (toList!4243 lm!1477))))))

(declare-fun b!4494892 () Bool)

(assert (=> b!4494892 (= e!2799836 (forall!10155 (t!357605 (toList!4243 lm!1477)) lambda!167823))))

(assert (= (and d!1378197 (not res!1868263)) b!4494891))

(assert (= (and b!4494891 res!1868264) b!4494892))

(declare-fun b_lambda!151821 () Bool)

(assert (=> (not b_lambda!151821) (not b!4494891)))

(declare-fun m!5221827 () Bool)

(assert (=> b!4494891 m!5221827))

(declare-fun m!5221829 () Bool)

(assert (=> b!4494892 m!5221829))

(assert (=> d!1377973 d!1378197))

(assert (=> b!4494345 d!1378055))

(assert (=> b!4494345 d!1378057))

(declare-fun bs!832855 () Bool)

(declare-fun b!4494897 () Bool)

(assert (= bs!832855 (and b!4494897 b!4494831)))

(declare-fun lambda!167957 () Int)

(assert (=> bs!832855 (= (= (extractMap!1174 (t!357605 (toList!4243 lm!1477))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167957 lambda!167953))))

(declare-fun bs!832856 () Bool)

(assert (= bs!832856 (and b!4494897 d!1378001)))

(assert (=> bs!832856 (not (= lambda!167957 lambda!167834))))

(declare-fun bs!832857 () Bool)

(assert (= bs!832857 (and b!4494897 d!1378061)))

(assert (=> bs!832857 (= (= (extractMap!1174 (t!357605 (toList!4243 lm!1477))) lt!1677416) (= lambda!167957 lambda!167955))))

(declare-fun bs!832858 () Bool)

(assert (= bs!832858 (and b!4494897 b!4494830)))

(assert (=> bs!832858 (= (= (extractMap!1174 (t!357605 (toList!4243 lm!1477))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167957 lambda!167952))))

(assert (=> bs!832855 (= (= (extractMap!1174 (t!357605 (toList!4243 lm!1477))) lt!1677422) (= lambda!167957 lambda!167954))))

(assert (=> b!4494897 true))

(declare-fun bs!832859 () Bool)

(declare-fun b!4494898 () Bool)

(assert (= bs!832859 (and b!4494898 b!4494831)))

(declare-fun lambda!167958 () Int)

(assert (=> bs!832859 (= (= (extractMap!1174 (t!357605 (toList!4243 lm!1477))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167958 lambda!167953))))

(declare-fun bs!832860 () Bool)

(assert (= bs!832860 (and b!4494898 d!1378001)))

(assert (=> bs!832860 (not (= lambda!167958 lambda!167834))))

(declare-fun bs!832861 () Bool)

(assert (= bs!832861 (and b!4494898 d!1378061)))

(assert (=> bs!832861 (= (= (extractMap!1174 (t!357605 (toList!4243 lm!1477))) lt!1677416) (= lambda!167958 lambda!167955))))

(declare-fun bs!832862 () Bool)

(assert (= bs!832862 (and b!4494898 b!4494897)))

(assert (=> bs!832862 (= lambda!167958 lambda!167957)))

(declare-fun bs!832863 () Bool)

(assert (= bs!832863 (and b!4494898 b!4494830)))

(assert (=> bs!832863 (= (= (extractMap!1174 (t!357605 (toList!4243 lm!1477))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167958 lambda!167952))))

(assert (=> bs!832859 (= (= (extractMap!1174 (t!357605 (toList!4243 lm!1477))) lt!1677422) (= lambda!167958 lambda!167954))))

(assert (=> b!4494898 true))

(declare-fun lambda!167959 () Int)

(declare-fun lt!1677463 () ListMap!3505)

(assert (=> bs!832859 (= (= lt!1677463 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167959 lambda!167953))))

(assert (=> b!4494898 (= (= lt!1677463 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167959 lambda!167958))))

(assert (=> bs!832860 (not (= lambda!167959 lambda!167834))))

(assert (=> bs!832861 (= (= lt!1677463 lt!1677416) (= lambda!167959 lambda!167955))))

(assert (=> bs!832862 (= (= lt!1677463 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167959 lambda!167957))))

(assert (=> bs!832863 (= (= lt!1677463 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167959 lambda!167952))))

(assert (=> bs!832859 (= (= lt!1677463 lt!1677422) (= lambda!167959 lambda!167954))))

(assert (=> b!4494898 true))

(declare-fun bs!832864 () Bool)

(declare-fun d!1378201 () Bool)

(assert (= bs!832864 (and d!1378201 b!4494898)))

(declare-fun lambda!167960 () Int)

(declare-fun lt!1677457 () ListMap!3505)

(assert (=> bs!832864 (= (= lt!1677457 lt!1677463) (= lambda!167960 lambda!167959))))

(declare-fun bs!832865 () Bool)

(assert (= bs!832865 (and d!1378201 b!4494831)))

(assert (=> bs!832865 (= (= lt!1677457 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167960 lambda!167953))))

(assert (=> bs!832864 (= (= lt!1677457 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167960 lambda!167958))))

(declare-fun bs!832866 () Bool)

(assert (= bs!832866 (and d!1378201 d!1378001)))

(assert (=> bs!832866 (not (= lambda!167960 lambda!167834))))

(declare-fun bs!832867 () Bool)

(assert (= bs!832867 (and d!1378201 d!1378061)))

(assert (=> bs!832867 (= (= lt!1677457 lt!1677416) (= lambda!167960 lambda!167955))))

(declare-fun bs!832868 () Bool)

(assert (= bs!832868 (and d!1378201 b!4494897)))

(assert (=> bs!832868 (= (= lt!1677457 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167960 lambda!167957))))

(declare-fun bs!832869 () Bool)

(assert (= bs!832869 (and d!1378201 b!4494830)))

(assert (=> bs!832869 (= (= lt!1677457 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167960 lambda!167952))))

(assert (=> bs!832865 (= (= lt!1677457 lt!1677422) (= lambda!167960 lambda!167954))))

(assert (=> d!1378201 true))

(declare-fun call!312754 () Bool)

(declare-fun c!765821 () Bool)

(declare-fun bm!312749 () Bool)

(assert (=> bm!312749 (= call!312754 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (ite c!765821 lambda!167957 lambda!167959)))))

(declare-fun b!4494895 () Bool)

(declare-fun e!2799840 () Bool)

(assert (=> b!4494895 (= e!2799840 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) lambda!167959))))

(declare-fun b!4494896 () Bool)

(declare-fun e!2799838 () Bool)

(assert (=> b!4494896 (= e!2799838 (invariantList!977 (toList!4244 lt!1677457)))))

(declare-fun e!2799839 () ListMap!3505)

(assert (=> b!4494897 (= e!2799839 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))

(declare-fun lt!1677460 () Unit!91160)

(declare-fun call!312756 () Unit!91160)

(assert (=> b!4494897 (= lt!1677460 call!312756)))

(assert (=> b!4494897 call!312754))

(declare-fun lt!1677454 () Unit!91160)

(assert (=> b!4494897 (= lt!1677454 lt!1677460)))

(declare-fun call!312755 () Bool)

(assert (=> b!4494897 call!312755))

(declare-fun lt!1677459 () Unit!91160)

(declare-fun Unit!91222 () Unit!91160)

(assert (=> b!4494897 (= lt!1677459 Unit!91222)))

(declare-fun bm!312750 () Bool)

(assert (=> bm!312750 (= call!312755 (forall!10157 (ite c!765821 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (t!357604 (_2!28748 (h!56336 (toList!4243 lm!1477))))) (ite c!765821 lambda!167957 lambda!167959)))))

(assert (=> b!4494898 (= e!2799839 lt!1677463)))

(declare-fun lt!1677451 () ListMap!3505)

(assert (=> b!4494898 (= lt!1677451 (+!1460 (extractMap!1174 (t!357605 (toList!4243 lm!1477))) (h!56335 (_2!28748 (h!56336 (toList!4243 lm!1477))))))))

(assert (=> b!4494898 (= lt!1677463 (addToMapMapFromBucket!645 (t!357604 (_2!28748 (h!56336 (toList!4243 lm!1477)))) (+!1460 (extractMap!1174 (t!357605 (toList!4243 lm!1477))) (h!56335 (_2!28748 (h!56336 (toList!4243 lm!1477)))))))))

(declare-fun lt!1677467 () Unit!91160)

(assert (=> b!4494898 (= lt!1677467 call!312756)))

(assert (=> b!4494898 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) lambda!167958)))

(declare-fun lt!1677465 () Unit!91160)

(assert (=> b!4494898 (= lt!1677465 lt!1677467)))

(assert (=> b!4494898 (forall!10157 (toList!4244 lt!1677451) lambda!167959)))

(declare-fun lt!1677453 () Unit!91160)

(declare-fun Unit!91223 () Unit!91160)

(assert (=> b!4494898 (= lt!1677453 Unit!91223)))

(assert (=> b!4494898 call!312755))

(declare-fun lt!1677466 () Unit!91160)

(declare-fun Unit!91224 () Unit!91160)

(assert (=> b!4494898 (= lt!1677466 Unit!91224)))

(declare-fun lt!1677470 () Unit!91160)

(declare-fun Unit!91225 () Unit!91160)

(assert (=> b!4494898 (= lt!1677470 Unit!91225)))

(declare-fun lt!1677455 () Unit!91160)

(assert (=> b!4494898 (= lt!1677455 (forallContained!2413 (toList!4244 lt!1677451) lambda!167959 (h!56335 (_2!28748 (h!56336 (toList!4243 lm!1477))))))))

(assert (=> b!4494898 (contains!13180 lt!1677451 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lm!1477))))))))

(declare-fun lt!1677458 () Unit!91160)

(declare-fun Unit!91226 () Unit!91160)

(assert (=> b!4494898 (= lt!1677458 Unit!91226)))

(assert (=> b!4494898 (contains!13180 lt!1677463 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lm!1477))))))))

(declare-fun lt!1677456 () Unit!91160)

(declare-fun Unit!91227 () Unit!91160)

(assert (=> b!4494898 (= lt!1677456 Unit!91227)))

(assert (=> b!4494898 (forall!10157 (_2!28748 (h!56336 (toList!4243 lm!1477))) lambda!167959)))

(declare-fun lt!1677452 () Unit!91160)

(declare-fun Unit!91228 () Unit!91160)

(assert (=> b!4494898 (= lt!1677452 Unit!91228)))

(assert (=> b!4494898 (forall!10157 (toList!4244 lt!1677451) lambda!167959)))

(declare-fun lt!1677464 () Unit!91160)

(declare-fun Unit!91229 () Unit!91160)

(assert (=> b!4494898 (= lt!1677464 Unit!91229)))

(declare-fun lt!1677468 () Unit!91160)

(declare-fun Unit!91230 () Unit!91160)

(assert (=> b!4494898 (= lt!1677468 Unit!91230)))

(declare-fun lt!1677469 () Unit!91160)

(assert (=> b!4494898 (= lt!1677469 (addForallContainsKeyThenBeforeAdding!300 (extractMap!1174 (t!357605 (toList!4243 lm!1477))) lt!1677463 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lm!1477))))) (_2!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lm!1477)))))))))

(assert (=> b!4494898 call!312754))

(declare-fun lt!1677461 () Unit!91160)

(assert (=> b!4494898 (= lt!1677461 lt!1677469)))

(assert (=> b!4494898 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) lambda!167959)))

(declare-fun lt!1677462 () Unit!91160)

(declare-fun Unit!91231 () Unit!91160)

(assert (=> b!4494898 (= lt!1677462 Unit!91231)))

(declare-fun res!1868269 () Bool)

(assert (=> b!4494898 (= res!1868269 (forall!10157 (_2!28748 (h!56336 (toList!4243 lm!1477))) lambda!167959))))

(assert (=> b!4494898 (=> (not res!1868269) (not e!2799840))))

(assert (=> b!4494898 e!2799840))

(declare-fun lt!1677471 () Unit!91160)

(declare-fun Unit!91232 () Unit!91160)

(assert (=> b!4494898 (= lt!1677471 Unit!91232)))

(assert (=> d!1378201 e!2799838))

(declare-fun res!1868267 () Bool)

(assert (=> d!1378201 (=> (not res!1868267) (not e!2799838))))

(assert (=> d!1378201 (= res!1868267 (forall!10157 (_2!28748 (h!56336 (toList!4243 lm!1477))) lambda!167960))))

(assert (=> d!1378201 (= lt!1677457 e!2799839)))

(assert (=> d!1378201 (= c!765821 ((_ is Nil!50522) (_2!28748 (h!56336 (toList!4243 lm!1477)))))))

(assert (=> d!1378201 (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lm!1477))))))

(assert (=> d!1378201 (= (addToMapMapFromBucket!645 (_2!28748 (h!56336 (toList!4243 lm!1477))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) lt!1677457)))

(declare-fun b!4494899 () Bool)

(declare-fun res!1868268 () Bool)

(assert (=> b!4494899 (=> (not res!1868268) (not e!2799838))))

(assert (=> b!4494899 (= res!1868268 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) lambda!167960))))

(declare-fun bm!312751 () Bool)

(assert (=> bm!312751 (= call!312756 (lemmaContainsAllItsOwnKeys!300 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))

(assert (= (and d!1378201 c!765821) b!4494897))

(assert (= (and d!1378201 (not c!765821)) b!4494898))

(assert (= (and b!4494898 res!1868269) b!4494895))

(assert (= (or b!4494897 b!4494898) bm!312749))

(assert (= (or b!4494897 b!4494898) bm!312750))

(assert (= (or b!4494897 b!4494898) bm!312751))

(assert (= (and d!1378201 res!1868267) b!4494899))

(assert (= (and b!4494899 res!1868268) b!4494896))

(declare-fun m!5221861 () Bool)

(assert (=> b!4494898 m!5221861))

(declare-fun m!5221863 () Bool)

(assert (=> b!4494898 m!5221863))

(assert (=> b!4494898 m!5220735))

(declare-fun m!5221865 () Bool)

(assert (=> b!4494898 m!5221865))

(assert (=> b!4494898 m!5220735))

(declare-fun m!5221867 () Bool)

(assert (=> b!4494898 m!5221867))

(declare-fun m!5221869 () Bool)

(assert (=> b!4494898 m!5221869))

(declare-fun m!5221871 () Bool)

(assert (=> b!4494898 m!5221871))

(assert (=> b!4494898 m!5221867))

(declare-fun m!5221873 () Bool)

(assert (=> b!4494898 m!5221873))

(declare-fun m!5221875 () Bool)

(assert (=> b!4494898 m!5221875))

(assert (=> b!4494898 m!5221875))

(assert (=> b!4494898 m!5221863))

(declare-fun m!5221877 () Bool)

(assert (=> b!4494898 m!5221877))

(declare-fun m!5221879 () Bool)

(assert (=> b!4494898 m!5221879))

(declare-fun m!5221881 () Bool)

(assert (=> bm!312750 m!5221881))

(assert (=> bm!312751 m!5220735))

(declare-fun m!5221883 () Bool)

(assert (=> bm!312751 m!5221883))

(declare-fun m!5221885 () Bool)

(assert (=> b!4494899 m!5221885))

(assert (=> b!4494895 m!5221861))

(declare-fun m!5221887 () Bool)

(assert (=> bm!312749 m!5221887))

(declare-fun m!5221889 () Bool)

(assert (=> d!1378201 m!5221889))

(assert (=> d!1378201 m!5221289))

(declare-fun m!5221891 () Bool)

(assert (=> b!4494896 m!5221891))

(assert (=> b!4494444 d!1378201))

(assert (=> b!4494444 d!1377921))

(declare-fun d!1378209 () Bool)

(declare-fun res!1868277 () Bool)

(declare-fun e!2799851 () Bool)

(assert (=> d!1378209 (=> res!1868277 e!2799851)))

(assert (=> d!1378209 (= res!1868277 (and ((_ is Cons!50522) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (= (_1!28747 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) key!3287)))))

(assert (=> d!1378209 (= (containsKey!1662 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287) e!2799851)))

(declare-fun b!4494915 () Bool)

(declare-fun e!2799852 () Bool)

(assert (=> b!4494915 (= e!2799851 e!2799852)))

(declare-fun res!1868278 () Bool)

(assert (=> b!4494915 (=> (not res!1868278) (not e!2799852))))

(assert (=> b!4494915 (= res!1868278 ((_ is Cons!50522) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))

(declare-fun b!4494916 () Bool)

(assert (=> b!4494916 (= e!2799852 (containsKey!1662 (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) key!3287))))

(assert (= (and d!1378209 (not res!1868277)) b!4494915))

(assert (= (and b!4494915 res!1868278) b!4494916))

(declare-fun m!5221893 () Bool)

(assert (=> b!4494916 m!5221893))

(assert (=> b!4494349 d!1378209))

(declare-fun d!1378211 () Bool)

(assert (=> d!1378211 (containsKey!1662 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287)))

(declare-fun lt!1677476 () Unit!91160)

(declare-fun choose!29033 (List!50646 K!11935) Unit!91160)

(assert (=> d!1378211 (= lt!1677476 (choose!29033 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(assert (=> d!1378211 (invariantList!977 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))

(assert (=> d!1378211 (= (lemmaInGetKeysListThenContainsKey!424 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287) lt!1677476)))

(declare-fun bs!832870 () Bool)

(assert (= bs!832870 d!1378211))

(assert (=> bs!832870 m!5220983))

(declare-fun m!5221895 () Bool)

(assert (=> bs!832870 m!5221895))

(declare-fun m!5221897 () Bool)

(assert (=> bs!832870 m!5221897))

(assert (=> b!4494349 d!1378211))

(declare-fun d!1378213 () Bool)

(declare-fun lt!1677477 () Bool)

(assert (=> d!1378213 (= lt!1677477 (select (content!8236 (t!357605 (t!357605 (toList!4243 lm!1477)))) lt!1676945))))

(declare-fun e!2799853 () Bool)

(assert (=> d!1378213 (= lt!1677477 e!2799853)))

(declare-fun res!1868280 () Bool)

(assert (=> d!1378213 (=> (not res!1868280) (not e!2799853))))

(assert (=> d!1378213 (= res!1868280 ((_ is Cons!50523) (t!357605 (t!357605 (toList!4243 lm!1477)))))))

(assert (=> d!1378213 (= (contains!13179 (t!357605 (t!357605 (toList!4243 lm!1477))) lt!1676945) lt!1677477)))

(declare-fun b!4494917 () Bool)

(declare-fun e!2799854 () Bool)

(assert (=> b!4494917 (= e!2799853 e!2799854)))

(declare-fun res!1868279 () Bool)

(assert (=> b!4494917 (=> res!1868279 e!2799854)))

(assert (=> b!4494917 (= res!1868279 (= (h!56336 (t!357605 (t!357605 (toList!4243 lm!1477)))) lt!1676945))))

(declare-fun b!4494918 () Bool)

(assert (=> b!4494918 (= e!2799854 (contains!13179 (t!357605 (t!357605 (t!357605 (toList!4243 lm!1477)))) lt!1676945))))

(assert (= (and d!1378213 res!1868280) b!4494917))

(assert (= (and b!4494917 (not res!1868279)) b!4494918))

(declare-fun m!5221899 () Bool)

(assert (=> d!1378213 m!5221899))

(declare-fun m!5221901 () Bool)

(assert (=> d!1378213 m!5221901))

(declare-fun m!5221903 () Bool)

(assert (=> b!4494918 m!5221903))

(assert (=> b!4494498 d!1378213))

(declare-fun b!4494919 () Bool)

(declare-fun e!2799855 () Bool)

(assert (=> b!4494919 (= e!2799855 (not (contains!13183 (keys!17510 lt!1677156) key!3287)))))

(declare-fun b!4494920 () Bool)

(declare-fun e!2799858 () List!50649)

(assert (=> b!4494920 (= e!2799858 (getKeysList!425 (toList!4244 lt!1677156)))))

(declare-fun b!4494921 () Bool)

(declare-fun e!2799860 () Bool)

(assert (=> b!4494921 (= e!2799860 (contains!13183 (keys!17510 lt!1677156) key!3287))))

(declare-fun b!4494922 () Bool)

(declare-fun e!2799857 () Unit!91160)

(declare-fun e!2799859 () Unit!91160)

(assert (=> b!4494922 (= e!2799857 e!2799859)))

(declare-fun c!765827 () Bool)

(declare-fun call!312760 () Bool)

(assert (=> b!4494922 (= c!765827 call!312760)))

(declare-fun bm!312755 () Bool)

(assert (=> bm!312755 (= call!312760 (contains!13183 e!2799858 key!3287))))

(declare-fun c!765828 () Bool)

(declare-fun c!765826 () Bool)

(assert (=> bm!312755 (= c!765828 c!765826)))

(declare-fun b!4494924 () Bool)

(declare-fun Unit!91234 () Unit!91160)

(assert (=> b!4494924 (= e!2799859 Unit!91234)))

(declare-fun b!4494925 () Bool)

(declare-fun e!2799856 () Bool)

(assert (=> b!4494925 (= e!2799856 e!2799860)))

(declare-fun res!1868282 () Bool)

(assert (=> b!4494925 (=> (not res!1868282) (not e!2799860))))

(assert (=> b!4494925 (= res!1868282 (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1677156) key!3287)))))

(declare-fun b!4494926 () Bool)

(assert (=> b!4494926 (= e!2799858 (keys!17510 lt!1677156))))

(declare-fun b!4494927 () Bool)

(declare-fun lt!1677482 () Unit!91160)

(assert (=> b!4494927 (= e!2799857 lt!1677482)))

(declare-fun lt!1677483 () Unit!91160)

(assert (=> b!4494927 (= lt!1677483 (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 lt!1677156) key!3287))))

(assert (=> b!4494927 (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1677156) key!3287))))

(declare-fun lt!1677478 () Unit!91160)

(assert (=> b!4494927 (= lt!1677478 lt!1677483)))

(assert (=> b!4494927 (= lt!1677482 (lemmaInListThenGetKeysListContains!421 (toList!4244 lt!1677156) key!3287))))

(assert (=> b!4494927 call!312760))

(declare-fun d!1378215 () Bool)

(assert (=> d!1378215 e!2799856))

(declare-fun res!1868281 () Bool)

(assert (=> d!1378215 (=> res!1868281 e!2799856)))

(assert (=> d!1378215 (= res!1868281 e!2799855)))

(declare-fun res!1868283 () Bool)

(assert (=> d!1378215 (=> (not res!1868283) (not e!2799855))))

(declare-fun lt!1677485 () Bool)

(assert (=> d!1378215 (= res!1868283 (not lt!1677485))))

(declare-fun lt!1677484 () Bool)

(assert (=> d!1378215 (= lt!1677485 lt!1677484)))

(declare-fun lt!1677481 () Unit!91160)

(assert (=> d!1378215 (= lt!1677481 e!2799857)))

(assert (=> d!1378215 (= c!765826 lt!1677484)))

(assert (=> d!1378215 (= lt!1677484 (containsKey!1662 (toList!4244 lt!1677156) key!3287))))

(assert (=> d!1378215 (= (contains!13180 lt!1677156 key!3287) lt!1677485)))

(declare-fun b!4494923 () Bool)

(assert (=> b!4494923 false))

(declare-fun lt!1677480 () Unit!91160)

(declare-fun lt!1677479 () Unit!91160)

(assert (=> b!4494923 (= lt!1677480 lt!1677479)))

(assert (=> b!4494923 (containsKey!1662 (toList!4244 lt!1677156) key!3287)))

(assert (=> b!4494923 (= lt!1677479 (lemmaInGetKeysListThenContainsKey!424 (toList!4244 lt!1677156) key!3287))))

(declare-fun Unit!91243 () Unit!91160)

(assert (=> b!4494923 (= e!2799859 Unit!91243)))

(assert (= (and d!1378215 c!765826) b!4494927))

(assert (= (and d!1378215 (not c!765826)) b!4494922))

(assert (= (and b!4494922 c!765827) b!4494923))

(assert (= (and b!4494922 (not c!765827)) b!4494924))

(assert (= (or b!4494927 b!4494922) bm!312755))

(assert (= (and bm!312755 c!765828) b!4494920))

(assert (= (and bm!312755 (not c!765828)) b!4494926))

(assert (= (and d!1378215 res!1868283) b!4494919))

(assert (= (and d!1378215 (not res!1868281)) b!4494925))

(assert (= (and b!4494925 res!1868282) b!4494921))

(assert (=> b!4494919 m!5221217))

(assert (=> b!4494919 m!5221217))

(declare-fun m!5221905 () Bool)

(assert (=> b!4494919 m!5221905))

(declare-fun m!5221907 () Bool)

(assert (=> bm!312755 m!5221907))

(declare-fun m!5221909 () Bool)

(assert (=> d!1378215 m!5221909))

(assert (=> b!4494923 m!5221909))

(declare-fun m!5221911 () Bool)

(assert (=> b!4494923 m!5221911))

(declare-fun m!5221913 () Bool)

(assert (=> b!4494925 m!5221913))

(assert (=> b!4494925 m!5221913))

(declare-fun m!5221915 () Bool)

(assert (=> b!4494925 m!5221915))

(assert (=> b!4494926 m!5221217))

(declare-fun m!5221917 () Bool)

(assert (=> b!4494920 m!5221917))

(declare-fun m!5221919 () Bool)

(assert (=> b!4494927 m!5221919))

(assert (=> b!4494927 m!5221913))

(assert (=> b!4494927 m!5221913))

(assert (=> b!4494927 m!5221915))

(declare-fun m!5221921 () Bool)

(assert (=> b!4494927 m!5221921))

(assert (=> b!4494921 m!5221217))

(assert (=> b!4494921 m!5221217))

(assert (=> b!4494921 m!5221905))

(assert (=> d!1377987 d!1378215))

(declare-fun b!4495036 () Bool)

(declare-fun e!2799935 () Bool)

(declare-fun call!312780 () (InoxSet tuple2!50906))

(declare-fun call!312777 () (InoxSet tuple2!50906))

(assert (=> b!4495036 (= e!2799935 (= call!312780 call!312777))))

(declare-fun b!4495037 () Bool)

(declare-fun lt!1677587 () Unit!91160)

(declare-fun e!2799932 () Unit!91160)

(assert (=> b!4495037 (= lt!1677587 e!2799932)))

(declare-fun c!765866 () Bool)

(declare-fun call!312782 () Bool)

(assert (=> b!4495037 (= c!765866 call!312782)))

(declare-fun lt!1677592 () Unit!91160)

(declare-fun e!2799929 () Unit!91160)

(assert (=> b!4495037 (= lt!1677592 e!2799929)))

(declare-fun c!765871 () Bool)

(assert (=> b!4495037 (= c!765871 (contains!13183 (getKeysList!425 (t!357604 (toList!4244 lt!1676948))) (_1!28747 (h!56335 (toList!4244 lt!1676948)))))))

(declare-fun lt!1677589 () List!50646)

(declare-fun $colon$colon!881 (List!50646 tuple2!50906) List!50646)

(assert (=> b!4495037 (= lt!1677589 ($colon$colon!881 (removePresrvNoDuplicatedKeys!101 (t!357604 (toList!4244 lt!1676948)) key!3287) (h!56335 (toList!4244 lt!1676948))))))

(declare-fun e!2799928 () List!50646)

(assert (=> b!4495037 (= e!2799928 lt!1677589)))

(declare-fun d!1378217 () Bool)

(declare-fun e!2799933 () Bool)

(assert (=> d!1378217 e!2799933))

(declare-fun res!1868324 () Bool)

(assert (=> d!1378217 (=> (not res!1868324) (not e!2799933))))

(declare-fun lt!1677586 () List!50646)

(assert (=> d!1378217 (= res!1868324 (invariantList!977 lt!1677586))))

(declare-fun e!2799931 () List!50646)

(assert (=> d!1378217 (= lt!1677586 e!2799931)))

(declare-fun c!765865 () Bool)

(assert (=> d!1378217 (= c!765865 (and ((_ is Cons!50522) (toList!4244 lt!1676948)) (= (_1!28747 (h!56335 (toList!4244 lt!1676948))) key!3287)))))

(assert (=> d!1378217 (invariantList!977 (toList!4244 lt!1676948))))

(assert (=> d!1378217 (= (removePresrvNoDuplicatedKeys!101 (toList!4244 lt!1676948) key!3287) lt!1677586)))

(declare-fun b!4495038 () Bool)

(declare-fun get!16502 (Option!11033) V!12181)

(assert (=> b!4495038 (= e!2799935 (= call!312780 ((_ map and) call!312777 ((_ map not) (store ((as const (Array tuple2!50906 Bool)) false) (tuple2!50907 key!3287 (get!16502 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287))) true)))))))

(assert (=> b!4495038 (containsKey!1662 (toList!4244 lt!1676948) key!3287)))

(declare-fun lt!1677581 () Unit!91160)

(assert (=> b!4495038 (= lt!1677581 (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 lt!1676948) key!3287))))

(assert (=> b!4495038 (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287))))

(declare-fun lt!1677595 () Unit!91160)

(assert (=> b!4495038 (= lt!1677595 lt!1677581)))

(declare-fun bm!312772 () Bool)

(declare-fun call!312779 () Bool)

(declare-fun lt!1677585 () K!11935)

(assert (=> bm!312772 (= call!312779 (containsKey!1662 (t!357604 (toList!4244 lt!1676948)) (ite c!765865 lt!1677585 (_1!28747 (h!56335 (toList!4244 lt!1676948))))))))

(declare-fun b!4495039 () Bool)

(declare-fun res!1868323 () Bool)

(assert (=> b!4495039 (=> (not res!1868323) (not e!2799933))))

(assert (=> b!4495039 (= res!1868323 (= (content!8239 (getKeysList!425 lt!1677586)) ((_ map and) (content!8239 (getKeysList!425 (toList!4244 lt!1676948))) ((_ map not) (store ((as const (Array K!11935 Bool)) false) key!3287 true)))))))

(declare-fun b!4495040 () Bool)

(assert (=> b!4495040 (= e!2799931 (t!357604 (toList!4244 lt!1676948)))))

(declare-fun c!765869 () Bool)

(assert (=> b!4495040 (= c!765869 call!312782)))

(declare-fun lt!1677579 () Unit!91160)

(declare-fun e!2799930 () Unit!91160)

(assert (=> b!4495040 (= lt!1677579 e!2799930)))

(declare-fun b!4495041 () Bool)

(declare-fun Unit!91246 () Unit!91160)

(assert (=> b!4495041 (= e!2799932 Unit!91246)))

(declare-fun b!4495042 () Bool)

(declare-fun call!312778 () (InoxSet tuple2!50906))

(declare-fun call!312781 () (InoxSet tuple2!50906))

(assert (=> b!4495042 (= call!312778 call!312781)))

(declare-fun Unit!91247 () Unit!91160)

(assert (=> b!4495042 (= e!2799930 Unit!91247)))

(declare-fun bm!312773 () Bool)

(assert (=> bm!312773 (= call!312778 (content!8238 (t!357604 (toList!4244 lt!1676948))))))

(declare-fun b!4495043 () Bool)

(declare-fun res!1868322 () Bool)

(assert (=> b!4495043 (=> (not res!1868322) (not e!2799933))))

(assert (=> b!4495043 (= res!1868322 (not (containsKey!1662 lt!1677586 key!3287)))))

(declare-fun b!4495044 () Bool)

(declare-fun Unit!91248 () Unit!91160)

(assert (=> b!4495044 (= e!2799929 Unit!91248)))

(declare-fun bm!312774 () Bool)

(assert (=> bm!312774 (= call!312781 (content!8238 (toList!4244 lt!1676948)))))

(declare-fun b!4495045 () Bool)

(assert (=> b!4495045 (= e!2799928 Nil!50522)))

(declare-fun b!4495046 () Bool)

(assert (=> b!4495046 (= e!2799931 e!2799928)))

(declare-fun c!765870 () Bool)

(assert (=> b!4495046 (= c!765870 (and ((_ is Cons!50522) (toList!4244 lt!1676948)) (not (= (_1!28747 (h!56335 (toList!4244 lt!1676948))) key!3287))))))

(declare-fun bm!312775 () Bool)

(assert (=> bm!312775 (= call!312780 (content!8238 lt!1677586))))

(declare-fun b!4495047 () Bool)

(assert (=> b!4495047 (= call!312778 ((_ map and) call!312781 ((_ map not) (store ((as const (Array tuple2!50906 Bool)) false) (tuple2!50907 key!3287 (get!16502 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287))) true))))))

(declare-fun lt!1677590 () Unit!91160)

(declare-fun e!2799934 () Unit!91160)

(assert (=> b!4495047 (= lt!1677590 e!2799934)))

(declare-fun c!765864 () Bool)

(declare-fun contains!13184 (List!50646 tuple2!50906) Bool)

(assert (=> b!4495047 (= c!765864 (contains!13184 (t!357604 (toList!4244 lt!1676948)) (tuple2!50907 key!3287 (get!16502 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287)))))))

(declare-fun Unit!91249 () Unit!91160)

(assert (=> b!4495047 (= e!2799930 Unit!91249)))

(declare-fun b!4495048 () Bool)

(declare-fun Unit!91250 () Unit!91160)

(assert (=> b!4495048 (= e!2799934 Unit!91250)))

(declare-fun b!4495049 () Bool)

(declare-fun e!2799927 () List!50646)

(assert (=> b!4495049 (= e!2799927 (toList!4244 lt!1676948))))

(declare-fun b!4495050 () Bool)

(declare-fun Unit!91251 () Unit!91160)

(assert (=> b!4495050 (= e!2799929 Unit!91251)))

(declare-fun lt!1677583 () Unit!91160)

(assert (=> b!4495050 (= lt!1677583 (lemmaInGetKeysListThenContainsKey!424 (t!357604 (toList!4244 lt!1676948)) (_1!28747 (h!56335 (toList!4244 lt!1676948)))))))

(assert (=> b!4495050 call!312779))

(declare-fun lt!1677594 () Unit!91160)

(assert (=> b!4495050 (= lt!1677594 lt!1677583)))

(assert (=> b!4495050 false))

(declare-fun bm!312776 () Bool)

(assert (=> bm!312776 (= call!312782 (containsKey!1662 e!2799927 (ite c!765865 key!3287 (_1!28747 (h!56335 (toList!4244 lt!1676948))))))))

(declare-fun c!765868 () Bool)

(assert (=> bm!312776 (= c!765868 c!765865)))

(declare-fun b!4495051 () Bool)

(assert (=> b!4495051 (= e!2799933 e!2799935)))

(declare-fun c!765867 () Bool)

(assert (=> b!4495051 (= c!765867 (containsKey!1662 (toList!4244 lt!1676948) key!3287))))

(declare-fun b!4495052 () Bool)

(assert (=> b!4495052 (= e!2799927 (removePresrvNoDuplicatedKeys!101 (t!357604 (toList!4244 lt!1676948)) key!3287))))

(declare-fun b!4495053 () Bool)

(declare-fun Unit!91252 () Unit!91160)

(assert (=> b!4495053 (= e!2799932 Unit!91252)))

(declare-fun lt!1677580 () List!50646)

(assert (=> b!4495053 (= lt!1677580 (removePresrvNoDuplicatedKeys!101 (t!357604 (toList!4244 lt!1676948)) key!3287))))

(declare-fun lt!1677582 () Unit!91160)

(assert (=> b!4495053 (= lt!1677582 (lemmaInListThenGetKeysListContains!421 lt!1677580 (_1!28747 (h!56335 (toList!4244 lt!1676948)))))))

(assert (=> b!4495053 (contains!13183 (getKeysList!425 lt!1677580) (_1!28747 (h!56335 (toList!4244 lt!1676948))))))

(declare-fun lt!1677593 () Unit!91160)

(assert (=> b!4495053 (= lt!1677593 lt!1677582)))

(assert (=> b!4495053 false))

(declare-fun b!4495054 () Bool)

(declare-fun Unit!91253 () Unit!91160)

(assert (=> b!4495054 (= e!2799934 Unit!91253)))

(declare-fun lt!1677588 () V!12181)

(assert (=> b!4495054 (= lt!1677588 (get!16502 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287)))))

(assert (=> b!4495054 (= lt!1677585 key!3287)))

(declare-fun lt!1677578 () K!11935)

(assert (=> b!4495054 (= lt!1677578 key!3287)))

(declare-fun lt!1677591 () Unit!91160)

(declare-fun lemmaContainsTupleThenContainsKey!36 (List!50646 K!11935 V!12181) Unit!91160)

(assert (=> b!4495054 (= lt!1677591 (lemmaContainsTupleThenContainsKey!36 (t!357604 (toList!4244 lt!1676948)) lt!1677585 (get!16502 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287))))))

(assert (=> b!4495054 call!312779))

(declare-fun lt!1677584 () Unit!91160)

(assert (=> b!4495054 (= lt!1677584 lt!1677591)))

(assert (=> b!4495054 false))

(declare-fun bm!312777 () Bool)

(assert (=> bm!312777 (= call!312777 (content!8238 (toList!4244 lt!1676948)))))

(assert (= (and d!1378217 c!765865) b!4495040))

(assert (= (and d!1378217 (not c!765865)) b!4495046))

(assert (= (and b!4495040 c!765869) b!4495047))

(assert (= (and b!4495040 (not c!765869)) b!4495042))

(assert (= (and b!4495047 c!765864) b!4495054))

(assert (= (and b!4495047 (not c!765864)) b!4495048))

(assert (= (or b!4495047 b!4495042) bm!312773))

(assert (= (or b!4495047 b!4495042) bm!312774))

(assert (= (and b!4495046 c!765870) b!4495037))

(assert (= (and b!4495046 (not c!765870)) b!4495045))

(assert (= (and b!4495037 c!765871) b!4495050))

(assert (= (and b!4495037 (not c!765871)) b!4495044))

(assert (= (and b!4495037 c!765866) b!4495053))

(assert (= (and b!4495037 (not c!765866)) b!4495041))

(assert (= (or b!4495054 b!4495050) bm!312772))

(assert (= (or b!4495040 b!4495037) bm!312776))

(assert (= (and bm!312776 c!765868) b!4495049))

(assert (= (and bm!312776 (not c!765868)) b!4495052))

(assert (= (and d!1378217 res!1868324) b!4495043))

(assert (= (and b!4495043 res!1868322) b!4495039))

(assert (= (and b!4495039 res!1868323) b!4495051))

(assert (= (and b!4495051 c!765867) b!4495038))

(assert (= (and b!4495051 (not c!765867)) b!4495036))

(assert (= (or b!4495038 b!4495036) bm!312775))

(assert (= (or b!4495038 b!4495036) bm!312777))

(declare-fun m!5222107 () Bool)

(assert (=> bm!312775 m!5222107))

(declare-fun m!5222109 () Bool)

(assert (=> b!4495052 m!5222109))

(declare-fun m!5222111 () Bool)

(assert (=> b!4495039 m!5222111))

(assert (=> b!4495039 m!5221083))

(assert (=> b!4495039 m!5221083))

(declare-fun m!5222113 () Bool)

(assert (=> b!4495039 m!5222113))

(assert (=> b!4495039 m!5221223))

(assert (=> b!4495039 m!5222111))

(declare-fun m!5222115 () Bool)

(assert (=> b!4495039 m!5222115))

(declare-fun m!5222117 () Bool)

(assert (=> bm!312777 m!5222117))

(declare-fun m!5222119 () Bool)

(assert (=> b!4495043 m!5222119))

(assert (=> bm!312774 m!5222117))

(declare-fun m!5222121 () Bool)

(assert (=> d!1378217 m!5222121))

(assert (=> d!1378217 m!5221297))

(declare-fun m!5222123 () Bool)

(assert (=> bm!312776 m!5222123))

(assert (=> b!4495053 m!5222109))

(declare-fun m!5222125 () Bool)

(assert (=> b!4495053 m!5222125))

(declare-fun m!5222127 () Bool)

(assert (=> b!4495053 m!5222127))

(assert (=> b!4495053 m!5222127))

(declare-fun m!5222129 () Bool)

(assert (=> b!4495053 m!5222129))

(assert (=> b!4495037 m!5221309))

(assert (=> b!4495037 m!5221309))

(assert (=> b!4495037 m!5221311))

(assert (=> b!4495037 m!5222109))

(assert (=> b!4495037 m!5222109))

(declare-fun m!5222131 () Bool)

(assert (=> b!4495037 m!5222131))

(assert (=> b!4495047 m!5221079))

(assert (=> b!4495047 m!5221079))

(declare-fun m!5222133 () Bool)

(assert (=> b!4495047 m!5222133))

(declare-fun m!5222135 () Bool)

(assert (=> b!4495047 m!5222135))

(declare-fun m!5222137 () Bool)

(assert (=> b!4495047 m!5222137))

(assert (=> b!4495054 m!5221079))

(assert (=> b!4495054 m!5221079))

(assert (=> b!4495054 m!5222133))

(assert (=> b!4495054 m!5222133))

(declare-fun m!5222139 () Bool)

(assert (=> b!4495054 m!5222139))

(assert (=> b!4495051 m!5221075))

(assert (=> b!4495038 m!5221075))

(assert (=> b!4495038 m!5221079))

(assert (=> b!4495038 m!5221081))

(assert (=> b!4495038 m!5221079))

(assert (=> b!4495038 m!5221079))

(assert (=> b!4495038 m!5222133))

(assert (=> b!4495038 m!5222135))

(assert (=> b!4495038 m!5221085))

(declare-fun m!5222141 () Bool)

(assert (=> b!4495050 m!5222141))

(declare-fun m!5222143 () Bool)

(assert (=> bm!312772 m!5222143))

(declare-fun m!5222145 () Bool)

(assert (=> bm!312773 m!5222145))

(assert (=> d!1377987 d!1378217))

(declare-fun d!1378289 () Bool)

(declare-fun res!1868331 () Bool)

(declare-fun e!2799942 () Bool)

(assert (=> d!1378289 (=> res!1868331 e!2799942)))

(assert (=> d!1378289 (= res!1868331 (and ((_ is Cons!50522) lt!1676968) (= (_1!28747 (h!56335 lt!1676968)) key!3287)))))

(assert (=> d!1378289 (= (containsKey!1658 lt!1676968 key!3287) e!2799942)))

(declare-fun b!4495063 () Bool)

(declare-fun e!2799943 () Bool)

(assert (=> b!4495063 (= e!2799942 e!2799943)))

(declare-fun res!1868332 () Bool)

(assert (=> b!4495063 (=> (not res!1868332) (not e!2799943))))

(assert (=> b!4495063 (= res!1868332 ((_ is Cons!50522) lt!1676968))))

(declare-fun b!4495064 () Bool)

(assert (=> b!4495064 (= e!2799943 (containsKey!1658 (t!357604 lt!1676968) key!3287))))

(assert (= (and d!1378289 (not res!1868331)) b!4495063))

(assert (= (and b!4495063 res!1868332) b!4495064))

(declare-fun m!5222147 () Bool)

(assert (=> b!4495064 m!5222147))

(assert (=> d!1377861 d!1378289))

(declare-fun d!1378291 () Bool)

(declare-fun res!1868333 () Bool)

(declare-fun e!2799944 () Bool)

(assert (=> d!1378291 (=> res!1868333 e!2799944)))

(assert (=> d!1378291 (= res!1868333 (not ((_ is Cons!50522) lt!1676944)))))

(assert (=> d!1378291 (= (noDuplicateKeys!1118 lt!1676944) e!2799944)))

(declare-fun b!4495065 () Bool)

(declare-fun e!2799945 () Bool)

(assert (=> b!4495065 (= e!2799944 e!2799945)))

(declare-fun res!1868334 () Bool)

(assert (=> b!4495065 (=> (not res!1868334) (not e!2799945))))

(assert (=> b!4495065 (= res!1868334 (not (containsKey!1658 (t!357604 lt!1676944) (_1!28747 (h!56335 lt!1676944)))))))

(declare-fun b!4495066 () Bool)

(assert (=> b!4495066 (= e!2799945 (noDuplicateKeys!1118 (t!357604 lt!1676944)))))

(assert (= (and d!1378291 (not res!1868333)) b!4495065))

(assert (= (and b!4495065 res!1868334) b!4495066))

(declare-fun m!5222149 () Bool)

(assert (=> b!4495065 m!5222149))

(declare-fun m!5222151 () Bool)

(assert (=> b!4495066 m!5222151))

(assert (=> d!1377861 d!1378291))

(declare-fun d!1378293 () Bool)

(assert (=> d!1378293 (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1676948) key!3287))))

(declare-fun lt!1677620 () Unit!91160)

(declare-fun choose!29034 (List!50646 K!11935) Unit!91160)

(assert (=> d!1378293 (= lt!1677620 (choose!29034 (toList!4244 lt!1676948) key!3287))))

(assert (=> d!1378293 (invariantList!977 (toList!4244 lt!1676948))))

(assert (=> d!1378293 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 lt!1676948) key!3287) lt!1677620)))

(declare-fun bs!833027 () Bool)

(assert (= bs!833027 d!1378293))

(assert (=> bs!833027 m!5221079))

(assert (=> bs!833027 m!5221079))

(assert (=> bs!833027 m!5221081))

(declare-fun m!5222153 () Bool)

(assert (=> bs!833027 m!5222153))

(assert (=> bs!833027 m!5221297))

(assert (=> b!4494400 d!1378293))

(assert (=> b!4494400 d!1378179))

(assert (=> b!4494400 d!1378181))

(declare-fun d!1378295 () Bool)

(assert (=> d!1378295 (contains!13183 (getKeysList!425 (toList!4244 lt!1676948)) key!3287)))

(declare-fun lt!1677623 () Unit!91160)

(declare-fun choose!29035 (List!50646 K!11935) Unit!91160)

(assert (=> d!1378295 (= lt!1677623 (choose!29035 (toList!4244 lt!1676948) key!3287))))

(assert (=> d!1378295 (invariantList!977 (toList!4244 lt!1676948))))

(assert (=> d!1378295 (= (lemmaInListThenGetKeysListContains!421 (toList!4244 lt!1676948) key!3287) lt!1677623)))

(declare-fun bs!833043 () Bool)

(assert (= bs!833043 d!1378295))

(assert (=> bs!833043 m!5221083))

(assert (=> bs!833043 m!5221083))

(declare-fun m!5222155 () Bool)

(assert (=> bs!833043 m!5222155))

(declare-fun m!5222157 () Bool)

(assert (=> bs!833043 m!5222157))

(assert (=> bs!833043 m!5221297))

(assert (=> b!4494400 d!1378295))

(declare-fun c!765875 () Bool)

(declare-fun d!1378297 () Bool)

(assert (=> d!1378297 (= c!765875 ((_ is Nil!50522) (toList!4244 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))))

(declare-fun e!2799948 () (InoxSet tuple2!50906))

(assert (=> d!1378297 (= (content!8238 (toList!4244 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) e!2799948)))

(declare-fun b!4495071 () Bool)

(assert (=> b!4495071 (= e!2799948 ((as const (Array tuple2!50906 Bool)) false))))

(declare-fun b!4495072 () Bool)

(assert (=> b!4495072 (= e!2799948 ((_ map or) (store ((as const (Array tuple2!50906 Bool)) false) (h!56335 (toList!4244 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) true) (content!8238 (t!357604 (toList!4244 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))))))

(assert (= (and d!1378297 c!765875) b!4495071))

(assert (= (and d!1378297 (not c!765875)) b!4495072))

(declare-fun m!5222167 () Bool)

(assert (=> b!4495072 m!5222167))

(declare-fun m!5222171 () Bool)

(assert (=> b!4495072 m!5222171))

(assert (=> d!1377995 d!1378297))

(declare-fun d!1378299 () Bool)

(declare-fun c!765876 () Bool)

(assert (=> d!1378299 (= c!765876 ((_ is Nil!50522) (toList!4244 (-!344 lt!1676948 key!3287))))))

(declare-fun e!2799949 () (InoxSet tuple2!50906))

(assert (=> d!1378299 (= (content!8238 (toList!4244 (-!344 lt!1676948 key!3287))) e!2799949)))

(declare-fun b!4495073 () Bool)

(assert (=> b!4495073 (= e!2799949 ((as const (Array tuple2!50906 Bool)) false))))

(declare-fun b!4495074 () Bool)

(assert (=> b!4495074 (= e!2799949 ((_ map or) (store ((as const (Array tuple2!50906 Bool)) false) (h!56335 (toList!4244 (-!344 lt!1676948 key!3287))) true) (content!8238 (t!357604 (toList!4244 (-!344 lt!1676948 key!3287))))))))

(assert (= (and d!1378299 c!765876) b!4495073))

(assert (= (and d!1378299 (not c!765876)) b!4495074))

(declare-fun m!5222181 () Bool)

(assert (=> b!4495074 m!5222181))

(declare-fun m!5222183 () Bool)

(assert (=> b!4495074 m!5222183))

(assert (=> d!1377995 d!1378299))

(declare-fun d!1378301 () Bool)

(declare-fun c!765880 () Bool)

(assert (=> d!1378301 (= c!765880 ((_ is Nil!50523) (toList!4243 lm!1477)))))

(declare-fun e!2799953 () (InoxSet tuple2!50908))

(assert (=> d!1378301 (= (content!8236 (toList!4243 lm!1477)) e!2799953)))

(declare-fun b!4495081 () Bool)

(assert (=> b!4495081 (= e!2799953 ((as const (Array tuple2!50908 Bool)) false))))

(declare-fun b!4495082 () Bool)

(assert (=> b!4495082 (= e!2799953 ((_ map or) (store ((as const (Array tuple2!50908 Bool)) false) (h!56336 (toList!4243 lm!1477)) true) (content!8236 (t!357605 (toList!4243 lm!1477)))))))

(assert (= (and d!1378301 c!765880) b!4495081))

(assert (= (and d!1378301 (not c!765880)) b!4495082))

(declare-fun m!5222199 () Bool)

(assert (=> b!4495082 m!5222199))

(assert (=> b!4495082 m!5221281))

(assert (=> d!1377885 d!1378301))

(assert (=> b!4494352 d!1378057))

(declare-fun bs!833059 () Bool)

(declare-fun b!4495085 () Bool)

(assert (= bs!833059 (and b!4495085 b!4494549)))

(declare-fun lambda!167979 () Int)

(assert (=> bs!833059 (= (= (t!357604 (toList!4244 lt!1676952)) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!167979 lambda!167863))))

(declare-fun bs!833060 () Bool)

(assert (= bs!833060 (and b!4495085 b!4494614)))

(assert (=> bs!833060 (= (= (t!357604 (toList!4244 lt!1676952)) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (= lambda!167979 lambda!167888))))

(declare-fun bs!833061 () Bool)

(assert (= bs!833061 (and b!4495085 b!4494594)))

(assert (=> bs!833061 (= (= (t!357604 (toList!4244 lt!1676952)) (toList!4244 lt!1676952)) (= lambda!167979 lambda!167885))))

(declare-fun bs!833062 () Bool)

(assert (= bs!833062 (and b!4495085 b!4494545)))

(assert (=> bs!833062 (= (= (t!357604 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676948))) (= lambda!167979 lambda!167860))))

(declare-fun bs!833063 () Bool)

(assert (= bs!833063 (and b!4495085 b!4494551)))

(assert (=> bs!833063 (= (= (t!357604 (toList!4244 lt!1676952)) (toList!4244 lt!1676948)) (= lambda!167979 lambda!167864))))

(assert (=> b!4495085 true))

(declare-fun bs!833064 () Bool)

(declare-fun b!4495089 () Bool)

(assert (= bs!833064 (and b!4495089 b!4494549)))

(declare-fun lambda!167980 () Int)

(assert (=> bs!833064 (= (= (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952))) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!167980 lambda!167863))))

(declare-fun bs!833065 () Bool)

(assert (= bs!833065 (and b!4495089 b!4495085)))

(assert (=> bs!833065 (= (= (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952))) (t!357604 (toList!4244 lt!1676952))) (= lambda!167980 lambda!167979))))

(declare-fun bs!833066 () Bool)

(assert (= bs!833066 (and b!4495089 b!4494614)))

(assert (=> bs!833066 (= (= (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952))) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (= lambda!167980 lambda!167888))))

(declare-fun bs!833067 () Bool)

(assert (= bs!833067 (and b!4495089 b!4494594)))

(assert (=> bs!833067 (= (= (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952))) (toList!4244 lt!1676952)) (= lambda!167980 lambda!167885))))

(declare-fun bs!833068 () Bool)

(assert (= bs!833068 (and b!4495089 b!4494545)))

(assert (=> bs!833068 (= (= (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952))) (t!357604 (toList!4244 lt!1676948))) (= lambda!167980 lambda!167860))))

(declare-fun bs!833069 () Bool)

(assert (= bs!833069 (and b!4495089 b!4494551)))

(assert (=> bs!833069 (= (= (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952))) (toList!4244 lt!1676948)) (= lambda!167980 lambda!167864))))

(assert (=> b!4495089 true))

(declare-fun bs!833071 () Bool)

(declare-fun b!4495091 () Bool)

(assert (= bs!833071 (and b!4495091 b!4495089)))

(declare-fun lambda!167981 () Int)

(assert (=> bs!833071 (= (= (toList!4244 lt!1676952) (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952)))) (= lambda!167981 lambda!167980))))

(declare-fun bs!833072 () Bool)

(assert (= bs!833072 (and b!4495091 b!4494549)))

(assert (=> bs!833072 (= (= (toList!4244 lt!1676952) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!167981 lambda!167863))))

(declare-fun bs!833073 () Bool)

(assert (= bs!833073 (and b!4495091 b!4495085)))

(assert (=> bs!833073 (= (= (toList!4244 lt!1676952) (t!357604 (toList!4244 lt!1676952))) (= lambda!167981 lambda!167979))))

(declare-fun bs!833074 () Bool)

(assert (= bs!833074 (and b!4495091 b!4494614)))

(assert (=> bs!833074 (= (= (toList!4244 lt!1676952) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (= lambda!167981 lambda!167888))))

(declare-fun bs!833075 () Bool)

(assert (= bs!833075 (and b!4495091 b!4494594)))

(assert (=> bs!833075 (= lambda!167981 lambda!167885)))

(declare-fun bs!833076 () Bool)

(assert (= bs!833076 (and b!4495091 b!4494545)))

(assert (=> bs!833076 (= (= (toList!4244 lt!1676952) (t!357604 (toList!4244 lt!1676948))) (= lambda!167981 lambda!167860))))

(declare-fun bs!833077 () Bool)

(assert (= bs!833077 (and b!4495091 b!4494551)))

(assert (=> bs!833077 (= (= (toList!4244 lt!1676952) (toList!4244 lt!1676948)) (= lambda!167981 lambda!167864))))

(assert (=> b!4495091 true))

(declare-fun bs!833078 () Bool)

(declare-fun b!4495084 () Bool)

(assert (= bs!833078 (and b!4495084 b!4494544)))

(declare-fun lambda!167982 () Int)

(assert (=> bs!833078 (= lambda!167982 lambda!167865)))

(declare-fun bs!833079 () Bool)

(assert (= bs!833079 (and b!4495084 b!4494595)))

(assert (=> bs!833079 (= lambda!167982 lambda!167887)))

(declare-fun bs!833080 () Bool)

(assert (= bs!833080 (and b!4495084 b!4494615)))

(assert (=> bs!833080 (= lambda!167982 lambda!167889)))

(declare-fun b!4495083 () Bool)

(declare-fun res!1868335 () Bool)

(declare-fun e!2799956 () Bool)

(assert (=> b!4495083 (=> (not res!1868335) (not e!2799956))))

(declare-fun lt!1677627 () List!50649)

(assert (=> b!4495083 (= res!1868335 (= (length!300 lt!1677627) (length!301 (toList!4244 lt!1676952))))))

(assert (=> b!4495084 (= e!2799956 (= (content!8239 lt!1677627) (content!8239 (map!11092 (toList!4244 lt!1676952) lambda!167982))))))

(assert (=> b!4495085 false))

(declare-fun lt!1677630 () Unit!91160)

(assert (=> b!4495085 (= lt!1677630 (forallContained!2411 (getKeysList!425 (t!357604 (toList!4244 lt!1676952))) lambda!167979 (_1!28747 (h!56335 (toList!4244 lt!1676952)))))))

(declare-fun e!2799957 () Unit!91160)

(declare-fun Unit!91255 () Unit!91160)

(assert (=> b!4495085 (= e!2799957 Unit!91255)))

(declare-fun b!4495086 () Bool)

(declare-fun e!2799954 () List!50649)

(assert (=> b!4495086 (= e!2799954 Nil!50525)))

(declare-fun b!4495087 () Bool)

(assert (=> b!4495087 false))

(declare-fun e!2799955 () Unit!91160)

(declare-fun Unit!91256 () Unit!91160)

(assert (=> b!4495087 (= e!2799955 Unit!91256)))

(declare-fun b!4495088 () Bool)

(declare-fun Unit!91257 () Unit!91160)

(assert (=> b!4495088 (= e!2799955 Unit!91257)))

(declare-fun d!1378305 () Bool)

(assert (=> d!1378305 e!2799956))

(declare-fun res!1868336 () Bool)

(assert (=> d!1378305 (=> (not res!1868336) (not e!2799956))))

(assert (=> d!1378305 (= res!1868336 (noDuplicate!722 lt!1677627))))

(assert (=> d!1378305 (= lt!1677627 e!2799954)))

(declare-fun c!765883 () Bool)

(assert (=> d!1378305 (= c!765883 ((_ is Cons!50522) (toList!4244 lt!1676952)))))

(assert (=> d!1378305 (invariantList!977 (toList!4244 lt!1676952))))

(assert (=> d!1378305 (= (getKeysList!425 (toList!4244 lt!1676952)) lt!1677627)))

(assert (=> b!4495089 (= e!2799954 (Cons!50525 (_1!28747 (h!56335 (toList!4244 lt!1676952))) (getKeysList!425 (t!357604 (toList!4244 lt!1676952)))))))

(declare-fun c!765881 () Bool)

(assert (=> b!4495089 (= c!765881 (containsKey!1662 (t!357604 (toList!4244 lt!1676952)) (_1!28747 (h!56335 (toList!4244 lt!1676952)))))))

(declare-fun lt!1677631 () Unit!91160)

(assert (=> b!4495089 (= lt!1677631 e!2799955)))

(declare-fun c!765882 () Bool)

(assert (=> b!4495089 (= c!765882 (contains!13183 (getKeysList!425 (t!357604 (toList!4244 lt!1676952))) (_1!28747 (h!56335 (toList!4244 lt!1676952)))))))

(declare-fun lt!1677629 () Unit!91160)

(assert (=> b!4495089 (= lt!1677629 e!2799957)))

(declare-fun lt!1677628 () List!50649)

(assert (=> b!4495089 (= lt!1677628 (getKeysList!425 (t!357604 (toList!4244 lt!1676952))))))

(declare-fun lt!1677625 () Unit!91160)

(assert (=> b!4495089 (= lt!1677625 (lemmaForallContainsAddHeadPreserves!142 (t!357604 (toList!4244 lt!1676952)) lt!1677628 (h!56335 (toList!4244 lt!1676952))))))

(assert (=> b!4495089 (forall!10159 lt!1677628 lambda!167980)))

(declare-fun lt!1677626 () Unit!91160)

(assert (=> b!4495089 (= lt!1677626 lt!1677625)))

(declare-fun b!4495090 () Bool)

(declare-fun Unit!91258 () Unit!91160)

(assert (=> b!4495090 (= e!2799957 Unit!91258)))

(declare-fun res!1868337 () Bool)

(assert (=> b!4495091 (=> (not res!1868337) (not e!2799956))))

(assert (=> b!4495091 (= res!1868337 (forall!10159 lt!1677627 lambda!167981))))

(assert (= (and d!1378305 c!765883) b!4495089))

(assert (= (and d!1378305 (not c!765883)) b!4495086))

(assert (= (and b!4495089 c!765881) b!4495087))

(assert (= (and b!4495089 (not c!765881)) b!4495088))

(assert (= (and b!4495089 c!765882) b!4495085))

(assert (= (and b!4495089 (not c!765882)) b!4495090))

(assert (= (and d!1378305 res!1868336) b!4495083))

(assert (= (and b!4495083 res!1868335) b!4495091))

(assert (= (and b!4495091 res!1868337) b!4495084))

(declare-fun m!5222235 () Bool)

(assert (=> b!4495091 m!5222235))

(declare-fun m!5222237 () Bool)

(assert (=> d!1378305 m!5222237))

(declare-fun m!5222239 () Bool)

(assert (=> d!1378305 m!5222239))

(declare-fun m!5222241 () Bool)

(assert (=> b!4495084 m!5222241))

(declare-fun m!5222243 () Bool)

(assert (=> b!4495084 m!5222243))

(assert (=> b!4495084 m!5222243))

(declare-fun m!5222245 () Bool)

(assert (=> b!4495084 m!5222245))

(declare-fun m!5222247 () Bool)

(assert (=> b!4495083 m!5222247))

(assert (=> b!4495083 m!5221335))

(declare-fun m!5222251 () Bool)

(assert (=> b!4495089 m!5222251))

(declare-fun m!5222253 () Bool)

(assert (=> b!4495089 m!5222253))

(declare-fun m!5222255 () Bool)

(assert (=> b!4495089 m!5222255))

(declare-fun m!5222259 () Bool)

(assert (=> b!4495089 m!5222259))

(assert (=> b!4495089 m!5222251))

(declare-fun m!5222265 () Bool)

(assert (=> b!4495089 m!5222265))

(assert (=> b!4495085 m!5222251))

(assert (=> b!4495085 m!5222251))

(declare-fun m!5222271 () Bool)

(assert (=> b!4495085 m!5222271))

(assert (=> b!4494436 d!1378305))

(declare-fun d!1378323 () Bool)

(declare-fun res!1868354 () Bool)

(declare-fun e!2799977 () Bool)

(assert (=> d!1378323 (=> res!1868354 e!2799977)))

(assert (=> d!1378323 (= res!1868354 (not ((_ is Cons!50522) (t!357604 newBucket!178))))))

(assert (=> d!1378323 (= (noDuplicateKeys!1118 (t!357604 newBucket!178)) e!2799977)))

(declare-fun b!4495114 () Bool)

(declare-fun e!2799978 () Bool)

(assert (=> b!4495114 (= e!2799977 e!2799978)))

(declare-fun res!1868355 () Bool)

(assert (=> b!4495114 (=> (not res!1868355) (not e!2799978))))

(assert (=> b!4495114 (= res!1868355 (not (containsKey!1658 (t!357604 (t!357604 newBucket!178)) (_1!28747 (h!56335 (t!357604 newBucket!178))))))))

(declare-fun b!4495115 () Bool)

(assert (=> b!4495115 (= e!2799978 (noDuplicateKeys!1118 (t!357604 (t!357604 newBucket!178))))))

(assert (= (and d!1378323 (not res!1868354)) b!4495114))

(assert (= (and b!4495114 res!1868355) b!4495115))

(declare-fun m!5222277 () Bool)

(assert (=> b!4495114 m!5222277))

(declare-fun m!5222279 () Bool)

(assert (=> b!4495115 m!5222279))

(assert (=> b!4494496 d!1378323))

(declare-fun d!1378327 () Bool)

(declare-fun c!765887 () Bool)

(assert (=> d!1378327 (= c!765887 ((_ is Nil!50522) (toList!4244 lt!1676952)))))

(declare-fun e!2799979 () (InoxSet tuple2!50906))

(assert (=> d!1378327 (= (content!8238 (toList!4244 lt!1676952)) e!2799979)))

(declare-fun b!4495116 () Bool)

(assert (=> b!4495116 (= e!2799979 ((as const (Array tuple2!50906 Bool)) false))))

(declare-fun b!4495117 () Bool)

(assert (=> b!4495117 (= e!2799979 ((_ map or) (store ((as const (Array tuple2!50906 Bool)) false) (h!56335 (toList!4244 lt!1676952)) true) (content!8238 (t!357604 (toList!4244 lt!1676952)))))))

(assert (= (and d!1378327 c!765887) b!4495116))

(assert (= (and d!1378327 (not c!765887)) b!4495117))

(declare-fun m!5222281 () Bool)

(assert (=> b!4495117 m!5222281))

(declare-fun m!5222283 () Bool)

(assert (=> b!4495117 m!5222283))

(assert (=> d!1378017 d!1378327))

(declare-fun d!1378329 () Bool)

(declare-fun c!765888 () Bool)

(assert (=> d!1378329 (= c!765888 ((_ is Nil!50522) (toList!4244 lt!1676947)))))

(declare-fun e!2799980 () (InoxSet tuple2!50906))

(assert (=> d!1378329 (= (content!8238 (toList!4244 lt!1676947)) e!2799980)))

(declare-fun b!4495118 () Bool)

(assert (=> b!4495118 (= e!2799980 ((as const (Array tuple2!50906 Bool)) false))))

(declare-fun b!4495119 () Bool)

(assert (=> b!4495119 (= e!2799980 ((_ map or) (store ((as const (Array tuple2!50906 Bool)) false) (h!56335 (toList!4244 lt!1676947)) true) (content!8238 (t!357604 (toList!4244 lt!1676947)))))))

(assert (= (and d!1378329 c!765888) b!4495118))

(assert (= (and d!1378329 (not c!765888)) b!4495119))

(declare-fun m!5222285 () Bool)

(assert (=> b!4495119 m!5222285))

(declare-fun m!5222287 () Bool)

(assert (=> b!4495119 m!5222287))

(assert (=> d!1378017 d!1378329))

(declare-fun d!1378331 () Bool)

(declare-fun res!1868356 () Bool)

(declare-fun e!2799981 () Bool)

(assert (=> d!1378331 (=> res!1868356 e!2799981)))

(assert (=> d!1378331 (= res!1868356 (and ((_ is Cons!50522) (toList!4244 lt!1676952)) (= (_1!28747 (h!56335 (toList!4244 lt!1676952))) key!3287)))))

(assert (=> d!1378331 (= (containsKey!1662 (toList!4244 lt!1676952) key!3287) e!2799981)))

(declare-fun b!4495120 () Bool)

(declare-fun e!2799982 () Bool)

(assert (=> b!4495120 (= e!2799981 e!2799982)))

(declare-fun res!1868357 () Bool)

(assert (=> b!4495120 (=> (not res!1868357) (not e!2799982))))

(assert (=> b!4495120 (= res!1868357 ((_ is Cons!50522) (toList!4244 lt!1676952)))))

(declare-fun b!4495121 () Bool)

(assert (=> b!4495121 (= e!2799982 (containsKey!1662 (t!357604 (toList!4244 lt!1676952)) key!3287))))

(assert (= (and d!1378331 (not res!1868356)) b!4495120))

(assert (= (and b!4495120 res!1868357) b!4495121))

(declare-fun m!5222289 () Bool)

(assert (=> b!4495121 m!5222289))

(assert (=> d!1377971 d!1378331))

(declare-fun d!1378333 () Bool)

(declare-fun res!1868358 () Bool)

(declare-fun e!2799983 () Bool)

(assert (=> d!1378333 (=> res!1868358 e!2799983)))

(assert (=> d!1378333 (= res!1868358 (not ((_ is Cons!50522) (_2!28748 (h!56336 (toList!4243 lm!1477))))))))

(assert (=> d!1378333 (= (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lm!1477)))) e!2799983)))

(declare-fun b!4495122 () Bool)

(declare-fun e!2799984 () Bool)

(assert (=> b!4495122 (= e!2799983 e!2799984)))

(declare-fun res!1868359 () Bool)

(assert (=> b!4495122 (=> (not res!1868359) (not e!2799984))))

(assert (=> b!4495122 (= res!1868359 (not (containsKey!1658 (t!357604 (_2!28748 (h!56336 (toList!4243 lm!1477)))) (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lm!1477))))))))))

(declare-fun b!4495123 () Bool)

(assert (=> b!4495123 (= e!2799984 (noDuplicateKeys!1118 (t!357604 (_2!28748 (h!56336 (toList!4243 lm!1477))))))))

(assert (= (and d!1378333 (not res!1868358)) b!4495122))

(assert (= (and b!4495122 res!1868359) b!4495123))

(declare-fun m!5222291 () Bool)

(assert (=> b!4495122 m!5222291))

(declare-fun m!5222293 () Bool)

(assert (=> b!4495123 m!5222293))

(assert (=> bs!832708 d!1378333))

(declare-fun d!1378335 () Bool)

(declare-fun lt!1677641 () Bool)

(assert (=> d!1378335 (= lt!1677641 (select (content!8239 (keys!17510 lt!1676948)) key!3287))))

(declare-fun e!2799986 () Bool)

(assert (=> d!1378335 (= lt!1677641 e!2799986)))

(declare-fun res!1868360 () Bool)

(assert (=> d!1378335 (=> (not res!1868360) (not e!2799986))))

(assert (=> d!1378335 (= res!1868360 ((_ is Cons!50525) (keys!17510 lt!1676948)))))

(assert (=> d!1378335 (= (contains!13183 (keys!17510 lt!1676948) key!3287) lt!1677641)))

(declare-fun b!4495124 () Bool)

(declare-fun e!2799985 () Bool)

(assert (=> b!4495124 (= e!2799986 e!2799985)))

(declare-fun res!1868361 () Bool)

(assert (=> b!4495124 (=> res!1868361 e!2799985)))

(assert (=> b!4495124 (= res!1868361 (= (h!56340 (keys!17510 lt!1676948)) key!3287))))

(declare-fun b!4495125 () Bool)

(assert (=> b!4495125 (= e!2799985 (contains!13183 (t!357607 (keys!17510 lt!1676948)) key!3287))))

(assert (= (and d!1378335 res!1868360) b!4495124))

(assert (= (and b!4495124 (not res!1868361)) b!4495125))

(assert (=> d!1378335 m!5221069))

(assert (=> d!1378335 m!5221221))

(declare-fun m!5222295 () Bool)

(assert (=> d!1378335 m!5222295))

(declare-fun m!5222297 () Bool)

(assert (=> b!4495125 m!5222297))

(assert (=> b!4494392 d!1378335))

(declare-fun bs!833081 () Bool)

(declare-fun b!4495127 () Bool)

(assert (= bs!833081 (and b!4495127 b!4495089)))

(declare-fun lambda!167983 () Int)

(assert (=> bs!833081 (= (= (toList!4244 lt!1676948) (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952)))) (= lambda!167983 lambda!167980))))

(declare-fun bs!833082 () Bool)

(assert (= bs!833082 (and b!4495127 b!4494549)))

(assert (=> bs!833082 (= (= (toList!4244 lt!1676948) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!167983 lambda!167863))))

(declare-fun bs!833083 () Bool)

(assert (= bs!833083 (and b!4495127 b!4495085)))

(assert (=> bs!833083 (= (= (toList!4244 lt!1676948) (t!357604 (toList!4244 lt!1676952))) (= lambda!167983 lambda!167979))))

(declare-fun bs!833084 () Bool)

(assert (= bs!833084 (and b!4495127 b!4494614)))

(assert (=> bs!833084 (= (= (toList!4244 lt!1676948) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (= lambda!167983 lambda!167888))))

(declare-fun bs!833085 () Bool)

(assert (= bs!833085 (and b!4495127 b!4494594)))

(assert (=> bs!833085 (= (= (toList!4244 lt!1676948) (toList!4244 lt!1676952)) (= lambda!167983 lambda!167885))))

(declare-fun bs!833086 () Bool)

(assert (= bs!833086 (and b!4495127 b!4494545)))

(assert (=> bs!833086 (= (= (toList!4244 lt!1676948) (t!357604 (toList!4244 lt!1676948))) (= lambda!167983 lambda!167860))))

(declare-fun bs!833087 () Bool)

(assert (= bs!833087 (and b!4495127 b!4495091)))

(assert (=> bs!833087 (= (= (toList!4244 lt!1676948) (toList!4244 lt!1676952)) (= lambda!167983 lambda!167981))))

(declare-fun bs!833088 () Bool)

(assert (= bs!833088 (and b!4495127 b!4494551)))

(assert (=> bs!833088 (= lambda!167983 lambda!167864)))

(assert (=> b!4495127 true))

(declare-fun bs!833089 () Bool)

(declare-fun b!4495128 () Bool)

(assert (= bs!833089 (and b!4495128 b!4494544)))

(declare-fun lambda!167984 () Int)

(assert (=> bs!833089 (= lambda!167984 lambda!167865)))

(declare-fun bs!833090 () Bool)

(assert (= bs!833090 (and b!4495128 b!4494595)))

(assert (=> bs!833090 (= lambda!167984 lambda!167887)))

(declare-fun bs!833091 () Bool)

(assert (= bs!833091 (and b!4495128 b!4494615)))

(assert (=> bs!833091 (= lambda!167984 lambda!167889)))

(declare-fun bs!833092 () Bool)

(assert (= bs!833092 (and b!4495128 b!4495084)))

(assert (=> bs!833092 (= lambda!167984 lambda!167982)))

(declare-fun d!1378337 () Bool)

(declare-fun e!2799987 () Bool)

(assert (=> d!1378337 e!2799987))

(declare-fun res!1868364 () Bool)

(assert (=> d!1378337 (=> (not res!1868364) (not e!2799987))))

(declare-fun lt!1677642 () List!50649)

(assert (=> d!1378337 (= res!1868364 (noDuplicate!722 lt!1677642))))

(assert (=> d!1378337 (= lt!1677642 (getKeysList!425 (toList!4244 lt!1676948)))))

(assert (=> d!1378337 (= (keys!17510 lt!1676948) lt!1677642)))

(declare-fun b!4495126 () Bool)

(declare-fun res!1868362 () Bool)

(assert (=> b!4495126 (=> (not res!1868362) (not e!2799987))))

(assert (=> b!4495126 (= res!1868362 (= (length!300 lt!1677642) (length!301 (toList!4244 lt!1676948))))))

(declare-fun res!1868363 () Bool)

(assert (=> b!4495127 (=> (not res!1868363) (not e!2799987))))

(assert (=> b!4495127 (= res!1868363 (forall!10159 lt!1677642 lambda!167983))))

(assert (=> b!4495128 (= e!2799987 (= (content!8239 lt!1677642) (content!8239 (map!11092 (toList!4244 lt!1676948) lambda!167984))))))

(assert (= (and d!1378337 res!1868364) b!4495126))

(assert (= (and b!4495126 res!1868362) b!4495127))

(assert (= (and b!4495127 res!1868363) b!4495128))

(declare-fun m!5222299 () Bool)

(assert (=> d!1378337 m!5222299))

(assert (=> d!1378337 m!5221083))

(declare-fun m!5222301 () Bool)

(assert (=> b!4495126 m!5222301))

(assert (=> b!4495126 m!5221307))

(declare-fun m!5222303 () Bool)

(assert (=> b!4495127 m!5222303))

(declare-fun m!5222305 () Bool)

(assert (=> b!4495128 m!5222305))

(declare-fun m!5222307 () Bool)

(assert (=> b!4495128 m!5222307))

(assert (=> b!4495128 m!5222307))

(declare-fun m!5222309 () Bool)

(assert (=> b!4495128 m!5222309))

(assert (=> b!4494392 d!1378337))

(declare-fun d!1378339 () Bool)

(assert (=> d!1378339 (= (invariantList!977 (toList!4244 lt!1677150)) (noDuplicatedKeys!236 (toList!4244 lt!1677150)))))

(declare-fun bs!833093 () Bool)

(assert (= bs!833093 d!1378339))

(declare-fun m!5222311 () Bool)

(assert (=> bs!833093 m!5222311))

(assert (=> d!1377981 d!1378339))

(declare-fun d!1378341 () Bool)

(declare-fun res!1868365 () Bool)

(declare-fun e!2799988 () Bool)

(assert (=> d!1378341 (=> res!1868365 e!2799988)))

(assert (=> d!1378341 (= res!1868365 ((_ is Nil!50523) (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))

(assert (=> d!1378341 (= (forall!10155 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))) lambda!167827) e!2799988)))

(declare-fun b!4495129 () Bool)

(declare-fun e!2799989 () Bool)

(assert (=> b!4495129 (= e!2799988 e!2799989)))

(declare-fun res!1868366 () Bool)

(assert (=> b!4495129 (=> (not res!1868366) (not e!2799989))))

(assert (=> b!4495129 (= res!1868366 (dynLambda!21093 lambda!167827 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))))

(declare-fun b!4495130 () Bool)

(assert (=> b!4495130 (= e!2799989 (forall!10155 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))) lambda!167827))))

(assert (= (and d!1378341 (not res!1868365)) b!4495129))

(assert (= (and b!4495129 res!1868366) b!4495130))

(declare-fun b_lambda!151839 () Bool)

(assert (=> (not b_lambda!151839) (not b!4495129)))

(declare-fun m!5222313 () Bool)

(assert (=> b!4495129 m!5222313))

(declare-fun m!5222315 () Bool)

(assert (=> b!4495130 m!5222315))

(assert (=> d!1377981 d!1378341))

(assert (=> d!1377985 d!1378329))

(assert (=> d!1377985 d!1378327))

(declare-fun b!4495131 () Bool)

(declare-fun e!2799991 () List!50646)

(assert (=> b!4495131 (= e!2799991 (t!357604 (t!357604 lt!1676944)))))

(declare-fun b!4495133 () Bool)

(declare-fun e!2799990 () List!50646)

(assert (=> b!4495133 (= e!2799990 (Cons!50522 (h!56335 (t!357604 lt!1676944)) (removePairForKey!745 (t!357604 (t!357604 lt!1676944)) key!3287)))))

(declare-fun d!1378343 () Bool)

(declare-fun lt!1677643 () List!50646)

(assert (=> d!1378343 (not (containsKey!1658 lt!1677643 key!3287))))

(assert (=> d!1378343 (= lt!1677643 e!2799991)))

(declare-fun c!765889 () Bool)

(assert (=> d!1378343 (= c!765889 (and ((_ is Cons!50522) (t!357604 lt!1676944)) (= (_1!28747 (h!56335 (t!357604 lt!1676944))) key!3287)))))

(assert (=> d!1378343 (noDuplicateKeys!1118 (t!357604 lt!1676944))))

(assert (=> d!1378343 (= (removePairForKey!745 (t!357604 lt!1676944) key!3287) lt!1677643)))

(declare-fun b!4495132 () Bool)

(assert (=> b!4495132 (= e!2799991 e!2799990)))

(declare-fun c!765890 () Bool)

(assert (=> b!4495132 (= c!765890 ((_ is Cons!50522) (t!357604 lt!1676944)))))

(declare-fun b!4495134 () Bool)

(assert (=> b!4495134 (= e!2799990 Nil!50522)))

(assert (= (and d!1378343 c!765889) b!4495131))

(assert (= (and d!1378343 (not c!765889)) b!4495132))

(assert (= (and b!4495132 c!765890) b!4495133))

(assert (= (and b!4495132 (not c!765890)) b!4495134))

(declare-fun m!5222317 () Bool)

(assert (=> b!4495133 m!5222317))

(declare-fun m!5222319 () Bool)

(assert (=> d!1378343 m!5222319))

(assert (=> d!1378343 m!5222151))

(assert (=> b!4494224 d!1378343))

(assert (=> d!1377983 d!1377981))

(assert (=> d!1377983 d!1377937))

(declare-fun d!1378345 () Bool)

(assert (=> d!1378345 (eq!575 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))) (-!344 (extractMap!1174 (toList!4243 lt!1676946)) key!3287))))

(assert (=> d!1378345 true))

(declare-fun _$8!578 () Unit!91160)

(assert (=> d!1378345 (= (choose!29030 lt!1676946 hash!344 newBucket!178 key!3287 hashF!1107) _$8!578)))

(declare-fun bs!833094 () Bool)

(assert (= bs!833094 d!1378345))

(assert (=> bs!833094 m!5220765))

(assert (=> bs!833094 m!5220755))

(assert (=> bs!833094 m!5221201))

(assert (=> bs!833094 m!5221203))

(assert (=> bs!833094 m!5220733))

(assert (=> bs!833094 m!5220733))

(assert (=> bs!833094 m!5221201))

(assert (=> bs!833094 m!5220755))

(assert (=> d!1377983 d!1378345))

(declare-fun d!1378347 () Bool)

(declare-fun res!1868367 () Bool)

(declare-fun e!2799992 () Bool)

(assert (=> d!1378347 (=> res!1868367 e!2799992)))

(assert (=> d!1378347 (= res!1868367 ((_ is Nil!50523) (toList!4243 lt!1676946)))))

(assert (=> d!1378347 (= (forall!10155 (toList!4243 lt!1676946) lambda!167830) e!2799992)))

(declare-fun b!4495135 () Bool)

(declare-fun e!2799993 () Bool)

(assert (=> b!4495135 (= e!2799992 e!2799993)))

(declare-fun res!1868368 () Bool)

(assert (=> b!4495135 (=> (not res!1868368) (not e!2799993))))

(assert (=> b!4495135 (= res!1868368 (dynLambda!21093 lambda!167830 (h!56336 (toList!4243 lt!1676946))))))

(declare-fun b!4495136 () Bool)

(assert (=> b!4495136 (= e!2799993 (forall!10155 (t!357605 (toList!4243 lt!1676946)) lambda!167830))))

(assert (= (and d!1378347 (not res!1868367)) b!4495135))

(assert (= (and b!4495135 res!1868368) b!4495136))

(declare-fun b_lambda!151841 () Bool)

(assert (=> (not b_lambda!151841) (not b!4495135)))

(declare-fun m!5222321 () Bool)

(assert (=> b!4495135 m!5222321))

(declare-fun m!5222323 () Bool)

(assert (=> b!4495136 m!5222323))

(assert (=> d!1377983 d!1378347))

(assert (=> d!1377983 d!1377997))

(declare-fun d!1378349 () Bool)

(declare-fun e!2799994 () Bool)

(assert (=> d!1378349 e!2799994))

(declare-fun res!1868369 () Bool)

(assert (=> d!1378349 (=> (not res!1868369) (not e!2799994))))

(declare-fun lt!1677644 () ListMap!3505)

(assert (=> d!1378349 (= res!1868369 (not (contains!13180 lt!1677644 key!3287)))))

(assert (=> d!1378349 (= lt!1677644 (ListMap!3506 (removePresrvNoDuplicatedKeys!101 (toList!4244 (extractMap!1174 (toList!4243 lt!1676946))) key!3287)))))

(assert (=> d!1378349 (= (-!344 (extractMap!1174 (toList!4243 lt!1676946)) key!3287) lt!1677644)))

(declare-fun b!4495137 () Bool)

(assert (=> b!4495137 (= e!2799994 (= ((_ map and) (content!8239 (keys!17510 (extractMap!1174 (toList!4243 lt!1676946)))) ((_ map not) (store ((as const (Array K!11935 Bool)) false) key!3287 true))) (content!8239 (keys!17510 lt!1677644))))))

(assert (= (and d!1378349 res!1868369) b!4495137))

(declare-fun m!5222325 () Bool)

(assert (=> d!1378349 m!5222325))

(declare-fun m!5222327 () Bool)

(assert (=> d!1378349 m!5222327))

(assert (=> b!4495137 m!5220733))

(declare-fun m!5222329 () Bool)

(assert (=> b!4495137 m!5222329))

(declare-fun m!5222331 () Bool)

(assert (=> b!4495137 m!5222331))

(assert (=> b!4495137 m!5222331))

(declare-fun m!5222333 () Bool)

(assert (=> b!4495137 m!5222333))

(assert (=> b!4495137 m!5222329))

(declare-fun m!5222335 () Bool)

(assert (=> b!4495137 m!5222335))

(assert (=> b!4495137 m!5221223))

(assert (=> d!1377983 d!1378349))

(declare-fun d!1378351 () Bool)

(assert (=> d!1378351 (= (eq!575 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))) (-!344 (extractMap!1174 (toList!4243 lt!1676946)) key!3287)) (= (content!8238 (toList!4244 (extractMap!1174 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (content!8238 (toList!4244 (-!344 (extractMap!1174 (toList!4243 lt!1676946)) key!3287)))))))

(declare-fun bs!833095 () Bool)

(assert (= bs!833095 d!1378351))

(assert (=> bs!833095 m!5221247))

(declare-fun m!5222337 () Bool)

(assert (=> bs!833095 m!5222337))

(assert (=> d!1377983 d!1378351))

(assert (=> b!4494394 d!1378335))

(assert (=> b!4494394 d!1378337))

(declare-fun d!1378353 () Bool)

(declare-fun lt!1677645 () Bool)

(assert (=> d!1378353 (= lt!1677645 (select (content!8239 e!2799559) key!3287))))

(declare-fun e!2799996 () Bool)

(assert (=> d!1378353 (= lt!1677645 e!2799996)))

(declare-fun res!1868370 () Bool)

(assert (=> d!1378353 (=> (not res!1868370) (not e!2799996))))

(assert (=> d!1378353 (= res!1868370 ((_ is Cons!50525) e!2799559))))

(assert (=> d!1378353 (= (contains!13183 e!2799559 key!3287) lt!1677645)))

(declare-fun b!4495138 () Bool)

(declare-fun e!2799995 () Bool)

(assert (=> b!4495138 (= e!2799996 e!2799995)))

(declare-fun res!1868371 () Bool)

(assert (=> b!4495138 (=> res!1868371 e!2799995)))

(assert (=> b!4495138 (= res!1868371 (= (h!56340 e!2799559) key!3287))))

(declare-fun b!4495139 () Bool)

(assert (=> b!4495139 (= e!2799995 (contains!13183 (t!357607 e!2799559) key!3287))))

(assert (= (and d!1378353 res!1868370) b!4495138))

(assert (= (and b!4495138 (not res!1868371)) b!4495139))

(declare-fun m!5222339 () Bool)

(assert (=> d!1378353 m!5222339))

(declare-fun m!5222341 () Bool)

(assert (=> d!1378353 m!5222341))

(declare-fun m!5222343 () Bool)

(assert (=> b!4495139 m!5222343))

(assert (=> bm!312714 d!1378353))

(declare-fun d!1378355 () Bool)

(assert (=> d!1378355 (= (invariantList!977 (toList!4244 lt!1677099)) (noDuplicatedKeys!236 (toList!4244 lt!1677099)))))

(declare-fun bs!833096 () Bool)

(assert (= bs!833096 d!1378355))

(declare-fun m!5222345 () Bool)

(assert (=> bs!833096 m!5222345))

(assert (=> d!1377937 d!1378355))

(declare-fun d!1378357 () Bool)

(declare-fun res!1868372 () Bool)

(declare-fun e!2799997 () Bool)

(assert (=> d!1378357 (=> res!1868372 e!2799997)))

(assert (=> d!1378357 (= res!1868372 ((_ is Nil!50523) (toList!4243 lt!1676946)))))

(assert (=> d!1378357 (= (forall!10155 (toList!4243 lt!1676946) lambda!167813) e!2799997)))

(declare-fun b!4495140 () Bool)

(declare-fun e!2799998 () Bool)

(assert (=> b!4495140 (= e!2799997 e!2799998)))

(declare-fun res!1868373 () Bool)

(assert (=> b!4495140 (=> (not res!1868373) (not e!2799998))))

(assert (=> b!4495140 (= res!1868373 (dynLambda!21093 lambda!167813 (h!56336 (toList!4243 lt!1676946))))))

(declare-fun b!4495141 () Bool)

(assert (=> b!4495141 (= e!2799998 (forall!10155 (t!357605 (toList!4243 lt!1676946)) lambda!167813))))

(assert (= (and d!1378357 (not res!1868372)) b!4495140))

(assert (= (and b!4495140 res!1868373) b!4495141))

(declare-fun b_lambda!151843 () Bool)

(assert (=> (not b_lambda!151843) (not b!4495140)))

(declare-fun m!5222347 () Bool)

(assert (=> b!4495140 m!5222347))

(declare-fun m!5222349 () Bool)

(assert (=> b!4495141 m!5222349))

(assert (=> d!1377937 d!1378357))

(declare-fun d!1378359 () Bool)

(assert (=> d!1378359 (= (invariantList!977 (toList!4244 lt!1677169)) (noDuplicatedKeys!236 (toList!4244 lt!1677169)))))

(declare-fun bs!833097 () Bool)

(assert (= bs!833097 d!1378359))

(declare-fun m!5222351 () Bool)

(assert (=> bs!833097 m!5222351))

(assert (=> d!1377991 d!1378359))

(declare-fun d!1378361 () Bool)

(declare-fun res!1868374 () Bool)

(declare-fun e!2799999 () Bool)

(assert (=> d!1378361 (=> res!1868374 e!2799999)))

(assert (=> d!1378361 (= res!1868374 ((_ is Nil!50523) (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))))

(assert (=> d!1378361 (= (forall!10155 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))) lambda!167831) e!2799999)))

(declare-fun b!4495142 () Bool)

(declare-fun e!2800000 () Bool)

(assert (=> b!4495142 (= e!2799999 e!2800000)))

(declare-fun res!1868375 () Bool)

(assert (=> b!4495142 (=> (not res!1868375) (not e!2800000))))

(assert (=> b!4495142 (= res!1868375 (dynLambda!21093 lambda!167831 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))))

(declare-fun b!4495143 () Bool)

(assert (=> b!4495143 (= e!2800000 (forall!10155 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))) lambda!167831))))

(assert (= (and d!1378361 (not res!1868374)) b!4495142))

(assert (= (and b!4495142 res!1868375) b!4495143))

(declare-fun b_lambda!151845 () Bool)

(assert (=> (not b_lambda!151845) (not b!4495142)))

(declare-fun m!5222353 () Bool)

(assert (=> b!4495142 m!5222353))

(declare-fun m!5222355 () Bool)

(assert (=> b!4495143 m!5222355))

(assert (=> d!1377991 d!1378361))

(declare-fun d!1378363 () Bool)

(declare-fun res!1868376 () Bool)

(declare-fun e!2800001 () Bool)

(assert (=> d!1378363 (=> res!1868376 e!2800001)))

(assert (=> d!1378363 (= res!1868376 ((_ is Nil!50523) (t!357605 (toList!4243 lm!1477))))))

(assert (=> d!1378363 (= (forall!10155 (t!357605 (toList!4243 lm!1477)) lambda!167781) e!2800001)))

(declare-fun b!4495144 () Bool)

(declare-fun e!2800002 () Bool)

(assert (=> b!4495144 (= e!2800001 e!2800002)))

(declare-fun res!1868377 () Bool)

(assert (=> b!4495144 (=> (not res!1868377) (not e!2800002))))

(assert (=> b!4495144 (= res!1868377 (dynLambda!21093 lambda!167781 (h!56336 (t!357605 (toList!4243 lm!1477)))))))

(declare-fun b!4495145 () Bool)

(assert (=> b!4495145 (= e!2800002 (forall!10155 (t!357605 (t!357605 (toList!4243 lm!1477))) lambda!167781))))

(assert (= (and d!1378363 (not res!1868376)) b!4495144))

(assert (= (and b!4495144 res!1868377) b!4495145))

(declare-fun b_lambda!151847 () Bool)

(assert (=> (not b_lambda!151847) (not b!4495144)))

(declare-fun m!5222357 () Bool)

(assert (=> b!4495144 m!5222357))

(declare-fun m!5222359 () Bool)

(assert (=> b!4495145 m!5222359))

(assert (=> b!4494482 d!1378363))

(declare-fun d!1378365 () Bool)

(assert (=> d!1378365 (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1676952) key!3287))))

(declare-fun lt!1677646 () Unit!91160)

(assert (=> d!1378365 (= lt!1677646 (choose!29034 (toList!4244 lt!1676952) key!3287))))

(assert (=> d!1378365 (invariantList!977 (toList!4244 lt!1676952))))

(assert (=> d!1378365 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 lt!1676952) key!3287) lt!1677646)))

(declare-fun bs!833098 () Bool)

(assert (= bs!833098 d!1378365))

(assert (=> bs!833098 m!5221165))

(assert (=> bs!833098 m!5221165))

(assert (=> bs!833098 m!5221167))

(declare-fun m!5222361 () Bool)

(assert (=> bs!833098 m!5222361))

(assert (=> bs!833098 m!5222239))

(assert (=> b!4494443 d!1378365))

(declare-fun d!1378367 () Bool)

(assert (=> d!1378367 (= (isDefined!8320 (getValueByKey!1013 (toList!4244 lt!1676952) key!3287)) (not (isEmpty!28575 (getValueByKey!1013 (toList!4244 lt!1676952) key!3287))))))

(declare-fun bs!833099 () Bool)

(assert (= bs!833099 d!1378367))

(assert (=> bs!833099 m!5221165))

(declare-fun m!5222363 () Bool)

(assert (=> bs!833099 m!5222363))

(assert (=> b!4494443 d!1378367))

(declare-fun b!4495148 () Bool)

(declare-fun e!2800004 () Option!11033)

(assert (=> b!4495148 (= e!2800004 (getValueByKey!1013 (t!357604 (toList!4244 lt!1676952)) key!3287))))

(declare-fun b!4495149 () Bool)

(assert (=> b!4495149 (= e!2800004 None!11032)))

(declare-fun d!1378369 () Bool)

(declare-fun c!765891 () Bool)

(assert (=> d!1378369 (= c!765891 (and ((_ is Cons!50522) (toList!4244 lt!1676952)) (= (_1!28747 (h!56335 (toList!4244 lt!1676952))) key!3287)))))

(declare-fun e!2800003 () Option!11033)

(assert (=> d!1378369 (= (getValueByKey!1013 (toList!4244 lt!1676952) key!3287) e!2800003)))

(declare-fun b!4495147 () Bool)

(assert (=> b!4495147 (= e!2800003 e!2800004)))

(declare-fun c!765892 () Bool)

(assert (=> b!4495147 (= c!765892 (and ((_ is Cons!50522) (toList!4244 lt!1676952)) (not (= (_1!28747 (h!56335 (toList!4244 lt!1676952))) key!3287))))))

(declare-fun b!4495146 () Bool)

(assert (=> b!4495146 (= e!2800003 (Some!11032 (_2!28747 (h!56335 (toList!4244 lt!1676952)))))))

(assert (= (and d!1378369 c!765891) b!4495146))

(assert (= (and d!1378369 (not c!765891)) b!4495147))

(assert (= (and b!4495147 c!765892) b!4495148))

(assert (= (and b!4495147 (not c!765892)) b!4495149))

(declare-fun m!5222365 () Bool)

(assert (=> b!4495148 m!5222365))

(assert (=> b!4494443 d!1378369))

(declare-fun d!1378371 () Bool)

(assert (=> d!1378371 (contains!13183 (getKeysList!425 (toList!4244 lt!1676952)) key!3287)))

(declare-fun lt!1677647 () Unit!91160)

(assert (=> d!1378371 (= lt!1677647 (choose!29035 (toList!4244 lt!1676952) key!3287))))

(assert (=> d!1378371 (invariantList!977 (toList!4244 lt!1676952))))

(assert (=> d!1378371 (= (lemmaInListThenGetKeysListContains!421 (toList!4244 lt!1676952) key!3287) lt!1677647)))

(declare-fun bs!833100 () Bool)

(assert (= bs!833100 d!1378371))

(assert (=> bs!833100 m!5221169))

(assert (=> bs!833100 m!5221169))

(declare-fun m!5222367 () Bool)

(assert (=> bs!833100 m!5222367))

(declare-fun m!5222369 () Bool)

(assert (=> bs!833100 m!5222369))

(assert (=> bs!833100 m!5222239))

(assert (=> b!4494443 d!1378371))

(declare-fun b!4495150 () Bool)

(declare-fun e!2800005 () Bool)

(assert (=> b!4495150 (= e!2800005 (not (contains!13183 (keys!17510 (extractMap!1174 (toList!4243 lt!1676946))) key!3287)))))

(declare-fun b!4495151 () Bool)

(declare-fun e!2800008 () List!50649)

(assert (=> b!4495151 (= e!2800008 (getKeysList!425 (toList!4244 (extractMap!1174 (toList!4243 lt!1676946)))))))

(declare-fun b!4495152 () Bool)

(declare-fun e!2800010 () Bool)

(assert (=> b!4495152 (= e!2800010 (contains!13183 (keys!17510 (extractMap!1174 (toList!4243 lt!1676946))) key!3287))))

(declare-fun b!4495153 () Bool)

(declare-fun e!2800007 () Unit!91160)

(declare-fun e!2800009 () Unit!91160)

(assert (=> b!4495153 (= e!2800007 e!2800009)))

(declare-fun c!765894 () Bool)

(declare-fun call!312787 () Bool)

(assert (=> b!4495153 (= c!765894 call!312787)))

(declare-fun bm!312782 () Bool)

(assert (=> bm!312782 (= call!312787 (contains!13183 e!2800008 key!3287))))

(declare-fun c!765895 () Bool)

(declare-fun c!765893 () Bool)

(assert (=> bm!312782 (= c!765895 c!765893)))

(declare-fun b!4495155 () Bool)

(declare-fun Unit!91262 () Unit!91160)

(assert (=> b!4495155 (= e!2800009 Unit!91262)))

(declare-fun b!4495156 () Bool)

(declare-fun e!2800006 () Bool)

(assert (=> b!4495156 (= e!2800006 e!2800010)))

(declare-fun res!1868379 () Bool)

(assert (=> b!4495156 (=> (not res!1868379) (not e!2800010))))

(assert (=> b!4495156 (= res!1868379 (isDefined!8320 (getValueByKey!1013 (toList!4244 (extractMap!1174 (toList!4243 lt!1676946))) key!3287)))))

(declare-fun b!4495157 () Bool)

(assert (=> b!4495157 (= e!2800008 (keys!17510 (extractMap!1174 (toList!4243 lt!1676946))))))

(declare-fun b!4495158 () Bool)

(declare-fun lt!1677652 () Unit!91160)

(assert (=> b!4495158 (= e!2800007 lt!1677652)))

(declare-fun lt!1677653 () Unit!91160)

(assert (=> b!4495158 (= lt!1677653 (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 (extractMap!1174 (toList!4243 lt!1676946))) key!3287))))

(assert (=> b!4495158 (isDefined!8320 (getValueByKey!1013 (toList!4244 (extractMap!1174 (toList!4243 lt!1676946))) key!3287))))

(declare-fun lt!1677648 () Unit!91160)

(assert (=> b!4495158 (= lt!1677648 lt!1677653)))

(assert (=> b!4495158 (= lt!1677652 (lemmaInListThenGetKeysListContains!421 (toList!4244 (extractMap!1174 (toList!4243 lt!1676946))) key!3287))))

(assert (=> b!4495158 call!312787))

(declare-fun d!1378373 () Bool)

(assert (=> d!1378373 e!2800006))

(declare-fun res!1868378 () Bool)

(assert (=> d!1378373 (=> res!1868378 e!2800006)))

(assert (=> d!1378373 (= res!1868378 e!2800005)))

(declare-fun res!1868380 () Bool)

(assert (=> d!1378373 (=> (not res!1868380) (not e!2800005))))

(declare-fun lt!1677655 () Bool)

(assert (=> d!1378373 (= res!1868380 (not lt!1677655))))

(declare-fun lt!1677654 () Bool)

(assert (=> d!1378373 (= lt!1677655 lt!1677654)))

(declare-fun lt!1677651 () Unit!91160)

(assert (=> d!1378373 (= lt!1677651 e!2800007)))

(assert (=> d!1378373 (= c!765893 lt!1677654)))

(assert (=> d!1378373 (= lt!1677654 (containsKey!1662 (toList!4244 (extractMap!1174 (toList!4243 lt!1676946))) key!3287))))

(assert (=> d!1378373 (= (contains!13180 (extractMap!1174 (toList!4243 lt!1676946)) key!3287) lt!1677655)))

(declare-fun b!4495154 () Bool)

(assert (=> b!4495154 false))

(declare-fun lt!1677650 () Unit!91160)

(declare-fun lt!1677649 () Unit!91160)

(assert (=> b!4495154 (= lt!1677650 lt!1677649)))

(assert (=> b!4495154 (containsKey!1662 (toList!4244 (extractMap!1174 (toList!4243 lt!1676946))) key!3287)))

(assert (=> b!4495154 (= lt!1677649 (lemmaInGetKeysListThenContainsKey!424 (toList!4244 (extractMap!1174 (toList!4243 lt!1676946))) key!3287))))

(declare-fun Unit!91263 () Unit!91160)

(assert (=> b!4495154 (= e!2800009 Unit!91263)))

(assert (= (and d!1378373 c!765893) b!4495158))

(assert (= (and d!1378373 (not c!765893)) b!4495153))

(assert (= (and b!4495153 c!765894) b!4495154))

(assert (= (and b!4495153 (not c!765894)) b!4495155))

(assert (= (or b!4495158 b!4495153) bm!312782))

(assert (= (and bm!312782 c!765895) b!4495151))

(assert (= (and bm!312782 (not c!765895)) b!4495157))

(assert (= (and d!1378373 res!1868380) b!4495150))

(assert (= (and d!1378373 (not res!1868378)) b!4495156))

(assert (= (and b!4495156 res!1868379) b!4495152))

(assert (=> b!4495150 m!5220733))

(assert (=> b!4495150 m!5222329))

(assert (=> b!4495150 m!5222329))

(declare-fun m!5222371 () Bool)

(assert (=> b!4495150 m!5222371))

(declare-fun m!5222373 () Bool)

(assert (=> bm!312782 m!5222373))

(declare-fun m!5222375 () Bool)

(assert (=> d!1378373 m!5222375))

(assert (=> b!4495154 m!5222375))

(declare-fun m!5222377 () Bool)

(assert (=> b!4495154 m!5222377))

(declare-fun m!5222379 () Bool)

(assert (=> b!4495156 m!5222379))

(assert (=> b!4495156 m!5222379))

(declare-fun m!5222381 () Bool)

(assert (=> b!4495156 m!5222381))

(assert (=> b!4495157 m!5220733))

(assert (=> b!4495157 m!5222329))

(declare-fun m!5222383 () Bool)

(assert (=> b!4495151 m!5222383))

(declare-fun m!5222385 () Bool)

(assert (=> b!4495158 m!5222385))

(assert (=> b!4495158 m!5222379))

(assert (=> b!4495158 m!5222379))

(assert (=> b!4495158 m!5222381))

(declare-fun m!5222387 () Bool)

(assert (=> b!4495158 m!5222387))

(assert (=> b!4495152 m!5220733))

(assert (=> b!4495152 m!5222329))

(assert (=> b!4495152 m!5222329))

(assert (=> b!4495152 m!5222371))

(assert (=> d!1377943 d!1378373))

(assert (=> d!1377943 d!1377937))

(declare-fun d!1378375 () Bool)

(assert (=> d!1378375 (contains!13180 (extractMap!1174 (toList!4243 lt!1676946)) key!3287)))

(assert (=> d!1378375 true))

(declare-fun _$34!604 () Unit!91160)

(assert (=> d!1378375 (= (choose!29025 lt!1676946 key!3287 hashF!1107) _$34!604)))

(declare-fun bs!833101 () Bool)

(assert (= bs!833101 d!1378375))

(assert (=> bs!833101 m!5220733))

(assert (=> bs!833101 m!5220733))

(assert (=> bs!833101 m!5221131))

(assert (=> d!1377943 d!1378375))

(declare-fun d!1378377 () Bool)

(declare-fun res!1868381 () Bool)

(declare-fun e!2800013 () Bool)

(assert (=> d!1378377 (=> res!1868381 e!2800013)))

(assert (=> d!1378377 (= res!1868381 ((_ is Nil!50523) (toList!4243 lt!1676946)))))

(assert (=> d!1378377 (= (forall!10155 (toList!4243 lt!1676946) lambda!167819) e!2800013)))

(declare-fun b!4495159 () Bool)

(declare-fun e!2800014 () Bool)

(assert (=> b!4495159 (= e!2800013 e!2800014)))

(declare-fun res!1868382 () Bool)

(assert (=> b!4495159 (=> (not res!1868382) (not e!2800014))))

(assert (=> b!4495159 (= res!1868382 (dynLambda!21093 lambda!167819 (h!56336 (toList!4243 lt!1676946))))))

(declare-fun b!4495160 () Bool)

(assert (=> b!4495160 (= e!2800014 (forall!10155 (t!357605 (toList!4243 lt!1676946)) lambda!167819))))

(assert (= (and d!1378377 (not res!1868381)) b!4495159))

(assert (= (and b!4495159 res!1868382) b!4495160))

(declare-fun b_lambda!151849 () Bool)

(assert (=> (not b_lambda!151849) (not b!4495159)))

(declare-fun m!5222389 () Bool)

(assert (=> b!4495159 m!5222389))

(declare-fun m!5222391 () Bool)

(assert (=> b!4495160 m!5222391))

(assert (=> d!1377943 d!1378377))

(declare-fun bs!833102 () Bool)

(declare-fun b!4495163 () Bool)

(assert (= bs!833102 (and b!4495163 b!4494898)))

(declare-fun lambda!167985 () Int)

(assert (=> bs!833102 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677463) (= lambda!167985 lambda!167959))))

(declare-fun bs!833103 () Bool)

(assert (= bs!833103 (and b!4495163 b!4494831)))

(assert (=> bs!833103 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167985 lambda!167953))))

(assert (=> bs!833102 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167985 lambda!167958))))

(declare-fun bs!833104 () Bool)

(assert (= bs!833104 (and b!4495163 d!1378001)))

(assert (=> bs!833104 (not (= lambda!167985 lambda!167834))))

(declare-fun bs!833105 () Bool)

(assert (= bs!833105 (and b!4495163 d!1378061)))

(assert (=> bs!833105 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677416) (= lambda!167985 lambda!167955))))

(declare-fun bs!833106 () Bool)

(assert (= bs!833106 (and b!4495163 b!4494897)))

(assert (=> bs!833106 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167985 lambda!167957))))

(assert (=> bs!833103 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677422) (= lambda!167985 lambda!167954))))

(declare-fun bs!833107 () Bool)

(assert (= bs!833107 (and b!4495163 d!1378201)))

(assert (=> bs!833107 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677457) (= lambda!167985 lambda!167960))))

(declare-fun bs!833108 () Bool)

(assert (= bs!833108 (and b!4495163 b!4494830)))

(assert (=> bs!833108 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167985 lambda!167952))))

(assert (=> b!4495163 true))

(declare-fun bs!833109 () Bool)

(declare-fun b!4495164 () Bool)

(assert (= bs!833109 (and b!4495164 b!4494898)))

(declare-fun lambda!167986 () Int)

(assert (=> bs!833109 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677463) (= lambda!167986 lambda!167959))))

(declare-fun bs!833110 () Bool)

(assert (= bs!833110 (and b!4495164 b!4494831)))

(assert (=> bs!833110 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167986 lambda!167953))))

(assert (=> bs!833109 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167986 lambda!167958))))

(declare-fun bs!833111 () Bool)

(assert (= bs!833111 (and b!4495164 d!1378001)))

(assert (=> bs!833111 (not (= lambda!167986 lambda!167834))))

(declare-fun bs!833112 () Bool)

(assert (= bs!833112 (and b!4495164 d!1378061)))

(assert (=> bs!833112 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677416) (= lambda!167986 lambda!167955))))

(assert (=> bs!833110 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677422) (= lambda!167986 lambda!167954))))

(declare-fun bs!833113 () Bool)

(assert (= bs!833113 (and b!4495164 b!4494897)))

(assert (=> bs!833113 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167986 lambda!167957))))

(declare-fun bs!833114 () Bool)

(assert (= bs!833114 (and b!4495164 b!4495163)))

(assert (=> bs!833114 (= lambda!167986 lambda!167985)))

(declare-fun bs!833115 () Bool)

(assert (= bs!833115 (and b!4495164 d!1378201)))

(assert (=> bs!833115 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677457) (= lambda!167986 lambda!167960))))

(declare-fun bs!833116 () Bool)

(assert (= bs!833116 (and b!4495164 b!4494830)))

(assert (=> bs!833116 (= (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167986 lambda!167952))))

(assert (=> b!4495164 true))

(declare-fun lambda!167987 () Int)

(declare-fun lt!1677668 () ListMap!3505)

(assert (=> bs!833109 (= (= lt!1677668 lt!1677463) (= lambda!167987 lambda!167959))))

(assert (=> bs!833109 (= (= lt!1677668 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167987 lambda!167958))))

(assert (=> bs!833111 (not (= lambda!167987 lambda!167834))))

(assert (=> bs!833112 (= (= lt!1677668 lt!1677416) (= lambda!167987 lambda!167955))))

(assert (=> bs!833110 (= (= lt!1677668 lt!1677422) (= lambda!167987 lambda!167954))))

(assert (=> b!4495164 (= (= lt!1677668 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167987 lambda!167986))))

(assert (=> bs!833110 (= (= lt!1677668 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167987 lambda!167953))))

(assert (=> bs!833113 (= (= lt!1677668 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167987 lambda!167957))))

(assert (=> bs!833114 (= (= lt!1677668 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167987 lambda!167985))))

(assert (=> bs!833115 (= (= lt!1677668 lt!1677457) (= lambda!167987 lambda!167960))))

(assert (=> bs!833116 (= (= lt!1677668 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167987 lambda!167952))))

(assert (=> b!4495164 true))

(declare-fun bs!833117 () Bool)

(declare-fun d!1378379 () Bool)

(assert (= bs!833117 (and d!1378379 b!4494898)))

(declare-fun lambda!167988 () Int)

(declare-fun lt!1677662 () ListMap!3505)

(assert (=> bs!833117 (= (= lt!1677662 lt!1677463) (= lambda!167988 lambda!167959))))

(assert (=> bs!833117 (= (= lt!1677662 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167988 lambda!167958))))

(declare-fun bs!833118 () Bool)

(assert (= bs!833118 (and d!1378379 d!1378001)))

(assert (=> bs!833118 (not (= lambda!167988 lambda!167834))))

(declare-fun bs!833119 () Bool)

(assert (= bs!833119 (and d!1378379 d!1378061)))

(assert (=> bs!833119 (= (= lt!1677662 lt!1677416) (= lambda!167988 lambda!167955))))

(declare-fun bs!833120 () Bool)

(assert (= bs!833120 (and d!1378379 b!4495164)))

(assert (=> bs!833120 (= (= lt!1677662 lt!1677668) (= lambda!167988 lambda!167987))))

(declare-fun bs!833121 () Bool)

(assert (= bs!833121 (and d!1378379 b!4494831)))

(assert (=> bs!833121 (= (= lt!1677662 lt!1677422) (= lambda!167988 lambda!167954))))

(assert (=> bs!833120 (= (= lt!1677662 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167988 lambda!167986))))

(assert (=> bs!833121 (= (= lt!1677662 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167988 lambda!167953))))

(declare-fun bs!833122 () Bool)

(assert (= bs!833122 (and d!1378379 b!4494897)))

(assert (=> bs!833122 (= (= lt!1677662 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167988 lambda!167957))))

(declare-fun bs!833123 () Bool)

(assert (= bs!833123 (and d!1378379 b!4495163)))

(assert (=> bs!833123 (= (= lt!1677662 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167988 lambda!167985))))

(declare-fun bs!833124 () Bool)

(assert (= bs!833124 (and d!1378379 d!1378201)))

(assert (=> bs!833124 (= (= lt!1677662 lt!1677457) (= lambda!167988 lambda!167960))))

(declare-fun bs!833125 () Bool)

(assert (= bs!833125 (and d!1378379 b!4494830)))

(assert (=> bs!833125 (= (= lt!1677662 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167988 lambda!167952))))

(assert (=> d!1378379 true))

(declare-fun c!765896 () Bool)

(declare-fun call!312788 () Bool)

(declare-fun bm!312783 () Bool)

(assert (=> bm!312783 (= call!312788 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (ite c!765896 lambda!167985 lambda!167987)))))

(declare-fun b!4495161 () Bool)

(declare-fun e!2800017 () Bool)

(assert (=> b!4495161 (= e!2800017 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) lambda!167987))))

(declare-fun b!4495162 () Bool)

(declare-fun e!2800015 () Bool)

(assert (=> b!4495162 (= e!2800015 (invariantList!977 (toList!4244 lt!1677662)))))

(declare-fun e!2800016 () ListMap!3505)

(assert (=> b!4495163 (= e!2800016 (extractMap!1174 (t!357605 (toList!4243 lt!1676946))))))

(declare-fun lt!1677665 () Unit!91160)

(declare-fun call!312790 () Unit!91160)

(assert (=> b!4495163 (= lt!1677665 call!312790)))

(assert (=> b!4495163 call!312788))

(declare-fun lt!1677659 () Unit!91160)

(assert (=> b!4495163 (= lt!1677659 lt!1677665)))

(declare-fun call!312789 () Bool)

(assert (=> b!4495163 call!312789))

(declare-fun lt!1677664 () Unit!91160)

(declare-fun Unit!91264 () Unit!91160)

(assert (=> b!4495163 (= lt!1677664 Unit!91264)))

(declare-fun bm!312784 () Bool)

(assert (=> bm!312784 (= call!312789 (forall!10157 (ite c!765896 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (t!357604 (_2!28748 (h!56336 (toList!4243 lt!1676946))))) (ite c!765896 lambda!167985 lambda!167987)))))

(assert (=> b!4495164 (= e!2800016 lt!1677668)))

(declare-fun lt!1677656 () ListMap!3505)

(assert (=> b!4495164 (= lt!1677656 (+!1460 (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (h!56335 (_2!28748 (h!56336 (toList!4243 lt!1676946))))))))

(assert (=> b!4495164 (= lt!1677668 (addToMapMapFromBucket!645 (t!357604 (_2!28748 (h!56336 (toList!4243 lt!1676946)))) (+!1460 (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) (h!56335 (_2!28748 (h!56336 (toList!4243 lt!1676946)))))))))

(declare-fun lt!1677672 () Unit!91160)

(assert (=> b!4495164 (= lt!1677672 call!312790)))

(assert (=> b!4495164 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) lambda!167986)))

(declare-fun lt!1677670 () Unit!91160)

(assert (=> b!4495164 (= lt!1677670 lt!1677672)))

(assert (=> b!4495164 (forall!10157 (toList!4244 lt!1677656) lambda!167987)))

(declare-fun lt!1677658 () Unit!91160)

(declare-fun Unit!91265 () Unit!91160)

(assert (=> b!4495164 (= lt!1677658 Unit!91265)))

(assert (=> b!4495164 call!312789))

(declare-fun lt!1677671 () Unit!91160)

(declare-fun Unit!91266 () Unit!91160)

(assert (=> b!4495164 (= lt!1677671 Unit!91266)))

(declare-fun lt!1677675 () Unit!91160)

(declare-fun Unit!91267 () Unit!91160)

(assert (=> b!4495164 (= lt!1677675 Unit!91267)))

(declare-fun lt!1677660 () Unit!91160)

(assert (=> b!4495164 (= lt!1677660 (forallContained!2413 (toList!4244 lt!1677656) lambda!167987 (h!56335 (_2!28748 (h!56336 (toList!4243 lt!1676946))))))))

(assert (=> b!4495164 (contains!13180 lt!1677656 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lt!1676946))))))))

(declare-fun lt!1677663 () Unit!91160)

(declare-fun Unit!91268 () Unit!91160)

(assert (=> b!4495164 (= lt!1677663 Unit!91268)))

(assert (=> b!4495164 (contains!13180 lt!1677668 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lt!1676946))))))))

(declare-fun lt!1677661 () Unit!91160)

(declare-fun Unit!91269 () Unit!91160)

(assert (=> b!4495164 (= lt!1677661 Unit!91269)))

(assert (=> b!4495164 (forall!10157 (_2!28748 (h!56336 (toList!4243 lt!1676946))) lambda!167987)))

(declare-fun lt!1677657 () Unit!91160)

(declare-fun Unit!91270 () Unit!91160)

(assert (=> b!4495164 (= lt!1677657 Unit!91270)))

(assert (=> b!4495164 (forall!10157 (toList!4244 lt!1677656) lambda!167987)))

(declare-fun lt!1677669 () Unit!91160)

(declare-fun Unit!91271 () Unit!91160)

(assert (=> b!4495164 (= lt!1677669 Unit!91271)))

(declare-fun lt!1677673 () Unit!91160)

(declare-fun Unit!91272 () Unit!91160)

(assert (=> b!4495164 (= lt!1677673 Unit!91272)))

(declare-fun lt!1677674 () Unit!91160)

(assert (=> b!4495164 (= lt!1677674 (addForallContainsKeyThenBeforeAdding!300 (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677668 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lt!1676946))))) (_2!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lt!1676946)))))))))

(assert (=> b!4495164 call!312788))

(declare-fun lt!1677666 () Unit!91160)

(assert (=> b!4495164 (= lt!1677666 lt!1677674)))

(assert (=> b!4495164 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) lambda!167987)))

(declare-fun lt!1677667 () Unit!91160)

(declare-fun Unit!91273 () Unit!91160)

(assert (=> b!4495164 (= lt!1677667 Unit!91273)))

(declare-fun res!1868385 () Bool)

(assert (=> b!4495164 (= res!1868385 (forall!10157 (_2!28748 (h!56336 (toList!4243 lt!1676946))) lambda!167987))))

(assert (=> b!4495164 (=> (not res!1868385) (not e!2800017))))

(assert (=> b!4495164 e!2800017))

(declare-fun lt!1677676 () Unit!91160)

(declare-fun Unit!91274 () Unit!91160)

(assert (=> b!4495164 (= lt!1677676 Unit!91274)))

(assert (=> d!1378379 e!2800015))

(declare-fun res!1868383 () Bool)

(assert (=> d!1378379 (=> (not res!1868383) (not e!2800015))))

(assert (=> d!1378379 (= res!1868383 (forall!10157 (_2!28748 (h!56336 (toList!4243 lt!1676946))) lambda!167988))))

(assert (=> d!1378379 (= lt!1677662 e!2800016)))

(assert (=> d!1378379 (= c!765896 ((_ is Nil!50522) (_2!28748 (h!56336 (toList!4243 lt!1676946)))))))

(assert (=> d!1378379 (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lt!1676946))))))

(assert (=> d!1378379 (= (addToMapMapFromBucket!645 (_2!28748 (h!56336 (toList!4243 lt!1676946))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) lt!1677662)))

(declare-fun b!4495165 () Bool)

(declare-fun res!1868384 () Bool)

(assert (=> b!4495165 (=> (not res!1868384) (not e!2800015))))

(assert (=> b!4495165 (= res!1868384 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) lambda!167988))))

(declare-fun bm!312785 () Bool)

(assert (=> bm!312785 (= call!312790 (lemmaContainsAllItsOwnKeys!300 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))))))

(assert (= (and d!1378379 c!765896) b!4495163))

(assert (= (and d!1378379 (not c!765896)) b!4495164))

(assert (= (and b!4495164 res!1868385) b!4495161))

(assert (= (or b!4495163 b!4495164) bm!312783))

(assert (= (or b!4495163 b!4495164) bm!312784))

(assert (= (or b!4495163 b!4495164) bm!312785))

(assert (= (and d!1378379 res!1868383) b!4495165))

(assert (= (and b!4495165 res!1868384) b!4495162))

(declare-fun m!5222393 () Bool)

(assert (=> b!4495164 m!5222393))

(declare-fun m!5222395 () Bool)

(assert (=> b!4495164 m!5222395))

(assert (=> b!4495164 m!5221059))

(declare-fun m!5222397 () Bool)

(assert (=> b!4495164 m!5222397))

(assert (=> b!4495164 m!5221059))

(declare-fun m!5222399 () Bool)

(assert (=> b!4495164 m!5222399))

(declare-fun m!5222401 () Bool)

(assert (=> b!4495164 m!5222401))

(declare-fun m!5222403 () Bool)

(assert (=> b!4495164 m!5222403))

(assert (=> b!4495164 m!5222399))

(declare-fun m!5222405 () Bool)

(assert (=> b!4495164 m!5222405))

(declare-fun m!5222407 () Bool)

(assert (=> b!4495164 m!5222407))

(assert (=> b!4495164 m!5222407))

(assert (=> b!4495164 m!5222395))

(declare-fun m!5222409 () Bool)

(assert (=> b!4495164 m!5222409))

(declare-fun m!5222411 () Bool)

(assert (=> b!4495164 m!5222411))

(declare-fun m!5222413 () Bool)

(assert (=> bm!312784 m!5222413))

(assert (=> bm!312785 m!5221059))

(declare-fun m!5222415 () Bool)

(assert (=> bm!312785 m!5222415))

(declare-fun m!5222417 () Bool)

(assert (=> b!4495165 m!5222417))

(assert (=> b!4495161 m!5222393))

(declare-fun m!5222419 () Bool)

(assert (=> bm!312783 m!5222419))

(declare-fun m!5222421 () Bool)

(assert (=> d!1378379 m!5222421))

(declare-fun m!5222423 () Bool)

(assert (=> d!1378379 m!5222423))

(declare-fun m!5222425 () Bool)

(assert (=> b!4495162 m!5222425))

(assert (=> b!4494382 d!1378379))

(declare-fun bs!833126 () Bool)

(declare-fun d!1378381 () Bool)

(assert (= bs!833126 (and d!1378381 d!1377969)))

(declare-fun lambda!167989 () Int)

(assert (=> bs!833126 (= lambda!167989 lambda!167822)))

(declare-fun bs!833127 () Bool)

(assert (= bs!833127 (and d!1378381 d!1377981)))

(assert (=> bs!833127 (= lambda!167989 lambda!167827)))

(declare-fun bs!833128 () Bool)

(assert (= bs!833128 (and d!1378381 d!1377991)))

(assert (=> bs!833128 (= lambda!167989 lambda!167831)))

(declare-fun bs!833129 () Bool)

(assert (= bs!833129 (and d!1378381 d!1377983)))

(assert (=> bs!833129 (= lambda!167989 lambda!167830)))

(declare-fun bs!833130 () Bool)

(assert (= bs!833130 (and d!1378381 d!1377973)))

(assert (=> bs!833130 (= lambda!167989 lambda!167823)))

(declare-fun bs!833131 () Bool)

(assert (= bs!833131 (and d!1378381 d!1377937)))

(assert (=> bs!833131 (= lambda!167989 lambda!167813)))

(declare-fun bs!833132 () Bool)

(assert (= bs!833132 (and d!1378381 d!1377943)))

(assert (=> bs!833132 (= lambda!167989 lambda!167819)))

(declare-fun bs!833133 () Bool)

(assert (= bs!833133 (and d!1378381 d!1378173)))

(assert (=> bs!833133 (= lambda!167989 lambda!167956)))

(declare-fun bs!833134 () Bool)

(assert (= bs!833134 (and d!1378381 d!1378007)))

(assert (=> bs!833134 (not (= lambda!167989 lambda!167837))))

(declare-fun bs!833135 () Bool)

(assert (= bs!833135 (and d!1378381 start!443220)))

(assert (=> bs!833135 (= lambda!167989 lambda!167781)))

(declare-fun bs!833136 () Bool)

(assert (= bs!833136 (and d!1378381 d!1377881)))

(assert (=> bs!833136 (= lambda!167989 lambda!167790)))

(declare-fun bs!833137 () Bool)

(assert (= bs!833137 (and d!1378381 d!1377979)))

(assert (=> bs!833137 (= lambda!167989 lambda!167826)))

(declare-fun bs!833138 () Bool)

(assert (= bs!833138 (and d!1378381 d!1377921)))

(assert (=> bs!833138 (= lambda!167989 lambda!167812)))

(declare-fun lt!1677713 () ListMap!3505)

(assert (=> d!1378381 (invariantList!977 (toList!4244 lt!1677713))))

(declare-fun e!2800036 () ListMap!3505)

(assert (=> d!1378381 (= lt!1677713 e!2800036)))

(declare-fun c!765913 () Bool)

(assert (=> d!1378381 (= c!765913 ((_ is Cons!50523) (t!357605 (toList!4243 lt!1676946))))))

(assert (=> d!1378381 (forall!10155 (t!357605 (toList!4243 lt!1676946)) lambda!167989)))

(assert (=> d!1378381 (= (extractMap!1174 (t!357605 (toList!4243 lt!1676946))) lt!1677713)))

(declare-fun b!4495204 () Bool)

(assert (=> b!4495204 (= e!2800036 (addToMapMapFromBucket!645 (_2!28748 (h!56336 (t!357605 (toList!4243 lt!1676946)))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lt!1676946))))))))

(declare-fun b!4495205 () Bool)

(assert (=> b!4495205 (= e!2800036 (ListMap!3506 Nil!50522))))

(assert (= (and d!1378381 c!765913) b!4495204))

(assert (= (and d!1378381 (not c!765913)) b!4495205))

(declare-fun m!5222427 () Bool)

(assert (=> d!1378381 m!5222427))

(declare-fun m!5222429 () Bool)

(assert (=> d!1378381 m!5222429))

(declare-fun m!5222431 () Bool)

(assert (=> b!4495204 m!5222431))

(assert (=> b!4495204 m!5222431))

(declare-fun m!5222433 () Bool)

(assert (=> b!4495204 m!5222433))

(assert (=> b!4494382 d!1378381))

(declare-fun bs!833139 () Bool)

(declare-fun b!4495208 () Bool)

(assert (= bs!833139 (and b!4495208 b!4494898)))

(declare-fun lambda!167990 () Int)

(assert (=> bs!833139 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167990 lambda!167958))))

(declare-fun bs!833140 () Bool)

(assert (= bs!833140 (and b!4495208 d!1378001)))

(assert (=> bs!833140 (not (= lambda!167990 lambda!167834))))

(declare-fun bs!833141 () Bool)

(assert (= bs!833141 (and b!4495208 d!1378061)))

(assert (=> bs!833141 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677416) (= lambda!167990 lambda!167955))))

(declare-fun bs!833142 () Bool)

(assert (= bs!833142 (and b!4495208 b!4495164)))

(assert (=> bs!833142 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677668) (= lambda!167990 lambda!167987))))

(declare-fun bs!833143 () Bool)

(assert (= bs!833143 (and b!4495208 b!4494831)))

(assert (=> bs!833143 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677422) (= lambda!167990 lambda!167954))))

(assert (=> bs!833139 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677463) (= lambda!167990 lambda!167959))))

(declare-fun bs!833144 () Bool)

(assert (= bs!833144 (and b!4495208 d!1378379)))

(assert (=> bs!833144 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677662) (= lambda!167990 lambda!167988))))

(assert (=> bs!833142 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167990 lambda!167986))))

(assert (=> bs!833143 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167990 lambda!167953))))

(declare-fun bs!833145 () Bool)

(assert (= bs!833145 (and b!4495208 b!4494897)))

(assert (=> bs!833145 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167990 lambda!167957))))

(declare-fun bs!833146 () Bool)

(assert (= bs!833146 (and b!4495208 b!4495163)))

(assert (=> bs!833146 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167990 lambda!167985))))

(declare-fun bs!833147 () Bool)

(assert (= bs!833147 (and b!4495208 d!1378201)))

(assert (=> bs!833147 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677457) (= lambda!167990 lambda!167960))))

(declare-fun bs!833148 () Bool)

(assert (= bs!833148 (and b!4495208 b!4494830)))

(assert (=> bs!833148 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167990 lambda!167952))))

(assert (=> b!4495208 true))

(declare-fun bs!833149 () Bool)

(declare-fun b!4495209 () Bool)

(assert (= bs!833149 (and b!4495209 b!4494898)))

(declare-fun lambda!167991 () Int)

(assert (=> bs!833149 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167991 lambda!167958))))

(declare-fun bs!833150 () Bool)

(assert (= bs!833150 (and b!4495209 d!1378001)))

(assert (=> bs!833150 (not (= lambda!167991 lambda!167834))))

(declare-fun bs!833151 () Bool)

(assert (= bs!833151 (and b!4495209 b!4495164)))

(assert (=> bs!833151 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677668) (= lambda!167991 lambda!167987))))

(declare-fun bs!833152 () Bool)

(assert (= bs!833152 (and b!4495209 b!4494831)))

(assert (=> bs!833152 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677422) (= lambda!167991 lambda!167954))))

(assert (=> bs!833149 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677463) (= lambda!167991 lambda!167959))))

(declare-fun bs!833153 () Bool)

(assert (= bs!833153 (and b!4495209 d!1378379)))

(assert (=> bs!833153 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677662) (= lambda!167991 lambda!167988))))

(assert (=> bs!833151 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167991 lambda!167986))))

(assert (=> bs!833152 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167991 lambda!167953))))

(declare-fun bs!833154 () Bool)

(assert (= bs!833154 (and b!4495209 d!1378061)))

(assert (=> bs!833154 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677416) (= lambda!167991 lambda!167955))))

(declare-fun bs!833155 () Bool)

(assert (= bs!833155 (and b!4495209 b!4495208)))

(assert (=> bs!833155 (= lambda!167991 lambda!167990)))

(declare-fun bs!833156 () Bool)

(assert (= bs!833156 (and b!4495209 b!4494897)))

(assert (=> bs!833156 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167991 lambda!167957))))

(declare-fun bs!833157 () Bool)

(assert (= bs!833157 (and b!4495209 b!4495163)))

(assert (=> bs!833157 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167991 lambda!167985))))

(declare-fun bs!833158 () Bool)

(assert (= bs!833158 (and b!4495209 d!1378201)))

(assert (=> bs!833158 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677457) (= lambda!167991 lambda!167960))))

(declare-fun bs!833159 () Bool)

(assert (= bs!833159 (and b!4495209 b!4494830)))

(assert (=> bs!833159 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167991 lambda!167952))))

(assert (=> b!4495209 true))

(declare-fun lambda!167992 () Int)

(declare-fun lt!1677726 () ListMap!3505)

(assert (=> b!4495209 (= (= lt!1677726 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167992 lambda!167991))))

(assert (=> bs!833149 (= (= lt!1677726 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167992 lambda!167958))))

(assert (=> bs!833150 (not (= lambda!167992 lambda!167834))))

(assert (=> bs!833151 (= (= lt!1677726 lt!1677668) (= lambda!167992 lambda!167987))))

(assert (=> bs!833152 (= (= lt!1677726 lt!1677422) (= lambda!167992 lambda!167954))))

(assert (=> bs!833149 (= (= lt!1677726 lt!1677463) (= lambda!167992 lambda!167959))))

(assert (=> bs!833153 (= (= lt!1677726 lt!1677662) (= lambda!167992 lambda!167988))))

(assert (=> bs!833151 (= (= lt!1677726 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167992 lambda!167986))))

(assert (=> bs!833152 (= (= lt!1677726 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167992 lambda!167953))))

(assert (=> bs!833154 (= (= lt!1677726 lt!1677416) (= lambda!167992 lambda!167955))))

(assert (=> bs!833155 (= (= lt!1677726 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167992 lambda!167990))))

(assert (=> bs!833156 (= (= lt!1677726 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167992 lambda!167957))))

(assert (=> bs!833157 (= (= lt!1677726 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167992 lambda!167985))))

(assert (=> bs!833158 (= (= lt!1677726 lt!1677457) (= lambda!167992 lambda!167960))))

(assert (=> bs!833159 (= (= lt!1677726 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167992 lambda!167952))))

(assert (=> b!4495209 true))

(declare-fun bs!833160 () Bool)

(declare-fun d!1378383 () Bool)

(assert (= bs!833160 (and d!1378383 b!4495209)))

(declare-fun lambda!167993 () Int)

(declare-fun lt!1677720 () ListMap!3505)

(assert (=> bs!833160 (= (= lt!1677720 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167993 lambda!167991))))

(assert (=> bs!833160 (= (= lt!1677720 lt!1677726) (= lambda!167993 lambda!167992))))

(declare-fun bs!833161 () Bool)

(assert (= bs!833161 (and d!1378383 b!4494898)))

(assert (=> bs!833161 (= (= lt!1677720 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167993 lambda!167958))))

(declare-fun bs!833162 () Bool)

(assert (= bs!833162 (and d!1378383 d!1378001)))

(assert (=> bs!833162 (not (= lambda!167993 lambda!167834))))

(declare-fun bs!833163 () Bool)

(assert (= bs!833163 (and d!1378383 b!4495164)))

(assert (=> bs!833163 (= (= lt!1677720 lt!1677668) (= lambda!167993 lambda!167987))))

(declare-fun bs!833164 () Bool)

(assert (= bs!833164 (and d!1378383 b!4494831)))

(assert (=> bs!833164 (= (= lt!1677720 lt!1677422) (= lambda!167993 lambda!167954))))

(assert (=> bs!833161 (= (= lt!1677720 lt!1677463) (= lambda!167993 lambda!167959))))

(declare-fun bs!833165 () Bool)

(assert (= bs!833165 (and d!1378383 d!1378379)))

(assert (=> bs!833165 (= (= lt!1677720 lt!1677662) (= lambda!167993 lambda!167988))))

(assert (=> bs!833163 (= (= lt!1677720 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167993 lambda!167986))))

(assert (=> bs!833164 (= (= lt!1677720 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167993 lambda!167953))))

(declare-fun bs!833166 () Bool)

(assert (= bs!833166 (and d!1378383 d!1378061)))

(assert (=> bs!833166 (= (= lt!1677720 lt!1677416) (= lambda!167993 lambda!167955))))

(declare-fun bs!833167 () Bool)

(assert (= bs!833167 (and d!1378383 b!4495208)))

(assert (=> bs!833167 (= (= lt!1677720 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167993 lambda!167990))))

(declare-fun bs!833168 () Bool)

(assert (= bs!833168 (and d!1378383 b!4494897)))

(assert (=> bs!833168 (= (= lt!1677720 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167993 lambda!167957))))

(declare-fun bs!833169 () Bool)

(assert (= bs!833169 (and d!1378383 b!4495163)))

(assert (=> bs!833169 (= (= lt!1677720 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167993 lambda!167985))))

(declare-fun bs!833170 () Bool)

(assert (= bs!833170 (and d!1378383 d!1378201)))

(assert (=> bs!833170 (= (= lt!1677720 lt!1677457) (= lambda!167993 lambda!167960))))

(declare-fun bs!833171 () Bool)

(assert (= bs!833171 (and d!1378383 b!4494830)))

(assert (=> bs!833171 (= (= lt!1677720 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167993 lambda!167952))))

(assert (=> d!1378383 true))

(declare-fun c!765914 () Bool)

(declare-fun bm!312798 () Bool)

(declare-fun call!312803 () Bool)

(assert (=> bm!312798 (= call!312803 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (ite c!765914 lambda!167990 lambda!167992)))))

(declare-fun b!4495206 () Bool)

(declare-fun e!2800039 () Bool)

(assert (=> b!4495206 (= e!2800039 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) lambda!167992))))

(declare-fun b!4495207 () Bool)

(declare-fun e!2800037 () Bool)

(assert (=> b!4495207 (= e!2800037 (invariantList!977 (toList!4244 lt!1677720)))))

(declare-fun e!2800038 () ListMap!3505)

(assert (=> b!4495208 (= e!2800038 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))))

(declare-fun lt!1677723 () Unit!91160)

(declare-fun call!312805 () Unit!91160)

(assert (=> b!4495208 (= lt!1677723 call!312805)))

(assert (=> b!4495208 call!312803))

(declare-fun lt!1677717 () Unit!91160)

(assert (=> b!4495208 (= lt!1677717 lt!1677723)))

(declare-fun call!312804 () Bool)

(assert (=> b!4495208 call!312804))

(declare-fun lt!1677722 () Unit!91160)

(declare-fun Unit!91281 () Unit!91160)

(assert (=> b!4495208 (= lt!1677722 Unit!91281)))

(declare-fun bm!312799 () Bool)

(assert (=> bm!312799 (= call!312804 (forall!10157 (ite c!765914 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (t!357604 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))) (ite c!765914 lambda!167990 lambda!167992)))))

(assert (=> b!4495209 (= e!2800038 lt!1677726)))

(declare-fun lt!1677714 () ListMap!3505)

(assert (=> b!4495209 (= lt!1677714 (+!1460 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))))))

(assert (=> b!4495209 (= lt!1677726 (addToMapMapFromBucket!645 (t!357604 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (+!1460 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))))))))

(declare-fun lt!1677730 () Unit!91160)

(assert (=> b!4495209 (= lt!1677730 call!312805)))

(assert (=> b!4495209 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) lambda!167991)))

(declare-fun lt!1677728 () Unit!91160)

(assert (=> b!4495209 (= lt!1677728 lt!1677730)))

(assert (=> b!4495209 (forall!10157 (toList!4244 lt!1677714) lambda!167992)))

(declare-fun lt!1677716 () Unit!91160)

(declare-fun Unit!91282 () Unit!91160)

(assert (=> b!4495209 (= lt!1677716 Unit!91282)))

(assert (=> b!4495209 call!312804))

(declare-fun lt!1677729 () Unit!91160)

(declare-fun Unit!91283 () Unit!91160)

(assert (=> b!4495209 (= lt!1677729 Unit!91283)))

(declare-fun lt!1677733 () Unit!91160)

(declare-fun Unit!91284 () Unit!91160)

(assert (=> b!4495209 (= lt!1677733 Unit!91284)))

(declare-fun lt!1677718 () Unit!91160)

(assert (=> b!4495209 (= lt!1677718 (forallContained!2413 (toList!4244 lt!1677714) lambda!167992 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))))))

(assert (=> b!4495209 (contains!13180 lt!1677714 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))))))

(declare-fun lt!1677721 () Unit!91160)

(declare-fun Unit!91285 () Unit!91160)

(assert (=> b!4495209 (= lt!1677721 Unit!91285)))

(assert (=> b!4495209 (contains!13180 lt!1677726 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))))))

(declare-fun lt!1677719 () Unit!91160)

(declare-fun Unit!91286 () Unit!91160)

(assert (=> b!4495209 (= lt!1677719 Unit!91286)))

(assert (=> b!4495209 (forall!10157 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lambda!167992)))

(declare-fun lt!1677715 () Unit!91160)

(declare-fun Unit!91287 () Unit!91160)

(assert (=> b!4495209 (= lt!1677715 Unit!91287)))

(assert (=> b!4495209 (forall!10157 (toList!4244 lt!1677714) lambda!167992)))

(declare-fun lt!1677727 () Unit!91160)

(declare-fun Unit!91288 () Unit!91160)

(assert (=> b!4495209 (= lt!1677727 Unit!91288)))

(declare-fun lt!1677731 () Unit!91160)

(declare-fun Unit!91289 () Unit!91160)

(assert (=> b!4495209 (= lt!1677731 Unit!91289)))

(declare-fun lt!1677732 () Unit!91160)

(assert (=> b!4495209 (= lt!1677732 (addForallContainsKeyThenBeforeAdding!300 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677726 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))) (_2!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))))))))

(assert (=> b!4495209 call!312803))

(declare-fun lt!1677724 () Unit!91160)

(assert (=> b!4495209 (= lt!1677724 lt!1677732)))

(assert (=> b!4495209 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) lambda!167992)))

(declare-fun lt!1677725 () Unit!91160)

(declare-fun Unit!91290 () Unit!91160)

(assert (=> b!4495209 (= lt!1677725 Unit!91290)))

(declare-fun res!1868394 () Bool)

(assert (=> b!4495209 (= res!1868394 (forall!10157 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lambda!167992))))

(assert (=> b!4495209 (=> (not res!1868394) (not e!2800039))))

(assert (=> b!4495209 e!2800039))

(declare-fun lt!1677734 () Unit!91160)

(declare-fun Unit!91291 () Unit!91160)

(assert (=> b!4495209 (= lt!1677734 Unit!91291)))

(assert (=> d!1378383 e!2800037))

(declare-fun res!1868392 () Bool)

(assert (=> d!1378383 (=> (not res!1868392) (not e!2800037))))

(assert (=> d!1378383 (= res!1868392 (forall!10157 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lambda!167993))))

(assert (=> d!1378383 (= lt!1677720 e!2800038)))

(assert (=> d!1378383 (= c!765914 ((_ is Nil!50522) (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))))))

(assert (=> d!1378383 (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))))

(assert (=> d!1378383 (= (addToMapMapFromBucket!645 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) lt!1677720)))

(declare-fun b!4495210 () Bool)

(declare-fun res!1868393 () Bool)

(assert (=> b!4495210 (=> (not res!1868393) (not e!2800037))))

(assert (=> b!4495210 (= res!1868393 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) lambda!167993))))

(declare-fun bm!312800 () Bool)

(assert (=> bm!312800 (= call!312805 (lemmaContainsAllItsOwnKeys!300 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))))))

(assert (= (and d!1378383 c!765914) b!4495208))

(assert (= (and d!1378383 (not c!765914)) b!4495209))

(assert (= (and b!4495209 res!1868394) b!4495206))

(assert (= (or b!4495208 b!4495209) bm!312798))

(assert (= (or b!4495208 b!4495209) bm!312799))

(assert (= (or b!4495208 b!4495209) bm!312800))

(assert (= (and d!1378383 res!1868392) b!4495210))

(assert (= (and b!4495210 res!1868393) b!4495207))

(declare-fun m!5222435 () Bool)

(assert (=> b!4495209 m!5222435))

(declare-fun m!5222437 () Bool)

(assert (=> b!4495209 m!5222437))

(assert (=> b!4495209 m!5221241))

(declare-fun m!5222439 () Bool)

(assert (=> b!4495209 m!5222439))

(assert (=> b!4495209 m!5221241))

(declare-fun m!5222441 () Bool)

(assert (=> b!4495209 m!5222441))

(declare-fun m!5222443 () Bool)

(assert (=> b!4495209 m!5222443))

(declare-fun m!5222445 () Bool)

(assert (=> b!4495209 m!5222445))

(assert (=> b!4495209 m!5222441))

(declare-fun m!5222447 () Bool)

(assert (=> b!4495209 m!5222447))

(declare-fun m!5222449 () Bool)

(assert (=> b!4495209 m!5222449))

(assert (=> b!4495209 m!5222449))

(assert (=> b!4495209 m!5222437))

(declare-fun m!5222451 () Bool)

(assert (=> b!4495209 m!5222451))

(declare-fun m!5222453 () Bool)

(assert (=> b!4495209 m!5222453))

(declare-fun m!5222455 () Bool)

(assert (=> bm!312799 m!5222455))

(assert (=> bm!312800 m!5221241))

(declare-fun m!5222457 () Bool)

(assert (=> bm!312800 m!5222457))

(declare-fun m!5222459 () Bool)

(assert (=> b!4495210 m!5222459))

(assert (=> b!4495206 m!5222435))

(declare-fun m!5222461 () Bool)

(assert (=> bm!312798 m!5222461))

(declare-fun m!5222463 () Bool)

(assert (=> d!1378383 m!5222463))

(declare-fun m!5222465 () Bool)

(assert (=> d!1378383 m!5222465))

(declare-fun m!5222467 () Bool)

(assert (=> b!4495207 m!5222467))

(assert (=> b!4494469 d!1378383))

(declare-fun bs!833172 () Bool)

(declare-fun d!1378385 () Bool)

(assert (= bs!833172 (and d!1378385 d!1377969)))

(declare-fun lambda!167994 () Int)

(assert (=> bs!833172 (= lambda!167994 lambda!167822)))

(declare-fun bs!833173 () Bool)

(assert (= bs!833173 (and d!1378385 d!1377981)))

(assert (=> bs!833173 (= lambda!167994 lambda!167827)))

(declare-fun bs!833174 () Bool)

(assert (= bs!833174 (and d!1378385 d!1377991)))

(assert (=> bs!833174 (= lambda!167994 lambda!167831)))

(declare-fun bs!833175 () Bool)

(assert (= bs!833175 (and d!1378385 d!1377983)))

(assert (=> bs!833175 (= lambda!167994 lambda!167830)))

(declare-fun bs!833176 () Bool)

(assert (= bs!833176 (and d!1378385 d!1377937)))

(assert (=> bs!833176 (= lambda!167994 lambda!167813)))

(declare-fun bs!833177 () Bool)

(assert (= bs!833177 (and d!1378385 d!1377943)))

(assert (=> bs!833177 (= lambda!167994 lambda!167819)))

(declare-fun bs!833178 () Bool)

(assert (= bs!833178 (and d!1378385 d!1378173)))

(assert (=> bs!833178 (= lambda!167994 lambda!167956)))

(declare-fun bs!833179 () Bool)

(assert (= bs!833179 (and d!1378385 d!1378007)))

(assert (=> bs!833179 (not (= lambda!167994 lambda!167837))))

(declare-fun bs!833180 () Bool)

(assert (= bs!833180 (and d!1378385 start!443220)))

(assert (=> bs!833180 (= lambda!167994 lambda!167781)))

(declare-fun bs!833181 () Bool)

(assert (= bs!833181 (and d!1378385 d!1377881)))

(assert (=> bs!833181 (= lambda!167994 lambda!167790)))

(declare-fun bs!833182 () Bool)

(assert (= bs!833182 (and d!1378385 d!1378381)))

(assert (=> bs!833182 (= lambda!167994 lambda!167989)))

(declare-fun bs!833183 () Bool)

(assert (= bs!833183 (and d!1378385 d!1377973)))

(assert (=> bs!833183 (= lambda!167994 lambda!167823)))

(declare-fun bs!833184 () Bool)

(assert (= bs!833184 (and d!1378385 d!1377979)))

(assert (=> bs!833184 (= lambda!167994 lambda!167826)))

(declare-fun bs!833185 () Bool)

(assert (= bs!833185 (and d!1378385 d!1377921)))

(assert (=> bs!833185 (= lambda!167994 lambda!167812)))

(declare-fun lt!1677753 () ListMap!3505)

(assert (=> d!1378385 (invariantList!977 (toList!4244 lt!1677753))))

(declare-fun e!2800049 () ListMap!3505)

(assert (=> d!1378385 (= lt!1677753 e!2800049)))

(declare-fun c!765923 () Bool)

(assert (=> d!1378385 (= c!765923 ((_ is Cons!50523) (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))))

(assert (=> d!1378385 (forall!10155 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))) lambda!167994)))

(assert (=> d!1378385 (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) lt!1677753)))

(declare-fun b!4495230 () Bool)

(assert (=> b!4495230 (= e!2800049 (addToMapMapFromBucket!645 (_2!28748 (h!56336 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))))))))

(declare-fun b!4495231 () Bool)

(assert (=> b!4495231 (= e!2800049 (ListMap!3506 Nil!50522))))

(assert (= (and d!1378385 c!765923) b!4495230))

(assert (= (and d!1378385 (not c!765923)) b!4495231))

(declare-fun m!5222509 () Bool)

(assert (=> d!1378385 m!5222509))

(declare-fun m!5222511 () Bool)

(assert (=> d!1378385 m!5222511))

(declare-fun m!5222513 () Bool)

(assert (=> b!4495230 m!5222513))

(assert (=> b!4495230 m!5222513))

(declare-fun m!5222515 () Bool)

(assert (=> b!4495230 m!5222515))

(assert (=> b!4494469 d!1378385))

(declare-fun d!1378389 () Bool)

(declare-fun c!765927 () Bool)

(assert (=> d!1378389 (= c!765927 ((_ is Nil!50525) (keys!17510 lt!1676948)))))

(declare-fun e!2800058 () (InoxSet K!11935))

(assert (=> d!1378389 (= (content!8239 (keys!17510 lt!1676948)) e!2800058)))

(declare-fun b!4495243 () Bool)

(assert (=> b!4495243 (= e!2800058 ((as const (Array K!11935 Bool)) false))))

(declare-fun b!4495244 () Bool)

(assert (=> b!4495244 (= e!2800058 ((_ map or) (store ((as const (Array K!11935 Bool)) false) (h!56340 (keys!17510 lt!1676948)) true) (content!8239 (t!357607 (keys!17510 lt!1676948)))))))

(assert (= (and d!1378389 c!765927) b!4495243))

(assert (= (and d!1378389 (not c!765927)) b!4495244))

(declare-fun m!5222527 () Bool)

(assert (=> b!4495244 m!5222527))

(declare-fun m!5222529 () Bool)

(assert (=> b!4495244 m!5222529))

(assert (=> b!4494462 d!1378389))

(assert (=> b!4494462 d!1378337))

(declare-fun d!1378401 () Bool)

(declare-fun c!765928 () Bool)

(assert (=> d!1378401 (= c!765928 ((_ is Nil!50525) (keys!17510 lt!1677156)))))

(declare-fun e!2800059 () (InoxSet K!11935))

(assert (=> d!1378401 (= (content!8239 (keys!17510 lt!1677156)) e!2800059)))

(declare-fun b!4495245 () Bool)

(assert (=> b!4495245 (= e!2800059 ((as const (Array K!11935 Bool)) false))))

(declare-fun b!4495246 () Bool)

(assert (=> b!4495246 (= e!2800059 ((_ map or) (store ((as const (Array K!11935 Bool)) false) (h!56340 (keys!17510 lt!1677156)) true) (content!8239 (t!357607 (keys!17510 lt!1677156)))))))

(assert (= (and d!1378401 c!765928) b!4495245))

(assert (= (and d!1378401 (not c!765928)) b!4495246))

(declare-fun m!5222531 () Bool)

(assert (=> b!4495246 m!5222531))

(declare-fun m!5222533 () Bool)

(assert (=> b!4495246 m!5222533))

(assert (=> b!4494462 d!1378401))

(declare-fun bs!833188 () Bool)

(declare-fun b!4495248 () Bool)

(assert (= bs!833188 (and b!4495248 b!4495089)))

(declare-fun lambda!167995 () Int)

(assert (=> bs!833188 (= (= (toList!4244 lt!1677156) (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952)))) (= lambda!167995 lambda!167980))))

(declare-fun bs!833189 () Bool)

(assert (= bs!833189 (and b!4495248 b!4494549)))

(assert (=> bs!833189 (= (= (toList!4244 lt!1677156) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!167995 lambda!167863))))

(declare-fun bs!833190 () Bool)

(assert (= bs!833190 (and b!4495248 b!4495085)))

(assert (=> bs!833190 (= (= (toList!4244 lt!1677156) (t!357604 (toList!4244 lt!1676952))) (= lambda!167995 lambda!167979))))

(declare-fun bs!833191 () Bool)

(assert (= bs!833191 (and b!4495248 b!4494614)))

(assert (=> bs!833191 (= (= (toList!4244 lt!1677156) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (= lambda!167995 lambda!167888))))

(declare-fun bs!833192 () Bool)

(assert (= bs!833192 (and b!4495248 b!4494594)))

(assert (=> bs!833192 (= (= (toList!4244 lt!1677156) (toList!4244 lt!1676952)) (= lambda!167995 lambda!167885))))

(declare-fun bs!833193 () Bool)

(assert (= bs!833193 (and b!4495248 b!4495127)))

(assert (=> bs!833193 (= (= (toList!4244 lt!1677156) (toList!4244 lt!1676948)) (= lambda!167995 lambda!167983))))

(declare-fun bs!833194 () Bool)

(assert (= bs!833194 (and b!4495248 b!4494545)))

(assert (=> bs!833194 (= (= (toList!4244 lt!1677156) (t!357604 (toList!4244 lt!1676948))) (= lambda!167995 lambda!167860))))

(declare-fun bs!833195 () Bool)

(assert (= bs!833195 (and b!4495248 b!4495091)))

(assert (=> bs!833195 (= (= (toList!4244 lt!1677156) (toList!4244 lt!1676952)) (= lambda!167995 lambda!167981))))

(declare-fun bs!833197 () Bool)

(assert (= bs!833197 (and b!4495248 b!4494551)))

(assert (=> bs!833197 (= (= (toList!4244 lt!1677156) (toList!4244 lt!1676948)) (= lambda!167995 lambda!167864))))

(assert (=> b!4495248 true))

(declare-fun bs!833198 () Bool)

(declare-fun b!4495249 () Bool)

(assert (= bs!833198 (and b!4495249 b!4495128)))

(declare-fun lambda!167996 () Int)

(assert (=> bs!833198 (= lambda!167996 lambda!167984)))

(declare-fun bs!833199 () Bool)

(assert (= bs!833199 (and b!4495249 b!4494595)))

(assert (=> bs!833199 (= lambda!167996 lambda!167887)))

(declare-fun bs!833200 () Bool)

(assert (= bs!833200 (and b!4495249 b!4494615)))

(assert (=> bs!833200 (= lambda!167996 lambda!167889)))

(declare-fun bs!833201 () Bool)

(assert (= bs!833201 (and b!4495249 b!4494544)))

(assert (=> bs!833201 (= lambda!167996 lambda!167865)))

(declare-fun bs!833202 () Bool)

(assert (= bs!833202 (and b!4495249 b!4495084)))

(assert (=> bs!833202 (= lambda!167996 lambda!167982)))

(declare-fun d!1378403 () Bool)

(declare-fun e!2800060 () Bool)

(assert (=> d!1378403 e!2800060))

(declare-fun res!1868405 () Bool)

(assert (=> d!1378403 (=> (not res!1868405) (not e!2800060))))

(declare-fun lt!1677755 () List!50649)

(assert (=> d!1378403 (= res!1868405 (noDuplicate!722 lt!1677755))))

(assert (=> d!1378403 (= lt!1677755 (getKeysList!425 (toList!4244 lt!1677156)))))

(assert (=> d!1378403 (= (keys!17510 lt!1677156) lt!1677755)))

(declare-fun b!4495247 () Bool)

(declare-fun res!1868403 () Bool)

(assert (=> b!4495247 (=> (not res!1868403) (not e!2800060))))

(assert (=> b!4495247 (= res!1868403 (= (length!300 lt!1677755) (length!301 (toList!4244 lt!1677156))))))

(declare-fun res!1868404 () Bool)

(assert (=> b!4495248 (=> (not res!1868404) (not e!2800060))))

(assert (=> b!4495248 (= res!1868404 (forall!10159 lt!1677755 lambda!167995))))

(assert (=> b!4495249 (= e!2800060 (= (content!8239 lt!1677755) (content!8239 (map!11092 (toList!4244 lt!1677156) lambda!167996))))))

(assert (= (and d!1378403 res!1868405) b!4495247))

(assert (= (and b!4495247 res!1868403) b!4495248))

(assert (= (and b!4495248 res!1868404) b!4495249))

(declare-fun m!5222545 () Bool)

(assert (=> d!1378403 m!5222545))

(assert (=> d!1378403 m!5221917))

(declare-fun m!5222547 () Bool)

(assert (=> b!4495247 m!5222547))

(declare-fun m!5222549 () Bool)

(assert (=> b!4495247 m!5222549))

(declare-fun m!5222551 () Bool)

(assert (=> b!4495248 m!5222551))

(declare-fun m!5222553 () Bool)

(assert (=> b!4495249 m!5222553))

(declare-fun m!5222555 () Bool)

(assert (=> b!4495249 m!5222555))

(assert (=> b!4495249 m!5222555))

(declare-fun m!5222557 () Bool)

(assert (=> b!4495249 m!5222557))

(assert (=> b!4494462 d!1378403))

(declare-fun d!1378411 () Bool)

(declare-fun res!1868410 () Bool)

(declare-fun e!2800068 () Bool)

(assert (=> d!1378411 (=> res!1868410 e!2800068)))

(assert (=> d!1378411 (= res!1868410 (and ((_ is Cons!50522) (toList!4244 lt!1676948)) (= (_1!28747 (h!56335 (toList!4244 lt!1676948))) key!3287)))))

(assert (=> d!1378411 (= (containsKey!1662 (toList!4244 lt!1676948) key!3287) e!2800068)))

(declare-fun b!4495257 () Bool)

(declare-fun e!2800069 () Bool)

(assert (=> b!4495257 (= e!2800068 e!2800069)))

(declare-fun res!1868411 () Bool)

(assert (=> b!4495257 (=> (not res!1868411) (not e!2800069))))

(assert (=> b!4495257 (= res!1868411 ((_ is Cons!50522) (toList!4244 lt!1676948)))))

(declare-fun b!4495258 () Bool)

(assert (=> b!4495258 (= e!2800069 (containsKey!1662 (t!357604 (toList!4244 lt!1676948)) key!3287))))

(assert (= (and d!1378411 (not res!1868410)) b!4495257))

(assert (= (and b!4495257 res!1868411) b!4495258))

(declare-fun m!5222559 () Bool)

(assert (=> b!4495258 m!5222559))

(assert (=> b!4494396 d!1378411))

(declare-fun d!1378413 () Bool)

(assert (=> d!1378413 (containsKey!1662 (toList!4244 lt!1676948) key!3287)))

(declare-fun lt!1677756 () Unit!91160)

(assert (=> d!1378413 (= lt!1677756 (choose!29033 (toList!4244 lt!1676948) key!3287))))

(assert (=> d!1378413 (invariantList!977 (toList!4244 lt!1676948))))

(assert (=> d!1378413 (= (lemmaInGetKeysListThenContainsKey!424 (toList!4244 lt!1676948) key!3287) lt!1677756)))

(declare-fun bs!833203 () Bool)

(assert (= bs!833203 d!1378413))

(assert (=> bs!833203 m!5221075))

(declare-fun m!5222561 () Bool)

(assert (=> bs!833203 m!5222561))

(assert (=> bs!833203 m!5221297))

(assert (=> b!4494396 d!1378413))

(assert (=> b!4494441 d!1378367))

(assert (=> b!4494441 d!1378369))

(declare-fun bs!833207 () Bool)

(declare-fun b!4495261 () Bool)

(assert (= bs!833207 (and b!4495261 b!4495209)))

(declare-fun lambda!167997 () Int)

(assert (=> bs!833207 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167997 lambda!167991))))

(assert (=> bs!833207 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677726) (= lambda!167997 lambda!167992))))

(declare-fun bs!833210 () Bool)

(assert (= bs!833210 (and b!4495261 b!4494898)))

(assert (=> bs!833210 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167997 lambda!167958))))

(declare-fun bs!833212 () Bool)

(assert (= bs!833212 (and b!4495261 d!1378001)))

(assert (=> bs!833212 (not (= lambda!167997 lambda!167834))))

(declare-fun bs!833213 () Bool)

(assert (= bs!833213 (and b!4495261 d!1378383)))

(assert (=> bs!833213 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677720) (= lambda!167997 lambda!167993))))

(declare-fun bs!833215 () Bool)

(assert (= bs!833215 (and b!4495261 b!4495164)))

(assert (=> bs!833215 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677668) (= lambda!167997 lambda!167987))))

(declare-fun bs!833217 () Bool)

(assert (= bs!833217 (and b!4495261 b!4494831)))

(assert (=> bs!833217 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677422) (= lambda!167997 lambda!167954))))

(assert (=> bs!833210 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677463) (= lambda!167997 lambda!167959))))

(declare-fun bs!833219 () Bool)

(assert (= bs!833219 (and b!4495261 d!1378379)))

(assert (=> bs!833219 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677662) (= lambda!167997 lambda!167988))))

(assert (=> bs!833215 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167997 lambda!167986))))

(assert (=> bs!833217 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167997 lambda!167953))))

(declare-fun bs!833222 () Bool)

(assert (= bs!833222 (and b!4495261 d!1378061)))

(assert (=> bs!833222 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677416) (= lambda!167997 lambda!167955))))

(declare-fun bs!833224 () Bool)

(assert (= bs!833224 (and b!4495261 b!4495208)))

(assert (=> bs!833224 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167997 lambda!167990))))

(declare-fun bs!833226 () Bool)

(assert (= bs!833226 (and b!4495261 b!4494897)))

(assert (=> bs!833226 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167997 lambda!167957))))

(declare-fun bs!833227 () Bool)

(assert (= bs!833227 (and b!4495261 b!4495163)))

(assert (=> bs!833227 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167997 lambda!167985))))

(declare-fun bs!833228 () Bool)

(assert (= bs!833228 (and b!4495261 d!1378201)))

(assert (=> bs!833228 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677457) (= lambda!167997 lambda!167960))))

(declare-fun bs!833229 () Bool)

(assert (= bs!833229 (and b!4495261 b!4494830)))

(assert (=> bs!833229 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167997 lambda!167952))))

(assert (=> b!4495261 true))

(declare-fun bs!833230 () Bool)

(declare-fun b!4495262 () Bool)

(assert (= bs!833230 (and b!4495262 b!4495209)))

(declare-fun lambda!167998 () Int)

(assert (=> bs!833230 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167998 lambda!167991))))

(assert (=> bs!833230 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677726) (= lambda!167998 lambda!167992))))

(declare-fun bs!833231 () Bool)

(assert (= bs!833231 (and b!4495262 b!4494898)))

(assert (=> bs!833231 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167998 lambda!167958))))

(declare-fun bs!833232 () Bool)

(assert (= bs!833232 (and b!4495262 d!1378001)))

(assert (=> bs!833232 (not (= lambda!167998 lambda!167834))))

(declare-fun bs!833233 () Bool)

(assert (= bs!833233 (and b!4495262 d!1378383)))

(assert (=> bs!833233 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677720) (= lambda!167998 lambda!167993))))

(declare-fun bs!833234 () Bool)

(assert (= bs!833234 (and b!4495262 b!4495164)))

(assert (=> bs!833234 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677668) (= lambda!167998 lambda!167987))))

(declare-fun bs!833235 () Bool)

(assert (= bs!833235 (and b!4495262 b!4495261)))

(assert (=> bs!833235 (= lambda!167998 lambda!167997)))

(declare-fun bs!833236 () Bool)

(assert (= bs!833236 (and b!4495262 b!4494831)))

(assert (=> bs!833236 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677422) (= lambda!167998 lambda!167954))))

(assert (=> bs!833231 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677463) (= lambda!167998 lambda!167959))))

(declare-fun bs!833237 () Bool)

(assert (= bs!833237 (and b!4495262 d!1378379)))

(assert (=> bs!833237 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677662) (= lambda!167998 lambda!167988))))

(assert (=> bs!833234 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167998 lambda!167986))))

(assert (=> bs!833236 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167998 lambda!167953))))

(declare-fun bs!833238 () Bool)

(assert (= bs!833238 (and b!4495262 d!1378061)))

(assert (=> bs!833238 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677416) (= lambda!167998 lambda!167955))))

(declare-fun bs!833239 () Bool)

(assert (= bs!833239 (and b!4495262 b!4495208)))

(assert (=> bs!833239 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167998 lambda!167990))))

(declare-fun bs!833240 () Bool)

(assert (= bs!833240 (and b!4495262 b!4494897)))

(assert (=> bs!833240 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167998 lambda!167957))))

(declare-fun bs!833241 () Bool)

(assert (= bs!833241 (and b!4495262 b!4495163)))

(assert (=> bs!833241 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167998 lambda!167985))))

(declare-fun bs!833242 () Bool)

(assert (= bs!833242 (and b!4495262 d!1378201)))

(assert (=> bs!833242 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677457) (= lambda!167998 lambda!167960))))

(declare-fun bs!833243 () Bool)

(assert (= bs!833243 (and b!4495262 b!4494830)))

(assert (=> bs!833243 (= (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167998 lambda!167952))))

(assert (=> b!4495262 true))

(declare-fun lt!1677769 () ListMap!3505)

(declare-fun lambda!167999 () Int)

(assert (=> bs!833230 (= (= lt!1677769 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167999 lambda!167991))))

(assert (=> bs!833230 (= (= lt!1677769 lt!1677726) (= lambda!167999 lambda!167992))))

(assert (=> bs!833231 (= (= lt!1677769 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167999 lambda!167958))))

(assert (=> bs!833232 (not (= lambda!167999 lambda!167834))))

(assert (=> bs!833233 (= (= lt!1677769 lt!1677720) (= lambda!167999 lambda!167993))))

(assert (=> bs!833234 (= (= lt!1677769 lt!1677668) (= lambda!167999 lambda!167987))))

(assert (=> bs!833235 (= (= lt!1677769 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (= lambda!167999 lambda!167997))))

(assert (=> bs!833236 (= (= lt!1677769 lt!1677422) (= lambda!167999 lambda!167954))))

(assert (=> bs!833231 (= (= lt!1677769 lt!1677463) (= lambda!167999 lambda!167959))))

(assert (=> b!4495262 (= (= lt!1677769 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (= lambda!167999 lambda!167998))))

(assert (=> bs!833237 (= (= lt!1677769 lt!1677662) (= lambda!167999 lambda!167988))))

(assert (=> bs!833234 (= (= lt!1677769 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167999 lambda!167986))))

(assert (=> bs!833236 (= (= lt!1677769 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167999 lambda!167953))))

(assert (=> bs!833238 (= (= lt!1677769 lt!1677416) (= lambda!167999 lambda!167955))))

(assert (=> bs!833239 (= (= lt!1677769 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!167999 lambda!167990))))

(assert (=> bs!833240 (= (= lt!1677769 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!167999 lambda!167957))))

(assert (=> bs!833241 (= (= lt!1677769 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!167999 lambda!167985))))

(assert (=> bs!833242 (= (= lt!1677769 lt!1677457) (= lambda!167999 lambda!167960))))

(assert (=> bs!833243 (= (= lt!1677769 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!167999 lambda!167952))))

(assert (=> b!4495262 true))

(declare-fun bs!833244 () Bool)

(declare-fun d!1378415 () Bool)

(assert (= bs!833244 (and d!1378415 b!4495209)))

(declare-fun lt!1677763 () ListMap!3505)

(declare-fun lambda!168000 () Int)

(assert (=> bs!833244 (= (= lt!1677763 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!168000 lambda!167991))))

(assert (=> bs!833244 (= (= lt!1677763 lt!1677726) (= lambda!168000 lambda!167992))))

(declare-fun bs!833245 () Bool)

(assert (= bs!833245 (and d!1378415 b!4494898)))

(assert (=> bs!833245 (= (= lt!1677763 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!168000 lambda!167958))))

(declare-fun bs!833246 () Bool)

(assert (= bs!833246 (and d!1378415 d!1378001)))

(assert (=> bs!833246 (not (= lambda!168000 lambda!167834))))

(declare-fun bs!833247 () Bool)

(assert (= bs!833247 (and d!1378415 b!4495262)))

(assert (=> bs!833247 (= (= lt!1677763 lt!1677769) (= lambda!168000 lambda!167999))))

(declare-fun bs!833248 () Bool)

(assert (= bs!833248 (and d!1378415 d!1378383)))

(assert (=> bs!833248 (= (= lt!1677763 lt!1677720) (= lambda!168000 lambda!167993))))

(declare-fun bs!833249 () Bool)

(assert (= bs!833249 (and d!1378415 b!4495164)))

(assert (=> bs!833249 (= (= lt!1677763 lt!1677668) (= lambda!168000 lambda!167987))))

(declare-fun bs!833250 () Bool)

(assert (= bs!833250 (and d!1378415 b!4495261)))

(assert (=> bs!833250 (= (= lt!1677763 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (= lambda!168000 lambda!167997))))

(declare-fun bs!833251 () Bool)

(assert (= bs!833251 (and d!1378415 b!4494831)))

(assert (=> bs!833251 (= (= lt!1677763 lt!1677422) (= lambda!168000 lambda!167954))))

(assert (=> bs!833245 (= (= lt!1677763 lt!1677463) (= lambda!168000 lambda!167959))))

(assert (=> bs!833247 (= (= lt!1677763 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (= lambda!168000 lambda!167998))))

(declare-fun bs!833252 () Bool)

(assert (= bs!833252 (and d!1378415 d!1378379)))

(assert (=> bs!833252 (= (= lt!1677763 lt!1677662) (= lambda!168000 lambda!167988))))

(assert (=> bs!833249 (= (= lt!1677763 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!168000 lambda!167986))))

(assert (=> bs!833251 (= (= lt!1677763 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!168000 lambda!167953))))

(declare-fun bs!833253 () Bool)

(assert (= bs!833253 (and d!1378415 d!1378061)))

(assert (=> bs!833253 (= (= lt!1677763 lt!1677416) (= lambda!168000 lambda!167955))))

(declare-fun bs!833254 () Bool)

(assert (= bs!833254 (and d!1378415 b!4495208)))

(assert (=> bs!833254 (= (= lt!1677763 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))) (= lambda!168000 lambda!167990))))

(declare-fun bs!833255 () Bool)

(assert (= bs!833255 (and d!1378415 b!4494897)))

(assert (=> bs!833255 (= (= lt!1677763 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (= lambda!168000 lambda!167957))))

(declare-fun bs!833256 () Bool)

(assert (= bs!833256 (and d!1378415 b!4495163)))

(assert (=> bs!833256 (= (= lt!1677763 (extractMap!1174 (t!357605 (toList!4243 lt!1676946)))) (= lambda!168000 lambda!167985))))

(declare-fun bs!833257 () Bool)

(assert (= bs!833257 (and d!1378415 d!1378201)))

(assert (=> bs!833257 (= (= lt!1677763 lt!1677457) (= lambda!168000 lambda!167960))))

(declare-fun bs!833258 () Bool)

(assert (= bs!833258 (and d!1378415 b!4494830)))

(assert (=> bs!833258 (= (= lt!1677763 (extractMap!1174 (t!357605 (t!357605 (toList!4243 lm!1477))))) (= lambda!168000 lambda!167952))))

(assert (=> d!1378415 true))

(declare-fun call!312812 () Bool)

(declare-fun c!765929 () Bool)

(declare-fun bm!312807 () Bool)

(assert (=> bm!312807 (= call!312812 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (ite c!765929 lambda!167997 lambda!167999)))))

(declare-fun b!4495259 () Bool)

(declare-fun e!2800072 () Bool)

(assert (=> b!4495259 (= e!2800072 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) lambda!167999))))

(declare-fun b!4495260 () Bool)

(declare-fun e!2800070 () Bool)

(assert (=> b!4495260 (= e!2800070 (invariantList!977 (toList!4244 lt!1677763)))))

(declare-fun e!2800071 () ListMap!3505)

(assert (=> b!4495261 (= e!2800071 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))))

(declare-fun lt!1677766 () Unit!91160)

(declare-fun call!312814 () Unit!91160)

(assert (=> b!4495261 (= lt!1677766 call!312814)))

(assert (=> b!4495261 call!312812))

(declare-fun lt!1677760 () Unit!91160)

(assert (=> b!4495261 (= lt!1677760 lt!1677766)))

(declare-fun call!312813 () Bool)

(assert (=> b!4495261 call!312813))

(declare-fun lt!1677765 () Unit!91160)

(declare-fun Unit!91297 () Unit!91160)

(assert (=> b!4495261 (= lt!1677765 Unit!91297)))

(declare-fun bm!312808 () Bool)

(assert (=> bm!312808 (= call!312813 (forall!10157 (ite c!765929 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (t!357604 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))) (ite c!765929 lambda!167997 lambda!167999)))))

(assert (=> b!4495262 (= e!2800071 lt!1677769)))

(declare-fun lt!1677757 () ListMap!3505)

(assert (=> b!4495262 (= lt!1677757 (+!1460 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))))))

(assert (=> b!4495262 (= lt!1677769 (addToMapMapFromBucket!645 (t!357604 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (+!1460 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))))))

(declare-fun lt!1677773 () Unit!91160)

(assert (=> b!4495262 (= lt!1677773 call!312814)))

(assert (=> b!4495262 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) lambda!167998)))

(declare-fun lt!1677771 () Unit!91160)

(assert (=> b!4495262 (= lt!1677771 lt!1677773)))

(assert (=> b!4495262 (forall!10157 (toList!4244 lt!1677757) lambda!167999)))

(declare-fun lt!1677759 () Unit!91160)

(declare-fun Unit!91298 () Unit!91160)

(assert (=> b!4495262 (= lt!1677759 Unit!91298)))

(assert (=> b!4495262 call!312813))

(declare-fun lt!1677772 () Unit!91160)

(declare-fun Unit!91299 () Unit!91160)

(assert (=> b!4495262 (= lt!1677772 Unit!91299)))

(declare-fun lt!1677776 () Unit!91160)

(declare-fun Unit!91300 () Unit!91160)

(assert (=> b!4495262 (= lt!1677776 Unit!91300)))

(declare-fun lt!1677761 () Unit!91160)

(assert (=> b!4495262 (= lt!1677761 (forallContained!2413 (toList!4244 lt!1677757) lambda!167999 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))))))

(assert (=> b!4495262 (contains!13180 lt!1677757 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))))))

(declare-fun lt!1677764 () Unit!91160)

(declare-fun Unit!91301 () Unit!91160)

(assert (=> b!4495262 (= lt!1677764 Unit!91301)))

(assert (=> b!4495262 (contains!13180 lt!1677769 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))))))

(declare-fun lt!1677762 () Unit!91160)

(declare-fun Unit!91302 () Unit!91160)

(assert (=> b!4495262 (= lt!1677762 Unit!91302)))

(assert (=> b!4495262 (forall!10157 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lambda!167999)))

(declare-fun lt!1677758 () Unit!91160)

(declare-fun Unit!91303 () Unit!91160)

(assert (=> b!4495262 (= lt!1677758 Unit!91303)))

(assert (=> b!4495262 (forall!10157 (toList!4244 lt!1677757) lambda!167999)))

(declare-fun lt!1677770 () Unit!91160)

(declare-fun Unit!91304 () Unit!91160)

(assert (=> b!4495262 (= lt!1677770 Unit!91304)))

(declare-fun lt!1677774 () Unit!91160)

(declare-fun Unit!91305 () Unit!91160)

(assert (=> b!4495262 (= lt!1677774 Unit!91305)))

(declare-fun lt!1677775 () Unit!91160)

(assert (=> b!4495262 (= lt!1677775 (addForallContainsKeyThenBeforeAdding!300 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677769 (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))) (_2!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))))))

(assert (=> b!4495262 call!312812))

(declare-fun lt!1677767 () Unit!91160)

(assert (=> b!4495262 (= lt!1677767 lt!1677775)))

(assert (=> b!4495262 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) lambda!167999)))

(declare-fun lt!1677768 () Unit!91160)

(declare-fun Unit!91306 () Unit!91160)

(assert (=> b!4495262 (= lt!1677768 Unit!91306)))

(declare-fun res!1868414 () Bool)

(assert (=> b!4495262 (= res!1868414 (forall!10157 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lambda!167999))))

(assert (=> b!4495262 (=> (not res!1868414) (not e!2800072))))

(assert (=> b!4495262 e!2800072))

(declare-fun lt!1677777 () Unit!91160)

(declare-fun Unit!91307 () Unit!91160)

(assert (=> b!4495262 (= lt!1677777 Unit!91307)))

(assert (=> d!1378415 e!2800070))

(declare-fun res!1868412 () Bool)

(assert (=> d!1378415 (=> (not res!1868412) (not e!2800070))))

(assert (=> d!1378415 (= res!1868412 (forall!10157 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lambda!168000))))

(assert (=> d!1378415 (= lt!1677763 e!2800071)))

(assert (=> d!1378415 (= c!765929 ((_ is Nil!50522) (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))))

(assert (=> d!1378415 (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))))

(assert (=> d!1378415 (= (addToMapMapFromBucket!645 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) lt!1677763)))

(declare-fun b!4495263 () Bool)

(declare-fun res!1868413 () Bool)

(assert (=> b!4495263 (=> (not res!1868413) (not e!2800070))))

(assert (=> b!4495263 (= res!1868413 (forall!10157 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) lambda!168000))))

(declare-fun bm!312809 () Bool)

(assert (=> bm!312809 (= call!312814 (lemmaContainsAllItsOwnKeys!300 (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))))

(assert (= (and d!1378415 c!765929) b!4495261))

(assert (= (and d!1378415 (not c!765929)) b!4495262))

(assert (= (and b!4495262 res!1868414) b!4495259))

(assert (= (or b!4495261 b!4495262) bm!312807))

(assert (= (or b!4495261 b!4495262) bm!312808))

(assert (= (or b!4495261 b!4495262) bm!312809))

(assert (= (and d!1378415 res!1868412) b!4495263))

(assert (= (and b!4495263 res!1868413) b!4495260))

(declare-fun m!5222567 () Bool)

(assert (=> b!4495262 m!5222567))

(declare-fun m!5222569 () Bool)

(assert (=> b!4495262 m!5222569))

(assert (=> b!4495262 m!5221197))

(declare-fun m!5222571 () Bool)

(assert (=> b!4495262 m!5222571))

(assert (=> b!4495262 m!5221197))

(declare-fun m!5222573 () Bool)

(assert (=> b!4495262 m!5222573))

(declare-fun m!5222575 () Bool)

(assert (=> b!4495262 m!5222575))

(declare-fun m!5222577 () Bool)

(assert (=> b!4495262 m!5222577))

(assert (=> b!4495262 m!5222573))

(declare-fun m!5222579 () Bool)

(assert (=> b!4495262 m!5222579))

(declare-fun m!5222581 () Bool)

(assert (=> b!4495262 m!5222581))

(assert (=> b!4495262 m!5222581))

(assert (=> b!4495262 m!5222569))

(declare-fun m!5222583 () Bool)

(assert (=> b!4495262 m!5222583))

(declare-fun m!5222585 () Bool)

(assert (=> b!4495262 m!5222585))

(declare-fun m!5222587 () Bool)

(assert (=> bm!312808 m!5222587))

(assert (=> bm!312809 m!5221197))

(declare-fun m!5222589 () Bool)

(assert (=> bm!312809 m!5222589))

(declare-fun m!5222591 () Bool)

(assert (=> b!4495263 m!5222591))

(assert (=> b!4495259 m!5222567))

(declare-fun m!5222593 () Bool)

(assert (=> bm!312807 m!5222593))

(declare-fun m!5222595 () Bool)

(assert (=> d!1378415 m!5222595))

(declare-fun m!5222597 () Bool)

(assert (=> d!1378415 m!5222597))

(declare-fun m!5222599 () Bool)

(assert (=> b!4495260 m!5222599))

(assert (=> b!4494458 d!1378415))

(declare-fun bs!833259 () Bool)

(declare-fun d!1378443 () Bool)

(assert (= bs!833259 (and d!1378443 d!1377969)))

(declare-fun lambda!168001 () Int)

(assert (=> bs!833259 (= lambda!168001 lambda!167822)))

(declare-fun bs!833260 () Bool)

(assert (= bs!833260 (and d!1378443 d!1378385)))

(assert (=> bs!833260 (= lambda!168001 lambda!167994)))

(declare-fun bs!833261 () Bool)

(assert (= bs!833261 (and d!1378443 d!1377981)))

(assert (=> bs!833261 (= lambda!168001 lambda!167827)))

(declare-fun bs!833262 () Bool)

(assert (= bs!833262 (and d!1378443 d!1377991)))

(assert (=> bs!833262 (= lambda!168001 lambda!167831)))

(declare-fun bs!833263 () Bool)

(assert (= bs!833263 (and d!1378443 d!1377983)))

(assert (=> bs!833263 (= lambda!168001 lambda!167830)))

(declare-fun bs!833264 () Bool)

(assert (= bs!833264 (and d!1378443 d!1377937)))

(assert (=> bs!833264 (= lambda!168001 lambda!167813)))

(declare-fun bs!833265 () Bool)

(assert (= bs!833265 (and d!1378443 d!1377943)))

(assert (=> bs!833265 (= lambda!168001 lambda!167819)))

(declare-fun bs!833266 () Bool)

(assert (= bs!833266 (and d!1378443 d!1378173)))

(assert (=> bs!833266 (= lambda!168001 lambda!167956)))

(declare-fun bs!833267 () Bool)

(assert (= bs!833267 (and d!1378443 d!1378007)))

(assert (=> bs!833267 (not (= lambda!168001 lambda!167837))))

(declare-fun bs!833268 () Bool)

(assert (= bs!833268 (and d!1378443 start!443220)))

(assert (=> bs!833268 (= lambda!168001 lambda!167781)))

(declare-fun bs!833269 () Bool)

(assert (= bs!833269 (and d!1378443 d!1377881)))

(assert (=> bs!833269 (= lambda!168001 lambda!167790)))

(declare-fun bs!833270 () Bool)

(assert (= bs!833270 (and d!1378443 d!1378381)))

(assert (=> bs!833270 (= lambda!168001 lambda!167989)))

(declare-fun bs!833271 () Bool)

(assert (= bs!833271 (and d!1378443 d!1377973)))

(assert (=> bs!833271 (= lambda!168001 lambda!167823)))

(declare-fun bs!833272 () Bool)

(assert (= bs!833272 (and d!1378443 d!1377979)))

(assert (=> bs!833272 (= lambda!168001 lambda!167826)))

(declare-fun bs!833273 () Bool)

(assert (= bs!833273 (and d!1378443 d!1377921)))

(assert (=> bs!833273 (= lambda!168001 lambda!167812)))

(declare-fun lt!1677778 () ListMap!3505)

(assert (=> d!1378443 (invariantList!977 (toList!4244 lt!1677778))))

(declare-fun e!2800073 () ListMap!3505)

(assert (=> d!1378443 (= lt!1677778 e!2800073)))

(declare-fun c!765930 () Bool)

(assert (=> d!1378443 (= c!765930 ((_ is Cons!50523) (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))))

(assert (=> d!1378443 (forall!10155 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))) lambda!168001)))

(assert (=> d!1378443 (= (extractMap!1174 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) lt!1677778)))

(declare-fun b!4495264 () Bool)

(assert (=> b!4495264 (= e!2800073 (addToMapMapFromBucket!645 (_2!28748 (h!56336 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))) (extractMap!1174 (t!357605 (t!357605 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))))))))

(declare-fun b!4495265 () Bool)

(assert (=> b!4495265 (= e!2800073 (ListMap!3506 Nil!50522))))

(assert (= (and d!1378443 c!765930) b!4495264))

(assert (= (and d!1378443 (not c!765930)) b!4495265))

(declare-fun m!5222601 () Bool)

(assert (=> d!1378443 m!5222601))

(declare-fun m!5222603 () Bool)

(assert (=> d!1378443 m!5222603))

(declare-fun m!5222605 () Bool)

(assert (=> b!4495264 m!5222605))

(assert (=> b!4495264 m!5222605))

(declare-fun m!5222607 () Bool)

(assert (=> b!4495264 m!5222607))

(assert (=> b!4494458 d!1378443))

(declare-fun d!1378445 () Bool)

(declare-fun c!765931 () Bool)

(assert (=> d!1378445 (= c!765931 ((_ is Nil!50523) (t!357605 (toList!4243 lm!1477))))))

(declare-fun e!2800074 () (InoxSet tuple2!50908))

(assert (=> d!1378445 (= (content!8236 (t!357605 (toList!4243 lm!1477))) e!2800074)))

(declare-fun b!4495266 () Bool)

(assert (=> b!4495266 (= e!2800074 ((as const (Array tuple2!50908 Bool)) false))))

(declare-fun b!4495267 () Bool)

(assert (=> b!4495267 (= e!2800074 ((_ map or) (store ((as const (Array tuple2!50908 Bool)) false) (h!56336 (t!357605 (toList!4243 lm!1477))) true) (content!8236 (t!357605 (t!357605 (toList!4243 lm!1477))))))))

(assert (= (and d!1378445 c!765931) b!4495266))

(assert (= (and d!1378445 (not c!765931)) b!4495267))

(declare-fun m!5222609 () Bool)

(assert (=> b!4495267 m!5222609))

(assert (=> b!4495267 m!5221899))

(assert (=> d!1378015 d!1378445))

(declare-fun d!1378447 () Bool)

(declare-fun res!1868415 () Bool)

(declare-fun e!2800075 () Bool)

(assert (=> d!1378447 (=> res!1868415 e!2800075)))

(declare-fun e!2800076 () Bool)

(assert (=> d!1378447 (= res!1868415 e!2800076)))

(declare-fun res!1868417 () Bool)

(assert (=> d!1378447 (=> (not res!1868417) (not e!2800076))))

(assert (=> d!1378447 (= res!1868417 ((_ is Cons!50523) (t!357605 (toList!4243 lt!1676946))))))

(assert (=> d!1378447 (= (containsKeyBiggerList!98 (t!357605 (toList!4243 lt!1676946)) key!3287) e!2800075)))

(declare-fun b!4495268 () Bool)

(assert (=> b!4495268 (= e!2800076 (containsKey!1658 (_2!28748 (h!56336 (t!357605 (toList!4243 lt!1676946)))) key!3287))))

(declare-fun b!4495269 () Bool)

(declare-fun e!2800077 () Bool)

(assert (=> b!4495269 (= e!2800075 e!2800077)))

(declare-fun res!1868416 () Bool)

(assert (=> b!4495269 (=> (not res!1868416) (not e!2800077))))

(assert (=> b!4495269 (= res!1868416 ((_ is Cons!50523) (t!357605 (toList!4243 lt!1676946))))))

(declare-fun b!4495270 () Bool)

(assert (=> b!4495270 (= e!2800077 (containsKeyBiggerList!98 (t!357605 (t!357605 (toList!4243 lt!1676946))) key!3287))))

(assert (= (and d!1378447 res!1868417) b!4495268))

(assert (= (and d!1378447 (not res!1868415)) b!4495269))

(assert (= (and b!4495269 res!1868416) b!4495270))

(declare-fun m!5222611 () Bool)

(assert (=> b!4495268 m!5222611))

(declare-fun m!5222613 () Bool)

(assert (=> b!4495270 m!5222613))

(assert (=> b!4494457 d!1378447))

(declare-fun d!1378449 () Bool)

(declare-fun lt!1677779 () Bool)

(assert (=> d!1378449 (= lt!1677779 (select (content!8236 (toList!4243 lt!1677171)) (tuple2!50909 hash!344 newBucket!178)))))

(declare-fun e!2800078 () Bool)

(assert (=> d!1378449 (= lt!1677779 e!2800078)))

(declare-fun res!1868419 () Bool)

(assert (=> d!1378449 (=> (not res!1868419) (not e!2800078))))

(assert (=> d!1378449 (= res!1868419 ((_ is Cons!50523) (toList!4243 lt!1677171)))))

(assert (=> d!1378449 (= (contains!13179 (toList!4243 lt!1677171) (tuple2!50909 hash!344 newBucket!178)) lt!1677779)))

(declare-fun b!4495271 () Bool)

(declare-fun e!2800079 () Bool)

(assert (=> b!4495271 (= e!2800078 e!2800079)))

(declare-fun res!1868418 () Bool)

(assert (=> b!4495271 (=> res!1868418 e!2800079)))

(assert (=> b!4495271 (= res!1868418 (= (h!56336 (toList!4243 lt!1677171)) (tuple2!50909 hash!344 newBucket!178)))))

(declare-fun b!4495272 () Bool)

(assert (=> b!4495272 (= e!2800079 (contains!13179 (t!357605 (toList!4243 lt!1677171)) (tuple2!50909 hash!344 newBucket!178)))))

(assert (= (and d!1378449 res!1868419) b!4495271))

(assert (= (and b!4495271 (not res!1868418)) b!4495272))

(declare-fun m!5222615 () Bool)

(assert (=> d!1378449 m!5222615))

(declare-fun m!5222617 () Bool)

(assert (=> d!1378449 m!5222617))

(declare-fun m!5222619 () Bool)

(assert (=> b!4495272 m!5222619))

(assert (=> b!4494472 d!1378449))

(assert (=> b!4494399 d!1378337))

(declare-fun b!4495275 () Bool)

(declare-fun e!2800081 () Option!11032)

(assert (=> b!4495275 (= e!2800081 (getValueByKey!1012 (t!357605 (toList!4243 lt!1677166)) (_1!28748 (head!9330 lm!1477))))))

(declare-fun b!4495274 () Bool)

(declare-fun e!2800080 () Option!11032)

(assert (=> b!4495274 (= e!2800080 e!2800081)))

(declare-fun c!765933 () Bool)

(assert (=> b!4495274 (= c!765933 (and ((_ is Cons!50523) (toList!4243 lt!1677166)) (not (= (_1!28748 (h!56336 (toList!4243 lt!1677166))) (_1!28748 (head!9330 lm!1477))))))))

(declare-fun d!1378451 () Bool)

(declare-fun c!765932 () Bool)

(assert (=> d!1378451 (= c!765932 (and ((_ is Cons!50523) (toList!4243 lt!1677166)) (= (_1!28748 (h!56336 (toList!4243 lt!1677166))) (_1!28748 (head!9330 lm!1477)))))))

(assert (=> d!1378451 (= (getValueByKey!1012 (toList!4243 lt!1677166) (_1!28748 (head!9330 lm!1477))) e!2800080)))

(declare-fun b!4495276 () Bool)

(assert (=> b!4495276 (= e!2800081 None!11031)))

(declare-fun b!4495273 () Bool)

(assert (=> b!4495273 (= e!2800080 (Some!11031 (_2!28748 (h!56336 (toList!4243 lt!1677166)))))))

(assert (= (and d!1378451 c!765932) b!4495273))

(assert (= (and d!1378451 (not c!765932)) b!4495274))

(assert (= (and b!4495274 c!765933) b!4495275))

(assert (= (and b!4495274 (not c!765933)) b!4495276))

(declare-fun m!5222621 () Bool)

(assert (=> b!4495275 m!5222621))

(assert (=> b!4494467 d!1378451))

(assert (=> b!4494289 d!1378015))

(declare-fun bs!833274 () Bool)

(declare-fun b!4495279 () Bool)

(assert (= bs!833274 (and b!4495279 b!4495089)))

(declare-fun lambda!168002 () Int)

(assert (=> bs!833274 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952)))) (= lambda!168002 lambda!167980))))

(declare-fun bs!833275 () Bool)

(assert (= bs!833275 (and b!4495279 b!4494549)))

(assert (=> bs!833275 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!168002 lambda!167863))))

(declare-fun bs!833276 () Bool)

(assert (= bs!833276 (and b!4495279 b!4495085)))

(assert (=> bs!833276 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 lt!1676952))) (= lambda!168002 lambda!167979))))

(declare-fun bs!833277 () Bool)

(assert (= bs!833277 (and b!4495279 b!4494614)))

(assert (=> bs!833277 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (= lambda!168002 lambda!167888))))

(declare-fun bs!833278 () Bool)

(assert (= bs!833278 (and b!4495279 b!4495127)))

(assert (=> bs!833278 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (toList!4244 lt!1676948)) (= lambda!168002 lambda!167983))))

(declare-fun bs!833279 () Bool)

(assert (= bs!833279 (and b!4495279 b!4494545)))

(assert (=> bs!833279 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 lt!1676948))) (= lambda!168002 lambda!167860))))

(declare-fun bs!833280 () Bool)

(assert (= bs!833280 (and b!4495279 b!4495091)))

(assert (=> bs!833280 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (toList!4244 lt!1676952)) (= lambda!168002 lambda!167981))))

(declare-fun bs!833281 () Bool)

(assert (= bs!833281 (and b!4495279 b!4494551)))

(assert (=> bs!833281 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (toList!4244 lt!1676948)) (= lambda!168002 lambda!167864))))

(declare-fun bs!833282 () Bool)

(assert (= bs!833282 (and b!4495279 b!4495248)))

(assert (=> bs!833282 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (toList!4244 lt!1677156)) (= lambda!168002 lambda!167995))))

(declare-fun bs!833283 () Bool)

(assert (= bs!833283 (and b!4495279 b!4494594)))

(assert (=> bs!833283 (= (= (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (toList!4244 lt!1676952)) (= lambda!168002 lambda!167885))))

(assert (=> b!4495279 true))

(declare-fun bs!833284 () Bool)

(declare-fun b!4495283 () Bool)

(assert (= bs!833284 (and b!4495283 b!4495089)))

(declare-fun lambda!168003 () Int)

(assert (=> bs!833284 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952)))) (= lambda!168003 lambda!167980))))

(declare-fun bs!833285 () Bool)

(assert (= bs!833285 (and b!4495283 b!4494549)))

(assert (=> bs!833285 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!168003 lambda!167863))))

(declare-fun bs!833286 () Bool)

(assert (= bs!833286 (and b!4495283 b!4495085)))

(assert (=> bs!833286 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (t!357604 (toList!4244 lt!1676952))) (= lambda!168003 lambda!167979))))

(declare-fun bs!833287 () Bool)

(assert (= bs!833287 (and b!4495283 b!4494614)))

(assert (=> bs!833287 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (= lambda!168003 lambda!167888))))

(declare-fun bs!833288 () Bool)

(assert (= bs!833288 (and b!4495283 b!4495127)))

(assert (=> bs!833288 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (toList!4244 lt!1676948)) (= lambda!168003 lambda!167983))))

(declare-fun bs!833289 () Bool)

(assert (= bs!833289 (and b!4495283 b!4494545)))

(assert (=> bs!833289 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (t!357604 (toList!4244 lt!1676948))) (= lambda!168003 lambda!167860))))

(declare-fun bs!833290 () Bool)

(assert (= bs!833290 (and b!4495283 b!4495091)))

(assert (=> bs!833290 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (toList!4244 lt!1676952)) (= lambda!168003 lambda!167981))))

(declare-fun bs!833291 () Bool)

(assert (= bs!833291 (and b!4495283 b!4495279)))

(assert (=> bs!833291 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (= lambda!168003 lambda!168002))))

(declare-fun bs!833292 () Bool)

(assert (= bs!833292 (and b!4495283 b!4494551)))

(assert (=> bs!833292 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (toList!4244 lt!1676948)) (= lambda!168003 lambda!167864))))

(declare-fun bs!833293 () Bool)

(assert (= bs!833293 (and b!4495283 b!4495248)))

(assert (=> bs!833293 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (toList!4244 lt!1677156)) (= lambda!168003 lambda!167995))))

(declare-fun bs!833294 () Bool)

(assert (= bs!833294 (and b!4495283 b!4494594)))

(assert (=> bs!833294 (= (= (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (toList!4244 lt!1676952)) (= lambda!168003 lambda!167885))))

(assert (=> b!4495283 true))

(declare-fun bs!833295 () Bool)

(declare-fun b!4495285 () Bool)

(assert (= bs!833295 (and b!4495285 b!4495283)))

(declare-fun lambda!168004 () Int)

(assert (=> bs!833295 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (Cons!50522 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))) (= lambda!168004 lambda!168003))))

(declare-fun bs!833296 () Bool)

(assert (= bs!833296 (and b!4495285 b!4495089)))

(assert (=> bs!833296 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (Cons!50522 (h!56335 (toList!4244 lt!1676952)) (t!357604 (toList!4244 lt!1676952)))) (= lambda!168004 lambda!167980))))

(declare-fun bs!833297 () Bool)

(assert (= bs!833297 (and b!4495285 b!4494549)))

(assert (=> bs!833297 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (Cons!50522 (h!56335 (toList!4244 lt!1676948)) (t!357604 (toList!4244 lt!1676948)))) (= lambda!168004 lambda!167863))))

(declare-fun bs!833298 () Bool)

(assert (= bs!833298 (and b!4495285 b!4495085)))

(assert (=> bs!833298 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (t!357604 (toList!4244 lt!1676952))) (= lambda!168004 lambda!167979))))

(declare-fun bs!833299 () Bool)

(assert (= bs!833299 (and b!4495285 b!4494614)))

(assert (=> bs!833299 (= lambda!168004 lambda!167888)))

(declare-fun bs!833300 () Bool)

(assert (= bs!833300 (and b!4495285 b!4495127)))

(assert (=> bs!833300 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (toList!4244 lt!1676948)) (= lambda!168004 lambda!167983))))

(declare-fun bs!833301 () Bool)

(assert (= bs!833301 (and b!4495285 b!4494545)))

(assert (=> bs!833301 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (t!357604 (toList!4244 lt!1676948))) (= lambda!168004 lambda!167860))))

(declare-fun bs!833302 () Bool)

(assert (= bs!833302 (and b!4495285 b!4495091)))

(assert (=> bs!833302 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (toList!4244 lt!1676952)) (= lambda!168004 lambda!167981))))

(declare-fun bs!833303 () Bool)

(assert (= bs!833303 (and b!4495285 b!4495279)))

(assert (=> bs!833303 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (= lambda!168004 lambda!168002))))

(declare-fun bs!833304 () Bool)

(assert (= bs!833304 (and b!4495285 b!4494551)))

(assert (=> bs!833304 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (toList!4244 lt!1676948)) (= lambda!168004 lambda!167864))))

(declare-fun bs!833305 () Bool)

(assert (= bs!833305 (and b!4495285 b!4495248)))

(assert (=> bs!833305 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (toList!4244 lt!1677156)) (= lambda!168004 lambda!167995))))

(declare-fun bs!833306 () Bool)

(assert (= bs!833306 (and b!4495285 b!4494594)))

(assert (=> bs!833306 (= (= (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) (toList!4244 lt!1676952)) (= lambda!168004 lambda!167885))))

(assert (=> b!4495285 true))

(declare-fun bs!833307 () Bool)

(declare-fun b!4495278 () Bool)

(assert (= bs!833307 (and b!4495278 b!4494595)))

(declare-fun lambda!168005 () Int)

(assert (=> bs!833307 (= lambda!168005 lambda!167887)))

(declare-fun bs!833308 () Bool)

(assert (= bs!833308 (and b!4495278 b!4494615)))

(assert (=> bs!833308 (= lambda!168005 lambda!167889)))

(declare-fun bs!833309 () Bool)

(assert (= bs!833309 (and b!4495278 b!4495128)))

(assert (=> bs!833309 (= lambda!168005 lambda!167984)))

(declare-fun bs!833310 () Bool)

(assert (= bs!833310 (and b!4495278 b!4495249)))

(assert (=> bs!833310 (= lambda!168005 lambda!167996)))

(declare-fun bs!833311 () Bool)

(assert (= bs!833311 (and b!4495278 b!4494544)))

(assert (=> bs!833311 (= lambda!168005 lambda!167865)))

(declare-fun bs!833312 () Bool)

(assert (= bs!833312 (and b!4495278 b!4495084)))

(assert (=> bs!833312 (= lambda!168005 lambda!167982)))

(declare-fun b!4495277 () Bool)

(declare-fun res!1868420 () Bool)

(declare-fun e!2800084 () Bool)

(assert (=> b!4495277 (=> (not res!1868420) (not e!2800084))))

(declare-fun lt!1677782 () List!50649)

(assert (=> b!4495277 (= res!1868420 (= (length!300 lt!1677782) (length!301 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))))

(assert (=> b!4495278 (= e!2800084 (= (content!8239 lt!1677782) (content!8239 (map!11092 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) lambda!168005))))))

(assert (=> b!4495279 false))

(declare-fun lt!1677785 () Unit!91160)

(assert (=> b!4495279 (= lt!1677785 (forallContained!2411 (getKeysList!425 (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) lambda!168002 (_1!28747 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))))

(declare-fun e!2800085 () Unit!91160)

(declare-fun Unit!91319 () Unit!91160)

(assert (=> b!4495279 (= e!2800085 Unit!91319)))

(declare-fun b!4495280 () Bool)

(declare-fun e!2800082 () List!50649)

(assert (=> b!4495280 (= e!2800082 Nil!50525)))

(declare-fun b!4495281 () Bool)

(assert (=> b!4495281 false))

(declare-fun e!2800083 () Unit!91160)

(declare-fun Unit!91320 () Unit!91160)

(assert (=> b!4495281 (= e!2800083 Unit!91320)))

(declare-fun b!4495282 () Bool)

(declare-fun Unit!91321 () Unit!91160)

(assert (=> b!4495282 (= e!2800083 Unit!91321)))

(declare-fun d!1378453 () Bool)

(assert (=> d!1378453 e!2800084))

(declare-fun res!1868421 () Bool)

(assert (=> d!1378453 (=> (not res!1868421) (not e!2800084))))

(assert (=> d!1378453 (= res!1868421 (noDuplicate!722 lt!1677782))))

(assert (=> d!1378453 (= lt!1677782 e!2800082)))

(declare-fun c!765936 () Bool)

(assert (=> d!1378453 (= c!765936 ((_ is Cons!50522) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))

(assert (=> d!1378453 (invariantList!977 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))

(assert (=> d!1378453 (= (getKeysList!425 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) lt!1677782)))

(assert (=> b!4495283 (= e!2800082 (Cons!50525 (_1!28747 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (getKeysList!425 (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))))

(declare-fun c!765934 () Bool)

(assert (=> b!4495283 (= c!765934 (containsKey!1662 (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (_1!28747 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))))

(declare-fun lt!1677786 () Unit!91160)

(assert (=> b!4495283 (= lt!1677786 e!2800083)))

(declare-fun c!765935 () Bool)

(assert (=> b!4495283 (= c!765935 (contains!13183 (getKeysList!425 (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) (_1!28747 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))))

(declare-fun lt!1677784 () Unit!91160)

(assert (=> b!4495283 (= lt!1677784 e!2800085)))

(declare-fun lt!1677783 () List!50649)

(assert (=> b!4495283 (= lt!1677783 (getKeysList!425 (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))))

(declare-fun lt!1677780 () Unit!91160)

(assert (=> b!4495283 (= lt!1677780 (lemmaForallContainsAddHeadPreserves!142 (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) lt!1677783 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))))

(assert (=> b!4495283 (forall!10159 lt!1677783 lambda!168003)))

(declare-fun lt!1677781 () Unit!91160)

(assert (=> b!4495283 (= lt!1677781 lt!1677780)))

(declare-fun b!4495284 () Bool)

(declare-fun Unit!91322 () Unit!91160)

(assert (=> b!4495284 (= e!2800085 Unit!91322)))

(declare-fun res!1868422 () Bool)

(assert (=> b!4495285 (=> (not res!1868422) (not e!2800084))))

(assert (=> b!4495285 (= res!1868422 (forall!10159 lt!1677782 lambda!168004))))

(assert (= (and d!1378453 c!765936) b!4495283))

(assert (= (and d!1378453 (not c!765936)) b!4495280))

(assert (= (and b!4495283 c!765934) b!4495281))

(assert (= (and b!4495283 (not c!765934)) b!4495282))

(assert (= (and b!4495283 c!765935) b!4495279))

(assert (= (and b!4495283 (not c!765935)) b!4495284))

(assert (= (and d!1378453 res!1868421) b!4495277))

(assert (= (and b!4495277 res!1868420) b!4495285))

(assert (= (and b!4495285 res!1868422) b!4495278))

(declare-fun m!5222623 () Bool)

(assert (=> b!4495285 m!5222623))

(declare-fun m!5222625 () Bool)

(assert (=> d!1378453 m!5222625))

(assert (=> d!1378453 m!5221897))

(declare-fun m!5222627 () Bool)

(assert (=> b!4495278 m!5222627))

(declare-fun m!5222629 () Bool)

(assert (=> b!4495278 m!5222629))

(assert (=> b!4495278 m!5222629))

(declare-fun m!5222631 () Bool)

(assert (=> b!4495278 m!5222631))

(declare-fun m!5222633 () Bool)

(assert (=> b!4495277 m!5222633))

(assert (=> b!4495277 m!5221405))

(declare-fun m!5222635 () Bool)

(assert (=> b!4495283 m!5222635))

(declare-fun m!5222637 () Bool)

(assert (=> b!4495283 m!5222637))

(declare-fun m!5222639 () Bool)

(assert (=> b!4495283 m!5222639))

(declare-fun m!5222641 () Bool)

(assert (=> b!4495283 m!5222641))

(assert (=> b!4495283 m!5222635))

(declare-fun m!5222643 () Bool)

(assert (=> b!4495283 m!5222643))

(assert (=> b!4495279 m!5222635))

(assert (=> b!4495279 m!5222635))

(declare-fun m!5222645 () Bool)

(assert (=> b!4495279 m!5222645))

(assert (=> b!4494346 d!1378453))

(declare-fun d!1378455 () Bool)

(assert (=> d!1378455 (= (tail!7654 (toList!4243 lm!1477)) (t!357605 (toList!4243 lm!1477)))))

(assert (=> d!1377965 d!1378455))

(declare-fun d!1378457 () Bool)

(declare-fun res!1868427 () Bool)

(declare-fun e!2800090 () Bool)

(assert (=> d!1378457 (=> res!1868427 e!2800090)))

(assert (=> d!1378457 (= res!1868427 ((_ is Nil!50522) newBucket!178))))

(assert (=> d!1378457 (= (forall!10157 newBucket!178 lambda!167834) e!2800090)))

(declare-fun b!4495290 () Bool)

(declare-fun e!2800091 () Bool)

(assert (=> b!4495290 (= e!2800090 e!2800091)))

(declare-fun res!1868428 () Bool)

(assert (=> b!4495290 (=> (not res!1868428) (not e!2800091))))

(declare-fun dynLambda!21095 (Int tuple2!50906) Bool)

(assert (=> b!4495290 (= res!1868428 (dynLambda!21095 lambda!167834 (h!56335 newBucket!178)))))

(declare-fun b!4495291 () Bool)

(assert (=> b!4495291 (= e!2800091 (forall!10157 (t!357604 newBucket!178) lambda!167834))))

(assert (= (and d!1378457 (not res!1868427)) b!4495290))

(assert (= (and b!4495290 res!1868428) b!4495291))

(declare-fun b_lambda!151883 () Bool)

(assert (=> (not b_lambda!151883) (not b!4495290)))

(declare-fun m!5222647 () Bool)

(assert (=> b!4495290 m!5222647))

(declare-fun m!5222649 () Bool)

(assert (=> b!4495291 m!5222649))

(assert (=> d!1378001 d!1378457))

(declare-fun d!1378459 () Bool)

(declare-fun res!1868429 () Bool)

(declare-fun e!2800092 () Bool)

(assert (=> d!1378459 (=> res!1868429 e!2800092)))

(assert (=> d!1378459 (= res!1868429 (and ((_ is Cons!50522) (_2!28748 (h!56336 (toList!4243 lt!1676946)))) (= (_1!28747 (h!56335 (_2!28748 (h!56336 (toList!4243 lt!1676946))))) key!3287)))))

(assert (=> d!1378459 (= (containsKey!1658 (_2!28748 (h!56336 (toList!4243 lt!1676946))) key!3287) e!2800092)))

(declare-fun b!4495292 () Bool)

(declare-fun e!2800093 () Bool)

(assert (=> b!4495292 (= e!2800092 e!2800093)))

(declare-fun res!1868430 () Bool)

(assert (=> b!4495292 (=> (not res!1868430) (not e!2800093))))

(assert (=> b!4495292 (= res!1868430 ((_ is Cons!50522) (_2!28748 (h!56336 (toList!4243 lt!1676946)))))))

(declare-fun b!4495293 () Bool)

(assert (=> b!4495293 (= e!2800093 (containsKey!1658 (t!357604 (_2!28748 (h!56336 (toList!4243 lt!1676946)))) key!3287))))

(assert (= (and d!1378459 (not res!1868429)) b!4495292))

(assert (= (and b!4495292 res!1868430) b!4495293))

(declare-fun m!5222651 () Bool)

(assert (=> b!4495293 m!5222651))

(assert (=> b!4494455 d!1378459))

(declare-fun d!1378461 () Bool)

(declare-fun lt!1677787 () Bool)

(assert (=> d!1378461 (= lt!1677787 (select (content!8239 e!2799496) key!3287))))

(declare-fun e!2800095 () Bool)

(assert (=> d!1378461 (= lt!1677787 e!2800095)))

(declare-fun res!1868431 () Bool)

(assert (=> d!1378461 (=> (not res!1868431) (not e!2800095))))

(assert (=> d!1378461 (= res!1868431 ((_ is Cons!50525) e!2799496))))

(assert (=> d!1378461 (= (contains!13183 e!2799496 key!3287) lt!1677787)))

(declare-fun b!4495294 () Bool)

(declare-fun e!2800094 () Bool)

(assert (=> b!4495294 (= e!2800095 e!2800094)))

(declare-fun res!1868432 () Bool)

(assert (=> b!4495294 (=> res!1868432 e!2800094)))

(assert (=> b!4495294 (= res!1868432 (= (h!56340 e!2799496) key!3287))))

(declare-fun b!4495295 () Bool)

(assert (=> b!4495295 (= e!2800094 (contains!13183 (t!357607 e!2799496) key!3287))))

(assert (= (and d!1378461 res!1868431) b!4495294))

(assert (= (and b!4495294 (not res!1868432)) b!4495295))

(declare-fun m!5222653 () Bool)

(assert (=> d!1378461 m!5222653))

(declare-fun m!5222655 () Bool)

(assert (=> d!1378461 m!5222655))

(declare-fun m!5222657 () Bool)

(assert (=> b!4495295 m!5222657))

(assert (=> bm!312712 d!1378461))

(declare-fun b!4495296 () Bool)

(declare-fun e!2800096 () Bool)

(assert (=> b!4495296 (= e!2800096 (not (contains!13183 (keys!17510 (extractMap!1174 (toList!4243 lm!1477))) key!3287)))))

(declare-fun b!4495297 () Bool)

(declare-fun e!2800099 () List!50649)

(assert (=> b!4495297 (= e!2800099 (getKeysList!425 (toList!4244 (extractMap!1174 (toList!4243 lm!1477)))))))

(declare-fun b!4495298 () Bool)

(declare-fun e!2800101 () Bool)

(assert (=> b!4495298 (= e!2800101 (contains!13183 (keys!17510 (extractMap!1174 (toList!4243 lm!1477))) key!3287))))

(declare-fun b!4495299 () Bool)

(declare-fun e!2800098 () Unit!91160)

(declare-fun e!2800100 () Unit!91160)

(assert (=> b!4495299 (= e!2800098 e!2800100)))

(declare-fun c!765938 () Bool)

(declare-fun call!312815 () Bool)

(assert (=> b!4495299 (= c!765938 call!312815)))

(declare-fun bm!312810 () Bool)

(assert (=> bm!312810 (= call!312815 (contains!13183 e!2800099 key!3287))))

(declare-fun c!765939 () Bool)

(declare-fun c!765937 () Bool)

(assert (=> bm!312810 (= c!765939 c!765937)))

(declare-fun b!4495301 () Bool)

(declare-fun Unit!91323 () Unit!91160)

(assert (=> b!4495301 (= e!2800100 Unit!91323)))

(declare-fun b!4495302 () Bool)

(declare-fun e!2800097 () Bool)

(assert (=> b!4495302 (= e!2800097 e!2800101)))

(declare-fun res!1868434 () Bool)

(assert (=> b!4495302 (=> (not res!1868434) (not e!2800101))))

(assert (=> b!4495302 (= res!1868434 (isDefined!8320 (getValueByKey!1013 (toList!4244 (extractMap!1174 (toList!4243 lm!1477))) key!3287)))))

(declare-fun b!4495303 () Bool)

(assert (=> b!4495303 (= e!2800099 (keys!17510 (extractMap!1174 (toList!4243 lm!1477))))))

(declare-fun b!4495304 () Bool)

(declare-fun lt!1677792 () Unit!91160)

(assert (=> b!4495304 (= e!2800098 lt!1677792)))

(declare-fun lt!1677793 () Unit!91160)

(assert (=> b!4495304 (= lt!1677793 (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 (extractMap!1174 (toList!4243 lm!1477))) key!3287))))

(assert (=> b!4495304 (isDefined!8320 (getValueByKey!1013 (toList!4244 (extractMap!1174 (toList!4243 lm!1477))) key!3287))))

(declare-fun lt!1677788 () Unit!91160)

(assert (=> b!4495304 (= lt!1677788 lt!1677793)))

(assert (=> b!4495304 (= lt!1677792 (lemmaInListThenGetKeysListContains!421 (toList!4244 (extractMap!1174 (toList!4243 lm!1477))) key!3287))))

(assert (=> b!4495304 call!312815))

(declare-fun d!1378463 () Bool)

(assert (=> d!1378463 e!2800097))

(declare-fun res!1868433 () Bool)

(assert (=> d!1378463 (=> res!1868433 e!2800097)))

(assert (=> d!1378463 (= res!1868433 e!2800096)))

(declare-fun res!1868435 () Bool)

(assert (=> d!1378463 (=> (not res!1868435) (not e!2800096))))

(declare-fun lt!1677795 () Bool)

(assert (=> d!1378463 (= res!1868435 (not lt!1677795))))

(declare-fun lt!1677794 () Bool)

(assert (=> d!1378463 (= lt!1677795 lt!1677794)))

(declare-fun lt!1677791 () Unit!91160)

(assert (=> d!1378463 (= lt!1677791 e!2800098)))

(assert (=> d!1378463 (= c!765937 lt!1677794)))

(assert (=> d!1378463 (= lt!1677794 (containsKey!1662 (toList!4244 (extractMap!1174 (toList!4243 lm!1477))) key!3287))))

(assert (=> d!1378463 (= (contains!13180 (extractMap!1174 (toList!4243 lm!1477)) key!3287) lt!1677795)))

(declare-fun b!4495300 () Bool)

(assert (=> b!4495300 false))

(declare-fun lt!1677790 () Unit!91160)

(declare-fun lt!1677789 () Unit!91160)

(assert (=> b!4495300 (= lt!1677790 lt!1677789)))

(assert (=> b!4495300 (containsKey!1662 (toList!4244 (extractMap!1174 (toList!4243 lm!1477))) key!3287)))

(assert (=> b!4495300 (= lt!1677789 (lemmaInGetKeysListThenContainsKey!424 (toList!4244 (extractMap!1174 (toList!4243 lm!1477))) key!3287))))

(declare-fun Unit!91324 () Unit!91160)

(assert (=> b!4495300 (= e!2800100 Unit!91324)))

(assert (= (and d!1378463 c!765937) b!4495304))

(assert (= (and d!1378463 (not c!765937)) b!4495299))

(assert (= (and b!4495299 c!765938) b!4495300))

(assert (= (and b!4495299 (not c!765938)) b!4495301))

(assert (= (or b!4495304 b!4495299) bm!312810))

(assert (= (and bm!312810 c!765939) b!4495297))

(assert (= (and bm!312810 (not c!765939)) b!4495303))

(assert (= (and d!1378463 res!1868435) b!4495296))

(assert (= (and d!1378463 (not res!1868433)) b!4495302))

(assert (= (and b!4495302 res!1868434) b!4495298))

(assert (=> b!4495296 m!5220747))

(declare-fun m!5222659 () Bool)

(assert (=> b!4495296 m!5222659))

(assert (=> b!4495296 m!5222659))

(declare-fun m!5222661 () Bool)

(assert (=> b!4495296 m!5222661))

(declare-fun m!5222663 () Bool)

(assert (=> bm!312810 m!5222663))

(declare-fun m!5222665 () Bool)

(assert (=> d!1378463 m!5222665))

(assert (=> b!4495300 m!5222665))

(declare-fun m!5222667 () Bool)

(assert (=> b!4495300 m!5222667))

(declare-fun m!5222669 () Bool)

(assert (=> b!4495302 m!5222669))

(assert (=> b!4495302 m!5222669))

(declare-fun m!5222671 () Bool)

(assert (=> b!4495302 m!5222671))

(assert (=> b!4495303 m!5220747))

(assert (=> b!4495303 m!5222659))

(declare-fun m!5222673 () Bool)

(assert (=> b!4495297 m!5222673))

(declare-fun m!5222675 () Bool)

(assert (=> b!4495304 m!5222675))

(assert (=> b!4495304 m!5222669))

(assert (=> b!4495304 m!5222669))

(assert (=> b!4495304 m!5222671))

(declare-fun m!5222677 () Bool)

(assert (=> b!4495304 m!5222677))

(assert (=> b!4495298 m!5220747))

(assert (=> b!4495298 m!5222659))

(assert (=> b!4495298 m!5222659))

(assert (=> b!4495298 m!5222661))

(assert (=> d!1377969 d!1378463))

(assert (=> d!1377969 d!1377973))

(declare-fun d!1378465 () Bool)

(assert (=> d!1378465 (not (contains!13180 (extractMap!1174 (toList!4243 lm!1477)) key!3287))))

(assert (=> d!1378465 true))

(declare-fun _$26!299 () Unit!91160)

(assert (=> d!1378465 (= (choose!29028 lm!1477 key!3287 hashF!1107) _$26!299)))

(declare-fun bs!833313 () Bool)

(assert (= bs!833313 d!1378465))

(assert (=> bs!833313 m!5220747))

(assert (=> bs!833313 m!5220747))

(assert (=> bs!833313 m!5221149))

(assert (=> d!1377969 d!1378465))

(declare-fun d!1378467 () Bool)

(declare-fun res!1868436 () Bool)

(declare-fun e!2800102 () Bool)

(assert (=> d!1378467 (=> res!1868436 e!2800102)))

(assert (=> d!1378467 (= res!1868436 ((_ is Nil!50523) (toList!4243 lm!1477)))))

(assert (=> d!1378467 (= (forall!10155 (toList!4243 lm!1477) lambda!167822) e!2800102)))

(declare-fun b!4495305 () Bool)

(declare-fun e!2800103 () Bool)

(assert (=> b!4495305 (= e!2800102 e!2800103)))

(declare-fun res!1868437 () Bool)

(assert (=> b!4495305 (=> (not res!1868437) (not e!2800103))))

(assert (=> b!4495305 (= res!1868437 (dynLambda!21093 lambda!167822 (h!56336 (toList!4243 lm!1477))))))

(declare-fun b!4495306 () Bool)

(assert (=> b!4495306 (= e!2800103 (forall!10155 (t!357605 (toList!4243 lm!1477)) lambda!167822))))

(assert (= (and d!1378467 (not res!1868436)) b!4495305))

(assert (= (and b!4495305 res!1868437) b!4495306))

(declare-fun b_lambda!151885 () Bool)

(assert (=> (not b_lambda!151885) (not b!4495305)))

(declare-fun m!5222679 () Bool)

(assert (=> b!4495305 m!5222679))

(declare-fun m!5222681 () Bool)

(assert (=> b!4495306 m!5222681))

(assert (=> d!1377969 d!1378467))

(declare-fun d!1378469 () Bool)

(assert (=> d!1378469 (= (isEmpty!28573 (toList!4243 lm!1477)) ((_ is Nil!50523) (toList!4243 lm!1477)))))

(assert (=> d!1378011 d!1378469))

(declare-fun d!1378471 () Bool)

(declare-fun res!1868442 () Bool)

(declare-fun e!2800108 () Bool)

(assert (=> d!1378471 (=> res!1868442 e!2800108)))

(assert (=> d!1378471 (= res!1868442 (or ((_ is Nil!50523) (toList!4243 lm!1477)) ((_ is Nil!50523) (t!357605 (toList!4243 lm!1477)))))))

(assert (=> d!1378471 (= (isStrictlySorted!391 (toList!4243 lm!1477)) e!2800108)))

(declare-fun b!4495311 () Bool)

(declare-fun e!2800109 () Bool)

(assert (=> b!4495311 (= e!2800108 e!2800109)))

(declare-fun res!1868443 () Bool)

(assert (=> b!4495311 (=> (not res!1868443) (not e!2800109))))

(assert (=> b!4495311 (= res!1868443 (bvslt (_1!28748 (h!56336 (toList!4243 lm!1477))) (_1!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))))))

(declare-fun b!4495312 () Bool)

(assert (=> b!4495312 (= e!2800109 (isStrictlySorted!391 (t!357605 (toList!4243 lm!1477))))))

(assert (= (and d!1378471 (not res!1868442)) b!4495311))

(assert (= (and b!4495311 res!1868443) b!4495312))

(declare-fun m!5222683 () Bool)

(assert (=> b!4495312 m!5222683))

(assert (=> d!1378005 d!1378471))

(declare-fun d!1378473 () Bool)

(declare-fun isEmpty!28577 (Option!11032) Bool)

(assert (=> d!1378473 (= (isDefined!8319 (getValueByKey!1012 (toList!4243 lm!1477) lt!1676942)) (not (isEmpty!28577 (getValueByKey!1012 (toList!4243 lm!1477) lt!1676942))))))

(declare-fun bs!833314 () Bool)

(assert (= bs!833314 d!1378473))

(assert (=> bs!833314 m!5220829))

(declare-fun m!5222685 () Bool)

(assert (=> bs!833314 m!5222685))

(assert (=> b!4494266 d!1378473))

(declare-fun b!4495315 () Bool)

(declare-fun e!2800111 () Option!11032)

(assert (=> b!4495315 (= e!2800111 (getValueByKey!1012 (t!357605 (toList!4243 lm!1477)) lt!1676942))))

(declare-fun b!4495314 () Bool)

(declare-fun e!2800110 () Option!11032)

(assert (=> b!4495314 (= e!2800110 e!2800111)))

(declare-fun c!765941 () Bool)

(assert (=> b!4495314 (= c!765941 (and ((_ is Cons!50523) (toList!4243 lm!1477)) (not (= (_1!28748 (h!56336 (toList!4243 lm!1477))) lt!1676942))))))

(declare-fun d!1378475 () Bool)

(declare-fun c!765940 () Bool)

(assert (=> d!1378475 (= c!765940 (and ((_ is Cons!50523) (toList!4243 lm!1477)) (= (_1!28748 (h!56336 (toList!4243 lm!1477))) lt!1676942)))))

(assert (=> d!1378475 (= (getValueByKey!1012 (toList!4243 lm!1477) lt!1676942) e!2800110)))

(declare-fun b!4495316 () Bool)

(assert (=> b!4495316 (= e!2800111 None!11031)))

(declare-fun b!4495313 () Bool)

(assert (=> b!4495313 (= e!2800110 (Some!11031 (_2!28748 (h!56336 (toList!4243 lm!1477)))))))

(assert (= (and d!1378475 c!765940) b!4495313))

(assert (= (and d!1378475 (not c!765940)) b!4495314))

(assert (= (and b!4495314 c!765941) b!4495315))

(assert (= (and b!4495314 (not c!765941)) b!4495316))

(declare-fun m!5222687 () Bool)

(assert (=> b!4495315 m!5222687))

(assert (=> b!4494266 d!1378475))

(declare-fun d!1378477 () Bool)

(assert (=> d!1378477 (= (isDefined!8320 (getValueByKey!1013 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287)) (not (isEmpty!28575 (getValueByKey!1013 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))))

(declare-fun bs!833315 () Bool)

(assert (= bs!833315 d!1378477))

(assert (=> bs!833315 m!5220987))

(declare-fun m!5222689 () Bool)

(assert (=> bs!833315 m!5222689))

(assert (=> b!4494351 d!1378477))

(declare-fun b!4495319 () Bool)

(declare-fun e!2800113 () Option!11033)

(assert (=> b!4495319 (= e!2800113 (getValueByKey!1013 (t!357604 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) key!3287))))

(declare-fun b!4495320 () Bool)

(assert (=> b!4495320 (= e!2800113 None!11032)))

(declare-fun d!1378479 () Bool)

(declare-fun c!765942 () Bool)

(assert (=> d!1378479 (= c!765942 (and ((_ is Cons!50522) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (= (_1!28747 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) key!3287)))))

(declare-fun e!2800112 () Option!11033)

(assert (=> d!1378479 (= (getValueByKey!1013 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287) e!2800112)))

(declare-fun b!4495318 () Bool)

(assert (=> b!4495318 (= e!2800112 e!2800113)))

(declare-fun c!765943 () Bool)

(assert (=> b!4495318 (= c!765943 (and ((_ is Cons!50522) (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) (not (= (_1!28747 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))) key!3287))))))

(declare-fun b!4495317 () Bool)

(assert (=> b!4495317 (= e!2800112 (Some!11032 (_2!28747 (h!56335 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))))))))

(assert (= (and d!1378479 c!765942) b!4495317))

(assert (= (and d!1378479 (not c!765942)) b!4495318))

(assert (= (and b!4495318 c!765943) b!4495319))

(assert (= (and b!4495318 (not c!765943)) b!4495320))

(declare-fun m!5222691 () Bool)

(assert (=> b!4495319 m!5222691))

(assert (=> b!4494351 d!1378479))

(assert (=> d!1377891 d!1378209))

(declare-fun d!1378481 () Bool)

(declare-fun res!1868444 () Bool)

(declare-fun e!2800114 () Bool)

(assert (=> d!1378481 (=> res!1868444 e!2800114)))

(assert (=> d!1378481 (= res!1868444 (and ((_ is Cons!50522) (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))) (= (_1!28747 (h!56335 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))))) key!3287)))))

(assert (=> d!1378481 (= (containsKey!1658 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477)))) key!3287) e!2800114)))

(declare-fun b!4495321 () Bool)

(declare-fun e!2800115 () Bool)

(assert (=> b!4495321 (= e!2800114 e!2800115)))

(declare-fun res!1868445 () Bool)

(assert (=> b!4495321 (=> (not res!1868445) (not e!2800115))))

(assert (=> b!4495321 (= res!1868445 ((_ is Cons!50522) (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))))))

(declare-fun b!4495322 () Bool)

(assert (=> b!4495322 (= e!2800115 (containsKey!1658 (t!357604 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))) key!3287))))

(assert (= (and d!1378481 (not res!1868444)) b!4495321))

(assert (= (and b!4495321 res!1868445) b!4495322))

(declare-fun m!5222693 () Bool)

(assert (=> b!4495322 m!5222693))

(assert (=> b!4494452 d!1378481))

(declare-fun d!1378483 () Bool)

(assert (=> d!1378483 (= (invariantList!977 (toList!4244 lt!1677098)) (noDuplicatedKeys!236 (toList!4244 lt!1677098)))))

(declare-fun bs!833316 () Bool)

(assert (= bs!833316 d!1378483))

(declare-fun m!5222695 () Bool)

(assert (=> bs!833316 m!5222695))

(assert (=> d!1377921 d!1378483))

(declare-fun d!1378485 () Bool)

(declare-fun res!1868446 () Bool)

(declare-fun e!2800116 () Bool)

(assert (=> d!1378485 (=> res!1868446 e!2800116)))

(assert (=> d!1378485 (= res!1868446 ((_ is Nil!50523) (t!357605 (toList!4243 lm!1477))))))

(assert (=> d!1378485 (= (forall!10155 (t!357605 (toList!4243 lm!1477)) lambda!167812) e!2800116)))

(declare-fun b!4495323 () Bool)

(declare-fun e!2800117 () Bool)

(assert (=> b!4495323 (= e!2800116 e!2800117)))

(declare-fun res!1868447 () Bool)

(assert (=> b!4495323 (=> (not res!1868447) (not e!2800117))))

(assert (=> b!4495323 (= res!1868447 (dynLambda!21093 lambda!167812 (h!56336 (t!357605 (toList!4243 lm!1477)))))))

(declare-fun b!4495324 () Bool)

(assert (=> b!4495324 (= e!2800117 (forall!10155 (t!357605 (t!357605 (toList!4243 lm!1477))) lambda!167812))))

(assert (= (and d!1378485 (not res!1868446)) b!4495323))

(assert (= (and b!4495323 res!1868447) b!4495324))

(declare-fun b_lambda!151887 () Bool)

(assert (=> (not b_lambda!151887) (not b!4495323)))

(declare-fun m!5222697 () Bool)

(assert (=> b!4495323 m!5222697))

(declare-fun m!5222699 () Bool)

(assert (=> b!4495324 m!5222699))

(assert (=> d!1377921 d!1378485))

(declare-fun d!1378487 () Bool)

(assert (=> d!1378487 (isDefined!8319 (getValueByKey!1012 (toList!4243 lm!1477) lt!1676942))))

(declare-fun lt!1677798 () Unit!91160)

(declare-fun choose!29040 (List!50647 (_ BitVec 64)) Unit!91160)

(assert (=> d!1378487 (= lt!1677798 (choose!29040 (toList!4243 lm!1477) lt!1676942))))

(declare-fun e!2800120 () Bool)

(assert (=> d!1378487 e!2800120))

(declare-fun res!1868450 () Bool)

(assert (=> d!1378487 (=> (not res!1868450) (not e!2800120))))

(assert (=> d!1378487 (= res!1868450 (isStrictlySorted!391 (toList!4243 lm!1477)))))

(assert (=> d!1378487 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!916 (toList!4243 lm!1477) lt!1676942) lt!1677798)))

(declare-fun b!4495327 () Bool)

(assert (=> b!4495327 (= e!2800120 (containsKey!1661 (toList!4243 lm!1477) lt!1676942))))

(assert (= (and d!1378487 res!1868450) b!4495327))

(assert (=> d!1378487 m!5220829))

(assert (=> d!1378487 m!5220829))

(assert (=> d!1378487 m!5220831))

(declare-fun m!5222701 () Bool)

(assert (=> d!1378487 m!5222701))

(assert (=> d!1378487 m!5220791))

(assert (=> b!4495327 m!5220825))

(assert (=> b!4494264 d!1378487))

(assert (=> b!4494264 d!1378473))

(assert (=> b!4494264 d!1378475))

(declare-fun d!1378489 () Bool)

(assert (=> d!1378489 (isDefined!8319 (getValueByKey!1012 (toList!4243 lt!1676946) hash!344))))

(declare-fun lt!1677799 () Unit!91160)

(assert (=> d!1378489 (= lt!1677799 (choose!29040 (toList!4243 lt!1676946) hash!344))))

(declare-fun e!2800121 () Bool)

(assert (=> d!1378489 e!2800121))

(declare-fun res!1868451 () Bool)

(assert (=> d!1378489 (=> (not res!1868451) (not e!2800121))))

(assert (=> d!1378489 (= res!1868451 (isStrictlySorted!391 (toList!4243 lt!1676946)))))

(assert (=> d!1378489 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!916 (toList!4243 lt!1676946) hash!344) lt!1677799)))

(declare-fun b!4495328 () Bool)

(assert (=> b!4495328 (= e!2800121 (containsKey!1661 (toList!4243 lt!1676946) hash!344))))

(assert (= (and d!1378489 res!1868451) b!4495328))

(assert (=> d!1378489 m!5221141))

(assert (=> d!1378489 m!5221141))

(assert (=> d!1378489 m!5221143))

(declare-fun m!5222703 () Bool)

(assert (=> d!1378489 m!5222703))

(declare-fun m!5222705 () Bool)

(assert (=> d!1378489 m!5222705))

(assert (=> b!4495328 m!5221137))

(assert (=> b!4494432 d!1378489))

(declare-fun d!1378491 () Bool)

(assert (=> d!1378491 (= (isDefined!8319 (getValueByKey!1012 (toList!4243 lt!1676946) hash!344)) (not (isEmpty!28577 (getValueByKey!1012 (toList!4243 lt!1676946) hash!344))))))

(declare-fun bs!833317 () Bool)

(assert (= bs!833317 d!1378491))

(assert (=> bs!833317 m!5221141))

(declare-fun m!5222707 () Bool)

(assert (=> bs!833317 m!5222707))

(assert (=> b!4494432 d!1378491))

(assert (=> b!4494432 d!1378033))

(declare-fun d!1378493 () Bool)

(assert (=> d!1378493 (isDefined!8320 (getValueByKey!1013 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(declare-fun lt!1677800 () Unit!91160)

(assert (=> d!1378493 (= lt!1677800 (choose!29034 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(assert (=> d!1378493 (invariantList!977 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))

(assert (=> d!1378493 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!917 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287) lt!1677800)))

(declare-fun bs!833318 () Bool)

(assert (= bs!833318 d!1378493))

(assert (=> bs!833318 m!5220987))

(assert (=> bs!833318 m!5220987))

(assert (=> bs!833318 m!5220989))

(declare-fun m!5222709 () Bool)

(assert (=> bs!833318 m!5222709))

(assert (=> bs!833318 m!5221897))

(assert (=> b!4494353 d!1378493))

(assert (=> b!4494353 d!1378477))

(assert (=> b!4494353 d!1378479))

(declare-fun d!1378495 () Bool)

(assert (=> d!1378495 (contains!13183 (getKeysList!425 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477))))) key!3287)))

(declare-fun lt!1677801 () Unit!91160)

(assert (=> d!1378495 (= lt!1677801 (choose!29035 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(assert (=> d!1378495 (invariantList!977 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))))))

(assert (=> d!1378495 (= (lemmaInListThenGetKeysListContains!421 (toList!4244 (extractMap!1174 (t!357605 (toList!4243 lm!1477)))) key!3287) lt!1677801)))

(declare-fun bs!833319 () Bool)

(assert (= bs!833319 d!1378495))

(assert (=> bs!833319 m!5220991))

(assert (=> bs!833319 m!5220991))

(declare-fun m!5222711 () Bool)

(assert (=> bs!833319 m!5222711))

(declare-fun m!5222713 () Bool)

(assert (=> bs!833319 m!5222713))

(assert (=> bs!833319 m!5221897))

(assert (=> b!4494353 d!1378495))

(declare-fun d!1378497 () Bool)

(declare-fun res!1868452 () Bool)

(declare-fun e!2800122 () Bool)

(assert (=> d!1378497 (=> res!1868452 e!2800122)))

(assert (=> d!1378497 (= res!1868452 ((_ is Nil!50523) (toList!4243 lm!1477)))))

(assert (=> d!1378497 (= (forall!10155 (toList!4243 lm!1477) lambda!167837) e!2800122)))

(declare-fun b!4495329 () Bool)

(declare-fun e!2800123 () Bool)

(assert (=> b!4495329 (= e!2800122 e!2800123)))

(declare-fun res!1868453 () Bool)

(assert (=> b!4495329 (=> (not res!1868453) (not e!2800123))))

(assert (=> b!4495329 (= res!1868453 (dynLambda!21093 lambda!167837 (h!56336 (toList!4243 lm!1477))))))

(declare-fun b!4495330 () Bool)

(assert (=> b!4495330 (= e!2800123 (forall!10155 (t!357605 (toList!4243 lm!1477)) lambda!167837))))

(assert (= (and d!1378497 (not res!1868452)) b!4495329))

(assert (= (and b!4495329 res!1868453) b!4495330))

(declare-fun b_lambda!151889 () Bool)

(assert (=> (not b_lambda!151889) (not b!4495329)))

(declare-fun m!5222715 () Bool)

(assert (=> b!4495329 m!5222715))

(declare-fun m!5222717 () Bool)

(assert (=> b!4495330 m!5222717))

(assert (=> d!1378007 d!1378497))

(assert (=> d!1377979 d!1377977))

(declare-fun d!1378499 () Bool)

(assert (=> d!1378499 (containsKeyBiggerList!98 (toList!4243 lt!1676946) key!3287)))

(assert (=> d!1378499 true))

(declare-fun _$33!592 () Unit!91160)

(assert (=> d!1378499 (= (choose!29029 lt!1676946 key!3287 hashF!1107) _$33!592)))

(declare-fun bs!833320 () Bool)

(assert (= bs!833320 d!1378499))

(assert (=> bs!833320 m!5220717))

(assert (=> d!1377979 d!1378499))

(declare-fun d!1378501 () Bool)

(declare-fun res!1868454 () Bool)

(declare-fun e!2800124 () Bool)

(assert (=> d!1378501 (=> res!1868454 e!2800124)))

(assert (=> d!1378501 (= res!1868454 ((_ is Nil!50523) (toList!4243 lt!1676946)))))

(assert (=> d!1378501 (= (forall!10155 (toList!4243 lt!1676946) lambda!167826) e!2800124)))

(declare-fun b!4495331 () Bool)

(declare-fun e!2800125 () Bool)

(assert (=> b!4495331 (= e!2800124 e!2800125)))

(declare-fun res!1868455 () Bool)

(assert (=> b!4495331 (=> (not res!1868455) (not e!2800125))))

(assert (=> b!4495331 (= res!1868455 (dynLambda!21093 lambda!167826 (h!56336 (toList!4243 lt!1676946))))))

(declare-fun b!4495332 () Bool)

(assert (=> b!4495332 (= e!2800125 (forall!10155 (t!357605 (toList!4243 lt!1676946)) lambda!167826))))

(assert (= (and d!1378501 (not res!1868454)) b!4495331))

(assert (= (and b!4495331 res!1868455) b!4495332))

(declare-fun b_lambda!151891 () Bool)

(assert (=> (not b_lambda!151891) (not b!4495331)))

(declare-fun m!5222719 () Bool)

(assert (=> b!4495331 m!5222719))

(declare-fun m!5222721 () Bool)

(assert (=> b!4495332 m!5222721))

(assert (=> d!1377979 d!1378501))

(declare-fun d!1378503 () Bool)

(declare-fun res!1868456 () Bool)

(declare-fun e!2800126 () Bool)

(assert (=> d!1378503 (=> res!1868456 e!2800126)))

(declare-fun e!2800127 () Bool)

(assert (=> d!1378503 (= res!1868456 e!2800127)))

(declare-fun res!1868458 () Bool)

(assert (=> d!1378503 (=> (not res!1868458) (not e!2800127))))

(assert (=> d!1378503 (= res!1868458 ((_ is Cons!50523) (t!357605 (t!357605 (toList!4243 lm!1477)))))))

(assert (=> d!1378503 (= (containsKeyBiggerList!98 (t!357605 (t!357605 (toList!4243 lm!1477))) key!3287) e!2800126)))

(declare-fun b!4495333 () Bool)

(assert (=> b!4495333 (= e!2800127 (containsKey!1658 (_2!28748 (h!56336 (t!357605 (t!357605 (toList!4243 lm!1477))))) key!3287))))

(declare-fun b!4495334 () Bool)

(declare-fun e!2800128 () Bool)

(assert (=> b!4495334 (= e!2800126 e!2800128)))

(declare-fun res!1868457 () Bool)

(assert (=> b!4495334 (=> (not res!1868457) (not e!2800128))))

(assert (=> b!4495334 (= res!1868457 ((_ is Cons!50523) (t!357605 (t!357605 (toList!4243 lm!1477)))))))

(declare-fun b!4495335 () Bool)

(assert (=> b!4495335 (= e!2800128 (containsKeyBiggerList!98 (t!357605 (t!357605 (t!357605 (toList!4243 lm!1477)))) key!3287))))

(assert (= (and d!1378503 res!1868458) b!4495333))

(assert (= (and d!1378503 (not res!1868456)) b!4495334))

(assert (= (and b!4495334 res!1868457) b!4495335))

(declare-fun m!5222723 () Bool)

(assert (=> b!4495333 m!5222723))

(declare-fun m!5222725 () Bool)

(assert (=> b!4495335 m!5222725))

(assert (=> b!4494454 d!1378503))

(assert (=> b!4494203 d!1378053))

(declare-fun d!1378505 () Bool)

(declare-fun lt!1677802 () Bool)

(assert (=> d!1378505 (= lt!1677802 (select (content!8236 (toList!4243 lm!1477)) (tuple2!50909 hash!344 lt!1676944)))))

(declare-fun e!2800129 () Bool)

(assert (=> d!1378505 (= lt!1677802 e!2800129)))

(declare-fun res!1868460 () Bool)

(assert (=> d!1378505 (=> (not res!1868460) (not e!2800129))))

(assert (=> d!1378505 (= res!1868460 ((_ is Cons!50523) (toList!4243 lm!1477)))))

(assert (=> d!1378505 (= (contains!13179 (toList!4243 lm!1477) (tuple2!50909 hash!344 lt!1676944)) lt!1677802)))

(declare-fun b!4495336 () Bool)

(declare-fun e!2800130 () Bool)

(assert (=> b!4495336 (= e!2800129 e!2800130)))

(declare-fun res!1868459 () Bool)

(assert (=> b!4495336 (=> res!1868459 e!2800130)))

(assert (=> b!4495336 (= res!1868459 (= (h!56336 (toList!4243 lm!1477)) (tuple2!50909 hash!344 lt!1676944)))))

(declare-fun b!4495337 () Bool)

(assert (=> b!4495337 (= e!2800130 (contains!13179 (t!357605 (toList!4243 lm!1477)) (tuple2!50909 hash!344 lt!1676944)))))

(assert (= (and d!1378505 res!1868460) b!4495336))

(assert (= (and b!4495336 (not res!1868459)) b!4495337))

(assert (=> d!1378505 m!5220875))

(declare-fun m!5222727 () Bool)

(assert (=> d!1378505 m!5222727))

(declare-fun m!5222729 () Bool)

(assert (=> b!4495337 m!5222729))

(assert (=> d!1377857 d!1378505))

(declare-fun d!1378507 () Bool)

(assert (=> d!1378507 (contains!13179 (toList!4243 lm!1477) (tuple2!50909 hash!344 lt!1676944))))

(assert (=> d!1378507 true))

(declare-fun _$14!1076 () Unit!91160)

(assert (=> d!1378507 (= (choose!29018 (toList!4243 lm!1477) hash!344 lt!1676944) _$14!1076)))

(declare-fun bs!833321 () Bool)

(assert (= bs!833321 d!1378507))

(assert (=> bs!833321 m!5220787))

(assert (=> d!1377857 d!1378507))

(assert (=> d!1377857 d!1378471))

(declare-fun d!1378509 () Bool)

(declare-fun e!2800132 () Bool)

(assert (=> d!1378509 e!2800132))

(declare-fun res!1868461 () Bool)

(assert (=> d!1378509 (=> res!1868461 e!2800132)))

(declare-fun lt!1677805 () Bool)

(assert (=> d!1378509 (= res!1868461 (not lt!1677805))))

(declare-fun lt!1677803 () Bool)

(assert (=> d!1378509 (= lt!1677805 lt!1677803)))

(declare-fun lt!1677806 () Unit!91160)

(declare-fun e!2800131 () Unit!91160)

(assert (=> d!1378509 (= lt!1677806 e!2800131)))

(declare-fun c!765944 () Bool)

(assert (=> d!1378509 (= c!765944 lt!1677803)))

(assert (=> d!1378509 (= lt!1677803 (containsKey!1661 (toList!4243 lt!1677166) (_1!28748 (head!9330 lm!1477))))))

(assert (=> d!1378509 (= (contains!13181 lt!1677166 (_1!28748 (head!9330 lm!1477))) lt!1677805)))

(declare-fun b!4495338 () Bool)

(declare-fun lt!1677804 () Unit!91160)

(assert (=> b!4495338 (= e!2800131 lt!1677804)))

(assert (=> b!4495338 (= lt!1677804 (lemmaContainsKeyImpliesGetValueByKeyDefined!916 (toList!4243 lt!1677166) (_1!28748 (head!9330 lm!1477))))))

(assert (=> b!4495338 (isDefined!8319 (getValueByKey!1012 (toList!4243 lt!1677166) (_1!28748 (head!9330 lm!1477))))))

(declare-fun b!4495339 () Bool)

(declare-fun Unit!91338 () Unit!91160)

(assert (=> b!4495339 (= e!2800131 Unit!91338)))

(declare-fun b!4495340 () Bool)

(assert (=> b!4495340 (= e!2800132 (isDefined!8319 (getValueByKey!1012 (toList!4243 lt!1677166) (_1!28748 (head!9330 lm!1477)))))))

(assert (= (and d!1378509 c!765944) b!4495338))

(assert (= (and d!1378509 (not c!765944)) b!4495339))

(assert (= (and d!1378509 (not res!1868461)) b!4495340))

(declare-fun m!5222731 () Bool)

(assert (=> d!1378509 m!5222731))

(declare-fun m!5222733 () Bool)

(assert (=> b!4495338 m!5222733))

(assert (=> b!4495338 m!5221233))

(assert (=> b!4495338 m!5221233))

(declare-fun m!5222735 () Bool)

(assert (=> b!4495338 m!5222735))

(assert (=> b!4495340 m!5221233))

(assert (=> b!4495340 m!5221233))

(assert (=> b!4495340 m!5222735))

(assert (=> d!1377989 d!1378509))

(declare-fun b!4495343 () Bool)

(declare-fun e!2800134 () Option!11032)

(assert (=> b!4495343 (= e!2800134 (getValueByKey!1012 (t!357605 lt!1677167) (_1!28748 (head!9330 lm!1477))))))

(declare-fun b!4495342 () Bool)

(declare-fun e!2800133 () Option!11032)

(assert (=> b!4495342 (= e!2800133 e!2800134)))

(declare-fun c!765946 () Bool)

(assert (=> b!4495342 (= c!765946 (and ((_ is Cons!50523) lt!1677167) (not (= (_1!28748 (h!56336 lt!1677167)) (_1!28748 (head!9330 lm!1477))))))))

(declare-fun d!1378511 () Bool)

(declare-fun c!765945 () Bool)

(assert (=> d!1378511 (= c!765945 (and ((_ is Cons!50523) lt!1677167) (= (_1!28748 (h!56336 lt!1677167)) (_1!28748 (head!9330 lm!1477)))))))

(assert (=> d!1378511 (= (getValueByKey!1012 lt!1677167 (_1!28748 (head!9330 lm!1477))) e!2800133)))

(declare-fun b!4495344 () Bool)

(assert (=> b!4495344 (= e!2800134 None!11031)))

(declare-fun b!4495341 () Bool)

(assert (=> b!4495341 (= e!2800133 (Some!11031 (_2!28748 (h!56336 lt!1677167))))))

(assert (= (and d!1378511 c!765945) b!4495341))

(assert (= (and d!1378511 (not c!765945)) b!4495342))

(assert (= (and b!4495342 c!765946) b!4495343))

(assert (= (and b!4495342 (not c!765946)) b!4495344))

(declare-fun m!5222737 () Bool)

(assert (=> b!4495343 m!5222737))

(assert (=> d!1377989 d!1378511))

(declare-fun d!1378513 () Bool)

(assert (=> d!1378513 (= (getValueByKey!1012 lt!1677167 (_1!28748 (head!9330 lm!1477))) (Some!11031 (_2!28748 (head!9330 lm!1477))))))

(declare-fun lt!1677809 () Unit!91160)

(declare-fun choose!29041 (List!50647 (_ BitVec 64) List!50646) Unit!91160)

(assert (=> d!1378513 (= lt!1677809 (choose!29041 lt!1677167 (_1!28748 (head!9330 lm!1477)) (_2!28748 (head!9330 lm!1477))))))

(declare-fun e!2800137 () Bool)

(assert (=> d!1378513 e!2800137))

(declare-fun res!1868466 () Bool)

(assert (=> d!1378513 (=> (not res!1868466) (not e!2800137))))

(assert (=> d!1378513 (= res!1868466 (isStrictlySorted!391 lt!1677167))))

(assert (=> d!1378513 (= (lemmaContainsTupThenGetReturnValue!626 lt!1677167 (_1!28748 (head!9330 lm!1477)) (_2!28748 (head!9330 lm!1477))) lt!1677809)))

(declare-fun b!4495349 () Bool)

(declare-fun res!1868467 () Bool)

(assert (=> b!4495349 (=> (not res!1868467) (not e!2800137))))

(assert (=> b!4495349 (= res!1868467 (containsKey!1661 lt!1677167 (_1!28748 (head!9330 lm!1477))))))

(declare-fun b!4495350 () Bool)

(assert (=> b!4495350 (= e!2800137 (contains!13179 lt!1677167 (tuple2!50909 (_1!28748 (head!9330 lm!1477)) (_2!28748 (head!9330 lm!1477)))))))

(assert (= (and d!1378513 res!1868466) b!4495349))

(assert (= (and b!4495349 res!1868467) b!4495350))

(assert (=> d!1378513 m!5221227))

(declare-fun m!5222739 () Bool)

(assert (=> d!1378513 m!5222739))

(declare-fun m!5222741 () Bool)

(assert (=> d!1378513 m!5222741))

(declare-fun m!5222743 () Bool)

(assert (=> b!4495349 m!5222743))

(declare-fun m!5222745 () Bool)

(assert (=> b!4495350 m!5222745))

(assert (=> d!1377989 d!1378513))

(declare-fun b!4495371 () Bool)

(declare-fun e!2800149 () List!50647)

(declare-fun call!312822 () List!50647)

(assert (=> b!4495371 (= e!2800149 call!312822)))

(declare-fun b!4495372 () Bool)

(declare-fun e!2800150 () List!50647)

(declare-fun call!312823 () List!50647)

(assert (=> b!4495372 (= e!2800150 call!312823)))

(declare-fun b!4495373 () Bool)

(declare-fun c!765956 () Bool)

(assert (=> b!4495373 (= c!765956 (and ((_ is Cons!50523) (toList!4243 lt!1676946)) (bvsgt (_1!28748 (h!56336 (toList!4243 lt!1676946))) (_1!28748 (head!9330 lm!1477)))))))

(assert (=> b!4495373 (= e!2800150 e!2800149)))

(declare-fun bm!312817 () Bool)

(declare-fun call!312824 () List!50647)

(assert (=> bm!312817 (= call!312823 call!312824)))

(declare-fun b!4495374 () Bool)

(declare-fun e!2800148 () List!50647)

(assert (=> b!4495374 (= e!2800148 call!312824)))

(declare-fun d!1378515 () Bool)

(declare-fun e!2800151 () Bool)

(assert (=> d!1378515 e!2800151))

(declare-fun res!1868473 () Bool)

(assert (=> d!1378515 (=> (not res!1868473) (not e!2800151))))

(declare-fun lt!1677812 () List!50647)

(assert (=> d!1378515 (= res!1868473 (isStrictlySorted!391 lt!1677812))))

(assert (=> d!1378515 (= lt!1677812 e!2800148)))

(declare-fun c!765955 () Bool)

(assert (=> d!1378515 (= c!765955 (and ((_ is Cons!50523) (toList!4243 lt!1676946)) (bvslt (_1!28748 (h!56336 (toList!4243 lt!1676946))) (_1!28748 (head!9330 lm!1477)))))))

(assert (=> d!1378515 (isStrictlySorted!391 (toList!4243 lt!1676946))))

(assert (=> d!1378515 (= (insertStrictlySorted!368 (toList!4243 lt!1676946) (_1!28748 (head!9330 lm!1477)) (_2!28748 (head!9330 lm!1477))) lt!1677812)))

(declare-fun b!4495375 () Bool)

(assert (=> b!4495375 (= e!2800149 call!312822)))

(declare-fun b!4495376 () Bool)

(assert (=> b!4495376 (= e!2800148 e!2800150)))

(declare-fun c!765957 () Bool)

(assert (=> b!4495376 (= c!765957 (and ((_ is Cons!50523) (toList!4243 lt!1676946)) (= (_1!28748 (h!56336 (toList!4243 lt!1676946))) (_1!28748 (head!9330 lm!1477)))))))

(declare-fun b!4495377 () Bool)

(declare-fun e!2800152 () List!50647)

(assert (=> b!4495377 (= e!2800152 (insertStrictlySorted!368 (t!357605 (toList!4243 lt!1676946)) (_1!28748 (head!9330 lm!1477)) (_2!28748 (head!9330 lm!1477))))))

(declare-fun bm!312818 () Bool)

(assert (=> bm!312818 (= call!312822 call!312823)))

(declare-fun bm!312819 () Bool)

(declare-fun $colon$colon!883 (List!50647 tuple2!50908) List!50647)

(assert (=> bm!312819 (= call!312824 ($colon$colon!883 e!2800152 (ite c!765955 (h!56336 (toList!4243 lt!1676946)) (tuple2!50909 (_1!28748 (head!9330 lm!1477)) (_2!28748 (head!9330 lm!1477))))))))

(declare-fun c!765958 () Bool)

(assert (=> bm!312819 (= c!765958 c!765955)))

(declare-fun b!4495378 () Bool)

(assert (=> b!4495378 (= e!2800152 (ite c!765957 (t!357605 (toList!4243 lt!1676946)) (ite c!765956 (Cons!50523 (h!56336 (toList!4243 lt!1676946)) (t!357605 (toList!4243 lt!1676946))) Nil!50523)))))

(declare-fun b!4495379 () Bool)

(assert (=> b!4495379 (= e!2800151 (contains!13179 lt!1677812 (tuple2!50909 (_1!28748 (head!9330 lm!1477)) (_2!28748 (head!9330 lm!1477)))))))

(declare-fun b!4495380 () Bool)

(declare-fun res!1868472 () Bool)

(assert (=> b!4495380 (=> (not res!1868472) (not e!2800151))))

(assert (=> b!4495380 (= res!1868472 (containsKey!1661 lt!1677812 (_1!28748 (head!9330 lm!1477))))))

(assert (= (and d!1378515 c!765955) b!4495374))

(assert (= (and d!1378515 (not c!765955)) b!4495376))

(assert (= (and b!4495376 c!765957) b!4495372))

(assert (= (and b!4495376 (not c!765957)) b!4495373))

(assert (= (and b!4495373 c!765956) b!4495375))

(assert (= (and b!4495373 (not c!765956)) b!4495371))

(assert (= (or b!4495375 b!4495371) bm!312818))

(assert (= (or b!4495372 bm!312818) bm!312817))

(assert (= (or b!4495374 bm!312817) bm!312819))

(assert (= (and bm!312819 c!765958) b!4495377))

(assert (= (and bm!312819 (not c!765958)) b!4495378))

(assert (= (and d!1378515 res!1868473) b!4495380))

(assert (= (and b!4495380 res!1868472) b!4495379))

(declare-fun m!5222747 () Bool)

(assert (=> b!4495377 m!5222747))

(declare-fun m!5222749 () Bool)

(assert (=> bm!312819 m!5222749))

(declare-fun m!5222751 () Bool)

(assert (=> b!4495380 m!5222751))

(declare-fun m!5222753 () Bool)

(assert (=> d!1378515 m!5222753))

(assert (=> d!1378515 m!5222705))

(declare-fun m!5222755 () Bool)

(assert (=> b!4495379 m!5222755))

(assert (=> d!1377989 d!1378515))

(assert (=> b!4494434 d!1378491))

(assert (=> b!4494434 d!1378033))

(declare-fun d!1378517 () Bool)

(declare-fun lt!1677813 () Bool)

(assert (=> d!1378517 (= lt!1677813 (select (content!8239 (keys!17510 lt!1676952)) key!3287))))

(declare-fun e!2800154 () Bool)

(assert (=> d!1378517 (= lt!1677813 e!2800154)))

(declare-fun res!1868474 () Bool)

(assert (=> d!1378517 (=> (not res!1868474) (not e!2800154))))

(assert (=> d!1378517 (= res!1868474 ((_ is Cons!50525) (keys!17510 lt!1676952)))))

(assert (=> d!1378517 (= (contains!13183 (keys!17510 lt!1676952) key!3287) lt!1677813)))

(declare-fun b!4495381 () Bool)

(declare-fun e!2800153 () Bool)

(assert (=> b!4495381 (= e!2800154 e!2800153)))

(declare-fun res!1868475 () Bool)

(assert (=> b!4495381 (=> res!1868475 e!2800153)))

(assert (=> b!4495381 (= res!1868475 (= (h!56340 (keys!17510 lt!1676952)) key!3287))))

(declare-fun b!4495382 () Bool)

(assert (=> b!4495382 (= e!2800153 (contains!13183 (t!357607 (keys!17510 lt!1676952)) key!3287))))

(assert (= (and d!1378517 res!1868474) b!4495381))

(assert (= (and b!4495381 (not res!1868475)) b!4495382))

(assert (=> d!1378517 m!5221155))

(declare-fun m!5222757 () Bool)

(assert (=> d!1378517 m!5222757))

(declare-fun m!5222759 () Bool)

(assert (=> d!1378517 m!5222759))

(declare-fun m!5222761 () Bool)

(assert (=> b!4495382 m!5222761))

(assert (=> b!4494435 d!1378517))

(assert (=> b!4494435 d!1378041))

(declare-fun d!1378519 () Bool)

(declare-fun res!1868476 () Bool)

(declare-fun e!2800155 () Bool)

(assert (=> d!1378519 (=> res!1868476 e!2800155)))

(assert (=> d!1378519 (= res!1868476 (and ((_ is Cons!50522) (t!357604 newBucket!178)) (= (_1!28747 (h!56335 (t!357604 newBucket!178))) (_1!28747 (h!56335 newBucket!178)))))))

(assert (=> d!1378519 (= (containsKey!1658 (t!357604 newBucket!178) (_1!28747 (h!56335 newBucket!178))) e!2800155)))

(declare-fun b!4495383 () Bool)

(declare-fun e!2800156 () Bool)

(assert (=> b!4495383 (= e!2800155 e!2800156)))

(declare-fun res!1868477 () Bool)

(assert (=> b!4495383 (=> (not res!1868477) (not e!2800156))))

(assert (=> b!4495383 (= res!1868477 ((_ is Cons!50522) (t!357604 newBucket!178)))))

(declare-fun b!4495384 () Bool)

(assert (=> b!4495384 (= e!2800156 (containsKey!1658 (t!357604 (t!357604 newBucket!178)) (_1!28747 (h!56335 newBucket!178))))))

(assert (= (and d!1378519 (not res!1868476)) b!4495383))

(assert (= (and b!4495383 res!1868477) b!4495384))

(declare-fun m!5222763 () Bool)

(assert (=> b!4495384 m!5222763))

(assert (=> b!4494495 d!1378519))

(declare-fun d!1378521 () Bool)

(declare-fun res!1868478 () Bool)

(declare-fun e!2800157 () Bool)

(assert (=> d!1378521 (=> res!1868478 e!2800157)))

(assert (=> d!1378521 (= res!1868478 (not ((_ is Cons!50522) (_2!28748 lt!1676945))))))

(assert (=> d!1378521 (= (noDuplicateKeys!1118 (_2!28748 lt!1676945)) e!2800157)))

(declare-fun b!4495385 () Bool)

(declare-fun e!2800158 () Bool)

(assert (=> b!4495385 (= e!2800157 e!2800158)))

(declare-fun res!1868479 () Bool)

(assert (=> b!4495385 (=> (not res!1868479) (not e!2800158))))

(assert (=> b!4495385 (= res!1868479 (not (containsKey!1658 (t!357604 (_2!28748 lt!1676945)) (_1!28747 (h!56335 (_2!28748 lt!1676945))))))))

(declare-fun b!4495386 () Bool)

(assert (=> b!4495386 (= e!2800158 (noDuplicateKeys!1118 (t!357604 (_2!28748 lt!1676945))))))

(assert (= (and d!1378521 (not res!1868478)) b!4495385))

(assert (= (and b!4495385 res!1868479) b!4495386))

(declare-fun m!5222765 () Bool)

(assert (=> b!4495385 m!5222765))

(declare-fun m!5222767 () Bool)

(assert (=> b!4495386 m!5222767))

(assert (=> bs!832707 d!1378521))

(assert (=> b!4494439 d!1378331))

(declare-fun d!1378523 () Bool)

(assert (=> d!1378523 (containsKey!1662 (toList!4244 lt!1676952) key!3287)))

(declare-fun lt!1677814 () Unit!91160)

(assert (=> d!1378523 (= lt!1677814 (choose!29033 (toList!4244 lt!1676952) key!3287))))

(assert (=> d!1378523 (invariantList!977 (toList!4244 lt!1676952))))

(assert (=> d!1378523 (= (lemmaInGetKeysListThenContainsKey!424 (toList!4244 lt!1676952) key!3287) lt!1677814)))

(declare-fun bs!833322 () Bool)

(assert (= bs!833322 d!1378523))

(assert (=> bs!833322 m!5221161))

(declare-fun m!5222769 () Bool)

(assert (=> bs!833322 m!5222769))

(assert (=> bs!833322 m!5222239))

(assert (=> b!4494439 d!1378523))

(declare-fun d!1378525 () Bool)

(declare-fun choose!29042 (Hashable!5513 K!11935) (_ BitVec 64))

(assert (=> d!1378525 (= (hash!2663 hashF!1107 key!3287) (choose!29042 hashF!1107 key!3287))))

(declare-fun bs!833323 () Bool)

(assert (= bs!833323 d!1378525))

(declare-fun m!5222771 () Bool)

(assert (=> bs!833323 m!5222771))

(assert (=> d!1377967 d!1378525))

(declare-fun d!1378527 () Bool)

(declare-fun e!2800160 () Bool)

(assert (=> d!1378527 e!2800160))

(declare-fun res!1868480 () Bool)

(assert (=> d!1378527 (=> res!1868480 e!2800160)))

(declare-fun lt!1677817 () Bool)

(assert (=> d!1378527 (= res!1868480 (not lt!1677817))))

(declare-fun lt!1677815 () Bool)

(assert (=> d!1378527 (= lt!1677817 lt!1677815)))

(declare-fun lt!1677818 () Unit!91160)

(declare-fun e!2800159 () Unit!91160)

(assert (=> d!1378527 (= lt!1677818 e!2800159)))

(declare-fun c!765959 () Bool)

(assert (=> d!1378527 (= c!765959 lt!1677815)))

(assert (=> d!1378527 (= lt!1677815 (containsKey!1661 (toList!4243 lt!1677171) (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))

(assert (=> d!1378527 (= (contains!13181 lt!1677171 (_1!28748 (tuple2!50909 hash!344 newBucket!178))) lt!1677817)))

(declare-fun b!4495387 () Bool)

(declare-fun lt!1677816 () Unit!91160)

(assert (=> b!4495387 (= e!2800159 lt!1677816)))

(assert (=> b!4495387 (= lt!1677816 (lemmaContainsKeyImpliesGetValueByKeyDefined!916 (toList!4243 lt!1677171) (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))

(assert (=> b!4495387 (isDefined!8319 (getValueByKey!1012 (toList!4243 lt!1677171) (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))

(declare-fun b!4495388 () Bool)

(declare-fun Unit!91347 () Unit!91160)

(assert (=> b!4495388 (= e!2800159 Unit!91347)))

(declare-fun b!4495389 () Bool)

(assert (=> b!4495389 (= e!2800160 (isDefined!8319 (getValueByKey!1012 (toList!4243 lt!1677171) (_1!28748 (tuple2!50909 hash!344 newBucket!178)))))))

(assert (= (and d!1378527 c!765959) b!4495387))

(assert (= (and d!1378527 (not c!765959)) b!4495388))

(assert (= (and d!1378527 (not res!1868480)) b!4495389))

(declare-fun m!5222773 () Bool)

(assert (=> d!1378527 m!5222773))

(declare-fun m!5222775 () Bool)

(assert (=> b!4495387 m!5222775))

(assert (=> b!4495387 m!5221259))

(assert (=> b!4495387 m!5221259))

(declare-fun m!5222777 () Bool)

(assert (=> b!4495387 m!5222777))

(assert (=> b!4495389 m!5221259))

(assert (=> b!4495389 m!5221259))

(assert (=> b!4495389 m!5222777))

(assert (=> d!1377997 d!1378527))

(declare-fun b!4495392 () Bool)

(declare-fun e!2800162 () Option!11032)

(assert (=> b!4495392 (= e!2800162 (getValueByKey!1012 (t!357605 lt!1677172) (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))

(declare-fun b!4495391 () Bool)

(declare-fun e!2800161 () Option!11032)

(assert (=> b!4495391 (= e!2800161 e!2800162)))

(declare-fun c!765961 () Bool)

(assert (=> b!4495391 (= c!765961 (and ((_ is Cons!50523) lt!1677172) (not (= (_1!28748 (h!56336 lt!1677172)) (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))))

(declare-fun c!765960 () Bool)

(declare-fun d!1378529 () Bool)

(assert (=> d!1378529 (= c!765960 (and ((_ is Cons!50523) lt!1677172) (= (_1!28748 (h!56336 lt!1677172)) (_1!28748 (tuple2!50909 hash!344 newBucket!178)))))))

(assert (=> d!1378529 (= (getValueByKey!1012 lt!1677172 (_1!28748 (tuple2!50909 hash!344 newBucket!178))) e!2800161)))

(declare-fun b!4495393 () Bool)

(assert (=> b!4495393 (= e!2800162 None!11031)))

(declare-fun b!4495390 () Bool)

(assert (=> b!4495390 (= e!2800161 (Some!11031 (_2!28748 (h!56336 lt!1677172))))))

(assert (= (and d!1378529 c!765960) b!4495390))

(assert (= (and d!1378529 (not c!765960)) b!4495391))

(assert (= (and b!4495391 c!765961) b!4495392))

(assert (= (and b!4495391 (not c!765961)) b!4495393))

(declare-fun m!5222779 () Bool)

(assert (=> b!4495392 m!5222779))

(assert (=> d!1377997 d!1378529))

(declare-fun d!1378531 () Bool)

(assert (=> d!1378531 (= (getValueByKey!1012 lt!1677172 (_1!28748 (tuple2!50909 hash!344 newBucket!178))) (Some!11031 (_2!28748 (tuple2!50909 hash!344 newBucket!178))))))

(declare-fun lt!1677819 () Unit!91160)

(assert (=> d!1378531 (= lt!1677819 (choose!29041 lt!1677172 (_1!28748 (tuple2!50909 hash!344 newBucket!178)) (_2!28748 (tuple2!50909 hash!344 newBucket!178))))))

(declare-fun e!2800163 () Bool)

(assert (=> d!1378531 e!2800163))

(declare-fun res!1868481 () Bool)

(assert (=> d!1378531 (=> (not res!1868481) (not e!2800163))))

(assert (=> d!1378531 (= res!1868481 (isStrictlySorted!391 lt!1677172))))

(assert (=> d!1378531 (= (lemmaContainsTupThenGetReturnValue!626 lt!1677172 (_1!28748 (tuple2!50909 hash!344 newBucket!178)) (_2!28748 (tuple2!50909 hash!344 newBucket!178))) lt!1677819)))

(declare-fun b!4495394 () Bool)

(declare-fun res!1868482 () Bool)

(assert (=> b!4495394 (=> (not res!1868482) (not e!2800163))))

(assert (=> b!4495394 (= res!1868482 (containsKey!1661 lt!1677172 (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))

(declare-fun b!4495395 () Bool)

(assert (=> b!4495395 (= e!2800163 (contains!13179 lt!1677172 (tuple2!50909 (_1!28748 (tuple2!50909 hash!344 newBucket!178)) (_2!28748 (tuple2!50909 hash!344 newBucket!178)))))))

(assert (= (and d!1378531 res!1868481) b!4495394))

(assert (= (and b!4495394 res!1868482) b!4495395))

(assert (=> d!1378531 m!5221253))

(declare-fun m!5222781 () Bool)

(assert (=> d!1378531 m!5222781))

(declare-fun m!5222783 () Bool)

(assert (=> d!1378531 m!5222783))

(declare-fun m!5222785 () Bool)

(assert (=> b!4495394 m!5222785))

(declare-fun m!5222787 () Bool)

(assert (=> b!4495395 m!5222787))

(assert (=> d!1377997 d!1378531))

(declare-fun b!4495396 () Bool)

(declare-fun e!2800165 () List!50647)

(declare-fun call!312825 () List!50647)

(assert (=> b!4495396 (= e!2800165 call!312825)))

(declare-fun b!4495397 () Bool)

(declare-fun e!2800166 () List!50647)

(declare-fun call!312826 () List!50647)

(assert (=> b!4495397 (= e!2800166 call!312826)))

(declare-fun b!4495398 () Bool)

(declare-fun c!765963 () Bool)

(assert (=> b!4495398 (= c!765963 (and ((_ is Cons!50523) (toList!4243 lt!1676946)) (bvsgt (_1!28748 (h!56336 (toList!4243 lt!1676946))) (_1!28748 (tuple2!50909 hash!344 newBucket!178)))))))

(assert (=> b!4495398 (= e!2800166 e!2800165)))

(declare-fun bm!312820 () Bool)

(declare-fun call!312827 () List!50647)

(assert (=> bm!312820 (= call!312826 call!312827)))

(declare-fun b!4495399 () Bool)

(declare-fun e!2800164 () List!50647)

(assert (=> b!4495399 (= e!2800164 call!312827)))

(declare-fun d!1378533 () Bool)

(declare-fun e!2800167 () Bool)

(assert (=> d!1378533 e!2800167))

(declare-fun res!1868484 () Bool)

(assert (=> d!1378533 (=> (not res!1868484) (not e!2800167))))

(declare-fun lt!1677820 () List!50647)

(assert (=> d!1378533 (= res!1868484 (isStrictlySorted!391 lt!1677820))))

(assert (=> d!1378533 (= lt!1677820 e!2800164)))

(declare-fun c!765962 () Bool)

(assert (=> d!1378533 (= c!765962 (and ((_ is Cons!50523) (toList!4243 lt!1676946)) (bvslt (_1!28748 (h!56336 (toList!4243 lt!1676946))) (_1!28748 (tuple2!50909 hash!344 newBucket!178)))))))

(assert (=> d!1378533 (isStrictlySorted!391 (toList!4243 lt!1676946))))

(assert (=> d!1378533 (= (insertStrictlySorted!368 (toList!4243 lt!1676946) (_1!28748 (tuple2!50909 hash!344 newBucket!178)) (_2!28748 (tuple2!50909 hash!344 newBucket!178))) lt!1677820)))

(declare-fun b!4495400 () Bool)

(assert (=> b!4495400 (= e!2800165 call!312825)))

(declare-fun b!4495401 () Bool)

(assert (=> b!4495401 (= e!2800164 e!2800166)))

(declare-fun c!765964 () Bool)

(assert (=> b!4495401 (= c!765964 (and ((_ is Cons!50523) (toList!4243 lt!1676946)) (= (_1!28748 (h!56336 (toList!4243 lt!1676946))) (_1!28748 (tuple2!50909 hash!344 newBucket!178)))))))

(declare-fun e!2800168 () List!50647)

(declare-fun b!4495402 () Bool)

(assert (=> b!4495402 (= e!2800168 (insertStrictlySorted!368 (t!357605 (toList!4243 lt!1676946)) (_1!28748 (tuple2!50909 hash!344 newBucket!178)) (_2!28748 (tuple2!50909 hash!344 newBucket!178))))))

(declare-fun bm!312821 () Bool)

(assert (=> bm!312821 (= call!312825 call!312826)))

(declare-fun bm!312822 () Bool)

(assert (=> bm!312822 (= call!312827 ($colon$colon!883 e!2800168 (ite c!765962 (h!56336 (toList!4243 lt!1676946)) (tuple2!50909 (_1!28748 (tuple2!50909 hash!344 newBucket!178)) (_2!28748 (tuple2!50909 hash!344 newBucket!178))))))))

(declare-fun c!765965 () Bool)

(assert (=> bm!312822 (= c!765965 c!765962)))

(declare-fun b!4495403 () Bool)

(assert (=> b!4495403 (= e!2800168 (ite c!765964 (t!357605 (toList!4243 lt!1676946)) (ite c!765963 (Cons!50523 (h!56336 (toList!4243 lt!1676946)) (t!357605 (toList!4243 lt!1676946))) Nil!50523)))))

(declare-fun b!4495404 () Bool)

(assert (=> b!4495404 (= e!2800167 (contains!13179 lt!1677820 (tuple2!50909 (_1!28748 (tuple2!50909 hash!344 newBucket!178)) (_2!28748 (tuple2!50909 hash!344 newBucket!178)))))))

(declare-fun b!4495405 () Bool)

(declare-fun res!1868483 () Bool)

(assert (=> b!4495405 (=> (not res!1868483) (not e!2800167))))

(assert (=> b!4495405 (= res!1868483 (containsKey!1661 lt!1677820 (_1!28748 (tuple2!50909 hash!344 newBucket!178))))))

(assert (= (and d!1378533 c!765962) b!4495399))

(assert (= (and d!1378533 (not c!765962)) b!4495401))

(assert (= (and b!4495401 c!765964) b!4495397))

(assert (= (and b!4495401 (not c!765964)) b!4495398))

(assert (= (and b!4495398 c!765963) b!4495400))

(assert (= (and b!4495398 (not c!765963)) b!4495396))

(assert (= (or b!4495400 b!4495396) bm!312821))

(assert (= (or b!4495397 bm!312821) bm!312820))

(assert (= (or b!4495399 bm!312820) bm!312822))

(assert (= (and bm!312822 c!765965) b!4495402))

(assert (= (and bm!312822 (not c!765965)) b!4495403))

(assert (= (and d!1378533 res!1868484) b!4495405))

(assert (= (and b!4495405 res!1868483) b!4495404))

(declare-fun m!5222789 () Bool)

(assert (=> b!4495402 m!5222789))

(declare-fun m!5222791 () Bool)

(assert (=> bm!312822 m!5222791))

(declare-fun m!5222793 () Bool)

(assert (=> b!4495405 m!5222793))

(declare-fun m!5222795 () Bool)

(assert (=> d!1378533 m!5222795))

(assert (=> d!1378533 m!5222705))

(declare-fun m!5222797 () Bool)

(assert (=> b!4495404 m!5222797))

(assert (=> d!1377997 d!1378533))

(declare-fun d!1378535 () Bool)

(declare-fun res!1868485 () Bool)

(declare-fun e!2800169 () Bool)

(assert (=> d!1378535 (=> res!1868485 e!2800169)))

(assert (=> d!1378535 (= res!1868485 (and ((_ is Cons!50523) (toList!4243 lm!1477)) (= (_1!28748 (h!56336 (toList!4243 lm!1477))) lt!1676942)))))

(assert (=> d!1378535 (= (containsKey!1661 (toList!4243 lm!1477) lt!1676942) e!2800169)))

(declare-fun b!4495406 () Bool)

(declare-fun e!2800170 () Bool)

(assert (=> b!4495406 (= e!2800169 e!2800170)))

(declare-fun res!1868486 () Bool)

(assert (=> b!4495406 (=> (not res!1868486) (not e!2800170))))

(assert (=> b!4495406 (= res!1868486 (and (or (not ((_ is Cons!50523) (toList!4243 lm!1477))) (bvsle (_1!28748 (h!56336 (toList!4243 lm!1477))) lt!1676942)) ((_ is Cons!50523) (toList!4243 lm!1477)) (bvslt (_1!28748 (h!56336 (toList!4243 lm!1477))) lt!1676942)))))

(declare-fun b!4495407 () Bool)

(assert (=> b!4495407 (= e!2800170 (containsKey!1661 (t!357605 (toList!4243 lm!1477)) lt!1676942))))

(assert (= (and d!1378535 (not res!1868485)) b!4495406))

(assert (= (and b!4495406 res!1868486) b!4495407))

(declare-fun m!5222799 () Bool)

(assert (=> b!4495407 m!5222799))

(assert (=> d!1377879 d!1378535))

(assert (=> d!1377939 d!1378411))

(assert (=> b!4494237 d!1377885))

(assert (=> b!4494437 d!1378517))

(assert (=> b!4494437 d!1378041))

(declare-fun b!4495408 () Bool)

(declare-fun e!2800171 () Bool)

(declare-fun tp!1337378 () Bool)

(assert (=> b!4495408 (= e!2800171 (and tp_is_empty!27749 tp_is_empty!27751 tp!1337378))))

(assert (=> b!4494503 (= tp!1337367 e!2800171)))

(assert (= (and b!4494503 ((_ is Cons!50522) (t!357604 (t!357604 newBucket!178)))) b!4495408))

(declare-fun tp!1337379 () Bool)

(declare-fun b!4495409 () Bool)

(declare-fun e!2800172 () Bool)

(assert (=> b!4495409 (= e!2800172 (and tp_is_empty!27749 tp_is_empty!27751 tp!1337379))))

(assert (=> b!4494508 (= tp!1337372 e!2800172)))

(assert (= (and b!4494508 ((_ is Cons!50522) (_2!28748 (h!56336 (toList!4243 lm!1477))))) b!4495409))

(declare-fun b!4495410 () Bool)

(declare-fun e!2800173 () Bool)

(declare-fun tp!1337380 () Bool)

(declare-fun tp!1337381 () Bool)

(assert (=> b!4495410 (= e!2800173 (and tp!1337380 tp!1337381))))

(assert (=> b!4494508 (= tp!1337373 e!2800173)))

(assert (= (and b!4494508 ((_ is Cons!50523) (t!357605 (toList!4243 lm!1477)))) b!4495410))

(declare-fun b_lambda!151893 () Bool)

(assert (= b_lambda!151809 (or start!443220 b_lambda!151893)))

(assert (=> d!1378027 d!1378019))

(declare-fun b_lambda!151895 () Bool)

(assert (= b_lambda!151811 (or d!1377881 b_lambda!151895)))

(declare-fun bs!833324 () Bool)

(declare-fun d!1378537 () Bool)

(assert (= bs!833324 (and d!1378537 d!1377881)))

(assert (=> bs!833324 (= (dynLambda!21093 lambda!167790 (h!56336 (toList!4243 lm!1477))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lm!1477)))))))

(assert (=> bs!833324 m!5221289))

(assert (=> b!4494601 d!1378537))

(declare-fun b_lambda!151897 () Bool)

(assert (= b_lambda!151889 (or d!1378007 b_lambda!151897)))

(declare-fun bs!833325 () Bool)

(declare-fun d!1378539 () Bool)

(assert (= bs!833325 (and d!1378539 d!1378007)))

(assert (=> bs!833325 (= (dynLambda!21093 lambda!167837 (h!56336 (toList!4243 lm!1477))) (allKeysSameHash!972 (_2!28748 (h!56336 (toList!4243 lm!1477))) (_1!28748 (h!56336 (toList!4243 lm!1477))) hashF!1107))))

(declare-fun m!5222801 () Bool)

(assert (=> bs!833325 m!5222801))

(assert (=> b!4495329 d!1378539))

(declare-fun b_lambda!151899 () Bool)

(assert (= b_lambda!151849 (or d!1377943 b_lambda!151899)))

(declare-fun bs!833326 () Bool)

(declare-fun d!1378541 () Bool)

(assert (= bs!833326 (and d!1378541 d!1377943)))

(assert (=> bs!833326 (= (dynLambda!21093 lambda!167819 (h!56336 (toList!4243 lt!1676946))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lt!1676946)))))))

(assert (=> bs!833326 m!5222423))

(assert (=> b!4495159 d!1378541))

(declare-fun b_lambda!151901 () Bool)

(assert (= b_lambda!151891 (or d!1377979 b_lambda!151901)))

(declare-fun bs!833327 () Bool)

(declare-fun d!1378543 () Bool)

(assert (= bs!833327 (and d!1378543 d!1377979)))

(assert (=> bs!833327 (= (dynLambda!21093 lambda!167826 (h!56336 (toList!4243 lt!1676946))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lt!1676946)))))))

(assert (=> bs!833327 m!5222423))

(assert (=> b!4495331 d!1378543))

(declare-fun b_lambda!151903 () Bool)

(assert (= b_lambda!151845 (or d!1377991 b_lambda!151903)))

(declare-fun bs!833328 () Bool)

(declare-fun d!1378545 () Bool)

(assert (= bs!833328 (and d!1378545 d!1377991)))

(assert (=> bs!833328 (= (dynLambda!21093 lambda!167831 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477))))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (head!9330 lm!1477)))))))))

(assert (=> bs!833328 m!5222465))

(assert (=> b!4495142 d!1378545))

(declare-fun b_lambda!151905 () Bool)

(assert (= b_lambda!151883 (or d!1378001 b_lambda!151905)))

(declare-fun bs!833329 () Bool)

(declare-fun d!1378547 () Bool)

(assert (= bs!833329 (and d!1378547 d!1378001)))

(assert (=> bs!833329 (= (dynLambda!21095 lambda!167834 (h!56335 newBucket!178)) (= (hash!2659 hashF!1107 (_1!28747 (h!56335 newBucket!178))) hash!344))))

(declare-fun m!5222803 () Bool)

(assert (=> bs!833329 m!5222803))

(assert (=> b!4495290 d!1378547))

(declare-fun b_lambda!151907 () Bool)

(assert (= b_lambda!151839 (or d!1377981 b_lambda!151907)))

(declare-fun bs!833330 () Bool)

(declare-fun d!1378549 () Bool)

(assert (= bs!833330 (and d!1378549 d!1377981)))

(assert (=> bs!833330 (= (dynLambda!21093 lambda!167827 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178))))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 (+!1458 lt!1676946 (tuple2!50909 hash!344 newBucket!178)))))))))

(assert (=> bs!833330 m!5222597))

(assert (=> b!4495129 d!1378549))

(declare-fun b_lambda!151909 () Bool)

(assert (= b_lambda!151885 (or d!1377969 b_lambda!151909)))

(declare-fun bs!833331 () Bool)

(declare-fun d!1378551 () Bool)

(assert (= bs!833331 (and d!1378551 d!1377969)))

(assert (=> bs!833331 (= (dynLambda!21093 lambda!167822 (h!56336 (toList!4243 lm!1477))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lm!1477)))))))

(assert (=> bs!833331 m!5221289))

(assert (=> b!4495305 d!1378551))

(declare-fun b_lambda!151911 () Bool)

(assert (= b_lambda!151847 (or start!443220 b_lambda!151911)))

(declare-fun bs!833332 () Bool)

(declare-fun d!1378553 () Bool)

(assert (= bs!833332 (and d!1378553 start!443220)))

(assert (=> bs!833332 (= (dynLambda!21093 lambda!167781 (h!56336 (t!357605 (toList!4243 lm!1477)))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))))))

(assert (=> bs!833332 m!5221781))

(assert (=> b!4495144 d!1378553))

(declare-fun b_lambda!151913 () Bool)

(assert (= b_lambda!151887 (or d!1377921 b_lambda!151913)))

(declare-fun bs!833333 () Bool)

(declare-fun d!1378555 () Bool)

(assert (= bs!833333 (and d!1378555 d!1377921)))

(assert (=> bs!833333 (= (dynLambda!21093 lambda!167812 (h!56336 (t!357605 (toList!4243 lm!1477)))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (t!357605 (toList!4243 lm!1477))))))))

(assert (=> bs!833333 m!5221781))

(assert (=> b!4495323 d!1378555))

(declare-fun b_lambda!151915 () Bool)

(assert (= b_lambda!151843 (or d!1377937 b_lambda!151915)))

(declare-fun bs!833334 () Bool)

(declare-fun d!1378557 () Bool)

(assert (= bs!833334 (and d!1378557 d!1377937)))

(assert (=> bs!833334 (= (dynLambda!21093 lambda!167813 (h!56336 (toList!4243 lt!1676946))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lt!1676946)))))))

(assert (=> bs!833334 m!5222423))

(assert (=> b!4495140 d!1378557))

(declare-fun b_lambda!151917 () Bool)

(assert (= b_lambda!151841 (or d!1377983 b_lambda!151917)))

(declare-fun bs!833335 () Bool)

(declare-fun d!1378559 () Bool)

(assert (= bs!833335 (and d!1378559 d!1377983)))

(assert (=> bs!833335 (= (dynLambda!21093 lambda!167830 (h!56336 (toList!4243 lt!1676946))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lt!1676946)))))))

(assert (=> bs!833335 m!5222423))

(assert (=> b!4495135 d!1378559))

(declare-fun b_lambda!151919 () Bool)

(assert (= b_lambda!151821 (or d!1377973 b_lambda!151919)))

(declare-fun bs!833336 () Bool)

(declare-fun d!1378561 () Bool)

(assert (= bs!833336 (and d!1378561 d!1377973)))

(assert (=> bs!833336 (= (dynLambda!21093 lambda!167823 (h!56336 (toList!4243 lm!1477))) (noDuplicateKeys!1118 (_2!28748 (h!56336 (toList!4243 lm!1477)))))))

(assert (=> bs!833336 m!5221289))

(assert (=> b!4494891 d!1378561))

(check-sat (not b!4495349) (not b!4494566) (not b_lambda!151919) (not b!4494896) (not d!1378375) (not b!4494614) (not d!1378211) (not bm!312776) (not d!1378295) (not d!1378029) (not d!1378373) (not d!1378355) (not d!1378337) (not b!4495083) (not b!4495395) (not b!4495394) (not d!1378449) (not b!4495127) (not b!4494856) (not bs!833325) (not b!4495409) (not d!1378507) (not b!4495278) (not d!1378531) (not b!4495263) (not b!4495157) (not b!4495382) (not b!4495350) (not b!4495302) (not b!4495405) (not b!4495340) (not b!4495085) (not b!4494829) (not b!4495050) (not d!1378339) (not b!4495154) (not b!4494920) (not d!1378365) (not b!4495091) (not b!4495377) (not b!4495319) tp_is_empty!27749 (not bs!833332) (not d!1378055) (not b!4495262) (not d!1378353) (not d!1378383) (not bm!312783) (not bs!833329) (not d!1378491) (not d!1378527) (not d!1378525) (not b!4494543) (not b!4495143) (not bm!312745) (not b!4495209) (not b!4495043) (not b!4495267) (not bs!833330) (not b!4495335) (not b!4495389) (not bm!312774) (not b!4495322) (not b!4495291) (not b!4494551) (not b!4495064) (not d!1378385) (not d!1378493) (not bm!312785) (not b_lambda!151911) (not b!4495343) (not b!4494593) (not b!4495072) (not d!1378379) (not b!4495037) (not d!1378043) (not d!1378179) (not bs!833335) (not d!1378465) (not d!1378201) (not b!4494927) (not b!4494868) (not b!4495407) (not b!4495039) (not bs!833324) (not b!4495277) (not b_lambda!151917) (not b!4495404) (not b!4495066) (not d!1378415) (not b!4495295) (not b!4495293) (not d!1378061) (not b!4495047) (not b!4495298) (not d!1378495) (not b!4494926) (not b!4495268) (not b!4495164) (not bm!312773) (not b!4495328) (not b!4495246) (not b!4494579) (not d!1378345) (not b!4495410) (not b!4494921) (not b!4495141) (not b!4495148) (not b!4495156) (not b!4494828) (not b!4495065) (not b!4495089) (not b!4495151) (not b!4495300) (not b!4494598) (not b!4495162) (not d!1378215) (not b!4495272) (not bm!312799) (not b_lambda!151895) (not d!1378515) (not bm!312819) (not b!4495150) (not bm!312822) (not b!4495210) (not d!1378533) (not bs!833326) (not d!1378213) (not b_lambda!151909) (not d!1378483) (not b!4495330) (not b!4495137) (not b!4494853) (not d!1378045) (not b!4494923) (not b!4494595) (not d!1378489) (not b!4494883) (not d!1378517) (not b!4495125) (not b!4495258) (not bs!833336) (not b_lambda!151893) (not b!4494605) (not bs!833328) (not bm!312800) (not b!4495054) (not bm!312747) (not b!4494895) (not b!4495249) (not b!4495230) (not d!1378367) (not bm!312775) (not d!1378305) (not d!1378335) (not b!4495082) (not b_lambda!151805) (not bm!312777) (not b!4495384) (not d!1378523) (not d!1378037) (not bm!312749) (not d!1378173) (not b!4495160) (not b!4495152) (not b!4495324) (not bm!312808) (not b!4495275) (not bm!312798) (not b!4494600) (not b!4495260) (not b!4495247) (not d!1378057) (not bm!312751) (not b!4495402) (not b!4495119) (not b!4495121) (not d!1378461) (not b!4495244) (not b_lambda!151807) (not b!4495206) (not b!4494612) (not bm!312772) (not d!1378293) (not b!4495128) (not d!1378217) (not b!4495248) (not b!4495392) (not b!4495285) (not b_lambda!151915) (not b_lambda!151907) (not b!4495386) (not b!4494831) (not b_lambda!151899) (not b!4495379) (not b!4494577) (not b!4494892) (not b_lambda!151897) (not bm!312807) (not d!1378041) (not d!1378351) (not d!1378505) (not b!4495312) (not d!1378509) (not d!1378443) (not bm!312750) (not d!1378349) (not b!4495387) (not b!4495122) (not b!4495207) (not b!4495161) (not b!4494898) (not bm!312755) (not b!4495283) (not b!4495380) (not b!4494613) (not d!1378359) (not b!4495115) (not b_lambda!151913) (not b!4495279) (not bs!833334) (not b!4494916) (not d!1378463) (not b!4494918) (not b!4494594) (not b_lambda!151905) (not d!1378413) (not b!4495204) (not b!4495123) (not b!4495259) (not bm!312809) (not b!4494850) (not b!4494832) (not b_lambda!151903) (not bs!833327) (not b!4494919) (not b!4495165) (not b!4495130) (not d!1378477) (not b!4495145) (not b!4495337) (not b_lambda!151901) (not d!1378487) (not b!4495264) (not b!4495332) (not b!4495333) (not b!4495315) (not b!4495136) (not b!4495408) (not b!4495385) (not d!1378193) (not b!4495126) (not b!4495053) (not d!1378453) (not b!4495338) (not b!4494549) (not b!4494615) (not bm!312782) (not b!4495306) (not b!4494602) (not bs!833333) (not d!1378499) (not d!1378381) (not b!4495270) (not bs!833331) (not b!4495296) (not b!4495297) (not b!4495052) (not b!4495304) (not b!4495114) (not d!1378175) (not b!4495084) (not b!4494899) (not b!4494545) (not d!1378343) (not d!1378371) (not b!4495133) (not d!1378473) (not b!4495139) (not bm!312810) (not bm!312784) (not b!4495051) (not b!4495038) (not b!4495327) (not b!4495074) (not d!1378513) (not b!4495303) (not b!4494925) (not b!4495158) (not bm!312746) (not b!4494544) tp_is_empty!27751 (not d!1378403) (not b!4495117))
(check-sat)
