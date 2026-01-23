; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!712824 () Bool)

(assert start!712824)

(declare-fun b_free!134025 () Bool)

(declare-fun b_next!134815 () Bool)

(assert (=> start!712824 (= b_free!134025 (not b_next!134815))))

(declare-fun tp!2075966 () Bool)

(declare-fun b_and!351433 () Bool)

(assert (=> start!712824 (= tp!2075966 b_and!351433)))

(declare-fun res!2955928 () Bool)

(declare-fun e!4378882 () Bool)

(assert (=> start!712824 (=> (not res!2955928) (not e!4378882))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!871 0))(
  ( (A!872 (val!29129 Int)) )
))
(declare-fun s!1437 () (InoxSet A!871))

(declare-fun elmt!118 () A!871)

(assert (=> start!712824 (= res!2955928 (= s!1437 (store ((as const (Array A!871 Bool)) false) elmt!118 true)))))

(assert (=> start!712824 e!4378882))

(declare-fun condSetEmpty!54241 () Bool)

(assert (=> start!712824 (= condSetEmpty!54241 (= s!1437 ((as const (Array A!871 Bool)) false)))))

(declare-fun setRes!54241 () Bool)

(assert (=> start!712824 setRes!54241))

(declare-fun tp_is_empty!47537 () Bool)

(assert (=> start!712824 tp_is_empty!47537))

(declare-fun e!4378881 () Bool)

(assert (=> start!712824 e!4378881))

(assert (=> start!712824 tp!2075966))

(declare-fun b!7314984 () Bool)

(declare-fun tp_is_empty!47539 () Bool)

(declare-fun tp!2075967 () Bool)

(assert (=> b!7314984 (= e!4378881 (and tp_is_empty!47539 tp!2075967))))

(declare-fun setIsEmpty!54241 () Bool)

(assert (=> setIsEmpty!54241 setRes!54241))

(declare-fun setNonEmpty!54241 () Bool)

(declare-fun tp!2075965 () Bool)

(assert (=> setNonEmpty!54241 (= setRes!54241 (and tp!2075965 tp_is_empty!47537))))

(declare-fun setElem!54241 () A!871)

(declare-fun setRest!54241 () (InoxSet A!871))

(assert (=> setNonEmpty!54241 (= s!1437 ((_ map or) (store ((as const (Array A!871 Bool)) false) setElem!54241 true) setRest!54241))))

(declare-fun b!7314983 () Bool)

(assert (=> b!7314983 (= e!4378882 false)))

(declare-fun f!883 () Int)

(declare-datatypes ((B!3573 0))(
  ( (B!3574 (val!29130 Int)) )
))
(declare-datatypes ((List!71201 0))(
  ( (Nil!71077) (Cons!71077 (h!77525 B!3573) (t!385433 List!71201)) )
))
(declare-fun lRes!18 () List!71201)

(declare-fun lt!2601744 () Bool)

(declare-fun subseq!847 (List!71201 List!71201) Bool)

(declare-fun toList!11610 ((InoxSet B!3573)) List!71201)

(declare-fun flatMap!3046 ((InoxSet A!871) Int) (InoxSet B!3573))

(assert (=> b!7314983 (= lt!2601744 (subseq!847 lRes!18 (toList!11610 (flatMap!3046 s!1437 f!883))))))

(assert (= (and start!712824 res!2955928) b!7314983))

(assert (= (and start!712824 condSetEmpty!54241) setIsEmpty!54241))

(assert (= (and start!712824 (not condSetEmpty!54241)) setNonEmpty!54241))

(get-info :version)

(assert (= (and start!712824 ((_ is Cons!71077) lRes!18)) b!7314984))

(declare-fun m!7979050 () Bool)

(assert (=> start!712824 m!7979050))

(declare-fun m!7979052 () Bool)

(assert (=> b!7314983 m!7979052))

(assert (=> b!7314983 m!7979052))

(declare-fun m!7979054 () Bool)

(assert (=> b!7314983 m!7979054))

(assert (=> b!7314983 m!7979054))

(declare-fun m!7979056 () Bool)

(assert (=> b!7314983 m!7979056))

(check-sat (not b_next!134815) b_and!351433 (not setNonEmpty!54241) tp_is_empty!47537 (not b!7314984) tp_is_empty!47539 (not b!7314983))
(check-sat b_and!351433 (not b_next!134815))
