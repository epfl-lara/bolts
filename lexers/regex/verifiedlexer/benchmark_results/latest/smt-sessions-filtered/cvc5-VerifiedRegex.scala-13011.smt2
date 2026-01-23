; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714204 () Bool)

(assert start!714204)

(declare-fun b_free!134219 () Bool)

(declare-fun b_next!135009 () Bool)

(assert (=> start!714204 (= b_free!134219 (not b_next!135009))))

(declare-fun tp!2079321 () Bool)

(declare-fun b_and!351697 () Bool)

(assert (=> start!714204 (= tp!2079321 b_and!351697)))

(declare-fun b!7320746 () Bool)

(assert (=> b!7320746 true))

(assert (=> b!7320746 true))

(declare-fun lambda!453279 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29317 () Int)

(declare-fun order!29319 () Int)

(declare-fun dynLambda!29304 (Int Int) Int)

(declare-fun dynLambda!29305 (Int Int) Int)

(assert (=> b!7320746 (< (dynLambda!29304 order!29317 f!643) (dynLambda!29305 order!29319 lambda!453279))))

(declare-fun setNonEmpty!55615 () Bool)

(declare-fun setRes!55615 () Bool)

(declare-fun tp!2079323 () Bool)

(declare-fun tp_is_empty!48021 () Bool)

(assert (=> setNonEmpty!55615 (= setRes!55615 (and tp!2079323 tp_is_empty!48021))))

(declare-datatypes ((A!1065 0))(
  ( (A!1066 (val!29385 Int)) )
))
(declare-fun s2!405 () (Set A!1065))

(declare-fun setElem!55616 () A!1065)

(declare-fun setRest!55615 () (Set A!1065))

(assert (=> setNonEmpty!55615 (= s2!405 (set.union (set.insert setElem!55616 (as set.empty (Set A!1065))) setRest!55615))))

(declare-fun e!4383117 () Bool)

(declare-fun e!4383119 () Bool)

(assert (=> b!7320746 (= e!4383117 (not e!4383119))))

(declare-fun res!2958807 () Bool)

(assert (=> b!7320746 (=> res!2958807 e!4383119)))

(declare-fun s1!434 () (Set A!1065))

(declare-fun exists!4676 ((Set A!1065) Int) Bool)

(assert (=> b!7320746 (= res!2958807 (exists!4676 s1!434 lambda!453279))))

(declare-fun e!4383120 () Bool)

(assert (=> b!7320746 e!4383120))

(declare-fun res!2958805 () Bool)

(assert (=> b!7320746 (=> (not res!2958805) (not e!4383120))))

(declare-fun lt!2604144 () A!1065)

(declare-datatypes ((B!3767 0))(
  ( (B!3768 (val!29386 Int)) )
))
(declare-fun b!25336 () B!3767)

(declare-fun flatMapPost!153 ((Set A!1065) Int B!3767) A!1065)

(assert (=> b!7320746 (= res!2958805 (= (flatMapPost!153 s1!434 f!643 b!25336) lt!2604144))))

(declare-fun empty!3331 () A!1065)

(assert (=> b!7320746 (= lt!2604144 empty!3331)))

(assert (=> b!7320746 true))

(assert (=> b!7320746 tp_is_empty!48021))

(declare-fun b!7320747 () Bool)

(declare-fun e!4383118 () Bool)

(assert (=> b!7320747 (= e!4383118 e!4383117)))

(declare-fun res!2958804 () Bool)

(assert (=> b!7320747 (=> (not res!2958804) (not e!4383117))))

(declare-fun lt!2604146 () (Set B!3767))

(declare-fun lt!2604145 () (Set B!3767))

(assert (=> b!7320747 (= res!2958804 (and (not (set.member b!25336 lt!2604146)) (not (set.member b!25336 (set.union lt!2604145 lt!2604146)))))))

(declare-fun flatMap!3152 ((Set A!1065) Int) (Set B!3767))

(assert (=> b!7320747 (= lt!2604146 (flatMap!3152 s2!405 f!643))))

(declare-fun setIsEmpty!55615 () Bool)

(declare-fun setRes!55616 () Bool)

(assert (=> setIsEmpty!55615 setRes!55616))

(declare-fun b!7320748 () Bool)

(assert (=> b!7320748 (= e!4383120 (= (flatMapPost!153 s2!405 f!643 b!25336) lt!2604144))))

(declare-fun b!7320749 () Bool)

(assert (=> b!7320749 (= e!4383119 (not (exists!4676 s2!405 lambda!453279)))))

(declare-fun res!2958806 () Bool)

(assert (=> start!714204 (=> (not res!2958806) (not e!4383118))))

(assert (=> start!714204 (= res!2958806 (not (set.member b!25336 lt!2604145)))))

(assert (=> start!714204 (= lt!2604145 (flatMap!3152 s1!434 f!643))))

(assert (=> start!714204 e!4383118))

(declare-fun condSetEmpty!55615 () Bool)

(assert (=> start!714204 (= condSetEmpty!55615 (= s2!405 (as set.empty (Set A!1065))))))

(assert (=> start!714204 setRes!55615))

(declare-fun tp_is_empty!48023 () Bool)

(assert (=> start!714204 tp_is_empty!48023))

(declare-fun condSetEmpty!55616 () Bool)

(assert (=> start!714204 (= condSetEmpty!55616 (= s1!434 (as set.empty (Set A!1065))))))

(assert (=> start!714204 setRes!55616))

(assert (=> start!714204 tp!2079321))

(declare-fun setNonEmpty!55616 () Bool)

(declare-fun tp!2079322 () Bool)

(assert (=> setNonEmpty!55616 (= setRes!55616 (and tp!2079322 tp_is_empty!48021))))

(declare-fun setElem!55615 () A!1065)

(declare-fun setRest!55616 () (Set A!1065))

(assert (=> setNonEmpty!55616 (= s1!434 (set.union (set.insert setElem!55615 (as set.empty (Set A!1065))) setRest!55616))))

(declare-fun setIsEmpty!55616 () Bool)

(assert (=> setIsEmpty!55616 setRes!55615))

(assert (= (and start!714204 res!2958806) b!7320747))

(assert (= (and b!7320747 res!2958804) b!7320746))

(assert (= (and b!7320746 res!2958805) b!7320748))

(assert (= (and b!7320746 (not res!2958807)) b!7320749))

(assert (= (and start!714204 condSetEmpty!55615) setIsEmpty!55616))

(assert (= (and start!714204 (not condSetEmpty!55615)) setNonEmpty!55615))

(assert (= (and start!714204 condSetEmpty!55616) setIsEmpty!55615))

(assert (= (and start!714204 (not condSetEmpty!55616)) setNonEmpty!55616))

(declare-fun m!7986110 () Bool)

(assert (=> b!7320749 m!7986110))

(declare-fun m!7986112 () Bool)

(assert (=> start!714204 m!7986112))

(declare-fun m!7986114 () Bool)

(assert (=> start!714204 m!7986114))

(declare-fun m!7986116 () Bool)

(assert (=> b!7320747 m!7986116))

(declare-fun m!7986118 () Bool)

(assert (=> b!7320747 m!7986118))

(declare-fun m!7986120 () Bool)

(assert (=> b!7320747 m!7986120))

(declare-fun m!7986122 () Bool)

(assert (=> b!7320748 m!7986122))

(declare-fun m!7986124 () Bool)

(assert (=> b!7320746 m!7986124))

(declare-fun m!7986126 () Bool)

(assert (=> b!7320746 m!7986126))

(push 1)

(assert (not setNonEmpty!55615))

(assert (not setNonEmpty!55616))

(assert (not b!7320749))

(assert tp_is_empty!48021)

(assert b_and!351697)

(assert tp_is_empty!48023)

(assert (not start!714204))

(assert (not b!7320746))

(assert (not b!7320748))

(assert (not b_next!135009))

(assert (not b!7320747))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351697)

(assert (not b_next!135009))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1915934 () Bool)

(declare-fun d!2273434 () Bool)

(assert (= bs!1915934 (and d!2273434 b!7320746)))

(declare-fun lambda!453287 () Int)

(assert (=> bs!1915934 (= lambda!453287 lambda!453279)))

(assert (=> d!2273434 true))

(assert (=> d!2273434 true))

(assert (=> d!2273434 (< (dynLambda!29304 order!29317 f!643) (dynLambda!29305 order!29319 lambda!453287))))

(assert (=> d!2273434 (= (set.member b!25336 (flatMap!3152 s2!405 f!643)) (exists!4676 s2!405 lambda!453287))))

(declare-fun lt!2604158 () A!1065)

(declare-fun choose!56905 ((Set A!1065) Int B!3767) A!1065)

(assert (=> d!2273434 (= lt!2604158 (choose!56905 s2!405 f!643 b!25336))))

(assert (=> d!2273434 (= (flatMapPost!153 s2!405 f!643 b!25336) lt!2604158)))

(declare-fun bs!1915935 () Bool)

(assert (= bs!1915935 d!2273434))

(assert (=> bs!1915935 m!7986120))

(declare-fun m!7986146 () Bool)

(assert (=> bs!1915935 m!7986146))

(declare-fun m!7986148 () Bool)

(assert (=> bs!1915935 m!7986148))

(declare-fun m!7986150 () Bool)

(assert (=> bs!1915935 m!7986150))

(assert (=> b!7320748 d!2273434))

(declare-fun d!2273436 () Bool)

(declare-fun choose!56906 ((Set A!1065) Int) (Set B!3767))

(assert (=> d!2273436 (= (flatMap!3152 s2!405 f!643) (choose!56906 s2!405 f!643))))

(declare-fun bs!1915936 () Bool)

(assert (= bs!1915936 d!2273436))

(declare-fun m!7986152 () Bool)

(assert (=> bs!1915936 m!7986152))

(assert (=> b!7320747 d!2273436))

(declare-fun d!2273438 () Bool)

(assert (=> d!2273438 (= (flatMap!3152 s1!434 f!643) (choose!56906 s1!434 f!643))))

(declare-fun bs!1915937 () Bool)

(assert (= bs!1915937 d!2273438))

(declare-fun m!7986154 () Bool)

(assert (=> bs!1915937 m!7986154))

(assert (=> start!714204 d!2273438))

(declare-fun d!2273440 () Bool)

(declare-fun lt!2604161 () Bool)

(declare-datatypes ((List!71420 0))(
  ( (Nil!71296) (Cons!71296 (h!77744 A!1065) (t!385729 List!71420)) )
))
(declare-fun exists!4678 (List!71420 Int) Bool)

(declare-fun toList!11707 ((Set A!1065)) List!71420)

(assert (=> d!2273440 (= lt!2604161 (exists!4678 (toList!11707 s1!434) lambda!453279))))

(declare-fun choose!56907 ((Set A!1065) Int) Bool)

(assert (=> d!2273440 (= lt!2604161 (choose!56907 s1!434 lambda!453279))))

(assert (=> d!2273440 (= (exists!4676 s1!434 lambda!453279) lt!2604161)))

(declare-fun bs!1915938 () Bool)

(assert (= bs!1915938 d!2273440))

(declare-fun m!7986156 () Bool)

(assert (=> bs!1915938 m!7986156))

(assert (=> bs!1915938 m!7986156))

(declare-fun m!7986158 () Bool)

(assert (=> bs!1915938 m!7986158))

(declare-fun m!7986160 () Bool)

(assert (=> bs!1915938 m!7986160))

(assert (=> b!7320746 d!2273440))

(declare-fun bs!1915939 () Bool)

(declare-fun d!2273442 () Bool)

(assert (= bs!1915939 (and d!2273442 b!7320746)))

(declare-fun lambda!453288 () Int)

(assert (=> bs!1915939 (= lambda!453288 lambda!453279)))

(declare-fun bs!1915940 () Bool)

(assert (= bs!1915940 (and d!2273442 d!2273434)))

(assert (=> bs!1915940 (= lambda!453288 lambda!453287)))

(assert (=> d!2273442 true))

(assert (=> d!2273442 true))

(assert (=> d!2273442 (< (dynLambda!29304 order!29317 f!643) (dynLambda!29305 order!29319 lambda!453288))))

(assert (=> d!2273442 (= (set.member b!25336 (flatMap!3152 s1!434 f!643)) (exists!4676 s1!434 lambda!453288))))

(declare-fun lt!2604162 () A!1065)

(assert (=> d!2273442 (= lt!2604162 (choose!56905 s1!434 f!643 b!25336))))

(assert (=> d!2273442 (= (flatMapPost!153 s1!434 f!643 b!25336) lt!2604162)))

(declare-fun bs!1915941 () Bool)

(assert (= bs!1915941 d!2273442))

(assert (=> bs!1915941 m!7986114))

(declare-fun m!7986162 () Bool)

(assert (=> bs!1915941 m!7986162))

(declare-fun m!7986164 () Bool)

(assert (=> bs!1915941 m!7986164))

(declare-fun m!7986166 () Bool)

(assert (=> bs!1915941 m!7986166))

(assert (=> b!7320746 d!2273442))

(declare-fun d!2273444 () Bool)

(declare-fun lt!2604163 () Bool)

(assert (=> d!2273444 (= lt!2604163 (exists!4678 (toList!11707 s2!405) lambda!453279))))

(assert (=> d!2273444 (= lt!2604163 (choose!56907 s2!405 lambda!453279))))

(assert (=> d!2273444 (= (exists!4676 s2!405 lambda!453279) lt!2604163)))

(declare-fun bs!1915942 () Bool)

(assert (= bs!1915942 d!2273444))

(declare-fun m!7986168 () Bool)

(assert (=> bs!1915942 m!7986168))

(assert (=> bs!1915942 m!7986168))

(declare-fun m!7986170 () Bool)

(assert (=> bs!1915942 m!7986170))

(declare-fun m!7986172 () Bool)

(assert (=> bs!1915942 m!7986172))

(assert (=> b!7320749 d!2273444))

(declare-fun condSetEmpty!55625 () Bool)

(assert (=> setNonEmpty!55616 (= condSetEmpty!55625 (= setRest!55616 (as set.empty (Set A!1065))))))

(declare-fun setRes!55625 () Bool)

(assert (=> setNonEmpty!55616 (= tp!2079322 setRes!55625)))

(declare-fun setIsEmpty!55625 () Bool)

(assert (=> setIsEmpty!55625 setRes!55625))

(declare-fun setNonEmpty!55625 () Bool)

(declare-fun tp!2079335 () Bool)

(assert (=> setNonEmpty!55625 (= setRes!55625 (and tp!2079335 tp_is_empty!48021))))

(declare-fun setElem!55625 () A!1065)

(declare-fun setRest!55625 () (Set A!1065))

(assert (=> setNonEmpty!55625 (= setRest!55616 (set.union (set.insert setElem!55625 (as set.empty (Set A!1065))) setRest!55625))))

(assert (= (and setNonEmpty!55616 condSetEmpty!55625) setIsEmpty!55625))

(assert (= (and setNonEmpty!55616 (not condSetEmpty!55625)) setNonEmpty!55625))

(declare-fun condSetEmpty!55626 () Bool)

(assert (=> setNonEmpty!55615 (= condSetEmpty!55626 (= setRest!55615 (as set.empty (Set A!1065))))))

(declare-fun setRes!55626 () Bool)

(assert (=> setNonEmpty!55615 (= tp!2079323 setRes!55626)))

(declare-fun setIsEmpty!55626 () Bool)

(assert (=> setIsEmpty!55626 setRes!55626))

(declare-fun setNonEmpty!55626 () Bool)

(declare-fun tp!2079336 () Bool)

(assert (=> setNonEmpty!55626 (= setRes!55626 (and tp!2079336 tp_is_empty!48021))))

(declare-fun setElem!55626 () A!1065)

(declare-fun setRest!55626 () (Set A!1065))

(assert (=> setNonEmpty!55626 (= setRest!55615 (set.union (set.insert setElem!55626 (as set.empty (Set A!1065))) setRest!55626))))

(assert (= (and setNonEmpty!55615 condSetEmpty!55626) setIsEmpty!55626))

(assert (= (and setNonEmpty!55615 (not condSetEmpty!55626)) setNonEmpty!55626))

(push 1)

(assert (not d!2273442))

(assert (not setNonEmpty!55626))

(assert b_and!351697)

(assert (not d!2273440))

(assert (not d!2273438))

(assert (not d!2273444))

(assert tp_is_empty!48023)

(assert (not d!2273436))

(assert (not d!2273434))

(assert (not b_next!135009))

(assert tp_is_empty!48021)

(assert (not setNonEmpty!55625))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351697)

(assert (not b_next!135009))

(check-sat)

(pop 1)

