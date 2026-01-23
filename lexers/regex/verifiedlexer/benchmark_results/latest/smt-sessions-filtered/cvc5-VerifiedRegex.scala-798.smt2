; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!45188 () Bool)

(assert start!45188)

(declare-fun b_free!13165 () Bool)

(declare-fun b_next!13165 () Bool)

(assert (=> start!45188 (= b_free!13165 (not b_next!13165))))

(declare-fun tp!130754 () Bool)

(declare-fun b_and!50483 () Bool)

(assert (=> start!45188 (= tp!130754 b_and!50483)))

(declare-fun b_free!13167 () Bool)

(declare-fun b_next!13167 () Bool)

(assert (=> start!45188 (= b_free!13167 (not b_next!13167))))

(declare-fun tp!130752 () Bool)

(declare-fun b_and!50485 () Bool)

(assert (=> start!45188 (= tp!130752 b_and!50485)))

(assert (=> start!45188 true))

(declare-fun order!4205 () Int)

(declare-fun order!4203 () Int)

(declare-fun lambda!14004 () Int)

(declare-fun f!1027 () Int)

(declare-fun dynLambda!2869 (Int Int) Int)

(declare-fun dynLambda!2870 (Int Int) Int)

(assert (=> start!45188 (< (dynLambda!2869 order!4203 f!1027) (dynLambda!2870 order!4205 lambda!14004))))

(assert (=> start!45188 true))

(declare-fun order!4207 () Int)

(declare-fun p!1789 () Int)

(declare-fun dynLambda!2871 (Int Int) Int)

(assert (=> start!45188 (< (dynLambda!2871 order!4207 p!1789) (dynLambda!2870 order!4205 lambda!14004))))

(declare-fun b!472057 () Bool)

(declare-fun res!209405 () Bool)

(declare-fun e!288731 () Bool)

(assert (=> b!472057 (=> (not res!209405) (not e!288731))))

(declare-datatypes ((B!939 0))(
  ( (B!940 (val!1515 Int)) )
))
(declare-datatypes ((List!4557 0))(
  ( (Nil!4547) (Cons!4547 (h!9944 B!939) (t!72995 List!4557)) )
))
(declare-fun l!2882 () List!4557)

(assert (=> b!472057 (= res!209405 (not (is-Cons!4547 l!2882)))))

(declare-fun b!472058 () Bool)

(declare-fun res!209404 () Bool)

(assert (=> b!472058 (=> (not res!209404) (not e!288731))))

(declare-datatypes ((A!377 0))(
  ( (A!378 (val!1516 Int)) )
))
(declare-fun s!1494 () (Set A!377))

(declare-fun subseq!114 (List!4557 List!4557) Bool)

(declare-fun toList!328 ((Set B!939)) List!4557)

(declare-fun flatMap!93 ((Set A!377) Int) (Set B!939))

(assert (=> b!472058 (= res!209404 (subseq!114 l!2882 (toList!328 (flatMap!93 s!1494 f!1027))))))

(declare-fun setIsEmpty!1961 () Bool)

(declare-fun setRes!1961 () Bool)

(assert (=> setIsEmpty!1961 setRes!1961))

(declare-fun b!472059 () Bool)

(declare-fun e!288730 () Bool)

(declare-fun tp_is_empty!2133 () Bool)

(declare-fun tp!130753 () Bool)

(assert (=> b!472059 (= e!288730 (and tp_is_empty!2133 tp!130753))))

(declare-fun b!472060 () Bool)

(declare-fun forall!1329 (List!4557 Int) Bool)

(assert (=> b!472060 (= e!288731 (not (forall!1329 l!2882 p!1789)))))

(declare-fun res!209406 () Bool)

(assert (=> start!45188 (=> (not res!209406) (not e!288731))))

(declare-fun Forall!243 (Int) Bool)

(assert (=> start!45188 (= res!209406 (Forall!243 lambda!14004))))

(assert (=> start!45188 e!288731))

(assert (=> start!45188 tp!130754))

(assert (=> start!45188 tp!130752))

(assert (=> start!45188 e!288730))

(declare-fun condSetEmpty!1961 () Bool)

(assert (=> start!45188 (= condSetEmpty!1961 (= s!1494 (as set.empty (Set A!377))))))

(assert (=> start!45188 setRes!1961))

(declare-fun setNonEmpty!1961 () Bool)

(declare-fun tp!130755 () Bool)

(declare-fun tp_is_empty!2135 () Bool)

(assert (=> setNonEmpty!1961 (= setRes!1961 (and tp!130755 tp_is_empty!2135))))

(declare-fun setElem!1961 () A!377)

(declare-fun setRest!1961 () (Set A!377))

(assert (=> setNonEmpty!1961 (= s!1494 (set.union (set.insert setElem!1961 (as set.empty (Set A!377))) setRest!1961))))

(assert (= (and start!45188 res!209406) b!472058))

(assert (= (and b!472058 res!209404) b!472057))

(assert (= (and b!472057 res!209405) b!472060))

(assert (= (and start!45188 (is-Cons!4547 l!2882)) b!472059))

(assert (= (and start!45188 condSetEmpty!1961) setIsEmpty!1961))

(assert (= (and start!45188 (not condSetEmpty!1961)) setNonEmpty!1961))

(declare-fun m!745465 () Bool)

(assert (=> b!472058 m!745465))

(assert (=> b!472058 m!745465))

(declare-fun m!745467 () Bool)

(assert (=> b!472058 m!745467))

(assert (=> b!472058 m!745467))

(declare-fun m!745469 () Bool)

(assert (=> b!472058 m!745469))

(declare-fun m!745471 () Bool)

(assert (=> b!472060 m!745471))

(declare-fun m!745473 () Bool)

(assert (=> start!45188 m!745473))

(push 1)

(assert b_and!50483)

(assert (not b!472059))

(assert tp_is_empty!2135)

(assert (not start!45188))

(assert (not b!472058))

(assert tp_is_empty!2133)

(assert (not setNonEmpty!1961))

(assert (not b_next!13167))

(assert (not b!472060))

(assert (not b_next!13165))

(assert b_and!50485)

(check-sat)

(pop 1)

(push 1)

(assert b_and!50483)

(assert b_and!50485)

(assert (not b_next!13167))

(assert (not b_next!13165))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!179483 () Bool)

(declare-fun res!209420 () Bool)

(declare-fun e!288742 () Bool)

(assert (=> d!179483 (=> res!209420 e!288742)))

(assert (=> d!179483 (= res!209420 (is-Nil!4547 l!2882))))

(assert (=> d!179483 (= (forall!1329 l!2882 p!1789) e!288742)))

(declare-fun b!472085 () Bool)

(declare-fun e!288743 () Bool)

(assert (=> b!472085 (= e!288742 e!288743)))

(declare-fun res!209421 () Bool)

(assert (=> b!472085 (=> (not res!209421) (not e!288743))))

(declare-fun dynLambda!2875 (Int B!939) Bool)

(assert (=> b!472085 (= res!209421 (dynLambda!2875 p!1789 (h!9944 l!2882)))))

(declare-fun b!472086 () Bool)

(assert (=> b!472086 (= e!288743 (forall!1329 (t!72995 l!2882) p!1789))))

(assert (= (and d!179483 (not res!209420)) b!472085))

(assert (= (and b!472085 res!209421) b!472086))

(declare-fun b_lambda!19731 () Bool)

(assert (=> (not b_lambda!19731) (not b!472085)))

(declare-fun t!72998 () Bool)

(declare-fun tb!47037 () Bool)

(assert (=> (and start!45188 (= p!1789 p!1789) t!72998) tb!47037))

(declare-fun result!51816 () Bool)

(assert (=> tb!47037 (= result!51816 true)))

(assert (=> b!472085 t!72998))

(declare-fun b_and!50491 () Bool)

(assert (= b_and!50485 (and (=> t!72998 result!51816) b_and!50491)))

(declare-fun m!745485 () Bool)

(assert (=> b!472085 m!745485))

(declare-fun m!745487 () Bool)

(assert (=> b!472086 m!745487))

(assert (=> b!472060 d!179483))

(declare-fun d!179485 () Bool)

(declare-fun choose!3578 (Int) Bool)

(assert (=> d!179485 (= (Forall!243 lambda!14004) (choose!3578 lambda!14004))))

(declare-fun bs!58459 () Bool)

(assert (= bs!58459 d!179485))

(declare-fun m!745489 () Bool)

(assert (=> bs!58459 m!745489))

(assert (=> start!45188 d!179485))

(declare-fun e!288755 () Bool)

(declare-fun b!472097 () Bool)

(assert (=> b!472097 (= e!288755 (subseq!114 (t!72995 l!2882) (t!72995 (toList!328 (flatMap!93 s!1494 f!1027)))))))

(declare-fun b!472095 () Bool)

(declare-fun e!288753 () Bool)

(declare-fun e!288752 () Bool)

(assert (=> b!472095 (= e!288753 e!288752)))

(declare-fun res!209433 () Bool)

(assert (=> b!472095 (=> (not res!209433) (not e!288752))))

(assert (=> b!472095 (= res!209433 (is-Cons!4547 (toList!328 (flatMap!93 s!1494 f!1027))))))

(declare-fun b!472096 () Bool)

(declare-fun e!288754 () Bool)

(assert (=> b!472096 (= e!288752 e!288754)))

(declare-fun res!209430 () Bool)

(assert (=> b!472096 (=> res!209430 e!288754)))

(assert (=> b!472096 (= res!209430 e!288755)))

(declare-fun res!209431 () Bool)

(assert (=> b!472096 (=> (not res!209431) (not e!288755))))

(assert (=> b!472096 (= res!209431 (= (h!9944 l!2882) (h!9944 (toList!328 (flatMap!93 s!1494 f!1027)))))))

(declare-fun b!472098 () Bool)

(assert (=> b!472098 (= e!288754 (subseq!114 l!2882 (t!72995 (toList!328 (flatMap!93 s!1494 f!1027)))))))

(declare-fun d!179487 () Bool)

(declare-fun res!209432 () Bool)

(assert (=> d!179487 (=> res!209432 e!288753)))

(assert (=> d!179487 (= res!209432 (is-Nil!4547 l!2882))))

(assert (=> d!179487 (= (subseq!114 l!2882 (toList!328 (flatMap!93 s!1494 f!1027))) e!288753)))

(assert (= (and d!179487 (not res!209432)) b!472095))

(assert (= (and b!472095 res!209433) b!472096))

(assert (= (and b!472096 res!209431) b!472097))

(assert (= (and b!472096 (not res!209430)) b!472098))

(declare-fun m!745491 () Bool)

(assert (=> b!472097 m!745491))

(declare-fun m!745493 () Bool)

(assert (=> b!472098 m!745493))

(assert (=> b!472058 d!179487))

(declare-fun d!179489 () Bool)

(declare-fun e!288758 () Bool)

(assert (=> d!179489 e!288758))

(declare-fun res!209436 () Bool)

(assert (=> d!179489 (=> (not res!209436) (not e!288758))))

(declare-fun lt!210257 () List!4557)

(declare-fun noDuplicate!98 (List!4557) Bool)

(assert (=> d!179489 (= res!209436 (noDuplicate!98 lt!210257))))

(declare-fun choose!3579 ((Set B!939)) List!4557)

(assert (=> d!179489 (= lt!210257 (choose!3579 (flatMap!93 s!1494 f!1027)))))

(assert (=> d!179489 (= (toList!328 (flatMap!93 s!1494 f!1027)) lt!210257)))

(declare-fun b!472101 () Bool)

(declare-fun content!775 (List!4557) (Set B!939))

(assert (=> b!472101 (= e!288758 (= (content!775 lt!210257) (flatMap!93 s!1494 f!1027)))))

(assert (= (and d!179489 res!209436) b!472101))

(declare-fun m!745495 () Bool)

(assert (=> d!179489 m!745495))

(assert (=> d!179489 m!745465))

(declare-fun m!745497 () Bool)

(assert (=> d!179489 m!745497))

(declare-fun m!745499 () Bool)

(assert (=> b!472101 m!745499))

(assert (=> b!472058 d!179489))

(declare-fun d!179491 () Bool)

(declare-fun choose!3580 ((Set A!377) Int) (Set B!939))

(assert (=> d!179491 (= (flatMap!93 s!1494 f!1027) (choose!3580 s!1494 f!1027))))

(declare-fun bs!58460 () Bool)

(assert (= bs!58460 d!179491))

(declare-fun m!745501 () Bool)

(assert (=> bs!58460 m!745501))

(assert (=> b!472058 d!179491))

(declare-fun condSetEmpty!1967 () Bool)

(assert (=> setNonEmpty!1961 (= condSetEmpty!1967 (= setRest!1961 (as set.empty (Set A!377))))))

(declare-fun setRes!1967 () Bool)

(assert (=> setNonEmpty!1961 (= tp!130755 setRes!1967)))

(declare-fun setIsEmpty!1967 () Bool)

(assert (=> setIsEmpty!1967 setRes!1967))

(declare-fun setNonEmpty!1967 () Bool)

(declare-fun tp!130770 () Bool)

(assert (=> setNonEmpty!1967 (= setRes!1967 (and tp!130770 tp_is_empty!2135))))

(declare-fun setElem!1967 () A!377)

(declare-fun setRest!1967 () (Set A!377))

(assert (=> setNonEmpty!1967 (= setRest!1961 (set.union (set.insert setElem!1967 (as set.empty (Set A!377))) setRest!1967))))

(assert (= (and setNonEmpty!1961 condSetEmpty!1967) setIsEmpty!1967))

(assert (= (and setNonEmpty!1961 (not condSetEmpty!1967)) setNonEmpty!1967))

(declare-fun b!472108 () Bool)

(declare-fun e!288761 () Bool)

(declare-fun tp!130773 () Bool)

(assert (=> b!472108 (= e!288761 (and tp_is_empty!2133 tp!130773))))

(assert (=> b!472059 (= tp!130753 e!288761)))

(assert (= (and b!472059 (is-Cons!4547 (t!72995 l!2882))) b!472108))

(declare-fun b_lambda!19733 () Bool)

(assert (= b_lambda!19731 (or (and start!45188 b_free!13167) b_lambda!19733)))

(push 1)

(assert (not d!179489))

(assert (not b!472097))

(assert b_and!50483)

(assert (not b!472101))

(assert tp_is_empty!2135)

(assert (not setNonEmpty!1967))

(assert tp_is_empty!2133)

(assert (not b_next!13167))

(assert b_and!50491)

(assert (not b_next!13165))

(assert (not b!472098))

(assert (not b!472108))

(assert (not d!179491))

(assert (not b_lambda!19733))

(assert (not d!179485))

(assert (not b!472086))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50483)

(assert b_and!50491)

(assert (not b_next!13167))

(assert (not b_next!13165))

(check-sat)

(pop 1)

