; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!693754 () Bool)

(assert start!693754)

(declare-fun b_free!133737 () Bool)

(declare-fun b_next!134527 () Bool)

(assert (=> start!693754 (= b_free!133737 (not b_next!134527))))

(declare-fun tp!1961536 () Bool)

(declare-fun b_and!350833 () Bool)

(assert (=> start!693754 (= tp!1961536 b_and!350833)))

(declare-fun b!7123083 () Bool)

(declare-fun res!2906240 () Bool)

(declare-fun e!4280319 () Bool)

(assert (=> b!7123083 (=> (not res!2906240) (not e!4280319))))

(declare-datatypes ((B!3301 0))(
  ( (B!3302 (val!27969 Int)) )
))
(declare-datatypes ((List!69020 0))(
  ( (Nil!68896) (Cons!68896 (h!75344 B!3301) (t!382931 List!69020)) )
))
(declare-fun l2!759 () List!69020)

(get-info :version)

(assert (=> b!7123083 (= res!2906240 ((_ is Cons!68896) l2!759))))

(declare-fun setNonEmpty!51218 () Bool)

(declare-fun setRes!51219 () Bool)

(declare-fun tp!1961537 () Bool)

(declare-fun tp_is_empty!45437 () Bool)

(assert (=> setNonEmpty!51218 (= setRes!51219 (and tp!1961537 tp_is_empty!45437))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!643 0))(
  ( (A!644 (val!27970 Int)) )
))
(declare-fun s2!395 () (InoxSet A!643))

(declare-fun setElem!51218 () A!643)

(declare-fun setRest!51218 () (InoxSet A!643))

(assert (=> setNonEmpty!51218 (= s2!395 ((_ map or) (store ((as const (Array A!643 Bool)) false) setElem!51218 true) setRest!51218))))

(declare-fun res!2906238 () Bool)

(declare-fun e!4280316 () Bool)

(assert (=> start!693754 (=> (not res!2906238) (not e!4280316))))

(declare-fun l1!770 () List!69020)

(declare-fun lt!2562369 () (InoxSet B!3301))

(declare-fun toList!11123 ((InoxSet B!3301)) List!69020)

(assert (=> start!693754 (= res!2906238 (= l1!770 (toList!11123 lt!2562369)))))

(declare-fun s1!424 () (InoxSet A!643))

(declare-fun f!607 () Int)

(declare-fun map!16428 ((InoxSet A!643) Int) (InoxSet B!3301))

(assert (=> start!693754 (= lt!2562369 ((_ map or) (map!16428 s1!424 f!607) (map!16428 s2!395 f!607)))))

(assert (=> start!693754 e!4280316))

(declare-fun condSetEmpty!51219 () Bool)

(assert (=> start!693754 (= condSetEmpty!51219 (= s1!424 ((as const (Array A!643 Bool)) false)))))

(declare-fun setRes!51218 () Bool)

(assert (=> start!693754 setRes!51218))

(declare-fun e!4280317 () Bool)

(assert (=> start!693754 e!4280317))

(declare-fun e!4280318 () Bool)

(assert (=> start!693754 e!4280318))

(declare-fun condSetEmpty!51218 () Bool)

(assert (=> start!693754 (= condSetEmpty!51218 (= s2!395 ((as const (Array A!643 Bool)) false)))))

(assert (=> start!693754 setRes!51219))

(assert (=> start!693754 tp!1961536))

(declare-fun b!7123084 () Bool)

(assert (=> b!7123084 (= e!4280316 e!4280319)))

(declare-fun res!2906239 () Bool)

(assert (=> b!7123084 (=> (not res!2906239) (not e!4280319))))

(declare-fun lt!2562367 () List!69020)

(declare-fun subseq!759 (List!69020 List!69020) Bool)

(assert (=> b!7123084 (= res!2906239 (subseq!759 l2!759 lt!2562367))))

(declare-fun lt!2562370 () (InoxSet B!3301))

(assert (=> b!7123084 (= lt!2562367 (toList!11123 lt!2562370))))

(assert (=> b!7123084 (= lt!2562370 (map!16428 ((_ map or) s1!424 s2!395) f!607))))

(declare-fun b!7123085 () Bool)

(assert (=> b!7123085 (= e!4280319 (not true))))

(declare-datatypes ((Unit!162747 0))(
  ( (Unit!162748) )
))
(declare-fun lt!2562371 () Unit!162747)

(declare-fun subseqTail!32 (List!69020 List!69020) Unit!162747)

(assert (=> b!7123085 (= lt!2562371 (subseqTail!32 l2!759 lt!2562367))))

(assert (=> b!7123085 (= (select lt!2562369 (h!75344 l2!759)) (select lt!2562370 (h!75344 l2!759)))))

(declare-fun lt!2562368 () Unit!162747)

(declare-fun lemmaMapAssociativeElem!20 ((InoxSet A!643) (InoxSet A!643) Int B!3301) Unit!162747)

(assert (=> b!7123085 (= lt!2562368 (lemmaMapAssociativeElem!20 s1!424 s2!395 f!607 (h!75344 l2!759)))))

(declare-fun b!7123086 () Bool)

(declare-fun tp_is_empty!45439 () Bool)

(declare-fun tp!1961535 () Bool)

(assert (=> b!7123086 (= e!4280318 (and tp_is_empty!45439 tp!1961535))))

(declare-fun setNonEmpty!51219 () Bool)

(declare-fun tp!1961533 () Bool)

(assert (=> setNonEmpty!51219 (= setRes!51218 (and tp!1961533 tp_is_empty!45437))))

(declare-fun setElem!51219 () A!643)

(declare-fun setRest!51219 () (InoxSet A!643))

(assert (=> setNonEmpty!51219 (= s1!424 ((_ map or) (store ((as const (Array A!643 Bool)) false) setElem!51219 true) setRest!51219))))

(declare-fun setIsEmpty!51218 () Bool)

(assert (=> setIsEmpty!51218 setRes!51219))

(declare-fun setIsEmpty!51219 () Bool)

(assert (=> setIsEmpty!51219 setRes!51218))

(declare-fun b!7123087 () Bool)

(declare-fun tp!1961534 () Bool)

(assert (=> b!7123087 (= e!4280317 (and tp_is_empty!45439 tp!1961534))))

(assert (= (and start!693754 res!2906238) b!7123084))

(assert (= (and b!7123084 res!2906239) b!7123083))

(assert (= (and b!7123083 res!2906240) b!7123085))

(assert (= (and start!693754 condSetEmpty!51219) setIsEmpty!51219))

(assert (= (and start!693754 (not condSetEmpty!51219)) setNonEmpty!51219))

(assert (= (and start!693754 ((_ is Cons!68896) l2!759)) b!7123087))

(assert (= (and start!693754 ((_ is Cons!68896) l1!770)) b!7123086))

(assert (= (and start!693754 condSetEmpty!51218) setIsEmpty!51218))

(assert (= (and start!693754 (not condSetEmpty!51218)) setNonEmpty!51218))

(declare-fun m!7840386 () Bool)

(assert (=> start!693754 m!7840386))

(declare-fun m!7840388 () Bool)

(assert (=> start!693754 m!7840388))

(declare-fun m!7840390 () Bool)

(assert (=> start!693754 m!7840390))

(declare-fun m!7840392 () Bool)

(assert (=> b!7123084 m!7840392))

(declare-fun m!7840394 () Bool)

(assert (=> b!7123084 m!7840394))

(declare-fun m!7840396 () Bool)

(assert (=> b!7123084 m!7840396))

(declare-fun m!7840398 () Bool)

(assert (=> b!7123085 m!7840398))

(declare-fun m!7840400 () Bool)

(assert (=> b!7123085 m!7840400))

(declare-fun m!7840402 () Bool)

(assert (=> b!7123085 m!7840402))

(declare-fun m!7840404 () Bool)

(assert (=> b!7123085 m!7840404))

(check-sat tp_is_empty!45437 tp_is_empty!45439 (not setNonEmpty!51219) (not b_next!134527) (not b!7123086) (not setNonEmpty!51218) (not b!7123084) (not b!7123087) b_and!350833 (not start!693754) (not b!7123085))
(check-sat b_and!350833 (not b_next!134527))
