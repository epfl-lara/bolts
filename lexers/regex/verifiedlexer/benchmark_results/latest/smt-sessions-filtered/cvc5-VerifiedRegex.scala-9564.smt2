; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503692 () Bool)

(assert start!503692)

(declare-fun b!4840286 () Bool)

(declare-fun e!3024978 () Bool)

(declare-fun tp!1363813 () Bool)

(assert (=> b!4840286 (= e!3024978 tp!1363813)))

(declare-fun b!4840284 () Bool)

(declare-fun res!2063431 () Bool)

(declare-fun e!3024979 () Bool)

(assert (=> b!4840284 (=> (not res!2063431) (not e!3024979))))

(declare-datatypes ((K!17107 0))(
  ( (K!17108 (val!21991 Int)) )
))
(declare-datatypes ((V!17353 0))(
  ( (V!17354 (val!21992 Int)) )
))
(declare-datatypes ((tuple2!58854 0))(
  ( (tuple2!58855 (_1!32721 K!17107) (_2!32721 V!17353)) )
))
(declare-datatypes ((List!55476 0))(
  ( (Nil!55352) (Cons!55352 (h!61787 tuple2!58854) (t!362972 List!55476)) )
))
(declare-datatypes ((tuple2!58856 0))(
  ( (tuple2!58857 (_1!32722 (_ BitVec 64)) (_2!32722 List!55476)) )
))
(declare-datatypes ((List!55477 0))(
  ( (Nil!55353) (Cons!55353 (h!61788 tuple2!58856) (t!362973 List!55477)) )
))
(declare-datatypes ((ListLongMap!6293 0))(
  ( (ListLongMap!6294 (toList!7749 List!55477)) )
))
(declare-fun lm!2671 () ListLongMap!6293)

(declare-fun key!6540 () K!17107)

(declare-fun containsKeyBiggerList!699 (List!55477 K!17107) Bool)

(assert (=> b!4840284 (= res!2063431 (containsKeyBiggerList!699 (toList!7749 lm!2671) key!6540))))

(declare-fun res!2063430 () Bool)

(assert (=> start!503692 (=> (not res!2063430) (not e!3024979))))

(declare-fun lambda!240931 () Int)

(declare-fun forall!12839 (List!55477 Int) Bool)

(assert (=> start!503692 (= res!2063430 (forall!12839 (toList!7749 lm!2671) lambda!240931))))

(assert (=> start!503692 e!3024979))

(declare-fun inv!71008 (ListLongMap!6293) Bool)

(assert (=> start!503692 (and (inv!71008 lm!2671) e!3024978)))

(assert (=> start!503692 true))

(declare-fun tp_is_empty!34933 () Bool)

(assert (=> start!503692 tp_is_empty!34933))

(declare-fun b!4840283 () Bool)

(declare-fun res!2063429 () Bool)

(assert (=> b!4840283 (=> (not res!2063429) (not e!3024979))))

(declare-datatypes ((Hashable!7415 0))(
  ( (HashableExt!7414 (__x!33690 Int)) )
))
(declare-fun hashF!1662 () Hashable!7415)

(declare-fun allKeysSameHashInMap!2731 (ListLongMap!6293 Hashable!7415) Bool)

(assert (=> b!4840283 (= res!2063429 (allKeysSameHashInMap!2731 lm!2671 hashF!1662))))

(declare-fun b!4840285 () Bool)

(declare-fun size!36633 (List!55477) Int)

(assert (=> b!4840285 (= e!3024979 (< (size!36633 (toList!7749 lm!2671)) 0))))

(assert (= (and start!503692 res!2063430) b!4840283))

(assert (= (and b!4840283 res!2063429) b!4840284))

(assert (= (and b!4840284 res!2063431) b!4840285))

(assert (= start!503692 b!4840286))

(declare-fun m!5836070 () Bool)

(assert (=> b!4840284 m!5836070))

(declare-fun m!5836072 () Bool)

(assert (=> start!503692 m!5836072))

(declare-fun m!5836074 () Bool)

(assert (=> start!503692 m!5836074))

(declare-fun m!5836076 () Bool)

(assert (=> b!4840283 m!5836076))

(declare-fun m!5836078 () Bool)

(assert (=> b!4840285 m!5836078))

(push 1)

(assert (not b!4840285))

(assert (not b!4840284))

(assert tp_is_empty!34933)

(assert (not start!503692))

(assert (not b!4840283))

(assert (not b!4840286))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1168353 () Bool)

(declare-fun d!1551569 () Bool)

(assert (= bs!1168353 (and d!1551569 start!503692)))

(declare-fun lambda!240937 () Int)

(assert (=> bs!1168353 (not (= lambda!240937 lambda!240931))))

(assert (=> d!1551569 true))

(assert (=> d!1551569 (= (allKeysSameHashInMap!2731 lm!2671 hashF!1662) (forall!12839 (toList!7749 lm!2671) lambda!240937))))

(declare-fun bs!1168354 () Bool)

(assert (= bs!1168354 d!1551569))

(declare-fun m!5836090 () Bool)

(assert (=> bs!1168354 m!5836090))

(assert (=> b!4840283 d!1551569))

(declare-fun d!1551571 () Bool)

(declare-fun lt!1984747 () Int)

(assert (=> d!1551571 (>= lt!1984747 0)))

(declare-fun e!3024988 () Int)

(assert (=> d!1551571 (= lt!1984747 e!3024988)))

(declare-fun c!824327 () Bool)

(assert (=> d!1551571 (= c!824327 (is-Nil!55353 (toList!7749 lm!2671)))))

(assert (=> d!1551571 (= (size!36633 (toList!7749 lm!2671)) lt!1984747)))

(declare-fun b!4840305 () Bool)

(assert (=> b!4840305 (= e!3024988 0)))

(declare-fun b!4840306 () Bool)

(assert (=> b!4840306 (= e!3024988 (+ 1 (size!36633 (t!362973 (toList!7749 lm!2671)))))))

(assert (= (and d!1551571 c!824327) b!4840305))

(assert (= (and d!1551571 (not c!824327)) b!4840306))

(declare-fun m!5836092 () Bool)

(assert (=> b!4840306 m!5836092))

(assert (=> b!4840285 d!1551571))

(declare-fun d!1551575 () Bool)

(declare-fun res!2063445 () Bool)

(declare-fun e!3024993 () Bool)

(assert (=> d!1551575 (=> res!2063445 e!3024993)))

(assert (=> d!1551575 (= res!2063445 (is-Nil!55353 (toList!7749 lm!2671)))))

(assert (=> d!1551575 (= (forall!12839 (toList!7749 lm!2671) lambda!240931) e!3024993)))

(declare-fun b!4840311 () Bool)

(declare-fun e!3024994 () Bool)

(assert (=> b!4840311 (= e!3024993 e!3024994)))

(declare-fun res!2063446 () Bool)

(assert (=> b!4840311 (=> (not res!2063446) (not e!3024994))))

(declare-fun dynLambda!22295 (Int tuple2!58856) Bool)

(assert (=> b!4840311 (= res!2063446 (dynLambda!22295 lambda!240931 (h!61788 (toList!7749 lm!2671))))))

(declare-fun b!4840312 () Bool)

(assert (=> b!4840312 (= e!3024994 (forall!12839 (t!362973 (toList!7749 lm!2671)) lambda!240931))))

(assert (= (and d!1551575 (not res!2063445)) b!4840311))

(assert (= (and b!4840311 res!2063446) b!4840312))

(declare-fun b_lambda!191323 () Bool)

(assert (=> (not b_lambda!191323) (not b!4840311)))

(declare-fun m!5836094 () Bool)

(assert (=> b!4840311 m!5836094))

(declare-fun m!5836096 () Bool)

(assert (=> b!4840312 m!5836096))

(assert (=> start!503692 d!1551575))

(declare-fun d!1551577 () Bool)

(declare-fun isStrictlySorted!1041 (List!55477) Bool)

(assert (=> d!1551577 (= (inv!71008 lm!2671) (isStrictlySorted!1041 (toList!7749 lm!2671)))))

(declare-fun bs!1168355 () Bool)

(assert (= bs!1168355 d!1551577))

(declare-fun m!5836098 () Bool)

(assert (=> bs!1168355 m!5836098))

(assert (=> start!503692 d!1551577))

(declare-fun d!1551579 () Bool)

(declare-fun res!2063454 () Bool)

(declare-fun e!3025004 () Bool)

(assert (=> d!1551579 (=> res!2063454 e!3025004)))

(declare-fun e!3025005 () Bool)

(assert (=> d!1551579 (= res!2063454 e!3025005)))

(declare-fun res!2063455 () Bool)

(assert (=> d!1551579 (=> (not res!2063455) (not e!3025005))))

(assert (=> d!1551579 (= res!2063455 (is-Cons!55353 (toList!7749 lm!2671)))))

(assert (=> d!1551579 (= (containsKeyBiggerList!699 (toList!7749 lm!2671) key!6540) e!3025004)))

(declare-fun b!4840325 () Bool)

(declare-fun containsKey!4581 (List!55476 K!17107) Bool)

(assert (=> b!4840325 (= e!3025005 (containsKey!4581 (_2!32722 (h!61788 (toList!7749 lm!2671))) key!6540))))

(declare-fun b!4840326 () Bool)

(declare-fun e!3025006 () Bool)

(assert (=> b!4840326 (= e!3025004 e!3025006)))

(declare-fun res!2063453 () Bool)

(assert (=> b!4840326 (=> (not res!2063453) (not e!3025006))))

(assert (=> b!4840326 (= res!2063453 (is-Cons!55353 (toList!7749 lm!2671)))))

(declare-fun b!4840327 () Bool)

(assert (=> b!4840327 (= e!3025006 (containsKeyBiggerList!699 (t!362973 (toList!7749 lm!2671)) key!6540))))

(assert (= (and d!1551579 res!2063455) b!4840325))

(assert (= (and d!1551579 (not res!2063454)) b!4840326))

(assert (= (and b!4840326 res!2063453) b!4840327))

(declare-fun m!5836102 () Bool)

(assert (=> b!4840325 m!5836102))

(declare-fun m!5836104 () Bool)

(assert (=> b!4840327 m!5836104))

(assert (=> b!4840284 d!1551579))

(declare-fun b!4840336 () Bool)

(declare-fun e!3025013 () Bool)

(declare-fun tp!1363821 () Bool)

(declare-fun tp!1363822 () Bool)

(assert (=> b!4840336 (= e!3025013 (and tp!1363821 tp!1363822))))

(assert (=> b!4840286 (= tp!1363813 e!3025013)))

(assert (= (and b!4840286 (is-Cons!55353 (toList!7749 lm!2671))) b!4840336))

(declare-fun b_lambda!191325 () Bool)

(assert (= b_lambda!191323 (or start!503692 b_lambda!191325)))

(declare-fun bs!1168356 () Bool)

(declare-fun d!1551583 () Bool)

(assert (= bs!1168356 (and d!1551583 start!503692)))

(declare-fun noDuplicateKeys!2542 (List!55476) Bool)

(assert (=> bs!1168356 (= (dynLambda!22295 lambda!240931 (h!61788 (toList!7749 lm!2671))) (noDuplicateKeys!2542 (_2!32722 (h!61788 (toList!7749 lm!2671)))))))

(declare-fun m!5836106 () Bool)

(assert (=> bs!1168356 m!5836106))

(assert (=> b!4840311 d!1551583))

(push 1)

(assert (not b!4840312))

(assert (not bs!1168356))

(assert (not b!4840327))

(assert (not b_lambda!191325))

(assert (not b!4840336))

(assert (not d!1551569))

(assert (not d!1551577))

(assert tp_is_empty!34933)

(assert (not b!4840325))

(assert (not b!4840306))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

