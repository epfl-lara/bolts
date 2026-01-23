; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!498140 () Bool)

(assert start!498140)

(declare-fun res!2048215 () Bool)

(declare-fun e!3008413 () Bool)

(assert (=> start!498140 (=> (not res!2048215) (not e!3008413))))

(declare-datatypes ((K!16347 0))(
  ( (K!16348 (val!21383 Int)) )
))
(declare-datatypes ((V!16593 0))(
  ( (V!16594 (val!21384 Int)) )
))
(declare-datatypes ((tuple2!57702 0))(
  ( (tuple2!57703 (_1!32145 K!16347) (_2!32145 V!16593)) )
))
(declare-datatypes ((List!54823 0))(
  ( (Nil!54699) (Cons!54699 (h!61131 tuple2!57702) (t!362319 List!54823)) )
))
(declare-datatypes ((tuple2!57704 0))(
  ( (tuple2!57705 (_1!32146 (_ BitVec 64)) (_2!32146 List!54823)) )
))
(declare-datatypes ((List!54824 0))(
  ( (Nil!54700) (Cons!54700 (h!61132 tuple2!57704) (t!362320 List!54824)) )
))
(declare-datatypes ((ListLongMap!5749 0))(
  ( (ListLongMap!5750 (toList!7269 List!54824)) )
))
(declare-fun lm!2251 () ListLongMap!5749)

(declare-fun lambda!234333 () Int)

(declare-fun forall!12449 (List!54824 Int) Bool)

(assert (=> start!498140 (= res!2048215 (forall!12449 (toList!7269 lm!2251) lambda!234333))))

(assert (=> start!498140 e!3008413))

(declare-fun e!3008412 () Bool)

(declare-fun inv!70248 (ListLongMap!5749) Bool)

(assert (=> start!498140 (and (inv!70248 lm!2251) e!3008412)))

(assert (=> start!498140 true))

(declare-fun tp_is_empty!34159 () Bool)

(assert (=> start!498140 tp_is_empty!34159))

(declare-fun b!4815160 () Bool)

(declare-fun res!2048214 () Bool)

(assert (=> b!4815160 (=> (not res!2048214) (not e!3008413))))

(declare-datatypes ((Hashable!7143 0))(
  ( (HashableExt!7142 (__x!33418 Int)) )
))
(declare-fun hashF!1486 () Hashable!7143)

(declare-fun allKeysSameHashInMap!2459 (ListLongMap!5749 Hashable!7143) Bool)

(assert (=> b!4815160 (= res!2048214 (allKeysSameHashInMap!2459 lm!2251 hashF!1486))))

(declare-fun b!4815162 () Bool)

(declare-fun lt!1965994 () List!54823)

(declare-fun noDuplicateKeys!2402 (List!54823) Bool)

(assert (=> b!4815162 (= e!3008413 (not (noDuplicateKeys!2402 lt!1965994)))))

(declare-fun lt!1965997 () tuple2!57704)

(declare-datatypes ((Unit!141864 0))(
  ( (Unit!141865) )
))
(declare-fun lt!1965998 () Unit!141864)

(declare-fun forallContained!4311 (List!54824 Int tuple2!57704) Unit!141864)

(assert (=> b!4815162 (= lt!1965998 (forallContained!4311 (toList!7269 lm!2251) lambda!234333 lt!1965997))))

(declare-fun contains!18490 (List!54824 tuple2!57704) Bool)

(assert (=> b!4815162 (contains!18490 (toList!7269 lm!2251) lt!1965997)))

(declare-fun lt!1965993 () (_ BitVec 64))

(assert (=> b!4815162 (= lt!1965997 (tuple2!57705 lt!1965993 lt!1965994))))

(declare-fun lt!1965995 () Unit!141864)

(declare-fun lemmaGetValueImpliesTupleContained!654 (ListLongMap!5749 (_ BitVec 64) List!54823) Unit!141864)

(assert (=> b!4815162 (= lt!1965995 (lemmaGetValueImpliesTupleContained!654 lm!2251 lt!1965993 lt!1965994))))

(declare-fun apply!13248 (ListLongMap!5749 (_ BitVec 64)) List!54823)

(assert (=> b!4815162 (= lt!1965994 (apply!13248 lm!2251 lt!1965993))))

(declare-fun contains!18491 (ListLongMap!5749 (_ BitVec 64)) Bool)

(assert (=> b!4815162 (contains!18491 lm!2251 lt!1965993)))

(declare-fun key!5322 () K!16347)

(declare-fun hash!5212 (Hashable!7143 K!16347) (_ BitVec 64))

(assert (=> b!4815162 (= lt!1965993 (hash!5212 hashF!1486 key!5322))))

(declare-fun lt!1965996 () Unit!141864)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1081 (ListLongMap!5749 K!16347 Hashable!7143) Unit!141864)

(assert (=> b!4815162 (= lt!1965996 (lemmaInGenMapThenLongMapContainsHash!1081 lm!2251 key!5322 hashF!1486))))

(declare-fun b!4815161 () Bool)

(declare-fun res!2048216 () Bool)

(assert (=> b!4815161 (=> (not res!2048216) (not e!3008413))))

(declare-datatypes ((ListMap!6683 0))(
  ( (ListMap!6684 (toList!7270 List!54823)) )
))
(declare-fun contains!18492 (ListMap!6683 K!16347) Bool)

(declare-fun extractMap!2593 (List!54824) ListMap!6683)

(assert (=> b!4815161 (= res!2048216 (contains!18492 (extractMap!2593 (toList!7269 lm!2251)) key!5322))))

(declare-fun b!4815163 () Bool)

(declare-fun tp!1361786 () Bool)

(assert (=> b!4815163 (= e!3008412 tp!1361786)))

(assert (= (and start!498140 res!2048215) b!4815160))

(assert (= (and b!4815160 res!2048214) b!4815161))

(assert (= (and b!4815161 res!2048216) b!4815162))

(assert (= start!498140 b!4815163))

(declare-fun m!5801178 () Bool)

(assert (=> start!498140 m!5801178))

(declare-fun m!5801180 () Bool)

(assert (=> start!498140 m!5801180))

(declare-fun m!5801182 () Bool)

(assert (=> b!4815160 m!5801182))

(declare-fun m!5801184 () Bool)

(assert (=> b!4815162 m!5801184))

(declare-fun m!5801186 () Bool)

(assert (=> b!4815162 m!5801186))

(declare-fun m!5801188 () Bool)

(assert (=> b!4815162 m!5801188))

(declare-fun m!5801190 () Bool)

(assert (=> b!4815162 m!5801190))

(declare-fun m!5801192 () Bool)

(assert (=> b!4815162 m!5801192))

(declare-fun m!5801194 () Bool)

(assert (=> b!4815162 m!5801194))

(declare-fun m!5801196 () Bool)

(assert (=> b!4815162 m!5801196))

(declare-fun m!5801198 () Bool)

(assert (=> b!4815162 m!5801198))

(declare-fun m!5801200 () Bool)

(assert (=> b!4815161 m!5801200))

(assert (=> b!4815161 m!5801200))

(declare-fun m!5801202 () Bool)

(assert (=> b!4815161 m!5801202))

(push 1)

(assert (not start!498140))

(assert (not b!4815160))

(assert tp_is_empty!34159)

(assert (not b!4815161))

(assert (not b!4815162))

(assert (not b!4815163))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1160459 () Bool)

(declare-fun d!1541207 () Bool)

(assert (= bs!1160459 (and d!1541207 start!498140)))

(declare-fun lambda!234341 () Int)

(assert (=> bs!1160459 (not (= lambda!234341 lambda!234333))))

(assert (=> d!1541207 true))

(assert (=> d!1541207 (= (allKeysSameHashInMap!2459 lm!2251 hashF!1486) (forall!12449 (toList!7269 lm!2251) lambda!234341))))

(declare-fun bs!1160460 () Bool)

(assert (= bs!1160460 d!1541207))

(declare-fun m!5801230 () Bool)

(assert (=> bs!1160460 m!5801230))

(assert (=> b!4815160 d!1541207))

(declare-fun b!4815202 () Bool)

(declare-datatypes ((List!54827 0))(
  ( (Nil!54703) (Cons!54703 (h!61135 K!16347) (t!362323 List!54827)) )
))
(declare-fun e!3008441 () List!54827)

(declare-fun getKeysList!1132 (List!54823) List!54827)

(assert (=> b!4815202 (= e!3008441 (getKeysList!1132 (toList!7270 (extractMap!2593 (toList!7269 lm!2251)))))))

(declare-fun b!4815203 () Bool)

(assert (=> b!4815203 false))

(declare-fun lt!1966039 () Unit!141864)

(declare-fun lt!1966038 () Unit!141864)

(assert (=> b!4815203 (= lt!1966039 lt!1966038)))

(declare-fun containsKey!4226 (List!54823 K!16347) Bool)

(assert (=> b!4815203 (containsKey!4226 (toList!7270 (extractMap!2593 (toList!7269 lm!2251))) key!5322)))

(declare-fun lemmaInGetKeysListThenContainsKey!1132 (List!54823 K!16347) Unit!141864)

(assert (=> b!4815203 (= lt!1966038 (lemmaInGetKeysListThenContainsKey!1132 (toList!7270 (extractMap!2593 (toList!7269 lm!2251))) key!5322))))

(declare-fun e!3008443 () Unit!141864)

(declare-fun Unit!141868 () Unit!141864)

(assert (=> b!4815203 (= e!3008443 Unit!141868)))

(declare-fun b!4815204 () Bool)

(declare-fun e!3008439 () Bool)

(declare-fun contains!18496 (List!54827 K!16347) Bool)

(declare-fun keys!20075 (ListMap!6683) List!54827)

(assert (=> b!4815204 (= e!3008439 (contains!18496 (keys!20075 (extractMap!2593 (toList!7269 lm!2251))) key!5322))))

(declare-fun b!4815205 () Bool)

(declare-fun e!3008442 () Unit!141864)

(declare-fun lt!1966036 () Unit!141864)

(assert (=> b!4815205 (= e!3008442 lt!1966036)))

(declare-fun lt!1966040 () Unit!141864)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2341 (List!54823 K!16347) Unit!141864)

(assert (=> b!4815205 (= lt!1966040 (lemmaContainsKeyImpliesGetValueByKeyDefined!2341 (toList!7270 (extractMap!2593 (toList!7269 lm!2251))) key!5322))))

(declare-datatypes ((Option!13392 0))(
  ( (None!13391) (Some!13391 (v!49039 V!16593)) )
))
(declare-fun isDefined!10529 (Option!13392) Bool)

(declare-fun getValueByKey!2555 (List!54823 K!16347) Option!13392)

(assert (=> b!4815205 (isDefined!10529 (getValueByKey!2555 (toList!7270 (extractMap!2593 (toList!7269 lm!2251))) key!5322))))

(declare-fun lt!1966037 () Unit!141864)

(assert (=> b!4815205 (= lt!1966037 lt!1966040)))

(declare-fun lemmaInListThenGetKeysListContains!1127 (List!54823 K!16347) Unit!141864)

(assert (=> b!4815205 (= lt!1966036 (lemmaInListThenGetKeysListContains!1127 (toList!7270 (extractMap!2593 (toList!7269 lm!2251))) key!5322))))

(declare-fun call!335953 () Bool)

(assert (=> b!4815205 call!335953))

(declare-fun b!4815206 () Bool)

(assert (=> b!4815206 (= e!3008441 (keys!20075 (extractMap!2593 (toList!7269 lm!2251))))))

(declare-fun d!1541209 () Bool)

(declare-fun e!3008440 () Bool)

(assert (=> d!1541209 e!3008440))

(declare-fun res!2048238 () Bool)

(assert (=> d!1541209 (=> res!2048238 e!3008440)))

(declare-fun e!3008438 () Bool)

(assert (=> d!1541209 (= res!2048238 e!3008438)))

(declare-fun res!2048240 () Bool)

(assert (=> d!1541209 (=> (not res!2048240) (not e!3008438))))

(declare-fun lt!1966034 () Bool)

(assert (=> d!1541209 (= res!2048240 (not lt!1966034))))

(declare-fun lt!1966033 () Bool)

(assert (=> d!1541209 (= lt!1966034 lt!1966033)))

(declare-fun lt!1966035 () Unit!141864)

(assert (=> d!1541209 (= lt!1966035 e!3008442)))

(declare-fun c!820685 () Bool)

(assert (=> d!1541209 (= c!820685 lt!1966033)))

(assert (=> d!1541209 (= lt!1966033 (containsKey!4226 (toList!7270 (extractMap!2593 (toList!7269 lm!2251))) key!5322))))

(assert (=> d!1541209 (= (contains!18492 (extractMap!2593 (toList!7269 lm!2251)) key!5322) lt!1966034)))

(declare-fun b!4815207 () Bool)

(declare-fun Unit!141869 () Unit!141864)

(assert (=> b!4815207 (= e!3008443 Unit!141869)))

(declare-fun b!4815208 () Bool)

(assert (=> b!4815208 (= e!3008440 e!3008439)))

(declare-fun res!2048239 () Bool)

(assert (=> b!4815208 (=> (not res!2048239) (not e!3008439))))

(assert (=> b!4815208 (= res!2048239 (isDefined!10529 (getValueByKey!2555 (toList!7270 (extractMap!2593 (toList!7269 lm!2251))) key!5322)))))

(declare-fun bm!335948 () Bool)

(assert (=> bm!335948 (= call!335953 (contains!18496 e!3008441 key!5322))))

(declare-fun c!820686 () Bool)

(assert (=> bm!335948 (= c!820686 c!820685)))

(declare-fun b!4815209 () Bool)

(assert (=> b!4815209 (= e!3008438 (not (contains!18496 (keys!20075 (extractMap!2593 (toList!7269 lm!2251))) key!5322)))))

(declare-fun b!4815210 () Bool)

(assert (=> b!4815210 (= e!3008442 e!3008443)))

(declare-fun c!820687 () Bool)

(assert (=> b!4815210 (= c!820687 call!335953)))

(assert (= (and d!1541209 c!820685) b!4815205))

(assert (= (and d!1541209 (not c!820685)) b!4815210))

(assert (= (and b!4815210 c!820687) b!4815203))

(assert (= (and b!4815210 (not c!820687)) b!4815207))

(assert (= (or b!4815205 b!4815210) bm!335948))

(assert (= (and bm!335948 c!820686) b!4815202))

(assert (= (and bm!335948 (not c!820686)) b!4815206))

(assert (= (and d!1541209 res!2048240) b!4815209))

(assert (= (and d!1541209 (not res!2048238)) b!4815208))

(assert (= (and b!4815208 res!2048239) b!4815204))

(declare-fun m!5801238 () Bool)

(assert (=> b!4815208 m!5801238))

(assert (=> b!4815208 m!5801238))

(declare-fun m!5801240 () Bool)

(assert (=> b!4815208 m!5801240))

(assert (=> b!4815206 m!5801200))

(declare-fun m!5801242 () Bool)

(assert (=> b!4815206 m!5801242))

(declare-fun m!5801244 () Bool)

(assert (=> b!4815205 m!5801244))

(assert (=> b!4815205 m!5801238))

(assert (=> b!4815205 m!5801238))

(assert (=> b!4815205 m!5801240))

(declare-fun m!5801246 () Bool)

(assert (=> b!4815205 m!5801246))

(declare-fun m!5801248 () Bool)

(assert (=> b!4815203 m!5801248))

(declare-fun m!5801250 () Bool)

(assert (=> b!4815203 m!5801250))

(declare-fun m!5801252 () Bool)

(assert (=> bm!335948 m!5801252))

(declare-fun m!5801254 () Bool)

(assert (=> b!4815202 m!5801254))

(assert (=> b!4815209 m!5801200))

(assert (=> b!4815209 m!5801242))

(assert (=> b!4815209 m!5801242))

(declare-fun m!5801256 () Bool)

(assert (=> b!4815209 m!5801256))

(assert (=> b!4815204 m!5801200))

(assert (=> b!4815204 m!5801242))

(assert (=> b!4815204 m!5801242))

(assert (=> b!4815204 m!5801256))

(assert (=> d!1541209 m!5801248))

(assert (=> b!4815161 d!1541209))

(declare-fun bs!1160464 () Bool)

(declare-fun d!1541217 () Bool)

(assert (= bs!1160464 (and d!1541217 start!498140)))

(declare-fun lambda!234347 () Int)

(assert (=> bs!1160464 (= lambda!234347 lambda!234333)))

(declare-fun bs!1160465 () Bool)

(assert (= bs!1160465 (and d!1541217 d!1541207)))

(assert (=> bs!1160465 (not (= lambda!234347 lambda!234341))))

(declare-fun lt!1966043 () ListMap!6683)

(declare-fun invariantList!1786 (List!54823) Bool)

(assert (=> d!1541217 (invariantList!1786 (toList!7270 lt!1966043))))

(declare-fun e!3008446 () ListMap!6683)

(assert (=> d!1541217 (= lt!1966043 e!3008446)))

(declare-fun c!820690 () Bool)

(assert (=> d!1541217 (= c!820690 (is-Cons!54700 (toList!7269 lm!2251)))))

(assert (=> d!1541217 (forall!12449 (toList!7269 lm!2251) lambda!234347)))

(assert (=> d!1541217 (= (extractMap!2593 (toList!7269 lm!2251)) lt!1966043)))

(declare-fun b!4815217 () Bool)

(declare-fun addToMapMapFromBucket!1763 (List!54823 ListMap!6683) ListMap!6683)

(assert (=> b!4815217 (= e!3008446 (addToMapMapFromBucket!1763 (_2!32146 (h!61132 (toList!7269 lm!2251))) (extractMap!2593 (t!362320 (toList!7269 lm!2251)))))))

(declare-fun b!4815218 () Bool)

(assert (=> b!4815218 (= e!3008446 (ListMap!6684 Nil!54699))))

(assert (= (and d!1541217 c!820690) b!4815217))

(assert (= (and d!1541217 (not c!820690)) b!4815218))

(declare-fun m!5801260 () Bool)

(assert (=> d!1541217 m!5801260))

(declare-fun m!5801262 () Bool)

(assert (=> d!1541217 m!5801262))

(declare-fun m!5801264 () Bool)

(assert (=> b!4815217 m!5801264))

(assert (=> b!4815217 m!5801264))

(declare-fun m!5801266 () Bool)

(assert (=> b!4815217 m!5801266))

(assert (=> b!4815161 d!1541217))

(declare-fun d!1541221 () Bool)

(declare-fun hash!5214 (Hashable!7143 K!16347) (_ BitVec 64))

(assert (=> d!1541221 (= (hash!5212 hashF!1486 key!5322) (hash!5214 hashF!1486 key!5322))))

(declare-fun bs!1160466 () Bool)

(assert (= bs!1160466 d!1541221))

(declare-fun m!5801268 () Bool)

(assert (=> bs!1160466 m!5801268))

(assert (=> b!4815162 d!1541221))

(declare-fun d!1541223 () Bool)

(declare-fun dynLambda!22157 (Int tuple2!57704) Bool)

(assert (=> d!1541223 (dynLambda!22157 lambda!234333 lt!1965997)))

(declare-fun lt!1966046 () Unit!141864)

(declare-fun choose!34911 (List!54824 Int tuple2!57704) Unit!141864)

(assert (=> d!1541223 (= lt!1966046 (choose!34911 (toList!7269 lm!2251) lambda!234333 lt!1965997))))

(declare-fun e!3008449 () Bool)

(assert (=> d!1541223 e!3008449))

(declare-fun res!2048243 () Bool)

(assert (=> d!1541223 (=> (not res!2048243) (not e!3008449))))

(assert (=> d!1541223 (= res!2048243 (forall!12449 (toList!7269 lm!2251) lambda!234333))))

(assert (=> d!1541223 (= (forallContained!4311 (toList!7269 lm!2251) lambda!234333 lt!1965997) lt!1966046)))

(declare-fun b!4815221 () Bool)

(assert (=> b!4815221 (= e!3008449 (contains!18490 (toList!7269 lm!2251) lt!1965997))))

(assert (= (and d!1541223 res!2048243) b!4815221))

(declare-fun b_lambda!188395 () Bool)

(assert (=> (not b_lambda!188395) (not d!1541223)))

(declare-fun m!5801270 () Bool)

(assert (=> d!1541223 m!5801270))

(declare-fun m!5801272 () Bool)

(assert (=> d!1541223 m!5801272))

(assert (=> d!1541223 m!5801178))

(assert (=> b!4815221 m!5801190))

(assert (=> b!4815162 d!1541223))

(declare-fun d!1541225 () Bool)

(assert (=> d!1541225 (contains!18490 (toList!7269 lm!2251) (tuple2!57705 lt!1965993 lt!1965994))))

(declare-fun lt!1966049 () Unit!141864)

(declare-fun choose!34912 (ListLongMap!5749 (_ BitVec 64) List!54823) Unit!141864)

(assert (=> d!1541225 (= lt!1966049 (choose!34912 lm!2251 lt!1965993 lt!1965994))))

(assert (=> d!1541225 (contains!18491 lm!2251 lt!1965993)))

(assert (=> d!1541225 (= (lemmaGetValueImpliesTupleContained!654 lm!2251 lt!1965993 lt!1965994) lt!1966049)))

(declare-fun bs!1160467 () Bool)

(assert (= bs!1160467 d!1541225))

(declare-fun m!5801274 () Bool)

(assert (=> bs!1160467 m!5801274))

(declare-fun m!5801276 () Bool)

(assert (=> bs!1160467 m!5801276))

(assert (=> bs!1160467 m!5801188))

(assert (=> b!4815162 d!1541225))

(declare-fun d!1541227 () Bool)

(declare-fun lt!1966052 () Bool)

(declare-fun content!9790 (List!54824) (Set tuple2!57704))

(assert (=> d!1541227 (= lt!1966052 (set.member lt!1965997 (content!9790 (toList!7269 lm!2251))))))

(declare-fun e!3008454 () Bool)

(assert (=> d!1541227 (= lt!1966052 e!3008454)))

(declare-fun res!2048249 () Bool)

(assert (=> d!1541227 (=> (not res!2048249) (not e!3008454))))

(assert (=> d!1541227 (= res!2048249 (is-Cons!54700 (toList!7269 lm!2251)))))

(assert (=> d!1541227 (= (contains!18490 (toList!7269 lm!2251) lt!1965997) lt!1966052)))

(declare-fun b!4815227 () Bool)

(declare-fun e!3008455 () Bool)

(assert (=> b!4815227 (= e!3008454 e!3008455)))

(declare-fun res!2048248 () Bool)

(assert (=> b!4815227 (=> res!2048248 e!3008455)))

(assert (=> b!4815227 (= res!2048248 (= (h!61132 (toList!7269 lm!2251)) lt!1965997))))

(declare-fun b!4815228 () Bool)

(assert (=> b!4815228 (= e!3008455 (contains!18490 (t!362320 (toList!7269 lm!2251)) lt!1965997))))

(assert (= (and d!1541227 res!2048249) b!4815227))

(assert (= (and b!4815227 (not res!2048248)) b!4815228))

(declare-fun m!5801278 () Bool)

(assert (=> d!1541227 m!5801278))

(declare-fun m!5801280 () Bool)

(assert (=> d!1541227 m!5801280))

(declare-fun m!5801282 () Bool)

(assert (=> b!4815228 m!5801282))

(assert (=> b!4815162 d!1541227))

(declare-fun d!1541229 () Bool)

(declare-fun e!3008467 () Bool)

(assert (=> d!1541229 e!3008467))

(declare-fun res!2048252 () Bool)

(assert (=> d!1541229 (=> res!2048252 e!3008467)))

(declare-fun lt!1966080 () Bool)

(assert (=> d!1541229 (= res!2048252 (not lt!1966080))))

(declare-fun lt!1966078 () Bool)

(assert (=> d!1541229 (= lt!1966080 lt!1966078)))

(declare-fun lt!1966077 () Unit!141864)

(declare-fun e!3008466 () Unit!141864)

(assert (=> d!1541229 (= lt!1966077 e!3008466)))

(declare-fun c!820699 () Bool)

(assert (=> d!1541229 (= c!820699 lt!1966078)))

(declare-fun containsKey!4227 (List!54824 (_ BitVec 64)) Bool)

(assert (=> d!1541229 (= lt!1966078 (containsKey!4227 (toList!7269 lm!2251) lt!1965993))))

(assert (=> d!1541229 (= (contains!18491 lm!2251 lt!1965993) lt!1966080)))

(declare-fun b!4815247 () Bool)

(declare-fun lt!1966079 () Unit!141864)

(assert (=> b!4815247 (= e!3008466 lt!1966079)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2342 (List!54824 (_ BitVec 64)) Unit!141864)

(assert (=> b!4815247 (= lt!1966079 (lemmaContainsKeyImpliesGetValueByKeyDefined!2342 (toList!7269 lm!2251) lt!1965993))))

(declare-datatypes ((Option!13393 0))(
  ( (None!13392) (Some!13392 (v!49040 List!54823)) )
))
(declare-fun isDefined!10530 (Option!13393) Bool)

(declare-fun getValueByKey!2556 (List!54824 (_ BitVec 64)) Option!13393)

(assert (=> b!4815247 (isDefined!10530 (getValueByKey!2556 (toList!7269 lm!2251) lt!1965993))))

(declare-fun b!4815248 () Bool)

(declare-fun Unit!141870 () Unit!141864)

(assert (=> b!4815248 (= e!3008466 Unit!141870)))

(declare-fun b!4815249 () Bool)

(assert (=> b!4815249 (= e!3008467 (isDefined!10530 (getValueByKey!2556 (toList!7269 lm!2251) lt!1965993)))))

(assert (= (and d!1541229 c!820699) b!4815247))

(assert (= (and d!1541229 (not c!820699)) b!4815248))

(assert (= (and d!1541229 (not res!2048252)) b!4815249))

(declare-fun m!5801284 () Bool)

(assert (=> d!1541229 m!5801284))

(declare-fun m!5801286 () Bool)

(assert (=> b!4815247 m!5801286))

(declare-fun m!5801288 () Bool)

(assert (=> b!4815247 m!5801288))

(assert (=> b!4815247 m!5801288))

(declare-fun m!5801290 () Bool)

(assert (=> b!4815247 m!5801290))

(assert (=> b!4815249 m!5801288))

(assert (=> b!4815249 m!5801288))

(assert (=> b!4815249 m!5801290))

(assert (=> b!4815162 d!1541229))

(declare-fun bs!1160468 () Bool)

(declare-fun d!1541231 () Bool)

(assert (= bs!1160468 (and d!1541231 start!498140)))

(declare-fun lambda!234350 () Int)

(assert (=> bs!1160468 (= lambda!234350 lambda!234333)))

(declare-fun bs!1160469 () Bool)

(assert (= bs!1160469 (and d!1541231 d!1541207)))

(assert (=> bs!1160469 (not (= lambda!234350 lambda!234341))))

(declare-fun bs!1160470 () Bool)

(assert (= bs!1160470 (and d!1541231 d!1541217)))

(assert (=> bs!1160470 (= lambda!234350 lambda!234347)))

(assert (=> d!1541231 (contains!18491 lm!2251 (hash!5212 hashF!1486 key!5322))))

(declare-fun lt!1966083 () Unit!141864)

(declare-fun choose!34913 (ListLongMap!5749 K!16347 Hashable!7143) Unit!141864)

(assert (=> d!1541231 (= lt!1966083 (choose!34913 lm!2251 key!5322 hashF!1486))))

(assert (=> d!1541231 (forall!12449 (toList!7269 lm!2251) lambda!234350)))

(assert (=> d!1541231 (= (lemmaInGenMapThenLongMapContainsHash!1081 lm!2251 key!5322 hashF!1486) lt!1966083)))

(declare-fun bs!1160471 () Bool)

(assert (= bs!1160471 d!1541231))

(assert (=> bs!1160471 m!5801194))

(assert (=> bs!1160471 m!5801194))

(declare-fun m!5801292 () Bool)

(assert (=> bs!1160471 m!5801292))

(declare-fun m!5801294 () Bool)

(assert (=> bs!1160471 m!5801294))

(declare-fun m!5801296 () Bool)

(assert (=> bs!1160471 m!5801296))

(assert (=> b!4815162 d!1541231))

(declare-fun d!1541233 () Bool)

(declare-fun res!2048263 () Bool)

(declare-fun e!3008478 () Bool)

(assert (=> d!1541233 (=> res!2048263 e!3008478)))

(assert (=> d!1541233 (= res!2048263 (not (is-Cons!54699 lt!1965994)))))

(assert (=> d!1541233 (= (noDuplicateKeys!2402 lt!1965994) e!3008478)))

(declare-fun b!4815260 () Bool)

(declare-fun e!3008479 () Bool)

(assert (=> b!4815260 (= e!3008478 e!3008479)))

(declare-fun res!2048264 () Bool)

(assert (=> b!4815260 (=> (not res!2048264) (not e!3008479))))

(declare-fun containsKey!4228 (List!54823 K!16347) Bool)

(assert (=> b!4815260 (= res!2048264 (not (containsKey!4228 (t!362319 lt!1965994) (_1!32145 (h!61131 lt!1965994)))))))

(declare-fun b!4815261 () Bool)

(assert (=> b!4815261 (= e!3008479 (noDuplicateKeys!2402 (t!362319 lt!1965994)))))

(assert (= (and d!1541233 (not res!2048263)) b!4815260))

(assert (= (and b!4815260 res!2048264) b!4815261))

(declare-fun m!5801298 () Bool)

(assert (=> b!4815260 m!5801298))

(declare-fun m!5801300 () Bool)

(assert (=> b!4815261 m!5801300))

(assert (=> b!4815162 d!1541233))

(declare-fun d!1541235 () Bool)

(declare-fun get!18716 (Option!13393) List!54823)

(assert (=> d!1541235 (= (apply!13248 lm!2251 lt!1965993) (get!18716 (getValueByKey!2556 (toList!7269 lm!2251) lt!1965993)))))

(declare-fun bs!1160472 () Bool)

(assert (= bs!1160472 d!1541235))

(assert (=> bs!1160472 m!5801288))

(assert (=> bs!1160472 m!5801288))

(declare-fun m!5801302 () Bool)

(assert (=> bs!1160472 m!5801302))

(assert (=> b!4815162 d!1541235))

(declare-fun d!1541237 () Bool)

(declare-fun res!2048272 () Bool)

(declare-fun e!3008490 () Bool)

(assert (=> d!1541237 (=> res!2048272 e!3008490)))

(assert (=> d!1541237 (= res!2048272 (is-Nil!54700 (toList!7269 lm!2251)))))

(assert (=> d!1541237 (= (forall!12449 (toList!7269 lm!2251) lambda!234333) e!3008490)))

(declare-fun b!4815275 () Bool)

(declare-fun e!3008491 () Bool)

(assert (=> b!4815275 (= e!3008490 e!3008491)))

(declare-fun res!2048273 () Bool)

(assert (=> b!4815275 (=> (not res!2048273) (not e!3008491))))

(assert (=> b!4815275 (= res!2048273 (dynLambda!22157 lambda!234333 (h!61132 (toList!7269 lm!2251))))))

(declare-fun b!4815276 () Bool)

(assert (=> b!4815276 (= e!3008491 (forall!12449 (t!362320 (toList!7269 lm!2251)) lambda!234333))))

(assert (= (and d!1541237 (not res!2048272)) b!4815275))

(assert (= (and b!4815275 res!2048273) b!4815276))

(declare-fun b_lambda!188397 () Bool)

(assert (=> (not b_lambda!188397) (not b!4815275)))

(declare-fun m!5801324 () Bool)

(assert (=> b!4815275 m!5801324))

(declare-fun m!5801326 () Bool)

(assert (=> b!4815276 m!5801326))

(assert (=> start!498140 d!1541237))

(declare-fun d!1541241 () Bool)

(declare-fun isStrictlySorted!946 (List!54824) Bool)

(assert (=> d!1541241 (= (inv!70248 lm!2251) (isStrictlySorted!946 (toList!7269 lm!2251)))))

(declare-fun bs!1160473 () Bool)

(assert (= bs!1160473 d!1541241))

(declare-fun m!5801328 () Bool)

(assert (=> bs!1160473 m!5801328))

(assert (=> start!498140 d!1541241))

(declare-fun b!4815281 () Bool)

(declare-fun e!3008494 () Bool)

(declare-fun tp!1361794 () Bool)

(declare-fun tp!1361795 () Bool)

(assert (=> b!4815281 (= e!3008494 (and tp!1361794 tp!1361795))))

(assert (=> b!4815163 (= tp!1361786 e!3008494)))

(assert (= (and b!4815163 (is-Cons!54700 (toList!7269 lm!2251))) b!4815281))

(declare-fun b_lambda!188399 () Bool)

(assert (= b_lambda!188397 (or start!498140 b_lambda!188399)))

(declare-fun bs!1160474 () Bool)

(declare-fun d!1541243 () Bool)

(assert (= bs!1160474 (and d!1541243 start!498140)))

(assert (=> bs!1160474 (= (dynLambda!22157 lambda!234333 (h!61132 (toList!7269 lm!2251))) (noDuplicateKeys!2402 (_2!32146 (h!61132 (toList!7269 lm!2251)))))))

(declare-fun m!5801330 () Bool)

(assert (=> bs!1160474 m!5801330))

(assert (=> b!4815275 d!1541243))

(declare-fun b_lambda!188401 () Bool)

(assert (= b_lambda!188395 (or start!498140 b_lambda!188401)))

(declare-fun bs!1160475 () Bool)

(declare-fun d!1541245 () Bool)

(assert (= bs!1160475 (and d!1541245 start!498140)))

(assert (=> bs!1160475 (= (dynLambda!22157 lambda!234333 lt!1965997) (noDuplicateKeys!2402 (_2!32146 lt!1965997)))))

(declare-fun m!5801332 () Bool)

(assert (=> bs!1160475 m!5801332))

(assert (=> d!1541223 d!1541245))

(push 1)

(assert (not b!4815261))

(assert (not d!1541227))

(assert (not d!1541223))

(assert (not d!1541217))

(assert (not bm!335948))

(assert (not b!4815208))

(assert (not b!4815217))

(assert (not d!1541231))

(assert (not bs!1160474))

(assert (not b!4815276))

(assert (not d!1541209))

(assert (not d!1541235))

(assert (not d!1541241))

(assert (not b!4815247))

(assert (not b!4815249))

(assert (not b!4815206))

(assert tp_is_empty!34159)

(assert (not b!4815202))

(assert (not d!1541207))

(assert (not b!4815221))

(assert (not b!4815209))

(assert (not d!1541225))

(assert (not bs!1160475))

(assert (not b!4815281))

(assert (not b!4815228))

(assert (not b!4815204))

(assert (not b!4815203))

(assert (not b!4815260))

(assert (not b_lambda!188399))

(assert (not b_lambda!188401))

(assert (not d!1541221))

(assert (not b!4815205))

(assert (not d!1541229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

