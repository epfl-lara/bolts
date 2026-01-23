; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!508102 () Bool)

(assert start!508102)

(declare-fun b!4861411 () Bool)

(assert (=> b!4861411 true))

(declare-fun b!4861412 () Bool)

(declare-fun e!3039476 () Bool)

(declare-fun tp_is_empty!35641 () Bool)

(declare-fun tp!1367787 () Bool)

(assert (=> b!4861412 (= e!3039476 (and tp_is_empty!35641 tp!1367787))))

(declare-fun b!4861413 () Bool)

(declare-fun e!3039477 () Bool)

(declare-fun tp!1367786 () Bool)

(assert (=> b!4861413 (= e!3039477 (and tp_is_empty!35641 tp!1367786))))

(declare-fun b!4861410 () Bool)

(declare-fun res!2075324 () Bool)

(declare-fun e!3039478 () Bool)

(assert (=> b!4861410 (=> (not res!2075324) (not e!3039478))))

(declare-datatypes ((B!2967 0))(
  ( (B!2968 (val!22503 Int)) )
))
(declare-datatypes ((List!55972 0))(
  ( (Nil!55848) (Cons!55848 (h!62296 B!2967) (t!363592 List!55972)) )
))
(declare-fun l1!945 () List!55972)

(declare-fun e1!29 () B!2967)

(declare-fun contains!19379 (List!55972 B!2967) Bool)

(assert (=> b!4861410 (= res!2075324 (contains!19379 l1!945 e1!29))))

(declare-fun res!2075325 () Bool)

(assert (=> start!508102 (=> (not res!2075325) (not e!3039478))))

(declare-fun l2!922 () List!55972)

(declare-fun disjoint!7 (List!55972 List!55972) Bool)

(assert (=> start!508102 (= res!2075325 (disjoint!7 l1!945 l2!922))))

(assert (=> start!508102 e!3039478))

(assert (=> start!508102 e!3039476))

(assert (=> start!508102 e!3039477))

(assert (=> start!508102 tp_is_empty!35641))

(assert (=> b!4861411 (= e!3039478 (contains!19379 l2!922 e1!29))))

(declare-datatypes ((Unit!145898 0))(
  ( (Unit!145899) )
))
(declare-fun lt!1992509 () Unit!145898)

(declare-fun lambda!243268 () Int)

(declare-fun forallContained!4586 (List!55972 Int B!2967) Unit!145898)

(assert (=> b!4861411 (= lt!1992509 (forallContained!4586 l1!945 lambda!243268 e1!29))))

(assert (= (and start!508102 res!2075325) b!4861410))

(assert (= (and b!4861410 res!2075324) b!4861411))

(assert (= (and start!508102 (is-Cons!55848 l1!945)) b!4861412))

(assert (= (and start!508102 (is-Cons!55848 l2!922)) b!4861413))

(declare-fun m!5859112 () Bool)

(assert (=> b!4861410 m!5859112))

(declare-fun m!5859114 () Bool)

(assert (=> start!508102 m!5859114))

(declare-fun m!5859116 () Bool)

(assert (=> b!4861411 m!5859116))

(declare-fun m!5859118 () Bool)

(assert (=> b!4861411 m!5859118))

(push 1)

(assert (not b!4861413))

(assert (not b!4861411))

(assert (not b!4861412))

(assert (not start!508102))

(assert (not b!4861410))

(assert tp_is_empty!35641)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560345 () Bool)

(declare-fun lt!1992515 () Bool)

(declare-fun content!9956 (List!55972) (Set B!2967))

(assert (=> d!1560345 (= lt!1992515 (set.member e1!29 (content!9956 l1!945)))))

(declare-fun e!3039492 () Bool)

(assert (=> d!1560345 (= lt!1992515 e!3039492)))

(declare-fun res!2075336 () Bool)

(assert (=> d!1560345 (=> (not res!2075336) (not e!3039492))))

(assert (=> d!1560345 (= res!2075336 (is-Cons!55848 l1!945))))

(assert (=> d!1560345 (= (contains!19379 l1!945 e1!29) lt!1992515)))

(declare-fun b!4861434 () Bool)

(declare-fun e!3039493 () Bool)

(assert (=> b!4861434 (= e!3039492 e!3039493)))

(declare-fun res!2075337 () Bool)

(assert (=> b!4861434 (=> res!2075337 e!3039493)))

(assert (=> b!4861434 (= res!2075337 (= (h!62296 l1!945) e1!29))))

(declare-fun b!4861435 () Bool)

(assert (=> b!4861435 (= e!3039493 (contains!19379 (t!363592 l1!945) e1!29))))

(assert (= (and d!1560345 res!2075336) b!4861434))

(assert (= (and b!4861434 (not res!2075337)) b!4861435))

(declare-fun m!5859128 () Bool)

(assert (=> d!1560345 m!5859128))

(declare-fun m!5859130 () Bool)

(assert (=> d!1560345 m!5859130))

(declare-fun m!5859132 () Bool)

(assert (=> b!4861435 m!5859132))

(assert (=> b!4861410 d!1560345))

(declare-fun d!1560347 () Bool)

(declare-fun lt!1992516 () Bool)

(assert (=> d!1560347 (= lt!1992516 (set.member e1!29 (content!9956 l2!922)))))

(declare-fun e!3039494 () Bool)

(assert (=> d!1560347 (= lt!1992516 e!3039494)))

(declare-fun res!2075338 () Bool)

(assert (=> d!1560347 (=> (not res!2075338) (not e!3039494))))

(assert (=> d!1560347 (= res!2075338 (is-Cons!55848 l2!922))))

(assert (=> d!1560347 (= (contains!19379 l2!922 e1!29) lt!1992516)))

(declare-fun b!4861436 () Bool)

(declare-fun e!3039495 () Bool)

(assert (=> b!4861436 (= e!3039494 e!3039495)))

(declare-fun res!2075339 () Bool)

(assert (=> b!4861436 (=> res!2075339 e!3039495)))

(assert (=> b!4861436 (= res!2075339 (= (h!62296 l2!922) e1!29))))

(declare-fun b!4861437 () Bool)

(assert (=> b!4861437 (= e!3039495 (contains!19379 (t!363592 l2!922) e1!29))))

(assert (= (and d!1560347 res!2075338) b!4861436))

(assert (= (and b!4861436 (not res!2075339)) b!4861437))

(declare-fun m!5859134 () Bool)

(assert (=> d!1560347 m!5859134))

(declare-fun m!5859136 () Bool)

(assert (=> d!1560347 m!5859136))

(declare-fun m!5859138 () Bool)

(assert (=> b!4861437 m!5859138))

(assert (=> b!4861411 d!1560347))

(declare-fun d!1560349 () Bool)

(declare-fun dynLambda!22408 (Int B!2967) Bool)

(assert (=> d!1560349 (dynLambda!22408 lambda!243268 e1!29)))

(declare-fun lt!1992519 () Unit!145898)

(declare-fun choose!35569 (List!55972 Int B!2967) Unit!145898)

(assert (=> d!1560349 (= lt!1992519 (choose!35569 l1!945 lambda!243268 e1!29))))

(declare-fun e!3039498 () Bool)

(assert (=> d!1560349 e!3039498))

(declare-fun res!2075342 () Bool)

(assert (=> d!1560349 (=> (not res!2075342) (not e!3039498))))

(declare-fun forall!13039 (List!55972 Int) Bool)

(assert (=> d!1560349 (= res!2075342 (forall!13039 l1!945 lambda!243268))))

(assert (=> d!1560349 (= (forallContained!4586 l1!945 lambda!243268 e1!29) lt!1992519)))

(declare-fun b!4861440 () Bool)

(assert (=> b!4861440 (= e!3039498 (contains!19379 l1!945 e1!29))))

(assert (= (and d!1560349 res!2075342) b!4861440))

(declare-fun b_lambda!193385 () Bool)

(assert (=> (not b_lambda!193385) (not d!1560349)))

(declare-fun m!5859140 () Bool)

(assert (=> d!1560349 m!5859140))

(declare-fun m!5859142 () Bool)

(assert (=> d!1560349 m!5859142))

(declare-fun m!5859144 () Bool)

(assert (=> d!1560349 m!5859144))

(assert (=> b!4861440 m!5859112))

(assert (=> b!4861411 d!1560349))

(declare-fun bs!1173956 () Bool)

(declare-fun d!1560353 () Bool)

(assert (= bs!1173956 (and d!1560353 b!4861411)))

(declare-fun lambda!243281 () Int)

(assert (=> bs!1173956 (= lambda!243281 lambda!243268)))

(assert (=> d!1560353 true))

(declare-fun bs!1173957 () Bool)

(declare-fun b!4861446 () Bool)

(assert (= bs!1173957 (and b!4861446 b!4861411)))

(declare-fun lambda!243282 () Int)

(assert (=> bs!1173957 (= (= l1!945 l2!922) (= lambda!243282 lambda!243268))))

(declare-fun bs!1173959 () Bool)

(assert (= bs!1173959 (and b!4861446 d!1560353)))

(assert (=> bs!1173959 (= (= l1!945 l2!922) (= lambda!243282 lambda!243281))))

(assert (=> b!4861446 true))

(declare-fun res!2075348 () Bool)

(declare-fun e!3039504 () Bool)

(assert (=> d!1560353 (=> (not res!2075348) (not e!3039504))))

(assert (=> d!1560353 (= res!2075348 (forall!13039 l1!945 lambda!243281))))

(assert (=> d!1560353 (= (disjoint!7 l1!945 l2!922) e!3039504)))

(assert (=> b!4861446 (= e!3039504 (forall!13039 l2!922 lambda!243282))))

(assert (= (and d!1560353 res!2075348) b!4861446))

(declare-fun m!5859146 () Bool)

(assert (=> d!1560353 m!5859146))

(declare-fun m!5859148 () Bool)

(assert (=> b!4861446 m!5859148))

(assert (=> start!508102 d!1560353))

(declare-fun b!4861451 () Bool)

(declare-fun e!3039507 () Bool)

(declare-fun tp!1367796 () Bool)

(assert (=> b!4861451 (= e!3039507 (and tp_is_empty!35641 tp!1367796))))

(assert (=> b!4861412 (= tp!1367787 e!3039507)))

(assert (= (and b!4861412 (is-Cons!55848 (t!363592 l1!945))) b!4861451))

(declare-fun b!4861452 () Bool)

(declare-fun e!3039508 () Bool)

(declare-fun tp!1367797 () Bool)

(assert (=> b!4861452 (= e!3039508 (and tp_is_empty!35641 tp!1367797))))

(assert (=> b!4861413 (= tp!1367786 e!3039508)))

(assert (= (and b!4861413 (is-Cons!55848 (t!363592 l2!922))) b!4861452))

(declare-fun b_lambda!193387 () Bool)

(assert (= b_lambda!193385 (or b!4861411 b_lambda!193387)))

(declare-fun bs!1173961 () Bool)

(declare-fun d!1560357 () Bool)

(assert (= bs!1173961 (and d!1560357 b!4861411)))

(assert (=> bs!1173961 (= (dynLambda!22408 lambda!243268 e1!29) (not (contains!19379 l2!922 e1!29)))))

(assert (=> bs!1173961 m!5859116))

(assert (=> d!1560349 d!1560357))

(push 1)

(assert (not b_lambda!193387))

(assert (not b!4861440))

(assert (not d!1560349))

(assert (not b!4861437))

(assert (not d!1560345))

(assert (not d!1560353))

(assert (not bs!1173961))

(assert (not d!1560347))

(assert (not b!4861435))

(assert (not b!4861452))

(assert (not b!4861451))

(assert tp_is_empty!35641)

(assert (not b!4861446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

