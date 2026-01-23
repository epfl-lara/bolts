; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212722 () Bool)

(assert start!212722)

(declare-fun b!2193162 () Bool)

(declare-fun e!1401598 () Bool)

(declare-fun tp!683505 () Bool)

(assert (=> b!2193162 (= e!1401598 tp!683505)))

(declare-fun b!2193163 () Bool)

(declare-fun res!942894 () Bool)

(declare-fun e!1401601 () Bool)

(assert (=> b!2193163 (=> (not res!942894) (not e!1401601))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12432 0))(
  ( (C!12433 (val!7202 Int)) )
))
(declare-datatypes ((Regex!6143 0))(
  ( (ElementMatch!6143 (c!348932 C!12432)) (Concat!10445 (regOne!12798 Regex!6143) (regTwo!12798 Regex!6143)) (EmptyExpr!6143) (Star!6143 (reg!6472 Regex!6143)) (EmptyLang!6143) (Union!6143 (regOne!12799 Regex!6143) (regTwo!12799 Regex!6143)) )
))
(declare-datatypes ((List!25564 0))(
  ( (Nil!25480) (Cons!25480 (h!30881 Regex!6143) (t!198162 List!25564)) )
))
(declare-datatypes ((Context!3426 0))(
  ( (Context!3427 (exprs!2213 List!25564)) )
))
(declare-fun z!3955 () (InoxSet Context!3426))

(declare-fun lostCauseZipper!261 ((InoxSet Context!3426)) Bool)

(assert (=> b!2193163 (= res!942894 (not (lostCauseZipper!261 z!3955)))))

(declare-fun b!2193164 () Bool)

(declare-fun e!1401599 () Bool)

(assert (=> b!2193164 (= e!1401601 e!1401599)))

(declare-fun res!942891 () Bool)

(assert (=> b!2193164 (=> (not res!942891) (not e!1401599))))

(declare-fun lt!820068 () Int)

(declare-fun lt!820072 () Int)

(assert (=> b!2193164 (= res!942891 (= lt!820068 lt!820072))))

(declare-datatypes ((List!25565 0))(
  ( (Nil!25481) (Cons!25481 (h!30882 C!12432) (t!198163 List!25565)) )
))
(declare-datatypes ((IArray!16563 0))(
  ( (IArray!16564 (innerList!8339 List!25565)) )
))
(declare-datatypes ((Conc!8279 0))(
  ( (Node!8279 (left!19553 Conc!8279) (right!19883 Conc!8279) (csize!16788 Int) (cheight!8490 Int)) (Leaf!12118 (xs!11221 IArray!16563) (csize!16789 Int)) (Empty!8279) )
))
(declare-datatypes ((BalanceConc!16320 0))(
  ( (BalanceConc!16321 (c!348933 Conc!8279)) )
))
(declare-fun totalInput!923 () BalanceConc!16320)

(declare-fun lt!820066 () Int)

(declare-fun lt!820067 () Int)

(declare-fun from!1114 () Int)

(declare-fun lt!820070 () (InoxSet Context!3426))

(declare-fun furthestNullablePosition!313 ((InoxSet Context!3426) Int BalanceConc!16320 Int Int) Int)

(assert (=> b!2193164 (= lt!820072 (furthestNullablePosition!313 lt!820070 (+ 1 from!1114) totalInput!923 lt!820066 lt!820067))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2193164 (= lt!820068 (furthestNullablePosition!313 z!3955 from!1114 totalInput!923 lt!820066 lastNullablePos!193))))

(declare-fun e!1401597 () Int)

(assert (=> b!2193164 (= lt!820067 e!1401597)))

(declare-fun c!348931 () Bool)

(declare-fun nullableZipper!423 ((InoxSet Context!3426)) Bool)

(assert (=> b!2193164 (= c!348931 (nullableZipper!423 lt!820070))))

(declare-fun derivationStepZipper!217 ((InoxSet Context!3426) C!12432) (InoxSet Context!3426))

(declare-fun apply!6193 (BalanceConc!16320 Int) C!12432)

(assert (=> b!2193164 (= lt!820070 (derivationStepZipper!217 z!3955 (apply!6193 totalInput!923 from!1114)))))

(declare-fun res!942895 () Bool)

(declare-fun e!1401600 () Bool)

(assert (=> start!212722 (=> (not res!942895) (not e!1401600))))

(assert (=> start!212722 (= res!942895 (>= from!1114 0))))

(assert (=> start!212722 e!1401600))

(assert (=> start!212722 true))

(declare-fun e!1401596 () Bool)

(declare-fun inv!34061 (BalanceConc!16320) Bool)

(assert (=> start!212722 (and (inv!34061 totalInput!923) e!1401596)))

(declare-fun condSetEmpty!18672 () Bool)

(assert (=> start!212722 (= condSetEmpty!18672 (= z!3955 ((as const (Array Context!3426 Bool)) false)))))

(declare-fun setRes!18672 () Bool)

(assert (=> start!212722 setRes!18672))

(declare-fun e!1401595 () Bool)

(declare-fun lt!820069 () Int)

(declare-fun b!2193165 () Bool)

(declare-fun matchZipper!239 ((InoxSet Context!3426) List!25565) Bool)

(declare-fun take!331 (List!25565 Int) List!25565)

(declare-fun drop!1341 (List!25565 Int) List!25565)

(declare-fun list!9791 (BalanceConc!16320) List!25565)

(assert (=> b!2193165 (= e!1401595 (matchZipper!239 lt!820070 (take!331 (drop!1341 (list!9791 totalInput!923) (+ 1 from!1114)) lt!820069)))))

(declare-fun b!2193166 () Bool)

(declare-fun e!1401594 () Bool)

(assert (=> b!2193166 (= e!1401594 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun tp!683504 () Bool)

(declare-fun setElem!18672 () Context!3426)

(declare-fun setNonEmpty!18672 () Bool)

(declare-fun inv!34062 (Context!3426) Bool)

(assert (=> setNonEmpty!18672 (= setRes!18672 (and tp!683504 (inv!34062 setElem!18672) e!1401598))))

(declare-fun setRest!18672 () (InoxSet Context!3426))

(assert (=> setNonEmpty!18672 (= z!3955 ((_ map or) (store ((as const (Array Context!3426 Bool)) false) setElem!18672 true) setRest!18672))))

(declare-fun b!2193167 () Bool)

(assert (=> b!2193167 (= e!1401600 e!1401601)))

(declare-fun res!942890 () Bool)

(assert (=> b!2193167 (=> (not res!942890) (not e!1401601))))

(assert (=> b!2193167 (= res!942890 (and (<= from!1114 lt!820066) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19873 (BalanceConc!16320) Int)

(assert (=> b!2193167 (= lt!820066 (size!19873 totalInput!923))))

(declare-fun b!2193168 () Bool)

(assert (=> b!2193168 (= e!1401597 from!1114)))

(declare-fun b!2193169 () Bool)

(assert (=> b!2193169 (= e!1401599 (not (or (> lt!820069 0) (> lt!820072 from!1114) (< lt!820072 lt!820067) (< lt!820067 lastNullablePos!193) (> lt!820067 from!1114) (= lt!820067 from!1114) (= lt!820067 lastNullablePos!193))))))

(assert (=> b!2193169 e!1401595))

(declare-fun res!942888 () Bool)

(assert (=> b!2193169 (=> res!942888 e!1401595)))

(assert (=> b!2193169 (= res!942888 (<= lt!820069 0))))

(assert (=> b!2193169 (= lt!820069 (+ 1 (- lt!820072 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38593 0))(
  ( (Unit!38594) )
))
(declare-fun lt!820071 () Unit!38593)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!142 ((InoxSet Context!3426) Int BalanceConc!16320 Int) Unit!38593)

(assert (=> b!2193169 (= lt!820071 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!142 lt!820070 (+ 1 from!1114) totalInput!923 lt!820067))))

(declare-fun b!2193170 () Bool)

(declare-fun res!942893 () Bool)

(assert (=> b!2193170 (=> (not res!942893) (not e!1401601))))

(assert (=> b!2193170 (= res!942893 (not (= from!1114 lt!820066)))))

(declare-fun b!2193171 () Bool)

(declare-fun tp!683506 () Bool)

(declare-fun inv!34063 (Conc!8279) Bool)

(assert (=> b!2193171 (= e!1401596 (and (inv!34063 (c!348933 totalInput!923)) tp!683506))))

(declare-fun b!2193172 () Bool)

(declare-fun res!942892 () Bool)

(assert (=> b!2193172 (=> (not res!942892) (not e!1401601))))

(assert (=> b!2193172 (= res!942892 e!1401594)))

(declare-fun res!942889 () Bool)

(assert (=> b!2193172 (=> res!942889 e!1401594)))

(assert (=> b!2193172 (= res!942889 (not (nullableZipper!423 z!3955)))))

(declare-fun setIsEmpty!18672 () Bool)

(assert (=> setIsEmpty!18672 setRes!18672))

(declare-fun b!2193173 () Bool)

(assert (=> b!2193173 (= e!1401597 lastNullablePos!193)))

(assert (= (and start!212722 res!942895) b!2193167))

(assert (= (and b!2193167 res!942890) b!2193172))

(assert (= (and b!2193172 (not res!942889)) b!2193166))

(assert (= (and b!2193172 res!942892) b!2193170))

(assert (= (and b!2193170 res!942893) b!2193163))

(assert (= (and b!2193163 res!942894) b!2193164))

(assert (= (and b!2193164 c!348931) b!2193168))

(assert (= (and b!2193164 (not c!348931)) b!2193173))

(assert (= (and b!2193164 res!942891) b!2193169))

(assert (= (and b!2193169 (not res!942888)) b!2193165))

(assert (= start!212722 b!2193171))

(assert (= (and start!212722 condSetEmpty!18672) setIsEmpty!18672))

(assert (= (and start!212722 (not condSetEmpty!18672)) setNonEmpty!18672))

(assert (= setNonEmpty!18672 b!2193162))

(declare-fun m!2635755 () Bool)

(assert (=> b!2193169 m!2635755))

(declare-fun m!2635757 () Bool)

(assert (=> b!2193171 m!2635757))

(declare-fun m!2635759 () Bool)

(assert (=> b!2193164 m!2635759))

(declare-fun m!2635761 () Bool)

(assert (=> b!2193164 m!2635761))

(declare-fun m!2635763 () Bool)

(assert (=> b!2193164 m!2635763))

(declare-fun m!2635765 () Bool)

(assert (=> b!2193164 m!2635765))

(assert (=> b!2193164 m!2635763))

(declare-fun m!2635767 () Bool)

(assert (=> b!2193164 m!2635767))

(declare-fun m!2635769 () Bool)

(assert (=> b!2193167 m!2635769))

(declare-fun m!2635771 () Bool)

(assert (=> b!2193172 m!2635771))

(declare-fun m!2635773 () Bool)

(assert (=> b!2193165 m!2635773))

(assert (=> b!2193165 m!2635773))

(declare-fun m!2635775 () Bool)

(assert (=> b!2193165 m!2635775))

(assert (=> b!2193165 m!2635775))

(declare-fun m!2635777 () Bool)

(assert (=> b!2193165 m!2635777))

(assert (=> b!2193165 m!2635777))

(declare-fun m!2635779 () Bool)

(assert (=> b!2193165 m!2635779))

(declare-fun m!2635781 () Bool)

(assert (=> setNonEmpty!18672 m!2635781))

(declare-fun m!2635783 () Bool)

(assert (=> start!212722 m!2635783))

(declare-fun m!2635785 () Bool)

(assert (=> b!2193163 m!2635785))

(check-sat (not b!2193167) (not b!2193163) (not b!2193172) (not start!212722) (not setNonEmpty!18672) (not b!2193162) (not b!2193171) (not b!2193164) (not b!2193169) (not b!2193165))
(check-sat)
