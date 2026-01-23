; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!713994 () Bool)

(assert start!713994)

(declare-fun b_free!134149 () Bool)

(declare-fun b_next!134939 () Bool)

(assert (=> start!713994 (= b_free!134149 (not b_next!134939))))

(declare-fun tp!2078916 () Bool)

(declare-fun b_and!351557 () Bool)

(assert (=> start!713994 (= tp!2078916 b_and!351557)))

(declare-fun b!7320081 () Bool)

(assert (=> b!7320081 true))

(assert (=> b!7320081 true))

(declare-fun order!29185 () Int)

(declare-fun lambda!453010 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29187 () Int)

(declare-fun dynLambda!29204 (Int Int) Int)

(declare-fun dynLambda!29205 (Int Int) Int)

(assert (=> b!7320081 (< (dynLambda!29204 order!29185 f!643) (dynLambda!29205 order!29187 lambda!453010))))

(declare-fun setNonEmpty!55313 () Bool)

(declare-fun setRes!55313 () Bool)

(declare-fun tp!2078915 () Bool)

(declare-fun tp_is_empty!47881 () Bool)

(assert (=> setNonEmpty!55313 (= setRes!55313 (and tp!2078915 tp_is_empty!47881))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!995 0))(
  ( (A!996 (val!29315 Int)) )
))
(declare-fun s1!434 () (InoxSet A!995))

(declare-fun setElem!55314 () A!995)

(declare-fun setRest!55313 () (InoxSet A!995))

(assert (=> setNonEmpty!55313 (= s1!434 ((_ map or) (store ((as const (Array A!995 Bool)) false) setElem!55314 true) setRest!55313))))

(declare-fun b!7320077 () Bool)

(declare-fun e!4382707 () Bool)

(declare-fun lt!2603681 () (InoxSet A!995))

(declare-fun exists!4627 ((InoxSet A!995) Int) Bool)

(assert (=> b!7320077 (= e!4382707 (exists!4627 lt!2603681 lambda!453010))))

(declare-fun setIsEmpty!55313 () Bool)

(declare-fun setRes!55314 () Bool)

(assert (=> setIsEmpty!55313 setRes!55314))

(declare-fun setNonEmpty!55314 () Bool)

(declare-fun tp!2078914 () Bool)

(assert (=> setNonEmpty!55314 (= setRes!55314 (and tp!2078914 tp_is_empty!47881))))

(declare-fun s2!405 () (InoxSet A!995))

(declare-fun setElem!55313 () A!995)

(declare-fun setRest!55314 () (InoxSet A!995))

(assert (=> setNonEmpty!55314 (= s2!405 ((_ map or) (store ((as const (Array A!995 Bool)) false) setElem!55313 true) setRest!55314))))

(declare-fun res!2958345 () Bool)

(declare-fun e!4382704 () Bool)

(assert (=> start!713994 (=> (not res!2958345) (not e!4382704))))

(declare-datatypes ((B!3697 0))(
  ( (B!3698 (val!29316 Int)) )
))
(declare-fun b!25336 () B!3697)

(declare-fun lt!2603680 () (InoxSet B!3697))

(assert (=> start!713994 (= res!2958345 (not (select lt!2603680 b!25336)))))

(declare-fun flatMap!3117 ((InoxSet A!995) Int) (InoxSet B!3697))

(assert (=> start!713994 (= lt!2603680 (flatMap!3117 s1!434 f!643))))

(assert (=> start!713994 e!4382704))

(declare-fun condSetEmpty!55314 () Bool)

(assert (=> start!713994 (= condSetEmpty!55314 (= s2!405 ((as const (Array A!995 Bool)) false)))))

(assert (=> start!713994 setRes!55314))

(declare-fun tp_is_empty!47883 () Bool)

(assert (=> start!713994 tp_is_empty!47883))

(declare-fun condSetEmpty!55313 () Bool)

(assert (=> start!713994 (= condSetEmpty!55313 (= s1!434 ((as const (Array A!995 Bool)) false)))))

(assert (=> start!713994 setRes!55313))

(assert (=> start!713994 tp!2078916))

(declare-fun b!7320078 () Bool)

(declare-fun e!4382706 () Bool)

(assert (=> b!7320078 (= e!4382704 e!4382706)))

(declare-fun res!2958349 () Bool)

(assert (=> b!7320078 (=> (not res!2958349) (not e!4382706))))

(declare-fun lt!2603682 () (InoxSet B!3697))

(assert (=> b!7320078 (= res!2958349 (and (not (select lt!2603682 b!25336)) (not (select ((_ map or) lt!2603680 lt!2603682) b!25336))))))

(assert (=> b!7320078 (= lt!2603682 (flatMap!3117 s2!405 f!643))))

(declare-fun b!7320079 () Bool)

(declare-fun e!4382708 () Bool)

(declare-fun e!4382703 () Bool)

(assert (=> b!7320079 (= e!4382708 e!4382703)))

(declare-fun res!2958347 () Bool)

(assert (=> b!7320079 (=> res!2958347 e!4382703)))

(assert (=> b!7320079 (= res!2958347 (not (select (flatMap!3117 lt!2603681 f!643) b!25336)))))

(assert (=> b!7320079 (= lt!2603681 ((_ map or) s1!434 s2!405))))

(declare-fun setIsEmpty!55314 () Bool)

(assert (=> setIsEmpty!55314 setRes!55313))

(declare-fun b!7320080 () Bool)

(declare-fun lt!2603683 () A!995)

(declare-fun e!4382705 () Bool)

(declare-fun flatMapPost!120 ((InoxSet A!995) Int B!3697) A!995)

(assert (=> b!7320080 (= e!4382705 (= (flatMapPost!120 s2!405 f!643 b!25336) lt!2603683))))

(assert (=> b!7320081 (= e!4382706 (not e!4382708))))

(declare-fun res!2958346 () Bool)

(assert (=> b!7320081 (=> res!2958346 e!4382708)))

(assert (=> b!7320081 (= res!2958346 (exists!4627 s1!434 lambda!453010))))

(assert (=> b!7320081 e!4382705))

(declare-fun res!2958348 () Bool)

(assert (=> b!7320081 (=> (not res!2958348) (not e!4382705))))

(assert (=> b!7320081 (= res!2958348 (= (flatMapPost!120 s1!434 f!643 b!25336) lt!2603683))))

(declare-fun empty!3199 () A!995)

(assert (=> b!7320081 (= lt!2603683 empty!3199)))

(assert (=> b!7320081 true))

(assert (=> b!7320081 tp_is_empty!47881))

(declare-fun b!7320082 () Bool)

(assert (=> b!7320082 (= e!4382703 e!4382707)))

(declare-fun res!2958351 () Bool)

(assert (=> b!7320082 (=> res!2958351 e!4382707)))

(assert (=> b!7320082 (= res!2958351 (not (exists!4627 lt!2603681 lambda!453010)))))

(assert (=> b!7320082 (= (flatMapPost!120 lt!2603681 f!643 b!25336) lt!2603683)))

(declare-fun b!7320083 () Bool)

(declare-fun res!2958350 () Bool)

(assert (=> b!7320083 (=> res!2958350 e!4382708)))

(assert (=> b!7320083 (= res!2958350 (exists!4627 s2!405 lambda!453010))))

(assert (= (and start!713994 res!2958345) b!7320078))

(assert (= (and b!7320078 res!2958349) b!7320081))

(assert (= (and b!7320081 res!2958348) b!7320080))

(assert (= (and b!7320081 (not res!2958346)) b!7320083))

(assert (= (and b!7320083 (not res!2958350)) b!7320079))

(assert (= (and b!7320079 (not res!2958347)) b!7320082))

(assert (= (and b!7320082 (not res!2958351)) b!7320077))

(assert (= (and start!713994 condSetEmpty!55314) setIsEmpty!55313))

(assert (= (and start!713994 (not condSetEmpty!55314)) setNonEmpty!55314))

(assert (= (and start!713994 condSetEmpty!55313) setIsEmpty!55314))

(assert (= (and start!713994 (not condSetEmpty!55313)) setNonEmpty!55313))

(declare-fun m!7984948 () Bool)

(assert (=> start!713994 m!7984948))

(declare-fun m!7984950 () Bool)

(assert (=> start!713994 m!7984950))

(declare-fun m!7984952 () Bool)

(assert (=> b!7320080 m!7984952))

(declare-fun m!7984954 () Bool)

(assert (=> b!7320082 m!7984954))

(declare-fun m!7984956 () Bool)

(assert (=> b!7320082 m!7984956))

(declare-fun m!7984958 () Bool)

(assert (=> b!7320079 m!7984958))

(declare-fun m!7984960 () Bool)

(assert (=> b!7320079 m!7984960))

(declare-fun m!7984962 () Bool)

(assert (=> b!7320083 m!7984962))

(assert (=> b!7320077 m!7984954))

(declare-fun m!7984964 () Bool)

(assert (=> b!7320078 m!7984964))

(declare-fun m!7984966 () Bool)

(assert (=> b!7320078 m!7984966))

(declare-fun m!7984968 () Bool)

(assert (=> b!7320078 m!7984968))

(declare-fun m!7984970 () Bool)

(assert (=> b!7320081 m!7984970))

(declare-fun m!7984972 () Bool)

(assert (=> b!7320081 m!7984972))

(check-sat (not start!713994) (not setNonEmpty!55313) b_and!351557 (not setNonEmpty!55314) (not b!7320081) (not b!7320079) (not b!7320080) (not b!7320082) (not b!7320078) (not b!7320077) tp_is_empty!47883 (not b!7320083) (not b_next!134939) tp_is_empty!47881)
(check-sat b_and!351557 (not b_next!134939))
