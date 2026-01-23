; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530202 () Bool)

(assert start!530202)

(declare-fun tp!1407282 () Bool)

(declare-fun e!3135059 () Bool)

(declare-fun setNonEmpty!28552 () Bool)

(declare-datatypes ((C!27904 0))(
  ( (C!27905 (val!23318 Int)) )
))
(declare-datatypes ((Regex!13827 0))(
  ( (ElementMatch!13827 (c!857449 C!27904)) (Concat!22620 (regOne!28166 Regex!13827) (regTwo!28166 Regex!13827)) (EmptyExpr!13827) (Star!13827 (reg!14156 Regex!13827)) (EmptyLang!13827) (Union!13827 (regOne!28167 Regex!13827) (regTwo!28167 Regex!13827)) )
))
(declare-datatypes ((List!58078 0))(
  ( (Nil!57954) (Cons!57954 (h!64402 Regex!13827) (t!370454 List!58078)) )
))
(declare-datatypes ((Context!6504 0))(
  ( (Context!6505 (exprs!3752 List!58078)) )
))
(declare-fun setElem!28552 () Context!6504)

(declare-fun setRes!28552 () Bool)

(declare-fun inv!76209 (Context!6504) Bool)

(assert (=> setNonEmpty!28552 (= setRes!28552 (and tp!1407282 (inv!76209 setElem!28552) e!3135059))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4710 () (InoxSet Context!6504))

(declare-fun setRest!28552 () (InoxSet Context!6504))

(assert (=> setNonEmpty!28552 (= z!4710 ((_ map or) (store ((as const (Array Context!6504 Bool)) false) setElem!28552 true) setRest!28552))))

(declare-fun b!5018345 () Bool)

(declare-fun tp!1407284 () Bool)

(assert (=> b!5018345 (= e!3135059 tp!1407284)))

(declare-fun setIsEmpty!28552 () Bool)

(assert (=> setIsEmpty!28552 setRes!28552))

(declare-fun b!5018346 () Bool)

(declare-fun e!3135057 () Bool)

(declare-datatypes ((List!58079 0))(
  ( (Nil!57955) (Cons!57955 (h!64403 C!27904) (t!370455 List!58079)) )
))
(declare-datatypes ((IArray!30753 0))(
  ( (IArray!30754 (innerList!15434 List!58079)) )
))
(declare-datatypes ((Conc!15346 0))(
  ( (Node!15346 (left!42365 Conc!15346) (right!42695 Conc!15346) (csize!30922 Int) (cheight!15557 Int)) (Leaf!25468 (xs!18672 IArray!30753) (csize!30923 Int)) (Empty!15346) )
))
(declare-datatypes ((BalanceConc!30122 0))(
  ( (BalanceConc!30123 (c!857450 Conc!15346)) )
))
(declare-fun totalInput!1125 () BalanceConc!30122)

(declare-fun tp!1407283 () Bool)

(declare-fun inv!76210 (Conc!15346) Bool)

(assert (=> b!5018346 (= e!3135057 (and (inv!76210 (c!857450 totalInput!1125)) tp!1407283))))

(declare-fun res!2139914 () Bool)

(declare-fun e!3135060 () Bool)

(assert (=> start!530202 (=> (not res!2139914) (not e!3135060))))

(declare-fun from!1212 () Int)

(assert (=> start!530202 (= res!2139914 (>= from!1212 0))))

(assert (=> start!530202 e!3135060))

(assert (=> start!530202 true))

(declare-fun inv!76211 (BalanceConc!30122) Bool)

(assert (=> start!530202 (and (inv!76211 totalInput!1125) e!3135057)))

(declare-fun condSetEmpty!28552 () Bool)

(assert (=> start!530202 (= condSetEmpty!28552 (= z!4710 ((as const (Array Context!6504 Bool)) false)))))

(assert (=> start!530202 setRes!28552))

(declare-fun b!5018347 () Bool)

(declare-fun res!2139911 () Bool)

(declare-fun e!3135058 () Bool)

(assert (=> b!5018347 (=> (not res!2139911) (not e!3135058))))

(declare-fun lt!2076935 () List!58079)

(declare-fun knownSize!24 () Int)

(declare-fun size!38538 (List!58079) Int)

(assert (=> b!5018347 (= res!2139911 (= (size!38538 lt!2076935) knownSize!24))))

(declare-fun b!5018348 () Bool)

(declare-fun res!2139910 () Bool)

(assert (=> b!5018348 (=> (not res!2139910) (not e!3135058))))

(assert (=> b!5018348 (= res!2139910 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5018349 () Bool)

(declare-fun lt!2076936 () Int)

(assert (=> b!5018349 (= e!3135058 (and (not (= from!1212 lt!2076936)) (or (> 0 from!1212) (>= from!1212 lt!2076936))))))

(declare-fun b!5018350 () Bool)

(declare-fun e!3135061 () Bool)

(assert (=> b!5018350 (= e!3135060 e!3135061)))

(declare-fun res!2139915 () Bool)

(assert (=> b!5018350 (=> (not res!2139915) (not e!3135061))))

(assert (=> b!5018350 (= res!2139915 (and (<= from!1212 lt!2076936) (>= knownSize!24 0) (<= knownSize!24 (- lt!2076936 from!1212))))))

(declare-fun size!38539 (BalanceConc!30122) Int)

(assert (=> b!5018350 (= lt!2076936 (size!38539 totalInput!1125))))

(declare-fun b!5018351 () Bool)

(assert (=> b!5018351 (= e!3135061 e!3135058)))

(declare-fun res!2139912 () Bool)

(assert (=> b!5018351 (=> (not res!2139912) (not e!3135058))))

(declare-fun matchZipper!595 ((InoxSet Context!6504) List!58079) Bool)

(assert (=> b!5018351 (= res!2139912 (matchZipper!595 z!4710 lt!2076935))))

(declare-fun take!686 (List!58079 Int) List!58079)

(declare-fun drop!2490 (List!58079 Int) List!58079)

(declare-fun list!18674 (BalanceConc!30122) List!58079)

(assert (=> b!5018351 (= lt!2076935 (take!686 (drop!2490 (list!18674 totalInput!1125) from!1212) knownSize!24))))

(declare-fun b!5018352 () Bool)

(declare-fun res!2139913 () Bool)

(assert (=> b!5018352 (=> (not res!2139913) (not e!3135058))))

(declare-fun lostCauseZipper!846 ((InoxSet Context!6504)) Bool)

(assert (=> b!5018352 (= res!2139913 (not (lostCauseZipper!846 z!4710)))))

(assert (= (and start!530202 res!2139914) b!5018350))

(assert (= (and b!5018350 res!2139915) b!5018351))

(assert (= (and b!5018351 res!2139912) b!5018348))

(assert (= (and b!5018348 res!2139910) b!5018347))

(assert (= (and b!5018347 res!2139911) b!5018352))

(assert (= (and b!5018352 res!2139913) b!5018349))

(assert (= start!530202 b!5018346))

(assert (= (and start!530202 condSetEmpty!28552) setIsEmpty!28552))

(assert (= (and start!530202 (not condSetEmpty!28552)) setNonEmpty!28552))

(assert (= setNonEmpty!28552 b!5018345))

(declare-fun m!6053614 () Bool)

(assert (=> b!5018352 m!6053614))

(declare-fun m!6053616 () Bool)

(assert (=> b!5018351 m!6053616))

(declare-fun m!6053618 () Bool)

(assert (=> b!5018351 m!6053618))

(assert (=> b!5018351 m!6053618))

(declare-fun m!6053620 () Bool)

(assert (=> b!5018351 m!6053620))

(assert (=> b!5018351 m!6053620))

(declare-fun m!6053622 () Bool)

(assert (=> b!5018351 m!6053622))

(declare-fun m!6053624 () Bool)

(assert (=> b!5018347 m!6053624))

(declare-fun m!6053626 () Bool)

(assert (=> start!530202 m!6053626))

(declare-fun m!6053628 () Bool)

(assert (=> b!5018350 m!6053628))

(declare-fun m!6053630 () Bool)

(assert (=> setNonEmpty!28552 m!6053630))

(declare-fun m!6053632 () Bool)

(assert (=> b!5018346 m!6053632))

(check-sat (not setNonEmpty!28552) (not b!5018351) (not b!5018347) (not start!530202) (not b!5018345) (not b!5018350) (not b!5018346) (not b!5018352))
(check-sat)
