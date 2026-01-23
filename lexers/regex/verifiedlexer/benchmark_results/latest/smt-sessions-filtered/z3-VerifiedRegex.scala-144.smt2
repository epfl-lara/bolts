; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1730 () Bool)

(assert start!1730)

(declare-fun b_free!335 () Bool)

(declare-fun b_next!335 () Bool)

(assert (=> start!1730 (= b_free!335 (not b_next!335))))

(declare-fun tp!23484 () Bool)

(declare-fun b_and!337 () Bool)

(assert (=> start!1730 (= tp!23484 b_and!337)))

(declare-fun b!34136 () Bool)

(declare-fun res!27504 () Bool)

(declare-fun e!15699 () Bool)

(assert (=> b!34136 (=> (not res!27504) (not e!15699))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!163 0))(
  ( (A!164 (val!189 Int)) )
))
(declare-fun s1!478 () (InoxSet A!163))

(declare-fun p!1713 () Int)

(declare-fun exists!21 ((InoxSet A!163) Int) Bool)

(assert (=> b!34136 (= res!27504 (exists!21 s1!478 p!1713))))

(declare-fun setNonEmpty!420 () Bool)

(declare-fun setRes!421 () Bool)

(declare-fun tp!23485 () Bool)

(declare-fun tp_is_empty!331 () Bool)

(assert (=> setNonEmpty!420 (= setRes!421 (and tp!23485 tp_is_empty!331))))

(declare-fun setElem!420 () A!163)

(declare-fun setRest!420 () (InoxSet A!163))

(assert (=> setNonEmpty!420 (= s1!478 ((_ map or) (store ((as const (Array A!163 Bool)) false) setElem!420 true) setRest!420))))

(declare-fun setNonEmpty!421 () Bool)

(declare-fun setRes!420 () Bool)

(declare-fun tp!23486 () Bool)

(assert (=> setNonEmpty!421 (= setRes!420 (and tp!23486 tp_is_empty!331))))

(declare-fun s2!449 () (InoxSet A!163))

(declare-fun setElem!421 () A!163)

(declare-fun setRest!421 () (InoxSet A!163))

(assert (=> setNonEmpty!421 (= s2!449 ((_ map or) (store ((as const (Array A!163 Bool)) false) setElem!421 true) setRest!421))))

(declare-fun setIsEmpty!420 () Bool)

(assert (=> setIsEmpty!420 setRes!420))

(declare-fun res!27505 () Bool)

(assert (=> start!1730 (=> (not res!27505) (not e!15699))))

(declare-fun lt!2392 () (InoxSet A!163))

(assert (=> start!1730 (= res!27505 (not (exists!21 lt!2392 p!1713)))))

(assert (=> start!1730 (= lt!2392 ((_ map or) s1!478 s2!449))))

(assert (=> start!1730 e!15699))

(declare-fun condSetEmpty!421 () Bool)

(assert (=> start!1730 (= condSetEmpty!421 (= s1!478 ((as const (Array A!163 Bool)) false)))))

(assert (=> start!1730 setRes!421))

(declare-fun condSetEmpty!420 () Bool)

(assert (=> start!1730 (= condSetEmpty!420 (= s2!449 ((as const (Array A!163 Bool)) false)))))

(assert (=> start!1730 setRes!420))

(assert (=> start!1730 tp!23484))

(declare-fun b!34137 () Bool)

(declare-fun lt!2391 () A!163)

(assert (=> b!34137 (= e!15699 (and (select s1!478 lt!2391) (not (select lt!2392 lt!2391))))))

(declare-fun getWitness!12 ((InoxSet A!163) Int) A!163)

(assert (=> b!34137 (= lt!2391 (getWitness!12 s1!478 p!1713))))

(declare-fun setIsEmpty!421 () Bool)

(assert (=> setIsEmpty!421 setRes!421))

(assert (= (and start!1730 res!27505) b!34136))

(assert (= (and b!34136 res!27504) b!34137))

(assert (= (and start!1730 condSetEmpty!421) setIsEmpty!421))

(assert (= (and start!1730 (not condSetEmpty!421)) setNonEmpty!420))

(assert (= (and start!1730 condSetEmpty!420) setIsEmpty!420))

(assert (= (and start!1730 (not condSetEmpty!420)) setNonEmpty!421))

(declare-fun m!10079 () Bool)

(assert (=> b!34136 m!10079))

(declare-fun m!10081 () Bool)

(assert (=> start!1730 m!10081))

(declare-fun m!10083 () Bool)

(assert (=> b!34137 m!10083))

(declare-fun m!10085 () Bool)

(assert (=> b!34137 m!10085))

(declare-fun m!10087 () Bool)

(assert (=> b!34137 m!10087))

(check-sat (not b_next!335) (not b!34136) (not setNonEmpty!420) (not start!1730) (not setNonEmpty!421) b_and!337 (not b!34137) tp_is_empty!331)
(check-sat b_and!337 (not b_next!335))
