; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!714298 () Bool)

(assert start!714298)

(declare-fun b_free!134249 () Bool)

(declare-fun b_next!135039 () Bool)

(assert (=> start!714298 (= b_free!134249 (not b_next!135039))))

(declare-fun tp!2079503 () Bool)

(declare-fun b_and!351745 () Bool)

(assert (=> start!714298 (= tp!2079503 b_and!351745)))

(declare-fun b!7321181 () Bool)

(assert (=> b!7321181 true))

(assert (=> b!7321181 true))

(declare-fun order!29379 () Int)

(declare-fun f!643 () Int)

(declare-fun order!29377 () Int)

(declare-fun lambda!453468 () Int)

(declare-fun dynLambda!29344 (Int Int) Int)

(declare-fun dynLambda!29345 (Int Int) Int)

(assert (=> b!7321181 (< (dynLambda!29344 order!29377 f!643) (dynLambda!29345 order!29379 lambda!453468))))

(declare-fun b!7321180 () Bool)

(declare-fun e!4383422 () Bool)

(declare-fun e!4383417 () Bool)

(assert (=> b!7321180 (= e!4383422 e!4383417)))

(declare-fun res!2959145 () Bool)

(assert (=> b!7321180 (=> res!2959145 e!4383417)))

(declare-fun lt!2604501 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!1095 0))(
  ( (A!1096 (val!29415 Int)) )
))
(declare-fun s2!405 () (InoxSet A!1095))

(declare-fun lt!2604502 () A!1095)

(assert (=> b!7321180 (= res!2959145 (or (and (not lt!2604501) (not (select s2!405 lt!2604502))) lt!2604501))))

(declare-fun s1!434 () (InoxSet A!1095))

(assert (=> b!7321180 (= lt!2604501 (select s1!434 lt!2604502))))

(declare-fun lt!2604504 () (InoxSet A!1095))

(declare-fun getWitness!2412 ((InoxSet A!1095) Int) A!1095)

(assert (=> b!7321180 (= lt!2604502 (getWitness!2412 lt!2604504 lambda!453468))))

(declare-fun e!4383419 () Bool)

(declare-fun e!4383420 () Bool)

(assert (=> b!7321181 (= e!4383419 (not e!4383420))))

(declare-fun res!2959147 () Bool)

(assert (=> b!7321181 (=> res!2959147 e!4383420)))

(declare-fun exists!4699 ((InoxSet A!1095) Int) Bool)

(assert (=> b!7321181 (= res!2959147 (exists!4699 s1!434 lambda!453468))))

(declare-fun e!4383423 () Bool)

(assert (=> b!7321181 e!4383423))

(declare-fun res!2959149 () Bool)

(assert (=> b!7321181 (=> (not res!2959149) (not e!4383423))))

(declare-fun lt!2604505 () A!1095)

(declare-datatypes ((B!3797 0))(
  ( (B!3798 (val!29416 Int)) )
))
(declare-fun b!25336 () B!3797)

(declare-fun flatMapPost!168 ((InoxSet A!1095) Int B!3797) A!1095)

(assert (=> b!7321181 (= res!2959149 (= (flatMapPost!168 s1!434 f!643 b!25336) lt!2604505))))

(declare-fun empty!3391 () A!1095)

(assert (=> b!7321181 (= lt!2604505 empty!3391)))

(assert (=> b!7321181 true))

(declare-fun tp_is_empty!48081 () Bool)

(assert (=> b!7321181 tp_is_empty!48081))

(declare-fun b!7321182 () Bool)

(assert (=> b!7321182 (= e!4383417 false)))

(assert (=> b!7321182 (exists!4699 s2!405 lambda!453468)))

(declare-datatypes ((Unit!164843 0))(
  ( (Unit!164844) )
))
(declare-fun lt!2604500 () Unit!164843)

(declare-fun lemmaContainsThenExists!285 ((InoxSet A!1095) A!1095 Int) Unit!164843)

(assert (=> b!7321182 (= lt!2604500 (lemmaContainsThenExists!285 s2!405 lt!2604502 lambda!453468))))

(declare-fun res!2959151 () Bool)

(declare-fun e!4383418 () Bool)

(assert (=> start!714298 (=> (not res!2959151) (not e!4383418))))

(declare-fun lt!2604503 () (InoxSet B!3797))

(assert (=> start!714298 (= res!2959151 (not (select lt!2604503 b!25336)))))

(declare-fun flatMap!3167 ((InoxSet A!1095) Int) (InoxSet B!3797))

(assert (=> start!714298 (= lt!2604503 (flatMap!3167 s1!434 f!643))))

(assert (=> start!714298 e!4383418))

(declare-fun condSetEmpty!55751 () Bool)

(assert (=> start!714298 (= condSetEmpty!55751 (= s2!405 ((as const (Array A!1095 Bool)) false)))))

(declare-fun setRes!55750 () Bool)

(assert (=> start!714298 setRes!55750))

(declare-fun tp_is_empty!48083 () Bool)

(assert (=> start!714298 tp_is_empty!48083))

(declare-fun condSetEmpty!55750 () Bool)

(assert (=> start!714298 (= condSetEmpty!55750 (= s1!434 ((as const (Array A!1095 Bool)) false)))))

(declare-fun setRes!55751 () Bool)

(assert (=> start!714298 setRes!55751))

(assert (=> start!714298 tp!2079503))

(declare-fun b!7321183 () Bool)

(declare-fun e!4383421 () Bool)

(assert (=> b!7321183 (= e!4383420 e!4383421)))

(declare-fun res!2959146 () Bool)

(assert (=> b!7321183 (=> res!2959146 e!4383421)))

(assert (=> b!7321183 (= res!2959146 (not (select (flatMap!3167 lt!2604504 f!643) b!25336)))))

(assert (=> b!7321183 (= lt!2604504 ((_ map or) s1!434 s2!405))))

(declare-fun setIsEmpty!55750 () Bool)

(assert (=> setIsEmpty!55750 setRes!55751))

(declare-fun setNonEmpty!55750 () Bool)

(declare-fun tp!2079501 () Bool)

(assert (=> setNonEmpty!55750 (= setRes!55751 (and tp!2079501 tp_is_empty!48081))))

(declare-fun setElem!55751 () A!1095)

(declare-fun setRest!55751 () (InoxSet A!1095))

(assert (=> setNonEmpty!55750 (= s1!434 ((_ map or) (store ((as const (Array A!1095 Bool)) false) setElem!55751 true) setRest!55751))))

(declare-fun b!7321184 () Bool)

(assert (=> b!7321184 (= e!4383423 (= (flatMapPost!168 s2!405 f!643 b!25336) lt!2604505))))

(declare-fun b!7321185 () Bool)

(declare-fun res!2959150 () Bool)

(assert (=> b!7321185 (=> res!2959150 e!4383420)))

(assert (=> b!7321185 (= res!2959150 (exists!4699 s2!405 lambda!453468))))

(declare-fun setIsEmpty!55751 () Bool)

(assert (=> setIsEmpty!55751 setRes!55750))

(declare-fun b!7321186 () Bool)

(assert (=> b!7321186 (= e!4383421 e!4383422)))

(declare-fun res!2959148 () Bool)

(assert (=> b!7321186 (=> res!2959148 e!4383422)))

(assert (=> b!7321186 (= res!2959148 (not (exists!4699 lt!2604504 lambda!453468)))))

(assert (=> b!7321186 (= (flatMapPost!168 lt!2604504 f!643 b!25336) lt!2604505)))

(declare-fun setNonEmpty!55751 () Bool)

(declare-fun tp!2079502 () Bool)

(assert (=> setNonEmpty!55751 (= setRes!55750 (and tp!2079502 tp_is_empty!48081))))

(declare-fun setElem!55750 () A!1095)

(declare-fun setRest!55750 () (InoxSet A!1095))

(assert (=> setNonEmpty!55751 (= s2!405 ((_ map or) (store ((as const (Array A!1095 Bool)) false) setElem!55750 true) setRest!55750))))

(declare-fun b!7321187 () Bool)

(assert (=> b!7321187 (= e!4383418 e!4383419)))

(declare-fun res!2959152 () Bool)

(assert (=> b!7321187 (=> (not res!2959152) (not e!4383419))))

(declare-fun lt!2604506 () (InoxSet B!3797))

(assert (=> b!7321187 (= res!2959152 (and (not (select lt!2604506 b!25336)) (not (select ((_ map or) lt!2604503 lt!2604506) b!25336))))))

(assert (=> b!7321187 (= lt!2604506 (flatMap!3167 s2!405 f!643))))

(assert (= (and start!714298 res!2959151) b!7321187))

(assert (= (and b!7321187 res!2959152) b!7321181))

(assert (= (and b!7321181 res!2959149) b!7321184))

(assert (= (and b!7321181 (not res!2959147)) b!7321185))

(assert (= (and b!7321185 (not res!2959150)) b!7321183))

(assert (= (and b!7321183 (not res!2959146)) b!7321186))

(assert (= (and b!7321186 (not res!2959148)) b!7321180))

(assert (= (and b!7321180 (not res!2959145)) b!7321182))

(assert (= (and start!714298 condSetEmpty!55751) setIsEmpty!55751))

(assert (= (and start!714298 (not condSetEmpty!55751)) setNonEmpty!55751))

(assert (= (and start!714298 condSetEmpty!55750) setIsEmpty!55750))

(assert (= (and start!714298 (not condSetEmpty!55750)) setNonEmpty!55750))

(declare-fun m!7986944 () Bool)

(assert (=> b!7321184 m!7986944))

(declare-fun m!7986946 () Bool)

(assert (=> b!7321180 m!7986946))

(declare-fun m!7986948 () Bool)

(assert (=> b!7321180 m!7986948))

(declare-fun m!7986950 () Bool)

(assert (=> b!7321180 m!7986950))

(declare-fun m!7986952 () Bool)

(assert (=> b!7321187 m!7986952))

(declare-fun m!7986954 () Bool)

(assert (=> b!7321187 m!7986954))

(declare-fun m!7986956 () Bool)

(assert (=> b!7321187 m!7986956))

(declare-fun m!7986958 () Bool)

(assert (=> b!7321185 m!7986958))

(declare-fun m!7986960 () Bool)

(assert (=> b!7321186 m!7986960))

(declare-fun m!7986962 () Bool)

(assert (=> b!7321186 m!7986962))

(declare-fun m!7986964 () Bool)

(assert (=> b!7321183 m!7986964))

(declare-fun m!7986966 () Bool)

(assert (=> b!7321183 m!7986966))

(declare-fun m!7986968 () Bool)

(assert (=> b!7321181 m!7986968))

(declare-fun m!7986970 () Bool)

(assert (=> b!7321181 m!7986970))

(assert (=> b!7321182 m!7986958))

(declare-fun m!7986972 () Bool)

(assert (=> b!7321182 m!7986972))

(declare-fun m!7986974 () Bool)

(assert (=> start!714298 m!7986974))

(declare-fun m!7986976 () Bool)

(assert (=> start!714298 m!7986976))

(check-sat tp_is_empty!48083 (not b_next!135039) (not b!7321185) (not b!7321182) (not b!7321180) (not setNonEmpty!55750) (not b!7321187) (not b!7321186) (not b!7321183) b_and!351745 (not start!714298) (not b!7321184) (not setNonEmpty!55751) (not b!7321181) tp_is_empty!48081)
(check-sat b_and!351745 (not b_next!135039))
