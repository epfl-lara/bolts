; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714286 () Bool)

(assert start!714286)

(declare-fun b_free!134245 () Bool)

(declare-fun b_next!135035 () Bool)

(assert (=> start!714286 (= b_free!134245 (not b_next!135035))))

(declare-fun tp!2079476 () Bool)

(declare-fun b_and!351737 () Bool)

(assert (=> start!714286 (= tp!2079476 b_and!351737)))

(declare-fun b!7321120 () Bool)

(assert (=> b!7321120 true))

(assert (=> b!7321120 true))

(declare-fun lambda!453441 () Int)

(declare-fun order!29371 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29369 () Int)

(declare-fun dynLambda!29338 (Int Int) Int)

(declare-fun dynLambda!29339 (Int Int) Int)

(assert (=> b!7321120 (< (dynLambda!29338 order!29369 f!643) (dynLambda!29339 order!29371 lambda!453441))))

(declare-fun setIsEmpty!55731 () Bool)

(declare-fun setRes!55731 () Bool)

(assert (=> setIsEmpty!55731 setRes!55731))

(declare-fun e!4383372 () Bool)

(declare-fun b!7321116 () Bool)

(declare-datatypes ((B!3793 0))(
  ( (B!3794 (val!29411 Int)) )
))
(declare-fun b!25336 () B!3793)

(declare-datatypes ((A!1091 0))(
  ( (A!1092 (val!29412 Int)) )
))
(declare-fun lt!2604449 () A!1091)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun dynLambda!29340 (Int A!1091) (InoxSet B!3793))

(assert (=> b!7321116 (= e!4383372 (select (dynLambda!29340 f!643 lt!2604449) b!25336))))

(declare-fun setNonEmpty!55731 () Bool)

(declare-fun tp!2079477 () Bool)

(declare-fun tp_is_empty!48073 () Bool)

(assert (=> setNonEmpty!55731 (= setRes!55731 (and tp!2079477 tp_is_empty!48073))))

(declare-fun s2!405 () (InoxSet A!1091))

(declare-fun setElem!55731 () A!1091)

(declare-fun setRest!55731 () (InoxSet A!1091))

(assert (=> setNonEmpty!55731 (= s2!405 ((_ map or) (store ((as const (Array A!1091 Bool)) false) setElem!55731 true) setRest!55731))))

(declare-fun b!7321117 () Bool)

(declare-fun e!4383375 () Bool)

(assert (=> b!7321117 (= e!4383375 e!4383372)))

(declare-fun res!2959096 () Bool)

(assert (=> b!7321117 (=> res!2959096 e!4383372)))

(declare-fun lt!2604448 () Bool)

(assert (=> b!7321117 (= res!2959096 (or (and (not lt!2604448) (not (select s2!405 lt!2604449))) lt!2604448 (not (select s2!405 lt!2604449))))))

(declare-fun s1!434 () (InoxSet A!1091))

(assert (=> b!7321117 (= lt!2604448 (select s1!434 lt!2604449))))

(declare-fun lt!2604447 () (InoxSet A!1091))

(declare-fun getWitness!2409 ((InoxSet A!1091) Int) A!1091)

(assert (=> b!7321117 (= lt!2604449 (getWitness!2409 lt!2604447 lambda!453441))))

(declare-fun b!7321118 () Bool)

(declare-fun e!4383376 () Bool)

(declare-fun e!4383378 () Bool)

(assert (=> b!7321118 (= e!4383376 e!4383378)))

(declare-fun res!2959099 () Bool)

(assert (=> b!7321118 (=> res!2959099 e!4383378)))

(declare-fun flatMap!3165 ((InoxSet A!1091) Int) (InoxSet B!3793))

(assert (=> b!7321118 (= res!2959099 (not (select (flatMap!3165 lt!2604447 f!643) b!25336)))))

(assert (=> b!7321118 (= lt!2604447 ((_ map or) s1!434 s2!405))))

(declare-fun b!7321119 () Bool)

(assert (=> b!7321119 (= e!4383378 e!4383375)))

(declare-fun res!2959101 () Bool)

(assert (=> b!7321119 (=> res!2959101 e!4383375)))

(declare-fun exists!4696 ((InoxSet A!1091) Int) Bool)

(assert (=> b!7321119 (= res!2959101 (not (exists!4696 lt!2604447 lambda!453441)))))

(declare-fun lt!2604446 () A!1091)

(declare-fun flatMapPost!166 ((InoxSet A!1091) Int B!3793) A!1091)

(assert (=> b!7321119 (= (flatMapPost!166 lt!2604447 f!643 b!25336) lt!2604446)))

(declare-fun res!2959094 () Bool)

(declare-fun e!4383377 () Bool)

(assert (=> start!714286 (=> (not res!2959094) (not e!4383377))))

(declare-fun lt!2604451 () (InoxSet B!3793))

(assert (=> start!714286 (= res!2959094 (not (select lt!2604451 b!25336)))))

(assert (=> start!714286 (= lt!2604451 (flatMap!3165 s1!434 f!643))))

(assert (=> start!714286 e!4383377))

(declare-fun condSetEmpty!55732 () Bool)

(assert (=> start!714286 (= condSetEmpty!55732 (= s2!405 ((as const (Array A!1091 Bool)) false)))))

(assert (=> start!714286 setRes!55731))

(declare-fun tp_is_empty!48075 () Bool)

(assert (=> start!714286 tp_is_empty!48075))

(declare-fun condSetEmpty!55731 () Bool)

(assert (=> start!714286 (= condSetEmpty!55731 (= s1!434 ((as const (Array A!1091 Bool)) false)))))

(declare-fun setRes!55732 () Bool)

(assert (=> start!714286 setRes!55732))

(assert (=> start!714286 tp!2079476))

(declare-fun e!4383374 () Bool)

(assert (=> b!7321120 (= e!4383374 (not e!4383376))))

(declare-fun res!2959095 () Bool)

(assert (=> b!7321120 (=> res!2959095 e!4383376)))

(assert (=> b!7321120 (= res!2959095 (exists!4696 s1!434 lambda!453441))))

(declare-fun e!4383373 () Bool)

(assert (=> b!7321120 e!4383373))

(declare-fun res!2959098 () Bool)

(assert (=> b!7321120 (=> (not res!2959098) (not e!4383373))))

(assert (=> b!7321120 (= res!2959098 (= (flatMapPost!166 s1!434 f!643 b!25336) lt!2604446))))

(declare-fun empty!3383 () A!1091)

(assert (=> b!7321120 (= lt!2604446 empty!3383)))

(assert (=> b!7321120 true))

(assert (=> b!7321120 tp_is_empty!48073))

(declare-fun b!7321121 () Bool)

(assert (=> b!7321121 (= e!4383377 e!4383374)))

(declare-fun res!2959097 () Bool)

(assert (=> b!7321121 (=> (not res!2959097) (not e!4383374))))

(declare-fun lt!2604450 () (InoxSet B!3793))

(assert (=> b!7321121 (= res!2959097 (and (not (select lt!2604450 b!25336)) (not (select ((_ map or) lt!2604451 lt!2604450) b!25336))))))

(assert (=> b!7321121 (= lt!2604450 (flatMap!3165 s2!405 f!643))))

(declare-fun b!7321122 () Bool)

(assert (=> b!7321122 (= e!4383373 (= (flatMapPost!166 s2!405 f!643 b!25336) lt!2604446))))

(declare-fun setNonEmpty!55732 () Bool)

(declare-fun tp!2079478 () Bool)

(assert (=> setNonEmpty!55732 (= setRes!55732 (and tp!2079478 tp_is_empty!48073))))

(declare-fun setElem!55732 () A!1091)

(declare-fun setRest!55732 () (InoxSet A!1091))

(assert (=> setNonEmpty!55732 (= s1!434 ((_ map or) (store ((as const (Array A!1091 Bool)) false) setElem!55732 true) setRest!55732))))

(declare-fun b!7321123 () Bool)

(declare-fun res!2959100 () Bool)

(assert (=> b!7321123 (=> res!2959100 e!4383376)))

(assert (=> b!7321123 (= res!2959100 (exists!4696 s2!405 lambda!453441))))

(declare-fun setIsEmpty!55732 () Bool)

(assert (=> setIsEmpty!55732 setRes!55732))

(assert (= (and start!714286 res!2959094) b!7321121))

(assert (= (and b!7321121 res!2959097) b!7321120))

(assert (= (and b!7321120 res!2959098) b!7321122))

(assert (= (and b!7321120 (not res!2959095)) b!7321123))

(assert (= (and b!7321123 (not res!2959100)) b!7321118))

(assert (= (and b!7321118 (not res!2959099)) b!7321119))

(assert (= (and b!7321119 (not res!2959101)) b!7321117))

(assert (= (and b!7321117 (not res!2959096)) b!7321116))

(assert (= (and start!714286 condSetEmpty!55732) setIsEmpty!55731))

(assert (= (and start!714286 (not condSetEmpty!55732)) setNonEmpty!55731))

(assert (= (and start!714286 condSetEmpty!55731) setIsEmpty!55732))

(assert (= (and start!714286 (not condSetEmpty!55731)) setNonEmpty!55732))

(declare-fun b_lambda!282991 () Bool)

(assert (=> (not b_lambda!282991) (not b!7321116)))

(declare-fun t!385751 () Bool)

(declare-fun tb!262335 () Bool)

(assert (=> (and start!714286 (= f!643 f!643) t!385751) tb!262335))

(assert (=> b!7321116 t!385751))

(declare-fun result!353518 () Bool)

(declare-fun b_and!351739 () Bool)

(assert (= b_and!351737 (and (=> t!385751 result!353518) b_and!351739)))

(declare-fun m!7986824 () Bool)

(assert (=> b!7321118 m!7986824))

(declare-fun m!7986826 () Bool)

(assert (=> b!7321118 m!7986826))

(declare-fun m!7986828 () Bool)

(assert (=> start!714286 m!7986828))

(declare-fun m!7986830 () Bool)

(assert (=> start!714286 m!7986830))

(declare-fun m!7986832 () Bool)

(assert (=> b!7321123 m!7986832))

(declare-fun m!7986834 () Bool)

(assert (=> b!7321117 m!7986834))

(declare-fun m!7986836 () Bool)

(assert (=> b!7321117 m!7986836))

(declare-fun m!7986838 () Bool)

(assert (=> b!7321117 m!7986838))

(declare-fun m!7986840 () Bool)

(assert (=> b!7321120 m!7986840))

(declare-fun m!7986842 () Bool)

(assert (=> b!7321120 m!7986842))

(declare-fun m!7986844 () Bool)

(assert (=> b!7321122 m!7986844))

(declare-fun m!7986846 () Bool)

(assert (=> b!7321116 m!7986846))

(declare-fun m!7986848 () Bool)

(assert (=> b!7321116 m!7986848))

(declare-fun m!7986850 () Bool)

(assert (=> b!7321119 m!7986850))

(declare-fun m!7986852 () Bool)

(assert (=> b!7321119 m!7986852))

(declare-fun m!7986854 () Bool)

(assert (=> b!7321121 m!7986854))

(declare-fun m!7986856 () Bool)

(assert (=> b!7321121 m!7986856))

(declare-fun m!7986858 () Bool)

(assert (=> b!7321121 m!7986858))

(check-sat (not b!7321119) (not b_lambda!282991) (not b!7321122) (not tb!262335) (not b!7321117) (not setNonEmpty!55731) (not b!7321121) (not b!7321118) tp_is_empty!48075 (not start!714286) (not b_next!135035) tp_is_empty!48073 (not b!7321120) (not setNonEmpty!55732) b_and!351739 (not b!7321123))
(check-sat b_and!351739 (not b_next!135035))
(get-model)

(declare-fun b_lambda!282993 () Bool)

(assert (= b_lambda!282991 (or (and start!714286 b_free!134245) b_lambda!282993)))

(check-sat (not b!7321119) (not b!7321122) (not tb!262335) (not b!7321117) (not setNonEmpty!55731) (not b!7321121) (not b!7321118) tp_is_empty!48075 (not start!714286) (not b_next!135035) (not b!7321120) (not setNonEmpty!55732) (not b_lambda!282993) tp_is_empty!48073 b_and!351739 (not b!7321123))
(check-sat b_and!351739 (not b_next!135035))
(get-model)

(declare-fun d!2273584 () Bool)

(declare-fun lt!2604454 () Bool)

(declare-datatypes ((List!71427 0))(
  ( (Nil!71303) (Cons!71303 (h!77751 A!1091) (t!385754 List!71427)) )
))
(declare-fun exists!4697 (List!71427 Int) Bool)

(declare-fun toList!11714 ((InoxSet A!1091)) List!71427)

(assert (=> d!2273584 (= lt!2604454 (exists!4697 (toList!11714 s1!434) lambda!453441))))

(declare-fun choose!56926 ((InoxSet A!1091) Int) Bool)

(assert (=> d!2273584 (= lt!2604454 (choose!56926 s1!434 lambda!453441))))

(assert (=> d!2273584 (= (exists!4696 s1!434 lambda!453441) lt!2604454)))

(declare-fun bs!1916053 () Bool)

(assert (= bs!1916053 d!2273584))

(declare-fun m!7986860 () Bool)

(assert (=> bs!1916053 m!7986860))

(assert (=> bs!1916053 m!7986860))

(declare-fun m!7986862 () Bool)

(assert (=> bs!1916053 m!7986862))

(declare-fun m!7986864 () Bool)

(assert (=> bs!1916053 m!7986864))

(assert (=> b!7321120 d!2273584))

(declare-fun bs!1916054 () Bool)

(declare-fun d!2273586 () Bool)

(assert (= bs!1916054 (and d!2273586 b!7321120)))

(declare-fun lambda!453444 () Int)

(assert (=> bs!1916054 (= lambda!453444 lambda!453441)))

(assert (=> d!2273586 true))

(assert (=> d!2273586 true))

(assert (=> d!2273586 (< (dynLambda!29338 order!29369 f!643) (dynLambda!29339 order!29371 lambda!453444))))

(assert (=> d!2273586 (= (select (flatMap!3165 s1!434 f!643) b!25336) (exists!4696 s1!434 lambda!453444))))

(declare-fun lt!2604457 () A!1091)

(declare-fun choose!56927 ((InoxSet A!1091) Int B!3793) A!1091)

(assert (=> d!2273586 (= lt!2604457 (choose!56927 s1!434 f!643 b!25336))))

(assert (=> d!2273586 (= (flatMapPost!166 s1!434 f!643 b!25336) lt!2604457)))

(declare-fun bs!1916055 () Bool)

(assert (= bs!1916055 d!2273586))

(assert (=> bs!1916055 m!7986830))

(declare-fun m!7986866 () Bool)

(assert (=> bs!1916055 m!7986866))

(declare-fun m!7986868 () Bool)

(assert (=> bs!1916055 m!7986868))

(declare-fun m!7986870 () Bool)

(assert (=> bs!1916055 m!7986870))

(assert (=> b!7321120 d!2273586))

(declare-fun d!2273588 () Bool)

(declare-fun lt!2604458 () Bool)

(assert (=> d!2273588 (= lt!2604458 (exists!4697 (toList!11714 lt!2604447) lambda!453441))))

(assert (=> d!2273588 (= lt!2604458 (choose!56926 lt!2604447 lambda!453441))))

(assert (=> d!2273588 (= (exists!4696 lt!2604447 lambda!453441) lt!2604458)))

(declare-fun bs!1916056 () Bool)

(assert (= bs!1916056 d!2273588))

(declare-fun m!7986872 () Bool)

(assert (=> bs!1916056 m!7986872))

(assert (=> bs!1916056 m!7986872))

(declare-fun m!7986874 () Bool)

(assert (=> bs!1916056 m!7986874))

(declare-fun m!7986876 () Bool)

(assert (=> bs!1916056 m!7986876))

(assert (=> b!7321119 d!2273588))

(declare-fun bs!1916057 () Bool)

(declare-fun d!2273590 () Bool)

(assert (= bs!1916057 (and d!2273590 b!7321120)))

(declare-fun lambda!453445 () Int)

(assert (=> bs!1916057 (= lambda!453445 lambda!453441)))

(declare-fun bs!1916058 () Bool)

(assert (= bs!1916058 (and d!2273590 d!2273586)))

(assert (=> bs!1916058 (= lambda!453445 lambda!453444)))

(assert (=> d!2273590 true))

(assert (=> d!2273590 true))

(assert (=> d!2273590 (< (dynLambda!29338 order!29369 f!643) (dynLambda!29339 order!29371 lambda!453445))))

(assert (=> d!2273590 (= (select (flatMap!3165 lt!2604447 f!643) b!25336) (exists!4696 lt!2604447 lambda!453445))))

(declare-fun lt!2604459 () A!1091)

(assert (=> d!2273590 (= lt!2604459 (choose!56927 lt!2604447 f!643 b!25336))))

(assert (=> d!2273590 (= (flatMapPost!166 lt!2604447 f!643 b!25336) lt!2604459)))

(declare-fun bs!1916059 () Bool)

(assert (= bs!1916059 d!2273590))

(assert (=> bs!1916059 m!7986824))

(assert (=> bs!1916059 m!7986826))

(declare-fun m!7986878 () Bool)

(assert (=> bs!1916059 m!7986878))

(declare-fun m!7986880 () Bool)

(assert (=> bs!1916059 m!7986880))

(assert (=> b!7321119 d!2273590))

(declare-fun d!2273592 () Bool)

(declare-fun lt!2604460 () Bool)

(assert (=> d!2273592 (= lt!2604460 (exists!4697 (toList!11714 s2!405) lambda!453441))))

(assert (=> d!2273592 (= lt!2604460 (choose!56926 s2!405 lambda!453441))))

(assert (=> d!2273592 (= (exists!4696 s2!405 lambda!453441) lt!2604460)))

(declare-fun bs!1916060 () Bool)

(assert (= bs!1916060 d!2273592))

(declare-fun m!7986882 () Bool)

(assert (=> bs!1916060 m!7986882))

(assert (=> bs!1916060 m!7986882))

(declare-fun m!7986884 () Bool)

(assert (=> bs!1916060 m!7986884))

(declare-fun m!7986886 () Bool)

(assert (=> bs!1916060 m!7986886))

(assert (=> b!7321123 d!2273592))

(declare-fun d!2273594 () Bool)

(declare-fun choose!56928 ((InoxSet A!1091) Int) (InoxSet B!3793))

(assert (=> d!2273594 (= (flatMap!3165 lt!2604447 f!643) (choose!56928 lt!2604447 f!643))))

(declare-fun bs!1916061 () Bool)

(assert (= bs!1916061 d!2273594))

(declare-fun m!7986888 () Bool)

(assert (=> bs!1916061 m!7986888))

(assert (=> b!7321118 d!2273594))

(declare-fun d!2273596 () Bool)

(assert (=> d!2273596 (= (flatMap!3165 s1!434 f!643) (choose!56928 s1!434 f!643))))

(declare-fun bs!1916062 () Bool)

(assert (= bs!1916062 d!2273596))

(declare-fun m!7986890 () Bool)

(assert (=> bs!1916062 m!7986890))

(assert (=> start!714286 d!2273596))

(declare-fun d!2273598 () Bool)

(declare-fun e!4383381 () Bool)

(assert (=> d!2273598 e!4383381))

(declare-fun res!2959104 () Bool)

(assert (=> d!2273598 (=> (not res!2959104) (not e!4383381))))

(declare-fun lt!2604463 () A!1091)

(declare-fun dynLambda!29341 (Int A!1091) Bool)

(assert (=> d!2273598 (= res!2959104 (dynLambda!29341 lambda!453441 lt!2604463))))

(declare-fun getWitness!2410 (List!71427 Int) A!1091)

(assert (=> d!2273598 (= lt!2604463 (getWitness!2410 (toList!11714 lt!2604447) lambda!453441))))

(assert (=> d!2273598 (exists!4696 lt!2604447 lambda!453441)))

(assert (=> d!2273598 (= (getWitness!2409 lt!2604447 lambda!453441) lt!2604463)))

(declare-fun b!7321131 () Bool)

(assert (=> b!7321131 (= e!4383381 (select lt!2604447 lt!2604463))))

(assert (= (and d!2273598 res!2959104) b!7321131))

(declare-fun b_lambda!282997 () Bool)

(assert (=> (not b_lambda!282997) (not d!2273598)))

(declare-fun m!7986892 () Bool)

(assert (=> d!2273598 m!7986892))

(assert (=> d!2273598 m!7986872))

(assert (=> d!2273598 m!7986872))

(declare-fun m!7986894 () Bool)

(assert (=> d!2273598 m!7986894))

(assert (=> d!2273598 m!7986850))

(declare-fun m!7986896 () Bool)

(assert (=> b!7321131 m!7986896))

(assert (=> b!7321117 d!2273598))

(declare-fun bs!1916063 () Bool)

(declare-fun d!2273600 () Bool)

(assert (= bs!1916063 (and d!2273600 b!7321120)))

(declare-fun lambda!453446 () Int)

(assert (=> bs!1916063 (= lambda!453446 lambda!453441)))

(declare-fun bs!1916064 () Bool)

(assert (= bs!1916064 (and d!2273600 d!2273586)))

(assert (=> bs!1916064 (= lambda!453446 lambda!453444)))

(declare-fun bs!1916065 () Bool)

(assert (= bs!1916065 (and d!2273600 d!2273590)))

(assert (=> bs!1916065 (= lambda!453446 lambda!453445)))

(assert (=> d!2273600 true))

(assert (=> d!2273600 true))

(assert (=> d!2273600 (< (dynLambda!29338 order!29369 f!643) (dynLambda!29339 order!29371 lambda!453446))))

(assert (=> d!2273600 (= (select (flatMap!3165 s2!405 f!643) b!25336) (exists!4696 s2!405 lambda!453446))))

(declare-fun lt!2604464 () A!1091)

(assert (=> d!2273600 (= lt!2604464 (choose!56927 s2!405 f!643 b!25336))))

(assert (=> d!2273600 (= (flatMapPost!166 s2!405 f!643 b!25336) lt!2604464)))

(declare-fun bs!1916066 () Bool)

(assert (= bs!1916066 d!2273600))

(assert (=> bs!1916066 m!7986858))

(declare-fun m!7986898 () Bool)

(assert (=> bs!1916066 m!7986898))

(declare-fun m!7986900 () Bool)

(assert (=> bs!1916066 m!7986900))

(declare-fun m!7986902 () Bool)

(assert (=> bs!1916066 m!7986902))

(assert (=> b!7321122 d!2273600))

(declare-fun d!2273602 () Bool)

(assert (=> d!2273602 (= (flatMap!3165 s2!405 f!643) (choose!56928 s2!405 f!643))))

(declare-fun bs!1916067 () Bool)

(assert (= bs!1916067 d!2273602))

(declare-fun m!7986904 () Bool)

(assert (=> bs!1916067 m!7986904))

(assert (=> b!7321121 d!2273602))

(declare-fun condSetEmpty!55735 () Bool)

(assert (=> tb!262335 (= condSetEmpty!55735 (= (dynLambda!29340 f!643 lt!2604449) ((as const (Array B!3793 Bool)) false)))))

(declare-fun setRes!55735 () Bool)

(assert (=> tb!262335 (= result!353518 setRes!55735)))

(declare-fun setIsEmpty!55735 () Bool)

(assert (=> setIsEmpty!55735 setRes!55735))

(declare-fun setNonEmpty!55735 () Bool)

(declare-fun tp!2079481 () Bool)

(assert (=> setNonEmpty!55735 (= setRes!55735 (and tp!2079481 tp_is_empty!48075))))

(declare-fun setElem!55735 () B!3793)

(declare-fun setRest!55735 () (InoxSet B!3793))

(assert (=> setNonEmpty!55735 (= (dynLambda!29340 f!643 lt!2604449) ((_ map or) (store ((as const (Array B!3793 Bool)) false) setElem!55735 true) setRest!55735))))

(assert (= (and tb!262335 condSetEmpty!55735) setIsEmpty!55735))

(assert (= (and tb!262335 (not condSetEmpty!55735)) setNonEmpty!55735))

(declare-fun condSetEmpty!55738 () Bool)

(assert (=> setNonEmpty!55732 (= condSetEmpty!55738 (= setRest!55732 ((as const (Array A!1091 Bool)) false)))))

(declare-fun setRes!55738 () Bool)

(assert (=> setNonEmpty!55732 (= tp!2079478 setRes!55738)))

(declare-fun setIsEmpty!55738 () Bool)

(assert (=> setIsEmpty!55738 setRes!55738))

(declare-fun setNonEmpty!55738 () Bool)

(declare-fun tp!2079484 () Bool)

(assert (=> setNonEmpty!55738 (= setRes!55738 (and tp!2079484 tp_is_empty!48073))))

(declare-fun setElem!55738 () A!1091)

(declare-fun setRest!55738 () (InoxSet A!1091))

(assert (=> setNonEmpty!55738 (= setRest!55732 ((_ map or) (store ((as const (Array A!1091 Bool)) false) setElem!55738 true) setRest!55738))))

(assert (= (and setNonEmpty!55732 condSetEmpty!55738) setIsEmpty!55738))

(assert (= (and setNonEmpty!55732 (not condSetEmpty!55738)) setNonEmpty!55738))

(declare-fun condSetEmpty!55739 () Bool)

(assert (=> setNonEmpty!55731 (= condSetEmpty!55739 (= setRest!55731 ((as const (Array A!1091 Bool)) false)))))

(declare-fun setRes!55739 () Bool)

(assert (=> setNonEmpty!55731 (= tp!2079477 setRes!55739)))

(declare-fun setIsEmpty!55739 () Bool)

(assert (=> setIsEmpty!55739 setRes!55739))

(declare-fun setNonEmpty!55739 () Bool)

(declare-fun tp!2079485 () Bool)

(assert (=> setNonEmpty!55739 (= setRes!55739 (and tp!2079485 tp_is_empty!48073))))

(declare-fun setElem!55739 () A!1091)

(declare-fun setRest!55739 () (InoxSet A!1091))

(assert (=> setNonEmpty!55739 (= setRest!55731 ((_ map or) (store ((as const (Array A!1091 Bool)) false) setElem!55739 true) setRest!55739))))

(assert (= (and setNonEmpty!55731 condSetEmpty!55739) setIsEmpty!55739))

(assert (= (and setNonEmpty!55731 (not condSetEmpty!55739)) setNonEmpty!55739))

(declare-fun b_lambda!282999 () Bool)

(assert (= b_lambda!282997 (or b!7321120 b_lambda!282999)))

(declare-fun bs!1916068 () Bool)

(declare-fun d!2273604 () Bool)

(assert (= bs!1916068 (and d!2273604 b!7321120)))

(assert (=> bs!1916068 (= (dynLambda!29341 lambda!453441 lt!2604463) (select (dynLambda!29340 f!643 lt!2604463) b!25336))))

(declare-fun b_lambda!283001 () Bool)

(assert (=> (not b_lambda!283001) (not bs!1916068)))

(declare-fun t!385753 () Bool)

(declare-fun tb!262337 () Bool)

(assert (=> (and start!714286 (= f!643 f!643) t!385753) tb!262337))

(assert (=> bs!1916068 t!385753))

(declare-fun result!353524 () Bool)

(declare-fun b_and!351741 () Bool)

(assert (= b_and!351739 (and (=> t!385753 result!353524) b_and!351741)))

(declare-fun m!7986906 () Bool)

(assert (=> bs!1916068 m!7986906))

(declare-fun m!7986908 () Bool)

(assert (=> bs!1916068 m!7986908))

(assert (=> d!2273598 d!2273604))

(check-sat (not d!2273596) (not b_lambda!282999) (not d!2273598) (not d!2273586) (not d!2273588) (not b_lambda!283001) (not tb!262337) (not d!2273590) (not setNonEmpty!55738) tp_is_empty!48075 (not setNonEmpty!55735) (not d!2273594) (not d!2273600) (not d!2273584) (not d!2273602) (not setNonEmpty!55739) (not b_next!135035) (not d!2273592) b_and!351741 (not b_lambda!282993) tp_is_empty!48073)
(check-sat b_and!351741 (not b_next!135035))
