; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714154 () Bool)

(assert start!714154)

(declare-fun b_free!134201 () Bool)

(declare-fun b_next!134991 () Bool)

(assert (=> start!714154 (= b_free!134201 (not b_next!134991))))

(declare-fun tp!2079219 () Bool)

(declare-fun b_and!351665 () Bool)

(assert (=> start!714154 (= tp!2079219 b_and!351665)))

(declare-fun b!7320590 () Bool)

(assert (=> b!7320590 true))

(assert (=> b!7320590 true))

(declare-fun order!29289 () Int)

(declare-fun order!29291 () Int)

(declare-fun f!643 () Int)

(declare-fun lambda!453216 () Int)

(declare-fun dynLambda!29284 (Int Int) Int)

(declare-fun dynLambda!29285 (Int Int) Int)

(assert (=> b!7320590 (< (dynLambda!29284 order!29289 f!643) (dynLambda!29285 order!29291 lambda!453216))))

(declare-fun setIsEmpty!55539 () Bool)

(declare-fun setRes!55540 () Bool)

(assert (=> setIsEmpty!55539 setRes!55540))

(declare-fun b!7320587 () Bool)

(declare-fun e!4383001 () Bool)

(declare-fun e!4383003 () Bool)

(assert (=> b!7320587 (= e!4383001 e!4383003)))

(declare-fun res!2958692 () Bool)

(assert (=> b!7320587 (=> res!2958692 e!4383003)))

(declare-datatypes ((A!1047 0))(
  ( (A!1048 (val!29367 Int)) )
))
(declare-fun lt!2603993 () A!1047)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((B!3749 0))(
  ( (B!3750 (val!29368 Int)) )
))
(declare-fun lt!2603992 () (InoxSet B!3749))

(declare-fun lt!2603989 () (InoxSet A!1047))

(declare-fun lt!2603991 () (InoxSet B!3749))

(declare-fun b!25336 () B!3749)

(assert (=> b!7320587 (= res!2958692 (or (not (select lt!2603989 lt!2603993)) (not (select ((_ map or) lt!2603991 lt!2603992) b!25336))))))

(declare-fun s1!434 () (InoxSet A!1047))

(declare-fun s2!405 () (InoxSet A!1047))

(assert (=> b!7320587 (= lt!2603989 ((_ map or) s1!434 s2!405))))

(declare-fun setNonEmpty!55539 () Bool)

(declare-fun tp!2079220 () Bool)

(declare-fun tp_is_empty!47985 () Bool)

(assert (=> setNonEmpty!55539 (= setRes!55540 (and tp!2079220 tp_is_empty!47985))))

(declare-fun setElem!55539 () A!1047)

(declare-fun setRest!55540 () (InoxSet A!1047))

(assert (=> setNonEmpty!55539 (= s1!434 ((_ map or) (store ((as const (Array A!1047 Bool)) false) setElem!55539 true) setRest!55540))))

(declare-fun setNonEmpty!55540 () Bool)

(declare-fun setRes!55539 () Bool)

(declare-fun tp!2079218 () Bool)

(assert (=> setNonEmpty!55540 (= setRes!55539 (and tp!2079218 tp_is_empty!47985))))

(declare-fun setElem!55540 () A!1047)

(declare-fun setRest!55539 () (InoxSet A!1047))

(assert (=> setNonEmpty!55540 (= s2!405 ((_ map or) (store ((as const (Array A!1047 Bool)) false) setElem!55540 true) setRest!55539))))

(declare-fun b!7320588 () Bool)

(declare-fun exists!4665 ((InoxSet A!1047) Int) Bool)

(assert (=> b!7320588 (= e!4383003 (exists!4665 lt!2603989 lambda!453216))))

(assert (=> b!7320588 (exists!4665 lt!2603989 lambda!453216)))

(declare-datatypes ((Unit!164823 0))(
  ( (Unit!164824) )
))
(declare-fun lt!2603990 () Unit!164823)

(declare-fun lemmaContainsThenExists!275 ((InoxSet A!1047) A!1047 Int) Unit!164823)

(assert (=> b!7320588 (= lt!2603990 (lemmaContainsThenExists!275 lt!2603989 lt!2603993 lambda!453216))))

(declare-fun b!7320589 () Bool)

(declare-fun e!4383004 () Bool)

(assert (=> b!7320589 (= e!4383004 e!4383001)))

(declare-fun res!2958693 () Bool)

(assert (=> b!7320589 (=> res!2958693 e!4383001)))

(declare-fun dynLambda!29286 (Int A!1047) (InoxSet B!3749))

(assert (=> b!7320589 (= res!2958693 (not (select (dynLambda!29286 f!643 lt!2603993) b!25336)))))

(declare-fun getWitness!2390 ((InoxSet A!1047) Int) A!1047)

(assert (=> b!7320589 (= lt!2603993 (getWitness!2390 s2!405 lambda!453216))))

(declare-fun e!4383000 () Bool)

(assert (=> b!7320590 (= e!4383000 (not e!4383004))))

(declare-fun res!2958690 () Bool)

(assert (=> b!7320590 (=> res!2958690 e!4383004)))

(assert (=> b!7320590 (= res!2958690 (not (exists!4665 s2!405 lambda!453216)))))

(declare-fun empty!3303 () A!1047)

(declare-fun flatMapPost!146 ((InoxSet A!1047) Int B!3749) A!1047)

(assert (=> b!7320590 (= (flatMapPost!146 s2!405 f!643 b!25336) empty!3303)))

(assert (=> b!7320590 true))

(assert (=> b!7320590 tp_is_empty!47985))

(declare-fun res!2958691 () Bool)

(declare-fun e!4383002 () Bool)

(assert (=> start!714154 (=> (not res!2958691) (not e!4383002))))

(assert (=> start!714154 (= res!2958691 (not (select lt!2603991 b!25336)))))

(declare-fun flatMap!3143 ((InoxSet A!1047) Int) (InoxSet B!3749))

(assert (=> start!714154 (= lt!2603991 (flatMap!3143 s1!434 f!643))))

(assert (=> start!714154 e!4383002))

(declare-fun condSetEmpty!55539 () Bool)

(assert (=> start!714154 (= condSetEmpty!55539 (= s2!405 ((as const (Array A!1047 Bool)) false)))))

(assert (=> start!714154 setRes!55539))

(declare-fun tp_is_empty!47987 () Bool)

(assert (=> start!714154 tp_is_empty!47987))

(declare-fun condSetEmpty!55540 () Bool)

(assert (=> start!714154 (= condSetEmpty!55540 (= s1!434 ((as const (Array A!1047 Bool)) false)))))

(assert (=> start!714154 setRes!55540))

(assert (=> start!714154 tp!2079219))

(declare-fun b!7320591 () Bool)

(assert (=> b!7320591 (= e!4383002 e!4383000)))

(declare-fun res!2958689 () Bool)

(assert (=> b!7320591 (=> (not res!2958689) (not e!4383000))))

(assert (=> b!7320591 (= res!2958689 (select lt!2603992 b!25336))))

(assert (=> b!7320591 (= lt!2603992 (flatMap!3143 s2!405 f!643))))

(declare-fun setIsEmpty!55540 () Bool)

(assert (=> setIsEmpty!55540 setRes!55539))

(assert (= (and start!714154 res!2958691) b!7320591))

(assert (= (and b!7320591 res!2958689) b!7320590))

(assert (= (and b!7320590 (not res!2958690)) b!7320589))

(assert (= (and b!7320589 (not res!2958693)) b!7320587))

(assert (= (and b!7320587 (not res!2958692)) b!7320588))

(assert (= (and start!714154 condSetEmpty!55539) setIsEmpty!55540))

(assert (= (and start!714154 (not condSetEmpty!55539)) setNonEmpty!55540))

(assert (= (and start!714154 condSetEmpty!55540) setIsEmpty!55539))

(assert (= (and start!714154 (not condSetEmpty!55540)) setNonEmpty!55539))

(declare-fun b_lambda!282931 () Bool)

(assert (=> (not b_lambda!282931) (not b!7320589)))

(declare-fun t!385712 () Bool)

(declare-fun tb!262307 () Bool)

(assert (=> (and start!714154 (= f!643 f!643) t!385712) tb!262307))

(assert (=> b!7320589 t!385712))

(declare-fun result!353458 () Bool)

(declare-fun b_and!351667 () Bool)

(assert (= b_and!351665 (and (=> t!385712 result!353458) b_and!351667)))

(declare-fun m!7985788 () Bool)

(assert (=> b!7320591 m!7985788))

(declare-fun m!7985790 () Bool)

(assert (=> b!7320591 m!7985790))

(declare-fun m!7985792 () Bool)

(assert (=> b!7320587 m!7985792))

(declare-fun m!7985794 () Bool)

(assert (=> b!7320587 m!7985794))

(declare-fun m!7985796 () Bool)

(assert (=> start!714154 m!7985796))

(declare-fun m!7985798 () Bool)

(assert (=> start!714154 m!7985798))

(declare-fun m!7985800 () Bool)

(assert (=> b!7320589 m!7985800))

(declare-fun m!7985802 () Bool)

(assert (=> b!7320589 m!7985802))

(declare-fun m!7985804 () Bool)

(assert (=> b!7320589 m!7985804))

(declare-fun m!7985806 () Bool)

(assert (=> b!7320588 m!7985806))

(assert (=> b!7320588 m!7985806))

(declare-fun m!7985808 () Bool)

(assert (=> b!7320588 m!7985808))

(declare-fun m!7985810 () Bool)

(assert (=> b!7320590 m!7985810))

(declare-fun m!7985812 () Bool)

(assert (=> b!7320590 m!7985812))

(check-sat (not setNonEmpty!55540) (not b!7320590) tp_is_empty!47985 (not setNonEmpty!55539) (not b!7320591) (not start!714154) (not b!7320589) (not b_lambda!282931) tp_is_empty!47987 (not b!7320588) (not tb!262307) (not b_next!134991) b_and!351667)
(check-sat b_and!351667 (not b_next!134991))
