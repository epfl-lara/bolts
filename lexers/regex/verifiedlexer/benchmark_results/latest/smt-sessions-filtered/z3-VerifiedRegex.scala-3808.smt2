; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212482 () Bool)

(assert start!212482)

(declare-fun res!941159 () Bool)

(declare-fun e!1399672 () Bool)

(assert (=> start!212482 (=> (not res!941159) (not e!1399672))))

(declare-fun from!1114 () Int)

(assert (=> start!212482 (= res!941159 (>= from!1114 0))))

(assert (=> start!212482 e!1399672))

(assert (=> start!212482 true))

(declare-datatypes ((C!12312 0))(
  ( (C!12313 (val!7142 Int)) )
))
(declare-datatypes ((List!25439 0))(
  ( (Nil!25355) (Cons!25355 (h!30756 C!12312) (t!198037 List!25439)) )
))
(declare-datatypes ((IArray!16443 0))(
  ( (IArray!16444 (innerList!8279 List!25439)) )
))
(declare-datatypes ((Conc!8219 0))(
  ( (Node!8219 (left!19455 Conc!8219) (right!19785 Conc!8219) (csize!16668 Int) (cheight!8430 Int)) (Leaf!12028 (xs!11161 IArray!16443) (csize!16669 Int)) (Empty!8219) )
))
(declare-datatypes ((BalanceConc!16200 0))(
  ( (BalanceConc!16201 (c!348442 Conc!8219)) )
))
(declare-fun totalInput!923 () BalanceConc!16200)

(declare-fun e!1399673 () Bool)

(declare-fun inv!33774 (BalanceConc!16200) Bool)

(assert (=> start!212482 (and (inv!33774 totalInput!923) e!1399673)))

(declare-fun condSetEmpty!18474 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6083 0))(
  ( (ElementMatch!6083 (c!348443 C!12312)) (Concat!10385 (regOne!12678 Regex!6083) (regTwo!12678 Regex!6083)) (EmptyExpr!6083) (Star!6083 (reg!6412 Regex!6083)) (EmptyLang!6083) (Union!6083 (regOne!12679 Regex!6083) (regTwo!12679 Regex!6083)) )
))
(declare-datatypes ((List!25440 0))(
  ( (Nil!25356) (Cons!25356 (h!30757 Regex!6083) (t!198038 List!25440)) )
))
(declare-datatypes ((Context!3306 0))(
  ( (Context!3307 (exprs!2153 List!25440)) )
))
(declare-fun z!3955 () (InoxSet Context!3306))

(assert (=> start!212482 (= condSetEmpty!18474 (= z!3955 ((as const (Array Context!3306 Bool)) false)))))

(declare-fun setRes!18474 () Bool)

(assert (=> start!212482 setRes!18474))

(declare-fun b!2190332 () Bool)

(declare-fun res!941160 () Bool)

(declare-fun e!1399669 () Bool)

(assert (=> b!2190332 (=> (not res!941160) (not e!1399669))))

(declare-fun lt!818301 () Int)

(assert (=> b!2190332 (= res!941160 (not (= from!1114 lt!818301)))))

(declare-fun setIsEmpty!18474 () Bool)

(assert (=> setIsEmpty!18474 setRes!18474))

(declare-fun lt!818306 () Int)

(declare-fun b!2190333 () Bool)

(declare-fun e!1399671 () Bool)

(declare-fun lt!818300 () (InoxSet Context!3306))

(declare-fun matchZipper!183 ((InoxSet Context!3306) List!25439) Bool)

(declare-fun take!275 (List!25439 Int) List!25439)

(declare-fun drop!1285 (List!25439 Int) List!25439)

(declare-fun list!9730 (BalanceConc!16200) List!25439)

(assert (=> b!2190333 (= e!1399671 (matchZipper!183 lt!818300 (take!275 (drop!1285 (list!9730 totalInput!923) (+ 1 from!1114)) lt!818306)))))

(declare-fun b!2190334 () Bool)

(declare-fun e!1399674 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2190334 (= e!1399674 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2190335 () Bool)

(declare-fun e!1399675 () Bool)

(declare-fun tp!682838 () Bool)

(assert (=> b!2190335 (= e!1399675 tp!682838)))

(declare-fun b!2190336 () Bool)

(declare-fun res!941162 () Bool)

(assert (=> b!2190336 (=> (not res!941162) (not e!1399669))))

(assert (=> b!2190336 (= res!941162 e!1399674)))

(declare-fun res!941161 () Bool)

(assert (=> b!2190336 (=> res!941161 e!1399674)))

(declare-fun nullableZipper!363 ((InoxSet Context!3306)) Bool)

(assert (=> b!2190336 (= res!941161 (not (nullableZipper!363 z!3955)))))

(declare-fun b!2190337 () Bool)

(declare-fun lt!818305 () Int)

(declare-fun e!1399668 () Bool)

(assert (=> b!2190337 (= e!1399668 (not (or (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818301) (and (>= lt!818305 (- 1)) (< lt!818305 (+ 1 from!1114))))))))

(assert (=> b!2190337 e!1399671))

(declare-fun res!941157 () Bool)

(assert (=> b!2190337 (=> res!941157 e!1399671)))

(assert (=> b!2190337 (= res!941157 (<= lt!818306 0))))

(declare-fun lt!818304 () Int)

(assert (=> b!2190337 (= lt!818306 (+ 1 (- lt!818304 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38461 0))(
  ( (Unit!38462) )
))
(declare-fun lt!818302 () Unit!38461)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!88 ((InoxSet Context!3306) Int BalanceConc!16200 Int) Unit!38461)

(assert (=> b!2190337 (= lt!818302 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!88 lt!818300 (+ 1 from!1114) totalInput!923 lt!818305))))

(declare-fun b!2190338 () Bool)

(declare-fun e!1399670 () Int)

(assert (=> b!2190338 (= e!1399670 from!1114)))

(declare-fun b!2190339 () Bool)

(declare-fun res!941156 () Bool)

(assert (=> b!2190339 (=> (not res!941156) (not e!1399669))))

(declare-fun lostCauseZipper!201 ((InoxSet Context!3306)) Bool)

(assert (=> b!2190339 (= res!941156 (not (lostCauseZipper!201 z!3955)))))

(declare-fun b!2190340 () Bool)

(declare-fun tp!682839 () Bool)

(declare-fun inv!33775 (Conc!8219) Bool)

(assert (=> b!2190340 (= e!1399673 (and (inv!33775 (c!348442 totalInput!923)) tp!682839))))

(declare-fun b!2190341 () Bool)

(assert (=> b!2190341 (= e!1399669 e!1399668)))

(declare-fun res!941158 () Bool)

(assert (=> b!2190341 (=> (not res!941158) (not e!1399668))))

(declare-fun lt!818303 () Int)

(assert (=> b!2190341 (= res!941158 (= lt!818303 lt!818304))))

(declare-fun furthestNullablePosition!253 ((InoxSet Context!3306) Int BalanceConc!16200 Int Int) Int)

(assert (=> b!2190341 (= lt!818304 (furthestNullablePosition!253 lt!818300 (+ 1 from!1114) totalInput!923 lt!818301 lt!818305))))

(assert (=> b!2190341 (= lt!818303 (furthestNullablePosition!253 z!3955 from!1114 totalInput!923 lt!818301 lastNullablePos!193))))

(assert (=> b!2190341 (= lt!818305 e!1399670)))

(declare-fun c!348441 () Bool)

(assert (=> b!2190341 (= c!348441 (nullableZipper!363 lt!818300))))

(declare-fun derivationStepZipper!160 ((InoxSet Context!3306) C!12312) (InoxSet Context!3306))

(declare-fun apply!6116 (BalanceConc!16200 Int) C!12312)

(assert (=> b!2190341 (= lt!818300 (derivationStepZipper!160 z!3955 (apply!6116 totalInput!923 from!1114)))))

(declare-fun setNonEmpty!18474 () Bool)

(declare-fun setElem!18474 () Context!3306)

(declare-fun tp!682840 () Bool)

(declare-fun inv!33776 (Context!3306) Bool)

(assert (=> setNonEmpty!18474 (= setRes!18474 (and tp!682840 (inv!33776 setElem!18474) e!1399675))))

(declare-fun setRest!18474 () (InoxSet Context!3306))

(assert (=> setNonEmpty!18474 (= z!3955 ((_ map or) (store ((as const (Array Context!3306 Bool)) false) setElem!18474 true) setRest!18474))))

(declare-fun b!2190342 () Bool)

(assert (=> b!2190342 (= e!1399672 e!1399669)))

(declare-fun res!941163 () Bool)

(assert (=> b!2190342 (=> (not res!941163) (not e!1399669))))

(assert (=> b!2190342 (= res!941163 (and (<= from!1114 lt!818301) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19799 (BalanceConc!16200) Int)

(assert (=> b!2190342 (= lt!818301 (size!19799 totalInput!923))))

(declare-fun b!2190343 () Bool)

(assert (=> b!2190343 (= e!1399670 lastNullablePos!193)))

(assert (= (and start!212482 res!941159) b!2190342))

(assert (= (and b!2190342 res!941163) b!2190336))

(assert (= (and b!2190336 (not res!941161)) b!2190334))

(assert (= (and b!2190336 res!941162) b!2190332))

(assert (= (and b!2190332 res!941160) b!2190339))

(assert (= (and b!2190339 res!941156) b!2190341))

(assert (= (and b!2190341 c!348441) b!2190338))

(assert (= (and b!2190341 (not c!348441)) b!2190343))

(assert (= (and b!2190341 res!941158) b!2190337))

(assert (= (and b!2190337 (not res!941157)) b!2190333))

(assert (= start!212482 b!2190340))

(assert (= (and start!212482 condSetEmpty!18474) setIsEmpty!18474))

(assert (= (and start!212482 (not condSetEmpty!18474)) setNonEmpty!18474))

(assert (= setNonEmpty!18474 b!2190335))

(declare-fun m!2633219 () Bool)

(assert (=> b!2190342 m!2633219))

(declare-fun m!2633221 () Bool)

(assert (=> b!2190336 m!2633221))

(declare-fun m!2633223 () Bool)

(assert (=> b!2190341 m!2633223))

(declare-fun m!2633225 () Bool)

(assert (=> b!2190341 m!2633225))

(declare-fun m!2633227 () Bool)

(assert (=> b!2190341 m!2633227))

(assert (=> b!2190341 m!2633225))

(declare-fun m!2633229 () Bool)

(assert (=> b!2190341 m!2633229))

(declare-fun m!2633231 () Bool)

(assert (=> b!2190341 m!2633231))

(declare-fun m!2633233 () Bool)

(assert (=> b!2190333 m!2633233))

(assert (=> b!2190333 m!2633233))

(declare-fun m!2633235 () Bool)

(assert (=> b!2190333 m!2633235))

(assert (=> b!2190333 m!2633235))

(declare-fun m!2633237 () Bool)

(assert (=> b!2190333 m!2633237))

(assert (=> b!2190333 m!2633237))

(declare-fun m!2633239 () Bool)

(assert (=> b!2190333 m!2633239))

(declare-fun m!2633241 () Bool)

(assert (=> start!212482 m!2633241))

(declare-fun m!2633243 () Bool)

(assert (=> b!2190337 m!2633243))

(declare-fun m!2633245 () Bool)

(assert (=> b!2190339 m!2633245))

(declare-fun m!2633247 () Bool)

(assert (=> setNonEmpty!18474 m!2633247))

(declare-fun m!2633249 () Bool)

(assert (=> b!2190340 m!2633249))

(check-sat (not b!2190333) (not b!2190335) (not b!2190339) (not b!2190340) (not setNonEmpty!18474) (not b!2190336) (not start!212482) (not b!2190337) (not b!2190342) (not b!2190341))
(check-sat)
