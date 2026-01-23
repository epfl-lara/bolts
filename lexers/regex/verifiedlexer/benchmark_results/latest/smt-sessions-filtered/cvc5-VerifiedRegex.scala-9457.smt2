; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499320 () Bool)

(assert start!499320)

(declare-fun b!4820090 () Bool)

(declare-fun e!3011508 () Bool)

(declare-fun e!3011510 () Bool)

(assert (=> b!4820090 (= e!3011508 e!3011510)))

(declare-fun res!2051192 () Bool)

(assert (=> b!4820090 (=> (not res!2051192) (not e!3011510))))

(declare-datatypes ((V!16818 0))(
  ( (V!16819 (val!21563 Int)) )
))
(declare-datatypes ((K!16572 0))(
  ( (K!16573 (val!21564 Int)) )
))
(declare-datatypes ((tuple2!58062 0))(
  ( (tuple2!58063 (_1!32325 K!16572) (_2!32325 V!16818)) )
))
(declare-datatypes ((List!55016 0))(
  ( (Nil!54892) (Cons!54892 (h!61326 tuple2!58062) (t!362512 List!55016)) )
))
(declare-datatypes ((tuple2!58064 0))(
  ( (tuple2!58065 (_1!32326 (_ BitVec 64)) (_2!32326 List!55016)) )
))
(declare-datatypes ((List!55017 0))(
  ( (Nil!54893) (Cons!54893 (h!61327 tuple2!58064) (t!362513 List!55017)) )
))
(declare-datatypes ((ListLongMap!5929 0))(
  ( (ListLongMap!5930 (toList!7429 List!55017)) )
))
(declare-fun lm!2280 () ListLongMap!5929)

(declare-fun lt!1969227 () (_ BitVec 64))

(declare-fun contains!18706 (ListLongMap!5929 (_ BitVec 64)) Bool)

(assert (=> b!4820090 (= res!2051192 (contains!18706 lm!2280 lt!1969227))))

(declare-datatypes ((Hashable!7233 0))(
  ( (HashableExt!7232 (__x!33508 Int)) )
))
(declare-fun hashF!1509 () Hashable!7233)

(declare-fun key!5428 () K!16572)

(declare-fun hash!5322 (Hashable!7233 K!16572) (_ BitVec 64))

(assert (=> b!4820090 (= lt!1969227 (hash!5322 hashF!1509 key!5428))))

(declare-fun b!4820091 () Bool)

(declare-fun res!2051193 () Bool)

(assert (=> b!4820091 (=> (not res!2051193) (not e!3011508))))

(declare-fun allKeysSameHashInMap!2549 (ListLongMap!5929 Hashable!7233) Bool)

(assert (=> b!4820091 (= res!2051193 (allKeysSameHashInMap!2549 lm!2280 hashF!1509))))

(declare-fun b!4820092 () Bool)

(declare-fun res!2051194 () Bool)

(assert (=> b!4820092 (=> (not res!2051194) (not e!3011510))))

(declare-fun containsKey!4301 (List!55016 K!16572) Bool)

(declare-fun apply!13320 (ListLongMap!5929 (_ BitVec 64)) List!55016)

(assert (=> b!4820092 (= res!2051194 (not (containsKey!4301 (apply!13320 lm!2280 lt!1969227) key!5428)))))

(declare-fun res!2051195 () Bool)

(assert (=> start!499320 (=> (not res!2051195) (not e!3011508))))

(declare-fun lambda!235395 () Int)

(declare-fun forall!12551 (List!55017 Int) Bool)

(assert (=> start!499320 (= res!2051195 (forall!12551 (toList!7429 lm!2280) lambda!235395))))

(assert (=> start!499320 e!3011508))

(declare-fun e!3011509 () Bool)

(declare-fun inv!70473 (ListLongMap!5929) Bool)

(assert (=> start!499320 (and (inv!70473 lm!2280) e!3011509)))

(assert (=> start!499320 true))

(declare-fun tp_is_empty!34355 () Bool)

(assert (=> start!499320 tp_is_empty!34355))

(declare-fun b!4820093 () Bool)

(declare-fun size!36625 (List!55017) Int)

(assert (=> b!4820093 (= e!3011510 (< (size!36625 (toList!7429 lm!2280)) 0))))

(declare-fun b!4820094 () Bool)

(declare-fun tp!1362236 () Bool)

(assert (=> b!4820094 (= e!3011509 tp!1362236)))

(assert (= (and start!499320 res!2051195) b!4820091))

(assert (= (and b!4820091 res!2051193) b!4820090))

(assert (= (and b!4820090 res!2051192) b!4820092))

(assert (= (and b!4820092 res!2051194) b!4820093))

(assert (= start!499320 b!4820094))

(declare-fun m!5807504 () Bool)

(assert (=> start!499320 m!5807504))

(declare-fun m!5807506 () Bool)

(assert (=> start!499320 m!5807506))

(declare-fun m!5807508 () Bool)

(assert (=> b!4820093 m!5807508))

(declare-fun m!5807510 () Bool)

(assert (=> b!4820092 m!5807510))

(assert (=> b!4820092 m!5807510))

(declare-fun m!5807512 () Bool)

(assert (=> b!4820092 m!5807512))

(declare-fun m!5807514 () Bool)

(assert (=> b!4820090 m!5807514))

(declare-fun m!5807516 () Bool)

(assert (=> b!4820090 m!5807516))

(declare-fun m!5807518 () Bool)

(assert (=> b!4820091 m!5807518))

(push 1)

(assert (not b!4820094))

(assert (not b!4820092))

(assert (not b!4820090))

(assert (not start!499320))

(assert (not b!4820093))

(assert (not b!4820091))

(assert tp_is_empty!34355)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1161486 () Bool)

(declare-fun d!1543038 () Bool)

(assert (= bs!1161486 (and d!1543038 start!499320)))

(declare-fun lambda!235401 () Int)

(assert (=> bs!1161486 (not (= lambda!235401 lambda!235395))))

(assert (=> d!1543038 true))

(assert (=> d!1543038 (= (allKeysSameHashInMap!2549 lm!2280 hashF!1509) (forall!12551 (toList!7429 lm!2280) lambda!235401))))

(declare-fun bs!1161487 () Bool)

(assert (= bs!1161487 d!1543038))

(declare-fun m!5807536 () Bool)

(assert (=> bs!1161487 m!5807536))

(assert (=> b!4820091 d!1543038))

(declare-fun d!1543042 () Bool)

(declare-fun res!2051214 () Bool)

(declare-fun e!3011528 () Bool)

(assert (=> d!1543042 (=> res!2051214 e!3011528)))

(assert (=> d!1543042 (= res!2051214 (and (is-Cons!54892 (apply!13320 lm!2280 lt!1969227)) (= (_1!32325 (h!61326 (apply!13320 lm!2280 lt!1969227))) key!5428)))))

(assert (=> d!1543042 (= (containsKey!4301 (apply!13320 lm!2280 lt!1969227) key!5428) e!3011528)))

(declare-fun b!4820118 () Bool)

(declare-fun e!3011529 () Bool)

(assert (=> b!4820118 (= e!3011528 e!3011529)))

(declare-fun res!2051217 () Bool)

(assert (=> b!4820118 (=> (not res!2051217) (not e!3011529))))

(assert (=> b!4820118 (= res!2051217 (is-Cons!54892 (apply!13320 lm!2280 lt!1969227)))))

(declare-fun b!4820119 () Bool)

(assert (=> b!4820119 (= e!3011529 (containsKey!4301 (t!362512 (apply!13320 lm!2280 lt!1969227)) key!5428))))

(assert (= (and d!1543042 (not res!2051214)) b!4820118))

(assert (= (and b!4820118 res!2051217) b!4820119))

(declare-fun m!5807538 () Bool)

(assert (=> b!4820119 m!5807538))

(assert (=> b!4820092 d!1543042))

(declare-fun d!1543044 () Bool)

(declare-datatypes ((Option!13456 0))(
  ( (None!13455) (Some!13455 (v!49124 List!55016)) )
))
(declare-fun get!18783 (Option!13456) List!55016)

(declare-fun getValueByKey!2583 (List!55017 (_ BitVec 64)) Option!13456)

(assert (=> d!1543044 (= (apply!13320 lm!2280 lt!1969227) (get!18783 (getValueByKey!2583 (toList!7429 lm!2280) lt!1969227)))))

(declare-fun bs!1161488 () Bool)

(assert (= bs!1161488 d!1543044))

(declare-fun m!5807540 () Bool)

(assert (=> bs!1161488 m!5807540))

(assert (=> bs!1161488 m!5807540))

(declare-fun m!5807542 () Bool)

(assert (=> bs!1161488 m!5807542))

(assert (=> b!4820092 d!1543044))

(declare-fun d!1543046 () Bool)

(declare-fun e!3011536 () Bool)

(assert (=> d!1543046 e!3011536))

(declare-fun res!2051222 () Bool)

(assert (=> d!1543046 (=> res!2051222 e!3011536)))

(declare-fun lt!1969241 () Bool)

(assert (=> d!1543046 (= res!2051222 (not lt!1969241))))

(declare-fun lt!1969240 () Bool)

(assert (=> d!1543046 (= lt!1969241 lt!1969240)))

(declare-datatypes ((Unit!142284 0))(
  ( (Unit!142285) )
))
(declare-fun lt!1969239 () Unit!142284)

(declare-fun e!3011537 () Unit!142284)

(assert (=> d!1543046 (= lt!1969239 e!3011537)))

(declare-fun c!821387 () Bool)

(assert (=> d!1543046 (= c!821387 lt!1969240)))

(declare-fun containsKey!4303 (List!55017 (_ BitVec 64)) Bool)

(assert (=> d!1543046 (= lt!1969240 (containsKey!4303 (toList!7429 lm!2280) lt!1969227))))

(assert (=> d!1543046 (= (contains!18706 lm!2280 lt!1969227) lt!1969241)))

(declare-fun b!4820130 () Bool)

(declare-fun lt!1969242 () Unit!142284)

(assert (=> b!4820130 (= e!3011537 lt!1969242)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2369 (List!55017 (_ BitVec 64)) Unit!142284)

(assert (=> b!4820130 (= lt!1969242 (lemmaContainsKeyImpliesGetValueByKeyDefined!2369 (toList!7429 lm!2280) lt!1969227))))

(declare-fun isDefined!10572 (Option!13456) Bool)

(assert (=> b!4820130 (isDefined!10572 (getValueByKey!2583 (toList!7429 lm!2280) lt!1969227))))

(declare-fun b!4820131 () Bool)

(declare-fun Unit!142286 () Unit!142284)

(assert (=> b!4820131 (= e!3011537 Unit!142286)))

(declare-fun b!4820132 () Bool)

(assert (=> b!4820132 (= e!3011536 (isDefined!10572 (getValueByKey!2583 (toList!7429 lm!2280) lt!1969227)))))

(assert (= (and d!1543046 c!821387) b!4820130))

(assert (= (and d!1543046 (not c!821387)) b!4820131))

(assert (= (and d!1543046 (not res!2051222)) b!4820132))

(declare-fun m!5807550 () Bool)

(assert (=> d!1543046 m!5807550))

(declare-fun m!5807552 () Bool)

(assert (=> b!4820130 m!5807552))

(assert (=> b!4820130 m!5807540))

(assert (=> b!4820130 m!5807540))

(declare-fun m!5807554 () Bool)

(assert (=> b!4820130 m!5807554))

(assert (=> b!4820132 m!5807540))

(assert (=> b!4820132 m!5807540))

(assert (=> b!4820132 m!5807554))

(assert (=> b!4820090 d!1543046))

(declare-fun d!1543052 () Bool)

(declare-fun hash!5324 (Hashable!7233 K!16572) (_ BitVec 64))

(assert (=> d!1543052 (= (hash!5322 hashF!1509 key!5428) (hash!5324 hashF!1509 key!5428))))

(declare-fun bs!1161490 () Bool)

(assert (= bs!1161490 d!1543052))

(declare-fun m!5807556 () Bool)

(assert (=> bs!1161490 m!5807556))

(assert (=> b!4820090 d!1543052))

(declare-fun d!1543054 () Bool)

(declare-fun res!2051227 () Bool)

(declare-fun e!3011545 () Bool)

(assert (=> d!1543054 (=> res!2051227 e!3011545)))

(assert (=> d!1543054 (= res!2051227 (is-Nil!54893 (toList!7429 lm!2280)))))

(assert (=> d!1543054 (= (forall!12551 (toList!7429 lm!2280) lambda!235395) e!3011545)))

(declare-fun b!4820143 () Bool)

(declare-fun e!3011546 () Bool)

(assert (=> b!4820143 (= e!3011545 e!3011546)))

(declare-fun res!2051228 () Bool)

(assert (=> b!4820143 (=> (not res!2051228) (not e!3011546))))

(declare-fun dynLambda!22182 (Int tuple2!58064) Bool)

(assert (=> b!4820143 (= res!2051228 (dynLambda!22182 lambda!235395 (h!61327 (toList!7429 lm!2280))))))

(declare-fun b!4820144 () Bool)

(assert (=> b!4820144 (= e!3011546 (forall!12551 (t!362513 (toList!7429 lm!2280)) lambda!235395))))

(assert (= (and d!1543054 (not res!2051227)) b!4820143))

(assert (= (and b!4820143 res!2051228) b!4820144))

(declare-fun b_lambda!188915 () Bool)

(assert (=> (not b_lambda!188915) (not b!4820143)))

(declare-fun m!5807560 () Bool)

(assert (=> b!4820143 m!5807560))

(declare-fun m!5807562 () Bool)

(assert (=> b!4820144 m!5807562))

(assert (=> start!499320 d!1543054))

(declare-fun d!1543058 () Bool)

(declare-fun isStrictlySorted!962 (List!55017) Bool)

(assert (=> d!1543058 (= (inv!70473 lm!2280) (isStrictlySorted!962 (toList!7429 lm!2280)))))

(declare-fun bs!1161491 () Bool)

(assert (= bs!1161491 d!1543058))

(declare-fun m!5807564 () Bool)

(assert (=> bs!1161491 m!5807564))

(assert (=> start!499320 d!1543058))

(declare-fun d!1543060 () Bool)

(declare-fun lt!1969248 () Int)

(assert (=> d!1543060 (>= lt!1969248 0)))

(declare-fun e!3011549 () Int)

(assert (=> d!1543060 (= lt!1969248 e!3011549)))

(declare-fun c!821393 () Bool)

(assert (=> d!1543060 (= c!821393 (is-Nil!54893 (toList!7429 lm!2280)))))

(assert (=> d!1543060 (= (size!36625 (toList!7429 lm!2280)) lt!1969248)))

(declare-fun b!4820149 () Bool)

(assert (=> b!4820149 (= e!3011549 0)))

(declare-fun b!4820150 () Bool)

(assert (=> b!4820150 (= e!3011549 (+ 1 (size!36625 (t!362513 (toList!7429 lm!2280)))))))

(assert (= (and d!1543060 c!821393) b!4820149))

(assert (= (and d!1543060 (not c!821393)) b!4820150))

(declare-fun m!5807566 () Bool)

(assert (=> b!4820150 m!5807566))

(assert (=> b!4820093 d!1543060))

(declare-fun b!4820155 () Bool)

(declare-fun e!3011552 () Bool)

(declare-fun tp!1362244 () Bool)

(declare-fun tp!1362245 () Bool)

(assert (=> b!4820155 (= e!3011552 (and tp!1362244 tp!1362245))))

(assert (=> b!4820094 (= tp!1362236 e!3011552)))

(assert (= (and b!4820094 (is-Cons!54893 (toList!7429 lm!2280))) b!4820155))

(declare-fun b_lambda!188917 () Bool)

(assert (= b_lambda!188915 (or start!499320 b_lambda!188917)))

(declare-fun bs!1161492 () Bool)

(declare-fun d!1543062 () Bool)

(assert (= bs!1161492 (and d!1543062 start!499320)))

(declare-fun noDuplicateKeys!2426 (List!55016) Bool)

(assert (=> bs!1161492 (= (dynLambda!22182 lambda!235395 (h!61327 (toList!7429 lm!2280))) (noDuplicateKeys!2426 (_2!32326 (h!61327 (toList!7429 lm!2280)))))))

(declare-fun m!5807568 () Bool)

(assert (=> bs!1161492 m!5807568))

(assert (=> b!4820143 d!1543062))

(push 1)

(assert (not bs!1161492))

(assert (not b!4820150))

(assert (not b!4820132))

(assert (not d!1543052))

(assert (not d!1543038))

(assert (not d!1543058))

(assert (not b!4820155))

(assert (not b!4820119))

(assert (not d!1543046))

(assert (not b_lambda!188917))

(assert (not b!4820130))

(assert (not d!1543044))

(assert tp_is_empty!34355)

(assert (not b!4820144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

