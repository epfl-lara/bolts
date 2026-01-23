; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!451218 () Bool)

(assert start!451218)

(declare-fun b!4543259 () Bool)

(declare-fun e!2831196 () Bool)

(declare-datatypes ((K!12173 0))(
  ( (K!12174 (val!18009 Int)) )
))
(declare-datatypes ((V!12419 0))(
  ( (V!12420 (val!18010 Int)) )
))
(declare-datatypes ((tuple2!51286 0))(
  ( (tuple2!51287 (_1!28937 K!12173) (_2!28937 V!12419)) )
))
(declare-datatypes ((List!50912 0))(
  ( (Nil!50788) (Cons!50788 (h!56677 tuple2!51286) (t!357874 List!50912)) )
))
(declare-datatypes ((tuple2!51288 0))(
  ( (tuple2!51289 (_1!28938 (_ BitVec 64)) (_2!28938 List!50912)) )
))
(declare-datatypes ((List!50913 0))(
  ( (Nil!50789) (Cons!50789 (h!56678 tuple2!51288) (t!357875 List!50913)) )
))
(declare-datatypes ((ListLongMap!3065 0))(
  ( (ListLongMap!3066 (toList!4433 List!50913)) )
))
(declare-fun lm!1477 () ListLongMap!3065)

(declare-fun key!3287 () K!12173)

(declare-fun containsKeyBiggerList!191 (List!50913 K!12173) Bool)

(assert (=> b!4543259 (= e!2831196 (containsKeyBiggerList!191 (Cons!50789 (h!56678 (toList!4433 lm!1477)) Nil!50789) key!3287))))

(declare-fun b!4543260 () Bool)

(declare-fun e!2831200 () Bool)

(declare-fun tp!1338786 () Bool)

(assert (=> b!4543260 (= e!2831200 tp!1338786)))

(declare-fun b!4543261 () Bool)

(declare-fun e!2831197 () Bool)

(assert (=> b!4543261 (= e!2831197 e!2831196)))

(declare-fun res!1894007 () Bool)

(assert (=> b!4543261 (=> res!1894007 e!2831196)))

(declare-fun lt!1717997 () Bool)

(assert (=> b!4543261 (= res!1894007 lt!1717997)))

(declare-datatypes ((Unit!99018 0))(
  ( (Unit!99019) )
))
(declare-fun lt!1717994 () Unit!99018)

(declare-fun e!2831194 () Unit!99018)

(assert (=> b!4543261 (= lt!1717994 e!2831194)))

(declare-fun c!775956 () Bool)

(assert (=> b!4543261 (= c!775956 lt!1717997)))

(declare-fun containsKey!1905 (List!50912 K!12173) Bool)

(assert (=> b!4543261 (= lt!1717997 (not (containsKey!1905 (_2!28938 (h!56678 (toList!4433 lm!1477))) key!3287)))))

(declare-fun b!4543262 () Bool)

(declare-fun res!1894005 () Bool)

(declare-fun e!2831199 () Bool)

(assert (=> b!4543262 (=> (not res!1894005) (not e!2831199))))

(declare-datatypes ((ListMap!3695 0))(
  ( (ListMap!3696 (toList!4434 List!50912)) )
))
(declare-fun contains!13602 (ListMap!3695 K!12173) Bool)

(declare-fun extractMap!1269 (List!50913) ListMap!3695)

(assert (=> b!4543262 (= res!1894005 (contains!13602 (extractMap!1269 (toList!4433 lm!1477)) key!3287))))

(declare-fun b!4543263 () Bool)

(declare-fun e!2831195 () Bool)

(assert (=> b!4543263 (= e!2831195 (not e!2831197))))

(declare-fun res!1894004 () Bool)

(assert (=> b!4543263 (=> res!1894004 e!2831197)))

(declare-fun lt!1717993 () List!50912)

(declare-fun newBucket!178 () List!50912)

(declare-fun removePairForKey!840 (List!50912 K!12173) List!50912)

(assert (=> b!4543263 (= res!1894004 (not (= newBucket!178 (removePairForKey!840 lt!1717993 key!3287))))))

(declare-fun lt!1717996 () tuple2!51288)

(declare-fun lt!1717995 () Unit!99018)

(declare-fun lambda!176852 () Int)

(declare-fun forallContained!2634 (List!50913 Int tuple2!51288) Unit!99018)

(assert (=> b!4543263 (= lt!1717995 (forallContained!2634 (toList!4433 lm!1477) lambda!176852 lt!1717996))))

(declare-fun contains!13603 (List!50913 tuple2!51288) Bool)

(assert (=> b!4543263 (contains!13603 (toList!4433 lm!1477) lt!1717996)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4543263 (= lt!1717996 (tuple2!51289 hash!344 lt!1717993))))

(declare-fun lt!1718001 () Unit!99018)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!725 (List!50913 (_ BitVec 64) List!50912) Unit!99018)

(assert (=> b!4543263 (= lt!1718001 (lemmaGetValueByKeyImpliesContainsTuple!725 (toList!4433 lm!1477) hash!344 lt!1717993))))

(declare-fun apply!11950 (ListLongMap!3065 (_ BitVec 64)) List!50912)

(assert (=> b!4543263 (= lt!1717993 (apply!11950 lm!1477 hash!344))))

(declare-fun lt!1717999 () (_ BitVec 64))

(declare-fun contains!13604 (ListLongMap!3065 (_ BitVec 64)) Bool)

(assert (=> b!4543263 (contains!13604 lm!1477 lt!1717999)))

(declare-datatypes ((Hashable!5608 0))(
  ( (HashableExt!5607 (__x!31311 Int)) )
))
(declare-fun hashF!1107 () Hashable!5608)

(declare-fun lt!1718000 () Unit!99018)

(declare-fun lemmaInGenMapThenLongMapContainsHash!287 (ListLongMap!3065 K!12173 Hashable!5608) Unit!99018)

(assert (=> b!4543263 (= lt!1718000 (lemmaInGenMapThenLongMapContainsHash!287 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1894003 () Bool)

(assert (=> start!451218 (=> (not res!1894003) (not e!2831199))))

(declare-fun forall!10368 (List!50913 Int) Bool)

(assert (=> start!451218 (= res!1894003 (forall!10368 (toList!4433 lm!1477) lambda!176852))))

(assert (=> start!451218 e!2831199))

(assert (=> start!451218 true))

(declare-fun inv!66358 (ListLongMap!3065) Bool)

(assert (=> start!451218 (and (inv!66358 lm!1477) e!2831200)))

(declare-fun tp_is_empty!28129 () Bool)

(assert (=> start!451218 tp_is_empty!28129))

(declare-fun e!2831198 () Bool)

(assert (=> start!451218 e!2831198))

(declare-fun b!4543264 () Bool)

(declare-fun res!1894006 () Bool)

(assert (=> b!4543264 (=> (not res!1894006) (not e!2831199))))

(declare-fun allKeysSameHashInMap!1320 (ListLongMap!3065 Hashable!5608) Bool)

(assert (=> b!4543264 (= res!1894006 (allKeysSameHashInMap!1320 lm!1477 hashF!1107))))

(declare-fun b!4543265 () Bool)

(declare-fun Unit!99020 () Unit!99018)

(assert (=> b!4543265 (= e!2831194 Unit!99020)))

(declare-fun lt!1717998 () Unit!99018)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!201 (ListLongMap!3065 K!12173 Hashable!5608) Unit!99018)

(assert (=> b!4543265 (= lt!1717998 (lemmaNotInItsHashBucketThenNotInMap!201 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4543265 false))

(declare-fun b!4543266 () Bool)

(declare-fun res!1894001 () Bool)

(assert (=> b!4543266 (=> res!1894001 e!2831197)))

(assert (=> b!4543266 (= res!1894001 (or (is-Nil!50789 (toList!4433 lm!1477)) (not (= (_1!28938 (h!56678 (toList!4433 lm!1477))) hash!344))))))

(declare-fun b!4543267 () Bool)

(declare-fun res!1894002 () Bool)

(assert (=> b!4543267 (=> res!1894002 e!2831197)))

(declare-fun noDuplicateKeys!1213 (List!50912) Bool)

(assert (=> b!4543267 (= res!1894002 (not (noDuplicateKeys!1213 newBucket!178)))))

(declare-fun tp!1338787 () Bool)

(declare-fun tp_is_empty!28131 () Bool)

(declare-fun b!4543268 () Bool)

(assert (=> b!4543268 (= e!2831198 (and tp_is_empty!28129 tp_is_empty!28131 tp!1338787))))

(declare-fun b!4543269 () Bool)

(assert (=> b!4543269 (= e!2831199 e!2831195)))

(declare-fun res!1894009 () Bool)

(assert (=> b!4543269 (=> (not res!1894009) (not e!2831195))))

(assert (=> b!4543269 (= res!1894009 (= lt!1717999 hash!344))))

(declare-fun hash!2948 (Hashable!5608 K!12173) (_ BitVec 64))

(assert (=> b!4543269 (= lt!1717999 (hash!2948 hashF!1107 key!3287))))

(declare-fun b!4543270 () Bool)

(declare-fun Unit!99021 () Unit!99018)

(assert (=> b!4543270 (= e!2831194 Unit!99021)))

(declare-fun b!4543271 () Bool)

(declare-fun res!1894008 () Bool)

(assert (=> b!4543271 (=> (not res!1894008) (not e!2831195))))

(declare-fun allKeysSameHash!1067 (List!50912 (_ BitVec 64) Hashable!5608) Bool)

(assert (=> b!4543271 (= res!1894008 (allKeysSameHash!1067 newBucket!178 hash!344 hashF!1107))))

(assert (= (and start!451218 res!1894003) b!4543264))

(assert (= (and b!4543264 res!1894006) b!4543262))

(assert (= (and b!4543262 res!1894005) b!4543269))

(assert (= (and b!4543269 res!1894009) b!4543271))

(assert (= (and b!4543271 res!1894008) b!4543263))

(assert (= (and b!4543263 (not res!1894004)) b!4543267))

(assert (= (and b!4543267 (not res!1894002)) b!4543266))

(assert (= (and b!4543266 (not res!1894001)) b!4543261))

(assert (= (and b!4543261 c!775956) b!4543265))

(assert (= (and b!4543261 (not c!775956)) b!4543270))

(assert (= (and b!4543261 (not res!1894007)) b!4543259))

(assert (= start!451218 b!4543260))

(assert (= (and start!451218 (is-Cons!50788 newBucket!178)) b!4543268))

(declare-fun m!5312291 () Bool)

(assert (=> b!4543269 m!5312291))

(declare-fun m!5312293 () Bool)

(assert (=> b!4543271 m!5312293))

(declare-fun m!5312295 () Bool)

(assert (=> b!4543259 m!5312295))

(declare-fun m!5312297 () Bool)

(assert (=> b!4543264 m!5312297))

(declare-fun m!5312299 () Bool)

(assert (=> start!451218 m!5312299))

(declare-fun m!5312301 () Bool)

(assert (=> start!451218 m!5312301))

(declare-fun m!5312303 () Bool)

(assert (=> b!4543263 m!5312303))

(declare-fun m!5312305 () Bool)

(assert (=> b!4543263 m!5312305))

(declare-fun m!5312307 () Bool)

(assert (=> b!4543263 m!5312307))

(declare-fun m!5312309 () Bool)

(assert (=> b!4543263 m!5312309))

(declare-fun m!5312311 () Bool)

(assert (=> b!4543263 m!5312311))

(declare-fun m!5312313 () Bool)

(assert (=> b!4543263 m!5312313))

(declare-fun m!5312315 () Bool)

(assert (=> b!4543263 m!5312315))

(declare-fun m!5312317 () Bool)

(assert (=> b!4543262 m!5312317))

(assert (=> b!4543262 m!5312317))

(declare-fun m!5312319 () Bool)

(assert (=> b!4543262 m!5312319))

(declare-fun m!5312321 () Bool)

(assert (=> b!4543265 m!5312321))

(declare-fun m!5312323 () Bool)

(assert (=> b!4543261 m!5312323))

(declare-fun m!5312325 () Bool)

(assert (=> b!4543267 m!5312325))

(push 1)

(assert (not b!4543260))

(assert (not b!4543267))

(assert (not b!4543271))

(assert (not b!4543268))

(assert (not start!451218))

(assert (not b!4543259))

(assert (not b!4543261))

(assert tp_is_empty!28129)

(assert (not b!4543262))

(assert (not b!4543269))

(assert (not b!4543263))

(assert (not b!4543264))

(assert tp_is_empty!28131)

(assert (not b!4543265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1404685 () Bool)

(declare-fun res!1894047 () Bool)

(declare-fun e!2831232 () Bool)

(assert (=> d!1404685 (=> res!1894047 e!2831232)))

(assert (=> d!1404685 (= res!1894047 (and (is-Cons!50788 (_2!28938 (h!56678 (toList!4433 lm!1477)))) (= (_1!28937 (h!56677 (_2!28938 (h!56678 (toList!4433 lm!1477))))) key!3287)))))

(assert (=> d!1404685 (= (containsKey!1905 (_2!28938 (h!56678 (toList!4433 lm!1477))) key!3287) e!2831232)))

(declare-fun b!4543325 () Bool)

(declare-fun e!2831233 () Bool)

(assert (=> b!4543325 (= e!2831232 e!2831233)))

(declare-fun res!1894048 () Bool)

(assert (=> b!4543325 (=> (not res!1894048) (not e!2831233))))

(assert (=> b!4543325 (= res!1894048 (is-Cons!50788 (_2!28938 (h!56678 (toList!4433 lm!1477)))))))

(declare-fun b!4543326 () Bool)

(assert (=> b!4543326 (= e!2831233 (containsKey!1905 (t!357874 (_2!28938 (h!56678 (toList!4433 lm!1477)))) key!3287))))

(assert (= (and d!1404685 (not res!1894047)) b!4543325))

(assert (= (and b!4543325 res!1894048) b!4543326))

(declare-fun m!5312365 () Bool)

(assert (=> b!4543326 m!5312365))

(assert (=> b!4543261 d!1404685))

(declare-fun d!1404687 () Bool)

(assert (=> d!1404687 true))

(assert (=> d!1404687 true))

(declare-fun lambda!176863 () Int)

(declare-fun forall!10370 (List!50912 Int) Bool)

(assert (=> d!1404687 (= (allKeysSameHash!1067 newBucket!178 hash!344 hashF!1107) (forall!10370 newBucket!178 lambda!176863))))

(declare-fun bs!879685 () Bool)

(assert (= bs!879685 d!1404687))

(declare-fun m!5312369 () Bool)

(assert (=> bs!879685 m!5312369))

(assert (=> b!4543271 d!1404687))

(declare-fun d!1404691 () Bool)

(declare-fun res!1894053 () Bool)

(declare-fun e!2831238 () Bool)

(assert (=> d!1404691 (=> res!1894053 e!2831238)))

(assert (=> d!1404691 (= res!1894053 (is-Nil!50789 (toList!4433 lm!1477)))))

(assert (=> d!1404691 (= (forall!10368 (toList!4433 lm!1477) lambda!176852) e!2831238)))

(declare-fun b!4543335 () Bool)

(declare-fun e!2831239 () Bool)

(assert (=> b!4543335 (= e!2831238 e!2831239)))

(declare-fun res!1894054 () Bool)

(assert (=> b!4543335 (=> (not res!1894054) (not e!2831239))))

(declare-fun dynLambda!21230 (Int tuple2!51288) Bool)

(assert (=> b!4543335 (= res!1894054 (dynLambda!21230 lambda!176852 (h!56678 (toList!4433 lm!1477))))))

(declare-fun b!4543336 () Bool)

(assert (=> b!4543336 (= e!2831239 (forall!10368 (t!357875 (toList!4433 lm!1477)) lambda!176852))))

(assert (= (and d!1404691 (not res!1894053)) b!4543335))

(assert (= (and b!4543335 res!1894054) b!4543336))

(declare-fun b_lambda!158255 () Bool)

(assert (=> (not b_lambda!158255) (not b!4543335)))

(declare-fun m!5312371 () Bool)

(assert (=> b!4543335 m!5312371))

(declare-fun m!5312373 () Bool)

(assert (=> b!4543336 m!5312373))

(assert (=> start!451218 d!1404691))

(declare-fun d!1404693 () Bool)

(declare-fun isStrictlySorted!466 (List!50913) Bool)

(assert (=> d!1404693 (= (inv!66358 lm!1477) (isStrictlySorted!466 (toList!4433 lm!1477)))))

(declare-fun bs!879686 () Bool)

(assert (= bs!879686 d!1404693))

(declare-fun m!5312375 () Bool)

(assert (=> bs!879686 m!5312375))

(assert (=> start!451218 d!1404693))

(declare-fun bs!879690 () Bool)

(declare-fun d!1404695 () Bool)

(assert (= bs!879690 (and d!1404695 start!451218)))

(declare-fun lambda!176869 () Int)

(assert (=> bs!879690 (= lambda!176869 lambda!176852)))

(assert (=> d!1404695 (not (contains!13602 (extractMap!1269 (toList!4433 lm!1477)) key!3287))))

(declare-fun lt!1718034 () Unit!99018)

(declare-fun choose!29977 (ListLongMap!3065 K!12173 Hashable!5608) Unit!99018)

(assert (=> d!1404695 (= lt!1718034 (choose!29977 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1404695 (forall!10368 (toList!4433 lm!1477) lambda!176869)))

(assert (=> d!1404695 (= (lemmaNotInItsHashBucketThenNotInMap!201 lm!1477 key!3287 hashF!1107) lt!1718034)))

(declare-fun bs!879691 () Bool)

(assert (= bs!879691 d!1404695))

(assert (=> bs!879691 m!5312317))

(assert (=> bs!879691 m!5312317))

(assert (=> bs!879691 m!5312319))

(declare-fun m!5312387 () Bool)

(assert (=> bs!879691 m!5312387))

(declare-fun m!5312389 () Bool)

(assert (=> bs!879691 m!5312389))

(assert (=> b!4543265 d!1404695))

(declare-fun d!1404701 () Bool)

(declare-fun res!1894061 () Bool)

(declare-fun e!2831248 () Bool)

(assert (=> d!1404701 (=> res!1894061 e!2831248)))

(declare-fun e!2831246 () Bool)

(assert (=> d!1404701 (= res!1894061 e!2831246)))

(declare-fun res!1894063 () Bool)

(assert (=> d!1404701 (=> (not res!1894063) (not e!2831246))))

(assert (=> d!1404701 (= res!1894063 (is-Cons!50789 (Cons!50789 (h!56678 (toList!4433 lm!1477)) Nil!50789)))))

(assert (=> d!1404701 (= (containsKeyBiggerList!191 (Cons!50789 (h!56678 (toList!4433 lm!1477)) Nil!50789) key!3287) e!2831248)))

(declare-fun b!4543343 () Bool)

(assert (=> b!4543343 (= e!2831246 (containsKey!1905 (_2!28938 (h!56678 (Cons!50789 (h!56678 (toList!4433 lm!1477)) Nil!50789))) key!3287))))

(declare-fun b!4543344 () Bool)

(declare-fun e!2831247 () Bool)

(assert (=> b!4543344 (= e!2831248 e!2831247)))

(declare-fun res!1894062 () Bool)

(assert (=> b!4543344 (=> (not res!1894062) (not e!2831247))))

(assert (=> b!4543344 (= res!1894062 (is-Cons!50789 (Cons!50789 (h!56678 (toList!4433 lm!1477)) Nil!50789)))))

(declare-fun b!4543345 () Bool)

(assert (=> b!4543345 (= e!2831247 (containsKeyBiggerList!191 (t!357875 (Cons!50789 (h!56678 (toList!4433 lm!1477)) Nil!50789)) key!3287))))

(assert (= (and d!1404701 res!1894063) b!4543343))

(assert (= (and d!1404701 (not res!1894061)) b!4543344))

(assert (= (and b!4543344 res!1894062) b!4543345))

(declare-fun m!5312391 () Bool)

(assert (=> b!4543343 m!5312391))

(declare-fun m!5312393 () Bool)

(assert (=> b!4543345 m!5312393))

(assert (=> b!4543259 d!1404701))

(declare-fun bs!879692 () Bool)

(declare-fun d!1404703 () Bool)

(assert (= bs!879692 (and d!1404703 start!451218)))

(declare-fun lambda!176872 () Int)

(assert (=> bs!879692 (not (= lambda!176872 lambda!176852))))

(declare-fun bs!879693 () Bool)

(assert (= bs!879693 (and d!1404703 d!1404695)))

(assert (=> bs!879693 (not (= lambda!176872 lambda!176869))))

(assert (=> d!1404703 true))

(assert (=> d!1404703 (= (allKeysSameHashInMap!1320 lm!1477 hashF!1107) (forall!10368 (toList!4433 lm!1477) lambda!176872))))

(declare-fun bs!879694 () Bool)

(assert (= bs!879694 d!1404703))

(declare-fun m!5312395 () Bool)

(assert (=> bs!879694 m!5312395))

(assert (=> b!4543264 d!1404703))

(declare-fun d!1404705 () Bool)

(declare-fun hash!2950 (Hashable!5608 K!12173) (_ BitVec 64))

(assert (=> d!1404705 (= (hash!2948 hashF!1107 key!3287) (hash!2950 hashF!1107 key!3287))))

(declare-fun bs!879695 () Bool)

(assert (= bs!879695 d!1404705))

(declare-fun m!5312397 () Bool)

(assert (=> bs!879695 m!5312397))

(assert (=> b!4543269 d!1404705))

(declare-fun d!1404707 () Bool)

(declare-fun lt!1718037 () Bool)

(declare-fun content!8462 (List!50913) (Set tuple2!51288))

(assert (=> d!1404707 (= lt!1718037 (set.member lt!1717996 (content!8462 (toList!4433 lm!1477))))))

(declare-fun e!2831254 () Bool)

(assert (=> d!1404707 (= lt!1718037 e!2831254)))

(declare-fun res!1894068 () Bool)

(assert (=> d!1404707 (=> (not res!1894068) (not e!2831254))))

(assert (=> d!1404707 (= res!1894068 (is-Cons!50789 (toList!4433 lm!1477)))))

(assert (=> d!1404707 (= (contains!13603 (toList!4433 lm!1477) lt!1717996) lt!1718037)))

(declare-fun b!4543352 () Bool)

(declare-fun e!2831253 () Bool)

(assert (=> b!4543352 (= e!2831254 e!2831253)))

(declare-fun res!1894069 () Bool)

(assert (=> b!4543352 (=> res!1894069 e!2831253)))

(assert (=> b!4543352 (= res!1894069 (= (h!56678 (toList!4433 lm!1477)) lt!1717996))))

(declare-fun b!4543353 () Bool)

(assert (=> b!4543353 (= e!2831253 (contains!13603 (t!357875 (toList!4433 lm!1477)) lt!1717996))))

(assert (= (and d!1404707 res!1894068) b!4543352))

(assert (= (and b!4543352 (not res!1894069)) b!4543353))

(declare-fun m!5312399 () Bool)

(assert (=> d!1404707 m!5312399))

(declare-fun m!5312401 () Bool)

(assert (=> d!1404707 m!5312401))

(declare-fun m!5312403 () Bool)

(assert (=> b!4543353 m!5312403))

(assert (=> b!4543263 d!1404707))

(declare-fun bs!879696 () Bool)

(declare-fun d!1404709 () Bool)

(assert (= bs!879696 (and d!1404709 start!451218)))

(declare-fun lambda!176875 () Int)

(assert (=> bs!879696 (= lambda!176875 lambda!176852)))

(declare-fun bs!879697 () Bool)

(assert (= bs!879697 (and d!1404709 d!1404695)))

(assert (=> bs!879697 (= lambda!176875 lambda!176869)))

(declare-fun bs!879698 () Bool)

(assert (= bs!879698 (and d!1404709 d!1404703)))

(assert (=> bs!879698 (not (= lambda!176875 lambda!176872))))

(assert (=> d!1404709 (contains!13604 lm!1477 (hash!2948 hashF!1107 key!3287))))

(declare-fun lt!1718048 () Unit!99018)

(declare-fun choose!29978 (ListLongMap!3065 K!12173 Hashable!5608) Unit!99018)

(assert (=> d!1404709 (= lt!1718048 (choose!29978 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1404709 (forall!10368 (toList!4433 lm!1477) lambda!176875)))

(assert (=> d!1404709 (= (lemmaInGenMapThenLongMapContainsHash!287 lm!1477 key!3287 hashF!1107) lt!1718048)))

(declare-fun bs!879699 () Bool)

(assert (= bs!879699 d!1404709))

(assert (=> bs!879699 m!5312291))

(assert (=> bs!879699 m!5312291))

(declare-fun m!5312405 () Bool)

(assert (=> bs!879699 m!5312405))

(declare-fun m!5312407 () Bool)

(assert (=> bs!879699 m!5312407))

(declare-fun m!5312409 () Bool)

(assert (=> bs!879699 m!5312409))

(assert (=> b!4543263 d!1404709))

(declare-fun d!1404711 () Bool)

(assert (=> d!1404711 (dynLambda!21230 lambda!176852 lt!1717996)))

(declare-fun lt!1718055 () Unit!99018)

(declare-fun choose!29979 (List!50913 Int tuple2!51288) Unit!99018)

(assert (=> d!1404711 (= lt!1718055 (choose!29979 (toList!4433 lm!1477) lambda!176852 lt!1717996))))

(declare-fun e!2831263 () Bool)

(assert (=> d!1404711 e!2831263))

(declare-fun res!1894075 () Bool)

(assert (=> d!1404711 (=> (not res!1894075) (not e!2831263))))

(assert (=> d!1404711 (= res!1894075 (forall!10368 (toList!4433 lm!1477) lambda!176852))))

(assert (=> d!1404711 (= (forallContained!2634 (toList!4433 lm!1477) lambda!176852 lt!1717996) lt!1718055)))

(declare-fun b!4543365 () Bool)

(assert (=> b!4543365 (= e!2831263 (contains!13603 (toList!4433 lm!1477) lt!1717996))))

(assert (= (and d!1404711 res!1894075) b!4543365))

(declare-fun b_lambda!158257 () Bool)

(assert (=> (not b_lambda!158257) (not d!1404711)))

(declare-fun m!5312419 () Bool)

(assert (=> d!1404711 m!5312419))

(declare-fun m!5312421 () Bool)

(assert (=> d!1404711 m!5312421))

(assert (=> d!1404711 m!5312299))

(assert (=> b!4543365 m!5312307))

(assert (=> b!4543263 d!1404711))

(declare-fun d!1404715 () Bool)

(assert (=> d!1404715 (contains!13603 (toList!4433 lm!1477) (tuple2!51289 hash!344 lt!1717993))))

(declare-fun lt!1718058 () Unit!99018)

(declare-fun choose!29980 (List!50913 (_ BitVec 64) List!50912) Unit!99018)

(assert (=> d!1404715 (= lt!1718058 (choose!29980 (toList!4433 lm!1477) hash!344 lt!1717993))))

(declare-fun e!2831266 () Bool)

(assert (=> d!1404715 e!2831266))

(declare-fun res!1894078 () Bool)

(assert (=> d!1404715 (=> (not res!1894078) (not e!2831266))))

(assert (=> d!1404715 (= res!1894078 (isStrictlySorted!466 (toList!4433 lm!1477)))))

(assert (=> d!1404715 (= (lemmaGetValueByKeyImpliesContainsTuple!725 (toList!4433 lm!1477) hash!344 lt!1717993) lt!1718058)))

(declare-fun b!4543368 () Bool)

(declare-datatypes ((Option!11230 0))(
  ( (None!11229) (Some!11229 (v!44947 List!50912)) )
))
(declare-fun getValueByKey!1162 (List!50913 (_ BitVec 64)) Option!11230)

(assert (=> b!4543368 (= e!2831266 (= (getValueByKey!1162 (toList!4433 lm!1477) hash!344) (Some!11229 lt!1717993)))))

(assert (= (and d!1404715 res!1894078) b!4543368))

(declare-fun m!5312423 () Bool)

(assert (=> d!1404715 m!5312423))

(declare-fun m!5312425 () Bool)

(assert (=> d!1404715 m!5312425))

(assert (=> d!1404715 m!5312375))

(declare-fun m!5312427 () Bool)

(assert (=> b!4543368 m!5312427))

(assert (=> b!4543263 d!1404715))

(declare-fun d!1404717 () Bool)

(declare-fun get!16714 (Option!11230) List!50912)

(assert (=> d!1404717 (= (apply!11950 lm!1477 hash!344) (get!16714 (getValueByKey!1162 (toList!4433 lm!1477) hash!344)))))

(declare-fun bs!879700 () Bool)

(assert (= bs!879700 d!1404717))

(assert (=> bs!879700 m!5312427))

(assert (=> bs!879700 m!5312427))

(declare-fun m!5312429 () Bool)

(assert (=> bs!879700 m!5312429))

(assert (=> b!4543263 d!1404717))

(declare-fun d!1404719 () Bool)

(declare-fun e!2831274 () Bool)

(assert (=> d!1404719 e!2831274))

(declare-fun res!1894084 () Bool)

(assert (=> d!1404719 (=> res!1894084 e!2831274)))

(declare-fun lt!1718071 () Bool)

(assert (=> d!1404719 (= res!1894084 (not lt!1718071))))

(declare-fun lt!1718070 () Bool)

(assert (=> d!1404719 (= lt!1718071 lt!1718070)))

(declare-fun lt!1718072 () Unit!99018)

(declare-fun e!2831275 () Unit!99018)

(assert (=> d!1404719 (= lt!1718072 e!2831275)))

(declare-fun c!775965 () Bool)

(assert (=> d!1404719 (= c!775965 lt!1718070)))

(declare-fun containsKey!1907 (List!50913 (_ BitVec 64)) Bool)

(assert (=> d!1404719 (= lt!1718070 (containsKey!1907 (toList!4433 lm!1477) lt!1717999))))

(assert (=> d!1404719 (= (contains!13604 lm!1477 lt!1717999) lt!1718071)))

(declare-fun b!4543378 () Bool)

(declare-fun lt!1718073 () Unit!99018)

(assert (=> b!4543378 (= e!2831275 lt!1718073)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1066 (List!50913 (_ BitVec 64)) Unit!99018)

(assert (=> b!4543378 (= lt!1718073 (lemmaContainsKeyImpliesGetValueByKeyDefined!1066 (toList!4433 lm!1477) lt!1717999))))

(declare-fun isDefined!8503 (Option!11230) Bool)

(assert (=> b!4543378 (isDefined!8503 (getValueByKey!1162 (toList!4433 lm!1477) lt!1717999))))

(declare-fun b!4543379 () Bool)

(declare-fun Unit!99026 () Unit!99018)

(assert (=> b!4543379 (= e!2831275 Unit!99026)))

(declare-fun b!4543380 () Bool)

(assert (=> b!4543380 (= e!2831274 (isDefined!8503 (getValueByKey!1162 (toList!4433 lm!1477) lt!1717999)))))

(assert (= (and d!1404719 c!775965) b!4543378))

(assert (= (and d!1404719 (not c!775965)) b!4543379))

(assert (= (and d!1404719 (not res!1894084)) b!4543380))

(declare-fun m!5312435 () Bool)

(assert (=> d!1404719 m!5312435))

(declare-fun m!5312437 () Bool)

(assert (=> b!4543378 m!5312437))

(declare-fun m!5312439 () Bool)

(assert (=> b!4543378 m!5312439))

(assert (=> b!4543378 m!5312439))

(declare-fun m!5312441 () Bool)

(assert (=> b!4543378 m!5312441))

(assert (=> b!4543380 m!5312439))

(assert (=> b!4543380 m!5312439))

(assert (=> b!4543380 m!5312441))

(assert (=> b!4543263 d!1404719))

(declare-fun d!1404723 () Bool)

(declare-fun lt!1718078 () List!50912)

(assert (=> d!1404723 (not (containsKey!1905 lt!1718078 key!3287))))

(declare-fun e!2831284 () List!50912)

(assert (=> d!1404723 (= lt!1718078 e!2831284)))

(declare-fun c!775975 () Bool)

(assert (=> d!1404723 (= c!775975 (and (is-Cons!50788 lt!1717993) (= (_1!28937 (h!56677 lt!1717993)) key!3287)))))

(assert (=> d!1404723 (noDuplicateKeys!1213 lt!1717993)))

(assert (=> d!1404723 (= (removePairForKey!840 lt!1717993 key!3287) lt!1718078)))

(declare-fun b!4543400 () Bool)

(declare-fun e!2831285 () List!50912)

(assert (=> b!4543400 (= e!2831285 Nil!50788)))

(declare-fun b!4543398 () Bool)

(assert (=> b!4543398 (= e!2831284 e!2831285)))

(declare-fun c!775974 () Bool)

(assert (=> b!4543398 (= c!775974 (is-Cons!50788 lt!1717993))))

(declare-fun b!4543397 () Bool)

(assert (=> b!4543397 (= e!2831284 (t!357874 lt!1717993))))

(declare-fun b!4543399 () Bool)

(assert (=> b!4543399 (= e!2831285 (Cons!50788 (h!56677 lt!1717993) (removePairForKey!840 (t!357874 lt!1717993) key!3287)))))

(assert (= (and d!1404723 c!775975) b!4543397))

(assert (= (and d!1404723 (not c!775975)) b!4543398))

(assert (= (and b!4543398 c!775974) b!4543399))

(assert (= (and b!4543398 (not c!775974)) b!4543400))

(declare-fun m!5312443 () Bool)

(assert (=> d!1404723 m!5312443))

(declare-fun m!5312445 () Bool)

(assert (=> d!1404723 m!5312445))

(declare-fun m!5312447 () Bool)

(assert (=> b!4543399 m!5312447))

(assert (=> b!4543263 d!1404723))

(declare-fun b!4543431 () Bool)

(declare-fun e!2831310 () Unit!99018)

(declare-fun e!2831313 () Unit!99018)

(assert (=> b!4543431 (= e!2831310 e!2831313)))

(declare-fun c!775985 () Bool)

(declare-fun call!316800 () Bool)

(assert (=> b!4543431 (= c!775985 call!316800)))

(declare-fun b!4543432 () Bool)

(declare-datatypes ((List!50916 0))(
  ( (Nil!50792) (Cons!50792 (h!56683 K!12173) (t!357878 List!50916)) )
))
(declare-fun e!2831312 () List!50916)

(declare-fun keys!17683 (ListMap!3695) List!50916)

(assert (=> b!4543432 (= e!2831312 (keys!17683 (extractMap!1269 (toList!4433 lm!1477))))))

(declare-fun b!4543433 () Bool)

(declare-fun e!2831309 () Bool)

(declare-fun e!2831311 () Bool)

(assert (=> b!4543433 (= e!2831309 e!2831311)))

(declare-fun res!1894099 () Bool)

(assert (=> b!4543433 (=> (not res!1894099) (not e!2831311))))

(declare-datatypes ((Option!11231 0))(
  ( (None!11230) (Some!11230 (v!44948 V!12419)) )
))
(declare-fun isDefined!8504 (Option!11231) Bool)

(declare-fun getValueByKey!1163 (List!50912 K!12173) Option!11231)

(assert (=> b!4543433 (= res!1894099 (isDefined!8504 (getValueByKey!1163 (toList!4434 (extractMap!1269 (toList!4433 lm!1477))) key!3287)))))

(declare-fun b!4543434 () Bool)

(declare-fun lt!1718101 () Unit!99018)

(assert (=> b!4543434 (= e!2831310 lt!1718101)))

(declare-fun lt!1718107 () Unit!99018)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1067 (List!50912 K!12173) Unit!99018)

(assert (=> b!4543434 (= lt!1718107 (lemmaContainsKeyImpliesGetValueByKeyDefined!1067 (toList!4434 (extractMap!1269 (toList!4433 lm!1477))) key!3287))))

(assert (=> b!4543434 (isDefined!8504 (getValueByKey!1163 (toList!4434 (extractMap!1269 (toList!4433 lm!1477))) key!3287))))

(declare-fun lt!1718104 () Unit!99018)

(assert (=> b!4543434 (= lt!1718104 lt!1718107)))

(declare-fun lemmaInListThenGetKeysListContains!496 (List!50912 K!12173) Unit!99018)

(assert (=> b!4543434 (= lt!1718101 (lemmaInListThenGetKeysListContains!496 (toList!4434 (extractMap!1269 (toList!4433 lm!1477))) key!3287))))

(assert (=> b!4543434 call!316800))

(declare-fun b!4543435 () Bool)

(declare-fun getKeysList!500 (List!50912) List!50916)

(assert (=> b!4543435 (= e!2831312 (getKeysList!500 (toList!4434 (extractMap!1269 (toList!4433 lm!1477)))))))

(declare-fun bm!316795 () Bool)

(declare-fun contains!13608 (List!50916 K!12173) Bool)

(assert (=> bm!316795 (= call!316800 (contains!13608 e!2831312 key!3287))))

(declare-fun c!775984 () Bool)

(declare-fun c!775986 () Bool)

(assert (=> bm!316795 (= c!775984 c!775986)))

(declare-fun b!4543436 () Bool)

(assert (=> b!4543436 false))

(declare-fun lt!1718105 () Unit!99018)

(declare-fun lt!1718103 () Unit!99018)

(assert (=> b!4543436 (= lt!1718105 lt!1718103)))

(declare-fun containsKey!1908 (List!50912 K!12173) Bool)

(assert (=> b!4543436 (containsKey!1908 (toList!4434 (extractMap!1269 (toList!4433 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!499 (List!50912 K!12173) Unit!99018)

(assert (=> b!4543436 (= lt!1718103 (lemmaInGetKeysListThenContainsKey!499 (toList!4434 (extractMap!1269 (toList!4433 lm!1477))) key!3287))))

(declare-fun Unit!99027 () Unit!99018)

(assert (=> b!4543436 (= e!2831313 Unit!99027)))

(declare-fun b!4543437 () Bool)

(declare-fun e!2831308 () Bool)

(assert (=> b!4543437 (= e!2831308 (not (contains!13608 (keys!17683 (extractMap!1269 (toList!4433 lm!1477))) key!3287)))))

(declare-fun d!1404725 () Bool)

(assert (=> d!1404725 e!2831309))

(declare-fun res!1894101 () Bool)

(assert (=> d!1404725 (=> res!1894101 e!2831309)))

(assert (=> d!1404725 (= res!1894101 e!2831308)))

(declare-fun res!1894100 () Bool)

(assert (=> d!1404725 (=> (not res!1894100) (not e!2831308))))

(declare-fun lt!1718106 () Bool)

(assert (=> d!1404725 (= res!1894100 (not lt!1718106))))

(declare-fun lt!1718108 () Bool)

(assert (=> d!1404725 (= lt!1718106 lt!1718108)))

(declare-fun lt!1718102 () Unit!99018)

(assert (=> d!1404725 (= lt!1718102 e!2831310)))

(assert (=> d!1404725 (= c!775986 lt!1718108)))

(assert (=> d!1404725 (= lt!1718108 (containsKey!1908 (toList!4434 (extractMap!1269 (toList!4433 lm!1477))) key!3287))))

(assert (=> d!1404725 (= (contains!13602 (extractMap!1269 (toList!4433 lm!1477)) key!3287) lt!1718106)))

(declare-fun b!4543438 () Bool)

(assert (=> b!4543438 (= e!2831311 (contains!13608 (keys!17683 (extractMap!1269 (toList!4433 lm!1477))) key!3287))))

(declare-fun b!4543439 () Bool)

(declare-fun Unit!99028 () Unit!99018)

(assert (=> b!4543439 (= e!2831313 Unit!99028)))

(assert (= (and d!1404725 c!775986) b!4543434))

(assert (= (and d!1404725 (not c!775986)) b!4543431))

(assert (= (and b!4543431 c!775985) b!4543436))

(assert (= (and b!4543431 (not c!775985)) b!4543439))

(assert (= (or b!4543434 b!4543431) bm!316795))

(assert (= (and bm!316795 c!775984) b!4543435))

(assert (= (and bm!316795 (not c!775984)) b!4543432))

(assert (= (and d!1404725 res!1894100) b!4543437))

(assert (= (and d!1404725 (not res!1894101)) b!4543433))

(assert (= (and b!4543433 res!1894099) b!4543438))

(declare-fun m!5312461 () Bool)

(assert (=> d!1404725 m!5312461))

(assert (=> b!4543437 m!5312317))

(declare-fun m!5312463 () Bool)

(assert (=> b!4543437 m!5312463))

(assert (=> b!4543437 m!5312463))

(declare-fun m!5312465 () Bool)

(assert (=> b!4543437 m!5312465))

(declare-fun m!5312467 () Bool)

(assert (=> b!4543433 m!5312467))

(assert (=> b!4543433 m!5312467))

(declare-fun m!5312469 () Bool)

(assert (=> b!4543433 m!5312469))

(assert (=> b!4543438 m!5312317))

(assert (=> b!4543438 m!5312463))

(assert (=> b!4543438 m!5312463))

(assert (=> b!4543438 m!5312465))

(declare-fun m!5312471 () Bool)

(assert (=> b!4543435 m!5312471))

(declare-fun m!5312473 () Bool)

(assert (=> b!4543434 m!5312473))

(assert (=> b!4543434 m!5312467))

(assert (=> b!4543434 m!5312467))

(assert (=> b!4543434 m!5312469))

(declare-fun m!5312475 () Bool)

(assert (=> b!4543434 m!5312475))

(assert (=> b!4543432 m!5312317))

(assert (=> b!4543432 m!5312463))

(declare-fun m!5312477 () Bool)

(assert (=> bm!316795 m!5312477))

(assert (=> b!4543436 m!5312461))

(declare-fun m!5312479 () Bool)

(assert (=> b!4543436 m!5312479))

(assert (=> b!4543262 d!1404725))

(declare-fun bs!879701 () Bool)

(declare-fun d!1404731 () Bool)

(assert (= bs!879701 (and d!1404731 start!451218)))

(declare-fun lambda!176878 () Int)

(assert (=> bs!879701 (= lambda!176878 lambda!176852)))

(declare-fun bs!879702 () Bool)

(assert (= bs!879702 (and d!1404731 d!1404695)))

(assert (=> bs!879702 (= lambda!176878 lambda!176869)))

(declare-fun bs!879703 () Bool)

(assert (= bs!879703 (and d!1404731 d!1404703)))

(assert (=> bs!879703 (not (= lambda!176878 lambda!176872))))

(declare-fun bs!879704 () Bool)

(assert (= bs!879704 (and d!1404731 d!1404709)))

(assert (=> bs!879704 (= lambda!176878 lambda!176875)))

(declare-fun lt!1718112 () ListMap!3695)

(declare-fun invariantList!1052 (List!50912) Bool)

(assert (=> d!1404731 (invariantList!1052 (toList!4434 lt!1718112))))

(declare-fun e!2831317 () ListMap!3695)

(assert (=> d!1404731 (= lt!1718112 e!2831317)))

(declare-fun c!775989 () Bool)

(assert (=> d!1404731 (= c!775989 (is-Cons!50789 (toList!4433 lm!1477)))))

(assert (=> d!1404731 (forall!10368 (toList!4433 lm!1477) lambda!176878)))

(assert (=> d!1404731 (= (extractMap!1269 (toList!4433 lm!1477)) lt!1718112)))

(declare-fun b!4543445 () Bool)

(declare-fun addToMapMapFromBucket!738 (List!50912 ListMap!3695) ListMap!3695)

(assert (=> b!4543445 (= e!2831317 (addToMapMapFromBucket!738 (_2!28938 (h!56678 (toList!4433 lm!1477))) (extractMap!1269 (t!357875 (toList!4433 lm!1477)))))))

(declare-fun b!4543446 () Bool)

(assert (=> b!4543446 (= e!2831317 (ListMap!3696 Nil!50788))))

(assert (= (and d!1404731 c!775989) b!4543445))

(assert (= (and d!1404731 (not c!775989)) b!4543446))

(declare-fun m!5312487 () Bool)

(assert (=> d!1404731 m!5312487))

(declare-fun m!5312489 () Bool)

(assert (=> d!1404731 m!5312489))

(declare-fun m!5312491 () Bool)

(assert (=> b!4543445 m!5312491))

(assert (=> b!4543445 m!5312491))

(declare-fun m!5312493 () Bool)

(assert (=> b!4543445 m!5312493))

(assert (=> b!4543262 d!1404731))

(declare-fun d!1404735 () Bool)

(declare-fun res!1894107 () Bool)

(declare-fun e!2831322 () Bool)

(assert (=> d!1404735 (=> res!1894107 e!2831322)))

(assert (=> d!1404735 (= res!1894107 (not (is-Cons!50788 newBucket!178)))))

(assert (=> d!1404735 (= (noDuplicateKeys!1213 newBucket!178) e!2831322)))

(declare-fun b!4543451 () Bool)

(declare-fun e!2831323 () Bool)

(assert (=> b!4543451 (= e!2831322 e!2831323)))

(declare-fun res!1894108 () Bool)

(assert (=> b!4543451 (=> (not res!1894108) (not e!2831323))))

(assert (=> b!4543451 (= res!1894108 (not (containsKey!1905 (t!357874 newBucket!178) (_1!28937 (h!56677 newBucket!178)))))))

(declare-fun b!4543452 () Bool)

(assert (=> b!4543452 (= e!2831323 (noDuplicateKeys!1213 (t!357874 newBucket!178)))))

(assert (= (and d!1404735 (not res!1894107)) b!4543451))

(assert (= (and b!4543451 res!1894108) b!4543452))

(declare-fun m!5312495 () Bool)

(assert (=> b!4543451 m!5312495))

(declare-fun m!5312497 () Bool)

(assert (=> b!4543452 m!5312497))

(assert (=> b!4543267 d!1404735))

(declare-fun b!4543457 () Bool)

(declare-fun e!2831326 () Bool)

(declare-fun tp!1338798 () Bool)

(declare-fun tp!1338799 () Bool)

(assert (=> b!4543457 (= e!2831326 (and tp!1338798 tp!1338799))))

(assert (=> b!4543260 (= tp!1338786 e!2831326)))

(assert (= (and b!4543260 (is-Cons!50789 (toList!4433 lm!1477))) b!4543457))

(declare-fun tp!1338802 () Bool)

(declare-fun b!4543462 () Bool)

(declare-fun e!2831329 () Bool)

(assert (=> b!4543462 (= e!2831329 (and tp_is_empty!28129 tp_is_empty!28131 tp!1338802))))

(assert (=> b!4543268 (= tp!1338787 e!2831329)))

(assert (= (and b!4543268 (is-Cons!50788 (t!357874 newBucket!178))) b!4543462))

(declare-fun b_lambda!158261 () Bool)

(assert (= b_lambda!158255 (or start!451218 b_lambda!158261)))

(declare-fun bs!879705 () Bool)

(declare-fun d!1404737 () Bool)

(assert (= bs!879705 (and d!1404737 start!451218)))

(assert (=> bs!879705 (= (dynLambda!21230 lambda!176852 (h!56678 (toList!4433 lm!1477))) (noDuplicateKeys!1213 (_2!28938 (h!56678 (toList!4433 lm!1477)))))))

(declare-fun m!5312499 () Bool)

(assert (=> bs!879705 m!5312499))

(assert (=> b!4543335 d!1404737))

(declare-fun b_lambda!158263 () Bool)

(assert (= b_lambda!158257 (or start!451218 b_lambda!158263)))

(declare-fun bs!879706 () Bool)

(declare-fun d!1404739 () Bool)

(assert (= bs!879706 (and d!1404739 start!451218)))

(assert (=> bs!879706 (= (dynLambda!21230 lambda!176852 lt!1717996) (noDuplicateKeys!1213 (_2!28938 lt!1717996)))))

(declare-fun m!5312501 () Bool)

(assert (=> bs!879706 m!5312501))

(assert (=> d!1404711 d!1404739))

(push 1)

(assert (not b_lambda!158261))

(assert (not b!4543457))

(assert (not bs!879705))

(assert (not d!1404695))

(assert (not b!4543451))

(assert (not b!4543345))

(assert (not d!1404715))

(assert (not d!1404723))

(assert (not bm!316795))

(assert (not b!4543438))

(assert (not bs!879706))

(assert (not d!1404731))

(assert (not d!1404717))

(assert (not b!4543435))

(assert (not b!4543432))

(assert (not b!4543445))

(assert (not d!1404687))

(assert (not b!4543462))

(assert (not b!4543336))

(assert (not d!1404711))

(assert (not d!1404707))

(assert (not b!4543326))

(assert (not b!4543436))

(assert (not d!1404693))

(assert tp_is_empty!28131)

(assert (not d!1404719))

(assert (not b!4543433))

(assert (not d!1404709))

(assert (not b!4543378))

(assert (not b!4543365))

(assert (not d!1404705))

(assert (not b!4543380))

(assert (not b!4543434))

(assert (not d!1404725))

(assert (not b!4543353))

(assert (not b!4543368))

(assert (not b!4543399))

(assert (not d!1404703))

(assert (not b!4543452))

(assert tp_is_empty!28129)

(assert (not b_lambda!158263))

(assert (not b!4543437))

(assert (not b!4543343))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

