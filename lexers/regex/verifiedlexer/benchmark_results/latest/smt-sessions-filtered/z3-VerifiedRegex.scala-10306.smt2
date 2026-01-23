; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536050 () Bool)

(assert start!536050)

(declare-fun b!5088134 () Bool)

(declare-fun e!3173352 () Bool)

(declare-datatypes ((C!28160 0))(
  ( (C!28161 (val!23688 Int)) )
))
(declare-datatypes ((List!58610 0))(
  ( (Nil!58486) (Cons!58486 (h!64934 C!28160) (t!371473 List!58610)) )
))
(declare-datatypes ((IArray!31269 0))(
  ( (IArray!31270 (innerList!15692 List!58610)) )
))
(declare-datatypes ((Conc!15604 0))(
  ( (Node!15604 (left!42878 Conc!15604) (right!43208 Conc!15604) (csize!31438 Int) (cheight!15815 Int)) (Leaf!25911 (xs!18986 IArray!31269) (csize!31439 Int)) (Empty!15604) )
))
(declare-datatypes ((BalanceConc!30398 0))(
  ( (BalanceConc!30399 (c!874269 Conc!15604)) )
))
(declare-fun totalInput!789 () BalanceConc!30398)

(declare-fun tp!1418495 () Bool)

(declare-fun inv!77769 (Conc!15604) Bool)

(assert (=> b!5088134 (= e!3173352 (and (inv!77769 (c!874269 totalInput!789)) tp!1418495))))

(declare-fun b!5088135 () Bool)

(declare-fun res!2166048 () Bool)

(declare-fun e!3173354 () Bool)

(assert (=> b!5088135 (=> (not res!2166048) (not e!3173354))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13955 0))(
  ( (ElementMatch!13955 (c!874270 C!28160)) (Concat!22748 (regOne!28422 Regex!13955) (regTwo!28422 Regex!13955)) (EmptyExpr!13955) (Star!13955 (reg!14284 Regex!13955)) (EmptyLang!13955) (Union!13955 (regOne!28423 Regex!13955) (regTwo!28423 Regex!13955)) )
))
(declare-datatypes ((List!58611 0))(
  ( (Nil!58487) (Cons!58487 (h!64935 Regex!13955) (t!371474 List!58611)) )
))
(declare-datatypes ((Context!6760 0))(
  ( (Context!6761 (exprs!3880 List!58611)) )
))
(declare-fun lt!2092018 () (InoxSet Context!6760))

(declare-fun nullableZipper!952 ((InoxSet Context!6760)) Bool)

(assert (=> b!5088135 (= res!2166048 (nullableZipper!952 lt!2092018))))

(declare-fun b!5088136 () Bool)

(declare-fun e!3173355 () Bool)

(declare-fun e!3173356 () Bool)

(assert (=> b!5088136 (= e!3173355 e!3173356)))

(declare-fun res!2166047 () Bool)

(assert (=> b!5088136 (=> (not res!2166047) (not e!3173356))))

(declare-fun lt!2092017 () Int)

(declare-fun totalInputSize!236 () Int)

(declare-fun from!978 () Int)

(assert (=> b!5088136 (= res!2166047 (and (<= from!978 lt!2092017) (= totalInputSize!236 lt!2092017) (not (= from!978 totalInputSize!236))))))

(declare-fun size!39145 (BalanceConc!30398) Int)

(assert (=> b!5088136 (= lt!2092017 (size!39145 totalInput!789))))

(declare-fun tp!1418494 () Bool)

(declare-fun setNonEmpty!29086 () Bool)

(declare-fun e!3173353 () Bool)

(declare-fun setRes!29086 () Bool)

(declare-fun setElem!29086 () Context!6760)

(declare-fun inv!77770 (Context!6760) Bool)

(assert (=> setNonEmpty!29086 (= setRes!29086 (and tp!1418494 (inv!77770 setElem!29086) e!3173353))))

(declare-fun z!3736 () (InoxSet Context!6760))

(declare-fun setRest!29086 () (InoxSet Context!6760))

(assert (=> setNonEmpty!29086 (= z!3736 ((_ map or) (store ((as const (Array Context!6760 Bool)) false) setElem!29086 true) setRest!29086))))

(declare-fun b!5088138 () Bool)

(assert (=> b!5088138 (= e!3173354 (> 1 (- totalInputSize!236 from!978)))))

(declare-fun setIsEmpty!29086 () Bool)

(assert (=> setIsEmpty!29086 setRes!29086))

(declare-fun b!5088139 () Bool)

(assert (=> b!5088139 (= e!3173356 e!3173354)))

(declare-fun res!2166049 () Bool)

(assert (=> b!5088139 (=> (not res!2166049) (not e!3173354))))

(declare-fun findLongestMatchInnerZipperFastV2!261 ((InoxSet Context!6760) Int BalanceConc!30398 Int) Int)

(assert (=> b!5088139 (= res!2166049 (<= (findLongestMatchInnerZipperFastV2!261 lt!2092018 (+ 1 from!978) totalInput!789 totalInputSize!236) 0))))

(declare-fun derivationStepZipper!740 ((InoxSet Context!6760) C!28160) (InoxSet Context!6760))

(declare-fun apply!14232 (BalanceConc!30398 Int) C!28160)

(assert (=> b!5088139 (= lt!2092018 (derivationStepZipper!740 z!3736 (apply!14232 totalInput!789 from!978)))))

(declare-fun b!5088140 () Bool)

(declare-fun tp!1418493 () Bool)

(assert (=> b!5088140 (= e!3173353 tp!1418493)))

(declare-fun b!5088137 () Bool)

(declare-fun res!2166050 () Bool)

(assert (=> b!5088137 (=> (not res!2166050) (not e!3173356))))

(declare-fun lostCauseZipper!967 ((InoxSet Context!6760)) Bool)

(assert (=> b!5088137 (= res!2166050 (not (lostCauseZipper!967 z!3736)))))

(declare-fun res!2166046 () Bool)

(assert (=> start!536050 (=> (not res!2166046) (not e!3173355))))

(assert (=> start!536050 (= res!2166046 (>= from!978 0))))

(assert (=> start!536050 e!3173355))

(assert (=> start!536050 true))

(declare-fun condSetEmpty!29086 () Bool)

(assert (=> start!536050 (= condSetEmpty!29086 (= z!3736 ((as const (Array Context!6760 Bool)) false)))))

(assert (=> start!536050 setRes!29086))

(declare-fun inv!77771 (BalanceConc!30398) Bool)

(assert (=> start!536050 (and (inv!77771 totalInput!789) e!3173352)))

(assert (= (and start!536050 res!2166046) b!5088136))

(assert (= (and b!5088136 res!2166047) b!5088137))

(assert (= (and b!5088137 res!2166050) b!5088139))

(assert (= (and b!5088139 res!2166049) b!5088135))

(assert (= (and b!5088135 res!2166048) b!5088138))

(assert (= (and start!536050 condSetEmpty!29086) setIsEmpty!29086))

(assert (= (and start!536050 (not condSetEmpty!29086)) setNonEmpty!29086))

(assert (= setNonEmpty!29086 b!5088140))

(assert (= start!536050 b!5088134))

(declare-fun m!6146064 () Bool)

(assert (=> start!536050 m!6146064))

(declare-fun m!6146066 () Bool)

(assert (=> setNonEmpty!29086 m!6146066))

(declare-fun m!6146068 () Bool)

(assert (=> b!5088139 m!6146068))

(declare-fun m!6146070 () Bool)

(assert (=> b!5088139 m!6146070))

(assert (=> b!5088139 m!6146070))

(declare-fun m!6146072 () Bool)

(assert (=> b!5088139 m!6146072))

(declare-fun m!6146074 () Bool)

(assert (=> b!5088134 m!6146074))

(declare-fun m!6146076 () Bool)

(assert (=> b!5088137 m!6146076))

(declare-fun m!6146078 () Bool)

(assert (=> b!5088136 m!6146078))

(declare-fun m!6146080 () Bool)

(assert (=> b!5088135 m!6146080))

(check-sat (not b!5088139) (not b!5088134) (not b!5088140) (not b!5088137) (not b!5088136) (not b!5088135) (not start!536050) (not setNonEmpty!29086))
(check-sat)
