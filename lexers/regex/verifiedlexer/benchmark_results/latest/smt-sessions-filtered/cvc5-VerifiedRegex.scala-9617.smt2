; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!505674 () Bool)

(assert start!505674)

(declare-fun b!4849234 () Bool)

(declare-fun e!3031195 () Bool)

(declare-fun e!3031198 () Bool)

(assert (=> b!4849234 (= e!3031195 e!3031198)))

(declare-fun res!2069371 () Bool)

(assert (=> b!4849234 (=> (not res!2069371) (not e!3031198))))

(declare-datatypes ((K!17372 0))(
  ( (K!17373 (val!22203 Int)) )
))
(declare-datatypes ((V!17618 0))(
  ( (V!17619 (val!22204 Int)) )
))
(declare-datatypes ((tuple2!59278 0))(
  ( (tuple2!59279 (_1!32933 K!17372) (_2!32933 V!17618)) )
))
(declare-datatypes ((List!55696 0))(
  ( (Nil!55572) (Cons!55572 (h!62009 tuple2!59278) (t!363192 List!55696)) )
))
(declare-datatypes ((tuple2!59280 0))(
  ( (tuple2!59281 (_1!32934 (_ BitVec 64)) (_2!32934 List!55696)) )
))
(declare-datatypes ((List!55697 0))(
  ( (Nil!55573) (Cons!55573 (h!62010 tuple2!59280) (t!363193 List!55697)) )
))
(declare-datatypes ((ListLongMap!6477 0))(
  ( (ListLongMap!6478 (toList!7867 List!55697)) )
))
(declare-fun lm!2646 () ListLongMap!6477)

(declare-fun lt!1989261 () (_ BitVec 64))

(declare-fun contains!19233 (ListLongMap!6477 (_ BitVec 64)) Bool)

(assert (=> b!4849234 (= res!2069371 (contains!19233 lm!2646 lt!1989261))))

(declare-datatypes ((Hashable!7507 0))(
  ( (HashableExt!7506 (__x!33782 Int)) )
))
(declare-fun hashF!1641 () Hashable!7507)

(declare-fun key!6445 () K!17372)

(declare-fun hash!5609 (Hashable!7507 K!17372) (_ BitVec 64))

(assert (=> b!4849234 (= lt!1989261 (hash!5609 hashF!1641 key!6445))))

(declare-fun b!4849235 () Bool)

(declare-fun res!2069370 () Bool)

(declare-fun e!3031196 () Bool)

(assert (=> b!4849235 (=> res!2069370 e!3031196)))

(declare-fun lt!1989259 () ListLongMap!6477)

(declare-fun allKeysSameHashInMap!2823 (ListLongMap!6477 Hashable!7507) Bool)

(assert (=> b!4849235 (= res!2069370 (not (allKeysSameHashInMap!2823 lt!1989259 hashF!1641)))))

(declare-fun b!4849236 () Bool)

(declare-fun res!2069368 () Bool)

(assert (=> b!4849236 (=> (not res!2069368) (not e!3031195))))

(assert (=> b!4849236 (= res!2069368 (allKeysSameHashInMap!2823 lm!2646 hashF!1641))))

(declare-fun b!4849237 () Bool)

(declare-fun e!3031199 () Bool)

(declare-fun tp!1364733 () Bool)

(assert (=> b!4849237 (= e!3031199 tp!1364733)))

(declare-fun res!2069366 () Bool)

(assert (=> start!505674 (=> (not res!2069366) (not e!3031195))))

(declare-fun lambda!242633 () Int)

(declare-fun forall!12960 (List!55697 Int) Bool)

(assert (=> start!505674 (= res!2069366 (forall!12960 (toList!7867 lm!2646) lambda!242633))))

(assert (=> start!505674 e!3031195))

(declare-fun inv!71259 (ListLongMap!6477) Bool)

(assert (=> start!505674 (and (inv!71259 lm!2646) e!3031199)))

(assert (=> start!505674 true))

(declare-fun tp_is_empty!35213 () Bool)

(assert (=> start!505674 tp_is_empty!35213))

(declare-fun b!4849238 () Bool)

(assert (=> b!4849238 (= e!3031196 (contains!19233 lt!1989259 lt!1989261))))

(declare-fun b!4849239 () Bool)

(declare-fun e!3031197 () Bool)

(declare-fun e!3031200 () Bool)

(assert (=> b!4849239 (= e!3031197 e!3031200)))

(declare-fun res!2069369 () Bool)

(assert (=> b!4849239 (=> res!2069369 e!3031200)))

(declare-fun containsKey!4695 (List!55696 K!17372) Bool)

(assert (=> b!4849239 (= res!2069369 (containsKey!4695 (_2!32934 (h!62010 (toList!7867 lm!2646))) key!6445))))

(declare-fun apply!13450 (ListLongMap!6477 (_ BitVec 64)) List!55696)

(assert (=> b!4849239 (not (containsKey!4695 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646)))) key!6445))))

(declare-datatypes ((Unit!145714 0))(
  ( (Unit!145715) )
))
(declare-fun lt!1989256 () Unit!145714)

(declare-fun lemmaNotSameHashThenCannotContainKey!257 (ListLongMap!6477 K!17372 (_ BitVec 64) Hashable!7507) Unit!145714)

(assert (=> b!4849239 (= lt!1989256 (lemmaNotSameHashThenCannotContainKey!257 lm!2646 key!6445 (_1!32934 (h!62010 (toList!7867 lm!2646))) hashF!1641))))

(declare-fun b!4849240 () Bool)

(assert (=> b!4849240 (= e!3031198 (not e!3031197))))

(declare-fun res!2069364 () Bool)

(assert (=> b!4849240 (=> res!2069364 e!3031197)))

(declare-fun lt!1989255 () List!55696)

(declare-datatypes ((Option!13684 0))(
  ( (None!13683) (Some!13683 (v!49459 tuple2!59278)) )
))
(declare-fun isDefined!10776 (Option!13684) Bool)

(declare-fun getPair!1097 (List!55696 K!17372) Option!13684)

(assert (=> b!4849240 (= res!2069364 (not (isDefined!10776 (getPair!1097 lt!1989255 key!6445))))))

(declare-fun lt!1989258 () Unit!145714)

(declare-fun lt!1989260 () tuple2!59280)

(declare-fun forallContained!4548 (List!55697 Int tuple2!59280) Unit!145714)

(assert (=> b!4849240 (= lt!1989258 (forallContained!4548 (toList!7867 lm!2646) lambda!242633 lt!1989260))))

(declare-fun contains!19234 (List!55697 tuple2!59280) Bool)

(assert (=> b!4849240 (contains!19234 (toList!7867 lm!2646) lt!1989260)))

(assert (=> b!4849240 (= lt!1989260 (tuple2!59281 lt!1989261 lt!1989255))))

(declare-fun lt!1989257 () Unit!145714)

(declare-fun lemmaGetValueImpliesTupleContained!774 (ListLongMap!6477 (_ BitVec 64) List!55696) Unit!145714)

(assert (=> b!4849240 (= lt!1989257 (lemmaGetValueImpliesTupleContained!774 lm!2646 lt!1989261 lt!1989255))))

(assert (=> b!4849240 (= lt!1989255 (apply!13450 lm!2646 lt!1989261))))

(declare-fun b!4849241 () Bool)

(assert (=> b!4849241 (= e!3031200 e!3031196)))

(declare-fun res!2069367 () Bool)

(assert (=> b!4849241 (=> res!2069367 e!3031196)))

(assert (=> b!4849241 (= res!2069367 (not (forall!12960 (toList!7867 lt!1989259) lambda!242633)))))

(declare-fun tail!9537 (ListLongMap!6477) ListLongMap!6477)

(assert (=> b!4849241 (= lt!1989259 (tail!9537 lm!2646))))

(declare-fun b!4849242 () Bool)

(declare-fun res!2069365 () Bool)

(assert (=> b!4849242 (=> res!2069365 e!3031197)))

(assert (=> b!4849242 (= res!2069365 (or (and (is-Cons!55573 (toList!7867 lm!2646)) (= (_1!32934 (h!62010 (toList!7867 lm!2646))) lt!1989261)) (not (is-Cons!55573 (toList!7867 lm!2646))) (= lt!1989261 (_1!32934 (h!62010 (toList!7867 lm!2646))))))))

(assert (= (and start!505674 res!2069366) b!4849236))

(assert (= (and b!4849236 res!2069368) b!4849234))

(assert (= (and b!4849234 res!2069371) b!4849240))

(assert (= (and b!4849240 (not res!2069364)) b!4849242))

(assert (= (and b!4849242 (not res!2069365)) b!4849239))

(assert (= (and b!4849239 (not res!2069369)) b!4849241))

(assert (= (and b!4849241 (not res!2069367)) b!4849235))

(assert (= (and b!4849235 (not res!2069370)) b!4849238))

(assert (= start!505674 b!4849237))

(declare-fun m!5847380 () Bool)

(assert (=> start!505674 m!5847380))

(declare-fun m!5847382 () Bool)

(assert (=> start!505674 m!5847382))

(declare-fun m!5847384 () Bool)

(assert (=> b!4849236 m!5847384))

(declare-fun m!5847386 () Bool)

(assert (=> b!4849234 m!5847386))

(declare-fun m!5847388 () Bool)

(assert (=> b!4849234 m!5847388))

(declare-fun m!5847390 () Bool)

(assert (=> b!4849240 m!5847390))

(declare-fun m!5847392 () Bool)

(assert (=> b!4849240 m!5847392))

(declare-fun m!5847394 () Bool)

(assert (=> b!4849240 m!5847394))

(assert (=> b!4849240 m!5847390))

(declare-fun m!5847396 () Bool)

(assert (=> b!4849240 m!5847396))

(declare-fun m!5847398 () Bool)

(assert (=> b!4849240 m!5847398))

(declare-fun m!5847400 () Bool)

(assert (=> b!4849240 m!5847400))

(declare-fun m!5847402 () Bool)

(assert (=> b!4849241 m!5847402))

(declare-fun m!5847404 () Bool)

(assert (=> b!4849241 m!5847404))

(declare-fun m!5847406 () Bool)

(assert (=> b!4849235 m!5847406))

(declare-fun m!5847408 () Bool)

(assert (=> b!4849239 m!5847408))

(declare-fun m!5847410 () Bool)

(assert (=> b!4849239 m!5847410))

(assert (=> b!4849239 m!5847410))

(declare-fun m!5847412 () Bool)

(assert (=> b!4849239 m!5847412))

(declare-fun m!5847414 () Bool)

(assert (=> b!4849239 m!5847414))

(declare-fun m!5847416 () Bool)

(assert (=> b!4849238 m!5847416))

(push 1)

(assert (not start!505674))

(assert (not b!4849239))

(assert (not b!4849236))

(assert (not b!4849240))

(assert (not b!4849241))

(assert (not b!4849238))

(assert (not b!4849237))

(assert (not b!4849234))

(assert (not b!4849235))

(assert tp_is_empty!35213)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1556090 () Bool)

(declare-fun res!2069400 () Bool)

(declare-fun e!3031223 () Bool)

(assert (=> d!1556090 (=> res!2069400 e!3031223)))

(assert (=> d!1556090 (= res!2069400 (and (is-Cons!55572 (_2!32934 (h!62010 (toList!7867 lm!2646)))) (= (_1!32933 (h!62009 (_2!32934 (h!62010 (toList!7867 lm!2646))))) key!6445)))))

(assert (=> d!1556090 (= (containsKey!4695 (_2!32934 (h!62010 (toList!7867 lm!2646))) key!6445) e!3031223)))

(declare-fun b!4849274 () Bool)

(declare-fun e!3031224 () Bool)

(assert (=> b!4849274 (= e!3031223 e!3031224)))

(declare-fun res!2069401 () Bool)

(assert (=> b!4849274 (=> (not res!2069401) (not e!3031224))))

(assert (=> b!4849274 (= res!2069401 (is-Cons!55572 (_2!32934 (h!62010 (toList!7867 lm!2646)))))))

(declare-fun b!4849275 () Bool)

(assert (=> b!4849275 (= e!3031224 (containsKey!4695 (t!363192 (_2!32934 (h!62010 (toList!7867 lm!2646)))) key!6445))))

(assert (= (and d!1556090 (not res!2069400)) b!4849274))

(assert (= (and b!4849274 res!2069401) b!4849275))

(declare-fun m!5847456 () Bool)

(assert (=> b!4849275 m!5847456))

(assert (=> b!4849239 d!1556090))

(declare-fun d!1556092 () Bool)

(declare-fun res!2069402 () Bool)

(declare-fun e!3031225 () Bool)

(assert (=> d!1556092 (=> res!2069402 e!3031225)))

(assert (=> d!1556092 (= res!2069402 (and (is-Cons!55572 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646))))) (= (_1!32933 (h!62009 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646)))))) key!6445)))))

(assert (=> d!1556092 (= (containsKey!4695 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646)))) key!6445) e!3031225)))

(declare-fun b!4849276 () Bool)

(declare-fun e!3031226 () Bool)

(assert (=> b!4849276 (= e!3031225 e!3031226)))

(declare-fun res!2069403 () Bool)

(assert (=> b!4849276 (=> (not res!2069403) (not e!3031226))))

(assert (=> b!4849276 (= res!2069403 (is-Cons!55572 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646))))))))

(declare-fun b!4849277 () Bool)

(assert (=> b!4849277 (= e!3031226 (containsKey!4695 (t!363192 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646))))) key!6445))))

(assert (= (and d!1556092 (not res!2069402)) b!4849276))

(assert (= (and b!4849276 res!2069403) b!4849277))

(declare-fun m!5847458 () Bool)

(assert (=> b!4849277 m!5847458))

(assert (=> b!4849239 d!1556092))

(declare-fun d!1556094 () Bool)

(declare-datatypes ((Option!13686 0))(
  ( (None!13685) (Some!13685 (v!49462 List!55696)) )
))
(declare-fun get!19049 (Option!13686) List!55696)

(declare-fun getValueByKey!2735 (List!55697 (_ BitVec 64)) Option!13686)

(assert (=> d!1556094 (= (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646)))) (get!19049 (getValueByKey!2735 (toList!7867 lm!2646) (_1!32934 (h!62010 (toList!7867 lm!2646))))))))

(declare-fun bs!1172671 () Bool)

(assert (= bs!1172671 d!1556094))

(declare-fun m!5847460 () Bool)

(assert (=> bs!1172671 m!5847460))

(assert (=> bs!1172671 m!5847460))

(declare-fun m!5847462 () Bool)

(assert (=> bs!1172671 m!5847462))

(assert (=> b!4849239 d!1556094))

(declare-fun bs!1172672 () Bool)

(declare-fun d!1556096 () Bool)

(assert (= bs!1172672 (and d!1556096 start!505674)))

(declare-fun lambda!242643 () Int)

(assert (=> bs!1172672 (= lambda!242643 lambda!242633)))

(assert (=> d!1556096 (not (containsKey!4695 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646)))) key!6445))))

(declare-fun lt!1989285 () Unit!145714)

(declare-fun choose!35478 (ListLongMap!6477 K!17372 (_ BitVec 64) Hashable!7507) Unit!145714)

(assert (=> d!1556096 (= lt!1989285 (choose!35478 lm!2646 key!6445 (_1!32934 (h!62010 (toList!7867 lm!2646))) hashF!1641))))

(assert (=> d!1556096 (forall!12960 (toList!7867 lm!2646) lambda!242643)))

(assert (=> d!1556096 (= (lemmaNotSameHashThenCannotContainKey!257 lm!2646 key!6445 (_1!32934 (h!62010 (toList!7867 lm!2646))) hashF!1641) lt!1989285)))

(declare-fun bs!1172673 () Bool)

(assert (= bs!1172673 d!1556096))

(assert (=> bs!1172673 m!5847410))

(assert (=> bs!1172673 m!5847410))

(assert (=> bs!1172673 m!5847412))

(declare-fun m!5847464 () Bool)

(assert (=> bs!1172673 m!5847464))

(declare-fun m!5847466 () Bool)

(assert (=> bs!1172673 m!5847466))

(assert (=> b!4849239 d!1556096))

(declare-fun d!1556098 () Bool)

(declare-fun e!3031231 () Bool)

(assert (=> d!1556098 e!3031231))

(declare-fun res!2069406 () Bool)

(assert (=> d!1556098 (=> res!2069406 e!3031231)))

(declare-fun lt!1989296 () Bool)

(assert (=> d!1556098 (= res!2069406 (not lt!1989296))))

(declare-fun lt!1989294 () Bool)

(assert (=> d!1556098 (= lt!1989296 lt!1989294)))

(declare-fun lt!1989297 () Unit!145714)

(declare-fun e!3031232 () Unit!145714)

(assert (=> d!1556098 (= lt!1989297 e!3031232)))

(declare-fun c!825307 () Bool)

(assert (=> d!1556098 (= c!825307 lt!1989294)))

(declare-fun containsKey!4697 (List!55697 (_ BitVec 64)) Bool)

(assert (=> d!1556098 (= lt!1989294 (containsKey!4697 (toList!7867 lm!2646) lt!1989261))))

(assert (=> d!1556098 (= (contains!19233 lm!2646 lt!1989261) lt!1989296)))

(declare-fun b!4849284 () Bool)

(declare-fun lt!1989295 () Unit!145714)

(assert (=> b!4849284 (= e!3031232 lt!1989295)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2507 (List!55697 (_ BitVec 64)) Unit!145714)

(assert (=> b!4849284 (= lt!1989295 (lemmaContainsKeyImpliesGetValueByKeyDefined!2507 (toList!7867 lm!2646) lt!1989261))))

(declare-fun isDefined!10778 (Option!13686) Bool)

(assert (=> b!4849284 (isDefined!10778 (getValueByKey!2735 (toList!7867 lm!2646) lt!1989261))))

(declare-fun b!4849285 () Bool)

(declare-fun Unit!145718 () Unit!145714)

(assert (=> b!4849285 (= e!3031232 Unit!145718)))

(declare-fun b!4849286 () Bool)

(assert (=> b!4849286 (= e!3031231 (isDefined!10778 (getValueByKey!2735 (toList!7867 lm!2646) lt!1989261)))))

(assert (= (and d!1556098 c!825307) b!4849284))

(assert (= (and d!1556098 (not c!825307)) b!4849285))

(assert (= (and d!1556098 (not res!2069406)) b!4849286))

(declare-fun m!5847468 () Bool)

(assert (=> d!1556098 m!5847468))

(declare-fun m!5847470 () Bool)

(assert (=> b!4849284 m!5847470))

(declare-fun m!5847472 () Bool)

(assert (=> b!4849284 m!5847472))

(assert (=> b!4849284 m!5847472))

(declare-fun m!5847474 () Bool)

(assert (=> b!4849284 m!5847474))

(assert (=> b!4849286 m!5847472))

(assert (=> b!4849286 m!5847472))

(assert (=> b!4849286 m!5847474))

(assert (=> b!4849234 d!1556098))

(declare-fun d!1556102 () Bool)

(declare-fun hash!5612 (Hashable!7507 K!17372) (_ BitVec 64))

(assert (=> d!1556102 (= (hash!5609 hashF!1641 key!6445) (hash!5612 hashF!1641 key!6445))))

(declare-fun bs!1172674 () Bool)

(assert (= bs!1172674 d!1556102))

(declare-fun m!5847476 () Bool)

(assert (=> bs!1172674 m!5847476))

(assert (=> b!4849234 d!1556102))

(declare-fun d!1556104 () Bool)

(declare-fun res!2069415 () Bool)

(declare-fun e!3031241 () Bool)

(assert (=> d!1556104 (=> res!2069415 e!3031241)))

(assert (=> d!1556104 (= res!2069415 (is-Nil!55573 (toList!7867 lm!2646)))))

(assert (=> d!1556104 (= (forall!12960 (toList!7867 lm!2646) lambda!242633) e!3031241)))

(declare-fun b!4849295 () Bool)

(declare-fun e!3031242 () Bool)

(assert (=> b!4849295 (= e!3031241 e!3031242)))

(declare-fun res!2069416 () Bool)

(assert (=> b!4849295 (=> (not res!2069416) (not e!3031242))))

(declare-fun dynLambda!22361 (Int tuple2!59280) Bool)

(assert (=> b!4849295 (= res!2069416 (dynLambda!22361 lambda!242633 (h!62010 (toList!7867 lm!2646))))))

(declare-fun b!4849296 () Bool)

(assert (=> b!4849296 (= e!3031242 (forall!12960 (t!363193 (toList!7867 lm!2646)) lambda!242633))))

(assert (= (and d!1556104 (not res!2069415)) b!4849295))

(assert (= (and b!4849295 res!2069416) b!4849296))

(declare-fun b_lambda!192707 () Bool)

(assert (=> (not b_lambda!192707) (not b!4849295)))

(declare-fun m!5847478 () Bool)

(assert (=> b!4849295 m!5847478))

(declare-fun m!5847480 () Bool)

(assert (=> b!4849296 m!5847480))

(assert (=> start!505674 d!1556104))

(declare-fun d!1556106 () Bool)

(declare-fun isStrictlySorted!1084 (List!55697) Bool)

(assert (=> d!1556106 (= (inv!71259 lm!2646) (isStrictlySorted!1084 (toList!7867 lm!2646)))))

(declare-fun bs!1172675 () Bool)

(assert (= bs!1172675 d!1556106))

(declare-fun m!5847482 () Bool)

(assert (=> bs!1172675 m!5847482))

(assert (=> start!505674 d!1556106))

(declare-fun d!1556108 () Bool)

(declare-fun e!3031243 () Bool)

(assert (=> d!1556108 e!3031243))

(declare-fun res!2069417 () Bool)

(assert (=> d!1556108 (=> res!2069417 e!3031243)))

(declare-fun lt!1989300 () Bool)

(assert (=> d!1556108 (= res!2069417 (not lt!1989300))))

(declare-fun lt!1989298 () Bool)

(assert (=> d!1556108 (= lt!1989300 lt!1989298)))

(declare-fun lt!1989301 () Unit!145714)

(declare-fun e!3031244 () Unit!145714)

(assert (=> d!1556108 (= lt!1989301 e!3031244)))

(declare-fun c!825308 () Bool)

(assert (=> d!1556108 (= c!825308 lt!1989298)))

(assert (=> d!1556108 (= lt!1989298 (containsKey!4697 (toList!7867 lt!1989259) lt!1989261))))

(assert (=> d!1556108 (= (contains!19233 lt!1989259 lt!1989261) lt!1989300)))

(declare-fun b!4849297 () Bool)

(declare-fun lt!1989299 () Unit!145714)

(assert (=> b!4849297 (= e!3031244 lt!1989299)))

(assert (=> b!4849297 (= lt!1989299 (lemmaContainsKeyImpliesGetValueByKeyDefined!2507 (toList!7867 lt!1989259) lt!1989261))))

(assert (=> b!4849297 (isDefined!10778 (getValueByKey!2735 (toList!7867 lt!1989259) lt!1989261))))

(declare-fun b!4849298 () Bool)

(declare-fun Unit!145719 () Unit!145714)

(assert (=> b!4849298 (= e!3031244 Unit!145719)))

(declare-fun b!4849299 () Bool)

(assert (=> b!4849299 (= e!3031243 (isDefined!10778 (getValueByKey!2735 (toList!7867 lt!1989259) lt!1989261)))))

(assert (= (and d!1556108 c!825308) b!4849297))

(assert (= (and d!1556108 (not c!825308)) b!4849298))

(assert (= (and d!1556108 (not res!2069417)) b!4849299))

(declare-fun m!5847484 () Bool)

(assert (=> d!1556108 m!5847484))

(declare-fun m!5847486 () Bool)

(assert (=> b!4849297 m!5847486))

(declare-fun m!5847488 () Bool)

(assert (=> b!4849297 m!5847488))

(assert (=> b!4849297 m!5847488))

(declare-fun m!5847490 () Bool)

(assert (=> b!4849297 m!5847490))

(assert (=> b!4849299 m!5847488))

(assert (=> b!4849299 m!5847488))

(assert (=> b!4849299 m!5847490))

(assert (=> b!4849238 d!1556108))

(declare-fun d!1556110 () Bool)

(declare-fun res!2069418 () Bool)

(declare-fun e!3031245 () Bool)

(assert (=> d!1556110 (=> res!2069418 e!3031245)))

(assert (=> d!1556110 (= res!2069418 (is-Nil!55573 (toList!7867 lt!1989259)))))

(assert (=> d!1556110 (= (forall!12960 (toList!7867 lt!1989259) lambda!242633) e!3031245)))

(declare-fun b!4849300 () Bool)

(declare-fun e!3031246 () Bool)

(assert (=> b!4849300 (= e!3031245 e!3031246)))

(declare-fun res!2069419 () Bool)

(assert (=> b!4849300 (=> (not res!2069419) (not e!3031246))))

(assert (=> b!4849300 (= res!2069419 (dynLambda!22361 lambda!242633 (h!62010 (toList!7867 lt!1989259))))))

(declare-fun b!4849301 () Bool)

(assert (=> b!4849301 (= e!3031246 (forall!12960 (t!363193 (toList!7867 lt!1989259)) lambda!242633))))

(assert (= (and d!1556110 (not res!2069418)) b!4849300))

(assert (= (and b!4849300 res!2069419) b!4849301))

(declare-fun b_lambda!192709 () Bool)

(assert (=> (not b_lambda!192709) (not b!4849300)))

(declare-fun m!5847492 () Bool)

(assert (=> b!4849300 m!5847492))

(declare-fun m!5847494 () Bool)

(assert (=> b!4849301 m!5847494))

(assert (=> b!4849241 d!1556110))

(declare-fun d!1556112 () Bool)

(declare-fun tail!9539 (List!55697) List!55697)

(assert (=> d!1556112 (= (tail!9537 lm!2646) (ListLongMap!6478 (tail!9539 (toList!7867 lm!2646))))))

(declare-fun bs!1172676 () Bool)

(assert (= bs!1172676 d!1556112))

(declare-fun m!5847496 () Bool)

(assert (=> bs!1172676 m!5847496))

(assert (=> b!4849241 d!1556112))

(declare-fun bs!1172677 () Bool)

(declare-fun d!1556114 () Bool)

(assert (= bs!1172677 (and d!1556114 start!505674)))

(declare-fun lambda!242646 () Int)

(assert (=> bs!1172677 (not (= lambda!242646 lambda!242633))))

(declare-fun bs!1172678 () Bool)

(assert (= bs!1172678 (and d!1556114 d!1556096)))

(assert (=> bs!1172678 (not (= lambda!242646 lambda!242643))))

(assert (=> d!1556114 true))

(assert (=> d!1556114 (= (allKeysSameHashInMap!2823 lm!2646 hashF!1641) (forall!12960 (toList!7867 lm!2646) lambda!242646))))

(declare-fun bs!1172679 () Bool)

(assert (= bs!1172679 d!1556114))

(declare-fun m!5847502 () Bool)

(assert (=> bs!1172679 m!5847502))

(assert (=> b!4849236 d!1556114))

(declare-fun d!1556118 () Bool)

(declare-fun lt!1989304 () Bool)

(declare-fun content!9890 (List!55697) (Set tuple2!59280))

(assert (=> d!1556118 (= lt!1989304 (set.member lt!1989260 (content!9890 (toList!7867 lm!2646))))))

(declare-fun e!3031254 () Bool)

(assert (=> d!1556118 (= lt!1989304 e!3031254)))

(declare-fun res!2069427 () Bool)

(assert (=> d!1556118 (=> (not res!2069427) (not e!3031254))))

(assert (=> d!1556118 (= res!2069427 (is-Cons!55573 (toList!7867 lm!2646)))))

(assert (=> d!1556118 (= (contains!19234 (toList!7867 lm!2646) lt!1989260) lt!1989304)))

(declare-fun b!4849310 () Bool)

(declare-fun e!3031253 () Bool)

(assert (=> b!4849310 (= e!3031254 e!3031253)))

(declare-fun res!2069426 () Bool)

(assert (=> b!4849310 (=> res!2069426 e!3031253)))

(assert (=> b!4849310 (= res!2069426 (= (h!62010 (toList!7867 lm!2646)) lt!1989260))))

(declare-fun b!4849311 () Bool)

(assert (=> b!4849311 (= e!3031253 (contains!19234 (t!363193 (toList!7867 lm!2646)) lt!1989260))))

(assert (= (and d!1556118 res!2069427) b!4849310))

(assert (= (and b!4849310 (not res!2069426)) b!4849311))

(declare-fun m!5847506 () Bool)

(assert (=> d!1556118 m!5847506))

(declare-fun m!5847508 () Bool)

(assert (=> d!1556118 m!5847508))

(declare-fun m!5847510 () Bool)

(assert (=> b!4849311 m!5847510))

(assert (=> b!4849240 d!1556118))

(declare-fun d!1556122 () Bool)

(declare-fun e!3031269 () Bool)

(assert (=> d!1556122 e!3031269))

(declare-fun res!2069442 () Bool)

(assert (=> d!1556122 (=> res!2069442 e!3031269)))

(declare-fun e!3031272 () Bool)

(assert (=> d!1556122 (= res!2069442 e!3031272)))

(declare-fun res!2069439 () Bool)

(assert (=> d!1556122 (=> (not res!2069439) (not e!3031272))))

(declare-fun lt!1989310 () Option!13684)

(declare-fun isEmpty!29741 (Option!13684) Bool)

(assert (=> d!1556122 (= res!2069439 (isEmpty!29741 lt!1989310))))

(declare-fun e!3031271 () Option!13684)

(assert (=> d!1556122 (= lt!1989310 e!3031271)))

(declare-fun c!825314 () Bool)

(assert (=> d!1556122 (= c!825314 (and (is-Cons!55572 lt!1989255) (= (_1!32933 (h!62009 lt!1989255)) key!6445)))))

(declare-fun noDuplicateKeys!2595 (List!55696) Bool)

(assert (=> d!1556122 (noDuplicateKeys!2595 lt!1989255)))

(assert (=> d!1556122 (= (getPair!1097 lt!1989255 key!6445) lt!1989310)))

(declare-fun b!4849331 () Bool)

(assert (=> b!4849331 (= e!3031271 (Some!13683 (h!62009 lt!1989255)))))

(declare-fun b!4849332 () Bool)

(declare-fun e!3031270 () Bool)

(assert (=> b!4849332 (= e!3031269 e!3031270)))

(declare-fun res!2069440 () Bool)

(assert (=> b!4849332 (=> (not res!2069440) (not e!3031270))))

(assert (=> b!4849332 (= res!2069440 (isDefined!10776 lt!1989310))))

(declare-fun b!4849333 () Bool)

(declare-fun contains!19237 (List!55696 tuple2!59278) Bool)

(declare-fun get!19050 (Option!13684) tuple2!59278)

(assert (=> b!4849333 (= e!3031270 (contains!19237 lt!1989255 (get!19050 lt!1989310)))))

(declare-fun b!4849334 () Bool)

(declare-fun e!3031268 () Option!13684)

(assert (=> b!4849334 (= e!3031268 None!13683)))

(declare-fun b!4849335 () Bool)

(assert (=> b!4849335 (= e!3031271 e!3031268)))

(declare-fun c!825313 () Bool)

(assert (=> b!4849335 (= c!825313 (is-Cons!55572 lt!1989255))))

(declare-fun b!4849336 () Bool)

(declare-fun res!2069441 () Bool)

(assert (=> b!4849336 (=> (not res!2069441) (not e!3031270))))

(assert (=> b!4849336 (= res!2069441 (= (_1!32933 (get!19050 lt!1989310)) key!6445))))

(declare-fun b!4849337 () Bool)

(assert (=> b!4849337 (= e!3031268 (getPair!1097 (t!363192 lt!1989255) key!6445))))

(declare-fun b!4849338 () Bool)

(assert (=> b!4849338 (= e!3031272 (not (containsKey!4695 lt!1989255 key!6445)))))

(assert (= (and d!1556122 c!825314) b!4849331))

(assert (= (and d!1556122 (not c!825314)) b!4849335))

(assert (= (and b!4849335 c!825313) b!4849337))

(assert (= (and b!4849335 (not c!825313)) b!4849334))

(assert (= (and d!1556122 res!2069439) b!4849338))

(assert (= (and d!1556122 (not res!2069442)) b!4849332))

(assert (= (and b!4849332 res!2069440) b!4849336))

(assert (= (and b!4849336 res!2069441) b!4849333))

(declare-fun m!5847518 () Bool)

(assert (=> b!4849338 m!5847518))

(declare-fun m!5847520 () Bool)

(assert (=> b!4849337 m!5847520))

(declare-fun m!5847522 () Bool)

(assert (=> b!4849336 m!5847522))

(assert (=> b!4849333 m!5847522))

(assert (=> b!4849333 m!5847522))

(declare-fun m!5847524 () Bool)

(assert (=> b!4849333 m!5847524))

(declare-fun m!5847526 () Bool)

(assert (=> b!4849332 m!5847526))

(declare-fun m!5847528 () Bool)

(assert (=> d!1556122 m!5847528))

(declare-fun m!5847530 () Bool)

(assert (=> d!1556122 m!5847530))

(assert (=> b!4849240 d!1556122))

(declare-fun d!1556128 () Bool)

(assert (=> d!1556128 (dynLambda!22361 lambda!242633 lt!1989260)))

(declare-fun lt!1989313 () Unit!145714)

(declare-fun choose!35479 (List!55697 Int tuple2!59280) Unit!145714)

(assert (=> d!1556128 (= lt!1989313 (choose!35479 (toList!7867 lm!2646) lambda!242633 lt!1989260))))

(declare-fun e!3031275 () Bool)

(assert (=> d!1556128 e!3031275))

(declare-fun res!2069445 () Bool)

(assert (=> d!1556128 (=> (not res!2069445) (not e!3031275))))

(assert (=> d!1556128 (= res!2069445 (forall!12960 (toList!7867 lm!2646) lambda!242633))))

(assert (=> d!1556128 (= (forallContained!4548 (toList!7867 lm!2646) lambda!242633 lt!1989260) lt!1989313)))

(declare-fun b!4849341 () Bool)

(assert (=> b!4849341 (= e!3031275 (contains!19234 (toList!7867 lm!2646) lt!1989260))))

(assert (= (and d!1556128 res!2069445) b!4849341))

(declare-fun b_lambda!192715 () Bool)

(assert (=> (not b_lambda!192715) (not d!1556128)))

(declare-fun m!5847532 () Bool)

(assert (=> d!1556128 m!5847532))

(declare-fun m!5847534 () Bool)

(assert (=> d!1556128 m!5847534))

(assert (=> d!1556128 m!5847380))

(assert (=> b!4849341 m!5847396))

(assert (=> b!4849240 d!1556128))

(declare-fun d!1556130 () Bool)

(assert (=> d!1556130 (contains!19234 (toList!7867 lm!2646) (tuple2!59281 lt!1989261 lt!1989255))))

(declare-fun lt!1989316 () Unit!145714)

(declare-fun choose!35480 (ListLongMap!6477 (_ BitVec 64) List!55696) Unit!145714)

(assert (=> d!1556130 (= lt!1989316 (choose!35480 lm!2646 lt!1989261 lt!1989255))))

(assert (=> d!1556130 (contains!19233 lm!2646 lt!1989261)))

(assert (=> d!1556130 (= (lemmaGetValueImpliesTupleContained!774 lm!2646 lt!1989261 lt!1989255) lt!1989316)))

(declare-fun bs!1172682 () Bool)

(assert (= bs!1172682 d!1556130))

(declare-fun m!5847536 () Bool)

(assert (=> bs!1172682 m!5847536))

(declare-fun m!5847538 () Bool)

(assert (=> bs!1172682 m!5847538))

(assert (=> bs!1172682 m!5847386))

(assert (=> b!4849240 d!1556130))

(declare-fun d!1556132 () Bool)

(assert (=> d!1556132 (= (isDefined!10776 (getPair!1097 lt!1989255 key!6445)) (not (isEmpty!29741 (getPair!1097 lt!1989255 key!6445))))))

(declare-fun bs!1172683 () Bool)

(assert (= bs!1172683 d!1556132))

(assert (=> bs!1172683 m!5847390))

(declare-fun m!5847540 () Bool)

(assert (=> bs!1172683 m!5847540))

(assert (=> b!4849240 d!1556132))

(declare-fun d!1556134 () Bool)

(assert (=> d!1556134 (= (apply!13450 lm!2646 lt!1989261) (get!19049 (getValueByKey!2735 (toList!7867 lm!2646) lt!1989261)))))

(declare-fun bs!1172684 () Bool)

(assert (= bs!1172684 d!1556134))

(assert (=> bs!1172684 m!5847472))

(assert (=> bs!1172684 m!5847472))

(declare-fun m!5847542 () Bool)

(assert (=> bs!1172684 m!5847542))

(assert (=> b!4849240 d!1556134))

(declare-fun bs!1172685 () Bool)

(declare-fun d!1556136 () Bool)

(assert (= bs!1172685 (and d!1556136 start!505674)))

(declare-fun lambda!242647 () Int)

(assert (=> bs!1172685 (not (= lambda!242647 lambda!242633))))

(declare-fun bs!1172686 () Bool)

(assert (= bs!1172686 (and d!1556136 d!1556096)))

(assert (=> bs!1172686 (not (= lambda!242647 lambda!242643))))

(declare-fun bs!1172687 () Bool)

(assert (= bs!1172687 (and d!1556136 d!1556114)))

(assert (=> bs!1172687 (= lambda!242647 lambda!242646)))

(assert (=> d!1556136 true))

(assert (=> d!1556136 (= (allKeysSameHashInMap!2823 lt!1989259 hashF!1641) (forall!12960 (toList!7867 lt!1989259) lambda!242647))))

(declare-fun bs!1172688 () Bool)

(assert (= bs!1172688 d!1556136))

(declare-fun m!5847544 () Bool)

(assert (=> bs!1172688 m!5847544))

(assert (=> b!4849235 d!1556136))

(declare-fun b!4849355 () Bool)

(declare-fun e!3031282 () Bool)

(declare-fun tp!1364741 () Bool)

(declare-fun tp!1364742 () Bool)

(assert (=> b!4849355 (= e!3031282 (and tp!1364741 tp!1364742))))

(assert (=> b!4849237 (= tp!1364733 e!3031282)))

(assert (= (and b!4849237 (is-Cons!55573 (toList!7867 lm!2646))) b!4849355))

(declare-fun b_lambda!192717 () Bool)

(assert (= b_lambda!192707 (or start!505674 b_lambda!192717)))

(declare-fun bs!1172689 () Bool)

(declare-fun d!1556138 () Bool)

(assert (= bs!1172689 (and d!1556138 start!505674)))

(assert (=> bs!1172689 (= (dynLambda!22361 lambda!242633 (h!62010 (toList!7867 lm!2646))) (noDuplicateKeys!2595 (_2!32934 (h!62010 (toList!7867 lm!2646)))))))

(declare-fun m!5847546 () Bool)

(assert (=> bs!1172689 m!5847546))

(assert (=> b!4849295 d!1556138))

(declare-fun b_lambda!192719 () Bool)

(assert (= b_lambda!192709 (or start!505674 b_lambda!192719)))

(declare-fun bs!1172690 () Bool)

(declare-fun d!1556140 () Bool)

(assert (= bs!1172690 (and d!1556140 start!505674)))

(assert (=> bs!1172690 (= (dynLambda!22361 lambda!242633 (h!62010 (toList!7867 lt!1989259))) (noDuplicateKeys!2595 (_2!32934 (h!62010 (toList!7867 lt!1989259)))))))

(declare-fun m!5847548 () Bool)

(assert (=> bs!1172690 m!5847548))

(assert (=> b!4849300 d!1556140))

(declare-fun b_lambda!192721 () Bool)

(assert (= b_lambda!192715 (or start!505674 b_lambda!192721)))

(declare-fun bs!1172691 () Bool)

(declare-fun d!1556142 () Bool)

(assert (= bs!1172691 (and d!1556142 start!505674)))

(assert (=> bs!1172691 (= (dynLambda!22361 lambda!242633 lt!1989260) (noDuplicateKeys!2595 (_2!32934 lt!1989260)))))

(declare-fun m!5847550 () Bool)

(assert (=> bs!1172691 m!5847550))

(assert (=> d!1556128 d!1556142))

(push 1)

(assert (not d!1556118))

(assert (not d!1556134))

(assert (not b!4849299))

(assert (not b!4849341))

(assert (not d!1556136))

(assert (not d!1556114))

(assert (not b!4849337))

(assert (not bs!1172691))

(assert (not b!4849277))

(assert (not d!1556112))

(assert (not b!4849332))

(assert (not d!1556128))

(assert (not d!1556130))

(assert (not b!4849336))

(assert (not bs!1172690))

(assert (not d!1556122))

(assert (not d!1556098))

(assert (not d!1556094))

(assert (not b!4849338))

(assert (not d!1556102))

(assert (not b!4849296))

(assert (not b!4849284))

(assert tp_is_empty!35213)

(assert (not b!4849297))

(assert (not b!4849275))

(assert (not b!4849355))

(assert (not b!4849301))

(assert (not d!1556096))

(assert (not b_lambda!192717))

(assert (not b!4849333))

(assert (not b!4849311))

(assert (not b!4849286))

(assert (not bs!1172689))

(assert (not d!1556106))

(assert (not b_lambda!192721))

(assert (not b_lambda!192719))

(assert (not d!1556108))

(assert (not d!1556132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1556178 () Bool)

(declare-fun res!2069482 () Bool)

(declare-fun e!3031325 () Bool)

(assert (=> d!1556178 (=> res!2069482 e!3031325)))

(assert (=> d!1556178 (= res!2069482 (and (is-Cons!55573 (toList!7867 lm!2646)) (= (_1!32934 (h!62010 (toList!7867 lm!2646))) lt!1989261)))))

(assert (=> d!1556178 (= (containsKey!4697 (toList!7867 lm!2646) lt!1989261) e!3031325)))

(declare-fun b!4849412 () Bool)

(declare-fun e!3031326 () Bool)

(assert (=> b!4849412 (= e!3031325 e!3031326)))

(declare-fun res!2069483 () Bool)

(assert (=> b!4849412 (=> (not res!2069483) (not e!3031326))))

(assert (=> b!4849412 (= res!2069483 (and (or (not (is-Cons!55573 (toList!7867 lm!2646))) (bvsle (_1!32934 (h!62010 (toList!7867 lm!2646))) lt!1989261)) (is-Cons!55573 (toList!7867 lm!2646)) (bvslt (_1!32934 (h!62010 (toList!7867 lm!2646))) lt!1989261)))))

(declare-fun b!4849413 () Bool)

(assert (=> b!4849413 (= e!3031326 (containsKey!4697 (t!363193 (toList!7867 lm!2646)) lt!1989261))))

(assert (= (and d!1556178 (not res!2069482)) b!4849412))

(assert (= (and b!4849412 res!2069483) b!4849413))

(declare-fun m!5847624 () Bool)

(assert (=> b!4849413 m!5847624))

(assert (=> d!1556098 d!1556178))

(declare-fun d!1556180 () Bool)

(declare-fun res!2069488 () Bool)

(declare-fun e!3031331 () Bool)

(assert (=> d!1556180 (=> res!2069488 e!3031331)))

(assert (=> d!1556180 (= res!2069488 (not (is-Cons!55572 (_2!32934 (h!62010 (toList!7867 lt!1989259))))))))

(assert (=> d!1556180 (= (noDuplicateKeys!2595 (_2!32934 (h!62010 (toList!7867 lt!1989259)))) e!3031331)))

(declare-fun b!4849418 () Bool)

(declare-fun e!3031332 () Bool)

(assert (=> b!4849418 (= e!3031331 e!3031332)))

(declare-fun res!2069489 () Bool)

(assert (=> b!4849418 (=> (not res!2069489) (not e!3031332))))

(assert (=> b!4849418 (= res!2069489 (not (containsKey!4695 (t!363192 (_2!32934 (h!62010 (toList!7867 lt!1989259)))) (_1!32933 (h!62009 (_2!32934 (h!62010 (toList!7867 lt!1989259))))))))))

(declare-fun b!4849419 () Bool)

(assert (=> b!4849419 (= e!3031332 (noDuplicateKeys!2595 (t!363192 (_2!32934 (h!62010 (toList!7867 lt!1989259))))))))

(assert (= (and d!1556180 (not res!2069488)) b!4849418))

(assert (= (and b!4849418 res!2069489) b!4849419))

(declare-fun m!5847626 () Bool)

(assert (=> b!4849418 m!5847626))

(declare-fun m!5847628 () Bool)

(assert (=> b!4849419 m!5847628))

(assert (=> bs!1172690 d!1556180))

(declare-fun d!1556182 () Bool)

(declare-fun lt!1989345 () Bool)

(assert (=> d!1556182 (= lt!1989345 (set.member lt!1989260 (content!9890 (t!363193 (toList!7867 lm!2646)))))))

(declare-fun e!3031334 () Bool)

(assert (=> d!1556182 (= lt!1989345 e!3031334)))

(declare-fun res!2069491 () Bool)

(assert (=> d!1556182 (=> (not res!2069491) (not e!3031334))))

(assert (=> d!1556182 (= res!2069491 (is-Cons!55573 (t!363193 (toList!7867 lm!2646))))))

(assert (=> d!1556182 (= (contains!19234 (t!363193 (toList!7867 lm!2646)) lt!1989260) lt!1989345)))

(declare-fun b!4849420 () Bool)

(declare-fun e!3031333 () Bool)

(assert (=> b!4849420 (= e!3031334 e!3031333)))

(declare-fun res!2069490 () Bool)

(assert (=> b!4849420 (=> res!2069490 e!3031333)))

(assert (=> b!4849420 (= res!2069490 (= (h!62010 (t!363193 (toList!7867 lm!2646))) lt!1989260))))

(declare-fun b!4849421 () Bool)

(assert (=> b!4849421 (= e!3031333 (contains!19234 (t!363193 (t!363193 (toList!7867 lm!2646))) lt!1989260))))

(assert (= (and d!1556182 res!2069491) b!4849420))

(assert (= (and b!4849420 (not res!2069490)) b!4849421))

(declare-fun m!5847630 () Bool)

(assert (=> d!1556182 m!5847630))

(declare-fun m!5847632 () Bool)

(assert (=> d!1556182 m!5847632))

(declare-fun m!5847634 () Bool)

(assert (=> b!4849421 m!5847634))

(assert (=> b!4849311 d!1556182))

(declare-fun d!1556184 () Bool)

(declare-fun isEmpty!29743 (Option!13686) Bool)

(assert (=> d!1556184 (= (isDefined!10778 (getValueByKey!2735 (toList!7867 lm!2646) lt!1989261)) (not (isEmpty!29743 (getValueByKey!2735 (toList!7867 lm!2646) lt!1989261))))))

(declare-fun bs!1172709 () Bool)

(assert (= bs!1172709 d!1556184))

(assert (=> bs!1172709 m!5847472))

(declare-fun m!5847636 () Bool)

(assert (=> bs!1172709 m!5847636))

(assert (=> b!4849286 d!1556184))

(declare-fun b!4849433 () Bool)

(declare-fun e!3031340 () Option!13686)

(assert (=> b!4849433 (= e!3031340 None!13685)))

(declare-fun d!1556186 () Bool)

(declare-fun c!825329 () Bool)

(assert (=> d!1556186 (= c!825329 (and (is-Cons!55573 (toList!7867 lm!2646)) (= (_1!32934 (h!62010 (toList!7867 lm!2646))) lt!1989261)))))

(declare-fun e!3031339 () Option!13686)

(assert (=> d!1556186 (= (getValueByKey!2735 (toList!7867 lm!2646) lt!1989261) e!3031339)))

(declare-fun b!4849431 () Bool)

(assert (=> b!4849431 (= e!3031339 e!3031340)))

(declare-fun c!825330 () Bool)

(assert (=> b!4849431 (= c!825330 (and (is-Cons!55573 (toList!7867 lm!2646)) (not (= (_1!32934 (h!62010 (toList!7867 lm!2646))) lt!1989261))))))

(declare-fun b!4849432 () Bool)

(assert (=> b!4849432 (= e!3031340 (getValueByKey!2735 (t!363193 (toList!7867 lm!2646)) lt!1989261))))

(declare-fun b!4849430 () Bool)

(assert (=> b!4849430 (= e!3031339 (Some!13685 (_2!32934 (h!62010 (toList!7867 lm!2646)))))))

(assert (= (and d!1556186 c!825329) b!4849430))

(assert (= (and d!1556186 (not c!825329)) b!4849431))

(assert (= (and b!4849431 c!825330) b!4849432))

(assert (= (and b!4849431 (not c!825330)) b!4849433))

(declare-fun m!5847638 () Bool)

(assert (=> b!4849432 m!5847638))

(assert (=> b!4849286 d!1556186))

(declare-fun d!1556188 () Bool)

(assert (=> d!1556188 (= (isDefined!10778 (getValueByKey!2735 (toList!7867 lt!1989259) lt!1989261)) (not (isEmpty!29743 (getValueByKey!2735 (toList!7867 lt!1989259) lt!1989261))))))

(declare-fun bs!1172710 () Bool)

(assert (= bs!1172710 d!1556188))

(assert (=> bs!1172710 m!5847488))

(declare-fun m!5847640 () Bool)

(assert (=> bs!1172710 m!5847640))

(assert (=> b!4849299 d!1556188))

(declare-fun b!4849437 () Bool)

(declare-fun e!3031342 () Option!13686)

(assert (=> b!4849437 (= e!3031342 None!13685)))

(declare-fun d!1556190 () Bool)

(declare-fun c!825331 () Bool)

(assert (=> d!1556190 (= c!825331 (and (is-Cons!55573 (toList!7867 lt!1989259)) (= (_1!32934 (h!62010 (toList!7867 lt!1989259))) lt!1989261)))))

(declare-fun e!3031341 () Option!13686)

(assert (=> d!1556190 (= (getValueByKey!2735 (toList!7867 lt!1989259) lt!1989261) e!3031341)))

(declare-fun b!4849435 () Bool)

(assert (=> b!4849435 (= e!3031341 e!3031342)))

(declare-fun c!825332 () Bool)

(assert (=> b!4849435 (= c!825332 (and (is-Cons!55573 (toList!7867 lt!1989259)) (not (= (_1!32934 (h!62010 (toList!7867 lt!1989259))) lt!1989261))))))

(declare-fun b!4849436 () Bool)

(assert (=> b!4849436 (= e!3031342 (getValueByKey!2735 (t!363193 (toList!7867 lt!1989259)) lt!1989261))))

(declare-fun b!4849434 () Bool)

(assert (=> b!4849434 (= e!3031341 (Some!13685 (_2!32934 (h!62010 (toList!7867 lt!1989259)))))))

(assert (= (and d!1556190 c!825331) b!4849434))

(assert (= (and d!1556190 (not c!825331)) b!4849435))

(assert (= (and b!4849435 c!825332) b!4849436))

(assert (= (and b!4849435 (not c!825332)) b!4849437))

(declare-fun m!5847642 () Bool)

(assert (=> b!4849436 m!5847642))

(assert (=> b!4849299 d!1556190))

(declare-fun d!1556192 () Bool)

(assert (=> d!1556192 (isDefined!10778 (getValueByKey!2735 (toList!7867 lt!1989259) lt!1989261))))

(declare-fun lt!1989348 () Unit!145714)

(declare-fun choose!35484 (List!55697 (_ BitVec 64)) Unit!145714)

(assert (=> d!1556192 (= lt!1989348 (choose!35484 (toList!7867 lt!1989259) lt!1989261))))

(declare-fun e!3031345 () Bool)

(assert (=> d!1556192 e!3031345))

(declare-fun res!2069494 () Bool)

(assert (=> d!1556192 (=> (not res!2069494) (not e!3031345))))

(assert (=> d!1556192 (= res!2069494 (isStrictlySorted!1084 (toList!7867 lt!1989259)))))

(assert (=> d!1556192 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2507 (toList!7867 lt!1989259) lt!1989261) lt!1989348)))

(declare-fun b!4849440 () Bool)

(assert (=> b!4849440 (= e!3031345 (containsKey!4697 (toList!7867 lt!1989259) lt!1989261))))

(assert (= (and d!1556192 res!2069494) b!4849440))

(assert (=> d!1556192 m!5847488))

(assert (=> d!1556192 m!5847488))

(assert (=> d!1556192 m!5847490))

(declare-fun m!5847644 () Bool)

(assert (=> d!1556192 m!5847644))

(declare-fun m!5847646 () Bool)

(assert (=> d!1556192 m!5847646))

(assert (=> b!4849440 m!5847484))

(assert (=> b!4849297 d!1556192))

(assert (=> b!4849297 d!1556188))

(assert (=> b!4849297 d!1556190))

(declare-fun d!1556194 () Bool)

(assert (=> d!1556194 (= (get!19049 (getValueByKey!2735 (toList!7867 lm!2646) lt!1989261)) (v!49462 (getValueByKey!2735 (toList!7867 lm!2646) lt!1989261)))))

(assert (=> d!1556134 d!1556194))

(assert (=> d!1556134 d!1556186))

(declare-fun d!1556196 () Bool)

(declare-fun res!2069495 () Bool)

(declare-fun e!3031346 () Bool)

(assert (=> d!1556196 (=> res!2069495 e!3031346)))

(assert (=> d!1556196 (= res!2069495 (and (is-Cons!55572 lt!1989255) (= (_1!32933 (h!62009 lt!1989255)) key!6445)))))

(assert (=> d!1556196 (= (containsKey!4695 lt!1989255 key!6445) e!3031346)))

(declare-fun b!4849441 () Bool)

(declare-fun e!3031347 () Bool)

(assert (=> b!4849441 (= e!3031346 e!3031347)))

(declare-fun res!2069496 () Bool)

(assert (=> b!4849441 (=> (not res!2069496) (not e!3031347))))

(assert (=> b!4849441 (= res!2069496 (is-Cons!55572 lt!1989255))))

(declare-fun b!4849442 () Bool)

(assert (=> b!4849442 (= e!3031347 (containsKey!4695 (t!363192 lt!1989255) key!6445))))

(assert (= (and d!1556196 (not res!2069495)) b!4849441))

(assert (= (and b!4849441 res!2069496) b!4849442))

(declare-fun m!5847648 () Bool)

(assert (=> b!4849442 m!5847648))

(assert (=> b!4849338 d!1556196))

(declare-fun d!1556198 () Bool)

(declare-fun e!3031349 () Bool)

(assert (=> d!1556198 e!3031349))

(declare-fun res!2069500 () Bool)

(assert (=> d!1556198 (=> res!2069500 e!3031349)))

(declare-fun e!3031352 () Bool)

(assert (=> d!1556198 (= res!2069500 e!3031352)))

(declare-fun res!2069497 () Bool)

(assert (=> d!1556198 (=> (not res!2069497) (not e!3031352))))

(declare-fun lt!1989349 () Option!13684)

(assert (=> d!1556198 (= res!2069497 (isEmpty!29741 lt!1989349))))

(declare-fun e!3031351 () Option!13684)

(assert (=> d!1556198 (= lt!1989349 e!3031351)))

(declare-fun c!825334 () Bool)

(assert (=> d!1556198 (= c!825334 (and (is-Cons!55572 (t!363192 lt!1989255)) (= (_1!32933 (h!62009 (t!363192 lt!1989255))) key!6445)))))

(assert (=> d!1556198 (noDuplicateKeys!2595 (t!363192 lt!1989255))))

(assert (=> d!1556198 (= (getPair!1097 (t!363192 lt!1989255) key!6445) lt!1989349)))

(declare-fun b!4849443 () Bool)

(assert (=> b!4849443 (= e!3031351 (Some!13683 (h!62009 (t!363192 lt!1989255))))))

(declare-fun b!4849444 () Bool)

(declare-fun e!3031350 () Bool)

(assert (=> b!4849444 (= e!3031349 e!3031350)))

(declare-fun res!2069498 () Bool)

(assert (=> b!4849444 (=> (not res!2069498) (not e!3031350))))

(assert (=> b!4849444 (= res!2069498 (isDefined!10776 lt!1989349))))

(declare-fun b!4849445 () Bool)

(assert (=> b!4849445 (= e!3031350 (contains!19237 (t!363192 lt!1989255) (get!19050 lt!1989349)))))

(declare-fun b!4849446 () Bool)

(declare-fun e!3031348 () Option!13684)

(assert (=> b!4849446 (= e!3031348 None!13683)))

(declare-fun b!4849447 () Bool)

(assert (=> b!4849447 (= e!3031351 e!3031348)))

(declare-fun c!825333 () Bool)

(assert (=> b!4849447 (= c!825333 (is-Cons!55572 (t!363192 lt!1989255)))))

(declare-fun b!4849448 () Bool)

(declare-fun res!2069499 () Bool)

(assert (=> b!4849448 (=> (not res!2069499) (not e!3031350))))

(assert (=> b!4849448 (= res!2069499 (= (_1!32933 (get!19050 lt!1989349)) key!6445))))

(declare-fun b!4849449 () Bool)

(assert (=> b!4849449 (= e!3031348 (getPair!1097 (t!363192 (t!363192 lt!1989255)) key!6445))))

(declare-fun b!4849450 () Bool)

(assert (=> b!4849450 (= e!3031352 (not (containsKey!4695 (t!363192 lt!1989255) key!6445)))))

(assert (= (and d!1556198 c!825334) b!4849443))

(assert (= (and d!1556198 (not c!825334)) b!4849447))

(assert (= (and b!4849447 c!825333) b!4849449))

(assert (= (and b!4849447 (not c!825333)) b!4849446))

(assert (= (and d!1556198 res!2069497) b!4849450))

(assert (= (and d!1556198 (not res!2069500)) b!4849444))

(assert (= (and b!4849444 res!2069498) b!4849448))

(assert (= (and b!4849448 res!2069499) b!4849445))

(assert (=> b!4849450 m!5847648))

(declare-fun m!5847650 () Bool)

(assert (=> b!4849449 m!5847650))

(declare-fun m!5847652 () Bool)

(assert (=> b!4849448 m!5847652))

(assert (=> b!4849445 m!5847652))

(assert (=> b!4849445 m!5847652))

(declare-fun m!5847654 () Bool)

(assert (=> b!4849445 m!5847654))

(declare-fun m!5847656 () Bool)

(assert (=> b!4849444 m!5847656))

(declare-fun m!5847658 () Bool)

(assert (=> d!1556198 m!5847658))

(declare-fun m!5847660 () Bool)

(assert (=> d!1556198 m!5847660))

(assert (=> b!4849337 d!1556198))

(declare-fun d!1556200 () Bool)

(assert (=> d!1556200 (isDefined!10778 (getValueByKey!2735 (toList!7867 lm!2646) lt!1989261))))

(declare-fun lt!1989350 () Unit!145714)

(assert (=> d!1556200 (= lt!1989350 (choose!35484 (toList!7867 lm!2646) lt!1989261))))

(declare-fun e!3031353 () Bool)

(assert (=> d!1556200 e!3031353))

(declare-fun res!2069501 () Bool)

(assert (=> d!1556200 (=> (not res!2069501) (not e!3031353))))

(assert (=> d!1556200 (= res!2069501 (isStrictlySorted!1084 (toList!7867 lm!2646)))))

(assert (=> d!1556200 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2507 (toList!7867 lm!2646) lt!1989261) lt!1989350)))

(declare-fun b!4849451 () Bool)

(assert (=> b!4849451 (= e!3031353 (containsKey!4697 (toList!7867 lm!2646) lt!1989261))))

(assert (= (and d!1556200 res!2069501) b!4849451))

(assert (=> d!1556200 m!5847472))

(assert (=> d!1556200 m!5847472))

(assert (=> d!1556200 m!5847474))

(declare-fun m!5847662 () Bool)

(assert (=> d!1556200 m!5847662))

(assert (=> d!1556200 m!5847482))

(assert (=> b!4849451 m!5847468))

(assert (=> b!4849284 d!1556200))

(assert (=> b!4849284 d!1556184))

(assert (=> b!4849284 d!1556186))

(declare-fun d!1556202 () Bool)

(assert (=> d!1556202 (= (get!19049 (getValueByKey!2735 (toList!7867 lm!2646) (_1!32934 (h!62010 (toList!7867 lm!2646))))) (v!49462 (getValueByKey!2735 (toList!7867 lm!2646) (_1!32934 (h!62010 (toList!7867 lm!2646))))))))

(assert (=> d!1556094 d!1556202))

(declare-fun b!4849455 () Bool)

(declare-fun e!3031355 () Option!13686)

(assert (=> b!4849455 (= e!3031355 None!13685)))

(declare-fun d!1556204 () Bool)

(declare-fun c!825335 () Bool)

(assert (=> d!1556204 (= c!825335 (and (is-Cons!55573 (toList!7867 lm!2646)) (= (_1!32934 (h!62010 (toList!7867 lm!2646))) (_1!32934 (h!62010 (toList!7867 lm!2646))))))))

(declare-fun e!3031354 () Option!13686)

(assert (=> d!1556204 (= (getValueByKey!2735 (toList!7867 lm!2646) (_1!32934 (h!62010 (toList!7867 lm!2646)))) e!3031354)))

(declare-fun b!4849453 () Bool)

(assert (=> b!4849453 (= e!3031354 e!3031355)))

(declare-fun c!825336 () Bool)

(assert (=> b!4849453 (= c!825336 (and (is-Cons!55573 (toList!7867 lm!2646)) (not (= (_1!32934 (h!62010 (toList!7867 lm!2646))) (_1!32934 (h!62010 (toList!7867 lm!2646)))))))))

(declare-fun b!4849454 () Bool)

(assert (=> b!4849454 (= e!3031355 (getValueByKey!2735 (t!363193 (toList!7867 lm!2646)) (_1!32934 (h!62010 (toList!7867 lm!2646)))))))

(declare-fun b!4849452 () Bool)

(assert (=> b!4849452 (= e!3031354 (Some!13685 (_2!32934 (h!62010 (toList!7867 lm!2646)))))))

(assert (= (and d!1556204 c!825335) b!4849452))

(assert (= (and d!1556204 (not c!825335)) b!4849453))

(assert (= (and b!4849453 c!825336) b!4849454))

(assert (= (and b!4849453 (not c!825336)) b!4849455))

(declare-fun m!5847664 () Bool)

(assert (=> b!4849454 m!5847664))

(assert (=> d!1556094 d!1556204))

(declare-fun d!1556206 () Bool)

(declare-fun res!2069502 () Bool)

(declare-fun e!3031356 () Bool)

(assert (=> d!1556206 (=> res!2069502 e!3031356)))

(assert (=> d!1556206 (= res!2069502 (not (is-Cons!55572 (_2!32934 lt!1989260))))))

(assert (=> d!1556206 (= (noDuplicateKeys!2595 (_2!32934 lt!1989260)) e!3031356)))

(declare-fun b!4849456 () Bool)

(declare-fun e!3031357 () Bool)

(assert (=> b!4849456 (= e!3031356 e!3031357)))

(declare-fun res!2069503 () Bool)

(assert (=> b!4849456 (=> (not res!2069503) (not e!3031357))))

(assert (=> b!4849456 (= res!2069503 (not (containsKey!4695 (t!363192 (_2!32934 lt!1989260)) (_1!32933 (h!62009 (_2!32934 lt!1989260))))))))

(declare-fun b!4849457 () Bool)

(assert (=> b!4849457 (= e!3031357 (noDuplicateKeys!2595 (t!363192 (_2!32934 lt!1989260))))))

(assert (= (and d!1556206 (not res!2069502)) b!4849456))

(assert (= (and b!4849456 res!2069503) b!4849457))

(declare-fun m!5847666 () Bool)

(assert (=> b!4849456 m!5847666))

(declare-fun m!5847668 () Bool)

(assert (=> b!4849457 m!5847668))

(assert (=> bs!1172691 d!1556206))

(declare-fun d!1556208 () Bool)

(declare-fun res!2069504 () Bool)

(declare-fun e!3031358 () Bool)

(assert (=> d!1556208 (=> res!2069504 e!3031358)))

(assert (=> d!1556208 (= res!2069504 (is-Nil!55573 (toList!7867 lt!1989259)))))

(assert (=> d!1556208 (= (forall!12960 (toList!7867 lt!1989259) lambda!242647) e!3031358)))

(declare-fun b!4849458 () Bool)

(declare-fun e!3031359 () Bool)

(assert (=> b!4849458 (= e!3031358 e!3031359)))

(declare-fun res!2069505 () Bool)

(assert (=> b!4849458 (=> (not res!2069505) (not e!3031359))))

(assert (=> b!4849458 (= res!2069505 (dynLambda!22361 lambda!242647 (h!62010 (toList!7867 lt!1989259))))))

(declare-fun b!4849459 () Bool)

(assert (=> b!4849459 (= e!3031359 (forall!12960 (t!363193 (toList!7867 lt!1989259)) lambda!242647))))

(assert (= (and d!1556208 (not res!2069504)) b!4849458))

(assert (= (and b!4849458 res!2069505) b!4849459))

(declare-fun b_lambda!192731 () Bool)

(assert (=> (not b_lambda!192731) (not b!4849458)))

(declare-fun m!5847670 () Bool)

(assert (=> b!4849458 m!5847670))

(declare-fun m!5847672 () Bool)

(assert (=> b!4849459 m!5847672))

(assert (=> d!1556136 d!1556208))

(declare-fun d!1556210 () Bool)

(declare-fun res!2069510 () Bool)

(declare-fun e!3031364 () Bool)

(assert (=> d!1556210 (=> res!2069510 e!3031364)))

(assert (=> d!1556210 (= res!2069510 (or (is-Nil!55573 (toList!7867 lm!2646)) (is-Nil!55573 (t!363193 (toList!7867 lm!2646)))))))

(assert (=> d!1556210 (= (isStrictlySorted!1084 (toList!7867 lm!2646)) e!3031364)))

(declare-fun b!4849464 () Bool)

(declare-fun e!3031365 () Bool)

(assert (=> b!4849464 (= e!3031364 e!3031365)))

(declare-fun res!2069511 () Bool)

(assert (=> b!4849464 (=> (not res!2069511) (not e!3031365))))

(assert (=> b!4849464 (= res!2069511 (bvslt (_1!32934 (h!62010 (toList!7867 lm!2646))) (_1!32934 (h!62010 (t!363193 (toList!7867 lm!2646))))))))

(declare-fun b!4849465 () Bool)

(assert (=> b!4849465 (= e!3031365 (isStrictlySorted!1084 (t!363193 (toList!7867 lm!2646))))))

(assert (= (and d!1556210 (not res!2069510)) b!4849464))

(assert (= (and b!4849464 res!2069511) b!4849465))

(declare-fun m!5847674 () Bool)

(assert (=> b!4849465 m!5847674))

(assert (=> d!1556106 d!1556210))

(declare-fun d!1556212 () Bool)

(assert (=> d!1556212 (= (tail!9539 (toList!7867 lm!2646)) (t!363193 (toList!7867 lm!2646)))))

(assert (=> d!1556112 d!1556212))

(declare-fun d!1556214 () Bool)

(declare-fun res!2069512 () Bool)

(declare-fun e!3031366 () Bool)

(assert (=> d!1556214 (=> res!2069512 e!3031366)))

(assert (=> d!1556214 (= res!2069512 (and (is-Cons!55572 (t!363192 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646)))))) (= (_1!32933 (h!62009 (t!363192 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646))))))) key!6445)))))

(assert (=> d!1556214 (= (containsKey!4695 (t!363192 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646))))) key!6445) e!3031366)))

(declare-fun b!4849466 () Bool)

(declare-fun e!3031367 () Bool)

(assert (=> b!4849466 (= e!3031366 e!3031367)))

(declare-fun res!2069513 () Bool)

(assert (=> b!4849466 (=> (not res!2069513) (not e!3031367))))

(assert (=> b!4849466 (= res!2069513 (is-Cons!55572 (t!363192 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646)))))))))

(declare-fun b!4849467 () Bool)

(assert (=> b!4849467 (= e!3031367 (containsKey!4695 (t!363192 (t!363192 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646)))))) key!6445))))

(assert (= (and d!1556214 (not res!2069512)) b!4849466))

(assert (= (and b!4849466 res!2069513) b!4849467))

(declare-fun m!5847676 () Bool)

(assert (=> b!4849467 m!5847676))

(assert (=> b!4849277 d!1556214))

(declare-fun d!1556216 () Bool)

(declare-fun choose!35485 (Hashable!7507 K!17372) (_ BitVec 64))

(assert (=> d!1556216 (= (hash!5612 hashF!1641 key!6445) (choose!35485 hashF!1641 key!6445))))

(declare-fun bs!1172711 () Bool)

(assert (= bs!1172711 d!1556216))

(declare-fun m!5847678 () Bool)

(assert (=> bs!1172711 m!5847678))

(assert (=> d!1556102 d!1556216))

(declare-fun d!1556218 () Bool)

(assert (=> d!1556218 (= (isEmpty!29741 (getPair!1097 lt!1989255 key!6445)) (not (is-Some!13683 (getPair!1097 lt!1989255 key!6445))))))

(assert (=> d!1556132 d!1556218))

(declare-fun d!1556220 () Bool)

(declare-fun c!825339 () Bool)

(assert (=> d!1556220 (= c!825339 (is-Nil!55573 (toList!7867 lm!2646)))))

(declare-fun e!3031370 () (Set tuple2!59280))

(assert (=> d!1556220 (= (content!9890 (toList!7867 lm!2646)) e!3031370)))

(declare-fun b!4849472 () Bool)

(assert (=> b!4849472 (= e!3031370 (as set.empty (Set tuple2!59280)))))

(declare-fun b!4849473 () Bool)

(assert (=> b!4849473 (= e!3031370 (set.union (set.insert (h!62010 (toList!7867 lm!2646)) (as set.empty (Set tuple2!59280))) (content!9890 (t!363193 (toList!7867 lm!2646)))))))

(assert (= (and d!1556220 c!825339) b!4849472))

(assert (= (and d!1556220 (not c!825339)) b!4849473))

(declare-fun m!5847680 () Bool)

(assert (=> b!4849473 m!5847680))

(assert (=> b!4849473 m!5847630))

(assert (=> d!1556118 d!1556220))

(declare-fun d!1556222 () Bool)

(declare-fun res!2069514 () Bool)

(declare-fun e!3031371 () Bool)

(assert (=> d!1556222 (=> res!2069514 e!3031371)))

(assert (=> d!1556222 (= res!2069514 (and (is-Cons!55573 (toList!7867 lt!1989259)) (= (_1!32934 (h!62010 (toList!7867 lt!1989259))) lt!1989261)))))

(assert (=> d!1556222 (= (containsKey!4697 (toList!7867 lt!1989259) lt!1989261) e!3031371)))

(declare-fun b!4849474 () Bool)

(declare-fun e!3031372 () Bool)

(assert (=> b!4849474 (= e!3031371 e!3031372)))

(declare-fun res!2069515 () Bool)

(assert (=> b!4849474 (=> (not res!2069515) (not e!3031372))))

(assert (=> b!4849474 (= res!2069515 (and (or (not (is-Cons!55573 (toList!7867 lt!1989259))) (bvsle (_1!32934 (h!62010 (toList!7867 lt!1989259))) lt!1989261)) (is-Cons!55573 (toList!7867 lt!1989259)) (bvslt (_1!32934 (h!62010 (toList!7867 lt!1989259))) lt!1989261)))))

(declare-fun b!4849475 () Bool)

(assert (=> b!4849475 (= e!3031372 (containsKey!4697 (t!363193 (toList!7867 lt!1989259)) lt!1989261))))

(assert (= (and d!1556222 (not res!2069514)) b!4849474))

(assert (= (and b!4849474 res!2069515) b!4849475))

(declare-fun m!5847682 () Bool)

(assert (=> b!4849475 m!5847682))

(assert (=> d!1556108 d!1556222))

(declare-fun d!1556224 () Bool)

(assert (=> d!1556224 (= (isEmpty!29741 lt!1989310) (not (is-Some!13683 lt!1989310)))))

(assert (=> d!1556122 d!1556224))

(declare-fun d!1556226 () Bool)

(declare-fun res!2069516 () Bool)

(declare-fun e!3031373 () Bool)

(assert (=> d!1556226 (=> res!2069516 e!3031373)))

(assert (=> d!1556226 (= res!2069516 (not (is-Cons!55572 lt!1989255)))))

(assert (=> d!1556226 (= (noDuplicateKeys!2595 lt!1989255) e!3031373)))

(declare-fun b!4849476 () Bool)

(declare-fun e!3031374 () Bool)

(assert (=> b!4849476 (= e!3031373 e!3031374)))

(declare-fun res!2069517 () Bool)

(assert (=> b!4849476 (=> (not res!2069517) (not e!3031374))))

(assert (=> b!4849476 (= res!2069517 (not (containsKey!4695 (t!363192 lt!1989255) (_1!32933 (h!62009 lt!1989255)))))))

(declare-fun b!4849477 () Bool)

(assert (=> b!4849477 (= e!3031374 (noDuplicateKeys!2595 (t!363192 lt!1989255)))))

(assert (= (and d!1556226 (not res!2069516)) b!4849476))

(assert (= (and b!4849476 res!2069517) b!4849477))

(declare-fun m!5847684 () Bool)

(assert (=> b!4849476 m!5847684))

(assert (=> b!4849477 m!5847660))

(assert (=> d!1556122 d!1556226))

(assert (=> b!4849341 d!1556118))

(declare-fun d!1556228 () Bool)

(declare-fun res!2069518 () Bool)

(declare-fun e!3031375 () Bool)

(assert (=> d!1556228 (=> res!2069518 e!3031375)))

(assert (=> d!1556228 (= res!2069518 (is-Nil!55573 (toList!7867 lm!2646)))))

(assert (=> d!1556228 (= (forall!12960 (toList!7867 lm!2646) lambda!242646) e!3031375)))

(declare-fun b!4849478 () Bool)

(declare-fun e!3031376 () Bool)

(assert (=> b!4849478 (= e!3031375 e!3031376)))

(declare-fun res!2069519 () Bool)

(assert (=> b!4849478 (=> (not res!2069519) (not e!3031376))))

(assert (=> b!4849478 (= res!2069519 (dynLambda!22361 lambda!242646 (h!62010 (toList!7867 lm!2646))))))

(declare-fun b!4849479 () Bool)

(assert (=> b!4849479 (= e!3031376 (forall!12960 (t!363193 (toList!7867 lm!2646)) lambda!242646))))

(assert (= (and d!1556228 (not res!2069518)) b!4849478))

(assert (= (and b!4849478 res!2069519) b!4849479))

(declare-fun b_lambda!192733 () Bool)

(assert (=> (not b_lambda!192733) (not b!4849478)))

(declare-fun m!5847686 () Bool)

(assert (=> b!4849478 m!5847686))

(declare-fun m!5847688 () Bool)

(assert (=> b!4849479 m!5847688))

(assert (=> d!1556114 d!1556228))

(declare-fun d!1556230 () Bool)

(declare-fun res!2069520 () Bool)

(declare-fun e!3031377 () Bool)

(assert (=> d!1556230 (=> res!2069520 e!3031377)))

(assert (=> d!1556230 (= res!2069520 (not (is-Cons!55572 (_2!32934 (h!62010 (toList!7867 lm!2646))))))))

(assert (=> d!1556230 (= (noDuplicateKeys!2595 (_2!32934 (h!62010 (toList!7867 lm!2646)))) e!3031377)))

(declare-fun b!4849480 () Bool)

(declare-fun e!3031378 () Bool)

(assert (=> b!4849480 (= e!3031377 e!3031378)))

(declare-fun res!2069521 () Bool)

(assert (=> b!4849480 (=> (not res!2069521) (not e!3031378))))

(assert (=> b!4849480 (= res!2069521 (not (containsKey!4695 (t!363192 (_2!32934 (h!62010 (toList!7867 lm!2646)))) (_1!32933 (h!62009 (_2!32934 (h!62010 (toList!7867 lm!2646))))))))))

(declare-fun b!4849481 () Bool)

(assert (=> b!4849481 (= e!3031378 (noDuplicateKeys!2595 (t!363192 (_2!32934 (h!62010 (toList!7867 lm!2646))))))))

(assert (= (and d!1556230 (not res!2069520)) b!4849480))

(assert (= (and b!4849480 res!2069521) b!4849481))

(declare-fun m!5847690 () Bool)

(assert (=> b!4849480 m!5847690))

(declare-fun m!5847692 () Bool)

(assert (=> b!4849481 m!5847692))

(assert (=> bs!1172689 d!1556230))

(assert (=> d!1556096 d!1556092))

(assert (=> d!1556096 d!1556094))

(declare-fun d!1556232 () Bool)

(assert (=> d!1556232 (not (containsKey!4695 (apply!13450 lm!2646 (_1!32934 (h!62010 (toList!7867 lm!2646)))) key!6445))))

(assert (=> d!1556232 true))

(declare-fun _$39!502 () Unit!145714)

(assert (=> d!1556232 (= (choose!35478 lm!2646 key!6445 (_1!32934 (h!62010 (toList!7867 lm!2646))) hashF!1641) _$39!502)))

(declare-fun bs!1172712 () Bool)

(assert (= bs!1172712 d!1556232))

(assert (=> bs!1172712 m!5847410))

(assert (=> bs!1172712 m!5847410))

(assert (=> bs!1172712 m!5847412))

(assert (=> d!1556096 d!1556232))

(declare-fun d!1556234 () Bool)

(declare-fun res!2069522 () Bool)

(declare-fun e!3031379 () Bool)

(assert (=> d!1556234 (=> res!2069522 e!3031379)))

(assert (=> d!1556234 (= res!2069522 (is-Nil!55573 (toList!7867 lm!2646)))))

(assert (=> d!1556234 (= (forall!12960 (toList!7867 lm!2646) lambda!242643) e!3031379)))

(declare-fun b!4849482 () Bool)

(declare-fun e!3031380 () Bool)

(assert (=> b!4849482 (= e!3031379 e!3031380)))

(declare-fun res!2069523 () Bool)

(assert (=> b!4849482 (=> (not res!2069523) (not e!3031380))))

(assert (=> b!4849482 (= res!2069523 (dynLambda!22361 lambda!242643 (h!62010 (toList!7867 lm!2646))))))

(declare-fun b!4849483 () Bool)

(assert (=> b!4849483 (= e!3031380 (forall!12960 (t!363193 (toList!7867 lm!2646)) lambda!242643))))

(assert (= (and d!1556234 (not res!2069522)) b!4849482))

(assert (= (and b!4849482 res!2069523) b!4849483))

(declare-fun b_lambda!192735 () Bool)

(assert (=> (not b_lambda!192735) (not b!4849482)))

(declare-fun m!5847694 () Bool)

(assert (=> b!4849482 m!5847694))

(declare-fun m!5847696 () Bool)

(assert (=> b!4849483 m!5847696))

(assert (=> d!1556096 d!1556234))

(declare-fun d!1556236 () Bool)

(declare-fun res!2069524 () Bool)

(declare-fun e!3031381 () Bool)

(assert (=> d!1556236 (=> res!2069524 e!3031381)))

(assert (=> d!1556236 (= res!2069524 (is-Nil!55573 (t!363193 (toList!7867 lm!2646))))))

(assert (=> d!1556236 (= (forall!12960 (t!363193 (toList!7867 lm!2646)) lambda!242633) e!3031381)))

(declare-fun b!4849484 () Bool)

(declare-fun e!3031382 () Bool)

(assert (=> b!4849484 (= e!3031381 e!3031382)))

(declare-fun res!2069525 () Bool)

(assert (=> b!4849484 (=> (not res!2069525) (not e!3031382))))

(assert (=> b!4849484 (= res!2069525 (dynLambda!22361 lambda!242633 (h!62010 (t!363193 (toList!7867 lm!2646)))))))

(declare-fun b!4849485 () Bool)

(assert (=> b!4849485 (= e!3031382 (forall!12960 (t!363193 (t!363193 (toList!7867 lm!2646))) lambda!242633))))

(assert (= (and d!1556236 (not res!2069524)) b!4849484))

(assert (= (and b!4849484 res!2069525) b!4849485))

(declare-fun b_lambda!192737 () Bool)

(assert (=> (not b_lambda!192737) (not b!4849484)))

(declare-fun m!5847698 () Bool)

(assert (=> b!4849484 m!5847698))

(declare-fun m!5847700 () Bool)

(assert (=> b!4849485 m!5847700))

(assert (=> b!4849296 d!1556236))

(declare-fun lt!1989351 () Bool)

(declare-fun d!1556238 () Bool)

(assert (=> d!1556238 (= lt!1989351 (set.member (tuple2!59281 lt!1989261 lt!1989255) (content!9890 (toList!7867 lm!2646))))))

(declare-fun e!3031384 () Bool)

(assert (=> d!1556238 (= lt!1989351 e!3031384)))

(declare-fun res!2069527 () Bool)

(assert (=> d!1556238 (=> (not res!2069527) (not e!3031384))))

(assert (=> d!1556238 (= res!2069527 (is-Cons!55573 (toList!7867 lm!2646)))))

(assert (=> d!1556238 (= (contains!19234 (toList!7867 lm!2646) (tuple2!59281 lt!1989261 lt!1989255)) lt!1989351)))

(declare-fun b!4849486 () Bool)

(declare-fun e!3031383 () Bool)

(assert (=> b!4849486 (= e!3031384 e!3031383)))

(declare-fun res!2069526 () Bool)

(assert (=> b!4849486 (=> res!2069526 e!3031383)))

(assert (=> b!4849486 (= res!2069526 (= (h!62010 (toList!7867 lm!2646)) (tuple2!59281 lt!1989261 lt!1989255)))))

(declare-fun b!4849487 () Bool)

(assert (=> b!4849487 (= e!3031383 (contains!19234 (t!363193 (toList!7867 lm!2646)) (tuple2!59281 lt!1989261 lt!1989255)))))

(assert (= (and d!1556238 res!2069527) b!4849486))

(assert (= (and b!4849486 (not res!2069526)) b!4849487))

(assert (=> d!1556238 m!5847506))

(declare-fun m!5847702 () Bool)

(assert (=> d!1556238 m!5847702))

(declare-fun m!5847704 () Bool)

(assert (=> b!4849487 m!5847704))

(assert (=> d!1556130 d!1556238))

(declare-fun d!1556240 () Bool)

(assert (=> d!1556240 (contains!19234 (toList!7867 lm!2646) (tuple2!59281 lt!1989261 lt!1989255))))

(assert (=> d!1556240 true))

(declare-fun _$41!561 () Unit!145714)

(assert (=> d!1556240 (= (choose!35480 lm!2646 lt!1989261 lt!1989255) _$41!561)))

(declare-fun bs!1172713 () Bool)

(assert (= bs!1172713 d!1556240))

(assert (=> bs!1172713 m!5847536))

(assert (=> d!1556130 d!1556240))

(assert (=> d!1556130 d!1556098))

(declare-fun d!1556242 () Bool)

(declare-fun res!2069528 () Bool)

(declare-fun e!3031385 () Bool)

(assert (=> d!1556242 (=> res!2069528 e!3031385)))

(assert (=> d!1556242 (= res!2069528 (is-Nil!55573 (t!363193 (toList!7867 lt!1989259))))))

(assert (=> d!1556242 (= (forall!12960 (t!363193 (toList!7867 lt!1989259)) lambda!242633) e!3031385)))

(declare-fun b!4849489 () Bool)

(declare-fun e!3031386 () Bool)

(assert (=> b!4849489 (= e!3031385 e!3031386)))

(declare-fun res!2069529 () Bool)

(assert (=> b!4849489 (=> (not res!2069529) (not e!3031386))))

(assert (=> b!4849489 (= res!2069529 (dynLambda!22361 lambda!242633 (h!62010 (t!363193 (toList!7867 lt!1989259)))))))

(declare-fun b!4849490 () Bool)

(assert (=> b!4849490 (= e!3031386 (forall!12960 (t!363193 (t!363193 (toList!7867 lt!1989259))) lambda!242633))))

(assert (= (and d!1556242 (not res!2069528)) b!4849489))

(assert (= (and b!4849489 res!2069529) b!4849490))

(declare-fun b_lambda!192739 () Bool)

(assert (=> (not b_lambda!192739) (not b!4849489)))

(declare-fun m!5847706 () Bool)

(assert (=> b!4849489 m!5847706))

(declare-fun m!5847708 () Bool)

(assert (=> b!4849490 m!5847708))

(assert (=> b!4849301 d!1556242))

(declare-fun d!1556244 () Bool)

(assert (=> d!1556244 (= (get!19050 lt!1989310) (v!49459 lt!1989310))))

(assert (=> b!4849336 d!1556244))

(declare-fun d!1556246 () Bool)

(declare-fun res!2069530 () Bool)

(declare-fun e!3031387 () Bool)

(assert (=> d!1556246 (=> res!2069530 e!3031387)))

(assert (=> d!1556246 (= res!2069530 (and (is-Cons!55572 (t!363192 (_2!32934 (h!62010 (toList!7867 lm!2646))))) (= (_1!32933 (h!62009 (t!363192 (_2!32934 (h!62010 (toList!7867 lm!2646)))))) key!6445)))))

(assert (=> d!1556246 (= (containsKey!4695 (t!363192 (_2!32934 (h!62010 (toList!7867 lm!2646)))) key!6445) e!3031387)))

(declare-fun b!4849491 () Bool)

(declare-fun e!3031388 () Bool)

(assert (=> b!4849491 (= e!3031387 e!3031388)))

(declare-fun res!2069531 () Bool)

(assert (=> b!4849491 (=> (not res!2069531) (not e!3031388))))

(assert (=> b!4849491 (= res!2069531 (is-Cons!55572 (t!363192 (_2!32934 (h!62010 (toList!7867 lm!2646))))))))

(declare-fun b!4849492 () Bool)

(assert (=> b!4849492 (= e!3031388 (containsKey!4695 (t!363192 (t!363192 (_2!32934 (h!62010 (toList!7867 lm!2646))))) key!6445))))

(assert (= (and d!1556246 (not res!2069530)) b!4849491))

(assert (= (and b!4849491 res!2069531) b!4849492))

(declare-fun m!5847710 () Bool)

(assert (=> b!4849492 m!5847710))

(assert (=> b!4849275 d!1556246))

(declare-fun d!1556248 () Bool)

(assert (=> d!1556248 (dynLambda!22361 lambda!242633 lt!1989260)))

(assert (=> d!1556248 true))

(declare-fun _$7!2482 () Unit!145714)

(assert (=> d!1556248 (= (choose!35479 (toList!7867 lm!2646) lambda!242633 lt!1989260) _$7!2482)))

(declare-fun b_lambda!192741 () Bool)

(assert (=> (not b_lambda!192741) (not d!1556248)))

(declare-fun bs!1172714 () Bool)

(assert (= bs!1172714 d!1556248))

(assert (=> bs!1172714 m!5847532))

(assert (=> d!1556128 d!1556248))

(assert (=> d!1556128 d!1556104))

(declare-fun d!1556250 () Bool)

(assert (=> d!1556250 (= (isDefined!10776 lt!1989310) (not (isEmpty!29741 lt!1989310)))))

(declare-fun bs!1172715 () Bool)

(assert (= bs!1172715 d!1556250))

(assert (=> bs!1172715 m!5847528))

(assert (=> b!4849332 d!1556250))

(declare-fun d!1556252 () Bool)

(declare-fun lt!1989354 () Bool)

(declare-fun content!9892 (List!55696) (Set tuple2!59278))

(assert (=> d!1556252 (= lt!1989354 (set.member (get!19050 lt!1989310) (content!9892 lt!1989255)))))

(declare-fun e!3031394 () Bool)

(assert (=> d!1556252 (= lt!1989354 e!3031394)))

(declare-fun res!2069537 () Bool)

(assert (=> d!1556252 (=> (not res!2069537) (not e!3031394))))

(assert (=> d!1556252 (= res!2069537 (is-Cons!55572 lt!1989255))))

(assert (=> d!1556252 (= (contains!19237 lt!1989255 (get!19050 lt!1989310)) lt!1989354)))

(declare-fun b!4849497 () Bool)

(declare-fun e!3031393 () Bool)

(assert (=> b!4849497 (= e!3031394 e!3031393)))

(declare-fun res!2069536 () Bool)

(assert (=> b!4849497 (=> res!2069536 e!3031393)))

(assert (=> b!4849497 (= res!2069536 (= (h!62009 lt!1989255) (get!19050 lt!1989310)))))

(declare-fun b!4849498 () Bool)

(assert (=> b!4849498 (= e!3031393 (contains!19237 (t!363192 lt!1989255) (get!19050 lt!1989310)))))

(assert (= (and d!1556252 res!2069537) b!4849497))

(assert (= (and b!4849497 (not res!2069536)) b!4849498))

(declare-fun m!5847712 () Bool)

(assert (=> d!1556252 m!5847712))

(assert (=> d!1556252 m!5847522))

(declare-fun m!5847714 () Bool)

(assert (=> d!1556252 m!5847714))

(assert (=> b!4849498 m!5847522))

(declare-fun m!5847716 () Bool)

(assert (=> b!4849498 m!5847716))

(assert (=> b!4849333 d!1556252))

(assert (=> b!4849333 d!1556244))

(declare-fun tp!1364751 () Bool)

(declare-fun e!3031397 () Bool)

(declare-fun tp_is_empty!35217 () Bool)

(declare-fun b!4849503 () Bool)

(assert (=> b!4849503 (= e!3031397 (and tp_is_empty!35213 tp_is_empty!35217 tp!1364751))))

(assert (=> b!4849355 (= tp!1364741 e!3031397)))

(assert (= (and b!4849355 (is-Cons!55572 (_2!32934 (h!62010 (toList!7867 lm!2646))))) b!4849503))

(declare-fun b!4849504 () Bool)

(declare-fun e!3031398 () Bool)

(declare-fun tp!1364752 () Bool)

(declare-fun tp!1364753 () Bool)

(assert (=> b!4849504 (= e!3031398 (and tp!1364752 tp!1364753))))

(assert (=> b!4849355 (= tp!1364742 e!3031398)))

(assert (= (and b!4849355 (is-Cons!55573 (t!363193 (toList!7867 lm!2646)))) b!4849504))

(declare-fun b_lambda!192743 () Bool)

(assert (= b_lambda!192733 (or d!1556114 b_lambda!192743)))

(declare-fun bs!1172716 () Bool)

(declare-fun d!1556254 () Bool)

(assert (= bs!1172716 (and d!1556254 d!1556114)))

(declare-fun allKeysSameHash!2036 (List!55696 (_ BitVec 64) Hashable!7507) Bool)

(assert (=> bs!1172716 (= (dynLambda!22361 lambda!242646 (h!62010 (toList!7867 lm!2646))) (allKeysSameHash!2036 (_2!32934 (h!62010 (toList!7867 lm!2646))) (_1!32934 (h!62010 (toList!7867 lm!2646))) hashF!1641))))

(declare-fun m!5847718 () Bool)

(assert (=> bs!1172716 m!5847718))

(assert (=> b!4849478 d!1556254))

(declare-fun b_lambda!192745 () Bool)

(assert (= b_lambda!192741 (or start!505674 b_lambda!192745)))

(assert (=> d!1556248 d!1556142))

(declare-fun b_lambda!192747 () Bool)

(assert (= b_lambda!192735 (or d!1556096 b_lambda!192747)))

(declare-fun bs!1172717 () Bool)

(declare-fun d!1556256 () Bool)

(assert (= bs!1172717 (and d!1556256 d!1556096)))

(assert (=> bs!1172717 (= (dynLambda!22361 lambda!242643 (h!62010 (toList!7867 lm!2646))) (noDuplicateKeys!2595 (_2!32934 (h!62010 (toList!7867 lm!2646)))))))

(assert (=> bs!1172717 m!5847546))

(assert (=> b!4849482 d!1556256))

(declare-fun b_lambda!192749 () Bool)

(assert (= b_lambda!192731 (or d!1556136 b_lambda!192749)))

(declare-fun bs!1172718 () Bool)

(declare-fun d!1556258 () Bool)

(assert (= bs!1172718 (and d!1556258 d!1556136)))

(assert (=> bs!1172718 (= (dynLambda!22361 lambda!242647 (h!62010 (toList!7867 lt!1989259))) (allKeysSameHash!2036 (_2!32934 (h!62010 (toList!7867 lt!1989259))) (_1!32934 (h!62010 (toList!7867 lt!1989259))) hashF!1641))))

(declare-fun m!5847720 () Bool)

(assert (=> bs!1172718 m!5847720))

(assert (=> b!4849458 d!1556258))

(declare-fun b_lambda!192751 () Bool)

(assert (= b_lambda!192739 (or start!505674 b_lambda!192751)))

(declare-fun bs!1172719 () Bool)

(declare-fun d!1556260 () Bool)

(assert (= bs!1172719 (and d!1556260 start!505674)))

(assert (=> bs!1172719 (= (dynLambda!22361 lambda!242633 (h!62010 (t!363193 (toList!7867 lt!1989259)))) (noDuplicateKeys!2595 (_2!32934 (h!62010 (t!363193 (toList!7867 lt!1989259))))))))

(declare-fun m!5847722 () Bool)

(assert (=> bs!1172719 m!5847722))

(assert (=> b!4849489 d!1556260))

(declare-fun b_lambda!192753 () Bool)

(assert (= b_lambda!192737 (or start!505674 b_lambda!192753)))

(declare-fun bs!1172720 () Bool)

(declare-fun d!1556262 () Bool)

(assert (= bs!1172720 (and d!1556262 start!505674)))

(assert (=> bs!1172720 (= (dynLambda!22361 lambda!242633 (h!62010 (t!363193 (toList!7867 lm!2646)))) (noDuplicateKeys!2595 (_2!32934 (h!62010 (t!363193 (toList!7867 lm!2646))))))))

(declare-fun m!5847724 () Bool)

(assert (=> bs!1172720 m!5847724))

(assert (=> b!4849484 d!1556262))

(push 1)

(assert (not b!4849444))

(assert (not b!4849487))

(assert (not d!1556188))

(assert (not b!4849483))

(assert (not bs!1172716))

(assert (not d!1556252))

(assert (not b!4849476))

(assert (not b!4849436))

(assert (not d!1556250))

(assert (not b!4849477))

(assert (not bs!1172719))

(assert (not d!1556198))

(assert (not b!4849481))

(assert (not d!1556192))

(assert (not d!1556232))

(assert (not b!4849419))

(assert (not b!4849450))

(assert (not b!4849492))

(assert (not d!1556184))

(assert (not b!4849504))

(assert tp_is_empty!35213)

(assert (not d!1556182))

(assert (not b!4849421))

(assert (not b!4849413))

(assert (not b_lambda!192743))

(assert (not b!4849449))

(assert (not b!4849432))

(assert (not b!4849467))

(assert (not b!4849459))

(assert (not b!4849480))

(assert (not b!4849503))

(assert (not b!4849479))

(assert (not d!1556240))

(assert (not b!4849498))

(assert (not b_lambda!192717))

(assert (not b_lambda!192753))

(assert tp_is_empty!35217)

(assert (not b!4849448))

(assert (not b_lambda!192747))

(assert (not d!1556216))

(assert (not b!4849475))

(assert (not b!4849454))

(assert (not b!4849418))

(assert (not b_lambda!192721))

(assert (not b_lambda!192751))

(assert (not b!4849445))

(assert (not b!4849440))

(assert (not b!4849485))

(assert (not bs!1172717))

(assert (not b!4849473))

(assert (not b_lambda!192719))

(assert (not b_lambda!192749))

(assert (not b!4849451))

(assert (not d!1556238))

(assert (not b!4849465))

(assert (not d!1556200))

(assert (not bs!1172720))

(assert (not bs!1172718))

(assert (not b!4849490))

(assert (not b!4849457))

(assert (not b!4849442))

(assert (not b_lambda!192745))

(assert (not b!4849456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

