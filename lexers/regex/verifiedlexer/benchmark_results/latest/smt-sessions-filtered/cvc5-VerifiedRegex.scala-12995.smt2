; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714000 () Bool)

(assert start!714000)

(declare-fun b_free!134155 () Bool)

(declare-fun b_next!134945 () Bool)

(assert (=> start!714000 (= b_free!134155 (not b_next!134945))))

(declare-fun tp!2078940 () Bool)

(declare-fun b_and!351563 () Bool)

(assert (=> start!714000 (= tp!2078940 b_and!351563)))

(declare-fun b!7320140 () Bool)

(assert (=> b!7320140 true))

(assert (=> b!7320140 true))

(declare-fun lambda!453031 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29197 () Int)

(declare-fun order!29199 () Int)

(declare-fun dynLambda!29210 (Int Int) Int)

(declare-fun dynLambda!29211 (Int Int) Int)

(assert (=> b!7320140 (< (dynLambda!29210 order!29197 f!643) (dynLambda!29211 order!29199 lambda!453031))))

(declare-fun res!2958396 () Bool)

(declare-fun e!4382747 () Bool)

(assert (=> start!714000 (=> (not res!2958396) (not e!4382747))))

(declare-datatypes ((B!3703 0))(
  ( (B!3704 (val!29321 Int)) )
))
(declare-fun b!25336 () B!3703)

(declare-datatypes ((A!1001 0))(
  ( (A!1002 (val!29322 Int)) )
))
(declare-fun s1!434 () (Set A!1001))

(declare-fun flatMap!3120 ((Set A!1001) Int) (Set B!3703))

(assert (=> start!714000 (= res!2958396 (set.member b!25336 (flatMap!3120 s1!434 f!643)))))

(assert (=> start!714000 e!4382747))

(declare-fun tp_is_empty!47895 () Bool)

(assert (=> start!714000 tp_is_empty!47895))

(declare-fun condSetEmpty!55329 () Bool)

(assert (=> start!714000 (= condSetEmpty!55329 (= s1!434 (as set.empty (Set A!1001))))))

(declare-fun setRes!55329 () Bool)

(assert (=> start!714000 setRes!55329))

(assert (=> start!714000 tp!2078940))

(declare-fun exists!4630 ((Set A!1001) Int) Bool)

(assert (=> b!7320140 (= e!4382747 (not (exists!4630 s1!434 lambda!453031)))))

(declare-fun empty!3211 () A!1001)

(declare-fun flatMapPost!123 ((Set A!1001) Int B!3703) A!1001)

(assert (=> b!7320140 (= (flatMapPost!123 s1!434 f!643 b!25336) empty!3211)))

(assert (=> b!7320140 true))

(declare-fun tp_is_empty!47893 () Bool)

(assert (=> b!7320140 tp_is_empty!47893))

(declare-fun setIsEmpty!55329 () Bool)

(assert (=> setIsEmpty!55329 setRes!55329))

(declare-fun setNonEmpty!55329 () Bool)

(declare-fun tp!2078939 () Bool)

(assert (=> setNonEmpty!55329 (= setRes!55329 (and tp!2078939 tp_is_empty!47893))))

(declare-fun setElem!55329 () A!1001)

(declare-fun setRest!55329 () (Set A!1001))

(assert (=> setNonEmpty!55329 (= s1!434 (set.union (set.insert setElem!55329 (as set.empty (Set A!1001))) setRest!55329))))

(assert (= (and start!714000 res!2958396) b!7320140))

(assert (= (and start!714000 condSetEmpty!55329) setIsEmpty!55329))

(assert (= (and start!714000 (not condSetEmpty!55329)) setNonEmpty!55329))

(declare-fun m!7985030 () Bool)

(assert (=> start!714000 m!7985030))

(declare-fun m!7985032 () Bool)

(assert (=> start!714000 m!7985032))

(declare-fun m!7985034 () Bool)

(assert (=> b!7320140 m!7985034))

(declare-fun m!7985036 () Bool)

(assert (=> b!7320140 m!7985036))

(push 1)

(assert tp_is_empty!47893)

(assert (not setNonEmpty!55329))

(assert b_and!351563)

(assert (not b!7320140))

(assert (not b_next!134945))

(assert tp_is_empty!47895)

(assert (not start!714000))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351563)

(assert (not b_next!134945))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273204 () Bool)

(declare-fun choose!56852 ((Set A!1001) Int) (Set B!3703))

(assert (=> d!2273204 (= (flatMap!3120 s1!434 f!643) (choose!56852 s1!434 f!643))))

(declare-fun bs!1915777 () Bool)

(assert (= bs!1915777 d!2273204))

(declare-fun m!7985046 () Bool)

(assert (=> bs!1915777 m!7985046))

(assert (=> start!714000 d!2273204))

(declare-fun d!2273206 () Bool)

(declare-fun lt!2603716 () Bool)

(declare-datatypes ((List!71403 0))(
  ( (Nil!71279) (Cons!71279 (h!77727 A!1001) (t!385642 List!71403)) )
))
(declare-fun exists!4632 (List!71403 Int) Bool)

(declare-fun toList!11690 ((Set A!1001)) List!71403)

(assert (=> d!2273206 (= lt!2603716 (exists!4632 (toList!11690 s1!434) lambda!453031))))

(declare-fun choose!56853 ((Set A!1001) Int) Bool)

(assert (=> d!2273206 (= lt!2603716 (choose!56853 s1!434 lambda!453031))))

(assert (=> d!2273206 (= (exists!4630 s1!434 lambda!453031) lt!2603716)))

(declare-fun bs!1915778 () Bool)

(assert (= bs!1915778 d!2273206))

(declare-fun m!7985048 () Bool)

(assert (=> bs!1915778 m!7985048))

(assert (=> bs!1915778 m!7985048))

(declare-fun m!7985050 () Bool)

(assert (=> bs!1915778 m!7985050))

(declare-fun m!7985052 () Bool)

(assert (=> bs!1915778 m!7985052))

(assert (=> b!7320140 d!2273206))

(declare-fun bs!1915779 () Bool)

(declare-fun d!2273208 () Bool)

(assert (= bs!1915779 (and d!2273208 b!7320140)))

(declare-fun lambda!453037 () Int)

(assert (=> bs!1915779 (= lambda!453037 lambda!453031)))

(assert (=> d!2273208 true))

(assert (=> d!2273208 true))

(assert (=> d!2273208 (< (dynLambda!29210 order!29197 f!643) (dynLambda!29211 order!29199 lambda!453037))))

(assert (=> d!2273208 (= (set.member b!25336 (flatMap!3120 s1!434 f!643)) (exists!4630 s1!434 lambda!453037))))

(declare-fun lt!2603719 () A!1001)

(declare-fun choose!56854 ((Set A!1001) Int B!3703) A!1001)

(assert (=> d!2273208 (= lt!2603719 (choose!56854 s1!434 f!643 b!25336))))

(assert (=> d!2273208 (= (flatMapPost!123 s1!434 f!643 b!25336) lt!2603719)))

(declare-fun bs!1915780 () Bool)

(assert (= bs!1915780 d!2273208))

(assert (=> bs!1915780 m!7985030))

(assert (=> bs!1915780 m!7985032))

(declare-fun m!7985056 () Bool)

(assert (=> bs!1915780 m!7985056))

(declare-fun m!7985058 () Bool)

(assert (=> bs!1915780 m!7985058))

(assert (=> b!7320140 d!2273208))

(declare-fun condSetEmpty!55335 () Bool)

(assert (=> setNonEmpty!55329 (= condSetEmpty!55335 (= setRest!55329 (as set.empty (Set A!1001))))))

(declare-fun setRes!55335 () Bool)

(assert (=> setNonEmpty!55329 (= tp!2078939 setRes!55335)))

(declare-fun setIsEmpty!55335 () Bool)

(assert (=> setIsEmpty!55335 setRes!55335))

(declare-fun setNonEmpty!55335 () Bool)

(declare-fun tp!2078949 () Bool)

(assert (=> setNonEmpty!55335 (= setRes!55335 (and tp!2078949 tp_is_empty!47893))))

(declare-fun setElem!55335 () A!1001)

(declare-fun setRest!55335 () (Set A!1001))

(assert (=> setNonEmpty!55335 (= setRest!55329 (set.union (set.insert setElem!55335 (as set.empty (Set A!1001))) setRest!55335))))

(assert (= (and setNonEmpty!55329 condSetEmpty!55335) setIsEmpty!55335))

(assert (= (and setNonEmpty!55329 (not condSetEmpty!55335)) setNonEmpty!55335))

(push 1)

(assert tp_is_empty!47893)

(assert (not setNonEmpty!55335))

(assert (not d!2273204))

(assert tp_is_empty!47895)

(assert b_and!351563)

(assert (not d!2273208))

(assert (not d!2273206))

(assert (not b_next!134945))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351563)

(assert (not b_next!134945))

(check-sat)

(pop 1)

