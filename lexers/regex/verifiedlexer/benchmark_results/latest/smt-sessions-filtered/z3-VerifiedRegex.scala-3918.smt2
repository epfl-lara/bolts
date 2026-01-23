; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214814 () Bool)

(assert start!214814)

(declare-fun b!2207925 () Bool)

(declare-fun e!1410459 () Int)

(assert (=> b!2207925 (= e!1410459 (- 1))))

(declare-fun b!2207926 () Bool)

(declare-fun lt!825691 () Int)

(assert (=> b!2207926 (= e!1410459 (- lt!825691 1))))

(declare-fun b!2207927 () Bool)

(declare-fun e!1410462 () Bool)

(declare-datatypes ((C!12752 0))(
  ( (C!12753 (val!7362 Int)) )
))
(declare-datatypes ((List!25915 0))(
  ( (Nil!25831) (Cons!25831 (h!31232 C!12752) (t!198569 List!25915)) )
))
(declare-datatypes ((IArray!16883 0))(
  ( (IArray!16884 (innerList!8499 List!25915)) )
))
(declare-datatypes ((Conc!8439 0))(
  ( (Node!8439 (left!19853 Conc!8439) (right!20183 Conc!8439) (csize!17108 Int) (cheight!8650 Int)) (Leaf!12358 (xs!11381 IArray!16883) (csize!17109 Int)) (Empty!8439) )
))
(declare-datatypes ((BalanceConc!16640 0))(
  ( (BalanceConc!16641 (c!352706 Conc!8439)) )
))
(declare-fun input!5506 () BalanceConc!16640)

(declare-fun tp!686485 () Bool)

(declare-fun inv!34899 (Conc!8439) Bool)

(assert (=> b!2207927 (= e!1410462 (and (inv!34899 (c!352706 input!5506)) tp!686485))))

(declare-fun b!2207928 () Bool)

(declare-fun e!1410461 () Bool)

(declare-fun isBalanced!2597 (Conc!8439) Bool)

(assert (=> b!2207928 (= e!1410461 (not (isBalanced!2597 (c!352706 input!5506))))))

(declare-fun res!949078 () Bool)

(declare-fun e!1410458 () Bool)

(assert (=> start!214814 (=> (not res!949078) (not e!1410458))))

(declare-fun totalInput!846 () BalanceConc!16640)

(declare-fun isSuffix!740 (List!25915 List!25915) Bool)

(declare-fun list!9993 (BalanceConc!16640) List!25915)

(assert (=> start!214814 (= res!949078 (isSuffix!740 (list!9993 input!5506) (list!9993 totalInput!846)))))

(assert (=> start!214814 e!1410458))

(declare-fun inv!34900 (BalanceConc!16640) Bool)

(assert (=> start!214814 (and (inv!34900 input!5506) e!1410462)))

(declare-fun e!1410463 () Bool)

(assert (=> start!214814 (and (inv!34900 totalInput!846) e!1410463)))

(declare-fun condSetEmpty!19310 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6303 0))(
  ( (ElementMatch!6303 (c!352707 C!12752)) (Concat!10605 (regOne!13118 Regex!6303) (regTwo!13118 Regex!6303)) (EmptyExpr!6303) (Star!6303 (reg!6632 Regex!6303)) (EmptyLang!6303) (Union!6303 (regOne!13119 Regex!6303) (regTwo!13119 Regex!6303)) )
))
(declare-datatypes ((List!25916 0))(
  ( (Nil!25832) (Cons!25832 (h!31233 Regex!6303) (t!198570 List!25916)) )
))
(declare-datatypes ((Context!3746 0))(
  ( (Context!3747 (exprs!2373 List!25916)) )
))
(declare-fun z!3830 () (InoxSet Context!3746))

(assert (=> start!214814 (= condSetEmpty!19310 (= z!3830 ((as const (Array Context!3746 Bool)) false)))))

(declare-fun setRes!19310 () Bool)

(assert (=> start!214814 setRes!19310))

(declare-fun setNonEmpty!19310 () Bool)

(declare-fun setElem!19310 () Context!3746)

(declare-fun e!1410460 () Bool)

(declare-fun tp!686483 () Bool)

(declare-fun inv!34901 (Context!3746) Bool)

(assert (=> setNonEmpty!19310 (= setRes!19310 (and tp!686483 (inv!34901 setElem!19310) e!1410460))))

(declare-fun setRest!19310 () (InoxSet Context!3746))

(assert (=> setNonEmpty!19310 (= z!3830 ((_ map or) (store ((as const (Array Context!3746 Bool)) false) setElem!19310 true) setRest!19310))))

(declare-fun b!2207929 () Bool)

(declare-fun tp!686484 () Bool)

(assert (=> b!2207929 (= e!1410460 tp!686484)))

(declare-fun b!2207930 () Bool)

(declare-fun tp!686486 () Bool)

(assert (=> b!2207930 (= e!1410463 (and (inv!34899 (c!352706 totalInput!846)) tp!686486))))

(declare-fun b!2207931 () Bool)

(assert (=> b!2207931 (= e!1410458 e!1410461)))

(declare-fun res!949079 () Bool)

(assert (=> b!2207931 (=> (not res!949079) (not e!1410461))))

(declare-fun lt!825692 () Int)

(declare-fun furthestNullablePosition!429 ((InoxSet Context!3746) Int BalanceConc!16640 Int Int) Int)

(assert (=> b!2207931 (= res!949079 (>= (+ 1 (- (furthestNullablePosition!429 z!3830 lt!825691 totalInput!846 lt!825692 e!1410459) lt!825691)) 0))))

(declare-fun c!352705 () Bool)

(declare-fun nullableZipper!583 ((InoxSet Context!3746)) Bool)

(assert (=> b!2207931 (= c!352705 (nullableZipper!583 z!3830))))

(declare-fun size!20123 (BalanceConc!16640) Int)

(assert (=> b!2207931 (= lt!825691 (- lt!825692 (size!20123 input!5506)))))

(assert (=> b!2207931 (= lt!825692 (size!20123 totalInput!846))))

(declare-fun setIsEmpty!19310 () Bool)

(assert (=> setIsEmpty!19310 setRes!19310))

(assert (= (and start!214814 res!949078) b!2207931))

(assert (= (and b!2207931 c!352705) b!2207926))

(assert (= (and b!2207931 (not c!352705)) b!2207925))

(assert (= (and b!2207931 res!949079) b!2207928))

(assert (= start!214814 b!2207927))

(assert (= start!214814 b!2207930))

(assert (= (and start!214814 condSetEmpty!19310) setIsEmpty!19310))

(assert (= (and start!214814 (not condSetEmpty!19310)) setNonEmpty!19310))

(assert (= setNonEmpty!19310 b!2207929))

(declare-fun m!2649589 () Bool)

(assert (=> b!2207927 m!2649589))

(declare-fun m!2649591 () Bool)

(assert (=> start!214814 m!2649591))

(declare-fun m!2649593 () Bool)

(assert (=> start!214814 m!2649593))

(declare-fun m!2649595 () Bool)

(assert (=> start!214814 m!2649595))

(declare-fun m!2649597 () Bool)

(assert (=> start!214814 m!2649597))

(assert (=> start!214814 m!2649591))

(assert (=> start!214814 m!2649593))

(declare-fun m!2649599 () Bool)

(assert (=> start!214814 m!2649599))

(declare-fun m!2649601 () Bool)

(assert (=> b!2207928 m!2649601))

(declare-fun m!2649603 () Bool)

(assert (=> b!2207930 m!2649603))

(declare-fun m!2649605 () Bool)

(assert (=> setNonEmpty!19310 m!2649605))

(declare-fun m!2649607 () Bool)

(assert (=> b!2207931 m!2649607))

(declare-fun m!2649609 () Bool)

(assert (=> b!2207931 m!2649609))

(declare-fun m!2649611 () Bool)

(assert (=> b!2207931 m!2649611))

(declare-fun m!2649613 () Bool)

(assert (=> b!2207931 m!2649613))

(check-sat (not b!2207929) (not b!2207928) (not b!2207930) (not setNonEmpty!19310) (not start!214814) (not b!2207927) (not b!2207931))
(check-sat)
(get-model)

(declare-fun d!659873 () Bool)

(declare-fun c!352710 () Bool)

(get-info :version)

(assert (=> d!659873 (= c!352710 ((_ is Node!8439) (c!352706 input!5506)))))

(declare-fun e!1410468 () Bool)

(assert (=> d!659873 (= (inv!34899 (c!352706 input!5506)) e!1410468)))

(declare-fun b!2207938 () Bool)

(declare-fun inv!34904 (Conc!8439) Bool)

(assert (=> b!2207938 (= e!1410468 (inv!34904 (c!352706 input!5506)))))

(declare-fun b!2207939 () Bool)

(declare-fun e!1410469 () Bool)

(assert (=> b!2207939 (= e!1410468 e!1410469)))

(declare-fun res!949082 () Bool)

(assert (=> b!2207939 (= res!949082 (not ((_ is Leaf!12358) (c!352706 input!5506))))))

(assert (=> b!2207939 (=> res!949082 e!1410469)))

(declare-fun b!2207940 () Bool)

(declare-fun inv!34905 (Conc!8439) Bool)

(assert (=> b!2207940 (= e!1410469 (inv!34905 (c!352706 input!5506)))))

(assert (= (and d!659873 c!352710) b!2207938))

(assert (= (and d!659873 (not c!352710)) b!2207939))

(assert (= (and b!2207939 (not res!949082)) b!2207940))

(declare-fun m!2649615 () Bool)

(assert (=> b!2207938 m!2649615))

(declare-fun m!2649617 () Bool)

(assert (=> b!2207940 m!2649617))

(assert (=> b!2207927 d!659873))

(declare-fun b!2207953 () Bool)

(declare-fun e!1410475 () Bool)

(declare-fun isEmpty!14772 (Conc!8439) Bool)

(assert (=> b!2207953 (= e!1410475 (not (isEmpty!14772 (right!20183 (c!352706 input!5506)))))))

(declare-fun b!2207954 () Bool)

(declare-fun res!949099 () Bool)

(assert (=> b!2207954 (=> (not res!949099) (not e!1410475))))

(assert (=> b!2207954 (= res!949099 (isBalanced!2597 (left!19853 (c!352706 input!5506))))))

(declare-fun b!2207955 () Bool)

(declare-fun res!949098 () Bool)

(assert (=> b!2207955 (=> (not res!949098) (not e!1410475))))

(assert (=> b!2207955 (= res!949098 (isBalanced!2597 (right!20183 (c!352706 input!5506))))))

(declare-fun b!2207956 () Bool)

(declare-fun res!949096 () Bool)

(assert (=> b!2207956 (=> (not res!949096) (not e!1410475))))

(assert (=> b!2207956 (= res!949096 (not (isEmpty!14772 (left!19853 (c!352706 input!5506)))))))

(declare-fun b!2207957 () Bool)

(declare-fun e!1410474 () Bool)

(assert (=> b!2207957 (= e!1410474 e!1410475)))

(declare-fun res!949095 () Bool)

(assert (=> b!2207957 (=> (not res!949095) (not e!1410475))))

(declare-fun height!1264 (Conc!8439) Int)

(assert (=> b!2207957 (= res!949095 (<= (- 1) (- (height!1264 (left!19853 (c!352706 input!5506))) (height!1264 (right!20183 (c!352706 input!5506))))))))

(declare-fun d!659877 () Bool)

(declare-fun res!949100 () Bool)

(assert (=> d!659877 (=> res!949100 e!1410474)))

(assert (=> d!659877 (= res!949100 (not ((_ is Node!8439) (c!352706 input!5506))))))

(assert (=> d!659877 (= (isBalanced!2597 (c!352706 input!5506)) e!1410474)))

(declare-fun b!2207958 () Bool)

(declare-fun res!949097 () Bool)

(assert (=> b!2207958 (=> (not res!949097) (not e!1410475))))

(assert (=> b!2207958 (= res!949097 (<= (- (height!1264 (left!19853 (c!352706 input!5506))) (height!1264 (right!20183 (c!352706 input!5506)))) 1))))

(assert (= (and d!659877 (not res!949100)) b!2207957))

(assert (= (and b!2207957 res!949095) b!2207958))

(assert (= (and b!2207958 res!949097) b!2207954))

(assert (= (and b!2207954 res!949099) b!2207955))

(assert (= (and b!2207955 res!949098) b!2207956))

(assert (= (and b!2207956 res!949096) b!2207953))

(declare-fun m!2649619 () Bool)

(assert (=> b!2207954 m!2649619))

(declare-fun m!2649621 () Bool)

(assert (=> b!2207953 m!2649621))

(declare-fun m!2649623 () Bool)

(assert (=> b!2207957 m!2649623))

(declare-fun m!2649625 () Bool)

(assert (=> b!2207957 m!2649625))

(assert (=> b!2207958 m!2649623))

(assert (=> b!2207958 m!2649625))

(declare-fun m!2649627 () Bool)

(assert (=> b!2207955 m!2649627))

(declare-fun m!2649629 () Bool)

(assert (=> b!2207956 m!2649629))

(assert (=> b!2207928 d!659877))

(declare-fun d!659879 () Bool)

(declare-fun lambda!83378 () Int)

(declare-fun forall!5283 (List!25916 Int) Bool)

(assert (=> d!659879 (= (inv!34901 setElem!19310) (forall!5283 (exprs!2373 setElem!19310) lambda!83378))))

(declare-fun bs!451187 () Bool)

(assert (= bs!451187 d!659879))

(declare-fun m!2649681 () Bool)

(assert (=> bs!451187 m!2649681))

(assert (=> setNonEmpty!19310 d!659879))

(declare-fun d!659905 () Bool)

(declare-fun list!9995 (Conc!8439) List!25915)

(assert (=> d!659905 (= (list!9993 totalInput!846) (list!9995 (c!352706 totalInput!846)))))

(declare-fun bs!451188 () Bool)

(assert (= bs!451188 d!659905))

(declare-fun m!2649689 () Bool)

(assert (=> bs!451188 m!2649689))

(assert (=> start!214814 d!659905))

(declare-fun d!659907 () Bool)

(declare-fun e!1410518 () Bool)

(assert (=> d!659907 e!1410518))

(declare-fun res!949131 () Bool)

(assert (=> d!659907 (=> res!949131 e!1410518)))

(declare-fun lt!825708 () Bool)

(assert (=> d!659907 (= res!949131 (not lt!825708))))

(declare-fun drop!1484 (List!25915 Int) List!25915)

(declare-fun size!20126 (List!25915) Int)

(assert (=> d!659907 (= lt!825708 (= (list!9993 input!5506) (drop!1484 (list!9993 totalInput!846) (- (size!20126 (list!9993 totalInput!846)) (size!20126 (list!9993 input!5506))))))))

(assert (=> d!659907 (= (isSuffix!740 (list!9993 input!5506) (list!9993 totalInput!846)) lt!825708)))

(declare-fun b!2208033 () Bool)

(assert (=> b!2208033 (= e!1410518 (>= (size!20126 (list!9993 totalInput!846)) (size!20126 (list!9993 input!5506))))))

(assert (= (and d!659907 (not res!949131)) b!2208033))

(assert (=> d!659907 m!2649593))

(declare-fun m!2649699 () Bool)

(assert (=> d!659907 m!2649699))

(assert (=> d!659907 m!2649591))

(declare-fun m!2649701 () Bool)

(assert (=> d!659907 m!2649701))

(assert (=> d!659907 m!2649593))

(declare-fun m!2649703 () Bool)

(assert (=> d!659907 m!2649703))

(assert (=> b!2208033 m!2649593))

(assert (=> b!2208033 m!2649699))

(assert (=> b!2208033 m!2649591))

(assert (=> b!2208033 m!2649701))

(assert (=> start!214814 d!659907))

(declare-fun d!659909 () Bool)

(assert (=> d!659909 (= (inv!34900 totalInput!846) (isBalanced!2597 (c!352706 totalInput!846)))))

(declare-fun bs!451189 () Bool)

(assert (= bs!451189 d!659909))

(declare-fun m!2649705 () Bool)

(assert (=> bs!451189 m!2649705))

(assert (=> start!214814 d!659909))

(declare-fun d!659911 () Bool)

(assert (=> d!659911 (= (list!9993 input!5506) (list!9995 (c!352706 input!5506)))))

(declare-fun bs!451190 () Bool)

(assert (= bs!451190 d!659911))

(declare-fun m!2649707 () Bool)

(assert (=> bs!451190 m!2649707))

(assert (=> start!214814 d!659911))

(declare-fun d!659913 () Bool)

(assert (=> d!659913 (= (inv!34900 input!5506) (isBalanced!2597 (c!352706 input!5506)))))

(declare-fun bs!451191 () Bool)

(assert (= bs!451191 d!659913))

(assert (=> bs!451191 m!2649601))

(assert (=> start!214814 d!659913))

(declare-fun d!659915 () Bool)

(declare-fun c!352723 () Bool)

(assert (=> d!659915 (= c!352723 ((_ is Node!8439) (c!352706 totalInput!846)))))

(declare-fun e!1410519 () Bool)

(assert (=> d!659915 (= (inv!34899 (c!352706 totalInput!846)) e!1410519)))

(declare-fun b!2208034 () Bool)

(assert (=> b!2208034 (= e!1410519 (inv!34904 (c!352706 totalInput!846)))))

(declare-fun b!2208035 () Bool)

(declare-fun e!1410520 () Bool)

(assert (=> b!2208035 (= e!1410519 e!1410520)))

(declare-fun res!949132 () Bool)

(assert (=> b!2208035 (= res!949132 (not ((_ is Leaf!12358) (c!352706 totalInput!846))))))

(assert (=> b!2208035 (=> res!949132 e!1410520)))

(declare-fun b!2208036 () Bool)

(assert (=> b!2208036 (= e!1410520 (inv!34905 (c!352706 totalInput!846)))))

(assert (= (and d!659915 c!352723) b!2208034))

(assert (= (and d!659915 (not c!352723)) b!2208035))

(assert (= (and b!2208035 (not res!949132)) b!2208036))

(declare-fun m!2649709 () Bool)

(assert (=> b!2208034 m!2649709))

(declare-fun m!2649711 () Bool)

(assert (=> b!2208036 m!2649711))

(assert (=> b!2207930 d!659915))

(declare-fun b!2208047 () Bool)

(declare-fun e!1410528 () Bool)

(declare-fun lostCauseZipper!390 ((InoxSet Context!3746)) Bool)

(assert (=> b!2208047 (= e!1410528 (lostCauseZipper!390 z!3830))))

(declare-fun e!1410527 () Int)

(declare-fun e!1410529 () Int)

(declare-fun b!2208048 () Bool)

(declare-fun lt!825713 () (InoxSet Context!3746))

(assert (=> b!2208048 (= e!1410529 (furthestNullablePosition!429 lt!825713 (+ lt!825691 1) totalInput!846 lt!825692 e!1410527))))

(declare-fun derivationStepZipper!326 ((InoxSet Context!3746) C!12752) (InoxSet Context!3746))

(declare-fun apply!6384 (BalanceConc!16640 Int) C!12752)

(assert (=> b!2208048 (= lt!825713 (derivationStepZipper!326 z!3830 (apply!6384 totalInput!846 lt!825691)))))

(declare-fun c!352729 () Bool)

(assert (=> b!2208048 (= c!352729 (nullableZipper!583 lt!825713))))

(declare-fun d!659917 () Bool)

(declare-fun lt!825714 () Int)

(assert (=> d!659917 (and (>= lt!825714 (- 1)) (< lt!825714 lt!825692) (>= lt!825714 e!1410459) (or (= lt!825714 e!1410459) (>= lt!825714 lt!825691)))))

(assert (=> d!659917 (= lt!825714 e!1410529)))

(declare-fun c!352728 () Bool)

(assert (=> d!659917 (= c!352728 e!1410528)))

(declare-fun res!949135 () Bool)

(assert (=> d!659917 (=> res!949135 e!1410528)))

(assert (=> d!659917 (= res!949135 (= lt!825691 lt!825692))))

(assert (=> d!659917 (and (>= lt!825691 0) (<= lt!825691 lt!825692))))

(assert (=> d!659917 (= (furthestNullablePosition!429 z!3830 lt!825691 totalInput!846 lt!825692 e!1410459) lt!825714)))

(declare-fun b!2208049 () Bool)

(assert (=> b!2208049 (= e!1410527 e!1410459)))

(declare-fun b!2208050 () Bool)

(assert (=> b!2208050 (= e!1410529 e!1410459)))

(declare-fun b!2208051 () Bool)

(assert (=> b!2208051 (= e!1410527 lt!825691)))

(assert (= (and d!659917 (not res!949135)) b!2208047))

(assert (= (and d!659917 c!352728) b!2208050))

(assert (= (and d!659917 (not c!352728)) b!2208048))

(assert (= (and b!2208048 c!352729) b!2208051))

(assert (= (and b!2208048 (not c!352729)) b!2208049))

(declare-fun m!2649713 () Bool)

(assert (=> b!2208047 m!2649713))

(declare-fun m!2649715 () Bool)

(assert (=> b!2208048 m!2649715))

(declare-fun m!2649717 () Bool)

(assert (=> b!2208048 m!2649717))

(assert (=> b!2208048 m!2649717))

(declare-fun m!2649719 () Bool)

(assert (=> b!2208048 m!2649719))

(declare-fun m!2649721 () Bool)

(assert (=> b!2208048 m!2649721))

(assert (=> b!2207931 d!659917))

(declare-fun d!659919 () Bool)

(declare-fun lambda!83381 () Int)

(declare-fun exists!871 ((InoxSet Context!3746) Int) Bool)

(assert (=> d!659919 (= (nullableZipper!583 z!3830) (exists!871 z!3830 lambda!83381))))

(declare-fun bs!451192 () Bool)

(assert (= bs!451192 d!659919))

(declare-fun m!2649723 () Bool)

(assert (=> bs!451192 m!2649723))

(assert (=> b!2207931 d!659919))

(declare-fun d!659921 () Bool)

(declare-fun lt!825717 () Int)

(assert (=> d!659921 (= lt!825717 (size!20126 (list!9993 input!5506)))))

(declare-fun size!20127 (Conc!8439) Int)

(assert (=> d!659921 (= lt!825717 (size!20127 (c!352706 input!5506)))))

(assert (=> d!659921 (= (size!20123 input!5506) lt!825717)))

(declare-fun bs!451193 () Bool)

(assert (= bs!451193 d!659921))

(assert (=> bs!451193 m!2649591))

(assert (=> bs!451193 m!2649591))

(assert (=> bs!451193 m!2649701))

(declare-fun m!2649725 () Bool)

(assert (=> bs!451193 m!2649725))

(assert (=> b!2207931 d!659921))

(declare-fun d!659923 () Bool)

(declare-fun lt!825718 () Int)

(assert (=> d!659923 (= lt!825718 (size!20126 (list!9993 totalInput!846)))))

(assert (=> d!659923 (= lt!825718 (size!20127 (c!352706 totalInput!846)))))

(assert (=> d!659923 (= (size!20123 totalInput!846) lt!825718)))

(declare-fun bs!451194 () Bool)

(assert (= bs!451194 d!659923))

(assert (=> bs!451194 m!2649593))

(assert (=> bs!451194 m!2649593))

(assert (=> bs!451194 m!2649699))

(declare-fun m!2649727 () Bool)

(assert (=> bs!451194 m!2649727))

(assert (=> b!2207931 d!659923))

(declare-fun tp!686518 () Bool)

(declare-fun tp!686517 () Bool)

(declare-fun e!1410534 () Bool)

(declare-fun b!2208060 () Bool)

(assert (=> b!2208060 (= e!1410534 (and (inv!34899 (left!19853 (c!352706 input!5506))) tp!686517 (inv!34899 (right!20183 (c!352706 input!5506))) tp!686518))))

(declare-fun b!2208062 () Bool)

(declare-fun e!1410535 () Bool)

(declare-fun tp!686519 () Bool)

(assert (=> b!2208062 (= e!1410535 tp!686519)))

(declare-fun b!2208061 () Bool)

(declare-fun inv!34907 (IArray!16883) Bool)

(assert (=> b!2208061 (= e!1410534 (and (inv!34907 (xs!11381 (c!352706 input!5506))) e!1410535))))

(assert (=> b!2207927 (= tp!686485 (and (inv!34899 (c!352706 input!5506)) e!1410534))))

(assert (= (and b!2207927 ((_ is Node!8439) (c!352706 input!5506))) b!2208060))

(assert (= b!2208061 b!2208062))

(assert (= (and b!2207927 ((_ is Leaf!12358) (c!352706 input!5506))) b!2208061))

(declare-fun m!2649729 () Bool)

(assert (=> b!2208060 m!2649729))

(declare-fun m!2649731 () Bool)

(assert (=> b!2208060 m!2649731))

(declare-fun m!2649733 () Bool)

(assert (=> b!2208061 m!2649733))

(assert (=> b!2207927 m!2649589))

(declare-fun condSetEmpty!19316 () Bool)

(assert (=> setNonEmpty!19310 (= condSetEmpty!19316 (= setRest!19310 ((as const (Array Context!3746 Bool)) false)))))

(declare-fun setRes!19316 () Bool)

(assert (=> setNonEmpty!19310 (= tp!686483 setRes!19316)))

(declare-fun setIsEmpty!19316 () Bool)

(assert (=> setIsEmpty!19316 setRes!19316))

(declare-fun tp!686524 () Bool)

(declare-fun e!1410538 () Bool)

(declare-fun setNonEmpty!19316 () Bool)

(declare-fun setElem!19316 () Context!3746)

(assert (=> setNonEmpty!19316 (= setRes!19316 (and tp!686524 (inv!34901 setElem!19316) e!1410538))))

(declare-fun setRest!19316 () (InoxSet Context!3746))

(assert (=> setNonEmpty!19316 (= setRest!19310 ((_ map or) (store ((as const (Array Context!3746 Bool)) false) setElem!19316 true) setRest!19316))))

(declare-fun b!2208067 () Bool)

(declare-fun tp!686525 () Bool)

(assert (=> b!2208067 (= e!1410538 tp!686525)))

(assert (= (and setNonEmpty!19310 condSetEmpty!19316) setIsEmpty!19316))

(assert (= (and setNonEmpty!19310 (not condSetEmpty!19316)) setNonEmpty!19316))

(assert (= setNonEmpty!19316 b!2208067))

(declare-fun m!2649735 () Bool)

(assert (=> setNonEmpty!19316 m!2649735))

(declare-fun b!2208072 () Bool)

(declare-fun e!1410541 () Bool)

(declare-fun tp!686530 () Bool)

(declare-fun tp!686531 () Bool)

(assert (=> b!2208072 (= e!1410541 (and tp!686530 tp!686531))))

(assert (=> b!2207929 (= tp!686484 e!1410541)))

(assert (= (and b!2207929 ((_ is Cons!25832) (exprs!2373 setElem!19310))) b!2208072))

(declare-fun tp!686532 () Bool)

(declare-fun b!2208073 () Bool)

(declare-fun e!1410542 () Bool)

(declare-fun tp!686533 () Bool)

(assert (=> b!2208073 (= e!1410542 (and (inv!34899 (left!19853 (c!352706 totalInput!846))) tp!686532 (inv!34899 (right!20183 (c!352706 totalInput!846))) tp!686533))))

(declare-fun b!2208075 () Bool)

(declare-fun e!1410543 () Bool)

(declare-fun tp!686534 () Bool)

(assert (=> b!2208075 (= e!1410543 tp!686534)))

(declare-fun b!2208074 () Bool)

(assert (=> b!2208074 (= e!1410542 (and (inv!34907 (xs!11381 (c!352706 totalInput!846))) e!1410543))))

(assert (=> b!2207930 (= tp!686486 (and (inv!34899 (c!352706 totalInput!846)) e!1410542))))

(assert (= (and b!2207930 ((_ is Node!8439) (c!352706 totalInput!846))) b!2208073))

(assert (= b!2208074 b!2208075))

(assert (= (and b!2207930 ((_ is Leaf!12358) (c!352706 totalInput!846))) b!2208074))

(declare-fun m!2649737 () Bool)

(assert (=> b!2208073 m!2649737))

(declare-fun m!2649739 () Bool)

(assert (=> b!2208073 m!2649739))

(declare-fun m!2649741 () Bool)

(assert (=> b!2208074 m!2649741))

(assert (=> b!2207930 m!2649603))

(check-sat (not b!2208036) (not b!2207954) (not d!659905) (not b!2207956) (not d!659913) (not b!2208047) (not b!2208074) (not b!2208067) (not b!2208075) (not b!2208062) (not b!2207940) (not b!2207957) (not b!2208048) (not b!2208060) (not b!2208073) (not d!659879) (not b!2208061) (not d!659909) (not b!2208072) (not b!2208034) (not b!2207938) (not b!2207958) (not b!2207927) (not b!2207955) (not setNonEmpty!19316) (not b!2208033) (not b!2207930) (not d!659911) (not d!659919) (not d!659907) (not d!659923) (not b!2207953) (not d!659921))
(check-sat)
