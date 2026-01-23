; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545882 () Bool)

(assert start!545882)

(declare-fun b_free!133525 () Bool)

(declare-fun b_next!134315 () Bool)

(assert (=> start!545882 (= b_free!133525 (not b_next!134315))))

(declare-fun tp!1447791 () Bool)

(declare-fun b_and!350493 () Bool)

(assert (=> start!545882 (= tp!1447791 b_and!350493)))

(declare-fun setNonEmpty!31299 () Bool)

(declare-fun setRes!31300 () Bool)

(declare-fun tp!1447790 () Bool)

(declare-fun tp_is_empty!38227 () Bool)

(assert (=> setNonEmpty!31299 (= setRes!31300 (and tp!1447790 tp_is_empty!38227))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!475 0))(
  ( (A!476 (val!24324 Int)) )
))
(declare-fun s1!479 () (InoxSet A!475))

(declare-fun setElem!31299 () A!475)

(declare-fun setRest!31299 () (InoxSet A!475))

(assert (=> setNonEmpty!31299 (= s1!479 ((_ map or) (store ((as const (Array A!475 Bool)) false) setElem!31299 true) setRest!31299))))

(declare-fun setIsEmpty!31299 () Bool)

(assert (=> setIsEmpty!31299 setRes!31300))

(declare-fun b!5162226 () Bool)

(declare-fun e!3216396 () Bool)

(assert (=> b!5162226 (= e!3216396 false)))

(declare-fun lt!2122396 () Bool)

(declare-datatypes ((List!59990 0))(
  ( (Nil!59866) (Cons!59866 (h!66314 A!475) (t!373075 List!59990)) )
))
(declare-fun lt!2122397 () List!59990)

(declare-fun p!1744 () Int)

(declare-fun lt!2122398 () List!59990)

(declare-fun forall!14042 (List!59990 Int) Bool)

(declare-fun ++!13078 (List!59990 List!59990) List!59990)

(assert (=> b!5162226 (= lt!2122396 (forall!14042 (++!13078 lt!2122397 lt!2122398) p!1744))))

(declare-datatypes ((Unit!151291 0))(
  ( (Unit!151292) )
))
(declare-fun lt!2122399 () Unit!151291)

(declare-fun lemmaConcatPreservesForall!142 (List!59990 List!59990 Int) Unit!151291)

(assert (=> b!5162226 (= lt!2122399 (lemmaConcatPreservesForall!142 lt!2122397 lt!2122398 p!1744))))

(declare-fun s2!450 () (InoxSet A!475))

(declare-fun toList!8419 ((InoxSet A!475)) List!59990)

(assert (=> b!5162226 (= lt!2122398 (toList!8419 s2!450))))

(assert (=> b!5162226 (= lt!2122397 (toList!8419 s1!479))))

(declare-fun setNonEmpty!31300 () Bool)

(declare-fun setRes!31299 () Bool)

(declare-fun tp!1447789 () Bool)

(assert (=> setNonEmpty!31300 (= setRes!31299 (and tp!1447789 tp_is_empty!38227))))

(declare-fun setElem!31300 () A!475)

(declare-fun setRest!31300 () (InoxSet A!475))

(assert (=> setNonEmpty!31300 (= s2!450 ((_ map or) (store ((as const (Array A!475 Bool)) false) setElem!31300 true) setRest!31300))))

(declare-fun res!2194611 () Bool)

(assert (=> start!545882 (=> (not res!2194611) (not e!3216396))))

(declare-fun forall!14043 ((InoxSet A!475) Int) Bool)

(assert (=> start!545882 (= res!2194611 (forall!14043 s1!479 p!1744))))

(assert (=> start!545882 e!3216396))

(declare-fun condSetEmpty!31299 () Bool)

(assert (=> start!545882 (= condSetEmpty!31299 (= s1!479 ((as const (Array A!475 Bool)) false)))))

(assert (=> start!545882 setRes!31300))

(assert (=> start!545882 tp!1447791))

(declare-fun condSetEmpty!31300 () Bool)

(assert (=> start!545882 (= condSetEmpty!31300 (= s2!450 ((as const (Array A!475 Bool)) false)))))

(assert (=> start!545882 setRes!31299))

(declare-fun b!5162227 () Bool)

(declare-fun res!2194612 () Bool)

(assert (=> b!5162227 (=> (not res!2194612) (not e!3216396))))

(assert (=> b!5162227 (= res!2194612 (forall!14043 s2!450 p!1744))))

(declare-fun setIsEmpty!31300 () Bool)

(assert (=> setIsEmpty!31300 setRes!31299))

(assert (= (and start!545882 res!2194611) b!5162227))

(assert (= (and b!5162227 res!2194612) b!5162226))

(assert (= (and start!545882 condSetEmpty!31299) setIsEmpty!31299))

(assert (= (and start!545882 (not condSetEmpty!31299)) setNonEmpty!31299))

(assert (= (and start!545882 condSetEmpty!31300) setIsEmpty!31300))

(assert (= (and start!545882 (not condSetEmpty!31300)) setNonEmpty!31300))

(declare-fun m!6212718 () Bool)

(assert (=> b!5162226 m!6212718))

(declare-fun m!6212720 () Bool)

(assert (=> b!5162226 m!6212720))

(assert (=> b!5162226 m!6212720))

(declare-fun m!6212722 () Bool)

(assert (=> b!5162226 m!6212722))

(declare-fun m!6212724 () Bool)

(assert (=> b!5162226 m!6212724))

(declare-fun m!6212726 () Bool)

(assert (=> b!5162226 m!6212726))

(declare-fun m!6212728 () Bool)

(assert (=> start!545882 m!6212728))

(declare-fun m!6212730 () Bool)

(assert (=> b!5162227 m!6212730))

(check-sat (not b!5162226) (not setNonEmpty!31300) (not b!5162227) (not start!545882) (not setNonEmpty!31299) (not b_next!134315) tp_is_empty!38227 b_and!350493)
(check-sat b_and!350493 (not b_next!134315))
