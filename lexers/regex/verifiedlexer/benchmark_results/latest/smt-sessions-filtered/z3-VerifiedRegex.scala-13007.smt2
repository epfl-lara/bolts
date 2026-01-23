; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714158 () Bool)

(assert start!714158)

(declare-fun b_free!134205 () Bool)

(declare-fun b_next!134995 () Bool)

(assert (=> start!714158 (= b_free!134205 (not b_next!134995))))

(declare-fun tp!2079236 () Bool)

(declare-fun b_and!351673 () Bool)

(assert (=> start!714158 (= tp!2079236 b_and!351673)))

(declare-fun b!7320630 () Bool)

(assert (=> b!7320630 true))

(assert (=> b!7320630 true))

(declare-fun order!29299 () Int)

(declare-fun order!29297 () Int)

(declare-fun lambda!453234 () Int)

(declare-fun f!643 () Int)

(declare-fun dynLambda!29290 (Int Int) Int)

(declare-fun dynLambda!29291 (Int Int) Int)

(assert (=> b!7320630 (< (dynLambda!29290 order!29297 f!643) (dynLambda!29291 order!29299 lambda!453234))))

(declare-fun b!7320631 () Bool)

(declare-fun e!4383038 () Bool)

(declare-fun e!4383039 () Bool)

(assert (=> b!7320631 (= e!4383038 e!4383039)))

(declare-fun res!2958726 () Bool)

(assert (=> b!7320631 (=> res!2958726 e!4383039)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1051 0))(
  ( (A!1052 (val!29371 Int)) )
))
(declare-fun lt!2604026 () (InoxSet A!1051))

(declare-fun exists!4667 ((InoxSet A!1051) Int) Bool)

(assert (=> b!7320631 (= res!2958726 (not (exists!4667 lt!2604026 lambda!453234)))))

(assert (=> b!7320631 (exists!4667 lt!2604026 lambda!453234)))

(declare-fun lt!2604027 () A!1051)

(declare-datatypes ((Unit!164827 0))(
  ( (Unit!164828) )
))
(declare-fun lt!2604028 () Unit!164827)

(declare-fun lemmaContainsThenExists!277 ((InoxSet A!1051) A!1051 Int) Unit!164827)

(assert (=> b!7320631 (= lt!2604028 (lemmaContainsThenExists!277 lt!2604026 lt!2604027 lambda!453234))))

(declare-fun b!7320632 () Bool)

(declare-datatypes ((B!3753 0))(
  ( (B!3754 (val!29372 Int)) )
))
(declare-fun b!25336 () B!3753)

(declare-fun flatMap!3145 ((InoxSet A!1051) Int) (InoxSet B!3753))

(assert (=> b!7320632 (= e!4383039 (select (flatMap!3145 lt!2604026 f!643) b!25336))))

(declare-fun lt!2604029 () A!1051)

(declare-fun flatMapPost!148 ((InoxSet A!1051) Int B!3753) A!1051)

(assert (=> b!7320632 (= (flatMapPost!148 lt!2604026 f!643 b!25336) lt!2604029)))

(declare-fun b!7320633 () Bool)

(declare-fun e!4383036 () Bool)

(declare-fun e!4383040 () Bool)

(assert (=> b!7320633 (= e!4383036 e!4383040)))

(declare-fun res!2958725 () Bool)

(assert (=> b!7320633 (=> res!2958725 e!4383040)))

(declare-fun dynLambda!29292 (Int A!1051) (InoxSet B!3753))

(assert (=> b!7320633 (= res!2958725 (not (select (dynLambda!29292 f!643 lt!2604027) b!25336)))))

(declare-fun s2!405 () (InoxSet A!1051))

(declare-fun getWitness!2392 ((InoxSet A!1051) Int) A!1051)

(assert (=> b!7320633 (= lt!2604027 (getWitness!2392 s2!405 lambda!453234))))

(declare-fun b!7320634 () Bool)

(declare-fun e!4383035 () Bool)

(declare-fun e!4383037 () Bool)

(assert (=> b!7320634 (= e!4383035 e!4383037)))

(declare-fun res!2958727 () Bool)

(assert (=> b!7320634 (=> (not res!2958727) (not e!4383037))))

(declare-fun lt!2604024 () (InoxSet B!3753))

(assert (=> b!7320634 (= res!2958727 (select lt!2604024 b!25336))))

(assert (=> b!7320634 (= lt!2604024 (flatMap!3145 s2!405 f!643))))

(declare-fun setNonEmpty!55551 () Bool)

(declare-fun setRes!55552 () Bool)

(declare-fun tp!2079238 () Bool)

(declare-fun tp_is_empty!47993 () Bool)

(assert (=> setNonEmpty!55551 (= setRes!55552 (and tp!2079238 tp_is_empty!47993))))

(declare-fun s1!434 () (InoxSet A!1051))

(declare-fun setElem!55552 () A!1051)

(declare-fun setRest!55552 () (InoxSet A!1051))

(assert (=> setNonEmpty!55551 (= s1!434 ((_ map or) (store ((as const (Array A!1051 Bool)) false) setElem!55552 true) setRest!55552))))

(declare-fun res!2958729 () Bool)

(assert (=> start!714158 (=> (not res!2958729) (not e!4383035))))

(declare-fun lt!2604025 () (InoxSet B!3753))

(assert (=> start!714158 (= res!2958729 (not (select lt!2604025 b!25336)))))

(assert (=> start!714158 (= lt!2604025 (flatMap!3145 s1!434 f!643))))

(assert (=> start!714158 e!4383035))

(declare-fun condSetEmpty!55552 () Bool)

(assert (=> start!714158 (= condSetEmpty!55552 (= s2!405 ((as const (Array A!1051 Bool)) false)))))

(declare-fun setRes!55551 () Bool)

(assert (=> start!714158 setRes!55551))

(declare-fun tp_is_empty!47995 () Bool)

(assert (=> start!714158 tp_is_empty!47995))

(declare-fun condSetEmpty!55551 () Bool)

(assert (=> start!714158 (= condSetEmpty!55551 (= s1!434 ((as const (Array A!1051 Bool)) false)))))

(assert (=> start!714158 setRes!55552))

(assert (=> start!714158 tp!2079236))

(assert (=> b!7320630 (= e!4383037 (not e!4383036))))

(declare-fun res!2958728 () Bool)

(assert (=> b!7320630 (=> res!2958728 e!4383036)))

(assert (=> b!7320630 (= res!2958728 (not (exists!4667 s2!405 lambda!453234)))))

(assert (=> b!7320630 (= (flatMapPost!148 s2!405 f!643 b!25336) lt!2604029)))

(declare-fun empty!3311 () A!1051)

(assert (=> b!7320630 (= lt!2604029 empty!3311)))

(assert (=> b!7320630 true))

(assert (=> b!7320630 tp_is_empty!47993))

(declare-fun setIsEmpty!55551 () Bool)

(assert (=> setIsEmpty!55551 setRes!55551))

(declare-fun setNonEmpty!55552 () Bool)

(declare-fun tp!2079237 () Bool)

(assert (=> setNonEmpty!55552 (= setRes!55551 (and tp!2079237 tp_is_empty!47993))))

(declare-fun setElem!55551 () A!1051)

(declare-fun setRest!55551 () (InoxSet A!1051))

(assert (=> setNonEmpty!55552 (= s2!405 ((_ map or) (store ((as const (Array A!1051 Bool)) false) setElem!55551 true) setRest!55551))))

(declare-fun b!7320635 () Bool)

(assert (=> b!7320635 (= e!4383040 e!4383038)))

(declare-fun res!2958724 () Bool)

(assert (=> b!7320635 (=> res!2958724 e!4383038)))

(assert (=> b!7320635 (= res!2958724 (or (not (select lt!2604026 lt!2604027)) (not (select ((_ map or) lt!2604025 lt!2604024) b!25336))))))

(assert (=> b!7320635 (= lt!2604026 ((_ map or) s1!434 s2!405))))

(declare-fun setIsEmpty!55552 () Bool)

(assert (=> setIsEmpty!55552 setRes!55552))

(assert (= (and start!714158 res!2958729) b!7320634))

(assert (= (and b!7320634 res!2958727) b!7320630))

(assert (= (and b!7320630 (not res!2958728)) b!7320633))

(assert (= (and b!7320633 (not res!2958725)) b!7320635))

(assert (= (and b!7320635 (not res!2958724)) b!7320631))

(assert (= (and b!7320631 (not res!2958726)) b!7320632))

(assert (= (and start!714158 condSetEmpty!55552) setIsEmpty!55551))

(assert (= (and start!714158 (not condSetEmpty!55552)) setNonEmpty!55552))

(assert (= (and start!714158 condSetEmpty!55551) setIsEmpty!55552))

(assert (= (and start!714158 (not condSetEmpty!55551)) setNonEmpty!55551))

(declare-fun b_lambda!282935 () Bool)

(assert (=> (not b_lambda!282935) (not b!7320633)))

(declare-fun t!385716 () Bool)

(declare-fun tb!262311 () Bool)

(assert (=> (and start!714158 (= f!643 f!643) t!385716) tb!262311))

(assert (=> b!7320633 t!385716))

(declare-fun result!353462 () Bool)

(declare-fun b_and!351675 () Bool)

(assert (= b_and!351673 (and (=> t!385716 result!353462) b_and!351675)))

(declare-fun m!7985846 () Bool)

(assert (=> b!7320633 m!7985846))

(declare-fun m!7985848 () Bool)

(assert (=> b!7320633 m!7985848))

(declare-fun m!7985850 () Bool)

(assert (=> b!7320633 m!7985850))

(declare-fun m!7985852 () Bool)

(assert (=> b!7320630 m!7985852))

(declare-fun m!7985854 () Bool)

(assert (=> b!7320630 m!7985854))

(declare-fun m!7985856 () Bool)

(assert (=> start!714158 m!7985856))

(declare-fun m!7985858 () Bool)

(assert (=> start!714158 m!7985858))

(declare-fun m!7985860 () Bool)

(assert (=> b!7320635 m!7985860))

(declare-fun m!7985862 () Bool)

(assert (=> b!7320635 m!7985862))

(declare-fun m!7985864 () Bool)

(assert (=> b!7320632 m!7985864))

(declare-fun m!7985866 () Bool)

(assert (=> b!7320632 m!7985866))

(declare-fun m!7985868 () Bool)

(assert (=> b!7320632 m!7985868))

(declare-fun m!7985870 () Bool)

(assert (=> b!7320631 m!7985870))

(assert (=> b!7320631 m!7985870))

(declare-fun m!7985872 () Bool)

(assert (=> b!7320631 m!7985872))

(declare-fun m!7985874 () Bool)

(assert (=> b!7320634 m!7985874))

(declare-fun m!7985876 () Bool)

(assert (=> b!7320634 m!7985876))

(check-sat (not setNonEmpty!55552) (not setNonEmpty!55551) (not b!7320634) tp_is_empty!47993 (not b!7320633) (not tb!262311) tp_is_empty!47995 (not b!7320632) b_and!351675 (not b_lambda!282935) (not b!7320630) (not b!7320631) (not b_next!134995) (not start!714158))
(check-sat b_and!351675 (not b_next!134995))
(get-model)

(declare-fun b_lambda!282939 () Bool)

(assert (= b_lambda!282935 (or (and start!714158 b_free!134205) b_lambda!282939)))

(check-sat (not setNonEmpty!55552) b_and!351675 (not setNonEmpty!55551) (not b!7320634) tp_is_empty!47993 (not b!7320633) (not tb!262311) tp_is_empty!47995 (not b!7320632) (not b!7320630) (not b!7320631) (not b_lambda!282939) (not b_next!134995) (not start!714158))
(check-sat b_and!351675 (not b_next!134995))
(get-model)

(declare-fun d!2273374 () Bool)

(declare-fun e!4383043 () Bool)

(assert (=> d!2273374 e!4383043))

(declare-fun res!2958732 () Bool)

(assert (=> d!2273374 (=> (not res!2958732) (not e!4383043))))

(declare-fun lt!2604037 () A!1051)

(declare-fun dynLambda!29293 (Int A!1051) Bool)

(assert (=> d!2273374 (= res!2958732 (dynLambda!29293 lambda!453234 lt!2604037))))

(declare-datatypes ((List!71416 0))(
  ( (Nil!71292) (Cons!71292 (h!77740 A!1051) (t!385719 List!71416)) )
))
(declare-fun getWitness!2393 (List!71416 Int) A!1051)

(declare-fun toList!11703 ((InoxSet A!1051)) List!71416)

(assert (=> d!2273374 (= lt!2604037 (getWitness!2393 (toList!11703 s2!405) lambda!453234))))

(assert (=> d!2273374 (exists!4667 s2!405 lambda!453234)))

(assert (=> d!2273374 (= (getWitness!2392 s2!405 lambda!453234) lt!2604037)))

(declare-fun b!7320643 () Bool)

(assert (=> b!7320643 (= e!4383043 (select s2!405 lt!2604037))))

(assert (= (and d!2273374 res!2958732) b!7320643))

(declare-fun b_lambda!282941 () Bool)

(assert (=> (not b_lambda!282941) (not d!2273374)))

(declare-fun m!7985886 () Bool)

(assert (=> d!2273374 m!7985886))

(declare-fun m!7985888 () Bool)

(assert (=> d!2273374 m!7985888))

(assert (=> d!2273374 m!7985888))

(declare-fun m!7985890 () Bool)

(assert (=> d!2273374 m!7985890))

(assert (=> d!2273374 m!7985852))

(declare-fun m!7985892 () Bool)

(assert (=> b!7320643 m!7985892))

(assert (=> b!7320633 d!2273374))

(declare-fun d!2273378 () Bool)

(declare-fun choose!56891 ((InoxSet A!1051) Int) (InoxSet B!3753))

(assert (=> d!2273378 (= (flatMap!3145 lt!2604026 f!643) (choose!56891 lt!2604026 f!643))))

(declare-fun bs!1915888 () Bool)

(assert (= bs!1915888 d!2273378))

(declare-fun m!7985894 () Bool)

(assert (=> bs!1915888 m!7985894))

(assert (=> b!7320632 d!2273378))

(declare-fun bs!1915892 () Bool)

(declare-fun d!2273380 () Bool)

(assert (= bs!1915892 (and d!2273380 b!7320630)))

(declare-fun lambda!453240 () Int)

(assert (=> bs!1915892 (= lambda!453240 lambda!453234)))

(assert (=> d!2273380 true))

(assert (=> d!2273380 true))

(assert (=> d!2273380 (< (dynLambda!29290 order!29297 f!643) (dynLambda!29291 order!29299 lambda!453240))))

(assert (=> d!2273380 (= (select (flatMap!3145 lt!2604026 f!643) b!25336) (exists!4667 lt!2604026 lambda!453240))))

(declare-fun lt!2604042 () A!1051)

(declare-fun choose!56892 ((InoxSet A!1051) Int B!3753) A!1051)

(assert (=> d!2273380 (= lt!2604042 (choose!56892 lt!2604026 f!643 b!25336))))

(assert (=> d!2273380 (= (flatMapPost!148 lt!2604026 f!643 b!25336) lt!2604042)))

(declare-fun bs!1915893 () Bool)

(assert (= bs!1915893 d!2273380))

(assert (=> bs!1915893 m!7985864))

(assert (=> bs!1915893 m!7985866))

(declare-fun m!7985908 () Bool)

(assert (=> bs!1915893 m!7985908))

(declare-fun m!7985910 () Bool)

(assert (=> bs!1915893 m!7985910))

(assert (=> b!7320632 d!2273380))

(declare-fun d!2273386 () Bool)

(declare-fun lt!2604047 () Bool)

(declare-fun exists!4668 (List!71416 Int) Bool)

(assert (=> d!2273386 (= lt!2604047 (exists!4668 (toList!11703 lt!2604026) lambda!453234))))

(declare-fun choose!56893 ((InoxSet A!1051) Int) Bool)

(assert (=> d!2273386 (= lt!2604047 (choose!56893 lt!2604026 lambda!453234))))

(assert (=> d!2273386 (= (exists!4667 lt!2604026 lambda!453234) lt!2604047)))

(declare-fun bs!1915894 () Bool)

(assert (= bs!1915894 d!2273386))

(declare-fun m!7985912 () Bool)

(assert (=> bs!1915894 m!7985912))

(assert (=> bs!1915894 m!7985912))

(declare-fun m!7985914 () Bool)

(assert (=> bs!1915894 m!7985914))

(declare-fun m!7985916 () Bool)

(assert (=> bs!1915894 m!7985916))

(assert (=> b!7320631 d!2273386))

(declare-fun d!2273388 () Bool)

(assert (=> d!2273388 (exists!4667 lt!2604026 lambda!453234)))

(declare-fun lt!2604051 () Unit!164827)

(declare-fun choose!56895 ((InoxSet A!1051) A!1051 Int) Unit!164827)

(assert (=> d!2273388 (= lt!2604051 (choose!56895 lt!2604026 lt!2604027 lambda!453234))))

(assert (=> d!2273388 (select lt!2604026 lt!2604027)))

(assert (=> d!2273388 (= (lemmaContainsThenExists!277 lt!2604026 lt!2604027 lambda!453234) lt!2604051)))

(declare-fun bs!1915897 () Bool)

(assert (= bs!1915897 d!2273388))

(assert (=> bs!1915897 m!7985870))

(declare-fun m!7985922 () Bool)

(assert (=> bs!1915897 m!7985922))

(assert (=> bs!1915897 m!7985860))

(assert (=> b!7320631 d!2273388))

(declare-fun d!2273394 () Bool)

(assert (=> d!2273394 (= (flatMap!3145 s1!434 f!643) (choose!56891 s1!434 f!643))))

(declare-fun bs!1915898 () Bool)

(assert (= bs!1915898 d!2273394))

(declare-fun m!7985924 () Bool)

(assert (=> bs!1915898 m!7985924))

(assert (=> start!714158 d!2273394))

(declare-fun d!2273396 () Bool)

(declare-fun lt!2604052 () Bool)

(assert (=> d!2273396 (= lt!2604052 (exists!4668 (toList!11703 s2!405) lambda!453234))))

(assert (=> d!2273396 (= lt!2604052 (choose!56893 s2!405 lambda!453234))))

(assert (=> d!2273396 (= (exists!4667 s2!405 lambda!453234) lt!2604052)))

(declare-fun bs!1915899 () Bool)

(assert (= bs!1915899 d!2273396))

(assert (=> bs!1915899 m!7985888))

(assert (=> bs!1915899 m!7985888))

(declare-fun m!7985926 () Bool)

(assert (=> bs!1915899 m!7985926))

(declare-fun m!7985928 () Bool)

(assert (=> bs!1915899 m!7985928))

(assert (=> b!7320630 d!2273396))

(declare-fun bs!1915900 () Bool)

(declare-fun d!2273398 () Bool)

(assert (= bs!1915900 (and d!2273398 b!7320630)))

(declare-fun lambda!453241 () Int)

(assert (=> bs!1915900 (= lambda!453241 lambda!453234)))

(declare-fun bs!1915901 () Bool)

(assert (= bs!1915901 (and d!2273398 d!2273380)))

(assert (=> bs!1915901 (= lambda!453241 lambda!453240)))

(assert (=> d!2273398 true))

(assert (=> d!2273398 true))

(assert (=> d!2273398 (< (dynLambda!29290 order!29297 f!643) (dynLambda!29291 order!29299 lambda!453241))))

(assert (=> d!2273398 (= (select (flatMap!3145 s2!405 f!643) b!25336) (exists!4667 s2!405 lambda!453241))))

(declare-fun lt!2604053 () A!1051)

(assert (=> d!2273398 (= lt!2604053 (choose!56892 s2!405 f!643 b!25336))))

(assert (=> d!2273398 (= (flatMapPost!148 s2!405 f!643 b!25336) lt!2604053)))

(declare-fun bs!1915902 () Bool)

(assert (= bs!1915902 d!2273398))

(assert (=> bs!1915902 m!7985876))

(declare-fun m!7985930 () Bool)

(assert (=> bs!1915902 m!7985930))

(declare-fun m!7985932 () Bool)

(assert (=> bs!1915902 m!7985932))

(declare-fun m!7985934 () Bool)

(assert (=> bs!1915902 m!7985934))

(assert (=> b!7320630 d!2273398))

(declare-fun d!2273400 () Bool)

(assert (=> d!2273400 (= (flatMap!3145 s2!405 f!643) (choose!56891 s2!405 f!643))))

(declare-fun bs!1915903 () Bool)

(assert (= bs!1915903 d!2273400))

(declare-fun m!7985936 () Bool)

(assert (=> bs!1915903 m!7985936))

(assert (=> b!7320634 d!2273400))

(declare-fun condSetEmpty!55555 () Bool)

(assert (=> tb!262311 (= condSetEmpty!55555 (= (dynLambda!29292 f!643 lt!2604027) ((as const (Array B!3753 Bool)) false)))))

(declare-fun setRes!55555 () Bool)

(assert (=> tb!262311 (= result!353462 setRes!55555)))

(declare-fun setIsEmpty!55555 () Bool)

(assert (=> setIsEmpty!55555 setRes!55555))

(declare-fun setNonEmpty!55555 () Bool)

(declare-fun tp!2079241 () Bool)

(assert (=> setNonEmpty!55555 (= setRes!55555 (and tp!2079241 tp_is_empty!47995))))

(declare-fun setRest!55555 () (InoxSet B!3753))

(declare-fun setElem!55555 () B!3753)

(assert (=> setNonEmpty!55555 (= (dynLambda!29292 f!643 lt!2604027) ((_ map or) (store ((as const (Array B!3753 Bool)) false) setElem!55555 true) setRest!55555))))

(assert (= (and tb!262311 condSetEmpty!55555) setIsEmpty!55555))

(assert (= (and tb!262311 (not condSetEmpty!55555)) setNonEmpty!55555))

(declare-fun condSetEmpty!55558 () Bool)

(assert (=> setNonEmpty!55552 (= condSetEmpty!55558 (= setRest!55551 ((as const (Array A!1051 Bool)) false)))))

(declare-fun setRes!55558 () Bool)

(assert (=> setNonEmpty!55552 (= tp!2079237 setRes!55558)))

(declare-fun setIsEmpty!55558 () Bool)

(assert (=> setIsEmpty!55558 setRes!55558))

(declare-fun setNonEmpty!55558 () Bool)

(declare-fun tp!2079244 () Bool)

(assert (=> setNonEmpty!55558 (= setRes!55558 (and tp!2079244 tp_is_empty!47993))))

(declare-fun setElem!55558 () A!1051)

(declare-fun setRest!55558 () (InoxSet A!1051))

(assert (=> setNonEmpty!55558 (= setRest!55551 ((_ map or) (store ((as const (Array A!1051 Bool)) false) setElem!55558 true) setRest!55558))))

(assert (= (and setNonEmpty!55552 condSetEmpty!55558) setIsEmpty!55558))

(assert (= (and setNonEmpty!55552 (not condSetEmpty!55558)) setNonEmpty!55558))

(declare-fun condSetEmpty!55559 () Bool)

(assert (=> setNonEmpty!55551 (= condSetEmpty!55559 (= setRest!55552 ((as const (Array A!1051 Bool)) false)))))

(declare-fun setRes!55559 () Bool)

(assert (=> setNonEmpty!55551 (= tp!2079238 setRes!55559)))

(declare-fun setIsEmpty!55559 () Bool)

(assert (=> setIsEmpty!55559 setRes!55559))

(declare-fun setNonEmpty!55559 () Bool)

(declare-fun tp!2079245 () Bool)

(assert (=> setNonEmpty!55559 (= setRes!55559 (and tp!2079245 tp_is_empty!47993))))

(declare-fun setElem!55559 () A!1051)

(declare-fun setRest!55559 () (InoxSet A!1051))

(assert (=> setNonEmpty!55559 (= setRest!55552 ((_ map or) (store ((as const (Array A!1051 Bool)) false) setElem!55559 true) setRest!55559))))

(assert (= (and setNonEmpty!55551 condSetEmpty!55559) setIsEmpty!55559))

(assert (= (and setNonEmpty!55551 (not condSetEmpty!55559)) setNonEmpty!55559))

(declare-fun b_lambda!282943 () Bool)

(assert (= b_lambda!282941 (or b!7320630 b_lambda!282943)))

(declare-fun bs!1915904 () Bool)

(declare-fun d!2273402 () Bool)

(assert (= bs!1915904 (and d!2273402 b!7320630)))

(assert (=> bs!1915904 (= (dynLambda!29293 lambda!453234 lt!2604037) (select (dynLambda!29292 f!643 lt!2604037) b!25336))))

(declare-fun b_lambda!282945 () Bool)

(assert (=> (not b_lambda!282945) (not bs!1915904)))

(declare-fun t!385718 () Bool)

(declare-fun tb!262313 () Bool)

(assert (=> (and start!714158 (= f!643 f!643) t!385718) tb!262313))

(assert (=> bs!1915904 t!385718))

(declare-fun result!353468 () Bool)

(declare-fun b_and!351677 () Bool)

(assert (= b_and!351675 (and (=> t!385718 result!353468) b_and!351677)))

(declare-fun m!7985938 () Bool)

(assert (=> bs!1915904 m!7985938))

(declare-fun m!7985940 () Bool)

(assert (=> bs!1915904 m!7985940))

(assert (=> d!2273374 d!2273402))

(check-sat (not setNonEmpty!55559) (not tb!262313) (not setNonEmpty!55558) (not d!2273394) (not d!2273396) b_and!351677 (not setNonEmpty!55555) (not d!2273380) tp_is_empty!47993 tp_is_empty!47995 (not d!2273374) (not b_lambda!282945) (not b_lambda!282943) (not d!2273398) (not d!2273388) (not d!2273400) (not b_lambda!282939) (not b_next!134995) (not d!2273378) (not d!2273386))
(check-sat b_and!351677 (not b_next!134995))
