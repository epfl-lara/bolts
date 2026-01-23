; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!508086 () Bool)

(assert start!508086)

(declare-fun b!4861341 () Bool)

(assert (=> b!4861341 true))

(declare-fun b!4861343 () Bool)

(declare-fun e!3039420 () Bool)

(declare-fun tp_is_empty!35637 () Bool)

(declare-fun tp!1367767 () Bool)

(assert (=> b!4861343 (= e!3039420 (and tp_is_empty!35637 tp!1367767))))

(declare-fun e!3039422 () Bool)

(declare-datatypes ((B!2963 0))(
  ( (B!2964 (val!22501 Int)) )
))
(declare-datatypes ((List!55970 0))(
  ( (Nil!55846) (Cons!55846 (h!62294 B!2963) (t!363590 List!55970)) )
))
(declare-fun l1!945 () List!55970)

(declare-fun lambda!243250 () Int)

(declare-fun forall!13037 (List!55970 Int) Bool)

(assert (=> b!4861341 (= e!3039422 (not (forall!13037 l1!945 lambda!243250)))))

(declare-fun b!4861342 () Bool)

(declare-fun e!3039421 () Bool)

(declare-fun tp!1367766 () Bool)

(assert (=> b!4861342 (= e!3039421 (and tp_is_empty!35637 tp!1367766))))

(declare-fun b!4861340 () Bool)

(declare-fun res!2075283 () Bool)

(assert (=> b!4861340 (=> (not res!2075283) (not e!3039422))))

(declare-fun e1!29 () B!2963)

(declare-fun contains!19377 (List!55970 B!2963) Bool)

(assert (=> b!4861340 (= res!2075283 (contains!19377 l1!945 e1!29))))

(declare-fun res!2075282 () Bool)

(assert (=> start!508086 (=> (not res!2075282) (not e!3039422))))

(declare-fun l2!922 () List!55970)

(declare-fun disjoint!5 (List!55970 List!55970) Bool)

(assert (=> start!508086 (= res!2075282 (disjoint!5 l1!945 l2!922))))

(assert (=> start!508086 e!3039422))

(assert (=> start!508086 e!3039421))

(assert (=> start!508086 e!3039420))

(assert (=> start!508086 tp_is_empty!35637))

(assert (= (and start!508086 res!2075282) b!4861340))

(assert (= (and b!4861340 res!2075283) b!4861341))

(assert (= (and start!508086 (is-Cons!55846 l1!945)) b!4861342))

(assert (= (and start!508086 (is-Cons!55846 l2!922)) b!4861343))

(declare-fun m!5859068 () Bool)

(assert (=> b!4861341 m!5859068))

(declare-fun m!5859070 () Bool)

(assert (=> b!4861340 m!5859070))

(declare-fun m!5859072 () Bool)

(assert (=> start!508086 m!5859072))

(push 1)

(assert (not b!4861340))

(assert (not b!4861343))

(assert (not b!4861342))

(assert (not b!4861341))

(assert (not start!508086))

(assert tp_is_empty!35637)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560328 () Bool)

(declare-fun lt!1992503 () Bool)

(declare-fun content!9954 (List!55970) (Set B!2963))

(assert (=> d!1560328 (= lt!1992503 (set.member e1!29 (content!9954 l1!945)))))

(declare-fun e!3039437 () Bool)

(assert (=> d!1560328 (= lt!1992503 e!3039437)))

(declare-fun res!2075295 () Bool)

(assert (=> d!1560328 (=> (not res!2075295) (not e!3039437))))

(assert (=> d!1560328 (= res!2075295 (is-Cons!55846 l1!945))))

(assert (=> d!1560328 (= (contains!19377 l1!945 e1!29) lt!1992503)))

(declare-fun b!4861364 () Bool)

(declare-fun e!3039436 () Bool)

(assert (=> b!4861364 (= e!3039437 e!3039436)))

(declare-fun res!2075294 () Bool)

(assert (=> b!4861364 (=> res!2075294 e!3039436)))

(assert (=> b!4861364 (= res!2075294 (= (h!62294 l1!945) e1!29))))

(declare-fun b!4861365 () Bool)

(assert (=> b!4861365 (= e!3039436 (contains!19377 (t!363590 l1!945) e1!29))))

(assert (= (and d!1560328 res!2075295) b!4861364))

(assert (= (and b!4861364 (not res!2075294)) b!4861365))

(declare-fun m!5859080 () Bool)

(assert (=> d!1560328 m!5859080))

(declare-fun m!5859082 () Bool)

(assert (=> d!1560328 m!5859082))

(declare-fun m!5859084 () Bool)

(assert (=> b!4861365 m!5859084))

(assert (=> b!4861340 d!1560328))

(declare-fun bs!1173945 () Bool)

(declare-fun d!1560330 () Bool)

(assert (= bs!1173945 (and d!1560330 b!4861341)))

(declare-fun lambda!243258 () Int)

(assert (=> bs!1173945 (= lambda!243258 lambda!243250)))

(assert (=> d!1560330 true))

(declare-fun bs!1173946 () Bool)

(declare-fun b!4861368 () Bool)

(assert (= bs!1173946 (and b!4861368 b!4861341)))

(declare-fun lambda!243259 () Int)

(assert (=> bs!1173946 (= (= l1!945 l2!922) (= lambda!243259 lambda!243250))))

(declare-fun bs!1173947 () Bool)

(assert (= bs!1173947 (and b!4861368 d!1560330)))

(assert (=> bs!1173947 (= (= l1!945 l2!922) (= lambda!243259 lambda!243258))))

(assert (=> b!4861368 true))

(declare-fun res!2075298 () Bool)

(declare-fun e!3039440 () Bool)

(assert (=> d!1560330 (=> (not res!2075298) (not e!3039440))))

(assert (=> d!1560330 (= res!2075298 (forall!13037 l1!945 lambda!243258))))

(assert (=> d!1560330 (= (disjoint!5 l1!945 l2!922) e!3039440)))

(assert (=> b!4861368 (= e!3039440 (forall!13037 l2!922 lambda!243259))))

(assert (= (and d!1560330 res!2075298) b!4861368))

(declare-fun m!5859086 () Bool)

(assert (=> d!1560330 m!5859086))

(declare-fun m!5859088 () Bool)

(assert (=> b!4861368 m!5859088))

(assert (=> start!508086 d!1560330))

(declare-fun d!1560334 () Bool)

(declare-fun res!2075307 () Bool)

(declare-fun e!3039449 () Bool)

(assert (=> d!1560334 (=> res!2075307 e!3039449)))

(assert (=> d!1560334 (= res!2075307 (is-Nil!55846 l1!945))))

(assert (=> d!1560334 (= (forall!13037 l1!945 lambda!243250) e!3039449)))

(declare-fun b!4861377 () Bool)

(declare-fun e!3039450 () Bool)

(assert (=> b!4861377 (= e!3039449 e!3039450)))

(declare-fun res!2075308 () Bool)

(assert (=> b!4861377 (=> (not res!2075308) (not e!3039450))))

(declare-fun dynLambda!22406 (Int B!2963) Bool)

(assert (=> b!4861377 (= res!2075308 (dynLambda!22406 lambda!243250 (h!62294 l1!945)))))

(declare-fun b!4861378 () Bool)

(assert (=> b!4861378 (= e!3039450 (forall!13037 (t!363590 l1!945) lambda!243250))))

(assert (= (and d!1560334 (not res!2075307)) b!4861377))

(assert (= (and b!4861377 res!2075308) b!4861378))

(declare-fun b_lambda!193377 () Bool)

(assert (=> (not b_lambda!193377) (not b!4861377)))

(declare-fun m!5859090 () Bool)

(assert (=> b!4861377 m!5859090))

(declare-fun m!5859092 () Bool)

(assert (=> b!4861378 m!5859092))

(assert (=> b!4861341 d!1560334))

(declare-fun b!4861385 () Bool)

(declare-fun e!3039455 () Bool)

(declare-fun tp!1367776 () Bool)

(assert (=> b!4861385 (= e!3039455 (and tp_is_empty!35637 tp!1367776))))

(assert (=> b!4861343 (= tp!1367767 e!3039455)))

(assert (= (and b!4861343 (is-Cons!55846 (t!363590 l2!922))) b!4861385))

(declare-fun b!4861386 () Bool)

(declare-fun e!3039456 () Bool)

(declare-fun tp!1367777 () Bool)

(assert (=> b!4861386 (= e!3039456 (and tp_is_empty!35637 tp!1367777))))

(assert (=> b!4861342 (= tp!1367766 e!3039456)))

(assert (= (and b!4861342 (is-Cons!55846 (t!363590 l1!945))) b!4861386))

(declare-fun b_lambda!193379 () Bool)

(assert (= b_lambda!193377 (or b!4861341 b_lambda!193379)))

(declare-fun bs!1173948 () Bool)

(declare-fun d!1560336 () Bool)

(assert (= bs!1173948 (and d!1560336 b!4861341)))

(assert (=> bs!1173948 (= (dynLambda!22406 lambda!243250 (h!62294 l1!945)) (not (contains!19377 l2!922 (h!62294 l1!945))))))

(declare-fun m!5859096 () Bool)

(assert (=> bs!1173948 m!5859096))

(assert (=> b!4861377 d!1560336))

(push 1)

(assert (not b!4861365))

(assert (not d!1560328))

(assert (not b!4861368))

(assert (not bs!1173948))

(assert (not b!4861386))

(assert tp_is_empty!35637)

(assert (not b!4861385))

(assert (not b!4861378))

(assert (not d!1560330))

(assert (not b_lambda!193379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

