; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531026 () Bool)

(assert start!531026)

(declare-fun b!5024025 () Bool)

(declare-fun e!3138519 () Bool)

(declare-fun e!3138517 () Bool)

(assert (=> b!5024025 (= e!3138519 (not e!3138517))))

(declare-fun res!2142102 () Bool)

(assert (=> b!5024025 (=> res!2142102 e!3138517)))

(declare-fun lt!2079395 () Int)

(assert (=> b!5024025 (= res!2142102 (> lt!2079395 0))))

(declare-datatypes ((C!28052 0))(
  ( (C!28053 (val!23402 Int)) )
))
(declare-datatypes ((List!58248 0))(
  ( (Nil!58124) (Cons!58124 (h!64572 C!28052) (t!370640 List!58248)) )
))
(declare-fun lt!2079390 () List!58248)

(declare-fun lt!2079392 () List!58248)

(declare-fun take!752 (List!58248 Int) List!58248)

(assert (=> b!5024025 (= lt!2079390 (take!752 lt!2079392 lt!2079395))))

(declare-fun lt!2079388 () List!58248)

(declare-fun from!1228 () Int)

(declare-fun drop!2552 (List!58248 Int) List!58248)

(assert (=> b!5024025 (= lt!2079392 (drop!2552 lt!2079388 (+ 1 from!1228)))))

(declare-datatypes ((IArray!30901 0))(
  ( (IArray!30902 (innerList!15508 List!58248)) )
))
(declare-datatypes ((Conc!15420 0))(
  ( (Node!15420 (left!42505 Conc!15420) (right!42835 Conc!15420) (csize!31070 Int) (cheight!15631 Int)) (Leaf!25584 (xs!18746 IArray!30901) (csize!31071 Int)) (Empty!15420) )
))
(declare-datatypes ((BalanceConc!30270 0))(
  ( (BalanceConc!30271 (c!859001 Conc!15420)) )
))
(declare-fun totalInput!1141 () BalanceConc!30270)

(declare-fun list!18754 (BalanceConc!30270) List!58248)

(assert (=> b!5024025 (= lt!2079388 (list!18754 totalInput!1141))))

(declare-fun e!3138518 () Bool)

(assert (=> b!5024025 e!3138518))

(declare-fun res!2142107 () Bool)

(assert (=> b!5024025 (=> res!2142107 e!3138518)))

(assert (=> b!5024025 (= res!2142107 (= lt!2079395 0))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13901 0))(
  ( (ElementMatch!13901 (c!859002 C!28052)) (Concat!22694 (regOne!28314 Regex!13901) (regTwo!28314 Regex!13901)) (EmptyExpr!13901) (Star!13901 (reg!14230 Regex!13901)) (EmptyLang!13901) (Union!13901 (regOne!28315 Regex!13901) (regTwo!28315 Regex!13901)) )
))
(declare-datatypes ((List!58249 0))(
  ( (Nil!58125) (Cons!58125 (h!64573 Regex!13901) (t!370641 List!58249)) )
))
(declare-datatypes ((Context!6652 0))(
  ( (Context!6653 (exprs!3826 List!58249)) )
))
(declare-fun lt!2079393 () (InoxSet Context!6652))

(declare-datatypes ((Unit!149307 0))(
  ( (Unit!149308) )
))
(declare-fun lt!2079391 () Unit!149307)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!98 ((InoxSet Context!6652) Int BalanceConc!30270) Unit!149307)

(assert (=> b!5024025 (= lt!2079391 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!98 lt!2079393 (+ 1 from!1228) totalInput!1141))))

(declare-fun lt!2079394 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!215 ((InoxSet Context!6652) Int BalanceConc!30270 Int) Int)

(assert (=> b!5024025 (= lt!2079395 (findLongestMatchInnerZipperFastV2!215 lt!2079393 (+ 1 from!1228) totalInput!1141 lt!2079394))))

(declare-fun z!4747 () (InoxSet Context!6652))

(declare-fun lt!2079396 () C!28052)

(declare-fun derivationStepZipper!697 ((InoxSet Context!6652) C!28052) (InoxSet Context!6652))

(assert (=> b!5024025 (= lt!2079393 (derivationStepZipper!697 z!4747 lt!2079396))))

(declare-fun apply!14124 (BalanceConc!30270 Int) C!28052)

(assert (=> b!5024025 (= lt!2079396 (apply!14124 totalInput!1141 from!1228))))

(declare-fun b!5024026 () Bool)

(declare-fun e!3138520 () Bool)

(assert (=> b!5024026 (= e!3138517 e!3138520)))

(declare-fun res!2142104 () Bool)

(assert (=> b!5024026 (=> res!2142104 e!3138520)))

(declare-fun lt!2079387 () List!58248)

(assert (=> b!5024026 (= res!2142104 (not (= lt!2079387 (Cons!58124 lt!2079396 Nil!58124))))))

(declare-fun apply!14125 (List!58248 Int) C!28052)

(assert (=> b!5024026 (= (Cons!58124 (apply!14125 lt!2079388 from!1228) (take!752 lt!2079392 0)) lt!2079387)))

(declare-fun lt!2079389 () Unit!149307)

(declare-fun lemmaDropTakeAddOneLeft!86 (List!58248 Int Int) Unit!149307)

(assert (=> b!5024026 (= lt!2079389 (lemmaDropTakeAddOneLeft!86 lt!2079388 from!1228 0))))

(assert (=> b!5024026 (= lt!2079387 (take!752 (drop!2552 lt!2079388 from!1228) 1))))

(declare-fun b!5024027 () Bool)

(declare-fun res!2142103 () Bool)

(assert (=> b!5024027 (=> (not res!2142103) (not e!3138519))))

(declare-fun lostCauseZipper!915 ((InoxSet Context!6652)) Bool)

(assert (=> b!5024027 (= res!2142103 (not (lostCauseZipper!915 z!4747)))))

(declare-fun b!5024028 () Bool)

(declare-fun e!3138515 () Bool)

(declare-fun tp!1408454 () Bool)

(assert (=> b!5024028 (= e!3138515 tp!1408454)))

(declare-fun b!5024029 () Bool)

(declare-fun e!3138516 () Bool)

(assert (=> b!5024029 (= e!3138516 e!3138519)))

(declare-fun res!2142105 () Bool)

(assert (=> b!5024029 (=> (not res!2142105) (not e!3138519))))

(assert (=> b!5024029 (= res!2142105 (<= from!1228 lt!2079394))))

(declare-fun size!38676 (BalanceConc!30270) Int)

(assert (=> b!5024029 (= lt!2079394 (size!38676 totalInput!1141))))

(declare-fun b!5024030 () Bool)

(declare-fun res!2142106 () Bool)

(assert (=> b!5024030 (=> res!2142106 e!3138520)))

(declare-fun matchZipper!655 ((InoxSet Context!6652) List!58248) Bool)

(assert (=> b!5024030 (= res!2142106 (not (matchZipper!655 lt!2079393 Nil!58124)))))

(declare-fun b!5024024 () Bool)

(assert (=> b!5024024 (= e!3138520 true)))

(declare-fun lt!2079386 () Int)

(assert (=> b!5024024 (= lt!2079386 (findLongestMatchInnerZipperFastV2!215 z!4747 from!1228 totalInput!1141 lt!2079394))))

(declare-fun res!2142099 () Bool)

(assert (=> start!531026 (=> (not res!2142099) (not e!3138516))))

(assert (=> start!531026 (= res!2142099 (>= from!1228 0))))

(assert (=> start!531026 e!3138516))

(assert (=> start!531026 true))

(declare-fun e!3138521 () Bool)

(declare-fun inv!76602 (BalanceConc!30270) Bool)

(assert (=> start!531026 (and (inv!76602 totalInput!1141) e!3138521)))

(declare-fun condSetEmpty!28826 () Bool)

(assert (=> start!531026 (= condSetEmpty!28826 (= z!4747 ((as const (Array Context!6652 Bool)) false)))))

(declare-fun setRes!28826 () Bool)

(assert (=> start!531026 setRes!28826))

(declare-fun b!5024031 () Bool)

(assert (=> b!5024031 (= e!3138518 (matchZipper!655 lt!2079393 (take!752 (drop!2552 (list!18754 totalInput!1141) (+ 1 from!1228)) lt!2079395)))))

(declare-fun b!5024032 () Bool)

(declare-fun res!2142101 () Bool)

(assert (=> b!5024032 (=> res!2142101 e!3138517)))

(declare-fun nullableZipper!918 ((InoxSet Context!6652)) Bool)

(assert (=> b!5024032 (= res!2142101 (not (nullableZipper!918 lt!2079393)))))

(declare-fun setElem!28826 () Context!6652)

(declare-fun setNonEmpty!28826 () Bool)

(declare-fun tp!1408456 () Bool)

(declare-fun inv!76603 (Context!6652) Bool)

(assert (=> setNonEmpty!28826 (= setRes!28826 (and tp!1408456 (inv!76603 setElem!28826) e!3138515))))

(declare-fun setRest!28826 () (InoxSet Context!6652))

(assert (=> setNonEmpty!28826 (= z!4747 ((_ map or) (store ((as const (Array Context!6652 Bool)) false) setElem!28826 true) setRest!28826))))

(declare-fun b!5024033 () Bool)

(declare-fun tp!1408455 () Bool)

(declare-fun inv!76604 (Conc!15420) Bool)

(assert (=> b!5024033 (= e!3138521 (and (inv!76604 (c!859001 totalInput!1141)) tp!1408455))))

(declare-fun setIsEmpty!28826 () Bool)

(assert (=> setIsEmpty!28826 setRes!28826))

(declare-fun b!5024034 () Bool)

(declare-fun res!2142100 () Bool)

(assert (=> b!5024034 (=> (not res!2142100) (not e!3138519))))

(assert (=> b!5024034 (= res!2142100 (not (= from!1228 lt!2079394)))))

(assert (= (and start!531026 res!2142099) b!5024029))

(assert (= (and b!5024029 res!2142105) b!5024027))

(assert (= (and b!5024027 res!2142103) b!5024034))

(assert (= (and b!5024034 res!2142100) b!5024025))

(assert (= (and b!5024025 (not res!2142107)) b!5024031))

(assert (= (and b!5024025 (not res!2142102)) b!5024032))

(assert (= (and b!5024032 (not res!2142101)) b!5024026))

(assert (= (and b!5024026 (not res!2142104)) b!5024030))

(assert (= (and b!5024030 (not res!2142106)) b!5024024))

(assert (= start!531026 b!5024033))

(assert (= (and start!531026 condSetEmpty!28826) setIsEmpty!28826))

(assert (= (and start!531026 (not condSetEmpty!28826)) setNonEmpty!28826))

(assert (= setNonEmpty!28826 b!5024028))

(declare-fun m!6059260 () Bool)

(assert (=> setNonEmpty!28826 m!6059260))

(declare-fun m!6059262 () Bool)

(assert (=> b!5024029 m!6059262))

(declare-fun m!6059264 () Bool)

(assert (=> b!5024027 m!6059264))

(declare-fun m!6059266 () Bool)

(assert (=> b!5024030 m!6059266))

(declare-fun m!6059268 () Bool)

(assert (=> b!5024032 m!6059268))

(declare-fun m!6059270 () Bool)

(assert (=> b!5024031 m!6059270))

(assert (=> b!5024031 m!6059270))

(declare-fun m!6059272 () Bool)

(assert (=> b!5024031 m!6059272))

(assert (=> b!5024031 m!6059272))

(declare-fun m!6059274 () Bool)

(assert (=> b!5024031 m!6059274))

(assert (=> b!5024031 m!6059274))

(declare-fun m!6059276 () Bool)

(assert (=> b!5024031 m!6059276))

(declare-fun m!6059278 () Bool)

(assert (=> b!5024033 m!6059278))

(declare-fun m!6059280 () Bool)

(assert (=> b!5024024 m!6059280))

(declare-fun m!6059282 () Bool)

(assert (=> start!531026 m!6059282))

(declare-fun m!6059284 () Bool)

(assert (=> b!5024025 m!6059284))

(declare-fun m!6059286 () Bool)

(assert (=> b!5024025 m!6059286))

(declare-fun m!6059288 () Bool)

(assert (=> b!5024025 m!6059288))

(declare-fun m!6059290 () Bool)

(assert (=> b!5024025 m!6059290))

(assert (=> b!5024025 m!6059270))

(declare-fun m!6059292 () Bool)

(assert (=> b!5024025 m!6059292))

(declare-fun m!6059294 () Bool)

(assert (=> b!5024025 m!6059294))

(declare-fun m!6059296 () Bool)

(assert (=> b!5024026 m!6059296))

(declare-fun m!6059298 () Bool)

(assert (=> b!5024026 m!6059298))

(declare-fun m!6059300 () Bool)

(assert (=> b!5024026 m!6059300))

(declare-fun m!6059302 () Bool)

(assert (=> b!5024026 m!6059302))

(assert (=> b!5024026 m!6059298))

(declare-fun m!6059304 () Bool)

(assert (=> b!5024026 m!6059304))

(check-sat (not b!5024025) (not b!5024027) (not b!5024024) (not setNonEmpty!28826) (not b!5024032) (not b!5024029) (not start!531026) (not b!5024033) (not b!5024031) (not b!5024030) (not b!5024026) (not b!5024028))
(check-sat)
