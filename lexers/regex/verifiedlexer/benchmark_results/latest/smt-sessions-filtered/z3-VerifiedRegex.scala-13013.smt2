; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714238 () Bool)

(assert start!714238)

(declare-fun b_free!134229 () Bool)

(declare-fun b_next!135019 () Bool)

(assert (=> start!714238 (= b_free!134229 (not b_next!135019))))

(declare-fun tp!2079384 () Bool)

(declare-fun b_and!351707 () Bool)

(assert (=> start!714238 (= tp!2079384 b_and!351707)))

(declare-fun b!7320865 () Bool)

(assert (=> b!7320865 true))

(assert (=> b!7320865 true))

(declare-fun order!29339 () Int)

(declare-fun lambda!453333 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29337 () Int)

(declare-fun dynLambda!29314 (Int Int) Int)

(declare-fun dynLambda!29315 (Int Int) Int)

(assert (=> b!7320865 (< (dynLambda!29314 order!29337 f!643) (dynLambda!29315 order!29339 lambda!453333))))

(declare-fun e!4383193 () Bool)

(declare-fun e!4383197 () Bool)

(assert (=> b!7320865 (= e!4383193 (not e!4383197))))

(declare-fun res!2958896 () Bool)

(assert (=> b!7320865 (=> res!2958896 e!4383197)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1075 0))(
  ( (A!1076 (val!29395 Int)) )
))
(declare-fun s1!434 () (InoxSet A!1075))

(declare-fun exists!4684 ((InoxSet A!1075) Int) Bool)

(assert (=> b!7320865 (= res!2958896 (exists!4684 s1!434 lambda!453333))))

(declare-fun e!4383196 () Bool)

(assert (=> b!7320865 e!4383196))

(declare-fun res!2958897 () Bool)

(assert (=> b!7320865 (=> (not res!2958897) (not e!4383196))))

(declare-fun lt!2604241 () A!1075)

(declare-datatypes ((B!3777 0))(
  ( (B!3778 (val!29396 Int)) )
))
(declare-fun b!25336 () B!3777)

(declare-fun flatMapPost!158 ((InoxSet A!1075) Int B!3777) A!1075)

(assert (=> b!7320865 (= res!2958897 (= (flatMapPost!158 s1!434 f!643 b!25336) lt!2604241))))

(declare-fun empty!3351 () A!1075)

(assert (=> b!7320865 (= lt!2604241 empty!3351)))

(assert (=> b!7320865 true))

(declare-fun tp_is_empty!48041 () Bool)

(assert (=> b!7320865 tp_is_empty!48041))

(declare-fun res!2958891 () Bool)

(declare-fun e!4383198 () Bool)

(assert (=> start!714238 (=> (not res!2958891) (not e!4383198))))

(declare-fun lt!2604240 () (InoxSet B!3777))

(assert (=> start!714238 (= res!2958891 (not (select lt!2604240 b!25336)))))

(declare-fun flatMap!3157 ((InoxSet A!1075) Int) (InoxSet B!3777))

(assert (=> start!714238 (= lt!2604240 (flatMap!3157 s1!434 f!643))))

(assert (=> start!714238 e!4383198))

(declare-fun condSetEmpty!55661 () Bool)

(declare-fun s2!405 () (InoxSet A!1075))

(assert (=> start!714238 (= condSetEmpty!55661 (= s2!405 ((as const (Array A!1075 Bool)) false)))))

(declare-fun setRes!55662 () Bool)

(assert (=> start!714238 setRes!55662))

(declare-fun tp_is_empty!48043 () Bool)

(assert (=> start!714238 tp_is_empty!48043))

(declare-fun condSetEmpty!55662 () Bool)

(assert (=> start!714238 (= condSetEmpty!55662 (= s1!434 ((as const (Array A!1075 Bool)) false)))))

(declare-fun setRes!55661 () Bool)

(assert (=> start!714238 setRes!55661))

(assert (=> start!714238 tp!2079384))

(declare-fun b!7320866 () Bool)

(declare-fun e!4383195 () Bool)

(declare-fun e!4383194 () Bool)

(assert (=> b!7320866 (= e!4383195 e!4383194)))

(declare-fun res!2958893 () Bool)

(assert (=> b!7320866 (=> res!2958893 e!4383194)))

(declare-fun lt!2604242 () (InoxSet A!1075))

(assert (=> b!7320866 (= res!2958893 (not (exists!4684 lt!2604242 lambda!453333)))))

(assert (=> b!7320866 (= (flatMapPost!158 lt!2604242 f!643 b!25336) lt!2604241)))

(declare-fun setNonEmpty!55661 () Bool)

(declare-fun tp!2079382 () Bool)

(assert (=> setNonEmpty!55661 (= setRes!55661 (and tp!2079382 tp_is_empty!48041))))

(declare-fun setElem!55661 () A!1075)

(declare-fun setRest!55662 () (InoxSet A!1075))

(assert (=> setNonEmpty!55661 (= s1!434 ((_ map or) (store ((as const (Array A!1075 Bool)) false) setElem!55661 true) setRest!55662))))

(declare-fun b!7320867 () Bool)

(assert (=> b!7320867 (= e!4383198 e!4383193)))

(declare-fun res!2958894 () Bool)

(assert (=> b!7320867 (=> (not res!2958894) (not e!4383193))))

(declare-fun lt!2604243 () (InoxSet B!3777))

(assert (=> b!7320867 (= res!2958894 (and (not (select lt!2604243 b!25336)) (not (select ((_ map or) lt!2604240 lt!2604243) b!25336))))))

(assert (=> b!7320867 (= lt!2604243 (flatMap!3157 s2!405 f!643))))

(declare-fun setNonEmpty!55662 () Bool)

(declare-fun tp!2079383 () Bool)

(assert (=> setNonEmpty!55662 (= setRes!55662 (and tp!2079383 tp_is_empty!48041))))

(declare-fun setElem!55662 () A!1075)

(declare-fun setRest!55661 () (InoxSet A!1075))

(assert (=> setNonEmpty!55662 (= s2!405 ((_ map or) (store ((as const (Array A!1075 Bool)) false) setElem!55662 true) setRest!55661))))

(declare-fun b!7320868 () Bool)

(assert (=> b!7320868 (= e!4383197 e!4383195)))

(declare-fun res!2958895 () Bool)

(assert (=> b!7320868 (=> res!2958895 e!4383195)))

(assert (=> b!7320868 (= res!2958895 (not (select (flatMap!3157 lt!2604242 f!643) b!25336)))))

(assert (=> b!7320868 (= lt!2604242 ((_ map or) s1!434 s2!405))))

(declare-fun setIsEmpty!55661 () Bool)

(assert (=> setIsEmpty!55661 setRes!55662))

(declare-fun setIsEmpty!55662 () Bool)

(assert (=> setIsEmpty!55662 setRes!55661))

(declare-fun b!7320869 () Bool)

(declare-fun lt!2604239 () A!1075)

(assert (=> b!7320869 (= e!4383194 (or (select s1!434 lt!2604239) (select s2!405 lt!2604239)))))

(declare-fun getWitness!2397 ((InoxSet A!1075) Int) A!1075)

(assert (=> b!7320869 (= lt!2604239 (getWitness!2397 lt!2604242 lambda!453333))))

(declare-fun b!7320870 () Bool)

(assert (=> b!7320870 (= e!4383196 (= (flatMapPost!158 s2!405 f!643 b!25336) lt!2604241))))

(declare-fun b!7320871 () Bool)

(declare-fun res!2958892 () Bool)

(assert (=> b!7320871 (=> res!2958892 e!4383197)))

(assert (=> b!7320871 (= res!2958892 (exists!4684 s2!405 lambda!453333))))

(assert (= (and start!714238 res!2958891) b!7320867))

(assert (= (and b!7320867 res!2958894) b!7320865))

(assert (= (and b!7320865 res!2958897) b!7320870))

(assert (= (and b!7320865 (not res!2958896)) b!7320871))

(assert (= (and b!7320871 (not res!2958892)) b!7320868))

(assert (= (and b!7320868 (not res!2958895)) b!7320866))

(assert (= (and b!7320866 (not res!2958893)) b!7320869))

(assert (= (and start!714238 condSetEmpty!55661) setIsEmpty!55661))

(assert (= (and start!714238 (not condSetEmpty!55661)) setNonEmpty!55662))

(assert (= (and start!714238 condSetEmpty!55662) setIsEmpty!55662))

(assert (= (and start!714238 (not condSetEmpty!55662)) setNonEmpty!55661))

(declare-fun m!7986348 () Bool)

(assert (=> b!7320868 m!7986348))

(declare-fun m!7986350 () Bool)

(assert (=> b!7320868 m!7986350))

(declare-fun m!7986352 () Bool)

(assert (=> b!7320867 m!7986352))

(declare-fun m!7986354 () Bool)

(assert (=> b!7320867 m!7986354))

(declare-fun m!7986356 () Bool)

(assert (=> b!7320867 m!7986356))

(declare-fun m!7986358 () Bool)

(assert (=> b!7320869 m!7986358))

(declare-fun m!7986360 () Bool)

(assert (=> b!7320869 m!7986360))

(declare-fun m!7986362 () Bool)

(assert (=> b!7320869 m!7986362))

(declare-fun m!7986364 () Bool)

(assert (=> b!7320866 m!7986364))

(declare-fun m!7986366 () Bool)

(assert (=> b!7320866 m!7986366))

(declare-fun m!7986368 () Bool)

(assert (=> b!7320870 m!7986368))

(declare-fun m!7986370 () Bool)

(assert (=> start!714238 m!7986370))

(declare-fun m!7986372 () Bool)

(assert (=> start!714238 m!7986372))

(declare-fun m!7986374 () Bool)

(assert (=> b!7320865 m!7986374))

(declare-fun m!7986376 () Bool)

(assert (=> b!7320865 m!7986376))

(declare-fun m!7986378 () Bool)

(assert (=> b!7320871 m!7986378))

(check-sat (not setNonEmpty!55662) (not b_next!135019) (not start!714238) (not b!7320871) (not b!7320866) (not b!7320865) tp_is_empty!48043 (not b!7320868) b_and!351707 (not b!7320869) (not setNonEmpty!55661) tp_is_empty!48041 (not b!7320870) (not b!7320867))
(check-sat b_and!351707 (not b_next!135019))
(get-model)

(declare-fun d!2273492 () Bool)

(declare-fun lt!2604246 () Bool)

(declare-datatypes ((List!71423 0))(
  ( (Nil!71299) (Cons!71299 (h!77747 A!1075) (t!385734 List!71423)) )
))
(declare-fun exists!4685 (List!71423 Int) Bool)

(declare-fun toList!11710 ((InoxSet A!1075)) List!71423)

(assert (=> d!2273492 (= lt!2604246 (exists!4685 (toList!11710 lt!2604242) lambda!453333))))

(declare-fun choose!56914 ((InoxSet A!1075) Int) Bool)

(assert (=> d!2273492 (= lt!2604246 (choose!56914 lt!2604242 lambda!453333))))

(assert (=> d!2273492 (= (exists!4684 lt!2604242 lambda!453333) lt!2604246)))

(declare-fun bs!1915981 () Bool)

(assert (= bs!1915981 d!2273492))

(declare-fun m!7986380 () Bool)

(assert (=> bs!1915981 m!7986380))

(assert (=> bs!1915981 m!7986380))

(declare-fun m!7986382 () Bool)

(assert (=> bs!1915981 m!7986382))

(declare-fun m!7986384 () Bool)

(assert (=> bs!1915981 m!7986384))

(assert (=> b!7320866 d!2273492))

(declare-fun bs!1915982 () Bool)

(declare-fun d!2273494 () Bool)

(assert (= bs!1915982 (and d!2273494 b!7320865)))

(declare-fun lambda!453336 () Int)

(assert (=> bs!1915982 (= lambda!453336 lambda!453333)))

(assert (=> d!2273494 true))

(assert (=> d!2273494 true))

(assert (=> d!2273494 (< (dynLambda!29314 order!29337 f!643) (dynLambda!29315 order!29339 lambda!453336))))

(assert (=> d!2273494 (= (select (flatMap!3157 lt!2604242 f!643) b!25336) (exists!4684 lt!2604242 lambda!453336))))

(declare-fun lt!2604249 () A!1075)

(declare-fun choose!56915 ((InoxSet A!1075) Int B!3777) A!1075)

(assert (=> d!2273494 (= lt!2604249 (choose!56915 lt!2604242 f!643 b!25336))))

(assert (=> d!2273494 (= (flatMapPost!158 lt!2604242 f!643 b!25336) lt!2604249)))

(declare-fun bs!1915983 () Bool)

(assert (= bs!1915983 d!2273494))

(assert (=> bs!1915983 m!7986348))

(assert (=> bs!1915983 m!7986350))

(declare-fun m!7986386 () Bool)

(assert (=> bs!1915983 m!7986386))

(declare-fun m!7986388 () Bool)

(assert (=> bs!1915983 m!7986388))

(assert (=> b!7320866 d!2273494))

(declare-fun d!2273496 () Bool)

(declare-fun lt!2604250 () Bool)

(assert (=> d!2273496 (= lt!2604250 (exists!4685 (toList!11710 s1!434) lambda!453333))))

(assert (=> d!2273496 (= lt!2604250 (choose!56914 s1!434 lambda!453333))))

(assert (=> d!2273496 (= (exists!4684 s1!434 lambda!453333) lt!2604250)))

(declare-fun bs!1915984 () Bool)

(assert (= bs!1915984 d!2273496))

(declare-fun m!7986390 () Bool)

(assert (=> bs!1915984 m!7986390))

(assert (=> bs!1915984 m!7986390))

(declare-fun m!7986392 () Bool)

(assert (=> bs!1915984 m!7986392))

(declare-fun m!7986394 () Bool)

(assert (=> bs!1915984 m!7986394))

(assert (=> b!7320865 d!2273496))

(declare-fun bs!1915985 () Bool)

(declare-fun d!2273498 () Bool)

(assert (= bs!1915985 (and d!2273498 b!7320865)))

(declare-fun lambda!453337 () Int)

(assert (=> bs!1915985 (= lambda!453337 lambda!453333)))

(declare-fun bs!1915986 () Bool)

(assert (= bs!1915986 (and d!2273498 d!2273494)))

(assert (=> bs!1915986 (= lambda!453337 lambda!453336)))

(assert (=> d!2273498 true))

(assert (=> d!2273498 true))

(assert (=> d!2273498 (< (dynLambda!29314 order!29337 f!643) (dynLambda!29315 order!29339 lambda!453337))))

(assert (=> d!2273498 (= (select (flatMap!3157 s1!434 f!643) b!25336) (exists!4684 s1!434 lambda!453337))))

(declare-fun lt!2604251 () A!1075)

(assert (=> d!2273498 (= lt!2604251 (choose!56915 s1!434 f!643 b!25336))))

(assert (=> d!2273498 (= (flatMapPost!158 s1!434 f!643 b!25336) lt!2604251)))

(declare-fun bs!1915987 () Bool)

(assert (= bs!1915987 d!2273498))

(assert (=> bs!1915987 m!7986372))

(declare-fun m!7986396 () Bool)

(assert (=> bs!1915987 m!7986396))

(declare-fun m!7986398 () Bool)

(assert (=> bs!1915987 m!7986398))

(declare-fun m!7986400 () Bool)

(assert (=> bs!1915987 m!7986400))

(assert (=> b!7320865 d!2273498))

(declare-fun bs!1915988 () Bool)

(declare-fun d!2273500 () Bool)

(assert (= bs!1915988 (and d!2273500 b!7320865)))

(declare-fun lambda!453338 () Int)

(assert (=> bs!1915988 (= lambda!453338 lambda!453333)))

(declare-fun bs!1915989 () Bool)

(assert (= bs!1915989 (and d!2273500 d!2273494)))

(assert (=> bs!1915989 (= lambda!453338 lambda!453336)))

(declare-fun bs!1915990 () Bool)

(assert (= bs!1915990 (and d!2273500 d!2273498)))

(assert (=> bs!1915990 (= lambda!453338 lambda!453337)))

(assert (=> d!2273500 true))

(assert (=> d!2273500 true))

(assert (=> d!2273500 (< (dynLambda!29314 order!29337 f!643) (dynLambda!29315 order!29339 lambda!453338))))

(assert (=> d!2273500 (= (select (flatMap!3157 s2!405 f!643) b!25336) (exists!4684 s2!405 lambda!453338))))

(declare-fun lt!2604252 () A!1075)

(assert (=> d!2273500 (= lt!2604252 (choose!56915 s2!405 f!643 b!25336))))

(assert (=> d!2273500 (= (flatMapPost!158 s2!405 f!643 b!25336) lt!2604252)))

(declare-fun bs!1915991 () Bool)

(assert (= bs!1915991 d!2273500))

(assert (=> bs!1915991 m!7986356))

(declare-fun m!7986402 () Bool)

(assert (=> bs!1915991 m!7986402))

(declare-fun m!7986404 () Bool)

(assert (=> bs!1915991 m!7986404))

(declare-fun m!7986406 () Bool)

(assert (=> bs!1915991 m!7986406))

(assert (=> b!7320870 d!2273500))

(declare-fun d!2273502 () Bool)

(declare-fun choose!56916 ((InoxSet A!1075) Int) (InoxSet B!3777))

(assert (=> d!2273502 (= (flatMap!3157 s2!405 f!643) (choose!56916 s2!405 f!643))))

(declare-fun bs!1915992 () Bool)

(assert (= bs!1915992 d!2273502))

(declare-fun m!7986408 () Bool)

(assert (=> bs!1915992 m!7986408))

(assert (=> b!7320867 d!2273502))

(declare-fun d!2273504 () Bool)

(declare-fun e!4383201 () Bool)

(assert (=> d!2273504 e!4383201))

(declare-fun res!2958900 () Bool)

(assert (=> d!2273504 (=> (not res!2958900) (not e!4383201))))

(declare-fun lt!2604255 () A!1075)

(declare-fun dynLambda!29316 (Int A!1075) Bool)

(assert (=> d!2273504 (= res!2958900 (dynLambda!29316 lambda!453333 lt!2604255))))

(declare-fun getWitness!2398 (List!71423 Int) A!1075)

(assert (=> d!2273504 (= lt!2604255 (getWitness!2398 (toList!11710 lt!2604242) lambda!453333))))

(assert (=> d!2273504 (exists!4684 lt!2604242 lambda!453333)))

(assert (=> d!2273504 (= (getWitness!2397 lt!2604242 lambda!453333) lt!2604255)))

(declare-fun b!7320879 () Bool)

(assert (=> b!7320879 (= e!4383201 (select lt!2604242 lt!2604255))))

(assert (= (and d!2273504 res!2958900) b!7320879))

(declare-fun b_lambda!282957 () Bool)

(assert (=> (not b_lambda!282957) (not d!2273504)))

(declare-fun m!7986410 () Bool)

(assert (=> d!2273504 m!7986410))

(assert (=> d!2273504 m!7986380))

(assert (=> d!2273504 m!7986380))

(declare-fun m!7986412 () Bool)

(assert (=> d!2273504 m!7986412))

(assert (=> d!2273504 m!7986364))

(declare-fun m!7986414 () Bool)

(assert (=> b!7320879 m!7986414))

(assert (=> b!7320869 d!2273504))

(declare-fun d!2273506 () Bool)

(assert (=> d!2273506 (= (flatMap!3157 lt!2604242 f!643) (choose!56916 lt!2604242 f!643))))

(declare-fun bs!1915993 () Bool)

(assert (= bs!1915993 d!2273506))

(declare-fun m!7986416 () Bool)

(assert (=> bs!1915993 m!7986416))

(assert (=> b!7320868 d!2273506))

(declare-fun d!2273508 () Bool)

(declare-fun lt!2604256 () Bool)

(assert (=> d!2273508 (= lt!2604256 (exists!4685 (toList!11710 s2!405) lambda!453333))))

(assert (=> d!2273508 (= lt!2604256 (choose!56914 s2!405 lambda!453333))))

(assert (=> d!2273508 (= (exists!4684 s2!405 lambda!453333) lt!2604256)))

(declare-fun bs!1915994 () Bool)

(assert (= bs!1915994 d!2273508))

(declare-fun m!7986418 () Bool)

(assert (=> bs!1915994 m!7986418))

(assert (=> bs!1915994 m!7986418))

(declare-fun m!7986420 () Bool)

(assert (=> bs!1915994 m!7986420))

(declare-fun m!7986422 () Bool)

(assert (=> bs!1915994 m!7986422))

(assert (=> b!7320871 d!2273508))

(declare-fun d!2273510 () Bool)

(assert (=> d!2273510 (= (flatMap!3157 s1!434 f!643) (choose!56916 s1!434 f!643))))

(declare-fun bs!1915995 () Bool)

(assert (= bs!1915995 d!2273510))

(declare-fun m!7986424 () Bool)

(assert (=> bs!1915995 m!7986424))

(assert (=> start!714238 d!2273510))

(declare-fun condSetEmpty!55665 () Bool)

(assert (=> setNonEmpty!55661 (= condSetEmpty!55665 (= setRest!55662 ((as const (Array A!1075 Bool)) false)))))

(declare-fun setRes!55665 () Bool)

(assert (=> setNonEmpty!55661 (= tp!2079382 setRes!55665)))

(declare-fun setIsEmpty!55665 () Bool)

(assert (=> setIsEmpty!55665 setRes!55665))

(declare-fun setNonEmpty!55665 () Bool)

(declare-fun tp!2079387 () Bool)

(assert (=> setNonEmpty!55665 (= setRes!55665 (and tp!2079387 tp_is_empty!48041))))

(declare-fun setElem!55665 () A!1075)

(declare-fun setRest!55665 () (InoxSet A!1075))

(assert (=> setNonEmpty!55665 (= setRest!55662 ((_ map or) (store ((as const (Array A!1075 Bool)) false) setElem!55665 true) setRest!55665))))

(assert (= (and setNonEmpty!55661 condSetEmpty!55665) setIsEmpty!55665))

(assert (= (and setNonEmpty!55661 (not condSetEmpty!55665)) setNonEmpty!55665))

(declare-fun condSetEmpty!55666 () Bool)

(assert (=> setNonEmpty!55662 (= condSetEmpty!55666 (= setRest!55661 ((as const (Array A!1075 Bool)) false)))))

(declare-fun setRes!55666 () Bool)

(assert (=> setNonEmpty!55662 (= tp!2079383 setRes!55666)))

(declare-fun setIsEmpty!55666 () Bool)

(assert (=> setIsEmpty!55666 setRes!55666))

(declare-fun setNonEmpty!55666 () Bool)

(declare-fun tp!2079388 () Bool)

(assert (=> setNonEmpty!55666 (= setRes!55666 (and tp!2079388 tp_is_empty!48041))))

(declare-fun setElem!55666 () A!1075)

(declare-fun setRest!55666 () (InoxSet A!1075))

(assert (=> setNonEmpty!55666 (= setRest!55661 ((_ map or) (store ((as const (Array A!1075 Bool)) false) setElem!55666 true) setRest!55666))))

(assert (= (and setNonEmpty!55662 condSetEmpty!55666) setIsEmpty!55666))

(assert (= (and setNonEmpty!55662 (not condSetEmpty!55666)) setNonEmpty!55666))

(declare-fun b_lambda!282959 () Bool)

(assert (= b_lambda!282957 (or b!7320865 b_lambda!282959)))

(declare-fun bs!1915996 () Bool)

(declare-fun d!2273512 () Bool)

(assert (= bs!1915996 (and d!2273512 b!7320865)))

(declare-fun dynLambda!29317 (Int A!1075) (InoxSet B!3777))

(assert (=> bs!1915996 (= (dynLambda!29316 lambda!453333 lt!2604255) (select (dynLambda!29317 f!643 lt!2604255) b!25336))))

(declare-fun b_lambda!282961 () Bool)

(assert (=> (not b_lambda!282961) (not bs!1915996)))

(declare-fun t!385733 () Bool)

(declare-fun tb!262321 () Bool)

(assert (=> (and start!714238 (= f!643 f!643) t!385733) tb!262321))

(assert (=> bs!1915996 t!385733))

(declare-fun result!353494 () Bool)

(declare-fun b_and!351709 () Bool)

(assert (= b_and!351707 (and (=> t!385733 result!353494) b_and!351709)))

(declare-fun m!7986426 () Bool)

(assert (=> bs!1915996 m!7986426))

(declare-fun m!7986428 () Bool)

(assert (=> bs!1915996 m!7986428))

(assert (=> d!2273504 d!2273512))

(check-sat (not d!2273508) (not d!2273500) (not setNonEmpty!55666) (not d!2273496) (not b_next!135019) (not tb!262321) (not d!2273504) (not d!2273506) (not b_lambda!282959) (not d!2273492) (not d!2273510) tp_is_empty!48041 (not d!2273494) (not d!2273498) (not b_lambda!282961) (not setNonEmpty!55665) tp_is_empty!48043 (not d!2273502) b_and!351709)
(check-sat b_and!351709 (not b_next!135019))
