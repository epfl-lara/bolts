; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!214772 () Bool)

(assert start!214772)

(declare-fun e!1410324 () Bool)

(declare-fun setRes!19295 () Bool)

(declare-datatypes ((C!12746 0))(
  ( (C!12747 (val!7359 Int)) )
))
(declare-datatypes ((Regex!6300 0))(
  ( (ElementMatch!6300 (c!352667 C!12746)) (Concat!10602 (regOne!13112 Regex!6300) (regTwo!13112 Regex!6300)) (EmptyExpr!6300) (Star!6300 (reg!6629 Regex!6300)) (EmptyLang!6300) (Union!6300 (regOne!13113 Regex!6300) (regTwo!13113 Regex!6300)) )
))
(declare-datatypes ((List!25909 0))(
  ( (Nil!25825) (Cons!25825 (h!31226 Regex!6300) (t!198561 List!25909)) )
))
(declare-datatypes ((Context!3740 0))(
  ( (Context!3741 (exprs!2370 List!25909)) )
))
(declare-fun setElem!19295 () Context!3740)

(declare-fun tp!686402 () Bool)

(declare-fun setNonEmpty!19295 () Bool)

(declare-fun inv!34884 (Context!3740) Bool)

(assert (=> setNonEmpty!19295 (= setRes!19295 (and tp!686402 (inv!34884 setElem!19295) e!1410324))))

(declare-fun z!3830 () (Set Context!3740))

(declare-fun setRest!19295 () (Set Context!3740))

(assert (=> setNonEmpty!19295 (= z!3830 (set.union (set.insert setElem!19295 (as set.empty (Set Context!3740))) setRest!19295))))

(declare-fun b!2207714 () Bool)

(declare-fun e!1410326 () Bool)

(declare-datatypes ((List!25910 0))(
  ( (Nil!25826) (Cons!25826 (h!31227 C!12746) (t!198562 List!25910)) )
))
(declare-datatypes ((IArray!16877 0))(
  ( (IArray!16878 (innerList!8496 List!25910)) )
))
(declare-datatypes ((Conc!8436 0))(
  ( (Node!8436 (left!19849 Conc!8436) (right!20179 Conc!8436) (csize!17102 Int) (cheight!8647 Int)) (Leaf!12354 (xs!11378 IArray!16877) (csize!17103 Int)) (Empty!8436) )
))
(declare-datatypes ((BalanceConc!16634 0))(
  ( (BalanceConc!16635 (c!352668 Conc!8436)) )
))
(declare-fun input!5506 () BalanceConc!16634)

(declare-fun tp!686399 () Bool)

(declare-fun inv!34885 (Conc!8436) Bool)

(assert (=> b!2207714 (= e!1410326 (and (inv!34885 (c!352668 input!5506)) tp!686399))))

(declare-fun res!949002 () Bool)

(declare-fun e!1410327 () Bool)

(assert (=> start!214772 (=> (not res!949002) (not e!1410327))))

(declare-fun totalInput!846 () BalanceConc!16634)

(declare-fun isSuffix!737 (List!25910 List!25910) Bool)

(declare-fun list!9988 (BalanceConc!16634) List!25910)

(assert (=> start!214772 (= res!949002 (isSuffix!737 (list!9988 input!5506) (list!9988 totalInput!846)))))

(assert (=> start!214772 e!1410327))

(declare-fun inv!34886 (BalanceConc!16634) Bool)

(assert (=> start!214772 (and (inv!34886 input!5506) e!1410326)))

(declare-fun e!1410329 () Bool)

(assert (=> start!214772 (and (inv!34886 totalInput!846) e!1410329)))

(declare-fun condSetEmpty!19295 () Bool)

(assert (=> start!214772 (= condSetEmpty!19295 (= z!3830 (as set.empty (Set Context!3740))))))

(assert (=> start!214772 setRes!19295))

(declare-fun b!2207715 () Bool)

(declare-fun tp!686400 () Bool)

(assert (=> b!2207715 (= e!1410324 tp!686400)))

(declare-fun b!2207716 () Bool)

(declare-fun tp!686401 () Bool)

(assert (=> b!2207716 (= e!1410329 (and (inv!34885 (c!352668 totalInput!846)) tp!686401))))

(declare-fun b!2207717 () Bool)

(declare-fun e!1410325 () Int)

(declare-fun lt!825644 () Int)

(assert (=> b!2207717 (= e!1410325 (- lt!825644 1))))

(declare-fun b!2207718 () Bool)

(declare-fun e!1410328 () Bool)

(declare-fun lt!825645 () Int)

(assert (=> b!2207718 (= e!1410328 (> 0 lt!825645))))

(declare-fun b!2207719 () Bool)

(declare-fun res!949001 () Bool)

(assert (=> b!2207719 (=> (not res!949001) (not e!1410328))))

(declare-fun isBalanced!2594 (Conc!8436) Bool)

(assert (=> b!2207719 (= res!949001 (isBalanced!2594 (c!352668 input!5506)))))

(declare-fun b!2207720 () Bool)

(assert (=> b!2207720 (= e!1410325 (- 1))))

(declare-fun setIsEmpty!19295 () Bool)

(assert (=> setIsEmpty!19295 setRes!19295))

(declare-fun b!2207721 () Bool)

(assert (=> b!2207721 (= e!1410327 e!1410328)))

(declare-fun res!949000 () Bool)

(assert (=> b!2207721 (=> (not res!949000) (not e!1410328))))

(declare-fun lt!825643 () Int)

(declare-fun furthestNullablePosition!426 ((Set Context!3740) Int BalanceConc!16634 Int Int) Int)

(assert (=> b!2207721 (= res!949000 (< (+ 1 (- (furthestNullablePosition!426 z!3830 lt!825644 totalInput!846 lt!825643 e!1410325) lt!825644)) 0))))

(declare-fun c!352666 () Bool)

(declare-fun nullableZipper!580 ((Set Context!3740)) Bool)

(assert (=> b!2207721 (= c!352666 (nullableZipper!580 z!3830))))

(assert (=> b!2207721 (= lt!825644 (- lt!825643 lt!825645))))

(declare-fun size!20116 (BalanceConc!16634) Int)

(assert (=> b!2207721 (= lt!825645 (size!20116 input!5506))))

(assert (=> b!2207721 (= lt!825643 (size!20116 totalInput!846))))

(assert (= (and start!214772 res!949002) b!2207721))

(assert (= (and b!2207721 c!352666) b!2207717))

(assert (= (and b!2207721 (not c!352666)) b!2207720))

(assert (= (and b!2207721 res!949000) b!2207719))

(assert (= (and b!2207719 res!949001) b!2207718))

(assert (= start!214772 b!2207714))

(assert (= start!214772 b!2207716))

(assert (= (and start!214772 condSetEmpty!19295) setIsEmpty!19295))

(assert (= (and start!214772 (not condSetEmpty!19295)) setNonEmpty!19295))

(assert (= setNonEmpty!19295 b!2207715))

(declare-fun m!2649383 () Bool)

(assert (=> b!2207719 m!2649383))

(declare-fun m!2649385 () Bool)

(assert (=> setNonEmpty!19295 m!2649385))

(declare-fun m!2649387 () Bool)

(assert (=> b!2207716 m!2649387))

(declare-fun m!2649389 () Bool)

(assert (=> start!214772 m!2649389))

(declare-fun m!2649391 () Bool)

(assert (=> start!214772 m!2649391))

(declare-fun m!2649393 () Bool)

(assert (=> start!214772 m!2649393))

(declare-fun m!2649395 () Bool)

(assert (=> start!214772 m!2649395))

(assert (=> start!214772 m!2649389))

(assert (=> start!214772 m!2649391))

(declare-fun m!2649397 () Bool)

(assert (=> start!214772 m!2649397))

(declare-fun m!2649399 () Bool)

(assert (=> b!2207721 m!2649399))

(declare-fun m!2649401 () Bool)

(assert (=> b!2207721 m!2649401))

(declare-fun m!2649403 () Bool)

(assert (=> b!2207721 m!2649403))

(declare-fun m!2649405 () Bool)

(assert (=> b!2207721 m!2649405))

(declare-fun m!2649407 () Bool)

(assert (=> b!2207714 m!2649407))

(push 1)

(assert (not b!2207716))

(assert (not setNonEmpty!19295))

(assert (not start!214772))

(assert (not b!2207715))

(assert (not b!2207714))

(assert (not b!2207721))

(assert (not b!2207719))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!659820 () Bool)

(declare-fun lambda!83360 () Int)

(declare-fun forall!5280 (List!25909 Int) Bool)

(assert (=> d!659820 (= (inv!34884 setElem!19295) (forall!5280 (exprs!2370 setElem!19295) lambda!83360))))

(declare-fun bs!451161 () Bool)

(assert (= bs!451161 d!659820))

(declare-fun m!2649435 () Bool)

(assert (=> bs!451161 m!2649435))

(assert (=> setNonEmpty!19295 d!659820))

(declare-fun d!659824 () Bool)

(declare-fun list!9990 (Conc!8436) List!25910)

(assert (=> d!659824 (= (list!9988 totalInput!846) (list!9990 (c!352668 totalInput!846)))))

(declare-fun bs!451162 () Bool)

(assert (= bs!451162 d!659824))

(declare-fun m!2649437 () Bool)

(assert (=> bs!451162 m!2649437))

(assert (=> start!214772 d!659824))

(declare-fun d!659826 () Bool)

(declare-fun e!1410350 () Bool)

(assert (=> d!659826 e!1410350))

(declare-fun res!949014 () Bool)

(assert (=> d!659826 (=> res!949014 e!1410350)))

(declare-fun lt!825657 () Bool)

(assert (=> d!659826 (= res!949014 (not lt!825657))))

(declare-fun drop!1481 (List!25910 Int) List!25910)

(declare-fun size!20118 (List!25910) Int)

(assert (=> d!659826 (= lt!825657 (= (list!9988 input!5506) (drop!1481 (list!9988 totalInput!846) (- (size!20118 (list!9988 totalInput!846)) (size!20118 (list!9988 input!5506))))))))

(assert (=> d!659826 (= (isSuffix!737 (list!9988 input!5506) (list!9988 totalInput!846)) lt!825657)))

(declare-fun b!2207748 () Bool)

(assert (=> b!2207748 (= e!1410350 (>= (size!20118 (list!9988 totalInput!846)) (size!20118 (list!9988 input!5506))))))

(assert (= (and d!659826 (not res!949014)) b!2207748))

(assert (=> d!659826 m!2649391))

(declare-fun m!2649439 () Bool)

(assert (=> d!659826 m!2649439))

(assert (=> d!659826 m!2649389))

(declare-fun m!2649441 () Bool)

(assert (=> d!659826 m!2649441))

(assert (=> d!659826 m!2649391))

(declare-fun m!2649443 () Bool)

(assert (=> d!659826 m!2649443))

(assert (=> b!2207748 m!2649391))

(assert (=> b!2207748 m!2649439))

(assert (=> b!2207748 m!2649389))

(assert (=> b!2207748 m!2649441))

(assert (=> start!214772 d!659826))

(declare-fun d!659828 () Bool)

(assert (=> d!659828 (= (inv!34886 totalInput!846) (isBalanced!2594 (c!352668 totalInput!846)))))

(declare-fun bs!451163 () Bool)

(assert (= bs!451163 d!659828))

(declare-fun m!2649445 () Bool)

(assert (=> bs!451163 m!2649445))

(assert (=> start!214772 d!659828))

(declare-fun d!659830 () Bool)

(assert (=> d!659830 (= (list!9988 input!5506) (list!9990 (c!352668 input!5506)))))

(declare-fun bs!451164 () Bool)

(assert (= bs!451164 d!659830))

(declare-fun m!2649447 () Bool)

(assert (=> bs!451164 m!2649447))

(assert (=> start!214772 d!659830))

(declare-fun d!659832 () Bool)

(assert (=> d!659832 (= (inv!34886 input!5506) (isBalanced!2594 (c!352668 input!5506)))))

(declare-fun bs!451165 () Bool)

(assert (= bs!451165 d!659832))

(assert (=> bs!451165 m!2649383))

(assert (=> start!214772 d!659832))

(declare-fun b!2207761 () Bool)

(declare-fun res!949030 () Bool)

(declare-fun e!1410355 () Bool)

(assert (=> b!2207761 (=> (not res!949030) (not e!1410355))))

(assert (=> b!2207761 (= res!949030 (isBalanced!2594 (right!20179 (c!352668 input!5506))))))

(declare-fun b!2207762 () Bool)

(declare-fun res!949031 () Bool)

(assert (=> b!2207762 (=> (not res!949031) (not e!1410355))))

(declare-fun height!1262 (Conc!8436) Int)

(assert (=> b!2207762 (= res!949031 (<= (- (height!1262 (left!19849 (c!352668 input!5506))) (height!1262 (right!20179 (c!352668 input!5506)))) 1))))

(declare-fun b!2207763 () Bool)

(declare-fun e!1410356 () Bool)

(assert (=> b!2207763 (= e!1410356 e!1410355)))

(declare-fun res!949028 () Bool)

(assert (=> b!2207763 (=> (not res!949028) (not e!1410355))))

(assert (=> b!2207763 (= res!949028 (<= (- 1) (- (height!1262 (left!19849 (c!352668 input!5506))) (height!1262 (right!20179 (c!352668 input!5506))))))))

(declare-fun d!659834 () Bool)

(declare-fun res!949032 () Bool)

(assert (=> d!659834 (=> res!949032 e!1410356)))

(assert (=> d!659834 (= res!949032 (not (is-Node!8436 (c!352668 input!5506))))))

(assert (=> d!659834 (= (isBalanced!2594 (c!352668 input!5506)) e!1410356)))

(declare-fun b!2207764 () Bool)

(declare-fun isEmpty!14769 (Conc!8436) Bool)

(assert (=> b!2207764 (= e!1410355 (not (isEmpty!14769 (right!20179 (c!352668 input!5506)))))))

(declare-fun b!2207765 () Bool)

(declare-fun res!949029 () Bool)

(assert (=> b!2207765 (=> (not res!949029) (not e!1410355))))

(assert (=> b!2207765 (= res!949029 (isBalanced!2594 (left!19849 (c!352668 input!5506))))))

(declare-fun b!2207766 () Bool)

(declare-fun res!949027 () Bool)

(assert (=> b!2207766 (=> (not res!949027) (not e!1410355))))

(assert (=> b!2207766 (= res!949027 (not (isEmpty!14769 (left!19849 (c!352668 input!5506)))))))

(assert (= (and d!659834 (not res!949032)) b!2207763))

(assert (= (and b!2207763 res!949028) b!2207762))

(assert (= (and b!2207762 res!949031) b!2207765))

(assert (= (and b!2207765 res!949029) b!2207761))

(assert (= (and b!2207761 res!949030) b!2207766))

(assert (= (and b!2207766 res!949027) b!2207764))

(declare-fun m!2649449 () Bool)

(assert (=> b!2207761 m!2649449))

(declare-fun m!2649451 () Bool)

(assert (=> b!2207763 m!2649451))

(declare-fun m!2649453 () Bool)

(assert (=> b!2207763 m!2649453))

(declare-fun m!2649455 () Bool)

(assert (=> b!2207765 m!2649455))

(declare-fun m!2649457 () Bool)

(assert (=> b!2207766 m!2649457))

(declare-fun m!2649459 () Bool)

(assert (=> b!2207764 m!2649459))

(assert (=> b!2207762 m!2649451))

(assert (=> b!2207762 m!2649453))

(assert (=> b!2207719 d!659834))

(declare-fun d!659836 () Bool)

(declare-fun c!352676 () Bool)

(assert (=> d!659836 (= c!352676 (is-Node!8436 (c!352668 input!5506)))))

(declare-fun e!1410361 () Bool)

(assert (=> d!659836 (= (inv!34885 (c!352668 input!5506)) e!1410361)))

(declare-fun b!2207773 () Bool)

(declare-fun inv!34890 (Conc!8436) Bool)

(assert (=> b!2207773 (= e!1410361 (inv!34890 (c!352668 input!5506)))))

(declare-fun b!2207774 () Bool)

(declare-fun e!1410362 () Bool)

(assert (=> b!2207774 (= e!1410361 e!1410362)))

(declare-fun res!949035 () Bool)

(assert (=> b!2207774 (= res!949035 (not (is-Leaf!12354 (c!352668 input!5506))))))

(assert (=> b!2207774 (=> res!949035 e!1410362)))

(declare-fun b!2207775 () Bool)

(declare-fun inv!34891 (Conc!8436) Bool)

(assert (=> b!2207775 (= e!1410362 (inv!34891 (c!352668 input!5506)))))

(assert (= (and d!659836 c!352676) b!2207773))

(assert (= (and d!659836 (not c!352676)) b!2207774))

(assert (= (and b!2207774 (not res!949035)) b!2207775))

(declare-fun m!2649461 () Bool)

(assert (=> b!2207773 m!2649461))

(declare-fun m!2649463 () Bool)

(assert (=> b!2207775 m!2649463))

(assert (=> b!2207714 d!659836))

(declare-fun d!659838 () Bool)

(declare-fun c!352677 () Bool)

(assert (=> d!659838 (= c!352677 (is-Node!8436 (c!352668 totalInput!846)))))

(declare-fun e!1410363 () Bool)

(assert (=> d!659838 (= (inv!34885 (c!352668 totalInput!846)) e!1410363)))

(declare-fun b!2207776 () Bool)

(assert (=> b!2207776 (= e!1410363 (inv!34890 (c!352668 totalInput!846)))))

(declare-fun b!2207777 () Bool)

(declare-fun e!1410364 () Bool)

(assert (=> b!2207777 (= e!1410363 e!1410364)))

(declare-fun res!949036 () Bool)

(assert (=> b!2207777 (= res!949036 (not (is-Leaf!12354 (c!352668 totalInput!846))))))

(assert (=> b!2207777 (=> res!949036 e!1410364)))

(declare-fun b!2207778 () Bool)

(assert (=> b!2207778 (= e!1410364 (inv!34891 (c!352668 totalInput!846)))))

(assert (= (and d!659838 c!352677) b!2207776))

(assert (= (and d!659838 (not c!352677)) b!2207777))

(assert (= (and b!2207777 (not res!949036)) b!2207778))

(declare-fun m!2649465 () Bool)

(assert (=> b!2207776 m!2649465))

(declare-fun m!2649467 () Bool)

(assert (=> b!2207778 m!2649467))

(assert (=> b!2207716 d!659838))

(declare-fun b!2207789 () Bool)

(declare-fun e!1410372 () Int)

(assert (=> b!2207789 (= e!1410372 lt!825644)))

(declare-fun lt!825663 () (Set Context!3740))

(declare-fun e!1410373 () Int)

(declare-fun b!2207790 () Bool)

(assert (=> b!2207790 (= e!1410373 (furthestNullablePosition!426 lt!825663 (+ lt!825644 1) totalInput!846 lt!825643 e!1410372))))

(declare-fun derivationStepZipper!323 ((Set Context!3740) C!12746) (Set Context!3740))

(declare-fun apply!6381 (BalanceConc!16634 Int) C!12746)

(assert (=> b!2207790 (= lt!825663 (derivationStepZipper!323 z!3830 (apply!6381 totalInput!846 lt!825644)))))

(declare-fun c!352682 () Bool)

(assert (=> b!2207790 (= c!352682 (nullableZipper!580 lt!825663))))

(declare-fun b!2207791 () Bool)

(assert (=> b!2207791 (= e!1410373 e!1410325)))

(declare-fun lt!825662 () Int)

(declare-fun d!659840 () Bool)

(assert (=> d!659840 (and (>= lt!825662 (- 1)) (< lt!825662 lt!825643) (>= lt!825662 e!1410325) (or (= lt!825662 e!1410325) (>= lt!825662 lt!825644)))))

(assert (=> d!659840 (= lt!825662 e!1410373)))

(declare-fun c!352683 () Bool)

(declare-fun e!1410371 () Bool)

(assert (=> d!659840 (= c!352683 e!1410371)))

(declare-fun res!949039 () Bool)

(assert (=> d!659840 (=> res!949039 e!1410371)))

(assert (=> d!659840 (= res!949039 (= lt!825644 lt!825643))))

(assert (=> d!659840 (and (>= lt!825644 0) (<= lt!825644 lt!825643))))

(assert (=> d!659840 (= (furthestNullablePosition!426 z!3830 lt!825644 totalInput!846 lt!825643 e!1410325) lt!825662)))

(declare-fun b!2207792 () Bool)

(assert (=> b!2207792 (= e!1410372 e!1410325)))

(declare-fun b!2207793 () Bool)

(declare-fun lostCauseZipper!387 ((Set Context!3740)) Bool)

(assert (=> b!2207793 (= e!1410371 (lostCauseZipper!387 z!3830))))

(assert (= (and d!659840 (not res!949039)) b!2207793))

(assert (= (and d!659840 c!352683) b!2207791))

(assert (= (and d!659840 (not c!352683)) b!2207790))

(assert (= (and b!2207790 c!352682) b!2207789))

(assert (= (and b!2207790 (not c!352682)) b!2207792))

(declare-fun m!2649469 () Bool)

(assert (=> b!2207790 m!2649469))

(declare-fun m!2649471 () Bool)

(assert (=> b!2207790 m!2649471))

(assert (=> b!2207790 m!2649471))

(declare-fun m!2649473 () Bool)

(assert (=> b!2207790 m!2649473))

(declare-fun m!2649475 () Bool)

(assert (=> b!2207790 m!2649475))

(declare-fun m!2649477 () Bool)

(assert (=> b!2207793 m!2649477))

(assert (=> b!2207721 d!659840))

(declare-fun d!659842 () Bool)

(declare-fun lambda!83363 () Int)

(declare-fun exists!868 ((Set Context!3740) Int) Bool)

(assert (=> d!659842 (= (nullableZipper!580 z!3830) (exists!868 z!3830 lambda!83363))))

(declare-fun bs!451166 () Bool)

(assert (= bs!451166 d!659842))

(declare-fun m!2649479 () Bool)

(assert (=> bs!451166 m!2649479))

(assert (=> b!2207721 d!659842))

(declare-fun d!659844 () Bool)

(declare-fun lt!825666 () Int)

(assert (=> d!659844 (= lt!825666 (size!20118 (list!9988 input!5506)))))

(declare-fun size!20119 (Conc!8436) Int)

(assert (=> d!659844 (= lt!825666 (size!20119 (c!352668 input!5506)))))

(assert (=> d!659844 (= (size!20116 input!5506) lt!825666)))

(declare-fun bs!451167 () Bool)

(assert (= bs!451167 d!659844))

(assert (=> bs!451167 m!2649389))

(assert (=> bs!451167 m!2649389))

(assert (=> bs!451167 m!2649441))

(declare-fun m!2649481 () Bool)

(assert (=> bs!451167 m!2649481))

(assert (=> b!2207721 d!659844))

(declare-fun d!659846 () Bool)

(declare-fun lt!825667 () Int)

(assert (=> d!659846 (= lt!825667 (size!20118 (list!9988 totalInput!846)))))

(assert (=> d!659846 (= lt!825667 (size!20119 (c!352668 totalInput!846)))))

(assert (=> d!659846 (= (size!20116 totalInput!846) lt!825667)))

(declare-fun bs!451168 () Bool)

(assert (= bs!451168 d!659846))

(assert (=> bs!451168 m!2649391))

(assert (=> bs!451168 m!2649391))

(assert (=> bs!451168 m!2649439))

(declare-fun m!2649483 () Bool)

(assert (=> bs!451168 m!2649483))

(assert (=> b!2207721 d!659846))

(declare-fun condSetEmpty!19301 () Bool)

(assert (=> setNonEmpty!19295 (= condSetEmpty!19301 (= setRest!19295 (as set.empty (Set Context!3740))))))

(declare-fun setRes!19301 () Bool)

(assert (=> setNonEmpty!19295 (= tp!686402 setRes!19301)))

(declare-fun setIsEmpty!19301 () Bool)

(assert (=> setIsEmpty!19301 setRes!19301))

(declare-fun setElem!19301 () Context!3740)

(declare-fun setNonEmpty!19301 () Bool)

(declare-fun tp!686419 () Bool)

(declare-fun e!1410376 () Bool)

(assert (=> setNonEmpty!19301 (= setRes!19301 (and tp!686419 (inv!34884 setElem!19301) e!1410376))))

(declare-fun setRest!19301 () (Set Context!3740))

(assert (=> setNonEmpty!19301 (= setRest!19295 (set.union (set.insert setElem!19301 (as set.empty (Set Context!3740))) setRest!19301))))

(declare-fun b!2207798 () Bool)

(declare-fun tp!686420 () Bool)

(assert (=> b!2207798 (= e!1410376 tp!686420)))

(assert (= (and setNonEmpty!19295 condSetEmpty!19301) setIsEmpty!19301))

(assert (= (and setNonEmpty!19295 (not condSetEmpty!19301)) setNonEmpty!19301))

(assert (= setNonEmpty!19301 b!2207798))

(declare-fun m!2649485 () Bool)

(assert (=> setNonEmpty!19301 m!2649485))

(declare-fun tp!686429 () Bool)

(declare-fun e!1410382 () Bool)

(declare-fun b!2207807 () Bool)

(declare-fun tp!686428 () Bool)

(assert (=> b!2207807 (= e!1410382 (and (inv!34885 (left!19849 (c!352668 input!5506))) tp!686428 (inv!34885 (right!20179 (c!352668 input!5506))) tp!686429))))

(declare-fun b!2207809 () Bool)

(declare-fun e!1410381 () Bool)

(declare-fun tp!686427 () Bool)

(assert (=> b!2207809 (= e!1410381 tp!686427)))

(declare-fun b!2207808 () Bool)

(declare-fun inv!34892 (IArray!16877) Bool)

(assert (=> b!2207808 (= e!1410382 (and (inv!34892 (xs!11378 (c!352668 input!5506))) e!1410381))))

(assert (=> b!2207714 (= tp!686399 (and (inv!34885 (c!352668 input!5506)) e!1410382))))

(assert (= (and b!2207714 (is-Node!8436 (c!352668 input!5506))) b!2207807))

(assert (= b!2207808 b!2207809))

(assert (= (and b!2207714 (is-Leaf!12354 (c!352668 input!5506))) b!2207808))

(declare-fun m!2649487 () Bool)

(assert (=> b!2207807 m!2649487))

(declare-fun m!2649489 () Bool)

(assert (=> b!2207807 m!2649489))

(declare-fun m!2649491 () Bool)

(assert (=> b!2207808 m!2649491))

(assert (=> b!2207714 m!2649407))

(declare-fun b!2207810 () Bool)

(declare-fun e!1410384 () Bool)

(declare-fun tp!686431 () Bool)

(declare-fun tp!686432 () Bool)

(assert (=> b!2207810 (= e!1410384 (and (inv!34885 (left!19849 (c!352668 totalInput!846))) tp!686431 (inv!34885 (right!20179 (c!352668 totalInput!846))) tp!686432))))

(declare-fun b!2207812 () Bool)

(declare-fun e!1410383 () Bool)

(declare-fun tp!686430 () Bool)

(assert (=> b!2207812 (= e!1410383 tp!686430)))

(declare-fun b!2207811 () Bool)

(assert (=> b!2207811 (= e!1410384 (and (inv!34892 (xs!11378 (c!352668 totalInput!846))) e!1410383))))

(assert (=> b!2207716 (= tp!686401 (and (inv!34885 (c!352668 totalInput!846)) e!1410384))))

(assert (= (and b!2207716 (is-Node!8436 (c!352668 totalInput!846))) b!2207810))

(assert (= b!2207811 b!2207812))

(assert (= (and b!2207716 (is-Leaf!12354 (c!352668 totalInput!846))) b!2207811))

(declare-fun m!2649493 () Bool)

(assert (=> b!2207810 m!2649493))

(declare-fun m!2649495 () Bool)

(assert (=> b!2207810 m!2649495))

(declare-fun m!2649497 () Bool)

(assert (=> b!2207811 m!2649497))

(assert (=> b!2207716 m!2649387))

(declare-fun b!2207817 () Bool)

(declare-fun e!1410387 () Bool)

(declare-fun tp!686437 () Bool)

(declare-fun tp!686438 () Bool)

(assert (=> b!2207817 (= e!1410387 (and tp!686437 tp!686438))))

(assert (=> b!2207715 (= tp!686400 e!1410387)))

(assert (= (and b!2207715 (is-Cons!25825 (exprs!2370 setElem!19295))) b!2207817))

(push 1)

(assert (not d!659820))

(assert (not b!2207790))

(assert (not b!2207775))

(assert (not b!2207808))

(assert (not d!659844))

(assert (not b!2207811))

(assert (not setNonEmpty!19301))

(assert (not b!2207761))

(assert (not b!2207810))

(assert (not b!2207778))

(assert (not b!2207764))

(assert (not b!2207812))

(assert (not b!2207748))

(assert (not b!2207762))

(assert (not d!659846))

(assert (not b!2207773))

(assert (not b!2207798))

(assert (not d!659830))

(assert (not d!659842))

(assert (not d!659826))

(assert (not b!2207766))

(assert (not b!2207793))

(assert (not b!2207765))

(assert (not b!2207809))

(assert (not b!2207716))

(assert (not b!2207776))

(assert (not b!2207763))

(assert (not b!2207817))

(assert (not d!659832))

(assert (not d!659824))

(assert (not b!2207807))

(assert (not b!2207714))

(assert (not d!659828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

