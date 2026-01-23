; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458240 () Bool)

(assert start!458240)

(declare-fun b!4595021 () Bool)

(declare-fun e!2866073 () Bool)

(declare-fun e!2866075 () Bool)

(assert (=> b!4595021 (= e!2866073 e!2866075)))

(declare-fun res!1921607 () Bool)

(assert (=> b!4595021 (=> res!1921607 e!2866075)))

(declare-datatypes ((K!12420 0))(
  ( (K!12421 (val!18207 Int)) )
))
(declare-datatypes ((V!12666 0))(
  ( (V!12667 (val!18208 Int)) )
))
(declare-datatypes ((tuple2!51682 0))(
  ( (tuple2!51683 (_1!29135 K!12420) (_2!29135 V!12666)) )
))
(declare-datatypes ((List!51176 0))(
  ( (Nil!51052) (Cons!51052 (h!57010 tuple2!51682) (t!358170 List!51176)) )
))
(declare-datatypes ((tuple2!51684 0))(
  ( (tuple2!51685 (_1!29136 (_ BitVec 64)) (_2!29136 List!51176)) )
))
(declare-datatypes ((List!51177 0))(
  ( (Nil!51053) (Cons!51053 (h!57011 tuple2!51684) (t!358171 List!51177)) )
))
(declare-datatypes ((ListLongMap!3263 0))(
  ( (ListLongMap!3264 (toList!4631 List!51177)) )
))
(declare-fun lm!1477 () ListLongMap!3263)

(declare-fun noDuplicateKeys!1308 (List!51176) Bool)

(assert (=> b!4595021 (= res!1921607 (not (noDuplicateKeys!1308 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(declare-fun lt!1755698 () List!51177)

(declare-fun key!3287 () K!12420)

(declare-datatypes ((ListMap!3893 0))(
  ( (ListMap!3894 (toList!4632 List!51176)) )
))
(declare-fun contains!13987 (ListMap!3893 K!12420) Bool)

(declare-fun extractMap!1368 (List!51177) ListMap!3893)

(assert (=> b!4595021 (contains!13987 (extractMap!1368 lt!1755698) key!3287)))

(declare-datatypes ((Hashable!5707 0))(
  ( (HashableExt!5706 (__x!31410 Int)) )
))
(declare-fun hashF!1107 () Hashable!5707)

(declare-datatypes ((Unit!107764 0))(
  ( (Unit!107765) )
))
(declare-fun lt!1755701 () Unit!107764)

(declare-fun lemmaListContainsThenExtractedMapContains!242 (ListLongMap!3263 K!12420 Hashable!5707) Unit!107764)

(assert (=> b!4595021 (= lt!1755701 (lemmaListContainsThenExtractedMapContains!242 (ListLongMap!3264 lt!1755698) key!3287 hashF!1107))))

(declare-fun b!4595022 () Bool)

(declare-fun res!1921614 () Bool)

(declare-fun e!2866078 () Bool)

(assert (=> b!4595022 (=> res!1921614 e!2866078)))

(declare-fun newBucket!178 () List!51176)

(assert (=> b!4595022 (= res!1921614 (not (noDuplicateKeys!1308 newBucket!178)))))

(declare-fun res!1921612 () Bool)

(declare-fun e!2866076 () Bool)

(assert (=> start!458240 (=> (not res!1921612) (not e!2866076))))

(declare-fun lambda!185574 () Int)

(declare-fun forall!10578 (List!51177 Int) Bool)

(assert (=> start!458240 (= res!1921612 (forall!10578 (toList!4631 lm!1477) lambda!185574))))

(assert (=> start!458240 e!2866076))

(assert (=> start!458240 true))

(declare-fun e!2866074 () Bool)

(declare-fun inv!66604 (ListLongMap!3263) Bool)

(assert (=> start!458240 (and (inv!66604 lm!1477) e!2866074)))

(declare-fun tp_is_empty!28525 () Bool)

(assert (=> start!458240 tp_is_empty!28525))

(declare-fun e!2866077 () Bool)

(assert (=> start!458240 e!2866077))

(declare-fun b!4595023 () Bool)

(declare-fun e!2866071 () Unit!107764)

(declare-fun Unit!107766 () Unit!107764)

(assert (=> b!4595023 (= e!2866071 Unit!107766)))

(declare-fun b!4595024 () Bool)

(declare-fun e!2866070 () Bool)

(assert (=> b!4595024 (= e!2866070 (not e!2866078))))

(declare-fun res!1921611 () Bool)

(assert (=> b!4595024 (=> res!1921611 e!2866078)))

(declare-fun lt!1755697 () List!51176)

(declare-fun removePairForKey!933 (List!51176 K!12420) List!51176)

(assert (=> b!4595024 (= res!1921611 (not (= newBucket!178 (removePairForKey!933 lt!1755697 key!3287))))))

(declare-fun lt!1755702 () tuple2!51684)

(declare-fun lt!1755700 () Unit!107764)

(declare-fun forallContained!2833 (List!51177 Int tuple2!51684) Unit!107764)

(assert (=> b!4595024 (= lt!1755700 (forallContained!2833 (toList!4631 lm!1477) lambda!185574 lt!1755702))))

(declare-fun contains!13988 (List!51177 tuple2!51684) Bool)

(assert (=> b!4595024 (contains!13988 (toList!4631 lm!1477) lt!1755702)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4595024 (= lt!1755702 (tuple2!51685 hash!344 lt!1755697))))

(declare-fun lt!1755706 () Unit!107764)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!818 (List!51177 (_ BitVec 64) List!51176) Unit!107764)

(assert (=> b!4595024 (= lt!1755706 (lemmaGetValueByKeyImpliesContainsTuple!818 (toList!4631 lm!1477) hash!344 lt!1755697))))

(declare-fun apply!12045 (ListLongMap!3263 (_ BitVec 64)) List!51176)

(assert (=> b!4595024 (= lt!1755697 (apply!12045 lm!1477 hash!344))))

(declare-fun lt!1755703 () (_ BitVec 64))

(declare-fun contains!13989 (ListLongMap!3263 (_ BitVec 64)) Bool)

(assert (=> b!4595024 (contains!13989 lm!1477 lt!1755703)))

(declare-fun lt!1755704 () Unit!107764)

(declare-fun lemmaInGenMapThenLongMapContainsHash!382 (ListLongMap!3263 K!12420 Hashable!5707) Unit!107764)

(assert (=> b!4595024 (= lt!1755704 (lemmaInGenMapThenLongMapContainsHash!382 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4595025 () Bool)

(declare-fun tp!1340287 () Bool)

(assert (=> b!4595025 (= e!2866074 tp!1340287)))

(declare-fun b!4595026 () Bool)

(declare-fun res!1921610 () Bool)

(assert (=> b!4595026 (=> res!1921610 e!2866075)))

(assert (=> b!4595026 (= res!1921610 (not (= (removePairForKey!933 (_2!29136 (h!57011 (toList!4631 lm!1477))) key!3287) newBucket!178)))))

(declare-fun b!4595027 () Bool)

(declare-fun Unit!107767 () Unit!107764)

(assert (=> b!4595027 (= e!2866071 Unit!107767)))

(declare-fun lt!1755707 () Unit!107764)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!278 (ListLongMap!3263 K!12420 Hashable!5707) Unit!107764)

(assert (=> b!4595027 (= lt!1755707 (lemmaNotInItsHashBucketThenNotInMap!278 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4595027 false))

(declare-fun b!4595028 () Bool)

(declare-fun res!1921613 () Bool)

(assert (=> b!4595028 (=> (not res!1921613) (not e!2866070))))

(declare-fun allKeysSameHash!1164 (List!51176 (_ BitVec 64) Hashable!5707) Bool)

(assert (=> b!4595028 (= res!1921613 (allKeysSameHash!1164 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4595029 () Bool)

(declare-fun e!2866072 () Bool)

(assert (=> b!4595029 (= e!2866078 e!2866072)))

(declare-fun res!1921616 () Bool)

(assert (=> b!4595029 (=> res!1921616 e!2866072)))

(declare-fun lt!1755705 () Bool)

(assert (=> b!4595029 (= res!1921616 lt!1755705)))

(declare-fun lt!1755699 () Unit!107764)

(assert (=> b!4595029 (= lt!1755699 e!2866071)))

(declare-fun c!786904 () Bool)

(assert (=> b!4595029 (= c!786904 lt!1755705)))

(declare-fun containsKey!2132 (List!51176 K!12420) Bool)

(assert (=> b!4595029 (= lt!1755705 (not (containsKey!2132 (_2!29136 (h!57011 (toList!4631 lm!1477))) key!3287)))))

(declare-fun b!4595030 () Bool)

(declare-fun res!1921605 () Bool)

(assert (=> b!4595030 (=> res!1921605 e!2866078)))

(get-info :version)

(assert (=> b!4595030 (= res!1921605 (or ((_ is Nil!51053) (toList!4631 lm!1477)) (not (= (_1!29136 (h!57011 (toList!4631 lm!1477))) hash!344))))))

(declare-fun b!4595031 () Bool)

(declare-fun res!1921609 () Bool)

(assert (=> b!4595031 (=> (not res!1921609) (not e!2866076))))

(assert (=> b!4595031 (= res!1921609 (contains!13987 (extractMap!1368 (toList!4631 lm!1477)) key!3287))))

(declare-fun b!4595032 () Bool)

(declare-fun res!1921606 () Bool)

(assert (=> b!4595032 (=> (not res!1921606) (not e!2866076))))

(declare-fun allKeysSameHashInMap!1419 (ListLongMap!3263 Hashable!5707) Bool)

(assert (=> b!4595032 (= res!1921606 (allKeysSameHashInMap!1419 lm!1477 hashF!1107))))

(declare-fun b!4595033 () Bool)

(assert (=> b!4595033 (= e!2866075 (allKeysSameHash!1164 (_2!29136 (h!57011 (toList!4631 lm!1477))) hash!344 hashF!1107))))

(declare-fun b!4595034 () Bool)

(assert (=> b!4595034 (= e!2866072 e!2866073)))

(declare-fun res!1921615 () Bool)

(assert (=> b!4595034 (=> res!1921615 e!2866073)))

(declare-fun containsKeyBiggerList!264 (List!51177 K!12420) Bool)

(assert (=> b!4595034 (= res!1921615 (not (containsKeyBiggerList!264 lt!1755698 key!3287)))))

(assert (=> b!4595034 (= lt!1755698 (Cons!51053 (h!57011 (toList!4631 lm!1477)) Nil!51053))))

(declare-fun b!4595035 () Bool)

(assert (=> b!4595035 (= e!2866076 e!2866070)))

(declare-fun res!1921608 () Bool)

(assert (=> b!4595035 (=> (not res!1921608) (not e!2866070))))

(assert (=> b!4595035 (= res!1921608 (= lt!1755703 hash!344))))

(declare-fun hash!3191 (Hashable!5707 K!12420) (_ BitVec 64))

(assert (=> b!4595035 (= lt!1755703 (hash!3191 hashF!1107 key!3287))))

(declare-fun tp!1340286 () Bool)

(declare-fun b!4595036 () Bool)

(declare-fun tp_is_empty!28527 () Bool)

(assert (=> b!4595036 (= e!2866077 (and tp_is_empty!28525 tp_is_empty!28527 tp!1340286))))

(assert (= (and start!458240 res!1921612) b!4595032))

(assert (= (and b!4595032 res!1921606) b!4595031))

(assert (= (and b!4595031 res!1921609) b!4595035))

(assert (= (and b!4595035 res!1921608) b!4595028))

(assert (= (and b!4595028 res!1921613) b!4595024))

(assert (= (and b!4595024 (not res!1921611)) b!4595022))

(assert (= (and b!4595022 (not res!1921614)) b!4595030))

(assert (= (and b!4595030 (not res!1921605)) b!4595029))

(assert (= (and b!4595029 c!786904) b!4595027))

(assert (= (and b!4595029 (not c!786904)) b!4595023))

(assert (= (and b!4595029 (not res!1921616)) b!4595034))

(assert (= (and b!4595034 (not res!1921615)) b!4595021))

(assert (= (and b!4595021 (not res!1921607)) b!4595026))

(assert (= (and b!4595026 (not res!1921610)) b!4595033))

(assert (= start!458240 b!4595025))

(assert (= (and start!458240 ((_ is Cons!51052) newBucket!178)) b!4595036))

(declare-fun m!5419275 () Bool)

(assert (=> b!4595029 m!5419275))

(declare-fun m!5419277 () Bool)

(assert (=> b!4595027 m!5419277))

(declare-fun m!5419279 () Bool)

(assert (=> b!4595031 m!5419279))

(assert (=> b!4595031 m!5419279))

(declare-fun m!5419281 () Bool)

(assert (=> b!4595031 m!5419281))

(declare-fun m!5419283 () Bool)

(assert (=> b!4595034 m!5419283))

(declare-fun m!5419285 () Bool)

(assert (=> b!4595026 m!5419285))

(declare-fun m!5419287 () Bool)

(assert (=> b!4595028 m!5419287))

(declare-fun m!5419289 () Bool)

(assert (=> b!4595035 m!5419289))

(declare-fun m!5419291 () Bool)

(assert (=> b!4595024 m!5419291))

(declare-fun m!5419293 () Bool)

(assert (=> b!4595024 m!5419293))

(declare-fun m!5419295 () Bool)

(assert (=> b!4595024 m!5419295))

(declare-fun m!5419297 () Bool)

(assert (=> b!4595024 m!5419297))

(declare-fun m!5419299 () Bool)

(assert (=> b!4595024 m!5419299))

(declare-fun m!5419301 () Bool)

(assert (=> b!4595024 m!5419301))

(declare-fun m!5419303 () Bool)

(assert (=> b!4595024 m!5419303))

(declare-fun m!5419305 () Bool)

(assert (=> b!4595033 m!5419305))

(declare-fun m!5419307 () Bool)

(assert (=> b!4595021 m!5419307))

(declare-fun m!5419309 () Bool)

(assert (=> b!4595021 m!5419309))

(assert (=> b!4595021 m!5419309))

(declare-fun m!5419311 () Bool)

(assert (=> b!4595021 m!5419311))

(declare-fun m!5419313 () Bool)

(assert (=> b!4595021 m!5419313))

(declare-fun m!5419315 () Bool)

(assert (=> start!458240 m!5419315))

(declare-fun m!5419317 () Bool)

(assert (=> start!458240 m!5419317))

(declare-fun m!5419319 () Bool)

(assert (=> b!4595032 m!5419319))

(declare-fun m!5419321 () Bool)

(assert (=> b!4595022 m!5419321))

(check-sat (not b!4595024) (not b!4595021) (not b!4595035) (not b!4595033) (not b!4595028) (not b!4595027) (not b!4595025) tp_is_empty!28525 tp_is_empty!28527 (not b!4595022) (not b!4595026) (not b!4595034) (not b!4595032) (not b!4595036) (not start!458240) (not b!4595031) (not b!4595029))
(check-sat)
(get-model)

(declare-fun d!1446212 () Bool)

(declare-fun res!1921624 () Bool)

(declare-fun e!2866087 () Bool)

(assert (=> d!1446212 (=> res!1921624 e!2866087)))

(declare-fun e!2866086 () Bool)

(assert (=> d!1446212 (= res!1921624 e!2866086)))

(declare-fun res!1921625 () Bool)

(assert (=> d!1446212 (=> (not res!1921625) (not e!2866086))))

(assert (=> d!1446212 (= res!1921625 ((_ is Cons!51053) lt!1755698))))

(assert (=> d!1446212 (= (containsKeyBiggerList!264 lt!1755698 key!3287) e!2866087)))

(declare-fun b!4595043 () Bool)

(assert (=> b!4595043 (= e!2866086 (containsKey!2132 (_2!29136 (h!57011 lt!1755698)) key!3287))))

(declare-fun b!4595044 () Bool)

(declare-fun e!2866085 () Bool)

(assert (=> b!4595044 (= e!2866087 e!2866085)))

(declare-fun res!1921623 () Bool)

(assert (=> b!4595044 (=> (not res!1921623) (not e!2866085))))

(assert (=> b!4595044 (= res!1921623 ((_ is Cons!51053) lt!1755698))))

(declare-fun b!4595045 () Bool)

(assert (=> b!4595045 (= e!2866085 (containsKeyBiggerList!264 (t!358171 lt!1755698) key!3287))))

(assert (= (and d!1446212 res!1921625) b!4595043))

(assert (= (and d!1446212 (not res!1921624)) b!4595044))

(assert (= (and b!4595044 res!1921623) b!4595045))

(declare-fun m!5419323 () Bool)

(assert (=> b!4595043 m!5419323))

(declare-fun m!5419325 () Bool)

(assert (=> b!4595045 m!5419325))

(assert (=> b!4595034 d!1446212))

(declare-fun bs!1008996 () Bool)

(declare-fun d!1446214 () Bool)

(assert (= bs!1008996 (and d!1446214 start!458240)))

(declare-fun lambda!185577 () Int)

(assert (=> bs!1008996 (= lambda!185577 lambda!185574)))

(assert (=> d!1446214 (contains!13989 lm!1477 (hash!3191 hashF!1107 key!3287))))

(declare-fun lt!1755710 () Unit!107764)

(declare-fun choose!30749 (ListLongMap!3263 K!12420 Hashable!5707) Unit!107764)

(assert (=> d!1446214 (= lt!1755710 (choose!30749 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1446214 (forall!10578 (toList!4631 lm!1477) lambda!185577)))

(assert (=> d!1446214 (= (lemmaInGenMapThenLongMapContainsHash!382 lm!1477 key!3287 hashF!1107) lt!1755710)))

(declare-fun bs!1008997 () Bool)

(assert (= bs!1008997 d!1446214))

(assert (=> bs!1008997 m!5419289))

(assert (=> bs!1008997 m!5419289))

(declare-fun m!5419327 () Bool)

(assert (=> bs!1008997 m!5419327))

(declare-fun m!5419329 () Bool)

(assert (=> bs!1008997 m!5419329))

(declare-fun m!5419331 () Bool)

(assert (=> bs!1008997 m!5419331))

(assert (=> b!4595024 d!1446214))

(declare-fun b!4595057 () Bool)

(declare-fun e!2866093 () List!51176)

(assert (=> b!4595057 (= e!2866093 Nil!51052)))

(declare-fun b!4595055 () Bool)

(declare-fun e!2866092 () List!51176)

(assert (=> b!4595055 (= e!2866092 e!2866093)))

(declare-fun c!786909 () Bool)

(assert (=> b!4595055 (= c!786909 ((_ is Cons!51052) lt!1755697))))

(declare-fun b!4595054 () Bool)

(assert (=> b!4595054 (= e!2866092 (t!358170 lt!1755697))))

(declare-fun d!1446216 () Bool)

(declare-fun lt!1755713 () List!51176)

(assert (=> d!1446216 (not (containsKey!2132 lt!1755713 key!3287))))

(assert (=> d!1446216 (= lt!1755713 e!2866092)))

(declare-fun c!786910 () Bool)

(assert (=> d!1446216 (= c!786910 (and ((_ is Cons!51052) lt!1755697) (= (_1!29135 (h!57010 lt!1755697)) key!3287)))))

(assert (=> d!1446216 (noDuplicateKeys!1308 lt!1755697)))

(assert (=> d!1446216 (= (removePairForKey!933 lt!1755697 key!3287) lt!1755713)))

(declare-fun b!4595056 () Bool)

(assert (=> b!4595056 (= e!2866093 (Cons!51052 (h!57010 lt!1755697) (removePairForKey!933 (t!358170 lt!1755697) key!3287)))))

(assert (= (and d!1446216 c!786910) b!4595054))

(assert (= (and d!1446216 (not c!786910)) b!4595055))

(assert (= (and b!4595055 c!786909) b!4595056))

(assert (= (and b!4595055 (not c!786909)) b!4595057))

(declare-fun m!5419333 () Bool)

(assert (=> d!1446216 m!5419333))

(declare-fun m!5419335 () Bool)

(assert (=> d!1446216 m!5419335))

(declare-fun m!5419337 () Bool)

(assert (=> b!4595056 m!5419337))

(assert (=> b!4595024 d!1446216))

(declare-fun d!1446220 () Bool)

(declare-datatypes ((Option!11377 0))(
  ( (None!11376) (Some!11376 (v!45334 List!51176)) )
))
(declare-fun get!16868 (Option!11377) List!51176)

(declare-fun getValueByKey!1297 (List!51177 (_ BitVec 64)) Option!11377)

(assert (=> d!1446220 (= (apply!12045 lm!1477 hash!344) (get!16868 (getValueByKey!1297 (toList!4631 lm!1477) hash!344)))))

(declare-fun bs!1008998 () Bool)

(assert (= bs!1008998 d!1446220))

(declare-fun m!5419339 () Bool)

(assert (=> bs!1008998 m!5419339))

(assert (=> bs!1008998 m!5419339))

(declare-fun m!5419341 () Bool)

(assert (=> bs!1008998 m!5419341))

(assert (=> b!4595024 d!1446220))

(declare-fun d!1446222 () Bool)

(declare-fun dynLambda!21386 (Int tuple2!51684) Bool)

(assert (=> d!1446222 (dynLambda!21386 lambda!185574 lt!1755702)))

(declare-fun lt!1755716 () Unit!107764)

(declare-fun choose!30750 (List!51177 Int tuple2!51684) Unit!107764)

(assert (=> d!1446222 (= lt!1755716 (choose!30750 (toList!4631 lm!1477) lambda!185574 lt!1755702))))

(declare-fun e!2866096 () Bool)

(assert (=> d!1446222 e!2866096))

(declare-fun res!1921628 () Bool)

(assert (=> d!1446222 (=> (not res!1921628) (not e!2866096))))

(assert (=> d!1446222 (= res!1921628 (forall!10578 (toList!4631 lm!1477) lambda!185574))))

(assert (=> d!1446222 (= (forallContained!2833 (toList!4631 lm!1477) lambda!185574 lt!1755702) lt!1755716)))

(declare-fun b!4595060 () Bool)

(assert (=> b!4595060 (= e!2866096 (contains!13988 (toList!4631 lm!1477) lt!1755702))))

(assert (= (and d!1446222 res!1921628) b!4595060))

(declare-fun b_lambda!169045 () Bool)

(assert (=> (not b_lambda!169045) (not d!1446222)))

(declare-fun m!5419343 () Bool)

(assert (=> d!1446222 m!5419343))

(declare-fun m!5419345 () Bool)

(assert (=> d!1446222 m!5419345))

(assert (=> d!1446222 m!5419315))

(assert (=> b!4595060 m!5419297))

(assert (=> b!4595024 d!1446222))

(declare-fun d!1446224 () Bool)

(declare-fun lt!1755719 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8628 (List!51177) (InoxSet tuple2!51684))

(assert (=> d!1446224 (= lt!1755719 (select (content!8628 (toList!4631 lm!1477)) lt!1755702))))

(declare-fun e!2866102 () Bool)

(assert (=> d!1446224 (= lt!1755719 e!2866102)))

(declare-fun res!1921634 () Bool)

(assert (=> d!1446224 (=> (not res!1921634) (not e!2866102))))

(assert (=> d!1446224 (= res!1921634 ((_ is Cons!51053) (toList!4631 lm!1477)))))

(assert (=> d!1446224 (= (contains!13988 (toList!4631 lm!1477) lt!1755702) lt!1755719)))

(declare-fun b!4595065 () Bool)

(declare-fun e!2866101 () Bool)

(assert (=> b!4595065 (= e!2866102 e!2866101)))

(declare-fun res!1921633 () Bool)

(assert (=> b!4595065 (=> res!1921633 e!2866101)))

(assert (=> b!4595065 (= res!1921633 (= (h!57011 (toList!4631 lm!1477)) lt!1755702))))

(declare-fun b!4595066 () Bool)

(assert (=> b!4595066 (= e!2866101 (contains!13988 (t!358171 (toList!4631 lm!1477)) lt!1755702))))

(assert (= (and d!1446224 res!1921634) b!4595065))

(assert (= (and b!4595065 (not res!1921633)) b!4595066))

(declare-fun m!5419347 () Bool)

(assert (=> d!1446224 m!5419347))

(declare-fun m!5419349 () Bool)

(assert (=> d!1446224 m!5419349))

(declare-fun m!5419351 () Bool)

(assert (=> b!4595066 m!5419351))

(assert (=> b!4595024 d!1446224))

(declare-fun d!1446226 () Bool)

(assert (=> d!1446226 (contains!13988 (toList!4631 lm!1477) (tuple2!51685 hash!344 lt!1755697))))

(declare-fun lt!1755725 () Unit!107764)

(declare-fun choose!30751 (List!51177 (_ BitVec 64) List!51176) Unit!107764)

(assert (=> d!1446226 (= lt!1755725 (choose!30751 (toList!4631 lm!1477) hash!344 lt!1755697))))

(declare-fun e!2866105 () Bool)

(assert (=> d!1446226 e!2866105))

(declare-fun res!1921637 () Bool)

(assert (=> d!1446226 (=> (not res!1921637) (not e!2866105))))

(declare-fun isStrictlySorted!534 (List!51177) Bool)

(assert (=> d!1446226 (= res!1921637 (isStrictlySorted!534 (toList!4631 lm!1477)))))

(assert (=> d!1446226 (= (lemmaGetValueByKeyImpliesContainsTuple!818 (toList!4631 lm!1477) hash!344 lt!1755697) lt!1755725)))

(declare-fun b!4595069 () Bool)

(assert (=> b!4595069 (= e!2866105 (= (getValueByKey!1297 (toList!4631 lm!1477) hash!344) (Some!11376 lt!1755697)))))

(assert (= (and d!1446226 res!1921637) b!4595069))

(declare-fun m!5419357 () Bool)

(assert (=> d!1446226 m!5419357))

(declare-fun m!5419359 () Bool)

(assert (=> d!1446226 m!5419359))

(declare-fun m!5419361 () Bool)

(assert (=> d!1446226 m!5419361))

(assert (=> b!4595069 m!5419339))

(assert (=> b!4595024 d!1446226))

(declare-fun d!1446230 () Bool)

(declare-fun e!2866116 () Bool)

(assert (=> d!1446230 e!2866116))

(declare-fun res!1921646 () Bool)

(assert (=> d!1446230 (=> res!1921646 e!2866116)))

(declare-fun lt!1755740 () Bool)

(assert (=> d!1446230 (= res!1921646 (not lt!1755740))))

(declare-fun lt!1755737 () Bool)

(assert (=> d!1446230 (= lt!1755740 lt!1755737)))

(declare-fun lt!1755739 () Unit!107764)

(declare-fun e!2866117 () Unit!107764)

(assert (=> d!1446230 (= lt!1755739 e!2866117)))

(declare-fun c!786913 () Bool)

(assert (=> d!1446230 (= c!786913 lt!1755737)))

(declare-fun containsKey!2134 (List!51177 (_ BitVec 64)) Bool)

(assert (=> d!1446230 (= lt!1755737 (containsKey!2134 (toList!4631 lm!1477) lt!1755703))))

(assert (=> d!1446230 (= (contains!13989 lm!1477 lt!1755703) lt!1755740)))

(declare-fun b!4595082 () Bool)

(declare-fun lt!1755738 () Unit!107764)

(assert (=> b!4595082 (= e!2866117 lt!1755738)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1202 (List!51177 (_ BitVec 64)) Unit!107764)

(assert (=> b!4595082 (= lt!1755738 (lemmaContainsKeyImpliesGetValueByKeyDefined!1202 (toList!4631 lm!1477) lt!1755703))))

(declare-fun isDefined!8646 (Option!11377) Bool)

(assert (=> b!4595082 (isDefined!8646 (getValueByKey!1297 (toList!4631 lm!1477) lt!1755703))))

(declare-fun b!4595083 () Bool)

(declare-fun Unit!107769 () Unit!107764)

(assert (=> b!4595083 (= e!2866117 Unit!107769)))

(declare-fun b!4595084 () Bool)

(assert (=> b!4595084 (= e!2866116 (isDefined!8646 (getValueByKey!1297 (toList!4631 lm!1477) lt!1755703)))))

(assert (= (and d!1446230 c!786913) b!4595082))

(assert (= (and d!1446230 (not c!786913)) b!4595083))

(assert (= (and d!1446230 (not res!1921646)) b!4595084))

(declare-fun m!5419371 () Bool)

(assert (=> d!1446230 m!5419371))

(declare-fun m!5419373 () Bool)

(assert (=> b!4595082 m!5419373))

(declare-fun m!5419375 () Bool)

(assert (=> b!4595082 m!5419375))

(assert (=> b!4595082 m!5419375))

(declare-fun m!5419377 () Bool)

(assert (=> b!4595082 m!5419377))

(assert (=> b!4595084 m!5419375))

(assert (=> b!4595084 m!5419375))

(assert (=> b!4595084 m!5419377))

(assert (=> b!4595024 d!1446230))

(declare-fun d!1446236 () Bool)

(declare-fun hash!3192 (Hashable!5707 K!12420) (_ BitVec 64))

(assert (=> d!1446236 (= (hash!3191 hashF!1107 key!3287) (hash!3192 hashF!1107 key!3287))))

(declare-fun bs!1009004 () Bool)

(assert (= bs!1009004 d!1446236))

(declare-fun m!5419379 () Bool)

(assert (=> bs!1009004 m!5419379))

(assert (=> b!4595035 d!1446236))

(declare-fun b!4595124 () Bool)

(declare-datatypes ((List!51179 0))(
  ( (Nil!51055) (Cons!51055 (h!57015 K!12420) (t!358173 List!51179)) )
))
(declare-fun e!2866149 () List!51179)

(declare-fun getKeysList!566 (List!51176) List!51179)

(assert (=> b!4595124 (= e!2866149 (getKeysList!566 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))))

(declare-fun b!4595125 () Bool)

(declare-fun e!2866151 () Bool)

(declare-fun contains!13991 (List!51179 K!12420) Bool)

(declare-fun keys!17867 (ListMap!3893) List!51179)

(assert (=> b!4595125 (= e!2866151 (contains!13991 (keys!17867 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(declare-fun b!4595126 () Bool)

(assert (=> b!4595126 false))

(declare-fun lt!1755783 () Unit!107764)

(declare-fun lt!1755780 () Unit!107764)

(assert (=> b!4595126 (= lt!1755783 lt!1755780)))

(declare-fun containsKey!2135 (List!51176 K!12420) Bool)

(assert (=> b!4595126 (containsKey!2135 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!565 (List!51176 K!12420) Unit!107764)

(assert (=> b!4595126 (= lt!1755780 (lemmaInGetKeysListThenContainsKey!565 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(declare-fun e!2866153 () Unit!107764)

(declare-fun Unit!107770 () Unit!107764)

(assert (=> b!4595126 (= e!2866153 Unit!107770)))

(declare-fun b!4595128 () Bool)

(assert (=> b!4595128 (= e!2866149 (keys!17867 (extractMap!1368 (toList!4631 lm!1477))))))

(declare-fun b!4595129 () Bool)

(declare-fun e!2866150 () Bool)

(assert (=> b!4595129 (= e!2866150 e!2866151)))

(declare-fun res!1921670 () Bool)

(assert (=> b!4595129 (=> (not res!1921670) (not e!2866151))))

(declare-datatypes ((Option!11379 0))(
  ( (None!11378) (Some!11378 (v!45336 V!12666)) )
))
(declare-fun isDefined!8647 (Option!11379) Bool)

(declare-fun getValueByKey!1299 (List!51176 K!12420) Option!11379)

(assert (=> b!4595129 (= res!1921670 (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287)))))

(declare-fun bm!320683 () Bool)

(declare-fun call!320688 () Bool)

(assert (=> bm!320683 (= call!320688 (contains!13991 e!2866149 key!3287))))

(declare-fun c!786924 () Bool)

(declare-fun c!786925 () Bool)

(assert (=> bm!320683 (= c!786924 c!786925)))

(declare-fun b!4595130 () Bool)

(declare-fun e!2866148 () Unit!107764)

(declare-fun lt!1755781 () Unit!107764)

(assert (=> b!4595130 (= e!2866148 lt!1755781)))

(declare-fun lt!1755779 () Unit!107764)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1203 (List!51176 K!12420) Unit!107764)

(assert (=> b!4595130 (= lt!1755779 (lemmaContainsKeyImpliesGetValueByKeyDefined!1203 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(assert (=> b!4595130 (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(declare-fun lt!1755784 () Unit!107764)

(assert (=> b!4595130 (= lt!1755784 lt!1755779)))

(declare-fun lemmaInListThenGetKeysListContains!563 (List!51176 K!12420) Unit!107764)

(assert (=> b!4595130 (= lt!1755781 (lemmaInListThenGetKeysListContains!563 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(assert (=> b!4595130 call!320688))

(declare-fun d!1446238 () Bool)

(assert (=> d!1446238 e!2866150))

(declare-fun res!1921669 () Bool)

(assert (=> d!1446238 (=> res!1921669 e!2866150)))

(declare-fun e!2866152 () Bool)

(assert (=> d!1446238 (= res!1921669 e!2866152)))

(declare-fun res!1921668 () Bool)

(assert (=> d!1446238 (=> (not res!1921668) (not e!2866152))))

(declare-fun lt!1755785 () Bool)

(assert (=> d!1446238 (= res!1921668 (not lt!1755785))))

(declare-fun lt!1755778 () Bool)

(assert (=> d!1446238 (= lt!1755785 lt!1755778)))

(declare-fun lt!1755782 () Unit!107764)

(assert (=> d!1446238 (= lt!1755782 e!2866148)))

(assert (=> d!1446238 (= c!786925 lt!1755778)))

(assert (=> d!1446238 (= lt!1755778 (containsKey!2135 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(assert (=> d!1446238 (= (contains!13987 (extractMap!1368 (toList!4631 lm!1477)) key!3287) lt!1755785)))

(declare-fun b!4595127 () Bool)

(assert (=> b!4595127 (= e!2866152 (not (contains!13991 (keys!17867 (extractMap!1368 (toList!4631 lm!1477))) key!3287)))))

(declare-fun b!4595131 () Bool)

(assert (=> b!4595131 (= e!2866148 e!2866153)))

(declare-fun c!786923 () Bool)

(assert (=> b!4595131 (= c!786923 call!320688)))

(declare-fun b!4595132 () Bool)

(declare-fun Unit!107773 () Unit!107764)

(assert (=> b!4595132 (= e!2866153 Unit!107773)))

(assert (= (and d!1446238 c!786925) b!4595130))

(assert (= (and d!1446238 (not c!786925)) b!4595131))

(assert (= (and b!4595131 c!786923) b!4595126))

(assert (= (and b!4595131 (not c!786923)) b!4595132))

(assert (= (or b!4595130 b!4595131) bm!320683))

(assert (= (and bm!320683 c!786924) b!4595124))

(assert (= (and bm!320683 (not c!786924)) b!4595128))

(assert (= (and d!1446238 res!1921668) b!4595127))

(assert (= (and d!1446238 (not res!1921669)) b!4595129))

(assert (= (and b!4595129 res!1921670) b!4595125))

(assert (=> b!4595128 m!5419279))

(declare-fun m!5419409 () Bool)

(assert (=> b!4595128 m!5419409))

(declare-fun m!5419411 () Bool)

(assert (=> b!4595124 m!5419411))

(declare-fun m!5419413 () Bool)

(assert (=> bm!320683 m!5419413))

(declare-fun m!5419415 () Bool)

(assert (=> d!1446238 m!5419415))

(declare-fun m!5419417 () Bool)

(assert (=> b!4595129 m!5419417))

(assert (=> b!4595129 m!5419417))

(declare-fun m!5419419 () Bool)

(assert (=> b!4595129 m!5419419))

(assert (=> b!4595125 m!5419279))

(assert (=> b!4595125 m!5419409))

(assert (=> b!4595125 m!5419409))

(declare-fun m!5419421 () Bool)

(assert (=> b!4595125 m!5419421))

(assert (=> b!4595127 m!5419279))

(assert (=> b!4595127 m!5419409))

(assert (=> b!4595127 m!5419409))

(assert (=> b!4595127 m!5419421))

(assert (=> b!4595126 m!5419415))

(declare-fun m!5419423 () Bool)

(assert (=> b!4595126 m!5419423))

(declare-fun m!5419425 () Bool)

(assert (=> b!4595130 m!5419425))

(assert (=> b!4595130 m!5419417))

(assert (=> b!4595130 m!5419417))

(assert (=> b!4595130 m!5419419))

(declare-fun m!5419427 () Bool)

(assert (=> b!4595130 m!5419427))

(assert (=> b!4595031 d!1446238))

(declare-fun bs!1009010 () Bool)

(declare-fun d!1446250 () Bool)

(assert (= bs!1009010 (and d!1446250 start!458240)))

(declare-fun lambda!185589 () Int)

(assert (=> bs!1009010 (= lambda!185589 lambda!185574)))

(declare-fun bs!1009011 () Bool)

(assert (= bs!1009011 (and d!1446250 d!1446214)))

(assert (=> bs!1009011 (= lambda!185589 lambda!185577)))

(declare-fun lt!1755815 () ListMap!3893)

(declare-fun invariantList!1117 (List!51176) Bool)

(assert (=> d!1446250 (invariantList!1117 (toList!4632 lt!1755815))))

(declare-fun e!2866180 () ListMap!3893)

(assert (=> d!1446250 (= lt!1755815 e!2866180)))

(declare-fun c!786943 () Bool)

(assert (=> d!1446250 (= c!786943 ((_ is Cons!51053) (toList!4631 lm!1477)))))

(assert (=> d!1446250 (forall!10578 (toList!4631 lm!1477) lambda!185589)))

(assert (=> d!1446250 (= (extractMap!1368 (toList!4631 lm!1477)) lt!1755815)))

(declare-fun b!4595178 () Bool)

(declare-fun addToMapMapFromBucket!807 (List!51176 ListMap!3893) ListMap!3893)

(assert (=> b!4595178 (= e!2866180 (addToMapMapFromBucket!807 (_2!29136 (h!57011 (toList!4631 lm!1477))) (extractMap!1368 (t!358171 (toList!4631 lm!1477)))))))

(declare-fun b!4595179 () Bool)

(assert (=> b!4595179 (= e!2866180 (ListMap!3894 Nil!51052))))

(assert (= (and d!1446250 c!786943) b!4595178))

(assert (= (and d!1446250 (not c!786943)) b!4595179))

(declare-fun m!5419457 () Bool)

(assert (=> d!1446250 m!5419457))

(declare-fun m!5419459 () Bool)

(assert (=> d!1446250 m!5419459))

(declare-fun m!5419461 () Bool)

(assert (=> b!4595178 m!5419461))

(assert (=> b!4595178 m!5419461))

(declare-fun m!5419463 () Bool)

(assert (=> b!4595178 m!5419463))

(assert (=> b!4595031 d!1446250))

(declare-fun d!1446258 () Bool)

(declare-fun res!1921684 () Bool)

(declare-fun e!2866185 () Bool)

(assert (=> d!1446258 (=> res!1921684 e!2866185)))

(assert (=> d!1446258 (= res!1921684 (not ((_ is Cons!51052) (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(assert (=> d!1446258 (= (noDuplicateKeys!1308 (_2!29136 (h!57011 (toList!4631 lm!1477)))) e!2866185)))

(declare-fun b!4595184 () Bool)

(declare-fun e!2866186 () Bool)

(assert (=> b!4595184 (= e!2866185 e!2866186)))

(declare-fun res!1921685 () Bool)

(assert (=> b!4595184 (=> (not res!1921685) (not e!2866186))))

(assert (=> b!4595184 (= res!1921685 (not (containsKey!2132 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))) (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))))

(declare-fun b!4595185 () Bool)

(assert (=> b!4595185 (= e!2866186 (noDuplicateKeys!1308 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(assert (= (and d!1446258 (not res!1921684)) b!4595184))

(assert (= (and b!4595184 res!1921685) b!4595185))

(declare-fun m!5419465 () Bool)

(assert (=> b!4595184 m!5419465))

(declare-fun m!5419467 () Bool)

(assert (=> b!4595185 m!5419467))

(assert (=> b!4595021 d!1446258))

(declare-fun b!4595186 () Bool)

(declare-fun e!2866188 () List!51179)

(assert (=> b!4595186 (= e!2866188 (getKeysList!566 (toList!4632 (extractMap!1368 lt!1755698))))))

(declare-fun b!4595187 () Bool)

(declare-fun e!2866190 () Bool)

(assert (=> b!4595187 (= e!2866190 (contains!13991 (keys!17867 (extractMap!1368 lt!1755698)) key!3287))))

(declare-fun b!4595188 () Bool)

(assert (=> b!4595188 false))

(declare-fun lt!1755821 () Unit!107764)

(declare-fun lt!1755818 () Unit!107764)

(assert (=> b!4595188 (= lt!1755821 lt!1755818)))

(assert (=> b!4595188 (containsKey!2135 (toList!4632 (extractMap!1368 lt!1755698)) key!3287)))

(assert (=> b!4595188 (= lt!1755818 (lemmaInGetKeysListThenContainsKey!565 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))

(declare-fun e!2866192 () Unit!107764)

(declare-fun Unit!107774 () Unit!107764)

(assert (=> b!4595188 (= e!2866192 Unit!107774)))

(declare-fun b!4595190 () Bool)

(assert (=> b!4595190 (= e!2866188 (keys!17867 (extractMap!1368 lt!1755698)))))

(declare-fun b!4595191 () Bool)

(declare-fun e!2866189 () Bool)

(assert (=> b!4595191 (= e!2866189 e!2866190)))

(declare-fun res!1921688 () Bool)

(assert (=> b!4595191 (=> (not res!1921688) (not e!2866190))))

(assert (=> b!4595191 (= res!1921688 (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 lt!1755698)) key!3287)))))

(declare-fun bm!320687 () Bool)

(declare-fun call!320692 () Bool)

(assert (=> bm!320687 (= call!320692 (contains!13991 e!2866188 key!3287))))

(declare-fun c!786945 () Bool)

(declare-fun c!786946 () Bool)

(assert (=> bm!320687 (= c!786945 c!786946)))

(declare-fun b!4595192 () Bool)

(declare-fun e!2866187 () Unit!107764)

(declare-fun lt!1755819 () Unit!107764)

(assert (=> b!4595192 (= e!2866187 lt!1755819)))

(declare-fun lt!1755817 () Unit!107764)

(assert (=> b!4595192 (= lt!1755817 (lemmaContainsKeyImpliesGetValueByKeyDefined!1203 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))

(assert (=> b!4595192 (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))

(declare-fun lt!1755822 () Unit!107764)

(assert (=> b!4595192 (= lt!1755822 lt!1755817)))

(assert (=> b!4595192 (= lt!1755819 (lemmaInListThenGetKeysListContains!563 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))

(assert (=> b!4595192 call!320692))

(declare-fun d!1446260 () Bool)

(assert (=> d!1446260 e!2866189))

(declare-fun res!1921687 () Bool)

(assert (=> d!1446260 (=> res!1921687 e!2866189)))

(declare-fun e!2866191 () Bool)

(assert (=> d!1446260 (= res!1921687 e!2866191)))

(declare-fun res!1921686 () Bool)

(assert (=> d!1446260 (=> (not res!1921686) (not e!2866191))))

(declare-fun lt!1755823 () Bool)

(assert (=> d!1446260 (= res!1921686 (not lt!1755823))))

(declare-fun lt!1755816 () Bool)

(assert (=> d!1446260 (= lt!1755823 lt!1755816)))

(declare-fun lt!1755820 () Unit!107764)

(assert (=> d!1446260 (= lt!1755820 e!2866187)))

(assert (=> d!1446260 (= c!786946 lt!1755816)))

(assert (=> d!1446260 (= lt!1755816 (containsKey!2135 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))

(assert (=> d!1446260 (= (contains!13987 (extractMap!1368 lt!1755698) key!3287) lt!1755823)))

(declare-fun b!4595189 () Bool)

(assert (=> b!4595189 (= e!2866191 (not (contains!13991 (keys!17867 (extractMap!1368 lt!1755698)) key!3287)))))

(declare-fun b!4595193 () Bool)

(assert (=> b!4595193 (= e!2866187 e!2866192)))

(declare-fun c!786944 () Bool)

(assert (=> b!4595193 (= c!786944 call!320692)))

(declare-fun b!4595194 () Bool)

(declare-fun Unit!107775 () Unit!107764)

(assert (=> b!4595194 (= e!2866192 Unit!107775)))

(assert (= (and d!1446260 c!786946) b!4595192))

(assert (= (and d!1446260 (not c!786946)) b!4595193))

(assert (= (and b!4595193 c!786944) b!4595188))

(assert (= (and b!4595193 (not c!786944)) b!4595194))

(assert (= (or b!4595192 b!4595193) bm!320687))

(assert (= (and bm!320687 c!786945) b!4595186))

(assert (= (and bm!320687 (not c!786945)) b!4595190))

(assert (= (and d!1446260 res!1921686) b!4595189))

(assert (= (and d!1446260 (not res!1921687)) b!4595191))

(assert (= (and b!4595191 res!1921688) b!4595187))

(assert (=> b!4595190 m!5419309))

(declare-fun m!5419469 () Bool)

(assert (=> b!4595190 m!5419469))

(declare-fun m!5419471 () Bool)

(assert (=> b!4595186 m!5419471))

(declare-fun m!5419473 () Bool)

(assert (=> bm!320687 m!5419473))

(declare-fun m!5419475 () Bool)

(assert (=> d!1446260 m!5419475))

(declare-fun m!5419477 () Bool)

(assert (=> b!4595191 m!5419477))

(assert (=> b!4595191 m!5419477))

(declare-fun m!5419479 () Bool)

(assert (=> b!4595191 m!5419479))

(assert (=> b!4595187 m!5419309))

(assert (=> b!4595187 m!5419469))

(assert (=> b!4595187 m!5419469))

(declare-fun m!5419481 () Bool)

(assert (=> b!4595187 m!5419481))

(assert (=> b!4595189 m!5419309))

(assert (=> b!4595189 m!5419469))

(assert (=> b!4595189 m!5419469))

(assert (=> b!4595189 m!5419481))

(assert (=> b!4595188 m!5419475))

(declare-fun m!5419483 () Bool)

(assert (=> b!4595188 m!5419483))

(declare-fun m!5419485 () Bool)

(assert (=> b!4595192 m!5419485))

(assert (=> b!4595192 m!5419477))

(assert (=> b!4595192 m!5419477))

(assert (=> b!4595192 m!5419479))

(declare-fun m!5419487 () Bool)

(assert (=> b!4595192 m!5419487))

(assert (=> b!4595021 d!1446260))

(declare-fun bs!1009012 () Bool)

(declare-fun d!1446262 () Bool)

(assert (= bs!1009012 (and d!1446262 start!458240)))

(declare-fun lambda!185590 () Int)

(assert (=> bs!1009012 (= lambda!185590 lambda!185574)))

(declare-fun bs!1009013 () Bool)

(assert (= bs!1009013 (and d!1446262 d!1446214)))

(assert (=> bs!1009013 (= lambda!185590 lambda!185577)))

(declare-fun bs!1009014 () Bool)

(assert (= bs!1009014 (and d!1446262 d!1446250)))

(assert (=> bs!1009014 (= lambda!185590 lambda!185589)))

(declare-fun lt!1755824 () ListMap!3893)

(assert (=> d!1446262 (invariantList!1117 (toList!4632 lt!1755824))))

(declare-fun e!2866193 () ListMap!3893)

(assert (=> d!1446262 (= lt!1755824 e!2866193)))

(declare-fun c!786947 () Bool)

(assert (=> d!1446262 (= c!786947 ((_ is Cons!51053) lt!1755698))))

(assert (=> d!1446262 (forall!10578 lt!1755698 lambda!185590)))

(assert (=> d!1446262 (= (extractMap!1368 lt!1755698) lt!1755824)))

(declare-fun b!4595195 () Bool)

(assert (=> b!4595195 (= e!2866193 (addToMapMapFromBucket!807 (_2!29136 (h!57011 lt!1755698)) (extractMap!1368 (t!358171 lt!1755698))))))

(declare-fun b!4595196 () Bool)

(assert (=> b!4595196 (= e!2866193 (ListMap!3894 Nil!51052))))

(assert (= (and d!1446262 c!786947) b!4595195))

(assert (= (and d!1446262 (not c!786947)) b!4595196))

(declare-fun m!5419489 () Bool)

(assert (=> d!1446262 m!5419489))

(declare-fun m!5419491 () Bool)

(assert (=> d!1446262 m!5419491))

(declare-fun m!5419493 () Bool)

(assert (=> b!4595195 m!5419493))

(assert (=> b!4595195 m!5419493))

(declare-fun m!5419495 () Bool)

(assert (=> b!4595195 m!5419495))

(assert (=> b!4595021 d!1446262))

(declare-fun bs!1009027 () Bool)

(declare-fun d!1446264 () Bool)

(assert (= bs!1009027 (and d!1446264 start!458240)))

(declare-fun lambda!185600 () Int)

(assert (=> bs!1009027 (= lambda!185600 lambda!185574)))

(declare-fun bs!1009028 () Bool)

(assert (= bs!1009028 (and d!1446264 d!1446214)))

(assert (=> bs!1009028 (= lambda!185600 lambda!185577)))

(declare-fun bs!1009029 () Bool)

(assert (= bs!1009029 (and d!1446264 d!1446250)))

(assert (=> bs!1009029 (= lambda!185600 lambda!185589)))

(declare-fun bs!1009030 () Bool)

(assert (= bs!1009030 (and d!1446264 d!1446262)))

(assert (=> bs!1009030 (= lambda!185600 lambda!185590)))

(assert (=> d!1446264 (contains!13987 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698))) key!3287)))

(declare-fun lt!1755840 () Unit!107764)

(declare-fun choose!30752 (ListLongMap!3263 K!12420 Hashable!5707) Unit!107764)

(assert (=> d!1446264 (= lt!1755840 (choose!30752 (ListLongMap!3264 lt!1755698) key!3287 hashF!1107))))

(assert (=> d!1446264 (forall!10578 (toList!4631 (ListLongMap!3264 lt!1755698)) lambda!185600)))

(assert (=> d!1446264 (= (lemmaListContainsThenExtractedMapContains!242 (ListLongMap!3264 lt!1755698) key!3287 hashF!1107) lt!1755840)))

(declare-fun bs!1009031 () Bool)

(assert (= bs!1009031 d!1446264))

(declare-fun m!5419557 () Bool)

(assert (=> bs!1009031 m!5419557))

(assert (=> bs!1009031 m!5419557))

(declare-fun m!5419559 () Bool)

(assert (=> bs!1009031 m!5419559))

(declare-fun m!5419561 () Bool)

(assert (=> bs!1009031 m!5419561))

(declare-fun m!5419563 () Bool)

(assert (=> bs!1009031 m!5419563))

(assert (=> b!4595021 d!1446264))

(declare-fun bs!1009032 () Bool)

(declare-fun d!1446288 () Bool)

(assert (= bs!1009032 (and d!1446288 d!1446250)))

(declare-fun lambda!185603 () Int)

(assert (=> bs!1009032 (not (= lambda!185603 lambda!185589))))

(declare-fun bs!1009033 () Bool)

(assert (= bs!1009033 (and d!1446288 d!1446214)))

(assert (=> bs!1009033 (not (= lambda!185603 lambda!185577))))

(declare-fun bs!1009034 () Bool)

(assert (= bs!1009034 (and d!1446288 start!458240)))

(assert (=> bs!1009034 (not (= lambda!185603 lambda!185574))))

(declare-fun bs!1009035 () Bool)

(assert (= bs!1009035 (and d!1446288 d!1446262)))

(assert (=> bs!1009035 (not (= lambda!185603 lambda!185590))))

(declare-fun bs!1009036 () Bool)

(assert (= bs!1009036 (and d!1446288 d!1446264)))

(assert (=> bs!1009036 (not (= lambda!185603 lambda!185600))))

(assert (=> d!1446288 true))

(assert (=> d!1446288 (= (allKeysSameHashInMap!1419 lm!1477 hashF!1107) (forall!10578 (toList!4631 lm!1477) lambda!185603))))

(declare-fun bs!1009037 () Bool)

(assert (= bs!1009037 d!1446288))

(declare-fun m!5419565 () Bool)

(assert (=> bs!1009037 m!5419565))

(assert (=> b!4595032 d!1446288))

(declare-fun d!1446290 () Bool)

(declare-fun res!1921715 () Bool)

(declare-fun e!2866229 () Bool)

(assert (=> d!1446290 (=> res!1921715 e!2866229)))

(assert (=> d!1446290 (= res!1921715 (not ((_ is Cons!51052) newBucket!178)))))

(assert (=> d!1446290 (= (noDuplicateKeys!1308 newBucket!178) e!2866229)))

(declare-fun b!4595247 () Bool)

(declare-fun e!2866230 () Bool)

(assert (=> b!4595247 (= e!2866229 e!2866230)))

(declare-fun res!1921716 () Bool)

(assert (=> b!4595247 (=> (not res!1921716) (not e!2866230))))

(assert (=> b!4595247 (= res!1921716 (not (containsKey!2132 (t!358170 newBucket!178) (_1!29135 (h!57010 newBucket!178)))))))

(declare-fun b!4595248 () Bool)

(assert (=> b!4595248 (= e!2866230 (noDuplicateKeys!1308 (t!358170 newBucket!178)))))

(assert (= (and d!1446290 (not res!1921715)) b!4595247))

(assert (= (and b!4595247 res!1921716) b!4595248))

(declare-fun m!5419567 () Bool)

(assert (=> b!4595247 m!5419567))

(declare-fun m!5419569 () Bool)

(assert (=> b!4595248 m!5419569))

(assert (=> b!4595022 d!1446290))

(declare-fun d!1446292 () Bool)

(assert (=> d!1446292 true))

(assert (=> d!1446292 true))

(declare-fun lambda!185608 () Int)

(declare-fun forall!10580 (List!51176 Int) Bool)

(assert (=> d!1446292 (= (allKeysSameHash!1164 (_2!29136 (h!57011 (toList!4631 lm!1477))) hash!344 hashF!1107) (forall!10580 (_2!29136 (h!57011 (toList!4631 lm!1477))) lambda!185608))))

(declare-fun bs!1009038 () Bool)

(assert (= bs!1009038 d!1446292))

(declare-fun m!5419571 () Bool)

(assert (=> bs!1009038 m!5419571))

(assert (=> b!4595033 d!1446292))

(declare-fun bs!1009039 () Bool)

(declare-fun d!1446294 () Bool)

(assert (= bs!1009039 (and d!1446294 d!1446292)))

(declare-fun lambda!185609 () Int)

(assert (=> bs!1009039 (= lambda!185609 lambda!185608)))

(assert (=> d!1446294 true))

(assert (=> d!1446294 true))

(assert (=> d!1446294 (= (allKeysSameHash!1164 newBucket!178 hash!344 hashF!1107) (forall!10580 newBucket!178 lambda!185609))))

(declare-fun bs!1009040 () Bool)

(assert (= bs!1009040 d!1446294))

(declare-fun m!5419573 () Bool)

(assert (=> bs!1009040 m!5419573))

(assert (=> b!4595028 d!1446294))

(declare-fun d!1446296 () Bool)

(declare-fun res!1921721 () Bool)

(declare-fun e!2866235 () Bool)

(assert (=> d!1446296 (=> res!1921721 e!2866235)))

(assert (=> d!1446296 (= res!1921721 (and ((_ is Cons!51052) (_2!29136 (h!57011 (toList!4631 lm!1477)))) (= (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))) key!3287)))))

(assert (=> d!1446296 (= (containsKey!2132 (_2!29136 (h!57011 (toList!4631 lm!1477))) key!3287) e!2866235)))

(declare-fun b!4595257 () Bool)

(declare-fun e!2866236 () Bool)

(assert (=> b!4595257 (= e!2866235 e!2866236)))

(declare-fun res!1921722 () Bool)

(assert (=> b!4595257 (=> (not res!1921722) (not e!2866236))))

(assert (=> b!4595257 (= res!1921722 ((_ is Cons!51052) (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(declare-fun b!4595258 () Bool)

(assert (=> b!4595258 (= e!2866236 (containsKey!2132 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))) key!3287))))

(assert (= (and d!1446296 (not res!1921721)) b!4595257))

(assert (= (and b!4595257 res!1921722) b!4595258))

(declare-fun m!5419585 () Bool)

(assert (=> b!4595258 m!5419585))

(assert (=> b!4595029 d!1446296))

(declare-fun b!4595266 () Bool)

(declare-fun e!2866240 () List!51176)

(assert (=> b!4595266 (= e!2866240 Nil!51052)))

(declare-fun b!4595264 () Bool)

(declare-fun e!2866239 () List!51176)

(assert (=> b!4595264 (= e!2866239 e!2866240)))

(declare-fun c!786957 () Bool)

(assert (=> b!4595264 (= c!786957 ((_ is Cons!51052) (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(declare-fun b!4595263 () Bool)

(assert (=> b!4595263 (= e!2866239 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(declare-fun d!1446300 () Bool)

(declare-fun lt!1755844 () List!51176)

(assert (=> d!1446300 (not (containsKey!2132 lt!1755844 key!3287))))

(assert (=> d!1446300 (= lt!1755844 e!2866239)))

(declare-fun c!786958 () Bool)

(assert (=> d!1446300 (= c!786958 (and ((_ is Cons!51052) (_2!29136 (h!57011 (toList!4631 lm!1477)))) (= (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))) key!3287)))))

(assert (=> d!1446300 (noDuplicateKeys!1308 (_2!29136 (h!57011 (toList!4631 lm!1477))))))

(assert (=> d!1446300 (= (removePairForKey!933 (_2!29136 (h!57011 (toList!4631 lm!1477))) key!3287) lt!1755844)))

(declare-fun b!4595265 () Bool)

(assert (=> b!4595265 (= e!2866240 (Cons!51052 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477)))) (removePairForKey!933 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))) key!3287)))))

(assert (= (and d!1446300 c!786958) b!4595263))

(assert (= (and d!1446300 (not c!786958)) b!4595264))

(assert (= (and b!4595264 c!786957) b!4595265))

(assert (= (and b!4595264 (not c!786957)) b!4595266))

(declare-fun m!5419587 () Bool)

(assert (=> d!1446300 m!5419587))

(assert (=> d!1446300 m!5419307))

(declare-fun m!5419589 () Bool)

(assert (=> b!4595265 m!5419589))

(assert (=> b!4595026 d!1446300))

(declare-fun d!1446302 () Bool)

(declare-fun res!1921727 () Bool)

(declare-fun e!2866249 () Bool)

(assert (=> d!1446302 (=> res!1921727 e!2866249)))

(assert (=> d!1446302 (= res!1921727 ((_ is Nil!51053) (toList!4631 lm!1477)))))

(assert (=> d!1446302 (= (forall!10578 (toList!4631 lm!1477) lambda!185574) e!2866249)))

(declare-fun b!4595277 () Bool)

(declare-fun e!2866250 () Bool)

(assert (=> b!4595277 (= e!2866249 e!2866250)))

(declare-fun res!1921728 () Bool)

(assert (=> b!4595277 (=> (not res!1921728) (not e!2866250))))

(assert (=> b!4595277 (= res!1921728 (dynLambda!21386 lambda!185574 (h!57011 (toList!4631 lm!1477))))))

(declare-fun b!4595278 () Bool)

(assert (=> b!4595278 (= e!2866250 (forall!10578 (t!358171 (toList!4631 lm!1477)) lambda!185574))))

(assert (= (and d!1446302 (not res!1921727)) b!4595277))

(assert (= (and b!4595277 res!1921728) b!4595278))

(declare-fun b_lambda!169055 () Bool)

(assert (=> (not b_lambda!169055) (not b!4595277)))

(declare-fun m!5419593 () Bool)

(assert (=> b!4595277 m!5419593))

(declare-fun m!5419595 () Bool)

(assert (=> b!4595278 m!5419595))

(assert (=> start!458240 d!1446302))

(declare-fun d!1446308 () Bool)

(assert (=> d!1446308 (= (inv!66604 lm!1477) (isStrictlySorted!534 (toList!4631 lm!1477)))))

(declare-fun bs!1009052 () Bool)

(assert (= bs!1009052 d!1446308))

(assert (=> bs!1009052 m!5419361))

(assert (=> start!458240 d!1446308))

(declare-fun bs!1009053 () Bool)

(declare-fun d!1446310 () Bool)

(assert (= bs!1009053 (and d!1446310 d!1446250)))

(declare-fun lambda!185614 () Int)

(assert (=> bs!1009053 (= lambda!185614 lambda!185589)))

(declare-fun bs!1009054 () Bool)

(assert (= bs!1009054 (and d!1446310 d!1446214)))

(assert (=> bs!1009054 (= lambda!185614 lambda!185577)))

(declare-fun bs!1009055 () Bool)

(assert (= bs!1009055 (and d!1446310 start!458240)))

(assert (=> bs!1009055 (= lambda!185614 lambda!185574)))

(declare-fun bs!1009056 () Bool)

(assert (= bs!1009056 (and d!1446310 d!1446288)))

(assert (=> bs!1009056 (not (= lambda!185614 lambda!185603))))

(declare-fun bs!1009057 () Bool)

(assert (= bs!1009057 (and d!1446310 d!1446262)))

(assert (=> bs!1009057 (= lambda!185614 lambda!185590)))

(declare-fun bs!1009058 () Bool)

(assert (= bs!1009058 (and d!1446310 d!1446264)))

(assert (=> bs!1009058 (= lambda!185614 lambda!185600)))

(assert (=> d!1446310 (not (contains!13987 (extractMap!1368 (toList!4631 lm!1477)) key!3287))))

(declare-fun lt!1755847 () Unit!107764)

(declare-fun choose!30753 (ListLongMap!3263 K!12420 Hashable!5707) Unit!107764)

(assert (=> d!1446310 (= lt!1755847 (choose!30753 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1446310 (forall!10578 (toList!4631 lm!1477) lambda!185614)))

(assert (=> d!1446310 (= (lemmaNotInItsHashBucketThenNotInMap!278 lm!1477 key!3287 hashF!1107) lt!1755847)))

(declare-fun bs!1009059 () Bool)

(assert (= bs!1009059 d!1446310))

(assert (=> bs!1009059 m!5419279))

(assert (=> bs!1009059 m!5419279))

(assert (=> bs!1009059 m!5419281))

(declare-fun m!5419597 () Bool)

(assert (=> bs!1009059 m!5419597))

(declare-fun m!5419599 () Bool)

(assert (=> bs!1009059 m!5419599))

(assert (=> b!4595027 d!1446310))

(declare-fun b!4595283 () Bool)

(declare-fun e!2866253 () Bool)

(declare-fun tp!1340301 () Bool)

(declare-fun tp!1340302 () Bool)

(assert (=> b!4595283 (= e!2866253 (and tp!1340301 tp!1340302))))

(assert (=> b!4595025 (= tp!1340287 e!2866253)))

(assert (= (and b!4595025 ((_ is Cons!51053) (toList!4631 lm!1477))) b!4595283))

(declare-fun tp!1340305 () Bool)

(declare-fun e!2866256 () Bool)

(declare-fun b!4595288 () Bool)

(assert (=> b!4595288 (= e!2866256 (and tp_is_empty!28525 tp_is_empty!28527 tp!1340305))))

(assert (=> b!4595036 (= tp!1340286 e!2866256)))

(assert (= (and b!4595036 ((_ is Cons!51052) (t!358170 newBucket!178))) b!4595288))

(declare-fun b_lambda!169057 () Bool)

(assert (= b_lambda!169055 (or start!458240 b_lambda!169057)))

(declare-fun bs!1009060 () Bool)

(declare-fun d!1446312 () Bool)

(assert (= bs!1009060 (and d!1446312 start!458240)))

(assert (=> bs!1009060 (= (dynLambda!21386 lambda!185574 (h!57011 (toList!4631 lm!1477))) (noDuplicateKeys!1308 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(assert (=> bs!1009060 m!5419307))

(assert (=> b!4595277 d!1446312))

(declare-fun b_lambda!169059 () Bool)

(assert (= b_lambda!169045 (or start!458240 b_lambda!169059)))

(declare-fun bs!1009061 () Bool)

(declare-fun d!1446314 () Bool)

(assert (= bs!1009061 (and d!1446314 start!458240)))

(assert (=> bs!1009061 (= (dynLambda!21386 lambda!185574 lt!1755702) (noDuplicateKeys!1308 (_2!29136 lt!1755702)))))

(declare-fun m!5419601 () Bool)

(assert (=> bs!1009061 m!5419601))

(assert (=> d!1446222 d!1446314))

(check-sat (not b!4595124) (not d!1446260) (not d!1446262) (not b!4595247) (not d!1446226) (not bs!1009060) (not b!4595185) (not d!1446220) (not b!4595265) (not b!4595188) (not b!4595045) (not b!4595184) (not b!4595060) (not bs!1009061) (not b!4595195) (not b!4595288) (not b!4595128) (not d!1446250) (not b!4595129) (not b!4595066) (not d!1446308) (not d!1446264) (not b_lambda!169057) (not bm!320683) (not b!4595283) (not b!4595082) (not b!4595178) (not b!4595186) (not b!4595127) (not b!4595278) (not d!1446216) (not d!1446236) (not d!1446230) (not b!4595189) (not d!1446224) (not b!4595192) (not d!1446294) (not d!1446300) (not d!1446292) (not d!1446222) (not b!4595056) (not b!4595130) (not b!4595126) (not b!4595125) (not b!4595190) (not b!4595191) (not b!4595248) (not b!4595187) (not b!4595043) tp_is_empty!28525 (not d!1446238) tp_is_empty!28527 (not b!4595084) (not bm!320687) (not b!4595069) (not b!4595258) (not d!1446214) (not d!1446310) (not b_lambda!169059) (not d!1446288))
(check-sat)
(get-model)

(declare-fun d!1446316 () Bool)

(declare-fun res!1921733 () Bool)

(declare-fun e!2866261 () Bool)

(assert (=> d!1446316 (=> res!1921733 e!2866261)))

(assert (=> d!1446316 (= res!1921733 ((_ is Nil!51052) (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(assert (=> d!1446316 (= (forall!10580 (_2!29136 (h!57011 (toList!4631 lm!1477))) lambda!185608) e!2866261)))

(declare-fun b!4595293 () Bool)

(declare-fun e!2866262 () Bool)

(assert (=> b!4595293 (= e!2866261 e!2866262)))

(declare-fun res!1921734 () Bool)

(assert (=> b!4595293 (=> (not res!1921734) (not e!2866262))))

(declare-fun dynLambda!21387 (Int tuple2!51682) Bool)

(assert (=> b!4595293 (= res!1921734 (dynLambda!21387 lambda!185608 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(declare-fun b!4595294 () Bool)

(assert (=> b!4595294 (= e!2866262 (forall!10580 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))) lambda!185608))))

(assert (= (and d!1446316 (not res!1921733)) b!4595293))

(assert (= (and b!4595293 res!1921734) b!4595294))

(declare-fun b_lambda!169061 () Bool)

(assert (=> (not b_lambda!169061) (not b!4595293)))

(declare-fun m!5419603 () Bool)

(assert (=> b!4595293 m!5419603))

(declare-fun m!5419605 () Bool)

(assert (=> b!4595294 m!5419605))

(assert (=> d!1446292 d!1446316))

(declare-fun d!1446318 () Bool)

(declare-fun res!1921735 () Bool)

(declare-fun e!2866263 () Bool)

(assert (=> d!1446318 (=> res!1921735 e!2866263)))

(assert (=> d!1446318 (= res!1921735 (and ((_ is Cons!51052) lt!1755713) (= (_1!29135 (h!57010 lt!1755713)) key!3287)))))

(assert (=> d!1446318 (= (containsKey!2132 lt!1755713 key!3287) e!2866263)))

(declare-fun b!4595295 () Bool)

(declare-fun e!2866264 () Bool)

(assert (=> b!4595295 (= e!2866263 e!2866264)))

(declare-fun res!1921736 () Bool)

(assert (=> b!4595295 (=> (not res!1921736) (not e!2866264))))

(assert (=> b!4595295 (= res!1921736 ((_ is Cons!51052) lt!1755713))))

(declare-fun b!4595296 () Bool)

(assert (=> b!4595296 (= e!2866264 (containsKey!2132 (t!358170 lt!1755713) key!3287))))

(assert (= (and d!1446318 (not res!1921735)) b!4595295))

(assert (= (and b!4595295 res!1921736) b!4595296))

(declare-fun m!5419607 () Bool)

(assert (=> b!4595296 m!5419607))

(assert (=> d!1446216 d!1446318))

(declare-fun d!1446320 () Bool)

(declare-fun res!1921737 () Bool)

(declare-fun e!2866265 () Bool)

(assert (=> d!1446320 (=> res!1921737 e!2866265)))

(assert (=> d!1446320 (= res!1921737 (not ((_ is Cons!51052) lt!1755697)))))

(assert (=> d!1446320 (= (noDuplicateKeys!1308 lt!1755697) e!2866265)))

(declare-fun b!4595297 () Bool)

(declare-fun e!2866266 () Bool)

(assert (=> b!4595297 (= e!2866265 e!2866266)))

(declare-fun res!1921738 () Bool)

(assert (=> b!4595297 (=> (not res!1921738) (not e!2866266))))

(assert (=> b!4595297 (= res!1921738 (not (containsKey!2132 (t!358170 lt!1755697) (_1!29135 (h!57010 lt!1755697)))))))

(declare-fun b!4595298 () Bool)

(assert (=> b!4595298 (= e!2866266 (noDuplicateKeys!1308 (t!358170 lt!1755697)))))

(assert (= (and d!1446320 (not res!1921737)) b!4595297))

(assert (= (and b!4595297 res!1921738) b!4595298))

(declare-fun m!5419609 () Bool)

(assert (=> b!4595297 m!5419609))

(declare-fun m!5419611 () Bool)

(assert (=> b!4595298 m!5419611))

(assert (=> d!1446216 d!1446320))

(declare-fun b!4595323 () Bool)

(assert (=> b!4595323 true))

(declare-fun bs!1009062 () Bool)

(declare-fun b!4595317 () Bool)

(assert (= bs!1009062 (and b!4595317 b!4595323)))

(declare-fun lambda!185624 () Int)

(declare-fun lambda!185623 () Int)

(assert (=> bs!1009062 (= (= (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (= lambda!185624 lambda!185623))))

(assert (=> b!4595317 true))

(declare-fun bs!1009063 () Bool)

(declare-fun b!4595320 () Bool)

(assert (= bs!1009063 (and b!4595320 b!4595323)))

(declare-fun lambda!185625 () Int)

(assert (=> bs!1009063 (= (= (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (= lambda!185625 lambda!185623))))

(declare-fun bs!1009064 () Bool)

(assert (= bs!1009064 (and b!4595320 b!4595317)))

(assert (=> bs!1009064 (= (= (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))) (= lambda!185625 lambda!185624))))

(assert (=> b!4595320 true))

(declare-fun e!2866275 () List!51179)

(assert (=> b!4595317 (= e!2866275 (Cons!51055 (_1!29135 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (getKeysList!566 (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))))))

(declare-fun c!786965 () Bool)

(assert (=> b!4595317 (= c!786965 (containsKey!2135 (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (_1!29135 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))))))

(declare-fun lt!1755868 () Unit!107764)

(declare-fun e!2866277 () Unit!107764)

(assert (=> b!4595317 (= lt!1755868 e!2866277)))

(declare-fun c!786967 () Bool)

(assert (=> b!4595317 (= c!786967 (contains!13991 (getKeysList!566 (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (_1!29135 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))))))

(declare-fun lt!1755867 () Unit!107764)

(declare-fun e!2866276 () Unit!107764)

(assert (=> b!4595317 (= lt!1755867 e!2866276)))

(declare-fun lt!1755862 () List!51179)

(assert (=> b!4595317 (= lt!1755862 (getKeysList!566 (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))))))

(declare-fun lt!1755864 () Unit!107764)

(declare-fun lemmaForallContainsAddHeadPreserves!227 (List!51176 List!51179 tuple2!51682) Unit!107764)

(assert (=> b!4595317 (= lt!1755864 (lemmaForallContainsAddHeadPreserves!227 (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) lt!1755862 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))))))

(declare-fun forall!10581 (List!51179 Int) Bool)

(assert (=> b!4595317 (forall!10581 lt!1755862 lambda!185624)))

(declare-fun lt!1755865 () Unit!107764)

(assert (=> b!4595317 (= lt!1755865 lt!1755864)))

(declare-fun b!4595318 () Bool)

(assert (=> b!4595318 (= e!2866275 Nil!51055)))

(declare-fun b!4595319 () Bool)

(declare-fun Unit!107778 () Unit!107764)

(assert (=> b!4595319 (= e!2866277 Unit!107778)))

(declare-fun res!1921745 () Bool)

(declare-fun e!2866278 () Bool)

(assert (=> b!4595320 (=> (not res!1921745) (not e!2866278))))

(declare-fun lt!1755866 () List!51179)

(assert (=> b!4595320 (= res!1921745 (forall!10581 lt!1755866 lambda!185625))))

(declare-fun b!4595321 () Bool)

(declare-fun lambda!185626 () Int)

(declare-fun content!8629 (List!51179) (InoxSet K!12420))

(declare-fun map!11274 (List!51176 Int) List!51179)

(assert (=> b!4595321 (= e!2866278 (= (content!8629 lt!1755866) (content!8629 (map!11274 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) lambda!185626))))))

(declare-fun b!4595322 () Bool)

(declare-fun Unit!107779 () Unit!107764)

(assert (=> b!4595322 (= e!2866276 Unit!107779)))

(assert (=> b!4595323 false))

(declare-fun lt!1755863 () Unit!107764)

(declare-fun forallContained!2834 (List!51179 Int K!12420) Unit!107764)

(assert (=> b!4595323 (= lt!1755863 (forallContained!2834 (getKeysList!566 (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) lambda!185623 (_1!29135 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))))))

(declare-fun Unit!107780 () Unit!107764)

(assert (=> b!4595323 (= e!2866276 Unit!107780)))

(declare-fun d!1446322 () Bool)

(assert (=> d!1446322 e!2866278))

(declare-fun res!1921746 () Bool)

(assert (=> d!1446322 (=> (not res!1921746) (not e!2866278))))

(declare-fun noDuplicate!807 (List!51179) Bool)

(assert (=> d!1446322 (= res!1921746 (noDuplicate!807 lt!1755866))))

(assert (=> d!1446322 (= lt!1755866 e!2866275)))

(declare-fun c!786966 () Bool)

(assert (=> d!1446322 (= c!786966 ((_ is Cons!51052) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))))

(assert (=> d!1446322 (invariantList!1117 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))))

(assert (=> d!1446322 (= (getKeysList!566 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) lt!1755866)))

(declare-fun b!4595324 () Bool)

(assert (=> b!4595324 false))

(declare-fun Unit!107781 () Unit!107764)

(assert (=> b!4595324 (= e!2866277 Unit!107781)))

(declare-fun b!4595325 () Bool)

(declare-fun res!1921747 () Bool)

(assert (=> b!4595325 (=> (not res!1921747) (not e!2866278))))

(declare-fun length!470 (List!51179) Int)

(declare-fun length!471 (List!51176) Int)

(assert (=> b!4595325 (= res!1921747 (= (length!470 lt!1755866) (length!471 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))))))

(assert (= (and d!1446322 c!786966) b!4595317))

(assert (= (and d!1446322 (not c!786966)) b!4595318))

(assert (= (and b!4595317 c!786965) b!4595324))

(assert (= (and b!4595317 (not c!786965)) b!4595319))

(assert (= (and b!4595317 c!786967) b!4595323))

(assert (= (and b!4595317 (not c!786967)) b!4595322))

(assert (= (and d!1446322 res!1921746) b!4595325))

(assert (= (and b!4595325 res!1921747) b!4595320))

(assert (= (and b!4595320 res!1921745) b!4595321))

(declare-fun m!5419613 () Bool)

(assert (=> d!1446322 m!5419613))

(declare-fun m!5419615 () Bool)

(assert (=> d!1446322 m!5419615))

(declare-fun m!5419617 () Bool)

(assert (=> b!4595317 m!5419617))

(declare-fun m!5419619 () Bool)

(assert (=> b!4595317 m!5419619))

(assert (=> b!4595317 m!5419617))

(declare-fun m!5419621 () Bool)

(assert (=> b!4595317 m!5419621))

(declare-fun m!5419623 () Bool)

(assert (=> b!4595317 m!5419623))

(declare-fun m!5419625 () Bool)

(assert (=> b!4595317 m!5419625))

(assert (=> b!4595323 m!5419617))

(assert (=> b!4595323 m!5419617))

(declare-fun m!5419627 () Bool)

(assert (=> b!4595323 m!5419627))

(declare-fun m!5419629 () Bool)

(assert (=> b!4595325 m!5419629))

(declare-fun m!5419631 () Bool)

(assert (=> b!4595325 m!5419631))

(declare-fun m!5419633 () Bool)

(assert (=> b!4595321 m!5419633))

(declare-fun m!5419635 () Bool)

(assert (=> b!4595321 m!5419635))

(assert (=> b!4595321 m!5419635))

(declare-fun m!5419637 () Bool)

(assert (=> b!4595321 m!5419637))

(declare-fun m!5419639 () Bool)

(assert (=> b!4595320 m!5419639))

(assert (=> b!4595124 d!1446322))

(declare-fun d!1446324 () Bool)

(declare-fun res!1921752 () Bool)

(declare-fun e!2866283 () Bool)

(assert (=> d!1446324 (=> res!1921752 e!2866283)))

(assert (=> d!1446324 (= res!1921752 (or ((_ is Nil!51053) (toList!4631 lm!1477)) ((_ is Nil!51053) (t!358171 (toList!4631 lm!1477)))))))

(assert (=> d!1446324 (= (isStrictlySorted!534 (toList!4631 lm!1477)) e!2866283)))

(declare-fun b!4595332 () Bool)

(declare-fun e!2866284 () Bool)

(assert (=> b!4595332 (= e!2866283 e!2866284)))

(declare-fun res!1921753 () Bool)

(assert (=> b!4595332 (=> (not res!1921753) (not e!2866284))))

(assert (=> b!4595332 (= res!1921753 (bvslt (_1!29136 (h!57011 (toList!4631 lm!1477))) (_1!29136 (h!57011 (t!358171 (toList!4631 lm!1477))))))))

(declare-fun b!4595333 () Bool)

(assert (=> b!4595333 (= e!2866284 (isStrictlySorted!534 (t!358171 (toList!4631 lm!1477))))))

(assert (= (and d!1446324 (not res!1921752)) b!4595332))

(assert (= (and b!4595332 res!1921753) b!4595333))

(declare-fun m!5419641 () Bool)

(assert (=> b!4595333 m!5419641))

(assert (=> d!1446308 d!1446324))

(declare-fun d!1446326 () Bool)

(declare-fun res!1921758 () Bool)

(declare-fun e!2866289 () Bool)

(assert (=> d!1446326 (=> res!1921758 e!2866289)))

(assert (=> d!1446326 (= res!1921758 (and ((_ is Cons!51053) (toList!4631 lm!1477)) (= (_1!29136 (h!57011 (toList!4631 lm!1477))) lt!1755703)))))

(assert (=> d!1446326 (= (containsKey!2134 (toList!4631 lm!1477) lt!1755703) e!2866289)))

(declare-fun b!4595338 () Bool)

(declare-fun e!2866290 () Bool)

(assert (=> b!4595338 (= e!2866289 e!2866290)))

(declare-fun res!1921759 () Bool)

(assert (=> b!4595338 (=> (not res!1921759) (not e!2866290))))

(assert (=> b!4595338 (= res!1921759 (and (or (not ((_ is Cons!51053) (toList!4631 lm!1477))) (bvsle (_1!29136 (h!57011 (toList!4631 lm!1477))) lt!1755703)) ((_ is Cons!51053) (toList!4631 lm!1477)) (bvslt (_1!29136 (h!57011 (toList!4631 lm!1477))) lt!1755703)))))

(declare-fun b!4595339 () Bool)

(assert (=> b!4595339 (= e!2866290 (containsKey!2134 (t!358171 (toList!4631 lm!1477)) lt!1755703))))

(assert (= (and d!1446326 (not res!1921758)) b!4595338))

(assert (= (and b!4595338 res!1921759) b!4595339))

(declare-fun m!5419643 () Bool)

(assert (=> b!4595339 m!5419643))

(assert (=> d!1446230 d!1446326))

(declare-fun d!1446328 () Bool)

(declare-fun res!1921760 () Bool)

(declare-fun e!2866291 () Bool)

(assert (=> d!1446328 (=> res!1921760 e!2866291)))

(assert (=> d!1446328 (= res!1921760 ((_ is Nil!51052) newBucket!178))))

(assert (=> d!1446328 (= (forall!10580 newBucket!178 lambda!185609) e!2866291)))

(declare-fun b!4595340 () Bool)

(declare-fun e!2866292 () Bool)

(assert (=> b!4595340 (= e!2866291 e!2866292)))

(declare-fun res!1921761 () Bool)

(assert (=> b!4595340 (=> (not res!1921761) (not e!2866292))))

(assert (=> b!4595340 (= res!1921761 (dynLambda!21387 lambda!185609 (h!57010 newBucket!178)))))

(declare-fun b!4595341 () Bool)

(assert (=> b!4595341 (= e!2866292 (forall!10580 (t!358170 newBucket!178) lambda!185609))))

(assert (= (and d!1446328 (not res!1921760)) b!4595340))

(assert (= (and b!4595340 res!1921761) b!4595341))

(declare-fun b_lambda!169063 () Bool)

(assert (=> (not b_lambda!169063) (not b!4595340)))

(declare-fun m!5419645 () Bool)

(assert (=> b!4595340 m!5419645))

(declare-fun m!5419647 () Bool)

(assert (=> b!4595341 m!5419647))

(assert (=> d!1446294 d!1446328))

(declare-fun d!1446330 () Bool)

(declare-fun res!1921762 () Bool)

(declare-fun e!2866293 () Bool)

(assert (=> d!1446330 (=> res!1921762 e!2866293)))

(assert (=> d!1446330 (= res!1921762 ((_ is Nil!51053) (toList!4631 lm!1477)))))

(assert (=> d!1446330 (= (forall!10578 (toList!4631 lm!1477) lambda!185603) e!2866293)))

(declare-fun b!4595342 () Bool)

(declare-fun e!2866294 () Bool)

(assert (=> b!4595342 (= e!2866293 e!2866294)))

(declare-fun res!1921763 () Bool)

(assert (=> b!4595342 (=> (not res!1921763) (not e!2866294))))

(assert (=> b!4595342 (= res!1921763 (dynLambda!21386 lambda!185603 (h!57011 (toList!4631 lm!1477))))))

(declare-fun b!4595343 () Bool)

(assert (=> b!4595343 (= e!2866294 (forall!10578 (t!358171 (toList!4631 lm!1477)) lambda!185603))))

(assert (= (and d!1446330 (not res!1921762)) b!4595342))

(assert (= (and b!4595342 res!1921763) b!4595343))

(declare-fun b_lambda!169065 () Bool)

(assert (=> (not b_lambda!169065) (not b!4595342)))

(declare-fun m!5419649 () Bool)

(assert (=> b!4595342 m!5419649))

(declare-fun m!5419651 () Bool)

(assert (=> b!4595343 m!5419651))

(assert (=> d!1446288 d!1446330))

(declare-fun d!1446332 () Bool)

(declare-fun res!1921764 () Bool)

(declare-fun e!2866295 () Bool)

(assert (=> d!1446332 (=> res!1921764 e!2866295)))

(assert (=> d!1446332 (= res!1921764 (and ((_ is Cons!51052) lt!1755844) (= (_1!29135 (h!57010 lt!1755844)) key!3287)))))

(assert (=> d!1446332 (= (containsKey!2132 lt!1755844 key!3287) e!2866295)))

(declare-fun b!4595344 () Bool)

(declare-fun e!2866296 () Bool)

(assert (=> b!4595344 (= e!2866295 e!2866296)))

(declare-fun res!1921765 () Bool)

(assert (=> b!4595344 (=> (not res!1921765) (not e!2866296))))

(assert (=> b!4595344 (= res!1921765 ((_ is Cons!51052) lt!1755844))))

(declare-fun b!4595345 () Bool)

(assert (=> b!4595345 (= e!2866296 (containsKey!2132 (t!358170 lt!1755844) key!3287))))

(assert (= (and d!1446332 (not res!1921764)) b!4595344))

(assert (= (and b!4595344 res!1921765) b!4595345))

(declare-fun m!5419653 () Bool)

(assert (=> b!4595345 m!5419653))

(assert (=> d!1446300 d!1446332))

(assert (=> d!1446300 d!1446258))

(assert (=> b!4595060 d!1446224))

(declare-fun d!1446334 () Bool)

(declare-fun res!1921770 () Bool)

(declare-fun e!2866301 () Bool)

(assert (=> d!1446334 (=> res!1921770 e!2866301)))

(assert (=> d!1446334 (= res!1921770 (and ((_ is Cons!51052) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (= (_1!29135 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) key!3287)))))

(assert (=> d!1446334 (= (containsKey!2135 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287) e!2866301)))

(declare-fun b!4595350 () Bool)

(declare-fun e!2866302 () Bool)

(assert (=> b!4595350 (= e!2866301 e!2866302)))

(declare-fun res!1921771 () Bool)

(assert (=> b!4595350 (=> (not res!1921771) (not e!2866302))))

(assert (=> b!4595350 (= res!1921771 ((_ is Cons!51052) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))))

(declare-fun b!4595351 () Bool)

(assert (=> b!4595351 (= e!2866302 (containsKey!2135 (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) key!3287))))

(assert (= (and d!1446334 (not res!1921770)) b!4595350))

(assert (= (and b!4595350 res!1921771) b!4595351))

(declare-fun m!5419655 () Bool)

(assert (=> b!4595351 m!5419655))

(assert (=> d!1446238 d!1446334))

(declare-fun bs!1009065 () Bool)

(declare-fun b!4595358 () Bool)

(assert (= bs!1009065 (and b!4595358 b!4595323)))

(declare-fun lambda!185627 () Int)

(assert (=> bs!1009065 (= (= (t!358170 (toList!4632 (extractMap!1368 lt!1755698))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (= lambda!185627 lambda!185623))))

(declare-fun bs!1009066 () Bool)

(assert (= bs!1009066 (and b!4595358 b!4595317)))

(assert (=> bs!1009066 (= (= (t!358170 (toList!4632 (extractMap!1368 lt!1755698))) (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))) (= lambda!185627 lambda!185624))))

(declare-fun bs!1009067 () Bool)

(assert (= bs!1009067 (and b!4595358 b!4595320)))

(assert (=> bs!1009067 (= (= (t!358170 (toList!4632 (extractMap!1368 lt!1755698))) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (= lambda!185627 lambda!185625))))

(assert (=> b!4595358 true))

(declare-fun bs!1009068 () Bool)

(declare-fun b!4595352 () Bool)

(assert (= bs!1009068 (and b!4595352 b!4595323)))

(declare-fun lambda!185628 () Int)

(assert (=> bs!1009068 (= (= (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))) (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (= lambda!185628 lambda!185623))))

(declare-fun bs!1009069 () Bool)

(assert (= bs!1009069 (and b!4595352 b!4595317)))

(assert (=> bs!1009069 (= (= (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))) (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))) (= lambda!185628 lambda!185624))))

(declare-fun bs!1009070 () Bool)

(assert (= bs!1009070 (and b!4595352 b!4595320)))

(assert (=> bs!1009070 (= (= (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))) (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (= lambda!185628 lambda!185625))))

(declare-fun bs!1009071 () Bool)

(assert (= bs!1009071 (and b!4595352 b!4595358)))

(assert (=> bs!1009071 (= (= (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))) (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) (= lambda!185628 lambda!185627))))

(assert (=> b!4595352 true))

(declare-fun bs!1009072 () Bool)

(declare-fun b!4595355 () Bool)

(assert (= bs!1009072 (and b!4595355 b!4595323)))

(declare-fun lambda!185629 () Int)

(assert (=> bs!1009072 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (= lambda!185629 lambda!185623))))

(declare-fun bs!1009073 () Bool)

(assert (= bs!1009073 (and b!4595355 b!4595352)))

(assert (=> bs!1009073 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))) (t!358170 (toList!4632 (extractMap!1368 lt!1755698))))) (= lambda!185629 lambda!185628))))

(declare-fun bs!1009074 () Bool)

(assert (= bs!1009074 (and b!4595355 b!4595358)))

(assert (=> bs!1009074 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) (= lambda!185629 lambda!185627))))

(declare-fun bs!1009075 () Bool)

(assert (= bs!1009075 (and b!4595355 b!4595320)))

(assert (=> bs!1009075 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (= lambda!185629 lambda!185625))))

(declare-fun bs!1009076 () Bool)

(assert (= bs!1009076 (and b!4595355 b!4595317)))

(assert (=> bs!1009076 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))) (= lambda!185629 lambda!185624))))

(assert (=> b!4595355 true))

(declare-fun bs!1009077 () Bool)

(declare-fun b!4595356 () Bool)

(assert (= bs!1009077 (and b!4595356 b!4595321)))

(declare-fun lambda!185630 () Int)

(assert (=> bs!1009077 (= lambda!185630 lambda!185626)))

(declare-fun e!2866303 () List!51179)

(assert (=> b!4595352 (= e!2866303 (Cons!51055 (_1!29135 (h!57010 (toList!4632 (extractMap!1368 lt!1755698)))) (getKeysList!566 (t!358170 (toList!4632 (extractMap!1368 lt!1755698))))))))

(declare-fun c!786968 () Bool)

(assert (=> b!4595352 (= c!786968 (containsKey!2135 (t!358170 (toList!4632 (extractMap!1368 lt!1755698))) (_1!29135 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))))))))

(declare-fun lt!1755875 () Unit!107764)

(declare-fun e!2866305 () Unit!107764)

(assert (=> b!4595352 (= lt!1755875 e!2866305)))

(declare-fun c!786970 () Bool)

(assert (=> b!4595352 (= c!786970 (contains!13991 (getKeysList!566 (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) (_1!29135 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))))))))

(declare-fun lt!1755874 () Unit!107764)

(declare-fun e!2866304 () Unit!107764)

(assert (=> b!4595352 (= lt!1755874 e!2866304)))

(declare-fun lt!1755869 () List!51179)

(assert (=> b!4595352 (= lt!1755869 (getKeysList!566 (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))))))

(declare-fun lt!1755871 () Unit!107764)

(assert (=> b!4595352 (= lt!1755871 (lemmaForallContainsAddHeadPreserves!227 (t!358170 (toList!4632 (extractMap!1368 lt!1755698))) lt!1755869 (h!57010 (toList!4632 (extractMap!1368 lt!1755698)))))))

(assert (=> b!4595352 (forall!10581 lt!1755869 lambda!185628)))

(declare-fun lt!1755872 () Unit!107764)

(assert (=> b!4595352 (= lt!1755872 lt!1755871)))

(declare-fun b!4595353 () Bool)

(assert (=> b!4595353 (= e!2866303 Nil!51055)))

(declare-fun b!4595354 () Bool)

(declare-fun Unit!107782 () Unit!107764)

(assert (=> b!4595354 (= e!2866305 Unit!107782)))

(declare-fun res!1921772 () Bool)

(declare-fun e!2866306 () Bool)

(assert (=> b!4595355 (=> (not res!1921772) (not e!2866306))))

(declare-fun lt!1755873 () List!51179)

(assert (=> b!4595355 (= res!1921772 (forall!10581 lt!1755873 lambda!185629))))

(assert (=> b!4595356 (= e!2866306 (= (content!8629 lt!1755873) (content!8629 (map!11274 (toList!4632 (extractMap!1368 lt!1755698)) lambda!185630))))))

(declare-fun b!4595357 () Bool)

(declare-fun Unit!107783 () Unit!107764)

(assert (=> b!4595357 (= e!2866304 Unit!107783)))

(assert (=> b!4595358 false))

(declare-fun lt!1755870 () Unit!107764)

(assert (=> b!4595358 (= lt!1755870 (forallContained!2834 (getKeysList!566 (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) lambda!185627 (_1!29135 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))))))))

(declare-fun Unit!107784 () Unit!107764)

(assert (=> b!4595358 (= e!2866304 Unit!107784)))

(declare-fun d!1446336 () Bool)

(assert (=> d!1446336 e!2866306))

(declare-fun res!1921773 () Bool)

(assert (=> d!1446336 (=> (not res!1921773) (not e!2866306))))

(assert (=> d!1446336 (= res!1921773 (noDuplicate!807 lt!1755873))))

(assert (=> d!1446336 (= lt!1755873 e!2866303)))

(declare-fun c!786969 () Bool)

(assert (=> d!1446336 (= c!786969 ((_ is Cons!51052) (toList!4632 (extractMap!1368 lt!1755698))))))

(assert (=> d!1446336 (invariantList!1117 (toList!4632 (extractMap!1368 lt!1755698)))))

(assert (=> d!1446336 (= (getKeysList!566 (toList!4632 (extractMap!1368 lt!1755698))) lt!1755873)))

(declare-fun b!4595359 () Bool)

(assert (=> b!4595359 false))

(declare-fun Unit!107785 () Unit!107764)

(assert (=> b!4595359 (= e!2866305 Unit!107785)))

(declare-fun b!4595360 () Bool)

(declare-fun res!1921774 () Bool)

(assert (=> b!4595360 (=> (not res!1921774) (not e!2866306))))

(assert (=> b!4595360 (= res!1921774 (= (length!470 lt!1755873) (length!471 (toList!4632 (extractMap!1368 lt!1755698)))))))

(assert (= (and d!1446336 c!786969) b!4595352))

(assert (= (and d!1446336 (not c!786969)) b!4595353))

(assert (= (and b!4595352 c!786968) b!4595359))

(assert (= (and b!4595352 (not c!786968)) b!4595354))

(assert (= (and b!4595352 c!786970) b!4595358))

(assert (= (and b!4595352 (not c!786970)) b!4595357))

(assert (= (and d!1446336 res!1921773) b!4595360))

(assert (= (and b!4595360 res!1921774) b!4595355))

(assert (= (and b!4595355 res!1921772) b!4595356))

(declare-fun m!5419657 () Bool)

(assert (=> d!1446336 m!5419657))

(declare-fun m!5419659 () Bool)

(assert (=> d!1446336 m!5419659))

(declare-fun m!5419661 () Bool)

(assert (=> b!4595352 m!5419661))

(declare-fun m!5419663 () Bool)

(assert (=> b!4595352 m!5419663))

(assert (=> b!4595352 m!5419661))

(declare-fun m!5419665 () Bool)

(assert (=> b!4595352 m!5419665))

(declare-fun m!5419667 () Bool)

(assert (=> b!4595352 m!5419667))

(declare-fun m!5419669 () Bool)

(assert (=> b!4595352 m!5419669))

(assert (=> b!4595358 m!5419661))

(assert (=> b!4595358 m!5419661))

(declare-fun m!5419671 () Bool)

(assert (=> b!4595358 m!5419671))

(declare-fun m!5419673 () Bool)

(assert (=> b!4595360 m!5419673))

(declare-fun m!5419675 () Bool)

(assert (=> b!4595360 m!5419675))

(declare-fun m!5419677 () Bool)

(assert (=> b!4595356 m!5419677))

(declare-fun m!5419679 () Bool)

(assert (=> b!4595356 m!5419679))

(assert (=> b!4595356 m!5419679))

(declare-fun m!5419681 () Bool)

(assert (=> b!4595356 m!5419681))

(declare-fun m!5419683 () Bool)

(assert (=> b!4595355 m!5419683))

(assert (=> b!4595186 d!1446336))

(declare-fun d!1446338 () Bool)

(declare-fun lt!1755878 () Bool)

(assert (=> d!1446338 (= lt!1755878 (select (content!8629 e!2866149) key!3287))))

(declare-fun e!2866311 () Bool)

(assert (=> d!1446338 (= lt!1755878 e!2866311)))

(declare-fun res!1921779 () Bool)

(assert (=> d!1446338 (=> (not res!1921779) (not e!2866311))))

(assert (=> d!1446338 (= res!1921779 ((_ is Cons!51055) e!2866149))))

(assert (=> d!1446338 (= (contains!13991 e!2866149 key!3287) lt!1755878)))

(declare-fun b!4595365 () Bool)

(declare-fun e!2866312 () Bool)

(assert (=> b!4595365 (= e!2866311 e!2866312)))

(declare-fun res!1921780 () Bool)

(assert (=> b!4595365 (=> res!1921780 e!2866312)))

(assert (=> b!4595365 (= res!1921780 (= (h!57015 e!2866149) key!3287))))

(declare-fun b!4595366 () Bool)

(assert (=> b!4595366 (= e!2866312 (contains!13991 (t!358173 e!2866149) key!3287))))

(assert (= (and d!1446338 res!1921779) b!4595365))

(assert (= (and b!4595365 (not res!1921780)) b!4595366))

(declare-fun m!5419685 () Bool)

(assert (=> d!1446338 m!5419685))

(declare-fun m!5419687 () Bool)

(assert (=> d!1446338 m!5419687))

(declare-fun m!5419689 () Bool)

(assert (=> b!4595366 m!5419689))

(assert (=> bm!320683 d!1446338))

(declare-fun d!1446340 () Bool)

(declare-fun isEmpty!28856 (Option!11377) Bool)

(assert (=> d!1446340 (= (isDefined!8646 (getValueByKey!1297 (toList!4631 lm!1477) lt!1755703)) (not (isEmpty!28856 (getValueByKey!1297 (toList!4631 lm!1477) lt!1755703))))))

(declare-fun bs!1009078 () Bool)

(assert (= bs!1009078 d!1446340))

(assert (=> bs!1009078 m!5419375))

(declare-fun m!5419691 () Bool)

(assert (=> bs!1009078 m!5419691))

(assert (=> b!4595084 d!1446340))

(declare-fun d!1446342 () Bool)

(declare-fun c!786975 () Bool)

(assert (=> d!1446342 (= c!786975 (and ((_ is Cons!51053) (toList!4631 lm!1477)) (= (_1!29136 (h!57011 (toList!4631 lm!1477))) lt!1755703)))))

(declare-fun e!2866317 () Option!11377)

(assert (=> d!1446342 (= (getValueByKey!1297 (toList!4631 lm!1477) lt!1755703) e!2866317)))

(declare-fun b!4595377 () Bool)

(declare-fun e!2866318 () Option!11377)

(assert (=> b!4595377 (= e!2866318 (getValueByKey!1297 (t!358171 (toList!4631 lm!1477)) lt!1755703))))

(declare-fun b!4595375 () Bool)

(assert (=> b!4595375 (= e!2866317 (Some!11376 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(declare-fun b!4595376 () Bool)

(assert (=> b!4595376 (= e!2866317 e!2866318)))

(declare-fun c!786976 () Bool)

(assert (=> b!4595376 (= c!786976 (and ((_ is Cons!51053) (toList!4631 lm!1477)) (not (= (_1!29136 (h!57011 (toList!4631 lm!1477))) lt!1755703))))))

(declare-fun b!4595378 () Bool)

(assert (=> b!4595378 (= e!2866318 None!11376)))

(assert (= (and d!1446342 c!786975) b!4595375))

(assert (= (and d!1446342 (not c!786975)) b!4595376))

(assert (= (and b!4595376 c!786976) b!4595377))

(assert (= (and b!4595376 (not c!786976)) b!4595378))

(declare-fun m!5419693 () Bool)

(assert (=> b!4595377 m!5419693))

(assert (=> b!4595084 d!1446342))

(assert (=> b!4595126 d!1446334))

(declare-fun d!1446344 () Bool)

(assert (=> d!1446344 (containsKey!2135 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287)))

(declare-fun lt!1755881 () Unit!107764)

(declare-fun choose!30755 (List!51176 K!12420) Unit!107764)

(assert (=> d!1446344 (= lt!1755881 (choose!30755 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(assert (=> d!1446344 (invariantList!1117 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))))

(assert (=> d!1446344 (= (lemmaInGetKeysListThenContainsKey!565 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287) lt!1755881)))

(declare-fun bs!1009079 () Bool)

(assert (= bs!1009079 d!1446344))

(assert (=> bs!1009079 m!5419415))

(declare-fun m!5419695 () Bool)

(assert (=> bs!1009079 m!5419695))

(assert (=> bs!1009079 m!5419615))

(assert (=> b!4595126 d!1446344))

(declare-fun d!1446346 () Bool)

(declare-fun res!1921781 () Bool)

(declare-fun e!2866319 () Bool)

(assert (=> d!1446346 (=> res!1921781 e!2866319)))

(assert (=> d!1446346 (= res!1921781 (and ((_ is Cons!51052) (toList!4632 (extractMap!1368 lt!1755698))) (= (_1!29135 (h!57010 (toList!4632 (extractMap!1368 lt!1755698)))) key!3287)))))

(assert (=> d!1446346 (= (containsKey!2135 (toList!4632 (extractMap!1368 lt!1755698)) key!3287) e!2866319)))

(declare-fun b!4595379 () Bool)

(declare-fun e!2866320 () Bool)

(assert (=> b!4595379 (= e!2866319 e!2866320)))

(declare-fun res!1921782 () Bool)

(assert (=> b!4595379 (=> (not res!1921782) (not e!2866320))))

(assert (=> b!4595379 (= res!1921782 ((_ is Cons!51052) (toList!4632 (extractMap!1368 lt!1755698))))))

(declare-fun b!4595380 () Bool)

(assert (=> b!4595380 (= e!2866320 (containsKey!2135 (t!358170 (toList!4632 (extractMap!1368 lt!1755698))) key!3287))))

(assert (= (and d!1446346 (not res!1921781)) b!4595379))

(assert (= (and b!4595379 res!1921782) b!4595380))

(declare-fun m!5419697 () Bool)

(assert (=> b!4595380 m!5419697))

(assert (=> b!4595188 d!1446346))

(declare-fun d!1446348 () Bool)

(assert (=> d!1446348 (containsKey!2135 (toList!4632 (extractMap!1368 lt!1755698)) key!3287)))

(declare-fun lt!1755882 () Unit!107764)

(assert (=> d!1446348 (= lt!1755882 (choose!30755 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))

(assert (=> d!1446348 (invariantList!1117 (toList!4632 (extractMap!1368 lt!1755698)))))

(assert (=> d!1446348 (= (lemmaInGetKeysListThenContainsKey!565 (toList!4632 (extractMap!1368 lt!1755698)) key!3287) lt!1755882)))

(declare-fun bs!1009080 () Bool)

(assert (= bs!1009080 d!1446348))

(assert (=> bs!1009080 m!5419475))

(declare-fun m!5419699 () Bool)

(assert (=> bs!1009080 m!5419699))

(assert (=> bs!1009080 m!5419659))

(assert (=> b!4595188 d!1446348))

(declare-fun bs!1009081 () Bool)

(declare-fun b!4595388 () Bool)

(assert (= bs!1009081 (and b!4595388 b!4595323)))

(declare-fun lambda!185635 () Int)

(assert (=> bs!1009081 (= (= (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (= lambda!185635 lambda!185623))))

(declare-fun bs!1009082 () Bool)

(assert (= bs!1009082 (and b!4595388 b!4595355)))

(assert (=> bs!1009082 (= (= (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) (toList!4632 (extractMap!1368 lt!1755698))) (= lambda!185635 lambda!185629))))

(declare-fun bs!1009083 () Bool)

(assert (= bs!1009083 (and b!4595388 b!4595352)))

(assert (=> bs!1009083 (= (= (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))) (t!358170 (toList!4632 (extractMap!1368 lt!1755698))))) (= lambda!185635 lambda!185628))))

(declare-fun bs!1009084 () Bool)

(assert (= bs!1009084 (and b!4595388 b!4595358)))

(assert (=> bs!1009084 (= (= (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) (= lambda!185635 lambda!185627))))

(declare-fun bs!1009085 () Bool)

(assert (= bs!1009085 (and b!4595388 b!4595320)))

(assert (=> bs!1009085 (= lambda!185635 lambda!185625)))

(declare-fun bs!1009086 () Bool)

(assert (= bs!1009086 (and b!4595388 b!4595317)))

(assert (=> bs!1009086 (= (= (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))) (= lambda!185635 lambda!185624))))

(assert (=> b!4595388 true))

(declare-fun bs!1009087 () Bool)

(declare-fun b!4595389 () Bool)

(assert (= bs!1009087 (and b!4595389 b!4595321)))

(declare-fun lambda!185636 () Int)

(assert (=> bs!1009087 (= lambda!185636 lambda!185626)))

(declare-fun bs!1009088 () Bool)

(assert (= bs!1009088 (and b!4595389 b!4595356)))

(assert (=> bs!1009088 (= lambda!185636 lambda!185630)))

(declare-fun d!1446350 () Bool)

(declare-fun e!2866323 () Bool)

(assert (=> d!1446350 e!2866323))

(declare-fun res!1921791 () Bool)

(assert (=> d!1446350 (=> (not res!1921791) (not e!2866323))))

(declare-fun lt!1755885 () List!51179)

(assert (=> d!1446350 (= res!1921791 (noDuplicate!807 lt!1755885))))

(assert (=> d!1446350 (= lt!1755885 (getKeysList!566 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))))

(assert (=> d!1446350 (= (keys!17867 (extractMap!1368 (toList!4631 lm!1477))) lt!1755885)))

(declare-fun b!4595387 () Bool)

(declare-fun res!1921789 () Bool)

(assert (=> b!4595387 (=> (not res!1921789) (not e!2866323))))

(assert (=> b!4595387 (= res!1921789 (= (length!470 lt!1755885) (length!471 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))))))

(declare-fun res!1921790 () Bool)

(assert (=> b!4595388 (=> (not res!1921790) (not e!2866323))))

(assert (=> b!4595388 (= res!1921790 (forall!10581 lt!1755885 lambda!185635))))

(assert (=> b!4595389 (= e!2866323 (= (content!8629 lt!1755885) (content!8629 (map!11274 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) lambda!185636))))))

(assert (= (and d!1446350 res!1921791) b!4595387))

(assert (= (and b!4595387 res!1921789) b!4595388))

(assert (= (and b!4595388 res!1921790) b!4595389))

(declare-fun m!5419701 () Bool)

(assert (=> d!1446350 m!5419701))

(assert (=> d!1446350 m!5419411))

(declare-fun m!5419703 () Bool)

(assert (=> b!4595387 m!5419703))

(assert (=> b!4595387 m!5419631))

(declare-fun m!5419705 () Bool)

(assert (=> b!4595388 m!5419705))

(declare-fun m!5419707 () Bool)

(assert (=> b!4595389 m!5419707))

(declare-fun m!5419709 () Bool)

(assert (=> b!4595389 m!5419709))

(assert (=> b!4595389 m!5419709))

(declare-fun m!5419711 () Bool)

(assert (=> b!4595389 m!5419711))

(assert (=> b!4595128 d!1446350))

(declare-fun d!1446352 () Bool)

(assert (=> d!1446352 (isDefined!8646 (getValueByKey!1297 (toList!4631 lm!1477) lt!1755703))))

(declare-fun lt!1755888 () Unit!107764)

(declare-fun choose!30756 (List!51177 (_ BitVec 64)) Unit!107764)

(assert (=> d!1446352 (= lt!1755888 (choose!30756 (toList!4631 lm!1477) lt!1755703))))

(declare-fun e!2866326 () Bool)

(assert (=> d!1446352 e!2866326))

(declare-fun res!1921794 () Bool)

(assert (=> d!1446352 (=> (not res!1921794) (not e!2866326))))

(assert (=> d!1446352 (= res!1921794 (isStrictlySorted!534 (toList!4631 lm!1477)))))

(assert (=> d!1446352 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1202 (toList!4631 lm!1477) lt!1755703) lt!1755888)))

(declare-fun b!4595394 () Bool)

(assert (=> b!4595394 (= e!2866326 (containsKey!2134 (toList!4631 lm!1477) lt!1755703))))

(assert (= (and d!1446352 res!1921794) b!4595394))

(assert (=> d!1446352 m!5419375))

(assert (=> d!1446352 m!5419375))

(assert (=> d!1446352 m!5419377))

(declare-fun m!5419713 () Bool)

(assert (=> d!1446352 m!5419713))

(assert (=> d!1446352 m!5419361))

(assert (=> b!4595394 m!5419371))

(assert (=> b!4595082 d!1446352))

(assert (=> b!4595082 d!1446340))

(assert (=> b!4595082 d!1446342))

(declare-fun b!4595398 () Bool)

(declare-fun e!2866328 () List!51176)

(assert (=> b!4595398 (= e!2866328 Nil!51052)))

(declare-fun b!4595396 () Bool)

(declare-fun e!2866327 () List!51176)

(assert (=> b!4595396 (= e!2866327 e!2866328)))

(declare-fun c!786977 () Bool)

(assert (=> b!4595396 (= c!786977 ((_ is Cons!51052) (t!358170 lt!1755697)))))

(declare-fun b!4595395 () Bool)

(assert (=> b!4595395 (= e!2866327 (t!358170 (t!358170 lt!1755697)))))

(declare-fun d!1446354 () Bool)

(declare-fun lt!1755889 () List!51176)

(assert (=> d!1446354 (not (containsKey!2132 lt!1755889 key!3287))))

(assert (=> d!1446354 (= lt!1755889 e!2866327)))

(declare-fun c!786978 () Bool)

(assert (=> d!1446354 (= c!786978 (and ((_ is Cons!51052) (t!358170 lt!1755697)) (= (_1!29135 (h!57010 (t!358170 lt!1755697))) key!3287)))))

(assert (=> d!1446354 (noDuplicateKeys!1308 (t!358170 lt!1755697))))

(assert (=> d!1446354 (= (removePairForKey!933 (t!358170 lt!1755697) key!3287) lt!1755889)))

(declare-fun b!4595397 () Bool)

(assert (=> b!4595397 (= e!2866328 (Cons!51052 (h!57010 (t!358170 lt!1755697)) (removePairForKey!933 (t!358170 (t!358170 lt!1755697)) key!3287)))))

(assert (= (and d!1446354 c!786978) b!4595395))

(assert (= (and d!1446354 (not c!786978)) b!4595396))

(assert (= (and b!4595396 c!786977) b!4595397))

(assert (= (and b!4595396 (not c!786977)) b!4595398))

(declare-fun m!5419715 () Bool)

(assert (=> d!1446354 m!5419715))

(assert (=> d!1446354 m!5419611))

(declare-fun m!5419717 () Bool)

(assert (=> b!4595397 m!5419717))

(assert (=> b!4595056 d!1446354))

(declare-fun d!1446356 () Bool)

(declare-fun noDuplicatedKeys!322 (List!51176) Bool)

(assert (=> d!1446356 (= (invariantList!1117 (toList!4632 lt!1755815)) (noDuplicatedKeys!322 (toList!4632 lt!1755815)))))

(declare-fun bs!1009089 () Bool)

(assert (= bs!1009089 d!1446356))

(declare-fun m!5419719 () Bool)

(assert (=> bs!1009089 m!5419719))

(assert (=> d!1446250 d!1446356))

(declare-fun d!1446358 () Bool)

(declare-fun res!1921795 () Bool)

(declare-fun e!2866329 () Bool)

(assert (=> d!1446358 (=> res!1921795 e!2866329)))

(assert (=> d!1446358 (= res!1921795 ((_ is Nil!51053) (toList!4631 lm!1477)))))

(assert (=> d!1446358 (= (forall!10578 (toList!4631 lm!1477) lambda!185589) e!2866329)))

(declare-fun b!4595399 () Bool)

(declare-fun e!2866330 () Bool)

(assert (=> b!4595399 (= e!2866329 e!2866330)))

(declare-fun res!1921796 () Bool)

(assert (=> b!4595399 (=> (not res!1921796) (not e!2866330))))

(assert (=> b!4595399 (= res!1921796 (dynLambda!21386 lambda!185589 (h!57011 (toList!4631 lm!1477))))))

(declare-fun b!4595400 () Bool)

(assert (=> b!4595400 (= e!2866330 (forall!10578 (t!358171 (toList!4631 lm!1477)) lambda!185589))))

(assert (= (and d!1446358 (not res!1921795)) b!4595399))

(assert (= (and b!4595399 res!1921796) b!4595400))

(declare-fun b_lambda!169067 () Bool)

(assert (=> (not b_lambda!169067) (not b!4595399)))

(declare-fun m!5419721 () Bool)

(assert (=> b!4595399 m!5419721))

(declare-fun m!5419723 () Bool)

(assert (=> b!4595400 m!5419723))

(assert (=> d!1446250 d!1446358))

(declare-fun d!1446360 () Bool)

(declare-fun isEmpty!28857 (Option!11379) Bool)

(assert (=> d!1446360 (= (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 lt!1755698)) key!3287)) (not (isEmpty!28857 (getValueByKey!1299 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))))

(declare-fun bs!1009090 () Bool)

(assert (= bs!1009090 d!1446360))

(assert (=> bs!1009090 m!5419477))

(declare-fun m!5419725 () Bool)

(assert (=> bs!1009090 m!5419725))

(assert (=> b!4595191 d!1446360))

(declare-fun d!1446362 () Bool)

(declare-fun c!786983 () Bool)

(assert (=> d!1446362 (= c!786983 (and ((_ is Cons!51052) (toList!4632 (extractMap!1368 lt!1755698))) (= (_1!29135 (h!57010 (toList!4632 (extractMap!1368 lt!1755698)))) key!3287)))))

(declare-fun e!2866335 () Option!11379)

(assert (=> d!1446362 (= (getValueByKey!1299 (toList!4632 (extractMap!1368 lt!1755698)) key!3287) e!2866335)))

(declare-fun b!4595410 () Bool)

(declare-fun e!2866336 () Option!11379)

(assert (=> b!4595410 (= e!2866335 e!2866336)))

(declare-fun c!786984 () Bool)

(assert (=> b!4595410 (= c!786984 (and ((_ is Cons!51052) (toList!4632 (extractMap!1368 lt!1755698))) (not (= (_1!29135 (h!57010 (toList!4632 (extractMap!1368 lt!1755698)))) key!3287))))))

(declare-fun b!4595411 () Bool)

(assert (=> b!4595411 (= e!2866336 (getValueByKey!1299 (t!358170 (toList!4632 (extractMap!1368 lt!1755698))) key!3287))))

(declare-fun b!4595409 () Bool)

(assert (=> b!4595409 (= e!2866335 (Some!11378 (_2!29135 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))))))))

(declare-fun b!4595412 () Bool)

(assert (=> b!4595412 (= e!2866336 None!11378)))

(assert (= (and d!1446362 c!786983) b!4595409))

(assert (= (and d!1446362 (not c!786983)) b!4595410))

(assert (= (and b!4595410 c!786984) b!4595411))

(assert (= (and b!4595410 (not c!786984)) b!4595412))

(declare-fun m!5419727 () Bool)

(assert (=> b!4595411 m!5419727))

(assert (=> b!4595191 d!1446362))

(declare-fun d!1446364 () Bool)

(declare-fun res!1921797 () Bool)

(declare-fun e!2866337 () Bool)

(assert (=> d!1446364 (=> res!1921797 e!2866337)))

(assert (=> d!1446364 (= res!1921797 (and ((_ is Cons!51052) (_2!29136 (h!57011 lt!1755698))) (= (_1!29135 (h!57010 (_2!29136 (h!57011 lt!1755698)))) key!3287)))))

(assert (=> d!1446364 (= (containsKey!2132 (_2!29136 (h!57011 lt!1755698)) key!3287) e!2866337)))

(declare-fun b!4595413 () Bool)

(declare-fun e!2866338 () Bool)

(assert (=> b!4595413 (= e!2866337 e!2866338)))

(declare-fun res!1921798 () Bool)

(assert (=> b!4595413 (=> (not res!1921798) (not e!2866338))))

(assert (=> b!4595413 (= res!1921798 ((_ is Cons!51052) (_2!29136 (h!57011 lt!1755698))))))

(declare-fun b!4595414 () Bool)

(assert (=> b!4595414 (= e!2866338 (containsKey!2132 (t!358170 (_2!29136 (h!57011 lt!1755698))) key!3287))))

(assert (= (and d!1446364 (not res!1921797)) b!4595413))

(assert (= (and b!4595413 res!1921798) b!4595414))

(declare-fun m!5419729 () Bool)

(assert (=> b!4595414 m!5419729))

(assert (=> b!4595043 d!1446364))

(declare-fun d!1446366 () Bool)

(declare-fun res!1921799 () Bool)

(declare-fun e!2866339 () Bool)

(assert (=> d!1446366 (=> res!1921799 e!2866339)))

(assert (=> d!1446366 (= res!1921799 ((_ is Nil!51053) (t!358171 (toList!4631 lm!1477))))))

(assert (=> d!1446366 (= (forall!10578 (t!358171 (toList!4631 lm!1477)) lambda!185574) e!2866339)))

(declare-fun b!4595415 () Bool)

(declare-fun e!2866340 () Bool)

(assert (=> b!4595415 (= e!2866339 e!2866340)))

(declare-fun res!1921800 () Bool)

(assert (=> b!4595415 (=> (not res!1921800) (not e!2866340))))

(assert (=> b!4595415 (= res!1921800 (dynLambda!21386 lambda!185574 (h!57011 (t!358171 (toList!4631 lm!1477)))))))

(declare-fun b!4595416 () Bool)

(assert (=> b!4595416 (= e!2866340 (forall!10578 (t!358171 (t!358171 (toList!4631 lm!1477))) lambda!185574))))

(assert (= (and d!1446366 (not res!1921799)) b!4595415))

(assert (= (and b!4595415 res!1921800) b!4595416))

(declare-fun b_lambda!169069 () Bool)

(assert (=> (not b_lambda!169069) (not b!4595415)))

(declare-fun m!5419731 () Bool)

(assert (=> b!4595415 m!5419731))

(declare-fun m!5419733 () Bool)

(assert (=> b!4595416 m!5419733))

(assert (=> b!4595278 d!1446366))

(declare-fun d!1446368 () Bool)

(declare-fun res!1921802 () Bool)

(declare-fun e!2866343 () Bool)

(assert (=> d!1446368 (=> res!1921802 e!2866343)))

(declare-fun e!2866342 () Bool)

(assert (=> d!1446368 (= res!1921802 e!2866342)))

(declare-fun res!1921803 () Bool)

(assert (=> d!1446368 (=> (not res!1921803) (not e!2866342))))

(assert (=> d!1446368 (= res!1921803 ((_ is Cons!51053) (t!358171 lt!1755698)))))

(assert (=> d!1446368 (= (containsKeyBiggerList!264 (t!358171 lt!1755698) key!3287) e!2866343)))

(declare-fun b!4595417 () Bool)

(assert (=> b!4595417 (= e!2866342 (containsKey!2132 (_2!29136 (h!57011 (t!358171 lt!1755698))) key!3287))))

(declare-fun b!4595418 () Bool)

(declare-fun e!2866341 () Bool)

(assert (=> b!4595418 (= e!2866343 e!2866341)))

(declare-fun res!1921801 () Bool)

(assert (=> b!4595418 (=> (not res!1921801) (not e!2866341))))

(assert (=> b!4595418 (= res!1921801 ((_ is Cons!51053) (t!358171 lt!1755698)))))

(declare-fun b!4595419 () Bool)

(assert (=> b!4595419 (= e!2866341 (containsKeyBiggerList!264 (t!358171 (t!358171 lt!1755698)) key!3287))))

(assert (= (and d!1446368 res!1921803) b!4595417))

(assert (= (and d!1446368 (not res!1921802)) b!4595418))

(assert (= (and b!4595418 res!1921801) b!4595419))

(declare-fun m!5419735 () Bool)

(assert (=> b!4595417 m!5419735))

(declare-fun m!5419737 () Bool)

(assert (=> b!4595419 m!5419737))

(assert (=> b!4595045 d!1446368))

(declare-fun d!1446370 () Bool)

(assert (=> d!1446370 (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))

(declare-fun lt!1755892 () Unit!107764)

(declare-fun choose!30758 (List!51176 K!12420) Unit!107764)

(assert (=> d!1446370 (= lt!1755892 (choose!30758 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))

(assert (=> d!1446370 (invariantList!1117 (toList!4632 (extractMap!1368 lt!1755698)))))

(assert (=> d!1446370 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1203 (toList!4632 (extractMap!1368 lt!1755698)) key!3287) lt!1755892)))

(declare-fun bs!1009091 () Bool)

(assert (= bs!1009091 d!1446370))

(assert (=> bs!1009091 m!5419477))

(assert (=> bs!1009091 m!5419477))

(assert (=> bs!1009091 m!5419479))

(declare-fun m!5419739 () Bool)

(assert (=> bs!1009091 m!5419739))

(assert (=> bs!1009091 m!5419659))

(assert (=> b!4595192 d!1446370))

(assert (=> b!4595192 d!1446360))

(assert (=> b!4595192 d!1446362))

(declare-fun d!1446372 () Bool)

(assert (=> d!1446372 (contains!13991 (getKeysList!566 (toList!4632 (extractMap!1368 lt!1755698))) key!3287)))

(declare-fun lt!1755895 () Unit!107764)

(declare-fun choose!30759 (List!51176 K!12420) Unit!107764)

(assert (=> d!1446372 (= lt!1755895 (choose!30759 (toList!4632 (extractMap!1368 lt!1755698)) key!3287))))

(assert (=> d!1446372 (invariantList!1117 (toList!4632 (extractMap!1368 lt!1755698)))))

(assert (=> d!1446372 (= (lemmaInListThenGetKeysListContains!563 (toList!4632 (extractMap!1368 lt!1755698)) key!3287) lt!1755895)))

(declare-fun bs!1009092 () Bool)

(assert (= bs!1009092 d!1446372))

(assert (=> bs!1009092 m!5419471))

(assert (=> bs!1009092 m!5419471))

(declare-fun m!5419741 () Bool)

(assert (=> bs!1009092 m!5419741))

(declare-fun m!5419743 () Bool)

(assert (=> bs!1009092 m!5419743))

(assert (=> bs!1009092 m!5419659))

(assert (=> b!4595192 d!1446372))

(declare-fun d!1446374 () Bool)

(declare-fun e!2866344 () Bool)

(assert (=> d!1446374 e!2866344))

(declare-fun res!1921804 () Bool)

(assert (=> d!1446374 (=> res!1921804 e!2866344)))

(declare-fun lt!1755899 () Bool)

(assert (=> d!1446374 (= res!1921804 (not lt!1755899))))

(declare-fun lt!1755896 () Bool)

(assert (=> d!1446374 (= lt!1755899 lt!1755896)))

(declare-fun lt!1755898 () Unit!107764)

(declare-fun e!2866345 () Unit!107764)

(assert (=> d!1446374 (= lt!1755898 e!2866345)))

(declare-fun c!786985 () Bool)

(assert (=> d!1446374 (= c!786985 lt!1755896)))

(assert (=> d!1446374 (= lt!1755896 (containsKey!2134 (toList!4631 lm!1477) (hash!3191 hashF!1107 key!3287)))))

(assert (=> d!1446374 (= (contains!13989 lm!1477 (hash!3191 hashF!1107 key!3287)) lt!1755899)))

(declare-fun b!4595420 () Bool)

(declare-fun lt!1755897 () Unit!107764)

(assert (=> b!4595420 (= e!2866345 lt!1755897)))

(assert (=> b!4595420 (= lt!1755897 (lemmaContainsKeyImpliesGetValueByKeyDefined!1202 (toList!4631 lm!1477) (hash!3191 hashF!1107 key!3287)))))

(assert (=> b!4595420 (isDefined!8646 (getValueByKey!1297 (toList!4631 lm!1477) (hash!3191 hashF!1107 key!3287)))))

(declare-fun b!4595421 () Bool)

(declare-fun Unit!107786 () Unit!107764)

(assert (=> b!4595421 (= e!2866345 Unit!107786)))

(declare-fun b!4595422 () Bool)

(assert (=> b!4595422 (= e!2866344 (isDefined!8646 (getValueByKey!1297 (toList!4631 lm!1477) (hash!3191 hashF!1107 key!3287))))))

(assert (= (and d!1446374 c!786985) b!4595420))

(assert (= (and d!1446374 (not c!786985)) b!4595421))

(assert (= (and d!1446374 (not res!1921804)) b!4595422))

(assert (=> d!1446374 m!5419289))

(declare-fun m!5419745 () Bool)

(assert (=> d!1446374 m!5419745))

(assert (=> b!4595420 m!5419289))

(declare-fun m!5419747 () Bool)

(assert (=> b!4595420 m!5419747))

(assert (=> b!4595420 m!5419289))

(declare-fun m!5419749 () Bool)

(assert (=> b!4595420 m!5419749))

(assert (=> b!4595420 m!5419749))

(declare-fun m!5419751 () Bool)

(assert (=> b!4595420 m!5419751))

(assert (=> b!4595422 m!5419289))

(assert (=> b!4595422 m!5419749))

(assert (=> b!4595422 m!5419749))

(assert (=> b!4595422 m!5419751))

(assert (=> d!1446214 d!1446374))

(assert (=> d!1446214 d!1446236))

(declare-fun d!1446376 () Bool)

(assert (=> d!1446376 (contains!13989 lm!1477 (hash!3191 hashF!1107 key!3287))))

(assert (=> d!1446376 true))

(declare-fun _$27!1417 () Unit!107764)

(assert (=> d!1446376 (= (choose!30749 lm!1477 key!3287 hashF!1107) _$27!1417)))

(declare-fun bs!1009093 () Bool)

(assert (= bs!1009093 d!1446376))

(assert (=> bs!1009093 m!5419289))

(assert (=> bs!1009093 m!5419289))

(assert (=> bs!1009093 m!5419327))

(assert (=> d!1446214 d!1446376))

(declare-fun d!1446382 () Bool)

(declare-fun res!1921807 () Bool)

(declare-fun e!2866348 () Bool)

(assert (=> d!1446382 (=> res!1921807 e!2866348)))

(assert (=> d!1446382 (= res!1921807 ((_ is Nil!51053) (toList!4631 lm!1477)))))

(assert (=> d!1446382 (= (forall!10578 (toList!4631 lm!1477) lambda!185577) e!2866348)))

(declare-fun b!4595425 () Bool)

(declare-fun e!2866349 () Bool)

(assert (=> b!4595425 (= e!2866348 e!2866349)))

(declare-fun res!1921808 () Bool)

(assert (=> b!4595425 (=> (not res!1921808) (not e!2866349))))

(assert (=> b!4595425 (= res!1921808 (dynLambda!21386 lambda!185577 (h!57011 (toList!4631 lm!1477))))))

(declare-fun b!4595426 () Bool)

(assert (=> b!4595426 (= e!2866349 (forall!10578 (t!358171 (toList!4631 lm!1477)) lambda!185577))))

(assert (= (and d!1446382 (not res!1921807)) b!4595425))

(assert (= (and b!4595425 res!1921808) b!4595426))

(declare-fun b_lambda!169071 () Bool)

(assert (=> (not b_lambda!169071) (not b!4595425)))

(declare-fun m!5419757 () Bool)

(assert (=> b!4595425 m!5419757))

(declare-fun m!5419759 () Bool)

(assert (=> b!4595426 m!5419759))

(assert (=> d!1446214 d!1446382))

(declare-fun d!1446384 () Bool)

(declare-fun res!1921809 () Bool)

(declare-fun e!2866350 () Bool)

(assert (=> d!1446384 (=> res!1921809 e!2866350)))

(assert (=> d!1446384 (= res!1921809 (not ((_ is Cons!51052) (t!358170 newBucket!178))))))

(assert (=> d!1446384 (= (noDuplicateKeys!1308 (t!358170 newBucket!178)) e!2866350)))

(declare-fun b!4595427 () Bool)

(declare-fun e!2866351 () Bool)

(assert (=> b!4595427 (= e!2866350 e!2866351)))

(declare-fun res!1921810 () Bool)

(assert (=> b!4595427 (=> (not res!1921810) (not e!2866351))))

(assert (=> b!4595427 (= res!1921810 (not (containsKey!2132 (t!358170 (t!358170 newBucket!178)) (_1!29135 (h!57010 (t!358170 newBucket!178))))))))

(declare-fun b!4595428 () Bool)

(assert (=> b!4595428 (= e!2866351 (noDuplicateKeys!1308 (t!358170 (t!358170 newBucket!178))))))

(assert (= (and d!1446384 (not res!1921809)) b!4595427))

(assert (= (and b!4595427 res!1921810) b!4595428))

(declare-fun m!5419761 () Bool)

(assert (=> b!4595427 m!5419761))

(declare-fun m!5419763 () Bool)

(assert (=> b!4595428 m!5419763))

(assert (=> b!4595248 d!1446384))

(assert (=> bs!1009060 d!1446258))

(declare-fun d!1446386 () Bool)

(declare-fun res!1921811 () Bool)

(declare-fun e!2866352 () Bool)

(assert (=> d!1446386 (=> res!1921811 e!2866352)))

(assert (=> d!1446386 (= res!1921811 (and ((_ is Cons!51052) (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))) (= (_1!29135 (h!57010 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))))) (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))))

(assert (=> d!1446386 (= (containsKey!2132 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))) (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477)))))) e!2866352)))

(declare-fun b!4595429 () Bool)

(declare-fun e!2866353 () Bool)

(assert (=> b!4595429 (= e!2866352 e!2866353)))

(declare-fun res!1921812 () Bool)

(assert (=> b!4595429 (=> (not res!1921812) (not e!2866353))))

(assert (=> b!4595429 (= res!1921812 ((_ is Cons!51052) (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(declare-fun b!4595430 () Bool)

(assert (=> b!4595430 (= e!2866353 (containsKey!2132 (t!358170 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))) (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))))

(assert (= (and d!1446386 (not res!1921811)) b!4595429))

(assert (= (and b!4595429 res!1921812) b!4595430))

(declare-fun m!5419765 () Bool)

(assert (=> b!4595430 m!5419765))

(assert (=> b!4595184 d!1446386))

(declare-fun d!1446388 () Bool)

(declare-fun lt!1755900 () Bool)

(assert (=> d!1446388 (= lt!1755900 (select (content!8629 (keys!17867 (extractMap!1368 (toList!4631 lm!1477)))) key!3287))))

(declare-fun e!2866358 () Bool)

(assert (=> d!1446388 (= lt!1755900 e!2866358)))

(declare-fun res!1921817 () Bool)

(assert (=> d!1446388 (=> (not res!1921817) (not e!2866358))))

(assert (=> d!1446388 (= res!1921817 ((_ is Cons!51055) (keys!17867 (extractMap!1368 (toList!4631 lm!1477)))))))

(assert (=> d!1446388 (= (contains!13991 (keys!17867 (extractMap!1368 (toList!4631 lm!1477))) key!3287) lt!1755900)))

(declare-fun b!4595435 () Bool)

(declare-fun e!2866359 () Bool)

(assert (=> b!4595435 (= e!2866358 e!2866359)))

(declare-fun res!1921818 () Bool)

(assert (=> b!4595435 (=> res!1921818 e!2866359)))

(assert (=> b!4595435 (= res!1921818 (= (h!57015 (keys!17867 (extractMap!1368 (toList!4631 lm!1477)))) key!3287))))

(declare-fun b!4595436 () Bool)

(assert (=> b!4595436 (= e!2866359 (contains!13991 (t!358173 (keys!17867 (extractMap!1368 (toList!4631 lm!1477)))) key!3287))))

(assert (= (and d!1446388 res!1921817) b!4595435))

(assert (= (and b!4595435 (not res!1921818)) b!4595436))

(assert (=> d!1446388 m!5419409))

(declare-fun m!5419767 () Bool)

(assert (=> d!1446388 m!5419767))

(declare-fun m!5419769 () Bool)

(assert (=> d!1446388 m!5419769))

(declare-fun m!5419771 () Bool)

(assert (=> b!4595436 m!5419771))

(assert (=> b!4595125 d!1446388))

(assert (=> b!4595125 d!1446350))

(declare-fun d!1446390 () Bool)

(declare-fun res!1921819 () Bool)

(declare-fun e!2866360 () Bool)

(assert (=> d!1446390 (=> res!1921819 e!2866360)))

(assert (=> d!1446390 (= res!1921819 (not ((_ is Cons!51052) (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))))

(assert (=> d!1446390 (= (noDuplicateKeys!1308 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))) e!2866360)))

(declare-fun b!4595437 () Bool)

(declare-fun e!2866361 () Bool)

(assert (=> b!4595437 (= e!2866360 e!2866361)))

(declare-fun res!1921820 () Bool)

(assert (=> b!4595437 (=> (not res!1921820) (not e!2866361))))

(assert (=> b!4595437 (= res!1921820 (not (containsKey!2132 (t!358170 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))) (_1!29135 (h!57010 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))))))

(declare-fun b!4595438 () Bool)

(assert (=> b!4595438 (= e!2866361 (noDuplicateKeys!1308 (t!358170 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))))

(assert (= (and d!1446390 (not res!1921819)) b!4595437))

(assert (= (and b!4595437 res!1921820) b!4595438))

(declare-fun m!5419773 () Bool)

(assert (=> b!4595437 m!5419773))

(declare-fun m!5419775 () Bool)

(assert (=> b!4595438 m!5419775))

(assert (=> b!4595185 d!1446390))

(declare-fun d!1446392 () Bool)

(declare-fun choose!30760 (Hashable!5707 K!12420) (_ BitVec 64))

(assert (=> d!1446392 (= (hash!3192 hashF!1107 key!3287) (choose!30760 hashF!1107 key!3287))))

(declare-fun bs!1009094 () Bool)

(assert (= bs!1009094 d!1446392))

(declare-fun m!5419779 () Bool)

(assert (=> bs!1009094 m!5419779))

(assert (=> d!1446236 d!1446392))

(declare-fun d!1446396 () Bool)

(assert (=> d!1446396 (= (get!16868 (getValueByKey!1297 (toList!4631 lm!1477) hash!344)) (v!45334 (getValueByKey!1297 (toList!4631 lm!1477) hash!344)))))

(assert (=> d!1446220 d!1446396))

(declare-fun d!1446398 () Bool)

(declare-fun c!786986 () Bool)

(assert (=> d!1446398 (= c!786986 (and ((_ is Cons!51053) (toList!4631 lm!1477)) (= (_1!29136 (h!57011 (toList!4631 lm!1477))) hash!344)))))

(declare-fun e!2866364 () Option!11377)

(assert (=> d!1446398 (= (getValueByKey!1297 (toList!4631 lm!1477) hash!344) e!2866364)))

(declare-fun b!4595443 () Bool)

(declare-fun e!2866365 () Option!11377)

(assert (=> b!4595443 (= e!2866365 (getValueByKey!1297 (t!358171 (toList!4631 lm!1477)) hash!344))))

(declare-fun b!4595441 () Bool)

(assert (=> b!4595441 (= e!2866364 (Some!11376 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(declare-fun b!4595442 () Bool)

(assert (=> b!4595442 (= e!2866364 e!2866365)))

(declare-fun c!786987 () Bool)

(assert (=> b!4595442 (= c!786987 (and ((_ is Cons!51053) (toList!4631 lm!1477)) (not (= (_1!29136 (h!57011 (toList!4631 lm!1477))) hash!344))))))

(declare-fun b!4595444 () Bool)

(assert (=> b!4595444 (= e!2866365 None!11376)))

(assert (= (and d!1446398 c!786986) b!4595441))

(assert (= (and d!1446398 (not c!786986)) b!4595442))

(assert (= (and b!4595442 c!786987) b!4595443))

(assert (= (and b!4595442 (not c!786987)) b!4595444))

(declare-fun m!5419781 () Bool)

(assert (=> b!4595443 m!5419781))

(assert (=> d!1446220 d!1446398))

(assert (=> b!4595069 d!1446398))

(declare-fun d!1446400 () Bool)

(declare-fun lt!1755901 () Bool)

(assert (=> d!1446400 (= lt!1755901 (select (content!8629 (keys!17867 (extractMap!1368 lt!1755698))) key!3287))))

(declare-fun e!2866366 () Bool)

(assert (=> d!1446400 (= lt!1755901 e!2866366)))

(declare-fun res!1921823 () Bool)

(assert (=> d!1446400 (=> (not res!1921823) (not e!2866366))))

(assert (=> d!1446400 (= res!1921823 ((_ is Cons!51055) (keys!17867 (extractMap!1368 lt!1755698))))))

(assert (=> d!1446400 (= (contains!13991 (keys!17867 (extractMap!1368 lt!1755698)) key!3287) lt!1755901)))

(declare-fun b!4595445 () Bool)

(declare-fun e!2866367 () Bool)

(assert (=> b!4595445 (= e!2866366 e!2866367)))

(declare-fun res!1921824 () Bool)

(assert (=> b!4595445 (=> res!1921824 e!2866367)))

(assert (=> b!4595445 (= res!1921824 (= (h!57015 (keys!17867 (extractMap!1368 lt!1755698))) key!3287))))

(declare-fun b!4595446 () Bool)

(assert (=> b!4595446 (= e!2866367 (contains!13991 (t!358173 (keys!17867 (extractMap!1368 lt!1755698))) key!3287))))

(assert (= (and d!1446400 res!1921823) b!4595445))

(assert (= (and b!4595445 (not res!1921824)) b!4595446))

(assert (=> d!1446400 m!5419469))

(declare-fun m!5419783 () Bool)

(assert (=> d!1446400 m!5419783))

(declare-fun m!5419785 () Bool)

(assert (=> d!1446400 m!5419785))

(declare-fun m!5419787 () Bool)

(assert (=> b!4595446 m!5419787))

(assert (=> b!4595187 d!1446400))

(declare-fun bs!1009095 () Bool)

(declare-fun b!4595448 () Bool)

(assert (= bs!1009095 (and b!4595448 b!4595323)))

(declare-fun lambda!185637 () Int)

(assert (=> bs!1009095 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) (= lambda!185637 lambda!185623))))

(declare-fun bs!1009097 () Bool)

(assert (= bs!1009097 (and b!4595448 b!4595355)))

(assert (=> bs!1009097 (= lambda!185637 lambda!185629)))

(declare-fun bs!1009098 () Bool)

(assert (= bs!1009098 (and b!4595448 b!4595358)))

(assert (=> bs!1009098 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (t!358170 (toList!4632 (extractMap!1368 lt!1755698)))) (= lambda!185637 lambda!185627))))

(declare-fun bs!1009099 () Bool)

(assert (= bs!1009099 (and b!4595448 b!4595320)))

(assert (=> bs!1009099 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (= lambda!185637 lambda!185625))))

(declare-fun bs!1009100 () Bool)

(assert (= bs!1009100 (and b!4595448 b!4595317)))

(assert (=> bs!1009100 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))) (= lambda!185637 lambda!185624))))

(declare-fun bs!1009101 () Bool)

(assert (= bs!1009101 (and b!4595448 b!4595388)))

(assert (=> bs!1009101 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (= lambda!185637 lambda!185635))))

(declare-fun bs!1009102 () Bool)

(assert (= bs!1009102 (and b!4595448 b!4595352)))

(assert (=> bs!1009102 (= (= (toList!4632 (extractMap!1368 lt!1755698)) (Cons!51052 (h!57010 (toList!4632 (extractMap!1368 lt!1755698))) (t!358170 (toList!4632 (extractMap!1368 lt!1755698))))) (= lambda!185637 lambda!185628))))

(assert (=> b!4595448 true))

(declare-fun bs!1009103 () Bool)

(declare-fun b!4595449 () Bool)

(assert (= bs!1009103 (and b!4595449 b!4595321)))

(declare-fun lambda!185638 () Int)

(assert (=> bs!1009103 (= lambda!185638 lambda!185626)))

(declare-fun bs!1009104 () Bool)

(assert (= bs!1009104 (and b!4595449 b!4595356)))

(assert (=> bs!1009104 (= lambda!185638 lambda!185630)))

(declare-fun bs!1009105 () Bool)

(assert (= bs!1009105 (and b!4595449 b!4595389)))

(assert (=> bs!1009105 (= lambda!185638 lambda!185636)))

(declare-fun d!1446402 () Bool)

(declare-fun e!2866368 () Bool)

(assert (=> d!1446402 e!2866368))

(declare-fun res!1921827 () Bool)

(assert (=> d!1446402 (=> (not res!1921827) (not e!2866368))))

(declare-fun lt!1755904 () List!51179)

(assert (=> d!1446402 (= res!1921827 (noDuplicate!807 lt!1755904))))

(assert (=> d!1446402 (= lt!1755904 (getKeysList!566 (toList!4632 (extractMap!1368 lt!1755698))))))

(assert (=> d!1446402 (= (keys!17867 (extractMap!1368 lt!1755698)) lt!1755904)))

(declare-fun b!4595447 () Bool)

(declare-fun res!1921825 () Bool)

(assert (=> b!4595447 (=> (not res!1921825) (not e!2866368))))

(assert (=> b!4595447 (= res!1921825 (= (length!470 lt!1755904) (length!471 (toList!4632 (extractMap!1368 lt!1755698)))))))

(declare-fun res!1921826 () Bool)

(assert (=> b!4595448 (=> (not res!1921826) (not e!2866368))))

(assert (=> b!4595448 (= res!1921826 (forall!10581 lt!1755904 lambda!185637))))

(assert (=> b!4595449 (= e!2866368 (= (content!8629 lt!1755904) (content!8629 (map!11274 (toList!4632 (extractMap!1368 lt!1755698)) lambda!185638))))))

(assert (= (and d!1446402 res!1921827) b!4595447))

(assert (= (and b!4595447 res!1921825) b!4595448))

(assert (= (and b!4595448 res!1921826) b!4595449))

(declare-fun m!5419795 () Bool)

(assert (=> d!1446402 m!5419795))

(assert (=> d!1446402 m!5419471))

(declare-fun m!5419797 () Bool)

(assert (=> b!4595447 m!5419797))

(assert (=> b!4595447 m!5419675))

(declare-fun m!5419799 () Bool)

(assert (=> b!4595448 m!5419799))

(declare-fun m!5419801 () Bool)

(assert (=> b!4595449 m!5419801))

(declare-fun m!5419803 () Bool)

(assert (=> b!4595449 m!5419803))

(assert (=> b!4595449 m!5419803))

(declare-fun m!5419805 () Bool)

(assert (=> b!4595449 m!5419805))

(assert (=> b!4595187 d!1446402))

(declare-fun d!1446408 () Bool)

(assert (=> d!1446408 (= (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287)) (not (isEmpty!28857 (getValueByKey!1299 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))))

(declare-fun bs!1009106 () Bool)

(assert (= bs!1009106 d!1446408))

(assert (=> bs!1009106 m!5419417))

(declare-fun m!5419807 () Bool)

(assert (=> bs!1009106 m!5419807))

(assert (=> b!4595129 d!1446408))

(declare-fun d!1446410 () Bool)

(declare-fun c!786988 () Bool)

(assert (=> d!1446410 (= c!786988 (and ((_ is Cons!51052) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (= (_1!29135 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) key!3287)))))

(declare-fun e!2866371 () Option!11379)

(assert (=> d!1446410 (= (getValueByKey!1299 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287) e!2866371)))

(declare-fun b!4595453 () Bool)

(declare-fun e!2866372 () Option!11379)

(assert (=> b!4595453 (= e!2866371 e!2866372)))

(declare-fun c!786989 () Bool)

(assert (=> b!4595453 (= c!786989 (and ((_ is Cons!51052) (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) (not (= (_1!29135 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))) key!3287))))))

(declare-fun b!4595454 () Bool)

(assert (=> b!4595454 (= e!2866372 (getValueByKey!1299 (t!358170 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) key!3287))))

(declare-fun b!4595452 () Bool)

(assert (=> b!4595452 (= e!2866371 (Some!11378 (_2!29135 (h!57010 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))))))))

(declare-fun b!4595455 () Bool)

(assert (=> b!4595455 (= e!2866372 None!11378)))

(assert (= (and d!1446410 c!786988) b!4595452))

(assert (= (and d!1446410 (not c!786988)) b!4595453))

(assert (= (and b!4595453 c!786989) b!4595454))

(assert (= (and b!4595453 (not c!786989)) b!4595455))

(declare-fun m!5419809 () Bool)

(assert (=> b!4595454 m!5419809))

(assert (=> b!4595129 d!1446410))

(declare-fun bs!1009120 () Bool)

(declare-fun b!4595571 () Bool)

(assert (= bs!1009120 (and b!4595571 d!1446292)))

(declare-fun lambda!185685 () Int)

(assert (=> bs!1009120 (not (= lambda!185685 lambda!185608))))

(declare-fun bs!1009121 () Bool)

(assert (= bs!1009121 (and b!4595571 d!1446294)))

(assert (=> bs!1009121 (not (= lambda!185685 lambda!185609))))

(assert (=> b!4595571 true))

(declare-fun bs!1009122 () Bool)

(declare-fun b!4595568 () Bool)

(assert (= bs!1009122 (and b!4595568 d!1446292)))

(declare-fun lambda!185686 () Int)

(assert (=> bs!1009122 (not (= lambda!185686 lambda!185608))))

(declare-fun bs!1009123 () Bool)

(assert (= bs!1009123 (and b!4595568 d!1446294)))

(assert (=> bs!1009123 (not (= lambda!185686 lambda!185609))))

(declare-fun bs!1009124 () Bool)

(assert (= bs!1009124 (and b!4595568 b!4595571)))

(assert (=> bs!1009124 (= lambda!185686 lambda!185685)))

(assert (=> b!4595568 true))

(declare-fun lambda!185687 () Int)

(assert (=> bs!1009122 (not (= lambda!185687 lambda!185608))))

(assert (=> bs!1009123 (not (= lambda!185687 lambda!185609))))

(declare-fun lt!1755996 () ListMap!3893)

(assert (=> bs!1009124 (= (= lt!1755996 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185687 lambda!185685))))

(assert (=> b!4595568 (= (= lt!1755996 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185687 lambda!185686))))

(assert (=> b!4595568 true))

(declare-fun bs!1009125 () Bool)

(declare-fun d!1446412 () Bool)

(assert (= bs!1009125 (and d!1446412 b!4595568)))

(declare-fun lt!1756006 () ListMap!3893)

(declare-fun lambda!185688 () Int)

(assert (=> bs!1009125 (= (= lt!1756006 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185688 lambda!185686))))

(assert (=> bs!1009125 (= (= lt!1756006 lt!1755996) (= lambda!185688 lambda!185687))))

(declare-fun bs!1009126 () Bool)

(assert (= bs!1009126 (and d!1446412 b!4595571)))

(assert (=> bs!1009126 (= (= lt!1756006 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185688 lambda!185685))))

(declare-fun bs!1009127 () Bool)

(assert (= bs!1009127 (and d!1446412 d!1446292)))

(assert (=> bs!1009127 (not (= lambda!185688 lambda!185608))))

(declare-fun bs!1009128 () Bool)

(assert (= bs!1009128 (and d!1446412 d!1446294)))

(assert (=> bs!1009128 (not (= lambda!185688 lambda!185609))))

(assert (=> d!1446412 true))

(declare-fun e!2866435 () Bool)

(assert (=> d!1446412 e!2866435))

(declare-fun res!1921876 () Bool)

(assert (=> d!1446412 (=> (not res!1921876) (not e!2866435))))

(assert (=> d!1446412 (= res!1921876 (forall!10580 (_2!29136 (h!57011 (toList!4631 lm!1477))) lambda!185688))))

(declare-fun e!2866437 () ListMap!3893)

(assert (=> d!1446412 (= lt!1756006 e!2866437)))

(declare-fun c!787022 () Bool)

(assert (=> d!1446412 (= c!787022 ((_ is Nil!51052) (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(assert (=> d!1446412 (noDuplicateKeys!1308 (_2!29136 (h!57011 (toList!4631 lm!1477))))))

(assert (=> d!1446412 (= (addToMapMapFromBucket!807 (_2!29136 (h!57011 (toList!4631 lm!1477))) (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) lt!1756006)))

(declare-fun bm!320695 () Bool)

(declare-fun call!320702 () Unit!107764)

(declare-fun lemmaContainsAllItsOwnKeys!431 (ListMap!3893) Unit!107764)

(assert (=> bm!320695 (= call!320702 (lemmaContainsAllItsOwnKeys!431 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))))))

(assert (=> b!4595568 (= e!2866437 lt!1755996)))

(declare-fun lt!1756001 () ListMap!3893)

(declare-fun +!1733 (ListMap!3893 tuple2!51682) ListMap!3893)

(assert (=> b!4595568 (= lt!1756001 (+!1733 (extractMap!1368 (t!358171 (toList!4631 lm!1477))) (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(assert (=> b!4595568 (= lt!1755996 (addToMapMapFromBucket!807 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))) (+!1733 (extractMap!1368 (t!358171 (toList!4631 lm!1477))) (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))))

(declare-fun lt!1755990 () Unit!107764)

(assert (=> b!4595568 (= lt!1755990 call!320702)))

(declare-fun call!320700 () Bool)

(assert (=> b!4595568 call!320700))

(declare-fun lt!1755986 () Unit!107764)

(assert (=> b!4595568 (= lt!1755986 lt!1755990)))

(assert (=> b!4595568 (forall!10580 (toList!4632 lt!1756001) lambda!185687)))

(declare-fun lt!1755987 () Unit!107764)

(declare-fun Unit!107791 () Unit!107764)

(assert (=> b!4595568 (= lt!1755987 Unit!107791)))

(assert (=> b!4595568 (forall!10580 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))) lambda!185687)))

(declare-fun lt!1755989 () Unit!107764)

(declare-fun Unit!107792 () Unit!107764)

(assert (=> b!4595568 (= lt!1755989 Unit!107792)))

(declare-fun lt!1756003 () Unit!107764)

(declare-fun Unit!107793 () Unit!107764)

(assert (=> b!4595568 (= lt!1756003 Unit!107793)))

(declare-fun lt!1755992 () Unit!107764)

(declare-fun forallContained!2836 (List!51176 Int tuple2!51682) Unit!107764)

(assert (=> b!4595568 (= lt!1755992 (forallContained!2836 (toList!4632 lt!1756001) lambda!185687 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(assert (=> b!4595568 (contains!13987 lt!1756001 (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(declare-fun lt!1756000 () Unit!107764)

(declare-fun Unit!107794 () Unit!107764)

(assert (=> b!4595568 (= lt!1756000 Unit!107794)))

(assert (=> b!4595568 (contains!13987 lt!1755996 (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(declare-fun lt!1755999 () Unit!107764)

(declare-fun Unit!107795 () Unit!107764)

(assert (=> b!4595568 (= lt!1755999 Unit!107795)))

(assert (=> b!4595568 (forall!10580 (_2!29136 (h!57011 (toList!4631 lm!1477))) lambda!185687)))

(declare-fun lt!1755995 () Unit!107764)

(declare-fun Unit!107796 () Unit!107764)

(assert (=> b!4595568 (= lt!1755995 Unit!107796)))

(declare-fun call!320701 () Bool)

(assert (=> b!4595568 call!320701))

(declare-fun lt!1756002 () Unit!107764)

(declare-fun Unit!107797 () Unit!107764)

(assert (=> b!4595568 (= lt!1756002 Unit!107797)))

(declare-fun lt!1755994 () Unit!107764)

(declare-fun Unit!107798 () Unit!107764)

(assert (=> b!4595568 (= lt!1755994 Unit!107798)))

(declare-fun lt!1755997 () Unit!107764)

(declare-fun addForallContainsKeyThenBeforeAdding!431 (ListMap!3893 ListMap!3893 K!12420 V!12666) Unit!107764)

(assert (=> b!4595568 (= lt!1755997 (addForallContainsKeyThenBeforeAdding!431 (extractMap!1368 (t!358171 (toList!4631 lm!1477))) lt!1755996 (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))) (_2!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))))

(assert (=> b!4595568 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) lambda!185687)))

(declare-fun lt!1755993 () Unit!107764)

(assert (=> b!4595568 (= lt!1755993 lt!1755997)))

(assert (=> b!4595568 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) lambda!185687)))

(declare-fun lt!1756005 () Unit!107764)

(declare-fun Unit!107799 () Unit!107764)

(assert (=> b!4595568 (= lt!1756005 Unit!107799)))

(declare-fun res!1921875 () Bool)

(assert (=> b!4595568 (= res!1921875 (forall!10580 (_2!29136 (h!57011 (toList!4631 lm!1477))) lambda!185687))))

(declare-fun e!2866436 () Bool)

(assert (=> b!4595568 (=> (not res!1921875) (not e!2866436))))

(assert (=> b!4595568 e!2866436))

(declare-fun lt!1755998 () Unit!107764)

(declare-fun Unit!107800 () Unit!107764)

(assert (=> b!4595568 (= lt!1755998 Unit!107800)))

(declare-fun bm!320696 () Bool)

(assert (=> bm!320696 (= call!320701 (forall!10580 (ite c!787022 (toList!4632 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (toList!4632 lt!1756001)) (ite c!787022 lambda!185685 lambda!185687)))))

(declare-fun b!4595569 () Bool)

(declare-fun res!1921874 () Bool)

(assert (=> b!4595569 (=> (not res!1921874) (not e!2866435))))

(assert (=> b!4595569 (= res!1921874 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) lambda!185688))))

(declare-fun b!4595570 () Bool)

(assert (=> b!4595570 (= e!2866435 (invariantList!1117 (toList!4632 lt!1756006)))))

(declare-fun bm!320697 () Bool)

(assert (=> bm!320697 (= call!320700 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (ite c!787022 lambda!185685 lambda!185686)))))

(assert (=> b!4595571 (= e!2866437 (extractMap!1368 (t!358171 (toList!4631 lm!1477))))))

(declare-fun lt!1755991 () Unit!107764)

(assert (=> b!4595571 (= lt!1755991 call!320702)))

(assert (=> b!4595571 call!320700))

(declare-fun lt!1756004 () Unit!107764)

(assert (=> b!4595571 (= lt!1756004 lt!1755991)))

(assert (=> b!4595571 call!320701))

(declare-fun lt!1755988 () Unit!107764)

(declare-fun Unit!107801 () Unit!107764)

(assert (=> b!4595571 (= lt!1755988 Unit!107801)))

(declare-fun b!4595572 () Bool)

(assert (=> b!4595572 (= e!2866436 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) lambda!185687))))

(assert (= (and d!1446412 c!787022) b!4595571))

(assert (= (and d!1446412 (not c!787022)) b!4595568))

(assert (= (and b!4595568 res!1921875) b!4595572))

(assert (= (or b!4595571 b!4595568) bm!320697))

(assert (= (or b!4595571 b!4595568) bm!320696))

(assert (= (or b!4595571 b!4595568) bm!320695))

(assert (= (and d!1446412 res!1921876) b!4595569))

(assert (= (and b!4595569 res!1921874) b!4595570))

(declare-fun m!5419913 () Bool)

(assert (=> bm!320697 m!5419913))

(declare-fun m!5419915 () Bool)

(assert (=> b!4595572 m!5419915))

(declare-fun m!5419917 () Bool)

(assert (=> d!1446412 m!5419917))

(assert (=> d!1446412 m!5419307))

(assert (=> b!4595568 m!5419461))

(declare-fun m!5419919 () Bool)

(assert (=> b!4595568 m!5419919))

(declare-fun m!5419921 () Bool)

(assert (=> b!4595568 m!5419921))

(assert (=> b!4595568 m!5419915))

(assert (=> b!4595568 m!5419919))

(declare-fun m!5419923 () Bool)

(assert (=> b!4595568 m!5419923))

(declare-fun m!5419925 () Bool)

(assert (=> b!4595568 m!5419925))

(declare-fun m!5419927 () Bool)

(assert (=> b!4595568 m!5419927))

(assert (=> b!4595568 m!5419915))

(declare-fun m!5419929 () Bool)

(assert (=> b!4595568 m!5419929))

(declare-fun m!5419931 () Bool)

(assert (=> b!4595568 m!5419931))

(declare-fun m!5419933 () Bool)

(assert (=> b!4595568 m!5419933))

(assert (=> b!4595568 m!5419927))

(assert (=> b!4595568 m!5419461))

(declare-fun m!5419935 () Bool)

(assert (=> b!4595568 m!5419935))

(declare-fun m!5419937 () Bool)

(assert (=> b!4595569 m!5419937))

(declare-fun m!5419939 () Bool)

(assert (=> b!4595570 m!5419939))

(assert (=> bm!320695 m!5419461))

(declare-fun m!5419941 () Bool)

(assert (=> bm!320695 m!5419941))

(declare-fun m!5419943 () Bool)

(assert (=> bm!320696 m!5419943))

(assert (=> b!4595178 d!1446412))

(declare-fun bs!1009129 () Bool)

(declare-fun d!1446454 () Bool)

(assert (= bs!1009129 (and d!1446454 d!1446250)))

(declare-fun lambda!185689 () Int)

(assert (=> bs!1009129 (= lambda!185689 lambda!185589)))

(declare-fun bs!1009130 () Bool)

(assert (= bs!1009130 (and d!1446454 d!1446214)))

(assert (=> bs!1009130 (= lambda!185689 lambda!185577)))

(declare-fun bs!1009131 () Bool)

(assert (= bs!1009131 (and d!1446454 d!1446310)))

(assert (=> bs!1009131 (= lambda!185689 lambda!185614)))

(declare-fun bs!1009132 () Bool)

(assert (= bs!1009132 (and d!1446454 start!458240)))

(assert (=> bs!1009132 (= lambda!185689 lambda!185574)))

(declare-fun bs!1009133 () Bool)

(assert (= bs!1009133 (and d!1446454 d!1446288)))

(assert (=> bs!1009133 (not (= lambda!185689 lambda!185603))))

(declare-fun bs!1009134 () Bool)

(assert (= bs!1009134 (and d!1446454 d!1446262)))

(assert (=> bs!1009134 (= lambda!185689 lambda!185590)))

(declare-fun bs!1009135 () Bool)

(assert (= bs!1009135 (and d!1446454 d!1446264)))

(assert (=> bs!1009135 (= lambda!185689 lambda!185600)))

(declare-fun lt!1756007 () ListMap!3893)

(assert (=> d!1446454 (invariantList!1117 (toList!4632 lt!1756007))))

(declare-fun e!2866438 () ListMap!3893)

(assert (=> d!1446454 (= lt!1756007 e!2866438)))

(declare-fun c!787023 () Bool)

(assert (=> d!1446454 (= c!787023 ((_ is Cons!51053) (t!358171 (toList!4631 lm!1477))))))

(assert (=> d!1446454 (forall!10578 (t!358171 (toList!4631 lm!1477)) lambda!185689)))

(assert (=> d!1446454 (= (extractMap!1368 (t!358171 (toList!4631 lm!1477))) lt!1756007)))

(declare-fun b!4595575 () Bool)

(assert (=> b!4595575 (= e!2866438 (addToMapMapFromBucket!807 (_2!29136 (h!57011 (t!358171 (toList!4631 lm!1477)))) (extractMap!1368 (t!358171 (t!358171 (toList!4631 lm!1477))))))))

(declare-fun b!4595576 () Bool)

(assert (=> b!4595576 (= e!2866438 (ListMap!3894 Nil!51052))))

(assert (= (and d!1446454 c!787023) b!4595575))

(assert (= (and d!1446454 (not c!787023)) b!4595576))

(declare-fun m!5419945 () Bool)

(assert (=> d!1446454 m!5419945))

(declare-fun m!5419947 () Bool)

(assert (=> d!1446454 m!5419947))

(declare-fun m!5419949 () Bool)

(assert (=> b!4595575 m!5419949))

(assert (=> b!4595575 m!5419949))

(declare-fun m!5419951 () Bool)

(assert (=> b!4595575 m!5419951))

(assert (=> b!4595178 d!1446454))

(assert (=> d!1446260 d!1446346))

(declare-fun d!1446456 () Bool)

(assert (=> d!1446456 (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(declare-fun lt!1756008 () Unit!107764)

(assert (=> d!1446456 (= lt!1756008 (choose!30758 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(assert (=> d!1446456 (invariantList!1117 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))))

(assert (=> d!1446456 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1203 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287) lt!1756008)))

(declare-fun bs!1009136 () Bool)

(assert (= bs!1009136 d!1446456))

(assert (=> bs!1009136 m!5419417))

(assert (=> bs!1009136 m!5419417))

(assert (=> bs!1009136 m!5419419))

(declare-fun m!5419953 () Bool)

(assert (=> bs!1009136 m!5419953))

(assert (=> bs!1009136 m!5419615))

(assert (=> b!4595130 d!1446456))

(assert (=> b!4595130 d!1446408))

(assert (=> b!4595130 d!1446410))

(declare-fun d!1446458 () Bool)

(assert (=> d!1446458 (contains!13991 (getKeysList!566 (toList!4632 (extractMap!1368 (toList!4631 lm!1477)))) key!3287)))

(declare-fun lt!1756009 () Unit!107764)

(assert (=> d!1446458 (= lt!1756009 (choose!30759 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287))))

(assert (=> d!1446458 (invariantList!1117 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))))))

(assert (=> d!1446458 (= (lemmaInListThenGetKeysListContains!563 (toList!4632 (extractMap!1368 (toList!4631 lm!1477))) key!3287) lt!1756009)))

(declare-fun bs!1009137 () Bool)

(assert (= bs!1009137 d!1446458))

(assert (=> bs!1009137 m!5419411))

(assert (=> bs!1009137 m!5419411))

(declare-fun m!5419955 () Bool)

(assert (=> bs!1009137 m!5419955))

(declare-fun m!5419957 () Bool)

(assert (=> bs!1009137 m!5419957))

(assert (=> bs!1009137 m!5419615))

(assert (=> b!4595130 d!1446458))

(assert (=> b!4595189 d!1446400))

(assert (=> b!4595189 d!1446402))

(assert (=> b!4595127 d!1446388))

(assert (=> b!4595127 d!1446350))

(declare-fun d!1446460 () Bool)

(declare-fun lt!1756010 () Bool)

(assert (=> d!1446460 (= lt!1756010 (select (content!8628 (toList!4631 lm!1477)) (tuple2!51685 hash!344 lt!1755697)))))

(declare-fun e!2866440 () Bool)

(assert (=> d!1446460 (= lt!1756010 e!2866440)))

(declare-fun res!1921878 () Bool)

(assert (=> d!1446460 (=> (not res!1921878) (not e!2866440))))

(assert (=> d!1446460 (= res!1921878 ((_ is Cons!51053) (toList!4631 lm!1477)))))

(assert (=> d!1446460 (= (contains!13988 (toList!4631 lm!1477) (tuple2!51685 hash!344 lt!1755697)) lt!1756010)))

(declare-fun b!4595577 () Bool)

(declare-fun e!2866439 () Bool)

(assert (=> b!4595577 (= e!2866440 e!2866439)))

(declare-fun res!1921877 () Bool)

(assert (=> b!4595577 (=> res!1921877 e!2866439)))

(assert (=> b!4595577 (= res!1921877 (= (h!57011 (toList!4631 lm!1477)) (tuple2!51685 hash!344 lt!1755697)))))

(declare-fun b!4595578 () Bool)

(assert (=> b!4595578 (= e!2866439 (contains!13988 (t!358171 (toList!4631 lm!1477)) (tuple2!51685 hash!344 lt!1755697)))))

(assert (= (and d!1446460 res!1921878) b!4595577))

(assert (= (and b!4595577 (not res!1921877)) b!4595578))

(assert (=> d!1446460 m!5419347))

(declare-fun m!5419959 () Bool)

(assert (=> d!1446460 m!5419959))

(declare-fun m!5419961 () Bool)

(assert (=> b!4595578 m!5419961))

(assert (=> d!1446226 d!1446460))

(declare-fun d!1446462 () Bool)

(assert (=> d!1446462 (contains!13988 (toList!4631 lm!1477) (tuple2!51685 hash!344 lt!1755697))))

(assert (=> d!1446462 true))

(declare-fun _$14!1461 () Unit!107764)

(assert (=> d!1446462 (= (choose!30751 (toList!4631 lm!1477) hash!344 lt!1755697) _$14!1461)))

(declare-fun bs!1009138 () Bool)

(assert (= bs!1009138 d!1446462))

(assert (=> bs!1009138 m!5419357))

(assert (=> d!1446226 d!1446462))

(assert (=> d!1446226 d!1446324))

(assert (=> d!1446310 d!1446238))

(assert (=> d!1446310 d!1446250))

(declare-fun d!1446464 () Bool)

(assert (=> d!1446464 (not (contains!13987 (extractMap!1368 (toList!4631 lm!1477)) key!3287))))

(assert (=> d!1446464 true))

(declare-fun _$26!530 () Unit!107764)

(assert (=> d!1446464 (= (choose!30753 lm!1477 key!3287 hashF!1107) _$26!530)))

(declare-fun bs!1009139 () Bool)

(assert (= bs!1009139 d!1446464))

(assert (=> bs!1009139 m!5419279))

(assert (=> bs!1009139 m!5419279))

(assert (=> bs!1009139 m!5419281))

(assert (=> d!1446310 d!1446464))

(declare-fun d!1446466 () Bool)

(declare-fun res!1921879 () Bool)

(declare-fun e!2866441 () Bool)

(assert (=> d!1446466 (=> res!1921879 e!2866441)))

(assert (=> d!1446466 (= res!1921879 ((_ is Nil!51053) (toList!4631 lm!1477)))))

(assert (=> d!1446466 (= (forall!10578 (toList!4631 lm!1477) lambda!185614) e!2866441)))

(declare-fun b!4595579 () Bool)

(declare-fun e!2866442 () Bool)

(assert (=> b!4595579 (= e!2866441 e!2866442)))

(declare-fun res!1921880 () Bool)

(assert (=> b!4595579 (=> (not res!1921880) (not e!2866442))))

(assert (=> b!4595579 (= res!1921880 (dynLambda!21386 lambda!185614 (h!57011 (toList!4631 lm!1477))))))

(declare-fun b!4595580 () Bool)

(assert (=> b!4595580 (= e!2866442 (forall!10578 (t!358171 (toList!4631 lm!1477)) lambda!185614))))

(assert (= (and d!1446466 (not res!1921879)) b!4595579))

(assert (= (and b!4595579 res!1921880) b!4595580))

(declare-fun b_lambda!169077 () Bool)

(assert (=> (not b_lambda!169077) (not b!4595579)))

(declare-fun m!5419963 () Bool)

(assert (=> b!4595579 m!5419963))

(declare-fun m!5419965 () Bool)

(assert (=> b!4595580 m!5419965))

(assert (=> d!1446310 d!1446466))

(declare-fun d!1446468 () Bool)

(declare-fun lt!1756011 () Bool)

(assert (=> d!1446468 (= lt!1756011 (select (content!8629 e!2866188) key!3287))))

(declare-fun e!2866443 () Bool)

(assert (=> d!1446468 (= lt!1756011 e!2866443)))

(declare-fun res!1921881 () Bool)

(assert (=> d!1446468 (=> (not res!1921881) (not e!2866443))))

(assert (=> d!1446468 (= res!1921881 ((_ is Cons!51055) e!2866188))))

(assert (=> d!1446468 (= (contains!13991 e!2866188 key!3287) lt!1756011)))

(declare-fun b!4595581 () Bool)

(declare-fun e!2866444 () Bool)

(assert (=> b!4595581 (= e!2866443 e!2866444)))

(declare-fun res!1921882 () Bool)

(assert (=> b!4595581 (=> res!1921882 e!2866444)))

(assert (=> b!4595581 (= res!1921882 (= (h!57015 e!2866188) key!3287))))

(declare-fun b!4595582 () Bool)

(assert (=> b!4595582 (= e!2866444 (contains!13991 (t!358173 e!2866188) key!3287))))

(assert (= (and d!1446468 res!1921881) b!4595581))

(assert (= (and b!4595581 (not res!1921882)) b!4595582))

(declare-fun m!5419967 () Bool)

(assert (=> d!1446468 m!5419967))

(declare-fun m!5419969 () Bool)

(assert (=> d!1446468 m!5419969))

(declare-fun m!5419971 () Bool)

(assert (=> b!4595582 m!5419971))

(assert (=> bm!320687 d!1446468))

(declare-fun d!1446470 () Bool)

(declare-fun res!1921883 () Bool)

(declare-fun e!2866445 () Bool)

(assert (=> d!1446470 (=> res!1921883 e!2866445)))

(assert (=> d!1446470 (= res!1921883 (and ((_ is Cons!51052) (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))) (= (_1!29135 (h!57010 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))))) key!3287)))))

(assert (=> d!1446470 (= (containsKey!2132 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))) key!3287) e!2866445)))

(declare-fun b!4595583 () Bool)

(declare-fun e!2866446 () Bool)

(assert (=> b!4595583 (= e!2866445 e!2866446)))

(declare-fun res!1921884 () Bool)

(assert (=> b!4595583 (=> (not res!1921884) (not e!2866446))))

(assert (=> b!4595583 (= res!1921884 ((_ is Cons!51052) (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(declare-fun b!4595584 () Bool)

(assert (=> b!4595584 (= e!2866446 (containsKey!2132 (t!358170 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))) key!3287))))

(assert (= (and d!1446470 (not res!1921883)) b!4595583))

(assert (= (and b!4595583 res!1921884) b!4595584))

(declare-fun m!5419973 () Bool)

(assert (=> b!4595584 m!5419973))

(assert (=> b!4595258 d!1446470))

(assert (=> b!4595190 d!1446402))

(declare-fun d!1446472 () Bool)

(assert (=> d!1446472 (dynLambda!21386 lambda!185574 lt!1755702)))

(assert (=> d!1446472 true))

(declare-fun _$7!2120 () Unit!107764)

(assert (=> d!1446472 (= (choose!30750 (toList!4631 lm!1477) lambda!185574 lt!1755702) _$7!2120)))

(declare-fun b_lambda!169079 () Bool)

(assert (=> (not b_lambda!169079) (not d!1446472)))

(declare-fun bs!1009140 () Bool)

(assert (= bs!1009140 d!1446472))

(assert (=> bs!1009140 m!5419343))

(assert (=> d!1446222 d!1446472))

(assert (=> d!1446222 d!1446302))

(declare-fun b!4595585 () Bool)

(declare-fun e!2866448 () List!51179)

(assert (=> b!4595585 (= e!2866448 (getKeysList!566 (toList!4632 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698))))))))

(declare-fun b!4595586 () Bool)

(declare-fun e!2866450 () Bool)

(assert (=> b!4595586 (= e!2866450 (contains!13991 (keys!17867 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))) key!3287))))

(declare-fun b!4595587 () Bool)

(assert (=> b!4595587 false))

(declare-fun lt!1756017 () Unit!107764)

(declare-fun lt!1756014 () Unit!107764)

(assert (=> b!4595587 (= lt!1756017 lt!1756014)))

(assert (=> b!4595587 (containsKey!2135 (toList!4632 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))) key!3287)))

(assert (=> b!4595587 (= lt!1756014 (lemmaInGetKeysListThenContainsKey!565 (toList!4632 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))) key!3287))))

(declare-fun e!2866452 () Unit!107764)

(declare-fun Unit!107802 () Unit!107764)

(assert (=> b!4595587 (= e!2866452 Unit!107802)))

(declare-fun b!4595589 () Bool)

(assert (=> b!4595589 (= e!2866448 (keys!17867 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))))))

(declare-fun b!4595590 () Bool)

(declare-fun e!2866449 () Bool)

(assert (=> b!4595590 (= e!2866449 e!2866450)))

(declare-fun res!1921887 () Bool)

(assert (=> b!4595590 (=> (not res!1921887) (not e!2866450))))

(assert (=> b!4595590 (= res!1921887 (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))) key!3287)))))

(declare-fun bm!320698 () Bool)

(declare-fun call!320703 () Bool)

(assert (=> bm!320698 (= call!320703 (contains!13991 e!2866448 key!3287))))

(declare-fun c!787025 () Bool)

(declare-fun c!787026 () Bool)

(assert (=> bm!320698 (= c!787025 c!787026)))

(declare-fun b!4595591 () Bool)

(declare-fun e!2866447 () Unit!107764)

(declare-fun lt!1756015 () Unit!107764)

(assert (=> b!4595591 (= e!2866447 lt!1756015)))

(declare-fun lt!1756013 () Unit!107764)

(assert (=> b!4595591 (= lt!1756013 (lemmaContainsKeyImpliesGetValueByKeyDefined!1203 (toList!4632 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))) key!3287))))

(assert (=> b!4595591 (isDefined!8647 (getValueByKey!1299 (toList!4632 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))) key!3287))))

(declare-fun lt!1756018 () Unit!107764)

(assert (=> b!4595591 (= lt!1756018 lt!1756013)))

(assert (=> b!4595591 (= lt!1756015 (lemmaInListThenGetKeysListContains!563 (toList!4632 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))) key!3287))))

(assert (=> b!4595591 call!320703))

(declare-fun d!1446474 () Bool)

(assert (=> d!1446474 e!2866449))

(declare-fun res!1921886 () Bool)

(assert (=> d!1446474 (=> res!1921886 e!2866449)))

(declare-fun e!2866451 () Bool)

(assert (=> d!1446474 (= res!1921886 e!2866451)))

(declare-fun res!1921885 () Bool)

(assert (=> d!1446474 (=> (not res!1921885) (not e!2866451))))

(declare-fun lt!1756019 () Bool)

(assert (=> d!1446474 (= res!1921885 (not lt!1756019))))

(declare-fun lt!1756012 () Bool)

(assert (=> d!1446474 (= lt!1756019 lt!1756012)))

(declare-fun lt!1756016 () Unit!107764)

(assert (=> d!1446474 (= lt!1756016 e!2866447)))

(assert (=> d!1446474 (= c!787026 lt!1756012)))

(assert (=> d!1446474 (= lt!1756012 (containsKey!2135 (toList!4632 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))) key!3287))))

(assert (=> d!1446474 (= (contains!13987 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698))) key!3287) lt!1756019)))

(declare-fun b!4595588 () Bool)

(assert (=> b!4595588 (= e!2866451 (not (contains!13991 (keys!17867 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698)))) key!3287)))))

(declare-fun b!4595592 () Bool)

(assert (=> b!4595592 (= e!2866447 e!2866452)))

(declare-fun c!787024 () Bool)

(assert (=> b!4595592 (= c!787024 call!320703)))

(declare-fun b!4595593 () Bool)

(declare-fun Unit!107803 () Unit!107764)

(assert (=> b!4595593 (= e!2866452 Unit!107803)))

(assert (= (and d!1446474 c!787026) b!4595591))

(assert (= (and d!1446474 (not c!787026)) b!4595592))

(assert (= (and b!4595592 c!787024) b!4595587))

(assert (= (and b!4595592 (not c!787024)) b!4595593))

(assert (= (or b!4595591 b!4595592) bm!320698))

(assert (= (and bm!320698 c!787025) b!4595585))

(assert (= (and bm!320698 (not c!787025)) b!4595589))

(assert (= (and d!1446474 res!1921885) b!4595588))

(assert (= (and d!1446474 (not res!1921886)) b!4595590))

(assert (= (and b!4595590 res!1921887) b!4595586))

(assert (=> b!4595589 m!5419557))

(declare-fun m!5419975 () Bool)

(assert (=> b!4595589 m!5419975))

(declare-fun m!5419977 () Bool)

(assert (=> b!4595585 m!5419977))

(declare-fun m!5419979 () Bool)

(assert (=> bm!320698 m!5419979))

(declare-fun m!5419981 () Bool)

(assert (=> d!1446474 m!5419981))

(declare-fun m!5419983 () Bool)

(assert (=> b!4595590 m!5419983))

(assert (=> b!4595590 m!5419983))

(declare-fun m!5419985 () Bool)

(assert (=> b!4595590 m!5419985))

(assert (=> b!4595586 m!5419557))

(assert (=> b!4595586 m!5419975))

(assert (=> b!4595586 m!5419975))

(declare-fun m!5419987 () Bool)

(assert (=> b!4595586 m!5419987))

(assert (=> b!4595588 m!5419557))

(assert (=> b!4595588 m!5419975))

(assert (=> b!4595588 m!5419975))

(assert (=> b!4595588 m!5419987))

(assert (=> b!4595587 m!5419981))

(declare-fun m!5419989 () Bool)

(assert (=> b!4595587 m!5419989))

(declare-fun m!5419991 () Bool)

(assert (=> b!4595591 m!5419991))

(assert (=> b!4595591 m!5419983))

(assert (=> b!4595591 m!5419983))

(assert (=> b!4595591 m!5419985))

(declare-fun m!5419993 () Bool)

(assert (=> b!4595591 m!5419993))

(assert (=> d!1446264 d!1446474))

(declare-fun bs!1009141 () Bool)

(declare-fun d!1446476 () Bool)

(assert (= bs!1009141 (and d!1446476 d!1446250)))

(declare-fun lambda!185690 () Int)

(assert (=> bs!1009141 (= lambda!185690 lambda!185589)))

(declare-fun bs!1009142 () Bool)

(assert (= bs!1009142 (and d!1446476 d!1446454)))

(assert (=> bs!1009142 (= lambda!185690 lambda!185689)))

(declare-fun bs!1009143 () Bool)

(assert (= bs!1009143 (and d!1446476 d!1446214)))

(assert (=> bs!1009143 (= lambda!185690 lambda!185577)))

(declare-fun bs!1009144 () Bool)

(assert (= bs!1009144 (and d!1446476 d!1446310)))

(assert (=> bs!1009144 (= lambda!185690 lambda!185614)))

(declare-fun bs!1009145 () Bool)

(assert (= bs!1009145 (and d!1446476 start!458240)))

(assert (=> bs!1009145 (= lambda!185690 lambda!185574)))

(declare-fun bs!1009146 () Bool)

(assert (= bs!1009146 (and d!1446476 d!1446288)))

(assert (=> bs!1009146 (not (= lambda!185690 lambda!185603))))

(declare-fun bs!1009147 () Bool)

(assert (= bs!1009147 (and d!1446476 d!1446262)))

(assert (=> bs!1009147 (= lambda!185690 lambda!185590)))

(declare-fun bs!1009148 () Bool)

(assert (= bs!1009148 (and d!1446476 d!1446264)))

(assert (=> bs!1009148 (= lambda!185690 lambda!185600)))

(declare-fun lt!1756020 () ListMap!3893)

(assert (=> d!1446476 (invariantList!1117 (toList!4632 lt!1756020))))

(declare-fun e!2866453 () ListMap!3893)

(assert (=> d!1446476 (= lt!1756020 e!2866453)))

(declare-fun c!787027 () Bool)

(assert (=> d!1446476 (= c!787027 ((_ is Cons!51053) (toList!4631 (ListLongMap!3264 lt!1755698))))))

(assert (=> d!1446476 (forall!10578 (toList!4631 (ListLongMap!3264 lt!1755698)) lambda!185690)))

(assert (=> d!1446476 (= (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698))) lt!1756020)))

(declare-fun b!4595594 () Bool)

(assert (=> b!4595594 (= e!2866453 (addToMapMapFromBucket!807 (_2!29136 (h!57011 (toList!4631 (ListLongMap!3264 lt!1755698)))) (extractMap!1368 (t!358171 (toList!4631 (ListLongMap!3264 lt!1755698))))))))

(declare-fun b!4595595 () Bool)

(assert (=> b!4595595 (= e!2866453 (ListMap!3894 Nil!51052))))

(assert (= (and d!1446476 c!787027) b!4595594))

(assert (= (and d!1446476 (not c!787027)) b!4595595))

(declare-fun m!5419995 () Bool)

(assert (=> d!1446476 m!5419995))

(declare-fun m!5419997 () Bool)

(assert (=> d!1446476 m!5419997))

(declare-fun m!5419999 () Bool)

(assert (=> b!4595594 m!5419999))

(assert (=> b!4595594 m!5419999))

(declare-fun m!5420001 () Bool)

(assert (=> b!4595594 m!5420001))

(assert (=> d!1446264 d!1446476))

(declare-fun d!1446478 () Bool)

(assert (=> d!1446478 (contains!13987 (extractMap!1368 (toList!4631 (ListLongMap!3264 lt!1755698))) key!3287)))

(assert (=> d!1446478 true))

(declare-fun _$34!811 () Unit!107764)

(assert (=> d!1446478 (= (choose!30752 (ListLongMap!3264 lt!1755698) key!3287 hashF!1107) _$34!811)))

(declare-fun bs!1009149 () Bool)

(assert (= bs!1009149 d!1446478))

(assert (=> bs!1009149 m!5419557))

(assert (=> bs!1009149 m!5419557))

(assert (=> bs!1009149 m!5419559))

(assert (=> d!1446264 d!1446478))

(declare-fun d!1446480 () Bool)

(declare-fun res!1921888 () Bool)

(declare-fun e!2866454 () Bool)

(assert (=> d!1446480 (=> res!1921888 e!2866454)))

(assert (=> d!1446480 (= res!1921888 ((_ is Nil!51053) (toList!4631 (ListLongMap!3264 lt!1755698))))))

(assert (=> d!1446480 (= (forall!10578 (toList!4631 (ListLongMap!3264 lt!1755698)) lambda!185600) e!2866454)))

(declare-fun b!4595596 () Bool)

(declare-fun e!2866455 () Bool)

(assert (=> b!4595596 (= e!2866454 e!2866455)))

(declare-fun res!1921889 () Bool)

(assert (=> b!4595596 (=> (not res!1921889) (not e!2866455))))

(assert (=> b!4595596 (= res!1921889 (dynLambda!21386 lambda!185600 (h!57011 (toList!4631 (ListLongMap!3264 lt!1755698)))))))

(declare-fun b!4595597 () Bool)

(assert (=> b!4595597 (= e!2866455 (forall!10578 (t!358171 (toList!4631 (ListLongMap!3264 lt!1755698))) lambda!185600))))

(assert (= (and d!1446480 (not res!1921888)) b!4595596))

(assert (= (and b!4595596 res!1921889) b!4595597))

(declare-fun b_lambda!169081 () Bool)

(assert (=> (not b_lambda!169081) (not b!4595596)))

(declare-fun m!5420003 () Bool)

(assert (=> b!4595596 m!5420003))

(declare-fun m!5420005 () Bool)

(assert (=> b!4595597 m!5420005))

(assert (=> d!1446264 d!1446480))

(declare-fun d!1446482 () Bool)

(declare-fun lt!1756023 () Bool)

(assert (=> d!1446482 (= lt!1756023 (select (content!8628 (t!358171 (toList!4631 lm!1477))) lt!1755702))))

(declare-fun e!2866457 () Bool)

(assert (=> d!1446482 (= lt!1756023 e!2866457)))

(declare-fun res!1921891 () Bool)

(assert (=> d!1446482 (=> (not res!1921891) (not e!2866457))))

(assert (=> d!1446482 (= res!1921891 ((_ is Cons!51053) (t!358171 (toList!4631 lm!1477))))))

(assert (=> d!1446482 (= (contains!13988 (t!358171 (toList!4631 lm!1477)) lt!1755702) lt!1756023)))

(declare-fun b!4595600 () Bool)

(declare-fun e!2866456 () Bool)

(assert (=> b!4595600 (= e!2866457 e!2866456)))

(declare-fun res!1921890 () Bool)

(assert (=> b!4595600 (=> res!1921890 e!2866456)))

(assert (=> b!4595600 (= res!1921890 (= (h!57011 (t!358171 (toList!4631 lm!1477))) lt!1755702))))

(declare-fun b!4595601 () Bool)

(assert (=> b!4595601 (= e!2866456 (contains!13988 (t!358171 (t!358171 (toList!4631 lm!1477))) lt!1755702))))

(assert (= (and d!1446482 res!1921891) b!4595600))

(assert (= (and b!4595600 (not res!1921890)) b!4595601))

(declare-fun m!5420007 () Bool)

(assert (=> d!1446482 m!5420007))

(declare-fun m!5420009 () Bool)

(assert (=> d!1446482 m!5420009))

(declare-fun m!5420011 () Bool)

(assert (=> b!4595601 m!5420011))

(assert (=> b!4595066 d!1446482))

(declare-fun d!1446484 () Bool)

(declare-fun res!1921892 () Bool)

(declare-fun e!2866460 () Bool)

(assert (=> d!1446484 (=> res!1921892 e!2866460)))

(assert (=> d!1446484 (= res!1921892 (and ((_ is Cons!51052) (t!358170 newBucket!178)) (= (_1!29135 (h!57010 (t!358170 newBucket!178))) (_1!29135 (h!57010 newBucket!178)))))))

(assert (=> d!1446484 (= (containsKey!2132 (t!358170 newBucket!178) (_1!29135 (h!57010 newBucket!178))) e!2866460)))

(declare-fun b!4595604 () Bool)

(declare-fun e!2866461 () Bool)

(assert (=> b!4595604 (= e!2866460 e!2866461)))

(declare-fun res!1921893 () Bool)

(assert (=> b!4595604 (=> (not res!1921893) (not e!2866461))))

(assert (=> b!4595604 (= res!1921893 ((_ is Cons!51052) (t!358170 newBucket!178)))))

(declare-fun b!4595605 () Bool)

(assert (=> b!4595605 (= e!2866461 (containsKey!2132 (t!358170 (t!358170 newBucket!178)) (_1!29135 (h!57010 newBucket!178))))))

(assert (= (and d!1446484 (not res!1921892)) b!4595604))

(assert (= (and b!4595604 res!1921893) b!4595605))

(declare-fun m!5420013 () Bool)

(assert (=> b!4595605 m!5420013))

(assert (=> b!4595247 d!1446484))

(declare-fun b!4595609 () Bool)

(declare-fun e!2866463 () List!51176)

(assert (=> b!4595609 (= e!2866463 Nil!51052)))

(declare-fun b!4595607 () Bool)

(declare-fun e!2866462 () List!51176)

(assert (=> b!4595607 (= e!2866462 e!2866463)))

(declare-fun c!787030 () Bool)

(assert (=> b!4595607 (= c!787030 ((_ is Cons!51052) (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(declare-fun b!4595606 () Bool)

(assert (=> b!4595606 (= e!2866462 (t!358170 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))))))

(declare-fun d!1446486 () Bool)

(declare-fun lt!1756028 () List!51176)

(assert (=> d!1446486 (not (containsKey!2132 lt!1756028 key!3287))))

(assert (=> d!1446486 (= lt!1756028 e!2866462)))

(declare-fun c!787031 () Bool)

(assert (=> d!1446486 (= c!787031 (and ((_ is Cons!51052) (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))) (= (_1!29135 (h!57010 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))))) key!3287)))))

(assert (=> d!1446486 (noDuplicateKeys!1308 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(assert (=> d!1446486 (= (removePairForKey!933 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477)))) key!3287) lt!1756028)))

(declare-fun b!4595608 () Bool)

(assert (=> b!4595608 (= e!2866463 (Cons!51052 (h!57010 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))) (removePairForKey!933 (t!358170 (t!358170 (_2!29136 (h!57011 (toList!4631 lm!1477))))) key!3287)))))

(assert (= (and d!1446486 c!787031) b!4595606))

(assert (= (and d!1446486 (not c!787031)) b!4595607))

(assert (= (and b!4595607 c!787030) b!4595608))

(assert (= (and b!4595607 (not c!787030)) b!4595609))

(declare-fun m!5420015 () Bool)

(assert (=> d!1446486 m!5420015))

(assert (=> d!1446486 m!5419467))

(declare-fun m!5420017 () Bool)

(assert (=> b!4595608 m!5420017))

(assert (=> b!4595265 d!1446486))

(declare-fun d!1446488 () Bool)

(assert (=> d!1446488 (= (invariantList!1117 (toList!4632 lt!1755824)) (noDuplicatedKeys!322 (toList!4632 lt!1755824)))))

(declare-fun bs!1009150 () Bool)

(assert (= bs!1009150 d!1446488))

(declare-fun m!5420019 () Bool)

(assert (=> bs!1009150 m!5420019))

(assert (=> d!1446262 d!1446488))

(declare-fun d!1446490 () Bool)

(declare-fun res!1921894 () Bool)

(declare-fun e!2866464 () Bool)

(assert (=> d!1446490 (=> res!1921894 e!2866464)))

(assert (=> d!1446490 (= res!1921894 ((_ is Nil!51053) lt!1755698))))

(assert (=> d!1446490 (= (forall!10578 lt!1755698 lambda!185590) e!2866464)))

(declare-fun b!4595610 () Bool)

(declare-fun e!2866465 () Bool)

(assert (=> b!4595610 (= e!2866464 e!2866465)))

(declare-fun res!1921895 () Bool)

(assert (=> b!4595610 (=> (not res!1921895) (not e!2866465))))

(assert (=> b!4595610 (= res!1921895 (dynLambda!21386 lambda!185590 (h!57011 lt!1755698)))))

(declare-fun b!4595611 () Bool)

(assert (=> b!4595611 (= e!2866465 (forall!10578 (t!358171 lt!1755698) lambda!185590))))

(assert (= (and d!1446490 (not res!1921894)) b!4595610))

(assert (= (and b!4595610 res!1921895) b!4595611))

(declare-fun b_lambda!169083 () Bool)

(assert (=> (not b_lambda!169083) (not b!4595610)))

(declare-fun m!5420021 () Bool)

(assert (=> b!4595610 m!5420021))

(declare-fun m!5420023 () Bool)

(assert (=> b!4595611 m!5420023))

(assert (=> d!1446262 d!1446490))

(declare-fun d!1446492 () Bool)

(declare-fun c!787034 () Bool)

(assert (=> d!1446492 (= c!787034 ((_ is Nil!51053) (toList!4631 lm!1477)))))

(declare-fun e!2866468 () (InoxSet tuple2!51684))

(assert (=> d!1446492 (= (content!8628 (toList!4631 lm!1477)) e!2866468)))

(declare-fun b!4595616 () Bool)

(assert (=> b!4595616 (= e!2866468 ((as const (Array tuple2!51684 Bool)) false))))

(declare-fun b!4595617 () Bool)

(assert (=> b!4595617 (= e!2866468 ((_ map or) (store ((as const (Array tuple2!51684 Bool)) false) (h!57011 (toList!4631 lm!1477)) true) (content!8628 (t!358171 (toList!4631 lm!1477)))))))

(assert (= (and d!1446492 c!787034) b!4595616))

(assert (= (and d!1446492 (not c!787034)) b!4595617))

(declare-fun m!5420025 () Bool)

(assert (=> b!4595617 m!5420025))

(assert (=> b!4595617 m!5420007))

(assert (=> d!1446224 d!1446492))

(declare-fun bs!1009151 () Bool)

(declare-fun b!4595621 () Bool)

(assert (= bs!1009151 (and b!4595621 b!4595568)))

(declare-fun lambda!185699 () Int)

(assert (=> bs!1009151 (= (= (extractMap!1368 (t!358171 lt!1755698)) (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185699 lambda!185686))))

(declare-fun bs!1009152 () Bool)

(assert (= bs!1009152 (and b!4595621 d!1446412)))

(assert (=> bs!1009152 (= (= (extractMap!1368 (t!358171 lt!1755698)) lt!1756006) (= lambda!185699 lambda!185688))))

(assert (=> bs!1009151 (= (= (extractMap!1368 (t!358171 lt!1755698)) lt!1755996) (= lambda!185699 lambda!185687))))

(declare-fun bs!1009153 () Bool)

(assert (= bs!1009153 (and b!4595621 b!4595571)))

(assert (=> bs!1009153 (= (= (extractMap!1368 (t!358171 lt!1755698)) (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185699 lambda!185685))))

(declare-fun bs!1009154 () Bool)

(assert (= bs!1009154 (and b!4595621 d!1446292)))

(assert (=> bs!1009154 (not (= lambda!185699 lambda!185608))))

(declare-fun bs!1009155 () Bool)

(assert (= bs!1009155 (and b!4595621 d!1446294)))

(assert (=> bs!1009155 (not (= lambda!185699 lambda!185609))))

(assert (=> b!4595621 true))

(declare-fun bs!1009156 () Bool)

(declare-fun b!4595618 () Bool)

(assert (= bs!1009156 (and b!4595618 b!4595568)))

(declare-fun lambda!185702 () Int)

(assert (=> bs!1009156 (= (= (extractMap!1368 (t!358171 lt!1755698)) (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185702 lambda!185686))))

(declare-fun bs!1009157 () Bool)

(assert (= bs!1009157 (and b!4595618 d!1446412)))

(assert (=> bs!1009157 (= (= (extractMap!1368 (t!358171 lt!1755698)) lt!1756006) (= lambda!185702 lambda!185688))))

(assert (=> bs!1009156 (= (= (extractMap!1368 (t!358171 lt!1755698)) lt!1755996) (= lambda!185702 lambda!185687))))

(declare-fun bs!1009158 () Bool)

(assert (= bs!1009158 (and b!4595618 b!4595571)))

(assert (=> bs!1009158 (= (= (extractMap!1368 (t!358171 lt!1755698)) (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185702 lambda!185685))))

(declare-fun bs!1009159 () Bool)

(assert (= bs!1009159 (and b!4595618 d!1446292)))

(assert (=> bs!1009159 (not (= lambda!185702 lambda!185608))))

(declare-fun bs!1009160 () Bool)

(assert (= bs!1009160 (and b!4595618 d!1446294)))

(assert (=> bs!1009160 (not (= lambda!185702 lambda!185609))))

(declare-fun bs!1009161 () Bool)

(assert (= bs!1009161 (and b!4595618 b!4595621)))

(assert (=> bs!1009161 (= lambda!185702 lambda!185699)))

(assert (=> b!4595618 true))

(declare-fun lambda!185703 () Int)

(declare-fun lt!1756051 () ListMap!3893)

(assert (=> bs!1009156 (= (= lt!1756051 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185703 lambda!185686))))

(assert (=> bs!1009157 (= (= lt!1756051 lt!1756006) (= lambda!185703 lambda!185688))))

(assert (=> b!4595618 (= (= lt!1756051 (extractMap!1368 (t!358171 lt!1755698))) (= lambda!185703 lambda!185702))))

(assert (=> bs!1009156 (= (= lt!1756051 lt!1755996) (= lambda!185703 lambda!185687))))

(assert (=> bs!1009158 (= (= lt!1756051 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185703 lambda!185685))))

(assert (=> bs!1009159 (not (= lambda!185703 lambda!185608))))

(assert (=> bs!1009160 (not (= lambda!185703 lambda!185609))))

(assert (=> bs!1009161 (= (= lt!1756051 (extractMap!1368 (t!358171 lt!1755698))) (= lambda!185703 lambda!185699))))

(assert (=> b!4595618 true))

(declare-fun bs!1009162 () Bool)

(declare-fun d!1446494 () Bool)

(assert (= bs!1009162 (and d!1446494 b!4595618)))

(declare-fun lt!1756061 () ListMap!3893)

(declare-fun lambda!185708 () Int)

(assert (=> bs!1009162 (= (= lt!1756061 lt!1756051) (= lambda!185708 lambda!185703))))

(declare-fun bs!1009163 () Bool)

(assert (= bs!1009163 (and d!1446494 b!4595568)))

(assert (=> bs!1009163 (= (= lt!1756061 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185708 lambda!185686))))

(declare-fun bs!1009164 () Bool)

(assert (= bs!1009164 (and d!1446494 d!1446412)))

(assert (=> bs!1009164 (= (= lt!1756061 lt!1756006) (= lambda!185708 lambda!185688))))

(assert (=> bs!1009162 (= (= lt!1756061 (extractMap!1368 (t!358171 lt!1755698))) (= lambda!185708 lambda!185702))))

(assert (=> bs!1009163 (= (= lt!1756061 lt!1755996) (= lambda!185708 lambda!185687))))

(declare-fun bs!1009165 () Bool)

(assert (= bs!1009165 (and d!1446494 b!4595571)))

(assert (=> bs!1009165 (= (= lt!1756061 (extractMap!1368 (t!358171 (toList!4631 lm!1477)))) (= lambda!185708 lambda!185685))))

(declare-fun bs!1009166 () Bool)

(assert (= bs!1009166 (and d!1446494 d!1446292)))

(assert (=> bs!1009166 (not (= lambda!185708 lambda!185608))))

(declare-fun bs!1009167 () Bool)

(assert (= bs!1009167 (and d!1446494 d!1446294)))

(assert (=> bs!1009167 (not (= lambda!185708 lambda!185609))))

(declare-fun bs!1009168 () Bool)

(assert (= bs!1009168 (and d!1446494 b!4595621)))

(assert (=> bs!1009168 (= (= lt!1756061 (extractMap!1368 (t!358171 lt!1755698))) (= lambda!185708 lambda!185699))))

(assert (=> d!1446494 true))

(declare-fun e!2866469 () Bool)

(assert (=> d!1446494 e!2866469))

(declare-fun res!1921898 () Bool)

(assert (=> d!1446494 (=> (not res!1921898) (not e!2866469))))

(assert (=> d!1446494 (= res!1921898 (forall!10580 (_2!29136 (h!57011 lt!1755698)) lambda!185708))))

(declare-fun e!2866471 () ListMap!3893)

(assert (=> d!1446494 (= lt!1756061 e!2866471)))

(declare-fun c!787035 () Bool)

(assert (=> d!1446494 (= c!787035 ((_ is Nil!51052) (_2!29136 (h!57011 lt!1755698))))))

(assert (=> d!1446494 (noDuplicateKeys!1308 (_2!29136 (h!57011 lt!1755698)))))

(assert (=> d!1446494 (= (addToMapMapFromBucket!807 (_2!29136 (h!57011 lt!1755698)) (extractMap!1368 (t!358171 lt!1755698))) lt!1756061)))

(declare-fun bm!320699 () Bool)

(declare-fun call!320706 () Unit!107764)

(assert (=> bm!320699 (= call!320706 (lemmaContainsAllItsOwnKeys!431 (extractMap!1368 (t!358171 lt!1755698))))))

(assert (=> b!4595618 (= e!2866471 lt!1756051)))

(declare-fun lt!1756056 () ListMap!3893)

(assert (=> b!4595618 (= lt!1756056 (+!1733 (extractMap!1368 (t!358171 lt!1755698)) (h!57010 (_2!29136 (h!57011 lt!1755698)))))))

(assert (=> b!4595618 (= lt!1756051 (addToMapMapFromBucket!807 (t!358170 (_2!29136 (h!57011 lt!1755698))) (+!1733 (extractMap!1368 (t!358171 lt!1755698)) (h!57010 (_2!29136 (h!57011 lt!1755698))))))))

(declare-fun lt!1756045 () Unit!107764)

(assert (=> b!4595618 (= lt!1756045 call!320706)))

(declare-fun call!320704 () Bool)

(assert (=> b!4595618 call!320704))

(declare-fun lt!1756041 () Unit!107764)

(assert (=> b!4595618 (= lt!1756041 lt!1756045)))

(assert (=> b!4595618 (forall!10580 (toList!4632 lt!1756056) lambda!185703)))

(declare-fun lt!1756042 () Unit!107764)

(declare-fun Unit!107815 () Unit!107764)

(assert (=> b!4595618 (= lt!1756042 Unit!107815)))

(assert (=> b!4595618 (forall!10580 (t!358170 (_2!29136 (h!57011 lt!1755698))) lambda!185703)))

(declare-fun lt!1756044 () Unit!107764)

(declare-fun Unit!107816 () Unit!107764)

(assert (=> b!4595618 (= lt!1756044 Unit!107816)))

(declare-fun lt!1756058 () Unit!107764)

(declare-fun Unit!107817 () Unit!107764)

(assert (=> b!4595618 (= lt!1756058 Unit!107817)))

(declare-fun lt!1756047 () Unit!107764)

(assert (=> b!4595618 (= lt!1756047 (forallContained!2836 (toList!4632 lt!1756056) lambda!185703 (h!57010 (_2!29136 (h!57011 lt!1755698)))))))

(assert (=> b!4595618 (contains!13987 lt!1756056 (_1!29135 (h!57010 (_2!29136 (h!57011 lt!1755698)))))))

(declare-fun lt!1756055 () Unit!107764)

(declare-fun Unit!107818 () Unit!107764)

(assert (=> b!4595618 (= lt!1756055 Unit!107818)))

(assert (=> b!4595618 (contains!13987 lt!1756051 (_1!29135 (h!57010 (_2!29136 (h!57011 lt!1755698)))))))

(declare-fun lt!1756054 () Unit!107764)

(declare-fun Unit!107819 () Unit!107764)

(assert (=> b!4595618 (= lt!1756054 Unit!107819)))

(assert (=> b!4595618 (forall!10580 (_2!29136 (h!57011 lt!1755698)) lambda!185703)))

(declare-fun lt!1756050 () Unit!107764)

(declare-fun Unit!107820 () Unit!107764)

(assert (=> b!4595618 (= lt!1756050 Unit!107820)))

(declare-fun call!320705 () Bool)

(assert (=> b!4595618 call!320705))

(declare-fun lt!1756057 () Unit!107764)

(declare-fun Unit!107821 () Unit!107764)

(assert (=> b!4595618 (= lt!1756057 Unit!107821)))

(declare-fun lt!1756049 () Unit!107764)

(declare-fun Unit!107822 () Unit!107764)

(assert (=> b!4595618 (= lt!1756049 Unit!107822)))

(declare-fun lt!1756052 () Unit!107764)

(assert (=> b!4595618 (= lt!1756052 (addForallContainsKeyThenBeforeAdding!431 (extractMap!1368 (t!358171 lt!1755698)) lt!1756051 (_1!29135 (h!57010 (_2!29136 (h!57011 lt!1755698)))) (_2!29135 (h!57010 (_2!29136 (h!57011 lt!1755698))))))))

(assert (=> b!4595618 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 lt!1755698))) lambda!185703)))

(declare-fun lt!1756048 () Unit!107764)

(assert (=> b!4595618 (= lt!1756048 lt!1756052)))

(assert (=> b!4595618 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 lt!1755698))) lambda!185703)))

(declare-fun lt!1756060 () Unit!107764)

(declare-fun Unit!107823 () Unit!107764)

(assert (=> b!4595618 (= lt!1756060 Unit!107823)))

(declare-fun res!1921897 () Bool)

(assert (=> b!4595618 (= res!1921897 (forall!10580 (_2!29136 (h!57011 lt!1755698)) lambda!185703))))

(declare-fun e!2866470 () Bool)

(assert (=> b!4595618 (=> (not res!1921897) (not e!2866470))))

(assert (=> b!4595618 e!2866470))

(declare-fun lt!1756053 () Unit!107764)

(declare-fun Unit!107824 () Unit!107764)

(assert (=> b!4595618 (= lt!1756053 Unit!107824)))

(declare-fun bm!320700 () Bool)

(assert (=> bm!320700 (= call!320705 (forall!10580 (ite c!787035 (toList!4632 (extractMap!1368 (t!358171 lt!1755698))) (toList!4632 lt!1756056)) (ite c!787035 lambda!185699 lambda!185703)))))

(declare-fun b!4595619 () Bool)

(declare-fun res!1921896 () Bool)

(assert (=> b!4595619 (=> (not res!1921896) (not e!2866469))))

(assert (=> b!4595619 (= res!1921896 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 lt!1755698))) lambda!185708))))

(declare-fun b!4595620 () Bool)

(assert (=> b!4595620 (= e!2866469 (invariantList!1117 (toList!4632 lt!1756061)))))

(declare-fun bm!320701 () Bool)

(assert (=> bm!320701 (= call!320704 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 lt!1755698))) (ite c!787035 lambda!185699 lambda!185702)))))

(assert (=> b!4595621 (= e!2866471 (extractMap!1368 (t!358171 lt!1755698)))))

(declare-fun lt!1756046 () Unit!107764)

(assert (=> b!4595621 (= lt!1756046 call!320706)))

(assert (=> b!4595621 call!320704))

(declare-fun lt!1756059 () Unit!107764)

(assert (=> b!4595621 (= lt!1756059 lt!1756046)))

(assert (=> b!4595621 call!320705))

(declare-fun lt!1756043 () Unit!107764)

(declare-fun Unit!107825 () Unit!107764)

(assert (=> b!4595621 (= lt!1756043 Unit!107825)))

(declare-fun b!4595622 () Bool)

(assert (=> b!4595622 (= e!2866470 (forall!10580 (toList!4632 (extractMap!1368 (t!358171 lt!1755698))) lambda!185703))))

(assert (= (and d!1446494 c!787035) b!4595621))

(assert (= (and d!1446494 (not c!787035)) b!4595618))

(assert (= (and b!4595618 res!1921897) b!4595622))

(assert (= (or b!4595621 b!4595618) bm!320701))

(assert (= (or b!4595621 b!4595618) bm!320700))

(assert (= (or b!4595621 b!4595618) bm!320699))

(assert (= (and d!1446494 res!1921898) b!4595619))

(assert (= (and b!4595619 res!1921896) b!4595620))

(declare-fun m!5420027 () Bool)

(assert (=> bm!320701 m!5420027))

(declare-fun m!5420029 () Bool)

(assert (=> b!4595622 m!5420029))

(declare-fun m!5420031 () Bool)

(assert (=> d!1446494 m!5420031))

(declare-fun m!5420033 () Bool)

(assert (=> d!1446494 m!5420033))

(assert (=> b!4595618 m!5419493))

(declare-fun m!5420035 () Bool)

(assert (=> b!4595618 m!5420035))

(declare-fun m!5420037 () Bool)

(assert (=> b!4595618 m!5420037))

(assert (=> b!4595618 m!5420029))

(assert (=> b!4595618 m!5420035))

(declare-fun m!5420039 () Bool)

(assert (=> b!4595618 m!5420039))

(declare-fun m!5420041 () Bool)

(assert (=> b!4595618 m!5420041))

(declare-fun m!5420043 () Bool)

(assert (=> b!4595618 m!5420043))

(assert (=> b!4595618 m!5420029))

(declare-fun m!5420045 () Bool)

(assert (=> b!4595618 m!5420045))

(declare-fun m!5420047 () Bool)

(assert (=> b!4595618 m!5420047))

(declare-fun m!5420049 () Bool)

(assert (=> b!4595618 m!5420049))

(assert (=> b!4595618 m!5420043))

(assert (=> b!4595618 m!5419493))

(declare-fun m!5420051 () Bool)

(assert (=> b!4595618 m!5420051))

(declare-fun m!5420053 () Bool)

(assert (=> b!4595619 m!5420053))

(declare-fun m!5420055 () Bool)

(assert (=> b!4595620 m!5420055))

(assert (=> bm!320699 m!5419493))

(declare-fun m!5420057 () Bool)

(assert (=> bm!320699 m!5420057))

(declare-fun m!5420059 () Bool)

(assert (=> bm!320700 m!5420059))

(assert (=> b!4595195 d!1446494))

(declare-fun bs!1009169 () Bool)

(declare-fun d!1446496 () Bool)

(assert (= bs!1009169 (and d!1446496 d!1446250)))

(declare-fun lambda!185717 () Int)

(assert (=> bs!1009169 (= lambda!185717 lambda!185589)))

(declare-fun bs!1009170 () Bool)

(assert (= bs!1009170 (and d!1446496 d!1446454)))

(assert (=> bs!1009170 (= lambda!185717 lambda!185689)))

(declare-fun bs!1009171 () Bool)

(assert (= bs!1009171 (and d!1446496 d!1446214)))

(assert (=> bs!1009171 (= lambda!185717 lambda!185577)))

(declare-fun bs!1009172 () Bool)

(assert (= bs!1009172 (and d!1446496 d!1446310)))

(assert (=> bs!1009172 (= lambda!185717 lambda!185614)))

(declare-fun bs!1009173 () Bool)

(assert (= bs!1009173 (and d!1446496 start!458240)))

(assert (=> bs!1009173 (= lambda!185717 lambda!185574)))

(declare-fun bs!1009174 () Bool)

(assert (= bs!1009174 (and d!1446496 d!1446476)))

(assert (=> bs!1009174 (= lambda!185717 lambda!185690)))

(declare-fun bs!1009175 () Bool)

(assert (= bs!1009175 (and d!1446496 d!1446288)))

(assert (=> bs!1009175 (not (= lambda!185717 lambda!185603))))

(declare-fun bs!1009176 () Bool)

(assert (= bs!1009176 (and d!1446496 d!1446262)))

(assert (=> bs!1009176 (= lambda!185717 lambda!185590)))

(declare-fun bs!1009177 () Bool)

(assert (= bs!1009177 (and d!1446496 d!1446264)))

(assert (=> bs!1009177 (= lambda!185717 lambda!185600)))

(declare-fun lt!1756086 () ListMap!3893)

(assert (=> d!1446496 (invariantList!1117 (toList!4632 lt!1756086))))

(declare-fun e!2866474 () ListMap!3893)

(assert (=> d!1446496 (= lt!1756086 e!2866474)))

(declare-fun c!787036 () Bool)

(assert (=> d!1446496 (= c!787036 ((_ is Cons!51053) (t!358171 lt!1755698)))))

(assert (=> d!1446496 (forall!10578 (t!358171 lt!1755698) lambda!185717)))

(assert (=> d!1446496 (= (extractMap!1368 (t!358171 lt!1755698)) lt!1756086)))

(declare-fun b!4595623 () Bool)

(assert (=> b!4595623 (= e!2866474 (addToMapMapFromBucket!807 (_2!29136 (h!57011 (t!358171 lt!1755698))) (extractMap!1368 (t!358171 (t!358171 lt!1755698)))))))

(declare-fun b!4595624 () Bool)

(assert (=> b!4595624 (= e!2866474 (ListMap!3894 Nil!51052))))

(assert (= (and d!1446496 c!787036) b!4595623))

(assert (= (and d!1446496 (not c!787036)) b!4595624))

(declare-fun m!5420061 () Bool)

(assert (=> d!1446496 m!5420061))

(declare-fun m!5420063 () Bool)

(assert (=> d!1446496 m!5420063))

(declare-fun m!5420065 () Bool)

(assert (=> b!4595623 m!5420065))

(assert (=> b!4595623 m!5420065))

(declare-fun m!5420067 () Bool)

(assert (=> b!4595623 m!5420067))

(assert (=> b!4595195 d!1446496))

(declare-fun d!1446498 () Bool)

(declare-fun res!1921901 () Bool)

(declare-fun e!2866475 () Bool)

(assert (=> d!1446498 (=> res!1921901 e!2866475)))

(assert (=> d!1446498 (= res!1921901 (not ((_ is Cons!51052) (_2!29136 lt!1755702))))))

(assert (=> d!1446498 (= (noDuplicateKeys!1308 (_2!29136 lt!1755702)) e!2866475)))

(declare-fun b!4595627 () Bool)

(declare-fun e!2866476 () Bool)

(assert (=> b!4595627 (= e!2866475 e!2866476)))

(declare-fun res!1921902 () Bool)

(assert (=> b!4595627 (=> (not res!1921902) (not e!2866476))))

(assert (=> b!4595627 (= res!1921902 (not (containsKey!2132 (t!358170 (_2!29136 lt!1755702)) (_1!29135 (h!57010 (_2!29136 lt!1755702))))))))

(declare-fun b!4595628 () Bool)

(assert (=> b!4595628 (= e!2866476 (noDuplicateKeys!1308 (t!358170 (_2!29136 lt!1755702))))))

(assert (= (and d!1446498 (not res!1921901)) b!4595627))

(assert (= (and b!4595627 res!1921902) b!4595628))

(declare-fun m!5420069 () Bool)

(assert (=> b!4595627 m!5420069))

(declare-fun m!5420071 () Bool)

(assert (=> b!4595628 m!5420071))

(assert (=> bs!1009061 d!1446498))

(declare-fun e!2866477 () Bool)

(declare-fun tp!1340306 () Bool)

(declare-fun b!4595629 () Bool)

(assert (=> b!4595629 (= e!2866477 (and tp_is_empty!28525 tp_is_empty!28527 tp!1340306))))

(assert (=> b!4595283 (= tp!1340301 e!2866477)))

(assert (= (and b!4595283 ((_ is Cons!51052) (_2!29136 (h!57011 (toList!4631 lm!1477))))) b!4595629))

(declare-fun b!4595630 () Bool)

(declare-fun e!2866478 () Bool)

(declare-fun tp!1340307 () Bool)

(declare-fun tp!1340308 () Bool)

(assert (=> b!4595630 (= e!2866478 (and tp!1340307 tp!1340308))))

(assert (=> b!4595283 (= tp!1340302 e!2866478)))

(assert (= (and b!4595283 ((_ is Cons!51053) (t!358171 (toList!4631 lm!1477)))) b!4595630))

(declare-fun b!4595631 () Bool)

(declare-fun e!2866479 () Bool)

(declare-fun tp!1340309 () Bool)

(assert (=> b!4595631 (= e!2866479 (and tp_is_empty!28525 tp_is_empty!28527 tp!1340309))))

(assert (=> b!4595288 (= tp!1340305 e!2866479)))

(assert (= (and b!4595288 ((_ is Cons!51052) (t!358170 (t!358170 newBucket!178)))) b!4595631))

(declare-fun b_lambda!169085 () Bool)

(assert (= b_lambda!169061 (or d!1446292 b_lambda!169085)))

(declare-fun bs!1009178 () Bool)

(declare-fun d!1446500 () Bool)

(assert (= bs!1009178 (and d!1446500 d!1446292)))

(assert (=> bs!1009178 (= (dynLambda!21387 lambda!185608 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477))))) (= (hash!3191 hashF!1107 (_1!29135 (h!57010 (_2!29136 (h!57011 (toList!4631 lm!1477)))))) hash!344))))

(declare-fun m!5420073 () Bool)

(assert (=> bs!1009178 m!5420073))

(assert (=> b!4595293 d!1446500))

(declare-fun b_lambda!169087 () Bool)

(assert (= b_lambda!169069 (or start!458240 b_lambda!169087)))

(declare-fun bs!1009179 () Bool)

(declare-fun d!1446502 () Bool)

(assert (= bs!1009179 (and d!1446502 start!458240)))

(assert (=> bs!1009179 (= (dynLambda!21386 lambda!185574 (h!57011 (t!358171 (toList!4631 lm!1477)))) (noDuplicateKeys!1308 (_2!29136 (h!57011 (t!358171 (toList!4631 lm!1477))))))))

(declare-fun m!5420075 () Bool)

(assert (=> bs!1009179 m!5420075))

(assert (=> b!4595415 d!1446502))

(declare-fun b_lambda!169089 () Bool)

(assert (= b_lambda!169065 (or d!1446288 b_lambda!169089)))

(declare-fun bs!1009180 () Bool)

(declare-fun d!1446504 () Bool)

(assert (= bs!1009180 (and d!1446504 d!1446288)))

(assert (=> bs!1009180 (= (dynLambda!21386 lambda!185603 (h!57011 (toList!4631 lm!1477))) (allKeysSameHash!1164 (_2!29136 (h!57011 (toList!4631 lm!1477))) (_1!29136 (h!57011 (toList!4631 lm!1477))) hashF!1107))))

(declare-fun m!5420077 () Bool)

(assert (=> bs!1009180 m!5420077))

(assert (=> b!4595342 d!1446504))

(declare-fun b_lambda!169091 () Bool)

(assert (= b_lambda!169081 (or d!1446264 b_lambda!169091)))

(declare-fun bs!1009181 () Bool)

(declare-fun d!1446506 () Bool)

(assert (= bs!1009181 (and d!1446506 d!1446264)))

(assert (=> bs!1009181 (= (dynLambda!21386 lambda!185600 (h!57011 (toList!4631 (ListLongMap!3264 lt!1755698)))) (noDuplicateKeys!1308 (_2!29136 (h!57011 (toList!4631 (ListLongMap!3264 lt!1755698))))))))

(declare-fun m!5420079 () Bool)

(assert (=> bs!1009181 m!5420079))

(assert (=> b!4595596 d!1446506))

(declare-fun b_lambda!169093 () Bool)

(assert (= b_lambda!169063 (or d!1446294 b_lambda!169093)))

(declare-fun bs!1009182 () Bool)

(declare-fun d!1446508 () Bool)

(assert (= bs!1009182 (and d!1446508 d!1446294)))

(assert (=> bs!1009182 (= (dynLambda!21387 lambda!185609 (h!57010 newBucket!178)) (= (hash!3191 hashF!1107 (_1!29135 (h!57010 newBucket!178))) hash!344))))

(declare-fun m!5420081 () Bool)

(assert (=> bs!1009182 m!5420081))

(assert (=> b!4595340 d!1446508))

(declare-fun b_lambda!169095 () Bool)

(assert (= b_lambda!169071 (or d!1446214 b_lambda!169095)))

(declare-fun bs!1009183 () Bool)

(declare-fun d!1446510 () Bool)

(assert (= bs!1009183 (and d!1446510 d!1446214)))

(assert (=> bs!1009183 (= (dynLambda!21386 lambda!185577 (h!57011 (toList!4631 lm!1477))) (noDuplicateKeys!1308 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(assert (=> bs!1009183 m!5419307))

(assert (=> b!4595425 d!1446510))

(declare-fun b_lambda!169097 () Bool)

(assert (= b_lambda!169079 (or start!458240 b_lambda!169097)))

(assert (=> d!1446472 d!1446314))

(declare-fun b_lambda!169099 () Bool)

(assert (= b_lambda!169067 (or d!1446250 b_lambda!169099)))

(declare-fun bs!1009184 () Bool)

(declare-fun d!1446512 () Bool)

(assert (= bs!1009184 (and d!1446512 d!1446250)))

(assert (=> bs!1009184 (= (dynLambda!21386 lambda!185589 (h!57011 (toList!4631 lm!1477))) (noDuplicateKeys!1308 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(assert (=> bs!1009184 m!5419307))

(assert (=> b!4595399 d!1446512))

(declare-fun b_lambda!169101 () Bool)

(assert (= b_lambda!169083 (or d!1446262 b_lambda!169101)))

(declare-fun bs!1009185 () Bool)

(declare-fun d!1446514 () Bool)

(assert (= bs!1009185 (and d!1446514 d!1446262)))

(assert (=> bs!1009185 (= (dynLambda!21386 lambda!185590 (h!57011 lt!1755698)) (noDuplicateKeys!1308 (_2!29136 (h!57011 lt!1755698))))))

(assert (=> bs!1009185 m!5420033))

(assert (=> b!4595610 d!1446514))

(declare-fun b_lambda!169103 () Bool)

(assert (= b_lambda!169077 (or d!1446310 b_lambda!169103)))

(declare-fun bs!1009186 () Bool)

(declare-fun d!1446516 () Bool)

(assert (= bs!1009186 (and d!1446516 d!1446310)))

(assert (=> bs!1009186 (= (dynLambda!21386 lambda!185614 (h!57011 (toList!4631 lm!1477))) (noDuplicateKeys!1308 (_2!29136 (h!57011 (toList!4631 lm!1477)))))))

(assert (=> bs!1009186 m!5419307))

(assert (=> b!4595579 d!1446516))

(check-sat (not d!1446476) (not b!4595345) (not bm!320701) (not d!1446402) (not b!4595597) (not b!4595631) (not bs!1009181) (not b!4595569) (not d!1446482) (not b!4595619) (not b_lambda!169093) (not b!4595323) (not b_lambda!169103) (not b!4595617) (not b!4595627) (not d!1446488) (not b!4595360) (not b!4595321) (not b!4595570) (not b!4595586) (not b_lambda!169057) (not b!4595620) (not d!1446462) (not d!1446408) (not bm!320699) (not b_lambda!169085) (not b!4595438) (not b!4595608) (not d!1446486) (not d!1446478) (not b_lambda!169089) (not b!4595411) (not d!1446460) (not b!4595572) (not b!4595447) (not b!4595584) (not b!4595355) (not bm!320698) (not b!4595420) (not d!1446494) (not d!1446354) (not bs!1009185) (not b!4595580) (not b!4595448) (not b_lambda!169095) (not b!4595578) (not b!4595568) (not bs!1009179) (not b!4595449) (not b!4595628) (not b!4595343) (not b!4595629) (not d!1446344) (not b!4595605) (not b!4595430) (not b!4595427) (not b!4595587) (not d!1446468) (not b!4595623) (not b!4595296) (not b!4595575) (not b_lambda!169099) (not b!4595594) (not b!4595400) (not b!4595590) (not d!1446412) (not b!4595394) (not b!4595419) (not b!4595588) (not bs!1009180) (not d!1446350) (not bs!1009182) (not b!4595297) (not d!1446370) (not bm!320700) (not b!4595351) (not bm!320695) (not b!4595436) (not b!4595416) (not b!4595428) (not d!1446360) (not b!4595426) (not b!4595443) (not bs!1009186) (not d!1446496) (not b_lambda!169101) (not b!4595356) (not b!4595454) (not b!4595397) (not b!4595352) (not b!4595601) (not b!4595339) (not d!1446458) (not d!1446372) (not b_lambda!169097) (not b!4595333) (not d!1446340) (not d!1446322) (not b!4595630) (not d!1446374) (not d!1446348) (not b!4595387) (not b!4595298) (not b!4595388) tp_is_empty!28525 (not b!4595591) (not b!4595446) (not d!1446456) (not b!4595358) (not b!4595325) (not d!1446338) (not d!1446454) (not d!1446352) (not d!1446400) (not bm!320697) (not d!1446474) (not b!4595417) (not b!4595414) tp_is_empty!28527 (not d!1446356) (not b_lambda!169087) (not d!1446388) (not b!4595622) (not b!4595582) (not bs!1009183) (not d!1446464) (not b!4595366) (not b_lambda!169091) (not b!4595589) (not b!4595341) (not b!4595294) (not bs!1009184) (not b!4595389) (not b!4595611) (not b!4595585) (not b!4595377) (not b!4595320) (not b!4595380) (not bm!320696) (not d!1446376) (not b!4595422) (not b!4595317) (not b!4595618) (not bs!1009178) (not d!1446392) (not b_lambda!169059) (not d!1446336) (not b!4595437))
(check-sat)
