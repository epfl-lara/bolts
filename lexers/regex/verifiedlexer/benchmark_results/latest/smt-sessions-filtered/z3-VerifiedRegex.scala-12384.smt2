; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693304 () Bool)

(assert start!693304)

(declare-fun b_free!133641 () Bool)

(declare-fun b_next!134431 () Bool)

(assert (=> start!693304 (= b_free!133641 (not b_next!134431))))

(declare-fun tp!1960723 () Bool)

(declare-fun b_and!350729 () Bool)

(assert (=> start!693304 (= tp!1960723 b_and!350729)))

(declare-fun b!7121416 () Bool)

(declare-fun e!4279048 () Bool)

(assert (=> b!7121416 (= e!4279048 (not true))))

(declare-fun f!842 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!547 0))(
  ( (A!548 (val!27873 Int)) )
))
(declare-fun s!1427 () (InoxSet A!547))

(declare-datatypes ((B!3205 0))(
  ( (B!3206 (val!27874 Int)) )
))
(declare-datatypes ((List!68972 0))(
  ( (Nil!68848) (Cons!68848 (h!75296 B!3205) (t!382875 List!68972)) )
))
(declare-fun lt!2561526 () List!68972)

(declare-fun empty!2767 () A!547)

(declare-fun mapPost2!560 ((InoxSet A!547) Int B!3205) A!547)

(assert (=> b!7121416 (= (mapPost2!560 s!1427 f!842 (h!75296 lt!2561526)) empty!2767)))

(assert (=> b!7121416 true))

(declare-fun tp_is_empty!45283 () Bool)

(assert (=> b!7121416 tp_is_empty!45283))

(declare-fun b!7121415 () Bool)

(declare-fun e!4279047 () Bool)

(assert (=> b!7121415 (= e!4279047 e!4279048)))

(declare-fun res!2905217 () Bool)

(assert (=> b!7121415 (=> (not res!2905217) (not e!4279048))))

(get-info :version)

(assert (=> b!7121415 (= res!2905217 ((_ is Cons!68848) lt!2561526))))

(declare-fun toList!11075 ((InoxSet B!3205)) List!68972)

(declare-fun map!16356 ((InoxSet A!547) Int) (InoxSet B!3205))

(assert (=> b!7121415 (= lt!2561526 (toList!11075 (map!16356 s!1427 f!842)))))

(declare-fun setNonEmpty!50821 () Bool)

(declare-fun setRes!50821 () Bool)

(declare-fun tp!1960724 () Bool)

(assert (=> setNonEmpty!50821 (= setRes!50821 (and tp!1960724 tp_is_empty!45283))))

(declare-fun setElem!50821 () A!547)

(declare-fun setRest!50821 () (InoxSet A!547))

(assert (=> setNonEmpty!50821 (= s!1427 ((_ map or) (store ((as const (Array A!547 Bool)) false) setElem!50821 true) setRest!50821))))

(declare-fun res!2905218 () Bool)

(assert (=> start!693304 (=> (not res!2905218) (not e!4279047))))

(declare-fun elmt!108 () A!547)

(assert (=> start!693304 (= res!2905218 (= s!1427 (store ((as const (Array A!547 Bool)) false) elmt!108 true)))))

(assert (=> start!693304 e!4279047))

(declare-fun condSetEmpty!50821 () Bool)

(assert (=> start!693304 (= condSetEmpty!50821 (= s!1427 ((as const (Array A!547 Bool)) false)))))

(assert (=> start!693304 setRes!50821))

(assert (=> start!693304 tp_is_empty!45283))

(assert (=> start!693304 tp!1960723))

(declare-fun setIsEmpty!50821 () Bool)

(assert (=> setIsEmpty!50821 setRes!50821))

(assert (= (and start!693304 res!2905218) b!7121415))

(assert (= (and b!7121415 res!2905217) b!7121416))

(assert (= (and start!693304 condSetEmpty!50821) setIsEmpty!50821))

(assert (= (and start!693304 (not condSetEmpty!50821)) setNonEmpty!50821))

(declare-fun m!7838260 () Bool)

(assert (=> b!7121416 m!7838260))

(declare-fun m!7838262 () Bool)

(assert (=> b!7121415 m!7838262))

(assert (=> b!7121415 m!7838262))

(declare-fun m!7838264 () Bool)

(assert (=> b!7121415 m!7838264))

(declare-fun m!7838266 () Bool)

(assert (=> start!693304 m!7838266))

(check-sat (not b_next!134431) b_and!350729 (not setNonEmpty!50821) (not b!7121416) tp_is_empty!45283 (not b!7121415))
(check-sat b_and!350729 (not b_next!134431))
