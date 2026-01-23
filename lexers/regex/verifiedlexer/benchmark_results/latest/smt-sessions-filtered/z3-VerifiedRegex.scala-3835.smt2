; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212654 () Bool)

(assert start!212654)

(declare-datatypes ((C!12420 0))(
  ( (C!12421 (val!7196 Int)) )
))
(declare-datatypes ((List!25550 0))(
  ( (Nil!25466) (Cons!25466 (h!30867 C!12420) (t!198148 List!25550)) )
))
(declare-datatypes ((IArray!16551 0))(
  ( (IArray!16552 (innerList!8333 List!25550)) )
))
(declare-datatypes ((Conc!8273 0))(
  ( (Node!8273 (left!19540 Conc!8273) (right!19870 Conc!8273) (csize!16776 Int) (cheight!8484 Int)) (Leaf!12109 (xs!11215 IArray!16551) (csize!16777 Int)) (Empty!8273) )
))
(declare-datatypes ((BalanceConc!16308 0))(
  ( (BalanceConc!16309 (c!348802 Conc!8273)) )
))
(declare-fun totalInput!923 () BalanceConc!16308)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6137 0))(
  ( (ElementMatch!6137 (c!348803 C!12420)) (Concat!10439 (regOne!12786 Regex!6137) (regTwo!12786 Regex!6137)) (EmptyExpr!6137) (Star!6137 (reg!6466 Regex!6137)) (EmptyLang!6137) (Union!6137 (regOne!12787 Regex!6137) (regTwo!12787 Regex!6137)) )
))
(declare-datatypes ((List!25551 0))(
  ( (Nil!25467) (Cons!25467 (h!30868 Regex!6137) (t!198149 List!25551)) )
))
(declare-datatypes ((Context!3414 0))(
  ( (Context!3415 (exprs!2207 List!25551)) )
))
(declare-fun lt!819845 () (InoxSet Context!3414))

(declare-fun lt!819840 () Int)

(declare-fun b!2192704 () Bool)

(declare-fun from!1114 () Int)

(declare-fun e!1401302 () Bool)

(declare-fun matchZipper!233 ((InoxSet Context!3414) List!25550) Bool)

(declare-fun take!325 (List!25550 Int) List!25550)

(declare-fun drop!1335 (List!25550 Int) List!25550)

(declare-fun list!9783 (BalanceConc!16308) List!25550)

(assert (=> b!2192704 (= e!1401302 (matchZipper!233 lt!819845 (take!325 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)) lt!819840)))))

(declare-fun b!2192705 () Bool)

(declare-fun e!1401299 () Int)

(assert (=> b!2192705 (= e!1401299 from!1114)))

(declare-fun e!1401305 () Bool)

(declare-fun setElem!18648 () Context!3414)

(declare-fun setNonEmpty!18648 () Bool)

(declare-fun tp!683409 () Bool)

(declare-fun setRes!18648 () Bool)

(declare-fun inv!34028 (Context!3414) Bool)

(assert (=> setNonEmpty!18648 (= setRes!18648 (and tp!683409 (inv!34028 setElem!18648) e!1401305))))

(declare-fun z!3955 () (InoxSet Context!3414))

(declare-fun setRest!18648 () (InoxSet Context!3414))

(assert (=> setNonEmpty!18648 (= z!3955 ((_ map or) (store ((as const (Array Context!3414 Bool)) false) setElem!18648 true) setRest!18648))))

(declare-fun b!2192706 () Bool)

(declare-fun e!1401298 () Bool)

(declare-fun e!1401304 () Bool)

(assert (=> b!2192706 (= e!1401298 e!1401304)))

(declare-fun res!942702 () Bool)

(assert (=> b!2192706 (=> (not res!942702) (not e!1401304))))

(declare-fun lt!819846 () Int)

(declare-fun lt!819842 () Int)

(assert (=> b!2192706 (= res!942702 (= lt!819846 lt!819842))))

(declare-fun lt!819843 () Int)

(declare-fun lt!819844 () Int)

(declare-fun furthestNullablePosition!307 ((InoxSet Context!3414) Int BalanceConc!16308 Int Int) Int)

(assert (=> b!2192706 (= lt!819842 (furthestNullablePosition!307 lt!819845 (+ 1 from!1114) totalInput!923 lt!819844 lt!819843))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2192706 (= lt!819846 (furthestNullablePosition!307 z!3955 from!1114 totalInput!923 lt!819844 lastNullablePos!193))))

(assert (=> b!2192706 (= lt!819843 e!1401299)))

(declare-fun c!348801 () Bool)

(declare-fun nullableZipper!417 ((InoxSet Context!3414)) Bool)

(assert (=> b!2192706 (= c!348801 (nullableZipper!417 lt!819845))))

(declare-fun derivationStepZipper!211 ((InoxSet Context!3414) C!12420) (InoxSet Context!3414))

(declare-fun apply!6183 (BalanceConc!16308 Int) C!12420)

(assert (=> b!2192706 (= lt!819845 (derivationStepZipper!211 z!3955 (apply!6183 totalInput!923 from!1114)))))

(declare-fun b!2192708 () Bool)

(declare-fun res!942704 () Bool)

(assert (=> b!2192708 (=> (not res!942704) (not e!1401298))))

(assert (=> b!2192708 (= res!942704 (not (= from!1114 lt!819844)))))

(declare-fun b!2192709 () Bool)

(assert (=> b!2192709 (= e!1401299 lastNullablePos!193)))

(declare-fun b!2192710 () Bool)

(declare-fun e!1401301 () Bool)

(declare-fun tp!683408 () Bool)

(declare-fun inv!34029 (Conc!8273) Bool)

(assert (=> b!2192710 (= e!1401301 (and (inv!34029 (c!348802 totalInput!923)) tp!683408))))

(declare-fun b!2192711 () Bool)

(declare-fun res!942701 () Bool)

(assert (=> b!2192711 (=> (not res!942701) (not e!1401298))))

(declare-fun lostCauseZipper!255 ((InoxSet Context!3414)) Bool)

(assert (=> b!2192711 (= res!942701 (not (lostCauseZipper!255 z!3955)))))

(declare-fun b!2192712 () Bool)

(declare-fun e!1401300 () Bool)

(assert (=> b!2192712 (= e!1401300 e!1401298)))

(declare-fun res!942706 () Bool)

(assert (=> b!2192712 (=> (not res!942706) (not e!1401298))))

(assert (=> b!2192712 (= res!942706 (and (<= from!1114 lt!819844) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19863 (BalanceConc!16308) Int)

(assert (=> b!2192712 (= lt!819844 (size!19863 totalInput!923))))

(declare-fun res!942703 () Bool)

(assert (=> start!212654 (=> (not res!942703) (not e!1401300))))

(assert (=> start!212654 (= res!942703 (>= from!1114 0))))

(assert (=> start!212654 e!1401300))

(assert (=> start!212654 true))

(declare-fun inv!34030 (BalanceConc!16308) Bool)

(assert (=> start!212654 (and (inv!34030 totalInput!923) e!1401301)))

(declare-fun condSetEmpty!18648 () Bool)

(assert (=> start!212654 (= condSetEmpty!18648 (= z!3955 ((as const (Array Context!3414 Bool)) false)))))

(assert (=> start!212654 setRes!18648))

(declare-fun b!2192707 () Bool)

(declare-fun e!1401303 () Bool)

(assert (=> b!2192707 (= e!1401303 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2192713 () Bool)

(declare-fun res!942700 () Bool)

(assert (=> b!2192713 (=> (not res!942700) (not e!1401298))))

(assert (=> b!2192713 (= res!942700 e!1401303)))

(declare-fun res!942707 () Bool)

(assert (=> b!2192713 (=> res!942707 e!1401303)))

(assert (=> b!2192713 (= res!942707 (not (nullableZipper!417 z!3955)))))

(declare-fun b!2192714 () Bool)

(declare-fun tp!683410 () Bool)

(assert (=> b!2192714 (= e!1401305 tp!683410)))

(declare-fun setIsEmpty!18648 () Bool)

(assert (=> setIsEmpty!18648 setRes!18648))

(declare-fun b!2192715 () Bool)

(assert (=> b!2192715 (= e!1401304 (not (or (> lt!819840 0) (> lt!819842 from!1114) (>= lt!819842 lt!819843))))))

(assert (=> b!2192715 e!1401302))

(declare-fun res!942705 () Bool)

(assert (=> b!2192715 (=> res!942705 e!1401302)))

(assert (=> b!2192715 (= res!942705 (<= lt!819840 0))))

(assert (=> b!2192715 (= lt!819840 (+ 1 (- lt!819842 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38577 0))(
  ( (Unit!38578) )
))
(declare-fun lt!819841 () Unit!38577)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!136 ((InoxSet Context!3414) Int BalanceConc!16308 Int) Unit!38577)

(assert (=> b!2192715 (= lt!819841 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!136 lt!819845 (+ 1 from!1114) totalInput!923 lt!819843))))

(assert (= (and start!212654 res!942703) b!2192712))

(assert (= (and b!2192712 res!942706) b!2192713))

(assert (= (and b!2192713 (not res!942707)) b!2192707))

(assert (= (and b!2192713 res!942700) b!2192708))

(assert (= (and b!2192708 res!942704) b!2192711))

(assert (= (and b!2192711 res!942701) b!2192706))

(assert (= (and b!2192706 c!348801) b!2192705))

(assert (= (and b!2192706 (not c!348801)) b!2192709))

(assert (= (and b!2192706 res!942702) b!2192715))

(assert (= (and b!2192715 (not res!942705)) b!2192704))

(assert (= start!212654 b!2192710))

(assert (= (and start!212654 condSetEmpty!18648) setIsEmpty!18648))

(assert (= (and start!212654 (not condSetEmpty!18648)) setNonEmpty!18648))

(assert (= setNonEmpty!18648 b!2192714))

(declare-fun m!2635371 () Bool)

(assert (=> b!2192704 m!2635371))

(assert (=> b!2192704 m!2635371))

(declare-fun m!2635373 () Bool)

(assert (=> b!2192704 m!2635373))

(assert (=> b!2192704 m!2635373))

(declare-fun m!2635375 () Bool)

(assert (=> b!2192704 m!2635375))

(assert (=> b!2192704 m!2635375))

(declare-fun m!2635377 () Bool)

(assert (=> b!2192704 m!2635377))

(declare-fun m!2635379 () Bool)

(assert (=> b!2192713 m!2635379))

(declare-fun m!2635381 () Bool)

(assert (=> start!212654 m!2635381))

(declare-fun m!2635383 () Bool)

(assert (=> b!2192712 m!2635383))

(declare-fun m!2635385 () Bool)

(assert (=> b!2192715 m!2635385))

(declare-fun m!2635387 () Bool)

(assert (=> b!2192706 m!2635387))

(declare-fun m!2635389 () Bool)

(assert (=> b!2192706 m!2635389))

(declare-fun m!2635391 () Bool)

(assert (=> b!2192706 m!2635391))

(declare-fun m!2635393 () Bool)

(assert (=> b!2192706 m!2635393))

(assert (=> b!2192706 m!2635393))

(declare-fun m!2635395 () Bool)

(assert (=> b!2192706 m!2635395))

(declare-fun m!2635397 () Bool)

(assert (=> b!2192711 m!2635397))

(declare-fun m!2635399 () Bool)

(assert (=> b!2192710 m!2635399))

(declare-fun m!2635401 () Bool)

(assert (=> setNonEmpty!18648 m!2635401))

(check-sat (not start!212654) (not b!2192713) (not b!2192704) (not b!2192714) (not b!2192710) (not setNonEmpty!18648) (not b!2192711) (not b!2192706) (not b!2192712) (not b!2192715))
(check-sat)
(get-model)

(declare-fun d!656274 () Bool)

(declare-fun isBalanced!2552 (Conc!8273) Bool)

(assert (=> d!656274 (= (inv!34030 totalInput!923) (isBalanced!2552 (c!348802 totalInput!923)))))

(declare-fun bs!448451 () Bool)

(assert (= bs!448451 d!656274))

(declare-fun m!2635403 () Bool)

(assert (=> bs!448451 m!2635403))

(assert (=> start!212654 d!656274))

(declare-fun d!656278 () Bool)

(declare-fun c!348808 () Bool)

(get-info :version)

(assert (=> d!656278 (= c!348808 ((_ is Node!8273) (c!348802 totalInput!923)))))

(declare-fun e!1401310 () Bool)

(assert (=> d!656278 (= (inv!34029 (c!348802 totalInput!923)) e!1401310)))

(declare-fun b!2192722 () Bool)

(declare-fun inv!34033 (Conc!8273) Bool)

(assert (=> b!2192722 (= e!1401310 (inv!34033 (c!348802 totalInput!923)))))

(declare-fun b!2192723 () Bool)

(declare-fun e!1401311 () Bool)

(assert (=> b!2192723 (= e!1401310 e!1401311)))

(declare-fun res!942710 () Bool)

(assert (=> b!2192723 (= res!942710 (not ((_ is Leaf!12109) (c!348802 totalInput!923))))))

(assert (=> b!2192723 (=> res!942710 e!1401311)))

(declare-fun b!2192724 () Bool)

(declare-fun inv!34034 (Conc!8273) Bool)

(assert (=> b!2192724 (= e!1401311 (inv!34034 (c!348802 totalInput!923)))))

(assert (= (and d!656278 c!348808) b!2192722))

(assert (= (and d!656278 (not c!348808)) b!2192723))

(assert (= (and b!2192723 (not res!942710)) b!2192724))

(declare-fun m!2635405 () Bool)

(assert (=> b!2192722 m!2635405))

(declare-fun m!2635407 () Bool)

(assert (=> b!2192724 m!2635407))

(assert (=> b!2192710 d!656278))

(declare-fun d!656280 () Bool)

(declare-fun lambda!82293 () Int)

(declare-fun forall!5204 (List!25551 Int) Bool)

(assert (=> d!656280 (= (inv!34028 setElem!18648) (forall!5204 (exprs!2207 setElem!18648) lambda!82293))))

(declare-fun bs!448469 () Bool)

(assert (= bs!448469 d!656280))

(declare-fun m!2635489 () Bool)

(assert (=> bs!448469 m!2635489))

(assert (=> setNonEmpty!18648 d!656280))

(declare-fun d!656312 () Bool)

(declare-fun e!1401389 () Bool)

(assert (=> d!656312 e!1401389))

(declare-fun res!942737 () Bool)

(assert (=> d!656312 (=> res!942737 e!1401389)))

(declare-fun lt!819902 () Int)

(assert (=> d!656312 (= res!942737 (<= lt!819902 0))))

(assert (=> d!656312 (= lt!819902 (+ (- (furthestNullablePosition!307 lt!819845 (+ 1 from!1114) totalInput!923 (size!19863 totalInput!923) lt!819843) (+ 1 from!1114)) 1))))

(declare-fun lt!819901 () Unit!38577)

(declare-fun choose!12976 ((InoxSet Context!3414) Int BalanceConc!16308 Int) Unit!38577)

(assert (=> d!656312 (= lt!819901 (choose!12976 lt!819845 (+ 1 from!1114) totalInput!923 lt!819843))))

(declare-fun e!1401388 () Bool)

(assert (=> d!656312 e!1401388))

(declare-fun res!942738 () Bool)

(assert (=> d!656312 (=> (not res!942738) (not e!1401388))))

(assert (=> d!656312 (= res!942738 (>= (+ 1 from!1114) 0))))

(assert (=> d!656312 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!136 lt!819845 (+ 1 from!1114) totalInput!923 lt!819843) lt!819901)))

(declare-fun b!2192844 () Bool)

(assert (=> b!2192844 (= e!1401388 (<= (+ 1 from!1114) (size!19863 totalInput!923)))))

(declare-fun b!2192845 () Bool)

(assert (=> b!2192845 (= e!1401389 (matchZipper!233 lt!819845 (take!325 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)) lt!819902)))))

(assert (= (and d!656312 res!942738) b!2192844))

(assert (= (and d!656312 (not res!942737)) b!2192845))

(assert (=> d!656312 m!2635383))

(assert (=> d!656312 m!2635383))

(declare-fun m!2635505 () Bool)

(assert (=> d!656312 m!2635505))

(declare-fun m!2635507 () Bool)

(assert (=> d!656312 m!2635507))

(assert (=> b!2192844 m!2635383))

(assert (=> b!2192845 m!2635371))

(assert (=> b!2192845 m!2635371))

(assert (=> b!2192845 m!2635373))

(assert (=> b!2192845 m!2635373))

(declare-fun m!2635509 () Bool)

(assert (=> b!2192845 m!2635509))

(assert (=> b!2192845 m!2635509))

(declare-fun m!2635511 () Bool)

(assert (=> b!2192845 m!2635511))

(assert (=> b!2192715 d!656312))

(declare-fun bs!448470 () Bool)

(declare-fun b!2192856 () Bool)

(declare-fun d!656314 () Bool)

(assert (= bs!448470 (and b!2192856 d!656314)))

(declare-fun lambda!82307 () Int)

(declare-fun lambda!82306 () Int)

(assert (=> bs!448470 (not (= lambda!82307 lambda!82306))))

(declare-fun bs!448471 () Bool)

(declare-fun b!2192857 () Bool)

(assert (= bs!448471 (and b!2192857 d!656314)))

(declare-fun lambda!82308 () Int)

(assert (=> bs!448471 (not (= lambda!82308 lambda!82306))))

(declare-fun bs!448472 () Bool)

(assert (= bs!448472 (and b!2192857 b!2192856)))

(assert (=> bs!448472 (= lambda!82308 lambda!82307)))

(declare-datatypes ((List!25553 0))(
  ( (Nil!25469) (Cons!25469 (h!30870 Context!3414) (t!198151 List!25553)) )
))
(declare-fun lt!819925 () List!25553)

(declare-fun c!348867 () Bool)

(declare-fun bm!131863 () Bool)

(declare-fun lt!819926 () List!25553)

(declare-fun call!131869 () Bool)

(declare-fun exists!793 (List!25553 Int) Bool)

(assert (=> bm!131863 (= call!131869 (exists!793 (ite c!348867 lt!819926 lt!819925) (ite c!348867 lambda!82307 lambda!82308)))))

(declare-fun lt!819920 () Bool)

(declare-datatypes ((Option!5011 0))(
  ( (None!5010) (Some!5010 (v!29405 List!25550)) )
))
(declare-fun isEmpty!14564 (Option!5011) Bool)

(declare-fun getLanguageWitness!128 ((InoxSet Context!3414)) Option!5011)

(assert (=> d!656314 (= lt!819920 (isEmpty!14564 (getLanguageWitness!128 z!3955)))))

(declare-fun forall!5205 ((InoxSet Context!3414) Int) Bool)

(assert (=> d!656314 (= lt!819920 (forall!5205 z!3955 lambda!82306))))

(declare-fun lt!819919 () Unit!38577)

(declare-fun e!1401400 () Unit!38577)

(assert (=> d!656314 (= lt!819919 e!1401400)))

(assert (=> d!656314 (= c!348867 (not (forall!5205 z!3955 lambda!82306)))))

(assert (=> d!656314 (= (lostCauseZipper!255 z!3955) lt!819920)))

(declare-fun bm!131864 () Bool)

(declare-fun call!131868 () List!25553)

(declare-fun toList!1247 ((InoxSet Context!3414)) List!25553)

(assert (=> bm!131864 (= call!131868 (toList!1247 z!3955))))

(declare-fun Unit!38581 () Unit!38577)

(assert (=> b!2192857 (= e!1401400 Unit!38581)))

(assert (=> b!2192857 (= lt!819925 call!131868)))

(declare-fun lt!819923 () Unit!38577)

(declare-fun lemmaForallThenNotExists!36 (List!25553 Int) Unit!38577)

(assert (=> b!2192857 (= lt!819923 (lemmaForallThenNotExists!36 lt!819925 lambda!82306))))

(assert (=> b!2192857 (not call!131869)))

(declare-fun lt!819922 () Unit!38577)

(assert (=> b!2192857 (= lt!819922 lt!819923)))

(declare-fun Unit!38582 () Unit!38577)

(assert (=> b!2192856 (= e!1401400 Unit!38582)))

(assert (=> b!2192856 (= lt!819926 call!131868)))

(declare-fun lt!819924 () Unit!38577)

(declare-fun lemmaNotForallThenExists!36 (List!25553 Int) Unit!38577)

(assert (=> b!2192856 (= lt!819924 (lemmaNotForallThenExists!36 lt!819926 lambda!82306))))

(assert (=> b!2192856 call!131869))

(declare-fun lt!819921 () Unit!38577)

(assert (=> b!2192856 (= lt!819921 lt!819924)))

(assert (= (and d!656314 c!348867) b!2192856))

(assert (= (and d!656314 (not c!348867)) b!2192857))

(assert (= (or b!2192856 b!2192857) bm!131863))

(assert (= (or b!2192856 b!2192857) bm!131864))

(declare-fun m!2635515 () Bool)

(assert (=> bm!131864 m!2635515))

(declare-fun m!2635517 () Bool)

(assert (=> d!656314 m!2635517))

(assert (=> d!656314 m!2635517))

(declare-fun m!2635519 () Bool)

(assert (=> d!656314 m!2635519))

(declare-fun m!2635521 () Bool)

(assert (=> d!656314 m!2635521))

(assert (=> d!656314 m!2635521))

(declare-fun m!2635523 () Bool)

(assert (=> b!2192856 m!2635523))

(declare-fun m!2635525 () Bool)

(assert (=> b!2192857 m!2635525))

(declare-fun m!2635527 () Bool)

(assert (=> bm!131863 m!2635527))

(assert (=> b!2192711 d!656314))

(declare-fun b!2192868 () Bool)

(declare-fun e!1401408 () Bool)

(assert (=> b!2192868 (= e!1401408 (lostCauseZipper!255 z!3955))))

(declare-fun lt!819931 () Int)

(declare-fun d!656316 () Bool)

(assert (=> d!656316 (and (>= lt!819931 (- 1)) (< lt!819931 lt!819844) (>= lt!819931 lastNullablePos!193) (or (= lt!819931 lastNullablePos!193) (>= lt!819931 from!1114)))))

(declare-fun e!1401407 () Int)

(assert (=> d!656316 (= lt!819931 e!1401407)))

(declare-fun c!348872 () Bool)

(assert (=> d!656316 (= c!348872 e!1401408)))

(declare-fun res!942741 () Bool)

(assert (=> d!656316 (=> res!942741 e!1401408)))

(assert (=> d!656316 (= res!942741 (= from!1114 lt!819844))))

(assert (=> d!656316 (and (>= from!1114 0) (<= from!1114 lt!819844))))

(assert (=> d!656316 (= (furthestNullablePosition!307 z!3955 from!1114 totalInput!923 lt!819844 lastNullablePos!193) lt!819931)))

(declare-fun b!2192869 () Bool)

(declare-fun e!1401409 () Int)

(declare-fun lt!819932 () (InoxSet Context!3414))

(assert (=> b!2192869 (= e!1401407 (furthestNullablePosition!307 lt!819932 (+ from!1114 1) totalInput!923 lt!819844 e!1401409))))

(assert (=> b!2192869 (= lt!819932 (derivationStepZipper!211 z!3955 (apply!6183 totalInput!923 from!1114)))))

(declare-fun c!348873 () Bool)

(assert (=> b!2192869 (= c!348873 (nullableZipper!417 lt!819932))))

(declare-fun b!2192870 () Bool)

(assert (=> b!2192870 (= e!1401407 lastNullablePos!193)))

(declare-fun b!2192871 () Bool)

(assert (=> b!2192871 (= e!1401409 from!1114)))

(declare-fun b!2192872 () Bool)

(assert (=> b!2192872 (= e!1401409 lastNullablePos!193)))

(assert (= (and d!656316 (not res!942741)) b!2192868))

(assert (= (and d!656316 c!348872) b!2192870))

(assert (= (and d!656316 (not c!348872)) b!2192869))

(assert (= (and b!2192869 c!348873) b!2192871))

(assert (= (and b!2192869 (not c!348873)) b!2192872))

(assert (=> b!2192868 m!2635397))

(declare-fun m!2635529 () Bool)

(assert (=> b!2192869 m!2635529))

(assert (=> b!2192869 m!2635393))

(assert (=> b!2192869 m!2635393))

(assert (=> b!2192869 m!2635395))

(declare-fun m!2635531 () Bool)

(assert (=> b!2192869 m!2635531))

(assert (=> b!2192706 d!656316))

(declare-fun d!656318 () Bool)

(declare-fun lt!819935 () C!12420)

(declare-fun apply!6186 (List!25550 Int) C!12420)

(assert (=> d!656318 (= lt!819935 (apply!6186 (list!9783 totalInput!923) from!1114))))

(declare-fun apply!6187 (Conc!8273 Int) C!12420)

(assert (=> d!656318 (= lt!819935 (apply!6187 (c!348802 totalInput!923) from!1114))))

(declare-fun e!1401412 () Bool)

(assert (=> d!656318 e!1401412))

(declare-fun res!942744 () Bool)

(assert (=> d!656318 (=> (not res!942744) (not e!1401412))))

(assert (=> d!656318 (= res!942744 (<= 0 from!1114))))

(assert (=> d!656318 (= (apply!6183 totalInput!923 from!1114) lt!819935)))

(declare-fun b!2192875 () Bool)

(assert (=> b!2192875 (= e!1401412 (< from!1114 (size!19863 totalInput!923)))))

(assert (= (and d!656318 res!942744) b!2192875))

(assert (=> d!656318 m!2635371))

(assert (=> d!656318 m!2635371))

(declare-fun m!2635533 () Bool)

(assert (=> d!656318 m!2635533))

(declare-fun m!2635535 () Bool)

(assert (=> d!656318 m!2635535))

(assert (=> b!2192875 m!2635383))

(assert (=> b!2192706 d!656318))

(declare-fun b!2192876 () Bool)

(declare-fun e!1401414 () Bool)

(assert (=> b!2192876 (= e!1401414 (lostCauseZipper!255 lt!819845))))

(declare-fun lt!819936 () Int)

(declare-fun d!656320 () Bool)

(assert (=> d!656320 (and (>= lt!819936 (- 1)) (< lt!819936 lt!819844) (>= lt!819936 lt!819843) (or (= lt!819936 lt!819843) (>= lt!819936 (+ 1 from!1114))))))

(declare-fun e!1401413 () Int)

(assert (=> d!656320 (= lt!819936 e!1401413)))

(declare-fun c!348874 () Bool)

(assert (=> d!656320 (= c!348874 e!1401414)))

(declare-fun res!942745 () Bool)

(assert (=> d!656320 (=> res!942745 e!1401414)))

(assert (=> d!656320 (= res!942745 (= (+ 1 from!1114) lt!819844))))

(assert (=> d!656320 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!819844))))

(assert (=> d!656320 (= (furthestNullablePosition!307 lt!819845 (+ 1 from!1114) totalInput!923 lt!819844 lt!819843) lt!819936)))

(declare-fun lt!819937 () (InoxSet Context!3414))

(declare-fun b!2192877 () Bool)

(declare-fun e!1401415 () Int)

(assert (=> b!2192877 (= e!1401413 (furthestNullablePosition!307 lt!819937 (+ 1 from!1114 1) totalInput!923 lt!819844 e!1401415))))

(assert (=> b!2192877 (= lt!819937 (derivationStepZipper!211 lt!819845 (apply!6183 totalInput!923 (+ 1 from!1114))))))

(declare-fun c!348875 () Bool)

(assert (=> b!2192877 (= c!348875 (nullableZipper!417 lt!819937))))

(declare-fun b!2192878 () Bool)

(assert (=> b!2192878 (= e!1401413 lt!819843)))

(declare-fun b!2192879 () Bool)

(assert (=> b!2192879 (= e!1401415 (+ 1 from!1114))))

(declare-fun b!2192880 () Bool)

(assert (=> b!2192880 (= e!1401415 lt!819843)))

(assert (= (and d!656320 (not res!942745)) b!2192876))

(assert (= (and d!656320 c!348874) b!2192878))

(assert (= (and d!656320 (not c!348874)) b!2192877))

(assert (= (and b!2192877 c!348875) b!2192879))

(assert (= (and b!2192877 (not c!348875)) b!2192880))

(declare-fun m!2635537 () Bool)

(assert (=> b!2192876 m!2635537))

(declare-fun m!2635539 () Bool)

(assert (=> b!2192877 m!2635539))

(declare-fun m!2635541 () Bool)

(assert (=> b!2192877 m!2635541))

(assert (=> b!2192877 m!2635541))

(declare-fun m!2635543 () Bool)

(assert (=> b!2192877 m!2635543))

(declare-fun m!2635545 () Bool)

(assert (=> b!2192877 m!2635545))

(assert (=> b!2192706 d!656320))

(declare-fun d!656322 () Bool)

(assert (=> d!656322 true))

(declare-fun lambda!82311 () Int)

(declare-fun flatMap!142 ((InoxSet Context!3414) Int) (InoxSet Context!3414))

(assert (=> d!656322 (= (derivationStepZipper!211 z!3955 (apply!6183 totalInput!923 from!1114)) (flatMap!142 z!3955 lambda!82311))))

(declare-fun bs!448473 () Bool)

(assert (= bs!448473 d!656322))

(declare-fun m!2635547 () Bool)

(assert (=> bs!448473 m!2635547))

(assert (=> b!2192706 d!656322))

(declare-fun bs!448474 () Bool)

(declare-fun d!656324 () Bool)

(assert (= bs!448474 (and d!656324 d!656314)))

(declare-fun lambda!82314 () Int)

(assert (=> bs!448474 (not (= lambda!82314 lambda!82306))))

(declare-fun bs!448475 () Bool)

(assert (= bs!448475 (and d!656324 b!2192856)))

(assert (=> bs!448475 (not (= lambda!82314 lambda!82307))))

(declare-fun bs!448476 () Bool)

(assert (= bs!448476 (and d!656324 b!2192857)))

(assert (=> bs!448476 (not (= lambda!82314 lambda!82308))))

(declare-fun exists!794 ((InoxSet Context!3414) Int) Bool)

(assert (=> d!656324 (= (nullableZipper!417 lt!819845) (exists!794 lt!819845 lambda!82314))))

(declare-fun bs!448477 () Bool)

(assert (= bs!448477 d!656324))

(declare-fun m!2635549 () Bool)

(assert (=> bs!448477 m!2635549))

(assert (=> b!2192706 d!656324))

(declare-fun d!656326 () Bool)

(declare-fun lt!819940 () Int)

(declare-fun size!19866 (List!25550) Int)

(assert (=> d!656326 (= lt!819940 (size!19866 (list!9783 totalInput!923)))))

(declare-fun size!19867 (Conc!8273) Int)

(assert (=> d!656326 (= lt!819940 (size!19867 (c!348802 totalInput!923)))))

(assert (=> d!656326 (= (size!19863 totalInput!923) lt!819940)))

(declare-fun bs!448478 () Bool)

(assert (= bs!448478 d!656326))

(assert (=> bs!448478 m!2635371))

(assert (=> bs!448478 m!2635371))

(declare-fun m!2635551 () Bool)

(assert (=> bs!448478 m!2635551))

(declare-fun m!2635553 () Bool)

(assert (=> bs!448478 m!2635553))

(assert (=> b!2192712 d!656326))

(declare-fun bs!448479 () Bool)

(declare-fun d!656328 () Bool)

(assert (= bs!448479 (and d!656328 d!656314)))

(declare-fun lambda!82315 () Int)

(assert (=> bs!448479 (not (= lambda!82315 lambda!82306))))

(declare-fun bs!448480 () Bool)

(assert (= bs!448480 (and d!656328 b!2192856)))

(assert (=> bs!448480 (not (= lambda!82315 lambda!82307))))

(declare-fun bs!448481 () Bool)

(assert (= bs!448481 (and d!656328 b!2192857)))

(assert (=> bs!448481 (not (= lambda!82315 lambda!82308))))

(declare-fun bs!448482 () Bool)

(assert (= bs!448482 (and d!656328 d!656324)))

(assert (=> bs!448482 (= lambda!82315 lambda!82314)))

(assert (=> d!656328 (= (nullableZipper!417 z!3955) (exists!794 z!3955 lambda!82315))))

(declare-fun bs!448483 () Bool)

(assert (= bs!448483 d!656328))

(declare-fun m!2635555 () Bool)

(assert (=> bs!448483 m!2635555))

(assert (=> b!2192713 d!656328))

(declare-fun d!656330 () Bool)

(declare-fun c!348882 () Bool)

(declare-fun isEmpty!14565 (List!25550) Bool)

(assert (=> d!656330 (= c!348882 (isEmpty!14565 (take!325 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)) lt!819840)))))

(declare-fun e!1401418 () Bool)

(assert (=> d!656330 (= (matchZipper!233 lt!819845 (take!325 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)) lt!819840)) e!1401418)))

(declare-fun b!2192887 () Bool)

(assert (=> b!2192887 (= e!1401418 (nullableZipper!417 lt!819845))))

(declare-fun b!2192888 () Bool)

(declare-fun head!4676 (List!25550) C!12420)

(declare-fun tail!3148 (List!25550) List!25550)

(assert (=> b!2192888 (= e!1401418 (matchZipper!233 (derivationStepZipper!211 lt!819845 (head!4676 (take!325 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)) lt!819840))) (tail!3148 (take!325 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)) lt!819840))))))

(assert (= (and d!656330 c!348882) b!2192887))

(assert (= (and d!656330 (not c!348882)) b!2192888))

(assert (=> d!656330 m!2635375))

(declare-fun m!2635557 () Bool)

(assert (=> d!656330 m!2635557))

(assert (=> b!2192887 m!2635389))

(assert (=> b!2192888 m!2635375))

(declare-fun m!2635559 () Bool)

(assert (=> b!2192888 m!2635559))

(assert (=> b!2192888 m!2635559))

(declare-fun m!2635561 () Bool)

(assert (=> b!2192888 m!2635561))

(assert (=> b!2192888 m!2635375))

(declare-fun m!2635563 () Bool)

(assert (=> b!2192888 m!2635563))

(assert (=> b!2192888 m!2635561))

(assert (=> b!2192888 m!2635563))

(declare-fun m!2635565 () Bool)

(assert (=> b!2192888 m!2635565))

(assert (=> b!2192704 d!656330))

(declare-fun e!1401429 () List!25550)

(declare-fun b!2192903 () Bool)

(assert (=> b!2192903 (= e!1401429 (Cons!25466 (h!30867 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114))) (take!325 (t!198148 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114))) (- lt!819840 1))))))

(declare-fun b!2192904 () Bool)

(declare-fun e!1401430 () Int)

(assert (=> b!2192904 (= e!1401430 (size!19866 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114))))))

(declare-fun b!2192906 () Bool)

(assert (=> b!2192906 (= e!1401430 lt!819840)))

(declare-fun b!2192907 () Bool)

(declare-fun e!1401427 () Int)

(assert (=> b!2192907 (= e!1401427 e!1401430)))

(declare-fun c!348891 () Bool)

(assert (=> b!2192907 (= c!348891 (>= lt!819840 (size!19866 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)))))))

(declare-fun b!2192908 () Bool)

(assert (=> b!2192908 (= e!1401427 0)))

(declare-fun b!2192909 () Bool)

(declare-fun e!1401428 () Bool)

(declare-fun lt!819943 () List!25550)

(assert (=> b!2192909 (= e!1401428 (= (size!19866 lt!819943) e!1401427))))

(declare-fun c!348889 () Bool)

(assert (=> b!2192909 (= c!348889 (<= lt!819840 0))))

(declare-fun b!2192905 () Bool)

(assert (=> b!2192905 (= e!1401429 Nil!25466)))

(declare-fun d!656332 () Bool)

(assert (=> d!656332 e!1401428))

(declare-fun res!942748 () Bool)

(assert (=> d!656332 (=> (not res!942748) (not e!1401428))))

(declare-fun content!3459 (List!25550) (InoxSet C!12420))

(assert (=> d!656332 (= res!942748 (= ((_ map implies) (content!3459 lt!819943) (content!3459 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)))) ((as const (InoxSet C!12420)) true)))))

(assert (=> d!656332 (= lt!819943 e!1401429)))

(declare-fun c!348890 () Bool)

(assert (=> d!656332 (= c!348890 (or ((_ is Nil!25466) (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114))) (<= lt!819840 0)))))

(assert (=> d!656332 (= (take!325 (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)) lt!819840) lt!819943)))

(assert (= (and d!656332 c!348890) b!2192905))

(assert (= (and d!656332 (not c!348890)) b!2192903))

(assert (= (and d!656332 res!942748) b!2192909))

(assert (= (and b!2192909 c!348889) b!2192908))

(assert (= (and b!2192909 (not c!348889)) b!2192907))

(assert (= (and b!2192907 c!348891) b!2192904))

(assert (= (and b!2192907 (not c!348891)) b!2192906))

(declare-fun m!2635567 () Bool)

(assert (=> b!2192903 m!2635567))

(declare-fun m!2635569 () Bool)

(assert (=> d!656332 m!2635569))

(assert (=> d!656332 m!2635373))

(declare-fun m!2635571 () Bool)

(assert (=> d!656332 m!2635571))

(assert (=> b!2192907 m!2635373))

(declare-fun m!2635573 () Bool)

(assert (=> b!2192907 m!2635573))

(declare-fun m!2635575 () Bool)

(assert (=> b!2192909 m!2635575))

(assert (=> b!2192904 m!2635373))

(assert (=> b!2192904 m!2635573))

(assert (=> b!2192704 d!656332))

(declare-fun b!2192928 () Bool)

(declare-fun e!1401444 () Int)

(declare-fun call!131872 () Int)

(assert (=> b!2192928 (= e!1401444 call!131872)))

(declare-fun b!2192929 () Bool)

(declare-fun e!1401445 () Int)

(assert (=> b!2192929 (= e!1401445 0)))

(declare-fun b!2192930 () Bool)

(declare-fun e!1401442 () Bool)

(declare-fun lt!819946 () List!25550)

(assert (=> b!2192930 (= e!1401442 (= (size!19866 lt!819946) e!1401444))))

(declare-fun c!348902 () Bool)

(assert (=> b!2192930 (= c!348902 (<= (+ 1 from!1114) 0))))

(declare-fun b!2192931 () Bool)

(assert (=> b!2192931 (= e!1401444 e!1401445)))

(declare-fun c!348901 () Bool)

(assert (=> b!2192931 (= c!348901 (>= (+ 1 from!1114) call!131872))))

(declare-fun d!656334 () Bool)

(assert (=> d!656334 e!1401442))

(declare-fun res!942751 () Bool)

(assert (=> d!656334 (=> (not res!942751) (not e!1401442))))

(assert (=> d!656334 (= res!942751 (= ((_ map implies) (content!3459 lt!819946) (content!3459 (list!9783 totalInput!923))) ((as const (InoxSet C!12420)) true)))))

(declare-fun e!1401441 () List!25550)

(assert (=> d!656334 (= lt!819946 e!1401441)))

(declare-fun c!348903 () Bool)

(assert (=> d!656334 (= c!348903 ((_ is Nil!25466) (list!9783 totalInput!923)))))

(assert (=> d!656334 (= (drop!1335 (list!9783 totalInput!923) (+ 1 from!1114)) lt!819946)))

(declare-fun bm!131867 () Bool)

(assert (=> bm!131867 (= call!131872 (size!19866 (list!9783 totalInput!923)))))

(declare-fun b!2192932 () Bool)

(declare-fun e!1401443 () List!25550)

(assert (=> b!2192932 (= e!1401441 e!1401443)))

(declare-fun c!348900 () Bool)

(assert (=> b!2192932 (= c!348900 (<= (+ 1 from!1114) 0))))

(declare-fun b!2192933 () Bool)

(assert (=> b!2192933 (= e!1401443 (list!9783 totalInput!923))))

(declare-fun b!2192934 () Bool)

(assert (=> b!2192934 (= e!1401445 (- call!131872 (+ 1 from!1114)))))

(declare-fun b!2192935 () Bool)

(assert (=> b!2192935 (= e!1401443 (drop!1335 (t!198148 (list!9783 totalInput!923)) (- (+ 1 from!1114) 1)))))

(declare-fun b!2192936 () Bool)

(assert (=> b!2192936 (= e!1401441 Nil!25466)))

(assert (= (and d!656334 c!348903) b!2192936))

(assert (= (and d!656334 (not c!348903)) b!2192932))

(assert (= (and b!2192932 c!348900) b!2192933))

(assert (= (and b!2192932 (not c!348900)) b!2192935))

(assert (= (and d!656334 res!942751) b!2192930))

(assert (= (and b!2192930 c!348902) b!2192928))

(assert (= (and b!2192930 (not c!348902)) b!2192931))

(assert (= (and b!2192931 c!348901) b!2192929))

(assert (= (and b!2192931 (not c!348901)) b!2192934))

(assert (= (or b!2192928 b!2192931 b!2192934) bm!131867))

(declare-fun m!2635577 () Bool)

(assert (=> b!2192930 m!2635577))

(declare-fun m!2635579 () Bool)

(assert (=> d!656334 m!2635579))

(assert (=> d!656334 m!2635371))

(declare-fun m!2635581 () Bool)

(assert (=> d!656334 m!2635581))

(assert (=> bm!131867 m!2635371))

(assert (=> bm!131867 m!2635551))

(declare-fun m!2635583 () Bool)

(assert (=> b!2192935 m!2635583))

(assert (=> b!2192704 d!656334))

(declare-fun d!656336 () Bool)

(declare-fun list!9785 (Conc!8273) List!25550)

(assert (=> d!656336 (= (list!9783 totalInput!923) (list!9785 (c!348802 totalInput!923)))))

(declare-fun bs!448484 () Bool)

(assert (= bs!448484 d!656336))

(declare-fun m!2635585 () Bool)

(assert (=> bs!448484 m!2635585))

(assert (=> b!2192704 d!656336))

(declare-fun b!2192945 () Bool)

(declare-fun tp!683440 () Bool)

(declare-fun e!1401450 () Bool)

(declare-fun tp!683439 () Bool)

(assert (=> b!2192945 (= e!1401450 (and (inv!34029 (left!19540 (c!348802 totalInput!923))) tp!683439 (inv!34029 (right!19870 (c!348802 totalInput!923))) tp!683440))))

(declare-fun b!2192947 () Bool)

(declare-fun e!1401451 () Bool)

(declare-fun tp!683438 () Bool)

(assert (=> b!2192947 (= e!1401451 tp!683438)))

(declare-fun b!2192946 () Bool)

(declare-fun inv!34036 (IArray!16551) Bool)

(assert (=> b!2192946 (= e!1401450 (and (inv!34036 (xs!11215 (c!348802 totalInput!923))) e!1401451))))

(assert (=> b!2192710 (= tp!683408 (and (inv!34029 (c!348802 totalInput!923)) e!1401450))))

(assert (= (and b!2192710 ((_ is Node!8273) (c!348802 totalInput!923))) b!2192945))

(assert (= b!2192946 b!2192947))

(assert (= (and b!2192710 ((_ is Leaf!12109) (c!348802 totalInput!923))) b!2192946))

(declare-fun m!2635587 () Bool)

(assert (=> b!2192945 m!2635587))

(declare-fun m!2635589 () Bool)

(assert (=> b!2192945 m!2635589))

(declare-fun m!2635591 () Bool)

(assert (=> b!2192946 m!2635591))

(assert (=> b!2192710 m!2635399))

(declare-fun condSetEmpty!18654 () Bool)

(assert (=> setNonEmpty!18648 (= condSetEmpty!18654 (= setRest!18648 ((as const (Array Context!3414 Bool)) false)))))

(declare-fun setRes!18654 () Bool)

(assert (=> setNonEmpty!18648 (= tp!683409 setRes!18654)))

(declare-fun setIsEmpty!18654 () Bool)

(assert (=> setIsEmpty!18654 setRes!18654))

(declare-fun tp!683446 () Bool)

(declare-fun setNonEmpty!18654 () Bool)

(declare-fun setElem!18654 () Context!3414)

(declare-fun e!1401454 () Bool)

(assert (=> setNonEmpty!18654 (= setRes!18654 (and tp!683446 (inv!34028 setElem!18654) e!1401454))))

(declare-fun setRest!18654 () (InoxSet Context!3414))

(assert (=> setNonEmpty!18654 (= setRest!18648 ((_ map or) (store ((as const (Array Context!3414 Bool)) false) setElem!18654 true) setRest!18654))))

(declare-fun b!2192952 () Bool)

(declare-fun tp!683445 () Bool)

(assert (=> b!2192952 (= e!1401454 tp!683445)))

(assert (= (and setNonEmpty!18648 condSetEmpty!18654) setIsEmpty!18654))

(assert (= (and setNonEmpty!18648 (not condSetEmpty!18654)) setNonEmpty!18654))

(assert (= setNonEmpty!18654 b!2192952))

(declare-fun m!2635593 () Bool)

(assert (=> setNonEmpty!18654 m!2635593))

(declare-fun b!2192957 () Bool)

(declare-fun e!1401457 () Bool)

(declare-fun tp!683451 () Bool)

(declare-fun tp!683452 () Bool)

(assert (=> b!2192957 (= e!1401457 (and tp!683451 tp!683452))))

(assert (=> b!2192714 (= tp!683410 e!1401457)))

(assert (= (and b!2192714 ((_ is Cons!25467) (exprs!2207 setElem!18648))) b!2192957))

(check-sat (not b!2192904) (not b!2192930) (not d!656330) (not b!2192903) (not d!656314) (not b!2192875) (not b!2192887) (not setNonEmpty!18654) (not b!2192888) (not b!2192857) (not d!656334) (not bm!131863) (not d!656328) (not b!2192868) (not b!2192957) (not b!2192724) (not b!2192869) (not d!656324) (not b!2192722) (not b!2192945) (not b!2192947) (not b!2192844) (not d!656274) (not b!2192710) (not b!2192877) (not bm!131867) (not b!2192876) (not b!2192952) (not d!656326) (not b!2192856) (not d!656280) (not b!2192946) (not d!656322) (not bm!131864) (not b!2192845) (not d!656318) (not d!656312) (not b!2192907) (not b!2192909) (not b!2192935) (not d!656336) (not d!656332))
(check-sat)
