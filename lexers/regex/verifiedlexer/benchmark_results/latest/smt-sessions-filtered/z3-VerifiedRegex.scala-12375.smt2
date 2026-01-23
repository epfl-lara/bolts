; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693092 () Bool)

(assert start!693092)

(declare-fun b_free!133605 () Bool)

(declare-fun b_next!134395 () Bool)

(assert (=> start!693092 (= b_free!133605 (not b_next!134395))))

(declare-fun tp!1960468 () Bool)

(declare-fun b_and!350653 () Bool)

(assert (=> start!693092 (= tp!1960468 b_and!350653)))

(declare-fun setNonEmpty!50667 () Bool)

(declare-fun setRes!50667 () Bool)

(declare-fun tp!1960467 () Bool)

(declare-fun tp_is_empty!45223 () Bool)

(assert (=> setNonEmpty!50667 (= setRes!50667 (and tp!1960467 tp_is_empty!45223))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!511 0))(
  ( (A!512 (val!27837 Int)) )
))
(declare-fun s!1400 () (InoxSet A!511))

(declare-fun setElem!50667 () A!511)

(declare-fun setRest!50667 () (InoxSet A!511))

(assert (=> setNonEmpty!50667 (= s!1400 ((_ map or) (store ((as const (Array A!511 Bool)) false) setElem!50667 true) setRest!50667))))

(declare-fun b!7120830 () Bool)

(declare-fun e!4278582 () Bool)

(assert (=> b!7120830 (= e!4278582 false)))

(declare-datatypes ((B!3169 0))(
  ( (B!3170 (val!27838 Int)) )
))
(declare-datatypes ((List!68954 0))(
  ( (Nil!68830) (Cons!68830 (h!75278 B!3169) (t!382817 List!68954)) )
))
(declare-fun lt!2561350 () List!68954)

(declare-fun lt!2561349 () (InoxSet B!3169))

(declare-fun toList!11057 ((InoxSet B!3169)) List!68954)

(assert (=> b!7120830 (= lt!2561350 (toList!11057 lt!2561349))))

(declare-fun res!2904781 () Bool)

(declare-fun e!4278581 () Bool)

(assert (=> start!693092 (=> (not res!2904781) (not e!4278581))))

(assert (=> start!693092 (= res!2904781 (= s!1400 ((as const (Array A!511 Bool)) false)))))

(assert (=> start!693092 e!4278581))

(declare-fun condSetEmpty!50667 () Bool)

(assert (=> start!693092 (= condSetEmpty!50667 (= s!1400 ((as const (Array A!511 Bool)) false)))))

(assert (=> start!693092 setRes!50667))

(assert (=> start!693092 tp!1960468))

(declare-fun setIsEmpty!50667 () Bool)

(assert (=> setIsEmpty!50667 setRes!50667))

(declare-fun b!7120829 () Bool)

(assert (=> b!7120829 (= e!4278581 e!4278582)))

(declare-fun res!2904782 () Bool)

(assert (=> b!7120829 (=> (not res!2904782) (not e!4278582))))

(assert (=> b!7120829 (= res!2904782 (not (= lt!2561349 ((as const (Array B!3169 Bool)) false))))))

(declare-fun f!473 () Int)

(declare-fun map!16329 ((InoxSet A!511) Int) (InoxSet B!3169))

(assert (=> b!7120829 (= lt!2561349 (map!16329 s!1400 f!473))))

(assert (= (and start!693092 res!2904781) b!7120829))

(assert (= (and b!7120829 res!2904782) b!7120830))

(assert (= (and start!693092 condSetEmpty!50667) setIsEmpty!50667))

(assert (= (and start!693092 (not condSetEmpty!50667)) setNonEmpty!50667))

(declare-fun m!7837644 () Bool)

(assert (=> b!7120830 m!7837644))

(declare-fun m!7837646 () Bool)

(assert (=> b!7120829 m!7837646))

(check-sat (not setNonEmpty!50667) (not b!7120830) (not b!7120829) tp_is_empty!45223 b_and!350653 (not b_next!134395))
(check-sat b_and!350653 (not b_next!134395))
