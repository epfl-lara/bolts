; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714222 () Bool)

(assert start!714222)

(declare-fun b_free!134225 () Bool)

(declare-fun b_next!135015 () Bool)

(assert (=> start!714222 (= b_free!134225 (not b_next!135015))))

(declare-fun tp!2079356 () Bool)

(declare-fun b_and!351703 () Bool)

(assert (=> start!714222 (= tp!2079356 b_and!351703)))

(declare-fun b!7320815 () Bool)

(assert (=> b!7320815 true))

(assert (=> b!7320815 true))

(declare-fun order!29329 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29331 () Int)

(declare-fun lambda!453305 () Int)

(declare-fun dynLambda!29310 (Int Int) Int)

(declare-fun dynLambda!29311 (Int Int) Int)

(assert (=> b!7320815 (< (dynLambda!29310 order!29329 f!643) (dynLambda!29311 order!29331 lambda!453305))))

(declare-fun b!7320810 () Bool)

(declare-fun e!4383160 () Bool)

(declare-fun e!4383161 () Bool)

(assert (=> b!7320810 (= e!4383160 e!4383161)))

(declare-fun res!2958853 () Bool)

(assert (=> b!7320810 (=> res!2958853 e!4383161)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1071 0))(
  ( (A!1072 (val!29391 Int)) )
))
(declare-fun lt!2604191 () (InoxSet A!1071))

(declare-datatypes ((B!3773 0))(
  ( (B!3774 (val!29392 Int)) )
))
(declare-fun b!25336 () B!3773)

(declare-fun flatMap!3155 ((InoxSet A!1071) Int) (InoxSet B!3773))

(assert (=> b!7320810 (= res!2958853 (not (select (flatMap!3155 lt!2604191 f!643) b!25336)))))

(declare-fun s1!434 () (InoxSet A!1071))

(declare-fun s2!405 () (InoxSet A!1071))

(assert (=> b!7320810 (= lt!2604191 ((_ map or) s1!434 s2!405))))

(declare-fun setIsEmpty!55641 () Bool)

(declare-fun setRes!55641 () Bool)

(assert (=> setIsEmpty!55641 setRes!55641))

(declare-fun res!2958852 () Bool)

(declare-fun e!4383162 () Bool)

(assert (=> start!714222 (=> (not res!2958852) (not e!4383162))))

(declare-fun lt!2604190 () (InoxSet B!3773))

(assert (=> start!714222 (= res!2958852 (not (select lt!2604190 b!25336)))))

(assert (=> start!714222 (= lt!2604190 (flatMap!3155 s1!434 f!643))))

(assert (=> start!714222 e!4383162))

(declare-fun condSetEmpty!55642 () Bool)

(assert (=> start!714222 (= condSetEmpty!55642 (= s2!405 ((as const (Array A!1071 Bool)) false)))))

(declare-fun setRes!55642 () Bool)

(assert (=> start!714222 setRes!55642))

(declare-fun tp_is_empty!48035 () Bool)

(assert (=> start!714222 tp_is_empty!48035))

(declare-fun condSetEmpty!55641 () Bool)

(assert (=> start!714222 (= condSetEmpty!55641 (= s1!434 ((as const (Array A!1071 Bool)) false)))))

(assert (=> start!714222 setRes!55641))

(assert (=> start!714222 tp!2079356))

(declare-fun b!7320811 () Bool)

(declare-fun res!2958851 () Bool)

(assert (=> b!7320811 (=> res!2958851 e!4383160)))

(declare-fun exists!4680 ((InoxSet A!1071) Int) Bool)

(assert (=> b!7320811 (= res!2958851 (exists!4680 s2!405 lambda!453305))))

(declare-fun e!4383158 () Bool)

(declare-fun b!7320812 () Bool)

(declare-fun lt!2604192 () A!1071)

(declare-fun flatMapPost!156 ((InoxSet A!1071) Int B!3773) A!1071)

(assert (=> b!7320812 (= e!4383158 (= (flatMapPost!156 s2!405 f!643 b!25336) lt!2604192))))

(declare-fun b!7320813 () Bool)

(declare-fun e!4383159 () Bool)

(assert (=> b!7320813 (= e!4383162 e!4383159)))

(declare-fun res!2958850 () Bool)

(assert (=> b!7320813 (=> (not res!2958850) (not e!4383159))))

(declare-fun lt!2604193 () (InoxSet B!3773))

(assert (=> b!7320813 (= res!2958850 (and (not (select lt!2604193 b!25336)) (not (select ((_ map or) lt!2604190 lt!2604193) b!25336))))))

(assert (=> b!7320813 (= lt!2604193 (flatMap!3155 s2!405 f!643))))

(declare-fun setNonEmpty!55641 () Bool)

(declare-fun tp!2079358 () Bool)

(declare-fun tp_is_empty!48033 () Bool)

(assert (=> setNonEmpty!55641 (= setRes!55642 (and tp!2079358 tp_is_empty!48033))))

(declare-fun setElem!55641 () A!1071)

(declare-fun setRest!55641 () (InoxSet A!1071))

(assert (=> setNonEmpty!55641 (= s2!405 ((_ map or) (store ((as const (Array A!1071 Bool)) false) setElem!55641 true) setRest!55641))))

(declare-fun b!7320814 () Bool)

(assert (=> b!7320814 (= e!4383161 (exists!4680 lt!2604191 lambda!453305))))

(assert (=> b!7320814 (= (flatMapPost!156 lt!2604191 f!643 b!25336) lt!2604192)))

(declare-fun setNonEmpty!55642 () Bool)

(declare-fun tp!2079357 () Bool)

(assert (=> setNonEmpty!55642 (= setRes!55641 (and tp!2079357 tp_is_empty!48033))))

(declare-fun setElem!55642 () A!1071)

(declare-fun setRest!55642 () (InoxSet A!1071))

(assert (=> setNonEmpty!55642 (= s1!434 ((_ map or) (store ((as const (Array A!1071 Bool)) false) setElem!55642 true) setRest!55642))))

(assert (=> b!7320815 (= e!4383159 (not e!4383160))))

(declare-fun res!2958854 () Bool)

(assert (=> b!7320815 (=> res!2958854 e!4383160)))

(assert (=> b!7320815 (= res!2958854 (exists!4680 s1!434 lambda!453305))))

(assert (=> b!7320815 e!4383158))

(declare-fun res!2958855 () Bool)

(assert (=> b!7320815 (=> (not res!2958855) (not e!4383158))))

(assert (=> b!7320815 (= res!2958855 (= (flatMapPost!156 s1!434 f!643 b!25336) lt!2604192))))

(declare-fun empty!3343 () A!1071)

(assert (=> b!7320815 (= lt!2604192 empty!3343)))

(assert (=> b!7320815 true))

(assert (=> b!7320815 tp_is_empty!48033))

(declare-fun setIsEmpty!55642 () Bool)

(assert (=> setIsEmpty!55642 setRes!55642))

(assert (= (and start!714222 res!2958852) b!7320813))

(assert (= (and b!7320813 res!2958850) b!7320815))

(assert (= (and b!7320815 res!2958855) b!7320812))

(assert (= (and b!7320815 (not res!2958854)) b!7320811))

(assert (= (and b!7320811 (not res!2958851)) b!7320810))

(assert (= (and b!7320810 (not res!2958853)) b!7320814))

(assert (= (and start!714222 condSetEmpty!55642) setIsEmpty!55642))

(assert (= (and start!714222 (not condSetEmpty!55642)) setNonEmpty!55641))

(assert (= (and start!714222 condSetEmpty!55641) setIsEmpty!55641))

(assert (= (and start!714222 (not condSetEmpty!55641)) setNonEmpty!55642))

(declare-fun m!7986210 () Bool)

(assert (=> b!7320810 m!7986210))

(declare-fun m!7986212 () Bool)

(assert (=> b!7320810 m!7986212))

(declare-fun m!7986214 () Bool)

(assert (=> b!7320813 m!7986214))

(declare-fun m!7986216 () Bool)

(assert (=> b!7320813 m!7986216))

(declare-fun m!7986218 () Bool)

(assert (=> b!7320813 m!7986218))

(declare-fun m!7986220 () Bool)

(assert (=> start!714222 m!7986220))

(declare-fun m!7986222 () Bool)

(assert (=> start!714222 m!7986222))

(declare-fun m!7986224 () Bool)

(assert (=> b!7320814 m!7986224))

(declare-fun m!7986226 () Bool)

(assert (=> b!7320814 m!7986226))

(declare-fun m!7986228 () Bool)

(assert (=> b!7320812 m!7986228))

(declare-fun m!7986230 () Bool)

(assert (=> b!7320815 m!7986230))

(declare-fun m!7986232 () Bool)

(assert (=> b!7320815 m!7986232))

(declare-fun m!7986234 () Bool)

(assert (=> b!7320811 m!7986234))

(check-sat (not b!7320814) (not b!7320813) b_and!351703 (not b!7320811) (not start!714222) (not setNonEmpty!55641) tp_is_empty!48033 (not b!7320812) (not setNonEmpty!55642) (not b!7320810) tp_is_empty!48035 (not b!7320815) (not b_next!135015))
(check-sat b_and!351703 (not b_next!135015))
(get-model)

(declare-fun d!2273455 () Bool)

(declare-fun lt!2604196 () Bool)

(declare-datatypes ((List!71421 0))(
  ( (Nil!71297) (Cons!71297 (h!77745 A!1071) (t!385730 List!71421)) )
))
(declare-fun exists!4681 (List!71421 Int) Bool)

(declare-fun toList!11708 ((InoxSet A!1071)) List!71421)

(assert (=> d!2273455 (= lt!2604196 (exists!4681 (toList!11708 lt!2604191) lambda!453305))))

(declare-fun choose!56909 ((InoxSet A!1071) Int) Bool)

(assert (=> d!2273455 (= lt!2604196 (choose!56909 lt!2604191 lambda!453305))))

(assert (=> d!2273455 (= (exists!4680 lt!2604191 lambda!453305) lt!2604196)))

(declare-fun bs!1915951 () Bool)

(assert (= bs!1915951 d!2273455))

(declare-fun m!7986240 () Bool)

(assert (=> bs!1915951 m!7986240))

(assert (=> bs!1915951 m!7986240))

(declare-fun m!7986242 () Bool)

(assert (=> bs!1915951 m!7986242))

(declare-fun m!7986244 () Bool)

(assert (=> bs!1915951 m!7986244))

(assert (=> b!7320814 d!2273455))

(declare-fun bs!1915953 () Bool)

(declare-fun d!2273463 () Bool)

(assert (= bs!1915953 (and d!2273463 b!7320815)))

(declare-fun lambda!453310 () Int)

(assert (=> bs!1915953 (= lambda!453310 lambda!453305)))

(assert (=> d!2273463 true))

(assert (=> d!2273463 true))

(assert (=> d!2273463 (< (dynLambda!29310 order!29329 f!643) (dynLambda!29311 order!29331 lambda!453310))))

(assert (=> d!2273463 (= (select (flatMap!3155 lt!2604191 f!643) b!25336) (exists!4680 lt!2604191 lambda!453310))))

(declare-fun lt!2604204 () A!1071)

(declare-fun choose!56911 ((InoxSet A!1071) Int B!3773) A!1071)

(assert (=> d!2273463 (= lt!2604204 (choose!56911 lt!2604191 f!643 b!25336))))

(assert (=> d!2273463 (= (flatMapPost!156 lt!2604191 f!643 b!25336) lt!2604204)))

(declare-fun bs!1915954 () Bool)

(assert (= bs!1915954 d!2273463))

(assert (=> bs!1915954 m!7986210))

(assert (=> bs!1915954 m!7986212))

(declare-fun m!7986252 () Bool)

(assert (=> bs!1915954 m!7986252))

(declare-fun m!7986254 () Bool)

(assert (=> bs!1915954 m!7986254))

(assert (=> b!7320814 d!2273463))

(declare-fun d!2273467 () Bool)

(declare-fun choose!56912 ((InoxSet A!1071) Int) (InoxSet B!3773))

(assert (=> d!2273467 (= (flatMap!3155 lt!2604191 f!643) (choose!56912 lt!2604191 f!643))))

(declare-fun bs!1915956 () Bool)

(assert (= bs!1915956 d!2273467))

(declare-fun m!7986256 () Bool)

(assert (=> bs!1915956 m!7986256))

(assert (=> b!7320810 d!2273467))

(declare-fun d!2273469 () Bool)

(declare-fun lt!2604206 () Bool)

(assert (=> d!2273469 (= lt!2604206 (exists!4681 (toList!11708 s2!405) lambda!453305))))

(assert (=> d!2273469 (= lt!2604206 (choose!56909 s2!405 lambda!453305))))

(assert (=> d!2273469 (= (exists!4680 s2!405 lambda!453305) lt!2604206)))

(declare-fun bs!1915957 () Bool)

(assert (= bs!1915957 d!2273469))

(declare-fun m!7986258 () Bool)

(assert (=> bs!1915957 m!7986258))

(assert (=> bs!1915957 m!7986258))

(declare-fun m!7986260 () Bool)

(assert (=> bs!1915957 m!7986260))

(declare-fun m!7986262 () Bool)

(assert (=> bs!1915957 m!7986262))

(assert (=> b!7320811 d!2273469))

(declare-fun d!2273471 () Bool)

(assert (=> d!2273471 (= (flatMap!3155 s1!434 f!643) (choose!56912 s1!434 f!643))))

(declare-fun bs!1915959 () Bool)

(assert (= bs!1915959 d!2273471))

(declare-fun m!7986268 () Bool)

(assert (=> bs!1915959 m!7986268))

(assert (=> start!714222 d!2273471))

(declare-fun bs!1915961 () Bool)

(declare-fun d!2273475 () Bool)

(assert (= bs!1915961 (and d!2273475 b!7320815)))

(declare-fun lambda!453313 () Int)

(assert (=> bs!1915961 (= lambda!453313 lambda!453305)))

(declare-fun bs!1915963 () Bool)

(assert (= bs!1915963 (and d!2273475 d!2273463)))

(assert (=> bs!1915963 (= lambda!453313 lambda!453310)))

(assert (=> d!2273475 true))

(assert (=> d!2273475 true))

(assert (=> d!2273475 (< (dynLambda!29310 order!29329 f!643) (dynLambda!29311 order!29331 lambda!453313))))

(assert (=> d!2273475 (= (select (flatMap!3155 s2!405 f!643) b!25336) (exists!4680 s2!405 lambda!453313))))

(declare-fun lt!2604207 () A!1071)

(assert (=> d!2273475 (= lt!2604207 (choose!56911 s2!405 f!643 b!25336))))

(assert (=> d!2273475 (= (flatMapPost!156 s2!405 f!643 b!25336) lt!2604207)))

(declare-fun bs!1915965 () Bool)

(assert (= bs!1915965 d!2273475))

(assert (=> bs!1915965 m!7986218))

(declare-fun m!7986272 () Bool)

(assert (=> bs!1915965 m!7986272))

(declare-fun m!7986276 () Bool)

(assert (=> bs!1915965 m!7986276))

(declare-fun m!7986280 () Bool)

(assert (=> bs!1915965 m!7986280))

(assert (=> b!7320812 d!2273475))

(declare-fun d!2273479 () Bool)

(declare-fun lt!2604209 () Bool)

(assert (=> d!2273479 (= lt!2604209 (exists!4681 (toList!11708 s1!434) lambda!453305))))

(assert (=> d!2273479 (= lt!2604209 (choose!56909 s1!434 lambda!453305))))

(assert (=> d!2273479 (= (exists!4680 s1!434 lambda!453305) lt!2604209)))

(declare-fun bs!1915967 () Bool)

(assert (= bs!1915967 d!2273479))

(declare-fun m!7986284 () Bool)

(assert (=> bs!1915967 m!7986284))

(assert (=> bs!1915967 m!7986284))

(declare-fun m!7986286 () Bool)

(assert (=> bs!1915967 m!7986286))

(declare-fun m!7986288 () Bool)

(assert (=> bs!1915967 m!7986288))

(assert (=> b!7320815 d!2273479))

(declare-fun bs!1915969 () Bool)

(declare-fun d!2273483 () Bool)

(assert (= bs!1915969 (and d!2273483 b!7320815)))

(declare-fun lambda!453314 () Int)

(assert (=> bs!1915969 (= lambda!453314 lambda!453305)))

(declare-fun bs!1915970 () Bool)

(assert (= bs!1915970 (and d!2273483 d!2273463)))

(assert (=> bs!1915970 (= lambda!453314 lambda!453310)))

(declare-fun bs!1915972 () Bool)

(assert (= bs!1915972 (and d!2273483 d!2273475)))

(assert (=> bs!1915972 (= lambda!453314 lambda!453313)))

(assert (=> d!2273483 true))

(assert (=> d!2273483 true))

(assert (=> d!2273483 (< (dynLambda!29310 order!29329 f!643) (dynLambda!29311 order!29331 lambda!453314))))

(assert (=> d!2273483 (= (select (flatMap!3155 s1!434 f!643) b!25336) (exists!4680 s1!434 lambda!453314))))

(declare-fun lt!2604211 () A!1071)

(assert (=> d!2273483 (= lt!2604211 (choose!56911 s1!434 f!643 b!25336))))

(assert (=> d!2273483 (= (flatMapPost!156 s1!434 f!643 b!25336) lt!2604211)))

(declare-fun bs!1915975 () Bool)

(assert (= bs!1915975 d!2273483))

(assert (=> bs!1915975 m!7986222))

(declare-fun m!7986296 () Bool)

(assert (=> bs!1915975 m!7986296))

(declare-fun m!7986298 () Bool)

(assert (=> bs!1915975 m!7986298))

(declare-fun m!7986300 () Bool)

(assert (=> bs!1915975 m!7986300))

(assert (=> b!7320815 d!2273483))

(declare-fun d!2273487 () Bool)

(assert (=> d!2273487 (= (flatMap!3155 s2!405 f!643) (choose!56912 s2!405 f!643))))

(declare-fun bs!1915977 () Bool)

(assert (= bs!1915977 d!2273487))

(declare-fun m!7986302 () Bool)

(assert (=> bs!1915977 m!7986302))

(assert (=> b!7320813 d!2273487))

(declare-fun condSetEmpty!55647 () Bool)

(assert (=> setNonEmpty!55641 (= condSetEmpty!55647 (= setRest!55641 ((as const (Array A!1071 Bool)) false)))))

(declare-fun setRes!55647 () Bool)

(assert (=> setNonEmpty!55641 (= tp!2079358 setRes!55647)))

(declare-fun setIsEmpty!55647 () Bool)

(assert (=> setIsEmpty!55647 setRes!55647))

(declare-fun setNonEmpty!55647 () Bool)

(declare-fun tp!2079363 () Bool)

(assert (=> setNonEmpty!55647 (= setRes!55647 (and tp!2079363 tp_is_empty!48033))))

(declare-fun setElem!55647 () A!1071)

(declare-fun setRest!55647 () (InoxSet A!1071))

(assert (=> setNonEmpty!55647 (= setRest!55641 ((_ map or) (store ((as const (Array A!1071 Bool)) false) setElem!55647 true) setRest!55647))))

(assert (= (and setNonEmpty!55641 condSetEmpty!55647) setIsEmpty!55647))

(assert (= (and setNonEmpty!55641 (not condSetEmpty!55647)) setNonEmpty!55647))

(declare-fun condSetEmpty!55648 () Bool)

(assert (=> setNonEmpty!55642 (= condSetEmpty!55648 (= setRest!55642 ((as const (Array A!1071 Bool)) false)))))

(declare-fun setRes!55648 () Bool)

(assert (=> setNonEmpty!55642 (= tp!2079357 setRes!55648)))

(declare-fun setIsEmpty!55648 () Bool)

(assert (=> setIsEmpty!55648 setRes!55648))

(declare-fun setNonEmpty!55648 () Bool)

(declare-fun tp!2079365 () Bool)

(assert (=> setNonEmpty!55648 (= setRes!55648 (and tp!2079365 tp_is_empty!48033))))

(declare-fun setElem!55649 () A!1071)

(declare-fun setRest!55648 () (InoxSet A!1071))

(assert (=> setNonEmpty!55648 (= setRest!55642 ((_ map or) (store ((as const (Array A!1071 Bool)) false) setElem!55649 true) setRest!55648))))

(assert (= (and setNonEmpty!55642 condSetEmpty!55648) setIsEmpty!55648))

(assert (= (and setNonEmpty!55642 (not condSetEmpty!55648)) setNonEmpty!55648))

(check-sat (not setNonEmpty!55648) b_and!351703 (not d!2273475) (not d!2273467) (not d!2273463) (not d!2273455) (not d!2273469) (not setNonEmpty!55647) tp_is_empty!48033 (not d!2273479) (not d!2273487) (not d!2273471) tp_is_empty!48035 (not d!2273483) (not b_next!135015))
(check-sat b_and!351703 (not b_next!135015))
