; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712380 () Bool)

(assert start!712380)

(declare-fun b_free!133961 () Bool)

(declare-fun b_next!134751 () Bool)

(assert (=> start!712380 (= b_free!133961 (not b_next!134751))))

(declare-fun tp!2075461 () Bool)

(declare-fun b_and!351291 () Bool)

(assert (=> start!712380 (= tp!2075461 b_and!351291)))

(declare-fun res!2954701 () Bool)

(declare-fun e!4377424 () Bool)

(assert (=> start!712380 (=> (not res!2954701) (not e!4377424))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!807 0))(
  ( (A!808 (val!29065 Int)) )
))
(declare-fun s!1437 () (InoxSet A!807))

(declare-fun elmt!118 () A!807)

(assert (=> start!712380 (= res!2954701 (= s!1437 (store ((as const (Array A!807 Bool)) false) elmt!118 true)))))

(assert (=> start!712380 e!4377424))

(declare-fun condSetEmpty!54013 () Bool)

(assert (=> start!712380 (= condSetEmpty!54013 (= s!1437 ((as const (Array A!807 Bool)) false)))))

(declare-fun setRes!54013 () Bool)

(assert (=> start!712380 setRes!54013))

(declare-fun tp_is_empty!47409 () Bool)

(assert (=> start!712380 tp_is_empty!47409))

(assert (=> start!712380 tp!2075461))

(declare-fun e!4377423 () Bool)

(assert (=> start!712380 e!4377423))

(declare-fun b!7312972 () Bool)

(declare-fun e!4377422 () Bool)

(assert (=> b!7312972 (= e!4377424 e!4377422)))

(declare-fun res!2954702 () Bool)

(assert (=> b!7312972 (=> (not res!2954702) (not e!4377422))))

(declare-datatypes ((B!3509 0))(
  ( (B!3510 (val!29066 Int)) )
))
(declare-datatypes ((List!71158 0))(
  ( (Nil!71034) (Cons!71034 (h!77482 B!3509) (t!385324 List!71158)) )
))
(declare-fun lRes!18 () List!71158)

(declare-fun lt!2600943 () List!71158)

(declare-fun subseq!815 (List!71158 List!71158) Bool)

(assert (=> b!7312972 (= res!2954702 (subseq!815 lRes!18 lt!2600943))))

(declare-fun f!883 () Int)

(declare-fun toList!11567 ((InoxSet B!3509)) List!71158)

(declare-fun flatMap!3014 ((InoxSet A!807) Int) (InoxSet B!3509))

(assert (=> b!7312972 (= lt!2600943 (toList!11567 (flatMap!3014 s!1437 f!883)))))

(declare-fun b!7312973 () Bool)

(assert (=> b!7312973 (= e!4377422 false)))

(declare-datatypes ((Unit!164490 0))(
  ( (Unit!164491) )
))
(declare-fun lt!2600942 () Unit!164490)

(declare-fun subseqTail!60 (List!71158 List!71158) Unit!164490)

(assert (=> b!7312973 (= lt!2600942 (subseqTail!60 lRes!18 lt!2600943))))

(declare-fun b!7312974 () Bool)

(declare-fun res!2954703 () Bool)

(assert (=> b!7312974 (=> (not res!2954703) (not e!4377422))))

(get-info :version)

(assert (=> b!7312974 (= res!2954703 ((_ is Cons!71034) lRes!18))))

(declare-fun b!7312975 () Bool)

(declare-fun tp_is_empty!47411 () Bool)

(declare-fun tp!2075462 () Bool)

(assert (=> b!7312975 (= e!4377423 (and tp_is_empty!47411 tp!2075462))))

(declare-fun setNonEmpty!54013 () Bool)

(declare-fun tp!2075463 () Bool)

(assert (=> setNonEmpty!54013 (= setRes!54013 (and tp!2075463 tp_is_empty!47409))))

(declare-fun setElem!54013 () A!807)

(declare-fun setRest!54013 () (InoxSet A!807))

(assert (=> setNonEmpty!54013 (= s!1437 ((_ map or) (store ((as const (Array A!807 Bool)) false) setElem!54013 true) setRest!54013))))

(declare-fun setIsEmpty!54013 () Bool)

(assert (=> setIsEmpty!54013 setRes!54013))

(assert (= (and start!712380 res!2954701) b!7312972))

(assert (= (and b!7312972 res!2954702) b!7312974))

(assert (= (and b!7312974 res!2954703) b!7312973))

(assert (= (and start!712380 condSetEmpty!54013) setIsEmpty!54013))

(assert (= (and start!712380 (not condSetEmpty!54013)) setNonEmpty!54013))

(assert (= (and start!712380 ((_ is Cons!71034) lRes!18)) b!7312975))

(declare-fun m!7977182 () Bool)

(assert (=> start!712380 m!7977182))

(declare-fun m!7977184 () Bool)

(assert (=> b!7312972 m!7977184))

(declare-fun m!7977186 () Bool)

(assert (=> b!7312972 m!7977186))

(assert (=> b!7312972 m!7977186))

(declare-fun m!7977188 () Bool)

(assert (=> b!7312972 m!7977188))

(declare-fun m!7977190 () Bool)

(assert (=> b!7312973 m!7977190))

(check-sat (not b!7312972) (not b_next!134751) (not b!7312975) tp_is_empty!47411 b_and!351291 tp_is_empty!47409 (not b!7312973) (not setNonEmpty!54013))
(check-sat b_and!351291 (not b_next!134751))
