; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!442402 () Bool)

(assert start!442402)

(declare-fun b!4488967 () Bool)

(declare-fun res!1865112 () Bool)

(declare-fun e!2795877 () Bool)

(assert (=> b!4488967 (=> (not res!1865112) (not e!2795877))))

(declare-datatypes ((Hashable!5500 0))(
  ( (HashableExt!5499 (__x!31203 Int)) )
))
(declare-fun hashF!1107 () Hashable!5500)

(declare-datatypes ((K!11903 0))(
  ( (K!11904 (val!17793 Int)) )
))
(declare-datatypes ((V!12149 0))(
  ( (V!12150 (val!17794 Int)) )
))
(declare-datatypes ((tuple2!50854 0))(
  ( (tuple2!50855 (_1!28721 K!11903) (_2!28721 V!12149)) )
))
(declare-datatypes ((List!50612 0))(
  ( (Nil!50488) (Cons!50488 (h!56293 tuple2!50854) (t!357566 List!50612)) )
))
(declare-fun newBucket!178 () List!50612)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun allKeysSameHash!959 (List!50612 (_ BitVec 64) Hashable!5500) Bool)

(assert (=> b!4488967 (= res!1865112 (allKeysSameHash!959 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4488968 () Bool)

(declare-datatypes ((Unit!90458 0))(
  ( (Unit!90459) )
))
(declare-fun e!2795876 () Unit!90458)

(declare-fun Unit!90460 () Unit!90458)

(assert (=> b!4488968 (= e!2795876 Unit!90460)))

(declare-datatypes ((tuple2!50856 0))(
  ( (tuple2!50857 (_1!28722 (_ BitVec 64)) (_2!28722 List!50612)) )
))
(declare-datatypes ((List!50613 0))(
  ( (Nil!50489) (Cons!50489 (h!56294 tuple2!50856) (t!357567 List!50613)) )
))
(declare-datatypes ((ListLongMap!2849 0))(
  ( (ListLongMap!2850 (toList!4217 List!50613)) )
))
(declare-fun lm!1477 () ListLongMap!2849)

(declare-fun key!3287 () K!11903)

(declare-fun lt!1673433 () Unit!90458)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!93 (ListLongMap!2849 K!11903 Hashable!5500) Unit!90458)

(assert (=> b!4488968 (= lt!1673433 (lemmaNotInItsHashBucketThenNotInMap!93 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4488968 false))

(declare-fun b!4488969 () Bool)

(declare-fun e!2795879 () Bool)

(assert (=> b!4488969 (= e!2795877 (not e!2795879))))

(declare-fun res!1865119 () Bool)

(assert (=> b!4488969 (=> res!1865119 e!2795879)))

(declare-fun lt!1673432 () List!50612)

(declare-fun removePairForKey!732 (List!50612 K!11903) List!50612)

(assert (=> b!4488969 (= res!1865119 (not (= newBucket!178 (removePairForKey!732 lt!1673432 key!3287))))))

(declare-fun lambda!166986 () Int)

(declare-fun lt!1673429 () tuple2!50856)

(declare-fun lt!1673434 () Unit!90458)

(declare-fun forallContained!2388 (List!50613 Int tuple2!50856) Unit!90458)

(assert (=> b!4488969 (= lt!1673434 (forallContained!2388 (toList!4217 lm!1477) lambda!166986 lt!1673429))))

(declare-fun contains!13128 (List!50613 tuple2!50856) Bool)

(assert (=> b!4488969 (contains!13128 (toList!4217 lm!1477) lt!1673429)))

(assert (=> b!4488969 (= lt!1673429 (tuple2!50857 hash!344 lt!1673432))))

(declare-fun lt!1673430 () Unit!90458)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!617 (List!50613 (_ BitVec 64) List!50612) Unit!90458)

(assert (=> b!4488969 (= lt!1673430 (lemmaGetValueByKeyImpliesContainsTuple!617 (toList!4217 lm!1477) hash!344 lt!1673432))))

(declare-fun apply!11842 (ListLongMap!2849 (_ BitVec 64)) List!50612)

(assert (=> b!4488969 (= lt!1673432 (apply!11842 lm!1477 hash!344))))

(declare-fun lt!1673423 () (_ BitVec 64))

(declare-fun contains!13129 (ListLongMap!2849 (_ BitVec 64)) Bool)

(assert (=> b!4488969 (contains!13129 lm!1477 lt!1673423)))

(declare-fun lt!1673435 () Unit!90458)

(declare-fun lemmaInGenMapThenLongMapContainsHash!179 (ListLongMap!2849 K!11903 Hashable!5500) Unit!90458)

(assert (=> b!4488969 (= lt!1673435 (lemmaInGenMapThenLongMapContainsHash!179 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4488970 () Bool)

(declare-fun Unit!90461 () Unit!90458)

(assert (=> b!4488970 (= e!2795876 Unit!90461)))

(declare-fun res!1865110 () Bool)

(declare-fun e!2795873 () Bool)

(assert (=> start!442402 (=> (not res!1865110) (not e!2795873))))

(declare-fun forall!10131 (List!50613 Int) Bool)

(assert (=> start!442402 (= res!1865110 (forall!10131 (toList!4217 lm!1477) lambda!166986))))

(assert (=> start!442402 e!2795873))

(assert (=> start!442402 true))

(declare-fun e!2795874 () Bool)

(declare-fun inv!66088 (ListLongMap!2849) Bool)

(assert (=> start!442402 (and (inv!66088 lm!1477) e!2795874)))

(declare-fun tp_is_empty!27697 () Bool)

(assert (=> start!442402 tp_is_empty!27697))

(declare-fun e!2795878 () Bool)

(assert (=> start!442402 e!2795878))

(declare-fun b!4488971 () Bool)

(declare-fun res!1865111 () Bool)

(assert (=> b!4488971 (=> res!1865111 e!2795879)))

(assert (=> b!4488971 (= res!1865111 (or (is-Nil!50489 (toList!4217 lm!1477)) (= (_1!28722 (h!56294 (toList!4217 lm!1477))) hash!344)))))

(declare-fun b!4488972 () Bool)

(declare-fun e!2795881 () Bool)

(declare-fun e!2795875 () Bool)

(assert (=> b!4488972 (= e!2795881 e!2795875)))

(declare-fun res!1865116 () Bool)

(assert (=> b!4488972 (=> res!1865116 e!2795875)))

(declare-fun containsKeyBiggerList!85 (List!50613 K!11903) Bool)

(assert (=> b!4488972 (= res!1865116 (not (containsKeyBiggerList!85 (t!357567 (toList!4217 lm!1477)) key!3287)))))

(declare-fun lt!1673431 () ListLongMap!2849)

(assert (=> b!4488972 (containsKeyBiggerList!85 (toList!4217 lt!1673431) key!3287)))

(declare-fun lt!1673425 () Unit!90458)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!21 (ListLongMap!2849 K!11903 Hashable!5500) Unit!90458)

(assert (=> b!4488972 (= lt!1673425 (lemmaInLongMapThenContainsKeyBiggerList!21 lt!1673431 key!3287 hashF!1107))))

(declare-fun b!4488973 () Bool)

(declare-fun res!1865113 () Bool)

(assert (=> b!4488973 (=> (not res!1865113) (not e!2795873))))

(declare-datatypes ((ListMap!3479 0))(
  ( (ListMap!3480 (toList!4218 List!50612)) )
))
(declare-fun contains!13130 (ListMap!3479 K!11903) Bool)

(declare-fun extractMap!1161 (List!50613) ListMap!3479)

(assert (=> b!4488973 (= res!1865113 (contains!13130 (extractMap!1161 (toList!4217 lm!1477)) key!3287))))

(declare-fun b!4488974 () Bool)

(declare-fun e!2795880 () Bool)

(assert (=> b!4488974 (= e!2795875 e!2795880)))

(declare-fun res!1865122 () Bool)

(assert (=> b!4488974 (=> res!1865122 e!2795880)))

(assert (=> b!4488974 (= res!1865122 (not (contains!13130 (extractMap!1161 (t!357567 (toList!4217 lm!1477))) key!3287)))))

(declare-fun lt!1673427 () ListMap!3479)

(assert (=> b!4488974 (contains!13130 lt!1673427 key!3287)))

(assert (=> b!4488974 (= lt!1673427 (extractMap!1161 (toList!4217 lt!1673431)))))

(declare-fun lt!1673426 () Unit!90458)

(declare-fun lemmaListContainsThenExtractedMapContains!75 (ListLongMap!2849 K!11903 Hashable!5500) Unit!90458)

(assert (=> b!4488974 (= lt!1673426 (lemmaListContainsThenExtractedMapContains!75 lt!1673431 key!3287 hashF!1107))))

(declare-fun b!4488975 () Bool)

(declare-fun tp!1337179 () Bool)

(assert (=> b!4488975 (= e!2795874 tp!1337179)))

(declare-fun b!4488976 () Bool)

(assert (=> b!4488976 (= e!2795880 (forall!10131 (toList!4217 lt!1673431) lambda!166986))))

(declare-fun eq!562 (ListMap!3479 ListMap!3479) Bool)

(declare-fun +!1441 (ListLongMap!2849 tuple2!50856) ListLongMap!2849)

(declare-fun -!331 (ListMap!3479 K!11903) ListMap!3479)

(assert (=> b!4488976 (eq!562 (extractMap!1161 (toList!4217 (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178)))) (-!331 lt!1673427 key!3287))))

(declare-fun lt!1673436 () Unit!90458)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!90 (ListLongMap!2849 (_ BitVec 64) List!50612 K!11903 Hashable!5500) Unit!90458)

(assert (=> b!4488976 (= lt!1673436 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!90 lt!1673431 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4488977 () Bool)

(assert (=> b!4488977 (= e!2795873 e!2795877)))

(declare-fun res!1865118 () Bool)

(assert (=> b!4488977 (=> (not res!1865118) (not e!2795877))))

(assert (=> b!4488977 (= res!1865118 (= lt!1673423 hash!344))))

(declare-fun hash!2626 (Hashable!5500 K!11903) (_ BitVec 64))

(assert (=> b!4488977 (= lt!1673423 (hash!2626 hashF!1107 key!3287))))

(declare-fun b!4488978 () Bool)

(declare-fun e!2795872 () Bool)

(assert (=> b!4488978 (= e!2795879 e!2795872)))

(declare-fun res!1865115 () Bool)

(assert (=> b!4488978 (=> res!1865115 e!2795872)))

(assert (=> b!4488978 (= res!1865115 (not (contains!13129 lt!1673431 hash!344)))))

(declare-fun tail!7632 (ListLongMap!2849) ListLongMap!2849)

(assert (=> b!4488978 (= lt!1673431 (tail!7632 lm!1477))))

(declare-fun tp!1337178 () Bool)

(declare-fun b!4488979 () Bool)

(declare-fun tp_is_empty!27699 () Bool)

(assert (=> b!4488979 (= e!2795878 (and tp_is_empty!27697 tp_is_empty!27699 tp!1337178))))

(declare-fun b!4488980 () Bool)

(declare-fun res!1865117 () Bool)

(assert (=> b!4488980 (=> res!1865117 e!2795872)))

(assert (=> b!4488980 (= res!1865117 (not (contains!13128 (t!357567 (toList!4217 lm!1477)) lt!1673429)))))

(declare-fun b!4488981 () Bool)

(declare-fun res!1865120 () Bool)

(assert (=> b!4488981 (=> res!1865120 e!2795879)))

(declare-fun noDuplicateKeys!1105 (List!50612) Bool)

(assert (=> b!4488981 (= res!1865120 (not (noDuplicateKeys!1105 newBucket!178)))))

(declare-fun b!4488982 () Bool)

(assert (=> b!4488982 (= e!2795872 e!2795881)))

(declare-fun res!1865114 () Bool)

(assert (=> b!4488982 (=> res!1865114 e!2795881)))

(declare-fun lt!1673424 () Bool)

(assert (=> b!4488982 (= res!1865114 lt!1673424)))

(declare-fun lt!1673428 () Unit!90458)

(assert (=> b!4488982 (= lt!1673428 e!2795876)))

(declare-fun c!764584 () Bool)

(assert (=> b!4488982 (= c!764584 lt!1673424)))

(declare-fun containsKey!1629 (List!50612 K!11903) Bool)

(assert (=> b!4488982 (= lt!1673424 (not (containsKey!1629 lt!1673432 key!3287)))))

(declare-fun b!4488983 () Bool)

(declare-fun res!1865121 () Bool)

(assert (=> b!4488983 (=> (not res!1865121) (not e!2795873))))

(declare-fun allKeysSameHashInMap!1212 (ListLongMap!2849 Hashable!5500) Bool)

(assert (=> b!4488983 (= res!1865121 (allKeysSameHashInMap!1212 lm!1477 hashF!1107))))

(declare-fun b!4488984 () Bool)

(declare-fun res!1865109 () Bool)

(assert (=> b!4488984 (=> res!1865109 e!2795872)))

(assert (=> b!4488984 (= res!1865109 (not (= (apply!11842 lt!1673431 hash!344) lt!1673432)))))

(assert (= (and start!442402 res!1865110) b!4488983))

(assert (= (and b!4488983 res!1865121) b!4488973))

(assert (= (and b!4488973 res!1865113) b!4488977))

(assert (= (and b!4488977 res!1865118) b!4488967))

(assert (= (and b!4488967 res!1865112) b!4488969))

(assert (= (and b!4488969 (not res!1865119)) b!4488981))

(assert (= (and b!4488981 (not res!1865120)) b!4488971))

(assert (= (and b!4488971 (not res!1865111)) b!4488978))

(assert (= (and b!4488978 (not res!1865115)) b!4488984))

(assert (= (and b!4488984 (not res!1865109)) b!4488980))

(assert (= (and b!4488980 (not res!1865117)) b!4488982))

(assert (= (and b!4488982 c!764584) b!4488968))

(assert (= (and b!4488982 (not c!764584)) b!4488970))

(assert (= (and b!4488982 (not res!1865114)) b!4488972))

(assert (= (and b!4488972 (not res!1865116)) b!4488974))

(assert (= (and b!4488974 (not res!1865122)) b!4488976))

(assert (= start!442402 b!4488975))

(assert (= (and start!442402 (is-Cons!50488 newBucket!178)) b!4488979))

(declare-fun m!5211131 () Bool)

(assert (=> b!4488967 m!5211131))

(declare-fun m!5211133 () Bool)

(assert (=> b!4488981 m!5211133))

(declare-fun m!5211135 () Bool)

(assert (=> b!4488974 m!5211135))

(declare-fun m!5211137 () Bool)

(assert (=> b!4488974 m!5211137))

(declare-fun m!5211139 () Bool)

(assert (=> b!4488974 m!5211139))

(declare-fun m!5211141 () Bool)

(assert (=> b!4488974 m!5211141))

(assert (=> b!4488974 m!5211141))

(declare-fun m!5211143 () Bool)

(assert (=> b!4488974 m!5211143))

(declare-fun m!5211145 () Bool)

(assert (=> b!4488980 m!5211145))

(declare-fun m!5211147 () Bool)

(assert (=> start!442402 m!5211147))

(declare-fun m!5211149 () Bool)

(assert (=> start!442402 m!5211149))

(declare-fun m!5211151 () Bool)

(assert (=> b!4488978 m!5211151))

(declare-fun m!5211153 () Bool)

(assert (=> b!4488978 m!5211153))

(declare-fun m!5211155 () Bool)

(assert (=> b!4488984 m!5211155))

(declare-fun m!5211157 () Bool)

(assert (=> b!4488983 m!5211157))

(declare-fun m!5211159 () Bool)

(assert (=> b!4488969 m!5211159))

(declare-fun m!5211161 () Bool)

(assert (=> b!4488969 m!5211161))

(declare-fun m!5211163 () Bool)

(assert (=> b!4488969 m!5211163))

(declare-fun m!5211165 () Bool)

(assert (=> b!4488969 m!5211165))

(declare-fun m!5211167 () Bool)

(assert (=> b!4488969 m!5211167))

(declare-fun m!5211169 () Bool)

(assert (=> b!4488969 m!5211169))

(declare-fun m!5211171 () Bool)

(assert (=> b!4488969 m!5211171))

(declare-fun m!5211173 () Bool)

(assert (=> b!4488976 m!5211173))

(declare-fun m!5211175 () Bool)

(assert (=> b!4488976 m!5211175))

(assert (=> b!4488976 m!5211175))

(declare-fun m!5211177 () Bool)

(assert (=> b!4488976 m!5211177))

(declare-fun m!5211179 () Bool)

(assert (=> b!4488976 m!5211179))

(declare-fun m!5211181 () Bool)

(assert (=> b!4488976 m!5211181))

(assert (=> b!4488976 m!5211177))

(declare-fun m!5211183 () Bool)

(assert (=> b!4488976 m!5211183))

(declare-fun m!5211185 () Bool)

(assert (=> b!4488972 m!5211185))

(declare-fun m!5211187 () Bool)

(assert (=> b!4488972 m!5211187))

(declare-fun m!5211189 () Bool)

(assert (=> b!4488972 m!5211189))

(declare-fun m!5211191 () Bool)

(assert (=> b!4488973 m!5211191))

(assert (=> b!4488973 m!5211191))

(declare-fun m!5211193 () Bool)

(assert (=> b!4488973 m!5211193))

(declare-fun m!5211195 () Bool)

(assert (=> b!4488982 m!5211195))

(declare-fun m!5211197 () Bool)

(assert (=> b!4488968 m!5211197))

(declare-fun m!5211199 () Bool)

(assert (=> b!4488977 m!5211199))

(push 1)

(assert (not b!4488979))

(assert (not b!4488984))

(assert (not b!4488976))

(assert (not b!4488978))

(assert (not b!4488973))

(assert (not b!4488972))

(assert (not b!4488977))

(assert (not b!4488981))

(assert tp_is_empty!27697)

(assert (not b!4488983))

(assert (not b!4488967))

(assert tp_is_empty!27699)

(assert (not b!4488974))

(assert (not start!442402))

(assert (not b!4488969))

(assert (not b!4488975))

(assert (not b!4488980))

(assert (not b!4488968))

(assert (not b!4488982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1374603 () Bool)

(declare-fun e!2795916 () Bool)

(assert (=> d!1374603 e!2795916))

(declare-fun res!1865167 () Bool)

(assert (=> d!1374603 (=> res!1865167 e!2795916)))

(declare-fun lt!1673491 () Bool)

(assert (=> d!1374603 (= res!1865167 (not lt!1673491))))

(declare-fun lt!1673493 () Bool)

(assert (=> d!1374603 (= lt!1673491 lt!1673493)))

(declare-fun lt!1673490 () Unit!90458)

(declare-fun e!2795917 () Unit!90458)

(assert (=> d!1374603 (= lt!1673490 e!2795917)))

(declare-fun c!764590 () Bool)

(assert (=> d!1374603 (= c!764590 lt!1673493)))

(declare-fun containsKey!1631 (List!50613 (_ BitVec 64)) Bool)

(assert (=> d!1374603 (= lt!1673493 (containsKey!1631 (toList!4217 lt!1673431) hash!344))))

(assert (=> d!1374603 (= (contains!13129 lt!1673431 hash!344) lt!1673491)))

(declare-fun b!4489045 () Bool)

(declare-fun lt!1673492 () Unit!90458)

(assert (=> b!4489045 (= e!2795917 lt!1673492)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!898 (List!50613 (_ BitVec 64)) Unit!90458)

(assert (=> b!4489045 (= lt!1673492 (lemmaContainsKeyImpliesGetValueByKeyDefined!898 (toList!4217 lt!1673431) hash!344))))

(declare-datatypes ((Option!11014 0))(
  ( (None!11013) (Some!11013 (v!44453 List!50612)) )
))
(declare-fun isDefined!8301 (Option!11014) Bool)

(declare-fun getValueByKey!994 (List!50613 (_ BitVec 64)) Option!11014)

(assert (=> b!4489045 (isDefined!8301 (getValueByKey!994 (toList!4217 lt!1673431) hash!344))))

(declare-fun b!4489046 () Bool)

(declare-fun Unit!90466 () Unit!90458)

(assert (=> b!4489046 (= e!2795917 Unit!90466)))

(declare-fun b!4489047 () Bool)

(assert (=> b!4489047 (= e!2795916 (isDefined!8301 (getValueByKey!994 (toList!4217 lt!1673431) hash!344)))))

(assert (= (and d!1374603 c!764590) b!4489045))

(assert (= (and d!1374603 (not c!764590)) b!4489046))

(assert (= (and d!1374603 (not res!1865167)) b!4489047))

(declare-fun m!5211281 () Bool)

(assert (=> d!1374603 m!5211281))

(declare-fun m!5211283 () Bool)

(assert (=> b!4489045 m!5211283))

(declare-fun m!5211285 () Bool)

(assert (=> b!4489045 m!5211285))

(assert (=> b!4489045 m!5211285))

(declare-fun m!5211287 () Bool)

(assert (=> b!4489045 m!5211287))

(assert (=> b!4489047 m!5211285))

(assert (=> b!4489047 m!5211285))

(assert (=> b!4489047 m!5211287))

(assert (=> b!4488978 d!1374603))

(declare-fun d!1374609 () Bool)

(declare-fun tail!7634 (List!50613) List!50613)

(assert (=> d!1374609 (= (tail!7632 lm!1477) (ListLongMap!2850 (tail!7634 (toList!4217 lm!1477))))))

(declare-fun bs!827258 () Bool)

(assert (= bs!827258 d!1374609))

(declare-fun m!5211289 () Bool)

(assert (=> bs!827258 m!5211289))

(assert (=> b!4488978 d!1374609))

(declare-fun bs!827259 () Bool)

(declare-fun d!1374611 () Bool)

(assert (= bs!827259 (and d!1374611 start!442402)))

(declare-fun lambda!166999 () Int)

(assert (=> bs!827259 (= lambda!166999 lambda!166986)))

(assert (=> d!1374611 (not (contains!13130 (extractMap!1161 (toList!4217 lm!1477)) key!3287))))

(declare-fun lt!1673499 () Unit!90458)

(declare-fun choose!28927 (ListLongMap!2849 K!11903 Hashable!5500) Unit!90458)

(assert (=> d!1374611 (= lt!1673499 (choose!28927 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1374611 (forall!10131 (toList!4217 lm!1477) lambda!166999)))

(assert (=> d!1374611 (= (lemmaNotInItsHashBucketThenNotInMap!93 lm!1477 key!3287 hashF!1107) lt!1673499)))

(declare-fun bs!827260 () Bool)

(assert (= bs!827260 d!1374611))

(assert (=> bs!827260 m!5211191))

(assert (=> bs!827260 m!5211191))

(assert (=> bs!827260 m!5211193))

(declare-fun m!5211295 () Bool)

(assert (=> bs!827260 m!5211295))

(declare-fun m!5211297 () Bool)

(assert (=> bs!827260 m!5211297))

(assert (=> b!4488968 d!1374611))

(declare-fun d!1374615 () Bool)

(declare-fun res!1865180 () Bool)

(declare-fun e!2795930 () Bool)

(assert (=> d!1374615 (=> res!1865180 e!2795930)))

(assert (=> d!1374615 (= res!1865180 (is-Nil!50489 (toList!4217 lm!1477)))))

(assert (=> d!1374615 (= (forall!10131 (toList!4217 lm!1477) lambda!166986) e!2795930)))

(declare-fun b!4489060 () Bool)

(declare-fun e!2795931 () Bool)

(assert (=> b!4489060 (= e!2795930 e!2795931)))

(declare-fun res!1865181 () Bool)

(assert (=> b!4489060 (=> (not res!1865181) (not e!2795931))))

(declare-fun dynLambda!21076 (Int tuple2!50856) Bool)

(assert (=> b!4489060 (= res!1865181 (dynLambda!21076 lambda!166986 (h!56294 (toList!4217 lm!1477))))))

(declare-fun b!4489061 () Bool)

(assert (=> b!4489061 (= e!2795931 (forall!10131 (t!357567 (toList!4217 lm!1477)) lambda!166986))))

(assert (= (and d!1374615 (not res!1865180)) b!4489060))

(assert (= (and b!4489060 res!1865181) b!4489061))

(declare-fun b_lambda!150905 () Bool)

(assert (=> (not b_lambda!150905) (not b!4489060)))

(declare-fun m!5211299 () Bool)

(assert (=> b!4489060 m!5211299))

(declare-fun m!5211301 () Bool)

(assert (=> b!4489061 m!5211301))

(assert (=> start!442402 d!1374615))

(declare-fun d!1374617 () Bool)

(declare-fun isStrictlySorted!382 (List!50613) Bool)

(assert (=> d!1374617 (= (inv!66088 lm!1477) (isStrictlySorted!382 (toList!4217 lm!1477)))))

(declare-fun bs!827261 () Bool)

(assert (= bs!827261 d!1374617))

(declare-fun m!5211303 () Bool)

(assert (=> bs!827261 m!5211303))

(assert (=> start!442402 d!1374617))

(declare-fun d!1374619 () Bool)

(assert (=> d!1374619 (contains!13128 (toList!4217 lm!1477) (tuple2!50857 hash!344 lt!1673432))))

(declare-fun lt!1673505 () Unit!90458)

(declare-fun choose!28928 (List!50613 (_ BitVec 64) List!50612) Unit!90458)

(assert (=> d!1374619 (= lt!1673505 (choose!28928 (toList!4217 lm!1477) hash!344 lt!1673432))))

(declare-fun e!2795935 () Bool)

(assert (=> d!1374619 e!2795935))

(declare-fun res!1865185 () Bool)

(assert (=> d!1374619 (=> (not res!1865185) (not e!2795935))))

(assert (=> d!1374619 (= res!1865185 (isStrictlySorted!382 (toList!4217 lm!1477)))))

(assert (=> d!1374619 (= (lemmaGetValueByKeyImpliesContainsTuple!617 (toList!4217 lm!1477) hash!344 lt!1673432) lt!1673505)))

(declare-fun b!4489065 () Bool)

(assert (=> b!4489065 (= e!2795935 (= (getValueByKey!994 (toList!4217 lm!1477) hash!344) (Some!11013 lt!1673432)))))

(assert (= (and d!1374619 res!1865185) b!4489065))

(declare-fun m!5211311 () Bool)

(assert (=> d!1374619 m!5211311))

(declare-fun m!5211313 () Bool)

(assert (=> d!1374619 m!5211313))

(assert (=> d!1374619 m!5211303))

(declare-fun m!5211315 () Bool)

(assert (=> b!4489065 m!5211315))

(assert (=> b!4488969 d!1374619))

(declare-fun bs!827262 () Bool)

(declare-fun d!1374623 () Bool)

(assert (= bs!827262 (and d!1374623 start!442402)))

(declare-fun lambda!167002 () Int)

(assert (=> bs!827262 (= lambda!167002 lambda!166986)))

(declare-fun bs!827263 () Bool)

(assert (= bs!827263 (and d!1374623 d!1374611)))

(assert (=> bs!827263 (= lambda!167002 lambda!166999)))

(assert (=> d!1374623 (contains!13129 lm!1477 (hash!2626 hashF!1107 key!3287))))

(declare-fun lt!1673508 () Unit!90458)

(declare-fun choose!28929 (ListLongMap!2849 K!11903 Hashable!5500) Unit!90458)

(assert (=> d!1374623 (= lt!1673508 (choose!28929 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1374623 (forall!10131 (toList!4217 lm!1477) lambda!167002)))

(assert (=> d!1374623 (= (lemmaInGenMapThenLongMapContainsHash!179 lm!1477 key!3287 hashF!1107) lt!1673508)))

(declare-fun bs!827264 () Bool)

(assert (= bs!827264 d!1374623))

(assert (=> bs!827264 m!5211199))

(assert (=> bs!827264 m!5211199))

(declare-fun m!5211317 () Bool)

(assert (=> bs!827264 m!5211317))

(declare-fun m!5211319 () Bool)

(assert (=> bs!827264 m!5211319))

(declare-fun m!5211321 () Bool)

(assert (=> bs!827264 m!5211321))

(assert (=> b!4488969 d!1374623))

(declare-fun d!1374625 () Bool)

(declare-fun e!2795936 () Bool)

(assert (=> d!1374625 e!2795936))

(declare-fun res!1865186 () Bool)

(assert (=> d!1374625 (=> res!1865186 e!2795936)))

(declare-fun lt!1673510 () Bool)

(assert (=> d!1374625 (= res!1865186 (not lt!1673510))))

(declare-fun lt!1673512 () Bool)

(assert (=> d!1374625 (= lt!1673510 lt!1673512)))

(declare-fun lt!1673509 () Unit!90458)

(declare-fun e!2795937 () Unit!90458)

(assert (=> d!1374625 (= lt!1673509 e!2795937)))

(declare-fun c!764591 () Bool)

(assert (=> d!1374625 (= c!764591 lt!1673512)))

(assert (=> d!1374625 (= lt!1673512 (containsKey!1631 (toList!4217 lm!1477) lt!1673423))))

(assert (=> d!1374625 (= (contains!13129 lm!1477 lt!1673423) lt!1673510)))

(declare-fun b!4489066 () Bool)

(declare-fun lt!1673511 () Unit!90458)

(assert (=> b!4489066 (= e!2795937 lt!1673511)))

(assert (=> b!4489066 (= lt!1673511 (lemmaContainsKeyImpliesGetValueByKeyDefined!898 (toList!4217 lm!1477) lt!1673423))))

(assert (=> b!4489066 (isDefined!8301 (getValueByKey!994 (toList!4217 lm!1477) lt!1673423))))

(declare-fun b!4489067 () Bool)

(declare-fun Unit!90467 () Unit!90458)

(assert (=> b!4489067 (= e!2795937 Unit!90467)))

(declare-fun b!4489068 () Bool)

(assert (=> b!4489068 (= e!2795936 (isDefined!8301 (getValueByKey!994 (toList!4217 lm!1477) lt!1673423)))))

(assert (= (and d!1374625 c!764591) b!4489066))

(assert (= (and d!1374625 (not c!764591)) b!4489067))

(assert (= (and d!1374625 (not res!1865186)) b!4489068))

(declare-fun m!5211323 () Bool)

(assert (=> d!1374625 m!5211323))

(declare-fun m!5211325 () Bool)

(assert (=> b!4489066 m!5211325))

(declare-fun m!5211327 () Bool)

(assert (=> b!4489066 m!5211327))

(assert (=> b!4489066 m!5211327))

(declare-fun m!5211329 () Bool)

(assert (=> b!4489066 m!5211329))

(assert (=> b!4489068 m!5211327))

(assert (=> b!4489068 m!5211327))

(assert (=> b!4489068 m!5211329))

(assert (=> b!4488969 d!1374625))

(declare-fun d!1374627 () Bool)

(declare-fun get!16482 (Option!11014) List!50612)

(assert (=> d!1374627 (= (apply!11842 lm!1477 hash!344) (get!16482 (getValueByKey!994 (toList!4217 lm!1477) hash!344)))))

(declare-fun bs!827265 () Bool)

(assert (= bs!827265 d!1374627))

(assert (=> bs!827265 m!5211315))

(assert (=> bs!827265 m!5211315))

(declare-fun m!5211331 () Bool)

(assert (=> bs!827265 m!5211331))

(assert (=> b!4488969 d!1374627))

(declare-fun d!1374629 () Bool)

(assert (=> d!1374629 (dynLambda!21076 lambda!166986 lt!1673429)))

(declare-fun lt!1673523 () Unit!90458)

(declare-fun choose!28930 (List!50613 Int tuple2!50856) Unit!90458)

(assert (=> d!1374629 (= lt!1673523 (choose!28930 (toList!4217 lm!1477) lambda!166986 lt!1673429))))

(declare-fun e!2795944 () Bool)

(assert (=> d!1374629 e!2795944))

(declare-fun res!1865191 () Bool)

(assert (=> d!1374629 (=> (not res!1865191) (not e!2795944))))

(assert (=> d!1374629 (= res!1865191 (forall!10131 (toList!4217 lm!1477) lambda!166986))))

(assert (=> d!1374629 (= (forallContained!2388 (toList!4217 lm!1477) lambda!166986 lt!1673429) lt!1673523)))

(declare-fun b!4489077 () Bool)

(assert (=> b!4489077 (= e!2795944 (contains!13128 (toList!4217 lm!1477) lt!1673429))))

(assert (= (and d!1374629 res!1865191) b!4489077))

(declare-fun b_lambda!150907 () Bool)

(assert (=> (not b_lambda!150907) (not d!1374629)))

(declare-fun m!5211333 () Bool)

(assert (=> d!1374629 m!5211333))

(declare-fun m!5211335 () Bool)

(assert (=> d!1374629 m!5211335))

(assert (=> d!1374629 m!5211147))

(assert (=> b!4489077 m!5211167))

(assert (=> b!4488969 d!1374629))

(declare-fun b!4489091 () Bool)

(declare-fun e!2795951 () List!50612)

(assert (=> b!4489091 (= e!2795951 (Cons!50488 (h!56293 lt!1673432) (removePairForKey!732 (t!357566 lt!1673432) key!3287)))))

(declare-fun d!1374631 () Bool)

(declare-fun lt!1673530 () List!50612)

(assert (=> d!1374631 (not (containsKey!1629 lt!1673530 key!3287))))

(declare-fun e!2795952 () List!50612)

(assert (=> d!1374631 (= lt!1673530 e!2795952)))

(declare-fun c!764599 () Bool)

(assert (=> d!1374631 (= c!764599 (and (is-Cons!50488 lt!1673432) (= (_1!28721 (h!56293 lt!1673432)) key!3287)))))

(assert (=> d!1374631 (noDuplicateKeys!1105 lt!1673432)))

(assert (=> d!1374631 (= (removePairForKey!732 lt!1673432 key!3287) lt!1673530)))

(declare-fun b!4489090 () Bool)

(assert (=> b!4489090 (= e!2795952 e!2795951)))

(declare-fun c!764600 () Bool)

(assert (=> b!4489090 (= c!764600 (is-Cons!50488 lt!1673432))))

(declare-fun b!4489092 () Bool)

(assert (=> b!4489092 (= e!2795951 Nil!50488)))

(declare-fun b!4489089 () Bool)

(assert (=> b!4489089 (= e!2795952 (t!357566 lt!1673432))))

(assert (= (and d!1374631 c!764599) b!4489089))

(assert (= (and d!1374631 (not c!764599)) b!4489090))

(assert (= (and b!4489090 c!764600) b!4489091))

(assert (= (and b!4489090 (not c!764600)) b!4489092))

(declare-fun m!5211345 () Bool)

(assert (=> b!4489091 m!5211345))

(declare-fun m!5211347 () Bool)

(assert (=> d!1374631 m!5211347))

(declare-fun m!5211349 () Bool)

(assert (=> d!1374631 m!5211349))

(assert (=> b!4488969 d!1374631))

(declare-fun d!1374635 () Bool)

(declare-fun lt!1673533 () Bool)

(declare-fun content!8210 (List!50613) (Set tuple2!50856))

(assert (=> d!1374635 (= lt!1673533 (set.member lt!1673429 (content!8210 (toList!4217 lm!1477))))))

(declare-fun e!2795957 () Bool)

(assert (=> d!1374635 (= lt!1673533 e!2795957)))

(declare-fun res!1865198 () Bool)

(assert (=> d!1374635 (=> (not res!1865198) (not e!2795957))))

(assert (=> d!1374635 (= res!1865198 (is-Cons!50489 (toList!4217 lm!1477)))))

(assert (=> d!1374635 (= (contains!13128 (toList!4217 lm!1477) lt!1673429) lt!1673533)))

(declare-fun b!4489097 () Bool)

(declare-fun e!2795958 () Bool)

(assert (=> b!4489097 (= e!2795957 e!2795958)))

(declare-fun res!1865197 () Bool)

(assert (=> b!4489097 (=> res!1865197 e!2795958)))

(assert (=> b!4489097 (= res!1865197 (= (h!56294 (toList!4217 lm!1477)) lt!1673429))))

(declare-fun b!4489098 () Bool)

(assert (=> b!4489098 (= e!2795958 (contains!13128 (t!357567 (toList!4217 lm!1477)) lt!1673429))))

(assert (= (and d!1374635 res!1865198) b!4489097))

(assert (= (and b!4489097 (not res!1865197)) b!4489098))

(declare-fun m!5211351 () Bool)

(assert (=> d!1374635 m!5211351))

(declare-fun m!5211353 () Bool)

(assert (=> d!1374635 m!5211353))

(assert (=> b!4489098 m!5211145))

(assert (=> b!4488969 d!1374635))

(declare-fun d!1374637 () Bool)

(declare-fun lt!1673534 () Bool)

(assert (=> d!1374637 (= lt!1673534 (set.member lt!1673429 (content!8210 (t!357567 (toList!4217 lm!1477)))))))

(declare-fun e!2795959 () Bool)

(assert (=> d!1374637 (= lt!1673534 e!2795959)))

(declare-fun res!1865200 () Bool)

(assert (=> d!1374637 (=> (not res!1865200) (not e!2795959))))

(assert (=> d!1374637 (= res!1865200 (is-Cons!50489 (t!357567 (toList!4217 lm!1477))))))

(assert (=> d!1374637 (= (contains!13128 (t!357567 (toList!4217 lm!1477)) lt!1673429) lt!1673534)))

(declare-fun b!4489099 () Bool)

(declare-fun e!2795960 () Bool)

(assert (=> b!4489099 (= e!2795959 e!2795960)))

(declare-fun res!1865199 () Bool)

(assert (=> b!4489099 (=> res!1865199 e!2795960)))

(assert (=> b!4489099 (= res!1865199 (= (h!56294 (t!357567 (toList!4217 lm!1477))) lt!1673429))))

(declare-fun b!4489100 () Bool)

(assert (=> b!4489100 (= e!2795960 (contains!13128 (t!357567 (t!357567 (toList!4217 lm!1477))) lt!1673429))))

(assert (= (and d!1374637 res!1865200) b!4489099))

(assert (= (and b!4489099 (not res!1865199)) b!4489100))

(declare-fun m!5211355 () Bool)

(assert (=> d!1374637 m!5211355))

(declare-fun m!5211357 () Bool)

(assert (=> d!1374637 m!5211357))

(declare-fun m!5211359 () Bool)

(assert (=> b!4489100 m!5211359))

(assert (=> b!4488980 d!1374637))

(declare-fun d!1374639 () Bool)

(declare-fun res!1865205 () Bool)

(declare-fun e!2795965 () Bool)

(assert (=> d!1374639 (=> res!1865205 e!2795965)))

(assert (=> d!1374639 (= res!1865205 (not (is-Cons!50488 newBucket!178)))))

(assert (=> d!1374639 (= (noDuplicateKeys!1105 newBucket!178) e!2795965)))

(declare-fun b!4489105 () Bool)

(declare-fun e!2795966 () Bool)

(assert (=> b!4489105 (= e!2795965 e!2795966)))

(declare-fun res!1865206 () Bool)

(assert (=> b!4489105 (=> (not res!1865206) (not e!2795966))))

(assert (=> b!4489105 (= res!1865206 (not (containsKey!1629 (t!357566 newBucket!178) (_1!28721 (h!56293 newBucket!178)))))))

(declare-fun b!4489106 () Bool)

(assert (=> b!4489106 (= e!2795966 (noDuplicateKeys!1105 (t!357566 newBucket!178)))))

(assert (= (and d!1374639 (not res!1865205)) b!4489105))

(assert (= (and b!4489105 res!1865206) b!4489106))

(declare-fun m!5211361 () Bool)

(assert (=> b!4489105 m!5211361))

(declare-fun m!5211363 () Bool)

(assert (=> b!4489106 m!5211363))

(assert (=> b!4488981 d!1374639))

(declare-fun d!1374641 () Bool)

(declare-fun res!1865211 () Bool)

(declare-fun e!2795975 () Bool)

(assert (=> d!1374641 (=> res!1865211 e!2795975)))

(assert (=> d!1374641 (= res!1865211 (and (is-Cons!50488 lt!1673432) (= (_1!28721 (h!56293 lt!1673432)) key!3287)))))

(assert (=> d!1374641 (= (containsKey!1629 lt!1673432 key!3287) e!2795975)))

(declare-fun b!4489119 () Bool)

(declare-fun e!2795976 () Bool)

(assert (=> b!4489119 (= e!2795975 e!2795976)))

(declare-fun res!1865212 () Bool)

(assert (=> b!4489119 (=> (not res!1865212) (not e!2795976))))

(assert (=> b!4489119 (= res!1865212 (is-Cons!50488 lt!1673432))))

(declare-fun b!4489120 () Bool)

(assert (=> b!4489120 (= e!2795976 (containsKey!1629 (t!357566 lt!1673432) key!3287))))

(assert (= (and d!1374641 (not res!1865211)) b!4489119))

(assert (= (and b!4489119 res!1865212) b!4489120))

(declare-fun m!5211365 () Bool)

(assert (=> b!4489120 m!5211365))

(assert (=> b!4488982 d!1374641))

(declare-fun d!1374643 () Bool)

(declare-fun res!1865219 () Bool)

(declare-fun e!2795985 () Bool)

(assert (=> d!1374643 (=> res!1865219 e!2795985)))

(declare-fun e!2795984 () Bool)

(assert (=> d!1374643 (= res!1865219 e!2795984)))

(declare-fun res!1865220 () Bool)

(assert (=> d!1374643 (=> (not res!1865220) (not e!2795984))))

(assert (=> d!1374643 (= res!1865220 (is-Cons!50489 (t!357567 (toList!4217 lm!1477))))))

(assert (=> d!1374643 (= (containsKeyBiggerList!85 (t!357567 (toList!4217 lm!1477)) key!3287) e!2795985)))

(declare-fun b!4489127 () Bool)

(assert (=> b!4489127 (= e!2795984 (containsKey!1629 (_2!28722 (h!56294 (t!357567 (toList!4217 lm!1477)))) key!3287))))

(declare-fun b!4489128 () Bool)

(declare-fun e!2795983 () Bool)

(assert (=> b!4489128 (= e!2795985 e!2795983)))

(declare-fun res!1865221 () Bool)

(assert (=> b!4489128 (=> (not res!1865221) (not e!2795983))))

(assert (=> b!4489128 (= res!1865221 (is-Cons!50489 (t!357567 (toList!4217 lm!1477))))))

(declare-fun b!4489129 () Bool)

(assert (=> b!4489129 (= e!2795983 (containsKeyBiggerList!85 (t!357567 (t!357567 (toList!4217 lm!1477))) key!3287))))

(assert (= (and d!1374643 res!1865220) b!4489127))

(assert (= (and d!1374643 (not res!1865219)) b!4489128))

(assert (= (and b!4489128 res!1865221) b!4489129))

(declare-fun m!5211367 () Bool)

(assert (=> b!4489127 m!5211367))

(declare-fun m!5211369 () Bool)

(assert (=> b!4489129 m!5211369))

(assert (=> b!4488972 d!1374643))

(declare-fun d!1374645 () Bool)

(declare-fun res!1865222 () Bool)

(declare-fun e!2795988 () Bool)

(assert (=> d!1374645 (=> res!1865222 e!2795988)))

(declare-fun e!2795987 () Bool)

(assert (=> d!1374645 (= res!1865222 e!2795987)))

(declare-fun res!1865223 () Bool)

(assert (=> d!1374645 (=> (not res!1865223) (not e!2795987))))

(assert (=> d!1374645 (= res!1865223 (is-Cons!50489 (toList!4217 lt!1673431)))))

(assert (=> d!1374645 (= (containsKeyBiggerList!85 (toList!4217 lt!1673431) key!3287) e!2795988)))

(declare-fun b!4489130 () Bool)

(assert (=> b!4489130 (= e!2795987 (containsKey!1629 (_2!28722 (h!56294 (toList!4217 lt!1673431))) key!3287))))

(declare-fun b!4489131 () Bool)

(declare-fun e!2795986 () Bool)

(assert (=> b!4489131 (= e!2795988 e!2795986)))

(declare-fun res!1865224 () Bool)

(assert (=> b!4489131 (=> (not res!1865224) (not e!2795986))))

(assert (=> b!4489131 (= res!1865224 (is-Cons!50489 (toList!4217 lt!1673431)))))

(declare-fun b!4489132 () Bool)

(assert (=> b!4489132 (= e!2795986 (containsKeyBiggerList!85 (t!357567 (toList!4217 lt!1673431)) key!3287))))

(assert (= (and d!1374645 res!1865223) b!4489130))

(assert (= (and d!1374645 (not res!1865222)) b!4489131))

(assert (= (and b!4489131 res!1865224) b!4489132))

(declare-fun m!5211371 () Bool)

(assert (=> b!4489130 m!5211371))

(declare-fun m!5211373 () Bool)

(assert (=> b!4489132 m!5211373))

(assert (=> b!4488972 d!1374645))

(declare-fun bs!827266 () Bool)

(declare-fun d!1374647 () Bool)

(assert (= bs!827266 (and d!1374647 start!442402)))

(declare-fun lambda!167005 () Int)

(assert (=> bs!827266 (= lambda!167005 lambda!166986)))

(declare-fun bs!827267 () Bool)

(assert (= bs!827267 (and d!1374647 d!1374611)))

(assert (=> bs!827267 (= lambda!167005 lambda!166999)))

(declare-fun bs!827268 () Bool)

(assert (= bs!827268 (and d!1374647 d!1374623)))

(assert (=> bs!827268 (= lambda!167005 lambda!167002)))

(assert (=> d!1374647 (containsKeyBiggerList!85 (toList!4217 lt!1673431) key!3287)))

(declare-fun lt!1673540 () Unit!90458)

(declare-fun choose!28931 (ListLongMap!2849 K!11903 Hashable!5500) Unit!90458)

(assert (=> d!1374647 (= lt!1673540 (choose!28931 lt!1673431 key!3287 hashF!1107))))

(assert (=> d!1374647 (forall!10131 (toList!4217 lt!1673431) lambda!167005)))

(assert (=> d!1374647 (= (lemmaInLongMapThenContainsKeyBiggerList!21 lt!1673431 key!3287 hashF!1107) lt!1673540)))

(declare-fun bs!827269 () Bool)

(assert (= bs!827269 d!1374647))

(assert (=> bs!827269 m!5211187))

(declare-fun m!5211381 () Bool)

(assert (=> bs!827269 m!5211381))

(declare-fun m!5211383 () Bool)

(assert (=> bs!827269 m!5211383))

(assert (=> b!4488972 d!1374647))

(declare-fun bs!827270 () Bool)

(declare-fun d!1374651 () Bool)

(assert (= bs!827270 (and d!1374651 start!442402)))

(declare-fun lambda!167008 () Int)

(assert (=> bs!827270 (not (= lambda!167008 lambda!166986))))

(declare-fun bs!827271 () Bool)

(assert (= bs!827271 (and d!1374651 d!1374611)))

(assert (=> bs!827271 (not (= lambda!167008 lambda!166999))))

(declare-fun bs!827272 () Bool)

(assert (= bs!827272 (and d!1374651 d!1374623)))

(assert (=> bs!827272 (not (= lambda!167008 lambda!167002))))

(declare-fun bs!827273 () Bool)

(assert (= bs!827273 (and d!1374651 d!1374647)))

(assert (=> bs!827273 (not (= lambda!167008 lambda!167005))))

(assert (=> d!1374651 true))

(assert (=> d!1374651 (= (allKeysSameHashInMap!1212 lm!1477 hashF!1107) (forall!10131 (toList!4217 lm!1477) lambda!167008))))

(declare-fun bs!827274 () Bool)

(assert (= bs!827274 d!1374651))

(declare-fun m!5211385 () Bool)

(assert (=> bs!827274 m!5211385))

(assert (=> b!4488983 d!1374651))

(declare-fun b!4489166 () Bool)

(declare-fun e!2796016 () Unit!90458)

(declare-fun e!2796015 () Unit!90458)

(assert (=> b!4489166 (= e!2796016 e!2796015)))

(declare-fun c!764615 () Bool)

(declare-fun call!312368 () Bool)

(assert (=> b!4489166 (= c!764615 call!312368)))

(declare-fun b!4489167 () Bool)

(declare-datatypes ((List!50616 0))(
  ( (Nil!50492) (Cons!50492 (h!56298 K!11903) (t!357570 List!50616)) )
))
(declare-fun e!2796012 () List!50616)

(declare-fun keys!17487 (ListMap!3479) List!50616)

(assert (=> b!4489167 (= e!2796012 (keys!17487 (extractMap!1161 (toList!4217 lm!1477))))))

(declare-fun b!4489168 () Bool)

(declare-fun e!2796013 () Bool)

(declare-fun e!2796017 () Bool)

(assert (=> b!4489168 (= e!2796013 e!2796017)))

(declare-fun res!1865241 () Bool)

(assert (=> b!4489168 (=> (not res!1865241) (not e!2796017))))

(declare-datatypes ((Option!11015 0))(
  ( (None!11014) (Some!11014 (v!44454 V!12149)) )
))
(declare-fun isDefined!8302 (Option!11015) Bool)

(declare-fun getValueByKey!995 (List!50612 K!11903) Option!11015)

(assert (=> b!4489168 (= res!1865241 (isDefined!8302 (getValueByKey!995 (toList!4218 (extractMap!1161 (toList!4217 lm!1477))) key!3287)))))

(declare-fun d!1374653 () Bool)

(assert (=> d!1374653 e!2796013))

(declare-fun res!1865240 () Bool)

(assert (=> d!1374653 (=> res!1865240 e!2796013)))

(declare-fun e!2796014 () Bool)

(assert (=> d!1374653 (= res!1865240 e!2796014)))

(declare-fun res!1865242 () Bool)

(assert (=> d!1374653 (=> (not res!1865242) (not e!2796014))))

(declare-fun lt!1673565 () Bool)

(assert (=> d!1374653 (= res!1865242 (not lt!1673565))))

(declare-fun lt!1673562 () Bool)

(assert (=> d!1374653 (= lt!1673565 lt!1673562)))

(declare-fun lt!1673561 () Unit!90458)

(assert (=> d!1374653 (= lt!1673561 e!2796016)))

(declare-fun c!764614 () Bool)

(assert (=> d!1374653 (= c!764614 lt!1673562)))

(declare-fun containsKey!1632 (List!50612 K!11903) Bool)

(assert (=> d!1374653 (= lt!1673562 (containsKey!1632 (toList!4218 (extractMap!1161 (toList!4217 lm!1477))) key!3287))))

(assert (=> d!1374653 (= (contains!13130 (extractMap!1161 (toList!4217 lm!1477)) key!3287) lt!1673565)))

(declare-fun b!4489169 () Bool)

(assert (=> b!4489169 false))

(declare-fun lt!1673564 () Unit!90458)

(declare-fun lt!1673566 () Unit!90458)

(assert (=> b!4489169 (= lt!1673564 lt!1673566)))

(assert (=> b!4489169 (containsKey!1632 (toList!4218 (extractMap!1161 (toList!4217 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!415 (List!50612 K!11903) Unit!90458)

(assert (=> b!4489169 (= lt!1673566 (lemmaInGetKeysListThenContainsKey!415 (toList!4218 (extractMap!1161 (toList!4217 lm!1477))) key!3287))))

(declare-fun Unit!90468 () Unit!90458)

(assert (=> b!4489169 (= e!2796015 Unit!90468)))

(declare-fun b!4489170 () Bool)

(declare-fun contains!13134 (List!50616 K!11903) Bool)

(assert (=> b!4489170 (= e!2796014 (not (contains!13134 (keys!17487 (extractMap!1161 (toList!4217 lm!1477))) key!3287)))))

(declare-fun b!4489171 () Bool)

(declare-fun Unit!90469 () Unit!90458)

(assert (=> b!4489171 (= e!2796015 Unit!90469)))

(declare-fun b!4489172 () Bool)

(declare-fun lt!1673563 () Unit!90458)

(assert (=> b!4489172 (= e!2796016 lt!1673563)))

(declare-fun lt!1673567 () Unit!90458)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!899 (List!50612 K!11903) Unit!90458)

(assert (=> b!4489172 (= lt!1673567 (lemmaContainsKeyImpliesGetValueByKeyDefined!899 (toList!4218 (extractMap!1161 (toList!4217 lm!1477))) key!3287))))

(assert (=> b!4489172 (isDefined!8302 (getValueByKey!995 (toList!4218 (extractMap!1161 (toList!4217 lm!1477))) key!3287))))

(declare-fun lt!1673560 () Unit!90458)

(assert (=> b!4489172 (= lt!1673560 lt!1673567)))

(declare-fun lemmaInListThenGetKeysListContains!412 (List!50612 K!11903) Unit!90458)

(assert (=> b!4489172 (= lt!1673563 (lemmaInListThenGetKeysListContains!412 (toList!4218 (extractMap!1161 (toList!4217 lm!1477))) key!3287))))

(assert (=> b!4489172 call!312368))

(declare-fun bm!312363 () Bool)

(assert (=> bm!312363 (= call!312368 (contains!13134 e!2796012 key!3287))))

(declare-fun c!764613 () Bool)

(assert (=> bm!312363 (= c!764613 c!764614)))

(declare-fun b!4489173 () Bool)

(declare-fun getKeysList!416 (List!50612) List!50616)

(assert (=> b!4489173 (= e!2796012 (getKeysList!416 (toList!4218 (extractMap!1161 (toList!4217 lm!1477)))))))

(declare-fun b!4489174 () Bool)

(assert (=> b!4489174 (= e!2796017 (contains!13134 (keys!17487 (extractMap!1161 (toList!4217 lm!1477))) key!3287))))

(assert (= (and d!1374653 c!764614) b!4489172))

(assert (= (and d!1374653 (not c!764614)) b!4489166))

(assert (= (and b!4489166 c!764615) b!4489169))

(assert (= (and b!4489166 (not c!764615)) b!4489171))

(assert (= (or b!4489172 b!4489166) bm!312363))

(assert (= (and bm!312363 c!764613) b!4489173))

(assert (= (and bm!312363 (not c!764613)) b!4489167))

(assert (= (and d!1374653 res!1865242) b!4489170))

(assert (= (and d!1374653 (not res!1865240)) b!4489168))

(assert (= (and b!4489168 res!1865241) b!4489174))

(assert (=> b!4489174 m!5211191))

(declare-fun m!5211399 () Bool)

(assert (=> b!4489174 m!5211399))

(assert (=> b!4489174 m!5211399))

(declare-fun m!5211401 () Bool)

(assert (=> b!4489174 m!5211401))

(declare-fun m!5211403 () Bool)

(assert (=> b!4489168 m!5211403))

(assert (=> b!4489168 m!5211403))

(declare-fun m!5211405 () Bool)

(assert (=> b!4489168 m!5211405))

(declare-fun m!5211407 () Bool)

(assert (=> b!4489173 m!5211407))

(assert (=> b!4489167 m!5211191))

(assert (=> b!4489167 m!5211399))

(assert (=> b!4489170 m!5211191))

(assert (=> b!4489170 m!5211399))

(assert (=> b!4489170 m!5211399))

(assert (=> b!4489170 m!5211401))

(declare-fun m!5211409 () Bool)

(assert (=> d!1374653 m!5211409))

(declare-fun m!5211411 () Bool)

(assert (=> b!4489172 m!5211411))

(assert (=> b!4489172 m!5211403))

(assert (=> b!4489172 m!5211403))

(assert (=> b!4489172 m!5211405))

(declare-fun m!5211413 () Bool)

(assert (=> b!4489172 m!5211413))

(assert (=> b!4489169 m!5211409))

(declare-fun m!5211415 () Bool)

(assert (=> b!4489169 m!5211415))

(declare-fun m!5211417 () Bool)

(assert (=> bm!312363 m!5211417))

(assert (=> b!4488973 d!1374653))

(declare-fun bs!827276 () Bool)

(declare-fun d!1374661 () Bool)

(assert (= bs!827276 (and d!1374661 d!1374611)))

(declare-fun lambda!167011 () Int)

(assert (=> bs!827276 (= lambda!167011 lambda!166999)))

(declare-fun bs!827277 () Bool)

(assert (= bs!827277 (and d!1374661 start!442402)))

(assert (=> bs!827277 (= lambda!167011 lambda!166986)))

(declare-fun bs!827278 () Bool)

(assert (= bs!827278 (and d!1374661 d!1374623)))

(assert (=> bs!827278 (= lambda!167011 lambda!167002)))

(declare-fun bs!827279 () Bool)

(assert (= bs!827279 (and d!1374661 d!1374651)))

(assert (=> bs!827279 (not (= lambda!167011 lambda!167008))))

(declare-fun bs!827280 () Bool)

(assert (= bs!827280 (and d!1374661 d!1374647)))

(assert (=> bs!827280 (= lambda!167011 lambda!167005)))

(declare-fun lt!1673570 () ListMap!3479)

(declare-fun invariantList!968 (List!50612) Bool)

(assert (=> d!1374661 (invariantList!968 (toList!4218 lt!1673570))))

(declare-fun e!2796020 () ListMap!3479)

(assert (=> d!1374661 (= lt!1673570 e!2796020)))

(declare-fun c!764618 () Bool)

(assert (=> d!1374661 (= c!764618 (is-Cons!50489 (toList!4217 lm!1477)))))

(assert (=> d!1374661 (forall!10131 (toList!4217 lm!1477) lambda!167011)))

(assert (=> d!1374661 (= (extractMap!1161 (toList!4217 lm!1477)) lt!1673570)))

(declare-fun b!4489179 () Bool)

(declare-fun addToMapMapFromBucket!636 (List!50612 ListMap!3479) ListMap!3479)

(assert (=> b!4489179 (= e!2796020 (addToMapMapFromBucket!636 (_2!28722 (h!56294 (toList!4217 lm!1477))) (extractMap!1161 (t!357567 (toList!4217 lm!1477)))))))

(declare-fun b!4489180 () Bool)

(assert (=> b!4489180 (= e!2796020 (ListMap!3480 Nil!50488))))

(assert (= (and d!1374661 c!764618) b!4489179))

(assert (= (and d!1374661 (not c!764618)) b!4489180))

(declare-fun m!5211419 () Bool)

(assert (=> d!1374661 m!5211419))

(declare-fun m!5211421 () Bool)

(assert (=> d!1374661 m!5211421))

(assert (=> b!4489179 m!5211141))

(assert (=> b!4489179 m!5211141))

(declare-fun m!5211423 () Bool)

(assert (=> b!4489179 m!5211423))

(assert (=> b!4488973 d!1374661))

(declare-fun d!1374663 () Bool)

(assert (=> d!1374663 (= (apply!11842 lt!1673431 hash!344) (get!16482 (getValueByKey!994 (toList!4217 lt!1673431) hash!344)))))

(declare-fun bs!827281 () Bool)

(assert (= bs!827281 d!1374663))

(assert (=> bs!827281 m!5211285))

(assert (=> bs!827281 m!5211285))

(declare-fun m!5211425 () Bool)

(assert (=> bs!827281 m!5211425))

(assert (=> b!4488984 d!1374663))

(declare-fun b!4489181 () Bool)

(declare-fun e!2796025 () Unit!90458)

(declare-fun e!2796024 () Unit!90458)

(assert (=> b!4489181 (= e!2796025 e!2796024)))

(declare-fun c!764621 () Bool)

(declare-fun call!312369 () Bool)

(assert (=> b!4489181 (= c!764621 call!312369)))

(declare-fun b!4489182 () Bool)

(declare-fun e!2796021 () List!50616)

(assert (=> b!4489182 (= e!2796021 (keys!17487 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))))))

(declare-fun b!4489183 () Bool)

(declare-fun e!2796022 () Bool)

(declare-fun e!2796026 () Bool)

(assert (=> b!4489183 (= e!2796022 e!2796026)))

(declare-fun res!1865244 () Bool)

(assert (=> b!4489183 (=> (not res!1865244) (not e!2796026))))

(assert (=> b!4489183 (= res!1865244 (isDefined!8302 (getValueByKey!995 (toList!4218 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))) key!3287)))))

(declare-fun d!1374665 () Bool)

(assert (=> d!1374665 e!2796022))

(declare-fun res!1865243 () Bool)

(assert (=> d!1374665 (=> res!1865243 e!2796022)))

(declare-fun e!2796023 () Bool)

(assert (=> d!1374665 (= res!1865243 e!2796023)))

(declare-fun res!1865245 () Bool)

(assert (=> d!1374665 (=> (not res!1865245) (not e!2796023))))

(declare-fun lt!1673576 () Bool)

(assert (=> d!1374665 (= res!1865245 (not lt!1673576))))

(declare-fun lt!1673573 () Bool)

(assert (=> d!1374665 (= lt!1673576 lt!1673573)))

(declare-fun lt!1673572 () Unit!90458)

(assert (=> d!1374665 (= lt!1673572 e!2796025)))

(declare-fun c!764620 () Bool)

(assert (=> d!1374665 (= c!764620 lt!1673573)))

(assert (=> d!1374665 (= lt!1673573 (containsKey!1632 (toList!4218 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))) key!3287))))

(assert (=> d!1374665 (= (contains!13130 (extractMap!1161 (t!357567 (toList!4217 lm!1477))) key!3287) lt!1673576)))

(declare-fun b!4489184 () Bool)

(assert (=> b!4489184 false))

(declare-fun lt!1673575 () Unit!90458)

(declare-fun lt!1673577 () Unit!90458)

(assert (=> b!4489184 (= lt!1673575 lt!1673577)))

(assert (=> b!4489184 (containsKey!1632 (toList!4218 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))) key!3287)))

(assert (=> b!4489184 (= lt!1673577 (lemmaInGetKeysListThenContainsKey!415 (toList!4218 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))) key!3287))))

(declare-fun Unit!90470 () Unit!90458)

(assert (=> b!4489184 (= e!2796024 Unit!90470)))

(declare-fun b!4489185 () Bool)

(assert (=> b!4489185 (= e!2796023 (not (contains!13134 (keys!17487 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))) key!3287)))))

(declare-fun b!4489186 () Bool)

(declare-fun Unit!90471 () Unit!90458)

(assert (=> b!4489186 (= e!2796024 Unit!90471)))

(declare-fun b!4489187 () Bool)

(declare-fun lt!1673574 () Unit!90458)

(assert (=> b!4489187 (= e!2796025 lt!1673574)))

(declare-fun lt!1673578 () Unit!90458)

(assert (=> b!4489187 (= lt!1673578 (lemmaContainsKeyImpliesGetValueByKeyDefined!899 (toList!4218 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))) key!3287))))

(assert (=> b!4489187 (isDefined!8302 (getValueByKey!995 (toList!4218 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))) key!3287))))

(declare-fun lt!1673571 () Unit!90458)

(assert (=> b!4489187 (= lt!1673571 lt!1673578)))

(assert (=> b!4489187 (= lt!1673574 (lemmaInListThenGetKeysListContains!412 (toList!4218 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))) key!3287))))

(assert (=> b!4489187 call!312369))

(declare-fun bm!312364 () Bool)

(assert (=> bm!312364 (= call!312369 (contains!13134 e!2796021 key!3287))))

(declare-fun c!764619 () Bool)

(assert (=> bm!312364 (= c!764619 c!764620)))

(declare-fun b!4489188 () Bool)

(assert (=> b!4489188 (= e!2796021 (getKeysList!416 (toList!4218 (extractMap!1161 (t!357567 (toList!4217 lm!1477))))))))

(declare-fun b!4489189 () Bool)

(assert (=> b!4489189 (= e!2796026 (contains!13134 (keys!17487 (extractMap!1161 (t!357567 (toList!4217 lm!1477)))) key!3287))))

(assert (= (and d!1374665 c!764620) b!4489187))

(assert (= (and d!1374665 (not c!764620)) b!4489181))

(assert (= (and b!4489181 c!764621) b!4489184))

(assert (= (and b!4489181 (not c!764621)) b!4489186))

(assert (= (or b!4489187 b!4489181) bm!312364))

(assert (= (and bm!312364 c!764619) b!4489188))

(assert (= (and bm!312364 (not c!764619)) b!4489182))

(assert (= (and d!1374665 res!1865245) b!4489185))

(assert (= (and d!1374665 (not res!1865243)) b!4489183))

(assert (= (and b!4489183 res!1865244) b!4489189))

(assert (=> b!4489189 m!5211141))

(declare-fun m!5211427 () Bool)

(assert (=> b!4489189 m!5211427))

(assert (=> b!4489189 m!5211427))

(declare-fun m!5211429 () Bool)

(assert (=> b!4489189 m!5211429))

(declare-fun m!5211431 () Bool)

(assert (=> b!4489183 m!5211431))

(assert (=> b!4489183 m!5211431))

(declare-fun m!5211433 () Bool)

(assert (=> b!4489183 m!5211433))

(declare-fun m!5211435 () Bool)

(assert (=> b!4489188 m!5211435))

(assert (=> b!4489182 m!5211141))

(assert (=> b!4489182 m!5211427))

(assert (=> b!4489185 m!5211141))

(assert (=> b!4489185 m!5211427))

(assert (=> b!4489185 m!5211427))

(assert (=> b!4489185 m!5211429))

(declare-fun m!5211437 () Bool)

(assert (=> d!1374665 m!5211437))

(declare-fun m!5211439 () Bool)

(assert (=> b!4489187 m!5211439))

(assert (=> b!4489187 m!5211431))

(assert (=> b!4489187 m!5211431))

(assert (=> b!4489187 m!5211433))

(declare-fun m!5211441 () Bool)

(assert (=> b!4489187 m!5211441))

(assert (=> b!4489184 m!5211437))

(declare-fun m!5211443 () Bool)

(assert (=> b!4489184 m!5211443))

(declare-fun m!5211445 () Bool)

(assert (=> bm!312364 m!5211445))

(assert (=> b!4488974 d!1374665))

(declare-fun bs!827282 () Bool)

(declare-fun d!1374667 () Bool)

(assert (= bs!827282 (and d!1374667 d!1374611)))

(declare-fun lambda!167012 () Int)

(assert (=> bs!827282 (= lambda!167012 lambda!166999)))

(declare-fun bs!827283 () Bool)

(assert (= bs!827283 (and d!1374667 d!1374661)))

(assert (=> bs!827283 (= lambda!167012 lambda!167011)))

(declare-fun bs!827284 () Bool)

(assert (= bs!827284 (and d!1374667 start!442402)))

(assert (=> bs!827284 (= lambda!167012 lambda!166986)))

(declare-fun bs!827285 () Bool)

(assert (= bs!827285 (and d!1374667 d!1374623)))

(assert (=> bs!827285 (= lambda!167012 lambda!167002)))

(declare-fun bs!827286 () Bool)

(assert (= bs!827286 (and d!1374667 d!1374651)))

(assert (=> bs!827286 (not (= lambda!167012 lambda!167008))))

(declare-fun bs!827287 () Bool)

(assert (= bs!827287 (and d!1374667 d!1374647)))

(assert (=> bs!827287 (= lambda!167012 lambda!167005)))

(declare-fun lt!1673579 () ListMap!3479)

(assert (=> d!1374667 (invariantList!968 (toList!4218 lt!1673579))))

(declare-fun e!2796027 () ListMap!3479)

(assert (=> d!1374667 (= lt!1673579 e!2796027)))

(declare-fun c!764622 () Bool)

(assert (=> d!1374667 (= c!764622 (is-Cons!50489 (t!357567 (toList!4217 lm!1477))))))

(assert (=> d!1374667 (forall!10131 (t!357567 (toList!4217 lm!1477)) lambda!167012)))

(assert (=> d!1374667 (= (extractMap!1161 (t!357567 (toList!4217 lm!1477))) lt!1673579)))

(declare-fun b!4489190 () Bool)

(assert (=> b!4489190 (= e!2796027 (addToMapMapFromBucket!636 (_2!28722 (h!56294 (t!357567 (toList!4217 lm!1477)))) (extractMap!1161 (t!357567 (t!357567 (toList!4217 lm!1477))))))))

(declare-fun b!4489191 () Bool)

(assert (=> b!4489191 (= e!2796027 (ListMap!3480 Nil!50488))))

(assert (= (and d!1374667 c!764622) b!4489190))

(assert (= (and d!1374667 (not c!764622)) b!4489191))

(declare-fun m!5211447 () Bool)

(assert (=> d!1374667 m!5211447))

(declare-fun m!5211449 () Bool)

(assert (=> d!1374667 m!5211449))

(declare-fun m!5211451 () Bool)

(assert (=> b!4489190 m!5211451))

(assert (=> b!4489190 m!5211451))

(declare-fun m!5211453 () Bool)

(assert (=> b!4489190 m!5211453))

(assert (=> b!4488974 d!1374667))

(declare-fun b!4489192 () Bool)

(declare-fun e!2796032 () Unit!90458)

(declare-fun e!2796031 () Unit!90458)

(assert (=> b!4489192 (= e!2796032 e!2796031)))

(declare-fun c!764625 () Bool)

(declare-fun call!312370 () Bool)

(assert (=> b!4489192 (= c!764625 call!312370)))

(declare-fun b!4489193 () Bool)

(declare-fun e!2796028 () List!50616)

(assert (=> b!4489193 (= e!2796028 (keys!17487 lt!1673427))))

(declare-fun b!4489194 () Bool)

(declare-fun e!2796029 () Bool)

(declare-fun e!2796033 () Bool)

(assert (=> b!4489194 (= e!2796029 e!2796033)))

(declare-fun res!1865247 () Bool)

(assert (=> b!4489194 (=> (not res!1865247) (not e!2796033))))

(assert (=> b!4489194 (= res!1865247 (isDefined!8302 (getValueByKey!995 (toList!4218 lt!1673427) key!3287)))))

(declare-fun d!1374669 () Bool)

(assert (=> d!1374669 e!2796029))

(declare-fun res!1865246 () Bool)

(assert (=> d!1374669 (=> res!1865246 e!2796029)))

(declare-fun e!2796030 () Bool)

(assert (=> d!1374669 (= res!1865246 e!2796030)))

(declare-fun res!1865248 () Bool)

(assert (=> d!1374669 (=> (not res!1865248) (not e!2796030))))

(declare-fun lt!1673585 () Bool)

(assert (=> d!1374669 (= res!1865248 (not lt!1673585))))

(declare-fun lt!1673582 () Bool)

(assert (=> d!1374669 (= lt!1673585 lt!1673582)))

(declare-fun lt!1673581 () Unit!90458)

(assert (=> d!1374669 (= lt!1673581 e!2796032)))

(declare-fun c!764624 () Bool)

(assert (=> d!1374669 (= c!764624 lt!1673582)))

(assert (=> d!1374669 (= lt!1673582 (containsKey!1632 (toList!4218 lt!1673427) key!3287))))

(assert (=> d!1374669 (= (contains!13130 lt!1673427 key!3287) lt!1673585)))

(declare-fun b!4489195 () Bool)

(assert (=> b!4489195 false))

(declare-fun lt!1673584 () Unit!90458)

(declare-fun lt!1673586 () Unit!90458)

(assert (=> b!4489195 (= lt!1673584 lt!1673586)))

(assert (=> b!4489195 (containsKey!1632 (toList!4218 lt!1673427) key!3287)))

(assert (=> b!4489195 (= lt!1673586 (lemmaInGetKeysListThenContainsKey!415 (toList!4218 lt!1673427) key!3287))))

(declare-fun Unit!90472 () Unit!90458)

(assert (=> b!4489195 (= e!2796031 Unit!90472)))

(declare-fun b!4489196 () Bool)

(assert (=> b!4489196 (= e!2796030 (not (contains!13134 (keys!17487 lt!1673427) key!3287)))))

(declare-fun b!4489197 () Bool)

(declare-fun Unit!90473 () Unit!90458)

(assert (=> b!4489197 (= e!2796031 Unit!90473)))

(declare-fun b!4489198 () Bool)

(declare-fun lt!1673583 () Unit!90458)

(assert (=> b!4489198 (= e!2796032 lt!1673583)))

(declare-fun lt!1673587 () Unit!90458)

(assert (=> b!4489198 (= lt!1673587 (lemmaContainsKeyImpliesGetValueByKeyDefined!899 (toList!4218 lt!1673427) key!3287))))

(assert (=> b!4489198 (isDefined!8302 (getValueByKey!995 (toList!4218 lt!1673427) key!3287))))

(declare-fun lt!1673580 () Unit!90458)

(assert (=> b!4489198 (= lt!1673580 lt!1673587)))

(assert (=> b!4489198 (= lt!1673583 (lemmaInListThenGetKeysListContains!412 (toList!4218 lt!1673427) key!3287))))

(assert (=> b!4489198 call!312370))

(declare-fun bm!312365 () Bool)

(assert (=> bm!312365 (= call!312370 (contains!13134 e!2796028 key!3287))))

(declare-fun c!764623 () Bool)

(assert (=> bm!312365 (= c!764623 c!764624)))

(declare-fun b!4489199 () Bool)

(assert (=> b!4489199 (= e!2796028 (getKeysList!416 (toList!4218 lt!1673427)))))

(declare-fun b!4489200 () Bool)

(assert (=> b!4489200 (= e!2796033 (contains!13134 (keys!17487 lt!1673427) key!3287))))

(assert (= (and d!1374669 c!764624) b!4489198))

(assert (= (and d!1374669 (not c!764624)) b!4489192))

(assert (= (and b!4489192 c!764625) b!4489195))

(assert (= (and b!4489192 (not c!764625)) b!4489197))

(assert (= (or b!4489198 b!4489192) bm!312365))

(assert (= (and bm!312365 c!764623) b!4489199))

(assert (= (and bm!312365 (not c!764623)) b!4489193))

(assert (= (and d!1374669 res!1865248) b!4489196))

(assert (= (and d!1374669 (not res!1865246)) b!4489194))

(assert (= (and b!4489194 res!1865247) b!4489200))

(declare-fun m!5211455 () Bool)

(assert (=> b!4489200 m!5211455))

(assert (=> b!4489200 m!5211455))

(declare-fun m!5211457 () Bool)

(assert (=> b!4489200 m!5211457))

(declare-fun m!5211459 () Bool)

(assert (=> b!4489194 m!5211459))

(assert (=> b!4489194 m!5211459))

(declare-fun m!5211461 () Bool)

(assert (=> b!4489194 m!5211461))

(declare-fun m!5211463 () Bool)

(assert (=> b!4489199 m!5211463))

(assert (=> b!4489193 m!5211455))

(assert (=> b!4489196 m!5211455))

(assert (=> b!4489196 m!5211455))

(assert (=> b!4489196 m!5211457))

(declare-fun m!5211465 () Bool)

(assert (=> d!1374669 m!5211465))

(declare-fun m!5211467 () Bool)

(assert (=> b!4489198 m!5211467))

(assert (=> b!4489198 m!5211459))

(assert (=> b!4489198 m!5211459))

(assert (=> b!4489198 m!5211461))

(declare-fun m!5211469 () Bool)

(assert (=> b!4489198 m!5211469))

(assert (=> b!4489195 m!5211465))

(declare-fun m!5211471 () Bool)

(assert (=> b!4489195 m!5211471))

(declare-fun m!5211473 () Bool)

(assert (=> bm!312365 m!5211473))

(assert (=> b!4488974 d!1374669))

(declare-fun bs!827288 () Bool)

(declare-fun d!1374671 () Bool)

(assert (= bs!827288 (and d!1374671 d!1374611)))

(declare-fun lambda!167013 () Int)

(assert (=> bs!827288 (= lambda!167013 lambda!166999)))

(declare-fun bs!827289 () Bool)

(assert (= bs!827289 (and d!1374671 d!1374661)))

(assert (=> bs!827289 (= lambda!167013 lambda!167011)))

(declare-fun bs!827290 () Bool)

(assert (= bs!827290 (and d!1374671 d!1374667)))

(assert (=> bs!827290 (= lambda!167013 lambda!167012)))

(declare-fun bs!827291 () Bool)

(assert (= bs!827291 (and d!1374671 start!442402)))

(assert (=> bs!827291 (= lambda!167013 lambda!166986)))

(declare-fun bs!827292 () Bool)

(assert (= bs!827292 (and d!1374671 d!1374623)))

(assert (=> bs!827292 (= lambda!167013 lambda!167002)))

(declare-fun bs!827293 () Bool)

(assert (= bs!827293 (and d!1374671 d!1374651)))

(assert (=> bs!827293 (not (= lambda!167013 lambda!167008))))

(declare-fun bs!827294 () Bool)

(assert (= bs!827294 (and d!1374671 d!1374647)))

(assert (=> bs!827294 (= lambda!167013 lambda!167005)))

(declare-fun lt!1673588 () ListMap!3479)

(assert (=> d!1374671 (invariantList!968 (toList!4218 lt!1673588))))

(declare-fun e!2796034 () ListMap!3479)

(assert (=> d!1374671 (= lt!1673588 e!2796034)))

(declare-fun c!764626 () Bool)

(assert (=> d!1374671 (= c!764626 (is-Cons!50489 (toList!4217 lt!1673431)))))

(assert (=> d!1374671 (forall!10131 (toList!4217 lt!1673431) lambda!167013)))

(assert (=> d!1374671 (= (extractMap!1161 (toList!4217 lt!1673431)) lt!1673588)))

(declare-fun b!4489201 () Bool)

(assert (=> b!4489201 (= e!2796034 (addToMapMapFromBucket!636 (_2!28722 (h!56294 (toList!4217 lt!1673431))) (extractMap!1161 (t!357567 (toList!4217 lt!1673431)))))))

(declare-fun b!4489202 () Bool)

(assert (=> b!4489202 (= e!2796034 (ListMap!3480 Nil!50488))))

(assert (= (and d!1374671 c!764626) b!4489201))

(assert (= (and d!1374671 (not c!764626)) b!4489202))

(declare-fun m!5211475 () Bool)

(assert (=> d!1374671 m!5211475))

(declare-fun m!5211477 () Bool)

(assert (=> d!1374671 m!5211477))

(declare-fun m!5211479 () Bool)

(assert (=> b!4489201 m!5211479))

(assert (=> b!4489201 m!5211479))

(declare-fun m!5211481 () Bool)

(assert (=> b!4489201 m!5211481))

(assert (=> b!4488974 d!1374671))

(declare-fun bs!827295 () Bool)

(declare-fun d!1374673 () Bool)

(assert (= bs!827295 (and d!1374673 d!1374611)))

(declare-fun lambda!167016 () Int)

(assert (=> bs!827295 (= lambda!167016 lambda!166999)))

(declare-fun bs!827296 () Bool)

(assert (= bs!827296 (and d!1374673 d!1374661)))

(assert (=> bs!827296 (= lambda!167016 lambda!167011)))

(declare-fun bs!827297 () Bool)

(assert (= bs!827297 (and d!1374673 d!1374667)))

(assert (=> bs!827297 (= lambda!167016 lambda!167012)))

(declare-fun bs!827298 () Bool)

(assert (= bs!827298 (and d!1374673 d!1374623)))

(assert (=> bs!827298 (= lambda!167016 lambda!167002)))

(declare-fun bs!827299 () Bool)

(assert (= bs!827299 (and d!1374673 d!1374651)))

(assert (=> bs!827299 (not (= lambda!167016 lambda!167008))))

(declare-fun bs!827300 () Bool)

(assert (= bs!827300 (and d!1374673 d!1374647)))

(assert (=> bs!827300 (= lambda!167016 lambda!167005)))

(declare-fun bs!827301 () Bool)

(assert (= bs!827301 (and d!1374673 d!1374671)))

(assert (=> bs!827301 (= lambda!167016 lambda!167013)))

(declare-fun bs!827302 () Bool)

(assert (= bs!827302 (and d!1374673 start!442402)))

(assert (=> bs!827302 (= lambda!167016 lambda!166986)))

(assert (=> d!1374673 (contains!13130 (extractMap!1161 (toList!4217 lt!1673431)) key!3287)))

(declare-fun lt!1673591 () Unit!90458)

(declare-fun choose!28935 (ListLongMap!2849 K!11903 Hashable!5500) Unit!90458)

(assert (=> d!1374673 (= lt!1673591 (choose!28935 lt!1673431 key!3287 hashF!1107))))

(assert (=> d!1374673 (forall!10131 (toList!4217 lt!1673431) lambda!167016)))

(assert (=> d!1374673 (= (lemmaListContainsThenExtractedMapContains!75 lt!1673431 key!3287 hashF!1107) lt!1673591)))

(declare-fun bs!827303 () Bool)

(assert (= bs!827303 d!1374673))

(assert (=> bs!827303 m!5211139))

(assert (=> bs!827303 m!5211139))

(declare-fun m!5211483 () Bool)

(assert (=> bs!827303 m!5211483))

(declare-fun m!5211485 () Bool)

(assert (=> bs!827303 m!5211485))

(declare-fun m!5211487 () Bool)

(assert (=> bs!827303 m!5211487))

(assert (=> b!4488974 d!1374673))

(declare-fun d!1374675 () Bool)

(declare-fun content!8213 (List!50612) (Set tuple2!50854))

(assert (=> d!1374675 (= (eq!562 (extractMap!1161 (toList!4217 (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178)))) (-!331 lt!1673427 key!3287)) (= (content!8213 (toList!4218 (extractMap!1161 (toList!4217 (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178)))))) (content!8213 (toList!4218 (-!331 lt!1673427 key!3287)))))))

(declare-fun bs!827304 () Bool)

(assert (= bs!827304 d!1374675))

(declare-fun m!5211489 () Bool)

(assert (=> bs!827304 m!5211489))

(declare-fun m!5211491 () Bool)

(assert (=> bs!827304 m!5211491))

(assert (=> b!4488976 d!1374675))

(declare-fun bs!827308 () Bool)

(declare-fun d!1374677 () Bool)

(assert (= bs!827308 (and d!1374677 d!1374611)))

(declare-fun lambda!167022 () Int)

(assert (=> bs!827308 (= lambda!167022 lambda!166999)))

(declare-fun bs!827309 () Bool)

(assert (= bs!827309 (and d!1374677 d!1374661)))

(assert (=> bs!827309 (= lambda!167022 lambda!167011)))

(declare-fun bs!827310 () Bool)

(assert (= bs!827310 (and d!1374677 d!1374667)))

(assert (=> bs!827310 (= lambda!167022 lambda!167012)))

(declare-fun bs!827311 () Bool)

(assert (= bs!827311 (and d!1374677 d!1374623)))

(assert (=> bs!827311 (= lambda!167022 lambda!167002)))

(declare-fun bs!827312 () Bool)

(assert (= bs!827312 (and d!1374677 d!1374651)))

(assert (=> bs!827312 (not (= lambda!167022 lambda!167008))))

(declare-fun bs!827313 () Bool)

(assert (= bs!827313 (and d!1374677 d!1374673)))

(assert (=> bs!827313 (= lambda!167022 lambda!167016)))

(declare-fun bs!827314 () Bool)

(assert (= bs!827314 (and d!1374677 d!1374647)))

(assert (=> bs!827314 (= lambda!167022 lambda!167005)))

(declare-fun bs!827315 () Bool)

(assert (= bs!827315 (and d!1374677 d!1374671)))

(assert (=> bs!827315 (= lambda!167022 lambda!167013)))

(declare-fun bs!827316 () Bool)

(assert (= bs!827316 (and d!1374677 start!442402)))

(assert (=> bs!827316 (= lambda!167022 lambda!166986)))

(assert (=> d!1374677 (eq!562 (extractMap!1161 (toList!4217 (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178)))) (-!331 (extractMap!1161 (toList!4217 lt!1673431)) key!3287))))

(declare-fun lt!1673597 () Unit!90458)

(declare-fun choose!28937 (ListLongMap!2849 (_ BitVec 64) List!50612 K!11903 Hashable!5500) Unit!90458)

(assert (=> d!1374677 (= lt!1673597 (choose!28937 lt!1673431 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1374677 (forall!10131 (toList!4217 lt!1673431) lambda!167022)))

(assert (=> d!1374677 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!90 lt!1673431 hash!344 newBucket!178 key!3287 hashF!1107) lt!1673597)))

(declare-fun bs!827317 () Bool)

(assert (= bs!827317 d!1374677))

(assert (=> bs!827317 m!5211175))

(assert (=> bs!827317 m!5211139))

(declare-fun m!5211501 () Bool)

(assert (=> bs!827317 m!5211501))

(declare-fun m!5211503 () Bool)

(assert (=> bs!827317 m!5211503))

(assert (=> bs!827317 m!5211173))

(assert (=> bs!827317 m!5211139))

(assert (=> bs!827317 m!5211175))

(assert (=> bs!827317 m!5211501))

(declare-fun m!5211505 () Bool)

(assert (=> bs!827317 m!5211505))

(declare-fun m!5211507 () Bool)

(assert (=> bs!827317 m!5211507))

(assert (=> b!4488976 d!1374677))

(declare-fun d!1374681 () Bool)

(declare-fun e!2796040 () Bool)

(assert (=> d!1374681 e!2796040))

(declare-fun res!1865254 () Bool)

(assert (=> d!1374681 (=> (not res!1865254) (not e!2796040))))

(declare-fun lt!1673603 () ListMap!3479)

(assert (=> d!1374681 (= res!1865254 (not (contains!13130 lt!1673603 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!92 (List!50612 K!11903) List!50612)

(assert (=> d!1374681 (= lt!1673603 (ListMap!3480 (removePresrvNoDuplicatedKeys!92 (toList!4218 lt!1673427) key!3287)))))

(assert (=> d!1374681 (= (-!331 lt!1673427 key!3287) lt!1673603)))

(declare-fun b!4489208 () Bool)

(declare-fun content!8214 (List!50616) (Set K!11903))

(assert (=> b!4489208 (= e!2796040 (= (set.minus (content!8214 (keys!17487 lt!1673427)) (set.insert key!3287 (as set.empty (Set K!11903)))) (content!8214 (keys!17487 lt!1673603))))))

(assert (= (and d!1374681 res!1865254) b!4489208))

(declare-fun m!5211523 () Bool)

(assert (=> d!1374681 m!5211523))

(declare-fun m!5211525 () Bool)

(assert (=> d!1374681 m!5211525))

(assert (=> b!4489208 m!5211455))

(declare-fun m!5211527 () Bool)

(assert (=> b!4489208 m!5211527))

(declare-fun m!5211529 () Bool)

(assert (=> b!4489208 m!5211529))

(declare-fun m!5211531 () Bool)

(assert (=> b!4489208 m!5211531))

(declare-fun m!5211533 () Bool)

(assert (=> b!4489208 m!5211533))

(assert (=> b!4489208 m!5211531))

(assert (=> b!4489208 m!5211455))

(assert (=> b!4488976 d!1374681))

(declare-fun bs!827318 () Bool)

(declare-fun d!1374685 () Bool)

(assert (= bs!827318 (and d!1374685 d!1374611)))

(declare-fun lambda!167023 () Int)

(assert (=> bs!827318 (= lambda!167023 lambda!166999)))

(declare-fun bs!827319 () Bool)

(assert (= bs!827319 (and d!1374685 d!1374661)))

(assert (=> bs!827319 (= lambda!167023 lambda!167011)))

(declare-fun bs!827320 () Bool)

(assert (= bs!827320 (and d!1374685 d!1374677)))

(assert (=> bs!827320 (= lambda!167023 lambda!167022)))

(declare-fun bs!827321 () Bool)

(assert (= bs!827321 (and d!1374685 d!1374667)))

(assert (=> bs!827321 (= lambda!167023 lambda!167012)))

(declare-fun bs!827322 () Bool)

(assert (= bs!827322 (and d!1374685 d!1374623)))

(assert (=> bs!827322 (= lambda!167023 lambda!167002)))

(declare-fun bs!827323 () Bool)

(assert (= bs!827323 (and d!1374685 d!1374651)))

(assert (=> bs!827323 (not (= lambda!167023 lambda!167008))))

(declare-fun bs!827324 () Bool)

(assert (= bs!827324 (and d!1374685 d!1374673)))

(assert (=> bs!827324 (= lambda!167023 lambda!167016)))

(declare-fun bs!827325 () Bool)

(assert (= bs!827325 (and d!1374685 d!1374647)))

(assert (=> bs!827325 (= lambda!167023 lambda!167005)))

(declare-fun bs!827326 () Bool)

(assert (= bs!827326 (and d!1374685 d!1374671)))

(assert (=> bs!827326 (= lambda!167023 lambda!167013)))

(declare-fun bs!827327 () Bool)

(assert (= bs!827327 (and d!1374685 start!442402)))

(assert (=> bs!827327 (= lambda!167023 lambda!166986)))

(declare-fun lt!1673604 () ListMap!3479)

(assert (=> d!1374685 (invariantList!968 (toList!4218 lt!1673604))))

(declare-fun e!2796041 () ListMap!3479)

(assert (=> d!1374685 (= lt!1673604 e!2796041)))

(declare-fun c!764627 () Bool)

(assert (=> d!1374685 (= c!764627 (is-Cons!50489 (toList!4217 (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178)))))))

(assert (=> d!1374685 (forall!10131 (toList!4217 (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178))) lambda!167023)))

(assert (=> d!1374685 (= (extractMap!1161 (toList!4217 (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178)))) lt!1673604)))

(declare-fun b!4489209 () Bool)

(assert (=> b!4489209 (= e!2796041 (addToMapMapFromBucket!636 (_2!28722 (h!56294 (toList!4217 (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178))))) (extractMap!1161 (t!357567 (toList!4217 (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178)))))))))

(declare-fun b!4489210 () Bool)

(assert (=> b!4489210 (= e!2796041 (ListMap!3480 Nil!50488))))

(assert (= (and d!1374685 c!764627) b!4489209))

(assert (= (and d!1374685 (not c!764627)) b!4489210))

(declare-fun m!5211535 () Bool)

(assert (=> d!1374685 m!5211535))

(declare-fun m!5211537 () Bool)

(assert (=> d!1374685 m!5211537))

(declare-fun m!5211539 () Bool)

(assert (=> b!4489209 m!5211539))

(assert (=> b!4489209 m!5211539))

(declare-fun m!5211541 () Bool)

(assert (=> b!4489209 m!5211541))

(assert (=> b!4488976 d!1374685))

(declare-fun d!1374687 () Bool)

(declare-fun res!1865255 () Bool)

(declare-fun e!2796042 () Bool)

(assert (=> d!1374687 (=> res!1865255 e!2796042)))

(assert (=> d!1374687 (= res!1865255 (is-Nil!50489 (toList!4217 lt!1673431)))))

(assert (=> d!1374687 (= (forall!10131 (toList!4217 lt!1673431) lambda!166986) e!2796042)))

(declare-fun b!4489211 () Bool)

(declare-fun e!2796043 () Bool)

(assert (=> b!4489211 (= e!2796042 e!2796043)))

(declare-fun res!1865256 () Bool)

(assert (=> b!4489211 (=> (not res!1865256) (not e!2796043))))

(assert (=> b!4489211 (= res!1865256 (dynLambda!21076 lambda!166986 (h!56294 (toList!4217 lt!1673431))))))

(declare-fun b!4489212 () Bool)

(assert (=> b!4489212 (= e!2796043 (forall!10131 (t!357567 (toList!4217 lt!1673431)) lambda!166986))))

(assert (= (and d!1374687 (not res!1865255)) b!4489211))

(assert (= (and b!4489211 res!1865256) b!4489212))

(declare-fun b_lambda!150913 () Bool)

(assert (=> (not b_lambda!150913) (not b!4489211)))

(declare-fun m!5211543 () Bool)

(assert (=> b!4489211 m!5211543))

(declare-fun m!5211545 () Bool)

(assert (=> b!4489212 m!5211545))

(assert (=> b!4488976 d!1374687))

(declare-fun d!1374689 () Bool)

(declare-fun e!2796046 () Bool)

(assert (=> d!1374689 e!2796046))

(declare-fun res!1865261 () Bool)

(assert (=> d!1374689 (=> (not res!1865261) (not e!2796046))))

(declare-fun lt!1673613 () ListLongMap!2849)

(assert (=> d!1374689 (= res!1865261 (contains!13129 lt!1673613 (_1!28722 (tuple2!50857 hash!344 newBucket!178))))))

(declare-fun lt!1673614 () List!50613)

(assert (=> d!1374689 (= lt!1673613 (ListLongMap!2850 lt!1673614))))

(declare-fun lt!1673616 () Unit!90458)

(declare-fun lt!1673615 () Unit!90458)

(assert (=> d!1374689 (= lt!1673616 lt!1673615)))

(assert (=> d!1374689 (= (getValueByKey!994 lt!1673614 (_1!28722 (tuple2!50857 hash!344 newBucket!178))) (Some!11013 (_2!28722 (tuple2!50857 hash!344 newBucket!178))))))

(declare-fun lemmaContainsTupThenGetReturnValue!615 (List!50613 (_ BitVec 64) List!50612) Unit!90458)

(assert (=> d!1374689 (= lt!1673615 (lemmaContainsTupThenGetReturnValue!615 lt!1673614 (_1!28722 (tuple2!50857 hash!344 newBucket!178)) (_2!28722 (tuple2!50857 hash!344 newBucket!178))))))

(declare-fun insertStrictlySorted!359 (List!50613 (_ BitVec 64) List!50612) List!50613)

(assert (=> d!1374689 (= lt!1673614 (insertStrictlySorted!359 (toList!4217 lt!1673431) (_1!28722 (tuple2!50857 hash!344 newBucket!178)) (_2!28722 (tuple2!50857 hash!344 newBucket!178))))))

(assert (=> d!1374689 (= (+!1441 lt!1673431 (tuple2!50857 hash!344 newBucket!178)) lt!1673613)))

(declare-fun b!4489217 () Bool)

(declare-fun res!1865262 () Bool)

(assert (=> b!4489217 (=> (not res!1865262) (not e!2796046))))

(assert (=> b!4489217 (= res!1865262 (= (getValueByKey!994 (toList!4217 lt!1673613) (_1!28722 (tuple2!50857 hash!344 newBucket!178))) (Some!11013 (_2!28722 (tuple2!50857 hash!344 newBucket!178)))))))

(declare-fun b!4489218 () Bool)

(assert (=> b!4489218 (= e!2796046 (contains!13128 (toList!4217 lt!1673613) (tuple2!50857 hash!344 newBucket!178)))))

(assert (= (and d!1374689 res!1865261) b!4489217))

(assert (= (and b!4489217 res!1865262) b!4489218))

(declare-fun m!5211547 () Bool)

(assert (=> d!1374689 m!5211547))

(declare-fun m!5211549 () Bool)

(assert (=> d!1374689 m!5211549))

(declare-fun m!5211551 () Bool)

(assert (=> d!1374689 m!5211551))

(declare-fun m!5211553 () Bool)

(assert (=> d!1374689 m!5211553))

(declare-fun m!5211555 () Bool)

(assert (=> b!4489217 m!5211555))

(declare-fun m!5211557 () Bool)

(assert (=> b!4489218 m!5211557))

(assert (=> b!4488976 d!1374689))

(declare-fun d!1374691 () Bool)

(declare-fun hash!2630 (Hashable!5500 K!11903) (_ BitVec 64))

(assert (=> d!1374691 (= (hash!2626 hashF!1107 key!3287) (hash!2630 hashF!1107 key!3287))))

(declare-fun bs!827328 () Bool)

(assert (= bs!827328 d!1374691))

(declare-fun m!5211559 () Bool)

(assert (=> bs!827328 m!5211559))

(assert (=> b!4488977 d!1374691))

(declare-fun d!1374693 () Bool)

(assert (=> d!1374693 true))

(assert (=> d!1374693 true))

(declare-fun lambda!167026 () Int)

(declare-fun forall!10133 (List!50612 Int) Bool)

(assert (=> d!1374693 (= (allKeysSameHash!959 newBucket!178 hash!344 hashF!1107) (forall!10133 newBucket!178 lambda!167026))))

(declare-fun bs!827329 () Bool)

(assert (= bs!827329 d!1374693))

(declare-fun m!5211561 () Bool)

(assert (=> bs!827329 m!5211561))

(assert (=> b!4488967 d!1374693))

(declare-fun b!4489227 () Bool)

(declare-fun tp!1337188 () Bool)

(declare-fun e!2796049 () Bool)

(assert (=> b!4489227 (= e!2796049 (and tp_is_empty!27697 tp_is_empty!27699 tp!1337188))))

(assert (=> b!4488979 (= tp!1337178 e!2796049)))

(assert (= (and b!4488979 (is-Cons!50488 (t!357566 newBucket!178))) b!4489227))

(declare-fun b!4489232 () Bool)

(declare-fun e!2796052 () Bool)

(declare-fun tp!1337193 () Bool)

(declare-fun tp!1337194 () Bool)

(assert (=> b!4489232 (= e!2796052 (and tp!1337193 tp!1337194))))

(assert (=> b!4488975 (= tp!1337179 e!2796052)))

(assert (= (and b!4488975 (is-Cons!50489 (toList!4217 lm!1477))) b!4489232))

(declare-fun b_lambda!150915 () Bool)

(assert (= b_lambda!150905 (or start!442402 b_lambda!150915)))

(declare-fun bs!827330 () Bool)

(declare-fun d!1374695 () Bool)

(assert (= bs!827330 (and d!1374695 start!442402)))

(assert (=> bs!827330 (= (dynLambda!21076 lambda!166986 (h!56294 (toList!4217 lm!1477))) (noDuplicateKeys!1105 (_2!28722 (h!56294 (toList!4217 lm!1477)))))))

(declare-fun m!5211563 () Bool)

(assert (=> bs!827330 m!5211563))

(assert (=> b!4489060 d!1374695))

(declare-fun b_lambda!150917 () Bool)

(assert (= b_lambda!150913 (or start!442402 b_lambda!150917)))

(declare-fun bs!827331 () Bool)

(declare-fun d!1374697 () Bool)

(assert (= bs!827331 (and d!1374697 start!442402)))

(assert (=> bs!827331 (= (dynLambda!21076 lambda!166986 (h!56294 (toList!4217 lt!1673431))) (noDuplicateKeys!1105 (_2!28722 (h!56294 (toList!4217 lt!1673431)))))))

(declare-fun m!5211565 () Bool)

(assert (=> bs!827331 m!5211565))

(assert (=> b!4489211 d!1374697))

(declare-fun b_lambda!150919 () Bool)

(assert (= b_lambda!150907 (or start!442402 b_lambda!150919)))

(declare-fun bs!827332 () Bool)

(declare-fun d!1374699 () Bool)

(assert (= bs!827332 (and d!1374699 start!442402)))

(assert (=> bs!827332 (= (dynLambda!21076 lambda!166986 lt!1673429) (noDuplicateKeys!1105 (_2!28722 lt!1673429)))))

(declare-fun m!5211567 () Bool)

(assert (=> bs!827332 m!5211567))

(assert (=> d!1374629 d!1374699))

(push 1)

(assert (not d!1374627))

(assert (not d!1374663))

(assert (not b!4489194))

(assert (not b!4489068))

(assert (not b!4489168))

(assert (not d!1374693))

(assert (not d!1374685))

(assert (not b!4489179))

(assert (not b!4489190))

(assert (not b!4489120))

(assert (not b!4489189))

(assert (not b!4489218))

(assert (not d!1374619))

(assert (not bm!312363))

(assert (not b!4489217))

(assert (not b!4489188))

(assert (not b!4489232))

(assert (not b!4489077))

(assert (not b!4489065))

(assert (not bm!312365))

(assert (not d!1374689))

(assert (not b!4489209))

(assert (not b!4489212))

(assert (not b!4489198))

(assert (not bs!827331))

(assert (not d!1374631))

(assert (not b!4489227))

(assert (not b!4489100))

(assert (not d!1374673))

(assert (not b!4489130))

(assert (not b!4489196))

(assert (not b!4489091))

(assert (not d!1374675))

(assert (not d!1374635))

(assert (not b!4489170))

(assert (not d!1374671))

(assert (not bs!827332))

(assert (not d!1374603))

(assert (not d!1374667))

(assert (not d!1374661))

(assert tp_is_empty!27699)

(assert (not b!4489098))

(assert (not d!1374653))

(assert (not d!1374669))

(assert (not b!4489045))

(assert (not b!4489200))

(assert (not b!4489173))

(assert (not b!4489061))

(assert (not d!1374681))

(assert (not d!1374609))

(assert (not d!1374691))

(assert (not d!1374625))

(assert (not bm!312364))

(assert (not b!4489132))

(assert (not b!4489105))

(assert (not b!4489127))

(assert (not b!4489169))

(assert (not b!4489208))

(assert (not d!1374651))

(assert (not b!4489201))

(assert (not b!4489195))

(assert (not d!1374637))

(assert (not b!4489187))

(assert (not b_lambda!150915))

(assert (not b!4489106))

(assert (not d!1374617))

(assert (not b!4489199))

(assert (not b!4489167))

(assert (not b!4489193))

(assert (not b!4489183))

(assert (not bs!827330))

(assert (not b!4489066))

(assert (not b!4489172))

(assert (not b!4489129))

(assert (not d!1374647))

(assert tp_is_empty!27697)

(assert (not b!4489047))

(assert (not b!4489182))

(assert (not d!1374623))

(assert (not d!1374629))

(assert (not b_lambda!150917))

(assert (not d!1374611))

(assert (not b!4489184))

(assert (not b!4489174))

(assert (not d!1374665))

(assert (not b_lambda!150919))

(assert (not b!4489185))

(assert (not d!1374677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

