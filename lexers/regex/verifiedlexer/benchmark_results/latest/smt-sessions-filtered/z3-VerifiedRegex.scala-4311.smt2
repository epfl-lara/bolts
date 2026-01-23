; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230596 () Bool)

(assert start!230596)

(declare-fun b!2337706 () Bool)

(declare-fun e!1496570 () Bool)

(declare-fun tp!741738 () Bool)

(assert (=> b!2337706 (= e!1496570 tp!741738)))

(declare-fun b!2337707 () Bool)

(declare-datatypes ((Unit!40710 0))(
  ( (Unit!40711) )
))
(declare-fun e!1496571 () Unit!40710)

(declare-fun Unit!40712 () Unit!40710)

(assert (=> b!2337707 (= e!1496571 Unit!40712)))

(assert (=> b!2337707 false))

(declare-fun b!2337708 () Bool)

(declare-fun tp!741739 () Bool)

(declare-fun tp!741741 () Bool)

(assert (=> b!2337708 (= e!1496570 (and tp!741739 tp!741741))))

(declare-fun b!2337709 () Bool)

(declare-fun e!1496573 () Unit!40710)

(declare-fun Unit!40713 () Unit!40710)

(assert (=> b!2337709 (= e!1496573 Unit!40713)))

(declare-fun b!2337710 () Bool)

(declare-fun Unit!40714 () Unit!40710)

(assert (=> b!2337710 (= e!1496573 Unit!40714)))

(assert (=> b!2337710 false))

(declare-fun b!2337711 () Bool)

(declare-fun res!996740 () Bool)

(declare-fun e!1496574 () Bool)

(assert (=> b!2337711 (=> (not res!996740) (not e!1496574))))

(declare-datatypes ((C!13880 0))(
  ( (C!13881 (val!8100 Int)) )
))
(declare-datatypes ((Regex!6861 0))(
  ( (ElementMatch!6861 (c!371635 C!13880)) (Concat!11483 (regOne!14234 Regex!6861) (regTwo!14234 Regex!6861)) (EmptyExpr!6861) (Star!6861 (reg!7190 Regex!6861)) (EmptyLang!6861) (Union!6861 (regOne!14235 Regex!6861) (regTwo!14235 Regex!6861)) )
))
(declare-fun r!26197 () Regex!6861)

(declare-fun c!13498 () C!13880)

(declare-fun nullable!1940 (Regex!6861) Bool)

(declare-fun derivativeStep!1600 (Regex!6861 C!13880) Regex!6861)

(assert (=> b!2337711 (= res!996740 (nullable!1940 (derivativeStep!1600 r!26197 c!13498)))))

(declare-fun res!996735 () Bool)

(assert (=> start!230596 (=> (not res!996735) (not e!1496574))))

(declare-fun validRegex!2606 (Regex!6861) Bool)

(assert (=> start!230596 (= res!996735 (validRegex!2606 r!26197))))

(assert (=> start!230596 e!1496574))

(assert (=> start!230596 e!1496570))

(declare-fun tp_is_empty!11033 () Bool)

(assert (=> start!230596 tp_is_empty!11033))

(declare-fun b!2337712 () Bool)

(declare-fun e!1496572 () Bool)

(assert (=> b!2337712 (= e!1496574 e!1496572)))

(declare-fun res!996741 () Bool)

(assert (=> b!2337712 (=> (not res!996741) (not e!1496572))))

(assert (=> b!2337712 (= res!996741 (nullable!1940 (derivativeStep!1600 (regOne!14235 r!26197) c!13498)))))

(declare-fun lt!862551 () Unit!40710)

(assert (=> b!2337712 (= lt!862551 e!1496571)))

(declare-fun c!371633 () Bool)

(assert (=> b!2337712 (= c!371633 (nullable!1940 (regTwo!14235 r!26197)))))

(declare-fun lt!862552 () Unit!40710)

(assert (=> b!2337712 (= lt!862552 e!1496573)))

(declare-fun c!371634 () Bool)

(declare-fun lt!862550 () Bool)

(assert (=> b!2337712 (= c!371634 lt!862550)))

(assert (=> b!2337712 (= lt!862550 (nullable!1940 (regOne!14235 r!26197)))))

(declare-fun b!2337713 () Bool)

(assert (=> b!2337713 (= e!1496570 tp_is_empty!11033)))

(declare-fun b!2337714 () Bool)

(declare-fun res!996736 () Bool)

(assert (=> b!2337714 (=> (not res!996736) (not e!1496572))))

(assert (=> b!2337714 (= res!996736 (validRegex!2606 (regOne!14235 r!26197)))))

(declare-fun b!2337715 () Bool)

(declare-fun res!996739 () Bool)

(assert (=> b!2337715 (=> (not res!996739) (not e!1496574))))

(get-info :version)

(assert (=> b!2337715 (= res!996739 (and (not ((_ is EmptyExpr!6861) r!26197)) (not ((_ is EmptyLang!6861) r!26197)) (not ((_ is ElementMatch!6861) r!26197)) ((_ is Union!6861) r!26197)))))

(declare-fun b!2337716 () Bool)

(declare-fun res!996738 () Bool)

(assert (=> b!2337716 (=> (not res!996738) (not e!1496574))))

(assert (=> b!2337716 (= res!996738 (not (nullable!1940 r!26197)))))

(declare-fun b!2337717 () Bool)

(declare-fun tp!741740 () Bool)

(declare-fun tp!741737 () Bool)

(assert (=> b!2337717 (= e!1496570 (and tp!741740 tp!741737))))

(declare-fun b!2337718 () Bool)

(declare-fun res!996737 () Bool)

(assert (=> b!2337718 (=> (not res!996737) (not e!1496572))))

(assert (=> b!2337718 (= res!996737 (not lt!862550))))

(declare-fun b!2337719 () Bool)

(declare-fun Unit!40715 () Unit!40710)

(assert (=> b!2337719 (= e!1496571 Unit!40715)))

(declare-fun b!2337720 () Bool)

(declare-datatypes ((List!27936 0))(
  ( (Nil!27838) (Cons!27838 (h!33239 C!13880) (t!207795 List!27936)) )
))
(declare-fun contains!4817 (List!27936 C!13880) Bool)

(declare-fun usedCharacters!436 (Regex!6861) List!27936)

(assert (=> b!2337720 (= e!1496572 (not (contains!4817 (usedCharacters!436 r!26197) c!13498)))))

(assert (=> b!2337720 (contains!4817 (usedCharacters!436 (regOne!14235 r!26197)) c!13498)))

(declare-fun lt!862553 () Unit!40710)

(declare-fun lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC!2 (Regex!6861 C!13880) Unit!40710)

(assert (=> b!2337720 (= lt!862553 (lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC!2 (regOne!14235 r!26197) c!13498))))

(assert (= (and start!230596 res!996735) b!2337716))

(assert (= (and b!2337716 res!996738) b!2337711))

(assert (= (and b!2337711 res!996740) b!2337715))

(assert (= (and b!2337715 res!996739) b!2337712))

(assert (= (and b!2337712 c!371634) b!2337710))

(assert (= (and b!2337712 (not c!371634)) b!2337709))

(assert (= (and b!2337712 c!371633) b!2337707))

(assert (= (and b!2337712 (not c!371633)) b!2337719))

(assert (= (and b!2337712 res!996741) b!2337714))

(assert (= (and b!2337714 res!996736) b!2337718))

(assert (= (and b!2337718 res!996737) b!2337720))

(assert (= (and start!230596 ((_ is ElementMatch!6861) r!26197)) b!2337713))

(assert (= (and start!230596 ((_ is Concat!11483) r!26197)) b!2337717))

(assert (= (and start!230596 ((_ is Star!6861) r!26197)) b!2337706))

(assert (= (and start!230596 ((_ is Union!6861) r!26197)) b!2337708))

(declare-fun m!2763299 () Bool)

(assert (=> b!2337714 m!2763299))

(declare-fun m!2763301 () Bool)

(assert (=> b!2337711 m!2763301))

(assert (=> b!2337711 m!2763301))

(declare-fun m!2763303 () Bool)

(assert (=> b!2337711 m!2763303))

(declare-fun m!2763305 () Bool)

(assert (=> b!2337720 m!2763305))

(declare-fun m!2763307 () Bool)

(assert (=> b!2337720 m!2763307))

(declare-fun m!2763309 () Bool)

(assert (=> b!2337720 m!2763309))

(assert (=> b!2337720 m!2763309))

(declare-fun m!2763311 () Bool)

(assert (=> b!2337720 m!2763311))

(assert (=> b!2337720 m!2763305))

(declare-fun m!2763313 () Bool)

(assert (=> b!2337720 m!2763313))

(declare-fun m!2763315 () Bool)

(assert (=> b!2337712 m!2763315))

(assert (=> b!2337712 m!2763315))

(declare-fun m!2763317 () Bool)

(assert (=> b!2337712 m!2763317))

(declare-fun m!2763319 () Bool)

(assert (=> b!2337712 m!2763319))

(declare-fun m!2763321 () Bool)

(assert (=> b!2337712 m!2763321))

(declare-fun m!2763323 () Bool)

(assert (=> b!2337716 m!2763323))

(declare-fun m!2763325 () Bool)

(assert (=> start!230596 m!2763325))

(check-sat (not b!2337711) (not b!2337714) (not start!230596) (not b!2337720) (not b!2337706) (not b!2337712) (not b!2337717) tp_is_empty!11033 (not b!2337708) (not b!2337716))
(check-sat)
(get-model)

(declare-fun d!690724 () Bool)

(declare-fun nullableFct!494 (Regex!6861) Bool)

(assert (=> d!690724 (= (nullable!1940 (derivativeStep!1600 (regOne!14235 r!26197) c!13498)) (nullableFct!494 (derivativeStep!1600 (regOne!14235 r!26197) c!13498)))))

(declare-fun bs!459961 () Bool)

(assert (= bs!459961 d!690724))

(assert (=> bs!459961 m!2763315))

(declare-fun m!2763327 () Bool)

(assert (=> bs!459961 m!2763327))

(assert (=> b!2337712 d!690724))

(declare-fun bm!140379 () Bool)

(declare-fun call!140384 () Regex!6861)

(declare-fun call!140387 () Regex!6861)

(assert (=> bm!140379 (= call!140384 call!140387)))

(declare-fun d!690726 () Bool)

(declare-fun lt!862559 () Regex!6861)

(assert (=> d!690726 (validRegex!2606 lt!862559)))

(declare-fun e!1496623 () Regex!6861)

(assert (=> d!690726 (= lt!862559 e!1496623)))

(declare-fun c!371661 () Bool)

(assert (=> d!690726 (= c!371661 (or ((_ is EmptyExpr!6861) (regOne!14235 r!26197)) ((_ is EmptyLang!6861) (regOne!14235 r!26197))))))

(assert (=> d!690726 (validRegex!2606 (regOne!14235 r!26197))))

(assert (=> d!690726 (= (derivativeStep!1600 (regOne!14235 r!26197) c!13498) lt!862559)))

(declare-fun b!2337790 () Bool)

(declare-fun e!1496622 () Regex!6861)

(assert (=> b!2337790 (= e!1496622 (Union!6861 (Concat!11483 call!140384 (regTwo!14234 (regOne!14235 r!26197))) EmptyLang!6861))))

(declare-fun b!2337791 () Bool)

(assert (=> b!2337791 (= e!1496623 EmptyLang!6861)))

(declare-fun b!2337792 () Bool)

(declare-fun e!1496620 () Regex!6861)

(assert (=> b!2337792 (= e!1496620 (Concat!11483 call!140387 (regOne!14235 r!26197)))))

(declare-fun bm!140380 () Bool)

(declare-fun call!140386 () Regex!6861)

(assert (=> bm!140380 (= call!140387 call!140386)))

(declare-fun b!2337793 () Bool)

(declare-fun e!1496624 () Regex!6861)

(declare-fun call!140385 () Regex!6861)

(assert (=> b!2337793 (= e!1496624 (Union!6861 call!140385 call!140386))))

(declare-fun b!2337794 () Bool)

(declare-fun c!371663 () Bool)

(assert (=> b!2337794 (= c!371663 (nullable!1940 (regOne!14234 (regOne!14235 r!26197))))))

(assert (=> b!2337794 (= e!1496620 e!1496622)))

(declare-fun b!2337795 () Bool)

(assert (=> b!2337795 (= e!1496624 e!1496620)))

(declare-fun c!371664 () Bool)

(assert (=> b!2337795 (= c!371664 ((_ is Star!6861) (regOne!14235 r!26197)))))

(declare-fun b!2337796 () Bool)

(assert (=> b!2337796 (= e!1496622 (Union!6861 (Concat!11483 call!140384 (regTwo!14234 (regOne!14235 r!26197))) call!140385))))

(declare-fun b!2337797 () Bool)

(declare-fun c!371662 () Bool)

(assert (=> b!2337797 (= c!371662 ((_ is Union!6861) (regOne!14235 r!26197)))))

(declare-fun e!1496621 () Regex!6861)

(assert (=> b!2337797 (= e!1496621 e!1496624)))

(declare-fun bm!140381 () Bool)

(assert (=> bm!140381 (= call!140385 (derivativeStep!1600 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))) c!13498))))

(declare-fun bm!140382 () Bool)

(assert (=> bm!140382 (= call!140386 (derivativeStep!1600 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) c!13498))))

(declare-fun b!2337798 () Bool)

(assert (=> b!2337798 (= e!1496621 (ite (= c!13498 (c!371635 (regOne!14235 r!26197))) EmptyExpr!6861 EmptyLang!6861))))

(declare-fun b!2337799 () Bool)

(assert (=> b!2337799 (= e!1496623 e!1496621)))

(declare-fun c!371660 () Bool)

(assert (=> b!2337799 (= c!371660 ((_ is ElementMatch!6861) (regOne!14235 r!26197)))))

(assert (= (and d!690726 c!371661) b!2337791))

(assert (= (and d!690726 (not c!371661)) b!2337799))

(assert (= (and b!2337799 c!371660) b!2337798))

(assert (= (and b!2337799 (not c!371660)) b!2337797))

(assert (= (and b!2337797 c!371662) b!2337793))

(assert (= (and b!2337797 (not c!371662)) b!2337795))

(assert (= (and b!2337795 c!371664) b!2337792))

(assert (= (and b!2337795 (not c!371664)) b!2337794))

(assert (= (and b!2337794 c!371663) b!2337796))

(assert (= (and b!2337794 (not c!371663)) b!2337790))

(assert (= (or b!2337796 b!2337790) bm!140379))

(assert (= (or b!2337792 bm!140379) bm!140380))

(assert (= (or b!2337793 bm!140380) bm!140382))

(assert (= (or b!2337793 b!2337796) bm!140381))

(declare-fun m!2763341 () Bool)

(assert (=> d!690726 m!2763341))

(assert (=> d!690726 m!2763299))

(declare-fun m!2763343 () Bool)

(assert (=> b!2337794 m!2763343))

(declare-fun m!2763345 () Bool)

(assert (=> bm!140381 m!2763345))

(declare-fun m!2763347 () Bool)

(assert (=> bm!140382 m!2763347))

(assert (=> b!2337712 d!690726))

(declare-fun d!690732 () Bool)

(assert (=> d!690732 (= (nullable!1940 (regTwo!14235 r!26197)) (nullableFct!494 (regTwo!14235 r!26197)))))

(declare-fun bs!459962 () Bool)

(assert (= bs!459962 d!690732))

(declare-fun m!2763349 () Bool)

(assert (=> bs!459962 m!2763349))

(assert (=> b!2337712 d!690732))

(declare-fun d!690734 () Bool)

(assert (=> d!690734 (= (nullable!1940 (regOne!14235 r!26197)) (nullableFct!494 (regOne!14235 r!26197)))))

(declare-fun bs!459963 () Bool)

(assert (= bs!459963 d!690734))

(declare-fun m!2763351 () Bool)

(assert (=> bs!459963 m!2763351))

(assert (=> b!2337712 d!690734))

(declare-fun d!690736 () Bool)

(assert (=> d!690736 (= (nullable!1940 (derivativeStep!1600 r!26197 c!13498)) (nullableFct!494 (derivativeStep!1600 r!26197 c!13498)))))

(declare-fun bs!459964 () Bool)

(assert (= bs!459964 d!690736))

(assert (=> bs!459964 m!2763301))

(declare-fun m!2763353 () Bool)

(assert (=> bs!459964 m!2763353))

(assert (=> b!2337711 d!690736))

(declare-fun bm!140383 () Bool)

(declare-fun call!140388 () Regex!6861)

(declare-fun call!140391 () Regex!6861)

(assert (=> bm!140383 (= call!140388 call!140391)))

(declare-fun d!690738 () Bool)

(declare-fun lt!862560 () Regex!6861)

(assert (=> d!690738 (validRegex!2606 lt!862560)))

(declare-fun e!1496628 () Regex!6861)

(assert (=> d!690738 (= lt!862560 e!1496628)))

(declare-fun c!371666 () Bool)

(assert (=> d!690738 (= c!371666 (or ((_ is EmptyExpr!6861) r!26197) ((_ is EmptyLang!6861) r!26197)))))

(assert (=> d!690738 (validRegex!2606 r!26197)))

(assert (=> d!690738 (= (derivativeStep!1600 r!26197 c!13498) lt!862560)))

(declare-fun b!2337800 () Bool)

(declare-fun e!1496627 () Regex!6861)

(assert (=> b!2337800 (= e!1496627 (Union!6861 (Concat!11483 call!140388 (regTwo!14234 r!26197)) EmptyLang!6861))))

(declare-fun b!2337801 () Bool)

(assert (=> b!2337801 (= e!1496628 EmptyLang!6861)))

(declare-fun b!2337802 () Bool)

(declare-fun e!1496625 () Regex!6861)

(assert (=> b!2337802 (= e!1496625 (Concat!11483 call!140391 r!26197))))

(declare-fun bm!140384 () Bool)

(declare-fun call!140390 () Regex!6861)

(assert (=> bm!140384 (= call!140391 call!140390)))

(declare-fun b!2337803 () Bool)

(declare-fun e!1496629 () Regex!6861)

(declare-fun call!140389 () Regex!6861)

(assert (=> b!2337803 (= e!1496629 (Union!6861 call!140389 call!140390))))

(declare-fun b!2337804 () Bool)

(declare-fun c!371668 () Bool)

(assert (=> b!2337804 (= c!371668 (nullable!1940 (regOne!14234 r!26197)))))

(assert (=> b!2337804 (= e!1496625 e!1496627)))

(declare-fun b!2337805 () Bool)

(assert (=> b!2337805 (= e!1496629 e!1496625)))

(declare-fun c!371669 () Bool)

(assert (=> b!2337805 (= c!371669 ((_ is Star!6861) r!26197))))

(declare-fun b!2337806 () Bool)

(assert (=> b!2337806 (= e!1496627 (Union!6861 (Concat!11483 call!140388 (regTwo!14234 r!26197)) call!140389))))

(declare-fun b!2337807 () Bool)

(declare-fun c!371667 () Bool)

(assert (=> b!2337807 (= c!371667 ((_ is Union!6861) r!26197))))

(declare-fun e!1496626 () Regex!6861)

(assert (=> b!2337807 (= e!1496626 e!1496629)))

(declare-fun bm!140385 () Bool)

(assert (=> bm!140385 (= call!140389 (derivativeStep!1600 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197)) c!13498))))

(declare-fun bm!140386 () Bool)

(assert (=> bm!140386 (= call!140390 (derivativeStep!1600 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197))) c!13498))))

(declare-fun b!2337808 () Bool)

(assert (=> b!2337808 (= e!1496626 (ite (= c!13498 (c!371635 r!26197)) EmptyExpr!6861 EmptyLang!6861))))

(declare-fun b!2337809 () Bool)

(assert (=> b!2337809 (= e!1496628 e!1496626)))

(declare-fun c!371665 () Bool)

(assert (=> b!2337809 (= c!371665 ((_ is ElementMatch!6861) r!26197))))

(assert (= (and d!690738 c!371666) b!2337801))

(assert (= (and d!690738 (not c!371666)) b!2337809))

(assert (= (and b!2337809 c!371665) b!2337808))

(assert (= (and b!2337809 (not c!371665)) b!2337807))

(assert (= (and b!2337807 c!371667) b!2337803))

(assert (= (and b!2337807 (not c!371667)) b!2337805))

(assert (= (and b!2337805 c!371669) b!2337802))

(assert (= (and b!2337805 (not c!371669)) b!2337804))

(assert (= (and b!2337804 c!371668) b!2337806))

(assert (= (and b!2337804 (not c!371668)) b!2337800))

(assert (= (or b!2337806 b!2337800) bm!140383))

(assert (= (or b!2337802 bm!140383) bm!140384))

(assert (= (or b!2337803 bm!140384) bm!140386))

(assert (= (or b!2337803 b!2337806) bm!140385))

(declare-fun m!2763355 () Bool)

(assert (=> d!690738 m!2763355))

(assert (=> d!690738 m!2763325))

(declare-fun m!2763357 () Bool)

(assert (=> b!2337804 m!2763357))

(declare-fun m!2763359 () Bool)

(assert (=> bm!140385 m!2763359))

(declare-fun m!2763361 () Bool)

(assert (=> bm!140386 m!2763361))

(assert (=> b!2337711 d!690738))

(declare-fun b!2337846 () Bool)

(declare-fun e!1496658 () Bool)

(declare-fun e!1496659 () Bool)

(assert (=> b!2337846 (= e!1496658 e!1496659)))

(declare-fun res!996775 () Bool)

(assert (=> b!2337846 (=> (not res!996775) (not e!1496659))))

(declare-fun call!140408 () Bool)

(assert (=> b!2337846 (= res!996775 call!140408)))

(declare-fun b!2337847 () Bool)

(declare-fun e!1496654 () Bool)

(declare-fun e!1496655 () Bool)

(assert (=> b!2337847 (= e!1496654 e!1496655)))

(declare-fun res!996777 () Bool)

(assert (=> b!2337847 (= res!996777 (not (nullable!1940 (reg!7190 r!26197))))))

(assert (=> b!2337847 (=> (not res!996777) (not e!1496655))))

(declare-fun b!2337848 () Bool)

(declare-fun e!1496657 () Bool)

(assert (=> b!2337848 (= e!1496657 e!1496654)))

(declare-fun c!371683 () Bool)

(assert (=> b!2337848 (= c!371683 ((_ is Star!6861) r!26197))))

(declare-fun bm!140401 () Bool)

(declare-fun call!140406 () Bool)

(declare-fun c!371684 () Bool)

(assert (=> bm!140401 (= call!140406 (validRegex!2606 (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))

(declare-fun b!2337849 () Bool)

(declare-fun call!140407 () Bool)

(assert (=> b!2337849 (= e!1496659 call!140407)))

(declare-fun d!690740 () Bool)

(declare-fun res!996779 () Bool)

(assert (=> d!690740 (=> res!996779 e!1496657)))

(assert (=> d!690740 (= res!996779 ((_ is ElementMatch!6861) r!26197))))

(assert (=> d!690740 (= (validRegex!2606 r!26197) e!1496657)))

(declare-fun b!2337850 () Bool)

(assert (=> b!2337850 (= e!1496655 call!140406)))

(declare-fun b!2337851 () Bool)

(declare-fun res!996776 () Bool)

(assert (=> b!2337851 (=> res!996776 e!1496658)))

(assert (=> b!2337851 (= res!996776 (not ((_ is Concat!11483) r!26197)))))

(declare-fun e!1496660 () Bool)

(assert (=> b!2337851 (= e!1496660 e!1496658)))

(declare-fun bm!140402 () Bool)

(assert (=> bm!140402 (= call!140408 (validRegex!2606 (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))))))

(declare-fun b!2337852 () Bool)

(declare-fun e!1496656 () Bool)

(assert (=> b!2337852 (= e!1496656 call!140407)))

(declare-fun b!2337853 () Bool)

(declare-fun res!996778 () Bool)

(assert (=> b!2337853 (=> (not res!996778) (not e!1496656))))

(assert (=> b!2337853 (= res!996778 call!140408)))

(assert (=> b!2337853 (= e!1496660 e!1496656)))

(declare-fun bm!140403 () Bool)

(assert (=> bm!140403 (= call!140407 call!140406)))

(declare-fun b!2337854 () Bool)

(assert (=> b!2337854 (= e!1496654 e!1496660)))

(assert (=> b!2337854 (= c!371684 ((_ is Union!6861) r!26197))))

(assert (= (and d!690740 (not res!996779)) b!2337848))

(assert (= (and b!2337848 c!371683) b!2337847))

(assert (= (and b!2337848 (not c!371683)) b!2337854))

(assert (= (and b!2337847 res!996777) b!2337850))

(assert (= (and b!2337854 c!371684) b!2337853))

(assert (= (and b!2337854 (not c!371684)) b!2337851))

(assert (= (and b!2337853 res!996778) b!2337852))

(assert (= (and b!2337851 (not res!996776)) b!2337846))

(assert (= (and b!2337846 res!996775) b!2337849))

(assert (= (or b!2337852 b!2337849) bm!140403))

(assert (= (or b!2337853 b!2337846) bm!140402))

(assert (= (or b!2337850 bm!140403) bm!140401))

(declare-fun m!2763387 () Bool)

(assert (=> b!2337847 m!2763387))

(declare-fun m!2763389 () Bool)

(assert (=> bm!140401 m!2763389))

(declare-fun m!2763391 () Bool)

(assert (=> bm!140402 m!2763391))

(assert (=> start!230596 d!690740))

(declare-fun d!690754 () Bool)

(assert (=> d!690754 (= (nullable!1940 r!26197) (nullableFct!494 r!26197))))

(declare-fun bs!459968 () Bool)

(assert (= bs!459968 d!690754))

(declare-fun m!2763393 () Bool)

(assert (=> bs!459968 m!2763393))

(assert (=> b!2337716 d!690754))

(declare-fun d!690756 () Bool)

(declare-fun lt!862567 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3771 (List!27936) (InoxSet C!13880))

(assert (=> d!690756 (= lt!862567 (select (content!3771 (usedCharacters!436 r!26197)) c!13498))))

(declare-fun e!1496666 () Bool)

(assert (=> d!690756 (= lt!862567 e!1496666)))

(declare-fun res!996784 () Bool)

(assert (=> d!690756 (=> (not res!996784) (not e!1496666))))

(assert (=> d!690756 (= res!996784 ((_ is Cons!27838) (usedCharacters!436 r!26197)))))

(assert (=> d!690756 (= (contains!4817 (usedCharacters!436 r!26197) c!13498) lt!862567)))

(declare-fun b!2337859 () Bool)

(declare-fun e!1496665 () Bool)

(assert (=> b!2337859 (= e!1496666 e!1496665)))

(declare-fun res!996785 () Bool)

(assert (=> b!2337859 (=> res!996785 e!1496665)))

(assert (=> b!2337859 (= res!996785 (= (h!33239 (usedCharacters!436 r!26197)) c!13498))))

(declare-fun b!2337860 () Bool)

(assert (=> b!2337860 (= e!1496665 (contains!4817 (t!207795 (usedCharacters!436 r!26197)) c!13498))))

(assert (= (and d!690756 res!996784) b!2337859))

(assert (= (and b!2337859 (not res!996785)) b!2337860))

(assert (=> d!690756 m!2763305))

(declare-fun m!2763395 () Bool)

(assert (=> d!690756 m!2763395))

(declare-fun m!2763397 () Bool)

(assert (=> d!690756 m!2763397))

(declare-fun m!2763399 () Bool)

(assert (=> b!2337860 m!2763399))

(assert (=> b!2337720 d!690756))

(declare-fun b!2337917 () Bool)

(declare-fun e!1496695 () List!27936)

(declare-fun call!140436 () List!27936)

(assert (=> b!2337917 (= e!1496695 call!140436)))

(declare-fun b!2337918 () Bool)

(assert (=> b!2337918 (= e!1496695 call!140436)))

(declare-fun b!2337919 () Bool)

(declare-fun e!1496698 () List!27936)

(declare-fun call!140435 () List!27936)

(assert (=> b!2337919 (= e!1496698 call!140435)))

(declare-fun b!2337920 () Bool)

(declare-fun e!1496697 () List!27936)

(assert (=> b!2337920 (= e!1496697 Nil!27838)))

(declare-fun d!690758 () Bool)

(declare-fun c!371714 () Bool)

(assert (=> d!690758 (= c!371714 (or ((_ is EmptyExpr!6861) (regOne!14235 r!26197)) ((_ is EmptyLang!6861) (regOne!14235 r!26197))))))

(assert (=> d!690758 (= (usedCharacters!436 (regOne!14235 r!26197)) e!1496697)))

(declare-fun b!2337921 () Bool)

(assert (=> b!2337921 (= e!1496698 e!1496695)))

(declare-fun c!371715 () Bool)

(assert (=> b!2337921 (= c!371715 ((_ is Union!6861) (regOne!14235 r!26197)))))

(declare-fun bm!140428 () Bool)

(declare-fun call!140433 () List!27936)

(assert (=> bm!140428 (= call!140433 (usedCharacters!436 (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(declare-fun c!371713 () Bool)

(declare-fun bm!140429 () Bool)

(assert (=> bm!140429 (= call!140435 (usedCharacters!436 (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(declare-fun bm!140430 () Bool)

(declare-fun call!140434 () List!27936)

(declare-fun ++!6862 (List!27936 List!27936) List!27936)

(assert (=> bm!140430 (= call!140436 (++!6862 call!140433 call!140434))))

(declare-fun bm!140431 () Bool)

(assert (=> bm!140431 (= call!140434 call!140435)))

(declare-fun b!2337922 () Bool)

(declare-fun e!1496696 () List!27936)

(assert (=> b!2337922 (= e!1496696 (Cons!27838 (c!371635 (regOne!14235 r!26197)) Nil!27838))))

(declare-fun b!2337923 () Bool)

(assert (=> b!2337923 (= c!371713 ((_ is Star!6861) (regOne!14235 r!26197)))))

(assert (=> b!2337923 (= e!1496696 e!1496698)))

(declare-fun b!2337924 () Bool)

(assert (=> b!2337924 (= e!1496697 e!1496696)))

(declare-fun c!371716 () Bool)

(assert (=> b!2337924 (= c!371716 ((_ is ElementMatch!6861) (regOne!14235 r!26197)))))

(assert (= (and d!690758 c!371714) b!2337920))

(assert (= (and d!690758 (not c!371714)) b!2337924))

(assert (= (and b!2337924 c!371716) b!2337922))

(assert (= (and b!2337924 (not c!371716)) b!2337923))

(assert (= (and b!2337923 c!371713) b!2337919))

(assert (= (and b!2337923 (not c!371713)) b!2337921))

(assert (= (and b!2337921 c!371715) b!2337918))

(assert (= (and b!2337921 (not c!371715)) b!2337917))

(assert (= (or b!2337918 b!2337917) bm!140431))

(assert (= (or b!2337918 b!2337917) bm!140428))

(assert (= (or b!2337918 b!2337917) bm!140430))

(assert (= (or b!2337919 bm!140431) bm!140429))

(declare-fun m!2763421 () Bool)

(assert (=> bm!140428 m!2763421))

(declare-fun m!2763425 () Bool)

(assert (=> bm!140429 m!2763425))

(declare-fun m!2763427 () Bool)

(assert (=> bm!140430 m!2763427))

(assert (=> b!2337720 d!690758))

(declare-fun d!690770 () Bool)

(assert (=> d!690770 (contains!4817 (usedCharacters!436 (regOne!14235 r!26197)) c!13498)))

(declare-fun lt!862574 () Unit!40710)

(declare-fun choose!13636 (Regex!6861 C!13880) Unit!40710)

(assert (=> d!690770 (= lt!862574 (choose!13636 (regOne!14235 r!26197) c!13498))))

(assert (=> d!690770 (validRegex!2606 (regOne!14235 r!26197))))

(assert (=> d!690770 (= (lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC!2 (regOne!14235 r!26197) c!13498) lt!862574)))

(declare-fun bs!459972 () Bool)

(assert (= bs!459972 d!690770))

(assert (=> bs!459972 m!2763309))

(assert (=> bs!459972 m!2763309))

(assert (=> bs!459972 m!2763311))

(declare-fun m!2763435 () Bool)

(assert (=> bs!459972 m!2763435))

(assert (=> bs!459972 m!2763299))

(assert (=> b!2337720 d!690770))

(declare-fun b!2337964 () Bool)

(declare-fun e!1496713 () List!27936)

(declare-fun call!140443 () List!27936)

(assert (=> b!2337964 (= e!1496713 call!140443)))

(declare-fun b!2337965 () Bool)

(assert (=> b!2337965 (= e!1496713 call!140443)))

(declare-fun b!2337966 () Bool)

(declare-fun e!1496716 () List!27936)

(declare-fun call!140442 () List!27936)

(assert (=> b!2337966 (= e!1496716 call!140442)))

(declare-fun b!2337967 () Bool)

(declare-fun e!1496715 () List!27936)

(assert (=> b!2337967 (= e!1496715 Nil!27838)))

(declare-fun d!690772 () Bool)

(declare-fun c!371721 () Bool)

(assert (=> d!690772 (= c!371721 (or ((_ is EmptyExpr!6861) r!26197) ((_ is EmptyLang!6861) r!26197)))))

(assert (=> d!690772 (= (usedCharacters!436 r!26197) e!1496715)))

(declare-fun b!2337968 () Bool)

(assert (=> b!2337968 (= e!1496716 e!1496713)))

(declare-fun c!371722 () Bool)

(assert (=> b!2337968 (= c!371722 ((_ is Union!6861) r!26197))))

(declare-fun bm!140435 () Bool)

(declare-fun call!140440 () List!27936)

(assert (=> bm!140435 (= call!140440 (usedCharacters!436 (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))))))

(declare-fun bm!140436 () Bool)

(declare-fun c!371720 () Bool)

(assert (=> bm!140436 (= call!140442 (usedCharacters!436 (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))

(declare-fun bm!140437 () Bool)

(declare-fun call!140441 () List!27936)

(assert (=> bm!140437 (= call!140443 (++!6862 call!140440 call!140441))))

(declare-fun bm!140438 () Bool)

(assert (=> bm!140438 (= call!140441 call!140442)))

(declare-fun b!2337969 () Bool)

(declare-fun e!1496714 () List!27936)

(assert (=> b!2337969 (= e!1496714 (Cons!27838 (c!371635 r!26197) Nil!27838))))

(declare-fun b!2337970 () Bool)

(assert (=> b!2337970 (= c!371720 ((_ is Star!6861) r!26197))))

(assert (=> b!2337970 (= e!1496714 e!1496716)))

(declare-fun b!2337971 () Bool)

(assert (=> b!2337971 (= e!1496715 e!1496714)))

(declare-fun c!371723 () Bool)

(assert (=> b!2337971 (= c!371723 ((_ is ElementMatch!6861) r!26197))))

(assert (= (and d!690772 c!371721) b!2337967))

(assert (= (and d!690772 (not c!371721)) b!2337971))

(assert (= (and b!2337971 c!371723) b!2337969))

(assert (= (and b!2337971 (not c!371723)) b!2337970))

(assert (= (and b!2337970 c!371720) b!2337966))

(assert (= (and b!2337970 (not c!371720)) b!2337968))

(assert (= (and b!2337968 c!371722) b!2337965))

(assert (= (and b!2337968 (not c!371722)) b!2337964))

(assert (= (or b!2337965 b!2337964) bm!140438))

(assert (= (or b!2337965 b!2337964) bm!140435))

(assert (= (or b!2337965 b!2337964) bm!140437))

(assert (= (or b!2337966 bm!140438) bm!140436))

(declare-fun m!2763437 () Bool)

(assert (=> bm!140435 m!2763437))

(declare-fun m!2763439 () Bool)

(assert (=> bm!140436 m!2763439))

(declare-fun m!2763441 () Bool)

(assert (=> bm!140437 m!2763441))

(assert (=> b!2337720 d!690772))

(declare-fun d!690774 () Bool)

(declare-fun lt!862575 () Bool)

(assert (=> d!690774 (= lt!862575 (select (content!3771 (usedCharacters!436 (regOne!14235 r!26197))) c!13498))))

(declare-fun e!1496718 () Bool)

(assert (=> d!690774 (= lt!862575 e!1496718)))

(declare-fun res!996791 () Bool)

(assert (=> d!690774 (=> (not res!996791) (not e!1496718))))

(assert (=> d!690774 (= res!996791 ((_ is Cons!27838) (usedCharacters!436 (regOne!14235 r!26197))))))

(assert (=> d!690774 (= (contains!4817 (usedCharacters!436 (regOne!14235 r!26197)) c!13498) lt!862575)))

(declare-fun b!2337972 () Bool)

(declare-fun e!1496717 () Bool)

(assert (=> b!2337972 (= e!1496718 e!1496717)))

(declare-fun res!996792 () Bool)

(assert (=> b!2337972 (=> res!996792 e!1496717)))

(assert (=> b!2337972 (= res!996792 (= (h!33239 (usedCharacters!436 (regOne!14235 r!26197))) c!13498))))

(declare-fun b!2337973 () Bool)

(assert (=> b!2337973 (= e!1496717 (contains!4817 (t!207795 (usedCharacters!436 (regOne!14235 r!26197))) c!13498))))

(assert (= (and d!690774 res!996791) b!2337972))

(assert (= (and b!2337972 (not res!996792)) b!2337973))

(assert (=> d!690774 m!2763309))

(declare-fun m!2763443 () Bool)

(assert (=> d!690774 m!2763443))

(declare-fun m!2763445 () Bool)

(assert (=> d!690774 m!2763445))

(declare-fun m!2763447 () Bool)

(assert (=> b!2337973 m!2763447))

(assert (=> b!2337720 d!690774))

(declare-fun b!2337974 () Bool)

(declare-fun e!1496723 () Bool)

(declare-fun e!1496724 () Bool)

(assert (=> b!2337974 (= e!1496723 e!1496724)))

(declare-fun res!996793 () Bool)

(assert (=> b!2337974 (=> (not res!996793) (not e!1496724))))

(declare-fun call!140446 () Bool)

(assert (=> b!2337974 (= res!996793 call!140446)))

(declare-fun b!2337975 () Bool)

(declare-fun e!1496719 () Bool)

(declare-fun e!1496720 () Bool)

(assert (=> b!2337975 (= e!1496719 e!1496720)))

(declare-fun res!996795 () Bool)

(assert (=> b!2337975 (= res!996795 (not (nullable!1940 (reg!7190 (regOne!14235 r!26197)))))))

(assert (=> b!2337975 (=> (not res!996795) (not e!1496720))))

(declare-fun b!2337976 () Bool)

(declare-fun e!1496722 () Bool)

(assert (=> b!2337976 (= e!1496722 e!1496719)))

(declare-fun c!371724 () Bool)

(assert (=> b!2337976 (= c!371724 ((_ is Star!6861) (regOne!14235 r!26197)))))

(declare-fun c!371725 () Bool)

(declare-fun bm!140439 () Bool)

(declare-fun call!140444 () Bool)

(assert (=> bm!140439 (= call!140444 (validRegex!2606 (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(declare-fun b!2337977 () Bool)

(declare-fun call!140445 () Bool)

(assert (=> b!2337977 (= e!1496724 call!140445)))

(declare-fun d!690776 () Bool)

(declare-fun res!996797 () Bool)

(assert (=> d!690776 (=> res!996797 e!1496722)))

(assert (=> d!690776 (= res!996797 ((_ is ElementMatch!6861) (regOne!14235 r!26197)))))

(assert (=> d!690776 (= (validRegex!2606 (regOne!14235 r!26197)) e!1496722)))

(declare-fun b!2337978 () Bool)

(assert (=> b!2337978 (= e!1496720 call!140444)))

(declare-fun b!2337979 () Bool)

(declare-fun res!996794 () Bool)

(assert (=> b!2337979 (=> res!996794 e!1496723)))

(assert (=> b!2337979 (= res!996794 (not ((_ is Concat!11483) (regOne!14235 r!26197))))))

(declare-fun e!1496725 () Bool)

(assert (=> b!2337979 (= e!1496725 e!1496723)))

(declare-fun bm!140440 () Bool)

(assert (=> bm!140440 (= call!140446 (validRegex!2606 (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(declare-fun b!2337980 () Bool)

(declare-fun e!1496721 () Bool)

(assert (=> b!2337980 (= e!1496721 call!140445)))

(declare-fun b!2337981 () Bool)

(declare-fun res!996796 () Bool)

(assert (=> b!2337981 (=> (not res!996796) (not e!1496721))))

(assert (=> b!2337981 (= res!996796 call!140446)))

(assert (=> b!2337981 (= e!1496725 e!1496721)))

(declare-fun bm!140441 () Bool)

(assert (=> bm!140441 (= call!140445 call!140444)))

(declare-fun b!2337982 () Bool)

(assert (=> b!2337982 (= e!1496719 e!1496725)))

(assert (=> b!2337982 (= c!371725 ((_ is Union!6861) (regOne!14235 r!26197)))))

(assert (= (and d!690776 (not res!996797)) b!2337976))

(assert (= (and b!2337976 c!371724) b!2337975))

(assert (= (and b!2337976 (not c!371724)) b!2337982))

(assert (= (and b!2337975 res!996795) b!2337978))

(assert (= (and b!2337982 c!371725) b!2337981))

(assert (= (and b!2337982 (not c!371725)) b!2337979))

(assert (= (and b!2337981 res!996796) b!2337980))

(assert (= (and b!2337979 (not res!996794)) b!2337974))

(assert (= (and b!2337974 res!996793) b!2337977))

(assert (= (or b!2337980 b!2337977) bm!140441))

(assert (= (or b!2337981 b!2337974) bm!140440))

(assert (= (or b!2337978 bm!140441) bm!140439))

(declare-fun m!2763449 () Bool)

(assert (=> b!2337975 m!2763449))

(declare-fun m!2763451 () Bool)

(assert (=> bm!140439 m!2763451))

(declare-fun m!2763453 () Bool)

(assert (=> bm!140440 m!2763453))

(assert (=> b!2337714 d!690776))

(declare-fun b!2337995 () Bool)

(declare-fun e!1496728 () Bool)

(declare-fun tp!741790 () Bool)

(assert (=> b!2337995 (= e!1496728 tp!741790)))

(assert (=> b!2337717 (= tp!741740 e!1496728)))

(declare-fun b!2337996 () Bool)

(declare-fun tp!741791 () Bool)

(declare-fun tp!741787 () Bool)

(assert (=> b!2337996 (= e!1496728 (and tp!741791 tp!741787))))

(declare-fun b!2337994 () Bool)

(declare-fun tp!741789 () Bool)

(declare-fun tp!741788 () Bool)

(assert (=> b!2337994 (= e!1496728 (and tp!741789 tp!741788))))

(declare-fun b!2337993 () Bool)

(assert (=> b!2337993 (= e!1496728 tp_is_empty!11033)))

(assert (= (and b!2337717 ((_ is ElementMatch!6861) (regOne!14234 r!26197))) b!2337993))

(assert (= (and b!2337717 ((_ is Concat!11483) (regOne!14234 r!26197))) b!2337994))

(assert (= (and b!2337717 ((_ is Star!6861) (regOne!14234 r!26197))) b!2337995))

(assert (= (and b!2337717 ((_ is Union!6861) (regOne!14234 r!26197))) b!2337996))

(declare-fun b!2337999 () Bool)

(declare-fun e!1496729 () Bool)

(declare-fun tp!741795 () Bool)

(assert (=> b!2337999 (= e!1496729 tp!741795)))

(assert (=> b!2337717 (= tp!741737 e!1496729)))

(declare-fun b!2338000 () Bool)

(declare-fun tp!741796 () Bool)

(declare-fun tp!741792 () Bool)

(assert (=> b!2338000 (= e!1496729 (and tp!741796 tp!741792))))

(declare-fun b!2337998 () Bool)

(declare-fun tp!741794 () Bool)

(declare-fun tp!741793 () Bool)

(assert (=> b!2337998 (= e!1496729 (and tp!741794 tp!741793))))

(declare-fun b!2337997 () Bool)

(assert (=> b!2337997 (= e!1496729 tp_is_empty!11033)))

(assert (= (and b!2337717 ((_ is ElementMatch!6861) (regTwo!14234 r!26197))) b!2337997))

(assert (= (and b!2337717 ((_ is Concat!11483) (regTwo!14234 r!26197))) b!2337998))

(assert (= (and b!2337717 ((_ is Star!6861) (regTwo!14234 r!26197))) b!2337999))

(assert (= (and b!2337717 ((_ is Union!6861) (regTwo!14234 r!26197))) b!2338000))

(declare-fun b!2338003 () Bool)

(declare-fun e!1496730 () Bool)

(declare-fun tp!741800 () Bool)

(assert (=> b!2338003 (= e!1496730 tp!741800)))

(assert (=> b!2337706 (= tp!741738 e!1496730)))

(declare-fun b!2338004 () Bool)

(declare-fun tp!741801 () Bool)

(declare-fun tp!741797 () Bool)

(assert (=> b!2338004 (= e!1496730 (and tp!741801 tp!741797))))

(declare-fun b!2338002 () Bool)

(declare-fun tp!741799 () Bool)

(declare-fun tp!741798 () Bool)

(assert (=> b!2338002 (= e!1496730 (and tp!741799 tp!741798))))

(declare-fun b!2338001 () Bool)

(assert (=> b!2338001 (= e!1496730 tp_is_empty!11033)))

(assert (= (and b!2337706 ((_ is ElementMatch!6861) (reg!7190 r!26197))) b!2338001))

(assert (= (and b!2337706 ((_ is Concat!11483) (reg!7190 r!26197))) b!2338002))

(assert (= (and b!2337706 ((_ is Star!6861) (reg!7190 r!26197))) b!2338003))

(assert (= (and b!2337706 ((_ is Union!6861) (reg!7190 r!26197))) b!2338004))

(declare-fun b!2338007 () Bool)

(declare-fun e!1496731 () Bool)

(declare-fun tp!741805 () Bool)

(assert (=> b!2338007 (= e!1496731 tp!741805)))

(assert (=> b!2337708 (= tp!741739 e!1496731)))

(declare-fun b!2338008 () Bool)

(declare-fun tp!741806 () Bool)

(declare-fun tp!741802 () Bool)

(assert (=> b!2338008 (= e!1496731 (and tp!741806 tp!741802))))

(declare-fun b!2338006 () Bool)

(declare-fun tp!741804 () Bool)

(declare-fun tp!741803 () Bool)

(assert (=> b!2338006 (= e!1496731 (and tp!741804 tp!741803))))

(declare-fun b!2338005 () Bool)

(assert (=> b!2338005 (= e!1496731 tp_is_empty!11033)))

(assert (= (and b!2337708 ((_ is ElementMatch!6861) (regOne!14235 r!26197))) b!2338005))

(assert (= (and b!2337708 ((_ is Concat!11483) (regOne!14235 r!26197))) b!2338006))

(assert (= (and b!2337708 ((_ is Star!6861) (regOne!14235 r!26197))) b!2338007))

(assert (= (and b!2337708 ((_ is Union!6861) (regOne!14235 r!26197))) b!2338008))

(declare-fun b!2338011 () Bool)

(declare-fun e!1496732 () Bool)

(declare-fun tp!741810 () Bool)

(assert (=> b!2338011 (= e!1496732 tp!741810)))

(assert (=> b!2337708 (= tp!741741 e!1496732)))

(declare-fun b!2338012 () Bool)

(declare-fun tp!741811 () Bool)

(declare-fun tp!741807 () Bool)

(assert (=> b!2338012 (= e!1496732 (and tp!741811 tp!741807))))

(declare-fun b!2338010 () Bool)

(declare-fun tp!741809 () Bool)

(declare-fun tp!741808 () Bool)

(assert (=> b!2338010 (= e!1496732 (and tp!741809 tp!741808))))

(declare-fun b!2338009 () Bool)

(assert (=> b!2338009 (= e!1496732 tp_is_empty!11033)))

(assert (= (and b!2337708 ((_ is ElementMatch!6861) (regTwo!14235 r!26197))) b!2338009))

(assert (= (and b!2337708 ((_ is Concat!11483) (regTwo!14235 r!26197))) b!2338010))

(assert (= (and b!2337708 ((_ is Star!6861) (regTwo!14235 r!26197))) b!2338011))

(assert (= (and b!2337708 ((_ is Union!6861) (regTwo!14235 r!26197))) b!2338012))

(check-sat (not d!690754) (not d!690724) (not b!2337998) (not d!690732) (not bm!140436) (not b!2337973) (not bm!140402) (not bm!140386) (not b!2338006) (not bm!140440) (not d!690756) (not b!2337860) (not d!690734) (not b!2337975) (not b!2338003) (not b!2337804) (not bm!140429) (not bm!140439) (not d!690726) (not b!2338007) (not d!690774) (not b!2337794) (not bm!140401) (not bm!140385) (not b!2338012) (not d!690738) (not b!2338002) (not b!2338008) (not b!2337995) (not bm!140428) (not b!2338000) (not bm!140381) (not d!690736) (not bm!140430) (not d!690770) (not b!2338010) (not b!2338011) (not bm!140382) (not b!2337996) (not b!2337994) (not bm!140435) (not b!2337847) tp_is_empty!11033 (not b!2338004) (not b!2337999) (not bm!140437))
(check-sat)
(get-model)

(declare-fun bm!140442 () Bool)

(declare-fun call!140447 () Regex!6861)

(declare-fun call!140450 () Regex!6861)

(assert (=> bm!140442 (= call!140447 call!140450)))

(declare-fun d!690778 () Bool)

(declare-fun lt!862576 () Regex!6861)

(assert (=> d!690778 (validRegex!2606 lt!862576)))

(declare-fun e!1496736 () Regex!6861)

(assert (=> d!690778 (= lt!862576 e!1496736)))

(declare-fun c!371727 () Bool)

(assert (=> d!690778 (= c!371727 (or ((_ is EmptyExpr!6861) (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197))) ((_ is EmptyLang!6861) (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197)))))))

(assert (=> d!690778 (validRegex!2606 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197)))))

(assert (=> d!690778 (= (derivativeStep!1600 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197)) c!13498) lt!862576)))

(declare-fun b!2338013 () Bool)

(declare-fun e!1496735 () Regex!6861)

(assert (=> b!2338013 (= e!1496735 (Union!6861 (Concat!11483 call!140447 (regTwo!14234 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197)))) EmptyLang!6861))))

(declare-fun b!2338014 () Bool)

(assert (=> b!2338014 (= e!1496736 EmptyLang!6861)))

(declare-fun b!2338015 () Bool)

(declare-fun e!1496733 () Regex!6861)

(assert (=> b!2338015 (= e!1496733 (Concat!11483 call!140450 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197))))))

(declare-fun bm!140443 () Bool)

(declare-fun call!140449 () Regex!6861)

(assert (=> bm!140443 (= call!140450 call!140449)))

(declare-fun b!2338016 () Bool)

(declare-fun e!1496737 () Regex!6861)

(declare-fun call!140448 () Regex!6861)

(assert (=> b!2338016 (= e!1496737 (Union!6861 call!140448 call!140449))))

(declare-fun b!2338017 () Bool)

(declare-fun c!371729 () Bool)

(assert (=> b!2338017 (= c!371729 (nullable!1940 (regOne!14234 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197)))))))

(assert (=> b!2338017 (= e!1496733 e!1496735)))

(declare-fun b!2338018 () Bool)

(assert (=> b!2338018 (= e!1496737 e!1496733)))

(declare-fun c!371730 () Bool)

(assert (=> b!2338018 (= c!371730 ((_ is Star!6861) (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197))))))

(declare-fun b!2338019 () Bool)

(assert (=> b!2338019 (= e!1496735 (Union!6861 (Concat!11483 call!140447 (regTwo!14234 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197)))) call!140448))))

(declare-fun b!2338020 () Bool)

(declare-fun c!371728 () Bool)

(assert (=> b!2338020 (= c!371728 ((_ is Union!6861) (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197))))))

(declare-fun e!1496734 () Regex!6861)

(assert (=> b!2338020 (= e!1496734 e!1496737)))

(declare-fun bm!140444 () Bool)

(assert (=> bm!140444 (= call!140448 (derivativeStep!1600 (ite c!371728 (regOne!14235 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197))) (regTwo!14234 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197)))) c!13498))))

(declare-fun bm!140445 () Bool)

(assert (=> bm!140445 (= call!140449 (derivativeStep!1600 (ite c!371728 (regTwo!14235 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197))) (ite c!371730 (reg!7190 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197))) (regOne!14234 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197))))) c!13498))))

(declare-fun b!2338021 () Bool)

(assert (=> b!2338021 (= e!1496734 (ite (= c!13498 (c!371635 (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197)))) EmptyExpr!6861 EmptyLang!6861))))

(declare-fun b!2338022 () Bool)

(assert (=> b!2338022 (= e!1496736 e!1496734)))

(declare-fun c!371726 () Bool)

(assert (=> b!2338022 (= c!371726 ((_ is ElementMatch!6861) (ite c!371667 (regOne!14235 r!26197) (regTwo!14234 r!26197))))))

(assert (= (and d!690778 c!371727) b!2338014))

(assert (= (and d!690778 (not c!371727)) b!2338022))

(assert (= (and b!2338022 c!371726) b!2338021))

(assert (= (and b!2338022 (not c!371726)) b!2338020))

(assert (= (and b!2338020 c!371728) b!2338016))

(assert (= (and b!2338020 (not c!371728)) b!2338018))

(assert (= (and b!2338018 c!371730) b!2338015))

(assert (= (and b!2338018 (not c!371730)) b!2338017))

(assert (= (and b!2338017 c!371729) b!2338019))

(assert (= (and b!2338017 (not c!371729)) b!2338013))

(assert (= (or b!2338019 b!2338013) bm!140442))

(assert (= (or b!2338015 bm!140442) bm!140443))

(assert (= (or b!2338016 bm!140443) bm!140445))

(assert (= (or b!2338016 b!2338019) bm!140444))

(declare-fun m!2763455 () Bool)

(assert (=> d!690778 m!2763455))

(declare-fun m!2763457 () Bool)

(assert (=> d!690778 m!2763457))

(declare-fun m!2763459 () Bool)

(assert (=> b!2338017 m!2763459))

(declare-fun m!2763461 () Bool)

(assert (=> bm!140444 m!2763461))

(declare-fun m!2763463 () Bool)

(assert (=> bm!140445 m!2763463))

(assert (=> bm!140385 d!690778))

(declare-fun b!2338023 () Bool)

(declare-fun e!1496742 () Bool)

(declare-fun e!1496743 () Bool)

(assert (=> b!2338023 (= e!1496742 e!1496743)))

(declare-fun res!996798 () Bool)

(assert (=> b!2338023 (=> (not res!996798) (not e!1496743))))

(declare-fun call!140453 () Bool)

(assert (=> b!2338023 (= res!996798 call!140453)))

(declare-fun b!2338024 () Bool)

(declare-fun e!1496738 () Bool)

(declare-fun e!1496739 () Bool)

(assert (=> b!2338024 (= e!1496738 e!1496739)))

(declare-fun res!996800 () Bool)

(assert (=> b!2338024 (= res!996800 (not (nullable!1940 (reg!7190 (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))))

(assert (=> b!2338024 (=> (not res!996800) (not e!1496739))))

(declare-fun b!2338025 () Bool)

(declare-fun e!1496741 () Bool)

(assert (=> b!2338025 (= e!1496741 e!1496738)))

(declare-fun c!371731 () Bool)

(assert (=> b!2338025 (= c!371731 ((_ is Star!6861) (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(declare-fun call!140451 () Bool)

(declare-fun c!371732 () Bool)

(declare-fun bm!140446 () Bool)

(assert (=> bm!140446 (= call!140451 (validRegex!2606 (ite c!371731 (reg!7190 (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) (ite c!371732 (regTwo!14235 (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) (regTwo!14234 (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))))))))

(declare-fun b!2338026 () Bool)

(declare-fun call!140452 () Bool)

(assert (=> b!2338026 (= e!1496743 call!140452)))

(declare-fun d!690780 () Bool)

(declare-fun res!996802 () Bool)

(assert (=> d!690780 (=> res!996802 e!1496741)))

(assert (=> d!690780 (= res!996802 ((_ is ElementMatch!6861) (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(assert (=> d!690780 (= (validRegex!2606 (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) e!1496741)))

(declare-fun b!2338027 () Bool)

(assert (=> b!2338027 (= e!1496739 call!140451)))

(declare-fun b!2338028 () Bool)

(declare-fun res!996799 () Bool)

(assert (=> b!2338028 (=> res!996799 e!1496742)))

(assert (=> b!2338028 (= res!996799 (not ((_ is Concat!11483) (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))))))

(declare-fun e!1496744 () Bool)

(assert (=> b!2338028 (= e!1496744 e!1496742)))

(declare-fun bm!140447 () Bool)

(assert (=> bm!140447 (= call!140453 (validRegex!2606 (ite c!371732 (regOne!14235 (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) (regOne!14234 (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))))

(declare-fun b!2338029 () Bool)

(declare-fun e!1496740 () Bool)

(assert (=> b!2338029 (= e!1496740 call!140452)))

(declare-fun b!2338030 () Bool)

(declare-fun res!996801 () Bool)

(assert (=> b!2338030 (=> (not res!996801) (not e!1496740))))

(assert (=> b!2338030 (= res!996801 call!140453)))

(assert (=> b!2338030 (= e!1496744 e!1496740)))

(declare-fun bm!140448 () Bool)

(assert (=> bm!140448 (= call!140452 call!140451)))

(declare-fun b!2338031 () Bool)

(assert (=> b!2338031 (= e!1496738 e!1496744)))

(assert (=> b!2338031 (= c!371732 ((_ is Union!6861) (ite c!371724 (reg!7190 (regOne!14235 r!26197)) (ite c!371725 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(assert (= (and d!690780 (not res!996802)) b!2338025))

(assert (= (and b!2338025 c!371731) b!2338024))

(assert (= (and b!2338025 (not c!371731)) b!2338031))

(assert (= (and b!2338024 res!996800) b!2338027))

(assert (= (and b!2338031 c!371732) b!2338030))

(assert (= (and b!2338031 (not c!371732)) b!2338028))

(assert (= (and b!2338030 res!996801) b!2338029))

(assert (= (and b!2338028 (not res!996799)) b!2338023))

(assert (= (and b!2338023 res!996798) b!2338026))

(assert (= (or b!2338029 b!2338026) bm!140448))

(assert (= (or b!2338030 b!2338023) bm!140447))

(assert (= (or b!2338027 bm!140448) bm!140446))

(declare-fun m!2763465 () Bool)

(assert (=> b!2338024 m!2763465))

(declare-fun m!2763467 () Bool)

(assert (=> bm!140446 m!2763467))

(declare-fun m!2763469 () Bool)

(assert (=> bm!140447 m!2763469))

(assert (=> bm!140439 d!690780))

(declare-fun d!690782 () Bool)

(assert (=> d!690782 (= (nullable!1940 (reg!7190 (regOne!14235 r!26197))) (nullableFct!494 (reg!7190 (regOne!14235 r!26197))))))

(declare-fun bs!459973 () Bool)

(assert (= bs!459973 d!690782))

(declare-fun m!2763471 () Bool)

(assert (=> bs!459973 m!2763471))

(assert (=> b!2337975 d!690782))

(declare-fun d!690784 () Bool)

(assert (=> d!690784 (= (nullable!1940 (regOne!14234 r!26197)) (nullableFct!494 (regOne!14234 r!26197)))))

(declare-fun bs!459974 () Bool)

(assert (= bs!459974 d!690784))

(declare-fun m!2763473 () Bool)

(assert (=> bs!459974 m!2763473))

(assert (=> b!2337804 d!690784))

(declare-fun b!2338032 () Bool)

(declare-fun e!1496749 () Bool)

(declare-fun e!1496750 () Bool)

(assert (=> b!2338032 (= e!1496749 e!1496750)))

(declare-fun res!996803 () Bool)

(assert (=> b!2338032 (=> (not res!996803) (not e!1496750))))

(declare-fun call!140456 () Bool)

(assert (=> b!2338032 (= res!996803 call!140456)))

(declare-fun b!2338033 () Bool)

(declare-fun e!1496745 () Bool)

(declare-fun e!1496746 () Bool)

(assert (=> b!2338033 (= e!1496745 e!1496746)))

(declare-fun res!996805 () Bool)

(assert (=> b!2338033 (= res!996805 (not (nullable!1940 (reg!7190 lt!862560))))))

(assert (=> b!2338033 (=> (not res!996805) (not e!1496746))))

(declare-fun b!2338034 () Bool)

(declare-fun e!1496748 () Bool)

(assert (=> b!2338034 (= e!1496748 e!1496745)))

(declare-fun c!371733 () Bool)

(assert (=> b!2338034 (= c!371733 ((_ is Star!6861) lt!862560))))

(declare-fun c!371734 () Bool)

(declare-fun bm!140449 () Bool)

(declare-fun call!140454 () Bool)

(assert (=> bm!140449 (= call!140454 (validRegex!2606 (ite c!371733 (reg!7190 lt!862560) (ite c!371734 (regTwo!14235 lt!862560) (regTwo!14234 lt!862560)))))))

(declare-fun b!2338035 () Bool)

(declare-fun call!140455 () Bool)

(assert (=> b!2338035 (= e!1496750 call!140455)))

(declare-fun d!690786 () Bool)

(declare-fun res!996807 () Bool)

(assert (=> d!690786 (=> res!996807 e!1496748)))

(assert (=> d!690786 (= res!996807 ((_ is ElementMatch!6861) lt!862560))))

(assert (=> d!690786 (= (validRegex!2606 lt!862560) e!1496748)))

(declare-fun b!2338036 () Bool)

(assert (=> b!2338036 (= e!1496746 call!140454)))

(declare-fun b!2338037 () Bool)

(declare-fun res!996804 () Bool)

(assert (=> b!2338037 (=> res!996804 e!1496749)))

(assert (=> b!2338037 (= res!996804 (not ((_ is Concat!11483) lt!862560)))))

(declare-fun e!1496751 () Bool)

(assert (=> b!2338037 (= e!1496751 e!1496749)))

(declare-fun bm!140450 () Bool)

(assert (=> bm!140450 (= call!140456 (validRegex!2606 (ite c!371734 (regOne!14235 lt!862560) (regOne!14234 lt!862560))))))

(declare-fun b!2338038 () Bool)

(declare-fun e!1496747 () Bool)

(assert (=> b!2338038 (= e!1496747 call!140455)))

(declare-fun b!2338039 () Bool)

(declare-fun res!996806 () Bool)

(assert (=> b!2338039 (=> (not res!996806) (not e!1496747))))

(assert (=> b!2338039 (= res!996806 call!140456)))

(assert (=> b!2338039 (= e!1496751 e!1496747)))

(declare-fun bm!140451 () Bool)

(assert (=> bm!140451 (= call!140455 call!140454)))

(declare-fun b!2338040 () Bool)

(assert (=> b!2338040 (= e!1496745 e!1496751)))

(assert (=> b!2338040 (= c!371734 ((_ is Union!6861) lt!862560))))

(assert (= (and d!690786 (not res!996807)) b!2338034))

(assert (= (and b!2338034 c!371733) b!2338033))

(assert (= (and b!2338034 (not c!371733)) b!2338040))

(assert (= (and b!2338033 res!996805) b!2338036))

(assert (= (and b!2338040 c!371734) b!2338039))

(assert (= (and b!2338040 (not c!371734)) b!2338037))

(assert (= (and b!2338039 res!996806) b!2338038))

(assert (= (and b!2338037 (not res!996804)) b!2338032))

(assert (= (and b!2338032 res!996803) b!2338035))

(assert (= (or b!2338038 b!2338035) bm!140451))

(assert (= (or b!2338039 b!2338032) bm!140450))

(assert (= (or b!2338036 bm!140451) bm!140449))

(declare-fun m!2763475 () Bool)

(assert (=> b!2338033 m!2763475))

(declare-fun m!2763477 () Bool)

(assert (=> bm!140449 m!2763477))

(declare-fun m!2763479 () Bool)

(assert (=> bm!140450 m!2763479))

(assert (=> d!690738 d!690786))

(assert (=> d!690738 d!690740))

(declare-fun d!690788 () Bool)

(declare-fun e!1496757 () Bool)

(assert (=> d!690788 e!1496757))

(declare-fun res!996813 () Bool)

(assert (=> d!690788 (=> (not res!996813) (not e!1496757))))

(declare-fun lt!862579 () List!27936)

(assert (=> d!690788 (= res!996813 (= (content!3771 lt!862579) ((_ map or) (content!3771 call!140440) (content!3771 call!140441))))))

(declare-fun e!1496756 () List!27936)

(assert (=> d!690788 (= lt!862579 e!1496756)))

(declare-fun c!371737 () Bool)

(assert (=> d!690788 (= c!371737 ((_ is Nil!27838) call!140440))))

(assert (=> d!690788 (= (++!6862 call!140440 call!140441) lt!862579)))

(declare-fun b!2338049 () Bool)

(assert (=> b!2338049 (= e!1496756 call!140441)))

(declare-fun b!2338052 () Bool)

(assert (=> b!2338052 (= e!1496757 (or (not (= call!140441 Nil!27838)) (= lt!862579 call!140440)))))

(declare-fun b!2338050 () Bool)

(assert (=> b!2338050 (= e!1496756 (Cons!27838 (h!33239 call!140440) (++!6862 (t!207795 call!140440) call!140441)))))

(declare-fun b!2338051 () Bool)

(declare-fun res!996812 () Bool)

(assert (=> b!2338051 (=> (not res!996812) (not e!1496757))))

(declare-fun size!22022 (List!27936) Int)

(assert (=> b!2338051 (= res!996812 (= (size!22022 lt!862579) (+ (size!22022 call!140440) (size!22022 call!140441))))))

(assert (= (and d!690788 c!371737) b!2338049))

(assert (= (and d!690788 (not c!371737)) b!2338050))

(assert (= (and d!690788 res!996813) b!2338051))

(assert (= (and b!2338051 res!996812) b!2338052))

(declare-fun m!2763481 () Bool)

(assert (=> d!690788 m!2763481))

(declare-fun m!2763483 () Bool)

(assert (=> d!690788 m!2763483))

(declare-fun m!2763485 () Bool)

(assert (=> d!690788 m!2763485))

(declare-fun m!2763487 () Bool)

(assert (=> b!2338050 m!2763487))

(declare-fun m!2763489 () Bool)

(assert (=> b!2338051 m!2763489))

(declare-fun m!2763491 () Bool)

(assert (=> b!2338051 m!2763491))

(declare-fun m!2763493 () Bool)

(assert (=> b!2338051 m!2763493))

(assert (=> bm!140437 d!690788))

(declare-fun b!2338053 () Bool)

(declare-fun e!1496758 () List!27936)

(declare-fun call!140460 () List!27936)

(assert (=> b!2338053 (= e!1496758 call!140460)))

(declare-fun b!2338054 () Bool)

(assert (=> b!2338054 (= e!1496758 call!140460)))

(declare-fun b!2338055 () Bool)

(declare-fun e!1496761 () List!27936)

(declare-fun call!140459 () List!27936)

(assert (=> b!2338055 (= e!1496761 call!140459)))

(declare-fun b!2338056 () Bool)

(declare-fun e!1496760 () List!27936)

(assert (=> b!2338056 (= e!1496760 Nil!27838)))

(declare-fun c!371739 () Bool)

(declare-fun d!690790 () Bool)

(assert (=> d!690790 (= c!371739 (or ((_ is EmptyExpr!6861) (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) ((_ is EmptyLang!6861) (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197))))))))

(assert (=> d!690790 (= (usedCharacters!436 (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) e!1496760)))

(declare-fun b!2338057 () Bool)

(assert (=> b!2338057 (= e!1496761 e!1496758)))

(declare-fun c!371740 () Bool)

(assert (=> b!2338057 (= c!371740 ((_ is Union!6861) (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))

(declare-fun call!140457 () List!27936)

(declare-fun bm!140452 () Bool)

(assert (=> bm!140452 (= call!140457 (usedCharacters!436 (ite c!371740 (regOne!14235 (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) (regOne!14234 (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))))

(declare-fun c!371738 () Bool)

(declare-fun bm!140453 () Bool)

(assert (=> bm!140453 (= call!140459 (usedCharacters!436 (ite c!371738 (reg!7190 (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) (ite c!371740 (regTwo!14235 (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) (regTwo!14234 (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197))))))))))

(declare-fun bm!140454 () Bool)

(declare-fun call!140458 () List!27936)

(assert (=> bm!140454 (= call!140460 (++!6862 call!140457 call!140458))))

(declare-fun bm!140455 () Bool)

(assert (=> bm!140455 (= call!140458 call!140459)))

(declare-fun b!2338058 () Bool)

(declare-fun e!1496759 () List!27936)

(assert (=> b!2338058 (= e!1496759 (Cons!27838 (c!371635 (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) Nil!27838))))

(declare-fun b!2338059 () Bool)

(assert (=> b!2338059 (= c!371738 ((_ is Star!6861) (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))

(assert (=> b!2338059 (= e!1496759 e!1496761)))

(declare-fun b!2338060 () Bool)

(assert (=> b!2338060 (= e!1496760 e!1496759)))

(declare-fun c!371741 () Bool)

(assert (=> b!2338060 (= c!371741 ((_ is ElementMatch!6861) (ite c!371720 (reg!7190 r!26197) (ite c!371722 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))

(assert (= (and d!690790 c!371739) b!2338056))

(assert (= (and d!690790 (not c!371739)) b!2338060))

(assert (= (and b!2338060 c!371741) b!2338058))

(assert (= (and b!2338060 (not c!371741)) b!2338059))

(assert (= (and b!2338059 c!371738) b!2338055))

(assert (= (and b!2338059 (not c!371738)) b!2338057))

(assert (= (and b!2338057 c!371740) b!2338054))

(assert (= (and b!2338057 (not c!371740)) b!2338053))

(assert (= (or b!2338054 b!2338053) bm!140455))

(assert (= (or b!2338054 b!2338053) bm!140452))

(assert (= (or b!2338054 b!2338053) bm!140454))

(assert (= (or b!2338055 bm!140455) bm!140453))

(declare-fun m!2763495 () Bool)

(assert (=> bm!140452 m!2763495))

(declare-fun m!2763497 () Bool)

(assert (=> bm!140453 m!2763497))

(declare-fun m!2763499 () Bool)

(assert (=> bm!140454 m!2763499))

(assert (=> bm!140436 d!690790))

(declare-fun d!690792 () Bool)

(declare-fun lt!862580 () Bool)

(assert (=> d!690792 (= lt!862580 (select (content!3771 (t!207795 (usedCharacters!436 (regOne!14235 r!26197)))) c!13498))))

(declare-fun e!1496763 () Bool)

(assert (=> d!690792 (= lt!862580 e!1496763)))

(declare-fun res!996814 () Bool)

(assert (=> d!690792 (=> (not res!996814) (not e!1496763))))

(assert (=> d!690792 (= res!996814 ((_ is Cons!27838) (t!207795 (usedCharacters!436 (regOne!14235 r!26197)))))))

(assert (=> d!690792 (= (contains!4817 (t!207795 (usedCharacters!436 (regOne!14235 r!26197))) c!13498) lt!862580)))

(declare-fun b!2338061 () Bool)

(declare-fun e!1496762 () Bool)

(assert (=> b!2338061 (= e!1496763 e!1496762)))

(declare-fun res!996815 () Bool)

(assert (=> b!2338061 (=> res!996815 e!1496762)))

(assert (=> b!2338061 (= res!996815 (= (h!33239 (t!207795 (usedCharacters!436 (regOne!14235 r!26197)))) c!13498))))

(declare-fun b!2338062 () Bool)

(assert (=> b!2338062 (= e!1496762 (contains!4817 (t!207795 (t!207795 (usedCharacters!436 (regOne!14235 r!26197)))) c!13498))))

(assert (= (and d!690792 res!996814) b!2338061))

(assert (= (and b!2338061 (not res!996815)) b!2338062))

(declare-fun m!2763501 () Bool)

(assert (=> d!690792 m!2763501))

(declare-fun m!2763503 () Bool)

(assert (=> d!690792 m!2763503))

(declare-fun m!2763505 () Bool)

(assert (=> b!2338062 m!2763505))

(assert (=> b!2337973 d!690792))

(declare-fun b!2338063 () Bool)

(declare-fun e!1496764 () List!27936)

(declare-fun call!140464 () List!27936)

(assert (=> b!2338063 (= e!1496764 call!140464)))

(declare-fun b!2338064 () Bool)

(assert (=> b!2338064 (= e!1496764 call!140464)))

(declare-fun b!2338065 () Bool)

(declare-fun e!1496767 () List!27936)

(declare-fun call!140463 () List!27936)

(assert (=> b!2338065 (= e!1496767 call!140463)))

(declare-fun b!2338066 () Bool)

(declare-fun e!1496766 () List!27936)

(assert (=> b!2338066 (= e!1496766 Nil!27838)))

(declare-fun d!690794 () Bool)

(declare-fun c!371743 () Bool)

(assert (=> d!690794 (= c!371743 (or ((_ is EmptyExpr!6861) (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))) ((_ is EmptyLang!6861) (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197)))))))

(assert (=> d!690794 (= (usedCharacters!436 (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))) e!1496766)))

(declare-fun b!2338067 () Bool)

(assert (=> b!2338067 (= e!1496767 e!1496764)))

(declare-fun c!371744 () Bool)

(assert (=> b!2338067 (= c!371744 ((_ is Union!6861) (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))))))

(declare-fun bm!140456 () Bool)

(declare-fun call!140461 () List!27936)

(assert (=> bm!140456 (= call!140461 (usedCharacters!436 (ite c!371744 (regOne!14235 (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))) (regOne!14234 (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))))))))

(declare-fun bm!140457 () Bool)

(declare-fun c!371742 () Bool)

(assert (=> bm!140457 (= call!140463 (usedCharacters!436 (ite c!371742 (reg!7190 (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))) (ite c!371744 (regTwo!14235 (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))) (regTwo!14234 (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197)))))))))

(declare-fun bm!140458 () Bool)

(declare-fun call!140462 () List!27936)

(assert (=> bm!140458 (= call!140464 (++!6862 call!140461 call!140462))))

(declare-fun bm!140459 () Bool)

(assert (=> bm!140459 (= call!140462 call!140463)))

(declare-fun b!2338068 () Bool)

(declare-fun e!1496765 () List!27936)

(assert (=> b!2338068 (= e!1496765 (Cons!27838 (c!371635 (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))) Nil!27838))))

(declare-fun b!2338069 () Bool)

(assert (=> b!2338069 (= c!371742 ((_ is Star!6861) (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))))))

(assert (=> b!2338069 (= e!1496765 e!1496767)))

(declare-fun b!2338070 () Bool)

(assert (=> b!2338070 (= e!1496766 e!1496765)))

(declare-fun c!371745 () Bool)

(assert (=> b!2338070 (= c!371745 ((_ is ElementMatch!6861) (ite c!371722 (regOne!14235 r!26197) (regOne!14234 r!26197))))))

(assert (= (and d!690794 c!371743) b!2338066))

(assert (= (and d!690794 (not c!371743)) b!2338070))

(assert (= (and b!2338070 c!371745) b!2338068))

(assert (= (and b!2338070 (not c!371745)) b!2338069))

(assert (= (and b!2338069 c!371742) b!2338065))

(assert (= (and b!2338069 (not c!371742)) b!2338067))

(assert (= (and b!2338067 c!371744) b!2338064))

(assert (= (and b!2338067 (not c!371744)) b!2338063))

(assert (= (or b!2338064 b!2338063) bm!140459))

(assert (= (or b!2338064 b!2338063) bm!140456))

(assert (= (or b!2338064 b!2338063) bm!140458))

(assert (= (or b!2338065 bm!140459) bm!140457))

(declare-fun m!2763507 () Bool)

(assert (=> bm!140456 m!2763507))

(declare-fun m!2763509 () Bool)

(assert (=> bm!140457 m!2763509))

(declare-fun m!2763511 () Bool)

(assert (=> bm!140458 m!2763511))

(assert (=> bm!140435 d!690794))

(declare-fun b!2338071 () Bool)

(declare-fun e!1496772 () Bool)

(declare-fun e!1496773 () Bool)

(assert (=> b!2338071 (= e!1496772 e!1496773)))

(declare-fun res!996816 () Bool)

(assert (=> b!2338071 (=> (not res!996816) (not e!1496773))))

(declare-fun call!140467 () Bool)

(assert (=> b!2338071 (= res!996816 call!140467)))

(declare-fun b!2338072 () Bool)

(declare-fun e!1496768 () Bool)

(declare-fun e!1496769 () Bool)

(assert (=> b!2338072 (= e!1496768 e!1496769)))

(declare-fun res!996818 () Bool)

(assert (=> b!2338072 (= res!996818 (not (nullable!1940 (reg!7190 lt!862559))))))

(assert (=> b!2338072 (=> (not res!996818) (not e!1496769))))

(declare-fun b!2338073 () Bool)

(declare-fun e!1496771 () Bool)

(assert (=> b!2338073 (= e!1496771 e!1496768)))

(declare-fun c!371746 () Bool)

(assert (=> b!2338073 (= c!371746 ((_ is Star!6861) lt!862559))))

(declare-fun c!371747 () Bool)

(declare-fun bm!140460 () Bool)

(declare-fun call!140465 () Bool)

(assert (=> bm!140460 (= call!140465 (validRegex!2606 (ite c!371746 (reg!7190 lt!862559) (ite c!371747 (regTwo!14235 lt!862559) (regTwo!14234 lt!862559)))))))

(declare-fun b!2338074 () Bool)

(declare-fun call!140466 () Bool)

(assert (=> b!2338074 (= e!1496773 call!140466)))

(declare-fun d!690796 () Bool)

(declare-fun res!996820 () Bool)

(assert (=> d!690796 (=> res!996820 e!1496771)))

(assert (=> d!690796 (= res!996820 ((_ is ElementMatch!6861) lt!862559))))

(assert (=> d!690796 (= (validRegex!2606 lt!862559) e!1496771)))

(declare-fun b!2338075 () Bool)

(assert (=> b!2338075 (= e!1496769 call!140465)))

(declare-fun b!2338076 () Bool)

(declare-fun res!996817 () Bool)

(assert (=> b!2338076 (=> res!996817 e!1496772)))

(assert (=> b!2338076 (= res!996817 (not ((_ is Concat!11483) lt!862559)))))

(declare-fun e!1496774 () Bool)

(assert (=> b!2338076 (= e!1496774 e!1496772)))

(declare-fun bm!140461 () Bool)

(assert (=> bm!140461 (= call!140467 (validRegex!2606 (ite c!371747 (regOne!14235 lt!862559) (regOne!14234 lt!862559))))))

(declare-fun b!2338077 () Bool)

(declare-fun e!1496770 () Bool)

(assert (=> b!2338077 (= e!1496770 call!140466)))

(declare-fun b!2338078 () Bool)

(declare-fun res!996819 () Bool)

(assert (=> b!2338078 (=> (not res!996819) (not e!1496770))))

(assert (=> b!2338078 (= res!996819 call!140467)))

(assert (=> b!2338078 (= e!1496774 e!1496770)))

(declare-fun bm!140462 () Bool)

(assert (=> bm!140462 (= call!140466 call!140465)))

(declare-fun b!2338079 () Bool)

(assert (=> b!2338079 (= e!1496768 e!1496774)))

(assert (=> b!2338079 (= c!371747 ((_ is Union!6861) lt!862559))))

(assert (= (and d!690796 (not res!996820)) b!2338073))

(assert (= (and b!2338073 c!371746) b!2338072))

(assert (= (and b!2338073 (not c!371746)) b!2338079))

(assert (= (and b!2338072 res!996818) b!2338075))

(assert (= (and b!2338079 c!371747) b!2338078))

(assert (= (and b!2338079 (not c!371747)) b!2338076))

(assert (= (and b!2338078 res!996819) b!2338077))

(assert (= (and b!2338076 (not res!996817)) b!2338071))

(assert (= (and b!2338071 res!996816) b!2338074))

(assert (= (or b!2338077 b!2338074) bm!140462))

(assert (= (or b!2338078 b!2338071) bm!140461))

(assert (= (or b!2338075 bm!140462) bm!140460))

(declare-fun m!2763513 () Bool)

(assert (=> b!2338072 m!2763513))

(declare-fun m!2763515 () Bool)

(assert (=> bm!140460 m!2763515))

(declare-fun m!2763517 () Bool)

(assert (=> bm!140461 m!2763517))

(assert (=> d!690726 d!690796))

(assert (=> d!690726 d!690776))

(declare-fun b!2338094 () Bool)

(declare-fun e!1496787 () Bool)

(declare-fun call!140472 () Bool)

(assert (=> b!2338094 (= e!1496787 call!140472)))

(declare-fun b!2338095 () Bool)

(declare-fun e!1496789 () Bool)

(declare-fun e!1496791 () Bool)

(assert (=> b!2338095 (= e!1496789 e!1496791)))

(declare-fun res!996835 () Bool)

(assert (=> b!2338095 (=> res!996835 e!1496791)))

(assert (=> b!2338095 (= res!996835 ((_ is Star!6861) (derivativeStep!1600 r!26197 c!13498)))))

(declare-fun d!690798 () Bool)

(declare-fun res!996834 () Bool)

(declare-fun e!1496792 () Bool)

(assert (=> d!690798 (=> res!996834 e!1496792)))

(assert (=> d!690798 (= res!996834 ((_ is EmptyExpr!6861) (derivativeStep!1600 r!26197 c!13498)))))

(assert (=> d!690798 (= (nullableFct!494 (derivativeStep!1600 r!26197 c!13498)) e!1496792)))

(declare-fun bm!140467 () Bool)

(declare-fun c!371750 () Bool)

(declare-fun call!140473 () Bool)

(assert (=> bm!140467 (= call!140473 (nullable!1940 (ite c!371750 (regOne!14235 (derivativeStep!1600 r!26197 c!13498)) (regOne!14234 (derivativeStep!1600 r!26197 c!13498)))))))

(declare-fun b!2338096 () Bool)

(declare-fun e!1496790 () Bool)

(assert (=> b!2338096 (= e!1496790 e!1496787)))

(declare-fun res!996833 () Bool)

(assert (=> b!2338096 (= res!996833 call!140473)))

(assert (=> b!2338096 (=> res!996833 e!1496787)))

(declare-fun bm!140468 () Bool)

(assert (=> bm!140468 (= call!140472 (nullable!1940 (ite c!371750 (regTwo!14235 (derivativeStep!1600 r!26197 c!13498)) (regTwo!14234 (derivativeStep!1600 r!26197 c!13498)))))))

(declare-fun b!2338097 () Bool)

(assert (=> b!2338097 (= e!1496792 e!1496789)))

(declare-fun res!996831 () Bool)

(assert (=> b!2338097 (=> (not res!996831) (not e!1496789))))

(assert (=> b!2338097 (= res!996831 (and (not ((_ is EmptyLang!6861) (derivativeStep!1600 r!26197 c!13498))) (not ((_ is ElementMatch!6861) (derivativeStep!1600 r!26197 c!13498)))))))

(declare-fun b!2338098 () Bool)

(declare-fun e!1496788 () Bool)

(assert (=> b!2338098 (= e!1496790 e!1496788)))

(declare-fun res!996832 () Bool)

(assert (=> b!2338098 (= res!996832 call!140473)))

(assert (=> b!2338098 (=> (not res!996832) (not e!1496788))))

(declare-fun b!2338099 () Bool)

(assert (=> b!2338099 (= e!1496791 e!1496790)))

(assert (=> b!2338099 (= c!371750 ((_ is Union!6861) (derivativeStep!1600 r!26197 c!13498)))))

(declare-fun b!2338100 () Bool)

(assert (=> b!2338100 (= e!1496788 call!140472)))

(assert (= (and d!690798 (not res!996834)) b!2338097))

(assert (= (and b!2338097 res!996831) b!2338095))

(assert (= (and b!2338095 (not res!996835)) b!2338099))

(assert (= (and b!2338099 c!371750) b!2338096))

(assert (= (and b!2338099 (not c!371750)) b!2338098))

(assert (= (and b!2338096 (not res!996833)) b!2338094))

(assert (= (and b!2338098 res!996832) b!2338100))

(assert (= (or b!2338096 b!2338098) bm!140467))

(assert (= (or b!2338094 b!2338100) bm!140468))

(declare-fun m!2763519 () Bool)

(assert (=> bm!140467 m!2763519))

(declare-fun m!2763521 () Bool)

(assert (=> bm!140468 m!2763521))

(assert (=> d!690736 d!690798))

(declare-fun b!2338101 () Bool)

(declare-fun e!1496797 () Bool)

(declare-fun e!1496798 () Bool)

(assert (=> b!2338101 (= e!1496797 e!1496798)))

(declare-fun res!996836 () Bool)

(assert (=> b!2338101 (=> (not res!996836) (not e!1496798))))

(declare-fun call!140476 () Bool)

(assert (=> b!2338101 (= res!996836 call!140476)))

(declare-fun b!2338102 () Bool)

(declare-fun e!1496793 () Bool)

(declare-fun e!1496794 () Bool)

(assert (=> b!2338102 (= e!1496793 e!1496794)))

(declare-fun res!996838 () Bool)

(assert (=> b!2338102 (= res!996838 (not (nullable!1940 (reg!7190 (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))))))))

(assert (=> b!2338102 (=> (not res!996838) (not e!1496794))))

(declare-fun b!2338103 () Bool)

(declare-fun e!1496796 () Bool)

(assert (=> b!2338103 (= e!1496796 e!1496793)))

(declare-fun c!371751 () Bool)

(assert (=> b!2338103 (= c!371751 ((_ is Star!6861) (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))))))

(declare-fun call!140474 () Bool)

(declare-fun bm!140469 () Bool)

(declare-fun c!371752 () Bool)

(assert (=> bm!140469 (= call!140474 (validRegex!2606 (ite c!371751 (reg!7190 (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))) (ite c!371752 (regTwo!14235 (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))) (regTwo!14234 (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197)))))))))

(declare-fun b!2338104 () Bool)

(declare-fun call!140475 () Bool)

(assert (=> b!2338104 (= e!1496798 call!140475)))

(declare-fun d!690800 () Bool)

(declare-fun res!996840 () Bool)

(assert (=> d!690800 (=> res!996840 e!1496796)))

(assert (=> d!690800 (= res!996840 ((_ is ElementMatch!6861) (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))))))

(assert (=> d!690800 (= (validRegex!2606 (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))) e!1496796)))

(declare-fun b!2338105 () Bool)

(assert (=> b!2338105 (= e!1496794 call!140474)))

(declare-fun b!2338106 () Bool)

(declare-fun res!996837 () Bool)

(assert (=> b!2338106 (=> res!996837 e!1496797)))

(assert (=> b!2338106 (= res!996837 (not ((_ is Concat!11483) (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197)))))))

(declare-fun e!1496799 () Bool)

(assert (=> b!2338106 (= e!1496799 e!1496797)))

(declare-fun bm!140470 () Bool)

(assert (=> bm!140470 (= call!140476 (validRegex!2606 (ite c!371752 (regOne!14235 (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))) (regOne!14234 (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))))))))

(declare-fun b!2338107 () Bool)

(declare-fun e!1496795 () Bool)

(assert (=> b!2338107 (= e!1496795 call!140475)))

(declare-fun b!2338108 () Bool)

(declare-fun res!996839 () Bool)

(assert (=> b!2338108 (=> (not res!996839) (not e!1496795))))

(assert (=> b!2338108 (= res!996839 call!140476)))

(assert (=> b!2338108 (= e!1496799 e!1496795)))

(declare-fun bm!140471 () Bool)

(assert (=> bm!140471 (= call!140475 call!140474)))

(declare-fun b!2338109 () Bool)

(assert (=> b!2338109 (= e!1496793 e!1496799)))

(assert (=> b!2338109 (= c!371752 ((_ is Union!6861) (ite c!371684 (regOne!14235 r!26197) (regOne!14234 r!26197))))))

(assert (= (and d!690800 (not res!996840)) b!2338103))

(assert (= (and b!2338103 c!371751) b!2338102))

(assert (= (and b!2338103 (not c!371751)) b!2338109))

(assert (= (and b!2338102 res!996838) b!2338105))

(assert (= (and b!2338109 c!371752) b!2338108))

(assert (= (and b!2338109 (not c!371752)) b!2338106))

(assert (= (and b!2338108 res!996839) b!2338107))

(assert (= (and b!2338106 (not res!996837)) b!2338101))

(assert (= (and b!2338101 res!996836) b!2338104))

(assert (= (or b!2338107 b!2338104) bm!140471))

(assert (= (or b!2338108 b!2338101) bm!140470))

(assert (= (or b!2338105 bm!140471) bm!140469))

(declare-fun m!2763523 () Bool)

(assert (=> b!2338102 m!2763523))

(declare-fun m!2763525 () Bool)

(assert (=> bm!140469 m!2763525))

(declare-fun m!2763527 () Bool)

(assert (=> bm!140470 m!2763527))

(assert (=> bm!140402 d!690800))

(declare-fun d!690802 () Bool)

(declare-fun e!1496801 () Bool)

(assert (=> d!690802 e!1496801))

(declare-fun res!996842 () Bool)

(assert (=> d!690802 (=> (not res!996842) (not e!1496801))))

(declare-fun lt!862581 () List!27936)

(assert (=> d!690802 (= res!996842 (= (content!3771 lt!862581) ((_ map or) (content!3771 call!140433) (content!3771 call!140434))))))

(declare-fun e!1496800 () List!27936)

(assert (=> d!690802 (= lt!862581 e!1496800)))

(declare-fun c!371753 () Bool)

(assert (=> d!690802 (= c!371753 ((_ is Nil!27838) call!140433))))

(assert (=> d!690802 (= (++!6862 call!140433 call!140434) lt!862581)))

(declare-fun b!2338110 () Bool)

(assert (=> b!2338110 (= e!1496800 call!140434)))

(declare-fun b!2338113 () Bool)

(assert (=> b!2338113 (= e!1496801 (or (not (= call!140434 Nil!27838)) (= lt!862581 call!140433)))))

(declare-fun b!2338111 () Bool)

(assert (=> b!2338111 (= e!1496800 (Cons!27838 (h!33239 call!140433) (++!6862 (t!207795 call!140433) call!140434)))))

(declare-fun b!2338112 () Bool)

(declare-fun res!996841 () Bool)

(assert (=> b!2338112 (=> (not res!996841) (not e!1496801))))

(assert (=> b!2338112 (= res!996841 (= (size!22022 lt!862581) (+ (size!22022 call!140433) (size!22022 call!140434))))))

(assert (= (and d!690802 c!371753) b!2338110))

(assert (= (and d!690802 (not c!371753)) b!2338111))

(assert (= (and d!690802 res!996842) b!2338112))

(assert (= (and b!2338112 res!996841) b!2338113))

(declare-fun m!2763529 () Bool)

(assert (=> d!690802 m!2763529))

(declare-fun m!2763531 () Bool)

(assert (=> d!690802 m!2763531))

(declare-fun m!2763533 () Bool)

(assert (=> d!690802 m!2763533))

(declare-fun m!2763535 () Bool)

(assert (=> b!2338111 m!2763535))

(declare-fun m!2763537 () Bool)

(assert (=> b!2338112 m!2763537))

(declare-fun m!2763539 () Bool)

(assert (=> b!2338112 m!2763539))

(declare-fun m!2763541 () Bool)

(assert (=> b!2338112 m!2763541))

(assert (=> bm!140430 d!690802))

(declare-fun b!2338114 () Bool)

(declare-fun e!1496802 () Bool)

(declare-fun call!140477 () Bool)

(assert (=> b!2338114 (= e!1496802 call!140477)))

(declare-fun b!2338115 () Bool)

(declare-fun e!1496804 () Bool)

(declare-fun e!1496806 () Bool)

(assert (=> b!2338115 (= e!1496804 e!1496806)))

(declare-fun res!996847 () Bool)

(assert (=> b!2338115 (=> res!996847 e!1496806)))

(assert (=> b!2338115 (= res!996847 ((_ is Star!6861) (derivativeStep!1600 (regOne!14235 r!26197) c!13498)))))

(declare-fun d!690804 () Bool)

(declare-fun res!996846 () Bool)

(declare-fun e!1496807 () Bool)

(assert (=> d!690804 (=> res!996846 e!1496807)))

(assert (=> d!690804 (= res!996846 ((_ is EmptyExpr!6861) (derivativeStep!1600 (regOne!14235 r!26197) c!13498)))))

(assert (=> d!690804 (= (nullableFct!494 (derivativeStep!1600 (regOne!14235 r!26197) c!13498)) e!1496807)))

(declare-fun call!140478 () Bool)

(declare-fun bm!140472 () Bool)

(declare-fun c!371754 () Bool)

(assert (=> bm!140472 (= call!140478 (nullable!1940 (ite c!371754 (regOne!14235 (derivativeStep!1600 (regOne!14235 r!26197) c!13498)) (regOne!14234 (derivativeStep!1600 (regOne!14235 r!26197) c!13498)))))))

(declare-fun b!2338116 () Bool)

(declare-fun e!1496805 () Bool)

(assert (=> b!2338116 (= e!1496805 e!1496802)))

(declare-fun res!996845 () Bool)

(assert (=> b!2338116 (= res!996845 call!140478)))

(assert (=> b!2338116 (=> res!996845 e!1496802)))

(declare-fun bm!140473 () Bool)

(assert (=> bm!140473 (= call!140477 (nullable!1940 (ite c!371754 (regTwo!14235 (derivativeStep!1600 (regOne!14235 r!26197) c!13498)) (regTwo!14234 (derivativeStep!1600 (regOne!14235 r!26197) c!13498)))))))

(declare-fun b!2338117 () Bool)

(assert (=> b!2338117 (= e!1496807 e!1496804)))

(declare-fun res!996843 () Bool)

(assert (=> b!2338117 (=> (not res!996843) (not e!1496804))))

(assert (=> b!2338117 (= res!996843 (and (not ((_ is EmptyLang!6861) (derivativeStep!1600 (regOne!14235 r!26197) c!13498))) (not ((_ is ElementMatch!6861) (derivativeStep!1600 (regOne!14235 r!26197) c!13498)))))))

(declare-fun b!2338118 () Bool)

(declare-fun e!1496803 () Bool)

(assert (=> b!2338118 (= e!1496805 e!1496803)))

(declare-fun res!996844 () Bool)

(assert (=> b!2338118 (= res!996844 call!140478)))

(assert (=> b!2338118 (=> (not res!996844) (not e!1496803))))

(declare-fun b!2338119 () Bool)

(assert (=> b!2338119 (= e!1496806 e!1496805)))

(assert (=> b!2338119 (= c!371754 ((_ is Union!6861) (derivativeStep!1600 (regOne!14235 r!26197) c!13498)))))

(declare-fun b!2338120 () Bool)

(assert (=> b!2338120 (= e!1496803 call!140477)))

(assert (= (and d!690804 (not res!996846)) b!2338117))

(assert (= (and b!2338117 res!996843) b!2338115))

(assert (= (and b!2338115 (not res!996847)) b!2338119))

(assert (= (and b!2338119 c!371754) b!2338116))

(assert (= (and b!2338119 (not c!371754)) b!2338118))

(assert (= (and b!2338116 (not res!996845)) b!2338114))

(assert (= (and b!2338118 res!996844) b!2338120))

(assert (= (or b!2338116 b!2338118) bm!140472))

(assert (= (or b!2338114 b!2338120) bm!140473))

(declare-fun m!2763543 () Bool)

(assert (=> bm!140472 m!2763543))

(declare-fun m!2763545 () Bool)

(assert (=> bm!140473 m!2763545))

(assert (=> d!690724 d!690804))

(declare-fun bm!140474 () Bool)

(declare-fun call!140479 () Regex!6861)

(declare-fun call!140482 () Regex!6861)

(assert (=> bm!140474 (= call!140479 call!140482)))

(declare-fun d!690806 () Bool)

(declare-fun lt!862582 () Regex!6861)

(assert (=> d!690806 (validRegex!2606 lt!862582)))

(declare-fun e!1496811 () Regex!6861)

(assert (=> d!690806 (= lt!862582 e!1496811)))

(declare-fun c!371756 () Bool)

(assert (=> d!690806 (= c!371756 (or ((_ is EmptyExpr!6861) (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))) ((_ is EmptyLang!6861) (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))))

(assert (=> d!690806 (validRegex!2606 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(assert (=> d!690806 (= (derivativeStep!1600 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) c!13498) lt!862582)))

(declare-fun e!1496810 () Regex!6861)

(declare-fun b!2338121 () Bool)

(assert (=> b!2338121 (= e!1496810 (Union!6861 (Concat!11483 call!140479 (regTwo!14234 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))) EmptyLang!6861))))

(declare-fun b!2338122 () Bool)

(assert (=> b!2338122 (= e!1496811 EmptyLang!6861)))

(declare-fun b!2338123 () Bool)

(declare-fun e!1496808 () Regex!6861)

(assert (=> b!2338123 (= e!1496808 (Concat!11483 call!140482 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))))))

(declare-fun bm!140475 () Bool)

(declare-fun call!140481 () Regex!6861)

(assert (=> bm!140475 (= call!140482 call!140481)))

(declare-fun b!2338124 () Bool)

(declare-fun e!1496812 () Regex!6861)

(declare-fun call!140480 () Regex!6861)

(assert (=> b!2338124 (= e!1496812 (Union!6861 call!140480 call!140481))))

(declare-fun b!2338125 () Bool)

(declare-fun c!371758 () Bool)

(assert (=> b!2338125 (= c!371758 (nullable!1940 (regOne!14234 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))))

(assert (=> b!2338125 (= e!1496808 e!1496810)))

(declare-fun b!2338126 () Bool)

(assert (=> b!2338126 (= e!1496812 e!1496808)))

(declare-fun c!371759 () Bool)

(assert (=> b!2338126 (= c!371759 ((_ is Star!6861) (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))))))

(declare-fun b!2338127 () Bool)

(assert (=> b!2338127 (= e!1496810 (Union!6861 (Concat!11483 call!140479 (regTwo!14234 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))) call!140480))))

(declare-fun c!371757 () Bool)

(declare-fun b!2338128 () Bool)

(assert (=> b!2338128 (= c!371757 ((_ is Union!6861) (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))))))

(declare-fun e!1496809 () Regex!6861)

(assert (=> b!2338128 (= e!1496809 e!1496812)))

(declare-fun bm!140476 () Bool)

(assert (=> bm!140476 (= call!140480 (derivativeStep!1600 (ite c!371757 (regOne!14235 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))) (regTwo!14234 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))) c!13498))))

(declare-fun bm!140477 () Bool)

(assert (=> bm!140477 (= call!140481 (derivativeStep!1600 (ite c!371757 (regTwo!14235 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))) (ite c!371759 (reg!7190 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))) (regOne!14234 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))))) c!13498))))

(declare-fun b!2338129 () Bool)

(assert (=> b!2338129 (= e!1496809 (ite (= c!13498 (c!371635 (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))) EmptyExpr!6861 EmptyLang!6861))))

(declare-fun b!2338130 () Bool)

(assert (=> b!2338130 (= e!1496811 e!1496809)))

(declare-fun c!371755 () Bool)

(assert (=> b!2338130 (= c!371755 ((_ is ElementMatch!6861) (ite c!371662 (regTwo!14235 (regOne!14235 r!26197)) (ite c!371664 (reg!7190 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))))))

(assert (= (and d!690806 c!371756) b!2338122))

(assert (= (and d!690806 (not c!371756)) b!2338130))

(assert (= (and b!2338130 c!371755) b!2338129))

(assert (= (and b!2338130 (not c!371755)) b!2338128))

(assert (= (and b!2338128 c!371757) b!2338124))

(assert (= (and b!2338128 (not c!371757)) b!2338126))

(assert (= (and b!2338126 c!371759) b!2338123))

(assert (= (and b!2338126 (not c!371759)) b!2338125))

(assert (= (and b!2338125 c!371758) b!2338127))

(assert (= (and b!2338125 (not c!371758)) b!2338121))

(assert (= (or b!2338127 b!2338121) bm!140474))

(assert (= (or b!2338123 bm!140474) bm!140475))

(assert (= (or b!2338124 bm!140475) bm!140477))

(assert (= (or b!2338124 b!2338127) bm!140476))

(declare-fun m!2763547 () Bool)

(assert (=> d!690806 m!2763547))

(declare-fun m!2763549 () Bool)

(assert (=> d!690806 m!2763549))

(declare-fun m!2763551 () Bool)

(assert (=> b!2338125 m!2763551))

(declare-fun m!2763553 () Bool)

(assert (=> bm!140476 m!2763553))

(declare-fun m!2763555 () Bool)

(assert (=> bm!140477 m!2763555))

(assert (=> bm!140382 d!690806))

(declare-fun d!690808 () Bool)

(declare-fun lt!862583 () Bool)

(assert (=> d!690808 (= lt!862583 (select (content!3771 (t!207795 (usedCharacters!436 r!26197))) c!13498))))

(declare-fun e!1496814 () Bool)

(assert (=> d!690808 (= lt!862583 e!1496814)))

(declare-fun res!996848 () Bool)

(assert (=> d!690808 (=> (not res!996848) (not e!1496814))))

(assert (=> d!690808 (= res!996848 ((_ is Cons!27838) (t!207795 (usedCharacters!436 r!26197))))))

(assert (=> d!690808 (= (contains!4817 (t!207795 (usedCharacters!436 r!26197)) c!13498) lt!862583)))

(declare-fun b!2338131 () Bool)

(declare-fun e!1496813 () Bool)

(assert (=> b!2338131 (= e!1496814 e!1496813)))

(declare-fun res!996849 () Bool)

(assert (=> b!2338131 (=> res!996849 e!1496813)))

(assert (=> b!2338131 (= res!996849 (= (h!33239 (t!207795 (usedCharacters!436 r!26197))) c!13498))))

(declare-fun b!2338132 () Bool)

(assert (=> b!2338132 (= e!1496813 (contains!4817 (t!207795 (t!207795 (usedCharacters!436 r!26197))) c!13498))))

(assert (= (and d!690808 res!996848) b!2338131))

(assert (= (and b!2338131 (not res!996849)) b!2338132))

(declare-fun m!2763557 () Bool)

(assert (=> d!690808 m!2763557))

(declare-fun m!2763559 () Bool)

(assert (=> d!690808 m!2763559))

(declare-fun m!2763561 () Bool)

(assert (=> b!2338132 m!2763561))

(assert (=> b!2337860 d!690808))

(declare-fun bm!140478 () Bool)

(declare-fun call!140483 () Regex!6861)

(declare-fun call!140486 () Regex!6861)

(assert (=> bm!140478 (= call!140483 call!140486)))

(declare-fun d!690810 () Bool)

(declare-fun lt!862584 () Regex!6861)

(assert (=> d!690810 (validRegex!2606 lt!862584)))

(declare-fun e!1496818 () Regex!6861)

(assert (=> d!690810 (= lt!862584 e!1496818)))

(declare-fun c!371761 () Bool)

(assert (=> d!690810 (= c!371761 (or ((_ is EmptyExpr!6861) (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))) ((_ is EmptyLang!6861) (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(assert (=> d!690810 (validRegex!2606 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))

(assert (=> d!690810 (= (derivativeStep!1600 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))) c!13498) lt!862584)))

(declare-fun b!2338133 () Bool)

(declare-fun e!1496817 () Regex!6861)

(assert (=> b!2338133 (= e!1496817 (Union!6861 (Concat!11483 call!140483 (regTwo!14234 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) EmptyLang!6861))))

(declare-fun b!2338134 () Bool)

(assert (=> b!2338134 (= e!1496818 EmptyLang!6861)))

(declare-fun e!1496815 () Regex!6861)

(declare-fun b!2338135 () Bool)

(assert (=> b!2338135 (= e!1496815 (Concat!11483 call!140486 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))))

(declare-fun bm!140479 () Bool)

(declare-fun call!140485 () Regex!6861)

(assert (=> bm!140479 (= call!140486 call!140485)))

(declare-fun b!2338136 () Bool)

(declare-fun e!1496819 () Regex!6861)

(declare-fun call!140484 () Regex!6861)

(assert (=> b!2338136 (= e!1496819 (Union!6861 call!140484 call!140485))))

(declare-fun b!2338137 () Bool)

(declare-fun c!371763 () Bool)

(assert (=> b!2338137 (= c!371763 (nullable!1940 (regOne!14234 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(assert (=> b!2338137 (= e!1496815 e!1496817)))

(declare-fun b!2338138 () Bool)

(assert (=> b!2338138 (= e!1496819 e!1496815)))

(declare-fun c!371764 () Bool)

(assert (=> b!2338138 (= c!371764 ((_ is Star!6861) (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))))

(declare-fun b!2338139 () Bool)

(assert (=> b!2338139 (= e!1496817 (Union!6861 (Concat!11483 call!140483 (regTwo!14234 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) call!140484))))

(declare-fun b!2338140 () Bool)

(declare-fun c!371762 () Bool)

(assert (=> b!2338140 (= c!371762 ((_ is Union!6861) (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))))

(declare-fun e!1496816 () Regex!6861)

(assert (=> b!2338140 (= e!1496816 e!1496819)))

(declare-fun bm!140480 () Bool)

(assert (=> bm!140480 (= call!140484 (derivativeStep!1600 (ite c!371762 (regOne!14235 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))) (regTwo!14234 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) c!13498))))

(declare-fun bm!140481 () Bool)

(assert (=> bm!140481 (= call!140485 (derivativeStep!1600 (ite c!371762 (regTwo!14235 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))) (ite c!371764 (reg!7190 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))) (regOne!14234 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))) c!13498))))

(declare-fun b!2338141 () Bool)

(assert (=> b!2338141 (= e!1496816 (ite (= c!13498 (c!371635 (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) EmptyExpr!6861 EmptyLang!6861))))

(declare-fun b!2338142 () Bool)

(assert (=> b!2338142 (= e!1496818 e!1496816)))

(declare-fun c!371760 () Bool)

(assert (=> b!2338142 (= c!371760 ((_ is ElementMatch!6861) (ite c!371662 (regOne!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))))

(assert (= (and d!690810 c!371761) b!2338134))

(assert (= (and d!690810 (not c!371761)) b!2338142))

(assert (= (and b!2338142 c!371760) b!2338141))

(assert (= (and b!2338142 (not c!371760)) b!2338140))

(assert (= (and b!2338140 c!371762) b!2338136))

(assert (= (and b!2338140 (not c!371762)) b!2338138))

(assert (= (and b!2338138 c!371764) b!2338135))

(assert (= (and b!2338138 (not c!371764)) b!2338137))

(assert (= (and b!2338137 c!371763) b!2338139))

(assert (= (and b!2338137 (not c!371763)) b!2338133))

(assert (= (or b!2338139 b!2338133) bm!140478))

(assert (= (or b!2338135 bm!140478) bm!140479))

(assert (= (or b!2338136 bm!140479) bm!140481))

(assert (= (or b!2338136 b!2338139) bm!140480))

(declare-fun m!2763563 () Bool)

(assert (=> d!690810 m!2763563))

(declare-fun m!2763565 () Bool)

(assert (=> d!690810 m!2763565))

(declare-fun m!2763567 () Bool)

(assert (=> b!2338137 m!2763567))

(declare-fun m!2763569 () Bool)

(assert (=> bm!140480 m!2763569))

(declare-fun m!2763571 () Bool)

(assert (=> bm!140481 m!2763571))

(assert (=> bm!140381 d!690810))

(declare-fun b!2338143 () Bool)

(declare-fun e!1496820 () List!27936)

(declare-fun call!140490 () List!27936)

(assert (=> b!2338143 (= e!1496820 call!140490)))

(declare-fun b!2338144 () Bool)

(assert (=> b!2338144 (= e!1496820 call!140490)))

(declare-fun b!2338145 () Bool)

(declare-fun e!1496823 () List!27936)

(declare-fun call!140489 () List!27936)

(assert (=> b!2338145 (= e!1496823 call!140489)))

(declare-fun b!2338146 () Bool)

(declare-fun e!1496822 () List!27936)

(assert (=> b!2338146 (= e!1496822 Nil!27838)))

(declare-fun c!371766 () Bool)

(declare-fun d!690812 () Bool)

(assert (=> d!690812 (= c!371766 (or ((_ is EmptyExpr!6861) (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) ((_ is EmptyLang!6861) (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))))))

(assert (=> d!690812 (= (usedCharacters!436 (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) e!1496822)))

(declare-fun b!2338147 () Bool)

(assert (=> b!2338147 (= e!1496823 e!1496820)))

(declare-fun c!371767 () Bool)

(assert (=> b!2338147 (= c!371767 ((_ is Union!6861) (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(declare-fun bm!140482 () Bool)

(declare-fun call!140487 () List!27936)

(assert (=> bm!140482 (= call!140487 (usedCharacters!436 (ite c!371767 (regOne!14235 (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) (regOne!14234 (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))))

(declare-fun c!371765 () Bool)

(declare-fun bm!140483 () Bool)

(assert (=> bm!140483 (= call!140489 (usedCharacters!436 (ite c!371765 (reg!7190 (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) (ite c!371767 (regTwo!14235 (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) (regTwo!14234 (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))))))))

(declare-fun bm!140484 () Bool)

(declare-fun call!140488 () List!27936)

(assert (=> bm!140484 (= call!140490 (++!6862 call!140487 call!140488))))

(declare-fun bm!140485 () Bool)

(assert (=> bm!140485 (= call!140488 call!140489)))

(declare-fun b!2338148 () Bool)

(declare-fun e!1496821 () List!27936)

(assert (=> b!2338148 (= e!1496821 (Cons!27838 (c!371635 (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))) Nil!27838))))

(declare-fun b!2338149 () Bool)

(assert (=> b!2338149 (= c!371765 ((_ is Star!6861) (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(assert (=> b!2338149 (= e!1496821 e!1496823)))

(declare-fun b!2338150 () Bool)

(assert (=> b!2338150 (= e!1496822 e!1496821)))

(declare-fun c!371768 () Bool)

(assert (=> b!2338150 (= c!371768 ((_ is ElementMatch!6861) (ite c!371713 (reg!7190 (regOne!14235 r!26197)) (ite c!371715 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197))))))))

(assert (= (and d!690812 c!371766) b!2338146))

(assert (= (and d!690812 (not c!371766)) b!2338150))

(assert (= (and b!2338150 c!371768) b!2338148))

(assert (= (and b!2338150 (not c!371768)) b!2338149))

(assert (= (and b!2338149 c!371765) b!2338145))

(assert (= (and b!2338149 (not c!371765)) b!2338147))

(assert (= (and b!2338147 c!371767) b!2338144))

(assert (= (and b!2338147 (not c!371767)) b!2338143))

(assert (= (or b!2338144 b!2338143) bm!140485))

(assert (= (or b!2338144 b!2338143) bm!140482))

(assert (= (or b!2338144 b!2338143) bm!140484))

(assert (= (or b!2338145 bm!140485) bm!140483))

(declare-fun m!2763573 () Bool)

(assert (=> bm!140482 m!2763573))

(declare-fun m!2763575 () Bool)

(assert (=> bm!140483 m!2763575))

(declare-fun m!2763577 () Bool)

(assert (=> bm!140484 m!2763577))

(assert (=> bm!140429 d!690812))

(declare-fun b!2338151 () Bool)

(declare-fun e!1496824 () List!27936)

(declare-fun call!140494 () List!27936)

(assert (=> b!2338151 (= e!1496824 call!140494)))

(declare-fun b!2338152 () Bool)

(assert (=> b!2338152 (= e!1496824 call!140494)))

(declare-fun b!2338153 () Bool)

(declare-fun e!1496827 () List!27936)

(declare-fun call!140493 () List!27936)

(assert (=> b!2338153 (= e!1496827 call!140493)))

(declare-fun b!2338154 () Bool)

(declare-fun e!1496826 () List!27936)

(assert (=> b!2338154 (= e!1496826 Nil!27838)))

(declare-fun d!690814 () Bool)

(declare-fun c!371770 () Bool)

(assert (=> d!690814 (= c!371770 (or ((_ is EmptyExpr!6861) (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) ((_ is EmptyLang!6861) (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))))))

(assert (=> d!690814 (= (usedCharacters!436 (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) e!1496826)))

(declare-fun b!2338155 () Bool)

(assert (=> b!2338155 (= e!1496827 e!1496824)))

(declare-fun c!371771 () Bool)

(assert (=> b!2338155 (= c!371771 ((_ is Union!6861) (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(declare-fun call!140491 () List!27936)

(declare-fun bm!140486 () Bool)

(assert (=> bm!140486 (= call!140491 (usedCharacters!436 (ite c!371771 (regOne!14235 (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) (regOne!14234 (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))))

(declare-fun c!371769 () Bool)

(declare-fun bm!140487 () Bool)

(assert (=> bm!140487 (= call!140493 (usedCharacters!436 (ite c!371769 (reg!7190 (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) (ite c!371771 (regTwo!14235 (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) (regTwo!14234 (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))))))))

(declare-fun bm!140488 () Bool)

(declare-fun call!140492 () List!27936)

(assert (=> bm!140488 (= call!140494 (++!6862 call!140491 call!140492))))

(declare-fun bm!140489 () Bool)

(assert (=> bm!140489 (= call!140492 call!140493)))

(declare-fun b!2338156 () Bool)

(declare-fun e!1496825 () List!27936)

(assert (=> b!2338156 (= e!1496825 (Cons!27838 (c!371635 (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) Nil!27838))))

(declare-fun b!2338157 () Bool)

(assert (=> b!2338157 (= c!371769 ((_ is Star!6861) (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(assert (=> b!2338157 (= e!1496825 e!1496827)))

(declare-fun b!2338158 () Bool)

(assert (=> b!2338158 (= e!1496826 e!1496825)))

(declare-fun c!371772 () Bool)

(assert (=> b!2338158 (= c!371772 ((_ is ElementMatch!6861) (ite c!371715 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(assert (= (and d!690814 c!371770) b!2338154))

(assert (= (and d!690814 (not c!371770)) b!2338158))

(assert (= (and b!2338158 c!371772) b!2338156))

(assert (= (and b!2338158 (not c!371772)) b!2338157))

(assert (= (and b!2338157 c!371769) b!2338153))

(assert (= (and b!2338157 (not c!371769)) b!2338155))

(assert (= (and b!2338155 c!371771) b!2338152))

(assert (= (and b!2338155 (not c!371771)) b!2338151))

(assert (= (or b!2338152 b!2338151) bm!140489))

(assert (= (or b!2338152 b!2338151) bm!140486))

(assert (= (or b!2338152 b!2338151) bm!140488))

(assert (= (or b!2338153 bm!140489) bm!140487))

(declare-fun m!2763579 () Bool)

(assert (=> bm!140486 m!2763579))

(declare-fun m!2763581 () Bool)

(assert (=> bm!140487 m!2763581))

(declare-fun m!2763583 () Bool)

(assert (=> bm!140488 m!2763583))

(assert (=> bm!140428 d!690814))

(declare-fun b!2338159 () Bool)

(declare-fun e!1496832 () Bool)

(declare-fun e!1496833 () Bool)

(assert (=> b!2338159 (= e!1496832 e!1496833)))

(declare-fun res!996850 () Bool)

(assert (=> b!2338159 (=> (not res!996850) (not e!1496833))))

(declare-fun call!140497 () Bool)

(assert (=> b!2338159 (= res!996850 call!140497)))

(declare-fun b!2338160 () Bool)

(declare-fun e!1496828 () Bool)

(declare-fun e!1496829 () Bool)

(assert (=> b!2338160 (= e!1496828 e!1496829)))

(declare-fun res!996852 () Bool)

(assert (=> b!2338160 (= res!996852 (not (nullable!1940 (reg!7190 (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))))

(assert (=> b!2338160 (=> (not res!996852) (not e!1496829))))

(declare-fun b!2338161 () Bool)

(declare-fun e!1496831 () Bool)

(assert (=> b!2338161 (= e!1496831 e!1496828)))

(declare-fun c!371773 () Bool)

(assert (=> b!2338161 (= c!371773 ((_ is Star!6861) (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))

(declare-fun call!140495 () Bool)

(declare-fun bm!140490 () Bool)

(declare-fun c!371774 () Bool)

(assert (=> bm!140490 (= call!140495 (validRegex!2606 (ite c!371773 (reg!7190 (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) (ite c!371774 (regTwo!14235 (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) (regTwo!14234 (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197))))))))))

(declare-fun b!2338162 () Bool)

(declare-fun call!140496 () Bool)

(assert (=> b!2338162 (= e!1496833 call!140496)))

(declare-fun d!690816 () Bool)

(declare-fun res!996854 () Bool)

(assert (=> d!690816 (=> res!996854 e!1496831)))

(assert (=> d!690816 (= res!996854 ((_ is ElementMatch!6861) (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))

(assert (=> d!690816 (= (validRegex!2606 (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) e!1496831)))

(declare-fun b!2338163 () Bool)

(assert (=> b!2338163 (= e!1496829 call!140495)))

(declare-fun b!2338164 () Bool)

(declare-fun res!996851 () Bool)

(assert (=> b!2338164 (=> res!996851 e!1496832)))

(assert (=> b!2338164 (= res!996851 (not ((_ is Concat!11483) (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197))))))))

(declare-fun e!1496834 () Bool)

(assert (=> b!2338164 (= e!1496834 e!1496832)))

(declare-fun bm!140491 () Bool)

(assert (=> bm!140491 (= call!140497 (validRegex!2606 (ite c!371774 (regOne!14235 (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))) (regOne!14234 (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))))

(declare-fun b!2338165 () Bool)

(declare-fun e!1496830 () Bool)

(assert (=> b!2338165 (= e!1496830 call!140496)))

(declare-fun b!2338166 () Bool)

(declare-fun res!996853 () Bool)

(assert (=> b!2338166 (=> (not res!996853) (not e!1496830))))

(assert (=> b!2338166 (= res!996853 call!140497)))

(assert (=> b!2338166 (= e!1496834 e!1496830)))

(declare-fun bm!140492 () Bool)

(assert (=> bm!140492 (= call!140496 call!140495)))

(declare-fun b!2338167 () Bool)

(assert (=> b!2338167 (= e!1496828 e!1496834)))

(assert (=> b!2338167 (= c!371774 ((_ is Union!6861) (ite c!371683 (reg!7190 r!26197) (ite c!371684 (regTwo!14235 r!26197) (regTwo!14234 r!26197)))))))

(assert (= (and d!690816 (not res!996854)) b!2338161))

(assert (= (and b!2338161 c!371773) b!2338160))

(assert (= (and b!2338161 (not c!371773)) b!2338167))

(assert (= (and b!2338160 res!996852) b!2338163))

(assert (= (and b!2338167 c!371774) b!2338166))

(assert (= (and b!2338167 (not c!371774)) b!2338164))

(assert (= (and b!2338166 res!996853) b!2338165))

(assert (= (and b!2338164 (not res!996851)) b!2338159))

(assert (= (and b!2338159 res!996850) b!2338162))

(assert (= (or b!2338165 b!2338162) bm!140492))

(assert (= (or b!2338166 b!2338159) bm!140491))

(assert (= (or b!2338163 bm!140492) bm!140490))

(declare-fun m!2763585 () Bool)

(assert (=> b!2338160 m!2763585))

(declare-fun m!2763587 () Bool)

(assert (=> bm!140490 m!2763587))

(declare-fun m!2763589 () Bool)

(assert (=> bm!140491 m!2763589))

(assert (=> bm!140401 d!690816))

(declare-fun b!2338168 () Bool)

(declare-fun e!1496835 () Bool)

(declare-fun call!140498 () Bool)

(assert (=> b!2338168 (= e!1496835 call!140498)))

(declare-fun b!2338169 () Bool)

(declare-fun e!1496837 () Bool)

(declare-fun e!1496839 () Bool)

(assert (=> b!2338169 (= e!1496837 e!1496839)))

(declare-fun res!996859 () Bool)

(assert (=> b!2338169 (=> res!996859 e!1496839)))

(assert (=> b!2338169 (= res!996859 ((_ is Star!6861) (regOne!14235 r!26197)))))

(declare-fun d!690818 () Bool)

(declare-fun res!996858 () Bool)

(declare-fun e!1496840 () Bool)

(assert (=> d!690818 (=> res!996858 e!1496840)))

(assert (=> d!690818 (= res!996858 ((_ is EmptyExpr!6861) (regOne!14235 r!26197)))))

(assert (=> d!690818 (= (nullableFct!494 (regOne!14235 r!26197)) e!1496840)))

(declare-fun bm!140493 () Bool)

(declare-fun call!140499 () Bool)

(declare-fun c!371775 () Bool)

(assert (=> bm!140493 (= call!140499 (nullable!1940 (ite c!371775 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(declare-fun b!2338170 () Bool)

(declare-fun e!1496838 () Bool)

(assert (=> b!2338170 (= e!1496838 e!1496835)))

(declare-fun res!996857 () Bool)

(assert (=> b!2338170 (= res!996857 call!140499)))

(assert (=> b!2338170 (=> res!996857 e!1496835)))

(declare-fun bm!140494 () Bool)

(assert (=> bm!140494 (= call!140498 (nullable!1940 (ite c!371775 (regTwo!14235 (regOne!14235 r!26197)) (regTwo!14234 (regOne!14235 r!26197)))))))

(declare-fun b!2338171 () Bool)

(assert (=> b!2338171 (= e!1496840 e!1496837)))

(declare-fun res!996855 () Bool)

(assert (=> b!2338171 (=> (not res!996855) (not e!1496837))))

(assert (=> b!2338171 (= res!996855 (and (not ((_ is EmptyLang!6861) (regOne!14235 r!26197))) (not ((_ is ElementMatch!6861) (regOne!14235 r!26197)))))))

(declare-fun b!2338172 () Bool)

(declare-fun e!1496836 () Bool)

(assert (=> b!2338172 (= e!1496838 e!1496836)))

(declare-fun res!996856 () Bool)

(assert (=> b!2338172 (= res!996856 call!140499)))

(assert (=> b!2338172 (=> (not res!996856) (not e!1496836))))

(declare-fun b!2338173 () Bool)

(assert (=> b!2338173 (= e!1496839 e!1496838)))

(assert (=> b!2338173 (= c!371775 ((_ is Union!6861) (regOne!14235 r!26197)))))

(declare-fun b!2338174 () Bool)

(assert (=> b!2338174 (= e!1496836 call!140498)))

(assert (= (and d!690818 (not res!996858)) b!2338171))

(assert (= (and b!2338171 res!996855) b!2338169))

(assert (= (and b!2338169 (not res!996859)) b!2338173))

(assert (= (and b!2338173 c!371775) b!2338170))

(assert (= (and b!2338173 (not c!371775)) b!2338172))

(assert (= (and b!2338170 (not res!996857)) b!2338168))

(assert (= (and b!2338172 res!996856) b!2338174))

(assert (= (or b!2338170 b!2338172) bm!140493))

(assert (= (or b!2338168 b!2338174) bm!140494))

(declare-fun m!2763591 () Bool)

(assert (=> bm!140493 m!2763591))

(declare-fun m!2763593 () Bool)

(assert (=> bm!140494 m!2763593))

(assert (=> d!690734 d!690818))

(declare-fun d!690820 () Bool)

(declare-fun c!371778 () Bool)

(assert (=> d!690820 (= c!371778 ((_ is Nil!27838) (usedCharacters!436 r!26197)))))

(declare-fun e!1496843 () (InoxSet C!13880))

(assert (=> d!690820 (= (content!3771 (usedCharacters!436 r!26197)) e!1496843)))

(declare-fun b!2338179 () Bool)

(assert (=> b!2338179 (= e!1496843 ((as const (Array C!13880 Bool)) false))))

(declare-fun b!2338180 () Bool)

(assert (=> b!2338180 (= e!1496843 ((_ map or) (store ((as const (Array C!13880 Bool)) false) (h!33239 (usedCharacters!436 r!26197)) true) (content!3771 (t!207795 (usedCharacters!436 r!26197)))))))

(assert (= (and d!690820 c!371778) b!2338179))

(assert (= (and d!690820 (not c!371778)) b!2338180))

(declare-fun m!2763595 () Bool)

(assert (=> b!2338180 m!2763595))

(assert (=> b!2338180 m!2763557))

(assert (=> d!690756 d!690820))

(declare-fun d!690822 () Bool)

(assert (=> d!690822 (= (nullable!1940 (regOne!14234 (regOne!14235 r!26197))) (nullableFct!494 (regOne!14234 (regOne!14235 r!26197))))))

(declare-fun bs!459975 () Bool)

(assert (= bs!459975 d!690822))

(declare-fun m!2763597 () Bool)

(assert (=> bs!459975 m!2763597))

(assert (=> b!2337794 d!690822))

(declare-fun d!690824 () Bool)

(declare-fun c!371779 () Bool)

(assert (=> d!690824 (= c!371779 ((_ is Nil!27838) (usedCharacters!436 (regOne!14235 r!26197))))))

(declare-fun e!1496844 () (InoxSet C!13880))

(assert (=> d!690824 (= (content!3771 (usedCharacters!436 (regOne!14235 r!26197))) e!1496844)))

(declare-fun b!2338181 () Bool)

(assert (=> b!2338181 (= e!1496844 ((as const (Array C!13880 Bool)) false))))

(declare-fun b!2338182 () Bool)

(assert (=> b!2338182 (= e!1496844 ((_ map or) (store ((as const (Array C!13880 Bool)) false) (h!33239 (usedCharacters!436 (regOne!14235 r!26197))) true) (content!3771 (t!207795 (usedCharacters!436 (regOne!14235 r!26197))))))))

(assert (= (and d!690824 c!371779) b!2338181))

(assert (= (and d!690824 (not c!371779)) b!2338182))

(declare-fun m!2763599 () Bool)

(assert (=> b!2338182 m!2763599))

(assert (=> b!2338182 m!2763501))

(assert (=> d!690774 d!690824))

(declare-fun d!690826 () Bool)

(assert (=> d!690826 (= (nullable!1940 (reg!7190 r!26197)) (nullableFct!494 (reg!7190 r!26197)))))

(declare-fun bs!459976 () Bool)

(assert (= bs!459976 d!690826))

(declare-fun m!2763601 () Bool)

(assert (=> bs!459976 m!2763601))

(assert (=> b!2337847 d!690826))

(assert (=> d!690770 d!690774))

(assert (=> d!690770 d!690758))

(declare-fun d!690828 () Bool)

(assert (=> d!690828 (contains!4817 (usedCharacters!436 (regOne!14235 r!26197)) c!13498)))

(assert (=> d!690828 true))

(declare-fun _$131!53 () Unit!40710)

(assert (=> d!690828 (= (choose!13636 (regOne!14235 r!26197) c!13498) _$131!53)))

(declare-fun bs!459977 () Bool)

(assert (= bs!459977 d!690828))

(assert (=> bs!459977 m!2763309))

(assert (=> bs!459977 m!2763309))

(assert (=> bs!459977 m!2763311))

(assert (=> d!690770 d!690828))

(assert (=> d!690770 d!690776))

(declare-fun b!2338183 () Bool)

(declare-fun e!1496849 () Bool)

(declare-fun e!1496850 () Bool)

(assert (=> b!2338183 (= e!1496849 e!1496850)))

(declare-fun res!996860 () Bool)

(assert (=> b!2338183 (=> (not res!996860) (not e!1496850))))

(declare-fun call!140502 () Bool)

(assert (=> b!2338183 (= res!996860 call!140502)))

(declare-fun b!2338184 () Bool)

(declare-fun e!1496845 () Bool)

(declare-fun e!1496846 () Bool)

(assert (=> b!2338184 (= e!1496845 e!1496846)))

(declare-fun res!996862 () Bool)

(assert (=> b!2338184 (= res!996862 (not (nullable!1940 (reg!7190 (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))))

(assert (=> b!2338184 (=> (not res!996862) (not e!1496846))))

(declare-fun b!2338185 () Bool)

(declare-fun e!1496848 () Bool)

(assert (=> b!2338185 (= e!1496848 e!1496845)))

(declare-fun c!371781 () Bool)

(assert (=> b!2338185 (= c!371781 ((_ is Star!6861) (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(declare-fun bm!140495 () Bool)

(declare-fun c!371782 () Bool)

(declare-fun call!140500 () Bool)

(assert (=> bm!140495 (= call!140500 (validRegex!2606 (ite c!371781 (reg!7190 (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) (ite c!371782 (regTwo!14235 (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) (regTwo!14234 (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))))))))

(declare-fun b!2338186 () Bool)

(declare-fun call!140501 () Bool)

(assert (=> b!2338186 (= e!1496850 call!140501)))

(declare-fun d!690830 () Bool)

(declare-fun res!996864 () Bool)

(assert (=> d!690830 (=> res!996864 e!1496848)))

(assert (=> d!690830 (= res!996864 ((_ is ElementMatch!6861) (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(assert (=> d!690830 (= (validRegex!2606 (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) e!1496848)))

(declare-fun b!2338187 () Bool)

(assert (=> b!2338187 (= e!1496846 call!140500)))

(declare-fun b!2338188 () Bool)

(declare-fun res!996861 () Bool)

(assert (=> b!2338188 (=> res!996861 e!1496849)))

(assert (=> b!2338188 (= res!996861 (not ((_ is Concat!11483) (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197))))))))

(declare-fun e!1496851 () Bool)

(assert (=> b!2338188 (= e!1496851 e!1496849)))

(declare-fun bm!140496 () Bool)

(assert (=> bm!140496 (= call!140502 (validRegex!2606 (ite c!371782 (regOne!14235 (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))) (regOne!14234 (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))))

(declare-fun b!2338189 () Bool)

(declare-fun e!1496847 () Bool)

(assert (=> b!2338189 (= e!1496847 call!140501)))

(declare-fun b!2338190 () Bool)

(declare-fun res!996863 () Bool)

(assert (=> b!2338190 (=> (not res!996863) (not e!1496847))))

(assert (=> b!2338190 (= res!996863 call!140502)))

(assert (=> b!2338190 (= e!1496851 e!1496847)))

(declare-fun bm!140497 () Bool)

(assert (=> bm!140497 (= call!140501 call!140500)))

(declare-fun b!2338191 () Bool)

(assert (=> b!2338191 (= e!1496845 e!1496851)))

(assert (=> b!2338191 (= c!371782 ((_ is Union!6861) (ite c!371725 (regOne!14235 (regOne!14235 r!26197)) (regOne!14234 (regOne!14235 r!26197)))))))

(assert (= (and d!690830 (not res!996864)) b!2338185))

(assert (= (and b!2338185 c!371781) b!2338184))

(assert (= (and b!2338185 (not c!371781)) b!2338191))

(assert (= (and b!2338184 res!996862) b!2338187))

(assert (= (and b!2338191 c!371782) b!2338190))

(assert (= (and b!2338191 (not c!371782)) b!2338188))

(assert (= (and b!2338190 res!996863) b!2338189))

(assert (= (and b!2338188 (not res!996861)) b!2338183))

(assert (= (and b!2338183 res!996860) b!2338186))

(assert (= (or b!2338189 b!2338186) bm!140497))

(assert (= (or b!2338190 b!2338183) bm!140496))

(assert (= (or b!2338187 bm!140497) bm!140495))

(declare-fun m!2763603 () Bool)

(assert (=> b!2338184 m!2763603))

(declare-fun m!2763605 () Bool)

(assert (=> bm!140495 m!2763605))

(declare-fun m!2763607 () Bool)

(assert (=> bm!140496 m!2763607))

(assert (=> bm!140440 d!690830))

(declare-fun b!2338192 () Bool)

(declare-fun e!1496852 () Bool)

(declare-fun call!140503 () Bool)

(assert (=> b!2338192 (= e!1496852 call!140503)))

(declare-fun b!2338193 () Bool)

(declare-fun e!1496854 () Bool)

(declare-fun e!1496856 () Bool)

(assert (=> b!2338193 (= e!1496854 e!1496856)))

(declare-fun res!996869 () Bool)

(assert (=> b!2338193 (=> res!996869 e!1496856)))

(assert (=> b!2338193 (= res!996869 ((_ is Star!6861) r!26197))))

(declare-fun d!690832 () Bool)

(declare-fun res!996868 () Bool)

(declare-fun e!1496857 () Bool)

(assert (=> d!690832 (=> res!996868 e!1496857)))

(assert (=> d!690832 (= res!996868 ((_ is EmptyExpr!6861) r!26197))))

(assert (=> d!690832 (= (nullableFct!494 r!26197) e!1496857)))

(declare-fun bm!140498 () Bool)

(declare-fun call!140504 () Bool)

(declare-fun c!371783 () Bool)

(assert (=> bm!140498 (= call!140504 (nullable!1940 (ite c!371783 (regOne!14235 r!26197) (regOne!14234 r!26197))))))

(declare-fun b!2338194 () Bool)

(declare-fun e!1496855 () Bool)

(assert (=> b!2338194 (= e!1496855 e!1496852)))

(declare-fun res!996867 () Bool)

(assert (=> b!2338194 (= res!996867 call!140504)))

(assert (=> b!2338194 (=> res!996867 e!1496852)))

(declare-fun bm!140499 () Bool)

(assert (=> bm!140499 (= call!140503 (nullable!1940 (ite c!371783 (regTwo!14235 r!26197) (regTwo!14234 r!26197))))))

(declare-fun b!2338195 () Bool)

(assert (=> b!2338195 (= e!1496857 e!1496854)))

(declare-fun res!996865 () Bool)

(assert (=> b!2338195 (=> (not res!996865) (not e!1496854))))

(assert (=> b!2338195 (= res!996865 (and (not ((_ is EmptyLang!6861) r!26197)) (not ((_ is ElementMatch!6861) r!26197))))))

(declare-fun b!2338196 () Bool)

(declare-fun e!1496853 () Bool)

(assert (=> b!2338196 (= e!1496855 e!1496853)))

(declare-fun res!996866 () Bool)

(assert (=> b!2338196 (= res!996866 call!140504)))

(assert (=> b!2338196 (=> (not res!996866) (not e!1496853))))

(declare-fun b!2338197 () Bool)

(assert (=> b!2338197 (= e!1496856 e!1496855)))

(assert (=> b!2338197 (= c!371783 ((_ is Union!6861) r!26197))))

(declare-fun b!2338198 () Bool)

(assert (=> b!2338198 (= e!1496853 call!140503)))

(assert (= (and d!690832 (not res!996868)) b!2338195))

(assert (= (and b!2338195 res!996865) b!2338193))

(assert (= (and b!2338193 (not res!996869)) b!2338197))

(assert (= (and b!2338197 c!371783) b!2338194))

(assert (= (and b!2338197 (not c!371783)) b!2338196))

(assert (= (and b!2338194 (not res!996867)) b!2338192))

(assert (= (and b!2338196 res!996866) b!2338198))

(assert (= (or b!2338194 b!2338196) bm!140498))

(assert (= (or b!2338192 b!2338198) bm!140499))

(declare-fun m!2763609 () Bool)

(assert (=> bm!140498 m!2763609))

(declare-fun m!2763611 () Bool)

(assert (=> bm!140499 m!2763611))

(assert (=> d!690754 d!690832))

(declare-fun b!2338199 () Bool)

(declare-fun e!1496858 () Bool)

(declare-fun call!140505 () Bool)

(assert (=> b!2338199 (= e!1496858 call!140505)))

(declare-fun b!2338200 () Bool)

(declare-fun e!1496860 () Bool)

(declare-fun e!1496862 () Bool)

(assert (=> b!2338200 (= e!1496860 e!1496862)))

(declare-fun res!996874 () Bool)

(assert (=> b!2338200 (=> res!996874 e!1496862)))

(assert (=> b!2338200 (= res!996874 ((_ is Star!6861) (regTwo!14235 r!26197)))))

(declare-fun d!690834 () Bool)

(declare-fun res!996873 () Bool)

(declare-fun e!1496863 () Bool)

(assert (=> d!690834 (=> res!996873 e!1496863)))

(assert (=> d!690834 (= res!996873 ((_ is EmptyExpr!6861) (regTwo!14235 r!26197)))))

(assert (=> d!690834 (= (nullableFct!494 (regTwo!14235 r!26197)) e!1496863)))

(declare-fun bm!140500 () Bool)

(declare-fun call!140506 () Bool)

(declare-fun c!371784 () Bool)

(assert (=> bm!140500 (= call!140506 (nullable!1940 (ite c!371784 (regOne!14235 (regTwo!14235 r!26197)) (regOne!14234 (regTwo!14235 r!26197)))))))

(declare-fun b!2338201 () Bool)

(declare-fun e!1496861 () Bool)

(assert (=> b!2338201 (= e!1496861 e!1496858)))

(declare-fun res!996872 () Bool)

(assert (=> b!2338201 (= res!996872 call!140506)))

(assert (=> b!2338201 (=> res!996872 e!1496858)))

(declare-fun bm!140501 () Bool)

(assert (=> bm!140501 (= call!140505 (nullable!1940 (ite c!371784 (regTwo!14235 (regTwo!14235 r!26197)) (regTwo!14234 (regTwo!14235 r!26197)))))))

(declare-fun b!2338202 () Bool)

(assert (=> b!2338202 (= e!1496863 e!1496860)))

(declare-fun res!996870 () Bool)

(assert (=> b!2338202 (=> (not res!996870) (not e!1496860))))

(assert (=> b!2338202 (= res!996870 (and (not ((_ is EmptyLang!6861) (regTwo!14235 r!26197))) (not ((_ is ElementMatch!6861) (regTwo!14235 r!26197)))))))

(declare-fun b!2338203 () Bool)

(declare-fun e!1496859 () Bool)

(assert (=> b!2338203 (= e!1496861 e!1496859)))

(declare-fun res!996871 () Bool)

(assert (=> b!2338203 (= res!996871 call!140506)))

(assert (=> b!2338203 (=> (not res!996871) (not e!1496859))))

(declare-fun b!2338204 () Bool)

(assert (=> b!2338204 (= e!1496862 e!1496861)))

(assert (=> b!2338204 (= c!371784 ((_ is Union!6861) (regTwo!14235 r!26197)))))

(declare-fun b!2338205 () Bool)

(assert (=> b!2338205 (= e!1496859 call!140505)))

(assert (= (and d!690834 (not res!996873)) b!2338202))

(assert (= (and b!2338202 res!996870) b!2338200))

(assert (= (and b!2338200 (not res!996874)) b!2338204))

(assert (= (and b!2338204 c!371784) b!2338201))

(assert (= (and b!2338204 (not c!371784)) b!2338203))

(assert (= (and b!2338201 (not res!996872)) b!2338199))

(assert (= (and b!2338203 res!996871) b!2338205))

(assert (= (or b!2338201 b!2338203) bm!140500))

(assert (= (or b!2338199 b!2338205) bm!140501))

(declare-fun m!2763613 () Bool)

(assert (=> bm!140500 m!2763613))

(declare-fun m!2763615 () Bool)

(assert (=> bm!140501 m!2763615))

(assert (=> d!690732 d!690834))

(declare-fun bm!140502 () Bool)

(declare-fun call!140507 () Regex!6861)

(declare-fun call!140510 () Regex!6861)

(assert (=> bm!140502 (= call!140507 call!140510)))

(declare-fun d!690836 () Bool)

(declare-fun lt!862585 () Regex!6861)

(assert (=> d!690836 (validRegex!2606 lt!862585)))

(declare-fun e!1496867 () Regex!6861)

(assert (=> d!690836 (= lt!862585 e!1496867)))

(declare-fun c!371786 () Bool)

(assert (=> d!690836 (= c!371786 (or ((_ is EmptyExpr!6861) (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197)))) ((_ is EmptyLang!6861) (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197))))))))

(assert (=> d!690836 (validRegex!2606 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197))))))

(assert (=> d!690836 (= (derivativeStep!1600 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197))) c!13498) lt!862585)))

(declare-fun b!2338206 () Bool)

(declare-fun e!1496866 () Regex!6861)

(assert (=> b!2338206 (= e!1496866 (Union!6861 (Concat!11483 call!140507 (regTwo!14234 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197))))) EmptyLang!6861))))

(declare-fun b!2338207 () Bool)

(assert (=> b!2338207 (= e!1496867 EmptyLang!6861)))

(declare-fun e!1496864 () Regex!6861)

(declare-fun b!2338208 () Bool)

(assert (=> b!2338208 (= e!1496864 (Concat!11483 call!140510 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197)))))))

(declare-fun bm!140503 () Bool)

(declare-fun call!140509 () Regex!6861)

(assert (=> bm!140503 (= call!140510 call!140509)))

(declare-fun b!2338209 () Bool)

(declare-fun e!1496868 () Regex!6861)

(declare-fun call!140508 () Regex!6861)

(assert (=> b!2338209 (= e!1496868 (Union!6861 call!140508 call!140509))))

(declare-fun c!371788 () Bool)

(declare-fun b!2338210 () Bool)

(assert (=> b!2338210 (= c!371788 (nullable!1940 (regOne!14234 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197))))))))

(assert (=> b!2338210 (= e!1496864 e!1496866)))

(declare-fun b!2338211 () Bool)

(assert (=> b!2338211 (= e!1496868 e!1496864)))

(declare-fun c!371789 () Bool)

(assert (=> b!2338211 (= c!371789 ((_ is Star!6861) (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197)))))))

(declare-fun b!2338212 () Bool)

(assert (=> b!2338212 (= e!1496866 (Union!6861 (Concat!11483 call!140507 (regTwo!14234 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197))))) call!140508))))

(declare-fun b!2338213 () Bool)

(declare-fun c!371787 () Bool)

(assert (=> b!2338213 (= c!371787 ((_ is Union!6861) (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197)))))))

(declare-fun e!1496865 () Regex!6861)

(assert (=> b!2338213 (= e!1496865 e!1496868)))

(declare-fun bm!140504 () Bool)

(assert (=> bm!140504 (= call!140508 (derivativeStep!1600 (ite c!371787 (regOne!14235 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197)))) (regTwo!14234 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197))))) c!13498))))

(declare-fun bm!140505 () Bool)

(assert (=> bm!140505 (= call!140509 (derivativeStep!1600 (ite c!371787 (regTwo!14235 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197)))) (ite c!371789 (reg!7190 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197)))) (regOne!14234 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197)))))) c!13498))))

(declare-fun b!2338214 () Bool)

(assert (=> b!2338214 (= e!1496865 (ite (= c!13498 (c!371635 (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197))))) EmptyExpr!6861 EmptyLang!6861))))

(declare-fun b!2338215 () Bool)

(assert (=> b!2338215 (= e!1496867 e!1496865)))

(declare-fun c!371785 () Bool)

(assert (=> b!2338215 (= c!371785 ((_ is ElementMatch!6861) (ite c!371667 (regTwo!14235 r!26197) (ite c!371669 (reg!7190 r!26197) (regOne!14234 r!26197)))))))

(assert (= (and d!690836 c!371786) b!2338207))

(assert (= (and d!690836 (not c!371786)) b!2338215))

(assert (= (and b!2338215 c!371785) b!2338214))

(assert (= (and b!2338215 (not c!371785)) b!2338213))

(assert (= (and b!2338213 c!371787) b!2338209))

(assert (= (and b!2338213 (not c!371787)) b!2338211))

(assert (= (and b!2338211 c!371789) b!2338208))

(assert (= (and b!2338211 (not c!371789)) b!2338210))

(assert (= (and b!2338210 c!371788) b!2338212))

(assert (= (and b!2338210 (not c!371788)) b!2338206))

(assert (= (or b!2338212 b!2338206) bm!140502))

(assert (= (or b!2338208 bm!140502) bm!140503))

(assert (= (or b!2338209 bm!140503) bm!140505))

(assert (= (or b!2338209 b!2338212) bm!140504))

(declare-fun m!2763617 () Bool)

(assert (=> d!690836 m!2763617))

(declare-fun m!2763619 () Bool)

(assert (=> d!690836 m!2763619))

(declare-fun m!2763621 () Bool)

(assert (=> b!2338210 m!2763621))

(declare-fun m!2763623 () Bool)

(assert (=> bm!140504 m!2763623))

(declare-fun m!2763625 () Bool)

(assert (=> bm!140505 m!2763625))

(assert (=> bm!140386 d!690836))

(declare-fun b!2338218 () Bool)

(declare-fun e!1496869 () Bool)

(declare-fun tp!741815 () Bool)

(assert (=> b!2338218 (= e!1496869 tp!741815)))

(assert (=> b!2337996 (= tp!741791 e!1496869)))

(declare-fun b!2338219 () Bool)

(declare-fun tp!741816 () Bool)

(declare-fun tp!741812 () Bool)

(assert (=> b!2338219 (= e!1496869 (and tp!741816 tp!741812))))

(declare-fun b!2338217 () Bool)

(declare-fun tp!741814 () Bool)

(declare-fun tp!741813 () Bool)

(assert (=> b!2338217 (= e!1496869 (and tp!741814 tp!741813))))

(declare-fun b!2338216 () Bool)

(assert (=> b!2338216 (= e!1496869 tp_is_empty!11033)))

(assert (= (and b!2337996 ((_ is ElementMatch!6861) (regOne!14235 (regOne!14234 r!26197)))) b!2338216))

(assert (= (and b!2337996 ((_ is Concat!11483) (regOne!14235 (regOne!14234 r!26197)))) b!2338217))

(assert (= (and b!2337996 ((_ is Star!6861) (regOne!14235 (regOne!14234 r!26197)))) b!2338218))

(assert (= (and b!2337996 ((_ is Union!6861) (regOne!14235 (regOne!14234 r!26197)))) b!2338219))

(declare-fun b!2338222 () Bool)

(declare-fun e!1496870 () Bool)

(declare-fun tp!741820 () Bool)

(assert (=> b!2338222 (= e!1496870 tp!741820)))

(assert (=> b!2337996 (= tp!741787 e!1496870)))

(declare-fun b!2338223 () Bool)

(declare-fun tp!741821 () Bool)

(declare-fun tp!741817 () Bool)

(assert (=> b!2338223 (= e!1496870 (and tp!741821 tp!741817))))

(declare-fun b!2338221 () Bool)

(declare-fun tp!741819 () Bool)

(declare-fun tp!741818 () Bool)

(assert (=> b!2338221 (= e!1496870 (and tp!741819 tp!741818))))

(declare-fun b!2338220 () Bool)

(assert (=> b!2338220 (= e!1496870 tp_is_empty!11033)))

(assert (= (and b!2337996 ((_ is ElementMatch!6861) (regTwo!14235 (regOne!14234 r!26197)))) b!2338220))

(assert (= (and b!2337996 ((_ is Concat!11483) (regTwo!14235 (regOne!14234 r!26197)))) b!2338221))

(assert (= (and b!2337996 ((_ is Star!6861) (regTwo!14235 (regOne!14234 r!26197)))) b!2338222))

(assert (= (and b!2337996 ((_ is Union!6861) (regTwo!14235 (regOne!14234 r!26197)))) b!2338223))

(declare-fun b!2338226 () Bool)

(declare-fun e!1496871 () Bool)

(declare-fun tp!741825 () Bool)

(assert (=> b!2338226 (= e!1496871 tp!741825)))

(assert (=> b!2337995 (= tp!741790 e!1496871)))

(declare-fun b!2338227 () Bool)

(declare-fun tp!741826 () Bool)

(declare-fun tp!741822 () Bool)

(assert (=> b!2338227 (= e!1496871 (and tp!741826 tp!741822))))

(declare-fun b!2338225 () Bool)

(declare-fun tp!741824 () Bool)

(declare-fun tp!741823 () Bool)

(assert (=> b!2338225 (= e!1496871 (and tp!741824 tp!741823))))

(declare-fun b!2338224 () Bool)

(assert (=> b!2338224 (= e!1496871 tp_is_empty!11033)))

(assert (= (and b!2337995 ((_ is ElementMatch!6861) (reg!7190 (regOne!14234 r!26197)))) b!2338224))

(assert (= (and b!2337995 ((_ is Concat!11483) (reg!7190 (regOne!14234 r!26197)))) b!2338225))

(assert (= (and b!2337995 ((_ is Star!6861) (reg!7190 (regOne!14234 r!26197)))) b!2338226))

(assert (= (and b!2337995 ((_ is Union!6861) (reg!7190 (regOne!14234 r!26197)))) b!2338227))

(declare-fun b!2338230 () Bool)

(declare-fun e!1496872 () Bool)

(declare-fun tp!741830 () Bool)

(assert (=> b!2338230 (= e!1496872 tp!741830)))

(assert (=> b!2338000 (= tp!741796 e!1496872)))

(declare-fun b!2338231 () Bool)

(declare-fun tp!741831 () Bool)

(declare-fun tp!741827 () Bool)

(assert (=> b!2338231 (= e!1496872 (and tp!741831 tp!741827))))

(declare-fun b!2338229 () Bool)

(declare-fun tp!741829 () Bool)

(declare-fun tp!741828 () Bool)

(assert (=> b!2338229 (= e!1496872 (and tp!741829 tp!741828))))

(declare-fun b!2338228 () Bool)

(assert (=> b!2338228 (= e!1496872 tp_is_empty!11033)))

(assert (= (and b!2338000 ((_ is ElementMatch!6861) (regOne!14235 (regTwo!14234 r!26197)))) b!2338228))

(assert (= (and b!2338000 ((_ is Concat!11483) (regOne!14235 (regTwo!14234 r!26197)))) b!2338229))

(assert (= (and b!2338000 ((_ is Star!6861) (regOne!14235 (regTwo!14234 r!26197)))) b!2338230))

(assert (= (and b!2338000 ((_ is Union!6861) (regOne!14235 (regTwo!14234 r!26197)))) b!2338231))

(declare-fun b!2338234 () Bool)

(declare-fun e!1496873 () Bool)

(declare-fun tp!741835 () Bool)

(assert (=> b!2338234 (= e!1496873 tp!741835)))

(assert (=> b!2338000 (= tp!741792 e!1496873)))

(declare-fun b!2338235 () Bool)

(declare-fun tp!741836 () Bool)

(declare-fun tp!741832 () Bool)

(assert (=> b!2338235 (= e!1496873 (and tp!741836 tp!741832))))

(declare-fun b!2338233 () Bool)

(declare-fun tp!741834 () Bool)

(declare-fun tp!741833 () Bool)

(assert (=> b!2338233 (= e!1496873 (and tp!741834 tp!741833))))

(declare-fun b!2338232 () Bool)

(assert (=> b!2338232 (= e!1496873 tp_is_empty!11033)))

(assert (= (and b!2338000 ((_ is ElementMatch!6861) (regTwo!14235 (regTwo!14234 r!26197)))) b!2338232))

(assert (= (and b!2338000 ((_ is Concat!11483) (regTwo!14235 (regTwo!14234 r!26197)))) b!2338233))

(assert (= (and b!2338000 ((_ is Star!6861) (regTwo!14235 (regTwo!14234 r!26197)))) b!2338234))

(assert (= (and b!2338000 ((_ is Union!6861) (regTwo!14235 (regTwo!14234 r!26197)))) b!2338235))

(declare-fun b!2338238 () Bool)

(declare-fun e!1496874 () Bool)

(declare-fun tp!741840 () Bool)

(assert (=> b!2338238 (= e!1496874 tp!741840)))

(assert (=> b!2337999 (= tp!741795 e!1496874)))

(declare-fun b!2338239 () Bool)

(declare-fun tp!741841 () Bool)

(declare-fun tp!741837 () Bool)

(assert (=> b!2338239 (= e!1496874 (and tp!741841 tp!741837))))

(declare-fun b!2338237 () Bool)

(declare-fun tp!741839 () Bool)

(declare-fun tp!741838 () Bool)

(assert (=> b!2338237 (= e!1496874 (and tp!741839 tp!741838))))

(declare-fun b!2338236 () Bool)

(assert (=> b!2338236 (= e!1496874 tp_is_empty!11033)))

(assert (= (and b!2337999 ((_ is ElementMatch!6861) (reg!7190 (regTwo!14234 r!26197)))) b!2338236))

(assert (= (and b!2337999 ((_ is Concat!11483) (reg!7190 (regTwo!14234 r!26197)))) b!2338237))

(assert (= (and b!2337999 ((_ is Star!6861) (reg!7190 (regTwo!14234 r!26197)))) b!2338238))

(assert (= (and b!2337999 ((_ is Union!6861) (reg!7190 (regTwo!14234 r!26197)))) b!2338239))

(declare-fun b!2338242 () Bool)

(declare-fun e!1496875 () Bool)

(declare-fun tp!741845 () Bool)

(assert (=> b!2338242 (= e!1496875 tp!741845)))

(assert (=> b!2338004 (= tp!741801 e!1496875)))

(declare-fun b!2338243 () Bool)

(declare-fun tp!741846 () Bool)

(declare-fun tp!741842 () Bool)

(assert (=> b!2338243 (= e!1496875 (and tp!741846 tp!741842))))

(declare-fun b!2338241 () Bool)

(declare-fun tp!741844 () Bool)

(declare-fun tp!741843 () Bool)

(assert (=> b!2338241 (= e!1496875 (and tp!741844 tp!741843))))

(declare-fun b!2338240 () Bool)

(assert (=> b!2338240 (= e!1496875 tp_is_empty!11033)))

(assert (= (and b!2338004 ((_ is ElementMatch!6861) (regOne!14235 (reg!7190 r!26197)))) b!2338240))

(assert (= (and b!2338004 ((_ is Concat!11483) (regOne!14235 (reg!7190 r!26197)))) b!2338241))

(assert (= (and b!2338004 ((_ is Star!6861) (regOne!14235 (reg!7190 r!26197)))) b!2338242))

(assert (= (and b!2338004 ((_ is Union!6861) (regOne!14235 (reg!7190 r!26197)))) b!2338243))

(declare-fun b!2338246 () Bool)

(declare-fun e!1496876 () Bool)

(declare-fun tp!741850 () Bool)

(assert (=> b!2338246 (= e!1496876 tp!741850)))

(assert (=> b!2338004 (= tp!741797 e!1496876)))

(declare-fun b!2338247 () Bool)

(declare-fun tp!741851 () Bool)

(declare-fun tp!741847 () Bool)

(assert (=> b!2338247 (= e!1496876 (and tp!741851 tp!741847))))

(declare-fun b!2338245 () Bool)

(declare-fun tp!741849 () Bool)

(declare-fun tp!741848 () Bool)

(assert (=> b!2338245 (= e!1496876 (and tp!741849 tp!741848))))

(declare-fun b!2338244 () Bool)

(assert (=> b!2338244 (= e!1496876 tp_is_empty!11033)))

(assert (= (and b!2338004 ((_ is ElementMatch!6861) (regTwo!14235 (reg!7190 r!26197)))) b!2338244))

(assert (= (and b!2338004 ((_ is Concat!11483) (regTwo!14235 (reg!7190 r!26197)))) b!2338245))

(assert (= (and b!2338004 ((_ is Star!6861) (regTwo!14235 (reg!7190 r!26197)))) b!2338246))

(assert (= (and b!2338004 ((_ is Union!6861) (regTwo!14235 (reg!7190 r!26197)))) b!2338247))

(declare-fun b!2338250 () Bool)

(declare-fun e!1496877 () Bool)

(declare-fun tp!741855 () Bool)

(assert (=> b!2338250 (= e!1496877 tp!741855)))

(assert (=> b!2338003 (= tp!741800 e!1496877)))

(declare-fun b!2338251 () Bool)

(declare-fun tp!741856 () Bool)

(declare-fun tp!741852 () Bool)

(assert (=> b!2338251 (= e!1496877 (and tp!741856 tp!741852))))

(declare-fun b!2338249 () Bool)

(declare-fun tp!741854 () Bool)

(declare-fun tp!741853 () Bool)

(assert (=> b!2338249 (= e!1496877 (and tp!741854 tp!741853))))

(declare-fun b!2338248 () Bool)

(assert (=> b!2338248 (= e!1496877 tp_is_empty!11033)))

(assert (= (and b!2338003 ((_ is ElementMatch!6861) (reg!7190 (reg!7190 r!26197)))) b!2338248))

(assert (= (and b!2338003 ((_ is Concat!11483) (reg!7190 (reg!7190 r!26197)))) b!2338249))

(assert (= (and b!2338003 ((_ is Star!6861) (reg!7190 (reg!7190 r!26197)))) b!2338250))

(assert (= (and b!2338003 ((_ is Union!6861) (reg!7190 (reg!7190 r!26197)))) b!2338251))

(declare-fun b!2338254 () Bool)

(declare-fun e!1496878 () Bool)

(declare-fun tp!741860 () Bool)

(assert (=> b!2338254 (= e!1496878 tp!741860)))

(assert (=> b!2337994 (= tp!741789 e!1496878)))

(declare-fun b!2338255 () Bool)

(declare-fun tp!741861 () Bool)

(declare-fun tp!741857 () Bool)

(assert (=> b!2338255 (= e!1496878 (and tp!741861 tp!741857))))

(declare-fun b!2338253 () Bool)

(declare-fun tp!741859 () Bool)

(declare-fun tp!741858 () Bool)

(assert (=> b!2338253 (= e!1496878 (and tp!741859 tp!741858))))

(declare-fun b!2338252 () Bool)

(assert (=> b!2338252 (= e!1496878 tp_is_empty!11033)))

(assert (= (and b!2337994 ((_ is ElementMatch!6861) (regOne!14234 (regOne!14234 r!26197)))) b!2338252))

(assert (= (and b!2337994 ((_ is Concat!11483) (regOne!14234 (regOne!14234 r!26197)))) b!2338253))

(assert (= (and b!2337994 ((_ is Star!6861) (regOne!14234 (regOne!14234 r!26197)))) b!2338254))

(assert (= (and b!2337994 ((_ is Union!6861) (regOne!14234 (regOne!14234 r!26197)))) b!2338255))

(declare-fun b!2338258 () Bool)

(declare-fun e!1496879 () Bool)

(declare-fun tp!741865 () Bool)

(assert (=> b!2338258 (= e!1496879 tp!741865)))

(assert (=> b!2337994 (= tp!741788 e!1496879)))

(declare-fun b!2338259 () Bool)

(declare-fun tp!741866 () Bool)

(declare-fun tp!741862 () Bool)

(assert (=> b!2338259 (= e!1496879 (and tp!741866 tp!741862))))

(declare-fun b!2338257 () Bool)

(declare-fun tp!741864 () Bool)

(declare-fun tp!741863 () Bool)

(assert (=> b!2338257 (= e!1496879 (and tp!741864 tp!741863))))

(declare-fun b!2338256 () Bool)

(assert (=> b!2338256 (= e!1496879 tp_is_empty!11033)))

(assert (= (and b!2337994 ((_ is ElementMatch!6861) (regTwo!14234 (regOne!14234 r!26197)))) b!2338256))

(assert (= (and b!2337994 ((_ is Concat!11483) (regTwo!14234 (regOne!14234 r!26197)))) b!2338257))

(assert (= (and b!2337994 ((_ is Star!6861) (regTwo!14234 (regOne!14234 r!26197)))) b!2338258))

(assert (= (and b!2337994 ((_ is Union!6861) (regTwo!14234 (regOne!14234 r!26197)))) b!2338259))

(declare-fun b!2338262 () Bool)

(declare-fun e!1496880 () Bool)

(declare-fun tp!741870 () Bool)

(assert (=> b!2338262 (= e!1496880 tp!741870)))

(assert (=> b!2338008 (= tp!741806 e!1496880)))

(declare-fun b!2338263 () Bool)

(declare-fun tp!741871 () Bool)

(declare-fun tp!741867 () Bool)

(assert (=> b!2338263 (= e!1496880 (and tp!741871 tp!741867))))

(declare-fun b!2338261 () Bool)

(declare-fun tp!741869 () Bool)

(declare-fun tp!741868 () Bool)

(assert (=> b!2338261 (= e!1496880 (and tp!741869 tp!741868))))

(declare-fun b!2338260 () Bool)

(assert (=> b!2338260 (= e!1496880 tp_is_empty!11033)))

(assert (= (and b!2338008 ((_ is ElementMatch!6861) (regOne!14235 (regOne!14235 r!26197)))) b!2338260))

(assert (= (and b!2338008 ((_ is Concat!11483) (regOne!14235 (regOne!14235 r!26197)))) b!2338261))

(assert (= (and b!2338008 ((_ is Star!6861) (regOne!14235 (regOne!14235 r!26197)))) b!2338262))

(assert (= (and b!2338008 ((_ is Union!6861) (regOne!14235 (regOne!14235 r!26197)))) b!2338263))

(declare-fun b!2338266 () Bool)

(declare-fun e!1496881 () Bool)

(declare-fun tp!741875 () Bool)

(assert (=> b!2338266 (= e!1496881 tp!741875)))

(assert (=> b!2338008 (= tp!741802 e!1496881)))

(declare-fun b!2338267 () Bool)

(declare-fun tp!741876 () Bool)

(declare-fun tp!741872 () Bool)

(assert (=> b!2338267 (= e!1496881 (and tp!741876 tp!741872))))

(declare-fun b!2338265 () Bool)

(declare-fun tp!741874 () Bool)

(declare-fun tp!741873 () Bool)

(assert (=> b!2338265 (= e!1496881 (and tp!741874 tp!741873))))

(declare-fun b!2338264 () Bool)

(assert (=> b!2338264 (= e!1496881 tp_is_empty!11033)))

(assert (= (and b!2338008 ((_ is ElementMatch!6861) (regTwo!14235 (regOne!14235 r!26197)))) b!2338264))

(assert (= (and b!2338008 ((_ is Concat!11483) (regTwo!14235 (regOne!14235 r!26197)))) b!2338265))

(assert (= (and b!2338008 ((_ is Star!6861) (regTwo!14235 (regOne!14235 r!26197)))) b!2338266))

(assert (= (and b!2338008 ((_ is Union!6861) (regTwo!14235 (regOne!14235 r!26197)))) b!2338267))

(declare-fun b!2338270 () Bool)

(declare-fun e!1496882 () Bool)

(declare-fun tp!741880 () Bool)

(assert (=> b!2338270 (= e!1496882 tp!741880)))

(assert (=> b!2338007 (= tp!741805 e!1496882)))

(declare-fun b!2338271 () Bool)

(declare-fun tp!741881 () Bool)

(declare-fun tp!741877 () Bool)

(assert (=> b!2338271 (= e!1496882 (and tp!741881 tp!741877))))

(declare-fun b!2338269 () Bool)

(declare-fun tp!741879 () Bool)

(declare-fun tp!741878 () Bool)

(assert (=> b!2338269 (= e!1496882 (and tp!741879 tp!741878))))

(declare-fun b!2338268 () Bool)

(assert (=> b!2338268 (= e!1496882 tp_is_empty!11033)))

(assert (= (and b!2338007 ((_ is ElementMatch!6861) (reg!7190 (regOne!14235 r!26197)))) b!2338268))

(assert (= (and b!2338007 ((_ is Concat!11483) (reg!7190 (regOne!14235 r!26197)))) b!2338269))

(assert (= (and b!2338007 ((_ is Star!6861) (reg!7190 (regOne!14235 r!26197)))) b!2338270))

(assert (= (and b!2338007 ((_ is Union!6861) (reg!7190 (regOne!14235 r!26197)))) b!2338271))

(declare-fun b!2338274 () Bool)

(declare-fun e!1496883 () Bool)

(declare-fun tp!741885 () Bool)

(assert (=> b!2338274 (= e!1496883 tp!741885)))

(assert (=> b!2337998 (= tp!741794 e!1496883)))

(declare-fun b!2338275 () Bool)

(declare-fun tp!741886 () Bool)

(declare-fun tp!741882 () Bool)

(assert (=> b!2338275 (= e!1496883 (and tp!741886 tp!741882))))

(declare-fun b!2338273 () Bool)

(declare-fun tp!741884 () Bool)

(declare-fun tp!741883 () Bool)

(assert (=> b!2338273 (= e!1496883 (and tp!741884 tp!741883))))

(declare-fun b!2338272 () Bool)

(assert (=> b!2338272 (= e!1496883 tp_is_empty!11033)))

(assert (= (and b!2337998 ((_ is ElementMatch!6861) (regOne!14234 (regTwo!14234 r!26197)))) b!2338272))

(assert (= (and b!2337998 ((_ is Concat!11483) (regOne!14234 (regTwo!14234 r!26197)))) b!2338273))

(assert (= (and b!2337998 ((_ is Star!6861) (regOne!14234 (regTwo!14234 r!26197)))) b!2338274))

(assert (= (and b!2337998 ((_ is Union!6861) (regOne!14234 (regTwo!14234 r!26197)))) b!2338275))

(declare-fun b!2338278 () Bool)

(declare-fun e!1496884 () Bool)

(declare-fun tp!741890 () Bool)

(assert (=> b!2338278 (= e!1496884 tp!741890)))

(assert (=> b!2337998 (= tp!741793 e!1496884)))

(declare-fun b!2338279 () Bool)

(declare-fun tp!741891 () Bool)

(declare-fun tp!741887 () Bool)

(assert (=> b!2338279 (= e!1496884 (and tp!741891 tp!741887))))

(declare-fun b!2338277 () Bool)

(declare-fun tp!741889 () Bool)

(declare-fun tp!741888 () Bool)

(assert (=> b!2338277 (= e!1496884 (and tp!741889 tp!741888))))

(declare-fun b!2338276 () Bool)

(assert (=> b!2338276 (= e!1496884 tp_is_empty!11033)))

(assert (= (and b!2337998 ((_ is ElementMatch!6861) (regTwo!14234 (regTwo!14234 r!26197)))) b!2338276))

(assert (= (and b!2337998 ((_ is Concat!11483) (regTwo!14234 (regTwo!14234 r!26197)))) b!2338277))

(assert (= (and b!2337998 ((_ is Star!6861) (regTwo!14234 (regTwo!14234 r!26197)))) b!2338278))

(assert (= (and b!2337998 ((_ is Union!6861) (regTwo!14234 (regTwo!14234 r!26197)))) b!2338279))

(declare-fun b!2338282 () Bool)

(declare-fun e!1496885 () Bool)

(declare-fun tp!741895 () Bool)

(assert (=> b!2338282 (= e!1496885 tp!741895)))

(assert (=> b!2338012 (= tp!741811 e!1496885)))

(declare-fun b!2338283 () Bool)

(declare-fun tp!741896 () Bool)

(declare-fun tp!741892 () Bool)

(assert (=> b!2338283 (= e!1496885 (and tp!741896 tp!741892))))

(declare-fun b!2338281 () Bool)

(declare-fun tp!741894 () Bool)

(declare-fun tp!741893 () Bool)

(assert (=> b!2338281 (= e!1496885 (and tp!741894 tp!741893))))

(declare-fun b!2338280 () Bool)

(assert (=> b!2338280 (= e!1496885 tp_is_empty!11033)))

(assert (= (and b!2338012 ((_ is ElementMatch!6861) (regOne!14235 (regTwo!14235 r!26197)))) b!2338280))

(assert (= (and b!2338012 ((_ is Concat!11483) (regOne!14235 (regTwo!14235 r!26197)))) b!2338281))

(assert (= (and b!2338012 ((_ is Star!6861) (regOne!14235 (regTwo!14235 r!26197)))) b!2338282))

(assert (= (and b!2338012 ((_ is Union!6861) (regOne!14235 (regTwo!14235 r!26197)))) b!2338283))

(declare-fun b!2338286 () Bool)

(declare-fun e!1496886 () Bool)

(declare-fun tp!741900 () Bool)

(assert (=> b!2338286 (= e!1496886 tp!741900)))

(assert (=> b!2338012 (= tp!741807 e!1496886)))

(declare-fun b!2338287 () Bool)

(declare-fun tp!741901 () Bool)

(declare-fun tp!741897 () Bool)

(assert (=> b!2338287 (= e!1496886 (and tp!741901 tp!741897))))

(declare-fun b!2338285 () Bool)

(declare-fun tp!741899 () Bool)

(declare-fun tp!741898 () Bool)

(assert (=> b!2338285 (= e!1496886 (and tp!741899 tp!741898))))

(declare-fun b!2338284 () Bool)

(assert (=> b!2338284 (= e!1496886 tp_is_empty!11033)))

(assert (= (and b!2338012 ((_ is ElementMatch!6861) (regTwo!14235 (regTwo!14235 r!26197)))) b!2338284))

(assert (= (and b!2338012 ((_ is Concat!11483) (regTwo!14235 (regTwo!14235 r!26197)))) b!2338285))

(assert (= (and b!2338012 ((_ is Star!6861) (regTwo!14235 (regTwo!14235 r!26197)))) b!2338286))

(assert (= (and b!2338012 ((_ is Union!6861) (regTwo!14235 (regTwo!14235 r!26197)))) b!2338287))

(declare-fun b!2338290 () Bool)

(declare-fun e!1496887 () Bool)

(declare-fun tp!741905 () Bool)

(assert (=> b!2338290 (= e!1496887 tp!741905)))

(assert (=> b!2338011 (= tp!741810 e!1496887)))

(declare-fun b!2338291 () Bool)

(declare-fun tp!741906 () Bool)

(declare-fun tp!741902 () Bool)

(assert (=> b!2338291 (= e!1496887 (and tp!741906 tp!741902))))

(declare-fun b!2338289 () Bool)

(declare-fun tp!741904 () Bool)

(declare-fun tp!741903 () Bool)

(assert (=> b!2338289 (= e!1496887 (and tp!741904 tp!741903))))

(declare-fun b!2338288 () Bool)

(assert (=> b!2338288 (= e!1496887 tp_is_empty!11033)))

(assert (= (and b!2338011 ((_ is ElementMatch!6861) (reg!7190 (regTwo!14235 r!26197)))) b!2338288))

(assert (= (and b!2338011 ((_ is Concat!11483) (reg!7190 (regTwo!14235 r!26197)))) b!2338289))

(assert (= (and b!2338011 ((_ is Star!6861) (reg!7190 (regTwo!14235 r!26197)))) b!2338290))

(assert (= (and b!2338011 ((_ is Union!6861) (reg!7190 (regTwo!14235 r!26197)))) b!2338291))

(declare-fun b!2338294 () Bool)

(declare-fun e!1496888 () Bool)

(declare-fun tp!741910 () Bool)

(assert (=> b!2338294 (= e!1496888 tp!741910)))

(assert (=> b!2338002 (= tp!741799 e!1496888)))

(declare-fun b!2338295 () Bool)

(declare-fun tp!741911 () Bool)

(declare-fun tp!741907 () Bool)

(assert (=> b!2338295 (= e!1496888 (and tp!741911 tp!741907))))

(declare-fun b!2338293 () Bool)

(declare-fun tp!741909 () Bool)

(declare-fun tp!741908 () Bool)

(assert (=> b!2338293 (= e!1496888 (and tp!741909 tp!741908))))

(declare-fun b!2338292 () Bool)

(assert (=> b!2338292 (= e!1496888 tp_is_empty!11033)))

(assert (= (and b!2338002 ((_ is ElementMatch!6861) (regOne!14234 (reg!7190 r!26197)))) b!2338292))

(assert (= (and b!2338002 ((_ is Concat!11483) (regOne!14234 (reg!7190 r!26197)))) b!2338293))

(assert (= (and b!2338002 ((_ is Star!6861) (regOne!14234 (reg!7190 r!26197)))) b!2338294))

(assert (= (and b!2338002 ((_ is Union!6861) (regOne!14234 (reg!7190 r!26197)))) b!2338295))

(declare-fun b!2338298 () Bool)

(declare-fun e!1496889 () Bool)

(declare-fun tp!741915 () Bool)

(assert (=> b!2338298 (= e!1496889 tp!741915)))

(assert (=> b!2338002 (= tp!741798 e!1496889)))

(declare-fun b!2338299 () Bool)

(declare-fun tp!741916 () Bool)

(declare-fun tp!741912 () Bool)

(assert (=> b!2338299 (= e!1496889 (and tp!741916 tp!741912))))

(declare-fun b!2338297 () Bool)

(declare-fun tp!741914 () Bool)

(declare-fun tp!741913 () Bool)

(assert (=> b!2338297 (= e!1496889 (and tp!741914 tp!741913))))

(declare-fun b!2338296 () Bool)

(assert (=> b!2338296 (= e!1496889 tp_is_empty!11033)))

(assert (= (and b!2338002 ((_ is ElementMatch!6861) (regTwo!14234 (reg!7190 r!26197)))) b!2338296))

(assert (= (and b!2338002 ((_ is Concat!11483) (regTwo!14234 (reg!7190 r!26197)))) b!2338297))

(assert (= (and b!2338002 ((_ is Star!6861) (regTwo!14234 (reg!7190 r!26197)))) b!2338298))

(assert (= (and b!2338002 ((_ is Union!6861) (regTwo!14234 (reg!7190 r!26197)))) b!2338299))

(declare-fun b!2338302 () Bool)

(declare-fun e!1496890 () Bool)

(declare-fun tp!741920 () Bool)

(assert (=> b!2338302 (= e!1496890 tp!741920)))

(assert (=> b!2338006 (= tp!741804 e!1496890)))

(declare-fun b!2338303 () Bool)

(declare-fun tp!741921 () Bool)

(declare-fun tp!741917 () Bool)

(assert (=> b!2338303 (= e!1496890 (and tp!741921 tp!741917))))

(declare-fun b!2338301 () Bool)

(declare-fun tp!741919 () Bool)

(declare-fun tp!741918 () Bool)

(assert (=> b!2338301 (= e!1496890 (and tp!741919 tp!741918))))

(declare-fun b!2338300 () Bool)

(assert (=> b!2338300 (= e!1496890 tp_is_empty!11033)))

(assert (= (and b!2338006 ((_ is ElementMatch!6861) (regOne!14234 (regOne!14235 r!26197)))) b!2338300))

(assert (= (and b!2338006 ((_ is Concat!11483) (regOne!14234 (regOne!14235 r!26197)))) b!2338301))

(assert (= (and b!2338006 ((_ is Star!6861) (regOne!14234 (regOne!14235 r!26197)))) b!2338302))

(assert (= (and b!2338006 ((_ is Union!6861) (regOne!14234 (regOne!14235 r!26197)))) b!2338303))

(declare-fun b!2338306 () Bool)

(declare-fun e!1496891 () Bool)

(declare-fun tp!741925 () Bool)

(assert (=> b!2338306 (= e!1496891 tp!741925)))

(assert (=> b!2338006 (= tp!741803 e!1496891)))

(declare-fun b!2338307 () Bool)

(declare-fun tp!741926 () Bool)

(declare-fun tp!741922 () Bool)

(assert (=> b!2338307 (= e!1496891 (and tp!741926 tp!741922))))

(declare-fun b!2338305 () Bool)

(declare-fun tp!741924 () Bool)

(declare-fun tp!741923 () Bool)

(assert (=> b!2338305 (= e!1496891 (and tp!741924 tp!741923))))

(declare-fun b!2338304 () Bool)

(assert (=> b!2338304 (= e!1496891 tp_is_empty!11033)))

(assert (= (and b!2338006 ((_ is ElementMatch!6861) (regTwo!14234 (regOne!14235 r!26197)))) b!2338304))

(assert (= (and b!2338006 ((_ is Concat!11483) (regTwo!14234 (regOne!14235 r!26197)))) b!2338305))

(assert (= (and b!2338006 ((_ is Star!6861) (regTwo!14234 (regOne!14235 r!26197)))) b!2338306))

(assert (= (and b!2338006 ((_ is Union!6861) (regTwo!14234 (regOne!14235 r!26197)))) b!2338307))

(declare-fun b!2338310 () Bool)

(declare-fun e!1496892 () Bool)

(declare-fun tp!741930 () Bool)

(assert (=> b!2338310 (= e!1496892 tp!741930)))

(assert (=> b!2338010 (= tp!741809 e!1496892)))

(declare-fun b!2338311 () Bool)

(declare-fun tp!741931 () Bool)

(declare-fun tp!741927 () Bool)

(assert (=> b!2338311 (= e!1496892 (and tp!741931 tp!741927))))

(declare-fun b!2338309 () Bool)

(declare-fun tp!741929 () Bool)

(declare-fun tp!741928 () Bool)

(assert (=> b!2338309 (= e!1496892 (and tp!741929 tp!741928))))

(declare-fun b!2338308 () Bool)

(assert (=> b!2338308 (= e!1496892 tp_is_empty!11033)))

(assert (= (and b!2338010 ((_ is ElementMatch!6861) (regOne!14234 (regTwo!14235 r!26197)))) b!2338308))

(assert (= (and b!2338010 ((_ is Concat!11483) (regOne!14234 (regTwo!14235 r!26197)))) b!2338309))

(assert (= (and b!2338010 ((_ is Star!6861) (regOne!14234 (regTwo!14235 r!26197)))) b!2338310))

(assert (= (and b!2338010 ((_ is Union!6861) (regOne!14234 (regTwo!14235 r!26197)))) b!2338311))

(declare-fun b!2338314 () Bool)

(declare-fun e!1496893 () Bool)

(declare-fun tp!741935 () Bool)

(assert (=> b!2338314 (= e!1496893 tp!741935)))

(assert (=> b!2338010 (= tp!741808 e!1496893)))

(declare-fun b!2338315 () Bool)

(declare-fun tp!741936 () Bool)

(declare-fun tp!741932 () Bool)

(assert (=> b!2338315 (= e!1496893 (and tp!741936 tp!741932))))

(declare-fun b!2338313 () Bool)

(declare-fun tp!741934 () Bool)

(declare-fun tp!741933 () Bool)

(assert (=> b!2338313 (= e!1496893 (and tp!741934 tp!741933))))

(declare-fun b!2338312 () Bool)

(assert (=> b!2338312 (= e!1496893 tp_is_empty!11033)))

(assert (= (and b!2338010 ((_ is ElementMatch!6861) (regTwo!14234 (regTwo!14235 r!26197)))) b!2338312))

(assert (= (and b!2338010 ((_ is Concat!11483) (regTwo!14234 (regTwo!14235 r!26197)))) b!2338313))

(assert (= (and b!2338010 ((_ is Star!6861) (regTwo!14234 (regTwo!14235 r!26197)))) b!2338314))

(assert (= (and b!2338010 ((_ is Union!6861) (regTwo!14234 (regTwo!14235 r!26197)))) b!2338315))

(check-sat (not b!2338221) (not b!2338233) (not b!2338231) (not b!2338250) (not d!690826) (not bm!140468) (not b!2338297) (not b!2338261) (not bm!140456) (not d!690784) (not bm!140447) (not b!2338210) (not b!2338307) (not b!2338262) (not b!2338237) (not b!2338217) (not bm!140504) (not b!2338245) (not d!690802) (not bm!140498) (not b!2338271) (not bm!140454) (not b!2338251) (not b!2338230) (not bm!140446) (not b!2338265) (not b!2338311) (not b!2338227) (not b!2338267) (not bm!140505) (not b!2338184) (not b!2338223) (not b!2338234) (not bm!140445) (not b!2338299) (not bm!140460) (not bm!140495) (not b!2338266) (not bm!140496) (not bm!140449) (not b!2338246) (not b!2338314) (not bm!140491) (not b!2338017) (not bm!140467) (not bm!140452) (not b!2338293) (not b!2338310) (not b!2338062) (not b!2338313) (not bm!140484) (not b!2338222) (not bm!140482) (not b!2338024) (not b!2338290) (not bm!140457) (not b!2338277) (not b!2338235) (not b!2338259) (not b!2338298) (not b!2338254) (not bm!140499) (not b!2338285) (not b!2338282) (not d!690828) (not b!2338137) (not b!2338273) (not d!690822) (not b!2338072) (not b!2338218) (not bm!140490) (not b!2338238) (not b!2338102) (not b!2338289) (not b!2338303) (not b!2338279) (not b!2338287) (not bm!140476) (not b!2338180) (not b!2338229) (not b!2338291) (not d!690810) (not b!2338275) (not b!2338160) (not bm!140477) (not b!2338243) (not b!2338306) (not b!2338286) (not d!690792) (not b!2338051) (not bm!140494) (not b!2338242) (not bm!140500) (not bm!140473) (not b!2338112) (not b!2338226) (not b!2338033) (not d!690836) (not b!2338258) (not b!2338315) (not bm!140453) (not b!2338301) (not bm!140458) (not b!2338247) (not bm!140444) (not b!2338274) (not b!2338283) (not bm!140483) (not bm!140480) (not b!2338125) (not b!2338278) (not b!2338257) (not b!2338295) (not d!690788) (not b!2338225) (not b!2338305) (not bm!140461) (not b!2338249) (not bm!140488) (not b!2338253) (not d!690778) (not b!2338270) (not b!2338281) (not b!2338294) (not bm!140469) (not bm!140487) (not b!2338132) (not b!2338241) (not d!690806) (not d!690782) (not b!2338255) (not bm!140472) (not b!2338263) (not b!2338219) (not b!2338269) tp_is_empty!11033 (not bm!140501) (not bm!140486) (not bm!140481) (not bm!140450) (not b!2338111) (not b!2338302) (not b!2338239) (not b!2338050) (not bm!140470) (not b!2338182) (not bm!140493) (not b!2338309) (not d!690808))
(check-sat)
