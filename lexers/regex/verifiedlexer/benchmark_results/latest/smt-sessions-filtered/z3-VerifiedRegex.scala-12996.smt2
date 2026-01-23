; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714018 () Bool)

(assert start!714018)

(declare-fun b_free!134161 () Bool)

(declare-fun b_next!134951 () Bool)

(assert (=> start!714018 (= b_free!134161 (not b_next!134951))))

(declare-fun tp!2078964 () Bool)

(declare-fun b_and!351571 () Bool)

(assert (=> start!714018 (= tp!2078964 b_and!351571)))

(declare-fun b!7320172 () Bool)

(assert (=> b!7320172 true))

(assert (=> b!7320172 true))

(declare-fun order!29211 () Int)

(declare-fun order!29209 () Int)

(declare-fun lambda!453050 () Int)

(declare-fun f!643 () Int)

(declare-fun dynLambda!29217 (Int Int) Int)

(declare-fun dynLambda!29218 (Int Int) Int)

(assert (=> b!7320172 (< (dynLambda!29217 order!29209 f!643) (dynLambda!29218 order!29211 lambda!453050))))

(declare-fun e!4382761 () Bool)

(declare-fun e!4382762 () Bool)

(assert (=> b!7320172 (= e!4382761 (not e!4382762))))

(declare-fun res!2958410 () Bool)

(assert (=> b!7320172 (=> res!2958410 e!4382762)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1007 0))(
  ( (A!1008 (val!29327 Int)) )
))
(declare-fun s1!434 () (InoxSet A!1007))

(declare-fun exists!4635 ((InoxSet A!1007) Int) Bool)

(assert (=> b!7320172 (= res!2958410 (not (exists!4635 s1!434 lambda!453050)))))

(declare-fun empty!3223 () A!1007)

(declare-datatypes ((B!3709 0))(
  ( (B!3710 (val!29328 Int)) )
))
(declare-fun b!25336 () B!3709)

(declare-fun flatMapPost!126 ((InoxSet A!1007) Int B!3709) A!1007)

(assert (=> b!7320172 (= (flatMapPost!126 s1!434 f!643 b!25336) empty!3223)))

(assert (=> b!7320172 true))

(declare-fun tp_is_empty!47905 () Bool)

(assert (=> b!7320172 tp_is_empty!47905))

(declare-fun setIsEmpty!55344 () Bool)

(declare-fun setRes!55344 () Bool)

(assert (=> setIsEmpty!55344 setRes!55344))

(declare-fun setNonEmpty!55344 () Bool)

(declare-fun tp!2078963 () Bool)

(assert (=> setNonEmpty!55344 (= setRes!55344 (and tp!2078963 tp_is_empty!47905))))

(declare-fun setElem!55344 () A!1007)

(declare-fun setRest!55344 () (InoxSet A!1007))

(assert (=> setNonEmpty!55344 (= s1!434 ((_ map or) (store ((as const (Array A!1007 Bool)) false) setElem!55344 true) setRest!55344))))

(declare-fun res!2958411 () Bool)

(assert (=> start!714018 (=> (not res!2958411) (not e!4382761))))

(declare-fun flatMap!3123 ((InoxSet A!1007) Int) (InoxSet B!3709))

(assert (=> start!714018 (= res!2958411 (select (flatMap!3123 s1!434 f!643) b!25336))))

(assert (=> start!714018 e!4382761))

(declare-fun tp_is_empty!47907 () Bool)

(assert (=> start!714018 tp_is_empty!47907))

(declare-fun condSetEmpty!55344 () Bool)

(assert (=> start!714018 (= condSetEmpty!55344 (= s1!434 ((as const (Array A!1007 Bool)) false)))))

(assert (=> start!714018 setRes!55344))

(assert (=> start!714018 tp!2078964))

(declare-fun b!7320173 () Bool)

(declare-fun dynLambda!29219 (Int A!1007) (InoxSet B!3709))

(declare-fun getWitness!2363 ((InoxSet A!1007) Int) A!1007)

(assert (=> b!7320173 (= e!4382762 (select (dynLambda!29219 f!643 (getWitness!2363 s1!434 lambda!453050)) b!25336))))

(assert (= (and start!714018 res!2958411) b!7320172))

(assert (= (and b!7320172 (not res!2958410)) b!7320173))

(assert (= (and start!714018 condSetEmpty!55344) setIsEmpty!55344))

(assert (= (and start!714018 (not condSetEmpty!55344)) setNonEmpty!55344))

(declare-fun b_lambda!282817 () Bool)

(assert (=> (not b_lambda!282817) (not b!7320173)))

(declare-fun t!385647 () Bool)

(declare-fun tb!262253 () Bool)

(assert (=> (and start!714018 (= f!643 f!643) t!385647) tb!262253))

(assert (=> b!7320173 t!385647))

(declare-fun result!353360 () Bool)

(declare-fun b_and!351573 () Bool)

(assert (= b_and!351571 (and (=> t!385647 result!353360) b_and!351573)))

(declare-fun m!7985084 () Bool)

(assert (=> b!7320172 m!7985084))

(declare-fun m!7985086 () Bool)

(assert (=> b!7320172 m!7985086))

(declare-fun m!7985088 () Bool)

(assert (=> start!714018 m!7985088))

(declare-fun m!7985090 () Bool)

(assert (=> start!714018 m!7985090))

(declare-fun m!7985092 () Bool)

(assert (=> b!7320173 m!7985092))

(assert (=> b!7320173 m!7985092))

(declare-fun m!7985094 () Bool)

(assert (=> b!7320173 m!7985094))

(declare-fun m!7985096 () Bool)

(assert (=> b!7320173 m!7985096))

(check-sat (not tb!262253) (not b_lambda!282817) tp_is_empty!47907 b_and!351573 (not b!7320172) (not start!714018) (not b!7320173) tp_is_empty!47905 (not b_next!134951) (not setNonEmpty!55344))
(check-sat b_and!351573 (not b_next!134951))
(get-model)

(declare-fun b_lambda!282821 () Bool)

(assert (= b_lambda!282817 (or (and start!714018 b_free!134161) b_lambda!282821)))

(check-sat tp_is_empty!47907 b_and!351573 (not b!7320172) (not start!714018) (not b!7320173) tp_is_empty!47905 (not b_lambda!282821) (not tb!262253) (not b_next!134951) (not setNonEmpty!55344))
(check-sat b_and!351573 (not b_next!134951))
(get-model)

(declare-fun d!2273223 () Bool)

(declare-fun lt!2603734 () Bool)

(declare-datatypes ((List!71406 0))(
  ( (Nil!71282) (Cons!71282 (h!77730 A!1007) (t!385653 List!71406)) )
))
(declare-fun exists!4637 (List!71406 Int) Bool)

(declare-fun toList!11693 ((InoxSet A!1007)) List!71406)

(assert (=> d!2273223 (= lt!2603734 (exists!4637 (toList!11693 s1!434) lambda!453050))))

(declare-fun choose!56860 ((InoxSet A!1007) Int) Bool)

(assert (=> d!2273223 (= lt!2603734 (choose!56860 s1!434 lambda!453050))))

(assert (=> d!2273223 (= (exists!4635 s1!434 lambda!453050) lt!2603734)))

(declare-fun bs!1915789 () Bool)

(assert (= bs!1915789 d!2273223))

(declare-fun m!7985112 () Bool)

(assert (=> bs!1915789 m!7985112))

(assert (=> bs!1915789 m!7985112))

(declare-fun m!7985114 () Bool)

(assert (=> bs!1915789 m!7985114))

(declare-fun m!7985116 () Bool)

(assert (=> bs!1915789 m!7985116))

(assert (=> b!7320172 d!2273223))

(declare-fun bs!1915792 () Bool)

(declare-fun d!2273227 () Bool)

(assert (= bs!1915792 (and d!2273227 b!7320172)))

(declare-fun lambda!453056 () Int)

(assert (=> bs!1915792 (= lambda!453056 lambda!453050)))

(assert (=> d!2273227 true))

(assert (=> d!2273227 true))

(assert (=> d!2273227 (< (dynLambda!29217 order!29209 f!643) (dynLambda!29218 order!29211 lambda!453056))))

(assert (=> d!2273227 (= (select (flatMap!3123 s1!434 f!643) b!25336) (exists!4635 s1!434 lambda!453056))))

(declare-fun lt!2603740 () A!1007)

(declare-fun choose!56862 ((InoxSet A!1007) Int B!3709) A!1007)

(assert (=> d!2273227 (= lt!2603740 (choose!56862 s1!434 f!643 b!25336))))

(assert (=> d!2273227 (= (flatMapPost!126 s1!434 f!643 b!25336) lt!2603740)))

(declare-fun bs!1915793 () Bool)

(assert (= bs!1915793 d!2273227))

(assert (=> bs!1915793 m!7985088))

(assert (=> bs!1915793 m!7985090))

(declare-fun m!7985122 () Bool)

(assert (=> bs!1915793 m!7985122))

(declare-fun m!7985124 () Bool)

(assert (=> bs!1915793 m!7985124))

(assert (=> b!7320172 d!2273227))

(declare-fun d!2273229 () Bool)

(declare-fun choose!56863 ((InoxSet A!1007) Int) (InoxSet B!3709))

(assert (=> d!2273229 (= (flatMap!3123 s1!434 f!643) (choose!56863 s1!434 f!643))))

(declare-fun bs!1915795 () Bool)

(assert (= bs!1915795 d!2273229))

(declare-fun m!7985130 () Bool)

(assert (=> bs!1915795 m!7985130))

(assert (=> start!714018 d!2273229))

(declare-fun d!2273233 () Bool)

(declare-fun e!4382768 () Bool)

(assert (=> d!2273233 e!4382768))

(declare-fun res!2958417 () Bool)

(assert (=> d!2273233 (=> (not res!2958417) (not e!4382768))))

(declare-fun lt!2603743 () A!1007)

(declare-fun dynLambda!29221 (Int A!1007) Bool)

(assert (=> d!2273233 (= res!2958417 (dynLambda!29221 lambda!453050 lt!2603743))))

(declare-fun getWitness!2365 (List!71406 Int) A!1007)

(assert (=> d!2273233 (= lt!2603743 (getWitness!2365 (toList!11693 s1!434) lambda!453050))))

(assert (=> d!2273233 (exists!4635 s1!434 lambda!453050)))

(assert (=> d!2273233 (= (getWitness!2363 s1!434 lambda!453050) lt!2603743)))

(declare-fun b!7320189 () Bool)

(assert (=> b!7320189 (= e!4382768 (select s1!434 lt!2603743))))

(assert (= (and d!2273233 res!2958417) b!7320189))

(declare-fun b_lambda!282829 () Bool)

(assert (=> (not b_lambda!282829) (not d!2273233)))

(declare-fun m!7985132 () Bool)

(assert (=> d!2273233 m!7985132))

(assert (=> d!2273233 m!7985112))

(assert (=> d!2273233 m!7985112))

(declare-fun m!7985134 () Bool)

(assert (=> d!2273233 m!7985134))

(assert (=> d!2273233 m!7985084))

(declare-fun m!7985136 () Bool)

(assert (=> b!7320189 m!7985136))

(assert (=> b!7320173 d!2273233))

(declare-fun condSetEmpty!55353 () Bool)

(assert (=> tb!262253 (= condSetEmpty!55353 (= (dynLambda!29219 f!643 (getWitness!2363 s1!434 lambda!453050)) ((as const (Array B!3709 Bool)) false)))))

(declare-fun setRes!55353 () Bool)

(assert (=> tb!262253 (= result!353360 setRes!55353)))

(declare-fun setIsEmpty!55353 () Bool)

(assert (=> setIsEmpty!55353 setRes!55353))

(declare-fun setNonEmpty!55353 () Bool)

(declare-fun tp!2078973 () Bool)

(assert (=> setNonEmpty!55353 (= setRes!55353 (and tp!2078973 tp_is_empty!47907))))

(declare-fun setElem!55353 () B!3709)

(declare-fun setRest!55353 () (InoxSet B!3709))

(assert (=> setNonEmpty!55353 (= (dynLambda!29219 f!643 (getWitness!2363 s1!434 lambda!453050)) ((_ map or) (store ((as const (Array B!3709 Bool)) false) setElem!55353 true) setRest!55353))))

(assert (= (and tb!262253 condSetEmpty!55353) setIsEmpty!55353))

(assert (= (and tb!262253 (not condSetEmpty!55353)) setNonEmpty!55353))

(declare-fun condSetEmpty!55356 () Bool)

(assert (=> setNonEmpty!55344 (= condSetEmpty!55356 (= setRest!55344 ((as const (Array A!1007 Bool)) false)))))

(declare-fun setRes!55356 () Bool)

(assert (=> setNonEmpty!55344 (= tp!2078963 setRes!55356)))

(declare-fun setIsEmpty!55356 () Bool)

(assert (=> setIsEmpty!55356 setRes!55356))

(declare-fun setNonEmpty!55356 () Bool)

(declare-fun tp!2078976 () Bool)

(assert (=> setNonEmpty!55356 (= setRes!55356 (and tp!2078976 tp_is_empty!47905))))

(declare-fun setElem!55356 () A!1007)

(declare-fun setRest!55356 () (InoxSet A!1007))

(assert (=> setNonEmpty!55356 (= setRest!55344 ((_ map or) (store ((as const (Array A!1007 Bool)) false) setElem!55356 true) setRest!55356))))

(assert (= (and setNonEmpty!55344 condSetEmpty!55356) setIsEmpty!55356))

(assert (= (and setNonEmpty!55344 (not condSetEmpty!55356)) setNonEmpty!55356))

(declare-fun b_lambda!282831 () Bool)

(assert (= b_lambda!282829 (or b!7320172 b_lambda!282831)))

(declare-fun bs!1915796 () Bool)

(declare-fun d!2273235 () Bool)

(assert (= bs!1915796 (and d!2273235 b!7320172)))

(assert (=> bs!1915796 (= (dynLambda!29221 lambda!453050 lt!2603743) (select (dynLambda!29219 f!643 lt!2603743) b!25336))))

(declare-fun b_lambda!282833 () Bool)

(assert (=> (not b_lambda!282833) (not bs!1915796)))

(declare-fun t!385652 () Bool)

(declare-fun tb!262257 () Bool)

(assert (=> (and start!714018 (= f!643 f!643) t!385652) tb!262257))

(assert (=> bs!1915796 t!385652))

(declare-fun result!353372 () Bool)

(declare-fun b_and!351577 () Bool)

(assert (= b_and!351573 (and (=> t!385652 result!353372) b_and!351577)))

(declare-fun m!7985138 () Bool)

(assert (=> bs!1915796 m!7985138))

(declare-fun m!7985140 () Bool)

(assert (=> bs!1915796 m!7985140))

(assert (=> d!2273233 d!2273235))

(check-sat (not d!2273227) (not d!2273233) tp_is_empty!47907 b_and!351577 tp_is_empty!47905 (not b_lambda!282833) (not b_lambda!282831) (not d!2273229) (not setNonEmpty!55353) (not b_lambda!282821) (not b_next!134951) (not d!2273223) (not setNonEmpty!55356) (not tb!262257))
(check-sat b_and!351577 (not b_next!134951))
