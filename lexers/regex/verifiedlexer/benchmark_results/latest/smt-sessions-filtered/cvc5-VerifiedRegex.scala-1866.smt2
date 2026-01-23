; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92260 () Bool)

(assert start!92260)

(declare-fun b!1085007 () Bool)

(assert (=> b!1085007 true))

(declare-fun b!1085002 () Bool)

(declare-fun e!686136 () Bool)

(declare-fun tp!324677 () Bool)

(assert (=> b!1085002 (= e!686136 tp!324677)))

(declare-fun b!1085003 () Bool)

(declare-fun res!482666 () Bool)

(declare-fun e!686138 () Bool)

(assert (=> b!1085003 (=> (not res!482666) (not e!686138))))

(declare-datatypes ((C!6550 0))(
  ( (C!6551 (val!3523 Int)) )
))
(declare-datatypes ((Regex!2990 0))(
  ( (ElementMatch!2990 (c!183293 C!6550)) (Concat!4823 (regOne!6492 Regex!2990) (regTwo!6492 Regex!2990)) (EmptyExpr!2990) (Star!2990 (reg!3319 Regex!2990)) (EmptyLang!2990) (Union!2990 (regOne!6493 Regex!2990) (regTwo!6493 Regex!2990)) )
))
(declare-datatypes ((List!10273 0))(
  ( (Nil!10257) (Cons!10257 (h!15658 Regex!2990) (t!101319 List!10273)) )
))
(declare-datatypes ((Context!940 0))(
  ( (Context!941 (exprs!970 List!10273)) )
))
(declare-fun z!1122 () (Set Context!940))

(declare-datatypes ((List!10274 0))(
  ( (Nil!10258) (Cons!10258 (h!15659 C!6550) (t!101320 List!10274)) )
))
(declare-fun s!2287 () List!10274)

(declare-fun matchZipper!38 ((Set Context!940) List!10274) Bool)

(assert (=> b!1085003 (= res!482666 (matchZipper!38 z!1122 s!2287))))

(declare-fun setIsEmpty!7491 () Bool)

(declare-fun setRes!7491 () Bool)

(assert (=> setIsEmpty!7491 setRes!7491))

(declare-fun tp!324678 () Bool)

(declare-fun b!1085004 () Bool)

(declare-fun e!686141 () Bool)

(declare-datatypes ((List!10275 0))(
  ( (Nil!10259) (Cons!10259 (h!15660 Context!940) (t!101321 List!10275)) )
))
(declare-fun zl!316 () List!10275)

(declare-fun inv!13189 (Context!940) Bool)

(assert (=> b!1085004 (= e!686141 (and (inv!13189 (h!15660 zl!316)) e!686136 tp!324678))))

(declare-fun b!1085005 () Bool)

(declare-fun e!686140 () Bool)

(declare-fun tp!324679 () Bool)

(assert (=> b!1085005 (= e!686140 tp!324679)))

(declare-fun res!482665 () Bool)

(assert (=> start!92260 (=> (not res!482665) (not e!686138))))

(declare-fun toList!608 ((Set Context!940)) List!10275)

(assert (=> start!92260 (= res!482665 (= (toList!608 z!1122) zl!316))))

(assert (=> start!92260 e!686138))

(declare-fun condSetEmpty!7491 () Bool)

(assert (=> start!92260 (= condSetEmpty!7491 (= z!1122 (as set.empty (Set Context!940))))))

(assert (=> start!92260 setRes!7491))

(assert (=> start!92260 e!686141))

(declare-fun e!686137 () Bool)

(assert (=> start!92260 e!686137))

(declare-fun b!1085006 () Bool)

(declare-fun e!686139 () Bool)

(declare-fun lambda!39680 () Int)

(declare-fun getWitness!53 ((Set Context!940) Int) Context!940)

(assert (=> b!1085006 (= e!686139 (set.member (getWitness!53 z!1122 lambda!39680) z!1122))))

(declare-fun setNonEmpty!7491 () Bool)

(declare-fun setElem!7491 () Context!940)

(declare-fun tp!324680 () Bool)

(assert (=> setNonEmpty!7491 (= setRes!7491 (and tp!324680 (inv!13189 setElem!7491) e!686140))))

(declare-fun setRest!7491 () (Set Context!940))

(assert (=> setNonEmpty!7491 (= z!1122 (set.union (set.insert setElem!7491 (as set.empty (Set Context!940))) setRest!7491))))

(assert (=> b!1085007 (= e!686138 (not e!686139))))

(declare-fun res!482664 () Bool)

(assert (=> b!1085007 (=> res!482664 e!686139)))

(declare-fun exists!121 ((Set Context!940) Int) Bool)

(assert (=> b!1085007 (= res!482664 (not (exists!121 z!1122 lambda!39680)))))

(declare-fun exists!122 (List!10275 Int) Bool)

(assert (=> b!1085007 (exists!122 zl!316 lambda!39680)))

(declare-datatypes ((Unit!15655 0))(
  ( (Unit!15656) )
))
(declare-fun lt!362894 () Unit!15655)

(declare-fun lemmaZipperMatchesExistsMatchingContext!17 (List!10275 List!10274) Unit!15655)

(assert (=> b!1085007 (= lt!362894 (lemmaZipperMatchesExistsMatchingContext!17 zl!316 s!2287))))

(declare-fun b!1085008 () Bool)

(declare-fun tp_is_empty!5611 () Bool)

(declare-fun tp!324681 () Bool)

(assert (=> b!1085008 (= e!686137 (and tp_is_empty!5611 tp!324681))))

(assert (= (and start!92260 res!482665) b!1085003))

(assert (= (and b!1085003 res!482666) b!1085007))

(assert (= (and b!1085007 (not res!482664)) b!1085006))

(assert (= (and start!92260 condSetEmpty!7491) setIsEmpty!7491))

(assert (= (and start!92260 (not condSetEmpty!7491)) setNonEmpty!7491))

(assert (= setNonEmpty!7491 b!1085005))

(assert (= b!1085004 b!1085002))

(assert (= (and start!92260 (is-Cons!10259 zl!316)) b!1085004))

(assert (= (and start!92260 (is-Cons!10258 s!2287)) b!1085008))

(declare-fun m!1234617 () Bool)

(assert (=> setNonEmpty!7491 m!1234617))

(declare-fun m!1234619 () Bool)

(assert (=> b!1085006 m!1234619))

(assert (=> b!1085006 m!1234619))

(declare-fun m!1234621 () Bool)

(assert (=> b!1085006 m!1234621))

(declare-fun m!1234623 () Bool)

(assert (=> b!1085004 m!1234623))

(declare-fun m!1234625 () Bool)

(assert (=> b!1085007 m!1234625))

(declare-fun m!1234627 () Bool)

(assert (=> b!1085007 m!1234627))

(declare-fun m!1234629 () Bool)

(assert (=> b!1085007 m!1234629))

(declare-fun m!1234631 () Bool)

(assert (=> start!92260 m!1234631))

(declare-fun m!1234633 () Bool)

(assert (=> b!1085003 m!1234633))

(push 1)

(assert (not b!1085003))

(assert (not b!1085007))

(assert (not b!1085004))

(assert (not b!1085005))

(assert tp_is_empty!5611)

(assert (not b!1085006))

(assert (not setNonEmpty!7491))

(assert (not start!92260))

(assert (not b!1085002))

(assert (not b!1085008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!304799 () Bool)

(declare-fun e!686162 () Bool)

(assert (=> d!304799 e!686162))

(declare-fun res!482678 () Bool)

(assert (=> d!304799 (=> (not res!482678) (not e!686162))))

(declare-fun lt!362900 () List!10275)

(declare-fun noDuplicate!177 (List!10275) Bool)

(assert (=> d!304799 (= res!482678 (noDuplicate!177 lt!362900))))

(declare-fun choose!6888 ((Set Context!940)) List!10275)

(assert (=> d!304799 (= lt!362900 (choose!6888 z!1122))))

(assert (=> d!304799 (= (toList!608 z!1122) lt!362900)))

(declare-fun b!1085036 () Bool)

(declare-fun content!1468 (List!10275) (Set Context!940))

(assert (=> b!1085036 (= e!686162 (= (content!1468 lt!362900) z!1122))))

(assert (= (and d!304799 res!482678) b!1085036))

(declare-fun m!1234653 () Bool)

(assert (=> d!304799 m!1234653))

(declare-fun m!1234655 () Bool)

(assert (=> d!304799 m!1234655))

(declare-fun m!1234657 () Bool)

(assert (=> b!1085036 m!1234657))

(assert (=> start!92260 d!304799))

(declare-fun d!304801 () Bool)

(declare-fun lt!362903 () Bool)

(assert (=> d!304801 (= lt!362903 (exists!122 (toList!608 z!1122) lambda!39680))))

(declare-fun choose!6889 ((Set Context!940) Int) Bool)

(assert (=> d!304801 (= lt!362903 (choose!6889 z!1122 lambda!39680))))

(assert (=> d!304801 (= (exists!121 z!1122 lambda!39680) lt!362903)))

(declare-fun bs!256484 () Bool)

(assert (= bs!256484 d!304801))

(assert (=> bs!256484 m!1234631))

(assert (=> bs!256484 m!1234631))

(declare-fun m!1234659 () Bool)

(assert (=> bs!256484 m!1234659))

(declare-fun m!1234661 () Bool)

(assert (=> bs!256484 m!1234661))

(assert (=> b!1085007 d!304801))

(declare-fun bs!256485 () Bool)

(declare-fun d!304805 () Bool)

(assert (= bs!256485 (and d!304805 b!1085007)))

(declare-fun lambda!39690 () Int)

(assert (=> bs!256485 (not (= lambda!39690 lambda!39680))))

(assert (=> d!304805 true))

(declare-fun order!6185 () Int)

(declare-fun dynLambda!4501 (Int Int) Int)

(assert (=> d!304805 (< (dynLambda!4501 order!6185 lambda!39680) (dynLambda!4501 order!6185 lambda!39690))))

(declare-fun forall!2248 (List!10275 Int) Bool)

(assert (=> d!304805 (= (exists!122 zl!316 lambda!39680) (not (forall!2248 zl!316 lambda!39690)))))

(declare-fun bs!256486 () Bool)

(assert (= bs!256486 d!304805))

(declare-fun m!1234663 () Bool)

(assert (=> bs!256486 m!1234663))

(assert (=> b!1085007 d!304805))

(declare-fun bs!256487 () Bool)

(declare-fun d!304807 () Bool)

(assert (= bs!256487 (and d!304807 b!1085007)))

(declare-fun lambda!39693 () Int)

(assert (=> bs!256487 (= lambda!39693 lambda!39680)))

(declare-fun bs!256488 () Bool)

(assert (= bs!256488 (and d!304807 d!304805)))

(assert (=> bs!256488 (not (= lambda!39693 lambda!39690))))

(assert (=> d!304807 true))

(assert (=> d!304807 (exists!122 zl!316 lambda!39693)))

(declare-fun lt!362906 () Unit!15655)

(declare-fun choose!6890 (List!10275 List!10274) Unit!15655)

(assert (=> d!304807 (= lt!362906 (choose!6890 zl!316 s!2287))))

(assert (=> d!304807 (matchZipper!38 (content!1468 zl!316) s!2287)))

(assert (=> d!304807 (= (lemmaZipperMatchesExistsMatchingContext!17 zl!316 s!2287) lt!362906)))

(declare-fun bs!256489 () Bool)

(assert (= bs!256489 d!304807))

(declare-fun m!1234665 () Bool)

(assert (=> bs!256489 m!1234665))

(declare-fun m!1234667 () Bool)

(assert (=> bs!256489 m!1234667))

(declare-fun m!1234669 () Bool)

(assert (=> bs!256489 m!1234669))

(assert (=> bs!256489 m!1234669))

(declare-fun m!1234671 () Bool)

(assert (=> bs!256489 m!1234671))

(assert (=> b!1085007 d!304807))

(declare-fun d!304809 () Bool)

(declare-fun lambda!39696 () Int)

(declare-fun forall!2249 (List!10273 Int) Bool)

(assert (=> d!304809 (= (inv!13189 (h!15660 zl!316)) (forall!2249 (exprs!970 (h!15660 zl!316)) lambda!39696))))

(declare-fun bs!256490 () Bool)

(assert (= bs!256490 d!304809))

(declare-fun m!1234685 () Bool)

(assert (=> bs!256490 m!1234685))

(assert (=> b!1085004 d!304809))

(declare-fun d!304813 () Bool)

(declare-fun e!686168 () Bool)

(assert (=> d!304813 e!686168))

(declare-fun res!482681 () Bool)

(assert (=> d!304813 (=> (not res!482681) (not e!686168))))

(declare-fun lt!362909 () Context!940)

(declare-fun dynLambda!4502 (Int Context!940) Bool)

(assert (=> d!304813 (= res!482681 (dynLambda!4502 lambda!39680 lt!362909))))

(declare-fun getWitness!55 (List!10275 Int) Context!940)

(assert (=> d!304813 (= lt!362909 (getWitness!55 (toList!608 z!1122) lambda!39680))))

(assert (=> d!304813 (exists!121 z!1122 lambda!39680)))

(assert (=> d!304813 (= (getWitness!53 z!1122 lambda!39680) lt!362909)))

(declare-fun b!1085047 () Bool)

(assert (=> b!1085047 (= e!686168 (set.member lt!362909 z!1122))))

(assert (= (and d!304813 res!482681) b!1085047))

(declare-fun b_lambda!29983 () Bool)

(assert (=> (not b_lambda!29983) (not d!304813)))

(declare-fun m!1234687 () Bool)

(assert (=> d!304813 m!1234687))

(assert (=> d!304813 m!1234631))

(assert (=> d!304813 m!1234631))

(declare-fun m!1234689 () Bool)

(assert (=> d!304813 m!1234689))

(assert (=> d!304813 m!1234625))

(declare-fun m!1234691 () Bool)

(assert (=> b!1085047 m!1234691))

(assert (=> b!1085006 d!304813))

(declare-fun bs!256491 () Bool)

(declare-fun d!304815 () Bool)

(assert (= bs!256491 (and d!304815 d!304809)))

(declare-fun lambda!39697 () Int)

(assert (=> bs!256491 (= lambda!39697 lambda!39696)))

(assert (=> d!304815 (= (inv!13189 setElem!7491) (forall!2249 (exprs!970 setElem!7491) lambda!39697))))

(declare-fun bs!256492 () Bool)

(assert (= bs!256492 d!304815))

(declare-fun m!1234693 () Bool)

(assert (=> bs!256492 m!1234693))

(assert (=> setNonEmpty!7491 d!304815))

(declare-fun d!304817 () Bool)

(declare-fun c!183308 () Bool)

(declare-fun isEmpty!6616 (List!10274) Bool)

(assert (=> d!304817 (= c!183308 (isEmpty!6616 s!2287))))

(declare-fun e!686171 () Bool)

(assert (=> d!304817 (= (matchZipper!38 z!1122 s!2287) e!686171)))

(declare-fun b!1085052 () Bool)

(declare-fun nullableZipper!15 ((Set Context!940)) Bool)

(assert (=> b!1085052 (= e!686171 (nullableZipper!15 z!1122))))

(declare-fun b!1085053 () Bool)

(declare-fun derivationStepZipper!13 ((Set Context!940) C!6550) (Set Context!940))

(declare-fun head!2001 (List!10274) C!6550)

(declare-fun tail!1563 (List!10274) List!10274)

(assert (=> b!1085053 (= e!686171 (matchZipper!38 (derivationStepZipper!13 z!1122 (head!2001 s!2287)) (tail!1563 s!2287)))))

(assert (= (and d!304817 c!183308) b!1085052))

(assert (= (and d!304817 (not c!183308)) b!1085053))

(declare-fun m!1234697 () Bool)

(assert (=> d!304817 m!1234697))

(declare-fun m!1234699 () Bool)

(assert (=> b!1085052 m!1234699))

(declare-fun m!1234701 () Bool)

(assert (=> b!1085053 m!1234701))

(assert (=> b!1085053 m!1234701))

(declare-fun m!1234703 () Bool)

(assert (=> b!1085053 m!1234703))

(declare-fun m!1234705 () Bool)

(assert (=> b!1085053 m!1234705))

(assert (=> b!1085053 m!1234703))

(assert (=> b!1085053 m!1234705))

(declare-fun m!1234707 () Bool)

(assert (=> b!1085053 m!1234707))

(assert (=> b!1085003 d!304817))

(declare-fun b!1085058 () Bool)

(declare-fun e!686174 () Bool)

(declare-fun tp!324699 () Bool)

(assert (=> b!1085058 (= e!686174 (and tp_is_empty!5611 tp!324699))))

(assert (=> b!1085008 (= tp!324681 e!686174)))

(assert (= (and b!1085008 (is-Cons!10258 (t!101320 s!2287))) b!1085058))

(declare-fun b!1085066 () Bool)

(declare-fun e!686180 () Bool)

(declare-fun tp!324704 () Bool)

(assert (=> b!1085066 (= e!686180 tp!324704)))

(declare-fun e!686179 () Bool)

(declare-fun b!1085065 () Bool)

(declare-fun tp!324705 () Bool)

(assert (=> b!1085065 (= e!686179 (and (inv!13189 (h!15660 (t!101321 zl!316))) e!686180 tp!324705))))

(assert (=> b!1085004 (= tp!324678 e!686179)))

(assert (= b!1085065 b!1085066))

(assert (= (and b!1085004 (is-Cons!10259 (t!101321 zl!316))) b!1085065))

(declare-fun m!1234709 () Bool)

(assert (=> b!1085065 m!1234709))

(declare-fun b!1085071 () Bool)

(declare-fun e!686183 () Bool)

(declare-fun tp!324710 () Bool)

(declare-fun tp!324711 () Bool)

(assert (=> b!1085071 (= e!686183 (and tp!324710 tp!324711))))

(assert (=> b!1085005 (= tp!324679 e!686183)))

(assert (= (and b!1085005 (is-Cons!10257 (exprs!970 setElem!7491))) b!1085071))

(declare-fun b!1085074 () Bool)

(declare-fun e!686186 () Bool)

(declare-fun tp!324712 () Bool)

(declare-fun tp!324713 () Bool)

(assert (=> b!1085074 (= e!686186 (and tp!324712 tp!324713))))

(assert (=> b!1085002 (= tp!324677 e!686186)))

(assert (= (and b!1085002 (is-Cons!10257 (exprs!970 (h!15660 zl!316)))) b!1085074))

(declare-fun condSetEmpty!7497 () Bool)

(assert (=> setNonEmpty!7491 (= condSetEmpty!7497 (= setRest!7491 (as set.empty (Set Context!940))))))

(declare-fun setRes!7497 () Bool)

(assert (=> setNonEmpty!7491 (= tp!324680 setRes!7497)))

(declare-fun setIsEmpty!7497 () Bool)

(assert (=> setIsEmpty!7497 setRes!7497))

(declare-fun tp!324719 () Bool)

(declare-fun e!686189 () Bool)

(declare-fun setNonEmpty!7497 () Bool)

(declare-fun setElem!7497 () Context!940)

(assert (=> setNonEmpty!7497 (= setRes!7497 (and tp!324719 (inv!13189 setElem!7497) e!686189))))

(declare-fun setRest!7497 () (Set Context!940))

(assert (=> setNonEmpty!7497 (= setRest!7491 (set.union (set.insert setElem!7497 (as set.empty (Set Context!940))) setRest!7497))))

(declare-fun b!1085079 () Bool)

(declare-fun tp!324718 () Bool)

(assert (=> b!1085079 (= e!686189 tp!324718)))

(assert (= (and setNonEmpty!7491 condSetEmpty!7497) setIsEmpty!7497))

(assert (= (and setNonEmpty!7491 (not condSetEmpty!7497)) setNonEmpty!7497))

(assert (= setNonEmpty!7497 b!1085079))

(declare-fun m!1234711 () Bool)

(assert (=> setNonEmpty!7497 m!1234711))

(declare-fun b_lambda!29985 () Bool)

(assert (= b_lambda!29983 (or b!1085007 b_lambda!29985)))

(declare-fun bs!256494 () Bool)

(declare-fun d!304821 () Bool)

(assert (= bs!256494 (and d!304821 b!1085007)))

(assert (=> bs!256494 (= (dynLambda!4502 lambda!39680 lt!362909) (matchZipper!38 (set.insert lt!362909 (as set.empty (Set Context!940))) s!2287))))

(declare-fun m!1234713 () Bool)

(assert (=> bs!256494 m!1234713))

(assert (=> bs!256494 m!1234713))

(declare-fun m!1234715 () Bool)

(assert (=> bs!256494 m!1234715))

(assert (=> d!304813 d!304821))

(push 1)

(assert (not b_lambda!29985))

(assert (not b!1085079))

(assert (not d!304805))

(assert (not b!1085036))

(assert (not d!304801))

(assert (not d!304807))

(assert (not b!1085053))

(assert (not b!1085066))

(assert (not bs!256494))

(assert tp_is_empty!5611)

(assert (not b!1085074))

(assert (not b!1085052))

(assert (not d!304799))

(assert (not d!304815))

(assert (not setNonEmpty!7497))

(assert (not b!1085058))

(assert (not d!304813))

(assert (not d!304817))

(assert (not b!1085071))

(assert (not d!304809))

(assert (not b!1085065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

