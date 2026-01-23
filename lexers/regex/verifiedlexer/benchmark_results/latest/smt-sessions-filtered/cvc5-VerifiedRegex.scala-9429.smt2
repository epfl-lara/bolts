; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498580 () Bool)

(assert start!498580)

(declare-fun res!2049165 () Bool)

(declare-fun e!3009511 () Bool)

(assert (=> start!498580 (=> (not res!2049165) (not e!3009511))))

(declare-datatypes ((K!16432 0))(
  ( (K!16433 (val!21451 Int)) )
))
(declare-datatypes ((V!16678 0))(
  ( (V!16679 (val!21452 Int)) )
))
(declare-datatypes ((tuple2!57838 0))(
  ( (tuple2!57839 (_1!32213 K!16432) (_2!32213 V!16678)) )
))
(declare-datatypes ((List!54898 0))(
  ( (Nil!54774) (Cons!54774 (h!61206 tuple2!57838) (t!362394 List!54898)) )
))
(declare-datatypes ((tuple2!57840 0))(
  ( (tuple2!57841 (_1!32214 (_ BitVec 64)) (_2!32214 List!54898)) )
))
(declare-datatypes ((List!54899 0))(
  ( (Nil!54775) (Cons!54775 (h!61207 tuple2!57840) (t!362395 List!54899)) )
))
(declare-datatypes ((ListLongMap!5817 0))(
  ( (ListLongMap!5818 (toList!7337 List!54899)) )
))
(declare-fun lm!2251 () ListLongMap!5817)

(declare-fun lambda!234737 () Int)

(declare-fun forall!12487 (List!54899 Int) Bool)

(assert (=> start!498580 (= res!2049165 (forall!12487 (toList!7337 lm!2251) lambda!234737))))

(assert (=> start!498580 e!3009511))

(declare-fun e!3009510 () Bool)

(declare-fun inv!70333 (ListLongMap!5817) Bool)

(assert (=> start!498580 (and (inv!70333 lm!2251) e!3009510)))

(assert (=> start!498580 true))

(declare-fun tp_is_empty!34231 () Bool)

(assert (=> start!498580 tp_is_empty!34231))

(declare-fun b!4816912 () Bool)

(declare-fun res!2049166 () Bool)

(assert (=> b!4816912 (=> (not res!2049166) (not e!3009511))))

(declare-fun key!5322 () K!16432)

(declare-datatypes ((ListMap!6751 0))(
  ( (ListMap!6752 (toList!7338 List!54898)) )
))
(declare-fun contains!18599 (ListMap!6751 K!16432) Bool)

(declare-fun extractMap!2627 (List!54899) ListMap!6751)

(assert (=> b!4816912 (= res!2049166 (contains!18599 (extractMap!2627 (toList!7337 lm!2251)) key!5322))))

(declare-fun b!4816913 () Bool)

(declare-fun tp!1361958 () Bool)

(assert (=> b!4816913 (= e!3009510 tp!1361958)))

(declare-fun b!4816914 () Bool)

(declare-datatypes ((Option!13434 0))(
  ( (None!13433) (Some!13433 (v!49092 tuple2!57838)) )
))
(declare-fun lt!1967452 () Option!13434)

(declare-fun isDefined!10552 (Option!13434) Bool)

(assert (=> b!4816914 (= e!3009511 (not (isDefined!10552 lt!1967452)))))

(declare-datatypes ((Unit!142013 0))(
  ( (Unit!142014) )
))
(declare-fun lt!1967445 () Unit!142013)

(declare-fun e!3009512 () Unit!142013)

(assert (=> b!4816914 (= lt!1967445 e!3009512)))

(declare-fun c!820977 () Bool)

(declare-fun isEmpty!29601 (Option!13434) Bool)

(assert (=> b!4816914 (= c!820977 (isEmpty!29601 lt!1967452))))

(declare-fun lt!1967446 () List!54898)

(declare-fun getPair!1015 (List!54898 K!16432) Option!13434)

(assert (=> b!4816914 (= lt!1967452 (getPair!1015 lt!1967446 key!5322))))

(declare-fun lt!1967449 () tuple2!57840)

(declare-fun lt!1967453 () Unit!142013)

(declare-fun forallContained!4347 (List!54899 Int tuple2!57840) Unit!142013)

(assert (=> b!4816914 (= lt!1967453 (forallContained!4347 (toList!7337 lm!2251) lambda!234737 lt!1967449))))

(declare-fun contains!18600 (List!54899 tuple2!57840) Bool)

(assert (=> b!4816914 (contains!18600 (toList!7337 lm!2251) lt!1967449)))

(declare-fun lt!1967450 () (_ BitVec 64))

(assert (=> b!4816914 (= lt!1967449 (tuple2!57841 lt!1967450 lt!1967446))))

(declare-fun lt!1967451 () Unit!142013)

(declare-fun lemmaGetValueImpliesTupleContained!686 (ListLongMap!5817 (_ BitVec 64) List!54898) Unit!142013)

(assert (=> b!4816914 (= lt!1967451 (lemmaGetValueImpliesTupleContained!686 lm!2251 lt!1967450 lt!1967446))))

(declare-fun apply!13280 (ListLongMap!5817 (_ BitVec 64)) List!54898)

(assert (=> b!4816914 (= lt!1967446 (apply!13280 lm!2251 lt!1967450))))

(declare-fun contains!18601 (ListLongMap!5817 (_ BitVec 64)) Bool)

(assert (=> b!4816914 (contains!18601 lm!2251 lt!1967450)))

(declare-datatypes ((Hashable!7177 0))(
  ( (HashableExt!7176 (__x!33452 Int)) )
))
(declare-fun hashF!1486 () Hashable!7177)

(declare-fun hash!5250 (Hashable!7177 K!16432) (_ BitVec 64))

(assert (=> b!4816914 (= lt!1967450 (hash!5250 hashF!1486 key!5322))))

(declare-fun lt!1967448 () Unit!142013)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1113 (ListLongMap!5817 K!16432 Hashable!7177) Unit!142013)

(assert (=> b!4816914 (= lt!1967448 (lemmaInGenMapThenLongMapContainsHash!1113 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4816915 () Bool)

(declare-fun res!2049164 () Bool)

(assert (=> b!4816915 (=> (not res!2049164) (not e!3009511))))

(declare-fun allKeysSameHashInMap!2493 (ListLongMap!5817 Hashable!7177) Bool)

(assert (=> b!4816915 (= res!2049164 (allKeysSameHashInMap!2493 lm!2251 hashF!1486))))

(declare-fun b!4816916 () Bool)

(declare-fun Unit!142015 () Unit!142013)

(assert (=> b!4816916 (= e!3009512 Unit!142015)))

(declare-fun b!4816917 () Bool)

(declare-fun Unit!142016 () Unit!142013)

(assert (=> b!4816917 (= e!3009512 Unit!142016)))

(declare-fun lt!1967447 () Unit!142013)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!441 (ListLongMap!5817 K!16432 Hashable!7177) Unit!142013)

(assert (=> b!4816917 (= lt!1967447 (lemmaNotInItsHashBucketThenNotInMap!441 lm!2251 key!5322 hashF!1486))))

(assert (=> b!4816917 false))

(assert (= (and start!498580 res!2049165) b!4816915))

(assert (= (and b!4816915 res!2049164) b!4816912))

(assert (= (and b!4816912 res!2049166) b!4816914))

(assert (= (and b!4816914 c!820977) b!4816917))

(assert (= (and b!4816914 (not c!820977)) b!4816916))

(assert (= start!498580 b!4816913))

(declare-fun m!5803314 () Bool)

(assert (=> b!4816912 m!5803314))

(assert (=> b!4816912 m!5803314))

(declare-fun m!5803316 () Bool)

(assert (=> b!4816912 m!5803316))

(declare-fun m!5803318 () Bool)

(assert (=> b!4816914 m!5803318))

(declare-fun m!5803320 () Bool)

(assert (=> b!4816914 m!5803320))

(declare-fun m!5803322 () Bool)

(assert (=> b!4816914 m!5803322))

(declare-fun m!5803324 () Bool)

(assert (=> b!4816914 m!5803324))

(declare-fun m!5803326 () Bool)

(assert (=> b!4816914 m!5803326))

(declare-fun m!5803328 () Bool)

(assert (=> b!4816914 m!5803328))

(declare-fun m!5803330 () Bool)

(assert (=> b!4816914 m!5803330))

(declare-fun m!5803332 () Bool)

(assert (=> b!4816914 m!5803332))

(declare-fun m!5803334 () Bool)

(assert (=> b!4816914 m!5803334))

(declare-fun m!5803336 () Bool)

(assert (=> b!4816914 m!5803336))

(declare-fun m!5803338 () Bool)

(assert (=> b!4816915 m!5803338))

(declare-fun m!5803340 () Bool)

(assert (=> b!4816917 m!5803340))

(declare-fun m!5803342 () Bool)

(assert (=> start!498580 m!5803342))

(declare-fun m!5803344 () Bool)

(assert (=> start!498580 m!5803344))

(push 1)

(assert (not b!4816913))

(assert (not start!498580))

(assert (not b!4816912))

(assert (not b!4816915))

(assert tp_is_empty!34231)

(assert (not b!4816914))

(assert (not b!4816917))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1160695 () Bool)

(declare-fun d!1541702 () Bool)

(assert (= bs!1160695 (and d!1541702 start!498580)))

(declare-fun lambda!234745 () Int)

(assert (=> bs!1160695 (not (= lambda!234745 lambda!234737))))

(assert (=> d!1541702 true))

(assert (=> d!1541702 (= (allKeysSameHashInMap!2493 lm!2251 hashF!1486) (forall!12487 (toList!7337 lm!2251) lambda!234745))))

(declare-fun bs!1160696 () Bool)

(assert (= bs!1160696 d!1541702))

(declare-fun m!5803378 () Bool)

(assert (=> bs!1160696 m!5803378))

(assert (=> b!4816915 d!1541702))

(declare-fun d!1541704 () Bool)

(declare-fun res!2049180 () Bool)

(declare-fun e!3009526 () Bool)

(assert (=> d!1541704 (=> res!2049180 e!3009526)))

(assert (=> d!1541704 (= res!2049180 (is-Nil!54775 (toList!7337 lm!2251)))))

(assert (=> d!1541704 (= (forall!12487 (toList!7337 lm!2251) lambda!234737) e!3009526)))

(declare-fun b!4816942 () Bool)

(declare-fun e!3009527 () Bool)

(assert (=> b!4816942 (= e!3009526 e!3009527)))

(declare-fun res!2049181 () Bool)

(assert (=> b!4816942 (=> (not res!2049181) (not e!3009527))))

(declare-fun dynLambda!22165 (Int tuple2!57840) Bool)

(assert (=> b!4816942 (= res!2049181 (dynLambda!22165 lambda!234737 (h!61207 (toList!7337 lm!2251))))))

(declare-fun b!4816943 () Bool)

(assert (=> b!4816943 (= e!3009527 (forall!12487 (t!362395 (toList!7337 lm!2251)) lambda!234737))))

(assert (= (and d!1541704 (not res!2049180)) b!4816942))

(assert (= (and b!4816942 res!2049181) b!4816943))

(declare-fun b_lambda!188505 () Bool)

(assert (=> (not b_lambda!188505) (not b!4816942)))

(declare-fun m!5803380 () Bool)

(assert (=> b!4816942 m!5803380))

(declare-fun m!5803382 () Bool)

(assert (=> b!4816943 m!5803382))

(assert (=> start!498580 d!1541704))

(declare-fun d!1541708 () Bool)

(declare-fun isStrictlySorted!953 (List!54899) Bool)

(assert (=> d!1541708 (= (inv!70333 lm!2251) (isStrictlySorted!953 (toList!7337 lm!2251)))))

(declare-fun bs!1160697 () Bool)

(assert (= bs!1160697 d!1541708))

(declare-fun m!5803384 () Bool)

(assert (=> bs!1160697 m!5803384))

(assert (=> start!498580 d!1541708))

(declare-fun d!1541710 () Bool)

(declare-fun hash!5252 (Hashable!7177 K!16432) (_ BitVec 64))

(assert (=> d!1541710 (= (hash!5250 hashF!1486 key!5322) (hash!5252 hashF!1486 key!5322))))

(declare-fun bs!1160698 () Bool)

(assert (= bs!1160698 d!1541710))

(declare-fun m!5803386 () Bool)

(assert (=> bs!1160698 m!5803386))

(assert (=> b!4816914 d!1541710))

(declare-fun d!1541712 () Bool)

(assert (=> d!1541712 (dynLambda!22165 lambda!234737 lt!1967449)))

(declare-fun lt!1967483 () Unit!142013)

(declare-fun choose!34940 (List!54899 Int tuple2!57840) Unit!142013)

(assert (=> d!1541712 (= lt!1967483 (choose!34940 (toList!7337 lm!2251) lambda!234737 lt!1967449))))

(declare-fun e!3009530 () Bool)

(assert (=> d!1541712 e!3009530))

(declare-fun res!2049184 () Bool)

(assert (=> d!1541712 (=> (not res!2049184) (not e!3009530))))

(assert (=> d!1541712 (= res!2049184 (forall!12487 (toList!7337 lm!2251) lambda!234737))))

(assert (=> d!1541712 (= (forallContained!4347 (toList!7337 lm!2251) lambda!234737 lt!1967449) lt!1967483)))

(declare-fun b!4816946 () Bool)

(assert (=> b!4816946 (= e!3009530 (contains!18600 (toList!7337 lm!2251) lt!1967449))))

(assert (= (and d!1541712 res!2049184) b!4816946))

(declare-fun b_lambda!188507 () Bool)

(assert (=> (not b_lambda!188507) (not d!1541712)))

(declare-fun m!5803388 () Bool)

(assert (=> d!1541712 m!5803388))

(declare-fun m!5803390 () Bool)

(assert (=> d!1541712 m!5803390))

(assert (=> d!1541712 m!5803342))

(assert (=> b!4816946 m!5803332))

(assert (=> b!4816914 d!1541712))

(declare-fun d!1541714 () Bool)

(declare-fun lt!1967486 () Bool)

(declare-fun content!9799 (List!54899) (Set tuple2!57840))

(assert (=> d!1541714 (= lt!1967486 (set.member lt!1967449 (content!9799 (toList!7337 lm!2251))))))

(declare-fun e!3009535 () Bool)

(assert (=> d!1541714 (= lt!1967486 e!3009535)))

(declare-fun res!2049189 () Bool)

(assert (=> d!1541714 (=> (not res!2049189) (not e!3009535))))

(assert (=> d!1541714 (= res!2049189 (is-Cons!54775 (toList!7337 lm!2251)))))

(assert (=> d!1541714 (= (contains!18600 (toList!7337 lm!2251) lt!1967449) lt!1967486)))

(declare-fun b!4816951 () Bool)

(declare-fun e!3009536 () Bool)

(assert (=> b!4816951 (= e!3009535 e!3009536)))

(declare-fun res!2049190 () Bool)

(assert (=> b!4816951 (=> res!2049190 e!3009536)))

(assert (=> b!4816951 (= res!2049190 (= (h!61207 (toList!7337 lm!2251)) lt!1967449))))

(declare-fun b!4816952 () Bool)

(assert (=> b!4816952 (= e!3009536 (contains!18600 (t!362395 (toList!7337 lm!2251)) lt!1967449))))

(assert (= (and d!1541714 res!2049189) b!4816951))

(assert (= (and b!4816951 (not res!2049190)) b!4816952))

(declare-fun m!5803392 () Bool)

(assert (=> d!1541714 m!5803392))

(declare-fun m!5803394 () Bool)

(assert (=> d!1541714 m!5803394))

(declare-fun m!5803396 () Bool)

(assert (=> b!4816952 m!5803396))

(assert (=> b!4816914 d!1541714))

(declare-fun d!1541716 () Bool)

(assert (=> d!1541716 (= (isDefined!10552 lt!1967452) (not (isEmpty!29601 lt!1967452)))))

(declare-fun bs!1160699 () Bool)

(assert (= bs!1160699 d!1541716))

(assert (=> bs!1160699 m!5803328))

(assert (=> b!4816914 d!1541716))

(declare-fun d!1541718 () Bool)

(assert (=> d!1541718 (= (isEmpty!29601 lt!1967452) (not (is-Some!13433 lt!1967452)))))

(assert (=> b!4816914 d!1541718))

(declare-fun d!1541720 () Bool)

(assert (=> d!1541720 (contains!18600 (toList!7337 lm!2251) (tuple2!57841 lt!1967450 lt!1967446))))

(declare-fun lt!1967489 () Unit!142013)

(declare-fun choose!34941 (ListLongMap!5817 (_ BitVec 64) List!54898) Unit!142013)

(assert (=> d!1541720 (= lt!1967489 (choose!34941 lm!2251 lt!1967450 lt!1967446))))

(assert (=> d!1541720 (contains!18601 lm!2251 lt!1967450)))

(assert (=> d!1541720 (= (lemmaGetValueImpliesTupleContained!686 lm!2251 lt!1967450 lt!1967446) lt!1967489)))

(declare-fun bs!1160700 () Bool)

(assert (= bs!1160700 d!1541720))

(declare-fun m!5803398 () Bool)

(assert (=> bs!1160700 m!5803398))

(declare-fun m!5803400 () Bool)

(assert (=> bs!1160700 m!5803400))

(assert (=> bs!1160700 m!5803330))

(assert (=> b!4816914 d!1541720))

(declare-fun b!4816970 () Bool)

(declare-fun e!3009548 () Option!13434)

(assert (=> b!4816970 (= e!3009548 (Some!13433 (h!61206 lt!1967446)))))

(declare-fun b!4816971 () Bool)

(declare-fun e!3009550 () Bool)

(declare-fun e!3009549 () Bool)

(assert (=> b!4816971 (= e!3009550 e!3009549)))

(declare-fun res!2049202 () Bool)

(assert (=> b!4816971 (=> (not res!2049202) (not e!3009549))))

(declare-fun lt!1967492 () Option!13434)

(assert (=> b!4816971 (= res!2049202 (isDefined!10552 lt!1967492))))

(declare-fun b!4816972 () Bool)

(declare-fun contains!18605 (List!54898 tuple2!57838) Bool)

(declare-fun get!18742 (Option!13434) tuple2!57838)

(assert (=> b!4816972 (= e!3009549 (contains!18605 lt!1967446 (get!18742 lt!1967492)))))

(declare-fun b!4816973 () Bool)

(declare-fun res!2049201 () Bool)

(assert (=> b!4816973 (=> (not res!2049201) (not e!3009549))))

(assert (=> b!4816973 (= res!2049201 (= (_1!32213 (get!18742 lt!1967492)) key!5322))))

(declare-fun b!4816974 () Bool)

(declare-fun e!3009551 () Option!13434)

(assert (=> b!4816974 (= e!3009551 (getPair!1015 (t!362394 lt!1967446) key!5322))))

(declare-fun b!4816975 () Bool)

(assert (=> b!4816975 (= e!3009548 e!3009551)))

(declare-fun c!820986 () Bool)

(assert (=> b!4816975 (= c!820986 (is-Cons!54774 lt!1967446))))

(declare-fun b!4816976 () Bool)

(declare-fun e!3009547 () Bool)

(declare-fun containsKey!4248 (List!54898 K!16432) Bool)

(assert (=> b!4816976 (= e!3009547 (not (containsKey!4248 lt!1967446 key!5322)))))

(declare-fun d!1541722 () Bool)

(assert (=> d!1541722 e!3009550))

(declare-fun res!2049200 () Bool)

(assert (=> d!1541722 (=> res!2049200 e!3009550)))

(assert (=> d!1541722 (= res!2049200 e!3009547)))

(declare-fun res!2049199 () Bool)

(assert (=> d!1541722 (=> (not res!2049199) (not e!3009547))))

(assert (=> d!1541722 (= res!2049199 (isEmpty!29601 lt!1967492))))

(assert (=> d!1541722 (= lt!1967492 e!3009548)))

(declare-fun c!820985 () Bool)

(assert (=> d!1541722 (= c!820985 (and (is-Cons!54774 lt!1967446) (= (_1!32213 (h!61206 lt!1967446)) key!5322)))))

(declare-fun noDuplicateKeys!2411 (List!54898) Bool)

(assert (=> d!1541722 (noDuplicateKeys!2411 lt!1967446)))

(assert (=> d!1541722 (= (getPair!1015 lt!1967446 key!5322) lt!1967492)))

(declare-fun b!4816977 () Bool)

(assert (=> b!4816977 (= e!3009551 None!13433)))

(assert (= (and d!1541722 c!820985) b!4816970))

(assert (= (and d!1541722 (not c!820985)) b!4816975))

(assert (= (and b!4816975 c!820986) b!4816974))

(assert (= (and b!4816975 (not c!820986)) b!4816977))

(assert (= (and d!1541722 res!2049199) b!4816976))

(assert (= (and d!1541722 (not res!2049200)) b!4816971))

(assert (= (and b!4816971 res!2049202) b!4816973))

(assert (= (and b!4816973 res!2049201) b!4816972))

(declare-fun m!5803402 () Bool)

(assert (=> b!4816974 m!5803402))

(declare-fun m!5803404 () Bool)

(assert (=> d!1541722 m!5803404))

(declare-fun m!5803406 () Bool)

(assert (=> d!1541722 m!5803406))

(declare-fun m!5803408 () Bool)

(assert (=> b!4816976 m!5803408))

(declare-fun m!5803410 () Bool)

(assert (=> b!4816972 m!5803410))

(assert (=> b!4816972 m!5803410))

(declare-fun m!5803412 () Bool)

(assert (=> b!4816972 m!5803412))

(declare-fun m!5803414 () Bool)

(assert (=> b!4816971 m!5803414))

(assert (=> b!4816973 m!5803410))

(assert (=> b!4816914 d!1541722))

(declare-fun d!1541724 () Bool)

(declare-fun e!3009557 () Bool)

(assert (=> d!1541724 e!3009557))

(declare-fun res!2049205 () Bool)

(assert (=> d!1541724 (=> res!2049205 e!3009557)))

(declare-fun lt!1967503 () Bool)

(assert (=> d!1541724 (= res!2049205 (not lt!1967503))))

(declare-fun lt!1967501 () Bool)

(assert (=> d!1541724 (= lt!1967503 lt!1967501)))

(declare-fun lt!1967502 () Unit!142013)

(declare-fun e!3009556 () Unit!142013)

(assert (=> d!1541724 (= lt!1967502 e!3009556)))

(declare-fun c!820989 () Bool)

(assert (=> d!1541724 (= c!820989 lt!1967501)))

(declare-fun containsKey!4249 (List!54899 (_ BitVec 64)) Bool)

(assert (=> d!1541724 (= lt!1967501 (containsKey!4249 (toList!7337 lm!2251) lt!1967450))))

(assert (=> d!1541724 (= (contains!18601 lm!2251 lt!1967450) lt!1967503)))

(declare-fun b!4816984 () Bool)

(declare-fun lt!1967504 () Unit!142013)

(assert (=> b!4816984 (= e!3009556 lt!1967504)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2353 (List!54899 (_ BitVec 64)) Unit!142013)

(assert (=> b!4816984 (= lt!1967504 (lemmaContainsKeyImpliesGetValueByKeyDefined!2353 (toList!7337 lm!2251) lt!1967450))))

(declare-datatypes ((Option!13436 0))(
  ( (None!13435) (Some!13435 (v!49095 List!54898)) )
))
(declare-fun isDefined!10554 (Option!13436) Bool)

(declare-fun getValueByKey!2567 (List!54899 (_ BitVec 64)) Option!13436)

(assert (=> b!4816984 (isDefined!10554 (getValueByKey!2567 (toList!7337 lm!2251) lt!1967450))))

(declare-fun b!4816985 () Bool)

(declare-fun Unit!142021 () Unit!142013)

(assert (=> b!4816985 (= e!3009556 Unit!142021)))

(declare-fun b!4816986 () Bool)

(assert (=> b!4816986 (= e!3009557 (isDefined!10554 (getValueByKey!2567 (toList!7337 lm!2251) lt!1967450)))))

(assert (= (and d!1541724 c!820989) b!4816984))

(assert (= (and d!1541724 (not c!820989)) b!4816985))

(assert (= (and d!1541724 (not res!2049205)) b!4816986))

(declare-fun m!5803416 () Bool)

(assert (=> d!1541724 m!5803416))

(declare-fun m!5803418 () Bool)

(assert (=> b!4816984 m!5803418))

(declare-fun m!5803420 () Bool)

(assert (=> b!4816984 m!5803420))

(assert (=> b!4816984 m!5803420))

(declare-fun m!5803422 () Bool)

(assert (=> b!4816984 m!5803422))

(assert (=> b!4816986 m!5803420))

(assert (=> b!4816986 m!5803420))

(assert (=> b!4816986 m!5803422))

(assert (=> b!4816914 d!1541724))

(declare-fun d!1541726 () Bool)

(declare-fun get!18743 (Option!13436) List!54898)

(assert (=> d!1541726 (= (apply!13280 lm!2251 lt!1967450) (get!18743 (getValueByKey!2567 (toList!7337 lm!2251) lt!1967450)))))

(declare-fun bs!1160701 () Bool)

(assert (= bs!1160701 d!1541726))

(assert (=> bs!1160701 m!5803420))

(assert (=> bs!1160701 m!5803420))

(declare-fun m!5803424 () Bool)

(assert (=> bs!1160701 m!5803424))

(assert (=> b!4816914 d!1541726))

(declare-fun bs!1160702 () Bool)

(declare-fun d!1541728 () Bool)

(assert (= bs!1160702 (and d!1541728 start!498580)))

(declare-fun lambda!234750 () Int)

(assert (=> bs!1160702 (= lambda!234750 lambda!234737)))

(declare-fun bs!1160703 () Bool)

(assert (= bs!1160703 (and d!1541728 d!1541702)))

(assert (=> bs!1160703 (not (= lambda!234750 lambda!234745))))

(assert (=> d!1541728 (contains!18601 lm!2251 (hash!5250 hashF!1486 key!5322))))

(declare-fun lt!1967510 () Unit!142013)

(declare-fun choose!34942 (ListLongMap!5817 K!16432 Hashable!7177) Unit!142013)

(assert (=> d!1541728 (= lt!1967510 (choose!34942 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541728 (forall!12487 (toList!7337 lm!2251) lambda!234750)))

(assert (=> d!1541728 (= (lemmaInGenMapThenLongMapContainsHash!1113 lm!2251 key!5322 hashF!1486) lt!1967510)))

(declare-fun bs!1160705 () Bool)

(assert (= bs!1160705 d!1541728))

(assert (=> bs!1160705 m!5803336))

(assert (=> bs!1160705 m!5803336))

(declare-fun m!5803426 () Bool)

(assert (=> bs!1160705 m!5803426))

(declare-fun m!5803428 () Bool)

(assert (=> bs!1160705 m!5803428))

(declare-fun m!5803430 () Bool)

(assert (=> bs!1160705 m!5803430))

(assert (=> b!4816914 d!1541728))

(declare-fun b!4817011 () Bool)

(declare-fun e!3009578 () Bool)

(declare-datatypes ((List!54902 0))(
  ( (Nil!54778) (Cons!54778 (h!61210 K!16432) (t!362398 List!54902)) )
))
(declare-fun contains!18606 (List!54902 K!16432) Bool)

(declare-fun keys!20116 (ListMap!6751) List!54902)

(assert (=> b!4817011 (= e!3009578 (not (contains!18606 (keys!20116 (extractMap!2627 (toList!7337 lm!2251))) key!5322)))))

(declare-fun b!4817012 () Bool)

(declare-fun e!3009581 () Unit!142013)

(declare-fun lt!1967530 () Unit!142013)

(assert (=> b!4817012 (= e!3009581 lt!1967530)))

(declare-fun lt!1967527 () Unit!142013)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2354 (List!54898 K!16432) Unit!142013)

(assert (=> b!4817012 (= lt!1967527 (lemmaContainsKeyImpliesGetValueByKeyDefined!2354 (toList!7338 (extractMap!2627 (toList!7337 lm!2251))) key!5322))))

(declare-datatypes ((Option!13437 0))(
  ( (None!13436) (Some!13436 (v!49096 V!16678)) )
))
(declare-fun isDefined!10555 (Option!13437) Bool)

(declare-fun getValueByKey!2568 (List!54898 K!16432) Option!13437)

(assert (=> b!4817012 (isDefined!10555 (getValueByKey!2568 (toList!7338 (extractMap!2627 (toList!7337 lm!2251))) key!5322))))

(declare-fun lt!1967531 () Unit!142013)

(assert (=> b!4817012 (= lt!1967531 lt!1967527)))

(declare-fun lemmaInListThenGetKeysListContains!1134 (List!54898 K!16432) Unit!142013)

(assert (=> b!4817012 (= lt!1967530 (lemmaInListThenGetKeysListContains!1134 (toList!7338 (extractMap!2627 (toList!7337 lm!2251))) key!5322))))

(declare-fun call!336001 () Bool)

(assert (=> b!4817012 call!336001))

(declare-fun b!4817013 () Bool)

(declare-fun e!3009576 () Unit!142013)

(declare-fun Unit!142022 () Unit!142013)

(assert (=> b!4817013 (= e!3009576 Unit!142022)))

(declare-fun d!1541730 () Bool)

(declare-fun e!3009580 () Bool)

(assert (=> d!1541730 e!3009580))

(declare-fun res!2049220 () Bool)

(assert (=> d!1541730 (=> res!2049220 e!3009580)))

(assert (=> d!1541730 (= res!2049220 e!3009578)))

(declare-fun res!2049218 () Bool)

(assert (=> d!1541730 (=> (not res!2049218) (not e!3009578))))

(declare-fun lt!1967534 () Bool)

(assert (=> d!1541730 (= res!2049218 (not lt!1967534))))

(declare-fun lt!1967533 () Bool)

(assert (=> d!1541730 (= lt!1967534 lt!1967533)))

(declare-fun lt!1967532 () Unit!142013)

(assert (=> d!1541730 (= lt!1967532 e!3009581)))

(declare-fun c!820997 () Bool)

(assert (=> d!1541730 (= c!820997 lt!1967533)))

(declare-fun containsKey!4250 (List!54898 K!16432) Bool)

(assert (=> d!1541730 (= lt!1967533 (containsKey!4250 (toList!7338 (extractMap!2627 (toList!7337 lm!2251))) key!5322))))

(assert (=> d!1541730 (= (contains!18599 (extractMap!2627 (toList!7337 lm!2251)) key!5322) lt!1967534)))

(declare-fun b!4817014 () Bool)

(declare-fun e!3009577 () List!54902)

(assert (=> b!4817014 (= e!3009577 (keys!20116 (extractMap!2627 (toList!7337 lm!2251))))))

(declare-fun b!4817015 () Bool)

(declare-fun e!3009579 () Bool)

(assert (=> b!4817015 (= e!3009580 e!3009579)))

(declare-fun res!2049219 () Bool)

(assert (=> b!4817015 (=> (not res!2049219) (not e!3009579))))

(assert (=> b!4817015 (= res!2049219 (isDefined!10555 (getValueByKey!2568 (toList!7338 (extractMap!2627 (toList!7337 lm!2251))) key!5322)))))

(declare-fun b!4817016 () Bool)

(assert (=> b!4817016 (= e!3009579 (contains!18606 (keys!20116 (extractMap!2627 (toList!7337 lm!2251))) key!5322))))

(declare-fun bm!335996 () Bool)

(assert (=> bm!335996 (= call!336001 (contains!18606 e!3009577 key!5322))))

(declare-fun c!820996 () Bool)

(assert (=> bm!335996 (= c!820996 c!820997)))

(declare-fun b!4817017 () Bool)

(assert (=> b!4817017 false))

(declare-fun lt!1967528 () Unit!142013)

(declare-fun lt!1967529 () Unit!142013)

(assert (=> b!4817017 (= lt!1967528 lt!1967529)))

(assert (=> b!4817017 (containsKey!4250 (toList!7338 (extractMap!2627 (toList!7337 lm!2251))) key!5322)))

(declare-fun lemmaInGetKeysListThenContainsKey!1139 (List!54898 K!16432) Unit!142013)

(assert (=> b!4817017 (= lt!1967529 (lemmaInGetKeysListThenContainsKey!1139 (toList!7338 (extractMap!2627 (toList!7337 lm!2251))) key!5322))))

(declare-fun Unit!142023 () Unit!142013)

(assert (=> b!4817017 (= e!3009576 Unit!142023)))

(declare-fun b!4817018 () Bool)

(assert (=> b!4817018 (= e!3009581 e!3009576)))

(declare-fun c!820998 () Bool)

(assert (=> b!4817018 (= c!820998 call!336001)))

(declare-fun b!4817019 () Bool)

(declare-fun getKeysList!1139 (List!54898) List!54902)

(assert (=> b!4817019 (= e!3009577 (getKeysList!1139 (toList!7338 (extractMap!2627 (toList!7337 lm!2251)))))))

(assert (= (and d!1541730 c!820997) b!4817012))

(assert (= (and d!1541730 (not c!820997)) b!4817018))

(assert (= (and b!4817018 c!820998) b!4817017))

(assert (= (and b!4817018 (not c!820998)) b!4817013))

(assert (= (or b!4817012 b!4817018) bm!335996))

(assert (= (and bm!335996 c!820996) b!4817019))

(assert (= (and bm!335996 (not c!820996)) b!4817014))

(assert (= (and d!1541730 res!2049218) b!4817011))

(assert (= (and d!1541730 (not res!2049220)) b!4817015))

(assert (= (and b!4817015 res!2049219) b!4817016))

(declare-fun m!5803442 () Bool)

(assert (=> b!4817012 m!5803442))

(declare-fun m!5803444 () Bool)

(assert (=> b!4817012 m!5803444))

(assert (=> b!4817012 m!5803444))

(declare-fun m!5803446 () Bool)

(assert (=> b!4817012 m!5803446))

(declare-fun m!5803448 () Bool)

(assert (=> b!4817012 m!5803448))

(assert (=> b!4817016 m!5803314))

(declare-fun m!5803450 () Bool)

(assert (=> b!4817016 m!5803450))

(assert (=> b!4817016 m!5803450))

(declare-fun m!5803452 () Bool)

(assert (=> b!4817016 m!5803452))

(declare-fun m!5803454 () Bool)

(assert (=> b!4817019 m!5803454))

(assert (=> b!4817014 m!5803314))

(assert (=> b!4817014 m!5803450))

(assert (=> b!4817015 m!5803444))

(assert (=> b!4817015 m!5803444))

(assert (=> b!4817015 m!5803446))

(declare-fun m!5803456 () Bool)

(assert (=> d!1541730 m!5803456))

(assert (=> b!4817011 m!5803314))

(assert (=> b!4817011 m!5803450))

(assert (=> b!4817011 m!5803450))

(assert (=> b!4817011 m!5803452))

(declare-fun m!5803458 () Bool)

(assert (=> bm!335996 m!5803458))

(assert (=> b!4817017 m!5803456))

(declare-fun m!5803460 () Bool)

(assert (=> b!4817017 m!5803460))

(assert (=> b!4816912 d!1541730))

(declare-fun bs!1160708 () Bool)

(declare-fun d!1541738 () Bool)

(assert (= bs!1160708 (and d!1541738 start!498580)))

(declare-fun lambda!234754 () Int)

(assert (=> bs!1160708 (= lambda!234754 lambda!234737)))

(declare-fun bs!1160709 () Bool)

(assert (= bs!1160709 (and d!1541738 d!1541702)))

(assert (=> bs!1160709 (not (= lambda!234754 lambda!234745))))

(declare-fun bs!1160710 () Bool)

(assert (= bs!1160710 (and d!1541738 d!1541728)))

(assert (=> bs!1160710 (= lambda!234754 lambda!234750)))

(declare-fun lt!1967537 () ListMap!6751)

(declare-fun invariantList!1792 (List!54898) Bool)

(assert (=> d!1541738 (invariantList!1792 (toList!7338 lt!1967537))))

(declare-fun e!3009584 () ListMap!6751)

(assert (=> d!1541738 (= lt!1967537 e!3009584)))

(declare-fun c!821001 () Bool)

(assert (=> d!1541738 (= c!821001 (is-Cons!54775 (toList!7337 lm!2251)))))

(assert (=> d!1541738 (forall!12487 (toList!7337 lm!2251) lambda!234754)))

(assert (=> d!1541738 (= (extractMap!2627 (toList!7337 lm!2251)) lt!1967537)))

(declare-fun b!4817024 () Bool)

(declare-fun addToMapMapFromBucket!1769 (List!54898 ListMap!6751) ListMap!6751)

(assert (=> b!4817024 (= e!3009584 (addToMapMapFromBucket!1769 (_2!32214 (h!61207 (toList!7337 lm!2251))) (extractMap!2627 (t!362395 (toList!7337 lm!2251)))))))

(declare-fun b!4817025 () Bool)

(assert (=> b!4817025 (= e!3009584 (ListMap!6752 Nil!54774))))

(assert (= (and d!1541738 c!821001) b!4817024))

(assert (= (and d!1541738 (not c!821001)) b!4817025))

(declare-fun m!5803462 () Bool)

(assert (=> d!1541738 m!5803462))

(declare-fun m!5803464 () Bool)

(assert (=> d!1541738 m!5803464))

(declare-fun m!5803466 () Bool)

(assert (=> b!4817024 m!5803466))

(assert (=> b!4817024 m!5803466))

(declare-fun m!5803468 () Bool)

(assert (=> b!4817024 m!5803468))

(assert (=> b!4816912 d!1541738))

(declare-fun bs!1160711 () Bool)

(declare-fun d!1541740 () Bool)

(assert (= bs!1160711 (and d!1541740 start!498580)))

(declare-fun lambda!234757 () Int)

(assert (=> bs!1160711 (= lambda!234757 lambda!234737)))

(declare-fun bs!1160712 () Bool)

(assert (= bs!1160712 (and d!1541740 d!1541702)))

(assert (=> bs!1160712 (not (= lambda!234757 lambda!234745))))

(declare-fun bs!1160713 () Bool)

(assert (= bs!1160713 (and d!1541740 d!1541728)))

(assert (=> bs!1160713 (= lambda!234757 lambda!234750)))

(declare-fun bs!1160714 () Bool)

(assert (= bs!1160714 (and d!1541740 d!1541738)))

(assert (=> bs!1160714 (= lambda!234757 lambda!234754)))

(assert (=> d!1541740 (not (contains!18599 (extractMap!2627 (toList!7337 lm!2251)) key!5322))))

(declare-fun lt!1967540 () Unit!142013)

(declare-fun choose!34943 (ListLongMap!5817 K!16432 Hashable!7177) Unit!142013)

(assert (=> d!1541740 (= lt!1967540 (choose!34943 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541740 (forall!12487 (toList!7337 lm!2251) lambda!234757)))

(assert (=> d!1541740 (= (lemmaNotInItsHashBucketThenNotInMap!441 lm!2251 key!5322 hashF!1486) lt!1967540)))

(declare-fun bs!1160715 () Bool)

(assert (= bs!1160715 d!1541740))

(assert (=> bs!1160715 m!5803314))

(assert (=> bs!1160715 m!5803314))

(assert (=> bs!1160715 m!5803316))

(declare-fun m!5803470 () Bool)

(assert (=> bs!1160715 m!5803470))

(declare-fun m!5803472 () Bool)

(assert (=> bs!1160715 m!5803472))

(assert (=> b!4816917 d!1541740))

(declare-fun b!4817030 () Bool)

(declare-fun e!3009587 () Bool)

(declare-fun tp!1361966 () Bool)

(declare-fun tp!1361967 () Bool)

(assert (=> b!4817030 (= e!3009587 (and tp!1361966 tp!1361967))))

(assert (=> b!4816913 (= tp!1361958 e!3009587)))

(assert (= (and b!4816913 (is-Cons!54775 (toList!7337 lm!2251))) b!4817030))

(declare-fun b_lambda!188511 () Bool)

(assert (= b_lambda!188505 (or start!498580 b_lambda!188511)))

(declare-fun bs!1160716 () Bool)

(declare-fun d!1541742 () Bool)

(assert (= bs!1160716 (and d!1541742 start!498580)))

(assert (=> bs!1160716 (= (dynLambda!22165 lambda!234737 (h!61207 (toList!7337 lm!2251))) (noDuplicateKeys!2411 (_2!32214 (h!61207 (toList!7337 lm!2251)))))))

(declare-fun m!5803474 () Bool)

(assert (=> bs!1160716 m!5803474))

(assert (=> b!4816942 d!1541742))

(declare-fun b_lambda!188513 () Bool)

(assert (= b_lambda!188507 (or start!498580 b_lambda!188513)))

(declare-fun bs!1160717 () Bool)

(declare-fun d!1541744 () Bool)

(assert (= bs!1160717 (and d!1541744 start!498580)))

(assert (=> bs!1160717 (= (dynLambda!22165 lambda!234737 lt!1967449) (noDuplicateKeys!2411 (_2!32214 lt!1967449)))))

(declare-fun m!5803476 () Bool)

(assert (=> bs!1160717 m!5803476))

(assert (=> d!1541712 d!1541744))

(push 1)

(assert (not bs!1160717))

(assert (not b!4817016))

(assert (not b!4817017))

(assert (not b!4817019))

(assert (not d!1541740))

(assert (not d!1541702))

(assert tp_is_empty!34231)

(assert (not b!4817011))

(assert (not d!1541710))

(assert (not b!4817014))

(assert (not b!4817012))

(assert (not b!4816974))

(assert (not b_lambda!188513))

(assert (not d!1541722))

(assert (not bs!1160716))

(assert (not d!1541708))

(assert (not d!1541728))

(assert (not d!1541730))

(assert (not b!4817024))

(assert (not b!4816986))

(assert (not b!4816976))

(assert (not d!1541716))

(assert (not b!4816952))

(assert (not d!1541726))

(assert (not b!4816984))

(assert (not b!4816971))

(assert (not b!4817030))

(assert (not d!1541720))

(assert (not bm!335996))

(assert (not b!4817015))

(assert (not b_lambda!188511))

(assert (not d!1541738))

(assert (not b!4816943))

(assert (not b!4816946))

(assert (not d!1541714))

(assert (not b!4816972))

(assert (not b!4816973))

(assert (not d!1541724))

(assert (not d!1541712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

