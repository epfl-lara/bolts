; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714062 () Bool)

(assert start!714062)

(declare-fun b_free!134173 () Bool)

(declare-fun b_next!134963 () Bool)

(assert (=> start!714062 (= b_free!134173 (not b_next!134963))))

(declare-fun tp!2079044 () Bool)

(declare-fun b_and!351603 () Bool)

(assert (=> start!714062 (= tp!2079044 b_and!351603)))

(declare-fun b!7320300 () Bool)

(assert (=> b!7320300 true))

(assert (=> b!7320300 true))

(declare-fun order!29233 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29235 () Int)

(declare-fun lambda!453100 () Int)

(declare-fun dynLambda!29239 (Int Int) Int)

(declare-fun dynLambda!29240 (Int Int) Int)

(assert (=> b!7320300 (< (dynLambda!29239 order!29233 f!643) (dynLambda!29240 order!29235 lambda!453100))))

(declare-fun setIsEmpty!55405 () Bool)

(declare-fun setRes!55405 () Bool)

(assert (=> setIsEmpty!55405 setRes!55405))

(declare-fun res!2958493 () Bool)

(declare-fun e!4382833 () Bool)

(assert (=> start!714062 (=> (not res!2958493) (not e!4382833))))

(declare-datatypes ((B!3721 0))(
  ( (B!3722 (val!29339 Int)) )
))
(declare-fun b!25336 () B!3721)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2603803 () (InoxSet B!3721))

(assert (=> start!714062 (= res!2958493 (select lt!2603803 b!25336))))

(declare-datatypes ((A!1019 0))(
  ( (A!1020 (val!29340 Int)) )
))
(declare-fun s1!434 () (InoxSet A!1019))

(declare-fun flatMap!3129 ((InoxSet A!1019) Int) (InoxSet B!3721))

(assert (=> start!714062 (= lt!2603803 (flatMap!3129 s1!434 f!643))))

(assert (=> start!714062 e!4382833))

(declare-fun condSetEmpty!55405 () Bool)

(declare-fun s2!405 () (InoxSet A!1019))

(assert (=> start!714062 (= condSetEmpty!55405 (= s2!405 ((as const (Array A!1019 Bool)) false)))))

(assert (=> start!714062 setRes!55405))

(declare-fun tp_is_empty!47931 () Bool)

(assert (=> start!714062 tp_is_empty!47931))

(declare-fun condSetEmpty!55406 () Bool)

(assert (=> start!714062 (= condSetEmpty!55406 (= s1!434 ((as const (Array A!1019 Bool)) false)))))

(declare-fun setRes!55406 () Bool)

(assert (=> start!714062 setRes!55406))

(assert (=> start!714062 tp!2079044))

(declare-fun b!7320297 () Bool)

(declare-fun e!4382832 () Bool)

(declare-fun lt!2603801 () (InoxSet A!1019))

(declare-fun exists!4645 ((InoxSet A!1019) Int) Bool)

(assert (=> b!7320297 (= e!4382832 (exists!4645 lt!2603801 lambda!453100))))

(assert (=> b!7320297 (exists!4645 lt!2603801 lambda!453100)))

(declare-fun lt!2603800 () A!1019)

(declare-datatypes ((Unit!164811 0))(
  ( (Unit!164812) )
))
(declare-fun lt!2603802 () Unit!164811)

(declare-fun lemmaContainsThenExists!269 ((InoxSet A!1019) A!1019 Int) Unit!164811)

(assert (=> b!7320297 (= lt!2603802 (lemmaContainsThenExists!269 lt!2603801 lt!2603800 lambda!453100))))

(declare-fun setIsEmpty!55406 () Bool)

(assert (=> setIsEmpty!55406 setRes!55406))

(declare-fun b!7320298 () Bool)

(declare-fun res!2958495 () Bool)

(assert (=> b!7320298 (=> res!2958495 e!4382832)))

(assert (=> b!7320298 (= res!2958495 (not (select ((_ map or) lt!2603803 (flatMap!3129 s2!405 f!643)) b!25336)))))

(declare-fun b!7320299 () Bool)

(declare-fun e!4382834 () Bool)

(declare-fun e!4382831 () Bool)

(assert (=> b!7320299 (= e!4382834 e!4382831)))

(declare-fun res!2958492 () Bool)

(assert (=> b!7320299 (=> res!2958492 e!4382831)))

(declare-fun dynLambda!29241 (Int A!1019) (InoxSet B!3721))

(assert (=> b!7320299 (= res!2958492 (not (select (dynLambda!29241 f!643 lt!2603800) b!25336)))))

(declare-fun getWitness!2373 ((InoxSet A!1019) Int) A!1019)

(assert (=> b!7320299 (= lt!2603800 (getWitness!2373 s1!434 lambda!453100))))

(declare-fun setNonEmpty!55405 () Bool)

(declare-fun tp!2079043 () Bool)

(declare-fun tp_is_empty!47929 () Bool)

(assert (=> setNonEmpty!55405 (= setRes!55406 (and tp!2079043 tp_is_empty!47929))))

(declare-fun setElem!55406 () A!1019)

(declare-fun setRest!55405 () (InoxSet A!1019))

(assert (=> setNonEmpty!55405 (= s1!434 ((_ map or) (store ((as const (Array A!1019 Bool)) false) setElem!55406 true) setRest!55405))))

(declare-fun setNonEmpty!55406 () Bool)

(declare-fun tp!2079042 () Bool)

(assert (=> setNonEmpty!55406 (= setRes!55405 (and tp!2079042 tp_is_empty!47929))))

(declare-fun setElem!55405 () A!1019)

(declare-fun setRest!55406 () (InoxSet A!1019))

(assert (=> setNonEmpty!55406 (= s2!405 ((_ map or) (store ((as const (Array A!1019 Bool)) false) setElem!55405 true) setRest!55406))))

(assert (=> b!7320300 (= e!4382833 (not e!4382834))))

(declare-fun res!2958491 () Bool)

(assert (=> b!7320300 (=> res!2958491 e!4382834)))

(assert (=> b!7320300 (= res!2958491 (not (exists!4645 s1!434 lambda!453100)))))

(declare-fun empty!3247 () A!1019)

(declare-fun flatMapPost!132 ((InoxSet A!1019) Int B!3721) A!1019)

(assert (=> b!7320300 (= (flatMapPost!132 s1!434 f!643 b!25336) empty!3247)))

(assert (=> b!7320300 true))

(assert (=> b!7320300 tp_is_empty!47929))

(declare-fun b!7320301 () Bool)

(assert (=> b!7320301 (= e!4382831 e!4382832)))

(declare-fun res!2958494 () Bool)

(assert (=> b!7320301 (=> res!2958494 e!4382832)))

(assert (=> b!7320301 (= res!2958494 (not (select lt!2603801 lt!2603800)))))

(assert (=> b!7320301 (= lt!2603801 ((_ map or) s1!434 s2!405))))

(assert (= (and start!714062 res!2958493) b!7320300))

(assert (= (and b!7320300 (not res!2958491)) b!7320299))

(assert (= (and b!7320299 (not res!2958492)) b!7320301))

(assert (= (and b!7320301 (not res!2958494)) b!7320298))

(assert (= (and b!7320298 (not res!2958495)) b!7320297))

(assert (= (and start!714062 condSetEmpty!55405) setIsEmpty!55405))

(assert (= (and start!714062 (not condSetEmpty!55405)) setNonEmpty!55406))

(assert (= (and start!714062 condSetEmpty!55406) setIsEmpty!55406))

(assert (= (and start!714062 (not condSetEmpty!55406)) setNonEmpty!55405))

(declare-fun b_lambda!282861 () Bool)

(assert (=> (not b_lambda!282861) (not b!7320299)))

(declare-fun t!385671 () Bool)

(declare-fun tb!262273 () Bool)

(assert (=> (and start!714062 (= f!643 f!643) t!385671) tb!262273))

(assert (=> b!7320299 t!385671))

(declare-fun result!353396 () Bool)

(declare-fun b_and!351605 () Bool)

(assert (= b_and!351603 (and (=> t!385671 result!353396) b_and!351605)))

(declare-fun m!7985282 () Bool)

(assert (=> b!7320299 m!7985282))

(declare-fun m!7985284 () Bool)

(assert (=> b!7320299 m!7985284))

(declare-fun m!7985286 () Bool)

(assert (=> b!7320299 m!7985286))

(declare-fun m!7985288 () Bool)

(assert (=> b!7320301 m!7985288))

(declare-fun m!7985290 () Bool)

(assert (=> b!7320297 m!7985290))

(assert (=> b!7320297 m!7985290))

(declare-fun m!7985292 () Bool)

(assert (=> b!7320297 m!7985292))

(declare-fun m!7985294 () Bool)

(assert (=> start!714062 m!7985294))

(declare-fun m!7985296 () Bool)

(assert (=> start!714062 m!7985296))

(declare-fun m!7985298 () Bool)

(assert (=> b!7320300 m!7985298))

(declare-fun m!7985300 () Bool)

(assert (=> b!7320300 m!7985300))

(declare-fun m!7985302 () Bool)

(assert (=> b!7320298 m!7985302))

(declare-fun m!7985304 () Bool)

(assert (=> b!7320298 m!7985304))

(check-sat (not tb!262273) (not b_next!134963) (not b_lambda!282861) b_and!351605 (not setNonEmpty!55405) tp_is_empty!47929 (not start!714062) (not b!7320299) (not b!7320300) (not setNonEmpty!55406) (not b!7320297) tp_is_empty!47931 (not b!7320298))
(check-sat b_and!351605 (not b_next!134963))
