; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!500676 () Bool)

(assert start!500676)

(declare-fun b!4825659 () Bool)

(declare-fun e!3015299 () Bool)

(declare-fun tp!1362586 () Bool)

(assert (=> b!4825659 (= e!3015299 tp!1362586)))

(declare-fun b!4825660 () Bool)

(declare-fun res!2054511 () Bool)

(declare-fun e!3015301 () Bool)

(assert (=> b!4825660 (=> (not res!2054511) (not e!3015301))))

(declare-datatypes ((K!16654 0))(
  ( (K!16655 (val!21629 Int)) )
))
(declare-fun key!5428 () K!16654)

(declare-datatypes ((V!16900 0))(
  ( (V!16901 (val!21630 Int)) )
))
(declare-datatypes ((tuple2!58194 0))(
  ( (tuple2!58195 (_1!32391 K!16654) (_2!32391 V!16900)) )
))
(declare-datatypes ((List!55096 0))(
  ( (Nil!54972) (Cons!54972 (h!61406 tuple2!58194) (t!362592 List!55096)) )
))
(declare-datatypes ((tuple2!58196 0))(
  ( (tuple2!58197 (_1!32392 (_ BitVec 64)) (_2!32392 List!55096)) )
))
(declare-datatypes ((List!55097 0))(
  ( (Nil!54973) (Cons!54973 (h!61407 tuple2!58196) (t!362593 List!55097)) )
))
(declare-datatypes ((ListLongMap!5995 0))(
  ( (ListLongMap!5996 (toList!7479 List!55097)) )
))
(declare-fun lm!2280 () ListLongMap!5995)

(declare-fun lt!1973034 () (_ BitVec 64))

(declare-fun containsKey!4371 (List!55096 K!16654) Bool)

(declare-fun apply!13353 (ListLongMap!5995 (_ BitVec 64)) List!55096)

(assert (=> b!4825660 (= res!2054511 (not (containsKey!4371 (apply!13353 lm!2280 lt!1973034) key!5428)))))

(declare-fun b!4825661 () Bool)

(declare-fun e!3015300 () Bool)

(assert (=> b!4825661 (= e!3015301 (not e!3015300))))

(declare-fun res!2054507 () Bool)

(assert (=> b!4825661 (=> res!2054507 e!3015300)))

(declare-fun lt!1973030 () ListLongMap!5995)

(declare-fun lambda!236652 () Int)

(declare-fun forall!12608 (List!55097 Int) Bool)

(assert (=> b!4825661 (= res!2054507 (not (forall!12608 (toList!7479 lt!1973030) lambda!236652)))))

(declare-fun tail!9412 (ListLongMap!5995) ListLongMap!5995)

(assert (=> b!4825661 (= lt!1973030 (tail!9412 lm!2280))))

(declare-fun e!3015297 () Bool)

(declare-datatypes ((ListMap!6857 0))(
  ( (ListMap!6858 (toList!7480 List!55096)) )
))
(declare-fun lt!1973032 () ListMap!6857)

(declare-fun contains!18780 (ListMap!6857 K!16654) Bool)

(declare-fun addToMapMapFromBucket!1798 (List!55096 ListMap!6857) ListMap!6857)

(assert (=> b!4825661 (= (contains!18780 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032) key!5428) e!3015297)))

(declare-fun res!2054508 () Bool)

(assert (=> b!4825661 (=> res!2054508 e!3015297)))

(assert (=> b!4825661 (= res!2054508 (containsKey!4371 (_2!32392 (h!61407 (toList!7479 lm!2280))) key!5428))))

(declare-datatypes ((Unit!143029 0))(
  ( (Unit!143030) )
))
(declare-fun lt!1973029 () Unit!143029)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!24 (List!55096 ListMap!6857 K!16654) Unit!143029)

(assert (=> b!4825661 (= lt!1973029 (lemmaAddToMapFromBucketContainsIIFInAccOrL!24 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032 key!5428))))

(declare-fun extractMap!2680 (List!55097) ListMap!6857)

(assert (=> b!4825661 (= lt!1973032 (extractMap!2680 (t!362593 (toList!7479 lm!2280))))))

(assert (=> b!4825661 (not (containsKey!4371 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280)))) key!5428))))

(declare-fun lt!1973033 () Unit!143029)

(declare-datatypes ((Hashable!7266 0))(
  ( (HashableExt!7265 (__x!33541 Int)) )
))
(declare-fun hashF!1509 () Hashable!7266)

(declare-fun lemmaNotSameHashThenCannotContainKey!224 (ListLongMap!5995 K!16654 (_ BitVec 64) Hashable!7266) Unit!143029)

(assert (=> b!4825661 (= lt!1973033 (lemmaNotSameHashThenCannotContainKey!224 lm!2280 key!5428 (_1!32392 (h!61407 (toList!7479 lm!2280))) hashF!1509))))

(declare-fun b!4825662 () Bool)

(declare-fun e!3015298 () Bool)

(assert (=> b!4825662 (= e!3015298 e!3015301)))

(declare-fun res!2054504 () Bool)

(assert (=> b!4825662 (=> (not res!2054504) (not e!3015301))))

(declare-fun contains!18781 (ListLongMap!5995 (_ BitVec 64)) Bool)

(assert (=> b!4825662 (= res!2054504 (contains!18781 lm!2280 lt!1973034))))

(declare-fun hash!5400 (Hashable!7266 K!16654) (_ BitVec 64))

(assert (=> b!4825662 (= lt!1973034 (hash!5400 hashF!1509 key!5428))))

(declare-fun b!4825663 () Bool)

(declare-fun res!2054510 () Bool)

(assert (=> b!4825663 (=> res!2054510 e!3015300)))

(assert (=> b!4825663 (= res!2054510 (containsKey!4371 (apply!13353 lt!1973030 lt!1973034) key!5428))))

(declare-fun b!4825665 () Bool)

(declare-fun res!2054505 () Bool)

(assert (=> b!4825665 (=> (not res!2054505) (not e!3015298))))

(declare-fun allKeysSameHashInMap!2582 (ListLongMap!5995 Hashable!7266) Bool)

(assert (=> b!4825665 (= res!2054505 (allKeysSameHashInMap!2582 lm!2280 hashF!1509))))

(declare-fun b!4825666 () Bool)

(assert (=> b!4825666 (= e!3015300 (not (contains!18780 (extractMap!2680 (toList!7479 lm!2280)) key!5428)))))

(assert (=> b!4825666 (not (contains!18780 (extractMap!2680 (toList!7479 lt!1973030)) key!5428))))

(declare-fun lt!1973031 () Unit!143029)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!450 (ListLongMap!5995 K!16654 Hashable!7266) Unit!143029)

(assert (=> b!4825666 (= lt!1973031 (lemmaNotInItsHashBucketThenNotInMap!450 lt!1973030 key!5428 hashF!1509))))

(declare-fun b!4825667 () Bool)

(assert (=> b!4825667 (= e!3015297 (contains!18780 lt!1973032 key!5428))))

(declare-fun b!4825668 () Bool)

(declare-fun res!2054502 () Bool)

(assert (=> b!4825668 (=> res!2054502 e!3015300)))

(assert (=> b!4825668 (= res!2054502 (not (allKeysSameHashInMap!2582 lt!1973030 hashF!1509)))))

(declare-fun b!4825669 () Bool)

(declare-fun res!2054506 () Bool)

(assert (=> b!4825669 (=> (not res!2054506) (not e!3015301))))

(get-info :version)

(assert (=> b!4825669 (= res!2054506 (and (or (not ((_ is Cons!54973) (toList!7479 lm!2280))) (not (= (_1!32392 (h!61407 (toList!7479 lm!2280))) lt!1973034))) ((_ is Cons!54973) (toList!7479 lm!2280)) (not (= (_1!32392 (h!61407 (toList!7479 lm!2280))) lt!1973034))))))

(declare-fun b!4825664 () Bool)

(declare-fun res!2054503 () Bool)

(assert (=> b!4825664 (=> res!2054503 e!3015300)))

(assert (=> b!4825664 (= res!2054503 (not (contains!18781 lt!1973030 lt!1973034)))))

(declare-fun res!2054509 () Bool)

(assert (=> start!500676 (=> (not res!2054509) (not e!3015298))))

(assert (=> start!500676 (= res!2054509 (forall!12608 (toList!7479 lm!2280) lambda!236652))))

(assert (=> start!500676 e!3015298))

(declare-fun inv!70554 (ListLongMap!5995) Bool)

(assert (=> start!500676 (and (inv!70554 lm!2280) e!3015299)))

(assert (=> start!500676 true))

(declare-fun tp_is_empty!34459 () Bool)

(assert (=> start!500676 tp_is_empty!34459))

(assert (= (and start!500676 res!2054509) b!4825665))

(assert (= (and b!4825665 res!2054505) b!4825662))

(assert (= (and b!4825662 res!2054504) b!4825660))

(assert (= (and b!4825660 res!2054511) b!4825669))

(assert (= (and b!4825669 res!2054506) b!4825661))

(assert (= (and b!4825661 (not res!2054508)) b!4825667))

(assert (= (and b!4825661 (not res!2054507)) b!4825668))

(assert (= (and b!4825668 (not res!2054502)) b!4825664))

(assert (= (and b!4825664 (not res!2054503)) b!4825663))

(assert (= (and b!4825663 (not res!2054510)) b!4825666))

(assert (= start!500676 b!4825659))

(declare-fun m!5815976 () Bool)

(assert (=> b!4825667 m!5815976))

(declare-fun m!5815978 () Bool)

(assert (=> b!4825664 m!5815978))

(declare-fun m!5815980 () Bool)

(assert (=> b!4825665 m!5815980))

(declare-fun m!5815982 () Bool)

(assert (=> b!4825662 m!5815982))

(declare-fun m!5815984 () Bool)

(assert (=> b!4825662 m!5815984))

(declare-fun m!5815986 () Bool)

(assert (=> b!4825666 m!5815986))

(declare-fun m!5815988 () Bool)

(assert (=> b!4825666 m!5815988))

(declare-fun m!5815990 () Bool)

(assert (=> b!4825666 m!5815990))

(declare-fun m!5815992 () Bool)

(assert (=> b!4825666 m!5815992))

(declare-fun m!5815994 () Bool)

(assert (=> b!4825666 m!5815994))

(assert (=> b!4825666 m!5815992))

(assert (=> b!4825666 m!5815986))

(declare-fun m!5815996 () Bool)

(assert (=> b!4825663 m!5815996))

(assert (=> b!4825663 m!5815996))

(declare-fun m!5815998 () Bool)

(assert (=> b!4825663 m!5815998))

(declare-fun m!5816000 () Bool)

(assert (=> b!4825668 m!5816000))

(declare-fun m!5816002 () Bool)

(assert (=> b!4825660 m!5816002))

(assert (=> b!4825660 m!5816002))

(declare-fun m!5816004 () Bool)

(assert (=> b!4825660 m!5816004))

(declare-fun m!5816006 () Bool)

(assert (=> b!4825661 m!5816006))

(declare-fun m!5816008 () Bool)

(assert (=> b!4825661 m!5816008))

(declare-fun m!5816010 () Bool)

(assert (=> b!4825661 m!5816010))

(assert (=> b!4825661 m!5816008))

(declare-fun m!5816012 () Bool)

(assert (=> b!4825661 m!5816012))

(declare-fun m!5816014 () Bool)

(assert (=> b!4825661 m!5816014))

(declare-fun m!5816016 () Bool)

(assert (=> b!4825661 m!5816016))

(declare-fun m!5816018 () Bool)

(assert (=> b!4825661 m!5816018))

(declare-fun m!5816020 () Bool)

(assert (=> b!4825661 m!5816020))

(declare-fun m!5816022 () Bool)

(assert (=> b!4825661 m!5816022))

(declare-fun m!5816024 () Bool)

(assert (=> b!4825661 m!5816024))

(assert (=> b!4825661 m!5816014))

(declare-fun m!5816026 () Bool)

(assert (=> start!500676 m!5816026))

(declare-fun m!5816028 () Bool)

(assert (=> start!500676 m!5816028))

(check-sat (not start!500676) (not b!4825668) (not b!4825663) (not b!4825667) (not b!4825666) (not b!4825664) (not b!4825661) tp_is_empty!34459 (not b!4825659) (not b!4825660) (not b!4825662) (not b!4825665))
(check-sat)
(get-model)

(declare-fun b!4825723 () Bool)

(declare-fun e!3015336 () Unit!143029)

(declare-fun Unit!143038 () Unit!143029)

(assert (=> b!4825723 (= e!3015336 Unit!143038)))

(declare-fun b!4825724 () Bool)

(declare-fun e!3015340 () Bool)

(declare-datatypes ((List!55099 0))(
  ( (Nil!54975) (Cons!54975 (h!61409 K!16654) (t!362595 List!55099)) )
))
(declare-fun contains!18783 (List!55099 K!16654) Bool)

(declare-fun keys!20227 (ListMap!6857) List!55099)

(assert (=> b!4825724 (= e!3015340 (contains!18783 (keys!20227 lt!1973032) key!5428))))

(declare-fun bm!336366 () Bool)

(declare-fun call!336371 () Bool)

(declare-fun e!3015335 () List!55099)

(assert (=> bm!336366 (= call!336371 (contains!18783 e!3015335 key!5428))))

(declare-fun c!822295 () Bool)

(declare-fun c!822293 () Bool)

(assert (=> bm!336366 (= c!822295 c!822293)))

(declare-fun b!4825725 () Bool)

(declare-fun e!3015338 () Unit!143029)

(assert (=> b!4825725 (= e!3015338 e!3015336)))

(declare-fun c!822294 () Bool)

(assert (=> b!4825725 (= c!822294 call!336371)))

(declare-fun b!4825726 () Bool)

(declare-fun getKeysList!1160 (List!55096) List!55099)

(assert (=> b!4825726 (= e!3015335 (getKeysList!1160 (toList!7480 lt!1973032)))))

(declare-fun b!4825727 () Bool)

(declare-fun lt!1973086 () Unit!143029)

(assert (=> b!4825727 (= e!3015338 lt!1973086)))

(declare-fun lt!1973092 () Unit!143029)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (List!55096 K!16654) Unit!143029)

(assert (=> b!4825727 (= lt!1973092 (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 lt!1973032) key!5428))))

(declare-datatypes ((Option!13496 0))(
  ( (None!13495) (Some!13495 (v!49176 V!16900)) )
))
(declare-fun isDefined!10611 (Option!13496) Bool)

(declare-fun getValueByKey!2623 (List!55096 K!16654) Option!13496)

(assert (=> b!4825727 (isDefined!10611 (getValueByKey!2623 (toList!7480 lt!1973032) key!5428))))

(declare-fun lt!1973091 () Unit!143029)

(assert (=> b!4825727 (= lt!1973091 lt!1973092)))

(declare-fun lemmaInListThenGetKeysListContains!1155 (List!55096 K!16654) Unit!143029)

(assert (=> b!4825727 (= lt!1973086 (lemmaInListThenGetKeysListContains!1155 (toList!7480 lt!1973032) key!5428))))

(assert (=> b!4825727 call!336371))

(declare-fun d!1546096 () Bool)

(declare-fun e!3015337 () Bool)

(assert (=> d!1546096 e!3015337))

(declare-fun res!2054527 () Bool)

(assert (=> d!1546096 (=> res!2054527 e!3015337)))

(declare-fun e!3015339 () Bool)

(assert (=> d!1546096 (= res!2054527 e!3015339)))

(declare-fun res!2054529 () Bool)

(assert (=> d!1546096 (=> (not res!2054529) (not e!3015339))))

(declare-fun lt!1973088 () Bool)

(assert (=> d!1546096 (= res!2054529 (not lt!1973088))))

(declare-fun lt!1973085 () Bool)

(assert (=> d!1546096 (= lt!1973088 lt!1973085)))

(declare-fun lt!1973087 () Unit!143029)

(assert (=> d!1546096 (= lt!1973087 e!3015338)))

(assert (=> d!1546096 (= c!822293 lt!1973085)))

(declare-fun containsKey!4374 (List!55096 K!16654) Bool)

(assert (=> d!1546096 (= lt!1973085 (containsKey!4374 (toList!7480 lt!1973032) key!5428))))

(assert (=> d!1546096 (= (contains!18780 lt!1973032 key!5428) lt!1973088)))

(declare-fun b!4825728 () Bool)

(assert (=> b!4825728 (= e!3015339 (not (contains!18783 (keys!20227 lt!1973032) key!5428)))))

(declare-fun b!4825729 () Bool)

(assert (=> b!4825729 (= e!3015335 (keys!20227 lt!1973032))))

(declare-fun b!4825730 () Bool)

(assert (=> b!4825730 false))

(declare-fun lt!1973090 () Unit!143029)

(declare-fun lt!1973089 () Unit!143029)

(assert (=> b!4825730 (= lt!1973090 lt!1973089)))

(assert (=> b!4825730 (containsKey!4374 (toList!7480 lt!1973032) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1160 (List!55096 K!16654) Unit!143029)

(assert (=> b!4825730 (= lt!1973089 (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 lt!1973032) key!5428))))

(declare-fun Unit!143039 () Unit!143029)

(assert (=> b!4825730 (= e!3015336 Unit!143039)))

(declare-fun b!4825731 () Bool)

(assert (=> b!4825731 (= e!3015337 e!3015340)))

(declare-fun res!2054528 () Bool)

(assert (=> b!4825731 (=> (not res!2054528) (not e!3015340))))

(assert (=> b!4825731 (= res!2054528 (isDefined!10611 (getValueByKey!2623 (toList!7480 lt!1973032) key!5428)))))

(assert (= (and d!1546096 c!822293) b!4825727))

(assert (= (and d!1546096 (not c!822293)) b!4825725))

(assert (= (and b!4825725 c!822294) b!4825730))

(assert (= (and b!4825725 (not c!822294)) b!4825723))

(assert (= (or b!4825727 b!4825725) bm!336366))

(assert (= (and bm!336366 c!822295) b!4825726))

(assert (= (and bm!336366 (not c!822295)) b!4825729))

(assert (= (and d!1546096 res!2054529) b!4825728))

(assert (= (and d!1546096 (not res!2054527)) b!4825731))

(assert (= (and b!4825731 res!2054528) b!4825724))

(declare-fun m!5816056 () Bool)

(assert (=> b!4825728 m!5816056))

(assert (=> b!4825728 m!5816056))

(declare-fun m!5816058 () Bool)

(assert (=> b!4825728 m!5816058))

(declare-fun m!5816060 () Bool)

(assert (=> d!1546096 m!5816060))

(declare-fun m!5816062 () Bool)

(assert (=> b!4825731 m!5816062))

(assert (=> b!4825731 m!5816062))

(declare-fun m!5816064 () Bool)

(assert (=> b!4825731 m!5816064))

(declare-fun m!5816066 () Bool)

(assert (=> bm!336366 m!5816066))

(declare-fun m!5816068 () Bool)

(assert (=> b!4825726 m!5816068))

(declare-fun m!5816070 () Bool)

(assert (=> b!4825727 m!5816070))

(assert (=> b!4825727 m!5816062))

(assert (=> b!4825727 m!5816062))

(assert (=> b!4825727 m!5816064))

(declare-fun m!5816072 () Bool)

(assert (=> b!4825727 m!5816072))

(assert (=> b!4825724 m!5816056))

(assert (=> b!4825724 m!5816056))

(assert (=> b!4825724 m!5816058))

(assert (=> b!4825730 m!5816060))

(declare-fun m!5816074 () Bool)

(assert (=> b!4825730 m!5816074))

(assert (=> b!4825729 m!5816056))

(assert (=> b!4825667 d!1546096))

(declare-fun d!1546108 () Bool)

(declare-datatypes ((Option!13497 0))(
  ( (None!13496) (Some!13496 (v!49177 List!55096)) )
))
(declare-fun get!18824 (Option!13497) List!55096)

(declare-fun getValueByKey!2624 (List!55097 (_ BitVec 64)) Option!13497)

(assert (=> d!1546108 (= (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280)))) (get!18824 (getValueByKey!2624 (toList!7479 lm!2280) (_1!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun bs!1163832 () Bool)

(assert (= bs!1163832 d!1546108))

(declare-fun m!5816124 () Bool)

(assert (=> bs!1163832 m!5816124))

(assert (=> bs!1163832 m!5816124))

(declare-fun m!5816126 () Bool)

(assert (=> bs!1163832 m!5816126))

(assert (=> b!4825661 d!1546108))

(declare-fun b!4825834 () Bool)

(assert (=> b!4825834 true))

(declare-fun bs!1163862 () Bool)

(declare-fun b!4825830 () Bool)

(assert (= bs!1163862 (and b!4825830 b!4825834)))

(declare-fun lambda!236729 () Int)

(declare-fun lambda!236728 () Int)

(assert (=> bs!1163862 (= lambda!236729 lambda!236728)))

(assert (=> b!4825830 true))

(declare-fun lt!1973262 () ListMap!6857)

(declare-fun lambda!236730 () Int)

(assert (=> bs!1163862 (= (= lt!1973262 lt!1973032) (= lambda!236730 lambda!236728))))

(assert (=> b!4825830 (= (= lt!1973262 lt!1973032) (= lambda!236730 lambda!236729))))

(assert (=> b!4825830 true))

(declare-fun bs!1163863 () Bool)

(declare-fun d!1546116 () Bool)

(assert (= bs!1163863 (and d!1546116 b!4825834)))

(declare-fun lt!1973257 () ListMap!6857)

(declare-fun lambda!236731 () Int)

(assert (=> bs!1163863 (= (= lt!1973257 lt!1973032) (= lambda!236731 lambda!236728))))

(declare-fun bs!1163864 () Bool)

(assert (= bs!1163864 (and d!1546116 b!4825830)))

(assert (=> bs!1163864 (= (= lt!1973257 lt!1973032) (= lambda!236731 lambda!236729))))

(assert (=> bs!1163864 (= (= lt!1973257 lt!1973262) (= lambda!236731 lambda!236730))))

(assert (=> d!1546116 true))

(declare-fun e!3015411 () ListMap!6857)

(assert (=> b!4825830 (= e!3015411 lt!1973262)))

(declare-fun lt!1973253 () ListMap!6857)

(declare-fun +!2537 (ListMap!6857 tuple2!58194) ListMap!6857)

(assert (=> b!4825830 (= lt!1973253 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> b!4825830 (= lt!1973262 (addToMapMapFromBucket!1798 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973248 () Unit!143029)

(declare-fun call!336393 () Unit!143029)

(assert (=> b!4825830 (= lt!1973248 call!336393)))

(declare-fun call!336391 () Bool)

(assert (=> b!4825830 call!336391))

(declare-fun lt!1973252 () Unit!143029)

(assert (=> b!4825830 (= lt!1973252 lt!1973248)))

(declare-fun forall!12610 (List!55096 Int) Bool)

(assert (=> b!4825830 (forall!12610 (toList!7480 lt!1973253) lambda!236730)))

(declare-fun lt!1973247 () Unit!143029)

(declare-fun Unit!143051 () Unit!143029)

(assert (=> b!4825830 (= lt!1973247 Unit!143051)))

(assert (=> b!4825830 (forall!12610 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) lambda!236730)))

(declare-fun lt!1973242 () Unit!143029)

(declare-fun Unit!143052 () Unit!143029)

(assert (=> b!4825830 (= lt!1973242 Unit!143052)))

(declare-fun lt!1973261 () Unit!143029)

(declare-fun Unit!143053 () Unit!143029)

(assert (=> b!4825830 (= lt!1973261 Unit!143053)))

(declare-fun lt!1973254 () Unit!143029)

(declare-fun forallContained!4386 (List!55096 Int tuple2!58194) Unit!143029)

(assert (=> b!4825830 (= lt!1973254 (forallContained!4386 (toList!7480 lt!1973253) lambda!236730 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> b!4825830 (contains!18780 lt!1973253 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun lt!1973259 () Unit!143029)

(declare-fun Unit!143054 () Unit!143029)

(assert (=> b!4825830 (= lt!1973259 Unit!143054)))

(assert (=> b!4825830 (contains!18780 lt!1973262 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun lt!1973251 () Unit!143029)

(declare-fun Unit!143055 () Unit!143029)

(assert (=> b!4825830 (= lt!1973251 Unit!143055)))

(assert (=> b!4825830 (forall!12610 (_2!32392 (h!61407 (toList!7479 lm!2280))) lambda!236730)))

(declare-fun lt!1973246 () Unit!143029)

(declare-fun Unit!143056 () Unit!143029)

(assert (=> b!4825830 (= lt!1973246 Unit!143056)))

(assert (=> b!4825830 (forall!12610 (toList!7480 lt!1973253) lambda!236730)))

(declare-fun lt!1973245 () Unit!143029)

(declare-fun Unit!143057 () Unit!143029)

(assert (=> b!4825830 (= lt!1973245 Unit!143057)))

(declare-fun lt!1973255 () Unit!143029)

(declare-fun Unit!143058 () Unit!143029)

(assert (=> b!4825830 (= lt!1973255 Unit!143058)))

(declare-fun lt!1973258 () Unit!143029)

(declare-fun addForallContainsKeyThenBeforeAdding!991 (ListMap!6857 ListMap!6857 K!16654 V!16900) Unit!143029)

(assert (=> b!4825830 (= lt!1973258 (addForallContainsKeyThenBeforeAdding!991 lt!1973032 lt!1973262 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> b!4825830 (forall!12610 (toList!7480 lt!1973032) lambda!236730)))

(declare-fun lt!1973243 () Unit!143029)

(assert (=> b!4825830 (= lt!1973243 lt!1973258)))

(declare-fun call!336392 () Bool)

(assert (=> b!4825830 call!336392))

(declare-fun lt!1973244 () Unit!143029)

(declare-fun Unit!143059 () Unit!143029)

(assert (=> b!4825830 (= lt!1973244 Unit!143059)))

(declare-fun res!2054583 () Bool)

(assert (=> b!4825830 (= res!2054583 (forall!12610 (_2!32392 (h!61407 (toList!7479 lm!2280))) lambda!236730))))

(declare-fun e!3015412 () Bool)

(assert (=> b!4825830 (=> (not res!2054583) (not e!3015412))))

(assert (=> b!4825830 e!3015412))

(declare-fun lt!1973249 () Unit!143029)

(declare-fun Unit!143060 () Unit!143029)

(assert (=> b!4825830 (= lt!1973249 Unit!143060)))

(declare-fun b!4825832 () Bool)

(declare-fun res!2054582 () Bool)

(declare-fun e!3015410 () Bool)

(assert (=> b!4825832 (=> (not res!2054582) (not e!3015410))))

(assert (=> b!4825832 (= res!2054582 (forall!12610 (toList!7480 lt!1973032) lambda!236731))))

(declare-fun bm!336386 () Bool)

(declare-fun c!822316 () Bool)

(assert (=> bm!336386 (= call!336392 (forall!12610 (toList!7480 lt!1973032) (ite c!822316 lambda!236728 lambda!236730)))))

(declare-fun b!4825833 () Bool)

(declare-fun invariantList!1813 (List!55096) Bool)

(assert (=> b!4825833 (= e!3015410 (invariantList!1813 (toList!7480 lt!1973257)))))

(assert (=> b!4825834 (= e!3015411 lt!1973032)))

(declare-fun lt!1973256 () Unit!143029)

(assert (=> b!4825834 (= lt!1973256 call!336393)))

(assert (=> b!4825834 call!336391))

(declare-fun lt!1973260 () Unit!143029)

(assert (=> b!4825834 (= lt!1973260 lt!1973256)))

(assert (=> b!4825834 call!336392))

(declare-fun lt!1973250 () Unit!143029)

(declare-fun Unit!143061 () Unit!143029)

(assert (=> b!4825834 (= lt!1973250 Unit!143061)))

(declare-fun bm!336387 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!992 (ListMap!6857) Unit!143029)

(assert (=> bm!336387 (= call!336393 (lemmaContainsAllItsOwnKeys!992 lt!1973032))))

(declare-fun bm!336388 () Bool)

(assert (=> bm!336388 (= call!336391 (forall!12610 (toList!7480 lt!1973032) (ite c!822316 lambda!236728 lambda!236729)))))

(declare-fun b!4825831 () Bool)

(assert (=> b!4825831 (= e!3015412 (forall!12610 (toList!7480 lt!1973032) lambda!236730))))

(assert (=> d!1546116 e!3015410))

(declare-fun res!2054581 () Bool)

(assert (=> d!1546116 (=> (not res!2054581) (not e!3015410))))

(assert (=> d!1546116 (= res!2054581 (forall!12610 (_2!32392 (h!61407 (toList!7479 lm!2280))) lambda!236731))))

(assert (=> d!1546116 (= lt!1973257 e!3015411)))

(assert (=> d!1546116 (= c!822316 ((_ is Nil!54972) (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(declare-fun noDuplicateKeys!2452 (List!55096) Bool)

(assert (=> d!1546116 (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lm!2280))))))

(assert (=> d!1546116 (= (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032) lt!1973257)))

(assert (= (and d!1546116 c!822316) b!4825834))

(assert (= (and d!1546116 (not c!822316)) b!4825830))

(assert (= (and b!4825830 res!2054583) b!4825831))

(assert (= (or b!4825834 b!4825830) bm!336388))

(assert (= (or b!4825834 b!4825830) bm!336386))

(assert (= (or b!4825834 b!4825830) bm!336387))

(assert (= (and d!1546116 res!2054581) b!4825832))

(assert (= (and b!4825832 res!2054582) b!4825833))

(declare-fun m!5816254 () Bool)

(assert (=> bm!336388 m!5816254))

(declare-fun m!5816256 () Bool)

(assert (=> bm!336387 m!5816256))

(declare-fun m!5816258 () Bool)

(assert (=> b!4825831 m!5816258))

(declare-fun m!5816260 () Bool)

(assert (=> b!4825833 m!5816260))

(declare-fun m!5816262 () Bool)

(assert (=> bm!336386 m!5816262))

(declare-fun m!5816264 () Bool)

(assert (=> d!1546116 m!5816264))

(declare-fun m!5816266 () Bool)

(assert (=> d!1546116 m!5816266))

(declare-fun m!5816268 () Bool)

(assert (=> b!4825832 m!5816268))

(declare-fun m!5816270 () Bool)

(assert (=> b!4825830 m!5816270))

(declare-fun m!5816272 () Bool)

(assert (=> b!4825830 m!5816272))

(declare-fun m!5816274 () Bool)

(assert (=> b!4825830 m!5816274))

(declare-fun m!5816276 () Bool)

(assert (=> b!4825830 m!5816276))

(declare-fun m!5816278 () Bool)

(assert (=> b!4825830 m!5816278))

(declare-fun m!5816280 () Bool)

(assert (=> b!4825830 m!5816280))

(declare-fun m!5816282 () Bool)

(assert (=> b!4825830 m!5816282))

(assert (=> b!4825830 m!5816276))

(assert (=> b!4825830 m!5816278))

(assert (=> b!4825830 m!5816282))

(declare-fun m!5816284 () Bool)

(assert (=> b!4825830 m!5816284))

(declare-fun m!5816286 () Bool)

(assert (=> b!4825830 m!5816286))

(assert (=> b!4825830 m!5816258))

(assert (=> b!4825661 d!1546116))

(declare-fun d!1546154 () Bool)

(declare-fun res!2054588 () Bool)

(declare-fun e!3015417 () Bool)

(assert (=> d!1546154 (=> res!2054588 e!3015417)))

(assert (=> d!1546154 (= res!2054588 ((_ is Nil!54973) (toList!7479 lt!1973030)))))

(assert (=> d!1546154 (= (forall!12608 (toList!7479 lt!1973030) lambda!236652) e!3015417)))

(declare-fun b!4825841 () Bool)

(declare-fun e!3015418 () Bool)

(assert (=> b!4825841 (= e!3015417 e!3015418)))

(declare-fun res!2054589 () Bool)

(assert (=> b!4825841 (=> (not res!2054589) (not e!3015418))))

(declare-fun dynLambda!22218 (Int tuple2!58196) Bool)

(assert (=> b!4825841 (= res!2054589 (dynLambda!22218 lambda!236652 (h!61407 (toList!7479 lt!1973030))))))

(declare-fun b!4825842 () Bool)

(assert (=> b!4825842 (= e!3015418 (forall!12608 (t!362593 (toList!7479 lt!1973030)) lambda!236652))))

(assert (= (and d!1546154 (not res!2054588)) b!4825841))

(assert (= (and b!4825841 res!2054589) b!4825842))

(declare-fun b_lambda!189857 () Bool)

(assert (=> (not b_lambda!189857) (not b!4825841)))

(declare-fun m!5816288 () Bool)

(assert (=> b!4825841 m!5816288))

(declare-fun m!5816290 () Bool)

(assert (=> b!4825842 m!5816290))

(assert (=> b!4825661 d!1546154))

(declare-fun d!1546156 () Bool)

(declare-fun res!2054594 () Bool)

(declare-fun e!3015423 () Bool)

(assert (=> d!1546156 (=> res!2054594 e!3015423)))

(assert (=> d!1546156 (= res!2054594 (and ((_ is Cons!54972) (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280))))) (= (_1!32391 (h!61406 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280)))))) key!5428)))))

(assert (=> d!1546156 (= (containsKey!4371 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280)))) key!5428) e!3015423)))

(declare-fun b!4825847 () Bool)

(declare-fun e!3015424 () Bool)

(assert (=> b!4825847 (= e!3015423 e!3015424)))

(declare-fun res!2054595 () Bool)

(assert (=> b!4825847 (=> (not res!2054595) (not e!3015424))))

(assert (=> b!4825847 (= res!2054595 ((_ is Cons!54972) (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun b!4825848 () Bool)

(assert (=> b!4825848 (= e!3015424 (containsKey!4371 (t!362592 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280))))) key!5428))))

(assert (= (and d!1546156 (not res!2054594)) b!4825847))

(assert (= (and b!4825847 res!2054595) b!4825848))

(declare-fun m!5816292 () Bool)

(assert (=> b!4825848 m!5816292))

(assert (=> b!4825661 d!1546156))

(declare-fun d!1546158 () Bool)

(declare-fun res!2054596 () Bool)

(declare-fun e!3015425 () Bool)

(assert (=> d!1546158 (=> res!2054596 e!3015425)))

(assert (=> d!1546158 (= res!2054596 (and ((_ is Cons!54972) (_2!32392 (h!61407 (toList!7479 lm!2280)))) (= (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) key!5428)))))

(assert (=> d!1546158 (= (containsKey!4371 (_2!32392 (h!61407 (toList!7479 lm!2280))) key!5428) e!3015425)))

(declare-fun b!4825849 () Bool)

(declare-fun e!3015426 () Bool)

(assert (=> b!4825849 (= e!3015425 e!3015426)))

(declare-fun res!2054597 () Bool)

(assert (=> b!4825849 (=> (not res!2054597) (not e!3015426))))

(assert (=> b!4825849 (= res!2054597 ((_ is Cons!54972) (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(declare-fun b!4825850 () Bool)

(assert (=> b!4825850 (= e!3015426 (containsKey!4371 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) key!5428))))

(assert (= (and d!1546158 (not res!2054596)) b!4825849))

(assert (= (and b!4825849 res!2054597) b!4825850))

(declare-fun m!5816294 () Bool)

(assert (=> b!4825850 m!5816294))

(assert (=> b!4825661 d!1546158))

(declare-fun bs!1163865 () Bool)

(declare-fun d!1546160 () Bool)

(assert (= bs!1163865 (and d!1546160 start!500676)))

(declare-fun lambda!236734 () Int)

(assert (=> bs!1163865 (= lambda!236734 lambda!236652)))

(assert (=> d!1546160 (not (containsKey!4371 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280)))) key!5428))))

(declare-fun lt!1973265 () Unit!143029)

(declare-fun choose!35131 (ListLongMap!5995 K!16654 (_ BitVec 64) Hashable!7266) Unit!143029)

(assert (=> d!1546160 (= lt!1973265 (choose!35131 lm!2280 key!5428 (_1!32392 (h!61407 (toList!7479 lm!2280))) hashF!1509))))

(assert (=> d!1546160 (forall!12608 (toList!7479 lm!2280) lambda!236734)))

(assert (=> d!1546160 (= (lemmaNotSameHashThenCannotContainKey!224 lm!2280 key!5428 (_1!32392 (h!61407 (toList!7479 lm!2280))) hashF!1509) lt!1973265)))

(declare-fun bs!1163866 () Bool)

(assert (= bs!1163866 d!1546160))

(assert (=> bs!1163866 m!5816008))

(assert (=> bs!1163866 m!5816008))

(assert (=> bs!1163866 m!5816012))

(declare-fun m!5816296 () Bool)

(assert (=> bs!1163866 m!5816296))

(declare-fun m!5816298 () Bool)

(assert (=> bs!1163866 m!5816298))

(assert (=> b!4825661 d!1546160))

(declare-fun b!4825851 () Bool)

(declare-fun e!3015428 () Unit!143029)

(declare-fun Unit!143064 () Unit!143029)

(assert (=> b!4825851 (= e!3015428 Unit!143064)))

(declare-fun e!3015432 () Bool)

(declare-fun b!4825852 () Bool)

(assert (=> b!4825852 (= e!3015432 (contains!18783 (keys!20227 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(declare-fun bm!336389 () Bool)

(declare-fun call!336394 () Bool)

(declare-fun e!3015427 () List!55099)

(assert (=> bm!336389 (= call!336394 (contains!18783 e!3015427 key!5428))))

(declare-fun c!822319 () Bool)

(declare-fun c!822317 () Bool)

(assert (=> bm!336389 (= c!822319 c!822317)))

(declare-fun b!4825853 () Bool)

(declare-fun e!3015430 () Unit!143029)

(assert (=> b!4825853 (= e!3015430 e!3015428)))

(declare-fun c!822318 () Bool)

(assert (=> b!4825853 (= c!822318 call!336394)))

(declare-fun b!4825854 () Bool)

(assert (=> b!4825854 (= e!3015427 (getKeysList!1160 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))

(declare-fun b!4825855 () Bool)

(declare-fun lt!1973267 () Unit!143029)

(assert (=> b!4825855 (= e!3015430 lt!1973267)))

(declare-fun lt!1973273 () Unit!143029)

(assert (=> b!4825855 (= lt!1973273 (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(assert (=> b!4825855 (isDefined!10611 (getValueByKey!2623 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(declare-fun lt!1973272 () Unit!143029)

(assert (=> b!4825855 (= lt!1973272 lt!1973273)))

(assert (=> b!4825855 (= lt!1973267 (lemmaInListThenGetKeysListContains!1155 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(assert (=> b!4825855 call!336394))

(declare-fun d!1546162 () Bool)

(declare-fun e!3015429 () Bool)

(assert (=> d!1546162 e!3015429))

(declare-fun res!2054598 () Bool)

(assert (=> d!1546162 (=> res!2054598 e!3015429)))

(declare-fun e!3015431 () Bool)

(assert (=> d!1546162 (= res!2054598 e!3015431)))

(declare-fun res!2054600 () Bool)

(assert (=> d!1546162 (=> (not res!2054600) (not e!3015431))))

(declare-fun lt!1973269 () Bool)

(assert (=> d!1546162 (= res!2054600 (not lt!1973269))))

(declare-fun lt!1973266 () Bool)

(assert (=> d!1546162 (= lt!1973269 lt!1973266)))

(declare-fun lt!1973268 () Unit!143029)

(assert (=> d!1546162 (= lt!1973268 e!3015430)))

(assert (=> d!1546162 (= c!822317 lt!1973266)))

(assert (=> d!1546162 (= lt!1973266 (containsKey!4374 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(assert (=> d!1546162 (= (contains!18780 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032) key!5428) lt!1973269)))

(declare-fun b!4825856 () Bool)

(assert (=> b!4825856 (= e!3015431 (not (contains!18783 (keys!20227 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428)))))

(declare-fun b!4825857 () Bool)

(assert (=> b!4825857 (= e!3015427 (keys!20227 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))))

(declare-fun b!4825858 () Bool)

(assert (=> b!4825858 false))

(declare-fun lt!1973271 () Unit!143029)

(declare-fun lt!1973270 () Unit!143029)

(assert (=> b!4825858 (= lt!1973271 lt!1973270)))

(assert (=> b!4825858 (containsKey!4374 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428)))

(assert (=> b!4825858 (= lt!1973270 (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(declare-fun Unit!143066 () Unit!143029)

(assert (=> b!4825858 (= e!3015428 Unit!143066)))

(declare-fun b!4825859 () Bool)

(assert (=> b!4825859 (= e!3015429 e!3015432)))

(declare-fun res!2054599 () Bool)

(assert (=> b!4825859 (=> (not res!2054599) (not e!3015432))))

(assert (=> b!4825859 (= res!2054599 (isDefined!10611 (getValueByKey!2623 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428)))))

(assert (= (and d!1546162 c!822317) b!4825855))

(assert (= (and d!1546162 (not c!822317)) b!4825853))

(assert (= (and b!4825853 c!822318) b!4825858))

(assert (= (and b!4825853 (not c!822318)) b!4825851))

(assert (= (or b!4825855 b!4825853) bm!336389))

(assert (= (and bm!336389 c!822319) b!4825854))

(assert (= (and bm!336389 (not c!822319)) b!4825857))

(assert (= (and d!1546162 res!2054600) b!4825856))

(assert (= (and d!1546162 (not res!2054598)) b!4825859))

(assert (= (and b!4825859 res!2054599) b!4825852))

(assert (=> b!4825856 m!5816014))

(declare-fun m!5816300 () Bool)

(assert (=> b!4825856 m!5816300))

(assert (=> b!4825856 m!5816300))

(declare-fun m!5816302 () Bool)

(assert (=> b!4825856 m!5816302))

(declare-fun m!5816304 () Bool)

(assert (=> d!1546162 m!5816304))

(declare-fun m!5816306 () Bool)

(assert (=> b!4825859 m!5816306))

(assert (=> b!4825859 m!5816306))

(declare-fun m!5816308 () Bool)

(assert (=> b!4825859 m!5816308))

(declare-fun m!5816310 () Bool)

(assert (=> bm!336389 m!5816310))

(declare-fun m!5816312 () Bool)

(assert (=> b!4825854 m!5816312))

(declare-fun m!5816314 () Bool)

(assert (=> b!4825855 m!5816314))

(assert (=> b!4825855 m!5816306))

(assert (=> b!4825855 m!5816306))

(assert (=> b!4825855 m!5816308))

(declare-fun m!5816316 () Bool)

(assert (=> b!4825855 m!5816316))

(assert (=> b!4825852 m!5816014))

(assert (=> b!4825852 m!5816300))

(assert (=> b!4825852 m!5816300))

(assert (=> b!4825852 m!5816302))

(assert (=> b!4825858 m!5816304))

(declare-fun m!5816318 () Bool)

(assert (=> b!4825858 m!5816318))

(assert (=> b!4825857 m!5816014))

(assert (=> b!4825857 m!5816300))

(assert (=> b!4825661 d!1546162))

(declare-fun d!1546164 () Bool)

(declare-fun e!3015435 () Bool)

(assert (=> d!1546164 (= (contains!18780 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032) key!5428) e!3015435)))

(declare-fun res!2054603 () Bool)

(assert (=> d!1546164 (=> res!2054603 e!3015435)))

(assert (=> d!1546164 (= res!2054603 (containsKey!4371 (_2!32392 (h!61407 (toList!7479 lm!2280))) key!5428))))

(declare-fun lt!1973276 () Unit!143029)

(declare-fun choose!35132 (List!55096 ListMap!6857 K!16654) Unit!143029)

(assert (=> d!1546164 (= lt!1973276 (choose!35132 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032 key!5428))))

(assert (=> d!1546164 (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lm!2280))))))

(assert (=> d!1546164 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!24 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032 key!5428) lt!1973276)))

(declare-fun b!4825862 () Bool)

(assert (=> b!4825862 (= e!3015435 (contains!18780 lt!1973032 key!5428))))

(assert (= (and d!1546164 (not res!2054603)) b!4825862))

(assert (=> d!1546164 m!5816266))

(assert (=> d!1546164 m!5816022))

(assert (=> d!1546164 m!5816014))

(assert (=> d!1546164 m!5816016))

(declare-fun m!5816320 () Bool)

(assert (=> d!1546164 m!5816320))

(assert (=> d!1546164 m!5816014))

(assert (=> b!4825862 m!5815976))

(assert (=> b!4825661 d!1546164))

(declare-fun bs!1163867 () Bool)

(declare-fun d!1546166 () Bool)

(assert (= bs!1163867 (and d!1546166 start!500676)))

(declare-fun lambda!236737 () Int)

(assert (=> bs!1163867 (= lambda!236737 lambda!236652)))

(declare-fun bs!1163868 () Bool)

(assert (= bs!1163868 (and d!1546166 d!1546160)))

(assert (=> bs!1163868 (= lambda!236737 lambda!236734)))

(declare-fun lt!1973279 () ListMap!6857)

(assert (=> d!1546166 (invariantList!1813 (toList!7480 lt!1973279))))

(declare-fun e!3015438 () ListMap!6857)

(assert (=> d!1546166 (= lt!1973279 e!3015438)))

(declare-fun c!822322 () Bool)

(assert (=> d!1546166 (= c!822322 ((_ is Cons!54973) (t!362593 (toList!7479 lm!2280))))))

(assert (=> d!1546166 (forall!12608 (t!362593 (toList!7479 lm!2280)) lambda!236737)))

(assert (=> d!1546166 (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973279)))

(declare-fun b!4825867 () Bool)

(assert (=> b!4825867 (= e!3015438 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))))))

(declare-fun b!4825868 () Bool)

(assert (=> b!4825868 (= e!3015438 (ListMap!6858 Nil!54972))))

(assert (= (and d!1546166 c!822322) b!4825867))

(assert (= (and d!1546166 (not c!822322)) b!4825868))

(declare-fun m!5816322 () Bool)

(assert (=> d!1546166 m!5816322))

(declare-fun m!5816324 () Bool)

(assert (=> d!1546166 m!5816324))

(declare-fun m!5816326 () Bool)

(assert (=> b!4825867 m!5816326))

(assert (=> b!4825867 m!5816326))

(declare-fun m!5816328 () Bool)

(assert (=> b!4825867 m!5816328))

(assert (=> b!4825661 d!1546166))

(declare-fun d!1546168 () Bool)

(declare-fun tail!9414 (List!55097) List!55097)

(assert (=> d!1546168 (= (tail!9412 lm!2280) (ListLongMap!5996 (tail!9414 (toList!7479 lm!2280))))))

(declare-fun bs!1163869 () Bool)

(assert (= bs!1163869 d!1546168))

(declare-fun m!5816330 () Bool)

(assert (=> bs!1163869 m!5816330))

(assert (=> b!4825661 d!1546168))

(declare-fun bs!1163870 () Bool)

(declare-fun d!1546170 () Bool)

(assert (= bs!1163870 (and d!1546170 start!500676)))

(declare-fun lambda!236738 () Int)

(assert (=> bs!1163870 (= lambda!236738 lambda!236652)))

(declare-fun bs!1163871 () Bool)

(assert (= bs!1163871 (and d!1546170 d!1546160)))

(assert (=> bs!1163871 (= lambda!236738 lambda!236734)))

(declare-fun bs!1163872 () Bool)

(assert (= bs!1163872 (and d!1546170 d!1546166)))

(assert (=> bs!1163872 (= lambda!236738 lambda!236737)))

(declare-fun lt!1973280 () ListMap!6857)

(assert (=> d!1546170 (invariantList!1813 (toList!7480 lt!1973280))))

(declare-fun e!3015439 () ListMap!6857)

(assert (=> d!1546170 (= lt!1973280 e!3015439)))

(declare-fun c!822323 () Bool)

(assert (=> d!1546170 (= c!822323 ((_ is Cons!54973) (toList!7479 lm!2280)))))

(assert (=> d!1546170 (forall!12608 (toList!7479 lm!2280) lambda!236738)))

(assert (=> d!1546170 (= (extractMap!2680 (toList!7479 lm!2280)) lt!1973280)))

(declare-fun b!4825869 () Bool)

(assert (=> b!4825869 (= e!3015439 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) (extractMap!2680 (t!362593 (toList!7479 lm!2280)))))))

(declare-fun b!4825870 () Bool)

(assert (=> b!4825870 (= e!3015439 (ListMap!6858 Nil!54972))))

(assert (= (and d!1546170 c!822323) b!4825869))

(assert (= (and d!1546170 (not c!822323)) b!4825870))

(declare-fun m!5816332 () Bool)

(assert (=> d!1546170 m!5816332))

(declare-fun m!5816334 () Bool)

(assert (=> d!1546170 m!5816334))

(assert (=> b!4825869 m!5816024))

(assert (=> b!4825869 m!5816024))

(declare-fun m!5816336 () Bool)

(assert (=> b!4825869 m!5816336))

(assert (=> b!4825666 d!1546170))

(declare-fun bs!1163873 () Bool)

(declare-fun d!1546172 () Bool)

(assert (= bs!1163873 (and d!1546172 start!500676)))

(declare-fun lambda!236739 () Int)

(assert (=> bs!1163873 (= lambda!236739 lambda!236652)))

(declare-fun bs!1163874 () Bool)

(assert (= bs!1163874 (and d!1546172 d!1546160)))

(assert (=> bs!1163874 (= lambda!236739 lambda!236734)))

(declare-fun bs!1163875 () Bool)

(assert (= bs!1163875 (and d!1546172 d!1546166)))

(assert (=> bs!1163875 (= lambda!236739 lambda!236737)))

(declare-fun bs!1163876 () Bool)

(assert (= bs!1163876 (and d!1546172 d!1546170)))

(assert (=> bs!1163876 (= lambda!236739 lambda!236738)))

(declare-fun lt!1973281 () ListMap!6857)

(assert (=> d!1546172 (invariantList!1813 (toList!7480 lt!1973281))))

(declare-fun e!3015440 () ListMap!6857)

(assert (=> d!1546172 (= lt!1973281 e!3015440)))

(declare-fun c!822324 () Bool)

(assert (=> d!1546172 (= c!822324 ((_ is Cons!54973) (toList!7479 lt!1973030)))))

(assert (=> d!1546172 (forall!12608 (toList!7479 lt!1973030) lambda!236739)))

(assert (=> d!1546172 (= (extractMap!2680 (toList!7479 lt!1973030)) lt!1973281)))

(declare-fun b!4825871 () Bool)

(assert (=> b!4825871 (= e!3015440 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))))))

(declare-fun b!4825872 () Bool)

(assert (=> b!4825872 (= e!3015440 (ListMap!6858 Nil!54972))))

(assert (= (and d!1546172 c!822324) b!4825871))

(assert (= (and d!1546172 (not c!822324)) b!4825872))

(declare-fun m!5816338 () Bool)

(assert (=> d!1546172 m!5816338))

(declare-fun m!5816340 () Bool)

(assert (=> d!1546172 m!5816340))

(declare-fun m!5816342 () Bool)

(assert (=> b!4825871 m!5816342))

(assert (=> b!4825871 m!5816342))

(declare-fun m!5816344 () Bool)

(assert (=> b!4825871 m!5816344))

(assert (=> b!4825666 d!1546172))

(declare-fun b!4825873 () Bool)

(declare-fun e!3015442 () Unit!143029)

(declare-fun Unit!143067 () Unit!143029)

(assert (=> b!4825873 (= e!3015442 Unit!143067)))

(declare-fun b!4825874 () Bool)

(declare-fun e!3015446 () Bool)

(assert (=> b!4825874 (= e!3015446 (contains!18783 (keys!20227 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(declare-fun bm!336390 () Bool)

(declare-fun call!336395 () Bool)

(declare-fun e!3015441 () List!55099)

(assert (=> bm!336390 (= call!336395 (contains!18783 e!3015441 key!5428))))

(declare-fun c!822327 () Bool)

(declare-fun c!822325 () Bool)

(assert (=> bm!336390 (= c!822327 c!822325)))

(declare-fun b!4825875 () Bool)

(declare-fun e!3015444 () Unit!143029)

(assert (=> b!4825875 (= e!3015444 e!3015442)))

(declare-fun c!822326 () Bool)

(assert (=> b!4825875 (= c!822326 call!336395)))

(declare-fun b!4825876 () Bool)

(assert (=> b!4825876 (= e!3015441 (getKeysList!1160 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))))

(declare-fun b!4825877 () Bool)

(declare-fun lt!1973283 () Unit!143029)

(assert (=> b!4825877 (= e!3015444 lt!1973283)))

(declare-fun lt!1973289 () Unit!143029)

(assert (=> b!4825877 (= lt!1973289 (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(assert (=> b!4825877 (isDefined!10611 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(declare-fun lt!1973288 () Unit!143029)

(assert (=> b!4825877 (= lt!1973288 lt!1973289)))

(assert (=> b!4825877 (= lt!1973283 (lemmaInListThenGetKeysListContains!1155 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(assert (=> b!4825877 call!336395))

(declare-fun d!1546174 () Bool)

(declare-fun e!3015443 () Bool)

(assert (=> d!1546174 e!3015443))

(declare-fun res!2054604 () Bool)

(assert (=> d!1546174 (=> res!2054604 e!3015443)))

(declare-fun e!3015445 () Bool)

(assert (=> d!1546174 (= res!2054604 e!3015445)))

(declare-fun res!2054606 () Bool)

(assert (=> d!1546174 (=> (not res!2054606) (not e!3015445))))

(declare-fun lt!1973285 () Bool)

(assert (=> d!1546174 (= res!2054606 (not lt!1973285))))

(declare-fun lt!1973282 () Bool)

(assert (=> d!1546174 (= lt!1973285 lt!1973282)))

(declare-fun lt!1973284 () Unit!143029)

(assert (=> d!1546174 (= lt!1973284 e!3015444)))

(assert (=> d!1546174 (= c!822325 lt!1973282)))

(assert (=> d!1546174 (= lt!1973282 (containsKey!4374 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(assert (=> d!1546174 (= (contains!18780 (extractMap!2680 (toList!7479 lm!2280)) key!5428) lt!1973285)))

(declare-fun b!4825878 () Bool)

(assert (=> b!4825878 (= e!3015445 (not (contains!18783 (keys!20227 (extractMap!2680 (toList!7479 lm!2280))) key!5428)))))

(declare-fun b!4825879 () Bool)

(assert (=> b!4825879 (= e!3015441 (keys!20227 (extractMap!2680 (toList!7479 lm!2280))))))

(declare-fun b!4825880 () Bool)

(assert (=> b!4825880 false))

(declare-fun lt!1973287 () Unit!143029)

(declare-fun lt!1973286 () Unit!143029)

(assert (=> b!4825880 (= lt!1973287 lt!1973286)))

(assert (=> b!4825880 (containsKey!4374 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428)))

(assert (=> b!4825880 (= lt!1973286 (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(declare-fun Unit!143068 () Unit!143029)

(assert (=> b!4825880 (= e!3015442 Unit!143068)))

(declare-fun b!4825881 () Bool)

(assert (=> b!4825881 (= e!3015443 e!3015446)))

(declare-fun res!2054605 () Bool)

(assert (=> b!4825881 (=> (not res!2054605) (not e!3015446))))

(assert (=> b!4825881 (= res!2054605 (isDefined!10611 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428)))))

(assert (= (and d!1546174 c!822325) b!4825877))

(assert (= (and d!1546174 (not c!822325)) b!4825875))

(assert (= (and b!4825875 c!822326) b!4825880))

(assert (= (and b!4825875 (not c!822326)) b!4825873))

(assert (= (or b!4825877 b!4825875) bm!336390))

(assert (= (and bm!336390 c!822327) b!4825876))

(assert (= (and bm!336390 (not c!822327)) b!4825879))

(assert (= (and d!1546174 res!2054606) b!4825878))

(assert (= (and d!1546174 (not res!2054604)) b!4825881))

(assert (= (and b!4825881 res!2054605) b!4825874))

(assert (=> b!4825878 m!5815992))

(declare-fun m!5816346 () Bool)

(assert (=> b!4825878 m!5816346))

(assert (=> b!4825878 m!5816346))

(declare-fun m!5816348 () Bool)

(assert (=> b!4825878 m!5816348))

(declare-fun m!5816350 () Bool)

(assert (=> d!1546174 m!5816350))

(declare-fun m!5816352 () Bool)

(assert (=> b!4825881 m!5816352))

(assert (=> b!4825881 m!5816352))

(declare-fun m!5816354 () Bool)

(assert (=> b!4825881 m!5816354))

(declare-fun m!5816356 () Bool)

(assert (=> bm!336390 m!5816356))

(declare-fun m!5816358 () Bool)

(assert (=> b!4825876 m!5816358))

(declare-fun m!5816360 () Bool)

(assert (=> b!4825877 m!5816360))

(assert (=> b!4825877 m!5816352))

(assert (=> b!4825877 m!5816352))

(assert (=> b!4825877 m!5816354))

(declare-fun m!5816362 () Bool)

(assert (=> b!4825877 m!5816362))

(assert (=> b!4825874 m!5815992))

(assert (=> b!4825874 m!5816346))

(assert (=> b!4825874 m!5816346))

(assert (=> b!4825874 m!5816348))

(assert (=> b!4825880 m!5816350))

(declare-fun m!5816364 () Bool)

(assert (=> b!4825880 m!5816364))

(assert (=> b!4825879 m!5815992))

(assert (=> b!4825879 m!5816346))

(assert (=> b!4825666 d!1546174))

(declare-fun b!4825882 () Bool)

(declare-fun e!3015448 () Unit!143029)

(declare-fun Unit!143069 () Unit!143029)

(assert (=> b!4825882 (= e!3015448 Unit!143069)))

(declare-fun b!4825883 () Bool)

(declare-fun e!3015452 () Bool)

(assert (=> b!4825883 (= e!3015452 (contains!18783 (keys!20227 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(declare-fun bm!336391 () Bool)

(declare-fun call!336396 () Bool)

(declare-fun e!3015447 () List!55099)

(assert (=> bm!336391 (= call!336396 (contains!18783 e!3015447 key!5428))))

(declare-fun c!822330 () Bool)

(declare-fun c!822328 () Bool)

(assert (=> bm!336391 (= c!822330 c!822328)))

(declare-fun b!4825884 () Bool)

(declare-fun e!3015450 () Unit!143029)

(assert (=> b!4825884 (= e!3015450 e!3015448)))

(declare-fun c!822329 () Bool)

(assert (=> b!4825884 (= c!822329 call!336396)))

(declare-fun b!4825885 () Bool)

(assert (=> b!4825885 (= e!3015447 (getKeysList!1160 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))))

(declare-fun b!4825886 () Bool)

(declare-fun lt!1973291 () Unit!143029)

(assert (=> b!4825886 (= e!3015450 lt!1973291)))

(declare-fun lt!1973297 () Unit!143029)

(assert (=> b!4825886 (= lt!1973297 (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(assert (=> b!4825886 (isDefined!10611 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(declare-fun lt!1973296 () Unit!143029)

(assert (=> b!4825886 (= lt!1973296 lt!1973297)))

(assert (=> b!4825886 (= lt!1973291 (lemmaInListThenGetKeysListContains!1155 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(assert (=> b!4825886 call!336396))

(declare-fun d!1546176 () Bool)

(declare-fun e!3015449 () Bool)

(assert (=> d!1546176 e!3015449))

(declare-fun res!2054607 () Bool)

(assert (=> d!1546176 (=> res!2054607 e!3015449)))

(declare-fun e!3015451 () Bool)

(assert (=> d!1546176 (= res!2054607 e!3015451)))

(declare-fun res!2054609 () Bool)

(assert (=> d!1546176 (=> (not res!2054609) (not e!3015451))))

(declare-fun lt!1973293 () Bool)

(assert (=> d!1546176 (= res!2054609 (not lt!1973293))))

(declare-fun lt!1973290 () Bool)

(assert (=> d!1546176 (= lt!1973293 lt!1973290)))

(declare-fun lt!1973292 () Unit!143029)

(assert (=> d!1546176 (= lt!1973292 e!3015450)))

(assert (=> d!1546176 (= c!822328 lt!1973290)))

(assert (=> d!1546176 (= lt!1973290 (containsKey!4374 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(assert (=> d!1546176 (= (contains!18780 (extractMap!2680 (toList!7479 lt!1973030)) key!5428) lt!1973293)))

(declare-fun b!4825887 () Bool)

(assert (=> b!4825887 (= e!3015451 (not (contains!18783 (keys!20227 (extractMap!2680 (toList!7479 lt!1973030))) key!5428)))))

(declare-fun b!4825888 () Bool)

(assert (=> b!4825888 (= e!3015447 (keys!20227 (extractMap!2680 (toList!7479 lt!1973030))))))

(declare-fun b!4825889 () Bool)

(assert (=> b!4825889 false))

(declare-fun lt!1973295 () Unit!143029)

(declare-fun lt!1973294 () Unit!143029)

(assert (=> b!4825889 (= lt!1973295 lt!1973294)))

(assert (=> b!4825889 (containsKey!4374 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428)))

(assert (=> b!4825889 (= lt!1973294 (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(declare-fun Unit!143070 () Unit!143029)

(assert (=> b!4825889 (= e!3015448 Unit!143070)))

(declare-fun b!4825890 () Bool)

(assert (=> b!4825890 (= e!3015449 e!3015452)))

(declare-fun res!2054608 () Bool)

(assert (=> b!4825890 (=> (not res!2054608) (not e!3015452))))

(assert (=> b!4825890 (= res!2054608 (isDefined!10611 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428)))))

(assert (= (and d!1546176 c!822328) b!4825886))

(assert (= (and d!1546176 (not c!822328)) b!4825884))

(assert (= (and b!4825884 c!822329) b!4825889))

(assert (= (and b!4825884 (not c!822329)) b!4825882))

(assert (= (or b!4825886 b!4825884) bm!336391))

(assert (= (and bm!336391 c!822330) b!4825885))

(assert (= (and bm!336391 (not c!822330)) b!4825888))

(assert (= (and d!1546176 res!2054609) b!4825887))

(assert (= (and d!1546176 (not res!2054607)) b!4825890))

(assert (= (and b!4825890 res!2054608) b!4825883))

(assert (=> b!4825887 m!5815986))

(declare-fun m!5816366 () Bool)

(assert (=> b!4825887 m!5816366))

(assert (=> b!4825887 m!5816366))

(declare-fun m!5816368 () Bool)

(assert (=> b!4825887 m!5816368))

(declare-fun m!5816370 () Bool)

(assert (=> d!1546176 m!5816370))

(declare-fun m!5816372 () Bool)

(assert (=> b!4825890 m!5816372))

(assert (=> b!4825890 m!5816372))

(declare-fun m!5816374 () Bool)

(assert (=> b!4825890 m!5816374))

(declare-fun m!5816376 () Bool)

(assert (=> bm!336391 m!5816376))

(declare-fun m!5816378 () Bool)

(assert (=> b!4825885 m!5816378))

(declare-fun m!5816380 () Bool)

(assert (=> b!4825886 m!5816380))

(assert (=> b!4825886 m!5816372))

(assert (=> b!4825886 m!5816372))

(assert (=> b!4825886 m!5816374))

(declare-fun m!5816382 () Bool)

(assert (=> b!4825886 m!5816382))

(assert (=> b!4825883 m!5815986))

(assert (=> b!4825883 m!5816366))

(assert (=> b!4825883 m!5816366))

(assert (=> b!4825883 m!5816368))

(assert (=> b!4825889 m!5816370))

(declare-fun m!5816384 () Bool)

(assert (=> b!4825889 m!5816384))

(assert (=> b!4825888 m!5815986))

(assert (=> b!4825888 m!5816366))

(assert (=> b!4825666 d!1546176))

(declare-fun bs!1163877 () Bool)

(declare-fun d!1546178 () Bool)

(assert (= bs!1163877 (and d!1546178 d!1546166)))

(declare-fun lambda!236742 () Int)

(assert (=> bs!1163877 (= lambda!236742 lambda!236737)))

(declare-fun bs!1163878 () Bool)

(assert (= bs!1163878 (and d!1546178 d!1546170)))

(assert (=> bs!1163878 (= lambda!236742 lambda!236738)))

(declare-fun bs!1163879 () Bool)

(assert (= bs!1163879 (and d!1546178 d!1546160)))

(assert (=> bs!1163879 (= lambda!236742 lambda!236734)))

(declare-fun bs!1163880 () Bool)

(assert (= bs!1163880 (and d!1546178 start!500676)))

(assert (=> bs!1163880 (= lambda!236742 lambda!236652)))

(declare-fun bs!1163881 () Bool)

(assert (= bs!1163881 (and d!1546178 d!1546172)))

(assert (=> bs!1163881 (= lambda!236742 lambda!236739)))

(assert (=> d!1546178 (not (contains!18780 (extractMap!2680 (toList!7479 lt!1973030)) key!5428))))

(declare-fun lt!1973300 () Unit!143029)

(declare-fun choose!35133 (ListLongMap!5995 K!16654 Hashable!7266) Unit!143029)

(assert (=> d!1546178 (= lt!1973300 (choose!35133 lt!1973030 key!5428 hashF!1509))))

(assert (=> d!1546178 (forall!12608 (toList!7479 lt!1973030) lambda!236742)))

(assert (=> d!1546178 (= (lemmaNotInItsHashBucketThenNotInMap!450 lt!1973030 key!5428 hashF!1509) lt!1973300)))

(declare-fun bs!1163882 () Bool)

(assert (= bs!1163882 d!1546178))

(assert (=> bs!1163882 m!5815986))

(assert (=> bs!1163882 m!5815986))

(assert (=> bs!1163882 m!5815988))

(declare-fun m!5816386 () Bool)

(assert (=> bs!1163882 m!5816386))

(declare-fun m!5816388 () Bool)

(assert (=> bs!1163882 m!5816388))

(assert (=> b!4825666 d!1546178))

(declare-fun d!1546180 () Bool)

(declare-fun res!2054610 () Bool)

(declare-fun e!3015453 () Bool)

(assert (=> d!1546180 (=> res!2054610 e!3015453)))

(assert (=> d!1546180 (= res!2054610 (and ((_ is Cons!54972) (apply!13353 lt!1973030 lt!1973034)) (= (_1!32391 (h!61406 (apply!13353 lt!1973030 lt!1973034))) key!5428)))))

(assert (=> d!1546180 (= (containsKey!4371 (apply!13353 lt!1973030 lt!1973034) key!5428) e!3015453)))

(declare-fun b!4825891 () Bool)

(declare-fun e!3015454 () Bool)

(assert (=> b!4825891 (= e!3015453 e!3015454)))

(declare-fun res!2054611 () Bool)

(assert (=> b!4825891 (=> (not res!2054611) (not e!3015454))))

(assert (=> b!4825891 (= res!2054611 ((_ is Cons!54972) (apply!13353 lt!1973030 lt!1973034)))))

(declare-fun b!4825892 () Bool)

(assert (=> b!4825892 (= e!3015454 (containsKey!4371 (t!362592 (apply!13353 lt!1973030 lt!1973034)) key!5428))))

(assert (= (and d!1546180 (not res!2054610)) b!4825891))

(assert (= (and b!4825891 res!2054611) b!4825892))

(declare-fun m!5816390 () Bool)

(assert (=> b!4825892 m!5816390))

(assert (=> b!4825663 d!1546180))

(declare-fun d!1546182 () Bool)

(assert (=> d!1546182 (= (apply!13353 lt!1973030 lt!1973034) (get!18824 (getValueByKey!2624 (toList!7479 lt!1973030) lt!1973034)))))

(declare-fun bs!1163883 () Bool)

(assert (= bs!1163883 d!1546182))

(declare-fun m!5816392 () Bool)

(assert (=> bs!1163883 m!5816392))

(assert (=> bs!1163883 m!5816392))

(declare-fun m!5816394 () Bool)

(assert (=> bs!1163883 m!5816394))

(assert (=> b!4825663 d!1546182))

(declare-fun bs!1163884 () Bool)

(declare-fun d!1546184 () Bool)

(assert (= bs!1163884 (and d!1546184 d!1546166)))

(declare-fun lambda!236745 () Int)

(assert (=> bs!1163884 (not (= lambda!236745 lambda!236737))))

(declare-fun bs!1163885 () Bool)

(assert (= bs!1163885 (and d!1546184 d!1546170)))

(assert (=> bs!1163885 (not (= lambda!236745 lambda!236738))))

(declare-fun bs!1163886 () Bool)

(assert (= bs!1163886 (and d!1546184 d!1546160)))

(assert (=> bs!1163886 (not (= lambda!236745 lambda!236734))))

(declare-fun bs!1163887 () Bool)

(assert (= bs!1163887 (and d!1546184 start!500676)))

(assert (=> bs!1163887 (not (= lambda!236745 lambda!236652))))

(declare-fun bs!1163888 () Bool)

(assert (= bs!1163888 (and d!1546184 d!1546172)))

(assert (=> bs!1163888 (not (= lambda!236745 lambda!236739))))

(declare-fun bs!1163889 () Bool)

(assert (= bs!1163889 (and d!1546184 d!1546178)))

(assert (=> bs!1163889 (not (= lambda!236745 lambda!236742))))

(assert (=> d!1546184 true))

(assert (=> d!1546184 (= (allKeysSameHashInMap!2582 lt!1973030 hashF!1509) (forall!12608 (toList!7479 lt!1973030) lambda!236745))))

(declare-fun bs!1163890 () Bool)

(assert (= bs!1163890 d!1546184))

(declare-fun m!5816396 () Bool)

(assert (=> bs!1163890 m!5816396))

(assert (=> b!4825668 d!1546184))

(declare-fun d!1546186 () Bool)

(declare-fun res!2054612 () Bool)

(declare-fun e!3015455 () Bool)

(assert (=> d!1546186 (=> res!2054612 e!3015455)))

(assert (=> d!1546186 (= res!2054612 ((_ is Nil!54973) (toList!7479 lm!2280)))))

(assert (=> d!1546186 (= (forall!12608 (toList!7479 lm!2280) lambda!236652) e!3015455)))

(declare-fun b!4825895 () Bool)

(declare-fun e!3015456 () Bool)

(assert (=> b!4825895 (= e!3015455 e!3015456)))

(declare-fun res!2054613 () Bool)

(assert (=> b!4825895 (=> (not res!2054613) (not e!3015456))))

(assert (=> b!4825895 (= res!2054613 (dynLambda!22218 lambda!236652 (h!61407 (toList!7479 lm!2280))))))

(declare-fun b!4825896 () Bool)

(assert (=> b!4825896 (= e!3015456 (forall!12608 (t!362593 (toList!7479 lm!2280)) lambda!236652))))

(assert (= (and d!1546186 (not res!2054612)) b!4825895))

(assert (= (and b!4825895 res!2054613) b!4825896))

(declare-fun b_lambda!189859 () Bool)

(assert (=> (not b_lambda!189859) (not b!4825895)))

(declare-fun m!5816398 () Bool)

(assert (=> b!4825895 m!5816398))

(declare-fun m!5816400 () Bool)

(assert (=> b!4825896 m!5816400))

(assert (=> start!500676 d!1546186))

(declare-fun d!1546188 () Bool)

(declare-fun isStrictlySorted!986 (List!55097) Bool)

(assert (=> d!1546188 (= (inv!70554 lm!2280) (isStrictlySorted!986 (toList!7479 lm!2280)))))

(declare-fun bs!1163891 () Bool)

(assert (= bs!1163891 d!1546188))

(declare-fun m!5816402 () Bool)

(assert (=> bs!1163891 m!5816402))

(assert (=> start!500676 d!1546188))

(declare-fun d!1546190 () Bool)

(declare-fun e!3015461 () Bool)

(assert (=> d!1546190 e!3015461))

(declare-fun res!2054616 () Bool)

(assert (=> d!1546190 (=> res!2054616 e!3015461)))

(declare-fun lt!1973309 () Bool)

(assert (=> d!1546190 (= res!2054616 (not lt!1973309))))

(declare-fun lt!1973311 () Bool)

(assert (=> d!1546190 (= lt!1973309 lt!1973311)))

(declare-fun lt!1973310 () Unit!143029)

(declare-fun e!3015462 () Unit!143029)

(assert (=> d!1546190 (= lt!1973310 e!3015462)))

(declare-fun c!822333 () Bool)

(assert (=> d!1546190 (= c!822333 lt!1973311)))

(declare-fun containsKey!4375 (List!55097 (_ BitVec 64)) Bool)

(assert (=> d!1546190 (= lt!1973311 (containsKey!4375 (toList!7479 lm!2280) lt!1973034))))

(assert (=> d!1546190 (= (contains!18781 lm!2280 lt!1973034) lt!1973309)))

(declare-fun b!4825903 () Bool)

(declare-fun lt!1973312 () Unit!143029)

(assert (=> b!4825903 (= e!3015462 lt!1973312)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2409 (List!55097 (_ BitVec 64)) Unit!143029)

(assert (=> b!4825903 (= lt!1973312 (lemmaContainsKeyImpliesGetValueByKeyDefined!2409 (toList!7479 lm!2280) lt!1973034))))

(declare-fun isDefined!10612 (Option!13497) Bool)

(assert (=> b!4825903 (isDefined!10612 (getValueByKey!2624 (toList!7479 lm!2280) lt!1973034))))

(declare-fun b!4825904 () Bool)

(declare-fun Unit!143071 () Unit!143029)

(assert (=> b!4825904 (= e!3015462 Unit!143071)))

(declare-fun b!4825905 () Bool)

(assert (=> b!4825905 (= e!3015461 (isDefined!10612 (getValueByKey!2624 (toList!7479 lm!2280) lt!1973034)))))

(assert (= (and d!1546190 c!822333) b!4825903))

(assert (= (and d!1546190 (not c!822333)) b!4825904))

(assert (= (and d!1546190 (not res!2054616)) b!4825905))

(declare-fun m!5816404 () Bool)

(assert (=> d!1546190 m!5816404))

(declare-fun m!5816406 () Bool)

(assert (=> b!4825903 m!5816406))

(declare-fun m!5816408 () Bool)

(assert (=> b!4825903 m!5816408))

(assert (=> b!4825903 m!5816408))

(declare-fun m!5816410 () Bool)

(assert (=> b!4825903 m!5816410))

(assert (=> b!4825905 m!5816408))

(assert (=> b!4825905 m!5816408))

(assert (=> b!4825905 m!5816410))

(assert (=> b!4825662 d!1546190))

(declare-fun d!1546192 () Bool)

(declare-fun hash!5404 (Hashable!7266 K!16654) (_ BitVec 64))

(assert (=> d!1546192 (= (hash!5400 hashF!1509 key!5428) (hash!5404 hashF!1509 key!5428))))

(declare-fun bs!1163892 () Bool)

(assert (= bs!1163892 d!1546192))

(declare-fun m!5816412 () Bool)

(assert (=> bs!1163892 m!5816412))

(assert (=> b!4825662 d!1546192))

(declare-fun d!1546194 () Bool)

(declare-fun e!3015463 () Bool)

(assert (=> d!1546194 e!3015463))

(declare-fun res!2054617 () Bool)

(assert (=> d!1546194 (=> res!2054617 e!3015463)))

(declare-fun lt!1973313 () Bool)

(assert (=> d!1546194 (= res!2054617 (not lt!1973313))))

(declare-fun lt!1973315 () Bool)

(assert (=> d!1546194 (= lt!1973313 lt!1973315)))

(declare-fun lt!1973314 () Unit!143029)

(declare-fun e!3015464 () Unit!143029)

(assert (=> d!1546194 (= lt!1973314 e!3015464)))

(declare-fun c!822334 () Bool)

(assert (=> d!1546194 (= c!822334 lt!1973315)))

(assert (=> d!1546194 (= lt!1973315 (containsKey!4375 (toList!7479 lt!1973030) lt!1973034))))

(assert (=> d!1546194 (= (contains!18781 lt!1973030 lt!1973034) lt!1973313)))

(declare-fun b!4825906 () Bool)

(declare-fun lt!1973316 () Unit!143029)

(assert (=> b!4825906 (= e!3015464 lt!1973316)))

(assert (=> b!4825906 (= lt!1973316 (lemmaContainsKeyImpliesGetValueByKeyDefined!2409 (toList!7479 lt!1973030) lt!1973034))))

(assert (=> b!4825906 (isDefined!10612 (getValueByKey!2624 (toList!7479 lt!1973030) lt!1973034))))

(declare-fun b!4825907 () Bool)

(declare-fun Unit!143072 () Unit!143029)

(assert (=> b!4825907 (= e!3015464 Unit!143072)))

(declare-fun b!4825908 () Bool)

(assert (=> b!4825908 (= e!3015463 (isDefined!10612 (getValueByKey!2624 (toList!7479 lt!1973030) lt!1973034)))))

(assert (= (and d!1546194 c!822334) b!4825906))

(assert (= (and d!1546194 (not c!822334)) b!4825907))

(assert (= (and d!1546194 (not res!2054617)) b!4825908))

(declare-fun m!5816414 () Bool)

(assert (=> d!1546194 m!5816414))

(declare-fun m!5816416 () Bool)

(assert (=> b!4825906 m!5816416))

(assert (=> b!4825906 m!5816392))

(assert (=> b!4825906 m!5816392))

(declare-fun m!5816418 () Bool)

(assert (=> b!4825906 m!5816418))

(assert (=> b!4825908 m!5816392))

(assert (=> b!4825908 m!5816392))

(assert (=> b!4825908 m!5816418))

(assert (=> b!4825664 d!1546194))

(declare-fun d!1546196 () Bool)

(declare-fun res!2054618 () Bool)

(declare-fun e!3015465 () Bool)

(assert (=> d!1546196 (=> res!2054618 e!3015465)))

(assert (=> d!1546196 (= res!2054618 (and ((_ is Cons!54972) (apply!13353 lm!2280 lt!1973034)) (= (_1!32391 (h!61406 (apply!13353 lm!2280 lt!1973034))) key!5428)))))

(assert (=> d!1546196 (= (containsKey!4371 (apply!13353 lm!2280 lt!1973034) key!5428) e!3015465)))

(declare-fun b!4825909 () Bool)

(declare-fun e!3015466 () Bool)

(assert (=> b!4825909 (= e!3015465 e!3015466)))

(declare-fun res!2054619 () Bool)

(assert (=> b!4825909 (=> (not res!2054619) (not e!3015466))))

(assert (=> b!4825909 (= res!2054619 ((_ is Cons!54972) (apply!13353 lm!2280 lt!1973034)))))

(declare-fun b!4825910 () Bool)

(assert (=> b!4825910 (= e!3015466 (containsKey!4371 (t!362592 (apply!13353 lm!2280 lt!1973034)) key!5428))))

(assert (= (and d!1546196 (not res!2054618)) b!4825909))

(assert (= (and b!4825909 res!2054619) b!4825910))

(declare-fun m!5816420 () Bool)

(assert (=> b!4825910 m!5816420))

(assert (=> b!4825660 d!1546196))

(declare-fun d!1546198 () Bool)

(assert (=> d!1546198 (= (apply!13353 lm!2280 lt!1973034) (get!18824 (getValueByKey!2624 (toList!7479 lm!2280) lt!1973034)))))

(declare-fun bs!1163893 () Bool)

(assert (= bs!1163893 d!1546198))

(assert (=> bs!1163893 m!5816408))

(assert (=> bs!1163893 m!5816408))

(declare-fun m!5816422 () Bool)

(assert (=> bs!1163893 m!5816422))

(assert (=> b!4825660 d!1546198))

(declare-fun bs!1163894 () Bool)

(declare-fun d!1546200 () Bool)

(assert (= bs!1163894 (and d!1546200 d!1546184)))

(declare-fun lambda!236746 () Int)

(assert (=> bs!1163894 (= lambda!236746 lambda!236745)))

(declare-fun bs!1163895 () Bool)

(assert (= bs!1163895 (and d!1546200 d!1546166)))

(assert (=> bs!1163895 (not (= lambda!236746 lambda!236737))))

(declare-fun bs!1163896 () Bool)

(assert (= bs!1163896 (and d!1546200 d!1546170)))

(assert (=> bs!1163896 (not (= lambda!236746 lambda!236738))))

(declare-fun bs!1163897 () Bool)

(assert (= bs!1163897 (and d!1546200 d!1546160)))

(assert (=> bs!1163897 (not (= lambda!236746 lambda!236734))))

(declare-fun bs!1163898 () Bool)

(assert (= bs!1163898 (and d!1546200 start!500676)))

(assert (=> bs!1163898 (not (= lambda!236746 lambda!236652))))

(declare-fun bs!1163899 () Bool)

(assert (= bs!1163899 (and d!1546200 d!1546172)))

(assert (=> bs!1163899 (not (= lambda!236746 lambda!236739))))

(declare-fun bs!1163900 () Bool)

(assert (= bs!1163900 (and d!1546200 d!1546178)))

(assert (=> bs!1163900 (not (= lambda!236746 lambda!236742))))

(assert (=> d!1546200 true))

(assert (=> d!1546200 (= (allKeysSameHashInMap!2582 lm!2280 hashF!1509) (forall!12608 (toList!7479 lm!2280) lambda!236746))))

(declare-fun bs!1163901 () Bool)

(assert (= bs!1163901 d!1546200))

(declare-fun m!5816424 () Bool)

(assert (=> bs!1163901 m!5816424))

(assert (=> b!4825665 d!1546200))

(declare-fun b!4825915 () Bool)

(declare-fun e!3015469 () Bool)

(declare-fun tp!1362597 () Bool)

(declare-fun tp!1362598 () Bool)

(assert (=> b!4825915 (= e!3015469 (and tp!1362597 tp!1362598))))

(assert (=> b!4825659 (= tp!1362586 e!3015469)))

(assert (= (and b!4825659 ((_ is Cons!54973) (toList!7479 lm!2280))) b!4825915))

(declare-fun b_lambda!189861 () Bool)

(assert (= b_lambda!189859 (or start!500676 b_lambda!189861)))

(declare-fun bs!1163902 () Bool)

(declare-fun d!1546202 () Bool)

(assert (= bs!1163902 (and d!1546202 start!500676)))

(assert (=> bs!1163902 (= (dynLambda!22218 lambda!236652 (h!61407 (toList!7479 lm!2280))) (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(assert (=> bs!1163902 m!5816266))

(assert (=> b!4825895 d!1546202))

(declare-fun b_lambda!189863 () Bool)

(assert (= b_lambda!189857 (or start!500676 b_lambda!189863)))

(declare-fun bs!1163903 () Bool)

(declare-fun d!1546204 () Bool)

(assert (= bs!1163903 (and d!1546204 start!500676)))

(assert (=> bs!1163903 (= (dynLambda!22218 lambda!236652 (h!61407 (toList!7479 lt!1973030))) (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lt!1973030)))))))

(declare-fun m!5816426 () Bool)

(assert (=> bs!1163903 m!5816426))

(assert (=> b!4825841 d!1546204))

(check-sat (not b!4825886) (not d!1546166) (not d!1546164) (not b!4825726) (not b_lambda!189863) (not b!4825842) (not d!1546194) (not b!4825852) (not b!4825857) (not d!1546192) (not b!4825848) (not bm!336366) (not b!4825869) (not b!4825830) (not b!4825728) (not d!1546176) tp_is_empty!34459 (not bm!336389) (not b!4825880) (not b!4825896) (not b!4825877) (not b!4825889) (not d!1546168) (not b!4825862) (not b!4825731) (not d!1546182) (not b!4825892) (not d!1546200) (not b!4825876) (not b!4825858) (not d!1546096) (not b!4825831) (not d!1546162) (not b!4825879) (not b!4825915) (not b!4825887) (not b!4825878) (not b!4825859) (not bm!336390) (not d!1546170) (not b!4825855) (not b!4825881) (not b!4825910) (not d!1546198) (not d!1546172) (not b!4825888) (not d!1546160) (not b!4825883) (not b!4825724) (not bm!336387) (not b!4825850) (not b!4825890) (not b!4825905) (not b!4825832) (not b!4825854) (not d!1546174) (not d!1546190) (not b!4825908) (not bm!336391) (not bs!1163902) (not b!4825885) (not b!4825906) (not b!4825856) (not b!4825833) (not d!1546188) (not bm!336388) (not b!4825871) (not b!4825729) (not bm!336386) (not b_lambda!189861) (not b!4825874) (not b!4825727) (not d!1546184) (not b!4825730) (not d!1546178) (not d!1546116) (not d!1546108) (not b!4825867) (not b!4825903) (not bs!1163903))
(check-sat)
(get-model)

(declare-fun d!1546208 () Bool)

(declare-fun lt!1973322 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9820 (List!55099) (InoxSet K!16654))

(assert (=> d!1546208 (= lt!1973322 (select (content!9820 e!3015441) key!5428))))

(declare-fun e!3015480 () Bool)

(assert (=> d!1546208 (= lt!1973322 e!3015480)))

(declare-fun res!2054631 () Bool)

(assert (=> d!1546208 (=> (not res!2054631) (not e!3015480))))

(assert (=> d!1546208 (= res!2054631 ((_ is Cons!54975) e!3015441))))

(assert (=> d!1546208 (= (contains!18783 e!3015441 key!5428) lt!1973322)))

(declare-fun b!4825926 () Bool)

(declare-fun e!3015481 () Bool)

(assert (=> b!4825926 (= e!3015480 e!3015481)))

(declare-fun res!2054630 () Bool)

(assert (=> b!4825926 (=> res!2054630 e!3015481)))

(assert (=> b!4825926 (= res!2054630 (= (h!61409 e!3015441) key!5428))))

(declare-fun b!4825927 () Bool)

(assert (=> b!4825927 (= e!3015481 (contains!18783 (t!362595 e!3015441) key!5428))))

(assert (= (and d!1546208 res!2054631) b!4825926))

(assert (= (and b!4825926 (not res!2054630)) b!4825927))

(declare-fun m!5816434 () Bool)

(assert (=> d!1546208 m!5816434))

(declare-fun m!5816436 () Bool)

(assert (=> d!1546208 m!5816436))

(declare-fun m!5816438 () Bool)

(assert (=> b!4825927 m!5816438))

(assert (=> bm!336390 d!1546208))

(declare-fun d!1546212 () Bool)

(declare-fun isEmpty!29655 (Option!13497) Bool)

(assert (=> d!1546212 (= (isDefined!10612 (getValueByKey!2624 (toList!7479 lm!2280) lt!1973034)) (not (isEmpty!29655 (getValueByKey!2624 (toList!7479 lm!2280) lt!1973034))))))

(declare-fun bs!1163904 () Bool)

(assert (= bs!1163904 d!1546212))

(assert (=> bs!1163904 m!5816408))

(declare-fun m!5816440 () Bool)

(assert (=> bs!1163904 m!5816440))

(assert (=> b!4825905 d!1546212))

(declare-fun b!4825938 () Bool)

(declare-fun e!3015487 () Option!13497)

(assert (=> b!4825938 (= e!3015487 (getValueByKey!2624 (t!362593 (toList!7479 lm!2280)) lt!1973034))))

(declare-fun b!4825936 () Bool)

(declare-fun e!3015486 () Option!13497)

(assert (=> b!4825936 (= e!3015486 (Some!13496 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(declare-fun b!4825939 () Bool)

(assert (=> b!4825939 (= e!3015487 None!13496)))

(declare-fun d!1546214 () Bool)

(declare-fun c!822339 () Bool)

(assert (=> d!1546214 (= c!822339 (and ((_ is Cons!54973) (toList!7479 lm!2280)) (= (_1!32392 (h!61407 (toList!7479 lm!2280))) lt!1973034)))))

(assert (=> d!1546214 (= (getValueByKey!2624 (toList!7479 lm!2280) lt!1973034) e!3015486)))

(declare-fun b!4825937 () Bool)

(assert (=> b!4825937 (= e!3015486 e!3015487)))

(declare-fun c!822340 () Bool)

(assert (=> b!4825937 (= c!822340 (and ((_ is Cons!54973) (toList!7479 lm!2280)) (not (= (_1!32392 (h!61407 (toList!7479 lm!2280))) lt!1973034))))))

(assert (= (and d!1546214 c!822339) b!4825936))

(assert (= (and d!1546214 (not c!822339)) b!4825937))

(assert (= (and b!4825937 c!822340) b!4825938))

(assert (= (and b!4825937 (not c!822340)) b!4825939))

(declare-fun m!5816442 () Bool)

(assert (=> b!4825938 m!5816442))

(assert (=> b!4825905 d!1546214))

(declare-fun bs!1163905 () Bool)

(declare-fun b!4825944 () Bool)

(assert (= bs!1163905 (and b!4825944 b!4825834)))

(declare-fun lambda!236747 () Int)

(assert (=> bs!1163905 (= (= (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973032) (= lambda!236747 lambda!236728))))

(declare-fun bs!1163906 () Bool)

(assert (= bs!1163906 (and b!4825944 b!4825830)))

(assert (=> bs!1163906 (= (= (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973032) (= lambda!236747 lambda!236729))))

(assert (=> bs!1163906 (= (= (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973262) (= lambda!236747 lambda!236730))))

(declare-fun bs!1163907 () Bool)

(assert (= bs!1163907 (and b!4825944 d!1546116)))

(assert (=> bs!1163907 (= (= (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973257) (= lambda!236747 lambda!236731))))

(assert (=> b!4825944 true))

(declare-fun bs!1163908 () Bool)

(declare-fun b!4825940 () Bool)

(assert (= bs!1163908 (and b!4825940 b!4825834)))

(declare-fun lambda!236748 () Int)

(assert (=> bs!1163908 (= (= (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973032) (= lambda!236748 lambda!236728))))

(declare-fun bs!1163909 () Bool)

(assert (= bs!1163909 (and b!4825940 b!4825944)))

(assert (=> bs!1163909 (= lambda!236748 lambda!236747)))

(declare-fun bs!1163910 () Bool)

(assert (= bs!1163910 (and b!4825940 b!4825830)))

(assert (=> bs!1163910 (= (= (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973032) (= lambda!236748 lambda!236729))))

(assert (=> bs!1163910 (= (= (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973262) (= lambda!236748 lambda!236730))))

(declare-fun bs!1163911 () Bool)

(assert (= bs!1163911 (and b!4825940 d!1546116)))

(assert (=> bs!1163911 (= (= (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973257) (= lambda!236748 lambda!236731))))

(assert (=> b!4825940 true))

(declare-fun lambda!236751 () Int)

(declare-fun lt!1973343 () ListMap!6857)

(assert (=> b!4825940 (= (= lt!1973343 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236751 lambda!236748))))

(assert (=> bs!1163908 (= (= lt!1973343 lt!1973032) (= lambda!236751 lambda!236728))))

(assert (=> bs!1163909 (= (= lt!1973343 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236751 lambda!236747))))

(assert (=> bs!1163910 (= (= lt!1973343 lt!1973032) (= lambda!236751 lambda!236729))))

(assert (=> bs!1163910 (= (= lt!1973343 lt!1973262) (= lambda!236751 lambda!236730))))

(assert (=> bs!1163911 (= (= lt!1973343 lt!1973257) (= lambda!236751 lambda!236731))))

(assert (=> b!4825940 true))

(declare-fun bs!1163912 () Bool)

(declare-fun d!1546216 () Bool)

(assert (= bs!1163912 (and d!1546216 b!4825940)))

(declare-fun lambda!236754 () Int)

(declare-fun lt!1973338 () ListMap!6857)

(assert (=> bs!1163912 (= (= lt!1973338 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236754 lambda!236748))))

(declare-fun bs!1163913 () Bool)

(assert (= bs!1163913 (and d!1546216 b!4825834)))

(assert (=> bs!1163913 (= (= lt!1973338 lt!1973032) (= lambda!236754 lambda!236728))))

(declare-fun bs!1163914 () Bool)

(assert (= bs!1163914 (and d!1546216 b!4825944)))

(assert (=> bs!1163914 (= (= lt!1973338 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236754 lambda!236747))))

(declare-fun bs!1163915 () Bool)

(assert (= bs!1163915 (and d!1546216 b!4825830)))

(assert (=> bs!1163915 (= (= lt!1973338 lt!1973032) (= lambda!236754 lambda!236729))))

(assert (=> bs!1163912 (= (= lt!1973338 lt!1973343) (= lambda!236754 lambda!236751))))

(assert (=> bs!1163915 (= (= lt!1973338 lt!1973262) (= lambda!236754 lambda!236730))))

(declare-fun bs!1163916 () Bool)

(assert (= bs!1163916 (and d!1546216 d!1546116)))

(assert (=> bs!1163916 (= (= lt!1973338 lt!1973257) (= lambda!236754 lambda!236731))))

(assert (=> d!1546216 true))

(declare-fun e!3015489 () ListMap!6857)

(assert (=> b!4825940 (= e!3015489 lt!1973343)))

(declare-fun lt!1973334 () ListMap!6857)

(assert (=> b!4825940 (= lt!1973334 (+!2537 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) (h!61406 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))))))))

(assert (=> b!4825940 (= lt!1973343 (addToMapMapFromBucket!1798 (t!362592 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280))))) (+!2537 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) (h!61406 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280))))))))))

(declare-fun lt!1973329 () Unit!143029)

(declare-fun call!336399 () Unit!143029)

(assert (=> b!4825940 (= lt!1973329 call!336399)))

(declare-fun call!336397 () Bool)

(assert (=> b!4825940 call!336397))

(declare-fun lt!1973333 () Unit!143029)

(assert (=> b!4825940 (= lt!1973333 lt!1973329)))

(assert (=> b!4825940 (forall!12610 (toList!7480 lt!1973334) lambda!236751)))

(declare-fun lt!1973328 () Unit!143029)

(declare-fun Unit!143073 () Unit!143029)

(assert (=> b!4825940 (= lt!1973328 Unit!143073)))

(assert (=> b!4825940 (forall!12610 (t!362592 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280))))) lambda!236751)))

(declare-fun lt!1973323 () Unit!143029)

(declare-fun Unit!143074 () Unit!143029)

(assert (=> b!4825940 (= lt!1973323 Unit!143074)))

(declare-fun lt!1973342 () Unit!143029)

(declare-fun Unit!143075 () Unit!143029)

(assert (=> b!4825940 (= lt!1973342 Unit!143075)))

(declare-fun lt!1973335 () Unit!143029)

(assert (=> b!4825940 (= lt!1973335 (forallContained!4386 (toList!7480 lt!1973334) lambda!236751 (h!61406 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))))))))

(assert (=> b!4825940 (contains!18780 lt!1973334 (_1!32391 (h!61406 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973340 () Unit!143029)

(declare-fun Unit!143076 () Unit!143029)

(assert (=> b!4825940 (= lt!1973340 Unit!143076)))

(assert (=> b!4825940 (contains!18780 lt!1973343 (_1!32391 (h!61406 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973332 () Unit!143029)

(declare-fun Unit!143077 () Unit!143029)

(assert (=> b!4825940 (= lt!1973332 Unit!143077)))

(assert (=> b!4825940 (forall!12610 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))) lambda!236751)))

(declare-fun lt!1973327 () Unit!143029)

(declare-fun Unit!143078 () Unit!143029)

(assert (=> b!4825940 (= lt!1973327 Unit!143078)))

(assert (=> b!4825940 (forall!12610 (toList!7480 lt!1973334) lambda!236751)))

(declare-fun lt!1973326 () Unit!143029)

(declare-fun Unit!143079 () Unit!143029)

(assert (=> b!4825940 (= lt!1973326 Unit!143079)))

(declare-fun lt!1973336 () Unit!143029)

(declare-fun Unit!143080 () Unit!143029)

(assert (=> b!4825940 (= lt!1973336 Unit!143080)))

(declare-fun lt!1973339 () Unit!143029)

(assert (=> b!4825940 (= lt!1973339 (addForallContainsKeyThenBeforeAdding!991 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973343 (_1!32391 (h!61406 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))))) (_2!32391 (h!61406 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280))))))))))

(assert (=> b!4825940 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) lambda!236751)))

(declare-fun lt!1973324 () Unit!143029)

(assert (=> b!4825940 (= lt!1973324 lt!1973339)))

(declare-fun call!336398 () Bool)

(assert (=> b!4825940 call!336398))

(declare-fun lt!1973325 () Unit!143029)

(declare-fun Unit!143081 () Unit!143029)

(assert (=> b!4825940 (= lt!1973325 Unit!143081)))

(declare-fun res!2054634 () Bool)

(assert (=> b!4825940 (= res!2054634 (forall!12610 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))) lambda!236751))))

(declare-fun e!3015490 () Bool)

(assert (=> b!4825940 (=> (not res!2054634) (not e!3015490))))

(assert (=> b!4825940 e!3015490))

(declare-fun lt!1973330 () Unit!143029)

(declare-fun Unit!143082 () Unit!143029)

(assert (=> b!4825940 (= lt!1973330 Unit!143082)))

(declare-fun b!4825942 () Bool)

(declare-fun res!2054633 () Bool)

(declare-fun e!3015488 () Bool)

(assert (=> b!4825942 (=> (not res!2054633) (not e!3015488))))

(assert (=> b!4825942 (= res!2054633 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) lambda!236754))))

(declare-fun bm!336392 () Bool)

(declare-fun c!822341 () Bool)

(assert (=> bm!336392 (= call!336398 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (ite c!822341 lambda!236747 lambda!236751)))))

(declare-fun b!4825943 () Bool)

(assert (=> b!4825943 (= e!3015488 (invariantList!1813 (toList!7480 lt!1973338)))))

(assert (=> b!4825944 (= e!3015489 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))))))

(declare-fun lt!1973337 () Unit!143029)

(assert (=> b!4825944 (= lt!1973337 call!336399)))

(assert (=> b!4825944 call!336397))

(declare-fun lt!1973341 () Unit!143029)

(assert (=> b!4825944 (= lt!1973341 lt!1973337)))

(assert (=> b!4825944 call!336398))

(declare-fun lt!1973331 () Unit!143029)

(declare-fun Unit!143083 () Unit!143029)

(assert (=> b!4825944 (= lt!1973331 Unit!143083)))

(declare-fun bm!336393 () Bool)

(assert (=> bm!336393 (= call!336399 (lemmaContainsAllItsOwnKeys!992 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))))))

(declare-fun bm!336394 () Bool)

(assert (=> bm!336394 (= call!336397 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (ite c!822341 lambda!236747 lambda!236748)))))

(declare-fun b!4825941 () Bool)

(assert (=> b!4825941 (= e!3015490 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) lambda!236751))))

(assert (=> d!1546216 e!3015488))

(declare-fun res!2054632 () Bool)

(assert (=> d!1546216 (=> (not res!2054632) (not e!3015488))))

(assert (=> d!1546216 (= res!2054632 (forall!12610 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))) lambda!236754))))

(assert (=> d!1546216 (= lt!1973338 e!3015489)))

(assert (=> d!1546216 (= c!822341 ((_ is Nil!54972) (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280))))))))

(assert (=> d!1546216 (noDuplicateKeys!2452 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))))))

(assert (=> d!1546216 (= (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280)))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) lt!1973338)))

(assert (= (and d!1546216 c!822341) b!4825944))

(assert (= (and d!1546216 (not c!822341)) b!4825940))

(assert (= (and b!4825940 res!2054634) b!4825941))

(assert (= (or b!4825944 b!4825940) bm!336394))

(assert (= (or b!4825944 b!4825940) bm!336392))

(assert (= (or b!4825944 b!4825940) bm!336393))

(assert (= (and d!1546216 res!2054632) b!4825942))

(assert (= (and b!4825942 res!2054633) b!4825943))

(declare-fun m!5816444 () Bool)

(assert (=> bm!336394 m!5816444))

(assert (=> bm!336393 m!5816326))

(declare-fun m!5816446 () Bool)

(assert (=> bm!336393 m!5816446))

(declare-fun m!5816448 () Bool)

(assert (=> b!4825941 m!5816448))

(declare-fun m!5816450 () Bool)

(assert (=> b!4825943 m!5816450))

(declare-fun m!5816452 () Bool)

(assert (=> bm!336392 m!5816452))

(declare-fun m!5816456 () Bool)

(assert (=> d!1546216 m!5816456))

(declare-fun m!5816458 () Bool)

(assert (=> d!1546216 m!5816458))

(declare-fun m!5816460 () Bool)

(assert (=> b!4825942 m!5816460))

(declare-fun m!5816464 () Bool)

(assert (=> b!4825940 m!5816464))

(declare-fun m!5816468 () Bool)

(assert (=> b!4825940 m!5816468))

(declare-fun m!5816472 () Bool)

(assert (=> b!4825940 m!5816472))

(declare-fun m!5816476 () Bool)

(assert (=> b!4825940 m!5816476))

(declare-fun m!5816478 () Bool)

(assert (=> b!4825940 m!5816478))

(assert (=> b!4825940 m!5816326))

(declare-fun m!5816482 () Bool)

(assert (=> b!4825940 m!5816482))

(assert (=> b!4825940 m!5816326))

(declare-fun m!5816486 () Bool)

(assert (=> b!4825940 m!5816486))

(assert (=> b!4825940 m!5816476))

(assert (=> b!4825940 m!5816478))

(assert (=> b!4825940 m!5816486))

(declare-fun m!5816488 () Bool)

(assert (=> b!4825940 m!5816488))

(declare-fun m!5816490 () Bool)

(assert (=> b!4825940 m!5816490))

(assert (=> b!4825940 m!5816448))

(assert (=> b!4825867 d!1546216))

(declare-fun bs!1163917 () Bool)

(declare-fun d!1546220 () Bool)

(assert (= bs!1163917 (and d!1546220 d!1546184)))

(declare-fun lambda!236757 () Int)

(assert (=> bs!1163917 (not (= lambda!236757 lambda!236745))))

(declare-fun bs!1163918 () Bool)

(assert (= bs!1163918 (and d!1546220 d!1546166)))

(assert (=> bs!1163918 (= lambda!236757 lambda!236737)))

(declare-fun bs!1163919 () Bool)

(assert (= bs!1163919 (and d!1546220 d!1546170)))

(assert (=> bs!1163919 (= lambda!236757 lambda!236738)))

(declare-fun bs!1163921 () Bool)

(assert (= bs!1163921 (and d!1546220 d!1546200)))

(assert (=> bs!1163921 (not (= lambda!236757 lambda!236746))))

(declare-fun bs!1163922 () Bool)

(assert (= bs!1163922 (and d!1546220 d!1546160)))

(assert (=> bs!1163922 (= lambda!236757 lambda!236734)))

(declare-fun bs!1163923 () Bool)

(assert (= bs!1163923 (and d!1546220 start!500676)))

(assert (=> bs!1163923 (= lambda!236757 lambda!236652)))

(declare-fun bs!1163924 () Bool)

(assert (= bs!1163924 (and d!1546220 d!1546172)))

(assert (=> bs!1163924 (= lambda!236757 lambda!236739)))

(declare-fun bs!1163925 () Bool)

(assert (= bs!1163925 (and d!1546220 d!1546178)))

(assert (=> bs!1163925 (= lambda!236757 lambda!236742)))

(declare-fun lt!1973347 () ListMap!6857)

(assert (=> d!1546220 (invariantList!1813 (toList!7480 lt!1973347))))

(declare-fun e!3015494 () ListMap!6857)

(assert (=> d!1546220 (= lt!1973347 e!3015494)))

(declare-fun c!822342 () Bool)

(assert (=> d!1546220 (= c!822342 ((_ is Cons!54973) (t!362593 (t!362593 (toList!7479 lm!2280)))))))

(assert (=> d!1546220 (forall!12608 (t!362593 (t!362593 (toList!7479 lm!2280))) lambda!236757)))

(assert (=> d!1546220 (= (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280)))) lt!1973347)))

(declare-fun b!4825956 () Bool)

(assert (=> b!4825956 (= e!3015494 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (t!362593 (t!362593 (toList!7479 lm!2280))))) (extractMap!2680 (t!362593 (t!362593 (t!362593 (toList!7479 lm!2280)))))))))

(declare-fun b!4825957 () Bool)

(assert (=> b!4825957 (= e!3015494 (ListMap!6858 Nil!54972))))

(assert (= (and d!1546220 c!822342) b!4825956))

(assert (= (and d!1546220 (not c!822342)) b!4825957))

(declare-fun m!5816498 () Bool)

(assert (=> d!1546220 m!5816498))

(declare-fun m!5816500 () Bool)

(assert (=> d!1546220 m!5816500))

(declare-fun m!5816502 () Bool)

(assert (=> b!4825956 m!5816502))

(assert (=> b!4825956 m!5816502))

(declare-fun m!5816504 () Bool)

(assert (=> b!4825956 m!5816504))

(assert (=> b!4825867 d!1546220))

(declare-fun b!4826019 () Bool)

(assert (=> b!4826019 true))

(declare-fun bs!1163927 () Bool)

(declare-fun b!4826014 () Bool)

(assert (= bs!1163927 (and b!4826014 b!4826019)))

(declare-fun lambda!236767 () Int)

(declare-fun lambda!236766 () Int)

(assert (=> bs!1163927 (= (= (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236767 lambda!236766))))

(assert (=> b!4826014 true))

(declare-fun bs!1163928 () Bool)

(declare-fun b!4826016 () Bool)

(assert (= bs!1163928 (and b!4826016 b!4826019)))

(declare-fun lambda!236768 () Int)

(assert (=> bs!1163928 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236768 lambda!236766))))

(declare-fun bs!1163929 () Bool)

(assert (= bs!1163929 (and b!4826016 b!4826014)))

(assert (=> bs!1163929 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236768 lambda!236767))))

(assert (=> b!4826016 true))

(declare-fun b!4826012 () Bool)

(assert (=> b!4826012 false))

(declare-fun e!3015530 () Unit!143029)

(declare-fun Unit!143084 () Unit!143029)

(assert (=> b!4826012 (= e!3015530 Unit!143084)))

(declare-fun b!4826013 () Bool)

(declare-fun e!3015533 () Unit!143029)

(declare-fun Unit!143085 () Unit!143029)

(assert (=> b!4826013 (= e!3015533 Unit!143085)))

(declare-fun e!3015531 () List!55099)

(assert (=> b!4826014 (= e!3015531 (Cons!54975 (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (getKeysList!1160 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))))))

(declare-fun c!822359 () Bool)

(assert (=> b!4826014 (= c!822359 (containsKey!4374 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973368 () Unit!143029)

(assert (=> b!4826014 (= lt!1973368 e!3015530)))

(declare-fun c!822358 () Bool)

(assert (=> b!4826014 (= c!822358 (contains!18783 (getKeysList!1160 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973372 () Unit!143029)

(assert (=> b!4826014 (= lt!1973372 e!3015533)))

(declare-fun lt!1973366 () List!55099)

(assert (=> b!4826014 (= lt!1973366 (getKeysList!1160 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))))))

(declare-fun lt!1973370 () Unit!143029)

(declare-fun lemmaForallContainsAddHeadPreserves!376 (List!55096 List!55099 tuple2!58194) Unit!143029)

(assert (=> b!4826014 (= lt!1973370 (lemmaForallContainsAddHeadPreserves!376 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) lt!1973366 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))))))

(declare-fun forall!12612 (List!55099 Int) Bool)

(assert (=> b!4826014 (forall!12612 lt!1973366 lambda!236767)))

(declare-fun lt!1973367 () Unit!143029)

(assert (=> b!4826014 (= lt!1973367 lt!1973370)))

(declare-fun b!4826015 () Bool)

(declare-fun lt!1973371 () List!55099)

(declare-fun lambda!236769 () Int)

(declare-fun e!3015532 () Bool)

(declare-fun map!12581 (List!55096 Int) List!55099)

(assert (=> b!4826015 (= e!3015532 (= (content!9820 lt!1973371) (content!9820 (map!12581 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) lambda!236769))))))

(declare-fun d!1546226 () Bool)

(assert (=> d!1546226 e!3015532))

(declare-fun res!2054669 () Bool)

(assert (=> d!1546226 (=> (not res!2054669) (not e!3015532))))

(declare-fun noDuplicate!962 (List!55099) Bool)

(assert (=> d!1546226 (= res!2054669 (noDuplicate!962 lt!1973371))))

(assert (=> d!1546226 (= lt!1973371 e!3015531)))

(declare-fun c!822357 () Bool)

(assert (=> d!1546226 (= c!822357 ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))))

(assert (=> d!1546226 (invariantList!1813 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))))

(assert (=> d!1546226 (= (getKeysList!1160 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) lt!1973371)))

(declare-fun b!4826011 () Bool)

(assert (=> b!4826011 (= e!3015531 Nil!54975)))

(declare-fun res!2054670 () Bool)

(assert (=> b!4826016 (=> (not res!2054670) (not e!3015532))))

(assert (=> b!4826016 (= res!2054670 (forall!12612 lt!1973371 lambda!236768))))

(declare-fun b!4826017 () Bool)

(declare-fun res!2054671 () Bool)

(assert (=> b!4826017 (=> (not res!2054671) (not e!3015532))))

(declare-fun length!780 (List!55099) Int)

(declare-fun length!781 (List!55096) Int)

(assert (=> b!4826017 (= res!2054671 (= (length!780 lt!1973371) (length!781 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))))))

(declare-fun b!4826018 () Bool)

(declare-fun Unit!143087 () Unit!143029)

(assert (=> b!4826018 (= e!3015530 Unit!143087)))

(assert (=> b!4826019 false))

(declare-fun lt!1973369 () Unit!143029)

(declare-fun forallContained!4387 (List!55099 Int K!16654) Unit!143029)

(assert (=> b!4826019 (= lt!1973369 (forallContained!4387 (getKeysList!1160 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) lambda!236766 (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))))))

(declare-fun Unit!143090 () Unit!143029)

(assert (=> b!4826019 (= e!3015533 Unit!143090)))

(assert (= (and d!1546226 c!822357) b!4826014))

(assert (= (and d!1546226 (not c!822357)) b!4826011))

(assert (= (and b!4826014 c!822359) b!4826012))

(assert (= (and b!4826014 (not c!822359)) b!4826018))

(assert (= (and b!4826014 c!822358) b!4826019))

(assert (= (and b!4826014 (not c!822358)) b!4826013))

(assert (= (and d!1546226 res!2054669) b!4826017))

(assert (= (and b!4826017 res!2054671) b!4826016))

(assert (= (and b!4826016 res!2054670) b!4826015))

(declare-fun m!5816528 () Bool)

(assert (=> b!4826017 m!5816528))

(declare-fun m!5816530 () Bool)

(assert (=> b!4826017 m!5816530))

(declare-fun m!5816532 () Bool)

(assert (=> b!4826014 m!5816532))

(declare-fun m!5816534 () Bool)

(assert (=> b!4826014 m!5816534))

(declare-fun m!5816536 () Bool)

(assert (=> b!4826014 m!5816536))

(declare-fun m!5816538 () Bool)

(assert (=> b!4826014 m!5816538))

(assert (=> b!4826014 m!5816536))

(declare-fun m!5816540 () Bool)

(assert (=> b!4826014 m!5816540))

(declare-fun m!5816542 () Bool)

(assert (=> b!4826016 m!5816542))

(assert (=> b!4826019 m!5816536))

(assert (=> b!4826019 m!5816536))

(declare-fun m!5816544 () Bool)

(assert (=> b!4826019 m!5816544))

(declare-fun m!5816546 () Bool)

(assert (=> b!4826015 m!5816546))

(declare-fun m!5816548 () Bool)

(assert (=> b!4826015 m!5816548))

(assert (=> b!4826015 m!5816548))

(declare-fun m!5816550 () Bool)

(assert (=> b!4826015 m!5816550))

(declare-fun m!5816552 () Bool)

(assert (=> d!1546226 m!5816552))

(declare-fun m!5816554 () Bool)

(assert (=> d!1546226 m!5816554))

(assert (=> b!4825876 d!1546226))

(declare-fun d!1546244 () Bool)

(declare-fun res!2054672 () Bool)

(declare-fun e!3015534 () Bool)

(assert (=> d!1546244 (=> res!2054672 e!3015534)))

(assert (=> d!1546244 (= res!2054672 (and ((_ is Cons!54972) (t!362592 (apply!13353 lm!2280 lt!1973034))) (= (_1!32391 (h!61406 (t!362592 (apply!13353 lm!2280 lt!1973034)))) key!5428)))))

(assert (=> d!1546244 (= (containsKey!4371 (t!362592 (apply!13353 lm!2280 lt!1973034)) key!5428) e!3015534)))

(declare-fun b!4826022 () Bool)

(declare-fun e!3015535 () Bool)

(assert (=> b!4826022 (= e!3015534 e!3015535)))

(declare-fun res!2054673 () Bool)

(assert (=> b!4826022 (=> (not res!2054673) (not e!3015535))))

(assert (=> b!4826022 (= res!2054673 ((_ is Cons!54972) (t!362592 (apply!13353 lm!2280 lt!1973034))))))

(declare-fun b!4826023 () Bool)

(assert (=> b!4826023 (= e!3015535 (containsKey!4371 (t!362592 (t!362592 (apply!13353 lm!2280 lt!1973034))) key!5428))))

(assert (= (and d!1546244 (not res!2054672)) b!4826022))

(assert (= (and b!4826022 res!2054673) b!4826023))

(declare-fun m!5816556 () Bool)

(assert (=> b!4826023 m!5816556))

(assert (=> b!4825910 d!1546244))

(declare-fun bs!1163930 () Bool)

(declare-fun d!1546246 () Bool)

(assert (= bs!1163930 (and d!1546246 b!4825940)))

(declare-fun lambda!236772 () Int)

(assert (=> bs!1163930 (= (= lt!1973032 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236772 lambda!236748))))

(declare-fun bs!1163931 () Bool)

(assert (= bs!1163931 (and d!1546246 b!4825834)))

(assert (=> bs!1163931 (= lambda!236772 lambda!236728)))

(declare-fun bs!1163932 () Bool)

(assert (= bs!1163932 (and d!1546246 b!4825830)))

(assert (=> bs!1163932 (= lambda!236772 lambda!236729)))

(assert (=> bs!1163930 (= (= lt!1973032 lt!1973343) (= lambda!236772 lambda!236751))))

(declare-fun bs!1163933 () Bool)

(assert (= bs!1163933 (and d!1546246 d!1546216)))

(assert (=> bs!1163933 (= (= lt!1973032 lt!1973338) (= lambda!236772 lambda!236754))))

(declare-fun bs!1163934 () Bool)

(assert (= bs!1163934 (and d!1546246 b!4825944)))

(assert (=> bs!1163934 (= (= lt!1973032 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236772 lambda!236747))))

(assert (=> bs!1163932 (= (= lt!1973032 lt!1973262) (= lambda!236772 lambda!236730))))

(declare-fun bs!1163935 () Bool)

(assert (= bs!1163935 (and d!1546246 d!1546116)))

(assert (=> bs!1163935 (= (= lt!1973032 lt!1973257) (= lambda!236772 lambda!236731))))

(assert (=> d!1546246 true))

(assert (=> d!1546246 (forall!12610 (toList!7480 lt!1973032) lambda!236772)))

(declare-fun lt!1973375 () Unit!143029)

(declare-fun choose!35135 (ListMap!6857) Unit!143029)

(assert (=> d!1546246 (= lt!1973375 (choose!35135 lt!1973032))))

(assert (=> d!1546246 (= (lemmaContainsAllItsOwnKeys!992 lt!1973032) lt!1973375)))

(declare-fun bs!1163936 () Bool)

(assert (= bs!1163936 d!1546246))

(declare-fun m!5816558 () Bool)

(assert (=> bs!1163936 m!5816558))

(declare-fun m!5816560 () Bool)

(assert (=> bs!1163936 m!5816560))

(assert (=> bm!336387 d!1546246))

(declare-fun d!1546248 () Bool)

(assert (=> d!1546248 (isDefined!10612 (getValueByKey!2624 (toList!7479 lm!2280) lt!1973034))))

(declare-fun lt!1973392 () Unit!143029)

(declare-fun choose!35136 (List!55097 (_ BitVec 64)) Unit!143029)

(assert (=> d!1546248 (= lt!1973392 (choose!35136 (toList!7479 lm!2280) lt!1973034))))

(declare-fun e!3015544 () Bool)

(assert (=> d!1546248 e!3015544))

(declare-fun res!2054676 () Bool)

(assert (=> d!1546248 (=> (not res!2054676) (not e!3015544))))

(assert (=> d!1546248 (= res!2054676 (isStrictlySorted!986 (toList!7479 lm!2280)))))

(assert (=> d!1546248 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2409 (toList!7479 lm!2280) lt!1973034) lt!1973392)))

(declare-fun b!4826038 () Bool)

(assert (=> b!4826038 (= e!3015544 (containsKey!4375 (toList!7479 lm!2280) lt!1973034))))

(assert (= (and d!1546248 res!2054676) b!4826038))

(assert (=> d!1546248 m!5816408))

(assert (=> d!1546248 m!5816408))

(assert (=> d!1546248 m!5816410))

(declare-fun m!5816562 () Bool)

(assert (=> d!1546248 m!5816562))

(assert (=> d!1546248 m!5816402))

(assert (=> b!4826038 m!5816404))

(assert (=> b!4825903 d!1546248))

(assert (=> b!4825903 d!1546212))

(assert (=> b!4825903 d!1546214))

(declare-fun d!1546250 () Bool)

(declare-fun isEmpty!29657 (Option!13496) Bool)

(assert (=> d!1546250 (= (isDefined!10611 (getValueByKey!2623 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428)) (not (isEmpty!29657 (getValueByKey!2623 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))))

(declare-fun bs!1163937 () Bool)

(assert (= bs!1163937 d!1546250))

(assert (=> bs!1163937 m!5816306))

(declare-fun m!5816564 () Bool)

(assert (=> bs!1163937 m!5816564))

(assert (=> b!4825859 d!1546250))

(declare-fun b!4826056 () Bool)

(declare-fun e!3015552 () Option!13496)

(assert (=> b!4826056 (= e!3015552 None!13495)))

(declare-fun d!1546252 () Bool)

(declare-fun c!822370 () Bool)

(assert (=> d!1546252 (= c!822370 (and ((_ is Cons!54972) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= (_1!32391 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) key!5428)))))

(declare-fun e!3015551 () Option!13496)

(assert (=> d!1546252 (= (getValueByKey!2623 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428) e!3015551)))

(declare-fun b!4826053 () Bool)

(assert (=> b!4826053 (= e!3015551 (Some!13495 (_2!32391 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))))

(declare-fun b!4826055 () Bool)

(assert (=> b!4826055 (= e!3015552 (getValueByKey!2623 (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) key!5428))))

(declare-fun b!4826054 () Bool)

(assert (=> b!4826054 (= e!3015551 e!3015552)))

(declare-fun c!822371 () Bool)

(assert (=> b!4826054 (= c!822371 (and ((_ is Cons!54972) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (not (= (_1!32391 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) key!5428))))))

(assert (= (and d!1546252 c!822370) b!4826053))

(assert (= (and d!1546252 (not c!822370)) b!4826054))

(assert (= (and b!4826054 c!822371) b!4826055))

(assert (= (and b!4826054 (not c!822371)) b!4826056))

(declare-fun m!5816566 () Bool)

(assert (=> b!4826055 m!5816566))

(assert (=> b!4825859 d!1546252))

(declare-fun d!1546254 () Bool)

(declare-fun res!2054690 () Bool)

(declare-fun e!3015561 () Bool)

(assert (=> d!1546254 (=> res!2054690 e!3015561)))

(assert (=> d!1546254 (= res!2054690 (and ((_ is Cons!54973) (toList!7479 lt!1973030)) (= (_1!32392 (h!61407 (toList!7479 lt!1973030))) lt!1973034)))))

(assert (=> d!1546254 (= (containsKey!4375 (toList!7479 lt!1973030) lt!1973034) e!3015561)))

(declare-fun b!4826070 () Bool)

(declare-fun e!3015562 () Bool)

(assert (=> b!4826070 (= e!3015561 e!3015562)))

(declare-fun res!2054691 () Bool)

(assert (=> b!4826070 (=> (not res!2054691) (not e!3015562))))

(assert (=> b!4826070 (= res!2054691 (and (or (not ((_ is Cons!54973) (toList!7479 lt!1973030))) (bvsle (_1!32392 (h!61407 (toList!7479 lt!1973030))) lt!1973034)) ((_ is Cons!54973) (toList!7479 lt!1973030)) (bvslt (_1!32392 (h!61407 (toList!7479 lt!1973030))) lt!1973034)))))

(declare-fun b!4826071 () Bool)

(assert (=> b!4826071 (= e!3015562 (containsKey!4375 (t!362593 (toList!7479 lt!1973030)) lt!1973034))))

(assert (= (and d!1546254 (not res!2054690)) b!4826070))

(assert (= (and b!4826070 res!2054691) b!4826071))

(declare-fun m!5816568 () Bool)

(assert (=> b!4826071 m!5816568))

(assert (=> d!1546194 d!1546254))

(declare-fun d!1546256 () Bool)

(assert (=> d!1546256 (isDefined!10611 (getValueByKey!2623 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(declare-fun lt!1973402 () Unit!143029)

(declare-fun choose!35137 (List!55096 K!16654) Unit!143029)

(assert (=> d!1546256 (= lt!1973402 (choose!35137 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(assert (=> d!1546256 (invariantList!1813 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))))

(assert (=> d!1546256 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428) lt!1973402)))

(declare-fun bs!1163945 () Bool)

(assert (= bs!1163945 d!1546256))

(assert (=> bs!1163945 m!5816306))

(assert (=> bs!1163945 m!5816306))

(assert (=> bs!1163945 m!5816308))

(declare-fun m!5816570 () Bool)

(assert (=> bs!1163945 m!5816570))

(declare-fun m!5816574 () Bool)

(assert (=> bs!1163945 m!5816574))

(assert (=> b!4825855 d!1546256))

(assert (=> b!4825855 d!1546250))

(assert (=> b!4825855 d!1546252))

(declare-fun d!1546258 () Bool)

(assert (=> d!1546258 (contains!18783 (getKeysList!1160 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) key!5428)))

(declare-fun lt!1973406 () Unit!143029)

(declare-fun choose!35138 (List!55096 K!16654) Unit!143029)

(assert (=> d!1546258 (= lt!1973406 (choose!35138 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(assert (=> d!1546258 (invariantList!1813 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))))

(assert (=> d!1546258 (= (lemmaInListThenGetKeysListContains!1155 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428) lt!1973406)))

(declare-fun bs!1163952 () Bool)

(assert (= bs!1163952 d!1546258))

(assert (=> bs!1163952 m!5816312))

(assert (=> bs!1163952 m!5816312))

(declare-fun m!5816620 () Bool)

(assert (=> bs!1163952 m!5816620))

(declare-fun m!5816622 () Bool)

(assert (=> bs!1163952 m!5816622))

(assert (=> bs!1163952 m!5816574))

(assert (=> b!4825855 d!1546258))

(declare-fun d!1546266 () Bool)

(declare-fun noDuplicatedKeys!480 (List!55096) Bool)

(assert (=> d!1546266 (= (invariantList!1813 (toList!7480 lt!1973257)) (noDuplicatedKeys!480 (toList!7480 lt!1973257)))))

(declare-fun bs!1163953 () Bool)

(assert (= bs!1163953 d!1546266))

(declare-fun m!5816624 () Bool)

(assert (=> bs!1163953 m!5816624))

(assert (=> b!4825833 d!1546266))

(declare-fun d!1546268 () Bool)

(declare-fun res!2054707 () Bool)

(declare-fun e!3015576 () Bool)

(assert (=> d!1546268 (=> res!2054707 e!3015576)))

(assert (=> d!1546268 (= res!2054707 (and ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) key!5428)))))

(assert (=> d!1546268 (= (containsKey!4374 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428) e!3015576)))

(declare-fun b!4826089 () Bool)

(declare-fun e!3015577 () Bool)

(assert (=> b!4826089 (= e!3015576 e!3015577)))

(declare-fun res!2054708 () Bool)

(assert (=> b!4826089 (=> (not res!2054708) (not e!3015577))))

(assert (=> b!4826089 (= res!2054708 ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))))

(declare-fun b!4826090 () Bool)

(assert (=> b!4826090 (= e!3015577 (containsKey!4374 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) key!5428))))

(assert (= (and d!1546268 (not res!2054707)) b!4826089))

(assert (= (and b!4826089 res!2054708) b!4826090))

(declare-fun m!5816628 () Bool)

(assert (=> b!4826090 m!5816628))

(assert (=> b!4825889 d!1546268))

(declare-fun d!1546272 () Bool)

(assert (=> d!1546272 (containsKey!4374 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428)))

(declare-fun lt!1973409 () Unit!143029)

(declare-fun choose!35140 (List!55096 K!16654) Unit!143029)

(assert (=> d!1546272 (= lt!1973409 (choose!35140 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(assert (=> d!1546272 (invariantList!1813 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))))

(assert (=> d!1546272 (= (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428) lt!1973409)))

(declare-fun bs!1163954 () Bool)

(assert (= bs!1163954 d!1546272))

(assert (=> bs!1163954 m!5816370))

(declare-fun m!5816630 () Bool)

(assert (=> bs!1163954 m!5816630))

(declare-fun m!5816632 () Bool)

(assert (=> bs!1163954 m!5816632))

(assert (=> b!4825889 d!1546272))

(declare-fun bs!1163960 () Bool)

(declare-fun b!4826106 () Bool)

(assert (= bs!1163960 (and b!4826106 b!4826019)))

(declare-fun lambda!236794 () Int)

(assert (=> bs!1163960 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236794 lambda!236766))))

(declare-fun bs!1163961 () Bool)

(assert (= bs!1163961 (and b!4826106 b!4826014)))

(assert (=> bs!1163961 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236794 lambda!236767))))

(declare-fun bs!1163962 () Bool)

(assert (= bs!1163962 (and b!4826106 b!4826016)))

(assert (=> bs!1163962 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236794 lambda!236768))))

(assert (=> b!4826106 true))

(declare-fun bs!1163963 () Bool)

(declare-fun b!4826107 () Bool)

(assert (= bs!1163963 (and b!4826107 b!4826015)))

(declare-fun lambda!236795 () Int)

(assert (=> bs!1163963 (= lambda!236795 lambda!236769)))

(declare-fun d!1546274 () Bool)

(declare-fun e!3015588 () Bool)

(assert (=> d!1546274 e!3015588))

(declare-fun res!2054723 () Bool)

(assert (=> d!1546274 (=> (not res!2054723) (not e!3015588))))

(declare-fun lt!1973415 () List!55099)

(assert (=> d!1546274 (= res!2054723 (noDuplicate!962 lt!1973415))))

(assert (=> d!1546274 (= lt!1973415 (getKeysList!1160 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))

(assert (=> d!1546274 (= (keys!20227 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) lt!1973415)))

(declare-fun b!4826105 () Bool)

(declare-fun res!2054725 () Bool)

(assert (=> b!4826105 (=> (not res!2054725) (not e!3015588))))

(assert (=> b!4826105 (= res!2054725 (= (length!780 lt!1973415) (length!781 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))))))

(declare-fun res!2054724 () Bool)

(assert (=> b!4826106 (=> (not res!2054724) (not e!3015588))))

(assert (=> b!4826106 (= res!2054724 (forall!12612 lt!1973415 lambda!236794))))

(assert (=> b!4826107 (= e!3015588 (= (content!9820 lt!1973415) (content!9820 (map!12581 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) lambda!236795))))))

(assert (= (and d!1546274 res!2054723) b!4826105))

(assert (= (and b!4826105 res!2054725) b!4826106))

(assert (= (and b!4826106 res!2054724) b!4826107))

(declare-fun m!5816652 () Bool)

(assert (=> d!1546274 m!5816652))

(assert (=> d!1546274 m!5816312))

(declare-fun m!5816654 () Bool)

(assert (=> b!4826105 m!5816654))

(declare-fun m!5816656 () Bool)

(assert (=> b!4826105 m!5816656))

(declare-fun m!5816658 () Bool)

(assert (=> b!4826106 m!5816658))

(declare-fun m!5816660 () Bool)

(assert (=> b!4826107 m!5816660))

(declare-fun m!5816662 () Bool)

(assert (=> b!4826107 m!5816662))

(assert (=> b!4826107 m!5816662))

(declare-fun m!5816664 () Bool)

(assert (=> b!4826107 m!5816664))

(assert (=> b!4825857 d!1546274))

(declare-fun d!1546288 () Bool)

(declare-fun res!2054726 () Bool)

(declare-fun e!3015593 () Bool)

(assert (=> d!1546288 (=> res!2054726 e!3015593)))

(assert (=> d!1546288 (= res!2054726 (and ((_ is Cons!54972) (t!362592 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280)))))) (= (_1!32391 (h!61406 (t!362592 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280))))))) key!5428)))))

(assert (=> d!1546288 (= (containsKey!4371 (t!362592 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280))))) key!5428) e!3015593)))

(declare-fun b!4826118 () Bool)

(declare-fun e!3015594 () Bool)

(assert (=> b!4826118 (= e!3015593 e!3015594)))

(declare-fun res!2054727 () Bool)

(assert (=> b!4826118 (=> (not res!2054727) (not e!3015594))))

(assert (=> b!4826118 (= res!2054727 ((_ is Cons!54972) (t!362592 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun b!4826119 () Bool)

(assert (=> b!4826119 (= e!3015594 (containsKey!4371 (t!362592 (t!362592 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280)))))) key!5428))))

(assert (= (and d!1546288 (not res!2054726)) b!4826118))

(assert (= (and b!4826118 res!2054727) b!4826119))

(declare-fun m!5816666 () Bool)

(assert (=> b!4826119 m!5816666))

(assert (=> b!4825848 d!1546288))

(declare-fun d!1546290 () Bool)

(declare-fun res!2054735 () Bool)

(declare-fun e!3015605 () Bool)

(assert (=> d!1546290 (=> res!2054735 e!3015605)))

(assert (=> d!1546290 (= res!2054735 ((_ is Nil!54972) (toList!7480 lt!1973032)))))

(assert (=> d!1546290 (= (forall!12610 (toList!7480 lt!1973032) lambda!236731) e!3015605)))

(declare-fun b!4826137 () Bool)

(declare-fun e!3015606 () Bool)

(assert (=> b!4826137 (= e!3015605 e!3015606)))

(declare-fun res!2054736 () Bool)

(assert (=> b!4826137 (=> (not res!2054736) (not e!3015606))))

(declare-fun dynLambda!22220 (Int tuple2!58194) Bool)

(assert (=> b!4826137 (= res!2054736 (dynLambda!22220 lambda!236731 (h!61406 (toList!7480 lt!1973032))))))

(declare-fun b!4826138 () Bool)

(assert (=> b!4826138 (= e!3015606 (forall!12610 (t!362592 (toList!7480 lt!1973032)) lambda!236731))))

(assert (= (and d!1546290 (not res!2054735)) b!4826137))

(assert (= (and b!4826137 res!2054736) b!4826138))

(declare-fun b_lambda!189875 () Bool)

(assert (=> (not b_lambda!189875) (not b!4826137)))

(declare-fun m!5816670 () Bool)

(assert (=> b!4826137 m!5816670))

(declare-fun m!5816672 () Bool)

(assert (=> b!4826138 m!5816672))

(assert (=> b!4825832 d!1546290))

(declare-fun d!1546294 () Bool)

(declare-fun lt!1973423 () Bool)

(assert (=> d!1546294 (= lt!1973423 (select (content!9820 (keys!20227 (extractMap!2680 (toList!7479 lt!1973030)))) key!5428))))

(declare-fun e!3015607 () Bool)

(assert (=> d!1546294 (= lt!1973423 e!3015607)))

(declare-fun res!2054738 () Bool)

(assert (=> d!1546294 (=> (not res!2054738) (not e!3015607))))

(assert (=> d!1546294 (= res!2054738 ((_ is Cons!54975) (keys!20227 (extractMap!2680 (toList!7479 lt!1973030)))))))

(assert (=> d!1546294 (= (contains!18783 (keys!20227 (extractMap!2680 (toList!7479 lt!1973030))) key!5428) lt!1973423)))

(declare-fun b!4826139 () Bool)

(declare-fun e!3015608 () Bool)

(assert (=> b!4826139 (= e!3015607 e!3015608)))

(declare-fun res!2054737 () Bool)

(assert (=> b!4826139 (=> res!2054737 e!3015608)))

(assert (=> b!4826139 (= res!2054737 (= (h!61409 (keys!20227 (extractMap!2680 (toList!7479 lt!1973030)))) key!5428))))

(declare-fun b!4826140 () Bool)

(assert (=> b!4826140 (= e!3015608 (contains!18783 (t!362595 (keys!20227 (extractMap!2680 (toList!7479 lt!1973030)))) key!5428))))

(assert (= (and d!1546294 res!2054738) b!4826139))

(assert (= (and b!4826139 (not res!2054737)) b!4826140))

(assert (=> d!1546294 m!5816366))

(declare-fun m!5816674 () Bool)

(assert (=> d!1546294 m!5816674))

(declare-fun m!5816676 () Bool)

(assert (=> d!1546294 m!5816676))

(declare-fun m!5816678 () Bool)

(assert (=> b!4826140 m!5816678))

(assert (=> b!4825887 d!1546294))

(declare-fun bs!1163982 () Bool)

(declare-fun b!4826142 () Bool)

(assert (= bs!1163982 (and b!4826142 b!4826019)))

(declare-fun lambda!236799 () Int)

(assert (=> bs!1163982 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236799 lambda!236766))))

(declare-fun bs!1163983 () Bool)

(assert (= bs!1163983 (and b!4826142 b!4826014)))

(assert (=> bs!1163983 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236799 lambda!236767))))

(declare-fun bs!1163985 () Bool)

(assert (= bs!1163985 (and b!4826142 b!4826016)))

(assert (=> bs!1163985 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236799 lambda!236768))))

(declare-fun bs!1163987 () Bool)

(assert (= bs!1163987 (and b!4826142 b!4826106)))

(assert (=> bs!1163987 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236799 lambda!236794))))

(assert (=> b!4826142 true))

(declare-fun bs!1163989 () Bool)

(declare-fun b!4826143 () Bool)

(assert (= bs!1163989 (and b!4826143 b!4826015)))

(declare-fun lambda!236801 () Int)

(assert (=> bs!1163989 (= lambda!236801 lambda!236769)))

(declare-fun bs!1163990 () Bool)

(assert (= bs!1163990 (and b!4826143 b!4826107)))

(assert (=> bs!1163990 (= lambda!236801 lambda!236795)))

(declare-fun d!1546296 () Bool)

(declare-fun e!3015609 () Bool)

(assert (=> d!1546296 e!3015609))

(declare-fun res!2054739 () Bool)

(assert (=> d!1546296 (=> (not res!2054739) (not e!3015609))))

(declare-fun lt!1973424 () List!55099)

(assert (=> d!1546296 (= res!2054739 (noDuplicate!962 lt!1973424))))

(assert (=> d!1546296 (= lt!1973424 (getKeysList!1160 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))))

(assert (=> d!1546296 (= (keys!20227 (extractMap!2680 (toList!7479 lt!1973030))) lt!1973424)))

(declare-fun b!4826141 () Bool)

(declare-fun res!2054741 () Bool)

(assert (=> b!4826141 (=> (not res!2054741) (not e!3015609))))

(assert (=> b!4826141 (= res!2054741 (= (length!780 lt!1973424) (length!781 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))))))

(declare-fun res!2054740 () Bool)

(assert (=> b!4826142 (=> (not res!2054740) (not e!3015609))))

(assert (=> b!4826142 (= res!2054740 (forall!12612 lt!1973424 lambda!236799))))

(assert (=> b!4826143 (= e!3015609 (= (content!9820 lt!1973424) (content!9820 (map!12581 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) lambda!236801))))))

(assert (= (and d!1546296 res!2054739) b!4826141))

(assert (= (and b!4826141 res!2054741) b!4826142))

(assert (= (and b!4826142 res!2054740) b!4826143))

(declare-fun m!5816680 () Bool)

(assert (=> d!1546296 m!5816680))

(assert (=> d!1546296 m!5816378))

(declare-fun m!5816682 () Bool)

(assert (=> b!4826141 m!5816682))

(declare-fun m!5816684 () Bool)

(assert (=> b!4826141 m!5816684))

(declare-fun m!5816686 () Bool)

(assert (=> b!4826142 m!5816686))

(declare-fun m!5816688 () Bool)

(assert (=> b!4826143 m!5816688))

(declare-fun m!5816690 () Bool)

(assert (=> b!4826143 m!5816690))

(assert (=> b!4826143 m!5816690))

(declare-fun m!5816692 () Bool)

(assert (=> b!4826143 m!5816692))

(assert (=> b!4825887 d!1546296))

(declare-fun d!1546298 () Bool)

(declare-fun lt!1973425 () Bool)

(assert (=> d!1546298 (= lt!1973425 (select (content!9820 e!3015447) key!5428))))

(declare-fun e!3015610 () Bool)

(assert (=> d!1546298 (= lt!1973425 e!3015610)))

(declare-fun res!2054743 () Bool)

(assert (=> d!1546298 (=> (not res!2054743) (not e!3015610))))

(assert (=> d!1546298 (= res!2054743 ((_ is Cons!54975) e!3015447))))

(assert (=> d!1546298 (= (contains!18783 e!3015447 key!5428) lt!1973425)))

(declare-fun b!4826144 () Bool)

(declare-fun e!3015611 () Bool)

(assert (=> b!4826144 (= e!3015610 e!3015611)))

(declare-fun res!2054742 () Bool)

(assert (=> b!4826144 (=> res!2054742 e!3015611)))

(assert (=> b!4826144 (= res!2054742 (= (h!61409 e!3015447) key!5428))))

(declare-fun b!4826145 () Bool)

(assert (=> b!4826145 (= e!3015611 (contains!18783 (t!362595 e!3015447) key!5428))))

(assert (= (and d!1546298 res!2054743) b!4826144))

(assert (= (and b!4826144 (not res!2054742)) b!4826145))

(declare-fun m!5816706 () Bool)

(assert (=> d!1546298 m!5816706))

(declare-fun m!5816708 () Bool)

(assert (=> d!1546298 m!5816708))

(declare-fun m!5816712 () Bool)

(assert (=> b!4826145 m!5816712))

(assert (=> bm!336391 d!1546298))

(declare-fun d!1546300 () Bool)

(assert (=> d!1546300 (= (get!18824 (getValueByKey!2624 (toList!7479 lt!1973030) lt!1973034)) (v!49177 (getValueByKey!2624 (toList!7479 lt!1973030) lt!1973034)))))

(assert (=> d!1546182 d!1546300))

(declare-fun b!4826150 () Bool)

(declare-fun e!3015615 () Option!13497)

(assert (=> b!4826150 (= e!3015615 (getValueByKey!2624 (t!362593 (toList!7479 lt!1973030)) lt!1973034))))

(declare-fun b!4826148 () Bool)

(declare-fun e!3015614 () Option!13497)

(assert (=> b!4826148 (= e!3015614 (Some!13496 (_2!32392 (h!61407 (toList!7479 lt!1973030)))))))

(declare-fun b!4826151 () Bool)

(assert (=> b!4826151 (= e!3015615 None!13496)))

(declare-fun d!1546304 () Bool)

(declare-fun c!822384 () Bool)

(assert (=> d!1546304 (= c!822384 (and ((_ is Cons!54973) (toList!7479 lt!1973030)) (= (_1!32392 (h!61407 (toList!7479 lt!1973030))) lt!1973034)))))

(assert (=> d!1546304 (= (getValueByKey!2624 (toList!7479 lt!1973030) lt!1973034) e!3015614)))

(declare-fun b!4826149 () Bool)

(assert (=> b!4826149 (= e!3015614 e!3015615)))

(declare-fun c!822385 () Bool)

(assert (=> b!4826149 (= c!822385 (and ((_ is Cons!54973) (toList!7479 lt!1973030)) (not (= (_1!32392 (h!61407 (toList!7479 lt!1973030))) lt!1973034))))))

(assert (= (and d!1546304 c!822384) b!4826148))

(assert (= (and d!1546304 (not c!822384)) b!4826149))

(assert (= (and b!4826149 c!822385) b!4826150))

(assert (= (and b!4826149 (not c!822385)) b!4826151))

(declare-fun m!5816734 () Bool)

(assert (=> b!4826150 m!5816734))

(assert (=> d!1546182 d!1546304))

(declare-fun d!1546308 () Bool)

(declare-fun res!2054748 () Bool)

(declare-fun e!3015618 () Bool)

(assert (=> d!1546308 (=> res!2054748 e!3015618)))

(assert (=> d!1546308 (= res!2054748 ((_ is Nil!54973) (toList!7479 lm!2280)))))

(assert (=> d!1546308 (= (forall!12608 (toList!7479 lm!2280) lambda!236746) e!3015618)))

(declare-fun b!4826154 () Bool)

(declare-fun e!3015619 () Bool)

(assert (=> b!4826154 (= e!3015618 e!3015619)))

(declare-fun res!2054749 () Bool)

(assert (=> b!4826154 (=> (not res!2054749) (not e!3015619))))

(assert (=> b!4826154 (= res!2054749 (dynLambda!22218 lambda!236746 (h!61407 (toList!7479 lm!2280))))))

(declare-fun b!4826155 () Bool)

(assert (=> b!4826155 (= e!3015619 (forall!12608 (t!362593 (toList!7479 lm!2280)) lambda!236746))))

(assert (= (and d!1546308 (not res!2054748)) b!4826154))

(assert (= (and b!4826154 res!2054749) b!4826155))

(declare-fun b_lambda!189877 () Bool)

(assert (=> (not b_lambda!189877) (not b!4826154)))

(declare-fun m!5816742 () Bool)

(assert (=> b!4826154 m!5816742))

(declare-fun m!5816744 () Bool)

(assert (=> b!4826155 m!5816744))

(assert (=> d!1546200 d!1546308))

(declare-fun d!1546312 () Bool)

(declare-fun lt!1973429 () Bool)

(assert (=> d!1546312 (= lt!1973429 (select (content!9820 (keys!20227 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) key!5428))))

(declare-fun e!3015621 () Bool)

(assert (=> d!1546312 (= lt!1973429 e!3015621)))

(declare-fun res!2054754 () Bool)

(assert (=> d!1546312 (=> (not res!2054754) (not e!3015621))))

(assert (=> d!1546312 (= res!2054754 ((_ is Cons!54975) (keys!20227 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))

(assert (=> d!1546312 (= (contains!18783 (keys!20227 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428) lt!1973429)))

(declare-fun b!4826159 () Bool)

(declare-fun e!3015622 () Bool)

(assert (=> b!4826159 (= e!3015621 e!3015622)))

(declare-fun res!2054753 () Bool)

(assert (=> b!4826159 (=> res!2054753 e!3015622)))

(assert (=> b!4826159 (= res!2054753 (= (h!61409 (keys!20227 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) key!5428))))

(declare-fun b!4826160 () Bool)

(assert (=> b!4826160 (= e!3015622 (contains!18783 (t!362595 (keys!20227 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) key!5428))))

(assert (= (and d!1546312 res!2054754) b!4826159))

(assert (= (and b!4826159 (not res!2054753)) b!4826160))

(assert (=> d!1546312 m!5816300))

(declare-fun m!5816746 () Bool)

(assert (=> d!1546312 m!5816746))

(declare-fun m!5816748 () Bool)

(assert (=> d!1546312 m!5816748))

(declare-fun m!5816750 () Bool)

(assert (=> b!4826160 m!5816750))

(assert (=> b!4825852 d!1546312))

(assert (=> b!4825852 d!1546274))

(declare-fun bs!1164003 () Bool)

(declare-fun d!1546314 () Bool)

(assert (= bs!1164003 (and d!1546314 b!4825940)))

(declare-fun lambda!236808 () Int)

(assert (=> bs!1164003 (= (= lt!1973262 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236808 lambda!236748))))

(declare-fun bs!1164004 () Bool)

(assert (= bs!1164004 (and d!1546314 b!4825834)))

(assert (=> bs!1164004 (= (= lt!1973262 lt!1973032) (= lambda!236808 lambda!236728))))

(declare-fun bs!1164005 () Bool)

(assert (= bs!1164005 (and d!1546314 d!1546246)))

(assert (=> bs!1164005 (= (= lt!1973262 lt!1973032) (= lambda!236808 lambda!236772))))

(declare-fun bs!1164006 () Bool)

(assert (= bs!1164006 (and d!1546314 b!4825830)))

(assert (=> bs!1164006 (= (= lt!1973262 lt!1973032) (= lambda!236808 lambda!236729))))

(assert (=> bs!1164003 (= (= lt!1973262 lt!1973343) (= lambda!236808 lambda!236751))))

(declare-fun bs!1164007 () Bool)

(assert (= bs!1164007 (and d!1546314 d!1546216)))

(assert (=> bs!1164007 (= (= lt!1973262 lt!1973338) (= lambda!236808 lambda!236754))))

(declare-fun bs!1164008 () Bool)

(assert (= bs!1164008 (and d!1546314 b!4825944)))

(assert (=> bs!1164008 (= (= lt!1973262 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236808 lambda!236747))))

(assert (=> bs!1164006 (= lambda!236808 lambda!236730)))

(declare-fun bs!1164009 () Bool)

(assert (= bs!1164009 (and d!1546314 d!1546116)))

(assert (=> bs!1164009 (= (= lt!1973262 lt!1973257) (= lambda!236808 lambda!236731))))

(assert (=> d!1546314 true))

(assert (=> d!1546314 (forall!12610 (toList!7480 lt!1973032) lambda!236808)))

(declare-fun lt!1973432 () Unit!143029)

(declare-fun choose!35141 (ListMap!6857 ListMap!6857 K!16654 V!16900) Unit!143029)

(assert (=> d!1546314 (= lt!1973432 (choose!35141 lt!1973032 lt!1973262 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> d!1546314 (forall!12610 (toList!7480 (+!2537 lt!1973032 (tuple2!58195 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))) lambda!236808)))

(assert (=> d!1546314 (= (addForallContainsKeyThenBeforeAdding!991 lt!1973032 lt!1973262 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) lt!1973432)))

(declare-fun bs!1164010 () Bool)

(assert (= bs!1164010 d!1546314))

(declare-fun m!5816764 () Bool)

(assert (=> bs!1164010 m!5816764))

(declare-fun m!5816766 () Bool)

(assert (=> bs!1164010 m!5816766))

(declare-fun m!5816768 () Bool)

(assert (=> bs!1164010 m!5816768))

(declare-fun m!5816770 () Bool)

(assert (=> bs!1164010 m!5816770))

(assert (=> b!4825830 d!1546314))

(declare-fun d!1546320 () Bool)

(declare-fun res!2054757 () Bool)

(declare-fun e!3015625 () Bool)

(assert (=> d!1546320 (=> res!2054757 e!3015625)))

(assert (=> d!1546320 (= res!2054757 ((_ is Nil!54972) (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> d!1546320 (= (forall!12610 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) lambda!236730) e!3015625)))

(declare-fun b!4826164 () Bool)

(declare-fun e!3015626 () Bool)

(assert (=> b!4826164 (= e!3015625 e!3015626)))

(declare-fun res!2054758 () Bool)

(assert (=> b!4826164 (=> (not res!2054758) (not e!3015626))))

(assert (=> b!4826164 (= res!2054758 (dynLambda!22220 lambda!236730 (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun b!4826165 () Bool)

(assert (=> b!4826165 (= e!3015626 (forall!12610 (t!362592 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lambda!236730))))

(assert (= (and d!1546320 (not res!2054757)) b!4826164))

(assert (= (and b!4826164 res!2054758) b!4826165))

(declare-fun b_lambda!189881 () Bool)

(assert (=> (not b_lambda!189881) (not b!4826164)))

(declare-fun m!5816774 () Bool)

(assert (=> b!4826164 m!5816774))

(declare-fun m!5816778 () Bool)

(assert (=> b!4826165 m!5816778))

(assert (=> b!4825830 d!1546320))

(declare-fun bs!1164012 () Bool)

(declare-fun b!4826172 () Bool)

(assert (= bs!1164012 (and b!4826172 b!4825940)))

(declare-fun lambda!236809 () Int)

(assert (=> bs!1164012 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236809 lambda!236748))))

(declare-fun bs!1164014 () Bool)

(assert (= bs!1164014 (and b!4826172 b!4825834)))

(assert (=> bs!1164014 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973032) (= lambda!236809 lambda!236728))))

(declare-fun bs!1164016 () Bool)

(assert (= bs!1164016 (and b!4826172 d!1546314)))

(assert (=> bs!1164016 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973262) (= lambda!236809 lambda!236808))))

(declare-fun bs!1164018 () Bool)

(assert (= bs!1164018 (and b!4826172 d!1546246)))

(assert (=> bs!1164018 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973032) (= lambda!236809 lambda!236772))))

(declare-fun bs!1164019 () Bool)

(assert (= bs!1164019 (and b!4826172 b!4825830)))

(assert (=> bs!1164019 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973032) (= lambda!236809 lambda!236729))))

(assert (=> bs!1164012 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973343) (= lambda!236809 lambda!236751))))

(declare-fun bs!1164023 () Bool)

(assert (= bs!1164023 (and b!4826172 d!1546216)))

(assert (=> bs!1164023 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973338) (= lambda!236809 lambda!236754))))

(declare-fun bs!1164025 () Bool)

(assert (= bs!1164025 (and b!4826172 b!4825944)))

(assert (=> bs!1164025 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236809 lambda!236747))))

(assert (=> bs!1164019 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973262) (= lambda!236809 lambda!236730))))

(declare-fun bs!1164028 () Bool)

(assert (= bs!1164028 (and b!4826172 d!1546116)))

(assert (=> bs!1164028 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973257) (= lambda!236809 lambda!236731))))

(assert (=> b!4826172 true))

(declare-fun bs!1164032 () Bool)

(declare-fun b!4826168 () Bool)

(assert (= bs!1164032 (and b!4826168 b!4825834)))

(declare-fun lambda!236812 () Int)

(assert (=> bs!1164032 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973032) (= lambda!236812 lambda!236728))))

(declare-fun bs!1164035 () Bool)

(assert (= bs!1164035 (and b!4826168 d!1546314)))

(assert (=> bs!1164035 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973262) (= lambda!236812 lambda!236808))))

(declare-fun bs!1164036 () Bool)

(assert (= bs!1164036 (and b!4826168 d!1546246)))

(assert (=> bs!1164036 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973032) (= lambda!236812 lambda!236772))))

(declare-fun bs!1164037 () Bool)

(assert (= bs!1164037 (and b!4826168 b!4825830)))

(assert (=> bs!1164037 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973032) (= lambda!236812 lambda!236729))))

(declare-fun bs!1164038 () Bool)

(assert (= bs!1164038 (and b!4826168 b!4825940)))

(assert (=> bs!1164038 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973343) (= lambda!236812 lambda!236751))))

(assert (=> bs!1164038 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236812 lambda!236748))))

(declare-fun bs!1164039 () Bool)

(assert (= bs!1164039 (and b!4826168 b!4826172)))

(assert (=> bs!1164039 (= lambda!236812 lambda!236809)))

(declare-fun bs!1164040 () Bool)

(assert (= bs!1164040 (and b!4826168 d!1546216)))

(assert (=> bs!1164040 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973338) (= lambda!236812 lambda!236754))))

(declare-fun bs!1164041 () Bool)

(assert (= bs!1164041 (and b!4826168 b!4825944)))

(assert (=> bs!1164041 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236812 lambda!236747))))

(assert (=> bs!1164037 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973262) (= lambda!236812 lambda!236730))))

(declare-fun bs!1164042 () Bool)

(assert (= bs!1164042 (and b!4826168 d!1546116)))

(assert (=> bs!1164042 (= (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973257) (= lambda!236812 lambda!236731))))

(assert (=> b!4826168 true))

(declare-fun lt!1973454 () ListMap!6857)

(declare-fun lambda!236813 () Int)

(assert (=> bs!1164032 (= (= lt!1973454 lt!1973032) (= lambda!236813 lambda!236728))))

(assert (=> bs!1164035 (= (= lt!1973454 lt!1973262) (= lambda!236813 lambda!236808))))

(assert (=> bs!1164036 (= (= lt!1973454 lt!1973032) (= lambda!236813 lambda!236772))))

(assert (=> bs!1164037 (= (= lt!1973454 lt!1973032) (= lambda!236813 lambda!236729))))

(assert (=> bs!1164038 (= (= lt!1973454 lt!1973343) (= lambda!236813 lambda!236751))))

(assert (=> bs!1164038 (= (= lt!1973454 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236813 lambda!236748))))

(assert (=> bs!1164039 (= (= lt!1973454 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236813 lambda!236809))))

(assert (=> bs!1164040 (= (= lt!1973454 lt!1973338) (= lambda!236813 lambda!236754))))

(assert (=> bs!1164041 (= (= lt!1973454 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236813 lambda!236747))))

(assert (=> b!4826168 (= (= lt!1973454 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236813 lambda!236812))))

(assert (=> bs!1164037 (= (= lt!1973454 lt!1973262) (= lambda!236813 lambda!236730))))

(assert (=> bs!1164042 (= (= lt!1973454 lt!1973257) (= lambda!236813 lambda!236731))))

(assert (=> b!4826168 true))

(declare-fun bs!1164045 () Bool)

(declare-fun d!1546324 () Bool)

(assert (= bs!1164045 (and d!1546324 b!4825834)))

(declare-fun lt!1973449 () ListMap!6857)

(declare-fun lambda!236814 () Int)

(assert (=> bs!1164045 (= (= lt!1973449 lt!1973032) (= lambda!236814 lambda!236728))))

(declare-fun bs!1164046 () Bool)

(assert (= bs!1164046 (and d!1546324 d!1546314)))

(assert (=> bs!1164046 (= (= lt!1973449 lt!1973262) (= lambda!236814 lambda!236808))))

(declare-fun bs!1164047 () Bool)

(assert (= bs!1164047 (and d!1546324 d!1546246)))

(assert (=> bs!1164047 (= (= lt!1973449 lt!1973032) (= lambda!236814 lambda!236772))))

(declare-fun bs!1164048 () Bool)

(assert (= bs!1164048 (and d!1546324 b!4825830)))

(assert (=> bs!1164048 (= (= lt!1973449 lt!1973032) (= lambda!236814 lambda!236729))))

(declare-fun bs!1164049 () Bool)

(assert (= bs!1164049 (and d!1546324 b!4825940)))

(assert (=> bs!1164049 (= (= lt!1973449 lt!1973343) (= lambda!236814 lambda!236751))))

(declare-fun bs!1164050 () Bool)

(assert (= bs!1164050 (and d!1546324 b!4826168)))

(assert (=> bs!1164050 (= (= lt!1973449 lt!1973454) (= lambda!236814 lambda!236813))))

(assert (=> bs!1164049 (= (= lt!1973449 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236814 lambda!236748))))

(declare-fun bs!1164051 () Bool)

(assert (= bs!1164051 (and d!1546324 b!4826172)))

(assert (=> bs!1164051 (= (= lt!1973449 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236814 lambda!236809))))

(declare-fun bs!1164052 () Bool)

(assert (= bs!1164052 (and d!1546324 d!1546216)))

(assert (=> bs!1164052 (= (= lt!1973449 lt!1973338) (= lambda!236814 lambda!236754))))

(declare-fun bs!1164053 () Bool)

(assert (= bs!1164053 (and d!1546324 b!4825944)))

(assert (=> bs!1164053 (= (= lt!1973449 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236814 lambda!236747))))

(assert (=> bs!1164050 (= (= lt!1973449 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236814 lambda!236812))))

(assert (=> bs!1164048 (= (= lt!1973449 lt!1973262) (= lambda!236814 lambda!236730))))

(declare-fun bs!1164054 () Bool)

(assert (= bs!1164054 (and d!1546324 d!1546116)))

(assert (=> bs!1164054 (= (= lt!1973449 lt!1973257) (= lambda!236814 lambda!236731))))

(assert (=> d!1546324 true))

(declare-fun e!3015630 () ListMap!6857)

(assert (=> b!4826168 (= e!3015630 lt!1973454)))

(declare-fun lt!1973445 () ListMap!6857)

(assert (=> b!4826168 (= lt!1973445 (+!2537 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> b!4826168 (= lt!1973454 (addToMapMapFromBucket!1798 (t!362592 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (+!2537 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))))

(declare-fun lt!1973440 () Unit!143029)

(declare-fun call!336402 () Unit!143029)

(assert (=> b!4826168 (= lt!1973440 call!336402)))

(declare-fun call!336400 () Bool)

(assert (=> b!4826168 call!336400))

(declare-fun lt!1973444 () Unit!143029)

(assert (=> b!4826168 (= lt!1973444 lt!1973440)))

(assert (=> b!4826168 (forall!12610 (toList!7480 lt!1973445) lambda!236813)))

(declare-fun lt!1973439 () Unit!143029)

(declare-fun Unit!143096 () Unit!143029)

(assert (=> b!4826168 (= lt!1973439 Unit!143096)))

(assert (=> b!4826168 (forall!12610 (t!362592 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lambda!236813)))

(declare-fun lt!1973434 () Unit!143029)

(declare-fun Unit!143097 () Unit!143029)

(assert (=> b!4826168 (= lt!1973434 Unit!143097)))

(declare-fun lt!1973453 () Unit!143029)

(declare-fun Unit!143098 () Unit!143029)

(assert (=> b!4826168 (= lt!1973453 Unit!143098)))

(declare-fun lt!1973446 () Unit!143029)

(assert (=> b!4826168 (= lt!1973446 (forallContained!4386 (toList!7480 lt!1973445) lambda!236813 (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> b!4826168 (contains!18780 lt!1973445 (_1!32391 (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973451 () Unit!143029)

(declare-fun Unit!143099 () Unit!143029)

(assert (=> b!4826168 (= lt!1973451 Unit!143099)))

(assert (=> b!4826168 (contains!18780 lt!1973454 (_1!32391 (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973443 () Unit!143029)

(declare-fun Unit!143100 () Unit!143029)

(assert (=> b!4826168 (= lt!1973443 Unit!143100)))

(assert (=> b!4826168 (forall!12610 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) lambda!236813)))

(declare-fun lt!1973438 () Unit!143029)

(declare-fun Unit!143101 () Unit!143029)

(assert (=> b!4826168 (= lt!1973438 Unit!143101)))

(assert (=> b!4826168 (forall!12610 (toList!7480 lt!1973445) lambda!236813)))

(declare-fun lt!1973437 () Unit!143029)

(declare-fun Unit!143102 () Unit!143029)

(assert (=> b!4826168 (= lt!1973437 Unit!143102)))

(declare-fun lt!1973447 () Unit!143029)

(declare-fun Unit!143103 () Unit!143029)

(assert (=> b!4826168 (= lt!1973447 Unit!143103)))

(declare-fun lt!1973450 () Unit!143029)

(assert (=> b!4826168 (= lt!1973450 (addForallContainsKeyThenBeforeAdding!991 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973454 (_1!32391 (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (_2!32391 (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))))

(assert (=> b!4826168 (forall!12610 (toList!7480 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) lambda!236813)))

(declare-fun lt!1973435 () Unit!143029)

(assert (=> b!4826168 (= lt!1973435 lt!1973450)))

(declare-fun call!336401 () Bool)

(assert (=> b!4826168 call!336401))

(declare-fun lt!1973436 () Unit!143029)

(declare-fun Unit!143104 () Unit!143029)

(assert (=> b!4826168 (= lt!1973436 Unit!143104)))

(declare-fun res!2054763 () Bool)

(assert (=> b!4826168 (= res!2054763 (forall!12610 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) lambda!236813))))

(declare-fun e!3015631 () Bool)

(assert (=> b!4826168 (=> (not res!2054763) (not e!3015631))))

(assert (=> b!4826168 e!3015631))

(declare-fun lt!1973441 () Unit!143029)

(declare-fun Unit!143105 () Unit!143029)

(assert (=> b!4826168 (= lt!1973441 Unit!143105)))

(declare-fun b!4826170 () Bool)

(declare-fun res!2054762 () Bool)

(declare-fun e!3015629 () Bool)

(assert (=> b!4826170 (=> (not res!2054762) (not e!3015629))))

(assert (=> b!4826170 (= res!2054762 (forall!12610 (toList!7480 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) lambda!236814))))

(declare-fun c!822386 () Bool)

(declare-fun bm!336395 () Bool)

(assert (=> bm!336395 (= call!336401 (forall!12610 (toList!7480 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (ite c!822386 lambda!236809 lambda!236813)))))

(declare-fun b!4826171 () Bool)

(assert (=> b!4826171 (= e!3015629 (invariantList!1813 (toList!7480 lt!1973449)))))

(assert (=> b!4826172 (= e!3015630 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun lt!1973448 () Unit!143029)

(assert (=> b!4826172 (= lt!1973448 call!336402)))

(assert (=> b!4826172 call!336400))

(declare-fun lt!1973452 () Unit!143029)

(assert (=> b!4826172 (= lt!1973452 lt!1973448)))

(assert (=> b!4826172 call!336401))

(declare-fun lt!1973442 () Unit!143029)

(declare-fun Unit!143106 () Unit!143029)

(assert (=> b!4826172 (= lt!1973442 Unit!143106)))

(declare-fun bm!336396 () Bool)

(assert (=> bm!336396 (= call!336402 (lemmaContainsAllItsOwnKeys!992 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun bm!336397 () Bool)

(assert (=> bm!336397 (= call!336400 (forall!12610 (toList!7480 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (ite c!822386 lambda!236809 lambda!236812)))))

(declare-fun b!4826169 () Bool)

(assert (=> b!4826169 (= e!3015631 (forall!12610 (toList!7480 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) lambda!236813))))

(assert (=> d!1546324 e!3015629))

(declare-fun res!2054761 () Bool)

(assert (=> d!1546324 (=> (not res!2054761) (not e!3015629))))

(assert (=> d!1546324 (= res!2054761 (forall!12610 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) lambda!236814))))

(assert (=> d!1546324 (= lt!1973449 e!3015630)))

(assert (=> d!1546324 (= c!822386 ((_ is Nil!54972) (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> d!1546324 (noDuplicateKeys!2452 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(assert (=> d!1546324 (= (addToMapMapFromBucket!1798 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) lt!1973449)))

(assert (= (and d!1546324 c!822386) b!4826172))

(assert (= (and d!1546324 (not c!822386)) b!4826168))

(assert (= (and b!4826168 res!2054763) b!4826169))

(assert (= (or b!4826172 b!4826168) bm!336397))

(assert (= (or b!4826172 b!4826168) bm!336395))

(assert (= (or b!4826172 b!4826168) bm!336396))

(assert (= (and d!1546324 res!2054761) b!4826170))

(assert (= (and b!4826170 res!2054762) b!4826171))

(declare-fun m!5816808 () Bool)

(assert (=> bm!336397 m!5816808))

(assert (=> bm!336396 m!5816282))

(declare-fun m!5816810 () Bool)

(assert (=> bm!336396 m!5816810))

(declare-fun m!5816812 () Bool)

(assert (=> b!4826169 m!5816812))

(declare-fun m!5816814 () Bool)

(assert (=> b!4826171 m!5816814))

(declare-fun m!5816816 () Bool)

(assert (=> bm!336395 m!5816816))

(declare-fun m!5816818 () Bool)

(assert (=> d!1546324 m!5816818))

(declare-fun m!5816820 () Bool)

(assert (=> d!1546324 m!5816820))

(declare-fun m!5816824 () Bool)

(assert (=> b!4826170 m!5816824))

(declare-fun m!5816826 () Bool)

(assert (=> b!4826168 m!5816826))

(declare-fun m!5816828 () Bool)

(assert (=> b!4826168 m!5816828))

(declare-fun m!5816830 () Bool)

(assert (=> b!4826168 m!5816830))

(declare-fun m!5816832 () Bool)

(assert (=> b!4826168 m!5816832))

(declare-fun m!5816836 () Bool)

(assert (=> b!4826168 m!5816836))

(assert (=> b!4826168 m!5816282))

(declare-fun m!5816838 () Bool)

(assert (=> b!4826168 m!5816838))

(assert (=> b!4826168 m!5816282))

(declare-fun m!5816840 () Bool)

(assert (=> b!4826168 m!5816840))

(assert (=> b!4826168 m!5816832))

(assert (=> b!4826168 m!5816836))

(assert (=> b!4826168 m!5816840))

(declare-fun m!5816842 () Bool)

(assert (=> b!4826168 m!5816842))

(declare-fun m!5816844 () Bool)

(assert (=> b!4826168 m!5816844))

(assert (=> b!4826168 m!5816812))

(assert (=> b!4825830 d!1546324))

(declare-fun d!1546344 () Bool)

(declare-fun res!2054769 () Bool)

(declare-fun e!3015639 () Bool)

(assert (=> d!1546344 (=> res!2054769 e!3015639)))

(assert (=> d!1546344 (= res!2054769 ((_ is Nil!54972) (toList!7480 lt!1973253)))))

(assert (=> d!1546344 (= (forall!12610 (toList!7480 lt!1973253) lambda!236730) e!3015639)))

(declare-fun b!4826186 () Bool)

(declare-fun e!3015640 () Bool)

(assert (=> b!4826186 (= e!3015639 e!3015640)))

(declare-fun res!2054770 () Bool)

(assert (=> b!4826186 (=> (not res!2054770) (not e!3015640))))

(assert (=> b!4826186 (= res!2054770 (dynLambda!22220 lambda!236730 (h!61406 (toList!7480 lt!1973253))))))

(declare-fun b!4826187 () Bool)

(assert (=> b!4826187 (= e!3015640 (forall!12610 (t!362592 (toList!7480 lt!1973253)) lambda!236730))))

(assert (= (and d!1546344 (not res!2054769)) b!4826186))

(assert (= (and b!4826186 res!2054770) b!4826187))

(declare-fun b_lambda!189883 () Bool)

(assert (=> (not b_lambda!189883) (not b!4826186)))

(declare-fun m!5816848 () Bool)

(assert (=> b!4826186 m!5816848))

(declare-fun m!5816850 () Bool)

(assert (=> b!4826187 m!5816850))

(assert (=> b!4825830 d!1546344))

(declare-fun d!1546346 () Bool)

(declare-fun res!2054771 () Bool)

(declare-fun e!3015641 () Bool)

(assert (=> d!1546346 (=> res!2054771 e!3015641)))

(assert (=> d!1546346 (= res!2054771 ((_ is Nil!54972) (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(assert (=> d!1546346 (= (forall!12610 (_2!32392 (h!61407 (toList!7479 lm!2280))) lambda!236730) e!3015641)))

(declare-fun b!4826188 () Bool)

(declare-fun e!3015642 () Bool)

(assert (=> b!4826188 (= e!3015641 e!3015642)))

(declare-fun res!2054772 () Bool)

(assert (=> b!4826188 (=> (not res!2054772) (not e!3015642))))

(assert (=> b!4826188 (= res!2054772 (dynLambda!22220 lambda!236730 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun b!4826189 () Bool)

(assert (=> b!4826189 (= e!3015642 (forall!12610 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) lambda!236730))))

(assert (= (and d!1546346 (not res!2054771)) b!4826188))

(assert (= (and b!4826188 res!2054772) b!4826189))

(declare-fun b_lambda!189885 () Bool)

(assert (=> (not b_lambda!189885) (not b!4826188)))

(declare-fun m!5816852 () Bool)

(assert (=> b!4826188 m!5816852))

(assert (=> b!4826189 m!5816274))

(assert (=> b!4825830 d!1546346))

(declare-fun b!4826190 () Bool)

(declare-fun e!3015644 () Unit!143029)

(declare-fun Unit!143107 () Unit!143029)

(assert (=> b!4826190 (= e!3015644 Unit!143107)))

(declare-fun b!4826191 () Bool)

(declare-fun e!3015648 () Bool)

(assert (=> b!4826191 (= e!3015648 (contains!18783 (keys!20227 lt!1973262) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun bm!336398 () Bool)

(declare-fun call!336403 () Bool)

(declare-fun e!3015643 () List!55099)

(assert (=> bm!336398 (= call!336403 (contains!18783 e!3015643 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun c!822393 () Bool)

(declare-fun c!822391 () Bool)

(assert (=> bm!336398 (= c!822393 c!822391)))

(declare-fun b!4826192 () Bool)

(declare-fun e!3015646 () Unit!143029)

(assert (=> b!4826192 (= e!3015646 e!3015644)))

(declare-fun c!822392 () Bool)

(assert (=> b!4826192 (= c!822392 call!336403)))

(declare-fun b!4826193 () Bool)

(assert (=> b!4826193 (= e!3015643 (getKeysList!1160 (toList!7480 lt!1973262)))))

(declare-fun b!4826194 () Bool)

(declare-fun lt!1973463 () Unit!143029)

(assert (=> b!4826194 (= e!3015646 lt!1973463)))

(declare-fun lt!1973469 () Unit!143029)

(assert (=> b!4826194 (= lt!1973469 (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 lt!1973262) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> b!4826194 (isDefined!10611 (getValueByKey!2623 (toList!7480 lt!1973262) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973468 () Unit!143029)

(assert (=> b!4826194 (= lt!1973468 lt!1973469)))

(assert (=> b!4826194 (= lt!1973463 (lemmaInListThenGetKeysListContains!1155 (toList!7480 lt!1973262) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> b!4826194 call!336403))

(declare-fun d!1546348 () Bool)

(declare-fun e!3015645 () Bool)

(assert (=> d!1546348 e!3015645))

(declare-fun res!2054773 () Bool)

(assert (=> d!1546348 (=> res!2054773 e!3015645)))

(declare-fun e!3015647 () Bool)

(assert (=> d!1546348 (= res!2054773 e!3015647)))

(declare-fun res!2054775 () Bool)

(assert (=> d!1546348 (=> (not res!2054775) (not e!3015647))))

(declare-fun lt!1973465 () Bool)

(assert (=> d!1546348 (= res!2054775 (not lt!1973465))))

(declare-fun lt!1973462 () Bool)

(assert (=> d!1546348 (= lt!1973465 lt!1973462)))

(declare-fun lt!1973464 () Unit!143029)

(assert (=> d!1546348 (= lt!1973464 e!3015646)))

(assert (=> d!1546348 (= c!822391 lt!1973462)))

(assert (=> d!1546348 (= lt!1973462 (containsKey!4374 (toList!7480 lt!1973262) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> d!1546348 (= (contains!18780 lt!1973262 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) lt!1973465)))

(declare-fun b!4826195 () Bool)

(assert (=> b!4826195 (= e!3015647 (not (contains!18783 (keys!20227 lt!1973262) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))))

(declare-fun b!4826196 () Bool)

(assert (=> b!4826196 (= e!3015643 (keys!20227 lt!1973262))))

(declare-fun b!4826197 () Bool)

(assert (=> b!4826197 false))

(declare-fun lt!1973467 () Unit!143029)

(declare-fun lt!1973466 () Unit!143029)

(assert (=> b!4826197 (= lt!1973467 lt!1973466)))

(assert (=> b!4826197 (containsKey!4374 (toList!7480 lt!1973262) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> b!4826197 (= lt!1973466 (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 lt!1973262) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun Unit!143108 () Unit!143029)

(assert (=> b!4826197 (= e!3015644 Unit!143108)))

(declare-fun b!4826198 () Bool)

(assert (=> b!4826198 (= e!3015645 e!3015648)))

(declare-fun res!2054774 () Bool)

(assert (=> b!4826198 (=> (not res!2054774) (not e!3015648))))

(assert (=> b!4826198 (= res!2054774 (isDefined!10611 (getValueByKey!2623 (toList!7480 lt!1973262) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))))

(assert (= (and d!1546348 c!822391) b!4826194))

(assert (= (and d!1546348 (not c!822391)) b!4826192))

(assert (= (and b!4826192 c!822392) b!4826197))

(assert (= (and b!4826192 (not c!822392)) b!4826190))

(assert (= (or b!4826194 b!4826192) bm!336398))

(assert (= (and bm!336398 c!822393) b!4826193))

(assert (= (and bm!336398 (not c!822393)) b!4826196))

(assert (= (and d!1546348 res!2054775) b!4826195))

(assert (= (and d!1546348 (not res!2054773)) b!4826198))

(assert (= (and b!4826198 res!2054774) b!4826191))

(declare-fun m!5816854 () Bool)

(assert (=> b!4826195 m!5816854))

(assert (=> b!4826195 m!5816854))

(declare-fun m!5816856 () Bool)

(assert (=> b!4826195 m!5816856))

(declare-fun m!5816858 () Bool)

(assert (=> d!1546348 m!5816858))

(declare-fun m!5816860 () Bool)

(assert (=> b!4826198 m!5816860))

(assert (=> b!4826198 m!5816860))

(declare-fun m!5816862 () Bool)

(assert (=> b!4826198 m!5816862))

(declare-fun m!5816864 () Bool)

(assert (=> bm!336398 m!5816864))

(declare-fun m!5816866 () Bool)

(assert (=> b!4826193 m!5816866))

(declare-fun m!5816868 () Bool)

(assert (=> b!4826194 m!5816868))

(assert (=> b!4826194 m!5816860))

(assert (=> b!4826194 m!5816860))

(assert (=> b!4826194 m!5816862))

(declare-fun m!5816870 () Bool)

(assert (=> b!4826194 m!5816870))

(assert (=> b!4826191 m!5816854))

(assert (=> b!4826191 m!5816854))

(assert (=> b!4826191 m!5816856))

(assert (=> b!4826197 m!5816858))

(declare-fun m!5816872 () Bool)

(assert (=> b!4826197 m!5816872))

(assert (=> b!4826196 m!5816854))

(assert (=> b!4825830 d!1546348))

(declare-fun d!1546350 () Bool)

(declare-fun e!3015668 () Bool)

(assert (=> d!1546350 e!3015668))

(declare-fun res!2054795 () Bool)

(assert (=> d!1546350 (=> (not res!2054795) (not e!3015668))))

(declare-fun lt!1973506 () ListMap!6857)

(assert (=> d!1546350 (= res!2054795 (contains!18780 lt!1973506 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973504 () List!55096)

(assert (=> d!1546350 (= lt!1973506 (ListMap!6858 lt!1973504))))

(declare-fun lt!1973503 () Unit!143029)

(declare-fun lt!1973505 () Unit!143029)

(assert (=> d!1546350 (= lt!1973503 lt!1973505)))

(assert (=> d!1546350 (= (getValueByKey!2623 lt!1973504 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (Some!13495 (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1220 (List!55096 K!16654 V!16900) Unit!143029)

(assert (=> d!1546350 (= lt!1973505 (lemmaContainsTupThenGetReturnValue!1220 lt!1973504 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun insertNoDuplicatedKeys!728 (List!55096 K!16654 V!16900) List!55096)

(assert (=> d!1546350 (= lt!1973504 (insertNoDuplicatedKeys!728 (toList!7480 lt!1973032) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> d!1546350 (= (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973506)))

(declare-fun b!4826224 () Bool)

(declare-fun res!2054796 () Bool)

(assert (=> b!4826224 (=> (not res!2054796) (not e!3015668))))

(assert (=> b!4826224 (= res!2054796 (= (getValueByKey!2623 (toList!7480 lt!1973506) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (Some!13495 (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))))

(declare-fun b!4826225 () Bool)

(declare-fun contains!18784 (List!55096 tuple2!58194) Bool)

(assert (=> b!4826225 (= e!3015668 (contains!18784 (toList!7480 lt!1973506) (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (= (and d!1546350 res!2054795) b!4826224))

(assert (= (and b!4826224 res!2054796) b!4826225))

(declare-fun m!5816894 () Bool)

(assert (=> d!1546350 m!5816894))

(declare-fun m!5816896 () Bool)

(assert (=> d!1546350 m!5816896))

(declare-fun m!5816898 () Bool)

(assert (=> d!1546350 m!5816898))

(declare-fun m!5816900 () Bool)

(assert (=> d!1546350 m!5816900))

(declare-fun m!5816902 () Bool)

(assert (=> b!4826224 m!5816902))

(declare-fun m!5816904 () Bool)

(assert (=> b!4826225 m!5816904))

(assert (=> b!4825830 d!1546350))

(declare-fun d!1546366 () Bool)

(assert (=> d!1546366 (dynLambda!22220 lambda!236730 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(declare-fun lt!1973530 () Unit!143029)

(declare-fun choose!35145 (List!55096 Int tuple2!58194) Unit!143029)

(assert (=> d!1546366 (= lt!1973530 (choose!35145 (toList!7480 lt!1973253) lambda!236730 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun e!3015674 () Bool)

(assert (=> d!1546366 e!3015674))

(declare-fun res!2054802 () Bool)

(assert (=> d!1546366 (=> (not res!2054802) (not e!3015674))))

(assert (=> d!1546366 (= res!2054802 (forall!12610 (toList!7480 lt!1973253) lambda!236730))))

(assert (=> d!1546366 (= (forallContained!4386 (toList!7480 lt!1973253) lambda!236730 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) lt!1973530)))

(declare-fun b!4826233 () Bool)

(assert (=> b!4826233 (= e!3015674 (contains!18784 (toList!7480 lt!1973253) (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (= (and d!1546366 res!2054802) b!4826233))

(declare-fun b_lambda!189887 () Bool)

(assert (=> (not b_lambda!189887) (not d!1546366)))

(assert (=> d!1546366 m!5816852))

(declare-fun m!5816940 () Bool)

(assert (=> d!1546366 m!5816940))

(assert (=> d!1546366 m!5816278))

(declare-fun m!5816942 () Bool)

(assert (=> b!4826233 m!5816942))

(assert (=> b!4825830 d!1546366))

(declare-fun d!1546370 () Bool)

(declare-fun res!2054803 () Bool)

(declare-fun e!3015675 () Bool)

(assert (=> d!1546370 (=> res!2054803 e!3015675)))

(assert (=> d!1546370 (= res!2054803 ((_ is Nil!54972) (toList!7480 lt!1973032)))))

(assert (=> d!1546370 (= (forall!12610 (toList!7480 lt!1973032) lambda!236730) e!3015675)))

(declare-fun b!4826234 () Bool)

(declare-fun e!3015676 () Bool)

(assert (=> b!4826234 (= e!3015675 e!3015676)))

(declare-fun res!2054804 () Bool)

(assert (=> b!4826234 (=> (not res!2054804) (not e!3015676))))

(assert (=> b!4826234 (= res!2054804 (dynLambda!22220 lambda!236730 (h!61406 (toList!7480 lt!1973032))))))

(declare-fun b!4826235 () Bool)

(assert (=> b!4826235 (= e!3015676 (forall!12610 (t!362592 (toList!7480 lt!1973032)) lambda!236730))))

(assert (= (and d!1546370 (not res!2054803)) b!4826234))

(assert (= (and b!4826234 res!2054804) b!4826235))

(declare-fun b_lambda!189889 () Bool)

(assert (=> (not b_lambda!189889) (not b!4826234)))

(declare-fun m!5816944 () Bool)

(assert (=> b!4826234 m!5816944))

(declare-fun m!5816946 () Bool)

(assert (=> b!4826235 m!5816946))

(assert (=> b!4825830 d!1546370))

(declare-fun b!4826236 () Bool)

(declare-fun e!3015678 () Unit!143029)

(declare-fun Unit!143109 () Unit!143029)

(assert (=> b!4826236 (= e!3015678 Unit!143109)))

(declare-fun b!4826237 () Bool)

(declare-fun e!3015682 () Bool)

(assert (=> b!4826237 (= e!3015682 (contains!18783 (keys!20227 lt!1973253) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun bm!336405 () Bool)

(declare-fun call!336410 () Bool)

(declare-fun e!3015677 () List!55099)

(assert (=> bm!336405 (= call!336410 (contains!18783 e!3015677 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun c!822400 () Bool)

(declare-fun c!822398 () Bool)

(assert (=> bm!336405 (= c!822400 c!822398)))

(declare-fun b!4826238 () Bool)

(declare-fun e!3015680 () Unit!143029)

(assert (=> b!4826238 (= e!3015680 e!3015678)))

(declare-fun c!822399 () Bool)

(assert (=> b!4826238 (= c!822399 call!336410)))

(declare-fun b!4826239 () Bool)

(assert (=> b!4826239 (= e!3015677 (getKeysList!1160 (toList!7480 lt!1973253)))))

(declare-fun b!4826240 () Bool)

(declare-fun lt!1973532 () Unit!143029)

(assert (=> b!4826240 (= e!3015680 lt!1973532)))

(declare-fun lt!1973538 () Unit!143029)

(assert (=> b!4826240 (= lt!1973538 (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 lt!1973253) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> b!4826240 (isDefined!10611 (getValueByKey!2623 (toList!7480 lt!1973253) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973537 () Unit!143029)

(assert (=> b!4826240 (= lt!1973537 lt!1973538)))

(assert (=> b!4826240 (= lt!1973532 (lemmaInListThenGetKeysListContains!1155 (toList!7480 lt!1973253) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> b!4826240 call!336410))

(declare-fun d!1546372 () Bool)

(declare-fun e!3015679 () Bool)

(assert (=> d!1546372 e!3015679))

(declare-fun res!2054805 () Bool)

(assert (=> d!1546372 (=> res!2054805 e!3015679)))

(declare-fun e!3015681 () Bool)

(assert (=> d!1546372 (= res!2054805 e!3015681)))

(declare-fun res!2054807 () Bool)

(assert (=> d!1546372 (=> (not res!2054807) (not e!3015681))))

(declare-fun lt!1973534 () Bool)

(assert (=> d!1546372 (= res!2054807 (not lt!1973534))))

(declare-fun lt!1973531 () Bool)

(assert (=> d!1546372 (= lt!1973534 lt!1973531)))

(declare-fun lt!1973533 () Unit!143029)

(assert (=> d!1546372 (= lt!1973533 e!3015680)))

(assert (=> d!1546372 (= c!822398 lt!1973531)))

(assert (=> d!1546372 (= lt!1973531 (containsKey!4374 (toList!7480 lt!1973253) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> d!1546372 (= (contains!18780 lt!1973253 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) lt!1973534)))

(declare-fun b!4826241 () Bool)

(assert (=> b!4826241 (= e!3015681 (not (contains!18783 (keys!20227 lt!1973253) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))))

(declare-fun b!4826242 () Bool)

(assert (=> b!4826242 (= e!3015677 (keys!20227 lt!1973253))))

(declare-fun b!4826243 () Bool)

(assert (=> b!4826243 false))

(declare-fun lt!1973536 () Unit!143029)

(declare-fun lt!1973535 () Unit!143029)

(assert (=> b!4826243 (= lt!1973536 lt!1973535)))

(assert (=> b!4826243 (containsKey!4374 (toList!7480 lt!1973253) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> b!4826243 (= lt!1973535 (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 lt!1973253) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun Unit!143110 () Unit!143029)

(assert (=> b!4826243 (= e!3015678 Unit!143110)))

(declare-fun b!4826244 () Bool)

(assert (=> b!4826244 (= e!3015679 e!3015682)))

(declare-fun res!2054806 () Bool)

(assert (=> b!4826244 (=> (not res!2054806) (not e!3015682))))

(assert (=> b!4826244 (= res!2054806 (isDefined!10611 (getValueByKey!2623 (toList!7480 lt!1973253) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))))

(assert (= (and d!1546372 c!822398) b!4826240))

(assert (= (and d!1546372 (not c!822398)) b!4826238))

(assert (= (and b!4826238 c!822399) b!4826243))

(assert (= (and b!4826238 (not c!822399)) b!4826236))

(assert (= (or b!4826240 b!4826238) bm!336405))

(assert (= (and bm!336405 c!822400) b!4826239))

(assert (= (and bm!336405 (not c!822400)) b!4826242))

(assert (= (and d!1546372 res!2054807) b!4826241))

(assert (= (and d!1546372 (not res!2054805)) b!4826244))

(assert (= (and b!4826244 res!2054806) b!4826237))

(declare-fun m!5816948 () Bool)

(assert (=> b!4826241 m!5816948))

(assert (=> b!4826241 m!5816948))

(declare-fun m!5816950 () Bool)

(assert (=> b!4826241 m!5816950))

(declare-fun m!5816952 () Bool)

(assert (=> d!1546372 m!5816952))

(declare-fun m!5816954 () Bool)

(assert (=> b!4826244 m!5816954))

(assert (=> b!4826244 m!5816954))

(declare-fun m!5816956 () Bool)

(assert (=> b!4826244 m!5816956))

(declare-fun m!5816958 () Bool)

(assert (=> bm!336405 m!5816958))

(declare-fun m!5816960 () Bool)

(assert (=> b!4826239 m!5816960))

(declare-fun m!5816962 () Bool)

(assert (=> b!4826240 m!5816962))

(assert (=> b!4826240 m!5816954))

(assert (=> b!4826240 m!5816954))

(assert (=> b!4826240 m!5816956))

(declare-fun m!5816964 () Bool)

(assert (=> b!4826240 m!5816964))

(assert (=> b!4826237 m!5816948))

(assert (=> b!4826237 m!5816948))

(assert (=> b!4826237 m!5816950))

(assert (=> b!4826243 m!5816952))

(declare-fun m!5816966 () Bool)

(assert (=> b!4826243 m!5816966))

(assert (=> b!4826242 m!5816948))

(assert (=> b!4825830 d!1546372))

(declare-fun bs!1164088 () Bool)

(declare-fun b!4826253 () Bool)

(assert (= bs!1164088 (and b!4826253 b!4826142)))

(declare-fun lambda!236822 () Int)

(assert (=> bs!1164088 (= (= (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236822 lambda!236799))))

(declare-fun bs!1164089 () Bool)

(assert (= bs!1164089 (and b!4826253 b!4826014)))

(assert (=> bs!1164089 (= (= (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236822 lambda!236767))))

(declare-fun bs!1164090 () Bool)

(assert (= bs!1164090 (and b!4826253 b!4826106)))

(assert (=> bs!1164090 (= (= (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236822 lambda!236794))))

(declare-fun bs!1164091 () Bool)

(assert (= bs!1164091 (and b!4826253 b!4826016)))

(assert (=> bs!1164091 (= (= (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236822 lambda!236768))))

(declare-fun bs!1164092 () Bool)

(assert (= bs!1164092 (and b!4826253 b!4826019)))

(assert (=> bs!1164092 (= (= (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236822 lambda!236766))))

(assert (=> b!4826253 true))

(declare-fun bs!1164093 () Bool)

(declare-fun b!4826248 () Bool)

(assert (= bs!1164093 (and b!4826248 b!4826142)))

(declare-fun lambda!236823 () Int)

(assert (=> bs!1164093 (= (= (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236823 lambda!236799))))

(declare-fun bs!1164094 () Bool)

(assert (= bs!1164094 (and b!4826248 b!4826014)))

(assert (=> bs!1164094 (= (= (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236823 lambda!236767))))

(declare-fun bs!1164095 () Bool)

(assert (= bs!1164095 (and b!4826248 b!4826106)))

(assert (=> bs!1164095 (= (= (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236823 lambda!236794))))

(declare-fun bs!1164096 () Bool)

(assert (= bs!1164096 (and b!4826248 b!4826253)))

(assert (=> bs!1164096 (= (= (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236823 lambda!236822))))

(declare-fun bs!1164097 () Bool)

(assert (= bs!1164097 (and b!4826248 b!4826016)))

(assert (=> bs!1164097 (= (= (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236823 lambda!236768))))

(declare-fun bs!1164098 () Bool)

(assert (= bs!1164098 (and b!4826248 b!4826019)))

(assert (=> bs!1164098 (= (= (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236823 lambda!236766))))

(assert (=> b!4826248 true))

(declare-fun bs!1164099 () Bool)

(declare-fun b!4826250 () Bool)

(assert (= bs!1164099 (and b!4826250 b!4826248)))

(declare-fun lambda!236824 () Int)

(assert (=> bs!1164099 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))) (= lambda!236824 lambda!236823))))

(declare-fun bs!1164101 () Bool)

(assert (= bs!1164101 (and b!4826250 b!4826142)))

(assert (=> bs!1164101 (= lambda!236824 lambda!236799)))

(declare-fun bs!1164103 () Bool)

(assert (= bs!1164103 (and b!4826250 b!4826014)))

(assert (=> bs!1164103 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236824 lambda!236767))))

(declare-fun bs!1164104 () Bool)

(assert (= bs!1164104 (and b!4826250 b!4826106)))

(assert (=> bs!1164104 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236824 lambda!236794))))

(declare-fun bs!1164106 () Bool)

(assert (= bs!1164106 (and b!4826250 b!4826253)))

(assert (=> bs!1164106 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236824 lambda!236822))))

(declare-fun bs!1164108 () Bool)

(assert (= bs!1164108 (and b!4826250 b!4826016)))

(assert (=> bs!1164108 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236824 lambda!236768))))

(declare-fun bs!1164109 () Bool)

(assert (= bs!1164109 (and b!4826250 b!4826019)))

(assert (=> bs!1164109 (= (= (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236824 lambda!236766))))

(assert (=> b!4826250 true))

(declare-fun bs!1164112 () Bool)

(declare-fun b!4826249 () Bool)

(assert (= bs!1164112 (and b!4826249 b!4826015)))

(declare-fun lambda!236826 () Int)

(assert (=> bs!1164112 (= lambda!236826 lambda!236769)))

(declare-fun bs!1164114 () Bool)

(assert (= bs!1164114 (and b!4826249 b!4826107)))

(assert (=> bs!1164114 (= lambda!236826 lambda!236795)))

(declare-fun bs!1164116 () Bool)

(assert (= bs!1164116 (and b!4826249 b!4826143)))

(assert (=> bs!1164116 (= lambda!236826 lambda!236801)))

(declare-fun b!4826246 () Bool)

(assert (=> b!4826246 false))

(declare-fun e!3015683 () Unit!143029)

(declare-fun Unit!143119 () Unit!143029)

(assert (=> b!4826246 (= e!3015683 Unit!143119)))

(declare-fun b!4826247 () Bool)

(declare-fun e!3015686 () Unit!143029)

(declare-fun Unit!143120 () Unit!143029)

(assert (=> b!4826247 (= e!3015686 Unit!143120)))

(declare-fun e!3015684 () List!55099)

(assert (=> b!4826248 (= e!3015684 (Cons!54975 (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (getKeysList!1160 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))))))

(declare-fun c!822403 () Bool)

(assert (=> b!4826248 (= c!822403 (containsKey!4374 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))))))

(declare-fun lt!1973541 () Unit!143029)

(assert (=> b!4826248 (= lt!1973541 e!3015683)))

(declare-fun c!822402 () Bool)

(assert (=> b!4826248 (= c!822402 (contains!18783 (getKeysList!1160 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))))))

(declare-fun lt!1973545 () Unit!143029)

(assert (=> b!4826248 (= lt!1973545 e!3015686)))

(declare-fun lt!1973539 () List!55099)

(assert (=> b!4826248 (= lt!1973539 (getKeysList!1160 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))))))

(declare-fun lt!1973543 () Unit!143029)

(assert (=> b!4826248 (= lt!1973543 (lemmaForallContainsAddHeadPreserves!376 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) lt!1973539 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))))))

(assert (=> b!4826248 (forall!12612 lt!1973539 lambda!236823)))

(declare-fun lt!1973540 () Unit!143029)

(assert (=> b!4826248 (= lt!1973540 lt!1973543)))

(declare-fun lt!1973544 () List!55099)

(declare-fun e!3015685 () Bool)

(assert (=> b!4826249 (= e!3015685 (= (content!9820 lt!1973544) (content!9820 (map!12581 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) lambda!236826))))))

(declare-fun d!1546374 () Bool)

(assert (=> d!1546374 e!3015685))

(declare-fun res!2054808 () Bool)

(assert (=> d!1546374 (=> (not res!2054808) (not e!3015685))))

(assert (=> d!1546374 (= res!2054808 (noDuplicate!962 lt!1973544))))

(assert (=> d!1546374 (= lt!1973544 e!3015684)))

(declare-fun c!822401 () Bool)

(assert (=> d!1546374 (= c!822401 ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))))

(assert (=> d!1546374 (invariantList!1813 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))))

(assert (=> d!1546374 (= (getKeysList!1160 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) lt!1973544)))

(declare-fun b!4826245 () Bool)

(assert (=> b!4826245 (= e!3015684 Nil!54975)))

(declare-fun res!2054809 () Bool)

(assert (=> b!4826250 (=> (not res!2054809) (not e!3015685))))

(assert (=> b!4826250 (= res!2054809 (forall!12612 lt!1973544 lambda!236824))))

(declare-fun b!4826251 () Bool)

(declare-fun res!2054810 () Bool)

(assert (=> b!4826251 (=> (not res!2054810) (not e!3015685))))

(assert (=> b!4826251 (= res!2054810 (= (length!780 lt!1973544) (length!781 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))))))

(declare-fun b!4826252 () Bool)

(declare-fun Unit!143124 () Unit!143029)

(assert (=> b!4826252 (= e!3015683 Unit!143124)))

(assert (=> b!4826253 false))

(declare-fun lt!1973542 () Unit!143029)

(assert (=> b!4826253 (= lt!1973542 (forallContained!4387 (getKeysList!1160 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) lambda!236822 (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))))))

(declare-fun Unit!143125 () Unit!143029)

(assert (=> b!4826253 (= e!3015686 Unit!143125)))

(assert (= (and d!1546374 c!822401) b!4826248))

(assert (= (and d!1546374 (not c!822401)) b!4826245))

(assert (= (and b!4826248 c!822403) b!4826246))

(assert (= (and b!4826248 (not c!822403)) b!4826252))

(assert (= (and b!4826248 c!822402) b!4826253))

(assert (= (and b!4826248 (not c!822402)) b!4826247))

(assert (= (and d!1546374 res!2054808) b!4826251))

(assert (= (and b!4826251 res!2054810) b!4826250))

(assert (= (and b!4826250 res!2054809) b!4826249))

(declare-fun m!5816968 () Bool)

(assert (=> b!4826251 m!5816968))

(assert (=> b!4826251 m!5816684))

(declare-fun m!5816970 () Bool)

(assert (=> b!4826248 m!5816970))

(declare-fun m!5816972 () Bool)

(assert (=> b!4826248 m!5816972))

(declare-fun m!5816974 () Bool)

(assert (=> b!4826248 m!5816974))

(declare-fun m!5816976 () Bool)

(assert (=> b!4826248 m!5816976))

(assert (=> b!4826248 m!5816974))

(declare-fun m!5816978 () Bool)

(assert (=> b!4826248 m!5816978))

(declare-fun m!5816980 () Bool)

(assert (=> b!4826250 m!5816980))

(assert (=> b!4826253 m!5816974))

(assert (=> b!4826253 m!5816974))

(declare-fun m!5816982 () Bool)

(assert (=> b!4826253 m!5816982))

(declare-fun m!5816984 () Bool)

(assert (=> b!4826249 m!5816984))

(declare-fun m!5816986 () Bool)

(assert (=> b!4826249 m!5816986))

(assert (=> b!4826249 m!5816986))

(declare-fun m!5816988 () Bool)

(assert (=> b!4826249 m!5816988))

(declare-fun m!5816990 () Bool)

(assert (=> d!1546374 m!5816990))

(assert (=> d!1546374 m!5816632))

(assert (=> b!4825885 d!1546374))

(declare-fun bs!1164118 () Bool)

(declare-fun b!4826255 () Bool)

(assert (= bs!1164118 (and b!4826255 b!4826248)))

(declare-fun lambda!236827 () Int)

(assert (=> bs!1164118 (= (= (toList!7480 lt!1973032) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))) (= lambda!236827 lambda!236823))))

(declare-fun bs!1164119 () Bool)

(assert (= bs!1164119 (and b!4826255 b!4826142)))

(assert (=> bs!1164119 (= (= (toList!7480 lt!1973032) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236827 lambda!236799))))

(declare-fun bs!1164120 () Bool)

(assert (= bs!1164120 (and b!4826255 b!4826014)))

(assert (=> bs!1164120 (= (= (toList!7480 lt!1973032) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236827 lambda!236767))))

(declare-fun bs!1164121 () Bool)

(assert (= bs!1164121 (and b!4826255 b!4826106)))

(assert (=> bs!1164121 (= (= (toList!7480 lt!1973032) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236827 lambda!236794))))

(declare-fun bs!1164122 () Bool)

(assert (= bs!1164122 (and b!4826255 b!4826250)))

(assert (=> bs!1164122 (= (= (toList!7480 lt!1973032) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236827 lambda!236824))))

(declare-fun bs!1164123 () Bool)

(assert (= bs!1164123 (and b!4826255 b!4826253)))

(assert (=> bs!1164123 (= (= (toList!7480 lt!1973032) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236827 lambda!236822))))

(declare-fun bs!1164124 () Bool)

(assert (= bs!1164124 (and b!4826255 b!4826016)))

(assert (=> bs!1164124 (= (= (toList!7480 lt!1973032) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236827 lambda!236768))))

(declare-fun bs!1164125 () Bool)

(assert (= bs!1164125 (and b!4826255 b!4826019)))

(assert (=> bs!1164125 (= (= (toList!7480 lt!1973032) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236827 lambda!236766))))

(assert (=> b!4826255 true))

(declare-fun bs!1164127 () Bool)

(declare-fun b!4826256 () Bool)

(assert (= bs!1164127 (and b!4826256 b!4826015)))

(declare-fun lambda!236829 () Int)

(assert (=> bs!1164127 (= lambda!236829 lambda!236769)))

(declare-fun bs!1164129 () Bool)

(assert (= bs!1164129 (and b!4826256 b!4826107)))

(assert (=> bs!1164129 (= lambda!236829 lambda!236795)))

(declare-fun bs!1164131 () Bool)

(assert (= bs!1164131 (and b!4826256 b!4826143)))

(assert (=> bs!1164131 (= lambda!236829 lambda!236801)))

(declare-fun bs!1164133 () Bool)

(assert (= bs!1164133 (and b!4826256 b!4826249)))

(assert (=> bs!1164133 (= lambda!236829 lambda!236826)))

(declare-fun d!1546376 () Bool)

(declare-fun e!3015687 () Bool)

(assert (=> d!1546376 e!3015687))

(declare-fun res!2054811 () Bool)

(assert (=> d!1546376 (=> (not res!2054811) (not e!3015687))))

(declare-fun lt!1973546 () List!55099)

(assert (=> d!1546376 (= res!2054811 (noDuplicate!962 lt!1973546))))

(assert (=> d!1546376 (= lt!1973546 (getKeysList!1160 (toList!7480 lt!1973032)))))

(assert (=> d!1546376 (= (keys!20227 lt!1973032) lt!1973546)))

(declare-fun b!4826254 () Bool)

(declare-fun res!2054813 () Bool)

(assert (=> b!4826254 (=> (not res!2054813) (not e!3015687))))

(assert (=> b!4826254 (= res!2054813 (= (length!780 lt!1973546) (length!781 (toList!7480 lt!1973032))))))

(declare-fun res!2054812 () Bool)

(assert (=> b!4826255 (=> (not res!2054812) (not e!3015687))))

(assert (=> b!4826255 (= res!2054812 (forall!12612 lt!1973546 lambda!236827))))

(assert (=> b!4826256 (= e!3015687 (= (content!9820 lt!1973546) (content!9820 (map!12581 (toList!7480 lt!1973032) lambda!236829))))))

(assert (= (and d!1546376 res!2054811) b!4826254))

(assert (= (and b!4826254 res!2054813) b!4826255))

(assert (= (and b!4826255 res!2054812) b!4826256))

(declare-fun m!5817026 () Bool)

(assert (=> d!1546376 m!5817026))

(assert (=> d!1546376 m!5816068))

(declare-fun m!5817028 () Bool)

(assert (=> b!4826254 m!5817028))

(declare-fun m!5817030 () Bool)

(assert (=> b!4826254 m!5817030))

(declare-fun m!5817032 () Bool)

(assert (=> b!4826255 m!5817032))

(declare-fun m!5817034 () Bool)

(assert (=> b!4826256 m!5817034))

(declare-fun m!5817036 () Bool)

(assert (=> b!4826256 m!5817036))

(assert (=> b!4826256 m!5817036))

(declare-fun m!5817040 () Bool)

(assert (=> b!4826256 m!5817040))

(assert (=> b!4825729 d!1546376))

(declare-fun d!1546380 () Bool)

(assert (=> d!1546380 (= (isDefined!10611 (getValueByKey!2623 (toList!7480 lt!1973032) key!5428)) (not (isEmpty!29657 (getValueByKey!2623 (toList!7480 lt!1973032) key!5428))))))

(declare-fun bs!1164138 () Bool)

(assert (= bs!1164138 d!1546380))

(assert (=> bs!1164138 m!5816062))

(declare-fun m!5817048 () Bool)

(assert (=> bs!1164138 m!5817048))

(assert (=> b!4825731 d!1546380))

(declare-fun b!4826264 () Bool)

(declare-fun e!3015692 () Option!13496)

(assert (=> b!4826264 (= e!3015692 None!13495)))

(declare-fun d!1546384 () Bool)

(declare-fun c!822405 () Bool)

(assert (=> d!1546384 (= c!822405 (and ((_ is Cons!54972) (toList!7480 lt!1973032)) (= (_1!32391 (h!61406 (toList!7480 lt!1973032))) key!5428)))))

(declare-fun e!3015691 () Option!13496)

(assert (=> d!1546384 (= (getValueByKey!2623 (toList!7480 lt!1973032) key!5428) e!3015691)))

(declare-fun b!4826261 () Bool)

(assert (=> b!4826261 (= e!3015691 (Some!13495 (_2!32391 (h!61406 (toList!7480 lt!1973032)))))))

(declare-fun b!4826263 () Bool)

(assert (=> b!4826263 (= e!3015692 (getValueByKey!2623 (t!362592 (toList!7480 lt!1973032)) key!5428))))

(declare-fun b!4826262 () Bool)

(assert (=> b!4826262 (= e!3015691 e!3015692)))

(declare-fun c!822406 () Bool)

(assert (=> b!4826262 (= c!822406 (and ((_ is Cons!54972) (toList!7480 lt!1973032)) (not (= (_1!32391 (h!61406 (toList!7480 lt!1973032))) key!5428))))))

(assert (= (and d!1546384 c!822405) b!4826261))

(assert (= (and d!1546384 (not c!822405)) b!4826262))

(assert (= (and b!4826262 c!822406) b!4826263))

(assert (= (and b!4826262 (not c!822406)) b!4826264))

(declare-fun m!5817052 () Bool)

(assert (=> b!4826263 m!5817052))

(assert (=> b!4825731 d!1546384))

(declare-fun d!1546388 () Bool)

(assert (=> d!1546388 (= (isDefined!10612 (getValueByKey!2624 (toList!7479 lt!1973030) lt!1973034)) (not (isEmpty!29655 (getValueByKey!2624 (toList!7479 lt!1973030) lt!1973034))))))

(declare-fun bs!1164140 () Bool)

(assert (= bs!1164140 d!1546388))

(assert (=> bs!1164140 m!5816392))

(declare-fun m!5817058 () Bool)

(assert (=> bs!1164140 m!5817058))

(assert (=> b!4825908 d!1546388))

(assert (=> b!4825908 d!1546304))

(declare-fun d!1546392 () Bool)

(declare-fun res!2054816 () Bool)

(declare-fun e!3015693 () Bool)

(assert (=> d!1546392 (=> res!2054816 e!3015693)))

(assert (=> d!1546392 (= res!2054816 (and ((_ is Cons!54972) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= (_1!32391 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) key!5428)))))

(assert (=> d!1546392 (= (containsKey!4374 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428) e!3015693)))

(declare-fun b!4826265 () Bool)

(declare-fun e!3015694 () Bool)

(assert (=> b!4826265 (= e!3015693 e!3015694)))

(declare-fun res!2054817 () Bool)

(assert (=> b!4826265 (=> (not res!2054817) (not e!3015694))))

(assert (=> b!4826265 (= res!2054817 ((_ is Cons!54972) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))

(declare-fun b!4826266 () Bool)

(assert (=> b!4826266 (= e!3015694 (containsKey!4374 (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) key!5428))))

(assert (= (and d!1546392 (not res!2054816)) b!4826265))

(assert (= (and b!4826265 res!2054817) b!4826266))

(declare-fun m!5817060 () Bool)

(assert (=> b!4826266 m!5817060))

(assert (=> d!1546162 d!1546392))

(declare-fun d!1546394 () Bool)

(assert (=> d!1546394 (isDefined!10611 (getValueByKey!2623 (toList!7480 lt!1973032) key!5428))))

(declare-fun lt!1973549 () Unit!143029)

(assert (=> d!1546394 (= lt!1973549 (choose!35137 (toList!7480 lt!1973032) key!5428))))

(assert (=> d!1546394 (invariantList!1813 (toList!7480 lt!1973032))))

(assert (=> d!1546394 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 lt!1973032) key!5428) lt!1973549)))

(declare-fun bs!1164141 () Bool)

(assert (= bs!1164141 d!1546394))

(assert (=> bs!1164141 m!5816062))

(assert (=> bs!1164141 m!5816062))

(assert (=> bs!1164141 m!5816064))

(declare-fun m!5817062 () Bool)

(assert (=> bs!1164141 m!5817062))

(declare-fun m!5817064 () Bool)

(assert (=> bs!1164141 m!5817064))

(assert (=> b!4825727 d!1546394))

(assert (=> b!4825727 d!1546380))

(assert (=> b!4825727 d!1546384))

(declare-fun d!1546396 () Bool)

(assert (=> d!1546396 (contains!18783 (getKeysList!1160 (toList!7480 lt!1973032)) key!5428)))

(declare-fun lt!1973550 () Unit!143029)

(assert (=> d!1546396 (= lt!1973550 (choose!35138 (toList!7480 lt!1973032) key!5428))))

(assert (=> d!1546396 (invariantList!1813 (toList!7480 lt!1973032))))

(assert (=> d!1546396 (= (lemmaInListThenGetKeysListContains!1155 (toList!7480 lt!1973032) key!5428) lt!1973550)))

(declare-fun bs!1164142 () Bool)

(assert (= bs!1164142 d!1546396))

(assert (=> bs!1164142 m!5816068))

(assert (=> bs!1164142 m!5816068))

(declare-fun m!5817066 () Bool)

(assert (=> bs!1164142 m!5817066))

(declare-fun m!5817068 () Bool)

(assert (=> bs!1164142 m!5817068))

(assert (=> bs!1164142 m!5817064))

(assert (=> b!4825727 d!1546396))

(declare-fun bs!1164143 () Bool)

(declare-fun b!4826268 () Bool)

(assert (= bs!1164143 (and b!4826268 b!4826248)))

(declare-fun lambda!236830 () Int)

(assert (=> bs!1164143 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))) (= lambda!236830 lambda!236823))))

(declare-fun bs!1164144 () Bool)

(assert (= bs!1164144 (and b!4826268 b!4826255)))

(assert (=> bs!1164144 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (toList!7480 lt!1973032)) (= lambda!236830 lambda!236827))))

(declare-fun bs!1164146 () Bool)

(assert (= bs!1164146 (and b!4826268 b!4826142)))

(assert (=> bs!1164146 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236830 lambda!236799))))

(declare-fun bs!1164147 () Bool)

(assert (= bs!1164147 (and b!4826268 b!4826014)))

(assert (=> bs!1164147 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236830 lambda!236767))))

(declare-fun bs!1164148 () Bool)

(assert (= bs!1164148 (and b!4826268 b!4826106)))

(assert (=> bs!1164148 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236830 lambda!236794))))

(declare-fun bs!1164149 () Bool)

(assert (= bs!1164149 (and b!4826268 b!4826250)))

(assert (=> bs!1164149 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236830 lambda!236824))))

(declare-fun bs!1164150 () Bool)

(assert (= bs!1164150 (and b!4826268 b!4826253)))

(assert (=> bs!1164150 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236830 lambda!236822))))

(declare-fun bs!1164151 () Bool)

(assert (= bs!1164151 (and b!4826268 b!4826016)))

(assert (=> bs!1164151 (= lambda!236830 lambda!236768)))

(declare-fun bs!1164152 () Bool)

(assert (= bs!1164152 (and b!4826268 b!4826019)))

(assert (=> bs!1164152 (= (= (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236830 lambda!236766))))

(assert (=> b!4826268 true))

(declare-fun bs!1164153 () Bool)

(declare-fun b!4826269 () Bool)

(assert (= bs!1164153 (and b!4826269 b!4826249)))

(declare-fun lambda!236831 () Int)

(assert (=> bs!1164153 (= lambda!236831 lambda!236826)))

(declare-fun bs!1164154 () Bool)

(assert (= bs!1164154 (and b!4826269 b!4826256)))

(assert (=> bs!1164154 (= lambda!236831 lambda!236829)))

(declare-fun bs!1164155 () Bool)

(assert (= bs!1164155 (and b!4826269 b!4826107)))

(assert (=> bs!1164155 (= lambda!236831 lambda!236795)))

(declare-fun bs!1164156 () Bool)

(assert (= bs!1164156 (and b!4826269 b!4826143)))

(assert (=> bs!1164156 (= lambda!236831 lambda!236801)))

(declare-fun bs!1164157 () Bool)

(assert (= bs!1164157 (and b!4826269 b!4826015)))

(assert (=> bs!1164157 (= lambda!236831 lambda!236769)))

(declare-fun d!1546398 () Bool)

(declare-fun e!3015695 () Bool)

(assert (=> d!1546398 e!3015695))

(declare-fun res!2054818 () Bool)

(assert (=> d!1546398 (=> (not res!2054818) (not e!3015695))))

(declare-fun lt!1973551 () List!55099)

(assert (=> d!1546398 (= res!2054818 (noDuplicate!962 lt!1973551))))

(assert (=> d!1546398 (= lt!1973551 (getKeysList!1160 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))))

(assert (=> d!1546398 (= (keys!20227 (extractMap!2680 (toList!7479 lm!2280))) lt!1973551)))

(declare-fun b!4826267 () Bool)

(declare-fun res!2054820 () Bool)

(assert (=> b!4826267 (=> (not res!2054820) (not e!3015695))))

(assert (=> b!4826267 (= res!2054820 (= (length!780 lt!1973551) (length!781 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))))))

(declare-fun res!2054819 () Bool)

(assert (=> b!4826268 (=> (not res!2054819) (not e!3015695))))

(assert (=> b!4826268 (= res!2054819 (forall!12612 lt!1973551 lambda!236830))))

(assert (=> b!4826269 (= e!3015695 (= (content!9820 lt!1973551) (content!9820 (map!12581 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) lambda!236831))))))

(assert (= (and d!1546398 res!2054818) b!4826267))

(assert (= (and b!4826267 res!2054820) b!4826268))

(assert (= (and b!4826268 res!2054819) b!4826269))

(declare-fun m!5817080 () Bool)

(assert (=> d!1546398 m!5817080))

(assert (=> d!1546398 m!5816358))

(declare-fun m!5817082 () Bool)

(assert (=> b!4826267 m!5817082))

(assert (=> b!4826267 m!5816530))

(declare-fun m!5817086 () Bool)

(assert (=> b!4826268 m!5817086))

(declare-fun m!5817088 () Bool)

(assert (=> b!4826269 m!5817088))

(declare-fun m!5817090 () Bool)

(assert (=> b!4826269 m!5817090))

(assert (=> b!4826269 m!5817090))

(declare-fun m!5817092 () Bool)

(assert (=> b!4826269 m!5817092))

(assert (=> b!4825879 d!1546398))

(declare-fun d!1546410 () Bool)

(declare-fun res!2054825 () Bool)

(declare-fun e!3015702 () Bool)

(assert (=> d!1546410 (=> res!2054825 e!3015702)))

(assert (=> d!1546410 (= res!2054825 ((_ is Nil!54973) (t!362593 (toList!7479 lt!1973030))))))

(assert (=> d!1546410 (= (forall!12608 (t!362593 (toList!7479 lt!1973030)) lambda!236652) e!3015702)))

(declare-fun b!4826278 () Bool)

(declare-fun e!3015703 () Bool)

(assert (=> b!4826278 (= e!3015702 e!3015703)))

(declare-fun res!2054826 () Bool)

(assert (=> b!4826278 (=> (not res!2054826) (not e!3015703))))

(assert (=> b!4826278 (= res!2054826 (dynLambda!22218 lambda!236652 (h!61407 (t!362593 (toList!7479 lt!1973030)))))))

(declare-fun b!4826279 () Bool)

(assert (=> b!4826279 (= e!3015703 (forall!12608 (t!362593 (t!362593 (toList!7479 lt!1973030))) lambda!236652))))

(assert (= (and d!1546410 (not res!2054825)) b!4826278))

(assert (= (and b!4826278 res!2054826) b!4826279))

(declare-fun b_lambda!189895 () Bool)

(assert (=> (not b_lambda!189895) (not b!4826278)))

(declare-fun m!5817100 () Bool)

(assert (=> b!4826278 m!5817100))

(declare-fun m!5817102 () Bool)

(assert (=> b!4826279 m!5817102))

(assert (=> b!4825842 d!1546410))

(declare-fun bs!1164161 () Bool)

(declare-fun b!4826284 () Bool)

(assert (= bs!1164161 (and b!4826284 b!4825834)))

(declare-fun lambda!236832 () Int)

(assert (=> bs!1164161 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973032) (= lambda!236832 lambda!236728))))

(declare-fun bs!1164162 () Bool)

(assert (= bs!1164162 (and b!4826284 d!1546314)))

(assert (=> bs!1164162 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973262) (= lambda!236832 lambda!236808))))

(declare-fun bs!1164163 () Bool)

(assert (= bs!1164163 (and b!4826284 d!1546246)))

(assert (=> bs!1164163 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973032) (= lambda!236832 lambda!236772))))

(declare-fun bs!1164164 () Bool)

(assert (= bs!1164164 (and b!4826284 b!4825830)))

(assert (=> bs!1164164 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973032) (= lambda!236832 lambda!236729))))

(declare-fun bs!1164165 () Bool)

(assert (= bs!1164165 (and b!4826284 b!4825940)))

(assert (=> bs!1164165 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973343) (= lambda!236832 lambda!236751))))

(declare-fun bs!1164166 () Bool)

(assert (= bs!1164166 (and b!4826284 d!1546324)))

(assert (=> bs!1164166 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973449) (= lambda!236832 lambda!236814))))

(declare-fun bs!1164167 () Bool)

(assert (= bs!1164167 (and b!4826284 b!4826168)))

(assert (=> bs!1164167 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973454) (= lambda!236832 lambda!236813))))

(assert (=> bs!1164165 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236832 lambda!236748))))

(declare-fun bs!1164168 () Bool)

(assert (= bs!1164168 (and b!4826284 b!4826172)))

(assert (=> bs!1164168 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236832 lambda!236809))))

(declare-fun bs!1164169 () Bool)

(assert (= bs!1164169 (and b!4826284 d!1546216)))

(assert (=> bs!1164169 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973338) (= lambda!236832 lambda!236754))))

(declare-fun bs!1164170 () Bool)

(assert (= bs!1164170 (and b!4826284 b!4825944)))

(assert (=> bs!1164170 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236832 lambda!236747))))

(assert (=> bs!1164167 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236832 lambda!236812))))

(assert (=> bs!1164164 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973262) (= lambda!236832 lambda!236730))))

(declare-fun bs!1164171 () Bool)

(assert (= bs!1164171 (and b!4826284 d!1546116)))

(assert (=> bs!1164171 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973257) (= lambda!236832 lambda!236731))))

(assert (=> b!4826284 true))

(declare-fun bs!1164172 () Bool)

(declare-fun b!4826280 () Bool)

(assert (= bs!1164172 (and b!4826280 b!4825834)))

(declare-fun lambda!236833 () Int)

(assert (=> bs!1164172 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973032) (= lambda!236833 lambda!236728))))

(declare-fun bs!1164173 () Bool)

(assert (= bs!1164173 (and b!4826280 d!1546314)))

(assert (=> bs!1164173 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973262) (= lambda!236833 lambda!236808))))

(declare-fun bs!1164174 () Bool)

(assert (= bs!1164174 (and b!4826280 d!1546246)))

(assert (=> bs!1164174 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973032) (= lambda!236833 lambda!236772))))

(declare-fun bs!1164175 () Bool)

(assert (= bs!1164175 (and b!4826280 b!4825830)))

(assert (=> bs!1164175 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973032) (= lambda!236833 lambda!236729))))

(declare-fun bs!1164176 () Bool)

(assert (= bs!1164176 (and b!4826280 b!4825940)))

(assert (=> bs!1164176 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973343) (= lambda!236833 lambda!236751))))

(declare-fun bs!1164177 () Bool)

(assert (= bs!1164177 (and b!4826280 b!4826284)))

(assert (=> bs!1164177 (= lambda!236833 lambda!236832)))

(declare-fun bs!1164178 () Bool)

(assert (= bs!1164178 (and b!4826280 d!1546324)))

(assert (=> bs!1164178 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973449) (= lambda!236833 lambda!236814))))

(declare-fun bs!1164179 () Bool)

(assert (= bs!1164179 (and b!4826280 b!4826168)))

(assert (=> bs!1164179 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973454) (= lambda!236833 lambda!236813))))

(assert (=> bs!1164176 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236833 lambda!236748))))

(declare-fun bs!1164180 () Bool)

(assert (= bs!1164180 (and b!4826280 b!4826172)))

(assert (=> bs!1164180 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236833 lambda!236809))))

(declare-fun bs!1164181 () Bool)

(assert (= bs!1164181 (and b!4826280 d!1546216)))

(assert (=> bs!1164181 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973338) (= lambda!236833 lambda!236754))))

(declare-fun bs!1164182 () Bool)

(assert (= bs!1164182 (and b!4826280 b!4825944)))

(assert (=> bs!1164182 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236833 lambda!236747))))

(assert (=> bs!1164179 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236833 lambda!236812))))

(assert (=> bs!1164175 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973262) (= lambda!236833 lambda!236730))))

(declare-fun bs!1164183 () Bool)

(assert (= bs!1164183 (and b!4826280 d!1546116)))

(assert (=> bs!1164183 (= (= (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973257) (= lambda!236833 lambda!236731))))

(assert (=> b!4826280 true))

(declare-fun lambda!236834 () Int)

(declare-fun lt!1973574 () ListMap!6857)

(assert (=> bs!1164172 (= (= lt!1973574 lt!1973032) (= lambda!236834 lambda!236728))))

(assert (=> bs!1164173 (= (= lt!1973574 lt!1973262) (= lambda!236834 lambda!236808))))

(assert (=> bs!1164174 (= (= lt!1973574 lt!1973032) (= lambda!236834 lambda!236772))))

(assert (=> bs!1164175 (= (= lt!1973574 lt!1973032) (= lambda!236834 lambda!236729))))

(assert (=> bs!1164177 (= (= lt!1973574 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236834 lambda!236832))))

(assert (=> bs!1164178 (= (= lt!1973574 lt!1973449) (= lambda!236834 lambda!236814))))

(assert (=> bs!1164179 (= (= lt!1973574 lt!1973454) (= lambda!236834 lambda!236813))))

(assert (=> bs!1164176 (= (= lt!1973574 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236834 lambda!236748))))

(assert (=> bs!1164180 (= (= lt!1973574 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236834 lambda!236809))))

(assert (=> bs!1164181 (= (= lt!1973574 lt!1973338) (= lambda!236834 lambda!236754))))

(assert (=> bs!1164182 (= (= lt!1973574 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236834 lambda!236747))))

(assert (=> bs!1164179 (= (= lt!1973574 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236834 lambda!236812))))

(assert (=> bs!1164175 (= (= lt!1973574 lt!1973262) (= lambda!236834 lambda!236730))))

(assert (=> bs!1164183 (= (= lt!1973574 lt!1973257) (= lambda!236834 lambda!236731))))

(assert (=> bs!1164176 (= (= lt!1973574 lt!1973343) (= lambda!236834 lambda!236751))))

(assert (=> b!4826280 (= (= lt!1973574 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236834 lambda!236833))))

(assert (=> b!4826280 true))

(declare-fun bs!1164184 () Bool)

(declare-fun d!1546416 () Bool)

(assert (= bs!1164184 (and d!1546416 b!4825834)))

(declare-fun lt!1973569 () ListMap!6857)

(declare-fun lambda!236835 () Int)

(assert (=> bs!1164184 (= (= lt!1973569 lt!1973032) (= lambda!236835 lambda!236728))))

(declare-fun bs!1164185 () Bool)

(assert (= bs!1164185 (and d!1546416 d!1546314)))

(assert (=> bs!1164185 (= (= lt!1973569 lt!1973262) (= lambda!236835 lambda!236808))))

(declare-fun bs!1164186 () Bool)

(assert (= bs!1164186 (and d!1546416 d!1546246)))

(assert (=> bs!1164186 (= (= lt!1973569 lt!1973032) (= lambda!236835 lambda!236772))))

(declare-fun bs!1164187 () Bool)

(assert (= bs!1164187 (and d!1546416 b!4826280)))

(assert (=> bs!1164187 (= (= lt!1973569 lt!1973574) (= lambda!236835 lambda!236834))))

(declare-fun bs!1164188 () Bool)

(assert (= bs!1164188 (and d!1546416 b!4825830)))

(assert (=> bs!1164188 (= (= lt!1973569 lt!1973032) (= lambda!236835 lambda!236729))))

(declare-fun bs!1164189 () Bool)

(assert (= bs!1164189 (and d!1546416 b!4826284)))

(assert (=> bs!1164189 (= (= lt!1973569 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236835 lambda!236832))))

(declare-fun bs!1164190 () Bool)

(assert (= bs!1164190 (and d!1546416 d!1546324)))

(assert (=> bs!1164190 (= (= lt!1973569 lt!1973449) (= lambda!236835 lambda!236814))))

(declare-fun bs!1164191 () Bool)

(assert (= bs!1164191 (and d!1546416 b!4826168)))

(assert (=> bs!1164191 (= (= lt!1973569 lt!1973454) (= lambda!236835 lambda!236813))))

(declare-fun bs!1164192 () Bool)

(assert (= bs!1164192 (and d!1546416 b!4825940)))

(assert (=> bs!1164192 (= (= lt!1973569 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236835 lambda!236748))))

(declare-fun bs!1164193 () Bool)

(assert (= bs!1164193 (and d!1546416 b!4826172)))

(assert (=> bs!1164193 (= (= lt!1973569 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236835 lambda!236809))))

(declare-fun bs!1164194 () Bool)

(assert (= bs!1164194 (and d!1546416 d!1546216)))

(assert (=> bs!1164194 (= (= lt!1973569 lt!1973338) (= lambda!236835 lambda!236754))))

(declare-fun bs!1164195 () Bool)

(assert (= bs!1164195 (and d!1546416 b!4825944)))

(assert (=> bs!1164195 (= (= lt!1973569 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236835 lambda!236747))))

(assert (=> bs!1164191 (= (= lt!1973569 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236835 lambda!236812))))

(assert (=> bs!1164188 (= (= lt!1973569 lt!1973262) (= lambda!236835 lambda!236730))))

(declare-fun bs!1164196 () Bool)

(assert (= bs!1164196 (and d!1546416 d!1546116)))

(assert (=> bs!1164196 (= (= lt!1973569 lt!1973257) (= lambda!236835 lambda!236731))))

(assert (=> bs!1164192 (= (= lt!1973569 lt!1973343) (= lambda!236835 lambda!236751))))

(assert (=> bs!1164187 (= (= lt!1973569 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236835 lambda!236833))))

(assert (=> d!1546416 true))

(declare-fun e!3015705 () ListMap!6857)

(assert (=> b!4826280 (= e!3015705 lt!1973574)))

(declare-fun lt!1973565 () ListMap!6857)

(assert (=> b!4826280 (= lt!1973565 (+!2537 (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> b!4826280 (= lt!1973574 (addToMapMapFromBucket!1798 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) (+!2537 (extractMap!2680 (t!362593 (toList!7479 lm!2280))) (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun lt!1973560 () Unit!143029)

(declare-fun call!336413 () Unit!143029)

(assert (=> b!4826280 (= lt!1973560 call!336413)))

(declare-fun call!336411 () Bool)

(assert (=> b!4826280 call!336411))

(declare-fun lt!1973564 () Unit!143029)

(assert (=> b!4826280 (= lt!1973564 lt!1973560)))

(assert (=> b!4826280 (forall!12610 (toList!7480 lt!1973565) lambda!236834)))

(declare-fun lt!1973559 () Unit!143029)

(declare-fun Unit!143137 () Unit!143029)

(assert (=> b!4826280 (= lt!1973559 Unit!143137)))

(assert (=> b!4826280 (forall!12610 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) lambda!236834)))

(declare-fun lt!1973554 () Unit!143029)

(declare-fun Unit!143138 () Unit!143029)

(assert (=> b!4826280 (= lt!1973554 Unit!143138)))

(declare-fun lt!1973573 () Unit!143029)

(declare-fun Unit!143139 () Unit!143029)

(assert (=> b!4826280 (= lt!1973573 Unit!143139)))

(declare-fun lt!1973566 () Unit!143029)

(assert (=> b!4826280 (= lt!1973566 (forallContained!4386 (toList!7480 lt!1973565) lambda!236834 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> b!4826280 (contains!18780 lt!1973565 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun lt!1973571 () Unit!143029)

(declare-fun Unit!143140 () Unit!143029)

(assert (=> b!4826280 (= lt!1973571 Unit!143140)))

(assert (=> b!4826280 (contains!18780 lt!1973574 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun lt!1973563 () Unit!143029)

(declare-fun Unit!143141 () Unit!143029)

(assert (=> b!4826280 (= lt!1973563 Unit!143141)))

(assert (=> b!4826280 (forall!12610 (_2!32392 (h!61407 (toList!7479 lm!2280))) lambda!236834)))

(declare-fun lt!1973558 () Unit!143029)

(declare-fun Unit!143142 () Unit!143029)

(assert (=> b!4826280 (= lt!1973558 Unit!143142)))

(assert (=> b!4826280 (forall!12610 (toList!7480 lt!1973565) lambda!236834)))

(declare-fun lt!1973557 () Unit!143029)

(declare-fun Unit!143143 () Unit!143029)

(assert (=> b!4826280 (= lt!1973557 Unit!143143)))

(declare-fun lt!1973567 () Unit!143029)

(declare-fun Unit!143144 () Unit!143029)

(assert (=> b!4826280 (= lt!1973567 Unit!143144)))

(declare-fun lt!1973570 () Unit!143029)

(assert (=> b!4826280 (= lt!1973570 (addForallContainsKeyThenBeforeAdding!991 (extractMap!2680 (t!362593 (toList!7479 lm!2280))) lt!1973574 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> b!4826280 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) lambda!236834)))

(declare-fun lt!1973555 () Unit!143029)

(assert (=> b!4826280 (= lt!1973555 lt!1973570)))

(declare-fun call!336412 () Bool)

(assert (=> b!4826280 call!336412))

(declare-fun lt!1973556 () Unit!143029)

(declare-fun Unit!143145 () Unit!143029)

(assert (=> b!4826280 (= lt!1973556 Unit!143145)))

(declare-fun res!2054829 () Bool)

(assert (=> b!4826280 (= res!2054829 (forall!12610 (_2!32392 (h!61407 (toList!7479 lm!2280))) lambda!236834))))

(declare-fun e!3015706 () Bool)

(assert (=> b!4826280 (=> (not res!2054829) (not e!3015706))))

(assert (=> b!4826280 e!3015706))

(declare-fun lt!1973561 () Unit!143029)

(declare-fun Unit!143146 () Unit!143029)

(assert (=> b!4826280 (= lt!1973561 Unit!143146)))

(declare-fun b!4826282 () Bool)

(declare-fun res!2054828 () Bool)

(declare-fun e!3015704 () Bool)

(assert (=> b!4826282 (=> (not res!2054828) (not e!3015704))))

(assert (=> b!4826282 (= res!2054828 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) lambda!236835))))

(declare-fun c!822409 () Bool)

(declare-fun bm!336406 () Bool)

(assert (=> bm!336406 (= call!336412 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (ite c!822409 lambda!236832 lambda!236834)))))

(declare-fun b!4826283 () Bool)

(assert (=> b!4826283 (= e!3015704 (invariantList!1813 (toList!7480 lt!1973569)))))

(assert (=> b!4826284 (= e!3015705 (extractMap!2680 (t!362593 (toList!7479 lm!2280))))))

(declare-fun lt!1973568 () Unit!143029)

(assert (=> b!4826284 (= lt!1973568 call!336413)))

(assert (=> b!4826284 call!336411))

(declare-fun lt!1973572 () Unit!143029)

(assert (=> b!4826284 (= lt!1973572 lt!1973568)))

(assert (=> b!4826284 call!336412))

(declare-fun lt!1973562 () Unit!143029)

(declare-fun Unit!143147 () Unit!143029)

(assert (=> b!4826284 (= lt!1973562 Unit!143147)))

(declare-fun bm!336407 () Bool)

(assert (=> bm!336407 (= call!336413 (lemmaContainsAllItsOwnKeys!992 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))))))

(declare-fun bm!336408 () Bool)

(assert (=> bm!336408 (= call!336411 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (ite c!822409 lambda!236832 lambda!236833)))))

(declare-fun b!4826281 () Bool)

(assert (=> b!4826281 (= e!3015706 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) lambda!236834))))

(assert (=> d!1546416 e!3015704))

(declare-fun res!2054827 () Bool)

(assert (=> d!1546416 (=> (not res!2054827) (not e!3015704))))

(assert (=> d!1546416 (= res!2054827 (forall!12610 (_2!32392 (h!61407 (toList!7479 lm!2280))) lambda!236835))))

(assert (=> d!1546416 (= lt!1973569 e!3015705)))

(assert (=> d!1546416 (= c!822409 ((_ is Nil!54972) (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(assert (=> d!1546416 (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lm!2280))))))

(assert (=> d!1546416 (= (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) lt!1973569)))

(assert (= (and d!1546416 c!822409) b!4826284))

(assert (= (and d!1546416 (not c!822409)) b!4826280))

(assert (= (and b!4826280 res!2054829) b!4826281))

(assert (= (or b!4826284 b!4826280) bm!336408))

(assert (= (or b!4826284 b!4826280) bm!336406))

(assert (= (or b!4826284 b!4826280) bm!336407))

(assert (= (and d!1546416 res!2054827) b!4826282))

(assert (= (and b!4826282 res!2054828) b!4826283))

(declare-fun m!5817104 () Bool)

(assert (=> bm!336408 m!5817104))

(assert (=> bm!336407 m!5816024))

(declare-fun m!5817106 () Bool)

(assert (=> bm!336407 m!5817106))

(declare-fun m!5817108 () Bool)

(assert (=> b!4826281 m!5817108))

(declare-fun m!5817110 () Bool)

(assert (=> b!4826283 m!5817110))

(declare-fun m!5817112 () Bool)

(assert (=> bm!336406 m!5817112))

(declare-fun m!5817114 () Bool)

(assert (=> d!1546416 m!5817114))

(assert (=> d!1546416 m!5816266))

(declare-fun m!5817116 () Bool)

(assert (=> b!4826282 m!5817116))

(declare-fun m!5817118 () Bool)

(assert (=> b!4826280 m!5817118))

(declare-fun m!5817120 () Bool)

(assert (=> b!4826280 m!5817120))

(declare-fun m!5817122 () Bool)

(assert (=> b!4826280 m!5817122))

(declare-fun m!5817124 () Bool)

(assert (=> b!4826280 m!5817124))

(declare-fun m!5817126 () Bool)

(assert (=> b!4826280 m!5817126))

(assert (=> b!4826280 m!5816024))

(declare-fun m!5817128 () Bool)

(assert (=> b!4826280 m!5817128))

(assert (=> b!4826280 m!5816024))

(declare-fun m!5817130 () Bool)

(assert (=> b!4826280 m!5817130))

(assert (=> b!4826280 m!5817124))

(assert (=> b!4826280 m!5817126))

(assert (=> b!4826280 m!5817130))

(declare-fun m!5817132 () Bool)

(assert (=> b!4826280 m!5817132))

(declare-fun m!5817134 () Bool)

(assert (=> b!4826280 m!5817134))

(assert (=> b!4826280 m!5817108))

(assert (=> b!4825869 d!1546416))

(assert (=> b!4825869 d!1546166))

(declare-fun d!1546418 () Bool)

(assert (=> d!1546418 (= (get!18824 (getValueByKey!2624 (toList!7479 lm!2280) (_1!32392 (h!61407 (toList!7479 lm!2280))))) (v!49177 (getValueByKey!2624 (toList!7479 lm!2280) (_1!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> d!1546108 d!1546418))

(declare-fun b!4826288 () Bool)

(declare-fun e!3015708 () Option!13497)

(assert (=> b!4826288 (= e!3015708 (getValueByKey!2624 (t!362593 (toList!7479 lm!2280)) (_1!32392 (h!61407 (toList!7479 lm!2280)))))))

(declare-fun b!4826286 () Bool)

(declare-fun e!3015707 () Option!13497)

(assert (=> b!4826286 (= e!3015707 (Some!13496 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(declare-fun b!4826289 () Bool)

(assert (=> b!4826289 (= e!3015708 None!13496)))

(declare-fun d!1546420 () Bool)

(declare-fun c!822410 () Bool)

(assert (=> d!1546420 (= c!822410 (and ((_ is Cons!54973) (toList!7479 lm!2280)) (= (_1!32392 (h!61407 (toList!7479 lm!2280))) (_1!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> d!1546420 (= (getValueByKey!2624 (toList!7479 lm!2280) (_1!32392 (h!61407 (toList!7479 lm!2280)))) e!3015707)))

(declare-fun b!4826287 () Bool)

(assert (=> b!4826287 (= e!3015707 e!3015708)))

(declare-fun c!822411 () Bool)

(assert (=> b!4826287 (= c!822411 (and ((_ is Cons!54973) (toList!7479 lm!2280)) (not (= (_1!32392 (h!61407 (toList!7479 lm!2280))) (_1!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (= (and d!1546420 c!822410) b!4826286))

(assert (= (and d!1546420 (not c!822410)) b!4826287))

(assert (= (and b!4826287 c!822411) b!4826288))

(assert (= (and b!4826287 (not c!822411)) b!4826289))

(declare-fun m!5817136 () Bool)

(assert (=> b!4826288 m!5817136))

(assert (=> d!1546108 d!1546420))

(declare-fun d!1546422 () Bool)

(declare-fun res!2054830 () Bool)

(declare-fun e!3015709 () Bool)

(assert (=> d!1546422 (=> res!2054830 e!3015709)))

(assert (=> d!1546422 (= res!2054830 (and ((_ is Cons!54972) (t!362592 (apply!13353 lt!1973030 lt!1973034))) (= (_1!32391 (h!61406 (t!362592 (apply!13353 lt!1973030 lt!1973034)))) key!5428)))))

(assert (=> d!1546422 (= (containsKey!4371 (t!362592 (apply!13353 lt!1973030 lt!1973034)) key!5428) e!3015709)))

(declare-fun b!4826290 () Bool)

(declare-fun e!3015710 () Bool)

(assert (=> b!4826290 (= e!3015709 e!3015710)))

(declare-fun res!2054831 () Bool)

(assert (=> b!4826290 (=> (not res!2054831) (not e!3015710))))

(assert (=> b!4826290 (= res!2054831 ((_ is Cons!54972) (t!362592 (apply!13353 lt!1973030 lt!1973034))))))

(declare-fun b!4826291 () Bool)

(assert (=> b!4826291 (= e!3015710 (containsKey!4371 (t!362592 (t!362592 (apply!13353 lt!1973030 lt!1973034))) key!5428))))

(assert (= (and d!1546422 (not res!2054830)) b!4826290))

(assert (= (and b!4826290 res!2054831) b!4826291))

(declare-fun m!5817138 () Bool)

(assert (=> b!4826291 m!5817138))

(assert (=> b!4825892 d!1546422))

(declare-fun d!1546424 () Bool)

(assert (=> d!1546424 (isDefined!10612 (getValueByKey!2624 (toList!7479 lt!1973030) lt!1973034))))

(declare-fun lt!1973578 () Unit!143029)

(assert (=> d!1546424 (= lt!1973578 (choose!35136 (toList!7479 lt!1973030) lt!1973034))))

(declare-fun e!3015711 () Bool)

(assert (=> d!1546424 e!3015711))

(declare-fun res!2054832 () Bool)

(assert (=> d!1546424 (=> (not res!2054832) (not e!3015711))))

(assert (=> d!1546424 (= res!2054832 (isStrictlySorted!986 (toList!7479 lt!1973030)))))

(assert (=> d!1546424 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2409 (toList!7479 lt!1973030) lt!1973034) lt!1973578)))

(declare-fun b!4826292 () Bool)

(assert (=> b!4826292 (= e!3015711 (containsKey!4375 (toList!7479 lt!1973030) lt!1973034))))

(assert (= (and d!1546424 res!2054832) b!4826292))

(assert (=> d!1546424 m!5816392))

(assert (=> d!1546424 m!5816392))

(assert (=> d!1546424 m!5816418))

(declare-fun m!5817140 () Bool)

(assert (=> d!1546424 m!5817140))

(declare-fun m!5817142 () Bool)

(assert (=> d!1546424 m!5817142))

(assert (=> b!4826292 m!5816414))

(assert (=> b!4825906 d!1546424))

(assert (=> b!4825906 d!1546388))

(assert (=> b!4825906 d!1546304))

(declare-fun d!1546426 () Bool)

(assert (=> d!1546426 (= (isDefined!10611 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428)) (not (isEmpty!29657 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))))

(declare-fun bs!1164208 () Bool)

(assert (= bs!1164208 d!1546426))

(assert (=> bs!1164208 m!5816352))

(declare-fun m!5817152 () Bool)

(assert (=> bs!1164208 m!5817152))

(assert (=> b!4825881 d!1546426))

(declare-fun b!4826296 () Bool)

(declare-fun e!3015713 () Option!13496)

(assert (=> b!4826296 (= e!3015713 None!13495)))

(declare-fun d!1546430 () Bool)

(declare-fun c!822412 () Bool)

(assert (=> d!1546430 (= c!822412 (and ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) key!5428)))))

(declare-fun e!3015712 () Option!13496)

(assert (=> d!1546430 (= (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428) e!3015712)))

(declare-fun b!4826293 () Bool)

(assert (=> b!4826293 (= e!3015712 (Some!13495 (_2!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))))))

(declare-fun b!4826295 () Bool)

(assert (=> b!4826295 (= e!3015713 (getValueByKey!2623 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) key!5428))))

(declare-fun b!4826294 () Bool)

(assert (=> b!4826294 (= e!3015712 e!3015713)))

(declare-fun c!822413 () Bool)

(assert (=> b!4826294 (= c!822413 (and ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (not (= (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) key!5428))))))

(assert (= (and d!1546430 c!822412) b!4826293))

(assert (= (and d!1546430 (not c!822412)) b!4826294))

(assert (= (and b!4826294 c!822413) b!4826295))

(assert (= (and b!4826294 (not c!822413)) b!4826296))

(declare-fun m!5817154 () Bool)

(assert (=> b!4826295 m!5817154))

(assert (=> b!4825881 d!1546430))

(declare-fun d!1546432 () Bool)

(assert (=> d!1546432 (isDefined!10611 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(declare-fun lt!1973579 () Unit!143029)

(assert (=> d!1546432 (= lt!1973579 (choose!35137 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(assert (=> d!1546432 (invariantList!1813 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))))

(assert (=> d!1546432 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428) lt!1973579)))

(declare-fun bs!1164209 () Bool)

(assert (= bs!1164209 d!1546432))

(assert (=> bs!1164209 m!5816352))

(assert (=> bs!1164209 m!5816352))

(assert (=> bs!1164209 m!5816354))

(declare-fun m!5817158 () Bool)

(assert (=> bs!1164209 m!5817158))

(assert (=> bs!1164209 m!5816554))

(assert (=> b!4825877 d!1546432))

(assert (=> b!4825877 d!1546426))

(assert (=> b!4825877 d!1546430))

(declare-fun d!1546436 () Bool)

(assert (=> d!1546436 (contains!18783 (getKeysList!1160 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) key!5428)))

(declare-fun lt!1973580 () Unit!143029)

(assert (=> d!1546436 (= lt!1973580 (choose!35138 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(assert (=> d!1546436 (invariantList!1813 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))))

(assert (=> d!1546436 (= (lemmaInListThenGetKeysListContains!1155 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428) lt!1973580)))

(declare-fun bs!1164210 () Bool)

(assert (= bs!1164210 d!1546436))

(assert (=> bs!1164210 m!5816358))

(assert (=> bs!1164210 m!5816358))

(declare-fun m!5817160 () Bool)

(assert (=> bs!1164210 m!5817160))

(declare-fun m!5817164 () Bool)

(assert (=> bs!1164210 m!5817164))

(assert (=> bs!1164210 m!5816554))

(assert (=> b!4825877 d!1546436))

(declare-fun d!1546438 () Bool)

(declare-fun res!2054837 () Bool)

(declare-fun e!3015718 () Bool)

(assert (=> d!1546438 (=> res!2054837 e!3015718)))

(assert (=> d!1546438 (= res!2054837 (and ((_ is Cons!54973) (toList!7479 lm!2280)) (= (_1!32392 (h!61407 (toList!7479 lm!2280))) lt!1973034)))))

(assert (=> d!1546438 (= (containsKey!4375 (toList!7479 lm!2280) lt!1973034) e!3015718)))

(declare-fun b!4826301 () Bool)

(declare-fun e!3015719 () Bool)

(assert (=> b!4826301 (= e!3015718 e!3015719)))

(declare-fun res!2054838 () Bool)

(assert (=> b!4826301 (=> (not res!2054838) (not e!3015719))))

(assert (=> b!4826301 (= res!2054838 (and (or (not ((_ is Cons!54973) (toList!7479 lm!2280))) (bvsle (_1!32392 (h!61407 (toList!7479 lm!2280))) lt!1973034)) ((_ is Cons!54973) (toList!7479 lm!2280)) (bvslt (_1!32392 (h!61407 (toList!7479 lm!2280))) lt!1973034)))))

(declare-fun b!4826302 () Bool)

(assert (=> b!4826302 (= e!3015719 (containsKey!4375 (t!362593 (toList!7479 lm!2280)) lt!1973034))))

(assert (= (and d!1546438 (not res!2054837)) b!4826301))

(assert (= (and b!4826301 res!2054838) b!4826302))

(declare-fun m!5817168 () Bool)

(assert (=> b!4826302 m!5817168))

(assert (=> d!1546190 d!1546438))

(declare-fun d!1546442 () Bool)

(declare-fun res!2054843 () Bool)

(declare-fun e!3015724 () Bool)

(assert (=> d!1546442 (=> res!2054843 e!3015724)))

(assert (=> d!1546442 (= res!2054843 (not ((_ is Cons!54972) (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (=> d!1546442 (= (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lm!2280)))) e!3015724)))

(declare-fun b!4826307 () Bool)

(declare-fun e!3015725 () Bool)

(assert (=> b!4826307 (= e!3015724 e!3015725)))

(declare-fun res!2054844 () Bool)

(assert (=> b!4826307 (=> (not res!2054844) (not e!3015725))))

(assert (=> b!4826307 (= res!2054844 (not (containsKey!4371 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))))

(declare-fun b!4826308 () Bool)

(assert (=> b!4826308 (= e!3015725 (noDuplicateKeys!2452 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(assert (= (and d!1546442 (not res!2054843)) b!4826307))

(assert (= (and b!4826307 res!2054844) b!4826308))

(declare-fun m!5817170 () Bool)

(assert (=> b!4826307 m!5817170))

(assert (=> b!4826308 m!5816820))

(assert (=> bs!1163902 d!1546442))

(declare-fun d!1546444 () Bool)

(declare-fun lt!1973581 () Bool)

(assert (=> d!1546444 (= lt!1973581 (select (content!9820 (keys!20227 lt!1973032)) key!5428))))

(declare-fun e!3015726 () Bool)

(assert (=> d!1546444 (= lt!1973581 e!3015726)))

(declare-fun res!2054846 () Bool)

(assert (=> d!1546444 (=> (not res!2054846) (not e!3015726))))

(assert (=> d!1546444 (= res!2054846 ((_ is Cons!54975) (keys!20227 lt!1973032)))))

(assert (=> d!1546444 (= (contains!18783 (keys!20227 lt!1973032) key!5428) lt!1973581)))

(declare-fun b!4826309 () Bool)

(declare-fun e!3015727 () Bool)

(assert (=> b!4826309 (= e!3015726 e!3015727)))

(declare-fun res!2054845 () Bool)

(assert (=> b!4826309 (=> res!2054845 e!3015727)))

(assert (=> b!4826309 (= res!2054845 (= (h!61409 (keys!20227 lt!1973032)) key!5428))))

(declare-fun b!4826310 () Bool)

(assert (=> b!4826310 (= e!3015727 (contains!18783 (t!362595 (keys!20227 lt!1973032)) key!5428))))

(assert (= (and d!1546444 res!2054846) b!4826309))

(assert (= (and b!4826309 (not res!2054845)) b!4826310))

(assert (=> d!1546444 m!5816056))

(declare-fun m!5817172 () Bool)

(assert (=> d!1546444 m!5817172))

(declare-fun m!5817174 () Bool)

(assert (=> d!1546444 m!5817174))

(declare-fun m!5817176 () Bool)

(assert (=> b!4826310 m!5817176))

(assert (=> b!4825724 d!1546444))

(assert (=> b!4825724 d!1546376))

(declare-fun d!1546446 () Bool)

(assert (=> d!1546446 (= (invariantList!1813 (toList!7480 lt!1973280)) (noDuplicatedKeys!480 (toList!7480 lt!1973280)))))

(declare-fun bs!1164211 () Bool)

(assert (= bs!1164211 d!1546446))

(declare-fun m!5817178 () Bool)

(assert (=> bs!1164211 m!5817178))

(assert (=> d!1546170 d!1546446))

(declare-fun d!1546448 () Bool)

(declare-fun res!2054847 () Bool)

(declare-fun e!3015728 () Bool)

(assert (=> d!1546448 (=> res!2054847 e!3015728)))

(assert (=> d!1546448 (= res!2054847 ((_ is Nil!54973) (toList!7479 lm!2280)))))

(assert (=> d!1546448 (= (forall!12608 (toList!7479 lm!2280) lambda!236738) e!3015728)))

(declare-fun b!4826311 () Bool)

(declare-fun e!3015729 () Bool)

(assert (=> b!4826311 (= e!3015728 e!3015729)))

(declare-fun res!2054848 () Bool)

(assert (=> b!4826311 (=> (not res!2054848) (not e!3015729))))

(assert (=> b!4826311 (= res!2054848 (dynLambda!22218 lambda!236738 (h!61407 (toList!7479 lm!2280))))))

(declare-fun b!4826312 () Bool)

(assert (=> b!4826312 (= e!3015729 (forall!12608 (t!362593 (toList!7479 lm!2280)) lambda!236738))))

(assert (= (and d!1546448 (not res!2054847)) b!4826311))

(assert (= (and b!4826311 res!2054848) b!4826312))

(declare-fun b_lambda!189901 () Bool)

(assert (=> (not b_lambda!189901) (not b!4826311)))

(declare-fun m!5817180 () Bool)

(assert (=> b!4826311 m!5817180))

(declare-fun m!5817182 () Bool)

(assert (=> b!4826312 m!5817182))

(assert (=> d!1546170 d!1546448))

(declare-fun bs!1164212 () Bool)

(declare-fun b!4826317 () Bool)

(assert (= bs!1164212 (and b!4826317 b!4825834)))

(declare-fun lambda!236841 () Int)

(assert (=> bs!1164212 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973032) (= lambda!236841 lambda!236728))))

(declare-fun bs!1164213 () Bool)

(assert (= bs!1164213 (and b!4826317 d!1546314)))

(assert (=> bs!1164213 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973262) (= lambda!236841 lambda!236808))))

(declare-fun bs!1164214 () Bool)

(assert (= bs!1164214 (and b!4826317 d!1546246)))

(assert (=> bs!1164214 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973032) (= lambda!236841 lambda!236772))))

(declare-fun bs!1164215 () Bool)

(assert (= bs!1164215 (and b!4826317 b!4825830)))

(assert (=> bs!1164215 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973032) (= lambda!236841 lambda!236729))))

(declare-fun bs!1164216 () Bool)

(assert (= bs!1164216 (and b!4826317 b!4826284)))

(assert (=> bs!1164216 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236841 lambda!236832))))

(declare-fun bs!1164217 () Bool)

(assert (= bs!1164217 (and b!4826317 d!1546324)))

(assert (=> bs!1164217 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973449) (= lambda!236841 lambda!236814))))

(declare-fun bs!1164218 () Bool)

(assert (= bs!1164218 (and b!4826317 b!4826168)))

(assert (=> bs!1164218 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973454) (= lambda!236841 lambda!236813))))

(declare-fun bs!1164219 () Bool)

(assert (= bs!1164219 (and b!4826317 b!4825940)))

(assert (=> bs!1164219 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236841 lambda!236748))))

(declare-fun bs!1164220 () Bool)

(assert (= bs!1164220 (and b!4826317 b!4826172)))

(assert (=> bs!1164220 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236841 lambda!236809))))

(declare-fun bs!1164221 () Bool)

(assert (= bs!1164221 (and b!4826317 d!1546216)))

(assert (=> bs!1164221 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973338) (= lambda!236841 lambda!236754))))

(declare-fun bs!1164222 () Bool)

(assert (= bs!1164222 (and b!4826317 b!4825944)))

(assert (=> bs!1164222 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236841 lambda!236747))))

(assert (=> bs!1164218 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236841 lambda!236812))))

(declare-fun bs!1164223 () Bool)

(assert (= bs!1164223 (and b!4826317 d!1546416)))

(assert (=> bs!1164223 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973569) (= lambda!236841 lambda!236835))))

(declare-fun bs!1164224 () Bool)

(assert (= bs!1164224 (and b!4826317 b!4826280)))

(assert (=> bs!1164224 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973574) (= lambda!236841 lambda!236834))))

(assert (=> bs!1164215 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973262) (= lambda!236841 lambda!236730))))

(declare-fun bs!1164225 () Bool)

(assert (= bs!1164225 (and b!4826317 d!1546116)))

(assert (=> bs!1164225 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973257) (= lambda!236841 lambda!236731))))

(assert (=> bs!1164219 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973343) (= lambda!236841 lambda!236751))))

(assert (=> bs!1164224 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236841 lambda!236833))))

(assert (=> b!4826317 true))

(declare-fun bs!1164226 () Bool)

(declare-fun b!4826313 () Bool)

(assert (= bs!1164226 (and b!4826313 d!1546314)))

(declare-fun lambda!236842 () Int)

(assert (=> bs!1164226 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973262) (= lambda!236842 lambda!236808))))

(declare-fun bs!1164227 () Bool)

(assert (= bs!1164227 (and b!4826313 d!1546246)))

(assert (=> bs!1164227 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973032) (= lambda!236842 lambda!236772))))

(declare-fun bs!1164228 () Bool)

(assert (= bs!1164228 (and b!4826313 b!4825830)))

(assert (=> bs!1164228 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973032) (= lambda!236842 lambda!236729))))

(declare-fun bs!1164229 () Bool)

(assert (= bs!1164229 (and b!4826313 b!4826284)))

(assert (=> bs!1164229 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236842 lambda!236832))))

(declare-fun bs!1164230 () Bool)

(assert (= bs!1164230 (and b!4826313 d!1546324)))

(assert (=> bs!1164230 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973449) (= lambda!236842 lambda!236814))))

(declare-fun bs!1164231 () Bool)

(assert (= bs!1164231 (and b!4826313 b!4826168)))

(assert (=> bs!1164231 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973454) (= lambda!236842 lambda!236813))))

(declare-fun bs!1164232 () Bool)

(assert (= bs!1164232 (and b!4826313 b!4825940)))

(assert (=> bs!1164232 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236842 lambda!236748))))

(declare-fun bs!1164233 () Bool)

(assert (= bs!1164233 (and b!4826313 b!4826172)))

(assert (=> bs!1164233 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236842 lambda!236809))))

(declare-fun bs!1164234 () Bool)

(assert (= bs!1164234 (and b!4826313 b!4826317)))

(assert (=> bs!1164234 (= lambda!236842 lambda!236841)))

(declare-fun bs!1164235 () Bool)

(assert (= bs!1164235 (and b!4826313 b!4825834)))

(assert (=> bs!1164235 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973032) (= lambda!236842 lambda!236728))))

(declare-fun bs!1164236 () Bool)

(assert (= bs!1164236 (and b!4826313 d!1546216)))

(assert (=> bs!1164236 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973338) (= lambda!236842 lambda!236754))))

(declare-fun bs!1164237 () Bool)

(assert (= bs!1164237 (and b!4826313 b!4825944)))

(assert (=> bs!1164237 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236842 lambda!236747))))

(assert (=> bs!1164231 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236842 lambda!236812))))

(declare-fun bs!1164238 () Bool)

(assert (= bs!1164238 (and b!4826313 d!1546416)))

(assert (=> bs!1164238 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973569) (= lambda!236842 lambda!236835))))

(declare-fun bs!1164239 () Bool)

(assert (= bs!1164239 (and b!4826313 b!4826280)))

(assert (=> bs!1164239 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973574) (= lambda!236842 lambda!236834))))

(assert (=> bs!1164228 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973262) (= lambda!236842 lambda!236730))))

(declare-fun bs!1164240 () Bool)

(assert (= bs!1164240 (and b!4826313 d!1546116)))

(assert (=> bs!1164240 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973257) (= lambda!236842 lambda!236731))))

(assert (=> bs!1164232 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973343) (= lambda!236842 lambda!236751))))

(assert (=> bs!1164239 (= (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236842 lambda!236833))))

(assert (=> b!4826313 true))

(declare-fun lt!1973602 () ListMap!6857)

(declare-fun lambda!236843 () Int)

(assert (=> bs!1164226 (= (= lt!1973602 lt!1973262) (= lambda!236843 lambda!236808))))

(assert (=> bs!1164227 (= (= lt!1973602 lt!1973032) (= lambda!236843 lambda!236772))))

(assert (=> bs!1164228 (= (= lt!1973602 lt!1973032) (= lambda!236843 lambda!236729))))

(assert (=> bs!1164229 (= (= lt!1973602 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236843 lambda!236832))))

(assert (=> bs!1164230 (= (= lt!1973602 lt!1973449) (= lambda!236843 lambda!236814))))

(assert (=> bs!1164231 (= (= lt!1973602 lt!1973454) (= lambda!236843 lambda!236813))))

(assert (=> b!4826313 (= (= lt!1973602 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) (= lambda!236843 lambda!236842))))

(assert (=> bs!1164232 (= (= lt!1973602 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236843 lambda!236748))))

(assert (=> bs!1164233 (= (= lt!1973602 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236843 lambda!236809))))

(assert (=> bs!1164234 (= (= lt!1973602 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) (= lambda!236843 lambda!236841))))

(assert (=> bs!1164235 (= (= lt!1973602 lt!1973032) (= lambda!236843 lambda!236728))))

(assert (=> bs!1164236 (= (= lt!1973602 lt!1973338) (= lambda!236843 lambda!236754))))

(assert (=> bs!1164237 (= (= lt!1973602 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236843 lambda!236747))))

(assert (=> bs!1164231 (= (= lt!1973602 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236843 lambda!236812))))

(assert (=> bs!1164238 (= (= lt!1973602 lt!1973569) (= lambda!236843 lambda!236835))))

(assert (=> bs!1164239 (= (= lt!1973602 lt!1973574) (= lambda!236843 lambda!236834))))

(assert (=> bs!1164228 (= (= lt!1973602 lt!1973262) (= lambda!236843 lambda!236730))))

(assert (=> bs!1164240 (= (= lt!1973602 lt!1973257) (= lambda!236843 lambda!236731))))

(assert (=> bs!1164232 (= (= lt!1973602 lt!1973343) (= lambda!236843 lambda!236751))))

(assert (=> bs!1164239 (= (= lt!1973602 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236843 lambda!236833))))

(assert (=> b!4826313 true))

(declare-fun bs!1164242 () Bool)

(declare-fun d!1546450 () Bool)

(assert (= bs!1164242 (and d!1546450 d!1546314)))

(declare-fun lt!1973597 () ListMap!6857)

(declare-fun lambda!236845 () Int)

(assert (=> bs!1164242 (= (= lt!1973597 lt!1973262) (= lambda!236845 lambda!236808))))

(declare-fun bs!1164243 () Bool)

(assert (= bs!1164243 (and d!1546450 d!1546246)))

(assert (=> bs!1164243 (= (= lt!1973597 lt!1973032) (= lambda!236845 lambda!236772))))

(declare-fun bs!1164245 () Bool)

(assert (= bs!1164245 (and d!1546450 b!4825830)))

(assert (=> bs!1164245 (= (= lt!1973597 lt!1973032) (= lambda!236845 lambda!236729))))

(declare-fun bs!1164247 () Bool)

(assert (= bs!1164247 (and d!1546450 b!4826284)))

(assert (=> bs!1164247 (= (= lt!1973597 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236845 lambda!236832))))

(declare-fun bs!1164248 () Bool)

(assert (= bs!1164248 (and d!1546450 b!4826168)))

(assert (=> bs!1164248 (= (= lt!1973597 lt!1973454) (= lambda!236845 lambda!236813))))

(declare-fun bs!1164250 () Bool)

(assert (= bs!1164250 (and d!1546450 b!4826313)))

(assert (=> bs!1164250 (= (= lt!1973597 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) (= lambda!236845 lambda!236842))))

(declare-fun bs!1164252 () Bool)

(assert (= bs!1164252 (and d!1546450 b!4825940)))

(assert (=> bs!1164252 (= (= lt!1973597 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236845 lambda!236748))))

(declare-fun bs!1164254 () Bool)

(assert (= bs!1164254 (and d!1546450 b!4826172)))

(assert (=> bs!1164254 (= (= lt!1973597 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236845 lambda!236809))))

(declare-fun bs!1164255 () Bool)

(assert (= bs!1164255 (and d!1546450 b!4826317)))

(assert (=> bs!1164255 (= (= lt!1973597 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) (= lambda!236845 lambda!236841))))

(declare-fun bs!1164256 () Bool)

(assert (= bs!1164256 (and d!1546450 b!4825834)))

(assert (=> bs!1164256 (= (= lt!1973597 lt!1973032) (= lambda!236845 lambda!236728))))

(declare-fun bs!1164258 () Bool)

(assert (= bs!1164258 (and d!1546450 d!1546216)))

(assert (=> bs!1164258 (= (= lt!1973597 lt!1973338) (= lambda!236845 lambda!236754))))

(declare-fun bs!1164259 () Bool)

(assert (= bs!1164259 (and d!1546450 b!4825944)))

(assert (=> bs!1164259 (= (= lt!1973597 (extractMap!2680 (t!362593 (t!362593 (toList!7479 lm!2280))))) (= lambda!236845 lambda!236747))))

(assert (=> bs!1164248 (= (= lt!1973597 (+!2537 lt!1973032 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (= lambda!236845 lambda!236812))))

(declare-fun bs!1164260 () Bool)

(assert (= bs!1164260 (and d!1546450 d!1546416)))

(assert (=> bs!1164260 (= (= lt!1973597 lt!1973569) (= lambda!236845 lambda!236835))))

(declare-fun bs!1164262 () Bool)

(assert (= bs!1164262 (and d!1546450 b!4826280)))

(assert (=> bs!1164262 (= (= lt!1973597 lt!1973574) (= lambda!236845 lambda!236834))))

(assert (=> bs!1164245 (= (= lt!1973597 lt!1973262) (= lambda!236845 lambda!236730))))

(declare-fun bs!1164265 () Bool)

(assert (= bs!1164265 (and d!1546450 d!1546116)))

(assert (=> bs!1164265 (= (= lt!1973597 lt!1973257) (= lambda!236845 lambda!236731))))

(assert (=> bs!1164252 (= (= lt!1973597 lt!1973343) (= lambda!236845 lambda!236751))))

(assert (=> bs!1164262 (= (= lt!1973597 (extractMap!2680 (t!362593 (toList!7479 lm!2280)))) (= lambda!236845 lambda!236833))))

(assert (=> bs!1164250 (= (= lt!1973597 lt!1973602) (= lambda!236845 lambda!236843))))

(declare-fun bs!1164267 () Bool)

(assert (= bs!1164267 (and d!1546450 d!1546324)))

(assert (=> bs!1164267 (= (= lt!1973597 lt!1973449) (= lambda!236845 lambda!236814))))

(assert (=> d!1546450 true))

(declare-fun e!3015731 () ListMap!6857)

(assert (=> b!4826313 (= e!3015731 lt!1973602)))

(declare-fun lt!1973593 () ListMap!6857)

(assert (=> b!4826313 (= lt!1973593 (+!2537 (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (h!61406 (_2!32392 (h!61407 (toList!7479 lt!1973030))))))))

(assert (=> b!4826313 (= lt!1973602 (addToMapMapFromBucket!1798 (t!362592 (_2!32392 (h!61407 (toList!7479 lt!1973030)))) (+!2537 (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) (h!61406 (_2!32392 (h!61407 (toList!7479 lt!1973030)))))))))

(declare-fun lt!1973588 () Unit!143029)

(declare-fun call!336416 () Unit!143029)

(assert (=> b!4826313 (= lt!1973588 call!336416)))

(declare-fun call!336414 () Bool)

(assert (=> b!4826313 call!336414))

(declare-fun lt!1973592 () Unit!143029)

(assert (=> b!4826313 (= lt!1973592 lt!1973588)))

(assert (=> b!4826313 (forall!12610 (toList!7480 lt!1973593) lambda!236843)))

(declare-fun lt!1973587 () Unit!143029)

(declare-fun Unit!143159 () Unit!143029)

(assert (=> b!4826313 (= lt!1973587 Unit!143159)))

(assert (=> b!4826313 (forall!12610 (t!362592 (_2!32392 (h!61407 (toList!7479 lt!1973030)))) lambda!236843)))

(declare-fun lt!1973582 () Unit!143029)

(declare-fun Unit!143160 () Unit!143029)

(assert (=> b!4826313 (= lt!1973582 Unit!143160)))

(declare-fun lt!1973601 () Unit!143029)

(declare-fun Unit!143161 () Unit!143029)

(assert (=> b!4826313 (= lt!1973601 Unit!143161)))

(declare-fun lt!1973594 () Unit!143029)

(assert (=> b!4826313 (= lt!1973594 (forallContained!4386 (toList!7480 lt!1973593) lambda!236843 (h!61406 (_2!32392 (h!61407 (toList!7479 lt!1973030))))))))

(assert (=> b!4826313 (contains!18780 lt!1973593 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lt!1973030))))))))

(declare-fun lt!1973599 () Unit!143029)

(declare-fun Unit!143162 () Unit!143029)

(assert (=> b!4826313 (= lt!1973599 Unit!143162)))

(assert (=> b!4826313 (contains!18780 lt!1973602 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lt!1973030))))))))

(declare-fun lt!1973591 () Unit!143029)

(declare-fun Unit!143163 () Unit!143029)

(assert (=> b!4826313 (= lt!1973591 Unit!143163)))

(assert (=> b!4826313 (forall!12610 (_2!32392 (h!61407 (toList!7479 lt!1973030))) lambda!236843)))

(declare-fun lt!1973586 () Unit!143029)

(declare-fun Unit!143165 () Unit!143029)

(assert (=> b!4826313 (= lt!1973586 Unit!143165)))

(assert (=> b!4826313 (forall!12610 (toList!7480 lt!1973593) lambda!236843)))

(declare-fun lt!1973585 () Unit!143029)

(declare-fun Unit!143166 () Unit!143029)

(assert (=> b!4826313 (= lt!1973585 Unit!143166)))

(declare-fun lt!1973595 () Unit!143029)

(declare-fun Unit!143167 () Unit!143029)

(assert (=> b!4826313 (= lt!1973595 Unit!143167)))

(declare-fun lt!1973598 () Unit!143029)

(assert (=> b!4826313 (= lt!1973598 (addForallContainsKeyThenBeforeAdding!991 (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973602 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lt!1973030))))) (_2!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lt!1973030)))))))))

(assert (=> b!4826313 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) lambda!236843)))

(declare-fun lt!1973583 () Unit!143029)

(assert (=> b!4826313 (= lt!1973583 lt!1973598)))

(declare-fun call!336415 () Bool)

(assert (=> b!4826313 call!336415))

(declare-fun lt!1973584 () Unit!143029)

(declare-fun Unit!143168 () Unit!143029)

(assert (=> b!4826313 (= lt!1973584 Unit!143168)))

(declare-fun res!2054851 () Bool)

(assert (=> b!4826313 (= res!2054851 (forall!12610 (_2!32392 (h!61407 (toList!7479 lt!1973030))) lambda!236843))))

(declare-fun e!3015732 () Bool)

(assert (=> b!4826313 (=> (not res!2054851) (not e!3015732))))

(assert (=> b!4826313 e!3015732))

(declare-fun lt!1973589 () Unit!143029)

(declare-fun Unit!143170 () Unit!143029)

(assert (=> b!4826313 (= lt!1973589 Unit!143170)))

(declare-fun b!4826315 () Bool)

(declare-fun res!2054850 () Bool)

(declare-fun e!3015730 () Bool)

(assert (=> b!4826315 (=> (not res!2054850) (not e!3015730))))

(assert (=> b!4826315 (= res!2054850 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) lambda!236845))))

(declare-fun c!822414 () Bool)

(declare-fun bm!336409 () Bool)

(assert (=> bm!336409 (= call!336415 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) (ite c!822414 lambda!236841 lambda!236843)))))

(declare-fun b!4826316 () Bool)

(assert (=> b!4826316 (= e!3015730 (invariantList!1813 (toList!7480 lt!1973597)))))

(assert (=> b!4826317 (= e!3015731 (extractMap!2680 (t!362593 (toList!7479 lt!1973030))))))

(declare-fun lt!1973596 () Unit!143029)

(assert (=> b!4826317 (= lt!1973596 call!336416)))

(assert (=> b!4826317 call!336414))

(declare-fun lt!1973600 () Unit!143029)

(assert (=> b!4826317 (= lt!1973600 lt!1973596)))

(assert (=> b!4826317 call!336415))

(declare-fun lt!1973590 () Unit!143029)

(declare-fun Unit!143171 () Unit!143029)

(assert (=> b!4826317 (= lt!1973590 Unit!143171)))

(declare-fun bm!336410 () Bool)

(assert (=> bm!336410 (= call!336416 (lemmaContainsAllItsOwnKeys!992 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))))))

(declare-fun bm!336411 () Bool)

(assert (=> bm!336411 (= call!336414 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) (ite c!822414 lambda!236841 lambda!236842)))))

(declare-fun b!4826314 () Bool)

(assert (=> b!4826314 (= e!3015732 (forall!12610 (toList!7480 (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) lambda!236843))))

(assert (=> d!1546450 e!3015730))

(declare-fun res!2054849 () Bool)

(assert (=> d!1546450 (=> (not res!2054849) (not e!3015730))))

(assert (=> d!1546450 (= res!2054849 (forall!12610 (_2!32392 (h!61407 (toList!7479 lt!1973030))) lambda!236845))))

(assert (=> d!1546450 (= lt!1973597 e!3015731)))

(assert (=> d!1546450 (= c!822414 ((_ is Nil!54972) (_2!32392 (h!61407 (toList!7479 lt!1973030)))))))

(assert (=> d!1546450 (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lt!1973030))))))

(assert (=> d!1546450 (= (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lt!1973030))) (extractMap!2680 (t!362593 (toList!7479 lt!1973030)))) lt!1973597)))

(assert (= (and d!1546450 c!822414) b!4826317))

(assert (= (and d!1546450 (not c!822414)) b!4826313))

(assert (= (and b!4826313 res!2054851) b!4826314))

(assert (= (or b!4826317 b!4826313) bm!336411))

(assert (= (or b!4826317 b!4826313) bm!336409))

(assert (= (or b!4826317 b!4826313) bm!336410))

(assert (= (and d!1546450 res!2054849) b!4826315))

(assert (= (and b!4826315 res!2054850) b!4826316))

(declare-fun m!5817196 () Bool)

(assert (=> bm!336411 m!5817196))

(assert (=> bm!336410 m!5816342))

(declare-fun m!5817198 () Bool)

(assert (=> bm!336410 m!5817198))

(declare-fun m!5817200 () Bool)

(assert (=> b!4826314 m!5817200))

(declare-fun m!5817202 () Bool)

(assert (=> b!4826316 m!5817202))

(declare-fun m!5817204 () Bool)

(assert (=> bm!336409 m!5817204))

(declare-fun m!5817206 () Bool)

(assert (=> d!1546450 m!5817206))

(assert (=> d!1546450 m!5816426))

(declare-fun m!5817208 () Bool)

(assert (=> b!4826315 m!5817208))

(declare-fun m!5817210 () Bool)

(assert (=> b!4826313 m!5817210))

(declare-fun m!5817212 () Bool)

(assert (=> b!4826313 m!5817212))

(declare-fun m!5817214 () Bool)

(assert (=> b!4826313 m!5817214))

(declare-fun m!5817216 () Bool)

(assert (=> b!4826313 m!5817216))

(declare-fun m!5817218 () Bool)

(assert (=> b!4826313 m!5817218))

(assert (=> b!4826313 m!5816342))

(declare-fun m!5817220 () Bool)

(assert (=> b!4826313 m!5817220))

(assert (=> b!4826313 m!5816342))

(declare-fun m!5817222 () Bool)

(assert (=> b!4826313 m!5817222))

(assert (=> b!4826313 m!5817216))

(assert (=> b!4826313 m!5817218))

(assert (=> b!4826313 m!5817222))

(declare-fun m!5817224 () Bool)

(assert (=> b!4826313 m!5817224))

(declare-fun m!5817226 () Bool)

(assert (=> b!4826313 m!5817226))

(assert (=> b!4826313 m!5817200))

(assert (=> b!4825871 d!1546450))

(declare-fun bs!1164280 () Bool)

(declare-fun d!1546454 () Bool)

(assert (= bs!1164280 (and d!1546454 d!1546184)))

(declare-fun lambda!236848 () Int)

(assert (=> bs!1164280 (not (= lambda!236848 lambda!236745))))

(declare-fun bs!1164281 () Bool)

(assert (= bs!1164281 (and d!1546454 d!1546166)))

(assert (=> bs!1164281 (= lambda!236848 lambda!236737)))

(declare-fun bs!1164282 () Bool)

(assert (= bs!1164282 (and d!1546454 d!1546220)))

(assert (=> bs!1164282 (= lambda!236848 lambda!236757)))

(declare-fun bs!1164283 () Bool)

(assert (= bs!1164283 (and d!1546454 d!1546170)))

(assert (=> bs!1164283 (= lambda!236848 lambda!236738)))

(declare-fun bs!1164284 () Bool)

(assert (= bs!1164284 (and d!1546454 d!1546200)))

(assert (=> bs!1164284 (not (= lambda!236848 lambda!236746))))

(declare-fun bs!1164285 () Bool)

(assert (= bs!1164285 (and d!1546454 d!1546160)))

(assert (=> bs!1164285 (= lambda!236848 lambda!236734)))

(declare-fun bs!1164286 () Bool)

(assert (= bs!1164286 (and d!1546454 start!500676)))

(assert (=> bs!1164286 (= lambda!236848 lambda!236652)))

(declare-fun bs!1164287 () Bool)

(assert (= bs!1164287 (and d!1546454 d!1546172)))

(assert (=> bs!1164287 (= lambda!236848 lambda!236739)))

(declare-fun bs!1164288 () Bool)

(assert (= bs!1164288 (and d!1546454 d!1546178)))

(assert (=> bs!1164288 (= lambda!236848 lambda!236742)))

(declare-fun lt!1973636 () ListMap!6857)

(assert (=> d!1546454 (invariantList!1813 (toList!7480 lt!1973636))))

(declare-fun e!3015739 () ListMap!6857)

(assert (=> d!1546454 (= lt!1973636 e!3015739)))

(declare-fun c!822416 () Bool)

(assert (=> d!1546454 (= c!822416 ((_ is Cons!54973) (t!362593 (toList!7479 lt!1973030))))))

(assert (=> d!1546454 (forall!12608 (t!362593 (toList!7479 lt!1973030)) lambda!236848)))

(assert (=> d!1546454 (= (extractMap!2680 (t!362593 (toList!7479 lt!1973030))) lt!1973636)))

(declare-fun b!4826329 () Bool)

(assert (=> b!4826329 (= e!3015739 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (t!362593 (toList!7479 lt!1973030)))) (extractMap!2680 (t!362593 (t!362593 (toList!7479 lt!1973030))))))))

(declare-fun b!4826330 () Bool)

(assert (=> b!4826330 (= e!3015739 (ListMap!6858 Nil!54972))))

(assert (= (and d!1546454 c!822416) b!4826329))

(assert (= (and d!1546454 (not c!822416)) b!4826330))

(declare-fun m!5817228 () Bool)

(assert (=> d!1546454 m!5817228))

(declare-fun m!5817230 () Bool)

(assert (=> d!1546454 m!5817230))

(declare-fun m!5817232 () Bool)

(assert (=> b!4826329 m!5817232))

(assert (=> b!4826329 m!5817232))

(declare-fun m!5817234 () Bool)

(assert (=> b!4826329 m!5817234))

(assert (=> b!4825871 d!1546454))

(assert (=> b!4825858 d!1546392))

(declare-fun d!1546456 () Bool)

(assert (=> d!1546456 (containsKey!4374 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428)))

(declare-fun lt!1973637 () Unit!143029)

(assert (=> d!1546456 (= lt!1973637 (choose!35140 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428))))

(assert (=> d!1546456 (invariantList!1813 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))))

(assert (=> d!1546456 (= (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) key!5428) lt!1973637)))

(declare-fun bs!1164289 () Bool)

(assert (= bs!1164289 d!1546456))

(assert (=> bs!1164289 m!5816304))

(declare-fun m!5817236 () Bool)

(assert (=> bs!1164289 m!5817236))

(assert (=> bs!1164289 m!5816574))

(assert (=> b!4825858 d!1546456))

(declare-fun d!1546458 () Bool)

(declare-fun res!2054861 () Bool)

(declare-fun e!3015740 () Bool)

(assert (=> d!1546458 (=> res!2054861 e!3015740)))

(assert (=> d!1546458 (= res!2054861 (and ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) key!5428)))))

(assert (=> d!1546458 (= (containsKey!4374 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428) e!3015740)))

(declare-fun b!4826331 () Bool)

(declare-fun e!3015741 () Bool)

(assert (=> b!4826331 (= e!3015740 e!3015741)))

(declare-fun res!2054862 () Bool)

(assert (=> b!4826331 (=> (not res!2054862) (not e!3015741))))

(assert (=> b!4826331 (= res!2054862 ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))))

(declare-fun b!4826332 () Bool)

(assert (=> b!4826332 (= e!3015741 (containsKey!4374 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) key!5428))))

(assert (= (and d!1546458 (not res!2054861)) b!4826331))

(assert (= (and b!4826331 res!2054862) b!4826332))

(declare-fun m!5817238 () Bool)

(assert (=> b!4826332 m!5817238))

(assert (=> d!1546174 d!1546458))

(declare-fun d!1546460 () Bool)

(declare-fun res!2054863 () Bool)

(declare-fun e!3015742 () Bool)

(assert (=> d!1546460 (=> res!2054863 e!3015742)))

(assert (=> d!1546460 (= res!2054863 ((_ is Nil!54973) (toList!7479 lt!1973030)))))

(assert (=> d!1546460 (= (forall!12608 (toList!7479 lt!1973030) lambda!236745) e!3015742)))

(declare-fun b!4826333 () Bool)

(declare-fun e!3015743 () Bool)

(assert (=> b!4826333 (= e!3015742 e!3015743)))

(declare-fun res!2054864 () Bool)

(assert (=> b!4826333 (=> (not res!2054864) (not e!3015743))))

(assert (=> b!4826333 (= res!2054864 (dynLambda!22218 lambda!236745 (h!61407 (toList!7479 lt!1973030))))))

(declare-fun b!4826334 () Bool)

(assert (=> b!4826334 (= e!3015743 (forall!12608 (t!362593 (toList!7479 lt!1973030)) lambda!236745))))

(assert (= (and d!1546460 (not res!2054863)) b!4826333))

(assert (= (and b!4826333 res!2054864) b!4826334))

(declare-fun b_lambda!189903 () Bool)

(assert (=> (not b_lambda!189903) (not b!4826333)))

(declare-fun m!5817240 () Bool)

(assert (=> b!4826333 m!5817240))

(declare-fun m!5817242 () Bool)

(assert (=> b!4826334 m!5817242))

(assert (=> d!1546184 d!1546460))

(declare-fun d!1546462 () Bool)

(assert (=> d!1546462 (= (invariantList!1813 (toList!7480 lt!1973281)) (noDuplicatedKeys!480 (toList!7480 lt!1973281)))))

(declare-fun bs!1164293 () Bool)

(assert (= bs!1164293 d!1546462))

(declare-fun m!5817244 () Bool)

(assert (=> bs!1164293 m!5817244))

(assert (=> d!1546172 d!1546462))

(declare-fun d!1546464 () Bool)

(declare-fun res!2054865 () Bool)

(declare-fun e!3015744 () Bool)

(assert (=> d!1546464 (=> res!2054865 e!3015744)))

(assert (=> d!1546464 (= res!2054865 ((_ is Nil!54973) (toList!7479 lt!1973030)))))

(assert (=> d!1546464 (= (forall!12608 (toList!7479 lt!1973030) lambda!236739) e!3015744)))

(declare-fun b!4826335 () Bool)

(declare-fun e!3015745 () Bool)

(assert (=> b!4826335 (= e!3015744 e!3015745)))

(declare-fun res!2054866 () Bool)

(assert (=> b!4826335 (=> (not res!2054866) (not e!3015745))))

(assert (=> b!4826335 (= res!2054866 (dynLambda!22218 lambda!236739 (h!61407 (toList!7479 lt!1973030))))))

(declare-fun b!4826336 () Bool)

(assert (=> b!4826336 (= e!3015745 (forall!12608 (t!362593 (toList!7479 lt!1973030)) lambda!236739))))

(assert (= (and d!1546464 (not res!2054865)) b!4826335))

(assert (= (and b!4826335 res!2054866) b!4826336))

(declare-fun b_lambda!189905 () Bool)

(assert (=> (not b_lambda!189905) (not b!4826335)))

(declare-fun m!5817246 () Bool)

(assert (=> b!4826335 m!5817246))

(declare-fun m!5817248 () Bool)

(assert (=> b!4826336 m!5817248))

(assert (=> d!1546172 d!1546464))

(assert (=> d!1546178 d!1546176))

(assert (=> d!1546178 d!1546172))

(declare-fun d!1546466 () Bool)

(assert (=> d!1546466 (not (contains!18780 (extractMap!2680 (toList!7479 lt!1973030)) key!5428))))

(assert (=> d!1546466 true))

(declare-fun _$26!599 () Unit!143029)

(assert (=> d!1546466 (= (choose!35133 lt!1973030 key!5428 hashF!1509) _$26!599)))

(declare-fun bs!1164304 () Bool)

(assert (= bs!1164304 d!1546466))

(assert (=> bs!1164304 m!5815986))

(assert (=> bs!1164304 m!5815986))

(assert (=> bs!1164304 m!5815988))

(assert (=> d!1546178 d!1546466))

(declare-fun d!1546480 () Bool)

(declare-fun res!2054883 () Bool)

(declare-fun e!3015769 () Bool)

(assert (=> d!1546480 (=> res!2054883 e!3015769)))

(assert (=> d!1546480 (= res!2054883 ((_ is Nil!54973) (toList!7479 lt!1973030)))))

(assert (=> d!1546480 (= (forall!12608 (toList!7479 lt!1973030) lambda!236742) e!3015769)))

(declare-fun b!4826371 () Bool)

(declare-fun e!3015770 () Bool)

(assert (=> b!4826371 (= e!3015769 e!3015770)))

(declare-fun res!2054884 () Bool)

(assert (=> b!4826371 (=> (not res!2054884) (not e!3015770))))

(assert (=> b!4826371 (= res!2054884 (dynLambda!22218 lambda!236742 (h!61407 (toList!7479 lt!1973030))))))

(declare-fun b!4826372 () Bool)

(assert (=> b!4826372 (= e!3015770 (forall!12608 (t!362593 (toList!7479 lt!1973030)) lambda!236742))))

(assert (= (and d!1546480 (not res!2054883)) b!4826371))

(assert (= (and b!4826371 res!2054884) b!4826372))

(declare-fun b_lambda!189913 () Bool)

(assert (=> (not b_lambda!189913) (not b!4826371)))

(declare-fun m!5817336 () Bool)

(assert (=> b!4826371 m!5817336))

(declare-fun m!5817338 () Bool)

(assert (=> b!4826372 m!5817338))

(assert (=> d!1546178 d!1546480))

(declare-fun d!1546482 () Bool)

(assert (=> d!1546482 (= (invariantList!1813 (toList!7480 lt!1973279)) (noDuplicatedKeys!480 (toList!7480 lt!1973279)))))

(declare-fun bs!1164308 () Bool)

(assert (= bs!1164308 d!1546482))

(declare-fun m!5817340 () Bool)

(assert (=> bs!1164308 m!5817340))

(assert (=> d!1546166 d!1546482))

(declare-fun d!1546484 () Bool)

(declare-fun res!2054885 () Bool)

(declare-fun e!3015771 () Bool)

(assert (=> d!1546484 (=> res!2054885 e!3015771)))

(assert (=> d!1546484 (= res!2054885 ((_ is Nil!54973) (t!362593 (toList!7479 lm!2280))))))

(assert (=> d!1546484 (= (forall!12608 (t!362593 (toList!7479 lm!2280)) lambda!236737) e!3015771)))

(declare-fun b!4826373 () Bool)

(declare-fun e!3015772 () Bool)

(assert (=> b!4826373 (= e!3015771 e!3015772)))

(declare-fun res!2054886 () Bool)

(assert (=> b!4826373 (=> (not res!2054886) (not e!3015772))))

(assert (=> b!4826373 (= res!2054886 (dynLambda!22218 lambda!236737 (h!61407 (t!362593 (toList!7479 lm!2280)))))))

(declare-fun b!4826374 () Bool)

(assert (=> b!4826374 (= e!3015772 (forall!12608 (t!362593 (t!362593 (toList!7479 lm!2280))) lambda!236737))))

(assert (= (and d!1546484 (not res!2054885)) b!4826373))

(assert (= (and b!4826373 res!2054886) b!4826374))

(declare-fun b_lambda!189915 () Bool)

(assert (=> (not b_lambda!189915) (not b!4826373)))

(declare-fun m!5817342 () Bool)

(assert (=> b!4826373 m!5817342))

(declare-fun m!5817344 () Bool)

(assert (=> b!4826374 m!5817344))

(assert (=> d!1546166 d!1546484))

(declare-fun d!1546486 () Bool)

(declare-fun res!2054887 () Bool)

(declare-fun e!3015773 () Bool)

(assert (=> d!1546486 (=> res!2054887 e!3015773)))

(assert (=> d!1546486 (= res!2054887 ((_ is Nil!54972) (toList!7480 lt!1973032)))))

(assert (=> d!1546486 (= (forall!12610 (toList!7480 lt!1973032) (ite c!822316 lambda!236728 lambda!236729)) e!3015773)))

(declare-fun b!4826375 () Bool)

(declare-fun e!3015774 () Bool)

(assert (=> b!4826375 (= e!3015773 e!3015774)))

(declare-fun res!2054888 () Bool)

(assert (=> b!4826375 (=> (not res!2054888) (not e!3015774))))

(assert (=> b!4826375 (= res!2054888 (dynLambda!22220 (ite c!822316 lambda!236728 lambda!236729) (h!61406 (toList!7480 lt!1973032))))))

(declare-fun b!4826376 () Bool)

(assert (=> b!4826376 (= e!3015774 (forall!12610 (t!362592 (toList!7480 lt!1973032)) (ite c!822316 lambda!236728 lambda!236729)))))

(assert (= (and d!1546486 (not res!2054887)) b!4826375))

(assert (= (and b!4826375 res!2054888) b!4826376))

(declare-fun b_lambda!189917 () Bool)

(assert (=> (not b_lambda!189917) (not b!4826375)))

(declare-fun m!5817346 () Bool)

(assert (=> b!4826375 m!5817346))

(declare-fun m!5817348 () Bool)

(assert (=> b!4826376 m!5817348))

(assert (=> bm!336388 d!1546486))

(assert (=> d!1546164 d!1546116))

(assert (=> d!1546164 d!1546158))

(declare-fun d!1546488 () Bool)

(declare-fun e!3015783 () Bool)

(assert (=> d!1546488 (= (contains!18780 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032) key!5428) e!3015783)))

(declare-fun res!2054897 () Bool)

(assert (=> d!1546488 (=> res!2054897 e!3015783)))

(assert (=> d!1546488 (= res!2054897 (containsKey!4371 (_2!32392 (h!61407 (toList!7479 lm!2280))) key!5428))))

(assert (=> d!1546488 true))

(declare-fun _$29!814 () Unit!143029)

(assert (=> d!1546488 (= (choose!35132 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032 key!5428) _$29!814)))

(declare-fun b!4826385 () Bool)

(assert (=> b!4826385 (= e!3015783 (contains!18780 lt!1973032 key!5428))))

(assert (= (and d!1546488 (not res!2054897)) b!4826385))

(assert (=> d!1546488 m!5816014))

(assert (=> d!1546488 m!5816014))

(assert (=> d!1546488 m!5816016))

(assert (=> d!1546488 m!5816022))

(assert (=> b!4826385 m!5815976))

(assert (=> d!1546164 d!1546488))

(assert (=> d!1546164 d!1546162))

(assert (=> d!1546164 d!1546442))

(declare-fun d!1546504 () Bool)

(declare-fun lt!1973665 () Bool)

(assert (=> d!1546504 (= lt!1973665 (select (content!9820 (keys!20227 (extractMap!2680 (toList!7479 lm!2280)))) key!5428))))

(declare-fun e!3015784 () Bool)

(assert (=> d!1546504 (= lt!1973665 e!3015784)))

(declare-fun res!2054899 () Bool)

(assert (=> d!1546504 (=> (not res!2054899) (not e!3015784))))

(assert (=> d!1546504 (= res!2054899 ((_ is Cons!54975) (keys!20227 (extractMap!2680 (toList!7479 lm!2280)))))))

(assert (=> d!1546504 (= (contains!18783 (keys!20227 (extractMap!2680 (toList!7479 lm!2280))) key!5428) lt!1973665)))

(declare-fun b!4826386 () Bool)

(declare-fun e!3015785 () Bool)

(assert (=> b!4826386 (= e!3015784 e!3015785)))

(declare-fun res!2054898 () Bool)

(assert (=> b!4826386 (=> res!2054898 e!3015785)))

(assert (=> b!4826386 (= res!2054898 (= (h!61409 (keys!20227 (extractMap!2680 (toList!7479 lm!2280)))) key!5428))))

(declare-fun b!4826387 () Bool)

(assert (=> b!4826387 (= e!3015785 (contains!18783 (t!362595 (keys!20227 (extractMap!2680 (toList!7479 lm!2280)))) key!5428))))

(assert (= (and d!1546504 res!2054899) b!4826386))

(assert (= (and b!4826386 (not res!2054898)) b!4826387))

(assert (=> d!1546504 m!5816346))

(declare-fun m!5817392 () Bool)

(assert (=> d!1546504 m!5817392))

(declare-fun m!5817394 () Bool)

(assert (=> d!1546504 m!5817394))

(declare-fun m!5817396 () Bool)

(assert (=> b!4826387 m!5817396))

(assert (=> b!4825874 d!1546504))

(assert (=> b!4825874 d!1546398))

(assert (=> b!4825862 d!1546096))

(declare-fun d!1546506 () Bool)

(declare-fun res!2054900 () Bool)

(declare-fun e!3015786 () Bool)

(assert (=> d!1546506 (=> res!2054900 e!3015786)))

(assert (=> d!1546506 (= res!2054900 ((_ is Nil!54972) (toList!7480 lt!1973032)))))

(assert (=> d!1546506 (= (forall!12610 (toList!7480 lt!1973032) (ite c!822316 lambda!236728 lambda!236730)) e!3015786)))

(declare-fun b!4826388 () Bool)

(declare-fun e!3015787 () Bool)

(assert (=> b!4826388 (= e!3015786 e!3015787)))

(declare-fun res!2054901 () Bool)

(assert (=> b!4826388 (=> (not res!2054901) (not e!3015787))))

(assert (=> b!4826388 (= res!2054901 (dynLambda!22220 (ite c!822316 lambda!236728 lambda!236730) (h!61406 (toList!7480 lt!1973032))))))

(declare-fun b!4826389 () Bool)

(assert (=> b!4826389 (= e!3015787 (forall!12610 (t!362592 (toList!7480 lt!1973032)) (ite c!822316 lambda!236728 lambda!236730)))))

(assert (= (and d!1546506 (not res!2054900)) b!4826388))

(assert (= (and b!4826388 res!2054901) b!4826389))

(declare-fun b_lambda!189923 () Bool)

(assert (=> (not b_lambda!189923) (not b!4826388)))

(declare-fun m!5817398 () Bool)

(assert (=> b!4826388 m!5817398))

(declare-fun m!5817400 () Bool)

(assert (=> b!4826389 m!5817400))

(assert (=> bm!336386 d!1546506))

(assert (=> b!4825856 d!1546312))

(assert (=> b!4825856 d!1546274))

(declare-fun d!1546508 () Bool)

(declare-fun res!2054902 () Bool)

(declare-fun e!3015788 () Bool)

(assert (=> d!1546508 (=> res!2054902 e!3015788)))

(assert (=> d!1546508 (= res!2054902 ((_ is Nil!54972) (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(assert (=> d!1546508 (= (forall!12610 (_2!32392 (h!61407 (toList!7479 lm!2280))) lambda!236731) e!3015788)))

(declare-fun b!4826390 () Bool)

(declare-fun e!3015789 () Bool)

(assert (=> b!4826390 (= e!3015788 e!3015789)))

(declare-fun res!2054903 () Bool)

(assert (=> b!4826390 (=> (not res!2054903) (not e!3015789))))

(assert (=> b!4826390 (= res!2054903 (dynLambda!22220 lambda!236731 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun b!4826391 () Bool)

(assert (=> b!4826391 (= e!3015789 (forall!12610 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) lambda!236731))))

(assert (= (and d!1546508 (not res!2054902)) b!4826390))

(assert (= (and b!4826390 res!2054903) b!4826391))

(declare-fun b_lambda!189925 () Bool)

(assert (=> (not b_lambda!189925) (not b!4826390)))

(declare-fun m!5817402 () Bool)

(assert (=> b!4826390 m!5817402))

(declare-fun m!5817404 () Bool)

(assert (=> b!4826391 m!5817404))

(assert (=> d!1546116 d!1546508))

(assert (=> d!1546116 d!1546442))

(declare-fun d!1546510 () Bool)

(assert (=> d!1546510 (= (isDefined!10611 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428)) (not (isEmpty!29657 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))))

(declare-fun bs!1164347 () Bool)

(assert (= bs!1164347 d!1546510))

(assert (=> bs!1164347 m!5816372))

(declare-fun m!5817406 () Bool)

(assert (=> bs!1164347 m!5817406))

(assert (=> b!4825890 d!1546510))

(declare-fun b!4826395 () Bool)

(declare-fun e!3015791 () Option!13496)

(assert (=> b!4826395 (= e!3015791 None!13495)))

(declare-fun d!1546512 () Bool)

(declare-fun c!822426 () Bool)

(assert (=> d!1546512 (= c!822426 (and ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) key!5428)))))

(declare-fun e!3015790 () Option!13496)

(assert (=> d!1546512 (= (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428) e!3015790)))

(declare-fun b!4826392 () Bool)

(assert (=> b!4826392 (= e!3015790 (Some!13495 (_2!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))))))

(declare-fun b!4826394 () Bool)

(assert (=> b!4826394 (= e!3015791 (getValueByKey!2623 (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) key!5428))))

(declare-fun b!4826393 () Bool)

(assert (=> b!4826393 (= e!3015790 e!3015791)))

(declare-fun c!822427 () Bool)

(assert (=> b!4826393 (= c!822427 (and ((_ is Cons!54972) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (not (= (_1!32391 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) key!5428))))))

(assert (= (and d!1546512 c!822426) b!4826392))

(assert (= (and d!1546512 (not c!822426)) b!4826393))

(assert (= (and b!4826393 c!822427) b!4826394))

(assert (= (and b!4826393 (not c!822427)) b!4826395))

(declare-fun m!5817408 () Bool)

(assert (=> b!4826394 m!5817408))

(assert (=> b!4825890 d!1546512))

(declare-fun d!1546514 () Bool)

(declare-fun res!2054908 () Bool)

(declare-fun e!3015796 () Bool)

(assert (=> d!1546514 (=> res!2054908 e!3015796)))

(assert (=> d!1546514 (= res!2054908 (or ((_ is Nil!54973) (toList!7479 lm!2280)) ((_ is Nil!54973) (t!362593 (toList!7479 lm!2280)))))))

(assert (=> d!1546514 (= (isStrictlySorted!986 (toList!7479 lm!2280)) e!3015796)))

(declare-fun b!4826400 () Bool)

(declare-fun e!3015797 () Bool)

(assert (=> b!4826400 (= e!3015796 e!3015797)))

(declare-fun res!2054909 () Bool)

(assert (=> b!4826400 (=> (not res!2054909) (not e!3015797))))

(assert (=> b!4826400 (= res!2054909 (bvslt (_1!32392 (h!61407 (toList!7479 lm!2280))) (_1!32392 (h!61407 (t!362593 (toList!7479 lm!2280))))))))

(declare-fun b!4826401 () Bool)

(assert (=> b!4826401 (= e!3015797 (isStrictlySorted!986 (t!362593 (toList!7479 lm!2280))))))

(assert (= (and d!1546514 (not res!2054908)) b!4826400))

(assert (= (and b!4826400 res!2054909) b!4826401))

(declare-fun m!5817410 () Bool)

(assert (=> b!4826401 m!5817410))

(assert (=> d!1546188 d!1546514))

(declare-fun d!1546516 () Bool)

(assert (=> d!1546516 (isDefined!10611 (getValueByKey!2623 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(declare-fun lt!1973666 () Unit!143029)

(assert (=> d!1546516 (= lt!1973666 (choose!35137 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(assert (=> d!1546516 (invariantList!1813 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))))

(assert (=> d!1546516 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2408 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428) lt!1973666)))

(declare-fun bs!1164348 () Bool)

(assert (= bs!1164348 d!1546516))

(assert (=> bs!1164348 m!5816372))

(assert (=> bs!1164348 m!5816372))

(assert (=> bs!1164348 m!5816374))

(declare-fun m!5817412 () Bool)

(assert (=> bs!1164348 m!5817412))

(assert (=> bs!1164348 m!5816632))

(assert (=> b!4825886 d!1546516))

(assert (=> b!4825886 d!1546510))

(assert (=> b!4825886 d!1546512))

(declare-fun d!1546518 () Bool)

(assert (=> d!1546518 (contains!18783 (getKeysList!1160 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) key!5428)))

(declare-fun lt!1973667 () Unit!143029)

(assert (=> d!1546518 (= lt!1973667 (choose!35138 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428))))

(assert (=> d!1546518 (invariantList!1813 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))))

(assert (=> d!1546518 (= (lemmaInListThenGetKeysListContains!1155 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))) key!5428) lt!1973667)))

(declare-fun bs!1164349 () Bool)

(assert (= bs!1164349 d!1546518))

(assert (=> bs!1164349 m!5816378))

(assert (=> bs!1164349 m!5816378))

(declare-fun m!5817414 () Bool)

(assert (=> bs!1164349 m!5817414))

(declare-fun m!5817416 () Bool)

(assert (=> bs!1164349 m!5817416))

(assert (=> bs!1164349 m!5816632))

(assert (=> b!4825886 d!1546518))

(assert (=> b!4825831 d!1546370))

(declare-fun bs!1164350 () Bool)

(declare-fun b!4826412 () Bool)

(assert (= bs!1164350 (and b!4826412 b!4826248)))

(declare-fun lambda!236854 () Int)

(assert (=> bs!1164350 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))) (= lambda!236854 lambda!236823))))

(declare-fun bs!1164351 () Bool)

(assert (= bs!1164351 (and b!4826412 b!4826255)))

(assert (=> bs!1164351 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (toList!7480 lt!1973032)) (= lambda!236854 lambda!236827))))

(declare-fun bs!1164352 () Bool)

(assert (= bs!1164352 (and b!4826412 b!4826142)))

(assert (=> bs!1164352 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236854 lambda!236799))))

(declare-fun bs!1164353 () Bool)

(assert (= bs!1164353 (and b!4826412 b!4826106)))

(assert (=> bs!1164353 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236854 lambda!236794))))

(declare-fun bs!1164354 () Bool)

(assert (= bs!1164354 (and b!4826412 b!4826250)))

(assert (=> bs!1164354 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236854 lambda!236824))))

(declare-fun bs!1164355 () Bool)

(assert (= bs!1164355 (and b!4826412 b!4826253)))

(assert (=> bs!1164355 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236854 lambda!236822))))

(declare-fun bs!1164356 () Bool)

(assert (= bs!1164356 (and b!4826412 b!4826016)))

(assert (=> bs!1164356 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236854 lambda!236768))))

(declare-fun bs!1164357 () Bool)

(assert (= bs!1164357 (and b!4826412 b!4826019)))

(assert (=> bs!1164357 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236854 lambda!236766))))

(declare-fun bs!1164358 () Bool)

(assert (= bs!1164358 (and b!4826412 b!4826268)))

(assert (=> bs!1164358 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236854 lambda!236830))))

(declare-fun bs!1164359 () Bool)

(assert (= bs!1164359 (and b!4826412 b!4826014)))

(assert (=> bs!1164359 (= (= (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236854 lambda!236767))))

(assert (=> b!4826412 true))

(declare-fun bs!1164360 () Bool)

(declare-fun b!4826407 () Bool)

(assert (= bs!1164360 (and b!4826407 b!4826248)))

(declare-fun lambda!236855 () Int)

(assert (=> bs!1164360 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))) (= lambda!236855 lambda!236823))))

(declare-fun bs!1164361 () Bool)

(assert (= bs!1164361 (and b!4826407 b!4826255)))

(assert (=> bs!1164361 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (toList!7480 lt!1973032)) (= lambda!236855 lambda!236827))))

(declare-fun bs!1164362 () Bool)

(assert (= bs!1164362 (and b!4826407 b!4826142)))

(assert (=> bs!1164362 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236855 lambda!236799))))

(declare-fun bs!1164364 () Bool)

(assert (= bs!1164364 (and b!4826407 b!4826106)))

(assert (=> bs!1164364 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236855 lambda!236794))))

(declare-fun bs!1164365 () Bool)

(assert (= bs!1164365 (and b!4826407 b!4826253)))

(assert (=> bs!1164365 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236855 lambda!236822))))

(declare-fun bs!1164366 () Bool)

(assert (= bs!1164366 (and b!4826407 b!4826016)))

(assert (=> bs!1164366 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236855 lambda!236768))))

(declare-fun bs!1164367 () Bool)

(assert (= bs!1164367 (and b!4826407 b!4826019)))

(assert (=> bs!1164367 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236855 lambda!236766))))

(declare-fun bs!1164368 () Bool)

(assert (= bs!1164368 (and b!4826407 b!4826268)))

(assert (=> bs!1164368 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236855 lambda!236830))))

(declare-fun bs!1164369 () Bool)

(assert (= bs!1164369 (and b!4826407 b!4826014)))

(assert (=> bs!1164369 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236855 lambda!236767))))

(declare-fun bs!1164370 () Bool)

(assert (= bs!1164370 (and b!4826407 b!4826412)))

(assert (=> bs!1164370 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (= lambda!236855 lambda!236854))))

(declare-fun bs!1164371 () Bool)

(assert (= bs!1164371 (and b!4826407 b!4826250)))

(assert (=> bs!1164371 (= (= (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236855 lambda!236824))))

(assert (=> b!4826407 true))

(declare-fun bs!1164372 () Bool)

(declare-fun b!4826409 () Bool)

(assert (= bs!1164372 (and b!4826409 b!4826248)))

(declare-fun lambda!236856 () Int)

(assert (=> bs!1164372 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))) (= lambda!236856 lambda!236823))))

(declare-fun bs!1164374 () Bool)

(assert (= bs!1164374 (and b!4826409 b!4826255)))

(assert (=> bs!1164374 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (toList!7480 lt!1973032)) (= lambda!236856 lambda!236827))))

(declare-fun bs!1164375 () Bool)

(assert (= bs!1164375 (and b!4826409 b!4826142)))

(assert (=> bs!1164375 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236856 lambda!236799))))

(declare-fun bs!1164376 () Bool)

(assert (= bs!1164376 (and b!4826409 b!4826106)))

(assert (=> bs!1164376 (= lambda!236856 lambda!236794)))

(declare-fun bs!1164378 () Bool)

(assert (= bs!1164378 (and b!4826409 b!4826253)))

(assert (=> bs!1164378 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236856 lambda!236822))))

(declare-fun bs!1164379 () Bool)

(assert (= bs!1164379 (and b!4826409 b!4826016)))

(assert (=> bs!1164379 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236856 lambda!236768))))

(declare-fun bs!1164381 () Bool)

(assert (= bs!1164381 (and b!4826409 b!4826019)))

(assert (=> bs!1164381 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236856 lambda!236766))))

(declare-fun bs!1164382 () Bool)

(assert (= bs!1164382 (and b!4826409 b!4826407)))

(assert (=> bs!1164382 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))) (= lambda!236856 lambda!236855))))

(declare-fun bs!1164383 () Bool)

(assert (= bs!1164383 (and b!4826409 b!4826268)))

(assert (=> bs!1164383 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236856 lambda!236830))))

(declare-fun bs!1164385 () Bool)

(assert (= bs!1164385 (and b!4826409 b!4826014)))

(assert (=> bs!1164385 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236856 lambda!236767))))

(declare-fun bs!1164386 () Bool)

(assert (= bs!1164386 (and b!4826409 b!4826412)))

(assert (=> bs!1164386 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (= lambda!236856 lambda!236854))))

(declare-fun bs!1164387 () Bool)

(assert (= bs!1164387 (and b!4826409 b!4826250)))

(assert (=> bs!1164387 (= (= (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236856 lambda!236824))))

(assert (=> b!4826409 true))

(declare-fun bs!1164388 () Bool)

(declare-fun b!4826408 () Bool)

(assert (= bs!1164388 (and b!4826408 b!4826249)))

(declare-fun lambda!236857 () Int)

(assert (=> bs!1164388 (= lambda!236857 lambda!236826)))

(declare-fun bs!1164389 () Bool)

(assert (= bs!1164389 (and b!4826408 b!4826256)))

(assert (=> bs!1164389 (= lambda!236857 lambda!236829)))

(declare-fun bs!1164390 () Bool)

(assert (= bs!1164390 (and b!4826408 b!4826269)))

(assert (=> bs!1164390 (= lambda!236857 lambda!236831)))

(declare-fun bs!1164391 () Bool)

(assert (= bs!1164391 (and b!4826408 b!4826107)))

(assert (=> bs!1164391 (= lambda!236857 lambda!236795)))

(declare-fun bs!1164392 () Bool)

(assert (= bs!1164392 (and b!4826408 b!4826143)))

(assert (=> bs!1164392 (= lambda!236857 lambda!236801)))

(declare-fun bs!1164394 () Bool)

(assert (= bs!1164394 (and b!4826408 b!4826015)))

(assert (=> bs!1164394 (= lambda!236857 lambda!236769)))

(declare-fun b!4826405 () Bool)

(assert (=> b!4826405 false))

(declare-fun e!3015800 () Unit!143029)

(declare-fun Unit!143178 () Unit!143029)

(assert (=> b!4826405 (= e!3015800 Unit!143178)))

(declare-fun b!4826406 () Bool)

(declare-fun e!3015803 () Unit!143029)

(declare-fun Unit!143179 () Unit!143029)

(assert (=> b!4826406 (= e!3015803 Unit!143179)))

(declare-fun e!3015801 () List!55099)

(assert (=> b!4826407 (= e!3015801 (Cons!54975 (_1!32391 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (getKeysList!1160 (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))))

(declare-fun c!822430 () Bool)

(assert (=> b!4826407 (= c!822430 (containsKey!4374 (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (_1!32391 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))))

(declare-fun lt!1973670 () Unit!143029)

(assert (=> b!4826407 (= lt!1973670 e!3015800)))

(declare-fun c!822429 () Bool)

(assert (=> b!4826407 (= c!822429 (contains!18783 (getKeysList!1160 (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (_1!32391 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))))

(declare-fun lt!1973674 () Unit!143029)

(assert (=> b!4826407 (= lt!1973674 e!3015803)))

(declare-fun lt!1973668 () List!55099)

(assert (=> b!4826407 (= lt!1973668 (getKeysList!1160 (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))))))

(declare-fun lt!1973672 () Unit!143029)

(assert (=> b!4826407 (= lt!1973672 (lemmaForallContainsAddHeadPreserves!376 (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) lt!1973668 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))))))

(assert (=> b!4826407 (forall!12612 lt!1973668 lambda!236855)))

(declare-fun lt!1973669 () Unit!143029)

(assert (=> b!4826407 (= lt!1973669 lt!1973672)))

(declare-fun e!3015802 () Bool)

(declare-fun lt!1973673 () List!55099)

(assert (=> b!4826408 (= e!3015802 (= (content!9820 lt!1973673) (content!9820 (map!12581 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)) lambda!236857))))))

(declare-fun d!1546520 () Bool)

(assert (=> d!1546520 e!3015802))

(declare-fun res!2054912 () Bool)

(assert (=> d!1546520 (=> (not res!2054912) (not e!3015802))))

(assert (=> d!1546520 (= res!2054912 (noDuplicate!962 lt!1973673))))

(assert (=> d!1546520 (= lt!1973673 e!3015801)))

(declare-fun c!822428 () Bool)

(assert (=> d!1546520 (= c!822428 ((_ is Cons!54972) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))

(assert (=> d!1546520 (invariantList!1813 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))))

(assert (=> d!1546520 (= (getKeysList!1160 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) lt!1973673)))

(declare-fun b!4826404 () Bool)

(assert (=> b!4826404 (= e!3015801 Nil!54975)))

(declare-fun res!2054913 () Bool)

(assert (=> b!4826409 (=> (not res!2054913) (not e!3015802))))

(assert (=> b!4826409 (= res!2054913 (forall!12612 lt!1973673 lambda!236856))))

(declare-fun b!4826410 () Bool)

(declare-fun res!2054914 () Bool)

(assert (=> b!4826410 (=> (not res!2054914) (not e!3015802))))

(assert (=> b!4826410 (= res!2054914 (= (length!780 lt!1973673) (length!781 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))))))

(declare-fun b!4826411 () Bool)

(declare-fun Unit!143180 () Unit!143029)

(assert (=> b!4826411 (= e!3015800 Unit!143180)))

(assert (=> b!4826412 false))

(declare-fun lt!1973671 () Unit!143029)

(assert (=> b!4826412 (= lt!1973671 (forallContained!4387 (getKeysList!1160 (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) lambda!236854 (_1!32391 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))))))

(declare-fun Unit!143181 () Unit!143029)

(assert (=> b!4826412 (= e!3015803 Unit!143181)))

(assert (= (and d!1546520 c!822428) b!4826407))

(assert (= (and d!1546520 (not c!822428)) b!4826404))

(assert (= (and b!4826407 c!822430) b!4826405))

(assert (= (and b!4826407 (not c!822430)) b!4826411))

(assert (= (and b!4826407 c!822429) b!4826412))

(assert (= (and b!4826407 (not c!822429)) b!4826406))

(assert (= (and d!1546520 res!2054912) b!4826410))

(assert (= (and b!4826410 res!2054914) b!4826409))

(assert (= (and b!4826409 res!2054913) b!4826408))

(declare-fun m!5817448 () Bool)

(assert (=> b!4826410 m!5817448))

(assert (=> b!4826410 m!5816656))

(declare-fun m!5817450 () Bool)

(assert (=> b!4826407 m!5817450))

(declare-fun m!5817452 () Bool)

(assert (=> b!4826407 m!5817452))

(declare-fun m!5817454 () Bool)

(assert (=> b!4826407 m!5817454))

(declare-fun m!5817456 () Bool)

(assert (=> b!4826407 m!5817456))

(assert (=> b!4826407 m!5817454))

(declare-fun m!5817458 () Bool)

(assert (=> b!4826407 m!5817458))

(declare-fun m!5817460 () Bool)

(assert (=> b!4826409 m!5817460))

(assert (=> b!4826412 m!5817454))

(assert (=> b!4826412 m!5817454))

(declare-fun m!5817462 () Bool)

(assert (=> b!4826412 m!5817462))

(declare-fun m!5817464 () Bool)

(assert (=> b!4826408 m!5817464))

(declare-fun m!5817466 () Bool)

(assert (=> b!4826408 m!5817466))

(assert (=> b!4826408 m!5817466))

(declare-fun m!5817468 () Bool)

(assert (=> b!4826408 m!5817468))

(declare-fun m!5817470 () Bool)

(assert (=> d!1546520 m!5817470))

(assert (=> d!1546520 m!5816574))

(assert (=> b!4825854 d!1546520))

(declare-fun d!1546544 () Bool)

(assert (=> d!1546544 (= (tail!9414 (toList!7479 lm!2280)) (t!362593 (toList!7479 lm!2280)))))

(assert (=> d!1546168 d!1546544))

(assert (=> b!4825888 d!1546296))

(declare-fun d!1546546 () Bool)

(declare-fun choose!35149 (Hashable!7266 K!16654) (_ BitVec 64))

(assert (=> d!1546546 (= (hash!5404 hashF!1509 key!5428) (choose!35149 hashF!1509 key!5428))))

(declare-fun bs!1164418 () Bool)

(assert (= bs!1164418 d!1546546))

(declare-fun m!5817472 () Bool)

(assert (=> bs!1164418 m!5817472))

(assert (=> d!1546192 d!1546546))

(declare-fun d!1546548 () Bool)

(declare-fun lt!1973701 () Bool)

(assert (=> d!1546548 (= lt!1973701 (select (content!9820 e!3015427) key!5428))))

(declare-fun e!3015818 () Bool)

(assert (=> d!1546548 (= lt!1973701 e!3015818)))

(declare-fun res!2054930 () Bool)

(assert (=> d!1546548 (=> (not res!2054930) (not e!3015818))))

(assert (=> d!1546548 (= res!2054930 ((_ is Cons!54975) e!3015427))))

(assert (=> d!1546548 (= (contains!18783 e!3015427 key!5428) lt!1973701)))

(declare-fun b!4826429 () Bool)

(declare-fun e!3015819 () Bool)

(assert (=> b!4826429 (= e!3015818 e!3015819)))

(declare-fun res!2054929 () Bool)

(assert (=> b!4826429 (=> res!2054929 e!3015819)))

(assert (=> b!4826429 (= res!2054929 (= (h!61409 e!3015427) key!5428))))

(declare-fun b!4826430 () Bool)

(assert (=> b!4826430 (= e!3015819 (contains!18783 (t!362595 e!3015427) key!5428))))

(assert (= (and d!1546548 res!2054930) b!4826429))

(assert (= (and b!4826429 (not res!2054929)) b!4826430))

(declare-fun m!5817474 () Bool)

(assert (=> d!1546548 m!5817474))

(declare-fun m!5817476 () Bool)

(assert (=> d!1546548 m!5817476))

(declare-fun m!5817478 () Bool)

(assert (=> b!4826430 m!5817478))

(assert (=> bm!336389 d!1546548))

(declare-fun d!1546550 () Bool)

(declare-fun res!2054931 () Bool)

(declare-fun e!3015820 () Bool)

(assert (=> d!1546550 (=> res!2054931 e!3015820)))

(assert (=> d!1546550 (= res!2054931 (and ((_ is Cons!54972) (toList!7480 lt!1973032)) (= (_1!32391 (h!61406 (toList!7480 lt!1973032))) key!5428)))))

(assert (=> d!1546550 (= (containsKey!4374 (toList!7480 lt!1973032) key!5428) e!3015820)))

(declare-fun b!4826431 () Bool)

(declare-fun e!3015821 () Bool)

(assert (=> b!4826431 (= e!3015820 e!3015821)))

(declare-fun res!2054932 () Bool)

(assert (=> b!4826431 (=> (not res!2054932) (not e!3015821))))

(assert (=> b!4826431 (= res!2054932 ((_ is Cons!54972) (toList!7480 lt!1973032)))))

(declare-fun b!4826432 () Bool)

(assert (=> b!4826432 (= e!3015821 (containsKey!4374 (t!362592 (toList!7480 lt!1973032)) key!5428))))

(assert (= (and d!1546550 (not res!2054931)) b!4826431))

(assert (= (and b!4826431 res!2054932) b!4826432))

(declare-fun m!5817480 () Bool)

(assert (=> b!4826432 m!5817480))

(assert (=> b!4825730 d!1546550))

(declare-fun d!1546552 () Bool)

(assert (=> d!1546552 (containsKey!4374 (toList!7480 lt!1973032) key!5428)))

(declare-fun lt!1973702 () Unit!143029)

(assert (=> d!1546552 (= lt!1973702 (choose!35140 (toList!7480 lt!1973032) key!5428))))

(assert (=> d!1546552 (invariantList!1813 (toList!7480 lt!1973032))))

(assert (=> d!1546552 (= (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 lt!1973032) key!5428) lt!1973702)))

(declare-fun bs!1164424 () Bool)

(assert (= bs!1164424 d!1546552))

(assert (=> bs!1164424 m!5816060))

(declare-fun m!5817482 () Bool)

(assert (=> bs!1164424 m!5817482))

(assert (=> bs!1164424 m!5817064))

(assert (=> b!4825730 d!1546552))

(assert (=> d!1546176 d!1546268))

(assert (=> b!4825883 d!1546294))

(assert (=> b!4825883 d!1546296))

(declare-fun d!1546554 () Bool)

(declare-fun res!2054933 () Bool)

(declare-fun e!3015822 () Bool)

(assert (=> d!1546554 (=> res!2054933 e!3015822)))

(assert (=> d!1546554 (= res!2054933 ((_ is Nil!54973) (t!362593 (toList!7479 lm!2280))))))

(assert (=> d!1546554 (= (forall!12608 (t!362593 (toList!7479 lm!2280)) lambda!236652) e!3015822)))

(declare-fun b!4826433 () Bool)

(declare-fun e!3015823 () Bool)

(assert (=> b!4826433 (= e!3015822 e!3015823)))

(declare-fun res!2054934 () Bool)

(assert (=> b!4826433 (=> (not res!2054934) (not e!3015823))))

(assert (=> b!4826433 (= res!2054934 (dynLambda!22218 lambda!236652 (h!61407 (t!362593 (toList!7479 lm!2280)))))))

(declare-fun b!4826434 () Bool)

(assert (=> b!4826434 (= e!3015823 (forall!12608 (t!362593 (t!362593 (toList!7479 lm!2280))) lambda!236652))))

(assert (= (and d!1546554 (not res!2054933)) b!4826433))

(assert (= (and b!4826433 res!2054934) b!4826434))

(declare-fun b_lambda!189931 () Bool)

(assert (=> (not b_lambda!189931) (not b!4826433)))

(declare-fun m!5817484 () Bool)

(assert (=> b!4826433 m!5817484))

(declare-fun m!5817486 () Bool)

(assert (=> b!4826434 m!5817486))

(assert (=> b!4825896 d!1546554))

(assert (=> b!4825880 d!1546458))

(declare-fun d!1546556 () Bool)

(assert (=> d!1546556 (containsKey!4374 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428)))

(declare-fun lt!1973703 () Unit!143029)

(assert (=> d!1546556 (= lt!1973703 (choose!35140 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428))))

(assert (=> d!1546556 (invariantList!1813 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))))

(assert (=> d!1546556 (= (lemmaInGetKeysListThenContainsKey!1160 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))) key!5428) lt!1973703)))

(declare-fun bs!1164425 () Bool)

(assert (= bs!1164425 d!1546556))

(assert (=> bs!1164425 m!5816350))

(declare-fun m!5817488 () Bool)

(assert (=> bs!1164425 m!5817488))

(assert (=> bs!1164425 m!5816554))

(assert (=> b!4825880 d!1546556))

(declare-fun d!1546558 () Bool)

(assert (=> d!1546558 (= (get!18824 (getValueByKey!2624 (toList!7479 lm!2280) lt!1973034)) (v!49177 (getValueByKey!2624 (toList!7479 lm!2280) lt!1973034)))))

(assert (=> d!1546198 d!1546558))

(assert (=> d!1546198 d!1546214))

(assert (=> d!1546096 d!1546550))

(assert (=> d!1546160 d!1546156))

(assert (=> d!1546160 d!1546108))

(declare-fun d!1546560 () Bool)

(assert (=> d!1546560 (not (containsKey!4371 (apply!13353 lm!2280 (_1!32392 (h!61407 (toList!7479 lm!2280)))) key!5428))))

(assert (=> d!1546560 true))

(declare-fun _$39!442 () Unit!143029)

(assert (=> d!1546560 (= (choose!35131 lm!2280 key!5428 (_1!32392 (h!61407 (toList!7479 lm!2280))) hashF!1509) _$39!442)))

(declare-fun bs!1164426 () Bool)

(assert (= bs!1164426 d!1546560))

(assert (=> bs!1164426 m!5816008))

(assert (=> bs!1164426 m!5816008))

(assert (=> bs!1164426 m!5816012))

(assert (=> d!1546160 d!1546560))

(declare-fun d!1546562 () Bool)

(declare-fun res!2054935 () Bool)

(declare-fun e!3015824 () Bool)

(assert (=> d!1546562 (=> res!2054935 e!3015824)))

(assert (=> d!1546562 (= res!2054935 ((_ is Nil!54973) (toList!7479 lm!2280)))))

(assert (=> d!1546562 (= (forall!12608 (toList!7479 lm!2280) lambda!236734) e!3015824)))

(declare-fun b!4826435 () Bool)

(declare-fun e!3015825 () Bool)

(assert (=> b!4826435 (= e!3015824 e!3015825)))

(declare-fun res!2054936 () Bool)

(assert (=> b!4826435 (=> (not res!2054936) (not e!3015825))))

(assert (=> b!4826435 (= res!2054936 (dynLambda!22218 lambda!236734 (h!61407 (toList!7479 lm!2280))))))

(declare-fun b!4826436 () Bool)

(assert (=> b!4826436 (= e!3015825 (forall!12608 (t!362593 (toList!7479 lm!2280)) lambda!236734))))

(assert (= (and d!1546562 (not res!2054935)) b!4826435))

(assert (= (and b!4826435 res!2054936) b!4826436))

(declare-fun b_lambda!189933 () Bool)

(assert (=> (not b_lambda!189933) (not b!4826435)))

(declare-fun m!5817490 () Bool)

(assert (=> b!4826435 m!5817490))

(declare-fun m!5817492 () Bool)

(assert (=> b!4826436 m!5817492))

(assert (=> d!1546160 d!1546562))

(declare-fun d!1546564 () Bool)

(declare-fun res!2054937 () Bool)

(declare-fun e!3015826 () Bool)

(assert (=> d!1546564 (=> res!2054937 e!3015826)))

(assert (=> d!1546564 (= res!2054937 (not ((_ is Cons!54972) (_2!32392 (h!61407 (toList!7479 lt!1973030))))))))

(assert (=> d!1546564 (= (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lt!1973030)))) e!3015826)))

(declare-fun b!4826437 () Bool)

(declare-fun e!3015827 () Bool)

(assert (=> b!4826437 (= e!3015826 e!3015827)))

(declare-fun res!2054938 () Bool)

(assert (=> b!4826437 (=> (not res!2054938) (not e!3015827))))

(assert (=> b!4826437 (= res!2054938 (not (containsKey!4371 (t!362592 (_2!32392 (h!61407 (toList!7479 lt!1973030)))) (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lt!1973030))))))))))

(declare-fun b!4826438 () Bool)

(assert (=> b!4826438 (= e!3015827 (noDuplicateKeys!2452 (t!362592 (_2!32392 (h!61407 (toList!7479 lt!1973030))))))))

(assert (= (and d!1546564 (not res!2054937)) b!4826437))

(assert (= (and b!4826437 res!2054938) b!4826438))

(declare-fun m!5817494 () Bool)

(assert (=> b!4826437 m!5817494))

(declare-fun m!5817496 () Bool)

(assert (=> b!4826438 m!5817496))

(assert (=> bs!1163903 d!1546564))

(assert (=> b!4825728 d!1546444))

(assert (=> b!4825728 d!1546376))

(declare-fun d!1546566 () Bool)

(declare-fun res!2054939 () Bool)

(declare-fun e!3015828 () Bool)

(assert (=> d!1546566 (=> res!2054939 e!3015828)))

(assert (=> d!1546566 (= res!2054939 (and ((_ is Cons!54972) (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (= (_1!32391 (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) key!5428)))))

(assert (=> d!1546566 (= (containsKey!4371 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))) key!5428) e!3015828)))

(declare-fun b!4826439 () Bool)

(declare-fun e!3015829 () Bool)

(assert (=> b!4826439 (= e!3015828 e!3015829)))

(declare-fun res!2054940 () Bool)

(assert (=> b!4826439 (=> (not res!2054940) (not e!3015829))))

(assert (=> b!4826439 (= res!2054940 ((_ is Cons!54972) (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))

(declare-fun b!4826440 () Bool)

(assert (=> b!4826440 (= e!3015829 (containsKey!4371 (t!362592 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))) key!5428))))

(assert (= (and d!1546566 (not res!2054939)) b!4826439))

(assert (= (and b!4826439 res!2054940) b!4826440))

(declare-fun m!5817498 () Bool)

(assert (=> b!4826440 m!5817498))

(assert (=> b!4825850 d!1546566))

(declare-fun d!1546568 () Bool)

(declare-fun lt!1973704 () Bool)

(assert (=> d!1546568 (= lt!1973704 (select (content!9820 e!3015335) key!5428))))

(declare-fun e!3015830 () Bool)

(assert (=> d!1546568 (= lt!1973704 e!3015830)))

(declare-fun res!2054942 () Bool)

(assert (=> d!1546568 (=> (not res!2054942) (not e!3015830))))

(assert (=> d!1546568 (= res!2054942 ((_ is Cons!54975) e!3015335))))

(assert (=> d!1546568 (= (contains!18783 e!3015335 key!5428) lt!1973704)))

(declare-fun b!4826441 () Bool)

(declare-fun e!3015831 () Bool)

(assert (=> b!4826441 (= e!3015830 e!3015831)))

(declare-fun res!2054941 () Bool)

(assert (=> b!4826441 (=> res!2054941 e!3015831)))

(assert (=> b!4826441 (= res!2054941 (= (h!61409 e!3015335) key!5428))))

(declare-fun b!4826442 () Bool)

(assert (=> b!4826442 (= e!3015831 (contains!18783 (t!362595 e!3015335) key!5428))))

(assert (= (and d!1546568 res!2054942) b!4826441))

(assert (= (and b!4826441 (not res!2054941)) b!4826442))

(declare-fun m!5817500 () Bool)

(assert (=> d!1546568 m!5817500))

(declare-fun m!5817502 () Bool)

(assert (=> d!1546568 m!5817502))

(declare-fun m!5817504 () Bool)

(assert (=> b!4826442 m!5817504))

(assert (=> bm!336366 d!1546568))

(assert (=> b!4825878 d!1546504))

(assert (=> b!4825878 d!1546398))

(declare-fun bs!1164437 () Bool)

(declare-fun b!4826451 () Bool)

(assert (= bs!1164437 (and b!4826451 b!4826248)))

(declare-fun lambda!236862 () Int)

(assert (=> bs!1164437 (= (= (t!362592 (toList!7480 lt!1973032)) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))) (= lambda!236862 lambda!236823))))

(declare-fun bs!1164439 () Bool)

(assert (= bs!1164439 (and b!4826451 b!4826255)))

(assert (=> bs!1164439 (= (= (t!362592 (toList!7480 lt!1973032)) (toList!7480 lt!1973032)) (= lambda!236862 lambda!236827))))

(declare-fun bs!1164441 () Bool)

(assert (= bs!1164441 (and b!4826451 b!4826142)))

(assert (=> bs!1164441 (= (= (t!362592 (toList!7480 lt!1973032)) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236862 lambda!236799))))

(declare-fun bs!1164443 () Bool)

(assert (= bs!1164443 (and b!4826451 b!4826409)))

(assert (=> bs!1164443 (= (= (t!362592 (toList!7480 lt!1973032)) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236862 lambda!236856))))

(declare-fun bs!1164444 () Bool)

(assert (= bs!1164444 (and b!4826451 b!4826106)))

(assert (=> bs!1164444 (= (= (t!362592 (toList!7480 lt!1973032)) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236862 lambda!236794))))

(declare-fun bs!1164446 () Bool)

(assert (= bs!1164446 (and b!4826451 b!4826253)))

(assert (=> bs!1164446 (= (= (t!362592 (toList!7480 lt!1973032)) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236862 lambda!236822))))

(declare-fun bs!1164448 () Bool)

(assert (= bs!1164448 (and b!4826451 b!4826016)))

(assert (=> bs!1164448 (= (= (t!362592 (toList!7480 lt!1973032)) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236862 lambda!236768))))

(declare-fun bs!1164449 () Bool)

(assert (= bs!1164449 (and b!4826451 b!4826019)))

(assert (=> bs!1164449 (= (= (t!362592 (toList!7480 lt!1973032)) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236862 lambda!236766))))

(declare-fun bs!1164451 () Bool)

(assert (= bs!1164451 (and b!4826451 b!4826407)))

(assert (=> bs!1164451 (= (= (t!362592 (toList!7480 lt!1973032)) (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))) (= lambda!236862 lambda!236855))))

(declare-fun bs!1164452 () Bool)

(assert (= bs!1164452 (and b!4826451 b!4826268)))

(assert (=> bs!1164452 (= (= (t!362592 (toList!7480 lt!1973032)) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236862 lambda!236830))))

(declare-fun bs!1164453 () Bool)

(assert (= bs!1164453 (and b!4826451 b!4826014)))

(assert (=> bs!1164453 (= (= (t!362592 (toList!7480 lt!1973032)) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236862 lambda!236767))))

(declare-fun bs!1164454 () Bool)

(assert (= bs!1164454 (and b!4826451 b!4826412)))

(assert (=> bs!1164454 (= (= (t!362592 (toList!7480 lt!1973032)) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (= lambda!236862 lambda!236854))))

(declare-fun bs!1164455 () Bool)

(assert (= bs!1164455 (and b!4826451 b!4826250)))

(assert (=> bs!1164455 (= (= (t!362592 (toList!7480 lt!1973032)) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236862 lambda!236824))))

(assert (=> b!4826451 true))

(declare-fun bs!1164456 () Bool)

(declare-fun b!4826446 () Bool)

(assert (= bs!1164456 (and b!4826446 b!4826248)))

(declare-fun lambda!236863 () Int)

(assert (=> bs!1164456 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))) (= lambda!236863 lambda!236823))))

(declare-fun bs!1164457 () Bool)

(assert (= bs!1164457 (and b!4826446 b!4826255)))

(assert (=> bs!1164457 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (toList!7480 lt!1973032)) (= lambda!236863 lambda!236827))))

(declare-fun bs!1164458 () Bool)

(assert (= bs!1164458 (and b!4826446 b!4826142)))

(assert (=> bs!1164458 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236863 lambda!236799))))

(declare-fun bs!1164459 () Bool)

(assert (= bs!1164459 (and b!4826446 b!4826409)))

(assert (=> bs!1164459 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236863 lambda!236856))))

(declare-fun bs!1164460 () Bool)

(assert (= bs!1164460 (and b!4826446 b!4826106)))

(assert (=> bs!1164460 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236863 lambda!236794))))

(declare-fun bs!1164461 () Bool)

(assert (= bs!1164461 (and b!4826446 b!4826253)))

(assert (=> bs!1164461 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236863 lambda!236822))))

(declare-fun bs!1164462 () Bool)

(assert (= bs!1164462 (and b!4826446 b!4826016)))

(assert (=> bs!1164462 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236863 lambda!236768))))

(declare-fun bs!1164463 () Bool)

(assert (= bs!1164463 (and b!4826446 b!4826019)))

(assert (=> bs!1164463 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236863 lambda!236766))))

(declare-fun bs!1164464 () Bool)

(assert (= bs!1164464 (and b!4826446 b!4826451)))

(assert (=> bs!1164464 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (t!362592 (toList!7480 lt!1973032))) (= lambda!236863 lambda!236862))))

(declare-fun bs!1164465 () Bool)

(assert (= bs!1164465 (and b!4826446 b!4826407)))

(assert (=> bs!1164465 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))) (= lambda!236863 lambda!236855))))

(declare-fun bs!1164466 () Bool)

(assert (= bs!1164466 (and b!4826446 b!4826268)))

(assert (=> bs!1164466 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236863 lambda!236830))))

(declare-fun bs!1164467 () Bool)

(assert (= bs!1164467 (and b!4826446 b!4826014)))

(assert (=> bs!1164467 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236863 lambda!236767))))

(declare-fun bs!1164468 () Bool)

(assert (= bs!1164468 (and b!4826446 b!4826412)))

(assert (=> bs!1164468 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (= lambda!236863 lambda!236854))))

(declare-fun bs!1164469 () Bool)

(assert (= bs!1164469 (and b!4826446 b!4826250)))

(assert (=> bs!1164469 (= (= (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032))) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236863 lambda!236824))))

(assert (=> b!4826446 true))

(declare-fun bs!1164470 () Bool)

(declare-fun b!4826448 () Bool)

(assert (= bs!1164470 (and b!4826448 b!4826446)))

(declare-fun lambda!236864 () Int)

(assert (=> bs!1164470 (= (= (toList!7480 lt!1973032) (Cons!54972 (h!61406 (toList!7480 lt!1973032)) (t!362592 (toList!7480 lt!1973032)))) (= lambda!236864 lambda!236863))))

(declare-fun bs!1164471 () Bool)

(assert (= bs!1164471 (and b!4826448 b!4826248)))

(assert (=> bs!1164471 (= (= (toList!7480 lt!1973032) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))))) (= lambda!236864 lambda!236823))))

(declare-fun bs!1164472 () Bool)

(assert (= bs!1164472 (and b!4826448 b!4826255)))

(assert (=> bs!1164472 (= lambda!236864 lambda!236827)))

(declare-fun bs!1164473 () Bool)

(assert (= bs!1164473 (and b!4826448 b!4826142)))

(assert (=> bs!1164473 (= (= (toList!7480 lt!1973032) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236864 lambda!236799))))

(declare-fun bs!1164474 () Bool)

(assert (= bs!1164474 (and b!4826448 b!4826409)))

(assert (=> bs!1164474 (= (= (toList!7480 lt!1973032) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236864 lambda!236856))))

(declare-fun bs!1164476 () Bool)

(assert (= bs!1164476 (and b!4826448 b!4826106)))

(assert (=> bs!1164476 (= (= (toList!7480 lt!1973032) (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (= lambda!236864 lambda!236794))))

(declare-fun bs!1164477 () Bool)

(assert (= bs!1164477 (and b!4826448 b!4826253)))

(assert (=> bs!1164477 (= (= (toList!7480 lt!1973032) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lt!1973030))))) (= lambda!236864 lambda!236822))))

(declare-fun bs!1164479 () Bool)

(assert (= bs!1164479 (and b!4826448 b!4826016)))

(assert (=> bs!1164479 (= (= (toList!7480 lt!1973032) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236864 lambda!236768))))

(declare-fun bs!1164481 () Bool)

(assert (= bs!1164481 (and b!4826448 b!4826019)))

(assert (=> bs!1164481 (= (= (toList!7480 lt!1973032) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280))))) (= lambda!236864 lambda!236766))))

(declare-fun bs!1164483 () Bool)

(assert (= bs!1164483 (and b!4826448 b!4826451)))

(assert (=> bs!1164483 (= (= (toList!7480 lt!1973032) (t!362592 (toList!7480 lt!1973032))) (= lambda!236864 lambda!236862))))

(declare-fun bs!1164485 () Bool)

(assert (= bs!1164485 (and b!4826448 b!4826407)))

(assert (=> bs!1164485 (= (= (toList!7480 lt!1973032) (Cons!54972 (h!61406 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032))))) (= lambda!236864 lambda!236855))))

(declare-fun bs!1164486 () Bool)

(assert (= bs!1164486 (and b!4826448 b!4826268)))

(assert (=> bs!1164486 (= (= (toList!7480 lt!1973032) (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (= lambda!236864 lambda!236830))))

(declare-fun bs!1164488 () Bool)

(assert (= bs!1164488 (and b!4826448 b!4826014)))

(assert (=> bs!1164488 (= (= (toList!7480 lt!1973032) (Cons!54972 (h!61406 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))) (t!362592 (toList!7480 (extractMap!2680 (toList!7479 lm!2280)))))) (= lambda!236864 lambda!236767))))

(declare-fun bs!1164490 () Bool)

(assert (= bs!1164490 (and b!4826448 b!4826412)))

(assert (=> bs!1164490 (= (= (toList!7480 lt!1973032) (t!362592 (toList!7480 (addToMapMapFromBucket!1798 (_2!32392 (h!61407 (toList!7479 lm!2280))) lt!1973032)))) (= lambda!236864 lambda!236854))))

(declare-fun bs!1164492 () Bool)

(assert (= bs!1164492 (and b!4826448 b!4826250)))

(assert (=> bs!1164492 (= (= (toList!7480 lt!1973032) (toList!7480 (extractMap!2680 (toList!7479 lt!1973030)))) (= lambda!236864 lambda!236824))))

(assert (=> b!4826448 true))

(declare-fun bs!1164494 () Bool)

(declare-fun b!4826447 () Bool)

(assert (= bs!1164494 (and b!4826447 b!4826249)))

(declare-fun lambda!236866 () Int)

(assert (=> bs!1164494 (= lambda!236866 lambda!236826)))

(declare-fun bs!1164495 () Bool)

(assert (= bs!1164495 (and b!4826447 b!4826256)))

(assert (=> bs!1164495 (= lambda!236866 lambda!236829)))

(declare-fun bs!1164496 () Bool)

(assert (= bs!1164496 (and b!4826447 b!4826269)))

(assert (=> bs!1164496 (= lambda!236866 lambda!236831)))

(declare-fun bs!1164497 () Bool)

(assert (= bs!1164497 (and b!4826447 b!4826107)))

(assert (=> bs!1164497 (= lambda!236866 lambda!236795)))

(declare-fun bs!1164498 () Bool)

(assert (= bs!1164498 (and b!4826447 b!4826408)))

(assert (=> bs!1164498 (= lambda!236866 lambda!236857)))

(declare-fun bs!1164499 () Bool)

(assert (= bs!1164499 (and b!4826447 b!4826143)))

(assert (=> bs!1164499 (= lambda!236866 lambda!236801)))

(declare-fun bs!1164500 () Bool)

(assert (= bs!1164500 (and b!4826447 b!4826015)))

(assert (=> bs!1164500 (= lambda!236866 lambda!236769)))

(declare-fun b!4826444 () Bool)

(assert (=> b!4826444 false))

(declare-fun e!3015832 () Unit!143029)

(declare-fun Unit!143192 () Unit!143029)

(assert (=> b!4826444 (= e!3015832 Unit!143192)))

(declare-fun b!4826445 () Bool)

(declare-fun e!3015835 () Unit!143029)

(declare-fun Unit!143193 () Unit!143029)

(assert (=> b!4826445 (= e!3015835 Unit!143193)))

(declare-fun e!3015833 () List!55099)

(assert (=> b!4826446 (= e!3015833 (Cons!54975 (_1!32391 (h!61406 (toList!7480 lt!1973032))) (getKeysList!1160 (t!362592 (toList!7480 lt!1973032)))))))

(declare-fun c!822434 () Bool)

(assert (=> b!4826446 (= c!822434 (containsKey!4374 (t!362592 (toList!7480 lt!1973032)) (_1!32391 (h!61406 (toList!7480 lt!1973032)))))))

(declare-fun lt!1973707 () Unit!143029)

(assert (=> b!4826446 (= lt!1973707 e!3015832)))

(declare-fun c!822433 () Bool)

(assert (=> b!4826446 (= c!822433 (contains!18783 (getKeysList!1160 (t!362592 (toList!7480 lt!1973032))) (_1!32391 (h!61406 (toList!7480 lt!1973032)))))))

(declare-fun lt!1973711 () Unit!143029)

(assert (=> b!4826446 (= lt!1973711 e!3015835)))

(declare-fun lt!1973705 () List!55099)

(assert (=> b!4826446 (= lt!1973705 (getKeysList!1160 (t!362592 (toList!7480 lt!1973032))))))

(declare-fun lt!1973709 () Unit!143029)

(assert (=> b!4826446 (= lt!1973709 (lemmaForallContainsAddHeadPreserves!376 (t!362592 (toList!7480 lt!1973032)) lt!1973705 (h!61406 (toList!7480 lt!1973032))))))

(assert (=> b!4826446 (forall!12612 lt!1973705 lambda!236863)))

(declare-fun lt!1973706 () Unit!143029)

(assert (=> b!4826446 (= lt!1973706 lt!1973709)))

(declare-fun lt!1973710 () List!55099)

(declare-fun e!3015834 () Bool)

(assert (=> b!4826447 (= e!3015834 (= (content!9820 lt!1973710) (content!9820 (map!12581 (toList!7480 lt!1973032) lambda!236866))))))

(declare-fun d!1546570 () Bool)

(assert (=> d!1546570 e!3015834))

(declare-fun res!2054943 () Bool)

(assert (=> d!1546570 (=> (not res!2054943) (not e!3015834))))

(assert (=> d!1546570 (= res!2054943 (noDuplicate!962 lt!1973710))))

(assert (=> d!1546570 (= lt!1973710 e!3015833)))

(declare-fun c!822432 () Bool)

(assert (=> d!1546570 (= c!822432 ((_ is Cons!54972) (toList!7480 lt!1973032)))))

(assert (=> d!1546570 (invariantList!1813 (toList!7480 lt!1973032))))

(assert (=> d!1546570 (= (getKeysList!1160 (toList!7480 lt!1973032)) lt!1973710)))

(declare-fun b!4826443 () Bool)

(assert (=> b!4826443 (= e!3015833 Nil!54975)))

(declare-fun res!2054944 () Bool)

(assert (=> b!4826448 (=> (not res!2054944) (not e!3015834))))

(assert (=> b!4826448 (= res!2054944 (forall!12612 lt!1973710 lambda!236864))))

(declare-fun b!4826449 () Bool)

(declare-fun res!2054945 () Bool)

(assert (=> b!4826449 (=> (not res!2054945) (not e!3015834))))

(assert (=> b!4826449 (= res!2054945 (= (length!780 lt!1973710) (length!781 (toList!7480 lt!1973032))))))

(declare-fun b!4826450 () Bool)

(declare-fun Unit!143195 () Unit!143029)

(assert (=> b!4826450 (= e!3015832 Unit!143195)))

(assert (=> b!4826451 false))

(declare-fun lt!1973708 () Unit!143029)

(assert (=> b!4826451 (= lt!1973708 (forallContained!4387 (getKeysList!1160 (t!362592 (toList!7480 lt!1973032))) lambda!236862 (_1!32391 (h!61406 (toList!7480 lt!1973032)))))))

(declare-fun Unit!143196 () Unit!143029)

(assert (=> b!4826451 (= e!3015835 Unit!143196)))

(assert (= (and d!1546570 c!822432) b!4826446))

(assert (= (and d!1546570 (not c!822432)) b!4826443))

(assert (= (and b!4826446 c!822434) b!4826444))

(assert (= (and b!4826446 (not c!822434)) b!4826450))

(assert (= (and b!4826446 c!822433) b!4826451))

(assert (= (and b!4826446 (not c!822433)) b!4826445))

(assert (= (and d!1546570 res!2054943) b!4826449))

(assert (= (and b!4826449 res!2054945) b!4826448))

(assert (= (and b!4826448 res!2054944) b!4826447))

(declare-fun m!5817558 () Bool)

(assert (=> b!4826449 m!5817558))

(assert (=> b!4826449 m!5817030))

(declare-fun m!5817560 () Bool)

(assert (=> b!4826446 m!5817560))

(declare-fun m!5817562 () Bool)

(assert (=> b!4826446 m!5817562))

(declare-fun m!5817564 () Bool)

(assert (=> b!4826446 m!5817564))

(declare-fun m!5817566 () Bool)

(assert (=> b!4826446 m!5817566))

(assert (=> b!4826446 m!5817564))

(declare-fun m!5817570 () Bool)

(assert (=> b!4826446 m!5817570))

(declare-fun m!5817574 () Bool)

(assert (=> b!4826448 m!5817574))

(assert (=> b!4826451 m!5817564))

(assert (=> b!4826451 m!5817564))

(declare-fun m!5817576 () Bool)

(assert (=> b!4826451 m!5817576))

(declare-fun m!5817578 () Bool)

(assert (=> b!4826447 m!5817578))

(declare-fun m!5817580 () Bool)

(assert (=> b!4826447 m!5817580))

(assert (=> b!4826447 m!5817580))

(declare-fun m!5817582 () Bool)

(assert (=> b!4826447 m!5817582))

(declare-fun m!5817584 () Bool)

(assert (=> d!1546570 m!5817584))

(assert (=> d!1546570 m!5817064))

(assert (=> b!4825726 d!1546570))

(declare-fun tp!1362601 () Bool)

(declare-fun e!3015843 () Bool)

(declare-fun b!4826462 () Bool)

(declare-fun tp_is_empty!34461 () Bool)

(assert (=> b!4826462 (= e!3015843 (and tp_is_empty!34459 tp_is_empty!34461 tp!1362601))))

(assert (=> b!4825915 (= tp!1362597 e!3015843)))

(assert (= (and b!4825915 ((_ is Cons!54972) (_2!32392 (h!61407 (toList!7479 lm!2280))))) b!4826462))

(declare-fun b!4826463 () Bool)

(declare-fun e!3015844 () Bool)

(declare-fun tp!1362602 () Bool)

(declare-fun tp!1362603 () Bool)

(assert (=> b!4826463 (= e!3015844 (and tp!1362602 tp!1362603))))

(assert (=> b!4825915 (= tp!1362598 e!3015844)))

(assert (= (and b!4825915 ((_ is Cons!54973) (t!362593 (toList!7479 lm!2280)))) b!4826463))

(declare-fun b_lambda!189939 () Bool)

(assert (= b_lambda!189881 (or b!4825830 b_lambda!189939)))

(declare-fun bs!1164504 () Bool)

(declare-fun d!1546588 () Bool)

(assert (= bs!1164504 (and d!1546588 b!4825830)))

(assert (=> bs!1164504 (= (dynLambda!22220 lambda!236730 (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280)))))) (contains!18780 lt!1973262 (_1!32391 (h!61406 (t!362592 (_2!32392 (h!61407 (toList!7479 lm!2280))))))))))

(declare-fun m!5817590 () Bool)

(assert (=> bs!1164504 m!5817590))

(assert (=> b!4826164 d!1546588))

(declare-fun b_lambda!189941 () Bool)

(assert (= b_lambda!189925 (or d!1546116 b_lambda!189941)))

(declare-fun bs!1164505 () Bool)

(declare-fun d!1546590 () Bool)

(assert (= bs!1164505 (and d!1546590 d!1546116)))

(assert (=> bs!1164505 (= (dynLambda!22220 lambda!236731 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (contains!18780 lt!1973257 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(declare-fun m!5817592 () Bool)

(assert (=> bs!1164505 m!5817592))

(assert (=> b!4826390 d!1546590))

(declare-fun b_lambda!189943 () Bool)

(assert (= b_lambda!189875 (or d!1546116 b_lambda!189943)))

(declare-fun bs!1164506 () Bool)

(declare-fun d!1546592 () Bool)

(assert (= bs!1164506 (and d!1546592 d!1546116)))

(assert (=> bs!1164506 (= (dynLambda!22220 lambda!236731 (h!61406 (toList!7480 lt!1973032))) (contains!18780 lt!1973257 (_1!32391 (h!61406 (toList!7480 lt!1973032)))))))

(declare-fun m!5817594 () Bool)

(assert (=> bs!1164506 m!5817594))

(assert (=> b!4826137 d!1546592))

(declare-fun b_lambda!189945 () Bool)

(assert (= b_lambda!189895 (or start!500676 b_lambda!189945)))

(declare-fun bs!1164507 () Bool)

(declare-fun d!1546594 () Bool)

(assert (= bs!1164507 (and d!1546594 start!500676)))

(assert (=> bs!1164507 (= (dynLambda!22218 lambda!236652 (h!61407 (t!362593 (toList!7479 lt!1973030)))) (noDuplicateKeys!2452 (_2!32392 (h!61407 (t!362593 (toList!7479 lt!1973030))))))))

(declare-fun m!5817596 () Bool)

(assert (=> bs!1164507 m!5817596))

(assert (=> b!4826278 d!1546594))

(declare-fun b_lambda!189947 () Bool)

(assert (= b_lambda!189889 (or b!4825830 b_lambda!189947)))

(declare-fun bs!1164508 () Bool)

(declare-fun d!1546596 () Bool)

(assert (= bs!1164508 (and d!1546596 b!4825830)))

(assert (=> bs!1164508 (= (dynLambda!22220 lambda!236730 (h!61406 (toList!7480 lt!1973032))) (contains!18780 lt!1973262 (_1!32391 (h!61406 (toList!7480 lt!1973032)))))))

(declare-fun m!5817598 () Bool)

(assert (=> bs!1164508 m!5817598))

(assert (=> b!4826234 d!1546596))

(declare-fun b_lambda!189949 () Bool)

(assert (= b_lambda!189913 (or d!1546178 b_lambda!189949)))

(declare-fun bs!1164509 () Bool)

(declare-fun d!1546598 () Bool)

(assert (= bs!1164509 (and d!1546598 d!1546178)))

(assert (=> bs!1164509 (= (dynLambda!22218 lambda!236742 (h!61407 (toList!7479 lt!1973030))) (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lt!1973030)))))))

(assert (=> bs!1164509 m!5816426))

(assert (=> b!4826371 d!1546598))

(declare-fun b_lambda!189951 () Bool)

(assert (= b_lambda!189883 (or b!4825830 b_lambda!189951)))

(declare-fun bs!1164510 () Bool)

(declare-fun d!1546600 () Bool)

(assert (= bs!1164510 (and d!1546600 b!4825830)))

(assert (=> bs!1164510 (= (dynLambda!22220 lambda!236730 (h!61406 (toList!7480 lt!1973253))) (contains!18780 lt!1973262 (_1!32391 (h!61406 (toList!7480 lt!1973253)))))))

(declare-fun m!5817600 () Bool)

(assert (=> bs!1164510 m!5817600))

(assert (=> b!4826186 d!1546600))

(declare-fun b_lambda!189953 () Bool)

(assert (= b_lambda!189931 (or start!500676 b_lambda!189953)))

(declare-fun bs!1164511 () Bool)

(declare-fun d!1546602 () Bool)

(assert (= bs!1164511 (and d!1546602 start!500676)))

(assert (=> bs!1164511 (= (dynLambda!22218 lambda!236652 (h!61407 (t!362593 (toList!7479 lm!2280)))) (noDuplicateKeys!2452 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280))))))))

(assert (=> bs!1164511 m!5816458))

(assert (=> b!4826433 d!1546602))

(declare-fun b_lambda!189955 () Bool)

(assert (= b_lambda!189885 (or b!4825830 b_lambda!189955)))

(declare-fun bs!1164512 () Bool)

(declare-fun d!1546604 () Bool)

(assert (= bs!1164512 (and d!1546604 b!4825830)))

(assert (=> bs!1164512 (= (dynLambda!22220 lambda!236730 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280))))) (contains!18780 lt!1973262 (_1!32391 (h!61406 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))))

(assert (=> bs!1164512 m!5816270))

(assert (=> b!4826188 d!1546604))

(declare-fun b_lambda!189957 () Bool)

(assert (= b_lambda!189905 (or d!1546172 b_lambda!189957)))

(declare-fun bs!1164513 () Bool)

(declare-fun d!1546606 () Bool)

(assert (= bs!1164513 (and d!1546606 d!1546172)))

(assert (=> bs!1164513 (= (dynLambda!22218 lambda!236739 (h!61407 (toList!7479 lt!1973030))) (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lt!1973030)))))))

(assert (=> bs!1164513 m!5816426))

(assert (=> b!4826335 d!1546606))

(declare-fun b_lambda!189959 () Bool)

(assert (= b_lambda!189901 (or d!1546170 b_lambda!189959)))

(declare-fun bs!1164514 () Bool)

(declare-fun d!1546608 () Bool)

(assert (= bs!1164514 (and d!1546608 d!1546170)))

(assert (=> bs!1164514 (= (dynLambda!22218 lambda!236738 (h!61407 (toList!7479 lm!2280))) (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(assert (=> bs!1164514 m!5816266))

(assert (=> b!4826311 d!1546608))

(declare-fun b_lambda!189961 () Bool)

(assert (= b_lambda!189933 (or d!1546160 b_lambda!189961)))

(declare-fun bs!1164515 () Bool)

(declare-fun d!1546610 () Bool)

(assert (= bs!1164515 (and d!1546610 d!1546160)))

(assert (=> bs!1164515 (= (dynLambda!22218 lambda!236734 (h!61407 (toList!7479 lm!2280))) (noDuplicateKeys!2452 (_2!32392 (h!61407 (toList!7479 lm!2280)))))))

(assert (=> bs!1164515 m!5816266))

(assert (=> b!4826435 d!1546610))

(declare-fun b_lambda!189963 () Bool)

(assert (= b_lambda!189915 (or d!1546166 b_lambda!189963)))

(declare-fun bs!1164516 () Bool)

(declare-fun d!1546612 () Bool)

(assert (= bs!1164516 (and d!1546612 d!1546166)))

(assert (=> bs!1164516 (= (dynLambda!22218 lambda!236737 (h!61407 (t!362593 (toList!7479 lm!2280)))) (noDuplicateKeys!2452 (_2!32392 (h!61407 (t!362593 (toList!7479 lm!2280))))))))

(assert (=> bs!1164516 m!5816458))

(assert (=> b!4826373 d!1546612))

(declare-fun b_lambda!189965 () Bool)

(assert (= b_lambda!189887 (or b!4825830 b_lambda!189965)))

(assert (=> d!1546366 d!1546604))

(declare-fun b_lambda!189967 () Bool)

(assert (= b_lambda!189903 (or d!1546184 b_lambda!189967)))

(declare-fun bs!1164517 () Bool)

(declare-fun d!1546614 () Bool)

(assert (= bs!1164517 (and d!1546614 d!1546184)))

(declare-fun allKeysSameHash!2007 (List!55096 (_ BitVec 64) Hashable!7266) Bool)

(assert (=> bs!1164517 (= (dynLambda!22218 lambda!236745 (h!61407 (toList!7479 lt!1973030))) (allKeysSameHash!2007 (_2!32392 (h!61407 (toList!7479 lt!1973030))) (_1!32392 (h!61407 (toList!7479 lt!1973030))) hashF!1509))))

(declare-fun m!5817602 () Bool)

(assert (=> bs!1164517 m!5817602))

(assert (=> b!4826333 d!1546614))

(declare-fun b_lambda!189969 () Bool)

(assert (= b_lambda!189877 (or d!1546200 b_lambda!189969)))

(declare-fun bs!1164518 () Bool)

(declare-fun d!1546616 () Bool)

(assert (= bs!1164518 (and d!1546616 d!1546200)))

(assert (=> bs!1164518 (= (dynLambda!22218 lambda!236746 (h!61407 (toList!7479 lm!2280))) (allKeysSameHash!2007 (_2!32392 (h!61407 (toList!7479 lm!2280))) (_1!32392 (h!61407 (toList!7479 lm!2280))) hashF!1509))))

(declare-fun m!5817604 () Bool)

(assert (=> bs!1164518 m!5817604))

(assert (=> b!4826154 d!1546616))

(check-sat (not d!1546324) (not d!1546348) (not d!1546518) (not b!4826155) (not b!4826194) (not b!4826055) (not b_lambda!189963) (not b!4826336) (not b!4826308) (not b!4826023) (not b!4826243) (not d!1546272) (not b!4826107) (not b!4826437) tp_is_empty!34461 (not b!4826256) tp_is_empty!34459 (not b!4826313) (not bs!1164505) (not b!4826315) (not b!4826106) (not bs!1164516) (not b!4826448) (not d!1546516) (not b!4826150) (not b!4826233) (not b!4826430) (not bm!336392) (not b!4826168) (not b!4826171) (not b!4826019) (not b_lambda!189953) (not b!4826279) (not b!4826316) (not d!1546250) (not d!1546258) (not b!4826191) (not b!4826438) (not b_lambda!189965) (not d!1546350) (not b_lambda!189969) (not b_lambda!189967) (not d!1546248) (not b!4826165) (not bm!336396) (not b!4826410) (not bm!336405) (not d!1546556) (not b!4825940) (not d!1546466) (not b_lambda!189917) (not b!4826334) (not b!4826401) (not b!4826280) (not b!4826015) (not d!1546432) (not b!4826249) (not d!1546220) (not d!1546504) (not b!4826372) (not bm!336407) (not b!4826187) (not b!4826142) (not b!4826195) (not b!4826307) (not b_lambda!189945) (not b!4826240) (not b!4826253) (not b!4826244) (not b!4826440) (not bs!1164511) (not d!1546216) (not b_lambda!189949) (not b!4826251) (not b!4826254) (not bs!1164507) (not b!4825943) (not d!1546552) (not d!1546454) (not bs!1164518) (not b!4826145) (not b!4826071) (not b!4825956) (not b!4826119) (not d!1546424) (not d!1546388) (not bs!1164509) (not d!1546416) (not b!4826288) (not b!4826302) (not b!4826295) (not d!1546444) (not bs!1164512) (not d!1546560) (not b!4826332) (not b!4826196) (not b!4826268) (not b!4826250) (not b!4826376) (not d!1546212) (not d!1546312) (not d!1546398) (not bs!1164510) (not b!4826436) (not d!1546450) (not d!1546436) (not d!1546456) (not d!1546274) (not b!4826014) (not b!4826447) (not b!4826269) (not b!4826389) (not b!4826255) (not d!1546482) (not bs!1164513) (not b!4826463) (not b!4826138) (not bs!1164514) (not b!4826374) (not b!4826387) (not bm!336395) (not d!1546446) (not b_lambda!189863) (not b!4826409) (not b!4826241) (not b!4826248) (not b!4825927) (not bm!336398) (not b!4826310) (not d!1546380) (not bm!336393) (not bm!336394) (not d!1546462) (not bm!336411) (not b!4826198) (not d!1546298) (not b_lambda!189947) (not b!4826105) (not d!1546374) (not d!1546394) (not d!1546226) (not bm!336408) (not b!4826225) (not b!4826407) (not b!4826449) (not b!4826090) (not b!4825938) (not bm!336397) (not d!1546372) (not b_lambda!189939) (not b_lambda!189961) (not b!4826266) (not b!4826017) (not b!4826141) (not bs!1164517) (not d!1546570) (not d!1546266) (not b!4826329) (not b!4826267) (not b!4826193) (not d!1546246) (not b!4826189) (not b_lambda!189951) (not b!4826160) (not bs!1164504) (not b!4825942) (not b!4826282) (not d!1546548) (not d!1546296) (not b!4826385) (not b_lambda!189923) (not b!4826224) (not b!4826314) (not d!1546376) (not b!4826432) (not b_lambda!189943) (not bs!1164508) (not b!4826016) (not d!1546256) (not d!1546366) (not b!4826140) (not bs!1164515) (not d!1546510) (not b!4826239) (not b!4826451) (not b!4826291) (not bs!1164506) (not bm!336410) (not b!4826434) (not b_lambda!189941) (not b_lambda!189957) (not d!1546208) (not b_lambda!189861) (not b!4826170) (not b!4826446) (not b!4826242) (not b!4826281) (not b!4826283) (not b!4826394) (not b_lambda!189959) (not b!4826237) (not d!1546568) (not d!1546488) (not b!4826412) (not b!4826235) (not b!4826462) (not b!4826312) (not b!4826263) (not b_lambda!189955) (not b!4826442) (not bm!336409) (not b!4826292) (not bm!336406) (not b!4826391) (not b!4826408) (not d!1546314) (not d!1546426) (not d!1546294) (not d!1546520) (not b!4826197) (not d!1546396) (not b!4825941) (not b!4826169) (not b!4826038) (not b!4826143) (not d!1546546))
(check-sat)
