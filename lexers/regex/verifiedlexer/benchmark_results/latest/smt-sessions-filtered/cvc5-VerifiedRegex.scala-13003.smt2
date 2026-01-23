; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714108 () Bool)

(assert start!714108)

(declare-fun b_free!134187 () Bool)

(declare-fun b_next!134977 () Bool)

(assert (=> start!714108 (= b_free!134187 (not b_next!134977))))

(declare-fun tp!2079128 () Bool)

(declare-fun b_and!351631 () Bool)

(assert (=> start!714108 (= tp!2079128 b_and!351631)))

(declare-fun b!7320442 () Bool)

(assert (=> b!7320442 true))

(assert (=> b!7320442 true))

(declare-fun f!643 () Int)

(declare-fun order!29263 () Int)

(declare-fun lambda!453161 () Int)

(declare-fun order!29261 () Int)

(declare-fun dynLambda!29260 (Int Int) Int)

(declare-fun dynLambda!29261 (Int Int) Int)

(assert (=> b!7320442 (< (dynLambda!29260 order!29261 f!643) (dynLambda!29261 order!29263 lambda!453161))))

(declare-fun setNonEmpty!55469 () Bool)

(declare-fun setRes!55470 () Bool)

(declare-fun tp!2079127 () Bool)

(declare-fun tp_is_empty!47957 () Bool)

(assert (=> setNonEmpty!55469 (= setRes!55470 (and tp!2079127 tp_is_empty!47957))))

(declare-datatypes ((A!1033 0))(
  ( (A!1034 (val!29353 Int)) )
))
(declare-fun s1!434 () (Set A!1033))

(declare-fun setElem!55470 () A!1033)

(declare-fun setRest!55470 () (Set A!1033))

(assert (=> setNonEmpty!55469 (= s1!434 (set.union (set.insert setElem!55470 (as set.empty (Set A!1033))) setRest!55470))))

(declare-fun e!4382914 () Bool)

(declare-fun e!4382913 () Bool)

(assert (=> b!7320442 (= e!4382914 (not e!4382913))))

(declare-fun res!2958592 () Bool)

(assert (=> b!7320442 (=> res!2958592 e!4382913)))

(declare-fun s2!405 () (Set A!1033))

(declare-fun exists!4656 ((Set A!1033) Int) Bool)

(assert (=> b!7320442 (= res!2958592 (not (exists!4656 s2!405 lambda!453161)))))

(declare-fun empty!3275 () A!1033)

(declare-datatypes ((B!3735 0))(
  ( (B!3736 (val!29354 Int)) )
))
(declare-fun b!25336 () B!3735)

(declare-fun flatMapPost!139 ((Set A!1033) Int B!3735) A!1033)

(assert (=> b!7320442 (= (flatMapPost!139 s2!405 f!643 b!25336) empty!3275)))

(assert (=> b!7320442 true))

(assert (=> b!7320442 tp_is_empty!47957))

(declare-fun b!7320443 () Bool)

(declare-fun dynLambda!29262 (Int A!1033) (Set B!3735))

(declare-fun getWitness!2380 ((Set A!1033) Int) A!1033)

(assert (=> b!7320443 (= e!4382913 (set.member b!25336 (dynLambda!29262 f!643 (getWitness!2380 s2!405 lambda!453161))))))

(declare-fun setIsEmpty!55470 () Bool)

(assert (=> setIsEmpty!55470 setRes!55470))

(declare-fun b!7320444 () Bool)

(declare-fun res!2958594 () Bool)

(assert (=> b!7320444 (=> (not res!2958594) (not e!4382914))))

(declare-fun flatMap!3136 ((Set A!1033) Int) (Set B!3735))

(assert (=> b!7320444 (= res!2958594 (set.member b!25336 (flatMap!3136 s2!405 f!643)))))

(declare-fun setNonEmpty!55470 () Bool)

(declare-fun setRes!55469 () Bool)

(declare-fun tp!2079129 () Bool)

(assert (=> setNonEmpty!55470 (= setRes!55469 (and tp!2079129 tp_is_empty!47957))))

(declare-fun setElem!55469 () A!1033)

(declare-fun setRest!55469 () (Set A!1033))

(assert (=> setNonEmpty!55470 (= s2!405 (set.union (set.insert setElem!55469 (as set.empty (Set A!1033))) setRest!55469))))

(declare-fun res!2958593 () Bool)

(assert (=> start!714108 (=> (not res!2958593) (not e!4382914))))

(assert (=> start!714108 (= res!2958593 (not (set.member b!25336 (flatMap!3136 s1!434 f!643))))))

(assert (=> start!714108 e!4382914))

(declare-fun tp_is_empty!47959 () Bool)

(assert (=> start!714108 tp_is_empty!47959))

(declare-fun condSetEmpty!55470 () Bool)

(assert (=> start!714108 (= condSetEmpty!55470 (= s1!434 (as set.empty (Set A!1033))))))

(assert (=> start!714108 setRes!55470))

(assert (=> start!714108 tp!2079128))

(declare-fun condSetEmpty!55469 () Bool)

(assert (=> start!714108 (= condSetEmpty!55469 (= s2!405 (as set.empty (Set A!1033))))))

(assert (=> start!714108 setRes!55469))

(declare-fun setIsEmpty!55469 () Bool)

(assert (=> setIsEmpty!55469 setRes!55469))

(assert (= (and start!714108 res!2958593) b!7320444))

(assert (= (and b!7320444 res!2958594) b!7320442))

(assert (= (and b!7320442 (not res!2958592)) b!7320443))

(assert (= (and start!714108 condSetEmpty!55470) setIsEmpty!55470))

(assert (= (and start!714108 (not condSetEmpty!55470)) setNonEmpty!55469))

(assert (= (and start!714108 condSetEmpty!55469) setIsEmpty!55469))

(assert (= (and start!714108 (not condSetEmpty!55469)) setNonEmpty!55470))

(declare-fun b_lambda!282887 () Bool)

(assert (=> (not b_lambda!282887) (not b!7320443)))

(declare-fun t!385689 () Bool)

(declare-fun tb!262287 () Bool)

(assert (=> (and start!714108 (= f!643 f!643) t!385689) tb!262287))

(assert (=> b!7320443 t!385689))

(declare-fun result!353422 () Bool)

(declare-fun b_and!351633 () Bool)

(assert (= b_and!351631 (and (=> t!385689 result!353422) b_and!351633)))

(declare-fun m!7985550 () Bool)

(assert (=> b!7320442 m!7985550))

(declare-fun m!7985552 () Bool)

(assert (=> b!7320442 m!7985552))

(declare-fun m!7985554 () Bool)

(assert (=> b!7320443 m!7985554))

(assert (=> b!7320443 m!7985554))

(declare-fun m!7985556 () Bool)

(assert (=> b!7320443 m!7985556))

(declare-fun m!7985558 () Bool)

(assert (=> b!7320443 m!7985558))

(declare-fun m!7985560 () Bool)

(assert (=> b!7320444 m!7985560))

(declare-fun m!7985562 () Bool)

(assert (=> b!7320444 m!7985562))

(declare-fun m!7985564 () Bool)

(assert (=> start!714108 m!7985564))

(declare-fun m!7985566 () Bool)

(assert (=> start!714108 m!7985566))

(push 1)

(assert (not setNonEmpty!55470))

(assert (not tb!262287))

(assert tp_is_empty!47959)

(assert (not b!7320443))

(assert (not b_next!134977))

(assert (not b!7320442))

(assert tp_is_empty!47957)

(assert (not b_lambda!282887))

(assert (not b!7320444))

(assert (not start!714108))

(assert b_and!351633)

(assert (not setNonEmpty!55469))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351633)

(assert (not b_next!134977))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282891 () Bool)

(assert (= b_lambda!282887 (or (and start!714108 b_free!134187) b_lambda!282891)))

(push 1)

(assert (not setNonEmpty!55470))

(assert (not tb!262287))

(assert tp_is_empty!47959)

(assert (not b!7320443))

(assert (not b_next!134977))

(assert (not b!7320442))

(assert tp_is_empty!47957)

(assert (not b_lambda!282891))

(assert (not b!7320444))

(assert (not start!714108))

(assert b_and!351633)

(assert (not setNonEmpty!55469))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351633)

(assert (not b_next!134977))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273320 () Bool)

(declare-fun choose!56884 ((Set A!1033) Int) (Set B!3735))

(assert (=> d!2273320 (= (flatMap!3136 s2!405 f!643) (choose!56884 s2!405 f!643))))

(declare-fun bs!1915855 () Bool)

(assert (= bs!1915855 d!2273320))

(declare-fun m!7985586 () Bool)

(assert (=> bs!1915855 m!7985586))

(assert (=> b!7320444 d!2273320))

(declare-fun d!2273322 () Bool)

(assert (=> d!2273322 (= (flatMap!3136 s1!434 f!643) (choose!56884 s1!434 f!643))))

(declare-fun bs!1915856 () Bool)

(assert (= bs!1915856 d!2273322))

(declare-fun m!7985588 () Bool)

(assert (=> bs!1915856 m!7985588))

(assert (=> start!714108 d!2273322))

(declare-fun d!2273324 () Bool)

(declare-fun lt!2603906 () Bool)

(declare-datatypes ((List!71413 0))(
  ( (Nil!71289) (Cons!71289 (h!77737 A!1033) (t!385694 List!71413)) )
))
(declare-fun exists!4658 (List!71413 Int) Bool)

(declare-fun toList!11700 ((Set A!1033)) List!71413)

(assert (=> d!2273324 (= lt!2603906 (exists!4658 (toList!11700 s2!405) lambda!453161))))

(declare-fun choose!56885 ((Set A!1033) Int) Bool)

(assert (=> d!2273324 (= lt!2603906 (choose!56885 s2!405 lambda!453161))))

(assert (=> d!2273324 (= (exists!4656 s2!405 lambda!453161) lt!2603906)))

(declare-fun bs!1915857 () Bool)

(assert (= bs!1915857 d!2273324))

(declare-fun m!7985590 () Bool)

(assert (=> bs!1915857 m!7985590))

(assert (=> bs!1915857 m!7985590))

(declare-fun m!7985592 () Bool)

(assert (=> bs!1915857 m!7985592))

(declare-fun m!7985594 () Bool)

(assert (=> bs!1915857 m!7985594))

(assert (=> b!7320442 d!2273324))

(declare-fun bs!1915858 () Bool)

(declare-fun d!2273326 () Bool)

(assert (= bs!1915858 (and d!2273326 b!7320442)))

(declare-fun lambda!453169 () Int)

(assert (=> bs!1915858 (= lambda!453169 lambda!453161)))

(assert (=> d!2273326 true))

(assert (=> d!2273326 true))

(assert (=> d!2273326 (< (dynLambda!29260 order!29261 f!643) (dynLambda!29261 order!29263 lambda!453169))))

(assert (=> d!2273326 (= (set.member b!25336 (flatMap!3136 s2!405 f!643)) (exists!4656 s2!405 lambda!453169))))

(declare-fun lt!2603909 () A!1033)

(declare-fun choose!56886 ((Set A!1033) Int B!3735) A!1033)

(assert (=> d!2273326 (= lt!2603909 (choose!56886 s2!405 f!643 b!25336))))

(assert (=> d!2273326 (= (flatMapPost!139 s2!405 f!643 b!25336) lt!2603909)))

(declare-fun bs!1915859 () Bool)

(assert (= bs!1915859 d!2273326))

(assert (=> bs!1915859 m!7985560))

(assert (=> bs!1915859 m!7985562))

(declare-fun m!7985596 () Bool)

(assert (=> bs!1915859 m!7985596))

(declare-fun m!7985598 () Bool)

(assert (=> bs!1915859 m!7985598))

(assert (=> b!7320442 d!2273326))

(declare-fun d!2273328 () Bool)

(declare-fun e!4382923 () Bool)

(assert (=> d!2273328 e!4382923))

(declare-fun res!2958606 () Bool)

(assert (=> d!2273328 (=> (not res!2958606) (not e!4382923))))

(declare-fun lt!2603912 () A!1033)

(declare-fun dynLambda!29266 (Int A!1033) Bool)

(assert (=> d!2273328 (= res!2958606 (dynLambda!29266 lambda!453161 lt!2603912))))

(declare-fun getWitness!2382 (List!71413 Int) A!1033)

(assert (=> d!2273328 (= lt!2603912 (getWitness!2382 (toList!11700 s2!405) lambda!453161))))

(assert (=> d!2273328 (exists!4656 s2!405 lambda!453161)))

(assert (=> d!2273328 (= (getWitness!2380 s2!405 lambda!453161) lt!2603912)))

(declare-fun b!7320465 () Bool)

(assert (=> b!7320465 (= e!4382923 (set.member lt!2603912 s2!405))))

(assert (= (and d!2273328 res!2958606) b!7320465))

(declare-fun b_lambda!282895 () Bool)

(assert (=> (not b_lambda!282895) (not d!2273328)))

(declare-fun m!7985600 () Bool)

(assert (=> d!2273328 m!7985600))

(assert (=> d!2273328 m!7985590))

(assert (=> d!2273328 m!7985590))

(declare-fun m!7985602 () Bool)

(assert (=> d!2273328 m!7985602))

(assert (=> d!2273328 m!7985550))

(declare-fun m!7985604 () Bool)

(assert (=> b!7320465 m!7985604))

(assert (=> b!7320443 d!2273328))

(declare-fun condSetEmpty!55479 () Bool)

(assert (=> tb!262287 (= condSetEmpty!55479 (= (dynLambda!29262 f!643 (getWitness!2380 s2!405 lambda!453161)) (as set.empty (Set B!3735))))))

(declare-fun setRes!55479 () Bool)

(assert (=> tb!262287 (= result!353422 setRes!55479)))

(declare-fun setIsEmpty!55479 () Bool)

(assert (=> setIsEmpty!55479 setRes!55479))

(declare-fun setNonEmpty!55479 () Bool)

(declare-fun tp!2079141 () Bool)

(assert (=> setNonEmpty!55479 (= setRes!55479 (and tp!2079141 tp_is_empty!47959))))

(declare-fun setElem!55479 () B!3735)

(declare-fun setRest!55479 () (Set B!3735))

(assert (=> setNonEmpty!55479 (= (dynLambda!29262 f!643 (getWitness!2380 s2!405 lambda!453161)) (set.union (set.insert setElem!55479 (as set.empty (Set B!3735))) setRest!55479))))

(assert (= (and tb!262287 condSetEmpty!55479) setIsEmpty!55479))

(assert (= (and tb!262287 (not condSetEmpty!55479)) setNonEmpty!55479))

(declare-fun condSetEmpty!55482 () Bool)

(assert (=> setNonEmpty!55469 (= condSetEmpty!55482 (= setRest!55470 (as set.empty (Set A!1033))))))

(declare-fun setRes!55482 () Bool)

(assert (=> setNonEmpty!55469 (= tp!2079127 setRes!55482)))

(declare-fun setIsEmpty!55482 () Bool)

(assert (=> setIsEmpty!55482 setRes!55482))

(declare-fun setNonEmpty!55482 () Bool)

(declare-fun tp!2079144 () Bool)

(assert (=> setNonEmpty!55482 (= setRes!55482 (and tp!2079144 tp_is_empty!47957))))

(declare-fun setElem!55482 () A!1033)

(declare-fun setRest!55482 () (Set A!1033))

(assert (=> setNonEmpty!55482 (= setRest!55470 (set.union (set.insert setElem!55482 (as set.empty (Set A!1033))) setRest!55482))))

(assert (= (and setNonEmpty!55469 condSetEmpty!55482) setIsEmpty!55482))

(assert (= (and setNonEmpty!55469 (not condSetEmpty!55482)) setNonEmpty!55482))

(declare-fun condSetEmpty!55483 () Bool)

(assert (=> setNonEmpty!55470 (= condSetEmpty!55483 (= setRest!55469 (as set.empty (Set A!1033))))))

(declare-fun setRes!55483 () Bool)

(assert (=> setNonEmpty!55470 (= tp!2079129 setRes!55483)))

(declare-fun setIsEmpty!55483 () Bool)

(assert (=> setIsEmpty!55483 setRes!55483))

(declare-fun setNonEmpty!55483 () Bool)

(declare-fun tp!2079145 () Bool)

(assert (=> setNonEmpty!55483 (= setRes!55483 (and tp!2079145 tp_is_empty!47957))))

(declare-fun setElem!55483 () A!1033)

(declare-fun setRest!55483 () (Set A!1033))

(assert (=> setNonEmpty!55483 (= setRest!55469 (set.union (set.insert setElem!55483 (as set.empty (Set A!1033))) setRest!55483))))

(assert (= (and setNonEmpty!55470 condSetEmpty!55483) setIsEmpty!55483))

(assert (= (and setNonEmpty!55470 (not condSetEmpty!55483)) setNonEmpty!55483))

(declare-fun b_lambda!282897 () Bool)

(assert (= b_lambda!282895 (or b!7320442 b_lambda!282897)))

(declare-fun bs!1915860 () Bool)

(declare-fun d!2273330 () Bool)

(assert (= bs!1915860 (and d!2273330 b!7320442)))

(assert (=> bs!1915860 (= (dynLambda!29266 lambda!453161 lt!2603912) (set.member b!25336 (dynLambda!29262 f!643 lt!2603912)))))

(declare-fun b_lambda!282899 () Bool)

(assert (=> (not b_lambda!282899) (not bs!1915860)))

(declare-fun t!385693 () Bool)

(declare-fun tb!262291 () Bool)

(assert (=> (and start!714108 (= f!643 f!643) t!385693) tb!262291))

(assert (=> bs!1915860 t!385693))

(declare-fun result!353430 () Bool)

(declare-fun b_and!351639 () Bool)

(assert (= b_and!351633 (and (=> t!385693 result!353430) b_and!351639)))

(declare-fun m!7985606 () Bool)

(assert (=> bs!1915860 m!7985606))

(declare-fun m!7985608 () Bool)

(assert (=> bs!1915860 m!7985608))

(assert (=> d!2273328 d!2273330))

(push 1)

(assert b_and!351639)

(assert (not setNonEmpty!55483))

(assert (not setNonEmpty!55482))

(assert (not b_next!134977))

(assert (not b_lambda!282897))

(assert (not b_lambda!282891))

(assert (not d!2273324))

(assert (not d!2273320))

(assert (not tb!262291))

(assert tp_is_empty!47959)

(assert (not b_lambda!282899))

(assert (not d!2273326))

(assert (not setNonEmpty!55479))

(assert (not d!2273322))

(assert tp_is_empty!47957)

(assert (not d!2273328))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351639)

(assert (not b_next!134977))

(check-sat)

(pop 1)

