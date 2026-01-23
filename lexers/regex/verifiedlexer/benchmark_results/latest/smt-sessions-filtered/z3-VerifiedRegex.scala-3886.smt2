; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214026 () Bool)

(assert start!214026)

(declare-fun b!2202735 () Bool)

(declare-fun e!1407370 () Bool)

(declare-fun e!1407372 () Bool)

(assert (=> b!2202735 (= e!1407370 e!1407372)))

(declare-fun res!946844 () Bool)

(assert (=> b!2202735 (=> (not res!946844) (not e!1407372))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!823673 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2202735 (= res!946844 (and (<= from!1082 lt!823673) (>= knownSize!10 0) (<= knownSize!10 (- lt!823673 from!1082))))))

(declare-datatypes ((C!12624 0))(
  ( (C!12625 (val!7298 Int)) )
))
(declare-datatypes ((List!25776 0))(
  ( (Nil!25692) (Cons!25692 (h!31093 C!12624) (t!198410 List!25776)) )
))
(declare-datatypes ((IArray!16755 0))(
  ( (IArray!16756 (innerList!8435 List!25776)) )
))
(declare-datatypes ((Conc!8375 0))(
  ( (Node!8375 (left!19737 Conc!8375) (right!20067 Conc!8375) (csize!16980 Int) (cheight!8586 Int)) (Leaf!12262 (xs!11317 IArray!16755) (csize!16981 Int)) (Empty!8375) )
))
(declare-datatypes ((BalanceConc!16512 0))(
  ( (BalanceConc!16513 (c!351456 Conc!8375)) )
))
(declare-fun totalInput!891 () BalanceConc!16512)

(declare-fun size!20022 (BalanceConc!16512) Int)

(assert (=> b!2202735 (= lt!823673 (size!20022 totalInput!891))))

(declare-fun res!946847 () Bool)

(assert (=> start!214026 (=> (not res!946847) (not e!1407370))))

(assert (=> start!214026 (= res!946847 (>= from!1082 0))))

(assert (=> start!214026 e!1407370))

(assert (=> start!214026 true))

(declare-fun e!1407374 () Bool)

(declare-fun inv!34562 (BalanceConc!16512) Bool)

(assert (=> start!214026 (and (inv!34562 totalInput!891) e!1407374)))

(declare-fun condSetEmpty!19054 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6239 0))(
  ( (ElementMatch!6239 (c!351457 C!12624)) (Concat!10541 (regOne!12990 Regex!6239) (regTwo!12990 Regex!6239)) (EmptyExpr!6239) (Star!6239 (reg!6568 Regex!6239)) (EmptyLang!6239) (Union!6239 (regOne!12991 Regex!6239) (regTwo!12991 Regex!6239)) )
))
(declare-datatypes ((List!25777 0))(
  ( (Nil!25693) (Cons!25693 (h!31094 Regex!6239) (t!198411 List!25777)) )
))
(declare-datatypes ((Context!3618 0))(
  ( (Context!3619 (exprs!2309 List!25777)) )
))
(declare-fun z!3888 () (InoxSet Context!3618))

(assert (=> start!214026 (= condSetEmpty!19054 (= z!3888 ((as const (Array Context!3618 Bool)) false)))))

(declare-fun setRes!19054 () Bool)

(assert (=> start!214026 setRes!19054))

(declare-fun b!2202736 () Bool)

(declare-fun res!946843 () Bool)

(declare-fun e!1407373 () Bool)

(assert (=> b!2202736 (=> (not res!946843) (not e!1407373))))

(declare-fun isEmpty!14671 (BalanceConc!16512) Bool)

(assert (=> b!2202736 (= res!946843 (not (isEmpty!14671 totalInput!891)))))

(declare-fun setIsEmpty!19054 () Bool)

(assert (=> setIsEmpty!19054 setRes!19054))

(declare-fun b!2202737 () Bool)

(assert (=> b!2202737 (= e!1407372 e!1407373)))

(declare-fun res!946842 () Bool)

(assert (=> b!2202737 (=> (not res!946842) (not e!1407373))))

(declare-fun lt!823674 () List!25776)

(declare-fun matchZipper!325 ((InoxSet Context!3618) List!25776) Bool)

(assert (=> b!2202737 (= res!946842 (matchZipper!325 z!3888 lt!823674))))

(declare-fun take!417 (List!25776 Int) List!25776)

(declare-fun drop!1427 (List!25776 Int) List!25776)

(declare-fun list!9909 (BalanceConc!16512) List!25776)

(assert (=> b!2202737 (= lt!823674 (take!417 (drop!1427 (list!9909 totalInput!891) from!1082) knownSize!10))))

(declare-fun b!2202738 () Bool)

(declare-fun res!946840 () Bool)

(assert (=> b!2202738 (=> (not res!946840) (not e!1407373))))

(declare-fun e!1407371 () Bool)

(assert (=> b!2202738 (= res!946840 e!1407371)))

(declare-fun res!946845 () Bool)

(assert (=> b!2202738 (=> res!946845 e!1407371)))

(declare-fun nullableZipper!519 ((InoxSet Context!3618)) Bool)

(assert (=> b!2202738 (= res!946845 (not (nullableZipper!519 z!3888)))))

(declare-fun b!2202739 () Bool)

(declare-fun e!1407375 () Bool)

(declare-fun tp!685296 () Bool)

(assert (=> b!2202739 (= e!1407375 tp!685296)))

(declare-fun b!2202740 () Bool)

(declare-fun res!946841 () Bool)

(assert (=> b!2202740 (=> (not res!946841) (not e!1407373))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2202740 (= res!946841 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2202741 () Bool)

(declare-fun isEmpty!14672 (List!25776) Bool)

(assert (=> b!2202741 (= e!1407373 (not (isEmpty!14672 lt!823674)))))

(declare-fun b!2202742 () Bool)

(declare-fun res!946846 () Bool)

(assert (=> b!2202742 (=> (not res!946846) (not e!1407373))))

(assert (=> b!2202742 (= res!946846 (= knownSize!10 0))))

(declare-fun tp!685295 () Bool)

(declare-fun setElem!19054 () Context!3618)

(declare-fun setNonEmpty!19054 () Bool)

(declare-fun inv!34563 (Context!3618) Bool)

(assert (=> setNonEmpty!19054 (= setRes!19054 (and tp!685295 (inv!34563 setElem!19054) e!1407375))))

(declare-fun setRest!19054 () (InoxSet Context!3618))

(assert (=> setNonEmpty!19054 (= z!3888 ((_ map or) (store ((as const (Array Context!3618 Bool)) false) setElem!19054 true) setRest!19054))))

(declare-fun b!2202743 () Bool)

(declare-fun tp!685294 () Bool)

(declare-fun inv!34564 (Conc!8375) Bool)

(assert (=> b!2202743 (= e!1407374 (and (inv!34564 (c!351456 totalInput!891)) tp!685294))))

(declare-fun b!2202744 () Bool)

(assert (=> b!2202744 (= e!1407371 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2202745 () Bool)

(declare-fun res!946839 () Bool)

(assert (=> b!2202745 (=> (not res!946839) (not e!1407373))))

(declare-fun furthestNullablePosition!389 ((InoxSet Context!3618) Int BalanceConc!16512 Int Int) Int)

(assert (=> b!2202745 (= res!946839 (>= (furthestNullablePosition!389 z!3888 from!1082 totalInput!891 lt!823673 lastNullablePos!161) lastNullablePos!161))))

(assert (= (and start!214026 res!946847) b!2202735))

(assert (= (and b!2202735 res!946844) b!2202737))

(assert (= (and b!2202737 res!946842) b!2202740))

(assert (= (and b!2202740 res!946841) b!2202738))

(assert (= (and b!2202738 (not res!946845)) b!2202744))

(assert (= (and b!2202738 res!946840) b!2202736))

(assert (= (and b!2202736 res!946843) b!2202742))

(assert (= (and b!2202742 res!946846) b!2202745))

(assert (= (and b!2202745 res!946839) b!2202741))

(assert (= start!214026 b!2202743))

(assert (= (and start!214026 condSetEmpty!19054) setIsEmpty!19054))

(assert (= (and start!214026 (not condSetEmpty!19054)) setNonEmpty!19054))

(assert (= setNonEmpty!19054 b!2202739))

(declare-fun m!2644963 () Bool)

(assert (=> setNonEmpty!19054 m!2644963))

(declare-fun m!2644965 () Bool)

(assert (=> b!2202738 m!2644965))

(declare-fun m!2644967 () Bool)

(assert (=> b!2202736 m!2644967))

(declare-fun m!2644969 () Bool)

(assert (=> start!214026 m!2644969))

(declare-fun m!2644971 () Bool)

(assert (=> b!2202743 m!2644971))

(declare-fun m!2644973 () Bool)

(assert (=> b!2202745 m!2644973))

(declare-fun m!2644975 () Bool)

(assert (=> b!2202741 m!2644975))

(declare-fun m!2644977 () Bool)

(assert (=> b!2202735 m!2644977))

(declare-fun m!2644979 () Bool)

(assert (=> b!2202737 m!2644979))

(declare-fun m!2644981 () Bool)

(assert (=> b!2202737 m!2644981))

(assert (=> b!2202737 m!2644981))

(declare-fun m!2644983 () Bool)

(assert (=> b!2202737 m!2644983))

(assert (=> b!2202737 m!2644983))

(declare-fun m!2644985 () Bool)

(assert (=> b!2202737 m!2644985))

(check-sat (not b!2202743) (not setNonEmpty!19054) (not b!2202739) (not start!214026) (not b!2202738) (not b!2202741) (not b!2202735) (not b!2202736) (not b!2202745) (not b!2202737))
(check-sat)
(get-model)

(declare-fun b!2202765 () Bool)

(declare-fun e!1407388 () Int)

(assert (=> b!2202765 (= e!1407388 lastNullablePos!161)))

(declare-fun b!2202766 () Bool)

(assert (=> b!2202766 (= e!1407388 from!1082)))

(declare-fun b!2202767 () Bool)

(declare-fun e!1407389 () Bool)

(declare-fun lostCauseZipper!343 ((InoxSet Context!3618)) Bool)

(assert (=> b!2202767 (= e!1407389 (lostCauseZipper!343 z!3888))))

(declare-fun b!2202769 () Bool)

(declare-fun e!1407390 () Int)

(declare-fun lt!823679 () (InoxSet Context!3618))

(assert (=> b!2202769 (= e!1407390 (furthestNullablePosition!389 lt!823679 (+ from!1082 1) totalInput!891 lt!823673 e!1407388))))

(declare-fun derivationStepZipper!295 ((InoxSet Context!3618) C!12624) (InoxSet Context!3618))

(declare-fun apply!6321 (BalanceConc!16512 Int) C!12624)

(assert (=> b!2202769 (= lt!823679 (derivationStepZipper!295 z!3888 (apply!6321 totalInput!891 from!1082)))))

(declare-fun c!351467 () Bool)

(assert (=> b!2202769 (= c!351467 (nullableZipper!519 lt!823679))))

(declare-fun b!2202768 () Bool)

(assert (=> b!2202768 (= e!1407390 lastNullablePos!161)))

(declare-fun lt!823680 () Int)

(declare-fun d!658833 () Bool)

(assert (=> d!658833 (and (>= lt!823680 (- 1)) (< lt!823680 lt!823673) (>= lt!823680 lastNullablePos!161) (or (= lt!823680 lastNullablePos!161) (>= lt!823680 from!1082)))))

(assert (=> d!658833 (= lt!823680 e!1407390)))

(declare-fun c!351468 () Bool)

(assert (=> d!658833 (= c!351468 e!1407389)))

(declare-fun res!946853 () Bool)

(assert (=> d!658833 (=> res!946853 e!1407389)))

(assert (=> d!658833 (= res!946853 (= from!1082 lt!823673))))

(assert (=> d!658833 (and (>= from!1082 0) (<= from!1082 lt!823673))))

(assert (=> d!658833 (= (furthestNullablePosition!389 z!3888 from!1082 totalInput!891 lt!823673 lastNullablePos!161) lt!823680)))

(assert (= (and d!658833 (not res!946853)) b!2202767))

(assert (= (and d!658833 c!351468) b!2202768))

(assert (= (and d!658833 (not c!351468)) b!2202769))

(assert (= (and b!2202769 c!351467) b!2202766))

(assert (= (and b!2202769 (not c!351467)) b!2202765))

(declare-fun m!2644991 () Bool)

(assert (=> b!2202767 m!2644991))

(declare-fun m!2644993 () Bool)

(assert (=> b!2202769 m!2644993))

(declare-fun m!2644995 () Bool)

(assert (=> b!2202769 m!2644995))

(assert (=> b!2202769 m!2644995))

(declare-fun m!2644997 () Bool)

(assert (=> b!2202769 m!2644997))

(declare-fun m!2644999 () Bool)

(assert (=> b!2202769 m!2644999))

(assert (=> b!2202745 d!658833))

(declare-fun d!658839 () Bool)

(declare-fun lt!823683 () Bool)

(assert (=> d!658839 (= lt!823683 (isEmpty!14672 (list!9909 totalInput!891)))))

(declare-fun isEmpty!14674 (Conc!8375) Bool)

(assert (=> d!658839 (= lt!823683 (isEmpty!14674 (c!351456 totalInput!891)))))

(assert (=> d!658839 (= (isEmpty!14671 totalInput!891) lt!823683)))

(declare-fun bs!450663 () Bool)

(assert (= bs!450663 d!658839))

(assert (=> bs!450663 m!2644981))

(assert (=> bs!450663 m!2644981))

(declare-fun m!2645001 () Bool)

(assert (=> bs!450663 m!2645001))

(declare-fun m!2645003 () Bool)

(assert (=> bs!450663 m!2645003))

(assert (=> b!2202736 d!658839))

(declare-fun d!658841 () Bool)

(declare-fun lt!823686 () Int)

(declare-fun size!20025 (List!25776) Int)

(assert (=> d!658841 (= lt!823686 (size!20025 (list!9909 totalInput!891)))))

(declare-fun size!20026 (Conc!8375) Int)

(assert (=> d!658841 (= lt!823686 (size!20026 (c!351456 totalInput!891)))))

(assert (=> d!658841 (= (size!20022 totalInput!891) lt!823686)))

(declare-fun bs!450664 () Bool)

(assert (= bs!450664 d!658841))

(assert (=> bs!450664 m!2644981))

(assert (=> bs!450664 m!2644981))

(declare-fun m!2645005 () Bool)

(assert (=> bs!450664 m!2645005))

(declare-fun m!2645007 () Bool)

(assert (=> bs!450664 m!2645007))

(assert (=> b!2202735 d!658841))

(declare-fun d!658843 () Bool)

(declare-fun c!351471 () Bool)

(get-info :version)

(assert (=> d!658843 (= c!351471 ((_ is Node!8375) (c!351456 totalInput!891)))))

(declare-fun e!1407395 () Bool)

(assert (=> d!658843 (= (inv!34564 (c!351456 totalInput!891)) e!1407395)))

(declare-fun b!2202776 () Bool)

(declare-fun inv!34567 (Conc!8375) Bool)

(assert (=> b!2202776 (= e!1407395 (inv!34567 (c!351456 totalInput!891)))))

(declare-fun b!2202777 () Bool)

(declare-fun e!1407396 () Bool)

(assert (=> b!2202777 (= e!1407395 e!1407396)))

(declare-fun res!946856 () Bool)

(assert (=> b!2202777 (= res!946856 (not ((_ is Leaf!12262) (c!351456 totalInput!891))))))

(assert (=> b!2202777 (=> res!946856 e!1407396)))

(declare-fun b!2202778 () Bool)

(declare-fun inv!34569 (Conc!8375) Bool)

(assert (=> b!2202778 (= e!1407396 (inv!34569 (c!351456 totalInput!891)))))

(assert (= (and d!658843 c!351471) b!2202776))

(assert (= (and d!658843 (not c!351471)) b!2202777))

(assert (= (and b!2202777 (not res!946856)) b!2202778))

(declare-fun m!2645009 () Bool)

(assert (=> b!2202776 m!2645009))

(declare-fun m!2645011 () Bool)

(assert (=> b!2202778 m!2645011))

(assert (=> b!2202743 d!658843))

(declare-fun d!658845 () Bool)

(declare-fun lambda!83018 () Int)

(declare-fun exists!842 ((InoxSet Context!3618) Int) Bool)

(assert (=> d!658845 (= (nullableZipper!519 z!3888) (exists!842 z!3888 lambda!83018))))

(declare-fun bs!450671 () Bool)

(assert (= bs!450671 d!658845))

(declare-fun m!2645073 () Bool)

(assert (=> bs!450671 m!2645073))

(assert (=> b!2202738 d!658845))

(declare-fun d!658867 () Bool)

(declare-fun lambda!83021 () Int)

(declare-fun forall!5254 (List!25777 Int) Bool)

(assert (=> d!658867 (= (inv!34563 setElem!19054) (forall!5254 (exprs!2309 setElem!19054) lambda!83021))))

(declare-fun bs!450672 () Bool)

(assert (= bs!450672 d!658867))

(declare-fun m!2645075 () Bool)

(assert (=> bs!450672 m!2645075))

(assert (=> setNonEmpty!19054 d!658867))

(declare-fun d!658869 () Bool)

(declare-fun c!351506 () Bool)

(assert (=> d!658869 (= c!351506 (isEmpty!14672 lt!823674))))

(declare-fun e!1407450 () Bool)

(assert (=> d!658869 (= (matchZipper!325 z!3888 lt!823674) e!1407450)))

(declare-fun b!2202873 () Bool)

(assert (=> b!2202873 (= e!1407450 (nullableZipper!519 z!3888))))

(declare-fun b!2202874 () Bool)

(declare-fun head!4704 (List!25776) C!12624)

(declare-fun tail!3182 (List!25776) List!25776)

(assert (=> b!2202874 (= e!1407450 (matchZipper!325 (derivationStepZipper!295 z!3888 (head!4704 lt!823674)) (tail!3182 lt!823674)))))

(assert (= (and d!658869 c!351506) b!2202873))

(assert (= (and d!658869 (not c!351506)) b!2202874))

(assert (=> d!658869 m!2644975))

(assert (=> b!2202873 m!2644965))

(declare-fun m!2645077 () Bool)

(assert (=> b!2202874 m!2645077))

(assert (=> b!2202874 m!2645077))

(declare-fun m!2645079 () Bool)

(assert (=> b!2202874 m!2645079))

(declare-fun m!2645081 () Bool)

(assert (=> b!2202874 m!2645081))

(assert (=> b!2202874 m!2645079))

(assert (=> b!2202874 m!2645081))

(declare-fun m!2645083 () Bool)

(assert (=> b!2202874 m!2645083))

(assert (=> b!2202737 d!658869))

(declare-fun d!658871 () Bool)

(declare-fun e!1407460 () Bool)

(assert (=> d!658871 e!1407460))

(declare-fun res!946868 () Bool)

(assert (=> d!658871 (=> (not res!946868) (not e!1407460))))

(declare-fun lt!823707 () List!25776)

(declare-fun content!3490 (List!25776) (InoxSet C!12624))

(assert (=> d!658871 (= res!946868 (= ((_ map implies) (content!3490 lt!823707) (content!3490 (drop!1427 (list!9909 totalInput!891) from!1082))) ((as const (InoxSet C!12624)) true)))))

(declare-fun e!1407462 () List!25776)

(assert (=> d!658871 (= lt!823707 e!1407462)))

(declare-fun c!351513 () Bool)

(assert (=> d!658871 (= c!351513 (or ((_ is Nil!25692) (drop!1427 (list!9909 totalInput!891) from!1082)) (<= knownSize!10 0)))))

(assert (=> d!658871 (= (take!417 (drop!1427 (list!9909 totalInput!891) from!1082) knownSize!10) lt!823707)))

(declare-fun b!2202889 () Bool)

(declare-fun e!1407459 () Int)

(assert (=> b!2202889 (= e!1407459 (size!20025 (drop!1427 (list!9909 totalInput!891) from!1082)))))

(declare-fun b!2202890 () Bool)

(declare-fun e!1407461 () Int)

(assert (=> b!2202890 (= e!1407461 e!1407459)))

(declare-fun c!351515 () Bool)

(assert (=> b!2202890 (= c!351515 (>= knownSize!10 (size!20025 (drop!1427 (list!9909 totalInput!891) from!1082))))))

(declare-fun b!2202891 () Bool)

(assert (=> b!2202891 (= e!1407462 Nil!25692)))

(declare-fun b!2202892 () Bool)

(assert (=> b!2202892 (= e!1407460 (= (size!20025 lt!823707) e!1407461))))

(declare-fun c!351514 () Bool)

(assert (=> b!2202892 (= c!351514 (<= knownSize!10 0))))

(declare-fun b!2202893 () Bool)

(assert (=> b!2202893 (= e!1407459 knownSize!10)))

(declare-fun b!2202894 () Bool)

(assert (=> b!2202894 (= e!1407462 (Cons!25692 (h!31093 (drop!1427 (list!9909 totalInput!891) from!1082)) (take!417 (t!198410 (drop!1427 (list!9909 totalInput!891) from!1082)) (- knownSize!10 1))))))

(declare-fun b!2202895 () Bool)

(assert (=> b!2202895 (= e!1407461 0)))

(assert (= (and d!658871 c!351513) b!2202891))

(assert (= (and d!658871 (not c!351513)) b!2202894))

(assert (= (and d!658871 res!946868) b!2202892))

(assert (= (and b!2202892 c!351514) b!2202895))

(assert (= (and b!2202892 (not c!351514)) b!2202890))

(assert (= (and b!2202890 c!351515) b!2202889))

(assert (= (and b!2202890 (not c!351515)) b!2202893))

(declare-fun m!2645085 () Bool)

(assert (=> b!2202894 m!2645085))

(declare-fun m!2645087 () Bool)

(assert (=> b!2202892 m!2645087))

(assert (=> b!2202889 m!2644983))

(declare-fun m!2645089 () Bool)

(assert (=> b!2202889 m!2645089))

(declare-fun m!2645091 () Bool)

(assert (=> d!658871 m!2645091))

(assert (=> d!658871 m!2644983))

(declare-fun m!2645093 () Bool)

(assert (=> d!658871 m!2645093))

(assert (=> b!2202890 m!2644983))

(assert (=> b!2202890 m!2645089))

(assert (=> b!2202737 d!658871))

(declare-fun b!2202914 () Bool)

(declare-fun e!1407474 () Int)

(declare-fun call!132162 () Int)

(assert (=> b!2202914 (= e!1407474 (- call!132162 from!1082))))

(declare-fun d!658873 () Bool)

(declare-fun e!1407473 () Bool)

(assert (=> d!658873 e!1407473))

(declare-fun res!946871 () Bool)

(assert (=> d!658873 (=> (not res!946871) (not e!1407473))))

(declare-fun lt!823710 () List!25776)

(assert (=> d!658873 (= res!946871 (= ((_ map implies) (content!3490 lt!823710) (content!3490 (list!9909 totalInput!891))) ((as const (InoxSet C!12624)) true)))))

(declare-fun e!1407476 () List!25776)

(assert (=> d!658873 (= lt!823710 e!1407476)))

(declare-fun c!351526 () Bool)

(assert (=> d!658873 (= c!351526 ((_ is Nil!25692) (list!9909 totalInput!891)))))

(assert (=> d!658873 (= (drop!1427 (list!9909 totalInput!891) from!1082) lt!823710)))

(declare-fun b!2202915 () Bool)

(declare-fun e!1407477 () List!25776)

(assert (=> b!2202915 (= e!1407477 (drop!1427 (t!198410 (list!9909 totalInput!891)) (- from!1082 1)))))

(declare-fun b!2202916 () Bool)

(declare-fun e!1407475 () Int)

(assert (=> b!2202916 (= e!1407475 call!132162)))

(declare-fun bm!132157 () Bool)

(assert (=> bm!132157 (= call!132162 (size!20025 (list!9909 totalInput!891)))))

(declare-fun b!2202917 () Bool)

(assert (=> b!2202917 (= e!1407476 Nil!25692)))

(declare-fun b!2202918 () Bool)

(assert (=> b!2202918 (= e!1407473 (= (size!20025 lt!823710) e!1407475))))

(declare-fun c!351525 () Bool)

(assert (=> b!2202918 (= c!351525 (<= from!1082 0))))

(declare-fun b!2202919 () Bool)

(assert (=> b!2202919 (= e!1407474 0)))

(declare-fun b!2202920 () Bool)

(assert (=> b!2202920 (= e!1407477 (list!9909 totalInput!891))))

(declare-fun b!2202921 () Bool)

(assert (=> b!2202921 (= e!1407476 e!1407477)))

(declare-fun c!351527 () Bool)

(assert (=> b!2202921 (= c!351527 (<= from!1082 0))))

(declare-fun b!2202922 () Bool)

(assert (=> b!2202922 (= e!1407475 e!1407474)))

(declare-fun c!351524 () Bool)

(assert (=> b!2202922 (= c!351524 (>= from!1082 call!132162))))

(assert (= (and d!658873 c!351526) b!2202917))

(assert (= (and d!658873 (not c!351526)) b!2202921))

(assert (= (and b!2202921 c!351527) b!2202920))

(assert (= (and b!2202921 (not c!351527)) b!2202915))

(assert (= (and d!658873 res!946871) b!2202918))

(assert (= (and b!2202918 c!351525) b!2202916))

(assert (= (and b!2202918 (not c!351525)) b!2202922))

(assert (= (and b!2202922 c!351524) b!2202919))

(assert (= (and b!2202922 (not c!351524)) b!2202914))

(assert (= (or b!2202916 b!2202922 b!2202914) bm!132157))

(declare-fun m!2645095 () Bool)

(assert (=> d!658873 m!2645095))

(assert (=> d!658873 m!2644981))

(declare-fun m!2645097 () Bool)

(assert (=> d!658873 m!2645097))

(declare-fun m!2645099 () Bool)

(assert (=> b!2202915 m!2645099))

(assert (=> bm!132157 m!2644981))

(assert (=> bm!132157 m!2645005))

(declare-fun m!2645101 () Bool)

(assert (=> b!2202918 m!2645101))

(assert (=> b!2202737 d!658873))

(declare-fun d!658875 () Bool)

(declare-fun list!9911 (Conc!8375) List!25776)

(assert (=> d!658875 (= (list!9909 totalInput!891) (list!9911 (c!351456 totalInput!891)))))

(declare-fun bs!450673 () Bool)

(assert (= bs!450673 d!658875))

(declare-fun m!2645103 () Bool)

(assert (=> bs!450673 m!2645103))

(assert (=> b!2202737 d!658875))

(declare-fun d!658877 () Bool)

(declare-fun isBalanced!2578 (Conc!8375) Bool)

(assert (=> d!658877 (= (inv!34562 totalInput!891) (isBalanced!2578 (c!351456 totalInput!891)))))

(declare-fun bs!450674 () Bool)

(assert (= bs!450674 d!658877))

(declare-fun m!2645105 () Bool)

(assert (=> bs!450674 m!2645105))

(assert (=> start!214026 d!658877))

(declare-fun d!658879 () Bool)

(assert (=> d!658879 (= (isEmpty!14672 lt!823674) ((_ is Nil!25692) lt!823674))))

(assert (=> b!2202741 d!658879))

(declare-fun b!2202927 () Bool)

(declare-fun e!1407480 () Bool)

(declare-fun tp!685322 () Bool)

(declare-fun tp!685323 () Bool)

(assert (=> b!2202927 (= e!1407480 (and tp!685322 tp!685323))))

(assert (=> b!2202739 (= tp!685296 e!1407480)))

(assert (= (and b!2202739 ((_ is Cons!25693) (exprs!2309 setElem!19054))) b!2202927))

(declare-fun b!2202936 () Bool)

(declare-fun e!1407485 () Bool)

(declare-fun tp!685332 () Bool)

(declare-fun tp!685331 () Bool)

(assert (=> b!2202936 (= e!1407485 (and (inv!34564 (left!19737 (c!351456 totalInput!891))) tp!685332 (inv!34564 (right!20067 (c!351456 totalInput!891))) tp!685331))))

(declare-fun b!2202938 () Bool)

(declare-fun e!1407486 () Bool)

(declare-fun tp!685330 () Bool)

(assert (=> b!2202938 (= e!1407486 tp!685330)))

(declare-fun b!2202937 () Bool)

(declare-fun inv!34570 (IArray!16755) Bool)

(assert (=> b!2202937 (= e!1407485 (and (inv!34570 (xs!11317 (c!351456 totalInput!891))) e!1407486))))

(assert (=> b!2202743 (= tp!685294 (and (inv!34564 (c!351456 totalInput!891)) e!1407485))))

(assert (= (and b!2202743 ((_ is Node!8375) (c!351456 totalInput!891))) b!2202936))

(assert (= b!2202937 b!2202938))

(assert (= (and b!2202743 ((_ is Leaf!12262) (c!351456 totalInput!891))) b!2202937))

(declare-fun m!2645107 () Bool)

(assert (=> b!2202936 m!2645107))

(declare-fun m!2645109 () Bool)

(assert (=> b!2202936 m!2645109))

(declare-fun m!2645111 () Bool)

(assert (=> b!2202937 m!2645111))

(assert (=> b!2202743 m!2644971))

(declare-fun condSetEmpty!19060 () Bool)

(assert (=> setNonEmpty!19054 (= condSetEmpty!19060 (= setRest!19054 ((as const (Array Context!3618 Bool)) false)))))

(declare-fun setRes!19060 () Bool)

(assert (=> setNonEmpty!19054 (= tp!685295 setRes!19060)))

(declare-fun setIsEmpty!19060 () Bool)

(assert (=> setIsEmpty!19060 setRes!19060))

(declare-fun e!1407489 () Bool)

(declare-fun tp!685337 () Bool)

(declare-fun setNonEmpty!19060 () Bool)

(declare-fun setElem!19060 () Context!3618)

(assert (=> setNonEmpty!19060 (= setRes!19060 (and tp!685337 (inv!34563 setElem!19060) e!1407489))))

(declare-fun setRest!19060 () (InoxSet Context!3618))

(assert (=> setNonEmpty!19060 (= setRest!19054 ((_ map or) (store ((as const (Array Context!3618 Bool)) false) setElem!19060 true) setRest!19060))))

(declare-fun b!2202943 () Bool)

(declare-fun tp!685338 () Bool)

(assert (=> b!2202943 (= e!1407489 tp!685338)))

(assert (= (and setNonEmpty!19054 condSetEmpty!19060) setIsEmpty!19060))

(assert (= (and setNonEmpty!19054 (not condSetEmpty!19060)) setNonEmpty!19060))

(assert (= setNonEmpty!19060 b!2202943))

(declare-fun m!2645113 () Bool)

(assert (=> setNonEmpty!19060 m!2645113))

(check-sat (not b!2202873) (not b!2202776) (not d!658841) (not b!2202894) (not b!2202918) (not bm!132157) (not b!2202938) (not d!658873) (not d!658845) (not b!2202937) (not b!2202889) (not d!658875) (not d!658867) (not b!2202743) (not b!2202767) (not b!2202769) (not setNonEmpty!19060) (not b!2202915) (not d!658839) (not d!658871) (not b!2202892) (not b!2202778) (not b!2202890) (not b!2202936) (not b!2202927) (not b!2202874) (not d!658869) (not b!2202943) (not d!658877))
(check-sat)
