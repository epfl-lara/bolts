; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693148 () Bool)

(assert start!693148)

(declare-fun b_free!133617 () Bool)

(declare-fun b_next!134407 () Bool)

(assert (=> start!693148 (= b_free!133617 (not b_next!134407))))

(declare-fun tp!1960529 () Bool)

(declare-fun b_and!350669 () Bool)

(assert (=> start!693148 (= tp!1960529 b_and!350669)))

(declare-fun res!2904878 () Bool)

(declare-fun e!4278678 () Bool)

(assert (=> start!693148 (=> (not res!2904878) (not e!4278678))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!523 0))(
  ( (A!524 (val!27849 Int)) )
))
(declare-fun s!1400 () (InoxSet A!523))

(assert (=> start!693148 (= res!2904878 (= s!1400 ((as const (Array A!523 Bool)) false)))))

(assert (=> start!693148 e!4278678))

(declare-fun condSetEmpty!50705 () Bool)

(assert (=> start!693148 (= condSetEmpty!50705 (= s!1400 ((as const (Array A!523 Bool)) false)))))

(declare-fun setRes!50705 () Bool)

(assert (=> start!693148 setRes!50705))

(assert (=> start!693148 tp!1960529))

(declare-fun b!7120944 () Bool)

(declare-fun e!4278677 () Bool)

(assert (=> b!7120944 (= e!4278677 (not true))))

(declare-fun empty!2727 () A!523)

(declare-fun f!473 () Int)

(declare-datatypes ((B!3181 0))(
  ( (B!3182 (val!27850 Int)) )
))
(declare-fun lt!2561397 () B!3181)

(declare-fun mapPost2!550 ((InoxSet A!523) Int B!3181) A!523)

(assert (=> b!7120944 (= (mapPost2!550 s!1400 f!473 lt!2561397) empty!2727)))

(assert (=> b!7120944 true))

(declare-fun tp_is_empty!45243 () Bool)

(assert (=> b!7120944 tp_is_empty!45243))

(declare-fun b!7120945 () Bool)

(declare-fun e!4278676 () Bool)

(assert (=> b!7120945 (= e!4278676 e!4278677)))

(declare-fun res!2904877 () Bool)

(assert (=> b!7120945 (=> (not res!2904877) (not e!4278677))))

(declare-fun lt!2561398 () (InoxSet B!3181))

(assert (=> b!7120945 (= res!2904877 (select lt!2561398 lt!2561397))))

(declare-datatypes ((List!68960 0))(
  ( (Nil!68836) (Cons!68836 (h!75284 B!3181) (t!382827 List!68960)) )
))
(declare-fun head!14458 (List!68960) B!3181)

(declare-fun toList!11063 ((InoxSet B!3181)) List!68960)

(assert (=> b!7120945 (= lt!2561397 (head!14458 (toList!11063 lt!2561398)))))

(declare-fun setNonEmpty!50705 () Bool)

(declare-fun tp!1960530 () Bool)

(assert (=> setNonEmpty!50705 (= setRes!50705 (and tp!1960530 tp_is_empty!45243))))

(declare-fun setElem!50705 () A!523)

(declare-fun setRest!50705 () (InoxSet A!523))

(assert (=> setNonEmpty!50705 (= s!1400 ((_ map or) (store ((as const (Array A!523 Bool)) false) setElem!50705 true) setRest!50705))))

(declare-fun b!7120946 () Bool)

(assert (=> b!7120946 (= e!4278678 e!4278676)))

(declare-fun res!2904876 () Bool)

(assert (=> b!7120946 (=> (not res!2904876) (not e!4278676))))

(assert (=> b!7120946 (= res!2904876 (not (= lt!2561398 ((as const (Array B!3181 Bool)) false))))))

(declare-fun map!16338 ((InoxSet A!523) Int) (InoxSet B!3181))

(assert (=> b!7120946 (= lt!2561398 (map!16338 s!1400 f!473))))

(declare-fun setIsEmpty!50705 () Bool)

(assert (=> setIsEmpty!50705 setRes!50705))

(assert (= (and start!693148 res!2904878) b!7120946))

(assert (= (and b!7120946 res!2904876) b!7120945))

(assert (= (and b!7120945 res!2904877) b!7120944))

(assert (= (and start!693148 condSetEmpty!50705) setIsEmpty!50705))

(assert (= (and start!693148 (not condSetEmpty!50705)) setNonEmpty!50705))

(declare-fun m!7837766 () Bool)

(assert (=> b!7120944 m!7837766))

(declare-fun m!7837768 () Bool)

(assert (=> b!7120945 m!7837768))

(declare-fun m!7837770 () Bool)

(assert (=> b!7120945 m!7837770))

(assert (=> b!7120945 m!7837770))

(declare-fun m!7837772 () Bool)

(assert (=> b!7120945 m!7837772))

(declare-fun m!7837774 () Bool)

(assert (=> b!7120946 m!7837774))

(check-sat b_and!350669 (not setNonEmpty!50705) (not b_next!134407) (not b!7120944) tp_is_empty!45243 (not b!7120946) (not b!7120945))
(check-sat b_and!350669 (not b_next!134407))
