; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1708 () Bool)

(assert start!1708)

(declare-fun b_free!319 () Bool)

(declare-fun b_next!319 () Bool)

(assert (=> start!1708 (= b_free!319 (not b_next!319))))

(declare-fun tp!23405 () Bool)

(declare-fun b_and!319 () Bool)

(assert (=> start!1708 (= tp!23405 b_and!319)))

(declare-fun setIsEmpty!364 () Bool)

(declare-fun setRes!365 () Bool)

(assert (=> setIsEmpty!364 setRes!365))

(declare-fun b!34063 () Bool)

(declare-fun res!27460 () Bool)

(declare-fun e!15654 () Bool)

(assert (=> b!34063 (=> (not res!27460) (not e!15654))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!147 0))(
  ( (A!148 (val!181 Int)) )
))
(declare-fun s1!478 () (InoxSet A!147))

(declare-fun p!1713 () Int)

(declare-fun exists!12 ((InoxSet A!147) Int) Bool)

(assert (=> b!34063 (= res!27460 (exists!12 s1!478 p!1713))))

(declare-fun res!27459 () Bool)

(assert (=> start!1708 (=> (not res!27459) (not e!15654))))

(declare-fun s2!449 () (InoxSet A!147))

(assert (=> start!1708 (= res!27459 (not (exists!12 ((_ map or) s1!478 s2!449) p!1713)))))

(assert (=> start!1708 e!15654))

(declare-fun condSetEmpty!364 () Bool)

(assert (=> start!1708 (= condSetEmpty!364 (= s1!478 ((as const (Array A!147 Bool)) false)))))

(declare-fun setRes!364 () Bool)

(assert (=> start!1708 setRes!364))

(declare-fun condSetEmpty!365 () Bool)

(assert (=> start!1708 (= condSetEmpty!365 (= s2!449 ((as const (Array A!147 Bool)) false)))))

(assert (=> start!1708 setRes!365))

(assert (=> start!1708 tp!23405))

(declare-fun setNonEmpty!364 () Bool)

(declare-fun tp!23404 () Bool)

(declare-fun tp_is_empty!315 () Bool)

(assert (=> setNonEmpty!364 (= setRes!365 (and tp!23404 tp_is_empty!315))))

(declare-fun setElem!365 () A!147)

(declare-fun setRest!365 () (InoxSet A!147))

(assert (=> setNonEmpty!364 (= s2!449 ((_ map or) (store ((as const (Array A!147 Bool)) false) setElem!365 true) setRest!365))))

(declare-fun setIsEmpty!365 () Bool)

(assert (=> setIsEmpty!365 setRes!364))

(declare-fun b!34064 () Bool)

(assert (=> b!34064 (= e!15654 false)))

(declare-fun lt!2322 () A!147)

(declare-fun getWitness!3 ((InoxSet A!147) Int) A!147)

(assert (=> b!34064 (= lt!2322 (getWitness!3 s1!478 p!1713))))

(declare-fun setNonEmpty!365 () Bool)

(declare-fun tp!23406 () Bool)

(assert (=> setNonEmpty!365 (= setRes!364 (and tp!23406 tp_is_empty!315))))

(declare-fun setElem!364 () A!147)

(declare-fun setRest!364 () (InoxSet A!147))

(assert (=> setNonEmpty!365 (= s1!478 ((_ map or) (store ((as const (Array A!147 Bool)) false) setElem!364 true) setRest!364))))

(assert (= (and start!1708 res!27459) b!34063))

(assert (= (and b!34063 res!27460) b!34064))

(assert (= (and start!1708 condSetEmpty!364) setIsEmpty!365))

(assert (= (and start!1708 (not condSetEmpty!364)) setNonEmpty!365))

(assert (= (and start!1708 condSetEmpty!365) setIsEmpty!364))

(assert (= (and start!1708 (not condSetEmpty!365)) setNonEmpty!364))

(declare-fun m!9985 () Bool)

(assert (=> b!34063 m!9985))

(declare-fun m!9987 () Bool)

(assert (=> start!1708 m!9987))

(declare-fun m!9989 () Bool)

(assert (=> b!34064 m!9989))

(check-sat (not b!34064) (not b_next!319) b_and!319 (not setNonEmpty!364) (not setNonEmpty!365) (not start!1708) tp_is_empty!315 (not b!34063))
(check-sat b_and!319 (not b_next!319))
