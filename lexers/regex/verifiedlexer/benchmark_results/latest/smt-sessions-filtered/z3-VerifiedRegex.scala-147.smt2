; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1754 () Bool)

(assert start!1754)

(declare-fun b_free!347 () Bool)

(declare-fun b_next!347 () Bool)

(assert (=> start!1754 (= b_free!347 (not b_next!347))))

(declare-fun tp!23548 () Bool)

(declare-fun b_and!359 () Bool)

(assert (=> start!1754 (= tp!23548 b_and!359)))

(declare-fun res!27554 () Bool)

(declare-fun e!15757 () Bool)

(assert (=> start!1754 (=> (not res!27554) (not e!15757))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!175 0))(
  ( (A!176 (val!195 Int)) )
))
(declare-fun lt!2469 () (InoxSet A!175))

(declare-fun p!1713 () Int)

(declare-fun exists!29 ((InoxSet A!175) Int) Bool)

(assert (=> start!1754 (= res!27554 (not (exists!29 lt!2469 p!1713)))))

(declare-fun s1!478 () (InoxSet A!175))

(declare-fun s2!449 () (InoxSet A!175))

(assert (=> start!1754 (= lt!2469 ((_ map or) s1!478 s2!449))))

(assert (=> start!1754 e!15757))

(declare-fun condSetEmpty!465 () Bool)

(assert (=> start!1754 (= condSetEmpty!465 (= s1!478 ((as const (Array A!175 Bool)) false)))))

(declare-fun setRes!464 () Bool)

(assert (=> start!1754 setRes!464))

(declare-fun condSetEmpty!464 () Bool)

(assert (=> start!1754 (= condSetEmpty!464 (= s2!449 ((as const (Array A!175 Bool)) false)))))

(declare-fun setRes!465 () Bool)

(assert (=> start!1754 setRes!465))

(assert (=> start!1754 tp!23548))

(declare-fun b!34213 () Bool)

(declare-fun res!27553 () Bool)

(assert (=> b!34213 (=> (not res!27553) (not e!15757))))

(assert (=> b!34213 (= res!27553 (exists!29 s1!478 p!1713))))

(declare-fun setNonEmpty!464 () Bool)

(declare-fun tp!23546 () Bool)

(declare-fun tp_is_empty!343 () Bool)

(assert (=> setNonEmpty!464 (= setRes!464 (and tp!23546 tp_is_empty!343))))

(declare-fun setElem!464 () A!175)

(declare-fun setRest!465 () (InoxSet A!175))

(assert (=> setNonEmpty!464 (= s1!478 ((_ map or) (store ((as const (Array A!175 Bool)) false) setElem!464 true) setRest!465))))

(declare-fun setNonEmpty!465 () Bool)

(declare-fun tp!23547 () Bool)

(assert (=> setNonEmpty!465 (= setRes!465 (and tp!23547 tp_is_empty!343))))

(declare-fun setElem!465 () A!175)

(declare-fun setRest!464 () (InoxSet A!175))

(assert (=> setNonEmpty!465 (= s2!449 ((_ map or) (store ((as const (Array A!175 Bool)) false) setElem!465 true) setRest!464))))

(declare-fun setIsEmpty!464 () Bool)

(assert (=> setIsEmpty!464 setRes!464))

(declare-fun setIsEmpty!465 () Bool)

(assert (=> setIsEmpty!465 setRes!465))

(declare-fun b!34214 () Bool)

(declare-fun e!15756 () Bool)

(declare-fun lt!2470 () A!175)

(declare-fun dynLambda!41 (Int A!175) Bool)

(assert (=> b!34214 (= e!15756 (not (dynLambda!41 p!1713 lt!2470)))))

(declare-fun b!34215 () Bool)

(assert (=> b!34215 (= e!15757 e!15756)))

(declare-fun res!27555 () Bool)

(assert (=> b!34215 (=> (not res!27555) (not e!15756))))

(assert (=> b!34215 (= res!27555 (and (select s1!478 lt!2470) (select lt!2469 lt!2470)))))

(declare-fun getWitness!20 ((InoxSet A!175) Int) A!175)

(assert (=> b!34215 (= lt!2470 (getWitness!20 s1!478 p!1713))))

(assert (= (and start!1754 res!27554) b!34213))

(assert (= (and b!34213 res!27553) b!34215))

(assert (= (and b!34215 res!27555) b!34214))

(assert (= (and start!1754 condSetEmpty!465) setIsEmpty!464))

(assert (= (and start!1754 (not condSetEmpty!465)) setNonEmpty!464))

(assert (= (and start!1754 condSetEmpty!464) setIsEmpty!465))

(assert (= (and start!1754 (not condSetEmpty!464)) setNonEmpty!465))

(declare-fun b_lambda!187 () Bool)

(assert (=> (not b_lambda!187) (not b!34214)))

(declare-fun t!14894 () Bool)

(declare-fun tb!13 () Bool)

(assert (=> (and start!1754 (= p!1713 p!1713) t!14894) tb!13))

(declare-fun result!344 () Bool)

(assert (=> tb!13 (= result!344 true)))

(assert (=> b!34214 t!14894))

(declare-fun b_and!361 () Bool)

(assert (= b_and!359 (and (=> t!14894 result!344) b_and!361)))

(declare-fun m!10229 () Bool)

(assert (=> start!1754 m!10229))

(declare-fun m!10231 () Bool)

(assert (=> b!34213 m!10231))

(declare-fun m!10233 () Bool)

(assert (=> b!34214 m!10233))

(declare-fun m!10235 () Bool)

(assert (=> b!34215 m!10235))

(declare-fun m!10237 () Bool)

(assert (=> b!34215 m!10237))

(declare-fun m!10239 () Bool)

(assert (=> b!34215 m!10239))

(check-sat (not b!34213) b_and!361 (not setNonEmpty!465) tp_is_empty!343 (not b!34215) (not b_lambda!187) (not start!1754) (not b_next!347) (not setNonEmpty!464))
(check-sat b_and!361 (not b_next!347))
(get-model)

(declare-fun b_lambda!189 () Bool)

(assert (= b_lambda!187 (or (and start!1754 b_free!347) b_lambda!189)))

(check-sat (not b!34213) b_and!361 (not setNonEmpty!465) tp_is_empty!343 (not b!34215) (not b_lambda!189) (not start!1754) (not b_next!347) (not setNonEmpty!464))
(check-sat b_and!361 (not b_next!347))
(get-model)

(declare-fun d!3604 () Bool)

(declare-fun lt!2473 () Bool)

(declare-datatypes ((List!289 0))(
  ( (Nil!287) (Cons!287 (h!5683 A!175) (t!14899 List!289)) )
))
(declare-fun exists!30 (List!289 Int) Bool)

(declare-fun toList!160 ((InoxSet A!175)) List!289)

(assert (=> d!3604 (= lt!2473 (exists!30 (toList!160 lt!2469) p!1713))))

(declare-fun choose!1136 ((InoxSet A!175) Int) Bool)

(assert (=> d!3604 (= lt!2473 (choose!1136 lt!2469 p!1713))))

(assert (=> d!3604 (= (exists!29 lt!2469 p!1713) lt!2473)))

(declare-fun bs!4577 () Bool)

(assert (= bs!4577 d!3604))

(declare-fun m!10241 () Bool)

(assert (=> bs!4577 m!10241))

(assert (=> bs!4577 m!10241))

(declare-fun m!10243 () Bool)

(assert (=> bs!4577 m!10243))

(declare-fun m!10245 () Bool)

(assert (=> bs!4577 m!10245))

(assert (=> start!1754 d!3604))

(declare-fun d!3608 () Bool)

(declare-fun lt!2474 () Bool)

(assert (=> d!3608 (= lt!2474 (exists!30 (toList!160 s1!478) p!1713))))

(assert (=> d!3608 (= lt!2474 (choose!1136 s1!478 p!1713))))

(assert (=> d!3608 (= (exists!29 s1!478 p!1713) lt!2474)))

(declare-fun bs!4578 () Bool)

(assert (= bs!4578 d!3608))

(declare-fun m!10247 () Bool)

(assert (=> bs!4578 m!10247))

(assert (=> bs!4578 m!10247))

(declare-fun m!10249 () Bool)

(assert (=> bs!4578 m!10249))

(declare-fun m!10251 () Bool)

(assert (=> bs!4578 m!10251))

(assert (=> b!34213 d!3608))

(declare-fun d!3610 () Bool)

(declare-fun e!15760 () Bool)

(assert (=> d!3610 e!15760))

(declare-fun res!27558 () Bool)

(assert (=> d!3610 (=> (not res!27558) (not e!15760))))

(declare-fun lt!2480 () A!175)

(assert (=> d!3610 (= res!27558 (dynLambda!41 p!1713 lt!2480))))

(declare-fun getWitness!21 (List!289 Int) A!175)

(assert (=> d!3610 (= lt!2480 (getWitness!21 (toList!160 s1!478) p!1713))))

(assert (=> d!3610 (exists!29 s1!478 p!1713)))

(assert (=> d!3610 (= (getWitness!20 s1!478 p!1713) lt!2480)))

(declare-fun b!34218 () Bool)

(assert (=> b!34218 (= e!15760 (select s1!478 lt!2480))))

(assert (= (and d!3610 res!27558) b!34218))

(declare-fun b_lambda!193 () Bool)

(assert (=> (not b_lambda!193) (not d!3610)))

(declare-fun t!14896 () Bool)

(declare-fun tb!15 () Bool)

(assert (=> (and start!1754 (= p!1713 p!1713) t!14896) tb!15))

(declare-fun result!346 () Bool)

(assert (=> tb!15 (= result!346 true)))

(assert (=> d!3610 t!14896))

(declare-fun b_and!363 () Bool)

(assert (= b_and!361 (and (=> t!14896 result!346) b_and!363)))

(declare-fun m!10259 () Bool)

(assert (=> d!3610 m!10259))

(assert (=> d!3610 m!10247))

(assert (=> d!3610 m!10247))

(declare-fun m!10261 () Bool)

(assert (=> d!3610 m!10261))

(assert (=> d!3610 m!10231))

(declare-fun m!10263 () Bool)

(assert (=> b!34218 m!10263))

(assert (=> b!34215 d!3610))

(declare-fun condSetEmpty!468 () Bool)

(assert (=> setNonEmpty!465 (= condSetEmpty!468 (= setRest!464 ((as const (Array A!175 Bool)) false)))))

(declare-fun setRes!468 () Bool)

(assert (=> setNonEmpty!465 (= tp!23547 setRes!468)))

(declare-fun setIsEmpty!468 () Bool)

(assert (=> setIsEmpty!468 setRes!468))

(declare-fun setNonEmpty!468 () Bool)

(declare-fun tp!23551 () Bool)

(assert (=> setNonEmpty!468 (= setRes!468 (and tp!23551 tp_is_empty!343))))

(declare-fun setElem!468 () A!175)

(declare-fun setRest!468 () (InoxSet A!175))

(assert (=> setNonEmpty!468 (= setRest!464 ((_ map or) (store ((as const (Array A!175 Bool)) false) setElem!468 true) setRest!468))))

(assert (= (and setNonEmpty!465 condSetEmpty!468) setIsEmpty!468))

(assert (= (and setNonEmpty!465 (not condSetEmpty!468)) setNonEmpty!468))

(declare-fun condSetEmpty!469 () Bool)

(assert (=> setNonEmpty!464 (= condSetEmpty!469 (= setRest!465 ((as const (Array A!175 Bool)) false)))))

(declare-fun setRes!469 () Bool)

(assert (=> setNonEmpty!464 (= tp!23546 setRes!469)))

(declare-fun setIsEmpty!469 () Bool)

(assert (=> setIsEmpty!469 setRes!469))

(declare-fun setNonEmpty!469 () Bool)

(declare-fun tp!23552 () Bool)

(assert (=> setNonEmpty!469 (= setRes!469 (and tp!23552 tp_is_empty!343))))

(declare-fun setElem!469 () A!175)

(declare-fun setRest!469 () (InoxSet A!175))

(assert (=> setNonEmpty!469 (= setRest!465 ((_ map or) (store ((as const (Array A!175 Bool)) false) setElem!469 true) setRest!469))))

(assert (= (and setNonEmpty!464 condSetEmpty!469) setIsEmpty!469))

(assert (= (and setNonEmpty!464 (not condSetEmpty!469)) setNonEmpty!469))

(declare-fun b_lambda!197 () Bool)

(assert (= b_lambda!193 (or (and start!1754 b_free!347) b_lambda!197)))

(check-sat (not d!3610) (not d!3608) (not b_lambda!197) (not setNonEmpty!468) b_and!363 (not b_lambda!189) (not setNonEmpty!469) (not b_next!347) (not d!3604) tp_is_empty!343)
(check-sat b_and!363 (not b_next!347))
