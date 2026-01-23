; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212878 () Bool)

(assert start!212878)

(declare-fun b!2194462 () Bool)

(declare-fun e!1402453 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2194462 (= e!1402453 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2194463 () Bool)

(declare-fun e!1402446 () Bool)

(declare-fun e!1402447 () Bool)

(assert (=> b!2194463 (= e!1402446 e!1402447)))

(declare-fun res!943472 () Bool)

(assert (=> b!2194463 (=> (not res!943472) (not e!1402447))))

(declare-fun lt!820750 () Int)

(declare-fun lt!820756 () Int)

(assert (=> b!2194463 (= res!943472 (= lt!820750 lt!820756))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12468 0))(
  ( (C!12469 (val!7220 Int)) )
))
(declare-datatypes ((Regex!6161 0))(
  ( (ElementMatch!6161 (c!349274 C!12468)) (Concat!10463 (regOne!12834 Regex!6161) (regTwo!12834 Regex!6161)) (EmptyExpr!6161) (Star!6161 (reg!6490 Regex!6161)) (EmptyLang!6161) (Union!6161 (regOne!12835 Regex!6161) (regTwo!12835 Regex!6161)) )
))
(declare-datatypes ((List!25604 0))(
  ( (Nil!25520) (Cons!25520 (h!30921 Regex!6161) (t!198202 List!25604)) )
))
(declare-datatypes ((Context!3462 0))(
  ( (Context!3463 (exprs!2231 List!25604)) )
))
(declare-fun lt!820753 () (InoxSet Context!3462))

(declare-datatypes ((List!25605 0))(
  ( (Nil!25521) (Cons!25521 (h!30922 C!12468) (t!198203 List!25605)) )
))
(declare-datatypes ((IArray!16599 0))(
  ( (IArray!16600 (innerList!8357 List!25605)) )
))
(declare-datatypes ((Conc!8297 0))(
  ( (Node!8297 (left!19588 Conc!8297) (right!19918 Conc!8297) (csize!16824 Int) (cheight!8508 Int)) (Leaf!12145 (xs!11239 IArray!16599) (csize!16825 Int)) (Empty!8297) )
))
(declare-datatypes ((BalanceConc!16356 0))(
  ( (BalanceConc!16357 (c!349275 Conc!8297)) )
))
(declare-fun totalInput!923 () BalanceConc!16356)

(declare-fun lt!820757 () Int)

(declare-fun lt!820755 () Int)

(declare-fun furthestNullablePosition!331 ((InoxSet Context!3462) Int BalanceConc!16356 Int Int) Int)

(assert (=> b!2194463 (= lt!820756 (furthestNullablePosition!331 lt!820753 (+ 1 from!1114) totalInput!923 lt!820757 lt!820755))))

(declare-fun z!3955 () (InoxSet Context!3462))

(assert (=> b!2194463 (= lt!820750 (furthestNullablePosition!331 z!3955 from!1114 totalInput!923 lt!820757 lastNullablePos!193))))

(declare-fun e!1402455 () Int)

(assert (=> b!2194463 (= lt!820755 e!1402455)))

(declare-fun c!349273 () Bool)

(declare-fun nullableZipper!441 ((InoxSet Context!3462)) Bool)

(assert (=> b!2194463 (= c!349273 (nullableZipper!441 lt!820753))))

(declare-fun lt!820754 () C!12468)

(declare-fun derivationStepZipper!235 ((InoxSet Context!3462) C!12468) (InoxSet Context!3462))

(assert (=> b!2194463 (= lt!820753 (derivationStepZipper!235 z!3955 lt!820754))))

(declare-fun apply!6219 (BalanceConc!16356 Int) C!12468)

(assert (=> b!2194463 (= lt!820754 (apply!6219 totalInput!923 from!1114))))

(declare-fun b!2194464 () Bool)

(declare-fun e!1402449 () Bool)

(declare-fun tp!683750 () Bool)

(declare-fun inv!34153 (Conc!8297) Bool)

(assert (=> b!2194464 (= e!1402449 (and (inv!34153 (c!349275 totalInput!923)) tp!683750))))

(declare-fun b!2194465 () Bool)

(declare-fun res!943477 () Bool)

(assert (=> b!2194465 (=> (not res!943477) (not e!1402446))))

(assert (=> b!2194465 (= res!943477 (not (= from!1114 lt!820757)))))

(declare-fun b!2194466 () Bool)

(declare-fun e!1402454 () Bool)

(declare-fun tp!683752 () Bool)

(assert (=> b!2194466 (= e!1402454 tp!683752)))

(declare-fun res!943479 () Bool)

(declare-fun e!1402448 () Bool)

(assert (=> start!212878 (=> (not res!943479) (not e!1402448))))

(assert (=> start!212878 (= res!943479 (>= from!1114 0))))

(assert (=> start!212878 e!1402448))

(assert (=> start!212878 true))

(declare-fun inv!34154 (BalanceConc!16356) Bool)

(assert (=> start!212878 (and (inv!34154 totalInput!923) e!1402449)))

(declare-fun condSetEmpty!18738 () Bool)

(assert (=> start!212878 (= condSetEmpty!18738 (= z!3955 ((as const (Array Context!3462 Bool)) false)))))

(declare-fun setRes!18738 () Bool)

(assert (=> start!212878 setRes!18738))

(declare-fun b!2194467 () Bool)

(assert (=> b!2194467 (= e!1402448 e!1402446)))

(declare-fun res!943476 () Bool)

(assert (=> b!2194467 (=> (not res!943476) (not e!1402446))))

(assert (=> b!2194467 (= res!943476 (and (<= from!1114 lt!820757) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19899 (BalanceConc!16356) Int)

(assert (=> b!2194467 (= lt!820757 (size!19899 totalInput!923))))

(declare-fun b!2194468 () Bool)

(declare-fun e!1402450 () Bool)

(declare-fun e!1402452 () Bool)

(assert (=> b!2194468 (= e!1402450 e!1402452)))

(declare-fun res!943480 () Bool)

(assert (=> b!2194468 (=> res!943480 e!1402452)))

(declare-fun lt!820752 () List!25605)

(declare-fun matchZipper!257 ((InoxSet Context!3462) List!25605) Bool)

(assert (=> b!2194468 (= res!943480 (not (matchZipper!257 lt!820753 lt!820752)))))

(declare-fun lt!820749 () Int)

(declare-fun take!349 (List!25605 Int) List!25605)

(declare-fun drop!1359 (List!25605 Int) List!25605)

(declare-fun list!9813 (BalanceConc!16356) List!25605)

(assert (=> b!2194468 (= lt!820752 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))))

(declare-fun b!2194469 () Bool)

(declare-fun res!943481 () Bool)

(assert (=> b!2194469 (=> (not res!943481) (not e!1402446))))

(declare-fun lostCauseZipper!279 ((InoxSet Context!3462)) Bool)

(assert (=> b!2194469 (= res!943481 (not (lostCauseZipper!279 z!3955)))))

(declare-fun b!2194470 () Bool)

(assert (=> b!2194470 (= e!1402447 (not e!1402450))))

(declare-fun res!943475 () Bool)

(assert (=> b!2194470 (=> res!943475 e!1402450)))

(declare-fun lt!820758 () Bool)

(assert (=> b!2194470 (= res!943475 lt!820758)))

(declare-fun e!1402451 () Bool)

(assert (=> b!2194470 e!1402451))

(declare-fun res!943474 () Bool)

(assert (=> b!2194470 (=> res!943474 e!1402451)))

(assert (=> b!2194470 (= res!943474 lt!820758)))

(assert (=> b!2194470 (= lt!820758 (<= lt!820749 0))))

(assert (=> b!2194470 (= lt!820749 (+ 1 (- lt!820756 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38641 0))(
  ( (Unit!38642) )
))
(declare-fun lt!820751 () Unit!38641)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!160 ((InoxSet Context!3462) Int BalanceConc!16356 Int) Unit!38641)

(assert (=> b!2194470 (= lt!820751 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!160 lt!820753 (+ 1 from!1114) totalInput!923 lt!820755))))

(declare-fun b!2194471 () Bool)

(assert (=> b!2194471 (= e!1402455 from!1114)))

(declare-fun setNonEmpty!18738 () Bool)

(declare-fun tp!683751 () Bool)

(declare-fun setElem!18738 () Context!3462)

(declare-fun inv!34155 (Context!3462) Bool)

(assert (=> setNonEmpty!18738 (= setRes!18738 (and tp!683751 (inv!34155 setElem!18738) e!1402454))))

(declare-fun setRest!18738 () (InoxSet Context!3462))

(assert (=> setNonEmpty!18738 (= z!3955 ((_ map or) (store ((as const (Array Context!3462 Bool)) false) setElem!18738 true) setRest!18738))))

(declare-fun b!2194472 () Bool)

(assert (=> b!2194472 (= e!1402452 (matchZipper!257 z!3955 (Cons!25521 lt!820754 lt!820752)))))

(declare-fun b!2194473 () Bool)

(assert (=> b!2194473 (= e!1402451 (matchZipper!257 lt!820753 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)))))

(declare-fun setIsEmpty!18738 () Bool)

(assert (=> setIsEmpty!18738 setRes!18738))

(declare-fun b!2194474 () Bool)

(declare-fun res!943478 () Bool)

(assert (=> b!2194474 (=> (not res!943478) (not e!1402446))))

(assert (=> b!2194474 (= res!943478 e!1402453)))

(declare-fun res!943473 () Bool)

(assert (=> b!2194474 (=> res!943473 e!1402453)))

(assert (=> b!2194474 (= res!943473 (not (nullableZipper!441 z!3955)))))

(declare-fun b!2194475 () Bool)

(assert (=> b!2194475 (= e!1402455 lastNullablePos!193)))

(assert (= (and start!212878 res!943479) b!2194467))

(assert (= (and b!2194467 res!943476) b!2194474))

(assert (= (and b!2194474 (not res!943473)) b!2194462))

(assert (= (and b!2194474 res!943478) b!2194465))

(assert (= (and b!2194465 res!943477) b!2194469))

(assert (= (and b!2194469 res!943481) b!2194463))

(assert (= (and b!2194463 c!349273) b!2194471))

(assert (= (and b!2194463 (not c!349273)) b!2194475))

(assert (= (and b!2194463 res!943472) b!2194470))

(assert (= (and b!2194470 (not res!943474)) b!2194473))

(assert (= (and b!2194470 (not res!943475)) b!2194468))

(assert (= (and b!2194468 (not res!943480)) b!2194472))

(assert (= start!212878 b!2194464))

(assert (= (and start!212878 condSetEmpty!18738) setIsEmpty!18738))

(assert (= (and start!212878 (not condSetEmpty!18738)) setNonEmpty!18738))

(assert (= setNonEmpty!18738 b!2194466))

(declare-fun m!2636923 () Bool)

(assert (=> setNonEmpty!18738 m!2636923))

(declare-fun m!2636925 () Bool)

(assert (=> b!2194467 m!2636925))

(declare-fun m!2636927 () Bool)

(assert (=> b!2194469 m!2636927))

(declare-fun m!2636929 () Bool)

(assert (=> b!2194473 m!2636929))

(assert (=> b!2194473 m!2636929))

(declare-fun m!2636931 () Bool)

(assert (=> b!2194473 m!2636931))

(assert (=> b!2194473 m!2636931))

(declare-fun m!2636933 () Bool)

(assert (=> b!2194473 m!2636933))

(assert (=> b!2194473 m!2636933))

(declare-fun m!2636935 () Bool)

(assert (=> b!2194473 m!2636935))

(declare-fun m!2636937 () Bool)

(assert (=> b!2194468 m!2636937))

(assert (=> b!2194468 m!2636929))

(assert (=> b!2194468 m!2636929))

(assert (=> b!2194468 m!2636931))

(assert (=> b!2194468 m!2636931))

(assert (=> b!2194468 m!2636933))

(declare-fun m!2636939 () Bool)

(assert (=> b!2194474 m!2636939))

(declare-fun m!2636941 () Bool)

(assert (=> b!2194463 m!2636941))

(declare-fun m!2636943 () Bool)

(assert (=> b!2194463 m!2636943))

(declare-fun m!2636945 () Bool)

(assert (=> b!2194463 m!2636945))

(declare-fun m!2636947 () Bool)

(assert (=> b!2194463 m!2636947))

(declare-fun m!2636949 () Bool)

(assert (=> b!2194463 m!2636949))

(declare-fun m!2636951 () Bool)

(assert (=> b!2194472 m!2636951))

(declare-fun m!2636953 () Bool)

(assert (=> b!2194464 m!2636953))

(declare-fun m!2636955 () Bool)

(assert (=> start!212878 m!2636955))

(declare-fun m!2636957 () Bool)

(assert (=> b!2194470 m!2636957))

(check-sat (not b!2194473) (not b!2194463) (not b!2194474) (not b!2194469) (not setNonEmpty!18738) (not start!212878) (not b!2194467) (not b!2194472) (not b!2194466) (not b!2194468) (not b!2194470) (not b!2194464))
(check-sat)
(get-model)

(declare-fun d!656522 () Bool)

(declare-fun isBalanced!2559 (Conc!8297) Bool)

(assert (=> d!656522 (= (inv!34154 totalInput!923) (isBalanced!2559 (c!349275 totalInput!923)))))

(declare-fun bs!448636 () Bool)

(assert (= bs!448636 d!656522))

(declare-fun m!2636961 () Bool)

(assert (=> bs!448636 m!2636961))

(assert (=> start!212878 d!656522))

(declare-fun d!656528 () Bool)

(declare-fun e!1402472 () Bool)

(assert (=> d!656528 e!1402472))

(declare-fun res!943489 () Bool)

(assert (=> d!656528 (=> res!943489 e!1402472)))

(declare-fun lt!820768 () Int)

(assert (=> d!656528 (= res!943489 (<= lt!820768 0))))

(assert (=> d!656528 (= lt!820768 (+ (- (furthestNullablePosition!331 lt!820753 (+ 1 from!1114) totalInput!923 (size!19899 totalInput!923) lt!820755) (+ 1 from!1114)) 1))))

(declare-fun lt!820767 () Unit!38641)

(declare-fun choose!12983 ((InoxSet Context!3462) Int BalanceConc!16356 Int) Unit!38641)

(assert (=> d!656528 (= lt!820767 (choose!12983 lt!820753 (+ 1 from!1114) totalInput!923 lt!820755))))

(declare-fun e!1402471 () Bool)

(assert (=> d!656528 e!1402471))

(declare-fun res!943490 () Bool)

(assert (=> d!656528 (=> (not res!943490) (not e!1402471))))

(assert (=> d!656528 (= res!943490 (>= (+ 1 from!1114) 0))))

(assert (=> d!656528 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!160 lt!820753 (+ 1 from!1114) totalInput!923 lt!820755) lt!820767)))

(declare-fun b!2194499 () Bool)

(assert (=> b!2194499 (= e!1402471 (<= (+ 1 from!1114) (size!19899 totalInput!923)))))

(declare-fun b!2194500 () Bool)

(assert (=> b!2194500 (= e!1402472 (matchZipper!257 lt!820753 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820768)))))

(assert (= (and d!656528 res!943490) b!2194499))

(assert (= (and d!656528 (not res!943489)) b!2194500))

(assert (=> d!656528 m!2636925))

(assert (=> d!656528 m!2636925))

(declare-fun m!2636977 () Bool)

(assert (=> d!656528 m!2636977))

(declare-fun m!2636979 () Bool)

(assert (=> d!656528 m!2636979))

(assert (=> b!2194499 m!2636925))

(assert (=> b!2194500 m!2636929))

(assert (=> b!2194500 m!2636929))

(assert (=> b!2194500 m!2636931))

(assert (=> b!2194500 m!2636931))

(declare-fun m!2636981 () Bool)

(assert (=> b!2194500 m!2636981))

(assert (=> b!2194500 m!2636981))

(declare-fun m!2636983 () Bool)

(assert (=> b!2194500 m!2636983))

(assert (=> b!2194470 d!656528))

(declare-fun bs!448653 () Bool)

(declare-fun b!2194611 () Bool)

(declare-fun d!656534 () Bool)

(assert (= bs!448653 (and b!2194611 d!656534)))

(declare-fun lambda!82464 () Int)

(declare-fun lambda!82463 () Int)

(assert (=> bs!448653 (not (= lambda!82464 lambda!82463))))

(declare-fun bs!448654 () Bool)

(declare-fun b!2194612 () Bool)

(assert (= bs!448654 (and b!2194612 d!656534)))

(declare-fun lambda!82465 () Int)

(assert (=> bs!448654 (not (= lambda!82465 lambda!82463))))

(declare-fun bs!448655 () Bool)

(assert (= bs!448655 (and b!2194612 b!2194611)))

(assert (=> bs!448655 (= lambda!82465 lambda!82464)))

(declare-fun lt!820831 () Bool)

(declare-datatypes ((Option!5017 0))(
  ( (None!5016) (Some!5016 (v!29411 List!25605)) )
))
(declare-fun isEmpty!14576 (Option!5017) Bool)

(declare-fun getLanguageWitness!134 ((InoxSet Context!3462)) Option!5017)

(assert (=> d!656534 (= lt!820831 (isEmpty!14576 (getLanguageWitness!134 z!3955)))))

(declare-fun forall!5216 ((InoxSet Context!3462) Int) Bool)

(assert (=> d!656534 (= lt!820831 (forall!5216 z!3955 lambda!82463))))

(declare-fun lt!820837 () Unit!38641)

(declare-fun e!1402546 () Unit!38641)

(assert (=> d!656534 (= lt!820837 e!1402546)))

(declare-fun c!349338 () Bool)

(assert (=> d!656534 (= c!349338 (not (forall!5216 z!3955 lambda!82463)))))

(assert (=> d!656534 (= (lostCauseZipper!279 z!3955) lt!820831)))

(declare-datatypes ((List!25607 0))(
  ( (Nil!25523) (Cons!25523 (h!30924 Context!3462) (t!198205 List!25607)) )
))
(declare-fun lt!820834 () List!25607)

(declare-fun call!131931 () Bool)

(declare-fun bm!131925 () Bool)

(declare-fun lt!820832 () List!25607)

(declare-fun exists!805 (List!25607 Int) Bool)

(assert (=> bm!131925 (= call!131931 (exists!805 (ite c!349338 lt!820834 lt!820832) (ite c!349338 lambda!82464 lambda!82465)))))

(declare-fun Unit!38645 () Unit!38641)

(assert (=> b!2194611 (= e!1402546 Unit!38645)))

(declare-fun call!131930 () List!25607)

(assert (=> b!2194611 (= lt!820834 call!131930)))

(declare-fun lt!820836 () Unit!38641)

(declare-fun lemmaNotForallThenExists!42 (List!25607 Int) Unit!38641)

(assert (=> b!2194611 (= lt!820836 (lemmaNotForallThenExists!42 lt!820834 lambda!82463))))

(assert (=> b!2194611 call!131931))

(declare-fun lt!820838 () Unit!38641)

(assert (=> b!2194611 (= lt!820838 lt!820836)))

(declare-fun bm!131926 () Bool)

(declare-fun toList!1253 ((InoxSet Context!3462)) List!25607)

(assert (=> bm!131926 (= call!131930 (toList!1253 z!3955))))

(declare-fun Unit!38646 () Unit!38641)

(assert (=> b!2194612 (= e!1402546 Unit!38646)))

(assert (=> b!2194612 (= lt!820832 call!131930)))

(declare-fun lt!820833 () Unit!38641)

(declare-fun lemmaForallThenNotExists!42 (List!25607 Int) Unit!38641)

(assert (=> b!2194612 (= lt!820833 (lemmaForallThenNotExists!42 lt!820832 lambda!82463))))

(assert (=> b!2194612 (not call!131931)))

(declare-fun lt!820835 () Unit!38641)

(assert (=> b!2194612 (= lt!820835 lt!820833)))

(assert (= (and d!656534 c!349338) b!2194611))

(assert (= (and d!656534 (not c!349338)) b!2194612))

(assert (= (or b!2194611 b!2194612) bm!131925))

(assert (= (or b!2194611 b!2194612) bm!131926))

(declare-fun m!2637087 () Bool)

(assert (=> bm!131925 m!2637087))

(declare-fun m!2637089 () Bool)

(assert (=> bm!131926 m!2637089))

(declare-fun m!2637091 () Bool)

(assert (=> d!656534 m!2637091))

(assert (=> d!656534 m!2637091))

(declare-fun m!2637093 () Bool)

(assert (=> d!656534 m!2637093))

(declare-fun m!2637095 () Bool)

(assert (=> d!656534 m!2637095))

(assert (=> d!656534 m!2637095))

(declare-fun m!2637097 () Bool)

(assert (=> b!2194611 m!2637097))

(declare-fun m!2637099 () Bool)

(assert (=> b!2194612 m!2637099))

(assert (=> b!2194469 d!656534))

(declare-fun d!656564 () Bool)

(declare-fun c!349341 () Bool)

(get-info :version)

(assert (=> d!656564 (= c!349341 ((_ is Node!8297) (c!349275 totalInput!923)))))

(declare-fun e!1402551 () Bool)

(assert (=> d!656564 (= (inv!34153 (c!349275 totalInput!923)) e!1402551)))

(declare-fun b!2194619 () Bool)

(declare-fun inv!34159 (Conc!8297) Bool)

(assert (=> b!2194619 (= e!1402551 (inv!34159 (c!349275 totalInput!923)))))

(declare-fun b!2194620 () Bool)

(declare-fun e!1402552 () Bool)

(assert (=> b!2194620 (= e!1402551 e!1402552)))

(declare-fun res!943512 () Bool)

(assert (=> b!2194620 (= res!943512 (not ((_ is Leaf!12145) (c!349275 totalInput!923))))))

(assert (=> b!2194620 (=> res!943512 e!1402552)))

(declare-fun b!2194621 () Bool)

(declare-fun inv!34160 (Conc!8297) Bool)

(assert (=> b!2194621 (= e!1402552 (inv!34160 (c!349275 totalInput!923)))))

(assert (= (and d!656564 c!349341) b!2194619))

(assert (= (and d!656564 (not c!349341)) b!2194620))

(assert (= (and b!2194620 (not res!943512)) b!2194621))

(declare-fun m!2637101 () Bool)

(assert (=> b!2194619 m!2637101))

(declare-fun m!2637103 () Bool)

(assert (=> b!2194621 m!2637103))

(assert (=> b!2194464 d!656564))

(declare-fun d!656566 () Bool)

(assert (=> d!656566 true))

(declare-fun lambda!82468 () Int)

(declare-fun flatMap!148 ((InoxSet Context!3462) Int) (InoxSet Context!3462))

(assert (=> d!656566 (= (derivationStepZipper!235 z!3955 lt!820754) (flatMap!148 z!3955 lambda!82468))))

(declare-fun bs!448656 () Bool)

(assert (= bs!448656 d!656566))

(declare-fun m!2637105 () Bool)

(assert (=> bs!448656 m!2637105))

(assert (=> b!2194463 d!656566))

(declare-fun b!2194634 () Bool)

(declare-fun e!1402559 () Int)

(assert (=> b!2194634 (= e!1402559 lt!820755)))

(declare-fun b!2194635 () Bool)

(declare-fun e!1402560 () Bool)

(assert (=> b!2194635 (= e!1402560 (lostCauseZipper!279 lt!820753))))

(declare-fun b!2194636 () Bool)

(assert (=> b!2194636 (= e!1402559 (+ 1 from!1114))))

(declare-fun d!656568 () Bool)

(declare-fun lt!820843 () Int)

(assert (=> d!656568 (and (>= lt!820843 (- 1)) (< lt!820843 lt!820757) (>= lt!820843 lt!820755) (or (= lt!820843 lt!820755) (>= lt!820843 (+ 1 from!1114))))))

(declare-fun e!1402561 () Int)

(assert (=> d!656568 (= lt!820843 e!1402561)))

(declare-fun c!349348 () Bool)

(assert (=> d!656568 (= c!349348 e!1402560)))

(declare-fun res!943515 () Bool)

(assert (=> d!656568 (=> res!943515 e!1402560)))

(assert (=> d!656568 (= res!943515 (= (+ 1 from!1114) lt!820757))))

(assert (=> d!656568 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!820757))))

(assert (=> d!656568 (= (furthestNullablePosition!331 lt!820753 (+ 1 from!1114) totalInput!923 lt!820757 lt!820755) lt!820843)))

(declare-fun b!2194637 () Bool)

(assert (=> b!2194637 (= e!1402561 lt!820755)))

(declare-fun b!2194638 () Bool)

(declare-fun lt!820844 () (InoxSet Context!3462))

(assert (=> b!2194638 (= e!1402561 (furthestNullablePosition!331 lt!820844 (+ 1 from!1114 1) totalInput!923 lt!820757 e!1402559))))

(assert (=> b!2194638 (= lt!820844 (derivationStepZipper!235 lt!820753 (apply!6219 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!349349 () Bool)

(assert (=> b!2194638 (= c!349349 (nullableZipper!441 lt!820844))))

(assert (= (and d!656568 (not res!943515)) b!2194635))

(assert (= (and d!656568 c!349348) b!2194637))

(assert (= (and d!656568 (not c!349348)) b!2194638))

(assert (= (and b!2194638 c!349349) b!2194636))

(assert (= (and b!2194638 (not c!349349)) b!2194634))

(declare-fun m!2637107 () Bool)

(assert (=> b!2194635 m!2637107))

(declare-fun m!2637109 () Bool)

(assert (=> b!2194638 m!2637109))

(declare-fun m!2637111 () Bool)

(assert (=> b!2194638 m!2637111))

(assert (=> b!2194638 m!2637111))

(declare-fun m!2637113 () Bool)

(assert (=> b!2194638 m!2637113))

(declare-fun m!2637115 () Bool)

(assert (=> b!2194638 m!2637115))

(assert (=> b!2194463 d!656568))

(declare-fun bs!448657 () Bool)

(declare-fun d!656570 () Bool)

(assert (= bs!448657 (and d!656570 d!656534)))

(declare-fun lambda!82471 () Int)

(assert (=> bs!448657 (not (= lambda!82471 lambda!82463))))

(declare-fun bs!448658 () Bool)

(assert (= bs!448658 (and d!656570 b!2194611)))

(assert (=> bs!448658 (not (= lambda!82471 lambda!82464))))

(declare-fun bs!448659 () Bool)

(assert (= bs!448659 (and d!656570 b!2194612)))

(assert (=> bs!448659 (not (= lambda!82471 lambda!82465))))

(declare-fun exists!806 ((InoxSet Context!3462) Int) Bool)

(assert (=> d!656570 (= (nullableZipper!441 lt!820753) (exists!806 lt!820753 lambda!82471))))

(declare-fun bs!448660 () Bool)

(assert (= bs!448660 d!656570))

(declare-fun m!2637117 () Bool)

(assert (=> bs!448660 m!2637117))

(assert (=> b!2194463 d!656570))

(declare-fun d!656572 () Bool)

(declare-fun lt!820847 () C!12468)

(declare-fun apply!6222 (List!25605 Int) C!12468)

(assert (=> d!656572 (= lt!820847 (apply!6222 (list!9813 totalInput!923) from!1114))))

(declare-fun apply!6223 (Conc!8297 Int) C!12468)

(assert (=> d!656572 (= lt!820847 (apply!6223 (c!349275 totalInput!923) from!1114))))

(declare-fun e!1402564 () Bool)

(assert (=> d!656572 e!1402564))

(declare-fun res!943518 () Bool)

(assert (=> d!656572 (=> (not res!943518) (not e!1402564))))

(assert (=> d!656572 (= res!943518 (<= 0 from!1114))))

(assert (=> d!656572 (= (apply!6219 totalInput!923 from!1114) lt!820847)))

(declare-fun b!2194641 () Bool)

(assert (=> b!2194641 (= e!1402564 (< from!1114 (size!19899 totalInput!923)))))

(assert (= (and d!656572 res!943518) b!2194641))

(assert (=> d!656572 m!2636929))

(assert (=> d!656572 m!2636929))

(declare-fun m!2637119 () Bool)

(assert (=> d!656572 m!2637119))

(declare-fun m!2637121 () Bool)

(assert (=> d!656572 m!2637121))

(assert (=> b!2194641 m!2636925))

(assert (=> b!2194463 d!656572))

(declare-fun b!2194642 () Bool)

(declare-fun e!1402565 () Int)

(assert (=> b!2194642 (= e!1402565 lastNullablePos!193)))

(declare-fun b!2194643 () Bool)

(declare-fun e!1402566 () Bool)

(assert (=> b!2194643 (= e!1402566 (lostCauseZipper!279 z!3955))))

(declare-fun b!2194644 () Bool)

(assert (=> b!2194644 (= e!1402565 from!1114)))

(declare-fun d!656574 () Bool)

(declare-fun lt!820848 () Int)

(assert (=> d!656574 (and (>= lt!820848 (- 1)) (< lt!820848 lt!820757) (>= lt!820848 lastNullablePos!193) (or (= lt!820848 lastNullablePos!193) (>= lt!820848 from!1114)))))

(declare-fun e!1402567 () Int)

(assert (=> d!656574 (= lt!820848 e!1402567)))

(declare-fun c!349352 () Bool)

(assert (=> d!656574 (= c!349352 e!1402566)))

(declare-fun res!943519 () Bool)

(assert (=> d!656574 (=> res!943519 e!1402566)))

(assert (=> d!656574 (= res!943519 (= from!1114 lt!820757))))

(assert (=> d!656574 (and (>= from!1114 0) (<= from!1114 lt!820757))))

(assert (=> d!656574 (= (furthestNullablePosition!331 z!3955 from!1114 totalInput!923 lt!820757 lastNullablePos!193) lt!820848)))

(declare-fun b!2194645 () Bool)

(assert (=> b!2194645 (= e!1402567 lastNullablePos!193)))

(declare-fun b!2194646 () Bool)

(declare-fun lt!820849 () (InoxSet Context!3462))

(assert (=> b!2194646 (= e!1402567 (furthestNullablePosition!331 lt!820849 (+ from!1114 1) totalInput!923 lt!820757 e!1402565))))

(assert (=> b!2194646 (= lt!820849 (derivationStepZipper!235 z!3955 (apply!6219 totalInput!923 from!1114)))))

(declare-fun c!349353 () Bool)

(assert (=> b!2194646 (= c!349353 (nullableZipper!441 lt!820849))))

(assert (= (and d!656574 (not res!943519)) b!2194643))

(assert (= (and d!656574 c!349352) b!2194645))

(assert (= (and d!656574 (not c!349352)) b!2194646))

(assert (= (and b!2194646 c!349353) b!2194644))

(assert (= (and b!2194646 (not c!349353)) b!2194642))

(assert (=> b!2194643 m!2636927))

(declare-fun m!2637123 () Bool)

(assert (=> b!2194646 m!2637123))

(assert (=> b!2194646 m!2636945))

(assert (=> b!2194646 m!2636945))

(declare-fun m!2637125 () Bool)

(assert (=> b!2194646 m!2637125))

(declare-fun m!2637127 () Bool)

(assert (=> b!2194646 m!2637127))

(assert (=> b!2194463 d!656574))

(declare-fun c!349356 () Bool)

(declare-fun d!656576 () Bool)

(declare-fun isEmpty!14577 (List!25605) Bool)

(assert (=> d!656576 (= c!349356 (isEmpty!14577 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)))))

(declare-fun e!1402570 () Bool)

(assert (=> d!656576 (= (matchZipper!257 lt!820753 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)) e!1402570)))

(declare-fun b!2194651 () Bool)

(assert (=> b!2194651 (= e!1402570 (nullableZipper!441 lt!820753))))

(declare-fun b!2194652 () Bool)

(declare-fun head!4682 (List!25605) C!12468)

(declare-fun tail!3154 (List!25605) List!25605)

(assert (=> b!2194652 (= e!1402570 (matchZipper!257 (derivationStepZipper!235 lt!820753 (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))) (tail!3154 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))))))

(assert (= (and d!656576 c!349356) b!2194651))

(assert (= (and d!656576 (not c!349356)) b!2194652))

(assert (=> d!656576 m!2636933))

(declare-fun m!2637129 () Bool)

(assert (=> d!656576 m!2637129))

(assert (=> b!2194651 m!2636943))

(assert (=> b!2194652 m!2636933))

(declare-fun m!2637131 () Bool)

(assert (=> b!2194652 m!2637131))

(assert (=> b!2194652 m!2637131))

(declare-fun m!2637133 () Bool)

(assert (=> b!2194652 m!2637133))

(assert (=> b!2194652 m!2636933))

(declare-fun m!2637135 () Bool)

(assert (=> b!2194652 m!2637135))

(assert (=> b!2194652 m!2637133))

(assert (=> b!2194652 m!2637135))

(declare-fun m!2637137 () Bool)

(assert (=> b!2194652 m!2637137))

(assert (=> b!2194473 d!656576))

(declare-fun b!2194667 () Bool)

(declare-fun e!1402580 () Int)

(declare-fun size!19902 (List!25605) Int)

(assert (=> b!2194667 (= e!1402580 (size!19902 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2194668 () Bool)

(declare-fun e!1402579 () Bool)

(declare-fun lt!820852 () List!25605)

(declare-fun e!1402582 () Int)

(assert (=> b!2194668 (= e!1402579 (= (size!19902 lt!820852) e!1402582))))

(declare-fun c!349365 () Bool)

(assert (=> b!2194668 (= c!349365 (<= lt!820749 0))))

(declare-fun d!656578 () Bool)

(assert (=> d!656578 e!1402579))

(declare-fun res!943522 () Bool)

(assert (=> d!656578 (=> (not res!943522) (not e!1402579))))

(declare-fun content!3465 (List!25605) (InoxSet C!12468))

(assert (=> d!656578 (= res!943522 (= ((_ map implies) (content!3465 lt!820852) (content!3465 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)))) ((as const (InoxSet C!12468)) true)))))

(declare-fun e!1402581 () List!25605)

(assert (=> d!656578 (= lt!820852 e!1402581)))

(declare-fun c!349364 () Bool)

(assert (=> d!656578 (= c!349364 (or ((_ is Nil!25521) (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) (<= lt!820749 0)))))

(assert (=> d!656578 (= (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749) lt!820852)))

(declare-fun b!2194669 () Bool)

(assert (=> b!2194669 (= e!1402581 (Cons!25521 (h!30922 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) (take!349 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) (- lt!820749 1))))))

(declare-fun b!2194670 () Bool)

(assert (=> b!2194670 (= e!1402582 e!1402580)))

(declare-fun c!349363 () Bool)

(assert (=> b!2194670 (= c!349363 (>= lt!820749 (size!19902 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2194671 () Bool)

(assert (=> b!2194671 (= e!1402580 lt!820749)))

(declare-fun b!2194672 () Bool)

(assert (=> b!2194672 (= e!1402581 Nil!25521)))

(declare-fun b!2194673 () Bool)

(assert (=> b!2194673 (= e!1402582 0)))

(assert (= (and d!656578 c!349364) b!2194672))

(assert (= (and d!656578 (not c!349364)) b!2194669))

(assert (= (and d!656578 res!943522) b!2194668))

(assert (= (and b!2194668 c!349365) b!2194673))

(assert (= (and b!2194668 (not c!349365)) b!2194670))

(assert (= (and b!2194670 c!349363) b!2194667))

(assert (= (and b!2194670 (not c!349363)) b!2194671))

(declare-fun m!2637139 () Bool)

(assert (=> d!656578 m!2637139))

(assert (=> d!656578 m!2636931))

(declare-fun m!2637141 () Bool)

(assert (=> d!656578 m!2637141))

(declare-fun m!2637143 () Bool)

(assert (=> b!2194668 m!2637143))

(assert (=> b!2194667 m!2636931))

(declare-fun m!2637145 () Bool)

(assert (=> b!2194667 m!2637145))

(assert (=> b!2194670 m!2636931))

(assert (=> b!2194670 m!2637145))

(declare-fun m!2637147 () Bool)

(assert (=> b!2194669 m!2637147))

(assert (=> b!2194473 d!656578))

(declare-fun d!656580 () Bool)

(declare-fun e!1402597 () Bool)

(assert (=> d!656580 e!1402597))

(declare-fun res!943525 () Bool)

(assert (=> d!656580 (=> (not res!943525) (not e!1402597))))

(declare-fun lt!820855 () List!25605)

(assert (=> d!656580 (= res!943525 (= ((_ map implies) (content!3465 lt!820855) (content!3465 (list!9813 totalInput!923))) ((as const (InoxSet C!12468)) true)))))

(declare-fun e!1402594 () List!25605)

(assert (=> d!656580 (= lt!820855 e!1402594)))

(declare-fun c!349375 () Bool)

(assert (=> d!656580 (= c!349375 ((_ is Nil!25521) (list!9813 totalInput!923)))))

(assert (=> d!656580 (= (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820855)))

(declare-fun b!2194692 () Bool)

(declare-fun e!1402596 () Int)

(assert (=> b!2194692 (= e!1402597 (= (size!19902 lt!820855) e!1402596))))

(declare-fun c!349374 () Bool)

(assert (=> b!2194692 (= c!349374 (<= (+ 1 from!1114) 0))))

(declare-fun b!2194693 () Bool)

(declare-fun e!1402593 () List!25605)

(assert (=> b!2194693 (= e!1402593 (drop!1359 (t!198203 (list!9813 totalInput!923)) (- (+ 1 from!1114) 1)))))

(declare-fun b!2194694 () Bool)

(assert (=> b!2194694 (= e!1402594 e!1402593)))

(declare-fun c!349376 () Bool)

(assert (=> b!2194694 (= c!349376 (<= (+ 1 from!1114) 0))))

(declare-fun b!2194695 () Bool)

(assert (=> b!2194695 (= e!1402594 Nil!25521)))

(declare-fun b!2194696 () Bool)

(declare-fun call!131934 () Int)

(assert (=> b!2194696 (= e!1402596 call!131934)))

(declare-fun b!2194697 () Bool)

(declare-fun e!1402595 () Int)

(assert (=> b!2194697 (= e!1402595 (- call!131934 (+ 1 from!1114)))))

(declare-fun b!2194698 () Bool)

(assert (=> b!2194698 (= e!1402593 (list!9813 totalInput!923))))

(declare-fun b!2194699 () Bool)

(assert (=> b!2194699 (= e!1402596 e!1402595)))

(declare-fun c!349377 () Bool)

(assert (=> b!2194699 (= c!349377 (>= (+ 1 from!1114) call!131934))))

(declare-fun b!2194700 () Bool)

(assert (=> b!2194700 (= e!1402595 0)))

(declare-fun bm!131929 () Bool)

(assert (=> bm!131929 (= call!131934 (size!19902 (list!9813 totalInput!923)))))

(assert (= (and d!656580 c!349375) b!2194695))

(assert (= (and d!656580 (not c!349375)) b!2194694))

(assert (= (and b!2194694 c!349376) b!2194698))

(assert (= (and b!2194694 (not c!349376)) b!2194693))

(assert (= (and d!656580 res!943525) b!2194692))

(assert (= (and b!2194692 c!349374) b!2194696))

(assert (= (and b!2194692 (not c!349374)) b!2194699))

(assert (= (and b!2194699 c!349377) b!2194700))

(assert (= (and b!2194699 (not c!349377)) b!2194697))

(assert (= (or b!2194696 b!2194699 b!2194697) bm!131929))

(declare-fun m!2637149 () Bool)

(assert (=> d!656580 m!2637149))

(assert (=> d!656580 m!2636929))

(declare-fun m!2637151 () Bool)

(assert (=> d!656580 m!2637151))

(declare-fun m!2637153 () Bool)

(assert (=> b!2194692 m!2637153))

(declare-fun m!2637155 () Bool)

(assert (=> b!2194693 m!2637155))

(assert (=> bm!131929 m!2636929))

(declare-fun m!2637157 () Bool)

(assert (=> bm!131929 m!2637157))

(assert (=> b!2194473 d!656580))

(declare-fun d!656582 () Bool)

(declare-fun list!9815 (Conc!8297) List!25605)

(assert (=> d!656582 (= (list!9813 totalInput!923) (list!9815 (c!349275 totalInput!923)))))

(declare-fun bs!448661 () Bool)

(assert (= bs!448661 d!656582))

(declare-fun m!2637159 () Bool)

(assert (=> bs!448661 m!2637159))

(assert (=> b!2194473 d!656582))

(declare-fun d!656584 () Bool)

(declare-fun c!349378 () Bool)

(assert (=> d!656584 (= c!349378 (isEmpty!14577 (Cons!25521 lt!820754 lt!820752)))))

(declare-fun e!1402598 () Bool)

(assert (=> d!656584 (= (matchZipper!257 z!3955 (Cons!25521 lt!820754 lt!820752)) e!1402598)))

(declare-fun b!2194701 () Bool)

(assert (=> b!2194701 (= e!1402598 (nullableZipper!441 z!3955))))

(declare-fun b!2194702 () Bool)

(assert (=> b!2194702 (= e!1402598 (matchZipper!257 (derivationStepZipper!235 z!3955 (head!4682 (Cons!25521 lt!820754 lt!820752))) (tail!3154 (Cons!25521 lt!820754 lt!820752))))))

(assert (= (and d!656584 c!349378) b!2194701))

(assert (= (and d!656584 (not c!349378)) b!2194702))

(declare-fun m!2637161 () Bool)

(assert (=> d!656584 m!2637161))

(assert (=> b!2194701 m!2636939))

(declare-fun m!2637163 () Bool)

(assert (=> b!2194702 m!2637163))

(assert (=> b!2194702 m!2637163))

(declare-fun m!2637165 () Bool)

(assert (=> b!2194702 m!2637165))

(declare-fun m!2637167 () Bool)

(assert (=> b!2194702 m!2637167))

(assert (=> b!2194702 m!2637165))

(assert (=> b!2194702 m!2637167))

(declare-fun m!2637169 () Bool)

(assert (=> b!2194702 m!2637169))

(assert (=> b!2194472 d!656584))

(declare-fun d!656586 () Bool)

(declare-fun c!349379 () Bool)

(assert (=> d!656586 (= c!349379 (isEmpty!14577 lt!820752))))

(declare-fun e!1402599 () Bool)

(assert (=> d!656586 (= (matchZipper!257 lt!820753 lt!820752) e!1402599)))

(declare-fun b!2194703 () Bool)

(assert (=> b!2194703 (= e!1402599 (nullableZipper!441 lt!820753))))

(declare-fun b!2194704 () Bool)

(assert (=> b!2194704 (= e!1402599 (matchZipper!257 (derivationStepZipper!235 lt!820753 (head!4682 lt!820752)) (tail!3154 lt!820752)))))

(assert (= (and d!656586 c!349379) b!2194703))

(assert (= (and d!656586 (not c!349379)) b!2194704))

(declare-fun m!2637171 () Bool)

(assert (=> d!656586 m!2637171))

(assert (=> b!2194703 m!2636943))

(declare-fun m!2637173 () Bool)

(assert (=> b!2194704 m!2637173))

(assert (=> b!2194704 m!2637173))

(declare-fun m!2637175 () Bool)

(assert (=> b!2194704 m!2637175))

(declare-fun m!2637177 () Bool)

(assert (=> b!2194704 m!2637177))

(assert (=> b!2194704 m!2637175))

(assert (=> b!2194704 m!2637177))

(declare-fun m!2637179 () Bool)

(assert (=> b!2194704 m!2637179))

(assert (=> b!2194468 d!656586))

(assert (=> b!2194468 d!656578))

(assert (=> b!2194468 d!656580))

(assert (=> b!2194468 d!656582))

(declare-fun d!656588 () Bool)

(declare-fun lt!820858 () Int)

(assert (=> d!656588 (= lt!820858 (size!19902 (list!9813 totalInput!923)))))

(declare-fun size!19903 (Conc!8297) Int)

(assert (=> d!656588 (= lt!820858 (size!19903 (c!349275 totalInput!923)))))

(assert (=> d!656588 (= (size!19899 totalInput!923) lt!820858)))

(declare-fun bs!448662 () Bool)

(assert (= bs!448662 d!656588))

(assert (=> bs!448662 m!2636929))

(assert (=> bs!448662 m!2636929))

(assert (=> bs!448662 m!2637157))

(declare-fun m!2637181 () Bool)

(assert (=> bs!448662 m!2637181))

(assert (=> b!2194467 d!656588))

(declare-fun d!656590 () Bool)

(declare-fun lambda!82474 () Int)

(declare-fun forall!5217 (List!25604 Int) Bool)

(assert (=> d!656590 (= (inv!34155 setElem!18738) (forall!5217 (exprs!2231 setElem!18738) lambda!82474))))

(declare-fun bs!448663 () Bool)

(assert (= bs!448663 d!656590))

(declare-fun m!2637183 () Bool)

(assert (=> bs!448663 m!2637183))

(assert (=> setNonEmpty!18738 d!656590))

(declare-fun bs!448664 () Bool)

(declare-fun d!656592 () Bool)

(assert (= bs!448664 (and d!656592 d!656534)))

(declare-fun lambda!82475 () Int)

(assert (=> bs!448664 (not (= lambda!82475 lambda!82463))))

(declare-fun bs!448665 () Bool)

(assert (= bs!448665 (and d!656592 b!2194611)))

(assert (=> bs!448665 (not (= lambda!82475 lambda!82464))))

(declare-fun bs!448666 () Bool)

(assert (= bs!448666 (and d!656592 b!2194612)))

(assert (=> bs!448666 (not (= lambda!82475 lambda!82465))))

(declare-fun bs!448667 () Bool)

(assert (= bs!448667 (and d!656592 d!656570)))

(assert (=> bs!448667 (= lambda!82475 lambda!82471)))

(assert (=> d!656592 (= (nullableZipper!441 z!3955) (exists!806 z!3955 lambda!82475))))

(declare-fun bs!448668 () Bool)

(assert (= bs!448668 d!656592))

(declare-fun m!2637185 () Bool)

(assert (=> bs!448668 m!2637185))

(assert (=> b!2194474 d!656592))

(declare-fun tp!683782 () Bool)

(declare-fun b!2194713 () Bool)

(declare-fun e!1402604 () Bool)

(declare-fun tp!683780 () Bool)

(assert (=> b!2194713 (= e!1402604 (and (inv!34153 (left!19588 (c!349275 totalInput!923))) tp!683780 (inv!34153 (right!19918 (c!349275 totalInput!923))) tp!683782))))

(declare-fun b!2194715 () Bool)

(declare-fun e!1402605 () Bool)

(declare-fun tp!683781 () Bool)

(assert (=> b!2194715 (= e!1402605 tp!683781)))

(declare-fun b!2194714 () Bool)

(declare-fun inv!34161 (IArray!16599) Bool)

(assert (=> b!2194714 (= e!1402604 (and (inv!34161 (xs!11239 (c!349275 totalInput!923))) e!1402605))))

(assert (=> b!2194464 (= tp!683750 (and (inv!34153 (c!349275 totalInput!923)) e!1402604))))

(assert (= (and b!2194464 ((_ is Node!8297) (c!349275 totalInput!923))) b!2194713))

(assert (= b!2194714 b!2194715))

(assert (= (and b!2194464 ((_ is Leaf!12145) (c!349275 totalInput!923))) b!2194714))

(declare-fun m!2637187 () Bool)

(assert (=> b!2194713 m!2637187))

(declare-fun m!2637189 () Bool)

(assert (=> b!2194713 m!2637189))

(declare-fun m!2637191 () Bool)

(assert (=> b!2194714 m!2637191))

(assert (=> b!2194464 m!2636953))

(declare-fun condSetEmpty!18744 () Bool)

(assert (=> setNonEmpty!18738 (= condSetEmpty!18744 (= setRest!18738 ((as const (Array Context!3462 Bool)) false)))))

(declare-fun setRes!18744 () Bool)

(assert (=> setNonEmpty!18738 (= tp!683751 setRes!18744)))

(declare-fun setIsEmpty!18744 () Bool)

(assert (=> setIsEmpty!18744 setRes!18744))

(declare-fun setElem!18744 () Context!3462)

(declare-fun e!1402608 () Bool)

(declare-fun tp!683788 () Bool)

(declare-fun setNonEmpty!18744 () Bool)

(assert (=> setNonEmpty!18744 (= setRes!18744 (and tp!683788 (inv!34155 setElem!18744) e!1402608))))

(declare-fun setRest!18744 () (InoxSet Context!3462))

(assert (=> setNonEmpty!18744 (= setRest!18738 ((_ map or) (store ((as const (Array Context!3462 Bool)) false) setElem!18744 true) setRest!18744))))

(declare-fun b!2194720 () Bool)

(declare-fun tp!683787 () Bool)

(assert (=> b!2194720 (= e!1402608 tp!683787)))

(assert (= (and setNonEmpty!18738 condSetEmpty!18744) setIsEmpty!18744))

(assert (= (and setNonEmpty!18738 (not condSetEmpty!18744)) setNonEmpty!18744))

(assert (= setNonEmpty!18744 b!2194720))

(declare-fun m!2637193 () Bool)

(assert (=> setNonEmpty!18744 m!2637193))

(declare-fun b!2194725 () Bool)

(declare-fun e!1402611 () Bool)

(declare-fun tp!683793 () Bool)

(declare-fun tp!683794 () Bool)

(assert (=> b!2194725 (= e!1402611 (and tp!683793 tp!683794))))

(assert (=> b!2194466 (= tp!683752 e!1402611)))

(assert (= (and b!2194466 ((_ is Cons!25520) (exprs!2231 setElem!18738))) b!2194725))

(check-sat (not b!2194692) (not b!2194693) (not d!656570) (not d!656528) (not d!656576) (not d!656584) (not d!656588) (not b!2194638) (not d!656582) (not b!2194635) (not d!656586) (not bm!131929) (not b!2194651) (not d!656534) (not b!2194641) (not b!2194702) (not setNonEmpty!18744) (not b!2194621) (not b!2194704) (not bm!131925) (not b!2194713) (not d!656522) (not b!2194725) (not b!2194611) (not b!2194701) (not bm!131926) (not d!656572) (not b!2194669) (not d!656590) (not d!656566) (not b!2194646) (not b!2194668) (not b!2194720) (not b!2194499) (not b!2194714) (not b!2194670) (not d!656592) (not b!2194703) (not b!2194619) (not b!2194652) (not b!2194612) (not b!2194667) (not b!2194464) (not d!656580) (not b!2194500) (not d!656578) (not b!2194715) (not b!2194643))
(check-sat)
(get-model)

(declare-fun d!656690 () Bool)

(declare-fun lt!820907 () Int)

(assert (=> d!656690 (>= lt!820907 0)))

(declare-fun e!1402698 () Int)

(assert (=> d!656690 (= lt!820907 e!1402698)))

(declare-fun c!349442 () Bool)

(assert (=> d!656690 (= c!349442 ((_ is Nil!25521) lt!820852))))

(assert (=> d!656690 (= (size!19902 lt!820852) lt!820907)))

(declare-fun b!2194889 () Bool)

(assert (=> b!2194889 (= e!1402698 0)))

(declare-fun b!2194890 () Bool)

(assert (=> b!2194890 (= e!1402698 (+ 1 (size!19902 (t!198203 lt!820852))))))

(assert (= (and d!656690 c!349442) b!2194889))

(assert (= (and d!656690 (not c!349442)) b!2194890))

(declare-fun m!2637411 () Bool)

(assert (=> b!2194890 m!2637411))

(assert (=> b!2194668 d!656690))

(declare-fun d!656696 () Bool)

(assert (=> d!656696 (= (isEmpty!14577 (Cons!25521 lt!820754 lt!820752)) ((_ is Nil!25521) (Cons!25521 lt!820754 lt!820752)))))

(assert (=> d!656584 d!656696))

(assert (=> b!2194464 d!656564))

(declare-fun c!349444 () Bool)

(declare-fun d!656702 () Bool)

(assert (=> d!656702 (= c!349444 (isEmpty!14577 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820768)))))

(declare-fun e!1402700 () Bool)

(assert (=> d!656702 (= (matchZipper!257 lt!820753 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820768)) e!1402700)))

(declare-fun b!2194893 () Bool)

(assert (=> b!2194893 (= e!1402700 (nullableZipper!441 lt!820753))))

(declare-fun b!2194894 () Bool)

(assert (=> b!2194894 (= e!1402700 (matchZipper!257 (derivationStepZipper!235 lt!820753 (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820768))) (tail!3154 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820768))))))

(assert (= (and d!656702 c!349444) b!2194893))

(assert (= (and d!656702 (not c!349444)) b!2194894))

(assert (=> d!656702 m!2636981))

(declare-fun m!2637419 () Bool)

(assert (=> d!656702 m!2637419))

(assert (=> b!2194893 m!2636943))

(assert (=> b!2194894 m!2636981))

(declare-fun m!2637421 () Bool)

(assert (=> b!2194894 m!2637421))

(assert (=> b!2194894 m!2637421))

(declare-fun m!2637423 () Bool)

(assert (=> b!2194894 m!2637423))

(assert (=> b!2194894 m!2636981))

(declare-fun m!2637425 () Bool)

(assert (=> b!2194894 m!2637425))

(assert (=> b!2194894 m!2637423))

(assert (=> b!2194894 m!2637425))

(declare-fun m!2637427 () Bool)

(assert (=> b!2194894 m!2637427))

(assert (=> b!2194500 d!656702))

(declare-fun b!2194895 () Bool)

(declare-fun e!1402702 () Int)

(assert (=> b!2194895 (= e!1402702 (size!19902 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2194896 () Bool)

(declare-fun e!1402701 () Bool)

(declare-fun lt!820909 () List!25605)

(declare-fun e!1402704 () Int)

(assert (=> b!2194896 (= e!1402701 (= (size!19902 lt!820909) e!1402704))))

(declare-fun c!349447 () Bool)

(assert (=> b!2194896 (= c!349447 (<= lt!820768 0))))

(declare-fun d!656704 () Bool)

(assert (=> d!656704 e!1402701))

(declare-fun res!943577 () Bool)

(assert (=> d!656704 (=> (not res!943577) (not e!1402701))))

(assert (=> d!656704 (= res!943577 (= ((_ map implies) (content!3465 lt!820909) (content!3465 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)))) ((as const (InoxSet C!12468)) true)))))

(declare-fun e!1402703 () List!25605)

(assert (=> d!656704 (= lt!820909 e!1402703)))

(declare-fun c!349446 () Bool)

(assert (=> d!656704 (= c!349446 (or ((_ is Nil!25521) (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) (<= lt!820768 0)))))

(assert (=> d!656704 (= (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820768) lt!820909)))

(declare-fun b!2194897 () Bool)

(assert (=> b!2194897 (= e!1402703 (Cons!25521 (h!30922 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) (take!349 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) (- lt!820768 1))))))

(declare-fun b!2194898 () Bool)

(assert (=> b!2194898 (= e!1402704 e!1402702)))

(declare-fun c!349445 () Bool)

(assert (=> b!2194898 (= c!349445 (>= lt!820768 (size!19902 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2194899 () Bool)

(assert (=> b!2194899 (= e!1402702 lt!820768)))

(declare-fun b!2194900 () Bool)

(assert (=> b!2194900 (= e!1402703 Nil!25521)))

(declare-fun b!2194901 () Bool)

(assert (=> b!2194901 (= e!1402704 0)))

(assert (= (and d!656704 c!349446) b!2194900))

(assert (= (and d!656704 (not c!349446)) b!2194897))

(assert (= (and d!656704 res!943577) b!2194896))

(assert (= (and b!2194896 c!349447) b!2194901))

(assert (= (and b!2194896 (not c!349447)) b!2194898))

(assert (= (and b!2194898 c!349445) b!2194895))

(assert (= (and b!2194898 (not c!349445)) b!2194899))

(declare-fun m!2637429 () Bool)

(assert (=> d!656704 m!2637429))

(assert (=> d!656704 m!2636931))

(assert (=> d!656704 m!2637141))

(declare-fun m!2637431 () Bool)

(assert (=> b!2194896 m!2637431))

(assert (=> b!2194895 m!2636931))

(assert (=> b!2194895 m!2637145))

(assert (=> b!2194898 m!2636931))

(assert (=> b!2194898 m!2637145))

(declare-fun m!2637433 () Bool)

(assert (=> b!2194897 m!2637433))

(assert (=> b!2194500 d!656704))

(assert (=> b!2194500 d!656580))

(assert (=> b!2194500 d!656582))

(declare-fun d!656706 () Bool)

(declare-fun e!1402714 () Bool)

(assert (=> d!656706 e!1402714))

(declare-fun res!943587 () Bool)

(assert (=> d!656706 (=> (not res!943587) (not e!1402714))))

(declare-fun lt!820915 () List!25607)

(declare-fun noDuplicate!309 (List!25607) Bool)

(assert (=> d!656706 (= res!943587 (noDuplicate!309 lt!820915))))

(declare-fun choose!12986 ((InoxSet Context!3462)) List!25607)

(assert (=> d!656706 (= lt!820915 (choose!12986 z!3955))))

(assert (=> d!656706 (= (toList!1253 z!3955) lt!820915)))

(declare-fun b!2194911 () Bool)

(declare-fun content!3466 (List!25607) (InoxSet Context!3462))

(assert (=> b!2194911 (= e!1402714 (= (content!3466 lt!820915) z!3955))))

(assert (= (and d!656706 res!943587) b!2194911))

(declare-fun m!2637441 () Bool)

(assert (=> d!656706 m!2637441))

(declare-fun m!2637443 () Bool)

(assert (=> d!656706 m!2637443))

(declare-fun m!2637445 () Bool)

(assert (=> b!2194911 m!2637445))

(assert (=> bm!131926 d!656706))

(declare-fun d!656710 () Bool)

(declare-fun res!943594 () Bool)

(declare-fun e!1402722 () Bool)

(assert (=> d!656710 (=> res!943594 e!1402722)))

(assert (=> d!656710 (= res!943594 ((_ is Nil!25520) (exprs!2231 setElem!18738)))))

(assert (=> d!656710 (= (forall!5217 (exprs!2231 setElem!18738) lambda!82474) e!1402722)))

(declare-fun b!2194920 () Bool)

(declare-fun e!1402723 () Bool)

(assert (=> b!2194920 (= e!1402722 e!1402723)))

(declare-fun res!943595 () Bool)

(assert (=> b!2194920 (=> (not res!943595) (not e!1402723))))

(declare-fun dynLambda!11440 (Int Regex!6161) Bool)

(assert (=> b!2194920 (= res!943595 (dynLambda!11440 lambda!82474 (h!30921 (exprs!2231 setElem!18738))))))

(declare-fun b!2194921 () Bool)

(assert (=> b!2194921 (= e!1402723 (forall!5217 (t!198202 (exprs!2231 setElem!18738)) lambda!82474))))

(assert (= (and d!656710 (not res!943594)) b!2194920))

(assert (= (and b!2194920 res!943595) b!2194921))

(declare-fun b_lambda!71151 () Bool)

(assert (=> (not b_lambda!71151) (not b!2194920)))

(declare-fun m!2637457 () Bool)

(assert (=> b!2194920 m!2637457))

(declare-fun m!2637459 () Bool)

(assert (=> b!2194921 m!2637459))

(assert (=> d!656590 d!656710))

(declare-fun bs!448756 () Bool)

(declare-fun d!656720 () Bool)

(assert (= bs!448756 (and d!656720 b!2194612)))

(declare-fun lambda!82499 () Int)

(assert (=> bs!448756 (not (= lambda!82499 lambda!82465))))

(declare-fun bs!448757 () Bool)

(assert (= bs!448757 (and d!656720 d!656570)))

(assert (=> bs!448757 (not (= lambda!82499 lambda!82471))))

(declare-fun bs!448758 () Bool)

(assert (= bs!448758 (and d!656720 b!2194611)))

(assert (=> bs!448758 (not (= lambda!82499 lambda!82464))))

(declare-fun bs!448759 () Bool)

(assert (= bs!448759 (and d!656720 d!656592)))

(assert (=> bs!448759 (not (= lambda!82499 lambda!82475))))

(declare-fun bs!448760 () Bool)

(assert (= bs!448760 (and d!656720 d!656534)))

(assert (=> bs!448760 (not (= lambda!82499 lambda!82463))))

(assert (=> d!656720 true))

(declare-fun order!14809 () Int)

(declare-fun dynLambda!11441 (Int Int) Int)

(assert (=> d!656720 (< (dynLambda!11441 order!14809 lambda!82463) (dynLambda!11441 order!14809 lambda!82499))))

(assert (=> d!656720 (not (exists!805 lt!820832 lambda!82499))))

(declare-fun lt!820920 () Unit!38641)

(declare-fun choose!12987 (List!25607 Int) Unit!38641)

(assert (=> d!656720 (= lt!820920 (choose!12987 lt!820832 lambda!82463))))

(declare-fun forall!5219 (List!25607 Int) Bool)

(assert (=> d!656720 (forall!5219 lt!820832 lambda!82463)))

(assert (=> d!656720 (= (lemmaForallThenNotExists!42 lt!820832 lambda!82463) lt!820920)))

(declare-fun bs!448761 () Bool)

(assert (= bs!448761 d!656720))

(declare-fun m!2637463 () Bool)

(assert (=> bs!448761 m!2637463))

(declare-fun m!2637465 () Bool)

(assert (=> bs!448761 m!2637465))

(declare-fun m!2637467 () Bool)

(assert (=> bs!448761 m!2637467))

(assert (=> b!2194612 d!656720))

(assert (=> b!2194499 d!656588))

(declare-fun bs!448774 () Bool)

(declare-fun d!656724 () Bool)

(assert (= bs!448774 (and d!656724 b!2194612)))

(declare-fun lambda!82505 () Int)

(assert (=> bs!448774 (not (= lambda!82505 lambda!82465))))

(declare-fun bs!448775 () Bool)

(assert (= bs!448775 (and d!656724 d!656570)))

(assert (=> bs!448775 (not (= lambda!82505 lambda!82471))))

(declare-fun bs!448776 () Bool)

(assert (= bs!448776 (and d!656724 d!656720)))

(assert (=> bs!448776 (= (= (ite c!349338 lambda!82464 lambda!82465) lambda!82463) (= lambda!82505 lambda!82499))))

(declare-fun bs!448777 () Bool)

(assert (= bs!448777 (and d!656724 b!2194611)))

(assert (=> bs!448777 (not (= lambda!82505 lambda!82464))))

(declare-fun bs!448779 () Bool)

(assert (= bs!448779 (and d!656724 d!656592)))

(assert (=> bs!448779 (not (= lambda!82505 lambda!82475))))

(declare-fun bs!448780 () Bool)

(assert (= bs!448780 (and d!656724 d!656534)))

(assert (=> bs!448780 (not (= lambda!82505 lambda!82463))))

(assert (=> d!656724 true))

(assert (=> d!656724 (< (dynLambda!11441 order!14809 (ite c!349338 lambda!82464 lambda!82465)) (dynLambda!11441 order!14809 lambda!82505))))

(assert (=> d!656724 (= (exists!805 (ite c!349338 lt!820834 lt!820832) (ite c!349338 lambda!82464 lambda!82465)) (not (forall!5219 (ite c!349338 lt!820834 lt!820832) lambda!82505)))))

(declare-fun bs!448781 () Bool)

(assert (= bs!448781 d!656724))

(declare-fun m!2637475 () Bool)

(assert (=> bs!448781 m!2637475))

(assert (=> bm!131925 d!656724))

(assert (=> b!2194643 d!656534))

(declare-fun bs!448782 () Bool)

(declare-fun d!656728 () Bool)

(assert (= bs!448782 (and d!656728 b!2194612)))

(declare-fun lambda!82506 () Int)

(assert (=> bs!448782 (not (= lambda!82506 lambda!82465))))

(declare-fun bs!448783 () Bool)

(assert (= bs!448783 (and d!656728 d!656570)))

(assert (=> bs!448783 (not (= lambda!82506 lambda!82471))))

(declare-fun bs!448784 () Bool)

(assert (= bs!448784 (and d!656728 d!656724)))

(assert (=> bs!448784 (not (= lambda!82506 lambda!82505))))

(declare-fun bs!448785 () Bool)

(assert (= bs!448785 (and d!656728 d!656720)))

(assert (=> bs!448785 (not (= lambda!82506 lambda!82499))))

(declare-fun bs!448786 () Bool)

(assert (= bs!448786 (and d!656728 b!2194611)))

(assert (=> bs!448786 (not (= lambda!82506 lambda!82464))))

(declare-fun bs!448787 () Bool)

(assert (= bs!448787 (and d!656728 d!656592)))

(assert (=> bs!448787 (not (= lambda!82506 lambda!82475))))

(declare-fun bs!448788 () Bool)

(assert (= bs!448788 (and d!656728 d!656534)))

(assert (=> bs!448788 (= lambda!82506 lambda!82463)))

(declare-fun bs!448789 () Bool)

(declare-fun b!2194926 () Bool)

(assert (= bs!448789 (and b!2194926 d!656728)))

(declare-fun lambda!82507 () Int)

(assert (=> bs!448789 (not (= lambda!82507 lambda!82506))))

(declare-fun bs!448790 () Bool)

(assert (= bs!448790 (and b!2194926 b!2194612)))

(assert (=> bs!448790 (= lambda!82507 lambda!82465)))

(declare-fun bs!448791 () Bool)

(assert (= bs!448791 (and b!2194926 d!656570)))

(assert (=> bs!448791 (not (= lambda!82507 lambda!82471))))

(declare-fun bs!448792 () Bool)

(assert (= bs!448792 (and b!2194926 d!656724)))

(assert (=> bs!448792 (not (= lambda!82507 lambda!82505))))

(declare-fun bs!448793 () Bool)

(assert (= bs!448793 (and b!2194926 d!656720)))

(assert (=> bs!448793 (not (= lambda!82507 lambda!82499))))

(declare-fun bs!448794 () Bool)

(assert (= bs!448794 (and b!2194926 b!2194611)))

(assert (=> bs!448794 (= lambda!82507 lambda!82464)))

(declare-fun bs!448795 () Bool)

(assert (= bs!448795 (and b!2194926 d!656592)))

(assert (=> bs!448795 (not (= lambda!82507 lambda!82475))))

(declare-fun bs!448796 () Bool)

(assert (= bs!448796 (and b!2194926 d!656534)))

(assert (=> bs!448796 (not (= lambda!82507 lambda!82463))))

(declare-fun bs!448797 () Bool)

(declare-fun b!2194927 () Bool)

(assert (= bs!448797 (and b!2194927 d!656728)))

(declare-fun lambda!82510 () Int)

(assert (=> bs!448797 (not (= lambda!82510 lambda!82506))))

(declare-fun bs!448798 () Bool)

(assert (= bs!448798 (and b!2194927 d!656570)))

(assert (=> bs!448798 (not (= lambda!82510 lambda!82471))))

(declare-fun bs!448799 () Bool)

(assert (= bs!448799 (and b!2194927 d!656724)))

(assert (=> bs!448799 (not (= lambda!82510 lambda!82505))))

(declare-fun bs!448800 () Bool)

(assert (= bs!448800 (and b!2194927 d!656720)))

(assert (=> bs!448800 (not (= lambda!82510 lambda!82499))))

(declare-fun bs!448801 () Bool)

(assert (= bs!448801 (and b!2194927 b!2194611)))

(assert (=> bs!448801 (= lambda!82510 lambda!82464)))

(declare-fun bs!448802 () Bool)

(assert (= bs!448802 (and b!2194927 b!2194612)))

(assert (=> bs!448802 (= lambda!82510 lambda!82465)))

(declare-fun bs!448803 () Bool)

(assert (= bs!448803 (and b!2194927 b!2194926)))

(assert (=> bs!448803 (= lambda!82510 lambda!82507)))

(declare-fun bs!448804 () Bool)

(assert (= bs!448804 (and b!2194927 d!656592)))

(assert (=> bs!448804 (not (= lambda!82510 lambda!82475))))

(declare-fun bs!448805 () Bool)

(assert (= bs!448805 (and b!2194927 d!656534)))

(assert (=> bs!448805 (not (= lambda!82510 lambda!82463))))

(declare-fun lt!820924 () Bool)

(assert (=> d!656728 (= lt!820924 (isEmpty!14576 (getLanguageWitness!134 lt!820753)))))

(assert (=> d!656728 (= lt!820924 (forall!5216 lt!820753 lambda!82506))))

(declare-fun lt!820930 () Unit!38641)

(declare-fun e!1402728 () Unit!38641)

(assert (=> d!656728 (= lt!820930 e!1402728)))

(declare-fun c!349449 () Bool)

(assert (=> d!656728 (= c!349449 (not (forall!5216 lt!820753 lambda!82506)))))

(assert (=> d!656728 (= (lostCauseZipper!279 lt!820753) lt!820924)))

(declare-fun lt!820927 () List!25607)

(declare-fun lt!820925 () List!25607)

(declare-fun call!131942 () Bool)

(declare-fun bm!131936 () Bool)

(assert (=> bm!131936 (= call!131942 (exists!805 (ite c!349449 lt!820927 lt!820925) (ite c!349449 lambda!82507 lambda!82510)))))

(declare-fun Unit!38649 () Unit!38641)

(assert (=> b!2194926 (= e!1402728 Unit!38649)))

(declare-fun call!131941 () List!25607)

(assert (=> b!2194926 (= lt!820927 call!131941)))

(declare-fun lt!820929 () Unit!38641)

(assert (=> b!2194926 (= lt!820929 (lemmaNotForallThenExists!42 lt!820927 lambda!82506))))

(assert (=> b!2194926 call!131942))

(declare-fun lt!820931 () Unit!38641)

(assert (=> b!2194926 (= lt!820931 lt!820929)))

(declare-fun bm!131937 () Bool)

(assert (=> bm!131937 (= call!131941 (toList!1253 lt!820753))))

(declare-fun Unit!38650 () Unit!38641)

(assert (=> b!2194927 (= e!1402728 Unit!38650)))

(assert (=> b!2194927 (= lt!820925 call!131941)))

(declare-fun lt!820926 () Unit!38641)

(assert (=> b!2194927 (= lt!820926 (lemmaForallThenNotExists!42 lt!820925 lambda!82506))))

(assert (=> b!2194927 (not call!131942)))

(declare-fun lt!820928 () Unit!38641)

(assert (=> b!2194927 (= lt!820928 lt!820926)))

(assert (= (and d!656728 c!349449) b!2194926))

(assert (= (and d!656728 (not c!349449)) b!2194927))

(assert (= (or b!2194926 b!2194927) bm!131936))

(assert (= (or b!2194926 b!2194927) bm!131937))

(declare-fun m!2637477 () Bool)

(assert (=> bm!131936 m!2637477))

(declare-fun m!2637479 () Bool)

(assert (=> bm!131937 m!2637479))

(declare-fun m!2637481 () Bool)

(assert (=> d!656728 m!2637481))

(assert (=> d!656728 m!2637481))

(declare-fun m!2637483 () Bool)

(assert (=> d!656728 m!2637483))

(declare-fun m!2637485 () Bool)

(assert (=> d!656728 m!2637485))

(assert (=> d!656728 m!2637485))

(declare-fun m!2637487 () Bool)

(assert (=> b!2194926 m!2637487))

(declare-fun m!2637489 () Bool)

(assert (=> b!2194927 m!2637489))

(assert (=> b!2194635 d!656728))

(declare-fun d!656730 () Bool)

(declare-fun lt!820935 () Int)

(assert (=> d!656730 (>= lt!820935 0)))

(declare-fun e!1402731 () Int)

(assert (=> d!656730 (= lt!820935 e!1402731)))

(declare-fun c!349450 () Bool)

(assert (=> d!656730 (= c!349450 ((_ is Nil!25521) (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))))))

(assert (=> d!656730 (= (size!19902 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) lt!820935)))

(declare-fun b!2194928 () Bool)

(assert (=> b!2194928 (= e!1402731 0)))

(declare-fun b!2194929 () Bool)

(assert (=> b!2194929 (= e!1402731 (+ 1 (size!19902 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))))))))

(assert (= (and d!656730 c!349450) b!2194928))

(assert (= (and d!656730 (not c!349450)) b!2194929))

(declare-fun m!2637491 () Bool)

(assert (=> b!2194929 m!2637491))

(assert (=> b!2194667 d!656730))

(declare-fun d!656732 () Bool)

(declare-fun c!349451 () Bool)

(assert (=> d!656732 (= c!349451 (isEmpty!14577 (tail!3154 lt!820752)))))

(declare-fun e!1402732 () Bool)

(assert (=> d!656732 (= (matchZipper!257 (derivationStepZipper!235 lt!820753 (head!4682 lt!820752)) (tail!3154 lt!820752)) e!1402732)))

(declare-fun b!2194930 () Bool)

(assert (=> b!2194930 (= e!1402732 (nullableZipper!441 (derivationStepZipper!235 lt!820753 (head!4682 lt!820752))))))

(declare-fun b!2194931 () Bool)

(assert (=> b!2194931 (= e!1402732 (matchZipper!257 (derivationStepZipper!235 (derivationStepZipper!235 lt!820753 (head!4682 lt!820752)) (head!4682 (tail!3154 lt!820752))) (tail!3154 (tail!3154 lt!820752))))))

(assert (= (and d!656732 c!349451) b!2194930))

(assert (= (and d!656732 (not c!349451)) b!2194931))

(assert (=> d!656732 m!2637177))

(declare-fun m!2637499 () Bool)

(assert (=> d!656732 m!2637499))

(assert (=> b!2194930 m!2637175))

(declare-fun m!2637501 () Bool)

(assert (=> b!2194930 m!2637501))

(assert (=> b!2194931 m!2637177))

(declare-fun m!2637503 () Bool)

(assert (=> b!2194931 m!2637503))

(assert (=> b!2194931 m!2637175))

(assert (=> b!2194931 m!2637503))

(declare-fun m!2637505 () Bool)

(assert (=> b!2194931 m!2637505))

(assert (=> b!2194931 m!2637177))

(declare-fun m!2637507 () Bool)

(assert (=> b!2194931 m!2637507))

(assert (=> b!2194931 m!2637505))

(assert (=> b!2194931 m!2637507))

(declare-fun m!2637509 () Bool)

(assert (=> b!2194931 m!2637509))

(assert (=> b!2194704 d!656732))

(declare-fun bs!448820 () Bool)

(declare-fun d!656734 () Bool)

(assert (= bs!448820 (and d!656734 d!656566)))

(declare-fun lambda!82512 () Int)

(assert (=> bs!448820 (= (= (head!4682 lt!820752) lt!820754) (= lambda!82512 lambda!82468))))

(assert (=> d!656734 true))

(assert (=> d!656734 (= (derivationStepZipper!235 lt!820753 (head!4682 lt!820752)) (flatMap!148 lt!820753 lambda!82512))))

(declare-fun bs!448821 () Bool)

(assert (= bs!448821 d!656734))

(declare-fun m!2637511 () Bool)

(assert (=> bs!448821 m!2637511))

(assert (=> b!2194704 d!656734))

(declare-fun d!656736 () Bool)

(assert (=> d!656736 (= (head!4682 lt!820752) (h!30922 lt!820752))))

(assert (=> b!2194704 d!656736))

(declare-fun d!656738 () Bool)

(assert (=> d!656738 (= (tail!3154 lt!820752) (t!198203 lt!820752))))

(assert (=> b!2194704 d!656738))

(declare-fun bs!448823 () Bool)

(declare-fun d!656740 () Bool)

(assert (= bs!448823 (and d!656740 d!656728)))

(declare-fun lambda!82515 () Int)

(assert (=> bs!448823 (not (= lambda!82515 lambda!82506))))

(declare-fun bs!448824 () Bool)

(assert (= bs!448824 (and d!656740 d!656570)))

(assert (=> bs!448824 (not (= lambda!82515 lambda!82471))))

(declare-fun bs!448825 () Bool)

(assert (= bs!448825 (and d!656740 d!656724)))

(assert (=> bs!448825 (= (= lambda!82463 (ite c!349338 lambda!82464 lambda!82465)) (= lambda!82515 lambda!82505))))

(declare-fun bs!448826 () Bool)

(assert (= bs!448826 (and d!656740 b!2194927)))

(assert (=> bs!448826 (not (= lambda!82515 lambda!82510))))

(declare-fun bs!448827 () Bool)

(assert (= bs!448827 (and d!656740 d!656720)))

(assert (=> bs!448827 (= lambda!82515 lambda!82499)))

(declare-fun bs!448828 () Bool)

(assert (= bs!448828 (and d!656740 b!2194611)))

(assert (=> bs!448828 (not (= lambda!82515 lambda!82464))))

(declare-fun bs!448829 () Bool)

(assert (= bs!448829 (and d!656740 b!2194612)))

(assert (=> bs!448829 (not (= lambda!82515 lambda!82465))))

(declare-fun bs!448830 () Bool)

(assert (= bs!448830 (and d!656740 b!2194926)))

(assert (=> bs!448830 (not (= lambda!82515 lambda!82507))))

(declare-fun bs!448831 () Bool)

(assert (= bs!448831 (and d!656740 d!656592)))

(assert (=> bs!448831 (not (= lambda!82515 lambda!82475))))

(declare-fun bs!448832 () Bool)

(assert (= bs!448832 (and d!656740 d!656534)))

(assert (=> bs!448832 (not (= lambda!82515 lambda!82463))))

(assert (=> d!656740 true))

(assert (=> d!656740 (< (dynLambda!11441 order!14809 lambda!82463) (dynLambda!11441 order!14809 lambda!82515))))

(assert (=> d!656740 (exists!805 lt!820834 lambda!82515)))

(declare-fun lt!820938 () Unit!38641)

(declare-fun choose!12989 (List!25607 Int) Unit!38641)

(assert (=> d!656740 (= lt!820938 (choose!12989 lt!820834 lambda!82463))))

(assert (=> d!656740 (not (forall!5219 lt!820834 lambda!82463))))

(assert (=> d!656740 (= (lemmaNotForallThenExists!42 lt!820834 lambda!82463) lt!820938)))

(declare-fun bs!448833 () Bool)

(assert (= bs!448833 d!656740))

(declare-fun m!2637529 () Bool)

(assert (=> bs!448833 m!2637529))

(declare-fun m!2637531 () Bool)

(assert (=> bs!448833 m!2637531))

(declare-fun m!2637533 () Bool)

(assert (=> bs!448833 m!2637533))

(assert (=> b!2194611 d!656740))

(assert (=> b!2194703 d!656570))

(declare-fun d!656744 () Bool)

(declare-fun c!349454 () Bool)

(assert (=> d!656744 (= c!349454 ((_ is Nil!25521) lt!820855))))

(declare-fun e!1402750 () (InoxSet C!12468))

(assert (=> d!656744 (= (content!3465 lt!820855) e!1402750)))

(declare-fun b!2194964 () Bool)

(assert (=> b!2194964 (= e!1402750 ((as const (Array C!12468 Bool)) false))))

(declare-fun b!2194965 () Bool)

(assert (=> b!2194965 (= e!1402750 ((_ map or) (store ((as const (Array C!12468 Bool)) false) (h!30922 lt!820855) true) (content!3465 (t!198203 lt!820855))))))

(assert (= (and d!656744 c!349454) b!2194964))

(assert (= (and d!656744 (not c!349454)) b!2194965))

(declare-fun m!2637535 () Bool)

(assert (=> b!2194965 m!2637535))

(declare-fun m!2637537 () Bool)

(assert (=> b!2194965 m!2637537))

(assert (=> d!656580 d!656744))

(declare-fun d!656746 () Bool)

(declare-fun c!349455 () Bool)

(assert (=> d!656746 (= c!349455 ((_ is Nil!25521) (list!9813 totalInput!923)))))

(declare-fun e!1402751 () (InoxSet C!12468))

(assert (=> d!656746 (= (content!3465 (list!9813 totalInput!923)) e!1402751)))

(declare-fun b!2194966 () Bool)

(assert (=> b!2194966 (= e!1402751 ((as const (Array C!12468 Bool)) false))))

(declare-fun b!2194967 () Bool)

(assert (=> b!2194967 (= e!1402751 ((_ map or) (store ((as const (Array C!12468 Bool)) false) (h!30922 (list!9813 totalInput!923)) true) (content!3465 (t!198203 (list!9813 totalInput!923)))))))

(assert (= (and d!656746 c!349455) b!2194966))

(assert (= (and d!656746 (not c!349455)) b!2194967))

(declare-fun m!2637539 () Bool)

(assert (=> b!2194967 m!2637539))

(declare-fun m!2637541 () Bool)

(assert (=> b!2194967 m!2637541))

(assert (=> d!656580 d!656746))

(declare-fun d!656748 () Bool)

(declare-fun c!349456 () Bool)

(assert (=> d!656748 (= c!349456 ((_ is Nil!25521) lt!820852))))

(declare-fun e!1402752 () (InoxSet C!12468))

(assert (=> d!656748 (= (content!3465 lt!820852) e!1402752)))

(declare-fun b!2194968 () Bool)

(assert (=> b!2194968 (= e!1402752 ((as const (Array C!12468 Bool)) false))))

(declare-fun b!2194969 () Bool)

(assert (=> b!2194969 (= e!1402752 ((_ map or) (store ((as const (Array C!12468 Bool)) false) (h!30922 lt!820852) true) (content!3465 (t!198203 lt!820852))))))

(assert (= (and d!656748 c!349456) b!2194968))

(assert (= (and d!656748 (not c!349456)) b!2194969))

(declare-fun m!2637543 () Bool)

(assert (=> b!2194969 m!2637543))

(declare-fun m!2637545 () Bool)

(assert (=> b!2194969 m!2637545))

(assert (=> d!656578 d!656748))

(declare-fun d!656750 () Bool)

(declare-fun c!349457 () Bool)

(assert (=> d!656750 (= c!349457 ((_ is Nil!25521) (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))))))

(declare-fun e!1402753 () (InoxSet C!12468))

(assert (=> d!656750 (= (content!3465 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) e!1402753)))

(declare-fun b!2194970 () Bool)

(assert (=> b!2194970 (= e!1402753 ((as const (Array C!12468 Bool)) false))))

(declare-fun b!2194971 () Bool)

(assert (=> b!2194971 (= e!1402753 ((_ map or) (store ((as const (Array C!12468 Bool)) false) (h!30922 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) true) (content!3465 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))))))))

(assert (= (and d!656750 c!349457) b!2194970))

(assert (= (and d!656750 (not c!349457)) b!2194971))

(declare-fun m!2637547 () Bool)

(assert (=> b!2194971 m!2637547))

(declare-fun m!2637549 () Bool)

(assert (=> b!2194971 m!2637549))

(assert (=> d!656578 d!656750))

(declare-fun d!656752 () Bool)

(declare-fun lt!820941 () Bool)

(assert (=> d!656752 (= lt!820941 (exists!805 (toList!1253 z!3955) lambda!82475))))

(declare-fun choose!12990 ((InoxSet Context!3462) Int) Bool)

(assert (=> d!656752 (= lt!820941 (choose!12990 z!3955 lambda!82475))))

(assert (=> d!656752 (= (exists!806 z!3955 lambda!82475) lt!820941)))

(declare-fun bs!448834 () Bool)

(assert (= bs!448834 d!656752))

(assert (=> bs!448834 m!2637089))

(assert (=> bs!448834 m!2637089))

(declare-fun m!2637551 () Bool)

(assert (=> bs!448834 m!2637551))

(declare-fun m!2637553 () Bool)

(assert (=> bs!448834 m!2637553))

(assert (=> d!656592 d!656752))

(declare-fun d!656754 () Bool)

(assert (=> d!656754 (= (isEmpty!14577 lt!820752) ((_ is Nil!25521) lt!820752))))

(assert (=> d!656586 d!656754))

(declare-fun d!656756 () Bool)

(declare-fun lt!820942 () Bool)

(assert (=> d!656756 (= lt!820942 (exists!805 (toList!1253 lt!820753) lambda!82471))))

(assert (=> d!656756 (= lt!820942 (choose!12990 lt!820753 lambda!82471))))

(assert (=> d!656756 (= (exists!806 lt!820753 lambda!82471) lt!820942)))

(declare-fun bs!448835 () Bool)

(assert (= bs!448835 d!656756))

(assert (=> bs!448835 m!2637479))

(assert (=> bs!448835 m!2637479))

(declare-fun m!2637555 () Bool)

(assert (=> bs!448835 m!2637555))

(declare-fun m!2637557 () Bool)

(assert (=> bs!448835 m!2637557))

(assert (=> d!656570 d!656756))

(declare-fun d!656758 () Bool)

(declare-fun e!1402758 () Bool)

(assert (=> d!656758 e!1402758))

(declare-fun res!943596 () Bool)

(assert (=> d!656758 (=> (not res!943596) (not e!1402758))))

(declare-fun lt!820943 () List!25605)

(assert (=> d!656758 (= res!943596 (= ((_ map implies) (content!3465 lt!820943) (content!3465 (t!198203 (list!9813 totalInput!923)))) ((as const (InoxSet C!12468)) true)))))

(declare-fun e!1402755 () List!25605)

(assert (=> d!656758 (= lt!820943 e!1402755)))

(declare-fun c!349459 () Bool)

(assert (=> d!656758 (= c!349459 ((_ is Nil!25521) (t!198203 (list!9813 totalInput!923))))))

(assert (=> d!656758 (= (drop!1359 (t!198203 (list!9813 totalInput!923)) (- (+ 1 from!1114) 1)) lt!820943)))

(declare-fun b!2194972 () Bool)

(declare-fun e!1402757 () Int)

(assert (=> b!2194972 (= e!1402758 (= (size!19902 lt!820943) e!1402757))))

(declare-fun c!349458 () Bool)

(assert (=> b!2194972 (= c!349458 (<= (- (+ 1 from!1114) 1) 0))))

(declare-fun b!2194973 () Bool)

(declare-fun e!1402754 () List!25605)

(assert (=> b!2194973 (= e!1402754 (drop!1359 (t!198203 (t!198203 (list!9813 totalInput!923))) (- (- (+ 1 from!1114) 1) 1)))))

(declare-fun b!2194974 () Bool)

(assert (=> b!2194974 (= e!1402755 e!1402754)))

(declare-fun c!349460 () Bool)

(assert (=> b!2194974 (= c!349460 (<= (- (+ 1 from!1114) 1) 0))))

(declare-fun b!2194975 () Bool)

(assert (=> b!2194975 (= e!1402755 Nil!25521)))

(declare-fun b!2194976 () Bool)

(declare-fun call!131943 () Int)

(assert (=> b!2194976 (= e!1402757 call!131943)))

(declare-fun b!2194977 () Bool)

(declare-fun e!1402756 () Int)

(assert (=> b!2194977 (= e!1402756 (- call!131943 (- (+ 1 from!1114) 1)))))

(declare-fun b!2194978 () Bool)

(assert (=> b!2194978 (= e!1402754 (t!198203 (list!9813 totalInput!923)))))

(declare-fun b!2194979 () Bool)

(assert (=> b!2194979 (= e!1402757 e!1402756)))

(declare-fun c!349461 () Bool)

(assert (=> b!2194979 (= c!349461 (>= (- (+ 1 from!1114) 1) call!131943))))

(declare-fun b!2194980 () Bool)

(assert (=> b!2194980 (= e!1402756 0)))

(declare-fun bm!131938 () Bool)

(assert (=> bm!131938 (= call!131943 (size!19902 (t!198203 (list!9813 totalInput!923))))))

(assert (= (and d!656758 c!349459) b!2194975))

(assert (= (and d!656758 (not c!349459)) b!2194974))

(assert (= (and b!2194974 c!349460) b!2194978))

(assert (= (and b!2194974 (not c!349460)) b!2194973))

(assert (= (and d!656758 res!943596) b!2194972))

(assert (= (and b!2194972 c!349458) b!2194976))

(assert (= (and b!2194972 (not c!349458)) b!2194979))

(assert (= (and b!2194979 c!349461) b!2194980))

(assert (= (and b!2194979 (not c!349461)) b!2194977))

(assert (= (or b!2194976 b!2194979 b!2194977) bm!131938))

(declare-fun m!2637559 () Bool)

(assert (=> d!656758 m!2637559))

(assert (=> d!656758 m!2637541))

(declare-fun m!2637561 () Bool)

(assert (=> b!2194972 m!2637561))

(declare-fun m!2637563 () Bool)

(assert (=> b!2194973 m!2637563))

(declare-fun m!2637565 () Bool)

(assert (=> bm!131938 m!2637565))

(assert (=> b!2194693 d!656758))

(declare-fun d!656760 () Bool)

(declare-fun c!349466 () Bool)

(assert (=> d!656760 (= c!349466 ((_ is Empty!8297) (c!349275 totalInput!923)))))

(declare-fun e!1402763 () List!25605)

(assert (=> d!656760 (= (list!9815 (c!349275 totalInput!923)) e!1402763)))

(declare-fun b!2194989 () Bool)

(assert (=> b!2194989 (= e!1402763 Nil!25521)))

(declare-fun b!2194990 () Bool)

(declare-fun e!1402764 () List!25605)

(assert (=> b!2194990 (= e!1402763 e!1402764)))

(declare-fun c!349467 () Bool)

(assert (=> b!2194990 (= c!349467 ((_ is Leaf!12145) (c!349275 totalInput!923)))))

(declare-fun b!2194992 () Bool)

(declare-fun ++!6422 (List!25605 List!25605) List!25605)

(assert (=> b!2194992 (= e!1402764 (++!6422 (list!9815 (left!19588 (c!349275 totalInput!923))) (list!9815 (right!19918 (c!349275 totalInput!923)))))))

(declare-fun b!2194991 () Bool)

(declare-fun list!9817 (IArray!16599) List!25605)

(assert (=> b!2194991 (= e!1402764 (list!9817 (xs!11239 (c!349275 totalInput!923))))))

(assert (= (and d!656760 c!349466) b!2194989))

(assert (= (and d!656760 (not c!349466)) b!2194990))

(assert (= (and b!2194990 c!349467) b!2194991))

(assert (= (and b!2194990 (not c!349467)) b!2194992))

(declare-fun m!2637567 () Bool)

(assert (=> b!2194992 m!2637567))

(declare-fun m!2637569 () Bool)

(assert (=> b!2194992 m!2637569))

(assert (=> b!2194992 m!2637567))

(assert (=> b!2194992 m!2637569))

(declare-fun m!2637571 () Bool)

(assert (=> b!2194992 m!2637571))

(declare-fun m!2637573 () Bool)

(assert (=> b!2194991 m!2637573))

(assert (=> d!656582 d!656760))

(declare-fun d!656762 () Bool)

(declare-fun lt!820944 () Int)

(assert (=> d!656762 (>= lt!820944 0)))

(declare-fun e!1402765 () Int)

(assert (=> d!656762 (= lt!820944 e!1402765)))

(declare-fun c!349468 () Bool)

(assert (=> d!656762 (= c!349468 ((_ is Nil!25521) lt!820855))))

(assert (=> d!656762 (= (size!19902 lt!820855) lt!820944)))

(declare-fun b!2194993 () Bool)

(assert (=> b!2194993 (= e!1402765 0)))

(declare-fun b!2194994 () Bool)

(assert (=> b!2194994 (= e!1402765 (+ 1 (size!19902 (t!198203 lt!820855))))))

(assert (= (and d!656762 c!349468) b!2194993))

(assert (= (and d!656762 (not c!349468)) b!2194994))

(declare-fun m!2637575 () Bool)

(assert (=> b!2194994 m!2637575))

(assert (=> b!2194692 d!656762))

(declare-fun d!656764 () Bool)

(assert (=> d!656764 (= (inv!34161 (xs!11239 (c!349275 totalInput!923))) (<= (size!19902 (innerList!8357 (xs!11239 (c!349275 totalInput!923)))) 2147483647))))

(declare-fun bs!448836 () Bool)

(assert (= bs!448836 d!656764))

(declare-fun m!2637577 () Bool)

(assert (=> bs!448836 m!2637577))

(assert (=> b!2194714 d!656764))

(declare-fun d!656766 () Bool)

(declare-fun choose!12991 ((InoxSet Context!3462) Int) (InoxSet Context!3462))

(assert (=> d!656766 (= (flatMap!148 z!3955 lambda!82468) (choose!12991 z!3955 lambda!82468))))

(declare-fun bs!448837 () Bool)

(assert (= bs!448837 d!656766))

(declare-fun m!2637579 () Bool)

(assert (=> bs!448837 m!2637579))

(assert (=> d!656566 d!656766))

(declare-fun d!656768 () Bool)

(assert (=> d!656768 (= (isEmpty!14576 (getLanguageWitness!134 z!3955)) (not ((_ is Some!5016) (getLanguageWitness!134 z!3955))))))

(assert (=> d!656534 d!656768))

(declare-fun bs!448838 () Bool)

(declare-fun d!656770 () Bool)

(assert (= bs!448838 (and d!656770 d!656728)))

(declare-fun lambda!82522 () Int)

(assert (=> bs!448838 (not (= lambda!82522 lambda!82506))))

(declare-fun bs!448839 () Bool)

(assert (= bs!448839 (and d!656770 d!656570)))

(assert (=> bs!448839 (not (= lambda!82522 lambda!82471))))

(declare-fun bs!448840 () Bool)

(assert (= bs!448840 (and d!656770 d!656724)))

(assert (=> bs!448840 (not (= lambda!82522 lambda!82505))))

(declare-fun bs!448841 () Bool)

(assert (= bs!448841 (and d!656770 b!2194927)))

(assert (=> bs!448841 (= lambda!82522 lambda!82510)))

(declare-fun bs!448842 () Bool)

(assert (= bs!448842 (and d!656770 d!656740)))

(assert (=> bs!448842 (not (= lambda!82522 lambda!82515))))

(declare-fun bs!448843 () Bool)

(assert (= bs!448843 (and d!656770 d!656720)))

(assert (=> bs!448843 (not (= lambda!82522 lambda!82499))))

(declare-fun bs!448844 () Bool)

(assert (= bs!448844 (and d!656770 b!2194611)))

(assert (=> bs!448844 (= lambda!82522 lambda!82464)))

(declare-fun bs!448845 () Bool)

(assert (= bs!448845 (and d!656770 b!2194612)))

(assert (=> bs!448845 (= lambda!82522 lambda!82465)))

(declare-fun bs!448846 () Bool)

(assert (= bs!448846 (and d!656770 b!2194926)))

(assert (=> bs!448846 (= lambda!82522 lambda!82507)))

(declare-fun bs!448847 () Bool)

(assert (= bs!448847 (and d!656770 d!656592)))

(assert (=> bs!448847 (not (= lambda!82522 lambda!82475))))

(declare-fun bs!448848 () Bool)

(assert (= bs!448848 (and d!656770 d!656534)))

(assert (=> bs!448848 (not (= lambda!82522 lambda!82463))))

(declare-fun lt!820947 () Option!5017)

(declare-fun isDefined!4111 (Option!5017) Bool)

(assert (=> d!656770 (= (isDefined!4111 lt!820947) (exists!806 z!3955 lambda!82522))))

(declare-fun e!1402768 () Option!5017)

(assert (=> d!656770 (= lt!820947 e!1402768)))

(declare-fun c!349477 () Bool)

(assert (=> d!656770 (= c!349477 (exists!806 z!3955 lambda!82522))))

(assert (=> d!656770 (= (getLanguageWitness!134 z!3955) lt!820947)))

(declare-fun b!2194999 () Bool)

(declare-fun getLanguageWitness!136 (Context!3462) Option!5017)

(declare-fun getWitness!509 ((InoxSet Context!3462) Int) Context!3462)

(assert (=> b!2194999 (= e!1402768 (getLanguageWitness!136 (getWitness!509 z!3955 lambda!82522)))))

(declare-fun b!2195000 () Bool)

(assert (=> b!2195000 (= e!1402768 None!5016)))

(assert (= (and d!656770 c!349477) b!2194999))

(assert (= (and d!656770 (not c!349477)) b!2195000))

(declare-fun m!2637581 () Bool)

(assert (=> d!656770 m!2637581))

(declare-fun m!2637583 () Bool)

(assert (=> d!656770 m!2637583))

(assert (=> d!656770 m!2637583))

(declare-fun m!2637585 () Bool)

(assert (=> b!2194999 m!2637585))

(assert (=> b!2194999 m!2637585))

(declare-fun m!2637587 () Bool)

(assert (=> b!2194999 m!2637587))

(assert (=> d!656534 d!656770))

(declare-fun d!656772 () Bool)

(declare-fun lt!820950 () Bool)

(assert (=> d!656772 (= lt!820950 (forall!5219 (toList!1253 z!3955) lambda!82463))))

(declare-fun choose!12992 ((InoxSet Context!3462) Int) Bool)

(assert (=> d!656772 (= lt!820950 (choose!12992 z!3955 lambda!82463))))

(assert (=> d!656772 (= (forall!5216 z!3955 lambda!82463) lt!820950)))

(declare-fun bs!448849 () Bool)

(assert (= bs!448849 d!656772))

(assert (=> bs!448849 m!2637089))

(assert (=> bs!448849 m!2637089))

(declare-fun m!2637589 () Bool)

(assert (=> bs!448849 m!2637589))

(declare-fun m!2637591 () Bool)

(assert (=> bs!448849 m!2637591))

(assert (=> d!656534 d!656772))

(declare-fun d!656774 () Bool)

(assert (=> d!656774 (= (isEmpty!14577 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)) ((_ is Nil!25521) (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)))))

(assert (=> d!656576 d!656774))

(declare-fun d!656776 () Bool)

(declare-fun c!349478 () Bool)

(assert (=> d!656776 (= c!349478 ((_ is Node!8297) (left!19588 (c!349275 totalInput!923))))))

(declare-fun e!1402769 () Bool)

(assert (=> d!656776 (= (inv!34153 (left!19588 (c!349275 totalInput!923))) e!1402769)))

(declare-fun b!2195001 () Bool)

(assert (=> b!2195001 (= e!1402769 (inv!34159 (left!19588 (c!349275 totalInput!923))))))

(declare-fun b!2195002 () Bool)

(declare-fun e!1402770 () Bool)

(assert (=> b!2195002 (= e!1402769 e!1402770)))

(declare-fun res!943597 () Bool)

(assert (=> b!2195002 (= res!943597 (not ((_ is Leaf!12145) (left!19588 (c!349275 totalInput!923)))))))

(assert (=> b!2195002 (=> res!943597 e!1402770)))

(declare-fun b!2195003 () Bool)

(assert (=> b!2195003 (= e!1402770 (inv!34160 (left!19588 (c!349275 totalInput!923))))))

(assert (= (and d!656776 c!349478) b!2195001))

(assert (= (and d!656776 (not c!349478)) b!2195002))

(assert (= (and b!2195002 (not res!943597)) b!2195003))

(declare-fun m!2637593 () Bool)

(assert (=> b!2195001 m!2637593))

(declare-fun m!2637595 () Bool)

(assert (=> b!2195003 m!2637595))

(assert (=> b!2194713 d!656776))

(declare-fun d!656778 () Bool)

(declare-fun c!349479 () Bool)

(assert (=> d!656778 (= c!349479 ((_ is Node!8297) (right!19918 (c!349275 totalInput!923))))))

(declare-fun e!1402771 () Bool)

(assert (=> d!656778 (= (inv!34153 (right!19918 (c!349275 totalInput!923))) e!1402771)))

(declare-fun b!2195004 () Bool)

(assert (=> b!2195004 (= e!1402771 (inv!34159 (right!19918 (c!349275 totalInput!923))))))

(declare-fun b!2195005 () Bool)

(declare-fun e!1402772 () Bool)

(assert (=> b!2195005 (= e!1402771 e!1402772)))

(declare-fun res!943598 () Bool)

(assert (=> b!2195005 (= res!943598 (not ((_ is Leaf!12145) (right!19918 (c!349275 totalInput!923)))))))

(assert (=> b!2195005 (=> res!943598 e!1402772)))

(declare-fun b!2195006 () Bool)

(assert (=> b!2195006 (= e!1402772 (inv!34160 (right!19918 (c!349275 totalInput!923))))))

(assert (= (and d!656778 c!349479) b!2195004))

(assert (= (and d!656778 (not c!349479)) b!2195005))

(assert (= (and b!2195005 (not res!943598)) b!2195006))

(declare-fun m!2637597 () Bool)

(assert (=> b!2195004 m!2637597))

(declare-fun m!2637599 () Bool)

(assert (=> b!2195006 m!2637599))

(assert (=> b!2194713 d!656778))

(declare-fun d!656780 () Bool)

(declare-fun lt!820951 () Int)

(assert (=> d!656780 (>= lt!820951 0)))

(declare-fun e!1402773 () Int)

(assert (=> d!656780 (= lt!820951 e!1402773)))

(declare-fun c!349480 () Bool)

(assert (=> d!656780 (= c!349480 ((_ is Nil!25521) (list!9813 totalInput!923)))))

(assert (=> d!656780 (= (size!19902 (list!9813 totalInput!923)) lt!820951)))

(declare-fun b!2195007 () Bool)

(assert (=> b!2195007 (= e!1402773 0)))

(declare-fun b!2195008 () Bool)

(assert (=> b!2195008 (= e!1402773 (+ 1 (size!19902 (t!198203 (list!9813 totalInput!923)))))))

(assert (= (and d!656780 c!349480) b!2195007))

(assert (= (and d!656780 (not c!349480)) b!2195008))

(assert (=> b!2195008 m!2637565))

(assert (=> d!656588 d!656780))

(assert (=> d!656588 d!656582))

(declare-fun d!656782 () Bool)

(declare-fun lt!820954 () Int)

(assert (=> d!656782 (= lt!820954 (size!19902 (list!9815 (c!349275 totalInput!923))))))

(assert (=> d!656782 (= lt!820954 (ite ((_ is Empty!8297) (c!349275 totalInput!923)) 0 (ite ((_ is Leaf!12145) (c!349275 totalInput!923)) (csize!16825 (c!349275 totalInput!923)) (csize!16824 (c!349275 totalInput!923)))))))

(assert (=> d!656782 (= (size!19903 (c!349275 totalInput!923)) lt!820954)))

(declare-fun bs!448850 () Bool)

(assert (= bs!448850 d!656782))

(assert (=> bs!448850 m!2637159))

(assert (=> bs!448850 m!2637159))

(declare-fun m!2637601 () Bool)

(assert (=> bs!448850 m!2637601))

(assert (=> d!656588 d!656782))

(declare-fun bs!448851 () Bool)

(declare-fun d!656784 () Bool)

(assert (= bs!448851 (and d!656784 d!656590)))

(declare-fun lambda!82523 () Int)

(assert (=> bs!448851 (= lambda!82523 lambda!82474)))

(assert (=> d!656784 (= (inv!34155 setElem!18744) (forall!5217 (exprs!2231 setElem!18744) lambda!82523))))

(declare-fun bs!448852 () Bool)

(assert (= bs!448852 d!656784))

(declare-fun m!2637603 () Bool)

(assert (=> bs!448852 m!2637603))

(assert (=> setNonEmpty!18744 d!656784))

(declare-fun d!656786 () Bool)

(declare-fun lt!820957 () C!12468)

(declare-fun contains!4279 (List!25605 C!12468) Bool)

(assert (=> d!656786 (contains!4279 (list!9813 totalInput!923) lt!820957)))

(declare-fun e!1402779 () C!12468)

(assert (=> d!656786 (= lt!820957 e!1402779)))

(declare-fun c!349483 () Bool)

(assert (=> d!656786 (= c!349483 (= from!1114 0))))

(declare-fun e!1402778 () Bool)

(assert (=> d!656786 e!1402778))

(declare-fun res!943601 () Bool)

(assert (=> d!656786 (=> (not res!943601) (not e!1402778))))

(assert (=> d!656786 (= res!943601 (<= 0 from!1114))))

(assert (=> d!656786 (= (apply!6222 (list!9813 totalInput!923) from!1114) lt!820957)))

(declare-fun b!2195015 () Bool)

(assert (=> b!2195015 (= e!1402778 (< from!1114 (size!19902 (list!9813 totalInput!923))))))

(declare-fun b!2195016 () Bool)

(assert (=> b!2195016 (= e!1402779 (head!4682 (list!9813 totalInput!923)))))

(declare-fun b!2195017 () Bool)

(assert (=> b!2195017 (= e!1402779 (apply!6222 (tail!3154 (list!9813 totalInput!923)) (- from!1114 1)))))

(assert (= (and d!656786 res!943601) b!2195015))

(assert (= (and d!656786 c!349483) b!2195016))

(assert (= (and d!656786 (not c!349483)) b!2195017))

(assert (=> d!656786 m!2636929))

(declare-fun m!2637605 () Bool)

(assert (=> d!656786 m!2637605))

(assert (=> b!2195015 m!2636929))

(assert (=> b!2195015 m!2637157))

(assert (=> b!2195016 m!2636929))

(declare-fun m!2637607 () Bool)

(assert (=> b!2195016 m!2637607))

(assert (=> b!2195017 m!2636929))

(declare-fun m!2637609 () Bool)

(assert (=> b!2195017 m!2637609))

(assert (=> b!2195017 m!2637609))

(declare-fun m!2637611 () Bool)

(assert (=> b!2195017 m!2637611))

(assert (=> d!656572 d!656786))

(assert (=> d!656572 d!656582))

(declare-fun b!2195032 () Bool)

(declare-fun e!1402789 () C!12468)

(declare-fun call!131946 () C!12468)

(assert (=> b!2195032 (= e!1402789 call!131946)))

(declare-fun b!2195033 () Bool)

(assert (=> b!2195033 (= e!1402789 call!131946)))

(declare-fun bm!131941 () Bool)

(declare-fun c!349492 () Bool)

(declare-fun c!349490 () Bool)

(assert (=> bm!131941 (= c!349492 c!349490)))

(declare-fun e!1402788 () Int)

(assert (=> bm!131941 (= call!131946 (apply!6223 (ite c!349490 (left!19588 (c!349275 totalInput!923)) (right!19918 (c!349275 totalInput!923))) e!1402788))))

(declare-fun d!656788 () Bool)

(declare-fun lt!820962 () C!12468)

(assert (=> d!656788 (= lt!820962 (apply!6222 (list!9815 (c!349275 totalInput!923)) from!1114))))

(declare-fun e!1402791 () C!12468)

(assert (=> d!656788 (= lt!820962 e!1402791)))

(declare-fun c!349491 () Bool)

(assert (=> d!656788 (= c!349491 ((_ is Leaf!12145) (c!349275 totalInput!923)))))

(declare-fun e!1402790 () Bool)

(assert (=> d!656788 e!1402790))

(declare-fun res!943604 () Bool)

(assert (=> d!656788 (=> (not res!943604) (not e!1402790))))

(assert (=> d!656788 (= res!943604 (<= 0 from!1114))))

(assert (=> d!656788 (= (apply!6223 (c!349275 totalInput!923) from!1114) lt!820962)))

(declare-fun b!2195034 () Bool)

(declare-fun apply!6225 (IArray!16599 Int) C!12468)

(assert (=> b!2195034 (= e!1402791 (apply!6225 (xs!11239 (c!349275 totalInput!923)) from!1114))))

(declare-fun b!2195035 () Bool)

(assert (=> b!2195035 (= e!1402788 (- from!1114 (size!19903 (left!19588 (c!349275 totalInput!923)))))))

(declare-fun b!2195036 () Bool)

(assert (=> b!2195036 (= e!1402788 from!1114)))

(declare-fun b!2195037 () Bool)

(assert (=> b!2195037 (= e!1402791 e!1402789)))

(declare-fun lt!820963 () Bool)

(declare-fun appendIndex!251 (List!25605 List!25605 Int) Bool)

(assert (=> b!2195037 (= lt!820963 (appendIndex!251 (list!9815 (left!19588 (c!349275 totalInput!923))) (list!9815 (right!19918 (c!349275 totalInput!923))) from!1114))))

(assert (=> b!2195037 (= c!349490 (< from!1114 (size!19903 (left!19588 (c!349275 totalInput!923)))))))

(declare-fun b!2195038 () Bool)

(assert (=> b!2195038 (= e!1402790 (< from!1114 (size!19903 (c!349275 totalInput!923))))))

(assert (= (and d!656788 res!943604) b!2195038))

(assert (= (and d!656788 c!349491) b!2195034))

(assert (= (and d!656788 (not c!349491)) b!2195037))

(assert (= (and b!2195037 c!349490) b!2195033))

(assert (= (and b!2195037 (not c!349490)) b!2195032))

(assert (= (or b!2195033 b!2195032) bm!131941))

(assert (= (and bm!131941 c!349492) b!2195036))

(assert (= (and bm!131941 (not c!349492)) b!2195035))

(assert (=> d!656788 m!2637159))

(assert (=> d!656788 m!2637159))

(declare-fun m!2637613 () Bool)

(assert (=> d!656788 m!2637613))

(assert (=> b!2195038 m!2637181))

(declare-fun m!2637615 () Bool)

(assert (=> b!2195035 m!2637615))

(declare-fun m!2637617 () Bool)

(assert (=> b!2195034 m!2637617))

(assert (=> b!2195037 m!2637567))

(assert (=> b!2195037 m!2637569))

(assert (=> b!2195037 m!2637567))

(assert (=> b!2195037 m!2637569))

(declare-fun m!2637619 () Bool)

(assert (=> b!2195037 m!2637619))

(assert (=> b!2195037 m!2637615))

(declare-fun m!2637621 () Bool)

(assert (=> bm!131941 m!2637621))

(assert (=> d!656572 d!656788))

(declare-fun c!349493 () Bool)

(declare-fun d!656790 () Bool)

(assert (=> d!656790 (= c!349493 (isEmpty!14577 (tail!3154 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))))))

(declare-fun e!1402792 () Bool)

(assert (=> d!656790 (= (matchZipper!257 (derivationStepZipper!235 lt!820753 (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))) (tail!3154 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))) e!1402792)))

(declare-fun b!2195039 () Bool)

(assert (=> b!2195039 (= e!1402792 (nullableZipper!441 (derivationStepZipper!235 lt!820753 (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)))))))

(declare-fun b!2195040 () Bool)

(assert (=> b!2195040 (= e!1402792 (matchZipper!257 (derivationStepZipper!235 (derivationStepZipper!235 lt!820753 (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))) (head!4682 (tail!3154 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)))) (tail!3154 (tail!3154 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)))))))

(assert (= (and d!656790 c!349493) b!2195039))

(assert (= (and d!656790 (not c!349493)) b!2195040))

(assert (=> d!656790 m!2637135))

(declare-fun m!2637623 () Bool)

(assert (=> d!656790 m!2637623))

(assert (=> b!2195039 m!2637133))

(declare-fun m!2637625 () Bool)

(assert (=> b!2195039 m!2637625))

(assert (=> b!2195040 m!2637135))

(declare-fun m!2637627 () Bool)

(assert (=> b!2195040 m!2637627))

(assert (=> b!2195040 m!2637133))

(assert (=> b!2195040 m!2637627))

(declare-fun m!2637629 () Bool)

(assert (=> b!2195040 m!2637629))

(assert (=> b!2195040 m!2637135))

(declare-fun m!2637631 () Bool)

(assert (=> b!2195040 m!2637631))

(assert (=> b!2195040 m!2637629))

(assert (=> b!2195040 m!2637631))

(declare-fun m!2637633 () Bool)

(assert (=> b!2195040 m!2637633))

(assert (=> b!2194652 d!656790))

(declare-fun bs!448853 () Bool)

(declare-fun d!656792 () Bool)

(assert (= bs!448853 (and d!656792 d!656566)))

(declare-fun lambda!82524 () Int)

(assert (=> bs!448853 (= (= (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)) lt!820754) (= lambda!82524 lambda!82468))))

(declare-fun bs!448854 () Bool)

(assert (= bs!448854 (and d!656792 d!656734)))

(assert (=> bs!448854 (= (= (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)) (head!4682 lt!820752)) (= lambda!82524 lambda!82512))))

(assert (=> d!656792 true))

(assert (=> d!656792 (= (derivationStepZipper!235 lt!820753 (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))) (flatMap!148 lt!820753 lambda!82524))))

(declare-fun bs!448855 () Bool)

(assert (= bs!448855 d!656792))

(declare-fun m!2637635 () Bool)

(assert (=> bs!448855 m!2637635))

(assert (=> b!2194652 d!656792))

(declare-fun d!656794 () Bool)

(assert (=> d!656794 (= (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)) (h!30922 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)))))

(assert (=> b!2194652 d!656794))

(declare-fun d!656796 () Bool)

(assert (=> d!656796 (= (tail!3154 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)) (t!198203 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749)))))

(assert (=> b!2194652 d!656796))

(declare-fun b!2195053 () Bool)

(declare-fun res!943621 () Bool)

(declare-fun e!1402798 () Bool)

(assert (=> b!2195053 (=> (not res!943621) (not e!1402798))))

(declare-fun height!1249 (Conc!8297) Int)

(assert (=> b!2195053 (= res!943621 (<= (- (height!1249 (left!19588 (c!349275 totalInput!923))) (height!1249 (right!19918 (c!349275 totalInput!923)))) 1))))

(declare-fun b!2195054 () Bool)

(declare-fun res!943620 () Bool)

(assert (=> b!2195054 (=> (not res!943620) (not e!1402798))))

(declare-fun isEmpty!14579 (Conc!8297) Bool)

(assert (=> b!2195054 (= res!943620 (not (isEmpty!14579 (left!19588 (c!349275 totalInput!923)))))))

(declare-fun b!2195055 () Bool)

(declare-fun res!943618 () Bool)

(assert (=> b!2195055 (=> (not res!943618) (not e!1402798))))

(assert (=> b!2195055 (= res!943618 (isBalanced!2559 (left!19588 (c!349275 totalInput!923))))))

(declare-fun b!2195056 () Bool)

(declare-fun e!1402797 () Bool)

(assert (=> b!2195056 (= e!1402797 e!1402798)))

(declare-fun res!943619 () Bool)

(assert (=> b!2195056 (=> (not res!943619) (not e!1402798))))

(assert (=> b!2195056 (= res!943619 (<= (- 1) (- (height!1249 (left!19588 (c!349275 totalInput!923))) (height!1249 (right!19918 (c!349275 totalInput!923))))))))

(declare-fun d!656798 () Bool)

(declare-fun res!943622 () Bool)

(assert (=> d!656798 (=> res!943622 e!1402797)))

(assert (=> d!656798 (= res!943622 (not ((_ is Node!8297) (c!349275 totalInput!923))))))

(assert (=> d!656798 (= (isBalanced!2559 (c!349275 totalInput!923)) e!1402797)))

(declare-fun b!2195057 () Bool)

(assert (=> b!2195057 (= e!1402798 (not (isEmpty!14579 (right!19918 (c!349275 totalInput!923)))))))

(declare-fun b!2195058 () Bool)

(declare-fun res!943617 () Bool)

(assert (=> b!2195058 (=> (not res!943617) (not e!1402798))))

(assert (=> b!2195058 (= res!943617 (isBalanced!2559 (right!19918 (c!349275 totalInput!923))))))

(assert (= (and d!656798 (not res!943622)) b!2195056))

(assert (= (and b!2195056 res!943619) b!2195053))

(assert (= (and b!2195053 res!943621) b!2195055))

(assert (= (and b!2195055 res!943618) b!2195058))

(assert (= (and b!2195058 res!943617) b!2195054))

(assert (= (and b!2195054 res!943620) b!2195057))

(declare-fun m!2637637 () Bool)

(assert (=> b!2195056 m!2637637))

(declare-fun m!2637639 () Bool)

(assert (=> b!2195056 m!2637639))

(assert (=> b!2195053 m!2637637))

(assert (=> b!2195053 m!2637639))

(declare-fun m!2637641 () Bool)

(assert (=> b!2195057 m!2637641))

(declare-fun m!2637643 () Bool)

(assert (=> b!2195054 m!2637643))

(declare-fun m!2637645 () Bool)

(assert (=> b!2195058 m!2637645))

(declare-fun m!2637647 () Bool)

(assert (=> b!2195055 m!2637647))

(assert (=> d!656522 d!656798))

(assert (=> b!2194651 d!656570))

(declare-fun d!656800 () Bool)

(declare-fun res!943627 () Bool)

(declare-fun e!1402801 () Bool)

(assert (=> d!656800 (=> (not res!943627) (not e!1402801))))

(assert (=> d!656800 (= res!943627 (<= (size!19902 (list!9817 (xs!11239 (c!349275 totalInput!923)))) 512))))

(assert (=> d!656800 (= (inv!34160 (c!349275 totalInput!923)) e!1402801)))

(declare-fun b!2195063 () Bool)

(declare-fun res!943628 () Bool)

(assert (=> b!2195063 (=> (not res!943628) (not e!1402801))))

(assert (=> b!2195063 (= res!943628 (= (csize!16825 (c!349275 totalInput!923)) (size!19902 (list!9817 (xs!11239 (c!349275 totalInput!923))))))))

(declare-fun b!2195064 () Bool)

(assert (=> b!2195064 (= e!1402801 (and (> (csize!16825 (c!349275 totalInput!923)) 0) (<= (csize!16825 (c!349275 totalInput!923)) 512)))))

(assert (= (and d!656800 res!943627) b!2195063))

(assert (= (and b!2195063 res!943628) b!2195064))

(assert (=> d!656800 m!2637573))

(assert (=> d!656800 m!2637573))

(declare-fun m!2637649 () Bool)

(assert (=> d!656800 m!2637649))

(assert (=> b!2195063 m!2637573))

(assert (=> b!2195063 m!2637573))

(assert (=> b!2195063 m!2637649))

(assert (=> b!2194621 d!656800))

(assert (=> b!2194641 d!656588))

(declare-fun d!656802 () Bool)

(declare-fun c!349494 () Bool)

(assert (=> d!656802 (= c!349494 (isEmpty!14577 (tail!3154 (Cons!25521 lt!820754 lt!820752))))))

(declare-fun e!1402802 () Bool)

(assert (=> d!656802 (= (matchZipper!257 (derivationStepZipper!235 z!3955 (head!4682 (Cons!25521 lt!820754 lt!820752))) (tail!3154 (Cons!25521 lt!820754 lt!820752))) e!1402802)))

(declare-fun b!2195065 () Bool)

(assert (=> b!2195065 (= e!1402802 (nullableZipper!441 (derivationStepZipper!235 z!3955 (head!4682 (Cons!25521 lt!820754 lt!820752)))))))

(declare-fun b!2195066 () Bool)

(assert (=> b!2195066 (= e!1402802 (matchZipper!257 (derivationStepZipper!235 (derivationStepZipper!235 z!3955 (head!4682 (Cons!25521 lt!820754 lt!820752))) (head!4682 (tail!3154 (Cons!25521 lt!820754 lt!820752)))) (tail!3154 (tail!3154 (Cons!25521 lt!820754 lt!820752)))))))

(assert (= (and d!656802 c!349494) b!2195065))

(assert (= (and d!656802 (not c!349494)) b!2195066))

(assert (=> d!656802 m!2637167))

(declare-fun m!2637651 () Bool)

(assert (=> d!656802 m!2637651))

(assert (=> b!2195065 m!2637165))

(declare-fun m!2637653 () Bool)

(assert (=> b!2195065 m!2637653))

(assert (=> b!2195066 m!2637167))

(declare-fun m!2637655 () Bool)

(assert (=> b!2195066 m!2637655))

(assert (=> b!2195066 m!2637165))

(assert (=> b!2195066 m!2637655))

(declare-fun m!2637657 () Bool)

(assert (=> b!2195066 m!2637657))

(assert (=> b!2195066 m!2637167))

(declare-fun m!2637659 () Bool)

(assert (=> b!2195066 m!2637659))

(assert (=> b!2195066 m!2637657))

(assert (=> b!2195066 m!2637659))

(declare-fun m!2637661 () Bool)

(assert (=> b!2195066 m!2637661))

(assert (=> b!2194702 d!656802))

(declare-fun bs!448856 () Bool)

(declare-fun d!656804 () Bool)

(assert (= bs!448856 (and d!656804 d!656566)))

(declare-fun lambda!82525 () Int)

(assert (=> bs!448856 (= (= (head!4682 (Cons!25521 lt!820754 lt!820752)) lt!820754) (= lambda!82525 lambda!82468))))

(declare-fun bs!448857 () Bool)

(assert (= bs!448857 (and d!656804 d!656734)))

(assert (=> bs!448857 (= (= (head!4682 (Cons!25521 lt!820754 lt!820752)) (head!4682 lt!820752)) (= lambda!82525 lambda!82512))))

(declare-fun bs!448858 () Bool)

(assert (= bs!448858 (and d!656804 d!656792)))

(assert (=> bs!448858 (= (= (head!4682 (Cons!25521 lt!820754 lt!820752)) (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))) (= lambda!82525 lambda!82524))))

(assert (=> d!656804 true))

(assert (=> d!656804 (= (derivationStepZipper!235 z!3955 (head!4682 (Cons!25521 lt!820754 lt!820752))) (flatMap!148 z!3955 lambda!82525))))

(declare-fun bs!448859 () Bool)

(assert (= bs!448859 d!656804))

(declare-fun m!2637663 () Bool)

(assert (=> bs!448859 m!2637663))

(assert (=> b!2194702 d!656804))

(declare-fun d!656806 () Bool)

(assert (=> d!656806 (= (head!4682 (Cons!25521 lt!820754 lt!820752)) (h!30922 (Cons!25521 lt!820754 lt!820752)))))

(assert (=> b!2194702 d!656806))

(declare-fun d!656808 () Bool)

(assert (=> d!656808 (= (tail!3154 (Cons!25521 lt!820754 lt!820752)) (t!198203 (Cons!25521 lt!820754 lt!820752)))))

(assert (=> b!2194702 d!656808))

(declare-fun d!656810 () Bool)

(declare-fun res!943635 () Bool)

(declare-fun e!1402805 () Bool)

(assert (=> d!656810 (=> (not res!943635) (not e!1402805))))

(assert (=> d!656810 (= res!943635 (= (csize!16824 (c!349275 totalInput!923)) (+ (size!19903 (left!19588 (c!349275 totalInput!923))) (size!19903 (right!19918 (c!349275 totalInput!923))))))))

(assert (=> d!656810 (= (inv!34159 (c!349275 totalInput!923)) e!1402805)))

(declare-fun b!2195073 () Bool)

(declare-fun res!943636 () Bool)

(assert (=> b!2195073 (=> (not res!943636) (not e!1402805))))

(assert (=> b!2195073 (= res!943636 (and (not (= (left!19588 (c!349275 totalInput!923)) Empty!8297)) (not (= (right!19918 (c!349275 totalInput!923)) Empty!8297))))))

(declare-fun b!2195074 () Bool)

(declare-fun res!943637 () Bool)

(assert (=> b!2195074 (=> (not res!943637) (not e!1402805))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2195074 (= res!943637 (= (cheight!8508 (c!349275 totalInput!923)) (+ (max!0 (height!1249 (left!19588 (c!349275 totalInput!923))) (height!1249 (right!19918 (c!349275 totalInput!923)))) 1)))))

(declare-fun b!2195075 () Bool)

(assert (=> b!2195075 (= e!1402805 (<= 0 (cheight!8508 (c!349275 totalInput!923))))))

(assert (= (and d!656810 res!943635) b!2195073))

(assert (= (and b!2195073 res!943636) b!2195074))

(assert (= (and b!2195074 res!943637) b!2195075))

(assert (=> d!656810 m!2637615))

(declare-fun m!2637665 () Bool)

(assert (=> d!656810 m!2637665))

(assert (=> b!2195074 m!2637637))

(assert (=> b!2195074 m!2637639))

(assert (=> b!2195074 m!2637637))

(assert (=> b!2195074 m!2637639))

(declare-fun m!2637667 () Bool)

(assert (=> b!2195074 m!2637667))

(assert (=> b!2194619 d!656810))

(declare-fun b!2195076 () Bool)

(declare-fun e!1402806 () Int)

(assert (=> b!2195076 (= e!1402806 e!1402565)))

(declare-fun b!2195077 () Bool)

(declare-fun e!1402807 () Bool)

(assert (=> b!2195077 (= e!1402807 (lostCauseZipper!279 lt!820849))))

(declare-fun b!2195078 () Bool)

(assert (=> b!2195078 (= e!1402806 (+ from!1114 1))))

(declare-fun lt!820964 () Int)

(declare-fun d!656812 () Bool)

(assert (=> d!656812 (and (>= lt!820964 (- 1)) (< lt!820964 lt!820757) (>= lt!820964 e!1402565) (or (= lt!820964 e!1402565) (>= lt!820964 (+ from!1114 1))))))

(declare-fun e!1402808 () Int)

(assert (=> d!656812 (= lt!820964 e!1402808)))

(declare-fun c!349495 () Bool)

(assert (=> d!656812 (= c!349495 e!1402807)))

(declare-fun res!943638 () Bool)

(assert (=> d!656812 (=> res!943638 e!1402807)))

(assert (=> d!656812 (= res!943638 (= (+ from!1114 1) lt!820757))))

(assert (=> d!656812 (and (>= (+ from!1114 1) 0) (<= (+ from!1114 1) lt!820757))))

(assert (=> d!656812 (= (furthestNullablePosition!331 lt!820849 (+ from!1114 1) totalInput!923 lt!820757 e!1402565) lt!820964)))

(declare-fun b!2195079 () Bool)

(assert (=> b!2195079 (= e!1402808 e!1402565)))

(declare-fun lt!820965 () (InoxSet Context!3462))

(declare-fun b!2195080 () Bool)

(assert (=> b!2195080 (= e!1402808 (furthestNullablePosition!331 lt!820965 (+ from!1114 1 1) totalInput!923 lt!820757 e!1402806))))

(assert (=> b!2195080 (= lt!820965 (derivationStepZipper!235 lt!820849 (apply!6219 totalInput!923 (+ from!1114 1))))))

(declare-fun c!349496 () Bool)

(assert (=> b!2195080 (= c!349496 (nullableZipper!441 lt!820965))))

(assert (= (and d!656812 (not res!943638)) b!2195077))

(assert (= (and d!656812 c!349495) b!2195079))

(assert (= (and d!656812 (not c!349495)) b!2195080))

(assert (= (and b!2195080 c!349496) b!2195078))

(assert (= (and b!2195080 (not c!349496)) b!2195076))

(declare-fun m!2637669 () Bool)

(assert (=> b!2195077 m!2637669))

(declare-fun m!2637671 () Bool)

(assert (=> b!2195080 m!2637671))

(declare-fun m!2637673 () Bool)

(assert (=> b!2195080 m!2637673))

(assert (=> b!2195080 m!2637673))

(declare-fun m!2637675 () Bool)

(assert (=> b!2195080 m!2637675))

(declare-fun m!2637677 () Bool)

(assert (=> b!2195080 m!2637677))

(assert (=> b!2194646 d!656812))

(declare-fun bs!448860 () Bool)

(declare-fun d!656814 () Bool)

(assert (= bs!448860 (and d!656814 d!656566)))

(declare-fun lambda!82526 () Int)

(assert (=> bs!448860 (= (= (apply!6219 totalInput!923 from!1114) lt!820754) (= lambda!82526 lambda!82468))))

(declare-fun bs!448861 () Bool)

(assert (= bs!448861 (and d!656814 d!656734)))

(assert (=> bs!448861 (= (= (apply!6219 totalInput!923 from!1114) (head!4682 lt!820752)) (= lambda!82526 lambda!82512))))

(declare-fun bs!448862 () Bool)

(assert (= bs!448862 (and d!656814 d!656792)))

(assert (=> bs!448862 (= (= (apply!6219 totalInput!923 from!1114) (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))) (= lambda!82526 lambda!82524))))

(declare-fun bs!448863 () Bool)

(assert (= bs!448863 (and d!656814 d!656804)))

(assert (=> bs!448863 (= (= (apply!6219 totalInput!923 from!1114) (head!4682 (Cons!25521 lt!820754 lt!820752))) (= lambda!82526 lambda!82525))))

(assert (=> d!656814 true))

(assert (=> d!656814 (= (derivationStepZipper!235 z!3955 (apply!6219 totalInput!923 from!1114)) (flatMap!148 z!3955 lambda!82526))))

(declare-fun bs!448864 () Bool)

(assert (= bs!448864 d!656814))

(declare-fun m!2637679 () Bool)

(assert (=> bs!448864 m!2637679))

(assert (=> b!2194646 d!656814))

(assert (=> b!2194646 d!656572))

(declare-fun bs!448865 () Bool)

(declare-fun d!656816 () Bool)

(assert (= bs!448865 (and d!656816 d!656728)))

(declare-fun lambda!82527 () Int)

(assert (=> bs!448865 (not (= lambda!82527 lambda!82506))))

(declare-fun bs!448866 () Bool)

(assert (= bs!448866 (and d!656816 d!656570)))

(assert (=> bs!448866 (= lambda!82527 lambda!82471)))

(declare-fun bs!448867 () Bool)

(assert (= bs!448867 (and d!656816 d!656724)))

(assert (=> bs!448867 (not (= lambda!82527 lambda!82505))))

(declare-fun bs!448868 () Bool)

(assert (= bs!448868 (and d!656816 b!2194927)))

(assert (=> bs!448868 (not (= lambda!82527 lambda!82510))))

(declare-fun bs!448869 () Bool)

(assert (= bs!448869 (and d!656816 d!656740)))

(assert (=> bs!448869 (not (= lambda!82527 lambda!82515))))

(declare-fun bs!448870 () Bool)

(assert (= bs!448870 (and d!656816 d!656720)))

(assert (=> bs!448870 (not (= lambda!82527 lambda!82499))))

(declare-fun bs!448871 () Bool)

(assert (= bs!448871 (and d!656816 b!2194611)))

(assert (=> bs!448871 (not (= lambda!82527 lambda!82464))))

(declare-fun bs!448872 () Bool)

(assert (= bs!448872 (and d!656816 d!656770)))

(assert (=> bs!448872 (not (= lambda!82527 lambda!82522))))

(declare-fun bs!448873 () Bool)

(assert (= bs!448873 (and d!656816 b!2194612)))

(assert (=> bs!448873 (not (= lambda!82527 lambda!82465))))

(declare-fun bs!448874 () Bool)

(assert (= bs!448874 (and d!656816 b!2194926)))

(assert (=> bs!448874 (not (= lambda!82527 lambda!82507))))

(declare-fun bs!448875 () Bool)

(assert (= bs!448875 (and d!656816 d!656592)))

(assert (=> bs!448875 (= lambda!82527 lambda!82475)))

(declare-fun bs!448876 () Bool)

(assert (= bs!448876 (and d!656816 d!656534)))

(assert (=> bs!448876 (not (= lambda!82527 lambda!82463))))

(assert (=> d!656816 (= (nullableZipper!441 lt!820849) (exists!806 lt!820849 lambda!82527))))

(declare-fun bs!448877 () Bool)

(assert (= bs!448877 d!656816))

(declare-fun m!2637681 () Bool)

(assert (=> bs!448877 m!2637681))

(assert (=> b!2194646 d!656816))

(declare-fun b!2195081 () Bool)

(declare-fun e!1402809 () Int)

(assert (=> b!2195081 (= e!1402809 e!1402559)))

(declare-fun b!2195082 () Bool)

(declare-fun e!1402810 () Bool)

(assert (=> b!2195082 (= e!1402810 (lostCauseZipper!279 lt!820844))))

(declare-fun b!2195083 () Bool)

(assert (=> b!2195083 (= e!1402809 (+ 1 from!1114 1))))

(declare-fun d!656818 () Bool)

(declare-fun lt!820966 () Int)

(assert (=> d!656818 (and (>= lt!820966 (- 1)) (< lt!820966 lt!820757) (>= lt!820966 e!1402559) (or (= lt!820966 e!1402559) (>= lt!820966 (+ 1 from!1114 1))))))

(declare-fun e!1402811 () Int)

(assert (=> d!656818 (= lt!820966 e!1402811)))

(declare-fun c!349497 () Bool)

(assert (=> d!656818 (= c!349497 e!1402810)))

(declare-fun res!943639 () Bool)

(assert (=> d!656818 (=> res!943639 e!1402810)))

(assert (=> d!656818 (= res!943639 (= (+ 1 from!1114 1) lt!820757))))

(assert (=> d!656818 (and (>= (+ 1 from!1114 1) 0) (<= (+ 1 from!1114 1) lt!820757))))

(assert (=> d!656818 (= (furthestNullablePosition!331 lt!820844 (+ 1 from!1114 1) totalInput!923 lt!820757 e!1402559) lt!820966)))

(declare-fun b!2195084 () Bool)

(assert (=> b!2195084 (= e!1402811 e!1402559)))

(declare-fun b!2195085 () Bool)

(declare-fun lt!820967 () (InoxSet Context!3462))

(assert (=> b!2195085 (= e!1402811 (furthestNullablePosition!331 lt!820967 (+ 1 from!1114 1 1) totalInput!923 lt!820757 e!1402809))))

(assert (=> b!2195085 (= lt!820967 (derivationStepZipper!235 lt!820844 (apply!6219 totalInput!923 (+ 1 from!1114 1))))))

(declare-fun c!349498 () Bool)

(assert (=> b!2195085 (= c!349498 (nullableZipper!441 lt!820967))))

(assert (= (and d!656818 (not res!943639)) b!2195082))

(assert (= (and d!656818 c!349497) b!2195084))

(assert (= (and d!656818 (not c!349497)) b!2195085))

(assert (= (and b!2195085 c!349498) b!2195083))

(assert (= (and b!2195085 (not c!349498)) b!2195081))

(declare-fun m!2637683 () Bool)

(assert (=> b!2195082 m!2637683))

(declare-fun m!2637685 () Bool)

(assert (=> b!2195085 m!2637685))

(declare-fun m!2637687 () Bool)

(assert (=> b!2195085 m!2637687))

(assert (=> b!2195085 m!2637687))

(declare-fun m!2637689 () Bool)

(assert (=> b!2195085 m!2637689))

(declare-fun m!2637691 () Bool)

(assert (=> b!2195085 m!2637691))

(assert (=> b!2194638 d!656818))

(declare-fun bs!448878 () Bool)

(declare-fun d!656820 () Bool)

(assert (= bs!448878 (and d!656820 d!656734)))

(declare-fun lambda!82528 () Int)

(assert (=> bs!448878 (= (= (apply!6219 totalInput!923 (+ 1 from!1114)) (head!4682 lt!820752)) (= lambda!82528 lambda!82512))))

(declare-fun bs!448879 () Bool)

(assert (= bs!448879 (and d!656820 d!656814)))

(assert (=> bs!448879 (= (= (apply!6219 totalInput!923 (+ 1 from!1114)) (apply!6219 totalInput!923 from!1114)) (= lambda!82528 lambda!82526))))

(declare-fun bs!448880 () Bool)

(assert (= bs!448880 (and d!656820 d!656792)))

(assert (=> bs!448880 (= (= (apply!6219 totalInput!923 (+ 1 from!1114)) (head!4682 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820749))) (= lambda!82528 lambda!82524))))

(declare-fun bs!448881 () Bool)

(assert (= bs!448881 (and d!656820 d!656804)))

(assert (=> bs!448881 (= (= (apply!6219 totalInput!923 (+ 1 from!1114)) (head!4682 (Cons!25521 lt!820754 lt!820752))) (= lambda!82528 lambda!82525))))

(declare-fun bs!448882 () Bool)

(assert (= bs!448882 (and d!656820 d!656566)))

(assert (=> bs!448882 (= (= (apply!6219 totalInput!923 (+ 1 from!1114)) lt!820754) (= lambda!82528 lambda!82468))))

(assert (=> d!656820 true))

(assert (=> d!656820 (= (derivationStepZipper!235 lt!820753 (apply!6219 totalInput!923 (+ 1 from!1114))) (flatMap!148 lt!820753 lambda!82528))))

(declare-fun bs!448883 () Bool)

(assert (= bs!448883 d!656820))

(declare-fun m!2637693 () Bool)

(assert (=> bs!448883 m!2637693))

(assert (=> b!2194638 d!656820))

(declare-fun d!656822 () Bool)

(declare-fun lt!820968 () C!12468)

(assert (=> d!656822 (= lt!820968 (apply!6222 (list!9813 totalInput!923) (+ 1 from!1114)))))

(assert (=> d!656822 (= lt!820968 (apply!6223 (c!349275 totalInput!923) (+ 1 from!1114)))))

(declare-fun e!1402812 () Bool)

(assert (=> d!656822 e!1402812))

(declare-fun res!943640 () Bool)

(assert (=> d!656822 (=> (not res!943640) (not e!1402812))))

(assert (=> d!656822 (= res!943640 (<= 0 (+ 1 from!1114)))))

(assert (=> d!656822 (= (apply!6219 totalInput!923 (+ 1 from!1114)) lt!820968)))

(declare-fun b!2195086 () Bool)

(assert (=> b!2195086 (= e!1402812 (< (+ 1 from!1114) (size!19899 totalInput!923)))))

(assert (= (and d!656822 res!943640) b!2195086))

(assert (=> d!656822 m!2636929))

(assert (=> d!656822 m!2636929))

(declare-fun m!2637695 () Bool)

(assert (=> d!656822 m!2637695))

(declare-fun m!2637697 () Bool)

(assert (=> d!656822 m!2637697))

(assert (=> b!2195086 m!2636925))

(assert (=> b!2194638 d!656822))

(declare-fun bs!448884 () Bool)

(declare-fun d!656824 () Bool)

(assert (= bs!448884 (and d!656824 d!656728)))

(declare-fun lambda!82529 () Int)

(assert (=> bs!448884 (not (= lambda!82529 lambda!82506))))

(declare-fun bs!448885 () Bool)

(assert (= bs!448885 (and d!656824 d!656570)))

(assert (=> bs!448885 (= lambda!82529 lambda!82471)))

(declare-fun bs!448886 () Bool)

(assert (= bs!448886 (and d!656824 d!656816)))

(assert (=> bs!448886 (= lambda!82529 lambda!82527)))

(declare-fun bs!448887 () Bool)

(assert (= bs!448887 (and d!656824 d!656724)))

(assert (=> bs!448887 (not (= lambda!82529 lambda!82505))))

(declare-fun bs!448888 () Bool)

(assert (= bs!448888 (and d!656824 b!2194927)))

(assert (=> bs!448888 (not (= lambda!82529 lambda!82510))))

(declare-fun bs!448889 () Bool)

(assert (= bs!448889 (and d!656824 d!656740)))

(assert (=> bs!448889 (not (= lambda!82529 lambda!82515))))

(declare-fun bs!448890 () Bool)

(assert (= bs!448890 (and d!656824 d!656720)))

(assert (=> bs!448890 (not (= lambda!82529 lambda!82499))))

(declare-fun bs!448891 () Bool)

(assert (= bs!448891 (and d!656824 b!2194611)))

(assert (=> bs!448891 (not (= lambda!82529 lambda!82464))))

(declare-fun bs!448892 () Bool)

(assert (= bs!448892 (and d!656824 d!656770)))

(assert (=> bs!448892 (not (= lambda!82529 lambda!82522))))

(declare-fun bs!448893 () Bool)

(assert (= bs!448893 (and d!656824 b!2194612)))

(assert (=> bs!448893 (not (= lambda!82529 lambda!82465))))

(declare-fun bs!448894 () Bool)

(assert (= bs!448894 (and d!656824 b!2194926)))

(assert (=> bs!448894 (not (= lambda!82529 lambda!82507))))

(declare-fun bs!448895 () Bool)

(assert (= bs!448895 (and d!656824 d!656592)))

(assert (=> bs!448895 (= lambda!82529 lambda!82475)))

(declare-fun bs!448896 () Bool)

(assert (= bs!448896 (and d!656824 d!656534)))

(assert (=> bs!448896 (not (= lambda!82529 lambda!82463))))

(assert (=> d!656824 (= (nullableZipper!441 lt!820844) (exists!806 lt!820844 lambda!82529))))

(declare-fun bs!448897 () Bool)

(assert (= bs!448897 d!656824))

(declare-fun m!2637699 () Bool)

(assert (=> bs!448897 m!2637699))

(assert (=> b!2194638 d!656824))

(assert (=> b!2194701 d!656592))

(declare-fun b!2195087 () Bool)

(declare-fun e!1402814 () Int)

(assert (=> b!2195087 (= e!1402814 (size!19902 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2195088 () Bool)

(declare-fun e!1402813 () Bool)

(declare-fun lt!820969 () List!25605)

(declare-fun e!1402816 () Int)

(assert (=> b!2195088 (= e!1402813 (= (size!19902 lt!820969) e!1402816))))

(declare-fun c!349501 () Bool)

(assert (=> b!2195088 (= c!349501 (<= (- lt!820749 1) 0))))

(declare-fun d!656826 () Bool)

(assert (=> d!656826 e!1402813))

(declare-fun res!943641 () Bool)

(assert (=> d!656826 (=> (not res!943641) (not e!1402813))))

(assert (=> d!656826 (= res!943641 (= ((_ map implies) (content!3465 lt!820969) (content!3465 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))))) ((as const (InoxSet C!12468)) true)))))

(declare-fun e!1402815 () List!25605)

(assert (=> d!656826 (= lt!820969 e!1402815)))

(declare-fun c!349500 () Bool)

(assert (=> d!656826 (= c!349500 (or ((_ is Nil!25521) (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)))) (<= (- lt!820749 1) 0)))))

(assert (=> d!656826 (= (take!349 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))) (- lt!820749 1)) lt!820969)))

(declare-fun b!2195089 () Bool)

(assert (=> b!2195089 (= e!1402815 (Cons!25521 (h!30922 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)))) (take!349 (t!198203 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)))) (- (- lt!820749 1) 1))))))

(declare-fun b!2195090 () Bool)

(assert (=> b!2195090 (= e!1402816 e!1402814)))

(declare-fun c!349499 () Bool)

(assert (=> b!2195090 (= c!349499 (>= (- lt!820749 1) (size!19902 (t!198203 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114))))))))

(declare-fun b!2195091 () Bool)

(assert (=> b!2195091 (= e!1402814 (- lt!820749 1))))

(declare-fun b!2195092 () Bool)

(assert (=> b!2195092 (= e!1402815 Nil!25521)))

(declare-fun b!2195093 () Bool)

(assert (=> b!2195093 (= e!1402816 0)))

(assert (= (and d!656826 c!349500) b!2195092))

(assert (= (and d!656826 (not c!349500)) b!2195089))

(assert (= (and d!656826 res!943641) b!2195088))

(assert (= (and b!2195088 c!349501) b!2195093))

(assert (= (and b!2195088 (not c!349501)) b!2195090))

(assert (= (and b!2195090 c!349499) b!2195087))

(assert (= (and b!2195090 (not c!349499)) b!2195091))

(declare-fun m!2637701 () Bool)

(assert (=> d!656826 m!2637701))

(assert (=> d!656826 m!2637549))

(declare-fun m!2637703 () Bool)

(assert (=> b!2195088 m!2637703))

(assert (=> b!2195087 m!2637491))

(assert (=> b!2195090 m!2637491))

(declare-fun m!2637705 () Bool)

(assert (=> b!2195089 m!2637705))

(assert (=> b!2194669 d!656826))

(declare-fun b!2195094 () Bool)

(declare-fun e!1402817 () Int)

(assert (=> b!2195094 (= e!1402817 lt!820755)))

(declare-fun b!2195095 () Bool)

(declare-fun e!1402818 () Bool)

(assert (=> b!2195095 (= e!1402818 (lostCauseZipper!279 lt!820753))))

(declare-fun b!2195096 () Bool)

(assert (=> b!2195096 (= e!1402817 (+ 1 from!1114))))

(declare-fun lt!820970 () Int)

(declare-fun d!656828 () Bool)

(assert (=> d!656828 (and (>= lt!820970 (- 1)) (< lt!820970 (size!19899 totalInput!923)) (>= lt!820970 lt!820755) (or (= lt!820970 lt!820755) (>= lt!820970 (+ 1 from!1114))))))

(declare-fun e!1402819 () Int)

(assert (=> d!656828 (= lt!820970 e!1402819)))

(declare-fun c!349502 () Bool)

(assert (=> d!656828 (= c!349502 e!1402818)))

(declare-fun res!943642 () Bool)

(assert (=> d!656828 (=> res!943642 e!1402818)))

(assert (=> d!656828 (= res!943642 (= (+ 1 from!1114) (size!19899 totalInput!923)))))

(assert (=> d!656828 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) (size!19899 totalInput!923)))))

(assert (=> d!656828 (= (furthestNullablePosition!331 lt!820753 (+ 1 from!1114) totalInput!923 (size!19899 totalInput!923) lt!820755) lt!820970)))

(declare-fun b!2195097 () Bool)

(assert (=> b!2195097 (= e!1402819 lt!820755)))

(declare-fun b!2195098 () Bool)

(declare-fun lt!820971 () (InoxSet Context!3462))

(assert (=> b!2195098 (= e!1402819 (furthestNullablePosition!331 lt!820971 (+ 1 from!1114 1) totalInput!923 (size!19899 totalInput!923) e!1402817))))

(assert (=> b!2195098 (= lt!820971 (derivationStepZipper!235 lt!820753 (apply!6219 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!349503 () Bool)

(assert (=> b!2195098 (= c!349503 (nullableZipper!441 lt!820971))))

(assert (= (and d!656828 (not res!943642)) b!2195095))

(assert (= (and d!656828 c!349502) b!2195097))

(assert (= (and d!656828 (not c!349502)) b!2195098))

(assert (= (and b!2195098 c!349503) b!2195096))

(assert (= (and b!2195098 (not c!349503)) b!2195094))

(assert (=> b!2195095 m!2637107))

(assert (=> b!2195098 m!2636925))

(declare-fun m!2637707 () Bool)

(assert (=> b!2195098 m!2637707))

(assert (=> b!2195098 m!2637111))

(assert (=> b!2195098 m!2637111))

(assert (=> b!2195098 m!2637113))

(declare-fun m!2637709 () Bool)

(assert (=> b!2195098 m!2637709))

(assert (=> d!656528 d!656828))

(assert (=> d!656528 d!656588))

(declare-fun d!656830 () Bool)

(declare-fun e!1402822 () Bool)

(assert (=> d!656830 e!1402822))

(declare-fun res!943645 () Bool)

(assert (=> d!656830 (=> res!943645 e!1402822)))

(declare-fun lt!820974 () Int)

(assert (=> d!656830 (= res!943645 (<= lt!820974 0))))

(assert (=> d!656830 (= lt!820974 (+ (- (furthestNullablePosition!331 lt!820753 (+ 1 from!1114) totalInput!923 (size!19899 totalInput!923) lt!820755) (+ 1 from!1114)) 1))))

(assert (=> d!656830 true))

(declare-fun _$71!147 () Unit!38641)

(assert (=> d!656830 (= (choose!12983 lt!820753 (+ 1 from!1114) totalInput!923 lt!820755) _$71!147)))

(declare-fun b!2195101 () Bool)

(assert (=> b!2195101 (= e!1402822 (matchZipper!257 lt!820753 (take!349 (drop!1359 (list!9813 totalInput!923) (+ 1 from!1114)) lt!820974)))))

(assert (= (and d!656830 (not res!943645)) b!2195101))

(assert (=> d!656830 m!2636925))

(assert (=> d!656830 m!2636925))

(assert (=> d!656830 m!2636977))

(assert (=> b!2195101 m!2636929))

(assert (=> b!2195101 m!2636929))

(assert (=> b!2195101 m!2636931))

(assert (=> b!2195101 m!2636931))

(declare-fun m!2637711 () Bool)

(assert (=> b!2195101 m!2637711))

(assert (=> b!2195101 m!2637711))

(declare-fun m!2637713 () Bool)

(assert (=> b!2195101 m!2637713))

(assert (=> d!656528 d!656830))

(assert (=> bm!131929 d!656780))

(assert (=> b!2194670 d!656730))

(declare-fun tp!683825 () Bool)

(declare-fun e!1402823 () Bool)

(declare-fun tp!683827 () Bool)

(declare-fun b!2195102 () Bool)

(assert (=> b!2195102 (= e!1402823 (and (inv!34153 (left!19588 (left!19588 (c!349275 totalInput!923)))) tp!683825 (inv!34153 (right!19918 (left!19588 (c!349275 totalInput!923)))) tp!683827))))

(declare-fun b!2195104 () Bool)

(declare-fun e!1402824 () Bool)

(declare-fun tp!683826 () Bool)

(assert (=> b!2195104 (= e!1402824 tp!683826)))

(declare-fun b!2195103 () Bool)

(assert (=> b!2195103 (= e!1402823 (and (inv!34161 (xs!11239 (left!19588 (c!349275 totalInput!923)))) e!1402824))))

(assert (=> b!2194713 (= tp!683780 (and (inv!34153 (left!19588 (c!349275 totalInput!923))) e!1402823))))

(assert (= (and b!2194713 ((_ is Node!8297) (left!19588 (c!349275 totalInput!923)))) b!2195102))

(assert (= b!2195103 b!2195104))

(assert (= (and b!2194713 ((_ is Leaf!12145) (left!19588 (c!349275 totalInput!923)))) b!2195103))

(declare-fun m!2637715 () Bool)

(assert (=> b!2195102 m!2637715))

(declare-fun m!2637717 () Bool)

(assert (=> b!2195102 m!2637717))

(declare-fun m!2637719 () Bool)

(assert (=> b!2195103 m!2637719))

(assert (=> b!2194713 m!2637187))

(declare-fun e!1402825 () Bool)

(declare-fun b!2195105 () Bool)

(declare-fun tp!683828 () Bool)

(declare-fun tp!683830 () Bool)

(assert (=> b!2195105 (= e!1402825 (and (inv!34153 (left!19588 (right!19918 (c!349275 totalInput!923)))) tp!683828 (inv!34153 (right!19918 (right!19918 (c!349275 totalInput!923)))) tp!683830))))

(declare-fun b!2195107 () Bool)

(declare-fun e!1402826 () Bool)

(declare-fun tp!683829 () Bool)

(assert (=> b!2195107 (= e!1402826 tp!683829)))

(declare-fun b!2195106 () Bool)

(assert (=> b!2195106 (= e!1402825 (and (inv!34161 (xs!11239 (right!19918 (c!349275 totalInput!923)))) e!1402826))))

(assert (=> b!2194713 (= tp!683782 (and (inv!34153 (right!19918 (c!349275 totalInput!923))) e!1402825))))

(assert (= (and b!2194713 ((_ is Node!8297) (right!19918 (c!349275 totalInput!923)))) b!2195105))

(assert (= b!2195106 b!2195107))

(assert (= (and b!2194713 ((_ is Leaf!12145) (right!19918 (c!349275 totalInput!923)))) b!2195106))

(declare-fun m!2637721 () Bool)

(assert (=> b!2195105 m!2637721))

(declare-fun m!2637723 () Bool)

(assert (=> b!2195105 m!2637723))

(declare-fun m!2637725 () Bool)

(assert (=> b!2195106 m!2637725))

(assert (=> b!2194713 m!2637189))

(declare-fun b!2195119 () Bool)

(declare-fun e!1402829 () Bool)

(declare-fun tp!683841 () Bool)

(declare-fun tp!683842 () Bool)

(assert (=> b!2195119 (= e!1402829 (and tp!683841 tp!683842))))

(declare-fun b!2195121 () Bool)

(declare-fun tp!683845 () Bool)

(declare-fun tp!683843 () Bool)

(assert (=> b!2195121 (= e!1402829 (and tp!683845 tp!683843))))

(declare-fun b!2195120 () Bool)

(declare-fun tp!683844 () Bool)

(assert (=> b!2195120 (= e!1402829 tp!683844)))

(assert (=> b!2194725 (= tp!683793 e!1402829)))

(declare-fun b!2195118 () Bool)

(declare-fun tp_is_empty!9729 () Bool)

(assert (=> b!2195118 (= e!1402829 tp_is_empty!9729)))

(assert (= (and b!2194725 ((_ is ElementMatch!6161) (h!30921 (exprs!2231 setElem!18738)))) b!2195118))

(assert (= (and b!2194725 ((_ is Concat!10463) (h!30921 (exprs!2231 setElem!18738)))) b!2195119))

(assert (= (and b!2194725 ((_ is Star!6161) (h!30921 (exprs!2231 setElem!18738)))) b!2195120))

(assert (= (and b!2194725 ((_ is Union!6161) (h!30921 (exprs!2231 setElem!18738)))) b!2195121))

(declare-fun b!2195122 () Bool)

(declare-fun e!1402830 () Bool)

(declare-fun tp!683846 () Bool)

(declare-fun tp!683847 () Bool)

(assert (=> b!2195122 (= e!1402830 (and tp!683846 tp!683847))))

(assert (=> b!2194725 (= tp!683794 e!1402830)))

(assert (= (and b!2194725 ((_ is Cons!25520) (t!198202 (exprs!2231 setElem!18738)))) b!2195122))

(declare-fun condSetEmpty!18746 () Bool)

(assert (=> setNonEmpty!18744 (= condSetEmpty!18746 (= setRest!18744 ((as const (Array Context!3462 Bool)) false)))))

(declare-fun setRes!18746 () Bool)

(assert (=> setNonEmpty!18744 (= tp!683788 setRes!18746)))

(declare-fun setIsEmpty!18746 () Bool)

(assert (=> setIsEmpty!18746 setRes!18746))

(declare-fun setNonEmpty!18746 () Bool)

(declare-fun e!1402831 () Bool)

(declare-fun setElem!18746 () Context!3462)

(declare-fun tp!683849 () Bool)

(assert (=> setNonEmpty!18746 (= setRes!18746 (and tp!683849 (inv!34155 setElem!18746) e!1402831))))

(declare-fun setRest!18746 () (InoxSet Context!3462))

(assert (=> setNonEmpty!18746 (= setRest!18744 ((_ map or) (store ((as const (Array Context!3462 Bool)) false) setElem!18746 true) setRest!18746))))

(declare-fun b!2195123 () Bool)

(declare-fun tp!683848 () Bool)

(assert (=> b!2195123 (= e!1402831 tp!683848)))

(assert (= (and setNonEmpty!18744 condSetEmpty!18746) setIsEmpty!18746))

(assert (= (and setNonEmpty!18744 (not condSetEmpty!18746)) setNonEmpty!18746))

(assert (= setNonEmpty!18746 b!2195123))

(declare-fun m!2637727 () Bool)

(assert (=> setNonEmpty!18746 m!2637727))

(declare-fun b!2195128 () Bool)

(declare-fun e!1402834 () Bool)

(declare-fun tp!683852 () Bool)

(assert (=> b!2195128 (= e!1402834 (and tp_is_empty!9729 tp!683852))))

(assert (=> b!2194715 (= tp!683781 e!1402834)))

(assert (= (and b!2194715 ((_ is Cons!25521) (innerList!8357 (xs!11239 (c!349275 totalInput!923))))) b!2195128))

(declare-fun b!2195129 () Bool)

(declare-fun e!1402835 () Bool)

(declare-fun tp!683853 () Bool)

(declare-fun tp!683854 () Bool)

(assert (=> b!2195129 (= e!1402835 (and tp!683853 tp!683854))))

(assert (=> b!2194720 (= tp!683787 e!1402835)))

(assert (= (and b!2194720 ((_ is Cons!25520) (exprs!2231 setElem!18744))) b!2195129))

(declare-fun b_lambda!71155 () Bool)

(assert (= b_lambda!71151 (or d!656590 b_lambda!71155)))

(declare-fun bs!448898 () Bool)

(declare-fun d!656832 () Bool)

(assert (= bs!448898 (and d!656832 d!656590)))

(declare-fun validRegex!2337 (Regex!6161) Bool)

(assert (=> bs!448898 (= (dynLambda!11440 lambda!82474 (h!30921 (exprs!2231 setElem!18738))) (validRegex!2337 (h!30921 (exprs!2231 setElem!18738))))))

(declare-fun m!2637729 () Bool)

(assert (=> bs!448898 m!2637729))

(assert (=> b!2194920 d!656832))

(check-sat (not b!2195017) (not b!2194890) (not d!656784) (not b!2195054) (not b!2194931) (not d!656724) (not b!2194971) (not b!2194896) (not b!2195004) (not d!656706) (not d!656770) (not b!2194969) (not d!656720) (not b!2195085) (not b_lambda!71155) (not setNonEmpty!18746) (not bm!131941) (not d!656702) (not b!2195104) (not b!2195101) (not b!2195123) (not b!2194965) (not b!2194967) (not d!656772) tp_is_empty!9729 (not d!656810) (not b!2195128) (not b!2194930) (not d!656804) (not b!2195039) (not b!2195058) (not d!656758) (not b!2195086) (not d!656792) (not b!2194994) (not d!656788) (not d!656704) (not b!2195001) (not b!2195095) (not b!2195119) (not b!2194991) (not b!2195057) (not b!2195006) (not b!2195053) (not b!2195065) (not d!656782) (not d!656728) (not b!2195008) (not b!2194926) (not d!656816) (not b!2194894) (not b!2195087) (not b!2195090) (not d!656824) (not b!2195055) (not d!656752) (not b!2195077) (not b!2194713) (not b!2195098) (not d!656764) (not d!656820) (not b!2195056) (not b!2194929) (not b!2195121) (not b!2195082) (not b!2195035) (not b!2194911) (not d!656830) (not b!2194999) (not d!656814) (not b!2195015) (not b!2194893) (not b!2194921) (not b!2195016) (not d!656800) (not b!2195037) (not b!2195122) (not b!2195040) (not b!2194992) (not b!2195102) (not b!2195103) (not b!2194898) (not b!2195088) (not b!2195034) (not d!656734) (not d!656786) (not b!2195066) (not b!2194972) (not b!2195089) (not d!656790) (not b!2195129) (not d!656826) (not b!2195080) (not b!2195120) (not b!2195038) (not bs!448898) (not d!656822) (not d!656802) (not d!656756) (not b!2194897) (not bm!131937) (not b!2194927) (not bm!131936) (not d!656740) (not b!2195003) (not b!2195105) (not b!2194895) (not b!2195107) (not b!2195106) (not b!2195063) (not d!656766) (not bm!131938) (not d!656732) (not b!2195074) (not b!2194973))
(check-sat)
