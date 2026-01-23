; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496194 () Bool)

(assert start!496194)

(declare-fun b!4804168 () Bool)

(declare-fun res!2043703 () Bool)

(declare-fun e!3000213 () Bool)

(assert (=> b!4804168 (=> res!2043703 e!3000213)))

(declare-datatypes ((K!15924 0))(
  ( (K!15925 (val!21045 Int)) )
))
(declare-datatypes ((V!16170 0))(
  ( (V!16171 (val!21046 Int)) )
))
(declare-datatypes ((tuple2!57064 0))(
  ( (tuple2!57065 (_1!31826 K!15924) (_2!31826 V!16170)) )
))
(declare-datatypes ((List!54480 0))(
  ( (Nil!54356) (Cons!54356 (h!60788 tuple2!57064) (t!361930 List!54480)) )
))
(declare-datatypes ((tuple2!57066 0))(
  ( (tuple2!57067 (_1!31827 (_ BitVec 64)) (_2!31827 List!54480)) )
))
(declare-datatypes ((List!54481 0))(
  ( (Nil!54357) (Cons!54357 (h!60789 tuple2!57066) (t!361931 List!54481)) )
))
(declare-datatypes ((ListLongMap!5449 0))(
  ( (ListLongMap!5450 (toList!7027 List!54481)) )
))
(declare-fun lm!2473 () ListLongMap!5449)

(declare-fun key!5896 () K!15924)

(declare-fun containsKey!4064 (List!54480 K!15924) Bool)

(assert (=> b!4804168 (= res!2043703 (containsKey!4064 (_2!31827 (h!60789 (toList!7027 lm!2473))) key!5896))))

(declare-fun b!4804169 () Bool)

(declare-fun e!3000214 () Bool)

(assert (=> b!4804169 (= e!3000213 e!3000214)))

(declare-fun res!2043705 () Bool)

(assert (=> b!4804169 (=> res!2043705 e!3000214)))

(declare-fun noDuplicateKeys!2372 (List!54480) Bool)

(assert (=> b!4804169 (= res!2043705 (not (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-datatypes ((ListMap!6499 0))(
  ( (ListMap!6500 (toList!7028 List!54480)) )
))
(declare-fun lt!1958559 () ListMap!6499)

(declare-fun extractMap!2501 (List!54481) ListMap!6499)

(assert (=> b!4804169 (= lt!1958559 (extractMap!2501 (t!361931 (toList!7027 lm!2473))))))

(declare-fun lt!1958560 () ListMap!6499)

(declare-fun value!3111 () V!16170)

(declare-fun apply!13052 (ListMap!6499 K!15924) V!16170)

(assert (=> b!4804169 (= (apply!13052 lt!1958560 key!5896) value!3111)))

(declare-datatypes ((Hashable!6974 0))(
  ( (HashableExt!6973 (__x!32997 Int)) )
))
(declare-fun hashF!1559 () Hashable!6974)

(declare-fun lt!1958557 () ListLongMap!5449)

(declare-datatypes ((Unit!141007 0))(
  ( (Unit!141008) )
))
(declare-fun lt!1958562 () Unit!141007)

(declare-fun lemmaExtractMapPreservesMapping!46 (ListLongMap!5449 K!15924 V!16170 Hashable!6974) Unit!141007)

(assert (=> b!4804169 (= lt!1958562 (lemmaExtractMapPreservesMapping!46 lt!1958557 key!5896 value!3111 hashF!1559))))

(declare-fun contains!18018 (ListMap!6499 K!15924) Bool)

(assert (=> b!4804169 (contains!18018 lt!1958560 key!5896)))

(assert (=> b!4804169 (= lt!1958560 (extractMap!2501 (toList!7027 lt!1958557)))))

(declare-fun lt!1958556 () Unit!141007)

(declare-fun lemmaListContainsThenExtractedMapContains!724 (ListLongMap!5449 K!15924 Hashable!6974) Unit!141007)

(assert (=> b!4804169 (= lt!1958556 (lemmaListContainsThenExtractedMapContains!724 lt!1958557 key!5896 hashF!1559))))

(declare-fun lt!1958561 () Unit!141007)

(declare-fun e!3000217 () Unit!141007)

(assert (=> b!4804169 (= lt!1958561 e!3000217)))

(declare-fun c!818931 () Bool)

(declare-fun lt!1958563 () (_ BitVec 64))

(declare-fun contains!18019 (ListLongMap!5449 (_ BitVec 64)) Bool)

(assert (=> b!4804169 (= c!818931 (not (contains!18019 lt!1958557 lt!1958563)))))

(declare-fun tail!9348 (ListLongMap!5449) ListLongMap!5449)

(assert (=> b!4804169 (= lt!1958557 (tail!9348 lm!2473))))

(declare-fun b!4804170 () Bool)

(declare-fun e!3000218 () Bool)

(assert (=> b!4804170 (= e!3000218 (= (apply!13052 lt!1958559 key!5896) value!3111))))

(declare-fun e!3000215 () Bool)

(declare-fun b!4804171 () Bool)

(declare-datatypes ((Option!13214 0))(
  ( (None!13213) (Some!13213 (v!48550 tuple2!57064)) )
))
(declare-fun isDefined!10355 (Option!13214) Bool)

(declare-fun getPair!946 (List!54480 K!15924) Option!13214)

(declare-fun apply!13053 (ListLongMap!5449 (_ BitVec 64)) List!54480)

(assert (=> b!4804171 (= e!3000215 (isDefined!10355 (getPair!946 (apply!13053 lm!2473 lt!1958563) key!5896)))))

(declare-fun b!4804172 () Bool)

(declare-fun lt!1958564 () Unit!141007)

(assert (=> b!4804172 (= e!3000217 lt!1958564)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!72 (ListLongMap!5449 K!15924 Hashable!6974) Unit!141007)

(assert (=> b!4804172 (= lt!1958564 (lemmaHashNotInLongMapThenNotInGenerated!72 lt!1958557 key!5896 hashF!1559))))

(assert (=> b!4804172 (not (contains!18018 (extractMap!2501 (toList!7027 lt!1958557)) key!5896))))

(declare-fun b!4804173 () Bool)

(declare-fun res!2043701 () Bool)

(assert (=> b!4804173 (=> res!2043701 e!3000214)))

(declare-fun addToMapMapFromBucket!1741 (List!54480 ListMap!6499) ListMap!6499)

(assert (=> b!4804173 (= res!2043701 (not (contains!18018 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559) key!5896)))))

(declare-fun b!4804174 () Bool)

(declare-fun e!3000212 () Bool)

(assert (=> b!4804174 (= e!3000212 (not e!3000213))))

(declare-fun res!2043706 () Bool)

(assert (=> b!4804174 (=> res!2043706 e!3000213)))

(declare-fun getValue!162 (List!54481 K!15924) V!16170)

(assert (=> b!4804174 (= res!2043706 (not (= (getValue!162 (toList!7027 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!616 (List!54481 K!15924) Bool)

(assert (=> b!4804174 (containsKeyBiggerList!616 (toList!7027 lm!2473) key!5896)))

(declare-fun lt!1958558 () Unit!141007)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!356 (ListLongMap!5449 K!15924 Hashable!6974) Unit!141007)

(assert (=> b!4804174 (= lt!1958558 (lemmaInLongMapThenContainsKeyBiggerList!356 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4804174 e!3000215))

(declare-fun res!2043709 () Bool)

(assert (=> b!4804174 (=> (not res!2043709) (not e!3000215))))

(assert (=> b!4804174 (= res!2043709 (contains!18019 lm!2473 lt!1958563))))

(declare-fun hash!5039 (Hashable!6974 K!15924) (_ BitVec 64))

(assert (=> b!4804174 (= lt!1958563 (hash!5039 hashF!1559 key!5896))))

(declare-fun lt!1958565 () Unit!141007)

(declare-fun lemmaInGenericMapThenInLongMap!378 (ListLongMap!5449 K!15924 Hashable!6974) Unit!141007)

(assert (=> b!4804174 (= lt!1958565 (lemmaInGenericMapThenInLongMap!378 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4804175 () Bool)

(assert (=> b!4804175 (= e!3000214 e!3000218)))

(declare-fun res!2043710 () Bool)

(assert (=> b!4804175 (=> (not res!2043710) (not e!3000218))))

(assert (=> b!4804175 (= res!2043710 (contains!18018 lt!1958559 key!5896))))

(declare-fun b!4804176 () Bool)

(declare-fun Unit!141009 () Unit!141007)

(assert (=> b!4804176 (= e!3000217 Unit!141009)))

(declare-fun b!4804177 () Bool)

(declare-fun res!2043704 () Bool)

(assert (=> b!4804177 (=> (not res!2043704) (not e!3000212))))

(assert (=> b!4804177 (= res!2043704 (contains!18018 (extractMap!2501 (toList!7027 lm!2473)) key!5896))))

(declare-fun b!4804178 () Bool)

(declare-fun e!3000216 () Bool)

(declare-fun tp!1358500 () Bool)

(assert (=> b!4804178 (= e!3000216 tp!1358500)))

(declare-fun res!2043702 () Bool)

(assert (=> start!496194 (=> (not res!2043702) (not e!3000212))))

(declare-fun lambda!233061 () Int)

(declare-fun forall!12355 (List!54481 Int) Bool)

(assert (=> start!496194 (= res!2043702 (forall!12355 (toList!7027 lm!2473) lambda!233061))))

(assert (=> start!496194 e!3000212))

(declare-fun inv!69950 (ListLongMap!5449) Bool)

(assert (=> start!496194 (and (inv!69950 lm!2473) e!3000216)))

(assert (=> start!496194 true))

(declare-fun tp_is_empty!33757 () Bool)

(assert (=> start!496194 tp_is_empty!33757))

(declare-fun tp_is_empty!33759 () Bool)

(assert (=> start!496194 tp_is_empty!33759))

(declare-fun b!4804179 () Bool)

(declare-fun res!2043707 () Bool)

(assert (=> b!4804179 (=> (not res!2043707) (not e!3000212))))

(declare-fun allKeysSameHashInMap!2379 (ListLongMap!5449 Hashable!6974) Bool)

(assert (=> b!4804179 (= res!2043707 (allKeysSameHashInMap!2379 lm!2473 hashF!1559))))

(declare-fun b!4804180 () Bool)

(declare-fun res!2043708 () Bool)

(assert (=> b!4804180 (=> res!2043708 e!3000213)))

(get-info :version)

(assert (=> b!4804180 (= res!2043708 (not ((_ is Cons!54357) (toList!7027 lm!2473))))))

(assert (= (and start!496194 res!2043702) b!4804179))

(assert (= (and b!4804179 res!2043707) b!4804177))

(assert (= (and b!4804177 res!2043704) b!4804174))

(assert (= (and b!4804174 res!2043709) b!4804171))

(assert (= (and b!4804174 (not res!2043706)) b!4804180))

(assert (= (and b!4804180 (not res!2043708)) b!4804168))

(assert (= (and b!4804168 (not res!2043703)) b!4804169))

(assert (= (and b!4804169 c!818931) b!4804172))

(assert (= (and b!4804169 (not c!818931)) b!4804176))

(assert (= (and b!4804169 (not res!2043705)) b!4804173))

(assert (= (and b!4804173 (not res!2043701)) b!4804175))

(assert (= (and b!4804175 res!2043710) b!4804170))

(assert (= start!496194 b!4804178))

(declare-fun m!5789532 () Bool)

(assert (=> b!4804168 m!5789532))

(declare-fun m!5789534 () Bool)

(assert (=> b!4804177 m!5789534))

(assert (=> b!4804177 m!5789534))

(declare-fun m!5789536 () Bool)

(assert (=> b!4804177 m!5789536))

(declare-fun m!5789538 () Bool)

(assert (=> b!4804169 m!5789538))

(declare-fun m!5789540 () Bool)

(assert (=> b!4804169 m!5789540))

(declare-fun m!5789542 () Bool)

(assert (=> b!4804169 m!5789542))

(declare-fun m!5789544 () Bool)

(assert (=> b!4804169 m!5789544))

(declare-fun m!5789546 () Bool)

(assert (=> b!4804169 m!5789546))

(declare-fun m!5789548 () Bool)

(assert (=> b!4804169 m!5789548))

(declare-fun m!5789550 () Bool)

(assert (=> b!4804169 m!5789550))

(declare-fun m!5789552 () Bool)

(assert (=> b!4804169 m!5789552))

(declare-fun m!5789554 () Bool)

(assert (=> b!4804169 m!5789554))

(declare-fun m!5789556 () Bool)

(assert (=> b!4804174 m!5789556))

(declare-fun m!5789558 () Bool)

(assert (=> b!4804174 m!5789558))

(declare-fun m!5789560 () Bool)

(assert (=> b!4804174 m!5789560))

(declare-fun m!5789562 () Bool)

(assert (=> b!4804174 m!5789562))

(declare-fun m!5789564 () Bool)

(assert (=> b!4804174 m!5789564))

(declare-fun m!5789566 () Bool)

(assert (=> b!4804174 m!5789566))

(declare-fun m!5789568 () Bool)

(assert (=> b!4804175 m!5789568))

(declare-fun m!5789570 () Bool)

(assert (=> b!4804170 m!5789570))

(declare-fun m!5789572 () Bool)

(assert (=> b!4804172 m!5789572))

(assert (=> b!4804172 m!5789542))

(assert (=> b!4804172 m!5789542))

(declare-fun m!5789574 () Bool)

(assert (=> b!4804172 m!5789574))

(declare-fun m!5789576 () Bool)

(assert (=> b!4804179 m!5789576))

(declare-fun m!5789578 () Bool)

(assert (=> b!4804173 m!5789578))

(assert (=> b!4804173 m!5789578))

(declare-fun m!5789580 () Bool)

(assert (=> b!4804173 m!5789580))

(declare-fun m!5789582 () Bool)

(assert (=> b!4804171 m!5789582))

(assert (=> b!4804171 m!5789582))

(declare-fun m!5789584 () Bool)

(assert (=> b!4804171 m!5789584))

(assert (=> b!4804171 m!5789584))

(declare-fun m!5789586 () Bool)

(assert (=> b!4804171 m!5789586))

(declare-fun m!5789588 () Bool)

(assert (=> start!496194 m!5789588))

(declare-fun m!5789590 () Bool)

(assert (=> start!496194 m!5789590))

(check-sat (not b!4804169) (not b!4804171) (not b!4804178) (not b!4804172) (not b!4804173) (not b!4804170) (not b!4804174) (not b!4804168) tp_is_empty!33757 (not b!4804177) (not b!4804175) tp_is_empty!33759 (not start!496194) (not b!4804179))
(check-sat)
(get-model)

(declare-fun b!4804243 () Bool)

(declare-fun e!3000263 () Unit!141007)

(declare-fun Unit!141017 () Unit!141007)

(assert (=> b!4804243 (= e!3000263 Unit!141017)))

(declare-fun b!4804244 () Bool)

(declare-fun e!3000259 () Bool)

(declare-datatypes ((List!54483 0))(
  ( (Nil!54359) (Cons!54359 (h!60791 K!15924) (t!361933 List!54483)) )
))
(declare-fun contains!18022 (List!54483 K!15924) Bool)

(declare-fun keys!19883 (ListMap!6499) List!54483)

(assert (=> b!4804244 (= e!3000259 (not (contains!18022 (keys!19883 lt!1958559) key!5896)))))

(declare-fun b!4804245 () Bool)

(declare-fun e!3000258 () List!54483)

(assert (=> b!4804245 (= e!3000258 (keys!19883 lt!1958559))))

(declare-fun d!1538822 () Bool)

(declare-fun e!3000260 () Bool)

(assert (=> d!1538822 e!3000260))

(declare-fun res!2043729 () Bool)

(assert (=> d!1538822 (=> res!2043729 e!3000260)))

(assert (=> d!1538822 (= res!2043729 e!3000259)))

(declare-fun res!2043730 () Bool)

(assert (=> d!1538822 (=> (not res!2043730) (not e!3000259))))

(declare-fun lt!1958630 () Bool)

(assert (=> d!1538822 (= res!2043730 (not lt!1958630))))

(declare-fun lt!1958628 () Bool)

(assert (=> d!1538822 (= lt!1958630 lt!1958628)))

(declare-fun lt!1958625 () Unit!141007)

(declare-fun e!3000261 () Unit!141007)

(assert (=> d!1538822 (= lt!1958625 e!3000261)))

(declare-fun c!818955 () Bool)

(assert (=> d!1538822 (= c!818955 lt!1958628)))

(declare-fun containsKey!4067 (List!54480 K!15924) Bool)

(assert (=> d!1538822 (= lt!1958628 (containsKey!4067 (toList!7028 lt!1958559) key!5896))))

(assert (=> d!1538822 (= (contains!18018 lt!1958559 key!5896) lt!1958630)))

(declare-fun b!4804246 () Bool)

(declare-fun e!3000262 () Bool)

(assert (=> b!4804246 (= e!3000262 (contains!18022 (keys!19883 lt!1958559) key!5896))))

(declare-fun bm!335501 () Bool)

(declare-fun call!335506 () Bool)

(assert (=> bm!335501 (= call!335506 (contains!18022 e!3000258 key!5896))))

(declare-fun c!818954 () Bool)

(assert (=> bm!335501 (= c!818954 c!818955)))

(declare-fun b!4804247 () Bool)

(assert (=> b!4804247 (= e!3000260 e!3000262)))

(declare-fun res!2043731 () Bool)

(assert (=> b!4804247 (=> (not res!2043731) (not e!3000262))))

(declare-datatypes ((Option!13217 0))(
  ( (None!13216) (Some!13216 (v!48553 V!16170)) )
))
(declare-fun isDefined!10358 (Option!13217) Bool)

(declare-fun getValueByKey!2418 (List!54480 K!15924) Option!13217)

(assert (=> b!4804247 (= res!2043731 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958559) key!5896)))))

(declare-fun b!4804248 () Bool)

(assert (=> b!4804248 (= e!3000261 e!3000263)))

(declare-fun c!818953 () Bool)

(assert (=> b!4804248 (= c!818953 call!335506)))

(declare-fun b!4804249 () Bool)

(declare-fun getKeysList!1110 (List!54480) List!54483)

(assert (=> b!4804249 (= e!3000258 (getKeysList!1110 (toList!7028 lt!1958559)))))

(declare-fun b!4804250 () Bool)

(declare-fun lt!1958631 () Unit!141007)

(assert (=> b!4804250 (= e!3000261 lt!1958631)))

(declare-fun lt!1958626 () Unit!141007)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (List!54480 K!15924) Unit!141007)

(assert (=> b!4804250 (= lt!1958626 (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 lt!1958559) key!5896))))

(assert (=> b!4804250 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958559) key!5896))))

(declare-fun lt!1958629 () Unit!141007)

(assert (=> b!4804250 (= lt!1958629 lt!1958626)))

(declare-fun lemmaInListThenGetKeysListContains!1105 (List!54480 K!15924) Unit!141007)

(assert (=> b!4804250 (= lt!1958631 (lemmaInListThenGetKeysListContains!1105 (toList!7028 lt!1958559) key!5896))))

(assert (=> b!4804250 call!335506))

(declare-fun b!4804251 () Bool)

(assert (=> b!4804251 false))

(declare-fun lt!1958624 () Unit!141007)

(declare-fun lt!1958627 () Unit!141007)

(assert (=> b!4804251 (= lt!1958624 lt!1958627)))

(assert (=> b!4804251 (containsKey!4067 (toList!7028 lt!1958559) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1110 (List!54480 K!15924) Unit!141007)

(assert (=> b!4804251 (= lt!1958627 (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 lt!1958559) key!5896))))

(declare-fun Unit!141018 () Unit!141007)

(assert (=> b!4804251 (= e!3000263 Unit!141018)))

(assert (= (and d!1538822 c!818955) b!4804250))

(assert (= (and d!1538822 (not c!818955)) b!4804248))

(assert (= (and b!4804248 c!818953) b!4804251))

(assert (= (and b!4804248 (not c!818953)) b!4804243))

(assert (= (or b!4804250 b!4804248) bm!335501))

(assert (= (and bm!335501 c!818954) b!4804249))

(assert (= (and bm!335501 (not c!818954)) b!4804245))

(assert (= (and d!1538822 res!2043730) b!4804244))

(assert (= (and d!1538822 (not res!2043729)) b!4804247))

(assert (= (and b!4804247 res!2043731) b!4804246))

(declare-fun m!5789640 () Bool)

(assert (=> b!4804245 m!5789640))

(declare-fun m!5789642 () Bool)

(assert (=> b!4804247 m!5789642))

(assert (=> b!4804247 m!5789642))

(declare-fun m!5789644 () Bool)

(assert (=> b!4804247 m!5789644))

(assert (=> b!4804246 m!5789640))

(assert (=> b!4804246 m!5789640))

(declare-fun m!5789646 () Bool)

(assert (=> b!4804246 m!5789646))

(assert (=> b!4804244 m!5789640))

(assert (=> b!4804244 m!5789640))

(assert (=> b!4804244 m!5789646))

(declare-fun m!5789648 () Bool)

(assert (=> bm!335501 m!5789648))

(declare-fun m!5789650 () Bool)

(assert (=> b!4804250 m!5789650))

(assert (=> b!4804250 m!5789642))

(assert (=> b!4804250 m!5789642))

(assert (=> b!4804250 m!5789644))

(declare-fun m!5789652 () Bool)

(assert (=> b!4804250 m!5789652))

(declare-fun m!5789654 () Bool)

(assert (=> b!4804251 m!5789654))

(declare-fun m!5789656 () Bool)

(assert (=> b!4804251 m!5789656))

(declare-fun m!5789658 () Bool)

(assert (=> b!4804249 m!5789658))

(assert (=> d!1538822 m!5789654))

(assert (=> b!4804175 d!1538822))

(declare-fun b!4804261 () Bool)

(declare-fun e!3000278 () Unit!141007)

(declare-fun Unit!141020 () Unit!141007)

(assert (=> b!4804261 (= e!3000278 Unit!141020)))

(declare-fun b!4804262 () Bool)

(declare-fun e!3000274 () Bool)

(assert (=> b!4804262 (= e!3000274 (not (contains!18022 (keys!19883 (extractMap!2501 (toList!7027 lm!2473))) key!5896)))))

(declare-fun b!4804263 () Bool)

(declare-fun e!3000273 () List!54483)

(assert (=> b!4804263 (= e!3000273 (keys!19883 (extractMap!2501 (toList!7027 lm!2473))))))

(declare-fun d!1538836 () Bool)

(declare-fun e!3000275 () Bool)

(assert (=> d!1538836 e!3000275))

(declare-fun res!2043741 () Bool)

(assert (=> d!1538836 (=> res!2043741 e!3000275)))

(assert (=> d!1538836 (= res!2043741 e!3000274)))

(declare-fun res!2043742 () Bool)

(assert (=> d!1538836 (=> (not res!2043742) (not e!3000274))))

(declare-fun lt!1958638 () Bool)

(assert (=> d!1538836 (= res!2043742 (not lt!1958638))))

(declare-fun lt!1958636 () Bool)

(assert (=> d!1538836 (= lt!1958638 lt!1958636)))

(declare-fun lt!1958633 () Unit!141007)

(declare-fun e!3000276 () Unit!141007)

(assert (=> d!1538836 (= lt!1958633 e!3000276)))

(declare-fun c!818958 () Bool)

(assert (=> d!1538836 (= c!818958 lt!1958636)))

(assert (=> d!1538836 (= lt!1958636 (containsKey!4067 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(assert (=> d!1538836 (= (contains!18018 (extractMap!2501 (toList!7027 lm!2473)) key!5896) lt!1958638)))

(declare-fun b!4804264 () Bool)

(declare-fun e!3000277 () Bool)

(assert (=> b!4804264 (= e!3000277 (contains!18022 (keys!19883 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(declare-fun bm!335502 () Bool)

(declare-fun call!335507 () Bool)

(assert (=> bm!335502 (= call!335507 (contains!18022 e!3000273 key!5896))))

(declare-fun c!818957 () Bool)

(assert (=> bm!335502 (= c!818957 c!818958)))

(declare-fun b!4804265 () Bool)

(assert (=> b!4804265 (= e!3000275 e!3000277)))

(declare-fun res!2043743 () Bool)

(assert (=> b!4804265 (=> (not res!2043743) (not e!3000277))))

(assert (=> b!4804265 (= res!2043743 (isDefined!10358 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896)))))

(declare-fun b!4804266 () Bool)

(assert (=> b!4804266 (= e!3000276 e!3000278)))

(declare-fun c!818956 () Bool)

(assert (=> b!4804266 (= c!818956 call!335507)))

(declare-fun b!4804267 () Bool)

(assert (=> b!4804267 (= e!3000273 (getKeysList!1110 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))))

(declare-fun b!4804268 () Bool)

(declare-fun lt!1958639 () Unit!141007)

(assert (=> b!4804268 (= e!3000276 lt!1958639)))

(declare-fun lt!1958634 () Unit!141007)

(assert (=> b!4804268 (= lt!1958634 (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(assert (=> b!4804268 (isDefined!10358 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(declare-fun lt!1958637 () Unit!141007)

(assert (=> b!4804268 (= lt!1958637 lt!1958634)))

(assert (=> b!4804268 (= lt!1958639 (lemmaInListThenGetKeysListContains!1105 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(assert (=> b!4804268 call!335507))

(declare-fun b!4804269 () Bool)

(assert (=> b!4804269 false))

(declare-fun lt!1958632 () Unit!141007)

(declare-fun lt!1958635 () Unit!141007)

(assert (=> b!4804269 (= lt!1958632 lt!1958635)))

(assert (=> b!4804269 (containsKey!4067 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896)))

(assert (=> b!4804269 (= lt!1958635 (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(declare-fun Unit!141022 () Unit!141007)

(assert (=> b!4804269 (= e!3000278 Unit!141022)))

(assert (= (and d!1538836 c!818958) b!4804268))

(assert (= (and d!1538836 (not c!818958)) b!4804266))

(assert (= (and b!4804266 c!818956) b!4804269))

(assert (= (and b!4804266 (not c!818956)) b!4804261))

(assert (= (or b!4804268 b!4804266) bm!335502))

(assert (= (and bm!335502 c!818957) b!4804267))

(assert (= (and bm!335502 (not c!818957)) b!4804263))

(assert (= (and d!1538836 res!2043742) b!4804262))

(assert (= (and d!1538836 (not res!2043741)) b!4804265))

(assert (= (and b!4804265 res!2043743) b!4804264))

(assert (=> b!4804263 m!5789534))

(declare-fun m!5789660 () Bool)

(assert (=> b!4804263 m!5789660))

(declare-fun m!5789662 () Bool)

(assert (=> b!4804265 m!5789662))

(assert (=> b!4804265 m!5789662))

(declare-fun m!5789664 () Bool)

(assert (=> b!4804265 m!5789664))

(assert (=> b!4804264 m!5789534))

(assert (=> b!4804264 m!5789660))

(assert (=> b!4804264 m!5789660))

(declare-fun m!5789666 () Bool)

(assert (=> b!4804264 m!5789666))

(assert (=> b!4804262 m!5789534))

(assert (=> b!4804262 m!5789660))

(assert (=> b!4804262 m!5789660))

(assert (=> b!4804262 m!5789666))

(declare-fun m!5789668 () Bool)

(assert (=> bm!335502 m!5789668))

(declare-fun m!5789670 () Bool)

(assert (=> b!4804268 m!5789670))

(assert (=> b!4804268 m!5789662))

(assert (=> b!4804268 m!5789662))

(assert (=> b!4804268 m!5789664))

(declare-fun m!5789676 () Bool)

(assert (=> b!4804268 m!5789676))

(declare-fun m!5789678 () Bool)

(assert (=> b!4804269 m!5789678))

(declare-fun m!5789680 () Bool)

(assert (=> b!4804269 m!5789680))

(declare-fun m!5789682 () Bool)

(assert (=> b!4804267 m!5789682))

(assert (=> d!1538836 m!5789678))

(assert (=> b!4804177 d!1538836))

(declare-fun bs!1158700 () Bool)

(declare-fun d!1538840 () Bool)

(assert (= bs!1158700 (and d!1538840 start!496194)))

(declare-fun lambda!233080 () Int)

(assert (=> bs!1158700 (= lambda!233080 lambda!233061)))

(declare-fun lt!1958668 () ListMap!6499)

(declare-fun invariantList!1764 (List!54480) Bool)

(assert (=> d!1538840 (invariantList!1764 (toList!7028 lt!1958668))))

(declare-fun e!3000330 () ListMap!6499)

(assert (=> d!1538840 (= lt!1958668 e!3000330)))

(declare-fun c!818977 () Bool)

(assert (=> d!1538840 (= c!818977 ((_ is Cons!54357) (toList!7027 lm!2473)))))

(assert (=> d!1538840 (forall!12355 (toList!7027 lm!2473) lambda!233080)))

(assert (=> d!1538840 (= (extractMap!2501 (toList!7027 lm!2473)) lt!1958668)))

(declare-fun b!4804342 () Bool)

(assert (=> b!4804342 (= e!3000330 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))))))

(declare-fun b!4804343 () Bool)

(assert (=> b!4804343 (= e!3000330 (ListMap!6500 Nil!54356))))

(assert (= (and d!1538840 c!818977) b!4804342))

(assert (= (and d!1538840 (not c!818977)) b!4804343))

(declare-fun m!5789772 () Bool)

(assert (=> d!1538840 m!5789772))

(declare-fun m!5789776 () Bool)

(assert (=> d!1538840 m!5789776))

(assert (=> b!4804342 m!5789552))

(assert (=> b!4804342 m!5789552))

(declare-fun m!5789778 () Bool)

(assert (=> b!4804342 m!5789778))

(assert (=> b!4804177 d!1538840))

(declare-fun b!4804353 () Bool)

(declare-fun e!3000342 () Unit!141007)

(declare-fun Unit!141024 () Unit!141007)

(assert (=> b!4804353 (= e!3000342 Unit!141024)))

(declare-fun e!3000338 () Bool)

(declare-fun b!4804354 () Bool)

(assert (=> b!4804354 (= e!3000338 (not (contains!18022 (keys!19883 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896)))))

(declare-fun b!4804355 () Bool)

(declare-fun e!3000337 () List!54483)

(assert (=> b!4804355 (= e!3000337 (keys!19883 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))))

(declare-fun d!1538866 () Bool)

(declare-fun e!3000339 () Bool)

(assert (=> d!1538866 e!3000339))

(declare-fun res!2043783 () Bool)

(assert (=> d!1538866 (=> res!2043783 e!3000339)))

(assert (=> d!1538866 (= res!2043783 e!3000338)))

(declare-fun res!2043784 () Bool)

(assert (=> d!1538866 (=> (not res!2043784) (not e!3000338))))

(declare-fun lt!1958683 () Bool)

(assert (=> d!1538866 (= res!2043784 (not lt!1958683))))

(declare-fun lt!1958681 () Bool)

(assert (=> d!1538866 (= lt!1958683 lt!1958681)))

(declare-fun lt!1958678 () Unit!141007)

(declare-fun e!3000340 () Unit!141007)

(assert (=> d!1538866 (= lt!1958678 e!3000340)))

(declare-fun c!818983 () Bool)

(assert (=> d!1538866 (= c!818983 lt!1958681)))

(assert (=> d!1538866 (= lt!1958681 (containsKey!4067 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(assert (=> d!1538866 (= (contains!18018 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559) key!5896) lt!1958683)))

(declare-fun e!3000341 () Bool)

(declare-fun b!4804356 () Bool)

(assert (=> b!4804356 (= e!3000341 (contains!18022 (keys!19883 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(declare-fun bm!335506 () Bool)

(declare-fun call!335511 () Bool)

(assert (=> bm!335506 (= call!335511 (contains!18022 e!3000337 key!5896))))

(declare-fun c!818982 () Bool)

(assert (=> bm!335506 (= c!818982 c!818983)))

(declare-fun b!4804357 () Bool)

(assert (=> b!4804357 (= e!3000339 e!3000341)))

(declare-fun res!2043785 () Bool)

(assert (=> b!4804357 (=> (not res!2043785) (not e!3000341))))

(assert (=> b!4804357 (= res!2043785 (isDefined!10358 (getValueByKey!2418 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896)))))

(declare-fun b!4804358 () Bool)

(assert (=> b!4804358 (= e!3000340 e!3000342)))

(declare-fun c!818981 () Bool)

(assert (=> b!4804358 (= c!818981 call!335511)))

(declare-fun b!4804359 () Bool)

(assert (=> b!4804359 (= e!3000337 (getKeysList!1110 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))

(declare-fun b!4804360 () Bool)

(declare-fun lt!1958684 () Unit!141007)

(assert (=> b!4804360 (= e!3000340 lt!1958684)))

(declare-fun lt!1958679 () Unit!141007)

(assert (=> b!4804360 (= lt!1958679 (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(assert (=> b!4804360 (isDefined!10358 (getValueByKey!2418 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(declare-fun lt!1958682 () Unit!141007)

(assert (=> b!4804360 (= lt!1958682 lt!1958679)))

(assert (=> b!4804360 (= lt!1958684 (lemmaInListThenGetKeysListContains!1105 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(assert (=> b!4804360 call!335511))

(declare-fun b!4804361 () Bool)

(assert (=> b!4804361 false))

(declare-fun lt!1958677 () Unit!141007)

(declare-fun lt!1958680 () Unit!141007)

(assert (=> b!4804361 (= lt!1958677 lt!1958680)))

(assert (=> b!4804361 (containsKey!4067 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896)))

(assert (=> b!4804361 (= lt!1958680 (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(declare-fun Unit!141035 () Unit!141007)

(assert (=> b!4804361 (= e!3000342 Unit!141035)))

(assert (= (and d!1538866 c!818983) b!4804360))

(assert (= (and d!1538866 (not c!818983)) b!4804358))

(assert (= (and b!4804358 c!818981) b!4804361))

(assert (= (and b!4804358 (not c!818981)) b!4804353))

(assert (= (or b!4804360 b!4804358) bm!335506))

(assert (= (and bm!335506 c!818982) b!4804359))

(assert (= (and bm!335506 (not c!818982)) b!4804355))

(assert (= (and d!1538866 res!2043784) b!4804354))

(assert (= (and d!1538866 (not res!2043783)) b!4804357))

(assert (= (and b!4804357 res!2043785) b!4804356))

(assert (=> b!4804355 m!5789578))

(declare-fun m!5789800 () Bool)

(assert (=> b!4804355 m!5789800))

(declare-fun m!5789802 () Bool)

(assert (=> b!4804357 m!5789802))

(assert (=> b!4804357 m!5789802))

(declare-fun m!5789804 () Bool)

(assert (=> b!4804357 m!5789804))

(assert (=> b!4804356 m!5789578))

(assert (=> b!4804356 m!5789800))

(assert (=> b!4804356 m!5789800))

(declare-fun m!5789806 () Bool)

(assert (=> b!4804356 m!5789806))

(assert (=> b!4804354 m!5789578))

(assert (=> b!4804354 m!5789800))

(assert (=> b!4804354 m!5789800))

(assert (=> b!4804354 m!5789806))

(declare-fun m!5789808 () Bool)

(assert (=> bm!335506 m!5789808))

(declare-fun m!5789810 () Bool)

(assert (=> b!4804360 m!5789810))

(assert (=> b!4804360 m!5789802))

(assert (=> b!4804360 m!5789802))

(assert (=> b!4804360 m!5789804))

(declare-fun m!5789812 () Bool)

(assert (=> b!4804360 m!5789812))

(declare-fun m!5789814 () Bool)

(assert (=> b!4804361 m!5789814))

(declare-fun m!5789816 () Bool)

(assert (=> b!4804361 m!5789816))

(declare-fun m!5789818 () Bool)

(assert (=> b!4804359 m!5789818))

(assert (=> d!1538866 m!5789814))

(assert (=> b!4804173 d!1538866))

(declare-fun b!4804418 () Bool)

(assert (=> b!4804418 true))

(declare-fun bs!1158734 () Bool)

(declare-fun b!4804416 () Bool)

(assert (= bs!1158734 (and b!4804416 b!4804418)))

(declare-fun lambda!233149 () Int)

(declare-fun lambda!233148 () Int)

(assert (=> bs!1158734 (= lambda!233149 lambda!233148)))

(assert (=> b!4804416 true))

(declare-fun lambda!233150 () Int)

(declare-fun lt!1958815 () ListMap!6499)

(assert (=> bs!1158734 (= (= lt!1958815 lt!1958559) (= lambda!233150 lambda!233148))))

(assert (=> b!4804416 (= (= lt!1958815 lt!1958559) (= lambda!233150 lambda!233149))))

(assert (=> b!4804416 true))

(declare-fun bs!1158735 () Bool)

(declare-fun d!1538870 () Bool)

(assert (= bs!1158735 (and d!1538870 b!4804418)))

(declare-fun lambda!233151 () Int)

(declare-fun lt!1958820 () ListMap!6499)

(assert (=> bs!1158735 (= (= lt!1958820 lt!1958559) (= lambda!233151 lambda!233148))))

(declare-fun bs!1158736 () Bool)

(assert (= bs!1158736 (and d!1538870 b!4804416)))

(assert (=> bs!1158736 (= (= lt!1958820 lt!1958559) (= lambda!233151 lambda!233149))))

(assert (=> bs!1158736 (= (= lt!1958820 lt!1958815) (= lambda!233151 lambda!233150))))

(assert (=> d!1538870 true))

(declare-fun b!4804414 () Bool)

(declare-fun e!3000377 () Bool)

(assert (=> b!4804414 (= e!3000377 (invariantList!1764 (toList!7028 lt!1958820)))))

(declare-fun bm!335523 () Bool)

(declare-fun c!818994 () Bool)

(declare-fun call!335528 () Bool)

(declare-fun forall!12357 (List!54480 Int) Bool)

(assert (=> bm!335523 (= call!335528 (forall!12357 (toList!7028 lt!1958559) (ite c!818994 lambda!233148 lambda!233150)))))

(declare-fun call!335529 () Bool)

(declare-fun bm!335524 () Bool)

(assert (=> bm!335524 (= call!335529 (forall!12357 (toList!7028 lt!1958559) (ite c!818994 lambda!233148 lambda!233150)))))

(declare-fun b!4804415 () Bool)

(declare-fun e!3000378 () Bool)

(assert (=> b!4804415 (= e!3000378 call!335529)))

(assert (=> d!1538870 e!3000377))

(declare-fun res!2043812 () Bool)

(assert (=> d!1538870 (=> (not res!2043812) (not e!3000377))))

(assert (=> d!1538870 (= res!2043812 (forall!12357 (_2!31827 (h!60789 (toList!7027 lm!2473))) lambda!233151))))

(declare-fun e!3000376 () ListMap!6499)

(assert (=> d!1538870 (= lt!1958820 e!3000376)))

(assert (=> d!1538870 (= c!818994 ((_ is Nil!54356) (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(assert (=> d!1538870 (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lm!2473))))))

(assert (=> d!1538870 (= (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559) lt!1958820)))

(declare-fun bm!335525 () Bool)

(declare-fun call!335530 () Unit!141007)

(declare-fun lemmaContainsAllItsOwnKeys!969 (ListMap!6499) Unit!141007)

(assert (=> bm!335525 (= call!335530 (lemmaContainsAllItsOwnKeys!969 lt!1958559))))

(assert (=> b!4804416 (= e!3000376 lt!1958815)))

(declare-fun lt!1958821 () ListMap!6499)

(declare-fun +!2513 (ListMap!6499 tuple2!57064) ListMap!6499)

(assert (=> b!4804416 (= lt!1958821 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (=> b!4804416 (= lt!1958815 (addToMapMapFromBucket!1741 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun lt!1958826 () Unit!141007)

(assert (=> b!4804416 (= lt!1958826 call!335530)))

(assert (=> b!4804416 (forall!12357 (toList!7028 lt!1958559) lambda!233149)))

(declare-fun lt!1958816 () Unit!141007)

(assert (=> b!4804416 (= lt!1958816 lt!1958826)))

(assert (=> b!4804416 (forall!12357 (toList!7028 lt!1958821) lambda!233150)))

(declare-fun lt!1958812 () Unit!141007)

(declare-fun Unit!141037 () Unit!141007)

(assert (=> b!4804416 (= lt!1958812 Unit!141037)))

(assert (=> b!4804416 (forall!12357 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) lambda!233150)))

(declare-fun lt!1958819 () Unit!141007)

(declare-fun Unit!141038 () Unit!141007)

(assert (=> b!4804416 (= lt!1958819 Unit!141038)))

(declare-fun lt!1958813 () Unit!141007)

(declare-fun Unit!141039 () Unit!141007)

(assert (=> b!4804416 (= lt!1958813 Unit!141039)))

(declare-fun lt!1958817 () Unit!141007)

(declare-fun forallContained!4227 (List!54480 Int tuple2!57064) Unit!141007)

(assert (=> b!4804416 (= lt!1958817 (forallContained!4227 (toList!7028 lt!1958821) lambda!233150 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (=> b!4804416 (contains!18018 lt!1958821 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun lt!1958829 () Unit!141007)

(declare-fun Unit!141040 () Unit!141007)

(assert (=> b!4804416 (= lt!1958829 Unit!141040)))

(assert (=> b!4804416 (contains!18018 lt!1958815 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun lt!1958822 () Unit!141007)

(declare-fun Unit!141041 () Unit!141007)

(assert (=> b!4804416 (= lt!1958822 Unit!141041)))

(assert (=> b!4804416 (forall!12357 (_2!31827 (h!60789 (toList!7027 lm!2473))) lambda!233150)))

(declare-fun lt!1958824 () Unit!141007)

(declare-fun Unit!141042 () Unit!141007)

(assert (=> b!4804416 (= lt!1958824 Unit!141042)))

(assert (=> b!4804416 (forall!12357 (toList!7028 lt!1958821) lambda!233150)))

(declare-fun lt!1958809 () Unit!141007)

(declare-fun Unit!141043 () Unit!141007)

(assert (=> b!4804416 (= lt!1958809 Unit!141043)))

(declare-fun lt!1958814 () Unit!141007)

(declare-fun Unit!141044 () Unit!141007)

(assert (=> b!4804416 (= lt!1958814 Unit!141044)))

(declare-fun lt!1958818 () Unit!141007)

(declare-fun addForallContainsKeyThenBeforeAdding!968 (ListMap!6499 ListMap!6499 K!15924 V!16170) Unit!141007)

(assert (=> b!4804416 (= lt!1958818 (addForallContainsKeyThenBeforeAdding!968 lt!1958559 lt!1958815 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> b!4804416 call!335528))

(declare-fun lt!1958823 () Unit!141007)

(assert (=> b!4804416 (= lt!1958823 lt!1958818)))

(assert (=> b!4804416 (forall!12357 (toList!7028 lt!1958559) lambda!233150)))

(declare-fun lt!1958825 () Unit!141007)

(declare-fun Unit!141045 () Unit!141007)

(assert (=> b!4804416 (= lt!1958825 Unit!141045)))

(declare-fun res!2043813 () Bool)

(assert (=> b!4804416 (= res!2043813 (forall!12357 (_2!31827 (h!60789 (toList!7027 lm!2473))) lambda!233150))))

(assert (=> b!4804416 (=> (not res!2043813) (not e!3000378))))

(assert (=> b!4804416 e!3000378))

(declare-fun lt!1958827 () Unit!141007)

(declare-fun Unit!141046 () Unit!141007)

(assert (=> b!4804416 (= lt!1958827 Unit!141046)))

(declare-fun b!4804417 () Bool)

(declare-fun res!2043811 () Bool)

(assert (=> b!4804417 (=> (not res!2043811) (not e!3000377))))

(assert (=> b!4804417 (= res!2043811 (forall!12357 (toList!7028 lt!1958559) lambda!233151))))

(assert (=> b!4804418 (= e!3000376 lt!1958559)))

(declare-fun lt!1958810 () Unit!141007)

(assert (=> b!4804418 (= lt!1958810 call!335530)))

(assert (=> b!4804418 call!335528))

(declare-fun lt!1958828 () Unit!141007)

(assert (=> b!4804418 (= lt!1958828 lt!1958810)))

(assert (=> b!4804418 call!335529))

(declare-fun lt!1958811 () Unit!141007)

(declare-fun Unit!141047 () Unit!141007)

(assert (=> b!4804418 (= lt!1958811 Unit!141047)))

(assert (= (and d!1538870 c!818994) b!4804418))

(assert (= (and d!1538870 (not c!818994)) b!4804416))

(assert (= (and b!4804416 res!2043813) b!4804415))

(assert (= (or b!4804418 b!4804416) bm!335523))

(assert (= (or b!4804418 b!4804415) bm!335524))

(assert (= (or b!4804418 b!4804416) bm!335525))

(assert (= (and d!1538870 res!2043812) b!4804417))

(assert (= (and b!4804417 res!2043811) b!4804414))

(declare-fun m!5789908 () Bool)

(assert (=> b!4804417 m!5789908))

(declare-fun m!5789910 () Bool)

(assert (=> bm!335525 m!5789910))

(declare-fun m!5789912 () Bool)

(assert (=> b!4804414 m!5789912))

(declare-fun m!5789914 () Bool)

(assert (=> d!1538870 m!5789914))

(assert (=> d!1538870 m!5789546))

(declare-fun m!5789916 () Bool)

(assert (=> bm!335524 m!5789916))

(declare-fun m!5789918 () Bool)

(assert (=> b!4804416 m!5789918))

(declare-fun m!5789920 () Bool)

(assert (=> b!4804416 m!5789920))

(declare-fun m!5789922 () Bool)

(assert (=> b!4804416 m!5789922))

(declare-fun m!5789924 () Bool)

(assert (=> b!4804416 m!5789924))

(assert (=> b!4804416 m!5789920))

(declare-fun m!5789926 () Bool)

(assert (=> b!4804416 m!5789926))

(declare-fun m!5789928 () Bool)

(assert (=> b!4804416 m!5789928))

(declare-fun m!5789930 () Bool)

(assert (=> b!4804416 m!5789930))

(declare-fun m!5789932 () Bool)

(assert (=> b!4804416 m!5789932))

(declare-fun m!5789934 () Bool)

(assert (=> b!4804416 m!5789934))

(declare-fun m!5789936 () Bool)

(assert (=> b!4804416 m!5789936))

(assert (=> b!4804416 m!5789928))

(assert (=> b!4804416 m!5789922))

(declare-fun m!5789938 () Bool)

(assert (=> b!4804416 m!5789938))

(assert (=> bm!335523 m!5789916))

(assert (=> b!4804173 d!1538870))

(declare-fun bs!1158737 () Bool)

(declare-fun d!1538890 () Bool)

(assert (= bs!1158737 (and d!1538890 start!496194)))

(declare-fun lambda!233154 () Int)

(assert (=> bs!1158737 (= lambda!233154 lambda!233061)))

(declare-fun bs!1158738 () Bool)

(assert (= bs!1158738 (and d!1538890 d!1538840)))

(assert (=> bs!1158738 (= lambda!233154 lambda!233080)))

(assert (=> d!1538890 (not (contains!18018 (extractMap!2501 (toList!7027 lt!1958557)) key!5896))))

(declare-fun lt!1958832 () Unit!141007)

(declare-fun choose!34763 (ListLongMap!5449 K!15924 Hashable!6974) Unit!141007)

(assert (=> d!1538890 (= lt!1958832 (choose!34763 lt!1958557 key!5896 hashF!1559))))

(assert (=> d!1538890 (forall!12355 (toList!7027 lt!1958557) lambda!233154)))

(assert (=> d!1538890 (= (lemmaHashNotInLongMapThenNotInGenerated!72 lt!1958557 key!5896 hashF!1559) lt!1958832)))

(declare-fun bs!1158739 () Bool)

(assert (= bs!1158739 d!1538890))

(assert (=> bs!1158739 m!5789542))

(assert (=> bs!1158739 m!5789542))

(assert (=> bs!1158739 m!5789574))

(declare-fun m!5789940 () Bool)

(assert (=> bs!1158739 m!5789940))

(declare-fun m!5789942 () Bool)

(assert (=> bs!1158739 m!5789942))

(assert (=> b!4804172 d!1538890))

(declare-fun b!4804421 () Bool)

(declare-fun e!3000384 () Unit!141007)

(declare-fun Unit!141048 () Unit!141007)

(assert (=> b!4804421 (= e!3000384 Unit!141048)))

(declare-fun b!4804422 () Bool)

(declare-fun e!3000380 () Bool)

(assert (=> b!4804422 (= e!3000380 (not (contains!18022 (keys!19883 (extractMap!2501 (toList!7027 lt!1958557))) key!5896)))))

(declare-fun b!4804423 () Bool)

(declare-fun e!3000379 () List!54483)

(assert (=> b!4804423 (= e!3000379 (keys!19883 (extractMap!2501 (toList!7027 lt!1958557))))))

(declare-fun d!1538892 () Bool)

(declare-fun e!3000381 () Bool)

(assert (=> d!1538892 e!3000381))

(declare-fun res!2043814 () Bool)

(assert (=> d!1538892 (=> res!2043814 e!3000381)))

(assert (=> d!1538892 (= res!2043814 e!3000380)))

(declare-fun res!2043815 () Bool)

(assert (=> d!1538892 (=> (not res!2043815) (not e!3000380))))

(declare-fun lt!1958839 () Bool)

(assert (=> d!1538892 (= res!2043815 (not lt!1958839))))

(declare-fun lt!1958837 () Bool)

(assert (=> d!1538892 (= lt!1958839 lt!1958837)))

(declare-fun lt!1958834 () Unit!141007)

(declare-fun e!3000382 () Unit!141007)

(assert (=> d!1538892 (= lt!1958834 e!3000382)))

(declare-fun c!818997 () Bool)

(assert (=> d!1538892 (= c!818997 lt!1958837)))

(assert (=> d!1538892 (= lt!1958837 (containsKey!4067 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(assert (=> d!1538892 (= (contains!18018 (extractMap!2501 (toList!7027 lt!1958557)) key!5896) lt!1958839)))

(declare-fun b!4804424 () Bool)

(declare-fun e!3000383 () Bool)

(assert (=> b!4804424 (= e!3000383 (contains!18022 (keys!19883 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(declare-fun bm!335526 () Bool)

(declare-fun call!335531 () Bool)

(assert (=> bm!335526 (= call!335531 (contains!18022 e!3000379 key!5896))))

(declare-fun c!818996 () Bool)

(assert (=> bm!335526 (= c!818996 c!818997)))

(declare-fun b!4804425 () Bool)

(assert (=> b!4804425 (= e!3000381 e!3000383)))

(declare-fun res!2043816 () Bool)

(assert (=> b!4804425 (=> (not res!2043816) (not e!3000383))))

(assert (=> b!4804425 (= res!2043816 (isDefined!10358 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896)))))

(declare-fun b!4804426 () Bool)

(assert (=> b!4804426 (= e!3000382 e!3000384)))

(declare-fun c!818995 () Bool)

(assert (=> b!4804426 (= c!818995 call!335531)))

(declare-fun b!4804427 () Bool)

(assert (=> b!4804427 (= e!3000379 (getKeysList!1110 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))))

(declare-fun b!4804428 () Bool)

(declare-fun lt!1958840 () Unit!141007)

(assert (=> b!4804428 (= e!3000382 lt!1958840)))

(declare-fun lt!1958835 () Unit!141007)

(assert (=> b!4804428 (= lt!1958835 (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(assert (=> b!4804428 (isDefined!10358 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(declare-fun lt!1958838 () Unit!141007)

(assert (=> b!4804428 (= lt!1958838 lt!1958835)))

(assert (=> b!4804428 (= lt!1958840 (lemmaInListThenGetKeysListContains!1105 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(assert (=> b!4804428 call!335531))

(declare-fun b!4804429 () Bool)

(assert (=> b!4804429 false))

(declare-fun lt!1958833 () Unit!141007)

(declare-fun lt!1958836 () Unit!141007)

(assert (=> b!4804429 (= lt!1958833 lt!1958836)))

(assert (=> b!4804429 (containsKey!4067 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896)))

(assert (=> b!4804429 (= lt!1958836 (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(declare-fun Unit!141050 () Unit!141007)

(assert (=> b!4804429 (= e!3000384 Unit!141050)))

(assert (= (and d!1538892 c!818997) b!4804428))

(assert (= (and d!1538892 (not c!818997)) b!4804426))

(assert (= (and b!4804426 c!818995) b!4804429))

(assert (= (and b!4804426 (not c!818995)) b!4804421))

(assert (= (or b!4804428 b!4804426) bm!335526))

(assert (= (and bm!335526 c!818996) b!4804427))

(assert (= (and bm!335526 (not c!818996)) b!4804423))

(assert (= (and d!1538892 res!2043815) b!4804422))

(assert (= (and d!1538892 (not res!2043814)) b!4804425))

(assert (= (and b!4804425 res!2043816) b!4804424))

(assert (=> b!4804423 m!5789542))

(declare-fun m!5789944 () Bool)

(assert (=> b!4804423 m!5789944))

(declare-fun m!5789946 () Bool)

(assert (=> b!4804425 m!5789946))

(assert (=> b!4804425 m!5789946))

(declare-fun m!5789948 () Bool)

(assert (=> b!4804425 m!5789948))

(assert (=> b!4804424 m!5789542))

(assert (=> b!4804424 m!5789944))

(assert (=> b!4804424 m!5789944))

(declare-fun m!5789950 () Bool)

(assert (=> b!4804424 m!5789950))

(assert (=> b!4804422 m!5789542))

(assert (=> b!4804422 m!5789944))

(assert (=> b!4804422 m!5789944))

(assert (=> b!4804422 m!5789950))

(declare-fun m!5789952 () Bool)

(assert (=> bm!335526 m!5789952))

(declare-fun m!5789954 () Bool)

(assert (=> b!4804428 m!5789954))

(assert (=> b!4804428 m!5789946))

(assert (=> b!4804428 m!5789946))

(assert (=> b!4804428 m!5789948))

(declare-fun m!5789956 () Bool)

(assert (=> b!4804428 m!5789956))

(declare-fun m!5789958 () Bool)

(assert (=> b!4804429 m!5789958))

(declare-fun m!5789960 () Bool)

(assert (=> b!4804429 m!5789960))

(declare-fun m!5789962 () Bool)

(assert (=> b!4804427 m!5789962))

(assert (=> d!1538892 m!5789958))

(assert (=> b!4804172 d!1538892))

(declare-fun bs!1158740 () Bool)

(declare-fun d!1538894 () Bool)

(assert (= bs!1158740 (and d!1538894 start!496194)))

(declare-fun lambda!233155 () Int)

(assert (=> bs!1158740 (= lambda!233155 lambda!233061)))

(declare-fun bs!1158741 () Bool)

(assert (= bs!1158741 (and d!1538894 d!1538840)))

(assert (=> bs!1158741 (= lambda!233155 lambda!233080)))

(declare-fun bs!1158742 () Bool)

(assert (= bs!1158742 (and d!1538894 d!1538890)))

(assert (=> bs!1158742 (= lambda!233155 lambda!233154)))

(declare-fun lt!1958841 () ListMap!6499)

(assert (=> d!1538894 (invariantList!1764 (toList!7028 lt!1958841))))

(declare-fun e!3000385 () ListMap!6499)

(assert (=> d!1538894 (= lt!1958841 e!3000385)))

(declare-fun c!818998 () Bool)

(assert (=> d!1538894 (= c!818998 ((_ is Cons!54357) (toList!7027 lt!1958557)))))

(assert (=> d!1538894 (forall!12355 (toList!7027 lt!1958557) lambda!233155)))

(assert (=> d!1538894 (= (extractMap!2501 (toList!7027 lt!1958557)) lt!1958841)))

(declare-fun b!4804430 () Bool)

(assert (=> b!4804430 (= e!3000385 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))))))

(declare-fun b!4804431 () Bool)

(assert (=> b!4804431 (= e!3000385 (ListMap!6500 Nil!54356))))

(assert (= (and d!1538894 c!818998) b!4804430))

(assert (= (and d!1538894 (not c!818998)) b!4804431))

(declare-fun m!5789964 () Bool)

(assert (=> d!1538894 m!5789964))

(declare-fun m!5789966 () Bool)

(assert (=> d!1538894 m!5789966))

(declare-fun m!5789968 () Bool)

(assert (=> b!4804430 m!5789968))

(assert (=> b!4804430 m!5789968))

(declare-fun m!5789970 () Bool)

(assert (=> b!4804430 m!5789970))

(assert (=> b!4804172 d!1538894))

(declare-fun d!1538896 () Bool)

(declare-fun e!3000390 () Bool)

(assert (=> d!1538896 e!3000390))

(declare-fun res!2043819 () Bool)

(assert (=> d!1538896 (=> res!2043819 e!3000390)))

(declare-fun lt!1958852 () Bool)

(assert (=> d!1538896 (= res!2043819 (not lt!1958852))))

(declare-fun lt!1958853 () Bool)

(assert (=> d!1538896 (= lt!1958852 lt!1958853)))

(declare-fun lt!1958851 () Unit!141007)

(declare-fun e!3000391 () Unit!141007)

(assert (=> d!1538896 (= lt!1958851 e!3000391)))

(declare-fun c!819001 () Bool)

(assert (=> d!1538896 (= c!819001 lt!1958853)))

(declare-fun containsKey!4068 (List!54481 (_ BitVec 64)) Bool)

(assert (=> d!1538896 (= lt!1958853 (containsKey!4068 (toList!7027 lm!2473) lt!1958563))))

(assert (=> d!1538896 (= (contains!18019 lm!2473 lt!1958563) lt!1958852)))

(declare-fun b!4804438 () Bool)

(declare-fun lt!1958850 () Unit!141007)

(assert (=> b!4804438 (= e!3000391 lt!1958850)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2210 (List!54481 (_ BitVec 64)) Unit!141007)

(assert (=> b!4804438 (= lt!1958850 (lemmaContainsKeyImpliesGetValueByKeyDefined!2210 (toList!7027 lm!2473) lt!1958563))))

(declare-datatypes ((Option!13218 0))(
  ( (None!13217) (Some!13217 (v!48554 List!54480)) )
))
(declare-fun isDefined!10359 (Option!13218) Bool)

(declare-fun getValueByKey!2419 (List!54481 (_ BitVec 64)) Option!13218)

(assert (=> b!4804438 (isDefined!10359 (getValueByKey!2419 (toList!7027 lm!2473) lt!1958563))))

(declare-fun b!4804439 () Bool)

(declare-fun Unit!141052 () Unit!141007)

(assert (=> b!4804439 (= e!3000391 Unit!141052)))

(declare-fun b!4804440 () Bool)

(assert (=> b!4804440 (= e!3000390 (isDefined!10359 (getValueByKey!2419 (toList!7027 lm!2473) lt!1958563)))))

(assert (= (and d!1538896 c!819001) b!4804438))

(assert (= (and d!1538896 (not c!819001)) b!4804439))

(assert (= (and d!1538896 (not res!2043819)) b!4804440))

(declare-fun m!5789972 () Bool)

(assert (=> d!1538896 m!5789972))

(declare-fun m!5789974 () Bool)

(assert (=> b!4804438 m!5789974))

(declare-fun m!5789976 () Bool)

(assert (=> b!4804438 m!5789976))

(assert (=> b!4804438 m!5789976))

(declare-fun m!5789978 () Bool)

(assert (=> b!4804438 m!5789978))

(assert (=> b!4804440 m!5789976))

(assert (=> b!4804440 m!5789976))

(assert (=> b!4804440 m!5789978))

(assert (=> b!4804174 d!1538896))

(declare-fun d!1538898 () Bool)

(declare-fun res!2043826 () Bool)

(declare-fun e!3000400 () Bool)

(assert (=> d!1538898 (=> res!2043826 e!3000400)))

(declare-fun e!3000399 () Bool)

(assert (=> d!1538898 (= res!2043826 e!3000399)))

(declare-fun res!2043827 () Bool)

(assert (=> d!1538898 (=> (not res!2043827) (not e!3000399))))

(assert (=> d!1538898 (= res!2043827 ((_ is Cons!54357) (toList!7027 lm!2473)))))

(assert (=> d!1538898 (= (containsKeyBiggerList!616 (toList!7027 lm!2473) key!5896) e!3000400)))

(declare-fun b!4804447 () Bool)

(assert (=> b!4804447 (= e!3000399 (containsKey!4064 (_2!31827 (h!60789 (toList!7027 lm!2473))) key!5896))))

(declare-fun b!4804448 () Bool)

(declare-fun e!3000398 () Bool)

(assert (=> b!4804448 (= e!3000400 e!3000398)))

(declare-fun res!2043828 () Bool)

(assert (=> b!4804448 (=> (not res!2043828) (not e!3000398))))

(assert (=> b!4804448 (= res!2043828 ((_ is Cons!54357) (toList!7027 lm!2473)))))

(declare-fun b!4804449 () Bool)

(assert (=> b!4804449 (= e!3000398 (containsKeyBiggerList!616 (t!361931 (toList!7027 lm!2473)) key!5896))))

(assert (= (and d!1538898 res!2043827) b!4804447))

(assert (= (and d!1538898 (not res!2043826)) b!4804448))

(assert (= (and b!4804448 res!2043828) b!4804449))

(assert (=> b!4804447 m!5789532))

(declare-fun m!5789980 () Bool)

(assert (=> b!4804449 m!5789980))

(assert (=> b!4804174 d!1538898))

(declare-fun bs!1158743 () Bool)

(declare-fun d!1538900 () Bool)

(assert (= bs!1158743 (and d!1538900 start!496194)))

(declare-fun lambda!233158 () Int)

(assert (=> bs!1158743 (= lambda!233158 lambda!233061)))

(declare-fun bs!1158744 () Bool)

(assert (= bs!1158744 (and d!1538900 d!1538840)))

(assert (=> bs!1158744 (= lambda!233158 lambda!233080)))

(declare-fun bs!1158745 () Bool)

(assert (= bs!1158745 (and d!1538900 d!1538890)))

(assert (=> bs!1158745 (= lambda!233158 lambda!233154)))

(declare-fun bs!1158746 () Bool)

(assert (= bs!1158746 (and d!1538900 d!1538894)))

(assert (=> bs!1158746 (= lambda!233158 lambda!233155)))

(assert (=> d!1538900 (containsKeyBiggerList!616 (toList!7027 lm!2473) key!5896)))

(declare-fun lt!1958856 () Unit!141007)

(declare-fun choose!34765 (ListLongMap!5449 K!15924 Hashable!6974) Unit!141007)

(assert (=> d!1538900 (= lt!1958856 (choose!34765 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1538900 (forall!12355 (toList!7027 lm!2473) lambda!233158)))

(assert (=> d!1538900 (= (lemmaInLongMapThenContainsKeyBiggerList!356 lm!2473 key!5896 hashF!1559) lt!1958856)))

(declare-fun bs!1158747 () Bool)

(assert (= bs!1158747 d!1538900))

(assert (=> bs!1158747 m!5789558))

(declare-fun m!5789982 () Bool)

(assert (=> bs!1158747 m!5789982))

(declare-fun m!5789984 () Bool)

(assert (=> bs!1158747 m!5789984))

(assert (=> b!4804174 d!1538900))

(declare-fun bs!1158748 () Bool)

(declare-fun d!1538902 () Bool)

(assert (= bs!1158748 (and d!1538902 d!1538900)))

(declare-fun lambda!233161 () Int)

(assert (=> bs!1158748 (= lambda!233161 lambda!233158)))

(declare-fun bs!1158749 () Bool)

(assert (= bs!1158749 (and d!1538902 d!1538894)))

(assert (=> bs!1158749 (= lambda!233161 lambda!233155)))

(declare-fun bs!1158750 () Bool)

(assert (= bs!1158750 (and d!1538902 start!496194)))

(assert (=> bs!1158750 (= lambda!233161 lambda!233061)))

(declare-fun bs!1158751 () Bool)

(assert (= bs!1158751 (and d!1538902 d!1538840)))

(assert (=> bs!1158751 (= lambda!233161 lambda!233080)))

(declare-fun bs!1158752 () Bool)

(assert (= bs!1158752 (and d!1538902 d!1538890)))

(assert (=> bs!1158752 (= lambda!233161 lambda!233154)))

(declare-fun e!3000403 () Bool)

(assert (=> d!1538902 e!3000403))

(declare-fun res!2043831 () Bool)

(assert (=> d!1538902 (=> (not res!2043831) (not e!3000403))))

(assert (=> d!1538902 (= res!2043831 (contains!18019 lm!2473 (hash!5039 hashF!1559 key!5896)))))

(declare-fun lt!1958859 () Unit!141007)

(declare-fun choose!34766 (ListLongMap!5449 K!15924 Hashable!6974) Unit!141007)

(assert (=> d!1538902 (= lt!1958859 (choose!34766 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1538902 (forall!12355 (toList!7027 lm!2473) lambda!233161)))

(assert (=> d!1538902 (= (lemmaInGenericMapThenInLongMap!378 lm!2473 key!5896 hashF!1559) lt!1958859)))

(declare-fun b!4804452 () Bool)

(assert (=> b!4804452 (= e!3000403 (isDefined!10355 (getPair!946 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1538902 res!2043831) b!4804452))

(assert (=> d!1538902 m!5789560))

(assert (=> d!1538902 m!5789560))

(declare-fun m!5789986 () Bool)

(assert (=> d!1538902 m!5789986))

(declare-fun m!5789988 () Bool)

(assert (=> d!1538902 m!5789988))

(declare-fun m!5789990 () Bool)

(assert (=> d!1538902 m!5789990))

(assert (=> b!4804452 m!5789560))

(assert (=> b!4804452 m!5789560))

(declare-fun m!5789992 () Bool)

(assert (=> b!4804452 m!5789992))

(assert (=> b!4804452 m!5789992))

(declare-fun m!5789994 () Bool)

(assert (=> b!4804452 m!5789994))

(assert (=> b!4804452 m!5789994))

(declare-fun m!5789996 () Bool)

(assert (=> b!4804452 m!5789996))

(assert (=> b!4804174 d!1538902))

(declare-fun d!1538904 () Bool)

(declare-fun c!819004 () Bool)

(declare-fun e!3000409 () Bool)

(assert (=> d!1538904 (= c!819004 e!3000409)))

(declare-fun res!2043834 () Bool)

(assert (=> d!1538904 (=> (not res!2043834) (not e!3000409))))

(assert (=> d!1538904 (= res!2043834 ((_ is Cons!54357) (toList!7027 lm!2473)))))

(declare-fun e!3000408 () V!16170)

(assert (=> d!1538904 (= (getValue!162 (toList!7027 lm!2473) key!5896) e!3000408)))

(declare-fun b!4804461 () Bool)

(assert (=> b!4804461 (= e!3000409 (containsKey!4064 (_2!31827 (h!60789 (toList!7027 lm!2473))) key!5896))))

(declare-fun b!4804459 () Bool)

(declare-fun get!18580 (Option!13214) tuple2!57064)

(assert (=> b!4804459 (= e!3000408 (_2!31826 (get!18580 (getPair!946 (_2!31827 (h!60789 (toList!7027 lm!2473))) key!5896))))))

(declare-fun b!4804460 () Bool)

(assert (=> b!4804460 (= e!3000408 (getValue!162 (t!361931 (toList!7027 lm!2473)) key!5896))))

(assert (= (and d!1538904 res!2043834) b!4804461))

(assert (= (and d!1538904 c!819004) b!4804459))

(assert (= (and d!1538904 (not c!819004)) b!4804460))

(assert (=> b!4804461 m!5789532))

(declare-fun m!5789998 () Bool)

(assert (=> b!4804459 m!5789998))

(assert (=> b!4804459 m!5789998))

(declare-fun m!5790000 () Bool)

(assert (=> b!4804459 m!5790000))

(declare-fun m!5790002 () Bool)

(assert (=> b!4804460 m!5790002))

(assert (=> b!4804174 d!1538904))

(declare-fun d!1538906 () Bool)

(declare-fun hash!5041 (Hashable!6974 K!15924) (_ BitVec 64))

(assert (=> d!1538906 (= (hash!5039 hashF!1559 key!5896) (hash!5041 hashF!1559 key!5896))))

(declare-fun bs!1158753 () Bool)

(assert (= bs!1158753 d!1538906))

(declare-fun m!5790004 () Bool)

(assert (=> bs!1158753 m!5790004))

(assert (=> b!4804174 d!1538906))

(declare-fun d!1538908 () Bool)

(declare-fun res!2043839 () Bool)

(declare-fun e!3000414 () Bool)

(assert (=> d!1538908 (=> res!2043839 e!3000414)))

(assert (=> d!1538908 (= res!2043839 ((_ is Nil!54357) (toList!7027 lm!2473)))))

(assert (=> d!1538908 (= (forall!12355 (toList!7027 lm!2473) lambda!233061) e!3000414)))

(declare-fun b!4804466 () Bool)

(declare-fun e!3000415 () Bool)

(assert (=> b!4804466 (= e!3000414 e!3000415)))

(declare-fun res!2043840 () Bool)

(assert (=> b!4804466 (=> (not res!2043840) (not e!3000415))))

(declare-fun dynLambda!22103 (Int tuple2!57066) Bool)

(assert (=> b!4804466 (= res!2043840 (dynLambda!22103 lambda!233061 (h!60789 (toList!7027 lm!2473))))))

(declare-fun b!4804467 () Bool)

(assert (=> b!4804467 (= e!3000415 (forall!12355 (t!361931 (toList!7027 lm!2473)) lambda!233061))))

(assert (= (and d!1538908 (not res!2043839)) b!4804466))

(assert (= (and b!4804466 res!2043840) b!4804467))

(declare-fun b_lambda!187935 () Bool)

(assert (=> (not b_lambda!187935) (not b!4804466)))

(declare-fun m!5790006 () Bool)

(assert (=> b!4804466 m!5790006))

(declare-fun m!5790008 () Bool)

(assert (=> b!4804467 m!5790008))

(assert (=> start!496194 d!1538908))

(declare-fun d!1538910 () Bool)

(declare-fun isStrictlySorted!910 (List!54481) Bool)

(assert (=> d!1538910 (= (inv!69950 lm!2473) (isStrictlySorted!910 (toList!7027 lm!2473)))))

(declare-fun bs!1158754 () Bool)

(assert (= bs!1158754 d!1538910))

(declare-fun m!5790010 () Bool)

(assert (=> bs!1158754 m!5790010))

(assert (=> start!496194 d!1538910))

(declare-fun d!1538912 () Bool)

(declare-fun get!18581 (Option!13217) V!16170)

(assert (=> d!1538912 (= (apply!13052 lt!1958559 key!5896) (get!18581 (getValueByKey!2418 (toList!7028 lt!1958559) key!5896)))))

(declare-fun bs!1158755 () Bool)

(assert (= bs!1158755 d!1538912))

(assert (=> bs!1158755 m!5789642))

(assert (=> bs!1158755 m!5789642))

(declare-fun m!5790012 () Bool)

(assert (=> bs!1158755 m!5790012))

(assert (=> b!4804170 d!1538912))

(declare-fun d!1538914 () Bool)

(declare-fun isEmpty!29525 (Option!13214) Bool)

(assert (=> d!1538914 (= (isDefined!10355 (getPair!946 (apply!13053 lm!2473 lt!1958563) key!5896)) (not (isEmpty!29525 (getPair!946 (apply!13053 lm!2473 lt!1958563) key!5896))))))

(declare-fun bs!1158756 () Bool)

(assert (= bs!1158756 d!1538914))

(assert (=> bs!1158756 m!5789584))

(declare-fun m!5790014 () Bool)

(assert (=> bs!1158756 m!5790014))

(assert (=> b!4804171 d!1538914))

(declare-fun b!4804484 () Bool)

(declare-fun e!3000427 () Option!13214)

(assert (=> b!4804484 (= e!3000427 (getPair!946 (t!361930 (apply!13053 lm!2473 lt!1958563)) key!5896))))

(declare-fun b!4804485 () Bool)

(declare-fun e!3000426 () Option!13214)

(assert (=> b!4804485 (= e!3000426 e!3000427)))

(declare-fun c!819009 () Bool)

(assert (=> b!4804485 (= c!819009 ((_ is Cons!54356) (apply!13053 lm!2473 lt!1958563)))))

(declare-fun b!4804486 () Bool)

(assert (=> b!4804486 (= e!3000427 None!13213)))

(declare-fun b!4804487 () Bool)

(assert (=> b!4804487 (= e!3000426 (Some!13213 (h!60788 (apply!13053 lm!2473 lt!1958563))))))

(declare-fun b!4804488 () Bool)

(declare-fun e!3000429 () Bool)

(assert (=> b!4804488 (= e!3000429 (not (containsKey!4064 (apply!13053 lm!2473 lt!1958563) key!5896)))))

(declare-fun b!4804489 () Bool)

(declare-fun res!2043852 () Bool)

(declare-fun e!3000430 () Bool)

(assert (=> b!4804489 (=> (not res!2043852) (not e!3000430))))

(declare-fun lt!1958862 () Option!13214)

(assert (=> b!4804489 (= res!2043852 (= (_1!31826 (get!18580 lt!1958862)) key!5896))))

(declare-fun d!1538916 () Bool)

(declare-fun e!3000428 () Bool)

(assert (=> d!1538916 e!3000428))

(declare-fun res!2043849 () Bool)

(assert (=> d!1538916 (=> res!2043849 e!3000428)))

(assert (=> d!1538916 (= res!2043849 e!3000429)))

(declare-fun res!2043850 () Bool)

(assert (=> d!1538916 (=> (not res!2043850) (not e!3000429))))

(assert (=> d!1538916 (= res!2043850 (isEmpty!29525 lt!1958862))))

(assert (=> d!1538916 (= lt!1958862 e!3000426)))

(declare-fun c!819010 () Bool)

(assert (=> d!1538916 (= c!819010 (and ((_ is Cons!54356) (apply!13053 lm!2473 lt!1958563)) (= (_1!31826 (h!60788 (apply!13053 lm!2473 lt!1958563))) key!5896)))))

(assert (=> d!1538916 (noDuplicateKeys!2372 (apply!13053 lm!2473 lt!1958563))))

(assert (=> d!1538916 (= (getPair!946 (apply!13053 lm!2473 lt!1958563) key!5896) lt!1958862)))

(declare-fun b!4804490 () Bool)

(assert (=> b!4804490 (= e!3000428 e!3000430)))

(declare-fun res!2043851 () Bool)

(assert (=> b!4804490 (=> (not res!2043851) (not e!3000430))))

(assert (=> b!4804490 (= res!2043851 (isDefined!10355 lt!1958862))))

(declare-fun b!4804491 () Bool)

(declare-fun contains!18023 (List!54480 tuple2!57064) Bool)

(assert (=> b!4804491 (= e!3000430 (contains!18023 (apply!13053 lm!2473 lt!1958563) (get!18580 lt!1958862)))))

(assert (= (and d!1538916 c!819010) b!4804487))

(assert (= (and d!1538916 (not c!819010)) b!4804485))

(assert (= (and b!4804485 c!819009) b!4804484))

(assert (= (and b!4804485 (not c!819009)) b!4804486))

(assert (= (and d!1538916 res!2043850) b!4804488))

(assert (= (and d!1538916 (not res!2043849)) b!4804490))

(assert (= (and b!4804490 res!2043851) b!4804489))

(assert (= (and b!4804489 res!2043852) b!4804491))

(declare-fun m!5790016 () Bool)

(assert (=> b!4804490 m!5790016))

(declare-fun m!5790018 () Bool)

(assert (=> d!1538916 m!5790018))

(assert (=> d!1538916 m!5789582))

(declare-fun m!5790020 () Bool)

(assert (=> d!1538916 m!5790020))

(declare-fun m!5790022 () Bool)

(assert (=> b!4804491 m!5790022))

(assert (=> b!4804491 m!5789582))

(assert (=> b!4804491 m!5790022))

(declare-fun m!5790024 () Bool)

(assert (=> b!4804491 m!5790024))

(declare-fun m!5790026 () Bool)

(assert (=> b!4804484 m!5790026))

(assert (=> b!4804489 m!5790022))

(assert (=> b!4804488 m!5789582))

(declare-fun m!5790028 () Bool)

(assert (=> b!4804488 m!5790028))

(assert (=> b!4804171 d!1538916))

(declare-fun d!1538918 () Bool)

(declare-fun get!18582 (Option!13218) List!54480)

(assert (=> d!1538918 (= (apply!13053 lm!2473 lt!1958563) (get!18582 (getValueByKey!2419 (toList!7027 lm!2473) lt!1958563)))))

(declare-fun bs!1158757 () Bool)

(assert (= bs!1158757 d!1538918))

(assert (=> bs!1158757 m!5789976))

(assert (=> bs!1158757 m!5789976))

(declare-fun m!5790030 () Bool)

(assert (=> bs!1158757 m!5790030))

(assert (=> b!4804171 d!1538918))

(declare-fun d!1538920 () Bool)

(assert (=> d!1538920 (= (apply!13052 lt!1958560 key!5896) (get!18581 (getValueByKey!2418 (toList!7028 lt!1958560) key!5896)))))

(declare-fun bs!1158758 () Bool)

(assert (= bs!1158758 d!1538920))

(declare-fun m!5790032 () Bool)

(assert (=> bs!1158758 m!5790032))

(assert (=> bs!1158758 m!5790032))

(declare-fun m!5790034 () Bool)

(assert (=> bs!1158758 m!5790034))

(assert (=> b!4804169 d!1538920))

(declare-fun d!1538922 () Bool)

(declare-fun res!2043857 () Bool)

(declare-fun e!3000435 () Bool)

(assert (=> d!1538922 (=> res!2043857 e!3000435)))

(assert (=> d!1538922 (= res!2043857 (not ((_ is Cons!54356) (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (=> d!1538922 (= (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lm!2473)))) e!3000435)))

(declare-fun b!4804496 () Bool)

(declare-fun e!3000436 () Bool)

(assert (=> b!4804496 (= e!3000435 e!3000436)))

(declare-fun res!2043858 () Bool)

(assert (=> b!4804496 (=> (not res!2043858) (not e!3000436))))

(assert (=> b!4804496 (= res!2043858 (not (containsKey!4064 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(declare-fun b!4804497 () Bool)

(assert (=> b!4804497 (= e!3000436 (noDuplicateKeys!2372 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (= (and d!1538922 (not res!2043857)) b!4804496))

(assert (= (and b!4804496 res!2043858) b!4804497))

(declare-fun m!5790036 () Bool)

(assert (=> b!4804496 m!5790036))

(declare-fun m!5790038 () Bool)

(assert (=> b!4804497 m!5790038))

(assert (=> b!4804169 d!1538922))

(declare-fun d!1538924 () Bool)

(declare-fun tail!9350 (List!54481) List!54481)

(assert (=> d!1538924 (= (tail!9348 lm!2473) (ListLongMap!5450 (tail!9350 (toList!7027 lm!2473))))))

(declare-fun bs!1158759 () Bool)

(assert (= bs!1158759 d!1538924))

(declare-fun m!5790040 () Bool)

(assert (=> bs!1158759 m!5790040))

(assert (=> b!4804169 d!1538924))

(declare-fun bs!1158760 () Bool)

(declare-fun d!1538926 () Bool)

(assert (= bs!1158760 (and d!1538926 d!1538900)))

(declare-fun lambda!233164 () Int)

(assert (=> bs!1158760 (= lambda!233164 lambda!233158)))

(declare-fun bs!1158761 () Bool)

(assert (= bs!1158761 (and d!1538926 d!1538902)))

(assert (=> bs!1158761 (= lambda!233164 lambda!233161)))

(declare-fun bs!1158762 () Bool)

(assert (= bs!1158762 (and d!1538926 d!1538894)))

(assert (=> bs!1158762 (= lambda!233164 lambda!233155)))

(declare-fun bs!1158763 () Bool)

(assert (= bs!1158763 (and d!1538926 start!496194)))

(assert (=> bs!1158763 (= lambda!233164 lambda!233061)))

(declare-fun bs!1158764 () Bool)

(assert (= bs!1158764 (and d!1538926 d!1538840)))

(assert (=> bs!1158764 (= lambda!233164 lambda!233080)))

(declare-fun bs!1158765 () Bool)

(assert (= bs!1158765 (and d!1538926 d!1538890)))

(assert (=> bs!1158765 (= lambda!233164 lambda!233154)))

(assert (=> d!1538926 (contains!18018 (extractMap!2501 (toList!7027 lt!1958557)) key!5896)))

(declare-fun lt!1958865 () Unit!141007)

(declare-fun choose!34767 (ListLongMap!5449 K!15924 Hashable!6974) Unit!141007)

(assert (=> d!1538926 (= lt!1958865 (choose!34767 lt!1958557 key!5896 hashF!1559))))

(assert (=> d!1538926 (forall!12355 (toList!7027 lt!1958557) lambda!233164)))

(assert (=> d!1538926 (= (lemmaListContainsThenExtractedMapContains!724 lt!1958557 key!5896 hashF!1559) lt!1958865)))

(declare-fun bs!1158766 () Bool)

(assert (= bs!1158766 d!1538926))

(assert (=> bs!1158766 m!5789542))

(assert (=> bs!1158766 m!5789542))

(assert (=> bs!1158766 m!5789574))

(declare-fun m!5790042 () Bool)

(assert (=> bs!1158766 m!5790042))

(declare-fun m!5790044 () Bool)

(assert (=> bs!1158766 m!5790044))

(assert (=> b!4804169 d!1538926))

(declare-fun bs!1158767 () Bool)

(declare-fun d!1538928 () Bool)

(assert (= bs!1158767 (and d!1538928 d!1538900)))

(declare-fun lambda!233165 () Int)

(assert (=> bs!1158767 (= lambda!233165 lambda!233158)))

(declare-fun bs!1158768 () Bool)

(assert (= bs!1158768 (and d!1538928 d!1538926)))

(assert (=> bs!1158768 (= lambda!233165 lambda!233164)))

(declare-fun bs!1158769 () Bool)

(assert (= bs!1158769 (and d!1538928 d!1538902)))

(assert (=> bs!1158769 (= lambda!233165 lambda!233161)))

(declare-fun bs!1158770 () Bool)

(assert (= bs!1158770 (and d!1538928 d!1538894)))

(assert (=> bs!1158770 (= lambda!233165 lambda!233155)))

(declare-fun bs!1158771 () Bool)

(assert (= bs!1158771 (and d!1538928 start!496194)))

(assert (=> bs!1158771 (= lambda!233165 lambda!233061)))

(declare-fun bs!1158772 () Bool)

(assert (= bs!1158772 (and d!1538928 d!1538840)))

(assert (=> bs!1158772 (= lambda!233165 lambda!233080)))

(declare-fun bs!1158773 () Bool)

(assert (= bs!1158773 (and d!1538928 d!1538890)))

(assert (=> bs!1158773 (= lambda!233165 lambda!233154)))

(declare-fun lt!1958866 () ListMap!6499)

(assert (=> d!1538928 (invariantList!1764 (toList!7028 lt!1958866))))

(declare-fun e!3000437 () ListMap!6499)

(assert (=> d!1538928 (= lt!1958866 e!3000437)))

(declare-fun c!819011 () Bool)

(assert (=> d!1538928 (= c!819011 ((_ is Cons!54357) (t!361931 (toList!7027 lm!2473))))))

(assert (=> d!1538928 (forall!12355 (t!361931 (toList!7027 lm!2473)) lambda!233165)))

(assert (=> d!1538928 (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958866)))

(declare-fun b!4804498 () Bool)

(assert (=> b!4804498 (= e!3000437 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))))))

(declare-fun b!4804499 () Bool)

(assert (=> b!4804499 (= e!3000437 (ListMap!6500 Nil!54356))))

(assert (= (and d!1538928 c!819011) b!4804498))

(assert (= (and d!1538928 (not c!819011)) b!4804499))

(declare-fun m!5790046 () Bool)

(assert (=> d!1538928 m!5790046))

(declare-fun m!5790048 () Bool)

(assert (=> d!1538928 m!5790048))

(declare-fun m!5790050 () Bool)

(assert (=> b!4804498 m!5790050))

(assert (=> b!4804498 m!5790050))

(declare-fun m!5790052 () Bool)

(assert (=> b!4804498 m!5790052))

(assert (=> b!4804169 d!1538928))

(declare-fun d!1538930 () Bool)

(declare-fun e!3000438 () Bool)

(assert (=> d!1538930 e!3000438))

(declare-fun res!2043859 () Bool)

(assert (=> d!1538930 (=> res!2043859 e!3000438)))

(declare-fun lt!1958869 () Bool)

(assert (=> d!1538930 (= res!2043859 (not lt!1958869))))

(declare-fun lt!1958870 () Bool)

(assert (=> d!1538930 (= lt!1958869 lt!1958870)))

(declare-fun lt!1958868 () Unit!141007)

(declare-fun e!3000439 () Unit!141007)

(assert (=> d!1538930 (= lt!1958868 e!3000439)))

(declare-fun c!819012 () Bool)

(assert (=> d!1538930 (= c!819012 lt!1958870)))

(assert (=> d!1538930 (= lt!1958870 (containsKey!4068 (toList!7027 lt!1958557) lt!1958563))))

(assert (=> d!1538930 (= (contains!18019 lt!1958557 lt!1958563) lt!1958869)))

(declare-fun b!4804500 () Bool)

(declare-fun lt!1958867 () Unit!141007)

(assert (=> b!4804500 (= e!3000439 lt!1958867)))

(assert (=> b!4804500 (= lt!1958867 (lemmaContainsKeyImpliesGetValueByKeyDefined!2210 (toList!7027 lt!1958557) lt!1958563))))

(assert (=> b!4804500 (isDefined!10359 (getValueByKey!2419 (toList!7027 lt!1958557) lt!1958563))))

(declare-fun b!4804501 () Bool)

(declare-fun Unit!141053 () Unit!141007)

(assert (=> b!4804501 (= e!3000439 Unit!141053)))

(declare-fun b!4804502 () Bool)

(assert (=> b!4804502 (= e!3000438 (isDefined!10359 (getValueByKey!2419 (toList!7027 lt!1958557) lt!1958563)))))

(assert (= (and d!1538930 c!819012) b!4804500))

(assert (= (and d!1538930 (not c!819012)) b!4804501))

(assert (= (and d!1538930 (not res!2043859)) b!4804502))

(declare-fun m!5790054 () Bool)

(assert (=> d!1538930 m!5790054))

(declare-fun m!5790056 () Bool)

(assert (=> b!4804500 m!5790056))

(declare-fun m!5790058 () Bool)

(assert (=> b!4804500 m!5790058))

(assert (=> b!4804500 m!5790058))

(declare-fun m!5790060 () Bool)

(assert (=> b!4804500 m!5790060))

(assert (=> b!4804502 m!5790058))

(assert (=> b!4804502 m!5790058))

(assert (=> b!4804502 m!5790060))

(assert (=> b!4804169 d!1538930))

(declare-fun b!4804503 () Bool)

(declare-fun e!3000445 () Unit!141007)

(declare-fun Unit!141054 () Unit!141007)

(assert (=> b!4804503 (= e!3000445 Unit!141054)))

(declare-fun b!4804504 () Bool)

(declare-fun e!3000441 () Bool)

(assert (=> b!4804504 (= e!3000441 (not (contains!18022 (keys!19883 lt!1958560) key!5896)))))

(declare-fun b!4804505 () Bool)

(declare-fun e!3000440 () List!54483)

(assert (=> b!4804505 (= e!3000440 (keys!19883 lt!1958560))))

(declare-fun d!1538932 () Bool)

(declare-fun e!3000442 () Bool)

(assert (=> d!1538932 e!3000442))

(declare-fun res!2043860 () Bool)

(assert (=> d!1538932 (=> res!2043860 e!3000442)))

(assert (=> d!1538932 (= res!2043860 e!3000441)))

(declare-fun res!2043861 () Bool)

(assert (=> d!1538932 (=> (not res!2043861) (not e!3000441))))

(declare-fun lt!1958877 () Bool)

(assert (=> d!1538932 (= res!2043861 (not lt!1958877))))

(declare-fun lt!1958875 () Bool)

(assert (=> d!1538932 (= lt!1958877 lt!1958875)))

(declare-fun lt!1958872 () Unit!141007)

(declare-fun e!3000443 () Unit!141007)

(assert (=> d!1538932 (= lt!1958872 e!3000443)))

(declare-fun c!819015 () Bool)

(assert (=> d!1538932 (= c!819015 lt!1958875)))

(assert (=> d!1538932 (= lt!1958875 (containsKey!4067 (toList!7028 lt!1958560) key!5896))))

(assert (=> d!1538932 (= (contains!18018 lt!1958560 key!5896) lt!1958877)))

(declare-fun b!4804506 () Bool)

(declare-fun e!3000444 () Bool)

(assert (=> b!4804506 (= e!3000444 (contains!18022 (keys!19883 lt!1958560) key!5896))))

(declare-fun bm!335527 () Bool)

(declare-fun call!335532 () Bool)

(assert (=> bm!335527 (= call!335532 (contains!18022 e!3000440 key!5896))))

(declare-fun c!819014 () Bool)

(assert (=> bm!335527 (= c!819014 c!819015)))

(declare-fun b!4804507 () Bool)

(assert (=> b!4804507 (= e!3000442 e!3000444)))

(declare-fun res!2043862 () Bool)

(assert (=> b!4804507 (=> (not res!2043862) (not e!3000444))))

(assert (=> b!4804507 (= res!2043862 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958560) key!5896)))))

(declare-fun b!4804508 () Bool)

(assert (=> b!4804508 (= e!3000443 e!3000445)))

(declare-fun c!819013 () Bool)

(assert (=> b!4804508 (= c!819013 call!335532)))

(declare-fun b!4804509 () Bool)

(assert (=> b!4804509 (= e!3000440 (getKeysList!1110 (toList!7028 lt!1958560)))))

(declare-fun b!4804510 () Bool)

(declare-fun lt!1958878 () Unit!141007)

(assert (=> b!4804510 (= e!3000443 lt!1958878)))

(declare-fun lt!1958873 () Unit!141007)

(assert (=> b!4804510 (= lt!1958873 (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 lt!1958560) key!5896))))

(assert (=> b!4804510 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958560) key!5896))))

(declare-fun lt!1958876 () Unit!141007)

(assert (=> b!4804510 (= lt!1958876 lt!1958873)))

(assert (=> b!4804510 (= lt!1958878 (lemmaInListThenGetKeysListContains!1105 (toList!7028 lt!1958560) key!5896))))

(assert (=> b!4804510 call!335532))

(declare-fun b!4804511 () Bool)

(assert (=> b!4804511 false))

(declare-fun lt!1958871 () Unit!141007)

(declare-fun lt!1958874 () Unit!141007)

(assert (=> b!4804511 (= lt!1958871 lt!1958874)))

(assert (=> b!4804511 (containsKey!4067 (toList!7028 lt!1958560) key!5896)))

(assert (=> b!4804511 (= lt!1958874 (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 lt!1958560) key!5896))))

(declare-fun Unit!141055 () Unit!141007)

(assert (=> b!4804511 (= e!3000445 Unit!141055)))

(assert (= (and d!1538932 c!819015) b!4804510))

(assert (= (and d!1538932 (not c!819015)) b!4804508))

(assert (= (and b!4804508 c!819013) b!4804511))

(assert (= (and b!4804508 (not c!819013)) b!4804503))

(assert (= (or b!4804510 b!4804508) bm!335527))

(assert (= (and bm!335527 c!819014) b!4804509))

(assert (= (and bm!335527 (not c!819014)) b!4804505))

(assert (= (and d!1538932 res!2043861) b!4804504))

(assert (= (and d!1538932 (not res!2043860)) b!4804507))

(assert (= (and b!4804507 res!2043862) b!4804506))

(declare-fun m!5790062 () Bool)

(assert (=> b!4804505 m!5790062))

(assert (=> b!4804507 m!5790032))

(assert (=> b!4804507 m!5790032))

(declare-fun m!5790064 () Bool)

(assert (=> b!4804507 m!5790064))

(assert (=> b!4804506 m!5790062))

(assert (=> b!4804506 m!5790062))

(declare-fun m!5790066 () Bool)

(assert (=> b!4804506 m!5790066))

(assert (=> b!4804504 m!5790062))

(assert (=> b!4804504 m!5790062))

(assert (=> b!4804504 m!5790066))

(declare-fun m!5790068 () Bool)

(assert (=> bm!335527 m!5790068))

(declare-fun m!5790070 () Bool)

(assert (=> b!4804510 m!5790070))

(assert (=> b!4804510 m!5790032))

(assert (=> b!4804510 m!5790032))

(assert (=> b!4804510 m!5790064))

(declare-fun m!5790072 () Bool)

(assert (=> b!4804510 m!5790072))

(declare-fun m!5790074 () Bool)

(assert (=> b!4804511 m!5790074))

(declare-fun m!5790076 () Bool)

(assert (=> b!4804511 m!5790076))

(declare-fun m!5790078 () Bool)

(assert (=> b!4804509 m!5790078))

(assert (=> d!1538932 m!5790074))

(assert (=> b!4804169 d!1538932))

(declare-fun bs!1158774 () Bool)

(declare-fun d!1538934 () Bool)

(assert (= bs!1158774 (and d!1538934 d!1538900)))

(declare-fun lambda!233168 () Int)

(assert (=> bs!1158774 (= lambda!233168 lambda!233158)))

(declare-fun bs!1158775 () Bool)

(assert (= bs!1158775 (and d!1538934 d!1538926)))

(assert (=> bs!1158775 (= lambda!233168 lambda!233164)))

(declare-fun bs!1158776 () Bool)

(assert (= bs!1158776 (and d!1538934 d!1538928)))

(assert (=> bs!1158776 (= lambda!233168 lambda!233165)))

(declare-fun bs!1158777 () Bool)

(assert (= bs!1158777 (and d!1538934 d!1538902)))

(assert (=> bs!1158777 (= lambda!233168 lambda!233161)))

(declare-fun bs!1158778 () Bool)

(assert (= bs!1158778 (and d!1538934 d!1538894)))

(assert (=> bs!1158778 (= lambda!233168 lambda!233155)))

(declare-fun bs!1158779 () Bool)

(assert (= bs!1158779 (and d!1538934 start!496194)))

(assert (=> bs!1158779 (= lambda!233168 lambda!233061)))

(declare-fun bs!1158780 () Bool)

(assert (= bs!1158780 (and d!1538934 d!1538840)))

(assert (=> bs!1158780 (= lambda!233168 lambda!233080)))

(declare-fun bs!1158781 () Bool)

(assert (= bs!1158781 (and d!1538934 d!1538890)))

(assert (=> bs!1158781 (= lambda!233168 lambda!233154)))

(assert (=> d!1538934 (= (apply!13052 (extractMap!2501 (toList!7027 lt!1958557)) key!5896) value!3111)))

(declare-fun lt!1958881 () Unit!141007)

(declare-fun choose!34768 (ListLongMap!5449 K!15924 V!16170 Hashable!6974) Unit!141007)

(assert (=> d!1538934 (= lt!1958881 (choose!34768 lt!1958557 key!5896 value!3111 hashF!1559))))

(assert (=> d!1538934 (forall!12355 (toList!7027 lt!1958557) lambda!233168)))

(assert (=> d!1538934 (= (lemmaExtractMapPreservesMapping!46 lt!1958557 key!5896 value!3111 hashF!1559) lt!1958881)))

(declare-fun bs!1158782 () Bool)

(assert (= bs!1158782 d!1538934))

(assert (=> bs!1158782 m!5789542))

(assert (=> bs!1158782 m!5789542))

(declare-fun m!5790080 () Bool)

(assert (=> bs!1158782 m!5790080))

(declare-fun m!5790082 () Bool)

(assert (=> bs!1158782 m!5790082))

(declare-fun m!5790084 () Bool)

(assert (=> bs!1158782 m!5790084))

(assert (=> b!4804169 d!1538934))

(assert (=> b!4804169 d!1538894))

(declare-fun bs!1158783 () Bool)

(declare-fun d!1538936 () Bool)

(assert (= bs!1158783 (and d!1538936 d!1538900)))

(declare-fun lambda!233171 () Int)

(assert (=> bs!1158783 (not (= lambda!233171 lambda!233158))))

(declare-fun bs!1158784 () Bool)

(assert (= bs!1158784 (and d!1538936 d!1538926)))

(assert (=> bs!1158784 (not (= lambda!233171 lambda!233164))))

(declare-fun bs!1158785 () Bool)

(assert (= bs!1158785 (and d!1538936 d!1538928)))

(assert (=> bs!1158785 (not (= lambda!233171 lambda!233165))))

(declare-fun bs!1158786 () Bool)

(assert (= bs!1158786 (and d!1538936 d!1538902)))

(assert (=> bs!1158786 (not (= lambda!233171 lambda!233161))))

(declare-fun bs!1158787 () Bool)

(assert (= bs!1158787 (and d!1538936 d!1538894)))

(assert (=> bs!1158787 (not (= lambda!233171 lambda!233155))))

(declare-fun bs!1158788 () Bool)

(assert (= bs!1158788 (and d!1538936 start!496194)))

(assert (=> bs!1158788 (not (= lambda!233171 lambda!233061))))

(declare-fun bs!1158789 () Bool)

(assert (= bs!1158789 (and d!1538936 d!1538934)))

(assert (=> bs!1158789 (not (= lambda!233171 lambda!233168))))

(declare-fun bs!1158790 () Bool)

(assert (= bs!1158790 (and d!1538936 d!1538840)))

(assert (=> bs!1158790 (not (= lambda!233171 lambda!233080))))

(declare-fun bs!1158791 () Bool)

(assert (= bs!1158791 (and d!1538936 d!1538890)))

(assert (=> bs!1158791 (not (= lambda!233171 lambda!233154))))

(assert (=> d!1538936 true))

(assert (=> d!1538936 (= (allKeysSameHashInMap!2379 lm!2473 hashF!1559) (forall!12355 (toList!7027 lm!2473) lambda!233171))))

(declare-fun bs!1158792 () Bool)

(assert (= bs!1158792 d!1538936))

(declare-fun m!5790086 () Bool)

(assert (=> bs!1158792 m!5790086))

(assert (=> b!4804179 d!1538936))

(declare-fun d!1538938 () Bool)

(declare-fun res!2043867 () Bool)

(declare-fun e!3000450 () Bool)

(assert (=> d!1538938 (=> res!2043867 e!3000450)))

(assert (=> d!1538938 (= res!2043867 (and ((_ is Cons!54356) (_2!31827 (h!60789 (toList!7027 lm!2473)))) (= (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) key!5896)))))

(assert (=> d!1538938 (= (containsKey!4064 (_2!31827 (h!60789 (toList!7027 lm!2473))) key!5896) e!3000450)))

(declare-fun b!4804518 () Bool)

(declare-fun e!3000451 () Bool)

(assert (=> b!4804518 (= e!3000450 e!3000451)))

(declare-fun res!2043868 () Bool)

(assert (=> b!4804518 (=> (not res!2043868) (not e!3000451))))

(assert (=> b!4804518 (= res!2043868 ((_ is Cons!54356) (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(declare-fun b!4804519 () Bool)

(assert (=> b!4804519 (= e!3000451 (containsKey!4064 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) key!5896))))

(assert (= (and d!1538938 (not res!2043867)) b!4804518))

(assert (= (and b!4804518 res!2043868) b!4804519))

(declare-fun m!5790088 () Bool)

(assert (=> b!4804519 m!5790088))

(assert (=> b!4804168 d!1538938))

(declare-fun b!4804524 () Bool)

(declare-fun e!3000454 () Bool)

(declare-fun tp!1358511 () Bool)

(declare-fun tp!1358512 () Bool)

(assert (=> b!4804524 (= e!3000454 (and tp!1358511 tp!1358512))))

(assert (=> b!4804178 (= tp!1358500 e!3000454)))

(assert (= (and b!4804178 ((_ is Cons!54357) (toList!7027 lm!2473))) b!4804524))

(declare-fun b_lambda!187937 () Bool)

(assert (= b_lambda!187935 (or start!496194 b_lambda!187937)))

(declare-fun bs!1158793 () Bool)

(declare-fun d!1538940 () Bool)

(assert (= bs!1158793 (and d!1538940 start!496194)))

(assert (=> bs!1158793 (= (dynLambda!22103 lambda!233061 (h!60789 (toList!7027 lm!2473))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(assert (=> bs!1158793 m!5789546))

(assert (=> b!4804466 d!1538940))

(check-sat (not b!4804269) (not b!4804267) (not b!4804519) (not d!1538932) (not d!1538906) (not d!1538870) (not b!4804505) (not bm!335524) (not b!4804449) (not d!1538934) (not b!4804496) (not bm!335526) (not b!4804264) (not b!4804417) (not b!4804524) (not d!1538920) (not b!4804447) (not b!4804498) (not b!4804484) (not d!1538894) (not b!4804504) (not b!4804460) (not b!4804502) (not d!1538822) (not b!4804510) (not d!1538930) (not b!4804459) (not b!4804360) (not d!1538928) (not b!4804354) (not b!4804490) (not d!1538840) (not b!4804246) (not b!4804244) (not b!4804357) (not b!4804342) (not bm!335502) (not d!1538924) (not b!4804467) (not b!4804461) (not d!1538926) (not b!4804424) (not bm!335527) (not d!1538890) (not b!4804509) (not b!4804488) (not d!1538910) (not b!4804250) (not b!4804263) (not d!1538936) (not b!4804427) (not d!1538900) (not d!1538912) (not b!4804245) (not b!4804440) (not b_lambda!187937) (not bm!335506) (not b!4804506) (not d!1538916) (not b!4804422) (not b!4804425) (not b!4804438) (not b!4804500) (not b!4804511) (not b!4804249) (not b!4804428) (not b!4804491) (not d!1538866) (not b!4804265) (not b!4804359) (not b!4804262) (not b!4804361) (not b!4804247) (not d!1538892) (not d!1538914) (not d!1538836) (not b!4804355) (not b!4804251) (not b!4804268) (not b!4804423) tp_is_empty!33757 (not bm!335523) (not b!4804430) (not d!1538902) (not b!4804452) (not d!1538918) (not b!4804497) (not b!4804356) (not bs!1158793) (not d!1538896) (not b!4804507) (not b!4804414) (not bm!335501) (not b!4804416) (not b!4804429) (not b!4804489) (not bm!335525) tp_is_empty!33759)
(check-sat)
(get-model)

(declare-fun d!1538942 () Bool)

(declare-fun isEmpty!29526 (Option!13218) Bool)

(assert (=> d!1538942 (= (isDefined!10359 (getValueByKey!2419 (toList!7027 lm!2473) lt!1958563)) (not (isEmpty!29526 (getValueByKey!2419 (toList!7027 lm!2473) lt!1958563))))))

(declare-fun bs!1158794 () Bool)

(assert (= bs!1158794 d!1538942))

(assert (=> bs!1158794 m!5789976))

(declare-fun m!5790090 () Bool)

(assert (=> bs!1158794 m!5790090))

(assert (=> b!4804440 d!1538942))

(declare-fun b!4804535 () Bool)

(declare-fun e!3000460 () Option!13218)

(assert (=> b!4804535 (= e!3000460 (getValueByKey!2419 (t!361931 (toList!7027 lm!2473)) lt!1958563))))

(declare-fun b!4804536 () Bool)

(assert (=> b!4804536 (= e!3000460 None!13217)))

(declare-fun b!4804534 () Bool)

(declare-fun e!3000459 () Option!13218)

(assert (=> b!4804534 (= e!3000459 e!3000460)))

(declare-fun c!819021 () Bool)

(assert (=> b!4804534 (= c!819021 (and ((_ is Cons!54357) (toList!7027 lm!2473)) (not (= (_1!31827 (h!60789 (toList!7027 lm!2473))) lt!1958563))))))

(declare-fun b!4804533 () Bool)

(assert (=> b!4804533 (= e!3000459 (Some!13217 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(declare-fun d!1538944 () Bool)

(declare-fun c!819020 () Bool)

(assert (=> d!1538944 (= c!819020 (and ((_ is Cons!54357) (toList!7027 lm!2473)) (= (_1!31827 (h!60789 (toList!7027 lm!2473))) lt!1958563)))))

(assert (=> d!1538944 (= (getValueByKey!2419 (toList!7027 lm!2473) lt!1958563) e!3000459)))

(assert (= (and d!1538944 c!819020) b!4804533))

(assert (= (and d!1538944 (not c!819020)) b!4804534))

(assert (= (and b!4804534 c!819021) b!4804535))

(assert (= (and b!4804534 (not c!819021)) b!4804536))

(declare-fun m!5790092 () Bool)

(assert (=> b!4804535 m!5790092))

(assert (=> b!4804440 d!1538944))

(declare-fun bs!1158795 () Bool)

(declare-fun b!4804541 () Bool)

(assert (= bs!1158795 (and b!4804541 b!4804418)))

(declare-fun lambda!233172 () Int)

(assert (=> bs!1158795 (= (= (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958559) (= lambda!233172 lambda!233148))))

(declare-fun bs!1158796 () Bool)

(assert (= bs!1158796 (and b!4804541 b!4804416)))

(assert (=> bs!1158796 (= (= (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958559) (= lambda!233172 lambda!233149))))

(assert (=> bs!1158796 (= (= (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958815) (= lambda!233172 lambda!233150))))

(declare-fun bs!1158797 () Bool)

(assert (= bs!1158797 (and b!4804541 d!1538870)))

(assert (=> bs!1158797 (= (= (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958820) (= lambda!233172 lambda!233151))))

(assert (=> b!4804541 true))

(declare-fun bs!1158798 () Bool)

(declare-fun b!4804539 () Bool)

(assert (= bs!1158798 (and b!4804539 b!4804416)))

(declare-fun lambda!233173 () Int)

(assert (=> bs!1158798 (= (= (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958815) (= lambda!233173 lambda!233150))))

(declare-fun bs!1158799 () Bool)

(assert (= bs!1158799 (and b!4804539 d!1538870)))

(assert (=> bs!1158799 (= (= (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958820) (= lambda!233173 lambda!233151))))

(assert (=> bs!1158798 (= (= (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958559) (= lambda!233173 lambda!233149))))

(declare-fun bs!1158800 () Bool)

(assert (= bs!1158800 (and b!4804539 b!4804541)))

(assert (=> bs!1158800 (= lambda!233173 lambda!233172)))

(declare-fun bs!1158801 () Bool)

(assert (= bs!1158801 (and b!4804539 b!4804418)))

(assert (=> bs!1158801 (= (= (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958559) (= lambda!233173 lambda!233148))))

(assert (=> b!4804539 true))

(declare-fun lt!1958888 () ListMap!6499)

(declare-fun lambda!233174 () Int)

(assert (=> bs!1158798 (= (= lt!1958888 lt!1958815) (= lambda!233174 lambda!233150))))

(assert (=> bs!1158799 (= (= lt!1958888 lt!1958820) (= lambda!233174 lambda!233151))))

(assert (=> b!4804539 (= (= lt!1958888 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233174 lambda!233173))))

(assert (=> bs!1158798 (= (= lt!1958888 lt!1958559) (= lambda!233174 lambda!233149))))

(assert (=> bs!1158800 (= (= lt!1958888 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233174 lambda!233172))))

(assert (=> bs!1158801 (= (= lt!1958888 lt!1958559) (= lambda!233174 lambda!233148))))

(assert (=> b!4804539 true))

(declare-fun bs!1158802 () Bool)

(declare-fun d!1538946 () Bool)

(assert (= bs!1158802 (and d!1538946 b!4804416)))

(declare-fun lambda!233175 () Int)

(declare-fun lt!1958893 () ListMap!6499)

(assert (=> bs!1158802 (= (= lt!1958893 lt!1958815) (= lambda!233175 lambda!233150))))

(declare-fun bs!1158803 () Bool)

(assert (= bs!1158803 (and d!1538946 b!4804539)))

(assert (=> bs!1158803 (= (= lt!1958893 lt!1958888) (= lambda!233175 lambda!233174))))

(declare-fun bs!1158804 () Bool)

(assert (= bs!1158804 (and d!1538946 d!1538870)))

(assert (=> bs!1158804 (= (= lt!1958893 lt!1958820) (= lambda!233175 lambda!233151))))

(assert (=> bs!1158803 (= (= lt!1958893 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233175 lambda!233173))))

(assert (=> bs!1158802 (= (= lt!1958893 lt!1958559) (= lambda!233175 lambda!233149))))

(declare-fun bs!1158805 () Bool)

(assert (= bs!1158805 (and d!1538946 b!4804541)))

(assert (=> bs!1158805 (= (= lt!1958893 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233175 lambda!233172))))

(declare-fun bs!1158806 () Bool)

(assert (= bs!1158806 (and d!1538946 b!4804418)))

(assert (=> bs!1158806 (= (= lt!1958893 lt!1958559) (= lambda!233175 lambda!233148))))

(assert (=> d!1538946 true))

(declare-fun b!4804537 () Bool)

(declare-fun e!3000462 () Bool)

(assert (=> b!4804537 (= e!3000462 (invariantList!1764 (toList!7028 lt!1958893)))))

(declare-fun c!819022 () Bool)

(declare-fun call!335533 () Bool)

(declare-fun bm!335528 () Bool)

(assert (=> bm!335528 (= call!335533 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (ite c!819022 lambda!233172 lambda!233174)))))

(declare-fun call!335534 () Bool)

(declare-fun bm!335529 () Bool)

(assert (=> bm!335529 (= call!335534 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (ite c!819022 lambda!233172 lambda!233174)))))

(declare-fun b!4804538 () Bool)

(declare-fun e!3000463 () Bool)

(assert (=> b!4804538 (= e!3000463 call!335534)))

(assert (=> d!1538946 e!3000462))

(declare-fun res!2043870 () Bool)

(assert (=> d!1538946 (=> (not res!2043870) (not e!3000462))))

(assert (=> d!1538946 (= res!2043870 (forall!12357 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))) lambda!233175))))

(declare-fun e!3000461 () ListMap!6499)

(assert (=> d!1538946 (= lt!1958893 e!3000461)))

(assert (=> d!1538946 (= c!819022 ((_ is Nil!54356) (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473))))))))

(assert (=> d!1538946 (noDuplicateKeys!2372 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))))))

(assert (=> d!1538946 (= (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) lt!1958893)))

(declare-fun bm!335530 () Bool)

(declare-fun call!335535 () Unit!141007)

(assert (=> bm!335530 (= call!335535 (lemmaContainsAllItsOwnKeys!969 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))))))

(assert (=> b!4804539 (= e!3000461 lt!1958888)))

(declare-fun lt!1958894 () ListMap!6499)

(assert (=> b!4804539 (= lt!1958894 (+!2513 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) (h!60788 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))))))))

(assert (=> b!4804539 (= lt!1958888 (addToMapMapFromBucket!1741 (t!361930 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473))))) (+!2513 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) (h!60788 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473))))))))))

(declare-fun lt!1958899 () Unit!141007)

(assert (=> b!4804539 (= lt!1958899 call!335535)))

(assert (=> b!4804539 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) lambda!233173)))

(declare-fun lt!1958889 () Unit!141007)

(assert (=> b!4804539 (= lt!1958889 lt!1958899)))

(assert (=> b!4804539 (forall!12357 (toList!7028 lt!1958894) lambda!233174)))

(declare-fun lt!1958885 () Unit!141007)

(declare-fun Unit!141056 () Unit!141007)

(assert (=> b!4804539 (= lt!1958885 Unit!141056)))

(assert (=> b!4804539 (forall!12357 (t!361930 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473))))) lambda!233174)))

(declare-fun lt!1958892 () Unit!141007)

(declare-fun Unit!141057 () Unit!141007)

(assert (=> b!4804539 (= lt!1958892 Unit!141057)))

(declare-fun lt!1958886 () Unit!141007)

(declare-fun Unit!141058 () Unit!141007)

(assert (=> b!4804539 (= lt!1958886 Unit!141058)))

(declare-fun lt!1958890 () Unit!141007)

(assert (=> b!4804539 (= lt!1958890 (forallContained!4227 (toList!7028 lt!1958894) lambda!233174 (h!60788 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))))))))

(assert (=> b!4804539 (contains!18018 lt!1958894 (_1!31826 (h!60788 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))))))))

(declare-fun lt!1958902 () Unit!141007)

(declare-fun Unit!141059 () Unit!141007)

(assert (=> b!4804539 (= lt!1958902 Unit!141059)))

(assert (=> b!4804539 (contains!18018 lt!1958888 (_1!31826 (h!60788 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))))))))

(declare-fun lt!1958895 () Unit!141007)

(declare-fun Unit!141060 () Unit!141007)

(assert (=> b!4804539 (= lt!1958895 Unit!141060)))

(assert (=> b!4804539 (forall!12357 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))) lambda!233174)))

(declare-fun lt!1958897 () Unit!141007)

(declare-fun Unit!141061 () Unit!141007)

(assert (=> b!4804539 (= lt!1958897 Unit!141061)))

(assert (=> b!4804539 (forall!12357 (toList!7028 lt!1958894) lambda!233174)))

(declare-fun lt!1958882 () Unit!141007)

(declare-fun Unit!141062 () Unit!141007)

(assert (=> b!4804539 (= lt!1958882 Unit!141062)))

(declare-fun lt!1958887 () Unit!141007)

(declare-fun Unit!141063 () Unit!141007)

(assert (=> b!4804539 (= lt!1958887 Unit!141063)))

(declare-fun lt!1958891 () Unit!141007)

(assert (=> b!4804539 (= lt!1958891 (addForallContainsKeyThenBeforeAdding!968 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958888 (_1!31826 (h!60788 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))))) (_2!31826 (h!60788 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473))))))))))

(assert (=> b!4804539 call!335533))

(declare-fun lt!1958896 () Unit!141007)

(assert (=> b!4804539 (= lt!1958896 lt!1958891)))

(assert (=> b!4804539 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) lambda!233174)))

(declare-fun lt!1958898 () Unit!141007)

(declare-fun Unit!141064 () Unit!141007)

(assert (=> b!4804539 (= lt!1958898 Unit!141064)))

(declare-fun res!2043871 () Bool)

(assert (=> b!4804539 (= res!2043871 (forall!12357 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))) lambda!233174))))

(assert (=> b!4804539 (=> (not res!2043871) (not e!3000463))))

(assert (=> b!4804539 e!3000463))

(declare-fun lt!1958900 () Unit!141007)

(declare-fun Unit!141065 () Unit!141007)

(assert (=> b!4804539 (= lt!1958900 Unit!141065)))

(declare-fun b!4804540 () Bool)

(declare-fun res!2043869 () Bool)

(assert (=> b!4804540 (=> (not res!2043869) (not e!3000462))))

(assert (=> b!4804540 (= res!2043869 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) lambda!233175))))

(assert (=> b!4804541 (= e!3000461 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))))))

(declare-fun lt!1958883 () Unit!141007)

(assert (=> b!4804541 (= lt!1958883 call!335535)))

(assert (=> b!4804541 call!335533))

(declare-fun lt!1958901 () Unit!141007)

(assert (=> b!4804541 (= lt!1958901 lt!1958883)))

(assert (=> b!4804541 call!335534))

(declare-fun lt!1958884 () Unit!141007)

(declare-fun Unit!141066 () Unit!141007)

(assert (=> b!4804541 (= lt!1958884 Unit!141066)))

(assert (= (and d!1538946 c!819022) b!4804541))

(assert (= (and d!1538946 (not c!819022)) b!4804539))

(assert (= (and b!4804539 res!2043871) b!4804538))

(assert (= (or b!4804541 b!4804539) bm!335528))

(assert (= (or b!4804541 b!4804538) bm!335529))

(assert (= (or b!4804541 b!4804539) bm!335530))

(assert (= (and d!1538946 res!2043870) b!4804540))

(assert (= (and b!4804540 res!2043869) b!4804537))

(declare-fun m!5790106 () Bool)

(assert (=> b!4804540 m!5790106))

(assert (=> bm!335530 m!5790050))

(declare-fun m!5790108 () Bool)

(assert (=> bm!335530 m!5790108))

(declare-fun m!5790110 () Bool)

(assert (=> b!4804537 m!5790110))

(declare-fun m!5790112 () Bool)

(assert (=> d!1538946 m!5790112))

(declare-fun m!5790114 () Bool)

(assert (=> d!1538946 m!5790114))

(declare-fun m!5790116 () Bool)

(assert (=> bm!335529 m!5790116))

(declare-fun m!5790118 () Bool)

(assert (=> b!4804539 m!5790118))

(declare-fun m!5790120 () Bool)

(assert (=> b!4804539 m!5790120))

(assert (=> b!4804539 m!5790050))

(declare-fun m!5790122 () Bool)

(assert (=> b!4804539 m!5790122))

(declare-fun m!5790124 () Bool)

(assert (=> b!4804539 m!5790124))

(assert (=> b!4804539 m!5790120))

(declare-fun m!5790126 () Bool)

(assert (=> b!4804539 m!5790126))

(declare-fun m!5790128 () Bool)

(assert (=> b!4804539 m!5790128))

(declare-fun m!5790130 () Bool)

(assert (=> b!4804539 m!5790130))

(assert (=> b!4804539 m!5790050))

(declare-fun m!5790132 () Bool)

(assert (=> b!4804539 m!5790132))

(declare-fun m!5790134 () Bool)

(assert (=> b!4804539 m!5790134))

(declare-fun m!5790136 () Bool)

(assert (=> b!4804539 m!5790136))

(assert (=> b!4804539 m!5790128))

(assert (=> b!4804539 m!5790122))

(declare-fun m!5790138 () Bool)

(assert (=> b!4804539 m!5790138))

(assert (=> bm!335528 m!5790116))

(assert (=> b!4804498 d!1538946))

(declare-fun bs!1158807 () Bool)

(declare-fun d!1538956 () Bool)

(assert (= bs!1158807 (and d!1538956 d!1538900)))

(declare-fun lambda!233176 () Int)

(assert (=> bs!1158807 (= lambda!233176 lambda!233158)))

(declare-fun bs!1158808 () Bool)

(assert (= bs!1158808 (and d!1538956 d!1538926)))

(assert (=> bs!1158808 (= lambda!233176 lambda!233164)))

(declare-fun bs!1158809 () Bool)

(assert (= bs!1158809 (and d!1538956 d!1538928)))

(assert (=> bs!1158809 (= lambda!233176 lambda!233165)))

(declare-fun bs!1158810 () Bool)

(assert (= bs!1158810 (and d!1538956 d!1538902)))

(assert (=> bs!1158810 (= lambda!233176 lambda!233161)))

(declare-fun bs!1158811 () Bool)

(assert (= bs!1158811 (and d!1538956 d!1538894)))

(assert (=> bs!1158811 (= lambda!233176 lambda!233155)))

(declare-fun bs!1158812 () Bool)

(assert (= bs!1158812 (and d!1538956 start!496194)))

(assert (=> bs!1158812 (= lambda!233176 lambda!233061)))

(declare-fun bs!1158813 () Bool)

(assert (= bs!1158813 (and d!1538956 d!1538936)))

(assert (=> bs!1158813 (not (= lambda!233176 lambda!233171))))

(declare-fun bs!1158814 () Bool)

(assert (= bs!1158814 (and d!1538956 d!1538934)))

(assert (=> bs!1158814 (= lambda!233176 lambda!233168)))

(declare-fun bs!1158815 () Bool)

(assert (= bs!1158815 (and d!1538956 d!1538840)))

(assert (=> bs!1158815 (= lambda!233176 lambda!233080)))

(declare-fun bs!1158816 () Bool)

(assert (= bs!1158816 (and d!1538956 d!1538890)))

(assert (=> bs!1158816 (= lambda!233176 lambda!233154)))

(declare-fun lt!1958905 () ListMap!6499)

(assert (=> d!1538956 (invariantList!1764 (toList!7028 lt!1958905))))

(declare-fun e!3000471 () ListMap!6499)

(assert (=> d!1538956 (= lt!1958905 e!3000471)))

(declare-fun c!819023 () Bool)

(assert (=> d!1538956 (= c!819023 ((_ is Cons!54357) (t!361931 (t!361931 (toList!7027 lm!2473)))))))

(assert (=> d!1538956 (forall!12355 (t!361931 (t!361931 (toList!7027 lm!2473))) lambda!233176)))

(assert (=> d!1538956 (= (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473)))) lt!1958905)))

(declare-fun b!4804549 () Bool)

(assert (=> b!4804549 (= e!3000471 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (t!361931 (t!361931 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (t!361931 (t!361931 (toList!7027 lm!2473)))))))))

(declare-fun b!4804550 () Bool)

(assert (=> b!4804550 (= e!3000471 (ListMap!6500 Nil!54356))))

(assert (= (and d!1538956 c!819023) b!4804549))

(assert (= (and d!1538956 (not c!819023)) b!4804550))

(declare-fun m!5790140 () Bool)

(assert (=> d!1538956 m!5790140))

(declare-fun m!5790142 () Bool)

(assert (=> d!1538956 m!5790142))

(declare-fun m!5790144 () Bool)

(assert (=> b!4804549 m!5790144))

(assert (=> b!4804549 m!5790144))

(declare-fun m!5790146 () Bool)

(assert (=> b!4804549 m!5790146))

(assert (=> b!4804498 d!1538956))

(declare-fun b!4804570 () Bool)

(assert (=> b!4804570 true))

(declare-fun d!1538958 () Bool)

(declare-fun e!3000486 () Bool)

(assert (=> d!1538958 e!3000486))

(declare-fun res!2043897 () Bool)

(assert (=> d!1538958 (=> (not res!2043897) (not e!3000486))))

(declare-fun lt!1958909 () List!54483)

(declare-fun noDuplicate!940 (List!54483) Bool)

(assert (=> d!1538958 (= res!2043897 (noDuplicate!940 lt!1958909))))

(assert (=> d!1538958 (= lt!1958909 (getKeysList!1110 (toList!7028 lt!1958560)))))

(assert (=> d!1538958 (= (keys!19883 lt!1958560) lt!1958909)))

(declare-fun b!4804569 () Bool)

(declare-fun res!2043899 () Bool)

(assert (=> b!4804569 (=> (not res!2043899) (not e!3000486))))

(declare-fun length!736 (List!54483) Int)

(declare-fun length!737 (List!54480) Int)

(assert (=> b!4804569 (= res!2043899 (= (length!736 lt!1958909) (length!737 (toList!7028 lt!1958560))))))

(declare-fun res!2043898 () Bool)

(assert (=> b!4804570 (=> (not res!2043898) (not e!3000486))))

(declare-fun lambda!233181 () Int)

(declare-fun forall!12358 (List!54483 Int) Bool)

(assert (=> b!4804570 (= res!2043898 (forall!12358 lt!1958909 lambda!233181))))

(declare-fun lambda!233182 () Int)

(declare-fun b!4804571 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9758 (List!54483) (InoxSet K!15924))

(declare-fun map!12288 (List!54480 Int) List!54483)

(assert (=> b!4804571 (= e!3000486 (= (content!9758 lt!1958909) (content!9758 (map!12288 (toList!7028 lt!1958560) lambda!233182))))))

(assert (= (and d!1538958 res!2043897) b!4804569))

(assert (= (and b!4804569 res!2043899) b!4804570))

(assert (= (and b!4804570 res!2043898) b!4804571))

(declare-fun m!5790156 () Bool)

(assert (=> d!1538958 m!5790156))

(assert (=> d!1538958 m!5790078))

(declare-fun m!5790158 () Bool)

(assert (=> b!4804569 m!5790158))

(declare-fun m!5790160 () Bool)

(assert (=> b!4804569 m!5790160))

(declare-fun m!5790162 () Bool)

(assert (=> b!4804570 m!5790162))

(declare-fun m!5790164 () Bool)

(assert (=> b!4804571 m!5790164))

(declare-fun m!5790166 () Bool)

(assert (=> b!4804571 m!5790166))

(assert (=> b!4804571 m!5790166))

(declare-fun m!5790168 () Bool)

(assert (=> b!4804571 m!5790168))

(assert (=> b!4804505 d!1538958))

(declare-fun d!1538964 () Bool)

(declare-fun res!2043904 () Bool)

(declare-fun e!3000491 () Bool)

(assert (=> d!1538964 (=> res!2043904 e!3000491)))

(assert (=> d!1538964 (= res!2043904 (or ((_ is Nil!54357) (toList!7027 lm!2473)) ((_ is Nil!54357) (t!361931 (toList!7027 lm!2473)))))))

(assert (=> d!1538964 (= (isStrictlySorted!910 (toList!7027 lm!2473)) e!3000491)))

(declare-fun b!4804578 () Bool)

(declare-fun e!3000492 () Bool)

(assert (=> b!4804578 (= e!3000491 e!3000492)))

(declare-fun res!2043905 () Bool)

(assert (=> b!4804578 (=> (not res!2043905) (not e!3000492))))

(assert (=> b!4804578 (= res!2043905 (bvslt (_1!31827 (h!60789 (toList!7027 lm!2473))) (_1!31827 (h!60789 (t!361931 (toList!7027 lm!2473))))))))

(declare-fun b!4804579 () Bool)

(assert (=> b!4804579 (= e!3000492 (isStrictlySorted!910 (t!361931 (toList!7027 lm!2473))))))

(assert (= (and d!1538964 (not res!2043904)) b!4804578))

(assert (= (and b!4804578 res!2043905) b!4804579))

(declare-fun m!5790174 () Bool)

(assert (=> b!4804579 m!5790174))

(assert (=> d!1538910 d!1538964))

(declare-fun d!1538968 () Bool)

(declare-fun lt!1958915 () Bool)

(assert (=> d!1538968 (= lt!1958915 (select (content!9758 e!3000379) key!5896))))

(declare-fun e!3000501 () Bool)

(assert (=> d!1538968 (= lt!1958915 e!3000501)))

(declare-fun res!2043914 () Bool)

(assert (=> d!1538968 (=> (not res!2043914) (not e!3000501))))

(assert (=> d!1538968 (= res!2043914 ((_ is Cons!54359) e!3000379))))

(assert (=> d!1538968 (= (contains!18022 e!3000379 key!5896) lt!1958915)))

(declare-fun b!4804588 () Bool)

(declare-fun e!3000502 () Bool)

(assert (=> b!4804588 (= e!3000501 e!3000502)))

(declare-fun res!2043915 () Bool)

(assert (=> b!4804588 (=> res!2043915 e!3000502)))

(assert (=> b!4804588 (= res!2043915 (= (h!60791 e!3000379) key!5896))))

(declare-fun b!4804589 () Bool)

(assert (=> b!4804589 (= e!3000502 (contains!18022 (t!361933 e!3000379) key!5896))))

(assert (= (and d!1538968 res!2043914) b!4804588))

(assert (= (and b!4804588 (not res!2043915)) b!4804589))

(declare-fun m!5790176 () Bool)

(assert (=> d!1538968 m!5790176))

(declare-fun m!5790178 () Bool)

(assert (=> d!1538968 m!5790178))

(declare-fun m!5790180 () Bool)

(assert (=> b!4804589 m!5790180))

(assert (=> bm!335526 d!1538968))

(assert (=> b!4804447 d!1538938))

(declare-fun d!1538970 () Bool)

(declare-fun noDuplicatedKeys!458 (List!54480) Bool)

(assert (=> d!1538970 (= (invariantList!1764 (toList!7028 lt!1958668)) (noDuplicatedKeys!458 (toList!7028 lt!1958668)))))

(declare-fun bs!1158818 () Bool)

(assert (= bs!1158818 d!1538970))

(declare-fun m!5790182 () Bool)

(assert (=> bs!1158818 m!5790182))

(assert (=> d!1538840 d!1538970))

(declare-fun d!1538972 () Bool)

(declare-fun res!2043918 () Bool)

(declare-fun e!3000505 () Bool)

(assert (=> d!1538972 (=> res!2043918 e!3000505)))

(assert (=> d!1538972 (= res!2043918 ((_ is Nil!54357) (toList!7027 lm!2473)))))

(assert (=> d!1538972 (= (forall!12355 (toList!7027 lm!2473) lambda!233080) e!3000505)))

(declare-fun b!4804592 () Bool)

(declare-fun e!3000506 () Bool)

(assert (=> b!4804592 (= e!3000505 e!3000506)))

(declare-fun res!2043919 () Bool)

(assert (=> b!4804592 (=> (not res!2043919) (not e!3000506))))

(assert (=> b!4804592 (= res!2043919 (dynLambda!22103 lambda!233080 (h!60789 (toList!7027 lm!2473))))))

(declare-fun b!4804593 () Bool)

(assert (=> b!4804593 (= e!3000506 (forall!12355 (t!361931 (toList!7027 lm!2473)) lambda!233080))))

(assert (= (and d!1538972 (not res!2043918)) b!4804592))

(assert (= (and b!4804592 res!2043919) b!4804593))

(declare-fun b_lambda!187941 () Bool)

(assert (=> (not b_lambda!187941) (not b!4804592)))

(declare-fun m!5790184 () Bool)

(assert (=> b!4804592 m!5790184))

(declare-fun m!5790188 () Bool)

(assert (=> b!4804593 m!5790188))

(assert (=> d!1538840 d!1538972))

(declare-fun d!1538974 () Bool)

(assert (=> d!1538974 (isDefined!10359 (getValueByKey!2419 (toList!7027 lm!2473) lt!1958563))))

(declare-fun lt!1958918 () Unit!141007)

(declare-fun choose!34772 (List!54481 (_ BitVec 64)) Unit!141007)

(assert (=> d!1538974 (= lt!1958918 (choose!34772 (toList!7027 lm!2473) lt!1958563))))

(declare-fun e!3000511 () Bool)

(assert (=> d!1538974 e!3000511))

(declare-fun res!2043923 () Bool)

(assert (=> d!1538974 (=> (not res!2043923) (not e!3000511))))

(assert (=> d!1538974 (= res!2043923 (isStrictlySorted!910 (toList!7027 lm!2473)))))

(assert (=> d!1538974 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2210 (toList!7027 lm!2473) lt!1958563) lt!1958918)))

(declare-fun b!4804599 () Bool)

(assert (=> b!4804599 (= e!3000511 (containsKey!4068 (toList!7027 lm!2473) lt!1958563))))

(assert (= (and d!1538974 res!2043923) b!4804599))

(assert (=> d!1538974 m!5789976))

(assert (=> d!1538974 m!5789976))

(assert (=> d!1538974 m!5789978))

(declare-fun m!5790198 () Bool)

(assert (=> d!1538974 m!5790198))

(assert (=> d!1538974 m!5790010))

(assert (=> b!4804599 m!5789972))

(assert (=> b!4804438 d!1538974))

(assert (=> b!4804438 d!1538942))

(assert (=> b!4804438 d!1538944))

(declare-fun d!1538982 () Bool)

(declare-fun res!2043924 () Bool)

(declare-fun e!3000512 () Bool)

(assert (=> d!1538982 (=> res!2043924 e!3000512)))

(assert (=> d!1538982 (= res!2043924 ((_ is Nil!54357) (toList!7027 lm!2473)))))

(assert (=> d!1538982 (= (forall!12355 (toList!7027 lm!2473) lambda!233171) e!3000512)))

(declare-fun b!4804600 () Bool)

(declare-fun e!3000513 () Bool)

(assert (=> b!4804600 (= e!3000512 e!3000513)))

(declare-fun res!2043925 () Bool)

(assert (=> b!4804600 (=> (not res!2043925) (not e!3000513))))

(assert (=> b!4804600 (= res!2043925 (dynLambda!22103 lambda!233171 (h!60789 (toList!7027 lm!2473))))))

(declare-fun b!4804601 () Bool)

(assert (=> b!4804601 (= e!3000513 (forall!12355 (t!361931 (toList!7027 lm!2473)) lambda!233171))))

(assert (= (and d!1538982 (not res!2043924)) b!4804600))

(assert (= (and b!4804600 res!2043925) b!4804601))

(declare-fun b_lambda!187943 () Bool)

(assert (=> (not b_lambda!187943) (not b!4804600)))

(declare-fun m!5790200 () Bool)

(assert (=> b!4804600 m!5790200))

(declare-fun m!5790202 () Bool)

(assert (=> b!4804601 m!5790202))

(assert (=> d!1538936 d!1538982))

(declare-fun bs!1158820 () Bool)

(declare-fun b!4804606 () Bool)

(assert (= bs!1158820 (and b!4804606 b!4804416)))

(declare-fun lambda!233183 () Int)

(assert (=> bs!1158820 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958815) (= lambda!233183 lambda!233150))))

(declare-fun bs!1158821 () Bool)

(assert (= bs!1158821 (and b!4804606 b!4804539)))

(assert (=> bs!1158821 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958888) (= lambda!233183 lambda!233174))))

(assert (=> bs!1158821 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233183 lambda!233173))))

(assert (=> bs!1158820 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958559) (= lambda!233183 lambda!233149))))

(declare-fun bs!1158822 () Bool)

(assert (= bs!1158822 (and b!4804606 b!4804541)))

(assert (=> bs!1158822 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233183 lambda!233172))))

(declare-fun bs!1158823 () Bool)

(assert (= bs!1158823 (and b!4804606 b!4804418)))

(assert (=> bs!1158823 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958559) (= lambda!233183 lambda!233148))))

(declare-fun bs!1158824 () Bool)

(assert (= bs!1158824 (and b!4804606 d!1538870)))

(assert (=> bs!1158824 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958820) (= lambda!233183 lambda!233151))))

(declare-fun bs!1158825 () Bool)

(assert (= bs!1158825 (and b!4804606 d!1538946)))

(assert (=> bs!1158825 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958893) (= lambda!233183 lambda!233175))))

(assert (=> b!4804606 true))

(declare-fun bs!1158826 () Bool)

(declare-fun b!4804604 () Bool)

(assert (= bs!1158826 (and b!4804604 b!4804416)))

(declare-fun lambda!233184 () Int)

(assert (=> bs!1158826 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958815) (= lambda!233184 lambda!233150))))

(declare-fun bs!1158827 () Bool)

(assert (= bs!1158827 (and b!4804604 b!4804539)))

(assert (=> bs!1158827 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958888) (= lambda!233184 lambda!233174))))

(assert (=> bs!1158827 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233184 lambda!233173))))

(assert (=> bs!1158826 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958559) (= lambda!233184 lambda!233149))))

(declare-fun bs!1158828 () Bool)

(assert (= bs!1158828 (and b!4804604 b!4804541)))

(assert (=> bs!1158828 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233184 lambda!233172))))

(declare-fun bs!1158829 () Bool)

(assert (= bs!1158829 (and b!4804604 b!4804418)))

(assert (=> bs!1158829 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958559) (= lambda!233184 lambda!233148))))

(declare-fun bs!1158830 () Bool)

(assert (= bs!1158830 (and b!4804604 b!4804606)))

(assert (=> bs!1158830 (= lambda!233184 lambda!233183)))

(declare-fun bs!1158831 () Bool)

(assert (= bs!1158831 (and b!4804604 d!1538870)))

(assert (=> bs!1158831 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958820) (= lambda!233184 lambda!233151))))

(declare-fun bs!1158832 () Bool)

(assert (= bs!1158832 (and b!4804604 d!1538946)))

(assert (=> bs!1158832 (= (= (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958893) (= lambda!233184 lambda!233175))))

(assert (=> b!4804604 true))

(declare-fun lambda!233185 () Int)

(declare-fun lt!1958925 () ListMap!6499)

(assert (=> bs!1158826 (= (= lt!1958925 lt!1958815) (= lambda!233185 lambda!233150))))

(assert (=> bs!1158827 (= (= lt!1958925 lt!1958888) (= lambda!233185 lambda!233174))))

(assert (=> bs!1158827 (= (= lt!1958925 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233185 lambda!233173))))

(assert (=> bs!1158826 (= (= lt!1958925 lt!1958559) (= lambda!233185 lambda!233149))))

(assert (=> bs!1158828 (= (= lt!1958925 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233185 lambda!233172))))

(assert (=> bs!1158829 (= (= lt!1958925 lt!1958559) (= lambda!233185 lambda!233148))))

(assert (=> bs!1158830 (= (= lt!1958925 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233185 lambda!233183))))

(assert (=> b!4804604 (= (= lt!1958925 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233185 lambda!233184))))

(assert (=> bs!1158831 (= (= lt!1958925 lt!1958820) (= lambda!233185 lambda!233151))))

(assert (=> bs!1158832 (= (= lt!1958925 lt!1958893) (= lambda!233185 lambda!233175))))

(assert (=> b!4804604 true))

(declare-fun bs!1158833 () Bool)

(declare-fun d!1538984 () Bool)

(assert (= bs!1158833 (and d!1538984 b!4804416)))

(declare-fun lt!1958930 () ListMap!6499)

(declare-fun lambda!233186 () Int)

(assert (=> bs!1158833 (= (= lt!1958930 lt!1958815) (= lambda!233186 lambda!233150))))

(declare-fun bs!1158834 () Bool)

(assert (= bs!1158834 (and d!1538984 b!4804539)))

(assert (=> bs!1158834 (= (= lt!1958930 lt!1958888) (= lambda!233186 lambda!233174))))

(assert (=> bs!1158834 (= (= lt!1958930 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233186 lambda!233173))))

(assert (=> bs!1158833 (= (= lt!1958930 lt!1958559) (= lambda!233186 lambda!233149))))

(declare-fun bs!1158835 () Bool)

(assert (= bs!1158835 (and d!1538984 b!4804604)))

(assert (=> bs!1158835 (= (= lt!1958930 lt!1958925) (= lambda!233186 lambda!233185))))

(declare-fun bs!1158836 () Bool)

(assert (= bs!1158836 (and d!1538984 b!4804541)))

(assert (=> bs!1158836 (= (= lt!1958930 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233186 lambda!233172))))

(declare-fun bs!1158837 () Bool)

(assert (= bs!1158837 (and d!1538984 b!4804418)))

(assert (=> bs!1158837 (= (= lt!1958930 lt!1958559) (= lambda!233186 lambda!233148))))

(declare-fun bs!1158838 () Bool)

(assert (= bs!1158838 (and d!1538984 b!4804606)))

(assert (=> bs!1158838 (= (= lt!1958930 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233186 lambda!233183))))

(assert (=> bs!1158835 (= (= lt!1958930 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233186 lambda!233184))))

(declare-fun bs!1158839 () Bool)

(assert (= bs!1158839 (and d!1538984 d!1538870)))

(assert (=> bs!1158839 (= (= lt!1958930 lt!1958820) (= lambda!233186 lambda!233151))))

(declare-fun bs!1158840 () Bool)

(assert (= bs!1158840 (and d!1538984 d!1538946)))

(assert (=> bs!1158840 (= (= lt!1958930 lt!1958893) (= lambda!233186 lambda!233175))))

(assert (=> d!1538984 true))

(declare-fun b!4804602 () Bool)

(declare-fun e!3000515 () Bool)

(assert (=> b!4804602 (= e!3000515 (invariantList!1764 (toList!7028 lt!1958930)))))

(declare-fun c!819025 () Bool)

(declare-fun bm!335531 () Bool)

(declare-fun call!335536 () Bool)

(assert (=> bm!335531 (= call!335536 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (ite c!819025 lambda!233183 lambda!233185)))))

(declare-fun bm!335532 () Bool)

(declare-fun call!335537 () Bool)

(assert (=> bm!335532 (= call!335537 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (ite c!819025 lambda!233183 lambda!233185)))))

(declare-fun b!4804603 () Bool)

(declare-fun e!3000516 () Bool)

(assert (=> b!4804603 (= e!3000516 call!335537)))

(assert (=> d!1538984 e!3000515))

(declare-fun res!2043927 () Bool)

(assert (=> d!1538984 (=> (not res!2043927) (not e!3000515))))

(assert (=> d!1538984 (= res!2043927 (forall!12357 (_2!31827 (h!60789 (toList!7027 lm!2473))) lambda!233186))))

(declare-fun e!3000514 () ListMap!6499)

(assert (=> d!1538984 (= lt!1958930 e!3000514)))

(assert (=> d!1538984 (= c!819025 ((_ is Nil!54356) (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(assert (=> d!1538984 (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lm!2473))))))

(assert (=> d!1538984 (= (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) lt!1958930)))

(declare-fun bm!335533 () Bool)

(declare-fun call!335538 () Unit!141007)

(assert (=> bm!335533 (= call!335538 (lemmaContainsAllItsOwnKeys!969 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))))))

(assert (=> b!4804604 (= e!3000514 lt!1958925)))

(declare-fun lt!1958931 () ListMap!6499)

(assert (=> b!4804604 (= lt!1958931 (+!2513 (extractMap!2501 (t!361931 (toList!7027 lm!2473))) (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (=> b!4804604 (= lt!1958925 (addToMapMapFromBucket!1741 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) (+!2513 (extractMap!2501 (t!361931 (toList!7027 lm!2473))) (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun lt!1958936 () Unit!141007)

(assert (=> b!4804604 (= lt!1958936 call!335538)))

(assert (=> b!4804604 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) lambda!233184)))

(declare-fun lt!1958926 () Unit!141007)

(assert (=> b!4804604 (= lt!1958926 lt!1958936)))

(assert (=> b!4804604 (forall!12357 (toList!7028 lt!1958931) lambda!233185)))

(declare-fun lt!1958922 () Unit!141007)

(declare-fun Unit!141067 () Unit!141007)

(assert (=> b!4804604 (= lt!1958922 Unit!141067)))

(assert (=> b!4804604 (forall!12357 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) lambda!233185)))

(declare-fun lt!1958929 () Unit!141007)

(declare-fun Unit!141068 () Unit!141007)

(assert (=> b!4804604 (= lt!1958929 Unit!141068)))

(declare-fun lt!1958923 () Unit!141007)

(declare-fun Unit!141069 () Unit!141007)

(assert (=> b!4804604 (= lt!1958923 Unit!141069)))

(declare-fun lt!1958927 () Unit!141007)

(assert (=> b!4804604 (= lt!1958927 (forallContained!4227 (toList!7028 lt!1958931) lambda!233185 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (=> b!4804604 (contains!18018 lt!1958931 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun lt!1958939 () Unit!141007)

(declare-fun Unit!141070 () Unit!141007)

(assert (=> b!4804604 (= lt!1958939 Unit!141070)))

(assert (=> b!4804604 (contains!18018 lt!1958925 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun lt!1958932 () Unit!141007)

(declare-fun Unit!141071 () Unit!141007)

(assert (=> b!4804604 (= lt!1958932 Unit!141071)))

(assert (=> b!4804604 (forall!12357 (_2!31827 (h!60789 (toList!7027 lm!2473))) lambda!233185)))

(declare-fun lt!1958934 () Unit!141007)

(declare-fun Unit!141072 () Unit!141007)

(assert (=> b!4804604 (= lt!1958934 Unit!141072)))

(assert (=> b!4804604 (forall!12357 (toList!7028 lt!1958931) lambda!233185)))

(declare-fun lt!1958919 () Unit!141007)

(declare-fun Unit!141073 () Unit!141007)

(assert (=> b!4804604 (= lt!1958919 Unit!141073)))

(declare-fun lt!1958924 () Unit!141007)

(declare-fun Unit!141074 () Unit!141007)

(assert (=> b!4804604 (= lt!1958924 Unit!141074)))

(declare-fun lt!1958928 () Unit!141007)

(assert (=> b!4804604 (= lt!1958928 (addForallContainsKeyThenBeforeAdding!968 (extractMap!2501 (t!361931 (toList!7027 lm!2473))) lt!1958925 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> b!4804604 call!335536))

(declare-fun lt!1958933 () Unit!141007)

(assert (=> b!4804604 (= lt!1958933 lt!1958928)))

(assert (=> b!4804604 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) lambda!233185)))

(declare-fun lt!1958935 () Unit!141007)

(declare-fun Unit!141075 () Unit!141007)

(assert (=> b!4804604 (= lt!1958935 Unit!141075)))

(declare-fun res!2043928 () Bool)

(assert (=> b!4804604 (= res!2043928 (forall!12357 (_2!31827 (h!60789 (toList!7027 lm!2473))) lambda!233185))))

(assert (=> b!4804604 (=> (not res!2043928) (not e!3000516))))

(assert (=> b!4804604 e!3000516))

(declare-fun lt!1958937 () Unit!141007)

(declare-fun Unit!141076 () Unit!141007)

(assert (=> b!4804604 (= lt!1958937 Unit!141076)))

(declare-fun b!4804605 () Bool)

(declare-fun res!2043926 () Bool)

(assert (=> b!4804605 (=> (not res!2043926) (not e!3000515))))

(assert (=> b!4804605 (= res!2043926 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) lambda!233186))))

(assert (=> b!4804606 (= e!3000514 (extractMap!2501 (t!361931 (toList!7027 lm!2473))))))

(declare-fun lt!1958920 () Unit!141007)

(assert (=> b!4804606 (= lt!1958920 call!335538)))

(assert (=> b!4804606 call!335536))

(declare-fun lt!1958938 () Unit!141007)

(assert (=> b!4804606 (= lt!1958938 lt!1958920)))

(assert (=> b!4804606 call!335537))

(declare-fun lt!1958921 () Unit!141007)

(declare-fun Unit!141077 () Unit!141007)

(assert (=> b!4804606 (= lt!1958921 Unit!141077)))

(assert (= (and d!1538984 c!819025) b!4804606))

(assert (= (and d!1538984 (not c!819025)) b!4804604))

(assert (= (and b!4804604 res!2043928) b!4804603))

(assert (= (or b!4804606 b!4804604) bm!335531))

(assert (= (or b!4804606 b!4804603) bm!335532))

(assert (= (or b!4804606 b!4804604) bm!335533))

(assert (= (and d!1538984 res!2043927) b!4804605))

(assert (= (and b!4804605 res!2043926) b!4804602))

(declare-fun m!5790208 () Bool)

(assert (=> b!4804605 m!5790208))

(assert (=> bm!335533 m!5789552))

(declare-fun m!5790210 () Bool)

(assert (=> bm!335533 m!5790210))

(declare-fun m!5790212 () Bool)

(assert (=> b!4804602 m!5790212))

(declare-fun m!5790214 () Bool)

(assert (=> d!1538984 m!5790214))

(assert (=> d!1538984 m!5789546))

(declare-fun m!5790216 () Bool)

(assert (=> bm!335532 m!5790216))

(declare-fun m!5790218 () Bool)

(assert (=> b!4804604 m!5790218))

(declare-fun m!5790220 () Bool)

(assert (=> b!4804604 m!5790220))

(assert (=> b!4804604 m!5789552))

(declare-fun m!5790222 () Bool)

(assert (=> b!4804604 m!5790222))

(declare-fun m!5790224 () Bool)

(assert (=> b!4804604 m!5790224))

(assert (=> b!4804604 m!5790220))

(declare-fun m!5790226 () Bool)

(assert (=> b!4804604 m!5790226))

(declare-fun m!5790228 () Bool)

(assert (=> b!4804604 m!5790228))

(declare-fun m!5790230 () Bool)

(assert (=> b!4804604 m!5790230))

(assert (=> b!4804604 m!5789552))

(declare-fun m!5790232 () Bool)

(assert (=> b!4804604 m!5790232))

(declare-fun m!5790234 () Bool)

(assert (=> b!4804604 m!5790234))

(declare-fun m!5790236 () Bool)

(assert (=> b!4804604 m!5790236))

(assert (=> b!4804604 m!5790228))

(assert (=> b!4804604 m!5790222))

(declare-fun m!5790238 () Bool)

(assert (=> b!4804604 m!5790238))

(assert (=> bm!335531 m!5790216))

(assert (=> b!4804342 d!1538984))

(assert (=> b!4804342 d!1538928))

(declare-fun bs!1158841 () Bool)

(declare-fun b!4804622 () Bool)

(assert (= bs!1158841 (and b!4804622 b!4804570)))

(declare-fun lambda!233187 () Int)

(assert (=> bs!1158841 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (toList!7028 lt!1958560)) (= lambda!233187 lambda!233181))))

(assert (=> b!4804622 true))

(declare-fun bs!1158842 () Bool)

(declare-fun b!4804623 () Bool)

(assert (= bs!1158842 (and b!4804623 b!4804571)))

(declare-fun lambda!233188 () Int)

(assert (=> bs!1158842 (= lambda!233188 lambda!233182)))

(declare-fun d!1538990 () Bool)

(declare-fun e!3000525 () Bool)

(assert (=> d!1538990 e!3000525))

(declare-fun res!2043931 () Bool)

(assert (=> d!1538990 (=> (not res!2043931) (not e!3000525))))

(declare-fun lt!1958942 () List!54483)

(assert (=> d!1538990 (= res!2043931 (noDuplicate!940 lt!1958942))))

(assert (=> d!1538990 (= lt!1958942 (getKeysList!1110 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))))

(assert (=> d!1538990 (= (keys!19883 (extractMap!2501 (toList!7027 lt!1958557))) lt!1958942)))

(declare-fun b!4804621 () Bool)

(declare-fun res!2043933 () Bool)

(assert (=> b!4804621 (=> (not res!2043933) (not e!3000525))))

(assert (=> b!4804621 (= res!2043933 (= (length!736 lt!1958942) (length!737 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))))))

(declare-fun res!2043932 () Bool)

(assert (=> b!4804622 (=> (not res!2043932) (not e!3000525))))

(assert (=> b!4804622 (= res!2043932 (forall!12358 lt!1958942 lambda!233187))))

(assert (=> b!4804623 (= e!3000525 (= (content!9758 lt!1958942) (content!9758 (map!12288 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) lambda!233188))))))

(assert (= (and d!1538990 res!2043931) b!4804621))

(assert (= (and b!4804621 res!2043933) b!4804622))

(assert (= (and b!4804622 res!2043932) b!4804623))

(declare-fun m!5790240 () Bool)

(assert (=> d!1538990 m!5790240))

(assert (=> d!1538990 m!5789962))

(declare-fun m!5790242 () Bool)

(assert (=> b!4804621 m!5790242))

(declare-fun m!5790244 () Bool)

(assert (=> b!4804621 m!5790244))

(declare-fun m!5790246 () Bool)

(assert (=> b!4804622 m!5790246))

(declare-fun m!5790248 () Bool)

(assert (=> b!4804623 m!5790248))

(declare-fun m!5790250 () Bool)

(assert (=> b!4804623 m!5790250))

(assert (=> b!4804623 m!5790250))

(declare-fun m!5790252 () Bool)

(assert (=> b!4804623 m!5790252))

(assert (=> b!4804423 d!1538990))

(declare-fun d!1538992 () Bool)

(declare-fun res!2043934 () Bool)

(declare-fun e!3000528 () Bool)

(assert (=> d!1538992 (=> res!2043934 e!3000528)))

(declare-fun e!3000527 () Bool)

(assert (=> d!1538992 (= res!2043934 e!3000527)))

(declare-fun res!2043935 () Bool)

(assert (=> d!1538992 (=> (not res!2043935) (not e!3000527))))

(assert (=> d!1538992 (= res!2043935 ((_ is Cons!54357) (t!361931 (toList!7027 lm!2473))))))

(assert (=> d!1538992 (= (containsKeyBiggerList!616 (t!361931 (toList!7027 lm!2473)) key!5896) e!3000528)))

(declare-fun b!4804624 () Bool)

(assert (=> b!4804624 (= e!3000527 (containsKey!4064 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))) key!5896))))

(declare-fun b!4804625 () Bool)

(declare-fun e!3000526 () Bool)

(assert (=> b!4804625 (= e!3000528 e!3000526)))

(declare-fun res!2043936 () Bool)

(assert (=> b!4804625 (=> (not res!2043936) (not e!3000526))))

(assert (=> b!4804625 (= res!2043936 ((_ is Cons!54357) (t!361931 (toList!7027 lm!2473))))))

(declare-fun b!4804626 () Bool)

(assert (=> b!4804626 (= e!3000526 (containsKeyBiggerList!616 (t!361931 (t!361931 (toList!7027 lm!2473))) key!5896))))

(assert (= (and d!1538992 res!2043935) b!4804624))

(assert (= (and d!1538992 (not res!2043934)) b!4804625))

(assert (= (and b!4804625 res!2043936) b!4804626))

(declare-fun m!5790258 () Bool)

(assert (=> b!4804624 m!5790258))

(declare-fun m!5790260 () Bool)

(assert (=> b!4804626 m!5790260))

(assert (=> b!4804449 d!1538992))

(declare-fun d!1538996 () Bool)

(declare-fun c!819032 () Bool)

(declare-fun e!3000530 () Bool)

(assert (=> d!1538996 (= c!819032 e!3000530)))

(declare-fun res!2043937 () Bool)

(assert (=> d!1538996 (=> (not res!2043937) (not e!3000530))))

(assert (=> d!1538996 (= res!2043937 ((_ is Cons!54357) (t!361931 (toList!7027 lm!2473))))))

(declare-fun e!3000529 () V!16170)

(assert (=> d!1538996 (= (getValue!162 (t!361931 (toList!7027 lm!2473)) key!5896) e!3000529)))

(declare-fun b!4804629 () Bool)

(assert (=> b!4804629 (= e!3000530 (containsKey!4064 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))) key!5896))))

(declare-fun b!4804627 () Bool)

(assert (=> b!4804627 (= e!3000529 (_2!31826 (get!18580 (getPair!946 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473)))) key!5896))))))

(declare-fun b!4804628 () Bool)

(assert (=> b!4804628 (= e!3000529 (getValue!162 (t!361931 (t!361931 (toList!7027 lm!2473))) key!5896))))

(assert (= (and d!1538996 res!2043937) b!4804629))

(assert (= (and d!1538996 c!819032) b!4804627))

(assert (= (and d!1538996 (not c!819032)) b!4804628))

(assert (=> b!4804629 m!5790258))

(declare-fun m!5790264 () Bool)

(assert (=> b!4804627 m!5790264))

(assert (=> b!4804627 m!5790264))

(declare-fun m!5790266 () Bool)

(assert (=> b!4804627 m!5790266))

(declare-fun m!5790268 () Bool)

(assert (=> b!4804628 m!5790268))

(assert (=> b!4804460 d!1538996))

(declare-fun d!1539000 () Bool)

(declare-fun res!2043942 () Bool)

(declare-fun e!3000537 () Bool)

(assert (=> d!1539000 (=> res!2043942 e!3000537)))

(assert (=> d!1539000 (= res!2043942 (and ((_ is Cons!54356) (toList!7028 lt!1958559)) (= (_1!31826 (h!60788 (toList!7028 lt!1958559))) key!5896)))))

(assert (=> d!1539000 (= (containsKey!4067 (toList!7028 lt!1958559) key!5896) e!3000537)))

(declare-fun b!4804638 () Bool)

(declare-fun e!3000538 () Bool)

(assert (=> b!4804638 (= e!3000537 e!3000538)))

(declare-fun res!2043943 () Bool)

(assert (=> b!4804638 (=> (not res!2043943) (not e!3000538))))

(assert (=> b!4804638 (= res!2043943 ((_ is Cons!54356) (toList!7028 lt!1958559)))))

(declare-fun b!4804639 () Bool)

(assert (=> b!4804639 (= e!3000538 (containsKey!4067 (t!361930 (toList!7028 lt!1958559)) key!5896))))

(assert (= (and d!1539000 (not res!2043942)) b!4804638))

(assert (= (and b!4804638 res!2043943) b!4804639))

(declare-fun m!5790272 () Bool)

(assert (=> b!4804639 m!5790272))

(assert (=> d!1538822 d!1539000))

(declare-fun d!1539004 () Bool)

(assert (=> d!1539004 (= (invariantList!1764 (toList!7028 lt!1958866)) (noDuplicatedKeys!458 (toList!7028 lt!1958866)))))

(declare-fun bs!1158845 () Bool)

(assert (= bs!1158845 d!1539004))

(declare-fun m!5790274 () Bool)

(assert (=> bs!1158845 m!5790274))

(assert (=> d!1538928 d!1539004))

(declare-fun d!1539006 () Bool)

(declare-fun res!2043944 () Bool)

(declare-fun e!3000539 () Bool)

(assert (=> d!1539006 (=> res!2043944 e!3000539)))

(assert (=> d!1539006 (= res!2043944 ((_ is Nil!54357) (t!361931 (toList!7027 lm!2473))))))

(assert (=> d!1539006 (= (forall!12355 (t!361931 (toList!7027 lm!2473)) lambda!233165) e!3000539)))

(declare-fun b!4804640 () Bool)

(declare-fun e!3000540 () Bool)

(assert (=> b!4804640 (= e!3000539 e!3000540)))

(declare-fun res!2043945 () Bool)

(assert (=> b!4804640 (=> (not res!2043945) (not e!3000540))))

(assert (=> b!4804640 (= res!2043945 (dynLambda!22103 lambda!233165 (h!60789 (t!361931 (toList!7027 lm!2473)))))))

(declare-fun b!4804641 () Bool)

(assert (=> b!4804641 (= e!3000540 (forall!12355 (t!361931 (t!361931 (toList!7027 lm!2473))) lambda!233165))))

(assert (= (and d!1539006 (not res!2043944)) b!4804640))

(assert (= (and b!4804640 res!2043945) b!4804641))

(declare-fun b_lambda!187945 () Bool)

(assert (=> (not b_lambda!187945) (not b!4804640)))

(declare-fun m!5790276 () Bool)

(assert (=> b!4804640 m!5790276))

(declare-fun m!5790278 () Bool)

(assert (=> b!4804641 m!5790278))

(assert (=> d!1538928 d!1539006))

(declare-fun d!1539008 () Bool)

(declare-fun res!2043946 () Bool)

(declare-fun e!3000541 () Bool)

(assert (=> d!1539008 (=> res!2043946 e!3000541)))

(assert (=> d!1539008 (= res!2043946 (not ((_ is Cons!54356) (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> d!1539008 (= (noDuplicateKeys!2372 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))) e!3000541)))

(declare-fun b!4804642 () Bool)

(declare-fun e!3000542 () Bool)

(assert (=> b!4804642 (= e!3000541 e!3000542)))

(declare-fun res!2043947 () Bool)

(assert (=> b!4804642 (=> (not res!2043947) (not e!3000542))))

(assert (=> b!4804642 (= res!2043947 (not (containsKey!4064 (t!361930 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (_1!31826 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))))

(declare-fun b!4804643 () Bool)

(assert (=> b!4804643 (= e!3000542 (noDuplicateKeys!2372 (t!361930 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (= (and d!1539008 (not res!2043946)) b!4804642))

(assert (= (and b!4804642 res!2043947) b!4804643))

(declare-fun m!5790280 () Bool)

(assert (=> b!4804642 m!5790280))

(declare-fun m!5790282 () Bool)

(assert (=> b!4804643 m!5790282))

(assert (=> b!4804497 d!1539008))

(declare-fun bs!1158847 () Bool)

(declare-fun b!4804686 () Bool)

(assert (= bs!1158847 (and b!4804686 b!4804570)))

(declare-fun lambda!233201 () Int)

(assert (=> bs!1158847 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (toList!7028 lt!1958560)) (= lambda!233201 lambda!233181))))

(declare-fun bs!1158848 () Bool)

(assert (= bs!1158848 (and b!4804686 b!4804622)))

(assert (=> bs!1158848 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233201 lambda!233187))))

(assert (=> b!4804686 true))

(declare-fun bs!1158849 () Bool)

(declare-fun b!4804687 () Bool)

(assert (= bs!1158849 (and b!4804687 b!4804570)))

(declare-fun lambda!233202 () Int)

(assert (=> bs!1158849 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (toList!7028 lt!1958560)) (= lambda!233202 lambda!233181))))

(declare-fun bs!1158850 () Bool)

(assert (= bs!1158850 (and b!4804687 b!4804622)))

(assert (=> bs!1158850 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233202 lambda!233187))))

(declare-fun bs!1158851 () Bool)

(assert (= bs!1158851 (and b!4804687 b!4804686)))

(assert (=> bs!1158851 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233202 lambda!233201))))

(assert (=> b!4804687 true))

(declare-fun bs!1158852 () Bool)

(declare-fun b!4804693 () Bool)

(assert (= bs!1158852 (and b!4804693 b!4804570)))

(declare-fun lambda!233204 () Int)

(assert (=> bs!1158852 (= (= (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) (toList!7028 lt!1958560)) (= lambda!233204 lambda!233181))))

(declare-fun bs!1158853 () Bool)

(assert (= bs!1158853 (and b!4804693 b!4804622)))

(assert (=> bs!1158853 (= (= (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233204 lambda!233187))))

(declare-fun bs!1158854 () Bool)

(assert (= bs!1158854 (and b!4804693 b!4804686)))

(assert (=> bs!1158854 (= (= (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233204 lambda!233201))))

(declare-fun bs!1158855 () Bool)

(assert (= bs!1158855 (and b!4804693 b!4804687)))

(assert (=> bs!1158855 (= (= (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233204 lambda!233202))))

(assert (=> b!4804693 true))

(declare-fun bs!1158856 () Bool)

(declare-fun b!4804692 () Bool)

(assert (= bs!1158856 (and b!4804692 b!4804571)))

(declare-fun lambda!233206 () Int)

(assert (=> bs!1158856 (= lambda!233206 lambda!233182)))

(declare-fun bs!1158857 () Bool)

(assert (= bs!1158857 (and b!4804692 b!4804623)))

(assert (=> bs!1158857 (= lambda!233206 lambda!233188)))

(assert (=> b!4804686 false))

(declare-fun lt!1958965 () Unit!141007)

(declare-fun forallContained!4229 (List!54483 Int K!15924) Unit!141007)

(assert (=> b!4804686 (= lt!1958965 (forallContained!4229 (getKeysList!1110 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) lambda!233201 (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))))))

(declare-fun e!3000566 () Unit!141007)

(declare-fun Unit!141082 () Unit!141007)

(assert (=> b!4804686 (= e!3000566 Unit!141082)))

(declare-fun e!3000567 () List!54483)

(assert (=> b!4804687 (= e!3000567 (Cons!54359 (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (getKeysList!1110 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))))))

(declare-fun c!819049 () Bool)

(assert (=> b!4804687 (= c!819049 (containsKey!4067 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))))))

(declare-fun lt!1958963 () Unit!141007)

(declare-fun e!3000565 () Unit!141007)

(assert (=> b!4804687 (= lt!1958963 e!3000565)))

(declare-fun c!819047 () Bool)

(assert (=> b!4804687 (= c!819047 (contains!18022 (getKeysList!1110 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))))))

(declare-fun lt!1958964 () Unit!141007)

(assert (=> b!4804687 (= lt!1958964 e!3000566)))

(declare-fun lt!1958967 () List!54483)

(assert (=> b!4804687 (= lt!1958967 (getKeysList!1110 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))))))

(declare-fun lt!1958968 () Unit!141007)

(declare-fun lemmaForallContainsAddHeadPreserves!356 (List!54480 List!54483 tuple2!57064) Unit!141007)

(assert (=> b!4804687 (= lt!1958968 (lemmaForallContainsAddHeadPreserves!356 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) lt!1958967 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))))))

(assert (=> b!4804687 (forall!12358 lt!1958967 lambda!233202)))

(declare-fun lt!1958966 () Unit!141007)

(assert (=> b!4804687 (= lt!1958966 lt!1958968)))

(declare-fun b!4804688 () Bool)

(declare-fun Unit!141083 () Unit!141007)

(assert (=> b!4804688 (= e!3000565 Unit!141083)))

(declare-fun b!4804689 () Bool)

(assert (=> b!4804689 false))

(declare-fun Unit!141084 () Unit!141007)

(assert (=> b!4804689 (= e!3000565 Unit!141084)))

(declare-fun d!1539010 () Bool)

(declare-fun e!3000568 () Bool)

(assert (=> d!1539010 e!3000568))

(declare-fun res!2043968 () Bool)

(assert (=> d!1539010 (=> (not res!2043968) (not e!3000568))))

(declare-fun lt!1958969 () List!54483)

(assert (=> d!1539010 (= res!2043968 (noDuplicate!940 lt!1958969))))

(assert (=> d!1539010 (= lt!1958969 e!3000567)))

(declare-fun c!819048 () Bool)

(assert (=> d!1539010 (= c!819048 ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))))

(assert (=> d!1539010 (invariantList!1764 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))))

(assert (=> d!1539010 (= (getKeysList!1110 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) lt!1958969)))

(declare-fun b!4804690 () Bool)

(declare-fun res!2043967 () Bool)

(assert (=> b!4804690 (=> (not res!2043967) (not e!3000568))))

(assert (=> b!4804690 (= res!2043967 (= (length!736 lt!1958969) (length!737 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))))))

(declare-fun b!4804691 () Bool)

(assert (=> b!4804691 (= e!3000567 Nil!54359)))

(assert (=> b!4804692 (= e!3000568 (= (content!9758 lt!1958969) (content!9758 (map!12288 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) lambda!233206))))))

(declare-fun res!2043966 () Bool)

(assert (=> b!4804693 (=> (not res!2043966) (not e!3000568))))

(assert (=> b!4804693 (= res!2043966 (forall!12358 lt!1958969 lambda!233204))))

(declare-fun b!4804694 () Bool)

(declare-fun Unit!141085 () Unit!141007)

(assert (=> b!4804694 (= e!3000566 Unit!141085)))

(assert (= (and d!1539010 c!819048) b!4804687))

(assert (= (and d!1539010 (not c!819048)) b!4804691))

(assert (= (and b!4804687 c!819049) b!4804689))

(assert (= (and b!4804687 (not c!819049)) b!4804688))

(assert (= (and b!4804687 c!819047) b!4804686))

(assert (= (and b!4804687 (not c!819047)) b!4804694))

(assert (= (and d!1539010 res!2043968) b!4804690))

(assert (= (and b!4804690 res!2043967) b!4804693))

(assert (= (and b!4804693 res!2043966) b!4804692))

(declare-fun m!5790314 () Bool)

(assert (=> d!1539010 m!5790314))

(declare-fun m!5790316 () Bool)

(assert (=> d!1539010 m!5790316))

(declare-fun m!5790320 () Bool)

(assert (=> b!4804686 m!5790320))

(assert (=> b!4804686 m!5790320))

(declare-fun m!5790324 () Bool)

(assert (=> b!4804686 m!5790324))

(declare-fun m!5790326 () Bool)

(assert (=> b!4804687 m!5790326))

(assert (=> b!4804687 m!5790320))

(declare-fun m!5790332 () Bool)

(assert (=> b!4804687 m!5790332))

(assert (=> b!4804687 m!5790320))

(declare-fun m!5790340 () Bool)

(assert (=> b!4804687 m!5790340))

(declare-fun m!5790342 () Bool)

(assert (=> b!4804687 m!5790342))

(declare-fun m!5790344 () Bool)

(assert (=> b!4804692 m!5790344))

(declare-fun m!5790346 () Bool)

(assert (=> b!4804692 m!5790346))

(assert (=> b!4804692 m!5790346))

(declare-fun m!5790348 () Bool)

(assert (=> b!4804692 m!5790348))

(declare-fun m!5790352 () Bool)

(assert (=> b!4804693 m!5790352))

(declare-fun m!5790354 () Bool)

(assert (=> b!4804690 m!5790354))

(declare-fun m!5790356 () Bool)

(assert (=> b!4804690 m!5790356))

(assert (=> b!4804267 d!1539010))

(declare-fun d!1539036 () Bool)

(declare-fun res!2043978 () Bool)

(declare-fun e!3000577 () Bool)

(assert (=> d!1539036 (=> res!2043978 e!3000577)))

(assert (=> d!1539036 (= res!2043978 ((_ is Nil!54357) (t!361931 (toList!7027 lm!2473))))))

(assert (=> d!1539036 (= (forall!12355 (t!361931 (toList!7027 lm!2473)) lambda!233061) e!3000577)))

(declare-fun b!4804712 () Bool)

(declare-fun e!3000578 () Bool)

(assert (=> b!4804712 (= e!3000577 e!3000578)))

(declare-fun res!2043979 () Bool)

(assert (=> b!4804712 (=> (not res!2043979) (not e!3000578))))

(assert (=> b!4804712 (= res!2043979 (dynLambda!22103 lambda!233061 (h!60789 (t!361931 (toList!7027 lm!2473)))))))

(declare-fun b!4804713 () Bool)

(assert (=> b!4804713 (= e!3000578 (forall!12355 (t!361931 (t!361931 (toList!7027 lm!2473))) lambda!233061))))

(assert (= (and d!1539036 (not res!2043978)) b!4804712))

(assert (= (and b!4804712 res!2043979) b!4804713))

(declare-fun b_lambda!187947 () Bool)

(assert (=> (not b_lambda!187947) (not b!4804712)))

(declare-fun m!5790366 () Bool)

(assert (=> b!4804712 m!5790366))

(declare-fun m!5790368 () Bool)

(assert (=> b!4804713 m!5790368))

(assert (=> b!4804467 d!1539036))

(declare-fun d!1539040 () Bool)

(declare-fun res!2043980 () Bool)

(declare-fun e!3000579 () Bool)

(assert (=> d!1539040 (=> res!2043980 e!3000579)))

(assert (=> d!1539040 (= res!2043980 (and ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) key!5896)))))

(assert (=> d!1539040 (= (containsKey!4067 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896) e!3000579)))

(declare-fun b!4804714 () Bool)

(declare-fun e!3000580 () Bool)

(assert (=> b!4804714 (= e!3000579 e!3000580)))

(declare-fun res!2043981 () Bool)

(assert (=> b!4804714 (=> (not res!2043981) (not e!3000580))))

(assert (=> b!4804714 (= res!2043981 ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))))

(declare-fun b!4804715 () Bool)

(assert (=> b!4804715 (= e!3000580 (containsKey!4067 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) key!5896))))

(assert (= (and d!1539040 (not res!2043980)) b!4804714))

(assert (= (and b!4804714 res!2043981) b!4804715))

(declare-fun m!5790370 () Bool)

(assert (=> b!4804715 m!5790370))

(assert (=> b!4804269 d!1539040))

(declare-fun d!1539042 () Bool)

(assert (=> d!1539042 (containsKey!4067 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896)))

(declare-fun lt!1958975 () Unit!141007)

(declare-fun choose!34776 (List!54480 K!15924) Unit!141007)

(assert (=> d!1539042 (= lt!1958975 (choose!34776 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(assert (=> d!1539042 (invariantList!1764 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))))

(assert (=> d!1539042 (= (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896) lt!1958975)))

(declare-fun bs!1158860 () Bool)

(assert (= bs!1158860 d!1539042))

(assert (=> bs!1158860 m!5789678))

(declare-fun m!5790372 () Bool)

(assert (=> bs!1158860 m!5790372))

(assert (=> bs!1158860 m!5790316))

(assert (=> b!4804269 d!1539042))

(declare-fun bs!1158861 () Bool)

(declare-fun b!4804720 () Bool)

(assert (= bs!1158861 (and b!4804720 b!4804416)))

(declare-fun lambda!233207 () Int)

(assert (=> bs!1158861 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958815) (= lambda!233207 lambda!233150))))

(declare-fun bs!1158862 () Bool)

(assert (= bs!1158862 (and b!4804720 b!4804539)))

(assert (=> bs!1158862 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958888) (= lambda!233207 lambda!233174))))

(assert (=> bs!1158862 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233207 lambda!233173))))

(declare-fun bs!1158863 () Bool)

(assert (= bs!1158863 (and b!4804720 d!1538984)))

(assert (=> bs!1158863 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958930) (= lambda!233207 lambda!233186))))

(assert (=> bs!1158861 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958559) (= lambda!233207 lambda!233149))))

(declare-fun bs!1158864 () Bool)

(assert (= bs!1158864 (and b!4804720 b!4804604)))

(assert (=> bs!1158864 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958925) (= lambda!233207 lambda!233185))))

(declare-fun bs!1158865 () Bool)

(assert (= bs!1158865 (and b!4804720 b!4804541)))

(assert (=> bs!1158865 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233207 lambda!233172))))

(declare-fun bs!1158866 () Bool)

(assert (= bs!1158866 (and b!4804720 b!4804418)))

(assert (=> bs!1158866 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958559) (= lambda!233207 lambda!233148))))

(declare-fun bs!1158867 () Bool)

(assert (= bs!1158867 (and b!4804720 b!4804606)))

(assert (=> bs!1158867 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233207 lambda!233183))))

(assert (=> bs!1158864 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233207 lambda!233184))))

(declare-fun bs!1158868 () Bool)

(assert (= bs!1158868 (and b!4804720 d!1538870)))

(assert (=> bs!1158868 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958820) (= lambda!233207 lambda!233151))))

(declare-fun bs!1158869 () Bool)

(assert (= bs!1158869 (and b!4804720 d!1538946)))

(assert (=> bs!1158869 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958893) (= lambda!233207 lambda!233175))))

(assert (=> b!4804720 true))

(declare-fun bs!1158870 () Bool)

(declare-fun b!4804718 () Bool)

(assert (= bs!1158870 (and b!4804718 b!4804416)))

(declare-fun lambda!233208 () Int)

(assert (=> bs!1158870 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958815) (= lambda!233208 lambda!233150))))

(declare-fun bs!1158871 () Bool)

(assert (= bs!1158871 (and b!4804718 b!4804539)))

(assert (=> bs!1158871 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958888) (= lambda!233208 lambda!233174))))

(assert (=> bs!1158871 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233208 lambda!233173))))

(declare-fun bs!1158872 () Bool)

(assert (= bs!1158872 (and b!4804718 d!1538984)))

(assert (=> bs!1158872 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958930) (= lambda!233208 lambda!233186))))

(assert (=> bs!1158870 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958559) (= lambda!233208 lambda!233149))))

(declare-fun bs!1158873 () Bool)

(assert (= bs!1158873 (and b!4804718 b!4804604)))

(assert (=> bs!1158873 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958925) (= lambda!233208 lambda!233185))))

(declare-fun bs!1158874 () Bool)

(assert (= bs!1158874 (and b!4804718 b!4804541)))

(assert (=> bs!1158874 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233208 lambda!233172))))

(declare-fun bs!1158875 () Bool)

(assert (= bs!1158875 (and b!4804718 b!4804418)))

(assert (=> bs!1158875 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958559) (= lambda!233208 lambda!233148))))

(declare-fun bs!1158876 () Bool)

(assert (= bs!1158876 (and b!4804718 b!4804606)))

(assert (=> bs!1158876 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233208 lambda!233183))))

(assert (=> bs!1158873 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233208 lambda!233184))))

(declare-fun bs!1158877 () Bool)

(assert (= bs!1158877 (and b!4804718 d!1538870)))

(assert (=> bs!1158877 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958820) (= lambda!233208 lambda!233151))))

(declare-fun bs!1158878 () Bool)

(assert (= bs!1158878 (and b!4804718 d!1538946)))

(assert (=> bs!1158878 (= (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958893) (= lambda!233208 lambda!233175))))

(declare-fun bs!1158879 () Bool)

(assert (= bs!1158879 (and b!4804718 b!4804720)))

(assert (=> bs!1158879 (= lambda!233208 lambda!233207)))

(assert (=> b!4804718 true))

(declare-fun lambda!233209 () Int)

(declare-fun lt!1958982 () ListMap!6499)

(assert (=> bs!1158870 (= (= lt!1958982 lt!1958815) (= lambda!233209 lambda!233150))))

(assert (=> b!4804718 (= (= lt!1958982 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233209 lambda!233208))))

(assert (=> bs!1158871 (= (= lt!1958982 lt!1958888) (= lambda!233209 lambda!233174))))

(assert (=> bs!1158871 (= (= lt!1958982 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233209 lambda!233173))))

(assert (=> bs!1158872 (= (= lt!1958982 lt!1958930) (= lambda!233209 lambda!233186))))

(assert (=> bs!1158870 (= (= lt!1958982 lt!1958559) (= lambda!233209 lambda!233149))))

(assert (=> bs!1158873 (= (= lt!1958982 lt!1958925) (= lambda!233209 lambda!233185))))

(assert (=> bs!1158874 (= (= lt!1958982 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233209 lambda!233172))))

(assert (=> bs!1158875 (= (= lt!1958982 lt!1958559) (= lambda!233209 lambda!233148))))

(assert (=> bs!1158876 (= (= lt!1958982 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233209 lambda!233183))))

(assert (=> bs!1158873 (= (= lt!1958982 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233209 lambda!233184))))

(assert (=> bs!1158877 (= (= lt!1958982 lt!1958820) (= lambda!233209 lambda!233151))))

(assert (=> bs!1158878 (= (= lt!1958982 lt!1958893) (= lambda!233209 lambda!233175))))

(assert (=> bs!1158879 (= (= lt!1958982 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233209 lambda!233207))))

(assert (=> b!4804718 true))

(declare-fun bs!1158880 () Bool)

(declare-fun d!1539044 () Bool)

(assert (= bs!1158880 (and d!1539044 b!4804416)))

(declare-fun lt!1958987 () ListMap!6499)

(declare-fun lambda!233210 () Int)

(assert (=> bs!1158880 (= (= lt!1958987 lt!1958815) (= lambda!233210 lambda!233150))))

(declare-fun bs!1158881 () Bool)

(assert (= bs!1158881 (and d!1539044 b!4804718)))

(assert (=> bs!1158881 (= (= lt!1958987 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233210 lambda!233208))))

(assert (=> bs!1158881 (= (= lt!1958987 lt!1958982) (= lambda!233210 lambda!233209))))

(declare-fun bs!1158882 () Bool)

(assert (= bs!1158882 (and d!1539044 b!4804539)))

(assert (=> bs!1158882 (= (= lt!1958987 lt!1958888) (= lambda!233210 lambda!233174))))

(assert (=> bs!1158882 (= (= lt!1958987 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233210 lambda!233173))))

(declare-fun bs!1158883 () Bool)

(assert (= bs!1158883 (and d!1539044 d!1538984)))

(assert (=> bs!1158883 (= (= lt!1958987 lt!1958930) (= lambda!233210 lambda!233186))))

(assert (=> bs!1158880 (= (= lt!1958987 lt!1958559) (= lambda!233210 lambda!233149))))

(declare-fun bs!1158884 () Bool)

(assert (= bs!1158884 (and d!1539044 b!4804604)))

(assert (=> bs!1158884 (= (= lt!1958987 lt!1958925) (= lambda!233210 lambda!233185))))

(declare-fun bs!1158885 () Bool)

(assert (= bs!1158885 (and d!1539044 b!4804541)))

(assert (=> bs!1158885 (= (= lt!1958987 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233210 lambda!233172))))

(declare-fun bs!1158886 () Bool)

(assert (= bs!1158886 (and d!1539044 b!4804418)))

(assert (=> bs!1158886 (= (= lt!1958987 lt!1958559) (= lambda!233210 lambda!233148))))

(declare-fun bs!1158887 () Bool)

(assert (= bs!1158887 (and d!1539044 b!4804606)))

(assert (=> bs!1158887 (= (= lt!1958987 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233210 lambda!233183))))

(assert (=> bs!1158884 (= (= lt!1958987 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233210 lambda!233184))))

(declare-fun bs!1158888 () Bool)

(assert (= bs!1158888 (and d!1539044 d!1538870)))

(assert (=> bs!1158888 (= (= lt!1958987 lt!1958820) (= lambda!233210 lambda!233151))))

(declare-fun bs!1158889 () Bool)

(assert (= bs!1158889 (and d!1539044 d!1538946)))

(assert (=> bs!1158889 (= (= lt!1958987 lt!1958893) (= lambda!233210 lambda!233175))))

(declare-fun bs!1158890 () Bool)

(assert (= bs!1158890 (and d!1539044 b!4804720)))

(assert (=> bs!1158890 (= (= lt!1958987 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233210 lambda!233207))))

(assert (=> d!1539044 true))

(declare-fun b!4804716 () Bool)

(declare-fun e!3000582 () Bool)

(assert (=> b!4804716 (= e!3000582 (invariantList!1764 (toList!7028 lt!1958987)))))

(declare-fun bm!335534 () Bool)

(declare-fun call!335539 () Bool)

(declare-fun c!819052 () Bool)

(assert (=> bm!335534 (= call!335539 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (ite c!819052 lambda!233207 lambda!233209)))))

(declare-fun bm!335535 () Bool)

(declare-fun call!335540 () Bool)

(assert (=> bm!335535 (= call!335540 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (ite c!819052 lambda!233207 lambda!233209)))))

(declare-fun b!4804717 () Bool)

(declare-fun e!3000583 () Bool)

(assert (=> b!4804717 (= e!3000583 call!335540)))

(assert (=> d!1539044 e!3000582))

(declare-fun res!2043983 () Bool)

(assert (=> d!1539044 (=> (not res!2043983) (not e!3000582))))

(assert (=> d!1539044 (= res!2043983 (forall!12357 (_2!31827 (h!60789 (toList!7027 lt!1958557))) lambda!233210))))

(declare-fun e!3000581 () ListMap!6499)

(assert (=> d!1539044 (= lt!1958987 e!3000581)))

(assert (=> d!1539044 (= c!819052 ((_ is Nil!54356) (_2!31827 (h!60789 (toList!7027 lt!1958557)))))))

(assert (=> d!1539044 (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lt!1958557))))))

(assert (=> d!1539044 (= (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lt!1958557))) (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) lt!1958987)))

(declare-fun bm!335536 () Bool)

(declare-fun call!335541 () Unit!141007)

(assert (=> bm!335536 (= call!335541 (lemmaContainsAllItsOwnKeys!969 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))))))

(assert (=> b!4804718 (= e!3000581 lt!1958982)))

(declare-fun lt!1958988 () ListMap!6499)

(assert (=> b!4804718 (= lt!1958988 (+!2513 (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (h!60788 (_2!31827 (h!60789 (toList!7027 lt!1958557))))))))

(assert (=> b!4804718 (= lt!1958982 (addToMapMapFromBucket!1741 (t!361930 (_2!31827 (h!60789 (toList!7027 lt!1958557)))) (+!2513 (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) (h!60788 (_2!31827 (h!60789 (toList!7027 lt!1958557)))))))))

(declare-fun lt!1958993 () Unit!141007)

(assert (=> b!4804718 (= lt!1958993 call!335541)))

(assert (=> b!4804718 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) lambda!233208)))

(declare-fun lt!1958983 () Unit!141007)

(assert (=> b!4804718 (= lt!1958983 lt!1958993)))

(assert (=> b!4804718 (forall!12357 (toList!7028 lt!1958988) lambda!233209)))

(declare-fun lt!1958979 () Unit!141007)

(declare-fun Unit!141089 () Unit!141007)

(assert (=> b!4804718 (= lt!1958979 Unit!141089)))

(assert (=> b!4804718 (forall!12357 (t!361930 (_2!31827 (h!60789 (toList!7027 lt!1958557)))) lambda!233209)))

(declare-fun lt!1958986 () Unit!141007)

(declare-fun Unit!141091 () Unit!141007)

(assert (=> b!4804718 (= lt!1958986 Unit!141091)))

(declare-fun lt!1958980 () Unit!141007)

(declare-fun Unit!141092 () Unit!141007)

(assert (=> b!4804718 (= lt!1958980 Unit!141092)))

(declare-fun lt!1958984 () Unit!141007)

(assert (=> b!4804718 (= lt!1958984 (forallContained!4227 (toList!7028 lt!1958988) lambda!233209 (h!60788 (_2!31827 (h!60789 (toList!7027 lt!1958557))))))))

(assert (=> b!4804718 (contains!18018 lt!1958988 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lt!1958557))))))))

(declare-fun lt!1958996 () Unit!141007)

(declare-fun Unit!141095 () Unit!141007)

(assert (=> b!4804718 (= lt!1958996 Unit!141095)))

(assert (=> b!4804718 (contains!18018 lt!1958982 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lt!1958557))))))))

(declare-fun lt!1958989 () Unit!141007)

(declare-fun Unit!141097 () Unit!141007)

(assert (=> b!4804718 (= lt!1958989 Unit!141097)))

(assert (=> b!4804718 (forall!12357 (_2!31827 (h!60789 (toList!7027 lt!1958557))) lambda!233209)))

(declare-fun lt!1958991 () Unit!141007)

(declare-fun Unit!141099 () Unit!141007)

(assert (=> b!4804718 (= lt!1958991 Unit!141099)))

(assert (=> b!4804718 (forall!12357 (toList!7028 lt!1958988) lambda!233209)))

(declare-fun lt!1958976 () Unit!141007)

(declare-fun Unit!141101 () Unit!141007)

(assert (=> b!4804718 (= lt!1958976 Unit!141101)))

(declare-fun lt!1958981 () Unit!141007)

(declare-fun Unit!141102 () Unit!141007)

(assert (=> b!4804718 (= lt!1958981 Unit!141102)))

(declare-fun lt!1958985 () Unit!141007)

(assert (=> b!4804718 (= lt!1958985 (addForallContainsKeyThenBeforeAdding!968 (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958982 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lt!1958557))))) (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lt!1958557)))))))))

(assert (=> b!4804718 call!335539))

(declare-fun lt!1958990 () Unit!141007)

(assert (=> b!4804718 (= lt!1958990 lt!1958985)))

(assert (=> b!4804718 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) lambda!233209)))

(declare-fun lt!1958992 () Unit!141007)

(declare-fun Unit!141104 () Unit!141007)

(assert (=> b!4804718 (= lt!1958992 Unit!141104)))

(declare-fun res!2043984 () Bool)

(assert (=> b!4804718 (= res!2043984 (forall!12357 (_2!31827 (h!60789 (toList!7027 lt!1958557))) lambda!233209))))

(assert (=> b!4804718 (=> (not res!2043984) (not e!3000583))))

(assert (=> b!4804718 e!3000583))

(declare-fun lt!1958994 () Unit!141007)

(declare-fun Unit!141106 () Unit!141007)

(assert (=> b!4804718 (= lt!1958994 Unit!141106)))

(declare-fun b!4804719 () Bool)

(declare-fun res!2043982 () Bool)

(assert (=> b!4804719 (=> (not res!2043982) (not e!3000582))))

(assert (=> b!4804719 (= res!2043982 (forall!12357 (toList!7028 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) lambda!233210))))

(assert (=> b!4804720 (= e!3000581 (extractMap!2501 (t!361931 (toList!7027 lt!1958557))))))

(declare-fun lt!1958977 () Unit!141007)

(assert (=> b!4804720 (= lt!1958977 call!335541)))

(assert (=> b!4804720 call!335539))

(declare-fun lt!1958995 () Unit!141007)

(assert (=> b!4804720 (= lt!1958995 lt!1958977)))

(assert (=> b!4804720 call!335540))

(declare-fun lt!1958978 () Unit!141007)

(declare-fun Unit!141107 () Unit!141007)

(assert (=> b!4804720 (= lt!1958978 Unit!141107)))

(assert (= (and d!1539044 c!819052) b!4804720))

(assert (= (and d!1539044 (not c!819052)) b!4804718))

(assert (= (and b!4804718 res!2043984) b!4804717))

(assert (= (or b!4804720 b!4804718) bm!335534))

(assert (= (or b!4804720 b!4804717) bm!335535))

(assert (= (or b!4804720 b!4804718) bm!335536))

(assert (= (and d!1539044 res!2043983) b!4804719))

(assert (= (and b!4804719 res!2043982) b!4804716))

(declare-fun m!5790374 () Bool)

(assert (=> b!4804719 m!5790374))

(assert (=> bm!335536 m!5789968))

(declare-fun m!5790376 () Bool)

(assert (=> bm!335536 m!5790376))

(declare-fun m!5790378 () Bool)

(assert (=> b!4804716 m!5790378))

(declare-fun m!5790380 () Bool)

(assert (=> d!1539044 m!5790380))

(declare-fun m!5790382 () Bool)

(assert (=> d!1539044 m!5790382))

(declare-fun m!5790384 () Bool)

(assert (=> bm!335535 m!5790384))

(declare-fun m!5790386 () Bool)

(assert (=> b!4804718 m!5790386))

(declare-fun m!5790388 () Bool)

(assert (=> b!4804718 m!5790388))

(assert (=> b!4804718 m!5789968))

(declare-fun m!5790390 () Bool)

(assert (=> b!4804718 m!5790390))

(declare-fun m!5790392 () Bool)

(assert (=> b!4804718 m!5790392))

(assert (=> b!4804718 m!5790388))

(declare-fun m!5790394 () Bool)

(assert (=> b!4804718 m!5790394))

(declare-fun m!5790396 () Bool)

(assert (=> b!4804718 m!5790396))

(declare-fun m!5790398 () Bool)

(assert (=> b!4804718 m!5790398))

(assert (=> b!4804718 m!5789968))

(declare-fun m!5790400 () Bool)

(assert (=> b!4804718 m!5790400))

(declare-fun m!5790402 () Bool)

(assert (=> b!4804718 m!5790402))

(declare-fun m!5790404 () Bool)

(assert (=> b!4804718 m!5790404))

(assert (=> b!4804718 m!5790396))

(assert (=> b!4804718 m!5790390))

(declare-fun m!5790406 () Bool)

(assert (=> b!4804718 m!5790406))

(assert (=> bm!335534 m!5790384))

(assert (=> b!4804430 d!1539044))

(declare-fun bs!1158891 () Bool)

(declare-fun d!1539046 () Bool)

(assert (= bs!1158891 (and d!1539046 d!1538900)))

(declare-fun lambda!233211 () Int)

(assert (=> bs!1158891 (= lambda!233211 lambda!233158)))

(declare-fun bs!1158892 () Bool)

(assert (= bs!1158892 (and d!1539046 d!1538926)))

(assert (=> bs!1158892 (= lambda!233211 lambda!233164)))

(declare-fun bs!1158893 () Bool)

(assert (= bs!1158893 (and d!1539046 d!1538928)))

(assert (=> bs!1158893 (= lambda!233211 lambda!233165)))

(declare-fun bs!1158894 () Bool)

(assert (= bs!1158894 (and d!1539046 d!1538902)))

(assert (=> bs!1158894 (= lambda!233211 lambda!233161)))

(declare-fun bs!1158895 () Bool)

(assert (= bs!1158895 (and d!1539046 d!1538894)))

(assert (=> bs!1158895 (= lambda!233211 lambda!233155)))

(declare-fun bs!1158896 () Bool)

(assert (= bs!1158896 (and d!1539046 start!496194)))

(assert (=> bs!1158896 (= lambda!233211 lambda!233061)))

(declare-fun bs!1158897 () Bool)

(assert (= bs!1158897 (and d!1539046 d!1538936)))

(assert (=> bs!1158897 (not (= lambda!233211 lambda!233171))))

(declare-fun bs!1158898 () Bool)

(assert (= bs!1158898 (and d!1539046 d!1538956)))

(assert (=> bs!1158898 (= lambda!233211 lambda!233176)))

(declare-fun bs!1158899 () Bool)

(assert (= bs!1158899 (and d!1539046 d!1538934)))

(assert (=> bs!1158899 (= lambda!233211 lambda!233168)))

(declare-fun bs!1158900 () Bool)

(assert (= bs!1158900 (and d!1539046 d!1538840)))

(assert (=> bs!1158900 (= lambda!233211 lambda!233080)))

(declare-fun bs!1158901 () Bool)

(assert (= bs!1158901 (and d!1539046 d!1538890)))

(assert (=> bs!1158901 (= lambda!233211 lambda!233154)))

(declare-fun lt!1958997 () ListMap!6499)

(assert (=> d!1539046 (invariantList!1764 (toList!7028 lt!1958997))))

(declare-fun e!3000584 () ListMap!6499)

(assert (=> d!1539046 (= lt!1958997 e!3000584)))

(declare-fun c!819053 () Bool)

(assert (=> d!1539046 (= c!819053 ((_ is Cons!54357) (t!361931 (toList!7027 lt!1958557))))))

(assert (=> d!1539046 (forall!12355 (t!361931 (toList!7027 lt!1958557)) lambda!233211)))

(assert (=> d!1539046 (= (extractMap!2501 (t!361931 (toList!7027 lt!1958557))) lt!1958997)))

(declare-fun b!4804721 () Bool)

(assert (=> b!4804721 (= e!3000584 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (t!361931 (toList!7027 lt!1958557)))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lt!1958557))))))))

(declare-fun b!4804722 () Bool)

(assert (=> b!4804722 (= e!3000584 (ListMap!6500 Nil!54356))))

(assert (= (and d!1539046 c!819053) b!4804721))

(assert (= (and d!1539046 (not c!819053)) b!4804722))

(declare-fun m!5790408 () Bool)

(assert (=> d!1539046 m!5790408))

(declare-fun m!5790410 () Bool)

(assert (=> d!1539046 m!5790410))

(declare-fun m!5790412 () Bool)

(assert (=> b!4804721 m!5790412))

(assert (=> b!4804721 m!5790412))

(declare-fun m!5790414 () Bool)

(assert (=> b!4804721 m!5790414))

(assert (=> b!4804430 d!1539046))

(declare-fun d!1539048 () Bool)

(assert (=> d!1539048 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958559) key!5896))))

(declare-fun lt!1959004 () Unit!141007)

(declare-fun choose!34777 (List!54480 K!15924) Unit!141007)

(assert (=> d!1539048 (= lt!1959004 (choose!34777 (toList!7028 lt!1958559) key!5896))))

(assert (=> d!1539048 (invariantList!1764 (toList!7028 lt!1958559))))

(assert (=> d!1539048 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 lt!1958559) key!5896) lt!1959004)))

(declare-fun bs!1158902 () Bool)

(assert (= bs!1158902 d!1539048))

(assert (=> bs!1158902 m!5789642))

(assert (=> bs!1158902 m!5789642))

(assert (=> bs!1158902 m!5789644))

(declare-fun m!5790416 () Bool)

(assert (=> bs!1158902 m!5790416))

(declare-fun m!5790418 () Bool)

(assert (=> bs!1158902 m!5790418))

(assert (=> b!4804250 d!1539048))

(declare-fun d!1539050 () Bool)

(declare-fun isEmpty!29528 (Option!13217) Bool)

(assert (=> d!1539050 (= (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958559) key!5896)) (not (isEmpty!29528 (getValueByKey!2418 (toList!7028 lt!1958559) key!5896))))))

(declare-fun bs!1158903 () Bool)

(assert (= bs!1158903 d!1539050))

(assert (=> bs!1158903 m!5789642))

(declare-fun m!5790420 () Bool)

(assert (=> bs!1158903 m!5790420))

(assert (=> b!4804250 d!1539050))

(declare-fun d!1539052 () Bool)

(declare-fun c!819064 () Bool)

(assert (=> d!1539052 (= c!819064 (and ((_ is Cons!54356) (toList!7028 lt!1958559)) (= (_1!31826 (h!60788 (toList!7028 lt!1958559))) key!5896)))))

(declare-fun e!3000597 () Option!13217)

(assert (=> d!1539052 (= (getValueByKey!2418 (toList!7028 lt!1958559) key!5896) e!3000597)))

(declare-fun b!4804751 () Bool)

(declare-fun e!3000598 () Option!13217)

(assert (=> b!4804751 (= e!3000598 (getValueByKey!2418 (t!361930 (toList!7028 lt!1958559)) key!5896))))

(declare-fun b!4804750 () Bool)

(assert (=> b!4804750 (= e!3000597 e!3000598)))

(declare-fun c!819065 () Bool)

(assert (=> b!4804750 (= c!819065 (and ((_ is Cons!54356) (toList!7028 lt!1958559)) (not (= (_1!31826 (h!60788 (toList!7028 lt!1958559))) key!5896))))))

(declare-fun b!4804752 () Bool)

(assert (=> b!4804752 (= e!3000598 None!13216)))

(declare-fun b!4804749 () Bool)

(assert (=> b!4804749 (= e!3000597 (Some!13216 (_2!31826 (h!60788 (toList!7028 lt!1958559)))))))

(assert (= (and d!1539052 c!819064) b!4804749))

(assert (= (and d!1539052 (not c!819064)) b!4804750))

(assert (= (and b!4804750 c!819065) b!4804751))

(assert (= (and b!4804750 (not c!819065)) b!4804752))

(declare-fun m!5790422 () Bool)

(assert (=> b!4804751 m!5790422))

(assert (=> b!4804250 d!1539052))

(declare-fun d!1539054 () Bool)

(assert (=> d!1539054 (contains!18022 (getKeysList!1110 (toList!7028 lt!1958559)) key!5896)))

(declare-fun lt!1959017 () Unit!141007)

(declare-fun choose!34778 (List!54480 K!15924) Unit!141007)

(assert (=> d!1539054 (= lt!1959017 (choose!34778 (toList!7028 lt!1958559) key!5896))))

(assert (=> d!1539054 (invariantList!1764 (toList!7028 lt!1958559))))

(assert (=> d!1539054 (= (lemmaInListThenGetKeysListContains!1105 (toList!7028 lt!1958559) key!5896) lt!1959017)))

(declare-fun bs!1158904 () Bool)

(assert (= bs!1158904 d!1539054))

(assert (=> bs!1158904 m!5789658))

(assert (=> bs!1158904 m!5789658))

(declare-fun m!5790424 () Bool)

(assert (=> bs!1158904 m!5790424))

(declare-fun m!5790426 () Bool)

(assert (=> bs!1158904 m!5790426))

(assert (=> bs!1158904 m!5790418))

(assert (=> b!4804250 d!1539054))

(assert (=> d!1538926 d!1538892))

(assert (=> d!1538926 d!1538894))

(declare-fun d!1539056 () Bool)

(assert (=> d!1539056 (contains!18018 (extractMap!2501 (toList!7027 lt!1958557)) key!5896)))

(assert (=> d!1539056 true))

(declare-fun _$34!963 () Unit!141007)

(assert (=> d!1539056 (= (choose!34767 lt!1958557 key!5896 hashF!1559) _$34!963)))

(declare-fun bs!1158912 () Bool)

(assert (= bs!1158912 d!1539056))

(assert (=> bs!1158912 m!5789542))

(assert (=> bs!1158912 m!5789542))

(assert (=> bs!1158912 m!5789574))

(assert (=> d!1538926 d!1539056))

(declare-fun d!1539062 () Bool)

(declare-fun res!2044000 () Bool)

(declare-fun e!3000609 () Bool)

(assert (=> d!1539062 (=> res!2044000 e!3000609)))

(assert (=> d!1539062 (= res!2044000 ((_ is Nil!54357) (toList!7027 lt!1958557)))))

(assert (=> d!1539062 (= (forall!12355 (toList!7027 lt!1958557) lambda!233164) e!3000609)))

(declare-fun b!4804770 () Bool)

(declare-fun e!3000610 () Bool)

(assert (=> b!4804770 (= e!3000609 e!3000610)))

(declare-fun res!2044001 () Bool)

(assert (=> b!4804770 (=> (not res!2044001) (not e!3000610))))

(assert (=> b!4804770 (= res!2044001 (dynLambda!22103 lambda!233164 (h!60789 (toList!7027 lt!1958557))))))

(declare-fun b!4804771 () Bool)

(assert (=> b!4804771 (= e!3000610 (forall!12355 (t!361931 (toList!7027 lt!1958557)) lambda!233164))))

(assert (= (and d!1539062 (not res!2044000)) b!4804770))

(assert (= (and b!4804770 res!2044001) b!4804771))

(declare-fun b_lambda!187951 () Bool)

(assert (=> (not b_lambda!187951) (not b!4804770)))

(declare-fun m!5790460 () Bool)

(assert (=> b!4804770 m!5790460))

(declare-fun m!5790462 () Bool)

(assert (=> b!4804771 m!5790462))

(assert (=> d!1538926 d!1539062))

(declare-fun d!1539064 () Bool)

(assert (=> d!1539064 (= (get!18581 (getValueByKey!2418 (toList!7028 lt!1958560) key!5896)) (v!48553 (getValueByKey!2418 (toList!7028 lt!1958560) key!5896)))))

(assert (=> d!1538920 d!1539064))

(declare-fun d!1539066 () Bool)

(declare-fun c!819069 () Bool)

(assert (=> d!1539066 (= c!819069 (and ((_ is Cons!54356) (toList!7028 lt!1958560)) (= (_1!31826 (h!60788 (toList!7028 lt!1958560))) key!5896)))))

(declare-fun e!3000611 () Option!13217)

(assert (=> d!1539066 (= (getValueByKey!2418 (toList!7028 lt!1958560) key!5896) e!3000611)))

(declare-fun b!4804774 () Bool)

(declare-fun e!3000612 () Option!13217)

(assert (=> b!4804774 (= e!3000612 (getValueByKey!2418 (t!361930 (toList!7028 lt!1958560)) key!5896))))

(declare-fun b!4804773 () Bool)

(assert (=> b!4804773 (= e!3000611 e!3000612)))

(declare-fun c!819070 () Bool)

(assert (=> b!4804773 (= c!819070 (and ((_ is Cons!54356) (toList!7028 lt!1958560)) (not (= (_1!31826 (h!60788 (toList!7028 lt!1958560))) key!5896))))))

(declare-fun b!4804775 () Bool)

(assert (=> b!4804775 (= e!3000612 None!13216)))

(declare-fun b!4804772 () Bool)

(assert (=> b!4804772 (= e!3000611 (Some!13216 (_2!31826 (h!60788 (toList!7028 lt!1958560)))))))

(assert (= (and d!1539066 c!819069) b!4804772))

(assert (= (and d!1539066 (not c!819069)) b!4804773))

(assert (= (and b!4804773 c!819070) b!4804774))

(assert (= (and b!4804773 (not c!819070)) b!4804775))

(declare-fun m!5790464 () Bool)

(assert (=> b!4804774 m!5790464))

(assert (=> d!1538920 d!1539066))

(declare-fun d!1539068 () Bool)

(declare-fun e!3000613 () Bool)

(assert (=> d!1539068 e!3000613))

(declare-fun res!2044002 () Bool)

(assert (=> d!1539068 (=> res!2044002 e!3000613)))

(declare-fun lt!1959029 () Bool)

(assert (=> d!1539068 (= res!2044002 (not lt!1959029))))

(declare-fun lt!1959030 () Bool)

(assert (=> d!1539068 (= lt!1959029 lt!1959030)))

(declare-fun lt!1959028 () Unit!141007)

(declare-fun e!3000614 () Unit!141007)

(assert (=> d!1539068 (= lt!1959028 e!3000614)))

(declare-fun c!819071 () Bool)

(assert (=> d!1539068 (= c!819071 lt!1959030)))

(assert (=> d!1539068 (= lt!1959030 (containsKey!4068 (toList!7027 lm!2473) (hash!5039 hashF!1559 key!5896)))))

(assert (=> d!1539068 (= (contains!18019 lm!2473 (hash!5039 hashF!1559 key!5896)) lt!1959029)))

(declare-fun b!4804776 () Bool)

(declare-fun lt!1959027 () Unit!141007)

(assert (=> b!4804776 (= e!3000614 lt!1959027)))

(assert (=> b!4804776 (= lt!1959027 (lemmaContainsKeyImpliesGetValueByKeyDefined!2210 (toList!7027 lm!2473) (hash!5039 hashF!1559 key!5896)))))

(assert (=> b!4804776 (isDefined!10359 (getValueByKey!2419 (toList!7027 lm!2473) (hash!5039 hashF!1559 key!5896)))))

(declare-fun b!4804777 () Bool)

(declare-fun Unit!141111 () Unit!141007)

(assert (=> b!4804777 (= e!3000614 Unit!141111)))

(declare-fun b!4804778 () Bool)

(assert (=> b!4804778 (= e!3000613 (isDefined!10359 (getValueByKey!2419 (toList!7027 lm!2473) (hash!5039 hashF!1559 key!5896))))))

(assert (= (and d!1539068 c!819071) b!4804776))

(assert (= (and d!1539068 (not c!819071)) b!4804777))

(assert (= (and d!1539068 (not res!2044002)) b!4804778))

(assert (=> d!1539068 m!5789560))

(declare-fun m!5790466 () Bool)

(assert (=> d!1539068 m!5790466))

(assert (=> b!4804776 m!5789560))

(declare-fun m!5790468 () Bool)

(assert (=> b!4804776 m!5790468))

(assert (=> b!4804776 m!5789560))

(declare-fun m!5790470 () Bool)

(assert (=> b!4804776 m!5790470))

(assert (=> b!4804776 m!5790470))

(declare-fun m!5790472 () Bool)

(assert (=> b!4804776 m!5790472))

(assert (=> b!4804778 m!5789560))

(assert (=> b!4804778 m!5790470))

(assert (=> b!4804778 m!5790470))

(assert (=> b!4804778 m!5790472))

(assert (=> d!1538902 d!1539068))

(assert (=> d!1538902 d!1538906))

(declare-fun d!1539070 () Bool)

(declare-fun e!3000620 () Bool)

(assert (=> d!1539070 e!3000620))

(declare-fun res!2044010 () Bool)

(assert (=> d!1539070 (=> (not res!2044010) (not e!3000620))))

(assert (=> d!1539070 (= res!2044010 (contains!18019 lm!2473 (hash!5039 hashF!1559 key!5896)))))

(assert (=> d!1539070 true))

(declare-fun _$5!281 () Unit!141007)

(assert (=> d!1539070 (= (choose!34766 lm!2473 key!5896 hashF!1559) _$5!281)))

(declare-fun b!4804786 () Bool)

(assert (=> b!4804786 (= e!3000620 (isDefined!10355 (getPair!946 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1539070 res!2044010) b!4804786))

(assert (=> d!1539070 m!5789560))

(assert (=> d!1539070 m!5789560))

(assert (=> d!1539070 m!5789986))

(assert (=> b!4804786 m!5789560))

(assert (=> b!4804786 m!5789560))

(assert (=> b!4804786 m!5789992))

(assert (=> b!4804786 m!5789992))

(assert (=> b!4804786 m!5789994))

(assert (=> b!4804786 m!5789994))

(assert (=> b!4804786 m!5789996))

(assert (=> d!1538902 d!1539070))

(declare-fun d!1539078 () Bool)

(declare-fun res!2044011 () Bool)

(declare-fun e!3000621 () Bool)

(assert (=> d!1539078 (=> res!2044011 e!3000621)))

(assert (=> d!1539078 (= res!2044011 ((_ is Nil!54357) (toList!7027 lm!2473)))))

(assert (=> d!1539078 (= (forall!12355 (toList!7027 lm!2473) lambda!233161) e!3000621)))

(declare-fun b!4804787 () Bool)

(declare-fun e!3000622 () Bool)

(assert (=> b!4804787 (= e!3000621 e!3000622)))

(declare-fun res!2044012 () Bool)

(assert (=> b!4804787 (=> (not res!2044012) (not e!3000622))))

(assert (=> b!4804787 (= res!2044012 (dynLambda!22103 lambda!233161 (h!60789 (toList!7027 lm!2473))))))

(declare-fun b!4804788 () Bool)

(assert (=> b!4804788 (= e!3000622 (forall!12355 (t!361931 (toList!7027 lm!2473)) lambda!233161))))

(assert (= (and d!1539078 (not res!2044011)) b!4804787))

(assert (= (and b!4804787 res!2044012) b!4804788))

(declare-fun b_lambda!187953 () Bool)

(assert (=> (not b_lambda!187953) (not b!4804787)))

(declare-fun m!5790492 () Bool)

(assert (=> b!4804787 m!5790492))

(declare-fun m!5790494 () Bool)

(assert (=> b!4804788 m!5790494))

(assert (=> d!1538902 d!1539078))

(declare-fun d!1539080 () Bool)

(declare-fun res!2044013 () Bool)

(declare-fun e!3000623 () Bool)

(assert (=> d!1539080 (=> res!2044013 e!3000623)))

(assert (=> d!1539080 (= res!2044013 (and ((_ is Cons!54356) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= (_1!31826 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) key!5896)))))

(assert (=> d!1539080 (= (containsKey!4067 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896) e!3000623)))

(declare-fun b!4804789 () Bool)

(declare-fun e!3000624 () Bool)

(assert (=> b!4804789 (= e!3000623 e!3000624)))

(declare-fun res!2044014 () Bool)

(assert (=> b!4804789 (=> (not res!2044014) (not e!3000624))))

(assert (=> b!4804789 (= res!2044014 ((_ is Cons!54356) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))

(declare-fun b!4804790 () Bool)

(assert (=> b!4804790 (= e!3000624 (containsKey!4067 (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) key!5896))))

(assert (= (and d!1539080 (not res!2044013)) b!4804789))

(assert (= (and b!4804789 res!2044014) b!4804790))

(declare-fun m!5790496 () Bool)

(assert (=> b!4804790 m!5790496))

(assert (=> b!4804361 d!1539080))

(declare-fun d!1539082 () Bool)

(assert (=> d!1539082 (containsKey!4067 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896)))

(declare-fun lt!1959033 () Unit!141007)

(assert (=> d!1539082 (= lt!1959033 (choose!34776 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(assert (=> d!1539082 (invariantList!1764 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))))

(assert (=> d!1539082 (= (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896) lt!1959033)))

(declare-fun bs!1158923 () Bool)

(assert (= bs!1158923 d!1539082))

(assert (=> bs!1158923 m!5789814))

(declare-fun m!5790498 () Bool)

(assert (=> bs!1158923 m!5790498))

(declare-fun m!5790500 () Bool)

(assert (=> bs!1158923 m!5790500))

(assert (=> b!4804361 d!1539082))

(declare-fun bs!1158924 () Bool)

(declare-fun b!4804792 () Bool)

(assert (= bs!1158924 (and b!4804792 b!4804693)))

(declare-fun lambda!233229 () Int)

(assert (=> bs!1158924 (= lambda!233229 lambda!233204)))

(declare-fun bs!1158925 () Bool)

(assert (= bs!1158925 (and b!4804792 b!4804687)))

(assert (=> bs!1158925 (= (= (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233229 lambda!233202))))

(declare-fun bs!1158926 () Bool)

(assert (= bs!1158926 (and b!4804792 b!4804570)))

(assert (=> bs!1158926 (= (= (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) (toList!7028 lt!1958560)) (= lambda!233229 lambda!233181))))

(declare-fun bs!1158927 () Bool)

(assert (= bs!1158927 (and b!4804792 b!4804622)))

(assert (=> bs!1158927 (= (= (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233229 lambda!233187))))

(declare-fun bs!1158928 () Bool)

(assert (= bs!1158928 (and b!4804792 b!4804686)))

(assert (=> bs!1158928 (= (= (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233229 lambda!233201))))

(assert (=> b!4804792 true))

(declare-fun bs!1158929 () Bool)

(declare-fun b!4804793 () Bool)

(assert (= bs!1158929 (and b!4804793 b!4804571)))

(declare-fun lambda!233230 () Int)

(assert (=> bs!1158929 (= lambda!233230 lambda!233182)))

(declare-fun bs!1158930 () Bool)

(assert (= bs!1158930 (and b!4804793 b!4804623)))

(assert (=> bs!1158930 (= lambda!233230 lambda!233188)))

(declare-fun bs!1158931 () Bool)

(assert (= bs!1158931 (and b!4804793 b!4804692)))

(assert (=> bs!1158931 (= lambda!233230 lambda!233206)))

(declare-fun d!1539084 () Bool)

(declare-fun e!3000625 () Bool)

(assert (=> d!1539084 e!3000625))

(declare-fun res!2044015 () Bool)

(assert (=> d!1539084 (=> (not res!2044015) (not e!3000625))))

(declare-fun lt!1959034 () List!54483)

(assert (=> d!1539084 (= res!2044015 (noDuplicate!940 lt!1959034))))

(assert (=> d!1539084 (= lt!1959034 (getKeysList!1110 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))))

(assert (=> d!1539084 (= (keys!19883 (extractMap!2501 (toList!7027 lm!2473))) lt!1959034)))

(declare-fun b!4804791 () Bool)

(declare-fun res!2044017 () Bool)

(assert (=> b!4804791 (=> (not res!2044017) (not e!3000625))))

(assert (=> b!4804791 (= res!2044017 (= (length!736 lt!1959034) (length!737 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))))))

(declare-fun res!2044016 () Bool)

(assert (=> b!4804792 (=> (not res!2044016) (not e!3000625))))

(assert (=> b!4804792 (= res!2044016 (forall!12358 lt!1959034 lambda!233229))))

(assert (=> b!4804793 (= e!3000625 (= (content!9758 lt!1959034) (content!9758 (map!12288 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) lambda!233230))))))

(assert (= (and d!1539084 res!2044015) b!4804791))

(assert (= (and b!4804791 res!2044017) b!4804792))

(assert (= (and b!4804792 res!2044016) b!4804793))

(declare-fun m!5790502 () Bool)

(assert (=> d!1539084 m!5790502))

(assert (=> d!1539084 m!5789682))

(declare-fun m!5790504 () Bool)

(assert (=> b!4804791 m!5790504))

(assert (=> b!4804791 m!5790356))

(declare-fun m!5790506 () Bool)

(assert (=> b!4804792 m!5790506))

(declare-fun m!5790508 () Bool)

(assert (=> b!4804793 m!5790508))

(declare-fun m!5790510 () Bool)

(assert (=> b!4804793 m!5790510))

(assert (=> b!4804793 m!5790510))

(declare-fun m!5790512 () Bool)

(assert (=> b!4804793 m!5790512))

(assert (=> b!4804263 d!1539084))

(declare-fun d!1539086 () Bool)

(assert (=> d!1539086 (= (isDefined!10358 (getValueByKey!2418 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896)) (not (isEmpty!29528 (getValueByKey!2418 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))))

(declare-fun bs!1158932 () Bool)

(assert (= bs!1158932 d!1539086))

(assert (=> bs!1158932 m!5789802))

(declare-fun m!5790514 () Bool)

(assert (=> bs!1158932 m!5790514))

(assert (=> b!4804357 d!1539086))

(declare-fun d!1539088 () Bool)

(declare-fun c!819072 () Bool)

(assert (=> d!1539088 (= c!819072 (and ((_ is Cons!54356) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= (_1!31826 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) key!5896)))))

(declare-fun e!3000626 () Option!13217)

(assert (=> d!1539088 (= (getValueByKey!2418 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896) e!3000626)))

(declare-fun e!3000627 () Option!13217)

(declare-fun b!4804796 () Bool)

(assert (=> b!4804796 (= e!3000627 (getValueByKey!2418 (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) key!5896))))

(declare-fun b!4804795 () Bool)

(assert (=> b!4804795 (= e!3000626 e!3000627)))

(declare-fun c!819073 () Bool)

(assert (=> b!4804795 (= c!819073 (and ((_ is Cons!54356) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (not (= (_1!31826 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) key!5896))))))

(declare-fun b!4804797 () Bool)

(assert (=> b!4804797 (= e!3000627 None!13216)))

(declare-fun b!4804794 () Bool)

(assert (=> b!4804794 (= e!3000626 (Some!13216 (_2!31826 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))))

(assert (= (and d!1539088 c!819072) b!4804794))

(assert (= (and d!1539088 (not c!819072)) b!4804795))

(assert (= (and b!4804795 c!819073) b!4804796))

(assert (= (and b!4804795 (not c!819073)) b!4804797))

(declare-fun m!5790516 () Bool)

(assert (=> b!4804796 m!5790516))

(assert (=> b!4804357 d!1539088))

(declare-fun d!1539090 () Bool)

(assert (=> d!1539090 (= (isDefined!10359 (getValueByKey!2419 (toList!7027 lt!1958557) lt!1958563)) (not (isEmpty!29526 (getValueByKey!2419 (toList!7027 lt!1958557) lt!1958563))))))

(declare-fun bs!1158933 () Bool)

(assert (= bs!1158933 d!1539090))

(assert (=> bs!1158933 m!5790058))

(declare-fun m!5790518 () Bool)

(assert (=> bs!1158933 m!5790518))

(assert (=> b!4804502 d!1539090))

(declare-fun b!4804800 () Bool)

(declare-fun e!3000629 () Option!13218)

(assert (=> b!4804800 (= e!3000629 (getValueByKey!2419 (t!361931 (toList!7027 lt!1958557)) lt!1958563))))

(declare-fun b!4804801 () Bool)

(assert (=> b!4804801 (= e!3000629 None!13217)))

(declare-fun b!4804799 () Bool)

(declare-fun e!3000628 () Option!13218)

(assert (=> b!4804799 (= e!3000628 e!3000629)))

(declare-fun c!819075 () Bool)

(assert (=> b!4804799 (= c!819075 (and ((_ is Cons!54357) (toList!7027 lt!1958557)) (not (= (_1!31827 (h!60789 (toList!7027 lt!1958557))) lt!1958563))))))

(declare-fun b!4804798 () Bool)

(assert (=> b!4804798 (= e!3000628 (Some!13217 (_2!31827 (h!60789 (toList!7027 lt!1958557)))))))

(declare-fun d!1539092 () Bool)

(declare-fun c!819074 () Bool)

(assert (=> d!1539092 (= c!819074 (and ((_ is Cons!54357) (toList!7027 lt!1958557)) (= (_1!31827 (h!60789 (toList!7027 lt!1958557))) lt!1958563)))))

(assert (=> d!1539092 (= (getValueByKey!2419 (toList!7027 lt!1958557) lt!1958563) e!3000628)))

(assert (= (and d!1539092 c!819074) b!4804798))

(assert (= (and d!1539092 (not c!819074)) b!4804799))

(assert (= (and b!4804799 c!819075) b!4804800))

(assert (= (and b!4804799 (not c!819075)) b!4804801))

(declare-fun m!5790520 () Bool)

(assert (=> b!4804800 m!5790520))

(assert (=> b!4804502 d!1539092))

(declare-fun d!1539094 () Bool)

(declare-fun lt!1959035 () Bool)

(assert (=> d!1539094 (= lt!1959035 (select (content!9758 e!3000273) key!5896))))

(declare-fun e!3000630 () Bool)

(assert (=> d!1539094 (= lt!1959035 e!3000630)))

(declare-fun res!2044018 () Bool)

(assert (=> d!1539094 (=> (not res!2044018) (not e!3000630))))

(assert (=> d!1539094 (= res!2044018 ((_ is Cons!54359) e!3000273))))

(assert (=> d!1539094 (= (contains!18022 e!3000273 key!5896) lt!1959035)))

(declare-fun b!4804802 () Bool)

(declare-fun e!3000631 () Bool)

(assert (=> b!4804802 (= e!3000630 e!3000631)))

(declare-fun res!2044019 () Bool)

(assert (=> b!4804802 (=> res!2044019 e!3000631)))

(assert (=> b!4804802 (= res!2044019 (= (h!60791 e!3000273) key!5896))))

(declare-fun b!4804803 () Bool)

(assert (=> b!4804803 (= e!3000631 (contains!18022 (t!361933 e!3000273) key!5896))))

(assert (= (and d!1539094 res!2044018) b!4804802))

(assert (= (and b!4804802 (not res!2044019)) b!4804803))

(declare-fun m!5790522 () Bool)

(assert (=> d!1539094 m!5790522))

(declare-fun m!5790524 () Bool)

(assert (=> d!1539094 m!5790524))

(declare-fun m!5790526 () Bool)

(assert (=> b!4804803 m!5790526))

(assert (=> bm!335502 d!1539094))

(declare-fun bs!1158934 () Bool)

(declare-fun b!4804804 () Bool)

(assert (= bs!1158934 (and b!4804804 b!4804693)))

(declare-fun lambda!233231 () Int)

(assert (=> bs!1158934 (= (= (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233231 lambda!233204))))

(declare-fun bs!1158935 () Bool)

(assert (= bs!1158935 (and b!4804804 b!4804687)))

(assert (=> bs!1158935 (= (= (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233231 lambda!233202))))

(declare-fun bs!1158936 () Bool)

(assert (= bs!1158936 (and b!4804804 b!4804792)))

(assert (=> bs!1158936 (= (= (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233231 lambda!233229))))

(declare-fun bs!1158937 () Bool)

(assert (= bs!1158937 (and b!4804804 b!4804570)))

(assert (=> bs!1158937 (= (= (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (toList!7028 lt!1958560)) (= lambda!233231 lambda!233181))))

(declare-fun bs!1158938 () Bool)

(assert (= bs!1158938 (and b!4804804 b!4804622)))

(assert (=> bs!1158938 (= (= (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233231 lambda!233187))))

(declare-fun bs!1158939 () Bool)

(assert (= bs!1158939 (and b!4804804 b!4804686)))

(assert (=> bs!1158939 (= (= (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233231 lambda!233201))))

(assert (=> b!4804804 true))

(declare-fun bs!1158940 () Bool)

(declare-fun b!4804805 () Bool)

(assert (= bs!1158940 (and b!4804805 b!4804804)))

(declare-fun lambda!233234 () Int)

(assert (=> bs!1158940 (= (= (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233234 lambda!233231))))

(declare-fun bs!1158941 () Bool)

(assert (= bs!1158941 (and b!4804805 b!4804693)))

(assert (=> bs!1158941 (= (= (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233234 lambda!233204))))

(declare-fun bs!1158942 () Bool)

(assert (= bs!1158942 (and b!4804805 b!4804687)))

(assert (=> bs!1158942 (= (= (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233234 lambda!233202))))

(declare-fun bs!1158943 () Bool)

(assert (= bs!1158943 (and b!4804805 b!4804792)))

(assert (=> bs!1158943 (= (= (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233234 lambda!233229))))

(declare-fun bs!1158944 () Bool)

(assert (= bs!1158944 (and b!4804805 b!4804570)))

(assert (=> bs!1158944 (= (= (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (toList!7028 lt!1958560)) (= lambda!233234 lambda!233181))))

(declare-fun bs!1158945 () Bool)

(assert (= bs!1158945 (and b!4804805 b!4804622)))

(assert (=> bs!1158945 (= (= (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233234 lambda!233187))))

(declare-fun bs!1158946 () Bool)

(assert (= bs!1158946 (and b!4804805 b!4804686)))

(assert (=> bs!1158946 (= (= (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233234 lambda!233201))))

(assert (=> b!4804805 true))

(declare-fun bs!1158947 () Bool)

(declare-fun b!4804811 () Bool)

(assert (= bs!1158947 (and b!4804811 b!4804804)))

(declare-fun lambda!233237 () Int)

(assert (=> bs!1158947 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233237 lambda!233231))))

(declare-fun bs!1158948 () Bool)

(assert (= bs!1158948 (and b!4804811 b!4804693)))

(assert (=> bs!1158948 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233237 lambda!233204))))

(declare-fun bs!1158949 () Bool)

(assert (= bs!1158949 (and b!4804811 b!4804687)))

(assert (=> bs!1158949 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233237 lambda!233202))))

(declare-fun bs!1158950 () Bool)

(assert (= bs!1158950 (and b!4804811 b!4804792)))

(assert (=> bs!1158950 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233237 lambda!233229))))

(declare-fun bs!1158951 () Bool)

(assert (= bs!1158951 (and b!4804811 b!4804570)))

(assert (=> bs!1158951 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (toList!7028 lt!1958560)) (= lambda!233237 lambda!233181))))

(declare-fun bs!1158952 () Bool)

(assert (= bs!1158952 (and b!4804811 b!4804805)))

(assert (=> bs!1158952 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233237 lambda!233234))))

(declare-fun bs!1158953 () Bool)

(assert (= bs!1158953 (and b!4804811 b!4804622)))

(assert (=> bs!1158953 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233237 lambda!233187))))

(declare-fun bs!1158954 () Bool)

(assert (= bs!1158954 (and b!4804811 b!4804686)))

(assert (=> bs!1158954 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233237 lambda!233201))))

(assert (=> b!4804811 true))

(declare-fun bs!1158955 () Bool)

(declare-fun b!4804810 () Bool)

(assert (= bs!1158955 (and b!4804810 b!4804571)))

(declare-fun lambda!233238 () Int)

(assert (=> bs!1158955 (= lambda!233238 lambda!233182)))

(declare-fun bs!1158956 () Bool)

(assert (= bs!1158956 (and b!4804810 b!4804623)))

(assert (=> bs!1158956 (= lambda!233238 lambda!233188)))

(declare-fun bs!1158957 () Bool)

(assert (= bs!1158957 (and b!4804810 b!4804692)))

(assert (=> bs!1158957 (= lambda!233238 lambda!233206)))

(declare-fun bs!1158959 () Bool)

(assert (= bs!1158959 (and b!4804810 b!4804793)))

(assert (=> bs!1158959 (= lambda!233238 lambda!233230)))

(assert (=> b!4804804 false))

(declare-fun lt!1959038 () Unit!141007)

(assert (=> b!4804804 (= lt!1959038 (forallContained!4229 (getKeysList!1110 (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) lambda!233231 (_1!31826 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))))

(declare-fun e!3000633 () Unit!141007)

(declare-fun Unit!141117 () Unit!141007)

(assert (=> b!4804804 (= e!3000633 Unit!141117)))

(declare-fun e!3000634 () List!54483)

(assert (=> b!4804805 (= e!3000634 (Cons!54359 (_1!31826 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (getKeysList!1110 (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))))

(declare-fun c!819078 () Bool)

(assert (=> b!4804805 (= c!819078 (containsKey!4067 (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (_1!31826 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))))

(declare-fun lt!1959036 () Unit!141007)

(declare-fun e!3000632 () Unit!141007)

(assert (=> b!4804805 (= lt!1959036 e!3000632)))

(declare-fun c!819076 () Bool)

(assert (=> b!4804805 (= c!819076 (contains!18022 (getKeysList!1110 (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (_1!31826 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))))

(declare-fun lt!1959037 () Unit!141007)

(assert (=> b!4804805 (= lt!1959037 e!3000633)))

(declare-fun lt!1959040 () List!54483)

(assert (=> b!4804805 (= lt!1959040 (getKeysList!1110 (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))))))

(declare-fun lt!1959041 () Unit!141007)

(assert (=> b!4804805 (= lt!1959041 (lemmaForallContainsAddHeadPreserves!356 (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) lt!1959040 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))))))

(assert (=> b!4804805 (forall!12358 lt!1959040 lambda!233234)))

(declare-fun lt!1959039 () Unit!141007)

(assert (=> b!4804805 (= lt!1959039 lt!1959041)))

(declare-fun b!4804806 () Bool)

(declare-fun Unit!141118 () Unit!141007)

(assert (=> b!4804806 (= e!3000632 Unit!141118)))

(declare-fun b!4804807 () Bool)

(assert (=> b!4804807 false))

(declare-fun Unit!141119 () Unit!141007)

(assert (=> b!4804807 (= e!3000632 Unit!141119)))

(declare-fun d!1539096 () Bool)

(declare-fun e!3000635 () Bool)

(assert (=> d!1539096 e!3000635))

(declare-fun res!2044022 () Bool)

(assert (=> d!1539096 (=> (not res!2044022) (not e!3000635))))

(declare-fun lt!1959042 () List!54483)

(assert (=> d!1539096 (= res!2044022 (noDuplicate!940 lt!1959042))))

(assert (=> d!1539096 (= lt!1959042 e!3000634)))

(declare-fun c!819077 () Bool)

(assert (=> d!1539096 (= c!819077 ((_ is Cons!54356) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))

(assert (=> d!1539096 (invariantList!1764 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))))

(assert (=> d!1539096 (= (getKeysList!1110 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) lt!1959042)))

(declare-fun b!4804808 () Bool)

(declare-fun res!2044021 () Bool)

(assert (=> b!4804808 (=> (not res!2044021) (not e!3000635))))

(assert (=> b!4804808 (= res!2044021 (= (length!736 lt!1959042) (length!737 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))))))

(declare-fun b!4804809 () Bool)

(assert (=> b!4804809 (= e!3000634 Nil!54359)))

(assert (=> b!4804810 (= e!3000635 (= (content!9758 lt!1959042) (content!9758 (map!12288 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) lambda!233238))))))

(declare-fun res!2044020 () Bool)

(assert (=> b!4804811 (=> (not res!2044020) (not e!3000635))))

(assert (=> b!4804811 (= res!2044020 (forall!12358 lt!1959042 lambda!233237))))

(declare-fun b!4804812 () Bool)

(declare-fun Unit!141120 () Unit!141007)

(assert (=> b!4804812 (= e!3000633 Unit!141120)))

(assert (= (and d!1539096 c!819077) b!4804805))

(assert (= (and d!1539096 (not c!819077)) b!4804809))

(assert (= (and b!4804805 c!819078) b!4804807))

(assert (= (and b!4804805 (not c!819078)) b!4804806))

(assert (= (and b!4804805 c!819076) b!4804804))

(assert (= (and b!4804805 (not c!819076)) b!4804812))

(assert (= (and d!1539096 res!2044022) b!4804808))

(assert (= (and b!4804808 res!2044021) b!4804811))

(assert (= (and b!4804811 res!2044020) b!4804810))

(declare-fun m!5790536 () Bool)

(assert (=> d!1539096 m!5790536))

(assert (=> d!1539096 m!5790500))

(declare-fun m!5790538 () Bool)

(assert (=> b!4804804 m!5790538))

(assert (=> b!4804804 m!5790538))

(declare-fun m!5790540 () Bool)

(assert (=> b!4804804 m!5790540))

(declare-fun m!5790542 () Bool)

(assert (=> b!4804805 m!5790542))

(assert (=> b!4804805 m!5790538))

(declare-fun m!5790544 () Bool)

(assert (=> b!4804805 m!5790544))

(assert (=> b!4804805 m!5790538))

(declare-fun m!5790546 () Bool)

(assert (=> b!4804805 m!5790546))

(declare-fun m!5790548 () Bool)

(assert (=> b!4804805 m!5790548))

(declare-fun m!5790550 () Bool)

(assert (=> b!4804810 m!5790550))

(declare-fun m!5790552 () Bool)

(assert (=> b!4804810 m!5790552))

(assert (=> b!4804810 m!5790552))

(declare-fun m!5790554 () Bool)

(assert (=> b!4804810 m!5790554))

(declare-fun m!5790556 () Bool)

(assert (=> b!4804811 m!5790556))

(declare-fun m!5790558 () Bool)

(assert (=> b!4804808 m!5790558))

(declare-fun m!5790560 () Bool)

(assert (=> b!4804808 m!5790560))

(assert (=> b!4804359 d!1539096))

(declare-fun d!1539100 () Bool)

(assert (=> d!1539100 (= (get!18580 lt!1958862) (v!48550 lt!1958862))))

(assert (=> b!4804489 d!1539100))

(declare-fun d!1539102 () Bool)

(declare-fun lt!1959046 () Bool)

(assert (=> d!1539102 (= lt!1959046 (select (content!9758 (keys!19883 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) key!5896))))

(declare-fun e!3000636 () Bool)

(assert (=> d!1539102 (= lt!1959046 e!3000636)))

(declare-fun res!2044023 () Bool)

(assert (=> d!1539102 (=> (not res!2044023) (not e!3000636))))

(assert (=> d!1539102 (= res!2044023 ((_ is Cons!54359) (keys!19883 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))

(assert (=> d!1539102 (= (contains!18022 (keys!19883 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896) lt!1959046)))

(declare-fun b!4804814 () Bool)

(declare-fun e!3000637 () Bool)

(assert (=> b!4804814 (= e!3000636 e!3000637)))

(declare-fun res!2044024 () Bool)

(assert (=> b!4804814 (=> res!2044024 e!3000637)))

(assert (=> b!4804814 (= res!2044024 (= (h!60791 (keys!19883 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) key!5896))))

(declare-fun b!4804815 () Bool)

(assert (=> b!4804815 (= e!3000637 (contains!18022 (t!361933 (keys!19883 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) key!5896))))

(assert (= (and d!1539102 res!2044023) b!4804814))

(assert (= (and b!4804814 (not res!2044024)) b!4804815))

(assert (=> d!1539102 m!5789800))

(declare-fun m!5790562 () Bool)

(assert (=> d!1539102 m!5790562))

(declare-fun m!5790564 () Bool)

(assert (=> d!1539102 m!5790564))

(declare-fun m!5790566 () Bool)

(assert (=> b!4804815 m!5790566))

(assert (=> b!4804356 d!1539102))

(declare-fun bs!1158964 () Bool)

(declare-fun b!4804819 () Bool)

(assert (= bs!1158964 (and b!4804819 b!4804804)))

(declare-fun lambda!233240 () Int)

(assert (=> bs!1158964 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233240 lambda!233231))))

(declare-fun bs!1158965 () Bool)

(assert (= bs!1158965 (and b!4804819 b!4804693)))

(assert (=> bs!1158965 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233240 lambda!233204))))

(declare-fun bs!1158966 () Bool)

(assert (= bs!1158966 (and b!4804819 b!4804687)))

(assert (=> bs!1158966 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233240 lambda!233202))))

(declare-fun bs!1158967 () Bool)

(assert (= bs!1158967 (and b!4804819 b!4804811)))

(assert (=> bs!1158967 (= lambda!233240 lambda!233237)))

(declare-fun bs!1158968 () Bool)

(assert (= bs!1158968 (and b!4804819 b!4804792)))

(assert (=> bs!1158968 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233240 lambda!233229))))

(declare-fun bs!1158969 () Bool)

(assert (= bs!1158969 (and b!4804819 b!4804570)))

(assert (=> bs!1158969 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (toList!7028 lt!1958560)) (= lambda!233240 lambda!233181))))

(declare-fun bs!1158970 () Bool)

(assert (= bs!1158970 (and b!4804819 b!4804805)))

(assert (=> bs!1158970 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233240 lambda!233234))))

(declare-fun bs!1158971 () Bool)

(assert (= bs!1158971 (and b!4804819 b!4804622)))

(assert (=> bs!1158971 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233240 lambda!233187))))

(declare-fun bs!1158972 () Bool)

(assert (= bs!1158972 (and b!4804819 b!4804686)))

(assert (=> bs!1158972 (= (= (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233240 lambda!233201))))

(assert (=> b!4804819 true))

(declare-fun bs!1158973 () Bool)

(declare-fun b!4804820 () Bool)

(assert (= bs!1158973 (and b!4804820 b!4804571)))

(declare-fun lambda!233241 () Int)

(assert (=> bs!1158973 (= lambda!233241 lambda!233182)))

(declare-fun bs!1158974 () Bool)

(assert (= bs!1158974 (and b!4804820 b!4804810)))

(assert (=> bs!1158974 (= lambda!233241 lambda!233238)))

(declare-fun bs!1158975 () Bool)

(assert (= bs!1158975 (and b!4804820 b!4804692)))

(assert (=> bs!1158975 (= lambda!233241 lambda!233206)))

(declare-fun bs!1158976 () Bool)

(assert (= bs!1158976 (and b!4804820 b!4804623)))

(assert (=> bs!1158976 (= lambda!233241 lambda!233188)))

(declare-fun bs!1158977 () Bool)

(assert (= bs!1158977 (and b!4804820 b!4804793)))

(assert (=> bs!1158977 (= lambda!233241 lambda!233230)))

(declare-fun d!1539104 () Bool)

(declare-fun e!3000640 () Bool)

(assert (=> d!1539104 e!3000640))

(declare-fun res!2044027 () Bool)

(assert (=> d!1539104 (=> (not res!2044027) (not e!3000640))))

(declare-fun lt!1959049 () List!54483)

(assert (=> d!1539104 (= res!2044027 (noDuplicate!940 lt!1959049))))

(assert (=> d!1539104 (= lt!1959049 (getKeysList!1110 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))))

(assert (=> d!1539104 (= (keys!19883 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) lt!1959049)))

(declare-fun b!4804818 () Bool)

(declare-fun res!2044029 () Bool)

(assert (=> b!4804818 (=> (not res!2044029) (not e!3000640))))

(assert (=> b!4804818 (= res!2044029 (= (length!736 lt!1959049) (length!737 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))))))

(declare-fun res!2044028 () Bool)

(assert (=> b!4804819 (=> (not res!2044028) (not e!3000640))))

(assert (=> b!4804819 (= res!2044028 (forall!12358 lt!1959049 lambda!233240))))

(assert (=> b!4804820 (= e!3000640 (= (content!9758 lt!1959049) (content!9758 (map!12288 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) lambda!233241))))))

(assert (= (and d!1539104 res!2044027) b!4804818))

(assert (= (and b!4804818 res!2044029) b!4804819))

(assert (= (and b!4804819 res!2044028) b!4804820))

(declare-fun m!5790578 () Bool)

(assert (=> d!1539104 m!5790578))

(assert (=> d!1539104 m!5789818))

(declare-fun m!5790580 () Bool)

(assert (=> b!4804818 m!5790580))

(assert (=> b!4804818 m!5790560))

(declare-fun m!5790582 () Bool)

(assert (=> b!4804819 m!5790582))

(declare-fun m!5790584 () Bool)

(assert (=> b!4804820 m!5790584))

(declare-fun m!5790586 () Bool)

(assert (=> b!4804820 m!5790586))

(assert (=> b!4804820 m!5790586))

(declare-fun m!5790588 () Bool)

(assert (=> b!4804820 m!5790588))

(assert (=> b!4804356 d!1539104))

(declare-fun d!1539110 () Bool)

(assert (=> d!1539110 (isDefined!10358 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(declare-fun lt!1959051 () Unit!141007)

(assert (=> d!1539110 (= lt!1959051 (choose!34777 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(assert (=> d!1539110 (invariantList!1764 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))))

(assert (=> d!1539110 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896) lt!1959051)))

(declare-fun bs!1158978 () Bool)

(assert (= bs!1158978 d!1539110))

(assert (=> bs!1158978 m!5789946))

(assert (=> bs!1158978 m!5789946))

(assert (=> bs!1158978 m!5789948))

(declare-fun m!5790590 () Bool)

(assert (=> bs!1158978 m!5790590))

(declare-fun m!5790592 () Bool)

(assert (=> bs!1158978 m!5790592))

(assert (=> b!4804428 d!1539110))

(declare-fun d!1539112 () Bool)

(assert (=> d!1539112 (= (isDefined!10358 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896)) (not (isEmpty!29528 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))))

(declare-fun bs!1158979 () Bool)

(assert (= bs!1158979 d!1539112))

(assert (=> bs!1158979 m!5789946))

(declare-fun m!5790594 () Bool)

(assert (=> bs!1158979 m!5790594))

(assert (=> b!4804428 d!1539112))

(declare-fun d!1539114 () Bool)

(declare-fun c!819079 () Bool)

(assert (=> d!1539114 (= c!819079 (and ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) key!5896)))))

(declare-fun e!3000644 () Option!13217)

(assert (=> d!1539114 (= (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896) e!3000644)))

(declare-fun b!4804826 () Bool)

(declare-fun e!3000645 () Option!13217)

(assert (=> b!4804826 (= e!3000645 (getValueByKey!2418 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) key!5896))))

(declare-fun b!4804825 () Bool)

(assert (=> b!4804825 (= e!3000644 e!3000645)))

(declare-fun c!819080 () Bool)

(assert (=> b!4804825 (= c!819080 (and ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (not (= (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) key!5896))))))

(declare-fun b!4804827 () Bool)

(assert (=> b!4804827 (= e!3000645 None!13216)))

(declare-fun b!4804824 () Bool)

(assert (=> b!4804824 (= e!3000644 (Some!13216 (_2!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))))))

(assert (= (and d!1539114 c!819079) b!4804824))

(assert (= (and d!1539114 (not c!819079)) b!4804825))

(assert (= (and b!4804825 c!819080) b!4804826))

(assert (= (and b!4804825 (not c!819080)) b!4804827))

(declare-fun m!5790596 () Bool)

(assert (=> b!4804826 m!5790596))

(assert (=> b!4804428 d!1539114))

(declare-fun d!1539116 () Bool)

(assert (=> d!1539116 (contains!18022 (getKeysList!1110 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) key!5896)))

(declare-fun lt!1959052 () Unit!141007)

(assert (=> d!1539116 (= lt!1959052 (choose!34778 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(assert (=> d!1539116 (invariantList!1764 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))))

(assert (=> d!1539116 (= (lemmaInListThenGetKeysListContains!1105 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896) lt!1959052)))

(declare-fun bs!1158980 () Bool)

(assert (= bs!1158980 d!1539116))

(assert (=> bs!1158980 m!5789962))

(assert (=> bs!1158980 m!5789962))

(declare-fun m!5790598 () Bool)

(assert (=> bs!1158980 m!5790598))

(declare-fun m!5790600 () Bool)

(assert (=> bs!1158980 m!5790600))

(assert (=> bs!1158980 m!5790592))

(assert (=> b!4804428 d!1539116))

(declare-fun bs!1158981 () Bool)

(declare-fun b!4804829 () Bool)

(assert (= bs!1158981 (and b!4804829 b!4804804)))

(declare-fun lambda!233242 () Int)

(assert (=> bs!1158981 (= (= (toList!7028 lt!1958559) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233242 lambda!233231))))

(declare-fun bs!1158982 () Bool)

(assert (= bs!1158982 (and b!4804829 b!4804693)))

(assert (=> bs!1158982 (= (= (toList!7028 lt!1958559) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233242 lambda!233204))))

(declare-fun bs!1158983 () Bool)

(assert (= bs!1158983 (and b!4804829 b!4804687)))

(assert (=> bs!1158983 (= (= (toList!7028 lt!1958559) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233242 lambda!233202))))

(declare-fun bs!1158984 () Bool)

(assert (= bs!1158984 (and b!4804829 b!4804811)))

(assert (=> bs!1158984 (= (= (toList!7028 lt!1958559) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233242 lambda!233237))))

(declare-fun bs!1158985 () Bool)

(assert (= bs!1158985 (and b!4804829 b!4804819)))

(assert (=> bs!1158985 (= (= (toList!7028 lt!1958559) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233242 lambda!233240))))

(declare-fun bs!1158986 () Bool)

(assert (= bs!1158986 (and b!4804829 b!4804792)))

(assert (=> bs!1158986 (= (= (toList!7028 lt!1958559) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233242 lambda!233229))))

(declare-fun bs!1158987 () Bool)

(assert (= bs!1158987 (and b!4804829 b!4804570)))

(assert (=> bs!1158987 (= (= (toList!7028 lt!1958559) (toList!7028 lt!1958560)) (= lambda!233242 lambda!233181))))

(declare-fun bs!1158988 () Bool)

(assert (= bs!1158988 (and b!4804829 b!4804805)))

(assert (=> bs!1158988 (= (= (toList!7028 lt!1958559) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233242 lambda!233234))))

(declare-fun bs!1158989 () Bool)

(assert (= bs!1158989 (and b!4804829 b!4804622)))

(assert (=> bs!1158989 (= (= (toList!7028 lt!1958559) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233242 lambda!233187))))

(declare-fun bs!1158990 () Bool)

(assert (= bs!1158990 (and b!4804829 b!4804686)))

(assert (=> bs!1158990 (= (= (toList!7028 lt!1958559) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233242 lambda!233201))))

(assert (=> b!4804829 true))

(declare-fun bs!1158991 () Bool)

(declare-fun b!4804830 () Bool)

(assert (= bs!1158991 (and b!4804830 b!4804571)))

(declare-fun lambda!233243 () Int)

(assert (=> bs!1158991 (= lambda!233243 lambda!233182)))

(declare-fun bs!1158992 () Bool)

(assert (= bs!1158992 (and b!4804830 b!4804810)))

(assert (=> bs!1158992 (= lambda!233243 lambda!233238)))

(declare-fun bs!1158993 () Bool)

(assert (= bs!1158993 (and b!4804830 b!4804692)))

(assert (=> bs!1158993 (= lambda!233243 lambda!233206)))

(declare-fun bs!1158994 () Bool)

(assert (= bs!1158994 (and b!4804830 b!4804623)))

(assert (=> bs!1158994 (= lambda!233243 lambda!233188)))

(declare-fun bs!1158995 () Bool)

(assert (= bs!1158995 (and b!4804830 b!4804793)))

(assert (=> bs!1158995 (= lambda!233243 lambda!233230)))

(declare-fun bs!1158996 () Bool)

(assert (= bs!1158996 (and b!4804830 b!4804820)))

(assert (=> bs!1158996 (= lambda!233243 lambda!233241)))

(declare-fun d!1539118 () Bool)

(declare-fun e!3000646 () Bool)

(assert (=> d!1539118 e!3000646))

(declare-fun res!2044033 () Bool)

(assert (=> d!1539118 (=> (not res!2044033) (not e!3000646))))

(declare-fun lt!1959053 () List!54483)

(assert (=> d!1539118 (= res!2044033 (noDuplicate!940 lt!1959053))))

(assert (=> d!1539118 (= lt!1959053 (getKeysList!1110 (toList!7028 lt!1958559)))))

(assert (=> d!1539118 (= (keys!19883 lt!1958559) lt!1959053)))

(declare-fun b!4804828 () Bool)

(declare-fun res!2044035 () Bool)

(assert (=> b!4804828 (=> (not res!2044035) (not e!3000646))))

(assert (=> b!4804828 (= res!2044035 (= (length!736 lt!1959053) (length!737 (toList!7028 lt!1958559))))))

(declare-fun res!2044034 () Bool)

(assert (=> b!4804829 (=> (not res!2044034) (not e!3000646))))

(assert (=> b!4804829 (= res!2044034 (forall!12358 lt!1959053 lambda!233242))))

(assert (=> b!4804830 (= e!3000646 (= (content!9758 lt!1959053) (content!9758 (map!12288 (toList!7028 lt!1958559) lambda!233243))))))

(assert (= (and d!1539118 res!2044033) b!4804828))

(assert (= (and b!4804828 res!2044035) b!4804829))

(assert (= (and b!4804829 res!2044034) b!4804830))

(declare-fun m!5790602 () Bool)

(assert (=> d!1539118 m!5790602))

(assert (=> d!1539118 m!5789658))

(declare-fun m!5790604 () Bool)

(assert (=> b!4804828 m!5790604))

(declare-fun m!5790606 () Bool)

(assert (=> b!4804828 m!5790606))

(declare-fun m!5790608 () Bool)

(assert (=> b!4804829 m!5790608))

(declare-fun m!5790610 () Bool)

(assert (=> b!4804830 m!5790610))

(declare-fun m!5790612 () Bool)

(assert (=> b!4804830 m!5790612))

(assert (=> b!4804830 m!5790612))

(declare-fun m!5790614 () Bool)

(assert (=> b!4804830 m!5790614))

(assert (=> b!4804245 d!1539118))

(declare-fun d!1539120 () Bool)

(assert (=> d!1539120 (= (invariantList!1764 (toList!7028 lt!1958841)) (noDuplicatedKeys!458 (toList!7028 lt!1958841)))))

(declare-fun bs!1158997 () Bool)

(assert (= bs!1158997 d!1539120))

(declare-fun m!5790616 () Bool)

(assert (=> bs!1158997 m!5790616))

(assert (=> d!1538894 d!1539120))

(declare-fun d!1539122 () Bool)

(declare-fun res!2044036 () Bool)

(declare-fun e!3000647 () Bool)

(assert (=> d!1539122 (=> res!2044036 e!3000647)))

(assert (=> d!1539122 (= res!2044036 ((_ is Nil!54357) (toList!7027 lt!1958557)))))

(assert (=> d!1539122 (= (forall!12355 (toList!7027 lt!1958557) lambda!233155) e!3000647)))

(declare-fun b!4804831 () Bool)

(declare-fun e!3000648 () Bool)

(assert (=> b!4804831 (= e!3000647 e!3000648)))

(declare-fun res!2044037 () Bool)

(assert (=> b!4804831 (=> (not res!2044037) (not e!3000648))))

(assert (=> b!4804831 (= res!2044037 (dynLambda!22103 lambda!233155 (h!60789 (toList!7027 lt!1958557))))))

(declare-fun b!4804832 () Bool)

(assert (=> b!4804832 (= e!3000648 (forall!12355 (t!361931 (toList!7027 lt!1958557)) lambda!233155))))

(assert (= (and d!1539122 (not res!2044036)) b!4804831))

(assert (= (and b!4804831 res!2044037) b!4804832))

(declare-fun b_lambda!187959 () Bool)

(assert (=> (not b_lambda!187959) (not b!4804831)))

(declare-fun m!5790618 () Bool)

(assert (=> b!4804831 m!5790618))

(declare-fun m!5790620 () Bool)

(assert (=> b!4804832 m!5790620))

(assert (=> d!1538894 d!1539122))

(declare-fun d!1539124 () Bool)

(assert (=> d!1539124 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958560) key!5896))))

(declare-fun lt!1959054 () Unit!141007)

(assert (=> d!1539124 (= lt!1959054 (choose!34777 (toList!7028 lt!1958560) key!5896))))

(assert (=> d!1539124 (invariantList!1764 (toList!7028 lt!1958560))))

(assert (=> d!1539124 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 lt!1958560) key!5896) lt!1959054)))

(declare-fun bs!1158998 () Bool)

(assert (= bs!1158998 d!1539124))

(assert (=> bs!1158998 m!5790032))

(assert (=> bs!1158998 m!5790032))

(assert (=> bs!1158998 m!5790064))

(declare-fun m!5790622 () Bool)

(assert (=> bs!1158998 m!5790622))

(declare-fun m!5790624 () Bool)

(assert (=> bs!1158998 m!5790624))

(assert (=> b!4804510 d!1539124))

(declare-fun d!1539126 () Bool)

(assert (=> d!1539126 (= (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958560) key!5896)) (not (isEmpty!29528 (getValueByKey!2418 (toList!7028 lt!1958560) key!5896))))))

(declare-fun bs!1158999 () Bool)

(assert (= bs!1158999 d!1539126))

(assert (=> bs!1158999 m!5790032))

(declare-fun m!5790626 () Bool)

(assert (=> bs!1158999 m!5790626))

(assert (=> b!4804510 d!1539126))

(assert (=> b!4804510 d!1539066))

(declare-fun d!1539128 () Bool)

(assert (=> d!1539128 (contains!18022 (getKeysList!1110 (toList!7028 lt!1958560)) key!5896)))

(declare-fun lt!1959055 () Unit!141007)

(assert (=> d!1539128 (= lt!1959055 (choose!34778 (toList!7028 lt!1958560) key!5896))))

(assert (=> d!1539128 (invariantList!1764 (toList!7028 lt!1958560))))

(assert (=> d!1539128 (= (lemmaInListThenGetKeysListContains!1105 (toList!7028 lt!1958560) key!5896) lt!1959055)))

(declare-fun bs!1159000 () Bool)

(assert (= bs!1159000 d!1539128))

(assert (=> bs!1159000 m!5790078))

(assert (=> bs!1159000 m!5790078))

(declare-fun m!5790628 () Bool)

(assert (=> bs!1159000 m!5790628))

(declare-fun m!5790630 () Bool)

(assert (=> bs!1159000 m!5790630))

(assert (=> bs!1159000 m!5790624))

(assert (=> b!4804510 d!1539128))

(declare-fun d!1539130 () Bool)

(declare-fun lt!1959056 () Bool)

(assert (=> d!1539130 (= lt!1959056 (select (content!9758 e!3000258) key!5896))))

(declare-fun e!3000649 () Bool)

(assert (=> d!1539130 (= lt!1959056 e!3000649)))

(declare-fun res!2044038 () Bool)

(assert (=> d!1539130 (=> (not res!2044038) (not e!3000649))))

(assert (=> d!1539130 (= res!2044038 ((_ is Cons!54359) e!3000258))))

(assert (=> d!1539130 (= (contains!18022 e!3000258 key!5896) lt!1959056)))

(declare-fun b!4804833 () Bool)

(declare-fun e!3000650 () Bool)

(assert (=> b!4804833 (= e!3000649 e!3000650)))

(declare-fun res!2044039 () Bool)

(assert (=> b!4804833 (=> res!2044039 e!3000650)))

(assert (=> b!4804833 (= res!2044039 (= (h!60791 e!3000258) key!5896))))

(declare-fun b!4804834 () Bool)

(assert (=> b!4804834 (= e!3000650 (contains!18022 (t!361933 e!3000258) key!5896))))

(assert (= (and d!1539130 res!2044038) b!4804833))

(assert (= (and b!4804833 (not res!2044039)) b!4804834))

(declare-fun m!5790632 () Bool)

(assert (=> d!1539130 m!5790632))

(declare-fun m!5790634 () Bool)

(assert (=> d!1539130 m!5790634))

(declare-fun m!5790636 () Bool)

(assert (=> b!4804834 m!5790636))

(assert (=> bm!335501 d!1539130))

(declare-fun d!1539132 () Bool)

(assert (=> d!1539132 (isDefined!10359 (getValueByKey!2419 (toList!7027 lt!1958557) lt!1958563))))

(declare-fun lt!1959057 () Unit!141007)

(assert (=> d!1539132 (= lt!1959057 (choose!34772 (toList!7027 lt!1958557) lt!1958563))))

(declare-fun e!3000651 () Bool)

(assert (=> d!1539132 e!3000651))

(declare-fun res!2044040 () Bool)

(assert (=> d!1539132 (=> (not res!2044040) (not e!3000651))))

(assert (=> d!1539132 (= res!2044040 (isStrictlySorted!910 (toList!7027 lt!1958557)))))

(assert (=> d!1539132 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2210 (toList!7027 lt!1958557) lt!1958563) lt!1959057)))

(declare-fun b!4804835 () Bool)

(assert (=> b!4804835 (= e!3000651 (containsKey!4068 (toList!7027 lt!1958557) lt!1958563))))

(assert (= (and d!1539132 res!2044040) b!4804835))

(assert (=> d!1539132 m!5790058))

(assert (=> d!1539132 m!5790058))

(assert (=> d!1539132 m!5790060))

(declare-fun m!5790638 () Bool)

(assert (=> d!1539132 m!5790638))

(declare-fun m!5790640 () Bool)

(assert (=> d!1539132 m!5790640))

(assert (=> b!4804835 m!5790054))

(assert (=> b!4804500 d!1539132))

(assert (=> b!4804500 d!1539090))

(assert (=> b!4804500 d!1539092))

(declare-fun lt!1959068 () Bool)

(declare-fun d!1539134 () Bool)

(declare-fun content!9759 (List!54480) (InoxSet tuple2!57064))

(assert (=> d!1539134 (= lt!1959068 (select (content!9759 (apply!13053 lm!2473 lt!1958563)) (get!18580 lt!1958862)))))

(declare-fun e!3000658 () Bool)

(assert (=> d!1539134 (= lt!1959068 e!3000658)))

(declare-fun res!2044049 () Bool)

(assert (=> d!1539134 (=> (not res!2044049) (not e!3000658))))

(assert (=> d!1539134 (= res!2044049 ((_ is Cons!54356) (apply!13053 lm!2473 lt!1958563)))))

(assert (=> d!1539134 (= (contains!18023 (apply!13053 lm!2473 lt!1958563) (get!18580 lt!1958862)) lt!1959068)))

(declare-fun b!4804844 () Bool)

(declare-fun e!3000659 () Bool)

(assert (=> b!4804844 (= e!3000658 e!3000659)))

(declare-fun res!2044050 () Bool)

(assert (=> b!4804844 (=> res!2044050 e!3000659)))

(assert (=> b!4804844 (= res!2044050 (= (h!60788 (apply!13053 lm!2473 lt!1958563)) (get!18580 lt!1958862)))))

(declare-fun b!4804845 () Bool)

(assert (=> b!4804845 (= e!3000659 (contains!18023 (t!361930 (apply!13053 lm!2473 lt!1958563)) (get!18580 lt!1958862)))))

(assert (= (and d!1539134 res!2044049) b!4804844))

(assert (= (and b!4804844 (not res!2044050)) b!4804845))

(assert (=> d!1539134 m!5789582))

(declare-fun m!5790642 () Bool)

(assert (=> d!1539134 m!5790642))

(assert (=> d!1539134 m!5790022))

(declare-fun m!5790644 () Bool)

(assert (=> d!1539134 m!5790644))

(assert (=> b!4804845 m!5790022))

(declare-fun m!5790646 () Bool)

(assert (=> b!4804845 m!5790646))

(assert (=> b!4804491 d!1539134))

(assert (=> b!4804491 d!1539100))

(declare-fun bs!1159001 () Bool)

(declare-fun b!4804850 () Bool)

(assert (= bs!1159001 (and b!4804850 b!4804416)))

(declare-fun lambda!233244 () Int)

(assert (=> bs!1159001 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958815) (= lambda!233244 lambda!233150))))

(declare-fun bs!1159002 () Bool)

(assert (= bs!1159002 (and b!4804850 b!4804718)))

(assert (=> bs!1159002 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233244 lambda!233208))))

(assert (=> bs!1159002 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958982) (= lambda!233244 lambda!233209))))

(declare-fun bs!1159003 () Bool)

(assert (= bs!1159003 (and b!4804850 b!4804539)))

(assert (=> bs!1159003 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958888) (= lambda!233244 lambda!233174))))

(assert (=> bs!1159003 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233244 lambda!233173))))

(declare-fun bs!1159004 () Bool)

(assert (= bs!1159004 (and b!4804850 d!1539044)))

(assert (=> bs!1159004 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958987) (= lambda!233244 lambda!233210))))

(declare-fun bs!1159005 () Bool)

(assert (= bs!1159005 (and b!4804850 d!1538984)))

(assert (=> bs!1159005 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958930) (= lambda!233244 lambda!233186))))

(assert (=> bs!1159001 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958559) (= lambda!233244 lambda!233149))))

(declare-fun bs!1159006 () Bool)

(assert (= bs!1159006 (and b!4804850 b!4804604)))

(assert (=> bs!1159006 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958925) (= lambda!233244 lambda!233185))))

(declare-fun bs!1159007 () Bool)

(assert (= bs!1159007 (and b!4804850 b!4804541)))

(assert (=> bs!1159007 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233244 lambda!233172))))

(declare-fun bs!1159008 () Bool)

(assert (= bs!1159008 (and b!4804850 b!4804418)))

(assert (=> bs!1159008 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958559) (= lambda!233244 lambda!233148))))

(declare-fun bs!1159009 () Bool)

(assert (= bs!1159009 (and b!4804850 b!4804606)))

(assert (=> bs!1159009 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233244 lambda!233183))))

(assert (=> bs!1159006 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233244 lambda!233184))))

(declare-fun bs!1159011 () Bool)

(assert (= bs!1159011 (and b!4804850 d!1538870)))

(assert (=> bs!1159011 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958820) (= lambda!233244 lambda!233151))))

(declare-fun bs!1159013 () Bool)

(assert (= bs!1159013 (and b!4804850 d!1538946)))

(assert (=> bs!1159013 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958893) (= lambda!233244 lambda!233175))))

(declare-fun bs!1159015 () Bool)

(assert (= bs!1159015 (and b!4804850 b!4804720)))

(assert (=> bs!1159015 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233244 lambda!233207))))

(assert (=> b!4804850 true))

(declare-fun bs!1159018 () Bool)

(declare-fun b!4804848 () Bool)

(assert (= bs!1159018 (and b!4804848 b!4804416)))

(declare-fun lambda!233246 () Int)

(assert (=> bs!1159018 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958815) (= lambda!233246 lambda!233150))))

(declare-fun bs!1159020 () Bool)

(assert (= bs!1159020 (and b!4804848 b!4804718)))

(assert (=> bs!1159020 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233246 lambda!233208))))

(assert (=> bs!1159020 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958982) (= lambda!233246 lambda!233209))))

(declare-fun bs!1159022 () Bool)

(assert (= bs!1159022 (and b!4804848 b!4804539)))

(assert (=> bs!1159022 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958888) (= lambda!233246 lambda!233174))))

(assert (=> bs!1159022 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233246 lambda!233173))))

(declare-fun bs!1159024 () Bool)

(assert (= bs!1159024 (and b!4804848 d!1539044)))

(assert (=> bs!1159024 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958987) (= lambda!233246 lambda!233210))))

(declare-fun bs!1159025 () Bool)

(assert (= bs!1159025 (and b!4804848 d!1538984)))

(assert (=> bs!1159025 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958930) (= lambda!233246 lambda!233186))))

(assert (=> bs!1159018 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958559) (= lambda!233246 lambda!233149))))

(declare-fun bs!1159028 () Bool)

(assert (= bs!1159028 (and b!4804848 b!4804541)))

(assert (=> bs!1159028 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233246 lambda!233172))))

(declare-fun bs!1159030 () Bool)

(assert (= bs!1159030 (and b!4804848 b!4804418)))

(assert (=> bs!1159030 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958559) (= lambda!233246 lambda!233148))))

(declare-fun bs!1159031 () Bool)

(assert (= bs!1159031 (and b!4804848 b!4804606)))

(assert (=> bs!1159031 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233246 lambda!233183))))

(declare-fun bs!1159032 () Bool)

(assert (= bs!1159032 (and b!4804848 b!4804604)))

(assert (=> bs!1159032 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233246 lambda!233184))))

(declare-fun bs!1159033 () Bool)

(assert (= bs!1159033 (and b!4804848 d!1538870)))

(assert (=> bs!1159033 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958820) (= lambda!233246 lambda!233151))))

(declare-fun bs!1159034 () Bool)

(assert (= bs!1159034 (and b!4804848 d!1538946)))

(assert (=> bs!1159034 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958893) (= lambda!233246 lambda!233175))))

(declare-fun bs!1159035 () Bool)

(assert (= bs!1159035 (and b!4804848 b!4804720)))

(assert (=> bs!1159035 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233246 lambda!233207))))

(assert (=> bs!1159032 (= (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1958925) (= lambda!233246 lambda!233185))))

(declare-fun bs!1159036 () Bool)

(assert (= bs!1159036 (and b!4804848 b!4804850)))

(assert (=> bs!1159036 (= lambda!233246 lambda!233244)))

(assert (=> b!4804848 true))

(declare-fun lt!1959075 () ListMap!6499)

(declare-fun lambda!233249 () Int)

(assert (=> bs!1159018 (= (= lt!1959075 lt!1958815) (= lambda!233249 lambda!233150))))

(assert (=> bs!1159020 (= (= lt!1959075 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233249 lambda!233208))))

(assert (=> bs!1159020 (= (= lt!1959075 lt!1958982) (= lambda!233249 lambda!233209))))

(assert (=> bs!1159022 (= (= lt!1959075 lt!1958888) (= lambda!233249 lambda!233174))))

(assert (=> bs!1159022 (= (= lt!1959075 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233249 lambda!233173))))

(assert (=> bs!1159024 (= (= lt!1959075 lt!1958987) (= lambda!233249 lambda!233210))))

(assert (=> bs!1159025 (= (= lt!1959075 lt!1958930) (= lambda!233249 lambda!233186))))

(assert (=> bs!1159018 (= (= lt!1959075 lt!1958559) (= lambda!233249 lambda!233149))))

(assert (=> bs!1159030 (= (= lt!1959075 lt!1958559) (= lambda!233249 lambda!233148))))

(assert (=> bs!1159031 (= (= lt!1959075 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233249 lambda!233183))))

(assert (=> bs!1159032 (= (= lt!1959075 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233249 lambda!233184))))

(assert (=> bs!1159033 (= (= lt!1959075 lt!1958820) (= lambda!233249 lambda!233151))))

(assert (=> bs!1159034 (= (= lt!1959075 lt!1958893) (= lambda!233249 lambda!233175))))

(assert (=> bs!1159035 (= (= lt!1959075 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233249 lambda!233207))))

(assert (=> bs!1159032 (= (= lt!1959075 lt!1958925) (= lambda!233249 lambda!233185))))

(assert (=> bs!1159036 (= (= lt!1959075 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (= lambda!233249 lambda!233244))))

(assert (=> bs!1159028 (= (= lt!1959075 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233249 lambda!233172))))

(assert (=> b!4804848 (= (= lt!1959075 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (= lambda!233249 lambda!233246))))

(assert (=> b!4804848 true))

(declare-fun bs!1159044 () Bool)

(declare-fun d!1539136 () Bool)

(assert (= bs!1159044 (and d!1539136 b!4804416)))

(declare-fun lt!1959080 () ListMap!6499)

(declare-fun lambda!233251 () Int)

(assert (=> bs!1159044 (= (= lt!1959080 lt!1958815) (= lambda!233251 lambda!233150))))

(declare-fun bs!1159045 () Bool)

(assert (= bs!1159045 (and d!1539136 b!4804718)))

(assert (=> bs!1159045 (= (= lt!1959080 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233251 lambda!233208))))

(assert (=> bs!1159045 (= (= lt!1959080 lt!1958982) (= lambda!233251 lambda!233209))))

(declare-fun bs!1159046 () Bool)

(assert (= bs!1159046 (and d!1539136 b!4804539)))

(assert (=> bs!1159046 (= (= lt!1959080 lt!1958888) (= lambda!233251 lambda!233174))))

(assert (=> bs!1159046 (= (= lt!1959080 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233251 lambda!233173))))

(declare-fun bs!1159047 () Bool)

(assert (= bs!1159047 (and d!1539136 d!1539044)))

(assert (=> bs!1159047 (= (= lt!1959080 lt!1958987) (= lambda!233251 lambda!233210))))

(declare-fun bs!1159048 () Bool)

(assert (= bs!1159048 (and d!1539136 d!1538984)))

(assert (=> bs!1159048 (= (= lt!1959080 lt!1958930) (= lambda!233251 lambda!233186))))

(assert (=> bs!1159044 (= (= lt!1959080 lt!1958559) (= lambda!233251 lambda!233149))))

(declare-fun bs!1159049 () Bool)

(assert (= bs!1159049 (and d!1539136 b!4804418)))

(assert (=> bs!1159049 (= (= lt!1959080 lt!1958559) (= lambda!233251 lambda!233148))))

(declare-fun bs!1159050 () Bool)

(assert (= bs!1159050 (and d!1539136 b!4804604)))

(assert (=> bs!1159050 (= (= lt!1959080 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233251 lambda!233184))))

(declare-fun bs!1159051 () Bool)

(assert (= bs!1159051 (and d!1539136 d!1538870)))

(assert (=> bs!1159051 (= (= lt!1959080 lt!1958820) (= lambda!233251 lambda!233151))))

(declare-fun bs!1159052 () Bool)

(assert (= bs!1159052 (and d!1539136 d!1538946)))

(assert (=> bs!1159052 (= (= lt!1959080 lt!1958893) (= lambda!233251 lambda!233175))))

(declare-fun bs!1159053 () Bool)

(assert (= bs!1159053 (and d!1539136 b!4804720)))

(assert (=> bs!1159053 (= (= lt!1959080 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233251 lambda!233207))))

(assert (=> bs!1159050 (= (= lt!1959080 lt!1958925) (= lambda!233251 lambda!233185))))

(declare-fun bs!1159054 () Bool)

(assert (= bs!1159054 (and d!1539136 b!4804850)))

(assert (=> bs!1159054 (= (= lt!1959080 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (= lambda!233251 lambda!233244))))

(declare-fun bs!1159055 () Bool)

(assert (= bs!1159055 (and d!1539136 b!4804541)))

(assert (=> bs!1159055 (= (= lt!1959080 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233251 lambda!233172))))

(declare-fun bs!1159056 () Bool)

(assert (= bs!1159056 (and d!1539136 b!4804848)))

(assert (=> bs!1159056 (= (= lt!1959080 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (= lambda!233251 lambda!233246))))

(declare-fun bs!1159057 () Bool)

(assert (= bs!1159057 (and d!1539136 b!4804606)))

(assert (=> bs!1159057 (= (= lt!1959080 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233251 lambda!233183))))

(assert (=> bs!1159056 (= (= lt!1959080 lt!1959075) (= lambda!233251 lambda!233249))))

(assert (=> d!1539136 true))

(declare-fun b!4804846 () Bool)

(declare-fun e!3000661 () Bool)

(assert (=> b!4804846 (= e!3000661 (invariantList!1764 (toList!7028 lt!1959080)))))

(declare-fun c!819081 () Bool)

(declare-fun bm!335537 () Bool)

(declare-fun call!335542 () Bool)

(assert (=> bm!335537 (= call!335542 (forall!12357 (toList!7028 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (ite c!819081 lambda!233244 lambda!233249)))))

(declare-fun bm!335538 () Bool)

(declare-fun call!335543 () Bool)

(assert (=> bm!335538 (= call!335543 (forall!12357 (toList!7028 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (ite c!819081 lambda!233244 lambda!233249)))))

(declare-fun b!4804847 () Bool)

(declare-fun e!3000662 () Bool)

(assert (=> b!4804847 (= e!3000662 call!335543)))

(assert (=> d!1539136 e!3000661))

(declare-fun res!2044052 () Bool)

(assert (=> d!1539136 (=> (not res!2044052) (not e!3000661))))

(assert (=> d!1539136 (= res!2044052 (forall!12357 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) lambda!233251))))

(declare-fun e!3000660 () ListMap!6499)

(assert (=> d!1539136 (= lt!1959080 e!3000660)))

(assert (=> d!1539136 (= c!819081 ((_ is Nil!54356) (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (=> d!1539136 (noDuplicateKeys!2372 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(assert (=> d!1539136 (= (addToMapMapFromBucket!1741 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) lt!1959080)))

(declare-fun bm!335539 () Bool)

(declare-fun call!335544 () Unit!141007)

(assert (=> bm!335539 (= call!335544 (lemmaContainsAllItsOwnKeys!969 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> b!4804848 (= e!3000660 lt!1959075)))

(declare-fun lt!1959081 () ListMap!6499)

(assert (=> b!4804848 (= lt!1959081 (+!2513 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> b!4804848 (= lt!1959075 (addToMapMapFromBucket!1741 (t!361930 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (+!2513 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(declare-fun lt!1959086 () Unit!141007)

(assert (=> b!4804848 (= lt!1959086 call!335544)))

(assert (=> b!4804848 (forall!12357 (toList!7028 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) lambda!233246)))

(declare-fun lt!1959076 () Unit!141007)

(assert (=> b!4804848 (= lt!1959076 lt!1959086)))

(assert (=> b!4804848 (forall!12357 (toList!7028 lt!1959081) lambda!233249)))

(declare-fun lt!1959072 () Unit!141007)

(declare-fun Unit!141125 () Unit!141007)

(assert (=> b!4804848 (= lt!1959072 Unit!141125)))

(assert (=> b!4804848 (forall!12357 (t!361930 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lambda!233249)))

(declare-fun lt!1959079 () Unit!141007)

(declare-fun Unit!141126 () Unit!141007)

(assert (=> b!4804848 (= lt!1959079 Unit!141126)))

(declare-fun lt!1959073 () Unit!141007)

(declare-fun Unit!141127 () Unit!141007)

(assert (=> b!4804848 (= lt!1959073 Unit!141127)))

(declare-fun lt!1959077 () Unit!141007)

(assert (=> b!4804848 (= lt!1959077 (forallContained!4227 (toList!7028 lt!1959081) lambda!233249 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> b!4804848 (contains!18018 lt!1959081 (_1!31826 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun lt!1959089 () Unit!141007)

(declare-fun Unit!141128 () Unit!141007)

(assert (=> b!4804848 (= lt!1959089 Unit!141128)))

(assert (=> b!4804848 (contains!18018 lt!1959075 (_1!31826 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun lt!1959082 () Unit!141007)

(declare-fun Unit!141129 () Unit!141007)

(assert (=> b!4804848 (= lt!1959082 Unit!141129)))

(assert (=> b!4804848 (forall!12357 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) lambda!233249)))

(declare-fun lt!1959084 () Unit!141007)

(declare-fun Unit!141130 () Unit!141007)

(assert (=> b!4804848 (= lt!1959084 Unit!141130)))

(assert (=> b!4804848 (forall!12357 (toList!7028 lt!1959081) lambda!233249)))

(declare-fun lt!1959069 () Unit!141007)

(declare-fun Unit!141131 () Unit!141007)

(assert (=> b!4804848 (= lt!1959069 Unit!141131)))

(declare-fun lt!1959074 () Unit!141007)

(declare-fun Unit!141132 () Unit!141007)

(assert (=> b!4804848 (= lt!1959074 Unit!141132)))

(declare-fun lt!1959078 () Unit!141007)

(assert (=> b!4804848 (= lt!1959078 (addForallContainsKeyThenBeforeAdding!968 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1959075 (_1!31826 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (_2!31826 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(assert (=> b!4804848 call!335542))

(declare-fun lt!1959083 () Unit!141007)

(assert (=> b!4804848 (= lt!1959083 lt!1959078)))

(assert (=> b!4804848 (forall!12357 (toList!7028 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) lambda!233249)))

(declare-fun lt!1959085 () Unit!141007)

(declare-fun Unit!141133 () Unit!141007)

(assert (=> b!4804848 (= lt!1959085 Unit!141133)))

(declare-fun res!2044053 () Bool)

(assert (=> b!4804848 (= res!2044053 (forall!12357 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) lambda!233249))))

(assert (=> b!4804848 (=> (not res!2044053) (not e!3000662))))

(assert (=> b!4804848 e!3000662))

(declare-fun lt!1959087 () Unit!141007)

(declare-fun Unit!141134 () Unit!141007)

(assert (=> b!4804848 (= lt!1959087 Unit!141134)))

(declare-fun b!4804849 () Bool)

(declare-fun res!2044051 () Bool)

(assert (=> b!4804849 (=> (not res!2044051) (not e!3000661))))

(assert (=> b!4804849 (= res!2044051 (forall!12357 (toList!7028 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) lambda!233251))))

(assert (=> b!4804850 (= e!3000660 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun lt!1959070 () Unit!141007)

(assert (=> b!4804850 (= lt!1959070 call!335544)))

(assert (=> b!4804850 call!335542))

(declare-fun lt!1959088 () Unit!141007)

(assert (=> b!4804850 (= lt!1959088 lt!1959070)))

(assert (=> b!4804850 call!335543))

(declare-fun lt!1959071 () Unit!141007)

(declare-fun Unit!141135 () Unit!141007)

(assert (=> b!4804850 (= lt!1959071 Unit!141135)))

(assert (= (and d!1539136 c!819081) b!4804850))

(assert (= (and d!1539136 (not c!819081)) b!4804848))

(assert (= (and b!4804848 res!2044053) b!4804847))

(assert (= (or b!4804850 b!4804848) bm!335537))

(assert (= (or b!4804850 b!4804847) bm!335538))

(assert (= (or b!4804850 b!4804848) bm!335539))

(assert (= (and d!1539136 res!2044052) b!4804849))

(assert (= (and b!4804849 res!2044051) b!4804846))

(declare-fun m!5790722 () Bool)

(assert (=> b!4804849 m!5790722))

(assert (=> bm!335539 m!5789922))

(declare-fun m!5790724 () Bool)

(assert (=> bm!335539 m!5790724))

(declare-fun m!5790726 () Bool)

(assert (=> b!4804846 m!5790726))

(declare-fun m!5790728 () Bool)

(assert (=> d!1539136 m!5790728))

(assert (=> d!1539136 m!5790038))

(declare-fun m!5790730 () Bool)

(assert (=> bm!335538 m!5790730))

(declare-fun m!5790732 () Bool)

(assert (=> b!4804848 m!5790732))

(declare-fun m!5790734 () Bool)

(assert (=> b!4804848 m!5790734))

(assert (=> b!4804848 m!5789922))

(declare-fun m!5790736 () Bool)

(assert (=> b!4804848 m!5790736))

(declare-fun m!5790738 () Bool)

(assert (=> b!4804848 m!5790738))

(assert (=> b!4804848 m!5790734))

(declare-fun m!5790740 () Bool)

(assert (=> b!4804848 m!5790740))

(declare-fun m!5790742 () Bool)

(assert (=> b!4804848 m!5790742))

(declare-fun m!5790744 () Bool)

(assert (=> b!4804848 m!5790744))

(assert (=> b!4804848 m!5789922))

(declare-fun m!5790746 () Bool)

(assert (=> b!4804848 m!5790746))

(declare-fun m!5790748 () Bool)

(assert (=> b!4804848 m!5790748))

(declare-fun m!5790750 () Bool)

(assert (=> b!4804848 m!5790750))

(assert (=> b!4804848 m!5790742))

(assert (=> b!4804848 m!5790736))

(declare-fun m!5790752 () Bool)

(assert (=> b!4804848 m!5790752))

(assert (=> bm!335537 m!5790730))

(assert (=> b!4804416 d!1539136))

(declare-fun d!1539148 () Bool)

(declare-fun res!2044077 () Bool)

(declare-fun e!3000691 () Bool)

(assert (=> d!1539148 (=> res!2044077 e!3000691)))

(assert (=> d!1539148 (= res!2044077 ((_ is Nil!54356) (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(assert (=> d!1539148 (= (forall!12357 (_2!31827 (h!60789 (toList!7027 lm!2473))) lambda!233150) e!3000691)))

(declare-fun b!4804888 () Bool)

(declare-fun e!3000692 () Bool)

(assert (=> b!4804888 (= e!3000691 e!3000692)))

(declare-fun res!2044078 () Bool)

(assert (=> b!4804888 (=> (not res!2044078) (not e!3000692))))

(declare-fun dynLambda!22105 (Int tuple2!57064) Bool)

(assert (=> b!4804888 (= res!2044078 (dynLambda!22105 lambda!233150 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun b!4804889 () Bool)

(assert (=> b!4804889 (= e!3000692 (forall!12357 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) lambda!233150))))

(assert (= (and d!1539148 (not res!2044077)) b!4804888))

(assert (= (and b!4804888 res!2044078) b!4804889))

(declare-fun b_lambda!187969 () Bool)

(assert (=> (not b_lambda!187969) (not b!4804888)))

(declare-fun m!5790778 () Bool)

(assert (=> b!4804888 m!5790778))

(assert (=> b!4804889 m!5789926))

(assert (=> b!4804416 d!1539148))

(declare-fun b!4804890 () Bool)

(declare-fun e!3000698 () Unit!141007)

(declare-fun Unit!141136 () Unit!141007)

(assert (=> b!4804890 (= e!3000698 Unit!141136)))

(declare-fun b!4804891 () Bool)

(declare-fun e!3000694 () Bool)

(assert (=> b!4804891 (= e!3000694 (not (contains!18022 (keys!19883 lt!1958815) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(declare-fun b!4804892 () Bool)

(declare-fun e!3000693 () List!54483)

(assert (=> b!4804892 (= e!3000693 (keys!19883 lt!1958815))))

(declare-fun d!1539156 () Bool)

(declare-fun e!3000695 () Bool)

(assert (=> d!1539156 e!3000695))

(declare-fun res!2044079 () Bool)

(assert (=> d!1539156 (=> res!2044079 e!3000695)))

(assert (=> d!1539156 (= res!2044079 e!3000694)))

(declare-fun res!2044080 () Bool)

(assert (=> d!1539156 (=> (not res!2044080) (not e!3000694))))

(declare-fun lt!1959137 () Bool)

(assert (=> d!1539156 (= res!2044080 (not lt!1959137))))

(declare-fun lt!1959135 () Bool)

(assert (=> d!1539156 (= lt!1959137 lt!1959135)))

(declare-fun lt!1959132 () Unit!141007)

(declare-fun e!3000696 () Unit!141007)

(assert (=> d!1539156 (= lt!1959132 e!3000696)))

(declare-fun c!819091 () Bool)

(assert (=> d!1539156 (= c!819091 lt!1959135)))

(assert (=> d!1539156 (= lt!1959135 (containsKey!4067 (toList!7028 lt!1958815) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> d!1539156 (= (contains!18018 lt!1958815 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) lt!1959137)))

(declare-fun b!4804893 () Bool)

(declare-fun e!3000697 () Bool)

(assert (=> b!4804893 (= e!3000697 (contains!18022 (keys!19883 lt!1958815) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun bm!335545 () Bool)

(declare-fun call!335550 () Bool)

(assert (=> bm!335545 (= call!335550 (contains!18022 e!3000693 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun c!819090 () Bool)

(assert (=> bm!335545 (= c!819090 c!819091)))

(declare-fun b!4804894 () Bool)

(assert (=> b!4804894 (= e!3000695 e!3000697)))

(declare-fun res!2044081 () Bool)

(assert (=> b!4804894 (=> (not res!2044081) (not e!3000697))))

(assert (=> b!4804894 (= res!2044081 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958815) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(declare-fun b!4804895 () Bool)

(assert (=> b!4804895 (= e!3000696 e!3000698)))

(declare-fun c!819089 () Bool)

(assert (=> b!4804895 (= c!819089 call!335550)))

(declare-fun b!4804896 () Bool)

(assert (=> b!4804896 (= e!3000693 (getKeysList!1110 (toList!7028 lt!1958815)))))

(declare-fun b!4804897 () Bool)

(declare-fun lt!1959138 () Unit!141007)

(assert (=> b!4804897 (= e!3000696 lt!1959138)))

(declare-fun lt!1959133 () Unit!141007)

(assert (=> b!4804897 (= lt!1959133 (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 lt!1958815) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> b!4804897 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958815) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun lt!1959136 () Unit!141007)

(assert (=> b!4804897 (= lt!1959136 lt!1959133)))

(assert (=> b!4804897 (= lt!1959138 (lemmaInListThenGetKeysListContains!1105 (toList!7028 lt!1958815) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> b!4804897 call!335550))

(declare-fun b!4804898 () Bool)

(assert (=> b!4804898 false))

(declare-fun lt!1959131 () Unit!141007)

(declare-fun lt!1959134 () Unit!141007)

(assert (=> b!4804898 (= lt!1959131 lt!1959134)))

(assert (=> b!4804898 (containsKey!4067 (toList!7028 lt!1958815) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (=> b!4804898 (= lt!1959134 (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 lt!1958815) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun Unit!141137 () Unit!141007)

(assert (=> b!4804898 (= e!3000698 Unit!141137)))

(assert (= (and d!1539156 c!819091) b!4804897))

(assert (= (and d!1539156 (not c!819091)) b!4804895))

(assert (= (and b!4804895 c!819089) b!4804898))

(assert (= (and b!4804895 (not c!819089)) b!4804890))

(assert (= (or b!4804897 b!4804895) bm!335545))

(assert (= (and bm!335545 c!819090) b!4804896))

(assert (= (and bm!335545 (not c!819090)) b!4804892))

(assert (= (and d!1539156 res!2044080) b!4804891))

(assert (= (and d!1539156 (not res!2044079)) b!4804894))

(assert (= (and b!4804894 res!2044081) b!4804893))

(declare-fun m!5790780 () Bool)

(assert (=> b!4804892 m!5790780))

(declare-fun m!5790782 () Bool)

(assert (=> b!4804894 m!5790782))

(assert (=> b!4804894 m!5790782))

(declare-fun m!5790784 () Bool)

(assert (=> b!4804894 m!5790784))

(assert (=> b!4804893 m!5790780))

(assert (=> b!4804893 m!5790780))

(declare-fun m!5790786 () Bool)

(assert (=> b!4804893 m!5790786))

(assert (=> b!4804891 m!5790780))

(assert (=> b!4804891 m!5790780))

(assert (=> b!4804891 m!5790786))

(declare-fun m!5790788 () Bool)

(assert (=> bm!335545 m!5790788))

(declare-fun m!5790790 () Bool)

(assert (=> b!4804897 m!5790790))

(assert (=> b!4804897 m!5790782))

(assert (=> b!4804897 m!5790782))

(assert (=> b!4804897 m!5790784))

(declare-fun m!5790792 () Bool)

(assert (=> b!4804897 m!5790792))

(declare-fun m!5790794 () Bool)

(assert (=> b!4804898 m!5790794))

(declare-fun m!5790796 () Bool)

(assert (=> b!4804898 m!5790796))

(declare-fun m!5790798 () Bool)

(assert (=> b!4804896 m!5790798))

(assert (=> d!1539156 m!5790794))

(assert (=> b!4804416 d!1539156))

(declare-fun b!4804902 () Bool)

(declare-fun e!3000707 () Unit!141007)

(declare-fun Unit!141138 () Unit!141007)

(assert (=> b!4804902 (= e!3000707 Unit!141138)))

(declare-fun b!4804903 () Bool)

(declare-fun e!3000703 () Bool)

(assert (=> b!4804903 (= e!3000703 (not (contains!18022 (keys!19883 lt!1958821) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(declare-fun b!4804904 () Bool)

(declare-fun e!3000702 () List!54483)

(assert (=> b!4804904 (= e!3000702 (keys!19883 lt!1958821))))

(declare-fun d!1539158 () Bool)

(declare-fun e!3000704 () Bool)

(assert (=> d!1539158 e!3000704))

(declare-fun res!2044085 () Bool)

(assert (=> d!1539158 (=> res!2044085 e!3000704)))

(assert (=> d!1539158 (= res!2044085 e!3000703)))

(declare-fun res!2044086 () Bool)

(assert (=> d!1539158 (=> (not res!2044086) (not e!3000703))))

(declare-fun lt!1959148 () Bool)

(assert (=> d!1539158 (= res!2044086 (not lt!1959148))))

(declare-fun lt!1959146 () Bool)

(assert (=> d!1539158 (= lt!1959148 lt!1959146)))

(declare-fun lt!1959143 () Unit!141007)

(declare-fun e!3000705 () Unit!141007)

(assert (=> d!1539158 (= lt!1959143 e!3000705)))

(declare-fun c!819094 () Bool)

(assert (=> d!1539158 (= c!819094 lt!1959146)))

(assert (=> d!1539158 (= lt!1959146 (containsKey!4067 (toList!7028 lt!1958821) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> d!1539158 (= (contains!18018 lt!1958821 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) lt!1959148)))

(declare-fun b!4804905 () Bool)

(declare-fun e!3000706 () Bool)

(assert (=> b!4804905 (= e!3000706 (contains!18022 (keys!19883 lt!1958821) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun bm!335546 () Bool)

(declare-fun call!335551 () Bool)

(assert (=> bm!335546 (= call!335551 (contains!18022 e!3000702 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun c!819093 () Bool)

(assert (=> bm!335546 (= c!819093 c!819094)))

(declare-fun b!4804906 () Bool)

(assert (=> b!4804906 (= e!3000704 e!3000706)))

(declare-fun res!2044087 () Bool)

(assert (=> b!4804906 (=> (not res!2044087) (not e!3000706))))

(assert (=> b!4804906 (= res!2044087 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958821) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(declare-fun b!4804907 () Bool)

(assert (=> b!4804907 (= e!3000705 e!3000707)))

(declare-fun c!819092 () Bool)

(assert (=> b!4804907 (= c!819092 call!335551)))

(declare-fun b!4804908 () Bool)

(assert (=> b!4804908 (= e!3000702 (getKeysList!1110 (toList!7028 lt!1958821)))))

(declare-fun b!4804909 () Bool)

(declare-fun lt!1959149 () Unit!141007)

(assert (=> b!4804909 (= e!3000705 lt!1959149)))

(declare-fun lt!1959144 () Unit!141007)

(assert (=> b!4804909 (= lt!1959144 (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 lt!1958821) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> b!4804909 (isDefined!10358 (getValueByKey!2418 (toList!7028 lt!1958821) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun lt!1959147 () Unit!141007)

(assert (=> b!4804909 (= lt!1959147 lt!1959144)))

(assert (=> b!4804909 (= lt!1959149 (lemmaInListThenGetKeysListContains!1105 (toList!7028 lt!1958821) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> b!4804909 call!335551))

(declare-fun b!4804910 () Bool)

(assert (=> b!4804910 false))

(declare-fun lt!1959142 () Unit!141007)

(declare-fun lt!1959145 () Unit!141007)

(assert (=> b!4804910 (= lt!1959142 lt!1959145)))

(assert (=> b!4804910 (containsKey!4067 (toList!7028 lt!1958821) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (=> b!4804910 (= lt!1959145 (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 lt!1958821) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun Unit!141139 () Unit!141007)

(assert (=> b!4804910 (= e!3000707 Unit!141139)))

(assert (= (and d!1539158 c!819094) b!4804909))

(assert (= (and d!1539158 (not c!819094)) b!4804907))

(assert (= (and b!4804907 c!819092) b!4804910))

(assert (= (and b!4804907 (not c!819092)) b!4804902))

(assert (= (or b!4804909 b!4804907) bm!335546))

(assert (= (and bm!335546 c!819093) b!4804908))

(assert (= (and bm!335546 (not c!819093)) b!4804904))

(assert (= (and d!1539158 res!2044086) b!4804903))

(assert (= (and d!1539158 (not res!2044085)) b!4804906))

(assert (= (and b!4804906 res!2044087) b!4804905))

(declare-fun m!5790802 () Bool)

(assert (=> b!4804904 m!5790802))

(declare-fun m!5790804 () Bool)

(assert (=> b!4804906 m!5790804))

(assert (=> b!4804906 m!5790804))

(declare-fun m!5790806 () Bool)

(assert (=> b!4804906 m!5790806))

(assert (=> b!4804905 m!5790802))

(assert (=> b!4804905 m!5790802))

(declare-fun m!5790808 () Bool)

(assert (=> b!4804905 m!5790808))

(assert (=> b!4804903 m!5790802))

(assert (=> b!4804903 m!5790802))

(assert (=> b!4804903 m!5790808))

(declare-fun m!5790812 () Bool)

(assert (=> bm!335546 m!5790812))

(declare-fun m!5790814 () Bool)

(assert (=> b!4804909 m!5790814))

(assert (=> b!4804909 m!5790804))

(assert (=> b!4804909 m!5790804))

(assert (=> b!4804909 m!5790806))

(declare-fun m!5790816 () Bool)

(assert (=> b!4804909 m!5790816))

(declare-fun m!5790818 () Bool)

(assert (=> b!4804910 m!5790818))

(declare-fun m!5790820 () Bool)

(assert (=> b!4804910 m!5790820))

(declare-fun m!5790822 () Bool)

(assert (=> b!4804908 m!5790822))

(assert (=> d!1539158 m!5790818))

(assert (=> b!4804416 d!1539158))

(declare-fun d!1539164 () Bool)

(declare-fun e!3000730 () Bool)

(assert (=> d!1539164 e!3000730))

(declare-fun res!2044111 () Bool)

(assert (=> d!1539164 (=> (not res!2044111) (not e!3000730))))

(declare-fun lt!1959174 () ListMap!6499)

(assert (=> d!1539164 (= res!2044111 (contains!18018 lt!1959174 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun lt!1959173 () List!54480)

(assert (=> d!1539164 (= lt!1959174 (ListMap!6500 lt!1959173))))

(declare-fun lt!1959172 () Unit!141007)

(declare-fun lt!1959171 () Unit!141007)

(assert (=> d!1539164 (= lt!1959172 lt!1959171)))

(assert (=> d!1539164 (= (getValueByKey!2418 lt!1959173 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (Some!13216 (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1203 (List!54480 K!15924 V!16170) Unit!141007)

(assert (=> d!1539164 (= lt!1959171 (lemmaContainsTupThenGetReturnValue!1203 lt!1959173 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun insertNoDuplicatedKeys!711 (List!54480 K!15924 V!16170) List!54480)

(assert (=> d!1539164 (= lt!1959173 (insertNoDuplicatedKeys!711 (toList!7028 lt!1958559) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> d!1539164 (= (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1959174)))

(declare-fun b!4804947 () Bool)

(declare-fun res!2044110 () Bool)

(assert (=> b!4804947 (=> (not res!2044110) (not e!3000730))))

(assert (=> b!4804947 (= res!2044110 (= (getValueByKey!2418 (toList!7028 lt!1959174) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (Some!13216 (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(declare-fun b!4804948 () Bool)

(assert (=> b!4804948 (= e!3000730 (contains!18023 (toList!7028 lt!1959174) (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (= (and d!1539164 res!2044111) b!4804947))

(assert (= (and b!4804947 res!2044110) b!4804948))

(declare-fun m!5790908 () Bool)

(assert (=> d!1539164 m!5790908))

(declare-fun m!5790910 () Bool)

(assert (=> d!1539164 m!5790910))

(declare-fun m!5790912 () Bool)

(assert (=> d!1539164 m!5790912))

(declare-fun m!5790914 () Bool)

(assert (=> d!1539164 m!5790914))

(declare-fun m!5790918 () Bool)

(assert (=> b!4804947 m!5790918))

(declare-fun m!5790920 () Bool)

(assert (=> b!4804948 m!5790920))

(assert (=> b!4804416 d!1539164))

(declare-fun d!1539194 () Bool)

(declare-fun res!2044115 () Bool)

(declare-fun e!3000734 () Bool)

(assert (=> d!1539194 (=> res!2044115 e!3000734)))

(assert (=> d!1539194 (= res!2044115 ((_ is Nil!54356) (toList!7028 lt!1958559)))))

(assert (=> d!1539194 (= (forall!12357 (toList!7028 lt!1958559) lambda!233149) e!3000734)))

(declare-fun b!4804956 () Bool)

(declare-fun e!3000735 () Bool)

(assert (=> b!4804956 (= e!3000734 e!3000735)))

(declare-fun res!2044116 () Bool)

(assert (=> b!4804956 (=> (not res!2044116) (not e!3000735))))

(assert (=> b!4804956 (= res!2044116 (dynLambda!22105 lambda!233149 (h!60788 (toList!7028 lt!1958559))))))

(declare-fun b!4804957 () Bool)

(assert (=> b!4804957 (= e!3000735 (forall!12357 (t!361930 (toList!7028 lt!1958559)) lambda!233149))))

(assert (= (and d!1539194 (not res!2044115)) b!4804956))

(assert (= (and b!4804956 res!2044116) b!4804957))

(declare-fun b_lambda!187973 () Bool)

(assert (=> (not b_lambda!187973) (not b!4804956)))

(declare-fun m!5790922 () Bool)

(assert (=> b!4804956 m!5790922))

(declare-fun m!5790924 () Bool)

(assert (=> b!4804957 m!5790924))

(assert (=> b!4804416 d!1539194))

(declare-fun d!1539196 () Bool)

(declare-fun res!2044117 () Bool)

(declare-fun e!3000736 () Bool)

(assert (=> d!1539196 (=> res!2044117 e!3000736)))

(assert (=> d!1539196 (= res!2044117 ((_ is Nil!54356) (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (=> d!1539196 (= (forall!12357 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) lambda!233150) e!3000736)))

(declare-fun b!4804958 () Bool)

(declare-fun e!3000737 () Bool)

(assert (=> b!4804958 (= e!3000736 e!3000737)))

(declare-fun res!2044118 () Bool)

(assert (=> b!4804958 (=> (not res!2044118) (not e!3000737))))

(assert (=> b!4804958 (= res!2044118 (dynLambda!22105 lambda!233150 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun b!4804959 () Bool)

(assert (=> b!4804959 (= e!3000737 (forall!12357 (t!361930 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lambda!233150))))

(assert (= (and d!1539196 (not res!2044117)) b!4804958))

(assert (= (and b!4804958 res!2044118) b!4804959))

(declare-fun b_lambda!187975 () Bool)

(assert (=> (not b_lambda!187975) (not b!4804958)))

(declare-fun m!5790926 () Bool)

(assert (=> b!4804958 m!5790926))

(declare-fun m!5790928 () Bool)

(assert (=> b!4804959 m!5790928))

(assert (=> b!4804416 d!1539196))

(declare-fun d!1539198 () Bool)

(declare-fun res!2044119 () Bool)

(declare-fun e!3000738 () Bool)

(assert (=> d!1539198 (=> res!2044119 e!3000738)))

(assert (=> d!1539198 (= res!2044119 ((_ is Nil!54356) (toList!7028 lt!1958821)))))

(assert (=> d!1539198 (= (forall!12357 (toList!7028 lt!1958821) lambda!233150) e!3000738)))

(declare-fun b!4804960 () Bool)

(declare-fun e!3000739 () Bool)

(assert (=> b!4804960 (= e!3000738 e!3000739)))

(declare-fun res!2044120 () Bool)

(assert (=> b!4804960 (=> (not res!2044120) (not e!3000739))))

(assert (=> b!4804960 (= res!2044120 (dynLambda!22105 lambda!233150 (h!60788 (toList!7028 lt!1958821))))))

(declare-fun b!4804961 () Bool)

(assert (=> b!4804961 (= e!3000739 (forall!12357 (t!361930 (toList!7028 lt!1958821)) lambda!233150))))

(assert (= (and d!1539198 (not res!2044119)) b!4804960))

(assert (= (and b!4804960 res!2044120) b!4804961))

(declare-fun b_lambda!187977 () Bool)

(assert (=> (not b_lambda!187977) (not b!4804960)))

(declare-fun m!5790930 () Bool)

(assert (=> b!4804960 m!5790930))

(declare-fun m!5790932 () Bool)

(assert (=> b!4804961 m!5790932))

(assert (=> b!4804416 d!1539198))

(declare-fun d!1539200 () Bool)

(assert (=> d!1539200 (dynLambda!22105 lambda!233150 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(declare-fun lt!1959186 () Unit!141007)

(declare-fun choose!34780 (List!54480 Int tuple2!57064) Unit!141007)

(assert (=> d!1539200 (= lt!1959186 (choose!34780 (toList!7028 lt!1958821) lambda!233150 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun e!3000746 () Bool)

(assert (=> d!1539200 e!3000746))

(declare-fun res!2044126 () Bool)

(assert (=> d!1539200 (=> (not res!2044126) (not e!3000746))))

(assert (=> d!1539200 (= res!2044126 (forall!12357 (toList!7028 lt!1958821) lambda!233150))))

(assert (=> d!1539200 (= (forallContained!4227 (toList!7028 lt!1958821) lambda!233150 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) lt!1959186)))

(declare-fun b!4804973 () Bool)

(assert (=> b!4804973 (= e!3000746 (contains!18023 (toList!7028 lt!1958821) (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(assert (= (and d!1539200 res!2044126) b!4804973))

(declare-fun b_lambda!187979 () Bool)

(assert (=> (not b_lambda!187979) (not d!1539200)))

(assert (=> d!1539200 m!5790778))

(declare-fun m!5790948 () Bool)

(assert (=> d!1539200 m!5790948))

(assert (=> d!1539200 m!5789928))

(declare-fun m!5790950 () Bool)

(assert (=> b!4804973 m!5790950))

(assert (=> b!4804416 d!1539200))

(declare-fun d!1539204 () Bool)

(declare-fun res!2044127 () Bool)

(declare-fun e!3000747 () Bool)

(assert (=> d!1539204 (=> res!2044127 e!3000747)))

(assert (=> d!1539204 (= res!2044127 ((_ is Nil!54356) (toList!7028 lt!1958559)))))

(assert (=> d!1539204 (= (forall!12357 (toList!7028 lt!1958559) lambda!233150) e!3000747)))

(declare-fun b!4804974 () Bool)

(declare-fun e!3000748 () Bool)

(assert (=> b!4804974 (= e!3000747 e!3000748)))

(declare-fun res!2044128 () Bool)

(assert (=> b!4804974 (=> (not res!2044128) (not e!3000748))))

(assert (=> b!4804974 (= res!2044128 (dynLambda!22105 lambda!233150 (h!60788 (toList!7028 lt!1958559))))))

(declare-fun b!4804975 () Bool)

(assert (=> b!4804975 (= e!3000748 (forall!12357 (t!361930 (toList!7028 lt!1958559)) lambda!233150))))

(assert (= (and d!1539204 (not res!2044127)) b!4804974))

(assert (= (and b!4804974 res!2044128) b!4804975))

(declare-fun b_lambda!187981 () Bool)

(assert (=> (not b_lambda!187981) (not b!4804974)))

(declare-fun m!5790952 () Bool)

(assert (=> b!4804974 m!5790952))

(declare-fun m!5790954 () Bool)

(assert (=> b!4804975 m!5790954))

(assert (=> b!4804416 d!1539204))

(declare-fun bs!1159151 () Bool)

(declare-fun d!1539206 () Bool)

(assert (= bs!1159151 (and d!1539206 b!4804416)))

(declare-fun lambda!233268 () Int)

(assert (=> bs!1159151 (= lambda!233268 lambda!233150)))

(declare-fun bs!1159152 () Bool)

(assert (= bs!1159152 (and d!1539206 b!4804718)))

(assert (=> bs!1159152 (= (= lt!1958815 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233268 lambda!233208))))

(assert (=> bs!1159152 (= (= lt!1958815 lt!1958982) (= lambda!233268 lambda!233209))))

(declare-fun bs!1159153 () Bool)

(assert (= bs!1159153 (and d!1539206 b!4804539)))

(assert (=> bs!1159153 (= (= lt!1958815 lt!1958888) (= lambda!233268 lambda!233174))))

(assert (=> bs!1159153 (= (= lt!1958815 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233268 lambda!233173))))

(declare-fun bs!1159154 () Bool)

(assert (= bs!1159154 (and d!1539206 d!1539044)))

(assert (=> bs!1159154 (= (= lt!1958815 lt!1958987) (= lambda!233268 lambda!233210))))

(declare-fun bs!1159155 () Bool)

(assert (= bs!1159155 (and d!1539206 d!1538984)))

(assert (=> bs!1159155 (= (= lt!1958815 lt!1958930) (= lambda!233268 lambda!233186))))

(assert (=> bs!1159151 (= (= lt!1958815 lt!1958559) (= lambda!233268 lambda!233149))))

(declare-fun bs!1159156 () Bool)

(assert (= bs!1159156 (and d!1539206 d!1539136)))

(assert (=> bs!1159156 (= (= lt!1958815 lt!1959080) (= lambda!233268 lambda!233251))))

(declare-fun bs!1159157 () Bool)

(assert (= bs!1159157 (and d!1539206 b!4804418)))

(assert (=> bs!1159157 (= (= lt!1958815 lt!1958559) (= lambda!233268 lambda!233148))))

(declare-fun bs!1159158 () Bool)

(assert (= bs!1159158 (and d!1539206 b!4804604)))

(assert (=> bs!1159158 (= (= lt!1958815 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233268 lambda!233184))))

(declare-fun bs!1159159 () Bool)

(assert (= bs!1159159 (and d!1539206 d!1538870)))

(assert (=> bs!1159159 (= (= lt!1958815 lt!1958820) (= lambda!233268 lambda!233151))))

(declare-fun bs!1159160 () Bool)

(assert (= bs!1159160 (and d!1539206 d!1538946)))

(assert (=> bs!1159160 (= (= lt!1958815 lt!1958893) (= lambda!233268 lambda!233175))))

(declare-fun bs!1159161 () Bool)

(assert (= bs!1159161 (and d!1539206 b!4804720)))

(assert (=> bs!1159161 (= (= lt!1958815 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233268 lambda!233207))))

(assert (=> bs!1159158 (= (= lt!1958815 lt!1958925) (= lambda!233268 lambda!233185))))

(declare-fun bs!1159162 () Bool)

(assert (= bs!1159162 (and d!1539206 b!4804850)))

(assert (=> bs!1159162 (= (= lt!1958815 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (= lambda!233268 lambda!233244))))

(declare-fun bs!1159163 () Bool)

(assert (= bs!1159163 (and d!1539206 b!4804541)))

(assert (=> bs!1159163 (= (= lt!1958815 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233268 lambda!233172))))

(declare-fun bs!1159164 () Bool)

(assert (= bs!1159164 (and d!1539206 b!4804848)))

(assert (=> bs!1159164 (= (= lt!1958815 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (= lambda!233268 lambda!233246))))

(declare-fun bs!1159165 () Bool)

(assert (= bs!1159165 (and d!1539206 b!4804606)))

(assert (=> bs!1159165 (= (= lt!1958815 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233268 lambda!233183))))

(assert (=> bs!1159164 (= (= lt!1958815 lt!1959075) (= lambda!233268 lambda!233249))))

(assert (=> d!1539206 true))

(assert (=> d!1539206 (forall!12357 (toList!7028 lt!1958559) lambda!233268)))

(declare-fun lt!1959190 () Unit!141007)

(declare-fun choose!34781 (ListMap!6499 ListMap!6499 K!15924 V!16170) Unit!141007)

(assert (=> d!1539206 (= lt!1959190 (choose!34781 lt!1958559 lt!1958815 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> d!1539206 (forall!12357 (toList!7028 (+!2513 lt!1958559 (tuple2!57065 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))) lambda!233268)))

(assert (=> d!1539206 (= (addForallContainsKeyThenBeforeAdding!968 lt!1958559 lt!1958815 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (_2!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) lt!1959190)))

(declare-fun bs!1159166 () Bool)

(assert (= bs!1159166 d!1539206))

(declare-fun m!5790994 () Bool)

(assert (=> bs!1159166 m!5790994))

(declare-fun m!5790996 () Bool)

(assert (=> bs!1159166 m!5790996))

(declare-fun m!5790998 () Bool)

(assert (=> bs!1159166 m!5790998))

(declare-fun m!5791000 () Bool)

(assert (=> bs!1159166 m!5791000))

(assert (=> b!4804416 d!1539206))

(declare-fun d!1539216 () Bool)

(declare-fun lt!1959191 () Bool)

(assert (=> d!1539216 (= lt!1959191 (select (content!9758 e!3000440) key!5896))))

(declare-fun e!3000753 () Bool)

(assert (=> d!1539216 (= lt!1959191 e!3000753)))

(declare-fun res!2044133 () Bool)

(assert (=> d!1539216 (=> (not res!2044133) (not e!3000753))))

(assert (=> d!1539216 (= res!2044133 ((_ is Cons!54359) e!3000440))))

(assert (=> d!1539216 (= (contains!18022 e!3000440 key!5896) lt!1959191)))

(declare-fun b!4804981 () Bool)

(declare-fun e!3000754 () Bool)

(assert (=> b!4804981 (= e!3000753 e!3000754)))

(declare-fun res!2044134 () Bool)

(assert (=> b!4804981 (=> res!2044134 e!3000754)))

(assert (=> b!4804981 (= res!2044134 (= (h!60791 e!3000440) key!5896))))

(declare-fun b!4804982 () Bool)

(assert (=> b!4804982 (= e!3000754 (contains!18022 (t!361933 e!3000440) key!5896))))

(assert (= (and d!1539216 res!2044133) b!4804981))

(assert (= (and b!4804981 (not res!2044134)) b!4804982))

(declare-fun m!5791002 () Bool)

(assert (=> d!1539216 m!5791002))

(declare-fun m!5791004 () Bool)

(assert (=> d!1539216 m!5791004))

(declare-fun m!5791006 () Bool)

(assert (=> b!4804982 m!5791006))

(assert (=> bm!335527 d!1539216))

(declare-fun d!1539218 () Bool)

(assert (=> d!1539218 (= (tail!9350 (toList!7027 lm!2473)) (t!361931 (toList!7027 lm!2473)))))

(assert (=> d!1538924 d!1539218))

(assert (=> d!1538866 d!1539080))

(assert (=> d!1538900 d!1538898))

(declare-fun d!1539220 () Bool)

(assert (=> d!1539220 (containsKeyBiggerList!616 (toList!7027 lm!2473) key!5896)))

(assert (=> d!1539220 true))

(declare-fun _$33!899 () Unit!141007)

(assert (=> d!1539220 (= (choose!34765 lm!2473 key!5896 hashF!1559) _$33!899)))

(declare-fun bs!1159168 () Bool)

(assert (= bs!1159168 d!1539220))

(assert (=> bs!1159168 m!5789558))

(assert (=> d!1538900 d!1539220))

(declare-fun d!1539224 () Bool)

(declare-fun res!2044137 () Bool)

(declare-fun e!3000757 () Bool)

(assert (=> d!1539224 (=> res!2044137 e!3000757)))

(assert (=> d!1539224 (= res!2044137 ((_ is Nil!54357) (toList!7027 lm!2473)))))

(assert (=> d!1539224 (= (forall!12355 (toList!7027 lm!2473) lambda!233158) e!3000757)))

(declare-fun b!4804985 () Bool)

(declare-fun e!3000758 () Bool)

(assert (=> b!4804985 (= e!3000757 e!3000758)))

(declare-fun res!2044138 () Bool)

(assert (=> b!4804985 (=> (not res!2044138) (not e!3000758))))

(assert (=> b!4804985 (= res!2044138 (dynLambda!22103 lambda!233158 (h!60789 (toList!7027 lm!2473))))))

(declare-fun b!4804986 () Bool)

(assert (=> b!4804986 (= e!3000758 (forall!12355 (t!361931 (toList!7027 lm!2473)) lambda!233158))))

(assert (= (and d!1539224 (not res!2044137)) b!4804985))

(assert (= (and b!4804985 res!2044138) b!4804986))

(declare-fun b_lambda!187987 () Bool)

(assert (=> (not b_lambda!187987) (not b!4804985)))

(declare-fun m!5791012 () Bool)

(assert (=> b!4804985 m!5791012))

(declare-fun m!5791014 () Bool)

(assert (=> b!4804986 m!5791014))

(assert (=> d!1538900 d!1539224))

(declare-fun d!1539228 () Bool)

(declare-fun res!2044141 () Bool)

(declare-fun e!3000761 () Bool)

(assert (=> d!1539228 (=> res!2044141 e!3000761)))

(assert (=> d!1539228 (= res!2044141 ((_ is Nil!54356) (toList!7028 lt!1958559)))))

(assert (=> d!1539228 (= (forall!12357 (toList!7028 lt!1958559) (ite c!818994 lambda!233148 lambda!233150)) e!3000761)))

(declare-fun b!4804989 () Bool)

(declare-fun e!3000762 () Bool)

(assert (=> b!4804989 (= e!3000761 e!3000762)))

(declare-fun res!2044142 () Bool)

(assert (=> b!4804989 (=> (not res!2044142) (not e!3000762))))

(assert (=> b!4804989 (= res!2044142 (dynLambda!22105 (ite c!818994 lambda!233148 lambda!233150) (h!60788 (toList!7028 lt!1958559))))))

(declare-fun b!4804990 () Bool)

(assert (=> b!4804990 (= e!3000762 (forall!12357 (t!361930 (toList!7028 lt!1958559)) (ite c!818994 lambda!233148 lambda!233150)))))

(assert (= (and d!1539228 (not res!2044141)) b!4804989))

(assert (= (and b!4804989 res!2044142) b!4804990))

(declare-fun b_lambda!187989 () Bool)

(assert (=> (not b_lambda!187989) (not b!4804989)))

(declare-fun m!5791028 () Bool)

(assert (=> b!4804989 m!5791028))

(declare-fun m!5791030 () Bool)

(assert (=> b!4804990 m!5791030))

(assert (=> bm!335523 d!1539228))

(assert (=> b!4804354 d!1539102))

(assert (=> b!4804354 d!1539104))

(declare-fun d!1539234 () Bool)

(declare-fun res!2044152 () Bool)

(declare-fun e!3000770 () Bool)

(assert (=> d!1539234 (=> res!2044152 e!3000770)))

(assert (=> d!1539234 (= res!2044152 (and ((_ is Cons!54357) (toList!7027 lm!2473)) (= (_1!31827 (h!60789 (toList!7027 lm!2473))) lt!1958563)))))

(assert (=> d!1539234 (= (containsKey!4068 (toList!7027 lm!2473) lt!1958563) e!3000770)))

(declare-fun b!4805000 () Bool)

(declare-fun e!3000771 () Bool)

(assert (=> b!4805000 (= e!3000770 e!3000771)))

(declare-fun res!2044153 () Bool)

(assert (=> b!4805000 (=> (not res!2044153) (not e!3000771))))

(assert (=> b!4805000 (= res!2044153 (and (or (not ((_ is Cons!54357) (toList!7027 lm!2473))) (bvsle (_1!31827 (h!60789 (toList!7027 lm!2473))) lt!1958563)) ((_ is Cons!54357) (toList!7027 lm!2473)) (bvslt (_1!31827 (h!60789 (toList!7027 lm!2473))) lt!1958563)))))

(declare-fun b!4805001 () Bool)

(assert (=> b!4805001 (= e!3000771 (containsKey!4068 (t!361931 (toList!7027 lm!2473)) lt!1958563))))

(assert (= (and d!1539234 (not res!2044152)) b!4805000))

(assert (= (and b!4805000 res!2044153) b!4805001))

(declare-fun m!5791044 () Bool)

(assert (=> b!4805001 m!5791044))

(assert (=> d!1538896 d!1539234))

(declare-fun d!1539238 () Bool)

(declare-fun lt!1959195 () Bool)

(assert (=> d!1539238 (= lt!1959195 (select (content!9758 (keys!19883 (extractMap!2501 (toList!7027 lt!1958557)))) key!5896))))

(declare-fun e!3000772 () Bool)

(assert (=> d!1539238 (= lt!1959195 e!3000772)))

(declare-fun res!2044154 () Bool)

(assert (=> d!1539238 (=> (not res!2044154) (not e!3000772))))

(assert (=> d!1539238 (= res!2044154 ((_ is Cons!54359) (keys!19883 (extractMap!2501 (toList!7027 lt!1958557)))))))

(assert (=> d!1539238 (= (contains!18022 (keys!19883 (extractMap!2501 (toList!7027 lt!1958557))) key!5896) lt!1959195)))

(declare-fun b!4805002 () Bool)

(declare-fun e!3000773 () Bool)

(assert (=> b!4805002 (= e!3000772 e!3000773)))

(declare-fun res!2044155 () Bool)

(assert (=> b!4805002 (=> res!2044155 e!3000773)))

(assert (=> b!4805002 (= res!2044155 (= (h!60791 (keys!19883 (extractMap!2501 (toList!7027 lt!1958557)))) key!5896))))

(declare-fun b!4805003 () Bool)

(assert (=> b!4805003 (= e!3000773 (contains!18022 (t!361933 (keys!19883 (extractMap!2501 (toList!7027 lt!1958557)))) key!5896))))

(assert (= (and d!1539238 res!2044154) b!4805002))

(assert (= (and b!4805002 (not res!2044155)) b!4805003))

(assert (=> d!1539238 m!5789944))

(declare-fun m!5791046 () Bool)

(assert (=> d!1539238 m!5791046))

(declare-fun m!5791048 () Bool)

(assert (=> d!1539238 m!5791048))

(declare-fun m!5791050 () Bool)

(assert (=> b!4805003 m!5791050))

(assert (=> b!4804424 d!1539238))

(assert (=> b!4804424 d!1538990))

(declare-fun d!1539240 () Bool)

(declare-fun lt!1959196 () Bool)

(assert (=> d!1539240 (= lt!1959196 (select (content!9758 (keys!19883 lt!1958560)) key!5896))))

(declare-fun e!3000774 () Bool)

(assert (=> d!1539240 (= lt!1959196 e!3000774)))

(declare-fun res!2044156 () Bool)

(assert (=> d!1539240 (=> (not res!2044156) (not e!3000774))))

(assert (=> d!1539240 (= res!2044156 ((_ is Cons!54359) (keys!19883 lt!1958560)))))

(assert (=> d!1539240 (= (contains!18022 (keys!19883 lt!1958560) key!5896) lt!1959196)))

(declare-fun b!4805004 () Bool)

(declare-fun e!3000775 () Bool)

(assert (=> b!4805004 (= e!3000774 e!3000775)))

(declare-fun res!2044157 () Bool)

(assert (=> b!4805004 (=> res!2044157 e!3000775)))

(assert (=> b!4805004 (= res!2044157 (= (h!60791 (keys!19883 lt!1958560)) key!5896))))

(declare-fun b!4805005 () Bool)

(assert (=> b!4805005 (= e!3000775 (contains!18022 (t!361933 (keys!19883 lt!1958560)) key!5896))))

(assert (= (and d!1539240 res!2044156) b!4805004))

(assert (= (and b!4805004 (not res!2044157)) b!4805005))

(assert (=> d!1539240 m!5790062))

(declare-fun m!5791052 () Bool)

(assert (=> d!1539240 m!5791052))

(declare-fun m!5791054 () Bool)

(assert (=> d!1539240 m!5791054))

(declare-fun m!5791056 () Bool)

(assert (=> b!4805005 m!5791056))

(assert (=> b!4804504 d!1539240))

(assert (=> b!4804504 d!1538958))

(declare-fun e!3000779 () Option!13214)

(declare-fun b!4805008 () Bool)

(assert (=> b!4805008 (= e!3000779 (getPair!946 (t!361930 (t!361930 (apply!13053 lm!2473 lt!1958563))) key!5896))))

(declare-fun b!4805009 () Bool)

(declare-fun e!3000778 () Option!13214)

(assert (=> b!4805009 (= e!3000778 e!3000779)))

(declare-fun c!819107 () Bool)

(assert (=> b!4805009 (= c!819107 ((_ is Cons!54356) (t!361930 (apply!13053 lm!2473 lt!1958563))))))

(declare-fun b!4805010 () Bool)

(assert (=> b!4805010 (= e!3000779 None!13213)))

(declare-fun b!4805011 () Bool)

(assert (=> b!4805011 (= e!3000778 (Some!13213 (h!60788 (t!361930 (apply!13053 lm!2473 lt!1958563)))))))

(declare-fun b!4805012 () Bool)

(declare-fun e!3000781 () Bool)

(assert (=> b!4805012 (= e!3000781 (not (containsKey!4064 (t!361930 (apply!13053 lm!2473 lt!1958563)) key!5896)))))

(declare-fun b!4805013 () Bool)

(declare-fun res!2044163 () Bool)

(declare-fun e!3000782 () Bool)

(assert (=> b!4805013 (=> (not res!2044163) (not e!3000782))))

(declare-fun lt!1959197 () Option!13214)

(assert (=> b!4805013 (= res!2044163 (= (_1!31826 (get!18580 lt!1959197)) key!5896))))

(declare-fun d!1539244 () Bool)

(declare-fun e!3000780 () Bool)

(assert (=> d!1539244 e!3000780))

(declare-fun res!2044160 () Bool)

(assert (=> d!1539244 (=> res!2044160 e!3000780)))

(assert (=> d!1539244 (= res!2044160 e!3000781)))

(declare-fun res!2044161 () Bool)

(assert (=> d!1539244 (=> (not res!2044161) (not e!3000781))))

(assert (=> d!1539244 (= res!2044161 (isEmpty!29525 lt!1959197))))

(assert (=> d!1539244 (= lt!1959197 e!3000778)))

(declare-fun c!819108 () Bool)

(assert (=> d!1539244 (= c!819108 (and ((_ is Cons!54356) (t!361930 (apply!13053 lm!2473 lt!1958563))) (= (_1!31826 (h!60788 (t!361930 (apply!13053 lm!2473 lt!1958563)))) key!5896)))))

(assert (=> d!1539244 (noDuplicateKeys!2372 (t!361930 (apply!13053 lm!2473 lt!1958563)))))

(assert (=> d!1539244 (= (getPair!946 (t!361930 (apply!13053 lm!2473 lt!1958563)) key!5896) lt!1959197)))

(declare-fun b!4805014 () Bool)

(assert (=> b!4805014 (= e!3000780 e!3000782)))

(declare-fun res!2044162 () Bool)

(assert (=> b!4805014 (=> (not res!2044162) (not e!3000782))))

(assert (=> b!4805014 (= res!2044162 (isDefined!10355 lt!1959197))))

(declare-fun b!4805015 () Bool)

(assert (=> b!4805015 (= e!3000782 (contains!18023 (t!361930 (apply!13053 lm!2473 lt!1958563)) (get!18580 lt!1959197)))))

(assert (= (and d!1539244 c!819108) b!4805011))

(assert (= (and d!1539244 (not c!819108)) b!4805009))

(assert (= (and b!4805009 c!819107) b!4805008))

(assert (= (and b!4805009 (not c!819107)) b!4805010))

(assert (= (and d!1539244 res!2044161) b!4805012))

(assert (= (and d!1539244 (not res!2044160)) b!4805014))

(assert (= (and b!4805014 res!2044162) b!4805013))

(assert (= (and b!4805013 res!2044163) b!4805015))

(declare-fun m!5791064 () Bool)

(assert (=> b!4805014 m!5791064))

(declare-fun m!5791066 () Bool)

(assert (=> d!1539244 m!5791066))

(declare-fun m!5791068 () Bool)

(assert (=> d!1539244 m!5791068))

(declare-fun m!5791070 () Bool)

(assert (=> b!4805015 m!5791070))

(assert (=> b!4805015 m!5791070))

(declare-fun m!5791074 () Bool)

(assert (=> b!4805015 m!5791074))

(declare-fun m!5791076 () Bool)

(assert (=> b!4805008 m!5791076))

(assert (=> b!4805013 m!5791070))

(declare-fun m!5791078 () Bool)

(assert (=> b!4805012 m!5791078))

(assert (=> b!4804484 d!1539244))

(assert (=> b!4804425 d!1539112))

(assert (=> b!4804425 d!1539114))

(declare-fun d!1539252 () Bool)

(assert (=> d!1539252 (= (invariantList!1764 (toList!7028 lt!1958820)) (noDuplicatedKeys!458 (toList!7028 lt!1958820)))))

(declare-fun bs!1159191 () Bool)

(assert (= bs!1159191 d!1539252))

(declare-fun m!5791082 () Bool)

(assert (=> bs!1159191 m!5791082))

(assert (=> b!4804414 d!1539252))

(declare-fun d!1539256 () Bool)

(assert (=> d!1539256 (= (get!18582 (getValueByKey!2419 (toList!7027 lm!2473) lt!1958563)) (v!48554 (getValueByKey!2419 (toList!7027 lm!2473) lt!1958563)))))

(assert (=> d!1538918 d!1539256))

(assert (=> d!1538918 d!1538944))

(assert (=> b!4804506 d!1539240))

(assert (=> b!4804506 d!1538958))

(declare-fun d!1539260 () Bool)

(assert (=> d!1539260 (= (isEmpty!29525 (getPair!946 (apply!13053 lm!2473 lt!1958563) key!5896)) (not ((_ is Some!13213) (getPair!946 (apply!13053 lm!2473 lt!1958563) key!5896))))))

(assert (=> d!1538914 d!1539260))

(assert (=> b!4804422 d!1539238))

(assert (=> b!4804422 d!1538990))

(declare-fun d!1539264 () Bool)

(declare-fun res!2044172 () Bool)

(declare-fun e!3000791 () Bool)

(assert (=> d!1539264 (=> res!2044172 e!3000791)))

(assert (=> d!1539264 (= res!2044172 (and ((_ is Cons!54356) (toList!7028 lt!1958560)) (= (_1!31826 (h!60788 (toList!7028 lt!1958560))) key!5896)))))

(assert (=> d!1539264 (= (containsKey!4067 (toList!7028 lt!1958560) key!5896) e!3000791)))

(declare-fun b!4805024 () Bool)

(declare-fun e!3000792 () Bool)

(assert (=> b!4805024 (= e!3000791 e!3000792)))

(declare-fun res!2044173 () Bool)

(assert (=> b!4805024 (=> (not res!2044173) (not e!3000792))))

(assert (=> b!4805024 (= res!2044173 ((_ is Cons!54356) (toList!7028 lt!1958560)))))

(declare-fun b!4805025 () Bool)

(assert (=> b!4805025 (= e!3000792 (containsKey!4067 (t!361930 (toList!7028 lt!1958560)) key!5896))))

(assert (= (and d!1539264 (not res!2044172)) b!4805024))

(assert (= (and b!4805024 res!2044173) b!4805025))

(declare-fun m!5791094 () Bool)

(assert (=> b!4805025 m!5791094))

(assert (=> d!1538932 d!1539264))

(declare-fun d!1539268 () Bool)

(declare-fun res!2044178 () Bool)

(declare-fun e!3000798 () Bool)

(assert (=> d!1539268 (=> res!2044178 e!3000798)))

(assert (=> d!1539268 (= res!2044178 (and ((_ is Cons!54357) (toList!7027 lt!1958557)) (= (_1!31827 (h!60789 (toList!7027 lt!1958557))) lt!1958563)))))

(assert (=> d!1539268 (= (containsKey!4068 (toList!7027 lt!1958557) lt!1958563) e!3000798)))

(declare-fun b!4805034 () Bool)

(declare-fun e!3000799 () Bool)

(assert (=> b!4805034 (= e!3000798 e!3000799)))

(declare-fun res!2044179 () Bool)

(assert (=> b!4805034 (=> (not res!2044179) (not e!3000799))))

(assert (=> b!4805034 (= res!2044179 (and (or (not ((_ is Cons!54357) (toList!7027 lt!1958557))) (bvsle (_1!31827 (h!60789 (toList!7027 lt!1958557))) lt!1958563)) ((_ is Cons!54357) (toList!7027 lt!1958557)) (bvslt (_1!31827 (h!60789 (toList!7027 lt!1958557))) lt!1958563)))))

(declare-fun b!4805035 () Bool)

(assert (=> b!4805035 (= e!3000799 (containsKey!4068 (t!361931 (toList!7027 lt!1958557)) lt!1958563))))

(assert (= (and d!1539268 (not res!2044178)) b!4805034))

(assert (= (and b!4805034 res!2044179) b!4805035))

(declare-fun m!5791096 () Bool)

(assert (=> b!4805035 m!5791096))

(assert (=> d!1538930 d!1539268))

(declare-fun d!1539270 () Bool)

(assert (=> d!1539270 (= (get!18580 (getPair!946 (_2!31827 (h!60789 (toList!7027 lm!2473))) key!5896)) (v!48550 (getPair!946 (_2!31827 (h!60789 (toList!7027 lm!2473))) key!5896)))))

(assert (=> b!4804459 d!1539270))

(declare-fun b!4805036 () Bool)

(declare-fun e!3000801 () Option!13214)

(assert (=> b!4805036 (= e!3000801 (getPair!946 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) key!5896))))

(declare-fun b!4805037 () Bool)

(declare-fun e!3000800 () Option!13214)

(assert (=> b!4805037 (= e!3000800 e!3000801)))

(declare-fun c!819111 () Bool)

(assert (=> b!4805037 (= c!819111 ((_ is Cons!54356) (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(declare-fun b!4805038 () Bool)

(assert (=> b!4805038 (= e!3000801 None!13213)))

(declare-fun b!4805039 () Bool)

(assert (=> b!4805039 (= e!3000800 (Some!13213 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun b!4805040 () Bool)

(declare-fun e!3000803 () Bool)

(assert (=> b!4805040 (= e!3000803 (not (containsKey!4064 (_2!31827 (h!60789 (toList!7027 lm!2473))) key!5896)))))

(declare-fun b!4805041 () Bool)

(declare-fun res!2044183 () Bool)

(declare-fun e!3000804 () Bool)

(assert (=> b!4805041 (=> (not res!2044183) (not e!3000804))))

(declare-fun lt!1959200 () Option!13214)

(assert (=> b!4805041 (= res!2044183 (= (_1!31826 (get!18580 lt!1959200)) key!5896))))

(declare-fun d!1539272 () Bool)

(declare-fun e!3000802 () Bool)

(assert (=> d!1539272 e!3000802))

(declare-fun res!2044180 () Bool)

(assert (=> d!1539272 (=> res!2044180 e!3000802)))

(assert (=> d!1539272 (= res!2044180 e!3000803)))

(declare-fun res!2044181 () Bool)

(assert (=> d!1539272 (=> (not res!2044181) (not e!3000803))))

(assert (=> d!1539272 (= res!2044181 (isEmpty!29525 lt!1959200))))

(assert (=> d!1539272 (= lt!1959200 e!3000800)))

(declare-fun c!819112 () Bool)

(assert (=> d!1539272 (= c!819112 (and ((_ is Cons!54356) (_2!31827 (h!60789 (toList!7027 lm!2473)))) (= (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) key!5896)))))

(assert (=> d!1539272 (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lm!2473))))))

(assert (=> d!1539272 (= (getPair!946 (_2!31827 (h!60789 (toList!7027 lm!2473))) key!5896) lt!1959200)))

(declare-fun b!4805042 () Bool)

(assert (=> b!4805042 (= e!3000802 e!3000804)))

(declare-fun res!2044182 () Bool)

(assert (=> b!4805042 (=> (not res!2044182) (not e!3000804))))

(assert (=> b!4805042 (= res!2044182 (isDefined!10355 lt!1959200))))

(declare-fun b!4805043 () Bool)

(assert (=> b!4805043 (= e!3000804 (contains!18023 (_2!31827 (h!60789 (toList!7027 lm!2473))) (get!18580 lt!1959200)))))

(assert (= (and d!1539272 c!819112) b!4805039))

(assert (= (and d!1539272 (not c!819112)) b!4805037))

(assert (= (and b!4805037 c!819111) b!4805036))

(assert (= (and b!4805037 (not c!819111)) b!4805038))

(assert (= (and d!1539272 res!2044181) b!4805040))

(assert (= (and d!1539272 (not res!2044180)) b!4805042))

(assert (= (and b!4805042 res!2044182) b!4805041))

(assert (= (and b!4805041 res!2044183) b!4805043))

(declare-fun m!5791108 () Bool)

(assert (=> b!4805042 m!5791108))

(declare-fun m!5791110 () Bool)

(assert (=> d!1539272 m!5791110))

(assert (=> d!1539272 m!5789546))

(declare-fun m!5791112 () Bool)

(assert (=> b!4805043 m!5791112))

(assert (=> b!4805043 m!5791112))

(declare-fun m!5791114 () Bool)

(assert (=> b!4805043 m!5791114))

(declare-fun m!5791116 () Bool)

(assert (=> b!4805036 m!5791116))

(assert (=> b!4805041 m!5791112))

(assert (=> b!4805040 m!5789532))

(assert (=> b!4804459 d!1539272))

(declare-fun d!1539276 () Bool)

(declare-fun res!2044187 () Bool)

(declare-fun e!3000809 () Bool)

(assert (=> d!1539276 (=> res!2044187 e!3000809)))

(assert (=> d!1539276 (= res!2044187 (and ((_ is Cons!54356) (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (= (_1!31826 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(assert (=> d!1539276 (= (containsKey!4064 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) e!3000809)))

(declare-fun b!4805053 () Bool)

(declare-fun e!3000810 () Bool)

(assert (=> b!4805053 (= e!3000809 e!3000810)))

(declare-fun res!2044188 () Bool)

(assert (=> b!4805053 (=> (not res!2044188) (not e!3000810))))

(assert (=> b!4805053 (= res!2044188 ((_ is Cons!54356) (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun b!4805054 () Bool)

(assert (=> b!4805054 (= e!3000810 (containsKey!4064 (t!361930 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (= (and d!1539276 (not res!2044187)) b!4805053))

(assert (= (and b!4805053 res!2044188) b!4805054))

(declare-fun m!5791118 () Bool)

(assert (=> b!4805054 m!5791118))

(assert (=> b!4804496 d!1539276))

(declare-fun d!1539278 () Bool)

(declare-fun res!2044189 () Bool)

(declare-fun e!3000811 () Bool)

(assert (=> d!1539278 (=> res!2044189 e!3000811)))

(assert (=> d!1539278 (= res!2044189 (and ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) key!5896)))))

(assert (=> d!1539278 (= (containsKey!4067 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896) e!3000811)))

(declare-fun b!4805055 () Bool)

(declare-fun e!3000812 () Bool)

(assert (=> b!4805055 (= e!3000811 e!3000812)))

(declare-fun res!2044190 () Bool)

(assert (=> b!4805055 (=> (not res!2044190) (not e!3000812))))

(assert (=> b!4805055 (= res!2044190 ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))))

(declare-fun b!4805056 () Bool)

(assert (=> b!4805056 (= e!3000812 (containsKey!4067 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) key!5896))))

(assert (= (and d!1539278 (not res!2044189)) b!4805055))

(assert (= (and b!4805055 res!2044190) b!4805056))

(declare-fun m!5791120 () Bool)

(assert (=> b!4805056 m!5791120))

(assert (=> d!1538892 d!1539278))

(assert (=> b!4804461 d!1538938))

(declare-fun d!1539280 () Bool)

(assert (=> d!1539280 (isDefined!10358 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(declare-fun lt!1959208 () Unit!141007)

(assert (=> d!1539280 (= lt!1959208 (choose!34777 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(assert (=> d!1539280 (invariantList!1764 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))))

(assert (=> d!1539280 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896) lt!1959208)))

(declare-fun bs!1159198 () Bool)

(assert (= bs!1159198 d!1539280))

(assert (=> bs!1159198 m!5789662))

(assert (=> bs!1159198 m!5789662))

(assert (=> bs!1159198 m!5789664))

(declare-fun m!5791122 () Bool)

(assert (=> bs!1159198 m!5791122))

(assert (=> bs!1159198 m!5790316))

(assert (=> b!4804268 d!1539280))

(declare-fun d!1539282 () Bool)

(assert (=> d!1539282 (= (isDefined!10358 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896)) (not (isEmpty!29528 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))))

(declare-fun bs!1159201 () Bool)

(assert (= bs!1159201 d!1539282))

(assert (=> bs!1159201 m!5789662))

(declare-fun m!5791124 () Bool)

(assert (=> bs!1159201 m!5791124))

(assert (=> b!4804268 d!1539282))

(declare-fun d!1539284 () Bool)

(declare-fun c!819116 () Bool)

(assert (=> d!1539284 (= c!819116 (and ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) key!5896)))))

(declare-fun e!3000813 () Option!13217)

(assert (=> d!1539284 (= (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896) e!3000813)))

(declare-fun b!4805059 () Bool)

(declare-fun e!3000814 () Option!13217)

(assert (=> b!4805059 (= e!3000814 (getValueByKey!2418 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) key!5896))))

(declare-fun b!4805058 () Bool)

(assert (=> b!4805058 (= e!3000813 e!3000814)))

(declare-fun c!819117 () Bool)

(assert (=> b!4805058 (= c!819117 (and ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (not (= (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) key!5896))))))

(declare-fun b!4805060 () Bool)

(assert (=> b!4805060 (= e!3000814 None!13216)))

(declare-fun b!4805057 () Bool)

(assert (=> b!4805057 (= e!3000813 (Some!13216 (_2!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))))))

(assert (= (and d!1539284 c!819116) b!4805057))

(assert (= (and d!1539284 (not c!819116)) b!4805058))

(assert (= (and b!4805058 c!819117) b!4805059))

(assert (= (and b!4805058 (not c!819117)) b!4805060))

(declare-fun m!5791126 () Bool)

(assert (=> b!4805059 m!5791126))

(assert (=> b!4804268 d!1539284))

(declare-fun d!1539286 () Bool)

(assert (=> d!1539286 (contains!18022 (getKeysList!1110 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) key!5896)))

(declare-fun lt!1959209 () Unit!141007)

(assert (=> d!1539286 (= lt!1959209 (choose!34778 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896))))

(assert (=> d!1539286 (invariantList!1764 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))))

(assert (=> d!1539286 (= (lemmaInListThenGetKeysListContains!1105 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))) key!5896) lt!1959209)))

(declare-fun bs!1159208 () Bool)

(assert (= bs!1159208 d!1539286))

(assert (=> bs!1159208 m!5789682))

(assert (=> bs!1159208 m!5789682))

(declare-fun m!5791128 () Bool)

(assert (=> bs!1159208 m!5791128))

(declare-fun m!5791130 () Bool)

(assert (=> bs!1159208 m!5791130))

(assert (=> bs!1159208 m!5790316))

(assert (=> b!4804268 d!1539286))

(declare-fun d!1539288 () Bool)

(declare-fun res!2044191 () Bool)

(declare-fun e!3000815 () Bool)

(assert (=> d!1539288 (=> res!2044191 e!3000815)))

(assert (=> d!1539288 (= res!2044191 ((_ is Nil!54356) (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(assert (=> d!1539288 (= (forall!12357 (_2!31827 (h!60789 (toList!7027 lm!2473))) lambda!233151) e!3000815)))

(declare-fun b!4805061 () Bool)

(declare-fun e!3000816 () Bool)

(assert (=> b!4805061 (= e!3000815 e!3000816)))

(declare-fun res!2044192 () Bool)

(assert (=> b!4805061 (=> (not res!2044192) (not e!3000816))))

(assert (=> b!4805061 (= res!2044192 (dynLambda!22105 lambda!233151 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun b!4805062 () Bool)

(assert (=> b!4805062 (= e!3000816 (forall!12357 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) lambda!233151))))

(assert (= (and d!1539288 (not res!2044191)) b!4805061))

(assert (= (and b!4805061 res!2044192) b!4805062))

(declare-fun b_lambda!187995 () Bool)

(assert (=> (not b_lambda!187995) (not b!4805061)))

(declare-fun m!5791132 () Bool)

(assert (=> b!4805061 m!5791132))

(declare-fun m!5791134 () Bool)

(assert (=> b!4805062 m!5791134))

(assert (=> d!1538870 d!1539288))

(assert (=> d!1538870 d!1538922))

(declare-fun d!1539290 () Bool)

(assert (=> d!1539290 (= (isDefined!10355 (getPair!946 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29525 (getPair!946 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1159211 () Bool)

(assert (= bs!1159211 d!1539290))

(assert (=> bs!1159211 m!5789994))

(declare-fun m!5791136 () Bool)

(assert (=> bs!1159211 m!5791136))

(assert (=> b!4804452 d!1539290))

(declare-fun b!4805063 () Bool)

(declare-fun e!3000818 () Option!13214)

(assert (=> b!4805063 (= e!3000818 (getPair!946 (t!361930 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4805064 () Bool)

(declare-fun e!3000817 () Option!13214)

(assert (=> b!4805064 (= e!3000817 e!3000818)))

(declare-fun c!819118 () Bool)

(assert (=> b!4805064 (= c!819118 ((_ is Cons!54356) (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896))))))

(declare-fun b!4805065 () Bool)

(assert (=> b!4805065 (= e!3000818 None!13213)))

(declare-fun b!4805066 () Bool)

(assert (=> b!4805066 (= e!3000817 (Some!13213 (h!60788 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)))))))

(declare-fun e!3000820 () Bool)

(declare-fun b!4805067 () Bool)

(assert (=> b!4805067 (= e!3000820 (not (containsKey!4064 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4805068 () Bool)

(declare-fun res!2044196 () Bool)

(declare-fun e!3000821 () Bool)

(assert (=> b!4805068 (=> (not res!2044196) (not e!3000821))))

(declare-fun lt!1959210 () Option!13214)

(assert (=> b!4805068 (= res!2044196 (= (_1!31826 (get!18580 lt!1959210)) key!5896))))

(declare-fun d!1539292 () Bool)

(declare-fun e!3000819 () Bool)

(assert (=> d!1539292 e!3000819))

(declare-fun res!2044193 () Bool)

(assert (=> d!1539292 (=> res!2044193 e!3000819)))

(assert (=> d!1539292 (= res!2044193 e!3000820)))

(declare-fun res!2044194 () Bool)

(assert (=> d!1539292 (=> (not res!2044194) (not e!3000820))))

(assert (=> d!1539292 (= res!2044194 (isEmpty!29525 lt!1959210))))

(assert (=> d!1539292 (= lt!1959210 e!3000817)))

(declare-fun c!819119 () Bool)

(assert (=> d!1539292 (= c!819119 (and ((_ is Cons!54356) (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896))) (= (_1!31826 (h!60788 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1539292 (noDuplicateKeys!2372 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)))))

(assert (=> d!1539292 (= (getPair!946 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)) key!5896) lt!1959210)))

(declare-fun b!4805069 () Bool)

(assert (=> b!4805069 (= e!3000819 e!3000821)))

(declare-fun res!2044195 () Bool)

(assert (=> b!4805069 (=> (not res!2044195) (not e!3000821))))

(assert (=> b!4805069 (= res!2044195 (isDefined!10355 lt!1959210))))

(declare-fun b!4805070 () Bool)

(assert (=> b!4805070 (= e!3000821 (contains!18023 (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)) (get!18580 lt!1959210)))))

(assert (= (and d!1539292 c!819119) b!4805066))

(assert (= (and d!1539292 (not c!819119)) b!4805064))

(assert (= (and b!4805064 c!819118) b!4805063))

(assert (= (and b!4805064 (not c!819118)) b!4805065))

(assert (= (and d!1539292 res!2044194) b!4805067))

(assert (= (and d!1539292 (not res!2044193)) b!4805069))

(assert (= (and b!4805069 res!2044195) b!4805068))

(assert (= (and b!4805068 res!2044196) b!4805070))

(declare-fun m!5791138 () Bool)

(assert (=> b!4805069 m!5791138))

(declare-fun m!5791140 () Bool)

(assert (=> d!1539292 m!5791140))

(assert (=> d!1539292 m!5789992))

(declare-fun m!5791142 () Bool)

(assert (=> d!1539292 m!5791142))

(declare-fun m!5791144 () Bool)

(assert (=> b!4805070 m!5791144))

(assert (=> b!4805070 m!5789992))

(assert (=> b!4805070 m!5791144))

(declare-fun m!5791146 () Bool)

(assert (=> b!4805070 m!5791146))

(declare-fun m!5791148 () Bool)

(assert (=> b!4805063 m!5791148))

(assert (=> b!4805068 m!5791144))

(assert (=> b!4805067 m!5789992))

(declare-fun m!5791150 () Bool)

(assert (=> b!4805067 m!5791150))

(assert (=> b!4804452 d!1539292))

(declare-fun d!1539294 () Bool)

(assert (=> d!1539294 (= (apply!13053 lm!2473 (hash!5039 hashF!1559 key!5896)) (get!18582 (getValueByKey!2419 (toList!7027 lm!2473) (hash!5039 hashF!1559 key!5896))))))

(declare-fun bs!1159224 () Bool)

(assert (= bs!1159224 d!1539294))

(assert (=> bs!1159224 m!5789560))

(assert (=> bs!1159224 m!5790470))

(assert (=> bs!1159224 m!5790470))

(declare-fun m!5791152 () Bool)

(assert (=> bs!1159224 m!5791152))

(assert (=> b!4804452 d!1539294))

(assert (=> b!4804452 d!1538906))

(assert (=> b!4804265 d!1539282))

(assert (=> b!4804265 d!1539284))

(declare-fun d!1539296 () Bool)

(assert (=> d!1539296 (isDefined!10358 (getValueByKey!2418 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(declare-fun lt!1959211 () Unit!141007)

(assert (=> d!1539296 (= lt!1959211 (choose!34777 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(assert (=> d!1539296 (invariantList!1764 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))))

(assert (=> d!1539296 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2209 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896) lt!1959211)))

(declare-fun bs!1159226 () Bool)

(assert (= bs!1159226 d!1539296))

(assert (=> bs!1159226 m!5789802))

(assert (=> bs!1159226 m!5789802))

(assert (=> bs!1159226 m!5789804))

(declare-fun m!5791154 () Bool)

(assert (=> bs!1159226 m!5791154))

(assert (=> bs!1159226 m!5790500))

(assert (=> b!4804360 d!1539296))

(assert (=> b!4804360 d!1539086))

(assert (=> b!4804360 d!1539088))

(declare-fun d!1539298 () Bool)

(assert (=> d!1539298 (contains!18022 (getKeysList!1110 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) key!5896)))

(declare-fun lt!1959212 () Unit!141007)

(assert (=> d!1539298 (= lt!1959212 (choose!34778 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896))))

(assert (=> d!1539298 (invariantList!1764 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))))

(assert (=> d!1539298 (= (lemmaInListThenGetKeysListContains!1105 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)) key!5896) lt!1959212)))

(declare-fun bs!1159229 () Bool)

(assert (= bs!1159229 d!1539298))

(assert (=> bs!1159229 m!5789818))

(assert (=> bs!1159229 m!5789818))

(declare-fun m!5791156 () Bool)

(assert (=> bs!1159229 m!5791156))

(declare-fun m!5791158 () Bool)

(assert (=> bs!1159229 m!5791158))

(assert (=> bs!1159229 m!5790500))

(assert (=> b!4804360 d!1539298))

(declare-fun bs!1159235 () Bool)

(declare-fun b!4805071 () Bool)

(assert (= bs!1159235 (and b!4805071 b!4804829)))

(declare-fun lambda!233274 () Int)

(assert (=> bs!1159235 (= (= (t!361930 (toList!7028 lt!1958559)) (toList!7028 lt!1958559)) (= lambda!233274 lambda!233242))))

(declare-fun bs!1159237 () Bool)

(assert (= bs!1159237 (and b!4805071 b!4804804)))

(assert (=> bs!1159237 (= (= (t!361930 (toList!7028 lt!1958559)) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233274 lambda!233231))))

(declare-fun bs!1159239 () Bool)

(assert (= bs!1159239 (and b!4805071 b!4804693)))

(assert (=> bs!1159239 (= (= (t!361930 (toList!7028 lt!1958559)) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233274 lambda!233204))))

(declare-fun bs!1159241 () Bool)

(assert (= bs!1159241 (and b!4805071 b!4804687)))

(assert (=> bs!1159241 (= (= (t!361930 (toList!7028 lt!1958559)) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233274 lambda!233202))))

(declare-fun bs!1159243 () Bool)

(assert (= bs!1159243 (and b!4805071 b!4804811)))

(assert (=> bs!1159243 (= (= (t!361930 (toList!7028 lt!1958559)) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233274 lambda!233237))))

(declare-fun bs!1159245 () Bool)

(assert (= bs!1159245 (and b!4805071 b!4804819)))

(assert (=> bs!1159245 (= (= (t!361930 (toList!7028 lt!1958559)) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233274 lambda!233240))))

(declare-fun bs!1159247 () Bool)

(assert (= bs!1159247 (and b!4805071 b!4804792)))

(assert (=> bs!1159247 (= (= (t!361930 (toList!7028 lt!1958559)) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233274 lambda!233229))))

(declare-fun bs!1159249 () Bool)

(assert (= bs!1159249 (and b!4805071 b!4804570)))

(assert (=> bs!1159249 (= (= (t!361930 (toList!7028 lt!1958559)) (toList!7028 lt!1958560)) (= lambda!233274 lambda!233181))))

(declare-fun bs!1159252 () Bool)

(assert (= bs!1159252 (and b!4805071 b!4804805)))

(assert (=> bs!1159252 (= (= (t!361930 (toList!7028 lt!1958559)) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233274 lambda!233234))))

(declare-fun bs!1159253 () Bool)

(assert (= bs!1159253 (and b!4805071 b!4804622)))

(assert (=> bs!1159253 (= (= (t!361930 (toList!7028 lt!1958559)) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233274 lambda!233187))))

(declare-fun bs!1159254 () Bool)

(assert (= bs!1159254 (and b!4805071 b!4804686)))

(assert (=> bs!1159254 (= (= (t!361930 (toList!7028 lt!1958559)) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233274 lambda!233201))))

(assert (=> b!4805071 true))

(declare-fun bs!1159260 () Bool)

(declare-fun b!4805072 () Bool)

(assert (= bs!1159260 (and b!4805072 b!4804829)))

(declare-fun lambda!233276 () Int)

(assert (=> bs!1159260 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (toList!7028 lt!1958559)) (= lambda!233276 lambda!233242))))

(declare-fun bs!1159263 () Bool)

(assert (= bs!1159263 (and b!4805072 b!4804693)))

(assert (=> bs!1159263 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233276 lambda!233204))))

(declare-fun bs!1159265 () Bool)

(assert (= bs!1159265 (and b!4805072 b!4804687)))

(assert (=> bs!1159265 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233276 lambda!233202))))

(declare-fun bs!1159266 () Bool)

(assert (= bs!1159266 (and b!4805072 b!4804811)))

(assert (=> bs!1159266 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233276 lambda!233237))))

(declare-fun bs!1159267 () Bool)

(assert (= bs!1159267 (and b!4805072 b!4804819)))

(assert (=> bs!1159267 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233276 lambda!233240))))

(declare-fun bs!1159268 () Bool)

(assert (= bs!1159268 (and b!4805072 b!4804792)))

(assert (=> bs!1159268 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233276 lambda!233229))))

(declare-fun bs!1159269 () Bool)

(assert (= bs!1159269 (and b!4805072 b!4805071)))

(assert (=> bs!1159269 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (t!361930 (toList!7028 lt!1958559))) (= lambda!233276 lambda!233274))))

(declare-fun bs!1159270 () Bool)

(assert (= bs!1159270 (and b!4805072 b!4804804)))

(assert (=> bs!1159270 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233276 lambda!233231))))

(declare-fun bs!1159271 () Bool)

(assert (= bs!1159271 (and b!4805072 b!4804570)))

(assert (=> bs!1159271 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (toList!7028 lt!1958560)) (= lambda!233276 lambda!233181))))

(declare-fun bs!1159272 () Bool)

(assert (= bs!1159272 (and b!4805072 b!4804805)))

(assert (=> bs!1159272 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233276 lambda!233234))))

(declare-fun bs!1159273 () Bool)

(assert (= bs!1159273 (and b!4805072 b!4804622)))

(assert (=> bs!1159273 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233276 lambda!233187))))

(declare-fun bs!1159274 () Bool)

(assert (= bs!1159274 (and b!4805072 b!4804686)))

(assert (=> bs!1159274 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233276 lambda!233201))))

(assert (=> b!4805072 true))

(declare-fun bs!1159275 () Bool)

(declare-fun b!4805078 () Bool)

(assert (= bs!1159275 (and b!4805078 b!4804829)))

(declare-fun lambda!233277 () Int)

(assert (=> bs!1159275 (= lambda!233277 lambda!233242)))

(declare-fun bs!1159276 () Bool)

(assert (= bs!1159276 (and b!4805078 b!4804693)))

(assert (=> bs!1159276 (= (= (toList!7028 lt!1958559) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233277 lambda!233204))))

(declare-fun bs!1159277 () Bool)

(assert (= bs!1159277 (and b!4805078 b!4804687)))

(assert (=> bs!1159277 (= (= (toList!7028 lt!1958559) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233277 lambda!233202))))

(declare-fun bs!1159278 () Bool)

(assert (= bs!1159278 (and b!4805078 b!4804811)))

(assert (=> bs!1159278 (= (= (toList!7028 lt!1958559) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233277 lambda!233237))))

(declare-fun bs!1159279 () Bool)

(assert (= bs!1159279 (and b!4805078 b!4804819)))

(assert (=> bs!1159279 (= (= (toList!7028 lt!1958559) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233277 lambda!233240))))

(declare-fun bs!1159280 () Bool)

(assert (= bs!1159280 (and b!4805078 b!4805072)))

(assert (=> bs!1159280 (= (= (toList!7028 lt!1958559) (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559)))) (= lambda!233277 lambda!233276))))

(declare-fun bs!1159281 () Bool)

(assert (= bs!1159281 (and b!4805078 b!4804792)))

(assert (=> bs!1159281 (= (= (toList!7028 lt!1958559) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233277 lambda!233229))))

(declare-fun bs!1159282 () Bool)

(assert (= bs!1159282 (and b!4805078 b!4805071)))

(assert (=> bs!1159282 (= (= (toList!7028 lt!1958559) (t!361930 (toList!7028 lt!1958559))) (= lambda!233277 lambda!233274))))

(declare-fun bs!1159283 () Bool)

(assert (= bs!1159283 (and b!4805078 b!4804804)))

(assert (=> bs!1159283 (= (= (toList!7028 lt!1958559) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233277 lambda!233231))))

(declare-fun bs!1159284 () Bool)

(assert (= bs!1159284 (and b!4805078 b!4804570)))

(assert (=> bs!1159284 (= (= (toList!7028 lt!1958559) (toList!7028 lt!1958560)) (= lambda!233277 lambda!233181))))

(declare-fun bs!1159285 () Bool)

(assert (= bs!1159285 (and b!4805078 b!4804805)))

(assert (=> bs!1159285 (= (= (toList!7028 lt!1958559) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233277 lambda!233234))))

(declare-fun bs!1159286 () Bool)

(assert (= bs!1159286 (and b!4805078 b!4804622)))

(assert (=> bs!1159286 (= (= (toList!7028 lt!1958559) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233277 lambda!233187))))

(declare-fun bs!1159287 () Bool)

(assert (= bs!1159287 (and b!4805078 b!4804686)))

(assert (=> bs!1159287 (= (= (toList!7028 lt!1958559) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233277 lambda!233201))))

(assert (=> b!4805078 true))

(declare-fun bs!1159288 () Bool)

(declare-fun b!4805077 () Bool)

(assert (= bs!1159288 (and b!4805077 b!4804571)))

(declare-fun lambda!233278 () Int)

(assert (=> bs!1159288 (= lambda!233278 lambda!233182)))

(declare-fun bs!1159289 () Bool)

(assert (= bs!1159289 (and b!4805077 b!4804810)))

(assert (=> bs!1159289 (= lambda!233278 lambda!233238)))

(declare-fun bs!1159290 () Bool)

(assert (= bs!1159290 (and b!4805077 b!4804692)))

(assert (=> bs!1159290 (= lambda!233278 lambda!233206)))

(declare-fun bs!1159291 () Bool)

(assert (= bs!1159291 (and b!4805077 b!4804623)))

(assert (=> bs!1159291 (= lambda!233278 lambda!233188)))

(declare-fun bs!1159292 () Bool)

(assert (= bs!1159292 (and b!4805077 b!4804793)))

(assert (=> bs!1159292 (= lambda!233278 lambda!233230)))

(declare-fun bs!1159293 () Bool)

(assert (= bs!1159293 (and b!4805077 b!4804820)))

(assert (=> bs!1159293 (= lambda!233278 lambda!233241)))

(declare-fun bs!1159294 () Bool)

(assert (= bs!1159294 (and b!4805077 b!4804830)))

(assert (=> bs!1159294 (= lambda!233278 lambda!233243)))

(assert (=> b!4805071 false))

(declare-fun lt!1959215 () Unit!141007)

(assert (=> b!4805071 (= lt!1959215 (forallContained!4229 (getKeysList!1110 (t!361930 (toList!7028 lt!1958559))) lambda!233274 (_1!31826 (h!60788 (toList!7028 lt!1958559)))))))

(declare-fun e!3000823 () Unit!141007)

(declare-fun Unit!141155 () Unit!141007)

(assert (=> b!4805071 (= e!3000823 Unit!141155)))

(declare-fun e!3000824 () List!54483)

(assert (=> b!4805072 (= e!3000824 (Cons!54359 (_1!31826 (h!60788 (toList!7028 lt!1958559))) (getKeysList!1110 (t!361930 (toList!7028 lt!1958559)))))))

(declare-fun c!819122 () Bool)

(assert (=> b!4805072 (= c!819122 (containsKey!4067 (t!361930 (toList!7028 lt!1958559)) (_1!31826 (h!60788 (toList!7028 lt!1958559)))))))

(declare-fun lt!1959213 () Unit!141007)

(declare-fun e!3000822 () Unit!141007)

(assert (=> b!4805072 (= lt!1959213 e!3000822)))

(declare-fun c!819120 () Bool)

(assert (=> b!4805072 (= c!819120 (contains!18022 (getKeysList!1110 (t!361930 (toList!7028 lt!1958559))) (_1!31826 (h!60788 (toList!7028 lt!1958559)))))))

(declare-fun lt!1959214 () Unit!141007)

(assert (=> b!4805072 (= lt!1959214 e!3000823)))

(declare-fun lt!1959217 () List!54483)

(assert (=> b!4805072 (= lt!1959217 (getKeysList!1110 (t!361930 (toList!7028 lt!1958559))))))

(declare-fun lt!1959218 () Unit!141007)

(assert (=> b!4805072 (= lt!1959218 (lemmaForallContainsAddHeadPreserves!356 (t!361930 (toList!7028 lt!1958559)) lt!1959217 (h!60788 (toList!7028 lt!1958559))))))

(assert (=> b!4805072 (forall!12358 lt!1959217 lambda!233276)))

(declare-fun lt!1959216 () Unit!141007)

(assert (=> b!4805072 (= lt!1959216 lt!1959218)))

(declare-fun b!4805073 () Bool)

(declare-fun Unit!141156 () Unit!141007)

(assert (=> b!4805073 (= e!3000822 Unit!141156)))

(declare-fun b!4805074 () Bool)

(assert (=> b!4805074 false))

(declare-fun Unit!141157 () Unit!141007)

(assert (=> b!4805074 (= e!3000822 Unit!141157)))

(declare-fun d!1539300 () Bool)

(declare-fun e!3000825 () Bool)

(assert (=> d!1539300 e!3000825))

(declare-fun res!2044199 () Bool)

(assert (=> d!1539300 (=> (not res!2044199) (not e!3000825))))

(declare-fun lt!1959219 () List!54483)

(assert (=> d!1539300 (= res!2044199 (noDuplicate!940 lt!1959219))))

(assert (=> d!1539300 (= lt!1959219 e!3000824)))

(declare-fun c!819121 () Bool)

(assert (=> d!1539300 (= c!819121 ((_ is Cons!54356) (toList!7028 lt!1958559)))))

(assert (=> d!1539300 (invariantList!1764 (toList!7028 lt!1958559))))

(assert (=> d!1539300 (= (getKeysList!1110 (toList!7028 lt!1958559)) lt!1959219)))

(declare-fun b!4805075 () Bool)

(declare-fun res!2044198 () Bool)

(assert (=> b!4805075 (=> (not res!2044198) (not e!3000825))))

(assert (=> b!4805075 (= res!2044198 (= (length!736 lt!1959219) (length!737 (toList!7028 lt!1958559))))))

(declare-fun b!4805076 () Bool)

(assert (=> b!4805076 (= e!3000824 Nil!54359)))

(assert (=> b!4805077 (= e!3000825 (= (content!9758 lt!1959219) (content!9758 (map!12288 (toList!7028 lt!1958559) lambda!233278))))))

(declare-fun res!2044197 () Bool)

(assert (=> b!4805078 (=> (not res!2044197) (not e!3000825))))

(assert (=> b!4805078 (= res!2044197 (forall!12358 lt!1959219 lambda!233277))))

(declare-fun b!4805079 () Bool)

(declare-fun Unit!141158 () Unit!141007)

(assert (=> b!4805079 (= e!3000823 Unit!141158)))

(assert (= (and d!1539300 c!819121) b!4805072))

(assert (= (and d!1539300 (not c!819121)) b!4805076))

(assert (= (and b!4805072 c!819122) b!4805074))

(assert (= (and b!4805072 (not c!819122)) b!4805073))

(assert (= (and b!4805072 c!819120) b!4805071))

(assert (= (and b!4805072 (not c!819120)) b!4805079))

(assert (= (and d!1539300 res!2044199) b!4805075))

(assert (= (and b!4805075 res!2044198) b!4805078))

(assert (= (and b!4805078 res!2044197) b!4805077))

(declare-fun m!5791232 () Bool)

(assert (=> d!1539300 m!5791232))

(assert (=> d!1539300 m!5790418))

(declare-fun m!5791234 () Bool)

(assert (=> b!4805071 m!5791234))

(assert (=> b!4805071 m!5791234))

(declare-fun m!5791236 () Bool)

(assert (=> b!4805071 m!5791236))

(declare-fun m!5791240 () Bool)

(assert (=> b!4805072 m!5791240))

(assert (=> b!4805072 m!5791234))

(declare-fun m!5791244 () Bool)

(assert (=> b!4805072 m!5791244))

(assert (=> b!4805072 m!5791234))

(declare-fun m!5791246 () Bool)

(assert (=> b!4805072 m!5791246))

(declare-fun m!5791248 () Bool)

(assert (=> b!4805072 m!5791248))

(declare-fun m!5791250 () Bool)

(assert (=> b!4805077 m!5791250))

(declare-fun m!5791252 () Bool)

(assert (=> b!4805077 m!5791252))

(assert (=> b!4805077 m!5791252))

(declare-fun m!5791254 () Bool)

(assert (=> b!4805077 m!5791254))

(declare-fun m!5791256 () Bool)

(assert (=> b!4805078 m!5791256))

(declare-fun m!5791258 () Bool)

(assert (=> b!4805075 m!5791258))

(assert (=> b!4805075 m!5790606))

(assert (=> b!4804249 d!1539300))

(assert (=> b!4804251 d!1539000))

(declare-fun d!1539324 () Bool)

(assert (=> d!1539324 (containsKey!4067 (toList!7028 lt!1958559) key!5896)))

(declare-fun lt!1959242 () Unit!141007)

(assert (=> d!1539324 (= lt!1959242 (choose!34776 (toList!7028 lt!1958559) key!5896))))

(assert (=> d!1539324 (invariantList!1764 (toList!7028 lt!1958559))))

(assert (=> d!1539324 (= (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 lt!1958559) key!5896) lt!1959242)))

(declare-fun bs!1159328 () Bool)

(assert (= bs!1159328 d!1539324))

(assert (=> bs!1159328 m!5789654))

(declare-fun m!5791264 () Bool)

(assert (=> bs!1159328 m!5791264))

(assert (=> bs!1159328 m!5790418))

(assert (=> b!4804251 d!1539324))

(assert (=> bs!1158793 d!1538922))

(assert (=> b!4804247 d!1539050))

(assert (=> b!4804247 d!1539052))

(declare-fun d!1539330 () Bool)

(declare-fun res!2044215 () Bool)

(declare-fun e!3000843 () Bool)

(assert (=> d!1539330 (=> res!2044215 e!3000843)))

(assert (=> d!1539330 (= res!2044215 ((_ is Nil!54356) (toList!7028 lt!1958559)))))

(assert (=> d!1539330 (= (forall!12357 (toList!7028 lt!1958559) lambda!233151) e!3000843)))

(declare-fun b!4805101 () Bool)

(declare-fun e!3000844 () Bool)

(assert (=> b!4805101 (= e!3000843 e!3000844)))

(declare-fun res!2044216 () Bool)

(assert (=> b!4805101 (=> (not res!2044216) (not e!3000844))))

(assert (=> b!4805101 (= res!2044216 (dynLambda!22105 lambda!233151 (h!60788 (toList!7028 lt!1958559))))))

(declare-fun b!4805102 () Bool)

(assert (=> b!4805102 (= e!3000844 (forall!12357 (t!361930 (toList!7028 lt!1958559)) lambda!233151))))

(assert (= (and d!1539330 (not res!2044215)) b!4805101))

(assert (= (and b!4805101 res!2044216) b!4805102))

(declare-fun b_lambda!188003 () Bool)

(assert (=> (not b_lambda!188003) (not b!4805101)))

(declare-fun m!5791270 () Bool)

(assert (=> b!4805101 m!5791270))

(declare-fun m!5791274 () Bool)

(assert (=> b!4805102 m!5791274))

(assert (=> b!4804417 d!1539330))

(declare-fun d!1539336 () Bool)

(declare-fun res!2044217 () Bool)

(declare-fun e!3000845 () Bool)

(assert (=> d!1539336 (=> res!2044217 e!3000845)))

(assert (=> d!1539336 (= res!2044217 (and ((_ is Cons!54356) (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (= (_1!31826 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) key!5896)))))

(assert (=> d!1539336 (= (containsKey!4064 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))) key!5896) e!3000845)))

(declare-fun b!4805103 () Bool)

(declare-fun e!3000846 () Bool)

(assert (=> b!4805103 (= e!3000845 e!3000846)))

(declare-fun res!2044218 () Bool)

(assert (=> b!4805103 (=> (not res!2044218) (not e!3000846))))

(assert (=> b!4805103 (= res!2044218 ((_ is Cons!54356) (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))

(declare-fun b!4805104 () Bool)

(assert (=> b!4805104 (= e!3000846 (containsKey!4064 (t!361930 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))) key!5896))))

(assert (= (and d!1539336 (not res!2044217)) b!4805103))

(assert (= (and b!4805103 res!2044218) b!4805104))

(declare-fun m!5791278 () Bool)

(assert (=> b!4805104 m!5791278))

(assert (=> b!4804519 d!1539336))

(assert (=> b!4804511 d!1539264))

(declare-fun d!1539340 () Bool)

(assert (=> d!1539340 (containsKey!4067 (toList!7028 lt!1958560) key!5896)))

(declare-fun lt!1959244 () Unit!141007)

(assert (=> d!1539340 (= lt!1959244 (choose!34776 (toList!7028 lt!1958560) key!5896))))

(assert (=> d!1539340 (invariantList!1764 (toList!7028 lt!1958560))))

(assert (=> d!1539340 (= (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 lt!1958560) key!5896) lt!1959244)))

(declare-fun bs!1159331 () Bool)

(assert (= bs!1159331 d!1539340))

(assert (=> bs!1159331 m!5790074))

(declare-fun m!5791282 () Bool)

(assert (=> bs!1159331 m!5791282))

(assert (=> bs!1159331 m!5790624))

(assert (=> b!4804511 d!1539340))

(declare-fun d!1539344 () Bool)

(declare-fun lt!1959246 () Bool)

(assert (=> d!1539344 (= lt!1959246 (select (content!9758 (keys!19883 (extractMap!2501 (toList!7027 lm!2473)))) key!5896))))

(declare-fun e!3000849 () Bool)

(assert (=> d!1539344 (= lt!1959246 e!3000849)))

(declare-fun res!2044221 () Bool)

(assert (=> d!1539344 (=> (not res!2044221) (not e!3000849))))

(assert (=> d!1539344 (= res!2044221 ((_ is Cons!54359) (keys!19883 (extractMap!2501 (toList!7027 lm!2473)))))))

(assert (=> d!1539344 (= (contains!18022 (keys!19883 (extractMap!2501 (toList!7027 lm!2473))) key!5896) lt!1959246)))

(declare-fun b!4805107 () Bool)

(declare-fun e!3000850 () Bool)

(assert (=> b!4805107 (= e!3000849 e!3000850)))

(declare-fun res!2044222 () Bool)

(assert (=> b!4805107 (=> res!2044222 e!3000850)))

(assert (=> b!4805107 (= res!2044222 (= (h!60791 (keys!19883 (extractMap!2501 (toList!7027 lm!2473)))) key!5896))))

(declare-fun b!4805108 () Bool)

(assert (=> b!4805108 (= e!3000850 (contains!18022 (t!361933 (keys!19883 (extractMap!2501 (toList!7027 lm!2473)))) key!5896))))

(assert (= (and d!1539344 res!2044221) b!4805107))

(assert (= (and b!4805107 (not res!2044222)) b!4805108))

(assert (=> d!1539344 m!5789660))

(declare-fun m!5791286 () Bool)

(assert (=> d!1539344 m!5791286))

(declare-fun m!5791288 () Bool)

(assert (=> d!1539344 m!5791288))

(declare-fun m!5791290 () Bool)

(assert (=> b!4805108 m!5791290))

(assert (=> b!4804264 d!1539344))

(assert (=> b!4804264 d!1539084))

(declare-fun d!1539348 () Bool)

(assert (=> d!1539348 (= (get!18581 (getValueByKey!2418 (toList!7028 lt!1958559) key!5896)) (v!48553 (getValueByKey!2418 (toList!7028 lt!1958559) key!5896)))))

(assert (=> d!1538912 d!1539348))

(assert (=> d!1538912 d!1539052))

(declare-fun d!1539350 () Bool)

(assert (=> d!1539350 (= (isEmpty!29525 lt!1958862) (not ((_ is Some!13213) lt!1958862)))))

(assert (=> d!1538916 d!1539350))

(declare-fun d!1539352 () Bool)

(declare-fun res!2044225 () Bool)

(declare-fun e!3000853 () Bool)

(assert (=> d!1539352 (=> res!2044225 e!3000853)))

(assert (=> d!1539352 (= res!2044225 (not ((_ is Cons!54356) (apply!13053 lm!2473 lt!1958563))))))

(assert (=> d!1539352 (= (noDuplicateKeys!2372 (apply!13053 lm!2473 lt!1958563)) e!3000853)))

(declare-fun b!4805111 () Bool)

(declare-fun e!3000854 () Bool)

(assert (=> b!4805111 (= e!3000853 e!3000854)))

(declare-fun res!2044226 () Bool)

(assert (=> b!4805111 (=> (not res!2044226) (not e!3000854))))

(assert (=> b!4805111 (= res!2044226 (not (containsKey!4064 (t!361930 (apply!13053 lm!2473 lt!1958563)) (_1!31826 (h!60788 (apply!13053 lm!2473 lt!1958563))))))))

(declare-fun b!4805112 () Bool)

(assert (=> b!4805112 (= e!3000854 (noDuplicateKeys!2372 (t!361930 (apply!13053 lm!2473 lt!1958563))))))

(assert (= (and d!1539352 (not res!2044225)) b!4805111))

(assert (= (and b!4805111 res!2044226) b!4805112))

(declare-fun m!5791294 () Bool)

(assert (=> b!4805111 m!5791294))

(assert (=> b!4805112 m!5791068))

(assert (=> d!1538916 d!1539352))

(assert (=> b!4804355 d!1539104))

(assert (=> b!4804429 d!1539278))

(declare-fun d!1539356 () Bool)

(assert (=> d!1539356 (containsKey!4067 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896)))

(declare-fun lt!1959249 () Unit!141007)

(assert (=> d!1539356 (= lt!1959249 (choose!34776 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896))))

(assert (=> d!1539356 (invariantList!1764 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))))

(assert (=> d!1539356 (= (lemmaInGetKeysListThenContainsKey!1110 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896) lt!1959249)))

(declare-fun bs!1159333 () Bool)

(assert (= bs!1159333 d!1539356))

(assert (=> bs!1159333 m!5789958))

(declare-fun m!5791298 () Bool)

(assert (=> bs!1159333 m!5791298))

(assert (=> bs!1159333 m!5790592))

(assert (=> b!4804429 d!1539356))

(declare-fun bs!1159335 () Bool)

(declare-fun d!1539358 () Bool)

(assert (= bs!1159335 (and d!1539358 b!4804416)))

(declare-fun lambda!233285 () Int)

(assert (=> bs!1159335 (= (= lt!1958559 lt!1958815) (= lambda!233285 lambda!233150))))

(declare-fun bs!1159336 () Bool)

(assert (= bs!1159336 (and d!1539358 b!4804718)))

(assert (=> bs!1159336 (= (= lt!1958559 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233285 lambda!233208))))

(assert (=> bs!1159336 (= (= lt!1958559 lt!1958982) (= lambda!233285 lambda!233209))))

(declare-fun bs!1159337 () Bool)

(assert (= bs!1159337 (and d!1539358 b!4804539)))

(assert (=> bs!1159337 (= (= lt!1958559 lt!1958888) (= lambda!233285 lambda!233174))))

(assert (=> bs!1159337 (= (= lt!1958559 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233285 lambda!233173))))

(declare-fun bs!1159338 () Bool)

(assert (= bs!1159338 (and d!1539358 d!1539044)))

(assert (=> bs!1159338 (= (= lt!1958559 lt!1958987) (= lambda!233285 lambda!233210))))

(declare-fun bs!1159339 () Bool)

(assert (= bs!1159339 (and d!1539358 d!1538984)))

(assert (=> bs!1159339 (= (= lt!1958559 lt!1958930) (= lambda!233285 lambda!233186))))

(assert (=> bs!1159335 (= lambda!233285 lambda!233149)))

(declare-fun bs!1159340 () Bool)

(assert (= bs!1159340 (and d!1539358 d!1539136)))

(assert (=> bs!1159340 (= (= lt!1958559 lt!1959080) (= lambda!233285 lambda!233251))))

(declare-fun bs!1159341 () Bool)

(assert (= bs!1159341 (and d!1539358 b!4804418)))

(assert (=> bs!1159341 (= lambda!233285 lambda!233148)))

(declare-fun bs!1159342 () Bool)

(assert (= bs!1159342 (and d!1539358 d!1539206)))

(assert (=> bs!1159342 (= (= lt!1958559 lt!1958815) (= lambda!233285 lambda!233268))))

(declare-fun bs!1159343 () Bool)

(assert (= bs!1159343 (and d!1539358 b!4804604)))

(assert (=> bs!1159343 (= (= lt!1958559 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233285 lambda!233184))))

(declare-fun bs!1159344 () Bool)

(assert (= bs!1159344 (and d!1539358 d!1538870)))

(assert (=> bs!1159344 (= (= lt!1958559 lt!1958820) (= lambda!233285 lambda!233151))))

(declare-fun bs!1159345 () Bool)

(assert (= bs!1159345 (and d!1539358 d!1538946)))

(assert (=> bs!1159345 (= (= lt!1958559 lt!1958893) (= lambda!233285 lambda!233175))))

(declare-fun bs!1159346 () Bool)

(assert (= bs!1159346 (and d!1539358 b!4804720)))

(assert (=> bs!1159346 (= (= lt!1958559 (extractMap!2501 (t!361931 (toList!7027 lt!1958557)))) (= lambda!233285 lambda!233207))))

(assert (=> bs!1159343 (= (= lt!1958559 lt!1958925) (= lambda!233285 lambda!233185))))

(declare-fun bs!1159347 () Bool)

(assert (= bs!1159347 (and d!1539358 b!4804850)))

(assert (=> bs!1159347 (= (= lt!1958559 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (= lambda!233285 lambda!233244))))

(declare-fun bs!1159348 () Bool)

(assert (= bs!1159348 (and d!1539358 b!4804541)))

(assert (=> bs!1159348 (= (= lt!1958559 (extractMap!2501 (t!361931 (t!361931 (toList!7027 lm!2473))))) (= lambda!233285 lambda!233172))))

(declare-fun bs!1159349 () Bool)

(assert (= bs!1159349 (and d!1539358 b!4804848)))

(assert (=> bs!1159349 (= (= lt!1958559 (+!2513 lt!1958559 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (= lambda!233285 lambda!233246))))

(declare-fun bs!1159350 () Bool)

(assert (= bs!1159350 (and d!1539358 b!4804606)))

(assert (=> bs!1159350 (= (= lt!1958559 (extractMap!2501 (t!361931 (toList!7027 lm!2473)))) (= lambda!233285 lambda!233183))))

(assert (=> bs!1159349 (= (= lt!1958559 lt!1959075) (= lambda!233285 lambda!233249))))

(assert (=> d!1539358 true))

(assert (=> d!1539358 (forall!12357 (toList!7028 lt!1958559) lambda!233285)))

(declare-fun lt!1959255 () Unit!141007)

(declare-fun choose!34782 (ListMap!6499) Unit!141007)

(assert (=> d!1539358 (= lt!1959255 (choose!34782 lt!1958559))))

(assert (=> d!1539358 (= (lemmaContainsAllItsOwnKeys!969 lt!1958559) lt!1959255)))

(declare-fun bs!1159351 () Bool)

(assert (= bs!1159351 d!1539358))

(declare-fun m!5791318 () Bool)

(assert (=> bs!1159351 m!5791318))

(declare-fun m!5791320 () Bool)

(assert (=> bs!1159351 m!5791320))

(assert (=> bm!335525 d!1539358))

(assert (=> d!1538836 d!1539040))

(declare-fun bs!1159352 () Bool)

(declare-fun b!4805128 () Bool)

(assert (= bs!1159352 (and b!4805128 b!4804829)))

(declare-fun lambda!233286 () Int)

(assert (=> bs!1159352 (= (= (t!361930 (toList!7028 lt!1958560)) (toList!7028 lt!1958559)) (= lambda!233286 lambda!233242))))

(declare-fun bs!1159353 () Bool)

(assert (= bs!1159353 (and b!4805128 b!4804693)))

(assert (=> bs!1159353 (= (= (t!361930 (toList!7028 lt!1958560)) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233286 lambda!233204))))

(declare-fun bs!1159354 () Bool)

(assert (= bs!1159354 (and b!4805128 b!4804687)))

(assert (=> bs!1159354 (= (= (t!361930 (toList!7028 lt!1958560)) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233286 lambda!233202))))

(declare-fun bs!1159355 () Bool)

(assert (= bs!1159355 (and b!4805128 b!4804819)))

(assert (=> bs!1159355 (= (= (t!361930 (toList!7028 lt!1958560)) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233286 lambda!233240))))

(declare-fun bs!1159356 () Bool)

(assert (= bs!1159356 (and b!4805128 b!4805072)))

(assert (=> bs!1159356 (= (= (t!361930 (toList!7028 lt!1958560)) (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559)))) (= lambda!233286 lambda!233276))))

(declare-fun bs!1159357 () Bool)

(assert (= bs!1159357 (and b!4805128 b!4804792)))

(assert (=> bs!1159357 (= (= (t!361930 (toList!7028 lt!1958560)) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233286 lambda!233229))))

(declare-fun bs!1159358 () Bool)

(assert (= bs!1159358 (and b!4805128 b!4805071)))

(assert (=> bs!1159358 (= (= (t!361930 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958559))) (= lambda!233286 lambda!233274))))

(declare-fun bs!1159359 () Bool)

(assert (= bs!1159359 (and b!4805128 b!4804804)))

(assert (=> bs!1159359 (= (= (t!361930 (toList!7028 lt!1958560)) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233286 lambda!233231))))

(declare-fun bs!1159360 () Bool)

(assert (= bs!1159360 (and b!4805128 b!4805078)))

(assert (=> bs!1159360 (= (= (t!361930 (toList!7028 lt!1958560)) (toList!7028 lt!1958559)) (= lambda!233286 lambda!233277))))

(declare-fun bs!1159361 () Bool)

(assert (= bs!1159361 (and b!4805128 b!4804811)))

(assert (=> bs!1159361 (= (= (t!361930 (toList!7028 lt!1958560)) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233286 lambda!233237))))

(declare-fun bs!1159362 () Bool)

(assert (= bs!1159362 (and b!4805128 b!4804570)))

(assert (=> bs!1159362 (= (= (t!361930 (toList!7028 lt!1958560)) (toList!7028 lt!1958560)) (= lambda!233286 lambda!233181))))

(declare-fun bs!1159363 () Bool)

(assert (= bs!1159363 (and b!4805128 b!4804805)))

(assert (=> bs!1159363 (= (= (t!361930 (toList!7028 lt!1958560)) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233286 lambda!233234))))

(declare-fun bs!1159364 () Bool)

(assert (= bs!1159364 (and b!4805128 b!4804622)))

(assert (=> bs!1159364 (= (= (t!361930 (toList!7028 lt!1958560)) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233286 lambda!233187))))

(declare-fun bs!1159365 () Bool)

(assert (= bs!1159365 (and b!4805128 b!4804686)))

(assert (=> bs!1159365 (= (= (t!361930 (toList!7028 lt!1958560)) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233286 lambda!233201))))

(assert (=> b!4805128 true))

(declare-fun bs!1159366 () Bool)

(declare-fun b!4805129 () Bool)

(assert (= bs!1159366 (and b!4805129 b!4804829)))

(declare-fun lambda!233287 () Int)

(assert (=> bs!1159366 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (toList!7028 lt!1958559)) (= lambda!233287 lambda!233242))))

(declare-fun bs!1159368 () Bool)

(assert (= bs!1159368 (and b!4805129 b!4804693)))

(assert (=> bs!1159368 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233287 lambda!233204))))

(declare-fun bs!1159369 () Bool)

(assert (= bs!1159369 (and b!4805129 b!4804819)))

(assert (=> bs!1159369 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233287 lambda!233240))))

(declare-fun bs!1159370 () Bool)

(assert (= bs!1159370 (and b!4805129 b!4805072)))

(assert (=> bs!1159370 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559)))) (= lambda!233287 lambda!233276))))

(declare-fun bs!1159372 () Bool)

(assert (= bs!1159372 (and b!4805129 b!4804792)))

(assert (=> bs!1159372 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233287 lambda!233229))))

(declare-fun bs!1159373 () Bool)

(assert (= bs!1159373 (and b!4805129 b!4805071)))

(assert (=> bs!1159373 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (t!361930 (toList!7028 lt!1958559))) (= lambda!233287 lambda!233274))))

(declare-fun bs!1159374 () Bool)

(assert (= bs!1159374 (and b!4805129 b!4804804)))

(assert (=> bs!1159374 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233287 lambda!233231))))

(declare-fun bs!1159375 () Bool)

(assert (= bs!1159375 (and b!4805129 b!4804687)))

(assert (=> bs!1159375 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233287 lambda!233202))))

(declare-fun bs!1159376 () Bool)

(assert (= bs!1159376 (and b!4805129 b!4805128)))

(assert (=> bs!1159376 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (t!361930 (toList!7028 lt!1958560))) (= lambda!233287 lambda!233286))))

(declare-fun bs!1159377 () Bool)

(assert (= bs!1159377 (and b!4805129 b!4805078)))

(assert (=> bs!1159377 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (toList!7028 lt!1958559)) (= lambda!233287 lambda!233277))))

(declare-fun bs!1159378 () Bool)

(assert (= bs!1159378 (and b!4805129 b!4804811)))

(assert (=> bs!1159378 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233287 lambda!233237))))

(declare-fun bs!1159379 () Bool)

(assert (= bs!1159379 (and b!4805129 b!4804570)))

(assert (=> bs!1159379 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (toList!7028 lt!1958560)) (= lambda!233287 lambda!233181))))

(declare-fun bs!1159380 () Bool)

(assert (= bs!1159380 (and b!4805129 b!4804805)))

(assert (=> bs!1159380 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233287 lambda!233234))))

(declare-fun bs!1159381 () Bool)

(assert (= bs!1159381 (and b!4805129 b!4804622)))

(assert (=> bs!1159381 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233287 lambda!233187))))

(declare-fun bs!1159382 () Bool)

(assert (= bs!1159382 (and b!4805129 b!4804686)))

(assert (=> bs!1159382 (= (= (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233287 lambda!233201))))

(assert (=> b!4805129 true))

(declare-fun bs!1159383 () Bool)

(declare-fun b!4805137 () Bool)

(assert (= bs!1159383 (and b!4805137 b!4804829)))

(declare-fun lambda!233288 () Int)

(assert (=> bs!1159383 (= (= (toList!7028 lt!1958560) (toList!7028 lt!1958559)) (= lambda!233288 lambda!233242))))

(declare-fun bs!1159384 () Bool)

(assert (= bs!1159384 (and b!4805137 b!4805129)))

(assert (=> bs!1159384 (= (= (toList!7028 lt!1958560) (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560)))) (= lambda!233288 lambda!233287))))

(declare-fun bs!1159385 () Bool)

(assert (= bs!1159385 (and b!4805137 b!4804693)))

(assert (=> bs!1159385 (= (= (toList!7028 lt!1958560) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233288 lambda!233204))))

(declare-fun bs!1159387 () Bool)

(assert (= bs!1159387 (and b!4805137 b!4804819)))

(assert (=> bs!1159387 (= (= (toList!7028 lt!1958560) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233288 lambda!233240))))

(declare-fun bs!1159389 () Bool)

(assert (= bs!1159389 (and b!4805137 b!4805072)))

(assert (=> bs!1159389 (= (= (toList!7028 lt!1958560) (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559)))) (= lambda!233288 lambda!233276))))

(declare-fun bs!1159391 () Bool)

(assert (= bs!1159391 (and b!4805137 b!4804792)))

(assert (=> bs!1159391 (= (= (toList!7028 lt!1958560) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233288 lambda!233229))))

(declare-fun bs!1159393 () Bool)

(assert (= bs!1159393 (and b!4805137 b!4805071)))

(assert (=> bs!1159393 (= (= (toList!7028 lt!1958560) (t!361930 (toList!7028 lt!1958559))) (= lambda!233288 lambda!233274))))

(declare-fun bs!1159394 () Bool)

(assert (= bs!1159394 (and b!4805137 b!4804804)))

(assert (=> bs!1159394 (= (= (toList!7028 lt!1958560) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233288 lambda!233231))))

(declare-fun bs!1159396 () Bool)

(assert (= bs!1159396 (and b!4805137 b!4804687)))

(assert (=> bs!1159396 (= (= (toList!7028 lt!1958560) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233288 lambda!233202))))

(declare-fun bs!1159398 () Bool)

(assert (= bs!1159398 (and b!4805137 b!4805128)))

(assert (=> bs!1159398 (= (= (toList!7028 lt!1958560) (t!361930 (toList!7028 lt!1958560))) (= lambda!233288 lambda!233286))))

(declare-fun bs!1159400 () Bool)

(assert (= bs!1159400 (and b!4805137 b!4805078)))

(assert (=> bs!1159400 (= (= (toList!7028 lt!1958560) (toList!7028 lt!1958559)) (= lambda!233288 lambda!233277))))

(declare-fun bs!1159402 () Bool)

(assert (= bs!1159402 (and b!4805137 b!4804811)))

(assert (=> bs!1159402 (= (= (toList!7028 lt!1958560) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233288 lambda!233237))))

(declare-fun bs!1159404 () Bool)

(assert (= bs!1159404 (and b!4805137 b!4804570)))

(assert (=> bs!1159404 (= lambda!233288 lambda!233181)))

(declare-fun bs!1159406 () Bool)

(assert (= bs!1159406 (and b!4805137 b!4804805)))

(assert (=> bs!1159406 (= (= (toList!7028 lt!1958560) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233288 lambda!233234))))

(declare-fun bs!1159408 () Bool)

(assert (= bs!1159408 (and b!4805137 b!4804622)))

(assert (=> bs!1159408 (= (= (toList!7028 lt!1958560) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233288 lambda!233187))))

(declare-fun bs!1159410 () Bool)

(assert (= bs!1159410 (and b!4805137 b!4804686)))

(assert (=> bs!1159410 (= (= (toList!7028 lt!1958560) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233288 lambda!233201))))

(assert (=> b!4805137 true))

(declare-fun bs!1159414 () Bool)

(declare-fun b!4805134 () Bool)

(assert (= bs!1159414 (and b!4805134 b!4804571)))

(declare-fun lambda!233290 () Int)

(assert (=> bs!1159414 (= lambda!233290 lambda!233182)))

(declare-fun bs!1159416 () Bool)

(assert (= bs!1159416 (and b!4805134 b!4804810)))

(assert (=> bs!1159416 (= lambda!233290 lambda!233238)))

(declare-fun bs!1159418 () Bool)

(assert (= bs!1159418 (and b!4805134 b!4804692)))

(assert (=> bs!1159418 (= lambda!233290 lambda!233206)))

(declare-fun bs!1159419 () Bool)

(assert (= bs!1159419 (and b!4805134 b!4804623)))

(assert (=> bs!1159419 (= lambda!233290 lambda!233188)))

(declare-fun bs!1159420 () Bool)

(assert (= bs!1159420 (and b!4805134 b!4804793)))

(assert (=> bs!1159420 (= lambda!233290 lambda!233230)))

(declare-fun bs!1159421 () Bool)

(assert (= bs!1159421 (and b!4805134 b!4804820)))

(assert (=> bs!1159421 (= lambda!233290 lambda!233241)))

(declare-fun bs!1159422 () Bool)

(assert (= bs!1159422 (and b!4805134 b!4804830)))

(assert (=> bs!1159422 (= lambda!233290 lambda!233243)))

(declare-fun bs!1159423 () Bool)

(assert (= bs!1159423 (and b!4805134 b!4805077)))

(assert (=> bs!1159423 (= lambda!233290 lambda!233278)))

(assert (=> b!4805128 false))

(declare-fun lt!1959260 () Unit!141007)

(assert (=> b!4805128 (= lt!1959260 (forallContained!4229 (getKeysList!1110 (t!361930 (toList!7028 lt!1958560))) lambda!233286 (_1!31826 (h!60788 (toList!7028 lt!1958560)))))))

(declare-fun e!3000868 () Unit!141007)

(declare-fun Unit!141160 () Unit!141007)

(assert (=> b!4805128 (= e!3000868 Unit!141160)))

(declare-fun e!3000869 () List!54483)

(assert (=> b!4805129 (= e!3000869 (Cons!54359 (_1!31826 (h!60788 (toList!7028 lt!1958560))) (getKeysList!1110 (t!361930 (toList!7028 lt!1958560)))))))

(declare-fun c!819131 () Bool)

(assert (=> b!4805129 (= c!819131 (containsKey!4067 (t!361930 (toList!7028 lt!1958560)) (_1!31826 (h!60788 (toList!7028 lt!1958560)))))))

(declare-fun lt!1959258 () Unit!141007)

(declare-fun e!3000867 () Unit!141007)

(assert (=> b!4805129 (= lt!1959258 e!3000867)))

(declare-fun c!819129 () Bool)

(assert (=> b!4805129 (= c!819129 (contains!18022 (getKeysList!1110 (t!361930 (toList!7028 lt!1958560))) (_1!31826 (h!60788 (toList!7028 lt!1958560)))))))

(declare-fun lt!1959259 () Unit!141007)

(assert (=> b!4805129 (= lt!1959259 e!3000868)))

(declare-fun lt!1959262 () List!54483)

(assert (=> b!4805129 (= lt!1959262 (getKeysList!1110 (t!361930 (toList!7028 lt!1958560))))))

(declare-fun lt!1959263 () Unit!141007)

(assert (=> b!4805129 (= lt!1959263 (lemmaForallContainsAddHeadPreserves!356 (t!361930 (toList!7028 lt!1958560)) lt!1959262 (h!60788 (toList!7028 lt!1958560))))))

(assert (=> b!4805129 (forall!12358 lt!1959262 lambda!233287)))

(declare-fun lt!1959261 () Unit!141007)

(assert (=> b!4805129 (= lt!1959261 lt!1959263)))

(declare-fun b!4805130 () Bool)

(declare-fun Unit!141161 () Unit!141007)

(assert (=> b!4805130 (= e!3000867 Unit!141161)))

(declare-fun b!4805131 () Bool)

(assert (=> b!4805131 false))

(declare-fun Unit!141162 () Unit!141007)

(assert (=> b!4805131 (= e!3000867 Unit!141162)))

(declare-fun d!1539374 () Bool)

(declare-fun e!3000870 () Bool)

(assert (=> d!1539374 e!3000870))

(declare-fun res!2044240 () Bool)

(assert (=> d!1539374 (=> (not res!2044240) (not e!3000870))))

(declare-fun lt!1959264 () List!54483)

(assert (=> d!1539374 (= res!2044240 (noDuplicate!940 lt!1959264))))

(assert (=> d!1539374 (= lt!1959264 e!3000869)))

(declare-fun c!819130 () Bool)

(assert (=> d!1539374 (= c!819130 ((_ is Cons!54356) (toList!7028 lt!1958560)))))

(assert (=> d!1539374 (invariantList!1764 (toList!7028 lt!1958560))))

(assert (=> d!1539374 (= (getKeysList!1110 (toList!7028 lt!1958560)) lt!1959264)))

(declare-fun b!4805132 () Bool)

(declare-fun res!2044237 () Bool)

(assert (=> b!4805132 (=> (not res!2044237) (not e!3000870))))

(assert (=> b!4805132 (= res!2044237 (= (length!736 lt!1959264) (length!737 (toList!7028 lt!1958560))))))

(declare-fun b!4805133 () Bool)

(assert (=> b!4805133 (= e!3000869 Nil!54359)))

(assert (=> b!4805134 (= e!3000870 (= (content!9758 lt!1959264) (content!9758 (map!12288 (toList!7028 lt!1958560) lambda!233290))))))

(declare-fun res!2044236 () Bool)

(assert (=> b!4805137 (=> (not res!2044236) (not e!3000870))))

(assert (=> b!4805137 (= res!2044236 (forall!12358 lt!1959264 lambda!233288))))

(declare-fun b!4805138 () Bool)

(declare-fun Unit!141163 () Unit!141007)

(assert (=> b!4805138 (= e!3000868 Unit!141163)))

(assert (= (and d!1539374 c!819130) b!4805129))

(assert (= (and d!1539374 (not c!819130)) b!4805133))

(assert (= (and b!4805129 c!819131) b!4805131))

(assert (= (and b!4805129 (not c!819131)) b!4805130))

(assert (= (and b!4805129 c!819129) b!4805128))

(assert (= (and b!4805129 (not c!819129)) b!4805138))

(assert (= (and d!1539374 res!2044240) b!4805132))

(assert (= (and b!4805132 res!2044237) b!4805137))

(assert (= (and b!4805137 res!2044236) b!4805134))

(declare-fun m!5791344 () Bool)

(assert (=> d!1539374 m!5791344))

(assert (=> d!1539374 m!5790624))

(declare-fun m!5791346 () Bool)

(assert (=> b!4805128 m!5791346))

(assert (=> b!4805128 m!5791346))

(declare-fun m!5791348 () Bool)

(assert (=> b!4805128 m!5791348))

(declare-fun m!5791350 () Bool)

(assert (=> b!4805129 m!5791350))

(assert (=> b!4805129 m!5791346))

(declare-fun m!5791352 () Bool)

(assert (=> b!4805129 m!5791352))

(assert (=> b!4805129 m!5791346))

(declare-fun m!5791354 () Bool)

(assert (=> b!4805129 m!5791354))

(declare-fun m!5791356 () Bool)

(assert (=> b!4805129 m!5791356))

(declare-fun m!5791358 () Bool)

(assert (=> b!4805134 m!5791358))

(declare-fun m!5791360 () Bool)

(assert (=> b!4805134 m!5791360))

(assert (=> b!4805134 m!5791360))

(declare-fun m!5791362 () Bool)

(assert (=> b!4805134 m!5791362))

(declare-fun m!5791364 () Bool)

(assert (=> b!4805137 m!5791364))

(declare-fun m!5791366 () Bool)

(assert (=> b!4805132 m!5791366))

(assert (=> b!4805132 m!5790160))

(assert (=> b!4804509 d!1539374))

(assert (=> b!4804262 d!1539344))

(assert (=> b!4804262 d!1539084))

(declare-fun d!1539390 () Bool)

(declare-fun lt!1959276 () Bool)

(assert (=> d!1539390 (= lt!1959276 (select (content!9758 e!3000337) key!5896))))

(declare-fun e!3000883 () Bool)

(assert (=> d!1539390 (= lt!1959276 e!3000883)))

(declare-fun res!2044250 () Bool)

(assert (=> d!1539390 (=> (not res!2044250) (not e!3000883))))

(assert (=> d!1539390 (= res!2044250 ((_ is Cons!54359) e!3000337))))

(assert (=> d!1539390 (= (contains!18022 e!3000337 key!5896) lt!1959276)))

(declare-fun b!4805154 () Bool)

(declare-fun e!3000884 () Bool)

(assert (=> b!4805154 (= e!3000883 e!3000884)))

(declare-fun res!2044251 () Bool)

(assert (=> b!4805154 (=> res!2044251 e!3000884)))

(assert (=> b!4805154 (= res!2044251 (= (h!60791 e!3000337) key!5896))))

(declare-fun b!4805155 () Bool)

(assert (=> b!4805155 (= e!3000884 (contains!18022 (t!361933 e!3000337) key!5896))))

(assert (= (and d!1539390 res!2044250) b!4805154))

(assert (= (and b!4805154 (not res!2044251)) b!4805155))

(declare-fun m!5791368 () Bool)

(assert (=> d!1539390 m!5791368))

(declare-fun m!5791370 () Bool)

(assert (=> d!1539390 m!5791370))

(declare-fun m!5791372 () Bool)

(assert (=> b!4805155 m!5791372))

(assert (=> bm!335506 d!1539390))

(declare-fun d!1539392 () Bool)

(assert (=> d!1539392 (= (isDefined!10355 lt!1958862) (not (isEmpty!29525 lt!1958862)))))

(declare-fun bs!1159445 () Bool)

(assert (= bs!1159445 d!1539392))

(assert (=> bs!1159445 m!5790018))

(assert (=> b!4804490 d!1539392))

(declare-fun d!1539394 () Bool)

(declare-fun lt!1959277 () Bool)

(assert (=> d!1539394 (= lt!1959277 (select (content!9758 (keys!19883 lt!1958559)) key!5896))))

(declare-fun e!3000885 () Bool)

(assert (=> d!1539394 (= lt!1959277 e!3000885)))

(declare-fun res!2044252 () Bool)

(assert (=> d!1539394 (=> (not res!2044252) (not e!3000885))))

(assert (=> d!1539394 (= res!2044252 ((_ is Cons!54359) (keys!19883 lt!1958559)))))

(assert (=> d!1539394 (= (contains!18022 (keys!19883 lt!1958559) key!5896) lt!1959277)))

(declare-fun b!4805156 () Bool)

(declare-fun e!3000886 () Bool)

(assert (=> b!4805156 (= e!3000885 e!3000886)))

(declare-fun res!2044253 () Bool)

(assert (=> b!4805156 (=> res!2044253 e!3000886)))

(assert (=> b!4805156 (= res!2044253 (= (h!60791 (keys!19883 lt!1958559)) key!5896))))

(declare-fun b!4805157 () Bool)

(assert (=> b!4805157 (= e!3000886 (contains!18022 (t!361933 (keys!19883 lt!1958559)) key!5896))))

(assert (= (and d!1539394 res!2044252) b!4805156))

(assert (= (and b!4805156 (not res!2044253)) b!4805157))

(assert (=> d!1539394 m!5789640))

(declare-fun m!5791374 () Bool)

(assert (=> d!1539394 m!5791374))

(declare-fun m!5791376 () Bool)

(assert (=> d!1539394 m!5791376))

(declare-fun m!5791378 () Bool)

(assert (=> b!4805157 m!5791378))

(assert (=> b!4804246 d!1539394))

(assert (=> b!4804246 d!1539118))

(declare-fun d!1539396 () Bool)

(assert (=> d!1539396 (= (apply!13052 (extractMap!2501 (toList!7027 lt!1958557)) key!5896) (get!18581 (getValueByKey!2418 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) key!5896)))))

(declare-fun bs!1159453 () Bool)

(assert (= bs!1159453 d!1539396))

(assert (=> bs!1159453 m!5789946))

(assert (=> bs!1159453 m!5789946))

(declare-fun m!5791380 () Bool)

(assert (=> bs!1159453 m!5791380))

(assert (=> d!1538934 d!1539396))

(assert (=> d!1538934 d!1538894))

(declare-fun d!1539398 () Bool)

(assert (=> d!1539398 (= (apply!13052 (extractMap!2501 (toList!7027 lt!1958557)) key!5896) value!3111)))

(assert (=> d!1539398 true))

(declare-fun _$31!472 () Unit!141007)

(assert (=> d!1539398 (= (choose!34768 lt!1958557 key!5896 value!3111 hashF!1559) _$31!472)))

(declare-fun bs!1159475 () Bool)

(assert (= bs!1159475 d!1539398))

(assert (=> bs!1159475 m!5789542))

(assert (=> bs!1159475 m!5789542))

(assert (=> bs!1159475 m!5790080))

(assert (=> d!1538934 d!1539398))

(declare-fun d!1539408 () Bool)

(declare-fun res!2044254 () Bool)

(declare-fun e!3000887 () Bool)

(assert (=> d!1539408 (=> res!2044254 e!3000887)))

(assert (=> d!1539408 (= res!2044254 ((_ is Nil!54357) (toList!7027 lt!1958557)))))

(assert (=> d!1539408 (= (forall!12355 (toList!7027 lt!1958557) lambda!233168) e!3000887)))

(declare-fun b!4805158 () Bool)

(declare-fun e!3000888 () Bool)

(assert (=> b!4805158 (= e!3000887 e!3000888)))

(declare-fun res!2044255 () Bool)

(assert (=> b!4805158 (=> (not res!2044255) (not e!3000888))))

(assert (=> b!4805158 (= res!2044255 (dynLambda!22103 lambda!233168 (h!60789 (toList!7027 lt!1958557))))))

(declare-fun b!4805159 () Bool)

(assert (=> b!4805159 (= e!3000888 (forall!12355 (t!361931 (toList!7027 lt!1958557)) lambda!233168))))

(assert (= (and d!1539408 (not res!2044254)) b!4805158))

(assert (= (and b!4805158 res!2044255) b!4805159))

(declare-fun b_lambda!188011 () Bool)

(assert (=> (not b_lambda!188011) (not b!4805158)))

(declare-fun m!5791414 () Bool)

(assert (=> b!4805158 m!5791414))

(declare-fun m!5791416 () Bool)

(assert (=> b!4805159 m!5791416))

(assert (=> d!1538934 d!1539408))

(assert (=> d!1538890 d!1538892))

(assert (=> d!1538890 d!1538894))

(declare-fun d!1539410 () Bool)

(assert (=> d!1539410 (not (contains!18018 (extractMap!2501 (toList!7027 lt!1958557)) key!5896))))

(assert (=> d!1539410 true))

(declare-fun _$28!871 () Unit!141007)

(assert (=> d!1539410 (= (choose!34763 lt!1958557 key!5896 hashF!1559) _$28!871)))

(declare-fun bs!1159500 () Bool)

(assert (= bs!1159500 d!1539410))

(assert (=> bs!1159500 m!5789542))

(assert (=> bs!1159500 m!5789542))

(assert (=> bs!1159500 m!5789574))

(assert (=> d!1538890 d!1539410))

(declare-fun d!1539416 () Bool)

(declare-fun res!2044261 () Bool)

(declare-fun e!3000894 () Bool)

(assert (=> d!1539416 (=> res!2044261 e!3000894)))

(assert (=> d!1539416 (= res!2044261 ((_ is Nil!54357) (toList!7027 lt!1958557)))))

(assert (=> d!1539416 (= (forall!12355 (toList!7027 lt!1958557) lambda!233154) e!3000894)))

(declare-fun b!4805167 () Bool)

(declare-fun e!3000895 () Bool)

(assert (=> b!4805167 (= e!3000894 e!3000895)))

(declare-fun res!2044262 () Bool)

(assert (=> b!4805167 (=> (not res!2044262) (not e!3000895))))

(assert (=> b!4805167 (= res!2044262 (dynLambda!22103 lambda!233154 (h!60789 (toList!7027 lt!1958557))))))

(declare-fun b!4805168 () Bool)

(assert (=> b!4805168 (= e!3000895 (forall!12355 (t!361931 (toList!7027 lt!1958557)) lambda!233154))))

(assert (= (and d!1539416 (not res!2044261)) b!4805167))

(assert (= (and b!4805167 res!2044262) b!4805168))

(declare-fun b_lambda!188015 () Bool)

(assert (=> (not b_lambda!188015) (not b!4805167)))

(declare-fun m!5791422 () Bool)

(assert (=> b!4805167 m!5791422))

(declare-fun m!5791424 () Bool)

(assert (=> b!4805168 m!5791424))

(assert (=> d!1538890 d!1539416))

(assert (=> b!4804244 d!1539394))

(assert (=> b!4804244 d!1539118))

(declare-fun bs!1159501 () Bool)

(declare-fun b!4805169 () Bool)

(assert (= bs!1159501 (and b!4805169 b!4804829)))

(declare-fun lambda!233297 () Int)

(assert (=> bs!1159501 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (toList!7028 lt!1958559)) (= lambda!233297 lambda!233242))))

(declare-fun bs!1159502 () Bool)

(assert (= bs!1159502 (and b!4805169 b!4805129)))

(assert (=> bs!1159502 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560)))) (= lambda!233297 lambda!233287))))

(declare-fun bs!1159503 () Bool)

(assert (= bs!1159503 (and b!4805169 b!4804693)))

(assert (=> bs!1159503 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233297 lambda!233204))))

(declare-fun bs!1159504 () Bool)

(assert (= bs!1159504 (and b!4805169 b!4804819)))

(assert (=> bs!1159504 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233297 lambda!233240))))

(declare-fun bs!1159505 () Bool)

(assert (= bs!1159505 (and b!4805169 b!4805072)))

(assert (=> bs!1159505 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559)))) (= lambda!233297 lambda!233276))))

(declare-fun bs!1159506 () Bool)

(assert (= bs!1159506 (and b!4805169 b!4805071)))

(assert (=> bs!1159506 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 lt!1958559))) (= lambda!233297 lambda!233274))))

(declare-fun bs!1159507 () Bool)

(assert (= bs!1159507 (and b!4805169 b!4804804)))

(assert (=> bs!1159507 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233297 lambda!233231))))

(declare-fun bs!1159508 () Bool)

(assert (= bs!1159508 (and b!4805169 b!4804687)))

(assert (=> bs!1159508 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233297 lambda!233202))))

(declare-fun bs!1159509 () Bool)

(assert (= bs!1159509 (and b!4805169 b!4805128)))

(assert (=> bs!1159509 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 lt!1958560))) (= lambda!233297 lambda!233286))))

(declare-fun bs!1159510 () Bool)

(assert (= bs!1159510 (and b!4805169 b!4805078)))

(assert (=> bs!1159510 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (toList!7028 lt!1958559)) (= lambda!233297 lambda!233277))))

(declare-fun bs!1159511 () Bool)

(assert (= bs!1159511 (and b!4805169 b!4804811)))

(assert (=> bs!1159511 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233297 lambda!233237))))

(declare-fun bs!1159512 () Bool)

(assert (= bs!1159512 (and b!4805169 b!4805137)))

(assert (=> bs!1159512 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (toList!7028 lt!1958560)) (= lambda!233297 lambda!233288))))

(declare-fun bs!1159513 () Bool)

(assert (= bs!1159513 (and b!4805169 b!4804792)))

(assert (=> bs!1159513 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233297 lambda!233229))))

(declare-fun bs!1159514 () Bool)

(assert (= bs!1159514 (and b!4805169 b!4804570)))

(assert (=> bs!1159514 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (toList!7028 lt!1958560)) (= lambda!233297 lambda!233181))))

(declare-fun bs!1159515 () Bool)

(assert (= bs!1159515 (and b!4805169 b!4804805)))

(assert (=> bs!1159515 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233297 lambda!233234))))

(declare-fun bs!1159516 () Bool)

(assert (= bs!1159516 (and b!4805169 b!4804622)))

(assert (=> bs!1159516 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233297 lambda!233187))))

(declare-fun bs!1159517 () Bool)

(assert (= bs!1159517 (and b!4805169 b!4804686)))

(assert (=> bs!1159517 (= (= (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233297 lambda!233201))))

(assert (=> b!4805169 true))

(declare-fun bs!1159521 () Bool)

(declare-fun b!4805170 () Bool)

(assert (= bs!1159521 (and b!4805170 b!4804829)))

(declare-fun lambda!233299 () Int)

(assert (=> bs!1159521 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (toList!7028 lt!1958559)) (= lambda!233299 lambda!233242))))

(declare-fun bs!1159523 () Bool)

(assert (= bs!1159523 (and b!4805170 b!4805129)))

(assert (=> bs!1159523 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560)))) (= lambda!233299 lambda!233287))))

(declare-fun bs!1159526 () Bool)

(assert (= bs!1159526 (and b!4805170 b!4804693)))

(assert (=> bs!1159526 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233299 lambda!233204))))

(declare-fun bs!1159528 () Bool)

(assert (= bs!1159528 (and b!4805170 b!4805169)))

(assert (=> bs!1159528 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (= lambda!233299 lambda!233297))))

(declare-fun bs!1159530 () Bool)

(assert (= bs!1159530 (and b!4805170 b!4804819)))

(assert (=> bs!1159530 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233299 lambda!233240))))

(declare-fun bs!1159532 () Bool)

(assert (= bs!1159532 (and b!4805170 b!4805072)))

(assert (=> bs!1159532 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559)))) (= lambda!233299 lambda!233276))))

(declare-fun bs!1159534 () Bool)

(assert (= bs!1159534 (and b!4805170 b!4805071)))

(assert (=> bs!1159534 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (t!361930 (toList!7028 lt!1958559))) (= lambda!233299 lambda!233274))))

(declare-fun bs!1159536 () Bool)

(assert (= bs!1159536 (and b!4805170 b!4804804)))

(assert (=> bs!1159536 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233299 lambda!233231))))

(declare-fun bs!1159538 () Bool)

(assert (= bs!1159538 (and b!4805170 b!4804687)))

(assert (=> bs!1159538 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233299 lambda!233202))))

(declare-fun bs!1159540 () Bool)

(assert (= bs!1159540 (and b!4805170 b!4805128)))

(assert (=> bs!1159540 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (t!361930 (toList!7028 lt!1958560))) (= lambda!233299 lambda!233286))))

(declare-fun bs!1159541 () Bool)

(assert (= bs!1159541 (and b!4805170 b!4805078)))

(assert (=> bs!1159541 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (toList!7028 lt!1958559)) (= lambda!233299 lambda!233277))))

(declare-fun bs!1159542 () Bool)

(assert (= bs!1159542 (and b!4805170 b!4804811)))

(assert (=> bs!1159542 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233299 lambda!233237))))

(declare-fun bs!1159543 () Bool)

(assert (= bs!1159543 (and b!4805170 b!4805137)))

(assert (=> bs!1159543 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (toList!7028 lt!1958560)) (= lambda!233299 lambda!233288))))

(declare-fun bs!1159544 () Bool)

(assert (= bs!1159544 (and b!4805170 b!4804792)))

(assert (=> bs!1159544 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233299 lambda!233229))))

(declare-fun bs!1159545 () Bool)

(assert (= bs!1159545 (and b!4805170 b!4804570)))

(assert (=> bs!1159545 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (toList!7028 lt!1958560)) (= lambda!233299 lambda!233181))))

(declare-fun bs!1159546 () Bool)

(assert (= bs!1159546 (and b!4805170 b!4804805)))

(assert (=> bs!1159546 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233299 lambda!233234))))

(declare-fun bs!1159547 () Bool)

(assert (= bs!1159547 (and b!4805170 b!4804622)))

(assert (=> bs!1159547 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (= lambda!233299 lambda!233187))))

(declare-fun bs!1159548 () Bool)

(assert (= bs!1159548 (and b!4805170 b!4804686)))

(assert (=> bs!1159548 (= (= (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233299 lambda!233201))))

(assert (=> b!4805170 true))

(declare-fun bs!1159549 () Bool)

(declare-fun b!4805176 () Bool)

(assert (= bs!1159549 (and b!4805176 b!4804829)))

(declare-fun lambda!233300 () Int)

(assert (=> bs!1159549 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (toList!7028 lt!1958559)) (= lambda!233300 lambda!233242))))

(declare-fun bs!1159550 () Bool)

(assert (= bs!1159550 (and b!4805176 b!4805129)))

(assert (=> bs!1159550 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (Cons!54356 (h!60788 (toList!7028 lt!1958560)) (t!361930 (toList!7028 lt!1958560)))) (= lambda!233300 lambda!233287))))

(declare-fun bs!1159551 () Bool)

(assert (= bs!1159551 (and b!4805176 b!4804693)))

(assert (=> bs!1159551 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233300 lambda!233204))))

(declare-fun bs!1159552 () Bool)

(assert (= bs!1159552 (and b!4805176 b!4805169)))

(assert (=> bs!1159552 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (= lambda!233300 lambda!233297))))

(declare-fun bs!1159553 () Bool)

(assert (= bs!1159553 (and b!4805176 b!4804819)))

(assert (=> bs!1159553 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233300 lambda!233240))))

(declare-fun bs!1159554 () Bool)

(assert (= bs!1159554 (and b!4805176 b!4805170)))

(assert (=> bs!1159554 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))) (= lambda!233300 lambda!233299))))

(declare-fun bs!1159555 () Bool)

(assert (= bs!1159555 (and b!4805176 b!4805072)))

(assert (=> bs!1159555 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (Cons!54356 (h!60788 (toList!7028 lt!1958559)) (t!361930 (toList!7028 lt!1958559)))) (= lambda!233300 lambda!233276))))

(declare-fun bs!1159556 () Bool)

(assert (= bs!1159556 (and b!4805176 b!4805071)))

(assert (=> bs!1159556 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (t!361930 (toList!7028 lt!1958559))) (= lambda!233300 lambda!233274))))

(declare-fun bs!1159557 () Bool)

(assert (= bs!1159557 (and b!4805176 b!4804804)))

(assert (=> bs!1159557 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559)))) (= lambda!233300 lambda!233231))))

(declare-fun bs!1159558 () Bool)

(assert (= bs!1159558 (and b!4805176 b!4804687)))

(assert (=> bs!1159558 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (Cons!54356 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))))) (= lambda!233300 lambda!233202))))

(declare-fun bs!1159559 () Bool)

(assert (= bs!1159559 (and b!4805176 b!4805128)))

(assert (=> bs!1159559 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (t!361930 (toList!7028 lt!1958560))) (= lambda!233300 lambda!233286))))

(declare-fun bs!1159560 () Bool)

(assert (= bs!1159560 (and b!4805176 b!4805078)))

(assert (=> bs!1159560 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (toList!7028 lt!1958559)) (= lambda!233300 lambda!233277))))

(declare-fun bs!1159561 () Bool)

(assert (= bs!1159561 (and b!4805176 b!4804811)))

(assert (=> bs!1159561 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (= lambda!233300 lambda!233237))))

(declare-fun bs!1159562 () Bool)

(assert (= bs!1159562 (and b!4805176 b!4805137)))

(assert (=> bs!1159562 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (toList!7028 lt!1958560)) (= lambda!233300 lambda!233288))))

(declare-fun bs!1159563 () Bool)

(assert (= bs!1159563 (and b!4805176 b!4804792)))

(assert (=> bs!1159563 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (toList!7028 (extractMap!2501 (toList!7027 lm!2473)))) (= lambda!233300 lambda!233229))))

(declare-fun bs!1159564 () Bool)

(assert (= bs!1159564 (and b!4805176 b!4804570)))

(assert (=> bs!1159564 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (toList!7028 lt!1958560)) (= lambda!233300 lambda!233181))))

(declare-fun bs!1159565 () Bool)

(assert (= bs!1159565 (and b!4805176 b!4804805)))

(assert (=> bs!1159565 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (Cons!54356 (h!60788 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))) (t!361930 (toList!7028 (addToMapMapFromBucket!1741 (_2!31827 (h!60789 (toList!7027 lm!2473))) lt!1958559))))) (= lambda!233300 lambda!233234))))

(declare-fun bs!1159566 () Bool)

(assert (= bs!1159566 (and b!4805176 b!4804622)))

(assert (=> bs!1159566 (= lambda!233300 lambda!233187)))

(declare-fun bs!1159567 () Bool)

(assert (= bs!1159567 (and b!4805176 b!4804686)))

(assert (=> bs!1159567 (= (= (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lm!2473))))) (= lambda!233300 lambda!233201))))

(assert (=> b!4805176 true))

(declare-fun bs!1159568 () Bool)

(declare-fun b!4805175 () Bool)

(assert (= bs!1159568 (and b!4805175 b!4804571)))

(declare-fun lambda!233301 () Int)

(assert (=> bs!1159568 (= lambda!233301 lambda!233182)))

(declare-fun bs!1159570 () Bool)

(assert (= bs!1159570 (and b!4805175 b!4805134)))

(assert (=> bs!1159570 (= lambda!233301 lambda!233290)))

(declare-fun bs!1159571 () Bool)

(assert (= bs!1159571 (and b!4805175 b!4804810)))

(assert (=> bs!1159571 (= lambda!233301 lambda!233238)))

(declare-fun bs!1159573 () Bool)

(assert (= bs!1159573 (and b!4805175 b!4804692)))

(assert (=> bs!1159573 (= lambda!233301 lambda!233206)))

(declare-fun bs!1159575 () Bool)

(assert (= bs!1159575 (and b!4805175 b!4804623)))

(assert (=> bs!1159575 (= lambda!233301 lambda!233188)))

(declare-fun bs!1159577 () Bool)

(assert (= bs!1159577 (and b!4805175 b!4804793)))

(assert (=> bs!1159577 (= lambda!233301 lambda!233230)))

(declare-fun bs!1159579 () Bool)

(assert (= bs!1159579 (and b!4805175 b!4804820)))

(assert (=> bs!1159579 (= lambda!233301 lambda!233241)))

(declare-fun bs!1159580 () Bool)

(assert (= bs!1159580 (and b!4805175 b!4804830)))

(assert (=> bs!1159580 (= lambda!233301 lambda!233243)))

(declare-fun bs!1159582 () Bool)

(assert (= bs!1159582 (and b!4805175 b!4805077)))

(assert (=> bs!1159582 (= lambda!233301 lambda!233278)))

(assert (=> b!4805169 false))

(declare-fun lt!1959304 () Unit!141007)

(assert (=> b!4805169 (= lt!1959304 (forallContained!4229 (getKeysList!1110 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) lambda!233297 (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))))))

(declare-fun e!3000897 () Unit!141007)

(declare-fun Unit!141168 () Unit!141007)

(assert (=> b!4805169 (= e!3000897 Unit!141168)))

(declare-fun e!3000898 () List!54483)

(assert (=> b!4805170 (= e!3000898 (Cons!54359 (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (getKeysList!1110 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))))))

(declare-fun c!819138 () Bool)

(assert (=> b!4805170 (= c!819138 (containsKey!4067 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))))))

(declare-fun lt!1959302 () Unit!141007)

(declare-fun e!3000896 () Unit!141007)

(assert (=> b!4805170 (= lt!1959302 e!3000896)))

(declare-fun c!819136 () Bool)

(assert (=> b!4805170 (= c!819136 (contains!18022 (getKeysList!1110 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))) (_1!31826 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))))))

(declare-fun lt!1959303 () Unit!141007)

(assert (=> b!4805170 (= lt!1959303 e!3000897)))

(declare-fun lt!1959306 () List!54483)

(assert (=> b!4805170 (= lt!1959306 (getKeysList!1110 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))))))

(declare-fun lt!1959307 () Unit!141007)

(assert (=> b!4805170 (= lt!1959307 (lemmaForallContainsAddHeadPreserves!356 (t!361930 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) lt!1959306 (h!60788 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))))))

(assert (=> b!4805170 (forall!12358 lt!1959306 lambda!233299)))

(declare-fun lt!1959305 () Unit!141007)

(assert (=> b!4805170 (= lt!1959305 lt!1959307)))

(declare-fun b!4805171 () Bool)

(declare-fun Unit!141169 () Unit!141007)

(assert (=> b!4805171 (= e!3000896 Unit!141169)))

(declare-fun b!4805172 () Bool)

(assert (=> b!4805172 false))

(declare-fun Unit!141170 () Unit!141007)

(assert (=> b!4805172 (= e!3000896 Unit!141170)))

(declare-fun d!1539418 () Bool)

(declare-fun e!3000899 () Bool)

(assert (=> d!1539418 e!3000899))

(declare-fun res!2044265 () Bool)

(assert (=> d!1539418 (=> (not res!2044265) (not e!3000899))))

(declare-fun lt!1959308 () List!54483)

(assert (=> d!1539418 (= res!2044265 (noDuplicate!940 lt!1959308))))

(assert (=> d!1539418 (= lt!1959308 e!3000898)))

(declare-fun c!819137 () Bool)

(assert (=> d!1539418 (= c!819137 ((_ is Cons!54356) (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))))))

(assert (=> d!1539418 (invariantList!1764 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))))

(assert (=> d!1539418 (= (getKeysList!1110 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557)))) lt!1959308)))

(declare-fun b!4805173 () Bool)

(declare-fun res!2044264 () Bool)

(assert (=> b!4805173 (=> (not res!2044264) (not e!3000899))))

(assert (=> b!4805173 (= res!2044264 (= (length!736 lt!1959308) (length!737 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))))))))

(declare-fun b!4805174 () Bool)

(assert (=> b!4805174 (= e!3000898 Nil!54359)))

(assert (=> b!4805175 (= e!3000899 (= (content!9758 lt!1959308) (content!9758 (map!12288 (toList!7028 (extractMap!2501 (toList!7027 lt!1958557))) lambda!233301))))))

(declare-fun res!2044263 () Bool)

(assert (=> b!4805176 (=> (not res!2044263) (not e!3000899))))

(assert (=> b!4805176 (= res!2044263 (forall!12358 lt!1959308 lambda!233300))))

(declare-fun b!4805177 () Bool)

(declare-fun Unit!141171 () Unit!141007)

(assert (=> b!4805177 (= e!3000897 Unit!141171)))

(assert (= (and d!1539418 c!819137) b!4805170))

(assert (= (and d!1539418 (not c!819137)) b!4805174))

(assert (= (and b!4805170 c!819138) b!4805172))

(assert (= (and b!4805170 (not c!819138)) b!4805171))

(assert (= (and b!4805170 c!819136) b!4805169))

(assert (= (and b!4805170 (not c!819136)) b!4805177))

(assert (= (and d!1539418 res!2044265) b!4805173))

(assert (= (and b!4805173 res!2044264) b!4805176))

(assert (= (and b!4805176 res!2044263) b!4805175))

(declare-fun m!5791470 () Bool)

(assert (=> d!1539418 m!5791470))

(assert (=> d!1539418 m!5790592))

(declare-fun m!5791472 () Bool)

(assert (=> b!4805169 m!5791472))

(assert (=> b!4805169 m!5791472))

(declare-fun m!5791474 () Bool)

(assert (=> b!4805169 m!5791474))

(declare-fun m!5791476 () Bool)

(assert (=> b!4805170 m!5791476))

(assert (=> b!4805170 m!5791472))

(declare-fun m!5791478 () Bool)

(assert (=> b!4805170 m!5791478))

(assert (=> b!4805170 m!5791472))

(declare-fun m!5791480 () Bool)

(assert (=> b!4805170 m!5791480))

(declare-fun m!5791482 () Bool)

(assert (=> b!4805170 m!5791482))

(declare-fun m!5791484 () Bool)

(assert (=> b!4805175 m!5791484))

(declare-fun m!5791486 () Bool)

(assert (=> b!4805175 m!5791486))

(assert (=> b!4805175 m!5791486))

(declare-fun m!5791488 () Bool)

(assert (=> b!4805175 m!5791488))

(declare-fun m!5791490 () Bool)

(assert (=> b!4805176 m!5791490))

(declare-fun m!5791492 () Bool)

(assert (=> b!4805173 m!5791492))

(assert (=> b!4805173 m!5790244))

(assert (=> b!4804427 d!1539418))

(assert (=> bm!335524 d!1539228))

(assert (=> b!4804507 d!1539126))

(assert (=> b!4804507 d!1539066))

(declare-fun d!1539424 () Bool)

(declare-fun choose!34783 (Hashable!6974 K!15924) (_ BitVec 64))

(assert (=> d!1539424 (= (hash!5041 hashF!1559 key!5896) (choose!34783 hashF!1559 key!5896))))

(declare-fun bs!1159591 () Bool)

(assert (= bs!1159591 d!1539424))

(declare-fun m!5791496 () Bool)

(assert (=> bs!1159591 m!5791496))

(assert (=> d!1538906 d!1539424))

(declare-fun d!1539428 () Bool)

(declare-fun res!2044269 () Bool)

(declare-fun e!3000904 () Bool)

(assert (=> d!1539428 (=> res!2044269 e!3000904)))

(assert (=> d!1539428 (= res!2044269 (and ((_ is Cons!54356) (apply!13053 lm!2473 lt!1958563)) (= (_1!31826 (h!60788 (apply!13053 lm!2473 lt!1958563))) key!5896)))))

(assert (=> d!1539428 (= (containsKey!4064 (apply!13053 lm!2473 lt!1958563) key!5896) e!3000904)))

(declare-fun b!4805185 () Bool)

(declare-fun e!3000905 () Bool)

(assert (=> b!4805185 (= e!3000904 e!3000905)))

(declare-fun res!2044270 () Bool)

(assert (=> b!4805185 (=> (not res!2044270) (not e!3000905))))

(assert (=> b!4805185 (= res!2044270 ((_ is Cons!54356) (apply!13053 lm!2473 lt!1958563)))))

(declare-fun b!4805186 () Bool)

(assert (=> b!4805186 (= e!3000905 (containsKey!4064 (t!361930 (apply!13053 lm!2473 lt!1958563)) key!5896))))

(assert (= (and d!1539428 (not res!2044269)) b!4805185))

(assert (= (and b!4805185 res!2044270) b!4805186))

(assert (=> b!4805186 m!5791078))

(assert (=> b!4804488 d!1539428))

(declare-fun e!3000908 () Bool)

(declare-fun tp!1358515 () Bool)

(declare-fun b!4805191 () Bool)

(assert (=> b!4805191 (= e!3000908 (and tp_is_empty!33757 tp_is_empty!33759 tp!1358515))))

(assert (=> b!4804524 (= tp!1358511 e!3000908)))

(assert (= (and b!4804524 ((_ is Cons!54356) (_2!31827 (h!60789 (toList!7027 lm!2473))))) b!4805191))

(declare-fun b!4805192 () Bool)

(declare-fun e!3000909 () Bool)

(declare-fun tp!1358516 () Bool)

(declare-fun tp!1358517 () Bool)

(assert (=> b!4805192 (= e!3000909 (and tp!1358516 tp!1358517))))

(assert (=> b!4804524 (= tp!1358512 e!3000909)))

(assert (= (and b!4804524 ((_ is Cons!54357) (t!361931 (toList!7027 lm!2473)))) b!4805192))

(declare-fun b_lambda!188017 () Bool)

(assert (= b_lambda!188011 (or d!1538934 b_lambda!188017)))

(declare-fun bs!1159607 () Bool)

(declare-fun d!1539430 () Bool)

(assert (= bs!1159607 (and d!1539430 d!1538934)))

(assert (=> bs!1159607 (= (dynLambda!22103 lambda!233168 (h!60789 (toList!7027 lt!1958557))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lt!1958557)))))))

(assert (=> bs!1159607 m!5790382))

(assert (=> b!4805158 d!1539430))

(declare-fun b_lambda!188019 () Bool)

(assert (= b_lambda!187943 (or d!1538936 b_lambda!188019)))

(declare-fun bs!1159609 () Bool)

(declare-fun d!1539432 () Bool)

(assert (= bs!1159609 (and d!1539432 d!1538936)))

(declare-fun allKeysSameHash!1981 (List!54480 (_ BitVec 64) Hashable!6974) Bool)

(assert (=> bs!1159609 (= (dynLambda!22103 lambda!233171 (h!60789 (toList!7027 lm!2473))) (allKeysSameHash!1981 (_2!31827 (h!60789 (toList!7027 lm!2473))) (_1!31827 (h!60789 (toList!7027 lm!2473))) hashF!1559))))

(declare-fun m!5791498 () Bool)

(assert (=> bs!1159609 m!5791498))

(assert (=> b!4804600 d!1539432))

(declare-fun b_lambda!188021 () Bool)

(assert (= b_lambda!187977 (or b!4804416 b_lambda!188021)))

(declare-fun bs!1159612 () Bool)

(declare-fun d!1539434 () Bool)

(assert (= bs!1159612 (and d!1539434 b!4804416)))

(assert (=> bs!1159612 (= (dynLambda!22105 lambda!233150 (h!60788 (toList!7028 lt!1958821))) (contains!18018 lt!1958815 (_1!31826 (h!60788 (toList!7028 lt!1958821)))))))

(declare-fun m!5791500 () Bool)

(assert (=> bs!1159612 m!5791500))

(assert (=> b!4804960 d!1539434))

(declare-fun b_lambda!188023 () Bool)

(assert (= b_lambda!187975 (or b!4804416 b_lambda!188023)))

(declare-fun bs!1159614 () Bool)

(declare-fun d!1539436 () Bool)

(assert (= bs!1159614 (and d!1539436 b!4804416)))

(assert (=> bs!1159614 (= (dynLambda!22105 lambda!233150 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473)))))) (contains!18018 lt!1958815 (_1!31826 (h!60788 (t!361930 (_2!31827 (h!60789 (toList!7027 lm!2473))))))))))

(declare-fun m!5791502 () Bool)

(assert (=> bs!1159614 m!5791502))

(assert (=> b!4804958 d!1539436))

(declare-fun b_lambda!188025 () Bool)

(assert (= b_lambda!187951 (or d!1538926 b_lambda!188025)))

(declare-fun bs!1159615 () Bool)

(declare-fun d!1539438 () Bool)

(assert (= bs!1159615 (and d!1539438 d!1538926)))

(assert (=> bs!1159615 (= (dynLambda!22103 lambda!233164 (h!60789 (toList!7027 lt!1958557))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lt!1958557)))))))

(assert (=> bs!1159615 m!5790382))

(assert (=> b!4804770 d!1539438))

(declare-fun b_lambda!188027 () Bool)

(assert (= b_lambda!187995 (or d!1538870 b_lambda!188027)))

(declare-fun bs!1159617 () Bool)

(declare-fun d!1539440 () Bool)

(assert (= bs!1159617 (and d!1539440 d!1538870)))

(assert (=> bs!1159617 (= (dynLambda!22105 lambda!233151 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (contains!18018 lt!1958820 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(declare-fun m!5791504 () Bool)

(assert (=> bs!1159617 m!5791504))

(assert (=> b!4805061 d!1539440))

(declare-fun b_lambda!188029 () Bool)

(assert (= b_lambda!187969 (or b!4804416 b_lambda!188029)))

(declare-fun bs!1159620 () Bool)

(declare-fun d!1539442 () Bool)

(assert (= bs!1159620 (and d!1539442 b!4804416)))

(assert (=> bs!1159620 (= (dynLambda!22105 lambda!233150 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473))))) (contains!18018 lt!1958815 (_1!31826 (h!60788 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))))

(assert (=> bs!1159620 m!5789934))

(assert (=> b!4804888 d!1539442))

(declare-fun b_lambda!188031 () Bool)

(assert (= b_lambda!187973 (or b!4804416 b_lambda!188031)))

(declare-fun bs!1159621 () Bool)

(declare-fun d!1539444 () Bool)

(assert (= bs!1159621 (and d!1539444 b!4804416)))

(assert (=> bs!1159621 (= (dynLambda!22105 lambda!233149 (h!60788 (toList!7028 lt!1958559))) (contains!18018 lt!1958559 (_1!31826 (h!60788 (toList!7028 lt!1958559)))))))

(declare-fun m!5791506 () Bool)

(assert (=> bs!1159621 m!5791506))

(assert (=> b!4804956 d!1539444))

(declare-fun b_lambda!188033 () Bool)

(assert (= b_lambda!187941 (or d!1538840 b_lambda!188033)))

(declare-fun bs!1159624 () Bool)

(declare-fun d!1539446 () Bool)

(assert (= bs!1159624 (and d!1539446 d!1538840)))

(assert (=> bs!1159624 (= (dynLambda!22103 lambda!233080 (h!60789 (toList!7027 lm!2473))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(assert (=> bs!1159624 m!5789546))

(assert (=> b!4804592 d!1539446))

(declare-fun b_lambda!188035 () Bool)

(assert (= b_lambda!188015 (or d!1538890 b_lambda!188035)))

(declare-fun bs!1159626 () Bool)

(declare-fun d!1539448 () Bool)

(assert (= bs!1159626 (and d!1539448 d!1538890)))

(assert (=> bs!1159626 (= (dynLambda!22103 lambda!233154 (h!60789 (toList!7027 lt!1958557))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lt!1958557)))))))

(assert (=> bs!1159626 m!5790382))

(assert (=> b!4805167 d!1539448))

(declare-fun b_lambda!188037 () Bool)

(assert (= b_lambda!187987 (or d!1538900 b_lambda!188037)))

(declare-fun bs!1159628 () Bool)

(declare-fun d!1539450 () Bool)

(assert (= bs!1159628 (and d!1539450 d!1538900)))

(assert (=> bs!1159628 (= (dynLambda!22103 lambda!233158 (h!60789 (toList!7027 lm!2473))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(assert (=> bs!1159628 m!5789546))

(assert (=> b!4804985 d!1539450))

(declare-fun b_lambda!188039 () Bool)

(assert (= b_lambda!187979 (or b!4804416 b_lambda!188039)))

(assert (=> d!1539200 d!1539442))

(declare-fun b_lambda!188041 () Bool)

(assert (= b_lambda!187981 (or b!4804416 b_lambda!188041)))

(declare-fun bs!1159629 () Bool)

(declare-fun d!1539452 () Bool)

(assert (= bs!1159629 (and d!1539452 b!4804416)))

(assert (=> bs!1159629 (= (dynLambda!22105 lambda!233150 (h!60788 (toList!7028 lt!1958559))) (contains!18018 lt!1958815 (_1!31826 (h!60788 (toList!7028 lt!1958559)))))))

(declare-fun m!5791508 () Bool)

(assert (=> bs!1159629 m!5791508))

(assert (=> b!4804974 d!1539452))

(declare-fun b_lambda!188043 () Bool)

(assert (= b_lambda!187959 (or d!1538894 b_lambda!188043)))

(declare-fun bs!1159630 () Bool)

(declare-fun d!1539454 () Bool)

(assert (= bs!1159630 (and d!1539454 d!1538894)))

(assert (=> bs!1159630 (= (dynLambda!22103 lambda!233155 (h!60789 (toList!7027 lt!1958557))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lt!1958557)))))))

(assert (=> bs!1159630 m!5790382))

(assert (=> b!4804831 d!1539454))

(declare-fun b_lambda!188045 () Bool)

(assert (= b_lambda!188003 (or d!1538870 b_lambda!188045)))

(declare-fun bs!1159631 () Bool)

(declare-fun d!1539456 () Bool)

(assert (= bs!1159631 (and d!1539456 d!1538870)))

(assert (=> bs!1159631 (= (dynLambda!22105 lambda!233151 (h!60788 (toList!7028 lt!1958559))) (contains!18018 lt!1958820 (_1!31826 (h!60788 (toList!7028 lt!1958559)))))))

(declare-fun m!5791510 () Bool)

(assert (=> bs!1159631 m!5791510))

(assert (=> b!4805101 d!1539456))

(declare-fun b_lambda!188047 () Bool)

(assert (= b_lambda!187945 (or d!1538928 b_lambda!188047)))

(declare-fun bs!1159632 () Bool)

(declare-fun d!1539458 () Bool)

(assert (= bs!1159632 (and d!1539458 d!1538928)))

(assert (=> bs!1159632 (= (dynLambda!22103 lambda!233165 (h!60789 (t!361931 (toList!7027 lm!2473)))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473))))))))

(assert (=> bs!1159632 m!5790114))

(assert (=> b!4804640 d!1539458))

(declare-fun b_lambda!188049 () Bool)

(assert (= b_lambda!187953 (or d!1538902 b_lambda!188049)))

(declare-fun bs!1159633 () Bool)

(declare-fun d!1539460 () Bool)

(assert (= bs!1159633 (and d!1539460 d!1538902)))

(assert (=> bs!1159633 (= (dynLambda!22103 lambda!233161 (h!60789 (toList!7027 lm!2473))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (toList!7027 lm!2473)))))))

(assert (=> bs!1159633 m!5789546))

(assert (=> b!4804787 d!1539460))

(declare-fun b_lambda!188051 () Bool)

(assert (= b_lambda!187947 (or start!496194 b_lambda!188051)))

(declare-fun bs!1159634 () Bool)

(declare-fun d!1539462 () Bool)

(assert (= bs!1159634 (and d!1539462 start!496194)))

(assert (=> bs!1159634 (= (dynLambda!22103 lambda!233061 (h!60789 (t!361931 (toList!7027 lm!2473)))) (noDuplicateKeys!2372 (_2!31827 (h!60789 (t!361931 (toList!7027 lm!2473))))))))

(assert (=> bs!1159634 m!5790114))

(assert (=> b!4804712 d!1539462))

(check-sat (not d!1539290) (not d!1539282) (not d!1538946) (not d!1539300) (not d!1539344) (not b!4804909) (not d!1539390) (not bm!335528) (not bm!335546) (not bm!335530) (not b!4804796) (not d!1538974) (not b!4805001) (not b!4804686) (not bm!335531) (not d!1539374) (not b!4804641) (not b!4804628) (not b!4804719) (not d!1539252) (not b_lambda!187989) (not b!4804829) (not b_lambda!188033) (not b!4804788) (not d!1539130) (not bs!1159612) (not b!4805075) (not b_lambda!188051) (not bs!1159617) (not b!4804593) (not d!1539216) (not d!1539356) (not b!4804642) (not d!1539096) (not d!1539118) (not b!4804589) (not d!1539156) (not d!1539044) (not b!4804959) (not bm!335532) (not d!1539082) (not b!4804791) (not d!1539042) (not bs!1159609) (not b!4804948) (not b!4804786) (not b!4805005) (not b!4804891) (not b!4805137) (not b!4804986) (not bs!1159628) (not d!1539120) (not b!4805054) (not b!4804848) (not d!1539134) (not b!4804947) (not bs!1159621) (not b!4804540) (not b!4804835) (not b!4805013) (not d!1538956) (not d!1539206) (not d!1539116) (not b!4804906) (not b!4805170) (not b_lambda!188023) (not d!1539136) (not b!4804903) (not d!1539418) (not b!4805132) (not b!4804905) (not bm!335535) (not b!4805157) (not b!4804604) (not b_lambda!188049) (not b!4805068) (not b!4804834) (not b!4804810) (not b!4805072) (not bs!1159633) (not b!4805173) (not b!4804569) (not b!4805042) (not d!1539280) (not b!4804692) (not b!4805040) (not b!4804975) (not b!4805008) (not d!1539112) (not d!1539132) (not b!4805003) (not b!4805062) (not b_lambda!188047) (not b!4804627) (not b!4804815) (not b!4804690) (not d!1539296) (not b!4805069) (not b!4805035) (not b!4805176) (not b!4804908) (not b!4804715) (not d!1538968) (not b_lambda!188041) (not b!4804776) (not b!4804643) (not b!4804621) (not bm!335539) (not b_lambda!188031) (not b!4804808) (not d!1539292) (not b!4804800) (not b!4805159) (not d!1539004) (not b!4805155) (not b!4804624) (not d!1539220) (not bm!335529) (not b!4804601) (not b!4805186) (not b!4805041) (not bs!1159629) (not b!4805059) (not b!4804579) (not bs!1159630) (not b!4804605) (not b!4804957) (not bs!1159624) (not b!4804571) (not b!4805169) (not d!1539050) (not bs!1159615) (not d!1539056) (not b_lambda!188043) (not b!4805078) (not b!4804898) (not b!4804826) (not b!4804896) (not b!4804539) (not b!4804599) (not b!4805129) (not d!1539104) (not d!1538970) (not d!1539158) (not b!4804830) (not b!4804790) (not b!4804845) (not b_lambda!188025) (not bm!335537) (not b!4804804) (not b!4804687) (not b!4805056) (not b!4804803) (not b!4804819) (not b_lambda!188037) (not b!4804811) (not bm!335536) (not d!1539238) (not b!4804982) (not bm!335534) (not b_lambda!187937) (not b!4804793) (not b!4805111) (not b!4805014) (not bs!1159634) (not bm!335533) (not bs!1159620) (not d!1539294) (not b!4805077) (not b!4804904) (not d!1539102) (not b!4804570) (not bs!1159631) (not d!1539070) (not d!1538990) (not bm!335545) (not b!4805025) (not b!4804721) (not d!1539286) (not b!4804792) (not b!4804892) (not d!1539272) (not b!4804828) (not b!4804623) (not b!4805063) (not b!4804713) (not b!4805128) (not b!4804894) (not d!1539094) (not d!1539124) (not d!1538984) (not b!4805067) (not b!4804751) (not d!1538958) (not bs!1159607) (not d!1539048) (not d!1539084) (not d!1539298) (not b!4804626) (not d!1539324) (not b!4804846) (not bs!1159632) (not b!4804961) (not b_lambda!188039) (not bs!1159614) (not b_lambda!188017) (not d!1539086) (not b!4804820) (not b!4805043) (not d!1539200) (not d!1539398) (not b!4804629) (not d!1539164) (not b!4805070) (not d!1539358) (not d!1539396) (not b!4804537) (not b!4805108) (not b!4805168) (not b!4804990) (not b!4804639) (not d!1539392) (not b!4804622) (not b!4804849) tp_is_empty!33757 (not b!4805192) (not b!4804774) (not bm!335538) (not b!4804549) (not b!4804535) (not b!4804818) (not d!1539340) (not b_lambda!188029) (not b!4804897) (not b!4805102) (not d!1539010) (not b!4805036) (not b!4804718) (not b!4805112) (not d!1538942) (not d!1539410) (not b!4805175) (not d!1539068) (not d!1539054) (not b!4804805) (not b!4804973) (not b!4804893) (not b!4805012) (not b!4804778) (not b!4804693) (not d!1539394) (not b_lambda!188019) (not b!4805104) (not d!1539244) (not b!4804716) (not b!4804602) (not d!1539046) (not bs!1159626) (not b!4805191) (not b!4804910) (not d!1539128) (not b!4804771) (not d!1539126) (not b!4805134) (not b_lambda!188035) (not d!1539090) (not b!4804832) (not b!4804889) (not b!4805071) (not d!1539424) (not b_lambda!188027) (not d!1539240) (not b!4805015) (not b_lambda!188045) (not d!1539110) tp_is_empty!33759 (not b_lambda!188021))
(check-sat)
