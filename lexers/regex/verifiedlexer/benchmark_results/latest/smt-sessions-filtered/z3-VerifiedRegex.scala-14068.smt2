; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741958 () Bool)

(assert start!741958)

(declare-fun b!7819622 () Bool)

(declare-fun res!3112477 () Bool)

(declare-fun e!4626676 () Bool)

(assert (=> b!7819622 (=> (not res!3112477) (not e!4626676))))

(declare-datatypes ((C!42188 0))(
  ( (C!42189 (val!31534 Int)) )
))
(declare-datatypes ((List!73768 0))(
  ( (Nil!73644) (Cons!73644 (h!80092 C!42188) (t!388503 List!73768)) )
))
(declare-fun s1Rec!453 () List!73768)

(declare-fun s2Rec!453 () List!73768)

(declare-fun s!14274 () List!73768)

(declare-fun ++!17965 (List!73768 List!73768) List!73768)

(assert (=> b!7819622 (= res!3112477 (= (++!17965 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7819623 () Bool)

(declare-fun res!3112471 () Bool)

(assert (=> b!7819623 (=> (not res!3112471) (not e!4626676))))

(declare-datatypes ((Regex!20931 0))(
  ( (ElementMatch!20931 (c!1439280 C!42188)) (Concat!29776 (regOne!42374 Regex!20931) (regTwo!42374 Regex!20931)) (EmptyExpr!20931) (Star!20931 (reg!21260 Regex!20931)) (EmptyLang!20931) (Union!20931 (regOne!42375 Regex!20931) (regTwo!42375 Regex!20931)) )
))
(declare-fun r2!6199 () Regex!20931)

(declare-fun s2!3721 () List!73768)

(declare-fun matchR!10387 (Regex!20931 List!73768) Bool)

(assert (=> b!7819623 (= res!3112471 (matchR!10387 r2!6199 s2!3721))))

(declare-fun b!7819624 () Bool)

(declare-fun e!4626673 () Bool)

(declare-fun tp!2307530 () Bool)

(assert (=> b!7819624 (= e!4626673 tp!2307530)))

(declare-fun b!7819625 () Bool)

(declare-fun res!3112468 () Bool)

(assert (=> b!7819625 (=> (not res!3112468) (not e!4626676))))

(get-info :version)

(assert (=> b!7819625 (= res!3112468 ((_ is Nil!73644) s2Rec!453))))

(declare-fun b!7819627 () Bool)

(declare-fun res!3112472 () Bool)

(assert (=> b!7819627 (=> (not res!3112472) (not e!4626676))))

(declare-fun validRegex!11345 (Regex!20931) Bool)

(assert (=> b!7819627 (= res!3112472 (validRegex!11345 r2!6199))))

(declare-fun b!7819628 () Bool)

(declare-fun e!4626671 () Bool)

(declare-fun tp_is_empty!52217 () Bool)

(declare-fun tp!2307535 () Bool)

(assert (=> b!7819628 (= e!4626671 (and tp_is_empty!52217 tp!2307535))))

(declare-fun b!7819629 () Bool)

(declare-fun res!3112475 () Bool)

(assert (=> b!7819629 (=> (not res!3112475) (not e!4626676))))

(declare-fun e!4626672 () Bool)

(assert (=> b!7819629 (= res!3112475 e!4626672)))

(declare-fun res!3112473 () Bool)

(assert (=> b!7819629 (=> res!3112473 e!4626672)))

(declare-fun r1!6261 () Regex!20931)

(assert (=> b!7819629 (= res!3112473 (not (matchR!10387 r1!6261 s1Rec!453)))))

(declare-fun b!7819630 () Bool)

(declare-fun e!4626677 () Bool)

(assert (=> b!7819630 (= e!4626677 tp_is_empty!52217)))

(declare-fun b!7819631 () Bool)

(declare-fun tp!2307527 () Bool)

(declare-fun tp!2307533 () Bool)

(assert (=> b!7819631 (= e!4626673 (and tp!2307527 tp!2307533))))

(declare-fun b!7819632 () Bool)

(declare-fun e!4626678 () Bool)

(declare-fun tp!2307529 () Bool)

(assert (=> b!7819632 (= e!4626678 (and tp_is_empty!52217 tp!2307529))))

(declare-fun b!7819633 () Bool)

(declare-fun e!4626679 () Bool)

(declare-fun tp!2307526 () Bool)

(assert (=> b!7819633 (= e!4626679 (and tp_is_empty!52217 tp!2307526))))

(declare-fun b!7819634 () Bool)

(declare-fun e!4626674 () Bool)

(declare-fun tp!2307524 () Bool)

(assert (=> b!7819634 (= e!4626674 (and tp_is_empty!52217 tp!2307524))))

(declare-fun b!7819635 () Bool)

(declare-fun tp!2307536 () Bool)

(declare-fun tp!2307525 () Bool)

(assert (=> b!7819635 (= e!4626677 (and tp!2307536 tp!2307525))))

(declare-fun b!7819636 () Bool)

(assert (=> b!7819636 (= e!4626676 false)))

(declare-fun lt!2676132 () Int)

(declare-fun s1!4101 () List!73768)

(declare-fun size!42737 (List!73768) Int)

(assert (=> b!7819636 (= lt!2676132 (size!42737 s1!4101))))

(declare-fun b!7819637 () Bool)

(declare-fun tp!2307531 () Bool)

(declare-fun tp!2307523 () Bool)

(assert (=> b!7819637 (= e!4626677 (and tp!2307531 tp!2307523))))

(declare-fun res!3112469 () Bool)

(assert (=> start!741958 (=> (not res!3112469) (not e!4626676))))

(assert (=> start!741958 (= res!3112469 (validRegex!11345 r1!6261))))

(assert (=> start!741958 e!4626676))

(assert (=> start!741958 e!4626673))

(assert (=> start!741958 e!4626671))

(assert (=> start!741958 e!4626679))

(assert (=> start!741958 e!4626674))

(declare-fun e!4626675 () Bool)

(assert (=> start!741958 e!4626675))

(assert (=> start!741958 e!4626677))

(assert (=> start!741958 e!4626678))

(declare-fun b!7819626 () Bool)

(declare-fun res!3112476 () Bool)

(assert (=> b!7819626 (=> (not res!3112476) (not e!4626676))))

(declare-fun isPrefix!6281 (List!73768 List!73768) Bool)

(assert (=> b!7819626 (= res!3112476 (isPrefix!6281 s1Rec!453 s1!4101))))

(declare-fun b!7819638 () Bool)

(declare-fun tp!2307534 () Bool)

(assert (=> b!7819638 (= e!4626675 (and tp_is_empty!52217 tp!2307534))))

(declare-fun b!7819639 () Bool)

(declare-fun tp!2307532 () Bool)

(declare-fun tp!2307537 () Bool)

(assert (=> b!7819639 (= e!4626673 (and tp!2307532 tp!2307537))))

(declare-fun b!7819640 () Bool)

(assert (=> b!7819640 (= e!4626672 (not (matchR!10387 r2!6199 s2Rec!453)))))

(declare-fun b!7819641 () Bool)

(declare-fun res!3112478 () Bool)

(assert (=> b!7819641 (=> (not res!3112478) (not e!4626676))))

(assert (=> b!7819641 (= res!3112478 (= (++!17965 s1!4101 s2!3721) s!14274))))

(declare-fun b!7819642 () Bool)

(assert (=> b!7819642 (= e!4626673 tp_is_empty!52217)))

(declare-fun b!7819643 () Bool)

(declare-fun tp!2307528 () Bool)

(assert (=> b!7819643 (= e!4626677 tp!2307528)))

(declare-fun b!7819644 () Bool)

(declare-fun res!3112470 () Bool)

(assert (=> b!7819644 (=> (not res!3112470) (not e!4626676))))

(assert (=> b!7819644 (= res!3112470 (= (size!42737 s1Rec!453) (size!42737 s!14274)))))

(declare-fun b!7819645 () Bool)

(declare-fun res!3112474 () Bool)

(assert (=> b!7819645 (=> (not res!3112474) (not e!4626676))))

(assert (=> b!7819645 (= res!3112474 (matchR!10387 r1!6261 s1!4101))))

(assert (= (and start!741958 res!3112469) b!7819627))

(assert (= (and b!7819627 res!3112472) b!7819641))

(assert (= (and b!7819641 res!3112478) b!7819626))

(assert (= (and b!7819626 res!3112476) b!7819622))

(assert (= (and b!7819622 res!3112477) b!7819645))

(assert (= (and b!7819645 res!3112474) b!7819623))

(assert (= (and b!7819623 res!3112471) b!7819629))

(assert (= (and b!7819629 (not res!3112473)) b!7819640))

(assert (= (and b!7819629 res!3112475) b!7819625))

(assert (= (and b!7819625 res!3112468) b!7819644))

(assert (= (and b!7819644 res!3112470) b!7819636))

(assert (= (and start!741958 ((_ is ElementMatch!20931) r2!6199)) b!7819642))

(assert (= (and start!741958 ((_ is Concat!29776) r2!6199)) b!7819631))

(assert (= (and start!741958 ((_ is Star!20931) r2!6199)) b!7819624))

(assert (= (and start!741958 ((_ is Union!20931) r2!6199)) b!7819639))

(assert (= (and start!741958 ((_ is Cons!73644) s1!4101)) b!7819628))

(assert (= (and start!741958 ((_ is Cons!73644) s2!3721)) b!7819633))

(assert (= (and start!741958 ((_ is Cons!73644) s2Rec!453)) b!7819634))

(assert (= (and start!741958 ((_ is Cons!73644) s!14274)) b!7819638))

(assert (= (and start!741958 ((_ is ElementMatch!20931) r1!6261)) b!7819630))

(assert (= (and start!741958 ((_ is Concat!29776) r1!6261)) b!7819637))

(assert (= (and start!741958 ((_ is Star!20931) r1!6261)) b!7819643))

(assert (= (and start!741958 ((_ is Union!20931) r1!6261)) b!7819635))

(assert (= (and start!741958 ((_ is Cons!73644) s1Rec!453)) b!7819632))

(declare-fun m!8244546 () Bool)

(assert (=> b!7819640 m!8244546))

(declare-fun m!8244548 () Bool)

(assert (=> b!7819629 m!8244548))

(declare-fun m!8244550 () Bool)

(assert (=> b!7819645 m!8244550))

(declare-fun m!8244552 () Bool)

(assert (=> b!7819644 m!8244552))

(declare-fun m!8244554 () Bool)

(assert (=> b!7819644 m!8244554))

(declare-fun m!8244556 () Bool)

(assert (=> b!7819627 m!8244556))

(declare-fun m!8244558 () Bool)

(assert (=> b!7819636 m!8244558))

(declare-fun m!8244560 () Bool)

(assert (=> b!7819623 m!8244560))

(declare-fun m!8244562 () Bool)

(assert (=> start!741958 m!8244562))

(declare-fun m!8244564 () Bool)

(assert (=> b!7819622 m!8244564))

(declare-fun m!8244566 () Bool)

(assert (=> b!7819641 m!8244566))

(declare-fun m!8244568 () Bool)

(assert (=> b!7819626 m!8244568))

(check-sat (not b!7819639) (not b!7819638) (not b!7819643) (not b!7819629) (not b!7819633) (not b!7819632) (not b!7819624) (not b!7819636) (not b!7819631) (not b!7819644) (not b!7819640) (not b!7819623) (not b!7819635) (not b!7819637) (not b!7819641) (not b!7819622) (not b!7819627) (not b!7819628) (not start!741958) tp_is_empty!52217 (not b!7819634) (not b!7819626) (not b!7819645))
(check-sat)
