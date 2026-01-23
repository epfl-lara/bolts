; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214650 () Bool)

(assert start!214650)

(declare-fun setIsEmpty!19254 () Bool)

(declare-fun setRes!19254 () Bool)

(assert (=> setIsEmpty!19254 setRes!19254))

(declare-fun setNonEmpty!19254 () Bool)

(declare-fun tp!686123 () Bool)

(declare-fun e!1409915 () Bool)

(declare-datatypes ((C!12728 0))(
  ( (C!12729 (val!7350 Int)) )
))
(declare-datatypes ((Regex!6291 0))(
  ( (ElementMatch!6291 (c!352542 C!12728)) (Concat!10593 (regOne!13094 Regex!6291) (regTwo!13094 Regex!6291)) (EmptyExpr!6291) (Star!6291 (reg!6620 Regex!6291)) (EmptyLang!6291) (Union!6291 (regOne!13095 Regex!6291) (regTwo!13095 Regex!6291)) )
))
(declare-datatypes ((List!25889 0))(
  ( (Nil!25805) (Cons!25805 (h!31206 Regex!6291) (t!198533 List!25889)) )
))
(declare-datatypes ((Context!3722 0))(
  ( (Context!3723 (exprs!2361 List!25889)) )
))
(declare-fun setElem!19254 () Context!3722)

(declare-fun inv!34831 (Context!3722) Bool)

(assert (=> setNonEmpty!19254 (= setRes!19254 (and tp!686123 (inv!34831 setElem!19254) e!1409915))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3830 () (InoxSet Context!3722))

(declare-fun setRest!19254 () (InoxSet Context!3722))

(assert (=> setNonEmpty!19254 (= z!3830 ((_ map or) (store ((as const (Array Context!3722 Bool)) false) setElem!19254 true) setRest!19254))))

(declare-fun b!2207050 () Bool)

(declare-fun e!1409916 () Bool)

(declare-datatypes ((List!25890 0))(
  ( (Nil!25806) (Cons!25806 (h!31207 C!12728) (t!198534 List!25890)) )
))
(declare-datatypes ((IArray!16859 0))(
  ( (IArray!16860 (innerList!8487 List!25890)) )
))
(declare-datatypes ((Conc!8427 0))(
  ( (Node!8427 (left!19835 Conc!8427) (right!20165 Conc!8427) (csize!17084 Int) (cheight!8638 Int)) (Leaf!12340 (xs!11369 IArray!16859) (csize!17085 Int)) (Empty!8427) )
))
(declare-datatypes ((BalanceConc!16616 0))(
  ( (BalanceConc!16617 (c!352543 Conc!8427)) )
))
(declare-fun totalInput!846 () BalanceConc!16616)

(declare-fun tp!686121 () Bool)

(declare-fun inv!34832 (Conc!8427) Bool)

(assert (=> b!2207050 (= e!1409916 (and (inv!34832 (c!352543 totalInput!846)) tp!686121))))

(declare-fun b!2207051 () Bool)

(declare-fun tp!686122 () Bool)

(assert (=> b!2207051 (= e!1409915 tp!686122)))

(declare-fun res!948779 () Bool)

(declare-fun e!1409914 () Bool)

(assert (=> start!214650 (=> (not res!948779) (not e!1409914))))

(declare-fun input!5506 () BalanceConc!16616)

(declare-fun isSuffix!728 (List!25890 List!25890) Bool)

(declare-fun list!9974 (BalanceConc!16616) List!25890)

(assert (=> start!214650 (= res!948779 (isSuffix!728 (list!9974 input!5506) (list!9974 totalInput!846)))))

(assert (=> start!214650 e!1409914))

(declare-fun e!1409917 () Bool)

(declare-fun inv!34833 (BalanceConc!16616) Bool)

(assert (=> start!214650 (and (inv!34833 input!5506) e!1409917)))

(assert (=> start!214650 (and (inv!34833 totalInput!846) e!1409916)))

(declare-fun condSetEmpty!19254 () Bool)

(assert (=> start!214650 (= condSetEmpty!19254 (= z!3830 ((as const (Array Context!3722 Bool)) false)))))

(assert (=> start!214650 setRes!19254))

(declare-fun b!2207052 () Bool)

(declare-fun tp!686124 () Bool)

(assert (=> b!2207052 (= e!1409917 (and (inv!34832 (c!352543 input!5506)) tp!686124))))

(declare-fun b!2207053 () Bool)

(declare-fun lt!825495 () Int)

(declare-fun lt!825494 () Int)

(assert (=> b!2207053 (= e!1409914 (or (< lt!825495 0) (> lt!825495 lt!825494)))))

(declare-fun lt!825496 () Bool)

(declare-fun nullableZipper!571 ((InoxSet Context!3722)) Bool)

(assert (=> b!2207053 (= lt!825496 (nullableZipper!571 z!3830))))

(declare-fun size!20101 (BalanceConc!16616) Int)

(assert (=> b!2207053 (= lt!825495 (- lt!825494 (size!20101 input!5506)))))

(assert (=> b!2207053 (= lt!825494 (size!20101 totalInput!846))))

(assert (= (and start!214650 res!948779) b!2207053))

(assert (= start!214650 b!2207052))

(assert (= start!214650 b!2207050))

(assert (= (and start!214650 condSetEmpty!19254) setIsEmpty!19254))

(assert (= (and start!214650 (not condSetEmpty!19254)) setNonEmpty!19254))

(assert (= setNonEmpty!19254 b!2207051))

(declare-fun m!2648697 () Bool)

(assert (=> b!2207053 m!2648697))

(declare-fun m!2648699 () Bool)

(assert (=> b!2207053 m!2648699))

(declare-fun m!2648701 () Bool)

(assert (=> b!2207053 m!2648701))

(declare-fun m!2648703 () Bool)

(assert (=> setNonEmpty!19254 m!2648703))

(declare-fun m!2648705 () Bool)

(assert (=> b!2207050 m!2648705))

(declare-fun m!2648707 () Bool)

(assert (=> b!2207052 m!2648707))

(declare-fun m!2648709 () Bool)

(assert (=> start!214650 m!2648709))

(declare-fun m!2648711 () Bool)

(assert (=> start!214650 m!2648711))

(declare-fun m!2648713 () Bool)

(assert (=> start!214650 m!2648713))

(declare-fun m!2648715 () Bool)

(assert (=> start!214650 m!2648715))

(assert (=> start!214650 m!2648709))

(assert (=> start!214650 m!2648711))

(declare-fun m!2648717 () Bool)

(assert (=> start!214650 m!2648717))

(check-sat (not b!2207051) (not b!2207053) (not start!214650) (not b!2207050) (not setNonEmpty!19254) (not b!2207052))
(check-sat)
(get-model)

(declare-fun d!659627 () Bool)

(declare-fun lambda!83340 () Int)

(declare-fun exists!864 ((InoxSet Context!3722) Int) Bool)

(assert (=> d!659627 (= (nullableZipper!571 z!3830) (exists!864 z!3830 lambda!83340))))

(declare-fun bs!451109 () Bool)

(assert (= bs!451109 d!659627))

(declare-fun m!2648741 () Bool)

(assert (=> bs!451109 m!2648741))

(assert (=> b!2207053 d!659627))

(declare-fun d!659647 () Bool)

(declare-fun lt!825506 () Int)

(declare-fun size!20104 (List!25890) Int)

(assert (=> d!659647 (= lt!825506 (size!20104 (list!9974 input!5506)))))

(declare-fun size!20105 (Conc!8427) Int)

(assert (=> d!659647 (= lt!825506 (size!20105 (c!352543 input!5506)))))

(assert (=> d!659647 (= (size!20101 input!5506) lt!825506)))

(declare-fun bs!451112 () Bool)

(assert (= bs!451112 d!659647))

(assert (=> bs!451112 m!2648709))

(assert (=> bs!451112 m!2648709))

(declare-fun m!2648751 () Bool)

(assert (=> bs!451112 m!2648751))

(declare-fun m!2648753 () Bool)

(assert (=> bs!451112 m!2648753))

(assert (=> b!2207053 d!659647))

(declare-fun d!659653 () Bool)

(declare-fun lt!825507 () Int)

(assert (=> d!659653 (= lt!825507 (size!20104 (list!9974 totalInput!846)))))

(assert (=> d!659653 (= lt!825507 (size!20105 (c!352543 totalInput!846)))))

(assert (=> d!659653 (= (size!20101 totalInput!846) lt!825507)))

(declare-fun bs!451113 () Bool)

(assert (= bs!451113 d!659653))

(assert (=> bs!451113 m!2648711))

(assert (=> bs!451113 m!2648711))

(declare-fun m!2648755 () Bool)

(assert (=> bs!451113 m!2648755))

(declare-fun m!2648757 () Bool)

(assert (=> bs!451113 m!2648757))

(assert (=> b!2207053 d!659653))

(declare-fun d!659655 () Bool)

(declare-fun c!352554 () Bool)

(get-info :version)

(assert (=> d!659655 (= c!352554 ((_ is Node!8427) (c!352543 input!5506)))))

(declare-fun e!1409947 () Bool)

(assert (=> d!659655 (= (inv!34832 (c!352543 input!5506)) e!1409947)))

(declare-fun b!2207099 () Bool)

(declare-fun inv!34837 (Conc!8427) Bool)

(assert (=> b!2207099 (= e!1409947 (inv!34837 (c!352543 input!5506)))))

(declare-fun b!2207100 () Bool)

(declare-fun e!1409948 () Bool)

(assert (=> b!2207100 (= e!1409947 e!1409948)))

(declare-fun res!948789 () Bool)

(assert (=> b!2207100 (= res!948789 (not ((_ is Leaf!12340) (c!352543 input!5506))))))

(assert (=> b!2207100 (=> res!948789 e!1409948)))

(declare-fun b!2207101 () Bool)

(declare-fun inv!34838 (Conc!8427) Bool)

(assert (=> b!2207101 (= e!1409948 (inv!34838 (c!352543 input!5506)))))

(assert (= (and d!659655 c!352554) b!2207099))

(assert (= (and d!659655 (not c!352554)) b!2207100))

(assert (= (and b!2207100 (not res!948789)) b!2207101))

(declare-fun m!2648773 () Bool)

(assert (=> b!2207099 m!2648773))

(declare-fun m!2648775 () Bool)

(assert (=> b!2207101 m!2648775))

(assert (=> b!2207052 d!659655))

(declare-fun d!659657 () Bool)

(declare-fun list!9976 (Conc!8427) List!25890)

(assert (=> d!659657 (= (list!9974 totalInput!846) (list!9976 (c!352543 totalInput!846)))))

(declare-fun bs!451114 () Bool)

(assert (= bs!451114 d!659657))

(declare-fun m!2648777 () Bool)

(assert (=> bs!451114 m!2648777))

(assert (=> start!214650 d!659657))

(declare-fun d!659659 () Bool)

(declare-fun e!1409951 () Bool)

(assert (=> d!659659 e!1409951))

(declare-fun res!948792 () Bool)

(assert (=> d!659659 (=> res!948792 e!1409951)))

(declare-fun lt!825510 () Bool)

(assert (=> d!659659 (= res!948792 (not lt!825510))))

(declare-fun drop!1479 (List!25890 Int) List!25890)

(assert (=> d!659659 (= lt!825510 (= (list!9974 input!5506) (drop!1479 (list!9974 totalInput!846) (- (size!20104 (list!9974 totalInput!846)) (size!20104 (list!9974 input!5506))))))))

(assert (=> d!659659 (= (isSuffix!728 (list!9974 input!5506) (list!9974 totalInput!846)) lt!825510)))

(declare-fun b!2207104 () Bool)

(assert (=> b!2207104 (= e!1409951 (>= (size!20104 (list!9974 totalInput!846)) (size!20104 (list!9974 input!5506))))))

(assert (= (and d!659659 (not res!948792)) b!2207104))

(assert (=> d!659659 m!2648711))

(assert (=> d!659659 m!2648755))

(assert (=> d!659659 m!2648709))

(assert (=> d!659659 m!2648751))

(assert (=> d!659659 m!2648711))

(declare-fun m!2648779 () Bool)

(assert (=> d!659659 m!2648779))

(assert (=> b!2207104 m!2648711))

(assert (=> b!2207104 m!2648755))

(assert (=> b!2207104 m!2648709))

(assert (=> b!2207104 m!2648751))

(assert (=> start!214650 d!659659))

(declare-fun d!659661 () Bool)

(declare-fun isBalanced!2591 (Conc!8427) Bool)

(assert (=> d!659661 (= (inv!34833 totalInput!846) (isBalanced!2591 (c!352543 totalInput!846)))))

(declare-fun bs!451115 () Bool)

(assert (= bs!451115 d!659661))

(declare-fun m!2648781 () Bool)

(assert (=> bs!451115 m!2648781))

(assert (=> start!214650 d!659661))

(declare-fun d!659663 () Bool)

(assert (=> d!659663 (= (list!9974 input!5506) (list!9976 (c!352543 input!5506)))))

(declare-fun bs!451116 () Bool)

(assert (= bs!451116 d!659663))

(declare-fun m!2648783 () Bool)

(assert (=> bs!451116 m!2648783))

(assert (=> start!214650 d!659663))

(declare-fun d!659665 () Bool)

(assert (=> d!659665 (= (inv!34833 input!5506) (isBalanced!2591 (c!352543 input!5506)))))

(declare-fun bs!451117 () Bool)

(assert (= bs!451117 d!659665))

(declare-fun m!2648785 () Bool)

(assert (=> bs!451117 m!2648785))

(assert (=> start!214650 d!659665))

(declare-fun d!659667 () Bool)

(declare-fun c!352555 () Bool)

(assert (=> d!659667 (= c!352555 ((_ is Node!8427) (c!352543 totalInput!846)))))

(declare-fun e!1409952 () Bool)

(assert (=> d!659667 (= (inv!34832 (c!352543 totalInput!846)) e!1409952)))

(declare-fun b!2207105 () Bool)

(assert (=> b!2207105 (= e!1409952 (inv!34837 (c!352543 totalInput!846)))))

(declare-fun b!2207106 () Bool)

(declare-fun e!1409953 () Bool)

(assert (=> b!2207106 (= e!1409952 e!1409953)))

(declare-fun res!948793 () Bool)

(assert (=> b!2207106 (= res!948793 (not ((_ is Leaf!12340) (c!352543 totalInput!846))))))

(assert (=> b!2207106 (=> res!948793 e!1409953)))

(declare-fun b!2207107 () Bool)

(assert (=> b!2207107 (= e!1409953 (inv!34838 (c!352543 totalInput!846)))))

(assert (= (and d!659667 c!352555) b!2207105))

(assert (= (and d!659667 (not c!352555)) b!2207106))

(assert (= (and b!2207106 (not res!948793)) b!2207107))

(declare-fun m!2648787 () Bool)

(assert (=> b!2207105 m!2648787))

(declare-fun m!2648789 () Bool)

(assert (=> b!2207107 m!2648789))

(assert (=> b!2207050 d!659667))

(declare-fun d!659669 () Bool)

(declare-fun lambda!83343 () Int)

(declare-fun forall!5278 (List!25889 Int) Bool)

(assert (=> d!659669 (= (inv!34831 setElem!19254) (forall!5278 (exprs!2361 setElem!19254) lambda!83343))))

(declare-fun bs!451118 () Bool)

(assert (= bs!451118 d!659669))

(declare-fun m!2648791 () Bool)

(assert (=> bs!451118 m!2648791))

(assert (=> setNonEmpty!19254 d!659669))

(declare-fun tp!686157 () Bool)

(declare-fun e!1409959 () Bool)

(declare-fun tp!686156 () Bool)

(declare-fun b!2207116 () Bool)

(assert (=> b!2207116 (= e!1409959 (and (inv!34832 (left!19835 (c!352543 input!5506))) tp!686156 (inv!34832 (right!20165 (c!352543 input!5506))) tp!686157))))

(declare-fun b!2207118 () Bool)

(declare-fun e!1409958 () Bool)

(declare-fun tp!686155 () Bool)

(assert (=> b!2207118 (= e!1409958 tp!686155)))

(declare-fun b!2207117 () Bool)

(declare-fun inv!34839 (IArray!16859) Bool)

(assert (=> b!2207117 (= e!1409959 (and (inv!34839 (xs!11369 (c!352543 input!5506))) e!1409958))))

(assert (=> b!2207052 (= tp!686124 (and (inv!34832 (c!352543 input!5506)) e!1409959))))

(assert (= (and b!2207052 ((_ is Node!8427) (c!352543 input!5506))) b!2207116))

(assert (= b!2207117 b!2207118))

(assert (= (and b!2207052 ((_ is Leaf!12340) (c!352543 input!5506))) b!2207117))

(declare-fun m!2648793 () Bool)

(assert (=> b!2207116 m!2648793))

(declare-fun m!2648795 () Bool)

(assert (=> b!2207116 m!2648795))

(declare-fun m!2648797 () Bool)

(assert (=> b!2207117 m!2648797))

(assert (=> b!2207052 m!2648707))

(declare-fun b!2207123 () Bool)

(declare-fun e!1409962 () Bool)

(declare-fun tp!686162 () Bool)

(declare-fun tp!686163 () Bool)

(assert (=> b!2207123 (= e!1409962 (and tp!686162 tp!686163))))

(assert (=> b!2207051 (= tp!686122 e!1409962)))

(assert (= (and b!2207051 ((_ is Cons!25805) (exprs!2361 setElem!19254))) b!2207123))

(declare-fun tp!686166 () Bool)

(declare-fun b!2207124 () Bool)

(declare-fun e!1409964 () Bool)

(declare-fun tp!686165 () Bool)

(assert (=> b!2207124 (= e!1409964 (and (inv!34832 (left!19835 (c!352543 totalInput!846))) tp!686165 (inv!34832 (right!20165 (c!352543 totalInput!846))) tp!686166))))

(declare-fun b!2207126 () Bool)

(declare-fun e!1409963 () Bool)

(declare-fun tp!686164 () Bool)

(assert (=> b!2207126 (= e!1409963 tp!686164)))

(declare-fun b!2207125 () Bool)

(assert (=> b!2207125 (= e!1409964 (and (inv!34839 (xs!11369 (c!352543 totalInput!846))) e!1409963))))

(assert (=> b!2207050 (= tp!686121 (and (inv!34832 (c!352543 totalInput!846)) e!1409964))))

(assert (= (and b!2207050 ((_ is Node!8427) (c!352543 totalInput!846))) b!2207124))

(assert (= b!2207125 b!2207126))

(assert (= (and b!2207050 ((_ is Leaf!12340) (c!352543 totalInput!846))) b!2207125))

(declare-fun m!2648799 () Bool)

(assert (=> b!2207124 m!2648799))

(declare-fun m!2648801 () Bool)

(assert (=> b!2207124 m!2648801))

(declare-fun m!2648803 () Bool)

(assert (=> b!2207125 m!2648803))

(assert (=> b!2207050 m!2648705))

(declare-fun condSetEmpty!19260 () Bool)

(assert (=> setNonEmpty!19254 (= condSetEmpty!19260 (= setRest!19254 ((as const (Array Context!3722 Bool)) false)))))

(declare-fun setRes!19260 () Bool)

(assert (=> setNonEmpty!19254 (= tp!686123 setRes!19260)))

(declare-fun setIsEmpty!19260 () Bool)

(assert (=> setIsEmpty!19260 setRes!19260))

(declare-fun setNonEmpty!19260 () Bool)

(declare-fun tp!686172 () Bool)

(declare-fun e!1409967 () Bool)

(declare-fun setElem!19260 () Context!3722)

(assert (=> setNonEmpty!19260 (= setRes!19260 (and tp!686172 (inv!34831 setElem!19260) e!1409967))))

(declare-fun setRest!19260 () (InoxSet Context!3722))

(assert (=> setNonEmpty!19260 (= setRest!19254 ((_ map or) (store ((as const (Array Context!3722 Bool)) false) setElem!19260 true) setRest!19260))))

(declare-fun b!2207131 () Bool)

(declare-fun tp!686171 () Bool)

(assert (=> b!2207131 (= e!1409967 tp!686171)))

(assert (= (and setNonEmpty!19254 condSetEmpty!19260) setIsEmpty!19260))

(assert (= (and setNonEmpty!19254 (not condSetEmpty!19260)) setNonEmpty!19260))

(assert (= setNonEmpty!19260 b!2207131))

(declare-fun m!2648805 () Bool)

(assert (=> setNonEmpty!19260 m!2648805))

(check-sat (not b!2207117) (not setNonEmpty!19260) (not d!659663) (not b!2207116) (not b!2207104) (not b!2207050) (not b!2207123) (not d!659657) (not d!659647) (not b!2207099) (not d!659669) (not b!2207107) (not b!2207118) (not d!659661) (not d!659665) (not b!2207126) (not b!2207105) (not b!2207125) (not d!659653) (not b!2207124) (not b!2207052) (not b!2207101) (not d!659659) (not d!659627) (not b!2207131))
(check-sat)
(get-model)

(declare-fun d!659671 () Bool)

(declare-fun lt!825513 () Int)

(assert (=> d!659671 (>= lt!825513 0)))

(declare-fun e!1409970 () Int)

(assert (=> d!659671 (= lt!825513 e!1409970)))

(declare-fun c!352558 () Bool)

(assert (=> d!659671 (= c!352558 ((_ is Nil!25806) (list!9974 totalInput!846)))))

(assert (=> d!659671 (= (size!20104 (list!9974 totalInput!846)) lt!825513)))

(declare-fun b!2207136 () Bool)

(assert (=> b!2207136 (= e!1409970 0)))

(declare-fun b!2207137 () Bool)

(assert (=> b!2207137 (= e!1409970 (+ 1 (size!20104 (t!198534 (list!9974 totalInput!846)))))))

(assert (= (and d!659671 c!352558) b!2207136))

(assert (= (and d!659671 (not c!352558)) b!2207137))

(declare-fun m!2648807 () Bool)

(assert (=> b!2207137 m!2648807))

(assert (=> b!2207104 d!659671))

(declare-fun d!659673 () Bool)

(declare-fun lt!825514 () Int)

(assert (=> d!659673 (>= lt!825514 0)))

(declare-fun e!1409971 () Int)

(assert (=> d!659673 (= lt!825514 e!1409971)))

(declare-fun c!352559 () Bool)

(assert (=> d!659673 (= c!352559 ((_ is Nil!25806) (list!9974 input!5506)))))

(assert (=> d!659673 (= (size!20104 (list!9974 input!5506)) lt!825514)))

(declare-fun b!2207138 () Bool)

(assert (=> b!2207138 (= e!1409971 0)))

(declare-fun b!2207139 () Bool)

(assert (=> b!2207139 (= e!1409971 (+ 1 (size!20104 (t!198534 (list!9974 input!5506)))))))

(assert (= (and d!659673 c!352559) b!2207138))

(assert (= (and d!659673 (not c!352559)) b!2207139))

(declare-fun m!2648809 () Bool)

(assert (=> b!2207139 m!2648809))

(assert (=> b!2207104 d!659673))

(declare-fun d!659675 () Bool)

(assert (=> d!659675 (= (inv!34839 (xs!11369 (c!352543 totalInput!846))) (<= (size!20104 (innerList!8487 (xs!11369 (c!352543 totalInput!846)))) 2147483647))))

(declare-fun bs!451119 () Bool)

(assert (= bs!451119 d!659675))

(declare-fun m!2648811 () Bool)

(assert (=> bs!451119 m!2648811))

(assert (=> b!2207125 d!659675))

(declare-fun d!659677 () Bool)

(assert (=> d!659677 (= (inv!34839 (xs!11369 (c!352543 input!5506))) (<= (size!20104 (innerList!8487 (xs!11369 (c!352543 input!5506)))) 2147483647))))

(declare-fun bs!451120 () Bool)

(assert (= bs!451120 d!659677))

(declare-fun m!2648813 () Bool)

(assert (=> bs!451120 m!2648813))

(assert (=> b!2207117 d!659677))

(declare-fun d!659679 () Bool)

(declare-fun c!352560 () Bool)

(assert (=> d!659679 (= c!352560 ((_ is Node!8427) (left!19835 (c!352543 totalInput!846))))))

(declare-fun e!1409972 () Bool)

(assert (=> d!659679 (= (inv!34832 (left!19835 (c!352543 totalInput!846))) e!1409972)))

(declare-fun b!2207140 () Bool)

(assert (=> b!2207140 (= e!1409972 (inv!34837 (left!19835 (c!352543 totalInput!846))))))

(declare-fun b!2207141 () Bool)

(declare-fun e!1409973 () Bool)

(assert (=> b!2207141 (= e!1409972 e!1409973)))

(declare-fun res!948794 () Bool)

(assert (=> b!2207141 (= res!948794 (not ((_ is Leaf!12340) (left!19835 (c!352543 totalInput!846)))))))

(assert (=> b!2207141 (=> res!948794 e!1409973)))

(declare-fun b!2207142 () Bool)

(assert (=> b!2207142 (= e!1409973 (inv!34838 (left!19835 (c!352543 totalInput!846))))))

(assert (= (and d!659679 c!352560) b!2207140))

(assert (= (and d!659679 (not c!352560)) b!2207141))

(assert (= (and b!2207141 (not res!948794)) b!2207142))

(declare-fun m!2648815 () Bool)

(assert (=> b!2207140 m!2648815))

(declare-fun m!2648817 () Bool)

(assert (=> b!2207142 m!2648817))

(assert (=> b!2207124 d!659679))

(declare-fun d!659681 () Bool)

(declare-fun c!352561 () Bool)

(assert (=> d!659681 (= c!352561 ((_ is Node!8427) (right!20165 (c!352543 totalInput!846))))))

(declare-fun e!1409974 () Bool)

(assert (=> d!659681 (= (inv!34832 (right!20165 (c!352543 totalInput!846))) e!1409974)))

(declare-fun b!2207143 () Bool)

(assert (=> b!2207143 (= e!1409974 (inv!34837 (right!20165 (c!352543 totalInput!846))))))

(declare-fun b!2207144 () Bool)

(declare-fun e!1409975 () Bool)

(assert (=> b!2207144 (= e!1409974 e!1409975)))

(declare-fun res!948795 () Bool)

(assert (=> b!2207144 (= res!948795 (not ((_ is Leaf!12340) (right!20165 (c!352543 totalInput!846)))))))

(assert (=> b!2207144 (=> res!948795 e!1409975)))

(declare-fun b!2207145 () Bool)

(assert (=> b!2207145 (= e!1409975 (inv!34838 (right!20165 (c!352543 totalInput!846))))))

(assert (= (and d!659681 c!352561) b!2207143))

(assert (= (and d!659681 (not c!352561)) b!2207144))

(assert (= (and b!2207144 (not res!948795)) b!2207145))

(declare-fun m!2648819 () Bool)

(assert (=> b!2207143 m!2648819))

(declare-fun m!2648821 () Bool)

(assert (=> b!2207145 m!2648821))

(assert (=> b!2207124 d!659681))

(declare-fun d!659683 () Bool)

(declare-fun c!352562 () Bool)

(assert (=> d!659683 (= c!352562 ((_ is Node!8427) (left!19835 (c!352543 input!5506))))))

(declare-fun e!1409976 () Bool)

(assert (=> d!659683 (= (inv!34832 (left!19835 (c!352543 input!5506))) e!1409976)))

(declare-fun b!2207146 () Bool)

(assert (=> b!2207146 (= e!1409976 (inv!34837 (left!19835 (c!352543 input!5506))))))

(declare-fun b!2207147 () Bool)

(declare-fun e!1409977 () Bool)

(assert (=> b!2207147 (= e!1409976 e!1409977)))

(declare-fun res!948796 () Bool)

(assert (=> b!2207147 (= res!948796 (not ((_ is Leaf!12340) (left!19835 (c!352543 input!5506)))))))

(assert (=> b!2207147 (=> res!948796 e!1409977)))

(declare-fun b!2207148 () Bool)

(assert (=> b!2207148 (= e!1409977 (inv!34838 (left!19835 (c!352543 input!5506))))))

(assert (= (and d!659683 c!352562) b!2207146))

(assert (= (and d!659683 (not c!352562)) b!2207147))

(assert (= (and b!2207147 (not res!948796)) b!2207148))

(declare-fun m!2648823 () Bool)

(assert (=> b!2207146 m!2648823))

(declare-fun m!2648825 () Bool)

(assert (=> b!2207148 m!2648825))

(assert (=> b!2207116 d!659683))

(declare-fun d!659685 () Bool)

(declare-fun c!352563 () Bool)

(assert (=> d!659685 (= c!352563 ((_ is Node!8427) (right!20165 (c!352543 input!5506))))))

(declare-fun e!1409978 () Bool)

(assert (=> d!659685 (= (inv!34832 (right!20165 (c!352543 input!5506))) e!1409978)))

(declare-fun b!2207149 () Bool)

(assert (=> b!2207149 (= e!1409978 (inv!34837 (right!20165 (c!352543 input!5506))))))

(declare-fun b!2207150 () Bool)

(declare-fun e!1409979 () Bool)

(assert (=> b!2207150 (= e!1409978 e!1409979)))

(declare-fun res!948797 () Bool)

(assert (=> b!2207150 (= res!948797 (not ((_ is Leaf!12340) (right!20165 (c!352543 input!5506)))))))

(assert (=> b!2207150 (=> res!948797 e!1409979)))

(declare-fun b!2207151 () Bool)

(assert (=> b!2207151 (= e!1409979 (inv!34838 (right!20165 (c!352543 input!5506))))))

(assert (= (and d!659685 c!352563) b!2207149))

(assert (= (and d!659685 (not c!352563)) b!2207150))

(assert (= (and b!2207150 (not res!948797)) b!2207151))

(declare-fun m!2648827 () Bool)

(assert (=> b!2207149 m!2648827))

(declare-fun m!2648829 () Bool)

(assert (=> b!2207151 m!2648829))

(assert (=> b!2207116 d!659685))

(declare-fun d!659687 () Bool)

(declare-fun res!948802 () Bool)

(declare-fun e!1409982 () Bool)

(assert (=> d!659687 (=> (not res!948802) (not e!1409982))))

(declare-fun list!9977 (IArray!16859) List!25890)

(assert (=> d!659687 (= res!948802 (<= (size!20104 (list!9977 (xs!11369 (c!352543 input!5506)))) 512))))

(assert (=> d!659687 (= (inv!34838 (c!352543 input!5506)) e!1409982)))

(declare-fun b!2207156 () Bool)

(declare-fun res!948803 () Bool)

(assert (=> b!2207156 (=> (not res!948803) (not e!1409982))))

(assert (=> b!2207156 (= res!948803 (= (csize!17085 (c!352543 input!5506)) (size!20104 (list!9977 (xs!11369 (c!352543 input!5506))))))))

(declare-fun b!2207157 () Bool)

(assert (=> b!2207157 (= e!1409982 (and (> (csize!17085 (c!352543 input!5506)) 0) (<= (csize!17085 (c!352543 input!5506)) 512)))))

(assert (= (and d!659687 res!948802) b!2207156))

(assert (= (and b!2207156 res!948803) b!2207157))

(declare-fun m!2648831 () Bool)

(assert (=> d!659687 m!2648831))

(assert (=> d!659687 m!2648831))

(declare-fun m!2648833 () Bool)

(assert (=> d!659687 m!2648833))

(assert (=> b!2207156 m!2648831))

(assert (=> b!2207156 m!2648831))

(assert (=> b!2207156 m!2648833))

(assert (=> b!2207101 d!659687))

(declare-fun d!659691 () Bool)

(declare-fun res!948804 () Bool)

(declare-fun e!1409983 () Bool)

(assert (=> d!659691 (=> (not res!948804) (not e!1409983))))

(assert (=> d!659691 (= res!948804 (<= (size!20104 (list!9977 (xs!11369 (c!352543 totalInput!846)))) 512))))

(assert (=> d!659691 (= (inv!34838 (c!352543 totalInput!846)) e!1409983)))

(declare-fun b!2207158 () Bool)

(declare-fun res!948805 () Bool)

(assert (=> b!2207158 (=> (not res!948805) (not e!1409983))))

(assert (=> b!2207158 (= res!948805 (= (csize!17085 (c!352543 totalInput!846)) (size!20104 (list!9977 (xs!11369 (c!352543 totalInput!846))))))))

(declare-fun b!2207159 () Bool)

(assert (=> b!2207159 (= e!1409983 (and (> (csize!17085 (c!352543 totalInput!846)) 0) (<= (csize!17085 (c!352543 totalInput!846)) 512)))))

(assert (= (and d!659691 res!948804) b!2207158))

(assert (= (and b!2207158 res!948805) b!2207159))

(declare-fun m!2648835 () Bool)

(assert (=> d!659691 m!2648835))

(assert (=> d!659691 m!2648835))

(declare-fun m!2648837 () Bool)

(assert (=> d!659691 m!2648837))

(assert (=> b!2207158 m!2648835))

(assert (=> b!2207158 m!2648835))

(assert (=> b!2207158 m!2648837))

(assert (=> b!2207107 d!659691))

(declare-fun bs!451121 () Bool)

(declare-fun d!659693 () Bool)

(assert (= bs!451121 (and d!659693 d!659669)))

(declare-fun lambda!83344 () Int)

(assert (=> bs!451121 (= lambda!83344 lambda!83343)))

(assert (=> d!659693 (= (inv!34831 setElem!19260) (forall!5278 (exprs!2361 setElem!19260) lambda!83344))))

(declare-fun bs!451122 () Bool)

(assert (= bs!451122 d!659693))

(declare-fun m!2648839 () Bool)

(assert (=> bs!451122 m!2648839))

(assert (=> setNonEmpty!19260 d!659693))

(assert (=> b!2207050 d!659667))

(assert (=> d!659647 d!659673))

(assert (=> d!659647 d!659663))

(declare-fun d!659695 () Bool)

(declare-fun lt!825517 () Int)

(assert (=> d!659695 (= lt!825517 (size!20104 (list!9976 (c!352543 input!5506))))))

(assert (=> d!659695 (= lt!825517 (ite ((_ is Empty!8427) (c!352543 input!5506)) 0 (ite ((_ is Leaf!12340) (c!352543 input!5506)) (csize!17085 (c!352543 input!5506)) (csize!17084 (c!352543 input!5506)))))))

(assert (=> d!659695 (= (size!20105 (c!352543 input!5506)) lt!825517)))

(declare-fun bs!451123 () Bool)

(assert (= bs!451123 d!659695))

(assert (=> bs!451123 m!2648783))

(assert (=> bs!451123 m!2648783))

(declare-fun m!2648841 () Bool)

(assert (=> bs!451123 m!2648841))

(assert (=> d!659647 d!659695))

(assert (=> b!2207052 d!659655))

(assert (=> d!659653 d!659671))

(assert (=> d!659653 d!659657))

(declare-fun d!659697 () Bool)

(declare-fun lt!825518 () Int)

(assert (=> d!659697 (= lt!825518 (size!20104 (list!9976 (c!352543 totalInput!846))))))

(assert (=> d!659697 (= lt!825518 (ite ((_ is Empty!8427) (c!352543 totalInput!846)) 0 (ite ((_ is Leaf!12340) (c!352543 totalInput!846)) (csize!17085 (c!352543 totalInput!846)) (csize!17084 (c!352543 totalInput!846)))))))

(assert (=> d!659697 (= (size!20105 (c!352543 totalInput!846)) lt!825518)))

(declare-fun bs!451124 () Bool)

(assert (= bs!451124 d!659697))

(assert (=> bs!451124 m!2648777))

(assert (=> bs!451124 m!2648777))

(declare-fun m!2648843 () Bool)

(assert (=> bs!451124 m!2648843))

(assert (=> d!659653 d!659697))

(declare-fun b!2207187 () Bool)

(declare-fun e!1409998 () List!25890)

(declare-fun e!1409999 () List!25890)

(assert (=> b!2207187 (= e!1409998 e!1409999)))

(declare-fun c!352577 () Bool)

(assert (=> b!2207187 (= c!352577 ((_ is Leaf!12340) (c!352543 totalInput!846)))))

(declare-fun b!2207188 () Bool)

(assert (=> b!2207188 (= e!1409999 (list!9977 (xs!11369 (c!352543 totalInput!846))))))

(declare-fun b!2207186 () Bool)

(assert (=> b!2207186 (= e!1409998 Nil!25806)))

(declare-fun d!659699 () Bool)

(declare-fun c!352576 () Bool)

(assert (=> d!659699 (= c!352576 ((_ is Empty!8427) (c!352543 totalInput!846)))))

(assert (=> d!659699 (= (list!9976 (c!352543 totalInput!846)) e!1409998)))

(declare-fun b!2207189 () Bool)

(declare-fun ++!6431 (List!25890 List!25890) List!25890)

(assert (=> b!2207189 (= e!1409999 (++!6431 (list!9976 (left!19835 (c!352543 totalInput!846))) (list!9976 (right!20165 (c!352543 totalInput!846)))))))

(assert (= (and d!659699 c!352576) b!2207186))

(assert (= (and d!659699 (not c!352576)) b!2207187))

(assert (= (and b!2207187 c!352577) b!2207188))

(assert (= (and b!2207187 (not c!352577)) b!2207189))

(assert (=> b!2207188 m!2648835))

(declare-fun m!2648845 () Bool)

(assert (=> b!2207189 m!2648845))

(declare-fun m!2648847 () Bool)

(assert (=> b!2207189 m!2648847))

(assert (=> b!2207189 m!2648845))

(assert (=> b!2207189 m!2648847))

(declare-fun m!2648849 () Bool)

(assert (=> b!2207189 m!2648849))

(assert (=> d!659657 d!659699))

(declare-fun d!659701 () Bool)

(declare-fun res!948813 () Bool)

(declare-fun e!1410011 () Bool)

(assert (=> d!659701 (=> res!948813 e!1410011)))

(assert (=> d!659701 (= res!948813 ((_ is Nil!25805) (exprs!2361 setElem!19254)))))

(assert (=> d!659701 (= (forall!5278 (exprs!2361 setElem!19254) lambda!83343) e!1410011)))

(declare-fun b!2207207 () Bool)

(declare-fun e!1410012 () Bool)

(assert (=> b!2207207 (= e!1410011 e!1410012)))

(declare-fun res!948814 () Bool)

(assert (=> b!2207207 (=> (not res!948814) (not e!1410012))))

(declare-fun dynLambda!11457 (Int Regex!6291) Bool)

(assert (=> b!2207207 (= res!948814 (dynLambda!11457 lambda!83343 (h!31206 (exprs!2361 setElem!19254))))))

(declare-fun b!2207208 () Bool)

(assert (=> b!2207208 (= e!1410012 (forall!5278 (t!198533 (exprs!2361 setElem!19254)) lambda!83343))))

(assert (= (and d!659701 (not res!948813)) b!2207207))

(assert (= (and b!2207207 res!948814) b!2207208))

(declare-fun b_lambda!71249 () Bool)

(assert (=> (not b_lambda!71249) (not b!2207207)))

(declare-fun m!2648859 () Bool)

(assert (=> b!2207207 m!2648859))

(declare-fun m!2648861 () Bool)

(assert (=> b!2207208 m!2648861))

(assert (=> d!659669 d!659701))

(declare-fun b!2207241 () Bool)

(declare-fun res!948835 () Bool)

(declare-fun e!1410030 () Bool)

(assert (=> b!2207241 (=> (not res!948835) (not e!1410030))))

(assert (=> b!2207241 (= res!948835 (isBalanced!2591 (left!19835 (c!352543 totalInput!846))))))

(declare-fun b!2207242 () Bool)

(declare-fun res!948829 () Bool)

(assert (=> b!2207242 (=> (not res!948829) (not e!1410030))))

(declare-fun isEmpty!14765 (Conc!8427) Bool)

(assert (=> b!2207242 (= res!948829 (not (isEmpty!14765 (left!19835 (c!352543 totalInput!846)))))))

(declare-fun b!2207243 () Bool)

(assert (=> b!2207243 (= e!1410030 (not (isEmpty!14765 (right!20165 (c!352543 totalInput!846)))))))

(declare-fun b!2207244 () Bool)

(declare-fun res!948834 () Bool)

(assert (=> b!2207244 (=> (not res!948834) (not e!1410030))))

(declare-fun height!1258 (Conc!8427) Int)

(assert (=> b!2207244 (= res!948834 (<= (- (height!1258 (left!19835 (c!352543 totalInput!846))) (height!1258 (right!20165 (c!352543 totalInput!846)))) 1))))

(declare-fun d!659705 () Bool)

(declare-fun res!948830 () Bool)

(declare-fun e!1410029 () Bool)

(assert (=> d!659705 (=> res!948830 e!1410029)))

(assert (=> d!659705 (= res!948830 (not ((_ is Node!8427) (c!352543 totalInput!846))))))

(assert (=> d!659705 (= (isBalanced!2591 (c!352543 totalInput!846)) e!1410029)))

(declare-fun b!2207245 () Bool)

(declare-fun res!948836 () Bool)

(assert (=> b!2207245 (=> (not res!948836) (not e!1410030))))

(assert (=> b!2207245 (= res!948836 (isBalanced!2591 (right!20165 (c!352543 totalInput!846))))))

(declare-fun b!2207246 () Bool)

(assert (=> b!2207246 (= e!1410029 e!1410030)))

(declare-fun res!948833 () Bool)

(assert (=> b!2207246 (=> (not res!948833) (not e!1410030))))

(assert (=> b!2207246 (= res!948833 (<= (- 1) (- (height!1258 (left!19835 (c!352543 totalInput!846))) (height!1258 (right!20165 (c!352543 totalInput!846))))))))

(assert (= (and d!659705 (not res!948830)) b!2207246))

(assert (= (and b!2207246 res!948833) b!2207244))

(assert (= (and b!2207244 res!948834) b!2207241))

(assert (= (and b!2207241 res!948835) b!2207245))

(assert (= (and b!2207245 res!948836) b!2207242))

(assert (= (and b!2207242 res!948829) b!2207243))

(declare-fun m!2648875 () Bool)

(assert (=> b!2207243 m!2648875))

(declare-fun m!2648877 () Bool)

(assert (=> b!2207242 m!2648877))

(declare-fun m!2648879 () Bool)

(assert (=> b!2207245 m!2648879))

(declare-fun m!2648881 () Bool)

(assert (=> b!2207246 m!2648881))

(declare-fun m!2648883 () Bool)

(assert (=> b!2207246 m!2648883))

(declare-fun m!2648885 () Bool)

(assert (=> b!2207241 m!2648885))

(assert (=> b!2207244 m!2648881))

(assert (=> b!2207244 m!2648883))

(assert (=> d!659661 d!659705))

(declare-fun b!2207289 () Bool)

(declare-fun e!1410054 () List!25890)

(assert (=> b!2207289 (= e!1410054 Nil!25806)))

(declare-fun b!2207290 () Bool)

(declare-fun e!1410052 () Bool)

(declare-fun lt!825528 () List!25890)

(declare-fun e!1410055 () Int)

(assert (=> b!2207290 (= e!1410052 (= (size!20104 lt!825528) e!1410055))))

(declare-fun c!352602 () Bool)

(assert (=> b!2207290 (= c!352602 (<= (- (size!20104 (list!9974 totalInput!846)) (size!20104 (list!9974 input!5506))) 0))))

(declare-fun d!659713 () Bool)

(assert (=> d!659713 e!1410052))

(declare-fun res!948859 () Bool)

(assert (=> d!659713 (=> (not res!948859) (not e!1410052))))

(declare-fun content!3504 (List!25890) (InoxSet C!12728))

(assert (=> d!659713 (= res!948859 (= ((_ map implies) (content!3504 lt!825528) (content!3504 (list!9974 totalInput!846))) ((as const (InoxSet C!12728)) true)))))

(assert (=> d!659713 (= lt!825528 e!1410054)))

(declare-fun c!352604 () Bool)

(assert (=> d!659713 (= c!352604 ((_ is Nil!25806) (list!9974 totalInput!846)))))

(assert (=> d!659713 (= (drop!1479 (list!9974 totalInput!846) (- (size!20104 (list!9974 totalInput!846)) (size!20104 (list!9974 input!5506)))) lt!825528)))

(declare-fun e!1410056 () Int)

(declare-fun b!2207291 () Bool)

(declare-fun call!132286 () Int)

(assert (=> b!2207291 (= e!1410056 (- call!132286 (- (size!20104 (list!9974 totalInput!846)) (size!20104 (list!9974 input!5506)))))))

(declare-fun b!2207292 () Bool)

(declare-fun e!1410053 () List!25890)

(assert (=> b!2207292 (= e!1410053 (list!9974 totalInput!846))))

(declare-fun b!2207293 () Bool)

(assert (=> b!2207293 (= e!1410055 e!1410056)))

(declare-fun c!352603 () Bool)

(assert (=> b!2207293 (= c!352603 (>= (- (size!20104 (list!9974 totalInput!846)) (size!20104 (list!9974 input!5506))) call!132286))))

(declare-fun bm!132281 () Bool)

(assert (=> bm!132281 (= call!132286 (size!20104 (list!9974 totalInput!846)))))

(declare-fun b!2207294 () Bool)

(assert (=> b!2207294 (= e!1410053 (drop!1479 (t!198534 (list!9974 totalInput!846)) (- (- (size!20104 (list!9974 totalInput!846)) (size!20104 (list!9974 input!5506))) 1)))))

(declare-fun b!2207295 () Bool)

(assert (=> b!2207295 (= e!1410055 call!132286)))

(declare-fun b!2207296 () Bool)

(assert (=> b!2207296 (= e!1410056 0)))

(declare-fun b!2207297 () Bool)

(assert (=> b!2207297 (= e!1410054 e!1410053)))

(declare-fun c!352605 () Bool)

(assert (=> b!2207297 (= c!352605 (<= (- (size!20104 (list!9974 totalInput!846)) (size!20104 (list!9974 input!5506))) 0))))

(assert (= (and d!659713 c!352604) b!2207289))

(assert (= (and d!659713 (not c!352604)) b!2207297))

(assert (= (and b!2207297 c!352605) b!2207292))

(assert (= (and b!2207297 (not c!352605)) b!2207294))

(assert (= (and d!659713 res!948859) b!2207290))

(assert (= (and b!2207290 c!352602) b!2207295))

(assert (= (and b!2207290 (not c!352602)) b!2207293))

(assert (= (and b!2207293 c!352603) b!2207296))

(assert (= (and b!2207293 (not c!352603)) b!2207291))

(assert (= (or b!2207295 b!2207293 b!2207291) bm!132281))

(declare-fun m!2648901 () Bool)

(assert (=> b!2207290 m!2648901))

(declare-fun m!2648903 () Bool)

(assert (=> d!659713 m!2648903))

(assert (=> d!659713 m!2648711))

(declare-fun m!2648905 () Bool)

(assert (=> d!659713 m!2648905))

(assert (=> bm!132281 m!2648711))

(assert (=> bm!132281 m!2648755))

(declare-fun m!2648907 () Bool)

(assert (=> b!2207294 m!2648907))

(assert (=> d!659659 d!659713))

(assert (=> d!659659 d!659671))

(assert (=> d!659659 d!659673))

(declare-fun b!2207299 () Bool)

(declare-fun e!1410057 () List!25890)

(declare-fun e!1410058 () List!25890)

(assert (=> b!2207299 (= e!1410057 e!1410058)))

(declare-fun c!352607 () Bool)

(assert (=> b!2207299 (= c!352607 ((_ is Leaf!12340) (c!352543 input!5506)))))

(declare-fun b!2207300 () Bool)

(assert (=> b!2207300 (= e!1410058 (list!9977 (xs!11369 (c!352543 input!5506))))))

(declare-fun b!2207298 () Bool)

(assert (=> b!2207298 (= e!1410057 Nil!25806)))

(declare-fun d!659721 () Bool)

(declare-fun c!352606 () Bool)

(assert (=> d!659721 (= c!352606 ((_ is Empty!8427) (c!352543 input!5506)))))

(assert (=> d!659721 (= (list!9976 (c!352543 input!5506)) e!1410057)))

(declare-fun b!2207301 () Bool)

(assert (=> b!2207301 (= e!1410058 (++!6431 (list!9976 (left!19835 (c!352543 input!5506))) (list!9976 (right!20165 (c!352543 input!5506)))))))

(assert (= (and d!659721 c!352606) b!2207298))

(assert (= (and d!659721 (not c!352606)) b!2207299))

(assert (= (and b!2207299 c!352607) b!2207300))

(assert (= (and b!2207299 (not c!352607)) b!2207301))

(assert (=> b!2207300 m!2648831))

(declare-fun m!2648909 () Bool)

(assert (=> b!2207301 m!2648909))

(declare-fun m!2648911 () Bool)

(assert (=> b!2207301 m!2648911))

(assert (=> b!2207301 m!2648909))

(assert (=> b!2207301 m!2648911))

(declare-fun m!2648913 () Bool)

(assert (=> b!2207301 m!2648913))

(assert (=> d!659663 d!659721))

(declare-fun b!2207302 () Bool)

(declare-fun res!948864 () Bool)

(declare-fun e!1410060 () Bool)

(assert (=> b!2207302 (=> (not res!948864) (not e!1410060))))

(assert (=> b!2207302 (= res!948864 (isBalanced!2591 (left!19835 (c!352543 input!5506))))))

(declare-fun b!2207303 () Bool)

(declare-fun res!948860 () Bool)

(assert (=> b!2207303 (=> (not res!948860) (not e!1410060))))

(assert (=> b!2207303 (= res!948860 (not (isEmpty!14765 (left!19835 (c!352543 input!5506)))))))

(declare-fun b!2207304 () Bool)

(assert (=> b!2207304 (= e!1410060 (not (isEmpty!14765 (right!20165 (c!352543 input!5506)))))))

(declare-fun b!2207305 () Bool)

(declare-fun res!948863 () Bool)

(assert (=> b!2207305 (=> (not res!948863) (not e!1410060))))

(assert (=> b!2207305 (= res!948863 (<= (- (height!1258 (left!19835 (c!352543 input!5506))) (height!1258 (right!20165 (c!352543 input!5506)))) 1))))

(declare-fun d!659723 () Bool)

(declare-fun res!948861 () Bool)

(declare-fun e!1410059 () Bool)

(assert (=> d!659723 (=> res!948861 e!1410059)))

(assert (=> d!659723 (= res!948861 (not ((_ is Node!8427) (c!352543 input!5506))))))

(assert (=> d!659723 (= (isBalanced!2591 (c!352543 input!5506)) e!1410059)))

(declare-fun b!2207306 () Bool)

(declare-fun res!948865 () Bool)

(assert (=> b!2207306 (=> (not res!948865) (not e!1410060))))

(assert (=> b!2207306 (= res!948865 (isBalanced!2591 (right!20165 (c!352543 input!5506))))))

(declare-fun b!2207307 () Bool)

(assert (=> b!2207307 (= e!1410059 e!1410060)))

(declare-fun res!948862 () Bool)

(assert (=> b!2207307 (=> (not res!948862) (not e!1410060))))

(assert (=> b!2207307 (= res!948862 (<= (- 1) (- (height!1258 (left!19835 (c!352543 input!5506))) (height!1258 (right!20165 (c!352543 input!5506))))))))

(assert (= (and d!659723 (not res!948861)) b!2207307))

(assert (= (and b!2207307 res!948862) b!2207305))

(assert (= (and b!2207305 res!948863) b!2207302))

(assert (= (and b!2207302 res!948864) b!2207306))

(assert (= (and b!2207306 res!948865) b!2207303))

(assert (= (and b!2207303 res!948860) b!2207304))

(declare-fun m!2648915 () Bool)

(assert (=> b!2207304 m!2648915))

(declare-fun m!2648917 () Bool)

(assert (=> b!2207303 m!2648917))

(declare-fun m!2648919 () Bool)

(assert (=> b!2207306 m!2648919))

(declare-fun m!2648921 () Bool)

(assert (=> b!2207307 m!2648921))

(declare-fun m!2648923 () Bool)

(assert (=> b!2207307 m!2648923))

(declare-fun m!2648925 () Bool)

(assert (=> b!2207302 m!2648925))

(assert (=> b!2207305 m!2648921))

(assert (=> b!2207305 m!2648923))

(assert (=> d!659665 d!659723))

(declare-fun d!659725 () Bool)

(declare-fun res!948880 () Bool)

(declare-fun e!1410069 () Bool)

(assert (=> d!659725 (=> (not res!948880) (not e!1410069))))

(assert (=> d!659725 (= res!948880 (= (csize!17084 (c!352543 input!5506)) (+ (size!20105 (left!19835 (c!352543 input!5506))) (size!20105 (right!20165 (c!352543 input!5506))))))))

(assert (=> d!659725 (= (inv!34837 (c!352543 input!5506)) e!1410069)))

(declare-fun b!2207326 () Bool)

(declare-fun res!948881 () Bool)

(assert (=> b!2207326 (=> (not res!948881) (not e!1410069))))

(assert (=> b!2207326 (= res!948881 (and (not (= (left!19835 (c!352543 input!5506)) Empty!8427)) (not (= (right!20165 (c!352543 input!5506)) Empty!8427))))))

(declare-fun b!2207327 () Bool)

(declare-fun res!948882 () Bool)

(assert (=> b!2207327 (=> (not res!948882) (not e!1410069))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2207327 (= res!948882 (= (cheight!8638 (c!352543 input!5506)) (+ (max!0 (height!1258 (left!19835 (c!352543 input!5506))) (height!1258 (right!20165 (c!352543 input!5506)))) 1)))))

(declare-fun b!2207328 () Bool)

(assert (=> b!2207328 (= e!1410069 (<= 0 (cheight!8638 (c!352543 input!5506))))))

(assert (= (and d!659725 res!948880) b!2207326))

(assert (= (and b!2207326 res!948881) b!2207327))

(assert (= (and b!2207327 res!948882) b!2207328))

(declare-fun m!2648949 () Bool)

(assert (=> d!659725 m!2648949))

(declare-fun m!2648951 () Bool)

(assert (=> d!659725 m!2648951))

(assert (=> b!2207327 m!2648921))

(assert (=> b!2207327 m!2648923))

(assert (=> b!2207327 m!2648921))

(assert (=> b!2207327 m!2648923))

(declare-fun m!2648953 () Bool)

(assert (=> b!2207327 m!2648953))

(assert (=> b!2207099 d!659725))

(declare-fun d!659735 () Bool)

(declare-fun res!948883 () Bool)

(declare-fun e!1410070 () Bool)

(assert (=> d!659735 (=> (not res!948883) (not e!1410070))))

(assert (=> d!659735 (= res!948883 (= (csize!17084 (c!352543 totalInput!846)) (+ (size!20105 (left!19835 (c!352543 totalInput!846))) (size!20105 (right!20165 (c!352543 totalInput!846))))))))

(assert (=> d!659735 (= (inv!34837 (c!352543 totalInput!846)) e!1410070)))

(declare-fun b!2207329 () Bool)

(declare-fun res!948884 () Bool)

(assert (=> b!2207329 (=> (not res!948884) (not e!1410070))))

(assert (=> b!2207329 (= res!948884 (and (not (= (left!19835 (c!352543 totalInput!846)) Empty!8427)) (not (= (right!20165 (c!352543 totalInput!846)) Empty!8427))))))

(declare-fun b!2207330 () Bool)

(declare-fun res!948885 () Bool)

(assert (=> b!2207330 (=> (not res!948885) (not e!1410070))))

(assert (=> b!2207330 (= res!948885 (= (cheight!8638 (c!352543 totalInput!846)) (+ (max!0 (height!1258 (left!19835 (c!352543 totalInput!846))) (height!1258 (right!20165 (c!352543 totalInput!846)))) 1)))))

(declare-fun b!2207331 () Bool)

(assert (=> b!2207331 (= e!1410070 (<= 0 (cheight!8638 (c!352543 totalInput!846))))))

(assert (= (and d!659735 res!948883) b!2207329))

(assert (= (and b!2207329 res!948884) b!2207330))

(assert (= (and b!2207330 res!948885) b!2207331))

(declare-fun m!2648955 () Bool)

(assert (=> d!659735 m!2648955))

(declare-fun m!2648957 () Bool)

(assert (=> d!659735 m!2648957))

(assert (=> b!2207330 m!2648881))

(assert (=> b!2207330 m!2648883))

(assert (=> b!2207330 m!2648881))

(assert (=> b!2207330 m!2648883))

(declare-fun m!2648961 () Bool)

(assert (=> b!2207330 m!2648961))

(assert (=> b!2207105 d!659735))

(declare-fun d!659739 () Bool)

(declare-fun lt!825534 () Bool)

(declare-datatypes ((List!25892 0))(
  ( (Nil!25808) (Cons!25808 (h!31209 Context!3722) (t!198542 List!25892)) )
))
(declare-fun exists!866 (List!25892 Int) Bool)

(declare-fun toList!1278 ((InoxSet Context!3722)) List!25892)

(assert (=> d!659739 (= lt!825534 (exists!866 (toList!1278 z!3830) lambda!83340))))

(declare-fun choose!13040 ((InoxSet Context!3722) Int) Bool)

(assert (=> d!659739 (= lt!825534 (choose!13040 z!3830 lambda!83340))))

(assert (=> d!659739 (= (exists!864 z!3830 lambda!83340) lt!825534)))

(declare-fun bs!451127 () Bool)

(assert (= bs!451127 d!659739))

(declare-fun m!2648963 () Bool)

(assert (=> bs!451127 m!2648963))

(assert (=> bs!451127 m!2648963))

(declare-fun m!2648965 () Bool)

(assert (=> bs!451127 m!2648965))

(declare-fun m!2648967 () Bool)

(assert (=> bs!451127 m!2648967))

(assert (=> d!659627 d!659739))

(declare-fun b!2207338 () Bool)

(declare-fun e!1410073 () Bool)

(declare-fun tp!686173 () Bool)

(declare-fun tp!686174 () Bool)

(assert (=> b!2207338 (= e!1410073 (and tp!686173 tp!686174))))

(assert (=> b!2207131 (= tp!686171 e!1410073)))

(assert (= (and b!2207131 ((_ is Cons!25805) (exprs!2361 setElem!19260))) b!2207338))

(declare-fun tp!686177 () Bool)

(declare-fun e!1410075 () Bool)

(declare-fun b!2207339 () Bool)

(declare-fun tp!686176 () Bool)

(assert (=> b!2207339 (= e!1410075 (and (inv!34832 (left!19835 (left!19835 (c!352543 totalInput!846)))) tp!686176 (inv!34832 (right!20165 (left!19835 (c!352543 totalInput!846)))) tp!686177))))

(declare-fun b!2207341 () Bool)

(declare-fun e!1410074 () Bool)

(declare-fun tp!686175 () Bool)

(assert (=> b!2207341 (= e!1410074 tp!686175)))

(declare-fun b!2207340 () Bool)

(assert (=> b!2207340 (= e!1410075 (and (inv!34839 (xs!11369 (left!19835 (c!352543 totalInput!846)))) e!1410074))))

(assert (=> b!2207124 (= tp!686165 (and (inv!34832 (left!19835 (c!352543 totalInput!846))) e!1410075))))

(assert (= (and b!2207124 ((_ is Node!8427) (left!19835 (c!352543 totalInput!846)))) b!2207339))

(assert (= b!2207340 b!2207341))

(assert (= (and b!2207124 ((_ is Leaf!12340) (left!19835 (c!352543 totalInput!846)))) b!2207340))

(declare-fun m!2648969 () Bool)

(assert (=> b!2207339 m!2648969))

(declare-fun m!2648971 () Bool)

(assert (=> b!2207339 m!2648971))

(declare-fun m!2648973 () Bool)

(assert (=> b!2207340 m!2648973))

(assert (=> b!2207124 m!2648799))

(declare-fun tp!686180 () Bool)

(declare-fun tp!686179 () Bool)

(declare-fun b!2207342 () Bool)

(declare-fun e!1410077 () Bool)

(assert (=> b!2207342 (= e!1410077 (and (inv!34832 (left!19835 (right!20165 (c!352543 totalInput!846)))) tp!686179 (inv!34832 (right!20165 (right!20165 (c!352543 totalInput!846)))) tp!686180))))

(declare-fun b!2207344 () Bool)

(declare-fun e!1410076 () Bool)

(declare-fun tp!686178 () Bool)

(assert (=> b!2207344 (= e!1410076 tp!686178)))

(declare-fun b!2207343 () Bool)

(assert (=> b!2207343 (= e!1410077 (and (inv!34839 (xs!11369 (right!20165 (c!352543 totalInput!846)))) e!1410076))))

(assert (=> b!2207124 (= tp!686166 (and (inv!34832 (right!20165 (c!352543 totalInput!846))) e!1410077))))

(assert (= (and b!2207124 ((_ is Node!8427) (right!20165 (c!352543 totalInput!846)))) b!2207342))

(assert (= b!2207343 b!2207344))

(assert (= (and b!2207124 ((_ is Leaf!12340) (right!20165 (c!352543 totalInput!846)))) b!2207343))

(declare-fun m!2648975 () Bool)

(assert (=> b!2207342 m!2648975))

(declare-fun m!2648977 () Bool)

(assert (=> b!2207342 m!2648977))

(declare-fun m!2648979 () Bool)

(assert (=> b!2207343 m!2648979))

(assert (=> b!2207124 m!2648801))

(declare-fun b!2207345 () Bool)

(declare-fun tp!686183 () Bool)

(declare-fun e!1410079 () Bool)

(declare-fun tp!686182 () Bool)

(assert (=> b!2207345 (= e!1410079 (and (inv!34832 (left!19835 (left!19835 (c!352543 input!5506)))) tp!686182 (inv!34832 (right!20165 (left!19835 (c!352543 input!5506)))) tp!686183))))

(declare-fun b!2207347 () Bool)

(declare-fun e!1410078 () Bool)

(declare-fun tp!686181 () Bool)

(assert (=> b!2207347 (= e!1410078 tp!686181)))

(declare-fun b!2207346 () Bool)

(assert (=> b!2207346 (= e!1410079 (and (inv!34839 (xs!11369 (left!19835 (c!352543 input!5506)))) e!1410078))))

(assert (=> b!2207116 (= tp!686156 (and (inv!34832 (left!19835 (c!352543 input!5506))) e!1410079))))

(assert (= (and b!2207116 ((_ is Node!8427) (left!19835 (c!352543 input!5506)))) b!2207345))

(assert (= b!2207346 b!2207347))

(assert (= (and b!2207116 ((_ is Leaf!12340) (left!19835 (c!352543 input!5506)))) b!2207346))

(declare-fun m!2648981 () Bool)

(assert (=> b!2207345 m!2648981))

(declare-fun m!2648983 () Bool)

(assert (=> b!2207345 m!2648983))

(declare-fun m!2648985 () Bool)

(assert (=> b!2207346 m!2648985))

(assert (=> b!2207116 m!2648793))

(declare-fun tp!686185 () Bool)

(declare-fun e!1410081 () Bool)

(declare-fun b!2207348 () Bool)

(declare-fun tp!686186 () Bool)

(assert (=> b!2207348 (= e!1410081 (and (inv!34832 (left!19835 (right!20165 (c!352543 input!5506)))) tp!686185 (inv!34832 (right!20165 (right!20165 (c!352543 input!5506)))) tp!686186))))

(declare-fun b!2207350 () Bool)

(declare-fun e!1410080 () Bool)

(declare-fun tp!686184 () Bool)

(assert (=> b!2207350 (= e!1410080 tp!686184)))

(declare-fun b!2207349 () Bool)

(assert (=> b!2207349 (= e!1410081 (and (inv!34839 (xs!11369 (right!20165 (c!352543 input!5506)))) e!1410080))))

(assert (=> b!2207116 (= tp!686157 (and (inv!34832 (right!20165 (c!352543 input!5506))) e!1410081))))

(assert (= (and b!2207116 ((_ is Node!8427) (right!20165 (c!352543 input!5506)))) b!2207348))

(assert (= b!2207349 b!2207350))

(assert (= (and b!2207116 ((_ is Leaf!12340) (right!20165 (c!352543 input!5506)))) b!2207349))

(declare-fun m!2648987 () Bool)

(assert (=> b!2207348 m!2648987))

(declare-fun m!2648989 () Bool)

(assert (=> b!2207348 m!2648989))

(declare-fun m!2648991 () Bool)

(assert (=> b!2207349 m!2648991))

(assert (=> b!2207116 m!2648795))

(declare-fun condSetEmpty!19261 () Bool)

(assert (=> setNonEmpty!19260 (= condSetEmpty!19261 (= setRest!19260 ((as const (Array Context!3722 Bool)) false)))))

(declare-fun setRes!19261 () Bool)

(assert (=> setNonEmpty!19260 (= tp!686172 setRes!19261)))

(declare-fun setIsEmpty!19261 () Bool)

(assert (=> setIsEmpty!19261 setRes!19261))

(declare-fun tp!686188 () Bool)

(declare-fun e!1410082 () Bool)

(declare-fun setNonEmpty!19261 () Bool)

(declare-fun setElem!19261 () Context!3722)

(assert (=> setNonEmpty!19261 (= setRes!19261 (and tp!686188 (inv!34831 setElem!19261) e!1410082))))

(declare-fun setRest!19261 () (InoxSet Context!3722))

(assert (=> setNonEmpty!19261 (= setRest!19260 ((_ map or) (store ((as const (Array Context!3722 Bool)) false) setElem!19261 true) setRest!19261))))

(declare-fun b!2207351 () Bool)

(declare-fun tp!686187 () Bool)

(assert (=> b!2207351 (= e!1410082 tp!686187)))

(assert (= (and setNonEmpty!19260 condSetEmpty!19261) setIsEmpty!19261))

(assert (= (and setNonEmpty!19260 (not condSetEmpty!19261)) setNonEmpty!19261))

(assert (= setNonEmpty!19261 b!2207351))

(declare-fun m!2648993 () Bool)

(assert (=> setNonEmpty!19261 m!2648993))

(declare-fun b!2207365 () Bool)

(declare-fun e!1410086 () Bool)

(declare-fun tp_is_empty!9747 () Bool)

(assert (=> b!2207365 (= e!1410086 tp_is_empty!9747)))

(declare-fun b!2207366 () Bool)

(declare-fun tp!686199 () Bool)

(declare-fun tp!686203 () Bool)

(assert (=> b!2207366 (= e!1410086 (and tp!686199 tp!686203))))

(declare-fun b!2207367 () Bool)

(declare-fun tp!686201 () Bool)

(assert (=> b!2207367 (= e!1410086 tp!686201)))

(assert (=> b!2207123 (= tp!686162 e!1410086)))

(declare-fun b!2207368 () Bool)

(declare-fun tp!686202 () Bool)

(declare-fun tp!686200 () Bool)

(assert (=> b!2207368 (= e!1410086 (and tp!686202 tp!686200))))

(assert (= (and b!2207123 ((_ is ElementMatch!6291) (h!31206 (exprs!2361 setElem!19254)))) b!2207365))

(assert (= (and b!2207123 ((_ is Concat!10593) (h!31206 (exprs!2361 setElem!19254)))) b!2207366))

(assert (= (and b!2207123 ((_ is Star!6291) (h!31206 (exprs!2361 setElem!19254)))) b!2207367))

(assert (= (and b!2207123 ((_ is Union!6291) (h!31206 (exprs!2361 setElem!19254)))) b!2207368))

(declare-fun b!2207369 () Bool)

(declare-fun e!1410087 () Bool)

(declare-fun tp!686204 () Bool)

(declare-fun tp!686205 () Bool)

(assert (=> b!2207369 (= e!1410087 (and tp!686204 tp!686205))))

(assert (=> b!2207123 (= tp!686163 e!1410087)))

(assert (= (and b!2207123 ((_ is Cons!25805) (t!198533 (exprs!2361 setElem!19254)))) b!2207369))

(declare-fun b!2207374 () Bool)

(declare-fun e!1410090 () Bool)

(declare-fun tp!686208 () Bool)

(assert (=> b!2207374 (= e!1410090 (and tp_is_empty!9747 tp!686208))))

(assert (=> b!2207126 (= tp!686164 e!1410090)))

(assert (= (and b!2207126 ((_ is Cons!25806) (innerList!8487 (xs!11369 (c!352543 totalInput!846))))) b!2207374))

(declare-fun b!2207375 () Bool)

(declare-fun e!1410091 () Bool)

(declare-fun tp!686209 () Bool)

(assert (=> b!2207375 (= e!1410091 (and tp_is_empty!9747 tp!686209))))

(assert (=> b!2207118 (= tp!686155 e!1410091)))

(assert (= (and b!2207118 ((_ is Cons!25806) (innerList!8487 (xs!11369 (c!352543 input!5506))))) b!2207375))

(declare-fun b_lambda!71253 () Bool)

(assert (= b_lambda!71249 (or d!659669 b_lambda!71253)))

(declare-fun bs!451128 () Bool)

(declare-fun d!659743 () Bool)

(assert (= bs!451128 (and d!659743 d!659669)))

(declare-fun validRegex!2344 (Regex!6291) Bool)

(assert (=> bs!451128 (= (dynLambda!11457 lambda!83343 (h!31206 (exprs!2361 setElem!19254))) (validRegex!2344 (h!31206 (exprs!2361 setElem!19254))))))

(declare-fun m!2649005 () Bool)

(assert (=> bs!451128 m!2649005))

(assert (=> b!2207207 d!659743))

(check-sat (not bs!451128) (not b!2207375) (not b!2207305) (not b!2207368) (not b!2207347) (not b!2207342) (not b!2207338) (not d!659695) (not b!2207374) (not d!659675) (not b!2207330) (not b!2207208) (not b!2207349) (not b!2207306) (not b!2207245) (not b!2207367) (not d!659697) (not b!2207294) (not b!2207158) (not b!2207116) (not b!2207244) (not b!2207302) (not b!2207241) (not b!2207290) (not b!2207148) (not b!2207369) (not d!659687) (not b!2207301) (not d!659713) (not b!2207351) (not setNonEmpty!19261) (not b!2207143) (not b!2207243) (not b!2207346) (not b!2207146) (not b!2207151) (not b!2207303) (not b!2207156) (not b!2207188) (not b!2207139) (not b!2207340) (not b!2207142) (not b!2207145) (not b!2207339) (not b!2207189) (not b!2207149) (not b!2207140) (not d!659691) (not b!2207345) (not b!2207242) (not b!2207343) (not d!659677) (not b!2207327) (not d!659739) (not b!2207348) tp_is_empty!9747 (not b!2207366) (not b!2207124) (not d!659725) (not b!2207350) (not b!2207341) (not b!2207300) (not b!2207304) (not b!2207307) (not d!659693) (not b!2207344) (not bm!132281) (not b!2207137) (not b!2207246) (not d!659735) (not b_lambda!71253))
(check-sat)
