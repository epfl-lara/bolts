; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213130 () Bool)

(assert start!213130)

(declare-fun e!1403539 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12504 0))(
  ( (C!12505 (val!7238 Int)) )
))
(declare-datatypes ((Regex!6179 0))(
  ( (ElementMatch!6179 (c!349736 C!12504)) (Concat!10481 (regOne!12870 Regex!6179) (regTwo!12870 Regex!6179)) (EmptyExpr!6179) (Star!6179 (reg!6508 Regex!6179)) (EmptyLang!6179) (Union!6179 (regOne!12871 Regex!6179) (regTwo!12871 Regex!6179)) )
))
(declare-datatypes ((List!25644 0))(
  ( (Nil!25560) (Cons!25560 (h!30961 Regex!6179) (t!198250 List!25644)) )
))
(declare-datatypes ((Context!3498 0))(
  ( (Context!3499 (exprs!2249 List!25644)) )
))
(declare-fun lt!821485 () (InoxSet Context!3498))

(declare-fun b!2196159 () Bool)

(declare-fun from!1114 () Int)

(declare-fun lt!821483 () Int)

(declare-datatypes ((List!25645 0))(
  ( (Nil!25561) (Cons!25561 (h!30962 C!12504) (t!198251 List!25645)) )
))
(declare-datatypes ((IArray!16635 0))(
  ( (IArray!16636 (innerList!8375 List!25645)) )
))
(declare-datatypes ((Conc!8315 0))(
  ( (Node!8315 (left!19623 Conc!8315) (right!19953 Conc!8315) (csize!16860 Int) (cheight!8526 Int)) (Leaf!12172 (xs!11257 IArray!16635) (csize!16861 Int)) (Empty!8315) )
))
(declare-datatypes ((BalanceConc!16392 0))(
  ( (BalanceConc!16393 (c!349737 Conc!8315)) )
))
(declare-fun totalInput!923 () BalanceConc!16392)

(declare-fun matchZipper!265 ((InoxSet Context!3498) List!25645) Bool)

(declare-fun take!357 (List!25645 Int) List!25645)

(declare-fun drop!1367 (List!25645 Int) List!25645)

(declare-fun list!9827 (BalanceConc!16392) List!25645)

(assert (=> b!2196159 (= e!1403539 (matchZipper!265 lt!821485 (take!357 (drop!1367 (list!9827 totalInput!923) (+ 1 from!1114)) lt!821483)))))

(declare-fun b!2196160 () Bool)

(declare-fun e!1403547 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2196160 (= e!1403547 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2196161 () Bool)

(declare-fun res!944188 () Bool)

(declare-fun e!1403538 () Bool)

(assert (=> b!2196161 (=> (not res!944188) (not e!1403538))))

(assert (=> b!2196161 (= res!944188 e!1403547)))

(declare-fun res!944182 () Bool)

(assert (=> b!2196161 (=> res!944182 e!1403547)))

(declare-fun z!3955 () (InoxSet Context!3498))

(declare-fun nullableZipper!459 ((InoxSet Context!3498)) Bool)

(assert (=> b!2196161 (= res!944182 (not (nullableZipper!459 z!3955)))))

(declare-fun b!2196162 () Bool)

(declare-fun e!1403543 () Int)

(declare-fun lt!821484 () Int)

(assert (=> b!2196162 (= e!1403543 lt!821484)))

(declare-fun b!2196163 () Bool)

(declare-fun e!1403540 () Bool)

(assert (=> b!2196163 (= e!1403538 e!1403540)))

(declare-fun res!944195 () Bool)

(assert (=> b!2196163 (=> (not res!944195) (not e!1403540))))

(declare-fun lt!821487 () Int)

(declare-fun lt!821490 () Int)

(assert (=> b!2196163 (= res!944195 (= lt!821487 lt!821490))))

(declare-fun lt!821482 () Int)

(declare-fun furthestNullablePosition!347 ((InoxSet Context!3498) Int BalanceConc!16392 Int Int) Int)

(assert (=> b!2196163 (= lt!821490 (furthestNullablePosition!347 lt!821485 (+ 1 from!1114) totalInput!923 lt!821482 lt!821484))))

(assert (=> b!2196163 (= lt!821487 (furthestNullablePosition!347 z!3955 from!1114 totalInput!923 lt!821482 lastNullablePos!193))))

(declare-fun e!1403534 () Int)

(assert (=> b!2196163 (= lt!821484 e!1403534)))

(declare-fun c!349735 () Bool)

(assert (=> b!2196163 (= c!349735 (nullableZipper!459 lt!821485))))

(declare-fun derivationStepZipper!251 ((InoxSet Context!3498) C!12504) (InoxSet Context!3498))

(declare-fun apply!6247 (BalanceConc!16392 Int) C!12504)

(assert (=> b!2196163 (= lt!821485 (derivationStepZipper!251 z!3955 (apply!6247 totalInput!923 from!1114)))))

(declare-fun b!2196164 () Bool)

(declare-fun e!1403548 () Int)

(assert (=> b!2196164 (= e!1403548 lt!821484)))

(declare-fun res!944181 () Bool)

(declare-fun e!1403541 () Bool)

(assert (=> start!213130 (=> (not res!944181) (not e!1403541))))

(assert (=> start!213130 (= res!944181 (>= from!1114 0))))

(assert (=> start!213130 e!1403541))

(assert (=> start!213130 true))

(declare-fun e!1403533 () Bool)

(declare-fun inv!34243 (BalanceConc!16392) Bool)

(assert (=> start!213130 (and (inv!34243 totalInput!923) e!1403533)))

(declare-fun condSetEmpty!18806 () Bool)

(assert (=> start!213130 (= condSetEmpty!18806 (= z!3955 ((as const (Array Context!3498 Bool)) false)))))

(declare-fun setRes!18806 () Bool)

(assert (=> start!213130 setRes!18806))

(declare-fun b!2196165 () Bool)

(declare-fun res!944186 () Bool)

(assert (=> b!2196165 (=> (not res!944186) (not e!1403538))))

(assert (=> b!2196165 (= res!944186 (not (= from!1114 lt!821482)))))

(declare-fun b!2196166 () Bool)

(declare-fun e!1403544 () Bool)

(declare-fun e!1403549 () Bool)

(assert (=> b!2196166 (= e!1403544 e!1403549)))

(declare-fun res!944189 () Bool)

(assert (=> b!2196166 (=> res!944189 e!1403549)))

(assert (=> b!2196166 (= res!944189 (or (> lt!821483 0) (> lt!821490 from!1114) (< lt!821490 lt!821484) (< lt!821484 lastNullablePos!193) (> lt!821484 from!1114) (and (not (= lt!821484 from!1114)) (not (= lt!821484 lastNullablePos!193))) (not (= lt!821484 lastNullablePos!193)) (>= lt!821484 from!1114) (> lt!821487 from!1114)))))

(declare-fun b!2196167 () Bool)

(assert (=> b!2196167 (= e!1403548 (+ 1 from!1114))))

(declare-fun b!2196168 () Bool)

(assert (=> b!2196168 (= e!1403541 e!1403538)))

(declare-fun res!944191 () Bool)

(assert (=> b!2196168 (=> (not res!944191) (not e!1403538))))

(assert (=> b!2196168 (= res!944191 (and (<= from!1114 lt!821482) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19925 (BalanceConc!16392) Int)

(assert (=> b!2196168 (= lt!821482 (size!19925 totalInput!923))))

(declare-fun b!2196169 () Bool)

(declare-fun lt!821486 () (InoxSet Context!3498))

(assert (=> b!2196169 (= e!1403543 (furthestNullablePosition!347 lt!821486 (+ 2 from!1114) totalInput!923 lt!821482 e!1403548))))

(assert (=> b!2196169 (= lt!821486 (derivationStepZipper!251 lt!821485 (apply!6247 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!349733 () Bool)

(assert (=> b!2196169 (= c!349733 (nullableZipper!459 lt!821486))))

(declare-fun setIsEmpty!18806 () Bool)

(assert (=> setIsEmpty!18806 setRes!18806))

(declare-fun b!2196170 () Bool)

(declare-fun e!1403535 () Bool)

(assert (=> b!2196170 (= e!1403535 false)))

(declare-fun b!2196171 () Bool)

(declare-fun e!1403542 () Bool)

(assert (=> b!2196171 (= e!1403540 (not e!1403542))))

(declare-fun res!944187 () Bool)

(assert (=> b!2196171 (=> res!944187 e!1403542)))

(assert (=> b!2196171 (= res!944187 (or (> lt!821483 0) (> lt!821490 from!1114) (< lt!821490 lt!821484) (< lt!821484 lastNullablePos!193) (> lt!821484 from!1114) (and (not (= lt!821484 from!1114)) (not (= lt!821484 lastNullablePos!193))) (not (= lt!821484 lastNullablePos!193)) (>= lt!821484 from!1114) (> lt!821487 from!1114)))))

(assert (=> b!2196171 e!1403544))

(declare-fun res!944193 () Bool)

(assert (=> b!2196171 (=> (not res!944193) (not e!1403544))))

(assert (=> b!2196171 (= res!944193 e!1403539)))

(declare-fun res!944190 () Bool)

(assert (=> b!2196171 (=> res!944190 e!1403539)))

(assert (=> b!2196171 (= res!944190 (<= lt!821483 0))))

(assert (=> b!2196171 (= lt!821483 (+ 1 (- lt!821490 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38669 0))(
  ( (Unit!38670) )
))
(declare-fun lt!821488 () Unit!38669)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!168 ((InoxSet Context!3498) Int BalanceConc!16392 Int) Unit!38669)

(assert (=> b!2196171 (= lt!821488 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!168 lt!821485 (+ 1 from!1114) totalInput!923 lt!821484))))

(declare-fun tp!684058 () Bool)

(declare-fun setNonEmpty!18806 () Bool)

(declare-fun setElem!18806 () Context!3498)

(declare-fun e!1403546 () Bool)

(declare-fun inv!34244 (Context!3498) Bool)

(assert (=> setNonEmpty!18806 (= setRes!18806 (and tp!684058 (inv!34244 setElem!18806) e!1403546))))

(declare-fun setRest!18806 () (InoxSet Context!3498))

(assert (=> setNonEmpty!18806 (= z!3955 ((_ map or) (store ((as const (Array Context!3498 Bool)) false) setElem!18806 true) setRest!18806))))

(declare-fun e!1403545 () Bool)

(declare-fun lt!821481 () Int)

(declare-fun b!2196172 () Bool)

(assert (=> b!2196172 (= e!1403545 (matchZipper!265 z!3955 (take!357 (drop!1367 (list!9827 totalInput!923) from!1114) lt!821481)))))

(declare-fun b!2196173 () Bool)

(declare-fun e!1403536 () Bool)

(declare-fun lostCauseZipper!295 ((InoxSet Context!3498)) Bool)

(assert (=> b!2196173 (= e!1403536 (lostCauseZipper!295 lt!821485))))

(declare-fun b!2196174 () Bool)

(assert (=> b!2196174 (= e!1403534 lastNullablePos!193)))

(declare-fun b!2196175 () Bool)

(declare-fun res!944185 () Bool)

(assert (=> b!2196175 (=> (not res!944185) (not e!1403538))))

(assert (=> b!2196175 (= res!944185 (not (lostCauseZipper!295 z!3955)))))

(declare-fun b!2196176 () Bool)

(declare-fun e!1403537 () Bool)

(assert (=> b!2196176 (= e!1403549 e!1403537)))

(declare-fun res!944194 () Bool)

(assert (=> b!2196176 (=> res!944194 e!1403537)))

(declare-fun lt!821489 () Int)

(assert (=> b!2196176 (= res!944194 (or (> lt!821489 1) (not (= lt!821489 1))))))

(assert (=> b!2196176 (= lt!821489 (+ 1 (- lt!821487 from!1114)))))

(declare-fun b!2196177 () Bool)

(assert (=> b!2196177 (= e!1403542 e!1403545)))

(declare-fun res!944192 () Bool)

(assert (=> b!2196177 (=> res!944192 e!1403545)))

(assert (=> b!2196177 (= res!944192 (or (> lt!821481 1) (<= lt!821481 0)))))

(assert (=> b!2196177 (= lt!821481 (+ 1 (- lt!821487 from!1114)))))

(declare-fun b!2196178 () Bool)

(declare-fun tp!684057 () Bool)

(declare-fun inv!34245 (Conc!8315) Bool)

(assert (=> b!2196178 (= e!1403533 (and (inv!34245 (c!349737 totalInput!923)) tp!684057))))

(declare-fun b!2196179 () Bool)

(declare-fun tp!684056 () Bool)

(assert (=> b!2196179 (= e!1403546 tp!684056)))

(declare-fun b!2196180 () Bool)

(assert (=> b!2196180 (= e!1403534 from!1114)))

(declare-fun b!2196181 () Bool)

(assert (=> b!2196181 (= e!1403537 e!1403535)))

(declare-fun res!944184 () Bool)

(assert (=> b!2196181 (=> (not res!944184) (not e!1403535))))

(assert (=> b!2196181 (= res!944184 (= lt!821490 e!1403543))))

(declare-fun c!349734 () Bool)

(assert (=> b!2196181 (= c!349734 e!1403536)))

(declare-fun res!944183 () Bool)

(assert (=> b!2196181 (=> res!944183 e!1403536)))

(assert (=> b!2196181 (= res!944183 (= (+ 1 from!1114) lt!821482))))

(assert (= (and start!213130 res!944181) b!2196168))

(assert (= (and b!2196168 res!944191) b!2196161))

(assert (= (and b!2196161 (not res!944182)) b!2196160))

(assert (= (and b!2196161 res!944188) b!2196165))

(assert (= (and b!2196165 res!944186) b!2196175))

(assert (= (and b!2196175 res!944185) b!2196163))

(assert (= (and b!2196163 c!349735) b!2196180))

(assert (= (and b!2196163 (not c!349735)) b!2196174))

(assert (= (and b!2196163 res!944195) b!2196171))

(assert (= (and b!2196171 (not res!944190)) b!2196159))

(assert (= (and b!2196171 res!944193) b!2196166))

(assert (= (and b!2196166 (not res!944189)) b!2196176))

(assert (= (and b!2196176 (not res!944194)) b!2196181))

(assert (= (and b!2196181 (not res!944183)) b!2196173))

(assert (= (and b!2196181 c!349734) b!2196162))

(assert (= (and b!2196181 (not c!349734)) b!2196169))

(assert (= (and b!2196169 c!349733) b!2196167))

(assert (= (and b!2196169 (not c!349733)) b!2196164))

(assert (= (and b!2196181 res!944184) b!2196170))

(assert (= (and b!2196171 (not res!944187)) b!2196177))

(assert (= (and b!2196177 (not res!944192)) b!2196172))

(assert (= start!213130 b!2196178))

(assert (= (and start!213130 condSetEmpty!18806) setIsEmpty!18806))

(assert (= (and start!213130 (not condSetEmpty!18806)) setNonEmpty!18806))

(assert (= setNonEmpty!18806 b!2196179))

(declare-fun m!2638591 () Bool)

(assert (=> b!2196178 m!2638591))

(declare-fun m!2638593 () Bool)

(assert (=> b!2196159 m!2638593))

(assert (=> b!2196159 m!2638593))

(declare-fun m!2638595 () Bool)

(assert (=> b!2196159 m!2638595))

(assert (=> b!2196159 m!2638595))

(declare-fun m!2638597 () Bool)

(assert (=> b!2196159 m!2638597))

(assert (=> b!2196159 m!2638597))

(declare-fun m!2638599 () Bool)

(assert (=> b!2196159 m!2638599))

(declare-fun m!2638601 () Bool)

(assert (=> setNonEmpty!18806 m!2638601))

(declare-fun m!2638603 () Bool)

(assert (=> b!2196169 m!2638603))

(declare-fun m!2638605 () Bool)

(assert (=> b!2196169 m!2638605))

(assert (=> b!2196169 m!2638605))

(declare-fun m!2638607 () Bool)

(assert (=> b!2196169 m!2638607))

(declare-fun m!2638609 () Bool)

(assert (=> b!2196169 m!2638609))

(assert (=> b!2196172 m!2638593))

(assert (=> b!2196172 m!2638593))

(declare-fun m!2638611 () Bool)

(assert (=> b!2196172 m!2638611))

(assert (=> b!2196172 m!2638611))

(declare-fun m!2638613 () Bool)

(assert (=> b!2196172 m!2638613))

(assert (=> b!2196172 m!2638613))

(declare-fun m!2638615 () Bool)

(assert (=> b!2196172 m!2638615))

(declare-fun m!2638617 () Bool)

(assert (=> b!2196175 m!2638617))

(declare-fun m!2638619 () Bool)

(assert (=> b!2196173 m!2638619))

(declare-fun m!2638621 () Bool)

(assert (=> b!2196161 m!2638621))

(declare-fun m!2638623 () Bool)

(assert (=> b!2196163 m!2638623))

(declare-fun m!2638625 () Bool)

(assert (=> b!2196163 m!2638625))

(declare-fun m!2638627 () Bool)

(assert (=> b!2196163 m!2638627))

(declare-fun m!2638629 () Bool)

(assert (=> b!2196163 m!2638629))

(assert (=> b!2196163 m!2638627))

(declare-fun m!2638631 () Bool)

(assert (=> b!2196163 m!2638631))

(declare-fun m!2638633 () Bool)

(assert (=> start!213130 m!2638633))

(declare-fun m!2638635 () Bool)

(assert (=> b!2196171 m!2638635))

(declare-fun m!2638637 () Bool)

(assert (=> b!2196168 m!2638637))

(check-sat (not b!2196169) (not b!2196175) (not b!2196159) (not start!213130) (not b!2196168) (not b!2196179) (not b!2196171) (not b!2196173) (not b!2196163) (not b!2196178) (not b!2196161) (not b!2196172) (not setNonEmpty!18806))
(check-sat)
