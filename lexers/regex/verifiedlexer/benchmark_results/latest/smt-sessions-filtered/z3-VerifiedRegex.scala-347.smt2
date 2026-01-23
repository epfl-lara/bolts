; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11150 () Bool)

(assert start!11150)

(declare-fun b_free!3369 () Bool)

(declare-fun b_next!3369 () Bool)

(assert (=> start!11150 (= b_free!3369 (not b_next!3369))))

(declare-fun tp!59525 () Bool)

(declare-fun b_and!5331 () Bool)

(assert (=> start!11150 (= tp!59525 b_and!5331)))

(declare-fun b_free!3371 () Bool)

(declare-fun b_next!3371 () Bool)

(assert (=> start!11150 (= b_free!3371 (not b_next!3371))))

(declare-fun tp!59527 () Bool)

(declare-fun b_and!5333 () Bool)

(assert (=> start!11150 (= tp!59527 b_and!5333)))

(assert (=> start!11150 true))

(declare-fun order!1033 () Int)

(declare-fun order!1035 () Int)

(declare-fun lambda!2570 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!680 (Int Int) Int)

(declare-fun dynLambda!681 (Int Int) Int)

(assert (=> start!11150 (< (dynLambda!680 order!1033 f!927) (dynLambda!681 order!1035 lambda!2570))))

(assert (=> start!11150 true))

(declare-fun g!9 () Int)

(assert (=> start!11150 (< (dynLambda!680 order!1033 g!9) (dynLambda!681 order!1035 lambda!2570))))

(declare-fun setIsEmpty!1556 () Bool)

(declare-fun setRes!1556 () Bool)

(assert (=> setIsEmpty!1556 setRes!1556))

(declare-fun b!109804 () Bool)

(declare-fun res!52905 () Bool)

(declare-fun e!61193 () Bool)

(assert (=> b!109804 (=> (not res!52905) (not e!61193))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((A!287 0))(
  ( (A!288 (val!590 Int)) )
))
(declare-fun s!1451 () (InoxSet A!287))

(get-info :version)

(declare-datatypes ((List!1767 0))(
  ( (Nil!1761) (Cons!1761 (h!7158 A!287) (t!22002 List!1767)) )
))
(declare-fun toList!246 ((InoxSet A!287)) List!1767)

(assert (=> b!109804 (= res!52905 (not ((_ is Cons!1761) (toList!246 s!1451))))))

(declare-fun setNonEmpty!1556 () Bool)

(declare-fun tp!59526 () Bool)

(declare-fun tp_is_empty!889 () Bool)

(assert (=> setNonEmpty!1556 (= setRes!1556 (and tp!59526 tp_is_empty!889))))

(declare-fun setElem!1556 () A!287)

(declare-fun setRest!1556 () (InoxSet A!287))

(assert (=> setNonEmpty!1556 (= s!1451 ((_ map or) (store ((as const (Array A!287 Bool)) false) setElem!1556 true) setRest!1556))))

(declare-fun b!109805 () Bool)

(declare-datatypes ((B!579 0))(
  ( (B!580 (val!591 Int)) )
))
(declare-fun lt!31809 () (InoxSet B!579))

(declare-fun lt!31810 () (InoxSet B!579))

(assert (=> b!109805 (= e!61193 (not (= lt!31809 lt!31810)))))

(assert (=> b!109805 (= lt!31810 ((as const (Array B!579 Bool)) false))))

(declare-fun flatMap!49 ((InoxSet A!287) Int) (InoxSet B!579))

(assert (=> b!109805 (= lt!31810 (flatMap!49 s!1451 g!9))))

(declare-datatypes ((Unit!1228 0))(
  ( (Unit!1229) )
))
(declare-fun lt!31812 () Unit!1228)

(declare-fun lemmaFlatMapOnEmptySetIsEmpty!6 ((InoxSet A!287) Int) Unit!1228)

(assert (=> b!109805 (= lt!31812 (lemmaFlatMapOnEmptySetIsEmpty!6 s!1451 g!9))))

(assert (=> b!109805 (= lt!31809 ((as const (Array B!579 Bool)) false))))

(assert (=> b!109805 (= lt!31809 (flatMap!49 s!1451 f!927))))

(declare-fun lt!31811 () Unit!1228)

(assert (=> b!109805 (= lt!31811 (lemmaFlatMapOnEmptySetIsEmpty!6 s!1451 f!927))))

(declare-fun res!52906 () Bool)

(assert (=> start!11150 (=> (not res!52906) (not e!61193))))

(declare-fun forall!302 ((InoxSet A!287) Int) Bool)

(assert (=> start!11150 (= res!52906 (forall!302 s!1451 lambda!2570))))

(assert (=> start!11150 e!61193))

(declare-fun condSetEmpty!1556 () Bool)

(assert (=> start!11150 (= condSetEmpty!1556 (= s!1451 ((as const (Array A!287 Bool)) false)))))

(assert (=> start!11150 setRes!1556))

(assert (=> start!11150 tp!59525))

(assert (=> start!11150 tp!59527))

(assert (= (and start!11150 res!52906) b!109804))

(assert (= (and b!109804 res!52905) b!109805))

(assert (= (and start!11150 condSetEmpty!1556) setIsEmpty!1556))

(assert (= (and start!11150 (not condSetEmpty!1556)) setNonEmpty!1556))

(declare-fun m!99610 () Bool)

(assert (=> b!109804 m!99610))

(declare-fun m!99612 () Bool)

(assert (=> b!109805 m!99612))

(declare-fun m!99614 () Bool)

(assert (=> b!109805 m!99614))

(declare-fun m!99616 () Bool)

(assert (=> b!109805 m!99616))

(declare-fun m!99618 () Bool)

(assert (=> b!109805 m!99618))

(declare-fun m!99620 () Bool)

(assert (=> start!11150 m!99620))

(check-sat (not setNonEmpty!1556) (not start!11150) b_and!5333 (not b_next!3371) (not b!109805) (not b_next!3369) tp_is_empty!889 (not b!109804) b_and!5331)
(check-sat b_and!5331 b_and!5333 (not b_next!3371) (not b_next!3369))
