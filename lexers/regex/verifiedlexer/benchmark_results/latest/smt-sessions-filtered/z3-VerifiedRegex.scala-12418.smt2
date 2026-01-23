; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693970 () Bool)

(assert start!693970)

(declare-fun b_free!133777 () Bool)

(declare-fun b_next!134567 () Bool)

(assert (=> start!693970 (= b_free!133777 (not b_next!134567))))

(declare-fun tp!1961899 () Bool)

(declare-fun b_and!350881 () Bool)

(assert (=> start!693970 (= tp!1961899 b_and!350881)))

(declare-fun setIsEmpty!51406 () Bool)

(declare-fun setRes!51407 () Bool)

(assert (=> setIsEmpty!51406 setRes!51407))

(declare-fun b!7123938 () Bool)

(declare-fun e!4280963 () Bool)

(declare-fun e!4280964 () Bool)

(assert (=> b!7123938 (= e!4280963 e!4280964)))

(declare-fun res!2906761 () Bool)

(assert (=> b!7123938 (=> (not res!2906761) (not e!4280964))))

(declare-datatypes ((B!3341 0))(
  ( (B!3342 (val!28009 Int)) )
))
(declare-fun b!25321 () B!3341)

(declare-fun f!518 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!683 0))(
  ( (A!684 (val!28010 Int)) )
))
(declare-fun lt!2562619 () (InoxSet A!683))

(declare-fun map!16458 ((InoxSet A!683) Int) (InoxSet B!3341))

(assert (=> b!7123938 (= res!2906761 (select (map!16458 lt!2562619 f!518) b!25321))))

(declare-fun s1!413 () (InoxSet A!683))

(declare-fun s2!384 () (InoxSet A!683))

(assert (=> b!7123938 (= lt!2562619 ((_ map or) s1!413 s2!384))))

(declare-fun setIsEmpty!51407 () Bool)

(declare-fun setRes!51406 () Bool)

(assert (=> setIsEmpty!51407 setRes!51406))

(declare-fun res!2906763 () Bool)

(assert (=> start!693970 (=> (not res!2906763) (not e!4280963))))

(assert (=> start!693970 (= res!2906763 (not (select (map!16458 s1!413 f!518) b!25321)))))

(assert (=> start!693970 e!4280963))

(declare-fun tp_is_empty!45517 () Bool)

(assert (=> start!693970 tp_is_empty!45517))

(declare-fun condSetEmpty!51406 () Bool)

(assert (=> start!693970 (= condSetEmpty!51406 (= s1!413 ((as const (Array A!683 Bool)) false)))))

(assert (=> start!693970 setRes!51406))

(assert (=> start!693970 tp!1961899))

(declare-fun condSetEmpty!51407 () Bool)

(assert (=> start!693970 (= condSetEmpty!51407 (= s2!384 ((as const (Array A!683 Bool)) false)))))

(assert (=> start!693970 setRes!51407))

(declare-fun lt!2562620 () A!683)

(declare-fun b!7123939 () Bool)

(assert (=> b!7123939 (= e!4280964 (and (not (select s1!413 lt!2562620)) (not (select s2!384 lt!2562620))))))

(declare-fun mapPost2!570 ((InoxSet A!683) Int B!3341) A!683)

(assert (=> b!7123939 (= lt!2562620 (mapPost2!570 lt!2562619 f!518 b!25321))))

(declare-fun b!7123940 () Bool)

(declare-fun res!2906762 () Bool)

(assert (=> b!7123940 (=> (not res!2906762) (not e!4280963))))

(assert (=> b!7123940 (= res!2906762 (not (select (map!16458 s2!384 f!518) b!25321)))))

(declare-fun setNonEmpty!51406 () Bool)

(declare-fun tp!1961900 () Bool)

(declare-fun tp_is_empty!45519 () Bool)

(assert (=> setNonEmpty!51406 (= setRes!51407 (and tp!1961900 tp_is_empty!45519))))

(declare-fun setElem!51406 () A!683)

(declare-fun setRest!51407 () (InoxSet A!683))

(assert (=> setNonEmpty!51406 (= s2!384 ((_ map or) (store ((as const (Array A!683 Bool)) false) setElem!51406 true) setRest!51407))))

(declare-fun setNonEmpty!51407 () Bool)

(declare-fun tp!1961901 () Bool)

(assert (=> setNonEmpty!51407 (= setRes!51406 (and tp!1961901 tp_is_empty!45519))))

(declare-fun setElem!51407 () A!683)

(declare-fun setRest!51406 () (InoxSet A!683))

(assert (=> setNonEmpty!51407 (= s1!413 ((_ map or) (store ((as const (Array A!683 Bool)) false) setElem!51407 true) setRest!51406))))

(assert (= (and start!693970 res!2906763) b!7123940))

(assert (= (and b!7123940 res!2906762) b!7123938))

(assert (= (and b!7123938 res!2906761) b!7123939))

(assert (= (and start!693970 condSetEmpty!51406) setIsEmpty!51407))

(assert (= (and start!693970 (not condSetEmpty!51406)) setNonEmpty!51407))

(assert (= (and start!693970 condSetEmpty!51407) setIsEmpty!51406))

(assert (= (and start!693970 (not condSetEmpty!51407)) setNonEmpty!51406))

(declare-fun m!7841354 () Bool)

(assert (=> b!7123938 m!7841354))

(declare-fun m!7841356 () Bool)

(assert (=> b!7123938 m!7841356))

(declare-fun m!7841358 () Bool)

(assert (=> start!693970 m!7841358))

(declare-fun m!7841360 () Bool)

(assert (=> start!693970 m!7841360))

(declare-fun m!7841362 () Bool)

(assert (=> b!7123939 m!7841362))

(declare-fun m!7841364 () Bool)

(assert (=> b!7123939 m!7841364))

(declare-fun m!7841366 () Bool)

(assert (=> b!7123939 m!7841366))

(declare-fun m!7841368 () Bool)

(assert (=> b!7123940 m!7841368))

(declare-fun m!7841370 () Bool)

(assert (=> b!7123940 m!7841370))

(check-sat b_and!350881 tp_is_empty!45517 tp_is_empty!45519 (not b!7123938) (not b_next!134567) (not b!7123940) (not setNonEmpty!51407) (not b!7123939) (not start!693970) (not setNonEmpty!51406))
(check-sat b_and!350881 (not b_next!134567))
(get-model)

(declare-fun d!2223221 () Bool)

(declare-fun choose!55060 ((InoxSet A!683) Int) (InoxSet B!3341))

(assert (=> d!2223221 (= (map!16458 s1!413 f!518) (choose!55060 s1!413 f!518))))

(declare-fun bs!1886207 () Bool)

(assert (= bs!1886207 d!2223221))

(declare-fun m!7841372 () Bool)

(assert (=> bs!1886207 m!7841372))

(assert (=> start!693970 d!2223221))

(declare-fun d!2223223 () Bool)

(declare-fun e!4280967 () Bool)

(assert (=> d!2223223 e!4280967))

(declare-fun res!2906766 () Bool)

(assert (=> d!2223223 (=> (not res!2906766) (not e!4280967))))

(declare-fun lt!2562623 () A!683)

(declare-fun dynLambda!28089 (Int A!683) B!3341)

(assert (=> d!2223223 (= res!2906766 (= b!25321 (dynLambda!28089 f!518 lt!2562623)))))

(declare-fun choose!55061 ((InoxSet A!683) Int B!3341) A!683)

(assert (=> d!2223223 (= lt!2562623 (choose!55061 lt!2562619 f!518 b!25321))))

(assert (=> d!2223223 (select (map!16458 lt!2562619 f!518) b!25321)))

(assert (=> d!2223223 (= (mapPost2!570 lt!2562619 f!518 b!25321) lt!2562623)))

(declare-fun b!7123944 () Bool)

(assert (=> b!7123944 (= e!4280967 (select lt!2562619 lt!2562623))))

(assert (= (and d!2223223 res!2906766) b!7123944))

(declare-fun b_lambda!271797 () Bool)

(assert (=> (not b_lambda!271797) (not d!2223223)))

(declare-fun t!382955 () Bool)

(declare-fun tb!262005 () Bool)

(assert (=> (and start!693970 (= f!518 f!518) t!382955) tb!262005))

(declare-fun result!349296 () Bool)

(assert (=> tb!262005 (= result!349296 tp_is_empty!45517)))

(assert (=> d!2223223 t!382955))

(declare-fun b_and!350883 () Bool)

(assert (= b_and!350881 (and (=> t!382955 result!349296) b_and!350883)))

(declare-fun m!7841374 () Bool)

(assert (=> d!2223223 m!7841374))

(declare-fun m!7841376 () Bool)

(assert (=> d!2223223 m!7841376))

(assert (=> d!2223223 m!7841354))

(assert (=> d!2223223 m!7841356))

(declare-fun m!7841378 () Bool)

(assert (=> b!7123944 m!7841378))

(assert (=> b!7123939 d!2223223))

(declare-fun d!2223225 () Bool)

(assert (=> d!2223225 (= (map!16458 s2!384 f!518) (choose!55060 s2!384 f!518))))

(declare-fun bs!1886208 () Bool)

(assert (= bs!1886208 d!2223225))

(declare-fun m!7841380 () Bool)

(assert (=> bs!1886208 m!7841380))

(assert (=> b!7123940 d!2223225))

(declare-fun d!2223227 () Bool)

(assert (=> d!2223227 (= (map!16458 lt!2562619 f!518) (choose!55060 lt!2562619 f!518))))

(declare-fun bs!1886209 () Bool)

(assert (= bs!1886209 d!2223227))

(declare-fun m!7841382 () Bool)

(assert (=> bs!1886209 m!7841382))

(assert (=> b!7123938 d!2223227))

(declare-fun condSetEmpty!51410 () Bool)

(assert (=> setNonEmpty!51406 (= condSetEmpty!51410 (= setRest!51407 ((as const (Array A!683 Bool)) false)))))

(declare-fun setRes!51410 () Bool)

(assert (=> setNonEmpty!51406 (= tp!1961900 setRes!51410)))

(declare-fun setIsEmpty!51410 () Bool)

(assert (=> setIsEmpty!51410 setRes!51410))

(declare-fun setNonEmpty!51410 () Bool)

(declare-fun tp!1961904 () Bool)

(assert (=> setNonEmpty!51410 (= setRes!51410 (and tp!1961904 tp_is_empty!45519))))

(declare-fun setElem!51410 () A!683)

(declare-fun setRest!51410 () (InoxSet A!683))

(assert (=> setNonEmpty!51410 (= setRest!51407 ((_ map or) (store ((as const (Array A!683 Bool)) false) setElem!51410 true) setRest!51410))))

(assert (= (and setNonEmpty!51406 condSetEmpty!51410) setIsEmpty!51410))

(assert (= (and setNonEmpty!51406 (not condSetEmpty!51410)) setNonEmpty!51410))

(declare-fun condSetEmpty!51411 () Bool)

(assert (=> setNonEmpty!51407 (= condSetEmpty!51411 (= setRest!51406 ((as const (Array A!683 Bool)) false)))))

(declare-fun setRes!51411 () Bool)

(assert (=> setNonEmpty!51407 (= tp!1961901 setRes!51411)))

(declare-fun setIsEmpty!51411 () Bool)

(assert (=> setIsEmpty!51411 setRes!51411))

(declare-fun setNonEmpty!51411 () Bool)

(declare-fun tp!1961905 () Bool)

(assert (=> setNonEmpty!51411 (= setRes!51411 (and tp!1961905 tp_is_empty!45519))))

(declare-fun setElem!51411 () A!683)

(declare-fun setRest!51411 () (InoxSet A!683))

(assert (=> setNonEmpty!51411 (= setRest!51406 ((_ map or) (store ((as const (Array A!683 Bool)) false) setElem!51411 true) setRest!51411))))

(assert (= (and setNonEmpty!51407 condSetEmpty!51411) setIsEmpty!51411))

(assert (= (and setNonEmpty!51407 (not condSetEmpty!51411)) setNonEmpty!51411))

(declare-fun b_lambda!271799 () Bool)

(assert (= b_lambda!271797 (or (and start!693970 b_free!133777) b_lambda!271799)))

(check-sat (not setNonEmpty!51411) (not d!2223225) tp_is_empty!45517 tp_is_empty!45519 (not d!2223223) (not b_next!134567) (not d!2223221) (not d!2223227) (not setNonEmpty!51410) b_and!350883 (not b_lambda!271799))
(check-sat b_and!350883 (not b_next!134567))
