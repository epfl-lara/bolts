; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214726 () Bool)

(assert start!214726)

(declare-fun b!2207482 () Bool)

(declare-fun e!1410168 () Int)

(assert (=> b!2207482 (= e!1410168 (- 1))))

(declare-fun lt!825573 () Int)

(declare-fun lt!825574 () Int)

(declare-fun lt!825572 () Int)

(declare-fun e!1410171 () Bool)

(declare-fun b!2207483 () Bool)

(assert (=> b!2207483 (= e!1410171 (and (>= lt!825573 0) (<= lt!825573 lt!825574) (or (< lt!825572 (- 1)) (>= lt!825572 lt!825573))))))

(assert (=> b!2207483 (= lt!825572 e!1410168)))

(declare-fun c!352623 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12736 0))(
  ( (C!12737 (val!7354 Int)) )
))
(declare-datatypes ((Regex!6295 0))(
  ( (ElementMatch!6295 (c!352624 C!12736)) (Concat!10597 (regOne!13102 Regex!6295) (regTwo!13102 Regex!6295)) (EmptyExpr!6295) (Star!6295 (reg!6624 Regex!6295)) (EmptyLang!6295) (Union!6295 (regOne!13103 Regex!6295) (regTwo!13103 Regex!6295)) )
))
(declare-datatypes ((List!25899 0))(
  ( (Nil!25815) (Cons!25815 (h!31216 Regex!6295) (t!198549 List!25899)) )
))
(declare-datatypes ((Context!3730 0))(
  ( (Context!3731 (exprs!2365 List!25899)) )
))
(declare-fun z!3830 () (InoxSet Context!3730))

(declare-fun nullableZipper!575 ((InoxSet Context!3730)) Bool)

(assert (=> b!2207483 (= c!352623 (nullableZipper!575 z!3830))))

(declare-datatypes ((List!25900 0))(
  ( (Nil!25816) (Cons!25816 (h!31217 C!12736) (t!198550 List!25900)) )
))
(declare-datatypes ((IArray!16867 0))(
  ( (IArray!16868 (innerList!8491 List!25900)) )
))
(declare-datatypes ((Conc!8431 0))(
  ( (Node!8431 (left!19841 Conc!8431) (right!20171 Conc!8431) (csize!17092 Int) (cheight!8642 Int)) (Leaf!12346 (xs!11373 IArray!16867) (csize!17093 Int)) (Empty!8431) )
))
(declare-datatypes ((BalanceConc!16624 0))(
  ( (BalanceConc!16625 (c!352625 Conc!8431)) )
))
(declare-fun input!5506 () BalanceConc!16624)

(declare-fun size!20109 (BalanceConc!16624) Int)

(assert (=> b!2207483 (= lt!825573 (- lt!825574 (size!20109 input!5506)))))

(declare-fun totalInput!846 () BalanceConc!16624)

(assert (=> b!2207483 (= lt!825574 (size!20109 totalInput!846))))

(declare-fun b!2207484 () Bool)

(assert (=> b!2207484 (= e!1410168 (- lt!825573 1))))

(declare-fun setIsEmpty!19274 () Bool)

(declare-fun setRes!19274 () Bool)

(assert (=> setIsEmpty!19274 setRes!19274))

(declare-fun b!2207485 () Bool)

(declare-fun e!1410169 () Bool)

(declare-fun tp!686294 () Bool)

(declare-fun inv!34855 (Conc!8431) Bool)

(assert (=> b!2207485 (= e!1410169 (and (inv!34855 (c!352625 totalInput!846)) tp!686294))))

(declare-fun b!2207486 () Bool)

(declare-fun e!1410167 () Bool)

(declare-fun tp!686291 () Bool)

(assert (=> b!2207486 (= e!1410167 (and (inv!34855 (c!352625 input!5506)) tp!686291))))

(declare-fun res!948919 () Bool)

(assert (=> start!214726 (=> (not res!948919) (not e!1410171))))

(declare-fun isSuffix!732 (List!25900 List!25900) Bool)

(declare-fun list!9982 (BalanceConc!16624) List!25900)

(assert (=> start!214726 (= res!948919 (isSuffix!732 (list!9982 input!5506) (list!9982 totalInput!846)))))

(assert (=> start!214726 e!1410171))

(declare-fun inv!34856 (BalanceConc!16624) Bool)

(assert (=> start!214726 (and (inv!34856 input!5506) e!1410167)))

(assert (=> start!214726 (and (inv!34856 totalInput!846) e!1410169)))

(declare-fun condSetEmpty!19274 () Bool)

(assert (=> start!214726 (= condSetEmpty!19274 (= z!3830 ((as const (Array Context!3730 Bool)) false)))))

(assert (=> start!214726 setRes!19274))

(declare-fun tp!686292 () Bool)

(declare-fun setElem!19274 () Context!3730)

(declare-fun setNonEmpty!19274 () Bool)

(declare-fun e!1410170 () Bool)

(declare-fun inv!34857 (Context!3730) Bool)

(assert (=> setNonEmpty!19274 (= setRes!19274 (and tp!686292 (inv!34857 setElem!19274) e!1410170))))

(declare-fun setRest!19274 () (InoxSet Context!3730))

(assert (=> setNonEmpty!19274 (= z!3830 ((_ map or) (store ((as const (Array Context!3730 Bool)) false) setElem!19274 true) setRest!19274))))

(declare-fun b!2207487 () Bool)

(declare-fun tp!686293 () Bool)

(assert (=> b!2207487 (= e!1410170 tp!686293)))

(assert (= (and start!214726 res!948919) b!2207483))

(assert (= (and b!2207483 c!352623) b!2207484))

(assert (= (and b!2207483 (not c!352623)) b!2207482))

(assert (= start!214726 b!2207486))

(assert (= start!214726 b!2207485))

(assert (= (and start!214726 condSetEmpty!19274) setIsEmpty!19274))

(assert (= (and start!214726 (not condSetEmpty!19274)) setNonEmpty!19274))

(assert (= setNonEmpty!19274 b!2207487))

(declare-fun m!2649137 () Bool)

(assert (=> b!2207485 m!2649137))

(declare-fun m!2649139 () Bool)

(assert (=> setNonEmpty!19274 m!2649139))

(declare-fun m!2649141 () Bool)

(assert (=> start!214726 m!2649141))

(declare-fun m!2649143 () Bool)

(assert (=> start!214726 m!2649143))

(declare-fun m!2649145 () Bool)

(assert (=> start!214726 m!2649145))

(declare-fun m!2649147 () Bool)

(assert (=> start!214726 m!2649147))

(assert (=> start!214726 m!2649141))

(assert (=> start!214726 m!2649143))

(declare-fun m!2649149 () Bool)

(assert (=> start!214726 m!2649149))

(declare-fun m!2649151 () Bool)

(assert (=> b!2207483 m!2649151))

(declare-fun m!2649153 () Bool)

(assert (=> b!2207483 m!2649153))

(declare-fun m!2649155 () Bool)

(assert (=> b!2207483 m!2649155))

(declare-fun m!2649157 () Bool)

(assert (=> b!2207486 m!2649157))

(check-sat (not b!2207487) (not setNonEmpty!19274) (not b!2207485) (not start!214726) (not b!2207483) (not b!2207486))
(check-sat)
