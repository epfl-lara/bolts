; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213638 () Bool)

(assert start!213638)

(declare-fun setIsEmpty!18966 () Bool)

(declare-fun setRes!18966 () Bool)

(assert (=> setIsEmpty!18966 setRes!18966))

(declare-fun b!2200604 () Bool)

(declare-fun res!946056 () Bool)

(declare-fun e!1406198 () Bool)

(assert (=> b!2200604 (=> (not res!946056) (not e!1406198))))

(declare-fun knownSize!10 () Int)

(declare-fun from!1082 () Int)

(declare-fun lt!823155 () Int)

(assert (=> b!2200604 (= res!946056 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!823155))))))

(declare-fun b!2200605 () Bool)

(declare-fun e!1406202 () Bool)

(assert (=> b!2200605 (= e!1406202 true)))

(declare-fun lt!823152 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12588 0))(
  ( (C!12589 (val!7280 Int)) )
))
(declare-datatypes ((Regex!6221 0))(
  ( (ElementMatch!6221 (c!350924 C!12588)) (Concat!10523 (regOne!12954 Regex!6221) (regTwo!12954 Regex!6221)) (EmptyExpr!6221) (Star!6221 (reg!6550 Regex!6221)) (EmptyLang!6221) (Union!6221 (regOne!12955 Regex!6221) (regTwo!12955 Regex!6221)) )
))
(declare-datatypes ((List!25736 0))(
  ( (Nil!25652) (Cons!25652 (h!31053 Regex!6221) (t!198354 List!25736)) )
))
(declare-datatypes ((Context!3582 0))(
  ( (Context!3583 (exprs!2291 List!25736)) )
))
(declare-fun lt!823150 () (InoxSet Context!3582))

(declare-datatypes ((List!25737 0))(
  ( (Nil!25653) (Cons!25653 (h!31054 C!12588) (t!198355 List!25737)) )
))
(declare-fun lt!823156 () List!25737)

(declare-fun matchZipper!307 ((InoxSet Context!3582) List!25737) Bool)

(assert (=> b!2200605 (= lt!823152 (matchZipper!307 lt!823150 lt!823156))))

(declare-fun b!2200606 () Bool)

(declare-fun res!946061 () Bool)

(assert (=> b!2200606 (=> (not res!946061) (not e!1406198))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2200606 (= res!946061 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200607 () Bool)

(declare-fun e!1406199 () Bool)

(declare-fun tp!684804 () Bool)

(assert (=> b!2200607 (= e!1406199 tp!684804)))

(declare-fun b!2200608 () Bool)

(declare-fun e!1406197 () Bool)

(assert (=> b!2200608 (= e!1406197 e!1406198)))

(declare-fun res!946055 () Bool)

(assert (=> b!2200608 (=> (not res!946055) (not e!1406198))))

(declare-fun z!3888 () (InoxSet Context!3582))

(declare-fun lt!823149 () List!25737)

(assert (=> b!2200608 (= res!946055 (matchZipper!307 z!3888 lt!823149))))

(declare-fun lt!823154 () List!25737)

(declare-fun take!399 (List!25737 Int) List!25737)

(assert (=> b!2200608 (= lt!823149 (take!399 lt!823154 knownSize!10))))

(declare-fun lt!823158 () List!25737)

(declare-fun drop!1409 (List!25737 Int) List!25737)

(assert (=> b!2200608 (= lt!823154 (drop!1409 lt!823158 from!1082))))

(declare-datatypes ((IArray!16719 0))(
  ( (IArray!16720 (innerList!8417 List!25737)) )
))
(declare-datatypes ((Conc!8357 0))(
  ( (Node!8357 (left!19702 Conc!8357) (right!20032 Conc!8357) (csize!16944 Int) (cheight!8568 Int)) (Leaf!12235 (xs!11299 IArray!16719) (csize!16945 Int)) (Empty!8357) )
))
(declare-datatypes ((BalanceConc!16476 0))(
  ( (BalanceConc!16477 (c!350925 Conc!8357)) )
))
(declare-fun totalInput!891 () BalanceConc!16476)

(declare-fun list!9879 (BalanceConc!16476) List!25737)

(assert (=> b!2200608 (= lt!823158 (list!9879 totalInput!891))))

(declare-fun setNonEmpty!18966 () Bool)

(declare-fun setElem!18966 () Context!3582)

(declare-fun tp!684802 () Bool)

(declare-fun inv!34453 (Context!3582) Bool)

(assert (=> setNonEmpty!18966 (= setRes!18966 (and tp!684802 (inv!34453 setElem!18966) e!1406199))))

(declare-fun setRest!18966 () (InoxSet Context!3582))

(assert (=> setNonEmpty!18966 (= z!3888 ((_ map or) (store ((as const (Array Context!3582 Bool)) false) setElem!18966 true) setRest!18966))))

(declare-fun b!2200609 () Bool)

(declare-fun res!946058 () Bool)

(assert (=> b!2200609 (=> (not res!946058) (not e!1406198))))

(declare-fun isEmpty!14631 (BalanceConc!16476) Bool)

(assert (=> b!2200609 (= res!946058 (not (isEmpty!14631 totalInput!891)))))

(declare-fun b!2200610 () Bool)

(declare-fun e!1406196 () Int)

(assert (=> b!2200610 (= e!1406196 lastNullablePos!161)))

(declare-fun b!2200611 () Bool)

(declare-fun e!1406200 () Bool)

(declare-fun tp!684803 () Bool)

(declare-fun inv!34454 (Conc!8357) Bool)

(assert (=> b!2200611 (= e!1406200 (and (inv!34454 (c!350925 totalInput!891)) tp!684803))))

(declare-fun res!946059 () Bool)

(declare-fun e!1406201 () Bool)

(assert (=> start!213638 (=> (not res!946059) (not e!1406201))))

(assert (=> start!213638 (= res!946059 (>= from!1082 0))))

(assert (=> start!213638 e!1406201))

(assert (=> start!213638 true))

(declare-fun inv!34455 (BalanceConc!16476) Bool)

(assert (=> start!213638 (and (inv!34455 totalInput!891) e!1406200)))

(declare-fun condSetEmpty!18966 () Bool)

(assert (=> start!213638 (= condSetEmpty!18966 (= z!3888 ((as const (Array Context!3582 Bool)) false)))))

(assert (=> start!213638 setRes!18966))

(declare-fun b!2200612 () Bool)

(assert (=> b!2200612 (= e!1406201 e!1406197)))

(declare-fun res!946053 () Bool)

(assert (=> b!2200612 (=> (not res!946053) (not e!1406197))))

(assert (=> b!2200612 (= res!946053 (and (<= from!1082 lt!823155) (>= knownSize!10 0) (<= knownSize!10 (- lt!823155 from!1082))))))

(declare-fun size!19988 (BalanceConc!16476) Int)

(assert (=> b!2200612 (= lt!823155 (size!19988 totalInput!891))))

(declare-fun b!2200613 () Bool)

(declare-fun e!1406203 () Bool)

(assert (=> b!2200613 (= e!1406203 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2200614 () Bool)

(declare-fun res!946052 () Bool)

(assert (=> b!2200614 (=> (not res!946052) (not e!1406198))))

(assert (=> b!2200614 (= res!946052 e!1406203)))

(declare-fun res!946057 () Bool)

(assert (=> b!2200614 (=> res!946057 e!1406203)))

(declare-fun nullableZipper!501 ((InoxSet Context!3582)) Bool)

(assert (=> b!2200614 (= res!946057 (not (nullableZipper!501 z!3888)))))

(declare-fun b!2200615 () Bool)

(assert (=> b!2200615 (= e!1406196 from!1082)))

(declare-fun b!2200616 () Bool)

(assert (=> b!2200616 (= e!1406198 (not e!1406202))))

(declare-fun res!946054 () Bool)

(assert (=> b!2200616 (=> res!946054 e!1406202)))

(declare-fun tail!3166 (List!25737) List!25737)

(assert (=> b!2200616 (= res!946054 (not (= lt!823156 (tail!3166 lt!823149))))))

(declare-fun lt!823153 () C!12588)

(assert (=> b!2200616 (= (Cons!25653 lt!823153 lt!823156) (take!399 lt!823154 (+ 1 (- knownSize!10 1))))))

(assert (=> b!2200616 (= lt!823156 (take!399 (drop!1409 lt!823158 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6300 (List!25737 Int) C!12588)

(assert (=> b!2200616 (= lt!823153 (apply!6300 lt!823158 from!1082))))

(declare-datatypes ((Unit!38751 0))(
  ( (Unit!38752) )
))
(declare-fun lt!823151 () Unit!38751)

(declare-fun lemmaDropTakeAddOneLeft!28 (List!25737 Int Int) Unit!38751)

(assert (=> b!2200616 (= lt!823151 (lemmaDropTakeAddOneLeft!28 lt!823158 from!1082 (- knownSize!10 1)))))

(declare-fun lt!823157 () Int)

(declare-fun furthestNullablePosition!373 ((InoxSet Context!3582) Int BalanceConc!16476 Int Int) Int)

(assert (=> b!2200616 (= lt!823157 (furthestNullablePosition!373 lt!823150 (+ 1 from!1082) totalInput!891 lt!823155 e!1406196))))

(declare-fun c!350923 () Bool)

(assert (=> b!2200616 (= c!350923 (nullableZipper!501 lt!823150))))

(declare-fun derivationStepZipper!279 ((InoxSet Context!3582) C!12588) (InoxSet Context!3582))

(declare-fun apply!6301 (BalanceConc!16476 Int) C!12588)

(assert (=> b!2200616 (= lt!823150 (derivationStepZipper!279 z!3888 (apply!6301 totalInput!891 from!1082)))))

(declare-fun b!2200617 () Bool)

(declare-fun res!946060 () Bool)

(assert (=> b!2200617 (=> (not res!946060) (not e!1406198))))

(declare-fun lostCauseZipper!331 ((InoxSet Context!3582)) Bool)

(assert (=> b!2200617 (= res!946060 (not (lostCauseZipper!331 z!3888)))))

(assert (= (and start!213638 res!946059) b!2200612))

(assert (= (and b!2200612 res!946053) b!2200608))

(assert (= (and b!2200608 res!946055) b!2200606))

(assert (= (and b!2200606 res!946061) b!2200614))

(assert (= (and b!2200614 (not res!946057)) b!2200613))

(assert (= (and b!2200614 res!946052) b!2200609))

(assert (= (and b!2200609 res!946058) b!2200604))

(assert (= (and b!2200604 res!946056) b!2200617))

(assert (= (and b!2200617 res!946060) b!2200616))

(assert (= (and b!2200616 c!350923) b!2200615))

(assert (= (and b!2200616 (not c!350923)) b!2200610))

(assert (= (and b!2200616 (not res!946054)) b!2200605))

(assert (= start!213638 b!2200611))

(assert (= (and start!213638 condSetEmpty!18966) setIsEmpty!18966))

(assert (= (and start!213638 (not condSetEmpty!18966)) setNonEmpty!18966))

(assert (= setNonEmpty!18966 b!2200607))

(declare-fun m!2643247 () Bool)

(assert (=> b!2200608 m!2643247))

(declare-fun m!2643249 () Bool)

(assert (=> b!2200608 m!2643249))

(declare-fun m!2643251 () Bool)

(assert (=> b!2200608 m!2643251))

(declare-fun m!2643253 () Bool)

(assert (=> b!2200608 m!2643253))

(declare-fun m!2643255 () Bool)

(assert (=> b!2200611 m!2643255))

(declare-fun m!2643257 () Bool)

(assert (=> setNonEmpty!18966 m!2643257))

(declare-fun m!2643259 () Bool)

(assert (=> b!2200605 m!2643259))

(declare-fun m!2643261 () Bool)

(assert (=> b!2200616 m!2643261))

(declare-fun m!2643263 () Bool)

(assert (=> b!2200616 m!2643263))

(declare-fun m!2643265 () Bool)

(assert (=> b!2200616 m!2643265))

(declare-fun m!2643267 () Bool)

(assert (=> b!2200616 m!2643267))

(declare-fun m!2643269 () Bool)

(assert (=> b!2200616 m!2643269))

(declare-fun m!2643271 () Bool)

(assert (=> b!2200616 m!2643271))

(declare-fun m!2643273 () Bool)

(assert (=> b!2200616 m!2643273))

(assert (=> b!2200616 m!2643273))

(declare-fun m!2643275 () Bool)

(assert (=> b!2200616 m!2643275))

(declare-fun m!2643277 () Bool)

(assert (=> b!2200616 m!2643277))

(declare-fun m!2643279 () Bool)

(assert (=> b!2200616 m!2643279))

(assert (=> b!2200616 m!2643261))

(declare-fun m!2643281 () Bool)

(assert (=> b!2200609 m!2643281))

(declare-fun m!2643283 () Bool)

(assert (=> start!213638 m!2643283))

(declare-fun m!2643285 () Bool)

(assert (=> b!2200617 m!2643285))

(declare-fun m!2643287 () Bool)

(assert (=> b!2200612 m!2643287))

(declare-fun m!2643289 () Bool)

(assert (=> b!2200614 m!2643289))

(check-sat (not b!2200609) (not b!2200612) (not b!2200616) (not b!2200605) (not b!2200617) (not b!2200607) (not setNonEmpty!18966) (not start!213638) (not b!2200608) (not b!2200614) (not b!2200611))
(check-sat)
