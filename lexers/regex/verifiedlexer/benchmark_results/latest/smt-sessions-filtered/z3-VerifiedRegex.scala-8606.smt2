; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458528 () Bool)

(assert start!458528)

(declare-fun b!4596344 () Bool)

(declare-fun e!2866952 () Bool)

(declare-datatypes ((K!12435 0))(
  ( (K!12436 (val!18219 Int)) )
))
(declare-datatypes ((V!12681 0))(
  ( (V!12682 (val!18220 Int)) )
))
(declare-datatypes ((tuple2!51706 0))(
  ( (tuple2!51707 (_1!29147 K!12435) (_2!29147 V!12681)) )
))
(declare-datatypes ((List!51192 0))(
  ( (Nil!51068) (Cons!51068 (h!57030 tuple2!51706) (t!358186 List!51192)) )
))
(declare-datatypes ((tuple2!51708 0))(
  ( (tuple2!51709 (_1!29148 (_ BitVec 64)) (_2!29148 List!51192)) )
))
(declare-datatypes ((List!51193 0))(
  ( (Nil!51069) (Cons!51069 (h!57031 tuple2!51708) (t!358187 List!51193)) )
))
(declare-datatypes ((ListLongMap!3275 0))(
  ( (ListLongMap!3276 (toList!4643 List!51193)) )
))
(declare-fun lt!1756611 () ListLongMap!3275)

(declare-datatypes ((Hashable!5713 0))(
  ( (HashableExt!5712 (__x!31416 Int)) )
))
(declare-fun hashF!1107 () Hashable!5713)

(declare-fun allKeysSameHashInMap!1425 (ListLongMap!3275 Hashable!5713) Bool)

(assert (=> b!4596344 (= e!2866952 (allKeysSameHashInMap!1425 lt!1756611 hashF!1107))))

(declare-fun b!4596345 () Bool)

(declare-fun e!2866948 () Bool)

(declare-fun e!2866946 () Bool)

(assert (=> b!4596345 (= e!2866948 e!2866946)))

(declare-fun res!1922364 () Bool)

(assert (=> b!4596345 (=> res!1922364 e!2866946)))

(declare-fun lt!1756618 () tuple2!51708)

(declare-fun lt!1756616 () ListLongMap!3275)

(declare-fun +!1738 (ListLongMap!3275 tuple2!51708) ListLongMap!3275)

(assert (=> b!4596345 (= res!1922364 (not (= lt!1756616 (+!1738 lt!1756611 lt!1756618))))))

(declare-fun lm!1477 () ListLongMap!3275)

(declare-fun tail!7936 (ListLongMap!3275) ListLongMap!3275)

(assert (=> b!4596345 (= lt!1756611 (tail!7936 lm!1477))))

(declare-fun b!4596346 () Bool)

(declare-fun e!2866956 () Bool)

(declare-fun e!2866951 () Bool)

(assert (=> b!4596346 (= e!2866956 e!2866951)))

(declare-fun res!1922363 () Bool)

(assert (=> b!4596346 (=> (not res!1922363) (not e!2866951))))

(declare-fun lt!1756609 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4596346 (= res!1922363 (= lt!1756609 hash!344))))

(declare-fun key!3287 () K!12435)

(declare-fun hash!3203 (Hashable!5713 K!12435) (_ BitVec 64))

(assert (=> b!4596346 (= lt!1756609 (hash!3203 hashF!1107 key!3287))))

(declare-fun b!4596347 () Bool)

(declare-fun res!1922358 () Bool)

(assert (=> b!4596347 (=> res!1922358 e!2866952)))

(declare-fun lambda!185824 () Int)

(declare-fun forall!10590 (List!51193 Int) Bool)

(assert (=> b!4596347 (= res!1922358 (not (forall!10590 (toList!4643 lt!1756611) lambda!185824)))))

(declare-fun b!4596348 () Bool)

(assert (=> b!4596348 (= e!2866946 e!2866952)))

(declare-fun res!1922366 () Bool)

(assert (=> b!4596348 (=> res!1922366 e!2866952)))

(declare-datatypes ((ListMap!3905 0))(
  ( (ListMap!3906 (toList!4644 List!51192)) )
))
(declare-fun lt!1756613 () ListMap!3905)

(declare-fun extractMap!1374 (List!51193) ListMap!3905)

(assert (=> b!4596348 (= res!1922366 (not (= lt!1756613 (extractMap!1374 (t!358187 (toList!4643 lm!1477))))))))

(assert (=> b!4596348 (= lt!1756613 (extractMap!1374 (toList!4643 lt!1756611)))))

(declare-fun b!4596349 () Bool)

(declare-fun e!2866954 () Bool)

(declare-fun tp!1340366 () Bool)

(assert (=> b!4596349 (= e!2866954 tp!1340366)))

(declare-fun b!4596350 () Bool)

(declare-fun e!2866950 () Bool)

(declare-fun e!2866955 () Bool)

(assert (=> b!4596350 (= e!2866950 e!2866955)))

(declare-fun res!1922361 () Bool)

(assert (=> b!4596350 (=> res!1922361 e!2866955)))

(declare-fun lt!1756615 () List!51193)

(declare-fun containsKeyBiggerList!270 (List!51193 K!12435) Bool)

(assert (=> b!4596350 (= res!1922361 (not (containsKeyBiggerList!270 lt!1756615 key!3287)))))

(assert (=> b!4596350 (= lt!1756615 (Cons!51069 (h!57031 (toList!4643 lm!1477)) Nil!51069))))

(declare-fun b!4596351 () Bool)

(declare-fun e!2866947 () Bool)

(declare-fun tp!1340367 () Bool)

(declare-fun tp_is_empty!28551 () Bool)

(declare-fun tp_is_empty!28549 () Bool)

(assert (=> b!4596351 (= e!2866947 (and tp_is_empty!28549 tp_is_empty!28551 tp!1340367))))

(declare-fun b!4596352 () Bool)

(declare-fun res!1922359 () Bool)

(declare-fun e!2866953 () Bool)

(assert (=> b!4596352 (=> res!1922359 e!2866953)))

(get-info :version)

(assert (=> b!4596352 (= res!1922359 (or ((_ is Nil!51069) (toList!4643 lm!1477)) (not (= (_1!29148 (h!57031 (toList!4643 lm!1477))) hash!344))))))

(declare-fun b!4596353 () Bool)

(assert (=> b!4596353 (= e!2866953 e!2866950)))

(declare-fun res!1922367 () Bool)

(assert (=> b!4596353 (=> res!1922367 e!2866950)))

(declare-fun lt!1756623 () Bool)

(assert (=> b!4596353 (= res!1922367 lt!1756623)))

(declare-datatypes ((Unit!107861 0))(
  ( (Unit!107862) )
))
(declare-fun lt!1756617 () Unit!107861)

(declare-fun e!2866949 () Unit!107861)

(assert (=> b!4596353 (= lt!1756617 e!2866949)))

(declare-fun c!787132 () Bool)

(assert (=> b!4596353 (= c!787132 lt!1756623)))

(declare-fun containsKey!2146 (List!51192 K!12435) Bool)

(assert (=> b!4596353 (= lt!1756623 (not (containsKey!2146 (_2!29148 (h!57031 (toList!4643 lm!1477))) key!3287)))))

(declare-fun b!4596354 () Bool)

(declare-fun res!1922368 () Bool)

(assert (=> b!4596354 (=> (not res!1922368) (not e!2866956))))

(assert (=> b!4596354 (= res!1922368 (allKeysSameHashInMap!1425 lm!1477 hashF!1107))))

(declare-fun b!4596355 () Bool)

(assert (=> b!4596355 (= e!2866951 (not e!2866953))))

(declare-fun res!1922356 () Bool)

(assert (=> b!4596355 (=> res!1922356 e!2866953)))

(declare-fun newBucket!178 () List!51192)

(declare-fun lt!1756619 () List!51192)

(declare-fun removePairForKey!939 (List!51192 K!12435) List!51192)

(assert (=> b!4596355 (= res!1922356 (not (= newBucket!178 (removePairForKey!939 lt!1756619 key!3287))))))

(declare-fun lt!1756608 () Unit!107861)

(declare-fun lt!1756614 () tuple2!51708)

(declare-fun forallContained!2843 (List!51193 Int tuple2!51708) Unit!107861)

(assert (=> b!4596355 (= lt!1756608 (forallContained!2843 (toList!4643 lm!1477) lambda!185824 lt!1756614))))

(declare-fun contains!14009 (List!51193 tuple2!51708) Bool)

(assert (=> b!4596355 (contains!14009 (toList!4643 lm!1477) lt!1756614)))

(assert (=> b!4596355 (= lt!1756614 (tuple2!51709 hash!344 lt!1756619))))

(declare-fun lt!1756610 () Unit!107861)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!824 (List!51193 (_ BitVec 64) List!51192) Unit!107861)

(assert (=> b!4596355 (= lt!1756610 (lemmaGetValueByKeyImpliesContainsTuple!824 (toList!4643 lm!1477) hash!344 lt!1756619))))

(declare-fun apply!12051 (ListLongMap!3275 (_ BitVec 64)) List!51192)

(assert (=> b!4596355 (= lt!1756619 (apply!12051 lm!1477 hash!344))))

(declare-fun contains!14010 (ListLongMap!3275 (_ BitVec 64)) Bool)

(assert (=> b!4596355 (contains!14010 lm!1477 lt!1756609)))

(declare-fun lt!1756621 () Unit!107861)

(declare-fun lemmaInGenMapThenLongMapContainsHash!388 (ListLongMap!3275 K!12435 Hashable!5713) Unit!107861)

(assert (=> b!4596355 (= lt!1756621 (lemmaInGenMapThenLongMapContainsHash!388 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4596356 () Bool)

(declare-fun res!1922357 () Bool)

(assert (=> b!4596356 (=> res!1922357 e!2866953)))

(declare-fun noDuplicateKeys!1314 (List!51192) Bool)

(assert (=> b!4596356 (= res!1922357 (not (noDuplicateKeys!1314 newBucket!178)))))

(declare-fun b!4596357 () Bool)

(declare-fun Unit!107863 () Unit!107861)

(assert (=> b!4596357 (= e!2866949 Unit!107863)))

(declare-fun lt!1756612 () Unit!107861)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!284 (ListLongMap!3275 K!12435 Hashable!5713) Unit!107861)

(assert (=> b!4596357 (= lt!1756612 (lemmaNotInItsHashBucketThenNotInMap!284 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4596357 false))

(declare-fun b!4596358 () Bool)

(declare-fun res!1922360 () Bool)

(assert (=> b!4596358 (=> res!1922360 e!2866952)))

(declare-fun contains!14011 (ListMap!3905 K!12435) Bool)

(assert (=> b!4596358 (= res!1922360 (not (contains!14011 lt!1756613 key!3287)))))

(declare-fun b!4596359 () Bool)

(declare-fun Unit!107864 () Unit!107861)

(assert (=> b!4596359 (= e!2866949 Unit!107864)))

(declare-fun b!4596360 () Bool)

(declare-fun res!1922365 () Bool)

(assert (=> b!4596360 (=> (not res!1922365) (not e!2866956))))

(assert (=> b!4596360 (= res!1922365 (contains!14011 (extractMap!1374 (toList!4643 lm!1477)) key!3287))))

(declare-fun b!4596361 () Bool)

(declare-fun res!1922362 () Bool)

(assert (=> b!4596361 (=> (not res!1922362) (not e!2866951))))

(declare-fun allKeysSameHash!1170 (List!51192 (_ BitVec 64) Hashable!5713) Bool)

(assert (=> b!4596361 (= res!1922362 (allKeysSameHash!1170 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4596362 () Bool)

(assert (=> b!4596362 (= e!2866955 e!2866948)))

(declare-fun res!1922355 () Bool)

(assert (=> b!4596362 (=> res!1922355 e!2866948)))

(declare-fun tail!7937 (List!51193) List!51193)

(assert (=> b!4596362 (= res!1922355 (not (= (t!358187 (toList!4643 lm!1477)) (tail!7937 (toList!4643 lt!1756616)))))))

(assert (=> b!4596362 (= lt!1756616 (+!1738 lm!1477 lt!1756618))))

(declare-fun eq!721 (ListMap!3905 ListMap!3905) Bool)

(declare-fun -!490 (ListMap!3905 K!12435) ListMap!3905)

(assert (=> b!4596362 (eq!721 (extractMap!1374 (Cons!51069 lt!1756618 Nil!51069)) (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287))))

(assert (=> b!4596362 (= lt!1756618 (tuple2!51709 hash!344 newBucket!178))))

(declare-fun lt!1756622 () Unit!107861)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!80 ((_ BitVec 64) List!51192 List!51192 K!12435 Hashable!5713) Unit!107861)

(assert (=> b!4596362 (= lt!1756622 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!80 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4596362 (contains!14011 (extractMap!1374 lt!1756615) key!3287)))

(declare-fun lt!1756620 () Unit!107861)

(declare-fun lemmaListContainsThenExtractedMapContains!248 (ListLongMap!3275 K!12435 Hashable!5713) Unit!107861)

(assert (=> b!4596362 (= lt!1756620 (lemmaListContainsThenExtractedMapContains!248 (ListLongMap!3276 lt!1756615) key!3287 hashF!1107))))

(declare-fun res!1922354 () Bool)

(assert (=> start!458528 (=> (not res!1922354) (not e!2866956))))

(assert (=> start!458528 (= res!1922354 (forall!10590 (toList!4643 lm!1477) lambda!185824))))

(assert (=> start!458528 e!2866956))

(assert (=> start!458528 true))

(declare-fun inv!66619 (ListLongMap!3275) Bool)

(assert (=> start!458528 (and (inv!66619 lm!1477) e!2866954)))

(assert (=> start!458528 tp_is_empty!28549))

(assert (=> start!458528 e!2866947))

(assert (= (and start!458528 res!1922354) b!4596354))

(assert (= (and b!4596354 res!1922368) b!4596360))

(assert (= (and b!4596360 res!1922365) b!4596346))

(assert (= (and b!4596346 res!1922363) b!4596361))

(assert (= (and b!4596361 res!1922362) b!4596355))

(assert (= (and b!4596355 (not res!1922356)) b!4596356))

(assert (= (and b!4596356 (not res!1922357)) b!4596352))

(assert (= (and b!4596352 (not res!1922359)) b!4596353))

(assert (= (and b!4596353 c!787132) b!4596357))

(assert (= (and b!4596353 (not c!787132)) b!4596359))

(assert (= (and b!4596353 (not res!1922367)) b!4596350))

(assert (= (and b!4596350 (not res!1922361)) b!4596362))

(assert (= (and b!4596362 (not res!1922355)) b!4596345))

(assert (= (and b!4596345 (not res!1922364)) b!4596348))

(assert (= (and b!4596348 (not res!1922366)) b!4596358))

(assert (= (and b!4596358 (not res!1922360)) b!4596347))

(assert (= (and b!4596347 (not res!1922358)) b!4596344))

(assert (= start!458528 b!4596349))

(assert (= (and start!458528 ((_ is Cons!51068) newBucket!178)) b!4596351))

(declare-fun m!5421125 () Bool)

(assert (=> b!4596358 m!5421125))

(declare-fun m!5421127 () Bool)

(assert (=> start!458528 m!5421127))

(declare-fun m!5421129 () Bool)

(assert (=> start!458528 m!5421129))

(declare-fun m!5421131 () Bool)

(assert (=> b!4596345 m!5421131))

(declare-fun m!5421133 () Bool)

(assert (=> b!4596345 m!5421133))

(declare-fun m!5421135 () Bool)

(assert (=> b!4596362 m!5421135))

(declare-fun m!5421137 () Bool)

(assert (=> b!4596362 m!5421137))

(declare-fun m!5421139 () Bool)

(assert (=> b!4596362 m!5421139))

(declare-fun m!5421141 () Bool)

(assert (=> b!4596362 m!5421141))

(declare-fun m!5421143 () Bool)

(assert (=> b!4596362 m!5421143))

(declare-fun m!5421145 () Bool)

(assert (=> b!4596362 m!5421145))

(declare-fun m!5421147 () Bool)

(assert (=> b!4596362 m!5421147))

(assert (=> b!4596362 m!5421135))

(assert (=> b!4596362 m!5421141))

(declare-fun m!5421149 () Bool)

(assert (=> b!4596362 m!5421149))

(assert (=> b!4596362 m!5421139))

(assert (=> b!4596362 m!5421137))

(declare-fun m!5421151 () Bool)

(assert (=> b!4596362 m!5421151))

(declare-fun m!5421153 () Bool)

(assert (=> b!4596362 m!5421153))

(declare-fun m!5421155 () Bool)

(assert (=> b!4596346 m!5421155))

(declare-fun m!5421157 () Bool)

(assert (=> b!4596360 m!5421157))

(assert (=> b!4596360 m!5421157))

(declare-fun m!5421159 () Bool)

(assert (=> b!4596360 m!5421159))

(declare-fun m!5421161 () Bool)

(assert (=> b!4596344 m!5421161))

(declare-fun m!5421163 () Bool)

(assert (=> b!4596347 m!5421163))

(declare-fun m!5421165 () Bool)

(assert (=> b!4596356 m!5421165))

(declare-fun m!5421167 () Bool)

(assert (=> b!4596348 m!5421167))

(declare-fun m!5421169 () Bool)

(assert (=> b!4596348 m!5421169))

(declare-fun m!5421171 () Bool)

(assert (=> b!4596353 m!5421171))

(declare-fun m!5421173 () Bool)

(assert (=> b!4596355 m!5421173))

(declare-fun m!5421175 () Bool)

(assert (=> b!4596355 m!5421175))

(declare-fun m!5421177 () Bool)

(assert (=> b!4596355 m!5421177))

(declare-fun m!5421179 () Bool)

(assert (=> b!4596355 m!5421179))

(declare-fun m!5421181 () Bool)

(assert (=> b!4596355 m!5421181))

(declare-fun m!5421183 () Bool)

(assert (=> b!4596355 m!5421183))

(declare-fun m!5421185 () Bool)

(assert (=> b!4596355 m!5421185))

(declare-fun m!5421187 () Bool)

(assert (=> b!4596350 m!5421187))

(declare-fun m!5421189 () Bool)

(assert (=> b!4596354 m!5421189))

(declare-fun m!5421191 () Bool)

(assert (=> b!4596357 m!5421191))

(declare-fun m!5421193 () Bool)

(assert (=> b!4596361 m!5421193))

(check-sat (not b!4596345) (not b!4596355) (not b!4596347) (not b!4596348) (not b!4596349) (not b!4596346) (not b!4596351) (not start!458528) (not b!4596356) (not b!4596354) (not b!4596362) (not b!4596361) tp_is_empty!28551 (not b!4596357) (not b!4596353) (not b!4596344) (not b!4596358) (not b!4596360) tp_is_empty!28549 (not b!4596350))
(check-sat)
(get-model)

(declare-fun bs!1009428 () Bool)

(declare-fun d!1446771 () Bool)

(assert (= bs!1009428 (and d!1446771 start!458528)))

(declare-fun lambda!185827 () Int)

(assert (=> bs!1009428 (= lambda!185827 lambda!185824)))

(assert (=> d!1446771 (contains!14010 lm!1477 (hash!3203 hashF!1107 key!3287))))

(declare-fun lt!1756626 () Unit!107861)

(declare-fun choose!30776 (ListLongMap!3275 K!12435 Hashable!5713) Unit!107861)

(assert (=> d!1446771 (= lt!1756626 (choose!30776 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1446771 (forall!10590 (toList!4643 lm!1477) lambda!185827)))

(assert (=> d!1446771 (= (lemmaInGenMapThenLongMapContainsHash!388 lm!1477 key!3287 hashF!1107) lt!1756626)))

(declare-fun bs!1009429 () Bool)

(assert (= bs!1009429 d!1446771))

(assert (=> bs!1009429 m!5421155))

(assert (=> bs!1009429 m!5421155))

(declare-fun m!5421199 () Bool)

(assert (=> bs!1009429 m!5421199))

(declare-fun m!5421201 () Bool)

(assert (=> bs!1009429 m!5421201))

(declare-fun m!5421203 () Bool)

(assert (=> bs!1009429 m!5421203))

(assert (=> b!4596355 d!1446771))

(declare-fun d!1446777 () Bool)

(declare-fun lt!1756629 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8639 (List!51193) (InoxSet tuple2!51708))

(assert (=> d!1446777 (= lt!1756629 (select (content!8639 (toList!4643 lm!1477)) lt!1756614))))

(declare-fun e!2866973 () Bool)

(assert (=> d!1446777 (= lt!1756629 e!2866973)))

(declare-fun res!1922385 () Bool)

(assert (=> d!1446777 (=> (not res!1922385) (not e!2866973))))

(assert (=> d!1446777 (= res!1922385 ((_ is Cons!51069) (toList!4643 lm!1477)))))

(assert (=> d!1446777 (= (contains!14009 (toList!4643 lm!1477) lt!1756614) lt!1756629)))

(declare-fun b!4596379 () Bool)

(declare-fun e!2866974 () Bool)

(assert (=> b!4596379 (= e!2866973 e!2866974)))

(declare-fun res!1922386 () Bool)

(assert (=> b!4596379 (=> res!1922386 e!2866974)))

(assert (=> b!4596379 (= res!1922386 (= (h!57031 (toList!4643 lm!1477)) lt!1756614))))

(declare-fun b!4596380 () Bool)

(assert (=> b!4596380 (= e!2866974 (contains!14009 (t!358187 (toList!4643 lm!1477)) lt!1756614))))

(assert (= (and d!1446777 res!1922385) b!4596379))

(assert (= (and b!4596379 (not res!1922386)) b!4596380))

(declare-fun m!5421211 () Bool)

(assert (=> d!1446777 m!5421211))

(declare-fun m!5421213 () Bool)

(assert (=> d!1446777 m!5421213))

(declare-fun m!5421215 () Bool)

(assert (=> b!4596380 m!5421215))

(assert (=> b!4596355 d!1446777))

(declare-fun d!1446783 () Bool)

(declare-datatypes ((Option!11386 0))(
  ( (None!11385) (Some!11385 (v!45355 List!51192)) )
))
(declare-fun get!16874 (Option!11386) List!51192)

(declare-fun getValueByKey!1306 (List!51193 (_ BitVec 64)) Option!11386)

(assert (=> d!1446783 (= (apply!12051 lm!1477 hash!344) (get!16874 (getValueByKey!1306 (toList!4643 lm!1477) hash!344)))))

(declare-fun bs!1009431 () Bool)

(assert (= bs!1009431 d!1446783))

(declare-fun m!5421217 () Bool)

(assert (=> bs!1009431 m!5421217))

(assert (=> bs!1009431 m!5421217))

(declare-fun m!5421219 () Bool)

(assert (=> bs!1009431 m!5421219))

(assert (=> b!4596355 d!1446783))

(declare-fun d!1446785 () Bool)

(declare-fun e!2866997 () Bool)

(assert (=> d!1446785 e!2866997))

(declare-fun res!1922398 () Bool)

(assert (=> d!1446785 (=> res!1922398 e!2866997)))

(declare-fun lt!1756665 () Bool)

(assert (=> d!1446785 (= res!1922398 (not lt!1756665))))

(declare-fun lt!1756663 () Bool)

(assert (=> d!1446785 (= lt!1756665 lt!1756663)))

(declare-fun lt!1756662 () Unit!107861)

(declare-fun e!2866998 () Unit!107861)

(assert (=> d!1446785 (= lt!1756662 e!2866998)))

(declare-fun c!787144 () Bool)

(assert (=> d!1446785 (= c!787144 lt!1756663)))

(declare-fun containsKey!2148 (List!51193 (_ BitVec 64)) Bool)

(assert (=> d!1446785 (= lt!1756663 (containsKey!2148 (toList!4643 lm!1477) lt!1756609))))

(assert (=> d!1446785 (= (contains!14010 lm!1477 lt!1756609) lt!1756665)))

(declare-fun b!4596414 () Bool)

(declare-fun lt!1756664 () Unit!107861)

(assert (=> b!4596414 (= e!2866998 lt!1756664)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1209 (List!51193 (_ BitVec 64)) Unit!107861)

(assert (=> b!4596414 (= lt!1756664 (lemmaContainsKeyImpliesGetValueByKeyDefined!1209 (toList!4643 lm!1477) lt!1756609))))

(declare-fun isDefined!8653 (Option!11386) Bool)

(assert (=> b!4596414 (isDefined!8653 (getValueByKey!1306 (toList!4643 lm!1477) lt!1756609))))

(declare-fun b!4596415 () Bool)

(declare-fun Unit!107871 () Unit!107861)

(assert (=> b!4596415 (= e!2866998 Unit!107871)))

(declare-fun b!4596416 () Bool)

(assert (=> b!4596416 (= e!2866997 (isDefined!8653 (getValueByKey!1306 (toList!4643 lm!1477) lt!1756609)))))

(assert (= (and d!1446785 c!787144) b!4596414))

(assert (= (and d!1446785 (not c!787144)) b!4596415))

(assert (= (and d!1446785 (not res!1922398)) b!4596416))

(declare-fun m!5421241 () Bool)

(assert (=> d!1446785 m!5421241))

(declare-fun m!5421243 () Bool)

(assert (=> b!4596414 m!5421243))

(declare-fun m!5421245 () Bool)

(assert (=> b!4596414 m!5421245))

(assert (=> b!4596414 m!5421245))

(declare-fun m!5421247 () Bool)

(assert (=> b!4596414 m!5421247))

(assert (=> b!4596416 m!5421245))

(assert (=> b!4596416 m!5421245))

(assert (=> b!4596416 m!5421247))

(assert (=> b!4596355 d!1446785))

(declare-fun d!1446789 () Bool)

(declare-fun dynLambda!21392 (Int tuple2!51708) Bool)

(assert (=> d!1446789 (dynLambda!21392 lambda!185824 lt!1756614)))

(declare-fun lt!1756670 () Unit!107861)

(declare-fun choose!30778 (List!51193 Int tuple2!51708) Unit!107861)

(assert (=> d!1446789 (= lt!1756670 (choose!30778 (toList!4643 lm!1477) lambda!185824 lt!1756614))))

(declare-fun e!2867003 () Bool)

(assert (=> d!1446789 e!2867003))

(declare-fun res!1922401 () Bool)

(assert (=> d!1446789 (=> (not res!1922401) (not e!2867003))))

(assert (=> d!1446789 (= res!1922401 (forall!10590 (toList!4643 lm!1477) lambda!185824))))

(assert (=> d!1446789 (= (forallContained!2843 (toList!4643 lm!1477) lambda!185824 lt!1756614) lt!1756670)))

(declare-fun b!4596423 () Bool)

(assert (=> b!4596423 (= e!2867003 (contains!14009 (toList!4643 lm!1477) lt!1756614))))

(assert (= (and d!1446789 res!1922401) b!4596423))

(declare-fun b_lambda!169167 () Bool)

(assert (=> (not b_lambda!169167) (not d!1446789)))

(declare-fun m!5421249 () Bool)

(assert (=> d!1446789 m!5421249))

(declare-fun m!5421251 () Bool)

(assert (=> d!1446789 m!5421251))

(assert (=> d!1446789 m!5421127))

(assert (=> b!4596423 m!5421175))

(assert (=> b!4596355 d!1446789))

(declare-fun b!4596457 () Bool)

(declare-fun e!2867024 () List!51192)

(assert (=> b!4596457 (= e!2867024 (Cons!51068 (h!57030 lt!1756619) (removePairForKey!939 (t!358186 lt!1756619) key!3287)))))

(declare-fun b!4596455 () Bool)

(declare-fun e!2867023 () List!51192)

(assert (=> b!4596455 (= e!2867023 (t!358186 lt!1756619))))

(declare-fun b!4596456 () Bool)

(assert (=> b!4596456 (= e!2867023 e!2867024)))

(declare-fun c!787157 () Bool)

(assert (=> b!4596456 (= c!787157 ((_ is Cons!51068) lt!1756619))))

(declare-fun d!1446791 () Bool)

(declare-fun lt!1756684 () List!51192)

(assert (=> d!1446791 (not (containsKey!2146 lt!1756684 key!3287))))

(assert (=> d!1446791 (= lt!1756684 e!2867023)))

(declare-fun c!787158 () Bool)

(assert (=> d!1446791 (= c!787158 (and ((_ is Cons!51068) lt!1756619) (= (_1!29147 (h!57030 lt!1756619)) key!3287)))))

(assert (=> d!1446791 (noDuplicateKeys!1314 lt!1756619)))

(assert (=> d!1446791 (= (removePairForKey!939 lt!1756619 key!3287) lt!1756684)))

(declare-fun b!4596458 () Bool)

(assert (=> b!4596458 (= e!2867024 Nil!51068)))

(assert (= (and d!1446791 c!787158) b!4596455))

(assert (= (and d!1446791 (not c!787158)) b!4596456))

(assert (= (and b!4596456 c!787157) b!4596457))

(assert (= (and b!4596456 (not c!787157)) b!4596458))

(declare-fun m!5421303 () Bool)

(assert (=> b!4596457 m!5421303))

(declare-fun m!5421305 () Bool)

(assert (=> d!1446791 m!5421305))

(declare-fun m!5421309 () Bool)

(assert (=> d!1446791 m!5421309))

(assert (=> b!4596355 d!1446791))

(declare-fun d!1446809 () Bool)

(assert (=> d!1446809 (contains!14009 (toList!4643 lm!1477) (tuple2!51709 hash!344 lt!1756619))))

(declare-fun lt!1756690 () Unit!107861)

(declare-fun choose!30779 (List!51193 (_ BitVec 64) List!51192) Unit!107861)

(assert (=> d!1446809 (= lt!1756690 (choose!30779 (toList!4643 lm!1477) hash!344 lt!1756619))))

(declare-fun e!2867032 () Bool)

(assert (=> d!1446809 e!2867032))

(declare-fun res!1922417 () Bool)

(assert (=> d!1446809 (=> (not res!1922417) (not e!2867032))))

(declare-fun isStrictlySorted!538 (List!51193) Bool)

(assert (=> d!1446809 (= res!1922417 (isStrictlySorted!538 (toList!4643 lm!1477)))))

(assert (=> d!1446809 (= (lemmaGetValueByKeyImpliesContainsTuple!824 (toList!4643 lm!1477) hash!344 lt!1756619) lt!1756690)))

(declare-fun b!4596467 () Bool)

(assert (=> b!4596467 (= e!2867032 (= (getValueByKey!1306 (toList!4643 lm!1477) hash!344) (Some!11385 lt!1756619)))))

(assert (= (and d!1446809 res!1922417) b!4596467))

(declare-fun m!5421319 () Bool)

(assert (=> d!1446809 m!5421319))

(declare-fun m!5421321 () Bool)

(assert (=> d!1446809 m!5421321))

(declare-fun m!5421323 () Bool)

(assert (=> d!1446809 m!5421323))

(assert (=> b!4596467 m!5421217))

(assert (=> b!4596355 d!1446809))

(declare-fun bs!1009470 () Bool)

(declare-fun d!1446813 () Bool)

(assert (= bs!1009470 (and d!1446813 start!458528)))

(declare-fun lambda!185842 () Int)

(assert (=> bs!1009470 (not (= lambda!185842 lambda!185824))))

(declare-fun bs!1009471 () Bool)

(assert (= bs!1009471 (and d!1446813 d!1446771)))

(assert (=> bs!1009471 (not (= lambda!185842 lambda!185827))))

(assert (=> d!1446813 true))

(assert (=> d!1446813 (= (allKeysSameHashInMap!1425 lt!1756611 hashF!1107) (forall!10590 (toList!4643 lt!1756611) lambda!185842))))

(declare-fun bs!1009472 () Bool)

(assert (= bs!1009472 d!1446813))

(declare-fun m!5421355 () Bool)

(assert (=> bs!1009472 m!5421355))

(assert (=> b!4596344 d!1446813))

(declare-fun bs!1009473 () Bool)

(declare-fun d!1446821 () Bool)

(assert (= bs!1009473 (and d!1446821 start!458528)))

(declare-fun lambda!185843 () Int)

(assert (=> bs!1009473 (not (= lambda!185843 lambda!185824))))

(declare-fun bs!1009474 () Bool)

(assert (= bs!1009474 (and d!1446821 d!1446771)))

(assert (=> bs!1009474 (not (= lambda!185843 lambda!185827))))

(declare-fun bs!1009475 () Bool)

(assert (= bs!1009475 (and d!1446821 d!1446813)))

(assert (=> bs!1009475 (= lambda!185843 lambda!185842)))

(assert (=> d!1446821 true))

(assert (=> d!1446821 (= (allKeysSameHashInMap!1425 lm!1477 hashF!1107) (forall!10590 (toList!4643 lm!1477) lambda!185843))))

(declare-fun bs!1009476 () Bool)

(assert (= bs!1009476 d!1446821))

(declare-fun m!5421357 () Bool)

(assert (=> bs!1009476 m!5421357))

(assert (=> b!4596354 d!1446821))

(declare-fun d!1446823 () Bool)

(declare-fun res!1922423 () Bool)

(declare-fun e!2867040 () Bool)

(assert (=> d!1446823 (=> res!1922423 e!2867040)))

(assert (=> d!1446823 (= res!1922423 (and ((_ is Cons!51068) (_2!29148 (h!57031 (toList!4643 lm!1477)))) (= (_1!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lm!1477))))) key!3287)))))

(assert (=> d!1446823 (= (containsKey!2146 (_2!29148 (h!57031 (toList!4643 lm!1477))) key!3287) e!2867040)))

(declare-fun b!4596479 () Bool)

(declare-fun e!2867041 () Bool)

(assert (=> b!4596479 (= e!2867040 e!2867041)))

(declare-fun res!1922424 () Bool)

(assert (=> b!4596479 (=> (not res!1922424) (not e!2867041))))

(assert (=> b!4596479 (= res!1922424 ((_ is Cons!51068) (_2!29148 (h!57031 (toList!4643 lm!1477)))))))

(declare-fun b!4596480 () Bool)

(assert (=> b!4596480 (= e!2867041 (containsKey!2146 (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477)))) key!3287))))

(assert (= (and d!1446823 (not res!1922423)) b!4596479))

(assert (= (and b!4596479 res!1922424) b!4596480))

(declare-fun m!5421359 () Bool)

(assert (=> b!4596480 m!5421359))

(assert (=> b!4596353 d!1446823))

(declare-fun bs!1009488 () Bool)

(declare-fun d!1446825 () Bool)

(assert (= bs!1009488 (and d!1446825 start!458528)))

(declare-fun lambda!185849 () Int)

(assert (=> bs!1009488 (= lambda!185849 lambda!185824)))

(declare-fun bs!1009489 () Bool)

(assert (= bs!1009489 (and d!1446825 d!1446771)))

(assert (=> bs!1009489 (= lambda!185849 lambda!185827)))

(declare-fun bs!1009490 () Bool)

(assert (= bs!1009490 (and d!1446825 d!1446813)))

(assert (=> bs!1009490 (not (= lambda!185849 lambda!185842))))

(declare-fun bs!1009491 () Bool)

(assert (= bs!1009491 (and d!1446825 d!1446821)))

(assert (=> bs!1009491 (not (= lambda!185849 lambda!185843))))

(declare-fun lt!1756711 () ListMap!3905)

(declare-fun invariantList!1122 (List!51192) Bool)

(assert (=> d!1446825 (invariantList!1122 (toList!4644 lt!1756711))))

(declare-fun e!2867047 () ListMap!3905)

(assert (=> d!1446825 (= lt!1756711 e!2867047)))

(declare-fun c!787164 () Bool)

(assert (=> d!1446825 (= c!787164 ((_ is Cons!51069) (Cons!51069 lt!1756618 Nil!51069)))))

(assert (=> d!1446825 (forall!10590 (Cons!51069 lt!1756618 Nil!51069) lambda!185849)))

(assert (=> d!1446825 (= (extractMap!1374 (Cons!51069 lt!1756618 Nil!51069)) lt!1756711)))

(declare-fun b!4596491 () Bool)

(declare-fun addToMapMapFromBucket!812 (List!51192 ListMap!3905) ListMap!3905)

(assert (=> b!4596491 (= e!2867047 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))))))

(declare-fun b!4596492 () Bool)

(assert (=> b!4596492 (= e!2867047 (ListMap!3906 Nil!51068))))

(assert (= (and d!1446825 c!787164) b!4596491))

(assert (= (and d!1446825 (not c!787164)) b!4596492))

(declare-fun m!5421385 () Bool)

(assert (=> d!1446825 m!5421385))

(declare-fun m!5421387 () Bool)

(assert (=> d!1446825 m!5421387))

(declare-fun m!5421389 () Bool)

(assert (=> b!4596491 m!5421389))

(assert (=> b!4596491 m!5421389))

(declare-fun m!5421391 () Bool)

(assert (=> b!4596491 m!5421391))

(assert (=> b!4596362 d!1446825))

(declare-fun bs!1009492 () Bool)

(declare-fun d!1446835 () Bool)

(assert (= bs!1009492 (and d!1446835 d!1446821)))

(declare-fun lambda!185850 () Int)

(assert (=> bs!1009492 (not (= lambda!185850 lambda!185843))))

(declare-fun bs!1009494 () Bool)

(assert (= bs!1009494 (and d!1446835 d!1446771)))

(assert (=> bs!1009494 (= lambda!185850 lambda!185827)))

(declare-fun bs!1009495 () Bool)

(assert (= bs!1009495 (and d!1446835 d!1446825)))

(assert (=> bs!1009495 (= lambda!185850 lambda!185849)))

(declare-fun bs!1009496 () Bool)

(assert (= bs!1009496 (and d!1446835 d!1446813)))

(assert (=> bs!1009496 (not (= lambda!185850 lambda!185842))))

(declare-fun bs!1009497 () Bool)

(assert (= bs!1009497 (and d!1446835 start!458528)))

(assert (=> bs!1009497 (= lambda!185850 lambda!185824)))

(declare-fun lt!1756715 () ListMap!3905)

(assert (=> d!1446835 (invariantList!1122 (toList!4644 lt!1756715))))

(declare-fun e!2867048 () ListMap!3905)

(assert (=> d!1446835 (= lt!1756715 e!2867048)))

(declare-fun c!787165 () Bool)

(assert (=> d!1446835 (= c!787165 ((_ is Cons!51069) (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))

(assert (=> d!1446835 (forall!10590 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069) lambda!185850)))

(assert (=> d!1446835 (= (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) lt!1756715)))

(declare-fun b!4596493 () Bool)

(assert (=> b!4596493 (= e!2867048 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))

(declare-fun b!4596494 () Bool)

(assert (=> b!4596494 (= e!2867048 (ListMap!3906 Nil!51068))))

(assert (= (and d!1446835 c!787165) b!4596493))

(assert (= (and d!1446835 (not c!787165)) b!4596494))

(declare-fun m!5421415 () Bool)

(assert (=> d!1446835 m!5421415))

(declare-fun m!5421421 () Bool)

(assert (=> d!1446835 m!5421421))

(declare-fun m!5421423 () Bool)

(assert (=> b!4596493 m!5421423))

(assert (=> b!4596493 m!5421423))

(declare-fun m!5421427 () Bool)

(assert (=> b!4596493 m!5421427))

(assert (=> b!4596362 d!1446835))

(declare-fun d!1446841 () Bool)

(declare-fun e!2867066 () Bool)

(assert (=> d!1446841 e!2867066))

(declare-fun res!1922445 () Bool)

(assert (=> d!1446841 (=> (not res!1922445) (not e!2867066))))

(declare-fun lt!1756729 () ListMap!3905)

(assert (=> d!1446841 (= res!1922445 (not (contains!14011 lt!1756729 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!219 (List!51192 K!12435) List!51192)

(assert (=> d!1446841 (= lt!1756729 (ListMap!3906 (removePresrvNoDuplicatedKeys!219 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287)))))

(assert (=> d!1446841 (= (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287) lt!1756729)))

(declare-fun b!4596515 () Bool)

(declare-datatypes ((List!51195 0))(
  ( (Nil!51071) (Cons!51071 (h!57035 K!12435) (t!358189 List!51195)) )
))
(declare-fun content!8640 (List!51195) (InoxSet K!12435))

(declare-fun keys!17878 (ListMap!3905) List!51195)

(assert (=> b!4596515 (= e!2867066 (= ((_ map and) (content!8640 (keys!17878 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) ((_ map not) (store ((as const (Array K!12435 Bool)) false) key!3287 true))) (content!8640 (keys!17878 lt!1756729))))))

(assert (= (and d!1446841 res!1922445) b!4596515))

(declare-fun m!5421437 () Bool)

(assert (=> d!1446841 m!5421437))

(declare-fun m!5421439 () Bool)

(assert (=> d!1446841 m!5421439))

(declare-fun m!5421441 () Bool)

(assert (=> b!4596515 m!5421441))

(declare-fun m!5421443 () Bool)

(assert (=> b!4596515 m!5421443))

(declare-fun m!5421445 () Bool)

(assert (=> b!4596515 m!5421445))

(declare-fun m!5421447 () Bool)

(assert (=> b!4596515 m!5421447))

(declare-fun m!5421449 () Bool)

(assert (=> b!4596515 m!5421449))

(assert (=> b!4596515 m!5421135))

(assert (=> b!4596515 m!5421441))

(assert (=> b!4596515 m!5421445))

(assert (=> b!4596362 d!1446841))

(declare-fun d!1446847 () Bool)

(declare-fun e!2867079 () Bool)

(assert (=> d!1446847 e!2867079))

(declare-fun res!1922453 () Bool)

(assert (=> d!1446847 (=> (not res!1922453) (not e!2867079))))

(declare-fun lt!1756757 () ListLongMap!3275)

(assert (=> d!1446847 (= res!1922453 (contains!14010 lt!1756757 (_1!29148 lt!1756618)))))

(declare-fun lt!1756755 () List!51193)

(assert (=> d!1446847 (= lt!1756757 (ListLongMap!3276 lt!1756755))))

(declare-fun lt!1756758 () Unit!107861)

(declare-fun lt!1756756 () Unit!107861)

(assert (=> d!1446847 (= lt!1756758 lt!1756756)))

(assert (=> d!1446847 (= (getValueByKey!1306 lt!1756755 (_1!29148 lt!1756618)) (Some!11385 (_2!29148 lt!1756618)))))

(declare-fun lemmaContainsTupThenGetReturnValue!794 (List!51193 (_ BitVec 64) List!51192) Unit!107861)

(assert (=> d!1446847 (= lt!1756756 (lemmaContainsTupThenGetReturnValue!794 lt!1756755 (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))

(declare-fun insertStrictlySorted!486 (List!51193 (_ BitVec 64) List!51192) List!51193)

(assert (=> d!1446847 (= lt!1756755 (insertStrictlySorted!486 (toList!4643 lm!1477) (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))

(assert (=> d!1446847 (= (+!1738 lm!1477 lt!1756618) lt!1756757)))

(declare-fun b!4596537 () Bool)

(declare-fun res!1922454 () Bool)

(assert (=> b!4596537 (=> (not res!1922454) (not e!2867079))))

(assert (=> b!4596537 (= res!1922454 (= (getValueByKey!1306 (toList!4643 lt!1756757) (_1!29148 lt!1756618)) (Some!11385 (_2!29148 lt!1756618))))))

(declare-fun b!4596538 () Bool)

(assert (=> b!4596538 (= e!2867079 (contains!14009 (toList!4643 lt!1756757) lt!1756618))))

(assert (= (and d!1446847 res!1922453) b!4596537))

(assert (= (and b!4596537 res!1922454) b!4596538))

(declare-fun m!5421469 () Bool)

(assert (=> d!1446847 m!5421469))

(declare-fun m!5421471 () Bool)

(assert (=> d!1446847 m!5421471))

(declare-fun m!5421473 () Bool)

(assert (=> d!1446847 m!5421473))

(declare-fun m!5421475 () Bool)

(assert (=> d!1446847 m!5421475))

(declare-fun m!5421477 () Bool)

(assert (=> b!4596537 m!5421477))

(declare-fun m!5421481 () Bool)

(assert (=> b!4596538 m!5421481))

(assert (=> b!4596362 d!1446847))

(declare-fun d!1446857 () Bool)

(declare-fun content!8642 (List!51192) (InoxSet tuple2!51706))

(assert (=> d!1446857 (= (eq!721 (extractMap!1374 (Cons!51069 lt!1756618 Nil!51069)) (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287)) (= (content!8642 (toList!4644 (extractMap!1374 (Cons!51069 lt!1756618 Nil!51069)))) (content!8642 (toList!4644 (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287)))))))

(declare-fun bs!1009522 () Bool)

(assert (= bs!1009522 d!1446857))

(declare-fun m!5421487 () Bool)

(assert (=> bs!1009522 m!5421487))

(declare-fun m!5421489 () Bool)

(assert (=> bs!1009522 m!5421489))

(assert (=> b!4596362 d!1446857))

(declare-fun b!4596589 () Bool)

(declare-fun e!2867118 () Unit!107861)

(declare-fun e!2867117 () Unit!107861)

(assert (=> b!4596589 (= e!2867118 e!2867117)))

(declare-fun c!787184 () Bool)

(declare-fun call!320737 () Bool)

(assert (=> b!4596589 (= c!787184 call!320737)))

(declare-fun b!4596590 () Bool)

(assert (=> b!4596590 false))

(declare-fun lt!1756796 () Unit!107861)

(declare-fun lt!1756789 () Unit!107861)

(assert (=> b!4596590 (= lt!1756796 lt!1756789)))

(declare-fun containsKey!2150 (List!51192 K!12435) Bool)

(assert (=> b!4596590 (containsKey!2150 (toList!4644 (extractMap!1374 lt!1756615)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!570 (List!51192 K!12435) Unit!107861)

(assert (=> b!4596590 (= lt!1756789 (lemmaInGetKeysListThenContainsKey!570 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))

(declare-fun Unit!107873 () Unit!107861)

(assert (=> b!4596590 (= e!2867117 Unit!107873)))

(declare-fun b!4596591 () Bool)

(declare-fun e!2867114 () Bool)

(declare-fun e!2867113 () Bool)

(assert (=> b!4596591 (= e!2867114 e!2867113)))

(declare-fun res!1922476 () Bool)

(assert (=> b!4596591 (=> (not res!1922476) (not e!2867113))))

(declare-datatypes ((Option!11387 0))(
  ( (None!11386) (Some!11386 (v!45356 V!12681)) )
))
(declare-fun isDefined!8655 (Option!11387) Bool)

(declare-fun getValueByKey!1307 (List!51192 K!12435) Option!11387)

(assert (=> b!4596591 (= res!1922476 (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 lt!1756615)) key!3287)))))

(declare-fun b!4596592 () Bool)

(declare-fun e!2867115 () Bool)

(declare-fun contains!14013 (List!51195 K!12435) Bool)

(assert (=> b!4596592 (= e!2867115 (not (contains!14013 (keys!17878 (extractMap!1374 lt!1756615)) key!3287)))))

(declare-fun b!4596593 () Bool)

(declare-fun lt!1756793 () Unit!107861)

(assert (=> b!4596593 (= e!2867118 lt!1756793)))

(declare-fun lt!1756791 () Unit!107861)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (List!51192 K!12435) Unit!107861)

(assert (=> b!4596593 (= lt!1756791 (lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))

(assert (=> b!4596593 (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))

(declare-fun lt!1756795 () Unit!107861)

(assert (=> b!4596593 (= lt!1756795 lt!1756791)))

(declare-fun lemmaInListThenGetKeysListContains!567 (List!51192 K!12435) Unit!107861)

(assert (=> b!4596593 (= lt!1756793 (lemmaInListThenGetKeysListContains!567 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))

(assert (=> b!4596593 call!320737))

(declare-fun bm!320732 () Bool)

(declare-fun e!2867116 () List!51195)

(assert (=> bm!320732 (= call!320737 (contains!14013 e!2867116 key!3287))))

(declare-fun c!787185 () Bool)

(declare-fun c!787186 () Bool)

(assert (=> bm!320732 (= c!787185 c!787186)))

(declare-fun b!4596594 () Bool)

(assert (=> b!4596594 (= e!2867113 (contains!14013 (keys!17878 (extractMap!1374 lt!1756615)) key!3287))))

(declare-fun b!4596595 () Bool)

(declare-fun getKeysList!571 (List!51192) List!51195)

(assert (=> b!4596595 (= e!2867116 (getKeysList!571 (toList!4644 (extractMap!1374 lt!1756615))))))

(declare-fun b!4596596 () Bool)

(assert (=> b!4596596 (= e!2867116 (keys!17878 (extractMap!1374 lt!1756615)))))

(declare-fun b!4596597 () Bool)

(declare-fun Unit!107874 () Unit!107861)

(assert (=> b!4596597 (= e!2867117 Unit!107874)))

(declare-fun d!1446859 () Bool)

(assert (=> d!1446859 e!2867114))

(declare-fun res!1922475 () Bool)

(assert (=> d!1446859 (=> res!1922475 e!2867114)))

(assert (=> d!1446859 (= res!1922475 e!2867115)))

(declare-fun res!1922477 () Bool)

(assert (=> d!1446859 (=> (not res!1922477) (not e!2867115))))

(declare-fun lt!1756790 () Bool)

(assert (=> d!1446859 (= res!1922477 (not lt!1756790))))

(declare-fun lt!1756794 () Bool)

(assert (=> d!1446859 (= lt!1756790 lt!1756794)))

(declare-fun lt!1756792 () Unit!107861)

(assert (=> d!1446859 (= lt!1756792 e!2867118)))

(assert (=> d!1446859 (= c!787186 lt!1756794)))

(assert (=> d!1446859 (= lt!1756794 (containsKey!2150 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))

(assert (=> d!1446859 (= (contains!14011 (extractMap!1374 lt!1756615) key!3287) lt!1756790)))

(assert (= (and d!1446859 c!787186) b!4596593))

(assert (= (and d!1446859 (not c!787186)) b!4596589))

(assert (= (and b!4596589 c!787184) b!4596590))

(assert (= (and b!4596589 (not c!787184)) b!4596597))

(assert (= (or b!4596593 b!4596589) bm!320732))

(assert (= (and bm!320732 c!787185) b!4596595))

(assert (= (and bm!320732 (not c!787185)) b!4596596))

(assert (= (and d!1446859 res!1922477) b!4596592))

(assert (= (and d!1446859 (not res!1922475)) b!4596591))

(assert (= (and b!4596591 res!1922476) b!4596594))

(declare-fun m!5421527 () Bool)

(assert (=> b!4596591 m!5421527))

(assert (=> b!4596591 m!5421527))

(declare-fun m!5421529 () Bool)

(assert (=> b!4596591 m!5421529))

(declare-fun m!5421531 () Bool)

(assert (=> d!1446859 m!5421531))

(declare-fun m!5421533 () Bool)

(assert (=> b!4596593 m!5421533))

(assert (=> b!4596593 m!5421527))

(assert (=> b!4596593 m!5421527))

(assert (=> b!4596593 m!5421529))

(declare-fun m!5421535 () Bool)

(assert (=> b!4596593 m!5421535))

(assert (=> b!4596592 m!5421141))

(declare-fun m!5421537 () Bool)

(assert (=> b!4596592 m!5421537))

(assert (=> b!4596592 m!5421537))

(declare-fun m!5421539 () Bool)

(assert (=> b!4596592 m!5421539))

(declare-fun m!5421541 () Bool)

(assert (=> b!4596595 m!5421541))

(declare-fun m!5421543 () Bool)

(assert (=> bm!320732 m!5421543))

(assert (=> b!4596596 m!5421141))

(assert (=> b!4596596 m!5421537))

(assert (=> b!4596594 m!5421141))

(assert (=> b!4596594 m!5421537))

(assert (=> b!4596594 m!5421537))

(assert (=> b!4596594 m!5421539))

(assert (=> b!4596590 m!5421531))

(declare-fun m!5421545 () Bool)

(assert (=> b!4596590 m!5421545))

(assert (=> b!4596362 d!1446859))

(declare-fun bs!1009529 () Bool)

(declare-fun d!1446879 () Bool)

(assert (= bs!1009529 (and d!1446879 d!1446835)))

(declare-fun lambda!185862 () Int)

(assert (=> bs!1009529 (= lambda!185862 lambda!185850)))

(declare-fun bs!1009530 () Bool)

(assert (= bs!1009530 (and d!1446879 d!1446821)))

(assert (=> bs!1009530 (not (= lambda!185862 lambda!185843))))

(declare-fun bs!1009531 () Bool)

(assert (= bs!1009531 (and d!1446879 d!1446771)))

(assert (=> bs!1009531 (= lambda!185862 lambda!185827)))

(declare-fun bs!1009532 () Bool)

(assert (= bs!1009532 (and d!1446879 d!1446825)))

(assert (=> bs!1009532 (= lambda!185862 lambda!185849)))

(declare-fun bs!1009533 () Bool)

(assert (= bs!1009533 (and d!1446879 d!1446813)))

(assert (=> bs!1009533 (not (= lambda!185862 lambda!185842))))

(declare-fun bs!1009534 () Bool)

(assert (= bs!1009534 (and d!1446879 start!458528)))

(assert (=> bs!1009534 (= lambda!185862 lambda!185824)))

(assert (=> d!1446879 (contains!14011 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615))) key!3287)))

(declare-fun lt!1756799 () Unit!107861)

(declare-fun choose!30784 (ListLongMap!3275 K!12435 Hashable!5713) Unit!107861)

(assert (=> d!1446879 (= lt!1756799 (choose!30784 (ListLongMap!3276 lt!1756615) key!3287 hashF!1107))))

(assert (=> d!1446879 (forall!10590 (toList!4643 (ListLongMap!3276 lt!1756615)) lambda!185862)))

(assert (=> d!1446879 (= (lemmaListContainsThenExtractedMapContains!248 (ListLongMap!3276 lt!1756615) key!3287 hashF!1107) lt!1756799)))

(declare-fun bs!1009535 () Bool)

(assert (= bs!1009535 d!1446879))

(declare-fun m!5421547 () Bool)

(assert (=> bs!1009535 m!5421547))

(assert (=> bs!1009535 m!5421547))

(declare-fun m!5421549 () Bool)

(assert (=> bs!1009535 m!5421549))

(declare-fun m!5421551 () Bool)

(assert (=> bs!1009535 m!5421551))

(declare-fun m!5421553 () Bool)

(assert (=> bs!1009535 m!5421553))

(assert (=> b!4596362 d!1446879))

(declare-fun d!1446881 () Bool)

(assert (=> d!1446881 (= (tail!7937 (toList!4643 lt!1756616)) (t!358187 (toList!4643 lt!1756616)))))

(assert (=> b!4596362 d!1446881))

(declare-fun bs!1009536 () Bool)

(declare-fun d!1446883 () Bool)

(assert (= bs!1009536 (and d!1446883 d!1446835)))

(declare-fun lambda!185863 () Int)

(assert (=> bs!1009536 (= lambda!185863 lambda!185850)))

(declare-fun bs!1009537 () Bool)

(assert (= bs!1009537 (and d!1446883 d!1446821)))

(assert (=> bs!1009537 (not (= lambda!185863 lambda!185843))))

(declare-fun bs!1009538 () Bool)

(assert (= bs!1009538 (and d!1446883 d!1446771)))

(assert (=> bs!1009538 (= lambda!185863 lambda!185827)))

(declare-fun bs!1009539 () Bool)

(assert (= bs!1009539 (and d!1446883 d!1446825)))

(assert (=> bs!1009539 (= lambda!185863 lambda!185849)))

(declare-fun bs!1009540 () Bool)

(assert (= bs!1009540 (and d!1446883 d!1446813)))

(assert (=> bs!1009540 (not (= lambda!185863 lambda!185842))))

(declare-fun bs!1009541 () Bool)

(assert (= bs!1009541 (and d!1446883 start!458528)))

(assert (=> bs!1009541 (= lambda!185863 lambda!185824)))

(declare-fun bs!1009542 () Bool)

(assert (= bs!1009542 (and d!1446883 d!1446879)))

(assert (=> bs!1009542 (= lambda!185863 lambda!185862)))

(declare-fun lt!1756800 () ListMap!3905)

(assert (=> d!1446883 (invariantList!1122 (toList!4644 lt!1756800))))

(declare-fun e!2867119 () ListMap!3905)

(assert (=> d!1446883 (= lt!1756800 e!2867119)))

(declare-fun c!787187 () Bool)

(assert (=> d!1446883 (= c!787187 ((_ is Cons!51069) lt!1756615))))

(assert (=> d!1446883 (forall!10590 lt!1756615 lambda!185863)))

(assert (=> d!1446883 (= (extractMap!1374 lt!1756615) lt!1756800)))

(declare-fun b!4596598 () Bool)

(assert (=> b!4596598 (= e!2867119 (addToMapMapFromBucket!812 (_2!29148 (h!57031 lt!1756615)) (extractMap!1374 (t!358187 lt!1756615))))))

(declare-fun b!4596599 () Bool)

(assert (=> b!4596599 (= e!2867119 (ListMap!3906 Nil!51068))))

(assert (= (and d!1446883 c!787187) b!4596598))

(assert (= (and d!1446883 (not c!787187)) b!4596599))

(declare-fun m!5421555 () Bool)

(assert (=> d!1446883 m!5421555))

(declare-fun m!5421557 () Bool)

(assert (=> d!1446883 m!5421557))

(declare-fun m!5421559 () Bool)

(assert (=> b!4596598 m!5421559))

(assert (=> b!4596598 m!5421559))

(declare-fun m!5421561 () Bool)

(assert (=> b!4596598 m!5421561))

(assert (=> b!4596362 d!1446883))

(declare-fun d!1446885 () Bool)

(assert (=> d!1446885 (eq!721 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 newBucket!178) Nil!51069)) (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287))))

(declare-fun lt!1756803 () Unit!107861)

(declare-fun choose!30785 ((_ BitVec 64) List!51192 List!51192 K!12435 Hashable!5713) Unit!107861)

(assert (=> d!1446885 (= lt!1756803 (choose!30785 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1446885 (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lm!1477))))))

(assert (=> d!1446885 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!80 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1756803)))

(declare-fun bs!1009543 () Bool)

(assert (= bs!1009543 d!1446885))

(declare-fun m!5421563 () Bool)

(assert (=> bs!1009543 m!5421563))

(assert (=> bs!1009543 m!5421135))

(declare-fun m!5421565 () Bool)

(assert (=> bs!1009543 m!5421565))

(declare-fun m!5421567 () Bool)

(assert (=> bs!1009543 m!5421567))

(assert (=> bs!1009543 m!5421565))

(assert (=> bs!1009543 m!5421137))

(declare-fun m!5421569 () Bool)

(assert (=> bs!1009543 m!5421569))

(assert (=> bs!1009543 m!5421135))

(assert (=> bs!1009543 m!5421137))

(assert (=> b!4596362 d!1446885))

(declare-fun d!1446887 () Bool)

(assert (=> d!1446887 true))

(assert (=> d!1446887 true))

(declare-fun lambda!185866 () Int)

(declare-fun forall!10592 (List!51192 Int) Bool)

(assert (=> d!1446887 (= (allKeysSameHash!1170 newBucket!178 hash!344 hashF!1107) (forall!10592 newBucket!178 lambda!185866))))

(declare-fun bs!1009544 () Bool)

(assert (= bs!1009544 d!1446887))

(declare-fun m!5421571 () Bool)

(assert (=> bs!1009544 m!5421571))

(assert (=> b!4596361 d!1446887))

(declare-fun d!1446889 () Bool)

(declare-fun res!1922484 () Bool)

(declare-fun e!2867128 () Bool)

(assert (=> d!1446889 (=> res!1922484 e!2867128)))

(declare-fun e!2867127 () Bool)

(assert (=> d!1446889 (= res!1922484 e!2867127)))

(declare-fun res!1922486 () Bool)

(assert (=> d!1446889 (=> (not res!1922486) (not e!2867127))))

(assert (=> d!1446889 (= res!1922486 ((_ is Cons!51069) lt!1756615))))

(assert (=> d!1446889 (= (containsKeyBiggerList!270 lt!1756615 key!3287) e!2867128)))

(declare-fun b!4596610 () Bool)

(assert (=> b!4596610 (= e!2867127 (containsKey!2146 (_2!29148 (h!57031 lt!1756615)) key!3287))))

(declare-fun b!4596611 () Bool)

(declare-fun e!2867126 () Bool)

(assert (=> b!4596611 (= e!2867128 e!2867126)))

(declare-fun res!1922485 () Bool)

(assert (=> b!4596611 (=> (not res!1922485) (not e!2867126))))

(assert (=> b!4596611 (= res!1922485 ((_ is Cons!51069) lt!1756615))))

(declare-fun b!4596612 () Bool)

(assert (=> b!4596612 (= e!2867126 (containsKeyBiggerList!270 (t!358187 lt!1756615) key!3287))))

(assert (= (and d!1446889 res!1922486) b!4596610))

(assert (= (and d!1446889 (not res!1922484)) b!4596611))

(assert (= (and b!4596611 res!1922485) b!4596612))

(declare-fun m!5421573 () Bool)

(assert (=> b!4596610 m!5421573))

(declare-fun m!5421575 () Bool)

(assert (=> b!4596612 m!5421575))

(assert (=> b!4596350 d!1446889))

(declare-fun b!4596613 () Bool)

(declare-fun e!2867134 () Unit!107861)

(declare-fun e!2867133 () Unit!107861)

(assert (=> b!4596613 (= e!2867134 e!2867133)))

(declare-fun c!787188 () Bool)

(declare-fun call!320738 () Bool)

(assert (=> b!4596613 (= c!787188 call!320738)))

(declare-fun b!4596614 () Bool)

(assert (=> b!4596614 false))

(declare-fun lt!1756811 () Unit!107861)

(declare-fun lt!1756804 () Unit!107861)

(assert (=> b!4596614 (= lt!1756811 lt!1756804)))

(assert (=> b!4596614 (containsKey!2150 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287)))

(assert (=> b!4596614 (= lt!1756804 (lemmaInGetKeysListThenContainsKey!570 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(declare-fun Unit!107875 () Unit!107861)

(assert (=> b!4596614 (= e!2867133 Unit!107875)))

(declare-fun b!4596615 () Bool)

(declare-fun e!2867130 () Bool)

(declare-fun e!2867129 () Bool)

(assert (=> b!4596615 (= e!2867130 e!2867129)))

(declare-fun res!1922488 () Bool)

(assert (=> b!4596615 (=> (not res!1922488) (not e!2867129))))

(assert (=> b!4596615 (= res!1922488 (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287)))))

(declare-fun b!4596616 () Bool)

(declare-fun e!2867131 () Bool)

(assert (=> b!4596616 (= e!2867131 (not (contains!14013 (keys!17878 (extractMap!1374 (toList!4643 lm!1477))) key!3287)))))

(declare-fun b!4596617 () Bool)

(declare-fun lt!1756808 () Unit!107861)

(assert (=> b!4596617 (= e!2867134 lt!1756808)))

(declare-fun lt!1756806 () Unit!107861)

(assert (=> b!4596617 (= lt!1756806 (lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(assert (=> b!4596617 (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(declare-fun lt!1756810 () Unit!107861)

(assert (=> b!4596617 (= lt!1756810 lt!1756806)))

(assert (=> b!4596617 (= lt!1756808 (lemmaInListThenGetKeysListContains!567 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(assert (=> b!4596617 call!320738))

(declare-fun bm!320733 () Bool)

(declare-fun e!2867132 () List!51195)

(assert (=> bm!320733 (= call!320738 (contains!14013 e!2867132 key!3287))))

(declare-fun c!787189 () Bool)

(declare-fun c!787190 () Bool)

(assert (=> bm!320733 (= c!787189 c!787190)))

(declare-fun b!4596618 () Bool)

(assert (=> b!4596618 (= e!2867129 (contains!14013 (keys!17878 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(declare-fun b!4596619 () Bool)

(assert (=> b!4596619 (= e!2867132 (getKeysList!571 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))))

(declare-fun b!4596620 () Bool)

(assert (=> b!4596620 (= e!2867132 (keys!17878 (extractMap!1374 (toList!4643 lm!1477))))))

(declare-fun b!4596621 () Bool)

(declare-fun Unit!107876 () Unit!107861)

(assert (=> b!4596621 (= e!2867133 Unit!107876)))

(declare-fun d!1446891 () Bool)

(assert (=> d!1446891 e!2867130))

(declare-fun res!1922487 () Bool)

(assert (=> d!1446891 (=> res!1922487 e!2867130)))

(assert (=> d!1446891 (= res!1922487 e!2867131)))

(declare-fun res!1922489 () Bool)

(assert (=> d!1446891 (=> (not res!1922489) (not e!2867131))))

(declare-fun lt!1756805 () Bool)

(assert (=> d!1446891 (= res!1922489 (not lt!1756805))))

(declare-fun lt!1756809 () Bool)

(assert (=> d!1446891 (= lt!1756805 lt!1756809)))

(declare-fun lt!1756807 () Unit!107861)

(assert (=> d!1446891 (= lt!1756807 e!2867134)))

(assert (=> d!1446891 (= c!787190 lt!1756809)))

(assert (=> d!1446891 (= lt!1756809 (containsKey!2150 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(assert (=> d!1446891 (= (contains!14011 (extractMap!1374 (toList!4643 lm!1477)) key!3287) lt!1756805)))

(assert (= (and d!1446891 c!787190) b!4596617))

(assert (= (and d!1446891 (not c!787190)) b!4596613))

(assert (= (and b!4596613 c!787188) b!4596614))

(assert (= (and b!4596613 (not c!787188)) b!4596621))

(assert (= (or b!4596617 b!4596613) bm!320733))

(assert (= (and bm!320733 c!787189) b!4596619))

(assert (= (and bm!320733 (not c!787189)) b!4596620))

(assert (= (and d!1446891 res!1922489) b!4596616))

(assert (= (and d!1446891 (not res!1922487)) b!4596615))

(assert (= (and b!4596615 res!1922488) b!4596618))

(declare-fun m!5421577 () Bool)

(assert (=> b!4596615 m!5421577))

(assert (=> b!4596615 m!5421577))

(declare-fun m!5421579 () Bool)

(assert (=> b!4596615 m!5421579))

(declare-fun m!5421581 () Bool)

(assert (=> d!1446891 m!5421581))

(declare-fun m!5421583 () Bool)

(assert (=> b!4596617 m!5421583))

(assert (=> b!4596617 m!5421577))

(assert (=> b!4596617 m!5421577))

(assert (=> b!4596617 m!5421579))

(declare-fun m!5421585 () Bool)

(assert (=> b!4596617 m!5421585))

(assert (=> b!4596616 m!5421157))

(declare-fun m!5421587 () Bool)

(assert (=> b!4596616 m!5421587))

(assert (=> b!4596616 m!5421587))

(declare-fun m!5421589 () Bool)

(assert (=> b!4596616 m!5421589))

(declare-fun m!5421591 () Bool)

(assert (=> b!4596619 m!5421591))

(declare-fun m!5421593 () Bool)

(assert (=> bm!320733 m!5421593))

(assert (=> b!4596620 m!5421157))

(assert (=> b!4596620 m!5421587))

(assert (=> b!4596618 m!5421157))

(assert (=> b!4596618 m!5421587))

(assert (=> b!4596618 m!5421587))

(assert (=> b!4596618 m!5421589))

(assert (=> b!4596614 m!5421581))

(declare-fun m!5421595 () Bool)

(assert (=> b!4596614 m!5421595))

(assert (=> b!4596360 d!1446891))

(declare-fun bs!1009545 () Bool)

(declare-fun d!1446893 () Bool)

(assert (= bs!1009545 (and d!1446893 d!1446835)))

(declare-fun lambda!185867 () Int)

(assert (=> bs!1009545 (= lambda!185867 lambda!185850)))

(declare-fun bs!1009546 () Bool)

(assert (= bs!1009546 (and d!1446893 d!1446821)))

(assert (=> bs!1009546 (not (= lambda!185867 lambda!185843))))

(declare-fun bs!1009547 () Bool)

(assert (= bs!1009547 (and d!1446893 d!1446771)))

(assert (=> bs!1009547 (= lambda!185867 lambda!185827)))

(declare-fun bs!1009548 () Bool)

(assert (= bs!1009548 (and d!1446893 d!1446825)))

(assert (=> bs!1009548 (= lambda!185867 lambda!185849)))

(declare-fun bs!1009549 () Bool)

(assert (= bs!1009549 (and d!1446893 start!458528)))

(assert (=> bs!1009549 (= lambda!185867 lambda!185824)))

(declare-fun bs!1009550 () Bool)

(assert (= bs!1009550 (and d!1446893 d!1446879)))

(assert (=> bs!1009550 (= lambda!185867 lambda!185862)))

(declare-fun bs!1009551 () Bool)

(assert (= bs!1009551 (and d!1446893 d!1446883)))

(assert (=> bs!1009551 (= lambda!185867 lambda!185863)))

(declare-fun bs!1009552 () Bool)

(assert (= bs!1009552 (and d!1446893 d!1446813)))

(assert (=> bs!1009552 (not (= lambda!185867 lambda!185842))))

(declare-fun lt!1756812 () ListMap!3905)

(assert (=> d!1446893 (invariantList!1122 (toList!4644 lt!1756812))))

(declare-fun e!2867135 () ListMap!3905)

(assert (=> d!1446893 (= lt!1756812 e!2867135)))

(declare-fun c!787191 () Bool)

(assert (=> d!1446893 (= c!787191 ((_ is Cons!51069) (toList!4643 lm!1477)))))

(assert (=> d!1446893 (forall!10590 (toList!4643 lm!1477) lambda!185867)))

(assert (=> d!1446893 (= (extractMap!1374 (toList!4643 lm!1477)) lt!1756812)))

(declare-fun b!4596622 () Bool)

(assert (=> b!4596622 (= e!2867135 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (toList!4643 lm!1477)))))))

(declare-fun b!4596623 () Bool)

(assert (=> b!4596623 (= e!2867135 (ListMap!3906 Nil!51068))))

(assert (= (and d!1446893 c!787191) b!4596622))

(assert (= (and d!1446893 (not c!787191)) b!4596623))

(declare-fun m!5421597 () Bool)

(assert (=> d!1446893 m!5421597))

(declare-fun m!5421599 () Bool)

(assert (=> d!1446893 m!5421599))

(assert (=> b!4596622 m!5421167))

(assert (=> b!4596622 m!5421167))

(declare-fun m!5421601 () Bool)

(assert (=> b!4596622 m!5421601))

(assert (=> b!4596360 d!1446893))

(declare-fun bs!1009553 () Bool)

(declare-fun d!1446895 () Bool)

(assert (= bs!1009553 (and d!1446895 d!1446835)))

(declare-fun lambda!185868 () Int)

(assert (=> bs!1009553 (= lambda!185868 lambda!185850)))

(declare-fun bs!1009554 () Bool)

(assert (= bs!1009554 (and d!1446895 d!1446821)))

(assert (=> bs!1009554 (not (= lambda!185868 lambda!185843))))

(declare-fun bs!1009555 () Bool)

(assert (= bs!1009555 (and d!1446895 d!1446771)))

(assert (=> bs!1009555 (= lambda!185868 lambda!185827)))

(declare-fun bs!1009556 () Bool)

(assert (= bs!1009556 (and d!1446895 d!1446825)))

(assert (=> bs!1009556 (= lambda!185868 lambda!185849)))

(declare-fun bs!1009557 () Bool)

(assert (= bs!1009557 (and d!1446895 d!1446893)))

(assert (=> bs!1009557 (= lambda!185868 lambda!185867)))

(declare-fun bs!1009558 () Bool)

(assert (= bs!1009558 (and d!1446895 start!458528)))

(assert (=> bs!1009558 (= lambda!185868 lambda!185824)))

(declare-fun bs!1009559 () Bool)

(assert (= bs!1009559 (and d!1446895 d!1446879)))

(assert (=> bs!1009559 (= lambda!185868 lambda!185862)))

(declare-fun bs!1009560 () Bool)

(assert (= bs!1009560 (and d!1446895 d!1446883)))

(assert (=> bs!1009560 (= lambda!185868 lambda!185863)))

(declare-fun bs!1009561 () Bool)

(assert (= bs!1009561 (and d!1446895 d!1446813)))

(assert (=> bs!1009561 (not (= lambda!185868 lambda!185842))))

(declare-fun lt!1756813 () ListMap!3905)

(assert (=> d!1446895 (invariantList!1122 (toList!4644 lt!1756813))))

(declare-fun e!2867136 () ListMap!3905)

(assert (=> d!1446895 (= lt!1756813 e!2867136)))

(declare-fun c!787192 () Bool)

(assert (=> d!1446895 (= c!787192 ((_ is Cons!51069) (t!358187 (toList!4643 lm!1477))))))

(assert (=> d!1446895 (forall!10590 (t!358187 (toList!4643 lm!1477)) lambda!185868)))

(assert (=> d!1446895 (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1756813)))

(declare-fun b!4596624 () Bool)

(assert (=> b!4596624 (= e!2867136 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))))))

(declare-fun b!4596625 () Bool)

(assert (=> b!4596625 (= e!2867136 (ListMap!3906 Nil!51068))))

(assert (= (and d!1446895 c!787192) b!4596624))

(assert (= (and d!1446895 (not c!787192)) b!4596625))

(declare-fun m!5421603 () Bool)

(assert (=> d!1446895 m!5421603))

(declare-fun m!5421605 () Bool)

(assert (=> d!1446895 m!5421605))

(declare-fun m!5421607 () Bool)

(assert (=> b!4596624 m!5421607))

(assert (=> b!4596624 m!5421607))

(declare-fun m!5421609 () Bool)

(assert (=> b!4596624 m!5421609))

(assert (=> b!4596348 d!1446895))

(declare-fun bs!1009562 () Bool)

(declare-fun d!1446897 () Bool)

(assert (= bs!1009562 (and d!1446897 d!1446835)))

(declare-fun lambda!185869 () Int)

(assert (=> bs!1009562 (= lambda!185869 lambda!185850)))

(declare-fun bs!1009563 () Bool)

(assert (= bs!1009563 (and d!1446897 d!1446771)))

(assert (=> bs!1009563 (= lambda!185869 lambda!185827)))

(declare-fun bs!1009564 () Bool)

(assert (= bs!1009564 (and d!1446897 d!1446825)))

(assert (=> bs!1009564 (= lambda!185869 lambda!185849)))

(declare-fun bs!1009565 () Bool)

(assert (= bs!1009565 (and d!1446897 d!1446893)))

(assert (=> bs!1009565 (= lambda!185869 lambda!185867)))

(declare-fun bs!1009566 () Bool)

(assert (= bs!1009566 (and d!1446897 start!458528)))

(assert (=> bs!1009566 (= lambda!185869 lambda!185824)))

(declare-fun bs!1009567 () Bool)

(assert (= bs!1009567 (and d!1446897 d!1446879)))

(assert (=> bs!1009567 (= lambda!185869 lambda!185862)))

(declare-fun bs!1009568 () Bool)

(assert (= bs!1009568 (and d!1446897 d!1446895)))

(assert (=> bs!1009568 (= lambda!185869 lambda!185868)))

(declare-fun bs!1009569 () Bool)

(assert (= bs!1009569 (and d!1446897 d!1446821)))

(assert (=> bs!1009569 (not (= lambda!185869 lambda!185843))))

(declare-fun bs!1009570 () Bool)

(assert (= bs!1009570 (and d!1446897 d!1446883)))

(assert (=> bs!1009570 (= lambda!185869 lambda!185863)))

(declare-fun bs!1009571 () Bool)

(assert (= bs!1009571 (and d!1446897 d!1446813)))

(assert (=> bs!1009571 (not (= lambda!185869 lambda!185842))))

(declare-fun lt!1756814 () ListMap!3905)

(assert (=> d!1446897 (invariantList!1122 (toList!4644 lt!1756814))))

(declare-fun e!2867137 () ListMap!3905)

(assert (=> d!1446897 (= lt!1756814 e!2867137)))

(declare-fun c!787193 () Bool)

(assert (=> d!1446897 (= c!787193 ((_ is Cons!51069) (toList!4643 lt!1756611)))))

(assert (=> d!1446897 (forall!10590 (toList!4643 lt!1756611) lambda!185869)))

(assert (=> d!1446897 (= (extractMap!1374 (toList!4643 lt!1756611)) lt!1756814)))

(declare-fun b!4596626 () Bool)

(assert (=> b!4596626 (= e!2867137 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (toList!4643 lt!1756611))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))))))

(declare-fun b!4596627 () Bool)

(assert (=> b!4596627 (= e!2867137 (ListMap!3906 Nil!51068))))

(assert (= (and d!1446897 c!787193) b!4596626))

(assert (= (and d!1446897 (not c!787193)) b!4596627))

(declare-fun m!5421611 () Bool)

(assert (=> d!1446897 m!5421611))

(declare-fun m!5421613 () Bool)

(assert (=> d!1446897 m!5421613))

(declare-fun m!5421615 () Bool)

(assert (=> b!4596626 m!5421615))

(assert (=> b!4596626 m!5421615))

(declare-fun m!5421617 () Bool)

(assert (=> b!4596626 m!5421617))

(assert (=> b!4596348 d!1446897))

(declare-fun d!1446899 () Bool)

(declare-fun res!1922494 () Bool)

(declare-fun e!2867142 () Bool)

(assert (=> d!1446899 (=> res!1922494 e!2867142)))

(assert (=> d!1446899 (= res!1922494 ((_ is Nil!51069) (toList!4643 lm!1477)))))

(assert (=> d!1446899 (= (forall!10590 (toList!4643 lm!1477) lambda!185824) e!2867142)))

(declare-fun b!4596632 () Bool)

(declare-fun e!2867143 () Bool)

(assert (=> b!4596632 (= e!2867142 e!2867143)))

(declare-fun res!1922495 () Bool)

(assert (=> b!4596632 (=> (not res!1922495) (not e!2867143))))

(assert (=> b!4596632 (= res!1922495 (dynLambda!21392 lambda!185824 (h!57031 (toList!4643 lm!1477))))))

(declare-fun b!4596633 () Bool)

(assert (=> b!4596633 (= e!2867143 (forall!10590 (t!358187 (toList!4643 lm!1477)) lambda!185824))))

(assert (= (and d!1446899 (not res!1922494)) b!4596632))

(assert (= (and b!4596632 res!1922495) b!4596633))

(declare-fun b_lambda!169179 () Bool)

(assert (=> (not b_lambda!169179) (not b!4596632)))

(declare-fun m!5421619 () Bool)

(assert (=> b!4596632 m!5421619))

(declare-fun m!5421621 () Bool)

(assert (=> b!4596633 m!5421621))

(assert (=> start!458528 d!1446899))

(declare-fun d!1446901 () Bool)

(assert (=> d!1446901 (= (inv!66619 lm!1477) (isStrictlySorted!538 (toList!4643 lm!1477)))))

(declare-fun bs!1009572 () Bool)

(assert (= bs!1009572 d!1446901))

(assert (=> bs!1009572 m!5421323))

(assert (=> start!458528 d!1446901))

(declare-fun b!4596634 () Bool)

(declare-fun e!2867149 () Unit!107861)

(declare-fun e!2867148 () Unit!107861)

(assert (=> b!4596634 (= e!2867149 e!2867148)))

(declare-fun c!787194 () Bool)

(declare-fun call!320739 () Bool)

(assert (=> b!4596634 (= c!787194 call!320739)))

(declare-fun b!4596635 () Bool)

(assert (=> b!4596635 false))

(declare-fun lt!1756822 () Unit!107861)

(declare-fun lt!1756815 () Unit!107861)

(assert (=> b!4596635 (= lt!1756822 lt!1756815)))

(assert (=> b!4596635 (containsKey!2150 (toList!4644 lt!1756613) key!3287)))

(assert (=> b!4596635 (= lt!1756815 (lemmaInGetKeysListThenContainsKey!570 (toList!4644 lt!1756613) key!3287))))

(declare-fun Unit!107877 () Unit!107861)

(assert (=> b!4596635 (= e!2867148 Unit!107877)))

(declare-fun b!4596636 () Bool)

(declare-fun e!2867145 () Bool)

(declare-fun e!2867144 () Bool)

(assert (=> b!4596636 (= e!2867145 e!2867144)))

(declare-fun res!1922497 () Bool)

(assert (=> b!4596636 (=> (not res!1922497) (not e!2867144))))

(assert (=> b!4596636 (= res!1922497 (isDefined!8655 (getValueByKey!1307 (toList!4644 lt!1756613) key!3287)))))

(declare-fun b!4596637 () Bool)

(declare-fun e!2867146 () Bool)

(assert (=> b!4596637 (= e!2867146 (not (contains!14013 (keys!17878 lt!1756613) key!3287)))))

(declare-fun b!4596638 () Bool)

(declare-fun lt!1756819 () Unit!107861)

(assert (=> b!4596638 (= e!2867149 lt!1756819)))

(declare-fun lt!1756817 () Unit!107861)

(assert (=> b!4596638 (= lt!1756817 (lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (toList!4644 lt!1756613) key!3287))))

(assert (=> b!4596638 (isDefined!8655 (getValueByKey!1307 (toList!4644 lt!1756613) key!3287))))

(declare-fun lt!1756821 () Unit!107861)

(assert (=> b!4596638 (= lt!1756821 lt!1756817)))

(assert (=> b!4596638 (= lt!1756819 (lemmaInListThenGetKeysListContains!567 (toList!4644 lt!1756613) key!3287))))

(assert (=> b!4596638 call!320739))

(declare-fun bm!320734 () Bool)

(declare-fun e!2867147 () List!51195)

(assert (=> bm!320734 (= call!320739 (contains!14013 e!2867147 key!3287))))

(declare-fun c!787195 () Bool)

(declare-fun c!787196 () Bool)

(assert (=> bm!320734 (= c!787195 c!787196)))

(declare-fun b!4596639 () Bool)

(assert (=> b!4596639 (= e!2867144 (contains!14013 (keys!17878 lt!1756613) key!3287))))

(declare-fun b!4596640 () Bool)

(assert (=> b!4596640 (= e!2867147 (getKeysList!571 (toList!4644 lt!1756613)))))

(declare-fun b!4596641 () Bool)

(assert (=> b!4596641 (= e!2867147 (keys!17878 lt!1756613))))

(declare-fun b!4596642 () Bool)

(declare-fun Unit!107878 () Unit!107861)

(assert (=> b!4596642 (= e!2867148 Unit!107878)))

(declare-fun d!1446903 () Bool)

(assert (=> d!1446903 e!2867145))

(declare-fun res!1922496 () Bool)

(assert (=> d!1446903 (=> res!1922496 e!2867145)))

(assert (=> d!1446903 (= res!1922496 e!2867146)))

(declare-fun res!1922498 () Bool)

(assert (=> d!1446903 (=> (not res!1922498) (not e!2867146))))

(declare-fun lt!1756816 () Bool)

(assert (=> d!1446903 (= res!1922498 (not lt!1756816))))

(declare-fun lt!1756820 () Bool)

(assert (=> d!1446903 (= lt!1756816 lt!1756820)))

(declare-fun lt!1756818 () Unit!107861)

(assert (=> d!1446903 (= lt!1756818 e!2867149)))

(assert (=> d!1446903 (= c!787196 lt!1756820)))

(assert (=> d!1446903 (= lt!1756820 (containsKey!2150 (toList!4644 lt!1756613) key!3287))))

(assert (=> d!1446903 (= (contains!14011 lt!1756613 key!3287) lt!1756816)))

(assert (= (and d!1446903 c!787196) b!4596638))

(assert (= (and d!1446903 (not c!787196)) b!4596634))

(assert (= (and b!4596634 c!787194) b!4596635))

(assert (= (and b!4596634 (not c!787194)) b!4596642))

(assert (= (or b!4596638 b!4596634) bm!320734))

(assert (= (and bm!320734 c!787195) b!4596640))

(assert (= (and bm!320734 (not c!787195)) b!4596641))

(assert (= (and d!1446903 res!1922498) b!4596637))

(assert (= (and d!1446903 (not res!1922496)) b!4596636))

(assert (= (and b!4596636 res!1922497) b!4596639))

(declare-fun m!5421623 () Bool)

(assert (=> b!4596636 m!5421623))

(assert (=> b!4596636 m!5421623))

(declare-fun m!5421625 () Bool)

(assert (=> b!4596636 m!5421625))

(declare-fun m!5421627 () Bool)

(assert (=> d!1446903 m!5421627))

(declare-fun m!5421629 () Bool)

(assert (=> b!4596638 m!5421629))

(assert (=> b!4596638 m!5421623))

(assert (=> b!4596638 m!5421623))

(assert (=> b!4596638 m!5421625))

(declare-fun m!5421631 () Bool)

(assert (=> b!4596638 m!5421631))

(declare-fun m!5421633 () Bool)

(assert (=> b!4596637 m!5421633))

(assert (=> b!4596637 m!5421633))

(declare-fun m!5421635 () Bool)

(assert (=> b!4596637 m!5421635))

(declare-fun m!5421637 () Bool)

(assert (=> b!4596640 m!5421637))

(declare-fun m!5421639 () Bool)

(assert (=> bm!320734 m!5421639))

(assert (=> b!4596641 m!5421633))

(assert (=> b!4596639 m!5421633))

(assert (=> b!4596639 m!5421633))

(assert (=> b!4596639 m!5421635))

(assert (=> b!4596635 m!5421627))

(declare-fun m!5421641 () Bool)

(assert (=> b!4596635 m!5421641))

(assert (=> b!4596358 d!1446903))

(declare-fun d!1446905 () Bool)

(declare-fun res!1922499 () Bool)

(declare-fun e!2867150 () Bool)

(assert (=> d!1446905 (=> res!1922499 e!2867150)))

(assert (=> d!1446905 (= res!1922499 ((_ is Nil!51069) (toList!4643 lt!1756611)))))

(assert (=> d!1446905 (= (forall!10590 (toList!4643 lt!1756611) lambda!185824) e!2867150)))

(declare-fun b!4596643 () Bool)

(declare-fun e!2867151 () Bool)

(assert (=> b!4596643 (= e!2867150 e!2867151)))

(declare-fun res!1922500 () Bool)

(assert (=> b!4596643 (=> (not res!1922500) (not e!2867151))))

(assert (=> b!4596643 (= res!1922500 (dynLambda!21392 lambda!185824 (h!57031 (toList!4643 lt!1756611))))))

(declare-fun b!4596644 () Bool)

(assert (=> b!4596644 (= e!2867151 (forall!10590 (t!358187 (toList!4643 lt!1756611)) lambda!185824))))

(assert (= (and d!1446905 (not res!1922499)) b!4596643))

(assert (= (and b!4596643 res!1922500) b!4596644))

(declare-fun b_lambda!169181 () Bool)

(assert (=> (not b_lambda!169181) (not b!4596643)))

(declare-fun m!5421643 () Bool)

(assert (=> b!4596643 m!5421643))

(declare-fun m!5421645 () Bool)

(assert (=> b!4596644 m!5421645))

(assert (=> b!4596347 d!1446905))

(declare-fun bs!1009573 () Bool)

(declare-fun d!1446907 () Bool)

(assert (= bs!1009573 (and d!1446907 d!1446835)))

(declare-fun lambda!185872 () Int)

(assert (=> bs!1009573 (= lambda!185872 lambda!185850)))

(declare-fun bs!1009574 () Bool)

(assert (= bs!1009574 (and d!1446907 d!1446771)))

(assert (=> bs!1009574 (= lambda!185872 lambda!185827)))

(declare-fun bs!1009575 () Bool)

(assert (= bs!1009575 (and d!1446907 d!1446825)))

(assert (=> bs!1009575 (= lambda!185872 lambda!185849)))

(declare-fun bs!1009576 () Bool)

(assert (= bs!1009576 (and d!1446907 d!1446893)))

(assert (=> bs!1009576 (= lambda!185872 lambda!185867)))

(declare-fun bs!1009577 () Bool)

(assert (= bs!1009577 (and d!1446907 start!458528)))

(assert (=> bs!1009577 (= lambda!185872 lambda!185824)))

(declare-fun bs!1009578 () Bool)

(assert (= bs!1009578 (and d!1446907 d!1446879)))

(assert (=> bs!1009578 (= lambda!185872 lambda!185862)))

(declare-fun bs!1009579 () Bool)

(assert (= bs!1009579 (and d!1446907 d!1446895)))

(assert (=> bs!1009579 (= lambda!185872 lambda!185868)))

(declare-fun bs!1009580 () Bool)

(assert (= bs!1009580 (and d!1446907 d!1446897)))

(assert (=> bs!1009580 (= lambda!185872 lambda!185869)))

(declare-fun bs!1009581 () Bool)

(assert (= bs!1009581 (and d!1446907 d!1446821)))

(assert (=> bs!1009581 (not (= lambda!185872 lambda!185843))))

(declare-fun bs!1009582 () Bool)

(assert (= bs!1009582 (and d!1446907 d!1446883)))

(assert (=> bs!1009582 (= lambda!185872 lambda!185863)))

(declare-fun bs!1009583 () Bool)

(assert (= bs!1009583 (and d!1446907 d!1446813)))

(assert (=> bs!1009583 (not (= lambda!185872 lambda!185842))))

(assert (=> d!1446907 (not (contains!14011 (extractMap!1374 (toList!4643 lm!1477)) key!3287))))

(declare-fun lt!1756825 () Unit!107861)

(declare-fun choose!30786 (ListLongMap!3275 K!12435 Hashable!5713) Unit!107861)

(assert (=> d!1446907 (= lt!1756825 (choose!30786 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1446907 (forall!10590 (toList!4643 lm!1477) lambda!185872)))

(assert (=> d!1446907 (= (lemmaNotInItsHashBucketThenNotInMap!284 lm!1477 key!3287 hashF!1107) lt!1756825)))

(declare-fun bs!1009584 () Bool)

(assert (= bs!1009584 d!1446907))

(assert (=> bs!1009584 m!5421157))

(assert (=> bs!1009584 m!5421157))

(assert (=> bs!1009584 m!5421159))

(declare-fun m!5421647 () Bool)

(assert (=> bs!1009584 m!5421647))

(declare-fun m!5421649 () Bool)

(assert (=> bs!1009584 m!5421649))

(assert (=> b!4596357 d!1446907))

(declare-fun d!1446909 () Bool)

(declare-fun hash!3207 (Hashable!5713 K!12435) (_ BitVec 64))

(assert (=> d!1446909 (= (hash!3203 hashF!1107 key!3287) (hash!3207 hashF!1107 key!3287))))

(declare-fun bs!1009585 () Bool)

(assert (= bs!1009585 d!1446909))

(declare-fun m!5421651 () Bool)

(assert (=> bs!1009585 m!5421651))

(assert (=> b!4596346 d!1446909))

(declare-fun d!1446911 () Bool)

(declare-fun res!1922505 () Bool)

(declare-fun e!2867156 () Bool)

(assert (=> d!1446911 (=> res!1922505 e!2867156)))

(assert (=> d!1446911 (= res!1922505 (not ((_ is Cons!51068) newBucket!178)))))

(assert (=> d!1446911 (= (noDuplicateKeys!1314 newBucket!178) e!2867156)))

(declare-fun b!4596649 () Bool)

(declare-fun e!2867157 () Bool)

(assert (=> b!4596649 (= e!2867156 e!2867157)))

(declare-fun res!1922506 () Bool)

(assert (=> b!4596649 (=> (not res!1922506) (not e!2867157))))

(assert (=> b!4596649 (= res!1922506 (not (containsKey!2146 (t!358186 newBucket!178) (_1!29147 (h!57030 newBucket!178)))))))

(declare-fun b!4596650 () Bool)

(assert (=> b!4596650 (= e!2867157 (noDuplicateKeys!1314 (t!358186 newBucket!178)))))

(assert (= (and d!1446911 (not res!1922505)) b!4596649))

(assert (= (and b!4596649 res!1922506) b!4596650))

(declare-fun m!5421653 () Bool)

(assert (=> b!4596649 m!5421653))

(declare-fun m!5421655 () Bool)

(assert (=> b!4596650 m!5421655))

(assert (=> b!4596356 d!1446911))

(declare-fun d!1446913 () Bool)

(declare-fun e!2867158 () Bool)

(assert (=> d!1446913 e!2867158))

(declare-fun res!1922507 () Bool)

(assert (=> d!1446913 (=> (not res!1922507) (not e!2867158))))

(declare-fun lt!1756828 () ListLongMap!3275)

(assert (=> d!1446913 (= res!1922507 (contains!14010 lt!1756828 (_1!29148 lt!1756618)))))

(declare-fun lt!1756826 () List!51193)

(assert (=> d!1446913 (= lt!1756828 (ListLongMap!3276 lt!1756826))))

(declare-fun lt!1756829 () Unit!107861)

(declare-fun lt!1756827 () Unit!107861)

(assert (=> d!1446913 (= lt!1756829 lt!1756827)))

(assert (=> d!1446913 (= (getValueByKey!1306 lt!1756826 (_1!29148 lt!1756618)) (Some!11385 (_2!29148 lt!1756618)))))

(assert (=> d!1446913 (= lt!1756827 (lemmaContainsTupThenGetReturnValue!794 lt!1756826 (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))

(assert (=> d!1446913 (= lt!1756826 (insertStrictlySorted!486 (toList!4643 lt!1756611) (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))

(assert (=> d!1446913 (= (+!1738 lt!1756611 lt!1756618) lt!1756828)))

(declare-fun b!4596651 () Bool)

(declare-fun res!1922508 () Bool)

(assert (=> b!4596651 (=> (not res!1922508) (not e!2867158))))

(assert (=> b!4596651 (= res!1922508 (= (getValueByKey!1306 (toList!4643 lt!1756828) (_1!29148 lt!1756618)) (Some!11385 (_2!29148 lt!1756618))))))

(declare-fun b!4596652 () Bool)

(assert (=> b!4596652 (= e!2867158 (contains!14009 (toList!4643 lt!1756828) lt!1756618))))

(assert (= (and d!1446913 res!1922507) b!4596651))

(assert (= (and b!4596651 res!1922508) b!4596652))

(declare-fun m!5421657 () Bool)

(assert (=> d!1446913 m!5421657))

(declare-fun m!5421659 () Bool)

(assert (=> d!1446913 m!5421659))

(declare-fun m!5421661 () Bool)

(assert (=> d!1446913 m!5421661))

(declare-fun m!5421663 () Bool)

(assert (=> d!1446913 m!5421663))

(declare-fun m!5421665 () Bool)

(assert (=> b!4596651 m!5421665))

(declare-fun m!5421667 () Bool)

(assert (=> b!4596652 m!5421667))

(assert (=> b!4596345 d!1446913))

(declare-fun d!1446915 () Bool)

(assert (=> d!1446915 (= (tail!7936 lm!1477) (ListLongMap!3276 (tail!7937 (toList!4643 lm!1477))))))

(declare-fun bs!1009586 () Bool)

(assert (= bs!1009586 d!1446915))

(declare-fun m!5421669 () Bool)

(assert (=> bs!1009586 m!5421669))

(assert (=> b!4596345 d!1446915))

(declare-fun b!4596657 () Bool)

(declare-fun e!2867161 () Bool)

(declare-fun tp!1340381 () Bool)

(declare-fun tp!1340382 () Bool)

(assert (=> b!4596657 (= e!2867161 (and tp!1340381 tp!1340382))))

(assert (=> b!4596349 (= tp!1340366 e!2867161)))

(assert (= (and b!4596349 ((_ is Cons!51069) (toList!4643 lm!1477))) b!4596657))

(declare-fun e!2867164 () Bool)

(declare-fun b!4596662 () Bool)

(declare-fun tp!1340385 () Bool)

(assert (=> b!4596662 (= e!2867164 (and tp_is_empty!28549 tp_is_empty!28551 tp!1340385))))

(assert (=> b!4596351 (= tp!1340367 e!2867164)))

(assert (= (and b!4596351 ((_ is Cons!51068) (t!358186 newBucket!178))) b!4596662))

(declare-fun b_lambda!169183 () Bool)

(assert (= b_lambda!169179 (or start!458528 b_lambda!169183)))

(declare-fun bs!1009587 () Bool)

(declare-fun d!1446917 () Bool)

(assert (= bs!1009587 (and d!1446917 start!458528)))

(assert (=> bs!1009587 (= (dynLambda!21392 lambda!185824 (h!57031 (toList!4643 lm!1477))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lm!1477)))))))

(assert (=> bs!1009587 m!5421567))

(assert (=> b!4596632 d!1446917))

(declare-fun b_lambda!169185 () Bool)

(assert (= b_lambda!169167 (or start!458528 b_lambda!169185)))

(declare-fun bs!1009588 () Bool)

(declare-fun d!1446919 () Bool)

(assert (= bs!1009588 (and d!1446919 start!458528)))

(assert (=> bs!1009588 (= (dynLambda!21392 lambda!185824 lt!1756614) (noDuplicateKeys!1314 (_2!29148 lt!1756614)))))

(declare-fun m!5421671 () Bool)

(assert (=> bs!1009588 m!5421671))

(assert (=> d!1446789 d!1446919))

(declare-fun b_lambda!169187 () Bool)

(assert (= b_lambda!169181 (or start!458528 b_lambda!169187)))

(declare-fun bs!1009589 () Bool)

(declare-fun d!1446921 () Bool)

(assert (= bs!1009589 (and d!1446921 start!458528)))

(assert (=> bs!1009589 (= (dynLambda!21392 lambda!185824 (h!57031 (toList!4643 lt!1756611))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lt!1756611)))))))

(declare-fun m!5421673 () Bool)

(assert (=> bs!1009589 m!5421673))

(assert (=> b!4596643 d!1446921))

(check-sat (not b!4596637) (not b_lambda!169185) (not d!1446785) (not b!4596416) (not bs!1009589) (not d!1446879) (not d!1446857) (not b!4596636) (not d!1446821) (not b!4596515) (not d!1446887) (not b!4596491) (not b!4596620) (not d!1446847) (not d!1446895) (not bs!1009588) (not d!1446813) (not b!4596638) (not b!4596380) (not b!4596617) (not b!4596414) (not b!4596640) (not d!1446789) (not d!1446883) (not b_lambda!169187) (not d!1446885) (not bm!320732) (not d!1446901) (not b_lambda!169183) (not b!4596423) (not bs!1009587) (not d!1446893) (not b!4596639) (not b!4596651) (not d!1446791) (not b!4596662) (not b!4596619) (not d!1446907) (not d!1446841) (not bm!320733) (not b!4596591) (not b!4596467) (not b!4596593) (not b!4596538) (not d!1446771) (not d!1446835) (not b!4596590) (not d!1446777) (not b!4596624) (not d!1446859) (not b!4596592) (not b!4596626) (not b!4596644) (not b!4596633) (not b!4596641) (not d!1446783) (not d!1446825) (not b!4596596) (not b!4596622) (not b!4596615) (not b!4596493) (not b!4596537) (not b!4596457) (not d!1446809) (not b!4596614) (not d!1446903) (not d!1446897) (not d!1446891) (not b!4596598) (not d!1446915) (not b!4596480) (not b!4596649) (not b!4596652) (not b!4596657) (not b!4596635) (not b!4596595) (not b!4596594) (not d!1446913) (not b!4596612) (not b!4596616) tp_is_empty!28551 (not b!4596610) (not b!4596618) (not b!4596650) (not d!1446909) tp_is_empty!28549 (not bm!320734))
(check-sat)
(get-model)

(declare-fun d!1446935 () Bool)

(declare-fun res!1922509 () Bool)

(declare-fun e!2867171 () Bool)

(assert (=> d!1446935 (=> res!1922509 e!2867171)))

(assert (=> d!1446935 (= res!1922509 ((_ is Nil!51069) (t!358187 (toList!4643 lm!1477))))))

(assert (=> d!1446935 (= (forall!10590 (t!358187 (toList!4643 lm!1477)) lambda!185824) e!2867171)))

(declare-fun b!4596675 () Bool)

(declare-fun e!2867172 () Bool)

(assert (=> b!4596675 (= e!2867171 e!2867172)))

(declare-fun res!1922510 () Bool)

(assert (=> b!4596675 (=> (not res!1922510) (not e!2867172))))

(assert (=> b!4596675 (= res!1922510 (dynLambda!21392 lambda!185824 (h!57031 (t!358187 (toList!4643 lm!1477)))))))

(declare-fun b!4596676 () Bool)

(assert (=> b!4596676 (= e!2867172 (forall!10590 (t!358187 (t!358187 (toList!4643 lm!1477))) lambda!185824))))

(assert (= (and d!1446935 (not res!1922509)) b!4596675))

(assert (= (and b!4596675 res!1922510) b!4596676))

(declare-fun b_lambda!169191 () Bool)

(assert (=> (not b_lambda!169191) (not b!4596675)))

(declare-fun m!5421687 () Bool)

(assert (=> b!4596675 m!5421687))

(declare-fun m!5421689 () Bool)

(assert (=> b!4596676 m!5421689))

(assert (=> b!4596633 d!1446935))

(declare-fun d!1446937 () Bool)

(declare-fun e!2867173 () Bool)

(assert (=> d!1446937 e!2867173))

(declare-fun res!1922511 () Bool)

(assert (=> d!1446937 (=> res!1922511 e!2867173)))

(declare-fun lt!1756839 () Bool)

(assert (=> d!1446937 (= res!1922511 (not lt!1756839))))

(declare-fun lt!1756837 () Bool)

(assert (=> d!1446937 (= lt!1756839 lt!1756837)))

(declare-fun lt!1756836 () Unit!107861)

(declare-fun e!2867174 () Unit!107861)

(assert (=> d!1446937 (= lt!1756836 e!2867174)))

(declare-fun c!787203 () Bool)

(assert (=> d!1446937 (= c!787203 lt!1756837)))

(assert (=> d!1446937 (= lt!1756837 (containsKey!2148 (toList!4643 lt!1756828) (_1!29148 lt!1756618)))))

(assert (=> d!1446937 (= (contains!14010 lt!1756828 (_1!29148 lt!1756618)) lt!1756839)))

(declare-fun b!4596677 () Bool)

(declare-fun lt!1756838 () Unit!107861)

(assert (=> b!4596677 (= e!2867174 lt!1756838)))

(assert (=> b!4596677 (= lt!1756838 (lemmaContainsKeyImpliesGetValueByKeyDefined!1209 (toList!4643 lt!1756828) (_1!29148 lt!1756618)))))

(assert (=> b!4596677 (isDefined!8653 (getValueByKey!1306 (toList!4643 lt!1756828) (_1!29148 lt!1756618)))))

(declare-fun b!4596678 () Bool)

(declare-fun Unit!107879 () Unit!107861)

(assert (=> b!4596678 (= e!2867174 Unit!107879)))

(declare-fun b!4596679 () Bool)

(assert (=> b!4596679 (= e!2867173 (isDefined!8653 (getValueByKey!1306 (toList!4643 lt!1756828) (_1!29148 lt!1756618))))))

(assert (= (and d!1446937 c!787203) b!4596677))

(assert (= (and d!1446937 (not c!787203)) b!4596678))

(assert (= (and d!1446937 (not res!1922511)) b!4596679))

(declare-fun m!5421691 () Bool)

(assert (=> d!1446937 m!5421691))

(declare-fun m!5421693 () Bool)

(assert (=> b!4596677 m!5421693))

(assert (=> b!4596677 m!5421665))

(assert (=> b!4596677 m!5421665))

(declare-fun m!5421695 () Bool)

(assert (=> b!4596677 m!5421695))

(assert (=> b!4596679 m!5421665))

(assert (=> b!4596679 m!5421665))

(assert (=> b!4596679 m!5421695))

(assert (=> d!1446913 d!1446937))

(declare-fun b!4596689 () Bool)

(declare-fun e!2867179 () Option!11386)

(declare-fun e!2867180 () Option!11386)

(assert (=> b!4596689 (= e!2867179 e!2867180)))

(declare-fun c!787209 () Bool)

(assert (=> b!4596689 (= c!787209 (and ((_ is Cons!51069) lt!1756826) (not (= (_1!29148 (h!57031 lt!1756826)) (_1!29148 lt!1756618)))))))

(declare-fun b!4596690 () Bool)

(assert (=> b!4596690 (= e!2867180 (getValueByKey!1306 (t!358187 lt!1756826) (_1!29148 lt!1756618)))))

(declare-fun b!4596688 () Bool)

(assert (=> b!4596688 (= e!2867179 (Some!11385 (_2!29148 (h!57031 lt!1756826))))))

(declare-fun d!1446939 () Bool)

(declare-fun c!787208 () Bool)

(assert (=> d!1446939 (= c!787208 (and ((_ is Cons!51069) lt!1756826) (= (_1!29148 (h!57031 lt!1756826)) (_1!29148 lt!1756618))))))

(assert (=> d!1446939 (= (getValueByKey!1306 lt!1756826 (_1!29148 lt!1756618)) e!2867179)))

(declare-fun b!4596691 () Bool)

(assert (=> b!4596691 (= e!2867180 None!11385)))

(assert (= (and d!1446939 c!787208) b!4596688))

(assert (= (and d!1446939 (not c!787208)) b!4596689))

(assert (= (and b!4596689 c!787209) b!4596690))

(assert (= (and b!4596689 (not c!787209)) b!4596691))

(declare-fun m!5421697 () Bool)

(assert (=> b!4596690 m!5421697))

(assert (=> d!1446913 d!1446939))

(declare-fun d!1446941 () Bool)

(assert (=> d!1446941 (= (getValueByKey!1306 lt!1756826 (_1!29148 lt!1756618)) (Some!11385 (_2!29148 lt!1756618)))))

(declare-fun lt!1756842 () Unit!107861)

(declare-fun choose!30789 (List!51193 (_ BitVec 64) List!51192) Unit!107861)

(assert (=> d!1446941 (= lt!1756842 (choose!30789 lt!1756826 (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))

(declare-fun e!2867183 () Bool)

(assert (=> d!1446941 e!2867183))

(declare-fun res!1922516 () Bool)

(assert (=> d!1446941 (=> (not res!1922516) (not e!2867183))))

(assert (=> d!1446941 (= res!1922516 (isStrictlySorted!538 lt!1756826))))

(assert (=> d!1446941 (= (lemmaContainsTupThenGetReturnValue!794 lt!1756826 (_1!29148 lt!1756618) (_2!29148 lt!1756618)) lt!1756842)))

(declare-fun b!4596696 () Bool)

(declare-fun res!1922517 () Bool)

(assert (=> b!4596696 (=> (not res!1922517) (not e!2867183))))

(assert (=> b!4596696 (= res!1922517 (containsKey!2148 lt!1756826 (_1!29148 lt!1756618)))))

(declare-fun b!4596697 () Bool)

(assert (=> b!4596697 (= e!2867183 (contains!14009 lt!1756826 (tuple2!51709 (_1!29148 lt!1756618) (_2!29148 lt!1756618))))))

(assert (= (and d!1446941 res!1922516) b!4596696))

(assert (= (and b!4596696 res!1922517) b!4596697))

(assert (=> d!1446941 m!5421659))

(declare-fun m!5421699 () Bool)

(assert (=> d!1446941 m!5421699))

(declare-fun m!5421701 () Bool)

(assert (=> d!1446941 m!5421701))

(declare-fun m!5421703 () Bool)

(assert (=> b!4596696 m!5421703))

(declare-fun m!5421705 () Bool)

(assert (=> b!4596697 m!5421705))

(assert (=> d!1446913 d!1446941))

(declare-fun b!4596722 () Bool)

(declare-fun e!2867201 () List!51193)

(assert (=> b!4596722 (= e!2867201 (insertStrictlySorted!486 (t!358187 (toList!4643 lt!1756611)) (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))

(declare-fun b!4596723 () Bool)

(declare-fun e!2867198 () Bool)

(declare-fun lt!1756846 () List!51193)

(assert (=> b!4596723 (= e!2867198 (contains!14009 lt!1756846 (tuple2!51709 (_1!29148 lt!1756618) (_2!29148 lt!1756618))))))

(declare-fun bm!320741 () Bool)

(declare-fun call!320747 () List!51193)

(declare-fun call!320746 () List!51193)

(assert (=> bm!320741 (= call!320747 call!320746)))

(declare-fun b!4596724 () Bool)

(declare-fun res!1922524 () Bool)

(assert (=> b!4596724 (=> (not res!1922524) (not e!2867198))))

(assert (=> b!4596724 (= res!1922524 (containsKey!2148 lt!1756846 (_1!29148 lt!1756618)))))

(declare-fun call!320748 () List!51193)

(declare-fun c!787222 () Bool)

(declare-fun bm!320742 () Bool)

(declare-fun $colon$colon!1035 (List!51193 tuple2!51708) List!51193)

(assert (=> bm!320742 (= call!320748 ($colon$colon!1035 e!2867201 (ite c!787222 (h!57031 (toList!4643 lt!1756611)) (tuple2!51709 (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))))

(declare-fun c!787221 () Bool)

(assert (=> bm!320742 (= c!787221 c!787222)))

(declare-fun b!4596725 () Bool)

(declare-fun e!2867200 () List!51193)

(assert (=> b!4596725 (= e!2867200 call!320748)))

(declare-fun b!4596726 () Bool)

(declare-fun e!2867197 () List!51193)

(assert (=> b!4596726 (= e!2867197 call!320746)))

(declare-fun bm!320743 () Bool)

(assert (=> bm!320743 (= call!320746 call!320748)))

(declare-fun b!4596727 () Bool)

(declare-fun e!2867199 () List!51193)

(assert (=> b!4596727 (= e!2867199 call!320747)))

(declare-fun b!4596728 () Bool)

(assert (=> b!4596728 (= e!2867199 call!320747)))

(declare-fun c!787219 () Bool)

(declare-fun c!787220 () Bool)

(declare-fun b!4596729 () Bool)

(assert (=> b!4596729 (= e!2867201 (ite c!787219 (t!358187 (toList!4643 lt!1756611)) (ite c!787220 (Cons!51069 (h!57031 (toList!4643 lt!1756611)) (t!358187 (toList!4643 lt!1756611))) Nil!51069)))))

(declare-fun d!1446943 () Bool)

(assert (=> d!1446943 e!2867198))

(declare-fun res!1922525 () Bool)

(assert (=> d!1446943 (=> (not res!1922525) (not e!2867198))))

(assert (=> d!1446943 (= res!1922525 (isStrictlySorted!538 lt!1756846))))

(assert (=> d!1446943 (= lt!1756846 e!2867200)))

(assert (=> d!1446943 (= c!787222 (and ((_ is Cons!51069) (toList!4643 lt!1756611)) (bvslt (_1!29148 (h!57031 (toList!4643 lt!1756611))) (_1!29148 lt!1756618))))))

(assert (=> d!1446943 (isStrictlySorted!538 (toList!4643 lt!1756611))))

(assert (=> d!1446943 (= (insertStrictlySorted!486 (toList!4643 lt!1756611) (_1!29148 lt!1756618) (_2!29148 lt!1756618)) lt!1756846)))

(declare-fun b!4596730 () Bool)

(assert (=> b!4596730 (= c!787220 (and ((_ is Cons!51069) (toList!4643 lt!1756611)) (bvsgt (_1!29148 (h!57031 (toList!4643 lt!1756611))) (_1!29148 lt!1756618))))))

(assert (=> b!4596730 (= e!2867197 e!2867199)))

(declare-fun b!4596731 () Bool)

(assert (=> b!4596731 (= e!2867200 e!2867197)))

(assert (=> b!4596731 (= c!787219 (and ((_ is Cons!51069) (toList!4643 lt!1756611)) (= (_1!29148 (h!57031 (toList!4643 lt!1756611))) (_1!29148 lt!1756618))))))

(assert (= (and d!1446943 c!787222) b!4596725))

(assert (= (and d!1446943 (not c!787222)) b!4596731))

(assert (= (and b!4596731 c!787219) b!4596726))

(assert (= (and b!4596731 (not c!787219)) b!4596730))

(assert (= (and b!4596730 c!787220) b!4596727))

(assert (= (and b!4596730 (not c!787220)) b!4596728))

(assert (= (or b!4596727 b!4596728) bm!320741))

(assert (= (or b!4596726 bm!320741) bm!320743))

(assert (= (or b!4596725 bm!320743) bm!320742))

(assert (= (and bm!320742 c!787221) b!4596722))

(assert (= (and bm!320742 (not c!787221)) b!4596729))

(assert (= (and d!1446943 res!1922525) b!4596724))

(assert (= (and b!4596724 res!1922524) b!4596723))

(declare-fun m!5421721 () Bool)

(assert (=> b!4596723 m!5421721))

(declare-fun m!5421723 () Bool)

(assert (=> bm!320742 m!5421723))

(declare-fun m!5421725 () Bool)

(assert (=> b!4596724 m!5421725))

(declare-fun m!5421727 () Bool)

(assert (=> d!1446943 m!5421727))

(declare-fun m!5421729 () Bool)

(assert (=> d!1446943 m!5421729))

(declare-fun m!5421731 () Bool)

(assert (=> b!4596722 m!5421731))

(assert (=> d!1446913 d!1446943))

(declare-fun d!1446953 () Bool)

(assert (=> d!1446953 (= (get!16874 (getValueByKey!1306 (toList!4643 lm!1477) hash!344)) (v!45355 (getValueByKey!1306 (toList!4643 lm!1477) hash!344)))))

(assert (=> d!1446783 d!1446953))

(declare-fun b!4596733 () Bool)

(declare-fun e!2867202 () Option!11386)

(declare-fun e!2867203 () Option!11386)

(assert (=> b!4596733 (= e!2867202 e!2867203)))

(declare-fun c!787224 () Bool)

(assert (=> b!4596733 (= c!787224 (and ((_ is Cons!51069) (toList!4643 lm!1477)) (not (= (_1!29148 (h!57031 (toList!4643 lm!1477))) hash!344))))))

(declare-fun b!4596734 () Bool)

(assert (=> b!4596734 (= e!2867203 (getValueByKey!1306 (t!358187 (toList!4643 lm!1477)) hash!344))))

(declare-fun b!4596732 () Bool)

(assert (=> b!4596732 (= e!2867202 (Some!11385 (_2!29148 (h!57031 (toList!4643 lm!1477)))))))

(declare-fun d!1446955 () Bool)

(declare-fun c!787223 () Bool)

(assert (=> d!1446955 (= c!787223 (and ((_ is Cons!51069) (toList!4643 lm!1477)) (= (_1!29148 (h!57031 (toList!4643 lm!1477))) hash!344)))))

(assert (=> d!1446955 (= (getValueByKey!1306 (toList!4643 lm!1477) hash!344) e!2867202)))

(declare-fun b!4596735 () Bool)

(assert (=> b!4596735 (= e!2867203 None!11385)))

(assert (= (and d!1446955 c!787223) b!4596732))

(assert (= (and d!1446955 (not c!787223)) b!4596733))

(assert (= (and b!4596733 c!787224) b!4596734))

(assert (= (and b!4596733 (not c!787224)) b!4596735))

(declare-fun m!5421733 () Bool)

(assert (=> b!4596734 m!5421733))

(assert (=> d!1446783 d!1446955))

(declare-fun d!1446957 () Bool)

(declare-fun c!787227 () Bool)

(assert (=> d!1446957 (= c!787227 ((_ is Nil!51069) (toList!4643 lm!1477)))))

(declare-fun e!2867206 () (InoxSet tuple2!51708))

(assert (=> d!1446957 (= (content!8639 (toList!4643 lm!1477)) e!2867206)))

(declare-fun b!4596740 () Bool)

(assert (=> b!4596740 (= e!2867206 ((as const (Array tuple2!51708 Bool)) false))))

(declare-fun b!4596741 () Bool)

(assert (=> b!4596741 (= e!2867206 ((_ map or) (store ((as const (Array tuple2!51708 Bool)) false) (h!57031 (toList!4643 lm!1477)) true) (content!8639 (t!358187 (toList!4643 lm!1477)))))))

(assert (= (and d!1446957 c!787227) b!4596740))

(assert (= (and d!1446957 (not c!787227)) b!4596741))

(declare-fun m!5421735 () Bool)

(assert (=> b!4596741 m!5421735))

(declare-fun m!5421737 () Bool)

(assert (=> b!4596741 m!5421737))

(assert (=> d!1446777 d!1446957))

(assert (=> b!4596423 d!1446777))

(declare-fun d!1446959 () Bool)

(declare-fun lt!1756849 () Bool)

(assert (=> d!1446959 (= lt!1756849 (select (content!8640 (keys!17878 lt!1756613)) key!3287))))

(declare-fun e!2867212 () Bool)

(assert (=> d!1446959 (= lt!1756849 e!2867212)))

(declare-fun res!1922530 () Bool)

(assert (=> d!1446959 (=> (not res!1922530) (not e!2867212))))

(assert (=> d!1446959 (= res!1922530 ((_ is Cons!51071) (keys!17878 lt!1756613)))))

(assert (=> d!1446959 (= (contains!14013 (keys!17878 lt!1756613) key!3287) lt!1756849)))

(declare-fun b!4596746 () Bool)

(declare-fun e!2867211 () Bool)

(assert (=> b!4596746 (= e!2867212 e!2867211)))

(declare-fun res!1922531 () Bool)

(assert (=> b!4596746 (=> res!1922531 e!2867211)))

(assert (=> b!4596746 (= res!1922531 (= (h!57035 (keys!17878 lt!1756613)) key!3287))))

(declare-fun b!4596747 () Bool)

(assert (=> b!4596747 (= e!2867211 (contains!14013 (t!358189 (keys!17878 lt!1756613)) key!3287))))

(assert (= (and d!1446959 res!1922530) b!4596746))

(assert (= (and b!4596746 (not res!1922531)) b!4596747))

(assert (=> d!1446959 m!5421633))

(declare-fun m!5421739 () Bool)

(assert (=> d!1446959 m!5421739))

(declare-fun m!5421741 () Bool)

(assert (=> d!1446959 m!5421741))

(declare-fun m!5421743 () Bool)

(assert (=> b!4596747 m!5421743))

(assert (=> b!4596639 d!1446959))

(declare-fun b!4596767 () Bool)

(assert (=> b!4596767 true))

(declare-fun d!1446961 () Bool)

(declare-fun e!2867221 () Bool)

(assert (=> d!1446961 e!2867221))

(declare-fun res!1922538 () Bool)

(assert (=> d!1446961 (=> (not res!1922538) (not e!2867221))))

(declare-fun lt!1756866 () List!51195)

(declare-fun noDuplicate!810 (List!51195) Bool)

(assert (=> d!1446961 (= res!1922538 (noDuplicate!810 lt!1756866))))

(assert (=> d!1446961 (= lt!1756866 (getKeysList!571 (toList!4644 lt!1756613)))))

(assert (=> d!1446961 (= (keys!17878 lt!1756613) lt!1756866)))

(declare-fun b!4596766 () Bool)

(declare-fun res!1922539 () Bool)

(assert (=> b!4596766 (=> (not res!1922539) (not e!2867221))))

(declare-fun length!476 (List!51195) Int)

(declare-fun length!477 (List!51192) Int)

(assert (=> b!4596766 (= res!1922539 (= (length!476 lt!1756866) (length!477 (toList!4644 lt!1756613))))))

(declare-fun res!1922540 () Bool)

(assert (=> b!4596767 (=> (not res!1922540) (not e!2867221))))

(declare-fun lambda!185882 () Int)

(declare-fun forall!10594 (List!51195 Int) Bool)

(assert (=> b!4596767 (= res!1922540 (forall!10594 lt!1756866 lambda!185882))))

(declare-fun lambda!185883 () Int)

(declare-fun b!4596768 () Bool)

(declare-fun map!11280 (List!51192 Int) List!51195)

(assert (=> b!4596768 (= e!2867221 (= (content!8640 lt!1756866) (content!8640 (map!11280 (toList!4644 lt!1756613) lambda!185883))))))

(assert (= (and d!1446961 res!1922538) b!4596766))

(assert (= (and b!4596766 res!1922539) b!4596767))

(assert (= (and b!4596767 res!1922540) b!4596768))

(declare-fun m!5421745 () Bool)

(assert (=> d!1446961 m!5421745))

(assert (=> d!1446961 m!5421637))

(declare-fun m!5421747 () Bool)

(assert (=> b!4596766 m!5421747))

(declare-fun m!5421749 () Bool)

(assert (=> b!4596766 m!5421749))

(declare-fun m!5421751 () Bool)

(assert (=> b!4596767 m!5421751))

(declare-fun m!5421753 () Bool)

(assert (=> b!4596768 m!5421753))

(declare-fun m!5421755 () Bool)

(assert (=> b!4596768 m!5421755))

(assert (=> b!4596768 m!5421755))

(declare-fun m!5421757 () Bool)

(assert (=> b!4596768 m!5421757))

(assert (=> b!4596639 d!1446961))

(declare-fun d!1446963 () Bool)

(assert (=> d!1446963 (isDefined!8655 (getValueByKey!1307 (toList!4644 lt!1756613) key!3287))))

(declare-fun lt!1756869 () Unit!107861)

(declare-fun choose!30790 (List!51192 K!12435) Unit!107861)

(assert (=> d!1446963 (= lt!1756869 (choose!30790 (toList!4644 lt!1756613) key!3287))))

(assert (=> d!1446963 (invariantList!1122 (toList!4644 lt!1756613))))

(assert (=> d!1446963 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (toList!4644 lt!1756613) key!3287) lt!1756869)))

(declare-fun bs!1009608 () Bool)

(assert (= bs!1009608 d!1446963))

(assert (=> bs!1009608 m!5421623))

(assert (=> bs!1009608 m!5421623))

(assert (=> bs!1009608 m!5421625))

(declare-fun m!5421759 () Bool)

(assert (=> bs!1009608 m!5421759))

(declare-fun m!5421761 () Bool)

(assert (=> bs!1009608 m!5421761))

(assert (=> b!4596638 d!1446963))

(declare-fun d!1446965 () Bool)

(declare-fun isEmpty!28860 (Option!11387) Bool)

(assert (=> d!1446965 (= (isDefined!8655 (getValueByKey!1307 (toList!4644 lt!1756613) key!3287)) (not (isEmpty!28860 (getValueByKey!1307 (toList!4644 lt!1756613) key!3287))))))

(declare-fun bs!1009609 () Bool)

(assert (= bs!1009609 d!1446965))

(assert (=> bs!1009609 m!5421623))

(declare-fun m!5421763 () Bool)

(assert (=> bs!1009609 m!5421763))

(assert (=> b!4596638 d!1446965))

(declare-fun b!4596796 () Bool)

(declare-fun e!2867232 () Option!11387)

(assert (=> b!4596796 (= e!2867232 (Some!11386 (_2!29147 (h!57030 (toList!4644 lt!1756613)))))))

(declare-fun b!4596799 () Bool)

(declare-fun e!2867233 () Option!11387)

(assert (=> b!4596799 (= e!2867233 None!11386)))

(declare-fun d!1446967 () Bool)

(declare-fun c!787241 () Bool)

(assert (=> d!1446967 (= c!787241 (and ((_ is Cons!51068) (toList!4644 lt!1756613)) (= (_1!29147 (h!57030 (toList!4644 lt!1756613))) key!3287)))))

(assert (=> d!1446967 (= (getValueByKey!1307 (toList!4644 lt!1756613) key!3287) e!2867232)))

(declare-fun b!4596797 () Bool)

(assert (=> b!4596797 (= e!2867232 e!2867233)))

(declare-fun c!787242 () Bool)

(assert (=> b!4596797 (= c!787242 (and ((_ is Cons!51068) (toList!4644 lt!1756613)) (not (= (_1!29147 (h!57030 (toList!4644 lt!1756613))) key!3287))))))

(declare-fun b!4596798 () Bool)

(assert (=> b!4596798 (= e!2867233 (getValueByKey!1307 (t!358186 (toList!4644 lt!1756613)) key!3287))))

(assert (= (and d!1446967 c!787241) b!4596796))

(assert (= (and d!1446967 (not c!787241)) b!4596797))

(assert (= (and b!4596797 c!787242) b!4596798))

(assert (= (and b!4596797 (not c!787242)) b!4596799))

(declare-fun m!5421765 () Bool)

(assert (=> b!4596798 m!5421765))

(assert (=> b!4596638 d!1446967))

(declare-fun d!1446969 () Bool)

(assert (=> d!1446969 (contains!14013 (getKeysList!571 (toList!4644 lt!1756613)) key!3287)))

(declare-fun lt!1756879 () Unit!107861)

(declare-fun choose!30791 (List!51192 K!12435) Unit!107861)

(assert (=> d!1446969 (= lt!1756879 (choose!30791 (toList!4644 lt!1756613) key!3287))))

(assert (=> d!1446969 (invariantList!1122 (toList!4644 lt!1756613))))

(assert (=> d!1446969 (= (lemmaInListThenGetKeysListContains!567 (toList!4644 lt!1756613) key!3287) lt!1756879)))

(declare-fun bs!1009613 () Bool)

(assert (= bs!1009613 d!1446969))

(assert (=> bs!1009613 m!5421637))

(assert (=> bs!1009613 m!5421637))

(declare-fun m!5421795 () Bool)

(assert (=> bs!1009613 m!5421795))

(declare-fun m!5421797 () Bool)

(assert (=> bs!1009613 m!5421797))

(assert (=> bs!1009613 m!5421761))

(assert (=> b!4596638 d!1446969))

(declare-fun bs!1009618 () Bool)

(declare-fun b!4596958 () Bool)

(assert (= bs!1009618 (and b!4596958 d!1446887)))

(declare-fun lambda!185920 () Int)

(assert (=> bs!1009618 (not (= lambda!185920 lambda!185866))))

(assert (=> b!4596958 true))

(declare-fun bs!1009619 () Bool)

(declare-fun b!4596956 () Bool)

(assert (= bs!1009619 (and b!4596956 d!1446887)))

(declare-fun lambda!185921 () Int)

(assert (=> bs!1009619 (not (= lambda!185921 lambda!185866))))

(declare-fun bs!1009620 () Bool)

(assert (= bs!1009620 (and b!4596956 b!4596958)))

(assert (=> bs!1009620 (= lambda!185921 lambda!185920)))

(assert (=> b!4596956 true))

(declare-fun lambda!185922 () Int)

(assert (=> bs!1009619 (not (= lambda!185922 lambda!185866))))

(declare-fun lt!1757022 () ListMap!3905)

(assert (=> bs!1009620 (= (= lt!1757022 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185922 lambda!185920))))

(assert (=> b!4596956 (= (= lt!1757022 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185922 lambda!185921))))

(assert (=> b!4596956 true))

(declare-fun bs!1009621 () Bool)

(declare-fun d!1446973 () Bool)

(assert (= bs!1009621 (and d!1446973 d!1446887)))

(declare-fun lambda!185923 () Int)

(assert (=> bs!1009621 (not (= lambda!185923 lambda!185866))))

(declare-fun bs!1009622 () Bool)

(assert (= bs!1009622 (and d!1446973 b!4596958)))

(declare-fun lt!1757013 () ListMap!3905)

(assert (=> bs!1009622 (= (= lt!1757013 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185923 lambda!185920))))

(declare-fun bs!1009623 () Bool)

(assert (= bs!1009623 (and d!1446973 b!4596956)))

(assert (=> bs!1009623 (= (= lt!1757013 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185923 lambda!185921))))

(assert (=> bs!1009623 (= (= lt!1757013 lt!1757022) (= lambda!185923 lambda!185922))))

(assert (=> d!1446973 true))

(declare-fun b!4596954 () Bool)

(declare-fun e!2867325 () Bool)

(assert (=> b!4596954 (= e!2867325 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) lambda!185922))))

(declare-fun bm!320778 () Bool)

(declare-fun call!320784 () Unit!107861)

(declare-fun lemmaContainsAllItsOwnKeys!433 (ListMap!3905) Unit!107861)

(assert (=> bm!320778 (= call!320784 (lemmaContainsAllItsOwnKeys!433 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))))))

(declare-fun b!4596955 () Bool)

(declare-fun res!1922600 () Bool)

(declare-fun e!2867326 () Bool)

(assert (=> b!4596955 (=> (not res!1922600) (not e!2867326))))

(assert (=> b!4596955 (= res!1922600 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) lambda!185923))))

(declare-fun bm!320779 () Bool)

(declare-fun c!787295 () Bool)

(declare-fun call!320783 () Bool)

(assert (=> bm!320779 (= call!320783 (forall!10592 (ite c!787295 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (_2!29148 (h!57031 (toList!4643 lt!1756611)))) (ite c!787295 lambda!185920 lambda!185922)))))

(declare-fun e!2867324 () ListMap!3905)

(assert (=> b!4596956 (= e!2867324 lt!1757022)))

(declare-fun lt!1757019 () ListMap!3905)

(declare-fun +!1739 (ListMap!3905 tuple2!51706) ListMap!3905)

(assert (=> b!4596956 (= lt!1757019 (+!1739 (extractMap!1374 (t!358187 (toList!4643 lt!1756611))) (h!57030 (_2!29148 (h!57031 (toList!4643 lt!1756611))))))))

(assert (=> b!4596956 (= lt!1757022 (addToMapMapFromBucket!812 (t!358186 (_2!29148 (h!57031 (toList!4643 lt!1756611)))) (+!1739 (extractMap!1374 (t!358187 (toList!4643 lt!1756611))) (h!57030 (_2!29148 (h!57031 (toList!4643 lt!1756611)))))))))

(declare-fun lt!1757021 () Unit!107861)

(assert (=> b!4596956 (= lt!1757021 call!320784)))

(assert (=> b!4596956 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) lambda!185921)))

(declare-fun lt!1757010 () Unit!107861)

(assert (=> b!4596956 (= lt!1757010 lt!1757021)))

(assert (=> b!4596956 (forall!10592 (toList!4644 lt!1757019) lambda!185922)))

(declare-fun lt!1757008 () Unit!107861)

(declare-fun Unit!107885 () Unit!107861)

(assert (=> b!4596956 (= lt!1757008 Unit!107885)))

(assert (=> b!4596956 (forall!10592 (t!358186 (_2!29148 (h!57031 (toList!4643 lt!1756611)))) lambda!185922)))

(declare-fun lt!1757007 () Unit!107861)

(declare-fun Unit!107886 () Unit!107861)

(assert (=> b!4596956 (= lt!1757007 Unit!107886)))

(declare-fun lt!1757004 () Unit!107861)

(declare-fun Unit!107887 () Unit!107861)

(assert (=> b!4596956 (= lt!1757004 Unit!107887)))

(declare-fun lt!1757023 () Unit!107861)

(declare-fun forallContained!2845 (List!51192 Int tuple2!51706) Unit!107861)

(assert (=> b!4596956 (= lt!1757023 (forallContained!2845 (toList!4644 lt!1757019) lambda!185922 (h!57030 (_2!29148 (h!57031 (toList!4643 lt!1756611))))))))

(assert (=> b!4596956 (contains!14011 lt!1757019 (_1!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lt!1756611))))))))

(declare-fun lt!1757016 () Unit!107861)

(declare-fun Unit!107890 () Unit!107861)

(assert (=> b!4596956 (= lt!1757016 Unit!107890)))

(assert (=> b!4596956 (contains!14011 lt!1757022 (_1!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lt!1756611))))))))

(declare-fun lt!1757020 () Unit!107861)

(declare-fun Unit!107891 () Unit!107861)

(assert (=> b!4596956 (= lt!1757020 Unit!107891)))

(assert (=> b!4596956 call!320783))

(declare-fun lt!1757003 () Unit!107861)

(declare-fun Unit!107892 () Unit!107861)

(assert (=> b!4596956 (= lt!1757003 Unit!107892)))

(assert (=> b!4596956 (forall!10592 (toList!4644 lt!1757019) lambda!185922)))

(declare-fun lt!1757012 () Unit!107861)

(declare-fun Unit!107893 () Unit!107861)

(assert (=> b!4596956 (= lt!1757012 Unit!107893)))

(declare-fun lt!1757017 () Unit!107861)

(declare-fun Unit!107894 () Unit!107861)

(assert (=> b!4596956 (= lt!1757017 Unit!107894)))

(declare-fun lt!1757015 () Unit!107861)

(declare-fun addForallContainsKeyThenBeforeAdding!433 (ListMap!3905 ListMap!3905 K!12435 V!12681) Unit!107861)

(assert (=> b!4596956 (= lt!1757015 (addForallContainsKeyThenBeforeAdding!433 (extractMap!1374 (t!358187 (toList!4643 lt!1756611))) lt!1757022 (_1!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lt!1756611))))) (_2!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lt!1756611)))))))))

(assert (=> b!4596956 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) lambda!185922)))

(declare-fun lt!1757009 () Unit!107861)

(assert (=> b!4596956 (= lt!1757009 lt!1757015)))

(assert (=> b!4596956 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) lambda!185922)))

(declare-fun lt!1757014 () Unit!107861)

(declare-fun Unit!107895 () Unit!107861)

(assert (=> b!4596956 (= lt!1757014 Unit!107895)))

(declare-fun res!1922602 () Bool)

(declare-fun call!320785 () Bool)

(assert (=> b!4596956 (= res!1922602 call!320785)))

(assert (=> b!4596956 (=> (not res!1922602) (not e!2867325))))

(assert (=> b!4596956 e!2867325))

(declare-fun lt!1757011 () Unit!107861)

(declare-fun Unit!107896 () Unit!107861)

(assert (=> b!4596956 (= lt!1757011 Unit!107896)))

(declare-fun b!4596957 () Bool)

(assert (=> b!4596957 (= e!2867326 (invariantList!1122 (toList!4644 lt!1757013)))))

(assert (=> d!1446973 e!2867326))

(declare-fun res!1922601 () Bool)

(assert (=> d!1446973 (=> (not res!1922601) (not e!2867326))))

(assert (=> d!1446973 (= res!1922601 (forall!10592 (_2!29148 (h!57031 (toList!4643 lt!1756611))) lambda!185923))))

(assert (=> d!1446973 (= lt!1757013 e!2867324)))

(assert (=> d!1446973 (= c!787295 ((_ is Nil!51068) (_2!29148 (h!57031 (toList!4643 lt!1756611)))))))

(assert (=> d!1446973 (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lt!1756611))))))

(assert (=> d!1446973 (= (addToMapMapFromBucket!812 (_2!29148 (h!57031 (toList!4643 lt!1756611))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) lt!1757013)))

(declare-fun bm!320780 () Bool)

(assert (=> bm!320780 (= call!320785 (forall!10592 (ite c!787295 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (_2!29148 (h!57031 (toList!4643 lt!1756611)))) (ite c!787295 lambda!185920 lambda!185922)))))

(assert (=> b!4596958 (= e!2867324 (extractMap!1374 (t!358187 (toList!4643 lt!1756611))))))

(declare-fun lt!1757005 () Unit!107861)

(assert (=> b!4596958 (= lt!1757005 call!320784)))

(assert (=> b!4596958 call!320783))

(declare-fun lt!1757018 () Unit!107861)

(assert (=> b!4596958 (= lt!1757018 lt!1757005)))

(assert (=> b!4596958 call!320785))

(declare-fun lt!1757006 () Unit!107861)

(declare-fun Unit!107897 () Unit!107861)

(assert (=> b!4596958 (= lt!1757006 Unit!107897)))

(assert (= (and d!1446973 c!787295) b!4596958))

(assert (= (and d!1446973 (not c!787295)) b!4596956))

(assert (= (and b!4596956 res!1922602) b!4596954))

(assert (= (or b!4596958 b!4596956) bm!320779))

(assert (= (or b!4596958 b!4596956) bm!320780))

(assert (= (or b!4596958 b!4596956) bm!320778))

(assert (= (and d!1446973 res!1922601) b!4596955))

(assert (= (and b!4596955 res!1922600) b!4596957))

(assert (=> b!4596956 m!5421615))

(declare-fun m!5421945 () Bool)

(assert (=> b!4596956 m!5421945))

(assert (=> b!4596956 m!5421945))

(declare-fun m!5421947 () Bool)

(assert (=> b!4596956 m!5421947))

(declare-fun m!5421949 () Bool)

(assert (=> b!4596956 m!5421949))

(declare-fun m!5421951 () Bool)

(assert (=> b!4596956 m!5421951))

(declare-fun m!5421953 () Bool)

(assert (=> b!4596956 m!5421953))

(declare-fun m!5421955 () Bool)

(assert (=> b!4596956 m!5421955))

(declare-fun m!5421957 () Bool)

(assert (=> b!4596956 m!5421957))

(declare-fun m!5421959 () Bool)

(assert (=> b!4596956 m!5421959))

(assert (=> b!4596956 m!5421955))

(declare-fun m!5421961 () Bool)

(assert (=> b!4596956 m!5421961))

(assert (=> b!4596956 m!5421957))

(assert (=> b!4596956 m!5421615))

(declare-fun m!5421963 () Bool)

(assert (=> b!4596956 m!5421963))

(declare-fun m!5421965 () Bool)

(assert (=> bm!320780 m!5421965))

(assert (=> bm!320779 m!5421965))

(declare-fun m!5421967 () Bool)

(assert (=> b!4596957 m!5421967))

(declare-fun m!5421969 () Bool)

(assert (=> d!1446973 m!5421969))

(assert (=> d!1446973 m!5421673))

(assert (=> b!4596954 m!5421957))

(assert (=> bm!320778 m!5421615))

(declare-fun m!5421971 () Bool)

(assert (=> bm!320778 m!5421971))

(declare-fun m!5421973 () Bool)

(assert (=> b!4596955 m!5421973))

(assert (=> b!4596626 d!1446973))

(declare-fun bs!1009624 () Bool)

(declare-fun d!1447015 () Bool)

(assert (= bs!1009624 (and d!1447015 d!1446835)))

(declare-fun lambda!185924 () Int)

(assert (=> bs!1009624 (= lambda!185924 lambda!185850)))

(declare-fun bs!1009625 () Bool)

(assert (= bs!1009625 (and d!1447015 d!1446825)))

(assert (=> bs!1009625 (= lambda!185924 lambda!185849)))

(declare-fun bs!1009626 () Bool)

(assert (= bs!1009626 (and d!1447015 d!1446893)))

(assert (=> bs!1009626 (= lambda!185924 lambda!185867)))

(declare-fun bs!1009627 () Bool)

(assert (= bs!1009627 (and d!1447015 start!458528)))

(assert (=> bs!1009627 (= lambda!185924 lambda!185824)))

(declare-fun bs!1009628 () Bool)

(assert (= bs!1009628 (and d!1447015 d!1446879)))

(assert (=> bs!1009628 (= lambda!185924 lambda!185862)))

(declare-fun bs!1009629 () Bool)

(assert (= bs!1009629 (and d!1447015 d!1446895)))

(assert (=> bs!1009629 (= lambda!185924 lambda!185868)))

(declare-fun bs!1009630 () Bool)

(assert (= bs!1009630 (and d!1447015 d!1446897)))

(assert (=> bs!1009630 (= lambda!185924 lambda!185869)))

(declare-fun bs!1009631 () Bool)

(assert (= bs!1009631 (and d!1447015 d!1446821)))

(assert (=> bs!1009631 (not (= lambda!185924 lambda!185843))))

(declare-fun bs!1009632 () Bool)

(assert (= bs!1009632 (and d!1447015 d!1446907)))

(assert (=> bs!1009632 (= lambda!185924 lambda!185872)))

(declare-fun bs!1009633 () Bool)

(assert (= bs!1009633 (and d!1447015 d!1446771)))

(assert (=> bs!1009633 (= lambda!185924 lambda!185827)))

(declare-fun bs!1009634 () Bool)

(assert (= bs!1009634 (and d!1447015 d!1446883)))

(assert (=> bs!1009634 (= lambda!185924 lambda!185863)))

(declare-fun bs!1009635 () Bool)

(assert (= bs!1009635 (and d!1447015 d!1446813)))

(assert (=> bs!1009635 (not (= lambda!185924 lambda!185842))))

(declare-fun lt!1757024 () ListMap!3905)

(assert (=> d!1447015 (invariantList!1122 (toList!4644 lt!1757024))))

(declare-fun e!2867327 () ListMap!3905)

(assert (=> d!1447015 (= lt!1757024 e!2867327)))

(declare-fun c!787296 () Bool)

(assert (=> d!1447015 (= c!787296 ((_ is Cons!51069) (t!358187 (toList!4643 lt!1756611))))))

(assert (=> d!1447015 (forall!10590 (t!358187 (toList!4643 lt!1756611)) lambda!185924)))

(assert (=> d!1447015 (= (extractMap!1374 (t!358187 (toList!4643 lt!1756611))) lt!1757024)))

(declare-fun b!4596961 () Bool)

(assert (=> b!4596961 (= e!2867327 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (t!358187 (toList!4643 lt!1756611)))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lt!1756611))))))))

(declare-fun b!4596962 () Bool)

(assert (=> b!4596962 (= e!2867327 (ListMap!3906 Nil!51068))))

(assert (= (and d!1447015 c!787296) b!4596961))

(assert (= (and d!1447015 (not c!787296)) b!4596962))

(declare-fun m!5421975 () Bool)

(assert (=> d!1447015 m!5421975))

(declare-fun m!5421977 () Bool)

(assert (=> d!1447015 m!5421977))

(declare-fun m!5421979 () Bool)

(assert (=> b!4596961 m!5421979))

(assert (=> b!4596961 m!5421979))

(declare-fun m!5421981 () Bool)

(assert (=> b!4596961 m!5421981))

(assert (=> b!4596626 d!1447015))

(declare-fun bs!1009636 () Bool)

(declare-fun b!4596967 () Bool)

(assert (= bs!1009636 (and b!4596967 b!4596956)))

(declare-fun lambda!185925 () Int)

(assert (=> bs!1009636 (= (= (extractMap!1374 (t!358187 lt!1756615)) lt!1757022) (= lambda!185925 lambda!185922))))

(assert (=> bs!1009636 (= (= (extractMap!1374 (t!358187 lt!1756615)) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185925 lambda!185921))))

(declare-fun bs!1009637 () Bool)

(assert (= bs!1009637 (and b!4596967 d!1446973)))

(assert (=> bs!1009637 (= (= (extractMap!1374 (t!358187 lt!1756615)) lt!1757013) (= lambda!185925 lambda!185923))))

(declare-fun bs!1009638 () Bool)

(assert (= bs!1009638 (and b!4596967 d!1446887)))

(assert (=> bs!1009638 (not (= lambda!185925 lambda!185866))))

(declare-fun bs!1009639 () Bool)

(assert (= bs!1009639 (and b!4596967 b!4596958)))

(assert (=> bs!1009639 (= (= (extractMap!1374 (t!358187 lt!1756615)) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185925 lambda!185920))))

(assert (=> b!4596967 true))

(declare-fun bs!1009640 () Bool)

(declare-fun b!4596965 () Bool)

(assert (= bs!1009640 (and b!4596965 b!4596956)))

(declare-fun lambda!185926 () Int)

(assert (=> bs!1009640 (= (= (extractMap!1374 (t!358187 lt!1756615)) lt!1757022) (= lambda!185926 lambda!185922))))

(declare-fun bs!1009641 () Bool)

(assert (= bs!1009641 (and b!4596965 b!4596967)))

(assert (=> bs!1009641 (= lambda!185926 lambda!185925)))

(assert (=> bs!1009640 (= (= (extractMap!1374 (t!358187 lt!1756615)) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185926 lambda!185921))))

(declare-fun bs!1009642 () Bool)

(assert (= bs!1009642 (and b!4596965 d!1446973)))

(assert (=> bs!1009642 (= (= (extractMap!1374 (t!358187 lt!1756615)) lt!1757013) (= lambda!185926 lambda!185923))))

(declare-fun bs!1009643 () Bool)

(assert (= bs!1009643 (and b!4596965 d!1446887)))

(assert (=> bs!1009643 (not (= lambda!185926 lambda!185866))))

(declare-fun bs!1009644 () Bool)

(assert (= bs!1009644 (and b!4596965 b!4596958)))

(assert (=> bs!1009644 (= (= (extractMap!1374 (t!358187 lt!1756615)) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185926 lambda!185920))))

(assert (=> b!4596965 true))

(declare-fun lt!1757044 () ListMap!3905)

(declare-fun lambda!185927 () Int)

(assert (=> b!4596965 (= (= lt!1757044 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185927 lambda!185926))))

(assert (=> bs!1009640 (= (= lt!1757044 lt!1757022) (= lambda!185927 lambda!185922))))

(assert (=> bs!1009641 (= (= lt!1757044 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185927 lambda!185925))))

(assert (=> bs!1009640 (= (= lt!1757044 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185927 lambda!185921))))

(assert (=> bs!1009642 (= (= lt!1757044 lt!1757013) (= lambda!185927 lambda!185923))))

(assert (=> bs!1009643 (not (= lambda!185927 lambda!185866))))

(assert (=> bs!1009644 (= (= lt!1757044 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185927 lambda!185920))))

(assert (=> b!4596965 true))

(declare-fun bs!1009645 () Bool)

(declare-fun d!1447017 () Bool)

(assert (= bs!1009645 (and d!1447017 b!4596965)))

(declare-fun lt!1757035 () ListMap!3905)

(declare-fun lambda!185928 () Int)

(assert (=> bs!1009645 (= (= lt!1757035 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185928 lambda!185926))))

(assert (=> bs!1009645 (= (= lt!1757035 lt!1757044) (= lambda!185928 lambda!185927))))

(declare-fun bs!1009646 () Bool)

(assert (= bs!1009646 (and d!1447017 b!4596956)))

(assert (=> bs!1009646 (= (= lt!1757035 lt!1757022) (= lambda!185928 lambda!185922))))

(declare-fun bs!1009647 () Bool)

(assert (= bs!1009647 (and d!1447017 b!4596967)))

(assert (=> bs!1009647 (= (= lt!1757035 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185928 lambda!185925))))

(assert (=> bs!1009646 (= (= lt!1757035 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185928 lambda!185921))))

(declare-fun bs!1009648 () Bool)

(assert (= bs!1009648 (and d!1447017 d!1446973)))

(assert (=> bs!1009648 (= (= lt!1757035 lt!1757013) (= lambda!185928 lambda!185923))))

(declare-fun bs!1009649 () Bool)

(assert (= bs!1009649 (and d!1447017 d!1446887)))

(assert (=> bs!1009649 (not (= lambda!185928 lambda!185866))))

(declare-fun bs!1009650 () Bool)

(assert (= bs!1009650 (and d!1447017 b!4596958)))

(assert (=> bs!1009650 (= (= lt!1757035 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185928 lambda!185920))))

(assert (=> d!1447017 true))

(declare-fun b!4596963 () Bool)

(declare-fun e!2867329 () Bool)

(assert (=> b!4596963 (= e!2867329 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 lt!1756615))) lambda!185927))))

(declare-fun bm!320781 () Bool)

(declare-fun call!320787 () Unit!107861)

(assert (=> bm!320781 (= call!320787 (lemmaContainsAllItsOwnKeys!433 (extractMap!1374 (t!358187 lt!1756615))))))

(declare-fun b!4596964 () Bool)

(declare-fun res!1922603 () Bool)

(declare-fun e!2867330 () Bool)

(assert (=> b!4596964 (=> (not res!1922603) (not e!2867330))))

(assert (=> b!4596964 (= res!1922603 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 lt!1756615))) lambda!185928))))

(declare-fun call!320786 () Bool)

(declare-fun bm!320782 () Bool)

(declare-fun c!787297 () Bool)

(assert (=> bm!320782 (= call!320786 (forall!10592 (ite c!787297 (toList!4644 (extractMap!1374 (t!358187 lt!1756615))) (_2!29148 (h!57031 lt!1756615))) (ite c!787297 lambda!185925 lambda!185927)))))

(declare-fun e!2867328 () ListMap!3905)

(assert (=> b!4596965 (= e!2867328 lt!1757044)))

(declare-fun lt!1757041 () ListMap!3905)

(assert (=> b!4596965 (= lt!1757041 (+!1739 (extractMap!1374 (t!358187 lt!1756615)) (h!57030 (_2!29148 (h!57031 lt!1756615)))))))

(assert (=> b!4596965 (= lt!1757044 (addToMapMapFromBucket!812 (t!358186 (_2!29148 (h!57031 lt!1756615))) (+!1739 (extractMap!1374 (t!358187 lt!1756615)) (h!57030 (_2!29148 (h!57031 lt!1756615))))))))

(declare-fun lt!1757043 () Unit!107861)

(assert (=> b!4596965 (= lt!1757043 call!320787)))

(assert (=> b!4596965 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 lt!1756615))) lambda!185926)))

(declare-fun lt!1757032 () Unit!107861)

(assert (=> b!4596965 (= lt!1757032 lt!1757043)))

(assert (=> b!4596965 (forall!10592 (toList!4644 lt!1757041) lambda!185927)))

(declare-fun lt!1757030 () Unit!107861)

(declare-fun Unit!107906 () Unit!107861)

(assert (=> b!4596965 (= lt!1757030 Unit!107906)))

(assert (=> b!4596965 (forall!10592 (t!358186 (_2!29148 (h!57031 lt!1756615))) lambda!185927)))

(declare-fun lt!1757029 () Unit!107861)

(declare-fun Unit!107907 () Unit!107861)

(assert (=> b!4596965 (= lt!1757029 Unit!107907)))

(declare-fun lt!1757026 () Unit!107861)

(declare-fun Unit!107908 () Unit!107861)

(assert (=> b!4596965 (= lt!1757026 Unit!107908)))

(declare-fun lt!1757045 () Unit!107861)

(assert (=> b!4596965 (= lt!1757045 (forallContained!2845 (toList!4644 lt!1757041) lambda!185927 (h!57030 (_2!29148 (h!57031 lt!1756615)))))))

(assert (=> b!4596965 (contains!14011 lt!1757041 (_1!29147 (h!57030 (_2!29148 (h!57031 lt!1756615)))))))

(declare-fun lt!1757038 () Unit!107861)

(declare-fun Unit!107909 () Unit!107861)

(assert (=> b!4596965 (= lt!1757038 Unit!107909)))

(assert (=> b!4596965 (contains!14011 lt!1757044 (_1!29147 (h!57030 (_2!29148 (h!57031 lt!1756615)))))))

(declare-fun lt!1757042 () Unit!107861)

(declare-fun Unit!107910 () Unit!107861)

(assert (=> b!4596965 (= lt!1757042 Unit!107910)))

(assert (=> b!4596965 call!320786))

(declare-fun lt!1757025 () Unit!107861)

(declare-fun Unit!107911 () Unit!107861)

(assert (=> b!4596965 (= lt!1757025 Unit!107911)))

(assert (=> b!4596965 (forall!10592 (toList!4644 lt!1757041) lambda!185927)))

(declare-fun lt!1757034 () Unit!107861)

(declare-fun Unit!107912 () Unit!107861)

(assert (=> b!4596965 (= lt!1757034 Unit!107912)))

(declare-fun lt!1757039 () Unit!107861)

(declare-fun Unit!107913 () Unit!107861)

(assert (=> b!4596965 (= lt!1757039 Unit!107913)))

(declare-fun lt!1757037 () Unit!107861)

(assert (=> b!4596965 (= lt!1757037 (addForallContainsKeyThenBeforeAdding!433 (extractMap!1374 (t!358187 lt!1756615)) lt!1757044 (_1!29147 (h!57030 (_2!29148 (h!57031 lt!1756615)))) (_2!29147 (h!57030 (_2!29148 (h!57031 lt!1756615))))))))

(assert (=> b!4596965 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 lt!1756615))) lambda!185927)))

(declare-fun lt!1757031 () Unit!107861)

(assert (=> b!4596965 (= lt!1757031 lt!1757037)))

(assert (=> b!4596965 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 lt!1756615))) lambda!185927)))

(declare-fun lt!1757036 () Unit!107861)

(declare-fun Unit!107914 () Unit!107861)

(assert (=> b!4596965 (= lt!1757036 Unit!107914)))

(declare-fun res!1922605 () Bool)

(declare-fun call!320788 () Bool)

(assert (=> b!4596965 (= res!1922605 call!320788)))

(assert (=> b!4596965 (=> (not res!1922605) (not e!2867329))))

(assert (=> b!4596965 e!2867329))

(declare-fun lt!1757033 () Unit!107861)

(declare-fun Unit!107915 () Unit!107861)

(assert (=> b!4596965 (= lt!1757033 Unit!107915)))

(declare-fun b!4596966 () Bool)

(assert (=> b!4596966 (= e!2867330 (invariantList!1122 (toList!4644 lt!1757035)))))

(assert (=> d!1447017 e!2867330))

(declare-fun res!1922604 () Bool)

(assert (=> d!1447017 (=> (not res!1922604) (not e!2867330))))

(assert (=> d!1447017 (= res!1922604 (forall!10592 (_2!29148 (h!57031 lt!1756615)) lambda!185928))))

(assert (=> d!1447017 (= lt!1757035 e!2867328)))

(assert (=> d!1447017 (= c!787297 ((_ is Nil!51068) (_2!29148 (h!57031 lt!1756615))))))

(assert (=> d!1447017 (noDuplicateKeys!1314 (_2!29148 (h!57031 lt!1756615)))))

(assert (=> d!1447017 (= (addToMapMapFromBucket!812 (_2!29148 (h!57031 lt!1756615)) (extractMap!1374 (t!358187 lt!1756615))) lt!1757035)))

(declare-fun bm!320783 () Bool)

(assert (=> bm!320783 (= call!320788 (forall!10592 (ite c!787297 (toList!4644 (extractMap!1374 (t!358187 lt!1756615))) (_2!29148 (h!57031 lt!1756615))) (ite c!787297 lambda!185925 lambda!185927)))))

(assert (=> b!4596967 (= e!2867328 (extractMap!1374 (t!358187 lt!1756615)))))

(declare-fun lt!1757027 () Unit!107861)

(assert (=> b!4596967 (= lt!1757027 call!320787)))

(assert (=> b!4596967 call!320786))

(declare-fun lt!1757040 () Unit!107861)

(assert (=> b!4596967 (= lt!1757040 lt!1757027)))

(assert (=> b!4596967 call!320788))

(declare-fun lt!1757028 () Unit!107861)

(declare-fun Unit!107916 () Unit!107861)

(assert (=> b!4596967 (= lt!1757028 Unit!107916)))

(assert (= (and d!1447017 c!787297) b!4596967))

(assert (= (and d!1447017 (not c!787297)) b!4596965))

(assert (= (and b!4596965 res!1922605) b!4596963))

(assert (= (or b!4596967 b!4596965) bm!320782))

(assert (= (or b!4596967 b!4596965) bm!320783))

(assert (= (or b!4596967 b!4596965) bm!320781))

(assert (= (and d!1447017 res!1922604) b!4596964))

(assert (= (and b!4596964 res!1922603) b!4596966))

(assert (=> b!4596965 m!5421559))

(declare-fun m!5421983 () Bool)

(assert (=> b!4596965 m!5421983))

(assert (=> b!4596965 m!5421983))

(declare-fun m!5421985 () Bool)

(assert (=> b!4596965 m!5421985))

(declare-fun m!5421987 () Bool)

(assert (=> b!4596965 m!5421987))

(declare-fun m!5421989 () Bool)

(assert (=> b!4596965 m!5421989))

(declare-fun m!5421991 () Bool)

(assert (=> b!4596965 m!5421991))

(declare-fun m!5421993 () Bool)

(assert (=> b!4596965 m!5421993))

(declare-fun m!5421995 () Bool)

(assert (=> b!4596965 m!5421995))

(declare-fun m!5421997 () Bool)

(assert (=> b!4596965 m!5421997))

(assert (=> b!4596965 m!5421993))

(declare-fun m!5421999 () Bool)

(assert (=> b!4596965 m!5421999))

(assert (=> b!4596965 m!5421995))

(assert (=> b!4596965 m!5421559))

(declare-fun m!5422001 () Bool)

(assert (=> b!4596965 m!5422001))

(declare-fun m!5422003 () Bool)

(assert (=> bm!320783 m!5422003))

(assert (=> bm!320782 m!5422003))

(declare-fun m!5422005 () Bool)

(assert (=> b!4596966 m!5422005))

(declare-fun m!5422007 () Bool)

(assert (=> d!1447017 m!5422007))

(declare-fun m!5422009 () Bool)

(assert (=> d!1447017 m!5422009))

(assert (=> b!4596963 m!5421995))

(assert (=> bm!320781 m!5421559))

(declare-fun m!5422011 () Bool)

(assert (=> bm!320781 m!5422011))

(declare-fun m!5422013 () Bool)

(assert (=> b!4596964 m!5422013))

(assert (=> b!4596598 d!1447017))

(declare-fun bs!1009651 () Bool)

(declare-fun d!1447019 () Bool)

(assert (= bs!1009651 (and d!1447019 d!1446835)))

(declare-fun lambda!185929 () Int)

(assert (=> bs!1009651 (= lambda!185929 lambda!185850)))

(declare-fun bs!1009652 () Bool)

(assert (= bs!1009652 (and d!1447019 d!1446825)))

(assert (=> bs!1009652 (= lambda!185929 lambda!185849)))

(declare-fun bs!1009653 () Bool)

(assert (= bs!1009653 (and d!1447019 d!1446893)))

(assert (=> bs!1009653 (= lambda!185929 lambda!185867)))

(declare-fun bs!1009654 () Bool)

(assert (= bs!1009654 (and d!1447019 d!1447015)))

(assert (=> bs!1009654 (= lambda!185929 lambda!185924)))

(declare-fun bs!1009655 () Bool)

(assert (= bs!1009655 (and d!1447019 start!458528)))

(assert (=> bs!1009655 (= lambda!185929 lambda!185824)))

(declare-fun bs!1009656 () Bool)

(assert (= bs!1009656 (and d!1447019 d!1446879)))

(assert (=> bs!1009656 (= lambda!185929 lambda!185862)))

(declare-fun bs!1009657 () Bool)

(assert (= bs!1009657 (and d!1447019 d!1446895)))

(assert (=> bs!1009657 (= lambda!185929 lambda!185868)))

(declare-fun bs!1009658 () Bool)

(assert (= bs!1009658 (and d!1447019 d!1446897)))

(assert (=> bs!1009658 (= lambda!185929 lambda!185869)))

(declare-fun bs!1009659 () Bool)

(assert (= bs!1009659 (and d!1447019 d!1446821)))

(assert (=> bs!1009659 (not (= lambda!185929 lambda!185843))))

(declare-fun bs!1009660 () Bool)

(assert (= bs!1009660 (and d!1447019 d!1446907)))

(assert (=> bs!1009660 (= lambda!185929 lambda!185872)))

(declare-fun bs!1009661 () Bool)

(assert (= bs!1009661 (and d!1447019 d!1446771)))

(assert (=> bs!1009661 (= lambda!185929 lambda!185827)))

(declare-fun bs!1009662 () Bool)

(assert (= bs!1009662 (and d!1447019 d!1446883)))

(assert (=> bs!1009662 (= lambda!185929 lambda!185863)))

(declare-fun bs!1009663 () Bool)

(assert (= bs!1009663 (and d!1447019 d!1446813)))

(assert (=> bs!1009663 (not (= lambda!185929 lambda!185842))))

(declare-fun lt!1757046 () ListMap!3905)

(assert (=> d!1447019 (invariantList!1122 (toList!4644 lt!1757046))))

(declare-fun e!2867331 () ListMap!3905)

(assert (=> d!1447019 (= lt!1757046 e!2867331)))

(declare-fun c!787298 () Bool)

(assert (=> d!1447019 (= c!787298 ((_ is Cons!51069) (t!358187 lt!1756615)))))

(assert (=> d!1447019 (forall!10590 (t!358187 lt!1756615) lambda!185929)))

(assert (=> d!1447019 (= (extractMap!1374 (t!358187 lt!1756615)) lt!1757046)))

(declare-fun b!4596968 () Bool)

(assert (=> b!4596968 (= e!2867331 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (t!358187 lt!1756615))) (extractMap!1374 (t!358187 (t!358187 lt!1756615)))))))

(declare-fun b!4596969 () Bool)

(assert (=> b!4596969 (= e!2867331 (ListMap!3906 Nil!51068))))

(assert (= (and d!1447019 c!787298) b!4596968))

(assert (= (and d!1447019 (not c!787298)) b!4596969))

(declare-fun m!5422015 () Bool)

(assert (=> d!1447019 m!5422015))

(declare-fun m!5422017 () Bool)

(assert (=> d!1447019 m!5422017))

(declare-fun m!5422019 () Bool)

(assert (=> b!4596968 m!5422019))

(assert (=> b!4596968 m!5422019))

(declare-fun m!5422021 () Bool)

(assert (=> b!4596968 m!5422021))

(assert (=> b!4596598 d!1447019))

(assert (=> b!4596636 d!1446965))

(assert (=> b!4596636 d!1446967))

(assert (=> d!1446885 d!1446835))

(declare-fun d!1447021 () Bool)

(assert (=> d!1447021 (eq!721 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 newBucket!178) Nil!51069)) (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287))))

(assert (=> d!1447021 true))

(declare-fun _$18!258 () Unit!107861)

(assert (=> d!1447021 (= (choose!30785 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477))) newBucket!178 key!3287 hashF!1107) _$18!258)))

(declare-fun bs!1009664 () Bool)

(assert (= bs!1009664 d!1447021))

(assert (=> bs!1009664 m!5421565))

(assert (=> bs!1009664 m!5421135))

(assert (=> bs!1009664 m!5421135))

(assert (=> bs!1009664 m!5421137))

(assert (=> bs!1009664 m!5421565))

(assert (=> bs!1009664 m!5421137))

(assert (=> bs!1009664 m!5421569))

(assert (=> d!1446885 d!1447021))

(assert (=> d!1446885 d!1446841))

(declare-fun d!1447023 () Bool)

(declare-fun res!1922606 () Bool)

(declare-fun e!2867332 () Bool)

(assert (=> d!1447023 (=> res!1922606 e!2867332)))

(assert (=> d!1447023 (= res!1922606 (not ((_ is Cons!51068) (_2!29148 (h!57031 (toList!4643 lm!1477))))))))

(assert (=> d!1447023 (= (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lm!1477)))) e!2867332)))

(declare-fun b!4596970 () Bool)

(declare-fun e!2867333 () Bool)

(assert (=> b!4596970 (= e!2867332 e!2867333)))

(declare-fun res!1922607 () Bool)

(assert (=> b!4596970 (=> (not res!1922607) (not e!2867333))))

(assert (=> b!4596970 (= res!1922607 (not (containsKey!2146 (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477)))) (_1!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lm!1477))))))))))

(declare-fun b!4596971 () Bool)

(assert (=> b!4596971 (= e!2867333 (noDuplicateKeys!1314 (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477))))))))

(assert (= (and d!1447023 (not res!1922606)) b!4596970))

(assert (= (and b!4596970 res!1922607) b!4596971))

(declare-fun m!5422023 () Bool)

(assert (=> b!4596970 m!5422023))

(declare-fun m!5422025 () Bool)

(assert (=> b!4596971 m!5422025))

(assert (=> d!1446885 d!1447023))

(declare-fun bs!1009665 () Bool)

(declare-fun d!1447025 () Bool)

(assert (= bs!1009665 (and d!1447025 d!1447019)))

(declare-fun lambda!185930 () Int)

(assert (=> bs!1009665 (= lambda!185930 lambda!185929)))

(declare-fun bs!1009666 () Bool)

(assert (= bs!1009666 (and d!1447025 d!1446835)))

(assert (=> bs!1009666 (= lambda!185930 lambda!185850)))

(declare-fun bs!1009667 () Bool)

(assert (= bs!1009667 (and d!1447025 d!1446825)))

(assert (=> bs!1009667 (= lambda!185930 lambda!185849)))

(declare-fun bs!1009668 () Bool)

(assert (= bs!1009668 (and d!1447025 d!1446893)))

(assert (=> bs!1009668 (= lambda!185930 lambda!185867)))

(declare-fun bs!1009669 () Bool)

(assert (= bs!1009669 (and d!1447025 d!1447015)))

(assert (=> bs!1009669 (= lambda!185930 lambda!185924)))

(declare-fun bs!1009670 () Bool)

(assert (= bs!1009670 (and d!1447025 start!458528)))

(assert (=> bs!1009670 (= lambda!185930 lambda!185824)))

(declare-fun bs!1009671 () Bool)

(assert (= bs!1009671 (and d!1447025 d!1446879)))

(assert (=> bs!1009671 (= lambda!185930 lambda!185862)))

(declare-fun bs!1009672 () Bool)

(assert (= bs!1009672 (and d!1447025 d!1446895)))

(assert (=> bs!1009672 (= lambda!185930 lambda!185868)))

(declare-fun bs!1009673 () Bool)

(assert (= bs!1009673 (and d!1447025 d!1446897)))

(assert (=> bs!1009673 (= lambda!185930 lambda!185869)))

(declare-fun bs!1009674 () Bool)

(assert (= bs!1009674 (and d!1447025 d!1446821)))

(assert (=> bs!1009674 (not (= lambda!185930 lambda!185843))))

(declare-fun bs!1009675 () Bool)

(assert (= bs!1009675 (and d!1447025 d!1446907)))

(assert (=> bs!1009675 (= lambda!185930 lambda!185872)))

(declare-fun bs!1009676 () Bool)

(assert (= bs!1009676 (and d!1447025 d!1446771)))

(assert (=> bs!1009676 (= lambda!185930 lambda!185827)))

(declare-fun bs!1009677 () Bool)

(assert (= bs!1009677 (and d!1447025 d!1446883)))

(assert (=> bs!1009677 (= lambda!185930 lambda!185863)))

(declare-fun bs!1009678 () Bool)

(assert (= bs!1009678 (and d!1447025 d!1446813)))

(assert (=> bs!1009678 (not (= lambda!185930 lambda!185842))))

(declare-fun lt!1757047 () ListMap!3905)

(assert (=> d!1447025 (invariantList!1122 (toList!4644 lt!1757047))))

(declare-fun e!2867334 () ListMap!3905)

(assert (=> d!1447025 (= lt!1757047 e!2867334)))

(declare-fun c!787299 () Bool)

(assert (=> d!1447025 (= c!787299 ((_ is Cons!51069) (Cons!51069 (tuple2!51709 hash!344 newBucket!178) Nil!51069)))))

(assert (=> d!1447025 (forall!10590 (Cons!51069 (tuple2!51709 hash!344 newBucket!178) Nil!51069) lambda!185930)))

(assert (=> d!1447025 (= (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 newBucket!178) Nil!51069)) lt!1757047)))

(declare-fun b!4596972 () Bool)

(assert (=> b!4596972 (= e!2867334 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 newBucket!178) Nil!51069))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 newBucket!178) Nil!51069)))))))

(declare-fun b!4596973 () Bool)

(assert (=> b!4596973 (= e!2867334 (ListMap!3906 Nil!51068))))

(assert (= (and d!1447025 c!787299) b!4596972))

(assert (= (and d!1447025 (not c!787299)) b!4596973))

(declare-fun m!5422027 () Bool)

(assert (=> d!1447025 m!5422027))

(declare-fun m!5422029 () Bool)

(assert (=> d!1447025 m!5422029))

(declare-fun m!5422031 () Bool)

(assert (=> b!4596972 m!5422031))

(assert (=> b!4596972 m!5422031))

(declare-fun m!5422033 () Bool)

(assert (=> b!4596972 m!5422033))

(assert (=> d!1446885 d!1447025))

(declare-fun d!1447027 () Bool)

(assert (=> d!1447027 (= (eq!721 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 newBucket!178) Nil!51069)) (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287)) (= (content!8642 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 newBucket!178) Nil!51069)))) (content!8642 (toList!4644 (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287)))))))

(declare-fun bs!1009679 () Bool)

(assert (= bs!1009679 d!1447027))

(declare-fun m!5422035 () Bool)

(assert (=> bs!1009679 m!5422035))

(assert (=> bs!1009679 m!5421489))

(assert (=> d!1446885 d!1447027))

(declare-fun bs!1009680 () Bool)

(declare-fun b!4596978 () Bool)

(assert (= bs!1009680 (and b!4596978 b!4596965)))

(declare-fun lambda!185931 () Int)

(assert (=> bs!1009680 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185931 lambda!185926))))

(declare-fun bs!1009681 () Bool)

(assert (= bs!1009681 (and b!4596978 d!1447017)))

(assert (=> bs!1009681 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757035) (= lambda!185931 lambda!185928))))

(assert (=> bs!1009680 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757044) (= lambda!185931 lambda!185927))))

(declare-fun bs!1009682 () Bool)

(assert (= bs!1009682 (and b!4596978 b!4596956)))

(assert (=> bs!1009682 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757022) (= lambda!185931 lambda!185922))))

(declare-fun bs!1009683 () Bool)

(assert (= bs!1009683 (and b!4596978 b!4596967)))

(assert (=> bs!1009683 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185931 lambda!185925))))

(assert (=> bs!1009682 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185931 lambda!185921))))

(declare-fun bs!1009684 () Bool)

(assert (= bs!1009684 (and b!4596978 d!1446973)))

(assert (=> bs!1009684 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757013) (= lambda!185931 lambda!185923))))

(declare-fun bs!1009685 () Bool)

(assert (= bs!1009685 (and b!4596978 d!1446887)))

(assert (=> bs!1009685 (not (= lambda!185931 lambda!185866))))

(declare-fun bs!1009686 () Bool)

(assert (= bs!1009686 (and b!4596978 b!4596958)))

(assert (=> bs!1009686 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185931 lambda!185920))))

(assert (=> b!4596978 true))

(declare-fun bs!1009687 () Bool)

(declare-fun b!4596976 () Bool)

(assert (= bs!1009687 (and b!4596976 b!4596965)))

(declare-fun lambda!185932 () Int)

(assert (=> bs!1009687 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185932 lambda!185926))))

(declare-fun bs!1009688 () Bool)

(assert (= bs!1009688 (and b!4596976 d!1447017)))

(assert (=> bs!1009688 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757035) (= lambda!185932 lambda!185928))))

(assert (=> bs!1009687 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757044) (= lambda!185932 lambda!185927))))

(declare-fun bs!1009689 () Bool)

(assert (= bs!1009689 (and b!4596976 b!4596978)))

(assert (=> bs!1009689 (= lambda!185932 lambda!185931)))

(declare-fun bs!1009690 () Bool)

(assert (= bs!1009690 (and b!4596976 b!4596956)))

(assert (=> bs!1009690 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757022) (= lambda!185932 lambda!185922))))

(declare-fun bs!1009691 () Bool)

(assert (= bs!1009691 (and b!4596976 b!4596967)))

(assert (=> bs!1009691 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185932 lambda!185925))))

(assert (=> bs!1009690 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185932 lambda!185921))))

(declare-fun bs!1009692 () Bool)

(assert (= bs!1009692 (and b!4596976 d!1446973)))

(assert (=> bs!1009692 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757013) (= lambda!185932 lambda!185923))))

(declare-fun bs!1009693 () Bool)

(assert (= bs!1009693 (and b!4596976 d!1446887)))

(assert (=> bs!1009693 (not (= lambda!185932 lambda!185866))))

(declare-fun bs!1009694 () Bool)

(assert (= bs!1009694 (and b!4596976 b!4596958)))

(assert (=> bs!1009694 (= (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185932 lambda!185920))))

(assert (=> b!4596976 true))

(declare-fun lt!1757067 () ListMap!3905)

(declare-fun lambda!185933 () Int)

(assert (=> bs!1009687 (= (= lt!1757067 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185933 lambda!185926))))

(assert (=> bs!1009688 (= (= lt!1757067 lt!1757035) (= lambda!185933 lambda!185928))))

(assert (=> bs!1009687 (= (= lt!1757067 lt!1757044) (= lambda!185933 lambda!185927))))

(assert (=> bs!1009689 (= (= lt!1757067 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185933 lambda!185931))))

(assert (=> bs!1009690 (= (= lt!1757067 lt!1757022) (= lambda!185933 lambda!185922))))

(assert (=> bs!1009691 (= (= lt!1757067 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185933 lambda!185925))))

(assert (=> b!4596976 (= (= lt!1757067 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185933 lambda!185932))))

(assert (=> bs!1009690 (= (= lt!1757067 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185933 lambda!185921))))

(assert (=> bs!1009692 (= (= lt!1757067 lt!1757013) (= lambda!185933 lambda!185923))))

(assert (=> bs!1009693 (not (= lambda!185933 lambda!185866))))

(assert (=> bs!1009694 (= (= lt!1757067 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185933 lambda!185920))))

(assert (=> b!4596976 true))

(declare-fun bs!1009695 () Bool)

(declare-fun d!1447029 () Bool)

(assert (= bs!1009695 (and d!1447029 b!4596965)))

(declare-fun lt!1757058 () ListMap!3905)

(declare-fun lambda!185934 () Int)

(assert (=> bs!1009695 (= (= lt!1757058 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185934 lambda!185926))))

(declare-fun bs!1009696 () Bool)

(assert (= bs!1009696 (and d!1447029 d!1447017)))

(assert (=> bs!1009696 (= (= lt!1757058 lt!1757035) (= lambda!185934 lambda!185928))))

(assert (=> bs!1009695 (= (= lt!1757058 lt!1757044) (= lambda!185934 lambda!185927))))

(declare-fun bs!1009697 () Bool)

(assert (= bs!1009697 (and d!1447029 b!4596978)))

(assert (=> bs!1009697 (= (= lt!1757058 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185934 lambda!185931))))

(declare-fun bs!1009698 () Bool)

(assert (= bs!1009698 (and d!1447029 b!4596956)))

(assert (=> bs!1009698 (= (= lt!1757058 lt!1757022) (= lambda!185934 lambda!185922))))

(declare-fun bs!1009699 () Bool)

(assert (= bs!1009699 (and d!1447029 b!4596967)))

(assert (=> bs!1009699 (= (= lt!1757058 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185934 lambda!185925))))

(declare-fun bs!1009700 () Bool)

(assert (= bs!1009700 (and d!1447029 b!4596976)))

(assert (=> bs!1009700 (= (= lt!1757058 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185934 lambda!185932))))

(assert (=> bs!1009698 (= (= lt!1757058 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185934 lambda!185921))))

(declare-fun bs!1009701 () Bool)

(assert (= bs!1009701 (and d!1447029 d!1446973)))

(assert (=> bs!1009701 (= (= lt!1757058 lt!1757013) (= lambda!185934 lambda!185923))))

(assert (=> bs!1009700 (= (= lt!1757058 lt!1757067) (= lambda!185934 lambda!185933))))

(declare-fun bs!1009702 () Bool)

(assert (= bs!1009702 (and d!1447029 d!1446887)))

(assert (=> bs!1009702 (not (= lambda!185934 lambda!185866))))

(declare-fun bs!1009703 () Bool)

(assert (= bs!1009703 (and d!1447029 b!4596958)))

(assert (=> bs!1009703 (= (= lt!1757058 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185934 lambda!185920))))

(assert (=> d!1447029 true))

(declare-fun b!4596974 () Bool)

(declare-fun e!2867336 () Bool)

(assert (=> b!4596974 (= e!2867336 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) lambda!185933))))

(declare-fun bm!320784 () Bool)

(declare-fun call!320790 () Unit!107861)

(assert (=> bm!320784 (= call!320790 (lemmaContainsAllItsOwnKeys!433 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))))))

(declare-fun b!4596975 () Bool)

(declare-fun res!1922608 () Bool)

(declare-fun e!2867337 () Bool)

(assert (=> b!4596975 (=> (not res!1922608) (not e!2867337))))

(assert (=> b!4596975 (= res!1922608 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) lambda!185934))))

(declare-fun c!787300 () Bool)

(declare-fun call!320789 () Bool)

(declare-fun bm!320785 () Bool)

(assert (=> bm!320785 (= call!320789 (forall!10592 (ite c!787300 (toList!4644 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))) (ite c!787300 lambda!185931 lambda!185933)))))

(declare-fun e!2867335 () ListMap!3905)

(assert (=> b!4596976 (= e!2867335 lt!1757067)))

(declare-fun lt!1757064 () ListMap!3905)

(assert (=> b!4596976 (= lt!1757064 (+!1739 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (h!57030 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477)))))))))

(assert (=> b!4596976 (= lt!1757067 (addToMapMapFromBucket!812 (t!358186 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))) (+!1739 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) (h!57030 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))))))))

(declare-fun lt!1757066 () Unit!107861)

(assert (=> b!4596976 (= lt!1757066 call!320790)))

(assert (=> b!4596976 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) lambda!185932)))

(declare-fun lt!1757055 () Unit!107861)

(assert (=> b!4596976 (= lt!1757055 lt!1757066)))

(assert (=> b!4596976 (forall!10592 (toList!4644 lt!1757064) lambda!185933)))

(declare-fun lt!1757053 () Unit!107861)

(declare-fun Unit!107929 () Unit!107861)

(assert (=> b!4596976 (= lt!1757053 Unit!107929)))

(assert (=> b!4596976 (forall!10592 (t!358186 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))) lambda!185933)))

(declare-fun lt!1757052 () Unit!107861)

(declare-fun Unit!107930 () Unit!107861)

(assert (=> b!4596976 (= lt!1757052 Unit!107930)))

(declare-fun lt!1757049 () Unit!107861)

(declare-fun Unit!107931 () Unit!107861)

(assert (=> b!4596976 (= lt!1757049 Unit!107931)))

(declare-fun lt!1757068 () Unit!107861)

(assert (=> b!4596976 (= lt!1757068 (forallContained!2845 (toList!4644 lt!1757064) lambda!185933 (h!57030 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477)))))))))

(assert (=> b!4596976 (contains!14011 lt!1757064 (_1!29147 (h!57030 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477)))))))))

(declare-fun lt!1757061 () Unit!107861)

(declare-fun Unit!107932 () Unit!107861)

(assert (=> b!4596976 (= lt!1757061 Unit!107932)))

(assert (=> b!4596976 (contains!14011 lt!1757067 (_1!29147 (h!57030 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477)))))))))

(declare-fun lt!1757065 () Unit!107861)

(declare-fun Unit!107933 () Unit!107861)

(assert (=> b!4596976 (= lt!1757065 Unit!107933)))

(assert (=> b!4596976 call!320789))

(declare-fun lt!1757048 () Unit!107861)

(declare-fun Unit!107934 () Unit!107861)

(assert (=> b!4596976 (= lt!1757048 Unit!107934)))

(assert (=> b!4596976 (forall!10592 (toList!4644 lt!1757064) lambda!185933)))

(declare-fun lt!1757057 () Unit!107861)

(declare-fun Unit!107935 () Unit!107861)

(assert (=> b!4596976 (= lt!1757057 Unit!107935)))

(declare-fun lt!1757062 () Unit!107861)

(declare-fun Unit!107936 () Unit!107861)

(assert (=> b!4596976 (= lt!1757062 Unit!107936)))

(declare-fun lt!1757060 () Unit!107861)

(assert (=> b!4596976 (= lt!1757060 (addForallContainsKeyThenBeforeAdding!433 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757067 (_1!29147 (h!57030 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477)))))) (_2!29147 (h!57030 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))))))))

(assert (=> b!4596976 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) lambda!185933)))

(declare-fun lt!1757054 () Unit!107861)

(assert (=> b!4596976 (= lt!1757054 lt!1757060)))

(assert (=> b!4596976 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) lambda!185933)))

(declare-fun lt!1757059 () Unit!107861)

(declare-fun Unit!107937 () Unit!107861)

(assert (=> b!4596976 (= lt!1757059 Unit!107937)))

(declare-fun res!1922610 () Bool)

(declare-fun call!320791 () Bool)

(assert (=> b!4596976 (= res!1922610 call!320791)))

(assert (=> b!4596976 (=> (not res!1922610) (not e!2867336))))

(assert (=> b!4596976 e!2867336))

(declare-fun lt!1757056 () Unit!107861)

(declare-fun Unit!107938 () Unit!107861)

(assert (=> b!4596976 (= lt!1757056 Unit!107938)))

(declare-fun b!4596977 () Bool)

(assert (=> b!4596977 (= e!2867337 (invariantList!1122 (toList!4644 lt!1757058)))))

(assert (=> d!1447029 e!2867337))

(declare-fun res!1922609 () Bool)

(assert (=> d!1447029 (=> (not res!1922609) (not e!2867337))))

(assert (=> d!1447029 (= res!1922609 (forall!10592 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477)))) lambda!185934))))

(assert (=> d!1447029 (= lt!1757058 e!2867335)))

(assert (=> d!1447029 (= c!787300 ((_ is Nil!51068) (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))))))

(assert (=> d!1447029 (noDuplicateKeys!1314 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477)))))))

(assert (=> d!1447029 (= (addToMapMapFromBucket!812 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477)))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) lt!1757058)))

(declare-fun bm!320786 () Bool)

(assert (=> bm!320786 (= call!320791 (forall!10592 (ite c!787300 (toList!4644 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))) (ite c!787300 lambda!185931 lambda!185933)))))

(assert (=> b!4596978 (= e!2867335 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))))))

(declare-fun lt!1757050 () Unit!107861)

(assert (=> b!4596978 (= lt!1757050 call!320790)))

(assert (=> b!4596978 call!320789))

(declare-fun lt!1757063 () Unit!107861)

(assert (=> b!4596978 (= lt!1757063 lt!1757050)))

(assert (=> b!4596978 call!320791))

(declare-fun lt!1757051 () Unit!107861)

(declare-fun Unit!107939 () Unit!107861)

(assert (=> b!4596978 (= lt!1757051 Unit!107939)))

(assert (= (and d!1447029 c!787300) b!4596978))

(assert (= (and d!1447029 (not c!787300)) b!4596976))

(assert (= (and b!4596976 res!1922610) b!4596974))

(assert (= (or b!4596978 b!4596976) bm!320785))

(assert (= (or b!4596978 b!4596976) bm!320786))

(assert (= (or b!4596978 b!4596976) bm!320784))

(assert (= (and d!1447029 res!1922609) b!4596975))

(assert (= (and b!4596975 res!1922608) b!4596977))

(assert (=> b!4596976 m!5421607))

(declare-fun m!5422037 () Bool)

(assert (=> b!4596976 m!5422037))

(assert (=> b!4596976 m!5422037))

(declare-fun m!5422039 () Bool)

(assert (=> b!4596976 m!5422039))

(declare-fun m!5422041 () Bool)

(assert (=> b!4596976 m!5422041))

(declare-fun m!5422043 () Bool)

(assert (=> b!4596976 m!5422043))

(declare-fun m!5422045 () Bool)

(assert (=> b!4596976 m!5422045))

(declare-fun m!5422047 () Bool)

(assert (=> b!4596976 m!5422047))

(declare-fun m!5422049 () Bool)

(assert (=> b!4596976 m!5422049))

(declare-fun m!5422051 () Bool)

(assert (=> b!4596976 m!5422051))

(assert (=> b!4596976 m!5422047))

(declare-fun m!5422053 () Bool)

(assert (=> b!4596976 m!5422053))

(assert (=> b!4596976 m!5422049))

(assert (=> b!4596976 m!5421607))

(declare-fun m!5422055 () Bool)

(assert (=> b!4596976 m!5422055))

(declare-fun m!5422057 () Bool)

(assert (=> bm!320786 m!5422057))

(assert (=> bm!320785 m!5422057))

(declare-fun m!5422059 () Bool)

(assert (=> b!4596977 m!5422059))

(declare-fun m!5422061 () Bool)

(assert (=> d!1447029 m!5422061))

(declare-fun m!5422063 () Bool)

(assert (=> d!1447029 m!5422063))

(assert (=> b!4596974 m!5422049))

(assert (=> bm!320784 m!5421607))

(declare-fun m!5422065 () Bool)

(assert (=> bm!320784 m!5422065))

(declare-fun m!5422067 () Bool)

(assert (=> b!4596975 m!5422067))

(assert (=> b!4596624 d!1447029))

(declare-fun bs!1009704 () Bool)

(declare-fun d!1447031 () Bool)

(assert (= bs!1009704 (and d!1447031 d!1447019)))

(declare-fun lambda!185935 () Int)

(assert (=> bs!1009704 (= lambda!185935 lambda!185929)))

(declare-fun bs!1009705 () Bool)

(assert (= bs!1009705 (and d!1447031 d!1446835)))

(assert (=> bs!1009705 (= lambda!185935 lambda!185850)))

(declare-fun bs!1009706 () Bool)

(assert (= bs!1009706 (and d!1447031 d!1447025)))

(assert (=> bs!1009706 (= lambda!185935 lambda!185930)))

(declare-fun bs!1009707 () Bool)

(assert (= bs!1009707 (and d!1447031 d!1446825)))

(assert (=> bs!1009707 (= lambda!185935 lambda!185849)))

(declare-fun bs!1009708 () Bool)

(assert (= bs!1009708 (and d!1447031 d!1446893)))

(assert (=> bs!1009708 (= lambda!185935 lambda!185867)))

(declare-fun bs!1009709 () Bool)

(assert (= bs!1009709 (and d!1447031 d!1447015)))

(assert (=> bs!1009709 (= lambda!185935 lambda!185924)))

(declare-fun bs!1009710 () Bool)

(assert (= bs!1009710 (and d!1447031 start!458528)))

(assert (=> bs!1009710 (= lambda!185935 lambda!185824)))

(declare-fun bs!1009711 () Bool)

(assert (= bs!1009711 (and d!1447031 d!1446879)))

(assert (=> bs!1009711 (= lambda!185935 lambda!185862)))

(declare-fun bs!1009712 () Bool)

(assert (= bs!1009712 (and d!1447031 d!1446895)))

(assert (=> bs!1009712 (= lambda!185935 lambda!185868)))

(declare-fun bs!1009713 () Bool)

(assert (= bs!1009713 (and d!1447031 d!1446897)))

(assert (=> bs!1009713 (= lambda!185935 lambda!185869)))

(declare-fun bs!1009714 () Bool)

(assert (= bs!1009714 (and d!1447031 d!1446821)))

(assert (=> bs!1009714 (not (= lambda!185935 lambda!185843))))

(declare-fun bs!1009715 () Bool)

(assert (= bs!1009715 (and d!1447031 d!1446907)))

(assert (=> bs!1009715 (= lambda!185935 lambda!185872)))

(declare-fun bs!1009716 () Bool)

(assert (= bs!1009716 (and d!1447031 d!1446771)))

(assert (=> bs!1009716 (= lambda!185935 lambda!185827)))

(declare-fun bs!1009717 () Bool)

(assert (= bs!1009717 (and d!1447031 d!1446883)))

(assert (=> bs!1009717 (= lambda!185935 lambda!185863)))

(declare-fun bs!1009718 () Bool)

(assert (= bs!1009718 (and d!1447031 d!1446813)))

(assert (=> bs!1009718 (not (= lambda!185935 lambda!185842))))

(declare-fun lt!1757069 () ListMap!3905)

(assert (=> d!1447031 (invariantList!1122 (toList!4644 lt!1757069))))

(declare-fun e!2867338 () ListMap!3905)

(assert (=> d!1447031 (= lt!1757069 e!2867338)))

(declare-fun c!787301 () Bool)

(assert (=> d!1447031 (= c!787301 ((_ is Cons!51069) (t!358187 (t!358187 (toList!4643 lm!1477)))))))

(assert (=> d!1447031 (forall!10590 (t!358187 (t!358187 (toList!4643 lm!1477))) lambda!185935)))

(assert (=> d!1447031 (= (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477)))) lt!1757069)))

(declare-fun b!4596979 () Bool)

(assert (=> b!4596979 (= e!2867338 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (t!358187 (t!358187 (toList!4643 lm!1477))))) (extractMap!1374 (t!358187 (t!358187 (t!358187 (toList!4643 lm!1477)))))))))

(declare-fun b!4596980 () Bool)

(assert (=> b!4596980 (= e!2867338 (ListMap!3906 Nil!51068))))

(assert (= (and d!1447031 c!787301) b!4596979))

(assert (= (and d!1447031 (not c!787301)) b!4596980))

(declare-fun m!5422069 () Bool)

(assert (=> d!1447031 m!5422069))

(declare-fun m!5422071 () Bool)

(assert (=> d!1447031 m!5422071))

(declare-fun m!5422073 () Bool)

(assert (=> b!4596979 m!5422073))

(assert (=> b!4596979 m!5422073))

(declare-fun m!5422075 () Bool)

(assert (=> b!4596979 m!5422075))

(assert (=> b!4596624 d!1447031))

(declare-fun bs!1009719 () Bool)

(declare-fun b!4597007 () Bool)

(assert (= bs!1009719 (and b!4597007 b!4596767)))

(declare-fun lambda!185944 () Int)

(assert (=> bs!1009719 (= (= (t!358186 (toList!4644 (extractMap!1374 lt!1756615))) (toList!4644 lt!1756613)) (= lambda!185944 lambda!185882))))

(assert (=> b!4597007 true))

(declare-fun bs!1009720 () Bool)

(declare-fun b!4597002 () Bool)

(assert (= bs!1009720 (and b!4597002 b!4596767)))

(declare-fun lambda!185945 () Int)

(assert (=> bs!1009720 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (toList!4644 lt!1756613)) (= lambda!185945 lambda!185882))))

(declare-fun bs!1009721 () Bool)

(assert (= bs!1009721 (and b!4597002 b!4597007)))

(assert (=> bs!1009721 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!185945 lambda!185944))))

(assert (=> b!4597002 true))

(declare-fun bs!1009722 () Bool)

(declare-fun b!4597001 () Bool)

(assert (= bs!1009722 (and b!4597001 b!4596767)))

(declare-fun lambda!185946 () Int)

(assert (=> bs!1009722 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (toList!4644 lt!1756613)) (= lambda!185946 lambda!185882))))

(declare-fun bs!1009723 () Bool)

(assert (= bs!1009723 (and b!4597001 b!4597007)))

(assert (=> bs!1009723 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!185946 lambda!185944))))

(declare-fun bs!1009724 () Bool)

(assert (= bs!1009724 (and b!4597001 b!4597002)))

(assert (=> bs!1009724 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!185946 lambda!185945))))

(assert (=> b!4597001 true))

(declare-fun bs!1009725 () Bool)

(declare-fun b!4597003 () Bool)

(assert (= bs!1009725 (and b!4597003 b!4596768)))

(declare-fun lambda!185947 () Int)

(assert (=> bs!1009725 (= lambda!185947 lambda!185883)))

(declare-fun b!4596999 () Bool)

(assert (=> b!4596999 false))

(declare-fun e!2867350 () Unit!107861)

(declare-fun Unit!107940 () Unit!107861)

(assert (=> b!4596999 (= e!2867350 Unit!107940)))

(declare-fun b!4597000 () Bool)

(declare-fun res!1922617 () Bool)

(declare-fun e!2867349 () Bool)

(assert (=> b!4597000 (=> (not res!1922617) (not e!2867349))))

(declare-fun lt!1757090 () List!51195)

(assert (=> b!4597000 (= res!1922617 (= (length!476 lt!1757090) (length!477 (toList!4644 (extractMap!1374 lt!1756615)))))))

(declare-fun res!1922618 () Bool)

(assert (=> b!4597001 (=> (not res!1922618) (not e!2867349))))

(assert (=> b!4597001 (= res!1922618 (forall!10594 lt!1757090 lambda!185946))))

(declare-fun e!2867348 () List!51195)

(assert (=> b!4597002 (= e!2867348 (Cons!51071 (_1!29147 (h!57030 (toList!4644 (extractMap!1374 lt!1756615)))) (getKeysList!571 (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))))))

(declare-fun c!787308 () Bool)

(assert (=> b!4597002 (= c!787308 (containsKey!2150 (t!358186 (toList!4644 (extractMap!1374 lt!1756615))) (_1!29147 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))))))))

(declare-fun lt!1757088 () Unit!107861)

(assert (=> b!4597002 (= lt!1757088 e!2867350)))

(declare-fun c!787309 () Bool)

(assert (=> b!4597002 (= c!787309 (contains!14013 (getKeysList!571 (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (_1!29147 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))))))))

(declare-fun lt!1757086 () Unit!107861)

(declare-fun e!2867347 () Unit!107861)

(assert (=> b!4597002 (= lt!1757086 e!2867347)))

(declare-fun lt!1757084 () List!51195)

(assert (=> b!4597002 (= lt!1757084 (getKeysList!571 (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))))))

(declare-fun lt!1757085 () Unit!107861)

(declare-fun lemmaForallContainsAddHeadPreserves!230 (List!51192 List!51195 tuple2!51706) Unit!107861)

(assert (=> b!4597002 (= lt!1757085 (lemmaForallContainsAddHeadPreserves!230 (t!358186 (toList!4644 (extractMap!1374 lt!1756615))) lt!1757084 (h!57030 (toList!4644 (extractMap!1374 lt!1756615)))))))

(assert (=> b!4597002 (forall!10594 lt!1757084 lambda!185945)))

(declare-fun lt!1757087 () Unit!107861)

(assert (=> b!4597002 (= lt!1757087 lt!1757085)))

(declare-fun b!4597004 () Bool)

(declare-fun Unit!107941 () Unit!107861)

(assert (=> b!4597004 (= e!2867350 Unit!107941)))

(declare-fun b!4597005 () Bool)

(assert (=> b!4597005 (= e!2867348 Nil!51071)))

(declare-fun d!1447033 () Bool)

(assert (=> d!1447033 e!2867349))

(declare-fun res!1922619 () Bool)

(assert (=> d!1447033 (=> (not res!1922619) (not e!2867349))))

(assert (=> d!1447033 (= res!1922619 (noDuplicate!810 lt!1757090))))

(assert (=> d!1447033 (= lt!1757090 e!2867348)))

(declare-fun c!787310 () Bool)

(assert (=> d!1447033 (= c!787310 ((_ is Cons!51068) (toList!4644 (extractMap!1374 lt!1756615))))))

(assert (=> d!1447033 (invariantList!1122 (toList!4644 (extractMap!1374 lt!1756615)))))

(assert (=> d!1447033 (= (getKeysList!571 (toList!4644 (extractMap!1374 lt!1756615))) lt!1757090)))

(assert (=> b!4597003 (= e!2867349 (= (content!8640 lt!1757090) (content!8640 (map!11280 (toList!4644 (extractMap!1374 lt!1756615)) lambda!185947))))))

(declare-fun b!4597006 () Bool)

(declare-fun Unit!107943 () Unit!107861)

(assert (=> b!4597006 (= e!2867347 Unit!107943)))

(assert (=> b!4597007 false))

(declare-fun lt!1757089 () Unit!107861)

(declare-fun forallContained!2847 (List!51195 Int K!12435) Unit!107861)

(assert (=> b!4597007 (= lt!1757089 (forallContained!2847 (getKeysList!571 (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) lambda!185944 (_1!29147 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))))))))

(declare-fun Unit!107944 () Unit!107861)

(assert (=> b!4597007 (= e!2867347 Unit!107944)))

(assert (= (and d!1447033 c!787310) b!4597002))

(assert (= (and d!1447033 (not c!787310)) b!4597005))

(assert (= (and b!4597002 c!787308) b!4596999))

(assert (= (and b!4597002 (not c!787308)) b!4597004))

(assert (= (and b!4597002 c!787309) b!4597007))

(assert (= (and b!4597002 (not c!787309)) b!4597006))

(assert (= (and d!1447033 res!1922619) b!4597000))

(assert (= (and b!4597000 res!1922617) b!4597001))

(assert (= (and b!4597001 res!1922618) b!4597003))

(declare-fun m!5422077 () Bool)

(assert (=> b!4597007 m!5422077))

(assert (=> b!4597007 m!5422077))

(declare-fun m!5422079 () Bool)

(assert (=> b!4597007 m!5422079))

(declare-fun m!5422081 () Bool)

(assert (=> d!1447033 m!5422081))

(declare-fun m!5422083 () Bool)

(assert (=> d!1447033 m!5422083))

(declare-fun m!5422085 () Bool)

(assert (=> b!4597000 m!5422085))

(declare-fun m!5422087 () Bool)

(assert (=> b!4597000 m!5422087))

(declare-fun m!5422089 () Bool)

(assert (=> b!4597001 m!5422089))

(assert (=> b!4597002 m!5422077))

(declare-fun m!5422091 () Bool)

(assert (=> b!4597002 m!5422091))

(declare-fun m!5422093 () Bool)

(assert (=> b!4597002 m!5422093))

(assert (=> b!4597002 m!5422077))

(declare-fun m!5422095 () Bool)

(assert (=> b!4597002 m!5422095))

(declare-fun m!5422097 () Bool)

(assert (=> b!4597002 m!5422097))

(declare-fun m!5422099 () Bool)

(assert (=> b!4597003 m!5422099))

(declare-fun m!5422101 () Bool)

(assert (=> b!4597003 m!5422101))

(assert (=> b!4597003 m!5422101))

(declare-fun m!5422103 () Bool)

(assert (=> b!4597003 m!5422103))

(assert (=> b!4596595 d!1447033))

(declare-fun d!1447035 () Bool)

(declare-fun res!1922624 () Bool)

(declare-fun e!2867355 () Bool)

(assert (=> d!1447035 (=> res!1922624 e!2867355)))

(assert (=> d!1447035 (= res!1922624 ((_ is Nil!51068) newBucket!178))))

(assert (=> d!1447035 (= (forall!10592 newBucket!178 lambda!185866) e!2867355)))

(declare-fun b!4597014 () Bool)

(declare-fun e!2867356 () Bool)

(assert (=> b!4597014 (= e!2867355 e!2867356)))

(declare-fun res!1922625 () Bool)

(assert (=> b!4597014 (=> (not res!1922625) (not e!2867356))))

(declare-fun dynLambda!21393 (Int tuple2!51706) Bool)

(assert (=> b!4597014 (= res!1922625 (dynLambda!21393 lambda!185866 (h!57030 newBucket!178)))))

(declare-fun b!4597015 () Bool)

(assert (=> b!4597015 (= e!2867356 (forall!10592 (t!358186 newBucket!178) lambda!185866))))

(assert (= (and d!1447035 (not res!1922624)) b!4597014))

(assert (= (and b!4597014 res!1922625) b!4597015))

(declare-fun b_lambda!169199 () Bool)

(assert (=> (not b_lambda!169199) (not b!4597014)))

(declare-fun m!5422105 () Bool)

(assert (=> b!4597014 m!5422105))

(declare-fun m!5422107 () Bool)

(assert (=> b!4597015 m!5422107))

(assert (=> d!1446887 d!1447035))

(declare-fun d!1447037 () Bool)

(declare-fun res!1922626 () Bool)

(declare-fun e!2867357 () Bool)

(assert (=> d!1447037 (=> res!1922626 e!2867357)))

(assert (=> d!1447037 (= res!1922626 (not ((_ is Cons!51068) (t!358186 newBucket!178))))))

(assert (=> d!1447037 (= (noDuplicateKeys!1314 (t!358186 newBucket!178)) e!2867357)))

(declare-fun b!4597016 () Bool)

(declare-fun e!2867358 () Bool)

(assert (=> b!4597016 (= e!2867357 e!2867358)))

(declare-fun res!1922627 () Bool)

(assert (=> b!4597016 (=> (not res!1922627) (not e!2867358))))

(assert (=> b!4597016 (= res!1922627 (not (containsKey!2146 (t!358186 (t!358186 newBucket!178)) (_1!29147 (h!57030 (t!358186 newBucket!178))))))))

(declare-fun b!4597017 () Bool)

(assert (=> b!4597017 (= e!2867358 (noDuplicateKeys!1314 (t!358186 (t!358186 newBucket!178))))))

(assert (= (and d!1447037 (not res!1922626)) b!4597016))

(assert (= (and b!4597016 res!1922627) b!4597017))

(declare-fun m!5422109 () Bool)

(assert (=> b!4597016 m!5422109))

(declare-fun m!5422111 () Bool)

(assert (=> b!4597017 m!5422111))

(assert (=> b!4596650 d!1447037))

(declare-fun d!1447039 () Bool)

(declare-fun res!1922628 () Bool)

(declare-fun e!2867359 () Bool)

(assert (=> d!1447039 (=> res!1922628 e!2867359)))

(assert (=> d!1447039 (= res!1922628 (and ((_ is Cons!51068) lt!1756684) (= (_1!29147 (h!57030 lt!1756684)) key!3287)))))

(assert (=> d!1447039 (= (containsKey!2146 lt!1756684 key!3287) e!2867359)))

(declare-fun b!4597018 () Bool)

(declare-fun e!2867360 () Bool)

(assert (=> b!4597018 (= e!2867359 e!2867360)))

(declare-fun res!1922629 () Bool)

(assert (=> b!4597018 (=> (not res!1922629) (not e!2867360))))

(assert (=> b!4597018 (= res!1922629 ((_ is Cons!51068) lt!1756684))))

(declare-fun b!4597019 () Bool)

(assert (=> b!4597019 (= e!2867360 (containsKey!2146 (t!358186 lt!1756684) key!3287))))

(assert (= (and d!1447039 (not res!1922628)) b!4597018))

(assert (= (and b!4597018 res!1922629) b!4597019))

(declare-fun m!5422113 () Bool)

(assert (=> b!4597019 m!5422113))

(assert (=> d!1446791 d!1447039))

(declare-fun d!1447041 () Bool)

(declare-fun res!1922630 () Bool)

(declare-fun e!2867361 () Bool)

(assert (=> d!1447041 (=> res!1922630 e!2867361)))

(assert (=> d!1447041 (= res!1922630 (not ((_ is Cons!51068) lt!1756619)))))

(assert (=> d!1447041 (= (noDuplicateKeys!1314 lt!1756619) e!2867361)))

(declare-fun b!4597020 () Bool)

(declare-fun e!2867362 () Bool)

(assert (=> b!4597020 (= e!2867361 e!2867362)))

(declare-fun res!1922631 () Bool)

(assert (=> b!4597020 (=> (not res!1922631) (not e!2867362))))

(assert (=> b!4597020 (= res!1922631 (not (containsKey!2146 (t!358186 lt!1756619) (_1!29147 (h!57030 lt!1756619)))))))

(declare-fun b!4597021 () Bool)

(assert (=> b!4597021 (= e!2867362 (noDuplicateKeys!1314 (t!358186 lt!1756619)))))

(assert (= (and d!1447041 (not res!1922630)) b!4597020))

(assert (= (and b!4597020 res!1922631) b!4597021))

(declare-fun m!5422115 () Bool)

(assert (=> b!4597020 m!5422115))

(declare-fun m!5422117 () Bool)

(assert (=> b!4597021 m!5422117))

(assert (=> d!1446791 d!1447041))

(declare-fun d!1447043 () Bool)

(declare-fun lt!1757091 () Bool)

(assert (=> d!1447043 (= lt!1757091 (select (content!8639 (toList!4643 lt!1756757)) lt!1756618))))

(declare-fun e!2867363 () Bool)

(assert (=> d!1447043 (= lt!1757091 e!2867363)))

(declare-fun res!1922632 () Bool)

(assert (=> d!1447043 (=> (not res!1922632) (not e!2867363))))

(assert (=> d!1447043 (= res!1922632 ((_ is Cons!51069) (toList!4643 lt!1756757)))))

(assert (=> d!1447043 (= (contains!14009 (toList!4643 lt!1756757) lt!1756618) lt!1757091)))

(declare-fun b!4597022 () Bool)

(declare-fun e!2867364 () Bool)

(assert (=> b!4597022 (= e!2867363 e!2867364)))

(declare-fun res!1922633 () Bool)

(assert (=> b!4597022 (=> res!1922633 e!2867364)))

(assert (=> b!4597022 (= res!1922633 (= (h!57031 (toList!4643 lt!1756757)) lt!1756618))))

(declare-fun b!4597023 () Bool)

(assert (=> b!4597023 (= e!2867364 (contains!14009 (t!358187 (toList!4643 lt!1756757)) lt!1756618))))

(assert (= (and d!1447043 res!1922632) b!4597022))

(assert (= (and b!4597022 (not res!1922633)) b!4597023))

(declare-fun m!5422119 () Bool)

(assert (=> d!1447043 m!5422119))

(declare-fun m!5422121 () Bool)

(assert (=> d!1447043 m!5422121))

(declare-fun m!5422123 () Bool)

(assert (=> b!4597023 m!5422123))

(assert (=> b!4596538 d!1447043))

(declare-fun d!1447045 () Bool)

(declare-fun noDuplicatedKeys!324 (List!51192) Bool)

(assert (=> d!1447045 (= (invariantList!1122 (toList!4644 lt!1756814)) (noDuplicatedKeys!324 (toList!4644 lt!1756814)))))

(declare-fun bs!1009726 () Bool)

(assert (= bs!1009726 d!1447045))

(declare-fun m!5422125 () Bool)

(assert (=> bs!1009726 m!5422125))

(assert (=> d!1446897 d!1447045))

(declare-fun d!1447047 () Bool)

(declare-fun res!1922634 () Bool)

(declare-fun e!2867365 () Bool)

(assert (=> d!1447047 (=> res!1922634 e!2867365)))

(assert (=> d!1447047 (= res!1922634 ((_ is Nil!51069) (toList!4643 lt!1756611)))))

(assert (=> d!1447047 (= (forall!10590 (toList!4643 lt!1756611) lambda!185869) e!2867365)))

(declare-fun b!4597024 () Bool)

(declare-fun e!2867366 () Bool)

(assert (=> b!4597024 (= e!2867365 e!2867366)))

(declare-fun res!1922635 () Bool)

(assert (=> b!4597024 (=> (not res!1922635) (not e!2867366))))

(assert (=> b!4597024 (= res!1922635 (dynLambda!21392 lambda!185869 (h!57031 (toList!4643 lt!1756611))))))

(declare-fun b!4597025 () Bool)

(assert (=> b!4597025 (= e!2867366 (forall!10590 (t!358187 (toList!4643 lt!1756611)) lambda!185869))))

(assert (= (and d!1447047 (not res!1922634)) b!4597024))

(assert (= (and b!4597024 res!1922635) b!4597025))

(declare-fun b_lambda!169201 () Bool)

(assert (=> (not b_lambda!169201) (not b!4597024)))

(declare-fun m!5422127 () Bool)

(assert (=> b!4597024 m!5422127))

(declare-fun m!5422129 () Bool)

(assert (=> b!4597025 m!5422129))

(assert (=> d!1446897 d!1447047))

(declare-fun d!1447049 () Bool)

(declare-fun lt!1757092 () Bool)

(assert (=> d!1447049 (= lt!1757092 (select (content!8639 (t!358187 (toList!4643 lm!1477))) lt!1756614))))

(declare-fun e!2867367 () Bool)

(assert (=> d!1447049 (= lt!1757092 e!2867367)))

(declare-fun res!1922636 () Bool)

(assert (=> d!1447049 (=> (not res!1922636) (not e!2867367))))

(assert (=> d!1447049 (= res!1922636 ((_ is Cons!51069) (t!358187 (toList!4643 lm!1477))))))

(assert (=> d!1447049 (= (contains!14009 (t!358187 (toList!4643 lm!1477)) lt!1756614) lt!1757092)))

(declare-fun b!4597026 () Bool)

(declare-fun e!2867368 () Bool)

(assert (=> b!4597026 (= e!2867367 e!2867368)))

(declare-fun res!1922637 () Bool)

(assert (=> b!4597026 (=> res!1922637 e!2867368)))

(assert (=> b!4597026 (= res!1922637 (= (h!57031 (t!358187 (toList!4643 lm!1477))) lt!1756614))))

(declare-fun b!4597027 () Bool)

(assert (=> b!4597027 (= e!2867368 (contains!14009 (t!358187 (t!358187 (toList!4643 lm!1477))) lt!1756614))))

(assert (= (and d!1447049 res!1922636) b!4597026))

(assert (= (and b!4597026 (not res!1922637)) b!4597027))

(assert (=> d!1447049 m!5421737))

(declare-fun m!5422131 () Bool)

(assert (=> d!1447049 m!5422131))

(declare-fun m!5422133 () Bool)

(assert (=> b!4597027 m!5422133))

(assert (=> b!4596380 d!1447049))

(declare-fun d!1447051 () Bool)

(assert (=> d!1447051 (= (invariantList!1122 (toList!4644 lt!1756711)) (noDuplicatedKeys!324 (toList!4644 lt!1756711)))))

(declare-fun bs!1009727 () Bool)

(assert (= bs!1009727 d!1447051))

(declare-fun m!5422135 () Bool)

(assert (=> bs!1009727 m!5422135))

(assert (=> d!1446825 d!1447051))

(declare-fun d!1447053 () Bool)

(declare-fun res!1922638 () Bool)

(declare-fun e!2867369 () Bool)

(assert (=> d!1447053 (=> res!1922638 e!2867369)))

(assert (=> d!1447053 (= res!1922638 ((_ is Nil!51069) (Cons!51069 lt!1756618 Nil!51069)))))

(assert (=> d!1447053 (= (forall!10590 (Cons!51069 lt!1756618 Nil!51069) lambda!185849) e!2867369)))

(declare-fun b!4597028 () Bool)

(declare-fun e!2867370 () Bool)

(assert (=> b!4597028 (= e!2867369 e!2867370)))

(declare-fun res!1922639 () Bool)

(assert (=> b!4597028 (=> (not res!1922639) (not e!2867370))))

(assert (=> b!4597028 (= res!1922639 (dynLambda!21392 lambda!185849 (h!57031 (Cons!51069 lt!1756618 Nil!51069))))))

(declare-fun b!4597029 () Bool)

(assert (=> b!4597029 (= e!2867370 (forall!10590 (t!358187 (Cons!51069 lt!1756618 Nil!51069)) lambda!185849))))

(assert (= (and d!1447053 (not res!1922638)) b!4597028))

(assert (= (and b!4597028 res!1922639) b!4597029))

(declare-fun b_lambda!169203 () Bool)

(assert (=> (not b_lambda!169203) (not b!4597028)))

(declare-fun m!5422137 () Bool)

(assert (=> b!4597028 m!5422137))

(declare-fun m!5422139 () Bool)

(assert (=> b!4597029 m!5422139))

(assert (=> d!1446825 d!1447053))

(declare-fun d!1447055 () Bool)

(assert (=> d!1447055 (= (invariantList!1122 (toList!4644 lt!1756800)) (noDuplicatedKeys!324 (toList!4644 lt!1756800)))))

(declare-fun bs!1009728 () Bool)

(assert (= bs!1009728 d!1447055))

(declare-fun m!5422141 () Bool)

(assert (=> bs!1009728 m!5422141))

(assert (=> d!1446883 d!1447055))

(declare-fun d!1447057 () Bool)

(declare-fun res!1922640 () Bool)

(declare-fun e!2867371 () Bool)

(assert (=> d!1447057 (=> res!1922640 e!2867371)))

(assert (=> d!1447057 (= res!1922640 ((_ is Nil!51069) lt!1756615))))

(assert (=> d!1447057 (= (forall!10590 lt!1756615 lambda!185863) e!2867371)))

(declare-fun b!4597030 () Bool)

(declare-fun e!2867372 () Bool)

(assert (=> b!4597030 (= e!2867371 e!2867372)))

(declare-fun res!1922641 () Bool)

(assert (=> b!4597030 (=> (not res!1922641) (not e!2867372))))

(assert (=> b!4597030 (= res!1922641 (dynLambda!21392 lambda!185863 (h!57031 lt!1756615)))))

(declare-fun b!4597031 () Bool)

(assert (=> b!4597031 (= e!2867372 (forall!10590 (t!358187 lt!1756615) lambda!185863))))

(assert (= (and d!1447057 (not res!1922640)) b!4597030))

(assert (= (and b!4597030 res!1922641) b!4597031))

(declare-fun b_lambda!169205 () Bool)

(assert (=> (not b_lambda!169205) (not b!4597030)))

(declare-fun m!5422143 () Bool)

(assert (=> b!4597030 m!5422143))

(declare-fun m!5422145 () Bool)

(assert (=> b!4597031 m!5422145))

(assert (=> d!1446883 d!1447057))

(declare-fun d!1447059 () Bool)

(declare-fun lt!1757093 () Bool)

(assert (=> d!1447059 (= lt!1757093 (select (content!8640 e!2867116) key!3287))))

(declare-fun e!2867374 () Bool)

(assert (=> d!1447059 (= lt!1757093 e!2867374)))

(declare-fun res!1922642 () Bool)

(assert (=> d!1447059 (=> (not res!1922642) (not e!2867374))))

(assert (=> d!1447059 (= res!1922642 ((_ is Cons!51071) e!2867116))))

(assert (=> d!1447059 (= (contains!14013 e!2867116 key!3287) lt!1757093)))

(declare-fun b!4597032 () Bool)

(declare-fun e!2867373 () Bool)

(assert (=> b!4597032 (= e!2867374 e!2867373)))

(declare-fun res!1922643 () Bool)

(assert (=> b!4597032 (=> res!1922643 e!2867373)))

(assert (=> b!4597032 (= res!1922643 (= (h!57035 e!2867116) key!3287))))

(declare-fun b!4597033 () Bool)

(assert (=> b!4597033 (= e!2867373 (contains!14013 (t!358189 e!2867116) key!3287))))

(assert (= (and d!1447059 res!1922642) b!4597032))

(assert (= (and b!4597032 (not res!1922643)) b!4597033))

(declare-fun m!5422147 () Bool)

(assert (=> d!1447059 m!5422147))

(declare-fun m!5422149 () Bool)

(assert (=> d!1447059 m!5422149))

(declare-fun m!5422151 () Bool)

(assert (=> b!4597033 m!5422151))

(assert (=> bm!320732 d!1447059))

(declare-fun d!1447061 () Bool)

(assert (=> d!1447061 (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))

(declare-fun lt!1757094 () Unit!107861)

(assert (=> d!1447061 (= lt!1757094 (choose!30790 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))

(assert (=> d!1447061 (invariantList!1122 (toList!4644 (extractMap!1374 lt!1756615)))))

(assert (=> d!1447061 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (toList!4644 (extractMap!1374 lt!1756615)) key!3287) lt!1757094)))

(declare-fun bs!1009729 () Bool)

(assert (= bs!1009729 d!1447061))

(assert (=> bs!1009729 m!5421527))

(assert (=> bs!1009729 m!5421527))

(assert (=> bs!1009729 m!5421529))

(declare-fun m!5422153 () Bool)

(assert (=> bs!1009729 m!5422153))

(assert (=> bs!1009729 m!5422083))

(assert (=> b!4596593 d!1447061))

(declare-fun d!1447063 () Bool)

(assert (=> d!1447063 (= (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 lt!1756615)) key!3287)) (not (isEmpty!28860 (getValueByKey!1307 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))))

(declare-fun bs!1009730 () Bool)

(assert (= bs!1009730 d!1447063))

(assert (=> bs!1009730 m!5421527))

(declare-fun m!5422155 () Bool)

(assert (=> bs!1009730 m!5422155))

(assert (=> b!4596593 d!1447063))

(declare-fun b!4597034 () Bool)

(declare-fun e!2867375 () Option!11387)

(assert (=> b!4597034 (= e!2867375 (Some!11386 (_2!29147 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))))))))

(declare-fun b!4597037 () Bool)

(declare-fun e!2867376 () Option!11387)

(assert (=> b!4597037 (= e!2867376 None!11386)))

(declare-fun d!1447065 () Bool)

(declare-fun c!787311 () Bool)

(assert (=> d!1447065 (= c!787311 (and ((_ is Cons!51068) (toList!4644 (extractMap!1374 lt!1756615))) (= (_1!29147 (h!57030 (toList!4644 (extractMap!1374 lt!1756615)))) key!3287)))))

(assert (=> d!1447065 (= (getValueByKey!1307 (toList!4644 (extractMap!1374 lt!1756615)) key!3287) e!2867375)))

(declare-fun b!4597035 () Bool)

(assert (=> b!4597035 (= e!2867375 e!2867376)))

(declare-fun c!787312 () Bool)

(assert (=> b!4597035 (= c!787312 (and ((_ is Cons!51068) (toList!4644 (extractMap!1374 lt!1756615))) (not (= (_1!29147 (h!57030 (toList!4644 (extractMap!1374 lt!1756615)))) key!3287))))))

(declare-fun b!4597036 () Bool)

(assert (=> b!4597036 (= e!2867376 (getValueByKey!1307 (t!358186 (toList!4644 (extractMap!1374 lt!1756615))) key!3287))))

(assert (= (and d!1447065 c!787311) b!4597034))

(assert (= (and d!1447065 (not c!787311)) b!4597035))

(assert (= (and b!4597035 c!787312) b!4597036))

(assert (= (and b!4597035 (not c!787312)) b!4597037))

(declare-fun m!5422157 () Bool)

(assert (=> b!4597036 m!5422157))

(assert (=> b!4596593 d!1447065))

(declare-fun d!1447067 () Bool)

(assert (=> d!1447067 (contains!14013 (getKeysList!571 (toList!4644 (extractMap!1374 lt!1756615))) key!3287)))

(declare-fun lt!1757095 () Unit!107861)

(assert (=> d!1447067 (= lt!1757095 (choose!30791 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))

(assert (=> d!1447067 (invariantList!1122 (toList!4644 (extractMap!1374 lt!1756615)))))

(assert (=> d!1447067 (= (lemmaInListThenGetKeysListContains!567 (toList!4644 (extractMap!1374 lt!1756615)) key!3287) lt!1757095)))

(declare-fun bs!1009731 () Bool)

(assert (= bs!1009731 d!1447067))

(assert (=> bs!1009731 m!5421541))

(assert (=> bs!1009731 m!5421541))

(declare-fun m!5422159 () Bool)

(assert (=> bs!1009731 m!5422159))

(declare-fun m!5422161 () Bool)

(assert (=> bs!1009731 m!5422161))

(assert (=> bs!1009731 m!5422083))

(assert (=> b!4596593 d!1447067))

(declare-fun d!1447069 () Bool)

(assert (=> d!1447069 (= (invariantList!1122 (toList!4644 lt!1756812)) (noDuplicatedKeys!324 (toList!4644 lt!1756812)))))

(declare-fun bs!1009732 () Bool)

(assert (= bs!1009732 d!1447069))

(declare-fun m!5422163 () Bool)

(assert (=> bs!1009732 m!5422163))

(assert (=> d!1446893 d!1447069))

(declare-fun d!1447071 () Bool)

(declare-fun res!1922644 () Bool)

(declare-fun e!2867377 () Bool)

(assert (=> d!1447071 (=> res!1922644 e!2867377)))

(assert (=> d!1447071 (= res!1922644 ((_ is Nil!51069) (toList!4643 lm!1477)))))

(assert (=> d!1447071 (= (forall!10590 (toList!4643 lm!1477) lambda!185867) e!2867377)))

(declare-fun b!4597038 () Bool)

(declare-fun e!2867378 () Bool)

(assert (=> b!4597038 (= e!2867377 e!2867378)))

(declare-fun res!1922645 () Bool)

(assert (=> b!4597038 (=> (not res!1922645) (not e!2867378))))

(assert (=> b!4597038 (= res!1922645 (dynLambda!21392 lambda!185867 (h!57031 (toList!4643 lm!1477))))))

(declare-fun b!4597039 () Bool)

(assert (=> b!4597039 (= e!2867378 (forall!10590 (t!358187 (toList!4643 lm!1477)) lambda!185867))))

(assert (= (and d!1447071 (not res!1922644)) b!4597038))

(assert (= (and b!4597038 res!1922645) b!4597039))

(declare-fun b_lambda!169207 () Bool)

(assert (=> (not b_lambda!169207) (not b!4597038)))

(declare-fun m!5422165 () Bool)

(assert (=> b!4597038 m!5422165))

(declare-fun m!5422167 () Bool)

(assert (=> b!4597039 m!5422167))

(assert (=> d!1446893 d!1447071))

(declare-fun bs!1009733 () Bool)

(declare-fun b!4597044 () Bool)

(assert (= bs!1009733 (and b!4597044 b!4596965)))

(declare-fun lambda!185948 () Int)

(assert (=> bs!1009733 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185948 lambda!185926))))

(declare-fun bs!1009734 () Bool)

(assert (= bs!1009734 (and b!4597044 d!1447017)))

(assert (=> bs!1009734 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757035) (= lambda!185948 lambda!185928))))

(assert (=> bs!1009733 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757044) (= lambda!185948 lambda!185927))))

(declare-fun bs!1009735 () Bool)

(assert (= bs!1009735 (and b!4597044 b!4596978)))

(assert (=> bs!1009735 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185948 lambda!185931))))

(declare-fun bs!1009736 () Bool)

(assert (= bs!1009736 (and b!4597044 b!4596956)))

(assert (=> bs!1009736 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757022) (= lambda!185948 lambda!185922))))

(declare-fun bs!1009737 () Bool)

(assert (= bs!1009737 (and b!4597044 b!4596967)))

(assert (=> bs!1009737 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185948 lambda!185925))))

(declare-fun bs!1009738 () Bool)

(assert (= bs!1009738 (and b!4597044 b!4596976)))

(assert (=> bs!1009738 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185948 lambda!185932))))

(assert (=> bs!1009736 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185948 lambda!185921))))

(declare-fun bs!1009739 () Bool)

(assert (= bs!1009739 (and b!4597044 d!1446973)))

(assert (=> bs!1009739 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757013) (= lambda!185948 lambda!185923))))

(declare-fun bs!1009740 () Bool)

(assert (= bs!1009740 (and b!4597044 d!1447029)))

(assert (=> bs!1009740 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757058) (= lambda!185948 lambda!185934))))

(assert (=> bs!1009738 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757067) (= lambda!185948 lambda!185933))))

(declare-fun bs!1009741 () Bool)

(assert (= bs!1009741 (and b!4597044 d!1446887)))

(assert (=> bs!1009741 (not (= lambda!185948 lambda!185866))))

(declare-fun bs!1009742 () Bool)

(assert (= bs!1009742 (and b!4597044 b!4596958)))

(assert (=> bs!1009742 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185948 lambda!185920))))

(assert (=> b!4597044 true))

(declare-fun bs!1009743 () Bool)

(declare-fun b!4597042 () Bool)

(assert (= bs!1009743 (and b!4597042 b!4596965)))

(declare-fun lambda!185949 () Int)

(assert (=> bs!1009743 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185949 lambda!185926))))

(declare-fun bs!1009744 () Bool)

(assert (= bs!1009744 (and b!4597042 d!1447017)))

(assert (=> bs!1009744 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757035) (= lambda!185949 lambda!185928))))

(declare-fun bs!1009745 () Bool)

(assert (= bs!1009745 (and b!4597042 b!4597044)))

(assert (=> bs!1009745 (= lambda!185949 lambda!185948)))

(assert (=> bs!1009743 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757044) (= lambda!185949 lambda!185927))))

(declare-fun bs!1009746 () Bool)

(assert (= bs!1009746 (and b!4597042 b!4596978)))

(assert (=> bs!1009746 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185949 lambda!185931))))

(declare-fun bs!1009747 () Bool)

(assert (= bs!1009747 (and b!4597042 b!4596956)))

(assert (=> bs!1009747 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757022) (= lambda!185949 lambda!185922))))

(declare-fun bs!1009748 () Bool)

(assert (= bs!1009748 (and b!4597042 b!4596967)))

(assert (=> bs!1009748 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185949 lambda!185925))))

(declare-fun bs!1009749 () Bool)

(assert (= bs!1009749 (and b!4597042 b!4596976)))

(assert (=> bs!1009749 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185949 lambda!185932))))

(assert (=> bs!1009747 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185949 lambda!185921))))

(declare-fun bs!1009750 () Bool)

(assert (= bs!1009750 (and b!4597042 d!1446973)))

(assert (=> bs!1009750 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757013) (= lambda!185949 lambda!185923))))

(declare-fun bs!1009751 () Bool)

(assert (= bs!1009751 (and b!4597042 d!1447029)))

(assert (=> bs!1009751 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757058) (= lambda!185949 lambda!185934))))

(assert (=> bs!1009749 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757067) (= lambda!185949 lambda!185933))))

(declare-fun bs!1009752 () Bool)

(assert (= bs!1009752 (and b!4597042 d!1446887)))

(assert (=> bs!1009752 (not (= lambda!185949 lambda!185866))))

(declare-fun bs!1009753 () Bool)

(assert (= bs!1009753 (and b!4597042 b!4596958)))

(assert (=> bs!1009753 (= (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185949 lambda!185920))))

(assert (=> b!4597042 true))

(declare-fun lambda!185950 () Int)

(declare-fun lt!1757115 () ListMap!3905)

(assert (=> bs!1009743 (= (= lt!1757115 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185950 lambda!185926))))

(assert (=> bs!1009744 (= (= lt!1757115 lt!1757035) (= lambda!185950 lambda!185928))))

(assert (=> bs!1009745 (= (= lt!1757115 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!185950 lambda!185948))))

(assert (=> bs!1009743 (= (= lt!1757115 lt!1757044) (= lambda!185950 lambda!185927))))

(assert (=> bs!1009746 (= (= lt!1757115 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185950 lambda!185931))))

(assert (=> bs!1009747 (= (= lt!1757115 lt!1757022) (= lambda!185950 lambda!185922))))

(assert (=> bs!1009748 (= (= lt!1757115 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185950 lambda!185925))))

(assert (=> bs!1009749 (= (= lt!1757115 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185950 lambda!185932))))

(assert (=> bs!1009747 (= (= lt!1757115 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185950 lambda!185921))))

(assert (=> bs!1009750 (= (= lt!1757115 lt!1757013) (= lambda!185950 lambda!185923))))

(assert (=> bs!1009751 (= (= lt!1757115 lt!1757058) (= lambda!185950 lambda!185934))))

(assert (=> bs!1009749 (= (= lt!1757115 lt!1757067) (= lambda!185950 lambda!185933))))

(assert (=> bs!1009752 (not (= lambda!185950 lambda!185866))))

(assert (=> b!4597042 (= (= lt!1757115 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!185950 lambda!185949))))

(assert (=> bs!1009753 (= (= lt!1757115 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185950 lambda!185920))))

(assert (=> b!4597042 true))

(declare-fun bs!1009754 () Bool)

(declare-fun d!1447073 () Bool)

(assert (= bs!1009754 (and d!1447073 b!4596965)))

(declare-fun lt!1757106 () ListMap!3905)

(declare-fun lambda!185955 () Int)

(assert (=> bs!1009754 (= (= lt!1757106 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185955 lambda!185926))))

(declare-fun bs!1009755 () Bool)

(assert (= bs!1009755 (and d!1447073 d!1447017)))

(assert (=> bs!1009755 (= (= lt!1757106 lt!1757035) (= lambda!185955 lambda!185928))))

(declare-fun bs!1009756 () Bool)

(assert (= bs!1009756 (and d!1447073 b!4597042)))

(assert (=> bs!1009756 (= (= lt!1757106 lt!1757115) (= lambda!185955 lambda!185950))))

(declare-fun bs!1009757 () Bool)

(assert (= bs!1009757 (and d!1447073 b!4597044)))

(assert (=> bs!1009757 (= (= lt!1757106 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!185955 lambda!185948))))

(assert (=> bs!1009754 (= (= lt!1757106 lt!1757044) (= lambda!185955 lambda!185927))))

(declare-fun bs!1009758 () Bool)

(assert (= bs!1009758 (and d!1447073 b!4596978)))

(assert (=> bs!1009758 (= (= lt!1757106 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185955 lambda!185931))))

(declare-fun bs!1009759 () Bool)

(assert (= bs!1009759 (and d!1447073 b!4596956)))

(assert (=> bs!1009759 (= (= lt!1757106 lt!1757022) (= lambda!185955 lambda!185922))))

(declare-fun bs!1009760 () Bool)

(assert (= bs!1009760 (and d!1447073 b!4596967)))

(assert (=> bs!1009760 (= (= lt!1757106 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!185955 lambda!185925))))

(declare-fun bs!1009761 () Bool)

(assert (= bs!1009761 (and d!1447073 b!4596976)))

(assert (=> bs!1009761 (= (= lt!1757106 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!185955 lambda!185932))))

(assert (=> bs!1009759 (= (= lt!1757106 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185955 lambda!185921))))

(declare-fun bs!1009762 () Bool)

(assert (= bs!1009762 (and d!1447073 d!1446973)))

(assert (=> bs!1009762 (= (= lt!1757106 lt!1757013) (= lambda!185955 lambda!185923))))

(declare-fun bs!1009763 () Bool)

(assert (= bs!1009763 (and d!1447073 d!1447029)))

(assert (=> bs!1009763 (= (= lt!1757106 lt!1757058) (= lambda!185955 lambda!185934))))

(assert (=> bs!1009761 (= (= lt!1757106 lt!1757067) (= lambda!185955 lambda!185933))))

(declare-fun bs!1009764 () Bool)

(assert (= bs!1009764 (and d!1447073 d!1446887)))

(assert (=> bs!1009764 (not (= lambda!185955 lambda!185866))))

(assert (=> bs!1009756 (= (= lt!1757106 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!185955 lambda!185949))))

(declare-fun bs!1009765 () Bool)

(assert (= bs!1009765 (and d!1447073 b!4596958)))

(assert (=> bs!1009765 (= (= lt!1757106 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!185955 lambda!185920))))

(assert (=> d!1447073 true))

(declare-fun b!4597040 () Bool)

(declare-fun e!2867380 () Bool)

(assert (=> b!4597040 (= e!2867380 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) lambda!185950))))

(declare-fun bm!320787 () Bool)

(declare-fun call!320793 () Unit!107861)

(assert (=> bm!320787 (= call!320793 (lemmaContainsAllItsOwnKeys!433 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))

(declare-fun b!4597041 () Bool)

(declare-fun res!1922646 () Bool)

(declare-fun e!2867381 () Bool)

(assert (=> b!4597041 (=> (not res!1922646) (not e!2867381))))

(assert (=> b!4597041 (= res!1922646 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) lambda!185955))))

(declare-fun c!787313 () Bool)

(declare-fun call!320792 () Bool)

(declare-fun bm!320788 () Bool)

(assert (=> bm!320788 (= call!320792 (forall!10592 (ite c!787313 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (ite c!787313 lambda!185948 lambda!185950)))))

(declare-fun e!2867379 () ListMap!3905)

(assert (=> b!4597042 (= e!2867379 lt!1757115)))

(declare-fun lt!1757112 () ListMap!3905)

(assert (=> b!4597042 (= lt!1757112 (+!1739 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (h!57030 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))

(assert (=> b!4597042 (= lt!1757115 (addToMapMapFromBucket!812 (t!358186 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (+!1739 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (h!57030 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))))

(declare-fun lt!1757114 () Unit!107861)

(assert (=> b!4597042 (= lt!1757114 call!320793)))

(assert (=> b!4597042 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) lambda!185949)))

(declare-fun lt!1757103 () Unit!107861)

(assert (=> b!4597042 (= lt!1757103 lt!1757114)))

(assert (=> b!4597042 (forall!10592 (toList!4644 lt!1757112) lambda!185950)))

(declare-fun lt!1757101 () Unit!107861)

(declare-fun Unit!107959 () Unit!107861)

(assert (=> b!4597042 (= lt!1757101 Unit!107959)))

(assert (=> b!4597042 (forall!10592 (t!358186 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) lambda!185950)))

(declare-fun lt!1757100 () Unit!107861)

(declare-fun Unit!107960 () Unit!107861)

(assert (=> b!4597042 (= lt!1757100 Unit!107960)))

(declare-fun lt!1757097 () Unit!107861)

(declare-fun Unit!107961 () Unit!107861)

(assert (=> b!4597042 (= lt!1757097 Unit!107961)))

(declare-fun lt!1757116 () Unit!107861)

(assert (=> b!4597042 (= lt!1757116 (forallContained!2845 (toList!4644 lt!1757112) lambda!185950 (h!57030 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))

(assert (=> b!4597042 (contains!14011 lt!1757112 (_1!29147 (h!57030 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))

(declare-fun lt!1757109 () Unit!107861)

(declare-fun Unit!107962 () Unit!107861)

(assert (=> b!4597042 (= lt!1757109 Unit!107962)))

(assert (=> b!4597042 (contains!14011 lt!1757115 (_1!29147 (h!57030 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))

(declare-fun lt!1757113 () Unit!107861)

(declare-fun Unit!107963 () Unit!107861)

(assert (=> b!4597042 (= lt!1757113 Unit!107963)))

(assert (=> b!4597042 call!320792))

(declare-fun lt!1757096 () Unit!107861)

(declare-fun Unit!107964 () Unit!107861)

(assert (=> b!4597042 (= lt!1757096 Unit!107964)))

(assert (=> b!4597042 (forall!10592 (toList!4644 lt!1757112) lambda!185950)))

(declare-fun lt!1757105 () Unit!107861)

(declare-fun Unit!107965 () Unit!107861)

(assert (=> b!4597042 (= lt!1757105 Unit!107965)))

(declare-fun lt!1757110 () Unit!107861)

(declare-fun Unit!107966 () Unit!107861)

(assert (=> b!4597042 (= lt!1757110 Unit!107966)))

(declare-fun lt!1757108 () Unit!107861)

(assert (=> b!4597042 (= lt!1757108 (addForallContainsKeyThenBeforeAdding!433 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757115 (_1!29147 (h!57030 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))) (_2!29147 (h!57030 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))))

(assert (=> b!4597042 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) lambda!185950)))

(declare-fun lt!1757102 () Unit!107861)

(assert (=> b!4597042 (= lt!1757102 lt!1757108)))

(assert (=> b!4597042 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) lambda!185950)))

(declare-fun lt!1757107 () Unit!107861)

(declare-fun Unit!107967 () Unit!107861)

(assert (=> b!4597042 (= lt!1757107 Unit!107967)))

(declare-fun res!1922648 () Bool)

(declare-fun call!320794 () Bool)

(assert (=> b!4597042 (= res!1922648 call!320794)))

(assert (=> b!4597042 (=> (not res!1922648) (not e!2867380))))

(assert (=> b!4597042 e!2867380))

(declare-fun lt!1757104 () Unit!107861)

(declare-fun Unit!107968 () Unit!107861)

(assert (=> b!4597042 (= lt!1757104 Unit!107968)))

(declare-fun b!4597043 () Bool)

(assert (=> b!4597043 (= e!2867381 (invariantList!1122 (toList!4644 lt!1757106)))))

(assert (=> d!1447073 e!2867381))

(declare-fun res!1922647 () Bool)

(assert (=> d!1447073 (=> (not res!1922647) (not e!2867381))))

(assert (=> d!1447073 (= res!1922647 (forall!10592 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lambda!185955))))

(assert (=> d!1447073 (= lt!1757106 e!2867379)))

(assert (=> d!1447073 (= c!787313 ((_ is Nil!51068) (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))

(assert (=> d!1447073 (noDuplicateKeys!1314 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))

(assert (=> d!1447073 (= (addToMapMapFromBucket!812 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) lt!1757106)))

(declare-fun bm!320789 () Bool)

(assert (=> bm!320789 (= call!320794 (forall!10592 (ite c!787313 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (ite c!787313 lambda!185948 lambda!185950)))))

(assert (=> b!4597044 (= e!2867379 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))

(declare-fun lt!1757098 () Unit!107861)

(assert (=> b!4597044 (= lt!1757098 call!320793)))

(assert (=> b!4597044 call!320792))

(declare-fun lt!1757111 () Unit!107861)

(assert (=> b!4597044 (= lt!1757111 lt!1757098)))

(assert (=> b!4597044 call!320794))

(declare-fun lt!1757099 () Unit!107861)

(declare-fun Unit!107969 () Unit!107861)

(assert (=> b!4597044 (= lt!1757099 Unit!107969)))

(assert (= (and d!1447073 c!787313) b!4597044))

(assert (= (and d!1447073 (not c!787313)) b!4597042))

(assert (= (and b!4597042 res!1922648) b!4597040))

(assert (= (or b!4597044 b!4597042) bm!320788))

(assert (= (or b!4597044 b!4597042) bm!320789))

(assert (= (or b!4597044 b!4597042) bm!320787))

(assert (= (and d!1447073 res!1922647) b!4597041))

(assert (= (and b!4597041 res!1922646) b!4597043))

(assert (=> b!4597042 m!5421423))

(declare-fun m!5422169 () Bool)

(assert (=> b!4597042 m!5422169))

(assert (=> b!4597042 m!5422169))

(declare-fun m!5422171 () Bool)

(assert (=> b!4597042 m!5422171))

(declare-fun m!5422173 () Bool)

(assert (=> b!4597042 m!5422173))

(declare-fun m!5422175 () Bool)

(assert (=> b!4597042 m!5422175))

(declare-fun m!5422177 () Bool)

(assert (=> b!4597042 m!5422177))

(declare-fun m!5422179 () Bool)

(assert (=> b!4597042 m!5422179))

(declare-fun m!5422181 () Bool)

(assert (=> b!4597042 m!5422181))

(declare-fun m!5422183 () Bool)

(assert (=> b!4597042 m!5422183))

(assert (=> b!4597042 m!5422179))

(declare-fun m!5422185 () Bool)

(assert (=> b!4597042 m!5422185))

(assert (=> b!4597042 m!5422181))

(assert (=> b!4597042 m!5421423))

(declare-fun m!5422187 () Bool)

(assert (=> b!4597042 m!5422187))

(declare-fun m!5422189 () Bool)

(assert (=> bm!320789 m!5422189))

(assert (=> bm!320788 m!5422189))

(declare-fun m!5422191 () Bool)

(assert (=> b!4597043 m!5422191))

(declare-fun m!5422193 () Bool)

(assert (=> d!1447073 m!5422193))

(declare-fun m!5422195 () Bool)

(assert (=> d!1447073 m!5422195))

(assert (=> b!4597040 m!5422181))

(assert (=> bm!320787 m!5421423))

(declare-fun m!5422197 () Bool)

(assert (=> bm!320787 m!5422197))

(declare-fun m!5422199 () Bool)

(assert (=> b!4597041 m!5422199))

(assert (=> b!4596493 d!1447073))

(declare-fun bs!1009766 () Bool)

(declare-fun d!1447075 () Bool)

(assert (= bs!1009766 (and d!1447075 d!1447019)))

(declare-fun lambda!185966 () Int)

(assert (=> bs!1009766 (= lambda!185966 lambda!185929)))

(declare-fun bs!1009767 () Bool)

(assert (= bs!1009767 (and d!1447075 d!1446835)))

(assert (=> bs!1009767 (= lambda!185966 lambda!185850)))

(declare-fun bs!1009768 () Bool)

(assert (= bs!1009768 (and d!1447075 d!1447025)))

(assert (=> bs!1009768 (= lambda!185966 lambda!185930)))

(declare-fun bs!1009769 () Bool)

(assert (= bs!1009769 (and d!1447075 d!1447031)))

(assert (=> bs!1009769 (= lambda!185966 lambda!185935)))

(declare-fun bs!1009770 () Bool)

(assert (= bs!1009770 (and d!1447075 d!1446825)))

(assert (=> bs!1009770 (= lambda!185966 lambda!185849)))

(declare-fun bs!1009771 () Bool)

(assert (= bs!1009771 (and d!1447075 d!1446893)))

(assert (=> bs!1009771 (= lambda!185966 lambda!185867)))

(declare-fun bs!1009772 () Bool)

(assert (= bs!1009772 (and d!1447075 d!1447015)))

(assert (=> bs!1009772 (= lambda!185966 lambda!185924)))

(declare-fun bs!1009773 () Bool)

(assert (= bs!1009773 (and d!1447075 start!458528)))

(assert (=> bs!1009773 (= lambda!185966 lambda!185824)))

(declare-fun bs!1009774 () Bool)

(assert (= bs!1009774 (and d!1447075 d!1446879)))

(assert (=> bs!1009774 (= lambda!185966 lambda!185862)))

(declare-fun bs!1009775 () Bool)

(assert (= bs!1009775 (and d!1447075 d!1446895)))

(assert (=> bs!1009775 (= lambda!185966 lambda!185868)))

(declare-fun bs!1009776 () Bool)

(assert (= bs!1009776 (and d!1447075 d!1446897)))

(assert (=> bs!1009776 (= lambda!185966 lambda!185869)))

(declare-fun bs!1009777 () Bool)

(assert (= bs!1009777 (and d!1447075 d!1446821)))

(assert (=> bs!1009777 (not (= lambda!185966 lambda!185843))))

(declare-fun bs!1009778 () Bool)

(assert (= bs!1009778 (and d!1447075 d!1446907)))

(assert (=> bs!1009778 (= lambda!185966 lambda!185872)))

(declare-fun bs!1009779 () Bool)

(assert (= bs!1009779 (and d!1447075 d!1446771)))

(assert (=> bs!1009779 (= lambda!185966 lambda!185827)))

(declare-fun bs!1009780 () Bool)

(assert (= bs!1009780 (and d!1447075 d!1446883)))

(assert (=> bs!1009780 (= lambda!185966 lambda!185863)))

(declare-fun bs!1009781 () Bool)

(assert (= bs!1009781 (and d!1447075 d!1446813)))

(assert (=> bs!1009781 (not (= lambda!185966 lambda!185842))))

(declare-fun lt!1757147 () ListMap!3905)

(assert (=> d!1447075 (invariantList!1122 (toList!4644 lt!1757147))))

(declare-fun e!2867384 () ListMap!3905)

(assert (=> d!1447075 (= lt!1757147 e!2867384)))

(declare-fun c!787316 () Bool)

(assert (=> d!1447075 (= c!787316 ((_ is Cons!51069) (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))

(assert (=> d!1447075 (forall!10590 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) lambda!185966)))

(assert (=> d!1447075 (= (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757147)))

(declare-fun b!4597049 () Bool)

(assert (=> b!4597049 (= e!2867384 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (extractMap!1374 (t!358187 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))

(declare-fun b!4597050 () Bool)

(assert (=> b!4597050 (= e!2867384 (ListMap!3906 Nil!51068))))

(assert (= (and d!1447075 c!787316) b!4597049))

(assert (= (and d!1447075 (not c!787316)) b!4597050))

(declare-fun m!5422201 () Bool)

(assert (=> d!1447075 m!5422201))

(declare-fun m!5422203 () Bool)

(assert (=> d!1447075 m!5422203))

(declare-fun m!5422205 () Bool)

(assert (=> b!4597049 m!5422205))

(assert (=> b!4597049 m!5422205))

(declare-fun m!5422207 () Bool)

(assert (=> b!4597049 m!5422207))

(assert (=> b!4596493 d!1447075))

(declare-fun d!1447077 () Bool)

(declare-fun res!1922649 () Bool)

(declare-fun e!2867385 () Bool)

(assert (=> d!1447077 (=> res!1922649 e!2867385)))

(assert (=> d!1447077 (= res!1922649 ((_ is Nil!51069) (t!358187 (toList!4643 lt!1756611))))))

(assert (=> d!1447077 (= (forall!10590 (t!358187 (toList!4643 lt!1756611)) lambda!185824) e!2867385)))

(declare-fun b!4597051 () Bool)

(declare-fun e!2867386 () Bool)

(assert (=> b!4597051 (= e!2867385 e!2867386)))

(declare-fun res!1922650 () Bool)

(assert (=> b!4597051 (=> (not res!1922650) (not e!2867386))))

(assert (=> b!4597051 (= res!1922650 (dynLambda!21392 lambda!185824 (h!57031 (t!358187 (toList!4643 lt!1756611)))))))

(declare-fun b!4597052 () Bool)

(assert (=> b!4597052 (= e!2867386 (forall!10590 (t!358187 (t!358187 (toList!4643 lt!1756611))) lambda!185824))))

(assert (= (and d!1447077 (not res!1922649)) b!4597051))

(assert (= (and b!4597051 res!1922650) b!4597052))

(declare-fun b_lambda!169209 () Bool)

(assert (=> (not b_lambda!169209) (not b!4597051)))

(declare-fun m!5422209 () Bool)

(assert (=> b!4597051 m!5422209))

(declare-fun m!5422211 () Bool)

(assert (=> b!4597052 m!5422211))

(assert (=> b!4596644 d!1447077))

(assert (=> b!4596591 d!1447063))

(assert (=> b!4596591 d!1447065))

(declare-fun d!1447079 () Bool)

(declare-fun res!1922657 () Bool)

(declare-fun e!2867393 () Bool)

(assert (=> d!1447079 (=> res!1922657 e!2867393)))

(assert (=> d!1447079 (= res!1922657 (or ((_ is Nil!51069) (toList!4643 lm!1477)) ((_ is Nil!51069) (t!358187 (toList!4643 lm!1477)))))))

(assert (=> d!1447079 (= (isStrictlySorted!538 (toList!4643 lm!1477)) e!2867393)))

(declare-fun b!4597059 () Bool)

(declare-fun e!2867394 () Bool)

(assert (=> b!4597059 (= e!2867393 e!2867394)))

(declare-fun res!1922658 () Bool)

(assert (=> b!4597059 (=> (not res!1922658) (not e!2867394))))

(assert (=> b!4597059 (= res!1922658 (bvslt (_1!29148 (h!57031 (toList!4643 lm!1477))) (_1!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))))))

(declare-fun b!4597060 () Bool)

(assert (=> b!4597060 (= e!2867394 (isStrictlySorted!538 (t!358187 (toList!4643 lm!1477))))))

(assert (= (and d!1447079 (not res!1922657)) b!4597059))

(assert (= (and b!4597059 res!1922658) b!4597060))

(declare-fun m!5422213 () Bool)

(assert (=> b!4597060 m!5422213))

(assert (=> d!1446901 d!1447079))

(declare-fun b!4597062 () Bool)

(declare-fun e!2867395 () Option!11386)

(declare-fun e!2867396 () Option!11386)

(assert (=> b!4597062 (= e!2867395 e!2867396)))

(declare-fun c!787318 () Bool)

(assert (=> b!4597062 (= c!787318 (and ((_ is Cons!51069) (toList!4643 lt!1756828)) (not (= (_1!29148 (h!57031 (toList!4643 lt!1756828))) (_1!29148 lt!1756618)))))))

(declare-fun b!4597063 () Bool)

(assert (=> b!4597063 (= e!2867396 (getValueByKey!1306 (t!358187 (toList!4643 lt!1756828)) (_1!29148 lt!1756618)))))

(declare-fun b!4597061 () Bool)

(assert (=> b!4597061 (= e!2867395 (Some!11385 (_2!29148 (h!57031 (toList!4643 lt!1756828)))))))

(declare-fun d!1447081 () Bool)

(declare-fun c!787317 () Bool)

(assert (=> d!1447081 (= c!787317 (and ((_ is Cons!51069) (toList!4643 lt!1756828)) (= (_1!29148 (h!57031 (toList!4643 lt!1756828))) (_1!29148 lt!1756618))))))

(assert (=> d!1447081 (= (getValueByKey!1306 (toList!4643 lt!1756828) (_1!29148 lt!1756618)) e!2867395)))

(declare-fun b!4597064 () Bool)

(assert (=> b!4597064 (= e!2867396 None!11385)))

(assert (= (and d!1447081 c!787317) b!4597061))

(assert (= (and d!1447081 (not c!787317)) b!4597062))

(assert (= (and b!4597062 c!787318) b!4597063))

(assert (= (and b!4597062 (not c!787318)) b!4597064))

(declare-fun m!5422215 () Bool)

(assert (=> b!4597063 m!5422215))

(assert (=> b!4596651 d!1447081))

(declare-fun bs!1009782 () Bool)

(declare-fun b!4597066 () Bool)

(assert (= bs!1009782 (and b!4597066 b!4596767)))

(declare-fun lambda!185977 () Int)

(assert (=> bs!1009782 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (toList!4644 lt!1756613)) (= lambda!185977 lambda!185882))))

(declare-fun bs!1009783 () Bool)

(assert (= bs!1009783 (and b!4597066 b!4597007)))

(assert (=> bs!1009783 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!185977 lambda!185944))))

(declare-fun bs!1009784 () Bool)

(assert (= bs!1009784 (and b!4597066 b!4597002)))

(assert (=> bs!1009784 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!185977 lambda!185945))))

(declare-fun bs!1009785 () Bool)

(assert (= bs!1009785 (and b!4597066 b!4597001)))

(assert (=> bs!1009785 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!185977 lambda!185946))))

(assert (=> b!4597066 true))

(declare-fun bs!1009786 () Bool)

(declare-fun b!4597067 () Bool)

(assert (= bs!1009786 (and b!4597067 b!4596768)))

(declare-fun lambda!185980 () Int)

(assert (=> bs!1009786 (= lambda!185980 lambda!185883)))

(declare-fun bs!1009787 () Bool)

(assert (= bs!1009787 (and b!4597067 b!4597003)))

(assert (=> bs!1009787 (= lambda!185980 lambda!185947)))

(declare-fun d!1447083 () Bool)

(declare-fun e!2867397 () Bool)

(assert (=> d!1447083 e!2867397))

(declare-fun res!1922659 () Bool)

(assert (=> d!1447083 (=> (not res!1922659) (not e!2867397))))

(declare-fun lt!1757160 () List!51195)

(assert (=> d!1447083 (= res!1922659 (noDuplicate!810 lt!1757160))))

(assert (=> d!1447083 (= lt!1757160 (getKeysList!571 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))))

(assert (=> d!1447083 (= (keys!17878 (extractMap!1374 (toList!4643 lm!1477))) lt!1757160)))

(declare-fun b!4597065 () Bool)

(declare-fun res!1922660 () Bool)

(assert (=> b!4597065 (=> (not res!1922660) (not e!2867397))))

(assert (=> b!4597065 (= res!1922660 (= (length!476 lt!1757160) (length!477 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))))))

(declare-fun res!1922661 () Bool)

(assert (=> b!4597066 (=> (not res!1922661) (not e!2867397))))

(assert (=> b!4597066 (= res!1922661 (forall!10594 lt!1757160 lambda!185977))))

(assert (=> b!4597067 (= e!2867397 (= (content!8640 lt!1757160) (content!8640 (map!11280 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) lambda!185980))))))

(assert (= (and d!1447083 res!1922659) b!4597065))

(assert (= (and b!4597065 res!1922660) b!4597066))

(assert (= (and b!4597066 res!1922661) b!4597067))

(declare-fun m!5422217 () Bool)

(assert (=> d!1447083 m!5422217))

(assert (=> d!1447083 m!5421591))

(declare-fun m!5422219 () Bool)

(assert (=> b!4597065 m!5422219))

(declare-fun m!5422221 () Bool)

(assert (=> b!4597065 m!5422221))

(declare-fun m!5422223 () Bool)

(assert (=> b!4597066 m!5422223))

(declare-fun m!5422225 () Bool)

(assert (=> b!4597067 m!5422225))

(declare-fun m!5422227 () Bool)

(assert (=> b!4597067 m!5422227))

(assert (=> b!4597067 m!5422227))

(declare-fun m!5422229 () Bool)

(assert (=> b!4597067 m!5422229))

(assert (=> b!4596620 d!1447083))

(declare-fun d!1447085 () Bool)

(declare-fun e!2867400 () Bool)

(assert (=> d!1447085 e!2867400))

(declare-fun res!1922666 () Bool)

(assert (=> d!1447085 (=> res!1922666 e!2867400)))

(declare-fun lt!1757164 () Bool)

(assert (=> d!1447085 (= res!1922666 (not lt!1757164))))

(declare-fun lt!1757162 () Bool)

(assert (=> d!1447085 (= lt!1757164 lt!1757162)))

(declare-fun lt!1757161 () Unit!107861)

(declare-fun e!2867401 () Unit!107861)

(assert (=> d!1447085 (= lt!1757161 e!2867401)))

(declare-fun c!787319 () Bool)

(assert (=> d!1447085 (= c!787319 lt!1757162)))

(assert (=> d!1447085 (= lt!1757162 (containsKey!2148 (toList!4643 lt!1756757) (_1!29148 lt!1756618)))))

(assert (=> d!1447085 (= (contains!14010 lt!1756757 (_1!29148 lt!1756618)) lt!1757164)))

(declare-fun b!4597070 () Bool)

(declare-fun lt!1757163 () Unit!107861)

(assert (=> b!4597070 (= e!2867401 lt!1757163)))

(assert (=> b!4597070 (= lt!1757163 (lemmaContainsKeyImpliesGetValueByKeyDefined!1209 (toList!4643 lt!1756757) (_1!29148 lt!1756618)))))

(assert (=> b!4597070 (isDefined!8653 (getValueByKey!1306 (toList!4643 lt!1756757) (_1!29148 lt!1756618)))))

(declare-fun b!4597071 () Bool)

(declare-fun Unit!107974 () Unit!107861)

(assert (=> b!4597071 (= e!2867401 Unit!107974)))

(declare-fun b!4597072 () Bool)

(assert (=> b!4597072 (= e!2867400 (isDefined!8653 (getValueByKey!1306 (toList!4643 lt!1756757) (_1!29148 lt!1756618))))))

(assert (= (and d!1447085 c!787319) b!4597070))

(assert (= (and d!1447085 (not c!787319)) b!4597071))

(assert (= (and d!1447085 (not res!1922666)) b!4597072))

(declare-fun m!5422231 () Bool)

(assert (=> d!1447085 m!5422231))

(declare-fun m!5422233 () Bool)

(assert (=> b!4597070 m!5422233))

(assert (=> b!4597070 m!5421477))

(assert (=> b!4597070 m!5421477))

(declare-fun m!5422235 () Bool)

(assert (=> b!4597070 m!5422235))

(assert (=> b!4597072 m!5421477))

(assert (=> b!4597072 m!5421477))

(assert (=> b!4597072 m!5422235))

(assert (=> d!1446847 d!1447085))

(declare-fun b!4597076 () Bool)

(declare-fun e!2867402 () Option!11386)

(declare-fun e!2867403 () Option!11386)

(assert (=> b!4597076 (= e!2867402 e!2867403)))

(declare-fun c!787321 () Bool)

(assert (=> b!4597076 (= c!787321 (and ((_ is Cons!51069) lt!1756755) (not (= (_1!29148 (h!57031 lt!1756755)) (_1!29148 lt!1756618)))))))

(declare-fun b!4597077 () Bool)

(assert (=> b!4597077 (= e!2867403 (getValueByKey!1306 (t!358187 lt!1756755) (_1!29148 lt!1756618)))))

(declare-fun b!4597075 () Bool)

(assert (=> b!4597075 (= e!2867402 (Some!11385 (_2!29148 (h!57031 lt!1756755))))))

(declare-fun d!1447087 () Bool)

(declare-fun c!787320 () Bool)

(assert (=> d!1447087 (= c!787320 (and ((_ is Cons!51069) lt!1756755) (= (_1!29148 (h!57031 lt!1756755)) (_1!29148 lt!1756618))))))

(assert (=> d!1447087 (= (getValueByKey!1306 lt!1756755 (_1!29148 lt!1756618)) e!2867402)))

(declare-fun b!4597078 () Bool)

(assert (=> b!4597078 (= e!2867403 None!11385)))

(assert (= (and d!1447087 c!787320) b!4597075))

(assert (= (and d!1447087 (not c!787320)) b!4597076))

(assert (= (and b!4597076 c!787321) b!4597077))

(assert (= (and b!4597076 (not c!787321)) b!4597078))

(declare-fun m!5422237 () Bool)

(assert (=> b!4597077 m!5422237))

(assert (=> d!1446847 d!1447087))

(declare-fun d!1447089 () Bool)

(assert (=> d!1447089 (= (getValueByKey!1306 lt!1756755 (_1!29148 lt!1756618)) (Some!11385 (_2!29148 lt!1756618)))))

(declare-fun lt!1757165 () Unit!107861)

(assert (=> d!1447089 (= lt!1757165 (choose!30789 lt!1756755 (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))

(declare-fun e!2867404 () Bool)

(assert (=> d!1447089 e!2867404))

(declare-fun res!1922667 () Bool)

(assert (=> d!1447089 (=> (not res!1922667) (not e!2867404))))

(assert (=> d!1447089 (= res!1922667 (isStrictlySorted!538 lt!1756755))))

(assert (=> d!1447089 (= (lemmaContainsTupThenGetReturnValue!794 lt!1756755 (_1!29148 lt!1756618) (_2!29148 lt!1756618)) lt!1757165)))

(declare-fun b!4597079 () Bool)

(declare-fun res!1922668 () Bool)

(assert (=> b!4597079 (=> (not res!1922668) (not e!2867404))))

(assert (=> b!4597079 (= res!1922668 (containsKey!2148 lt!1756755 (_1!29148 lt!1756618)))))

(declare-fun b!4597080 () Bool)

(assert (=> b!4597080 (= e!2867404 (contains!14009 lt!1756755 (tuple2!51709 (_1!29148 lt!1756618) (_2!29148 lt!1756618))))))

(assert (= (and d!1447089 res!1922667) b!4597079))

(assert (= (and b!4597079 res!1922668) b!4597080))

(assert (=> d!1447089 m!5421471))

(declare-fun m!5422239 () Bool)

(assert (=> d!1447089 m!5422239))

(declare-fun m!5422241 () Bool)

(assert (=> d!1447089 m!5422241))

(declare-fun m!5422243 () Bool)

(assert (=> b!4597079 m!5422243))

(declare-fun m!5422245 () Bool)

(assert (=> b!4597080 m!5422245))

(assert (=> d!1446847 d!1447089))

(declare-fun b!4597081 () Bool)

(declare-fun e!2867409 () List!51193)

(assert (=> b!4597081 (= e!2867409 (insertStrictlySorted!486 (t!358187 (toList!4643 lm!1477)) (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))

(declare-fun b!4597082 () Bool)

(declare-fun e!2867406 () Bool)

(declare-fun lt!1757166 () List!51193)

(assert (=> b!4597082 (= e!2867406 (contains!14009 lt!1757166 (tuple2!51709 (_1!29148 lt!1756618) (_2!29148 lt!1756618))))))

(declare-fun bm!320796 () Bool)

(declare-fun call!320802 () List!51193)

(declare-fun call!320801 () List!51193)

(assert (=> bm!320796 (= call!320802 call!320801)))

(declare-fun b!4597083 () Bool)

(declare-fun res!1922669 () Bool)

(assert (=> b!4597083 (=> (not res!1922669) (not e!2867406))))

(assert (=> b!4597083 (= res!1922669 (containsKey!2148 lt!1757166 (_1!29148 lt!1756618)))))

(declare-fun bm!320797 () Bool)

(declare-fun call!320803 () List!51193)

(declare-fun c!787325 () Bool)

(assert (=> bm!320797 (= call!320803 ($colon$colon!1035 e!2867409 (ite c!787325 (h!57031 (toList!4643 lm!1477)) (tuple2!51709 (_1!29148 lt!1756618) (_2!29148 lt!1756618)))))))

(declare-fun c!787324 () Bool)

(assert (=> bm!320797 (= c!787324 c!787325)))

(declare-fun b!4597084 () Bool)

(declare-fun e!2867408 () List!51193)

(assert (=> b!4597084 (= e!2867408 call!320803)))

(declare-fun b!4597085 () Bool)

(declare-fun e!2867405 () List!51193)

(assert (=> b!4597085 (= e!2867405 call!320801)))

(declare-fun bm!320798 () Bool)

(assert (=> bm!320798 (= call!320801 call!320803)))

(declare-fun b!4597086 () Bool)

(declare-fun e!2867407 () List!51193)

(assert (=> b!4597086 (= e!2867407 call!320802)))

(declare-fun b!4597087 () Bool)

(assert (=> b!4597087 (= e!2867407 call!320802)))

(declare-fun c!787322 () Bool)

(declare-fun c!787323 () Bool)

(declare-fun b!4597088 () Bool)

(assert (=> b!4597088 (= e!2867409 (ite c!787322 (t!358187 (toList!4643 lm!1477)) (ite c!787323 (Cons!51069 (h!57031 (toList!4643 lm!1477)) (t!358187 (toList!4643 lm!1477))) Nil!51069)))))

(declare-fun d!1447091 () Bool)

(assert (=> d!1447091 e!2867406))

(declare-fun res!1922670 () Bool)

(assert (=> d!1447091 (=> (not res!1922670) (not e!2867406))))

(assert (=> d!1447091 (= res!1922670 (isStrictlySorted!538 lt!1757166))))

(assert (=> d!1447091 (= lt!1757166 e!2867408)))

(assert (=> d!1447091 (= c!787325 (and ((_ is Cons!51069) (toList!4643 lm!1477)) (bvslt (_1!29148 (h!57031 (toList!4643 lm!1477))) (_1!29148 lt!1756618))))))

(assert (=> d!1447091 (isStrictlySorted!538 (toList!4643 lm!1477))))

(assert (=> d!1447091 (= (insertStrictlySorted!486 (toList!4643 lm!1477) (_1!29148 lt!1756618) (_2!29148 lt!1756618)) lt!1757166)))

(declare-fun b!4597089 () Bool)

(assert (=> b!4597089 (= c!787323 (and ((_ is Cons!51069) (toList!4643 lm!1477)) (bvsgt (_1!29148 (h!57031 (toList!4643 lm!1477))) (_1!29148 lt!1756618))))))

(assert (=> b!4597089 (= e!2867405 e!2867407)))

(declare-fun b!4597090 () Bool)

(assert (=> b!4597090 (= e!2867408 e!2867405)))

(assert (=> b!4597090 (= c!787322 (and ((_ is Cons!51069) (toList!4643 lm!1477)) (= (_1!29148 (h!57031 (toList!4643 lm!1477))) (_1!29148 lt!1756618))))))

(assert (= (and d!1447091 c!787325) b!4597084))

(assert (= (and d!1447091 (not c!787325)) b!4597090))

(assert (= (and b!4597090 c!787322) b!4597085))

(assert (= (and b!4597090 (not c!787322)) b!4597089))

(assert (= (and b!4597089 c!787323) b!4597086))

(assert (= (and b!4597089 (not c!787323)) b!4597087))

(assert (= (or b!4597086 b!4597087) bm!320796))

(assert (= (or b!4597085 bm!320796) bm!320798))

(assert (= (or b!4597084 bm!320798) bm!320797))

(assert (= (and bm!320797 c!787324) b!4597081))

(assert (= (and bm!320797 (not c!787324)) b!4597088))

(assert (= (and d!1447091 res!1922670) b!4597083))

(assert (= (and b!4597083 res!1922669) b!4597082))

(declare-fun m!5422247 () Bool)

(assert (=> b!4597082 m!5422247))

(declare-fun m!5422249 () Bool)

(assert (=> bm!320797 m!5422249))

(declare-fun m!5422251 () Bool)

(assert (=> b!4597083 m!5422251))

(declare-fun m!5422253 () Bool)

(assert (=> d!1447091 m!5422253))

(assert (=> d!1447091 m!5421323))

(declare-fun m!5422255 () Bool)

(assert (=> b!4597081 m!5422255))

(assert (=> d!1446847 d!1447091))

(assert (=> bs!1009587 d!1447023))

(declare-fun d!1447093 () Bool)

(declare-fun lt!1757167 () Bool)

(assert (=> d!1447093 (= lt!1757167 (select (content!8640 (keys!17878 (extractMap!1374 (toList!4643 lm!1477)))) key!3287))))

(declare-fun e!2867411 () Bool)

(assert (=> d!1447093 (= lt!1757167 e!2867411)))

(declare-fun res!1922671 () Bool)

(assert (=> d!1447093 (=> (not res!1922671) (not e!2867411))))

(assert (=> d!1447093 (= res!1922671 ((_ is Cons!51071) (keys!17878 (extractMap!1374 (toList!4643 lm!1477)))))))

(assert (=> d!1447093 (= (contains!14013 (keys!17878 (extractMap!1374 (toList!4643 lm!1477))) key!3287) lt!1757167)))

(declare-fun b!4597091 () Bool)

(declare-fun e!2867410 () Bool)

(assert (=> b!4597091 (= e!2867411 e!2867410)))

(declare-fun res!1922672 () Bool)

(assert (=> b!4597091 (=> res!1922672 e!2867410)))

(assert (=> b!4597091 (= res!1922672 (= (h!57035 (keys!17878 (extractMap!1374 (toList!4643 lm!1477)))) key!3287))))

(declare-fun b!4597092 () Bool)

(assert (=> b!4597092 (= e!2867410 (contains!14013 (t!358189 (keys!17878 (extractMap!1374 (toList!4643 lm!1477)))) key!3287))))

(assert (= (and d!1447093 res!1922671) b!4597091))

(assert (= (and b!4597091 (not res!1922672)) b!4597092))

(assert (=> d!1447093 m!5421587))

(declare-fun m!5422257 () Bool)

(assert (=> d!1447093 m!5422257))

(declare-fun m!5422259 () Bool)

(assert (=> d!1447093 m!5422259))

(declare-fun m!5422261 () Bool)

(assert (=> b!4597092 m!5422261))

(assert (=> b!4596618 d!1447093))

(assert (=> b!4596618 d!1447083))

(assert (=> b!4596467 d!1446955))

(declare-fun d!1447095 () Bool)

(assert (=> d!1447095 (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(declare-fun lt!1757168 () Unit!107861)

(assert (=> d!1447095 (= lt!1757168 (choose!30790 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(assert (=> d!1447095 (invariantList!1122 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))))

(assert (=> d!1447095 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287) lt!1757168)))

(declare-fun bs!1009788 () Bool)

(assert (= bs!1009788 d!1447095))

(assert (=> bs!1009788 m!5421577))

(assert (=> bs!1009788 m!5421577))

(assert (=> bs!1009788 m!5421579))

(declare-fun m!5422263 () Bool)

(assert (=> bs!1009788 m!5422263))

(declare-fun m!5422265 () Bool)

(assert (=> bs!1009788 m!5422265))

(assert (=> b!4596617 d!1447095))

(declare-fun d!1447097 () Bool)

(assert (=> d!1447097 (= (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287)) (not (isEmpty!28860 (getValueByKey!1307 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))))

(declare-fun bs!1009789 () Bool)

(assert (= bs!1009789 d!1447097))

(assert (=> bs!1009789 m!5421577))

(declare-fun m!5422267 () Bool)

(assert (=> bs!1009789 m!5422267))

(assert (=> b!4596617 d!1447097))

(declare-fun b!4597093 () Bool)

(declare-fun e!2867412 () Option!11387)

(assert (=> b!4597093 (= e!2867412 (Some!11386 (_2!29147 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))))))

(declare-fun b!4597096 () Bool)

(declare-fun e!2867413 () Option!11387)

(assert (=> b!4597096 (= e!2867413 None!11386)))

(declare-fun d!1447099 () Bool)

(declare-fun c!787326 () Bool)

(assert (=> d!1447099 (= c!787326 (and ((_ is Cons!51068) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) key!3287)))))

(assert (=> d!1447099 (= (getValueByKey!1307 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287) e!2867412)))

(declare-fun b!4597094 () Bool)

(assert (=> b!4597094 (= e!2867412 e!2867413)))

(declare-fun c!787327 () Bool)

(assert (=> b!4597094 (= c!787327 (and ((_ is Cons!51068) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (not (= (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) key!3287))))))

(declare-fun b!4597095 () Bool)

(assert (=> b!4597095 (= e!2867413 (getValueByKey!1307 (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) key!3287))))

(assert (= (and d!1447099 c!787326) b!4597093))

(assert (= (and d!1447099 (not c!787326)) b!4597094))

(assert (= (and b!4597094 c!787327) b!4597095))

(assert (= (and b!4597094 (not c!787327)) b!4597096))

(declare-fun m!5422269 () Bool)

(assert (=> b!4597095 m!5422269))

(assert (=> b!4596617 d!1447099))

(declare-fun d!1447101 () Bool)

(assert (=> d!1447101 (contains!14013 (getKeysList!571 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) key!3287)))

(declare-fun lt!1757169 () Unit!107861)

(assert (=> d!1447101 (= lt!1757169 (choose!30791 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(assert (=> d!1447101 (invariantList!1122 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))))

(assert (=> d!1447101 (= (lemmaInListThenGetKeysListContains!567 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287) lt!1757169)))

(declare-fun bs!1009790 () Bool)

(assert (= bs!1009790 d!1447101))

(assert (=> bs!1009790 m!5421591))

(assert (=> bs!1009790 m!5421591))

(declare-fun m!5422271 () Bool)

(assert (=> bs!1009790 m!5422271))

(declare-fun m!5422273 () Bool)

(assert (=> bs!1009790 m!5422273))

(assert (=> bs!1009790 m!5422265))

(assert (=> b!4596617 d!1447101))

(declare-fun d!1447103 () Bool)

(declare-fun c!787330 () Bool)

(assert (=> d!1447103 (= c!787330 ((_ is Nil!51071) (keys!17878 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))

(declare-fun e!2867416 () (InoxSet K!12435))

(assert (=> d!1447103 (= (content!8640 (keys!17878 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) e!2867416)))

(declare-fun b!4597101 () Bool)

(assert (=> b!4597101 (= e!2867416 ((as const (Array K!12435 Bool)) false))))

(declare-fun b!4597102 () Bool)

(assert (=> b!4597102 (= e!2867416 ((_ map or) (store ((as const (Array K!12435 Bool)) false) (h!57035 (keys!17878 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) true) (content!8640 (t!358189 (keys!17878 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))))

(assert (= (and d!1447103 c!787330) b!4597101))

(assert (= (and d!1447103 (not c!787330)) b!4597102))

(declare-fun m!5422275 () Bool)

(assert (=> b!4597102 m!5422275))

(declare-fun m!5422277 () Bool)

(assert (=> b!4597102 m!5422277))

(assert (=> b!4596515 d!1447103))

(declare-fun bs!1009791 () Bool)

(declare-fun b!4597109 () Bool)

(assert (= bs!1009791 (and b!4597109 b!4597001)))

(declare-fun lambda!185984 () Int)

(assert (=> bs!1009791 (= (= (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!185984 lambda!185946))))

(declare-fun bs!1009793 () Bool)

(assert (= bs!1009793 (and b!4597109 b!4597007)))

(assert (=> bs!1009793 (= (= (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!185984 lambda!185944))))

(declare-fun bs!1009794 () Bool)

(assert (= bs!1009794 (and b!4597109 b!4597066)))

(assert (=> bs!1009794 (= (= (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= lambda!185984 lambda!185977))))

(declare-fun bs!1009795 () Bool)

(assert (= bs!1009795 (and b!4597109 b!4596767)))

(assert (=> bs!1009795 (= (= (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (toList!4644 lt!1756613)) (= lambda!185984 lambda!185882))))

(declare-fun bs!1009796 () Bool)

(assert (= bs!1009796 (and b!4597109 b!4597002)))

(assert (=> bs!1009796 (= (= (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!185984 lambda!185945))))

(assert (=> b!4597109 true))

(declare-fun bs!1009798 () Bool)

(declare-fun b!4597110 () Bool)

(assert (= bs!1009798 (and b!4597110 b!4596768)))

(declare-fun lambda!185986 () Int)

(assert (=> bs!1009798 (= lambda!185986 lambda!185883)))

(declare-fun bs!1009800 () Bool)

(assert (= bs!1009800 (and b!4597110 b!4597003)))

(assert (=> bs!1009800 (= lambda!185986 lambda!185947)))

(declare-fun bs!1009801 () Bool)

(assert (= bs!1009801 (and b!4597110 b!4597067)))

(assert (=> bs!1009801 (= lambda!185986 lambda!185980)))

(declare-fun d!1447105 () Bool)

(declare-fun e!2867420 () Bool)

(assert (=> d!1447105 e!2867420))

(declare-fun res!1922676 () Bool)

(assert (=> d!1447105 (=> (not res!1922676) (not e!2867420))))

(declare-fun lt!1757191 () List!51195)

(assert (=> d!1447105 (= res!1922676 (noDuplicate!810 lt!1757191))))

(assert (=> d!1447105 (= lt!1757191 (getKeysList!571 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))

(assert (=> d!1447105 (= (keys!17878 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lt!1757191)))

(declare-fun b!4597108 () Bool)

(declare-fun res!1922677 () Bool)

(assert (=> b!4597108 (=> (not res!1922677) (not e!2867420))))

(assert (=> b!4597108 (= res!1922677 (= (length!476 lt!1757191) (length!477 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))

(declare-fun res!1922678 () Bool)

(assert (=> b!4597109 (=> (not res!1922678) (not e!2867420))))

(assert (=> b!4597109 (= res!1922678 (forall!10594 lt!1757191 lambda!185984))))

(assert (=> b!4597110 (= e!2867420 (= (content!8640 lt!1757191) (content!8640 (map!11280 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) lambda!185986))))))

(assert (= (and d!1447105 res!1922676) b!4597108))

(assert (= (and b!4597108 res!1922677) b!4597109))

(assert (= (and b!4597109 res!1922678) b!4597110))

(declare-fun m!5422279 () Bool)

(assert (=> d!1447105 m!5422279))

(declare-fun m!5422281 () Bool)

(assert (=> d!1447105 m!5422281))

(declare-fun m!5422283 () Bool)

(assert (=> b!4597108 m!5422283))

(declare-fun m!5422285 () Bool)

(assert (=> b!4597108 m!5422285))

(declare-fun m!5422287 () Bool)

(assert (=> b!4597109 m!5422287))

(declare-fun m!5422289 () Bool)

(assert (=> b!4597110 m!5422289))

(declare-fun m!5422291 () Bool)

(assert (=> b!4597110 m!5422291))

(assert (=> b!4597110 m!5422291))

(declare-fun m!5422293 () Bool)

(assert (=> b!4597110 m!5422293))

(assert (=> b!4596515 d!1447105))

(declare-fun d!1447107 () Bool)

(declare-fun c!787332 () Bool)

(assert (=> d!1447107 (= c!787332 ((_ is Nil!51071) (keys!17878 lt!1756729)))))

(declare-fun e!2867421 () (InoxSet K!12435))

(assert (=> d!1447107 (= (content!8640 (keys!17878 lt!1756729)) e!2867421)))

(declare-fun b!4597113 () Bool)

(assert (=> b!4597113 (= e!2867421 ((as const (Array K!12435 Bool)) false))))

(declare-fun b!4597114 () Bool)

(assert (=> b!4597114 (= e!2867421 ((_ map or) (store ((as const (Array K!12435 Bool)) false) (h!57035 (keys!17878 lt!1756729)) true) (content!8640 (t!358189 (keys!17878 lt!1756729)))))))

(assert (= (and d!1447107 c!787332) b!4597113))

(assert (= (and d!1447107 (not c!787332)) b!4597114))

(declare-fun m!5422295 () Bool)

(assert (=> b!4597114 m!5422295))

(declare-fun m!5422297 () Bool)

(assert (=> b!4597114 m!5422297))

(assert (=> b!4596515 d!1447107))

(declare-fun bs!1009802 () Bool)

(declare-fun b!4597116 () Bool)

(assert (= bs!1009802 (and b!4597116 b!4597001)))

(declare-fun lambda!185988 () Int)

(assert (=> bs!1009802 (= (= (toList!4644 lt!1756729) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!185988 lambda!185946))))

(declare-fun bs!1009803 () Bool)

(assert (= bs!1009803 (and b!4597116 b!4597007)))

(assert (=> bs!1009803 (= (= (toList!4644 lt!1756729) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!185988 lambda!185944))))

(declare-fun bs!1009804 () Bool)

(assert (= bs!1009804 (and b!4597116 b!4597066)))

(assert (=> bs!1009804 (= (= (toList!4644 lt!1756729) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= lambda!185988 lambda!185977))))

(declare-fun bs!1009805 () Bool)

(assert (= bs!1009805 (and b!4597116 b!4596767)))

(assert (=> bs!1009805 (= (= (toList!4644 lt!1756729) (toList!4644 lt!1756613)) (= lambda!185988 lambda!185882))))

(declare-fun bs!1009806 () Bool)

(assert (= bs!1009806 (and b!4597116 b!4597109)))

(assert (=> bs!1009806 (= (= (toList!4644 lt!1756729) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!185988 lambda!185984))))

(declare-fun bs!1009807 () Bool)

(assert (= bs!1009807 (and b!4597116 b!4597002)))

(assert (=> bs!1009807 (= (= (toList!4644 lt!1756729) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!185988 lambda!185945))))

(assert (=> b!4597116 true))

(declare-fun bs!1009810 () Bool)

(declare-fun b!4597117 () Bool)

(assert (= bs!1009810 (and b!4597117 b!4596768)))

(declare-fun lambda!185990 () Int)

(assert (=> bs!1009810 (= lambda!185990 lambda!185883)))

(declare-fun bs!1009812 () Bool)

(assert (= bs!1009812 (and b!4597117 b!4597003)))

(assert (=> bs!1009812 (= lambda!185990 lambda!185947)))

(declare-fun bs!1009813 () Bool)

(assert (= bs!1009813 (and b!4597117 b!4597067)))

(assert (=> bs!1009813 (= lambda!185990 lambda!185980)))

(declare-fun bs!1009814 () Bool)

(assert (= bs!1009814 (and b!4597117 b!4597110)))

(assert (=> bs!1009814 (= lambda!185990 lambda!185986)))

(declare-fun d!1447109 () Bool)

(declare-fun e!2867422 () Bool)

(assert (=> d!1447109 e!2867422))

(declare-fun res!1922679 () Bool)

(assert (=> d!1447109 (=> (not res!1922679) (not e!2867422))))

(declare-fun lt!1757192 () List!51195)

(assert (=> d!1447109 (= res!1922679 (noDuplicate!810 lt!1757192))))

(assert (=> d!1447109 (= lt!1757192 (getKeysList!571 (toList!4644 lt!1756729)))))

(assert (=> d!1447109 (= (keys!17878 lt!1756729) lt!1757192)))

(declare-fun b!4597115 () Bool)

(declare-fun res!1922680 () Bool)

(assert (=> b!4597115 (=> (not res!1922680) (not e!2867422))))

(assert (=> b!4597115 (= res!1922680 (= (length!476 lt!1757192) (length!477 (toList!4644 lt!1756729))))))

(declare-fun res!1922681 () Bool)

(assert (=> b!4597116 (=> (not res!1922681) (not e!2867422))))

(assert (=> b!4597116 (= res!1922681 (forall!10594 lt!1757192 lambda!185988))))

(assert (=> b!4597117 (= e!2867422 (= (content!8640 lt!1757192) (content!8640 (map!11280 (toList!4644 lt!1756729) lambda!185990))))))

(assert (= (and d!1447109 res!1922679) b!4597115))

(assert (= (and b!4597115 res!1922680) b!4597116))

(assert (= (and b!4597116 res!1922681) b!4597117))

(declare-fun m!5422299 () Bool)

(assert (=> d!1447109 m!5422299))

(declare-fun m!5422301 () Bool)

(assert (=> d!1447109 m!5422301))

(declare-fun m!5422303 () Bool)

(assert (=> b!4597115 m!5422303))

(declare-fun m!5422305 () Bool)

(assert (=> b!4597115 m!5422305))

(declare-fun m!5422307 () Bool)

(assert (=> b!4597116 m!5422307))

(declare-fun m!5422309 () Bool)

(assert (=> b!4597117 m!5422309))

(declare-fun m!5422311 () Bool)

(assert (=> b!4597117 m!5422311))

(assert (=> b!4597117 m!5422311))

(declare-fun m!5422313 () Bool)

(assert (=> b!4597117 m!5422313))

(assert (=> b!4596515 d!1447109))

(declare-fun d!1447111 () Bool)

(declare-fun c!787335 () Bool)

(assert (=> d!1447111 (= c!787335 ((_ is Nil!51068) (toList!4644 (extractMap!1374 (Cons!51069 lt!1756618 Nil!51069)))))))

(declare-fun e!2867425 () (InoxSet tuple2!51706))

(assert (=> d!1447111 (= (content!8642 (toList!4644 (extractMap!1374 (Cons!51069 lt!1756618 Nil!51069)))) e!2867425)))

(declare-fun b!4597122 () Bool)

(assert (=> b!4597122 (= e!2867425 ((as const (Array tuple2!51706 Bool)) false))))

(declare-fun b!4597123 () Bool)

(assert (=> b!4597123 (= e!2867425 ((_ map or) (store ((as const (Array tuple2!51706 Bool)) false) (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 lt!1756618 Nil!51069)))) true) (content!8642 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 lt!1756618 Nil!51069)))))))))

(assert (= (and d!1447111 c!787335) b!4597122))

(assert (= (and d!1447111 (not c!787335)) b!4597123))

(declare-fun m!5422333 () Bool)

(assert (=> b!4597123 m!5422333))

(declare-fun m!5422335 () Bool)

(assert (=> b!4597123 m!5422335))

(assert (=> d!1446857 d!1447111))

(declare-fun c!787336 () Bool)

(declare-fun d!1447113 () Bool)

(assert (=> d!1447113 (= c!787336 ((_ is Nil!51068) (toList!4644 (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287))))))

(declare-fun e!2867426 () (InoxSet tuple2!51706))

(assert (=> d!1447113 (= (content!8642 (toList!4644 (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287))) e!2867426)))

(declare-fun b!4597124 () Bool)

(assert (=> b!4597124 (= e!2867426 ((as const (Array tuple2!51706 Bool)) false))))

(declare-fun b!4597125 () Bool)

(assert (=> b!4597125 (= e!2867426 ((_ map or) (store ((as const (Array tuple2!51706 Bool)) false) (h!57030 (toList!4644 (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287))) true) (content!8642 (t!358186 (toList!4644 (-!490 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) key!3287))))))))

(assert (= (and d!1447113 c!787336) b!4597124))

(assert (= (and d!1447113 (not c!787336)) b!4597125))

(declare-fun m!5422349 () Bool)

(assert (=> b!4597125 m!5422349))

(declare-fun m!5422355 () Bool)

(assert (=> b!4597125 m!5422355))

(assert (=> d!1446857 d!1447113))

(assert (=> b!4596641 d!1446961))

(declare-fun d!1447115 () Bool)

(assert (=> d!1447115 (= (tail!7937 (toList!4643 lm!1477)) (t!358187 (toList!4643 lm!1477)))))

(assert (=> d!1446915 d!1447115))

(assert (=> b!4596615 d!1447097))

(assert (=> b!4596615 d!1447099))

(declare-fun d!1447119 () Bool)

(declare-fun res!1922682 () Bool)

(declare-fun e!2867428 () Bool)

(assert (=> d!1447119 (=> res!1922682 e!2867428)))

(assert (=> d!1447119 (= res!1922682 ((_ is Nil!51069) (toList!4643 lm!1477)))))

(assert (=> d!1447119 (= (forall!10590 (toList!4643 lm!1477) lambda!185843) e!2867428)))

(declare-fun b!4597128 () Bool)

(declare-fun e!2867429 () Bool)

(assert (=> b!4597128 (= e!2867428 e!2867429)))

(declare-fun res!1922683 () Bool)

(assert (=> b!4597128 (=> (not res!1922683) (not e!2867429))))

(assert (=> b!4597128 (= res!1922683 (dynLambda!21392 lambda!185843 (h!57031 (toList!4643 lm!1477))))))

(declare-fun b!4597129 () Bool)

(assert (=> b!4597129 (= e!2867429 (forall!10590 (t!358187 (toList!4643 lm!1477)) lambda!185843))))

(assert (= (and d!1447119 (not res!1922682)) b!4597128))

(assert (= (and b!4597128 res!1922683) b!4597129))

(declare-fun b_lambda!169211 () Bool)

(assert (=> (not b_lambda!169211) (not b!4597128)))

(declare-fun m!5422357 () Bool)

(assert (=> b!4597128 m!5422357))

(declare-fun m!5422359 () Bool)

(assert (=> b!4597129 m!5422359))

(assert (=> d!1446821 d!1447119))

(declare-fun bs!1009823 () Bool)

(declare-fun b!4597138 () Bool)

(assert (= bs!1009823 (and b!4597138 b!4597001)))

(declare-fun lambda!185992 () Int)

(assert (=> bs!1009823 (= (= (t!358186 (toList!4644 lt!1756613)) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!185992 lambda!185946))))

(declare-fun bs!1009825 () Bool)

(assert (= bs!1009825 (and b!4597138 b!4597007)))

(assert (=> bs!1009825 (= (= (t!358186 (toList!4644 lt!1756613)) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!185992 lambda!185944))))

(declare-fun bs!1009827 () Bool)

(assert (= bs!1009827 (and b!4597138 b!4597066)))

(assert (=> bs!1009827 (= (= (t!358186 (toList!4644 lt!1756613)) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= lambda!185992 lambda!185977))))

(declare-fun bs!1009829 () Bool)

(assert (= bs!1009829 (and b!4597138 b!4597116)))

(assert (=> bs!1009829 (= (= (t!358186 (toList!4644 lt!1756613)) (toList!4644 lt!1756729)) (= lambda!185992 lambda!185988))))

(declare-fun bs!1009831 () Bool)

(assert (= bs!1009831 (and b!4597138 b!4596767)))

(assert (=> bs!1009831 (= (= (t!358186 (toList!4644 lt!1756613)) (toList!4644 lt!1756613)) (= lambda!185992 lambda!185882))))

(declare-fun bs!1009833 () Bool)

(assert (= bs!1009833 (and b!4597138 b!4597109)))

(assert (=> bs!1009833 (= (= (t!358186 (toList!4644 lt!1756613)) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!185992 lambda!185984))))

(declare-fun bs!1009834 () Bool)

(assert (= bs!1009834 (and b!4597138 b!4597002)))

(assert (=> bs!1009834 (= (= (t!358186 (toList!4644 lt!1756613)) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!185992 lambda!185945))))

(assert (=> b!4597138 true))

(declare-fun bs!1009835 () Bool)

(declare-fun b!4597133 () Bool)

(assert (= bs!1009835 (and b!4597133 b!4597001)))

(declare-fun lambda!185993 () Int)

(assert (=> bs!1009835 (= (= (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613))) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!185993 lambda!185946))))

(declare-fun bs!1009836 () Bool)

(assert (= bs!1009836 (and b!4597133 b!4597007)))

(assert (=> bs!1009836 (= (= (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!185993 lambda!185944))))

(declare-fun bs!1009837 () Bool)

(assert (= bs!1009837 (and b!4597133 b!4597138)))

(assert (=> bs!1009837 (= (= (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613))) (t!358186 (toList!4644 lt!1756613))) (= lambda!185993 lambda!185992))))

(declare-fun bs!1009838 () Bool)

(assert (= bs!1009838 (and b!4597133 b!4597066)))

(assert (=> bs!1009838 (= (= (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613))) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= lambda!185993 lambda!185977))))

(declare-fun bs!1009839 () Bool)

(assert (= bs!1009839 (and b!4597133 b!4597116)))

(assert (=> bs!1009839 (= (= (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613))) (toList!4644 lt!1756729)) (= lambda!185993 lambda!185988))))

(declare-fun bs!1009840 () Bool)

(assert (= bs!1009840 (and b!4597133 b!4596767)))

(assert (=> bs!1009840 (= (= (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613))) (toList!4644 lt!1756613)) (= lambda!185993 lambda!185882))))

(declare-fun bs!1009841 () Bool)

(assert (= bs!1009841 (and b!4597133 b!4597109)))

(assert (=> bs!1009841 (= (= (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613))) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!185993 lambda!185984))))

(declare-fun bs!1009842 () Bool)

(assert (= bs!1009842 (and b!4597133 b!4597002)))

(assert (=> bs!1009842 (= (= (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613))) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!185993 lambda!185945))))

(assert (=> b!4597133 true))

(declare-fun bs!1009843 () Bool)

(declare-fun b!4597132 () Bool)

(assert (= bs!1009843 (and b!4597132 b!4597001)))

(declare-fun lambda!185994 () Int)

(assert (=> bs!1009843 (= (= (toList!4644 lt!1756613) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!185994 lambda!185946))))

(declare-fun bs!1009844 () Bool)

(assert (= bs!1009844 (and b!4597132 b!4597007)))

(assert (=> bs!1009844 (= (= (toList!4644 lt!1756613) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!185994 lambda!185944))))

(declare-fun bs!1009845 () Bool)

(assert (= bs!1009845 (and b!4597132 b!4597138)))

(assert (=> bs!1009845 (= (= (toList!4644 lt!1756613) (t!358186 (toList!4644 lt!1756613))) (= lambda!185994 lambda!185992))))

(declare-fun bs!1009846 () Bool)

(assert (= bs!1009846 (and b!4597132 b!4597066)))

(assert (=> bs!1009846 (= (= (toList!4644 lt!1756613) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= lambda!185994 lambda!185977))))

(declare-fun bs!1009847 () Bool)

(assert (= bs!1009847 (and b!4597132 b!4597116)))

(assert (=> bs!1009847 (= (= (toList!4644 lt!1756613) (toList!4644 lt!1756729)) (= lambda!185994 lambda!185988))))

(declare-fun bs!1009848 () Bool)

(assert (= bs!1009848 (and b!4597132 b!4596767)))

(assert (=> bs!1009848 (= lambda!185994 lambda!185882)))

(declare-fun bs!1009849 () Bool)

(assert (= bs!1009849 (and b!4597132 b!4597109)))

(assert (=> bs!1009849 (= (= (toList!4644 lt!1756613) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!185994 lambda!185984))))

(declare-fun bs!1009850 () Bool)

(assert (= bs!1009850 (and b!4597132 b!4597133)))

(assert (=> bs!1009850 (= (= (toList!4644 lt!1756613) (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613)))) (= lambda!185994 lambda!185993))))

(declare-fun bs!1009851 () Bool)

(assert (= bs!1009851 (and b!4597132 b!4597002)))

(assert (=> bs!1009851 (= (= (toList!4644 lt!1756613) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!185994 lambda!185945))))

(assert (=> b!4597132 true))

(declare-fun bs!1009852 () Bool)

(declare-fun b!4597134 () Bool)

(assert (= bs!1009852 (and b!4597134 b!4597110)))

(declare-fun lambda!185995 () Int)

(assert (=> bs!1009852 (= lambda!185995 lambda!185986)))

(declare-fun bs!1009853 () Bool)

(assert (= bs!1009853 (and b!4597134 b!4597003)))

(assert (=> bs!1009853 (= lambda!185995 lambda!185947)))

(declare-fun bs!1009854 () Bool)

(assert (= bs!1009854 (and b!4597134 b!4597067)))

(assert (=> bs!1009854 (= lambda!185995 lambda!185980)))

(declare-fun bs!1009855 () Bool)

(assert (= bs!1009855 (and b!4597134 b!4596768)))

(assert (=> bs!1009855 (= lambda!185995 lambda!185883)))

(declare-fun bs!1009856 () Bool)

(assert (= bs!1009856 (and b!4597134 b!4597117)))

(assert (=> bs!1009856 (= lambda!185995 lambda!185990)))

(declare-fun b!4597130 () Bool)

(assert (=> b!4597130 false))

(declare-fun e!2867433 () Unit!107861)

(declare-fun Unit!107988 () Unit!107861)

(assert (=> b!4597130 (= e!2867433 Unit!107988)))

(declare-fun b!4597131 () Bool)

(declare-fun res!1922684 () Bool)

(declare-fun e!2867432 () Bool)

(assert (=> b!4597131 (=> (not res!1922684) (not e!2867432))))

(declare-fun lt!1757200 () List!51195)

(assert (=> b!4597131 (= res!1922684 (= (length!476 lt!1757200) (length!477 (toList!4644 lt!1756613))))))

(declare-fun res!1922685 () Bool)

(assert (=> b!4597132 (=> (not res!1922685) (not e!2867432))))

(assert (=> b!4597132 (= res!1922685 (forall!10594 lt!1757200 lambda!185994))))

(declare-fun e!2867431 () List!51195)

(assert (=> b!4597133 (= e!2867431 (Cons!51071 (_1!29147 (h!57030 (toList!4644 lt!1756613))) (getKeysList!571 (t!358186 (toList!4644 lt!1756613)))))))

(declare-fun c!787338 () Bool)

(assert (=> b!4597133 (= c!787338 (containsKey!2150 (t!358186 (toList!4644 lt!1756613)) (_1!29147 (h!57030 (toList!4644 lt!1756613)))))))

(declare-fun lt!1757198 () Unit!107861)

(assert (=> b!4597133 (= lt!1757198 e!2867433)))

(declare-fun c!787339 () Bool)

(assert (=> b!4597133 (= c!787339 (contains!14013 (getKeysList!571 (t!358186 (toList!4644 lt!1756613))) (_1!29147 (h!57030 (toList!4644 lt!1756613)))))))

(declare-fun lt!1757196 () Unit!107861)

(declare-fun e!2867430 () Unit!107861)

(assert (=> b!4597133 (= lt!1757196 e!2867430)))

(declare-fun lt!1757194 () List!51195)

(assert (=> b!4597133 (= lt!1757194 (getKeysList!571 (t!358186 (toList!4644 lt!1756613))))))

(declare-fun lt!1757195 () Unit!107861)

(assert (=> b!4597133 (= lt!1757195 (lemmaForallContainsAddHeadPreserves!230 (t!358186 (toList!4644 lt!1756613)) lt!1757194 (h!57030 (toList!4644 lt!1756613))))))

(assert (=> b!4597133 (forall!10594 lt!1757194 lambda!185993)))

(declare-fun lt!1757197 () Unit!107861)

(assert (=> b!4597133 (= lt!1757197 lt!1757195)))

(declare-fun b!4597135 () Bool)

(declare-fun Unit!107989 () Unit!107861)

(assert (=> b!4597135 (= e!2867433 Unit!107989)))

(declare-fun b!4597136 () Bool)

(assert (=> b!4597136 (= e!2867431 Nil!51071)))

(declare-fun d!1447121 () Bool)

(assert (=> d!1447121 e!2867432))

(declare-fun res!1922686 () Bool)

(assert (=> d!1447121 (=> (not res!1922686) (not e!2867432))))

(assert (=> d!1447121 (= res!1922686 (noDuplicate!810 lt!1757200))))

(assert (=> d!1447121 (= lt!1757200 e!2867431)))

(declare-fun c!787340 () Bool)

(assert (=> d!1447121 (= c!787340 ((_ is Cons!51068) (toList!4644 lt!1756613)))))

(assert (=> d!1447121 (invariantList!1122 (toList!4644 lt!1756613))))

(assert (=> d!1447121 (= (getKeysList!571 (toList!4644 lt!1756613)) lt!1757200)))

(assert (=> b!4597134 (= e!2867432 (= (content!8640 lt!1757200) (content!8640 (map!11280 (toList!4644 lt!1756613) lambda!185995))))))

(declare-fun b!4597137 () Bool)

(declare-fun Unit!107990 () Unit!107861)

(assert (=> b!4597137 (= e!2867430 Unit!107990)))

(assert (=> b!4597138 false))

(declare-fun lt!1757199 () Unit!107861)

(assert (=> b!4597138 (= lt!1757199 (forallContained!2847 (getKeysList!571 (t!358186 (toList!4644 lt!1756613))) lambda!185992 (_1!29147 (h!57030 (toList!4644 lt!1756613)))))))

(declare-fun Unit!107991 () Unit!107861)

(assert (=> b!4597138 (= e!2867430 Unit!107991)))

(assert (= (and d!1447121 c!787340) b!4597133))

(assert (= (and d!1447121 (not c!787340)) b!4597136))

(assert (= (and b!4597133 c!787338) b!4597130))

(assert (= (and b!4597133 (not c!787338)) b!4597135))

(assert (= (and b!4597133 c!787339) b!4597138))

(assert (= (and b!4597133 (not c!787339)) b!4597137))

(assert (= (and d!1447121 res!1922686) b!4597131))

(assert (= (and b!4597131 res!1922684) b!4597132))

(assert (= (and b!4597132 res!1922685) b!4597134))

(declare-fun m!5422373 () Bool)

(assert (=> b!4597138 m!5422373))

(assert (=> b!4597138 m!5422373))

(declare-fun m!5422375 () Bool)

(assert (=> b!4597138 m!5422375))

(declare-fun m!5422377 () Bool)

(assert (=> d!1447121 m!5422377))

(assert (=> d!1447121 m!5421761))

(declare-fun m!5422379 () Bool)

(assert (=> b!4597131 m!5422379))

(assert (=> b!4597131 m!5421749))

(declare-fun m!5422381 () Bool)

(assert (=> b!4597132 m!5422381))

(assert (=> b!4597133 m!5422373))

(declare-fun m!5422383 () Bool)

(assert (=> b!4597133 m!5422383))

(declare-fun m!5422385 () Bool)

(assert (=> b!4597133 m!5422385))

(assert (=> b!4597133 m!5422373))

(declare-fun m!5422387 () Bool)

(assert (=> b!4597133 m!5422387))

(declare-fun m!5422389 () Bool)

(assert (=> b!4597133 m!5422389))

(declare-fun m!5422391 () Bool)

(assert (=> b!4597134 m!5422391))

(declare-fun m!5422393 () Bool)

(assert (=> b!4597134 m!5422393))

(assert (=> b!4597134 m!5422393))

(declare-fun m!5422395 () Bool)

(assert (=> b!4597134 m!5422395))

(assert (=> b!4596640 d!1447121))

(declare-fun d!1447127 () Bool)

(declare-fun res!1922700 () Bool)

(declare-fun e!2867443 () Bool)

(assert (=> d!1447127 (=> res!1922700 e!2867443)))

(assert (=> d!1447127 (= res!1922700 (and ((_ is Cons!51068) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) key!3287)))))

(assert (=> d!1447127 (= (containsKey!2150 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287) e!2867443)))

(declare-fun b!4597152 () Bool)

(declare-fun e!2867444 () Bool)

(assert (=> b!4597152 (= e!2867443 e!2867444)))

(declare-fun res!1922701 () Bool)

(assert (=> b!4597152 (=> (not res!1922701) (not e!2867444))))

(assert (=> b!4597152 (= res!1922701 ((_ is Cons!51068) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))))

(declare-fun b!4597153 () Bool)

(assert (=> b!4597153 (= e!2867444 (containsKey!2150 (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) key!3287))))

(assert (= (and d!1447127 (not res!1922700)) b!4597152))

(assert (= (and b!4597152 res!1922701) b!4597153))

(declare-fun m!5422397 () Bool)

(assert (=> b!4597153 m!5422397))

(assert (=> d!1446891 d!1447127))

(declare-fun d!1447129 () Bool)

(declare-fun lt!1757203 () Bool)

(assert (=> d!1447129 (= lt!1757203 (select (content!8640 e!2867147) key!3287))))

(declare-fun e!2867446 () Bool)

(assert (=> d!1447129 (= lt!1757203 e!2867446)))

(declare-fun res!1922702 () Bool)

(assert (=> d!1447129 (=> (not res!1922702) (not e!2867446))))

(assert (=> d!1447129 (= res!1922702 ((_ is Cons!51071) e!2867147))))

(assert (=> d!1447129 (= (contains!14013 e!2867147 key!3287) lt!1757203)))

(declare-fun b!4597154 () Bool)

(declare-fun e!2867445 () Bool)

(assert (=> b!4597154 (= e!2867446 e!2867445)))

(declare-fun res!1922703 () Bool)

(assert (=> b!4597154 (=> res!1922703 e!2867445)))

(assert (=> b!4597154 (= res!1922703 (= (h!57035 e!2867147) key!3287))))

(declare-fun b!4597155 () Bool)

(assert (=> b!4597155 (= e!2867445 (contains!14013 (t!358189 e!2867147) key!3287))))

(assert (= (and d!1447129 res!1922702) b!4597154))

(assert (= (and b!4597154 (not res!1922703)) b!4597155))

(declare-fun m!5422399 () Bool)

(assert (=> d!1447129 m!5422399))

(declare-fun m!5422401 () Bool)

(assert (=> d!1447129 m!5422401))

(declare-fun m!5422403 () Bool)

(assert (=> b!4597155 m!5422403))

(assert (=> bm!320734 d!1447129))

(declare-fun b!4597158 () Bool)

(declare-fun e!2867448 () List!51192)

(assert (=> b!4597158 (= e!2867448 (Cons!51068 (h!57030 (t!358186 lt!1756619)) (removePairForKey!939 (t!358186 (t!358186 lt!1756619)) key!3287)))))

(declare-fun b!4597156 () Bool)

(declare-fun e!2867447 () List!51192)

(assert (=> b!4597156 (= e!2867447 (t!358186 (t!358186 lt!1756619)))))

(declare-fun b!4597157 () Bool)

(assert (=> b!4597157 (= e!2867447 e!2867448)))

(declare-fun c!787341 () Bool)

(assert (=> b!4597157 (= c!787341 ((_ is Cons!51068) (t!358186 lt!1756619)))))

(declare-fun d!1447131 () Bool)

(declare-fun lt!1757204 () List!51192)

(assert (=> d!1447131 (not (containsKey!2146 lt!1757204 key!3287))))

(assert (=> d!1447131 (= lt!1757204 e!2867447)))

(declare-fun c!787342 () Bool)

(assert (=> d!1447131 (= c!787342 (and ((_ is Cons!51068) (t!358186 lt!1756619)) (= (_1!29147 (h!57030 (t!358186 lt!1756619))) key!3287)))))

(assert (=> d!1447131 (noDuplicateKeys!1314 (t!358186 lt!1756619))))

(assert (=> d!1447131 (= (removePairForKey!939 (t!358186 lt!1756619) key!3287) lt!1757204)))

(declare-fun b!4597159 () Bool)

(assert (=> b!4597159 (= e!2867448 Nil!51068)))

(assert (= (and d!1447131 c!787342) b!4597156))

(assert (= (and d!1447131 (not c!787342)) b!4597157))

(assert (= (and b!4597157 c!787341) b!4597158))

(assert (= (and b!4597157 (not c!787341)) b!4597159))

(declare-fun m!5422405 () Bool)

(assert (=> b!4597158 m!5422405))

(declare-fun m!5422407 () Bool)

(assert (=> d!1447131 m!5422407))

(assert (=> d!1447131 m!5422117))

(assert (=> b!4596457 d!1447131))

(declare-fun d!1447133 () Bool)

(declare-fun isEmpty!28861 (Option!11386) Bool)

(assert (=> d!1447133 (= (isDefined!8653 (getValueByKey!1306 (toList!4643 lm!1477) lt!1756609)) (not (isEmpty!28861 (getValueByKey!1306 (toList!4643 lm!1477) lt!1756609))))))

(declare-fun bs!1009857 () Bool)

(assert (= bs!1009857 d!1447133))

(assert (=> bs!1009857 m!5421245))

(declare-fun m!5422409 () Bool)

(assert (=> bs!1009857 m!5422409))

(assert (=> b!4596416 d!1447133))

(declare-fun b!4597164 () Bool)

(declare-fun e!2867450 () Option!11386)

(declare-fun e!2867451 () Option!11386)

(assert (=> b!4597164 (= e!2867450 e!2867451)))

(declare-fun c!787344 () Bool)

(assert (=> b!4597164 (= c!787344 (and ((_ is Cons!51069) (toList!4643 lm!1477)) (not (= (_1!29148 (h!57031 (toList!4643 lm!1477))) lt!1756609))))))

(declare-fun b!4597165 () Bool)

(assert (=> b!4597165 (= e!2867451 (getValueByKey!1306 (t!358187 (toList!4643 lm!1477)) lt!1756609))))

(declare-fun b!4597163 () Bool)

(assert (=> b!4597163 (= e!2867450 (Some!11385 (_2!29148 (h!57031 (toList!4643 lm!1477)))))))

(declare-fun d!1447135 () Bool)

(declare-fun c!787343 () Bool)

(assert (=> d!1447135 (= c!787343 (and ((_ is Cons!51069) (toList!4643 lm!1477)) (= (_1!29148 (h!57031 (toList!4643 lm!1477))) lt!1756609)))))

(assert (=> d!1447135 (= (getValueByKey!1306 (toList!4643 lm!1477) lt!1756609) e!2867450)))

(declare-fun b!4597166 () Bool)

(assert (=> b!4597166 (= e!2867451 None!11385)))

(assert (= (and d!1447135 c!787343) b!4597163))

(assert (= (and d!1447135 (not c!787343)) b!4597164))

(assert (= (and b!4597164 c!787344) b!4597165))

(assert (= (and b!4597164 (not c!787344)) b!4597166))

(declare-fun m!5422411 () Bool)

(assert (=> b!4597165 m!5422411))

(assert (=> b!4596416 d!1447135))

(assert (=> d!1446907 d!1446891))

(assert (=> d!1446907 d!1446893))

(declare-fun d!1447137 () Bool)

(assert (=> d!1447137 (not (contains!14011 (extractMap!1374 (toList!4643 lm!1477)) key!3287))))

(assert (=> d!1447137 true))

(declare-fun _$26!539 () Unit!107861)

(assert (=> d!1447137 (= (choose!30786 lm!1477 key!3287 hashF!1107) _$26!539)))

(declare-fun bs!1009879 () Bool)

(assert (= bs!1009879 d!1447137))

(assert (=> bs!1009879 m!5421157))

(assert (=> bs!1009879 m!5421157))

(assert (=> bs!1009879 m!5421159))

(assert (=> d!1446907 d!1447137))

(declare-fun d!1447149 () Bool)

(declare-fun res!1922720 () Bool)

(declare-fun e!2867468 () Bool)

(assert (=> d!1447149 (=> res!1922720 e!2867468)))

(assert (=> d!1447149 (= res!1922720 ((_ is Nil!51069) (toList!4643 lm!1477)))))

(assert (=> d!1447149 (= (forall!10590 (toList!4643 lm!1477) lambda!185872) e!2867468)))

(declare-fun b!4597192 () Bool)

(declare-fun e!2867469 () Bool)

(assert (=> b!4597192 (= e!2867468 e!2867469)))

(declare-fun res!1922721 () Bool)

(assert (=> b!4597192 (=> (not res!1922721) (not e!2867469))))

(assert (=> b!4597192 (= res!1922721 (dynLambda!21392 lambda!185872 (h!57031 (toList!4643 lm!1477))))))

(declare-fun b!4597193 () Bool)

(assert (=> b!4597193 (= e!2867469 (forall!10590 (t!358187 (toList!4643 lm!1477)) lambda!185872))))

(assert (= (and d!1447149 (not res!1922720)) b!4597192))

(assert (= (and b!4597192 res!1922721) b!4597193))

(declare-fun b_lambda!169215 () Bool)

(assert (=> (not b_lambda!169215) (not b!4597192)))

(declare-fun m!5422465 () Bool)

(assert (=> b!4597192 m!5422465))

(declare-fun m!5422467 () Bool)

(assert (=> b!4597193 m!5422467))

(assert (=> d!1446907 d!1447149))

(declare-fun d!1447151 () Bool)

(declare-fun lt!1757216 () Bool)

(assert (=> d!1447151 (= lt!1757216 (select (content!8639 (toList!4643 lm!1477)) (tuple2!51709 hash!344 lt!1756619)))))

(declare-fun e!2867470 () Bool)

(assert (=> d!1447151 (= lt!1757216 e!2867470)))

(declare-fun res!1922722 () Bool)

(assert (=> d!1447151 (=> (not res!1922722) (not e!2867470))))

(assert (=> d!1447151 (= res!1922722 ((_ is Cons!51069) (toList!4643 lm!1477)))))

(assert (=> d!1447151 (= (contains!14009 (toList!4643 lm!1477) (tuple2!51709 hash!344 lt!1756619)) lt!1757216)))

(declare-fun b!4597194 () Bool)

(declare-fun e!2867471 () Bool)

(assert (=> b!4597194 (= e!2867470 e!2867471)))

(declare-fun res!1922723 () Bool)

(assert (=> b!4597194 (=> res!1922723 e!2867471)))

(assert (=> b!4597194 (= res!1922723 (= (h!57031 (toList!4643 lm!1477)) (tuple2!51709 hash!344 lt!1756619)))))

(declare-fun b!4597195 () Bool)

(assert (=> b!4597195 (= e!2867471 (contains!14009 (t!358187 (toList!4643 lm!1477)) (tuple2!51709 hash!344 lt!1756619)))))

(assert (= (and d!1447151 res!1922722) b!4597194))

(assert (= (and b!4597194 (not res!1922723)) b!4597195))

(assert (=> d!1447151 m!5421211))

(declare-fun m!5422469 () Bool)

(assert (=> d!1447151 m!5422469))

(declare-fun m!5422471 () Bool)

(assert (=> b!4597195 m!5422471))

(assert (=> d!1446809 d!1447151))

(declare-fun d!1447153 () Bool)

(assert (=> d!1447153 (contains!14009 (toList!4643 lm!1477) (tuple2!51709 hash!344 lt!1756619))))

(assert (=> d!1447153 true))

(declare-fun _$14!1467 () Unit!107861)

(assert (=> d!1447153 (= (choose!30779 (toList!4643 lm!1477) hash!344 lt!1756619) _$14!1467)))

(declare-fun bs!1009881 () Bool)

(assert (= bs!1009881 d!1447153))

(assert (=> bs!1009881 m!5421319))

(assert (=> d!1446809 d!1447153))

(assert (=> d!1446809 d!1447079))

(declare-fun b!4597204 () Bool)

(declare-fun e!2867481 () Unit!107861)

(declare-fun e!2867480 () Unit!107861)

(assert (=> b!4597204 (= e!2867481 e!2867480)))

(declare-fun c!787354 () Bool)

(declare-fun call!320807 () Bool)

(assert (=> b!4597204 (= c!787354 call!320807)))

(declare-fun b!4597205 () Bool)

(assert (=> b!4597205 false))

(declare-fun lt!1757224 () Unit!107861)

(declare-fun lt!1757217 () Unit!107861)

(assert (=> b!4597205 (= lt!1757224 lt!1757217)))

(assert (=> b!4597205 (containsKey!2150 (toList!4644 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))) key!3287)))

(assert (=> b!4597205 (= lt!1757217 (lemmaInGetKeysListThenContainsKey!570 (toList!4644 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))) key!3287))))

(declare-fun Unit!107992 () Unit!107861)

(assert (=> b!4597205 (= e!2867480 Unit!107992)))

(declare-fun b!4597206 () Bool)

(declare-fun e!2867477 () Bool)

(declare-fun e!2867476 () Bool)

(assert (=> b!4597206 (= e!2867477 e!2867476)))

(declare-fun res!1922725 () Bool)

(assert (=> b!4597206 (=> (not res!1922725) (not e!2867476))))

(assert (=> b!4597206 (= res!1922725 (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))) key!3287)))))

(declare-fun b!4597207 () Bool)

(declare-fun e!2867478 () Bool)

(assert (=> b!4597207 (= e!2867478 (not (contains!14013 (keys!17878 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))) key!3287)))))

(declare-fun b!4597208 () Bool)

(declare-fun lt!1757221 () Unit!107861)

(assert (=> b!4597208 (= e!2867481 lt!1757221)))

(declare-fun lt!1757219 () Unit!107861)

(assert (=> b!4597208 (= lt!1757219 (lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (toList!4644 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))) key!3287))))

(assert (=> b!4597208 (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))) key!3287))))

(declare-fun lt!1757223 () Unit!107861)

(assert (=> b!4597208 (= lt!1757223 lt!1757219)))

(assert (=> b!4597208 (= lt!1757221 (lemmaInListThenGetKeysListContains!567 (toList!4644 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))) key!3287))))

(assert (=> b!4597208 call!320807))

(declare-fun bm!320802 () Bool)

(declare-fun e!2867479 () List!51195)

(assert (=> bm!320802 (= call!320807 (contains!14013 e!2867479 key!3287))))

(declare-fun c!787355 () Bool)

(declare-fun c!787356 () Bool)

(assert (=> bm!320802 (= c!787355 c!787356)))

(declare-fun b!4597209 () Bool)

(assert (=> b!4597209 (= e!2867476 (contains!14013 (keys!17878 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))) key!3287))))

(declare-fun b!4597210 () Bool)

(assert (=> b!4597210 (= e!2867479 (getKeysList!571 (toList!4644 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615))))))))

(declare-fun b!4597211 () Bool)

(assert (=> b!4597211 (= e!2867479 (keys!17878 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))))))

(declare-fun b!4597212 () Bool)

(declare-fun Unit!107993 () Unit!107861)

(assert (=> b!4597212 (= e!2867480 Unit!107993)))

(declare-fun d!1447161 () Bool)

(assert (=> d!1447161 e!2867477))

(declare-fun res!1922724 () Bool)

(assert (=> d!1447161 (=> res!1922724 e!2867477)))

(assert (=> d!1447161 (= res!1922724 e!2867478)))

(declare-fun res!1922726 () Bool)

(assert (=> d!1447161 (=> (not res!1922726) (not e!2867478))))

(declare-fun lt!1757218 () Bool)

(assert (=> d!1447161 (= res!1922726 (not lt!1757218))))

(declare-fun lt!1757222 () Bool)

(assert (=> d!1447161 (= lt!1757218 lt!1757222)))

(declare-fun lt!1757220 () Unit!107861)

(assert (=> d!1447161 (= lt!1757220 e!2867481)))

(assert (=> d!1447161 (= c!787356 lt!1757222)))

(assert (=> d!1447161 (= lt!1757222 (containsKey!2150 (toList!4644 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615)))) key!3287))))

(assert (=> d!1447161 (= (contains!14011 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615))) key!3287) lt!1757218)))

(assert (= (and d!1447161 c!787356) b!4597208))

(assert (= (and d!1447161 (not c!787356)) b!4597204))

(assert (= (and b!4597204 c!787354) b!4597205))

(assert (= (and b!4597204 (not c!787354)) b!4597212))

(assert (= (or b!4597208 b!4597204) bm!320802))

(assert (= (and bm!320802 c!787355) b!4597210))

(assert (= (and bm!320802 (not c!787355)) b!4597211))

(assert (= (and d!1447161 res!1922726) b!4597207))

(assert (= (and d!1447161 (not res!1922724)) b!4597206))

(assert (= (and b!4597206 res!1922725) b!4597209))

(declare-fun m!5422491 () Bool)

(assert (=> b!4597206 m!5422491))

(assert (=> b!4597206 m!5422491))

(declare-fun m!5422495 () Bool)

(assert (=> b!4597206 m!5422495))

(declare-fun m!5422497 () Bool)

(assert (=> d!1447161 m!5422497))

(declare-fun m!5422499 () Bool)

(assert (=> b!4597208 m!5422499))

(assert (=> b!4597208 m!5422491))

(assert (=> b!4597208 m!5422491))

(assert (=> b!4597208 m!5422495))

(declare-fun m!5422501 () Bool)

(assert (=> b!4597208 m!5422501))

(assert (=> b!4597207 m!5421547))

(declare-fun m!5422503 () Bool)

(assert (=> b!4597207 m!5422503))

(assert (=> b!4597207 m!5422503))

(declare-fun m!5422505 () Bool)

(assert (=> b!4597207 m!5422505))

(declare-fun m!5422509 () Bool)

(assert (=> b!4597210 m!5422509))

(declare-fun m!5422511 () Bool)

(assert (=> bm!320802 m!5422511))

(assert (=> b!4597211 m!5421547))

(assert (=> b!4597211 m!5422503))

(assert (=> b!4597209 m!5421547))

(assert (=> b!4597209 m!5422503))

(assert (=> b!4597209 m!5422503))

(assert (=> b!4597209 m!5422505))

(assert (=> b!4597205 m!5422497))

(declare-fun m!5422515 () Bool)

(assert (=> b!4597205 m!5422515))

(assert (=> d!1446879 d!1447161))

(declare-fun bs!1009886 () Bool)

(declare-fun d!1447175 () Bool)

(assert (= bs!1009886 (and d!1447175 d!1447019)))

(declare-fun lambda!186006 () Int)

(assert (=> bs!1009886 (= lambda!186006 lambda!185929)))

(declare-fun bs!1009887 () Bool)

(assert (= bs!1009887 (and d!1447175 d!1446835)))

(assert (=> bs!1009887 (= lambda!186006 lambda!185850)))

(declare-fun bs!1009889 () Bool)

(assert (= bs!1009889 (and d!1447175 d!1447025)))

(assert (=> bs!1009889 (= lambda!186006 lambda!185930)))

(declare-fun bs!1009890 () Bool)

(assert (= bs!1009890 (and d!1447175 d!1447031)))

(assert (=> bs!1009890 (= lambda!186006 lambda!185935)))

(declare-fun bs!1009891 () Bool)

(assert (= bs!1009891 (and d!1447175 d!1446825)))

(assert (=> bs!1009891 (= lambda!186006 lambda!185849)))

(declare-fun bs!1009892 () Bool)

(assert (= bs!1009892 (and d!1447175 d!1446893)))

(assert (=> bs!1009892 (= lambda!186006 lambda!185867)))

(declare-fun bs!1009893 () Bool)

(assert (= bs!1009893 (and d!1447175 d!1447015)))

(assert (=> bs!1009893 (= lambda!186006 lambda!185924)))

(declare-fun bs!1009894 () Bool)

(assert (= bs!1009894 (and d!1447175 start!458528)))

(assert (=> bs!1009894 (= lambda!186006 lambda!185824)))

(declare-fun bs!1009895 () Bool)

(assert (= bs!1009895 (and d!1447175 d!1446895)))

(assert (=> bs!1009895 (= lambda!186006 lambda!185868)))

(declare-fun bs!1009896 () Bool)

(assert (= bs!1009896 (and d!1447175 d!1446897)))

(assert (=> bs!1009896 (= lambda!186006 lambda!185869)))

(declare-fun bs!1009897 () Bool)

(assert (= bs!1009897 (and d!1447175 d!1446821)))

(assert (=> bs!1009897 (not (= lambda!186006 lambda!185843))))

(declare-fun bs!1009898 () Bool)

(assert (= bs!1009898 (and d!1447175 d!1446907)))

(assert (=> bs!1009898 (= lambda!186006 lambda!185872)))

(declare-fun bs!1009899 () Bool)

(assert (= bs!1009899 (and d!1447175 d!1446771)))

(assert (=> bs!1009899 (= lambda!186006 lambda!185827)))

(declare-fun bs!1009900 () Bool)

(assert (= bs!1009900 (and d!1447175 d!1446883)))

(assert (=> bs!1009900 (= lambda!186006 lambda!185863)))

(declare-fun bs!1009901 () Bool)

(assert (= bs!1009901 (and d!1447175 d!1446813)))

(assert (=> bs!1009901 (not (= lambda!186006 lambda!185842))))

(declare-fun bs!1009902 () Bool)

(assert (= bs!1009902 (and d!1447175 d!1446879)))

(assert (=> bs!1009902 (= lambda!186006 lambda!185862)))

(declare-fun bs!1009903 () Bool)

(assert (= bs!1009903 (and d!1447175 d!1447075)))

(assert (=> bs!1009903 (= lambda!186006 lambda!185966)))

(declare-fun lt!1757226 () ListMap!3905)

(assert (=> d!1447175 (invariantList!1122 (toList!4644 lt!1757226))))

(declare-fun e!2867486 () ListMap!3905)

(assert (=> d!1447175 (= lt!1757226 e!2867486)))

(declare-fun c!787359 () Bool)

(assert (=> d!1447175 (= c!787359 ((_ is Cons!51069) (toList!4643 (ListLongMap!3276 lt!1756615))))))

(assert (=> d!1447175 (forall!10590 (toList!4643 (ListLongMap!3276 lt!1756615)) lambda!186006)))

(assert (=> d!1447175 (= (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615))) lt!1757226)))

(declare-fun b!4597219 () Bool)

(assert (=> b!4597219 (= e!2867486 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (toList!4643 (ListLongMap!3276 lt!1756615)))) (extractMap!1374 (t!358187 (toList!4643 (ListLongMap!3276 lt!1756615))))))))

(declare-fun b!4597220 () Bool)

(assert (=> b!4597220 (= e!2867486 (ListMap!3906 Nil!51068))))

(assert (= (and d!1447175 c!787359) b!4597219))

(assert (= (and d!1447175 (not c!787359)) b!4597220))

(declare-fun m!5422527 () Bool)

(assert (=> d!1447175 m!5422527))

(declare-fun m!5422529 () Bool)

(assert (=> d!1447175 m!5422529))

(declare-fun m!5422531 () Bool)

(assert (=> b!4597219 m!5422531))

(assert (=> b!4597219 m!5422531))

(declare-fun m!5422533 () Bool)

(assert (=> b!4597219 m!5422533))

(assert (=> d!1446879 d!1447175))

(declare-fun d!1447183 () Bool)

(assert (=> d!1447183 (contains!14011 (extractMap!1374 (toList!4643 (ListLongMap!3276 lt!1756615))) key!3287)))

(assert (=> d!1447183 true))

(declare-fun _$34!817 () Unit!107861)

(assert (=> d!1447183 (= (choose!30784 (ListLongMap!3276 lt!1756615) key!3287 hashF!1107) _$34!817)))

(declare-fun bs!1009916 () Bool)

(assert (= bs!1009916 d!1447183))

(assert (=> bs!1009916 m!5421547))

(assert (=> bs!1009916 m!5421547))

(assert (=> bs!1009916 m!5421549))

(assert (=> d!1446879 d!1447183))

(declare-fun d!1447195 () Bool)

(declare-fun res!1922748 () Bool)

(declare-fun e!2867506 () Bool)

(assert (=> d!1447195 (=> res!1922748 e!2867506)))

(assert (=> d!1447195 (= res!1922748 ((_ is Nil!51069) (toList!4643 (ListLongMap!3276 lt!1756615))))))

(assert (=> d!1447195 (= (forall!10590 (toList!4643 (ListLongMap!3276 lt!1756615)) lambda!185862) e!2867506)))

(declare-fun b!4597242 () Bool)

(declare-fun e!2867507 () Bool)

(assert (=> b!4597242 (= e!2867506 e!2867507)))

(declare-fun res!1922749 () Bool)

(assert (=> b!4597242 (=> (not res!1922749) (not e!2867507))))

(assert (=> b!4597242 (= res!1922749 (dynLambda!21392 lambda!185862 (h!57031 (toList!4643 (ListLongMap!3276 lt!1756615)))))))

(declare-fun b!4597243 () Bool)

(assert (=> b!4597243 (= e!2867507 (forall!10590 (t!358187 (toList!4643 (ListLongMap!3276 lt!1756615))) lambda!185862))))

(assert (= (and d!1447195 (not res!1922748)) b!4597242))

(assert (= (and b!4597242 res!1922749) b!4597243))

(declare-fun b_lambda!169221 () Bool)

(assert (=> (not b_lambda!169221) (not b!4597242)))

(declare-fun m!5422547 () Bool)

(assert (=> b!4597242 m!5422547))

(declare-fun m!5422549 () Bool)

(assert (=> b!4597243 m!5422549))

(assert (=> d!1446879 d!1447195))

(assert (=> b!4596637 d!1446959))

(assert (=> b!4596637 d!1446961))

(declare-fun d!1447197 () Bool)

(declare-fun res!1922750 () Bool)

(declare-fun e!2867508 () Bool)

(assert (=> d!1447197 (=> res!1922750 e!2867508)))

(assert (=> d!1447197 (= res!1922750 (and ((_ is Cons!51068) (toList!4644 lt!1756613)) (= (_1!29147 (h!57030 (toList!4644 lt!1756613))) key!3287)))))

(assert (=> d!1447197 (= (containsKey!2150 (toList!4644 lt!1756613) key!3287) e!2867508)))

(declare-fun b!4597244 () Bool)

(declare-fun e!2867509 () Bool)

(assert (=> b!4597244 (= e!2867508 e!2867509)))

(declare-fun res!1922751 () Bool)

(assert (=> b!4597244 (=> (not res!1922751) (not e!2867509))))

(assert (=> b!4597244 (= res!1922751 ((_ is Cons!51068) (toList!4644 lt!1756613)))))

(declare-fun b!4597245 () Bool)

(assert (=> b!4597245 (= e!2867509 (containsKey!2150 (t!358186 (toList!4644 lt!1756613)) key!3287))))

(assert (= (and d!1447197 (not res!1922750)) b!4597244))

(assert (= (and b!4597244 res!1922751) b!4597245))

(declare-fun m!5422551 () Bool)

(assert (=> b!4597245 m!5422551))

(assert (=> b!4596635 d!1447197))

(declare-fun d!1447199 () Bool)

(assert (=> d!1447199 (containsKey!2150 (toList!4644 lt!1756613) key!3287)))

(declare-fun lt!1757253 () Unit!107861)

(declare-fun choose!30795 (List!51192 K!12435) Unit!107861)

(assert (=> d!1447199 (= lt!1757253 (choose!30795 (toList!4644 lt!1756613) key!3287))))

(assert (=> d!1447199 (invariantList!1122 (toList!4644 lt!1756613))))

(assert (=> d!1447199 (= (lemmaInGetKeysListThenContainsKey!570 (toList!4644 lt!1756613) key!3287) lt!1757253)))

(declare-fun bs!1009922 () Bool)

(assert (= bs!1009922 d!1447199))

(assert (=> bs!1009922 m!5421627))

(declare-fun m!5422585 () Bool)

(assert (=> bs!1009922 m!5422585))

(assert (=> bs!1009922 m!5421761))

(assert (=> b!4596635 d!1447199))

(declare-fun d!1447203 () Bool)

(assert (=> d!1447203 (isDefined!8653 (getValueByKey!1306 (toList!4643 lm!1477) lt!1756609))))

(declare-fun lt!1757264 () Unit!107861)

(declare-fun choose!30796 (List!51193 (_ BitVec 64)) Unit!107861)

(assert (=> d!1447203 (= lt!1757264 (choose!30796 (toList!4643 lm!1477) lt!1756609))))

(declare-fun e!2867521 () Bool)

(assert (=> d!1447203 e!2867521))

(declare-fun res!1922761 () Bool)

(assert (=> d!1447203 (=> (not res!1922761) (not e!2867521))))

(assert (=> d!1447203 (= res!1922761 (isStrictlySorted!538 (toList!4643 lm!1477)))))

(assert (=> d!1447203 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1209 (toList!4643 lm!1477) lt!1756609) lt!1757264)))

(declare-fun b!4597263 () Bool)

(assert (=> b!4597263 (= e!2867521 (containsKey!2148 (toList!4643 lm!1477) lt!1756609))))

(assert (= (and d!1447203 res!1922761) b!4597263))

(assert (=> d!1447203 m!5421245))

(assert (=> d!1447203 m!5421245))

(assert (=> d!1447203 m!5421247))

(declare-fun m!5422601 () Bool)

(assert (=> d!1447203 m!5422601))

(assert (=> d!1447203 m!5421323))

(assert (=> b!4597263 m!5421241))

(assert (=> b!4596414 d!1447203))

(assert (=> b!4596414 d!1447133))

(assert (=> b!4596414 d!1447135))

(declare-fun d!1447211 () Bool)

(declare-fun res!1922762 () Bool)

(declare-fun e!2867522 () Bool)

(assert (=> d!1447211 (=> res!1922762 e!2867522)))

(assert (=> d!1447211 (= res!1922762 (not ((_ is Cons!51068) (_2!29148 (h!57031 (toList!4643 lt!1756611))))))))

(assert (=> d!1447211 (= (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lt!1756611)))) e!2867522)))

(declare-fun b!4597264 () Bool)

(declare-fun e!2867523 () Bool)

(assert (=> b!4597264 (= e!2867522 e!2867523)))

(declare-fun res!1922763 () Bool)

(assert (=> b!4597264 (=> (not res!1922763) (not e!2867523))))

(assert (=> b!4597264 (= res!1922763 (not (containsKey!2146 (t!358186 (_2!29148 (h!57031 (toList!4643 lt!1756611)))) (_1!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lt!1756611))))))))))

(declare-fun b!4597265 () Bool)

(assert (=> b!4597265 (= e!2867523 (noDuplicateKeys!1314 (t!358186 (_2!29148 (h!57031 (toList!4643 lt!1756611))))))))

(assert (= (and d!1447211 (not res!1922762)) b!4597264))

(assert (= (and b!4597264 res!1922763) b!4597265))

(declare-fun m!5422603 () Bool)

(assert (=> b!4597264 m!5422603))

(declare-fun m!5422605 () Bool)

(assert (=> b!4597265 m!5422605))

(assert (=> bs!1009589 d!1447211))

(declare-fun bs!1009945 () Bool)

(declare-fun b!4597267 () Bool)

(assert (= bs!1009945 (and b!4597267 b!4597001)))

(declare-fun lambda!186014 () Int)

(assert (=> bs!1009945 (= lambda!186014 lambda!185946)))

(declare-fun bs!1009947 () Bool)

(assert (= bs!1009947 (and b!4597267 b!4597138)))

(assert (=> bs!1009947 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (t!358186 (toList!4644 lt!1756613))) (= lambda!186014 lambda!185992))))

(declare-fun bs!1009948 () Bool)

(assert (= bs!1009948 (and b!4597267 b!4597066)))

(assert (=> bs!1009948 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= lambda!186014 lambda!185977))))

(declare-fun bs!1009950 () Bool)

(assert (= bs!1009950 (and b!4597267 b!4597116)))

(assert (=> bs!1009950 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (toList!4644 lt!1756729)) (= lambda!186014 lambda!185988))))

(declare-fun bs!1009952 () Bool)

(assert (= bs!1009952 (and b!4597267 b!4596767)))

(assert (=> bs!1009952 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (toList!4644 lt!1756613)) (= lambda!186014 lambda!185882))))

(declare-fun bs!1009954 () Bool)

(assert (= bs!1009954 (and b!4597267 b!4597109)))

(assert (=> bs!1009954 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186014 lambda!185984))))

(declare-fun bs!1009955 () Bool)

(assert (= bs!1009955 (and b!4597267 b!4597133)))

(assert (=> bs!1009955 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613)))) (= lambda!186014 lambda!185993))))

(declare-fun bs!1009957 () Bool)

(assert (= bs!1009957 (and b!4597267 b!4597002)))

(assert (=> bs!1009957 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!186014 lambda!185945))))

(declare-fun bs!1009959 () Bool)

(assert (= bs!1009959 (and b!4597267 b!4597132)))

(assert (=> bs!1009959 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (toList!4644 lt!1756613)) (= lambda!186014 lambda!185994))))

(declare-fun bs!1009961 () Bool)

(assert (= bs!1009961 (and b!4597267 b!4597007)))

(assert (=> bs!1009961 (= (= (toList!4644 (extractMap!1374 lt!1756615)) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!186014 lambda!185944))))

(assert (=> b!4597267 true))

(declare-fun bs!1009962 () Bool)

(declare-fun b!4597268 () Bool)

(assert (= bs!1009962 (and b!4597268 b!4597110)))

(declare-fun lambda!186016 () Int)

(assert (=> bs!1009962 (= lambda!186016 lambda!185986)))

(declare-fun bs!1009964 () Bool)

(assert (= bs!1009964 (and b!4597268 b!4597003)))

(assert (=> bs!1009964 (= lambda!186016 lambda!185947)))

(declare-fun bs!1009966 () Bool)

(assert (= bs!1009966 (and b!4597268 b!4597067)))

(assert (=> bs!1009966 (= lambda!186016 lambda!185980)))

(declare-fun bs!1009968 () Bool)

(assert (= bs!1009968 (and b!4597268 b!4596768)))

(assert (=> bs!1009968 (= lambda!186016 lambda!185883)))

(declare-fun bs!1009970 () Bool)

(assert (= bs!1009970 (and b!4597268 b!4597134)))

(assert (=> bs!1009970 (= lambda!186016 lambda!185995)))

(declare-fun bs!1009972 () Bool)

(assert (= bs!1009972 (and b!4597268 b!4597117)))

(assert (=> bs!1009972 (= lambda!186016 lambda!185990)))

(declare-fun d!1447213 () Bool)

(declare-fun e!2867524 () Bool)

(assert (=> d!1447213 e!2867524))

(declare-fun res!1922764 () Bool)

(assert (=> d!1447213 (=> (not res!1922764) (not e!2867524))))

(declare-fun lt!1757265 () List!51195)

(assert (=> d!1447213 (= res!1922764 (noDuplicate!810 lt!1757265))))

(assert (=> d!1447213 (= lt!1757265 (getKeysList!571 (toList!4644 (extractMap!1374 lt!1756615))))))

(assert (=> d!1447213 (= (keys!17878 (extractMap!1374 lt!1756615)) lt!1757265)))

(declare-fun b!4597266 () Bool)

(declare-fun res!1922765 () Bool)

(assert (=> b!4597266 (=> (not res!1922765) (not e!2867524))))

(assert (=> b!4597266 (= res!1922765 (= (length!476 lt!1757265) (length!477 (toList!4644 (extractMap!1374 lt!1756615)))))))

(declare-fun res!1922766 () Bool)

(assert (=> b!4597267 (=> (not res!1922766) (not e!2867524))))

(assert (=> b!4597267 (= res!1922766 (forall!10594 lt!1757265 lambda!186014))))

(assert (=> b!4597268 (= e!2867524 (= (content!8640 lt!1757265) (content!8640 (map!11280 (toList!4644 (extractMap!1374 lt!1756615)) lambda!186016))))))

(assert (= (and d!1447213 res!1922764) b!4597266))

(assert (= (and b!4597266 res!1922765) b!4597267))

(assert (= (and b!4597267 res!1922766) b!4597268))

(declare-fun m!5422607 () Bool)

(assert (=> d!1447213 m!5422607))

(assert (=> d!1447213 m!5421541))

(declare-fun m!5422609 () Bool)

(assert (=> b!4597266 m!5422609))

(assert (=> b!4597266 m!5422087))

(declare-fun m!5422611 () Bool)

(assert (=> b!4597267 m!5422611))

(declare-fun m!5422613 () Bool)

(assert (=> b!4597268 m!5422613))

(declare-fun m!5422615 () Bool)

(assert (=> b!4597268 m!5422615))

(assert (=> b!4597268 m!5422615))

(declare-fun m!5422617 () Bool)

(assert (=> b!4597268 m!5422617))

(assert (=> b!4596596 d!1447213))

(declare-fun d!1447215 () Bool)

(declare-fun res!1922767 () Bool)

(declare-fun e!2867527 () Bool)

(assert (=> d!1447215 (=> res!1922767 e!2867527)))

(declare-fun e!2867526 () Bool)

(assert (=> d!1447215 (= res!1922767 e!2867526)))

(declare-fun res!1922769 () Bool)

(assert (=> d!1447215 (=> (not res!1922769) (not e!2867526))))

(assert (=> d!1447215 (= res!1922769 ((_ is Cons!51069) (t!358187 lt!1756615)))))

(assert (=> d!1447215 (= (containsKeyBiggerList!270 (t!358187 lt!1756615) key!3287) e!2867527)))

(declare-fun b!4597269 () Bool)

(assert (=> b!4597269 (= e!2867526 (containsKey!2146 (_2!29148 (h!57031 (t!358187 lt!1756615))) key!3287))))

(declare-fun b!4597270 () Bool)

(declare-fun e!2867525 () Bool)

(assert (=> b!4597270 (= e!2867527 e!2867525)))

(declare-fun res!1922768 () Bool)

(assert (=> b!4597270 (=> (not res!1922768) (not e!2867525))))

(assert (=> b!4597270 (= res!1922768 ((_ is Cons!51069) (t!358187 lt!1756615)))))

(declare-fun b!4597271 () Bool)

(assert (=> b!4597271 (= e!2867525 (containsKeyBiggerList!270 (t!358187 (t!358187 lt!1756615)) key!3287))))

(assert (= (and d!1447215 res!1922769) b!4597269))

(assert (= (and d!1447215 (not res!1922767)) b!4597270))

(assert (= (and b!4597270 res!1922768) b!4597271))

(declare-fun m!5422619 () Bool)

(assert (=> b!4597269 m!5422619))

(declare-fun m!5422621 () Bool)

(assert (=> b!4597271 m!5422621))

(assert (=> b!4596612 d!1447215))

(declare-fun bs!1009980 () Bool)

(declare-fun b!4597276 () Bool)

(assert (= bs!1009980 (and b!4597276 b!4596965)))

(declare-fun lambda!186018 () Int)

(assert (=> bs!1009980 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186018 lambda!185926))))

(declare-fun bs!1009981 () Bool)

(assert (= bs!1009981 (and b!4597276 d!1447073)))

(assert (=> bs!1009981 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757106) (= lambda!186018 lambda!185955))))

(declare-fun bs!1009982 () Bool)

(assert (= bs!1009982 (and b!4597276 d!1447017)))

(assert (=> bs!1009982 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757035) (= lambda!186018 lambda!185928))))

(declare-fun bs!1009983 () Bool)

(assert (= bs!1009983 (and b!4597276 b!4597042)))

(assert (=> bs!1009983 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757115) (= lambda!186018 lambda!185950))))

(declare-fun bs!1009984 () Bool)

(assert (= bs!1009984 (and b!4597276 b!4597044)))

(assert (=> bs!1009984 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186018 lambda!185948))))

(assert (=> bs!1009980 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757044) (= lambda!186018 lambda!185927))))

(declare-fun bs!1009985 () Bool)

(assert (= bs!1009985 (and b!4597276 b!4596978)))

(assert (=> bs!1009985 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186018 lambda!185931))))

(declare-fun bs!1009986 () Bool)

(assert (= bs!1009986 (and b!4597276 b!4596956)))

(assert (=> bs!1009986 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757022) (= lambda!186018 lambda!185922))))

(declare-fun bs!1009987 () Bool)

(assert (= bs!1009987 (and b!4597276 b!4596967)))

(assert (=> bs!1009987 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186018 lambda!185925))))

(declare-fun bs!1009988 () Bool)

(assert (= bs!1009988 (and b!4597276 b!4596976)))

(assert (=> bs!1009988 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186018 lambda!185932))))

(assert (=> bs!1009986 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186018 lambda!185921))))

(declare-fun bs!1009989 () Bool)

(assert (= bs!1009989 (and b!4597276 d!1446973)))

(assert (=> bs!1009989 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757013) (= lambda!186018 lambda!185923))))

(declare-fun bs!1009990 () Bool)

(assert (= bs!1009990 (and b!4597276 d!1447029)))

(assert (=> bs!1009990 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757058) (= lambda!186018 lambda!185934))))

(assert (=> bs!1009988 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757067) (= lambda!186018 lambda!185933))))

(declare-fun bs!1009991 () Bool)

(assert (= bs!1009991 (and b!4597276 d!1446887)))

(assert (=> bs!1009991 (not (= lambda!186018 lambda!185866))))

(assert (=> bs!1009983 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186018 lambda!185949))))

(declare-fun bs!1009992 () Bool)

(assert (= bs!1009992 (and b!4597276 b!4596958)))

(assert (=> bs!1009992 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186018 lambda!185920))))

(assert (=> b!4597276 true))

(declare-fun bs!1009993 () Bool)

(declare-fun b!4597274 () Bool)

(assert (= bs!1009993 (and b!4597274 b!4596965)))

(declare-fun lambda!186019 () Int)

(assert (=> bs!1009993 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186019 lambda!185926))))

(declare-fun bs!1009994 () Bool)

(assert (= bs!1009994 (and b!4597274 d!1447073)))

(assert (=> bs!1009994 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757106) (= lambda!186019 lambda!185955))))

(declare-fun bs!1009995 () Bool)

(assert (= bs!1009995 (and b!4597274 d!1447017)))

(assert (=> bs!1009995 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757035) (= lambda!186019 lambda!185928))))

(declare-fun bs!1009996 () Bool)

(assert (= bs!1009996 (and b!4597274 b!4597276)))

(assert (=> bs!1009996 (= lambda!186019 lambda!186018)))

(declare-fun bs!1009997 () Bool)

(assert (= bs!1009997 (and b!4597274 b!4597042)))

(assert (=> bs!1009997 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757115) (= lambda!186019 lambda!185950))))

(declare-fun bs!1009998 () Bool)

(assert (= bs!1009998 (and b!4597274 b!4597044)))

(assert (=> bs!1009998 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186019 lambda!185948))))

(assert (=> bs!1009993 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757044) (= lambda!186019 lambda!185927))))

(declare-fun bs!1009999 () Bool)

(assert (= bs!1009999 (and b!4597274 b!4596978)))

(assert (=> bs!1009999 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186019 lambda!185931))))

(declare-fun bs!1010000 () Bool)

(assert (= bs!1010000 (and b!4597274 b!4596956)))

(assert (=> bs!1010000 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757022) (= lambda!186019 lambda!185922))))

(declare-fun bs!1010001 () Bool)

(assert (= bs!1010001 (and b!4597274 b!4596967)))

(assert (=> bs!1010001 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186019 lambda!185925))))

(declare-fun bs!1010002 () Bool)

(assert (= bs!1010002 (and b!4597274 b!4596976)))

(assert (=> bs!1010002 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186019 lambda!185932))))

(assert (=> bs!1010000 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186019 lambda!185921))))

(declare-fun bs!1010003 () Bool)

(assert (= bs!1010003 (and b!4597274 d!1446973)))

(assert (=> bs!1010003 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757013) (= lambda!186019 lambda!185923))))

(declare-fun bs!1010004 () Bool)

(assert (= bs!1010004 (and b!4597274 d!1447029)))

(assert (=> bs!1010004 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757058) (= lambda!186019 lambda!185934))))

(assert (=> bs!1010002 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757067) (= lambda!186019 lambda!185933))))

(declare-fun bs!1010005 () Bool)

(assert (= bs!1010005 (and b!4597274 d!1446887)))

(assert (=> bs!1010005 (not (= lambda!186019 lambda!185866))))

(assert (=> bs!1009997 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186019 lambda!185949))))

(declare-fun bs!1010006 () Bool)

(assert (= bs!1010006 (and b!4597274 b!4596958)))

(assert (=> bs!1010006 (= (= (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186019 lambda!185920))))

(assert (=> b!4597274 true))

(declare-fun lt!1757285 () ListMap!3905)

(declare-fun lambda!186021 () Int)

(assert (=> bs!1009993 (= (= lt!1757285 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186021 lambda!185926))))

(assert (=> bs!1009995 (= (= lt!1757285 lt!1757035) (= lambda!186021 lambda!185928))))

(assert (=> bs!1009996 (= (= lt!1757285 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186021 lambda!186018))))

(assert (=> bs!1009997 (= (= lt!1757285 lt!1757115) (= lambda!186021 lambda!185950))))

(assert (=> bs!1009998 (= (= lt!1757285 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186021 lambda!185948))))

(assert (=> bs!1009993 (= (= lt!1757285 lt!1757044) (= lambda!186021 lambda!185927))))

(assert (=> bs!1009999 (= (= lt!1757285 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186021 lambda!185931))))

(assert (=> bs!1010000 (= (= lt!1757285 lt!1757022) (= lambda!186021 lambda!185922))))

(assert (=> bs!1010001 (= (= lt!1757285 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186021 lambda!185925))))

(assert (=> bs!1010002 (= (= lt!1757285 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186021 lambda!185932))))

(assert (=> bs!1010000 (= (= lt!1757285 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186021 lambda!185921))))

(assert (=> bs!1010003 (= (= lt!1757285 lt!1757013) (= lambda!186021 lambda!185923))))

(assert (=> bs!1010004 (= (= lt!1757285 lt!1757058) (= lambda!186021 lambda!185934))))

(assert (=> bs!1010002 (= (= lt!1757285 lt!1757067) (= lambda!186021 lambda!185933))))

(assert (=> b!4597274 (= (= lt!1757285 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186021 lambda!186019))))

(assert (=> bs!1009994 (= (= lt!1757285 lt!1757106) (= lambda!186021 lambda!185955))))

(assert (=> bs!1010005 (not (= lambda!186021 lambda!185866))))

(assert (=> bs!1009997 (= (= lt!1757285 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186021 lambda!185949))))

(assert (=> bs!1010006 (= (= lt!1757285 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186021 lambda!185920))))

(assert (=> b!4597274 true))

(declare-fun bs!1010022 () Bool)

(declare-fun d!1447217 () Bool)

(assert (= bs!1010022 (and d!1447217 b!4596965)))

(declare-fun lt!1757276 () ListMap!3905)

(declare-fun lambda!186022 () Int)

(assert (=> bs!1010022 (= (= lt!1757276 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186022 lambda!185926))))

(declare-fun bs!1010023 () Bool)

(assert (= bs!1010023 (and d!1447217 d!1447017)))

(assert (=> bs!1010023 (= (= lt!1757276 lt!1757035) (= lambda!186022 lambda!185928))))

(declare-fun bs!1010024 () Bool)

(assert (= bs!1010024 (and d!1447217 b!4597276)))

(assert (=> bs!1010024 (= (= lt!1757276 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186022 lambda!186018))))

(declare-fun bs!1010025 () Bool)

(assert (= bs!1010025 (and d!1447217 b!4597042)))

(assert (=> bs!1010025 (= (= lt!1757276 lt!1757115) (= lambda!186022 lambda!185950))))

(declare-fun bs!1010026 () Bool)

(assert (= bs!1010026 (and d!1447217 b!4597044)))

(assert (=> bs!1010026 (= (= lt!1757276 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186022 lambda!185948))))

(assert (=> bs!1010022 (= (= lt!1757276 lt!1757044) (= lambda!186022 lambda!185927))))

(declare-fun bs!1010027 () Bool)

(assert (= bs!1010027 (and d!1447217 b!4596978)))

(assert (=> bs!1010027 (= (= lt!1757276 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186022 lambda!185931))))

(declare-fun bs!1010028 () Bool)

(assert (= bs!1010028 (and d!1447217 b!4596956)))

(assert (=> bs!1010028 (= (= lt!1757276 lt!1757022) (= lambda!186022 lambda!185922))))

(declare-fun bs!1010029 () Bool)

(assert (= bs!1010029 (and d!1447217 b!4596967)))

(assert (=> bs!1010029 (= (= lt!1757276 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186022 lambda!185925))))

(declare-fun bs!1010030 () Bool)

(assert (= bs!1010030 (and d!1447217 b!4596976)))

(assert (=> bs!1010030 (= (= lt!1757276 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186022 lambda!185932))))

(assert (=> bs!1010028 (= (= lt!1757276 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186022 lambda!185921))))

(declare-fun bs!1010031 () Bool)

(assert (= bs!1010031 (and d!1447217 d!1447029)))

(assert (=> bs!1010031 (= (= lt!1757276 lt!1757058) (= lambda!186022 lambda!185934))))

(assert (=> bs!1010030 (= (= lt!1757276 lt!1757067) (= lambda!186022 lambda!185933))))

(declare-fun bs!1010032 () Bool)

(assert (= bs!1010032 (and d!1447217 b!4597274)))

(assert (=> bs!1010032 (= (= lt!1757276 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186022 lambda!186019))))

(declare-fun bs!1010033 () Bool)

(assert (= bs!1010033 (and d!1447217 d!1447073)))

(assert (=> bs!1010033 (= (= lt!1757276 lt!1757106) (= lambda!186022 lambda!185955))))

(declare-fun bs!1010034 () Bool)

(assert (= bs!1010034 (and d!1447217 d!1446887)))

(assert (=> bs!1010034 (not (= lambda!186022 lambda!185866))))

(assert (=> bs!1010025 (= (= lt!1757276 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186022 lambda!185949))))

(declare-fun bs!1010035 () Bool)

(assert (= bs!1010035 (and d!1447217 b!4596958)))

(assert (=> bs!1010035 (= (= lt!1757276 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186022 lambda!185920))))

(assert (=> bs!1010032 (= (= lt!1757276 lt!1757285) (= lambda!186022 lambda!186021))))

(declare-fun bs!1010036 () Bool)

(assert (= bs!1010036 (and d!1447217 d!1446973)))

(assert (=> bs!1010036 (= (= lt!1757276 lt!1757013) (= lambda!186022 lambda!185923))))

(assert (=> d!1447217 true))

(declare-fun b!4597272 () Bool)

(declare-fun e!2867529 () Bool)

(assert (=> b!4597272 (= e!2867529 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) lambda!186021))))

(declare-fun bm!320806 () Bool)

(declare-fun call!320812 () Unit!107861)

(assert (=> bm!320806 (= call!320812 (lemmaContainsAllItsOwnKeys!433 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))))))

(declare-fun b!4597273 () Bool)

(declare-fun res!1922770 () Bool)

(declare-fun e!2867530 () Bool)

(assert (=> b!4597273 (=> (not res!1922770) (not e!2867530))))

(assert (=> b!4597273 (= res!1922770 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) lambda!186022))))

(declare-fun c!787365 () Bool)

(declare-fun call!320811 () Bool)

(declare-fun bm!320807 () Bool)

(assert (=> bm!320807 (= call!320811 (forall!10592 (ite c!787365 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (_2!29148 (h!57031 (toList!4643 lm!1477)))) (ite c!787365 lambda!186018 lambda!186021)))))

(declare-fun e!2867528 () ListMap!3905)

(assert (=> b!4597274 (= e!2867528 lt!1757285)))

(declare-fun lt!1757282 () ListMap!3905)

(assert (=> b!4597274 (= lt!1757282 (+!1739 (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (h!57030 (_2!29148 (h!57031 (toList!4643 lm!1477))))))))

(assert (=> b!4597274 (= lt!1757285 (addToMapMapFromBucket!812 (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477)))) (+!1739 (extractMap!1374 (t!358187 (toList!4643 lm!1477))) (h!57030 (_2!29148 (h!57031 (toList!4643 lm!1477)))))))))

(declare-fun lt!1757284 () Unit!107861)

(assert (=> b!4597274 (= lt!1757284 call!320812)))

(assert (=> b!4597274 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) lambda!186019)))

(declare-fun lt!1757273 () Unit!107861)

(assert (=> b!4597274 (= lt!1757273 lt!1757284)))

(assert (=> b!4597274 (forall!10592 (toList!4644 lt!1757282) lambda!186021)))

(declare-fun lt!1757271 () Unit!107861)

(declare-fun Unit!108006 () Unit!107861)

(assert (=> b!4597274 (= lt!1757271 Unit!108006)))

(assert (=> b!4597274 (forall!10592 (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477)))) lambda!186021)))

(declare-fun lt!1757270 () Unit!107861)

(declare-fun Unit!108007 () Unit!107861)

(assert (=> b!4597274 (= lt!1757270 Unit!108007)))

(declare-fun lt!1757267 () Unit!107861)

(declare-fun Unit!108008 () Unit!107861)

(assert (=> b!4597274 (= lt!1757267 Unit!108008)))

(declare-fun lt!1757286 () Unit!107861)

(assert (=> b!4597274 (= lt!1757286 (forallContained!2845 (toList!4644 lt!1757282) lambda!186021 (h!57030 (_2!29148 (h!57031 (toList!4643 lm!1477))))))))

(assert (=> b!4597274 (contains!14011 lt!1757282 (_1!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lm!1477))))))))

(declare-fun lt!1757279 () Unit!107861)

(declare-fun Unit!108009 () Unit!107861)

(assert (=> b!4597274 (= lt!1757279 Unit!108009)))

(assert (=> b!4597274 (contains!14011 lt!1757285 (_1!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lm!1477))))))))

(declare-fun lt!1757283 () Unit!107861)

(declare-fun Unit!108011 () Unit!107861)

(assert (=> b!4597274 (= lt!1757283 Unit!108011)))

(assert (=> b!4597274 call!320811))

(declare-fun lt!1757266 () Unit!107861)

(declare-fun Unit!108012 () Unit!107861)

(assert (=> b!4597274 (= lt!1757266 Unit!108012)))

(assert (=> b!4597274 (forall!10592 (toList!4644 lt!1757282) lambda!186021)))

(declare-fun lt!1757275 () Unit!107861)

(declare-fun Unit!108015 () Unit!107861)

(assert (=> b!4597274 (= lt!1757275 Unit!108015)))

(declare-fun lt!1757280 () Unit!107861)

(declare-fun Unit!108016 () Unit!107861)

(assert (=> b!4597274 (= lt!1757280 Unit!108016)))

(declare-fun lt!1757278 () Unit!107861)

(assert (=> b!4597274 (= lt!1757278 (addForallContainsKeyThenBeforeAdding!433 (extractMap!1374 (t!358187 (toList!4643 lm!1477))) lt!1757285 (_1!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lm!1477))))) (_2!29147 (h!57030 (_2!29148 (h!57031 (toList!4643 lm!1477)))))))))

(assert (=> b!4597274 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) lambda!186021)))

(declare-fun lt!1757272 () Unit!107861)

(assert (=> b!4597274 (= lt!1757272 lt!1757278)))

(assert (=> b!4597274 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) lambda!186021)))

(declare-fun lt!1757277 () Unit!107861)

(declare-fun Unit!108019 () Unit!107861)

(assert (=> b!4597274 (= lt!1757277 Unit!108019)))

(declare-fun res!1922772 () Bool)

(declare-fun call!320813 () Bool)

(assert (=> b!4597274 (= res!1922772 call!320813)))

(assert (=> b!4597274 (=> (not res!1922772) (not e!2867529))))

(assert (=> b!4597274 e!2867529))

(declare-fun lt!1757274 () Unit!107861)

(declare-fun Unit!108021 () Unit!107861)

(assert (=> b!4597274 (= lt!1757274 Unit!108021)))

(declare-fun b!4597275 () Bool)

(assert (=> b!4597275 (= e!2867530 (invariantList!1122 (toList!4644 lt!1757276)))))

(assert (=> d!1447217 e!2867530))

(declare-fun res!1922771 () Bool)

(assert (=> d!1447217 (=> (not res!1922771) (not e!2867530))))

(assert (=> d!1447217 (= res!1922771 (forall!10592 (_2!29148 (h!57031 (toList!4643 lm!1477))) lambda!186022))))

(assert (=> d!1447217 (= lt!1757276 e!2867528)))

(assert (=> d!1447217 (= c!787365 ((_ is Nil!51068) (_2!29148 (h!57031 (toList!4643 lm!1477)))))))

(assert (=> d!1447217 (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lm!1477))))))

(assert (=> d!1447217 (= (addToMapMapFromBucket!812 (_2!29148 (h!57031 (toList!4643 lm!1477))) (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) lt!1757276)))

(declare-fun bm!320808 () Bool)

(assert (=> bm!320808 (= call!320813 (forall!10592 (ite c!787365 (toList!4644 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (_2!29148 (h!57031 (toList!4643 lm!1477)))) (ite c!787365 lambda!186018 lambda!186021)))))

(assert (=> b!4597276 (= e!2867528 (extractMap!1374 (t!358187 (toList!4643 lm!1477))))))

(declare-fun lt!1757268 () Unit!107861)

(assert (=> b!4597276 (= lt!1757268 call!320812)))

(assert (=> b!4597276 call!320811))

(declare-fun lt!1757281 () Unit!107861)

(assert (=> b!4597276 (= lt!1757281 lt!1757268)))

(assert (=> b!4597276 call!320813))

(declare-fun lt!1757269 () Unit!107861)

(declare-fun Unit!108025 () Unit!107861)

(assert (=> b!4597276 (= lt!1757269 Unit!108025)))

(assert (= (and d!1447217 c!787365) b!4597276))

(assert (= (and d!1447217 (not c!787365)) b!4597274))

(assert (= (and b!4597274 res!1922772) b!4597272))

(assert (= (or b!4597276 b!4597274) bm!320807))

(assert (= (or b!4597276 b!4597274) bm!320808))

(assert (= (or b!4597276 b!4597274) bm!320806))

(assert (= (and d!1447217 res!1922771) b!4597273))

(assert (= (and b!4597273 res!1922770) b!4597275))

(assert (=> b!4597274 m!5421167))

(declare-fun m!5422679 () Bool)

(assert (=> b!4597274 m!5422679))

(assert (=> b!4597274 m!5422679))

(declare-fun m!5422681 () Bool)

(assert (=> b!4597274 m!5422681))

(declare-fun m!5422683 () Bool)

(assert (=> b!4597274 m!5422683))

(declare-fun m!5422685 () Bool)

(assert (=> b!4597274 m!5422685))

(declare-fun m!5422687 () Bool)

(assert (=> b!4597274 m!5422687))

(declare-fun m!5422689 () Bool)

(assert (=> b!4597274 m!5422689))

(declare-fun m!5422691 () Bool)

(assert (=> b!4597274 m!5422691))

(declare-fun m!5422693 () Bool)

(assert (=> b!4597274 m!5422693))

(assert (=> b!4597274 m!5422689))

(declare-fun m!5422695 () Bool)

(assert (=> b!4597274 m!5422695))

(assert (=> b!4597274 m!5422691))

(assert (=> b!4597274 m!5421167))

(declare-fun m!5422697 () Bool)

(assert (=> b!4597274 m!5422697))

(declare-fun m!5422699 () Bool)

(assert (=> bm!320808 m!5422699))

(assert (=> bm!320807 m!5422699))

(declare-fun m!5422701 () Bool)

(assert (=> b!4597275 m!5422701))

(declare-fun m!5422703 () Bool)

(assert (=> d!1447217 m!5422703))

(assert (=> d!1447217 m!5421567))

(assert (=> b!4597272 m!5422691))

(assert (=> bm!320806 m!5421167))

(declare-fun m!5422705 () Bool)

(assert (=> bm!320806 m!5422705))

(declare-fun m!5422707 () Bool)

(assert (=> b!4597273 m!5422707))

(assert (=> b!4596622 d!1447217))

(assert (=> b!4596622 d!1446895))

(declare-fun b!4597297 () Bool)

(declare-fun e!2867542 () Option!11386)

(declare-fun e!2867543 () Option!11386)

(assert (=> b!4597297 (= e!2867542 e!2867543)))

(declare-fun c!787375 () Bool)

(assert (=> b!4597297 (= c!787375 (and ((_ is Cons!51069) (toList!4643 lt!1756757)) (not (= (_1!29148 (h!57031 (toList!4643 lt!1756757))) (_1!29148 lt!1756618)))))))

(declare-fun b!4597298 () Bool)

(assert (=> b!4597298 (= e!2867543 (getValueByKey!1306 (t!358187 (toList!4643 lt!1756757)) (_1!29148 lt!1756618)))))

(declare-fun b!4597296 () Bool)

(assert (=> b!4597296 (= e!2867542 (Some!11385 (_2!29148 (h!57031 (toList!4643 lt!1756757)))))))

(declare-fun d!1447229 () Bool)

(declare-fun c!787374 () Bool)

(assert (=> d!1447229 (= c!787374 (and ((_ is Cons!51069) (toList!4643 lt!1756757)) (= (_1!29148 (h!57031 (toList!4643 lt!1756757))) (_1!29148 lt!1756618))))))

(assert (=> d!1447229 (= (getValueByKey!1306 (toList!4643 lt!1756757) (_1!29148 lt!1756618)) e!2867542)))

(declare-fun b!4597299 () Bool)

(assert (=> b!4597299 (= e!2867543 None!11385)))

(assert (= (and d!1447229 c!787374) b!4597296))

(assert (= (and d!1447229 (not c!787374)) b!4597297))

(assert (= (and b!4597297 c!787375) b!4597298))

(assert (= (and b!4597297 (not c!787375)) b!4597299))

(declare-fun m!5422709 () Bool)

(assert (=> b!4597298 m!5422709))

(assert (=> b!4596537 d!1447229))

(assert (=> d!1446903 d!1447197))

(declare-fun d!1447231 () Bool)

(declare-fun res!1922776 () Bool)

(declare-fun e!2867544 () Bool)

(assert (=> d!1447231 (=> res!1922776 e!2867544)))

(assert (=> d!1447231 (= res!1922776 (and ((_ is Cons!51068) (t!358186 newBucket!178)) (= (_1!29147 (h!57030 (t!358186 newBucket!178))) (_1!29147 (h!57030 newBucket!178)))))))

(assert (=> d!1447231 (= (containsKey!2146 (t!358186 newBucket!178) (_1!29147 (h!57030 newBucket!178))) e!2867544)))

(declare-fun b!4597300 () Bool)

(declare-fun e!2867545 () Bool)

(assert (=> b!4597300 (= e!2867544 e!2867545)))

(declare-fun res!1922777 () Bool)

(assert (=> b!4597300 (=> (not res!1922777) (not e!2867545))))

(assert (=> b!4597300 (= res!1922777 ((_ is Cons!51068) (t!358186 newBucket!178)))))

(declare-fun b!4597301 () Bool)

(assert (=> b!4597301 (= e!2867545 (containsKey!2146 (t!358186 (t!358186 newBucket!178)) (_1!29147 (h!57030 newBucket!178))))))

(assert (= (and d!1447231 (not res!1922776)) b!4597300))

(assert (= (and b!4597300 res!1922777) b!4597301))

(declare-fun m!5422711 () Bool)

(assert (=> b!4597301 m!5422711))

(assert (=> b!4596649 d!1447231))

(declare-fun d!1447233 () Bool)

(declare-fun lt!1757296 () Bool)

(assert (=> d!1447233 (= lt!1757296 (select (content!8640 (keys!17878 (extractMap!1374 lt!1756615))) key!3287))))

(declare-fun e!2867547 () Bool)

(assert (=> d!1447233 (= lt!1757296 e!2867547)))

(declare-fun res!1922778 () Bool)

(assert (=> d!1447233 (=> (not res!1922778) (not e!2867547))))

(assert (=> d!1447233 (= res!1922778 ((_ is Cons!51071) (keys!17878 (extractMap!1374 lt!1756615))))))

(assert (=> d!1447233 (= (contains!14013 (keys!17878 (extractMap!1374 lt!1756615)) key!3287) lt!1757296)))

(declare-fun b!4597302 () Bool)

(declare-fun e!2867546 () Bool)

(assert (=> b!4597302 (= e!2867547 e!2867546)))

(declare-fun res!1922779 () Bool)

(assert (=> b!4597302 (=> res!1922779 e!2867546)))

(assert (=> b!4597302 (= res!1922779 (= (h!57035 (keys!17878 (extractMap!1374 lt!1756615))) key!3287))))

(declare-fun b!4597303 () Bool)

(assert (=> b!4597303 (= e!2867546 (contains!14013 (t!358189 (keys!17878 (extractMap!1374 lt!1756615))) key!3287))))

(assert (= (and d!1447233 res!1922778) b!4597302))

(assert (= (and b!4597302 (not res!1922779)) b!4597303))

(assert (=> d!1447233 m!5421537))

(declare-fun m!5422713 () Bool)

(assert (=> d!1447233 m!5422713))

(declare-fun m!5422715 () Bool)

(assert (=> d!1447233 m!5422715))

(declare-fun m!5422717 () Bool)

(assert (=> b!4597303 m!5422717))

(assert (=> b!4596594 d!1447233))

(assert (=> b!4596594 d!1447213))

(declare-fun d!1447235 () Bool)

(declare-fun res!1922780 () Bool)

(declare-fun e!2867548 () Bool)

(assert (=> d!1447235 (=> res!1922780 e!2867548)))

(assert (=> d!1447235 (= res!1922780 ((_ is Nil!51069) (toList!4643 lt!1756611)))))

(assert (=> d!1447235 (= (forall!10590 (toList!4643 lt!1756611) lambda!185842) e!2867548)))

(declare-fun b!4597304 () Bool)

(declare-fun e!2867549 () Bool)

(assert (=> b!4597304 (= e!2867548 e!2867549)))

(declare-fun res!1922781 () Bool)

(assert (=> b!4597304 (=> (not res!1922781) (not e!2867549))))

(assert (=> b!4597304 (= res!1922781 (dynLambda!21392 lambda!185842 (h!57031 (toList!4643 lt!1756611))))))

(declare-fun b!4597305 () Bool)

(assert (=> b!4597305 (= e!2867549 (forall!10590 (t!358187 (toList!4643 lt!1756611)) lambda!185842))))

(assert (= (and d!1447235 (not res!1922780)) b!4597304))

(assert (= (and b!4597304 res!1922781) b!4597305))

(declare-fun b_lambda!169225 () Bool)

(assert (=> (not b_lambda!169225) (not b!4597304)))

(declare-fun m!5422719 () Bool)

(assert (=> b!4597304 m!5422719))

(declare-fun m!5422721 () Bool)

(assert (=> b!4597305 m!5422721))

(assert (=> d!1446813 d!1447235))

(declare-fun d!1447237 () Bool)

(declare-fun res!1922782 () Bool)

(declare-fun e!2867550 () Bool)

(assert (=> d!1447237 (=> res!1922782 e!2867550)))

(assert (=> d!1447237 (= res!1922782 (and ((_ is Cons!51068) (_2!29148 (h!57031 lt!1756615))) (= (_1!29147 (h!57030 (_2!29148 (h!57031 lt!1756615)))) key!3287)))))

(assert (=> d!1447237 (= (containsKey!2146 (_2!29148 (h!57031 lt!1756615)) key!3287) e!2867550)))

(declare-fun b!4597306 () Bool)

(declare-fun e!2867551 () Bool)

(assert (=> b!4597306 (= e!2867550 e!2867551)))

(declare-fun res!1922783 () Bool)

(assert (=> b!4597306 (=> (not res!1922783) (not e!2867551))))

(assert (=> b!4597306 (= res!1922783 ((_ is Cons!51068) (_2!29148 (h!57031 lt!1756615))))))

(declare-fun b!4597307 () Bool)

(assert (=> b!4597307 (= e!2867551 (containsKey!2146 (t!358186 (_2!29148 (h!57031 lt!1756615))) key!3287))))

(assert (= (and d!1447237 (not res!1922782)) b!4597306))

(assert (= (and b!4597306 res!1922783) b!4597307))

(declare-fun m!5422723 () Bool)

(assert (=> b!4597307 m!5422723))

(assert (=> b!4596610 d!1447237))

(declare-fun d!1447239 () Bool)

(declare-fun res!1922792 () Bool)

(declare-fun e!2867560 () Bool)

(assert (=> d!1447239 (=> res!1922792 e!2867560)))

(assert (=> d!1447239 (= res!1922792 (and ((_ is Cons!51069) (toList!4643 lm!1477)) (= (_1!29148 (h!57031 (toList!4643 lm!1477))) lt!1756609)))))

(assert (=> d!1447239 (= (containsKey!2148 (toList!4643 lm!1477) lt!1756609) e!2867560)))

(declare-fun b!4597316 () Bool)

(declare-fun e!2867561 () Bool)

(assert (=> b!4597316 (= e!2867560 e!2867561)))

(declare-fun res!1922793 () Bool)

(assert (=> b!4597316 (=> (not res!1922793) (not e!2867561))))

(assert (=> b!4597316 (= res!1922793 (and (or (not ((_ is Cons!51069) (toList!4643 lm!1477))) (bvsle (_1!29148 (h!57031 (toList!4643 lm!1477))) lt!1756609)) ((_ is Cons!51069) (toList!4643 lm!1477)) (bvslt (_1!29148 (h!57031 (toList!4643 lm!1477))) lt!1756609)))))

(declare-fun b!4597317 () Bool)

(assert (=> b!4597317 (= e!2867561 (containsKey!2148 (t!358187 (toList!4643 lm!1477)) lt!1756609))))

(assert (= (and d!1447239 (not res!1922792)) b!4597316))

(assert (= (and b!4597316 res!1922793) b!4597317))

(declare-fun m!5422731 () Bool)

(assert (=> b!4597317 m!5422731))

(assert (=> d!1446785 d!1447239))

(declare-fun d!1447247 () Bool)

(assert (=> d!1447247 (= (invariantList!1122 (toList!4644 lt!1756813)) (noDuplicatedKeys!324 (toList!4644 lt!1756813)))))

(declare-fun bs!1010038 () Bool)

(assert (= bs!1010038 d!1447247))

(declare-fun m!5422733 () Bool)

(assert (=> bs!1010038 m!5422733))

(assert (=> d!1446895 d!1447247))

(declare-fun d!1447249 () Bool)

(declare-fun res!1922797 () Bool)

(declare-fun e!2867565 () Bool)

(assert (=> d!1447249 (=> res!1922797 e!2867565)))

(assert (=> d!1447249 (= res!1922797 ((_ is Nil!51069) (t!358187 (toList!4643 lm!1477))))))

(assert (=> d!1447249 (= (forall!10590 (t!358187 (toList!4643 lm!1477)) lambda!185868) e!2867565)))

(declare-fun b!4597323 () Bool)

(declare-fun e!2867566 () Bool)

(assert (=> b!4597323 (= e!2867565 e!2867566)))

(declare-fun res!1922798 () Bool)

(assert (=> b!4597323 (=> (not res!1922798) (not e!2867566))))

(assert (=> b!4597323 (= res!1922798 (dynLambda!21392 lambda!185868 (h!57031 (t!358187 (toList!4643 lm!1477)))))))

(declare-fun b!4597324 () Bool)

(assert (=> b!4597324 (= e!2867566 (forall!10590 (t!358187 (t!358187 (toList!4643 lm!1477))) lambda!185868))))

(assert (= (and d!1447249 (not res!1922797)) b!4597323))

(assert (= (and b!4597323 res!1922798) b!4597324))

(declare-fun b_lambda!169229 () Bool)

(assert (=> (not b_lambda!169229) (not b!4597323)))

(declare-fun m!5422735 () Bool)

(assert (=> b!4597323 m!5422735))

(declare-fun m!5422737 () Bool)

(assert (=> b!4597324 m!5422737))

(assert (=> d!1446895 d!1447249))

(assert (=> b!4596592 d!1447233))

(assert (=> b!4596592 d!1447213))

(declare-fun d!1447251 () Bool)

(declare-fun res!1922799 () Bool)

(declare-fun e!2867567 () Bool)

(assert (=> d!1447251 (=> res!1922799 e!2867567)))

(assert (=> d!1447251 (= res!1922799 (and ((_ is Cons!51068) (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477))))) (= (_1!29147 (h!57030 (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477)))))) key!3287)))))

(assert (=> d!1447251 (= (containsKey!2146 (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477)))) key!3287) e!2867567)))

(declare-fun b!4597325 () Bool)

(declare-fun e!2867568 () Bool)

(assert (=> b!4597325 (= e!2867567 e!2867568)))

(declare-fun res!1922800 () Bool)

(assert (=> b!4597325 (=> (not res!1922800) (not e!2867568))))

(assert (=> b!4597325 (= res!1922800 ((_ is Cons!51068) (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477))))))))

(declare-fun b!4597326 () Bool)

(assert (=> b!4597326 (= e!2867568 (containsKey!2146 (t!358186 (t!358186 (_2!29148 (h!57031 (toList!4643 lm!1477))))) key!3287))))

(assert (= (and d!1447251 (not res!1922799)) b!4597325))

(assert (= (and b!4597325 res!1922800) b!4597326))

(declare-fun m!5422739 () Bool)

(assert (=> b!4597326 m!5422739))

(assert (=> b!4596480 d!1447251))

(declare-fun d!1447253 () Bool)

(declare-fun res!1922801 () Bool)

(declare-fun e!2867569 () Bool)

(assert (=> d!1447253 (=> res!1922801 e!2867569)))

(assert (=> d!1447253 (= res!1922801 (not ((_ is Cons!51068) (_2!29148 lt!1756614))))))

(assert (=> d!1447253 (= (noDuplicateKeys!1314 (_2!29148 lt!1756614)) e!2867569)))

(declare-fun b!4597327 () Bool)

(declare-fun e!2867570 () Bool)

(assert (=> b!4597327 (= e!2867569 e!2867570)))

(declare-fun res!1922802 () Bool)

(assert (=> b!4597327 (=> (not res!1922802) (not e!2867570))))

(assert (=> b!4597327 (= res!1922802 (not (containsKey!2146 (t!358186 (_2!29148 lt!1756614)) (_1!29147 (h!57030 (_2!29148 lt!1756614))))))))

(declare-fun b!4597328 () Bool)

(assert (=> b!4597328 (= e!2867570 (noDuplicateKeys!1314 (t!358186 (_2!29148 lt!1756614))))))

(assert (= (and d!1447253 (not res!1922801)) b!4597327))

(assert (= (and b!4597327 res!1922802) b!4597328))

(declare-fun m!5422741 () Bool)

(assert (=> b!4597327 m!5422741))

(declare-fun m!5422743 () Bool)

(assert (=> b!4597328 m!5422743))

(assert (=> bs!1009588 d!1447253))

(declare-fun d!1447255 () Bool)

(declare-fun res!1922803 () Bool)

(declare-fun e!2867571 () Bool)

(assert (=> d!1447255 (=> res!1922803 e!2867571)))

(assert (=> d!1447255 (= res!1922803 (and ((_ is Cons!51068) (toList!4644 (extractMap!1374 lt!1756615))) (= (_1!29147 (h!57030 (toList!4644 (extractMap!1374 lt!1756615)))) key!3287)))))

(assert (=> d!1447255 (= (containsKey!2150 (toList!4644 (extractMap!1374 lt!1756615)) key!3287) e!2867571)))

(declare-fun b!4597329 () Bool)

(declare-fun e!2867572 () Bool)

(assert (=> b!4597329 (= e!2867571 e!2867572)))

(declare-fun res!1922804 () Bool)

(assert (=> b!4597329 (=> (not res!1922804) (not e!2867572))))

(assert (=> b!4597329 (= res!1922804 ((_ is Cons!51068) (toList!4644 (extractMap!1374 lt!1756615))))))

(declare-fun b!4597330 () Bool)

(assert (=> b!4597330 (= e!2867572 (containsKey!2150 (t!358186 (toList!4644 (extractMap!1374 lt!1756615))) key!3287))))

(assert (= (and d!1447255 (not res!1922803)) b!4597329))

(assert (= (and b!4597329 res!1922804) b!4597330))

(declare-fun m!5422745 () Bool)

(assert (=> b!4597330 m!5422745))

(assert (=> b!4596590 d!1447255))

(declare-fun d!1447257 () Bool)

(assert (=> d!1447257 (containsKey!2150 (toList!4644 (extractMap!1374 lt!1756615)) key!3287)))

(declare-fun lt!1757318 () Unit!107861)

(assert (=> d!1447257 (= lt!1757318 (choose!30795 (toList!4644 (extractMap!1374 lt!1756615)) key!3287))))

(assert (=> d!1447257 (invariantList!1122 (toList!4644 (extractMap!1374 lt!1756615)))))

(assert (=> d!1447257 (= (lemmaInGetKeysListThenContainsKey!570 (toList!4644 (extractMap!1374 lt!1756615)) key!3287) lt!1757318)))

(declare-fun bs!1010048 () Bool)

(assert (= bs!1010048 d!1447257))

(assert (=> bs!1010048 m!5421531))

(declare-fun m!5422747 () Bool)

(assert (=> bs!1010048 m!5422747))

(assert (=> bs!1010048 m!5422083))

(assert (=> b!4596590 d!1447257))

(declare-fun d!1447259 () Bool)

(declare-fun lt!1757319 () Bool)

(assert (=> d!1447259 (= lt!1757319 (select (content!8639 (toList!4643 lt!1756828)) lt!1756618))))

(declare-fun e!2867573 () Bool)

(assert (=> d!1447259 (= lt!1757319 e!2867573)))

(declare-fun res!1922805 () Bool)

(assert (=> d!1447259 (=> (not res!1922805) (not e!2867573))))

(assert (=> d!1447259 (= res!1922805 ((_ is Cons!51069) (toList!4643 lt!1756828)))))

(assert (=> d!1447259 (= (contains!14009 (toList!4643 lt!1756828) lt!1756618) lt!1757319)))

(declare-fun b!4597331 () Bool)

(declare-fun e!2867574 () Bool)

(assert (=> b!4597331 (= e!2867573 e!2867574)))

(declare-fun res!1922806 () Bool)

(assert (=> b!4597331 (=> res!1922806 e!2867574)))

(assert (=> b!4597331 (= res!1922806 (= (h!57031 (toList!4643 lt!1756828)) lt!1756618))))

(declare-fun b!4597332 () Bool)

(assert (=> b!4597332 (= e!2867574 (contains!14009 (t!358187 (toList!4643 lt!1756828)) lt!1756618))))

(assert (= (and d!1447259 res!1922805) b!4597331))

(assert (= (and b!4597331 (not res!1922806)) b!4597332))

(declare-fun m!5422749 () Bool)

(assert (=> d!1447259 m!5422749))

(declare-fun m!5422751 () Bool)

(assert (=> d!1447259 m!5422751))

(declare-fun m!5422753 () Bool)

(assert (=> b!4597332 m!5422753))

(assert (=> b!4596652 d!1447259))

(declare-fun bs!1010055 () Bool)

(declare-fun b!4597341 () Bool)

(assert (= bs!1010055 (and b!4597341 b!4597001)))

(declare-fun lambda!186026 () Int)

(assert (=> bs!1010055 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!186026 lambda!185946))))

(declare-fun bs!1010056 () Bool)

(assert (= bs!1010056 (and b!4597341 b!4597138)))

(assert (=> bs!1010056 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 lt!1756613))) (= lambda!186026 lambda!185992))))

(declare-fun bs!1010057 () Bool)

(assert (= bs!1010057 (and b!4597341 b!4597066)))

(assert (=> bs!1010057 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= lambda!186026 lambda!185977))))

(declare-fun bs!1010058 () Bool)

(assert (= bs!1010058 (and b!4597341 b!4597116)))

(assert (=> bs!1010058 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (toList!4644 lt!1756729)) (= lambda!186026 lambda!185988))))

(declare-fun bs!1010059 () Bool)

(assert (= bs!1010059 (and b!4597341 b!4597267)))

(assert (=> bs!1010059 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!186026 lambda!186014))))

(declare-fun bs!1010060 () Bool)

(assert (= bs!1010060 (and b!4597341 b!4596767)))

(assert (=> bs!1010060 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (toList!4644 lt!1756613)) (= lambda!186026 lambda!185882))))

(declare-fun bs!1010061 () Bool)

(assert (= bs!1010061 (and b!4597341 b!4597109)))

(assert (=> bs!1010061 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186026 lambda!185984))))

(declare-fun bs!1010062 () Bool)

(assert (= bs!1010062 (and b!4597341 b!4597133)))

(assert (=> bs!1010062 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613)))) (= lambda!186026 lambda!185993))))

(declare-fun bs!1010063 () Bool)

(assert (= bs!1010063 (and b!4597341 b!4597002)))

(assert (=> bs!1010063 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!186026 lambda!185945))))

(declare-fun bs!1010064 () Bool)

(assert (= bs!1010064 (and b!4597341 b!4597132)))

(assert (=> bs!1010064 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (toList!4644 lt!1756613)) (= lambda!186026 lambda!185994))))

(declare-fun bs!1010065 () Bool)

(assert (= bs!1010065 (and b!4597341 b!4597007)))

(assert (=> bs!1010065 (= (= (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!186026 lambda!185944))))

(assert (=> b!4597341 true))

(declare-fun bs!1010066 () Bool)

(declare-fun b!4597336 () Bool)

(assert (= bs!1010066 (and b!4597336 b!4597001)))

(declare-fun lambda!186027 () Int)

(assert (=> bs!1010066 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!186027 lambda!185946))))

(declare-fun bs!1010067 () Bool)

(assert (= bs!1010067 (and b!4597336 b!4597138)))

(assert (=> bs!1010067 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (t!358186 (toList!4644 lt!1756613))) (= lambda!186027 lambda!185992))))

(declare-fun bs!1010068 () Bool)

(assert (= bs!1010068 (and b!4597336 b!4597066)))

(assert (=> bs!1010068 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (= lambda!186027 lambda!185977))))

(declare-fun bs!1010069 () Bool)

(assert (= bs!1010069 (and b!4597336 b!4597116)))

(assert (=> bs!1010069 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (toList!4644 lt!1756729)) (= lambda!186027 lambda!185988))))

(declare-fun bs!1010070 () Bool)

(assert (= bs!1010070 (and b!4597336 b!4597267)))

(assert (=> bs!1010070 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!186027 lambda!186014))))

(declare-fun bs!1010071 () Bool)

(assert (= bs!1010071 (and b!4597336 b!4597341)))

(assert (=> bs!1010071 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (= lambda!186027 lambda!186026))))

(declare-fun bs!1010072 () Bool)

(assert (= bs!1010072 (and b!4597336 b!4596767)))

(assert (=> bs!1010072 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (toList!4644 lt!1756613)) (= lambda!186027 lambda!185882))))

(declare-fun bs!1010073 () Bool)

(assert (= bs!1010073 (and b!4597336 b!4597109)))

(assert (=> bs!1010073 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186027 lambda!185984))))

(declare-fun bs!1010075 () Bool)

(assert (= bs!1010075 (and b!4597336 b!4597133)))

(assert (=> bs!1010075 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613)))) (= lambda!186027 lambda!185993))))

(declare-fun bs!1010077 () Bool)

(assert (= bs!1010077 (and b!4597336 b!4597002)))

(assert (=> bs!1010077 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!186027 lambda!185945))))

(declare-fun bs!1010079 () Bool)

(assert (= bs!1010079 (and b!4597336 b!4597132)))

(assert (=> bs!1010079 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (toList!4644 lt!1756613)) (= lambda!186027 lambda!185994))))

(declare-fun bs!1010080 () Bool)

(assert (= bs!1010080 (and b!4597336 b!4597007)))

(assert (=> bs!1010080 (= (= (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!186027 lambda!185944))))

(assert (=> b!4597336 true))

(declare-fun bs!1010084 () Bool)

(declare-fun b!4597335 () Bool)

(assert (= bs!1010084 (and b!4597335 b!4597001)))

(declare-fun lambda!186029 () Int)

(assert (=> bs!1010084 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!186029 lambda!185946))))

(declare-fun bs!1010087 () Bool)

(assert (= bs!1010087 (and b!4597335 b!4597138)))

(assert (=> bs!1010087 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (t!358186 (toList!4644 lt!1756613))) (= lambda!186029 lambda!185992))))

(declare-fun bs!1010088 () Bool)

(assert (= bs!1010088 (and b!4597335 b!4597066)))

(assert (=> bs!1010088 (= lambda!186029 lambda!185977)))

(declare-fun bs!1010090 () Bool)

(assert (= bs!1010090 (and b!4597335 b!4597116)))

(assert (=> bs!1010090 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (toList!4644 lt!1756729)) (= lambda!186029 lambda!185988))))

(declare-fun bs!1010091 () Bool)

(assert (= bs!1010091 (and b!4597335 b!4597267)))

(assert (=> bs!1010091 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (toList!4644 (extractMap!1374 lt!1756615))) (= lambda!186029 lambda!186014))))

(declare-fun bs!1010092 () Bool)

(assert (= bs!1010092 (and b!4597335 b!4597341)))

(assert (=> bs!1010092 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (= lambda!186029 lambda!186026))))

(declare-fun bs!1010093 () Bool)

(assert (= bs!1010093 (and b!4597335 b!4596767)))

(assert (=> bs!1010093 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (toList!4644 lt!1756613)) (= lambda!186029 lambda!185882))))

(declare-fun bs!1010094 () Bool)

(assert (= bs!1010094 (and b!4597335 b!4597109)))

(assert (=> bs!1010094 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186029 lambda!185984))))

(declare-fun bs!1010095 () Bool)

(assert (= bs!1010095 (and b!4597335 b!4597133)))

(assert (=> bs!1010095 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (Cons!51068 (h!57030 (toList!4644 lt!1756613)) (t!358186 (toList!4644 lt!1756613)))) (= lambda!186029 lambda!185993))))

(declare-fun bs!1010096 () Bool)

(assert (= bs!1010096 (and b!4597335 b!4597002)))

(assert (=> bs!1010096 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 lt!1756615))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615))))) (= lambda!186029 lambda!185945))))

(declare-fun bs!1010097 () Bool)

(assert (= bs!1010097 (and b!4597335 b!4597336)))

(assert (=> bs!1010097 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (Cons!51068 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))) (= lambda!186029 lambda!186027))))

(declare-fun bs!1010098 () Bool)

(assert (= bs!1010098 (and b!4597335 b!4597132)))

(assert (=> bs!1010098 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (toList!4644 lt!1756613)) (= lambda!186029 lambda!185994))))

(declare-fun bs!1010099 () Bool)

(assert (= bs!1010099 (and b!4597335 b!4597007)))

(assert (=> bs!1010099 (= (= (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) (t!358186 (toList!4644 (extractMap!1374 lt!1756615)))) (= lambda!186029 lambda!185944))))

(assert (=> b!4597335 true))

(declare-fun bs!1010100 () Bool)

(declare-fun b!4597337 () Bool)

(assert (= bs!1010100 (and b!4597337 b!4597110)))

(declare-fun lambda!186030 () Int)

(assert (=> bs!1010100 (= lambda!186030 lambda!185986)))

(declare-fun bs!1010101 () Bool)

(assert (= bs!1010101 (and b!4597337 b!4597003)))

(assert (=> bs!1010101 (= lambda!186030 lambda!185947)))

(declare-fun bs!1010102 () Bool)

(assert (= bs!1010102 (and b!4597337 b!4597067)))

(assert (=> bs!1010102 (= lambda!186030 lambda!185980)))

(declare-fun bs!1010103 () Bool)

(assert (= bs!1010103 (and b!4597337 b!4596768)))

(assert (=> bs!1010103 (= lambda!186030 lambda!185883)))

(declare-fun bs!1010104 () Bool)

(assert (= bs!1010104 (and b!4597337 b!4597117)))

(assert (=> bs!1010104 (= lambda!186030 lambda!185990)))

(declare-fun bs!1010105 () Bool)

(assert (= bs!1010105 (and b!4597337 b!4597134)))

(assert (=> bs!1010105 (= lambda!186030 lambda!185995)))

(declare-fun bs!1010106 () Bool)

(assert (= bs!1010106 (and b!4597337 b!4597268)))

(assert (=> bs!1010106 (= lambda!186030 lambda!186016)))

(declare-fun b!4597333 () Bool)

(assert (=> b!4597333 false))

(declare-fun e!2867578 () Unit!107861)

(declare-fun Unit!108027 () Unit!107861)

(assert (=> b!4597333 (= e!2867578 Unit!108027)))

(declare-fun b!4597334 () Bool)

(declare-fun res!1922807 () Bool)

(declare-fun e!2867577 () Bool)

(assert (=> b!4597334 (=> (not res!1922807) (not e!2867577))))

(declare-fun lt!1757326 () List!51195)

(assert (=> b!4597334 (= res!1922807 (= (length!476 lt!1757326) (length!477 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))))))

(declare-fun res!1922808 () Bool)

(assert (=> b!4597335 (=> (not res!1922808) (not e!2867577))))

(assert (=> b!4597335 (= res!1922808 (forall!10594 lt!1757326 lambda!186029))))

(declare-fun e!2867576 () List!51195)

(assert (=> b!4597336 (= e!2867576 (Cons!51071 (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (getKeysList!571 (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))))))

(declare-fun c!787377 () Bool)

(assert (=> b!4597336 (= c!787377 (containsKey!2150 (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))))))

(declare-fun lt!1757324 () Unit!107861)

(assert (=> b!4597336 (= lt!1757324 e!2867578)))

(declare-fun c!787378 () Bool)

(assert (=> b!4597336 (= c!787378 (contains!14013 (getKeysList!571 (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))))))

(declare-fun lt!1757322 () Unit!107861)

(declare-fun e!2867575 () Unit!107861)

(assert (=> b!4597336 (= lt!1757322 e!2867575)))

(declare-fun lt!1757320 () List!51195)

(assert (=> b!4597336 (= lt!1757320 (getKeysList!571 (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))))))

(declare-fun lt!1757321 () Unit!107861)

(assert (=> b!4597336 (= lt!1757321 (lemmaForallContainsAddHeadPreserves!230 (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) lt!1757320 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))))))

(assert (=> b!4597336 (forall!10594 lt!1757320 lambda!186027)))

(declare-fun lt!1757323 () Unit!107861)

(assert (=> b!4597336 (= lt!1757323 lt!1757321)))

(declare-fun b!4597338 () Bool)

(declare-fun Unit!108028 () Unit!107861)

(assert (=> b!4597338 (= e!2867578 Unit!108028)))

(declare-fun b!4597339 () Bool)

(assert (=> b!4597339 (= e!2867576 Nil!51071)))

(declare-fun d!1447261 () Bool)

(assert (=> d!1447261 e!2867577))

(declare-fun res!1922809 () Bool)

(assert (=> d!1447261 (=> (not res!1922809) (not e!2867577))))

(assert (=> d!1447261 (= res!1922809 (noDuplicate!810 lt!1757326))))

(assert (=> d!1447261 (= lt!1757326 e!2867576)))

(declare-fun c!787379 () Bool)

(assert (=> d!1447261 (= c!787379 ((_ is Cons!51068) (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))))

(assert (=> d!1447261 (invariantList!1122 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))))

(assert (=> d!1447261 (= (getKeysList!571 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))) lt!1757326)))

(assert (=> b!4597337 (= e!2867577 (= (content!8640 lt!1757326) (content!8640 (map!11280 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) lambda!186030))))))

(declare-fun b!4597340 () Bool)

(declare-fun Unit!108029 () Unit!107861)

(assert (=> b!4597340 (= e!2867575 Unit!108029)))

(assert (=> b!4597341 false))

(declare-fun lt!1757325 () Unit!107861)

(assert (=> b!4597341 (= lt!1757325 (forallContained!2847 (getKeysList!571 (t!358186 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))) lambda!186026 (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (toList!4643 lm!1477)))))))))

(declare-fun Unit!108030 () Unit!107861)

(assert (=> b!4597341 (= e!2867575 Unit!108030)))

(assert (= (and d!1447261 c!787379) b!4597336))

(assert (= (and d!1447261 (not c!787379)) b!4597339))

(assert (= (and b!4597336 c!787377) b!4597333))

(assert (= (and b!4597336 (not c!787377)) b!4597338))

(assert (= (and b!4597336 c!787378) b!4597341))

(assert (= (and b!4597336 (not c!787378)) b!4597340))

(assert (= (and d!1447261 res!1922809) b!4597334))

(assert (= (and b!4597334 res!1922807) b!4597335))

(assert (= (and b!4597335 res!1922808) b!4597337))

(declare-fun m!5422789 () Bool)

(assert (=> b!4597341 m!5422789))

(assert (=> b!4597341 m!5422789))

(declare-fun m!5422791 () Bool)

(assert (=> b!4597341 m!5422791))

(declare-fun m!5422793 () Bool)

(assert (=> d!1447261 m!5422793))

(assert (=> d!1447261 m!5422265))

(declare-fun m!5422795 () Bool)

(assert (=> b!4597334 m!5422795))

(assert (=> b!4597334 m!5422221))

(declare-fun m!5422797 () Bool)

(assert (=> b!4597335 m!5422797))

(assert (=> b!4597336 m!5422789))

(declare-fun m!5422799 () Bool)

(assert (=> b!4597336 m!5422799))

(declare-fun m!5422801 () Bool)

(assert (=> b!4597336 m!5422801))

(assert (=> b!4597336 m!5422789))

(declare-fun m!5422803 () Bool)

(assert (=> b!4597336 m!5422803))

(declare-fun m!5422805 () Bool)

(assert (=> b!4597336 m!5422805))

(declare-fun m!5422807 () Bool)

(assert (=> b!4597337 m!5422807))

(declare-fun m!5422809 () Bool)

(assert (=> b!4597337 m!5422809))

(assert (=> b!4597337 m!5422809))

(declare-fun m!5422811 () Bool)

(assert (=> b!4597337 m!5422811))

(assert (=> b!4596619 d!1447261))

(declare-fun d!1447265 () Bool)

(assert (=> d!1447265 (dynLambda!21392 lambda!185824 lt!1756614)))

(assert (=> d!1447265 true))

(declare-fun _$7!2129 () Unit!107861)

(assert (=> d!1447265 (= (choose!30778 (toList!4643 lm!1477) lambda!185824 lt!1756614) _$7!2129)))

(declare-fun b_lambda!169231 () Bool)

(assert (=> (not b_lambda!169231) (not d!1447265)))

(declare-fun bs!1010123 () Bool)

(assert (= bs!1010123 d!1447265))

(assert (=> bs!1010123 m!5421249))

(assert (=> d!1446789 d!1447265))

(assert (=> d!1446789 d!1446899))

(declare-fun b!4597344 () Bool)

(declare-fun e!2867585 () Unit!107861)

(declare-fun e!2867584 () Unit!107861)

(assert (=> b!4597344 (= e!2867585 e!2867584)))

(declare-fun c!787381 () Bool)

(declare-fun call!320818 () Bool)

(assert (=> b!4597344 (= c!787381 call!320818)))

(declare-fun b!4597345 () Bool)

(assert (=> b!4597345 false))

(declare-fun lt!1757335 () Unit!107861)

(declare-fun lt!1757328 () Unit!107861)

(assert (=> b!4597345 (= lt!1757335 lt!1757328)))

(assert (=> b!4597345 (containsKey!2150 (toList!4644 lt!1756729) key!3287)))

(assert (=> b!4597345 (= lt!1757328 (lemmaInGetKeysListThenContainsKey!570 (toList!4644 lt!1756729) key!3287))))

(declare-fun Unit!108031 () Unit!107861)

(assert (=> b!4597345 (= e!2867584 Unit!108031)))

(declare-fun b!4597346 () Bool)

(declare-fun e!2867581 () Bool)

(declare-fun e!2867580 () Bool)

(assert (=> b!4597346 (= e!2867581 e!2867580)))

(declare-fun res!1922811 () Bool)

(assert (=> b!4597346 (=> (not res!1922811) (not e!2867580))))

(assert (=> b!4597346 (= res!1922811 (isDefined!8655 (getValueByKey!1307 (toList!4644 lt!1756729) key!3287)))))

(declare-fun b!4597347 () Bool)

(declare-fun e!2867582 () Bool)

(assert (=> b!4597347 (= e!2867582 (not (contains!14013 (keys!17878 lt!1756729) key!3287)))))

(declare-fun b!4597348 () Bool)

(declare-fun lt!1757332 () Unit!107861)

(assert (=> b!4597348 (= e!2867585 lt!1757332)))

(declare-fun lt!1757330 () Unit!107861)

(assert (=> b!4597348 (= lt!1757330 (lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (toList!4644 lt!1756729) key!3287))))

(assert (=> b!4597348 (isDefined!8655 (getValueByKey!1307 (toList!4644 lt!1756729) key!3287))))

(declare-fun lt!1757334 () Unit!107861)

(assert (=> b!4597348 (= lt!1757334 lt!1757330)))

(assert (=> b!4597348 (= lt!1757332 (lemmaInListThenGetKeysListContains!567 (toList!4644 lt!1756729) key!3287))))

(assert (=> b!4597348 call!320818))

(declare-fun bm!320813 () Bool)

(declare-fun e!2867583 () List!51195)

(assert (=> bm!320813 (= call!320818 (contains!14013 e!2867583 key!3287))))

(declare-fun c!787382 () Bool)

(declare-fun c!787383 () Bool)

(assert (=> bm!320813 (= c!787382 c!787383)))

(declare-fun b!4597349 () Bool)

(assert (=> b!4597349 (= e!2867580 (contains!14013 (keys!17878 lt!1756729) key!3287))))

(declare-fun b!4597350 () Bool)

(assert (=> b!4597350 (= e!2867583 (getKeysList!571 (toList!4644 lt!1756729)))))

(declare-fun b!4597351 () Bool)

(assert (=> b!4597351 (= e!2867583 (keys!17878 lt!1756729))))

(declare-fun b!4597352 () Bool)

(declare-fun Unit!108032 () Unit!107861)

(assert (=> b!4597352 (= e!2867584 Unit!108032)))

(declare-fun d!1447267 () Bool)

(assert (=> d!1447267 e!2867581))

(declare-fun res!1922810 () Bool)

(assert (=> d!1447267 (=> res!1922810 e!2867581)))

(assert (=> d!1447267 (= res!1922810 e!2867582)))

(declare-fun res!1922812 () Bool)

(assert (=> d!1447267 (=> (not res!1922812) (not e!2867582))))

(declare-fun lt!1757329 () Bool)

(assert (=> d!1447267 (= res!1922812 (not lt!1757329))))

(declare-fun lt!1757333 () Bool)

(assert (=> d!1447267 (= lt!1757329 lt!1757333)))

(declare-fun lt!1757331 () Unit!107861)

(assert (=> d!1447267 (= lt!1757331 e!2867585)))

(assert (=> d!1447267 (= c!787383 lt!1757333)))

(assert (=> d!1447267 (= lt!1757333 (containsKey!2150 (toList!4644 lt!1756729) key!3287))))

(assert (=> d!1447267 (= (contains!14011 lt!1756729 key!3287) lt!1757329)))

(assert (= (and d!1447267 c!787383) b!4597348))

(assert (= (and d!1447267 (not c!787383)) b!4597344))

(assert (= (and b!4597344 c!787381) b!4597345))

(assert (= (and b!4597344 (not c!787381)) b!4597352))

(assert (= (or b!4597348 b!4597344) bm!320813))

(assert (= (and bm!320813 c!787382) b!4597350))

(assert (= (and bm!320813 (not c!787382)) b!4597351))

(assert (= (and d!1447267 res!1922812) b!4597347))

(assert (= (and d!1447267 (not res!1922810)) b!4597346))

(assert (= (and b!4597346 res!1922811) b!4597349))

(declare-fun m!5422823 () Bool)

(assert (=> b!4597346 m!5422823))

(assert (=> b!4597346 m!5422823))

(declare-fun m!5422827 () Bool)

(assert (=> b!4597346 m!5422827))

(declare-fun m!5422829 () Bool)

(assert (=> d!1447267 m!5422829))

(declare-fun m!5422833 () Bool)

(assert (=> b!4597348 m!5422833))

(assert (=> b!4597348 m!5422823))

(assert (=> b!4597348 m!5422823))

(assert (=> b!4597348 m!5422827))

(declare-fun m!5422835 () Bool)

(assert (=> b!4597348 m!5422835))

(assert (=> b!4597347 m!5421445))

(assert (=> b!4597347 m!5421445))

(declare-fun m!5422837 () Bool)

(assert (=> b!4597347 m!5422837))

(assert (=> b!4597350 m!5422301))

(declare-fun m!5422839 () Bool)

(assert (=> bm!320813 m!5422839))

(assert (=> b!4597351 m!5421445))

(assert (=> b!4597349 m!5421445))

(assert (=> b!4597349 m!5421445))

(assert (=> b!4597349 m!5422837))

(assert (=> b!4597345 m!5422829))

(declare-fun m!5422841 () Bool)

(assert (=> b!4597345 m!5422841))

(assert (=> d!1446841 d!1447267))

(declare-fun b!4597470 () Bool)

(declare-fun e!2867661 () Unit!107861)

(declare-fun Unit!108033 () Unit!107861)

(assert (=> b!4597470 (= e!2867661 Unit!108033)))

(declare-fun lt!1757450 () V!12681)

(declare-fun get!16877 (Option!11387) V!12681)

(assert (=> b!4597470 (= lt!1757450 (get!16877 (getValueByKey!1307 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287)))))

(declare-fun lt!1757459 () K!12435)

(assert (=> b!4597470 (= lt!1757459 key!3287)))

(declare-fun lt!1757464 () K!12435)

(assert (=> b!4597470 (= lt!1757464 key!3287)))

(declare-fun lt!1757451 () Unit!107861)

(declare-fun lemmaContainsTupleThenContainsKey!103 (List!51192 K!12435 V!12681) Unit!107861)

(assert (=> b!4597470 (= lt!1757451 (lemmaContainsTupleThenContainsKey!103 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) lt!1757459 (get!16877 (getValueByKey!1307 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287))))))

(declare-fun call!320841 () Bool)

(assert (=> b!4597470 call!320841))

(declare-fun lt!1757461 () Unit!107861)

(assert (=> b!4597470 (= lt!1757461 lt!1757451)))

(assert (=> b!4597470 false))

(declare-fun b!4597471 () Bool)

(declare-fun call!320845 () (InoxSet tuple2!51706))

(declare-fun call!320843 () (InoxSet tuple2!51706))

(assert (=> b!4597471 (= call!320843 ((_ map and) call!320845 ((_ map not) (store ((as const (Array tuple2!51706 Bool)) false) (tuple2!51707 key!3287 (get!16877 (getValueByKey!1307 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287))) true))))))

(declare-fun lt!1757453 () Unit!107861)

(assert (=> b!4597471 (= lt!1757453 e!2867661)))

(declare-fun c!787416 () Bool)

(declare-fun contains!14015 (List!51192 tuple2!51706) Bool)

(assert (=> b!4597471 (= c!787416 (contains!14015 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (tuple2!51707 key!3287 (get!16877 (getValueByKey!1307 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287)))))))

(declare-fun e!2867662 () Unit!107861)

(declare-fun Unit!108034 () Unit!107861)

(assert (=> b!4597471 (= e!2867662 Unit!108034)))

(declare-fun b!4597472 () Bool)

(declare-fun e!2867666 () List!51192)

(assert (=> b!4597472 (= e!2867666 Nil!51068)))

(declare-fun b!4597473 () Bool)

(declare-fun e!2867660 () Bool)

(declare-fun e!2867659 () Bool)

(assert (=> b!4597473 (= e!2867660 e!2867659)))

(declare-fun c!787422 () Bool)

(assert (=> b!4597473 (= c!787422 (containsKey!2150 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287))))

(declare-fun bm!320835 () Bool)

(declare-fun e!2867658 () List!51192)

(declare-fun c!787418 () Bool)

(declare-fun call!320840 () Bool)

(assert (=> bm!320835 (= call!320840 (containsKey!2150 e!2867658 (ite c!787418 key!3287 (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))))

(declare-fun c!787421 () Bool)

(assert (=> bm!320835 (= c!787421 c!787418)))

(declare-fun b!4597474 () Bool)

(declare-fun Unit!108035 () Unit!107861)

(assert (=> b!4597474 (= e!2867661 Unit!108035)))

(declare-fun b!4597475 () Bool)

(declare-fun e!2867663 () List!51192)

(assert (=> b!4597475 (= e!2867663 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))

(declare-fun c!787419 () Bool)

(assert (=> b!4597475 (= c!787419 call!320840)))

(declare-fun lt!1757456 () Unit!107861)

(assert (=> b!4597475 (= lt!1757456 e!2867662)))

(declare-fun b!4597476 () Bool)

(declare-fun e!2867664 () Unit!107861)

(declare-fun Unit!108036 () Unit!107861)

(assert (=> b!4597476 (= e!2867664 Unit!108036)))

(declare-fun bm!320836 () Bool)

(assert (=> bm!320836 (= call!320845 (content!8642 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))

(declare-fun b!4597477 () Bool)

(declare-fun Unit!108037 () Unit!107861)

(assert (=> b!4597477 (= e!2867664 Unit!108037)))

(declare-fun lt!1757454 () List!51192)

(assert (=> b!4597477 (= lt!1757454 (removePresrvNoDuplicatedKeys!219 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) key!3287))))

(declare-fun lt!1757466 () Unit!107861)

(assert (=> b!4597477 (= lt!1757466 (lemmaInListThenGetKeysListContains!567 lt!1757454 (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))))

(assert (=> b!4597477 (contains!14013 (getKeysList!571 lt!1757454) (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))

(declare-fun lt!1757465 () Unit!107861)

(assert (=> b!4597477 (= lt!1757465 lt!1757466)))

(assert (=> b!4597477 false))

(declare-fun d!1447275 () Bool)

(assert (=> d!1447275 e!2867660))

(declare-fun res!1922869 () Bool)

(assert (=> d!1447275 (=> (not res!1922869) (not e!2867660))))

(declare-fun lt!1757460 () List!51192)

(assert (=> d!1447275 (= res!1922869 (invariantList!1122 lt!1757460))))

(assert (=> d!1447275 (= lt!1757460 e!2867663)))

(assert (=> d!1447275 (= c!787418 (and ((_ is Cons!51068) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))) key!3287)))))

(assert (=> d!1447275 (invariantList!1122 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))

(assert (=> d!1447275 (= (removePresrvNoDuplicatedKeys!219 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287) lt!1757460)))

(declare-fun b!4597469 () Bool)

(assert (=> b!4597469 (= e!2867658 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))

(declare-fun bm!320837 () Bool)

(declare-fun call!320842 () (InoxSet tuple2!51706))

(assert (=> bm!320837 (= call!320842 (content!8642 lt!1757460))))

(declare-fun bm!320838 () Bool)

(assert (=> bm!320838 (= call!320841 (containsKey!2150 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (ite c!787418 lt!1757459 (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))))

(declare-fun b!4597478 () Bool)

(declare-fun res!1922867 () Bool)

(assert (=> b!4597478 (=> (not res!1922867) (not e!2867660))))

(assert (=> b!4597478 (= res!1922867 (= (content!8640 (getKeysList!571 lt!1757460)) ((_ map and) (content!8640 (getKeysList!571 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))) ((_ map not) (store ((as const (Array K!12435 Bool)) false) key!3287 true)))))))

(declare-fun b!4597479 () Bool)

(assert (=> b!4597479 (= e!2867658 (removePresrvNoDuplicatedKeys!219 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) key!3287))))

(declare-fun b!4597480 () Bool)

(assert (=> b!4597480 (= e!2867663 e!2867666)))

(declare-fun c!787417 () Bool)

(assert (=> b!4597480 (= c!787417 (and ((_ is Cons!51068) (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (not (= (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))) key!3287))))))

(declare-fun b!4597481 () Bool)

(declare-fun res!1922868 () Bool)

(assert (=> b!4597481 (=> (not res!1922868) (not e!2867660))))

(assert (=> b!4597481 (= res!1922868 (not (containsKey!2150 lt!1757460 key!3287)))))

(declare-fun bm!320839 () Bool)

(assert (=> bm!320839 (= call!320843 (content!8642 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))

(declare-fun b!4597482 () Bool)

(declare-fun e!2867665 () Unit!107861)

(declare-fun Unit!108038 () Unit!107861)

(assert (=> b!4597482 (= e!2867665 Unit!108038)))

(declare-fun lt!1757455 () Unit!107861)

(assert (=> b!4597482 (= lt!1757455 (lemmaInGetKeysListThenContainsKey!570 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))))

(assert (=> b!4597482 call!320841))

(declare-fun lt!1757462 () Unit!107861)

(assert (=> b!4597482 (= lt!1757462 lt!1757455)))

(assert (=> b!4597482 false))

(declare-fun b!4597483 () Bool)

(declare-fun lt!1757449 () Unit!107861)

(assert (=> b!4597483 (= lt!1757449 e!2867664)))

(declare-fun c!787415 () Bool)

(assert (=> b!4597483 (= c!787415 call!320840)))

(declare-fun lt!1757457 () Unit!107861)

(assert (=> b!4597483 (= lt!1757457 e!2867665)))

(declare-fun c!787420 () Bool)

(assert (=> b!4597483 (= c!787420 (contains!14013 (getKeysList!571 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))) (_1!29147 (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))))

(declare-fun lt!1757458 () List!51192)

(declare-fun $colon$colon!1038 (List!51192 tuple2!51706) List!51192)

(assert (=> b!4597483 (= lt!1757458 ($colon$colon!1038 (removePresrvNoDuplicatedKeys!219 (t!358186 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) key!3287) (h!57030 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))))

(assert (=> b!4597483 (= e!2867666 lt!1757458)))

(declare-fun b!4597484 () Bool)

(assert (=> b!4597484 (= call!320843 call!320845)))

(declare-fun Unit!108039 () Unit!107861)

(assert (=> b!4597484 (= e!2867662 Unit!108039)))

(declare-fun call!320844 () (InoxSet tuple2!51706))

(declare-fun b!4597485 () Bool)

(assert (=> b!4597485 (= e!2867659 (= call!320842 ((_ map and) call!320844 ((_ map not) (store ((as const (Array tuple2!51706 Bool)) false) (tuple2!51707 key!3287 (get!16877 (getValueByKey!1307 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287))) true)))))))

(assert (=> b!4597485 (containsKey!2150 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287)))

(declare-fun lt!1757463 () Unit!107861)

(assert (=> b!4597485 (= lt!1757463 (lemmaContainsKeyImpliesGetValueByKeyDefined!1211 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287))))

(assert (=> b!4597485 (isDefined!8655 (getValueByKey!1307 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) key!3287))))

(declare-fun lt!1757452 () Unit!107861)

(assert (=> b!4597485 (= lt!1757452 lt!1757463)))

(declare-fun b!4597486 () Bool)

(assert (=> b!4597486 (= e!2867659 (= call!320842 call!320844))))

(declare-fun b!4597487 () Bool)

(declare-fun Unit!108040 () Unit!107861)

(assert (=> b!4597487 (= e!2867665 Unit!108040)))

(declare-fun bm!320840 () Bool)

(assert (=> bm!320840 (= call!320844 (content!8642 (toList!4644 (extractMap!1374 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))

(assert (= (and d!1447275 c!787418) b!4597475))

(assert (= (and d!1447275 (not c!787418)) b!4597480))

(assert (= (and b!4597475 c!787419) b!4597471))

(assert (= (and b!4597475 (not c!787419)) b!4597484))

(assert (= (and b!4597471 c!787416) b!4597470))

(assert (= (and b!4597471 (not c!787416)) b!4597474))

(assert (= (or b!4597471 b!4597484) bm!320839))

(assert (= (or b!4597471 b!4597484) bm!320836))

(assert (= (and b!4597480 c!787417) b!4597483))

(assert (= (and b!4597480 (not c!787417)) b!4597472))

(assert (= (and b!4597483 c!787420) b!4597482))

(assert (= (and b!4597483 (not c!787420)) b!4597487))

(assert (= (and b!4597483 c!787415) b!4597477))

(assert (= (and b!4597483 (not c!787415)) b!4597476))

(assert (= (or b!4597470 b!4597482) bm!320838))

(assert (= (or b!4597475 b!4597483) bm!320835))

(assert (= (and bm!320835 c!787421) b!4597469))

(assert (= (and bm!320835 (not c!787421)) b!4597479))

(assert (= (and d!1447275 res!1922869) b!4597481))

(assert (= (and b!4597481 res!1922868) b!4597478))

(assert (= (and b!4597478 res!1922867) b!4597473))

(assert (= (and b!4597473 c!787422) b!4597485))

(assert (= (and b!4597473 (not c!787422)) b!4597486))

(assert (= (or b!4597485 b!4597486) bm!320837))

(assert (= (or b!4597485 b!4597486) bm!320840))

(declare-fun m!5423045 () Bool)

(assert (=> b!4597473 m!5423045))

(declare-fun m!5423047 () Bool)

(assert (=> bm!320835 m!5423047))

(declare-fun m!5423049 () Bool)

(assert (=> b!4597470 m!5423049))

(assert (=> b!4597470 m!5423049))

(declare-fun m!5423051 () Bool)

(assert (=> b!4597470 m!5423051))

(assert (=> b!4597470 m!5423051))

(declare-fun m!5423053 () Bool)

(assert (=> b!4597470 m!5423053))

(declare-fun m!5423055 () Bool)

(assert (=> b!4597481 m!5423055))

(declare-fun m!5423057 () Bool)

(assert (=> bm!320840 m!5423057))

(declare-fun m!5423059 () Bool)

(assert (=> b!4597479 m!5423059))

(assert (=> b!4597477 m!5423059))

(declare-fun m!5423061 () Bool)

(assert (=> b!4597477 m!5423061))

(declare-fun m!5423063 () Bool)

(assert (=> b!4597477 m!5423063))

(assert (=> b!4597477 m!5423063))

(declare-fun m!5423065 () Bool)

(assert (=> b!4597477 m!5423065))

(declare-fun m!5423067 () Bool)

(assert (=> bm!320839 m!5423067))

(declare-fun m!5423069 () Bool)

(assert (=> b!4597482 m!5423069))

(declare-fun m!5423071 () Bool)

(assert (=> bm!320838 m!5423071))

(declare-fun m!5423073 () Bool)

(assert (=> b!4597483 m!5423073))

(assert (=> b!4597483 m!5423073))

(declare-fun m!5423075 () Bool)

(assert (=> b!4597483 m!5423075))

(assert (=> b!4597483 m!5423059))

(assert (=> b!4597483 m!5423059))

(declare-fun m!5423077 () Bool)

(assert (=> b!4597483 m!5423077))

(assert (=> bm!320836 m!5423057))

(assert (=> b!4597471 m!5423049))

(assert (=> b!4597471 m!5423049))

(assert (=> b!4597471 m!5423051))

(declare-fun m!5423079 () Bool)

(assert (=> b!4597471 m!5423079))

(declare-fun m!5423081 () Bool)

(assert (=> b!4597471 m!5423081))

(declare-fun m!5423083 () Bool)

(assert (=> b!4597485 m!5423083))

(assert (=> b!4597485 m!5423049))

(assert (=> b!4597485 m!5423049))

(declare-fun m!5423085 () Bool)

(assert (=> b!4597485 m!5423085))

(assert (=> b!4597485 m!5423079))

(assert (=> b!4597485 m!5423049))

(assert (=> b!4597485 m!5423051))

(assert (=> b!4597485 m!5423045))

(assert (=> b!4597478 m!5422281))

(assert (=> b!4597478 m!5422281))

(declare-fun m!5423087 () Bool)

(assert (=> b!4597478 m!5423087))

(declare-fun m!5423089 () Bool)

(assert (=> b!4597478 m!5423089))

(assert (=> b!4597478 m!5423089))

(declare-fun m!5423091 () Bool)

(assert (=> b!4597478 m!5423091))

(assert (=> b!4597478 m!5421449))

(declare-fun m!5423093 () Bool)

(assert (=> bm!320837 m!5423093))

(declare-fun m!5423095 () Bool)

(assert (=> d!1447275 m!5423095))

(declare-fun m!5423097 () Bool)

(assert (=> d!1447275 m!5423097))

(assert (=> d!1446841 d!1447275))

(declare-fun d!1447331 () Bool)

(declare-fun choose!30798 (Hashable!5713 K!12435) (_ BitVec 64))

(assert (=> d!1447331 (= (hash!3207 hashF!1107 key!3287) (choose!30798 hashF!1107 key!3287))))

(declare-fun bs!1010358 () Bool)

(assert (= bs!1010358 d!1447331))

(declare-fun m!5423099 () Bool)

(assert (=> bs!1010358 m!5423099))

(assert (=> d!1446909 d!1447331))

(assert (=> d!1446859 d!1447255))

(declare-fun d!1447333 () Bool)

(assert (=> d!1447333 (= (invariantList!1122 (toList!4644 lt!1756715)) (noDuplicatedKeys!324 (toList!4644 lt!1756715)))))

(declare-fun bs!1010359 () Bool)

(assert (= bs!1010359 d!1447333))

(declare-fun m!5423101 () Bool)

(assert (=> bs!1010359 m!5423101))

(assert (=> d!1446835 d!1447333))

(declare-fun d!1447335 () Bool)

(declare-fun res!1922870 () Bool)

(declare-fun e!2867667 () Bool)

(assert (=> d!1447335 (=> res!1922870 e!2867667)))

(assert (=> d!1447335 (= res!1922870 ((_ is Nil!51069) (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))

(assert (=> d!1447335 (= (forall!10590 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069) lambda!185850) e!2867667)))

(declare-fun b!4597488 () Bool)

(declare-fun e!2867668 () Bool)

(assert (=> b!4597488 (= e!2867667 e!2867668)))

(declare-fun res!1922871 () Bool)

(assert (=> b!4597488 (=> (not res!1922871) (not e!2867668))))

(assert (=> b!4597488 (= res!1922871 (dynLambda!21392 lambda!185850 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))))))

(declare-fun b!4597489 () Bool)

(assert (=> b!4597489 (= e!2867668 (forall!10590 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)) lambda!185850))))

(assert (= (and d!1447335 (not res!1922870)) b!4597488))

(assert (= (and b!4597488 res!1922871) b!4597489))

(declare-fun b_lambda!169241 () Bool)

(assert (=> (not b_lambda!169241) (not b!4597488)))

(declare-fun m!5423105 () Bool)

(assert (=> b!4597488 m!5423105))

(declare-fun m!5423109 () Bool)

(assert (=> b!4597489 m!5423109))

(assert (=> d!1446835 d!1447335))

(declare-fun d!1447337 () Bool)

(declare-fun lt!1757467 () Bool)

(assert (=> d!1447337 (= lt!1757467 (select (content!8640 e!2867132) key!3287))))

(declare-fun e!2867670 () Bool)

(assert (=> d!1447337 (= lt!1757467 e!2867670)))

(declare-fun res!1922872 () Bool)

(assert (=> d!1447337 (=> (not res!1922872) (not e!2867670))))

(assert (=> d!1447337 (= res!1922872 ((_ is Cons!51071) e!2867132))))

(assert (=> d!1447337 (= (contains!14013 e!2867132 key!3287) lt!1757467)))

(declare-fun b!4597490 () Bool)

(declare-fun e!2867669 () Bool)

(assert (=> b!4597490 (= e!2867670 e!2867669)))

(declare-fun res!1922873 () Bool)

(assert (=> b!4597490 (=> res!1922873 e!2867669)))

(assert (=> b!4597490 (= res!1922873 (= (h!57035 e!2867132) key!3287))))

(declare-fun b!4597491 () Bool)

(assert (=> b!4597491 (= e!2867669 (contains!14013 (t!358189 e!2867132) key!3287))))

(assert (= (and d!1447337 res!1922872) b!4597490))

(assert (= (and b!4597490 (not res!1922873)) b!4597491))

(declare-fun m!5423125 () Bool)

(assert (=> d!1447337 m!5423125))

(declare-fun m!5423127 () Bool)

(assert (=> d!1447337 m!5423127))

(declare-fun m!5423129 () Bool)

(assert (=> b!4597491 m!5423129))

(assert (=> bm!320733 d!1447337))

(assert (=> b!4596616 d!1447093))

(assert (=> b!4596616 d!1447083))

(assert (=> b!4596614 d!1447127))

(declare-fun d!1447339 () Bool)

(assert (=> d!1447339 (containsKey!2150 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287)))

(declare-fun lt!1757468 () Unit!107861)

(assert (=> d!1447339 (= lt!1757468 (choose!30795 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287))))

(assert (=> d!1447339 (invariantList!1122 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))))))

(assert (=> d!1447339 (= (lemmaInGetKeysListThenContainsKey!570 (toList!4644 (extractMap!1374 (toList!4643 lm!1477))) key!3287) lt!1757468)))

(declare-fun bs!1010360 () Bool)

(assert (= bs!1010360 d!1447339))

(assert (=> bs!1010360 m!5421581))

(declare-fun m!5423145 () Bool)

(assert (=> bs!1010360 m!5423145))

(assert (=> bs!1010360 m!5422265))

(assert (=> b!4596614 d!1447339))

(declare-fun d!1447341 () Bool)

(declare-fun e!2867671 () Bool)

(assert (=> d!1447341 e!2867671))

(declare-fun res!1922874 () Bool)

(assert (=> d!1447341 (=> res!1922874 e!2867671)))

(declare-fun lt!1757472 () Bool)

(assert (=> d!1447341 (= res!1922874 (not lt!1757472))))

(declare-fun lt!1757470 () Bool)

(assert (=> d!1447341 (= lt!1757472 lt!1757470)))

(declare-fun lt!1757469 () Unit!107861)

(declare-fun e!2867672 () Unit!107861)

(assert (=> d!1447341 (= lt!1757469 e!2867672)))

(declare-fun c!787423 () Bool)

(assert (=> d!1447341 (= c!787423 lt!1757470)))

(assert (=> d!1447341 (= lt!1757470 (containsKey!2148 (toList!4643 lm!1477) (hash!3203 hashF!1107 key!3287)))))

(assert (=> d!1447341 (= (contains!14010 lm!1477 (hash!3203 hashF!1107 key!3287)) lt!1757472)))

(declare-fun b!4597492 () Bool)

(declare-fun lt!1757471 () Unit!107861)

(assert (=> b!4597492 (= e!2867672 lt!1757471)))

(assert (=> b!4597492 (= lt!1757471 (lemmaContainsKeyImpliesGetValueByKeyDefined!1209 (toList!4643 lm!1477) (hash!3203 hashF!1107 key!3287)))))

(assert (=> b!4597492 (isDefined!8653 (getValueByKey!1306 (toList!4643 lm!1477) (hash!3203 hashF!1107 key!3287)))))

(declare-fun b!4597493 () Bool)

(declare-fun Unit!108052 () Unit!107861)

(assert (=> b!4597493 (= e!2867672 Unit!108052)))

(declare-fun b!4597494 () Bool)

(assert (=> b!4597494 (= e!2867671 (isDefined!8653 (getValueByKey!1306 (toList!4643 lm!1477) (hash!3203 hashF!1107 key!3287))))))

(assert (= (and d!1447341 c!787423) b!4597492))

(assert (= (and d!1447341 (not c!787423)) b!4597493))

(assert (= (and d!1447341 (not res!1922874)) b!4597494))

(assert (=> d!1447341 m!5421155))

(declare-fun m!5423149 () Bool)

(assert (=> d!1447341 m!5423149))

(assert (=> b!4597492 m!5421155))

(declare-fun m!5423151 () Bool)

(assert (=> b!4597492 m!5423151))

(assert (=> b!4597492 m!5421155))

(declare-fun m!5423153 () Bool)

(assert (=> b!4597492 m!5423153))

(assert (=> b!4597492 m!5423153))

(declare-fun m!5423155 () Bool)

(assert (=> b!4597492 m!5423155))

(assert (=> b!4597494 m!5421155))

(assert (=> b!4597494 m!5423153))

(assert (=> b!4597494 m!5423153))

(assert (=> b!4597494 m!5423155))

(assert (=> d!1446771 d!1447341))

(assert (=> d!1446771 d!1446909))

(declare-fun d!1447349 () Bool)

(assert (=> d!1447349 (contains!14010 lm!1477 (hash!3203 hashF!1107 key!3287))))

(assert (=> d!1447349 true))

(declare-fun _$27!1426 () Unit!107861)

(assert (=> d!1447349 (= (choose!30776 lm!1477 key!3287 hashF!1107) _$27!1426)))

(declare-fun bs!1010364 () Bool)

(assert (= bs!1010364 d!1447349))

(assert (=> bs!1010364 m!5421155))

(assert (=> bs!1010364 m!5421155))

(assert (=> bs!1010364 m!5421199))

(assert (=> d!1446771 d!1447349))

(declare-fun d!1447357 () Bool)

(declare-fun res!1922881 () Bool)

(declare-fun e!2867679 () Bool)

(assert (=> d!1447357 (=> res!1922881 e!2867679)))

(assert (=> d!1447357 (= res!1922881 ((_ is Nil!51069) (toList!4643 lm!1477)))))

(assert (=> d!1447357 (= (forall!10590 (toList!4643 lm!1477) lambda!185827) e!2867679)))

(declare-fun b!4597501 () Bool)

(declare-fun e!2867680 () Bool)

(assert (=> b!4597501 (= e!2867679 e!2867680)))

(declare-fun res!1922882 () Bool)

(assert (=> b!4597501 (=> (not res!1922882) (not e!2867680))))

(assert (=> b!4597501 (= res!1922882 (dynLambda!21392 lambda!185827 (h!57031 (toList!4643 lm!1477))))))

(declare-fun b!4597502 () Bool)

(assert (=> b!4597502 (= e!2867680 (forall!10590 (t!358187 (toList!4643 lm!1477)) lambda!185827))))

(assert (= (and d!1447357 (not res!1922881)) b!4597501))

(assert (= (and b!4597501 res!1922882) b!4597502))

(declare-fun b_lambda!169247 () Bool)

(assert (=> (not b_lambda!169247) (not b!4597501)))

(declare-fun m!5423175 () Bool)

(assert (=> b!4597501 m!5423175))

(declare-fun m!5423179 () Bool)

(assert (=> b!4597502 m!5423179))

(assert (=> d!1446771 d!1447357))

(declare-fun bs!1010365 () Bool)

(declare-fun b!4597510 () Bool)

(assert (= bs!1010365 (and b!4597510 b!4596965)))

(declare-fun lambda!186054 () Int)

(assert (=> bs!1010365 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186054 lambda!185926))))

(declare-fun bs!1010366 () Bool)

(assert (= bs!1010366 (and b!4597510 d!1447017)))

(assert (=> bs!1010366 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757035) (= lambda!186054 lambda!185928))))

(declare-fun bs!1010367 () Bool)

(assert (= bs!1010367 (and b!4597510 b!4597276)))

(assert (=> bs!1010367 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186054 lambda!186018))))

(declare-fun bs!1010368 () Bool)

(assert (= bs!1010368 (and b!4597510 b!4597042)))

(assert (=> bs!1010368 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757115) (= lambda!186054 lambda!185950))))

(declare-fun bs!1010369 () Bool)

(assert (= bs!1010369 (and b!4597510 b!4597044)))

(assert (=> bs!1010369 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186054 lambda!185948))))

(assert (=> bs!1010365 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757044) (= lambda!186054 lambda!185927))))

(declare-fun bs!1010370 () Bool)

(assert (= bs!1010370 (and b!4597510 b!4596978)))

(assert (=> bs!1010370 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186054 lambda!185931))))

(declare-fun bs!1010371 () Bool)

(assert (= bs!1010371 (and b!4597510 b!4596956)))

(assert (=> bs!1010371 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757022) (= lambda!186054 lambda!185922))))

(declare-fun bs!1010372 () Bool)

(assert (= bs!1010372 (and b!4597510 b!4596967)))

(assert (=> bs!1010372 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186054 lambda!185925))))

(declare-fun bs!1010373 () Bool)

(assert (= bs!1010373 (and b!4597510 b!4596976)))

(assert (=> bs!1010373 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186054 lambda!185932))))

(assert (=> bs!1010371 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186054 lambda!185921))))

(assert (=> bs!1010373 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757067) (= lambda!186054 lambda!185933))))

(declare-fun bs!1010374 () Bool)

(assert (= bs!1010374 (and b!4597510 b!4597274)))

(assert (=> bs!1010374 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186054 lambda!186019))))

(declare-fun bs!1010375 () Bool)

(assert (= bs!1010375 (and b!4597510 d!1447073)))

(assert (=> bs!1010375 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757106) (= lambda!186054 lambda!185955))))

(declare-fun bs!1010376 () Bool)

(assert (= bs!1010376 (and b!4597510 d!1446887)))

(assert (=> bs!1010376 (not (= lambda!186054 lambda!185866))))

(assert (=> bs!1010368 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186054 lambda!185949))))

(declare-fun bs!1010377 () Bool)

(assert (= bs!1010377 (and b!4597510 b!4596958)))

(assert (=> bs!1010377 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186054 lambda!185920))))

(assert (=> bs!1010374 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757285) (= lambda!186054 lambda!186021))))

(declare-fun bs!1010378 () Bool)

(assert (= bs!1010378 (and b!4597510 d!1446973)))

(assert (=> bs!1010378 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757013) (= lambda!186054 lambda!185923))))

(declare-fun bs!1010379 () Bool)

(assert (= bs!1010379 (and b!4597510 d!1447217)))

(assert (=> bs!1010379 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757276) (= lambda!186054 lambda!186022))))

(declare-fun bs!1010380 () Bool)

(assert (= bs!1010380 (and b!4597510 d!1447029)))

(assert (=> bs!1010380 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757058) (= lambda!186054 lambda!185934))))

(assert (=> b!4597510 true))

(declare-fun bs!1010381 () Bool)

(declare-fun b!4597508 () Bool)

(assert (= bs!1010381 (and b!4597508 b!4596965)))

(declare-fun lambda!186055 () Int)

(assert (=> bs!1010381 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186055 lambda!185926))))

(declare-fun bs!1010382 () Bool)

(assert (= bs!1010382 (and b!4597508 d!1447017)))

(assert (=> bs!1010382 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757035) (= lambda!186055 lambda!185928))))

(declare-fun bs!1010383 () Bool)

(assert (= bs!1010383 (and b!4597508 b!4597276)))

(assert (=> bs!1010383 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186055 lambda!186018))))

(declare-fun bs!1010384 () Bool)

(assert (= bs!1010384 (and b!4597508 b!4597042)))

(assert (=> bs!1010384 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757115) (= lambda!186055 lambda!185950))))

(declare-fun bs!1010385 () Bool)

(assert (= bs!1010385 (and b!4597508 b!4597044)))

(assert (=> bs!1010385 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186055 lambda!185948))))

(assert (=> bs!1010381 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757044) (= lambda!186055 lambda!185927))))

(declare-fun bs!1010386 () Bool)

(assert (= bs!1010386 (and b!4597508 b!4596978)))

(assert (=> bs!1010386 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186055 lambda!185931))))

(declare-fun bs!1010387 () Bool)

(assert (= bs!1010387 (and b!4597508 b!4596956)))

(assert (=> bs!1010387 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757022) (= lambda!186055 lambda!185922))))

(declare-fun bs!1010388 () Bool)

(assert (= bs!1010388 (and b!4597508 b!4596967)))

(assert (=> bs!1010388 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186055 lambda!185925))))

(declare-fun bs!1010389 () Bool)

(assert (= bs!1010389 (and b!4597508 b!4596976)))

(assert (=> bs!1010389 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186055 lambda!185932))))

(assert (=> bs!1010389 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757067) (= lambda!186055 lambda!185933))))

(declare-fun bs!1010390 () Bool)

(assert (= bs!1010390 (and b!4597508 b!4597274)))

(assert (=> bs!1010390 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186055 lambda!186019))))

(declare-fun bs!1010391 () Bool)

(assert (= bs!1010391 (and b!4597508 d!1447073)))

(assert (=> bs!1010391 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757106) (= lambda!186055 lambda!185955))))

(declare-fun bs!1010392 () Bool)

(assert (= bs!1010392 (and b!4597508 d!1446887)))

(assert (=> bs!1010392 (not (= lambda!186055 lambda!185866))))

(assert (=> bs!1010384 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186055 lambda!185949))))

(declare-fun bs!1010393 () Bool)

(assert (= bs!1010393 (and b!4597508 b!4596958)))

(assert (=> bs!1010393 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186055 lambda!185920))))

(assert (=> bs!1010387 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186055 lambda!185921))))

(declare-fun bs!1010394 () Bool)

(assert (= bs!1010394 (and b!4597508 b!4597510)))

(assert (=> bs!1010394 (= lambda!186055 lambda!186054)))

(assert (=> bs!1010390 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757285) (= lambda!186055 lambda!186021))))

(declare-fun bs!1010395 () Bool)

(assert (= bs!1010395 (and b!4597508 d!1446973)))

(assert (=> bs!1010395 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757013) (= lambda!186055 lambda!185923))))

(declare-fun bs!1010396 () Bool)

(assert (= bs!1010396 (and b!4597508 d!1447217)))

(assert (=> bs!1010396 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757276) (= lambda!186055 lambda!186022))))

(declare-fun bs!1010397 () Bool)

(assert (= bs!1010397 (and b!4597508 d!1447029)))

(assert (=> bs!1010397 (= (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757058) (= lambda!186055 lambda!185934))))

(assert (=> b!4597508 true))

(declare-fun lambda!186056 () Int)

(declare-fun lt!1757499 () ListMap!3905)

(assert (=> bs!1010381 (= (= lt!1757499 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186056 lambda!185926))))

(assert (=> bs!1010382 (= (= lt!1757499 lt!1757035) (= lambda!186056 lambda!185928))))

(assert (=> bs!1010383 (= (= lt!1757499 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186056 lambda!186018))))

(assert (=> bs!1010384 (= (= lt!1757499 lt!1757115) (= lambda!186056 lambda!185950))))

(assert (=> bs!1010385 (= (= lt!1757499 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186056 lambda!185948))))

(assert (=> bs!1010381 (= (= lt!1757499 lt!1757044) (= lambda!186056 lambda!185927))))

(assert (=> bs!1010386 (= (= lt!1757499 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186056 lambda!185931))))

(assert (=> bs!1010387 (= (= lt!1757499 lt!1757022) (= lambda!186056 lambda!185922))))

(assert (=> bs!1010388 (= (= lt!1757499 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186056 lambda!185925))))

(assert (=> bs!1010389 (= (= lt!1757499 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186056 lambda!185932))))

(assert (=> bs!1010390 (= (= lt!1757499 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186056 lambda!186019))))

(assert (=> bs!1010391 (= (= lt!1757499 lt!1757106) (= lambda!186056 lambda!185955))))

(assert (=> bs!1010392 (not (= lambda!186056 lambda!185866))))

(assert (=> bs!1010384 (= (= lt!1757499 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186056 lambda!185949))))

(assert (=> bs!1010393 (= (= lt!1757499 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186056 lambda!185920))))

(assert (=> bs!1010387 (= (= lt!1757499 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186056 lambda!185921))))

(assert (=> bs!1010394 (= (= lt!1757499 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) (= lambda!186056 lambda!186054))))

(assert (=> bs!1010390 (= (= lt!1757499 lt!1757285) (= lambda!186056 lambda!186021))))

(assert (=> bs!1010395 (= (= lt!1757499 lt!1757013) (= lambda!186056 lambda!185923))))

(assert (=> bs!1010396 (= (= lt!1757499 lt!1757276) (= lambda!186056 lambda!186022))))

(assert (=> bs!1010397 (= (= lt!1757499 lt!1757058) (= lambda!186056 lambda!185934))))

(assert (=> bs!1010389 (= (= lt!1757499 lt!1757067) (= lambda!186056 lambda!185933))))

(assert (=> b!4597508 (= (= lt!1757499 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) (= lambda!186056 lambda!186055))))

(assert (=> b!4597508 true))

(declare-fun bs!1010411 () Bool)

(declare-fun d!1447363 () Bool)

(assert (= bs!1010411 (and d!1447363 b!4596965)))

(declare-fun lt!1757490 () ListMap!3905)

(declare-fun lambda!186057 () Int)

(assert (=> bs!1010411 (= (= lt!1757490 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186057 lambda!185926))))

(declare-fun bs!1010413 () Bool)

(assert (= bs!1010413 (and d!1447363 d!1447017)))

(assert (=> bs!1010413 (= (= lt!1757490 lt!1757035) (= lambda!186057 lambda!185928))))

(declare-fun bs!1010414 () Bool)

(assert (= bs!1010414 (and d!1447363 b!4597276)))

(assert (=> bs!1010414 (= (= lt!1757490 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186057 lambda!186018))))

(declare-fun bs!1010415 () Bool)

(assert (= bs!1010415 (and d!1447363 b!4597042)))

(assert (=> bs!1010415 (= (= lt!1757490 lt!1757115) (= lambda!186057 lambda!185950))))

(declare-fun bs!1010416 () Bool)

(assert (= bs!1010416 (and d!1447363 b!4597044)))

(assert (=> bs!1010416 (= (= lt!1757490 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186057 lambda!185948))))

(assert (=> bs!1010411 (= (= lt!1757490 lt!1757044) (= lambda!186057 lambda!185927))))

(declare-fun bs!1010417 () Bool)

(assert (= bs!1010417 (and d!1447363 b!4596978)))

(assert (=> bs!1010417 (= (= lt!1757490 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186057 lambda!185931))))

(declare-fun bs!1010418 () Bool)

(assert (= bs!1010418 (and d!1447363 b!4596956)))

(assert (=> bs!1010418 (= (= lt!1757490 lt!1757022) (= lambda!186057 lambda!185922))))

(declare-fun bs!1010419 () Bool)

(assert (= bs!1010419 (and d!1447363 b!4596967)))

(assert (=> bs!1010419 (= (= lt!1757490 (extractMap!1374 (t!358187 lt!1756615))) (= lambda!186057 lambda!185925))))

(declare-fun bs!1010420 () Bool)

(assert (= bs!1010420 (and d!1447363 b!4596976)))

(assert (=> bs!1010420 (= (= lt!1757490 (extractMap!1374 (t!358187 (t!358187 (toList!4643 lm!1477))))) (= lambda!186057 lambda!185932))))

(declare-fun bs!1010421 () Bool)

(assert (= bs!1010421 (and d!1447363 b!4597274)))

(assert (=> bs!1010421 (= (= lt!1757490 (extractMap!1374 (t!358187 (toList!4643 lm!1477)))) (= lambda!186057 lambda!186019))))

(declare-fun bs!1010422 () Bool)

(assert (= bs!1010422 (and d!1447363 b!4597508)))

(assert (=> bs!1010422 (= (= lt!1757490 lt!1757499) (= lambda!186057 lambda!186056))))

(declare-fun bs!1010423 () Bool)

(assert (= bs!1010423 (and d!1447363 d!1447073)))

(assert (=> bs!1010423 (= (= lt!1757490 lt!1757106) (= lambda!186057 lambda!185955))))

(declare-fun bs!1010424 () Bool)

(assert (= bs!1010424 (and d!1447363 d!1446887)))

(assert (=> bs!1010424 (not (= lambda!186057 lambda!185866))))

(assert (=> bs!1010415 (= (= lt!1757490 (extractMap!1374 (t!358187 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))) (= lambda!186057 lambda!185949))))

(declare-fun bs!1010425 () Bool)

(assert (= bs!1010425 (and d!1447363 b!4596958)))

(assert (=> bs!1010425 (= (= lt!1757490 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186057 lambda!185920))))

(assert (=> bs!1010418 (= (= lt!1757490 (extractMap!1374 (t!358187 (toList!4643 lt!1756611)))) (= lambda!186057 lambda!185921))))

(declare-fun bs!1010426 () Bool)

(assert (= bs!1010426 (and d!1447363 b!4597510)))

(assert (=> bs!1010426 (= (= lt!1757490 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) (= lambda!186057 lambda!186054))))

(assert (=> bs!1010421 (= (= lt!1757490 lt!1757285) (= lambda!186057 lambda!186021))))

(declare-fun bs!1010427 () Bool)

(assert (= bs!1010427 (and d!1447363 d!1446973)))

(assert (=> bs!1010427 (= (= lt!1757490 lt!1757013) (= lambda!186057 lambda!185923))))

(declare-fun bs!1010428 () Bool)

(assert (= bs!1010428 (and d!1447363 d!1447217)))

(assert (=> bs!1010428 (= (= lt!1757490 lt!1757276) (= lambda!186057 lambda!186022))))

(declare-fun bs!1010429 () Bool)

(assert (= bs!1010429 (and d!1447363 d!1447029)))

(assert (=> bs!1010429 (= (= lt!1757490 lt!1757058) (= lambda!186057 lambda!185934))))

(assert (=> bs!1010420 (= (= lt!1757490 lt!1757067) (= lambda!186057 lambda!185933))))

(assert (=> bs!1010422 (= (= lt!1757490 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) (= lambda!186057 lambda!186055))))

(assert (=> d!1447363 true))

(declare-fun b!4597506 () Bool)

(declare-fun e!2867684 () Bool)

(assert (=> b!4597506 (= e!2867684 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) lambda!186056))))

(declare-fun bm!320841 () Bool)

(declare-fun call!320847 () Unit!107861)

(assert (=> bm!320841 (= call!320847 (lemmaContainsAllItsOwnKeys!433 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))))))

(declare-fun b!4597507 () Bool)

(declare-fun res!1922884 () Bool)

(declare-fun e!2867685 () Bool)

(assert (=> b!4597507 (=> (not res!1922884) (not e!2867685))))

(assert (=> b!4597507 (= res!1922884 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) lambda!186057))))

(declare-fun c!787425 () Bool)

(declare-fun call!320846 () Bool)

(declare-fun bm!320842 () Bool)

(assert (=> bm!320842 (= call!320846 (forall!10592 (ite c!787425 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069)))) (ite c!787425 lambda!186054 lambda!186056)))))

(declare-fun e!2867683 () ListMap!3905)

(assert (=> b!4597508 (= e!2867683 lt!1757499)))

(declare-fun lt!1757496 () ListMap!3905)

(assert (=> b!4597508 (= lt!1757496 (+!1739 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (h!57030 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069))))))))

(assert (=> b!4597508 (= lt!1757499 (addToMapMapFromBucket!812 (t!358186 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069)))) (+!1739 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) (h!57030 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069)))))))))

(declare-fun lt!1757498 () Unit!107861)

(assert (=> b!4597508 (= lt!1757498 call!320847)))

(assert (=> b!4597508 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) lambda!186055)))

(declare-fun lt!1757487 () Unit!107861)

(assert (=> b!4597508 (= lt!1757487 lt!1757498)))

(assert (=> b!4597508 (forall!10592 (toList!4644 lt!1757496) lambda!186056)))

(declare-fun lt!1757485 () Unit!107861)

(declare-fun Unit!108054 () Unit!107861)

(assert (=> b!4597508 (= lt!1757485 Unit!108054)))

(assert (=> b!4597508 (forall!10592 (t!358186 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069)))) lambda!186056)))

(declare-fun lt!1757484 () Unit!107861)

(declare-fun Unit!108055 () Unit!107861)

(assert (=> b!4597508 (= lt!1757484 Unit!108055)))

(declare-fun lt!1757481 () Unit!107861)

(declare-fun Unit!108056 () Unit!107861)

(assert (=> b!4597508 (= lt!1757481 Unit!108056)))

(declare-fun lt!1757500 () Unit!107861)

(assert (=> b!4597508 (= lt!1757500 (forallContained!2845 (toList!4644 lt!1757496) lambda!186056 (h!57030 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069))))))))

(assert (=> b!4597508 (contains!14011 lt!1757496 (_1!29147 (h!57030 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069))))))))

(declare-fun lt!1757493 () Unit!107861)

(declare-fun Unit!108057 () Unit!107861)

(assert (=> b!4597508 (= lt!1757493 Unit!108057)))

(assert (=> b!4597508 (contains!14011 lt!1757499 (_1!29147 (h!57030 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069))))))))

(declare-fun lt!1757497 () Unit!107861)

(declare-fun Unit!108058 () Unit!107861)

(assert (=> b!4597508 (= lt!1757497 Unit!108058)))

(assert (=> b!4597508 call!320846))

(declare-fun lt!1757480 () Unit!107861)

(declare-fun Unit!108059 () Unit!107861)

(assert (=> b!4597508 (= lt!1757480 Unit!108059)))

(assert (=> b!4597508 (forall!10592 (toList!4644 lt!1757496) lambda!186056)))

(declare-fun lt!1757489 () Unit!107861)

(declare-fun Unit!108060 () Unit!107861)

(assert (=> b!4597508 (= lt!1757489 Unit!108060)))

(declare-fun lt!1757494 () Unit!107861)

(declare-fun Unit!108061 () Unit!107861)

(assert (=> b!4597508 (= lt!1757494 Unit!108061)))

(declare-fun lt!1757492 () Unit!107861)

(assert (=> b!4597508 (= lt!1757492 (addForallContainsKeyThenBeforeAdding!433 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757499 (_1!29147 (h!57030 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069))))) (_2!29147 (h!57030 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069)))))))))

(assert (=> b!4597508 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) lambda!186056)))

(declare-fun lt!1757486 () Unit!107861)

(assert (=> b!4597508 (= lt!1757486 lt!1757492)))

(assert (=> b!4597508 (forall!10592 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) lambda!186056)))

(declare-fun lt!1757491 () Unit!107861)

(declare-fun Unit!108062 () Unit!107861)

(assert (=> b!4597508 (= lt!1757491 Unit!108062)))

(declare-fun res!1922886 () Bool)

(declare-fun call!320848 () Bool)

(assert (=> b!4597508 (= res!1922886 call!320848)))

(assert (=> b!4597508 (=> (not res!1922886) (not e!2867684))))

(assert (=> b!4597508 e!2867684))

(declare-fun lt!1757488 () Unit!107861)

(declare-fun Unit!108063 () Unit!107861)

(assert (=> b!4597508 (= lt!1757488 Unit!108063)))

(declare-fun b!4597509 () Bool)

(assert (=> b!4597509 (= e!2867685 (invariantList!1122 (toList!4644 lt!1757490)))))

(assert (=> d!1447363 e!2867685))

(declare-fun res!1922885 () Bool)

(assert (=> d!1447363 (=> (not res!1922885) (not e!2867685))))

(assert (=> d!1447363 (= res!1922885 (forall!10592 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069))) lambda!186057))))

(assert (=> d!1447363 (= lt!1757490 e!2867683)))

(assert (=> d!1447363 (= c!787425 ((_ is Nil!51068) (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069)))))))

(assert (=> d!1447363 (noDuplicateKeys!1314 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069))))))

(assert (=> d!1447363 (= (addToMapMapFromBucket!812 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069))) (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) lt!1757490)))

(declare-fun bm!320843 () Bool)

(assert (=> bm!320843 (= call!320848 (forall!10592 (ite c!787425 (toList!4644 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069)))) (ite c!787425 lambda!186054 lambda!186056)))))

(assert (=> b!4597510 (= e!2867683 (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))))))

(declare-fun lt!1757482 () Unit!107861)

(assert (=> b!4597510 (= lt!1757482 call!320847)))

(assert (=> b!4597510 call!320846))

(declare-fun lt!1757495 () Unit!107861)

(assert (=> b!4597510 (= lt!1757495 lt!1757482)))

(assert (=> b!4597510 call!320848))

(declare-fun lt!1757483 () Unit!107861)

(declare-fun Unit!108064 () Unit!107861)

(assert (=> b!4597510 (= lt!1757483 Unit!108064)))

(assert (= (and d!1447363 c!787425) b!4597510))

(assert (= (and d!1447363 (not c!787425)) b!4597508))

(assert (= (and b!4597508 res!1922886) b!4597506))

(assert (= (or b!4597510 b!4597508) bm!320842))

(assert (= (or b!4597510 b!4597508) bm!320843))

(assert (= (or b!4597510 b!4597508) bm!320841))

(assert (= (and d!1447363 res!1922885) b!4597507))

(assert (= (and b!4597507 res!1922884) b!4597509))

(assert (=> b!4597508 m!5421389))

(declare-fun m!5423237 () Bool)

(assert (=> b!4597508 m!5423237))

(assert (=> b!4597508 m!5423237))

(declare-fun m!5423239 () Bool)

(assert (=> b!4597508 m!5423239))

(declare-fun m!5423241 () Bool)

(assert (=> b!4597508 m!5423241))

(declare-fun m!5423243 () Bool)

(assert (=> b!4597508 m!5423243))

(declare-fun m!5423245 () Bool)

(assert (=> b!4597508 m!5423245))

(declare-fun m!5423247 () Bool)

(assert (=> b!4597508 m!5423247))

(declare-fun m!5423249 () Bool)

(assert (=> b!4597508 m!5423249))

(declare-fun m!5423251 () Bool)

(assert (=> b!4597508 m!5423251))

(assert (=> b!4597508 m!5423247))

(declare-fun m!5423253 () Bool)

(assert (=> b!4597508 m!5423253))

(assert (=> b!4597508 m!5423249))

(assert (=> b!4597508 m!5421389))

(declare-fun m!5423255 () Bool)

(assert (=> b!4597508 m!5423255))

(declare-fun m!5423257 () Bool)

(assert (=> bm!320843 m!5423257))

(assert (=> bm!320842 m!5423257))

(declare-fun m!5423259 () Bool)

(assert (=> b!4597509 m!5423259))

(declare-fun m!5423261 () Bool)

(assert (=> d!1447363 m!5423261))

(declare-fun m!5423263 () Bool)

(assert (=> d!1447363 m!5423263))

(assert (=> b!4597506 m!5423249))

(assert (=> bm!320841 m!5421389))

(declare-fun m!5423265 () Bool)

(assert (=> bm!320841 m!5423265))

(declare-fun m!5423267 () Bool)

(assert (=> b!4597507 m!5423267))

(assert (=> b!4596491 d!1447363))

(declare-fun bs!1010430 () Bool)

(declare-fun d!1447409 () Bool)

(assert (= bs!1010430 (and d!1447409 d!1447019)))

(declare-fun lambda!186058 () Int)

(assert (=> bs!1010430 (= lambda!186058 lambda!185929)))

(declare-fun bs!1010431 () Bool)

(assert (= bs!1010431 (and d!1447409 d!1446835)))

(assert (=> bs!1010431 (= lambda!186058 lambda!185850)))

(declare-fun bs!1010432 () Bool)

(assert (= bs!1010432 (and d!1447409 d!1447025)))

(assert (=> bs!1010432 (= lambda!186058 lambda!185930)))

(declare-fun bs!1010433 () Bool)

(assert (= bs!1010433 (and d!1447409 d!1447175)))

(assert (=> bs!1010433 (= lambda!186058 lambda!186006)))

(declare-fun bs!1010434 () Bool)

(assert (= bs!1010434 (and d!1447409 d!1447031)))

(assert (=> bs!1010434 (= lambda!186058 lambda!185935)))

(declare-fun bs!1010435 () Bool)

(assert (= bs!1010435 (and d!1447409 d!1446825)))

(assert (=> bs!1010435 (= lambda!186058 lambda!185849)))

(declare-fun bs!1010436 () Bool)

(assert (= bs!1010436 (and d!1447409 d!1446893)))

(assert (=> bs!1010436 (= lambda!186058 lambda!185867)))

(declare-fun bs!1010437 () Bool)

(assert (= bs!1010437 (and d!1447409 d!1447015)))

(assert (=> bs!1010437 (= lambda!186058 lambda!185924)))

(declare-fun bs!1010438 () Bool)

(assert (= bs!1010438 (and d!1447409 start!458528)))

(assert (=> bs!1010438 (= lambda!186058 lambda!185824)))

(declare-fun bs!1010439 () Bool)

(assert (= bs!1010439 (and d!1447409 d!1446895)))

(assert (=> bs!1010439 (= lambda!186058 lambda!185868)))

(declare-fun bs!1010440 () Bool)

(assert (= bs!1010440 (and d!1447409 d!1446897)))

(assert (=> bs!1010440 (= lambda!186058 lambda!185869)))

(declare-fun bs!1010441 () Bool)

(assert (= bs!1010441 (and d!1447409 d!1446821)))

(assert (=> bs!1010441 (not (= lambda!186058 lambda!185843))))

(declare-fun bs!1010442 () Bool)

(assert (= bs!1010442 (and d!1447409 d!1446907)))

(assert (=> bs!1010442 (= lambda!186058 lambda!185872)))

(declare-fun bs!1010443 () Bool)

(assert (= bs!1010443 (and d!1447409 d!1446771)))

(assert (=> bs!1010443 (= lambda!186058 lambda!185827)))

(declare-fun bs!1010444 () Bool)

(assert (= bs!1010444 (and d!1447409 d!1446883)))

(assert (=> bs!1010444 (= lambda!186058 lambda!185863)))

(declare-fun bs!1010445 () Bool)

(assert (= bs!1010445 (and d!1447409 d!1446813)))

(assert (=> bs!1010445 (not (= lambda!186058 lambda!185842))))

(declare-fun bs!1010446 () Bool)

(assert (= bs!1010446 (and d!1447409 d!1446879)))

(assert (=> bs!1010446 (= lambda!186058 lambda!185862)))

(declare-fun bs!1010447 () Bool)

(assert (= bs!1010447 (and d!1447409 d!1447075)))

(assert (=> bs!1010447 (= lambda!186058 lambda!185966)))

(declare-fun lt!1757505 () ListMap!3905)

(assert (=> d!1447409 (invariantList!1122 (toList!4644 lt!1757505))))

(declare-fun e!2867707 () ListMap!3905)

(assert (=> d!1447409 (= lt!1757505 e!2867707)))

(declare-fun c!787432 () Bool)

(assert (=> d!1447409 (= c!787432 ((_ is Cons!51069) (t!358187 (Cons!51069 lt!1756618 Nil!51069))))))

(assert (=> d!1447409 (forall!10590 (t!358187 (Cons!51069 lt!1756618 Nil!51069)) lambda!186058)))

(assert (=> d!1447409 (= (extractMap!1374 (t!358187 (Cons!51069 lt!1756618 Nil!51069))) lt!1757505)))

(declare-fun b!4597540 () Bool)

(assert (=> b!4597540 (= e!2867707 (addToMapMapFromBucket!812 (_2!29148 (h!57031 (t!358187 (Cons!51069 lt!1756618 Nil!51069)))) (extractMap!1374 (t!358187 (t!358187 (Cons!51069 lt!1756618 Nil!51069))))))))

(declare-fun b!4597541 () Bool)

(assert (=> b!4597541 (= e!2867707 (ListMap!3906 Nil!51068))))

(assert (= (and d!1447409 c!787432) b!4597540))

(assert (= (and d!1447409 (not c!787432)) b!4597541))

(declare-fun m!5423269 () Bool)

(assert (=> d!1447409 m!5423269))

(declare-fun m!5423271 () Bool)

(assert (=> d!1447409 m!5423271))

(declare-fun m!5423273 () Bool)

(assert (=> b!4597540 m!5423273))

(assert (=> b!4597540 m!5423273))

(declare-fun m!5423275 () Bool)

(assert (=> b!4597540 m!5423275))

(assert (=> b!4596491 d!1447409))

(declare-fun e!2867708 () Bool)

(declare-fun tp!1340390 () Bool)

(declare-fun b!4597542 () Bool)

(assert (=> b!4597542 (= e!2867708 (and tp_is_empty!28549 tp_is_empty!28551 tp!1340390))))

(assert (=> b!4596657 (= tp!1340381 e!2867708)))

(assert (= (and b!4596657 ((_ is Cons!51068) (_2!29148 (h!57031 (toList!4643 lm!1477))))) b!4597542))

(declare-fun b!4597543 () Bool)

(declare-fun e!2867709 () Bool)

(declare-fun tp!1340391 () Bool)

(declare-fun tp!1340392 () Bool)

(assert (=> b!4597543 (= e!2867709 (and tp!1340391 tp!1340392))))

(assert (=> b!4596657 (= tp!1340382 e!2867709)))

(assert (= (and b!4596657 ((_ is Cons!51069) (t!358187 (toList!4643 lm!1477)))) b!4597543))

(declare-fun tp!1340393 () Bool)

(declare-fun b!4597544 () Bool)

(declare-fun e!2867710 () Bool)

(assert (=> b!4597544 (= e!2867710 (and tp_is_empty!28549 tp_is_empty!28551 tp!1340393))))

(assert (=> b!4596662 (= tp!1340385 e!2867710)))

(assert (= (and b!4596662 ((_ is Cons!51068) (t!358186 (t!358186 newBucket!178)))) b!4597544))

(declare-fun b_lambda!169279 () Bool)

(assert (= b_lambda!169191 (or start!458528 b_lambda!169279)))

(declare-fun bs!1010448 () Bool)

(declare-fun d!1447411 () Bool)

(assert (= bs!1010448 (and d!1447411 start!458528)))

(assert (=> bs!1010448 (= (dynLambda!21392 lambda!185824 (h!57031 (t!358187 (toList!4643 lm!1477)))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))))))

(assert (=> bs!1010448 m!5422063))

(assert (=> b!4596675 d!1447411))

(declare-fun b_lambda!169281 () Bool)

(assert (= b_lambda!169229 (or d!1446895 b_lambda!169281)))

(declare-fun bs!1010449 () Bool)

(declare-fun d!1447413 () Bool)

(assert (= bs!1010449 (and d!1447413 d!1446895)))

(assert (=> bs!1010449 (= (dynLambda!21392 lambda!185868 (h!57031 (t!358187 (toList!4643 lm!1477)))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (t!358187 (toList!4643 lm!1477))))))))

(assert (=> bs!1010449 m!5422063))

(assert (=> b!4597323 d!1447413))

(declare-fun b_lambda!169283 () Bool)

(assert (= b_lambda!169205 (or d!1446883 b_lambda!169283)))

(declare-fun bs!1010450 () Bool)

(declare-fun d!1447415 () Bool)

(assert (= bs!1010450 (and d!1447415 d!1446883)))

(assert (=> bs!1010450 (= (dynLambda!21392 lambda!185863 (h!57031 lt!1756615)) (noDuplicateKeys!1314 (_2!29148 (h!57031 lt!1756615))))))

(assert (=> bs!1010450 m!5422009))

(assert (=> b!4597030 d!1447415))

(declare-fun b_lambda!169285 () Bool)

(assert (= b_lambda!169221 (or d!1446879 b_lambda!169285)))

(declare-fun bs!1010451 () Bool)

(declare-fun d!1447417 () Bool)

(assert (= bs!1010451 (and d!1447417 d!1446879)))

(assert (=> bs!1010451 (= (dynLambda!21392 lambda!185862 (h!57031 (toList!4643 (ListLongMap!3276 lt!1756615)))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 (ListLongMap!3276 lt!1756615))))))))

(declare-fun m!5423277 () Bool)

(assert (=> bs!1010451 m!5423277))

(assert (=> b!4597242 d!1447417))

(declare-fun b_lambda!169287 () Bool)

(assert (= b_lambda!169225 (or d!1446813 b_lambda!169287)))

(declare-fun bs!1010452 () Bool)

(declare-fun d!1447419 () Bool)

(assert (= bs!1010452 (and d!1447419 d!1446813)))

(assert (=> bs!1010452 (= (dynLambda!21392 lambda!185842 (h!57031 (toList!4643 lt!1756611))) (allKeysSameHash!1170 (_2!29148 (h!57031 (toList!4643 lt!1756611))) (_1!29148 (h!57031 (toList!4643 lt!1756611))) hashF!1107))))

(declare-fun m!5423279 () Bool)

(assert (=> bs!1010452 m!5423279))

(assert (=> b!4597304 d!1447419))

(declare-fun b_lambda!169289 () Bool)

(assert (= b_lambda!169215 (or d!1446907 b_lambda!169289)))

(declare-fun bs!1010453 () Bool)

(declare-fun d!1447421 () Bool)

(assert (= bs!1010453 (and d!1447421 d!1446907)))

(assert (=> bs!1010453 (= (dynLambda!21392 lambda!185872 (h!57031 (toList!4643 lm!1477))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lm!1477)))))))

(assert (=> bs!1010453 m!5421567))

(assert (=> b!4597192 d!1447421))

(declare-fun b_lambda!169291 () Bool)

(assert (= b_lambda!169231 (or start!458528 b_lambda!169291)))

(assert (=> d!1447265 d!1446919))

(declare-fun b_lambda!169293 () Bool)

(assert (= b_lambda!169207 (or d!1446893 b_lambda!169293)))

(declare-fun bs!1010454 () Bool)

(declare-fun d!1447423 () Bool)

(assert (= bs!1010454 (and d!1447423 d!1446893)))

(assert (=> bs!1010454 (= (dynLambda!21392 lambda!185867 (h!57031 (toList!4643 lm!1477))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lm!1477)))))))

(assert (=> bs!1010454 m!5421567))

(assert (=> b!4597038 d!1447423))

(declare-fun b_lambda!169295 () Bool)

(assert (= b_lambda!169201 (or d!1446897 b_lambda!169295)))

(declare-fun bs!1010455 () Bool)

(declare-fun d!1447425 () Bool)

(assert (= bs!1010455 (and d!1447425 d!1446897)))

(assert (=> bs!1010455 (= (dynLambda!21392 lambda!185869 (h!57031 (toList!4643 lt!1756611))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lt!1756611)))))))

(assert (=> bs!1010455 m!5421673))

(assert (=> b!4597024 d!1447425))

(declare-fun b_lambda!169297 () Bool)

(assert (= b_lambda!169247 (or d!1446771 b_lambda!169297)))

(declare-fun bs!1010456 () Bool)

(declare-fun d!1447427 () Bool)

(assert (= bs!1010456 (and d!1447427 d!1446771)))

(assert (=> bs!1010456 (= (dynLambda!21392 lambda!185827 (h!57031 (toList!4643 lm!1477))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (toList!4643 lm!1477)))))))

(assert (=> bs!1010456 m!5421567))

(assert (=> b!4597501 d!1447427))

(declare-fun b_lambda!169299 () Bool)

(assert (= b_lambda!169209 (or start!458528 b_lambda!169299)))

(declare-fun bs!1010457 () Bool)

(declare-fun d!1447429 () Bool)

(assert (= bs!1010457 (and d!1447429 start!458528)))

(assert (=> bs!1010457 (= (dynLambda!21392 lambda!185824 (h!57031 (t!358187 (toList!4643 lt!1756611)))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (t!358187 (toList!4643 lt!1756611))))))))

(declare-fun m!5423281 () Bool)

(assert (=> bs!1010457 m!5423281))

(assert (=> b!4597051 d!1447429))

(declare-fun b_lambda!169301 () Bool)

(assert (= b_lambda!169241 (or d!1446835 b_lambda!169301)))

(declare-fun bs!1010458 () Bool)

(declare-fun d!1447431 () Bool)

(assert (= bs!1010458 (and d!1447431 d!1446835)))

(assert (=> bs!1010458 (= (dynLambda!21392 lambda!185850 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (Cons!51069 (tuple2!51709 hash!344 (_2!29148 (h!57031 (toList!4643 lm!1477)))) Nil!51069)))))))

(assert (=> bs!1010458 m!5422195))

(assert (=> b!4597488 d!1447431))

(declare-fun b_lambda!169303 () Bool)

(assert (= b_lambda!169199 (or d!1446887 b_lambda!169303)))

(declare-fun bs!1010459 () Bool)

(declare-fun d!1447433 () Bool)

(assert (= bs!1010459 (and d!1447433 d!1446887)))

(assert (=> bs!1010459 (= (dynLambda!21393 lambda!185866 (h!57030 newBucket!178)) (= (hash!3203 hashF!1107 (_1!29147 (h!57030 newBucket!178))) hash!344))))

(declare-fun m!5423283 () Bool)

(assert (=> bs!1010459 m!5423283))

(assert (=> b!4597014 d!1447433))

(declare-fun b_lambda!169305 () Bool)

(assert (= b_lambda!169203 (or d!1446825 b_lambda!169305)))

(declare-fun bs!1010460 () Bool)

(declare-fun d!1447435 () Bool)

(assert (= bs!1010460 (and d!1447435 d!1446825)))

(assert (=> bs!1010460 (= (dynLambda!21392 lambda!185849 (h!57031 (Cons!51069 lt!1756618 Nil!51069))) (noDuplicateKeys!1314 (_2!29148 (h!57031 (Cons!51069 lt!1756618 Nil!51069)))))))

(assert (=> bs!1010460 m!5423263))

(assert (=> b!4597028 d!1447435))

(declare-fun b_lambda!169307 () Bool)

(assert (= b_lambda!169211 (or d!1446821 b_lambda!169307)))

(declare-fun bs!1010461 () Bool)

(declare-fun d!1447437 () Bool)

(assert (= bs!1010461 (and d!1447437 d!1446821)))

(assert (=> bs!1010461 (= (dynLambda!21392 lambda!185843 (h!57031 (toList!4643 lm!1477))) (allKeysSameHash!1170 (_2!29148 (h!57031 (toList!4643 lm!1477))) (_1!29148 (h!57031 (toList!4643 lm!1477))) hashF!1107))))

(declare-fun m!5423285 () Bool)

(assert (=> bs!1010461 m!5423285))

(assert (=> b!4597128 d!1447437))

(check-sat (not d!1447105) (not d!1447337) (not d!1447341) (not d!1447073) (not b!4596767) (not b_lambda!169185) (not bm!320839) (not b!4597021) (not b!4597210) (not b!4597540) (not b!4596747) (not b!4597125) (not d!1446961) (not d!1447259) (not b!4597029) (not b!4597307) (not b!4597303) (not b!4597268) (not b!4596976) (not b!4597507) (not bm!320838) (not bm!320835) (not b!4597129) (not b!4597209) (not b!4596971) (not bm!320806) (not d!1447275) (not b!4597083) (not bm!320785) (not b!4597065) (not d!1447183) (not b!4597351) (not bm!320836) (not d!1447267) (not d!1447027) (not b!4597508) (not b!4597039) (not d!1447083) (not b!4597205) (not bm!320781) (not b!4596697) (not d!1446963) (not b!4597271) (not b_lambda!169303) (not b!4597506) (not bm!320787) (not b!4597263) (not b!4597003) (not b_lambda!169301) (not b!4596964) (not b!4597275) (not d!1447069) (not b!4597023) (not b!4597243) (not d!1447097) (not b!4596954) (not b!4596723) (not d!1447021) (not b!4597165) (not b!4597266) (not b!4597036) (not b!4597000) (not b!4597492) (not b!4597067) (not b!4597305) (not bs!1010458) (not b!4597483) (not b!4596690) (not d!1447075) (not b!4597102) (not b!4597066) (not b!4597491) (not d!1447363) (not b!4597478) (not b_lambda!169299) (not b!4597245) (not bm!320788) (not d!1447217) (not d!1447091) (not d!1447333) (not d!1446937) (not b_lambda!169187) (not b!4597327) (not b!4597335) (not b!4597042) (not b!4597027) (not b_lambda!169183) (not b_lambda!169297) (not d!1446973) (not b!4597082) (not b!4597115) (not b!4597052) (not d!1447121) (not bm!320783) (not d!1447175) (not b!4596977) (not b!4597543) (not b!4596741) (not d!1446941) (not b!4597092) (not b!4597481) (not b!4597272) (not b!4597346) (not bs!1010459) (not bm!320813) (not b!4596676) (not d!1447349) (not bm!320840) (not bs!1010451) (not b!4597473) (not b!4597265) (not b!4597025) (not b!4596734) (not b!4597019) (not d!1447025) (not b!4597077) (not b_lambda!169281) (not b!4597072) (not b!4597133) (not b!4597347) (not bs!1010454) (not b!4597116) (not b!4596679) (not b!4597109) (not b!4597219) (not b!4597002) (not b!4596965) (not bs!1010449) (not d!1447101) (not b!4596970) (not d!1447051) (not b!4597544) (not b!4597264) (not b!4597132) (not b_lambda!169283) (not b!4597301) (not d!1447261) (not b!4596961) (not b!4597033) (not b!4597043) (not b!4596724) (not d!1447233) (not b!4596968) (not bm!320842) (not b!4597070) (not d!1447055) (not d!1447043) (not d!1447409) (not b!4597041) (not b!4597330) (not b!4597001) (not bm!320841) (not b!4597317) (not b!4596963) (not bs!1010453) (not b!4597211) (not b!4597207) (not bm!320786) (not b!4597114) (not b!4596956) (not d!1447017) (not b!4597328) (not b_lambda!169287) (not d!1446943) (not b!4597326) (not b!4597138) (not b!4596766) (not b!4597015) (not b_lambda!169307) (not d!1446959) (not b!4597095) (not b!4596979) (not b!4597079) (not d!1447331) (not b!4596768) (not b!4597348) (not b_lambda!169305) (not d!1447131) (not b!4597336) (not bm!320843) (not bm!320780) (not b!4597489) (not bm!320807) (not b!4597158) (not b!4597060) (not b!4596696) (not b!4597542) (not b!4596722) (not d!1447059) (not d!1447095) (not bm!320797) (not b!4597007) (not b!4597479) (not b!4596957) (not bs!1010448) (not d!1447093) (not d!1447033) (not b!4597117) (not d!1447015) (not b!4597063) (not b!4596677) (not d!1446965) (not b!4597509) (not d!1447213) (not bs!1010457) (not b!4597267) (not d!1447257) (not d!1447067) (not bm!320789) (not d!1447061) (not b!4597502) (not b!4597081) (not b!4597040) (not b!4597341) (not b!4596955) (not d!1447199) (not bm!320742) (not d!1447153) (not b!4597031) (not bs!1010456) (not bm!320784) (not bm!320778) (not bm!320837) (not b!4597334) (not d!1447063) (not b!4597017) (not b!4596974) (not bs!1010452) (not d!1446969) (not b!4596966) (not d!1447029) (not d!1447247) (not d!1447109) (not b!4597349) (not b!4597332) (not b!4597350) (not b!4597482) (not b!4597471) (not bs!1010455) (not b!4597477) (not b_lambda!169293) (not b!4597195) (not b_lambda!169285) (not b_lambda!169279) (not b!4597080) (not b!4597298) (not d!1447161) (not b!4596975) (not b_lambda!169295) (not b!4597485) (not b!4597337) (not b!4597108) (not b!4597269) (not b!4597016) (not b!4597123) (not d!1447133) (not b!4597206) (not d!1447089) (not b!4597155) (not d!1447151) (not b!4597274) (not bs!1010461) (not d!1447339) (not bm!320782) (not d!1447137) (not b!4597134) (not bm!320779) (not bm!320802) (not b_lambda!169291) tp_is_empty!28551 (not b!4597494) (not b!4597324) (not b!4597020) (not b!4597110) (not b!4597131) (not d!1447045) (not d!1447129) (not d!1447019) (not b!4597273) (not d!1447049) (not d!1447085) (not b!4597345) (not bs!1010460) (not b!4597193) (not b!4597153) (not b!4596798) (not b!4597208) (not b!4597049) (not b!4597470) (not b_lambda!169289) (not d!1447031) (not bs!1010450) (not b!4596972) (not d!1447203) tp_is_empty!28549 (not bm!320808))
(check-sat)
