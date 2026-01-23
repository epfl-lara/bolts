; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714066 () Bool)

(assert start!714066)

(declare-fun b_free!134177 () Bool)

(declare-fun b_next!134967 () Bool)

(assert (=> start!714066 (= b_free!134177 (not b_next!134967))))

(declare-fun tp!2079062 () Bool)

(declare-fun b_and!351611 () Bool)

(assert (=> start!714066 (= tp!2079062 b_and!351611)))

(declare-fun b!7320343 () Bool)

(assert (=> b!7320343 true))

(assert (=> b!7320343 true))

(declare-fun order!29241 () Int)

(declare-fun f!643 () Int)

(declare-fun lambda!453118 () Int)

(declare-fun order!29243 () Int)

(declare-fun dynLambda!29245 (Int Int) Int)

(declare-fun dynLambda!29246 (Int Int) Int)

(assert (=> b!7320343 (< (dynLambda!29245 order!29241 f!643) (dynLambda!29246 order!29243 lambda!453118))))

(declare-fun setNonEmpty!55417 () Bool)

(declare-fun setRes!55417 () Bool)

(declare-fun tp!2079060 () Bool)

(declare-fun tp_is_empty!47937 () Bool)

(assert (=> setNonEmpty!55417 (= setRes!55417 (and tp!2079060 tp_is_empty!47937))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1023 0))(
  ( (A!1024 (val!29343 Int)) )
))
(declare-fun s1!434 () (InoxSet A!1023))

(declare-fun setElem!55417 () A!1023)

(declare-fun setRest!55418 () (InoxSet A!1023))

(assert (=> setNonEmpty!55417 (= s1!434 ((_ map or) (store ((as const (Array A!1023 Bool)) false) setElem!55417 true) setRest!55418))))

(declare-fun b!7320340 () Bool)

(declare-fun e!4382861 () Bool)

(declare-fun e!4382862 () Bool)

(assert (=> b!7320340 (= e!4382861 e!4382862)))

(declare-fun res!2958531 () Bool)

(assert (=> b!7320340 (=> res!2958531 e!4382862)))

(declare-fun lt!2603829 () A!1023)

(declare-fun lt!2603833 () (InoxSet A!1023))

(assert (=> b!7320340 (= res!2958531 (not (select lt!2603833 lt!2603829)))))

(declare-fun s2!405 () (InoxSet A!1023))

(assert (=> b!7320340 (= lt!2603833 ((_ map or) s1!434 s2!405))))

(declare-fun b!7320341 () Bool)

(declare-fun e!4382864 () Bool)

(assert (=> b!7320341 (= e!4382864 e!4382861)))

(declare-fun res!2958529 () Bool)

(assert (=> b!7320341 (=> res!2958529 e!4382861)))

(declare-datatypes ((B!3725 0))(
  ( (B!3726 (val!29344 Int)) )
))
(declare-fun b!25336 () B!3725)

(declare-fun dynLambda!29247 (Int A!1023) (InoxSet B!3725))

(assert (=> b!7320341 (= res!2958529 (not (select (dynLambda!29247 f!643 lt!2603829) b!25336)))))

(declare-fun getWitness!2375 ((InoxSet A!1023) Int) A!1023)

(assert (=> b!7320341 (= lt!2603829 (getWitness!2375 s1!434 lambda!453118))))

(declare-fun res!2958527 () Bool)

(declare-fun e!4382863 () Bool)

(assert (=> start!714066 (=> (not res!2958527) (not e!4382863))))

(declare-fun lt!2603831 () (InoxSet B!3725))

(assert (=> start!714066 (= res!2958527 (select lt!2603831 b!25336))))

(declare-fun flatMap!3131 ((InoxSet A!1023) Int) (InoxSet B!3725))

(assert (=> start!714066 (= lt!2603831 (flatMap!3131 s1!434 f!643))))

(assert (=> start!714066 e!4382863))

(declare-fun condSetEmpty!55418 () Bool)

(assert (=> start!714066 (= condSetEmpty!55418 (= s2!405 ((as const (Array A!1023 Bool)) false)))))

(declare-fun setRes!55418 () Bool)

(assert (=> start!714066 setRes!55418))

(declare-fun tp_is_empty!47939 () Bool)

(assert (=> start!714066 tp_is_empty!47939))

(declare-fun condSetEmpty!55417 () Bool)

(assert (=> start!714066 (= condSetEmpty!55417 (= s1!434 ((as const (Array A!1023 Bool)) false)))))

(assert (=> start!714066 setRes!55417))

(assert (=> start!714066 tp!2079062))

(declare-fun setIsEmpty!55417 () Bool)

(assert (=> setIsEmpty!55417 setRes!55417))

(declare-fun b!7320342 () Bool)

(declare-fun e!4382860 () Bool)

(assert (=> b!7320342 (= e!4382862 e!4382860)))

(declare-fun res!2958530 () Bool)

(assert (=> b!7320342 (=> res!2958530 e!4382860)))

(declare-fun exists!4647 ((InoxSet A!1023) Int) Bool)

(assert (=> b!7320342 (= res!2958530 (not (exists!4647 lt!2603833 lambda!453118)))))

(assert (=> b!7320342 (exists!4647 lt!2603833 lambda!453118)))

(declare-datatypes ((Unit!164815 0))(
  ( (Unit!164816) )
))
(declare-fun lt!2603830 () Unit!164815)

(declare-fun lemmaContainsThenExists!271 ((InoxSet A!1023) A!1023 Int) Unit!164815)

(assert (=> b!7320342 (= lt!2603830 (lemmaContainsThenExists!271 lt!2603833 lt!2603829 lambda!453118))))

(assert (=> b!7320343 (= e!4382863 (not e!4382864))))

(declare-fun res!2958526 () Bool)

(assert (=> b!7320343 (=> res!2958526 e!4382864)))

(assert (=> b!7320343 (= res!2958526 (not (exists!4647 s1!434 lambda!453118)))))

(declare-fun lt!2603832 () A!1023)

(declare-fun flatMapPost!134 ((InoxSet A!1023) Int B!3725) A!1023)

(assert (=> b!7320343 (= (flatMapPost!134 s1!434 f!643 b!25336) lt!2603832)))

(declare-fun empty!3255 () A!1023)

(assert (=> b!7320343 (= lt!2603832 empty!3255)))

(assert (=> b!7320343 true))

(assert (=> b!7320343 tp_is_empty!47937))

(declare-fun setIsEmpty!55418 () Bool)

(assert (=> setIsEmpty!55418 setRes!55418))

(declare-fun b!7320344 () Bool)

(assert (=> b!7320344 (= e!4382860 (select (flatMap!3131 lt!2603833 f!643) b!25336))))

(assert (=> b!7320344 (= (flatMapPost!134 lt!2603833 f!643 b!25336) lt!2603832)))

(declare-fun setNonEmpty!55418 () Bool)

(declare-fun tp!2079061 () Bool)

(assert (=> setNonEmpty!55418 (= setRes!55418 (and tp!2079061 tp_is_empty!47937))))

(declare-fun setElem!55418 () A!1023)

(declare-fun setRest!55417 () (InoxSet A!1023))

(assert (=> setNonEmpty!55418 (= s2!405 ((_ map or) (store ((as const (Array A!1023 Bool)) false) setElem!55418 true) setRest!55417))))

(declare-fun b!7320345 () Bool)

(declare-fun res!2958528 () Bool)

(assert (=> b!7320345 (=> res!2958528 e!4382862)))

(assert (=> b!7320345 (= res!2958528 (not (select ((_ map or) lt!2603831 (flatMap!3131 s2!405 f!643)) b!25336)))))

(assert (= (and start!714066 res!2958527) b!7320343))

(assert (= (and b!7320343 (not res!2958526)) b!7320341))

(assert (= (and b!7320341 (not res!2958529)) b!7320340))

(assert (= (and b!7320340 (not res!2958531)) b!7320345))

(assert (= (and b!7320345 (not res!2958528)) b!7320342))

(assert (= (and b!7320342 (not res!2958530)) b!7320344))

(assert (= (and start!714066 condSetEmpty!55418) setIsEmpty!55418))

(assert (= (and start!714066 (not condSetEmpty!55418)) setNonEmpty!55418))

(assert (= (and start!714066 condSetEmpty!55417) setIsEmpty!55417))

(assert (= (and start!714066 (not condSetEmpty!55417)) setNonEmpty!55417))

(declare-fun b_lambda!282865 () Bool)

(assert (=> (not b_lambda!282865) (not b!7320341)))

(declare-fun t!385675 () Bool)

(declare-fun tb!262277 () Bool)

(assert (=> (and start!714066 (= f!643 f!643) t!385675) tb!262277))

(assert (=> b!7320341 t!385675))

(declare-fun result!353400 () Bool)

(declare-fun b_and!351613 () Bool)

(assert (= b_and!351611 (and (=> t!385675 result!353400) b_and!351613)))

(declare-fun m!7985336 () Bool)

(assert (=> b!7320344 m!7985336))

(declare-fun m!7985338 () Bool)

(assert (=> b!7320344 m!7985338))

(declare-fun m!7985340 () Bool)

(assert (=> b!7320344 m!7985340))

(declare-fun m!7985342 () Bool)

(assert (=> start!714066 m!7985342))

(declare-fun m!7985344 () Bool)

(assert (=> start!714066 m!7985344))

(declare-fun m!7985346 () Bool)

(assert (=> b!7320342 m!7985346))

(assert (=> b!7320342 m!7985346))

(declare-fun m!7985348 () Bool)

(assert (=> b!7320342 m!7985348))

(declare-fun m!7985350 () Bool)

(assert (=> b!7320343 m!7985350))

(declare-fun m!7985352 () Bool)

(assert (=> b!7320343 m!7985352))

(declare-fun m!7985354 () Bool)

(assert (=> b!7320340 m!7985354))

(declare-fun m!7985356 () Bool)

(assert (=> b!7320345 m!7985356))

(declare-fun m!7985358 () Bool)

(assert (=> b!7320345 m!7985358))

(declare-fun m!7985360 () Bool)

(assert (=> b!7320341 m!7985360))

(declare-fun m!7985362 () Bool)

(assert (=> b!7320341 m!7985362))

(declare-fun m!7985364 () Bool)

(assert (=> b!7320341 m!7985364))

(check-sat (not b!7320345) (not b!7320341) tp_is_empty!47939 (not setNonEmpty!55418) (not b_lambda!282865) tp_is_empty!47937 (not b!7320344) (not b_next!134967) (not setNonEmpty!55417) (not tb!262277) (not b!7320343) b_and!351613 (not start!714066) (not b!7320342))
(check-sat b_and!351613 (not b_next!134967))
(get-model)

(declare-fun b_lambda!282867 () Bool)

(assert (= b_lambda!282865 (or (and start!714066 b_free!134177) b_lambda!282867)))

(check-sat (not b!7320345) (not b!7320341) tp_is_empty!47939 (not setNonEmpty!55418) (not b_lambda!282867) tp_is_empty!47937 (not b!7320344) (not b_next!134967) (not setNonEmpty!55417) (not tb!262277) (not b!7320343) b_and!351613 (not start!714066) (not b!7320342))
(check-sat b_and!351613 (not b_next!134967))
(get-model)

(declare-fun d!2273261 () Bool)

(declare-fun lt!2603836 () Bool)

(declare-datatypes ((List!71409 0))(
  ( (Nil!71285) (Cons!71285 (h!77733 A!1023) (t!385678 List!71409)) )
))
(declare-fun exists!4648 (List!71409 Int) Bool)

(declare-fun toList!11696 ((InoxSet A!1023)) List!71409)

(assert (=> d!2273261 (= lt!2603836 (exists!4648 (toList!11696 s1!434) lambda!453118))))

(declare-fun choose!56870 ((InoxSet A!1023) Int) Bool)

(assert (=> d!2273261 (= lt!2603836 (choose!56870 s1!434 lambda!453118))))

(assert (=> d!2273261 (= (exists!4647 s1!434 lambda!453118) lt!2603836)))

(declare-fun bs!1915815 () Bool)

(assert (= bs!1915815 d!2273261))

(declare-fun m!7985366 () Bool)

(assert (=> bs!1915815 m!7985366))

(assert (=> bs!1915815 m!7985366))

(declare-fun m!7985368 () Bool)

(assert (=> bs!1915815 m!7985368))

(declare-fun m!7985370 () Bool)

(assert (=> bs!1915815 m!7985370))

(assert (=> b!7320343 d!2273261))

(declare-fun bs!1915816 () Bool)

(declare-fun d!2273263 () Bool)

(assert (= bs!1915816 (and d!2273263 b!7320343)))

(declare-fun lambda!453121 () Int)

(assert (=> bs!1915816 (= lambda!453121 lambda!453118)))

(assert (=> d!2273263 true))

(assert (=> d!2273263 true))

(assert (=> d!2273263 (< (dynLambda!29245 order!29241 f!643) (dynLambda!29246 order!29243 lambda!453121))))

(assert (=> d!2273263 (= (select (flatMap!3131 s1!434 f!643) b!25336) (exists!4647 s1!434 lambda!453121))))

(declare-fun lt!2603839 () A!1023)

(declare-fun choose!56871 ((InoxSet A!1023) Int B!3725) A!1023)

(assert (=> d!2273263 (= lt!2603839 (choose!56871 s1!434 f!643 b!25336))))

(assert (=> d!2273263 (= (flatMapPost!134 s1!434 f!643 b!25336) lt!2603839)))

(declare-fun bs!1915817 () Bool)

(assert (= bs!1915817 d!2273263))

(assert (=> bs!1915817 m!7985344))

(declare-fun m!7985372 () Bool)

(assert (=> bs!1915817 m!7985372))

(declare-fun m!7985374 () Bool)

(assert (=> bs!1915817 m!7985374))

(declare-fun m!7985376 () Bool)

(assert (=> bs!1915817 m!7985376))

(assert (=> b!7320343 d!2273263))

(declare-fun d!2273265 () Bool)

(declare-fun lt!2603840 () Bool)

(assert (=> d!2273265 (= lt!2603840 (exists!4648 (toList!11696 lt!2603833) lambda!453118))))

(assert (=> d!2273265 (= lt!2603840 (choose!56870 lt!2603833 lambda!453118))))

(assert (=> d!2273265 (= (exists!4647 lt!2603833 lambda!453118) lt!2603840)))

(declare-fun bs!1915818 () Bool)

(assert (= bs!1915818 d!2273265))

(declare-fun m!7985378 () Bool)

(assert (=> bs!1915818 m!7985378))

(assert (=> bs!1915818 m!7985378))

(declare-fun m!7985380 () Bool)

(assert (=> bs!1915818 m!7985380))

(declare-fun m!7985382 () Bool)

(assert (=> bs!1915818 m!7985382))

(assert (=> b!7320342 d!2273265))

(declare-fun d!2273267 () Bool)

(assert (=> d!2273267 (exists!4647 lt!2603833 lambda!453118)))

(declare-fun lt!2603843 () Unit!164815)

(declare-fun choose!56872 ((InoxSet A!1023) A!1023 Int) Unit!164815)

(assert (=> d!2273267 (= lt!2603843 (choose!56872 lt!2603833 lt!2603829 lambda!453118))))

(assert (=> d!2273267 (select lt!2603833 lt!2603829)))

(assert (=> d!2273267 (= (lemmaContainsThenExists!271 lt!2603833 lt!2603829 lambda!453118) lt!2603843)))

(declare-fun bs!1915821 () Bool)

(assert (= bs!1915821 d!2273267))

(assert (=> bs!1915821 m!7985346))

(declare-fun m!7985388 () Bool)

(assert (=> bs!1915821 m!7985388))

(assert (=> bs!1915821 m!7985354))

(assert (=> b!7320342 d!2273267))

(declare-fun d!2273275 () Bool)

(declare-fun e!4382868 () Bool)

(assert (=> d!2273275 e!4382868))

(declare-fun res!2958534 () Bool)

(assert (=> d!2273275 (=> (not res!2958534) (not e!4382868))))

(declare-fun lt!2603849 () A!1023)

(declare-fun dynLambda!29248 (Int A!1023) Bool)

(assert (=> d!2273275 (= res!2958534 (dynLambda!29248 lambda!453118 lt!2603849))))

(declare-fun getWitness!2376 (List!71409 Int) A!1023)

(assert (=> d!2273275 (= lt!2603849 (getWitness!2376 (toList!11696 s1!434) lambda!453118))))

(assert (=> d!2273275 (exists!4647 s1!434 lambda!453118)))

(assert (=> d!2273275 (= (getWitness!2375 s1!434 lambda!453118) lt!2603849)))

(declare-fun b!7320354 () Bool)

(assert (=> b!7320354 (= e!4382868 (select s1!434 lt!2603849))))

(assert (= (and d!2273275 res!2958534) b!7320354))

(declare-fun b_lambda!282871 () Bool)

(assert (=> (not b_lambda!282871) (not d!2273275)))

(declare-fun m!7985394 () Bool)

(assert (=> d!2273275 m!7985394))

(assert (=> d!2273275 m!7985366))

(assert (=> d!2273275 m!7985366))

(declare-fun m!7985398 () Bool)

(assert (=> d!2273275 m!7985398))

(assert (=> d!2273275 m!7985350))

(declare-fun m!7985400 () Bool)

(assert (=> b!7320354 m!7985400))

(assert (=> b!7320341 d!2273275))

(declare-fun d!2273281 () Bool)

(declare-fun choose!56874 ((InoxSet A!1023) Int) (InoxSet B!3725))

(assert (=> d!2273281 (= (flatMap!3131 lt!2603833 f!643) (choose!56874 lt!2603833 f!643))))

(declare-fun bs!1915825 () Bool)

(assert (= bs!1915825 d!2273281))

(declare-fun m!7985402 () Bool)

(assert (=> bs!1915825 m!7985402))

(assert (=> b!7320344 d!2273281))

(declare-fun bs!1915826 () Bool)

(declare-fun d!2273283 () Bool)

(assert (= bs!1915826 (and d!2273283 b!7320343)))

(declare-fun lambda!453125 () Int)

(assert (=> bs!1915826 (= lambda!453125 lambda!453118)))

(declare-fun bs!1915827 () Bool)

(assert (= bs!1915827 (and d!2273283 d!2273263)))

(assert (=> bs!1915827 (= lambda!453125 lambda!453121)))

(assert (=> d!2273283 true))

(assert (=> d!2273283 true))

(assert (=> d!2273283 (< (dynLambda!29245 order!29241 f!643) (dynLambda!29246 order!29243 lambda!453125))))

(assert (=> d!2273283 (= (select (flatMap!3131 lt!2603833 f!643) b!25336) (exists!4647 lt!2603833 lambda!453125))))

(declare-fun lt!2603850 () A!1023)

(assert (=> d!2273283 (= lt!2603850 (choose!56871 lt!2603833 f!643 b!25336))))

(assert (=> d!2273283 (= (flatMapPost!134 lt!2603833 f!643 b!25336) lt!2603850)))

(declare-fun bs!1915828 () Bool)

(assert (= bs!1915828 d!2273283))

(assert (=> bs!1915828 m!7985336))

(assert (=> bs!1915828 m!7985338))

(declare-fun m!7985404 () Bool)

(assert (=> bs!1915828 m!7985404))

(declare-fun m!7985406 () Bool)

(assert (=> bs!1915828 m!7985406))

(assert (=> b!7320344 d!2273283))

(declare-fun d!2273285 () Bool)

(assert (=> d!2273285 (= (flatMap!3131 s1!434 f!643) (choose!56874 s1!434 f!643))))

(declare-fun bs!1915829 () Bool)

(assert (= bs!1915829 d!2273285))

(declare-fun m!7985408 () Bool)

(assert (=> bs!1915829 m!7985408))

(assert (=> start!714066 d!2273285))

(declare-fun d!2273287 () Bool)

(assert (=> d!2273287 (= (flatMap!3131 s2!405 f!643) (choose!56874 s2!405 f!643))))

(declare-fun bs!1915830 () Bool)

(assert (= bs!1915830 d!2273287))

(declare-fun m!7985410 () Bool)

(assert (=> bs!1915830 m!7985410))

(assert (=> b!7320345 d!2273287))

(declare-fun condSetEmpty!55421 () Bool)

(assert (=> setNonEmpty!55417 (= condSetEmpty!55421 (= setRest!55418 ((as const (Array A!1023 Bool)) false)))))

(declare-fun setRes!55421 () Bool)

(assert (=> setNonEmpty!55417 (= tp!2079060 setRes!55421)))

(declare-fun setIsEmpty!55421 () Bool)

(assert (=> setIsEmpty!55421 setRes!55421))

(declare-fun setNonEmpty!55421 () Bool)

(declare-fun tp!2079065 () Bool)

(assert (=> setNonEmpty!55421 (= setRes!55421 (and tp!2079065 tp_is_empty!47937))))

(declare-fun setElem!55421 () A!1023)

(declare-fun setRest!55421 () (InoxSet A!1023))

(assert (=> setNonEmpty!55421 (= setRest!55418 ((_ map or) (store ((as const (Array A!1023 Bool)) false) setElem!55421 true) setRest!55421))))

(assert (= (and setNonEmpty!55417 condSetEmpty!55421) setIsEmpty!55421))

(assert (= (and setNonEmpty!55417 (not condSetEmpty!55421)) setNonEmpty!55421))

(declare-fun condSetEmpty!55424 () Bool)

(assert (=> tb!262277 (= condSetEmpty!55424 (= (dynLambda!29247 f!643 lt!2603829) ((as const (Array B!3725 Bool)) false)))))

(declare-fun setRes!55424 () Bool)

(assert (=> tb!262277 (= result!353400 setRes!55424)))

(declare-fun setIsEmpty!55424 () Bool)

(assert (=> setIsEmpty!55424 setRes!55424))

(declare-fun setNonEmpty!55424 () Bool)

(declare-fun tp!2079068 () Bool)

(assert (=> setNonEmpty!55424 (= setRes!55424 (and tp!2079068 tp_is_empty!47939))))

(declare-fun setElem!55424 () B!3725)

(declare-fun setRest!55424 () (InoxSet B!3725))

(assert (=> setNonEmpty!55424 (= (dynLambda!29247 f!643 lt!2603829) ((_ map or) (store ((as const (Array B!3725 Bool)) false) setElem!55424 true) setRest!55424))))

(assert (= (and tb!262277 condSetEmpty!55424) setIsEmpty!55424))

(assert (= (and tb!262277 (not condSetEmpty!55424)) setNonEmpty!55424))

(declare-fun condSetEmpty!55425 () Bool)

(assert (=> setNonEmpty!55418 (= condSetEmpty!55425 (= setRest!55417 ((as const (Array A!1023 Bool)) false)))))

(declare-fun setRes!55425 () Bool)

(assert (=> setNonEmpty!55418 (= tp!2079061 setRes!55425)))

(declare-fun setIsEmpty!55425 () Bool)

(assert (=> setIsEmpty!55425 setRes!55425))

(declare-fun setNonEmpty!55425 () Bool)

(declare-fun tp!2079069 () Bool)

(assert (=> setNonEmpty!55425 (= setRes!55425 (and tp!2079069 tp_is_empty!47937))))

(declare-fun setElem!55425 () A!1023)

(declare-fun setRest!55425 () (InoxSet A!1023))

(assert (=> setNonEmpty!55425 (= setRest!55417 ((_ map or) (store ((as const (Array A!1023 Bool)) false) setElem!55425 true) setRest!55425))))

(assert (= (and setNonEmpty!55418 condSetEmpty!55425) setIsEmpty!55425))

(assert (= (and setNonEmpty!55418 (not condSetEmpty!55425)) setNonEmpty!55425))

(declare-fun b_lambda!282873 () Bool)

(assert (= b_lambda!282871 (or b!7320343 b_lambda!282873)))

(declare-fun bs!1915831 () Bool)

(declare-fun d!2273289 () Bool)

(assert (= bs!1915831 (and d!2273289 b!7320343)))

(assert (=> bs!1915831 (= (dynLambda!29248 lambda!453118 lt!2603849) (select (dynLambda!29247 f!643 lt!2603849) b!25336))))

(declare-fun b_lambda!282875 () Bool)

(assert (=> (not b_lambda!282875) (not bs!1915831)))

(declare-fun t!385677 () Bool)

(declare-fun tb!262279 () Bool)

(assert (=> (and start!714066 (= f!643 f!643) t!385677) tb!262279))

(assert (=> bs!1915831 t!385677))

(declare-fun result!353406 () Bool)

(declare-fun b_and!351615 () Bool)

(assert (= b_and!351613 (and (=> t!385677 result!353406) b_and!351615)))

(declare-fun m!7985412 () Bool)

(assert (=> bs!1915831 m!7985412))

(declare-fun m!7985414 () Bool)

(assert (=> bs!1915831 m!7985414))

(assert (=> d!2273275 d!2273289))

(check-sat (not setNonEmpty!55421) tp_is_empty!47939 (not b_lambda!282867) (not setNonEmpty!55424) (not d!2273267) (not d!2273265) (not d!2273281) (not b_next!134967) (not d!2273285) (not b_lambda!282875) (not setNonEmpty!55425) b_and!351615 (not d!2273261) (not d!2273275) (not tb!262279) (not b_lambda!282873) (not d!2273287) tp_is_empty!47937 (not d!2273263) (not d!2273283))
(check-sat b_and!351615 (not b_next!134967))
