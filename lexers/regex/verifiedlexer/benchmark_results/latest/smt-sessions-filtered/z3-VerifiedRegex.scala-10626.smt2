; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545910 () Bool)

(assert start!545910)

(declare-fun b_free!133533 () Bool)

(declare-fun b_next!134323 () Bool)

(assert (=> start!545910 (= b_free!133533 (not b_next!134323))))

(declare-fun tp!1447835 () Bool)

(declare-fun b_and!350505 () Bool)

(assert (=> start!545910 (= tp!1447835 b_and!350505)))

(declare-fun res!2194672 () Bool)

(declare-fun e!3216445 () Bool)

(assert (=> start!545910 (=> (not res!2194672) (not e!3216445))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!483 0))(
  ( (A!484 (val!24328 Int)) )
))
(declare-fun s1!479 () (InoxSet A!483))

(declare-fun p!1744 () Int)

(declare-fun forall!14050 ((InoxSet A!483) Int) Bool)

(assert (=> start!545910 (= res!2194672 (forall!14050 s1!479 p!1744))))

(assert (=> start!545910 e!3216445))

(declare-fun condSetEmpty!31332 () Bool)

(assert (=> start!545910 (= condSetEmpty!31332 (= s1!479 ((as const (Array A!483 Bool)) false)))))

(declare-fun setRes!31332 () Bool)

(assert (=> start!545910 setRes!31332))

(assert (=> start!545910 tp!1447835))

(declare-fun condSetEmpty!31331 () Bool)

(declare-fun s2!450 () (InoxSet A!483))

(assert (=> start!545910 (= condSetEmpty!31331 (= s2!450 ((as const (Array A!483 Bool)) false)))))

(declare-fun setRes!31331 () Bool)

(assert (=> start!545910 setRes!31331))

(declare-fun b!5162303 () Bool)

(declare-fun e!3216446 () Bool)

(assert (=> b!5162303 (= e!3216445 e!3216446)))

(declare-fun res!2194673 () Bool)

(assert (=> b!5162303 (=> (not res!2194673) (not e!3216446))))

(declare-datatypes ((List!59994 0))(
  ( (Nil!59870) (Cons!59870 (h!66318 A!483) (t!373083 List!59994)) )
))
(declare-fun lt!2122471 () List!59994)

(declare-fun forall!14051 (List!59994 Int) Bool)

(assert (=> b!5162303 (= res!2194673 (forall!14051 lt!2122471 p!1744))))

(declare-fun lt!2122475 () List!59994)

(declare-fun lt!2122474 () List!59994)

(declare-fun ++!13082 (List!59994 List!59994) List!59994)

(assert (=> b!5162303 (= lt!2122471 (++!13082 lt!2122475 lt!2122474))))

(declare-datatypes ((Unit!151299 0))(
  ( (Unit!151300) )
))
(declare-fun lt!2122472 () Unit!151299)

(declare-fun lemmaConcatPreservesForall!146 (List!59994 List!59994 Int) Unit!151299)

(assert (=> b!5162303 (= lt!2122472 (lemmaConcatPreservesForall!146 lt!2122475 lt!2122474 p!1744))))

(declare-fun toList!8423 ((InoxSet A!483)) List!59994)

(assert (=> b!5162303 (= lt!2122474 (toList!8423 s2!450))))

(assert (=> b!5162303 (= lt!2122475 (toList!8423 s1!479))))

(declare-fun setNonEmpty!31331 () Bool)

(declare-fun tp!1447834 () Bool)

(declare-fun tp_is_empty!38235 () Bool)

(assert (=> setNonEmpty!31331 (= setRes!31332 (and tp!1447834 tp_is_empty!38235))))

(declare-fun setElem!31332 () A!483)

(declare-fun setRest!31331 () (InoxSet A!483))

(assert (=> setNonEmpty!31331 (= s1!479 ((_ map or) (store ((as const (Array A!483 Bool)) false) setElem!31332 true) setRest!31331))))

(declare-fun b!5162304 () Bool)

(declare-fun res!2194674 () Bool)

(assert (=> b!5162304 (=> (not res!2194674) (not e!3216445))))

(assert (=> b!5162304 (= res!2194674 (forall!14050 s2!450 p!1744))))

(declare-fun setNonEmpty!31332 () Bool)

(declare-fun tp!1447833 () Bool)

(assert (=> setNonEmpty!31332 (= setRes!31331 (and tp!1447833 tp_is_empty!38235))))

(declare-fun setElem!31331 () A!483)

(declare-fun setRest!31332 () (InoxSet A!483))

(assert (=> setNonEmpty!31332 (= s2!450 ((_ map or) (store ((as const (Array A!483 Bool)) false) setElem!31331 true) setRest!31332))))

(declare-fun b!5162305 () Bool)

(assert (=> b!5162305 (= e!3216446 (not true))))

(declare-fun content!10603 (List!59994) (InoxSet A!483))

(assert (=> b!5162305 (forall!14050 (content!10603 lt!2122471) p!1744)))

(declare-fun lt!2122473 () Unit!151299)

(declare-fun lemmaForallThenOnContent!40 (List!59994 Int) Unit!151299)

(assert (=> b!5162305 (= lt!2122473 (lemmaForallThenOnContent!40 lt!2122471 p!1744))))

(declare-fun setIsEmpty!31331 () Bool)

(assert (=> setIsEmpty!31331 setRes!31332))

(declare-fun setIsEmpty!31332 () Bool)

(assert (=> setIsEmpty!31332 setRes!31331))

(assert (= (and start!545910 res!2194672) b!5162304))

(assert (= (and b!5162304 res!2194674) b!5162303))

(assert (= (and b!5162303 res!2194673) b!5162305))

(assert (= (and start!545910 condSetEmpty!31332) setIsEmpty!31331))

(assert (= (and start!545910 (not condSetEmpty!31332)) setNonEmpty!31331))

(assert (= (and start!545910 condSetEmpty!31331) setIsEmpty!31332))

(assert (= (and start!545910 (not condSetEmpty!31331)) setNonEmpty!31332))

(declare-fun m!6212864 () Bool)

(assert (=> start!545910 m!6212864))

(declare-fun m!6212866 () Bool)

(assert (=> b!5162303 m!6212866))

(declare-fun m!6212868 () Bool)

(assert (=> b!5162303 m!6212868))

(declare-fun m!6212870 () Bool)

(assert (=> b!5162303 m!6212870))

(declare-fun m!6212872 () Bool)

(assert (=> b!5162303 m!6212872))

(declare-fun m!6212874 () Bool)

(assert (=> b!5162303 m!6212874))

(declare-fun m!6212876 () Bool)

(assert (=> b!5162304 m!6212876))

(declare-fun m!6212878 () Bool)

(assert (=> b!5162305 m!6212878))

(assert (=> b!5162305 m!6212878))

(declare-fun m!6212880 () Bool)

(assert (=> b!5162305 m!6212880))

(declare-fun m!6212882 () Bool)

(assert (=> b!5162305 m!6212882))

(check-sat (not setNonEmpty!31332) (not b_next!134323) (not start!545910) (not b!5162304) tp_is_empty!38235 b_and!350505 (not b!5162305) (not setNonEmpty!31331) (not b!5162303))
(check-sat b_and!350505 (not b_next!134323))
