; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!435236 () Bool)

(assert start!435236)

(declare-fun b!4445341 () Bool)

(declare-fun e!2767823 () Bool)

(declare-fun e!2767826 () Bool)

(assert (=> b!4445341 (= e!2767823 e!2767826)))

(declare-fun res!1841294 () Bool)

(assert (=> b!4445341 (=> res!1841294 e!2767826)))

(declare-datatypes ((V!11466 0))(
  ( (V!11467 (val!17247 Int)) )
))
(declare-datatypes ((K!11220 0))(
  ( (K!11221 (val!17248 Int)) )
))
(declare-datatypes ((tuple2!49814 0))(
  ( (tuple2!49815 (_1!28201 K!11220) (_2!28201 V!11466)) )
))
(declare-datatypes ((List!49974 0))(
  ( (Nil!49850) (Cons!49850 (h!55587 tuple2!49814) (t!356916 List!49974)) )
))
(declare-datatypes ((tuple2!49816 0))(
  ( (tuple2!49817 (_1!28202 (_ BitVec 64)) (_2!28202 List!49974)) )
))
(declare-datatypes ((List!49975 0))(
  ( (Nil!49851) (Cons!49851 (h!55588 tuple2!49816) (t!356917 List!49975)) )
))
(declare-datatypes ((ListLongMap!2355 0))(
  ( (ListLongMap!2356 (toList!3705 List!49975)) )
))
(declare-fun lm!1616 () ListLongMap!2355)

(declare-fun key!3717 () K!11220)

(declare-fun containsKey!1276 (List!49974 K!11220) Bool)

(assert (=> b!4445341 (= res!1841294 (containsKey!1276 (_2!28202 (h!55588 (toList!3705 lm!1616))) key!3717))))

(declare-fun apply!11711 (ListLongMap!2355 (_ BitVec 64)) List!49974)

(assert (=> b!4445341 (not (containsKey!1276 (apply!11711 lm!1616 (_1!28202 (h!55588 (toList!3705 lm!1616)))) key!3717))))

(declare-datatypes ((Unit!84352 0))(
  ( (Unit!84353) )
))
(declare-fun lt!1639541 () Unit!84352)

(declare-datatypes ((Hashable!5253 0))(
  ( (HashableExt!5252 (__x!30956 Int)) )
))
(declare-fun hashF!1220 () Hashable!5253)

(declare-fun lemmaNotSameHashThenCannotContainKey!158 (ListLongMap!2355 K!11220 (_ BitVec 64) Hashable!5253) Unit!84352)

(assert (=> b!4445341 (= lt!1639541 (lemmaNotSameHashThenCannotContainKey!158 lm!1616 key!3717 (_1!28202 (h!55588 (toList!3705 lm!1616))) hashF!1220))))

(declare-fun b!4445342 () Bool)

(declare-fun e!2767824 () Bool)

(declare-fun e!2767819 () Bool)

(assert (=> b!4445342 (= e!2767824 e!2767819)))

(declare-fun res!1841299 () Bool)

(assert (=> b!4445342 (=> (not res!1841299) (not e!2767819))))

(declare-datatypes ((ListMap!2949 0))(
  ( (ListMap!2950 (toList!3706 List!49974)) )
))
(declare-fun lt!1639535 () ListMap!2949)

(declare-fun contains!12432 (ListMap!2949 K!11220) Bool)

(assert (=> b!4445342 (= res!1841299 (not (contains!12432 lt!1639535 key!3717)))))

(declare-fun extractMap!920 (List!49975) ListMap!2949)

(assert (=> b!4445342 (= lt!1639535 (extractMap!920 (toList!3705 lm!1616)))))

(declare-fun b!4445343 () Bool)

(declare-fun e!2767816 () Unit!84352)

(declare-fun Unit!84354 () Unit!84352)

(assert (=> b!4445343 (= e!2767816 Unit!84354)))

(declare-fun lt!1639538 () Unit!84352)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!96 (ListLongMap!2355 K!11220 Hashable!5253) Unit!84352)

(assert (=> b!4445343 (= lt!1639538 (lemmaExtractTailMapContainsThenExtractMapDoes!96 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4445343 false))

(declare-fun b!4445344 () Bool)

(declare-fun res!1841291 () Bool)

(assert (=> b!4445344 (=> (not res!1841291) (not e!2767824))))

(declare-fun newBucket!194 () List!49974)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun allKeysSameHash!819 (List!49974 (_ BitVec 64) Hashable!5253) Bool)

(assert (=> b!4445344 (= res!1841291 (allKeysSameHash!819 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4445345 () Bool)

(declare-fun res!1841301 () Bool)

(declare-fun e!2767822 () Bool)

(assert (=> b!4445345 (=> res!1841301 e!2767822)))

(get-info :version)

(assert (=> b!4445345 (= res!1841301 (or (and ((_ is Cons!49851) (toList!3705 lm!1616)) (= (_1!28202 (h!55588 (toList!3705 lm!1616))) hash!366)) (not ((_ is Cons!49851) (toList!3705 lm!1616))) (= (_1!28202 (h!55588 (toList!3705 lm!1616))) hash!366)))))

(declare-fun res!1841296 () Bool)

(assert (=> start!435236 (=> (not res!1841296) (not e!2767824))))

(declare-fun lambda!158116 () Int)

(declare-fun forall!9742 (List!49975 Int) Bool)

(assert (=> start!435236 (= res!1841296 (forall!9742 (toList!3705 lm!1616) lambda!158116))))

(assert (=> start!435236 e!2767824))

(declare-fun tp_is_empty!26681 () Bool)

(assert (=> start!435236 tp_is_empty!26681))

(declare-fun tp_is_empty!26683 () Bool)

(assert (=> start!435236 tp_is_empty!26683))

(declare-fun e!2767825 () Bool)

(assert (=> start!435236 e!2767825))

(declare-fun e!2767821 () Bool)

(declare-fun inv!65406 (ListLongMap!2355) Bool)

(assert (=> start!435236 (and (inv!65406 lm!1616) e!2767821)))

(assert (=> start!435236 true))

(declare-fun b!4445346 () Bool)

(declare-fun res!1841293 () Bool)

(declare-fun e!2767817 () Bool)

(assert (=> b!4445346 (=> (not res!1841293) (not e!2767817))))

(declare-fun noDuplicateKeys!859 (List!49974) Bool)

(assert (=> b!4445346 (= res!1841293 (noDuplicateKeys!859 newBucket!194))))

(declare-fun b!4445347 () Bool)

(declare-fun res!1841289 () Bool)

(assert (=> b!4445347 (=> (not res!1841289) (not e!2767824))))

(declare-fun hash!2327 (Hashable!5253 K!11220) (_ BitVec 64))

(assert (=> b!4445347 (= res!1841289 (= (hash!2327 hashF!1220 key!3717) hash!366))))

(declare-fun b!4445348 () Bool)

(assert (=> b!4445348 (= e!2767822 e!2767823)))

(declare-fun res!1841300 () Bool)

(assert (=> b!4445348 (=> res!1841300 e!2767823)))

(declare-fun lt!1639543 () tuple2!49816)

(declare-fun head!9300 (ListLongMap!2355) tuple2!49816)

(assert (=> b!4445348 (= res!1841300 (= (head!9300 lm!1616) lt!1639543))))

(declare-fun lt!1639536 () ListMap!2949)

(declare-fun newValue!93 () V!11466)

(declare-fun lt!1639534 () ListMap!2949)

(declare-fun eq!459 (ListMap!2949 ListMap!2949) Bool)

(declare-fun +!1255 (ListMap!2949 tuple2!49814) ListMap!2949)

(assert (=> b!4445348 (eq!459 lt!1639536 (+!1255 lt!1639534 (tuple2!49815 key!3717 newValue!93)))))

(declare-fun lt!1639537 () ListLongMap!2355)

(assert (=> b!4445348 (= lt!1639534 (extractMap!920 (toList!3705 lt!1639537)))))

(declare-fun +!1256 (ListLongMap!2355 tuple2!49816) ListLongMap!2355)

(assert (=> b!4445348 (= lt!1639536 (extractMap!920 (toList!3705 (+!1256 lt!1639537 lt!1639543))))))

(declare-fun lt!1639542 () Unit!84352)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!167 (ListLongMap!2355 (_ BitVec 64) List!49974 K!11220 V!11466 Hashable!5253) Unit!84352)

(assert (=> b!4445348 (= lt!1639542 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!167 lt!1639537 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7418 (ListLongMap!2355) ListLongMap!2355)

(assert (=> b!4445348 (= lt!1639537 (tail!7418 lm!1616))))

(declare-fun lt!1639540 () Unit!84352)

(assert (=> b!4445348 (= lt!1639540 e!2767816)))

(declare-fun c!756519 () Bool)

(declare-fun tail!7419 (List!49975) List!49975)

(assert (=> b!4445348 (= c!756519 (contains!12432 (extractMap!920 (tail!7419 (toList!3705 lm!1616))) key!3717))))

(declare-fun b!4445349 () Bool)

(assert (=> b!4445349 (= e!2767817 (not e!2767822))))

(declare-fun res!1841292 () Bool)

(assert (=> b!4445349 (=> res!1841292 e!2767822)))

(declare-fun lt!1639545 () ListLongMap!2355)

(assert (=> b!4445349 (= res!1841292 (not (forall!9742 (toList!3705 lt!1639545) lambda!158116)))))

(assert (=> b!4445349 (forall!9742 (toList!3705 lt!1639545) lambda!158116)))

(assert (=> b!4445349 (= lt!1639545 (+!1256 lm!1616 lt!1639543))))

(assert (=> b!4445349 (= lt!1639543 (tuple2!49817 hash!366 newBucket!194))))

(declare-fun lt!1639544 () Unit!84352)

(declare-fun addValidProp!497 (ListLongMap!2355 Int (_ BitVec 64) List!49974) Unit!84352)

(assert (=> b!4445349 (= lt!1639544 (addValidProp!497 lm!1616 lambda!158116 hash!366 newBucket!194))))

(declare-fun b!4445350 () Bool)

(declare-fun res!1841295 () Bool)

(assert (=> b!4445350 (=> (not res!1841295) (not e!2767824))))

(declare-fun allKeysSameHashInMap!965 (ListLongMap!2355 Hashable!5253) Bool)

(assert (=> b!4445350 (= res!1841295 (allKeysSameHashInMap!965 lm!1616 hashF!1220))))

(declare-fun b!4445351 () Bool)

(declare-fun res!1841297 () Bool)

(assert (=> b!4445351 (=> (not res!1841297) (not e!2767817))))

(assert (=> b!4445351 (= res!1841297 (forall!9742 (toList!3705 lm!1616) lambda!158116))))

(declare-fun b!4445352 () Bool)

(declare-fun tp!1334429 () Bool)

(assert (=> b!4445352 (= e!2767821 tp!1334429)))

(declare-fun b!4445353 () Bool)

(declare-fun lt!1639539 () Bool)

(declare-fun e!2767820 () Bool)

(assert (=> b!4445353 (= e!2767820 (and (not lt!1639539) (= newBucket!194 (Cons!49850 (tuple2!49815 key!3717 newValue!93) Nil!49850))))))

(declare-fun b!4445354 () Bool)

(declare-fun res!1841298 () Bool)

(assert (=> b!4445354 (=> res!1841298 e!2767823)))

(declare-fun addToMapMapFromBucket!465 (List!49974 ListMap!2949) ListMap!2949)

(assert (=> b!4445354 (= res!1841298 (not (eq!459 lt!1639535 (addToMapMapFromBucket!465 (_2!28202 (h!55588 (toList!3705 lm!1616))) lt!1639534))))))

(declare-fun e!2767818 () Bool)

(declare-fun b!4445355 () Bool)

(assert (=> b!4445355 (= e!2767818 (= newBucket!194 (Cons!49850 (tuple2!49815 key!3717 newValue!93) (apply!11711 lm!1616 hash!366))))))

(declare-fun b!4445356 () Bool)

(assert (=> b!4445356 (= e!2767826 (noDuplicateKeys!859 (_2!28202 (h!55588 (toList!3705 lm!1616)))))))

(declare-fun b!4445357 () Bool)

(assert (=> b!4445357 (= e!2767819 e!2767817)))

(declare-fun res!1841287 () Bool)

(assert (=> b!4445357 (=> (not res!1841287) (not e!2767817))))

(assert (=> b!4445357 (= res!1841287 e!2767820)))

(declare-fun res!1841290 () Bool)

(assert (=> b!4445357 (=> res!1841290 e!2767820)))

(assert (=> b!4445357 (= res!1841290 e!2767818)))

(declare-fun res!1841288 () Bool)

(assert (=> b!4445357 (=> (not res!1841288) (not e!2767818))))

(assert (=> b!4445357 (= res!1841288 lt!1639539)))

(declare-fun contains!12433 (ListLongMap!2355 (_ BitVec 64)) Bool)

(assert (=> b!4445357 (= lt!1639539 (contains!12433 lm!1616 hash!366))))

(declare-fun b!4445358 () Bool)

(declare-fun tp!1334430 () Bool)

(assert (=> b!4445358 (= e!2767825 (and tp_is_empty!26683 tp_is_empty!26681 tp!1334430))))

(declare-fun b!4445359 () Bool)

(declare-fun Unit!84355 () Unit!84352)

(assert (=> b!4445359 (= e!2767816 Unit!84355)))

(assert (= (and start!435236 res!1841296) b!4445350))

(assert (= (and b!4445350 res!1841295) b!4445347))

(assert (= (and b!4445347 res!1841289) b!4445344))

(assert (= (and b!4445344 res!1841291) b!4445342))

(assert (= (and b!4445342 res!1841299) b!4445357))

(assert (= (and b!4445357 res!1841288) b!4445355))

(assert (= (and b!4445357 (not res!1841290)) b!4445353))

(assert (= (and b!4445357 res!1841287) b!4445346))

(assert (= (and b!4445346 res!1841293) b!4445351))

(assert (= (and b!4445351 res!1841297) b!4445349))

(assert (= (and b!4445349 (not res!1841292)) b!4445345))

(assert (= (and b!4445345 (not res!1841301)) b!4445348))

(assert (= (and b!4445348 c!756519) b!4445343))

(assert (= (and b!4445348 (not c!756519)) b!4445359))

(assert (= (and b!4445348 (not res!1841300)) b!4445354))

(assert (= (and b!4445354 (not res!1841298)) b!4445341))

(assert (= (and b!4445341 (not res!1841294)) b!4445356))

(assert (= (and start!435236 ((_ is Cons!49850) newBucket!194)) b!4445358))

(assert (= start!435236 b!4445352))

(declare-fun m!5135651 () Bool)

(assert (=> start!435236 m!5135651))

(declare-fun m!5135653 () Bool)

(assert (=> start!435236 m!5135653))

(declare-fun m!5135655 () Bool)

(assert (=> b!4445346 m!5135655))

(declare-fun m!5135657 () Bool)

(assert (=> b!4445347 m!5135657))

(declare-fun m!5135659 () Bool)

(assert (=> b!4445350 m!5135659))

(declare-fun m!5135661 () Bool)

(assert (=> b!4445355 m!5135661))

(declare-fun m!5135663 () Bool)

(assert (=> b!4445348 m!5135663))

(declare-fun m!5135665 () Bool)

(assert (=> b!4445348 m!5135665))

(declare-fun m!5135667 () Bool)

(assert (=> b!4445348 m!5135667))

(declare-fun m!5135669 () Bool)

(assert (=> b!4445348 m!5135669))

(declare-fun m!5135671 () Bool)

(assert (=> b!4445348 m!5135671))

(declare-fun m!5135673 () Bool)

(assert (=> b!4445348 m!5135673))

(declare-fun m!5135675 () Bool)

(assert (=> b!4445348 m!5135675))

(assert (=> b!4445348 m!5135663))

(assert (=> b!4445348 m!5135665))

(declare-fun m!5135677 () Bool)

(assert (=> b!4445348 m!5135677))

(declare-fun m!5135679 () Bool)

(assert (=> b!4445348 m!5135679))

(declare-fun m!5135681 () Bool)

(assert (=> b!4445348 m!5135681))

(assert (=> b!4445348 m!5135679))

(declare-fun m!5135683 () Bool)

(assert (=> b!4445348 m!5135683))

(declare-fun m!5135685 () Bool)

(assert (=> b!4445341 m!5135685))

(declare-fun m!5135687 () Bool)

(assert (=> b!4445341 m!5135687))

(assert (=> b!4445341 m!5135687))

(declare-fun m!5135689 () Bool)

(assert (=> b!4445341 m!5135689))

(declare-fun m!5135691 () Bool)

(assert (=> b!4445341 m!5135691))

(declare-fun m!5135693 () Bool)

(assert (=> b!4445344 m!5135693))

(declare-fun m!5135695 () Bool)

(assert (=> b!4445343 m!5135695))

(declare-fun m!5135697 () Bool)

(assert (=> b!4445354 m!5135697))

(assert (=> b!4445354 m!5135697))

(declare-fun m!5135699 () Bool)

(assert (=> b!4445354 m!5135699))

(declare-fun m!5135701 () Bool)

(assert (=> b!4445342 m!5135701))

(declare-fun m!5135703 () Bool)

(assert (=> b!4445342 m!5135703))

(declare-fun m!5135705 () Bool)

(assert (=> b!4445356 m!5135705))

(declare-fun m!5135707 () Bool)

(assert (=> b!4445349 m!5135707))

(assert (=> b!4445349 m!5135707))

(declare-fun m!5135709 () Bool)

(assert (=> b!4445349 m!5135709))

(declare-fun m!5135711 () Bool)

(assert (=> b!4445349 m!5135711))

(assert (=> b!4445351 m!5135651))

(declare-fun m!5135713 () Bool)

(assert (=> b!4445357 m!5135713))

(check-sat (not b!4445350) (not b!4445351) (not b!4445358) (not b!4445356) (not b!4445348) (not b!4445341) (not start!435236) (not b!4445355) (not b!4445347) (not b!4445342) tp_is_empty!26683 (not b!4445349) (not b!4445352) (not b!4445354) tp_is_empty!26681 (not b!4445346) (not b!4445344) (not b!4445357) (not b!4445343))
(check-sat)
(get-model)

(declare-fun d!1349700 () Bool)

(declare-fun res!1841312 () Bool)

(declare-fun e!2767837 () Bool)

(assert (=> d!1349700 (=> res!1841312 e!2767837)))

(assert (=> d!1349700 (= res!1841312 (and ((_ is Cons!49850) (_2!28202 (h!55588 (toList!3705 lm!1616)))) (= (_1!28201 (h!55587 (_2!28202 (h!55588 (toList!3705 lm!1616))))) key!3717)))))

(assert (=> d!1349700 (= (containsKey!1276 (_2!28202 (h!55588 (toList!3705 lm!1616))) key!3717) e!2767837)))

(declare-fun b!4445370 () Bool)

(declare-fun e!2767838 () Bool)

(assert (=> b!4445370 (= e!2767837 e!2767838)))

(declare-fun res!1841313 () Bool)

(assert (=> b!4445370 (=> (not res!1841313) (not e!2767838))))

(assert (=> b!4445370 (= res!1841313 ((_ is Cons!49850) (_2!28202 (h!55588 (toList!3705 lm!1616)))))))

(declare-fun b!4445371 () Bool)

(assert (=> b!4445371 (= e!2767838 (containsKey!1276 (t!356916 (_2!28202 (h!55588 (toList!3705 lm!1616)))) key!3717))))

(assert (= (and d!1349700 (not res!1841312)) b!4445370))

(assert (= (and b!4445370 res!1841313) b!4445371))

(declare-fun m!5135725 () Bool)

(assert (=> b!4445371 m!5135725))

(assert (=> b!4445341 d!1349700))

(declare-fun d!1349710 () Bool)

(declare-fun res!1841314 () Bool)

(declare-fun e!2767839 () Bool)

(assert (=> d!1349710 (=> res!1841314 e!2767839)))

(assert (=> d!1349710 (= res!1841314 (and ((_ is Cons!49850) (apply!11711 lm!1616 (_1!28202 (h!55588 (toList!3705 lm!1616))))) (= (_1!28201 (h!55587 (apply!11711 lm!1616 (_1!28202 (h!55588 (toList!3705 lm!1616)))))) key!3717)))))

(assert (=> d!1349710 (= (containsKey!1276 (apply!11711 lm!1616 (_1!28202 (h!55588 (toList!3705 lm!1616)))) key!3717) e!2767839)))

(declare-fun b!4445372 () Bool)

(declare-fun e!2767840 () Bool)

(assert (=> b!4445372 (= e!2767839 e!2767840)))

(declare-fun res!1841315 () Bool)

(assert (=> b!4445372 (=> (not res!1841315) (not e!2767840))))

(assert (=> b!4445372 (= res!1841315 ((_ is Cons!49850) (apply!11711 lm!1616 (_1!28202 (h!55588 (toList!3705 lm!1616))))))))

(declare-fun b!4445373 () Bool)

(assert (=> b!4445373 (= e!2767840 (containsKey!1276 (t!356916 (apply!11711 lm!1616 (_1!28202 (h!55588 (toList!3705 lm!1616))))) key!3717))))

(assert (= (and d!1349710 (not res!1841314)) b!4445372))

(assert (= (and b!4445372 res!1841315) b!4445373))

(declare-fun m!5135727 () Bool)

(assert (=> b!4445373 m!5135727))

(assert (=> b!4445341 d!1349710))

(declare-fun d!1349712 () Bool)

(declare-datatypes ((Option!10825 0))(
  ( (None!10824) (Some!10824 (v!44066 List!49974)) )
))
(declare-fun get!16260 (Option!10825) List!49974)

(declare-fun getValueByKey!811 (List!49975 (_ BitVec 64)) Option!10825)

(assert (=> d!1349712 (= (apply!11711 lm!1616 (_1!28202 (h!55588 (toList!3705 lm!1616)))) (get!16260 (getValueByKey!811 (toList!3705 lm!1616) (_1!28202 (h!55588 (toList!3705 lm!1616))))))))

(declare-fun bs!765704 () Bool)

(assert (= bs!765704 d!1349712))

(declare-fun m!5135729 () Bool)

(assert (=> bs!765704 m!5135729))

(assert (=> bs!765704 m!5135729))

(declare-fun m!5135731 () Bool)

(assert (=> bs!765704 m!5135731))

(assert (=> b!4445341 d!1349712))

(declare-fun bs!765705 () Bool)

(declare-fun d!1349714 () Bool)

(assert (= bs!765705 (and d!1349714 start!435236)))

(declare-fun lambda!158119 () Int)

(assert (=> bs!765705 (= lambda!158119 lambda!158116)))

(assert (=> d!1349714 (not (containsKey!1276 (apply!11711 lm!1616 (_1!28202 (h!55588 (toList!3705 lm!1616)))) key!3717))))

(declare-fun lt!1639548 () Unit!84352)

(declare-fun choose!28267 (ListLongMap!2355 K!11220 (_ BitVec 64) Hashable!5253) Unit!84352)

(assert (=> d!1349714 (= lt!1639548 (choose!28267 lm!1616 key!3717 (_1!28202 (h!55588 (toList!3705 lm!1616))) hashF!1220))))

(assert (=> d!1349714 (forall!9742 (toList!3705 lm!1616) lambda!158119)))

(assert (=> d!1349714 (= (lemmaNotSameHashThenCannotContainKey!158 lm!1616 key!3717 (_1!28202 (h!55588 (toList!3705 lm!1616))) hashF!1220) lt!1639548)))

(declare-fun bs!765706 () Bool)

(assert (= bs!765706 d!1349714))

(assert (=> bs!765706 m!5135687))

(assert (=> bs!765706 m!5135687))

(assert (=> bs!765706 m!5135689))

(declare-fun m!5135733 () Bool)

(assert (=> bs!765706 m!5135733))

(declare-fun m!5135735 () Bool)

(assert (=> bs!765706 m!5135735))

(assert (=> b!4445341 d!1349714))

(declare-fun d!1349716 () Bool)

(declare-fun res!1841320 () Bool)

(declare-fun e!2767845 () Bool)

(assert (=> d!1349716 (=> res!1841320 e!2767845)))

(assert (=> d!1349716 (= res!1841320 ((_ is Nil!49851) (toList!3705 lm!1616)))))

(assert (=> d!1349716 (= (forall!9742 (toList!3705 lm!1616) lambda!158116) e!2767845)))

(declare-fun b!4445378 () Bool)

(declare-fun e!2767846 () Bool)

(assert (=> b!4445378 (= e!2767845 e!2767846)))

(declare-fun res!1841321 () Bool)

(assert (=> b!4445378 (=> (not res!1841321) (not e!2767846))))

(declare-fun dynLambda!20926 (Int tuple2!49816) Bool)

(assert (=> b!4445378 (= res!1841321 (dynLambda!20926 lambda!158116 (h!55588 (toList!3705 lm!1616))))))

(declare-fun b!4445379 () Bool)

(assert (=> b!4445379 (= e!2767846 (forall!9742 (t!356917 (toList!3705 lm!1616)) lambda!158116))))

(assert (= (and d!1349716 (not res!1841320)) b!4445378))

(assert (= (and b!4445378 res!1841321) b!4445379))

(declare-fun b_lambda!145503 () Bool)

(assert (=> (not b_lambda!145503) (not b!4445378)))

(declare-fun m!5135737 () Bool)

(assert (=> b!4445378 m!5135737))

(declare-fun m!5135739 () Bool)

(assert (=> b!4445379 m!5135739))

(assert (=> b!4445351 d!1349716))

(declare-fun d!1349718 () Bool)

(declare-fun e!2767862 () Bool)

(assert (=> d!1349718 e!2767862))

(declare-fun res!1841329 () Bool)

(assert (=> d!1349718 (=> res!1841329 e!2767862)))

(declare-fun e!2767863 () Bool)

(assert (=> d!1349718 (= res!1841329 e!2767863)))

(declare-fun res!1841328 () Bool)

(assert (=> d!1349718 (=> (not res!1841328) (not e!2767863))))

(declare-fun lt!1639570 () Bool)

(assert (=> d!1349718 (= res!1841328 (not lt!1639570))))

(declare-fun lt!1639569 () Bool)

(assert (=> d!1349718 (= lt!1639570 lt!1639569)))

(declare-fun lt!1639572 () Unit!84352)

(declare-fun e!2767859 () Unit!84352)

(assert (=> d!1349718 (= lt!1639572 e!2767859)))

(declare-fun c!756527 () Bool)

(assert (=> d!1349718 (= c!756527 lt!1639569)))

(declare-fun containsKey!1278 (List!49974 K!11220) Bool)

(assert (=> d!1349718 (= lt!1639569 (containsKey!1278 (toList!3706 lt!1639535) key!3717))))

(assert (=> d!1349718 (= (contains!12432 lt!1639535 key!3717) lt!1639570)))

(declare-fun b!4445398 () Bool)

(declare-fun lt!1639565 () Unit!84352)

(assert (=> b!4445398 (= e!2767859 lt!1639565)))

(declare-fun lt!1639568 () Unit!84352)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!717 (List!49974 K!11220) Unit!84352)

(assert (=> b!4445398 (= lt!1639568 (lemmaContainsKeyImpliesGetValueByKeyDefined!717 (toList!3706 lt!1639535) key!3717))))

(declare-datatypes ((Option!10826 0))(
  ( (None!10825) (Some!10825 (v!44067 V!11466)) )
))
(declare-fun isDefined!8114 (Option!10826) Bool)

(declare-fun getValueByKey!812 (List!49974 K!11220) Option!10826)

(assert (=> b!4445398 (isDefined!8114 (getValueByKey!812 (toList!3706 lt!1639535) key!3717))))

(declare-fun lt!1639571 () Unit!84352)

(assert (=> b!4445398 (= lt!1639571 lt!1639568)))

(declare-fun lemmaInListThenGetKeysListContains!298 (List!49974 K!11220) Unit!84352)

(assert (=> b!4445398 (= lt!1639565 (lemmaInListThenGetKeysListContains!298 (toList!3706 lt!1639535) key!3717))))

(declare-fun call!309247 () Bool)

(assert (=> b!4445398 call!309247))

(declare-fun b!4445399 () Bool)

(declare-datatypes ((List!49977 0))(
  ( (Nil!49853) (Cons!49853 (h!55592 K!11220) (t!356919 List!49977)) )
))
(declare-fun e!2767860 () List!49977)

(declare-fun keys!17091 (ListMap!2949) List!49977)

(assert (=> b!4445399 (= e!2767860 (keys!17091 lt!1639535))))

(declare-fun b!4445400 () Bool)

(declare-fun e!2767861 () Unit!84352)

(assert (=> b!4445400 (= e!2767859 e!2767861)))

(declare-fun c!756528 () Bool)

(assert (=> b!4445400 (= c!756528 call!309247)))

(declare-fun bm!309242 () Bool)

(declare-fun contains!12437 (List!49977 K!11220) Bool)

(assert (=> bm!309242 (= call!309247 (contains!12437 e!2767860 key!3717))))

(declare-fun c!756526 () Bool)

(assert (=> bm!309242 (= c!756526 c!756527)))

(declare-fun b!4445401 () Bool)

(assert (=> b!4445401 false))

(declare-fun lt!1639566 () Unit!84352)

(declare-fun lt!1639567 () Unit!84352)

(assert (=> b!4445401 (= lt!1639566 lt!1639567)))

(assert (=> b!4445401 (containsKey!1278 (toList!3706 lt!1639535) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!299 (List!49974 K!11220) Unit!84352)

(assert (=> b!4445401 (= lt!1639567 (lemmaInGetKeysListThenContainsKey!299 (toList!3706 lt!1639535) key!3717))))

(declare-fun Unit!84370 () Unit!84352)

(assert (=> b!4445401 (= e!2767861 Unit!84370)))

(declare-fun b!4445402 () Bool)

(declare-fun e!2767864 () Bool)

(assert (=> b!4445402 (= e!2767862 e!2767864)))

(declare-fun res!1841330 () Bool)

(assert (=> b!4445402 (=> (not res!1841330) (not e!2767864))))

(assert (=> b!4445402 (= res!1841330 (isDefined!8114 (getValueByKey!812 (toList!3706 lt!1639535) key!3717)))))

(declare-fun b!4445403 () Bool)

(assert (=> b!4445403 (= e!2767864 (contains!12437 (keys!17091 lt!1639535) key!3717))))

(declare-fun b!4445404 () Bool)

(declare-fun Unit!84371 () Unit!84352)

(assert (=> b!4445404 (= e!2767861 Unit!84371)))

(declare-fun b!4445405 () Bool)

(assert (=> b!4445405 (= e!2767863 (not (contains!12437 (keys!17091 lt!1639535) key!3717)))))

(declare-fun b!4445406 () Bool)

(declare-fun getKeysList!301 (List!49974) List!49977)

(assert (=> b!4445406 (= e!2767860 (getKeysList!301 (toList!3706 lt!1639535)))))

(assert (= (and d!1349718 c!756527) b!4445398))

(assert (= (and d!1349718 (not c!756527)) b!4445400))

(assert (= (and b!4445400 c!756528) b!4445401))

(assert (= (and b!4445400 (not c!756528)) b!4445404))

(assert (= (or b!4445398 b!4445400) bm!309242))

(assert (= (and bm!309242 c!756526) b!4445406))

(assert (= (and bm!309242 (not c!756526)) b!4445399))

(assert (= (and d!1349718 res!1841328) b!4445405))

(assert (= (and d!1349718 (not res!1841329)) b!4445402))

(assert (= (and b!4445402 res!1841330) b!4445403))

(declare-fun m!5135741 () Bool)

(assert (=> b!4445405 m!5135741))

(assert (=> b!4445405 m!5135741))

(declare-fun m!5135743 () Bool)

(assert (=> b!4445405 m!5135743))

(declare-fun m!5135745 () Bool)

(assert (=> b!4445406 m!5135745))

(declare-fun m!5135747 () Bool)

(assert (=> b!4445398 m!5135747))

(declare-fun m!5135749 () Bool)

(assert (=> b!4445398 m!5135749))

(assert (=> b!4445398 m!5135749))

(declare-fun m!5135751 () Bool)

(assert (=> b!4445398 m!5135751))

(declare-fun m!5135753 () Bool)

(assert (=> b!4445398 m!5135753))

(assert (=> b!4445402 m!5135749))

(assert (=> b!4445402 m!5135749))

(assert (=> b!4445402 m!5135751))

(declare-fun m!5135755 () Bool)

(assert (=> b!4445401 m!5135755))

(declare-fun m!5135757 () Bool)

(assert (=> b!4445401 m!5135757))

(declare-fun m!5135759 () Bool)

(assert (=> bm!309242 m!5135759))

(assert (=> b!4445399 m!5135741))

(assert (=> b!4445403 m!5135741))

(assert (=> b!4445403 m!5135741))

(assert (=> b!4445403 m!5135743))

(assert (=> d!1349718 m!5135755))

(assert (=> b!4445342 d!1349718))

(declare-fun bs!765707 () Bool)

(declare-fun d!1349720 () Bool)

(assert (= bs!765707 (and d!1349720 start!435236)))

(declare-fun lambda!158143 () Int)

(assert (=> bs!765707 (= lambda!158143 lambda!158116)))

(declare-fun bs!765708 () Bool)

(assert (= bs!765708 (and d!1349720 d!1349714)))

(assert (=> bs!765708 (= lambda!158143 lambda!158119)))

(declare-fun lt!1639617 () ListMap!2949)

(declare-fun invariantList!854 (List!49974) Bool)

(assert (=> d!1349720 (invariantList!854 (toList!3706 lt!1639617))))

(declare-fun e!2767869 () ListMap!2949)

(assert (=> d!1349720 (= lt!1639617 e!2767869)))

(declare-fun c!756533 () Bool)

(assert (=> d!1349720 (= c!756533 ((_ is Cons!49851) (toList!3705 lm!1616)))))

(assert (=> d!1349720 (forall!9742 (toList!3705 lm!1616) lambda!158143)))

(assert (=> d!1349720 (= (extractMap!920 (toList!3705 lm!1616)) lt!1639617)))

(declare-fun b!4445415 () Bool)

(assert (=> b!4445415 (= e!2767869 (addToMapMapFromBucket!465 (_2!28202 (h!55588 (toList!3705 lm!1616))) (extractMap!920 (t!356917 (toList!3705 lm!1616)))))))

(declare-fun b!4445416 () Bool)

(assert (=> b!4445416 (= e!2767869 (ListMap!2950 Nil!49850))))

(assert (= (and d!1349720 c!756533) b!4445415))

(assert (= (and d!1349720 (not c!756533)) b!4445416))

(declare-fun m!5135761 () Bool)

(assert (=> d!1349720 m!5135761))

(declare-fun m!5135763 () Bool)

(assert (=> d!1349720 m!5135763))

(declare-fun m!5135765 () Bool)

(assert (=> b!4445415 m!5135765))

(assert (=> b!4445415 m!5135765))

(declare-fun m!5135767 () Bool)

(assert (=> b!4445415 m!5135767))

(assert (=> b!4445342 d!1349720))

(declare-fun d!1349722 () Bool)

(declare-fun res!1841333 () Bool)

(declare-fun e!2767872 () Bool)

(assert (=> d!1349722 (=> res!1841333 e!2767872)))

(assert (=> d!1349722 (= res!1841333 ((_ is Nil!49851) (toList!3705 lt!1639545)))))

(assert (=> d!1349722 (= (forall!9742 (toList!3705 lt!1639545) lambda!158116) e!2767872)))

(declare-fun b!4445419 () Bool)

(declare-fun e!2767873 () Bool)

(assert (=> b!4445419 (= e!2767872 e!2767873)))

(declare-fun res!1841334 () Bool)

(assert (=> b!4445419 (=> (not res!1841334) (not e!2767873))))

(assert (=> b!4445419 (= res!1841334 (dynLambda!20926 lambda!158116 (h!55588 (toList!3705 lt!1639545))))))

(declare-fun b!4445420 () Bool)

(assert (=> b!4445420 (= e!2767873 (forall!9742 (t!356917 (toList!3705 lt!1639545)) lambda!158116))))

(assert (= (and d!1349722 (not res!1841333)) b!4445419))

(assert (= (and b!4445419 res!1841334) b!4445420))

(declare-fun b_lambda!145505 () Bool)

(assert (=> (not b_lambda!145505) (not b!4445419)))

(declare-fun m!5135769 () Bool)

(assert (=> b!4445419 m!5135769))

(declare-fun m!5135771 () Bool)

(assert (=> b!4445420 m!5135771))

(assert (=> b!4445349 d!1349722))

(declare-fun d!1349724 () Bool)

(declare-fun e!2767881 () Bool)

(assert (=> d!1349724 e!2767881))

(declare-fun res!1841347 () Bool)

(assert (=> d!1349724 (=> (not res!1841347) (not e!2767881))))

(declare-fun lt!1639650 () ListLongMap!2355)

(assert (=> d!1349724 (= res!1841347 (contains!12433 lt!1639650 (_1!28202 lt!1639543)))))

(declare-fun lt!1639648 () List!49975)

(assert (=> d!1349724 (= lt!1639650 (ListLongMap!2356 lt!1639648))))

(declare-fun lt!1639647 () Unit!84352)

(declare-fun lt!1639649 () Unit!84352)

(assert (=> d!1349724 (= lt!1639647 lt!1639649)))

(assert (=> d!1349724 (= (getValueByKey!811 lt!1639648 (_1!28202 lt!1639543)) (Some!10824 (_2!28202 lt!1639543)))))

(declare-fun lemmaContainsTupThenGetReturnValue!527 (List!49975 (_ BitVec 64) List!49974) Unit!84352)

(assert (=> d!1349724 (= lt!1639649 (lemmaContainsTupThenGetReturnValue!527 lt!1639648 (_1!28202 lt!1639543) (_2!28202 lt!1639543)))))

(declare-fun insertStrictlySorted!308 (List!49975 (_ BitVec 64) List!49974) List!49975)

(assert (=> d!1349724 (= lt!1639648 (insertStrictlySorted!308 (toList!3705 lm!1616) (_1!28202 lt!1639543) (_2!28202 lt!1639543)))))

(assert (=> d!1349724 (= (+!1256 lm!1616 lt!1639543) lt!1639650)))

(declare-fun b!4445436 () Bool)

(declare-fun res!1841346 () Bool)

(assert (=> b!4445436 (=> (not res!1841346) (not e!2767881))))

(assert (=> b!4445436 (= res!1841346 (= (getValueByKey!811 (toList!3705 lt!1639650) (_1!28202 lt!1639543)) (Some!10824 (_2!28202 lt!1639543))))))

(declare-fun b!4445437 () Bool)

(declare-fun contains!12438 (List!49975 tuple2!49816) Bool)

(assert (=> b!4445437 (= e!2767881 (contains!12438 (toList!3705 lt!1639650) lt!1639543))))

(assert (= (and d!1349724 res!1841347) b!4445436))

(assert (= (and b!4445436 res!1841346) b!4445437))

(declare-fun m!5135805 () Bool)

(assert (=> d!1349724 m!5135805))

(declare-fun m!5135807 () Bool)

(assert (=> d!1349724 m!5135807))

(declare-fun m!5135809 () Bool)

(assert (=> d!1349724 m!5135809))

(declare-fun m!5135811 () Bool)

(assert (=> d!1349724 m!5135811))

(declare-fun m!5135813 () Bool)

(assert (=> b!4445436 m!5135813))

(declare-fun m!5135815 () Bool)

(assert (=> b!4445437 m!5135815))

(assert (=> b!4445349 d!1349724))

(declare-fun d!1349728 () Bool)

(assert (=> d!1349728 (forall!9742 (toList!3705 (+!1256 lm!1616 (tuple2!49817 hash!366 newBucket!194))) lambda!158116)))

(declare-fun lt!1639656 () Unit!84352)

(declare-fun choose!28269 (ListLongMap!2355 Int (_ BitVec 64) List!49974) Unit!84352)

(assert (=> d!1349728 (= lt!1639656 (choose!28269 lm!1616 lambda!158116 hash!366 newBucket!194))))

(declare-fun e!2767884 () Bool)

(assert (=> d!1349728 e!2767884))

(declare-fun res!1841350 () Bool)

(assert (=> d!1349728 (=> (not res!1841350) (not e!2767884))))

(assert (=> d!1349728 (= res!1841350 (forall!9742 (toList!3705 lm!1616) lambda!158116))))

(assert (=> d!1349728 (= (addValidProp!497 lm!1616 lambda!158116 hash!366 newBucket!194) lt!1639656)))

(declare-fun b!4445441 () Bool)

(assert (=> b!4445441 (= e!2767884 (dynLambda!20926 lambda!158116 (tuple2!49817 hash!366 newBucket!194)))))

(assert (= (and d!1349728 res!1841350) b!4445441))

(declare-fun b_lambda!145507 () Bool)

(assert (=> (not b_lambda!145507) (not b!4445441)))

(declare-fun m!5135823 () Bool)

(assert (=> d!1349728 m!5135823))

(declare-fun m!5135825 () Bool)

(assert (=> d!1349728 m!5135825))

(declare-fun m!5135827 () Bool)

(assert (=> d!1349728 m!5135827))

(assert (=> d!1349728 m!5135651))

(declare-fun m!5135829 () Bool)

(assert (=> b!4445441 m!5135829))

(assert (=> b!4445349 d!1349728))

(declare-fun bs!765714 () Bool)

(declare-fun d!1349732 () Bool)

(assert (= bs!765714 (and d!1349732 start!435236)))

(declare-fun lambda!158160 () Int)

(assert (=> bs!765714 (not (= lambda!158160 lambda!158116))))

(declare-fun bs!765715 () Bool)

(assert (= bs!765715 (and d!1349732 d!1349714)))

(assert (=> bs!765715 (not (= lambda!158160 lambda!158119))))

(declare-fun bs!765716 () Bool)

(assert (= bs!765716 (and d!1349732 d!1349720)))

(assert (=> bs!765716 (not (= lambda!158160 lambda!158143))))

(assert (=> d!1349732 true))

(assert (=> d!1349732 (= (allKeysSameHashInMap!965 lm!1616 hashF!1220) (forall!9742 (toList!3705 lm!1616) lambda!158160))))

(declare-fun bs!765717 () Bool)

(assert (= bs!765717 d!1349732))

(declare-fun m!5135831 () Bool)

(assert (=> bs!765717 m!5135831))

(assert (=> b!4445350 d!1349732))

(declare-fun d!1349734 () Bool)

(declare-fun e!2767893 () Bool)

(assert (=> d!1349734 e!2767893))

(declare-fun res!1841359 () Bool)

(assert (=> d!1349734 (=> res!1841359 e!2767893)))

(declare-fun lt!1639680 () Bool)

(assert (=> d!1349734 (= res!1841359 (not lt!1639680))))

(declare-fun lt!1639682 () Bool)

(assert (=> d!1349734 (= lt!1639680 lt!1639682)))

(declare-fun lt!1639681 () Unit!84352)

(declare-fun e!2767892 () Unit!84352)

(assert (=> d!1349734 (= lt!1639681 e!2767892)))

(declare-fun c!756537 () Bool)

(assert (=> d!1349734 (= c!756537 lt!1639682)))

(declare-fun containsKey!1280 (List!49975 (_ BitVec 64)) Bool)

(assert (=> d!1349734 (= lt!1639682 (containsKey!1280 (toList!3705 lm!1616) hash!366))))

(assert (=> d!1349734 (= (contains!12433 lm!1616 hash!366) lt!1639680)))

(declare-fun b!4445458 () Bool)

(declare-fun lt!1639677 () Unit!84352)

(assert (=> b!4445458 (= e!2767892 lt!1639677)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!719 (List!49975 (_ BitVec 64)) Unit!84352)

(assert (=> b!4445458 (= lt!1639677 (lemmaContainsKeyImpliesGetValueByKeyDefined!719 (toList!3705 lm!1616) hash!366))))

(declare-fun isDefined!8116 (Option!10825) Bool)

(assert (=> b!4445458 (isDefined!8116 (getValueByKey!811 (toList!3705 lm!1616) hash!366))))

(declare-fun b!4445459 () Bool)

(declare-fun Unit!84374 () Unit!84352)

(assert (=> b!4445459 (= e!2767892 Unit!84374)))

(declare-fun b!4445460 () Bool)

(assert (=> b!4445460 (= e!2767893 (isDefined!8116 (getValueByKey!811 (toList!3705 lm!1616) hash!366)))))

(assert (= (and d!1349734 c!756537) b!4445458))

(assert (= (and d!1349734 (not c!756537)) b!4445459))

(assert (= (and d!1349734 (not res!1841359)) b!4445460))

(declare-fun m!5135845 () Bool)

(assert (=> d!1349734 m!5135845))

(declare-fun m!5135847 () Bool)

(assert (=> b!4445458 m!5135847))

(declare-fun m!5135849 () Bool)

(assert (=> b!4445458 m!5135849))

(assert (=> b!4445458 m!5135849))

(declare-fun m!5135851 () Bool)

(assert (=> b!4445458 m!5135851))

(assert (=> b!4445460 m!5135849))

(assert (=> b!4445460 m!5135849))

(assert (=> b!4445460 m!5135851))

(assert (=> b!4445357 d!1349734))

(declare-fun d!1349738 () Bool)

(declare-fun res!1841364 () Bool)

(declare-fun e!2767901 () Bool)

(assert (=> d!1349738 (=> res!1841364 e!2767901)))

(assert (=> d!1349738 (= res!1841364 (not ((_ is Cons!49850) newBucket!194)))))

(assert (=> d!1349738 (= (noDuplicateKeys!859 newBucket!194) e!2767901)))

(declare-fun b!4445469 () Bool)

(declare-fun e!2767902 () Bool)

(assert (=> b!4445469 (= e!2767901 e!2767902)))

(declare-fun res!1841365 () Bool)

(assert (=> b!4445469 (=> (not res!1841365) (not e!2767902))))

(assert (=> b!4445469 (= res!1841365 (not (containsKey!1276 (t!356916 newBucket!194) (_1!28201 (h!55587 newBucket!194)))))))

(declare-fun b!4445470 () Bool)

(assert (=> b!4445470 (= e!2767902 (noDuplicateKeys!859 (t!356916 newBucket!194)))))

(assert (= (and d!1349738 (not res!1841364)) b!4445469))

(assert (= (and b!4445469 res!1841365) b!4445470))

(declare-fun m!5135861 () Bool)

(assert (=> b!4445469 m!5135861))

(declare-fun m!5135863 () Bool)

(assert (=> b!4445470 m!5135863))

(assert (=> b!4445346 d!1349738))

(declare-fun d!1349742 () Bool)

(declare-fun e!2767903 () Bool)

(assert (=> d!1349742 e!2767903))

(declare-fun res!1841367 () Bool)

(assert (=> d!1349742 (=> (not res!1841367) (not e!2767903))))

(declare-fun lt!1639687 () ListLongMap!2355)

(assert (=> d!1349742 (= res!1841367 (contains!12433 lt!1639687 (_1!28202 lt!1639543)))))

(declare-fun lt!1639685 () List!49975)

(assert (=> d!1349742 (= lt!1639687 (ListLongMap!2356 lt!1639685))))

(declare-fun lt!1639684 () Unit!84352)

(declare-fun lt!1639686 () Unit!84352)

(assert (=> d!1349742 (= lt!1639684 lt!1639686)))

(assert (=> d!1349742 (= (getValueByKey!811 lt!1639685 (_1!28202 lt!1639543)) (Some!10824 (_2!28202 lt!1639543)))))

(assert (=> d!1349742 (= lt!1639686 (lemmaContainsTupThenGetReturnValue!527 lt!1639685 (_1!28202 lt!1639543) (_2!28202 lt!1639543)))))

(assert (=> d!1349742 (= lt!1639685 (insertStrictlySorted!308 (toList!3705 lt!1639537) (_1!28202 lt!1639543) (_2!28202 lt!1639543)))))

(assert (=> d!1349742 (= (+!1256 lt!1639537 lt!1639543) lt!1639687)))

(declare-fun b!4445471 () Bool)

(declare-fun res!1841366 () Bool)

(assert (=> b!4445471 (=> (not res!1841366) (not e!2767903))))

(assert (=> b!4445471 (= res!1841366 (= (getValueByKey!811 (toList!3705 lt!1639687) (_1!28202 lt!1639543)) (Some!10824 (_2!28202 lt!1639543))))))

(declare-fun b!4445472 () Bool)

(assert (=> b!4445472 (= e!2767903 (contains!12438 (toList!3705 lt!1639687) lt!1639543))))

(assert (= (and d!1349742 res!1841367) b!4445471))

(assert (= (and b!4445471 res!1841366) b!4445472))

(declare-fun m!5135865 () Bool)

(assert (=> d!1349742 m!5135865))

(declare-fun m!5135867 () Bool)

(assert (=> d!1349742 m!5135867))

(declare-fun m!5135869 () Bool)

(assert (=> d!1349742 m!5135869))

(declare-fun m!5135871 () Bool)

(assert (=> d!1349742 m!5135871))

(declare-fun m!5135873 () Bool)

(assert (=> b!4445471 m!5135873))

(declare-fun m!5135875 () Bool)

(assert (=> b!4445472 m!5135875))

(assert (=> b!4445348 d!1349742))

(declare-fun d!1349744 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8023 (List!49974) (InoxSet tuple2!49814))

(assert (=> d!1349744 (= (eq!459 lt!1639536 (+!1255 lt!1639534 (tuple2!49815 key!3717 newValue!93))) (= (content!8023 (toList!3706 lt!1639536)) (content!8023 (toList!3706 (+!1255 lt!1639534 (tuple2!49815 key!3717 newValue!93))))))))

(declare-fun bs!765720 () Bool)

(assert (= bs!765720 d!1349744))

(declare-fun m!5135877 () Bool)

(assert (=> bs!765720 m!5135877))

(declare-fun m!5135879 () Bool)

(assert (=> bs!765720 m!5135879))

(assert (=> b!4445348 d!1349744))

(declare-fun bs!765721 () Bool)

(declare-fun d!1349746 () Bool)

(assert (= bs!765721 (and d!1349746 start!435236)))

(declare-fun lambda!158164 () Int)

(assert (=> bs!765721 (= lambda!158164 lambda!158116)))

(declare-fun bs!765722 () Bool)

(assert (= bs!765722 (and d!1349746 d!1349714)))

(assert (=> bs!765722 (= lambda!158164 lambda!158119)))

(declare-fun bs!765723 () Bool)

(assert (= bs!765723 (and d!1349746 d!1349720)))

(assert (=> bs!765723 (= lambda!158164 lambda!158143)))

(declare-fun bs!765724 () Bool)

(assert (= bs!765724 (and d!1349746 d!1349732)))

(assert (=> bs!765724 (not (= lambda!158164 lambda!158160))))

(declare-fun lt!1639696 () ListMap!2949)

(assert (=> d!1349746 (invariantList!854 (toList!3706 lt!1639696))))

(declare-fun e!2767906 () ListMap!2949)

(assert (=> d!1349746 (= lt!1639696 e!2767906)))

(declare-fun c!756541 () Bool)

(assert (=> d!1349746 (= c!756541 ((_ is Cons!49851) (toList!3705 (+!1256 lt!1639537 lt!1639543))))))

(assert (=> d!1349746 (forall!9742 (toList!3705 (+!1256 lt!1639537 lt!1639543)) lambda!158164)))

(assert (=> d!1349746 (= (extractMap!920 (toList!3705 (+!1256 lt!1639537 lt!1639543))) lt!1639696)))

(declare-fun b!4445477 () Bool)

(assert (=> b!4445477 (= e!2767906 (addToMapMapFromBucket!465 (_2!28202 (h!55588 (toList!3705 (+!1256 lt!1639537 lt!1639543)))) (extractMap!920 (t!356917 (toList!3705 (+!1256 lt!1639537 lt!1639543))))))))

(declare-fun b!4445478 () Bool)

(assert (=> b!4445478 (= e!2767906 (ListMap!2950 Nil!49850))))

(assert (= (and d!1349746 c!756541) b!4445477))

(assert (= (and d!1349746 (not c!756541)) b!4445478))

(declare-fun m!5135881 () Bool)

(assert (=> d!1349746 m!5135881))

(declare-fun m!5135885 () Bool)

(assert (=> d!1349746 m!5135885))

(declare-fun m!5135889 () Bool)

(assert (=> b!4445477 m!5135889))

(assert (=> b!4445477 m!5135889))

(declare-fun m!5135899 () Bool)

(assert (=> b!4445477 m!5135899))

(assert (=> b!4445348 d!1349746))

(declare-fun d!1349750 () Bool)

(declare-fun e!2767911 () Bool)

(assert (=> d!1349750 e!2767911))

(declare-fun res!1841379 () Bool)

(assert (=> d!1349750 (=> (not res!1841379) (not e!2767911))))

(declare-fun lt!1639714 () ListMap!2949)

(assert (=> d!1349750 (= res!1841379 (contains!12432 lt!1639714 (_1!28201 (tuple2!49815 key!3717 newValue!93))))))

(declare-fun lt!1639713 () List!49974)

(assert (=> d!1349750 (= lt!1639714 (ListMap!2950 lt!1639713))))

(declare-fun lt!1639716 () Unit!84352)

(declare-fun lt!1639715 () Unit!84352)

(assert (=> d!1349750 (= lt!1639716 lt!1639715)))

(assert (=> d!1349750 (= (getValueByKey!812 lt!1639713 (_1!28201 (tuple2!49815 key!3717 newValue!93))) (Some!10825 (_2!28201 (tuple2!49815 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!528 (List!49974 K!11220 V!11466) Unit!84352)

(assert (=> d!1349750 (= lt!1639715 (lemmaContainsTupThenGetReturnValue!528 lt!1639713 (_1!28201 (tuple2!49815 key!3717 newValue!93)) (_2!28201 (tuple2!49815 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!228 (List!49974 K!11220 V!11466) List!49974)

(assert (=> d!1349750 (= lt!1639713 (insertNoDuplicatedKeys!228 (toList!3706 lt!1639534) (_1!28201 (tuple2!49815 key!3717 newValue!93)) (_2!28201 (tuple2!49815 key!3717 newValue!93))))))

(assert (=> d!1349750 (= (+!1255 lt!1639534 (tuple2!49815 key!3717 newValue!93)) lt!1639714)))

(declare-fun b!4445487 () Bool)

(declare-fun res!1841378 () Bool)

(assert (=> b!4445487 (=> (not res!1841378) (not e!2767911))))

(assert (=> b!4445487 (= res!1841378 (= (getValueByKey!812 (toList!3706 lt!1639714) (_1!28201 (tuple2!49815 key!3717 newValue!93))) (Some!10825 (_2!28201 (tuple2!49815 key!3717 newValue!93)))))))

(declare-fun b!4445488 () Bool)

(declare-fun contains!12439 (List!49974 tuple2!49814) Bool)

(assert (=> b!4445488 (= e!2767911 (contains!12439 (toList!3706 lt!1639714) (tuple2!49815 key!3717 newValue!93)))))

(assert (= (and d!1349750 res!1841379) b!4445487))

(assert (= (and b!4445487 res!1841378) b!4445488))

(declare-fun m!5135927 () Bool)

(assert (=> d!1349750 m!5135927))

(declare-fun m!5135929 () Bool)

(assert (=> d!1349750 m!5135929))

(declare-fun m!5135931 () Bool)

(assert (=> d!1349750 m!5135931))

(declare-fun m!5135933 () Bool)

(assert (=> d!1349750 m!5135933))

(declare-fun m!5135935 () Bool)

(assert (=> b!4445487 m!5135935))

(declare-fun m!5135937 () Bool)

(assert (=> b!4445488 m!5135937))

(assert (=> b!4445348 d!1349750))

(declare-fun d!1349762 () Bool)

(assert (=> d!1349762 (= (tail!7418 lm!1616) (ListLongMap!2356 (tail!7419 (toList!3705 lm!1616))))))

(declare-fun bs!765741 () Bool)

(assert (= bs!765741 d!1349762))

(assert (=> bs!765741 m!5135663))

(assert (=> b!4445348 d!1349762))

(declare-fun bs!765742 () Bool)

(declare-fun d!1349764 () Bool)

(assert (= bs!765742 (and d!1349764 d!1349714)))

(declare-fun lambda!158170 () Int)

(assert (=> bs!765742 (= lambda!158170 lambda!158119)))

(declare-fun bs!765743 () Bool)

(assert (= bs!765743 (and d!1349764 d!1349732)))

(assert (=> bs!765743 (not (= lambda!158170 lambda!158160))))

(declare-fun bs!765744 () Bool)

(assert (= bs!765744 (and d!1349764 start!435236)))

(assert (=> bs!765744 (= lambda!158170 lambda!158116)))

(declare-fun bs!765745 () Bool)

(assert (= bs!765745 (and d!1349764 d!1349720)))

(assert (=> bs!765745 (= lambda!158170 lambda!158143)))

(declare-fun bs!765746 () Bool)

(assert (= bs!765746 (and d!1349764 d!1349746)))

(assert (=> bs!765746 (= lambda!158170 lambda!158164)))

(declare-fun lt!1639718 () ListMap!2949)

(assert (=> d!1349764 (invariantList!854 (toList!3706 lt!1639718))))

(declare-fun e!2767913 () ListMap!2949)

(assert (=> d!1349764 (= lt!1639718 e!2767913)))

(declare-fun c!756544 () Bool)

(assert (=> d!1349764 (= c!756544 ((_ is Cons!49851) (tail!7419 (toList!3705 lm!1616))))))

(assert (=> d!1349764 (forall!9742 (tail!7419 (toList!3705 lm!1616)) lambda!158170)))

(assert (=> d!1349764 (= (extractMap!920 (tail!7419 (toList!3705 lm!1616))) lt!1639718)))

(declare-fun b!4445491 () Bool)

(assert (=> b!4445491 (= e!2767913 (addToMapMapFromBucket!465 (_2!28202 (h!55588 (tail!7419 (toList!3705 lm!1616)))) (extractMap!920 (t!356917 (tail!7419 (toList!3705 lm!1616))))))))

(declare-fun b!4445492 () Bool)

(assert (=> b!4445492 (= e!2767913 (ListMap!2950 Nil!49850))))

(assert (= (and d!1349764 c!756544) b!4445491))

(assert (= (and d!1349764 (not c!756544)) b!4445492))

(declare-fun m!5135947 () Bool)

(assert (=> d!1349764 m!5135947))

(assert (=> d!1349764 m!5135663))

(declare-fun m!5135949 () Bool)

(assert (=> d!1349764 m!5135949))

(declare-fun m!5135951 () Bool)

(assert (=> b!4445491 m!5135951))

(assert (=> b!4445491 m!5135951))

(declare-fun m!5135953 () Bool)

(assert (=> b!4445491 m!5135953))

(assert (=> b!4445348 d!1349764))

(declare-fun bs!765747 () Bool)

(declare-fun d!1349770 () Bool)

(assert (= bs!765747 (and d!1349770 d!1349714)))

(declare-fun lambda!158173 () Int)

(assert (=> bs!765747 (= lambda!158173 lambda!158119)))

(declare-fun bs!765748 () Bool)

(assert (= bs!765748 (and d!1349770 start!435236)))

(assert (=> bs!765748 (= lambda!158173 lambda!158116)))

(declare-fun bs!765749 () Bool)

(assert (= bs!765749 (and d!1349770 d!1349720)))

(assert (=> bs!765749 (= lambda!158173 lambda!158143)))

(declare-fun bs!765750 () Bool)

(assert (= bs!765750 (and d!1349770 d!1349746)))

(assert (=> bs!765750 (= lambda!158173 lambda!158164)))

(declare-fun bs!765751 () Bool)

(assert (= bs!765751 (and d!1349770 d!1349764)))

(assert (=> bs!765751 (= lambda!158173 lambda!158170)))

(declare-fun bs!765752 () Bool)

(assert (= bs!765752 (and d!1349770 d!1349732)))

(assert (=> bs!765752 (not (= lambda!158173 lambda!158160))))

(assert (=> d!1349770 (eq!459 (extractMap!920 (toList!3705 (+!1256 lt!1639537 (tuple2!49817 hash!366 newBucket!194)))) (+!1255 (extractMap!920 (toList!3705 lt!1639537)) (tuple2!49815 key!3717 newValue!93)))))

(declare-fun lt!1639737 () Unit!84352)

(declare-fun choose!28271 (ListLongMap!2355 (_ BitVec 64) List!49974 K!11220 V!11466 Hashable!5253) Unit!84352)

(assert (=> d!1349770 (= lt!1639737 (choose!28271 lt!1639537 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1349770 (forall!9742 (toList!3705 lt!1639537) lambda!158173)))

(assert (=> d!1349770 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!167 lt!1639537 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1639737)))

(declare-fun bs!765753 () Bool)

(assert (= bs!765753 d!1349770))

(assert (=> bs!765753 m!5135681))

(declare-fun m!5135955 () Bool)

(assert (=> bs!765753 m!5135955))

(assert (=> bs!765753 m!5135681))

(declare-fun m!5135957 () Bool)

(assert (=> bs!765753 m!5135957))

(declare-fun m!5135959 () Bool)

(assert (=> bs!765753 m!5135959))

(assert (=> bs!765753 m!5135957))

(declare-fun m!5135961 () Bool)

(assert (=> bs!765753 m!5135961))

(declare-fun m!5135963 () Bool)

(assert (=> bs!765753 m!5135963))

(assert (=> bs!765753 m!5135959))

(declare-fun m!5135965 () Bool)

(assert (=> bs!765753 m!5135965))

(assert (=> b!4445348 d!1349770))

(declare-fun d!1349772 () Bool)

(assert (=> d!1349772 (= (tail!7419 (toList!3705 lm!1616)) (t!356917 (toList!3705 lm!1616)))))

(assert (=> b!4445348 d!1349772))

(declare-fun d!1349774 () Bool)

(declare-fun e!2767929 () Bool)

(assert (=> d!1349774 e!2767929))

(declare-fun res!1841387 () Bool)

(assert (=> d!1349774 (=> res!1841387 e!2767929)))

(declare-fun e!2767930 () Bool)

(assert (=> d!1349774 (= res!1841387 e!2767930)))

(declare-fun res!1841386 () Bool)

(assert (=> d!1349774 (=> (not res!1841386) (not e!2767930))))

(declare-fun lt!1639743 () Bool)

(assert (=> d!1349774 (= res!1841386 (not lt!1639743))))

(declare-fun lt!1639742 () Bool)

(assert (=> d!1349774 (= lt!1639743 lt!1639742)))

(declare-fun lt!1639745 () Unit!84352)

(declare-fun e!2767926 () Unit!84352)

(assert (=> d!1349774 (= lt!1639745 e!2767926)))

(declare-fun c!756552 () Bool)

(assert (=> d!1349774 (= c!756552 lt!1639742)))

(assert (=> d!1349774 (= lt!1639742 (containsKey!1278 (toList!3706 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))) key!3717))))

(assert (=> d!1349774 (= (contains!12432 (extractMap!920 (tail!7419 (toList!3705 lm!1616))) key!3717) lt!1639743)))

(declare-fun b!4445511 () Bool)

(declare-fun lt!1639738 () Unit!84352)

(assert (=> b!4445511 (= e!2767926 lt!1639738)))

(declare-fun lt!1639741 () Unit!84352)

(assert (=> b!4445511 (= lt!1639741 (lemmaContainsKeyImpliesGetValueByKeyDefined!717 (toList!3706 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))) key!3717))))

(assert (=> b!4445511 (isDefined!8114 (getValueByKey!812 (toList!3706 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))) key!3717))))

(declare-fun lt!1639744 () Unit!84352)

(assert (=> b!4445511 (= lt!1639744 lt!1639741)))

(assert (=> b!4445511 (= lt!1639738 (lemmaInListThenGetKeysListContains!298 (toList!3706 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))) key!3717))))

(declare-fun call!309259 () Bool)

(assert (=> b!4445511 call!309259))

(declare-fun b!4445512 () Bool)

(declare-fun e!2767927 () List!49977)

(assert (=> b!4445512 (= e!2767927 (keys!17091 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))))))

(declare-fun b!4445513 () Bool)

(declare-fun e!2767928 () Unit!84352)

(assert (=> b!4445513 (= e!2767926 e!2767928)))

(declare-fun c!756553 () Bool)

(assert (=> b!4445513 (= c!756553 call!309259)))

(declare-fun bm!309254 () Bool)

(assert (=> bm!309254 (= call!309259 (contains!12437 e!2767927 key!3717))))

(declare-fun c!756551 () Bool)

(assert (=> bm!309254 (= c!756551 c!756552)))

(declare-fun b!4445514 () Bool)

(assert (=> b!4445514 false))

(declare-fun lt!1639739 () Unit!84352)

(declare-fun lt!1639740 () Unit!84352)

(assert (=> b!4445514 (= lt!1639739 lt!1639740)))

(assert (=> b!4445514 (containsKey!1278 (toList!3706 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))) key!3717)))

(assert (=> b!4445514 (= lt!1639740 (lemmaInGetKeysListThenContainsKey!299 (toList!3706 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))) key!3717))))

(declare-fun Unit!84375 () Unit!84352)

(assert (=> b!4445514 (= e!2767928 Unit!84375)))

(declare-fun b!4445515 () Bool)

(declare-fun e!2767931 () Bool)

(assert (=> b!4445515 (= e!2767929 e!2767931)))

(declare-fun res!1841388 () Bool)

(assert (=> b!4445515 (=> (not res!1841388) (not e!2767931))))

(assert (=> b!4445515 (= res!1841388 (isDefined!8114 (getValueByKey!812 (toList!3706 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))) key!3717)))))

(declare-fun b!4445516 () Bool)

(assert (=> b!4445516 (= e!2767931 (contains!12437 (keys!17091 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))) key!3717))))

(declare-fun b!4445517 () Bool)

(declare-fun Unit!84376 () Unit!84352)

(assert (=> b!4445517 (= e!2767928 Unit!84376)))

(declare-fun b!4445518 () Bool)

(assert (=> b!4445518 (= e!2767930 (not (contains!12437 (keys!17091 (extractMap!920 (tail!7419 (toList!3705 lm!1616)))) key!3717)))))

(declare-fun b!4445519 () Bool)

(assert (=> b!4445519 (= e!2767927 (getKeysList!301 (toList!3706 (extractMap!920 (tail!7419 (toList!3705 lm!1616))))))))

(assert (= (and d!1349774 c!756552) b!4445511))

(assert (= (and d!1349774 (not c!756552)) b!4445513))

(assert (= (and b!4445513 c!756553) b!4445514))

(assert (= (and b!4445513 (not c!756553)) b!4445517))

(assert (= (or b!4445511 b!4445513) bm!309254))

(assert (= (and bm!309254 c!756551) b!4445519))

(assert (= (and bm!309254 (not c!756551)) b!4445512))

(assert (= (and d!1349774 res!1841386) b!4445518))

(assert (= (and d!1349774 (not res!1841387)) b!4445515))

(assert (= (and b!4445515 res!1841388) b!4445516))

(assert (=> b!4445518 m!5135665))

(declare-fun m!5135967 () Bool)

(assert (=> b!4445518 m!5135967))

(assert (=> b!4445518 m!5135967))

(declare-fun m!5135969 () Bool)

(assert (=> b!4445518 m!5135969))

(declare-fun m!5135971 () Bool)

(assert (=> b!4445519 m!5135971))

(declare-fun m!5135973 () Bool)

(assert (=> b!4445511 m!5135973))

(declare-fun m!5135975 () Bool)

(assert (=> b!4445511 m!5135975))

(assert (=> b!4445511 m!5135975))

(declare-fun m!5135977 () Bool)

(assert (=> b!4445511 m!5135977))

(declare-fun m!5135979 () Bool)

(assert (=> b!4445511 m!5135979))

(assert (=> b!4445515 m!5135975))

(assert (=> b!4445515 m!5135975))

(assert (=> b!4445515 m!5135977))

(declare-fun m!5135981 () Bool)

(assert (=> b!4445514 m!5135981))

(declare-fun m!5135983 () Bool)

(assert (=> b!4445514 m!5135983))

(declare-fun m!5135985 () Bool)

(assert (=> bm!309254 m!5135985))

(assert (=> b!4445512 m!5135665))

(assert (=> b!4445512 m!5135967))

(assert (=> b!4445516 m!5135665))

(assert (=> b!4445516 m!5135967))

(assert (=> b!4445516 m!5135967))

(assert (=> b!4445516 m!5135969))

(assert (=> d!1349774 m!5135981))

(assert (=> b!4445348 d!1349774))

(declare-fun d!1349776 () Bool)

(declare-fun head!9302 (List!49975) tuple2!49816)

(assert (=> d!1349776 (= (head!9300 lm!1616) (head!9302 (toList!3705 lm!1616)))))

(declare-fun bs!765754 () Bool)

(assert (= bs!765754 d!1349776))

(declare-fun m!5136005 () Bool)

(assert (=> bs!765754 m!5136005))

(assert (=> b!4445348 d!1349776))

(declare-fun bs!765755 () Bool)

(declare-fun d!1349778 () Bool)

(assert (= bs!765755 (and d!1349778 d!1349714)))

(declare-fun lambda!158174 () Int)

(assert (=> bs!765755 (= lambda!158174 lambda!158119)))

(declare-fun bs!765756 () Bool)

(assert (= bs!765756 (and d!1349778 d!1349770)))

(assert (=> bs!765756 (= lambda!158174 lambda!158173)))

(declare-fun bs!765757 () Bool)

(assert (= bs!765757 (and d!1349778 start!435236)))

(assert (=> bs!765757 (= lambda!158174 lambda!158116)))

(declare-fun bs!765758 () Bool)

(assert (= bs!765758 (and d!1349778 d!1349720)))

(assert (=> bs!765758 (= lambda!158174 lambda!158143)))

(declare-fun bs!765759 () Bool)

(assert (= bs!765759 (and d!1349778 d!1349746)))

(assert (=> bs!765759 (= lambda!158174 lambda!158164)))

(declare-fun bs!765760 () Bool)

(assert (= bs!765760 (and d!1349778 d!1349764)))

(assert (=> bs!765760 (= lambda!158174 lambda!158170)))

(declare-fun bs!765761 () Bool)

(assert (= bs!765761 (and d!1349778 d!1349732)))

(assert (=> bs!765761 (not (= lambda!158174 lambda!158160))))

(declare-fun lt!1639754 () ListMap!2949)

(assert (=> d!1349778 (invariantList!854 (toList!3706 lt!1639754))))

(declare-fun e!2767938 () ListMap!2949)

(assert (=> d!1349778 (= lt!1639754 e!2767938)))

(declare-fun c!756557 () Bool)

(assert (=> d!1349778 (= c!756557 ((_ is Cons!49851) (toList!3705 lt!1639537)))))

(assert (=> d!1349778 (forall!9742 (toList!3705 lt!1639537) lambda!158174)))

(assert (=> d!1349778 (= (extractMap!920 (toList!3705 lt!1639537)) lt!1639754)))

(declare-fun b!4445529 () Bool)

(assert (=> b!4445529 (= e!2767938 (addToMapMapFromBucket!465 (_2!28202 (h!55588 (toList!3705 lt!1639537))) (extractMap!920 (t!356917 (toList!3705 lt!1639537)))))))

(declare-fun b!4445530 () Bool)

(assert (=> b!4445530 (= e!2767938 (ListMap!2950 Nil!49850))))

(assert (= (and d!1349778 c!756557) b!4445529))

(assert (= (and d!1349778 (not c!756557)) b!4445530))

(declare-fun m!5136009 () Bool)

(assert (=> d!1349778 m!5136009))

(declare-fun m!5136011 () Bool)

(assert (=> d!1349778 m!5136011))

(declare-fun m!5136013 () Bool)

(assert (=> b!4445529 m!5136013))

(assert (=> b!4445529 m!5136013))

(declare-fun m!5136015 () Bool)

(assert (=> b!4445529 m!5136015))

(assert (=> b!4445348 d!1349778))

(assert (=> start!435236 d!1349716))

(declare-fun d!1349782 () Bool)

(declare-fun isStrictlySorted!280 (List!49975) Bool)

(assert (=> d!1349782 (= (inv!65406 lm!1616) (isStrictlySorted!280 (toList!3705 lm!1616)))))

(declare-fun bs!765762 () Bool)

(assert (= bs!765762 d!1349782))

(declare-fun m!5136017 () Bool)

(assert (=> bs!765762 m!5136017))

(assert (=> start!435236 d!1349782))

(declare-fun d!1349784 () Bool)

(declare-fun hash!2333 (Hashable!5253 K!11220) (_ BitVec 64))

(assert (=> d!1349784 (= (hash!2327 hashF!1220 key!3717) (hash!2333 hashF!1220 key!3717))))

(declare-fun bs!765763 () Bool)

(assert (= bs!765763 d!1349784))

(declare-fun m!5136023 () Bool)

(assert (=> bs!765763 m!5136023))

(assert (=> b!4445347 d!1349784))

(declare-fun d!1349790 () Bool)

(assert (=> d!1349790 true))

(assert (=> d!1349790 true))

(declare-fun lambda!158177 () Int)

(declare-fun forall!9744 (List!49974 Int) Bool)

(assert (=> d!1349790 (= (allKeysSameHash!819 newBucket!194 hash!366 hashF!1220) (forall!9744 newBucket!194 lambda!158177))))

(declare-fun bs!765765 () Bool)

(assert (= bs!765765 d!1349790))

(declare-fun m!5136029 () Bool)

(assert (=> bs!765765 m!5136029))

(assert (=> b!4445344 d!1349790))

(declare-fun bs!765774 () Bool)

(declare-fun d!1349794 () Bool)

(assert (= bs!765774 (and d!1349794 d!1349778)))

(declare-fun lambda!158183 () Int)

(assert (=> bs!765774 (= lambda!158183 lambda!158174)))

(declare-fun bs!765775 () Bool)

(assert (= bs!765775 (and d!1349794 d!1349714)))

(assert (=> bs!765775 (= lambda!158183 lambda!158119)))

(declare-fun bs!765776 () Bool)

(assert (= bs!765776 (and d!1349794 d!1349770)))

(assert (=> bs!765776 (= lambda!158183 lambda!158173)))

(declare-fun bs!765777 () Bool)

(assert (= bs!765777 (and d!1349794 start!435236)))

(assert (=> bs!765777 (= lambda!158183 lambda!158116)))

(declare-fun bs!765778 () Bool)

(assert (= bs!765778 (and d!1349794 d!1349720)))

(assert (=> bs!765778 (= lambda!158183 lambda!158143)))

(declare-fun bs!765779 () Bool)

(assert (= bs!765779 (and d!1349794 d!1349746)))

(assert (=> bs!765779 (= lambda!158183 lambda!158164)))

(declare-fun bs!765780 () Bool)

(assert (= bs!765780 (and d!1349794 d!1349764)))

(assert (=> bs!765780 (= lambda!158183 lambda!158170)))

(declare-fun bs!765781 () Bool)

(assert (= bs!765781 (and d!1349794 d!1349732)))

(assert (=> bs!765781 (not (= lambda!158183 lambda!158160))))

(assert (=> d!1349794 (contains!12432 (extractMap!920 (toList!3705 lm!1616)) key!3717)))

(declare-fun lt!1639772 () Unit!84352)

(declare-fun choose!28272 (ListLongMap!2355 K!11220 Hashable!5253) Unit!84352)

(assert (=> d!1349794 (= lt!1639772 (choose!28272 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1349794 (forall!9742 (toList!3705 lm!1616) lambda!158183)))

(assert (=> d!1349794 (= (lemmaExtractTailMapContainsThenExtractMapDoes!96 lm!1616 key!3717 hashF!1220) lt!1639772)))

(declare-fun bs!765782 () Bool)

(assert (= bs!765782 d!1349794))

(assert (=> bs!765782 m!5135703))

(assert (=> bs!765782 m!5135703))

(declare-fun m!5136045 () Bool)

(assert (=> bs!765782 m!5136045))

(declare-fun m!5136047 () Bool)

(assert (=> bs!765782 m!5136047))

(declare-fun m!5136049 () Bool)

(assert (=> bs!765782 m!5136049))

(assert (=> b!4445343 d!1349794))

(declare-fun d!1349802 () Bool)

(assert (=> d!1349802 (= (eq!459 lt!1639535 (addToMapMapFromBucket!465 (_2!28202 (h!55588 (toList!3705 lm!1616))) lt!1639534)) (= (content!8023 (toList!3706 lt!1639535)) (content!8023 (toList!3706 (addToMapMapFromBucket!465 (_2!28202 (h!55588 (toList!3705 lm!1616))) lt!1639534)))))))

(declare-fun bs!765783 () Bool)

(assert (= bs!765783 d!1349802))

(declare-fun m!5136051 () Bool)

(assert (=> bs!765783 m!5136051))

(declare-fun m!5136053 () Bool)

(assert (=> bs!765783 m!5136053))

(assert (=> b!4445354 d!1349802))

(declare-fun bs!765808 () Bool)

(declare-fun b!4445608 () Bool)

(assert (= bs!765808 (and b!4445608 d!1349790)))

(declare-fun lambda!158219 () Int)

(assert (=> bs!765808 (not (= lambda!158219 lambda!158177))))

(assert (=> b!4445608 true))

(declare-fun bs!765809 () Bool)

(declare-fun b!4445609 () Bool)

(assert (= bs!765809 (and b!4445609 d!1349790)))

(declare-fun lambda!158220 () Int)

(assert (=> bs!765809 (not (= lambda!158220 lambda!158177))))

(declare-fun bs!765810 () Bool)

(assert (= bs!765810 (and b!4445609 b!4445608)))

(assert (=> bs!765810 (= lambda!158220 lambda!158219)))

(assert (=> b!4445609 true))

(declare-fun lambda!158221 () Int)

(assert (=> bs!765809 (not (= lambda!158221 lambda!158177))))

(declare-fun lt!1639837 () ListMap!2949)

(assert (=> bs!765810 (= (= lt!1639837 lt!1639534) (= lambda!158221 lambda!158219))))

(assert (=> b!4445609 (= (= lt!1639837 lt!1639534) (= lambda!158221 lambda!158220))))

(assert (=> b!4445609 true))

(declare-fun bs!765811 () Bool)

(declare-fun d!1349804 () Bool)

(assert (= bs!765811 (and d!1349804 d!1349790)))

(declare-fun lambda!158222 () Int)

(assert (=> bs!765811 (not (= lambda!158222 lambda!158177))))

(declare-fun bs!765812 () Bool)

(assert (= bs!765812 (and d!1349804 b!4445608)))

(declare-fun lt!1639847 () ListMap!2949)

(assert (=> bs!765812 (= (= lt!1639847 lt!1639534) (= lambda!158222 lambda!158219))))

(declare-fun bs!765813 () Bool)

(assert (= bs!765813 (and d!1349804 b!4445609)))

(assert (=> bs!765813 (= (= lt!1639847 lt!1639534) (= lambda!158222 lambda!158220))))

(assert (=> bs!765813 (= (= lt!1639847 lt!1639837) (= lambda!158222 lambda!158221))))

(assert (=> d!1349804 true))

(declare-fun e!2767988 () Bool)

(assert (=> d!1349804 e!2767988))

(declare-fun res!1841427 () Bool)

(assert (=> d!1349804 (=> (not res!1841427) (not e!2767988))))

(assert (=> d!1349804 (= res!1841427 (forall!9744 (_2!28202 (h!55588 (toList!3705 lm!1616))) lambda!158222))))

(declare-fun e!2767986 () ListMap!2949)

(assert (=> d!1349804 (= lt!1639847 e!2767986)))

(declare-fun c!756567 () Bool)

(assert (=> d!1349804 (= c!756567 ((_ is Nil!49850) (_2!28202 (h!55588 (toList!3705 lm!1616)))))))

(assert (=> d!1349804 (noDuplicateKeys!859 (_2!28202 (h!55588 (toList!3705 lm!1616))))))

(assert (=> d!1349804 (= (addToMapMapFromBucket!465 (_2!28202 (h!55588 (toList!3705 lm!1616))) lt!1639534) lt!1639847)))

(declare-fun b!4445605 () Bool)

(declare-fun res!1841428 () Bool)

(assert (=> b!4445605 (=> (not res!1841428) (not e!2767988))))

(assert (=> b!4445605 (= res!1841428 (forall!9744 (toList!3706 lt!1639534) lambda!158222))))

(declare-fun b!4445606 () Bool)

(assert (=> b!4445606 (= e!2767988 (invariantList!854 (toList!3706 lt!1639847)))))

(declare-fun b!4445607 () Bool)

(declare-fun e!2767987 () Bool)

(assert (=> b!4445607 (= e!2767987 (forall!9744 (toList!3706 lt!1639534) lambda!158221))))

(declare-fun bm!309263 () Bool)

(declare-fun call!309269 () Unit!84352)

(declare-fun lemmaContainsAllItsOwnKeys!211 (ListMap!2949) Unit!84352)

(assert (=> bm!309263 (= call!309269 (lemmaContainsAllItsOwnKeys!211 lt!1639534))))

(assert (=> b!4445608 (= e!2767986 lt!1639534)))

(declare-fun lt!1639844 () Unit!84352)

(assert (=> b!4445608 (= lt!1639844 call!309269)))

(declare-fun call!309268 () Bool)

(assert (=> b!4445608 call!309268))

(declare-fun lt!1639833 () Unit!84352)

(assert (=> b!4445608 (= lt!1639833 lt!1639844)))

(declare-fun call!309270 () Bool)

(assert (=> b!4445608 call!309270))

(declare-fun lt!1639839 () Unit!84352)

(declare-fun Unit!84377 () Unit!84352)

(assert (=> b!4445608 (= lt!1639839 Unit!84377)))

(assert (=> b!4445609 (= e!2767986 lt!1639837)))

(declare-fun lt!1639841 () ListMap!2949)

(assert (=> b!4445609 (= lt!1639841 (+!1255 lt!1639534 (h!55587 (_2!28202 (h!55588 (toList!3705 lm!1616))))))))

(assert (=> b!4445609 (= lt!1639837 (addToMapMapFromBucket!465 (t!356916 (_2!28202 (h!55588 (toList!3705 lm!1616)))) (+!1255 lt!1639534 (h!55587 (_2!28202 (h!55588 (toList!3705 lm!1616)))))))))

(declare-fun lt!1639849 () Unit!84352)

(assert (=> b!4445609 (= lt!1639849 call!309269)))

(assert (=> b!4445609 (forall!9744 (toList!3706 lt!1639534) lambda!158220)))

(declare-fun lt!1639838 () Unit!84352)

(assert (=> b!4445609 (= lt!1639838 lt!1639849)))

(assert (=> b!4445609 (forall!9744 (toList!3706 lt!1639841) lambda!158221)))

(declare-fun lt!1639845 () Unit!84352)

(declare-fun Unit!84378 () Unit!84352)

(assert (=> b!4445609 (= lt!1639845 Unit!84378)))

(assert (=> b!4445609 call!309268))

(declare-fun lt!1639831 () Unit!84352)

(declare-fun Unit!84379 () Unit!84352)

(assert (=> b!4445609 (= lt!1639831 Unit!84379)))

(declare-fun lt!1639850 () Unit!84352)

(declare-fun Unit!84380 () Unit!84352)

(assert (=> b!4445609 (= lt!1639850 Unit!84380)))

(declare-fun lt!1639832 () Unit!84352)

(declare-fun forallContained!2153 (List!49974 Int tuple2!49814) Unit!84352)

(assert (=> b!4445609 (= lt!1639832 (forallContained!2153 (toList!3706 lt!1639841) lambda!158221 (h!55587 (_2!28202 (h!55588 (toList!3705 lm!1616))))))))

(assert (=> b!4445609 (contains!12432 lt!1639841 (_1!28201 (h!55587 (_2!28202 (h!55588 (toList!3705 lm!1616))))))))

(declare-fun lt!1639851 () Unit!84352)

(declare-fun Unit!84381 () Unit!84352)

(assert (=> b!4445609 (= lt!1639851 Unit!84381)))

(assert (=> b!4445609 (contains!12432 lt!1639837 (_1!28201 (h!55587 (_2!28202 (h!55588 (toList!3705 lm!1616))))))))

(declare-fun lt!1639834 () Unit!84352)

(declare-fun Unit!84382 () Unit!84352)

(assert (=> b!4445609 (= lt!1639834 Unit!84382)))

(assert (=> b!4445609 (forall!9744 (_2!28202 (h!55588 (toList!3705 lm!1616))) lambda!158221)))

(declare-fun lt!1639835 () Unit!84352)

(declare-fun Unit!84383 () Unit!84352)

(assert (=> b!4445609 (= lt!1639835 Unit!84383)))

(assert (=> b!4445609 (forall!9744 (toList!3706 lt!1639841) lambda!158221)))

(declare-fun lt!1639843 () Unit!84352)

(declare-fun Unit!84384 () Unit!84352)

(assert (=> b!4445609 (= lt!1639843 Unit!84384)))

(declare-fun lt!1639836 () Unit!84352)

(declare-fun Unit!84385 () Unit!84352)

(assert (=> b!4445609 (= lt!1639836 Unit!84385)))

(declare-fun lt!1639848 () Unit!84352)

(declare-fun addForallContainsKeyThenBeforeAdding!211 (ListMap!2949 ListMap!2949 K!11220 V!11466) Unit!84352)

(assert (=> b!4445609 (= lt!1639848 (addForallContainsKeyThenBeforeAdding!211 lt!1639534 lt!1639837 (_1!28201 (h!55587 (_2!28202 (h!55588 (toList!3705 lm!1616))))) (_2!28201 (h!55587 (_2!28202 (h!55588 (toList!3705 lm!1616)))))))))

(assert (=> b!4445609 (forall!9744 (toList!3706 lt!1639534) lambda!158221)))

(declare-fun lt!1639840 () Unit!84352)

(assert (=> b!4445609 (= lt!1639840 lt!1639848)))

(assert (=> b!4445609 call!309270))

(declare-fun lt!1639846 () Unit!84352)

(declare-fun Unit!84386 () Unit!84352)

(assert (=> b!4445609 (= lt!1639846 Unit!84386)))

(declare-fun res!1841429 () Bool)

(assert (=> b!4445609 (= res!1841429 (forall!9744 (_2!28202 (h!55588 (toList!3705 lm!1616))) lambda!158221))))

(assert (=> b!4445609 (=> (not res!1841429) (not e!2767987))))

(assert (=> b!4445609 e!2767987))

(declare-fun lt!1639842 () Unit!84352)

(declare-fun Unit!84387 () Unit!84352)

(assert (=> b!4445609 (= lt!1639842 Unit!84387)))

(declare-fun bm!309264 () Bool)

(assert (=> bm!309264 (= call!309268 (forall!9744 (ite c!756567 (toList!3706 lt!1639534) (t!356916 (_2!28202 (h!55588 (toList!3705 lm!1616))))) (ite c!756567 lambda!158219 lambda!158221)))))

(declare-fun bm!309265 () Bool)

(assert (=> bm!309265 (= call!309270 (forall!9744 (toList!3706 lt!1639534) (ite c!756567 lambda!158219 lambda!158221)))))

(assert (= (and d!1349804 c!756567) b!4445608))

(assert (= (and d!1349804 (not c!756567)) b!4445609))

(assert (= (and b!4445609 res!1841429) b!4445607))

(assert (= (or b!4445608 b!4445609) bm!309263))

(assert (= (or b!4445608 b!4445609) bm!309265))

(assert (= (or b!4445608 b!4445609) bm!309264))

(assert (= (and d!1349804 res!1841427) b!4445605))

(assert (= (and b!4445605 res!1841428) b!4445606))

(declare-fun m!5136125 () Bool)

(assert (=> b!4445606 m!5136125))

(declare-fun m!5136127 () Bool)

(assert (=> bm!309263 m!5136127))

(declare-fun m!5136129 () Bool)

(assert (=> b!4445607 m!5136129))

(declare-fun m!5136131 () Bool)

(assert (=> bm!309265 m!5136131))

(declare-fun m!5136133 () Bool)

(assert (=> b!4445605 m!5136133))

(declare-fun m!5136135 () Bool)

(assert (=> bm!309264 m!5136135))

(declare-fun m!5136137 () Bool)

(assert (=> d!1349804 m!5136137))

(assert (=> d!1349804 m!5135705))

(declare-fun m!5136139 () Bool)

(assert (=> b!4445609 m!5136139))

(declare-fun m!5136141 () Bool)

(assert (=> b!4445609 m!5136141))

(declare-fun m!5136143 () Bool)

(assert (=> b!4445609 m!5136143))

(declare-fun m!5136145 () Bool)

(assert (=> b!4445609 m!5136145))

(declare-fun m!5136147 () Bool)

(assert (=> b!4445609 m!5136147))

(declare-fun m!5136149 () Bool)

(assert (=> b!4445609 m!5136149))

(assert (=> b!4445609 m!5136145))

(declare-fun m!5136151 () Bool)

(assert (=> b!4445609 m!5136151))

(assert (=> b!4445609 m!5136141))

(declare-fun m!5136153 () Bool)

(assert (=> b!4445609 m!5136153))

(assert (=> b!4445609 m!5136129))

(declare-fun m!5136155 () Bool)

(assert (=> b!4445609 m!5136155))

(assert (=> b!4445609 m!5136149))

(assert (=> b!4445354 d!1349804))

(declare-fun d!1349830 () Bool)

(declare-fun res!1841430 () Bool)

(declare-fun e!2767989 () Bool)

(assert (=> d!1349830 (=> res!1841430 e!2767989)))

(assert (=> d!1349830 (= res!1841430 (not ((_ is Cons!49850) (_2!28202 (h!55588 (toList!3705 lm!1616))))))))

(assert (=> d!1349830 (= (noDuplicateKeys!859 (_2!28202 (h!55588 (toList!3705 lm!1616)))) e!2767989)))

(declare-fun b!4445612 () Bool)

(declare-fun e!2767990 () Bool)

(assert (=> b!4445612 (= e!2767989 e!2767990)))

(declare-fun res!1841431 () Bool)

(assert (=> b!4445612 (=> (not res!1841431) (not e!2767990))))

(assert (=> b!4445612 (= res!1841431 (not (containsKey!1276 (t!356916 (_2!28202 (h!55588 (toList!3705 lm!1616)))) (_1!28201 (h!55587 (_2!28202 (h!55588 (toList!3705 lm!1616))))))))))

(declare-fun b!4445613 () Bool)

(assert (=> b!4445613 (= e!2767990 (noDuplicateKeys!859 (t!356916 (_2!28202 (h!55588 (toList!3705 lm!1616))))))))

(assert (= (and d!1349830 (not res!1841430)) b!4445612))

(assert (= (and b!4445612 res!1841431) b!4445613))

(declare-fun m!5136157 () Bool)

(assert (=> b!4445612 m!5136157))

(declare-fun m!5136159 () Bool)

(assert (=> b!4445613 m!5136159))

(assert (=> b!4445356 d!1349830))

(declare-fun d!1349832 () Bool)

(assert (=> d!1349832 (= (apply!11711 lm!1616 hash!366) (get!16260 (getValueByKey!811 (toList!3705 lm!1616) hash!366)))))

(declare-fun bs!765814 () Bool)

(assert (= bs!765814 d!1349832))

(assert (=> bs!765814 m!5135849))

(assert (=> bs!765814 m!5135849))

(declare-fun m!5136161 () Bool)

(assert (=> bs!765814 m!5136161))

(assert (=> b!4445355 d!1349832))

(declare-fun b!4445618 () Bool)

(declare-fun e!2767993 () Bool)

(declare-fun tp!1334444 () Bool)

(declare-fun tp!1334445 () Bool)

(assert (=> b!4445618 (= e!2767993 (and tp!1334444 tp!1334445))))

(assert (=> b!4445352 (= tp!1334429 e!2767993)))

(assert (= (and b!4445352 ((_ is Cons!49851) (toList!3705 lm!1616))) b!4445618))

(declare-fun e!2767996 () Bool)

(declare-fun b!4445623 () Bool)

(declare-fun tp!1334448 () Bool)

(assert (=> b!4445623 (= e!2767996 (and tp_is_empty!26683 tp_is_empty!26681 tp!1334448))))

(assert (=> b!4445358 (= tp!1334430 e!2767996)))

(assert (= (and b!4445358 ((_ is Cons!49850) (t!356916 newBucket!194))) b!4445623))

(declare-fun b_lambda!145519 () Bool)

(assert (= b_lambda!145505 (or start!435236 b_lambda!145519)))

(declare-fun bs!765815 () Bool)

(declare-fun d!1349834 () Bool)

(assert (= bs!765815 (and d!1349834 start!435236)))

(assert (=> bs!765815 (= (dynLambda!20926 lambda!158116 (h!55588 (toList!3705 lt!1639545))) (noDuplicateKeys!859 (_2!28202 (h!55588 (toList!3705 lt!1639545)))))))

(declare-fun m!5136163 () Bool)

(assert (=> bs!765815 m!5136163))

(assert (=> b!4445419 d!1349834))

(declare-fun b_lambda!145521 () Bool)

(assert (= b_lambda!145503 (or start!435236 b_lambda!145521)))

(declare-fun bs!765816 () Bool)

(declare-fun d!1349836 () Bool)

(assert (= bs!765816 (and d!1349836 start!435236)))

(assert (=> bs!765816 (= (dynLambda!20926 lambda!158116 (h!55588 (toList!3705 lm!1616))) (noDuplicateKeys!859 (_2!28202 (h!55588 (toList!3705 lm!1616)))))))

(assert (=> bs!765816 m!5135705))

(assert (=> b!4445378 d!1349836))

(declare-fun b_lambda!145523 () Bool)

(assert (= b_lambda!145507 (or start!435236 b_lambda!145523)))

(declare-fun bs!765817 () Bool)

(declare-fun d!1349838 () Bool)

(assert (= bs!765817 (and d!1349838 start!435236)))

(assert (=> bs!765817 (= (dynLambda!20926 lambda!158116 (tuple2!49817 hash!366 newBucket!194)) (noDuplicateKeys!859 (_2!28202 (tuple2!49817 hash!366 newBucket!194))))))

(declare-fun m!5136165 () Bool)

(assert (=> bs!765817 m!5136165))

(assert (=> b!4445441 d!1349838))

(check-sat (not d!1349802) (not b!4445609) (not b!4445406) (not b!4445371) (not b!4445420) (not d!1349732) (not b_lambda!145523) (not d!1349764) (not d!1349742) (not d!1349794) (not b!4445472) (not b!4445460) (not b!4445512) (not b!4445519) (not b!4445613) (not bm!309242) (not d!1349718) (not bm!309264) (not b!4445516) (not b!4445515) (not bs!765817) (not d!1349744) (not b!4445471) (not b!4445529) (not d!1349790) (not b!4445469) (not b!4445511) (not b!4445437) (not b!4445405) (not d!1349770) (not b_lambda!145521) (not d!1349714) (not d!1349734) (not b!4445605) (not bm!309254) (not b!4445491) tp_is_empty!26681 (not b!4445607) (not b!4445514) (not bm!309265) (not b!4445402) (not b!4445458) (not b!4445487) (not bm!309263) (not b!4445606) (not b!4445470) (not d!1349778) (not b!4445401) (not b!4445612) (not d!1349832) (not bs!765815) (not bs!765816) (not b!4445399) (not d!1349712) (not b!4445618) (not d!1349776) (not b_lambda!145519) (not d!1349774) (not d!1349728) (not d!1349724) (not b!4445415) (not b!4445403) (not d!1349720) (not b!4445398) (not d!1349746) (not b!4445623) (not d!1349762) (not b!4445477) tp_is_empty!26683 (not d!1349784) (not b!4445379) (not d!1349804) (not d!1349750) (not d!1349782) (not b!4445518) (not b!4445436) (not b!4445373) (not b!4445488))
(check-sat)
