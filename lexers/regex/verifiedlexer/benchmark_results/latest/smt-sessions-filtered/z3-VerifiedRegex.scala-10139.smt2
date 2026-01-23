; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530570 () Bool)

(assert start!530570)

(declare-fun b!5020819 () Bool)

(declare-fun e!3136541 () Bool)

(declare-fun e!3136544 () Bool)

(assert (=> b!5020819 (= e!3136541 e!3136544)))

(declare-fun res!2140851 () Bool)

(assert (=> b!5020819 (=> (not res!2140851) (not e!3136544))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27976 0))(
  ( (C!27977 (val!23354 Int)) )
))
(declare-datatypes ((Regex!13863 0))(
  ( (ElementMatch!13863 (c!858129 C!27976)) (Concat!22656 (regOne!28238 Regex!13863) (regTwo!28238 Regex!13863)) (EmptyExpr!13863) (Star!13863 (reg!14192 Regex!13863)) (EmptyLang!13863) (Union!13863 (regOne!28239 Regex!13863) (regTwo!28239 Regex!13863)) )
))
(declare-datatypes ((List!58158 0))(
  ( (Nil!58034) (Cons!58034 (h!64482 Regex!13863) (t!370534 List!58158)) )
))
(declare-datatypes ((Context!6576 0))(
  ( (Context!6577 (exprs!3788 List!58158)) )
))
(declare-fun z!4710 () (InoxSet Context!6576))

(declare-datatypes ((List!58159 0))(
  ( (Nil!58035) (Cons!58035 (h!64483 C!27976) (t!370535 List!58159)) )
))
(declare-fun lt!2078037 () List!58159)

(declare-fun matchZipper!631 ((InoxSet Context!6576) List!58159) Bool)

(assert (=> b!5020819 (= res!2140851 (matchZipper!631 z!4710 lt!2078037))))

(declare-fun lt!2078033 () List!58159)

(declare-fun knownSize!24 () Int)

(declare-fun take!722 (List!58159 Int) List!58159)

(assert (=> b!5020819 (= lt!2078037 (take!722 lt!2078033 knownSize!24))))

(declare-fun lt!2078039 () List!58159)

(declare-fun from!1212 () Int)

(declare-fun drop!2526 (List!58159 Int) List!58159)

(assert (=> b!5020819 (= lt!2078033 (drop!2526 lt!2078039 from!1212))))

(declare-datatypes ((IArray!30825 0))(
  ( (IArray!30826 (innerList!15470 List!58159)) )
))
(declare-datatypes ((Conc!15382 0))(
  ( (Node!15382 (left!42435 Conc!15382) (right!42765 Conc!15382) (csize!30994 Int) (cheight!15593 Int)) (Leaf!25522 (xs!18708 IArray!30825) (csize!30995 Int)) (Empty!15382) )
))
(declare-datatypes ((BalanceConc!30194 0))(
  ( (BalanceConc!30195 (c!858130 Conc!15382)) )
))
(declare-fun totalInput!1125 () BalanceConc!30194)

(declare-fun list!18720 (BalanceConc!30194) List!58159)

(assert (=> b!5020819 (= lt!2078039 (list!18720 totalInput!1125))))

(declare-fun b!5020820 () Bool)

(declare-fun res!2140848 () Bool)

(assert (=> b!5020820 (=> (not res!2140848) (not e!3136544))))

(declare-fun size!38619 (List!58159) Int)

(assert (=> b!5020820 (= res!2140848 (= (size!38619 lt!2078037) knownSize!24))))

(declare-fun res!2140845 () Bool)

(declare-fun e!3136543 () Bool)

(assert (=> start!530570 (=> (not res!2140845) (not e!3136543))))

(assert (=> start!530570 (= res!2140845 (>= from!1212 0))))

(assert (=> start!530570 e!3136543))

(assert (=> start!530570 true))

(declare-fun e!3136542 () Bool)

(declare-fun inv!76404 (BalanceConc!30194) Bool)

(assert (=> start!530570 (and (inv!76404 totalInput!1125) e!3136542)))

(declare-fun condSetEmpty!28696 () Bool)

(assert (=> start!530570 (= condSetEmpty!28696 (= z!4710 ((as const (Array Context!6576 Bool)) false)))))

(declare-fun setRes!28696 () Bool)

(assert (=> start!530570 setRes!28696))

(declare-fun setIsEmpty!28696 () Bool)

(assert (=> setIsEmpty!28696 setRes!28696))

(declare-fun b!5020821 () Bool)

(declare-fun e!3136540 () Bool)

(declare-fun tp!1407860 () Bool)

(assert (=> b!5020821 (= e!3136540 tp!1407860)))

(declare-fun b!5020822 () Bool)

(declare-fun res!2140850 () Bool)

(assert (=> b!5020822 (=> (not res!2140850) (not e!3136544))))

(declare-fun lostCauseZipper!877 ((InoxSet Context!6576)) Bool)

(assert (=> b!5020822 (= res!2140850 (not (lostCauseZipper!877 z!4710)))))

(declare-fun b!5020823 () Bool)

(declare-fun e!3136545 () Bool)

(declare-fun lt!2078035 () (InoxSet Context!6576))

(declare-fun lt!2078040 () List!58159)

(assert (=> b!5020823 (= e!3136545 (matchZipper!631 lt!2078035 lt!2078040))))

(declare-fun b!5020824 () Bool)

(assert (=> b!5020824 (= e!3136543 e!3136541)))

(declare-fun res!2140847 () Bool)

(assert (=> b!5020824 (=> (not res!2140847) (not e!3136541))))

(declare-fun lt!2078034 () Int)

(assert (=> b!5020824 (= res!2140847 (and (<= from!1212 lt!2078034) (>= knownSize!24 0) (<= knownSize!24 (- lt!2078034 from!1212))))))

(declare-fun size!38620 (BalanceConc!30194) Int)

(assert (=> b!5020824 (= lt!2078034 (size!38620 totalInput!1125))))

(declare-fun setNonEmpty!28696 () Bool)

(declare-fun tp!1407859 () Bool)

(declare-fun setElem!28696 () Context!6576)

(declare-fun inv!76405 (Context!6576) Bool)

(assert (=> setNonEmpty!28696 (= setRes!28696 (and tp!1407859 (inv!76405 setElem!28696) e!3136540))))

(declare-fun setRest!28696 () (InoxSet Context!6576))

(assert (=> setNonEmpty!28696 (= z!4710 ((_ map or) (store ((as const (Array Context!6576 Bool)) false) setElem!28696 true) setRest!28696))))

(declare-fun b!5020825 () Bool)

(declare-fun res!2140846 () Bool)

(assert (=> b!5020825 (=> (not res!2140846) (not e!3136544))))

(assert (=> b!5020825 (= res!2140846 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5020826 () Bool)

(declare-fun tp!1407858 () Bool)

(declare-fun inv!76406 (Conc!15382) Bool)

(assert (=> b!5020826 (= e!3136542 (and (inv!76406 (c!858130 totalInput!1125)) tp!1407858))))

(declare-fun b!5020827 () Bool)

(declare-fun res!2140849 () Bool)

(assert (=> b!5020827 (=> (not res!2140849) (not e!3136544))))

(assert (=> b!5020827 (= res!2140849 (not (= from!1212 lt!2078034)))))

(declare-fun b!5020828 () Bool)

(assert (=> b!5020828 (= e!3136544 (not e!3136545))))

(declare-fun res!2140844 () Bool)

(assert (=> b!5020828 (=> res!2140844 e!3136545)))

(assert (=> b!5020828 (= res!2140844 (or (< (+ 1 from!1212) 0) (> (+ 1 from!1212) lt!2078034) (< (- knownSize!24 1) 0) (> (- knownSize!24 1) (- lt!2078034 (+ 1 from!1212)))))))

(declare-fun lt!2078036 () C!27976)

(assert (=> b!5020828 (= (Cons!58035 lt!2078036 lt!2078040) (take!722 lt!2078033 (+ 1 (- knownSize!24 1))))))

(declare-fun lt!2078038 () List!58159)

(assert (=> b!5020828 (= lt!2078040 (take!722 lt!2078038 (- knownSize!24 1)))))

(declare-datatypes ((Unit!149239 0))(
  ( (Unit!149240) )
))
(declare-fun lt!2078032 () Unit!149239)

(declare-fun lemmaDropTakeAddOneLeft!68 (List!58159 Int Int) Unit!149239)

(assert (=> b!5020828 (= lt!2078032 (lemmaDropTakeAddOneLeft!68 lt!2078039 from!1212 (- knownSize!24 1)))))

(declare-fun lt!2078042 () Int)

(assert (=> b!5020828 (= (Cons!58035 lt!2078036 (take!722 lt!2078038 lt!2078042)) (take!722 lt!2078033 (+ 1 lt!2078042)))))

(assert (=> b!5020828 (= lt!2078038 (drop!2526 lt!2078039 (+ 1 from!1212)))))

(declare-fun apply!14066 (List!58159 Int) C!27976)

(assert (=> b!5020828 (= lt!2078036 (apply!14066 lt!2078039 from!1212))))

(declare-fun lt!2078041 () Unit!149239)

(assert (=> b!5020828 (= lt!2078041 (lemmaDropTakeAddOneLeft!68 lt!2078039 from!1212 lt!2078042))))

(declare-fun findLongestMatchInnerZipperFastV2!185 ((InoxSet Context!6576) Int BalanceConc!30194 Int) Int)

(assert (=> b!5020828 (= lt!2078042 (findLongestMatchInnerZipperFastV2!185 lt!2078035 (+ 1 from!1212) totalInput!1125 lt!2078034))))

(declare-fun derivationStepZipper!669 ((InoxSet Context!6576) C!27976) (InoxSet Context!6576))

(declare-fun apply!14067 (BalanceConc!30194 Int) C!27976)

(assert (=> b!5020828 (= lt!2078035 (derivationStepZipper!669 z!4710 (apply!14067 totalInput!1125 from!1212)))))

(assert (= (and start!530570 res!2140845) b!5020824))

(assert (= (and b!5020824 res!2140847) b!5020819))

(assert (= (and b!5020819 res!2140851) b!5020825))

(assert (= (and b!5020825 res!2140846) b!5020820))

(assert (= (and b!5020820 res!2140848) b!5020822))

(assert (= (and b!5020822 res!2140850) b!5020827))

(assert (= (and b!5020827 res!2140849) b!5020828))

(assert (= (and b!5020828 (not res!2140844)) b!5020823))

(assert (= start!530570 b!5020826))

(assert (= (and start!530570 condSetEmpty!28696) setIsEmpty!28696))

(assert (= (and start!530570 (not condSetEmpty!28696)) setNonEmpty!28696))

(assert (= setNonEmpty!28696 b!5020821))

(declare-fun m!6055774 () Bool)

(assert (=> b!5020820 m!6055774))

(declare-fun m!6055776 () Bool)

(assert (=> start!530570 m!6055776))

(declare-fun m!6055778 () Bool)

(assert (=> b!5020819 m!6055778))

(declare-fun m!6055780 () Bool)

(assert (=> b!5020819 m!6055780))

(declare-fun m!6055782 () Bool)

(assert (=> b!5020819 m!6055782))

(declare-fun m!6055784 () Bool)

(assert (=> b!5020819 m!6055784))

(declare-fun m!6055786 () Bool)

(assert (=> b!5020822 m!6055786))

(declare-fun m!6055788 () Bool)

(assert (=> setNonEmpty!28696 m!6055788))

(declare-fun m!6055790 () Bool)

(assert (=> b!5020826 m!6055790))

(declare-fun m!6055792 () Bool)

(assert (=> b!5020824 m!6055792))

(declare-fun m!6055794 () Bool)

(assert (=> b!5020823 m!6055794))

(declare-fun m!6055796 () Bool)

(assert (=> b!5020828 m!6055796))

(declare-fun m!6055798 () Bool)

(assert (=> b!5020828 m!6055798))

(declare-fun m!6055800 () Bool)

(assert (=> b!5020828 m!6055800))

(declare-fun m!6055802 () Bool)

(assert (=> b!5020828 m!6055802))

(declare-fun m!6055804 () Bool)

(assert (=> b!5020828 m!6055804))

(declare-fun m!6055806 () Bool)

(assert (=> b!5020828 m!6055806))

(declare-fun m!6055808 () Bool)

(assert (=> b!5020828 m!6055808))

(declare-fun m!6055810 () Bool)

(assert (=> b!5020828 m!6055810))

(assert (=> b!5020828 m!6055798))

(declare-fun m!6055812 () Bool)

(assert (=> b!5020828 m!6055812))

(declare-fun m!6055814 () Bool)

(assert (=> b!5020828 m!6055814))

(declare-fun m!6055816 () Bool)

(assert (=> b!5020828 m!6055816))

(check-sat (not b!5020826) (not start!530570) (not b!5020821) (not b!5020819) (not setNonEmpty!28696) (not b!5020824) (not b!5020823) (not b!5020820) (not b!5020822) (not b!5020828))
(check-sat)
(get-model)

(declare-fun d!1616028 () Bool)

(declare-fun isBalanced!4295 (Conc!15382) Bool)

(assert (=> d!1616028 (= (inv!76404 totalInput!1125) (isBalanced!4295 (c!858130 totalInput!1125)))))

(declare-fun bs!1187197 () Bool)

(assert (= bs!1187197 d!1616028))

(declare-fun m!6055818 () Bool)

(assert (=> bs!1187197 m!6055818))

(assert (=> start!530570 d!1616028))

(declare-fun d!1616032 () Bool)

(declare-fun lambda!248861 () Int)

(declare-fun forall!13403 (List!58158 Int) Bool)

(assert (=> d!1616032 (= (inv!76405 setElem!28696) (forall!13403 (exprs!3788 setElem!28696) lambda!248861))))

(declare-fun bs!1187201 () Bool)

(assert (= bs!1187201 d!1616032))

(declare-fun m!6055904 () Bool)

(assert (=> bs!1187201 m!6055904))

(assert (=> setNonEmpty!28696 d!1616032))

(declare-fun d!1616060 () Bool)

(declare-fun lt!2078073 () Int)

(assert (=> d!1616060 (= lt!2078073 (size!38619 (list!18720 totalInput!1125)))))

(declare-fun size!38621 (Conc!15382) Int)

(assert (=> d!1616060 (= lt!2078073 (size!38621 (c!858130 totalInput!1125)))))

(assert (=> d!1616060 (= (size!38620 totalInput!1125) lt!2078073)))

(declare-fun bs!1187202 () Bool)

(assert (= bs!1187202 d!1616060))

(assert (=> bs!1187202 m!6055784))

(assert (=> bs!1187202 m!6055784))

(declare-fun m!6055906 () Bool)

(assert (=> bs!1187202 m!6055906))

(declare-fun m!6055908 () Bool)

(assert (=> bs!1187202 m!6055908))

(assert (=> b!5020824 d!1616060))

(declare-fun b!5020962 () Bool)

(declare-fun e!3136632 () Int)

(assert (=> b!5020962 (= e!3136632 0)))

(declare-fun b!5020963 () Bool)

(declare-fun e!3136634 () Int)

(assert (=> b!5020963 (= e!3136632 e!3136634)))

(declare-fun lt!2078109 () (InoxSet Context!6576))

(assert (=> b!5020963 (= lt!2078109 (derivationStepZipper!669 lt!2078035 (apply!14067 totalInput!1125 (+ 1 from!1212))))))

(declare-fun lt!2078108 () Int)

(assert (=> b!5020963 (= lt!2078108 (findLongestMatchInnerZipperFastV2!185 lt!2078109 (+ 1 from!1212 1) totalInput!1125 lt!2078034))))

(declare-fun c!858194 () Bool)

(assert (=> b!5020963 (= c!858194 (> lt!2078108 0))))

(declare-fun b!5020964 () Bool)

(declare-fun e!3136630 () Int)

(assert (=> b!5020964 (= e!3136630 1)))

(declare-fun b!5020965 () Bool)

(declare-fun e!3136633 () Bool)

(assert (=> b!5020965 (= e!3136633 (<= (+ 1 from!1212) (size!38620 totalInput!1125)))))

(declare-fun b!5020966 () Bool)

(declare-fun c!858192 () Bool)

(declare-fun nullableZipper!908 ((InoxSet Context!6576)) Bool)

(assert (=> b!5020966 (= c!858192 (nullableZipper!908 lt!2078109))))

(assert (=> b!5020966 (= e!3136634 e!3136630)))

(declare-fun b!5020967 () Bool)

(declare-fun e!3136631 () Bool)

(assert (=> b!5020967 (= e!3136631 (lostCauseZipper!877 lt!2078035))))

(declare-fun d!1616062 () Bool)

(declare-fun lt!2078107 () Int)

(assert (=> d!1616062 (and (>= lt!2078107 0) (<= lt!2078107 (- lt!2078034 (+ 1 from!1212))))))

(assert (=> d!1616062 (= lt!2078107 e!3136632)))

(declare-fun c!858193 () Bool)

(assert (=> d!1616062 (= c!858193 e!3136631)))

(declare-fun res!2140882 () Bool)

(assert (=> d!1616062 (=> res!2140882 e!3136631)))

(assert (=> d!1616062 (= res!2140882 (= (+ 1 from!1212) lt!2078034))))

(assert (=> d!1616062 e!3136633))

(declare-fun res!2140881 () Bool)

(assert (=> d!1616062 (=> (not res!2140881) (not e!3136633))))

(assert (=> d!1616062 (= res!2140881 (>= (+ 1 from!1212) 0))))

(assert (=> d!1616062 (= (findLongestMatchInnerZipperFastV2!185 lt!2078035 (+ 1 from!1212) totalInput!1125 lt!2078034) lt!2078107)))

(declare-fun b!5020968 () Bool)

(assert (=> b!5020968 (= e!3136634 (+ 1 lt!2078108))))

(declare-fun b!5020969 () Bool)

(assert (=> b!5020969 (= e!3136630 0)))

(assert (= (and d!1616062 res!2140881) b!5020965))

(assert (= (and d!1616062 (not res!2140882)) b!5020967))

(assert (= (and d!1616062 c!858193) b!5020962))

(assert (= (and d!1616062 (not c!858193)) b!5020963))

(assert (= (and b!5020963 c!858194) b!5020968))

(assert (= (and b!5020963 (not c!858194)) b!5020966))

(assert (= (and b!5020966 c!858192) b!5020964))

(assert (= (and b!5020966 (not c!858192)) b!5020969))

(declare-fun m!6055928 () Bool)

(assert (=> b!5020963 m!6055928))

(assert (=> b!5020963 m!6055928))

(declare-fun m!6055930 () Bool)

(assert (=> b!5020963 m!6055930))

(declare-fun m!6055932 () Bool)

(assert (=> b!5020963 m!6055932))

(assert (=> b!5020965 m!6055792))

(declare-fun m!6055934 () Bool)

(assert (=> b!5020966 m!6055934))

(declare-fun m!6055936 () Bool)

(assert (=> b!5020967 m!6055936))

(assert (=> b!5020828 d!1616062))

(declare-fun d!1616068 () Bool)

(assert (=> d!1616068 (= (Cons!58035 (apply!14066 lt!2078039 from!1212) (take!722 (drop!2526 lt!2078039 (+ from!1212 1)) lt!2078042)) (take!722 (drop!2526 lt!2078039 from!1212) (+ lt!2078042 1)))))

(declare-fun lt!2078115 () Unit!149239)

(declare-fun choose!37138 (List!58159 Int Int) Unit!149239)

(assert (=> d!1616068 (= lt!2078115 (choose!37138 lt!2078039 from!1212 lt!2078042))))

(declare-fun e!3136646 () Bool)

(assert (=> d!1616068 e!3136646))

(declare-fun res!2140888 () Bool)

(assert (=> d!1616068 (=> (not res!2140888) (not e!3136646))))

(assert (=> d!1616068 (= res!2140888 (>= from!1212 0))))

(assert (=> d!1616068 (= (lemmaDropTakeAddOneLeft!68 lt!2078039 from!1212 lt!2078042) lt!2078115)))

(declare-fun b!5020987 () Bool)

(assert (=> b!5020987 (= e!3136646 (< from!1212 (size!38619 lt!2078039)))))

(assert (= (and d!1616068 res!2140888) b!5020987))

(assert (=> d!1616068 m!6055782))

(assert (=> d!1616068 m!6055782))

(declare-fun m!6055944 () Bool)

(assert (=> d!1616068 m!6055944))

(assert (=> d!1616068 m!6055814))

(declare-fun m!6055946 () Bool)

(assert (=> d!1616068 m!6055946))

(declare-fun m!6055948 () Bool)

(assert (=> d!1616068 m!6055948))

(assert (=> d!1616068 m!6055946))

(declare-fun m!6055950 () Bool)

(assert (=> d!1616068 m!6055950))

(declare-fun m!6055952 () Bool)

(assert (=> b!5020987 m!6055952))

(assert (=> b!5020828 d!1616068))

(declare-fun d!1616074 () Bool)

(declare-fun lt!2078120 () C!27976)

(assert (=> d!1616074 (= lt!2078120 (apply!14066 (list!18720 totalInput!1125) from!1212))))

(declare-fun apply!14069 (Conc!15382 Int) C!27976)

(assert (=> d!1616074 (= lt!2078120 (apply!14069 (c!858130 totalInput!1125) from!1212))))

(declare-fun e!3136662 () Bool)

(assert (=> d!1616074 e!3136662))

(declare-fun res!2140893 () Bool)

(assert (=> d!1616074 (=> (not res!2140893) (not e!3136662))))

(assert (=> d!1616074 (= res!2140893 (<= 0 from!1212))))

(assert (=> d!1616074 (= (apply!14067 totalInput!1125 from!1212) lt!2078120)))

(declare-fun b!5021014 () Bool)

(assert (=> b!5021014 (= e!3136662 (< from!1212 (size!38620 totalInput!1125)))))

(assert (= (and d!1616074 res!2140893) b!5021014))

(assert (=> d!1616074 m!6055784))

(assert (=> d!1616074 m!6055784))

(declare-fun m!6055990 () Bool)

(assert (=> d!1616074 m!6055990))

(declare-fun m!6055992 () Bool)

(assert (=> d!1616074 m!6055992))

(assert (=> b!5021014 m!6055792))

(assert (=> b!5020828 d!1616074))

(declare-fun b!5021050 () Bool)

(declare-fun e!3136684 () Int)

(assert (=> b!5021050 (= e!3136684 (size!38619 lt!2078038))))

(declare-fun b!5021051 () Bool)

(assert (=> b!5021051 (= e!3136684 (- knownSize!24 1))))

(declare-fun b!5021052 () Bool)

(declare-fun e!3136683 () Int)

(assert (=> b!5021052 (= e!3136683 0)))

(declare-fun b!5021053 () Bool)

(declare-fun e!3136685 () Bool)

(declare-fun lt!2078123 () List!58159)

(assert (=> b!5021053 (= e!3136685 (= (size!38619 lt!2078123) e!3136683))))

(declare-fun c!858218 () Bool)

(assert (=> b!5021053 (= c!858218 (<= (- knownSize!24 1) 0))))

(declare-fun d!1616084 () Bool)

(assert (=> d!1616084 e!3136685))

(declare-fun res!2140896 () Bool)

(assert (=> d!1616084 (=> (not res!2140896) (not e!3136685))))

(declare-fun content!10285 (List!58159) (InoxSet C!27976))

(assert (=> d!1616084 (= res!2140896 (= ((_ map implies) (content!10285 lt!2078123) (content!10285 lt!2078038)) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136686 () List!58159)

(assert (=> d!1616084 (= lt!2078123 e!3136686)))

(declare-fun c!858219 () Bool)

(get-info :version)

(assert (=> d!1616084 (= c!858219 (or ((_ is Nil!58035) lt!2078038) (<= (- knownSize!24 1) 0)))))

(assert (=> d!1616084 (= (take!722 lt!2078038 (- knownSize!24 1)) lt!2078123)))

(declare-fun b!5021054 () Bool)

(assert (=> b!5021054 (= e!3136686 Nil!58035)))

(declare-fun b!5021055 () Bool)

(assert (=> b!5021055 (= e!3136686 (Cons!58035 (h!64483 lt!2078038) (take!722 (t!370535 lt!2078038) (- (- knownSize!24 1) 1))))))

(declare-fun b!5021056 () Bool)

(assert (=> b!5021056 (= e!3136683 e!3136684)))

(declare-fun c!858220 () Bool)

(assert (=> b!5021056 (= c!858220 (>= (- knownSize!24 1) (size!38619 lt!2078038)))))

(assert (= (and d!1616084 c!858219) b!5021054))

(assert (= (and d!1616084 (not c!858219)) b!5021055))

(assert (= (and d!1616084 res!2140896) b!5021053))

(assert (= (and b!5021053 c!858218) b!5021052))

(assert (= (and b!5021053 (not c!858218)) b!5021056))

(assert (= (and b!5021056 c!858220) b!5021050))

(assert (= (and b!5021056 (not c!858220)) b!5021051))

(declare-fun m!6056004 () Bool)

(assert (=> b!5021050 m!6056004))

(declare-fun m!6056006 () Bool)

(assert (=> d!1616084 m!6056006))

(declare-fun m!6056008 () Bool)

(assert (=> d!1616084 m!6056008))

(assert (=> b!5021056 m!6056004))

(declare-fun m!6056010 () Bool)

(assert (=> b!5021055 m!6056010))

(declare-fun m!6056012 () Bool)

(assert (=> b!5021053 m!6056012))

(assert (=> b!5020828 d!1616084))

(declare-fun d!1616086 () Bool)

(assert (=> d!1616086 (= (Cons!58035 (apply!14066 lt!2078039 from!1212) (take!722 (drop!2526 lt!2078039 (+ from!1212 1)) (- knownSize!24 1))) (take!722 (drop!2526 lt!2078039 from!1212) (+ (- knownSize!24 1) 1)))))

(declare-fun lt!2078124 () Unit!149239)

(assert (=> d!1616086 (= lt!2078124 (choose!37138 lt!2078039 from!1212 (- knownSize!24 1)))))

(declare-fun e!3136687 () Bool)

(assert (=> d!1616086 e!3136687))

(declare-fun res!2140897 () Bool)

(assert (=> d!1616086 (=> (not res!2140897) (not e!3136687))))

(assert (=> d!1616086 (= res!2140897 (>= from!1212 0))))

(assert (=> d!1616086 (= (lemmaDropTakeAddOneLeft!68 lt!2078039 from!1212 (- knownSize!24 1)) lt!2078124)))

(declare-fun b!5021057 () Bool)

(assert (=> b!5021057 (= e!3136687 (< from!1212 (size!38619 lt!2078039)))))

(assert (= (and d!1616086 res!2140897) b!5021057))

(assert (=> d!1616086 m!6055782))

(assert (=> d!1616086 m!6055782))

(declare-fun m!6056014 () Bool)

(assert (=> d!1616086 m!6056014))

(assert (=> d!1616086 m!6055814))

(assert (=> d!1616086 m!6055946))

(declare-fun m!6056016 () Bool)

(assert (=> d!1616086 m!6056016))

(assert (=> d!1616086 m!6055946))

(declare-fun m!6056018 () Bool)

(assert (=> d!1616086 m!6056018))

(assert (=> b!5021057 m!6055952))

(assert (=> b!5020828 d!1616086))

(declare-fun d!1616088 () Bool)

(assert (=> d!1616088 true))

(declare-fun lambda!248879 () Int)

(declare-fun flatMap!294 ((InoxSet Context!6576) Int) (InoxSet Context!6576))

(assert (=> d!1616088 (= (derivationStepZipper!669 z!4710 (apply!14067 totalInput!1125 from!1212)) (flatMap!294 z!4710 lambda!248879))))

(declare-fun bs!1187208 () Bool)

(assert (= bs!1187208 d!1616088))

(declare-fun m!6056020 () Bool)

(assert (=> bs!1187208 m!6056020))

(assert (=> b!5020828 d!1616088))

(declare-fun b!5021078 () Bool)

(declare-fun e!3136698 () Int)

(declare-fun call!350608 () Int)

(assert (=> b!5021078 (= e!3136698 (- call!350608 (+ 1 from!1212)))))

(declare-fun b!5021079 () Bool)

(declare-fun e!3136699 () Int)

(assert (=> b!5021079 (= e!3136699 e!3136698)))

(declare-fun c!858233 () Bool)

(assert (=> b!5021079 (= c!858233 (>= (+ 1 from!1212) call!350608))))

(declare-fun b!5021080 () Bool)

(declare-fun e!3136702 () List!58159)

(declare-fun e!3136700 () List!58159)

(assert (=> b!5021080 (= e!3136702 e!3136700)))

(declare-fun c!858234 () Bool)

(assert (=> b!5021080 (= c!858234 (<= (+ 1 from!1212) 0))))

(declare-fun b!5021081 () Bool)

(assert (=> b!5021081 (= e!3136702 Nil!58035)))

(declare-fun b!5021082 () Bool)

(declare-fun e!3136701 () Bool)

(declare-fun lt!2078127 () List!58159)

(assert (=> b!5021082 (= e!3136701 (= (size!38619 lt!2078127) e!3136699))))

(declare-fun c!858232 () Bool)

(assert (=> b!5021082 (= c!858232 (<= (+ 1 from!1212) 0))))

(declare-fun b!5021083 () Bool)

(assert (=> b!5021083 (= e!3136700 (drop!2526 (t!370535 lt!2078039) (- (+ 1 from!1212) 1)))))

(declare-fun b!5021084 () Bool)

(assert (=> b!5021084 (= e!3136700 lt!2078039)))

(declare-fun bm!350603 () Bool)

(assert (=> bm!350603 (= call!350608 (size!38619 lt!2078039))))

(declare-fun b!5021085 () Bool)

(assert (=> b!5021085 (= e!3136699 call!350608)))

(declare-fun d!1616090 () Bool)

(assert (=> d!1616090 e!3136701))

(declare-fun res!2140900 () Bool)

(assert (=> d!1616090 (=> (not res!2140900) (not e!3136701))))

(assert (=> d!1616090 (= res!2140900 (= ((_ map implies) (content!10285 lt!2078127) (content!10285 lt!2078039)) ((as const (InoxSet C!27976)) true)))))

(assert (=> d!1616090 (= lt!2078127 e!3136702)))

(declare-fun c!858231 () Bool)

(assert (=> d!1616090 (= c!858231 ((_ is Nil!58035) lt!2078039))))

(assert (=> d!1616090 (= (drop!2526 lt!2078039 (+ 1 from!1212)) lt!2078127)))

(declare-fun b!5021086 () Bool)

(assert (=> b!5021086 (= e!3136698 0)))

(assert (= (and d!1616090 c!858231) b!5021081))

(assert (= (and d!1616090 (not c!858231)) b!5021080))

(assert (= (and b!5021080 c!858234) b!5021084))

(assert (= (and b!5021080 (not c!858234)) b!5021083))

(assert (= (and d!1616090 res!2140900) b!5021082))

(assert (= (and b!5021082 c!858232) b!5021085))

(assert (= (and b!5021082 (not c!858232)) b!5021079))

(assert (= (and b!5021079 c!858233) b!5021086))

(assert (= (and b!5021079 (not c!858233)) b!5021078))

(assert (= (or b!5021085 b!5021079 b!5021078) bm!350603))

(declare-fun m!6056022 () Bool)

(assert (=> b!5021082 m!6056022))

(declare-fun m!6056024 () Bool)

(assert (=> b!5021083 m!6056024))

(assert (=> bm!350603 m!6055952))

(declare-fun m!6056026 () Bool)

(assert (=> d!1616090 m!6056026))

(declare-fun m!6056028 () Bool)

(assert (=> d!1616090 m!6056028))

(assert (=> b!5020828 d!1616090))

(declare-fun b!5021087 () Bool)

(declare-fun e!3136704 () Int)

(assert (=> b!5021087 (= e!3136704 (size!38619 lt!2078033))))

(declare-fun b!5021088 () Bool)

(assert (=> b!5021088 (= e!3136704 (+ 1 (- knownSize!24 1)))))

(declare-fun b!5021089 () Bool)

(declare-fun e!3136703 () Int)

(assert (=> b!5021089 (= e!3136703 0)))

(declare-fun b!5021090 () Bool)

(declare-fun e!3136705 () Bool)

(declare-fun lt!2078128 () List!58159)

(assert (=> b!5021090 (= e!3136705 (= (size!38619 lt!2078128) e!3136703))))

(declare-fun c!858235 () Bool)

(assert (=> b!5021090 (= c!858235 (<= (+ 1 (- knownSize!24 1)) 0))))

(declare-fun d!1616092 () Bool)

(assert (=> d!1616092 e!3136705))

(declare-fun res!2140901 () Bool)

(assert (=> d!1616092 (=> (not res!2140901) (not e!3136705))))

(assert (=> d!1616092 (= res!2140901 (= ((_ map implies) (content!10285 lt!2078128) (content!10285 lt!2078033)) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136706 () List!58159)

(assert (=> d!1616092 (= lt!2078128 e!3136706)))

(declare-fun c!858236 () Bool)

(assert (=> d!1616092 (= c!858236 (or ((_ is Nil!58035) lt!2078033) (<= (+ 1 (- knownSize!24 1)) 0)))))

(assert (=> d!1616092 (= (take!722 lt!2078033 (+ 1 (- knownSize!24 1))) lt!2078128)))

(declare-fun b!5021091 () Bool)

(assert (=> b!5021091 (= e!3136706 Nil!58035)))

(declare-fun b!5021092 () Bool)

(assert (=> b!5021092 (= e!3136706 (Cons!58035 (h!64483 lt!2078033) (take!722 (t!370535 lt!2078033) (- (+ 1 (- knownSize!24 1)) 1))))))

(declare-fun b!5021093 () Bool)

(assert (=> b!5021093 (= e!3136703 e!3136704)))

(declare-fun c!858237 () Bool)

(assert (=> b!5021093 (= c!858237 (>= (+ 1 (- knownSize!24 1)) (size!38619 lt!2078033)))))

(assert (= (and d!1616092 c!858236) b!5021091))

(assert (= (and d!1616092 (not c!858236)) b!5021092))

(assert (= (and d!1616092 res!2140901) b!5021090))

(assert (= (and b!5021090 c!858235) b!5021089))

(assert (= (and b!5021090 (not c!858235)) b!5021093))

(assert (= (and b!5021093 c!858237) b!5021087))

(assert (= (and b!5021093 (not c!858237)) b!5021088))

(declare-fun m!6056030 () Bool)

(assert (=> b!5021087 m!6056030))

(declare-fun m!6056032 () Bool)

(assert (=> d!1616092 m!6056032))

(declare-fun m!6056034 () Bool)

(assert (=> d!1616092 m!6056034))

(assert (=> b!5021093 m!6056030))

(declare-fun m!6056036 () Bool)

(assert (=> b!5021092 m!6056036))

(declare-fun m!6056038 () Bool)

(assert (=> b!5021090 m!6056038))

(assert (=> b!5020828 d!1616092))

(declare-fun b!5021094 () Bool)

(declare-fun e!3136708 () Int)

(assert (=> b!5021094 (= e!3136708 (size!38619 lt!2078038))))

(declare-fun b!5021095 () Bool)

(assert (=> b!5021095 (= e!3136708 lt!2078042)))

(declare-fun b!5021096 () Bool)

(declare-fun e!3136707 () Int)

(assert (=> b!5021096 (= e!3136707 0)))

(declare-fun b!5021097 () Bool)

(declare-fun e!3136709 () Bool)

(declare-fun lt!2078129 () List!58159)

(assert (=> b!5021097 (= e!3136709 (= (size!38619 lt!2078129) e!3136707))))

(declare-fun c!858238 () Bool)

(assert (=> b!5021097 (= c!858238 (<= lt!2078042 0))))

(declare-fun d!1616094 () Bool)

(assert (=> d!1616094 e!3136709))

(declare-fun res!2140902 () Bool)

(assert (=> d!1616094 (=> (not res!2140902) (not e!3136709))))

(assert (=> d!1616094 (= res!2140902 (= ((_ map implies) (content!10285 lt!2078129) (content!10285 lt!2078038)) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136710 () List!58159)

(assert (=> d!1616094 (= lt!2078129 e!3136710)))

(declare-fun c!858239 () Bool)

(assert (=> d!1616094 (= c!858239 (or ((_ is Nil!58035) lt!2078038) (<= lt!2078042 0)))))

(assert (=> d!1616094 (= (take!722 lt!2078038 lt!2078042) lt!2078129)))

(declare-fun b!5021098 () Bool)

(assert (=> b!5021098 (= e!3136710 Nil!58035)))

(declare-fun b!5021099 () Bool)

(assert (=> b!5021099 (= e!3136710 (Cons!58035 (h!64483 lt!2078038) (take!722 (t!370535 lt!2078038) (- lt!2078042 1))))))

(declare-fun b!5021100 () Bool)

(assert (=> b!5021100 (= e!3136707 e!3136708)))

(declare-fun c!858240 () Bool)

(assert (=> b!5021100 (= c!858240 (>= lt!2078042 (size!38619 lt!2078038)))))

(assert (= (and d!1616094 c!858239) b!5021098))

(assert (= (and d!1616094 (not c!858239)) b!5021099))

(assert (= (and d!1616094 res!2140902) b!5021097))

(assert (= (and b!5021097 c!858238) b!5021096))

(assert (= (and b!5021097 (not c!858238)) b!5021100))

(assert (= (and b!5021100 c!858240) b!5021094))

(assert (= (and b!5021100 (not c!858240)) b!5021095))

(assert (=> b!5021094 m!6056004))

(declare-fun m!6056040 () Bool)

(assert (=> d!1616094 m!6056040))

(assert (=> d!1616094 m!6056008))

(assert (=> b!5021100 m!6056004))

(declare-fun m!6056042 () Bool)

(assert (=> b!5021099 m!6056042))

(declare-fun m!6056044 () Bool)

(assert (=> b!5021097 m!6056044))

(assert (=> b!5020828 d!1616094))

(declare-fun d!1616096 () Bool)

(declare-fun lt!2078132 () C!27976)

(declare-fun contains!19566 (List!58159 C!27976) Bool)

(assert (=> d!1616096 (contains!19566 lt!2078039 lt!2078132)))

(declare-fun e!3136715 () C!27976)

(assert (=> d!1616096 (= lt!2078132 e!3136715)))

(declare-fun c!858243 () Bool)

(assert (=> d!1616096 (= c!858243 (= from!1212 0))))

(declare-fun e!3136716 () Bool)

(assert (=> d!1616096 e!3136716))

(declare-fun res!2140905 () Bool)

(assert (=> d!1616096 (=> (not res!2140905) (not e!3136716))))

(assert (=> d!1616096 (= res!2140905 (<= 0 from!1212))))

(assert (=> d!1616096 (= (apply!14066 lt!2078039 from!1212) lt!2078132)))

(declare-fun b!5021107 () Bool)

(assert (=> b!5021107 (= e!3136716 (< from!1212 (size!38619 lt!2078039)))))

(declare-fun b!5021108 () Bool)

(declare-fun head!10762 (List!58159) C!27976)

(assert (=> b!5021108 (= e!3136715 (head!10762 lt!2078039))))

(declare-fun b!5021109 () Bool)

(declare-fun tail!9895 (List!58159) List!58159)

(assert (=> b!5021109 (= e!3136715 (apply!14066 (tail!9895 lt!2078039) (- from!1212 1)))))

(assert (= (and d!1616096 res!2140905) b!5021107))

(assert (= (and d!1616096 c!858243) b!5021108))

(assert (= (and d!1616096 (not c!858243)) b!5021109))

(declare-fun m!6056046 () Bool)

(assert (=> d!1616096 m!6056046))

(assert (=> b!5021107 m!6055952))

(declare-fun m!6056048 () Bool)

(assert (=> b!5021108 m!6056048))

(declare-fun m!6056050 () Bool)

(assert (=> b!5021109 m!6056050))

(assert (=> b!5021109 m!6056050))

(declare-fun m!6056052 () Bool)

(assert (=> b!5021109 m!6056052))

(assert (=> b!5020828 d!1616096))

(declare-fun b!5021110 () Bool)

(declare-fun e!3136718 () Int)

(assert (=> b!5021110 (= e!3136718 (size!38619 lt!2078033))))

(declare-fun b!5021111 () Bool)

(assert (=> b!5021111 (= e!3136718 (+ 1 lt!2078042))))

(declare-fun b!5021112 () Bool)

(declare-fun e!3136717 () Int)

(assert (=> b!5021112 (= e!3136717 0)))

(declare-fun b!5021113 () Bool)

(declare-fun e!3136719 () Bool)

(declare-fun lt!2078133 () List!58159)

(assert (=> b!5021113 (= e!3136719 (= (size!38619 lt!2078133) e!3136717))))

(declare-fun c!858244 () Bool)

(assert (=> b!5021113 (= c!858244 (<= (+ 1 lt!2078042) 0))))

(declare-fun d!1616098 () Bool)

(assert (=> d!1616098 e!3136719))

(declare-fun res!2140906 () Bool)

(assert (=> d!1616098 (=> (not res!2140906) (not e!3136719))))

(assert (=> d!1616098 (= res!2140906 (= ((_ map implies) (content!10285 lt!2078133) (content!10285 lt!2078033)) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136720 () List!58159)

(assert (=> d!1616098 (= lt!2078133 e!3136720)))

(declare-fun c!858245 () Bool)

(assert (=> d!1616098 (= c!858245 (or ((_ is Nil!58035) lt!2078033) (<= (+ 1 lt!2078042) 0)))))

(assert (=> d!1616098 (= (take!722 lt!2078033 (+ 1 lt!2078042)) lt!2078133)))

(declare-fun b!5021114 () Bool)

(assert (=> b!5021114 (= e!3136720 Nil!58035)))

(declare-fun b!5021115 () Bool)

(assert (=> b!5021115 (= e!3136720 (Cons!58035 (h!64483 lt!2078033) (take!722 (t!370535 lt!2078033) (- (+ 1 lt!2078042) 1))))))

(declare-fun b!5021116 () Bool)

(assert (=> b!5021116 (= e!3136717 e!3136718)))

(declare-fun c!858246 () Bool)

(assert (=> b!5021116 (= c!858246 (>= (+ 1 lt!2078042) (size!38619 lt!2078033)))))

(assert (= (and d!1616098 c!858245) b!5021114))

(assert (= (and d!1616098 (not c!858245)) b!5021115))

(assert (= (and d!1616098 res!2140906) b!5021113))

(assert (= (and b!5021113 c!858244) b!5021112))

(assert (= (and b!5021113 (not c!858244)) b!5021116))

(assert (= (and b!5021116 c!858246) b!5021110))

(assert (= (and b!5021116 (not c!858246)) b!5021111))

(assert (=> b!5021110 m!6056030))

(declare-fun m!6056054 () Bool)

(assert (=> d!1616098 m!6056054))

(assert (=> d!1616098 m!6056034))

(assert (=> b!5021116 m!6056030))

(declare-fun m!6056056 () Bool)

(assert (=> b!5021115 m!6056056))

(declare-fun m!6056058 () Bool)

(assert (=> b!5021113 m!6056058))

(assert (=> b!5020828 d!1616098))

(declare-fun d!1616100 () Bool)

(declare-fun lt!2078136 () Int)

(assert (=> d!1616100 (>= lt!2078136 0)))

(declare-fun e!3136723 () Int)

(assert (=> d!1616100 (= lt!2078136 e!3136723)))

(declare-fun c!858249 () Bool)

(assert (=> d!1616100 (= c!858249 ((_ is Nil!58035) lt!2078037))))

(assert (=> d!1616100 (= (size!38619 lt!2078037) lt!2078136)))

(declare-fun b!5021121 () Bool)

(assert (=> b!5021121 (= e!3136723 0)))

(declare-fun b!5021122 () Bool)

(assert (=> b!5021122 (= e!3136723 (+ 1 (size!38619 (t!370535 lt!2078037))))))

(assert (= (and d!1616100 c!858249) b!5021121))

(assert (= (and d!1616100 (not c!858249)) b!5021122))

(declare-fun m!6056060 () Bool)

(assert (=> b!5021122 m!6056060))

(assert (=> b!5020820 d!1616100))

(declare-fun d!1616102 () Bool)

(declare-fun c!858252 () Bool)

(declare-fun isEmpty!31427 (List!58159) Bool)

(assert (=> d!1616102 (= c!858252 (isEmpty!31427 lt!2078037))))

(declare-fun e!3136726 () Bool)

(assert (=> d!1616102 (= (matchZipper!631 z!4710 lt!2078037) e!3136726)))

(declare-fun b!5021127 () Bool)

(assert (=> b!5021127 (= e!3136726 (nullableZipper!908 z!4710))))

(declare-fun b!5021128 () Bool)

(assert (=> b!5021128 (= e!3136726 (matchZipper!631 (derivationStepZipper!669 z!4710 (head!10762 lt!2078037)) (tail!9895 lt!2078037)))))

(assert (= (and d!1616102 c!858252) b!5021127))

(assert (= (and d!1616102 (not c!858252)) b!5021128))

(declare-fun m!6056062 () Bool)

(assert (=> d!1616102 m!6056062))

(declare-fun m!6056064 () Bool)

(assert (=> b!5021127 m!6056064))

(declare-fun m!6056066 () Bool)

(assert (=> b!5021128 m!6056066))

(assert (=> b!5021128 m!6056066))

(declare-fun m!6056068 () Bool)

(assert (=> b!5021128 m!6056068))

(declare-fun m!6056070 () Bool)

(assert (=> b!5021128 m!6056070))

(assert (=> b!5021128 m!6056068))

(assert (=> b!5021128 m!6056070))

(declare-fun m!6056072 () Bool)

(assert (=> b!5021128 m!6056072))

(assert (=> b!5020819 d!1616102))

(declare-fun b!5021129 () Bool)

(declare-fun e!3136728 () Int)

(assert (=> b!5021129 (= e!3136728 (size!38619 lt!2078033))))

(declare-fun b!5021130 () Bool)

(assert (=> b!5021130 (= e!3136728 knownSize!24)))

(declare-fun b!5021131 () Bool)

(declare-fun e!3136727 () Int)

(assert (=> b!5021131 (= e!3136727 0)))

(declare-fun b!5021132 () Bool)

(declare-fun e!3136729 () Bool)

(declare-fun lt!2078137 () List!58159)

(assert (=> b!5021132 (= e!3136729 (= (size!38619 lt!2078137) e!3136727))))

(declare-fun c!858253 () Bool)

(assert (=> b!5021132 (= c!858253 (<= knownSize!24 0))))

(declare-fun d!1616104 () Bool)

(assert (=> d!1616104 e!3136729))

(declare-fun res!2140907 () Bool)

(assert (=> d!1616104 (=> (not res!2140907) (not e!3136729))))

(assert (=> d!1616104 (= res!2140907 (= ((_ map implies) (content!10285 lt!2078137) (content!10285 lt!2078033)) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136730 () List!58159)

(assert (=> d!1616104 (= lt!2078137 e!3136730)))

(declare-fun c!858254 () Bool)

(assert (=> d!1616104 (= c!858254 (or ((_ is Nil!58035) lt!2078033) (<= knownSize!24 0)))))

(assert (=> d!1616104 (= (take!722 lt!2078033 knownSize!24) lt!2078137)))

(declare-fun b!5021133 () Bool)

(assert (=> b!5021133 (= e!3136730 Nil!58035)))

(declare-fun b!5021134 () Bool)

(assert (=> b!5021134 (= e!3136730 (Cons!58035 (h!64483 lt!2078033) (take!722 (t!370535 lt!2078033) (- knownSize!24 1))))))

(declare-fun b!5021135 () Bool)

(assert (=> b!5021135 (= e!3136727 e!3136728)))

(declare-fun c!858255 () Bool)

(assert (=> b!5021135 (= c!858255 (>= knownSize!24 (size!38619 lt!2078033)))))

(assert (= (and d!1616104 c!858254) b!5021133))

(assert (= (and d!1616104 (not c!858254)) b!5021134))

(assert (= (and d!1616104 res!2140907) b!5021132))

(assert (= (and b!5021132 c!858253) b!5021131))

(assert (= (and b!5021132 (not c!858253)) b!5021135))

(assert (= (and b!5021135 c!858255) b!5021129))

(assert (= (and b!5021135 (not c!858255)) b!5021130))

(assert (=> b!5021129 m!6056030))

(declare-fun m!6056074 () Bool)

(assert (=> d!1616104 m!6056074))

(assert (=> d!1616104 m!6056034))

(assert (=> b!5021135 m!6056030))

(declare-fun m!6056076 () Bool)

(assert (=> b!5021134 m!6056076))

(declare-fun m!6056078 () Bool)

(assert (=> b!5021132 m!6056078))

(assert (=> b!5020819 d!1616104))

(declare-fun b!5021136 () Bool)

(declare-fun e!3136731 () Int)

(declare-fun call!350609 () Int)

(assert (=> b!5021136 (= e!3136731 (- call!350609 from!1212))))

(declare-fun b!5021137 () Bool)

(declare-fun e!3136732 () Int)

(assert (=> b!5021137 (= e!3136732 e!3136731)))

(declare-fun c!858258 () Bool)

(assert (=> b!5021137 (= c!858258 (>= from!1212 call!350609))))

(declare-fun b!5021138 () Bool)

(declare-fun e!3136735 () List!58159)

(declare-fun e!3136733 () List!58159)

(assert (=> b!5021138 (= e!3136735 e!3136733)))

(declare-fun c!858259 () Bool)

(assert (=> b!5021138 (= c!858259 (<= from!1212 0))))

(declare-fun b!5021139 () Bool)

(assert (=> b!5021139 (= e!3136735 Nil!58035)))

(declare-fun b!5021140 () Bool)

(declare-fun e!3136734 () Bool)

(declare-fun lt!2078138 () List!58159)

(assert (=> b!5021140 (= e!3136734 (= (size!38619 lt!2078138) e!3136732))))

(declare-fun c!858257 () Bool)

(assert (=> b!5021140 (= c!858257 (<= from!1212 0))))

(declare-fun b!5021141 () Bool)

(assert (=> b!5021141 (= e!3136733 (drop!2526 (t!370535 lt!2078039) (- from!1212 1)))))

(declare-fun b!5021142 () Bool)

(assert (=> b!5021142 (= e!3136733 lt!2078039)))

(declare-fun bm!350604 () Bool)

(assert (=> bm!350604 (= call!350609 (size!38619 lt!2078039))))

(declare-fun b!5021143 () Bool)

(assert (=> b!5021143 (= e!3136732 call!350609)))

(declare-fun d!1616106 () Bool)

(assert (=> d!1616106 e!3136734))

(declare-fun res!2140908 () Bool)

(assert (=> d!1616106 (=> (not res!2140908) (not e!3136734))))

(assert (=> d!1616106 (= res!2140908 (= ((_ map implies) (content!10285 lt!2078138) (content!10285 lt!2078039)) ((as const (InoxSet C!27976)) true)))))

(assert (=> d!1616106 (= lt!2078138 e!3136735)))

(declare-fun c!858256 () Bool)

(assert (=> d!1616106 (= c!858256 ((_ is Nil!58035) lt!2078039))))

(assert (=> d!1616106 (= (drop!2526 lt!2078039 from!1212) lt!2078138)))

(declare-fun b!5021144 () Bool)

(assert (=> b!5021144 (= e!3136731 0)))

(assert (= (and d!1616106 c!858256) b!5021139))

(assert (= (and d!1616106 (not c!858256)) b!5021138))

(assert (= (and b!5021138 c!858259) b!5021142))

(assert (= (and b!5021138 (not c!858259)) b!5021141))

(assert (= (and d!1616106 res!2140908) b!5021140))

(assert (= (and b!5021140 c!858257) b!5021143))

(assert (= (and b!5021140 (not c!858257)) b!5021137))

(assert (= (and b!5021137 c!858258) b!5021144))

(assert (= (and b!5021137 (not c!858258)) b!5021136))

(assert (= (or b!5021143 b!5021137 b!5021136) bm!350604))

(declare-fun m!6056080 () Bool)

(assert (=> b!5021140 m!6056080))

(declare-fun m!6056082 () Bool)

(assert (=> b!5021141 m!6056082))

(assert (=> bm!350604 m!6055952))

(declare-fun m!6056084 () Bool)

(assert (=> d!1616106 m!6056084))

(assert (=> d!1616106 m!6056028))

(assert (=> b!5020819 d!1616106))

(declare-fun d!1616108 () Bool)

(declare-fun list!18722 (Conc!15382) List!58159)

(assert (=> d!1616108 (= (list!18720 totalInput!1125) (list!18722 (c!858130 totalInput!1125)))))

(declare-fun bs!1187209 () Bool)

(assert (= bs!1187209 d!1616108))

(declare-fun m!6056086 () Bool)

(assert (=> bs!1187209 m!6056086))

(assert (=> b!5020819 d!1616108))

(declare-fun d!1616110 () Bool)

(declare-fun c!858260 () Bool)

(assert (=> d!1616110 (= c!858260 (isEmpty!31427 lt!2078040))))

(declare-fun e!3136736 () Bool)

(assert (=> d!1616110 (= (matchZipper!631 lt!2078035 lt!2078040) e!3136736)))

(declare-fun b!5021145 () Bool)

(assert (=> b!5021145 (= e!3136736 (nullableZipper!908 lt!2078035))))

(declare-fun b!5021146 () Bool)

(assert (=> b!5021146 (= e!3136736 (matchZipper!631 (derivationStepZipper!669 lt!2078035 (head!10762 lt!2078040)) (tail!9895 lt!2078040)))))

(assert (= (and d!1616110 c!858260) b!5021145))

(assert (= (and d!1616110 (not c!858260)) b!5021146))

(declare-fun m!6056088 () Bool)

(assert (=> d!1616110 m!6056088))

(declare-fun m!6056090 () Bool)

(assert (=> b!5021145 m!6056090))

(declare-fun m!6056092 () Bool)

(assert (=> b!5021146 m!6056092))

(assert (=> b!5021146 m!6056092))

(declare-fun m!6056094 () Bool)

(assert (=> b!5021146 m!6056094))

(declare-fun m!6056096 () Bool)

(assert (=> b!5021146 m!6056096))

(assert (=> b!5021146 m!6056094))

(assert (=> b!5021146 m!6056096))

(declare-fun m!6056098 () Bool)

(assert (=> b!5021146 m!6056098))

(assert (=> b!5020823 d!1616110))

(declare-fun bs!1187210 () Bool)

(declare-fun b!5021151 () Bool)

(declare-fun d!1616112 () Bool)

(assert (= bs!1187210 (and b!5021151 d!1616112)))

(declare-fun lambda!248893 () Int)

(declare-fun lambda!248892 () Int)

(assert (=> bs!1187210 (not (= lambda!248893 lambda!248892))))

(declare-fun bs!1187211 () Bool)

(declare-fun b!5021152 () Bool)

(assert (= bs!1187211 (and b!5021152 d!1616112)))

(declare-fun lambda!248894 () Int)

(assert (=> bs!1187211 (not (= lambda!248894 lambda!248892))))

(declare-fun bs!1187212 () Bool)

(assert (= bs!1187212 (and b!5021152 b!5021151)))

(assert (=> bs!1187212 (= lambda!248894 lambda!248893)))

(declare-fun lt!2078156 () Bool)

(declare-datatypes ((Option!14593 0))(
  ( (None!14592) (Some!14592 (v!50593 List!58159)) )
))
(declare-fun isEmpty!31428 (Option!14593) Bool)

(declare-fun getLanguageWitness!726 ((InoxSet Context!6576)) Option!14593)

(assert (=> d!1616112 (= lt!2078156 (isEmpty!31428 (getLanguageWitness!726 z!4710)))))

(declare-fun forall!13405 ((InoxSet Context!6576) Int) Bool)

(assert (=> d!1616112 (= lt!2078156 (forall!13405 z!4710 lambda!248892))))

(declare-fun lt!2078158 () Unit!149239)

(declare-fun e!3136743 () Unit!149239)

(assert (=> d!1616112 (= lt!2078158 e!3136743)))

(declare-fun c!858271 () Bool)

(assert (=> d!1616112 (= c!858271 (not (forall!13405 z!4710 lambda!248892)))))

(assert (=> d!1616112 (= (lostCauseZipper!877 z!4710) lt!2078156)))

(declare-fun Unit!149243 () Unit!149239)

(assert (=> b!5021152 (= e!3136743 Unit!149243)))

(declare-datatypes ((List!58161 0))(
  ( (Nil!58037) (Cons!58037 (h!64485 Context!6576) (t!370537 List!58161)) )
))
(declare-fun lt!2078155 () List!58161)

(declare-fun call!350614 () List!58161)

(assert (=> b!5021152 (= lt!2078155 call!350614)))

(declare-fun lt!2078161 () Unit!149239)

(declare-fun lemmaForallThenNotExists!246 (List!58161 Int) Unit!149239)

(assert (=> b!5021152 (= lt!2078161 (lemmaForallThenNotExists!246 lt!2078155 lambda!248892))))

(declare-fun call!350615 () Bool)

(assert (=> b!5021152 (not call!350615)))

(declare-fun lt!2078160 () Unit!149239)

(assert (=> b!5021152 (= lt!2078160 lt!2078161)))

(declare-fun Unit!149244 () Unit!149239)

(assert (=> b!5021151 (= e!3136743 Unit!149244)))

(declare-fun lt!2078162 () List!58161)

(assert (=> b!5021151 (= lt!2078162 call!350614)))

(declare-fun lt!2078159 () Unit!149239)

(declare-fun lemmaNotForallThenExists!263 (List!58161 Int) Unit!149239)

(assert (=> b!5021151 (= lt!2078159 (lemmaNotForallThenExists!263 lt!2078162 lambda!248892))))

(assert (=> b!5021151 call!350615))

(declare-fun lt!2078157 () Unit!149239)

(assert (=> b!5021151 (= lt!2078157 lt!2078159)))

(declare-fun bm!350610 () Bool)

(declare-fun exists!1379 (List!58161 Int) Bool)

(assert (=> bm!350610 (= call!350615 (exists!1379 (ite c!858271 lt!2078162 lt!2078155) (ite c!858271 lambda!248893 lambda!248894)))))

(declare-fun bm!350609 () Bool)

(declare-fun toList!8114 ((InoxSet Context!6576)) List!58161)

(assert (=> bm!350609 (= call!350614 (toList!8114 z!4710))))

(assert (= (and d!1616112 c!858271) b!5021151))

(assert (= (and d!1616112 (not c!858271)) b!5021152))

(assert (= (or b!5021151 b!5021152) bm!350609))

(assert (= (or b!5021151 b!5021152) bm!350610))

(declare-fun m!6056100 () Bool)

(assert (=> b!5021151 m!6056100))

(declare-fun m!6056102 () Bool)

(assert (=> b!5021152 m!6056102))

(declare-fun m!6056104 () Bool)

(assert (=> d!1616112 m!6056104))

(assert (=> d!1616112 m!6056104))

(declare-fun m!6056106 () Bool)

(assert (=> d!1616112 m!6056106))

(declare-fun m!6056108 () Bool)

(assert (=> d!1616112 m!6056108))

(assert (=> d!1616112 m!6056108))

(declare-fun m!6056110 () Bool)

(assert (=> bm!350609 m!6056110))

(declare-fun m!6056112 () Bool)

(assert (=> bm!350610 m!6056112))

(assert (=> b!5020822 d!1616112))

(declare-fun d!1616114 () Bool)

(declare-fun c!858274 () Bool)

(assert (=> d!1616114 (= c!858274 ((_ is Node!15382) (c!858130 totalInput!1125)))))

(declare-fun e!3136748 () Bool)

(assert (=> d!1616114 (= (inv!76406 (c!858130 totalInput!1125)) e!3136748)))

(declare-fun b!5021159 () Bool)

(declare-fun inv!76410 (Conc!15382) Bool)

(assert (=> b!5021159 (= e!3136748 (inv!76410 (c!858130 totalInput!1125)))))

(declare-fun b!5021160 () Bool)

(declare-fun e!3136749 () Bool)

(assert (=> b!5021160 (= e!3136748 e!3136749)))

(declare-fun res!2140911 () Bool)

(assert (=> b!5021160 (= res!2140911 (not ((_ is Leaf!25522) (c!858130 totalInput!1125))))))

(assert (=> b!5021160 (=> res!2140911 e!3136749)))

(declare-fun b!5021161 () Bool)

(declare-fun inv!76411 (Conc!15382) Bool)

(assert (=> b!5021161 (= e!3136749 (inv!76411 (c!858130 totalInput!1125)))))

(assert (= (and d!1616114 c!858274) b!5021159))

(assert (= (and d!1616114 (not c!858274)) b!5021160))

(assert (= (and b!5021160 (not res!2140911)) b!5021161))

(declare-fun m!6056114 () Bool)

(assert (=> b!5021159 m!6056114))

(declare-fun m!6056116 () Bool)

(assert (=> b!5021161 m!6056116))

(assert (=> b!5020826 d!1616114))

(declare-fun condSetEmpty!28702 () Bool)

(assert (=> setNonEmpty!28696 (= condSetEmpty!28702 (= setRest!28696 ((as const (Array Context!6576 Bool)) false)))))

(declare-fun setRes!28702 () Bool)

(assert (=> setNonEmpty!28696 (= tp!1407859 setRes!28702)))

(declare-fun setIsEmpty!28702 () Bool)

(assert (=> setIsEmpty!28702 setRes!28702))

(declare-fun setNonEmpty!28702 () Bool)

(declare-fun setElem!28702 () Context!6576)

(declare-fun tp!1407887 () Bool)

(declare-fun e!3136752 () Bool)

(assert (=> setNonEmpty!28702 (= setRes!28702 (and tp!1407887 (inv!76405 setElem!28702) e!3136752))))

(declare-fun setRest!28702 () (InoxSet Context!6576))

(assert (=> setNonEmpty!28702 (= setRest!28696 ((_ map or) (store ((as const (Array Context!6576 Bool)) false) setElem!28702 true) setRest!28702))))

(declare-fun b!5021166 () Bool)

(declare-fun tp!1407886 () Bool)

(assert (=> b!5021166 (= e!3136752 tp!1407886)))

(assert (= (and setNonEmpty!28696 condSetEmpty!28702) setIsEmpty!28702))

(assert (= (and setNonEmpty!28696 (not condSetEmpty!28702)) setNonEmpty!28702))

(assert (= setNonEmpty!28702 b!5021166))

(declare-fun m!6056118 () Bool)

(assert (=> setNonEmpty!28702 m!6056118))

(declare-fun b!5021171 () Bool)

(declare-fun e!3136755 () Bool)

(declare-fun tp!1407892 () Bool)

(declare-fun tp!1407893 () Bool)

(assert (=> b!5021171 (= e!3136755 (and tp!1407892 tp!1407893))))

(assert (=> b!5020821 (= tp!1407860 e!3136755)))

(assert (= (and b!5020821 ((_ is Cons!58034) (exprs!3788 setElem!28696))) b!5021171))

(declare-fun tp!1407900 () Bool)

(declare-fun b!5021180 () Bool)

(declare-fun tp!1407901 () Bool)

(declare-fun e!3136761 () Bool)

(assert (=> b!5021180 (= e!3136761 (and (inv!76406 (left!42435 (c!858130 totalInput!1125))) tp!1407900 (inv!76406 (right!42765 (c!858130 totalInput!1125))) tp!1407901))))

(declare-fun b!5021182 () Bool)

(declare-fun e!3136760 () Bool)

(declare-fun tp!1407902 () Bool)

(assert (=> b!5021182 (= e!3136760 tp!1407902)))

(declare-fun b!5021181 () Bool)

(declare-fun inv!76412 (IArray!30825) Bool)

(assert (=> b!5021181 (= e!3136761 (and (inv!76412 (xs!18708 (c!858130 totalInput!1125))) e!3136760))))

(assert (=> b!5020826 (= tp!1407858 (and (inv!76406 (c!858130 totalInput!1125)) e!3136761))))

(assert (= (and b!5020826 ((_ is Node!15382) (c!858130 totalInput!1125))) b!5021180))

(assert (= b!5021181 b!5021182))

(assert (= (and b!5020826 ((_ is Leaf!25522) (c!858130 totalInput!1125))) b!5021181))

(declare-fun m!6056120 () Bool)

(assert (=> b!5021180 m!6056120))

(declare-fun m!6056122 () Bool)

(assert (=> b!5021180 m!6056122))

(declare-fun m!6056124 () Bool)

(assert (=> b!5021181 m!6056124))

(assert (=> b!5020826 m!6055790))

(check-sat (not bm!350604) (not b!5021014) (not b!5021055) (not d!1616112) (not d!1616094) (not b!5021132) (not b!5021082) (not d!1616102) (not b!5021159) (not b!5021161) (not d!1616068) (not d!1616088) (not d!1616104) (not b!5020826) (not b!5020965) (not b!5021109) (not b!5020987) (not b!5021092) (not b!5021056) (not bm!350603) (not d!1616092) (not d!1616074) (not b!5021113) (not b!5021097) (not b!5021151) (not b!5021087) (not b!5021128) (not d!1616108) (not b!5021110) (not b!5021100) (not b!5020967) (not d!1616096) (not b!5021094) (not b!5020966) (not b!5021107) (not b!5021152) (not b!5021053) (not d!1616110) (not d!1616028) (not b!5020963) (not b!5021166) (not b!5021115) (not d!1616098) (not b!5021141) (not b!5021122) (not d!1616032) (not b!5021135) (not b!5021129) (not b!5021127) (not b!5021181) (not b!5021146) (not b!5021180) (not b!5021057) (not d!1616090) (not b!5021083) (not b!5021093) (not bm!350609) (not b!5021050) (not b!5021116) (not b!5021108) (not d!1616060) (not b!5021090) (not setNonEmpty!28702) (not b!5021099) (not bm!350610) (not b!5021182) (not d!1616086) (not b!5021145) (not b!5021134) (not b!5021171) (not b!5021140) (not d!1616084) (not d!1616106))
(check-sat)
(get-model)

(declare-fun d!1616116 () Bool)

(declare-fun lt!2078163 () Int)

(assert (=> d!1616116 (>= lt!2078163 0)))

(declare-fun e!3136762 () Int)

(assert (=> d!1616116 (= lt!2078163 e!3136762)))

(declare-fun c!858275 () Bool)

(assert (=> d!1616116 (= c!858275 ((_ is Nil!58035) lt!2078038))))

(assert (=> d!1616116 (= (size!38619 lt!2078038) lt!2078163)))

(declare-fun b!5021183 () Bool)

(assert (=> b!5021183 (= e!3136762 0)))

(declare-fun b!5021184 () Bool)

(assert (=> b!5021184 (= e!3136762 (+ 1 (size!38619 (t!370535 lt!2078038))))))

(assert (= (and d!1616116 c!858275) b!5021183))

(assert (= (and d!1616116 (not c!858275)) b!5021184))

(declare-fun m!6056126 () Bool)

(assert (=> b!5021184 m!6056126))

(assert (=> b!5021100 d!1616116))

(declare-fun bs!1187213 () Bool)

(declare-fun d!1616118 () Bool)

(assert (= bs!1187213 (and d!1616118 d!1616112)))

(declare-fun lambda!248897 () Int)

(assert (=> bs!1187213 (not (= lambda!248897 lambda!248892))))

(declare-fun bs!1187214 () Bool)

(assert (= bs!1187214 (and d!1616118 b!5021151)))

(assert (=> bs!1187214 (not (= lambda!248897 lambda!248893))))

(declare-fun bs!1187215 () Bool)

(assert (= bs!1187215 (and d!1616118 b!5021152)))

(assert (=> bs!1187215 (not (= lambda!248897 lambda!248894))))

(declare-fun exists!1380 ((InoxSet Context!6576) Int) Bool)

(assert (=> d!1616118 (= (nullableZipper!908 z!4710) (exists!1380 z!4710 lambda!248897))))

(declare-fun bs!1187216 () Bool)

(assert (= bs!1187216 d!1616118))

(declare-fun m!6056128 () Bool)

(assert (=> bs!1187216 m!6056128))

(assert (=> b!5021127 d!1616118))

(declare-fun bs!1187217 () Bool)

(declare-fun d!1616120 () Bool)

(assert (= bs!1187217 (and d!1616120 d!1616088)))

(declare-fun lambda!248898 () Int)

(assert (=> bs!1187217 (= (= (apply!14067 totalInput!1125 (+ 1 from!1212)) (apply!14067 totalInput!1125 from!1212)) (= lambda!248898 lambda!248879))))

(assert (=> d!1616120 true))

(assert (=> d!1616120 (= (derivationStepZipper!669 lt!2078035 (apply!14067 totalInput!1125 (+ 1 from!1212))) (flatMap!294 lt!2078035 lambda!248898))))

(declare-fun bs!1187218 () Bool)

(assert (= bs!1187218 d!1616120))

(declare-fun m!6056130 () Bool)

(assert (=> bs!1187218 m!6056130))

(assert (=> b!5020963 d!1616120))

(declare-fun d!1616122 () Bool)

(declare-fun lt!2078164 () C!27976)

(assert (=> d!1616122 (= lt!2078164 (apply!14066 (list!18720 totalInput!1125) (+ 1 from!1212)))))

(assert (=> d!1616122 (= lt!2078164 (apply!14069 (c!858130 totalInput!1125) (+ 1 from!1212)))))

(declare-fun e!3136763 () Bool)

(assert (=> d!1616122 e!3136763))

(declare-fun res!2140912 () Bool)

(assert (=> d!1616122 (=> (not res!2140912) (not e!3136763))))

(assert (=> d!1616122 (= res!2140912 (<= 0 (+ 1 from!1212)))))

(assert (=> d!1616122 (= (apply!14067 totalInput!1125 (+ 1 from!1212)) lt!2078164)))

(declare-fun b!5021185 () Bool)

(assert (=> b!5021185 (= e!3136763 (< (+ 1 from!1212) (size!38620 totalInput!1125)))))

(assert (= (and d!1616122 res!2140912) b!5021185))

(assert (=> d!1616122 m!6055784))

(assert (=> d!1616122 m!6055784))

(declare-fun m!6056132 () Bool)

(assert (=> d!1616122 m!6056132))

(declare-fun m!6056134 () Bool)

(assert (=> d!1616122 m!6056134))

(assert (=> b!5021185 m!6055792))

(assert (=> b!5020963 d!1616122))

(declare-fun b!5021186 () Bool)

(declare-fun e!3136766 () Int)

(assert (=> b!5021186 (= e!3136766 0)))

(declare-fun b!5021187 () Bool)

(declare-fun e!3136768 () Int)

(assert (=> b!5021187 (= e!3136766 e!3136768)))

(declare-fun lt!2078167 () (InoxSet Context!6576))

(assert (=> b!5021187 (= lt!2078167 (derivationStepZipper!669 lt!2078109 (apply!14067 totalInput!1125 (+ 1 from!1212 1))))))

(declare-fun lt!2078166 () Int)

(assert (=> b!5021187 (= lt!2078166 (findLongestMatchInnerZipperFastV2!185 lt!2078167 (+ 1 from!1212 1 1) totalInput!1125 lt!2078034))))

(declare-fun c!858280 () Bool)

(assert (=> b!5021187 (= c!858280 (> lt!2078166 0))))

(declare-fun b!5021188 () Bool)

(declare-fun e!3136764 () Int)

(assert (=> b!5021188 (= e!3136764 1)))

(declare-fun b!5021189 () Bool)

(declare-fun e!3136767 () Bool)

(assert (=> b!5021189 (= e!3136767 (<= (+ 1 from!1212 1) (size!38620 totalInput!1125)))))

(declare-fun b!5021190 () Bool)

(declare-fun c!858278 () Bool)

(assert (=> b!5021190 (= c!858278 (nullableZipper!908 lt!2078167))))

(assert (=> b!5021190 (= e!3136768 e!3136764)))

(declare-fun b!5021191 () Bool)

(declare-fun e!3136765 () Bool)

(assert (=> b!5021191 (= e!3136765 (lostCauseZipper!877 lt!2078109))))

(declare-fun d!1616124 () Bool)

(declare-fun lt!2078165 () Int)

(assert (=> d!1616124 (and (>= lt!2078165 0) (<= lt!2078165 (- lt!2078034 (+ 1 from!1212 1))))))

(assert (=> d!1616124 (= lt!2078165 e!3136766)))

(declare-fun c!858279 () Bool)

(assert (=> d!1616124 (= c!858279 e!3136765)))

(declare-fun res!2140914 () Bool)

(assert (=> d!1616124 (=> res!2140914 e!3136765)))

(assert (=> d!1616124 (= res!2140914 (= (+ 1 from!1212 1) lt!2078034))))

(assert (=> d!1616124 e!3136767))

(declare-fun res!2140913 () Bool)

(assert (=> d!1616124 (=> (not res!2140913) (not e!3136767))))

(assert (=> d!1616124 (= res!2140913 (>= (+ 1 from!1212 1) 0))))

(assert (=> d!1616124 (= (findLongestMatchInnerZipperFastV2!185 lt!2078109 (+ 1 from!1212 1) totalInput!1125 lt!2078034) lt!2078165)))

(declare-fun b!5021192 () Bool)

(assert (=> b!5021192 (= e!3136768 (+ 1 lt!2078166))))

(declare-fun b!5021193 () Bool)

(assert (=> b!5021193 (= e!3136764 0)))

(assert (= (and d!1616124 res!2140913) b!5021189))

(assert (= (and d!1616124 (not res!2140914)) b!5021191))

(assert (= (and d!1616124 c!858279) b!5021186))

(assert (= (and d!1616124 (not c!858279)) b!5021187))

(assert (= (and b!5021187 c!858280) b!5021192))

(assert (= (and b!5021187 (not c!858280)) b!5021190))

(assert (= (and b!5021190 c!858278) b!5021188))

(assert (= (and b!5021190 (not c!858278)) b!5021193))

(declare-fun m!6056136 () Bool)

(assert (=> b!5021187 m!6056136))

(assert (=> b!5021187 m!6056136))

(declare-fun m!6056138 () Bool)

(assert (=> b!5021187 m!6056138))

(declare-fun m!6056140 () Bool)

(assert (=> b!5021187 m!6056140))

(assert (=> b!5021189 m!6055792))

(declare-fun m!6056142 () Bool)

(assert (=> b!5021190 m!6056142))

(declare-fun m!6056144 () Bool)

(assert (=> b!5021191 m!6056144))

(assert (=> b!5020963 d!1616124))

(declare-fun d!1616126 () Bool)

(declare-fun c!858283 () Bool)

(assert (=> d!1616126 (= c!858283 ((_ is Nil!58035) lt!2078128))))

(declare-fun e!3136771 () (InoxSet C!27976))

(assert (=> d!1616126 (= (content!10285 lt!2078128) e!3136771)))

(declare-fun b!5021198 () Bool)

(assert (=> b!5021198 (= e!3136771 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021199 () Bool)

(assert (=> b!5021199 (= e!3136771 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078128) true) (content!10285 (t!370535 lt!2078128))))))

(assert (= (and d!1616126 c!858283) b!5021198))

(assert (= (and d!1616126 (not c!858283)) b!5021199))

(declare-fun m!6056146 () Bool)

(assert (=> b!5021199 m!6056146))

(declare-fun m!6056148 () Bool)

(assert (=> b!5021199 m!6056148))

(assert (=> d!1616092 d!1616126))

(declare-fun d!1616128 () Bool)

(declare-fun c!858284 () Bool)

(assert (=> d!1616128 (= c!858284 ((_ is Nil!58035) lt!2078033))))

(declare-fun e!3136772 () (InoxSet C!27976))

(assert (=> d!1616128 (= (content!10285 lt!2078033) e!3136772)))

(declare-fun b!5021200 () Bool)

(assert (=> b!5021200 (= e!3136772 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021201 () Bool)

(assert (=> b!5021201 (= e!3136772 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078033) true) (content!10285 (t!370535 lt!2078033))))))

(assert (= (and d!1616128 c!858284) b!5021200))

(assert (= (and d!1616128 (not c!858284)) b!5021201))

(declare-fun m!6056150 () Bool)

(assert (=> b!5021201 m!6056150))

(declare-fun m!6056152 () Bool)

(assert (=> b!5021201 m!6056152))

(assert (=> d!1616092 d!1616128))

(declare-fun d!1616130 () Bool)

(declare-fun res!2140919 () Bool)

(declare-fun e!3136777 () Bool)

(assert (=> d!1616130 (=> res!2140919 e!3136777)))

(assert (=> d!1616130 (= res!2140919 ((_ is Nil!58034) (exprs!3788 setElem!28696)))))

(assert (=> d!1616130 (= (forall!13403 (exprs!3788 setElem!28696) lambda!248861) e!3136777)))

(declare-fun b!5021206 () Bool)

(declare-fun e!3136778 () Bool)

(assert (=> b!5021206 (= e!3136777 e!3136778)))

(declare-fun res!2140920 () Bool)

(assert (=> b!5021206 (=> (not res!2140920) (not e!3136778))))

(declare-fun dynLambda!23524 (Int Regex!13863) Bool)

(assert (=> b!5021206 (= res!2140920 (dynLambda!23524 lambda!248861 (h!64482 (exprs!3788 setElem!28696))))))

(declare-fun b!5021207 () Bool)

(assert (=> b!5021207 (= e!3136778 (forall!13403 (t!370534 (exprs!3788 setElem!28696)) lambda!248861))))

(assert (= (and d!1616130 (not res!2140919)) b!5021206))

(assert (= (and b!5021206 res!2140920) b!5021207))

(declare-fun b_lambda!198673 () Bool)

(assert (=> (not b_lambda!198673) (not b!5021206)))

(declare-fun m!6056154 () Bool)

(assert (=> b!5021206 m!6056154))

(declare-fun m!6056156 () Bool)

(assert (=> b!5021207 m!6056156))

(assert (=> d!1616032 d!1616130))

(assert (=> b!5020965 d!1616060))

(declare-fun d!1616132 () Bool)

(declare-fun lt!2078168 () Int)

(assert (=> d!1616132 (>= lt!2078168 0)))

(declare-fun e!3136779 () Int)

(assert (=> d!1616132 (= lt!2078168 e!3136779)))

(declare-fun c!858285 () Bool)

(assert (=> d!1616132 (= c!858285 ((_ is Nil!58035) (t!370535 lt!2078037)))))

(assert (=> d!1616132 (= (size!38619 (t!370535 lt!2078037)) lt!2078168)))

(declare-fun b!5021208 () Bool)

(assert (=> b!5021208 (= e!3136779 0)))

(declare-fun b!5021209 () Bool)

(assert (=> b!5021209 (= e!3136779 (+ 1 (size!38619 (t!370535 (t!370535 lt!2078037)))))))

(assert (= (and d!1616132 c!858285) b!5021208))

(assert (= (and d!1616132 (not c!858285)) b!5021209))

(declare-fun m!6056158 () Bool)

(assert (=> b!5021209 m!6056158))

(assert (=> b!5021122 d!1616132))

(declare-fun d!1616134 () Bool)

(declare-fun c!858286 () Bool)

(assert (=> d!1616134 (= c!858286 ((_ is Nil!58035) lt!2078133))))

(declare-fun e!3136780 () (InoxSet C!27976))

(assert (=> d!1616134 (= (content!10285 lt!2078133) e!3136780)))

(declare-fun b!5021210 () Bool)

(assert (=> b!5021210 (= e!3136780 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021211 () Bool)

(assert (=> b!5021211 (= e!3136780 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078133) true) (content!10285 (t!370535 lt!2078133))))))

(assert (= (and d!1616134 c!858286) b!5021210))

(assert (= (and d!1616134 (not c!858286)) b!5021211))

(declare-fun m!6056160 () Bool)

(assert (=> b!5021211 m!6056160))

(declare-fun m!6056162 () Bool)

(assert (=> b!5021211 m!6056162))

(assert (=> d!1616098 d!1616134))

(assert (=> d!1616098 d!1616128))

(declare-fun bs!1187219 () Bool)

(declare-fun d!1616136 () Bool)

(assert (= bs!1187219 (and d!1616136 d!1616112)))

(declare-fun lambda!248901 () Int)

(assert (=> bs!1187219 (not (= lambda!248901 lambda!248892))))

(declare-fun bs!1187220 () Bool)

(assert (= bs!1187220 (and d!1616136 b!5021151)))

(assert (=> bs!1187220 (not (= lambda!248901 lambda!248893))))

(declare-fun bs!1187221 () Bool)

(assert (= bs!1187221 (and d!1616136 b!5021152)))

(assert (=> bs!1187221 (not (= lambda!248901 lambda!248894))))

(declare-fun bs!1187222 () Bool)

(assert (= bs!1187222 (and d!1616136 d!1616118)))

(assert (=> bs!1187222 (not (= lambda!248901 lambda!248897))))

(assert (=> d!1616136 true))

(declare-fun order!26699 () Int)

(declare-fun dynLambda!23525 (Int Int) Int)

(assert (=> d!1616136 (< (dynLambda!23525 order!26699 lambda!248892) (dynLambda!23525 order!26699 lambda!248901))))

(assert (=> d!1616136 (exists!1379 lt!2078162 lambda!248901)))

(declare-fun lt!2078171 () Unit!149239)

(declare-fun choose!37139 (List!58161 Int) Unit!149239)

(assert (=> d!1616136 (= lt!2078171 (choose!37139 lt!2078162 lambda!248892))))

(declare-fun forall!13406 (List!58161 Int) Bool)

(assert (=> d!1616136 (not (forall!13406 lt!2078162 lambda!248892))))

(assert (=> d!1616136 (= (lemmaNotForallThenExists!263 lt!2078162 lambda!248892) lt!2078171)))

(declare-fun bs!1187223 () Bool)

(assert (= bs!1187223 d!1616136))

(declare-fun m!6056164 () Bool)

(assert (=> bs!1187223 m!6056164))

(declare-fun m!6056166 () Bool)

(assert (=> bs!1187223 m!6056166))

(declare-fun m!6056168 () Bool)

(assert (=> bs!1187223 m!6056168))

(assert (=> b!5021151 d!1616136))

(declare-fun d!1616138 () Bool)

(declare-fun c!858287 () Bool)

(assert (=> d!1616138 (= c!858287 ((_ is Nil!58035) lt!2078127))))

(declare-fun e!3136783 () (InoxSet C!27976))

(assert (=> d!1616138 (= (content!10285 lt!2078127) e!3136783)))

(declare-fun b!5021214 () Bool)

(assert (=> b!5021214 (= e!3136783 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021215 () Bool)

(assert (=> b!5021215 (= e!3136783 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078127) true) (content!10285 (t!370535 lt!2078127))))))

(assert (= (and d!1616138 c!858287) b!5021214))

(assert (= (and d!1616138 (not c!858287)) b!5021215))

(declare-fun m!6056170 () Bool)

(assert (=> b!5021215 m!6056170))

(declare-fun m!6056172 () Bool)

(assert (=> b!5021215 m!6056172))

(assert (=> d!1616090 d!1616138))

(declare-fun d!1616140 () Bool)

(declare-fun c!858288 () Bool)

(assert (=> d!1616140 (= c!858288 ((_ is Nil!58035) lt!2078039))))

(declare-fun e!3136784 () (InoxSet C!27976))

(assert (=> d!1616140 (= (content!10285 lt!2078039) e!3136784)))

(declare-fun b!5021216 () Bool)

(assert (=> b!5021216 (= e!3136784 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021217 () Bool)

(assert (=> b!5021217 (= e!3136784 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078039) true) (content!10285 (t!370535 lt!2078039))))))

(assert (= (and d!1616140 c!858288) b!5021216))

(assert (= (and d!1616140 (not c!858288)) b!5021217))

(declare-fun m!6056174 () Bool)

(assert (=> b!5021217 m!6056174))

(declare-fun m!6056176 () Bool)

(assert (=> b!5021217 m!6056176))

(assert (=> d!1616090 d!1616140))

(declare-fun d!1616142 () Bool)

(declare-fun choose!37140 ((InoxSet Context!6576) Int) (InoxSet Context!6576))

(assert (=> d!1616142 (= (flatMap!294 z!4710 lambda!248879) (choose!37140 z!4710 lambda!248879))))

(declare-fun bs!1187224 () Bool)

(assert (= bs!1187224 d!1616142))

(declare-fun m!6056178 () Bool)

(assert (=> bs!1187224 m!6056178))

(assert (=> d!1616088 d!1616142))

(declare-fun bs!1187225 () Bool)

(declare-fun d!1616144 () Bool)

(assert (= bs!1187225 (and d!1616144 b!5021152)))

(declare-fun lambda!248902 () Int)

(assert (=> bs!1187225 (not (= lambda!248902 lambda!248894))))

(declare-fun bs!1187226 () Bool)

(assert (= bs!1187226 (and d!1616144 d!1616136)))

(assert (=> bs!1187226 (not (= lambda!248902 lambda!248901))))

(declare-fun bs!1187227 () Bool)

(assert (= bs!1187227 (and d!1616144 d!1616118)))

(assert (=> bs!1187227 (= lambda!248902 lambda!248897)))

(declare-fun bs!1187228 () Bool)

(assert (= bs!1187228 (and d!1616144 d!1616112)))

(assert (=> bs!1187228 (not (= lambda!248902 lambda!248892))))

(declare-fun bs!1187229 () Bool)

(assert (= bs!1187229 (and d!1616144 b!5021151)))

(assert (=> bs!1187229 (not (= lambda!248902 lambda!248893))))

(assert (=> d!1616144 (= (nullableZipper!908 lt!2078035) (exists!1380 lt!2078035 lambda!248902))))

(declare-fun bs!1187230 () Bool)

(assert (= bs!1187230 d!1616144))

(declare-fun m!6056180 () Bool)

(assert (=> bs!1187230 m!6056180))

(assert (=> b!5021145 d!1616144))

(declare-fun d!1616146 () Bool)

(declare-fun lt!2078172 () Int)

(assert (=> d!1616146 (>= lt!2078172 0)))

(declare-fun e!3136785 () Int)

(assert (=> d!1616146 (= lt!2078172 e!3136785)))

(declare-fun c!858289 () Bool)

(assert (=> d!1616146 (= c!858289 ((_ is Nil!58035) lt!2078133))))

(assert (=> d!1616146 (= (size!38619 lt!2078133) lt!2078172)))

(declare-fun b!5021218 () Bool)

(assert (=> b!5021218 (= e!3136785 0)))

(declare-fun b!5021219 () Bool)

(assert (=> b!5021219 (= e!3136785 (+ 1 (size!38619 (t!370535 lt!2078133))))))

(assert (= (and d!1616146 c!858289) b!5021218))

(assert (= (and d!1616146 (not c!858289)) b!5021219))

(declare-fun m!6056182 () Bool)

(assert (=> b!5021219 m!6056182))

(assert (=> b!5021113 d!1616146))

(declare-fun d!1616148 () Bool)

(assert (=> d!1616148 (= (inv!76412 (xs!18708 (c!858130 totalInput!1125))) (<= (size!38619 (innerList!15470 (xs!18708 (c!858130 totalInput!1125)))) 2147483647))))

(declare-fun bs!1187231 () Bool)

(assert (= bs!1187231 d!1616148))

(declare-fun m!6056184 () Bool)

(assert (=> bs!1187231 m!6056184))

(assert (=> b!5021181 d!1616148))

(declare-fun d!1616150 () Bool)

(declare-fun lt!2078173 () Int)

(assert (=> d!1616150 (>= lt!2078173 0)))

(declare-fun e!3136786 () Int)

(assert (=> d!1616150 (= lt!2078173 e!3136786)))

(declare-fun c!858290 () Bool)

(assert (=> d!1616150 (= c!858290 ((_ is Nil!58035) lt!2078039))))

(assert (=> d!1616150 (= (size!38619 lt!2078039) lt!2078173)))

(declare-fun b!5021220 () Bool)

(assert (=> b!5021220 (= e!3136786 0)))

(declare-fun b!5021221 () Bool)

(assert (=> b!5021221 (= e!3136786 (+ 1 (size!38619 (t!370535 lt!2078039))))))

(assert (= (and d!1616150 c!858290) b!5021220))

(assert (= (and d!1616150 (not c!858290)) b!5021221))

(declare-fun m!6056186 () Bool)

(assert (=> b!5021221 m!6056186))

(assert (=> bm!350604 d!1616150))

(declare-fun d!1616152 () Bool)

(declare-fun lt!2078174 () C!27976)

(assert (=> d!1616152 (contains!19566 (list!18720 totalInput!1125) lt!2078174)))

(declare-fun e!3136787 () C!27976)

(assert (=> d!1616152 (= lt!2078174 e!3136787)))

(declare-fun c!858291 () Bool)

(assert (=> d!1616152 (= c!858291 (= from!1212 0))))

(declare-fun e!3136788 () Bool)

(assert (=> d!1616152 e!3136788))

(declare-fun res!2140921 () Bool)

(assert (=> d!1616152 (=> (not res!2140921) (not e!3136788))))

(assert (=> d!1616152 (= res!2140921 (<= 0 from!1212))))

(assert (=> d!1616152 (= (apply!14066 (list!18720 totalInput!1125) from!1212) lt!2078174)))

(declare-fun b!5021222 () Bool)

(assert (=> b!5021222 (= e!3136788 (< from!1212 (size!38619 (list!18720 totalInput!1125))))))

(declare-fun b!5021223 () Bool)

(assert (=> b!5021223 (= e!3136787 (head!10762 (list!18720 totalInput!1125)))))

(declare-fun b!5021224 () Bool)

(assert (=> b!5021224 (= e!3136787 (apply!14066 (tail!9895 (list!18720 totalInput!1125)) (- from!1212 1)))))

(assert (= (and d!1616152 res!2140921) b!5021222))

(assert (= (and d!1616152 c!858291) b!5021223))

(assert (= (and d!1616152 (not c!858291)) b!5021224))

(assert (=> d!1616152 m!6055784))

(declare-fun m!6056188 () Bool)

(assert (=> d!1616152 m!6056188))

(assert (=> b!5021222 m!6055784))

(assert (=> b!5021222 m!6055906))

(assert (=> b!5021223 m!6055784))

(declare-fun m!6056190 () Bool)

(assert (=> b!5021223 m!6056190))

(assert (=> b!5021224 m!6055784))

(declare-fun m!6056192 () Bool)

(assert (=> b!5021224 m!6056192))

(assert (=> b!5021224 m!6056192))

(declare-fun m!6056194 () Bool)

(assert (=> b!5021224 m!6056194))

(assert (=> d!1616074 d!1616152))

(assert (=> d!1616074 d!1616108))

(declare-fun d!1616154 () Bool)

(declare-fun lt!2078179 () C!27976)

(assert (=> d!1616154 (= lt!2078179 (apply!14066 (list!18722 (c!858130 totalInput!1125)) from!1212))))

(declare-fun e!3136799 () C!27976)

(assert (=> d!1616154 (= lt!2078179 e!3136799)))

(declare-fun c!858300 () Bool)

(assert (=> d!1616154 (= c!858300 ((_ is Leaf!25522) (c!858130 totalInput!1125)))))

(declare-fun e!3136800 () Bool)

(assert (=> d!1616154 e!3136800))

(declare-fun res!2140924 () Bool)

(assert (=> d!1616154 (=> (not res!2140924) (not e!3136800))))

(assert (=> d!1616154 (= res!2140924 (<= 0 from!1212))))

(assert (=> d!1616154 (= (apply!14069 (c!858130 totalInput!1125) from!1212) lt!2078179)))

(declare-fun b!5021239 () Bool)

(declare-fun apply!14070 (IArray!30825 Int) C!27976)

(assert (=> b!5021239 (= e!3136799 (apply!14070 (xs!18708 (c!858130 totalInput!1125)) from!1212))))

(declare-fun b!5021240 () Bool)

(declare-fun e!3136797 () C!27976)

(declare-fun call!350618 () C!27976)

(assert (=> b!5021240 (= e!3136797 call!350618)))

(declare-fun b!5021241 () Bool)

(assert (=> b!5021241 (= e!3136800 (< from!1212 (size!38621 (c!858130 totalInput!1125))))))

(declare-fun bm!350613 () Bool)

(declare-fun c!858298 () Bool)

(declare-fun c!858299 () Bool)

(assert (=> bm!350613 (= c!858298 c!858299)))

(declare-fun e!3136798 () Int)

(assert (=> bm!350613 (= call!350618 (apply!14069 (ite c!858299 (left!42435 (c!858130 totalInput!1125)) (right!42765 (c!858130 totalInput!1125))) e!3136798))))

(declare-fun b!5021242 () Bool)

(assert (=> b!5021242 (= e!3136799 e!3136797)))

(declare-fun lt!2078180 () Bool)

(declare-fun appendIndex!396 (List!58159 List!58159 Int) Bool)

(assert (=> b!5021242 (= lt!2078180 (appendIndex!396 (list!18722 (left!42435 (c!858130 totalInput!1125))) (list!18722 (right!42765 (c!858130 totalInput!1125))) from!1212))))

(assert (=> b!5021242 (= c!858299 (< from!1212 (size!38621 (left!42435 (c!858130 totalInput!1125)))))))

(declare-fun b!5021243 () Bool)

(assert (=> b!5021243 (= e!3136798 (- from!1212 (size!38621 (left!42435 (c!858130 totalInput!1125)))))))

(declare-fun b!5021244 () Bool)

(assert (=> b!5021244 (= e!3136798 from!1212)))

(declare-fun b!5021245 () Bool)

(assert (=> b!5021245 (= e!3136797 call!350618)))

(assert (= (and d!1616154 res!2140924) b!5021241))

(assert (= (and d!1616154 c!858300) b!5021239))

(assert (= (and d!1616154 (not c!858300)) b!5021242))

(assert (= (and b!5021242 c!858299) b!5021240))

(assert (= (and b!5021242 (not c!858299)) b!5021245))

(assert (= (or b!5021240 b!5021245) bm!350613))

(assert (= (and bm!350613 c!858298) b!5021244))

(assert (= (and bm!350613 (not c!858298)) b!5021243))

(assert (=> b!5021241 m!6055908))

(declare-fun m!6056196 () Bool)

(assert (=> b!5021239 m!6056196))

(declare-fun m!6056198 () Bool)

(assert (=> b!5021243 m!6056198))

(declare-fun m!6056200 () Bool)

(assert (=> bm!350613 m!6056200))

(declare-fun m!6056202 () Bool)

(assert (=> b!5021242 m!6056202))

(declare-fun m!6056204 () Bool)

(assert (=> b!5021242 m!6056204))

(assert (=> b!5021242 m!6056202))

(assert (=> b!5021242 m!6056204))

(declare-fun m!6056206 () Bool)

(assert (=> b!5021242 m!6056206))

(assert (=> b!5021242 m!6056198))

(assert (=> d!1616154 m!6056086))

(assert (=> d!1616154 m!6056086))

(declare-fun m!6056208 () Bool)

(assert (=> d!1616154 m!6056208))

(assert (=> d!1616074 d!1616154))

(declare-fun b!5021246 () Bool)

(declare-fun e!3136801 () Int)

(declare-fun call!350619 () Int)

(assert (=> b!5021246 (= e!3136801 (- call!350619 (- from!1212 1)))))

(declare-fun b!5021247 () Bool)

(declare-fun e!3136802 () Int)

(assert (=> b!5021247 (= e!3136802 e!3136801)))

(declare-fun c!858303 () Bool)

(assert (=> b!5021247 (= c!858303 (>= (- from!1212 1) call!350619))))

(declare-fun b!5021248 () Bool)

(declare-fun e!3136805 () List!58159)

(declare-fun e!3136803 () List!58159)

(assert (=> b!5021248 (= e!3136805 e!3136803)))

(declare-fun c!858304 () Bool)

(assert (=> b!5021248 (= c!858304 (<= (- from!1212 1) 0))))

(declare-fun b!5021249 () Bool)

(assert (=> b!5021249 (= e!3136805 Nil!58035)))

(declare-fun b!5021250 () Bool)

(declare-fun e!3136804 () Bool)

(declare-fun lt!2078181 () List!58159)

(assert (=> b!5021250 (= e!3136804 (= (size!38619 lt!2078181) e!3136802))))

(declare-fun c!858302 () Bool)

(assert (=> b!5021250 (= c!858302 (<= (- from!1212 1) 0))))

(declare-fun b!5021251 () Bool)

(assert (=> b!5021251 (= e!3136803 (drop!2526 (t!370535 (t!370535 lt!2078039)) (- (- from!1212 1) 1)))))

(declare-fun b!5021252 () Bool)

(assert (=> b!5021252 (= e!3136803 (t!370535 lt!2078039))))

(declare-fun bm!350614 () Bool)

(assert (=> bm!350614 (= call!350619 (size!38619 (t!370535 lt!2078039)))))

(declare-fun b!5021253 () Bool)

(assert (=> b!5021253 (= e!3136802 call!350619)))

(declare-fun d!1616156 () Bool)

(assert (=> d!1616156 e!3136804))

(declare-fun res!2140925 () Bool)

(assert (=> d!1616156 (=> (not res!2140925) (not e!3136804))))

(assert (=> d!1616156 (= res!2140925 (= ((_ map implies) (content!10285 lt!2078181) (content!10285 (t!370535 lt!2078039))) ((as const (InoxSet C!27976)) true)))))

(assert (=> d!1616156 (= lt!2078181 e!3136805)))

(declare-fun c!858301 () Bool)

(assert (=> d!1616156 (= c!858301 ((_ is Nil!58035) (t!370535 lt!2078039)))))

(assert (=> d!1616156 (= (drop!2526 (t!370535 lt!2078039) (- from!1212 1)) lt!2078181)))

(declare-fun b!5021254 () Bool)

(assert (=> b!5021254 (= e!3136801 0)))

(assert (= (and d!1616156 c!858301) b!5021249))

(assert (= (and d!1616156 (not c!858301)) b!5021248))

(assert (= (and b!5021248 c!858304) b!5021252))

(assert (= (and b!5021248 (not c!858304)) b!5021251))

(assert (= (and d!1616156 res!2140925) b!5021250))

(assert (= (and b!5021250 c!858302) b!5021253))

(assert (= (and b!5021250 (not c!858302)) b!5021247))

(assert (= (and b!5021247 c!858303) b!5021254))

(assert (= (and b!5021247 (not c!858303)) b!5021246))

(assert (= (or b!5021253 b!5021247 b!5021246) bm!350614))

(declare-fun m!6056210 () Bool)

(assert (=> b!5021250 m!6056210))

(declare-fun m!6056212 () Bool)

(assert (=> b!5021251 m!6056212))

(assert (=> bm!350614 m!6056186))

(declare-fun m!6056214 () Bool)

(assert (=> d!1616156 m!6056214))

(assert (=> d!1616156 m!6056176))

(assert (=> b!5021141 d!1616156))

(declare-fun d!1616158 () Bool)

(declare-fun lt!2078182 () C!27976)

(assert (=> d!1616158 (contains!19566 (tail!9895 lt!2078039) lt!2078182)))

(declare-fun e!3136806 () C!27976)

(assert (=> d!1616158 (= lt!2078182 e!3136806)))

(declare-fun c!858305 () Bool)

(assert (=> d!1616158 (= c!858305 (= (- from!1212 1) 0))))

(declare-fun e!3136807 () Bool)

(assert (=> d!1616158 e!3136807))

(declare-fun res!2140926 () Bool)

(assert (=> d!1616158 (=> (not res!2140926) (not e!3136807))))

(assert (=> d!1616158 (= res!2140926 (<= 0 (- from!1212 1)))))

(assert (=> d!1616158 (= (apply!14066 (tail!9895 lt!2078039) (- from!1212 1)) lt!2078182)))

(declare-fun b!5021255 () Bool)

(assert (=> b!5021255 (= e!3136807 (< (- from!1212 1) (size!38619 (tail!9895 lt!2078039))))))

(declare-fun b!5021256 () Bool)

(assert (=> b!5021256 (= e!3136806 (head!10762 (tail!9895 lt!2078039)))))

(declare-fun b!5021257 () Bool)

(assert (=> b!5021257 (= e!3136806 (apply!14066 (tail!9895 (tail!9895 lt!2078039)) (- (- from!1212 1) 1)))))

(assert (= (and d!1616158 res!2140926) b!5021255))

(assert (= (and d!1616158 c!858305) b!5021256))

(assert (= (and d!1616158 (not c!858305)) b!5021257))

(assert (=> d!1616158 m!6056050))

(declare-fun m!6056216 () Bool)

(assert (=> d!1616158 m!6056216))

(assert (=> b!5021255 m!6056050))

(declare-fun m!6056218 () Bool)

(assert (=> b!5021255 m!6056218))

(assert (=> b!5021256 m!6056050))

(declare-fun m!6056220 () Bool)

(assert (=> b!5021256 m!6056220))

(assert (=> b!5021257 m!6056050))

(declare-fun m!6056222 () Bool)

(assert (=> b!5021257 m!6056222))

(assert (=> b!5021257 m!6056222))

(declare-fun m!6056224 () Bool)

(assert (=> b!5021257 m!6056224))

(assert (=> b!5021109 d!1616158))

(declare-fun d!1616160 () Bool)

(assert (=> d!1616160 (= (tail!9895 lt!2078039) (t!370535 lt!2078039))))

(assert (=> b!5021109 d!1616160))

(declare-fun d!1616162 () Bool)

(declare-fun c!858306 () Bool)

(assert (=> d!1616162 (= c!858306 ((_ is Nil!58035) lt!2078137))))

(declare-fun e!3136808 () (InoxSet C!27976))

(assert (=> d!1616162 (= (content!10285 lt!2078137) e!3136808)))

(declare-fun b!5021258 () Bool)

(assert (=> b!5021258 (= e!3136808 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021259 () Bool)

(assert (=> b!5021259 (= e!3136808 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078137) true) (content!10285 (t!370535 lt!2078137))))))

(assert (= (and d!1616162 c!858306) b!5021258))

(assert (= (and d!1616162 (not c!858306)) b!5021259))

(declare-fun m!6056226 () Bool)

(assert (=> b!5021259 m!6056226))

(declare-fun m!6056228 () Bool)

(assert (=> b!5021259 m!6056228))

(assert (=> d!1616104 d!1616162))

(assert (=> d!1616104 d!1616128))

(assert (=> b!5021094 d!1616116))

(declare-fun b!5021260 () Bool)

(declare-fun e!3136810 () Int)

(assert (=> b!5021260 (= e!3136810 (size!38619 (t!370535 lt!2078033)))))

(declare-fun b!5021261 () Bool)

(assert (=> b!5021261 (= e!3136810 (- (+ 1 lt!2078042) 1))))

(declare-fun b!5021262 () Bool)

(declare-fun e!3136809 () Int)

(assert (=> b!5021262 (= e!3136809 0)))

(declare-fun b!5021263 () Bool)

(declare-fun e!3136811 () Bool)

(declare-fun lt!2078183 () List!58159)

(assert (=> b!5021263 (= e!3136811 (= (size!38619 lt!2078183) e!3136809))))

(declare-fun c!858307 () Bool)

(assert (=> b!5021263 (= c!858307 (<= (- (+ 1 lt!2078042) 1) 0))))

(declare-fun d!1616164 () Bool)

(assert (=> d!1616164 e!3136811))

(declare-fun res!2140927 () Bool)

(assert (=> d!1616164 (=> (not res!2140927) (not e!3136811))))

(assert (=> d!1616164 (= res!2140927 (= ((_ map implies) (content!10285 lt!2078183) (content!10285 (t!370535 lt!2078033))) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136812 () List!58159)

(assert (=> d!1616164 (= lt!2078183 e!3136812)))

(declare-fun c!858308 () Bool)

(assert (=> d!1616164 (= c!858308 (or ((_ is Nil!58035) (t!370535 lt!2078033)) (<= (- (+ 1 lt!2078042) 1) 0)))))

(assert (=> d!1616164 (= (take!722 (t!370535 lt!2078033) (- (+ 1 lt!2078042) 1)) lt!2078183)))

(declare-fun b!5021264 () Bool)

(assert (=> b!5021264 (= e!3136812 Nil!58035)))

(declare-fun b!5021265 () Bool)

(assert (=> b!5021265 (= e!3136812 (Cons!58035 (h!64483 (t!370535 lt!2078033)) (take!722 (t!370535 (t!370535 lt!2078033)) (- (- (+ 1 lt!2078042) 1) 1))))))

(declare-fun b!5021266 () Bool)

(assert (=> b!5021266 (= e!3136809 e!3136810)))

(declare-fun c!858309 () Bool)

(assert (=> b!5021266 (= c!858309 (>= (- (+ 1 lt!2078042) 1) (size!38619 (t!370535 lt!2078033))))))

(assert (= (and d!1616164 c!858308) b!5021264))

(assert (= (and d!1616164 (not c!858308)) b!5021265))

(assert (= (and d!1616164 res!2140927) b!5021263))

(assert (= (and b!5021263 c!858307) b!5021262))

(assert (= (and b!5021263 (not c!858307)) b!5021266))

(assert (= (and b!5021266 c!858309) b!5021260))

(assert (= (and b!5021266 (not c!858309)) b!5021261))

(declare-fun m!6056230 () Bool)

(assert (=> b!5021260 m!6056230))

(declare-fun m!6056232 () Bool)

(assert (=> d!1616164 m!6056232))

(assert (=> d!1616164 m!6056152))

(assert (=> b!5021266 m!6056230))

(declare-fun m!6056234 () Bool)

(assert (=> b!5021265 m!6056234))

(declare-fun m!6056236 () Bool)

(assert (=> b!5021263 m!6056236))

(assert (=> b!5021115 d!1616164))

(declare-fun b!5021267 () Bool)

(declare-fun e!3136814 () Int)

(assert (=> b!5021267 (= e!3136814 (size!38619 (t!370535 lt!2078038)))))

(declare-fun b!5021268 () Bool)

(assert (=> b!5021268 (= e!3136814 (- (- knownSize!24 1) 1))))

(declare-fun b!5021269 () Bool)

(declare-fun e!3136813 () Int)

(assert (=> b!5021269 (= e!3136813 0)))

(declare-fun b!5021270 () Bool)

(declare-fun e!3136815 () Bool)

(declare-fun lt!2078184 () List!58159)

(assert (=> b!5021270 (= e!3136815 (= (size!38619 lt!2078184) e!3136813))))

(declare-fun c!858310 () Bool)

(assert (=> b!5021270 (= c!858310 (<= (- (- knownSize!24 1) 1) 0))))

(declare-fun d!1616166 () Bool)

(assert (=> d!1616166 e!3136815))

(declare-fun res!2140928 () Bool)

(assert (=> d!1616166 (=> (not res!2140928) (not e!3136815))))

(assert (=> d!1616166 (= res!2140928 (= ((_ map implies) (content!10285 lt!2078184) (content!10285 (t!370535 lt!2078038))) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136816 () List!58159)

(assert (=> d!1616166 (= lt!2078184 e!3136816)))

(declare-fun c!858311 () Bool)

(assert (=> d!1616166 (= c!858311 (or ((_ is Nil!58035) (t!370535 lt!2078038)) (<= (- (- knownSize!24 1) 1) 0)))))

(assert (=> d!1616166 (= (take!722 (t!370535 lt!2078038) (- (- knownSize!24 1) 1)) lt!2078184)))

(declare-fun b!5021271 () Bool)

(assert (=> b!5021271 (= e!3136816 Nil!58035)))

(declare-fun b!5021272 () Bool)

(assert (=> b!5021272 (= e!3136816 (Cons!58035 (h!64483 (t!370535 lt!2078038)) (take!722 (t!370535 (t!370535 lt!2078038)) (- (- (- knownSize!24 1) 1) 1))))))

(declare-fun b!5021273 () Bool)

(assert (=> b!5021273 (= e!3136813 e!3136814)))

(declare-fun c!858312 () Bool)

(assert (=> b!5021273 (= c!858312 (>= (- (- knownSize!24 1) 1) (size!38619 (t!370535 lt!2078038))))))

(assert (= (and d!1616166 c!858311) b!5021271))

(assert (= (and d!1616166 (not c!858311)) b!5021272))

(assert (= (and d!1616166 res!2140928) b!5021270))

(assert (= (and b!5021270 c!858310) b!5021269))

(assert (= (and b!5021270 (not c!858310)) b!5021273))

(assert (= (and b!5021273 c!858312) b!5021267))

(assert (= (and b!5021273 (not c!858312)) b!5021268))

(assert (=> b!5021267 m!6056126))

(declare-fun m!6056238 () Bool)

(assert (=> d!1616166 m!6056238))

(declare-fun m!6056240 () Bool)

(assert (=> d!1616166 m!6056240))

(assert (=> b!5021273 m!6056126))

(declare-fun m!6056242 () Bool)

(assert (=> b!5021272 m!6056242))

(declare-fun m!6056244 () Bool)

(assert (=> b!5021270 m!6056244))

(assert (=> b!5021055 d!1616166))

(declare-fun d!1616168 () Bool)

(declare-fun res!2140933 () Bool)

(declare-fun e!3136819 () Bool)

(assert (=> d!1616168 (=> (not res!2140933) (not e!3136819))))

(declare-fun list!18723 (IArray!30825) List!58159)

(assert (=> d!1616168 (= res!2140933 (<= (size!38619 (list!18723 (xs!18708 (c!858130 totalInput!1125)))) 512))))

(assert (=> d!1616168 (= (inv!76411 (c!858130 totalInput!1125)) e!3136819)))

(declare-fun b!5021278 () Bool)

(declare-fun res!2140934 () Bool)

(assert (=> b!5021278 (=> (not res!2140934) (not e!3136819))))

(assert (=> b!5021278 (= res!2140934 (= (csize!30995 (c!858130 totalInput!1125)) (size!38619 (list!18723 (xs!18708 (c!858130 totalInput!1125))))))))

(declare-fun b!5021279 () Bool)

(assert (=> b!5021279 (= e!3136819 (and (> (csize!30995 (c!858130 totalInput!1125)) 0) (<= (csize!30995 (c!858130 totalInput!1125)) 512)))))

(assert (= (and d!1616168 res!2140933) b!5021278))

(assert (= (and b!5021278 res!2140934) b!5021279))

(declare-fun m!6056246 () Bool)

(assert (=> d!1616168 m!6056246))

(assert (=> d!1616168 m!6056246))

(declare-fun m!6056248 () Bool)

(assert (=> d!1616168 m!6056248))

(assert (=> b!5021278 m!6056246))

(assert (=> b!5021278 m!6056246))

(assert (=> b!5021278 m!6056248))

(assert (=> b!5021161 d!1616168))

(declare-fun d!1616170 () Bool)

(declare-fun lt!2078185 () Int)

(assert (=> d!1616170 (>= lt!2078185 0)))

(declare-fun e!3136820 () Int)

(assert (=> d!1616170 (= lt!2078185 e!3136820)))

(declare-fun c!858313 () Bool)

(assert (=> d!1616170 (= c!858313 ((_ is Nil!58035) lt!2078123))))

(assert (=> d!1616170 (= (size!38619 lt!2078123) lt!2078185)))

(declare-fun b!5021280 () Bool)

(assert (=> b!5021280 (= e!3136820 0)))

(declare-fun b!5021281 () Bool)

(assert (=> b!5021281 (= e!3136820 (+ 1 (size!38619 (t!370535 lt!2078123))))))

(assert (= (and d!1616170 c!858313) b!5021280))

(assert (= (and d!1616170 (not c!858313)) b!5021281))

(declare-fun m!6056250 () Bool)

(assert (=> b!5021281 m!6056250))

(assert (=> b!5021053 d!1616170))

(declare-fun d!1616172 () Bool)

(declare-fun res!2140941 () Bool)

(declare-fun e!3136823 () Bool)

(assert (=> d!1616172 (=> (not res!2140941) (not e!3136823))))

(assert (=> d!1616172 (= res!2140941 (= (csize!30994 (c!858130 totalInput!1125)) (+ (size!38621 (left!42435 (c!858130 totalInput!1125))) (size!38621 (right!42765 (c!858130 totalInput!1125))))))))

(assert (=> d!1616172 (= (inv!76410 (c!858130 totalInput!1125)) e!3136823)))

(declare-fun b!5021288 () Bool)

(declare-fun res!2140942 () Bool)

(assert (=> b!5021288 (=> (not res!2140942) (not e!3136823))))

(assert (=> b!5021288 (= res!2140942 (and (not (= (left!42435 (c!858130 totalInput!1125)) Empty!15382)) (not (= (right!42765 (c!858130 totalInput!1125)) Empty!15382))))))

(declare-fun b!5021289 () Bool)

(declare-fun res!2140943 () Bool)

(assert (=> b!5021289 (=> (not res!2140943) (not e!3136823))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2039 (Conc!15382) Int)

(assert (=> b!5021289 (= res!2140943 (= (cheight!15593 (c!858130 totalInput!1125)) (+ (max!0 (height!2039 (left!42435 (c!858130 totalInput!1125))) (height!2039 (right!42765 (c!858130 totalInput!1125)))) 1)))))

(declare-fun b!5021290 () Bool)

(assert (=> b!5021290 (= e!3136823 (<= 0 (cheight!15593 (c!858130 totalInput!1125))))))

(assert (= (and d!1616172 res!2140941) b!5021288))

(assert (= (and b!5021288 res!2140942) b!5021289))

(assert (= (and b!5021289 res!2140943) b!5021290))

(assert (=> d!1616172 m!6056198))

(declare-fun m!6056252 () Bool)

(assert (=> d!1616172 m!6056252))

(declare-fun m!6056254 () Bool)

(assert (=> b!5021289 m!6056254))

(declare-fun m!6056256 () Bool)

(assert (=> b!5021289 m!6056256))

(assert (=> b!5021289 m!6056254))

(assert (=> b!5021289 m!6056256))

(declare-fun m!6056258 () Bool)

(assert (=> b!5021289 m!6056258))

(assert (=> b!5021159 d!1616172))

(declare-fun d!1616174 () Bool)

(declare-fun lt!2078186 () Int)

(assert (=> d!1616174 (>= lt!2078186 0)))

(declare-fun e!3136824 () Int)

(assert (=> d!1616174 (= lt!2078186 e!3136824)))

(declare-fun c!858314 () Bool)

(assert (=> d!1616174 (= c!858314 ((_ is Nil!58035) lt!2078033))))

(assert (=> d!1616174 (= (size!38619 lt!2078033) lt!2078186)))

(declare-fun b!5021291 () Bool)

(assert (=> b!5021291 (= e!3136824 0)))

(declare-fun b!5021292 () Bool)

(assert (=> b!5021292 (= e!3136824 (+ 1 (size!38619 (t!370535 lt!2078033))))))

(assert (= (and d!1616174 c!858314) b!5021291))

(assert (= (and d!1616174 (not c!858314)) b!5021292))

(assert (=> b!5021292 m!6056230))

(assert (=> b!5021135 d!1616174))

(declare-fun d!1616176 () Bool)

(assert (=> d!1616176 (= (isEmpty!31427 lt!2078040) ((_ is Nil!58035) lt!2078040))))

(assert (=> d!1616110 d!1616176))

(assert (=> b!5021110 d!1616174))

(declare-fun d!1616178 () Bool)

(declare-fun lt!2078187 () Int)

(assert (=> d!1616178 (>= lt!2078187 0)))

(declare-fun e!3136825 () Int)

(assert (=> d!1616178 (= lt!2078187 e!3136825)))

(declare-fun c!858315 () Bool)

(assert (=> d!1616178 (= c!858315 ((_ is Nil!58035) lt!2078138))))

(assert (=> d!1616178 (= (size!38619 lt!2078138) lt!2078187)))

(declare-fun b!5021293 () Bool)

(assert (=> b!5021293 (= e!3136825 0)))

(declare-fun b!5021294 () Bool)

(assert (=> b!5021294 (= e!3136825 (+ 1 (size!38619 (t!370535 lt!2078138))))))

(assert (= (and d!1616178 c!858315) b!5021293))

(assert (= (and d!1616178 (not c!858315)) b!5021294))

(declare-fun m!6056260 () Bool)

(assert (=> b!5021294 m!6056260))

(assert (=> b!5021140 d!1616178))

(declare-fun d!1616180 () Bool)

(assert (=> d!1616180 (= (head!10762 lt!2078039) (h!64483 lt!2078039))))

(assert (=> b!5021108 d!1616180))

(declare-fun d!1616182 () Bool)

(declare-fun c!858316 () Bool)

(assert (=> d!1616182 (= c!858316 ((_ is Node!15382) (left!42435 (c!858130 totalInput!1125))))))

(declare-fun e!3136826 () Bool)

(assert (=> d!1616182 (= (inv!76406 (left!42435 (c!858130 totalInput!1125))) e!3136826)))

(declare-fun b!5021295 () Bool)

(assert (=> b!5021295 (= e!3136826 (inv!76410 (left!42435 (c!858130 totalInput!1125))))))

(declare-fun b!5021296 () Bool)

(declare-fun e!3136827 () Bool)

(assert (=> b!5021296 (= e!3136826 e!3136827)))

(declare-fun res!2140944 () Bool)

(assert (=> b!5021296 (= res!2140944 (not ((_ is Leaf!25522) (left!42435 (c!858130 totalInput!1125)))))))

(assert (=> b!5021296 (=> res!2140944 e!3136827)))

(declare-fun b!5021297 () Bool)

(assert (=> b!5021297 (= e!3136827 (inv!76411 (left!42435 (c!858130 totalInput!1125))))))

(assert (= (and d!1616182 c!858316) b!5021295))

(assert (= (and d!1616182 (not c!858316)) b!5021296))

(assert (= (and b!5021296 (not res!2140944)) b!5021297))

(declare-fun m!6056262 () Bool)

(assert (=> b!5021295 m!6056262))

(declare-fun m!6056264 () Bool)

(assert (=> b!5021297 m!6056264))

(assert (=> b!5021180 d!1616182))

(declare-fun d!1616184 () Bool)

(declare-fun c!858317 () Bool)

(assert (=> d!1616184 (= c!858317 ((_ is Node!15382) (right!42765 (c!858130 totalInput!1125))))))

(declare-fun e!3136828 () Bool)

(assert (=> d!1616184 (= (inv!76406 (right!42765 (c!858130 totalInput!1125))) e!3136828)))

(declare-fun b!5021298 () Bool)

(assert (=> b!5021298 (= e!3136828 (inv!76410 (right!42765 (c!858130 totalInput!1125))))))

(declare-fun b!5021299 () Bool)

(declare-fun e!3136829 () Bool)

(assert (=> b!5021299 (= e!3136828 e!3136829)))

(declare-fun res!2140945 () Bool)

(assert (=> b!5021299 (= res!2140945 (not ((_ is Leaf!25522) (right!42765 (c!858130 totalInput!1125)))))))

(assert (=> b!5021299 (=> res!2140945 e!3136829)))

(declare-fun b!5021300 () Bool)

(assert (=> b!5021300 (= e!3136829 (inv!76411 (right!42765 (c!858130 totalInput!1125))))))

(assert (= (and d!1616184 c!858317) b!5021298))

(assert (= (and d!1616184 (not c!858317)) b!5021299))

(assert (= (and b!5021299 (not res!2140945)) b!5021300))

(declare-fun m!6056266 () Bool)

(assert (=> b!5021298 m!6056266))

(declare-fun m!6056268 () Bool)

(assert (=> b!5021300 m!6056268))

(assert (=> b!5021180 d!1616184))

(declare-fun d!1616186 () Bool)

(declare-fun lt!2078188 () Int)

(assert (=> d!1616186 (>= lt!2078188 0)))

(declare-fun e!3136830 () Int)

(assert (=> d!1616186 (= lt!2078188 e!3136830)))

(declare-fun c!858318 () Bool)

(assert (=> d!1616186 (= c!858318 ((_ is Nil!58035) lt!2078127))))

(assert (=> d!1616186 (= (size!38619 lt!2078127) lt!2078188)))

(declare-fun b!5021301 () Bool)

(assert (=> b!5021301 (= e!3136830 0)))

(declare-fun b!5021302 () Bool)

(assert (=> b!5021302 (= e!3136830 (+ 1 (size!38619 (t!370535 lt!2078127))))))

(assert (= (and d!1616186 c!858318) b!5021301))

(assert (= (and d!1616186 (not c!858318)) b!5021302))

(declare-fun m!6056270 () Bool)

(assert (=> b!5021302 m!6056270))

(assert (=> b!5021082 d!1616186))

(declare-fun b!5021311 () Bool)

(declare-fun e!3136835 () List!58159)

(assert (=> b!5021311 (= e!3136835 Nil!58035)))

(declare-fun b!5021314 () Bool)

(declare-fun e!3136836 () List!58159)

(declare-fun ++!12668 (List!58159 List!58159) List!58159)

(assert (=> b!5021314 (= e!3136836 (++!12668 (list!18722 (left!42435 (c!858130 totalInput!1125))) (list!18722 (right!42765 (c!858130 totalInput!1125)))))))

(declare-fun d!1616188 () Bool)

(declare-fun c!858323 () Bool)

(assert (=> d!1616188 (= c!858323 ((_ is Empty!15382) (c!858130 totalInput!1125)))))

(assert (=> d!1616188 (= (list!18722 (c!858130 totalInput!1125)) e!3136835)))

(declare-fun b!5021313 () Bool)

(assert (=> b!5021313 (= e!3136836 (list!18723 (xs!18708 (c!858130 totalInput!1125))))))

(declare-fun b!5021312 () Bool)

(assert (=> b!5021312 (= e!3136835 e!3136836)))

(declare-fun c!858324 () Bool)

(assert (=> b!5021312 (= c!858324 ((_ is Leaf!25522) (c!858130 totalInput!1125)))))

(assert (= (and d!1616188 c!858323) b!5021311))

(assert (= (and d!1616188 (not c!858323)) b!5021312))

(assert (= (and b!5021312 c!858324) b!5021313))

(assert (= (and b!5021312 (not c!858324)) b!5021314))

(assert (=> b!5021314 m!6056202))

(assert (=> b!5021314 m!6056204))

(assert (=> b!5021314 m!6056202))

(assert (=> b!5021314 m!6056204))

(declare-fun m!6056272 () Bool)

(assert (=> b!5021314 m!6056272))

(assert (=> b!5021313 m!6056246))

(assert (=> d!1616108 d!1616188))

(declare-fun d!1616190 () Bool)

(declare-fun e!3136839 () Bool)

(assert (=> d!1616190 e!3136839))

(declare-fun res!2140948 () Bool)

(assert (=> d!1616190 (=> (not res!2140948) (not e!3136839))))

(declare-fun lt!2078191 () List!58161)

(declare-fun noDuplicate!1042 (List!58161) Bool)

(assert (=> d!1616190 (= res!2140948 (noDuplicate!1042 lt!2078191))))

(declare-fun choose!37141 ((InoxSet Context!6576)) List!58161)

(assert (=> d!1616190 (= lt!2078191 (choose!37141 z!4710))))

(assert (=> d!1616190 (= (toList!8114 z!4710) lt!2078191)))

(declare-fun b!5021317 () Bool)

(declare-fun content!10286 (List!58161) (InoxSet Context!6576))

(assert (=> b!5021317 (= e!3136839 (= (content!10286 lt!2078191) z!4710))))

(assert (= (and d!1616190 res!2140948) b!5021317))

(declare-fun m!6056274 () Bool)

(assert (=> d!1616190 m!6056274))

(declare-fun m!6056276 () Bool)

(assert (=> d!1616190 m!6056276))

(declare-fun m!6056278 () Bool)

(assert (=> b!5021317 m!6056278))

(assert (=> bm!350609 d!1616190))

(assert (=> b!5021129 d!1616174))

(declare-fun bs!1187232 () Bool)

(declare-fun d!1616192 () Bool)

(assert (= bs!1187232 (and d!1616192 b!5021152)))

(declare-fun lambda!248903 () Int)

(assert (=> bs!1187232 (not (= lambda!248903 lambda!248894))))

(declare-fun bs!1187233 () Bool)

(assert (= bs!1187233 (and d!1616192 d!1616136)))

(assert (=> bs!1187233 (not (= lambda!248903 lambda!248901))))

(declare-fun bs!1187234 () Bool)

(assert (= bs!1187234 (and d!1616192 d!1616144)))

(assert (=> bs!1187234 (not (= lambda!248903 lambda!248902))))

(declare-fun bs!1187235 () Bool)

(assert (= bs!1187235 (and d!1616192 d!1616118)))

(assert (=> bs!1187235 (not (= lambda!248903 lambda!248897))))

(declare-fun bs!1187236 () Bool)

(assert (= bs!1187236 (and d!1616192 d!1616112)))

(assert (=> bs!1187236 (= lambda!248903 lambda!248892)))

(declare-fun bs!1187237 () Bool)

(assert (= bs!1187237 (and d!1616192 b!5021151)))

(assert (=> bs!1187237 (not (= lambda!248903 lambda!248893))))

(declare-fun bs!1187238 () Bool)

(declare-fun b!5021318 () Bool)

(assert (= bs!1187238 (and b!5021318 b!5021152)))

(declare-fun lambda!248904 () Int)

(assert (=> bs!1187238 (= lambda!248904 lambda!248894)))

(declare-fun bs!1187239 () Bool)

(assert (= bs!1187239 (and b!5021318 d!1616192)))

(assert (=> bs!1187239 (not (= lambda!248904 lambda!248903))))

(declare-fun bs!1187240 () Bool)

(assert (= bs!1187240 (and b!5021318 d!1616136)))

(assert (=> bs!1187240 (not (= lambda!248904 lambda!248901))))

(declare-fun bs!1187241 () Bool)

(assert (= bs!1187241 (and b!5021318 d!1616144)))

(assert (=> bs!1187241 (not (= lambda!248904 lambda!248902))))

(declare-fun bs!1187242 () Bool)

(assert (= bs!1187242 (and b!5021318 d!1616118)))

(assert (=> bs!1187242 (not (= lambda!248904 lambda!248897))))

(declare-fun bs!1187243 () Bool)

(assert (= bs!1187243 (and b!5021318 d!1616112)))

(assert (=> bs!1187243 (not (= lambda!248904 lambda!248892))))

(declare-fun bs!1187244 () Bool)

(assert (= bs!1187244 (and b!5021318 b!5021151)))

(assert (=> bs!1187244 (= lambda!248904 lambda!248893)))

(declare-fun bs!1187245 () Bool)

(declare-fun b!5021319 () Bool)

(assert (= bs!1187245 (and b!5021319 b!5021152)))

(declare-fun lambda!248905 () Int)

(assert (=> bs!1187245 (= lambda!248905 lambda!248894)))

(declare-fun bs!1187246 () Bool)

(assert (= bs!1187246 (and b!5021319 b!5021318)))

(assert (=> bs!1187246 (= lambda!248905 lambda!248904)))

(declare-fun bs!1187247 () Bool)

(assert (= bs!1187247 (and b!5021319 d!1616192)))

(assert (=> bs!1187247 (not (= lambda!248905 lambda!248903))))

(declare-fun bs!1187248 () Bool)

(assert (= bs!1187248 (and b!5021319 d!1616136)))

(assert (=> bs!1187248 (not (= lambda!248905 lambda!248901))))

(declare-fun bs!1187249 () Bool)

(assert (= bs!1187249 (and b!5021319 d!1616144)))

(assert (=> bs!1187249 (not (= lambda!248905 lambda!248902))))

(declare-fun bs!1187250 () Bool)

(assert (= bs!1187250 (and b!5021319 d!1616118)))

(assert (=> bs!1187250 (not (= lambda!248905 lambda!248897))))

(declare-fun bs!1187251 () Bool)

(assert (= bs!1187251 (and b!5021319 d!1616112)))

(assert (=> bs!1187251 (not (= lambda!248905 lambda!248892))))

(declare-fun bs!1187252 () Bool)

(assert (= bs!1187252 (and b!5021319 b!5021151)))

(assert (=> bs!1187252 (= lambda!248905 lambda!248893)))

(declare-fun lt!2078193 () Bool)

(assert (=> d!1616192 (= lt!2078193 (isEmpty!31428 (getLanguageWitness!726 lt!2078035)))))

(assert (=> d!1616192 (= lt!2078193 (forall!13405 lt!2078035 lambda!248903))))

(declare-fun lt!2078195 () Unit!149239)

(declare-fun e!3136840 () Unit!149239)

(assert (=> d!1616192 (= lt!2078195 e!3136840)))

(declare-fun c!858325 () Bool)

(assert (=> d!1616192 (= c!858325 (not (forall!13405 lt!2078035 lambda!248903)))))

(assert (=> d!1616192 (= (lostCauseZipper!877 lt!2078035) lt!2078193)))

(declare-fun Unit!149245 () Unit!149239)

(assert (=> b!5021319 (= e!3136840 Unit!149245)))

(declare-fun lt!2078192 () List!58161)

(declare-fun call!350620 () List!58161)

(assert (=> b!5021319 (= lt!2078192 call!350620)))

(declare-fun lt!2078198 () Unit!149239)

(assert (=> b!5021319 (= lt!2078198 (lemmaForallThenNotExists!246 lt!2078192 lambda!248903))))

(declare-fun call!350621 () Bool)

(assert (=> b!5021319 (not call!350621)))

(declare-fun lt!2078197 () Unit!149239)

(assert (=> b!5021319 (= lt!2078197 lt!2078198)))

(declare-fun Unit!149246 () Unit!149239)

(assert (=> b!5021318 (= e!3136840 Unit!149246)))

(declare-fun lt!2078199 () List!58161)

(assert (=> b!5021318 (= lt!2078199 call!350620)))

(declare-fun lt!2078196 () Unit!149239)

(assert (=> b!5021318 (= lt!2078196 (lemmaNotForallThenExists!263 lt!2078199 lambda!248903))))

(assert (=> b!5021318 call!350621))

(declare-fun lt!2078194 () Unit!149239)

(assert (=> b!5021318 (= lt!2078194 lt!2078196)))

(declare-fun bm!350616 () Bool)

(assert (=> bm!350616 (= call!350621 (exists!1379 (ite c!858325 lt!2078199 lt!2078192) (ite c!858325 lambda!248904 lambda!248905)))))

(declare-fun bm!350615 () Bool)

(assert (=> bm!350615 (= call!350620 (toList!8114 lt!2078035))))

(assert (= (and d!1616192 c!858325) b!5021318))

(assert (= (and d!1616192 (not c!858325)) b!5021319))

(assert (= (or b!5021318 b!5021319) bm!350615))

(assert (= (or b!5021318 b!5021319) bm!350616))

(declare-fun m!6056280 () Bool)

(assert (=> b!5021318 m!6056280))

(declare-fun m!6056282 () Bool)

(assert (=> b!5021319 m!6056282))

(declare-fun m!6056284 () Bool)

(assert (=> d!1616192 m!6056284))

(assert (=> d!1616192 m!6056284))

(declare-fun m!6056286 () Bool)

(assert (=> d!1616192 m!6056286))

(declare-fun m!6056288 () Bool)

(assert (=> d!1616192 m!6056288))

(assert (=> d!1616192 m!6056288))

(declare-fun m!6056290 () Bool)

(assert (=> bm!350615 m!6056290))

(declare-fun m!6056292 () Bool)

(assert (=> bm!350616 m!6056292))

(assert (=> b!5020967 d!1616192))

(declare-fun d!1616194 () Bool)

(declare-fun lt!2078202 () Bool)

(assert (=> d!1616194 (= lt!2078202 (select (content!10285 lt!2078039) lt!2078132))))

(declare-fun e!3136846 () Bool)

(assert (=> d!1616194 (= lt!2078202 e!3136846)))

(declare-fun res!2140954 () Bool)

(assert (=> d!1616194 (=> (not res!2140954) (not e!3136846))))

(assert (=> d!1616194 (= res!2140954 ((_ is Cons!58035) lt!2078039))))

(assert (=> d!1616194 (= (contains!19566 lt!2078039 lt!2078132) lt!2078202)))

(declare-fun b!5021324 () Bool)

(declare-fun e!3136845 () Bool)

(assert (=> b!5021324 (= e!3136846 e!3136845)))

(declare-fun res!2140953 () Bool)

(assert (=> b!5021324 (=> res!2140953 e!3136845)))

(assert (=> b!5021324 (= res!2140953 (= (h!64483 lt!2078039) lt!2078132))))

(declare-fun b!5021325 () Bool)

(assert (=> b!5021325 (= e!3136845 (contains!19566 (t!370535 lt!2078039) lt!2078132))))

(assert (= (and d!1616194 res!2140954) b!5021324))

(assert (= (and b!5021324 (not res!2140953)) b!5021325))

(assert (=> d!1616194 m!6056028))

(declare-fun m!6056294 () Bool)

(assert (=> d!1616194 m!6056294))

(declare-fun m!6056296 () Bool)

(assert (=> b!5021325 m!6056296))

(assert (=> d!1616096 d!1616194))

(assert (=> b!5021087 d!1616174))

(declare-fun d!1616196 () Bool)

(assert (=> d!1616196 (= (isEmpty!31427 lt!2078037) ((_ is Nil!58035) lt!2078037))))

(assert (=> d!1616102 d!1616196))

(assert (=> b!5020826 d!1616114))

(declare-fun b!5021326 () Bool)

(declare-fun e!3136848 () Int)

(assert (=> b!5021326 (= e!3136848 (size!38619 (t!370535 lt!2078038)))))

(declare-fun b!5021327 () Bool)

(assert (=> b!5021327 (= e!3136848 (- lt!2078042 1))))

(declare-fun b!5021328 () Bool)

(declare-fun e!3136847 () Int)

(assert (=> b!5021328 (= e!3136847 0)))

(declare-fun b!5021329 () Bool)

(declare-fun e!3136849 () Bool)

(declare-fun lt!2078203 () List!58159)

(assert (=> b!5021329 (= e!3136849 (= (size!38619 lt!2078203) e!3136847))))

(declare-fun c!858326 () Bool)

(assert (=> b!5021329 (= c!858326 (<= (- lt!2078042 1) 0))))

(declare-fun d!1616198 () Bool)

(assert (=> d!1616198 e!3136849))

(declare-fun res!2140955 () Bool)

(assert (=> d!1616198 (=> (not res!2140955) (not e!3136849))))

(assert (=> d!1616198 (= res!2140955 (= ((_ map implies) (content!10285 lt!2078203) (content!10285 (t!370535 lt!2078038))) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136850 () List!58159)

(assert (=> d!1616198 (= lt!2078203 e!3136850)))

(declare-fun c!858327 () Bool)

(assert (=> d!1616198 (= c!858327 (or ((_ is Nil!58035) (t!370535 lt!2078038)) (<= (- lt!2078042 1) 0)))))

(assert (=> d!1616198 (= (take!722 (t!370535 lt!2078038) (- lt!2078042 1)) lt!2078203)))

(declare-fun b!5021330 () Bool)

(assert (=> b!5021330 (= e!3136850 Nil!58035)))

(declare-fun b!5021331 () Bool)

(assert (=> b!5021331 (= e!3136850 (Cons!58035 (h!64483 (t!370535 lt!2078038)) (take!722 (t!370535 (t!370535 lt!2078038)) (- (- lt!2078042 1) 1))))))

(declare-fun b!5021332 () Bool)

(assert (=> b!5021332 (= e!3136847 e!3136848)))

(declare-fun c!858328 () Bool)

(assert (=> b!5021332 (= c!858328 (>= (- lt!2078042 1) (size!38619 (t!370535 lt!2078038))))))

(assert (= (and d!1616198 c!858327) b!5021330))

(assert (= (and d!1616198 (not c!858327)) b!5021331))

(assert (= (and d!1616198 res!2140955) b!5021329))

(assert (= (and b!5021329 c!858326) b!5021328))

(assert (= (and b!5021329 (not c!858326)) b!5021332))

(assert (= (and b!5021332 c!858328) b!5021326))

(assert (= (and b!5021332 (not c!858328)) b!5021327))

(assert (=> b!5021326 m!6056126))

(declare-fun m!6056298 () Bool)

(assert (=> d!1616198 m!6056298))

(assert (=> d!1616198 m!6056240))

(assert (=> b!5021332 m!6056126))

(declare-fun m!6056300 () Bool)

(assert (=> b!5021331 m!6056300))

(declare-fun m!6056302 () Bool)

(assert (=> b!5021329 m!6056302))

(assert (=> b!5021099 d!1616198))

(declare-fun d!1616200 () Bool)

(declare-fun lt!2078204 () Int)

(assert (=> d!1616200 (>= lt!2078204 0)))

(declare-fun e!3136851 () Int)

(assert (=> d!1616200 (= lt!2078204 e!3136851)))

(declare-fun c!858329 () Bool)

(assert (=> d!1616200 (= c!858329 ((_ is Nil!58035) (list!18720 totalInput!1125)))))

(assert (=> d!1616200 (= (size!38619 (list!18720 totalInput!1125)) lt!2078204)))

(declare-fun b!5021333 () Bool)

(assert (=> b!5021333 (= e!3136851 0)))

(declare-fun b!5021334 () Bool)

(assert (=> b!5021334 (= e!3136851 (+ 1 (size!38619 (t!370535 (list!18720 totalInput!1125)))))))

(assert (= (and d!1616200 c!858329) b!5021333))

(assert (= (and d!1616200 (not c!858329)) b!5021334))

(declare-fun m!6056304 () Bool)

(assert (=> b!5021334 m!6056304))

(assert (=> d!1616060 d!1616200))

(assert (=> d!1616060 d!1616108))

(declare-fun d!1616202 () Bool)

(declare-fun lt!2078207 () Int)

(assert (=> d!1616202 (= lt!2078207 (size!38619 (list!18722 (c!858130 totalInput!1125))))))

(assert (=> d!1616202 (= lt!2078207 (ite ((_ is Empty!15382) (c!858130 totalInput!1125)) 0 (ite ((_ is Leaf!25522) (c!858130 totalInput!1125)) (csize!30995 (c!858130 totalInput!1125)) (csize!30994 (c!858130 totalInput!1125)))))))

(assert (=> d!1616202 (= (size!38621 (c!858130 totalInput!1125)) lt!2078207)))

(declare-fun bs!1187253 () Bool)

(assert (= bs!1187253 d!1616202))

(assert (=> bs!1187253 m!6056086))

(assert (=> bs!1187253 m!6056086))

(declare-fun m!6056306 () Bool)

(assert (=> bs!1187253 m!6056306))

(assert (=> d!1616060 d!1616202))

(assert (=> b!5020987 d!1616150))

(declare-fun bs!1187254 () Bool)

(declare-fun d!1616204 () Bool)

(assert (= bs!1187254 (and d!1616204 b!5021152)))

(declare-fun lambda!248908 () Int)

(assert (=> bs!1187254 (not (= lambda!248908 lambda!248894))))

(declare-fun bs!1187255 () Bool)

(assert (= bs!1187255 (and d!1616204 b!5021318)))

(assert (=> bs!1187255 (not (= lambda!248908 lambda!248904))))

(declare-fun bs!1187256 () Bool)

(assert (= bs!1187256 (and d!1616204 b!5021319)))

(assert (=> bs!1187256 (not (= lambda!248908 lambda!248905))))

(declare-fun bs!1187257 () Bool)

(assert (= bs!1187257 (and d!1616204 d!1616192)))

(assert (=> bs!1187257 (not (= lambda!248908 lambda!248903))))

(declare-fun bs!1187258 () Bool)

(assert (= bs!1187258 (and d!1616204 d!1616136)))

(assert (=> bs!1187258 (= lambda!248908 lambda!248901)))

(declare-fun bs!1187259 () Bool)

(assert (= bs!1187259 (and d!1616204 d!1616144)))

(assert (=> bs!1187259 (not (= lambda!248908 lambda!248902))))

(declare-fun bs!1187260 () Bool)

(assert (= bs!1187260 (and d!1616204 d!1616118)))

(assert (=> bs!1187260 (not (= lambda!248908 lambda!248897))))

(declare-fun bs!1187261 () Bool)

(assert (= bs!1187261 (and d!1616204 d!1616112)))

(assert (=> bs!1187261 (not (= lambda!248908 lambda!248892))))

(declare-fun bs!1187262 () Bool)

(assert (= bs!1187262 (and d!1616204 b!5021151)))

(assert (=> bs!1187262 (not (= lambda!248908 lambda!248893))))

(assert (=> d!1616204 true))

(assert (=> d!1616204 (< (dynLambda!23525 order!26699 lambda!248892) (dynLambda!23525 order!26699 lambda!248908))))

(assert (=> d!1616204 (not (exists!1379 lt!2078155 lambda!248908))))

(declare-fun lt!2078210 () Unit!149239)

(declare-fun choose!37143 (List!58161 Int) Unit!149239)

(assert (=> d!1616204 (= lt!2078210 (choose!37143 lt!2078155 lambda!248892))))

(assert (=> d!1616204 (forall!13406 lt!2078155 lambda!248892)))

(assert (=> d!1616204 (= (lemmaForallThenNotExists!246 lt!2078155 lambda!248892) lt!2078210)))

(declare-fun bs!1187263 () Bool)

(assert (= bs!1187263 d!1616204))

(declare-fun m!6056308 () Bool)

(assert (=> bs!1187263 m!6056308))

(declare-fun m!6056310 () Bool)

(assert (=> bs!1187263 m!6056310))

(declare-fun m!6056312 () Bool)

(assert (=> bs!1187263 m!6056312))

(assert (=> b!5021152 d!1616204))

(declare-fun d!1616206 () Bool)

(declare-fun c!858330 () Bool)

(assert (=> d!1616206 (= c!858330 (isEmpty!31427 (tail!9895 lt!2078037)))))

(declare-fun e!3136854 () Bool)

(assert (=> d!1616206 (= (matchZipper!631 (derivationStepZipper!669 z!4710 (head!10762 lt!2078037)) (tail!9895 lt!2078037)) e!3136854)))

(declare-fun b!5021335 () Bool)

(assert (=> b!5021335 (= e!3136854 (nullableZipper!908 (derivationStepZipper!669 z!4710 (head!10762 lt!2078037))))))

(declare-fun b!5021336 () Bool)

(assert (=> b!5021336 (= e!3136854 (matchZipper!631 (derivationStepZipper!669 (derivationStepZipper!669 z!4710 (head!10762 lt!2078037)) (head!10762 (tail!9895 lt!2078037))) (tail!9895 (tail!9895 lt!2078037))))))

(assert (= (and d!1616206 c!858330) b!5021335))

(assert (= (and d!1616206 (not c!858330)) b!5021336))

(assert (=> d!1616206 m!6056070))

(declare-fun m!6056314 () Bool)

(assert (=> d!1616206 m!6056314))

(assert (=> b!5021335 m!6056068))

(declare-fun m!6056316 () Bool)

(assert (=> b!5021335 m!6056316))

(assert (=> b!5021336 m!6056070))

(declare-fun m!6056318 () Bool)

(assert (=> b!5021336 m!6056318))

(assert (=> b!5021336 m!6056068))

(assert (=> b!5021336 m!6056318))

(declare-fun m!6056320 () Bool)

(assert (=> b!5021336 m!6056320))

(assert (=> b!5021336 m!6056070))

(declare-fun m!6056322 () Bool)

(assert (=> b!5021336 m!6056322))

(assert (=> b!5021336 m!6056320))

(assert (=> b!5021336 m!6056322))

(declare-fun m!6056324 () Bool)

(assert (=> b!5021336 m!6056324))

(assert (=> b!5021128 d!1616206))

(declare-fun bs!1187264 () Bool)

(declare-fun d!1616208 () Bool)

(assert (= bs!1187264 (and d!1616208 d!1616088)))

(declare-fun lambda!248909 () Int)

(assert (=> bs!1187264 (= (= (head!10762 lt!2078037) (apply!14067 totalInput!1125 from!1212)) (= lambda!248909 lambda!248879))))

(declare-fun bs!1187265 () Bool)

(assert (= bs!1187265 (and d!1616208 d!1616120)))

(assert (=> bs!1187265 (= (= (head!10762 lt!2078037) (apply!14067 totalInput!1125 (+ 1 from!1212))) (= lambda!248909 lambda!248898))))

(assert (=> d!1616208 true))

(assert (=> d!1616208 (= (derivationStepZipper!669 z!4710 (head!10762 lt!2078037)) (flatMap!294 z!4710 lambda!248909))))

(declare-fun bs!1187266 () Bool)

(assert (= bs!1187266 d!1616208))

(declare-fun m!6056326 () Bool)

(assert (=> bs!1187266 m!6056326))

(assert (=> b!5021128 d!1616208))

(declare-fun d!1616210 () Bool)

(assert (=> d!1616210 (= (head!10762 lt!2078037) (h!64483 lt!2078037))))

(assert (=> b!5021128 d!1616210))

(declare-fun d!1616212 () Bool)

(assert (=> d!1616212 (= (tail!9895 lt!2078037) (t!370535 lt!2078037))))

(assert (=> b!5021128 d!1616212))

(assert (=> b!5021093 d!1616174))

(declare-fun d!1616214 () Bool)

(declare-fun lt!2078211 () Int)

(assert (=> d!1616214 (>= lt!2078211 0)))

(declare-fun e!3136855 () Int)

(assert (=> d!1616214 (= lt!2078211 e!3136855)))

(declare-fun c!858331 () Bool)

(assert (=> d!1616214 (= c!858331 ((_ is Nil!58035) lt!2078129))))

(assert (=> d!1616214 (= (size!38619 lt!2078129) lt!2078211)))

(declare-fun b!5021337 () Bool)

(assert (=> b!5021337 (= e!3136855 0)))

(declare-fun b!5021338 () Bool)

(assert (=> b!5021338 (= e!3136855 (+ 1 (size!38619 (t!370535 lt!2078129))))))

(assert (= (and d!1616214 c!858331) b!5021337))

(assert (= (and d!1616214 (not c!858331)) b!5021338))

(declare-fun m!6056328 () Bool)

(assert (=> b!5021338 m!6056328))

(assert (=> b!5021097 d!1616214))

(assert (=> d!1616068 d!1616106))

(declare-fun d!1616216 () Bool)

(assert (=> d!1616216 (= (Cons!58035 (apply!14066 lt!2078039 from!1212) (take!722 (drop!2526 lt!2078039 (+ from!1212 1)) lt!2078042)) (take!722 (drop!2526 lt!2078039 from!1212) (+ lt!2078042 1)))))

(assert (=> d!1616216 true))

(declare-fun _$30!230 () Unit!149239)

(assert (=> d!1616216 (= (choose!37138 lt!2078039 from!1212 lt!2078042) _$30!230)))

(declare-fun bs!1187267 () Bool)

(assert (= bs!1187267 d!1616216))

(assert (=> bs!1187267 m!6055782))

(assert (=> bs!1187267 m!6055814))

(assert (=> bs!1187267 m!6055946))

(assert (=> bs!1187267 m!6055948))

(assert (=> bs!1187267 m!6055782))

(assert (=> bs!1187267 m!6055944))

(assert (=> bs!1187267 m!6055946))

(assert (=> d!1616068 d!1616216))

(declare-fun b!5021339 () Bool)

(declare-fun e!3136857 () Int)

(assert (=> b!5021339 (= e!3136857 (size!38619 (drop!2526 lt!2078039 from!1212)))))

(declare-fun b!5021340 () Bool)

(assert (=> b!5021340 (= e!3136857 (+ lt!2078042 1))))

(declare-fun b!5021341 () Bool)

(declare-fun e!3136856 () Int)

(assert (=> b!5021341 (= e!3136856 0)))

(declare-fun b!5021342 () Bool)

(declare-fun e!3136858 () Bool)

(declare-fun lt!2078212 () List!58159)

(assert (=> b!5021342 (= e!3136858 (= (size!38619 lt!2078212) e!3136856))))

(declare-fun c!858332 () Bool)

(assert (=> b!5021342 (= c!858332 (<= (+ lt!2078042 1) 0))))

(declare-fun d!1616218 () Bool)

(assert (=> d!1616218 e!3136858))

(declare-fun res!2140956 () Bool)

(assert (=> d!1616218 (=> (not res!2140956) (not e!3136858))))

(assert (=> d!1616218 (= res!2140956 (= ((_ map implies) (content!10285 lt!2078212) (content!10285 (drop!2526 lt!2078039 from!1212))) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136859 () List!58159)

(assert (=> d!1616218 (= lt!2078212 e!3136859)))

(declare-fun c!858333 () Bool)

(assert (=> d!1616218 (= c!858333 (or ((_ is Nil!58035) (drop!2526 lt!2078039 from!1212)) (<= (+ lt!2078042 1) 0)))))

(assert (=> d!1616218 (= (take!722 (drop!2526 lt!2078039 from!1212) (+ lt!2078042 1)) lt!2078212)))

(declare-fun b!5021343 () Bool)

(assert (=> b!5021343 (= e!3136859 Nil!58035)))

(declare-fun b!5021344 () Bool)

(assert (=> b!5021344 (= e!3136859 (Cons!58035 (h!64483 (drop!2526 lt!2078039 from!1212)) (take!722 (t!370535 (drop!2526 lt!2078039 from!1212)) (- (+ lt!2078042 1) 1))))))

(declare-fun b!5021345 () Bool)

(assert (=> b!5021345 (= e!3136856 e!3136857)))

(declare-fun c!858334 () Bool)

(assert (=> b!5021345 (= c!858334 (>= (+ lt!2078042 1) (size!38619 (drop!2526 lt!2078039 from!1212))))))

(assert (= (and d!1616218 c!858333) b!5021343))

(assert (= (and d!1616218 (not c!858333)) b!5021344))

(assert (= (and d!1616218 res!2140956) b!5021342))

(assert (= (and b!5021342 c!858332) b!5021341))

(assert (= (and b!5021342 (not c!858332)) b!5021345))

(assert (= (and b!5021345 c!858334) b!5021339))

(assert (= (and b!5021345 (not c!858334)) b!5021340))

(assert (=> b!5021339 m!6055782))

(declare-fun m!6056330 () Bool)

(assert (=> b!5021339 m!6056330))

(declare-fun m!6056332 () Bool)

(assert (=> d!1616218 m!6056332))

(assert (=> d!1616218 m!6055782))

(declare-fun m!6056334 () Bool)

(assert (=> d!1616218 m!6056334))

(assert (=> b!5021345 m!6055782))

(assert (=> b!5021345 m!6056330))

(declare-fun m!6056336 () Bool)

(assert (=> b!5021344 m!6056336))

(declare-fun m!6056338 () Bool)

(assert (=> b!5021342 m!6056338))

(assert (=> d!1616068 d!1616218))

(assert (=> d!1616068 d!1616096))

(declare-fun b!5021346 () Bool)

(declare-fun e!3136860 () Int)

(declare-fun call!350622 () Int)

(assert (=> b!5021346 (= e!3136860 (- call!350622 (+ from!1212 1)))))

(declare-fun b!5021347 () Bool)

(declare-fun e!3136861 () Int)

(assert (=> b!5021347 (= e!3136861 e!3136860)))

(declare-fun c!858337 () Bool)

(assert (=> b!5021347 (= c!858337 (>= (+ from!1212 1) call!350622))))

(declare-fun b!5021348 () Bool)

(declare-fun e!3136864 () List!58159)

(declare-fun e!3136862 () List!58159)

(assert (=> b!5021348 (= e!3136864 e!3136862)))

(declare-fun c!858338 () Bool)

(assert (=> b!5021348 (= c!858338 (<= (+ from!1212 1) 0))))

(declare-fun b!5021349 () Bool)

(assert (=> b!5021349 (= e!3136864 Nil!58035)))

(declare-fun b!5021350 () Bool)

(declare-fun e!3136863 () Bool)

(declare-fun lt!2078213 () List!58159)

(assert (=> b!5021350 (= e!3136863 (= (size!38619 lt!2078213) e!3136861))))

(declare-fun c!858336 () Bool)

(assert (=> b!5021350 (= c!858336 (<= (+ from!1212 1) 0))))

(declare-fun b!5021351 () Bool)

(assert (=> b!5021351 (= e!3136862 (drop!2526 (t!370535 lt!2078039) (- (+ from!1212 1) 1)))))

(declare-fun b!5021352 () Bool)

(assert (=> b!5021352 (= e!3136862 lt!2078039)))

(declare-fun bm!350617 () Bool)

(assert (=> bm!350617 (= call!350622 (size!38619 lt!2078039))))

(declare-fun b!5021353 () Bool)

(assert (=> b!5021353 (= e!3136861 call!350622)))

(declare-fun d!1616220 () Bool)

(assert (=> d!1616220 e!3136863))

(declare-fun res!2140957 () Bool)

(assert (=> d!1616220 (=> (not res!2140957) (not e!3136863))))

(assert (=> d!1616220 (= res!2140957 (= ((_ map implies) (content!10285 lt!2078213) (content!10285 lt!2078039)) ((as const (InoxSet C!27976)) true)))))

(assert (=> d!1616220 (= lt!2078213 e!3136864)))

(declare-fun c!858335 () Bool)

(assert (=> d!1616220 (= c!858335 ((_ is Nil!58035) lt!2078039))))

(assert (=> d!1616220 (= (drop!2526 lt!2078039 (+ from!1212 1)) lt!2078213)))

(declare-fun b!5021354 () Bool)

(assert (=> b!5021354 (= e!3136860 0)))

(assert (= (and d!1616220 c!858335) b!5021349))

(assert (= (and d!1616220 (not c!858335)) b!5021348))

(assert (= (and b!5021348 c!858338) b!5021352))

(assert (= (and b!5021348 (not c!858338)) b!5021351))

(assert (= (and d!1616220 res!2140957) b!5021350))

(assert (= (and b!5021350 c!858336) b!5021353))

(assert (= (and b!5021350 (not c!858336)) b!5021347))

(assert (= (and b!5021347 c!858337) b!5021354))

(assert (= (and b!5021347 (not c!858337)) b!5021346))

(assert (= (or b!5021353 b!5021347 b!5021346) bm!350617))

(declare-fun m!6056340 () Bool)

(assert (=> b!5021350 m!6056340))

(declare-fun m!6056342 () Bool)

(assert (=> b!5021351 m!6056342))

(assert (=> bm!350617 m!6055952))

(declare-fun m!6056344 () Bool)

(assert (=> d!1616220 m!6056344))

(assert (=> d!1616220 m!6056028))

(assert (=> d!1616068 d!1616220))

(declare-fun b!5021355 () Bool)

(declare-fun e!3136866 () Int)

(assert (=> b!5021355 (= e!3136866 (size!38619 (drop!2526 lt!2078039 (+ from!1212 1))))))

(declare-fun b!5021356 () Bool)

(assert (=> b!5021356 (= e!3136866 lt!2078042)))

(declare-fun b!5021357 () Bool)

(declare-fun e!3136865 () Int)

(assert (=> b!5021357 (= e!3136865 0)))

(declare-fun b!5021358 () Bool)

(declare-fun e!3136867 () Bool)

(declare-fun lt!2078214 () List!58159)

(assert (=> b!5021358 (= e!3136867 (= (size!38619 lt!2078214) e!3136865))))

(declare-fun c!858339 () Bool)

(assert (=> b!5021358 (= c!858339 (<= lt!2078042 0))))

(declare-fun d!1616222 () Bool)

(assert (=> d!1616222 e!3136867))

(declare-fun res!2140958 () Bool)

(assert (=> d!1616222 (=> (not res!2140958) (not e!3136867))))

(assert (=> d!1616222 (= res!2140958 (= ((_ map implies) (content!10285 lt!2078214) (content!10285 (drop!2526 lt!2078039 (+ from!1212 1)))) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136868 () List!58159)

(assert (=> d!1616222 (= lt!2078214 e!3136868)))

(declare-fun c!858340 () Bool)

(assert (=> d!1616222 (= c!858340 (or ((_ is Nil!58035) (drop!2526 lt!2078039 (+ from!1212 1))) (<= lt!2078042 0)))))

(assert (=> d!1616222 (= (take!722 (drop!2526 lt!2078039 (+ from!1212 1)) lt!2078042) lt!2078214)))

(declare-fun b!5021359 () Bool)

(assert (=> b!5021359 (= e!3136868 Nil!58035)))

(declare-fun b!5021360 () Bool)

(assert (=> b!5021360 (= e!3136868 (Cons!58035 (h!64483 (drop!2526 lt!2078039 (+ from!1212 1))) (take!722 (t!370535 (drop!2526 lt!2078039 (+ from!1212 1))) (- lt!2078042 1))))))

(declare-fun b!5021361 () Bool)

(assert (=> b!5021361 (= e!3136865 e!3136866)))

(declare-fun c!858341 () Bool)

(assert (=> b!5021361 (= c!858341 (>= lt!2078042 (size!38619 (drop!2526 lt!2078039 (+ from!1212 1)))))))

(assert (= (and d!1616222 c!858340) b!5021359))

(assert (= (and d!1616222 (not c!858340)) b!5021360))

(assert (= (and d!1616222 res!2140958) b!5021358))

(assert (= (and b!5021358 c!858339) b!5021357))

(assert (= (and b!5021358 (not c!858339)) b!5021361))

(assert (= (and b!5021361 c!858341) b!5021355))

(assert (= (and b!5021361 (not c!858341)) b!5021356))

(assert (=> b!5021355 m!6055946))

(declare-fun m!6056346 () Bool)

(assert (=> b!5021355 m!6056346))

(declare-fun m!6056348 () Bool)

(assert (=> d!1616222 m!6056348))

(assert (=> d!1616222 m!6055946))

(declare-fun m!6056350 () Bool)

(assert (=> d!1616222 m!6056350))

(assert (=> b!5021361 m!6055946))

(assert (=> b!5021361 m!6056346))

(declare-fun m!6056352 () Bool)

(assert (=> b!5021360 m!6056352))

(declare-fun m!6056354 () Bool)

(assert (=> b!5021358 m!6056354))

(assert (=> d!1616068 d!1616222))

(assert (=> b!5021116 d!1616174))

(declare-fun d!1616224 () Bool)

(declare-fun c!858342 () Bool)

(assert (=> d!1616224 (= c!858342 (isEmpty!31427 (tail!9895 lt!2078040)))))

(declare-fun e!3136869 () Bool)

(assert (=> d!1616224 (= (matchZipper!631 (derivationStepZipper!669 lt!2078035 (head!10762 lt!2078040)) (tail!9895 lt!2078040)) e!3136869)))

(declare-fun b!5021362 () Bool)

(assert (=> b!5021362 (= e!3136869 (nullableZipper!908 (derivationStepZipper!669 lt!2078035 (head!10762 lt!2078040))))))

(declare-fun b!5021363 () Bool)

(assert (=> b!5021363 (= e!3136869 (matchZipper!631 (derivationStepZipper!669 (derivationStepZipper!669 lt!2078035 (head!10762 lt!2078040)) (head!10762 (tail!9895 lt!2078040))) (tail!9895 (tail!9895 lt!2078040))))))

(assert (= (and d!1616224 c!858342) b!5021362))

(assert (= (and d!1616224 (not c!858342)) b!5021363))

(assert (=> d!1616224 m!6056096))

(declare-fun m!6056356 () Bool)

(assert (=> d!1616224 m!6056356))

(assert (=> b!5021362 m!6056094))

(declare-fun m!6056358 () Bool)

(assert (=> b!5021362 m!6056358))

(assert (=> b!5021363 m!6056096))

(declare-fun m!6056360 () Bool)

(assert (=> b!5021363 m!6056360))

(assert (=> b!5021363 m!6056094))

(assert (=> b!5021363 m!6056360))

(declare-fun m!6056362 () Bool)

(assert (=> b!5021363 m!6056362))

(assert (=> b!5021363 m!6056096))

(declare-fun m!6056364 () Bool)

(assert (=> b!5021363 m!6056364))

(assert (=> b!5021363 m!6056362))

(assert (=> b!5021363 m!6056364))

(declare-fun m!6056366 () Bool)

(assert (=> b!5021363 m!6056366))

(assert (=> b!5021146 d!1616224))

(declare-fun bs!1187268 () Bool)

(declare-fun d!1616226 () Bool)

(assert (= bs!1187268 (and d!1616226 d!1616088)))

(declare-fun lambda!248910 () Int)

(assert (=> bs!1187268 (= (= (head!10762 lt!2078040) (apply!14067 totalInput!1125 from!1212)) (= lambda!248910 lambda!248879))))

(declare-fun bs!1187269 () Bool)

(assert (= bs!1187269 (and d!1616226 d!1616120)))

(assert (=> bs!1187269 (= (= (head!10762 lt!2078040) (apply!14067 totalInput!1125 (+ 1 from!1212))) (= lambda!248910 lambda!248898))))

(declare-fun bs!1187270 () Bool)

(assert (= bs!1187270 (and d!1616226 d!1616208)))

(assert (=> bs!1187270 (= (= (head!10762 lt!2078040) (head!10762 lt!2078037)) (= lambda!248910 lambda!248909))))

(assert (=> d!1616226 true))

(assert (=> d!1616226 (= (derivationStepZipper!669 lt!2078035 (head!10762 lt!2078040)) (flatMap!294 lt!2078035 lambda!248910))))

(declare-fun bs!1187271 () Bool)

(assert (= bs!1187271 d!1616226))

(declare-fun m!6056368 () Bool)

(assert (=> bs!1187271 m!6056368))

(assert (=> b!5021146 d!1616226))

(declare-fun d!1616230 () Bool)

(assert (=> d!1616230 (= (head!10762 lt!2078040) (h!64483 lt!2078040))))

(assert (=> b!5021146 d!1616230))

(declare-fun d!1616232 () Bool)

(assert (=> d!1616232 (= (tail!9895 lt!2078040) (t!370535 lt!2078040))))

(assert (=> b!5021146 d!1616232))

(assert (=> b!5021014 d!1616060))

(declare-fun d!1616234 () Bool)

(declare-fun c!858343 () Bool)

(assert (=> d!1616234 (= c!858343 ((_ is Nil!58035) lt!2078138))))

(declare-fun e!3136870 () (InoxSet C!27976))

(assert (=> d!1616234 (= (content!10285 lt!2078138) e!3136870)))

(declare-fun b!5021364 () Bool)

(assert (=> b!5021364 (= e!3136870 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021365 () Bool)

(assert (=> b!5021365 (= e!3136870 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078138) true) (content!10285 (t!370535 lt!2078138))))))

(assert (= (and d!1616234 c!858343) b!5021364))

(assert (= (and d!1616234 (not c!858343)) b!5021365))

(declare-fun m!6056370 () Bool)

(assert (=> b!5021365 m!6056370))

(declare-fun m!6056372 () Bool)

(assert (=> b!5021365 m!6056372))

(assert (=> d!1616106 d!1616234))

(assert (=> d!1616106 d!1616140))

(declare-fun d!1616236 () Bool)

(declare-fun c!858344 () Bool)

(assert (=> d!1616236 (= c!858344 ((_ is Nil!58035) lt!2078123))))

(declare-fun e!3136871 () (InoxSet C!27976))

(assert (=> d!1616236 (= (content!10285 lt!2078123) e!3136871)))

(declare-fun b!5021366 () Bool)

(assert (=> b!5021366 (= e!3136871 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021367 () Bool)

(assert (=> b!5021367 (= e!3136871 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078123) true) (content!10285 (t!370535 lt!2078123))))))

(assert (= (and d!1616236 c!858344) b!5021366))

(assert (= (and d!1616236 (not c!858344)) b!5021367))

(declare-fun m!6056374 () Bool)

(assert (=> b!5021367 m!6056374))

(declare-fun m!6056376 () Bool)

(assert (=> b!5021367 m!6056376))

(assert (=> d!1616084 d!1616236))

(declare-fun d!1616238 () Bool)

(declare-fun c!858345 () Bool)

(assert (=> d!1616238 (= c!858345 ((_ is Nil!58035) lt!2078038))))

(declare-fun e!3136872 () (InoxSet C!27976))

(assert (=> d!1616238 (= (content!10285 lt!2078038) e!3136872)))

(declare-fun b!5021368 () Bool)

(assert (=> b!5021368 (= e!3136872 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021369 () Bool)

(assert (=> b!5021369 (= e!3136872 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078038) true) (content!10285 (t!370535 lt!2078038))))))

(assert (= (and d!1616238 c!858345) b!5021368))

(assert (= (and d!1616238 (not c!858345)) b!5021369))

(declare-fun m!6056378 () Bool)

(assert (=> b!5021369 m!6056378))

(assert (=> b!5021369 m!6056240))

(assert (=> d!1616084 d!1616238))

(declare-fun d!1616240 () Bool)

(declare-fun res!2140979 () Bool)

(declare-fun e!3136885 () Bool)

(assert (=> d!1616240 (=> res!2140979 e!3136885)))

(assert (=> d!1616240 (= res!2140979 (not ((_ is Node!15382) (c!858130 totalInput!1125))))))

(assert (=> d!1616240 (= (isBalanced!4295 (c!858130 totalInput!1125)) e!3136885)))

(declare-fun b!5021395 () Bool)

(declare-fun res!2140980 () Bool)

(declare-fun e!3136884 () Bool)

(assert (=> b!5021395 (=> (not res!2140980) (not e!3136884))))

(assert (=> b!5021395 (= res!2140980 (isBalanced!4295 (left!42435 (c!858130 totalInput!1125))))))

(declare-fun b!5021396 () Bool)

(declare-fun res!2140977 () Bool)

(assert (=> b!5021396 (=> (not res!2140977) (not e!3136884))))

(declare-fun isEmpty!31429 (Conc!15382) Bool)

(assert (=> b!5021396 (= res!2140977 (not (isEmpty!31429 (left!42435 (c!858130 totalInput!1125)))))))

(declare-fun b!5021397 () Bool)

(assert (=> b!5021397 (= e!3136885 e!3136884)))

(declare-fun res!2140978 () Bool)

(assert (=> b!5021397 (=> (not res!2140978) (not e!3136884))))

(assert (=> b!5021397 (= res!2140978 (<= (- 1) (- (height!2039 (left!42435 (c!858130 totalInput!1125))) (height!2039 (right!42765 (c!858130 totalInput!1125))))))))

(declare-fun b!5021398 () Bool)

(declare-fun res!2140981 () Bool)

(assert (=> b!5021398 (=> (not res!2140981) (not e!3136884))))

(assert (=> b!5021398 (= res!2140981 (isBalanced!4295 (right!42765 (c!858130 totalInput!1125))))))

(declare-fun b!5021399 () Bool)

(declare-fun res!2140976 () Bool)

(assert (=> b!5021399 (=> (not res!2140976) (not e!3136884))))

(assert (=> b!5021399 (= res!2140976 (<= (- (height!2039 (left!42435 (c!858130 totalInput!1125))) (height!2039 (right!42765 (c!858130 totalInput!1125)))) 1))))

(declare-fun b!5021400 () Bool)

(assert (=> b!5021400 (= e!3136884 (not (isEmpty!31429 (right!42765 (c!858130 totalInput!1125)))))))

(assert (= (and d!1616240 (not res!2140979)) b!5021397))

(assert (= (and b!5021397 res!2140978) b!5021399))

(assert (= (and b!5021399 res!2140976) b!5021395))

(assert (= (and b!5021395 res!2140980) b!5021398))

(assert (= (and b!5021398 res!2140981) b!5021396))

(assert (= (and b!5021396 res!2140977) b!5021400))

(assert (=> b!5021399 m!6056254))

(assert (=> b!5021399 m!6056256))

(declare-fun m!6056392 () Bool)

(assert (=> b!5021400 m!6056392))

(declare-fun m!6056394 () Bool)

(assert (=> b!5021395 m!6056394))

(declare-fun m!6056396 () Bool)

(assert (=> b!5021398 m!6056396))

(declare-fun m!6056398 () Bool)

(assert (=> b!5021396 m!6056398))

(assert (=> b!5021397 m!6056254))

(assert (=> b!5021397 m!6056256))

(assert (=> d!1616028 d!1616240))

(declare-fun b!5021401 () Bool)

(declare-fun e!3136887 () Int)

(assert (=> b!5021401 (= e!3136887 (size!38619 (t!370535 lt!2078033)))))

(declare-fun b!5021402 () Bool)

(assert (=> b!5021402 (= e!3136887 (- knownSize!24 1))))

(declare-fun b!5021403 () Bool)

(declare-fun e!3136886 () Int)

(assert (=> b!5021403 (= e!3136886 0)))

(declare-fun b!5021404 () Bool)

(declare-fun e!3136888 () Bool)

(declare-fun lt!2078216 () List!58159)

(assert (=> b!5021404 (= e!3136888 (= (size!38619 lt!2078216) e!3136886))))

(declare-fun c!858352 () Bool)

(assert (=> b!5021404 (= c!858352 (<= (- knownSize!24 1) 0))))

(declare-fun d!1616246 () Bool)

(assert (=> d!1616246 e!3136888))

(declare-fun res!2140982 () Bool)

(assert (=> d!1616246 (=> (not res!2140982) (not e!3136888))))

(assert (=> d!1616246 (= res!2140982 (= ((_ map implies) (content!10285 lt!2078216) (content!10285 (t!370535 lt!2078033))) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136889 () List!58159)

(assert (=> d!1616246 (= lt!2078216 e!3136889)))

(declare-fun c!858353 () Bool)

(assert (=> d!1616246 (= c!858353 (or ((_ is Nil!58035) (t!370535 lt!2078033)) (<= (- knownSize!24 1) 0)))))

(assert (=> d!1616246 (= (take!722 (t!370535 lt!2078033) (- knownSize!24 1)) lt!2078216)))

(declare-fun b!5021406 () Bool)

(assert (=> b!5021406 (= e!3136889 Nil!58035)))

(declare-fun b!5021408 () Bool)

(assert (=> b!5021408 (= e!3136889 (Cons!58035 (h!64483 (t!370535 lt!2078033)) (take!722 (t!370535 (t!370535 lt!2078033)) (- (- knownSize!24 1) 1))))))

(declare-fun b!5021409 () Bool)

(assert (=> b!5021409 (= e!3136886 e!3136887)))

(declare-fun c!858354 () Bool)

(assert (=> b!5021409 (= c!858354 (>= (- knownSize!24 1) (size!38619 (t!370535 lt!2078033))))))

(assert (= (and d!1616246 c!858353) b!5021406))

(assert (= (and d!1616246 (not c!858353)) b!5021408))

(assert (= (and d!1616246 res!2140982) b!5021404))

(assert (= (and b!5021404 c!858352) b!5021403))

(assert (= (and b!5021404 (not c!858352)) b!5021409))

(assert (= (and b!5021409 c!858354) b!5021401))

(assert (= (and b!5021409 (not c!858354)) b!5021402))

(assert (=> b!5021401 m!6056230))

(declare-fun m!6056404 () Bool)

(assert (=> d!1616246 m!6056404))

(assert (=> d!1616246 m!6056152))

(assert (=> b!5021409 m!6056230))

(declare-fun m!6056406 () Bool)

(assert (=> b!5021408 m!6056406))

(declare-fun m!6056408 () Bool)

(assert (=> b!5021404 m!6056408))

(assert (=> b!5021134 d!1616246))

(declare-fun d!1616250 () Bool)

(assert (=> d!1616250 (= (isEmpty!31428 (getLanguageWitness!726 z!4710)) (not ((_ is Some!14592) (getLanguageWitness!726 z!4710))))))

(assert (=> d!1616112 d!1616250))

(declare-fun bs!1187276 () Bool)

(declare-fun d!1616252 () Bool)

(assert (= bs!1187276 (and d!1616252 b!5021152)))

(declare-fun lambda!248922 () Int)

(assert (=> bs!1187276 (= lambda!248922 lambda!248894)))

(declare-fun bs!1187277 () Bool)

(assert (= bs!1187277 (and d!1616252 b!5021318)))

(assert (=> bs!1187277 (= lambda!248922 lambda!248904)))

(declare-fun bs!1187278 () Bool)

(assert (= bs!1187278 (and d!1616252 b!5021319)))

(assert (=> bs!1187278 (= lambda!248922 lambda!248905)))

(declare-fun bs!1187279 () Bool)

(assert (= bs!1187279 (and d!1616252 d!1616204)))

(assert (=> bs!1187279 (not (= lambda!248922 lambda!248908))))

(declare-fun bs!1187280 () Bool)

(assert (= bs!1187280 (and d!1616252 d!1616192)))

(assert (=> bs!1187280 (not (= lambda!248922 lambda!248903))))

(declare-fun bs!1187281 () Bool)

(assert (= bs!1187281 (and d!1616252 d!1616136)))

(assert (=> bs!1187281 (not (= lambda!248922 lambda!248901))))

(declare-fun bs!1187282 () Bool)

(assert (= bs!1187282 (and d!1616252 d!1616144)))

(assert (=> bs!1187282 (not (= lambda!248922 lambda!248902))))

(declare-fun bs!1187283 () Bool)

(assert (= bs!1187283 (and d!1616252 d!1616118)))

(assert (=> bs!1187283 (not (= lambda!248922 lambda!248897))))

(declare-fun bs!1187284 () Bool)

(assert (= bs!1187284 (and d!1616252 d!1616112)))

(assert (=> bs!1187284 (not (= lambda!248922 lambda!248892))))

(declare-fun bs!1187285 () Bool)

(assert (= bs!1187285 (and d!1616252 b!5021151)))

(assert (=> bs!1187285 (= lambda!248922 lambda!248893)))

(declare-fun lt!2078224 () Option!14593)

(declare-fun isDefined!11489 (Option!14593) Bool)

(assert (=> d!1616252 (= (isDefined!11489 lt!2078224) (exists!1380 z!4710 lambda!248922))))

(declare-fun e!3136902 () Option!14593)

(assert (=> d!1616252 (= lt!2078224 e!3136902)))

(declare-fun c!858374 () Bool)

(assert (=> d!1616252 (= c!858374 (exists!1380 z!4710 lambda!248922))))

(assert (=> d!1616252 (= (getLanguageWitness!726 z!4710) lt!2078224)))

(declare-fun b!5021432 () Bool)

(declare-fun getLanguageWitness!728 (Context!6576) Option!14593)

(declare-fun getWitness!657 ((InoxSet Context!6576) Int) Context!6576)

(assert (=> b!5021432 (= e!3136902 (getLanguageWitness!728 (getWitness!657 z!4710 lambda!248922)))))

(declare-fun b!5021433 () Bool)

(assert (=> b!5021433 (= e!3136902 None!14592)))

(assert (= (and d!1616252 c!858374) b!5021432))

(assert (= (and d!1616252 (not c!858374)) b!5021433))

(declare-fun m!6056422 () Bool)

(assert (=> d!1616252 m!6056422))

(declare-fun m!6056424 () Bool)

(assert (=> d!1616252 m!6056424))

(assert (=> d!1616252 m!6056424))

(declare-fun m!6056426 () Bool)

(assert (=> b!5021432 m!6056426))

(assert (=> b!5021432 m!6056426))

(declare-fun m!6056428 () Bool)

(assert (=> b!5021432 m!6056428))

(assert (=> d!1616112 d!1616252))

(declare-fun d!1616266 () Bool)

(declare-fun lt!2078228 () Bool)

(assert (=> d!1616266 (= lt!2078228 (forall!13406 (toList!8114 z!4710) lambda!248892))))

(declare-fun choose!37145 ((InoxSet Context!6576) Int) Bool)

(assert (=> d!1616266 (= lt!2078228 (choose!37145 z!4710 lambda!248892))))

(assert (=> d!1616266 (= (forall!13405 z!4710 lambda!248892) lt!2078228)))

(declare-fun bs!1187290 () Bool)

(assert (= bs!1187290 d!1616266))

(assert (=> bs!1187290 m!6056110))

(assert (=> bs!1187290 m!6056110))

(declare-fun m!6056434 () Bool)

(assert (=> bs!1187290 m!6056434))

(declare-fun m!6056436 () Bool)

(assert (=> bs!1187290 m!6056436))

(assert (=> d!1616112 d!1616266))

(declare-fun b!5021436 () Bool)

(declare-fun e!3136905 () Int)

(assert (=> b!5021436 (= e!3136905 (size!38619 (t!370535 lt!2078033)))))

(declare-fun b!5021437 () Bool)

(assert (=> b!5021437 (= e!3136905 (- (+ 1 (- knownSize!24 1)) 1))))

(declare-fun b!5021438 () Bool)

(declare-fun e!3136904 () Int)

(assert (=> b!5021438 (= e!3136904 0)))

(declare-fun b!5021439 () Bool)

(declare-fun e!3136906 () Bool)

(declare-fun lt!2078229 () List!58159)

(assert (=> b!5021439 (= e!3136906 (= (size!38619 lt!2078229) e!3136904))))

(declare-fun c!858380 () Bool)

(assert (=> b!5021439 (= c!858380 (<= (- (+ 1 (- knownSize!24 1)) 1) 0))))

(declare-fun d!1616268 () Bool)

(assert (=> d!1616268 e!3136906))

(declare-fun res!2140985 () Bool)

(assert (=> d!1616268 (=> (not res!2140985) (not e!3136906))))

(assert (=> d!1616268 (= res!2140985 (= ((_ map implies) (content!10285 lt!2078229) (content!10285 (t!370535 lt!2078033))) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136907 () List!58159)

(assert (=> d!1616268 (= lt!2078229 e!3136907)))

(declare-fun c!858381 () Bool)

(assert (=> d!1616268 (= c!858381 (or ((_ is Nil!58035) (t!370535 lt!2078033)) (<= (- (+ 1 (- knownSize!24 1)) 1) 0)))))

(assert (=> d!1616268 (= (take!722 (t!370535 lt!2078033) (- (+ 1 (- knownSize!24 1)) 1)) lt!2078229)))

(declare-fun b!5021440 () Bool)

(assert (=> b!5021440 (= e!3136907 Nil!58035)))

(declare-fun b!5021441 () Bool)

(assert (=> b!5021441 (= e!3136907 (Cons!58035 (h!64483 (t!370535 lt!2078033)) (take!722 (t!370535 (t!370535 lt!2078033)) (- (- (+ 1 (- knownSize!24 1)) 1) 1))))))

(declare-fun b!5021442 () Bool)

(assert (=> b!5021442 (= e!3136904 e!3136905)))

(declare-fun c!858382 () Bool)

(assert (=> b!5021442 (= c!858382 (>= (- (+ 1 (- knownSize!24 1)) 1) (size!38619 (t!370535 lt!2078033))))))

(assert (= (and d!1616268 c!858381) b!5021440))

(assert (= (and d!1616268 (not c!858381)) b!5021441))

(assert (= (and d!1616268 res!2140985) b!5021439))

(assert (= (and b!5021439 c!858380) b!5021438))

(assert (= (and b!5021439 (not c!858380)) b!5021442))

(assert (= (and b!5021442 c!858382) b!5021436))

(assert (= (and b!5021442 (not c!858382)) b!5021437))

(assert (=> b!5021436 m!6056230))

(declare-fun m!6056442 () Bool)

(assert (=> d!1616268 m!6056442))

(assert (=> d!1616268 m!6056152))

(assert (=> b!5021442 m!6056230))

(declare-fun m!6056444 () Bool)

(assert (=> b!5021441 m!6056444))

(declare-fun m!6056446 () Bool)

(assert (=> b!5021439 m!6056446))

(assert (=> b!5021092 d!1616268))

(declare-fun d!1616272 () Bool)

(declare-fun lt!2078230 () Int)

(assert (=> d!1616272 (>= lt!2078230 0)))

(declare-fun e!3136908 () Int)

(assert (=> d!1616272 (= lt!2078230 e!3136908)))

(declare-fun c!858383 () Bool)

(assert (=> d!1616272 (= c!858383 ((_ is Nil!58035) lt!2078128))))

(assert (=> d!1616272 (= (size!38619 lt!2078128) lt!2078230)))

(declare-fun b!5021443 () Bool)

(assert (=> b!5021443 (= e!3136908 0)))

(declare-fun b!5021444 () Bool)

(assert (=> b!5021444 (= e!3136908 (+ 1 (size!38619 (t!370535 lt!2078128))))))

(assert (= (and d!1616272 c!858383) b!5021443))

(assert (= (and d!1616272 (not c!858383)) b!5021444))

(declare-fun m!6056448 () Bool)

(assert (=> b!5021444 m!6056448))

(assert (=> b!5021090 d!1616272))

(assert (=> b!5021056 d!1616116))

(assert (=> b!5021107 d!1616150))

(declare-fun d!1616274 () Bool)

(declare-fun c!858384 () Bool)

(assert (=> d!1616274 (= c!858384 ((_ is Nil!58035) lt!2078129))))

(declare-fun e!3136909 () (InoxSet C!27976))

(assert (=> d!1616274 (= (content!10285 lt!2078129) e!3136909)))

(declare-fun b!5021445 () Bool)

(assert (=> b!5021445 (= e!3136909 ((as const (Array C!27976 Bool)) false))))

(declare-fun b!5021446 () Bool)

(assert (=> b!5021446 (= e!3136909 ((_ map or) (store ((as const (Array C!27976 Bool)) false) (h!64483 lt!2078129) true) (content!10285 (t!370535 lt!2078129))))))

(assert (= (and d!1616274 c!858384) b!5021445))

(assert (= (and d!1616274 (not c!858384)) b!5021446))

(declare-fun m!6056450 () Bool)

(assert (=> b!5021446 m!6056450))

(declare-fun m!6056452 () Bool)

(assert (=> b!5021446 m!6056452))

(assert (=> d!1616094 d!1616274))

(assert (=> d!1616094 d!1616238))

(assert (=> b!5021050 d!1616116))

(declare-fun b!5021447 () Bool)

(declare-fun e!3136910 () Int)

(declare-fun call!350624 () Int)

(assert (=> b!5021447 (= e!3136910 (- call!350624 (- (+ 1 from!1212) 1)))))

(declare-fun b!5021448 () Bool)

(declare-fun e!3136911 () Int)

(assert (=> b!5021448 (= e!3136911 e!3136910)))

(declare-fun c!858387 () Bool)

(assert (=> b!5021448 (= c!858387 (>= (- (+ 1 from!1212) 1) call!350624))))

(declare-fun b!5021449 () Bool)

(declare-fun e!3136914 () List!58159)

(declare-fun e!3136912 () List!58159)

(assert (=> b!5021449 (= e!3136914 e!3136912)))

(declare-fun c!858388 () Bool)

(assert (=> b!5021449 (= c!858388 (<= (- (+ 1 from!1212) 1) 0))))

(declare-fun b!5021450 () Bool)

(assert (=> b!5021450 (= e!3136914 Nil!58035)))

(declare-fun b!5021451 () Bool)

(declare-fun e!3136913 () Bool)

(declare-fun lt!2078231 () List!58159)

(assert (=> b!5021451 (= e!3136913 (= (size!38619 lt!2078231) e!3136911))))

(declare-fun c!858386 () Bool)

(assert (=> b!5021451 (= c!858386 (<= (- (+ 1 from!1212) 1) 0))))

(declare-fun b!5021452 () Bool)

(assert (=> b!5021452 (= e!3136912 (drop!2526 (t!370535 (t!370535 lt!2078039)) (- (- (+ 1 from!1212) 1) 1)))))

(declare-fun b!5021453 () Bool)

(assert (=> b!5021453 (= e!3136912 (t!370535 lt!2078039))))

(declare-fun bm!350619 () Bool)

(assert (=> bm!350619 (= call!350624 (size!38619 (t!370535 lt!2078039)))))

(declare-fun b!5021454 () Bool)

(assert (=> b!5021454 (= e!3136911 call!350624)))

(declare-fun d!1616276 () Bool)

(assert (=> d!1616276 e!3136913))

(declare-fun res!2140986 () Bool)

(assert (=> d!1616276 (=> (not res!2140986) (not e!3136913))))

(assert (=> d!1616276 (= res!2140986 (= ((_ map implies) (content!10285 lt!2078231) (content!10285 (t!370535 lt!2078039))) ((as const (InoxSet C!27976)) true)))))

(assert (=> d!1616276 (= lt!2078231 e!3136914)))

(declare-fun c!858385 () Bool)

(assert (=> d!1616276 (= c!858385 ((_ is Nil!58035) (t!370535 lt!2078039)))))

(assert (=> d!1616276 (= (drop!2526 (t!370535 lt!2078039) (- (+ 1 from!1212) 1)) lt!2078231)))

(declare-fun b!5021455 () Bool)

(assert (=> b!5021455 (= e!3136910 0)))

(assert (= (and d!1616276 c!858385) b!5021450))

(assert (= (and d!1616276 (not c!858385)) b!5021449))

(assert (= (and b!5021449 c!858388) b!5021453))

(assert (= (and b!5021449 (not c!858388)) b!5021452))

(assert (= (and d!1616276 res!2140986) b!5021451))

(assert (= (and b!5021451 c!858386) b!5021454))

(assert (= (and b!5021451 (not c!858386)) b!5021448))

(assert (= (and b!5021448 c!858387) b!5021455))

(assert (= (and b!5021448 (not c!858387)) b!5021447))

(assert (= (or b!5021454 b!5021448 b!5021447) bm!350619))

(declare-fun m!6056454 () Bool)

(assert (=> b!5021451 m!6056454))

(declare-fun m!6056456 () Bool)

(assert (=> b!5021452 m!6056456))

(assert (=> bm!350619 m!6056186))

(declare-fun m!6056458 () Bool)

(assert (=> d!1616276 m!6056458))

(assert (=> d!1616276 m!6056176))

(assert (=> b!5021083 d!1616276))

(assert (=> d!1616086 d!1616106))

(declare-fun b!5021456 () Bool)

(declare-fun e!3136916 () Int)

(assert (=> b!5021456 (= e!3136916 (size!38619 (drop!2526 lt!2078039 from!1212)))))

(declare-fun b!5021457 () Bool)

(assert (=> b!5021457 (= e!3136916 (+ (- knownSize!24 1) 1))))

(declare-fun b!5021458 () Bool)

(declare-fun e!3136915 () Int)

(assert (=> b!5021458 (= e!3136915 0)))

(declare-fun b!5021459 () Bool)

(declare-fun e!3136917 () Bool)

(declare-fun lt!2078235 () List!58159)

(assert (=> b!5021459 (= e!3136917 (= (size!38619 lt!2078235) e!3136915))))

(declare-fun c!858389 () Bool)

(assert (=> b!5021459 (= c!858389 (<= (+ (- knownSize!24 1) 1) 0))))

(declare-fun d!1616278 () Bool)

(assert (=> d!1616278 e!3136917))

(declare-fun res!2140987 () Bool)

(assert (=> d!1616278 (=> (not res!2140987) (not e!3136917))))

(assert (=> d!1616278 (= res!2140987 (= ((_ map implies) (content!10285 lt!2078235) (content!10285 (drop!2526 lt!2078039 from!1212))) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136918 () List!58159)

(assert (=> d!1616278 (= lt!2078235 e!3136918)))

(declare-fun c!858390 () Bool)

(assert (=> d!1616278 (= c!858390 (or ((_ is Nil!58035) (drop!2526 lt!2078039 from!1212)) (<= (+ (- knownSize!24 1) 1) 0)))))

(assert (=> d!1616278 (= (take!722 (drop!2526 lt!2078039 from!1212) (+ (- knownSize!24 1) 1)) lt!2078235)))

(declare-fun b!5021460 () Bool)

(assert (=> b!5021460 (= e!3136918 Nil!58035)))

(declare-fun b!5021461 () Bool)

(assert (=> b!5021461 (= e!3136918 (Cons!58035 (h!64483 (drop!2526 lt!2078039 from!1212)) (take!722 (t!370535 (drop!2526 lt!2078039 from!1212)) (- (+ (- knownSize!24 1) 1) 1))))))

(declare-fun b!5021462 () Bool)

(assert (=> b!5021462 (= e!3136915 e!3136916)))

(declare-fun c!858391 () Bool)

(assert (=> b!5021462 (= c!858391 (>= (+ (- knownSize!24 1) 1) (size!38619 (drop!2526 lt!2078039 from!1212))))))

(assert (= (and d!1616278 c!858390) b!5021460))

(assert (= (and d!1616278 (not c!858390)) b!5021461))

(assert (= (and d!1616278 res!2140987) b!5021459))

(assert (= (and b!5021459 c!858389) b!5021458))

(assert (= (and b!5021459 (not c!858389)) b!5021462))

(assert (= (and b!5021462 c!858391) b!5021456))

(assert (= (and b!5021462 (not c!858391)) b!5021457))

(assert (=> b!5021456 m!6055782))

(assert (=> b!5021456 m!6056330))

(declare-fun m!6056464 () Bool)

(assert (=> d!1616278 m!6056464))

(assert (=> d!1616278 m!6055782))

(assert (=> d!1616278 m!6056334))

(assert (=> b!5021462 m!6055782))

(assert (=> b!5021462 m!6056330))

(declare-fun m!6056466 () Bool)

(assert (=> b!5021461 m!6056466))

(declare-fun m!6056468 () Bool)

(assert (=> b!5021459 m!6056468))

(assert (=> d!1616086 d!1616278))

(declare-fun b!5021466 () Bool)

(declare-fun e!3136922 () Int)

(assert (=> b!5021466 (= e!3136922 (size!38619 (drop!2526 lt!2078039 (+ from!1212 1))))))

(declare-fun b!5021467 () Bool)

(assert (=> b!5021467 (= e!3136922 (- knownSize!24 1))))

(declare-fun b!5021468 () Bool)

(declare-fun e!3136921 () Int)

(assert (=> b!5021468 (= e!3136921 0)))

(declare-fun b!5021469 () Bool)

(declare-fun e!3136923 () Bool)

(declare-fun lt!2078237 () List!58159)

(assert (=> b!5021469 (= e!3136923 (= (size!38619 lt!2078237) e!3136921))))

(declare-fun c!858393 () Bool)

(assert (=> b!5021469 (= c!858393 (<= (- knownSize!24 1) 0))))

(declare-fun d!1616282 () Bool)

(assert (=> d!1616282 e!3136923))

(declare-fun res!2140989 () Bool)

(assert (=> d!1616282 (=> (not res!2140989) (not e!3136923))))

(assert (=> d!1616282 (= res!2140989 (= ((_ map implies) (content!10285 lt!2078237) (content!10285 (drop!2526 lt!2078039 (+ from!1212 1)))) ((as const (InoxSet C!27976)) true)))))

(declare-fun e!3136924 () List!58159)

(assert (=> d!1616282 (= lt!2078237 e!3136924)))

(declare-fun c!858394 () Bool)

(assert (=> d!1616282 (= c!858394 (or ((_ is Nil!58035) (drop!2526 lt!2078039 (+ from!1212 1))) (<= (- knownSize!24 1) 0)))))

(assert (=> d!1616282 (= (take!722 (drop!2526 lt!2078039 (+ from!1212 1)) (- knownSize!24 1)) lt!2078237)))

(declare-fun b!5021470 () Bool)

(assert (=> b!5021470 (= e!3136924 Nil!58035)))

(declare-fun b!5021471 () Bool)

(assert (=> b!5021471 (= e!3136924 (Cons!58035 (h!64483 (drop!2526 lt!2078039 (+ from!1212 1))) (take!722 (t!370535 (drop!2526 lt!2078039 (+ from!1212 1))) (- (- knownSize!24 1) 1))))))

(declare-fun b!5021472 () Bool)

(assert (=> b!5021472 (= e!3136921 e!3136922)))

(declare-fun c!858395 () Bool)

(assert (=> b!5021472 (= c!858395 (>= (- knownSize!24 1) (size!38619 (drop!2526 lt!2078039 (+ from!1212 1)))))))

(assert (= (and d!1616282 c!858394) b!5021470))

(assert (= (and d!1616282 (not c!858394)) b!5021471))

(assert (= (and d!1616282 res!2140989) b!5021469))

(assert (= (and b!5021469 c!858393) b!5021468))

(assert (= (and b!5021469 (not c!858393)) b!5021472))

(assert (= (and b!5021472 c!858395) b!5021466))

(assert (= (and b!5021472 (not c!858395)) b!5021467))

(assert (=> b!5021466 m!6055946))

(assert (=> b!5021466 m!6056346))

(declare-fun m!6056478 () Bool)

(assert (=> d!1616282 m!6056478))

(assert (=> d!1616282 m!6055946))

(assert (=> d!1616282 m!6056350))

(assert (=> b!5021472 m!6055946))

(assert (=> b!5021472 m!6056346))

(declare-fun m!6056480 () Bool)

(assert (=> b!5021471 m!6056480))

(declare-fun m!6056482 () Bool)

(assert (=> b!5021469 m!6056482))

(assert (=> d!1616086 d!1616282))

(declare-fun d!1616286 () Bool)

(assert (=> d!1616286 (= (Cons!58035 (apply!14066 lt!2078039 from!1212) (take!722 (drop!2526 lt!2078039 (+ from!1212 1)) (- knownSize!24 1))) (take!722 (drop!2526 lt!2078039 from!1212) (+ (- knownSize!24 1) 1)))))

(assert (=> d!1616286 true))

(declare-fun _$30!231 () Unit!149239)

(assert (=> d!1616286 (= (choose!37138 lt!2078039 from!1212 (- knownSize!24 1)) _$30!231)))

(declare-fun bs!1187292 () Bool)

(assert (= bs!1187292 d!1616286))

(assert (=> bs!1187292 m!6055782))

(assert (=> bs!1187292 m!6055814))

(assert (=> bs!1187292 m!6055946))

(assert (=> bs!1187292 m!6056016))

(assert (=> bs!1187292 m!6055782))

(assert (=> bs!1187292 m!6056014))

(assert (=> bs!1187292 m!6055946))

(assert (=> d!1616086 d!1616286))

(assert (=> d!1616086 d!1616220))

(assert (=> d!1616086 d!1616096))

(declare-fun bs!1187293 () Bool)

(declare-fun d!1616288 () Bool)

(assert (= bs!1187293 (and d!1616288 b!5021152)))

(declare-fun lambda!248928 () Int)

(assert (=> bs!1187293 (not (= lambda!248928 lambda!248894))))

(declare-fun bs!1187294 () Bool)

(assert (= bs!1187294 (and d!1616288 b!5021318)))

(assert (=> bs!1187294 (not (= lambda!248928 lambda!248904))))

(declare-fun bs!1187295 () Bool)

(assert (= bs!1187295 (and d!1616288 b!5021319)))

(assert (=> bs!1187295 (not (= lambda!248928 lambda!248905))))

(declare-fun bs!1187296 () Bool)

(assert (= bs!1187296 (and d!1616288 d!1616204)))

(assert (=> bs!1187296 (not (= lambda!248928 lambda!248908))))

(declare-fun bs!1187297 () Bool)

(assert (= bs!1187297 (and d!1616288 d!1616252)))

(assert (=> bs!1187297 (not (= lambda!248928 lambda!248922))))

(declare-fun bs!1187298 () Bool)

(assert (= bs!1187298 (and d!1616288 d!1616192)))

(assert (=> bs!1187298 (not (= lambda!248928 lambda!248903))))

(declare-fun bs!1187299 () Bool)

(assert (= bs!1187299 (and d!1616288 d!1616136)))

(assert (=> bs!1187299 (not (= lambda!248928 lambda!248901))))

(declare-fun bs!1187300 () Bool)

(assert (= bs!1187300 (and d!1616288 d!1616144)))

(assert (=> bs!1187300 (= lambda!248928 lambda!248902)))

(declare-fun bs!1187301 () Bool)

(assert (= bs!1187301 (and d!1616288 d!1616118)))

(assert (=> bs!1187301 (= lambda!248928 lambda!248897)))

(declare-fun bs!1187302 () Bool)

(assert (= bs!1187302 (and d!1616288 d!1616112)))

(assert (=> bs!1187302 (not (= lambda!248928 lambda!248892))))

(declare-fun bs!1187303 () Bool)

(assert (= bs!1187303 (and d!1616288 b!5021151)))

(assert (=> bs!1187303 (not (= lambda!248928 lambda!248893))))

(assert (=> d!1616288 (= (nullableZipper!908 lt!2078109) (exists!1380 lt!2078109 lambda!248928))))

(declare-fun bs!1187304 () Bool)

(assert (= bs!1187304 d!1616288))

(declare-fun m!6056484 () Bool)

(assert (=> bs!1187304 m!6056484))

(assert (=> b!5020966 d!1616288))

(declare-fun bs!1187305 () Bool)

(declare-fun d!1616290 () Bool)

(assert (= bs!1187305 (and d!1616290 b!5021152)))

(declare-fun lambda!248931 () Int)

(assert (=> bs!1187305 (not (= lambda!248931 lambda!248894))))

(declare-fun bs!1187306 () Bool)

(assert (= bs!1187306 (and d!1616290 b!5021318)))

(assert (=> bs!1187306 (not (= lambda!248931 lambda!248904))))

(declare-fun bs!1187307 () Bool)

(assert (= bs!1187307 (and d!1616290 d!1616288)))

(assert (=> bs!1187307 (not (= lambda!248931 lambda!248928))))

(declare-fun bs!1187308 () Bool)

(assert (= bs!1187308 (and d!1616290 b!5021319)))

(assert (=> bs!1187308 (not (= lambda!248931 lambda!248905))))

(declare-fun bs!1187309 () Bool)

(assert (= bs!1187309 (and d!1616290 d!1616204)))

(assert (=> bs!1187309 (= (= (ite c!858271 lambda!248893 lambda!248894) lambda!248892) (= lambda!248931 lambda!248908))))

(declare-fun bs!1187310 () Bool)

(assert (= bs!1187310 (and d!1616290 d!1616252)))

(assert (=> bs!1187310 (not (= lambda!248931 lambda!248922))))

(declare-fun bs!1187311 () Bool)

(assert (= bs!1187311 (and d!1616290 d!1616192)))

(assert (=> bs!1187311 (not (= lambda!248931 lambda!248903))))

(declare-fun bs!1187312 () Bool)

(assert (= bs!1187312 (and d!1616290 d!1616136)))

(assert (=> bs!1187312 (= (= (ite c!858271 lambda!248893 lambda!248894) lambda!248892) (= lambda!248931 lambda!248901))))

(declare-fun bs!1187313 () Bool)

(assert (= bs!1187313 (and d!1616290 d!1616144)))

(assert (=> bs!1187313 (not (= lambda!248931 lambda!248902))))

(declare-fun bs!1187314 () Bool)

(assert (= bs!1187314 (and d!1616290 d!1616118)))

(assert (=> bs!1187314 (not (= lambda!248931 lambda!248897))))

(declare-fun bs!1187315 () Bool)

(assert (= bs!1187315 (and d!1616290 d!1616112)))

(assert (=> bs!1187315 (not (= lambda!248931 lambda!248892))))

(declare-fun bs!1187316 () Bool)

(assert (= bs!1187316 (and d!1616290 b!5021151)))

(assert (=> bs!1187316 (not (= lambda!248931 lambda!248893))))

(assert (=> d!1616290 true))

(assert (=> d!1616290 (< (dynLambda!23525 order!26699 (ite c!858271 lambda!248893 lambda!248894)) (dynLambda!23525 order!26699 lambda!248931))))

(assert (=> d!1616290 (= (exists!1379 (ite c!858271 lt!2078162 lt!2078155) (ite c!858271 lambda!248893 lambda!248894)) (not (forall!13406 (ite c!858271 lt!2078162 lt!2078155) lambda!248931)))))

(declare-fun bs!1187317 () Bool)

(assert (= bs!1187317 d!1616290))

(declare-fun m!6056486 () Bool)

(assert (=> bs!1187317 m!6056486))

(assert (=> bm!350610 d!1616290))

(assert (=> b!5021057 d!1616150))

(assert (=> bm!350603 d!1616150))

(declare-fun d!1616292 () Bool)

(declare-fun lt!2078238 () Int)

(assert (=> d!1616292 (>= lt!2078238 0)))

(declare-fun e!3136925 () Int)

(assert (=> d!1616292 (= lt!2078238 e!3136925)))

(declare-fun c!858396 () Bool)

(assert (=> d!1616292 (= c!858396 ((_ is Nil!58035) lt!2078137))))

(assert (=> d!1616292 (= (size!38619 lt!2078137) lt!2078238)))

(declare-fun b!5021473 () Bool)

(assert (=> b!5021473 (= e!3136925 0)))

(declare-fun b!5021474 () Bool)

(assert (=> b!5021474 (= e!3136925 (+ 1 (size!38619 (t!370535 lt!2078137))))))

(assert (= (and d!1616292 c!858396) b!5021473))

(assert (= (and d!1616292 (not c!858396)) b!5021474))

(declare-fun m!6056488 () Bool)

(assert (=> b!5021474 m!6056488))

(assert (=> b!5021132 d!1616292))

(declare-fun bs!1187318 () Bool)

(declare-fun d!1616294 () Bool)

(assert (= bs!1187318 (and d!1616294 d!1616032)))

(declare-fun lambda!248932 () Int)

(assert (=> bs!1187318 (= lambda!248932 lambda!248861)))

(assert (=> d!1616294 (= (inv!76405 setElem!28702) (forall!13403 (exprs!3788 setElem!28702) lambda!248932))))

(declare-fun bs!1187319 () Bool)

(assert (= bs!1187319 d!1616294))

(declare-fun m!6056490 () Bool)

(assert (=> bs!1187319 m!6056490))

(assert (=> setNonEmpty!28702 d!1616294))

(declare-fun b!5021479 () Bool)

(declare-fun e!3136928 () Bool)

(declare-fun tp_is_empty!36637 () Bool)

(declare-fun tp!1407905 () Bool)

(assert (=> b!5021479 (= e!3136928 (and tp_is_empty!36637 tp!1407905))))

(assert (=> b!5021182 (= tp!1407902 e!3136928)))

(assert (= (and b!5021182 ((_ is Cons!58035) (innerList!15470 (xs!18708 (c!858130 totalInput!1125))))) b!5021479))

(declare-fun b!5021480 () Bool)

(declare-fun e!3136929 () Bool)

(declare-fun tp!1407906 () Bool)

(declare-fun tp!1407907 () Bool)

(assert (=> b!5021480 (= e!3136929 (and tp!1407906 tp!1407907))))

(assert (=> b!5021166 (= tp!1407886 e!3136929)))

(assert (= (and b!5021166 ((_ is Cons!58034) (exprs!3788 setElem!28702))) b!5021480))

(declare-fun tp!1407908 () Bool)

(declare-fun b!5021481 () Bool)

(declare-fun e!3136931 () Bool)

(declare-fun tp!1407909 () Bool)

(assert (=> b!5021481 (= e!3136931 (and (inv!76406 (left!42435 (left!42435 (c!858130 totalInput!1125)))) tp!1407908 (inv!76406 (right!42765 (left!42435 (c!858130 totalInput!1125)))) tp!1407909))))

(declare-fun b!5021483 () Bool)

(declare-fun e!3136930 () Bool)

(declare-fun tp!1407910 () Bool)

(assert (=> b!5021483 (= e!3136930 tp!1407910)))

(declare-fun b!5021482 () Bool)

(assert (=> b!5021482 (= e!3136931 (and (inv!76412 (xs!18708 (left!42435 (c!858130 totalInput!1125)))) e!3136930))))

(assert (=> b!5021180 (= tp!1407900 (and (inv!76406 (left!42435 (c!858130 totalInput!1125))) e!3136931))))

(assert (= (and b!5021180 ((_ is Node!15382) (left!42435 (c!858130 totalInput!1125)))) b!5021481))

(assert (= b!5021482 b!5021483))

(assert (= (and b!5021180 ((_ is Leaf!25522) (left!42435 (c!858130 totalInput!1125)))) b!5021482))

(declare-fun m!6056492 () Bool)

(assert (=> b!5021481 m!6056492))

(declare-fun m!6056494 () Bool)

(assert (=> b!5021481 m!6056494))

(declare-fun m!6056496 () Bool)

(assert (=> b!5021482 m!6056496))

(assert (=> b!5021180 m!6056120))

(declare-fun tp!1407911 () Bool)

(declare-fun b!5021484 () Bool)

(declare-fun e!3136933 () Bool)

(declare-fun tp!1407912 () Bool)

(assert (=> b!5021484 (= e!3136933 (and (inv!76406 (left!42435 (right!42765 (c!858130 totalInput!1125)))) tp!1407911 (inv!76406 (right!42765 (right!42765 (c!858130 totalInput!1125)))) tp!1407912))))

(declare-fun b!5021486 () Bool)

(declare-fun e!3136932 () Bool)

(declare-fun tp!1407913 () Bool)

(assert (=> b!5021486 (= e!3136932 tp!1407913)))

(declare-fun b!5021485 () Bool)

(assert (=> b!5021485 (= e!3136933 (and (inv!76412 (xs!18708 (right!42765 (c!858130 totalInput!1125)))) e!3136932))))

(assert (=> b!5021180 (= tp!1407901 (and (inv!76406 (right!42765 (c!858130 totalInput!1125))) e!3136933))))

(assert (= (and b!5021180 ((_ is Node!15382) (right!42765 (c!858130 totalInput!1125)))) b!5021484))

(assert (= b!5021485 b!5021486))

(assert (= (and b!5021180 ((_ is Leaf!25522) (right!42765 (c!858130 totalInput!1125)))) b!5021485))

(declare-fun m!6056498 () Bool)

(assert (=> b!5021484 m!6056498))

(declare-fun m!6056500 () Bool)

(assert (=> b!5021484 m!6056500))

(declare-fun m!6056502 () Bool)

(assert (=> b!5021485 m!6056502))

(assert (=> b!5021180 m!6056122))

(declare-fun b!5021511 () Bool)

(declare-fun e!3136944 () Bool)

(assert (=> b!5021511 (= e!3136944 tp_is_empty!36637)))

(declare-fun b!5021512 () Bool)

(declare-fun tp!1407927 () Bool)

(declare-fun tp!1407924 () Bool)

(assert (=> b!5021512 (= e!3136944 (and tp!1407927 tp!1407924))))

(assert (=> b!5021171 (= tp!1407892 e!3136944)))

(declare-fun b!5021513 () Bool)

(declare-fun tp!1407926 () Bool)

(assert (=> b!5021513 (= e!3136944 tp!1407926)))

(declare-fun b!5021514 () Bool)

(declare-fun tp!1407928 () Bool)

(declare-fun tp!1407925 () Bool)

(assert (=> b!5021514 (= e!3136944 (and tp!1407928 tp!1407925))))

(assert (= (and b!5021171 ((_ is ElementMatch!13863) (h!64482 (exprs!3788 setElem!28696)))) b!5021511))

(assert (= (and b!5021171 ((_ is Concat!22656) (h!64482 (exprs!3788 setElem!28696)))) b!5021512))

(assert (= (and b!5021171 ((_ is Star!13863) (h!64482 (exprs!3788 setElem!28696)))) b!5021513))

(assert (= (and b!5021171 ((_ is Union!13863) (h!64482 (exprs!3788 setElem!28696)))) b!5021514))

(declare-fun b!5021515 () Bool)

(declare-fun e!3136945 () Bool)

(declare-fun tp!1407929 () Bool)

(declare-fun tp!1407930 () Bool)

(assert (=> b!5021515 (= e!3136945 (and tp!1407929 tp!1407930))))

(assert (=> b!5021171 (= tp!1407893 e!3136945)))

(assert (= (and b!5021171 ((_ is Cons!58034) (t!370534 (exprs!3788 setElem!28696)))) b!5021515))

(declare-fun condSetEmpty!28703 () Bool)

(assert (=> setNonEmpty!28702 (= condSetEmpty!28703 (= setRest!28702 ((as const (Array Context!6576 Bool)) false)))))

(declare-fun setRes!28703 () Bool)

(assert (=> setNonEmpty!28702 (= tp!1407887 setRes!28703)))

(declare-fun setIsEmpty!28703 () Bool)

(assert (=> setIsEmpty!28703 setRes!28703))

(declare-fun setElem!28703 () Context!6576)

(declare-fun setNonEmpty!28703 () Bool)

(declare-fun tp!1407932 () Bool)

(declare-fun e!3136946 () Bool)

(assert (=> setNonEmpty!28703 (= setRes!28703 (and tp!1407932 (inv!76405 setElem!28703) e!3136946))))

(declare-fun setRest!28703 () (InoxSet Context!6576))

(assert (=> setNonEmpty!28703 (= setRest!28702 ((_ map or) (store ((as const (Array Context!6576 Bool)) false) setElem!28703 true) setRest!28703))))

(declare-fun b!5021516 () Bool)

(declare-fun tp!1407931 () Bool)

(assert (=> b!5021516 (= e!3136946 tp!1407931)))

(assert (= (and setNonEmpty!28702 condSetEmpty!28703) setIsEmpty!28703))

(assert (= (and setNonEmpty!28702 (not condSetEmpty!28703)) setNonEmpty!28703))

(assert (= setNonEmpty!28703 b!5021516))

(declare-fun m!6056504 () Bool)

(assert (=> setNonEmpty!28703 m!6056504))

(declare-fun b_lambda!198675 () Bool)

(assert (= b_lambda!198673 (or d!1616032 b_lambda!198675)))

(declare-fun bs!1187320 () Bool)

(declare-fun d!1616296 () Bool)

(assert (= bs!1187320 (and d!1616296 d!1616032)))

(declare-fun validRegex!6117 (Regex!13863) Bool)

(assert (=> bs!1187320 (= (dynLambda!23524 lambda!248861 (h!64482 (exprs!3788 setElem!28696))) (validRegex!6117 (h!64482 (exprs!3788 setElem!28696))))))

(declare-fun m!6056506 () Bool)

(assert (=> bs!1187320 m!6056506))

(assert (=> b!5021206 d!1616296))

(check-sat (not b!5021486) (not b!5021297) (not b!5021358) (not b!5021338) (not d!1616168) (not b!5021344) (not b!5021367) (not b!5021184) (not d!1616152) (not b!5021335) (not d!1616144) (not b!5021294) (not d!1616202) (not b!5021451) (not d!1616208) (not d!1616158) (not b!5021326) (not b!5021480) (not b!5021215) (not b!5021397) (not b!5021266) (not b!5021436) (not b!5021404) (not bm!350614) (not b!5021515) (not b!5021329) (not b!5021259) (not b!5021319) (not b!5021351) (not b!5021278) (not d!1616266) (not d!1616154) (not b!5021342) (not d!1616192) (not b!5021485) (not b!5021263) (not bm!350616) (not b!5021219) (not b!5021432) (not d!1616226) (not d!1616252) (not b!5021191) (not b!5021479) (not b!5021318) (not b!5021442) (not b!5021265) (not b!5021369) (not b!5021398) (not b!5021512) tp_is_empty!36637 (not b_lambda!198675) (not b!5021334) (not b!5021469) (not bm!350613) (not b!5021298) (not b!5021513) (not b!5021300) (not b!5021331) (not d!1616142) (not b!5021289) (not b!5021270) (not b!5021396) (not d!1616222) (not b!5021361) (not b!5021462) (not b!5021360) (not b!5021408) (not b!5021446) (not b!5021256) (not d!1616290) (not b!5021482) (not b!5021190) (not d!1616136) (not bm!350615) (not b!5021461) (not b!5021189) (not b!5021516) (not d!1616278) (not b!5021187) (not d!1616282) (not b!5021273) (not bm!350617) (not d!1616216) (not b!5021441) (not d!1616246) (not b!5021339) (not d!1616276) (not b!5021223) (not d!1616286) (not b!5021444) (not b!5021395) (not d!1616224) (not b!5021255) (not b!5021399) (not d!1616122) (not b!5021355) (not b!5021332) (not d!1616206) (not b!5021472) (not b!5021185) (not d!1616194) (not b!5021471) (not b!5021365) (not b!5021362) (not b!5021295) (not b!5021243) (not d!1616220) (not d!1616218) (not b!5021345) (not b!5021481) (not b!5021314) (not b!5021292) (not b!5021222) (not b!5021336) (not b!5021439) (not b!5021474) (not b!5021456) (not bs!1187320) (not b!5021257) (not d!1616294) (not b!5021201) (not b!5021207) (not d!1616288) (not b!5021484) (not b!5021180) (not b!5021400) (not b!5021350) (not b!5021313) (not d!1616198) (not b!5021239) (not d!1616118) (not d!1616148) (not b!5021466) (not b!5021199) (not d!1616190) (not b!5021459) (not b!5021325) (not b!5021409) (not b!5021363) (not b!5021241) (not d!1616156) (not d!1616166) (not b!5021483) (not b!5021251) (not b!5021317) (not b!5021242) (not setNonEmpty!28703) (not d!1616172) (not d!1616268) (not bm!350619) (not b!5021221) (not b!5021217) (not b!5021260) (not b!5021281) (not d!1616120) (not b!5021272) (not b!5021267) (not b!5021452) (not d!1616204) (not b!5021302) (not d!1616164) (not b!5021211) (not b!5021250) (not b!5021209) (not b!5021224) (not b!5021514) (not b!5021401))
(check-sat)
