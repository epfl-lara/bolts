; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530318 () Bool)

(assert start!530318)

(declare-fun b!5019280 () Bool)

(declare-fun res!2140370 () Bool)

(declare-fun e!3135620 () Bool)

(assert (=> b!5019280 (=> (not res!2140370) (not e!3135620))))

(declare-fun knownSize!24 () Int)

(assert (=> b!5019280 (= res!2140370 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun setIsEmpty!28630 () Bool)

(declare-fun setRes!28630 () Bool)

(assert (=> setIsEmpty!28630 setRes!28630))

(declare-fun b!5019281 () Bool)

(declare-fun res!2140367 () Bool)

(assert (=> b!5019281 (=> (not res!2140367) (not e!3135620))))

(declare-fun e!3135624 () Bool)

(assert (=> b!5019281 (= res!2140367 e!3135624)))

(declare-fun res!2140371 () Bool)

(assert (=> b!5019281 (=> res!2140371 e!3135624)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27948 0))(
  ( (C!27949 (val!23340 Int)) )
))
(declare-datatypes ((Regex!13849 0))(
  ( (ElementMatch!13849 (c!857625 C!27948)) (Concat!22642 (regOne!28210 Regex!13849) (regTwo!28210 Regex!13849)) (EmptyExpr!13849) (Star!13849 (reg!14178 Regex!13849)) (EmptyLang!13849) (Union!13849 (regOne!28211 Regex!13849) (regTwo!28211 Regex!13849)) )
))
(declare-datatypes ((List!58122 0))(
  ( (Nil!57998) (Cons!57998 (h!64446 Regex!13849) (t!370498 List!58122)) )
))
(declare-datatypes ((Context!6548 0))(
  ( (Context!6549 (exprs!3774 List!58122)) )
))
(declare-fun z!4710 () (InoxSet Context!6548))

(declare-fun lostCauseZipper!863 ((InoxSet Context!6548)) Bool)

(assert (=> b!5019281 (= res!2140371 (lostCauseZipper!863 z!4710))))

(declare-fun b!5019282 () Bool)

(declare-fun e!3135625 () Bool)

(declare-fun tp!1407565 () Bool)

(assert (=> b!5019282 (= e!3135625 tp!1407565)))

(declare-fun tp!1407564 () Bool)

(declare-fun setNonEmpty!28630 () Bool)

(declare-fun setElem!28630 () Context!6548)

(declare-fun inv!76319 (Context!6548) Bool)

(assert (=> setNonEmpty!28630 (= setRes!28630 (and tp!1407564 (inv!76319 setElem!28630) e!3135625))))

(declare-fun setRest!28630 () (InoxSet Context!6548))

(assert (=> setNonEmpty!28630 (= z!4710 ((_ map or) (store ((as const (Array Context!6548 Bool)) false) setElem!28630 true) setRest!28630))))

(declare-fun b!5019283 () Bool)

(declare-fun e!3135621 () Bool)

(declare-fun e!3135622 () Bool)

(assert (=> b!5019283 (= e!3135621 e!3135622)))

(declare-fun res!2140368 () Bool)

(assert (=> b!5019283 (=> (not res!2140368) (not e!3135622))))

(declare-fun from!1212 () Int)

(declare-fun lt!2077308 () Int)

(assert (=> b!5019283 (= res!2140368 (and (<= from!1212 lt!2077308) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077308 from!1212))))))

(declare-datatypes ((List!58123 0))(
  ( (Nil!57999) (Cons!57999 (h!64447 C!27948) (t!370499 List!58123)) )
))
(declare-datatypes ((IArray!30797 0))(
  ( (IArray!30798 (innerList!15456 List!58123)) )
))
(declare-datatypes ((Conc!15368 0))(
  ( (Node!15368 (left!42398 Conc!15368) (right!42728 Conc!15368) (csize!30966 Int) (cheight!15579 Int)) (Leaf!25501 (xs!18694 IArray!30797) (csize!30967 Int)) (Empty!15368) )
))
(declare-datatypes ((BalanceConc!30166 0))(
  ( (BalanceConc!30167 (c!857626 Conc!15368)) )
))
(declare-fun totalInput!1125 () BalanceConc!30166)

(declare-fun size!38584 (BalanceConc!30166) Int)

(assert (=> b!5019283 (= lt!2077308 (size!38584 totalInput!1125))))

(declare-fun b!5019284 () Bool)

(declare-fun res!2140366 () Bool)

(assert (=> b!5019284 (=> (not res!2140366) (not e!3135620))))

(declare-fun lt!2077306 () List!58123)

(declare-fun size!38585 (List!58123) Int)

(assert (=> b!5019284 (= res!2140366 (= (size!38585 lt!2077306) knownSize!24))))

(declare-fun b!5019286 () Bool)

(declare-fun e!3135623 () Bool)

(declare-fun tp!1407566 () Bool)

(declare-fun inv!76320 (Conc!15368) Bool)

(assert (=> b!5019286 (= e!3135623 (and (inv!76320 (c!857626 totalInput!1125)) tp!1407566))))

(declare-fun b!5019287 () Bool)

(assert (=> b!5019287 (= e!3135624 (= from!1212 lt!2077308))))

(declare-fun b!5019288 () Bool)

(assert (=> b!5019288 (= e!3135622 e!3135620)))

(declare-fun res!2140365 () Bool)

(assert (=> b!5019288 (=> (not res!2140365) (not e!3135620))))

(declare-fun matchZipper!617 ((InoxSet Context!6548) List!58123) Bool)

(assert (=> b!5019288 (= res!2140365 (matchZipper!617 z!4710 lt!2077306))))

(declare-fun take!708 (List!58123 Int) List!58123)

(declare-fun drop!2512 (List!58123 Int) List!58123)

(declare-fun list!18699 (BalanceConc!30166) List!58123)

(assert (=> b!5019288 (= lt!2077306 (take!708 (drop!2512 (list!18699 totalInput!1125) from!1212) knownSize!24))))

(declare-fun b!5019285 () Bool)

(declare-fun findLongestMatchInnerZipperFastV2!171 ((InoxSet Context!6548) Int BalanceConc!30166 Int) Int)

(assert (=> b!5019285 (= e!3135620 (not (>= (findLongestMatchInnerZipperFastV2!171 z!4710 from!1212 totalInput!1125 lt!2077308) knownSize!24)))))

(assert (=> b!5019285 false))

(declare-datatypes ((Unit!149195 0))(
  ( (Unit!149196) )
))
(declare-fun lt!2077307 () Unit!149195)

(declare-fun lemmaLostCauseCannotMatch!49 ((InoxSet Context!6548) List!58123) Unit!149195)

(assert (=> b!5019285 (= lt!2077307 (lemmaLostCauseCannotMatch!49 z!4710 lt!2077306))))

(declare-fun res!2140369 () Bool)

(assert (=> start!530318 (=> (not res!2140369) (not e!3135621))))

(assert (=> start!530318 (= res!2140369 (>= from!1212 0))))

(assert (=> start!530318 e!3135621))

(assert (=> start!530318 true))

(declare-fun inv!76321 (BalanceConc!30166) Bool)

(assert (=> start!530318 (and (inv!76321 totalInput!1125) e!3135623)))

(declare-fun condSetEmpty!28630 () Bool)

(assert (=> start!530318 (= condSetEmpty!28630 (= z!4710 ((as const (Array Context!6548 Bool)) false)))))

(assert (=> start!530318 setRes!28630))

(assert (= (and start!530318 res!2140369) b!5019283))

(assert (= (and b!5019283 res!2140368) b!5019288))

(assert (= (and b!5019288 res!2140365) b!5019280))

(assert (= (and b!5019280 res!2140370) b!5019284))

(assert (= (and b!5019284 res!2140366) b!5019281))

(assert (= (and b!5019281 (not res!2140371)) b!5019287))

(assert (= (and b!5019281 res!2140367) b!5019285))

(assert (= start!530318 b!5019286))

(assert (= (and start!530318 condSetEmpty!28630) setIsEmpty!28630))

(assert (= (and start!530318 (not condSetEmpty!28630)) setNonEmpty!28630))

(assert (= setNonEmpty!28630 b!5019282))

(declare-fun m!6054434 () Bool)

(assert (=> b!5019285 m!6054434))

(declare-fun m!6054436 () Bool)

(assert (=> b!5019285 m!6054436))

(declare-fun m!6054438 () Bool)

(assert (=> b!5019288 m!6054438))

(declare-fun m!6054440 () Bool)

(assert (=> b!5019288 m!6054440))

(assert (=> b!5019288 m!6054440))

(declare-fun m!6054442 () Bool)

(assert (=> b!5019288 m!6054442))

(assert (=> b!5019288 m!6054442))

(declare-fun m!6054444 () Bool)

(assert (=> b!5019288 m!6054444))

(declare-fun m!6054446 () Bool)

(assert (=> start!530318 m!6054446))

(declare-fun m!6054448 () Bool)

(assert (=> b!5019286 m!6054448))

(declare-fun m!6054450 () Bool)

(assert (=> b!5019284 m!6054450))

(declare-fun m!6054452 () Bool)

(assert (=> b!5019283 m!6054452))

(declare-fun m!6054454 () Bool)

(assert (=> b!5019281 m!6054454))

(declare-fun m!6054456 () Bool)

(assert (=> setNonEmpty!28630 m!6054456))

(check-sat (not b!5019283) (not b!5019282) (not b!5019288) (not b!5019286) (not b!5019284) (not setNonEmpty!28630) (not b!5019281) (not start!530318) (not b!5019285))
(check-sat)
