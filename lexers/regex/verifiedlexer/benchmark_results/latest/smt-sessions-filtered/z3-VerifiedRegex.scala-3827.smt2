; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212558 () Bool)

(assert start!212558)

(declare-fun setIsEmpty!18588 () Bool)

(declare-fun setRes!18588 () Bool)

(assert (=> setIsEmpty!18588 setRes!18588))

(declare-fun b!2191877 () Bool)

(declare-fun res!942238 () Bool)

(declare-fun e!1400737 () Bool)

(assert (=> b!2191877 (=> (not res!942238) (not e!1400737))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12388 0))(
  ( (C!12389 (val!7180 Int)) )
))
(declare-datatypes ((Regex!6121 0))(
  ( (ElementMatch!6121 (c!348638 C!12388)) (Concat!10423 (regOne!12754 Regex!6121) (regTwo!12754 Regex!6121)) (EmptyExpr!6121) (Star!6121 (reg!6450 Regex!6121)) (EmptyLang!6121) (Union!6121 (regOne!12755 Regex!6121) (regTwo!12755 Regex!6121)) )
))
(declare-datatypes ((List!25515 0))(
  ( (Nil!25431) (Cons!25431 (h!30832 Regex!6121) (t!198113 List!25515)) )
))
(declare-datatypes ((Context!3382 0))(
  ( (Context!3383 (exprs!2191 List!25515)) )
))
(declare-fun z!3955 () (InoxSet Context!3382))

(declare-fun lostCauseZipper!239 ((InoxSet Context!3382)) Bool)

(assert (=> b!2191877 (= res!942238 (not (lostCauseZipper!239 z!3955)))))

(declare-fun setElem!18588 () Context!3382)

(declare-fun e!1400730 () Bool)

(declare-fun tp!683182 () Bool)

(declare-fun setNonEmpty!18588 () Bool)

(declare-fun inv!33945 (Context!3382) Bool)

(assert (=> setNonEmpty!18588 (= setRes!18588 (and tp!683182 (inv!33945 setElem!18588) e!1400730))))

(declare-fun setRest!18588 () (InoxSet Context!3382))

(assert (=> setNonEmpty!18588 (= z!3955 ((_ map or) (store ((as const (Array Context!3382 Bool)) false) setElem!18588 true) setRest!18588))))

(declare-fun b!2191878 () Bool)

(declare-fun e!1400732 () Bool)

(declare-fun e!1400729 () Bool)

(assert (=> b!2191878 (= e!1400732 (not e!1400729))))

(declare-fun res!942236 () Bool)

(assert (=> b!2191878 (=> res!942236 e!1400729)))

(declare-fun lt!819303 () Bool)

(assert (=> b!2191878 (= res!942236 lt!819303)))

(declare-fun e!1400731 () Bool)

(assert (=> b!2191878 e!1400731))

(declare-fun res!942235 () Bool)

(assert (=> b!2191878 (=> res!942235 e!1400731)))

(assert (=> b!2191878 (= res!942235 lt!819303)))

(declare-fun lt!819298 () Int)

(assert (=> b!2191878 (= lt!819303 (<= lt!819298 0))))

(declare-fun lt!819300 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2191878 (= lt!819298 (+ 1 (- lt!819300 (+ 1 from!1114))))))

(declare-datatypes ((List!25516 0))(
  ( (Nil!25432) (Cons!25432 (h!30833 C!12388) (t!198114 List!25516)) )
))
(declare-datatypes ((IArray!16519 0))(
  ( (IArray!16520 (innerList!8317 List!25516)) )
))
(declare-datatypes ((Conc!8257 0))(
  ( (Node!8257 (left!19512 Conc!8257) (right!19842 Conc!8257) (csize!16744 Int) (cheight!8468 Int)) (Leaf!12085 (xs!11199 IArray!16519) (csize!16745 Int)) (Empty!8257) )
))
(declare-datatypes ((BalanceConc!16276 0))(
  ( (BalanceConc!16277 (c!348639 Conc!8257)) )
))
(declare-fun totalInput!923 () BalanceConc!16276)

(declare-datatypes ((Unit!38545 0))(
  ( (Unit!38546) )
))
(declare-fun lt!819299 () Unit!38545)

(declare-fun lt!819306 () (InoxSet Context!3382))

(declare-fun lt!819297 () Int)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!126 ((InoxSet Context!3382) Int BalanceConc!16276 Int) Unit!38545)

(assert (=> b!2191878 (= lt!819299 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!126 lt!819306 (+ 1 from!1114) totalInput!923 lt!819297))))

(declare-fun b!2191879 () Bool)

(declare-fun e!1400733 () Int)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2191879 (= e!1400733 lastNullablePos!193)))

(declare-fun b!2191881 () Bool)

(declare-fun matchZipper!221 ((InoxSet Context!3382) List!25516) Bool)

(declare-fun take!313 (List!25516 Int) List!25516)

(declare-fun drop!1323 (List!25516 Int) List!25516)

(declare-fun list!9768 (BalanceConc!16276) List!25516)

(assert (=> b!2191881 (= e!1400731 (matchZipper!221 lt!819306 (take!313 (drop!1323 (list!9768 totalInput!923) (+ 1 from!1114)) lt!819298)))))

(declare-fun b!2191882 () Bool)

(declare-fun e!1400728 () Bool)

(declare-fun tp!683181 () Bool)

(declare-fun inv!33946 (Conc!8257) Bool)

(assert (=> b!2191882 (= e!1400728 (and (inv!33946 (c!348639 totalInput!923)) tp!683181))))

(declare-fun b!2191883 () Bool)

(assert (=> b!2191883 (= e!1400737 e!1400732)))

(declare-fun res!942239 () Bool)

(assert (=> b!2191883 (=> (not res!942239) (not e!1400732))))

(declare-fun lt!819304 () Int)

(assert (=> b!2191883 (= res!942239 (= lt!819304 lt!819300))))

(declare-fun lt!819307 () Int)

(declare-fun furthestNullablePosition!291 ((InoxSet Context!3382) Int BalanceConc!16276 Int Int) Int)

(assert (=> b!2191883 (= lt!819300 (furthestNullablePosition!291 lt!819306 (+ 1 from!1114) totalInput!923 lt!819307 lt!819297))))

(assert (=> b!2191883 (= lt!819304 (furthestNullablePosition!291 z!3955 from!1114 totalInput!923 lt!819307 lastNullablePos!193))))

(assert (=> b!2191883 (= lt!819297 e!1400733)))

(declare-fun c!348637 () Bool)

(declare-fun nullableZipper!401 ((InoxSet Context!3382)) Bool)

(assert (=> b!2191883 (= c!348637 (nullableZipper!401 lt!819306))))

(declare-fun lt!819308 () C!12388)

(declare-fun derivationStepZipper!198 ((InoxSet Context!3382) C!12388) (InoxSet Context!3382))

(assert (=> b!2191883 (= lt!819306 (derivationStepZipper!198 z!3955 lt!819308))))

(declare-fun apply!6160 (BalanceConc!16276 Int) C!12388)

(assert (=> b!2191883 (= lt!819308 (apply!6160 totalInput!923 from!1114))))

(declare-fun b!2191884 () Bool)

(declare-fun res!942241 () Bool)

(assert (=> b!2191884 (=> (not res!942241) (not e!1400737))))

(declare-fun e!1400736 () Bool)

(assert (=> b!2191884 (= res!942241 e!1400736)))

(declare-fun res!942243 () Bool)

(assert (=> b!2191884 (=> res!942243 e!1400736)))

(assert (=> b!2191884 (= res!942243 (not (nullableZipper!401 z!3955)))))

(declare-fun b!2191885 () Bool)

(assert (=> b!2191885 (= e!1400736 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2191886 () Bool)

(declare-fun e!1400734 () Bool)

(assert (=> b!2191886 (= e!1400734 e!1400737)))

(declare-fun res!942233 () Bool)

(assert (=> b!2191886 (=> (not res!942233) (not e!1400737))))

(assert (=> b!2191886 (= res!942233 (and (<= from!1114 lt!819307) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19840 (BalanceConc!16276) Int)

(assert (=> b!2191886 (= lt!819307 (size!19840 totalInput!923))))

(declare-fun b!2191887 () Bool)

(declare-fun res!942237 () Bool)

(declare-fun e!1400735 () Bool)

(assert (=> b!2191887 (=> res!942237 e!1400735)))

(declare-fun lt!819301 () List!25516)

(assert (=> b!2191887 (= res!942237 (not (matchZipper!221 z!3955 (Cons!25432 lt!819308 lt!819301))))))

(declare-fun res!942240 () Bool)

(assert (=> start!212558 (=> (not res!942240) (not e!1400734))))

(assert (=> start!212558 (= res!942240 (>= from!1114 0))))

(assert (=> start!212558 e!1400734))

(assert (=> start!212558 true))

(declare-fun inv!33947 (BalanceConc!16276) Bool)

(assert (=> start!212558 (and (inv!33947 totalInput!923) e!1400728)))

(declare-fun condSetEmpty!18588 () Bool)

(assert (=> start!212558 (= condSetEmpty!18588 (= z!3955 ((as const (Array Context!3382 Bool)) false)))))

(assert (=> start!212558 setRes!18588))

(declare-fun b!2191880 () Bool)

(declare-fun res!942234 () Bool)

(assert (=> b!2191880 (=> (not res!942234) (not e!1400737))))

(assert (=> b!2191880 (= res!942234 (not (= from!1114 lt!819307)))))

(declare-fun b!2191888 () Bool)

(assert (=> b!2191888 (= e!1400735 true)))

(declare-fun lt!819305 () Int)

(declare-fun lt!819302 () List!25516)

(declare-fun size!19841 (List!25516) Int)

(assert (=> b!2191888 (= lt!819305 (size!19841 lt!819302))))

(declare-fun b!2191889 () Bool)

(assert (=> b!2191889 (= e!1400729 e!1400735)))

(declare-fun res!942242 () Bool)

(assert (=> b!2191889 (=> res!942242 e!1400735)))

(assert (=> b!2191889 (= res!942242 (not (matchZipper!221 lt!819306 lt!819301)))))

(assert (=> b!2191889 (= lt!819301 (take!313 (drop!1323 lt!819302 (+ 1 from!1114)) lt!819298))))

(assert (=> b!2191889 (= lt!819302 (list!9768 totalInput!923))))

(declare-fun b!2191890 () Bool)

(declare-fun tp!683180 () Bool)

(assert (=> b!2191890 (= e!1400730 tp!683180)))

(declare-fun b!2191891 () Bool)

(assert (=> b!2191891 (= e!1400733 from!1114)))

(assert (= (and start!212558 res!942240) b!2191886))

(assert (= (and b!2191886 res!942233) b!2191884))

(assert (= (and b!2191884 (not res!942243)) b!2191885))

(assert (= (and b!2191884 res!942241) b!2191880))

(assert (= (and b!2191880 res!942234) b!2191877))

(assert (= (and b!2191877 res!942238) b!2191883))

(assert (= (and b!2191883 c!348637) b!2191891))

(assert (= (and b!2191883 (not c!348637)) b!2191879))

(assert (= (and b!2191883 res!942239) b!2191878))

(assert (= (and b!2191878 (not res!942235)) b!2191881))

(assert (= (and b!2191878 (not res!942236)) b!2191889))

(assert (= (and b!2191889 (not res!942242)) b!2191887))

(assert (= (and b!2191887 (not res!942237)) b!2191888))

(assert (= start!212558 b!2191882))

(assert (= (and start!212558 condSetEmpty!18588) setIsEmpty!18588))

(assert (= (and start!212558 (not condSetEmpty!18588)) setNonEmpty!18588))

(assert (= setNonEmpty!18588 b!2191890))

(declare-fun m!2634609 () Bool)

(assert (=> b!2191877 m!2634609))

(declare-fun m!2634611 () Bool)

(assert (=> setNonEmpty!18588 m!2634611))

(declare-fun m!2634613 () Bool)

(assert (=> b!2191889 m!2634613))

(declare-fun m!2634615 () Bool)

(assert (=> b!2191889 m!2634615))

(assert (=> b!2191889 m!2634615))

(declare-fun m!2634617 () Bool)

(assert (=> b!2191889 m!2634617))

(declare-fun m!2634619 () Bool)

(assert (=> b!2191889 m!2634619))

(assert (=> b!2191881 m!2634619))

(assert (=> b!2191881 m!2634619))

(declare-fun m!2634621 () Bool)

(assert (=> b!2191881 m!2634621))

(assert (=> b!2191881 m!2634621))

(declare-fun m!2634623 () Bool)

(assert (=> b!2191881 m!2634623))

(assert (=> b!2191881 m!2634623))

(declare-fun m!2634625 () Bool)

(assert (=> b!2191881 m!2634625))

(declare-fun m!2634627 () Bool)

(assert (=> b!2191878 m!2634627))

(declare-fun m!2634629 () Bool)

(assert (=> b!2191882 m!2634629))

(declare-fun m!2634631 () Bool)

(assert (=> b!2191888 m!2634631))

(declare-fun m!2634633 () Bool)

(assert (=> b!2191884 m!2634633))

(declare-fun m!2634635 () Bool)

(assert (=> b!2191883 m!2634635))

(declare-fun m!2634637 () Bool)

(assert (=> b!2191883 m!2634637))

(declare-fun m!2634639 () Bool)

(assert (=> b!2191883 m!2634639))

(declare-fun m!2634641 () Bool)

(assert (=> b!2191883 m!2634641))

(declare-fun m!2634643 () Bool)

(assert (=> b!2191883 m!2634643))

(declare-fun m!2634645 () Bool)

(assert (=> b!2191887 m!2634645))

(declare-fun m!2634647 () Bool)

(assert (=> b!2191886 m!2634647))

(declare-fun m!2634649 () Bool)

(assert (=> start!212558 m!2634649))

(check-sat (not setNonEmpty!18588) (not b!2191887) (not b!2191883) (not b!2191881) (not b!2191886) (not b!2191878) (not b!2191877) (not b!2191889) (not b!2191890) (not b!2191882) (not b!2191888) (not start!212558) (not b!2191884))
(check-sat)
