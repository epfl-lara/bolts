; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714038 () Bool)

(assert start!714038)

(declare-fun b_free!134165 () Bool)

(declare-fun b_next!134955 () Bool)

(assert (=> start!714038 (= b_free!134165 (not b_next!134955))))

(declare-fun tp!2078994 () Bool)

(declare-fun b_and!351583 () Bool)

(assert (=> start!714038 (= tp!2078994 b_and!351583)))

(declare-fun b!7320214 () Bool)

(assert (=> b!7320214 true))

(assert (=> b!7320214 true))

(declare-fun order!29217 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29219 () Int)

(declare-fun lambda!453066 () Int)

(declare-fun dynLambda!29225 (Int Int) Int)

(declare-fun dynLambda!29226 (Int Int) Int)

(assert (=> b!7320214 (< (dynLambda!29225 order!29217 f!643) (dynLambda!29226 order!29219 lambda!453066))))

(declare-fun setNonEmpty!55367 () Bool)

(declare-fun setRes!55367 () Bool)

(declare-fun tp!2078993 () Bool)

(declare-fun tp_is_empty!47913 () Bool)

(assert (=> setNonEmpty!55367 (= setRes!55367 (and tp!2078993 tp_is_empty!47913))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1011 0))(
  ( (A!1012 (val!29331 Int)) )
))
(declare-fun s1!434 () (InoxSet A!1011))

(declare-fun setElem!55367 () A!1011)

(declare-fun setRest!55368 () (InoxSet A!1011))

(assert (=> setNonEmpty!55367 (= s1!434 ((_ map or) (store ((as const (Array A!1011 Bool)) false) setElem!55367 true) setRest!55368))))

(declare-fun res!2958433 () Bool)

(declare-fun e!4382786 () Bool)

(assert (=> start!714038 (=> (not res!2958433) (not e!4382786))))

(declare-datatypes ((B!3713 0))(
  ( (B!3714 (val!29332 Int)) )
))
(declare-fun b!25336 () B!3713)

(declare-fun flatMap!3125 ((InoxSet A!1011) Int) (InoxSet B!3713))

(assert (=> start!714038 (= res!2958433 (select (flatMap!3125 s1!434 f!643) b!25336))))

(assert (=> start!714038 e!4382786))

(declare-fun tp_is_empty!47915 () Bool)

(assert (=> start!714038 tp_is_empty!47915))

(declare-fun condSetEmpty!55368 () Bool)

(assert (=> start!714038 (= condSetEmpty!55368 (= s1!434 ((as const (Array A!1011 Bool)) false)))))

(assert (=> start!714038 setRes!55367))

(assert (=> start!714038 tp!2078994))

(declare-fun condSetEmpty!55367 () Bool)

(declare-fun s2!405 () (InoxSet A!1011))

(assert (=> start!714038 (= condSetEmpty!55367 (= s2!405 ((as const (Array A!1011 Bool)) false)))))

(declare-fun setRes!55368 () Bool)

(assert (=> start!714038 setRes!55368))

(declare-fun lt!2603749 () A!1011)

(declare-fun b!7320213 () Bool)

(declare-fun e!4382785 () Bool)

(assert (=> b!7320213 (= e!4382785 (select ((_ map or) s1!434 s2!405) lt!2603749))))

(declare-fun e!4382784 () Bool)

(assert (=> b!7320214 (= e!4382786 (not e!4382784))))

(declare-fun res!2958435 () Bool)

(assert (=> b!7320214 (=> res!2958435 e!4382784)))

(declare-fun exists!4639 ((InoxSet A!1011) Int) Bool)

(assert (=> b!7320214 (= res!2958435 (not (exists!4639 s1!434 lambda!453066)))))

(declare-fun empty!3231 () A!1011)

(declare-fun flatMapPost!128 ((InoxSet A!1011) Int B!3713) A!1011)

(assert (=> b!7320214 (= (flatMapPost!128 s1!434 f!643 b!25336) empty!3231)))

(assert (=> b!7320214 true))

(assert (=> b!7320214 tp_is_empty!47913))

(declare-fun setNonEmpty!55368 () Bool)

(declare-fun tp!2078992 () Bool)

(assert (=> setNonEmpty!55368 (= setRes!55368 (and tp!2078992 tp_is_empty!47913))))

(declare-fun setElem!55368 () A!1011)

(declare-fun setRest!55367 () (InoxSet A!1011))

(assert (=> setNonEmpty!55368 (= s2!405 ((_ map or) (store ((as const (Array A!1011 Bool)) false) setElem!55368 true) setRest!55367))))

(declare-fun b!7320215 () Bool)

(assert (=> b!7320215 (= e!4382784 e!4382785)))

(declare-fun res!2958434 () Bool)

(assert (=> b!7320215 (=> res!2958434 e!4382785)))

(declare-fun dynLambda!29227 (Int A!1011) (InoxSet B!3713))

(assert (=> b!7320215 (= res!2958434 (not (select (dynLambda!29227 f!643 lt!2603749) b!25336)))))

(declare-fun getWitness!2367 ((InoxSet A!1011) Int) A!1011)

(assert (=> b!7320215 (= lt!2603749 (getWitness!2367 s1!434 lambda!453066))))

(declare-fun setIsEmpty!55367 () Bool)

(assert (=> setIsEmpty!55367 setRes!55367))

(declare-fun setIsEmpty!55368 () Bool)

(assert (=> setIsEmpty!55368 setRes!55368))

(assert (= (and start!714038 res!2958433) b!7320214))

(assert (= (and b!7320214 (not res!2958435)) b!7320215))

(assert (= (and b!7320215 (not res!2958434)) b!7320213))

(assert (= (and start!714038 condSetEmpty!55368) setIsEmpty!55367))

(assert (= (and start!714038 (not condSetEmpty!55368)) setNonEmpty!55367))

(assert (= (and start!714038 condSetEmpty!55367) setIsEmpty!55368))

(assert (= (and start!714038 (not condSetEmpty!55367)) setNonEmpty!55368))

(declare-fun b_lambda!282837 () Bool)

(assert (=> (not b_lambda!282837) (not b!7320215)))

(declare-fun t!385657 () Bool)

(declare-fun tb!262261 () Bool)

(assert (=> (and start!714038 (= f!643 f!643) t!385657) tb!262261))

(assert (=> b!7320215 t!385657))

(declare-fun result!353376 () Bool)

(declare-fun b_and!351585 () Bool)

(assert (= b_and!351583 (and (=> t!385657 result!353376) b_and!351585)))

(declare-fun m!7985158 () Bool)

(assert (=> start!714038 m!7985158))

(declare-fun m!7985160 () Bool)

(assert (=> start!714038 m!7985160))

(declare-fun m!7985162 () Bool)

(assert (=> b!7320213 m!7985162))

(declare-fun m!7985164 () Bool)

(assert (=> b!7320214 m!7985164))

(declare-fun m!7985166 () Bool)

(assert (=> b!7320214 m!7985166))

(declare-fun m!7985168 () Bool)

(assert (=> b!7320215 m!7985168))

(declare-fun m!7985170 () Bool)

(assert (=> b!7320215 m!7985170))

(declare-fun m!7985172 () Bool)

(assert (=> b!7320215 m!7985172))

(check-sat tp_is_empty!47913 (not setNonEmpty!55368) (not start!714038) (not b!7320214) (not setNonEmpty!55367) tp_is_empty!47915 (not b!7320215) (not b_lambda!282837) (not tb!262261) (not b_next!134955) b_and!351585)
(check-sat b_and!351585 (not b_next!134955))
(get-model)

(declare-fun b_lambda!282841 () Bool)

(assert (= b_lambda!282837 (or (and start!714038 b_free!134165) b_lambda!282841)))

(check-sat tp_is_empty!47913 (not setNonEmpty!55368) (not tb!262261) (not b_lambda!282841) (not start!714038) (not b!7320214) (not setNonEmpty!55367) tp_is_empty!47915 (not b!7320215) (not b_next!134955) b_and!351585)
(check-sat b_and!351585 (not b_next!134955))
(get-model)

(declare-fun d!2273242 () Bool)

(declare-fun lt!2603758 () Bool)

(declare-datatypes ((List!71408 0))(
  ( (Nil!71284) (Cons!71284 (h!77732 A!1011) (t!385663 List!71408)) )
))
(declare-fun exists!4641 (List!71408 Int) Bool)

(declare-fun toList!11695 ((InoxSet A!1011)) List!71408)

(assert (=> d!2273242 (= lt!2603758 (exists!4641 (toList!11695 s1!434) lambda!453066))))

(declare-fun choose!56867 ((InoxSet A!1011) Int) Bool)

(assert (=> d!2273242 (= lt!2603758 (choose!56867 s1!434 lambda!453066))))

(assert (=> d!2273242 (= (exists!4639 s1!434 lambda!453066) lt!2603758)))

(declare-fun bs!1915802 () Bool)

(assert (= bs!1915802 d!2273242))

(declare-fun m!7985184 () Bool)

(assert (=> bs!1915802 m!7985184))

(assert (=> bs!1915802 m!7985184))

(declare-fun m!7985186 () Bool)

(assert (=> bs!1915802 m!7985186))

(declare-fun m!7985188 () Bool)

(assert (=> bs!1915802 m!7985188))

(assert (=> b!7320214 d!2273242))

(declare-fun bs!1915804 () Bool)

(declare-fun d!2273246 () Bool)

(assert (= bs!1915804 (and d!2273246 b!7320214)))

(declare-fun lambda!453072 () Int)

(assert (=> bs!1915804 (= lambda!453072 lambda!453066)))

(assert (=> d!2273246 true))

(assert (=> d!2273246 true))

(assert (=> d!2273246 (< (dynLambda!29225 order!29217 f!643) (dynLambda!29226 order!29219 lambda!453072))))

(assert (=> d!2273246 (= (select (flatMap!3125 s1!434 f!643) b!25336) (exists!4639 s1!434 lambda!453072))))

(declare-fun lt!2603764 () A!1011)

(declare-fun choose!56868 ((InoxSet A!1011) Int B!3713) A!1011)

(assert (=> d!2273246 (= lt!2603764 (choose!56868 s1!434 f!643 b!25336))))

(assert (=> d!2273246 (= (flatMapPost!128 s1!434 f!643 b!25336) lt!2603764)))

(declare-fun bs!1915806 () Bool)

(assert (= bs!1915806 d!2273246))

(assert (=> bs!1915806 m!7985158))

(assert (=> bs!1915806 m!7985160))

(declare-fun m!7985198 () Bool)

(assert (=> bs!1915806 m!7985198))

(declare-fun m!7985200 () Bool)

(assert (=> bs!1915806 m!7985200))

(assert (=> b!7320214 d!2273246))

(declare-fun d!2273252 () Bool)

(declare-fun choose!56869 ((InoxSet A!1011) Int) (InoxSet B!3713))

(assert (=> d!2273252 (= (flatMap!3125 s1!434 f!643) (choose!56869 s1!434 f!643))))

(declare-fun bs!1915807 () Bool)

(assert (= bs!1915807 d!2273252))

(declare-fun m!7985206 () Bool)

(assert (=> bs!1915807 m!7985206))

(assert (=> start!714038 d!2273252))

(declare-fun d!2273254 () Bool)

(declare-fun e!4382792 () Bool)

(assert (=> d!2273254 e!4382792))

(declare-fun res!2958441 () Bool)

(assert (=> d!2273254 (=> (not res!2958441) (not e!4382792))))

(declare-fun lt!2603767 () A!1011)

(declare-fun dynLambda!29229 (Int A!1011) Bool)

(assert (=> d!2273254 (= res!2958441 (dynLambda!29229 lambda!453066 lt!2603767))))

(declare-fun getWitness!2369 (List!71408 Int) A!1011)

(assert (=> d!2273254 (= lt!2603767 (getWitness!2369 (toList!11695 s1!434) lambda!453066))))

(assert (=> d!2273254 (exists!4639 s1!434 lambda!453066)))

(assert (=> d!2273254 (= (getWitness!2367 s1!434 lambda!453066) lt!2603767)))

(declare-fun b!7320231 () Bool)

(assert (=> b!7320231 (= e!4382792 (select s1!434 lt!2603767))))

(assert (= (and d!2273254 res!2958441) b!7320231))

(declare-fun b_lambda!282849 () Bool)

(assert (=> (not b_lambda!282849) (not d!2273254)))

(declare-fun m!7985208 () Bool)

(assert (=> d!2273254 m!7985208))

(assert (=> d!2273254 m!7985184))

(assert (=> d!2273254 m!7985184))

(declare-fun m!7985210 () Bool)

(assert (=> d!2273254 m!7985210))

(assert (=> d!2273254 m!7985164))

(declare-fun m!7985212 () Bool)

(assert (=> b!7320231 m!7985212))

(assert (=> b!7320215 d!2273254))

(declare-fun condSetEmpty!55378 () Bool)

(assert (=> setNonEmpty!55368 (= condSetEmpty!55378 (= setRest!55367 ((as const (Array A!1011 Bool)) false)))))

(declare-fun setRes!55378 () Bool)

(assert (=> setNonEmpty!55368 (= tp!2078992 setRes!55378)))

(declare-fun setIsEmpty!55378 () Bool)

(assert (=> setIsEmpty!55378 setRes!55378))

(declare-fun setNonEmpty!55378 () Bool)

(declare-fun tp!2079004 () Bool)

(assert (=> setNonEmpty!55378 (= setRes!55378 (and tp!2079004 tp_is_empty!47913))))

(declare-fun setElem!55378 () A!1011)

(declare-fun setRest!55378 () (InoxSet A!1011))

(assert (=> setNonEmpty!55378 (= setRest!55367 ((_ map or) (store ((as const (Array A!1011 Bool)) false) setElem!55378 true) setRest!55378))))

(assert (= (and setNonEmpty!55368 condSetEmpty!55378) setIsEmpty!55378))

(assert (= (and setNonEmpty!55368 (not condSetEmpty!55378)) setNonEmpty!55378))

(declare-fun condSetEmpty!55381 () Bool)

(assert (=> tb!262261 (= condSetEmpty!55381 (= (dynLambda!29227 f!643 lt!2603749) ((as const (Array B!3713 Bool)) false)))))

(declare-fun setRes!55381 () Bool)

(assert (=> tb!262261 (= result!353376 setRes!55381)))

(declare-fun setIsEmpty!55381 () Bool)

(assert (=> setIsEmpty!55381 setRes!55381))

(declare-fun setNonEmpty!55381 () Bool)

(declare-fun tp!2079007 () Bool)

(assert (=> setNonEmpty!55381 (= setRes!55381 (and tp!2079007 tp_is_empty!47915))))

(declare-fun setElem!55381 () B!3713)

(declare-fun setRest!55381 () (InoxSet B!3713))

(assert (=> setNonEmpty!55381 (= (dynLambda!29227 f!643 lt!2603749) ((_ map or) (store ((as const (Array B!3713 Bool)) false) setElem!55381 true) setRest!55381))))

(assert (= (and tb!262261 condSetEmpty!55381) setIsEmpty!55381))

(assert (= (and tb!262261 (not condSetEmpty!55381)) setNonEmpty!55381))

(declare-fun condSetEmpty!55382 () Bool)

(assert (=> setNonEmpty!55367 (= condSetEmpty!55382 (= setRest!55368 ((as const (Array A!1011 Bool)) false)))))

(declare-fun setRes!55382 () Bool)

(assert (=> setNonEmpty!55367 (= tp!2078993 setRes!55382)))

(declare-fun setIsEmpty!55382 () Bool)

(assert (=> setIsEmpty!55382 setRes!55382))

(declare-fun setNonEmpty!55382 () Bool)

(declare-fun tp!2079008 () Bool)

(assert (=> setNonEmpty!55382 (= setRes!55382 (and tp!2079008 tp_is_empty!47913))))

(declare-fun setElem!55382 () A!1011)

(declare-fun setRest!55382 () (InoxSet A!1011))

(assert (=> setNonEmpty!55382 (= setRest!55368 ((_ map or) (store ((as const (Array A!1011 Bool)) false) setElem!55382 true) setRest!55382))))

(assert (= (and setNonEmpty!55367 condSetEmpty!55382) setIsEmpty!55382))

(assert (= (and setNonEmpty!55367 (not condSetEmpty!55382)) setNonEmpty!55382))

(declare-fun b_lambda!282851 () Bool)

(assert (= b_lambda!282849 (or b!7320214 b_lambda!282851)))

(declare-fun bs!1915808 () Bool)

(declare-fun d!2273256 () Bool)

(assert (= bs!1915808 (and d!2273256 b!7320214)))

(assert (=> bs!1915808 (= (dynLambda!29229 lambda!453066 lt!2603767) (select (dynLambda!29227 f!643 lt!2603767) b!25336))))

(declare-fun b_lambda!282853 () Bool)

(assert (=> (not b_lambda!282853) (not bs!1915808)))

(declare-fun t!385662 () Bool)

(declare-fun tb!262265 () Bool)

(assert (=> (and start!714038 (= f!643 f!643) t!385662) tb!262265))

(assert (=> bs!1915808 t!385662))

(declare-fun result!353388 () Bool)

(declare-fun b_and!351589 () Bool)

(assert (= b_and!351585 (and (=> t!385662 result!353388) b_and!351589)))

(declare-fun m!7985214 () Bool)

(assert (=> bs!1915808 m!7985214))

(declare-fun m!7985216 () Bool)

(assert (=> bs!1915808 m!7985216))

(assert (=> d!2273254 d!2273256))

(check-sat tp_is_empty!47913 (not d!2273254) (not b_lambda!282841) (not setNonEmpty!55381) (not d!2273242) (not d!2273252) (not b_next!134955) (not setNonEmpty!55378) tp_is_empty!47915 (not tb!262265) (not b_lambda!282853) (not b_lambda!282851) (not d!2273246) (not setNonEmpty!55382) b_and!351589)
(check-sat b_and!351589 (not b_next!134955))
