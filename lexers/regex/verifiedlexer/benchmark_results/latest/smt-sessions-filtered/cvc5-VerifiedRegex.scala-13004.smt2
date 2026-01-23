; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714128 () Bool)

(assert start!714128)

(declare-fun b_free!134191 () Bool)

(declare-fun b_next!134981 () Bool)

(assert (=> start!714128 (= b_free!134191 (not b_next!134981))))

(declare-fun tp!2079159 () Bool)

(declare-fun b_and!351641 () Bool)

(assert (=> start!714128 (= tp!2079159 b_and!351641)))

(declare-fun b!7320489 () Bool)

(assert (=> b!7320489 true))

(assert (=> b!7320489 true))

(declare-fun order!29269 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29271 () Int)

(declare-fun lambda!453177 () Int)

(declare-fun dynLambda!29267 (Int Int) Int)

(declare-fun dynLambda!29268 (Int Int) Int)

(assert (=> b!7320489 (< (dynLambda!29267 order!29269 f!643) (dynLambda!29268 order!29271 lambda!453177))))

(declare-fun b!7320486 () Bool)

(declare-fun res!2958620 () Bool)

(declare-fun e!4382933 () Bool)

(assert (=> b!7320486 (=> (not res!2958620) (not e!4382933))))

(declare-datatypes ((A!1037 0))(
  ( (A!1038 (val!29357 Int)) )
))
(declare-fun s2!405 () (Set A!1037))

(declare-datatypes ((B!3739 0))(
  ( (B!3740 (val!29358 Int)) )
))
(declare-fun b!25336 () B!3739)

(declare-fun flatMap!3138 ((Set A!1037) Int) (Set B!3739))

(assert (=> b!7320486 (= res!2958620 (set.member b!25336 (flatMap!3138 s2!405 f!643)))))

(declare-fun b!7320487 () Bool)

(declare-fun e!4382934 () Bool)

(declare-fun e!4382935 () Bool)

(assert (=> b!7320487 (= e!4382934 e!4382935)))

(declare-fun res!2958621 () Bool)

(assert (=> b!7320487 (=> res!2958621 e!4382935)))

(declare-fun lt!2603924 () A!1037)

(declare-fun dynLambda!29269 (Int A!1037) (Set B!3739))

(assert (=> b!7320487 (= res!2958621 (not (set.member b!25336 (dynLambda!29269 f!643 lt!2603924))))))

(declare-fun getWitness!2383 ((Set A!1037) Int) A!1037)

(assert (=> b!7320487 (= lt!2603924 (getWitness!2383 s2!405 lambda!453177))))

(declare-fun setNonEmpty!55495 () Bool)

(declare-fun setRes!55496 () Bool)

(declare-fun tp!2079160 () Bool)

(declare-fun tp_is_empty!47965 () Bool)

(assert (=> setNonEmpty!55495 (= setRes!55496 (and tp!2079160 tp_is_empty!47965))))

(declare-fun s1!434 () (Set A!1037))

(declare-fun setElem!55496 () A!1037)

(declare-fun setRest!55496 () (Set A!1037))

(assert (=> setNonEmpty!55495 (= s1!434 (set.union (set.insert setElem!55496 (as set.empty (Set A!1037))) setRest!55496))))

(declare-fun setNonEmpty!55496 () Bool)

(declare-fun setRes!55495 () Bool)

(declare-fun tp!2079161 () Bool)

(assert (=> setNonEmpty!55496 (= setRes!55495 (and tp!2079161 tp_is_empty!47965))))

(declare-fun setElem!55495 () A!1037)

(declare-fun setRest!55495 () (Set A!1037))

(assert (=> setNonEmpty!55496 (= s2!405 (set.union (set.insert setElem!55495 (as set.empty (Set A!1037))) setRest!55495))))

(declare-fun setIsEmpty!55496 () Bool)

(assert (=> setIsEmpty!55496 setRes!55496))

(declare-fun res!2958618 () Bool)

(assert (=> start!714128 (=> (not res!2958618) (not e!4382933))))

(assert (=> start!714128 (= res!2958618 (not (set.member b!25336 (flatMap!3138 s1!434 f!643))))))

(assert (=> start!714128 e!4382933))

(declare-fun tp_is_empty!47967 () Bool)

(assert (=> start!714128 tp_is_empty!47967))

(declare-fun condSetEmpty!55495 () Bool)

(assert (=> start!714128 (= condSetEmpty!55495 (= s1!434 (as set.empty (Set A!1037))))))

(assert (=> start!714128 setRes!55496))

(assert (=> start!714128 tp!2079159))

(declare-fun condSetEmpty!55496 () Bool)

(assert (=> start!714128 (= condSetEmpty!55496 (= s2!405 (as set.empty (Set A!1037))))))

(assert (=> start!714128 setRes!55495))

(declare-fun setIsEmpty!55495 () Bool)

(assert (=> setIsEmpty!55495 setRes!55495))

(declare-fun b!7320488 () Bool)

(assert (=> b!7320488 (= e!4382935 (set.member lt!2603924 (set.union s1!434 s2!405)))))

(assert (=> b!7320489 (= e!4382933 (not e!4382934))))

(declare-fun res!2958619 () Bool)

(assert (=> b!7320489 (=> res!2958619 e!4382934)))

(declare-fun exists!4659 ((Set A!1037) Int) Bool)

(assert (=> b!7320489 (= res!2958619 (not (exists!4659 s2!405 lambda!453177)))))

(declare-fun empty!3283 () A!1037)

(declare-fun flatMapPost!141 ((Set A!1037) Int B!3739) A!1037)

(assert (=> b!7320489 (= (flatMapPost!141 s2!405 f!643 b!25336) empty!3283)))

(assert (=> b!7320489 true))

(assert (=> b!7320489 tp_is_empty!47965))

(assert (= (and start!714128 res!2958618) b!7320486))

(assert (= (and b!7320486 res!2958620) b!7320489))

(assert (= (and b!7320489 (not res!2958619)) b!7320487))

(assert (= (and b!7320487 (not res!2958621)) b!7320488))

(assert (= (and start!714128 condSetEmpty!55495) setIsEmpty!55496))

(assert (= (and start!714128 (not condSetEmpty!55495)) setNonEmpty!55495))

(assert (= (and start!714128 condSetEmpty!55496) setIsEmpty!55495))

(assert (= (and start!714128 (not condSetEmpty!55496)) setNonEmpty!55496))

(declare-fun b_lambda!282905 () Bool)

(assert (=> (not b_lambda!282905) (not b!7320487)))

(declare-fun t!385696 () Bool)

(declare-fun tb!262293 () Bool)

(assert (=> (and start!714128 (= f!643 f!643) t!385696) tb!262293))

(assert (=> b!7320487 t!385696))

(declare-fun result!353436 () Bool)

(declare-fun b_and!351643 () Bool)

(assert (= b_and!351641 (and (=> t!385696 result!353436) b_and!351643)))

(declare-fun m!7985630 () Bool)

(assert (=> start!714128 m!7985630))

(declare-fun m!7985632 () Bool)

(assert (=> start!714128 m!7985632))

(declare-fun m!7985634 () Bool)

(assert (=> b!7320488 m!7985634))

(declare-fun m!7985636 () Bool)

(assert (=> b!7320487 m!7985636))

(declare-fun m!7985638 () Bool)

(assert (=> b!7320487 m!7985638))

(declare-fun m!7985640 () Bool)

(assert (=> b!7320487 m!7985640))

(declare-fun m!7985642 () Bool)

(assert (=> b!7320486 m!7985642))

(declare-fun m!7985644 () Bool)

(assert (=> b!7320486 m!7985644))

(declare-fun m!7985646 () Bool)

(assert (=> b!7320489 m!7985646))

(declare-fun m!7985648 () Bool)

(assert (=> b!7320489 m!7985648))

(push 1)

(assert (not b!7320486))

(assert tp_is_empty!47967)

(assert (not b!7320489))

(assert (not setNonEmpty!55496))

(assert (not b!7320487))

(assert (not start!714128))

(assert (not setNonEmpty!55495))

(assert (not tb!262293))

(assert (not b_lambda!282905))

(assert (not b_next!134981))

(assert b_and!351643)

(assert tp_is_empty!47965)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351643)

(assert (not b_next!134981))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282909 () Bool)

(assert (= b_lambda!282905 (or (and start!714128 b_free!134191) b_lambda!282909)))

(push 1)

(assert tp_is_empty!47967)

(assert (not b!7320489))

(assert (not setNonEmpty!55496))

(assert (not b!7320487))

(assert (not start!714128))

(assert (not b!7320486))

(assert (not b_lambda!282909))

(assert (not setNonEmpty!55495))

(assert (not tb!262293))

(assert (not b_next!134981))

(assert b_and!351643)

(assert tp_is_empty!47965)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351643)

(assert (not b_next!134981))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273343 () Bool)

(declare-fun choose!56887 ((Set A!1037) Int) (Set B!3739))

(assert (=> d!2273343 (= (flatMap!3138 s1!434 f!643) (choose!56887 s1!434 f!643))))

(declare-fun bs!1915868 () Bool)

(assert (= bs!1915868 d!2273343))

(declare-fun m!7985670 () Bool)

(assert (=> bs!1915868 m!7985670))

(assert (=> start!714128 d!2273343))

(declare-fun d!2273345 () Bool)

(assert (=> d!2273345 (= (flatMap!3138 s2!405 f!643) (choose!56887 s2!405 f!643))))

(declare-fun bs!1915869 () Bool)

(assert (= bs!1915869 d!2273345))

(declare-fun m!7985672 () Bool)

(assert (=> bs!1915869 m!7985672))

(assert (=> b!7320486 d!2273345))

(declare-fun d!2273347 () Bool)

(declare-fun e!4382947 () Bool)

(assert (=> d!2273347 e!4382947))

(declare-fun res!2958636 () Bool)

(assert (=> d!2273347 (=> (not res!2958636) (not e!4382947))))

(declare-fun lt!2603930 () A!1037)

(declare-fun dynLambda!29273 (Int A!1037) Bool)

(assert (=> d!2273347 (= res!2958636 (dynLambda!29273 lambda!453177 lt!2603930))))

(declare-datatypes ((List!71414 0))(
  ( (Nil!71290) (Cons!71290 (h!77738 A!1037) (t!385701 List!71414)) )
))
(declare-fun getWitness!2385 (List!71414 Int) A!1037)

(declare-fun toList!11701 ((Set A!1037)) List!71414)

(assert (=> d!2273347 (= lt!2603930 (getWitness!2385 (toList!11701 s2!405) lambda!453177))))

(assert (=> d!2273347 (exists!4659 s2!405 lambda!453177)))

(assert (=> d!2273347 (= (getWitness!2383 s2!405 lambda!453177) lt!2603930)))

(declare-fun b!7320512 () Bool)

(assert (=> b!7320512 (= e!4382947 (set.member lt!2603930 s2!405))))

(assert (= (and d!2273347 res!2958636) b!7320512))

(declare-fun b_lambda!282913 () Bool)

(assert (=> (not b_lambda!282913) (not d!2273347)))

(declare-fun m!7985674 () Bool)

(assert (=> d!2273347 m!7985674))

(declare-fun m!7985676 () Bool)

(assert (=> d!2273347 m!7985676))

(assert (=> d!2273347 m!7985676))

(declare-fun m!7985678 () Bool)

(assert (=> d!2273347 m!7985678))

(assert (=> d!2273347 m!7985646))

(declare-fun m!7985680 () Bool)

(assert (=> b!7320512 m!7985680))

(assert (=> b!7320487 d!2273347))

(declare-fun d!2273349 () Bool)

(declare-fun lt!2603933 () Bool)

(declare-fun exists!4661 (List!71414 Int) Bool)

(assert (=> d!2273349 (= lt!2603933 (exists!4661 (toList!11701 s2!405) lambda!453177))))

(declare-fun choose!56888 ((Set A!1037) Int) Bool)

(assert (=> d!2273349 (= lt!2603933 (choose!56888 s2!405 lambda!453177))))

(assert (=> d!2273349 (= (exists!4659 s2!405 lambda!453177) lt!2603933)))

(declare-fun bs!1915870 () Bool)

(assert (= bs!1915870 d!2273349))

(assert (=> bs!1915870 m!7985676))

(assert (=> bs!1915870 m!7985676))

(declare-fun m!7985682 () Bool)

(assert (=> bs!1915870 m!7985682))

(declare-fun m!7985684 () Bool)

(assert (=> bs!1915870 m!7985684))

(assert (=> b!7320489 d!2273349))

(declare-fun bs!1915871 () Bool)

(declare-fun d!2273351 () Bool)

(assert (= bs!1915871 (and d!2273351 b!7320489)))

(declare-fun lambda!453185 () Int)

(assert (=> bs!1915871 (= lambda!453185 lambda!453177)))

(assert (=> d!2273351 true))

(assert (=> d!2273351 true))

(assert (=> d!2273351 (< (dynLambda!29267 order!29269 f!643) (dynLambda!29268 order!29271 lambda!453185))))

(assert (=> d!2273351 (= (set.member b!25336 (flatMap!3138 s2!405 f!643)) (exists!4659 s2!405 lambda!453185))))

(declare-fun lt!2603936 () A!1037)

(declare-fun choose!56889 ((Set A!1037) Int B!3739) A!1037)

(assert (=> d!2273351 (= lt!2603936 (choose!56889 s2!405 f!643 b!25336))))

(assert (=> d!2273351 (= (flatMapPost!141 s2!405 f!643 b!25336) lt!2603936)))

(declare-fun bs!1915872 () Bool)

(assert (= bs!1915872 d!2273351))

(assert (=> bs!1915872 m!7985642))

(assert (=> bs!1915872 m!7985644))

(declare-fun m!7985686 () Bool)

(assert (=> bs!1915872 m!7985686))

(declare-fun m!7985688 () Bool)

(assert (=> bs!1915872 m!7985688))

(assert (=> b!7320489 d!2273351))

(declare-fun condSetEmpty!55505 () Bool)

(assert (=> setNonEmpty!55495 (= condSetEmpty!55505 (= setRest!55496 (as set.empty (Set A!1037))))))

(declare-fun setRes!55505 () Bool)

(assert (=> setNonEmpty!55495 (= tp!2079160 setRes!55505)))

(declare-fun setIsEmpty!55505 () Bool)

(assert (=> setIsEmpty!55505 setRes!55505))

(declare-fun setNonEmpty!55505 () Bool)

(declare-fun tp!2079173 () Bool)

(assert (=> setNonEmpty!55505 (= setRes!55505 (and tp!2079173 tp_is_empty!47965))))

(declare-fun setElem!55505 () A!1037)

(declare-fun setRest!55505 () (Set A!1037))

(assert (=> setNonEmpty!55505 (= setRest!55496 (set.union (set.insert setElem!55505 (as set.empty (Set A!1037))) setRest!55505))))

(assert (= (and setNonEmpty!55495 condSetEmpty!55505) setIsEmpty!55505))

(assert (= (and setNonEmpty!55495 (not condSetEmpty!55505)) setNonEmpty!55505))

(declare-fun condSetEmpty!55506 () Bool)

(assert (=> setNonEmpty!55496 (= condSetEmpty!55506 (= setRest!55495 (as set.empty (Set A!1037))))))

(declare-fun setRes!55506 () Bool)

(assert (=> setNonEmpty!55496 (= tp!2079161 setRes!55506)))

(declare-fun setIsEmpty!55506 () Bool)

(assert (=> setIsEmpty!55506 setRes!55506))

(declare-fun setNonEmpty!55506 () Bool)

(declare-fun tp!2079174 () Bool)

(assert (=> setNonEmpty!55506 (= setRes!55506 (and tp!2079174 tp_is_empty!47965))))

(declare-fun setElem!55506 () A!1037)

(declare-fun setRest!55506 () (Set A!1037))

(assert (=> setNonEmpty!55506 (= setRest!55495 (set.union (set.insert setElem!55506 (as set.empty (Set A!1037))) setRest!55506))))

(assert (= (and setNonEmpty!55496 condSetEmpty!55506) setIsEmpty!55506))

(assert (= (and setNonEmpty!55496 (not condSetEmpty!55506)) setNonEmpty!55506))

(declare-fun condSetEmpty!55509 () Bool)

(assert (=> tb!262293 (= condSetEmpty!55509 (= (dynLambda!29269 f!643 lt!2603924) (as set.empty (Set B!3739))))))

(declare-fun setRes!55509 () Bool)

(assert (=> tb!262293 (= result!353436 setRes!55509)))

(declare-fun setIsEmpty!55509 () Bool)

(assert (=> setIsEmpty!55509 setRes!55509))

(declare-fun setNonEmpty!55509 () Bool)

(declare-fun tp!2079177 () Bool)

(assert (=> setNonEmpty!55509 (= setRes!55509 (and tp!2079177 tp_is_empty!47967))))

(declare-fun setRest!55509 () (Set B!3739))

(declare-fun setElem!55509 () B!3739)

(assert (=> setNonEmpty!55509 (= (dynLambda!29269 f!643 lt!2603924) (set.union (set.insert setElem!55509 (as set.empty (Set B!3739))) setRest!55509))))

(assert (= (and tb!262293 condSetEmpty!55509) setIsEmpty!55509))

(assert (= (and tb!262293 (not condSetEmpty!55509)) setNonEmpty!55509))

(declare-fun b_lambda!282915 () Bool)

(assert (= b_lambda!282913 (or b!7320489 b_lambda!282915)))

(declare-fun bs!1915873 () Bool)

(declare-fun d!2273355 () Bool)

(assert (= bs!1915873 (and d!2273355 b!7320489)))

(assert (=> bs!1915873 (= (dynLambda!29273 lambda!453177 lt!2603930) (set.member b!25336 (dynLambda!29269 f!643 lt!2603930)))))

(declare-fun b_lambda!282917 () Bool)

(assert (=> (not b_lambda!282917) (not bs!1915873)))

(declare-fun t!385700 () Bool)

(declare-fun tb!262297 () Bool)

(assert (=> (and start!714128 (= f!643 f!643) t!385700) tb!262297))

(assert (=> bs!1915873 t!385700))

(declare-fun result!353444 () Bool)

(declare-fun b_and!351649 () Bool)

(assert (= b_and!351643 (and (=> t!385700 result!353444) b_and!351649)))

(declare-fun m!7985690 () Bool)

(assert (=> bs!1915873 m!7985690))

(declare-fun m!7985692 () Bool)

(assert (=> bs!1915873 m!7985692))

(assert (=> d!2273347 d!2273355))

(push 1)

(assert (not d!2273351))

(assert (not d!2273345))

(assert (not tb!262297))

(assert (not b_lambda!282909))

(assert b_and!351649)

(assert tp_is_empty!47967)

(assert (not b_lambda!282915))

(assert (not setNonEmpty!55505))

(assert (not setNonEmpty!55506))

(assert (not b_next!134981))

(assert (not d!2273349))

(assert (not setNonEmpty!55509))

(assert (not b_lambda!282917))

(assert tp_is_empty!47965)

(assert (not d!2273343))

(assert (not d!2273347))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351649)

(assert (not b_next!134981))

(check-sat)

(pop 1)

