; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714188 () Bool)

(assert start!714188)

(declare-fun b_free!134215 () Bool)

(declare-fun b_next!135005 () Bool)

(assert (=> start!714188 (= b_free!134215 (not b_next!135005))))

(declare-fun tp!2079297 () Bool)

(declare-fun b_and!351693 () Bool)

(assert (=> start!714188 (= tp!2079297 b_and!351693)))

(declare-fun b!7320714 () Bool)

(assert (=> b!7320714 true))

(assert (=> b!7320714 true))

(declare-fun f!643 () Int)

(declare-fun lambda!453263 () Int)

(declare-fun order!29309 () Int)

(declare-fun order!29311 () Int)

(declare-fun dynLambda!29300 (Int Int) Int)

(declare-fun dynLambda!29301 (Int Int) Int)

(assert (=> b!7320714 (< (dynLambda!29300 order!29309 f!643) (dynLambda!29301 order!29311 lambda!453263))))

(declare-fun b!7320712 () Bool)

(declare-fun e!4383099 () Bool)

(declare-fun e!4383098 () Bool)

(assert (=> b!7320712 (= e!4383099 e!4383098)))

(declare-fun res!2958784 () Bool)

(assert (=> b!7320712 (=> (not res!2958784) (not e!4383098))))

(declare-datatypes ((B!3763 0))(
  ( (B!3764 (val!29381 Int)) )
))
(declare-fun lt!2604113 () (Set B!3763))

(declare-fun lt!2604112 () (Set B!3763))

(declare-fun b!25336 () B!3763)

(assert (=> b!7320712 (= res!2958784 (and (not (set.member b!25336 lt!2604112)) (not (set.member b!25336 (set.union lt!2604113 lt!2604112)))))))

(declare-datatypes ((A!1061 0))(
  ( (A!1062 (val!29382 Int)) )
))
(declare-fun s2!405 () (Set A!1061))

(declare-fun flatMap!3150 ((Set A!1061) Int) (Set B!3763))

(assert (=> b!7320712 (= lt!2604112 (flatMap!3150 s2!405 f!643))))

(declare-fun lt!2604114 () A!1061)

(declare-fun b!7320713 () Bool)

(declare-fun e!4383097 () Bool)

(declare-fun flatMapPost!151 ((Set A!1061) Int B!3763) A!1061)

(assert (=> b!7320713 (= e!4383097 (= (flatMapPost!151 s2!405 f!643 b!25336) lt!2604114))))

(declare-fun setIsEmpty!55595 () Bool)

(declare-fun setRes!55596 () Bool)

(assert (=> setIsEmpty!55595 setRes!55596))

(declare-fun setIsEmpty!55596 () Bool)

(declare-fun setRes!55595 () Bool)

(assert (=> setIsEmpty!55596 setRes!55595))

(declare-fun s1!434 () (Set A!1061))

(declare-fun exists!4672 ((Set A!1061) Int) Bool)

(assert (=> b!7320714 (= e!4383098 (not (not (exists!4672 s1!434 lambda!453263))))))

(assert (=> b!7320714 e!4383097))

(declare-fun res!2958786 () Bool)

(assert (=> b!7320714 (=> (not res!2958786) (not e!4383097))))

(assert (=> b!7320714 (= res!2958786 (= (flatMapPost!151 s1!434 f!643 b!25336) lt!2604114))))

(declare-fun empty!3323 () A!1061)

(assert (=> b!7320714 (= lt!2604114 empty!3323)))

(assert (=> b!7320714 true))

(declare-fun tp_is_empty!48013 () Bool)

(assert (=> b!7320714 tp_is_empty!48013))

(declare-fun setNonEmpty!55595 () Bool)

(declare-fun tp!2079295 () Bool)

(assert (=> setNonEmpty!55595 (= setRes!55596 (and tp!2079295 tp_is_empty!48013))))

(declare-fun setElem!55595 () A!1061)

(declare-fun setRest!55596 () (Set A!1061))

(assert (=> setNonEmpty!55595 (= s2!405 (set.union (set.insert setElem!55595 (as set.empty (Set A!1061))) setRest!55596))))

(declare-fun setNonEmpty!55596 () Bool)

(declare-fun tp!2079296 () Bool)

(assert (=> setNonEmpty!55596 (= setRes!55595 (and tp!2079296 tp_is_empty!48013))))

(declare-fun setElem!55596 () A!1061)

(declare-fun setRest!55595 () (Set A!1061))

(assert (=> setNonEmpty!55596 (= s1!434 (set.union (set.insert setElem!55596 (as set.empty (Set A!1061))) setRest!55595))))

(declare-fun res!2958785 () Bool)

(assert (=> start!714188 (=> (not res!2958785) (not e!4383099))))

(assert (=> start!714188 (= res!2958785 (not (set.member b!25336 lt!2604113)))))

(assert (=> start!714188 (= lt!2604113 (flatMap!3150 s1!434 f!643))))

(assert (=> start!714188 e!4383099))

(declare-fun condSetEmpty!55595 () Bool)

(assert (=> start!714188 (= condSetEmpty!55595 (= s2!405 (as set.empty (Set A!1061))))))

(assert (=> start!714188 setRes!55596))

(declare-fun tp_is_empty!48015 () Bool)

(assert (=> start!714188 tp_is_empty!48015))

(declare-fun condSetEmpty!55596 () Bool)

(assert (=> start!714188 (= condSetEmpty!55596 (= s1!434 (as set.empty (Set A!1061))))))

(assert (=> start!714188 setRes!55595))

(assert (=> start!714188 tp!2079297))

(assert (= (and start!714188 res!2958785) b!7320712))

(assert (= (and b!7320712 res!2958784) b!7320714))

(assert (= (and b!7320714 res!2958786) b!7320713))

(assert (= (and start!714188 condSetEmpty!55595) setIsEmpty!55595))

(assert (= (and start!714188 (not condSetEmpty!55595)) setNonEmpty!55595))

(assert (= (and start!714188 condSetEmpty!55596) setIsEmpty!55596))

(assert (= (and start!714188 (not condSetEmpty!55596)) setNonEmpty!55596))

(declare-fun m!7986034 () Bool)

(assert (=> b!7320712 m!7986034))

(declare-fun m!7986036 () Bool)

(assert (=> b!7320712 m!7986036))

(declare-fun m!7986038 () Bool)

(assert (=> b!7320712 m!7986038))

(declare-fun m!7986040 () Bool)

(assert (=> b!7320713 m!7986040))

(declare-fun m!7986042 () Bool)

(assert (=> b!7320714 m!7986042))

(declare-fun m!7986044 () Bool)

(assert (=> b!7320714 m!7986044))

(declare-fun m!7986046 () Bool)

(assert (=> start!714188 m!7986046))

(declare-fun m!7986048 () Bool)

(assert (=> start!714188 m!7986048))

(push 1)

(assert tp_is_empty!48015)

(assert (not setNonEmpty!55596))

(assert (not b!7320714))

(assert (not b!7320712))

(assert (not b!7320713))

(assert tp_is_empty!48013)

(assert (not b_next!135005))

(assert (not setNonEmpty!55595))

(assert b_and!351693)

(assert (not start!714188))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351693)

(assert (not b_next!135005))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273413 () Bool)

(declare-fun lt!2604126 () Bool)

(declare-datatypes ((List!71418 0))(
  ( (Nil!71294) (Cons!71294 (h!77742 A!1061) (t!385727 List!71418)) )
))
(declare-fun exists!4674 (List!71418 Int) Bool)

(declare-fun toList!11705 ((Set A!1061)) List!71418)

(assert (=> d!2273413 (= lt!2604126 (exists!4674 (toList!11705 s1!434) lambda!453263))))

(declare-fun choose!56899 ((Set A!1061) Int) Bool)

(assert (=> d!2273413 (= lt!2604126 (choose!56899 s1!434 lambda!453263))))

(assert (=> d!2273413 (= (exists!4672 s1!434 lambda!453263) lt!2604126)))

(declare-fun bs!1915916 () Bool)

(assert (= bs!1915916 d!2273413))

(declare-fun m!7986066 () Bool)

(assert (=> bs!1915916 m!7986066))

(assert (=> bs!1915916 m!7986066))

(declare-fun m!7986068 () Bool)

(assert (=> bs!1915916 m!7986068))

(declare-fun m!7986070 () Bool)

(assert (=> bs!1915916 m!7986070))

(assert (=> b!7320714 d!2273413))

(declare-fun bs!1915917 () Bool)

(declare-fun d!2273415 () Bool)

(assert (= bs!1915917 (and d!2273415 b!7320714)))

(declare-fun lambda!453269 () Int)

(assert (=> bs!1915917 (= lambda!453269 lambda!453263)))

(assert (=> d!2273415 true))

(assert (=> d!2273415 true))

(assert (=> d!2273415 (< (dynLambda!29300 order!29309 f!643) (dynLambda!29301 order!29311 lambda!453269))))

(assert (=> d!2273415 (= (set.member b!25336 (flatMap!3150 s1!434 f!643)) (exists!4672 s1!434 lambda!453269))))

(declare-fun lt!2604129 () A!1061)

(declare-fun choose!56900 ((Set A!1061) Int B!3763) A!1061)

(assert (=> d!2273415 (= lt!2604129 (choose!56900 s1!434 f!643 b!25336))))

(assert (=> d!2273415 (= (flatMapPost!151 s1!434 f!643 b!25336) lt!2604129)))

(declare-fun bs!1915918 () Bool)

(assert (= bs!1915918 d!2273415))

(assert (=> bs!1915918 m!7986048))

(declare-fun m!7986072 () Bool)

(assert (=> bs!1915918 m!7986072))

(declare-fun m!7986074 () Bool)

(assert (=> bs!1915918 m!7986074))

(declare-fun m!7986076 () Bool)

(assert (=> bs!1915918 m!7986076))

(assert (=> b!7320714 d!2273415))

(declare-fun d!2273419 () Bool)

(declare-fun choose!56901 ((Set A!1061) Int) (Set B!3763))

(assert (=> d!2273419 (= (flatMap!3150 s1!434 f!643) (choose!56901 s1!434 f!643))))

(declare-fun bs!1915919 () Bool)

(assert (= bs!1915919 d!2273419))

(declare-fun m!7986078 () Bool)

(assert (=> bs!1915919 m!7986078))

(assert (=> start!714188 d!2273419))

(declare-fun bs!1915920 () Bool)

(declare-fun d!2273421 () Bool)

(assert (= bs!1915920 (and d!2273421 b!7320714)))

(declare-fun lambda!453270 () Int)

(assert (=> bs!1915920 (= lambda!453270 lambda!453263)))

(declare-fun bs!1915922 () Bool)

(assert (= bs!1915922 (and d!2273421 d!2273415)))

(assert (=> bs!1915922 (= lambda!453270 lambda!453269)))

(assert (=> d!2273421 true))

(assert (=> d!2273421 true))

(assert (=> d!2273421 (< (dynLambda!29300 order!29309 f!643) (dynLambda!29301 order!29311 lambda!453270))))

(assert (=> d!2273421 (= (set.member b!25336 (flatMap!3150 s2!405 f!643)) (exists!4672 s2!405 lambda!453270))))

(declare-fun lt!2604130 () A!1061)

(assert (=> d!2273421 (= lt!2604130 (choose!56900 s2!405 f!643 b!25336))))

(assert (=> d!2273421 (= (flatMapPost!151 s2!405 f!643 b!25336) lt!2604130)))

(declare-fun bs!1915923 () Bool)

(assert (= bs!1915923 d!2273421))

(assert (=> bs!1915923 m!7986038))

(declare-fun m!7986082 () Bool)

(assert (=> bs!1915923 m!7986082))

(declare-fun m!7986084 () Bool)

(assert (=> bs!1915923 m!7986084))

(declare-fun m!7986086 () Bool)

(assert (=> bs!1915923 m!7986086))

(assert (=> b!7320713 d!2273421))

(declare-fun d!2273425 () Bool)

(assert (=> d!2273425 (= (flatMap!3150 s2!405 f!643) (choose!56901 s2!405 f!643))))

(declare-fun bs!1915924 () Bool)

(assert (= bs!1915924 d!2273425))

(declare-fun m!7986088 () Bool)

(assert (=> bs!1915924 m!7986088))

(assert (=> b!7320712 d!2273425))

(declare-fun condSetEmpty!55605 () Bool)

(assert (=> setNonEmpty!55596 (= condSetEmpty!55605 (= setRest!55595 (as set.empty (Set A!1061))))))

(declare-fun setRes!55605 () Bool)

(assert (=> setNonEmpty!55596 (= tp!2079296 setRes!55605)))

(declare-fun setIsEmpty!55605 () Bool)

(assert (=> setIsEmpty!55605 setRes!55605))

(declare-fun setNonEmpty!55605 () Bool)

(declare-fun tp!2079309 () Bool)

(assert (=> setNonEmpty!55605 (= setRes!55605 (and tp!2079309 tp_is_empty!48013))))

(declare-fun setElem!55605 () A!1061)

(declare-fun setRest!55605 () (Set A!1061))

(assert (=> setNonEmpty!55605 (= setRest!55595 (set.union (set.insert setElem!55605 (as set.empty (Set A!1061))) setRest!55605))))

(assert (= (and setNonEmpty!55596 condSetEmpty!55605) setIsEmpty!55605))

(assert (= (and setNonEmpty!55596 (not condSetEmpty!55605)) setNonEmpty!55605))

(declare-fun condSetEmpty!55606 () Bool)

(assert (=> setNonEmpty!55595 (= condSetEmpty!55606 (= setRest!55596 (as set.empty (Set A!1061))))))

(declare-fun setRes!55606 () Bool)

(assert (=> setNonEmpty!55595 (= tp!2079295 setRes!55606)))

(declare-fun setIsEmpty!55606 () Bool)

(assert (=> setIsEmpty!55606 setRes!55606))

(declare-fun setNonEmpty!55606 () Bool)

(declare-fun tp!2079310 () Bool)

(assert (=> setNonEmpty!55606 (= setRes!55606 (and tp!2079310 tp_is_empty!48013))))

(declare-fun setElem!55606 () A!1061)

(declare-fun setRest!55606 () (Set A!1061))

(assert (=> setNonEmpty!55606 (= setRest!55596 (set.union (set.insert setElem!55606 (as set.empty (Set A!1061))) setRest!55606))))

(assert (= (and setNonEmpty!55595 condSetEmpty!55606) setIsEmpty!55606))

(assert (= (and setNonEmpty!55595 (not condSetEmpty!55606)) setNonEmpty!55606))

(push 1)

(assert (not setNonEmpty!55605))

(assert (not d!2273425))

(assert tp_is_empty!48015)

(assert (not setNonEmpty!55606))

(assert b_and!351693)

(assert (not d!2273415))

(assert (not d!2273421))

(assert (not d!2273413))

(assert tp_is_empty!48013)

(assert (not d!2273419))

(assert (not b_next!135005))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351693)

(assert (not b_next!135005))

(check-sat)

(pop 1)

