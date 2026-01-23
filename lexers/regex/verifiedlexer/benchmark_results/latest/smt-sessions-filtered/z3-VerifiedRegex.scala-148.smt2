; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1766 () Bool)

(assert start!1766)

(declare-fun b_free!351 () Bool)

(declare-fun b_next!351 () Bool)

(assert (=> start!1766 (= b_free!351 (not b_next!351))))

(declare-fun tp!23574 () Bool)

(declare-fun b_and!371 () Bool)

(assert (=> start!1766 (= tp!23574 b_and!371)))

(declare-fun b!34251 () Bool)

(declare-datatypes ((Unit!164 0))(
  ( (Unit!165) )
))
(declare-fun e!15786 () Unit!164)

(declare-fun lt!2507 () Unit!164)

(assert (=> b!34251 (= e!15786 lt!2507)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!179 0))(
  ( (A!180 (val!197 Int)) )
))
(declare-fun lt!2506 () (InoxSet A!179))

(declare-fun p!1713 () Int)

(declare-fun s1!478 () (InoxSet A!179))

(declare-fun lemmaContainsThenExists!11 ((InoxSet A!179) A!179 Int) Unit!164)

(declare-fun getWitness!24 ((InoxSet A!179) Int) A!179)

(assert (=> b!34251 (= lt!2507 (lemmaContainsThenExists!11 lt!2506 (getWitness!24 s1!478 p!1713) p!1713))))

(assert (=> b!34251 false))

(declare-fun b!34252 () Bool)

(declare-fun e!15784 () Bool)

(declare-fun e!15787 () Bool)

(assert (=> b!34252 (= e!15784 e!15787)))

(declare-fun res!27579 () Bool)

(assert (=> b!34252 (=> (not res!27579) (not e!15787))))

(declare-fun lt!2508 () A!179)

(declare-fun s2!449 () (InoxSet A!179))

(assert (=> b!34252 (= res!27579 (and (select s2!449 lt!2508) (select lt!2506 lt!2508)))))

(assert (=> b!34252 (= lt!2508 (getWitness!24 s2!449 p!1713))))

(declare-fun setIsEmpty!484 () Bool)

(declare-fun setRes!485 () Bool)

(assert (=> setIsEmpty!484 setRes!485))

(declare-fun b!34253 () Bool)

(declare-fun e!15785 () Bool)

(assert (=> b!34253 (= e!15785 e!15784)))

(declare-fun res!27578 () Bool)

(assert (=> b!34253 (=> (not res!27578) (not e!15784))))

(declare-fun exists!33 ((InoxSet A!179) Int) Bool)

(assert (=> b!34253 (= res!27578 (exists!33 s2!449 p!1713))))

(declare-fun lt!2505 () Unit!164)

(assert (=> b!34253 (= lt!2505 e!15786)))

(declare-fun c!15406 () Bool)

(assert (=> b!34253 (= c!15406 (exists!33 s1!478 p!1713))))

(declare-fun setNonEmpty!484 () Bool)

(declare-fun tp!23573 () Bool)

(declare-fun tp_is_empty!347 () Bool)

(assert (=> setNonEmpty!484 (= setRes!485 (and tp!23573 tp_is_empty!347))))

(declare-fun setElem!484 () A!179)

(declare-fun setRest!484 () (InoxSet A!179))

(assert (=> setNonEmpty!484 (= s1!478 ((_ map or) (store ((as const (Array A!179 Bool)) false) setElem!484 true) setRest!484))))

(declare-fun res!27577 () Bool)

(assert (=> start!1766 (=> (not res!27577) (not e!15785))))

(assert (=> start!1766 (= res!27577 (not (exists!33 lt!2506 p!1713)))))

(assert (=> start!1766 (= lt!2506 ((_ map or) s1!478 s2!449))))

(assert (=> start!1766 e!15785))

(declare-fun condSetEmpty!485 () Bool)

(assert (=> start!1766 (= condSetEmpty!485 (= s1!478 ((as const (Array A!179 Bool)) false)))))

(assert (=> start!1766 setRes!485))

(declare-fun condSetEmpty!484 () Bool)

(assert (=> start!1766 (= condSetEmpty!484 (= s2!449 ((as const (Array A!179 Bool)) false)))))

(declare-fun setRes!484 () Bool)

(assert (=> start!1766 setRes!484))

(assert (=> start!1766 tp!23574))

(declare-fun setIsEmpty!485 () Bool)

(assert (=> setIsEmpty!485 setRes!484))

(declare-fun setNonEmpty!485 () Bool)

(declare-fun tp!23572 () Bool)

(assert (=> setNonEmpty!485 (= setRes!484 (and tp!23572 tp_is_empty!347))))

(declare-fun setElem!485 () A!179)

(declare-fun setRest!485 () (InoxSet A!179))

(assert (=> setNonEmpty!485 (= s2!449 ((_ map or) (store ((as const (Array A!179 Bool)) false) setElem!485 true) setRest!485))))

(declare-fun b!34254 () Bool)

(declare-fun Unit!166 () Unit!164)

(assert (=> b!34254 (= e!15786 Unit!166)))

(declare-fun b!34255 () Bool)

(declare-fun dynLambda!43 (Int A!179) Bool)

(assert (=> b!34255 (= e!15787 (not (dynLambda!43 p!1713 lt!2508)))))

(assert (= (and start!1766 res!27577) b!34253))

(assert (= (and b!34253 c!15406) b!34251))

(assert (= (and b!34253 (not c!15406)) b!34254))

(assert (= (and b!34253 res!27578) b!34252))

(assert (= (and b!34252 res!27579) b!34255))

(assert (= (and start!1766 condSetEmpty!485) setIsEmpty!484))

(assert (= (and start!1766 (not condSetEmpty!485)) setNonEmpty!484))

(assert (= (and start!1766 condSetEmpty!484) setIsEmpty!485))

(assert (= (and start!1766 (not condSetEmpty!484)) setNonEmpty!485))

(declare-fun b_lambda!203 () Bool)

(assert (=> (not b_lambda!203) (not b!34255)))

(declare-fun t!14904 () Bool)

(declare-fun tb!21 () Bool)

(assert (=> (and start!1766 (= p!1713 p!1713) t!14904) tb!21))

(declare-fun result!356 () Bool)

(assert (=> tb!21 (= result!356 true)))

(assert (=> b!34255 t!14904))

(declare-fun b_and!373 () Bool)

(assert (= b_and!371 (and (=> t!14904 result!356) b_and!373)))

(declare-fun m!10295 () Bool)

(assert (=> b!34255 m!10295))

(declare-fun m!10297 () Bool)

(assert (=> b!34251 m!10297))

(assert (=> b!34251 m!10297))

(declare-fun m!10299 () Bool)

(assert (=> b!34251 m!10299))

(declare-fun m!10301 () Bool)

(assert (=> b!34252 m!10301))

(declare-fun m!10303 () Bool)

(assert (=> b!34252 m!10303))

(declare-fun m!10305 () Bool)

(assert (=> b!34252 m!10305))

(declare-fun m!10307 () Bool)

(assert (=> b!34253 m!10307))

(declare-fun m!10309 () Bool)

(assert (=> b!34253 m!10309))

(declare-fun m!10311 () Bool)

(assert (=> start!1766 m!10311))

(check-sat (not b_next!351) (not b!34253) (not b_lambda!203) (not b!34252) (not b!34251) tp_is_empty!347 b_and!373 (not setNonEmpty!485) (not setNonEmpty!484) (not start!1766))
(check-sat b_and!373 (not b_next!351))
(get-model)

(declare-fun b_lambda!207 () Bool)

(assert (= b_lambda!203 (or (and start!1766 b_free!351) b_lambda!207)))

(check-sat (not b_next!351) (not b!34253) (not b_lambda!207) (not b!34252) (not b!34251) tp_is_empty!347 b_and!373 (not setNonEmpty!485) (not setNonEmpty!484) (not start!1766))
(check-sat b_and!373 (not b_next!351))
(get-model)

(declare-fun d!3617 () Bool)

(declare-fun e!15791 () Bool)

(assert (=> d!3617 e!15791))

(declare-fun res!27582 () Bool)

(assert (=> d!3617 (=> (not res!27582) (not e!15791))))

(declare-fun lt!2513 () A!179)

(assert (=> d!3617 (= res!27582 (dynLambda!43 p!1713 lt!2513))))

(declare-datatypes ((List!291 0))(
  ( (Nil!289) (Cons!289 (h!5685 A!179) (t!14913 List!291)) )
))
(declare-fun getWitness!25 (List!291 Int) A!179)

(declare-fun toList!162 ((InoxSet A!179)) List!291)

(assert (=> d!3617 (= lt!2513 (getWitness!25 (toList!162 s2!449) p!1713))))

(assert (=> d!3617 (exists!33 s2!449 p!1713)))

(assert (=> d!3617 (= (getWitness!24 s2!449 p!1713) lt!2513)))

(declare-fun b!34258 () Bool)

(assert (=> b!34258 (= e!15791 (select s2!449 lt!2513))))

(assert (= (and d!3617 res!27582) b!34258))

(declare-fun b_lambda!209 () Bool)

(assert (=> (not b_lambda!209) (not d!3617)))

(declare-fun t!14906 () Bool)

(declare-fun tb!23 () Bool)

(assert (=> (and start!1766 (= p!1713 p!1713) t!14906) tb!23))

(declare-fun result!358 () Bool)

(assert (=> tb!23 (= result!358 true)))

(assert (=> d!3617 t!14906))

(declare-fun b_and!375 () Bool)

(assert (= b_and!373 (and (=> t!14906 result!358) b_and!375)))

(declare-fun m!10317 () Bool)

(assert (=> d!3617 m!10317))

(declare-fun m!10319 () Bool)

(assert (=> d!3617 m!10319))

(assert (=> d!3617 m!10319))

(declare-fun m!10321 () Bool)

(assert (=> d!3617 m!10321))

(assert (=> d!3617 m!10307))

(declare-fun m!10323 () Bool)

(assert (=> b!34258 m!10323))

(assert (=> b!34252 d!3617))

(declare-fun d!3623 () Bool)

(declare-fun lt!2517 () Bool)

(declare-fun exists!34 (List!291 Int) Bool)

(assert (=> d!3623 (= lt!2517 (exists!34 (toList!162 s2!449) p!1713))))

(declare-fun choose!1139 ((InoxSet A!179) Int) Bool)

(assert (=> d!3623 (= lt!2517 (choose!1139 s2!449 p!1713))))

(assert (=> d!3623 (= (exists!33 s2!449 p!1713) lt!2517)))

(declare-fun bs!4584 () Bool)

(assert (= bs!4584 d!3623))

(assert (=> bs!4584 m!10319))

(assert (=> bs!4584 m!10319))

(declare-fun m!10325 () Bool)

(assert (=> bs!4584 m!10325))

(declare-fun m!10327 () Bool)

(assert (=> bs!4584 m!10327))

(assert (=> b!34253 d!3623))

(declare-fun d!3625 () Bool)

(declare-fun lt!2518 () Bool)

(assert (=> d!3625 (= lt!2518 (exists!34 (toList!162 s1!478) p!1713))))

(assert (=> d!3625 (= lt!2518 (choose!1139 s1!478 p!1713))))

(assert (=> d!3625 (= (exists!33 s1!478 p!1713) lt!2518)))

(declare-fun bs!4585 () Bool)

(assert (= bs!4585 d!3625))

(declare-fun m!10329 () Bool)

(assert (=> bs!4585 m!10329))

(assert (=> bs!4585 m!10329))

(declare-fun m!10331 () Bool)

(assert (=> bs!4585 m!10331))

(declare-fun m!10333 () Bool)

(assert (=> bs!4585 m!10333))

(assert (=> b!34253 d!3625))

(declare-fun d!3627 () Bool)

(assert (=> d!3627 (exists!33 lt!2506 p!1713)))

(declare-fun lt!2525 () Unit!164)

(declare-fun choose!1140 ((InoxSet A!179) A!179 Int) Unit!164)

(assert (=> d!3627 (= lt!2525 (choose!1140 lt!2506 (getWitness!24 s1!478 p!1713) p!1713))))

(assert (=> d!3627 (select lt!2506 (getWitness!24 s1!478 p!1713))))

(assert (=> d!3627 (= (lemmaContainsThenExists!11 lt!2506 (getWitness!24 s1!478 p!1713) p!1713) lt!2525)))

(declare-fun bs!4586 () Bool)

(assert (= bs!4586 d!3627))

(assert (=> bs!4586 m!10311))

(assert (=> bs!4586 m!10297))

(declare-fun m!10349 () Bool)

(assert (=> bs!4586 m!10349))

(assert (=> bs!4586 m!10297))

(declare-fun m!10351 () Bool)

(assert (=> bs!4586 m!10351))

(assert (=> b!34251 d!3627))

(declare-fun d!3631 () Bool)

(declare-fun e!15797 () Bool)

(assert (=> d!3631 e!15797))

(declare-fun res!27587 () Bool)

(assert (=> d!3631 (=> (not res!27587) (not e!15797))))

(declare-fun lt!2526 () A!179)

(assert (=> d!3631 (= res!27587 (dynLambda!43 p!1713 lt!2526))))

(assert (=> d!3631 (= lt!2526 (getWitness!25 (toList!162 s1!478) p!1713))))

(assert (=> d!3631 (exists!33 s1!478 p!1713)))

(assert (=> d!3631 (= (getWitness!24 s1!478 p!1713) lt!2526)))

(declare-fun b!34263 () Bool)

(assert (=> b!34263 (= e!15797 (select s1!478 lt!2526))))

(assert (= (and d!3631 res!27587) b!34263))

(declare-fun b_lambda!215 () Bool)

(assert (=> (not b_lambda!215) (not d!3631)))

(declare-fun t!14912 () Bool)

(declare-fun tb!29 () Bool)

(assert (=> (and start!1766 (= p!1713 p!1713) t!14912) tb!29))

(declare-fun result!364 () Bool)

(assert (=> tb!29 (= result!364 true)))

(assert (=> d!3631 t!14912))

(declare-fun b_and!381 () Bool)

(assert (= b_and!375 (and (=> t!14912 result!364) b_and!381)))

(declare-fun m!10355 () Bool)

(assert (=> d!3631 m!10355))

(assert (=> d!3631 m!10329))

(assert (=> d!3631 m!10329))

(declare-fun m!10357 () Bool)

(assert (=> d!3631 m!10357))

(assert (=> d!3631 m!10309))

(declare-fun m!10359 () Bool)

(assert (=> b!34263 m!10359))

(assert (=> b!34251 d!3631))

(declare-fun d!3635 () Bool)

(declare-fun lt!2527 () Bool)

(assert (=> d!3635 (= lt!2527 (exists!34 (toList!162 lt!2506) p!1713))))

(assert (=> d!3635 (= lt!2527 (choose!1139 lt!2506 p!1713))))

(assert (=> d!3635 (= (exists!33 lt!2506 p!1713) lt!2527)))

(declare-fun bs!4587 () Bool)

(assert (= bs!4587 d!3635))

(declare-fun m!10361 () Bool)

(assert (=> bs!4587 m!10361))

(assert (=> bs!4587 m!10361))

(declare-fun m!10363 () Bool)

(assert (=> bs!4587 m!10363))

(declare-fun m!10365 () Bool)

(assert (=> bs!4587 m!10365))

(assert (=> start!1766 d!3635))

(declare-fun condSetEmpty!488 () Bool)

(assert (=> setNonEmpty!484 (= condSetEmpty!488 (= setRest!484 ((as const (Array A!179 Bool)) false)))))

(declare-fun setRes!488 () Bool)

(assert (=> setNonEmpty!484 (= tp!23573 setRes!488)))

(declare-fun setIsEmpty!488 () Bool)

(assert (=> setIsEmpty!488 setRes!488))

(declare-fun setNonEmpty!488 () Bool)

(declare-fun tp!23577 () Bool)

(assert (=> setNonEmpty!488 (= setRes!488 (and tp!23577 tp_is_empty!347))))

(declare-fun setElem!488 () A!179)

(declare-fun setRest!488 () (InoxSet A!179))

(assert (=> setNonEmpty!488 (= setRest!484 ((_ map or) (store ((as const (Array A!179 Bool)) false) setElem!488 true) setRest!488))))

(assert (= (and setNonEmpty!484 condSetEmpty!488) setIsEmpty!488))

(assert (= (and setNonEmpty!484 (not condSetEmpty!488)) setNonEmpty!488))

(declare-fun condSetEmpty!489 () Bool)

(assert (=> setNonEmpty!485 (= condSetEmpty!489 (= setRest!485 ((as const (Array A!179 Bool)) false)))))

(declare-fun setRes!489 () Bool)

(assert (=> setNonEmpty!485 (= tp!23572 setRes!489)))

(declare-fun setIsEmpty!489 () Bool)

(assert (=> setIsEmpty!489 setRes!489))

(declare-fun setNonEmpty!489 () Bool)

(declare-fun tp!23578 () Bool)

(assert (=> setNonEmpty!489 (= setRes!489 (and tp!23578 tp_is_empty!347))))

(declare-fun setElem!489 () A!179)

(declare-fun setRest!489 () (InoxSet A!179))

(assert (=> setNonEmpty!489 (= setRest!485 ((_ map or) (store ((as const (Array A!179 Bool)) false) setElem!489 true) setRest!489))))

(assert (= (and setNonEmpty!485 condSetEmpty!489) setIsEmpty!489))

(assert (= (and setNonEmpty!485 (not condSetEmpty!489)) setNonEmpty!489))

(declare-fun b_lambda!217 () Bool)

(assert (= b_lambda!215 (or (and start!1766 b_free!351) b_lambda!217)))

(declare-fun b_lambda!219 () Bool)

(assert (= b_lambda!209 (or (and start!1766 b_free!351) b_lambda!219)))

(check-sat (not b_next!351) (not b_lambda!219) (not d!3631) (not b_lambda!217) (not d!3625) (not d!3635) (not setNonEmpty!489) (not setNonEmpty!488) tp_is_empty!347 (not d!3623) (not d!3627) (not b_lambda!207) b_and!381 (not d!3617))
(check-sat b_and!381 (not b_next!351))
