; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502802 () Bool)

(assert start!502802)

(declare-fun b!4836007 () Bool)

(declare-fun res!2060594 () Bool)

(declare-fun e!3022231 () Bool)

(assert (=> b!4836007 (=> (not res!2060594) (not e!3022231))))

(declare-datatypes ((K!16967 0))(
  ( (K!16968 (val!21879 Int)) )
))
(declare-datatypes ((V!17213 0))(
  ( (V!17214 (val!21880 Int)) )
))
(declare-datatypes ((tuple2!58630 0))(
  ( (tuple2!58631 (_1!32609 K!16967) (_2!32609 V!17213)) )
))
(declare-datatypes ((List!55348 0))(
  ( (Nil!55224) (Cons!55224 (h!61659 tuple2!58630) (t!362844 List!55348)) )
))
(declare-datatypes ((tuple2!58632 0))(
  ( (tuple2!58633 (_1!32610 (_ BitVec 64)) (_2!32610 List!55348)) )
))
(declare-datatypes ((List!55349 0))(
  ( (Nil!55225) (Cons!55225 (h!61660 tuple2!58632) (t!362845 List!55349)) )
))
(declare-datatypes ((ListLongMap!6181 0))(
  ( (ListLongMap!6182 (toList!7647 List!55349)) )
))
(declare-fun lm!2671 () ListLongMap!6181)

(declare-fun key!6540 () K!16967)

(declare-fun containsKeyBiggerList!643 (List!55349 K!16967) Bool)

(assert (=> b!4836007 (= res!2060594 (containsKeyBiggerList!643 (toList!7647 lm!2671) key!6540))))

(declare-fun b!4836008 () Bool)

(declare-fun lambda!239452 () Int)

(declare-fun forall!12759 (List!55349 Int) Bool)

(assert (=> b!4836008 (= e!3022231 (not (forall!12759 (t!362845 (toList!7647 lm!2671)) lambda!239452)))))

(declare-fun e!3022229 () Bool)

(assert (=> b!4836008 e!3022229))

(declare-fun res!2060593 () Bool)

(assert (=> b!4836008 (=> (not res!2060593) (not e!3022229))))

(declare-fun lt!1981653 () tuple2!58630)

(declare-fun contains!19030 (List!55348 tuple2!58630) Bool)

(declare-fun head!10367 (List!55349) tuple2!58632)

(assert (=> b!4836008 (= res!2060593 (contains!19030 (_2!32610 (head!10367 (toList!7647 lm!2671))) lt!1981653))))

(declare-fun lt!1981654 () V!17213)

(assert (=> b!4836008 (= lt!1981653 (tuple2!58631 key!6540 lt!1981654))))

(declare-datatypes ((Hashable!7359 0))(
  ( (HashableExt!7358 (__x!33634 Int)) )
))
(declare-fun hashF!1662 () Hashable!7359)

(declare-datatypes ((Unit!144592 0))(
  ( (Unit!144593) )
))
(declare-fun lt!1981652 () Unit!144592)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!3 (ListLongMap!6181 K!16967 V!17213 Hashable!7359) Unit!144592)

(assert (=> b!4836008 (= lt!1981652 (lemmaInPairListHeadThenGetValueInTuple!3 lm!2671 key!6540 lt!1981654 hashF!1662))))

(declare-fun getValue!173 (List!55349 K!16967) V!17213)

(assert (=> b!4836008 (= lt!1981654 (getValue!173 (toList!7647 lm!2671) key!6540))))

(declare-fun b!4836009 () Bool)

(declare-fun res!2060591 () Bool)

(assert (=> b!4836009 (=> (not res!2060591) (not e!3022231))))

(declare-fun containsKey!4509 (List!55348 K!16967) Bool)

(assert (=> b!4836009 (= res!2060591 (containsKey!4509 (_2!32610 (h!61660 (toList!7647 lm!2671))) key!6540))))

(declare-fun b!4836010 () Bool)

(declare-fun res!2060589 () Bool)

(assert (=> b!4836010 (=> (not res!2060589) (not e!3022231))))

(assert (=> b!4836010 (= res!2060589 (is-Cons!55225 (toList!7647 lm!2671)))))

(declare-fun res!2060590 () Bool)

(assert (=> start!502802 (=> (not res!2060590) (not e!3022231))))

(assert (=> start!502802 (= res!2060590 (forall!12759 (toList!7647 lm!2671) lambda!239452))))

(assert (=> start!502802 e!3022231))

(declare-fun e!3022230 () Bool)

(declare-fun inv!70868 (ListLongMap!6181) Bool)

(assert (=> start!502802 (and (inv!70868 lm!2671) e!3022230)))

(assert (=> start!502802 true))

(declare-fun tp_is_empty!34817 () Bool)

(assert (=> start!502802 tp_is_empty!34817))

(declare-fun b!4836011 () Bool)

(declare-fun res!2060592 () Bool)

(assert (=> b!4836011 (=> (not res!2060592) (not e!3022231))))

(declare-fun allKeysSameHashInMap!2675 (ListLongMap!6181 Hashable!7359) Bool)

(assert (=> b!4836011 (= res!2060592 (allKeysSameHashInMap!2675 lm!2671 hashF!1662))))

(declare-fun b!4836012 () Bool)

(declare-fun tp!1363431 () Bool)

(assert (=> b!4836012 (= e!3022230 tp!1363431)))

(declare-fun b!4836013 () Bool)

(assert (=> b!4836013 (= e!3022229 (contains!19030 (_2!32610 (h!61660 (toList!7647 lm!2671))) lt!1981653))))

(assert (= (and start!502802 res!2060590) b!4836011))

(assert (= (and b!4836011 res!2060592) b!4836007))

(assert (= (and b!4836007 res!2060594) b!4836010))

(assert (= (and b!4836010 res!2060589) b!4836009))

(assert (= (and b!4836009 res!2060591) b!4836008))

(assert (= (and b!4836008 res!2060593) b!4836013))

(assert (= start!502802 b!4836012))

(declare-fun m!5831254 () Bool)

(assert (=> b!4836009 m!5831254))

(declare-fun m!5831256 () Bool)

(assert (=> b!4836008 m!5831256))

(declare-fun m!5831258 () Bool)

(assert (=> b!4836008 m!5831258))

(declare-fun m!5831260 () Bool)

(assert (=> b!4836008 m!5831260))

(declare-fun m!5831262 () Bool)

(assert (=> b!4836008 m!5831262))

(declare-fun m!5831264 () Bool)

(assert (=> b!4836008 m!5831264))

(declare-fun m!5831266 () Bool)

(assert (=> start!502802 m!5831266))

(declare-fun m!5831268 () Bool)

(assert (=> start!502802 m!5831268))

(declare-fun m!5831270 () Bool)

(assert (=> b!4836013 m!5831270))

(declare-fun m!5831272 () Bool)

(assert (=> b!4836011 m!5831272))

(declare-fun m!5831274 () Bool)

(assert (=> b!4836007 m!5831274))

(push 1)

(assert (not b!4836011))

(assert tp_is_empty!34817)

(assert (not b!4836013))

(assert (not b!4836009))

(assert (not b!4836007))

(assert (not b!4836012))

(assert (not start!502802))

(assert (not b!4836008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550317 () Bool)

(declare-fun res!2060619 () Bool)

(declare-fun e!3022249 () Bool)

(assert (=> d!1550317 (=> res!2060619 e!3022249)))

(declare-fun e!3022247 () Bool)

(assert (=> d!1550317 (= res!2060619 e!3022247)))

(declare-fun res!2060621 () Bool)

(assert (=> d!1550317 (=> (not res!2060621) (not e!3022247))))

(assert (=> d!1550317 (= res!2060621 (is-Cons!55225 (toList!7647 lm!2671)))))

(assert (=> d!1550317 (= (containsKeyBiggerList!643 (toList!7647 lm!2671) key!6540) e!3022249)))

(declare-fun b!4836041 () Bool)

(assert (=> b!4836041 (= e!3022247 (containsKey!4509 (_2!32610 (h!61660 (toList!7647 lm!2671))) key!6540))))

(declare-fun b!4836042 () Bool)

(declare-fun e!3022248 () Bool)

(assert (=> b!4836042 (= e!3022249 e!3022248)))

(declare-fun res!2060620 () Bool)

(assert (=> b!4836042 (=> (not res!2060620) (not e!3022248))))

(assert (=> b!4836042 (= res!2060620 (is-Cons!55225 (toList!7647 lm!2671)))))

(declare-fun b!4836043 () Bool)

(assert (=> b!4836043 (= e!3022248 (containsKeyBiggerList!643 (t!362845 (toList!7647 lm!2671)) key!6540))))

(assert (= (and d!1550317 res!2060621) b!4836041))

(assert (= (and d!1550317 (not res!2060619)) b!4836042))

(assert (= (and b!4836042 res!2060620) b!4836043))

(assert (=> b!4836041 m!5831254))

(declare-fun m!5831298 () Bool)

(assert (=> b!4836043 m!5831298))

(assert (=> b!4836007 d!1550317))

(declare-fun bs!1167464 () Bool)

(declare-fun d!1550319 () Bool)

(assert (= bs!1167464 (and d!1550319 start!502802)))

(declare-fun lambda!239460 () Int)

(assert (=> bs!1167464 (not (= lambda!239460 lambda!239452))))

(assert (=> d!1550319 true))

(assert (=> d!1550319 (= (allKeysSameHashInMap!2675 lm!2671 hashF!1662) (forall!12759 (toList!7647 lm!2671) lambda!239460))))

(declare-fun bs!1167465 () Bool)

(assert (= bs!1167465 d!1550319))

(declare-fun m!5831300 () Bool)

(assert (=> bs!1167465 m!5831300))

(assert (=> b!4836011 d!1550319))

(declare-fun d!1550321 () Bool)

(declare-fun res!2060626 () Bool)

(declare-fun e!3022254 () Bool)

(assert (=> d!1550321 (=> res!2060626 e!3022254)))

(assert (=> d!1550321 (= res!2060626 (and (is-Cons!55224 (_2!32610 (h!61660 (toList!7647 lm!2671)))) (= (_1!32609 (h!61659 (_2!32610 (h!61660 (toList!7647 lm!2671))))) key!6540)))))

(assert (=> d!1550321 (= (containsKey!4509 (_2!32610 (h!61660 (toList!7647 lm!2671))) key!6540) e!3022254)))

(declare-fun b!4836050 () Bool)

(declare-fun e!3022255 () Bool)

(assert (=> b!4836050 (= e!3022254 e!3022255)))

(declare-fun res!2060627 () Bool)

(assert (=> b!4836050 (=> (not res!2060627) (not e!3022255))))

(assert (=> b!4836050 (= res!2060627 (is-Cons!55224 (_2!32610 (h!61660 (toList!7647 lm!2671)))))))

(declare-fun b!4836051 () Bool)

(assert (=> b!4836051 (= e!3022255 (containsKey!4509 (t!362844 (_2!32610 (h!61660 (toList!7647 lm!2671)))) key!6540))))

(assert (= (and d!1550321 (not res!2060626)) b!4836050))

(assert (= (and b!4836050 res!2060627) b!4836051))

(declare-fun m!5831302 () Bool)

(assert (=> b!4836051 m!5831302))

(assert (=> b!4836009 d!1550321))

(declare-fun d!1550325 () Bool)

(declare-fun lt!1981666 () Bool)

(declare-fun content!9842 (List!55348) (Set tuple2!58630))

(assert (=> d!1550325 (= lt!1981666 (set.member lt!1981653 (content!9842 (_2!32610 (h!61660 (toList!7647 lm!2671))))))))

(declare-fun e!3022266 () Bool)

(assert (=> d!1550325 (= lt!1981666 e!3022266)))

(declare-fun res!2060639 () Bool)

(assert (=> d!1550325 (=> (not res!2060639) (not e!3022266))))

(assert (=> d!1550325 (= res!2060639 (is-Cons!55224 (_2!32610 (h!61660 (toList!7647 lm!2671)))))))

(assert (=> d!1550325 (= (contains!19030 (_2!32610 (h!61660 (toList!7647 lm!2671))) lt!1981653) lt!1981666)))

(declare-fun b!4836062 () Bool)

(declare-fun e!3022267 () Bool)

(assert (=> b!4836062 (= e!3022266 e!3022267)))

(declare-fun res!2060638 () Bool)

(assert (=> b!4836062 (=> res!2060638 e!3022267)))

(assert (=> b!4836062 (= res!2060638 (= (h!61659 (_2!32610 (h!61660 (toList!7647 lm!2671)))) lt!1981653))))

(declare-fun b!4836063 () Bool)

(assert (=> b!4836063 (= e!3022267 (contains!19030 (t!362844 (_2!32610 (h!61660 (toList!7647 lm!2671)))) lt!1981653))))

(assert (= (and d!1550325 res!2060639) b!4836062))

(assert (= (and b!4836062 (not res!2060638)) b!4836063))

(declare-fun m!5831304 () Bool)

(assert (=> d!1550325 m!5831304))

(declare-fun m!5831306 () Bool)

(assert (=> d!1550325 m!5831306))

(declare-fun m!5831308 () Bool)

(assert (=> b!4836063 m!5831308))

(assert (=> b!4836013 d!1550325))

(declare-fun bs!1167466 () Bool)

(declare-fun d!1550327 () Bool)

(assert (= bs!1167466 (and d!1550327 start!502802)))

(declare-fun lambda!239463 () Int)

(assert (=> bs!1167466 (= lambda!239463 lambda!239452)))

(declare-fun bs!1167467 () Bool)

(assert (= bs!1167467 (and d!1550327 d!1550319)))

(assert (=> bs!1167467 (not (= lambda!239463 lambda!239460))))

(assert (=> d!1550327 (contains!19030 (_2!32610 (head!10367 (toList!7647 lm!2671))) (tuple2!58631 key!6540 lt!1981654))))

(declare-fun lt!1981672 () Unit!144592)

(declare-fun choose!35327 (ListLongMap!6181 K!16967 V!17213 Hashable!7359) Unit!144592)

(assert (=> d!1550327 (= lt!1981672 (choose!35327 lm!2671 key!6540 lt!1981654 hashF!1662))))

(assert (=> d!1550327 (forall!12759 (toList!7647 lm!2671) lambda!239463)))

(assert (=> d!1550327 (= (lemmaInPairListHeadThenGetValueInTuple!3 lm!2671 key!6540 lt!1981654 hashF!1662) lt!1981672)))

(declare-fun bs!1167468 () Bool)

(assert (= bs!1167468 d!1550327))

(assert (=> bs!1167468 m!5831256))

(declare-fun m!5831318 () Bool)

(assert (=> bs!1167468 m!5831318))

(declare-fun m!5831320 () Bool)

(assert (=> bs!1167468 m!5831320))

(declare-fun m!5831322 () Bool)

(assert (=> bs!1167468 m!5831322))

(assert (=> b!4836008 d!1550327))

(declare-fun d!1550333 () Bool)

(declare-fun lt!1981673 () Bool)

(assert (=> d!1550333 (= lt!1981673 (set.member lt!1981653 (content!9842 (_2!32610 (head!10367 (toList!7647 lm!2671))))))))

(declare-fun e!3022277 () Bool)

(assert (=> d!1550333 (= lt!1981673 e!3022277)))

(declare-fun res!2060650 () Bool)

(assert (=> d!1550333 (=> (not res!2060650) (not e!3022277))))

(assert (=> d!1550333 (= res!2060650 (is-Cons!55224 (_2!32610 (head!10367 (toList!7647 lm!2671)))))))

(assert (=> d!1550333 (= (contains!19030 (_2!32610 (head!10367 (toList!7647 lm!2671))) lt!1981653) lt!1981673)))

(declare-fun b!4836073 () Bool)

(declare-fun e!3022278 () Bool)

(assert (=> b!4836073 (= e!3022277 e!3022278)))

(declare-fun res!2060649 () Bool)

(assert (=> b!4836073 (=> res!2060649 e!3022278)))

(assert (=> b!4836073 (= res!2060649 (= (h!61659 (_2!32610 (head!10367 (toList!7647 lm!2671)))) lt!1981653))))

(declare-fun b!4836074 () Bool)

(assert (=> b!4836074 (= e!3022278 (contains!19030 (t!362844 (_2!32610 (head!10367 (toList!7647 lm!2671)))) lt!1981653))))

(assert (= (and d!1550333 res!2060650) b!4836073))

(assert (= (and b!4836073 (not res!2060649)) b!4836074))

(declare-fun m!5831324 () Bool)

(assert (=> d!1550333 m!5831324))

(declare-fun m!5831326 () Bool)

(assert (=> d!1550333 m!5831326))

(declare-fun m!5831328 () Bool)

(assert (=> b!4836074 m!5831328))

(assert (=> b!4836008 d!1550333))

(declare-fun d!1550335 () Bool)

(assert (=> d!1550335 (= (head!10367 (toList!7647 lm!2671)) (h!61660 (toList!7647 lm!2671)))))

(assert (=> b!4836008 d!1550335))

(declare-fun d!1550337 () Bool)

(declare-fun res!2060655 () Bool)

(declare-fun e!3022283 () Bool)

(assert (=> d!1550337 (=> res!2060655 e!3022283)))

(assert (=> d!1550337 (= res!2060655 (is-Nil!55225 (t!362845 (toList!7647 lm!2671))))))

(assert (=> d!1550337 (= (forall!12759 (t!362845 (toList!7647 lm!2671)) lambda!239452) e!3022283)))

(declare-fun b!4836079 () Bool)

(declare-fun e!3022284 () Bool)

(assert (=> b!4836079 (= e!3022283 e!3022284)))

(declare-fun res!2060656 () Bool)

(assert (=> b!4836079 (=> (not res!2060656) (not e!3022284))))

(declare-fun dynLambda!22260 (Int tuple2!58632) Bool)

(assert (=> b!4836079 (= res!2060656 (dynLambda!22260 lambda!239452 (h!61660 (t!362845 (toList!7647 lm!2671)))))))

(declare-fun b!4836080 () Bool)

(assert (=> b!4836080 (= e!3022284 (forall!12759 (t!362845 (t!362845 (toList!7647 lm!2671))) lambda!239452))))

(assert (= (and d!1550337 (not res!2060655)) b!4836079))

(assert (= (and b!4836079 res!2060656) b!4836080))

(declare-fun b_lambda!191027 () Bool)

(assert (=> (not b_lambda!191027) (not b!4836079)))

(declare-fun m!5831330 () Bool)

(assert (=> b!4836079 m!5831330))

(declare-fun m!5831332 () Bool)

(assert (=> b!4836080 m!5831332))

(assert (=> b!4836008 d!1550337))

(declare-fun d!1550339 () Bool)

(declare-fun c!823850 () Bool)

(declare-fun e!3022290 () Bool)

(assert (=> d!1550339 (= c!823850 e!3022290)))

(declare-fun res!2060659 () Bool)

(assert (=> d!1550339 (=> (not res!2060659) (not e!3022290))))

(assert (=> d!1550339 (= res!2060659 (is-Cons!55225 (toList!7647 lm!2671)))))

(declare-fun e!3022289 () V!17213)

(assert (=> d!1550339 (= (getValue!173 (toList!7647 lm!2671) key!6540) e!3022289)))

(declare-fun b!4836091 () Bool)

(assert (=> b!4836091 (= e!3022290 (containsKey!4509 (_2!32610 (h!61660 (toList!7647 lm!2671))) key!6540))))

(declare-fun b!4836089 () Bool)

(declare-datatypes ((Option!13583 0))(
  ( (None!13582) (Some!13582 (v!49288 tuple2!58630)) )
))
(declare-fun get!18906 (Option!13583) tuple2!58630)

(declare-fun getPair!1045 (List!55348 K!16967) Option!13583)

(assert (=> b!4836089 (= e!3022289 (_2!32609 (get!18906 (getPair!1045 (_2!32610 (h!61660 (toList!7647 lm!2671))) key!6540))))))

(declare-fun b!4836090 () Bool)

(assert (=> b!4836090 (= e!3022289 (getValue!173 (t!362845 (toList!7647 lm!2671)) key!6540))))

(assert (= (and d!1550339 res!2060659) b!4836091))

(assert (= (and d!1550339 c!823850) b!4836089))

(assert (= (and d!1550339 (not c!823850)) b!4836090))

(assert (=> b!4836091 m!5831254))

(declare-fun m!5831336 () Bool)

(assert (=> b!4836089 m!5831336))

(assert (=> b!4836089 m!5831336))

(declare-fun m!5831338 () Bool)

(assert (=> b!4836089 m!5831338))

(declare-fun m!5831340 () Bool)

(assert (=> b!4836090 m!5831340))

(assert (=> b!4836008 d!1550339))

(declare-fun d!1550343 () Bool)

(declare-fun res!2060660 () Bool)

(declare-fun e!3022291 () Bool)

(assert (=> d!1550343 (=> res!2060660 e!3022291)))

(assert (=> d!1550343 (= res!2060660 (is-Nil!55225 (toList!7647 lm!2671)))))

(assert (=> d!1550343 (= (forall!12759 (toList!7647 lm!2671) lambda!239452) e!3022291)))

(declare-fun b!4836092 () Bool)

(declare-fun e!3022292 () Bool)

(assert (=> b!4836092 (= e!3022291 e!3022292)))

(declare-fun res!2060661 () Bool)

(assert (=> b!4836092 (=> (not res!2060661) (not e!3022292))))

(assert (=> b!4836092 (= res!2060661 (dynLambda!22260 lambda!239452 (h!61660 (toList!7647 lm!2671))))))

(declare-fun b!4836093 () Bool)

(assert (=> b!4836093 (= e!3022292 (forall!12759 (t!362845 (toList!7647 lm!2671)) lambda!239452))))

(assert (= (and d!1550343 (not res!2060660)) b!4836092))

(assert (= (and b!4836092 res!2060661) b!4836093))

(declare-fun b_lambda!191029 () Bool)

(assert (=> (not b_lambda!191029) (not b!4836092)))

(declare-fun m!5831342 () Bool)

(assert (=> b!4836092 m!5831342))

(assert (=> b!4836093 m!5831258))

(assert (=> start!502802 d!1550343))

(declare-fun d!1550345 () Bool)

(declare-fun isStrictlySorted!1012 (List!55349) Bool)

(assert (=> d!1550345 (= (inv!70868 lm!2671) (isStrictlySorted!1012 (toList!7647 lm!2671)))))

(declare-fun bs!1167471 () Bool)

(assert (= bs!1167471 d!1550345))

(declare-fun m!5831344 () Bool)

(assert (=> bs!1167471 m!5831344))

(assert (=> start!502802 d!1550345))

(declare-fun b!4836102 () Bool)

(declare-fun e!3022299 () Bool)

(declare-fun tp!1363439 () Bool)

(declare-fun tp!1363440 () Bool)

(assert (=> b!4836102 (= e!3022299 (and tp!1363439 tp!1363440))))

(assert (=> b!4836012 (= tp!1363431 e!3022299)))

(assert (= (and b!4836012 (is-Cons!55225 (toList!7647 lm!2671))) b!4836102))

(declare-fun b_lambda!191031 () Bool)

(assert (= b_lambda!191027 (or start!502802 b_lambda!191031)))

(declare-fun bs!1167472 () Bool)

(declare-fun d!1550347 () Bool)

(assert (= bs!1167472 (and d!1550347 start!502802)))

(declare-fun noDuplicateKeys!2513 (List!55348) Bool)

(assert (=> bs!1167472 (= (dynLambda!22260 lambda!239452 (h!61660 (t!362845 (toList!7647 lm!2671)))) (noDuplicateKeys!2513 (_2!32610 (h!61660 (t!362845 (toList!7647 lm!2671))))))))

(declare-fun m!5831346 () Bool)

(assert (=> bs!1167472 m!5831346))

(assert (=> b!4836079 d!1550347))

(declare-fun b_lambda!191033 () Bool)

(assert (= b_lambda!191029 (or start!502802 b_lambda!191033)))

(declare-fun bs!1167473 () Bool)

(declare-fun d!1550349 () Bool)

(assert (= bs!1167473 (and d!1550349 start!502802)))

(assert (=> bs!1167473 (= (dynLambda!22260 lambda!239452 (h!61660 (toList!7647 lm!2671))) (noDuplicateKeys!2513 (_2!32610 (h!61660 (toList!7647 lm!2671)))))))

(declare-fun m!5831348 () Bool)

(assert (=> bs!1167473 m!5831348))

(assert (=> b!4836092 d!1550349))

(push 1)

(assert (not b!4836091))

(assert (not b_lambda!191033))

(assert (not b!4836074))

(assert (not b!4836093))

(assert (not bs!1167473))

(assert (not b!4836051))

(assert (not b!4836090))

(assert (not b!4836063))

(assert (not bs!1167472))

(assert (not d!1550319))

(assert (not d!1550333))

(assert (not b!4836102))

(assert (not d!1550327))

(assert tp_is_empty!34817)

(assert (not b_lambda!191031))

(assert (not d!1550325))

(assert (not d!1550345))

(assert (not b!4836080))

(assert (not b!4836041))

(assert (not b!4836089))

(assert (not b!4836043))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

