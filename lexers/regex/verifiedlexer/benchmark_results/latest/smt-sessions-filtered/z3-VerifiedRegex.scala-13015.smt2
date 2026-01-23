; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714262 () Bool)

(assert start!714262)

(declare-fun b_free!134237 () Bool)

(declare-fun b_next!135027 () Bool)

(assert (=> start!714262 (= b_free!134237 (not b_next!135027))))

(declare-fun tp!2079427 () Bool)

(declare-fun b_and!351721 () Bool)

(assert (=> start!714262 (= tp!2079427 b_and!351721)))

(declare-fun b!7320988 () Bool)

(assert (=> b!7320988 true))

(assert (=> b!7320988 true))

(declare-fun order!29353 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29355 () Int)

(declare-fun lambda!453387 () Int)

(declare-fun dynLambda!29326 (Int Int) Int)

(declare-fun dynLambda!29327 (Int Int) Int)

(assert (=> b!7320988 (< (dynLambda!29326 order!29353 f!643) (dynLambda!29327 order!29355 lambda!453387))))

(declare-fun e!4383282 () Bool)

(declare-fun e!4383285 () Bool)

(assert (=> b!7320988 (= e!4383282 (not e!4383285))))

(declare-fun res!2958992 () Bool)

(assert (=> b!7320988 (=> res!2958992 e!4383285)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1083 0))(
  ( (A!1084 (val!29403 Int)) )
))
(declare-fun s1!434 () (InoxSet A!1083))

(declare-fun exists!4690 ((InoxSet A!1083) Int) Bool)

(assert (=> b!7320988 (= res!2958992 (exists!4690 s1!434 lambda!453387))))

(declare-fun e!4383284 () Bool)

(assert (=> b!7320988 e!4383284))

(declare-fun res!2958996 () Bool)

(assert (=> b!7320988 (=> (not res!2958996) (not e!4383284))))

(declare-datatypes ((B!3785 0))(
  ( (B!3786 (val!29404 Int)) )
))
(declare-fun b!25336 () B!3785)

(declare-fun lt!2604345 () A!1083)

(declare-fun flatMapPost!162 ((InoxSet A!1083) Int B!3785) A!1083)

(assert (=> b!7320988 (= res!2958996 (= (flatMapPost!162 s1!434 f!643 b!25336) lt!2604345))))

(declare-fun empty!3367 () A!1083)

(assert (=> b!7320988 (= lt!2604345 empty!3367)))

(assert (=> b!7320988 true))

(declare-fun tp_is_empty!48057 () Bool)

(assert (=> b!7320988 tp_is_empty!48057))

(declare-fun setIsEmpty!55693 () Bool)

(declare-fun setRes!55694 () Bool)

(assert (=> setIsEmpty!55693 setRes!55694))

(declare-fun setNonEmpty!55693 () Bool)

(declare-fun tp!2079428 () Bool)

(assert (=> setNonEmpty!55693 (= setRes!55694 (and tp!2079428 tp_is_empty!48057))))

(declare-fun setElem!55693 () A!1083)

(declare-fun setRest!55693 () (InoxSet A!1083))

(assert (=> setNonEmpty!55693 (= s1!434 ((_ map or) (store ((as const (Array A!1083 Bool)) false) setElem!55693 true) setRest!55693))))

(declare-fun b!7320990 () Bool)

(declare-fun res!2958993 () Bool)

(assert (=> b!7320990 (=> res!2958993 e!4383285)))

(declare-fun s2!405 () (InoxSet A!1083))

(assert (=> b!7320990 (= res!2958993 (exists!4690 s2!405 lambda!453387))))

(declare-fun setIsEmpty!55694 () Bool)

(declare-fun setRes!55693 () Bool)

(assert (=> setIsEmpty!55694 setRes!55693))

(declare-fun b!7320991 () Bool)

(declare-fun e!4383288 () Bool)

(assert (=> b!7320991 (= e!4383288 e!4383282)))

(declare-fun res!2958998 () Bool)

(assert (=> b!7320991 (=> (not res!2958998) (not e!4383282))))

(declare-fun lt!2604343 () (InoxSet B!3785))

(declare-fun lt!2604347 () (InoxSet B!3785))

(assert (=> b!7320991 (= res!2958998 (and (not (select lt!2604343 b!25336)) (not (select ((_ map or) lt!2604347 lt!2604343) b!25336))))))

(declare-fun flatMap!3161 ((InoxSet A!1083) Int) (InoxSet B!3785))

(assert (=> b!7320991 (= lt!2604343 (flatMap!3161 s2!405 f!643))))

(declare-fun b!7320992 () Bool)

(declare-fun lt!2604344 () A!1083)

(declare-fun e!4383287 () Bool)

(declare-fun dynLambda!29328 (Int A!1083) (InoxSet B!3785))

(assert (=> b!7320992 (= e!4383287 (select (dynLambda!29328 f!643 lt!2604344) b!25336))))

(declare-fun setNonEmpty!55694 () Bool)

(declare-fun tp!2079426 () Bool)

(assert (=> setNonEmpty!55694 (= setRes!55693 (and tp!2079426 tp_is_empty!48057))))

(declare-fun setElem!55694 () A!1083)

(declare-fun setRest!55694 () (InoxSet A!1083))

(assert (=> setNonEmpty!55694 (= s2!405 ((_ map or) (store ((as const (Array A!1083 Bool)) false) setElem!55694 true) setRest!55694))))

(declare-fun b!7320993 () Bool)

(declare-fun e!4383286 () Bool)

(assert (=> b!7320993 (= e!4383286 e!4383287)))

(declare-fun res!2958997 () Bool)

(assert (=> b!7320993 (=> res!2958997 e!4383287)))

(declare-fun lt!2604342 () Bool)

(assert (=> b!7320993 (= res!2958997 (or (and (not lt!2604342) (not (select s2!405 lt!2604344))) (not lt!2604342)))))

(assert (=> b!7320993 (= lt!2604342 (select s1!434 lt!2604344))))

(declare-fun lt!2604346 () (InoxSet A!1083))

(declare-fun getWitness!2403 ((InoxSet A!1083) Int) A!1083)

(assert (=> b!7320993 (= lt!2604344 (getWitness!2403 lt!2604346 lambda!453387))))

(declare-fun res!2958995 () Bool)

(assert (=> start!714262 (=> (not res!2958995) (not e!4383288))))

(assert (=> start!714262 (= res!2958995 (not (select lt!2604347 b!25336)))))

(assert (=> start!714262 (= lt!2604347 (flatMap!3161 s1!434 f!643))))

(assert (=> start!714262 e!4383288))

(declare-fun condSetEmpty!55693 () Bool)

(assert (=> start!714262 (= condSetEmpty!55693 (= s2!405 ((as const (Array A!1083 Bool)) false)))))

(assert (=> start!714262 setRes!55693))

(declare-fun tp_is_empty!48059 () Bool)

(assert (=> start!714262 tp_is_empty!48059))

(declare-fun condSetEmpty!55694 () Bool)

(assert (=> start!714262 (= condSetEmpty!55694 (= s1!434 ((as const (Array A!1083 Bool)) false)))))

(assert (=> start!714262 setRes!55694))

(assert (=> start!714262 tp!2079427))

(declare-fun b!7320989 () Bool)

(declare-fun e!4383283 () Bool)

(assert (=> b!7320989 (= e!4383283 e!4383286)))

(declare-fun res!2958994 () Bool)

(assert (=> b!7320989 (=> res!2958994 e!4383286)))

(assert (=> b!7320989 (= res!2958994 (not (exists!4690 lt!2604346 lambda!453387)))))

(assert (=> b!7320989 (= (flatMapPost!162 lt!2604346 f!643 b!25336) lt!2604345)))

(declare-fun b!7320994 () Bool)

(assert (=> b!7320994 (= e!4383285 e!4383283)))

(declare-fun res!2958999 () Bool)

(assert (=> b!7320994 (=> res!2958999 e!4383283)))

(assert (=> b!7320994 (= res!2958999 (not (select (flatMap!3161 lt!2604346 f!643) b!25336)))))

(assert (=> b!7320994 (= lt!2604346 ((_ map or) s1!434 s2!405))))

(declare-fun b!7320995 () Bool)

(assert (=> b!7320995 (= e!4383284 (= (flatMapPost!162 s2!405 f!643 b!25336) lt!2604345))))

(assert (= (and start!714262 res!2958995) b!7320991))

(assert (= (and b!7320991 res!2958998) b!7320988))

(assert (= (and b!7320988 res!2958996) b!7320995))

(assert (= (and b!7320988 (not res!2958992)) b!7320990))

(assert (= (and b!7320990 (not res!2958993)) b!7320994))

(assert (= (and b!7320994 (not res!2958999)) b!7320989))

(assert (= (and b!7320989 (not res!2958994)) b!7320993))

(assert (= (and b!7320993 (not res!2958997)) b!7320992))

(assert (= (and start!714262 condSetEmpty!55693) setIsEmpty!55694))

(assert (= (and start!714262 (not condSetEmpty!55693)) setNonEmpty!55694))

(assert (= (and start!714262 condSetEmpty!55694) setIsEmpty!55693))

(assert (= (and start!714262 (not condSetEmpty!55694)) setNonEmpty!55693))

(declare-fun b_lambda!282971 () Bool)

(assert (=> (not b_lambda!282971) (not b!7320992)))

(declare-fun t!385741 () Bool)

(declare-fun tb!262327 () Bool)

(assert (=> (and start!714262 (= f!643 f!643) t!385741) tb!262327))

(assert (=> b!7320992 t!385741))

(declare-fun result!353502 () Bool)

(declare-fun b_and!351723 () Bool)

(assert (= b_and!351721 (and (=> t!385741 result!353502) b_and!351723)))

(declare-fun m!7986584 () Bool)

(assert (=> b!7320991 m!7986584))

(declare-fun m!7986586 () Bool)

(assert (=> b!7320991 m!7986586))

(declare-fun m!7986588 () Bool)

(assert (=> b!7320991 m!7986588))

(declare-fun m!7986590 () Bool)

(assert (=> start!714262 m!7986590))

(declare-fun m!7986592 () Bool)

(assert (=> start!714262 m!7986592))

(declare-fun m!7986594 () Bool)

(assert (=> b!7320992 m!7986594))

(declare-fun m!7986596 () Bool)

(assert (=> b!7320992 m!7986596))

(declare-fun m!7986598 () Bool)

(assert (=> b!7320993 m!7986598))

(declare-fun m!7986600 () Bool)

(assert (=> b!7320993 m!7986600))

(declare-fun m!7986602 () Bool)

(assert (=> b!7320993 m!7986602))

(declare-fun m!7986604 () Bool)

(assert (=> b!7320994 m!7986604))

(declare-fun m!7986606 () Bool)

(assert (=> b!7320994 m!7986606))

(declare-fun m!7986608 () Bool)

(assert (=> b!7320988 m!7986608))

(declare-fun m!7986610 () Bool)

(assert (=> b!7320988 m!7986610))

(declare-fun m!7986612 () Bool)

(assert (=> b!7320989 m!7986612))

(declare-fun m!7986614 () Bool)

(assert (=> b!7320989 m!7986614))

(declare-fun m!7986616 () Bool)

(assert (=> b!7320990 m!7986616))

(declare-fun m!7986618 () Bool)

(assert (=> b!7320995 m!7986618))

(check-sat (not tb!262327) (not setNonEmpty!55694) (not b!7320995) tp_is_empty!48057 (not setNonEmpty!55693) (not b!7320993) (not start!714262) (not b!7320989) (not b!7320994) (not b_lambda!282971) (not b_next!135027) tp_is_empty!48059 (not b!7320991) (not b!7320990) b_and!351723 (not b!7320988))
(check-sat b_and!351723 (not b_next!135027))
(get-model)

(declare-fun b_lambda!282973 () Bool)

(assert (= b_lambda!282971 (or (and start!714262 b_free!134237) b_lambda!282973)))

(check-sat (not tb!262327) (not b!7320995) tp_is_empty!48057 (not setNonEmpty!55693) (not b!7320993) (not start!714262) (not b!7320989) (not b!7320994) (not b_lambda!282973) (not setNonEmpty!55694) (not b_next!135027) tp_is_empty!48059 (not b!7320991) (not b!7320990) b_and!351723 (not b!7320988))
(check-sat b_and!351723 (not b_next!135027))
(get-model)

(declare-fun d!2273538 () Bool)

(declare-fun lt!2604350 () Bool)

(declare-datatypes ((List!71425 0))(
  ( (Nil!71301) (Cons!71301 (h!77749 A!1083) (t!385744 List!71425)) )
))
(declare-fun exists!4691 (List!71425 Int) Bool)

(declare-fun toList!11712 ((InoxSet A!1083)) List!71425)

(assert (=> d!2273538 (= lt!2604350 (exists!4691 (toList!11712 s1!434) lambda!453387))))

(declare-fun choose!56920 ((InoxSet A!1083) Int) Bool)

(assert (=> d!2273538 (= lt!2604350 (choose!56920 s1!434 lambda!453387))))

(assert (=> d!2273538 (= (exists!4690 s1!434 lambda!453387) lt!2604350)))

(declare-fun bs!1916017 () Bool)

(assert (= bs!1916017 d!2273538))

(declare-fun m!7986620 () Bool)

(assert (=> bs!1916017 m!7986620))

(assert (=> bs!1916017 m!7986620))

(declare-fun m!7986622 () Bool)

(assert (=> bs!1916017 m!7986622))

(declare-fun m!7986624 () Bool)

(assert (=> bs!1916017 m!7986624))

(assert (=> b!7320988 d!2273538))

(declare-fun bs!1916018 () Bool)

(declare-fun d!2273540 () Bool)

(assert (= bs!1916018 (and d!2273540 b!7320988)))

(declare-fun lambda!453390 () Int)

(assert (=> bs!1916018 (= lambda!453390 lambda!453387)))

(assert (=> d!2273540 true))

(assert (=> d!2273540 true))

(assert (=> d!2273540 (< (dynLambda!29326 order!29353 f!643) (dynLambda!29327 order!29355 lambda!453390))))

(assert (=> d!2273540 (= (select (flatMap!3161 s1!434 f!643) b!25336) (exists!4690 s1!434 lambda!453390))))

(declare-fun lt!2604353 () A!1083)

(declare-fun choose!56921 ((InoxSet A!1083) Int B!3785) A!1083)

(assert (=> d!2273540 (= lt!2604353 (choose!56921 s1!434 f!643 b!25336))))

(assert (=> d!2273540 (= (flatMapPost!162 s1!434 f!643 b!25336) lt!2604353)))

(declare-fun bs!1916019 () Bool)

(assert (= bs!1916019 d!2273540))

(assert (=> bs!1916019 m!7986592))

(declare-fun m!7986626 () Bool)

(assert (=> bs!1916019 m!7986626))

(declare-fun m!7986628 () Bool)

(assert (=> bs!1916019 m!7986628))

(declare-fun m!7986630 () Bool)

(assert (=> bs!1916019 m!7986630))

(assert (=> b!7320988 d!2273540))

(declare-fun d!2273542 () Bool)

(declare-fun choose!56922 ((InoxSet A!1083) Int) (InoxSet B!3785))

(assert (=> d!2273542 (= (flatMap!3161 s2!405 f!643) (choose!56922 s2!405 f!643))))

(declare-fun bs!1916020 () Bool)

(assert (= bs!1916020 d!2273542))

(declare-fun m!7986632 () Bool)

(assert (=> bs!1916020 m!7986632))

(assert (=> b!7320991 d!2273542))

(declare-fun bs!1916021 () Bool)

(declare-fun d!2273544 () Bool)

(assert (= bs!1916021 (and d!2273544 b!7320988)))

(declare-fun lambda!453391 () Int)

(assert (=> bs!1916021 (= lambda!453391 lambda!453387)))

(declare-fun bs!1916022 () Bool)

(assert (= bs!1916022 (and d!2273544 d!2273540)))

(assert (=> bs!1916022 (= lambda!453391 lambda!453390)))

(assert (=> d!2273544 true))

(assert (=> d!2273544 true))

(assert (=> d!2273544 (< (dynLambda!29326 order!29353 f!643) (dynLambda!29327 order!29355 lambda!453391))))

(assert (=> d!2273544 (= (select (flatMap!3161 s2!405 f!643) b!25336) (exists!4690 s2!405 lambda!453391))))

(declare-fun lt!2604354 () A!1083)

(assert (=> d!2273544 (= lt!2604354 (choose!56921 s2!405 f!643 b!25336))))

(assert (=> d!2273544 (= (flatMapPost!162 s2!405 f!643 b!25336) lt!2604354)))

(declare-fun bs!1916023 () Bool)

(assert (= bs!1916023 d!2273544))

(assert (=> bs!1916023 m!7986588))

(declare-fun m!7986634 () Bool)

(assert (=> bs!1916023 m!7986634))

(declare-fun m!7986636 () Bool)

(assert (=> bs!1916023 m!7986636))

(declare-fun m!7986638 () Bool)

(assert (=> bs!1916023 m!7986638))

(assert (=> b!7320995 d!2273544))

(declare-fun d!2273546 () Bool)

(declare-fun lt!2604355 () Bool)

(assert (=> d!2273546 (= lt!2604355 (exists!4691 (toList!11712 lt!2604346) lambda!453387))))

(assert (=> d!2273546 (= lt!2604355 (choose!56920 lt!2604346 lambda!453387))))

(assert (=> d!2273546 (= (exists!4690 lt!2604346 lambda!453387) lt!2604355)))

(declare-fun bs!1916024 () Bool)

(assert (= bs!1916024 d!2273546))

(declare-fun m!7986640 () Bool)

(assert (=> bs!1916024 m!7986640))

(assert (=> bs!1916024 m!7986640))

(declare-fun m!7986642 () Bool)

(assert (=> bs!1916024 m!7986642))

(declare-fun m!7986644 () Bool)

(assert (=> bs!1916024 m!7986644))

(assert (=> b!7320989 d!2273546))

(declare-fun bs!1916025 () Bool)

(declare-fun d!2273548 () Bool)

(assert (= bs!1916025 (and d!2273548 b!7320988)))

(declare-fun lambda!453392 () Int)

(assert (=> bs!1916025 (= lambda!453392 lambda!453387)))

(declare-fun bs!1916026 () Bool)

(assert (= bs!1916026 (and d!2273548 d!2273540)))

(assert (=> bs!1916026 (= lambda!453392 lambda!453390)))

(declare-fun bs!1916027 () Bool)

(assert (= bs!1916027 (and d!2273548 d!2273544)))

(assert (=> bs!1916027 (= lambda!453392 lambda!453391)))

(assert (=> d!2273548 true))

(assert (=> d!2273548 true))

(assert (=> d!2273548 (< (dynLambda!29326 order!29353 f!643) (dynLambda!29327 order!29355 lambda!453392))))

(assert (=> d!2273548 (= (select (flatMap!3161 lt!2604346 f!643) b!25336) (exists!4690 lt!2604346 lambda!453392))))

(declare-fun lt!2604356 () A!1083)

(assert (=> d!2273548 (= lt!2604356 (choose!56921 lt!2604346 f!643 b!25336))))

(assert (=> d!2273548 (= (flatMapPost!162 lt!2604346 f!643 b!25336) lt!2604356)))

(declare-fun bs!1916028 () Bool)

(assert (= bs!1916028 d!2273548))

(assert (=> bs!1916028 m!7986604))

(assert (=> bs!1916028 m!7986606))

(declare-fun m!7986646 () Bool)

(assert (=> bs!1916028 m!7986646))

(declare-fun m!7986648 () Bool)

(assert (=> bs!1916028 m!7986648))

(assert (=> b!7320989 d!2273548))

(declare-fun d!2273550 () Bool)

(assert (=> d!2273550 (= (flatMap!3161 s1!434 f!643) (choose!56922 s1!434 f!643))))

(declare-fun bs!1916029 () Bool)

(assert (= bs!1916029 d!2273550))

(declare-fun m!7986650 () Bool)

(assert (=> bs!1916029 m!7986650))

(assert (=> start!714262 d!2273550))

(declare-fun d!2273552 () Bool)

(declare-fun lt!2604357 () Bool)

(assert (=> d!2273552 (= lt!2604357 (exists!4691 (toList!11712 s2!405) lambda!453387))))

(assert (=> d!2273552 (= lt!2604357 (choose!56920 s2!405 lambda!453387))))

(assert (=> d!2273552 (= (exists!4690 s2!405 lambda!453387) lt!2604357)))

(declare-fun bs!1916030 () Bool)

(assert (= bs!1916030 d!2273552))

(declare-fun m!7986652 () Bool)

(assert (=> bs!1916030 m!7986652))

(assert (=> bs!1916030 m!7986652))

(declare-fun m!7986654 () Bool)

(assert (=> bs!1916030 m!7986654))

(declare-fun m!7986656 () Bool)

(assert (=> bs!1916030 m!7986656))

(assert (=> b!7320990 d!2273552))

(declare-fun d!2273554 () Bool)

(declare-fun e!4383291 () Bool)

(assert (=> d!2273554 e!4383291))

(declare-fun res!2959002 () Bool)

(assert (=> d!2273554 (=> (not res!2959002) (not e!4383291))))

(declare-fun lt!2604360 () A!1083)

(declare-fun dynLambda!29329 (Int A!1083) Bool)

(assert (=> d!2273554 (= res!2959002 (dynLambda!29329 lambda!453387 lt!2604360))))

(declare-fun getWitness!2404 (List!71425 Int) A!1083)

(assert (=> d!2273554 (= lt!2604360 (getWitness!2404 (toList!11712 lt!2604346) lambda!453387))))

(assert (=> d!2273554 (exists!4690 lt!2604346 lambda!453387)))

(assert (=> d!2273554 (= (getWitness!2403 lt!2604346 lambda!453387) lt!2604360)))

(declare-fun b!7321003 () Bool)

(assert (=> b!7321003 (= e!4383291 (select lt!2604346 lt!2604360))))

(assert (= (and d!2273554 res!2959002) b!7321003))

(declare-fun b_lambda!282977 () Bool)

(assert (=> (not b_lambda!282977) (not d!2273554)))

(declare-fun m!7986662 () Bool)

(assert (=> d!2273554 m!7986662))

(assert (=> d!2273554 m!7986640))

(assert (=> d!2273554 m!7986640))

(declare-fun m!7986664 () Bool)

(assert (=> d!2273554 m!7986664))

(assert (=> d!2273554 m!7986612))

(declare-fun m!7986666 () Bool)

(assert (=> b!7321003 m!7986666))

(assert (=> b!7320993 d!2273554))

(declare-fun d!2273562 () Bool)

(assert (=> d!2273562 (= (flatMap!3161 lt!2604346 f!643) (choose!56922 lt!2604346 f!643))))

(declare-fun bs!1916033 () Bool)

(assert (= bs!1916033 d!2273562))

(declare-fun m!7986668 () Bool)

(assert (=> bs!1916033 m!7986668))

(assert (=> b!7320994 d!2273562))

(declare-fun condSetEmpty!55697 () Bool)

(assert (=> tb!262327 (= condSetEmpty!55697 (= (dynLambda!29328 f!643 lt!2604344) ((as const (Array B!3785 Bool)) false)))))

(declare-fun setRes!55697 () Bool)

(assert (=> tb!262327 (= result!353502 setRes!55697)))

(declare-fun setIsEmpty!55697 () Bool)

(assert (=> setIsEmpty!55697 setRes!55697))

(declare-fun setNonEmpty!55697 () Bool)

(declare-fun tp!2079431 () Bool)

(assert (=> setNonEmpty!55697 (= setRes!55697 (and tp!2079431 tp_is_empty!48059))))

(declare-fun setElem!55697 () B!3785)

(declare-fun setRest!55697 () (InoxSet B!3785))

(assert (=> setNonEmpty!55697 (= (dynLambda!29328 f!643 lt!2604344) ((_ map or) (store ((as const (Array B!3785 Bool)) false) setElem!55697 true) setRest!55697))))

(assert (= (and tb!262327 condSetEmpty!55697) setIsEmpty!55697))

(assert (= (and tb!262327 (not condSetEmpty!55697)) setNonEmpty!55697))

(declare-fun condSetEmpty!55700 () Bool)

(assert (=> setNonEmpty!55693 (= condSetEmpty!55700 (= setRest!55693 ((as const (Array A!1083 Bool)) false)))))

(declare-fun setRes!55700 () Bool)

(assert (=> setNonEmpty!55693 (= tp!2079428 setRes!55700)))

(declare-fun setIsEmpty!55700 () Bool)

(assert (=> setIsEmpty!55700 setRes!55700))

(declare-fun setNonEmpty!55700 () Bool)

(declare-fun tp!2079434 () Bool)

(assert (=> setNonEmpty!55700 (= setRes!55700 (and tp!2079434 tp_is_empty!48057))))

(declare-fun setElem!55700 () A!1083)

(declare-fun setRest!55700 () (InoxSet A!1083))

(assert (=> setNonEmpty!55700 (= setRest!55693 ((_ map or) (store ((as const (Array A!1083 Bool)) false) setElem!55700 true) setRest!55700))))

(assert (= (and setNonEmpty!55693 condSetEmpty!55700) setIsEmpty!55700))

(assert (= (and setNonEmpty!55693 (not condSetEmpty!55700)) setNonEmpty!55700))

(declare-fun condSetEmpty!55701 () Bool)

(assert (=> setNonEmpty!55694 (= condSetEmpty!55701 (= setRest!55694 ((as const (Array A!1083 Bool)) false)))))

(declare-fun setRes!55701 () Bool)

(assert (=> setNonEmpty!55694 (= tp!2079426 setRes!55701)))

(declare-fun setIsEmpty!55701 () Bool)

(assert (=> setIsEmpty!55701 setRes!55701))

(declare-fun setNonEmpty!55701 () Bool)

(declare-fun tp!2079435 () Bool)

(assert (=> setNonEmpty!55701 (= setRes!55701 (and tp!2079435 tp_is_empty!48057))))

(declare-fun setElem!55701 () A!1083)

(declare-fun setRest!55701 () (InoxSet A!1083))

(assert (=> setNonEmpty!55701 (= setRest!55694 ((_ map or) (store ((as const (Array A!1083 Bool)) false) setElem!55701 true) setRest!55701))))

(assert (= (and setNonEmpty!55694 condSetEmpty!55701) setIsEmpty!55701))

(assert (= (and setNonEmpty!55694 (not condSetEmpty!55701)) setNonEmpty!55701))

(declare-fun b_lambda!282979 () Bool)

(assert (= b_lambda!282977 (or b!7320988 b_lambda!282979)))

(declare-fun bs!1916035 () Bool)

(declare-fun d!2273566 () Bool)

(assert (= bs!1916035 (and d!2273566 b!7320988)))

(assert (=> bs!1916035 (= (dynLambda!29329 lambda!453387 lt!2604360) (select (dynLambda!29328 f!643 lt!2604360) b!25336))))

(declare-fun b_lambda!282981 () Bool)

(assert (=> (not b_lambda!282981) (not bs!1916035)))

(declare-fun t!385743 () Bool)

(declare-fun tb!262329 () Bool)

(assert (=> (and start!714262 (= f!643 f!643) t!385743) tb!262329))

(assert (=> bs!1916035 t!385743))

(declare-fun result!353508 () Bool)

(declare-fun b_and!351725 () Bool)

(assert (= b_and!351723 (and (=> t!385743 result!353508) b_and!351725)))

(declare-fun m!7986676 () Bool)

(assert (=> bs!1916035 m!7986676))

(declare-fun m!7986678 () Bool)

(assert (=> bs!1916035 m!7986678))

(assert (=> d!2273554 d!2273566))

(check-sat (not d!2273554) (not b_lambda!282973) (not setNonEmpty!55697) (not d!2273540) (not b_lambda!282979) (not d!2273562) b_and!351725 (not d!2273552) (not d!2273546) (not d!2273548) (not setNonEmpty!55700) (not d!2273542) (not b_lambda!282981) (not d!2273550) (not d!2273544) (not tb!262329) tp_is_empty!48057 (not setNonEmpty!55701) (not b_next!135027) tp_is_empty!48059 (not d!2273538))
(check-sat b_and!351725 (not b_next!135027))
