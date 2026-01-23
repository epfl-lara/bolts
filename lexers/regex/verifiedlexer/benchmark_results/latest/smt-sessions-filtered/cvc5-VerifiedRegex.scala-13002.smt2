; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714092 () Bool)

(assert start!714092)

(declare-fun b_free!134183 () Bool)

(declare-fun b_next!134973 () Bool)

(assert (=> start!714092 (= b_free!134183 (not b_next!134973))))

(declare-fun tp!2079102 () Bool)

(declare-fun b_and!351627 () Bool)

(assert (=> start!714092 (= tp!2079102 b_and!351627)))

(declare-fun b!7320414 () Bool)

(assert (=> b!7320414 true))

(assert (=> b!7320414 true))

(declare-fun order!29255 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29253 () Int)

(declare-fun lambda!453147 () Int)

(declare-fun dynLambda!29256 (Int Int) Int)

(declare-fun dynLambda!29257 (Int Int) Int)

(assert (=> b!7320414 (< (dynLambda!29256 order!29253 f!643) (dynLambda!29257 order!29255 lambda!453147))))

(declare-fun setIsEmpty!55449 () Bool)

(declare-fun setRes!55449 () Bool)

(assert (=> setIsEmpty!55449 setRes!55449))

(declare-fun res!2958578 () Bool)

(declare-fun e!4382905 () Bool)

(assert (=> start!714092 (=> (not res!2958578) (not e!4382905))))

(declare-datatypes ((B!3731 0))(
  ( (B!3732 (val!29349 Int)) )
))
(declare-fun b!25336 () B!3731)

(declare-datatypes ((A!1029 0))(
  ( (A!1030 (val!29350 Int)) )
))
(declare-fun s1!434 () (Set A!1029))

(declare-fun flatMap!3134 ((Set A!1029) Int) (Set B!3731))

(assert (=> start!714092 (= res!2958578 (not (set.member b!25336 (flatMap!3134 s1!434 f!643))))))

(assert (=> start!714092 e!4382905))

(declare-fun tp_is_empty!47951 () Bool)

(assert (=> start!714092 tp_is_empty!47951))

(declare-fun condSetEmpty!55449 () Bool)

(assert (=> start!714092 (= condSetEmpty!55449 (= s1!434 (as set.empty (Set A!1029))))))

(assert (=> start!714092 setRes!55449))

(assert (=> start!714092 tp!2079102))

(declare-fun condSetEmpty!55450 () Bool)

(declare-fun s2!405 () (Set A!1029))

(assert (=> start!714092 (= condSetEmpty!55450 (= s2!405 (as set.empty (Set A!1029))))))

(declare-fun setRes!55450 () Bool)

(assert (=> start!714092 setRes!55450))

(declare-fun exists!4652 ((Set A!1029) Int) Bool)

(assert (=> b!7320414 (= e!4382905 (not (exists!4652 s2!405 lambda!453147)))))

(declare-fun empty!3267 () A!1029)

(declare-fun flatMapPost!137 ((Set A!1029) Int B!3731) A!1029)

(assert (=> b!7320414 (= (flatMapPost!137 s2!405 f!643 b!25336) empty!3267)))

(assert (=> b!7320414 true))

(declare-fun tp_is_empty!47949 () Bool)

(assert (=> b!7320414 tp_is_empty!47949))

(declare-fun setNonEmpty!55449 () Bool)

(declare-fun tp!2079103 () Bool)

(assert (=> setNonEmpty!55449 (= setRes!55449 (and tp!2079103 tp_is_empty!47949))))

(declare-fun setElem!55449 () A!1029)

(declare-fun setRest!55450 () (Set A!1029))

(assert (=> setNonEmpty!55449 (= s1!434 (set.union (set.insert setElem!55449 (as set.empty (Set A!1029))) setRest!55450))))

(declare-fun setNonEmpty!55450 () Bool)

(declare-fun tp!2079101 () Bool)

(assert (=> setNonEmpty!55450 (= setRes!55450 (and tp!2079101 tp_is_empty!47949))))

(declare-fun setElem!55450 () A!1029)

(declare-fun setRest!55449 () (Set A!1029))

(assert (=> setNonEmpty!55450 (= s2!405 (set.union (set.insert setElem!55450 (as set.empty (Set A!1029))) setRest!55449))))

(declare-fun b!7320415 () Bool)

(declare-fun res!2958579 () Bool)

(assert (=> b!7320415 (=> (not res!2958579) (not e!4382905))))

(assert (=> b!7320415 (= res!2958579 (set.member b!25336 (flatMap!3134 s2!405 f!643)))))

(declare-fun setIsEmpty!55450 () Bool)

(assert (=> setIsEmpty!55450 setRes!55450))

(assert (= (and start!714092 res!2958578) b!7320415))

(assert (= (and b!7320415 res!2958579) b!7320414))

(assert (= (and start!714092 condSetEmpty!55449) setIsEmpty!55449))

(assert (= (and start!714092 (not condSetEmpty!55449)) setNonEmpty!55449))

(assert (= (and start!714092 condSetEmpty!55450) setIsEmpty!55450))

(assert (= (and start!714092 (not condSetEmpty!55450)) setNonEmpty!55450))

(declare-fun m!7985498 () Bool)

(assert (=> start!714092 m!7985498))

(declare-fun m!7985500 () Bool)

(assert (=> start!714092 m!7985500))

(declare-fun m!7985502 () Bool)

(assert (=> b!7320414 m!7985502))

(declare-fun m!7985504 () Bool)

(assert (=> b!7320414 m!7985504))

(declare-fun m!7985506 () Bool)

(assert (=> b!7320415 m!7985506))

(declare-fun m!7985508 () Bool)

(assert (=> b!7320415 m!7985508))

(push 1)

(assert (not setNonEmpty!55449))

(assert tp_is_empty!47949)

(assert (not setNonEmpty!55450))

(assert b_and!351627)

(assert (not start!714092))

(assert tp_is_empty!47951)

(assert (not b!7320414))

(assert (not b_next!134973))

(assert (not b!7320415))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351627)

(assert (not b_next!134973))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273303 () Bool)

(declare-fun lt!2603894 () Bool)

(declare-datatypes ((List!71411 0))(
  ( (Nil!71287) (Cons!71287 (h!77735 A!1029) (t!385686 List!71411)) )
))
(declare-fun exists!4654 (List!71411 Int) Bool)

(declare-fun toList!11698 ((Set A!1029)) List!71411)

(assert (=> d!2273303 (= lt!2603894 (exists!4654 (toList!11698 s2!405) lambda!453147))))

(declare-fun choose!56878 ((Set A!1029) Int) Bool)

(assert (=> d!2273303 (= lt!2603894 (choose!56878 s2!405 lambda!453147))))

(assert (=> d!2273303 (= (exists!4652 s2!405 lambda!453147) lt!2603894)))

(declare-fun bs!1915843 () Bool)

(assert (= bs!1915843 d!2273303))

(declare-fun m!7985522 () Bool)

(assert (=> bs!1915843 m!7985522))

(assert (=> bs!1915843 m!7985522))

(declare-fun m!7985524 () Bool)

(assert (=> bs!1915843 m!7985524))

(declare-fun m!7985526 () Bool)

(assert (=> bs!1915843 m!7985526))

(assert (=> b!7320414 d!2273303))

(declare-fun bs!1915844 () Bool)

(declare-fun d!2273305 () Bool)

(assert (= bs!1915844 (and d!2273305 b!7320414)))

(declare-fun lambda!453153 () Int)

(assert (=> bs!1915844 (= lambda!453153 lambda!453147)))

(assert (=> d!2273305 true))

(assert (=> d!2273305 true))

(assert (=> d!2273305 (< (dynLambda!29256 order!29253 f!643) (dynLambda!29257 order!29255 lambda!453153))))

(assert (=> d!2273305 (= (set.member b!25336 (flatMap!3134 s2!405 f!643)) (exists!4652 s2!405 lambda!453153))))

(declare-fun lt!2603897 () A!1029)

(declare-fun choose!56879 ((Set A!1029) Int B!3731) A!1029)

(assert (=> d!2273305 (= lt!2603897 (choose!56879 s2!405 f!643 b!25336))))

(assert (=> d!2273305 (= (flatMapPost!137 s2!405 f!643 b!25336) lt!2603897)))

(declare-fun bs!1915845 () Bool)

(assert (= bs!1915845 d!2273305))

(assert (=> bs!1915845 m!7985506))

(assert (=> bs!1915845 m!7985508))

(declare-fun m!7985528 () Bool)

(assert (=> bs!1915845 m!7985528))

(declare-fun m!7985530 () Bool)

(assert (=> bs!1915845 m!7985530))

(assert (=> b!7320414 d!2273305))

(declare-fun d!2273307 () Bool)

(declare-fun choose!56880 ((Set A!1029) Int) (Set B!3731))

(assert (=> d!2273307 (= (flatMap!3134 s1!434 f!643) (choose!56880 s1!434 f!643))))

(declare-fun bs!1915846 () Bool)

(assert (= bs!1915846 d!2273307))

(declare-fun m!7985532 () Bool)

(assert (=> bs!1915846 m!7985532))

(assert (=> start!714092 d!2273307))

(declare-fun d!2273309 () Bool)

(assert (=> d!2273309 (= (flatMap!3134 s2!405 f!643) (choose!56880 s2!405 f!643))))

(declare-fun bs!1915847 () Bool)

(assert (= bs!1915847 d!2273309))

(declare-fun m!7985534 () Bool)

(assert (=> bs!1915847 m!7985534))

(assert (=> b!7320415 d!2273309))

(declare-fun condSetEmpty!55459 () Bool)

(assert (=> setNonEmpty!55449 (= condSetEmpty!55459 (= setRest!55450 (as set.empty (Set A!1029))))))

(declare-fun setRes!55459 () Bool)

(assert (=> setNonEmpty!55449 (= tp!2079103 setRes!55459)))

(declare-fun setIsEmpty!55459 () Bool)

(assert (=> setIsEmpty!55459 setRes!55459))

(declare-fun setNonEmpty!55459 () Bool)

(declare-fun tp!2079115 () Bool)

(assert (=> setNonEmpty!55459 (= setRes!55459 (and tp!2079115 tp_is_empty!47949))))

(declare-fun setElem!55459 () A!1029)

(declare-fun setRest!55459 () (Set A!1029))

(assert (=> setNonEmpty!55459 (= setRest!55450 (set.union (set.insert setElem!55459 (as set.empty (Set A!1029))) setRest!55459))))

(assert (= (and setNonEmpty!55449 condSetEmpty!55459) setIsEmpty!55459))

(assert (= (and setNonEmpty!55449 (not condSetEmpty!55459)) setNonEmpty!55459))

(declare-fun condSetEmpty!55460 () Bool)

(assert (=> setNonEmpty!55450 (= condSetEmpty!55460 (= setRest!55449 (as set.empty (Set A!1029))))))

(declare-fun setRes!55460 () Bool)

(assert (=> setNonEmpty!55450 (= tp!2079101 setRes!55460)))

(declare-fun setIsEmpty!55460 () Bool)

(assert (=> setIsEmpty!55460 setRes!55460))

(declare-fun setNonEmpty!55460 () Bool)

(declare-fun tp!2079116 () Bool)

(assert (=> setNonEmpty!55460 (= setRes!55460 (and tp!2079116 tp_is_empty!47949))))

(declare-fun setElem!55460 () A!1029)

(declare-fun setRest!55460 () (Set A!1029))

(assert (=> setNonEmpty!55460 (= setRest!55449 (set.union (set.insert setElem!55460 (as set.empty (Set A!1029))) setRest!55460))))

(assert (= (and setNonEmpty!55450 condSetEmpty!55460) setIsEmpty!55460))

(assert (= (and setNonEmpty!55450 (not condSetEmpty!55460)) setNonEmpty!55460))

(push 1)

(assert (not setNonEmpty!55459))

(assert (not d!2273309))

(assert tp_is_empty!47949)

(assert (not b_next!134973))

(assert b_and!351627)

(assert (not d!2273305))

(assert (not d!2273303))

(assert (not setNonEmpty!55460))

(assert (not d!2273307))

(assert tp_is_empty!47951)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351627)

(assert (not b_next!134973))

(check-sat)

(pop 1)

