; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504798 () Bool)

(assert start!504798)

(declare-fun b!4846330 () Bool)

(declare-fun e!3029070 () Bool)

(declare-datatypes ((K!17292 0))(
  ( (K!17293 (val!22139 Int)) )
))
(declare-datatypes ((V!17538 0))(
  ( (V!17539 (val!22140 Int)) )
))
(declare-datatypes ((tuple2!59150 0))(
  ( (tuple2!59151 (_1!32869 K!17292) (_2!32869 V!17538)) )
))
(declare-datatypes ((List!55632 0))(
  ( (Nil!55508) (Cons!55508 (h!61945 tuple2!59150) (t!363128 List!55632)) )
))
(declare-datatypes ((tuple2!59152 0))(
  ( (tuple2!59153 (_1!32870 (_ BitVec 64)) (_2!32870 List!55632)) )
))
(declare-datatypes ((List!55633 0))(
  ( (Nil!55509) (Cons!55509 (h!61946 tuple2!59152) (t!363129 List!55633)) )
))
(declare-datatypes ((ListLongMap!6413 0))(
  ( (ListLongMap!6414 (toList!7835 List!55633)) )
))
(declare-fun lm!2646 () ListLongMap!6413)

(declare-fun isEmpty!29711 (ListLongMap!6413) Bool)

(assert (=> b!4846330 (= e!3029070 (not (isEmpty!29711 lm!2646)))))

(declare-fun b!4846331 () Bool)

(declare-fun res!2067441 () Bool)

(declare-fun e!3029069 () Bool)

(assert (=> b!4846331 (=> (not res!2067441) (not e!3029069))))

(declare-datatypes ((Hashable!7475 0))(
  ( (HashableExt!7474 (__x!33750 Int)) )
))
(declare-fun hashF!1641 () Hashable!7475)

(declare-fun allKeysSameHashInMap!2791 (ListLongMap!6413 Hashable!7475) Bool)

(assert (=> b!4846331 (= res!2067441 (allKeysSameHashInMap!2791 lm!2646 hashF!1641))))

(declare-fun b!4846332 () Bool)

(declare-fun e!3029073 () Bool)

(declare-fun e!3029071 () Bool)

(assert (=> b!4846332 (= e!3029073 (not e!3029071))))

(declare-fun res!2067436 () Bool)

(assert (=> b!4846332 (=> res!2067436 e!3029071)))

(declare-fun lt!1988046 () List!55632)

(declare-fun key!6445 () K!17292)

(declare-datatypes ((Option!13635 0))(
  ( (None!13634) (Some!13634 (v!49380 tuple2!59150)) )
))
(declare-fun isDefined!10727 (Option!13635) Bool)

(declare-fun getPair!1065 (List!55632 K!17292) Option!13635)

(assert (=> b!4846332 (= res!2067436 (not (isDefined!10727 (getPair!1065 lt!1988046 key!6445))))))

(declare-datatypes ((Unit!145631 0))(
  ( (Unit!145632) )
))
(declare-fun lt!1988048 () Unit!145631)

(declare-fun lambda!242335 () Int)

(declare-fun lt!1988047 () tuple2!59152)

(declare-fun forallContained!4516 (List!55633 Int tuple2!59152) Unit!145631)

(assert (=> b!4846332 (= lt!1988048 (forallContained!4516 (toList!7835 lm!2646) lambda!242335 lt!1988047))))

(declare-fun contains!19152 (List!55633 tuple2!59152) Bool)

(assert (=> b!4846332 (contains!19152 (toList!7835 lm!2646) lt!1988047)))

(declare-fun lt!1988045 () (_ BitVec 64))

(assert (=> b!4846332 (= lt!1988047 (tuple2!59153 lt!1988045 lt!1988046))))

(declare-fun lt!1988044 () Unit!145631)

(declare-fun lemmaGetValueImpliesTupleContained!742 (ListLongMap!6413 (_ BitVec 64) List!55632) Unit!145631)

(assert (=> b!4846332 (= lt!1988044 (lemmaGetValueImpliesTupleContained!742 lm!2646 lt!1988045 lt!1988046))))

(declare-fun apply!13418 (ListLongMap!6413 (_ BitVec 64)) List!55632)

(assert (=> b!4846332 (= lt!1988046 (apply!13418 lm!2646 lt!1988045))))

(declare-fun b!4846333 () Bool)

(declare-fun res!2067440 () Bool)

(assert (=> b!4846333 (=> res!2067440 e!3029071)))

(assert (=> b!4846333 (= res!2067440 (or (and (is-Cons!55509 (toList!7835 lm!2646)) (= (_1!32870 (h!61946 (toList!7835 lm!2646))) lt!1988045)) (not (is-Cons!55509 (toList!7835 lm!2646))) (= lt!1988045 (_1!32870 (h!61946 (toList!7835 lm!2646))))))))

(declare-fun b!4846335 () Bool)

(assert (=> b!4846335 (= e!3029071 e!3029070)))

(declare-fun res!2067437 () Bool)

(assert (=> b!4846335 (=> res!2067437 e!3029070)))

(declare-fun containsKey!4655 (List!55632 K!17292) Bool)

(assert (=> b!4846335 (= res!2067437 (containsKey!4655 (_2!32870 (h!61946 (toList!7835 lm!2646))) key!6445))))

(assert (=> b!4846335 (not (containsKey!4655 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646)))) key!6445))))

(declare-fun lt!1988049 () Unit!145631)

(declare-fun lemmaNotSameHashThenCannotContainKey!243 (ListLongMap!6413 K!17292 (_ BitVec 64) Hashable!7475) Unit!145631)

(assert (=> b!4846335 (= lt!1988049 (lemmaNotSameHashThenCannotContainKey!243 lm!2646 key!6445 (_1!32870 (h!61946 (toList!7835 lm!2646))) hashF!1641))))

(declare-fun b!4846336 () Bool)

(declare-fun e!3029072 () Bool)

(declare-fun tp!1364469 () Bool)

(assert (=> b!4846336 (= e!3029072 tp!1364469)))

(declare-fun res!2067438 () Bool)

(assert (=> start!504798 (=> (not res!2067438) (not e!3029069))))

(declare-fun forall!12928 (List!55633 Int) Bool)

(assert (=> start!504798 (= res!2067438 (forall!12928 (toList!7835 lm!2646) lambda!242335))))

(assert (=> start!504798 e!3029069))

(declare-fun inv!71179 (ListLongMap!6413) Bool)

(assert (=> start!504798 (and (inv!71179 lm!2646) e!3029072)))

(assert (=> start!504798 true))

(declare-fun tp_is_empty!35125 () Bool)

(assert (=> start!504798 tp_is_empty!35125))

(declare-fun b!4846334 () Bool)

(assert (=> b!4846334 (= e!3029069 e!3029073)))

(declare-fun res!2067439 () Bool)

(assert (=> b!4846334 (=> (not res!2067439) (not e!3029073))))

(declare-fun contains!19153 (ListLongMap!6413 (_ BitVec 64)) Bool)

(assert (=> b!4846334 (= res!2067439 (contains!19153 lm!2646 lt!1988045))))

(declare-fun hash!5545 (Hashable!7475 K!17292) (_ BitVec 64))

(assert (=> b!4846334 (= lt!1988045 (hash!5545 hashF!1641 key!6445))))

(assert (= (and start!504798 res!2067438) b!4846331))

(assert (= (and b!4846331 res!2067441) b!4846334))

(assert (= (and b!4846334 res!2067439) b!4846332))

(assert (= (and b!4846332 (not res!2067436)) b!4846333))

(assert (= (and b!4846333 (not res!2067440)) b!4846335))

(assert (= (and b!4846335 (not res!2067437)) b!4846330))

(assert (= start!504798 b!4846336))

(declare-fun m!5844240 () Bool)

(assert (=> b!4846331 m!5844240))

(declare-fun m!5844242 () Bool)

(assert (=> b!4846334 m!5844242))

(declare-fun m!5844244 () Bool)

(assert (=> b!4846334 m!5844244))

(declare-fun m!5844246 () Bool)

(assert (=> b!4846335 m!5844246))

(declare-fun m!5844248 () Bool)

(assert (=> b!4846335 m!5844248))

(assert (=> b!4846335 m!5844248))

(declare-fun m!5844250 () Bool)

(assert (=> b!4846335 m!5844250))

(declare-fun m!5844252 () Bool)

(assert (=> b!4846335 m!5844252))

(declare-fun m!5844254 () Bool)

(assert (=> start!504798 m!5844254))

(declare-fun m!5844256 () Bool)

(assert (=> start!504798 m!5844256))

(declare-fun m!5844258 () Bool)

(assert (=> b!4846332 m!5844258))

(declare-fun m!5844260 () Bool)

(assert (=> b!4846332 m!5844260))

(assert (=> b!4846332 m!5844260))

(declare-fun m!5844262 () Bool)

(assert (=> b!4846332 m!5844262))

(declare-fun m!5844264 () Bool)

(assert (=> b!4846332 m!5844264))

(declare-fun m!5844266 () Bool)

(assert (=> b!4846332 m!5844266))

(declare-fun m!5844268 () Bool)

(assert (=> b!4846332 m!5844268))

(declare-fun m!5844270 () Bool)

(assert (=> b!4846330 m!5844270))

(push 1)

(assert tp_is_empty!35125)

(assert (not b!4846332))

(assert (not start!504798))

(assert (not b!4846336))

(assert (not b!4846330))

(assert (not b!4846334))

(assert (not b!4846335))

(assert (not b!4846331))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554684 () Bool)

(declare-fun res!2067464 () Bool)

(declare-fun e!3029093 () Bool)

(assert (=> d!1554684 (=> res!2067464 e!3029093)))

(assert (=> d!1554684 (= res!2067464 (is-Nil!55509 (toList!7835 lm!2646)))))

(assert (=> d!1554684 (= (forall!12928 (toList!7835 lm!2646) lambda!242335) e!3029093)))

(declare-fun b!4846362 () Bool)

(declare-fun e!3029094 () Bool)

(assert (=> b!4846362 (= e!3029093 e!3029094)))

(declare-fun res!2067465 () Bool)

(assert (=> b!4846362 (=> (not res!2067465) (not e!3029094))))

(declare-fun dynLambda!22344 (Int tuple2!59152) Bool)

(assert (=> b!4846362 (= res!2067465 (dynLambda!22344 lambda!242335 (h!61946 (toList!7835 lm!2646))))))

(declare-fun b!4846363 () Bool)

(assert (=> b!4846363 (= e!3029094 (forall!12928 (t!363129 (toList!7835 lm!2646)) lambda!242335))))

(assert (= (and d!1554684 (not res!2067464)) b!4846362))

(assert (= (and b!4846362 res!2067465) b!4846363))

(declare-fun b_lambda!192363 () Bool)

(assert (=> (not b_lambda!192363) (not b!4846362)))

(declare-fun m!5844304 () Bool)

(assert (=> b!4846362 m!5844304))

(declare-fun m!5844306 () Bool)

(assert (=> b!4846363 m!5844306))

(assert (=> start!504798 d!1554684))

(declare-fun d!1554686 () Bool)

(declare-fun isStrictlySorted!1067 (List!55633) Bool)

(assert (=> d!1554686 (= (inv!71179 lm!2646) (isStrictlySorted!1067 (toList!7835 lm!2646)))))

(declare-fun bs!1172323 () Bool)

(assert (= bs!1172323 d!1554686))

(declare-fun m!5844308 () Bool)

(assert (=> bs!1172323 m!5844308))

(assert (=> start!504798 d!1554686))

(declare-fun d!1554688 () Bool)

(declare-fun lt!1988070 () Bool)

(declare-fun content!9864 (List!55633) (Set tuple2!59152))

(assert (=> d!1554688 (= lt!1988070 (set.member lt!1988047 (content!9864 (toList!7835 lm!2646))))))

(declare-fun e!3029100 () Bool)

(assert (=> d!1554688 (= lt!1988070 e!3029100)))

(declare-fun res!2067470 () Bool)

(assert (=> d!1554688 (=> (not res!2067470) (not e!3029100))))

(assert (=> d!1554688 (= res!2067470 (is-Cons!55509 (toList!7835 lm!2646)))))

(assert (=> d!1554688 (= (contains!19152 (toList!7835 lm!2646) lt!1988047) lt!1988070)))

(declare-fun b!4846368 () Bool)

(declare-fun e!3029099 () Bool)

(assert (=> b!4846368 (= e!3029100 e!3029099)))

(declare-fun res!2067471 () Bool)

(assert (=> b!4846368 (=> res!2067471 e!3029099)))

(assert (=> b!4846368 (= res!2067471 (= (h!61946 (toList!7835 lm!2646)) lt!1988047))))

(declare-fun b!4846369 () Bool)

(assert (=> b!4846369 (= e!3029099 (contains!19152 (t!363129 (toList!7835 lm!2646)) lt!1988047))))

(assert (= (and d!1554688 res!2067470) b!4846368))

(assert (= (and b!4846368 (not res!2067471)) b!4846369))

(declare-fun m!5844310 () Bool)

(assert (=> d!1554688 m!5844310))

(declare-fun m!5844312 () Bool)

(assert (=> d!1554688 m!5844312))

(declare-fun m!5844314 () Bool)

(assert (=> b!4846369 m!5844314))

(assert (=> b!4846332 d!1554688))

(declare-fun d!1554690 () Bool)

(assert (=> d!1554690 (contains!19152 (toList!7835 lm!2646) (tuple2!59153 lt!1988045 lt!1988046))))

(declare-fun lt!1988073 () Unit!145631)

(declare-fun choose!35416 (ListLongMap!6413 (_ BitVec 64) List!55632) Unit!145631)

(assert (=> d!1554690 (= lt!1988073 (choose!35416 lm!2646 lt!1988045 lt!1988046))))

(assert (=> d!1554690 (contains!19153 lm!2646 lt!1988045)))

(assert (=> d!1554690 (= (lemmaGetValueImpliesTupleContained!742 lm!2646 lt!1988045 lt!1988046) lt!1988073)))

(declare-fun bs!1172324 () Bool)

(assert (= bs!1172324 d!1554690))

(declare-fun m!5844316 () Bool)

(assert (=> bs!1172324 m!5844316))

(declare-fun m!5844318 () Bool)

(assert (=> bs!1172324 m!5844318))

(assert (=> bs!1172324 m!5844242))

(assert (=> b!4846332 d!1554690))

(declare-fun b!4846388 () Bool)

(declare-fun e!3029114 () Option!13635)

(assert (=> b!4846388 (= e!3029114 None!13634)))

(declare-fun b!4846389 () Bool)

(declare-fun e!3029112 () Bool)

(declare-fun e!3029115 () Bool)

(assert (=> b!4846389 (= e!3029112 e!3029115)))

(declare-fun res!2067483 () Bool)

(assert (=> b!4846389 (=> (not res!2067483) (not e!3029115))))

(declare-fun lt!1988076 () Option!13635)

(assert (=> b!4846389 (= res!2067483 (isDefined!10727 lt!1988076))))

(declare-fun b!4846390 () Bool)

(declare-fun e!3029111 () Option!13635)

(assert (=> b!4846390 (= e!3029111 e!3029114)))

(declare-fun c!824984 () Bool)

(assert (=> b!4846390 (= c!824984 (is-Cons!55508 lt!1988046))))

(declare-fun b!4846391 () Bool)

(declare-fun contains!19156 (List!55632 tuple2!59150) Bool)

(declare-fun get!18999 (Option!13635) tuple2!59150)

(assert (=> b!4846391 (= e!3029115 (contains!19156 lt!1988046 (get!18999 lt!1988076)))))

(declare-fun b!4846392 () Bool)

(assert (=> b!4846392 (= e!3029114 (getPair!1065 (t!363128 lt!1988046) key!6445))))

(declare-fun b!4846387 () Bool)

(declare-fun res!2067480 () Bool)

(assert (=> b!4846387 (=> (not res!2067480) (not e!3029115))))

(assert (=> b!4846387 (= res!2067480 (= (_1!32869 (get!18999 lt!1988076)) key!6445))))

(declare-fun d!1554692 () Bool)

(assert (=> d!1554692 e!3029112))

(declare-fun res!2067482 () Bool)

(assert (=> d!1554692 (=> res!2067482 e!3029112)))

(declare-fun e!3029113 () Bool)

(assert (=> d!1554692 (= res!2067482 e!3029113)))

(declare-fun res!2067481 () Bool)

(assert (=> d!1554692 (=> (not res!2067481) (not e!3029113))))

(declare-fun isEmpty!29713 (Option!13635) Bool)

(assert (=> d!1554692 (= res!2067481 (isEmpty!29713 lt!1988076))))

(assert (=> d!1554692 (= lt!1988076 e!3029111)))

(declare-fun c!824983 () Bool)

(assert (=> d!1554692 (= c!824983 (and (is-Cons!55508 lt!1988046) (= (_1!32869 (h!61945 lt!1988046)) key!6445)))))

(declare-fun noDuplicateKeys!2578 (List!55632) Bool)

(assert (=> d!1554692 (noDuplicateKeys!2578 lt!1988046)))

(assert (=> d!1554692 (= (getPair!1065 lt!1988046 key!6445) lt!1988076)))

(declare-fun b!4846393 () Bool)

(assert (=> b!4846393 (= e!3029111 (Some!13634 (h!61945 lt!1988046)))))

(declare-fun b!4846394 () Bool)

(assert (=> b!4846394 (= e!3029113 (not (containsKey!4655 lt!1988046 key!6445)))))

(assert (= (and d!1554692 c!824983) b!4846393))

(assert (= (and d!1554692 (not c!824983)) b!4846390))

(assert (= (and b!4846390 c!824984) b!4846392))

(assert (= (and b!4846390 (not c!824984)) b!4846388))

(assert (= (and d!1554692 res!2067481) b!4846394))

(assert (= (and d!1554692 (not res!2067482)) b!4846389))

(assert (= (and b!4846389 res!2067483) b!4846387))

(assert (= (and b!4846387 res!2067480) b!4846391))

(declare-fun m!5844322 () Bool)

(assert (=> d!1554692 m!5844322))

(declare-fun m!5844324 () Bool)

(assert (=> d!1554692 m!5844324))

(declare-fun m!5844326 () Bool)

(assert (=> b!4846394 m!5844326))

(declare-fun m!5844328 () Bool)

(assert (=> b!4846389 m!5844328))

(declare-fun m!5844330 () Bool)

(assert (=> b!4846391 m!5844330))

(assert (=> b!4846391 m!5844330))

(declare-fun m!5844332 () Bool)

(assert (=> b!4846391 m!5844332))

(assert (=> b!4846387 m!5844330))

(declare-fun m!5844334 () Bool)

(assert (=> b!4846392 m!5844334))

(assert (=> b!4846332 d!1554692))

(declare-fun d!1554698 () Bool)

(assert (=> d!1554698 (= (isDefined!10727 (getPair!1065 lt!1988046 key!6445)) (not (isEmpty!29713 (getPair!1065 lt!1988046 key!6445))))))

(declare-fun bs!1172326 () Bool)

(assert (= bs!1172326 d!1554698))

(assert (=> bs!1172326 m!5844260))

(declare-fun m!5844336 () Bool)

(assert (=> bs!1172326 m!5844336))

(assert (=> b!4846332 d!1554698))

(declare-fun d!1554700 () Bool)

(declare-datatypes ((Option!13637 0))(
  ( (None!13636) (Some!13636 (v!49383 List!55632)) )
))
(declare-fun get!19000 (Option!13637) List!55632)

(declare-fun getValueByKey!2718 (List!55633 (_ BitVec 64)) Option!13637)

(assert (=> d!1554700 (= (apply!13418 lm!2646 lt!1988045) (get!19000 (getValueByKey!2718 (toList!7835 lm!2646) lt!1988045)))))

(declare-fun bs!1172327 () Bool)

(assert (= bs!1172327 d!1554700))

(declare-fun m!5844338 () Bool)

(assert (=> bs!1172327 m!5844338))

(assert (=> bs!1172327 m!5844338))

(declare-fun m!5844340 () Bool)

(assert (=> bs!1172327 m!5844340))

(assert (=> b!4846332 d!1554700))

(declare-fun d!1554702 () Bool)

(assert (=> d!1554702 (dynLambda!22344 lambda!242335 lt!1988047)))

(declare-fun lt!1988079 () Unit!145631)

(declare-fun choose!35417 (List!55633 Int tuple2!59152) Unit!145631)

(assert (=> d!1554702 (= lt!1988079 (choose!35417 (toList!7835 lm!2646) lambda!242335 lt!1988047))))

(declare-fun e!3029118 () Bool)

(assert (=> d!1554702 e!3029118))

(declare-fun res!2067486 () Bool)

(assert (=> d!1554702 (=> (not res!2067486) (not e!3029118))))

(assert (=> d!1554702 (= res!2067486 (forall!12928 (toList!7835 lm!2646) lambda!242335))))

(assert (=> d!1554702 (= (forallContained!4516 (toList!7835 lm!2646) lambda!242335 lt!1988047) lt!1988079)))

(declare-fun b!4846397 () Bool)

(assert (=> b!4846397 (= e!3029118 (contains!19152 (toList!7835 lm!2646) lt!1988047))))

(assert (= (and d!1554702 res!2067486) b!4846397))

(declare-fun b_lambda!192365 () Bool)

(assert (=> (not b_lambda!192365) (not d!1554702)))

(declare-fun m!5844342 () Bool)

(assert (=> d!1554702 m!5844342))

(declare-fun m!5844344 () Bool)

(assert (=> d!1554702 m!5844344))

(assert (=> d!1554702 m!5844254))

(assert (=> b!4846397 m!5844258))

(assert (=> b!4846332 d!1554702))

(declare-fun bs!1172330 () Bool)

(declare-fun d!1554704 () Bool)

(assert (= bs!1172330 (and d!1554704 start!504798)))

(declare-fun lambda!242346 () Int)

(assert (=> bs!1172330 (not (= lambda!242346 lambda!242335))))

(assert (=> d!1554704 true))

(assert (=> d!1554704 (= (allKeysSameHashInMap!2791 lm!2646 hashF!1641) (forall!12928 (toList!7835 lm!2646) lambda!242346))))

(declare-fun bs!1172331 () Bool)

(assert (= bs!1172331 d!1554704))

(declare-fun m!5844348 () Bool)

(assert (=> bs!1172331 m!5844348))

(assert (=> b!4846331 d!1554704))

(declare-fun d!1554708 () Bool)

(declare-fun isEmpty!29714 (List!55633) Bool)

(assert (=> d!1554708 (= (isEmpty!29711 lm!2646) (isEmpty!29714 (toList!7835 lm!2646)))))

(declare-fun bs!1172332 () Bool)

(assert (= bs!1172332 d!1554708))

(declare-fun m!5844350 () Bool)

(assert (=> bs!1172332 m!5844350))

(assert (=> b!4846330 d!1554708))

(declare-fun d!1554710 () Bool)

(declare-fun res!2067497 () Bool)

(declare-fun e!3029129 () Bool)

(assert (=> d!1554710 (=> res!2067497 e!3029129)))

(assert (=> d!1554710 (= res!2067497 (and (is-Cons!55508 (_2!32870 (h!61946 (toList!7835 lm!2646)))) (= (_1!32869 (h!61945 (_2!32870 (h!61946 (toList!7835 lm!2646))))) key!6445)))))

(assert (=> d!1554710 (= (containsKey!4655 (_2!32870 (h!61946 (toList!7835 lm!2646))) key!6445) e!3029129)))

(declare-fun b!4846412 () Bool)

(declare-fun e!3029130 () Bool)

(assert (=> b!4846412 (= e!3029129 e!3029130)))

(declare-fun res!2067498 () Bool)

(assert (=> b!4846412 (=> (not res!2067498) (not e!3029130))))

(assert (=> b!4846412 (= res!2067498 (is-Cons!55508 (_2!32870 (h!61946 (toList!7835 lm!2646)))))))

(declare-fun b!4846413 () Bool)

(assert (=> b!4846413 (= e!3029130 (containsKey!4655 (t!363128 (_2!32870 (h!61946 (toList!7835 lm!2646)))) key!6445))))

(assert (= (and d!1554710 (not res!2067497)) b!4846412))

(assert (= (and b!4846412 res!2067498) b!4846413))

(declare-fun m!5844352 () Bool)

(assert (=> b!4846413 m!5844352))

(assert (=> b!4846335 d!1554710))

(declare-fun d!1554712 () Bool)

(declare-fun res!2067499 () Bool)

(declare-fun e!3029131 () Bool)

(assert (=> d!1554712 (=> res!2067499 e!3029131)))

(assert (=> d!1554712 (= res!2067499 (and (is-Cons!55508 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646))))) (= (_1!32869 (h!61945 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646)))))) key!6445)))))

(assert (=> d!1554712 (= (containsKey!4655 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646)))) key!6445) e!3029131)))

(declare-fun b!4846414 () Bool)

(declare-fun e!3029132 () Bool)

(assert (=> b!4846414 (= e!3029131 e!3029132)))

(declare-fun res!2067500 () Bool)

(assert (=> b!4846414 (=> (not res!2067500) (not e!3029132))))

(assert (=> b!4846414 (= res!2067500 (is-Cons!55508 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646))))))))

(declare-fun b!4846415 () Bool)

(assert (=> b!4846415 (= e!3029132 (containsKey!4655 (t!363128 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646))))) key!6445))))

(assert (= (and d!1554712 (not res!2067499)) b!4846414))

(assert (= (and b!4846414 res!2067500) b!4846415))

(declare-fun m!5844354 () Bool)

(assert (=> b!4846415 m!5844354))

(assert (=> b!4846335 d!1554712))

(declare-fun d!1554714 () Bool)

(assert (=> d!1554714 (= (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646)))) (get!19000 (getValueByKey!2718 (toList!7835 lm!2646) (_1!32870 (h!61946 (toList!7835 lm!2646))))))))

(declare-fun bs!1172333 () Bool)

(assert (= bs!1172333 d!1554714))

(declare-fun m!5844356 () Bool)

(assert (=> bs!1172333 m!5844356))

(assert (=> bs!1172333 m!5844356))

(declare-fun m!5844360 () Bool)

(assert (=> bs!1172333 m!5844360))

(assert (=> b!4846335 d!1554714))

(declare-fun bs!1172334 () Bool)

(declare-fun d!1554716 () Bool)

(assert (= bs!1172334 (and d!1554716 start!504798)))

(declare-fun lambda!242349 () Int)

(assert (=> bs!1172334 (= lambda!242349 lambda!242335)))

(declare-fun bs!1172335 () Bool)

(assert (= bs!1172335 (and d!1554716 d!1554704)))

(assert (=> bs!1172335 (not (= lambda!242349 lambda!242346))))

(assert (=> d!1554716 (not (containsKey!4655 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646)))) key!6445))))

(declare-fun lt!1988082 () Unit!145631)

(declare-fun choose!35418 (ListLongMap!6413 K!17292 (_ BitVec 64) Hashable!7475) Unit!145631)

(assert (=> d!1554716 (= lt!1988082 (choose!35418 lm!2646 key!6445 (_1!32870 (h!61946 (toList!7835 lm!2646))) hashF!1641))))

(assert (=> d!1554716 (forall!12928 (toList!7835 lm!2646) lambda!242349)))

(assert (=> d!1554716 (= (lemmaNotSameHashThenCannotContainKey!243 lm!2646 key!6445 (_1!32870 (h!61946 (toList!7835 lm!2646))) hashF!1641) lt!1988082)))

(declare-fun bs!1172337 () Bool)

(assert (= bs!1172337 d!1554716))

(assert (=> bs!1172337 m!5844248))

(assert (=> bs!1172337 m!5844248))

(assert (=> bs!1172337 m!5844250))

(declare-fun m!5844366 () Bool)

(assert (=> bs!1172337 m!5844366))

(declare-fun m!5844368 () Bool)

(assert (=> bs!1172337 m!5844368))

(assert (=> b!4846335 d!1554716))

(declare-fun d!1554722 () Bool)

(declare-fun e!3029137 () Bool)

(assert (=> d!1554722 e!3029137))

(declare-fun res!2067503 () Bool)

(assert (=> d!1554722 (=> res!2067503 e!3029137)))

(declare-fun lt!1988091 () Bool)

(assert (=> d!1554722 (= res!2067503 (not lt!1988091))))

(declare-fun lt!1988093 () Bool)

(assert (=> d!1554722 (= lt!1988091 lt!1988093)))

(declare-fun lt!1988094 () Unit!145631)

(declare-fun e!3029138 () Unit!145631)

(assert (=> d!1554722 (= lt!1988094 e!3029138)))

(declare-fun c!824987 () Bool)

(assert (=> d!1554722 (= c!824987 lt!1988093)))

(declare-fun containsKey!4657 (List!55633 (_ BitVec 64)) Bool)

(assert (=> d!1554722 (= lt!1988093 (containsKey!4657 (toList!7835 lm!2646) lt!1988045))))

(assert (=> d!1554722 (= (contains!19153 lm!2646 lt!1988045) lt!1988091)))

(declare-fun b!4846422 () Bool)

(declare-fun lt!1988092 () Unit!145631)

(assert (=> b!4846422 (= e!3029138 lt!1988092)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2490 (List!55633 (_ BitVec 64)) Unit!145631)

(assert (=> b!4846422 (= lt!1988092 (lemmaContainsKeyImpliesGetValueByKeyDefined!2490 (toList!7835 lm!2646) lt!1988045))))

(declare-fun isDefined!10729 (Option!13637) Bool)

(assert (=> b!4846422 (isDefined!10729 (getValueByKey!2718 (toList!7835 lm!2646) lt!1988045))))

(declare-fun b!4846423 () Bool)

(declare-fun Unit!145635 () Unit!145631)

(assert (=> b!4846423 (= e!3029138 Unit!145635)))

(declare-fun b!4846424 () Bool)

(assert (=> b!4846424 (= e!3029137 (isDefined!10729 (getValueByKey!2718 (toList!7835 lm!2646) lt!1988045)))))

(assert (= (and d!1554722 c!824987) b!4846422))

(assert (= (and d!1554722 (not c!824987)) b!4846423))

(assert (= (and d!1554722 (not res!2067503)) b!4846424))

(declare-fun m!5844370 () Bool)

(assert (=> d!1554722 m!5844370))

(declare-fun m!5844372 () Bool)

(assert (=> b!4846422 m!5844372))

(assert (=> b!4846422 m!5844338))

(assert (=> b!4846422 m!5844338))

(declare-fun m!5844374 () Bool)

(assert (=> b!4846422 m!5844374))

(assert (=> b!4846424 m!5844338))

(assert (=> b!4846424 m!5844338))

(assert (=> b!4846424 m!5844374))

(assert (=> b!4846334 d!1554722))

(declare-fun d!1554724 () Bool)

(declare-fun hash!5548 (Hashable!7475 K!17292) (_ BitVec 64))

(assert (=> d!1554724 (= (hash!5545 hashF!1641 key!6445) (hash!5548 hashF!1641 key!6445))))

(declare-fun bs!1172338 () Bool)

(assert (= bs!1172338 d!1554724))

(declare-fun m!5844376 () Bool)

(assert (=> bs!1172338 m!5844376))

(assert (=> b!4846334 d!1554724))

(declare-fun b!4846429 () Bool)

(declare-fun e!3029141 () Bool)

(declare-fun tp!1364477 () Bool)

(declare-fun tp!1364478 () Bool)

(assert (=> b!4846429 (= e!3029141 (and tp!1364477 tp!1364478))))

(assert (=> b!4846336 (= tp!1364469 e!3029141)))

(assert (= (and b!4846336 (is-Cons!55509 (toList!7835 lm!2646))) b!4846429))

(declare-fun b_lambda!192369 () Bool)

(assert (= b_lambda!192365 (or start!504798 b_lambda!192369)))

(declare-fun bs!1172339 () Bool)

(declare-fun d!1554726 () Bool)

(assert (= bs!1172339 (and d!1554726 start!504798)))

(assert (=> bs!1172339 (= (dynLambda!22344 lambda!242335 lt!1988047) (noDuplicateKeys!2578 (_2!32870 lt!1988047)))))

(declare-fun m!5844378 () Bool)

(assert (=> bs!1172339 m!5844378))

(assert (=> d!1554702 d!1554726))

(declare-fun b_lambda!192371 () Bool)

(assert (= b_lambda!192363 (or start!504798 b_lambda!192371)))

(declare-fun bs!1172340 () Bool)

(declare-fun d!1554728 () Bool)

(assert (= bs!1172340 (and d!1554728 start!504798)))

(assert (=> bs!1172340 (= (dynLambda!22344 lambda!242335 (h!61946 (toList!7835 lm!2646))) (noDuplicateKeys!2578 (_2!32870 (h!61946 (toList!7835 lm!2646)))))))

(declare-fun m!5844380 () Bool)

(assert (=> bs!1172340 m!5844380))

(assert (=> b!4846362 d!1554728))

(push 1)

(assert (not d!1554700))

(assert (not d!1554708))

(assert tp_is_empty!35125)

(assert (not b!4846363))

(assert (not d!1554702))

(assert (not d!1554704))

(assert (not d!1554722))

(assert (not d!1554724))

(assert (not d!1554690))

(assert (not d!1554716))

(assert (not bs!1172339))

(assert (not b_lambda!192371))

(assert (not d!1554686))

(assert (not b!4846369))

(assert (not b!4846422))

(assert (not b!4846424))

(assert (not b!4846413))

(assert (not b!4846392))

(assert (not b!4846394))

(assert (not b!4846415))

(assert (not d!1554692))

(assert (not bs!1172340))

(assert (not d!1554698))

(assert (not b!4846391))

(assert (not b!4846387))

(assert (not d!1554688))

(assert (not b!4846397))

(assert (not b!4846389))

(assert (not b_lambda!192369))

(assert (not d!1554714))

(assert (not b!4846429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554756 () Bool)

(declare-fun lt!1988122 () Bool)

(assert (=> d!1554756 (= lt!1988122 (set.member (tuple2!59153 lt!1988045 lt!1988046) (content!9864 (toList!7835 lm!2646))))))

(declare-fun e!3029184 () Bool)

(assert (=> d!1554756 (= lt!1988122 e!3029184)))

(declare-fun res!2067536 () Bool)

(assert (=> d!1554756 (=> (not res!2067536) (not e!3029184))))

(assert (=> d!1554756 (= res!2067536 (is-Cons!55509 (toList!7835 lm!2646)))))

(assert (=> d!1554756 (= (contains!19152 (toList!7835 lm!2646) (tuple2!59153 lt!1988045 lt!1988046)) lt!1988122)))

(declare-fun b!4846486 () Bool)

(declare-fun e!3029183 () Bool)

(assert (=> b!4846486 (= e!3029184 e!3029183)))

(declare-fun res!2067537 () Bool)

(assert (=> b!4846486 (=> res!2067537 e!3029183)))

(assert (=> b!4846486 (= res!2067537 (= (h!61946 (toList!7835 lm!2646)) (tuple2!59153 lt!1988045 lt!1988046)))))

(declare-fun b!4846487 () Bool)

(assert (=> b!4846487 (= e!3029183 (contains!19152 (t!363129 (toList!7835 lm!2646)) (tuple2!59153 lt!1988045 lt!1988046)))))

(assert (= (and d!1554756 res!2067536) b!4846486))

(assert (= (and b!4846486 (not res!2067537)) b!4846487))

(assert (=> d!1554756 m!5844310))

(declare-fun m!5844440 () Bool)

(assert (=> d!1554756 m!5844440))

(declare-fun m!5844442 () Bool)

(assert (=> b!4846487 m!5844442))

(assert (=> d!1554690 d!1554756))

(declare-fun d!1554758 () Bool)

(assert (=> d!1554758 (contains!19152 (toList!7835 lm!2646) (tuple2!59153 lt!1988045 lt!1988046))))

(assert (=> d!1554758 true))

(declare-fun _$41!525 () Unit!145631)

(assert (=> d!1554758 (= (choose!35416 lm!2646 lt!1988045 lt!1988046) _$41!525)))

(declare-fun bs!1172351 () Bool)

(assert (= bs!1172351 d!1554758))

(assert (=> bs!1172351 m!5844316))

(assert (=> d!1554690 d!1554758))

(assert (=> d!1554690 d!1554722))

(declare-fun d!1554760 () Bool)

(declare-fun choose!35421 (Hashable!7475 K!17292) (_ BitVec 64))

(assert (=> d!1554760 (= (hash!5548 hashF!1641 key!6445) (choose!35421 hashF!1641 key!6445))))

(declare-fun bs!1172352 () Bool)

(assert (= bs!1172352 d!1554760))

(declare-fun m!5844444 () Bool)

(assert (=> bs!1172352 m!5844444))

(assert (=> d!1554724 d!1554760))

(declare-fun d!1554762 () Bool)

(assert (=> d!1554762 (= (isEmpty!29714 (toList!7835 lm!2646)) (is-Nil!55509 (toList!7835 lm!2646)))))

(assert (=> d!1554708 d!1554762))

(declare-fun d!1554764 () Bool)

(declare-fun res!2067542 () Bool)

(declare-fun e!3029189 () Bool)

(assert (=> d!1554764 (=> res!2067542 e!3029189)))

(assert (=> d!1554764 (= res!2067542 (or (is-Nil!55509 (toList!7835 lm!2646)) (is-Nil!55509 (t!363129 (toList!7835 lm!2646)))))))

(assert (=> d!1554764 (= (isStrictlySorted!1067 (toList!7835 lm!2646)) e!3029189)))

(declare-fun b!4846493 () Bool)

(declare-fun e!3029190 () Bool)

(assert (=> b!4846493 (= e!3029189 e!3029190)))

(declare-fun res!2067543 () Bool)

(assert (=> b!4846493 (=> (not res!2067543) (not e!3029190))))

(assert (=> b!4846493 (= res!2067543 (bvslt (_1!32870 (h!61946 (toList!7835 lm!2646))) (_1!32870 (h!61946 (t!363129 (toList!7835 lm!2646))))))))

(declare-fun b!4846494 () Bool)

(assert (=> b!4846494 (= e!3029190 (isStrictlySorted!1067 (t!363129 (toList!7835 lm!2646))))))

(assert (= (and d!1554764 (not res!2067542)) b!4846493))

(assert (= (and b!4846493 res!2067543) b!4846494))

(declare-fun m!5844446 () Bool)

(assert (=> b!4846494 m!5844446))

(assert (=> d!1554686 d!1554764))

(declare-fun d!1554766 () Bool)

(declare-fun res!2067548 () Bool)

(declare-fun e!3029195 () Bool)

(assert (=> d!1554766 (=> res!2067548 e!3029195)))

(assert (=> d!1554766 (= res!2067548 (and (is-Cons!55509 (toList!7835 lm!2646)) (= (_1!32870 (h!61946 (toList!7835 lm!2646))) lt!1988045)))))

(assert (=> d!1554766 (= (containsKey!4657 (toList!7835 lm!2646) lt!1988045) e!3029195)))

(declare-fun b!4846499 () Bool)

(declare-fun e!3029196 () Bool)

(assert (=> b!4846499 (= e!3029195 e!3029196)))

(declare-fun res!2067549 () Bool)

(assert (=> b!4846499 (=> (not res!2067549) (not e!3029196))))

(assert (=> b!4846499 (= res!2067549 (and (or (not (is-Cons!55509 (toList!7835 lm!2646))) (bvsle (_1!32870 (h!61946 (toList!7835 lm!2646))) lt!1988045)) (is-Cons!55509 (toList!7835 lm!2646)) (bvslt (_1!32870 (h!61946 (toList!7835 lm!2646))) lt!1988045)))))

(declare-fun b!4846500 () Bool)

(assert (=> b!4846500 (= e!3029196 (containsKey!4657 (t!363129 (toList!7835 lm!2646)) lt!1988045))))

(assert (= (and d!1554766 (not res!2067548)) b!4846499))

(assert (= (and b!4846499 res!2067549) b!4846500))

(declare-fun m!5844448 () Bool)

(assert (=> b!4846500 m!5844448))

(assert (=> d!1554722 d!1554766))

(declare-fun d!1554768 () Bool)

(assert (=> d!1554768 (= (get!19000 (getValueByKey!2718 (toList!7835 lm!2646) (_1!32870 (h!61946 (toList!7835 lm!2646))))) (v!49383 (getValueByKey!2718 (toList!7835 lm!2646) (_1!32870 (h!61946 (toList!7835 lm!2646))))))))

(assert (=> d!1554714 d!1554768))

(declare-fun b!4846509 () Bool)

(declare-fun e!3029201 () Option!13637)

(assert (=> b!4846509 (= e!3029201 (Some!13636 (_2!32870 (h!61946 (toList!7835 lm!2646)))))))

(declare-fun b!4846510 () Bool)

(declare-fun e!3029202 () Option!13637)

(assert (=> b!4846510 (= e!3029201 e!3029202)))

(declare-fun c!825002 () Bool)

(assert (=> b!4846510 (= c!825002 (and (is-Cons!55509 (toList!7835 lm!2646)) (not (= (_1!32870 (h!61946 (toList!7835 lm!2646))) (_1!32870 (h!61946 (toList!7835 lm!2646)))))))))

(declare-fun d!1554770 () Bool)

(declare-fun c!825001 () Bool)

(assert (=> d!1554770 (= c!825001 (and (is-Cons!55509 (toList!7835 lm!2646)) (= (_1!32870 (h!61946 (toList!7835 lm!2646))) (_1!32870 (h!61946 (toList!7835 lm!2646))))))))

(assert (=> d!1554770 (= (getValueByKey!2718 (toList!7835 lm!2646) (_1!32870 (h!61946 (toList!7835 lm!2646)))) e!3029201)))

(declare-fun b!4846511 () Bool)

(assert (=> b!4846511 (= e!3029202 (getValueByKey!2718 (t!363129 (toList!7835 lm!2646)) (_1!32870 (h!61946 (toList!7835 lm!2646)))))))

(declare-fun b!4846512 () Bool)

(assert (=> b!4846512 (= e!3029202 None!13636)))

(assert (= (and d!1554770 c!825001) b!4846509))

(assert (= (and d!1554770 (not c!825001)) b!4846510))

(assert (= (and b!4846510 c!825002) b!4846511))

(assert (= (and b!4846510 (not c!825002)) b!4846512))

(declare-fun m!5844450 () Bool)

(assert (=> b!4846511 m!5844450))

(assert (=> d!1554714 d!1554770))

(declare-fun d!1554772 () Bool)

(assert (=> d!1554772 (= (isEmpty!29713 lt!1988076) (not (is-Some!13634 lt!1988076)))))

(assert (=> d!1554692 d!1554772))

(declare-fun d!1554774 () Bool)

(declare-fun res!2067554 () Bool)

(declare-fun e!3029207 () Bool)

(assert (=> d!1554774 (=> res!2067554 e!3029207)))

(assert (=> d!1554774 (= res!2067554 (not (is-Cons!55508 lt!1988046)))))

(assert (=> d!1554774 (= (noDuplicateKeys!2578 lt!1988046) e!3029207)))

(declare-fun b!4846517 () Bool)

(declare-fun e!3029208 () Bool)

(assert (=> b!4846517 (= e!3029207 e!3029208)))

(declare-fun res!2067555 () Bool)

(assert (=> b!4846517 (=> (not res!2067555) (not e!3029208))))

(assert (=> b!4846517 (= res!2067555 (not (containsKey!4655 (t!363128 lt!1988046) (_1!32869 (h!61945 lt!1988046)))))))

(declare-fun b!4846518 () Bool)

(assert (=> b!4846518 (= e!3029208 (noDuplicateKeys!2578 (t!363128 lt!1988046)))))

(assert (= (and d!1554774 (not res!2067554)) b!4846517))

(assert (= (and b!4846517 res!2067555) b!4846518))

(declare-fun m!5844452 () Bool)

(assert (=> b!4846517 m!5844452))

(declare-fun m!5844454 () Bool)

(assert (=> b!4846518 m!5844454))

(assert (=> d!1554692 d!1554774))

(declare-fun d!1554776 () Bool)

(declare-fun res!2067556 () Bool)

(declare-fun e!3029209 () Bool)

(assert (=> d!1554776 (=> res!2067556 e!3029209)))

(assert (=> d!1554776 (= res!2067556 (not (is-Cons!55508 (_2!32870 (h!61946 (toList!7835 lm!2646))))))))

(assert (=> d!1554776 (= (noDuplicateKeys!2578 (_2!32870 (h!61946 (toList!7835 lm!2646)))) e!3029209)))

(declare-fun b!4846519 () Bool)

(declare-fun e!3029210 () Bool)

(assert (=> b!4846519 (= e!3029209 e!3029210)))

(declare-fun res!2067557 () Bool)

(assert (=> b!4846519 (=> (not res!2067557) (not e!3029210))))

(assert (=> b!4846519 (= res!2067557 (not (containsKey!4655 (t!363128 (_2!32870 (h!61946 (toList!7835 lm!2646)))) (_1!32869 (h!61945 (_2!32870 (h!61946 (toList!7835 lm!2646))))))))))

(declare-fun b!4846520 () Bool)

(assert (=> b!4846520 (= e!3029210 (noDuplicateKeys!2578 (t!363128 (_2!32870 (h!61946 (toList!7835 lm!2646))))))))

(assert (= (and d!1554776 (not res!2067556)) b!4846519))

(assert (= (and b!4846519 res!2067557) b!4846520))

(declare-fun m!5844456 () Bool)

(assert (=> b!4846519 m!5844456))

(declare-fun m!5844458 () Bool)

(assert (=> b!4846520 m!5844458))

(assert (=> bs!1172340 d!1554776))

(declare-fun d!1554778 () Bool)

(declare-fun lt!1988123 () Bool)

(assert (=> d!1554778 (= lt!1988123 (set.member lt!1988047 (content!9864 (t!363129 (toList!7835 lm!2646)))))))

(declare-fun e!3029212 () Bool)

(assert (=> d!1554778 (= lt!1988123 e!3029212)))

(declare-fun res!2067558 () Bool)

(assert (=> d!1554778 (=> (not res!2067558) (not e!3029212))))

(assert (=> d!1554778 (= res!2067558 (is-Cons!55509 (t!363129 (toList!7835 lm!2646))))))

(assert (=> d!1554778 (= (contains!19152 (t!363129 (toList!7835 lm!2646)) lt!1988047) lt!1988123)))

(declare-fun b!4846521 () Bool)

(declare-fun e!3029211 () Bool)

(assert (=> b!4846521 (= e!3029212 e!3029211)))

(declare-fun res!2067559 () Bool)

(assert (=> b!4846521 (=> res!2067559 e!3029211)))

(assert (=> b!4846521 (= res!2067559 (= (h!61946 (t!363129 (toList!7835 lm!2646))) lt!1988047))))

(declare-fun b!4846522 () Bool)

(assert (=> b!4846522 (= e!3029211 (contains!19152 (t!363129 (t!363129 (toList!7835 lm!2646))) lt!1988047))))

(assert (= (and d!1554778 res!2067558) b!4846521))

(assert (= (and b!4846521 (not res!2067559)) b!4846522))

(declare-fun m!5844460 () Bool)

(assert (=> d!1554778 m!5844460))

(declare-fun m!5844462 () Bool)

(assert (=> d!1554778 m!5844462))

(declare-fun m!5844464 () Bool)

(assert (=> b!4846522 m!5844464))

(assert (=> b!4846369 d!1554778))

(declare-fun d!1554780 () Bool)

(declare-fun isEmpty!29717 (Option!13637) Bool)

(assert (=> d!1554780 (= (isDefined!10729 (getValueByKey!2718 (toList!7835 lm!2646) lt!1988045)) (not (isEmpty!29717 (getValueByKey!2718 (toList!7835 lm!2646) lt!1988045))))))

(declare-fun bs!1172353 () Bool)

(assert (= bs!1172353 d!1554780))

(assert (=> bs!1172353 m!5844338))

(declare-fun m!5844466 () Bool)

(assert (=> bs!1172353 m!5844466))

(assert (=> b!4846424 d!1554780))

(declare-fun b!4846523 () Bool)

(declare-fun e!3029213 () Option!13637)

(assert (=> b!4846523 (= e!3029213 (Some!13636 (_2!32870 (h!61946 (toList!7835 lm!2646)))))))

(declare-fun b!4846524 () Bool)

(declare-fun e!3029214 () Option!13637)

(assert (=> b!4846524 (= e!3029213 e!3029214)))

(declare-fun c!825004 () Bool)

(assert (=> b!4846524 (= c!825004 (and (is-Cons!55509 (toList!7835 lm!2646)) (not (= (_1!32870 (h!61946 (toList!7835 lm!2646))) lt!1988045))))))

(declare-fun d!1554782 () Bool)

(declare-fun c!825003 () Bool)

(assert (=> d!1554782 (= c!825003 (and (is-Cons!55509 (toList!7835 lm!2646)) (= (_1!32870 (h!61946 (toList!7835 lm!2646))) lt!1988045)))))

(assert (=> d!1554782 (= (getValueByKey!2718 (toList!7835 lm!2646) lt!1988045) e!3029213)))

(declare-fun b!4846525 () Bool)

(assert (=> b!4846525 (= e!3029214 (getValueByKey!2718 (t!363129 (toList!7835 lm!2646)) lt!1988045))))

(declare-fun b!4846526 () Bool)

(assert (=> b!4846526 (= e!3029214 None!13636)))

(assert (= (and d!1554782 c!825003) b!4846523))

(assert (= (and d!1554782 (not c!825003)) b!4846524))

(assert (= (and b!4846524 c!825004) b!4846525))

(assert (= (and b!4846524 (not c!825004)) b!4846526))

(declare-fun m!5844468 () Bool)

(assert (=> b!4846525 m!5844468))

(assert (=> b!4846424 d!1554782))

(declare-fun d!1554784 () Bool)

(declare-fun res!2067560 () Bool)

(declare-fun e!3029215 () Bool)

(assert (=> d!1554784 (=> res!2067560 e!3029215)))

(assert (=> d!1554784 (= res!2067560 (is-Nil!55509 (t!363129 (toList!7835 lm!2646))))))

(assert (=> d!1554784 (= (forall!12928 (t!363129 (toList!7835 lm!2646)) lambda!242335) e!3029215)))

(declare-fun b!4846527 () Bool)

(declare-fun e!3029216 () Bool)

(assert (=> b!4846527 (= e!3029215 e!3029216)))

(declare-fun res!2067561 () Bool)

(assert (=> b!4846527 (=> (not res!2067561) (not e!3029216))))

(assert (=> b!4846527 (= res!2067561 (dynLambda!22344 lambda!242335 (h!61946 (t!363129 (toList!7835 lm!2646)))))))

(declare-fun b!4846528 () Bool)

(assert (=> b!4846528 (= e!3029216 (forall!12928 (t!363129 (t!363129 (toList!7835 lm!2646))) lambda!242335))))

(assert (= (and d!1554784 (not res!2067560)) b!4846527))

(assert (= (and b!4846527 res!2067561) b!4846528))

(declare-fun b_lambda!192379 () Bool)

(assert (=> (not b_lambda!192379) (not b!4846527)))

(declare-fun m!5844470 () Bool)

(assert (=> b!4846527 m!5844470))

(declare-fun m!5844472 () Bool)

(assert (=> b!4846528 m!5844472))

(assert (=> b!4846363 d!1554784))

(declare-fun d!1554786 () Bool)

(assert (=> d!1554786 (isDefined!10729 (getValueByKey!2718 (toList!7835 lm!2646) lt!1988045))))

(declare-fun lt!1988126 () Unit!145631)

(declare-fun choose!35423 (List!55633 (_ BitVec 64)) Unit!145631)

(assert (=> d!1554786 (= lt!1988126 (choose!35423 (toList!7835 lm!2646) lt!1988045))))

(declare-fun e!3029219 () Bool)

(assert (=> d!1554786 e!3029219))

(declare-fun res!2067564 () Bool)

(assert (=> d!1554786 (=> (not res!2067564) (not e!3029219))))

(assert (=> d!1554786 (= res!2067564 (isStrictlySorted!1067 (toList!7835 lm!2646)))))

(assert (=> d!1554786 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2490 (toList!7835 lm!2646) lt!1988045) lt!1988126)))

(declare-fun b!4846531 () Bool)

(assert (=> b!4846531 (= e!3029219 (containsKey!4657 (toList!7835 lm!2646) lt!1988045))))

(assert (= (and d!1554786 res!2067564) b!4846531))

(assert (=> d!1554786 m!5844338))

(assert (=> d!1554786 m!5844338))

(assert (=> d!1554786 m!5844374))

(declare-fun m!5844474 () Bool)

(assert (=> d!1554786 m!5844474))

(assert (=> d!1554786 m!5844308))

(assert (=> b!4846531 m!5844370))

(assert (=> b!4846422 d!1554786))

(assert (=> b!4846422 d!1554780))

(assert (=> b!4846422 d!1554782))

(declare-fun d!1554788 () Bool)

(declare-fun res!2067565 () Bool)

(declare-fun e!3029220 () Bool)

(assert (=> d!1554788 (=> res!2067565 e!3029220)))

(assert (=> d!1554788 (= res!2067565 (and (is-Cons!55508 (t!363128 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646)))))) (= (_1!32869 (h!61945 (t!363128 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646))))))) key!6445)))))

(assert (=> d!1554788 (= (containsKey!4655 (t!363128 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646))))) key!6445) e!3029220)))

(declare-fun b!4846532 () Bool)

(declare-fun e!3029221 () Bool)

(assert (=> b!4846532 (= e!3029220 e!3029221)))

(declare-fun res!2067566 () Bool)

(assert (=> b!4846532 (=> (not res!2067566) (not e!3029221))))

(assert (=> b!4846532 (= res!2067566 (is-Cons!55508 (t!363128 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646)))))))))

(declare-fun b!4846533 () Bool)

(assert (=> b!4846533 (= e!3029221 (containsKey!4655 (t!363128 (t!363128 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646)))))) key!6445))))

(assert (= (and d!1554788 (not res!2067565)) b!4846532))

(assert (= (and b!4846532 res!2067566) b!4846533))

(declare-fun m!5844476 () Bool)

(assert (=> b!4846533 m!5844476))

(assert (=> b!4846415 d!1554788))

(declare-fun d!1554790 () Bool)

(assert (=> d!1554790 (= (get!19000 (getValueByKey!2718 (toList!7835 lm!2646) lt!1988045)) (v!49383 (getValueByKey!2718 (toList!7835 lm!2646) lt!1988045)))))

(assert (=> d!1554700 d!1554790))

(assert (=> d!1554700 d!1554782))

(declare-fun d!1554792 () Bool)

(declare-fun res!2067567 () Bool)

(declare-fun e!3029222 () Bool)

(assert (=> d!1554792 (=> res!2067567 e!3029222)))

(assert (=> d!1554792 (= res!2067567 (not (is-Cons!55508 (_2!32870 lt!1988047))))))

(assert (=> d!1554792 (= (noDuplicateKeys!2578 (_2!32870 lt!1988047)) e!3029222)))

(declare-fun b!4846534 () Bool)

(declare-fun e!3029223 () Bool)

(assert (=> b!4846534 (= e!3029222 e!3029223)))

(declare-fun res!2067568 () Bool)

(assert (=> b!4846534 (=> (not res!2067568) (not e!3029223))))

(assert (=> b!4846534 (= res!2067568 (not (containsKey!4655 (t!363128 (_2!32870 lt!1988047)) (_1!32869 (h!61945 (_2!32870 lt!1988047))))))))

(declare-fun b!4846535 () Bool)

(assert (=> b!4846535 (= e!3029223 (noDuplicateKeys!2578 (t!363128 (_2!32870 lt!1988047))))))

(assert (= (and d!1554792 (not res!2067567)) b!4846534))

(assert (= (and b!4846534 res!2067568) b!4846535))

(declare-fun m!5844478 () Bool)

(assert (=> b!4846534 m!5844478))

(declare-fun m!5844480 () Bool)

(assert (=> b!4846535 m!5844480))

(assert (=> bs!1172339 d!1554792))

(declare-fun d!1554794 () Bool)

(declare-fun res!2067569 () Bool)

(declare-fun e!3029224 () Bool)

(assert (=> d!1554794 (=> res!2067569 e!3029224)))

(assert (=> d!1554794 (= res!2067569 (and (is-Cons!55508 lt!1988046) (= (_1!32869 (h!61945 lt!1988046)) key!6445)))))

(assert (=> d!1554794 (= (containsKey!4655 lt!1988046 key!6445) e!3029224)))

(declare-fun b!4846536 () Bool)

(declare-fun e!3029225 () Bool)

(assert (=> b!4846536 (= e!3029224 e!3029225)))

(declare-fun res!2067570 () Bool)

(assert (=> b!4846536 (=> (not res!2067570) (not e!3029225))))

(assert (=> b!4846536 (= res!2067570 (is-Cons!55508 lt!1988046))))

(declare-fun b!4846537 () Bool)

(assert (=> b!4846537 (= e!3029225 (containsKey!4655 (t!363128 lt!1988046) key!6445))))

(assert (= (and d!1554794 (not res!2067569)) b!4846536))

(assert (= (and b!4846536 res!2067570) b!4846537))

(declare-fun m!5844482 () Bool)

(assert (=> b!4846537 m!5844482))

(assert (=> b!4846394 d!1554794))

(declare-fun d!1554796 () Bool)

(assert (=> d!1554796 (dynLambda!22344 lambda!242335 lt!1988047)))

(assert (=> d!1554796 true))

(declare-fun _$7!2449 () Unit!145631)

(assert (=> d!1554796 (= (choose!35417 (toList!7835 lm!2646) lambda!242335 lt!1988047) _$7!2449)))

(declare-fun b_lambda!192381 () Bool)

(assert (=> (not b_lambda!192381) (not d!1554796)))

(declare-fun bs!1172354 () Bool)

(assert (= bs!1172354 d!1554796))

(assert (=> bs!1172354 m!5844342))

(assert (=> d!1554702 d!1554796))

(assert (=> d!1554702 d!1554684))

(declare-fun d!1554798 () Bool)

(declare-fun c!825007 () Bool)

(assert (=> d!1554798 (= c!825007 (is-Nil!55509 (toList!7835 lm!2646)))))

(declare-fun e!3029228 () (Set tuple2!59152))

(assert (=> d!1554798 (= (content!9864 (toList!7835 lm!2646)) e!3029228)))

(declare-fun b!4846542 () Bool)

(assert (=> b!4846542 (= e!3029228 (as set.empty (Set tuple2!59152)))))

(declare-fun b!4846543 () Bool)

(assert (=> b!4846543 (= e!3029228 (set.union (set.insert (h!61946 (toList!7835 lm!2646)) (as set.empty (Set tuple2!59152))) (content!9864 (t!363129 (toList!7835 lm!2646)))))))

(assert (= (and d!1554798 c!825007) b!4846542))

(assert (= (and d!1554798 (not c!825007)) b!4846543))

(declare-fun m!5844484 () Bool)

(assert (=> b!4846543 m!5844484))

(assert (=> b!4846543 m!5844460))

(assert (=> d!1554688 d!1554798))

(declare-fun b!4846545 () Bool)

(declare-fun e!3029232 () Option!13635)

(assert (=> b!4846545 (= e!3029232 None!13634)))

(declare-fun b!4846546 () Bool)

(declare-fun e!3029230 () Bool)

(declare-fun e!3029233 () Bool)

(assert (=> b!4846546 (= e!3029230 e!3029233)))

(declare-fun res!2067574 () Bool)

(assert (=> b!4846546 (=> (not res!2067574) (not e!3029233))))

(declare-fun lt!1988127 () Option!13635)

(assert (=> b!4846546 (= res!2067574 (isDefined!10727 lt!1988127))))

(declare-fun b!4846547 () Bool)

(declare-fun e!3029229 () Option!13635)

(assert (=> b!4846547 (= e!3029229 e!3029232)))

(declare-fun c!825009 () Bool)

(assert (=> b!4846547 (= c!825009 (is-Cons!55508 (t!363128 lt!1988046)))))

(declare-fun b!4846548 () Bool)

(assert (=> b!4846548 (= e!3029233 (contains!19156 (t!363128 lt!1988046) (get!18999 lt!1988127)))))

(declare-fun b!4846549 () Bool)

(assert (=> b!4846549 (= e!3029232 (getPair!1065 (t!363128 (t!363128 lt!1988046)) key!6445))))

(declare-fun b!4846544 () Bool)

(declare-fun res!2067571 () Bool)

(assert (=> b!4846544 (=> (not res!2067571) (not e!3029233))))

(assert (=> b!4846544 (= res!2067571 (= (_1!32869 (get!18999 lt!1988127)) key!6445))))

(declare-fun d!1554800 () Bool)

(assert (=> d!1554800 e!3029230))

(declare-fun res!2067573 () Bool)

(assert (=> d!1554800 (=> res!2067573 e!3029230)))

(declare-fun e!3029231 () Bool)

(assert (=> d!1554800 (= res!2067573 e!3029231)))

(declare-fun res!2067572 () Bool)

(assert (=> d!1554800 (=> (not res!2067572) (not e!3029231))))

(assert (=> d!1554800 (= res!2067572 (isEmpty!29713 lt!1988127))))

(assert (=> d!1554800 (= lt!1988127 e!3029229)))

(declare-fun c!825008 () Bool)

(assert (=> d!1554800 (= c!825008 (and (is-Cons!55508 (t!363128 lt!1988046)) (= (_1!32869 (h!61945 (t!363128 lt!1988046))) key!6445)))))

(assert (=> d!1554800 (noDuplicateKeys!2578 (t!363128 lt!1988046))))

(assert (=> d!1554800 (= (getPair!1065 (t!363128 lt!1988046) key!6445) lt!1988127)))

(declare-fun b!4846550 () Bool)

(assert (=> b!4846550 (= e!3029229 (Some!13634 (h!61945 (t!363128 lt!1988046))))))

(declare-fun b!4846551 () Bool)

(assert (=> b!4846551 (= e!3029231 (not (containsKey!4655 (t!363128 lt!1988046) key!6445)))))

(assert (= (and d!1554800 c!825008) b!4846550))

(assert (= (and d!1554800 (not c!825008)) b!4846547))

(assert (= (and b!4846547 c!825009) b!4846549))

(assert (= (and b!4846547 (not c!825009)) b!4846545))

(assert (= (and d!1554800 res!2067572) b!4846551))

(assert (= (and d!1554800 (not res!2067573)) b!4846546))

(assert (= (and b!4846546 res!2067574) b!4846544))

(assert (= (and b!4846544 res!2067571) b!4846548))

(declare-fun m!5844486 () Bool)

(assert (=> d!1554800 m!5844486))

(assert (=> d!1554800 m!5844454))

(assert (=> b!4846551 m!5844482))

(declare-fun m!5844488 () Bool)

(assert (=> b!4846546 m!5844488))

(declare-fun m!5844490 () Bool)

(assert (=> b!4846548 m!5844490))

(assert (=> b!4846548 m!5844490))

(declare-fun m!5844492 () Bool)

(assert (=> b!4846548 m!5844492))

(assert (=> b!4846544 m!5844490))

(declare-fun m!5844494 () Bool)

(assert (=> b!4846549 m!5844494))

(assert (=> b!4846392 d!1554800))

(assert (=> d!1554716 d!1554712))

(assert (=> d!1554716 d!1554714))

(declare-fun d!1554802 () Bool)

(assert (=> d!1554802 (not (containsKey!4655 (apply!13418 lm!2646 (_1!32870 (h!61946 (toList!7835 lm!2646)))) key!6445))))

(assert (=> d!1554802 true))

(declare-fun _$39!481 () Unit!145631)

(assert (=> d!1554802 (= (choose!35418 lm!2646 key!6445 (_1!32870 (h!61946 (toList!7835 lm!2646))) hashF!1641) _$39!481)))

(declare-fun bs!1172355 () Bool)

(assert (= bs!1172355 d!1554802))

(assert (=> bs!1172355 m!5844248))

(assert (=> bs!1172355 m!5844248))

(assert (=> bs!1172355 m!5844250))

(assert (=> d!1554716 d!1554802))

(declare-fun d!1554804 () Bool)

(declare-fun res!2067575 () Bool)

(declare-fun e!3029234 () Bool)

(assert (=> d!1554804 (=> res!2067575 e!3029234)))

(assert (=> d!1554804 (= res!2067575 (is-Nil!55509 (toList!7835 lm!2646)))))

(assert (=> d!1554804 (= (forall!12928 (toList!7835 lm!2646) lambda!242349) e!3029234)))

(declare-fun b!4846552 () Bool)

(declare-fun e!3029235 () Bool)

(assert (=> b!4846552 (= e!3029234 e!3029235)))

(declare-fun res!2067576 () Bool)

(assert (=> b!4846552 (=> (not res!2067576) (not e!3029235))))

(assert (=> b!4846552 (= res!2067576 (dynLambda!22344 lambda!242349 (h!61946 (toList!7835 lm!2646))))))

(declare-fun b!4846553 () Bool)

(assert (=> b!4846553 (= e!3029235 (forall!12928 (t!363129 (toList!7835 lm!2646)) lambda!242349))))

(assert (= (and d!1554804 (not res!2067575)) b!4846552))

(assert (= (and b!4846552 res!2067576) b!4846553))

(declare-fun b_lambda!192383 () Bool)

(assert (=> (not b_lambda!192383) (not b!4846552)))

(declare-fun m!5844496 () Bool)

(assert (=> b!4846552 m!5844496))

(declare-fun m!5844498 () Bool)

(assert (=> b!4846553 m!5844498))

(assert (=> d!1554716 d!1554804))

(assert (=> b!4846397 d!1554688))

(declare-fun d!1554806 () Bool)

(declare-fun lt!1988130 () Bool)

(declare-fun content!9866 (List!55632) (Set tuple2!59150))

(assert (=> d!1554806 (= lt!1988130 (set.member (get!18999 lt!1988076) (content!9866 lt!1988046)))))

(declare-fun e!3029241 () Bool)

(assert (=> d!1554806 (= lt!1988130 e!3029241)))

(declare-fun res!2067582 () Bool)

(assert (=> d!1554806 (=> (not res!2067582) (not e!3029241))))

(assert (=> d!1554806 (= res!2067582 (is-Cons!55508 lt!1988046))))

(assert (=> d!1554806 (= (contains!19156 lt!1988046 (get!18999 lt!1988076)) lt!1988130)))

(declare-fun b!4846558 () Bool)

(declare-fun e!3029240 () Bool)

(assert (=> b!4846558 (= e!3029241 e!3029240)))

(declare-fun res!2067581 () Bool)

(assert (=> b!4846558 (=> res!2067581 e!3029240)))

(assert (=> b!4846558 (= res!2067581 (= (h!61945 lt!1988046) (get!18999 lt!1988076)))))

(declare-fun b!4846559 () Bool)

(assert (=> b!4846559 (= e!3029240 (contains!19156 (t!363128 lt!1988046) (get!18999 lt!1988076)))))

(assert (= (and d!1554806 res!2067582) b!4846558))

(assert (= (and b!4846558 (not res!2067581)) b!4846559))

(declare-fun m!5844500 () Bool)

(assert (=> d!1554806 m!5844500))

(assert (=> d!1554806 m!5844330))

(declare-fun m!5844502 () Bool)

(assert (=> d!1554806 m!5844502))

(assert (=> b!4846559 m!5844330))

(declare-fun m!5844504 () Bool)

(assert (=> b!4846559 m!5844504))

(assert (=> b!4846391 d!1554806))

(declare-fun d!1554808 () Bool)

(assert (=> d!1554808 (= (get!18999 lt!1988076) (v!49380 lt!1988076))))

(assert (=> b!4846391 d!1554808))

(declare-fun d!1554810 () Bool)

(assert (=> d!1554810 (= (isDefined!10727 lt!1988076) (not (isEmpty!29713 lt!1988076)))))

(declare-fun bs!1172356 () Bool)

(assert (= bs!1172356 d!1554810))

(assert (=> bs!1172356 m!5844322))

(assert (=> b!4846389 d!1554810))

(declare-fun d!1554812 () Bool)

(assert (=> d!1554812 (= (isEmpty!29713 (getPair!1065 lt!1988046 key!6445)) (not (is-Some!13634 (getPair!1065 lt!1988046 key!6445))))))

(assert (=> d!1554698 d!1554812))

(declare-fun d!1554814 () Bool)

(declare-fun res!2067583 () Bool)

(declare-fun e!3029242 () Bool)

(assert (=> d!1554814 (=> res!2067583 e!3029242)))

(assert (=> d!1554814 (= res!2067583 (is-Nil!55509 (toList!7835 lm!2646)))))

(assert (=> d!1554814 (= (forall!12928 (toList!7835 lm!2646) lambda!242346) e!3029242)))

(declare-fun b!4846560 () Bool)

(declare-fun e!3029243 () Bool)

(assert (=> b!4846560 (= e!3029242 e!3029243)))

(declare-fun res!2067584 () Bool)

(assert (=> b!4846560 (=> (not res!2067584) (not e!3029243))))

(assert (=> b!4846560 (= res!2067584 (dynLambda!22344 lambda!242346 (h!61946 (toList!7835 lm!2646))))))

(declare-fun b!4846561 () Bool)

(assert (=> b!4846561 (= e!3029243 (forall!12928 (t!363129 (toList!7835 lm!2646)) lambda!242346))))

(assert (= (and d!1554814 (not res!2067583)) b!4846560))

(assert (= (and b!4846560 res!2067584) b!4846561))

(declare-fun b_lambda!192385 () Bool)

(assert (=> (not b_lambda!192385) (not b!4846560)))

(declare-fun m!5844506 () Bool)

(assert (=> b!4846560 m!5844506))

(declare-fun m!5844508 () Bool)

(assert (=> b!4846561 m!5844508))

(assert (=> d!1554704 d!1554814))

(assert (=> b!4846387 d!1554808))

(declare-fun d!1554816 () Bool)

(declare-fun res!2067585 () Bool)

(declare-fun e!3029244 () Bool)

(assert (=> d!1554816 (=> res!2067585 e!3029244)))

(assert (=> d!1554816 (= res!2067585 (and (is-Cons!55508 (t!363128 (_2!32870 (h!61946 (toList!7835 lm!2646))))) (= (_1!32869 (h!61945 (t!363128 (_2!32870 (h!61946 (toList!7835 lm!2646)))))) key!6445)))))

(assert (=> d!1554816 (= (containsKey!4655 (t!363128 (_2!32870 (h!61946 (toList!7835 lm!2646)))) key!6445) e!3029244)))

(declare-fun b!4846562 () Bool)

(declare-fun e!3029245 () Bool)

(assert (=> b!4846562 (= e!3029244 e!3029245)))

(declare-fun res!2067586 () Bool)

(assert (=> b!4846562 (=> (not res!2067586) (not e!3029245))))

(assert (=> b!4846562 (= res!2067586 (is-Cons!55508 (t!363128 (_2!32870 (h!61946 (toList!7835 lm!2646))))))))

(declare-fun b!4846563 () Bool)

(assert (=> b!4846563 (= e!3029245 (containsKey!4655 (t!363128 (t!363128 (_2!32870 (h!61946 (toList!7835 lm!2646))))) key!6445))))

(assert (= (and d!1554816 (not res!2067585)) b!4846562))

(assert (= (and b!4846562 res!2067586) b!4846563))

(declare-fun m!5844510 () Bool)

(assert (=> b!4846563 m!5844510))

(assert (=> b!4846413 d!1554816))

(declare-fun b!4846568 () Bool)

(declare-fun tp_is_empty!35129 () Bool)

(declare-fun e!3029248 () Bool)

(declare-fun tp!1364487 () Bool)

(assert (=> b!4846568 (= e!3029248 (and tp_is_empty!35125 tp_is_empty!35129 tp!1364487))))

(assert (=> b!4846429 (= tp!1364477 e!3029248)))

(assert (= (and b!4846429 (is-Cons!55508 (_2!32870 (h!61946 (toList!7835 lm!2646))))) b!4846568))

(declare-fun b!4846569 () Bool)

(declare-fun e!3029249 () Bool)

(declare-fun tp!1364488 () Bool)

(declare-fun tp!1364489 () Bool)

(assert (=> b!4846569 (= e!3029249 (and tp!1364488 tp!1364489))))

(assert (=> b!4846429 (= tp!1364478 e!3029249)))

(assert (= (and b!4846429 (is-Cons!55509 (t!363129 (toList!7835 lm!2646)))) b!4846569))

(declare-fun b_lambda!192387 () Bool)

(assert (= b_lambda!192383 (or d!1554716 b_lambda!192387)))

(declare-fun bs!1172357 () Bool)

(declare-fun d!1554818 () Bool)

(assert (= bs!1172357 (and d!1554818 d!1554716)))

(assert (=> bs!1172357 (= (dynLambda!22344 lambda!242349 (h!61946 (toList!7835 lm!2646))) (noDuplicateKeys!2578 (_2!32870 (h!61946 (toList!7835 lm!2646)))))))

(assert (=> bs!1172357 m!5844380))

(assert (=> b!4846552 d!1554818))

(declare-fun b_lambda!192389 () Bool)

(assert (= b_lambda!192381 (or start!504798 b_lambda!192389)))

(assert (=> d!1554796 d!1554726))

(declare-fun b_lambda!192391 () Bool)

(assert (= b_lambda!192385 (or d!1554704 b_lambda!192391)))

(declare-fun bs!1172358 () Bool)

(declare-fun d!1554820 () Bool)

(assert (= bs!1172358 (and d!1554820 d!1554704)))

(declare-fun allKeysSameHash!2029 (List!55632 (_ BitVec 64) Hashable!7475) Bool)

(assert (=> bs!1172358 (= (dynLambda!22344 lambda!242346 (h!61946 (toList!7835 lm!2646))) (allKeysSameHash!2029 (_2!32870 (h!61946 (toList!7835 lm!2646))) (_1!32870 (h!61946 (toList!7835 lm!2646))) hashF!1641))))

(declare-fun m!5844512 () Bool)

(assert (=> bs!1172358 m!5844512))

(assert (=> b!4846560 d!1554820))

(declare-fun b_lambda!192393 () Bool)

(assert (= b_lambda!192379 (or start!504798 b_lambda!192393)))

(declare-fun bs!1172359 () Bool)

(declare-fun d!1554822 () Bool)

(assert (= bs!1172359 (and d!1554822 start!504798)))

(assert (=> bs!1172359 (= (dynLambda!22344 lambda!242335 (h!61946 (t!363129 (toList!7835 lm!2646)))) (noDuplicateKeys!2578 (_2!32870 (h!61946 (t!363129 (toList!7835 lm!2646))))))))

(declare-fun m!5844514 () Bool)

(assert (=> bs!1172359 m!5844514))

(assert (=> b!4846527 d!1554822))

(push 1)

(assert (not b!4846517))

(assert (not b_lambda!192389))

(assert (not b!4846500))

(assert (not b!4846537))

(assert (not b!4846549))

(assert (not b!4846519))

(assert (not b_lambda!192393))

(assert (not b_lambda!192391))

(assert (not b!4846534))

(assert (not b!4846548))

(assert (not b_lambda!192371))

(assert (not b!4846511))

(assert (not b!4846544))

(assert (not b_lambda!192387))

(assert (not b!4846528))

(assert (not d!1554786))

(assert (not b!4846518))

(assert (not b!4846563))

(assert (not b!4846559))

(assert (not bs!1172358))

(assert (not b!4846561))

(assert tp_is_empty!35125)

(assert (not b!4846494))

(assert (not b!4846520))

(assert (not d!1554810))

(assert (not d!1554800))

(assert (not d!1554802))

(assert (not d!1554760))

(assert (not bs!1172359))

(assert (not d!1554778))

(assert (not b!4846533))

(assert (not b!4846535))

(assert (not b!4846525))

(assert (not b!4846487))

(assert (not b!4846543))

(assert (not b!4846531))

(assert (not d!1554756))

(assert tp_is_empty!35129)

(assert (not b!4846568))

(assert (not b!4846522))

(assert (not b!4846546))

(assert (not d!1554758))

(assert (not b!4846551))

(assert (not b!4846553))

(assert (not d!1554806))

(assert (not b!4846569))

(assert (not d!1554780))

(assert (not bs!1172357))

(assert (not b_lambda!192369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

