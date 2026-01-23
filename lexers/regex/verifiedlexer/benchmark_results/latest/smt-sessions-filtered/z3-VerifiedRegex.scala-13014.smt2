; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714258 () Bool)

(assert start!714258)

(declare-fun b_free!134233 () Bool)

(declare-fun b_next!135023 () Bool)

(assert (=> start!714258 (= b_free!134233 (not b_next!135023))))

(declare-fun tp!2079410 () Bool)

(declare-fun b_and!351715 () Bool)

(assert (=> start!714258 (= tp!2079410 b_and!351715)))

(declare-fun b!7320939 () Bool)

(assert (=> b!7320939 true))

(assert (=> b!7320939 true))

(declare-fun order!29345 () Int)

(declare-fun lambda!453369 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29347 () Int)

(declare-fun dynLambda!29321 (Int Int) Int)

(declare-fun dynLambda!29322 (Int Int) Int)

(assert (=> b!7320939 (< (dynLambda!29321 order!29345 f!643) (dynLambda!29322 order!29347 lambda!453369))))

(declare-fun b!7320932 () Bool)

(declare-fun e!4383244 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1079 0))(
  ( (A!1080 (val!29399 Int)) )
))
(declare-fun s1!434 () (InoxSet A!1079))

(declare-fun exists!4688 ((InoxSet A!1079) Int) Bool)

(assert (=> b!7320932 (= e!4383244 (exists!4688 s1!434 lambda!453369))))

(assert (=> b!7320932 (exists!4688 s1!434 lambda!453369)))

(declare-fun lt!2604308 () A!1079)

(declare-datatypes ((Unit!164835 0))(
  ( (Unit!164836) )
))
(declare-fun lt!2604305 () Unit!164835)

(declare-fun lemmaContainsThenExists!281 ((InoxSet A!1079) A!1079 Int) Unit!164835)

(assert (=> b!7320932 (= lt!2604305 (lemmaContainsThenExists!281 s1!434 lt!2604308 lambda!453369))))

(declare-fun b!7320933 () Bool)

(declare-fun res!2958950 () Bool)

(declare-fun e!4383240 () Bool)

(assert (=> b!7320933 (=> res!2958950 e!4383240)))

(declare-fun s2!405 () (InoxSet A!1079))

(assert (=> b!7320933 (= res!2958950 (exists!4688 s2!405 lambda!453369))))

(declare-fun setIsEmpty!55681 () Bool)

(declare-fun setRes!55681 () Bool)

(assert (=> setIsEmpty!55681 setRes!55681))

(declare-fun b!7320934 () Bool)

(declare-fun e!4383246 () Bool)

(assert (=> b!7320934 (= e!4383246 e!4383244)))

(declare-fun res!2958948 () Bool)

(assert (=> b!7320934 (=> res!2958948 e!4383244)))

(declare-fun lt!2604310 () Bool)

(assert (=> b!7320934 (= res!2958948 (or (and (not lt!2604310) (not (select s2!405 lt!2604308))) (not lt!2604310)))))

(assert (=> b!7320934 (= lt!2604310 (select s1!434 lt!2604308))))

(declare-fun lt!2604306 () (InoxSet A!1079))

(declare-fun getWitness!2401 ((InoxSet A!1079) Int) A!1079)

(assert (=> b!7320934 (= lt!2604308 (getWitness!2401 lt!2604306 lambda!453369))))

(declare-fun setIsEmpty!55682 () Bool)

(declare-fun setRes!55682 () Bool)

(assert (=> setIsEmpty!55682 setRes!55682))

(declare-fun res!2958951 () Bool)

(declare-fun e!4383242 () Bool)

(assert (=> start!714258 (=> (not res!2958951) (not e!4383242))))

(declare-datatypes ((B!3781 0))(
  ( (B!3782 (val!29400 Int)) )
))
(declare-fun b!25336 () B!3781)

(declare-fun lt!2604309 () (InoxSet B!3781))

(assert (=> start!714258 (= res!2958951 (not (select lt!2604309 b!25336)))))

(declare-fun flatMap!3159 ((InoxSet A!1079) Int) (InoxSet B!3781))

(assert (=> start!714258 (= lt!2604309 (flatMap!3159 s1!434 f!643))))

(assert (=> start!714258 e!4383242))

(declare-fun condSetEmpty!55681 () Bool)

(assert (=> start!714258 (= condSetEmpty!55681 (= s2!405 ((as const (Array A!1079 Bool)) false)))))

(assert (=> start!714258 setRes!55681))

(declare-fun tp_is_empty!48051 () Bool)

(assert (=> start!714258 tp_is_empty!48051))

(declare-fun condSetEmpty!55682 () Bool)

(assert (=> start!714258 (= condSetEmpty!55682 (= s1!434 ((as const (Array A!1079 Bool)) false)))))

(assert (=> start!714258 setRes!55682))

(assert (=> start!714258 tp!2079410))

(declare-fun b!7320935 () Bool)

(declare-fun e!4383241 () Bool)

(assert (=> b!7320935 (= e!4383241 e!4383246)))

(declare-fun res!2958949 () Bool)

(assert (=> b!7320935 (=> res!2958949 e!4383246)))

(assert (=> b!7320935 (= res!2958949 (not (exists!4688 lt!2604306 lambda!453369)))))

(declare-fun lt!2604307 () A!1079)

(declare-fun flatMapPost!160 ((InoxSet A!1079) Int B!3781) A!1079)

(assert (=> b!7320935 (= (flatMapPost!160 lt!2604306 f!643 b!25336) lt!2604307)))

(declare-fun b!7320936 () Bool)

(declare-fun e!4383245 () Bool)

(assert (=> b!7320936 (= e!4383242 e!4383245)))

(declare-fun res!2958946 () Bool)

(assert (=> b!7320936 (=> (not res!2958946) (not e!4383245))))

(declare-fun lt!2604311 () (InoxSet B!3781))

(assert (=> b!7320936 (= res!2958946 (and (not (select lt!2604311 b!25336)) (not (select ((_ map or) lt!2604309 lt!2604311) b!25336))))))

(assert (=> b!7320936 (= lt!2604311 (flatMap!3159 s2!405 f!643))))

(declare-fun setNonEmpty!55681 () Bool)

(declare-fun tp!2079409 () Bool)

(declare-fun tp_is_empty!48049 () Bool)

(assert (=> setNonEmpty!55681 (= setRes!55681 (and tp!2079409 tp_is_empty!48049))))

(declare-fun setElem!55681 () A!1079)

(declare-fun setRest!55682 () (InoxSet A!1079))

(assert (=> setNonEmpty!55681 (= s2!405 ((_ map or) (store ((as const (Array A!1079 Bool)) false) setElem!55681 true) setRest!55682))))

(declare-fun b!7320937 () Bool)

(assert (=> b!7320937 (= e!4383240 e!4383241)))

(declare-fun res!2958944 () Bool)

(assert (=> b!7320937 (=> res!2958944 e!4383241)))

(assert (=> b!7320937 (= res!2958944 (not (select (flatMap!3159 lt!2604306 f!643) b!25336)))))

(assert (=> b!7320937 (= lt!2604306 ((_ map or) s1!434 s2!405))))

(declare-fun e!4383243 () Bool)

(declare-fun b!7320938 () Bool)

(assert (=> b!7320938 (= e!4383243 (= (flatMapPost!160 s2!405 f!643 b!25336) lt!2604307))))

(declare-fun setNonEmpty!55682 () Bool)

(declare-fun tp!2079408 () Bool)

(assert (=> setNonEmpty!55682 (= setRes!55682 (and tp!2079408 tp_is_empty!48049))))

(declare-fun setElem!55682 () A!1079)

(declare-fun setRest!55681 () (InoxSet A!1079))

(assert (=> setNonEmpty!55682 (= s1!434 ((_ map or) (store ((as const (Array A!1079 Bool)) false) setElem!55682 true) setRest!55681))))

(assert (=> b!7320939 (= e!4383245 (not e!4383240))))

(declare-fun res!2958947 () Bool)

(assert (=> b!7320939 (=> res!2958947 e!4383240)))

(assert (=> b!7320939 (= res!2958947 (exists!4688 s1!434 lambda!453369))))

(assert (=> b!7320939 e!4383243))

(declare-fun res!2958945 () Bool)

(assert (=> b!7320939 (=> (not res!2958945) (not e!4383243))))

(assert (=> b!7320939 (= res!2958945 (= (flatMapPost!160 s1!434 f!643 b!25336) lt!2604307))))

(declare-fun empty!3359 () A!1079)

(assert (=> b!7320939 (= lt!2604307 empty!3359)))

(assert (=> b!7320939 true))

(assert (=> b!7320939 tp_is_empty!48049))

(assert (= (and start!714258 res!2958951) b!7320936))

(assert (= (and b!7320936 res!2958946) b!7320939))

(assert (= (and b!7320939 res!2958945) b!7320938))

(assert (= (and b!7320939 (not res!2958947)) b!7320933))

(assert (= (and b!7320933 (not res!2958950)) b!7320937))

(assert (= (and b!7320937 (not res!2958944)) b!7320935))

(assert (= (and b!7320935 (not res!2958949)) b!7320934))

(assert (= (and b!7320934 (not res!2958948)) b!7320932))

(assert (= (and start!714258 condSetEmpty!55681) setIsEmpty!55681))

(assert (= (and start!714258 (not condSetEmpty!55681)) setNonEmpty!55681))

(assert (= (and start!714258 condSetEmpty!55682) setIsEmpty!55682))

(assert (= (and start!714258 (not condSetEmpty!55682)) setNonEmpty!55682))

(declare-fun m!7986514 () Bool)

(assert (=> b!7320934 m!7986514))

(declare-fun m!7986516 () Bool)

(assert (=> b!7320934 m!7986516))

(declare-fun m!7986518 () Bool)

(assert (=> b!7320934 m!7986518))

(declare-fun m!7986520 () Bool)

(assert (=> b!7320932 m!7986520))

(assert (=> b!7320932 m!7986520))

(declare-fun m!7986522 () Bool)

(assert (=> b!7320932 m!7986522))

(declare-fun m!7986524 () Bool)

(assert (=> b!7320935 m!7986524))

(declare-fun m!7986526 () Bool)

(assert (=> b!7320935 m!7986526))

(declare-fun m!7986528 () Bool)

(assert (=> b!7320936 m!7986528))

(declare-fun m!7986530 () Bool)

(assert (=> b!7320936 m!7986530))

(declare-fun m!7986532 () Bool)

(assert (=> b!7320936 m!7986532))

(declare-fun m!7986534 () Bool)

(assert (=> b!7320933 m!7986534))

(assert (=> b!7320939 m!7986520))

(declare-fun m!7986536 () Bool)

(assert (=> b!7320939 m!7986536))

(declare-fun m!7986538 () Bool)

(assert (=> b!7320937 m!7986538))

(declare-fun m!7986540 () Bool)

(assert (=> b!7320937 m!7986540))

(declare-fun m!7986542 () Bool)

(assert (=> b!7320938 m!7986542))

(declare-fun m!7986544 () Bool)

(assert (=> start!714258 m!7986544))

(declare-fun m!7986546 () Bool)

(assert (=> start!714258 m!7986546))

(check-sat (not setNonEmpty!55681) (not b!7320935) (not start!714258) tp_is_empty!48049 (not b!7320934) (not b!7320937) b_and!351715 (not setNonEmpty!55682) (not b!7320933) (not b!7320938) (not b!7320936) (not b_next!135023) tp_is_empty!48051 (not b!7320932) (not b!7320939))
(check-sat b_and!351715 (not b_next!135023))
