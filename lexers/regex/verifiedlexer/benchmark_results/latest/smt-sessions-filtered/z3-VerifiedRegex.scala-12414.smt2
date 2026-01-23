; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693938 () Bool)

(assert start!693938)

(declare-fun b_free!133761 () Bool)

(declare-fun b_next!134551 () Bool)

(assert (=> start!693938 (= b_free!133761 (not b_next!134551))))

(declare-fun tp!1961815 () Bool)

(declare-fun b_and!350857 () Bool)

(assert (=> start!693938 (= tp!1961815 b_and!350857)))

(declare-fun res!2906703 () Bool)

(declare-fun e!4280922 () Bool)

(assert (=> start!693938 (=> (not res!2906703) (not e!4280922))))

(declare-datatypes ((B!3325 0))(
  ( (B!3326 (val!27993 Int)) )
))
(declare-fun b!25321 () B!3325)

(declare-fun f!518 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!667 0))(
  ( (A!668 (val!27994 Int)) )
))
(declare-fun s1!413 () (InoxSet A!667))

(declare-fun map!16446 ((InoxSet A!667) Int) (InoxSet B!3325))

(assert (=> start!693938 (= res!2906703 (select (map!16446 s1!413 f!518) b!25321))))

(assert (=> start!693938 e!4280922))

(declare-fun tp_is_empty!45485 () Bool)

(assert (=> start!693938 tp_is_empty!45485))

(declare-fun condSetEmpty!51345 () Bool)

(assert (=> start!693938 (= condSetEmpty!51345 (= s1!413 ((as const (Array A!667 Bool)) false)))))

(declare-fun setRes!51345 () Bool)

(assert (=> start!693938 setRes!51345))

(assert (=> start!693938 tp!1961815))

(declare-fun b!7123860 () Bool)

(declare-fun mapPost2!562 ((InoxSet A!667) Int B!3325) A!667)

(assert (=> b!7123860 (= e!4280922 (not (select s1!413 (mapPost2!562 s1!413 f!518 b!25321))))))

(declare-fun setIsEmpty!51345 () Bool)

(assert (=> setIsEmpty!51345 setRes!51345))

(declare-fun setNonEmpty!51345 () Bool)

(declare-fun tp!1961814 () Bool)

(declare-fun tp_is_empty!45487 () Bool)

(assert (=> setNonEmpty!51345 (= setRes!51345 (and tp!1961814 tp_is_empty!45487))))

(declare-fun setElem!51345 () A!667)

(declare-fun setRest!51345 () (InoxSet A!667))

(assert (=> setNonEmpty!51345 (= s1!413 ((_ map or) (store ((as const (Array A!667 Bool)) false) setElem!51345 true) setRest!51345))))

(assert (= (and start!693938 res!2906703) b!7123860))

(assert (= (and start!693938 condSetEmpty!51345) setIsEmpty!51345))

(assert (= (and start!693938 (not condSetEmpty!51345)) setNonEmpty!51345))

(declare-fun m!7841220 () Bool)

(assert (=> start!693938 m!7841220))

(declare-fun m!7841222 () Bool)

(assert (=> start!693938 m!7841222))

(declare-fun m!7841224 () Bool)

(assert (=> b!7123860 m!7841224))

(assert (=> b!7123860 m!7841224))

(declare-fun m!7841226 () Bool)

(assert (=> b!7123860 m!7841226))

(check-sat (not b!7123860) (not setNonEmpty!51345) tp_is_empty!45485 (not start!693938) (not b_next!134551) tp_is_empty!45487 b_and!350857)
(check-sat b_and!350857 (not b_next!134551))
(get-model)

(declare-fun d!2223199 () Bool)

(declare-fun e!4280927 () Bool)

(assert (=> d!2223199 e!4280927))

(declare-fun res!2906708 () Bool)

(assert (=> d!2223199 (=> (not res!2906708) (not e!4280927))))

(declare-fun lt!2562589 () A!667)

(declare-fun dynLambda!28085 (Int A!667) B!3325)

(assert (=> d!2223199 (= res!2906708 (= b!25321 (dynLambda!28085 f!518 lt!2562589)))))

(declare-fun choose!55053 ((InoxSet A!667) Int B!3325) A!667)

(assert (=> d!2223199 (= lt!2562589 (choose!55053 s1!413 f!518 b!25321))))

(assert (=> d!2223199 (select (map!16446 s1!413 f!518) b!25321)))

(assert (=> d!2223199 (= (mapPost2!562 s1!413 f!518 b!25321) lt!2562589)))

(declare-fun b!7123867 () Bool)

(assert (=> b!7123867 (= e!4280927 (select s1!413 lt!2562589))))

(assert (= (and d!2223199 res!2906708) b!7123867))

(declare-fun b_lambda!271781 () Bool)

(assert (=> (not b_lambda!271781) (not d!2223199)))

(declare-fun t!382947 () Bool)

(declare-fun tb!261997 () Bool)

(assert (=> (and start!693938 (= f!518 f!518) t!382947) tb!261997))

(declare-fun result!349272 () Bool)

(assert (=> tb!261997 (= result!349272 tp_is_empty!45485)))

(assert (=> d!2223199 t!382947))

(declare-fun b_and!350859 () Bool)

(assert (= b_and!350857 (and (=> t!382947 result!349272) b_and!350859)))

(declare-fun m!7841230 () Bool)

(assert (=> d!2223199 m!7841230))

(declare-fun m!7841232 () Bool)

(assert (=> d!2223199 m!7841232))

(assert (=> d!2223199 m!7841220))

(assert (=> d!2223199 m!7841222))

(declare-fun m!7841234 () Bool)

(assert (=> b!7123867 m!7841234))

(assert (=> b!7123860 d!2223199))

(declare-fun d!2223203 () Bool)

(declare-fun choose!55055 ((InoxSet A!667) Int) (InoxSet B!3325))

(assert (=> d!2223203 (= (map!16446 s1!413 f!518) (choose!55055 s1!413 f!518))))

(declare-fun bs!1886194 () Bool)

(assert (= bs!1886194 d!2223203))

(declare-fun m!7841242 () Bool)

(assert (=> bs!1886194 m!7841242))

(assert (=> start!693938 d!2223203))

(declare-fun condSetEmpty!51351 () Bool)

(assert (=> setNonEmpty!51345 (= condSetEmpty!51351 (= setRest!51345 ((as const (Array A!667 Bool)) false)))))

(declare-fun setRes!51351 () Bool)

(assert (=> setNonEmpty!51345 (= tp!1961814 setRes!51351)))

(declare-fun setIsEmpty!51351 () Bool)

(assert (=> setIsEmpty!51351 setRes!51351))

(declare-fun setNonEmpty!51351 () Bool)

(declare-fun tp!1961821 () Bool)

(assert (=> setNonEmpty!51351 (= setRes!51351 (and tp!1961821 tp_is_empty!45487))))

(declare-fun setElem!51351 () A!667)

(declare-fun setRest!51351 () (InoxSet A!667))

(assert (=> setNonEmpty!51351 (= setRest!51345 ((_ map or) (store ((as const (Array A!667 Bool)) false) setElem!51351 true) setRest!51351))))

(assert (= (and setNonEmpty!51345 condSetEmpty!51351) setIsEmpty!51351))

(assert (= (and setNonEmpty!51345 (not condSetEmpty!51351)) setNonEmpty!51351))

(declare-fun b_lambda!271787 () Bool)

(assert (= b_lambda!271781 (or (and start!693938 b_free!133761) b_lambda!271787)))

(check-sat (not setNonEmpty!51351) (not b_lambda!271787) (not d!2223199) tp_is_empty!45485 (not b_next!134551) tp_is_empty!45487 b_and!350859 (not d!2223203))
(check-sat b_and!350859 (not b_next!134551))
