; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1734 () Bool)

(assert start!1734)

(declare-fun b_free!339 () Bool)

(declare-fun b_next!339 () Bool)

(assert (=> start!1734 (= b_free!339 (not b_next!339))))

(declare-fun tp!23503 () Bool)

(declare-fun b_and!341 () Bool)

(assert (=> start!1734 (= tp!23503 b_and!341)))

(declare-fun setNonEmpty!432 () Bool)

(declare-fun setRes!433 () Bool)

(declare-fun tp!23504 () Bool)

(declare-fun tp_is_empty!335 () Bool)

(assert (=> setNonEmpty!432 (= setRes!433 (and tp!23504 tp_is_empty!335))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!167 0))(
  ( (A!168 (val!191 Int)) )
))
(declare-fun s2!449 () (InoxSet A!167))

(declare-fun setElem!433 () A!167)

(declare-fun setRest!433 () (InoxSet A!167))

(assert (=> setNonEmpty!432 (= s2!449 ((_ map or) (store ((as const (Array A!167 Bool)) false) setElem!433 true) setRest!433))))

(declare-fun setNonEmpty!433 () Bool)

(declare-fun setRes!432 () Bool)

(declare-fun tp!23502 () Bool)

(assert (=> setNonEmpty!433 (= setRes!432 (and tp!23502 tp_is_empty!335))))

(declare-fun s1!478 () (InoxSet A!167))

(declare-fun setElem!432 () A!167)

(declare-fun setRest!432 () (InoxSet A!167))

(assert (=> setNonEmpty!433 (= s1!478 ((_ map or) (store ((as const (Array A!167 Bool)) false) setElem!432 true) setRest!432))))

(declare-fun setIsEmpty!432 () Bool)

(assert (=> setIsEmpty!432 setRes!433))

(declare-fun b!34158 () Bool)

(declare-fun e!15715 () Bool)

(declare-fun e!15716 () Bool)

(assert (=> b!34158 (= e!15715 e!15716)))

(declare-fun res!27516 () Bool)

(assert (=> b!34158 (=> (not res!27516) (not e!15716))))

(declare-fun p!1713 () Int)

(declare-fun exists!23 ((InoxSet A!167) Int) Bool)

(assert (=> b!34158 (= res!27516 (exists!23 s2!449 p!1713))))

(declare-datatypes ((Unit!152 0))(
  ( (Unit!153) )
))
(declare-fun lt!2408 () Unit!152)

(declare-fun e!15717 () Unit!152)

(assert (=> b!34158 (= lt!2408 e!15717)))

(declare-fun c!15394 () Bool)

(assert (=> b!34158 (= c!15394 (exists!23 s1!478 p!1713))))

(declare-fun setIsEmpty!433 () Bool)

(assert (=> setIsEmpty!433 setRes!432))

(declare-fun b!34159 () Bool)

(declare-fun Unit!154 () Unit!152)

(assert (=> b!34159 (= e!15717 Unit!154)))

(declare-fun b!34160 () Bool)

(declare-fun lt!2409 () Unit!152)

(assert (=> b!34160 (= e!15717 lt!2409)))

(declare-fun lt!2410 () (InoxSet A!167))

(declare-fun lemmaContainsThenExists!7 ((InoxSet A!167) A!167 Int) Unit!152)

(declare-fun getWitness!14 ((InoxSet A!167) Int) A!167)

(assert (=> b!34160 (= lt!2409 (lemmaContainsThenExists!7 lt!2410 (getWitness!14 s1!478 p!1713) p!1713))))

(assert (=> b!34160 false))

(declare-fun res!27517 () Bool)

(assert (=> start!1734 (=> (not res!27517) (not e!15715))))

(assert (=> start!1734 (= res!27517 (not (exists!23 lt!2410 p!1713)))))

(assert (=> start!1734 (= lt!2410 ((_ map or) s1!478 s2!449))))

(assert (=> start!1734 e!15715))

(declare-fun condSetEmpty!433 () Bool)

(assert (=> start!1734 (= condSetEmpty!433 (= s1!478 ((as const (Array A!167 Bool)) false)))))

(assert (=> start!1734 setRes!432))

(declare-fun condSetEmpty!432 () Bool)

(assert (=> start!1734 (= condSetEmpty!432 (= s2!449 ((as const (Array A!167 Bool)) false)))))

(assert (=> start!1734 setRes!433))

(assert (=> start!1734 tp!23503))

(declare-fun b!34161 () Bool)

(assert (=> b!34161 (= e!15716 (not (select s2!449 (getWitness!14 s2!449 p!1713))))))

(assert (= (and start!1734 res!27517) b!34158))

(assert (= (and b!34158 c!15394) b!34160))

(assert (= (and b!34158 (not c!15394)) b!34159))

(assert (= (and b!34158 res!27516) b!34161))

(assert (= (and start!1734 condSetEmpty!433) setIsEmpty!433))

(assert (= (and start!1734 (not condSetEmpty!433)) setNonEmpty!433))

(assert (= (and start!1734 condSetEmpty!432) setIsEmpty!432))

(assert (= (and start!1734 (not condSetEmpty!432)) setNonEmpty!432))

(declare-fun m!10103 () Bool)

(assert (=> b!34158 m!10103))

(declare-fun m!10105 () Bool)

(assert (=> b!34158 m!10105))

(declare-fun m!10107 () Bool)

(assert (=> b!34160 m!10107))

(assert (=> b!34160 m!10107))

(declare-fun m!10109 () Bool)

(assert (=> b!34160 m!10109))

(declare-fun m!10111 () Bool)

(assert (=> start!1734 m!10111))

(declare-fun m!10113 () Bool)

(assert (=> b!34161 m!10113))

(assert (=> b!34161 m!10113))

(declare-fun m!10115 () Bool)

(assert (=> b!34161 m!10115))

(check-sat (not b!34161) b_and!341 (not b_next!339) (not start!1734) tp_is_empty!335 (not setNonEmpty!433) (not setNonEmpty!432) (not b!34158) (not b!34160))
(check-sat b_and!341 (not b_next!339))
(get-model)

(declare-fun d!3578 () Bool)

(assert (=> d!3578 (exists!23 lt!2410 p!1713)))

(declare-fun lt!2413 () Unit!152)

(declare-fun choose!1132 ((InoxSet A!167) A!167 Int) Unit!152)

(assert (=> d!3578 (= lt!2413 (choose!1132 lt!2410 (getWitness!14 s1!478 p!1713) p!1713))))

(assert (=> d!3578 (select lt!2410 (getWitness!14 s1!478 p!1713))))

(assert (=> d!3578 (= (lemmaContainsThenExists!7 lt!2410 (getWitness!14 s1!478 p!1713) p!1713) lt!2413)))

(declare-fun bs!4565 () Bool)

(assert (= bs!4565 d!3578))

(assert (=> bs!4565 m!10111))

(assert (=> bs!4565 m!10107))

(declare-fun m!10117 () Bool)

(assert (=> bs!4565 m!10117))

(assert (=> bs!4565 m!10107))

(declare-fun m!10119 () Bool)

(assert (=> bs!4565 m!10119))

(assert (=> b!34160 d!3578))

(declare-fun d!3580 () Bool)

(declare-fun e!15721 () Bool)

(assert (=> d!3580 e!15721))

(declare-fun res!27520 () Bool)

(assert (=> d!3580 (=> (not res!27520) (not e!15721))))

(declare-fun lt!2416 () A!167)

(declare-fun dynLambda!38 (Int A!167) Bool)

(assert (=> d!3580 (= res!27520 (dynLambda!38 p!1713 lt!2416))))

(declare-datatypes ((List!287 0))(
  ( (Nil!285) (Cons!285 (h!5681 A!167) (t!14887 List!287)) )
))
(declare-fun getWitness!15 (List!287 Int) A!167)

(declare-fun toList!158 ((InoxSet A!167)) List!287)

(assert (=> d!3580 (= lt!2416 (getWitness!15 (toList!158 s1!478) p!1713))))

(assert (=> d!3580 (exists!23 s1!478 p!1713)))

(assert (=> d!3580 (= (getWitness!14 s1!478 p!1713) lt!2416)))

(declare-fun b!34164 () Bool)

(assert (=> b!34164 (= e!15721 (select s1!478 lt!2416))))

(assert (= (and d!3580 res!27520) b!34164))

(declare-fun b_lambda!169 () Bool)

(assert (=> (not b_lambda!169) (not d!3580)))

(declare-fun t!14882 () Bool)

(declare-fun tb!3 () Bool)

(assert (=> (and start!1734 (= p!1713 p!1713) t!14882) tb!3))

(declare-fun result!330 () Bool)

(assert (=> tb!3 (= result!330 true)))

(assert (=> d!3580 t!14882))

(declare-fun b_and!343 () Bool)

(assert (= b_and!341 (and (=> t!14882 result!330) b_and!343)))

(declare-fun m!10121 () Bool)

(assert (=> d!3580 m!10121))

(declare-fun m!10123 () Bool)

(assert (=> d!3580 m!10123))

(assert (=> d!3580 m!10123))

(declare-fun m!10125 () Bool)

(assert (=> d!3580 m!10125))

(assert (=> d!3580 m!10105))

(declare-fun m!10127 () Bool)

(assert (=> b!34164 m!10127))

(assert (=> b!34160 d!3580))

(declare-fun d!3584 () Bool)

(declare-fun lt!2422 () Bool)

(declare-fun exists!24 (List!287 Int) Bool)

(assert (=> d!3584 (= lt!2422 (exists!24 (toList!158 lt!2410) p!1713))))

(declare-fun choose!1133 ((InoxSet A!167) Int) Bool)

(assert (=> d!3584 (= lt!2422 (choose!1133 lt!2410 p!1713))))

(assert (=> d!3584 (= (exists!23 lt!2410 p!1713) lt!2422)))

(declare-fun bs!4567 () Bool)

(assert (= bs!4567 d!3584))

(declare-fun m!10133 () Bool)

(assert (=> bs!4567 m!10133))

(assert (=> bs!4567 m!10133))

(declare-fun m!10135 () Bool)

(assert (=> bs!4567 m!10135))

(declare-fun m!10137 () Bool)

(assert (=> bs!4567 m!10137))

(assert (=> start!1734 d!3584))

(declare-fun d!3588 () Bool)

(declare-fun e!15723 () Bool)

(assert (=> d!3588 e!15723))

(declare-fun res!27521 () Bool)

(assert (=> d!3588 (=> (not res!27521) (not e!15723))))

(declare-fun lt!2423 () A!167)

(assert (=> d!3588 (= res!27521 (dynLambda!38 p!1713 lt!2423))))

(assert (=> d!3588 (= lt!2423 (getWitness!15 (toList!158 s2!449) p!1713))))

(assert (=> d!3588 (exists!23 s2!449 p!1713)))

(assert (=> d!3588 (= (getWitness!14 s2!449 p!1713) lt!2423)))

(declare-fun b!34165 () Bool)

(assert (=> b!34165 (= e!15723 (select s2!449 lt!2423))))

(assert (= (and d!3588 res!27521) b!34165))

(declare-fun b_lambda!171 () Bool)

(assert (=> (not b_lambda!171) (not d!3588)))

(declare-fun t!14884 () Bool)

(declare-fun tb!5 () Bool)

(assert (=> (and start!1734 (= p!1713 p!1713) t!14884) tb!5))

(declare-fun result!332 () Bool)

(assert (=> tb!5 (= result!332 true)))

(assert (=> d!3588 t!14884))

(declare-fun b_and!345 () Bool)

(assert (= b_and!343 (and (=> t!14884 result!332) b_and!345)))

(declare-fun m!10139 () Bool)

(assert (=> d!3588 m!10139))

(declare-fun m!10141 () Bool)

(assert (=> d!3588 m!10141))

(assert (=> d!3588 m!10141))

(declare-fun m!10143 () Bool)

(assert (=> d!3588 m!10143))

(assert (=> d!3588 m!10103))

(declare-fun m!10145 () Bool)

(assert (=> b!34165 m!10145))

(assert (=> b!34161 d!3588))

(declare-fun d!3590 () Bool)

(declare-fun lt!2424 () Bool)

(assert (=> d!3590 (= lt!2424 (exists!24 (toList!158 s2!449) p!1713))))

(assert (=> d!3590 (= lt!2424 (choose!1133 s2!449 p!1713))))

(assert (=> d!3590 (= (exists!23 s2!449 p!1713) lt!2424)))

(declare-fun bs!4568 () Bool)

(assert (= bs!4568 d!3590))

(assert (=> bs!4568 m!10141))

(assert (=> bs!4568 m!10141))

(declare-fun m!10147 () Bool)

(assert (=> bs!4568 m!10147))

(declare-fun m!10149 () Bool)

(assert (=> bs!4568 m!10149))

(assert (=> b!34158 d!3590))

(declare-fun d!3592 () Bool)

(declare-fun lt!2425 () Bool)

(assert (=> d!3592 (= lt!2425 (exists!24 (toList!158 s1!478) p!1713))))

(assert (=> d!3592 (= lt!2425 (choose!1133 s1!478 p!1713))))

(assert (=> d!3592 (= (exists!23 s1!478 p!1713) lt!2425)))

(declare-fun bs!4569 () Bool)

(assert (= bs!4569 d!3592))

(assert (=> bs!4569 m!10123))

(assert (=> bs!4569 m!10123))

(declare-fun m!10151 () Bool)

(assert (=> bs!4569 m!10151))

(declare-fun m!10153 () Bool)

(assert (=> bs!4569 m!10153))

(assert (=> b!34158 d!3592))

(declare-fun condSetEmpty!436 () Bool)

(assert (=> setNonEmpty!433 (= condSetEmpty!436 (= setRest!432 ((as const (Array A!167 Bool)) false)))))

(declare-fun setRes!436 () Bool)

(assert (=> setNonEmpty!433 (= tp!23502 setRes!436)))

(declare-fun setIsEmpty!436 () Bool)

(assert (=> setIsEmpty!436 setRes!436))

(declare-fun setNonEmpty!436 () Bool)

(declare-fun tp!23507 () Bool)

(assert (=> setNonEmpty!436 (= setRes!436 (and tp!23507 tp_is_empty!335))))

(declare-fun setElem!436 () A!167)

(declare-fun setRest!436 () (InoxSet A!167))

(assert (=> setNonEmpty!436 (= setRest!432 ((_ map or) (store ((as const (Array A!167 Bool)) false) setElem!436 true) setRest!436))))

(assert (= (and setNonEmpty!433 condSetEmpty!436) setIsEmpty!436))

(assert (= (and setNonEmpty!433 (not condSetEmpty!436)) setNonEmpty!436))

(declare-fun condSetEmpty!437 () Bool)

(assert (=> setNonEmpty!432 (= condSetEmpty!437 (= setRest!433 ((as const (Array A!167 Bool)) false)))))

(declare-fun setRes!437 () Bool)

(assert (=> setNonEmpty!432 (= tp!23504 setRes!437)))

(declare-fun setIsEmpty!437 () Bool)

(assert (=> setIsEmpty!437 setRes!437))

(declare-fun setNonEmpty!437 () Bool)

(declare-fun tp!23508 () Bool)

(assert (=> setNonEmpty!437 (= setRes!437 (and tp!23508 tp_is_empty!335))))

(declare-fun setElem!437 () A!167)

(declare-fun setRest!437 () (InoxSet A!167))

(assert (=> setNonEmpty!437 (= setRest!433 ((_ map or) (store ((as const (Array A!167 Bool)) false) setElem!437 true) setRest!437))))

(assert (= (and setNonEmpty!432 condSetEmpty!437) setIsEmpty!437))

(assert (= (and setNonEmpty!432 (not condSetEmpty!437)) setNonEmpty!437))

(declare-fun b_lambda!173 () Bool)

(assert (= b_lambda!169 (or (and start!1734 b_free!339) b_lambda!173)))

(declare-fun b_lambda!175 () Bool)

(assert (= b_lambda!171 (or (and start!1734 b_free!339) b_lambda!175)))

(check-sat (not setNonEmpty!437) (not b_lambda!175) (not d!3588) tp_is_empty!335 (not d!3592) (not d!3578) (not d!3580) b_and!345 (not setNonEmpty!436) (not b_lambda!173) (not d!3590) (not b_next!339) (not d!3584))
(check-sat b_and!345 (not b_next!339))
