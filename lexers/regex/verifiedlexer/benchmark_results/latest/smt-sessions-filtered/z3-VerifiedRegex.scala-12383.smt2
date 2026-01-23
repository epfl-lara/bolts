; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693264 () Bool)

(assert start!693264)

(declare-fun b_free!133637 () Bool)

(declare-fun b_next!134427 () Bool)

(assert (=> start!693264 (= b_free!133637 (not b_next!134427))))

(declare-fun tp!1960677 () Bool)

(declare-fun b_and!350715 () Bool)

(assert (=> start!693264 (= tp!1960677 b_and!350715)))

(declare-fun setIsEmpty!50793 () Bool)

(declare-fun setRes!50793 () Bool)

(assert (=> setIsEmpty!50793 setRes!50793))

(declare-fun e!4278958 () Bool)

(declare-datatypes ((A!543 0))(
  ( (A!544 (val!27869 Int)) )
))
(declare-fun elmt!108 () A!543)

(declare-fun f!842 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!3201 0))(
  ( (B!3202 (val!27870 Int)) )
))
(declare-fun lt!2561501 () (InoxSet B!3201))

(declare-fun b!7121296 () Bool)

(declare-fun dynLambda!28071 (Int A!543) B!3201)

(assert (=> b!7121296 (= e!4278958 (= lt!2561501 (store ((as const (Array B!3201 Bool)) false) (dynLambda!28071 f!842 elmt!108) true)))))

(declare-fun setNonEmpty!50793 () Bool)

(declare-fun tp!1960678 () Bool)

(declare-fun tp_is_empty!45277 () Bool)

(assert (=> setNonEmpty!50793 (= setRes!50793 (and tp!1960678 tp_is_empty!45277))))

(declare-fun s!1427 () (InoxSet A!543))

(declare-fun setElem!50793 () A!543)

(declare-fun setRest!50793 () (InoxSet A!543))

(assert (=> setNonEmpty!50793 (= s!1427 ((_ map or) (store ((as const (Array A!543 Bool)) false) setElem!50793 true) setRest!50793))))

(declare-fun b!7121297 () Bool)

(declare-fun e!4278957 () Bool)

(declare-fun e!4278956 () Bool)

(assert (=> b!7121297 (= e!4278957 e!4278956)))

(declare-fun res!2905136 () Bool)

(assert (=> b!7121297 (=> (not res!2905136) (not e!4278956))))

(declare-datatypes ((List!68970 0))(
  ( (Nil!68846) (Cons!68846 (h!75294 B!3201) (t!382865 List!68970)) )
))
(declare-fun lt!2561502 () List!68970)

(get-info :version)

(assert (=> b!7121297 (= res!2905136 ((_ is Cons!68846) lt!2561502))))

(declare-fun toList!11073 ((InoxSet B!3201)) List!68970)

(assert (=> b!7121297 (= lt!2561502 (toList!11073 lt!2561501))))

(declare-fun map!16353 ((InoxSet A!543) Int) (InoxSet B!3201))

(assert (=> b!7121297 (= lt!2561501 (map!16353 s!1427 f!842))))

(declare-fun res!2905137 () Bool)

(assert (=> start!693264 (=> (not res!2905137) (not e!4278957))))

(assert (=> start!693264 (= res!2905137 (= s!1427 (store ((as const (Array A!543 Bool)) false) elmt!108 true)))))

(assert (=> start!693264 e!4278957))

(declare-fun condSetEmpty!50793 () Bool)

(assert (=> start!693264 (= condSetEmpty!50793 (= s!1427 ((as const (Array A!543 Bool)) false)))))

(assert (=> start!693264 setRes!50793))

(assert (=> start!693264 tp_is_empty!45277))

(assert (=> start!693264 tp!1960677))

(declare-fun b!7121298 () Bool)

(assert (=> b!7121298 (= e!4278956 (not e!4278958))))

(declare-fun res!2905138 () Bool)

(assert (=> b!7121298 (=> res!2905138 e!4278958)))

(assert (=> b!7121298 (= res!2905138 ((_ is Cons!68846) (t!382865 lt!2561502)))))

(declare-fun empty!2759 () A!543)

(declare-fun mapPost2!558 ((InoxSet A!543) Int B!3201) A!543)

(assert (=> b!7121298 (= (mapPost2!558 s!1427 f!842 (h!75294 lt!2561502)) empty!2759)))

(assert (=> b!7121298 true))

(assert (=> b!7121298 tp_is_empty!45277))

(assert (= (and start!693264 res!2905137) b!7121297))

(assert (= (and b!7121297 res!2905136) b!7121298))

(assert (= (and b!7121298 (not res!2905138)) b!7121296))

(assert (= (and start!693264 condSetEmpty!50793) setIsEmpty!50793))

(assert (= (and start!693264 (not condSetEmpty!50793)) setNonEmpty!50793))

(declare-fun b_lambda!271635 () Bool)

(assert (=> (not b_lambda!271635) (not b!7121296)))

(declare-fun t!382864 () Bool)

(declare-fun tb!261983 () Bool)

(assert (=> (and start!693264 (= f!842 f!842) t!382864) tb!261983))

(declare-fun result!349120 () Bool)

(declare-fun tp_is_empty!45279 () Bool)

(assert (=> tb!261983 (= result!349120 tp_is_empty!45279)))

(assert (=> b!7121296 t!382864))

(declare-fun b_and!350717 () Bool)

(assert (= b_and!350715 (and (=> t!382864 result!349120) b_and!350717)))

(declare-fun m!7838136 () Bool)

(assert (=> b!7121296 m!7838136))

(assert (=> b!7121296 m!7838136))

(declare-fun m!7838138 () Bool)

(assert (=> b!7121296 m!7838138))

(declare-fun m!7838140 () Bool)

(assert (=> b!7121297 m!7838140))

(declare-fun m!7838142 () Bool)

(assert (=> b!7121297 m!7838142))

(declare-fun m!7838144 () Bool)

(assert (=> start!693264 m!7838144))

(declare-fun m!7838146 () Bool)

(assert (=> b!7121298 m!7838146))

(check-sat (not b_lambda!271635) tp_is_empty!45277 tp_is_empty!45279 (not b!7121297) (not b_next!134427) (not setNonEmpty!50793) b_and!350717 (not b!7121298))
(check-sat b_and!350717 (not b_next!134427))
(get-model)

(declare-fun b_lambda!271639 () Bool)

(assert (= b_lambda!271635 (or (and start!693264 b_free!133637) b_lambda!271639)))

(check-sat tp_is_empty!45277 tp_is_empty!45279 (not b!7121297) (not b_next!134427) (not b_lambda!271639) (not setNonEmpty!50793) b_and!350717 (not b!7121298))
(check-sat b_and!350717 (not b_next!134427))
(get-model)

(declare-fun d!2222132 () Bool)

(declare-fun e!4278966 () Bool)

(assert (=> d!2222132 e!4278966))

(declare-fun res!2905146 () Bool)

(assert (=> d!2222132 (=> (not res!2905146) (not e!4278966))))

(declare-fun lt!2561510 () List!68970)

(declare-fun noDuplicate!2775 (List!68970) Bool)

(assert (=> d!2222132 (= res!2905146 (noDuplicate!2775 lt!2561510))))

(declare-fun choose!54957 ((InoxSet B!3201)) List!68970)

(assert (=> d!2222132 (= lt!2561510 (choose!54957 lt!2561501))))

(assert (=> d!2222132 (= (toList!11073 lt!2561501) lt!2561510)))

(declare-fun b!7121309 () Bool)

(declare-fun content!14073 (List!68970) (InoxSet B!3201))

(assert (=> b!7121309 (= e!4278966 (= (content!14073 lt!2561510) lt!2561501))))

(assert (= (and d!2222132 res!2905146) b!7121309))

(declare-fun m!7838156 () Bool)

(assert (=> d!2222132 m!7838156))

(declare-fun m!7838158 () Bool)

(assert (=> d!2222132 m!7838158))

(declare-fun m!7838160 () Bool)

(assert (=> b!7121309 m!7838160))

(assert (=> b!7121297 d!2222132))

(declare-fun d!2222138 () Bool)

(declare-fun choose!54958 ((InoxSet A!543) Int) (InoxSet B!3201))

(assert (=> d!2222138 (= (map!16353 s!1427 f!842) (choose!54958 s!1427 f!842))))

(declare-fun bs!1885926 () Bool)

(assert (= bs!1885926 d!2222138))

(declare-fun m!7838162 () Bool)

(assert (=> bs!1885926 m!7838162))

(assert (=> b!7121297 d!2222138))

(declare-fun d!2222140 () Bool)

(declare-fun e!4278970 () Bool)

(assert (=> d!2222140 e!4278970))

(declare-fun res!2905150 () Bool)

(assert (=> d!2222140 (=> (not res!2905150) (not e!4278970))))

(declare-fun lt!2561514 () A!543)

(assert (=> d!2222140 (= res!2905150 (= (h!75294 lt!2561502) (dynLambda!28071 f!842 lt!2561514)))))

(declare-fun choose!54959 ((InoxSet A!543) Int B!3201) A!543)

(assert (=> d!2222140 (= lt!2561514 (choose!54959 s!1427 f!842 (h!75294 lt!2561502)))))

(assert (=> d!2222140 (select (map!16353 s!1427 f!842) (h!75294 lt!2561502))))

(assert (=> d!2222140 (= (mapPost2!558 s!1427 f!842 (h!75294 lt!2561502)) lt!2561514)))

(declare-fun b!7121316 () Bool)

(assert (=> b!7121316 (= e!4278970 (select s!1427 lt!2561514))))

(assert (= (and d!2222140 res!2905150) b!7121316))

(declare-fun b_lambda!271645 () Bool)

(assert (=> (not b_lambda!271645) (not d!2222140)))

(declare-fun t!382869 () Bool)

(declare-fun tb!261987 () Bool)

(assert (=> (and start!693264 (= f!842 f!842) t!382869) tb!261987))

(declare-fun result!349128 () Bool)

(assert (=> tb!261987 (= result!349128 tp_is_empty!45279)))

(assert (=> d!2222140 t!382869))

(declare-fun b_and!350721 () Bool)

(assert (= b_and!350717 (and (=> t!382869 result!349128) b_and!350721)))

(declare-fun m!7838172 () Bool)

(assert (=> d!2222140 m!7838172))

(declare-fun m!7838174 () Bool)

(assert (=> d!2222140 m!7838174))

(assert (=> d!2222140 m!7838142))

(declare-fun m!7838176 () Bool)

(assert (=> d!2222140 m!7838176))

(declare-fun m!7838178 () Bool)

(assert (=> b!7121316 m!7838178))

(assert (=> b!7121298 d!2222140))

(declare-fun condSetEmpty!50799 () Bool)

(assert (=> setNonEmpty!50793 (= condSetEmpty!50799 (= setRest!50793 ((as const (Array A!543 Bool)) false)))))

(declare-fun setRes!50799 () Bool)

(assert (=> setNonEmpty!50793 (= tp!1960678 setRes!50799)))

(declare-fun setIsEmpty!50799 () Bool)

(assert (=> setIsEmpty!50799 setRes!50799))

(declare-fun setNonEmpty!50799 () Bool)

(declare-fun tp!1960684 () Bool)

(assert (=> setNonEmpty!50799 (= setRes!50799 (and tp!1960684 tp_is_empty!45277))))

(declare-fun setElem!50799 () A!543)

(declare-fun setRest!50799 () (InoxSet A!543))

(assert (=> setNonEmpty!50799 (= setRest!50793 ((_ map or) (store ((as const (Array A!543 Bool)) false) setElem!50799 true) setRest!50799))))

(assert (= (and setNonEmpty!50793 condSetEmpty!50799) setIsEmpty!50799))

(assert (= (and setNonEmpty!50793 (not condSetEmpty!50799)) setNonEmpty!50799))

(declare-fun b_lambda!271647 () Bool)

(assert (= b_lambda!271645 (or (and start!693264 b_free!133637) b_lambda!271647)))

(check-sat (not d!2222138) (not d!2222132) tp_is_empty!45277 tp_is_empty!45279 b_and!350721 (not b!7121309) (not b_next!134427) (not setNonEmpty!50799) (not b_lambda!271647) (not b_lambda!271639) (not d!2222140))
(check-sat b_and!350721 (not b_next!134427))
(get-model)

(declare-fun d!2222148 () Bool)

(declare-fun e!4278980 () Bool)

(assert (=> d!2222148 e!4278980))

(declare-fun res!2905160 () Bool)

(assert (=> d!2222148 (=> (not res!2905160) (not e!4278980))))

(declare-fun a!13978 () A!543)

(assert (=> d!2222148 (= res!2905160 (= (h!75294 lt!2561502) (dynLambda!28071 f!842 a!13978)))))

(assert (=> d!2222148 tp_is_empty!45277))

(assert (=> d!2222148 (= (choose!54959 s!1427 f!842 (h!75294 lt!2561502)) a!13978)))

(declare-fun b!7121332 () Bool)

(assert (=> b!7121332 (= e!4278980 (select s!1427 a!13978))))

(assert (= (and d!2222148 res!2905160) b!7121332))

(declare-fun b_lambda!271649 () Bool)

(assert (=> (not b_lambda!271649) (not d!2222148)))

(declare-fun t!382871 () Bool)

(declare-fun tb!261989 () Bool)

(assert (=> (and start!693264 (= f!842 f!842) t!382871) tb!261989))

(declare-fun result!349132 () Bool)

(assert (=> tb!261989 (= result!349132 tp_is_empty!45279)))

(assert (=> d!2222148 t!382871))

(declare-fun b_and!350723 () Bool)

(assert (= b_and!350721 (and (=> t!382871 result!349132) b_and!350723)))

(declare-fun m!7838184 () Bool)

(assert (=> d!2222148 m!7838184))

(declare-fun m!7838186 () Bool)

(assert (=> b!7121332 m!7838186))

(assert (=> d!2222140 d!2222148))

(assert (=> d!2222140 d!2222138))

(declare-fun d!2222150 () Bool)

(declare-fun c!1328946 () Bool)

(assert (=> d!2222150 (= c!1328946 ((_ is Nil!68846) lt!2561510))))

(declare-fun e!4278991 () (InoxSet B!3201))

(assert (=> d!2222150 (= (content!14073 lt!2561510) e!4278991)))

(declare-fun b!7121345 () Bool)

(assert (=> b!7121345 (= e!4278991 ((as const (Array B!3201 Bool)) false))))

(declare-fun b!7121346 () Bool)

(assert (=> b!7121346 (= e!4278991 ((_ map or) (store ((as const (Array B!3201 Bool)) false) (h!75294 lt!2561510) true) (content!14073 (t!382865 lt!2561510))))))

(assert (= (and d!2222150 c!1328946) b!7121345))

(assert (= (and d!2222150 (not c!1328946)) b!7121346))

(declare-fun m!7838192 () Bool)

(assert (=> b!7121346 m!7838192))

(declare-fun m!7838196 () Bool)

(assert (=> b!7121346 m!7838196))

(assert (=> b!7121309 d!2222150))

(declare-fun d!2222154 () Bool)

(assert (=> d!2222154 true))

(declare-fun setRes!50805 () Bool)

(assert (=> d!2222154 setRes!50805))

(declare-fun condSetEmpty!50805 () Bool)

(declare-fun res!2905174 () (InoxSet B!3201))

(assert (=> d!2222154 (= condSetEmpty!50805 (= res!2905174 ((as const (Array B!3201 Bool)) false)))))

(assert (=> d!2222154 (= (choose!54958 s!1427 f!842) res!2905174)))

(declare-fun setIsEmpty!50805 () Bool)

(assert (=> setIsEmpty!50805 setRes!50805))

(declare-fun setNonEmpty!50805 () Bool)

(declare-fun tp!1960693 () Bool)

(assert (=> setNonEmpty!50805 (= setRes!50805 (and tp!1960693 tp_is_empty!45279))))

(declare-fun setElem!50805 () B!3201)

(declare-fun setRest!50805 () (InoxSet B!3201))

(assert (=> setNonEmpty!50805 (= res!2905174 ((_ map or) (store ((as const (Array B!3201 Bool)) false) setElem!50805 true) setRest!50805))))

(assert (= (and d!2222154 condSetEmpty!50805) setIsEmpty!50805))

(assert (= (and d!2222154 (not condSetEmpty!50805)) setNonEmpty!50805))

(assert (=> d!2222138 d!2222154))

(declare-fun d!2222158 () Bool)

(declare-fun res!2905179 () Bool)

(declare-fun e!4278999 () Bool)

(assert (=> d!2222158 (=> res!2905179 e!4278999)))

(assert (=> d!2222158 (= res!2905179 ((_ is Nil!68846) lt!2561510))))

(assert (=> d!2222158 (= (noDuplicate!2775 lt!2561510) e!4278999)))

(declare-fun b!7121355 () Bool)

(declare-fun e!4279000 () Bool)

(assert (=> b!7121355 (= e!4278999 e!4279000)))

(declare-fun res!2905180 () Bool)

(assert (=> b!7121355 (=> (not res!2905180) (not e!4279000))))

(declare-fun contains!20515 (List!68970 B!3201) Bool)

(assert (=> b!7121355 (= res!2905180 (not (contains!20515 (t!382865 lt!2561510) (h!75294 lt!2561510))))))

(declare-fun b!7121356 () Bool)

(assert (=> b!7121356 (= e!4279000 (noDuplicate!2775 (t!382865 lt!2561510)))))

(assert (= (and d!2222158 (not res!2905179)) b!7121355))

(assert (= (and b!7121355 res!2905180) b!7121356))

(declare-fun m!7838204 () Bool)

(assert (=> b!7121355 m!7838204))

(declare-fun m!7838206 () Bool)

(assert (=> b!7121356 m!7838206))

(assert (=> d!2222132 d!2222158))

(declare-fun d!2222160 () Bool)

(declare-fun e!4279005 () Bool)

(assert (=> d!2222160 e!4279005))

(declare-fun res!2905186 () Bool)

(assert (=> d!2222160 (=> (not res!2905186) (not e!4279005))))

(declare-fun res!2905185 () List!68970)

(assert (=> d!2222160 (= res!2905186 (noDuplicate!2775 res!2905185))))

(declare-fun e!4279006 () Bool)

(assert (=> d!2222160 e!4279006))

(assert (=> d!2222160 (= (choose!54957 lt!2561501) res!2905185)))

(declare-fun b!7121361 () Bool)

(declare-fun tp!1960697 () Bool)

(assert (=> b!7121361 (= e!4279006 (and tp_is_empty!45279 tp!1960697))))

(declare-fun b!7121362 () Bool)

(assert (=> b!7121362 (= e!4279005 (= (content!14073 res!2905185) lt!2561501))))

(assert (= (and d!2222160 ((_ is Cons!68846) res!2905185)) b!7121361))

(assert (= (and d!2222160 res!2905186) b!7121362))

(declare-fun m!7838208 () Bool)

(assert (=> d!2222160 m!7838208))

(declare-fun m!7838210 () Bool)

(assert (=> b!7121362 m!7838210))

(assert (=> d!2222132 d!2222160))

(declare-fun condSetEmpty!50807 () Bool)

(assert (=> setNonEmpty!50799 (= condSetEmpty!50807 (= setRest!50799 ((as const (Array A!543 Bool)) false)))))

(declare-fun setRes!50807 () Bool)

(assert (=> setNonEmpty!50799 (= tp!1960684 setRes!50807)))

(declare-fun setIsEmpty!50807 () Bool)

(assert (=> setIsEmpty!50807 setRes!50807))

(declare-fun setNonEmpty!50807 () Bool)

(declare-fun tp!1960698 () Bool)

(assert (=> setNonEmpty!50807 (= setRes!50807 (and tp!1960698 tp_is_empty!45277))))

(declare-fun setElem!50807 () A!543)

(declare-fun setRest!50807 () (InoxSet A!543))

(assert (=> setNonEmpty!50807 (= setRest!50799 ((_ map or) (store ((as const (Array A!543 Bool)) false) setElem!50807 true) setRest!50807))))

(assert (= (and setNonEmpty!50799 condSetEmpty!50807) setIsEmpty!50807))

(assert (= (and setNonEmpty!50799 (not condSetEmpty!50807)) setNonEmpty!50807))

(declare-fun b_lambda!271655 () Bool)

(assert (= b_lambda!271649 (or (and start!693264 b_free!133637) b_lambda!271655)))

(check-sat (not b!7121356) (not b!7121355) (not b!7121346) (not b_lambda!271647) (not b_lambda!271639) b_and!350723 (not b_lambda!271655) (not d!2222160) (not setNonEmpty!50805) tp_is_empty!45277 (not b!7121362) tp_is_empty!45279 (not b!7121361) (not b_next!134427) (not setNonEmpty!50807))
(check-sat b_and!350723 (not b_next!134427))
(get-model)

(declare-fun d!2222168 () Bool)

(declare-fun c!1328949 () Bool)

(assert (=> d!2222168 (= c!1328949 ((_ is Nil!68846) (t!382865 lt!2561510)))))

(declare-fun e!4279013 () (InoxSet B!3201))

(assert (=> d!2222168 (= (content!14073 (t!382865 lt!2561510)) e!4279013)))

(declare-fun b!7121371 () Bool)

(assert (=> b!7121371 (= e!4279013 ((as const (Array B!3201 Bool)) false))))

(declare-fun b!7121372 () Bool)

(assert (=> b!7121372 (= e!4279013 ((_ map or) (store ((as const (Array B!3201 Bool)) false) (h!75294 (t!382865 lt!2561510)) true) (content!14073 (t!382865 (t!382865 lt!2561510)))))))

(assert (= (and d!2222168 c!1328949) b!7121371))

(assert (= (and d!2222168 (not c!1328949)) b!7121372))

(declare-fun m!7838220 () Bool)

(assert (=> b!7121372 m!7838220))

(declare-fun m!7838222 () Bool)

(assert (=> b!7121372 m!7838222))

(assert (=> b!7121346 d!2222168))

(declare-fun d!2222170 () Bool)

(declare-fun res!2905193 () Bool)

(declare-fun e!4279016 () Bool)

(assert (=> d!2222170 (=> res!2905193 e!4279016)))

(assert (=> d!2222170 (= res!2905193 ((_ is Nil!68846) res!2905185))))

(assert (=> d!2222170 (= (noDuplicate!2775 res!2905185) e!4279016)))

(declare-fun b!7121375 () Bool)

(declare-fun e!4279017 () Bool)

(assert (=> b!7121375 (= e!4279016 e!4279017)))

(declare-fun res!2905194 () Bool)

(assert (=> b!7121375 (=> (not res!2905194) (not e!4279017))))

(assert (=> b!7121375 (= res!2905194 (not (contains!20515 (t!382865 res!2905185) (h!75294 res!2905185))))))

(declare-fun b!7121376 () Bool)

(assert (=> b!7121376 (= e!4279017 (noDuplicate!2775 (t!382865 res!2905185)))))

(assert (= (and d!2222170 (not res!2905193)) b!7121375))

(assert (= (and b!7121375 res!2905194) b!7121376))

(declare-fun m!7838228 () Bool)

(assert (=> b!7121375 m!7838228))

(declare-fun m!7838230 () Bool)

(assert (=> b!7121376 m!7838230))

(assert (=> d!2222160 d!2222170))

(declare-fun d!2222174 () Bool)

(declare-fun res!2905197 () Bool)

(declare-fun e!4279020 () Bool)

(assert (=> d!2222174 (=> res!2905197 e!4279020)))

(assert (=> d!2222174 (= res!2905197 ((_ is Nil!68846) (t!382865 lt!2561510)))))

(assert (=> d!2222174 (= (noDuplicate!2775 (t!382865 lt!2561510)) e!4279020)))

(declare-fun b!7121379 () Bool)

(declare-fun e!4279021 () Bool)

(assert (=> b!7121379 (= e!4279020 e!4279021)))

(declare-fun res!2905198 () Bool)

(assert (=> b!7121379 (=> (not res!2905198) (not e!4279021))))

(assert (=> b!7121379 (= res!2905198 (not (contains!20515 (t!382865 (t!382865 lt!2561510)) (h!75294 (t!382865 lt!2561510)))))))

(declare-fun b!7121380 () Bool)

(assert (=> b!7121380 (= e!4279021 (noDuplicate!2775 (t!382865 (t!382865 lt!2561510))))))

(assert (= (and d!2222174 (not res!2905197)) b!7121379))

(assert (= (and b!7121379 res!2905198) b!7121380))

(declare-fun m!7838236 () Bool)

(assert (=> b!7121379 m!7838236))

(declare-fun m!7838238 () Bool)

(assert (=> b!7121380 m!7838238))

(assert (=> b!7121356 d!2222174))

(declare-fun d!2222178 () Bool)

(declare-fun lt!2561520 () Bool)

(assert (=> d!2222178 (= lt!2561520 (select (content!14073 (t!382865 lt!2561510)) (h!75294 lt!2561510)))))

(declare-fun e!4279032 () Bool)

(assert (=> d!2222178 (= lt!2561520 e!4279032)))

(declare-fun res!2905206 () Bool)

(assert (=> d!2222178 (=> (not res!2905206) (not e!4279032))))

(assert (=> d!2222178 (= res!2905206 ((_ is Cons!68846) (t!382865 lt!2561510)))))

(assert (=> d!2222178 (= (contains!20515 (t!382865 lt!2561510) (h!75294 lt!2561510)) lt!2561520)))

(declare-fun b!7121394 () Bool)

(declare-fun e!4279031 () Bool)

(assert (=> b!7121394 (= e!4279032 e!4279031)))

(declare-fun res!2905205 () Bool)

(assert (=> b!7121394 (=> res!2905205 e!4279031)))

(assert (=> b!7121394 (= res!2905205 (= (h!75294 (t!382865 lt!2561510)) (h!75294 lt!2561510)))))

(declare-fun b!7121395 () Bool)

(assert (=> b!7121395 (= e!4279031 (contains!20515 (t!382865 (t!382865 lt!2561510)) (h!75294 lt!2561510)))))

(assert (= (and d!2222178 res!2905206) b!7121394))

(assert (= (and b!7121394 (not res!2905205)) b!7121395))

(assert (=> d!2222178 m!7838196))

(declare-fun m!7838244 () Bool)

(assert (=> d!2222178 m!7838244))

(declare-fun m!7838246 () Bool)

(assert (=> b!7121395 m!7838246))

(assert (=> b!7121355 d!2222178))

(declare-fun d!2222180 () Bool)

(declare-fun c!1328950 () Bool)

(assert (=> d!2222180 (= c!1328950 ((_ is Nil!68846) res!2905185))))

(declare-fun e!4279033 () (InoxSet B!3201))

(assert (=> d!2222180 (= (content!14073 res!2905185) e!4279033)))

(declare-fun b!7121396 () Bool)

(assert (=> b!7121396 (= e!4279033 ((as const (Array B!3201 Bool)) false))))

(declare-fun b!7121397 () Bool)

(assert (=> b!7121397 (= e!4279033 ((_ map or) (store ((as const (Array B!3201 Bool)) false) (h!75294 res!2905185) true) (content!14073 (t!382865 res!2905185))))))

(assert (= (and d!2222180 c!1328950) b!7121396))

(assert (= (and d!2222180 (not c!1328950)) b!7121397))

(declare-fun m!7838248 () Bool)

(assert (=> b!7121397 m!7838248))

(declare-fun m!7838250 () Bool)

(assert (=> b!7121397 m!7838250))

(assert (=> b!7121362 d!2222180))

(declare-fun b!7121402 () Bool)

(declare-fun e!4279036 () Bool)

(declare-fun tp!1960708 () Bool)

(assert (=> b!7121402 (= e!4279036 (and tp_is_empty!45279 tp!1960708))))

(assert (=> b!7121361 (= tp!1960697 e!4279036)))

(assert (= (and b!7121361 ((_ is Cons!68846) (t!382865 res!2905185))) b!7121402))

(declare-fun condSetEmpty!50814 () Bool)

(assert (=> setNonEmpty!50805 (= condSetEmpty!50814 (= setRest!50805 ((as const (Array B!3201 Bool)) false)))))

(declare-fun setRes!50814 () Bool)

(assert (=> setNonEmpty!50805 (= tp!1960693 setRes!50814)))

(declare-fun setIsEmpty!50814 () Bool)

(assert (=> setIsEmpty!50814 setRes!50814))

(declare-fun setNonEmpty!50814 () Bool)

(declare-fun tp!1960711 () Bool)

(assert (=> setNonEmpty!50814 (= setRes!50814 (and tp!1960711 tp_is_empty!45279))))

(declare-fun setElem!50814 () B!3201)

(declare-fun setRest!50814 () (InoxSet B!3201))

(assert (=> setNonEmpty!50814 (= setRest!50805 ((_ map or) (store ((as const (Array B!3201 Bool)) false) setElem!50814 true) setRest!50814))))

(assert (= (and setNonEmpty!50805 condSetEmpty!50814) setIsEmpty!50814))

(assert (= (and setNonEmpty!50805 (not condSetEmpty!50814)) setNonEmpty!50814))

(declare-fun condSetEmpty!50815 () Bool)

(assert (=> setNonEmpty!50807 (= condSetEmpty!50815 (= setRest!50807 ((as const (Array A!543 Bool)) false)))))

(declare-fun setRes!50815 () Bool)

(assert (=> setNonEmpty!50807 (= tp!1960698 setRes!50815)))

(declare-fun setIsEmpty!50815 () Bool)

(assert (=> setIsEmpty!50815 setRes!50815))

(declare-fun setNonEmpty!50815 () Bool)

(declare-fun tp!1960712 () Bool)

(assert (=> setNonEmpty!50815 (= setRes!50815 (and tp!1960712 tp_is_empty!45277))))

(declare-fun setElem!50815 () A!543)

(declare-fun setRest!50815 () (InoxSet A!543))

(assert (=> setNonEmpty!50815 (= setRest!50807 ((_ map or) (store ((as const (Array A!543 Bool)) false) setElem!50815 true) setRest!50815))))

(assert (= (and setNonEmpty!50807 condSetEmpty!50815) setIsEmpty!50815))

(assert (= (and setNonEmpty!50807 (not condSetEmpty!50815)) setNonEmpty!50815))

(check-sat (not setNonEmpty!50814) (not b!7121372) tp_is_empty!45277 (not d!2222178) (not b!7121402) tp_is_empty!45279 (not b!7121395) (not b!7121375) (not b!7121376) (not b!7121397) (not b!7121380) (not b_lambda!271639) b_and!350723 (not b_lambda!271655) (not b_next!134427) (not b!7121379) (not setNonEmpty!50815) (not b_lambda!271647))
(check-sat b_and!350723 (not b_next!134427))
