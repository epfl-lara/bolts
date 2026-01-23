; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!443112 () Bool)

(assert start!443112)

(declare-fun b!4493750 () Bool)

(declare-fun e!2799094 () Bool)

(declare-fun e!2799091 () Bool)

(assert (=> b!4493750 (= e!2799094 (not e!2799091))))

(declare-fun res!1867682 () Bool)

(assert (=> b!4493750 (=> res!1867682 e!2799091)))

(declare-datatypes ((K!11930 0))(
  ( (K!11931 (val!17815 Int)) )
))
(declare-datatypes ((V!12176 0))(
  ( (V!12177 (val!17816 Int)) )
))
(declare-datatypes ((tuple2!50898 0))(
  ( (tuple2!50899 (_1!28743 K!11930) (_2!28743 V!12176)) )
))
(declare-datatypes ((List!50640 0))(
  ( (Nil!50516) (Cons!50516 (h!56327 tuple2!50898) (t!357598 List!50640)) )
))
(declare-fun lt!1676624 () List!50640)

(declare-fun key!3287 () K!11930)

(declare-fun newBucket!178 () List!50640)

(declare-fun removePairForKey!743 (List!50640 K!11930) List!50640)

(assert (=> b!4493750 (= res!1867682 (not (= newBucket!178 (removePairForKey!743 lt!1676624 key!3287))))))

(declare-fun lambda!167715 () Int)

(declare-datatypes ((tuple2!50900 0))(
  ( (tuple2!50901 (_1!28744 (_ BitVec 64)) (_2!28744 List!50640)) )
))
(declare-datatypes ((List!50641 0))(
  ( (Nil!50517) (Cons!50517 (h!56328 tuple2!50900) (t!357599 List!50641)) )
))
(declare-datatypes ((ListLongMap!2871 0))(
  ( (ListLongMap!2872 (toList!4239 List!50641)) )
))
(declare-fun lm!1477 () ListLongMap!2871)

(declare-fun lt!1676627 () tuple2!50900)

(declare-datatypes ((Unit!91136 0))(
  ( (Unit!91137) )
))
(declare-fun lt!1676631 () Unit!91136)

(declare-fun forallContained!2407 (List!50641 Int tuple2!50900) Unit!91136)

(assert (=> b!4493750 (= lt!1676631 (forallContained!2407 (toList!4239 lm!1477) lambda!167715 lt!1676627))))

(declare-fun contains!13171 (List!50641 tuple2!50900) Bool)

(assert (=> b!4493750 (contains!13171 (toList!4239 lm!1477) lt!1676627)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4493750 (= lt!1676627 (tuple2!50901 hash!344 lt!1676624))))

(declare-fun lt!1676636 () Unit!91136)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!628 (List!50641 (_ BitVec 64) List!50640) Unit!91136)

(assert (=> b!4493750 (= lt!1676636 (lemmaGetValueByKeyImpliesContainsTuple!628 (toList!4239 lm!1477) hash!344 lt!1676624))))

(declare-fun apply!11853 (ListLongMap!2871 (_ BitVec 64)) List!50640)

(assert (=> b!4493750 (= lt!1676624 (apply!11853 lm!1477 hash!344))))

(declare-fun lt!1676629 () (_ BitVec 64))

(declare-fun contains!13172 (ListLongMap!2871 (_ BitVec 64)) Bool)

(assert (=> b!4493750 (contains!13172 lm!1477 lt!1676629)))

(declare-datatypes ((Hashable!5511 0))(
  ( (HashableExt!5510 (__x!31214 Int)) )
))
(declare-fun hashF!1107 () Hashable!5511)

(declare-fun lt!1676623 () Unit!91136)

(declare-fun lemmaInGenMapThenLongMapContainsHash!190 (ListLongMap!2871 K!11930 Hashable!5511) Unit!91136)

(assert (=> b!4493750 (= lt!1676623 (lemmaInGenMapThenLongMapContainsHash!190 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4493751 () Bool)

(declare-fun res!1867688 () Bool)

(assert (=> b!4493751 (=> res!1867688 e!2799091)))

(declare-fun noDuplicateKeys!1116 (List!50640) Bool)

(assert (=> b!4493751 (= res!1867688 (not (noDuplicateKeys!1116 newBucket!178)))))

(declare-fun res!1867686 () Bool)

(declare-fun e!2799095 () Bool)

(assert (=> start!443112 (=> (not res!1867686) (not e!2799095))))

(declare-fun forall!10151 (List!50641 Int) Bool)

(assert (=> start!443112 (= res!1867686 (forall!10151 (toList!4239 lm!1477) lambda!167715))))

(assert (=> start!443112 e!2799095))

(assert (=> start!443112 true))

(declare-fun e!2799101 () Bool)

(declare-fun inv!66114 (ListLongMap!2871) Bool)

(assert (=> start!443112 (and (inv!66114 lm!1477) e!2799101)))

(declare-fun tp_is_empty!27741 () Bool)

(assert (=> start!443112 tp_is_empty!27741))

(declare-fun e!2799098 () Bool)

(assert (=> start!443112 e!2799098))

(declare-fun tp_is_empty!27743 () Bool)

(declare-fun tp!1337325 () Bool)

(declare-fun b!4493752 () Bool)

(assert (=> b!4493752 (= e!2799098 (and tp_is_empty!27741 tp_is_empty!27743 tp!1337325))))

(declare-fun b!4493753 () Bool)

(declare-fun e!2799097 () Bool)

(declare-fun e!2799100 () Bool)

(assert (=> b!4493753 (= e!2799097 e!2799100)))

(declare-fun res!1867685 () Bool)

(assert (=> b!4493753 (=> res!1867685 e!2799100)))

(declare-fun containsKeyBiggerList!96 (List!50641 K!11930) Bool)

(assert (=> b!4493753 (= res!1867685 (not (containsKeyBiggerList!96 (t!357599 (toList!4239 lm!1477)) key!3287)))))

(declare-fun lt!1676638 () ListLongMap!2871)

(assert (=> b!4493753 (containsKeyBiggerList!96 (toList!4239 lt!1676638) key!3287)))

(declare-fun lt!1676635 () Unit!91136)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!32 (ListLongMap!2871 K!11930 Hashable!5511) Unit!91136)

(assert (=> b!4493753 (= lt!1676635 (lemmaInLongMapThenContainsKeyBiggerList!32 lt!1676638 key!3287 hashF!1107))))

(declare-fun b!4493754 () Bool)

(declare-fun e!2799092 () Bool)

(assert (=> b!4493754 (= e!2799095 e!2799092)))

(declare-fun res!1867681 () Bool)

(assert (=> b!4493754 (=> (not res!1867681) (not e!2799092))))

(declare-datatypes ((ListMap!3501 0))(
  ( (ListMap!3502 (toList!4240 List!50640)) )
))
(declare-fun lt!1676630 () ListMap!3501)

(declare-fun contains!13173 (ListMap!3501 K!11930) Bool)

(assert (=> b!4493754 (= res!1867681 (contains!13173 lt!1676630 key!3287))))

(declare-fun extractMap!1172 (List!50641) ListMap!3501)

(assert (=> b!4493754 (= lt!1676630 (extractMap!1172 (toList!4239 lm!1477)))))

(declare-fun b!4493755 () Bool)

(declare-fun res!1867694 () Bool)

(assert (=> b!4493755 (=> res!1867694 e!2799091)))

(get-info :version)

(assert (=> b!4493755 (= res!1867694 (or ((_ is Nil!50517) (toList!4239 lm!1477)) (= (_1!28744 (h!56328 (toList!4239 lm!1477))) hash!344)))))

(declare-fun b!4493756 () Bool)

(declare-fun e!2799093 () Unit!91136)

(declare-fun Unit!91138 () Unit!91136)

(assert (=> b!4493756 (= e!2799093 Unit!91138)))

(declare-fun b!4493757 () Bool)

(assert (=> b!4493757 (= e!2799092 e!2799094)))

(declare-fun res!1867689 () Bool)

(assert (=> b!4493757 (=> (not res!1867689) (not e!2799094))))

(assert (=> b!4493757 (= res!1867689 (= lt!1676629 hash!344))))

(declare-fun hash!2653 (Hashable!5511 K!11930) (_ BitVec 64))

(assert (=> b!4493757 (= lt!1676629 (hash!2653 hashF!1107 key!3287))))

(declare-fun b!4493758 () Bool)

(declare-fun e!2799099 () Bool)

(assert (=> b!4493758 (= e!2799099 e!2799097)))

(declare-fun res!1867687 () Bool)

(assert (=> b!4493758 (=> res!1867687 e!2799097)))

(declare-fun lt!1676625 () Bool)

(assert (=> b!4493758 (= res!1867687 lt!1676625)))

(declare-fun lt!1676637 () Unit!91136)

(assert (=> b!4493758 (= lt!1676637 e!2799093)))

(declare-fun c!765587 () Bool)

(assert (=> b!4493758 (= c!765587 lt!1676625)))

(declare-fun containsKey!1652 (List!50640 K!11930) Bool)

(assert (=> b!4493758 (= lt!1676625 (not (containsKey!1652 lt!1676624 key!3287)))))

(declare-fun b!4493759 () Bool)

(declare-fun res!1867691 () Bool)

(assert (=> b!4493759 (=> (not res!1867691) (not e!2799095))))

(declare-fun allKeysSameHashInMap!1223 (ListLongMap!2871 Hashable!5511) Bool)

(assert (=> b!4493759 (= res!1867691 (allKeysSameHashInMap!1223 lm!1477 hashF!1107))))

(declare-fun b!4493760 () Bool)

(declare-fun Unit!91139 () Unit!91136)

(assert (=> b!4493760 (= e!2799093 Unit!91139)))

(declare-fun lt!1676632 () Unit!91136)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!104 (ListLongMap!2871 K!11930 Hashable!5511) Unit!91136)

(assert (=> b!4493760 (= lt!1676632 (lemmaNotInItsHashBucketThenNotInMap!104 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4493760 false))

(declare-fun b!4493761 () Bool)

(declare-fun res!1867693 () Bool)

(assert (=> b!4493761 (=> res!1867693 e!2799099)))

(assert (=> b!4493761 (= res!1867693 (not (contains!13171 (t!357599 (toList!4239 lm!1477)) lt!1676627)))))

(declare-fun b!4493762 () Bool)

(declare-fun e!2799096 () Bool)

(declare-fun lt!1676634 () ListLongMap!2871)

(assert (=> b!4493762 (= e!2799096 (forall!10151 (toList!4239 lt!1676634) lambda!167715))))

(declare-fun b!4493763 () Bool)

(declare-fun tp!1337324 () Bool)

(assert (=> b!4493763 (= e!2799101 tp!1337324)))

(declare-fun b!4493764 () Bool)

(declare-fun e!2799090 () Bool)

(assert (=> b!4493764 (= e!2799090 e!2799096)))

(declare-fun res!1867680 () Bool)

(assert (=> b!4493764 (=> res!1867680 e!2799096)))

(declare-fun eq!573 (ListMap!3501 ListMap!3501) Bool)

(assert (=> b!4493764 (= res!1867680 (not (eq!573 (extractMap!1172 (toList!4239 lt!1676634)) lt!1676630)))))

(declare-fun +!1456 (ListLongMap!2871 tuple2!50900) ListLongMap!2871)

(declare-fun head!9326 (ListLongMap!2871) tuple2!50900)

(assert (=> b!4493764 (= lt!1676634 (+!1456 lt!1676638 (head!9326 lm!1477)))))

(declare-fun lt!1676633 () ListMap!3501)

(declare-fun -!342 (ListMap!3501 K!11930) ListMap!3501)

(assert (=> b!4493764 (eq!573 (extractMap!1172 (toList!4239 (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178)))) (-!342 lt!1676633 key!3287))))

(declare-fun lt!1676626 () Unit!91136)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!101 (ListLongMap!2871 (_ BitVec 64) List!50640 K!11930 Hashable!5511) Unit!91136)

(assert (=> b!4493764 (= lt!1676626 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!101 lt!1676638 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4493765 () Bool)

(assert (=> b!4493765 (= e!2799100 e!2799090)))

(declare-fun res!1867684 () Bool)

(assert (=> b!4493765 (=> res!1867684 e!2799090)))

(assert (=> b!4493765 (= res!1867684 (not (contains!13173 (extractMap!1172 (t!357599 (toList!4239 lm!1477))) key!3287)))))

(assert (=> b!4493765 (contains!13173 lt!1676633 key!3287)))

(assert (=> b!4493765 (= lt!1676633 (extractMap!1172 (toList!4239 lt!1676638)))))

(declare-fun lt!1676628 () Unit!91136)

(declare-fun lemmaListContainsThenExtractedMapContains!86 (ListLongMap!2871 K!11930 Hashable!5511) Unit!91136)

(assert (=> b!4493765 (= lt!1676628 (lemmaListContainsThenExtractedMapContains!86 lt!1676638 key!3287 hashF!1107))))

(declare-fun b!4493766 () Bool)

(assert (=> b!4493766 (= e!2799091 e!2799099)))

(declare-fun res!1867683 () Bool)

(assert (=> b!4493766 (=> res!1867683 e!2799099)))

(assert (=> b!4493766 (= res!1867683 (not (contains!13172 lt!1676638 hash!344)))))

(declare-fun tail!7648 (ListLongMap!2871) ListLongMap!2871)

(assert (=> b!4493766 (= lt!1676638 (tail!7648 lm!1477))))

(declare-fun b!4493767 () Bool)

(declare-fun res!1867690 () Bool)

(assert (=> b!4493767 (=> res!1867690 e!2799099)))

(assert (=> b!4493767 (= res!1867690 (not (= (apply!11853 lt!1676638 hash!344) lt!1676624)))))

(declare-fun b!4493768 () Bool)

(declare-fun res!1867692 () Bool)

(assert (=> b!4493768 (=> (not res!1867692) (not e!2799094))))

(declare-fun allKeysSameHash!970 (List!50640 (_ BitVec 64) Hashable!5511) Bool)

(assert (=> b!4493768 (= res!1867692 (allKeysSameHash!970 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!443112 res!1867686) b!4493759))

(assert (= (and b!4493759 res!1867691) b!4493754))

(assert (= (and b!4493754 res!1867681) b!4493757))

(assert (= (and b!4493757 res!1867689) b!4493768))

(assert (= (and b!4493768 res!1867692) b!4493750))

(assert (= (and b!4493750 (not res!1867682)) b!4493751))

(assert (= (and b!4493751 (not res!1867688)) b!4493755))

(assert (= (and b!4493755 (not res!1867694)) b!4493766))

(assert (= (and b!4493766 (not res!1867683)) b!4493767))

(assert (= (and b!4493767 (not res!1867690)) b!4493761))

(assert (= (and b!4493761 (not res!1867693)) b!4493758))

(assert (= (and b!4493758 c!765587) b!4493760))

(assert (= (and b!4493758 (not c!765587)) b!4493756))

(assert (= (and b!4493758 (not res!1867687)) b!4493753))

(assert (= (and b!4493753 (not res!1867685)) b!4493765))

(assert (= (and b!4493765 (not res!1867684)) b!4493764))

(assert (= (and b!4493764 (not res!1867680)) b!4493762))

(assert (= start!443112 b!4493763))

(assert (= (and start!443112 ((_ is Cons!50516) newBucket!178)) b!4493752))

(declare-fun m!5220029 () Bool)

(assert (=> b!4493753 m!5220029))

(declare-fun m!5220031 () Bool)

(assert (=> b!4493753 m!5220031))

(declare-fun m!5220033 () Bool)

(assert (=> b!4493753 m!5220033))

(declare-fun m!5220035 () Bool)

(assert (=> b!4493751 m!5220035))

(declare-fun m!5220037 () Bool)

(assert (=> b!4493765 m!5220037))

(declare-fun m!5220039 () Bool)

(assert (=> b!4493765 m!5220039))

(declare-fun m!5220041 () Bool)

(assert (=> b!4493765 m!5220041))

(assert (=> b!4493765 m!5220039))

(declare-fun m!5220043 () Bool)

(assert (=> b!4493765 m!5220043))

(declare-fun m!5220045 () Bool)

(assert (=> b!4493765 m!5220045))

(declare-fun m!5220047 () Bool)

(assert (=> b!4493750 m!5220047))

(declare-fun m!5220049 () Bool)

(assert (=> b!4493750 m!5220049))

(declare-fun m!5220051 () Bool)

(assert (=> b!4493750 m!5220051))

(declare-fun m!5220053 () Bool)

(assert (=> b!4493750 m!5220053))

(declare-fun m!5220055 () Bool)

(assert (=> b!4493750 m!5220055))

(declare-fun m!5220057 () Bool)

(assert (=> b!4493750 m!5220057))

(declare-fun m!5220059 () Bool)

(assert (=> b!4493750 m!5220059))

(declare-fun m!5220061 () Bool)

(assert (=> b!4493757 m!5220061))

(declare-fun m!5220063 () Bool)

(assert (=> b!4493762 m!5220063))

(declare-fun m!5220065 () Bool)

(assert (=> b!4493760 m!5220065))

(declare-fun m!5220067 () Bool)

(assert (=> b!4493766 m!5220067))

(declare-fun m!5220069 () Bool)

(assert (=> b!4493766 m!5220069))

(declare-fun m!5220071 () Bool)

(assert (=> start!443112 m!5220071))

(declare-fun m!5220073 () Bool)

(assert (=> start!443112 m!5220073))

(declare-fun m!5220075 () Bool)

(assert (=> b!4493754 m!5220075))

(declare-fun m!5220077 () Bool)

(assert (=> b!4493754 m!5220077))

(declare-fun m!5220079 () Bool)

(assert (=> b!4493767 m!5220079))

(declare-fun m!5220081 () Bool)

(assert (=> b!4493759 m!5220081))

(declare-fun m!5220083 () Bool)

(assert (=> b!4493768 m!5220083))

(declare-fun m!5220085 () Bool)

(assert (=> b!4493764 m!5220085))

(declare-fun m!5220087 () Bool)

(assert (=> b!4493764 m!5220087))

(declare-fun m!5220089 () Bool)

(assert (=> b!4493764 m!5220089))

(declare-fun m!5220091 () Bool)

(assert (=> b!4493764 m!5220091))

(declare-fun m!5220093 () Bool)

(assert (=> b!4493764 m!5220093))

(declare-fun m!5220095 () Bool)

(assert (=> b!4493764 m!5220095))

(declare-fun m!5220097 () Bool)

(assert (=> b!4493764 m!5220097))

(assert (=> b!4493764 m!5220093))

(assert (=> b!4493764 m!5220085))

(assert (=> b!4493764 m!5220091))

(declare-fun m!5220099 () Bool)

(assert (=> b!4493764 m!5220099))

(assert (=> b!4493764 m!5220087))

(declare-fun m!5220101 () Bool)

(assert (=> b!4493764 m!5220101))

(declare-fun m!5220103 () Bool)

(assert (=> b!4493758 m!5220103))

(declare-fun m!5220105 () Bool)

(assert (=> b!4493761 m!5220105))

(check-sat (not b!4493751) (not b!4493752) (not b!4493764) (not b!4493768) (not b!4493766) (not b!4493759) (not b!4493765) (not b!4493762) tp_is_empty!27743 (not b!4493750) (not b!4493754) (not start!443112) (not b!4493758) tp_is_empty!27741 (not b!4493753) (not b!4493767) (not b!4493761) (not b!4493760) (not b!4493757) (not b!4493763))
(check-sat)
(get-model)

(declare-fun bs!832369 () Bool)

(declare-fun d!1377686 () Bool)

(assert (= bs!832369 (and d!1377686 start!443112)))

(declare-fun lambda!167718 () Int)

(assert (=> bs!832369 (not (= lambda!167718 lambda!167715))))

(assert (=> d!1377686 true))

(assert (=> d!1377686 (= (allKeysSameHashInMap!1223 lm!1477 hashF!1107) (forall!10151 (toList!4239 lm!1477) lambda!167718))))

(declare-fun bs!832370 () Bool)

(assert (= bs!832370 d!1377686))

(declare-fun m!5220107 () Bool)

(assert (=> bs!832370 m!5220107))

(assert (=> b!4493759 d!1377686))

(declare-fun d!1377688 () Bool)

(declare-fun res!1867699 () Bool)

(declare-fun e!2799106 () Bool)

(assert (=> d!1377688 (=> res!1867699 e!2799106)))

(assert (=> d!1377688 (= res!1867699 (and ((_ is Cons!50516) lt!1676624) (= (_1!28743 (h!56327 lt!1676624)) key!3287)))))

(assert (=> d!1377688 (= (containsKey!1652 lt!1676624 key!3287) e!2799106)))

(declare-fun b!4493775 () Bool)

(declare-fun e!2799107 () Bool)

(assert (=> b!4493775 (= e!2799106 e!2799107)))

(declare-fun res!1867700 () Bool)

(assert (=> b!4493775 (=> (not res!1867700) (not e!2799107))))

(assert (=> b!4493775 (= res!1867700 ((_ is Cons!50516) lt!1676624))))

(declare-fun b!4493776 () Bool)

(assert (=> b!4493776 (= e!2799107 (containsKey!1652 (t!357598 lt!1676624) key!3287))))

(assert (= (and d!1377688 (not res!1867699)) b!4493775))

(assert (= (and b!4493775 res!1867700) b!4493776))

(declare-fun m!5220109 () Bool)

(assert (=> b!4493776 m!5220109))

(assert (=> b!4493758 d!1377688))

(declare-fun bs!832375 () Bool)

(declare-fun d!1377690 () Bool)

(assert (= bs!832375 (and d!1377690 start!443112)))

(declare-fun lambda!167724 () Int)

(assert (=> bs!832375 (= lambda!167724 lambda!167715)))

(declare-fun bs!832376 () Bool)

(assert (= bs!832376 (and d!1377690 d!1377686)))

(assert (=> bs!832376 (not (= lambda!167724 lambda!167718))))

(assert (=> d!1377690 (not (contains!13173 (extractMap!1172 (toList!4239 lm!1477)) key!3287))))

(declare-fun lt!1676661 () Unit!91136)

(declare-fun choose!29007 (ListLongMap!2871 K!11930 Hashable!5511) Unit!91136)

(assert (=> d!1377690 (= lt!1676661 (choose!29007 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1377690 (forall!10151 (toList!4239 lm!1477) lambda!167724)))

(assert (=> d!1377690 (= (lemmaNotInItsHashBucketThenNotInMap!104 lm!1477 key!3287 hashF!1107) lt!1676661)))

(declare-fun bs!832377 () Bool)

(assert (= bs!832377 d!1377690))

(assert (=> bs!832377 m!5220077))

(assert (=> bs!832377 m!5220077))

(declare-fun m!5220147 () Bool)

(assert (=> bs!832377 m!5220147))

(declare-fun m!5220149 () Bool)

(assert (=> bs!832377 m!5220149))

(declare-fun m!5220151 () Bool)

(assert (=> bs!832377 m!5220151))

(assert (=> b!4493760 d!1377690))

(declare-fun d!1377710 () Bool)

(declare-datatypes ((Option!11028 0))(
  ( (None!11027) (Some!11027 (v!44489 List!50640)) )
))
(declare-fun get!16498 (Option!11028) List!50640)

(declare-fun getValueByKey!1008 (List!50641 (_ BitVec 64)) Option!11028)

(assert (=> d!1377710 (= (apply!11853 lt!1676638 hash!344) (get!16498 (getValueByKey!1008 (toList!4239 lt!1676638) hash!344)))))

(declare-fun bs!832379 () Bool)

(assert (= bs!832379 d!1377710))

(declare-fun m!5220165 () Bool)

(assert (=> bs!832379 m!5220165))

(assert (=> bs!832379 m!5220165))

(declare-fun m!5220167 () Bool)

(assert (=> bs!832379 m!5220167))

(assert (=> b!4493767 d!1377710))

(declare-fun d!1377716 () Bool)

(declare-fun res!1867728 () Bool)

(declare-fun e!2799145 () Bool)

(assert (=> d!1377716 (=> res!1867728 e!2799145)))

(assert (=> d!1377716 (= res!1867728 ((_ is Nil!50517) (toList!4239 lm!1477)))))

(assert (=> d!1377716 (= (forall!10151 (toList!4239 lm!1477) lambda!167715) e!2799145)))

(declare-fun b!4493824 () Bool)

(declare-fun e!2799146 () Bool)

(assert (=> b!4493824 (= e!2799145 e!2799146)))

(declare-fun res!1867729 () Bool)

(assert (=> b!4493824 (=> (not res!1867729) (not e!2799146))))

(declare-fun dynLambda!21091 (Int tuple2!50900) Bool)

(assert (=> b!4493824 (= res!1867729 (dynLambda!21091 lambda!167715 (h!56328 (toList!4239 lm!1477))))))

(declare-fun b!4493825 () Bool)

(assert (=> b!4493825 (= e!2799146 (forall!10151 (t!357599 (toList!4239 lm!1477)) lambda!167715))))

(assert (= (and d!1377716 (not res!1867728)) b!4493824))

(assert (= (and b!4493824 res!1867729) b!4493825))

(declare-fun b_lambda!151771 () Bool)

(assert (=> (not b_lambda!151771) (not b!4493824)))

(declare-fun m!5220178 () Bool)

(assert (=> b!4493824 m!5220178))

(declare-fun m!5220181 () Bool)

(assert (=> b!4493825 m!5220181))

(assert (=> start!443112 d!1377716))

(declare-fun d!1377722 () Bool)

(declare-fun isStrictlySorted!389 (List!50641) Bool)

(assert (=> d!1377722 (= (inv!66114 lm!1477) (isStrictlySorted!389 (toList!4239 lm!1477)))))

(declare-fun bs!832380 () Bool)

(assert (= bs!832380 d!1377722))

(declare-fun m!5220185 () Bool)

(assert (=> bs!832380 m!5220185))

(assert (=> start!443112 d!1377722))

(declare-fun d!1377726 () Bool)

(declare-fun e!2799161 () Bool)

(assert (=> d!1377726 e!2799161))

(declare-fun res!1867739 () Bool)

(assert (=> d!1377726 (=> res!1867739 e!2799161)))

(declare-fun lt!1676685 () Bool)

(assert (=> d!1377726 (= res!1867739 (not lt!1676685))))

(declare-fun lt!1676686 () Bool)

(assert (=> d!1377726 (= lt!1676685 lt!1676686)))

(declare-fun lt!1676688 () Unit!91136)

(declare-fun e!2799162 () Unit!91136)

(assert (=> d!1377726 (= lt!1676688 e!2799162)))

(declare-fun c!765603 () Bool)

(assert (=> d!1377726 (= c!765603 lt!1676686)))

(declare-fun containsKey!1655 (List!50641 (_ BitVec 64)) Bool)

(assert (=> d!1377726 (= lt!1676686 (containsKey!1655 (toList!4239 lt!1676638) hash!344))))

(assert (=> d!1377726 (= (contains!13172 lt!1676638 hash!344) lt!1676685)))

(declare-fun b!4493845 () Bool)

(declare-fun lt!1676687 () Unit!91136)

(assert (=> b!4493845 (= e!2799162 lt!1676687)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!912 (List!50641 (_ BitVec 64)) Unit!91136)

(assert (=> b!4493845 (= lt!1676687 (lemmaContainsKeyImpliesGetValueByKeyDefined!912 (toList!4239 lt!1676638) hash!344))))

(declare-fun isDefined!8315 (Option!11028) Bool)

(assert (=> b!4493845 (isDefined!8315 (getValueByKey!1008 (toList!4239 lt!1676638) hash!344))))

(declare-fun b!4493846 () Bool)

(declare-fun Unit!91146 () Unit!91136)

(assert (=> b!4493846 (= e!2799162 Unit!91146)))

(declare-fun b!4493847 () Bool)

(assert (=> b!4493847 (= e!2799161 (isDefined!8315 (getValueByKey!1008 (toList!4239 lt!1676638) hash!344)))))

(assert (= (and d!1377726 c!765603) b!4493845))

(assert (= (and d!1377726 (not c!765603)) b!4493846))

(assert (= (and d!1377726 (not res!1867739)) b!4493847))

(declare-fun m!5220195 () Bool)

(assert (=> d!1377726 m!5220195))

(declare-fun m!5220197 () Bool)

(assert (=> b!4493845 m!5220197))

(assert (=> b!4493845 m!5220165))

(assert (=> b!4493845 m!5220165))

(declare-fun m!5220199 () Bool)

(assert (=> b!4493845 m!5220199))

(assert (=> b!4493847 m!5220165))

(assert (=> b!4493847 m!5220165))

(assert (=> b!4493847 m!5220199))

(assert (=> b!4493766 d!1377726))

(declare-fun d!1377730 () Bool)

(declare-fun tail!7650 (List!50641) List!50641)

(assert (=> d!1377730 (= (tail!7648 lm!1477) (ListLongMap!2872 (tail!7650 (toList!4239 lm!1477))))))

(declare-fun bs!832383 () Bool)

(assert (= bs!832383 d!1377730))

(declare-fun m!5220201 () Bool)

(assert (=> bs!832383 m!5220201))

(assert (=> b!4493766 d!1377730))

(declare-fun d!1377732 () Bool)

(assert (=> d!1377732 true))

(assert (=> d!1377732 true))

(declare-fun lambda!167730 () Int)

(declare-fun forall!10152 (List!50640 Int) Bool)

(assert (=> d!1377732 (= (allKeysSameHash!970 newBucket!178 hash!344 hashF!1107) (forall!10152 newBucket!178 lambda!167730))))

(declare-fun bs!832384 () Bool)

(assert (= bs!832384 d!1377732))

(declare-fun m!5220203 () Bool)

(assert (=> bs!832384 m!5220203))

(assert (=> b!4493768 d!1377732))

(declare-fun d!1377734 () Bool)

(declare-fun hash!2657 (Hashable!5511 K!11930) (_ BitVec 64))

(assert (=> d!1377734 (= (hash!2653 hashF!1107 key!3287) (hash!2657 hashF!1107 key!3287))))

(declare-fun bs!832385 () Bool)

(assert (= bs!832385 d!1377734))

(declare-fun m!5220205 () Bool)

(assert (=> bs!832385 m!5220205))

(assert (=> b!4493757 d!1377734))

(declare-fun bs!832401 () Bool)

(declare-fun d!1377736 () Bool)

(assert (= bs!832401 (and d!1377736 start!443112)))

(declare-fun lambda!167742 () Int)

(assert (=> bs!832401 (= lambda!167742 lambda!167715)))

(declare-fun bs!832402 () Bool)

(assert (= bs!832402 (and d!1377736 d!1377686)))

(assert (=> bs!832402 (not (= lambda!167742 lambda!167718))))

(declare-fun bs!832403 () Bool)

(assert (= bs!832403 (and d!1377736 d!1377690)))

(assert (=> bs!832403 (= lambda!167742 lambda!167724)))

(declare-fun lt!1676727 () ListMap!3501)

(declare-fun invariantList!975 (List!50640) Bool)

(assert (=> d!1377736 (invariantList!975 (toList!4240 lt!1676727))))

(declare-fun e!2799202 () ListMap!3501)

(assert (=> d!1377736 (= lt!1676727 e!2799202)))

(declare-fun c!765619 () Bool)

(assert (=> d!1377736 (= c!765619 ((_ is Cons!50517) (toList!4239 (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178)))))))

(assert (=> d!1377736 (forall!10151 (toList!4239 (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178))) lambda!167742)))

(assert (=> d!1377736 (= (extractMap!1172 (toList!4239 (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178)))) lt!1676727)))

(declare-fun b!4493908 () Bool)

(declare-fun addToMapMapFromBucket!643 (List!50640 ListMap!3501) ListMap!3501)

(assert (=> b!4493908 (= e!2799202 (addToMapMapFromBucket!643 (_2!28744 (h!56328 (toList!4239 (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178))))) (extractMap!1172 (t!357599 (toList!4239 (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178)))))))))

(declare-fun b!4493909 () Bool)

(assert (=> b!4493909 (= e!2799202 (ListMap!3502 Nil!50516))))

(assert (= (and d!1377736 c!765619) b!4493908))

(assert (= (and d!1377736 (not c!765619)) b!4493909))

(declare-fun m!5220277 () Bool)

(assert (=> d!1377736 m!5220277))

(declare-fun m!5220279 () Bool)

(assert (=> d!1377736 m!5220279))

(declare-fun m!5220281 () Bool)

(assert (=> b!4493908 m!5220281))

(assert (=> b!4493908 m!5220281))

(declare-fun m!5220283 () Bool)

(assert (=> b!4493908 m!5220283))

(assert (=> b!4493764 d!1377736))

(declare-fun d!1377756 () Bool)

(declare-fun e!2799209 () Bool)

(assert (=> d!1377756 e!2799209))

(declare-fun res!1867771 () Bool)

(assert (=> d!1377756 (=> (not res!1867771) (not e!2799209))))

(declare-fun lt!1676745 () ListLongMap!2871)

(assert (=> d!1377756 (= res!1867771 (contains!13172 lt!1676745 (_1!28744 (head!9326 lm!1477))))))

(declare-fun lt!1676746 () List!50641)

(assert (=> d!1377756 (= lt!1676745 (ListLongMap!2872 lt!1676746))))

(declare-fun lt!1676744 () Unit!91136)

(declare-fun lt!1676743 () Unit!91136)

(assert (=> d!1377756 (= lt!1676744 lt!1676743)))

(assert (=> d!1377756 (= (getValueByKey!1008 lt!1676746 (_1!28744 (head!9326 lm!1477))) (Some!11027 (_2!28744 (head!9326 lm!1477))))))

(declare-fun lemmaContainsTupThenGetReturnValue!623 (List!50641 (_ BitVec 64) List!50640) Unit!91136)

(assert (=> d!1377756 (= lt!1676743 (lemmaContainsTupThenGetReturnValue!623 lt!1676746 (_1!28744 (head!9326 lm!1477)) (_2!28744 (head!9326 lm!1477))))))

(declare-fun insertStrictlySorted!365 (List!50641 (_ BitVec 64) List!50640) List!50641)

(assert (=> d!1377756 (= lt!1676746 (insertStrictlySorted!365 (toList!4239 lt!1676638) (_1!28744 (head!9326 lm!1477)) (_2!28744 (head!9326 lm!1477))))))

(assert (=> d!1377756 (= (+!1456 lt!1676638 (head!9326 lm!1477)) lt!1676745)))

(declare-fun b!4493919 () Bool)

(declare-fun res!1867772 () Bool)

(assert (=> b!4493919 (=> (not res!1867772) (not e!2799209))))

(assert (=> b!4493919 (= res!1867772 (= (getValueByKey!1008 (toList!4239 lt!1676745) (_1!28744 (head!9326 lm!1477))) (Some!11027 (_2!28744 (head!9326 lm!1477)))))))

(declare-fun b!4493920 () Bool)

(assert (=> b!4493920 (= e!2799209 (contains!13171 (toList!4239 lt!1676745) (head!9326 lm!1477)))))

(assert (= (and d!1377756 res!1867771) b!4493919))

(assert (= (and b!4493919 res!1867772) b!4493920))

(declare-fun m!5220315 () Bool)

(assert (=> d!1377756 m!5220315))

(declare-fun m!5220317 () Bool)

(assert (=> d!1377756 m!5220317))

(declare-fun m!5220319 () Bool)

(assert (=> d!1377756 m!5220319))

(declare-fun m!5220321 () Bool)

(assert (=> d!1377756 m!5220321))

(declare-fun m!5220323 () Bool)

(assert (=> b!4493919 m!5220323))

(assert (=> b!4493920 m!5220087))

(declare-fun m!5220325 () Bool)

(assert (=> b!4493920 m!5220325))

(assert (=> b!4493764 d!1377756))

(declare-fun d!1377768 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8231 (List!50640) (InoxSet tuple2!50898))

(assert (=> d!1377768 (= (eq!573 (extractMap!1172 (toList!4239 (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178)))) (-!342 lt!1676633 key!3287)) (= (content!8231 (toList!4240 (extractMap!1172 (toList!4239 (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178)))))) (content!8231 (toList!4240 (-!342 lt!1676633 key!3287)))))))

(declare-fun bs!832421 () Bool)

(assert (= bs!832421 d!1377768))

(declare-fun m!5220327 () Bool)

(assert (=> bs!832421 m!5220327))

(declare-fun m!5220329 () Bool)

(assert (=> bs!832421 m!5220329))

(assert (=> b!4493764 d!1377768))

(declare-fun bs!832441 () Bool)

(declare-fun d!1377770 () Bool)

(assert (= bs!832441 (and d!1377770 start!443112)))

(declare-fun lambda!167754 () Int)

(assert (=> bs!832441 (= lambda!167754 lambda!167715)))

(declare-fun bs!832442 () Bool)

(assert (= bs!832442 (and d!1377770 d!1377686)))

(assert (=> bs!832442 (not (= lambda!167754 lambda!167718))))

(declare-fun bs!832443 () Bool)

(assert (= bs!832443 (and d!1377770 d!1377690)))

(assert (=> bs!832443 (= lambda!167754 lambda!167724)))

(declare-fun bs!832444 () Bool)

(assert (= bs!832444 (and d!1377770 d!1377736)))

(assert (=> bs!832444 (= lambda!167754 lambda!167742)))

(assert (=> d!1377770 (eq!573 (extractMap!1172 (toList!4239 (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178)))) (-!342 (extractMap!1172 (toList!4239 lt!1676638)) key!3287))))

(declare-fun lt!1676769 () Unit!91136)

(declare-fun choose!29009 (ListLongMap!2871 (_ BitVec 64) List!50640 K!11930 Hashable!5511) Unit!91136)

(assert (=> d!1377770 (= lt!1676769 (choose!29009 lt!1676638 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1377770 (forall!10151 (toList!4239 lt!1676638) lambda!167754)))

(assert (=> d!1377770 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!101 lt!1676638 hash!344 newBucket!178 key!3287 hashF!1107) lt!1676769)))

(declare-fun bs!832445 () Bool)

(assert (= bs!832445 d!1377770))

(declare-fun m!5220373 () Bool)

(assert (=> bs!832445 m!5220373))

(assert (=> bs!832445 m!5220045))

(assert (=> bs!832445 m!5220085))

(assert (=> bs!832445 m!5220085))

(declare-fun m!5220375 () Bool)

(assert (=> bs!832445 m!5220375))

(declare-fun m!5220377 () Bool)

(assert (=> bs!832445 m!5220377))

(assert (=> bs!832445 m!5220101))

(assert (=> bs!832445 m!5220045))

(assert (=> bs!832445 m!5220375))

(declare-fun m!5220379 () Bool)

(assert (=> bs!832445 m!5220379))

(assert (=> b!4493764 d!1377770))

(declare-fun d!1377782 () Bool)

(declare-fun head!9328 (List!50641) tuple2!50900)

(assert (=> d!1377782 (= (head!9326 lm!1477) (head!9328 (toList!4239 lm!1477)))))

(declare-fun bs!832447 () Bool)

(assert (= bs!832447 d!1377782))

(declare-fun m!5220381 () Bool)

(assert (=> bs!832447 m!5220381))

(assert (=> b!4493764 d!1377782))

(declare-fun d!1377784 () Bool)

(assert (=> d!1377784 (= (eq!573 (extractMap!1172 (toList!4239 lt!1676634)) lt!1676630) (= (content!8231 (toList!4240 (extractMap!1172 (toList!4239 lt!1676634)))) (content!8231 (toList!4240 lt!1676630))))))

(declare-fun bs!832452 () Bool)

(assert (= bs!832452 d!1377784))

(declare-fun m!5220383 () Bool)

(assert (=> bs!832452 m!5220383))

(declare-fun m!5220385 () Bool)

(assert (=> bs!832452 m!5220385))

(assert (=> b!4493764 d!1377784))

(declare-fun d!1377786 () Bool)

(declare-fun e!2799238 () Bool)

(assert (=> d!1377786 e!2799238))

(declare-fun res!1867794 () Bool)

(assert (=> d!1377786 (=> (not res!1867794) (not e!2799238))))

(declare-fun lt!1676784 () ListMap!3501)

(assert (=> d!1377786 (= res!1867794 (not (contains!13173 lt!1676784 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!99 (List!50640 K!11930) List!50640)

(assert (=> d!1377786 (= lt!1676784 (ListMap!3502 (removePresrvNoDuplicatedKeys!99 (toList!4240 lt!1676633) key!3287)))))

(assert (=> d!1377786 (= (-!342 lt!1676633 key!3287) lt!1676784)))

(declare-fun b!4493966 () Bool)

(declare-datatypes ((List!50643 0))(
  ( (Nil!50519) (Cons!50519 (h!56332 K!11930) (t!357601 List!50643)) )
))
(declare-fun content!8232 (List!50643) (InoxSet K!11930))

(declare-fun keys!17506 (ListMap!3501) List!50643)

(assert (=> b!4493966 (= e!2799238 (= ((_ map and) (content!8232 (keys!17506 lt!1676633)) ((_ map not) (store ((as const (Array K!11930 Bool)) false) key!3287 true))) (content!8232 (keys!17506 lt!1676784))))))

(assert (= (and d!1377786 res!1867794) b!4493966))

(declare-fun m!5220435 () Bool)

(assert (=> d!1377786 m!5220435))

(declare-fun m!5220437 () Bool)

(assert (=> d!1377786 m!5220437))

(declare-fun m!5220439 () Bool)

(assert (=> b!4493966 m!5220439))

(declare-fun m!5220441 () Bool)

(assert (=> b!4493966 m!5220441))

(assert (=> b!4493966 m!5220439))

(declare-fun m!5220443 () Bool)

(assert (=> b!4493966 m!5220443))

(assert (=> b!4493966 m!5220441))

(declare-fun m!5220445 () Bool)

(assert (=> b!4493966 m!5220445))

(declare-fun m!5220447 () Bool)

(assert (=> b!4493966 m!5220447))

(assert (=> b!4493764 d!1377786))

(declare-fun d!1377804 () Bool)

(declare-fun e!2799239 () Bool)

(assert (=> d!1377804 e!2799239))

(declare-fun res!1867795 () Bool)

(assert (=> d!1377804 (=> (not res!1867795) (not e!2799239))))

(declare-fun lt!1676787 () ListLongMap!2871)

(assert (=> d!1377804 (= res!1867795 (contains!13172 lt!1676787 (_1!28744 (tuple2!50901 hash!344 newBucket!178))))))

(declare-fun lt!1676788 () List!50641)

(assert (=> d!1377804 (= lt!1676787 (ListLongMap!2872 lt!1676788))))

(declare-fun lt!1676786 () Unit!91136)

(declare-fun lt!1676785 () Unit!91136)

(assert (=> d!1377804 (= lt!1676786 lt!1676785)))

(assert (=> d!1377804 (= (getValueByKey!1008 lt!1676788 (_1!28744 (tuple2!50901 hash!344 newBucket!178))) (Some!11027 (_2!28744 (tuple2!50901 hash!344 newBucket!178))))))

(assert (=> d!1377804 (= lt!1676785 (lemmaContainsTupThenGetReturnValue!623 lt!1676788 (_1!28744 (tuple2!50901 hash!344 newBucket!178)) (_2!28744 (tuple2!50901 hash!344 newBucket!178))))))

(assert (=> d!1377804 (= lt!1676788 (insertStrictlySorted!365 (toList!4239 lt!1676638) (_1!28744 (tuple2!50901 hash!344 newBucket!178)) (_2!28744 (tuple2!50901 hash!344 newBucket!178))))))

(assert (=> d!1377804 (= (+!1456 lt!1676638 (tuple2!50901 hash!344 newBucket!178)) lt!1676787)))

(declare-fun b!4493967 () Bool)

(declare-fun res!1867796 () Bool)

(assert (=> b!4493967 (=> (not res!1867796) (not e!2799239))))

(assert (=> b!4493967 (= res!1867796 (= (getValueByKey!1008 (toList!4239 lt!1676787) (_1!28744 (tuple2!50901 hash!344 newBucket!178))) (Some!11027 (_2!28744 (tuple2!50901 hash!344 newBucket!178)))))))

(declare-fun b!4493968 () Bool)

(assert (=> b!4493968 (= e!2799239 (contains!13171 (toList!4239 lt!1676787) (tuple2!50901 hash!344 newBucket!178)))))

(assert (= (and d!1377804 res!1867795) b!4493967))

(assert (= (and b!4493967 res!1867796) b!4493968))

(declare-fun m!5220449 () Bool)

(assert (=> d!1377804 m!5220449))

(declare-fun m!5220451 () Bool)

(assert (=> d!1377804 m!5220451))

(declare-fun m!5220453 () Bool)

(assert (=> d!1377804 m!5220453))

(declare-fun m!5220455 () Bool)

(assert (=> d!1377804 m!5220455))

(declare-fun m!5220457 () Bool)

(assert (=> b!4493967 m!5220457))

(declare-fun m!5220459 () Bool)

(assert (=> b!4493968 m!5220459))

(assert (=> b!4493764 d!1377804))

(declare-fun bs!832474 () Bool)

(declare-fun d!1377806 () Bool)

(assert (= bs!832474 (and d!1377806 d!1377770)))

(declare-fun lambda!167759 () Int)

(assert (=> bs!832474 (= lambda!167759 lambda!167754)))

(declare-fun bs!832475 () Bool)

(assert (= bs!832475 (and d!1377806 d!1377690)))

(assert (=> bs!832475 (= lambda!167759 lambda!167724)))

(declare-fun bs!832476 () Bool)

(assert (= bs!832476 (and d!1377806 start!443112)))

(assert (=> bs!832476 (= lambda!167759 lambda!167715)))

(declare-fun bs!832477 () Bool)

(assert (= bs!832477 (and d!1377806 d!1377686)))

(assert (=> bs!832477 (not (= lambda!167759 lambda!167718))))

(declare-fun bs!832478 () Bool)

(assert (= bs!832478 (and d!1377806 d!1377736)))

(assert (=> bs!832478 (= lambda!167759 lambda!167742)))

(declare-fun lt!1676789 () ListMap!3501)

(assert (=> d!1377806 (invariantList!975 (toList!4240 lt!1676789))))

(declare-fun e!2799240 () ListMap!3501)

(assert (=> d!1377806 (= lt!1676789 e!2799240)))

(declare-fun c!765626 () Bool)

(assert (=> d!1377806 (= c!765626 ((_ is Cons!50517) (toList!4239 lt!1676634)))))

(assert (=> d!1377806 (forall!10151 (toList!4239 lt!1676634) lambda!167759)))

(assert (=> d!1377806 (= (extractMap!1172 (toList!4239 lt!1676634)) lt!1676789)))

(declare-fun b!4493969 () Bool)

(assert (=> b!4493969 (= e!2799240 (addToMapMapFromBucket!643 (_2!28744 (h!56328 (toList!4239 lt!1676634))) (extractMap!1172 (t!357599 (toList!4239 lt!1676634)))))))

(declare-fun b!4493970 () Bool)

(assert (=> b!4493970 (= e!2799240 (ListMap!3502 Nil!50516))))

(assert (= (and d!1377806 c!765626) b!4493969))

(assert (= (and d!1377806 (not c!765626)) b!4493970))

(declare-fun m!5220461 () Bool)

(assert (=> d!1377806 m!5220461))

(declare-fun m!5220463 () Bool)

(assert (=> d!1377806 m!5220463))

(declare-fun m!5220465 () Bool)

(assert (=> b!4493969 m!5220465))

(assert (=> b!4493969 m!5220465))

(declare-fun m!5220467 () Bool)

(assert (=> b!4493969 m!5220467))

(assert (=> b!4493764 d!1377806))

(declare-fun d!1377808 () Bool)

(declare-fun res!1867805 () Bool)

(declare-fun e!2799248 () Bool)

(assert (=> d!1377808 (=> res!1867805 e!2799248)))

(declare-fun e!2799249 () Bool)

(assert (=> d!1377808 (= res!1867805 e!2799249)))

(declare-fun res!1867803 () Bool)

(assert (=> d!1377808 (=> (not res!1867803) (not e!2799249))))

(assert (=> d!1377808 (= res!1867803 ((_ is Cons!50517) (t!357599 (toList!4239 lm!1477))))))

(assert (=> d!1377808 (= (containsKeyBiggerList!96 (t!357599 (toList!4239 lm!1477)) key!3287) e!2799248)))

(declare-fun b!4493977 () Bool)

(assert (=> b!4493977 (= e!2799249 (containsKey!1652 (_2!28744 (h!56328 (t!357599 (toList!4239 lm!1477)))) key!3287))))

(declare-fun b!4493978 () Bool)

(declare-fun e!2799247 () Bool)

(assert (=> b!4493978 (= e!2799248 e!2799247)))

(declare-fun res!1867804 () Bool)

(assert (=> b!4493978 (=> (not res!1867804) (not e!2799247))))

(assert (=> b!4493978 (= res!1867804 ((_ is Cons!50517) (t!357599 (toList!4239 lm!1477))))))

(declare-fun b!4493979 () Bool)

(assert (=> b!4493979 (= e!2799247 (containsKeyBiggerList!96 (t!357599 (t!357599 (toList!4239 lm!1477))) key!3287))))

(assert (= (and d!1377808 res!1867803) b!4493977))

(assert (= (and d!1377808 (not res!1867805)) b!4493978))

(assert (= (and b!4493978 res!1867804) b!4493979))

(declare-fun m!5220469 () Bool)

(assert (=> b!4493977 m!5220469))

(declare-fun m!5220471 () Bool)

(assert (=> b!4493979 m!5220471))

(assert (=> b!4493753 d!1377808))

(declare-fun d!1377810 () Bool)

(declare-fun res!1867808 () Bool)

(declare-fun e!2799251 () Bool)

(assert (=> d!1377810 (=> res!1867808 e!2799251)))

(declare-fun e!2799252 () Bool)

(assert (=> d!1377810 (= res!1867808 e!2799252)))

(declare-fun res!1867806 () Bool)

(assert (=> d!1377810 (=> (not res!1867806) (not e!2799252))))

(assert (=> d!1377810 (= res!1867806 ((_ is Cons!50517) (toList!4239 lt!1676638)))))

(assert (=> d!1377810 (= (containsKeyBiggerList!96 (toList!4239 lt!1676638) key!3287) e!2799251)))

(declare-fun b!4493980 () Bool)

(assert (=> b!4493980 (= e!2799252 (containsKey!1652 (_2!28744 (h!56328 (toList!4239 lt!1676638))) key!3287))))

(declare-fun b!4493981 () Bool)

(declare-fun e!2799250 () Bool)

(assert (=> b!4493981 (= e!2799251 e!2799250)))

(declare-fun res!1867807 () Bool)

(assert (=> b!4493981 (=> (not res!1867807) (not e!2799250))))

(assert (=> b!4493981 (= res!1867807 ((_ is Cons!50517) (toList!4239 lt!1676638)))))

(declare-fun b!4493982 () Bool)

(assert (=> b!4493982 (= e!2799250 (containsKeyBiggerList!96 (t!357599 (toList!4239 lt!1676638)) key!3287))))

(assert (= (and d!1377810 res!1867806) b!4493980))

(assert (= (and d!1377810 (not res!1867808)) b!4493981))

(assert (= (and b!4493981 res!1867807) b!4493982))

(declare-fun m!5220473 () Bool)

(assert (=> b!4493980 m!5220473))

(declare-fun m!5220475 () Bool)

(assert (=> b!4493982 m!5220475))

(assert (=> b!4493753 d!1377810))

(declare-fun bs!832479 () Bool)

(declare-fun d!1377812 () Bool)

(assert (= bs!832479 (and d!1377812 d!1377690)))

(declare-fun lambda!167762 () Int)

(assert (=> bs!832479 (= lambda!167762 lambda!167724)))

(declare-fun bs!832480 () Bool)

(assert (= bs!832480 (and d!1377812 start!443112)))

(assert (=> bs!832480 (= lambda!167762 lambda!167715)))

(declare-fun bs!832481 () Bool)

(assert (= bs!832481 (and d!1377812 d!1377686)))

(assert (=> bs!832481 (not (= lambda!167762 lambda!167718))))

(declare-fun bs!832482 () Bool)

(assert (= bs!832482 (and d!1377812 d!1377736)))

(assert (=> bs!832482 (= lambda!167762 lambda!167742)))

(declare-fun bs!832483 () Bool)

(assert (= bs!832483 (and d!1377812 d!1377806)))

(assert (=> bs!832483 (= lambda!167762 lambda!167759)))

(declare-fun bs!832484 () Bool)

(assert (= bs!832484 (and d!1377812 d!1377770)))

(assert (=> bs!832484 (= lambda!167762 lambda!167754)))

(assert (=> d!1377812 (containsKeyBiggerList!96 (toList!4239 lt!1676638) key!3287)))

(declare-fun lt!1676792 () Unit!91136)

(declare-fun choose!29011 (ListLongMap!2871 K!11930 Hashable!5511) Unit!91136)

(assert (=> d!1377812 (= lt!1676792 (choose!29011 lt!1676638 key!3287 hashF!1107))))

(assert (=> d!1377812 (forall!10151 (toList!4239 lt!1676638) lambda!167762)))

(assert (=> d!1377812 (= (lemmaInLongMapThenContainsKeyBiggerList!32 lt!1676638 key!3287 hashF!1107) lt!1676792)))

(declare-fun bs!832485 () Bool)

(assert (= bs!832485 d!1377812))

(assert (=> bs!832485 m!5220031))

(declare-fun m!5220477 () Bool)

(assert (=> bs!832485 m!5220477))

(declare-fun m!5220479 () Bool)

(assert (=> bs!832485 m!5220479))

(assert (=> b!4493753 d!1377812))

(declare-fun b!4494001 () Bool)

(declare-fun e!2799268 () Unit!91136)

(declare-fun e!2799266 () Unit!91136)

(assert (=> b!4494001 (= e!2799268 e!2799266)))

(declare-fun c!765635 () Bool)

(declare-fun call!312707 () Bool)

(assert (=> b!4494001 (= c!765635 call!312707)))

(declare-fun b!4494002 () Bool)

(declare-fun e!2799269 () Bool)

(declare-fun contains!13175 (List!50643 K!11930) Bool)

(assert (=> b!4494002 (= e!2799269 (not (contains!13175 (keys!17506 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))) key!3287)))))

(declare-fun b!4494003 () Bool)

(declare-fun e!2799270 () Bool)

(assert (=> b!4494003 (= e!2799270 (contains!13175 (keys!17506 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))) key!3287))))

(declare-fun b!4494004 () Bool)

(declare-fun lt!1676815 () Unit!91136)

(assert (=> b!4494004 (= e!2799268 lt!1676815)))

(declare-fun lt!1676812 () Unit!91136)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!913 (List!50640 K!11930) Unit!91136)

(assert (=> b!4494004 (= lt!1676812 (lemmaContainsKeyImpliesGetValueByKeyDefined!913 (toList!4240 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11029 0))(
  ( (None!11028) (Some!11028 (v!44490 V!12176)) )
))
(declare-fun isDefined!8316 (Option!11029) Bool)

(declare-fun getValueByKey!1009 (List!50640 K!11930) Option!11029)

(assert (=> b!4494004 (isDefined!8316 (getValueByKey!1009 (toList!4240 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))) key!3287))))

(declare-fun lt!1676811 () Unit!91136)

(assert (=> b!4494004 (= lt!1676811 lt!1676812)))

(declare-fun lemmaInListThenGetKeysListContains!419 (List!50640 K!11930) Unit!91136)

(assert (=> b!4494004 (= lt!1676815 (lemmaInListThenGetKeysListContains!419 (toList!4240 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))) key!3287))))

(assert (=> b!4494004 call!312707))

(declare-fun bm!312702 () Bool)

(declare-fun e!2799267 () List!50643)

(assert (=> bm!312702 (= call!312707 (contains!13175 e!2799267 key!3287))))

(declare-fun c!765634 () Bool)

(declare-fun c!765633 () Bool)

(assert (=> bm!312702 (= c!765634 c!765633)))

(declare-fun b!4494006 () Bool)

(declare-fun getKeysList!423 (List!50640) List!50643)

(assert (=> b!4494006 (= e!2799267 (getKeysList!423 (toList!4240 (extractMap!1172 (t!357599 (toList!4239 lm!1477))))))))

(declare-fun b!4494007 () Bool)

(assert (=> b!4494007 false))

(declare-fun lt!1676809 () Unit!91136)

(declare-fun lt!1676813 () Unit!91136)

(assert (=> b!4494007 (= lt!1676809 lt!1676813)))

(declare-fun containsKey!1656 (List!50640 K!11930) Bool)

(assert (=> b!4494007 (containsKey!1656 (toList!4240 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!422 (List!50640 K!11930) Unit!91136)

(assert (=> b!4494007 (= lt!1676813 (lemmaInGetKeysListThenContainsKey!422 (toList!4240 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))) key!3287))))

(declare-fun Unit!91147 () Unit!91136)

(assert (=> b!4494007 (= e!2799266 Unit!91147)))

(declare-fun b!4494008 () Bool)

(declare-fun Unit!91148 () Unit!91136)

(assert (=> b!4494008 (= e!2799266 Unit!91148)))

(declare-fun b!4494009 () Bool)

(declare-fun e!2799265 () Bool)

(assert (=> b!4494009 (= e!2799265 e!2799270)))

(declare-fun res!1867815 () Bool)

(assert (=> b!4494009 (=> (not res!1867815) (not e!2799270))))

(assert (=> b!4494009 (= res!1867815 (isDefined!8316 (getValueByKey!1009 (toList!4240 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))) key!3287)))))

(declare-fun d!1377814 () Bool)

(assert (=> d!1377814 e!2799265))

(declare-fun res!1867816 () Bool)

(assert (=> d!1377814 (=> res!1867816 e!2799265)))

(assert (=> d!1377814 (= res!1867816 e!2799269)))

(declare-fun res!1867817 () Bool)

(assert (=> d!1377814 (=> (not res!1867817) (not e!2799269))))

(declare-fun lt!1676816 () Bool)

(assert (=> d!1377814 (= res!1867817 (not lt!1676816))))

(declare-fun lt!1676814 () Bool)

(assert (=> d!1377814 (= lt!1676816 lt!1676814)))

(declare-fun lt!1676810 () Unit!91136)

(assert (=> d!1377814 (= lt!1676810 e!2799268)))

(assert (=> d!1377814 (= c!765633 lt!1676814)))

(assert (=> d!1377814 (= lt!1676814 (containsKey!1656 (toList!4240 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))) key!3287))))

(assert (=> d!1377814 (= (contains!13173 (extractMap!1172 (t!357599 (toList!4239 lm!1477))) key!3287) lt!1676816)))

(declare-fun b!4494005 () Bool)

(assert (=> b!4494005 (= e!2799267 (keys!17506 (extractMap!1172 (t!357599 (toList!4239 lm!1477)))))))

(assert (= (and d!1377814 c!765633) b!4494004))

(assert (= (and d!1377814 (not c!765633)) b!4494001))

(assert (= (and b!4494001 c!765635) b!4494007))

(assert (= (and b!4494001 (not c!765635)) b!4494008))

(assert (= (or b!4494004 b!4494001) bm!312702))

(assert (= (and bm!312702 c!765634) b!4494006))

(assert (= (and bm!312702 (not c!765634)) b!4494005))

(assert (= (and d!1377814 res!1867817) b!4494002))

(assert (= (and d!1377814 (not res!1867816)) b!4494009))

(assert (= (and b!4494009 res!1867815) b!4494003))

(declare-fun m!5220481 () Bool)

(assert (=> b!4494006 m!5220481))

(declare-fun m!5220483 () Bool)

(assert (=> bm!312702 m!5220483))

(assert (=> b!4494005 m!5220039))

(declare-fun m!5220485 () Bool)

(assert (=> b!4494005 m!5220485))

(declare-fun m!5220487 () Bool)

(assert (=> b!4494004 m!5220487))

(declare-fun m!5220489 () Bool)

(assert (=> b!4494004 m!5220489))

(assert (=> b!4494004 m!5220489))

(declare-fun m!5220491 () Bool)

(assert (=> b!4494004 m!5220491))

(declare-fun m!5220493 () Bool)

(assert (=> b!4494004 m!5220493))

(declare-fun m!5220495 () Bool)

(assert (=> b!4494007 m!5220495))

(declare-fun m!5220497 () Bool)

(assert (=> b!4494007 m!5220497))

(assert (=> b!4494003 m!5220039))

(assert (=> b!4494003 m!5220485))

(assert (=> b!4494003 m!5220485))

(declare-fun m!5220499 () Bool)

(assert (=> b!4494003 m!5220499))

(assert (=> b!4494002 m!5220039))

(assert (=> b!4494002 m!5220485))

(assert (=> b!4494002 m!5220485))

(assert (=> b!4494002 m!5220499))

(assert (=> b!4494009 m!5220489))

(assert (=> b!4494009 m!5220489))

(assert (=> b!4494009 m!5220491))

(assert (=> d!1377814 m!5220495))

(assert (=> b!4493765 d!1377814))

(declare-fun bs!832486 () Bool)

(declare-fun d!1377816 () Bool)

(assert (= bs!832486 (and d!1377816 d!1377812)))

(declare-fun lambda!167763 () Int)

(assert (=> bs!832486 (= lambda!167763 lambda!167762)))

(declare-fun bs!832487 () Bool)

(assert (= bs!832487 (and d!1377816 d!1377690)))

(assert (=> bs!832487 (= lambda!167763 lambda!167724)))

(declare-fun bs!832488 () Bool)

(assert (= bs!832488 (and d!1377816 start!443112)))

(assert (=> bs!832488 (= lambda!167763 lambda!167715)))

(declare-fun bs!832489 () Bool)

(assert (= bs!832489 (and d!1377816 d!1377686)))

(assert (=> bs!832489 (not (= lambda!167763 lambda!167718))))

(declare-fun bs!832490 () Bool)

(assert (= bs!832490 (and d!1377816 d!1377736)))

(assert (=> bs!832490 (= lambda!167763 lambda!167742)))

(declare-fun bs!832491 () Bool)

(assert (= bs!832491 (and d!1377816 d!1377806)))

(assert (=> bs!832491 (= lambda!167763 lambda!167759)))

(declare-fun bs!832492 () Bool)

(assert (= bs!832492 (and d!1377816 d!1377770)))

(assert (=> bs!832492 (= lambda!167763 lambda!167754)))

(declare-fun lt!1676817 () ListMap!3501)

(assert (=> d!1377816 (invariantList!975 (toList!4240 lt!1676817))))

(declare-fun e!2799271 () ListMap!3501)

(assert (=> d!1377816 (= lt!1676817 e!2799271)))

(declare-fun c!765636 () Bool)

(assert (=> d!1377816 (= c!765636 ((_ is Cons!50517) (t!357599 (toList!4239 lm!1477))))))

(assert (=> d!1377816 (forall!10151 (t!357599 (toList!4239 lm!1477)) lambda!167763)))

(assert (=> d!1377816 (= (extractMap!1172 (t!357599 (toList!4239 lm!1477))) lt!1676817)))

(declare-fun b!4494010 () Bool)

(assert (=> b!4494010 (= e!2799271 (addToMapMapFromBucket!643 (_2!28744 (h!56328 (t!357599 (toList!4239 lm!1477)))) (extractMap!1172 (t!357599 (t!357599 (toList!4239 lm!1477))))))))

(declare-fun b!4494011 () Bool)

(assert (=> b!4494011 (= e!2799271 (ListMap!3502 Nil!50516))))

(assert (= (and d!1377816 c!765636) b!4494010))

(assert (= (and d!1377816 (not c!765636)) b!4494011))

(declare-fun m!5220501 () Bool)

(assert (=> d!1377816 m!5220501))

(declare-fun m!5220503 () Bool)

(assert (=> d!1377816 m!5220503))

(declare-fun m!5220505 () Bool)

(assert (=> b!4494010 m!5220505))

(assert (=> b!4494010 m!5220505))

(declare-fun m!5220507 () Bool)

(assert (=> b!4494010 m!5220507))

(assert (=> b!4493765 d!1377816))

(declare-fun bs!832493 () Bool)

(declare-fun d!1377818 () Bool)

(assert (= bs!832493 (and d!1377818 d!1377812)))

(declare-fun lambda!167766 () Int)

(assert (=> bs!832493 (= lambda!167766 lambda!167762)))

(declare-fun bs!832494 () Bool)

(assert (= bs!832494 (and d!1377818 start!443112)))

(assert (=> bs!832494 (= lambda!167766 lambda!167715)))

(declare-fun bs!832495 () Bool)

(assert (= bs!832495 (and d!1377818 d!1377686)))

(assert (=> bs!832495 (not (= lambda!167766 lambda!167718))))

(declare-fun bs!832496 () Bool)

(assert (= bs!832496 (and d!1377818 d!1377736)))

(assert (=> bs!832496 (= lambda!167766 lambda!167742)))

(declare-fun bs!832497 () Bool)

(assert (= bs!832497 (and d!1377818 d!1377806)))

(assert (=> bs!832497 (= lambda!167766 lambda!167759)))

(declare-fun bs!832498 () Bool)

(assert (= bs!832498 (and d!1377818 d!1377770)))

(assert (=> bs!832498 (= lambda!167766 lambda!167754)))

(declare-fun bs!832499 () Bool)

(assert (= bs!832499 (and d!1377818 d!1377816)))

(assert (=> bs!832499 (= lambda!167766 lambda!167763)))

(declare-fun bs!832500 () Bool)

(assert (= bs!832500 (and d!1377818 d!1377690)))

(assert (=> bs!832500 (= lambda!167766 lambda!167724)))

(assert (=> d!1377818 (contains!13173 (extractMap!1172 (toList!4239 lt!1676638)) key!3287)))

(declare-fun lt!1676820 () Unit!91136)

(declare-fun choose!29013 (ListLongMap!2871 K!11930 Hashable!5511) Unit!91136)

(assert (=> d!1377818 (= lt!1676820 (choose!29013 lt!1676638 key!3287 hashF!1107))))

(assert (=> d!1377818 (forall!10151 (toList!4239 lt!1676638) lambda!167766)))

(assert (=> d!1377818 (= (lemmaListContainsThenExtractedMapContains!86 lt!1676638 key!3287 hashF!1107) lt!1676820)))

(declare-fun bs!832501 () Bool)

(assert (= bs!832501 d!1377818))

(assert (=> bs!832501 m!5220045))

(assert (=> bs!832501 m!5220045))

(declare-fun m!5220509 () Bool)

(assert (=> bs!832501 m!5220509))

(declare-fun m!5220511 () Bool)

(assert (=> bs!832501 m!5220511))

(declare-fun m!5220513 () Bool)

(assert (=> bs!832501 m!5220513))

(assert (=> b!4493765 d!1377818))

(declare-fun bs!832502 () Bool)

(declare-fun d!1377820 () Bool)

(assert (= bs!832502 (and d!1377820 d!1377812)))

(declare-fun lambda!167767 () Int)

(assert (=> bs!832502 (= lambda!167767 lambda!167762)))

(declare-fun bs!832503 () Bool)

(assert (= bs!832503 (and d!1377820 start!443112)))

(assert (=> bs!832503 (= lambda!167767 lambda!167715)))

(declare-fun bs!832504 () Bool)

(assert (= bs!832504 (and d!1377820 d!1377686)))

(assert (=> bs!832504 (not (= lambda!167767 lambda!167718))))

(declare-fun bs!832505 () Bool)

(assert (= bs!832505 (and d!1377820 d!1377806)))

(assert (=> bs!832505 (= lambda!167767 lambda!167759)))

(declare-fun bs!832506 () Bool)

(assert (= bs!832506 (and d!1377820 d!1377770)))

(assert (=> bs!832506 (= lambda!167767 lambda!167754)))

(declare-fun bs!832507 () Bool)

(assert (= bs!832507 (and d!1377820 d!1377816)))

(assert (=> bs!832507 (= lambda!167767 lambda!167763)))

(declare-fun bs!832508 () Bool)

(assert (= bs!832508 (and d!1377820 d!1377690)))

(assert (=> bs!832508 (= lambda!167767 lambda!167724)))

(declare-fun bs!832509 () Bool)

(assert (= bs!832509 (and d!1377820 d!1377818)))

(assert (=> bs!832509 (= lambda!167767 lambda!167766)))

(declare-fun bs!832510 () Bool)

(assert (= bs!832510 (and d!1377820 d!1377736)))

(assert (=> bs!832510 (= lambda!167767 lambda!167742)))

(declare-fun lt!1676821 () ListMap!3501)

(assert (=> d!1377820 (invariantList!975 (toList!4240 lt!1676821))))

(declare-fun e!2799272 () ListMap!3501)

(assert (=> d!1377820 (= lt!1676821 e!2799272)))

(declare-fun c!765637 () Bool)

(assert (=> d!1377820 (= c!765637 ((_ is Cons!50517) (toList!4239 lt!1676638)))))

(assert (=> d!1377820 (forall!10151 (toList!4239 lt!1676638) lambda!167767)))

(assert (=> d!1377820 (= (extractMap!1172 (toList!4239 lt!1676638)) lt!1676821)))

(declare-fun b!4494012 () Bool)

(assert (=> b!4494012 (= e!2799272 (addToMapMapFromBucket!643 (_2!28744 (h!56328 (toList!4239 lt!1676638))) (extractMap!1172 (t!357599 (toList!4239 lt!1676638)))))))

(declare-fun b!4494013 () Bool)

(assert (=> b!4494013 (= e!2799272 (ListMap!3502 Nil!50516))))

(assert (= (and d!1377820 c!765637) b!4494012))

(assert (= (and d!1377820 (not c!765637)) b!4494013))

(declare-fun m!5220515 () Bool)

(assert (=> d!1377820 m!5220515))

(declare-fun m!5220517 () Bool)

(assert (=> d!1377820 m!5220517))

(declare-fun m!5220519 () Bool)

(assert (=> b!4494012 m!5220519))

(assert (=> b!4494012 m!5220519))

(declare-fun m!5220521 () Bool)

(assert (=> b!4494012 m!5220521))

(assert (=> b!4493765 d!1377820))

(declare-fun b!4494014 () Bool)

(declare-fun e!2799276 () Unit!91136)

(declare-fun e!2799274 () Unit!91136)

(assert (=> b!4494014 (= e!2799276 e!2799274)))

(declare-fun c!765640 () Bool)

(declare-fun call!312708 () Bool)

(assert (=> b!4494014 (= c!765640 call!312708)))

(declare-fun b!4494015 () Bool)

(declare-fun e!2799277 () Bool)

(assert (=> b!4494015 (= e!2799277 (not (contains!13175 (keys!17506 lt!1676633) key!3287)))))

(declare-fun b!4494016 () Bool)

(declare-fun e!2799278 () Bool)

(assert (=> b!4494016 (= e!2799278 (contains!13175 (keys!17506 lt!1676633) key!3287))))

(declare-fun b!4494017 () Bool)

(declare-fun lt!1676828 () Unit!91136)

(assert (=> b!4494017 (= e!2799276 lt!1676828)))

(declare-fun lt!1676825 () Unit!91136)

(assert (=> b!4494017 (= lt!1676825 (lemmaContainsKeyImpliesGetValueByKeyDefined!913 (toList!4240 lt!1676633) key!3287))))

(assert (=> b!4494017 (isDefined!8316 (getValueByKey!1009 (toList!4240 lt!1676633) key!3287))))

(declare-fun lt!1676824 () Unit!91136)

(assert (=> b!4494017 (= lt!1676824 lt!1676825)))

(assert (=> b!4494017 (= lt!1676828 (lemmaInListThenGetKeysListContains!419 (toList!4240 lt!1676633) key!3287))))

(assert (=> b!4494017 call!312708))

(declare-fun bm!312703 () Bool)

(declare-fun e!2799275 () List!50643)

(assert (=> bm!312703 (= call!312708 (contains!13175 e!2799275 key!3287))))

(declare-fun c!765639 () Bool)

(declare-fun c!765638 () Bool)

(assert (=> bm!312703 (= c!765639 c!765638)))

(declare-fun b!4494019 () Bool)

(assert (=> b!4494019 (= e!2799275 (getKeysList!423 (toList!4240 lt!1676633)))))

(declare-fun b!4494020 () Bool)

(assert (=> b!4494020 false))

(declare-fun lt!1676822 () Unit!91136)

(declare-fun lt!1676826 () Unit!91136)

(assert (=> b!4494020 (= lt!1676822 lt!1676826)))

(assert (=> b!4494020 (containsKey!1656 (toList!4240 lt!1676633) key!3287)))

(assert (=> b!4494020 (= lt!1676826 (lemmaInGetKeysListThenContainsKey!422 (toList!4240 lt!1676633) key!3287))))

(declare-fun Unit!91151 () Unit!91136)

(assert (=> b!4494020 (= e!2799274 Unit!91151)))

(declare-fun b!4494021 () Bool)

(declare-fun Unit!91152 () Unit!91136)

(assert (=> b!4494021 (= e!2799274 Unit!91152)))

(declare-fun b!4494022 () Bool)

(declare-fun e!2799273 () Bool)

(assert (=> b!4494022 (= e!2799273 e!2799278)))

(declare-fun res!1867818 () Bool)

(assert (=> b!4494022 (=> (not res!1867818) (not e!2799278))))

(assert (=> b!4494022 (= res!1867818 (isDefined!8316 (getValueByKey!1009 (toList!4240 lt!1676633) key!3287)))))

(declare-fun d!1377822 () Bool)

(assert (=> d!1377822 e!2799273))

(declare-fun res!1867819 () Bool)

(assert (=> d!1377822 (=> res!1867819 e!2799273)))

(assert (=> d!1377822 (= res!1867819 e!2799277)))

(declare-fun res!1867820 () Bool)

(assert (=> d!1377822 (=> (not res!1867820) (not e!2799277))))

(declare-fun lt!1676829 () Bool)

(assert (=> d!1377822 (= res!1867820 (not lt!1676829))))

(declare-fun lt!1676827 () Bool)

(assert (=> d!1377822 (= lt!1676829 lt!1676827)))

(declare-fun lt!1676823 () Unit!91136)

(assert (=> d!1377822 (= lt!1676823 e!2799276)))

(assert (=> d!1377822 (= c!765638 lt!1676827)))

(assert (=> d!1377822 (= lt!1676827 (containsKey!1656 (toList!4240 lt!1676633) key!3287))))

(assert (=> d!1377822 (= (contains!13173 lt!1676633 key!3287) lt!1676829)))

(declare-fun b!4494018 () Bool)

(assert (=> b!4494018 (= e!2799275 (keys!17506 lt!1676633))))

(assert (= (and d!1377822 c!765638) b!4494017))

(assert (= (and d!1377822 (not c!765638)) b!4494014))

(assert (= (and b!4494014 c!765640) b!4494020))

(assert (= (and b!4494014 (not c!765640)) b!4494021))

(assert (= (or b!4494017 b!4494014) bm!312703))

(assert (= (and bm!312703 c!765639) b!4494019))

(assert (= (and bm!312703 (not c!765639)) b!4494018))

(assert (= (and d!1377822 res!1867820) b!4494015))

(assert (= (and d!1377822 (not res!1867819)) b!4494022))

(assert (= (and b!4494022 res!1867818) b!4494016))

(declare-fun m!5220523 () Bool)

(assert (=> b!4494019 m!5220523))

(declare-fun m!5220525 () Bool)

(assert (=> bm!312703 m!5220525))

(assert (=> b!4494018 m!5220441))

(declare-fun m!5220527 () Bool)

(assert (=> b!4494017 m!5220527))

(declare-fun m!5220529 () Bool)

(assert (=> b!4494017 m!5220529))

(assert (=> b!4494017 m!5220529))

(declare-fun m!5220531 () Bool)

(assert (=> b!4494017 m!5220531))

(declare-fun m!5220533 () Bool)

(assert (=> b!4494017 m!5220533))

(declare-fun m!5220535 () Bool)

(assert (=> b!4494020 m!5220535))

(declare-fun m!5220537 () Bool)

(assert (=> b!4494020 m!5220537))

(assert (=> b!4494016 m!5220441))

(assert (=> b!4494016 m!5220441))

(declare-fun m!5220539 () Bool)

(assert (=> b!4494016 m!5220539))

(assert (=> b!4494015 m!5220441))

(assert (=> b!4494015 m!5220441))

(assert (=> b!4494015 m!5220539))

(assert (=> b!4494022 m!5220529))

(assert (=> b!4494022 m!5220529))

(assert (=> b!4494022 m!5220531))

(assert (=> d!1377822 m!5220535))

(assert (=> b!4493765 d!1377822))

(declare-fun b!4494023 () Bool)

(declare-fun e!2799282 () Unit!91136)

(declare-fun e!2799280 () Unit!91136)

(assert (=> b!4494023 (= e!2799282 e!2799280)))

(declare-fun c!765643 () Bool)

(declare-fun call!312709 () Bool)

(assert (=> b!4494023 (= c!765643 call!312709)))

(declare-fun b!4494024 () Bool)

(declare-fun e!2799283 () Bool)

(assert (=> b!4494024 (= e!2799283 (not (contains!13175 (keys!17506 lt!1676630) key!3287)))))

(declare-fun b!4494025 () Bool)

(declare-fun e!2799284 () Bool)

(assert (=> b!4494025 (= e!2799284 (contains!13175 (keys!17506 lt!1676630) key!3287))))

(declare-fun b!4494026 () Bool)

(declare-fun lt!1676836 () Unit!91136)

(assert (=> b!4494026 (= e!2799282 lt!1676836)))

(declare-fun lt!1676833 () Unit!91136)

(assert (=> b!4494026 (= lt!1676833 (lemmaContainsKeyImpliesGetValueByKeyDefined!913 (toList!4240 lt!1676630) key!3287))))

(assert (=> b!4494026 (isDefined!8316 (getValueByKey!1009 (toList!4240 lt!1676630) key!3287))))

(declare-fun lt!1676832 () Unit!91136)

(assert (=> b!4494026 (= lt!1676832 lt!1676833)))

(assert (=> b!4494026 (= lt!1676836 (lemmaInListThenGetKeysListContains!419 (toList!4240 lt!1676630) key!3287))))

(assert (=> b!4494026 call!312709))

(declare-fun bm!312704 () Bool)

(declare-fun e!2799281 () List!50643)

(assert (=> bm!312704 (= call!312709 (contains!13175 e!2799281 key!3287))))

(declare-fun c!765642 () Bool)

(declare-fun c!765641 () Bool)

(assert (=> bm!312704 (= c!765642 c!765641)))

(declare-fun b!4494028 () Bool)

(assert (=> b!4494028 (= e!2799281 (getKeysList!423 (toList!4240 lt!1676630)))))

(declare-fun b!4494029 () Bool)

(assert (=> b!4494029 false))

(declare-fun lt!1676830 () Unit!91136)

(declare-fun lt!1676834 () Unit!91136)

(assert (=> b!4494029 (= lt!1676830 lt!1676834)))

(assert (=> b!4494029 (containsKey!1656 (toList!4240 lt!1676630) key!3287)))

(assert (=> b!4494029 (= lt!1676834 (lemmaInGetKeysListThenContainsKey!422 (toList!4240 lt!1676630) key!3287))))

(declare-fun Unit!91153 () Unit!91136)

(assert (=> b!4494029 (= e!2799280 Unit!91153)))

(declare-fun b!4494030 () Bool)

(declare-fun Unit!91154 () Unit!91136)

(assert (=> b!4494030 (= e!2799280 Unit!91154)))

(declare-fun b!4494031 () Bool)

(declare-fun e!2799279 () Bool)

(assert (=> b!4494031 (= e!2799279 e!2799284)))

(declare-fun res!1867821 () Bool)

(assert (=> b!4494031 (=> (not res!1867821) (not e!2799284))))

(assert (=> b!4494031 (= res!1867821 (isDefined!8316 (getValueByKey!1009 (toList!4240 lt!1676630) key!3287)))))

(declare-fun d!1377824 () Bool)

(assert (=> d!1377824 e!2799279))

(declare-fun res!1867822 () Bool)

(assert (=> d!1377824 (=> res!1867822 e!2799279)))

(assert (=> d!1377824 (= res!1867822 e!2799283)))

(declare-fun res!1867823 () Bool)

(assert (=> d!1377824 (=> (not res!1867823) (not e!2799283))))

(declare-fun lt!1676837 () Bool)

(assert (=> d!1377824 (= res!1867823 (not lt!1676837))))

(declare-fun lt!1676835 () Bool)

(assert (=> d!1377824 (= lt!1676837 lt!1676835)))

(declare-fun lt!1676831 () Unit!91136)

(assert (=> d!1377824 (= lt!1676831 e!2799282)))

(assert (=> d!1377824 (= c!765641 lt!1676835)))

(assert (=> d!1377824 (= lt!1676835 (containsKey!1656 (toList!4240 lt!1676630) key!3287))))

(assert (=> d!1377824 (= (contains!13173 lt!1676630 key!3287) lt!1676837)))

(declare-fun b!4494027 () Bool)

(assert (=> b!4494027 (= e!2799281 (keys!17506 lt!1676630))))

(assert (= (and d!1377824 c!765641) b!4494026))

(assert (= (and d!1377824 (not c!765641)) b!4494023))

(assert (= (and b!4494023 c!765643) b!4494029))

(assert (= (and b!4494023 (not c!765643)) b!4494030))

(assert (= (or b!4494026 b!4494023) bm!312704))

(assert (= (and bm!312704 c!765642) b!4494028))

(assert (= (and bm!312704 (not c!765642)) b!4494027))

(assert (= (and d!1377824 res!1867823) b!4494024))

(assert (= (and d!1377824 (not res!1867822)) b!4494031))

(assert (= (and b!4494031 res!1867821) b!4494025))

(declare-fun m!5220541 () Bool)

(assert (=> b!4494028 m!5220541))

(declare-fun m!5220543 () Bool)

(assert (=> bm!312704 m!5220543))

(declare-fun m!5220545 () Bool)

(assert (=> b!4494027 m!5220545))

(declare-fun m!5220547 () Bool)

(assert (=> b!4494026 m!5220547))

(declare-fun m!5220549 () Bool)

(assert (=> b!4494026 m!5220549))

(assert (=> b!4494026 m!5220549))

(declare-fun m!5220551 () Bool)

(assert (=> b!4494026 m!5220551))

(declare-fun m!5220553 () Bool)

(assert (=> b!4494026 m!5220553))

(declare-fun m!5220555 () Bool)

(assert (=> b!4494029 m!5220555))

(declare-fun m!5220557 () Bool)

(assert (=> b!4494029 m!5220557))

(assert (=> b!4494025 m!5220545))

(assert (=> b!4494025 m!5220545))

(declare-fun m!5220559 () Bool)

(assert (=> b!4494025 m!5220559))

(assert (=> b!4494024 m!5220545))

(assert (=> b!4494024 m!5220545))

(assert (=> b!4494024 m!5220559))

(assert (=> b!4494031 m!5220549))

(assert (=> b!4494031 m!5220549))

(assert (=> b!4494031 m!5220551))

(assert (=> d!1377824 m!5220555))

(assert (=> b!4493754 d!1377824))

(declare-fun bs!832511 () Bool)

(declare-fun d!1377826 () Bool)

(assert (= bs!832511 (and d!1377826 d!1377812)))

(declare-fun lambda!167768 () Int)

(assert (=> bs!832511 (= lambda!167768 lambda!167762)))

(declare-fun bs!832512 () Bool)

(assert (= bs!832512 (and d!1377826 start!443112)))

(assert (=> bs!832512 (= lambda!167768 lambda!167715)))

(declare-fun bs!832513 () Bool)

(assert (= bs!832513 (and d!1377826 d!1377686)))

(assert (=> bs!832513 (not (= lambda!167768 lambda!167718))))

(declare-fun bs!832514 () Bool)

(assert (= bs!832514 (and d!1377826 d!1377820)))

(assert (=> bs!832514 (= lambda!167768 lambda!167767)))

(declare-fun bs!832515 () Bool)

(assert (= bs!832515 (and d!1377826 d!1377806)))

(assert (=> bs!832515 (= lambda!167768 lambda!167759)))

(declare-fun bs!832516 () Bool)

(assert (= bs!832516 (and d!1377826 d!1377770)))

(assert (=> bs!832516 (= lambda!167768 lambda!167754)))

(declare-fun bs!832517 () Bool)

(assert (= bs!832517 (and d!1377826 d!1377816)))

(assert (=> bs!832517 (= lambda!167768 lambda!167763)))

(declare-fun bs!832518 () Bool)

(assert (= bs!832518 (and d!1377826 d!1377690)))

(assert (=> bs!832518 (= lambda!167768 lambda!167724)))

(declare-fun bs!832519 () Bool)

(assert (= bs!832519 (and d!1377826 d!1377818)))

(assert (=> bs!832519 (= lambda!167768 lambda!167766)))

(declare-fun bs!832520 () Bool)

(assert (= bs!832520 (and d!1377826 d!1377736)))

(assert (=> bs!832520 (= lambda!167768 lambda!167742)))

(declare-fun lt!1676838 () ListMap!3501)

(assert (=> d!1377826 (invariantList!975 (toList!4240 lt!1676838))))

(declare-fun e!2799285 () ListMap!3501)

(assert (=> d!1377826 (= lt!1676838 e!2799285)))

(declare-fun c!765644 () Bool)

(assert (=> d!1377826 (= c!765644 ((_ is Cons!50517) (toList!4239 lm!1477)))))

(assert (=> d!1377826 (forall!10151 (toList!4239 lm!1477) lambda!167768)))

(assert (=> d!1377826 (= (extractMap!1172 (toList!4239 lm!1477)) lt!1676838)))

(declare-fun b!4494032 () Bool)

(assert (=> b!4494032 (= e!2799285 (addToMapMapFromBucket!643 (_2!28744 (h!56328 (toList!4239 lm!1477))) (extractMap!1172 (t!357599 (toList!4239 lm!1477)))))))

(declare-fun b!4494033 () Bool)

(assert (=> b!4494033 (= e!2799285 (ListMap!3502 Nil!50516))))

(assert (= (and d!1377826 c!765644) b!4494032))

(assert (= (and d!1377826 (not c!765644)) b!4494033))

(declare-fun m!5220561 () Bool)

(assert (=> d!1377826 m!5220561))

(declare-fun m!5220563 () Bool)

(assert (=> d!1377826 m!5220563))

(assert (=> b!4494032 m!5220039))

(assert (=> b!4494032 m!5220039))

(declare-fun m!5220565 () Bool)

(assert (=> b!4494032 m!5220565))

(assert (=> b!4493754 d!1377826))

(declare-fun d!1377828 () Bool)

(declare-fun res!1867828 () Bool)

(declare-fun e!2799290 () Bool)

(assert (=> d!1377828 (=> res!1867828 e!2799290)))

(assert (=> d!1377828 (= res!1867828 (not ((_ is Cons!50516) newBucket!178)))))

(assert (=> d!1377828 (= (noDuplicateKeys!1116 newBucket!178) e!2799290)))

(declare-fun b!4494038 () Bool)

(declare-fun e!2799291 () Bool)

(assert (=> b!4494038 (= e!2799290 e!2799291)))

(declare-fun res!1867829 () Bool)

(assert (=> b!4494038 (=> (not res!1867829) (not e!2799291))))

(assert (=> b!4494038 (= res!1867829 (not (containsKey!1652 (t!357598 newBucket!178) (_1!28743 (h!56327 newBucket!178)))))))

(declare-fun b!4494039 () Bool)

(assert (=> b!4494039 (= e!2799291 (noDuplicateKeys!1116 (t!357598 newBucket!178)))))

(assert (= (and d!1377828 (not res!1867828)) b!4494038))

(assert (= (and b!4494038 res!1867829) b!4494039))

(declare-fun m!5220567 () Bool)

(assert (=> b!4494038 m!5220567))

(declare-fun m!5220569 () Bool)

(assert (=> b!4494039 m!5220569))

(assert (=> b!4493751 d!1377828))

(declare-fun d!1377830 () Bool)

(declare-fun lt!1676841 () Bool)

(declare-fun content!8233 (List!50641) (InoxSet tuple2!50900))

(assert (=> d!1377830 (= lt!1676841 (select (content!8233 (t!357599 (toList!4239 lm!1477))) lt!1676627))))

(declare-fun e!2799297 () Bool)

(assert (=> d!1377830 (= lt!1676841 e!2799297)))

(declare-fun res!1867835 () Bool)

(assert (=> d!1377830 (=> (not res!1867835) (not e!2799297))))

(assert (=> d!1377830 (= res!1867835 ((_ is Cons!50517) (t!357599 (toList!4239 lm!1477))))))

(assert (=> d!1377830 (= (contains!13171 (t!357599 (toList!4239 lm!1477)) lt!1676627) lt!1676841)))

(declare-fun b!4494044 () Bool)

(declare-fun e!2799296 () Bool)

(assert (=> b!4494044 (= e!2799297 e!2799296)))

(declare-fun res!1867834 () Bool)

(assert (=> b!4494044 (=> res!1867834 e!2799296)))

(assert (=> b!4494044 (= res!1867834 (= (h!56328 (t!357599 (toList!4239 lm!1477))) lt!1676627))))

(declare-fun b!4494045 () Bool)

(assert (=> b!4494045 (= e!2799296 (contains!13171 (t!357599 (t!357599 (toList!4239 lm!1477))) lt!1676627))))

(assert (= (and d!1377830 res!1867835) b!4494044))

(assert (= (and b!4494044 (not res!1867834)) b!4494045))

(declare-fun m!5220571 () Bool)

(assert (=> d!1377830 m!5220571))

(declare-fun m!5220573 () Bool)

(assert (=> d!1377830 m!5220573))

(declare-fun m!5220575 () Bool)

(assert (=> b!4494045 m!5220575))

(assert (=> b!4493761 d!1377830))

(declare-fun bs!832521 () Bool)

(declare-fun d!1377832 () Bool)

(assert (= bs!832521 (and d!1377832 d!1377812)))

(declare-fun lambda!167771 () Int)

(assert (=> bs!832521 (= lambda!167771 lambda!167762)))

(declare-fun bs!832522 () Bool)

(assert (= bs!832522 (and d!1377832 start!443112)))

(assert (=> bs!832522 (= lambda!167771 lambda!167715)))

(declare-fun bs!832523 () Bool)

(assert (= bs!832523 (and d!1377832 d!1377686)))

(assert (=> bs!832523 (not (= lambda!167771 lambda!167718))))

(declare-fun bs!832524 () Bool)

(assert (= bs!832524 (and d!1377832 d!1377820)))

(assert (=> bs!832524 (= lambda!167771 lambda!167767)))

(declare-fun bs!832525 () Bool)

(assert (= bs!832525 (and d!1377832 d!1377826)))

(assert (=> bs!832525 (= lambda!167771 lambda!167768)))

(declare-fun bs!832526 () Bool)

(assert (= bs!832526 (and d!1377832 d!1377806)))

(assert (=> bs!832526 (= lambda!167771 lambda!167759)))

(declare-fun bs!832527 () Bool)

(assert (= bs!832527 (and d!1377832 d!1377770)))

(assert (=> bs!832527 (= lambda!167771 lambda!167754)))

(declare-fun bs!832528 () Bool)

(assert (= bs!832528 (and d!1377832 d!1377816)))

(assert (=> bs!832528 (= lambda!167771 lambda!167763)))

(declare-fun bs!832529 () Bool)

(assert (= bs!832529 (and d!1377832 d!1377690)))

(assert (=> bs!832529 (= lambda!167771 lambda!167724)))

(declare-fun bs!832530 () Bool)

(assert (= bs!832530 (and d!1377832 d!1377818)))

(assert (=> bs!832530 (= lambda!167771 lambda!167766)))

(declare-fun bs!832531 () Bool)

(assert (= bs!832531 (and d!1377832 d!1377736)))

(assert (=> bs!832531 (= lambda!167771 lambda!167742)))

(assert (=> d!1377832 (contains!13172 lm!1477 (hash!2653 hashF!1107 key!3287))))

(declare-fun lt!1676844 () Unit!91136)

(declare-fun choose!29014 (ListLongMap!2871 K!11930 Hashable!5511) Unit!91136)

(assert (=> d!1377832 (= lt!1676844 (choose!29014 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1377832 (forall!10151 (toList!4239 lm!1477) lambda!167771)))

(assert (=> d!1377832 (= (lemmaInGenMapThenLongMapContainsHash!190 lm!1477 key!3287 hashF!1107) lt!1676844)))

(declare-fun bs!832532 () Bool)

(assert (= bs!832532 d!1377832))

(assert (=> bs!832532 m!5220061))

(assert (=> bs!832532 m!5220061))

(declare-fun m!5220577 () Bool)

(assert (=> bs!832532 m!5220577))

(declare-fun m!5220579 () Bool)

(assert (=> bs!832532 m!5220579))

(declare-fun m!5220581 () Bool)

(assert (=> bs!832532 m!5220581))

(assert (=> b!4493750 d!1377832))

(declare-fun d!1377834 () Bool)

(assert (=> d!1377834 (= (apply!11853 lm!1477 hash!344) (get!16498 (getValueByKey!1008 (toList!4239 lm!1477) hash!344)))))

(declare-fun bs!832533 () Bool)

(assert (= bs!832533 d!1377834))

(declare-fun m!5220583 () Bool)

(assert (=> bs!832533 m!5220583))

(assert (=> bs!832533 m!5220583))

(declare-fun m!5220585 () Bool)

(assert (=> bs!832533 m!5220585))

(assert (=> b!4493750 d!1377834))

(declare-fun d!1377836 () Bool)

(assert (=> d!1377836 (dynLambda!21091 lambda!167715 lt!1676627)))

(declare-fun lt!1676847 () Unit!91136)

(declare-fun choose!29015 (List!50641 Int tuple2!50900) Unit!91136)

(assert (=> d!1377836 (= lt!1676847 (choose!29015 (toList!4239 lm!1477) lambda!167715 lt!1676627))))

(declare-fun e!2799300 () Bool)

(assert (=> d!1377836 e!2799300))

(declare-fun res!1867838 () Bool)

(assert (=> d!1377836 (=> (not res!1867838) (not e!2799300))))

(assert (=> d!1377836 (= res!1867838 (forall!10151 (toList!4239 lm!1477) lambda!167715))))

(assert (=> d!1377836 (= (forallContained!2407 (toList!4239 lm!1477) lambda!167715 lt!1676627) lt!1676847)))

(declare-fun b!4494048 () Bool)

(assert (=> b!4494048 (= e!2799300 (contains!13171 (toList!4239 lm!1477) lt!1676627))))

(assert (= (and d!1377836 res!1867838) b!4494048))

(declare-fun b_lambda!151783 () Bool)

(assert (=> (not b_lambda!151783) (not d!1377836)))

(declare-fun m!5220587 () Bool)

(assert (=> d!1377836 m!5220587))

(declare-fun m!5220589 () Bool)

(assert (=> d!1377836 m!5220589))

(assert (=> d!1377836 m!5220071))

(assert (=> b!4494048 m!5220059))

(assert (=> b!4493750 d!1377836))

(declare-fun d!1377838 () Bool)

(declare-fun lt!1676848 () Bool)

(assert (=> d!1377838 (= lt!1676848 (select (content!8233 (toList!4239 lm!1477)) lt!1676627))))

(declare-fun e!2799302 () Bool)

(assert (=> d!1377838 (= lt!1676848 e!2799302)))

(declare-fun res!1867840 () Bool)

(assert (=> d!1377838 (=> (not res!1867840) (not e!2799302))))

(assert (=> d!1377838 (= res!1867840 ((_ is Cons!50517) (toList!4239 lm!1477)))))

(assert (=> d!1377838 (= (contains!13171 (toList!4239 lm!1477) lt!1676627) lt!1676848)))

(declare-fun b!4494049 () Bool)

(declare-fun e!2799301 () Bool)

(assert (=> b!4494049 (= e!2799302 e!2799301)))

(declare-fun res!1867839 () Bool)

(assert (=> b!4494049 (=> res!1867839 e!2799301)))

(assert (=> b!4494049 (= res!1867839 (= (h!56328 (toList!4239 lm!1477)) lt!1676627))))

(declare-fun b!4494050 () Bool)

(assert (=> b!4494050 (= e!2799301 (contains!13171 (t!357599 (toList!4239 lm!1477)) lt!1676627))))

(assert (= (and d!1377838 res!1867840) b!4494049))

(assert (= (and b!4494049 (not res!1867839)) b!4494050))

(declare-fun m!5220591 () Bool)

(assert (=> d!1377838 m!5220591))

(declare-fun m!5220593 () Bool)

(assert (=> d!1377838 m!5220593))

(assert (=> b!4494050 m!5220105))

(assert (=> b!4493750 d!1377838))

(declare-fun d!1377840 () Bool)

(declare-fun e!2799303 () Bool)

(assert (=> d!1377840 e!2799303))

(declare-fun res!1867841 () Bool)

(assert (=> d!1377840 (=> res!1867841 e!2799303)))

(declare-fun lt!1676849 () Bool)

(assert (=> d!1377840 (= res!1867841 (not lt!1676849))))

(declare-fun lt!1676850 () Bool)

(assert (=> d!1377840 (= lt!1676849 lt!1676850)))

(declare-fun lt!1676852 () Unit!91136)

(declare-fun e!2799304 () Unit!91136)

(assert (=> d!1377840 (= lt!1676852 e!2799304)))

(declare-fun c!765645 () Bool)

(assert (=> d!1377840 (= c!765645 lt!1676850)))

(assert (=> d!1377840 (= lt!1676850 (containsKey!1655 (toList!4239 lm!1477) lt!1676629))))

(assert (=> d!1377840 (= (contains!13172 lm!1477 lt!1676629) lt!1676849)))

(declare-fun b!4494051 () Bool)

(declare-fun lt!1676851 () Unit!91136)

(assert (=> b!4494051 (= e!2799304 lt!1676851)))

(assert (=> b!4494051 (= lt!1676851 (lemmaContainsKeyImpliesGetValueByKeyDefined!912 (toList!4239 lm!1477) lt!1676629))))

(assert (=> b!4494051 (isDefined!8315 (getValueByKey!1008 (toList!4239 lm!1477) lt!1676629))))

(declare-fun b!4494052 () Bool)

(declare-fun Unit!91155 () Unit!91136)

(assert (=> b!4494052 (= e!2799304 Unit!91155)))

(declare-fun b!4494053 () Bool)

(assert (=> b!4494053 (= e!2799303 (isDefined!8315 (getValueByKey!1008 (toList!4239 lm!1477) lt!1676629)))))

(assert (= (and d!1377840 c!765645) b!4494051))

(assert (= (and d!1377840 (not c!765645)) b!4494052))

(assert (= (and d!1377840 (not res!1867841)) b!4494053))

(declare-fun m!5220595 () Bool)

(assert (=> d!1377840 m!5220595))

(declare-fun m!5220597 () Bool)

(assert (=> b!4494051 m!5220597))

(declare-fun m!5220599 () Bool)

(assert (=> b!4494051 m!5220599))

(assert (=> b!4494051 m!5220599))

(declare-fun m!5220601 () Bool)

(assert (=> b!4494051 m!5220601))

(assert (=> b!4494053 m!5220599))

(assert (=> b!4494053 m!5220599))

(assert (=> b!4494053 m!5220601))

(assert (=> b!4493750 d!1377840))

(declare-fun b!4494062 () Bool)

(declare-fun e!2799309 () List!50640)

(assert (=> b!4494062 (= e!2799309 (t!357598 lt!1676624))))

(declare-fun b!4494063 () Bool)

(declare-fun e!2799310 () List!50640)

(assert (=> b!4494063 (= e!2799309 e!2799310)))

(declare-fun c!765651 () Bool)

(assert (=> b!4494063 (= c!765651 ((_ is Cons!50516) lt!1676624))))

(declare-fun d!1377842 () Bool)

(declare-fun lt!1676855 () List!50640)

(assert (=> d!1377842 (not (containsKey!1652 lt!1676855 key!3287))))

(assert (=> d!1377842 (= lt!1676855 e!2799309)))

(declare-fun c!765650 () Bool)

(assert (=> d!1377842 (= c!765650 (and ((_ is Cons!50516) lt!1676624) (= (_1!28743 (h!56327 lt!1676624)) key!3287)))))

(assert (=> d!1377842 (noDuplicateKeys!1116 lt!1676624)))

(assert (=> d!1377842 (= (removePairForKey!743 lt!1676624 key!3287) lt!1676855)))

(declare-fun b!4494065 () Bool)

(assert (=> b!4494065 (= e!2799310 Nil!50516)))

(declare-fun b!4494064 () Bool)

(assert (=> b!4494064 (= e!2799310 (Cons!50516 (h!56327 lt!1676624) (removePairForKey!743 (t!357598 lt!1676624) key!3287)))))

(assert (= (and d!1377842 c!765650) b!4494062))

(assert (= (and d!1377842 (not c!765650)) b!4494063))

(assert (= (and b!4494063 c!765651) b!4494064))

(assert (= (and b!4494063 (not c!765651)) b!4494065))

(declare-fun m!5220603 () Bool)

(assert (=> d!1377842 m!5220603))

(declare-fun m!5220605 () Bool)

(assert (=> d!1377842 m!5220605))

(declare-fun m!5220607 () Bool)

(assert (=> b!4494064 m!5220607))

(assert (=> b!4493750 d!1377842))

(declare-fun d!1377844 () Bool)

(assert (=> d!1377844 (contains!13171 (toList!4239 lm!1477) (tuple2!50901 hash!344 lt!1676624))))

(declare-fun lt!1676858 () Unit!91136)

(declare-fun choose!29016 (List!50641 (_ BitVec 64) List!50640) Unit!91136)

(assert (=> d!1377844 (= lt!1676858 (choose!29016 (toList!4239 lm!1477) hash!344 lt!1676624))))

(declare-fun e!2799313 () Bool)

(assert (=> d!1377844 e!2799313))

(declare-fun res!1867844 () Bool)

(assert (=> d!1377844 (=> (not res!1867844) (not e!2799313))))

(assert (=> d!1377844 (= res!1867844 (isStrictlySorted!389 (toList!4239 lm!1477)))))

(assert (=> d!1377844 (= (lemmaGetValueByKeyImpliesContainsTuple!628 (toList!4239 lm!1477) hash!344 lt!1676624) lt!1676858)))

(declare-fun b!4494068 () Bool)

(assert (=> b!4494068 (= e!2799313 (= (getValueByKey!1008 (toList!4239 lm!1477) hash!344) (Some!11027 lt!1676624)))))

(assert (= (and d!1377844 res!1867844) b!4494068))

(declare-fun m!5220609 () Bool)

(assert (=> d!1377844 m!5220609))

(declare-fun m!5220611 () Bool)

(assert (=> d!1377844 m!5220611))

(assert (=> d!1377844 m!5220185))

(assert (=> b!4494068 m!5220583))

(assert (=> b!4493750 d!1377844))

(declare-fun d!1377846 () Bool)

(declare-fun res!1867845 () Bool)

(declare-fun e!2799314 () Bool)

(assert (=> d!1377846 (=> res!1867845 e!2799314)))

(assert (=> d!1377846 (= res!1867845 ((_ is Nil!50517) (toList!4239 lt!1676634)))))

(assert (=> d!1377846 (= (forall!10151 (toList!4239 lt!1676634) lambda!167715) e!2799314)))

(declare-fun b!4494069 () Bool)

(declare-fun e!2799315 () Bool)

(assert (=> b!4494069 (= e!2799314 e!2799315)))

(declare-fun res!1867846 () Bool)

(assert (=> b!4494069 (=> (not res!1867846) (not e!2799315))))

(assert (=> b!4494069 (= res!1867846 (dynLambda!21091 lambda!167715 (h!56328 (toList!4239 lt!1676634))))))

(declare-fun b!4494070 () Bool)

(assert (=> b!4494070 (= e!2799315 (forall!10151 (t!357599 (toList!4239 lt!1676634)) lambda!167715))))

(assert (= (and d!1377846 (not res!1867845)) b!4494069))

(assert (= (and b!4494069 res!1867846) b!4494070))

(declare-fun b_lambda!151785 () Bool)

(assert (=> (not b_lambda!151785) (not b!4494069)))

(declare-fun m!5220613 () Bool)

(assert (=> b!4494069 m!5220613))

(declare-fun m!5220615 () Bool)

(assert (=> b!4494070 m!5220615))

(assert (=> b!4493762 d!1377846))

(declare-fun b!4494075 () Bool)

(declare-fun e!2799318 () Bool)

(declare-fun tp!1337339 () Bool)

(declare-fun tp!1337340 () Bool)

(assert (=> b!4494075 (= e!2799318 (and tp!1337339 tp!1337340))))

(assert (=> b!4493763 (= tp!1337324 e!2799318)))

(assert (= (and b!4493763 ((_ is Cons!50517) (toList!4239 lm!1477))) b!4494075))

(declare-fun e!2799321 () Bool)

(declare-fun b!4494080 () Bool)

(declare-fun tp!1337343 () Bool)

(assert (=> b!4494080 (= e!2799321 (and tp_is_empty!27741 tp_is_empty!27743 tp!1337343))))

(assert (=> b!4493752 (= tp!1337325 e!2799321)))

(assert (= (and b!4493752 ((_ is Cons!50516) (t!357598 newBucket!178))) b!4494080))

(declare-fun b_lambda!151787 () Bool)

(assert (= b_lambda!151785 (or start!443112 b_lambda!151787)))

(declare-fun bs!832534 () Bool)

(declare-fun d!1377848 () Bool)

(assert (= bs!832534 (and d!1377848 start!443112)))

(assert (=> bs!832534 (= (dynLambda!21091 lambda!167715 (h!56328 (toList!4239 lt!1676634))) (noDuplicateKeys!1116 (_2!28744 (h!56328 (toList!4239 lt!1676634)))))))

(declare-fun m!5220617 () Bool)

(assert (=> bs!832534 m!5220617))

(assert (=> b!4494069 d!1377848))

(declare-fun b_lambda!151789 () Bool)

(assert (= b_lambda!151783 (or start!443112 b_lambda!151789)))

(declare-fun bs!832535 () Bool)

(declare-fun d!1377850 () Bool)

(assert (= bs!832535 (and d!1377850 start!443112)))

(assert (=> bs!832535 (= (dynLambda!21091 lambda!167715 lt!1676627) (noDuplicateKeys!1116 (_2!28744 lt!1676627)))))

(declare-fun m!5220619 () Bool)

(assert (=> bs!832535 m!5220619))

(assert (=> d!1377836 d!1377850))

(declare-fun b_lambda!151791 () Bool)

(assert (= b_lambda!151771 (or start!443112 b_lambda!151791)))

(declare-fun bs!832536 () Bool)

(declare-fun d!1377852 () Bool)

(assert (= bs!832536 (and d!1377852 start!443112)))

(assert (=> bs!832536 (= (dynLambda!21091 lambda!167715 (h!56328 (toList!4239 lm!1477))) (noDuplicateKeys!1116 (_2!28744 (h!56328 (toList!4239 lm!1477)))))))

(declare-fun m!5220621 () Bool)

(assert (=> bs!832536 m!5220621))

(assert (=> b!4493824 d!1377852))

(check-sat (not b!4494019) (not d!1377834) (not d!1377734) (not d!1377784) (not b!4494080) (not b!4494068) (not b!4493919) (not bm!312702) (not b!4493980) (not b_lambda!151789) (not d!1377838) (not b!4493845) (not b!4494064) (not b!4494050) (not b!4493977) (not b!4493776) (not d!1377770) (not b!4493967) (not d!1377820) (not d!1377844) (not b!4493969) (not d!1377722) (not d!1377732) (not b!4493968) (not d!1377736) (not bs!832536) tp_is_empty!27743 (not b!4494005) (not b!4494027) (not b!4494009) (not b!4494026) (not b!4494006) (not d!1377756) (not d!1377812) (not d!1377690) (not b!4494002) (not b!4494029) (not b!4493979) (not d!1377822) (not bs!832535) (not b!4493920) (not d!1377730) (not b_lambda!151791) (not b!4494018) (not d!1377816) (not d!1377836) (not b!4494015) (not b!4493966) (not b!4494007) (not d!1377824) (not b!4494025) (not b!4494010) (not b!4494004) (not bm!312704) (not b!4494048) (not b!4494017) (not b!4494070) (not b!4493982) (not b!4493825) (not b!4494016) (not d!1377832) (not b!4493847) (not d!1377686) tp_is_empty!27741 (not d!1377804) (not b!4494045) (not b!4493908) (not b!4494003) (not b!4494075) (not b!4494022) (not b!4494053) (not d!1377768) (not d!1377826) (not d!1377726) (not b_lambda!151787) (not b!4494020) (not d!1377814) (not d!1377818) (not b!4494038) (not d!1377842) (not b!4494032) (not b!4494012) (not d!1377806) (not d!1377830) (not b!4494031) (not b!4494028) (not d!1377710) (not bs!832534) (not b!4494024) (not d!1377786) (not b!4494051) (not d!1377782) (not b!4494039) (not bm!312703) (not d!1377840))
(check-sat)
