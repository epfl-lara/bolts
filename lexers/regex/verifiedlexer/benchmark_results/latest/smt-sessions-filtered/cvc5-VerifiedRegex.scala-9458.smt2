; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499356 () Bool)

(assert start!499356)

(declare-fun b!4820190 () Bool)

(declare-fun res!2051252 () Bool)

(declare-fun e!3011575 () Bool)

(assert (=> b!4820190 (=> (not res!2051252) (not e!3011575))))

(declare-datatypes ((V!16823 0))(
  ( (V!16824 (val!21567 Int)) )
))
(declare-datatypes ((K!16577 0))(
  ( (K!16578 (val!21568 Int)) )
))
(declare-datatypes ((tuple2!58070 0))(
  ( (tuple2!58071 (_1!32329 K!16577) (_2!32329 V!16823)) )
))
(declare-datatypes ((List!55020 0))(
  ( (Nil!54896) (Cons!54896 (h!61330 tuple2!58070) (t!362516 List!55020)) )
))
(declare-datatypes ((tuple2!58072 0))(
  ( (tuple2!58073 (_1!32330 (_ BitVec 64)) (_2!32330 List!55020)) )
))
(declare-datatypes ((List!55021 0))(
  ( (Nil!54897) (Cons!54897 (h!61331 tuple2!58072) (t!362517 List!55021)) )
))
(declare-datatypes ((ListLongMap!5933 0))(
  ( (ListLongMap!5934 (toList!7431 List!55021)) )
))
(declare-fun lm!2280 () ListLongMap!5933)

(declare-datatypes ((Hashable!7235 0))(
  ( (HashableExt!7234 (__x!33510 Int)) )
))
(declare-fun hashF!1509 () Hashable!7235)

(declare-fun allKeysSameHashInMap!2551 (ListLongMap!5933 Hashable!7235) Bool)

(assert (=> b!4820190 (= res!2051252 (allKeysSameHashInMap!2551 lm!2280 hashF!1509))))

(declare-fun res!2051249 () Bool)

(assert (=> start!499356 (=> (not res!2051249) (not e!3011575))))

(declare-fun lambda!235409 () Int)

(declare-fun forall!12553 (List!55021 Int) Bool)

(assert (=> start!499356 (= res!2051249 (forall!12553 (toList!7431 lm!2280) lambda!235409))))

(assert (=> start!499356 e!3011575))

(declare-fun e!3011574 () Bool)

(declare-fun inv!70478 (ListLongMap!5933) Bool)

(assert (=> start!499356 (and (inv!70478 lm!2280) e!3011574)))

(assert (=> start!499356 true))

(declare-fun tp_is_empty!34359 () Bool)

(assert (=> start!499356 tp_is_empty!34359))

(declare-fun b!4820191 () Bool)

(declare-fun tp!1362254 () Bool)

(assert (=> b!4820191 (= e!3011574 tp!1362254)))

(declare-fun b!4820192 () Bool)

(declare-fun res!2051248 () Bool)

(declare-fun e!3011576 () Bool)

(assert (=> b!4820192 (=> (not res!2051248) (not e!3011576))))

(declare-fun lt!1969263 () (_ BitVec 64))

(assert (=> b!4820192 (= res!2051248 (and (is-Cons!54897 (toList!7431 lm!2280)) (= (_1!32330 (h!61331 (toList!7431 lm!2280))) lt!1969263)))))

(declare-fun b!4820193 () Bool)

(declare-fun res!2051251 () Bool)

(assert (=> b!4820193 (=> (not res!2051251) (not e!3011576))))

(declare-fun key!5428 () K!16577)

(declare-fun containsKey!4304 (List!55020 K!16577) Bool)

(declare-fun apply!13322 (ListLongMap!5933 (_ BitVec 64)) List!55020)

(assert (=> b!4820193 (= res!2051251 (not (containsKey!4304 (apply!13322 lm!2280 lt!1969263) key!5428)))))

(declare-fun b!4820194 () Bool)

(assert (=> b!4820194 (= e!3011575 e!3011576)))

(declare-fun res!2051250 () Bool)

(assert (=> b!4820194 (=> (not res!2051250) (not e!3011576))))

(declare-fun contains!18708 (ListLongMap!5933 (_ BitVec 64)) Bool)

(assert (=> b!4820194 (= res!2051250 (contains!18708 lm!2280 lt!1969263))))

(declare-fun hash!5325 (Hashable!7235 K!16577) (_ BitVec 64))

(assert (=> b!4820194 (= lt!1969263 (hash!5325 hashF!1509 key!5428))))

(declare-fun b!4820195 () Bool)

(declare-fun tail!9372 (ListLongMap!5933) ListLongMap!5933)

(assert (=> b!4820195 (= e!3011576 (not (forall!12553 (toList!7431 (tail!9372 lm!2280)) lambda!235409)))))

(assert (= (and start!499356 res!2051249) b!4820190))

(assert (= (and b!4820190 res!2051252) b!4820194))

(assert (= (and b!4820194 res!2051250) b!4820193))

(assert (= (and b!4820193 res!2051251) b!4820192))

(assert (= (and b!4820192 res!2051248) b!4820195))

(assert (= start!499356 b!4820191))

(declare-fun m!5807588 () Bool)

(assert (=> b!4820195 m!5807588))

(declare-fun m!5807590 () Bool)

(assert (=> b!4820195 m!5807590))

(declare-fun m!5807592 () Bool)

(assert (=> b!4820194 m!5807592))

(declare-fun m!5807594 () Bool)

(assert (=> b!4820194 m!5807594))

(declare-fun m!5807596 () Bool)

(assert (=> b!4820190 m!5807596))

(declare-fun m!5807598 () Bool)

(assert (=> b!4820193 m!5807598))

(assert (=> b!4820193 m!5807598))

(declare-fun m!5807600 () Bool)

(assert (=> b!4820193 m!5807600))

(declare-fun m!5807602 () Bool)

(assert (=> start!499356 m!5807602))

(declare-fun m!5807604 () Bool)

(assert (=> start!499356 m!5807604))

(push 1)

(assert (not b!4820191))

(assert (not b!4820194))

(assert (not b!4820195))

(assert (not b!4820193))

(assert (not start!499356))

(assert tp_is_empty!34359)

(assert (not b!4820190))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1543075 () Bool)

(declare-fun e!3011591 () Bool)

(assert (=> d!1543075 e!3011591))

(declare-fun res!2051270 () Bool)

(assert (=> d!1543075 (=> res!2051270 e!3011591)))

(declare-fun lt!1969276 () Bool)

(assert (=> d!1543075 (= res!2051270 (not lt!1969276))))

(declare-fun lt!1969278 () Bool)

(assert (=> d!1543075 (= lt!1969276 lt!1969278)))

(declare-datatypes ((Unit!142287 0))(
  ( (Unit!142288) )
))
(declare-fun lt!1969275 () Unit!142287)

(declare-fun e!3011590 () Unit!142287)

(assert (=> d!1543075 (= lt!1969275 e!3011590)))

(declare-fun c!821399 () Bool)

(assert (=> d!1543075 (= c!821399 lt!1969278)))

(declare-fun containsKey!4306 (List!55021 (_ BitVec 64)) Bool)

(assert (=> d!1543075 (= lt!1969278 (containsKey!4306 (toList!7431 lm!2280) lt!1969263))))

(assert (=> d!1543075 (= (contains!18708 lm!2280 lt!1969263) lt!1969276)))

(declare-fun b!4820220 () Bool)

(declare-fun lt!1969277 () Unit!142287)

(assert (=> b!4820220 (= e!3011590 lt!1969277)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2370 (List!55021 (_ BitVec 64)) Unit!142287)

(assert (=> b!4820220 (= lt!1969277 (lemmaContainsKeyImpliesGetValueByKeyDefined!2370 (toList!7431 lm!2280) lt!1969263))))

(declare-datatypes ((Option!13458 0))(
  ( (None!13457) (Some!13457 (v!49126 List!55020)) )
))
(declare-fun isDefined!10573 (Option!13458) Bool)

(declare-fun getValueByKey!2585 (List!55021 (_ BitVec 64)) Option!13458)

(assert (=> b!4820220 (isDefined!10573 (getValueByKey!2585 (toList!7431 lm!2280) lt!1969263))))

(declare-fun b!4820221 () Bool)

(declare-fun Unit!142289 () Unit!142287)

(assert (=> b!4820221 (= e!3011590 Unit!142289)))

(declare-fun b!4820222 () Bool)

(assert (=> b!4820222 (= e!3011591 (isDefined!10573 (getValueByKey!2585 (toList!7431 lm!2280) lt!1969263)))))

(assert (= (and d!1543075 c!821399) b!4820220))

(assert (= (and d!1543075 (not c!821399)) b!4820221))

(assert (= (and d!1543075 (not res!2051270)) b!4820222))

(declare-fun m!5807624 () Bool)

(assert (=> d!1543075 m!5807624))

(declare-fun m!5807626 () Bool)

(assert (=> b!4820220 m!5807626))

(declare-fun m!5807628 () Bool)

(assert (=> b!4820220 m!5807628))

(assert (=> b!4820220 m!5807628))

(declare-fun m!5807630 () Bool)

(assert (=> b!4820220 m!5807630))

(assert (=> b!4820222 m!5807628))

(assert (=> b!4820222 m!5807628))

(assert (=> b!4820222 m!5807630))

(assert (=> b!4820194 d!1543075))

(declare-fun d!1543077 () Bool)

(declare-fun hash!5327 (Hashable!7235 K!16577) (_ BitVec 64))

(assert (=> d!1543077 (= (hash!5325 hashF!1509 key!5428) (hash!5327 hashF!1509 key!5428))))

(declare-fun bs!1161500 () Bool)

(assert (= bs!1161500 d!1543077))

(declare-fun m!5807632 () Bool)

(assert (=> bs!1161500 m!5807632))

(assert (=> b!4820194 d!1543077))

(declare-fun d!1543079 () Bool)

(declare-fun res!2051275 () Bool)

(declare-fun e!3011596 () Bool)

(assert (=> d!1543079 (=> res!2051275 e!3011596)))

(assert (=> d!1543079 (= res!2051275 (and (is-Cons!54896 (apply!13322 lm!2280 lt!1969263)) (= (_1!32329 (h!61330 (apply!13322 lm!2280 lt!1969263))) key!5428)))))

(assert (=> d!1543079 (= (containsKey!4304 (apply!13322 lm!2280 lt!1969263) key!5428) e!3011596)))

(declare-fun b!4820227 () Bool)

(declare-fun e!3011597 () Bool)

(assert (=> b!4820227 (= e!3011596 e!3011597)))

(declare-fun res!2051276 () Bool)

(assert (=> b!4820227 (=> (not res!2051276) (not e!3011597))))

(assert (=> b!4820227 (= res!2051276 (is-Cons!54896 (apply!13322 lm!2280 lt!1969263)))))

(declare-fun b!4820228 () Bool)

(assert (=> b!4820228 (= e!3011597 (containsKey!4304 (t!362516 (apply!13322 lm!2280 lt!1969263)) key!5428))))

(assert (= (and d!1543079 (not res!2051275)) b!4820227))

(assert (= (and b!4820227 res!2051276) b!4820228))

(declare-fun m!5807634 () Bool)

(assert (=> b!4820228 m!5807634))

(assert (=> b!4820193 d!1543079))

(declare-fun d!1543081 () Bool)

(declare-fun get!18786 (Option!13458) List!55020)

(assert (=> d!1543081 (= (apply!13322 lm!2280 lt!1969263) (get!18786 (getValueByKey!2585 (toList!7431 lm!2280) lt!1969263)))))

(declare-fun bs!1161501 () Bool)

(assert (= bs!1161501 d!1543081))

(assert (=> bs!1161501 m!5807628))

(assert (=> bs!1161501 m!5807628))

(declare-fun m!5807636 () Bool)

(assert (=> bs!1161501 m!5807636))

(assert (=> b!4820193 d!1543081))

(declare-fun bs!1161502 () Bool)

(declare-fun d!1543083 () Bool)

(assert (= bs!1161502 (and d!1543083 start!499356)))

(declare-fun lambda!235417 () Int)

(assert (=> bs!1161502 (not (= lambda!235417 lambda!235409))))

(assert (=> d!1543083 true))

(assert (=> d!1543083 (= (allKeysSameHashInMap!2551 lm!2280 hashF!1509) (forall!12553 (toList!7431 lm!2280) lambda!235417))))

(declare-fun bs!1161503 () Bool)

(assert (= bs!1161503 d!1543083))

(declare-fun m!5807638 () Bool)

(assert (=> bs!1161503 m!5807638))

(assert (=> b!4820190 d!1543083))

(declare-fun d!1543087 () Bool)

(declare-fun res!2051281 () Bool)

(declare-fun e!3011602 () Bool)

(assert (=> d!1543087 (=> res!2051281 e!3011602)))

(assert (=> d!1543087 (= res!2051281 (is-Nil!54897 (toList!7431 (tail!9372 lm!2280))))))

(assert (=> d!1543087 (= (forall!12553 (toList!7431 (tail!9372 lm!2280)) lambda!235409) e!3011602)))

(declare-fun b!4820235 () Bool)

(declare-fun e!3011603 () Bool)

(assert (=> b!4820235 (= e!3011602 e!3011603)))

(declare-fun res!2051282 () Bool)

(assert (=> b!4820235 (=> (not res!2051282) (not e!3011603))))

(declare-fun dynLambda!22183 (Int tuple2!58072) Bool)

(assert (=> b!4820235 (= res!2051282 (dynLambda!22183 lambda!235409 (h!61331 (toList!7431 (tail!9372 lm!2280)))))))

(declare-fun b!4820236 () Bool)

(assert (=> b!4820236 (= e!3011603 (forall!12553 (t!362517 (toList!7431 (tail!9372 lm!2280))) lambda!235409))))

(assert (= (and d!1543087 (not res!2051281)) b!4820235))

(assert (= (and b!4820235 res!2051282) b!4820236))

(declare-fun b_lambda!188923 () Bool)

(assert (=> (not b_lambda!188923) (not b!4820235)))

(declare-fun m!5807640 () Bool)

(assert (=> b!4820235 m!5807640))

(declare-fun m!5807642 () Bool)

(assert (=> b!4820236 m!5807642))

(assert (=> b!4820195 d!1543087))

(declare-fun d!1543089 () Bool)

(declare-fun tail!9374 (List!55021) List!55021)

(assert (=> d!1543089 (= (tail!9372 lm!2280) (ListLongMap!5934 (tail!9374 (toList!7431 lm!2280))))))

(declare-fun bs!1161504 () Bool)

(assert (= bs!1161504 d!1543089))

(declare-fun m!5807644 () Bool)

(assert (=> bs!1161504 m!5807644))

(assert (=> b!4820195 d!1543089))

(declare-fun d!1543091 () Bool)

(declare-fun res!2051283 () Bool)

(declare-fun e!3011604 () Bool)

(assert (=> d!1543091 (=> res!2051283 e!3011604)))

(assert (=> d!1543091 (= res!2051283 (is-Nil!54897 (toList!7431 lm!2280)))))

(assert (=> d!1543091 (= (forall!12553 (toList!7431 lm!2280) lambda!235409) e!3011604)))

(declare-fun b!4820237 () Bool)

(declare-fun e!3011605 () Bool)

(assert (=> b!4820237 (= e!3011604 e!3011605)))

(declare-fun res!2051284 () Bool)

(assert (=> b!4820237 (=> (not res!2051284) (not e!3011605))))

(assert (=> b!4820237 (= res!2051284 (dynLambda!22183 lambda!235409 (h!61331 (toList!7431 lm!2280))))))

(declare-fun b!4820238 () Bool)

(assert (=> b!4820238 (= e!3011605 (forall!12553 (t!362517 (toList!7431 lm!2280)) lambda!235409))))

(assert (= (and d!1543091 (not res!2051283)) b!4820237))

(assert (= (and b!4820237 res!2051284) b!4820238))

(declare-fun b_lambda!188925 () Bool)

(assert (=> (not b_lambda!188925) (not b!4820237)))

(declare-fun m!5807646 () Bool)

(assert (=> b!4820237 m!5807646))

(declare-fun m!5807648 () Bool)

(assert (=> b!4820238 m!5807648))

(assert (=> start!499356 d!1543091))

(declare-fun d!1543093 () Bool)

(declare-fun isStrictlySorted!963 (List!55021) Bool)

(assert (=> d!1543093 (= (inv!70478 lm!2280) (isStrictlySorted!963 (toList!7431 lm!2280)))))

(declare-fun bs!1161505 () Bool)

(assert (= bs!1161505 d!1543093))

(declare-fun m!5807650 () Bool)

(assert (=> bs!1161505 m!5807650))

(assert (=> start!499356 d!1543093))

(declare-fun b!4820243 () Bool)

(declare-fun e!3011608 () Bool)

(declare-fun tp!1362262 () Bool)

(declare-fun tp!1362263 () Bool)

(assert (=> b!4820243 (= e!3011608 (and tp!1362262 tp!1362263))))

(assert (=> b!4820191 (= tp!1362254 e!3011608)))

(assert (= (and b!4820191 (is-Cons!54897 (toList!7431 lm!2280))) b!4820243))

(declare-fun b_lambda!188927 () Bool)

(assert (= b_lambda!188923 (or start!499356 b_lambda!188927)))

(declare-fun bs!1161506 () Bool)

(declare-fun d!1543095 () Bool)

(assert (= bs!1161506 (and d!1543095 start!499356)))

(declare-fun noDuplicateKeys!2427 (List!55020) Bool)

(assert (=> bs!1161506 (= (dynLambda!22183 lambda!235409 (h!61331 (toList!7431 (tail!9372 lm!2280)))) (noDuplicateKeys!2427 (_2!32330 (h!61331 (toList!7431 (tail!9372 lm!2280))))))))

(declare-fun m!5807652 () Bool)

(assert (=> bs!1161506 m!5807652))

(assert (=> b!4820235 d!1543095))

(declare-fun b_lambda!188929 () Bool)

(assert (= b_lambda!188925 (or start!499356 b_lambda!188929)))

(declare-fun bs!1161507 () Bool)

(declare-fun d!1543097 () Bool)

(assert (= bs!1161507 (and d!1543097 start!499356)))

(assert (=> bs!1161507 (= (dynLambda!22183 lambda!235409 (h!61331 (toList!7431 lm!2280))) (noDuplicateKeys!2427 (_2!32330 (h!61331 (toList!7431 lm!2280)))))))

(declare-fun m!5807654 () Bool)

(assert (=> bs!1161507 m!5807654))

(assert (=> b!4820237 d!1543097))

(push 1)

(assert (not b!4820238))

(assert (not b!4820220))

(assert (not d!1543075))

(assert (not b_lambda!188929))

(assert (not b!4820228))

(assert (not bs!1161507))

(assert (not d!1543089))

(assert tp_is_empty!34359)

(assert (not d!1543081))

(assert (not bs!1161506))

(assert (not b!4820243))

(assert (not b_lambda!188927))

(assert (not b!4820236))

(assert (not d!1543077))

(assert (not d!1543093))

(assert (not d!1543083))

(assert (not b!4820222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1543115 () Bool)

(assert (=> d!1543115 (= (tail!9374 (toList!7431 lm!2280)) (t!362517 (toList!7431 lm!2280)))))

(assert (=> d!1543089 d!1543115))

(declare-fun d!1543117 () Bool)

(declare-fun res!2051302 () Bool)

(declare-fun e!3011629 () Bool)

(assert (=> d!1543117 (=> res!2051302 e!3011629)))

(assert (=> d!1543117 (= res!2051302 (is-Nil!54897 (toList!7431 lm!2280)))))

(assert (=> d!1543117 (= (forall!12553 (toList!7431 lm!2280) lambda!235417) e!3011629)))

(declare-fun b!4820269 () Bool)

(declare-fun e!3011630 () Bool)

(assert (=> b!4820269 (= e!3011629 e!3011630)))

(declare-fun res!2051303 () Bool)

(assert (=> b!4820269 (=> (not res!2051303) (not e!3011630))))

(assert (=> b!4820269 (= res!2051303 (dynLambda!22183 lambda!235417 (h!61331 (toList!7431 lm!2280))))))

(declare-fun b!4820270 () Bool)

(assert (=> b!4820270 (= e!3011630 (forall!12553 (t!362517 (toList!7431 lm!2280)) lambda!235417))))

(assert (= (and d!1543117 (not res!2051302)) b!4820269))

(assert (= (and b!4820269 res!2051303) b!4820270))

(declare-fun b_lambda!188935 () Bool)

(assert (=> (not b_lambda!188935) (not b!4820269)))

(declare-fun m!5807682 () Bool)

(assert (=> b!4820269 m!5807682))

(declare-fun m!5807684 () Bool)

(assert (=> b!4820270 m!5807684))

(assert (=> d!1543083 d!1543117))

(declare-fun d!1543119 () Bool)

(assert (=> d!1543119 (= (get!18786 (getValueByKey!2585 (toList!7431 lm!2280) lt!1969263)) (v!49126 (getValueByKey!2585 (toList!7431 lm!2280) lt!1969263)))))

(assert (=> d!1543081 d!1543119))

(declare-fun b!4820287 () Bool)

(declare-fun e!3011639 () Option!13458)

(assert (=> b!4820287 (= e!3011639 None!13457)))

(declare-fun b!4820284 () Bool)

(declare-fun e!3011638 () Option!13458)

(assert (=> b!4820284 (= e!3011638 (Some!13457 (_2!32330 (h!61331 (toList!7431 lm!2280)))))))

(declare-fun b!4820286 () Bool)

(assert (=> b!4820286 (= e!3011639 (getValueByKey!2585 (t!362517 (toList!7431 lm!2280)) lt!1969263))))

(declare-fun d!1543121 () Bool)

(declare-fun c!821407 () Bool)

(assert (=> d!1543121 (= c!821407 (and (is-Cons!54897 (toList!7431 lm!2280)) (= (_1!32330 (h!61331 (toList!7431 lm!2280))) lt!1969263)))))

(assert (=> d!1543121 (= (getValueByKey!2585 (toList!7431 lm!2280) lt!1969263) e!3011638)))

(declare-fun b!4820285 () Bool)

(assert (=> b!4820285 (= e!3011638 e!3011639)))

(declare-fun c!821408 () Bool)

(assert (=> b!4820285 (= c!821408 (and (is-Cons!54897 (toList!7431 lm!2280)) (not (= (_1!32330 (h!61331 (toList!7431 lm!2280))) lt!1969263))))))

(assert (= (and d!1543121 c!821407) b!4820284))

(assert (= (and d!1543121 (not c!821407)) b!4820285))

(assert (= (and b!4820285 c!821408) b!4820286))

(assert (= (and b!4820285 (not c!821408)) b!4820287))

(declare-fun m!5807692 () Bool)

(assert (=> b!4820286 m!5807692))

(assert (=> d!1543081 d!1543121))

(declare-fun d!1543127 () Bool)

(declare-fun res!2051308 () Bool)

(declare-fun e!3011644 () Bool)

(assert (=> d!1543127 (=> res!2051308 e!3011644)))

(assert (=> d!1543127 (= res!2051308 (not (is-Cons!54896 (_2!32330 (h!61331 (toList!7431 (tail!9372 lm!2280)))))))))

(assert (=> d!1543127 (= (noDuplicateKeys!2427 (_2!32330 (h!61331 (toList!7431 (tail!9372 lm!2280))))) e!3011644)))

(declare-fun b!4820292 () Bool)

(declare-fun e!3011645 () Bool)

(assert (=> b!4820292 (= e!3011644 e!3011645)))

(declare-fun res!2051309 () Bool)

(assert (=> b!4820292 (=> (not res!2051309) (not e!3011645))))

(assert (=> b!4820292 (= res!2051309 (not (containsKey!4304 (t!362516 (_2!32330 (h!61331 (toList!7431 (tail!9372 lm!2280))))) (_1!32329 (h!61330 (_2!32330 (h!61331 (toList!7431 (tail!9372 lm!2280)))))))))))

(declare-fun b!4820293 () Bool)

(assert (=> b!4820293 (= e!3011645 (noDuplicateKeys!2427 (t!362516 (_2!32330 (h!61331 (toList!7431 (tail!9372 lm!2280)))))))))

(assert (= (and d!1543127 (not res!2051308)) b!4820292))

(assert (= (and b!4820292 res!2051309) b!4820293))

(declare-fun m!5807694 () Bool)

(assert (=> b!4820292 m!5807694))

(declare-fun m!5807696 () Bool)

(assert (=> b!4820293 m!5807696))

(assert (=> bs!1161506 d!1543127))

(declare-fun d!1543129 () Bool)

(assert (=> d!1543129 (isDefined!10573 (getValueByKey!2585 (toList!7431 lm!2280) lt!1969263))))

(declare-fun lt!1969293 () Unit!142287)

(declare-fun choose!34996 (List!55021 (_ BitVec 64)) Unit!142287)

(assert (=> d!1543129 (= lt!1969293 (choose!34996 (toList!7431 lm!2280) lt!1969263))))

(declare-fun e!3011648 () Bool)

(assert (=> d!1543129 e!3011648))

(declare-fun res!2051312 () Bool)

(assert (=> d!1543129 (=> (not res!2051312) (not e!3011648))))

(assert (=> d!1543129 (= res!2051312 (isStrictlySorted!963 (toList!7431 lm!2280)))))

(assert (=> d!1543129 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2370 (toList!7431 lm!2280) lt!1969263) lt!1969293)))

(declare-fun b!4820296 () Bool)

(assert (=> b!4820296 (= e!3011648 (containsKey!4306 (toList!7431 lm!2280) lt!1969263))))

(assert (= (and d!1543129 res!2051312) b!4820296))

(assert (=> d!1543129 m!5807628))

(assert (=> d!1543129 m!5807628))

(assert (=> d!1543129 m!5807630))

(declare-fun m!5807698 () Bool)

(assert (=> d!1543129 m!5807698))

(assert (=> d!1543129 m!5807650))

(assert (=> b!4820296 m!5807624))

(assert (=> b!4820220 d!1543129))

(declare-fun d!1543131 () Bool)

(declare-fun isEmpty!29625 (Option!13458) Bool)

(assert (=> d!1543131 (= (isDefined!10573 (getValueByKey!2585 (toList!7431 lm!2280) lt!1969263)) (not (isEmpty!29625 (getValueByKey!2585 (toList!7431 lm!2280) lt!1969263))))))

(declare-fun bs!1161516 () Bool)

(assert (= bs!1161516 d!1543131))

(assert (=> bs!1161516 m!5807628))

(declare-fun m!5807700 () Bool)

(assert (=> bs!1161516 m!5807700))

(assert (=> b!4820220 d!1543131))

(assert (=> b!4820220 d!1543121))

(declare-fun d!1543133 () Bool)

(declare-fun res!2051317 () Bool)

(declare-fun e!3011653 () Bool)

(assert (=> d!1543133 (=> res!2051317 e!3011653)))

(assert (=> d!1543133 (= res!2051317 (or (is-Nil!54897 (toList!7431 lm!2280)) (is-Nil!54897 (t!362517 (toList!7431 lm!2280)))))))

(assert (=> d!1543133 (= (isStrictlySorted!963 (toList!7431 lm!2280)) e!3011653)))

(declare-fun b!4820301 () Bool)

(declare-fun e!3011654 () Bool)

(assert (=> b!4820301 (= e!3011653 e!3011654)))

(declare-fun res!2051318 () Bool)

(assert (=> b!4820301 (=> (not res!2051318) (not e!3011654))))

(assert (=> b!4820301 (= res!2051318 (bvslt (_1!32330 (h!61331 (toList!7431 lm!2280))) (_1!32330 (h!61331 (t!362517 (toList!7431 lm!2280))))))))

(declare-fun b!4820302 () Bool)

(assert (=> b!4820302 (= e!3011654 (isStrictlySorted!963 (t!362517 (toList!7431 lm!2280))))))

(assert (= (and d!1543133 (not res!2051317)) b!4820301))

(assert (= (and b!4820301 res!2051318) b!4820302))

(declare-fun m!5807702 () Bool)

(assert (=> b!4820302 m!5807702))

(assert (=> d!1543093 d!1543133))

(declare-fun d!1543135 () Bool)

(declare-fun choose!34997 (Hashable!7235 K!16577) (_ BitVec 64))

(assert (=> d!1543135 (= (hash!5327 hashF!1509 key!5428) (choose!34997 hashF!1509 key!5428))))

(declare-fun bs!1161517 () Bool)

(assert (= bs!1161517 d!1543135))

(declare-fun m!5807704 () Bool)

(assert (=> bs!1161517 m!5807704))

(assert (=> d!1543077 d!1543135))

(declare-fun d!1543137 () Bool)

(declare-fun res!2051319 () Bool)

(declare-fun e!3011655 () Bool)

(assert (=> d!1543137 (=> res!2051319 e!3011655)))

(assert (=> d!1543137 (= res!2051319 (is-Nil!54897 (t!362517 (toList!7431 lm!2280))))))

(assert (=> d!1543137 (= (forall!12553 (t!362517 (toList!7431 lm!2280)) lambda!235409) e!3011655)))

(declare-fun b!4820303 () Bool)

(declare-fun e!3011656 () Bool)

(assert (=> b!4820303 (= e!3011655 e!3011656)))

(declare-fun res!2051320 () Bool)

(assert (=> b!4820303 (=> (not res!2051320) (not e!3011656))))

(assert (=> b!4820303 (= res!2051320 (dynLambda!22183 lambda!235409 (h!61331 (t!362517 (toList!7431 lm!2280)))))))

(declare-fun b!4820304 () Bool)

(assert (=> b!4820304 (= e!3011656 (forall!12553 (t!362517 (t!362517 (toList!7431 lm!2280))) lambda!235409))))

(assert (= (and d!1543137 (not res!2051319)) b!4820303))

(assert (= (and b!4820303 res!2051320) b!4820304))

(declare-fun b_lambda!188941 () Bool)

(assert (=> (not b_lambda!188941) (not b!4820303)))

(declare-fun m!5807706 () Bool)

(assert (=> b!4820303 m!5807706))

(declare-fun m!5807708 () Bool)

(assert (=> b!4820304 m!5807708))

(assert (=> b!4820238 d!1543137))

(declare-fun d!1543139 () Bool)

(declare-fun res!2051321 () Bool)

(declare-fun e!3011657 () Bool)

(assert (=> d!1543139 (=> res!2051321 e!3011657)))

(assert (=> d!1543139 (= res!2051321 (and (is-Cons!54896 (t!362516 (apply!13322 lm!2280 lt!1969263))) (= (_1!32329 (h!61330 (t!362516 (apply!13322 lm!2280 lt!1969263)))) key!5428)))))

(assert (=> d!1543139 (= (containsKey!4304 (t!362516 (apply!13322 lm!2280 lt!1969263)) key!5428) e!3011657)))

(declare-fun b!4820305 () Bool)

(declare-fun e!3011658 () Bool)

(assert (=> b!4820305 (= e!3011657 e!3011658)))

(declare-fun res!2051322 () Bool)

(assert (=> b!4820305 (=> (not res!2051322) (not e!3011658))))

(assert (=> b!4820305 (= res!2051322 (is-Cons!54896 (t!362516 (apply!13322 lm!2280 lt!1969263))))))

(declare-fun b!4820306 () Bool)

(assert (=> b!4820306 (= e!3011658 (containsKey!4304 (t!362516 (t!362516 (apply!13322 lm!2280 lt!1969263))) key!5428))))

(assert (= (and d!1543139 (not res!2051321)) b!4820305))

(assert (= (and b!4820305 res!2051322) b!4820306))

(declare-fun m!5807710 () Bool)

(assert (=> b!4820306 m!5807710))

(assert (=> b!4820228 d!1543139))

(assert (=> b!4820222 d!1543131))

(assert (=> b!4820222 d!1543121))

(declare-fun d!1543141 () Bool)

(declare-fun res!2051323 () Bool)

(declare-fun e!3011659 () Bool)

(assert (=> d!1543141 (=> res!2051323 e!3011659)))

(assert (=> d!1543141 (= res!2051323 (not (is-Cons!54896 (_2!32330 (h!61331 (toList!7431 lm!2280))))))))

(assert (=> d!1543141 (= (noDuplicateKeys!2427 (_2!32330 (h!61331 (toList!7431 lm!2280)))) e!3011659)))

(declare-fun b!4820307 () Bool)

(declare-fun e!3011660 () Bool)

(assert (=> b!4820307 (= e!3011659 e!3011660)))

(declare-fun res!2051324 () Bool)

(assert (=> b!4820307 (=> (not res!2051324) (not e!3011660))))

(assert (=> b!4820307 (= res!2051324 (not (containsKey!4304 (t!362516 (_2!32330 (h!61331 (toList!7431 lm!2280)))) (_1!32329 (h!61330 (_2!32330 (h!61331 (toList!7431 lm!2280))))))))))

(declare-fun b!4820308 () Bool)

(assert (=> b!4820308 (= e!3011660 (noDuplicateKeys!2427 (t!362516 (_2!32330 (h!61331 (toList!7431 lm!2280))))))))

(assert (= (and d!1543141 (not res!2051323)) b!4820307))

(assert (= (and b!4820307 res!2051324) b!4820308))

(declare-fun m!5807712 () Bool)

(assert (=> b!4820307 m!5807712))

(declare-fun m!5807714 () Bool)

(assert (=> b!4820308 m!5807714))

(assert (=> bs!1161507 d!1543141))

(declare-fun d!1543143 () Bool)

(declare-fun res!2051329 () Bool)

(declare-fun e!3011665 () Bool)

(assert (=> d!1543143 (=> res!2051329 e!3011665)))

(assert (=> d!1543143 (= res!2051329 (and (is-Cons!54897 (toList!7431 lm!2280)) (= (_1!32330 (h!61331 (toList!7431 lm!2280))) lt!1969263)))))

(assert (=> d!1543143 (= (containsKey!4306 (toList!7431 lm!2280) lt!1969263) e!3011665)))

(declare-fun b!4820313 () Bool)

(declare-fun e!3011666 () Bool)

(assert (=> b!4820313 (= e!3011665 e!3011666)))

(declare-fun res!2051330 () Bool)

(assert (=> b!4820313 (=> (not res!2051330) (not e!3011666))))

(assert (=> b!4820313 (= res!2051330 (and (or (not (is-Cons!54897 (toList!7431 lm!2280))) (bvsle (_1!32330 (h!61331 (toList!7431 lm!2280))) lt!1969263)) (is-Cons!54897 (toList!7431 lm!2280)) (bvslt (_1!32330 (h!61331 (toList!7431 lm!2280))) lt!1969263)))))

(declare-fun b!4820314 () Bool)

(assert (=> b!4820314 (= e!3011666 (containsKey!4306 (t!362517 (toList!7431 lm!2280)) lt!1969263))))

(assert (= (and d!1543143 (not res!2051329)) b!4820313))

(assert (= (and b!4820313 res!2051330) b!4820314))

(declare-fun m!5807716 () Bool)

(assert (=> b!4820314 m!5807716))

(assert (=> d!1543075 d!1543143))

(declare-fun d!1543145 () Bool)

(declare-fun res!2051331 () Bool)

(declare-fun e!3011667 () Bool)

(assert (=> d!1543145 (=> res!2051331 e!3011667)))

(assert (=> d!1543145 (= res!2051331 (is-Nil!54897 (t!362517 (toList!7431 (tail!9372 lm!2280)))))))

(assert (=> d!1543145 (= (forall!12553 (t!362517 (toList!7431 (tail!9372 lm!2280))) lambda!235409) e!3011667)))

(declare-fun b!4820315 () Bool)

(declare-fun e!3011668 () Bool)

(assert (=> b!4820315 (= e!3011667 e!3011668)))

(declare-fun res!2051332 () Bool)

(assert (=> b!4820315 (=> (not res!2051332) (not e!3011668))))

(assert (=> b!4820315 (= res!2051332 (dynLambda!22183 lambda!235409 (h!61331 (t!362517 (toList!7431 (tail!9372 lm!2280))))))))

(declare-fun b!4820316 () Bool)

(assert (=> b!4820316 (= e!3011668 (forall!12553 (t!362517 (t!362517 (toList!7431 (tail!9372 lm!2280)))) lambda!235409))))

(assert (= (and d!1543145 (not res!2051331)) b!4820315))

(assert (= (and b!4820315 res!2051332) b!4820316))

(declare-fun b_lambda!188943 () Bool)

(assert (=> (not b_lambda!188943) (not b!4820315)))

(declare-fun m!5807718 () Bool)

(assert (=> b!4820315 m!5807718))

(declare-fun m!5807720 () Bool)

(assert (=> b!4820316 m!5807720))

(assert (=> b!4820236 d!1543145))

(declare-fun b!4820321 () Bool)

(declare-fun tp!1362272 () Bool)

(declare-fun tp_is_empty!34363 () Bool)

(declare-fun e!3011671 () Bool)

(assert (=> b!4820321 (= e!3011671 (and tp_is_empty!34359 tp_is_empty!34363 tp!1362272))))

(assert (=> b!4820243 (= tp!1362262 e!3011671)))

(assert (= (and b!4820243 (is-Cons!54896 (_2!32330 (h!61331 (toList!7431 lm!2280))))) b!4820321))

(declare-fun b!4820322 () Bool)

(declare-fun e!3011672 () Bool)

(declare-fun tp!1362273 () Bool)

(declare-fun tp!1362274 () Bool)

(assert (=> b!4820322 (= e!3011672 (and tp!1362273 tp!1362274))))

(assert (=> b!4820243 (= tp!1362263 e!3011672)))

(assert (= (and b!4820243 (is-Cons!54897 (t!362517 (toList!7431 lm!2280)))) b!4820322))

(declare-fun b_lambda!188945 () Bool)

(assert (= b_lambda!188943 (or start!499356 b_lambda!188945)))

(declare-fun bs!1161518 () Bool)

(declare-fun d!1543147 () Bool)

(assert (= bs!1161518 (and d!1543147 start!499356)))

(assert (=> bs!1161518 (= (dynLambda!22183 lambda!235409 (h!61331 (t!362517 (toList!7431 (tail!9372 lm!2280))))) (noDuplicateKeys!2427 (_2!32330 (h!61331 (t!362517 (toList!7431 (tail!9372 lm!2280)))))))))

(declare-fun m!5807722 () Bool)

(assert (=> bs!1161518 m!5807722))

(assert (=> b!4820315 d!1543147))

(declare-fun b_lambda!188947 () Bool)

(assert (= b_lambda!188935 (or d!1543083 b_lambda!188947)))

(declare-fun bs!1161519 () Bool)

(declare-fun d!1543149 () Bool)

(assert (= bs!1161519 (and d!1543149 d!1543083)))

(declare-fun allKeysSameHash!1991 (List!55020 (_ BitVec 64) Hashable!7235) Bool)

(assert (=> bs!1161519 (= (dynLambda!22183 lambda!235417 (h!61331 (toList!7431 lm!2280))) (allKeysSameHash!1991 (_2!32330 (h!61331 (toList!7431 lm!2280))) (_1!32330 (h!61331 (toList!7431 lm!2280))) hashF!1509))))

(declare-fun m!5807724 () Bool)

(assert (=> bs!1161519 m!5807724))

(assert (=> b!4820269 d!1543149))

(declare-fun b_lambda!188949 () Bool)

(assert (= b_lambda!188941 (or start!499356 b_lambda!188949)))

(declare-fun bs!1161520 () Bool)

(declare-fun d!1543151 () Bool)

(assert (= bs!1161520 (and d!1543151 start!499356)))

(assert (=> bs!1161520 (= (dynLambda!22183 lambda!235409 (h!61331 (t!362517 (toList!7431 lm!2280)))) (noDuplicateKeys!2427 (_2!32330 (h!61331 (t!362517 (toList!7431 lm!2280))))))))

(declare-fun m!5807726 () Bool)

(assert (=> bs!1161520 m!5807726))

(assert (=> b!4820303 d!1543151))

(push 1)

(assert (not d!1543129))

(assert (not b_lambda!188929))

(assert (not b!4820308))

(assert (not b!4820286))

(assert tp_is_empty!34359)

(assert tp_is_empty!34363)

(assert (not b_lambda!188945))

(assert (not b!4820292))

(assert (not d!1543135))

(assert (not b_lambda!188927))

(assert (not b!4820304))

(assert (not b!4820293))

(assert (not bs!1161518))

(assert (not b!4820296))

(assert (not b!4820321))

(assert (not b!4820322))

(assert (not b_lambda!188949))

(assert (not b!4820306))

(assert (not b!4820316))

(assert (not b!4820314))

(assert (not bs!1161520))

(assert (not b_lambda!188947))

(assert (not bs!1161519))

(assert (not b!4820270))

(assert (not d!1543131))

(assert (not b!4820307))

(assert (not b!4820302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

