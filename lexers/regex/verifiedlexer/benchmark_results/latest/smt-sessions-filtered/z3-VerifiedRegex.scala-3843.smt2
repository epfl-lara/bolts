; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212742 () Bool)

(assert start!212742)

(declare-fun b!2193562 () Bool)

(declare-fun res!943158 () Bool)

(declare-fun e!1401873 () Bool)

(assert (=> b!2193562 (=> (not res!943158) (not e!1401873))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12452 0))(
  ( (C!12453 (val!7212 Int)) )
))
(declare-datatypes ((Regex!6153 0))(
  ( (ElementMatch!6153 (c!348994 C!12452)) (Concat!10455 (regOne!12818 Regex!6153) (regTwo!12818 Regex!6153)) (EmptyExpr!6153) (Star!6153 (reg!6482 Regex!6153)) (EmptyLang!6153) (Union!6153 (regOne!12819 Regex!6153) (regTwo!12819 Regex!6153)) )
))
(declare-datatypes ((List!25584 0))(
  ( (Nil!25500) (Cons!25500 (h!30901 Regex!6153) (t!198182 List!25584)) )
))
(declare-datatypes ((Context!3446 0))(
  ( (Context!3447 (exprs!2223 List!25584)) )
))
(declare-fun z!3955 () (InoxSet Context!3446))

(declare-fun lostCauseZipper!271 ((InoxSet Context!3446)) Bool)

(assert (=> b!2193562 (= res!943158 (not (lostCauseZipper!271 z!3955)))))

(declare-fun b!2193563 () Bool)

(declare-fun e!1401877 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2193563 (= e!1401877 from!1114)))

(declare-fun b!2193564 () Bool)

(declare-fun e!1401872 () Bool)

(declare-fun lt!820289 () Int)

(declare-fun e!1401865 () Int)

(assert (=> b!2193564 (= e!1401872 (= lt!820289 e!1401865))))

(declare-fun c!348992 () Bool)

(declare-fun e!1401871 () Bool)

(assert (=> b!2193564 (= c!348992 e!1401871)))

(declare-fun res!943150 () Bool)

(assert (=> b!2193564 (=> res!943150 e!1401871)))

(declare-fun lt!820288 () Int)

(assert (=> b!2193564 (= res!943150 (= (+ 1 from!1114) lt!820288))))

(declare-fun lt!820286 () Int)

(declare-fun lt!820292 () Int)

(declare-fun b!2193565 () Bool)

(declare-fun e!1401864 () Bool)

(declare-fun lastNullablePos!193 () Int)

(declare-fun lt!820290 () Int)

(assert (=> b!2193565 (= e!1401864 (not (or (> lt!820290 0) (> lt!820289 from!1114) (< lt!820289 lt!820292) (< lt!820292 lastNullablePos!193) (> lt!820292 from!1114) (let ((bdg!82985 (= lt!820292 from!1114))) (or (and (not bdg!82985) (not (= lt!820292 lastNullablePos!193))) (not (= lt!820292 lastNullablePos!193)) (>= lt!820292 from!1114) (> lt!820286 from!1114) (let ((bdg!82986 (+ 1 (- lt!820286 from!1114)))) (or (> bdg!82986 1) (not (= bdg!82986 1)) (not (= lt!820286 from!1114)) bdg!82985)))))))))

(declare-fun e!1401866 () Bool)

(assert (=> b!2193565 e!1401866))

(declare-fun res!943153 () Bool)

(assert (=> b!2193565 (=> (not res!943153) (not e!1401866))))

(declare-fun e!1401869 () Bool)

(assert (=> b!2193565 (= res!943153 e!1401869)))

(declare-fun res!943154 () Bool)

(assert (=> b!2193565 (=> res!943154 e!1401869)))

(assert (=> b!2193565 (= res!943154 (<= lt!820290 0))))

(assert (=> b!2193565 (= lt!820290 (+ 1 (- lt!820289 (+ 1 from!1114))))))

(declare-datatypes ((List!25585 0))(
  ( (Nil!25501) (Cons!25501 (h!30902 C!12452) (t!198183 List!25585)) )
))
(declare-datatypes ((IArray!16583 0))(
  ( (IArray!16584 (innerList!8349 List!25585)) )
))
(declare-datatypes ((Conc!8289 0))(
  ( (Node!8289 (left!19568 Conc!8289) (right!19898 Conc!8289) (csize!16808 Int) (cheight!8500 Int)) (Leaf!12133 (xs!11231 IArray!16583) (csize!16809 Int)) (Empty!8289) )
))
(declare-datatypes ((BalanceConc!16340 0))(
  ( (BalanceConc!16341 (c!348995 Conc!8289)) )
))
(declare-fun totalInput!923 () BalanceConc!16340)

(declare-fun lt!820291 () (InoxSet Context!3446))

(declare-datatypes ((Unit!38613 0))(
  ( (Unit!38614) )
))
(declare-fun lt!820293 () Unit!38613)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!152 ((InoxSet Context!3446) Int BalanceConc!16340 Int) Unit!38613)

(assert (=> b!2193565 (= lt!820293 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!152 lt!820291 (+ 1 from!1114) totalInput!923 lt!820292))))

(declare-fun b!2193566 () Bool)

(declare-fun e!1401870 () Bool)

(assert (=> b!2193566 (= e!1401870 e!1401872)))

(declare-fun res!943156 () Bool)

(assert (=> b!2193566 (=> res!943156 e!1401872)))

(declare-fun lt!820287 () Int)

(assert (=> b!2193566 (= res!943156 (or (> lt!820287 1) (not (= lt!820287 1)) (not (= lt!820286 from!1114))))))

(assert (=> b!2193566 (= lt!820287 (+ 1 (- lt!820286 from!1114)))))

(declare-fun b!2193567 () Bool)

(declare-fun e!1401867 () Bool)

(assert (=> b!2193567 (= e!1401867 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2193568 () Bool)

(assert (=> b!2193568 (= e!1401865 lt!820292)))

(declare-fun b!2193569 () Bool)

(declare-fun e!1401874 () Int)

(assert (=> b!2193569 (= e!1401874 (+ 1 from!1114))))

(declare-fun b!2193570 () Bool)

(declare-fun e!1401876 () Bool)

(assert (=> b!2193570 (= e!1401876 e!1401873)))

(declare-fun res!943157 () Bool)

(assert (=> b!2193570 (=> (not res!943157) (not e!1401873))))

(assert (=> b!2193570 (= res!943157 (and (<= from!1114 lt!820288) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19883 (BalanceConc!16340) Int)

(assert (=> b!2193570 (= lt!820288 (size!19883 totalInput!923))))

(declare-fun b!2193571 () Bool)

(declare-fun res!943159 () Bool)

(assert (=> b!2193571 (=> (not res!943159) (not e!1401873))))

(assert (=> b!2193571 (= res!943159 e!1401867)))

(declare-fun res!943152 () Bool)

(assert (=> b!2193571 (=> res!943152 e!1401867)))

(declare-fun nullableZipper!433 ((InoxSet Context!3446)) Bool)

(assert (=> b!2193571 (= res!943152 (not (nullableZipper!433 z!3955)))))

(declare-fun b!2193572 () Bool)

(declare-fun matchZipper!249 ((InoxSet Context!3446) List!25585) Bool)

(declare-fun take!341 (List!25585 Int) List!25585)

(declare-fun drop!1351 (List!25585 Int) List!25585)

(declare-fun list!9801 (BalanceConc!16340) List!25585)

(assert (=> b!2193572 (= e!1401869 (matchZipper!249 lt!820291 (take!341 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)) lt!820290)))))

(declare-fun res!943151 () Bool)

(assert (=> start!212742 (=> (not res!943151) (not e!1401876))))

(assert (=> start!212742 (= res!943151 (>= from!1114 0))))

(assert (=> start!212742 e!1401876))

(assert (=> start!212742 true))

(declare-fun e!1401875 () Bool)

(declare-fun inv!34106 (BalanceConc!16340) Bool)

(assert (=> start!212742 (and (inv!34106 totalInput!923) e!1401875)))

(declare-fun condSetEmpty!18702 () Bool)

(assert (=> start!212742 (= condSetEmpty!18702 (= z!3955 ((as const (Array Context!3446 Bool)) false)))))

(declare-fun setRes!18702 () Bool)

(assert (=> start!212742 setRes!18702))

(declare-fun b!2193573 () Bool)

(assert (=> b!2193573 (= e!1401866 e!1401870)))

(declare-fun res!943155 () Bool)

(assert (=> b!2193573 (=> res!943155 e!1401870)))

(assert (=> b!2193573 (= res!943155 (or (> lt!820290 0) (> lt!820289 from!1114) (< lt!820289 lt!820292) (< lt!820292 lastNullablePos!193) (> lt!820292 from!1114) (and (not (= lt!820292 from!1114)) (not (= lt!820292 lastNullablePos!193))) (not (= lt!820292 lastNullablePos!193)) (>= lt!820292 from!1114) (> lt!820286 from!1114)))))

(declare-fun b!2193574 () Bool)

(declare-fun e!1401868 () Bool)

(declare-fun tp!683594 () Bool)

(assert (=> b!2193574 (= e!1401868 tp!683594)))

(declare-fun b!2193575 () Bool)

(assert (=> b!2193575 (= e!1401874 lt!820292)))

(declare-fun setNonEmpty!18702 () Bool)

(declare-fun tp!683595 () Bool)

(declare-fun setElem!18702 () Context!3446)

(declare-fun inv!34107 (Context!3446) Bool)

(assert (=> setNonEmpty!18702 (= setRes!18702 (and tp!683595 (inv!34107 setElem!18702) e!1401868))))

(declare-fun setRest!18702 () (InoxSet Context!3446))

(assert (=> setNonEmpty!18702 (= z!3955 ((_ map or) (store ((as const (Array Context!3446 Bool)) false) setElem!18702 true) setRest!18702))))

(declare-fun b!2193576 () Bool)

(assert (=> b!2193576 (= e!1401877 lastNullablePos!193)))

(declare-fun b!2193577 () Bool)

(declare-fun tp!683596 () Bool)

(declare-fun inv!34108 (Conc!8289) Bool)

(assert (=> b!2193577 (= e!1401875 (and (inv!34108 (c!348995 totalInput!923)) tp!683596))))

(declare-fun b!2193578 () Bool)

(declare-fun lt!820294 () (InoxSet Context!3446))

(declare-fun furthestNullablePosition!323 ((InoxSet Context!3446) Int BalanceConc!16340 Int Int) Int)

(assert (=> b!2193578 (= e!1401865 (furthestNullablePosition!323 lt!820294 (+ 2 from!1114) totalInput!923 lt!820288 e!1401874))))

(declare-fun derivationStepZipper!227 ((InoxSet Context!3446) C!12452) (InoxSet Context!3446))

(declare-fun apply!6203 (BalanceConc!16340 Int) C!12452)

(assert (=> b!2193578 (= lt!820294 (derivationStepZipper!227 lt!820291 (apply!6203 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!348991 () Bool)

(assert (=> b!2193578 (= c!348991 (nullableZipper!433 lt!820294))))

(declare-fun b!2193579 () Bool)

(assert (=> b!2193579 (= e!1401871 (lostCauseZipper!271 lt!820291))))

(declare-fun setIsEmpty!18702 () Bool)

(assert (=> setIsEmpty!18702 setRes!18702))

(declare-fun b!2193580 () Bool)

(declare-fun res!943148 () Bool)

(assert (=> b!2193580 (=> (not res!943148) (not e!1401873))))

(assert (=> b!2193580 (= res!943148 (not (= from!1114 lt!820288)))))

(declare-fun b!2193581 () Bool)

(assert (=> b!2193581 (= e!1401873 e!1401864)))

(declare-fun res!943149 () Bool)

(assert (=> b!2193581 (=> (not res!943149) (not e!1401864))))

(assert (=> b!2193581 (= res!943149 (= lt!820286 lt!820289))))

(assert (=> b!2193581 (= lt!820289 (furthestNullablePosition!323 lt!820291 (+ 1 from!1114) totalInput!923 lt!820288 lt!820292))))

(assert (=> b!2193581 (= lt!820286 (furthestNullablePosition!323 z!3955 from!1114 totalInput!923 lt!820288 lastNullablePos!193))))

(assert (=> b!2193581 (= lt!820292 e!1401877)))

(declare-fun c!348993 () Bool)

(assert (=> b!2193581 (= c!348993 (nullableZipper!433 lt!820291))))

(assert (=> b!2193581 (= lt!820291 (derivationStepZipper!227 z!3955 (apply!6203 totalInput!923 from!1114)))))

(assert (= (and start!212742 res!943151) b!2193570))

(assert (= (and b!2193570 res!943157) b!2193571))

(assert (= (and b!2193571 (not res!943152)) b!2193567))

(assert (= (and b!2193571 res!943159) b!2193580))

(assert (= (and b!2193580 res!943148) b!2193562))

(assert (= (and b!2193562 res!943158) b!2193581))

(assert (= (and b!2193581 c!348993) b!2193563))

(assert (= (and b!2193581 (not c!348993)) b!2193576))

(assert (= (and b!2193581 res!943149) b!2193565))

(assert (= (and b!2193565 (not res!943154)) b!2193572))

(assert (= (and b!2193565 res!943153) b!2193573))

(assert (= (and b!2193573 (not res!943155)) b!2193566))

(assert (= (and b!2193566 (not res!943156)) b!2193564))

(assert (= (and b!2193564 (not res!943150)) b!2193579))

(assert (= (and b!2193564 c!348992) b!2193568))

(assert (= (and b!2193564 (not c!348992)) b!2193578))

(assert (= (and b!2193578 c!348991) b!2193569))

(assert (= (and b!2193578 (not c!348991)) b!2193575))

(assert (= start!212742 b!2193577))

(assert (= (and start!212742 condSetEmpty!18702) setIsEmpty!18702))

(assert (= (and start!212742 (not condSetEmpty!18702)) setNonEmpty!18702))

(assert (= setNonEmpty!18702 b!2193574))

(declare-fun m!2636085 () Bool)

(assert (=> b!2193579 m!2636085))

(declare-fun m!2636087 () Bool)

(assert (=> start!212742 m!2636087))

(declare-fun m!2636089 () Bool)

(assert (=> setNonEmpty!18702 m!2636089))

(declare-fun m!2636091 () Bool)

(assert (=> b!2193565 m!2636091))

(declare-fun m!2636093 () Bool)

(assert (=> b!2193570 m!2636093))

(declare-fun m!2636095 () Bool)

(assert (=> b!2193578 m!2636095))

(declare-fun m!2636097 () Bool)

(assert (=> b!2193578 m!2636097))

(assert (=> b!2193578 m!2636097))

(declare-fun m!2636099 () Bool)

(assert (=> b!2193578 m!2636099))

(declare-fun m!2636101 () Bool)

(assert (=> b!2193578 m!2636101))

(declare-fun m!2636103 () Bool)

(assert (=> b!2193577 m!2636103))

(declare-fun m!2636105 () Bool)

(assert (=> b!2193581 m!2636105))

(declare-fun m!2636107 () Bool)

(assert (=> b!2193581 m!2636107))

(declare-fun m!2636109 () Bool)

(assert (=> b!2193581 m!2636109))

(declare-fun m!2636111 () Bool)

(assert (=> b!2193581 m!2636111))

(assert (=> b!2193581 m!2636107))

(declare-fun m!2636113 () Bool)

(assert (=> b!2193581 m!2636113))

(declare-fun m!2636115 () Bool)

(assert (=> b!2193562 m!2636115))

(declare-fun m!2636117 () Bool)

(assert (=> b!2193571 m!2636117))

(declare-fun m!2636119 () Bool)

(assert (=> b!2193572 m!2636119))

(assert (=> b!2193572 m!2636119))

(declare-fun m!2636121 () Bool)

(assert (=> b!2193572 m!2636121))

(assert (=> b!2193572 m!2636121))

(declare-fun m!2636123 () Bool)

(assert (=> b!2193572 m!2636123))

(assert (=> b!2193572 m!2636123))

(declare-fun m!2636125 () Bool)

(assert (=> b!2193572 m!2636125))

(check-sat (not b!2193562) (not b!2193572) (not setNonEmpty!18702) (not b!2193574) (not start!212742) (not b!2193571) (not b!2193581) (not b!2193570) (not b!2193579) (not b!2193578) (not b!2193577) (not b!2193565))
(check-sat)
(get-model)

(declare-fun bs!448517 () Bool)

(declare-fun b!2193594 () Bool)

(declare-fun d!656346 () Bool)

(assert (= bs!448517 (and b!2193594 d!656346)))

(declare-fun lambda!82350 () Int)

(declare-fun lambda!82349 () Int)

(assert (=> bs!448517 (not (= lambda!82350 lambda!82349))))

(declare-fun bs!448518 () Bool)

(declare-fun b!2193595 () Bool)

(assert (= bs!448518 (and b!2193595 d!656346)))

(declare-fun lambda!82351 () Int)

(assert (=> bs!448518 (not (= lambda!82351 lambda!82349))))

(declare-fun bs!448519 () Bool)

(assert (= bs!448519 (and b!2193595 b!2193594)))

(assert (=> bs!448519 (= lambda!82351 lambda!82350)))

(declare-fun call!131886 () Bool)

(declare-fun bm!131880 () Bool)

(declare-datatypes ((List!25587 0))(
  ( (Nil!25503) (Cons!25503 (h!30904 Context!3446) (t!198185 List!25587)) )
))
(declare-fun lt!820344 () List!25587)

(declare-fun c!349018 () Bool)

(declare-fun lt!820346 () List!25587)

(declare-fun exists!796 (List!25587 Int) Bool)

(assert (=> bm!131880 (= call!131886 (exists!796 (ite c!349018 lt!820346 lt!820344) (ite c!349018 lambda!82350 lambda!82351)))))

(declare-fun e!1401892 () Unit!38613)

(declare-fun Unit!38617 () Unit!38613)

(assert (=> b!2193595 (= e!1401892 Unit!38617)))

(declare-fun call!131885 () List!25587)

(assert (=> b!2193595 (= lt!820344 call!131885)))

(declare-fun lt!820343 () Unit!38613)

(declare-fun lemmaForallThenNotExists!38 (List!25587 Int) Unit!38613)

(assert (=> b!2193595 (= lt!820343 (lemmaForallThenNotExists!38 lt!820344 lambda!82349))))

(assert (=> b!2193595 (not call!131886)))

(declare-fun lt!820347 () Unit!38613)

(assert (=> b!2193595 (= lt!820347 lt!820343)))

(declare-fun lt!820350 () Bool)

(declare-datatypes ((Option!5013 0))(
  ( (None!5012) (Some!5012 (v!29407 List!25585)) )
))
(declare-fun isEmpty!14567 (Option!5013) Bool)

(declare-fun getLanguageWitness!130 ((InoxSet Context!3446)) Option!5013)

(assert (=> d!656346 (= lt!820350 (isEmpty!14567 (getLanguageWitness!130 lt!820291)))))

(declare-fun forall!5208 ((InoxSet Context!3446) Int) Bool)

(assert (=> d!656346 (= lt!820350 (forall!5208 lt!820291 lambda!82349))))

(declare-fun lt!820348 () Unit!38613)

(assert (=> d!656346 (= lt!820348 e!1401892)))

(assert (=> d!656346 (= c!349018 (not (forall!5208 lt!820291 lambda!82349)))))

(assert (=> d!656346 (= (lostCauseZipper!271 lt!820291) lt!820350)))

(declare-fun bm!131881 () Bool)

(declare-fun toList!1249 ((InoxSet Context!3446)) List!25587)

(assert (=> bm!131881 (= call!131885 (toList!1249 lt!820291))))

(declare-fun Unit!38618 () Unit!38613)

(assert (=> b!2193594 (= e!1401892 Unit!38618)))

(assert (=> b!2193594 (= lt!820346 call!131885)))

(declare-fun lt!820345 () Unit!38613)

(declare-fun lemmaNotForallThenExists!38 (List!25587 Int) Unit!38613)

(assert (=> b!2193594 (= lt!820345 (lemmaNotForallThenExists!38 lt!820346 lambda!82349))))

(assert (=> b!2193594 call!131886))

(declare-fun lt!820349 () Unit!38613)

(assert (=> b!2193594 (= lt!820349 lt!820345)))

(assert (= (and d!656346 c!349018) b!2193594))

(assert (= (and d!656346 (not c!349018)) b!2193595))

(assert (= (or b!2193594 b!2193595) bm!131880))

(assert (= (or b!2193594 b!2193595) bm!131881))

(declare-fun m!2636157 () Bool)

(assert (=> b!2193594 m!2636157))

(declare-fun m!2636159 () Bool)

(assert (=> b!2193595 m!2636159))

(declare-fun m!2636161 () Bool)

(assert (=> bm!131881 m!2636161))

(declare-fun m!2636163 () Bool)

(assert (=> bm!131880 m!2636163))

(declare-fun m!2636165 () Bool)

(assert (=> d!656346 m!2636165))

(assert (=> d!656346 m!2636165))

(declare-fun m!2636167 () Bool)

(assert (=> d!656346 m!2636167))

(declare-fun m!2636169 () Bool)

(assert (=> d!656346 m!2636169))

(assert (=> d!656346 m!2636169))

(assert (=> b!2193579 d!656346))

(declare-fun d!656356 () Bool)

(declare-fun isBalanced!2554 (Conc!8289) Bool)

(assert (=> d!656356 (= (inv!34106 totalInput!923) (isBalanced!2554 (c!348995 totalInput!923)))))

(declare-fun bs!448520 () Bool)

(assert (= bs!448520 d!656356))

(declare-fun m!2636171 () Bool)

(assert (=> bs!448520 m!2636171))

(assert (=> start!212742 d!656356))

(declare-fun bs!448521 () Bool)

(declare-fun d!656358 () Bool)

(assert (= bs!448521 (and d!656358 d!656346)))

(declare-fun lambda!82354 () Int)

(assert (=> bs!448521 (not (= lambda!82354 lambda!82349))))

(declare-fun bs!448522 () Bool)

(assert (= bs!448522 (and d!656358 b!2193594)))

(assert (=> bs!448522 (not (= lambda!82354 lambda!82350))))

(declare-fun bs!448523 () Bool)

(assert (= bs!448523 (and d!656358 b!2193595)))

(assert (=> bs!448523 (not (= lambda!82354 lambda!82351))))

(declare-fun exists!797 ((InoxSet Context!3446) Int) Bool)

(assert (=> d!656358 (= (nullableZipper!433 z!3955) (exists!797 z!3955 lambda!82354))))

(declare-fun bs!448524 () Bool)

(assert (= bs!448524 d!656358))

(declare-fun m!2636173 () Bool)

(assert (=> bs!448524 m!2636173))

(assert (=> b!2193571 d!656358))

(declare-fun d!656360 () Bool)

(declare-fun lambda!82357 () Int)

(declare-fun forall!5209 (List!25584 Int) Bool)

(assert (=> d!656360 (= (inv!34107 setElem!18702) (forall!5209 (exprs!2223 setElem!18702) lambda!82357))))

(declare-fun bs!448525 () Bool)

(assert (= bs!448525 d!656360))

(declare-fun m!2636179 () Bool)

(assert (=> bs!448525 m!2636179))

(assert (=> setNonEmpty!18702 d!656360))

(declare-fun d!656364 () Bool)

(declare-fun e!1401915 () Bool)

(assert (=> d!656364 e!1401915))

(declare-fun res!943171 () Bool)

(assert (=> d!656364 (=> res!943171 e!1401915)))

(declare-fun lt!820366 () Int)

(assert (=> d!656364 (= res!943171 (<= lt!820366 0))))

(assert (=> d!656364 (= lt!820366 (+ (- (furthestNullablePosition!323 lt!820291 (+ 1 from!1114) totalInput!923 (size!19883 totalInput!923) lt!820292) (+ 1 from!1114)) 1))))

(declare-fun lt!820367 () Unit!38613)

(declare-fun choose!12977 ((InoxSet Context!3446) Int BalanceConc!16340 Int) Unit!38613)

(assert (=> d!656364 (= lt!820367 (choose!12977 lt!820291 (+ 1 from!1114) totalInput!923 lt!820292))))

(declare-fun e!1401914 () Bool)

(assert (=> d!656364 e!1401914))

(declare-fun res!943172 () Bool)

(assert (=> d!656364 (=> (not res!943172) (not e!1401914))))

(assert (=> d!656364 (= res!943172 (>= (+ 1 from!1114) 0))))

(assert (=> d!656364 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!152 lt!820291 (+ 1 from!1114) totalInput!923 lt!820292) lt!820367)))

(declare-fun b!2193629 () Bool)

(assert (=> b!2193629 (= e!1401914 (<= (+ 1 from!1114) (size!19883 totalInput!923)))))

(declare-fun b!2193630 () Bool)

(assert (=> b!2193630 (= e!1401915 (matchZipper!249 lt!820291 (take!341 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)) lt!820366)))))

(assert (= (and d!656364 res!943172) b!2193629))

(assert (= (and d!656364 (not res!943171)) b!2193630))

(assert (=> d!656364 m!2636093))

(assert (=> d!656364 m!2636093))

(declare-fun m!2636197 () Bool)

(assert (=> d!656364 m!2636197))

(declare-fun m!2636199 () Bool)

(assert (=> d!656364 m!2636199))

(assert (=> b!2193629 m!2636093))

(assert (=> b!2193630 m!2636119))

(assert (=> b!2193630 m!2636119))

(assert (=> b!2193630 m!2636121))

(assert (=> b!2193630 m!2636121))

(declare-fun m!2636205 () Bool)

(assert (=> b!2193630 m!2636205))

(assert (=> b!2193630 m!2636205))

(declare-fun m!2636209 () Bool)

(assert (=> b!2193630 m!2636209))

(assert (=> b!2193565 d!656364))

(declare-fun d!656374 () Bool)

(declare-fun lt!820370 () Int)

(declare-fun size!19884 (List!25585) Int)

(assert (=> d!656374 (= lt!820370 (size!19884 (list!9801 totalInput!923)))))

(declare-fun size!19885 (Conc!8289) Int)

(assert (=> d!656374 (= lt!820370 (size!19885 (c!348995 totalInput!923)))))

(assert (=> d!656374 (= (size!19883 totalInput!923) lt!820370)))

(declare-fun bs!448534 () Bool)

(assert (= bs!448534 d!656374))

(assert (=> bs!448534 m!2636119))

(assert (=> bs!448534 m!2636119))

(declare-fun m!2636211 () Bool)

(assert (=> bs!448534 m!2636211))

(declare-fun m!2636213 () Bool)

(assert (=> bs!448534 m!2636213))

(assert (=> b!2193570 d!656374))

(declare-fun lt!820381 () (InoxSet Context!3446))

(declare-fun e!1401951 () Int)

(declare-fun b!2193691 () Bool)

(declare-fun e!1401952 () Int)

(assert (=> b!2193691 (= e!1401952 (furthestNullablePosition!323 lt!820381 (+ 1 from!1114 1) totalInput!923 lt!820288 e!1401951))))

(assert (=> b!2193691 (= lt!820381 (derivationStepZipper!227 lt!820291 (apply!6203 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!349061 () Bool)

(assert (=> b!2193691 (= c!349061 (nullableZipper!433 lt!820381))))

(declare-fun b!2193692 () Bool)

(declare-fun e!1401950 () Bool)

(assert (=> b!2193692 (= e!1401950 (lostCauseZipper!271 lt!820291))))

(declare-fun b!2193693 () Bool)

(assert (=> b!2193693 (= e!1401951 (+ 1 from!1114))))

(declare-fun b!2193694 () Bool)

(assert (=> b!2193694 (= e!1401952 lt!820292)))

(declare-fun d!656378 () Bool)

(declare-fun lt!820382 () Int)

(assert (=> d!656378 (and (>= lt!820382 (- 1)) (< lt!820382 lt!820288) (>= lt!820382 lt!820292) (or (= lt!820382 lt!820292) (>= lt!820382 (+ 1 from!1114))))))

(assert (=> d!656378 (= lt!820382 e!1401952)))

(declare-fun c!349062 () Bool)

(assert (=> d!656378 (= c!349062 e!1401950)))

(declare-fun res!943181 () Bool)

(assert (=> d!656378 (=> res!943181 e!1401950)))

(assert (=> d!656378 (= res!943181 (= (+ 1 from!1114) lt!820288))))

(assert (=> d!656378 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!820288))))

(assert (=> d!656378 (= (furthestNullablePosition!323 lt!820291 (+ 1 from!1114) totalInput!923 lt!820288 lt!820292) lt!820382)))

(declare-fun b!2193695 () Bool)

(assert (=> b!2193695 (= e!1401951 lt!820292)))

(assert (= (and d!656378 (not res!943181)) b!2193692))

(assert (= (and d!656378 c!349062) b!2193694))

(assert (= (and d!656378 (not c!349062)) b!2193691))

(assert (= (and b!2193691 c!349061) b!2193693))

(assert (= (and b!2193691 (not c!349061)) b!2193695))

(declare-fun m!2636235 () Bool)

(assert (=> b!2193691 m!2636235))

(assert (=> b!2193691 m!2636097))

(assert (=> b!2193691 m!2636097))

(assert (=> b!2193691 m!2636099))

(declare-fun m!2636237 () Bool)

(assert (=> b!2193691 m!2636237))

(assert (=> b!2193692 m!2636085))

(assert (=> b!2193581 d!656378))

(declare-fun d!656384 () Bool)

(assert (=> d!656384 true))

(declare-fun lambda!82367 () Int)

(declare-fun flatMap!143 ((InoxSet Context!3446) Int) (InoxSet Context!3446))

(assert (=> d!656384 (= (derivationStepZipper!227 z!3955 (apply!6203 totalInput!923 from!1114)) (flatMap!143 z!3955 lambda!82367))))

(declare-fun bs!448544 () Bool)

(assert (= bs!448544 d!656384))

(declare-fun m!2636243 () Bool)

(assert (=> bs!448544 m!2636243))

(assert (=> b!2193581 d!656384))

(declare-fun bs!448546 () Bool)

(declare-fun d!656390 () Bool)

(assert (= bs!448546 (and d!656390 d!656346)))

(declare-fun lambda!82368 () Int)

(assert (=> bs!448546 (not (= lambda!82368 lambda!82349))))

(declare-fun bs!448547 () Bool)

(assert (= bs!448547 (and d!656390 b!2193594)))

(assert (=> bs!448547 (not (= lambda!82368 lambda!82350))))

(declare-fun bs!448548 () Bool)

(assert (= bs!448548 (and d!656390 b!2193595)))

(assert (=> bs!448548 (not (= lambda!82368 lambda!82351))))

(declare-fun bs!448549 () Bool)

(assert (= bs!448549 (and d!656390 d!656358)))

(assert (=> bs!448549 (= lambda!82368 lambda!82354)))

(assert (=> d!656390 (= (nullableZipper!433 lt!820291) (exists!797 lt!820291 lambda!82368))))

(declare-fun bs!448550 () Bool)

(assert (= bs!448550 d!656390))

(declare-fun m!2636247 () Bool)

(assert (=> bs!448550 m!2636247))

(assert (=> b!2193581 d!656390))

(declare-fun d!656394 () Bool)

(declare-fun lt!820391 () C!12452)

(declare-fun apply!6204 (List!25585 Int) C!12452)

(assert (=> d!656394 (= lt!820391 (apply!6204 (list!9801 totalInput!923) from!1114))))

(declare-fun apply!6206 (Conc!8289 Int) C!12452)

(assert (=> d!656394 (= lt!820391 (apply!6206 (c!348995 totalInput!923) from!1114))))

(declare-fun e!1401959 () Bool)

(assert (=> d!656394 e!1401959))

(declare-fun res!943186 () Bool)

(assert (=> d!656394 (=> (not res!943186) (not e!1401959))))

(assert (=> d!656394 (= res!943186 (<= 0 from!1114))))

(assert (=> d!656394 (= (apply!6203 totalInput!923 from!1114) lt!820391)))

(declare-fun b!2193706 () Bool)

(assert (=> b!2193706 (= e!1401959 (< from!1114 (size!19883 totalInput!923)))))

(assert (= (and d!656394 res!943186) b!2193706))

(assert (=> d!656394 m!2636119))

(assert (=> d!656394 m!2636119))

(declare-fun m!2636269 () Bool)

(assert (=> d!656394 m!2636269))

(declare-fun m!2636271 () Bool)

(assert (=> d!656394 m!2636271))

(assert (=> b!2193706 m!2636093))

(assert (=> b!2193581 d!656394))

(declare-fun e!1401961 () Int)

(declare-fun b!2193707 () Bool)

(declare-fun lt!820392 () (InoxSet Context!3446))

(declare-fun e!1401962 () Int)

(assert (=> b!2193707 (= e!1401962 (furthestNullablePosition!323 lt!820392 (+ from!1114 1) totalInput!923 lt!820288 e!1401961))))

(assert (=> b!2193707 (= lt!820392 (derivationStepZipper!227 z!3955 (apply!6203 totalInput!923 from!1114)))))

(declare-fun c!349067 () Bool)

(assert (=> b!2193707 (= c!349067 (nullableZipper!433 lt!820392))))

(declare-fun b!2193708 () Bool)

(declare-fun e!1401960 () Bool)

(assert (=> b!2193708 (= e!1401960 (lostCauseZipper!271 z!3955))))

(declare-fun b!2193709 () Bool)

(assert (=> b!2193709 (= e!1401961 from!1114)))

(declare-fun b!2193710 () Bool)

(assert (=> b!2193710 (= e!1401962 lastNullablePos!193)))

(declare-fun d!656406 () Bool)

(declare-fun lt!820393 () Int)

(assert (=> d!656406 (and (>= lt!820393 (- 1)) (< lt!820393 lt!820288) (>= lt!820393 lastNullablePos!193) (or (= lt!820393 lastNullablePos!193) (>= lt!820393 from!1114)))))

(assert (=> d!656406 (= lt!820393 e!1401962)))

(declare-fun c!349068 () Bool)

(assert (=> d!656406 (= c!349068 e!1401960)))

(declare-fun res!943187 () Bool)

(assert (=> d!656406 (=> res!943187 e!1401960)))

(assert (=> d!656406 (= res!943187 (= from!1114 lt!820288))))

(assert (=> d!656406 (and (>= from!1114 0) (<= from!1114 lt!820288))))

(assert (=> d!656406 (= (furthestNullablePosition!323 z!3955 from!1114 totalInput!923 lt!820288 lastNullablePos!193) lt!820393)))

(declare-fun b!2193711 () Bool)

(assert (=> b!2193711 (= e!1401961 lastNullablePos!193)))

(assert (= (and d!656406 (not res!943187)) b!2193708))

(assert (= (and d!656406 c!349068) b!2193710))

(assert (= (and d!656406 (not c!349068)) b!2193707))

(assert (= (and b!2193707 c!349067) b!2193709))

(assert (= (and b!2193707 (not c!349067)) b!2193711))

(declare-fun m!2636273 () Bool)

(assert (=> b!2193707 m!2636273))

(assert (=> b!2193707 m!2636107))

(assert (=> b!2193707 m!2636107))

(assert (=> b!2193707 m!2636113))

(declare-fun m!2636275 () Bool)

(assert (=> b!2193707 m!2636275))

(assert (=> b!2193708 m!2636115))

(assert (=> b!2193581 d!656406))

(declare-fun d!656408 () Bool)

(declare-fun c!349074 () Bool)

(declare-fun isEmpty!14568 (List!25585) Bool)

(assert (=> d!656408 (= c!349074 (isEmpty!14568 (take!341 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)) lt!820290)))))

(declare-fun e!1401971 () Bool)

(assert (=> d!656408 (= (matchZipper!249 lt!820291 (take!341 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)) lt!820290)) e!1401971)))

(declare-fun b!2193725 () Bool)

(assert (=> b!2193725 (= e!1401971 (nullableZipper!433 lt!820291))))

(declare-fun b!2193726 () Bool)

(declare-fun head!4677 (List!25585) C!12452)

(declare-fun tail!3149 (List!25585) List!25585)

(assert (=> b!2193726 (= e!1401971 (matchZipper!249 (derivationStepZipper!227 lt!820291 (head!4677 (take!341 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)) lt!820290))) (tail!3149 (take!341 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)) lt!820290))))))

(assert (= (and d!656408 c!349074) b!2193725))

(assert (= (and d!656408 (not c!349074)) b!2193726))

(assert (=> d!656408 m!2636123))

(declare-fun m!2636281 () Bool)

(assert (=> d!656408 m!2636281))

(assert (=> b!2193725 m!2636105))

(assert (=> b!2193726 m!2636123))

(declare-fun m!2636283 () Bool)

(assert (=> b!2193726 m!2636283))

(assert (=> b!2193726 m!2636283))

(declare-fun m!2636285 () Bool)

(assert (=> b!2193726 m!2636285))

(assert (=> b!2193726 m!2636123))

(declare-fun m!2636287 () Bool)

(assert (=> b!2193726 m!2636287))

(assert (=> b!2193726 m!2636285))

(assert (=> b!2193726 m!2636287))

(declare-fun m!2636289 () Bool)

(assert (=> b!2193726 m!2636289))

(assert (=> b!2193572 d!656408))

(declare-fun b!2193741 () Bool)

(declare-fun e!1401981 () Int)

(assert (=> b!2193741 (= e!1401981 lt!820290)))

(declare-fun b!2193742 () Bool)

(declare-fun e!1401983 () Bool)

(declare-fun lt!820396 () List!25585)

(declare-fun e!1401982 () Int)

(assert (=> b!2193742 (= e!1401983 (= (size!19884 lt!820396) e!1401982))))

(declare-fun c!349082 () Bool)

(assert (=> b!2193742 (= c!349082 (<= lt!820290 0))))

(declare-fun e!1401980 () List!25585)

(declare-fun b!2193743 () Bool)

(assert (=> b!2193743 (= e!1401980 (Cons!25501 (h!30902 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114))) (take!341 (t!198183 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114))) (- lt!820290 1))))))

(declare-fun b!2193744 () Bool)

(assert (=> b!2193744 (= e!1401981 (size!19884 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2193745 () Bool)

(assert (=> b!2193745 (= e!1401980 Nil!25501)))

(declare-fun d!656412 () Bool)

(assert (=> d!656412 e!1401983))

(declare-fun res!943193 () Bool)

(assert (=> d!656412 (=> (not res!943193) (not e!1401983))))

(declare-fun content!3460 (List!25585) (InoxSet C!12452))

(assert (=> d!656412 (= res!943193 (= ((_ map implies) (content!3460 lt!820396) (content!3460 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)))) ((as const (InoxSet C!12452)) true)))))

(assert (=> d!656412 (= lt!820396 e!1401980)))

(declare-fun c!349081 () Bool)

(get-info :version)

(assert (=> d!656412 (= c!349081 (or ((_ is Nil!25501) (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114))) (<= lt!820290 0)))))

(assert (=> d!656412 (= (take!341 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)) lt!820290) lt!820396)))

(declare-fun b!2193746 () Bool)

(assert (=> b!2193746 (= e!1401982 0)))

(declare-fun b!2193747 () Bool)

(assert (=> b!2193747 (= e!1401982 e!1401981)))

(declare-fun c!349083 () Bool)

(assert (=> b!2193747 (= c!349083 (>= lt!820290 (size!19884 (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)))))))

(assert (= (and d!656412 c!349081) b!2193745))

(assert (= (and d!656412 (not c!349081)) b!2193743))

(assert (= (and d!656412 res!943193) b!2193742))

(assert (= (and b!2193742 c!349082) b!2193746))

(assert (= (and b!2193742 (not c!349082)) b!2193747))

(assert (= (and b!2193747 c!349083) b!2193744))

(assert (= (and b!2193747 (not c!349083)) b!2193741))

(declare-fun m!2636291 () Bool)

(assert (=> d!656412 m!2636291))

(assert (=> d!656412 m!2636121))

(declare-fun m!2636293 () Bool)

(assert (=> d!656412 m!2636293))

(declare-fun m!2636295 () Bool)

(assert (=> b!2193743 m!2636295))

(assert (=> b!2193744 m!2636121))

(declare-fun m!2636297 () Bool)

(assert (=> b!2193744 m!2636297))

(declare-fun m!2636299 () Bool)

(assert (=> b!2193742 m!2636299))

(assert (=> b!2193747 m!2636121))

(assert (=> b!2193747 m!2636297))

(assert (=> b!2193572 d!656412))

(declare-fun b!2193785 () Bool)

(declare-fun e!1402008 () Int)

(declare-fun call!131892 () Int)

(assert (=> b!2193785 (= e!1402008 call!131892)))

(declare-fun b!2193786 () Bool)

(declare-fun e!1402011 () List!25585)

(assert (=> b!2193786 (= e!1402011 Nil!25501)))

(declare-fun d!656414 () Bool)

(declare-fun e!1402009 () Bool)

(assert (=> d!656414 e!1402009))

(declare-fun res!943202 () Bool)

(assert (=> d!656414 (=> (not res!943202) (not e!1402009))))

(declare-fun lt!820405 () List!25585)

(assert (=> d!656414 (= res!943202 (= ((_ map implies) (content!3460 lt!820405) (content!3460 (list!9801 totalInput!923))) ((as const (InoxSet C!12452)) true)))))

(assert (=> d!656414 (= lt!820405 e!1402011)))

(declare-fun c!349095 () Bool)

(assert (=> d!656414 (= c!349095 ((_ is Nil!25501) (list!9801 totalInput!923)))))

(assert (=> d!656414 (= (drop!1351 (list!9801 totalInput!923) (+ 1 from!1114)) lt!820405)))

(declare-fun b!2193787 () Bool)

(declare-fun e!1402010 () Int)

(assert (=> b!2193787 (= e!1402010 0)))

(declare-fun b!2193788 () Bool)

(declare-fun e!1402007 () List!25585)

(assert (=> b!2193788 (= e!1402007 (drop!1351 (t!198183 (list!9801 totalInput!923)) (- (+ 1 from!1114) 1)))))

(declare-fun b!2193789 () Bool)

(assert (=> b!2193789 (= e!1402007 (list!9801 totalInput!923))))

(declare-fun b!2193790 () Bool)

(assert (=> b!2193790 (= e!1402011 e!1402007)))

(declare-fun c!349094 () Bool)

(assert (=> b!2193790 (= c!349094 (<= (+ 1 from!1114) 0))))

(declare-fun b!2193791 () Bool)

(assert (=> b!2193791 (= e!1402008 e!1402010)))

(declare-fun c!349092 () Bool)

(assert (=> b!2193791 (= c!349092 (>= (+ 1 from!1114) call!131892))))

(declare-fun b!2193792 () Bool)

(assert (=> b!2193792 (= e!1402010 (- call!131892 (+ 1 from!1114)))))

(declare-fun bm!131887 () Bool)

(assert (=> bm!131887 (= call!131892 (size!19884 (list!9801 totalInput!923)))))

(declare-fun b!2193793 () Bool)

(assert (=> b!2193793 (= e!1402009 (= (size!19884 lt!820405) e!1402008))))

(declare-fun c!349093 () Bool)

(assert (=> b!2193793 (= c!349093 (<= (+ 1 from!1114) 0))))

(assert (= (and d!656414 c!349095) b!2193786))

(assert (= (and d!656414 (not c!349095)) b!2193790))

(assert (= (and b!2193790 c!349094) b!2193789))

(assert (= (and b!2193790 (not c!349094)) b!2193788))

(assert (= (and d!656414 res!943202) b!2193793))

(assert (= (and b!2193793 c!349093) b!2193785))

(assert (= (and b!2193793 (not c!349093)) b!2193791))

(assert (= (and b!2193791 c!349092) b!2193787))

(assert (= (and b!2193791 (not c!349092)) b!2193792))

(assert (= (or b!2193785 b!2193791 b!2193792) bm!131887))

(declare-fun m!2636317 () Bool)

(assert (=> d!656414 m!2636317))

(assert (=> d!656414 m!2636119))

(declare-fun m!2636319 () Bool)

(assert (=> d!656414 m!2636319))

(declare-fun m!2636321 () Bool)

(assert (=> b!2193788 m!2636321))

(assert (=> bm!131887 m!2636119))

(assert (=> bm!131887 m!2636211))

(declare-fun m!2636323 () Bool)

(assert (=> b!2193793 m!2636323))

(assert (=> b!2193572 d!656414))

(declare-fun d!656416 () Bool)

(declare-fun list!9802 (Conc!8289) List!25585)

(assert (=> d!656416 (= (list!9801 totalInput!923) (list!9802 (c!348995 totalInput!923)))))

(declare-fun bs!448563 () Bool)

(assert (= bs!448563 d!656416))

(declare-fun m!2636325 () Bool)

(assert (=> bs!448563 m!2636325))

(assert (=> b!2193572 d!656416))

(declare-fun b!2193802 () Bool)

(declare-fun e!1402018 () Int)

(declare-fun lt!820406 () (InoxSet Context!3446))

(declare-fun e!1402019 () Int)

(assert (=> b!2193802 (= e!1402019 (furthestNullablePosition!323 lt!820406 (+ 2 from!1114 1) totalInput!923 lt!820288 e!1402018))))

(assert (=> b!2193802 (= lt!820406 (derivationStepZipper!227 lt!820294 (apply!6203 totalInput!923 (+ 2 from!1114))))))

(declare-fun c!349096 () Bool)

(assert (=> b!2193802 (= c!349096 (nullableZipper!433 lt!820406))))

(declare-fun b!2193803 () Bool)

(declare-fun e!1402017 () Bool)

(assert (=> b!2193803 (= e!1402017 (lostCauseZipper!271 lt!820294))))

(declare-fun b!2193804 () Bool)

(assert (=> b!2193804 (= e!1402018 (+ 2 from!1114))))

(declare-fun b!2193805 () Bool)

(assert (=> b!2193805 (= e!1402019 e!1401874)))

(declare-fun lt!820407 () Int)

(declare-fun d!656418 () Bool)

(assert (=> d!656418 (and (>= lt!820407 (- 1)) (< lt!820407 lt!820288) (>= lt!820407 e!1401874) (or (= lt!820407 e!1401874) (>= lt!820407 (+ 2 from!1114))))))

(assert (=> d!656418 (= lt!820407 e!1402019)))

(declare-fun c!349097 () Bool)

(assert (=> d!656418 (= c!349097 e!1402017)))

(declare-fun res!943203 () Bool)

(assert (=> d!656418 (=> res!943203 e!1402017)))

(assert (=> d!656418 (= res!943203 (= (+ 2 from!1114) lt!820288))))

(assert (=> d!656418 (and (>= (+ 2 from!1114) 0) (<= (+ 2 from!1114) lt!820288))))

(assert (=> d!656418 (= (furthestNullablePosition!323 lt!820294 (+ 2 from!1114) totalInput!923 lt!820288 e!1401874) lt!820407)))

(declare-fun b!2193806 () Bool)

(assert (=> b!2193806 (= e!1402018 e!1401874)))

(assert (= (and d!656418 (not res!943203)) b!2193803))

(assert (= (and d!656418 c!349097) b!2193805))

(assert (= (and d!656418 (not c!349097)) b!2193802))

(assert (= (and b!2193802 c!349096) b!2193804))

(assert (= (and b!2193802 (not c!349096)) b!2193806))

(declare-fun m!2636327 () Bool)

(assert (=> b!2193802 m!2636327))

(declare-fun m!2636329 () Bool)

(assert (=> b!2193802 m!2636329))

(assert (=> b!2193802 m!2636329))

(declare-fun m!2636331 () Bool)

(assert (=> b!2193802 m!2636331))

(declare-fun m!2636333 () Bool)

(assert (=> b!2193802 m!2636333))

(declare-fun m!2636335 () Bool)

(assert (=> b!2193803 m!2636335))

(assert (=> b!2193578 d!656418))

(declare-fun bs!448564 () Bool)

(declare-fun d!656420 () Bool)

(assert (= bs!448564 (and d!656420 d!656384)))

(declare-fun lambda!82371 () Int)

(assert (=> bs!448564 (= (= (apply!6203 totalInput!923 (+ 1 from!1114)) (apply!6203 totalInput!923 from!1114)) (= lambda!82371 lambda!82367))))

(assert (=> d!656420 true))

(assert (=> d!656420 (= (derivationStepZipper!227 lt!820291 (apply!6203 totalInput!923 (+ 1 from!1114))) (flatMap!143 lt!820291 lambda!82371))))

(declare-fun bs!448565 () Bool)

(assert (= bs!448565 d!656420))

(declare-fun m!2636337 () Bool)

(assert (=> bs!448565 m!2636337))

(assert (=> b!2193578 d!656420))

(declare-fun d!656422 () Bool)

(declare-fun lt!820408 () C!12452)

(assert (=> d!656422 (= lt!820408 (apply!6204 (list!9801 totalInput!923) (+ 1 from!1114)))))

(assert (=> d!656422 (= lt!820408 (apply!6206 (c!348995 totalInput!923) (+ 1 from!1114)))))

(declare-fun e!1402020 () Bool)

(assert (=> d!656422 e!1402020))

(declare-fun res!943204 () Bool)

(assert (=> d!656422 (=> (not res!943204) (not e!1402020))))

(assert (=> d!656422 (= res!943204 (<= 0 (+ 1 from!1114)))))

(assert (=> d!656422 (= (apply!6203 totalInput!923 (+ 1 from!1114)) lt!820408)))

(declare-fun b!2193807 () Bool)

(assert (=> b!2193807 (= e!1402020 (< (+ 1 from!1114) (size!19883 totalInput!923)))))

(assert (= (and d!656422 res!943204) b!2193807))

(assert (=> d!656422 m!2636119))

(assert (=> d!656422 m!2636119))

(declare-fun m!2636339 () Bool)

(assert (=> d!656422 m!2636339))

(declare-fun m!2636341 () Bool)

(assert (=> d!656422 m!2636341))

(assert (=> b!2193807 m!2636093))

(assert (=> b!2193578 d!656422))

(declare-fun bs!448566 () Bool)

(declare-fun d!656424 () Bool)

(assert (= bs!448566 (and d!656424 d!656346)))

(declare-fun lambda!82372 () Int)

(assert (=> bs!448566 (not (= lambda!82372 lambda!82349))))

(declare-fun bs!448567 () Bool)

(assert (= bs!448567 (and d!656424 d!656390)))

(assert (=> bs!448567 (= lambda!82372 lambda!82368)))

(declare-fun bs!448568 () Bool)

(assert (= bs!448568 (and d!656424 b!2193595)))

(assert (=> bs!448568 (not (= lambda!82372 lambda!82351))))

(declare-fun bs!448569 () Bool)

(assert (= bs!448569 (and d!656424 d!656358)))

(assert (=> bs!448569 (= lambda!82372 lambda!82354)))

(declare-fun bs!448570 () Bool)

(assert (= bs!448570 (and d!656424 b!2193594)))

(assert (=> bs!448570 (not (= lambda!82372 lambda!82350))))

(assert (=> d!656424 (= (nullableZipper!433 lt!820294) (exists!797 lt!820294 lambda!82372))))

(declare-fun bs!448571 () Bool)

(assert (= bs!448571 d!656424))

(declare-fun m!2636343 () Bool)

(assert (=> bs!448571 m!2636343))

(assert (=> b!2193578 d!656424))

(declare-fun d!656426 () Bool)

(declare-fun c!349100 () Bool)

(assert (=> d!656426 (= c!349100 ((_ is Node!8289) (c!348995 totalInput!923)))))

(declare-fun e!1402025 () Bool)

(assert (=> d!656426 (= (inv!34108 (c!348995 totalInput!923)) e!1402025)))

(declare-fun b!2193814 () Bool)

(declare-fun inv!34109 (Conc!8289) Bool)

(assert (=> b!2193814 (= e!1402025 (inv!34109 (c!348995 totalInput!923)))))

(declare-fun b!2193815 () Bool)

(declare-fun e!1402026 () Bool)

(assert (=> b!2193815 (= e!1402025 e!1402026)))

(declare-fun res!943207 () Bool)

(assert (=> b!2193815 (= res!943207 (not ((_ is Leaf!12133) (c!348995 totalInput!923))))))

(assert (=> b!2193815 (=> res!943207 e!1402026)))

(declare-fun b!2193816 () Bool)

(declare-fun inv!34110 (Conc!8289) Bool)

(assert (=> b!2193816 (= e!1402026 (inv!34110 (c!348995 totalInput!923)))))

(assert (= (and d!656426 c!349100) b!2193814))

(assert (= (and d!656426 (not c!349100)) b!2193815))

(assert (= (and b!2193815 (not res!943207)) b!2193816))

(declare-fun m!2636345 () Bool)

(assert (=> b!2193814 m!2636345))

(declare-fun m!2636347 () Bool)

(assert (=> b!2193816 m!2636347))

(assert (=> b!2193577 d!656426))

(declare-fun bs!448572 () Bool)

(declare-fun d!656428 () Bool)

(assert (= bs!448572 (and d!656428 d!656346)))

(declare-fun lambda!82373 () Int)

(assert (=> bs!448572 (= lambda!82373 lambda!82349)))

(declare-fun bs!448573 () Bool)

(assert (= bs!448573 (and d!656428 d!656424)))

(assert (=> bs!448573 (not (= lambda!82373 lambda!82372))))

(declare-fun bs!448574 () Bool)

(assert (= bs!448574 (and d!656428 d!656390)))

(assert (=> bs!448574 (not (= lambda!82373 lambda!82368))))

(declare-fun bs!448575 () Bool)

(assert (= bs!448575 (and d!656428 b!2193595)))

(assert (=> bs!448575 (not (= lambda!82373 lambda!82351))))

(declare-fun bs!448576 () Bool)

(assert (= bs!448576 (and d!656428 d!656358)))

(assert (=> bs!448576 (not (= lambda!82373 lambda!82354))))

(declare-fun bs!448577 () Bool)

(assert (= bs!448577 (and d!656428 b!2193594)))

(assert (=> bs!448577 (not (= lambda!82373 lambda!82350))))

(declare-fun bs!448578 () Bool)

(declare-fun b!2193817 () Bool)

(assert (= bs!448578 (and b!2193817 d!656346)))

(declare-fun lambda!82374 () Int)

(assert (=> bs!448578 (not (= lambda!82374 lambda!82349))))

(declare-fun bs!448579 () Bool)

(assert (= bs!448579 (and b!2193817 d!656424)))

(assert (=> bs!448579 (not (= lambda!82374 lambda!82372))))

(declare-fun bs!448580 () Bool)

(assert (= bs!448580 (and b!2193817 d!656390)))

(assert (=> bs!448580 (not (= lambda!82374 lambda!82368))))

(declare-fun bs!448581 () Bool)

(assert (= bs!448581 (and b!2193817 d!656428)))

(assert (=> bs!448581 (not (= lambda!82374 lambda!82373))))

(declare-fun bs!448582 () Bool)

(assert (= bs!448582 (and b!2193817 b!2193595)))

(assert (=> bs!448582 (= lambda!82374 lambda!82351)))

(declare-fun bs!448583 () Bool)

(assert (= bs!448583 (and b!2193817 d!656358)))

(assert (=> bs!448583 (not (= lambda!82374 lambda!82354))))

(declare-fun bs!448584 () Bool)

(assert (= bs!448584 (and b!2193817 b!2193594)))

(assert (=> bs!448584 (= lambda!82374 lambda!82350)))

(declare-fun bs!448585 () Bool)

(declare-fun b!2193818 () Bool)

(assert (= bs!448585 (and b!2193818 d!656346)))

(declare-fun lambda!82375 () Int)

(assert (=> bs!448585 (not (= lambda!82375 lambda!82349))))

(declare-fun bs!448586 () Bool)

(assert (= bs!448586 (and b!2193818 d!656424)))

(assert (=> bs!448586 (not (= lambda!82375 lambda!82372))))

(declare-fun bs!448587 () Bool)

(assert (= bs!448587 (and b!2193818 d!656390)))

(assert (=> bs!448587 (not (= lambda!82375 lambda!82368))))

(declare-fun bs!448588 () Bool)

(assert (= bs!448588 (and b!2193818 d!656428)))

(assert (=> bs!448588 (not (= lambda!82375 lambda!82373))))

(declare-fun bs!448589 () Bool)

(assert (= bs!448589 (and b!2193818 b!2193595)))

(assert (=> bs!448589 (= lambda!82375 lambda!82351)))

(declare-fun bs!448590 () Bool)

(assert (= bs!448590 (and b!2193818 b!2193817)))

(assert (=> bs!448590 (= lambda!82375 lambda!82374)))

(declare-fun bs!448591 () Bool)

(assert (= bs!448591 (and b!2193818 d!656358)))

(assert (=> bs!448591 (not (= lambda!82375 lambda!82354))))

(declare-fun bs!448592 () Bool)

(assert (= bs!448592 (and b!2193818 b!2193594)))

(assert (=> bs!448592 (= lambda!82375 lambda!82350)))

(declare-fun lt!820410 () List!25587)

(declare-fun bm!131888 () Bool)

(declare-fun call!131894 () Bool)

(declare-fun lt!820412 () List!25587)

(declare-fun c!349101 () Bool)

(assert (=> bm!131888 (= call!131894 (exists!796 (ite c!349101 lt!820412 lt!820410) (ite c!349101 lambda!82374 lambda!82375)))))

(declare-fun e!1402027 () Unit!38613)

(declare-fun Unit!38621 () Unit!38613)

(assert (=> b!2193818 (= e!1402027 Unit!38621)))

(declare-fun call!131893 () List!25587)

(assert (=> b!2193818 (= lt!820410 call!131893)))

(declare-fun lt!820409 () Unit!38613)

(assert (=> b!2193818 (= lt!820409 (lemmaForallThenNotExists!38 lt!820410 lambda!82373))))

(assert (=> b!2193818 (not call!131894)))

(declare-fun lt!820413 () Unit!38613)

(assert (=> b!2193818 (= lt!820413 lt!820409)))

(declare-fun lt!820416 () Bool)

(assert (=> d!656428 (= lt!820416 (isEmpty!14567 (getLanguageWitness!130 z!3955)))))

(assert (=> d!656428 (= lt!820416 (forall!5208 z!3955 lambda!82373))))

(declare-fun lt!820414 () Unit!38613)

(assert (=> d!656428 (= lt!820414 e!1402027)))

(assert (=> d!656428 (= c!349101 (not (forall!5208 z!3955 lambda!82373)))))

(assert (=> d!656428 (= (lostCauseZipper!271 z!3955) lt!820416)))

(declare-fun bm!131889 () Bool)

(assert (=> bm!131889 (= call!131893 (toList!1249 z!3955))))

(declare-fun Unit!38622 () Unit!38613)

(assert (=> b!2193817 (= e!1402027 Unit!38622)))

(assert (=> b!2193817 (= lt!820412 call!131893)))

(declare-fun lt!820411 () Unit!38613)

(assert (=> b!2193817 (= lt!820411 (lemmaNotForallThenExists!38 lt!820412 lambda!82373))))

(assert (=> b!2193817 call!131894))

(declare-fun lt!820415 () Unit!38613)

(assert (=> b!2193817 (= lt!820415 lt!820411)))

(assert (= (and d!656428 c!349101) b!2193817))

(assert (= (and d!656428 (not c!349101)) b!2193818))

(assert (= (or b!2193817 b!2193818) bm!131888))

(assert (= (or b!2193817 b!2193818) bm!131889))

(declare-fun m!2636349 () Bool)

(assert (=> b!2193817 m!2636349))

(declare-fun m!2636351 () Bool)

(assert (=> b!2193818 m!2636351))

(declare-fun m!2636353 () Bool)

(assert (=> bm!131889 m!2636353))

(declare-fun m!2636355 () Bool)

(assert (=> bm!131888 m!2636355))

(declare-fun m!2636357 () Bool)

(assert (=> d!656428 m!2636357))

(assert (=> d!656428 m!2636357))

(declare-fun m!2636359 () Bool)

(assert (=> d!656428 m!2636359))

(declare-fun m!2636361 () Bool)

(assert (=> d!656428 m!2636361))

(assert (=> d!656428 m!2636361))

(assert (=> b!2193562 d!656428))

(declare-fun b!2193823 () Bool)

(declare-fun e!1402030 () Bool)

(declare-fun tp!683622 () Bool)

(declare-fun tp!683623 () Bool)

(assert (=> b!2193823 (= e!1402030 (and tp!683622 tp!683623))))

(assert (=> b!2193574 (= tp!683594 e!1402030)))

(assert (= (and b!2193574 ((_ is Cons!25500) (exprs!2223 setElem!18702))) b!2193823))

(declare-fun condSetEmpty!18708 () Bool)

(assert (=> setNonEmpty!18702 (= condSetEmpty!18708 (= setRest!18702 ((as const (Array Context!3446 Bool)) false)))))

(declare-fun setRes!18708 () Bool)

(assert (=> setNonEmpty!18702 (= tp!683595 setRes!18708)))

(declare-fun setIsEmpty!18708 () Bool)

(assert (=> setIsEmpty!18708 setRes!18708))

(declare-fun tp!683628 () Bool)

(declare-fun setNonEmpty!18708 () Bool)

(declare-fun e!1402033 () Bool)

(declare-fun setElem!18708 () Context!3446)

(assert (=> setNonEmpty!18708 (= setRes!18708 (and tp!683628 (inv!34107 setElem!18708) e!1402033))))

(declare-fun setRest!18708 () (InoxSet Context!3446))

(assert (=> setNonEmpty!18708 (= setRest!18702 ((_ map or) (store ((as const (Array Context!3446 Bool)) false) setElem!18708 true) setRest!18708))))

(declare-fun b!2193828 () Bool)

(declare-fun tp!683629 () Bool)

(assert (=> b!2193828 (= e!1402033 tp!683629)))

(assert (= (and setNonEmpty!18702 condSetEmpty!18708) setIsEmpty!18708))

(assert (= (and setNonEmpty!18702 (not condSetEmpty!18708)) setNonEmpty!18708))

(assert (= setNonEmpty!18708 b!2193828))

(declare-fun m!2636363 () Bool)

(assert (=> setNonEmpty!18708 m!2636363))

(declare-fun e!1402038 () Bool)

(declare-fun b!2193837 () Bool)

(declare-fun tp!683636 () Bool)

(declare-fun tp!683638 () Bool)

(assert (=> b!2193837 (= e!1402038 (and (inv!34108 (left!19568 (c!348995 totalInput!923))) tp!683638 (inv!34108 (right!19898 (c!348995 totalInput!923))) tp!683636))))

(declare-fun b!2193839 () Bool)

(declare-fun e!1402039 () Bool)

(declare-fun tp!683637 () Bool)

(assert (=> b!2193839 (= e!1402039 tp!683637)))

(declare-fun b!2193838 () Bool)

(declare-fun inv!34111 (IArray!16583) Bool)

(assert (=> b!2193838 (= e!1402038 (and (inv!34111 (xs!11231 (c!348995 totalInput!923))) e!1402039))))

(assert (=> b!2193577 (= tp!683596 (and (inv!34108 (c!348995 totalInput!923)) e!1402038))))

(assert (= (and b!2193577 ((_ is Node!8289) (c!348995 totalInput!923))) b!2193837))

(assert (= b!2193838 b!2193839))

(assert (= (and b!2193577 ((_ is Leaf!12133) (c!348995 totalInput!923))) b!2193838))

(declare-fun m!2636365 () Bool)

(assert (=> b!2193837 m!2636365))

(declare-fun m!2636367 () Bool)

(assert (=> b!2193837 m!2636367))

(declare-fun m!2636369 () Bool)

(assert (=> b!2193838 m!2636369))

(assert (=> b!2193577 m!2636103))

(check-sat (not b!2193594) (not d!656346) (not b!2193706) (not b!2193725) (not d!656414) (not d!656420) (not b!2193742) (not bm!131880) (not b!2193828) (not b!2193818) (not b!2193577) (not b!2193793) (not b!2193747) (not d!656384) (not b!2193803) (not b!2193802) (not setNonEmpty!18708) (not d!656390) (not d!656422) (not b!2193692) (not d!656408) (not b!2193691) (not bm!131887) (not b!2193726) (not b!2193595) (not b!2193838) (not d!656416) (not bm!131889) (not d!656424) (not d!656394) (not b!2193743) (not b!2193816) (not d!656374) (not b!2193707) (not b!2193817) (not d!656360) (not b!2193630) (not d!656428) (not b!2193814) (not b!2193823) (not b!2193807) (not d!656412) (not d!656356) (not b!2193744) (not bm!131881) (not d!656358) (not d!656364) (not b!2193629) (not bm!131888) (not b!2193708) (not b!2193837) (not b!2193788) (not b!2193839))
(check-sat)
