; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349934 () Bool)

(assert start!349934)

(declare-fun b!3711493 () Bool)

(declare-fun e!2298478 () Bool)

(declare-fun tp_is_empty!18709 () Bool)

(assert (=> b!3711493 (= e!2298478 tp_is_empty!18709)))

(declare-fun b!3711495 () Bool)

(declare-fun res!1509270 () Bool)

(declare-fun e!2298480 () Bool)

(assert (=> b!3711495 (=> (not res!1509270) (not e!2298480))))

(declare-datatypes ((C!21880 0))(
  ( (C!21881 (val!12988 Int)) )
))
(declare-datatypes ((Regex!10847 0))(
  ( (ElementMatch!10847 (c!641139 C!21880)) (Concat!17118 (regOne!22206 Regex!10847) (regTwo!22206 Regex!10847)) (EmptyExpr!10847) (Star!10847 (reg!11176 Regex!10847)) (EmptyLang!10847) (Union!10847 (regOne!22207 Regex!10847) (regTwo!22207 Regex!10847)) )
))
(declare-fun r!26326 () Regex!10847)

(declare-fun c!13576 () C!21880)

(declare-datatypes ((List!39728 0))(
  ( (Nil!39604) (Cons!39604 (h!45024 C!21880) (t!302411 List!39728)) )
))
(declare-fun tl!3933 () List!39728)

(declare-fun nullable!3770 (Regex!10847) Bool)

(declare-fun derivative!361 (Regex!10847 List!39728) Regex!10847)

(declare-fun derivativeStep!3312 (Regex!10847 C!21880) Regex!10847)

(assert (=> b!3711495 (= res!1509270 (nullable!3770 (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)))))

(declare-fun b!3711496 () Bool)

(declare-fun tp!1129554 () Bool)

(assert (=> b!3711496 (= e!2298478 tp!1129554)))

(declare-fun b!3711497 () Bool)

(declare-fun res!1509274 () Bool)

(assert (=> b!3711497 (=> (not res!1509274) (not e!2298480))))

(get-info :version)

(assert (=> b!3711497 (= res!1509274 (and (not ((_ is EmptyExpr!10847) r!26326)) (not ((_ is EmptyLang!10847) r!26326)) (not ((_ is ElementMatch!10847) r!26326)) ((_ is Union!10847) r!26326)))))

(declare-fun b!3711498 () Bool)

(declare-fun res!1509272 () Bool)

(assert (=> b!3711498 (=> (not res!1509272) (not e!2298480))))

(declare-fun validRegex!4954 (Regex!10847) Bool)

(assert (=> b!3711498 (= res!1509272 (validRegex!4954 (regOne!22207 r!26326)))))

(declare-fun res!1509273 () Bool)

(assert (=> start!349934 (=> (not res!1509273) (not e!2298480))))

(assert (=> start!349934 (= res!1509273 (validRegex!4954 r!26326))))

(assert (=> start!349934 e!2298480))

(assert (=> start!349934 e!2298478))

(assert (=> start!349934 tp_is_empty!18709))

(declare-fun e!2298479 () Bool)

(assert (=> start!349934 e!2298479))

(declare-fun b!3711494 () Bool)

(declare-fun tp!1129552 () Bool)

(declare-fun tp!1129556 () Bool)

(assert (=> b!3711494 (= e!2298478 (and tp!1129552 tp!1129556))))

(declare-fun b!3711499 () Bool)

(declare-fun res!1509271 () Bool)

(assert (=> b!3711499 (=> (not res!1509271) (not e!2298480))))

(assert (=> b!3711499 (= res!1509271 (nullable!3770 (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)))))

(declare-fun b!3711500 () Bool)

(declare-fun tp!1129551 () Bool)

(assert (=> b!3711500 (= e!2298479 (and tp_is_empty!18709 tp!1129551))))

(declare-fun b!3711501 () Bool)

(declare-fun contains!7940 (List!39728 C!21880) Bool)

(declare-fun usedCharacters!1110 (Regex!10847) List!39728)

(assert (=> b!3711501 (= e!2298480 (not (contains!7940 (usedCharacters!1110 r!26326) c!13576)))))

(assert (=> b!3711501 (contains!7940 (usedCharacters!1110 (regOne!22207 r!26326)) c!13576)))

(declare-datatypes ((Unit!57492 0))(
  ( (Unit!57493) )
))
(declare-fun lt!1296880 () Unit!57492)

(declare-fun lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!4 (Regex!10847 C!21880 List!39728) Unit!57492)

(assert (=> b!3711501 (= lt!1296880 (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!4 (regOne!22207 r!26326) c!13576 tl!3933))))

(declare-fun b!3711502 () Bool)

(declare-fun tp!1129555 () Bool)

(declare-fun tp!1129553 () Bool)

(assert (=> b!3711502 (= e!2298478 (and tp!1129555 tp!1129553))))

(assert (= (and start!349934 res!1509273) b!3711499))

(assert (= (and b!3711499 res!1509271) b!3711497))

(assert (= (and b!3711497 res!1509274) b!3711495))

(assert (= (and b!3711495 res!1509270) b!3711498))

(assert (= (and b!3711498 res!1509272) b!3711501))

(assert (= (and start!349934 ((_ is ElementMatch!10847) r!26326)) b!3711493))

(assert (= (and start!349934 ((_ is Concat!17118) r!26326)) b!3711502))

(assert (= (and start!349934 ((_ is Star!10847) r!26326)) b!3711496))

(assert (= (and start!349934 ((_ is Union!10847) r!26326)) b!3711494))

(assert (= (and start!349934 ((_ is Cons!39604) tl!3933)) b!3711500))

(declare-fun m!4218667 () Bool)

(assert (=> start!349934 m!4218667))

(declare-fun m!4218669 () Bool)

(assert (=> b!3711495 m!4218669))

(assert (=> b!3711495 m!4218669))

(declare-fun m!4218671 () Bool)

(assert (=> b!3711495 m!4218671))

(assert (=> b!3711495 m!4218671))

(declare-fun m!4218673 () Bool)

(assert (=> b!3711495 m!4218673))

(declare-fun m!4218675 () Bool)

(assert (=> b!3711501 m!4218675))

(assert (=> b!3711501 m!4218675))

(declare-fun m!4218677 () Bool)

(assert (=> b!3711501 m!4218677))

(declare-fun m!4218679 () Bool)

(assert (=> b!3711501 m!4218679))

(declare-fun m!4218681 () Bool)

(assert (=> b!3711501 m!4218681))

(assert (=> b!3711501 m!4218679))

(declare-fun m!4218683 () Bool)

(assert (=> b!3711501 m!4218683))

(declare-fun m!4218685 () Bool)

(assert (=> b!3711499 m!4218685))

(assert (=> b!3711499 m!4218685))

(declare-fun m!4218687 () Bool)

(assert (=> b!3711499 m!4218687))

(assert (=> b!3711499 m!4218687))

(declare-fun m!4218689 () Bool)

(assert (=> b!3711499 m!4218689))

(declare-fun m!4218691 () Bool)

(assert (=> b!3711498 m!4218691))

(check-sat (not b!3711494) (not b!3711500) (not b!3711498) (not b!3711499) (not b!3711496) (not b!3711501) (not b!3711495) (not b!3711502) (not start!349934) tp_is_empty!18709)
(check-sat)
(get-model)

(declare-fun b!3711574 () Bool)

(declare-fun res!1509301 () Bool)

(declare-fun e!2298534 () Bool)

(assert (=> b!3711574 (=> res!1509301 e!2298534)))

(assert (=> b!3711574 (= res!1509301 (not ((_ is Concat!17118) (regOne!22207 r!26326))))))

(declare-fun e!2298532 () Bool)

(assert (=> b!3711574 (= e!2298532 e!2298534)))

(declare-fun b!3711576 () Bool)

(declare-fun e!2298530 () Bool)

(declare-fun e!2298531 () Bool)

(assert (=> b!3711576 (= e!2298530 e!2298531)))

(declare-fun c!641164 () Bool)

(assert (=> b!3711576 (= c!641164 ((_ is Star!10847) (regOne!22207 r!26326)))))

(declare-fun b!3711577 () Bool)

(declare-fun e!2298535 () Bool)

(declare-fun call!268470 () Bool)

(assert (=> b!3711577 (= e!2298535 call!268470)))

(declare-fun bm!268465 () Bool)

(declare-fun c!641163 () Bool)

(assert (=> bm!268465 (= call!268470 (validRegex!4954 (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))

(declare-fun b!3711578 () Bool)

(declare-fun e!2298533 () Bool)

(declare-fun call!268471 () Bool)

(assert (=> b!3711578 (= e!2298533 call!268471)))

(declare-fun call!268472 () Bool)

(declare-fun bm!268466 () Bool)

(assert (=> bm!268466 (= call!268472 (validRegex!4954 (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))

(declare-fun b!3711575 () Bool)

(declare-fun e!2298529 () Bool)

(assert (=> b!3711575 (= e!2298529 call!268472)))

(declare-fun d!1087163 () Bool)

(declare-fun res!1509303 () Bool)

(assert (=> d!1087163 (=> res!1509303 e!2298530)))

(assert (=> d!1087163 (= res!1509303 ((_ is ElementMatch!10847) (regOne!22207 r!26326)))))

(assert (=> d!1087163 (= (validRegex!4954 (regOne!22207 r!26326)) e!2298530)))

(declare-fun b!3711579 () Bool)

(assert (=> b!3711579 (= e!2298531 e!2298532)))

(assert (=> b!3711579 (= c!641163 ((_ is Union!10847) (regOne!22207 r!26326)))))

(declare-fun b!3711580 () Bool)

(assert (=> b!3711580 (= e!2298534 e!2298535)))

(declare-fun res!1509302 () Bool)

(assert (=> b!3711580 (=> (not res!1509302) (not e!2298535))))

(assert (=> b!3711580 (= res!1509302 call!268471)))

(declare-fun b!3711581 () Bool)

(declare-fun res!1509300 () Bool)

(assert (=> b!3711581 (=> (not res!1509300) (not e!2298533))))

(assert (=> b!3711581 (= res!1509300 call!268470)))

(assert (=> b!3711581 (= e!2298532 e!2298533)))

(declare-fun bm!268467 () Bool)

(assert (=> bm!268467 (= call!268471 call!268472)))

(declare-fun b!3711582 () Bool)

(assert (=> b!3711582 (= e!2298531 e!2298529)))

(declare-fun res!1509304 () Bool)

(assert (=> b!3711582 (= res!1509304 (not (nullable!3770 (reg!11176 (regOne!22207 r!26326)))))))

(assert (=> b!3711582 (=> (not res!1509304) (not e!2298529))))

(assert (= (and d!1087163 (not res!1509303)) b!3711576))

(assert (= (and b!3711576 c!641164) b!3711582))

(assert (= (and b!3711576 (not c!641164)) b!3711579))

(assert (= (and b!3711582 res!1509304) b!3711575))

(assert (= (and b!3711579 c!641163) b!3711581))

(assert (= (and b!3711579 (not c!641163)) b!3711574))

(assert (= (and b!3711581 res!1509300) b!3711578))

(assert (= (and b!3711574 (not res!1509301)) b!3711580))

(assert (= (and b!3711580 res!1509302) b!3711577))

(assert (= (or b!3711578 b!3711580) bm!268467))

(assert (= (or b!3711581 b!3711577) bm!268465))

(assert (= (or b!3711575 bm!268467) bm!268466))

(declare-fun m!4218709 () Bool)

(assert (=> bm!268465 m!4218709))

(declare-fun m!4218711 () Bool)

(assert (=> bm!268466 m!4218711))

(declare-fun m!4218713 () Bool)

(assert (=> b!3711582 m!4218713))

(assert (=> b!3711498 d!1087163))

(declare-fun d!1087171 () Bool)

(declare-fun nullableFct!1059 (Regex!10847) Bool)

(assert (=> d!1087171 (= (nullable!3770 (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)) (nullableFct!1059 (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)))))

(declare-fun bs!574749 () Bool)

(assert (= bs!574749 d!1087171))

(assert (=> bs!574749 m!4218687))

(declare-fun m!4218715 () Bool)

(assert (=> bs!574749 m!4218715))

(assert (=> b!3711499 d!1087171))

(declare-fun d!1087173 () Bool)

(declare-fun lt!1296891 () Regex!10847)

(assert (=> d!1087173 (validRegex!4954 lt!1296891)))

(declare-fun e!2298564 () Regex!10847)

(assert (=> d!1087173 (= lt!1296891 e!2298564)))

(declare-fun c!641188 () Bool)

(assert (=> d!1087173 (= c!641188 ((_ is Cons!39604) tl!3933))))

(assert (=> d!1087173 (validRegex!4954 (derivativeStep!3312 r!26326 c!13576))))

(assert (=> d!1087173 (= (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933) lt!1296891)))

(declare-fun b!3711634 () Bool)

(assert (=> b!3711634 (= e!2298564 (derivative!361 (derivativeStep!3312 (derivativeStep!3312 r!26326 c!13576) (h!45024 tl!3933)) (t!302411 tl!3933)))))

(declare-fun b!3711635 () Bool)

(assert (=> b!3711635 (= e!2298564 (derivativeStep!3312 r!26326 c!13576))))

(assert (= (and d!1087173 c!641188) b!3711634))

(assert (= (and d!1087173 (not c!641188)) b!3711635))

(declare-fun m!4218749 () Bool)

(assert (=> d!1087173 m!4218749))

(assert (=> d!1087173 m!4218685))

(declare-fun m!4218751 () Bool)

(assert (=> d!1087173 m!4218751))

(assert (=> b!3711634 m!4218685))

(declare-fun m!4218753 () Bool)

(assert (=> b!3711634 m!4218753))

(assert (=> b!3711634 m!4218753))

(declare-fun m!4218755 () Bool)

(assert (=> b!3711634 m!4218755))

(assert (=> b!3711499 d!1087173))

(declare-fun bm!268507 () Bool)

(declare-fun call!268513 () Regex!10847)

(declare-fun call!268514 () Regex!10847)

(assert (=> bm!268507 (= call!268513 call!268514)))

(declare-fun b!3711715 () Bool)

(declare-fun e!2298601 () Regex!10847)

(declare-fun e!2298603 () Regex!10847)

(assert (=> b!3711715 (= e!2298601 e!2298603)))

(declare-fun c!641212 () Bool)

(assert (=> b!3711715 (= c!641212 ((_ is Star!10847) r!26326))))

(declare-fun b!3711716 () Bool)

(declare-fun e!2298604 () Regex!10847)

(assert (=> b!3711716 (= e!2298604 (Union!10847 (Concat!17118 call!268513 (regTwo!22206 r!26326)) EmptyLang!10847))))

(declare-fun b!3711717 () Bool)

(declare-fun e!2298605 () Regex!10847)

(assert (=> b!3711717 (= e!2298605 EmptyLang!10847)))

(declare-fun b!3711718 () Bool)

(declare-fun c!641211 () Bool)

(assert (=> b!3711718 (= c!641211 (nullable!3770 (regOne!22206 r!26326)))))

(assert (=> b!3711718 (= e!2298603 e!2298604)))

(declare-fun b!3711719 () Bool)

(declare-fun e!2298602 () Regex!10847)

(assert (=> b!3711719 (= e!2298605 e!2298602)))

(declare-fun c!641209 () Bool)

(assert (=> b!3711719 (= c!641209 ((_ is ElementMatch!10847) r!26326))))

(declare-fun b!3711720 () Bool)

(declare-fun call!268515 () Regex!10847)

(assert (=> b!3711720 (= e!2298601 (Union!10847 call!268514 call!268515))))

(declare-fun bm!268508 () Bool)

(declare-fun c!641210 () Bool)

(assert (=> bm!268508 (= call!268515 (derivativeStep!3312 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326))) c!13576))))

(declare-fun b!3711721 () Bool)

(assert (=> b!3711721 (= e!2298602 (ite (= c!13576 (c!641139 r!26326)) EmptyExpr!10847 EmptyLang!10847))))

(declare-fun bm!268509 () Bool)

(assert (=> bm!268509 (= call!268514 (derivativeStep!3312 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326)) c!13576))))

(declare-fun d!1087185 () Bool)

(declare-fun lt!1296901 () Regex!10847)

(assert (=> d!1087185 (validRegex!4954 lt!1296901)))

(assert (=> d!1087185 (= lt!1296901 e!2298605)))

(declare-fun c!641208 () Bool)

(assert (=> d!1087185 (= c!641208 (or ((_ is EmptyExpr!10847) r!26326) ((_ is EmptyLang!10847) r!26326)))))

(assert (=> d!1087185 (validRegex!4954 r!26326)))

(assert (=> d!1087185 (= (derivativeStep!3312 r!26326 c!13576) lt!1296901)))

(declare-fun bm!268510 () Bool)

(declare-fun call!268512 () Regex!10847)

(assert (=> bm!268510 (= call!268512 call!268515)))

(declare-fun b!3711722 () Bool)

(assert (=> b!3711722 (= e!2298603 (Concat!17118 call!268512 r!26326))))

(declare-fun b!3711723 () Bool)

(assert (=> b!3711723 (= e!2298604 (Union!10847 (Concat!17118 call!268513 (regTwo!22206 r!26326)) call!268512))))

(declare-fun b!3711724 () Bool)

(assert (=> b!3711724 (= c!641210 ((_ is Union!10847) r!26326))))

(assert (=> b!3711724 (= e!2298602 e!2298601)))

(assert (= (and d!1087185 c!641208) b!3711717))

(assert (= (and d!1087185 (not c!641208)) b!3711719))

(assert (= (and b!3711719 c!641209) b!3711721))

(assert (= (and b!3711719 (not c!641209)) b!3711724))

(assert (= (and b!3711724 c!641210) b!3711720))

(assert (= (and b!3711724 (not c!641210)) b!3711715))

(assert (= (and b!3711715 c!641212) b!3711722))

(assert (= (and b!3711715 (not c!641212)) b!3711718))

(assert (= (and b!3711718 c!641211) b!3711723))

(assert (= (and b!3711718 (not c!641211)) b!3711716))

(assert (= (or b!3711723 b!3711716) bm!268507))

(assert (= (or b!3711722 b!3711723) bm!268510))

(assert (= (or b!3711720 bm!268510) bm!268508))

(assert (= (or b!3711720 bm!268507) bm!268509))

(declare-fun m!4218783 () Bool)

(assert (=> b!3711718 m!4218783))

(declare-fun m!4218785 () Bool)

(assert (=> bm!268508 m!4218785))

(declare-fun m!4218787 () Bool)

(assert (=> bm!268509 m!4218787))

(declare-fun m!4218789 () Bool)

(assert (=> d!1087185 m!4218789))

(assert (=> d!1087185 m!4218667))

(assert (=> b!3711499 d!1087185))

(declare-fun d!1087195 () Bool)

(assert (=> d!1087195 (= (nullable!3770 (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)) (nullableFct!1059 (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)))))

(declare-fun bs!574752 () Bool)

(assert (= bs!574752 d!1087195))

(assert (=> bs!574752 m!4218671))

(declare-fun m!4218791 () Bool)

(assert (=> bs!574752 m!4218791))

(assert (=> b!3711495 d!1087195))

(declare-fun d!1087197 () Bool)

(declare-fun lt!1296902 () Regex!10847)

(assert (=> d!1087197 (validRegex!4954 lt!1296902)))

(declare-fun e!2298606 () Regex!10847)

(assert (=> d!1087197 (= lt!1296902 e!2298606)))

(declare-fun c!641213 () Bool)

(assert (=> d!1087197 (= c!641213 ((_ is Cons!39604) tl!3933))))

(assert (=> d!1087197 (validRegex!4954 (derivativeStep!3312 (regOne!22207 r!26326) c!13576))))

(assert (=> d!1087197 (= (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933) lt!1296902)))

(declare-fun b!3711725 () Bool)

(assert (=> b!3711725 (= e!2298606 (derivative!361 (derivativeStep!3312 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) (h!45024 tl!3933)) (t!302411 tl!3933)))))

(declare-fun b!3711726 () Bool)

(assert (=> b!3711726 (= e!2298606 (derivativeStep!3312 (regOne!22207 r!26326) c!13576))))

(assert (= (and d!1087197 c!641213) b!3711725))

(assert (= (and d!1087197 (not c!641213)) b!3711726))

(declare-fun m!4218793 () Bool)

(assert (=> d!1087197 m!4218793))

(assert (=> d!1087197 m!4218669))

(declare-fun m!4218795 () Bool)

(assert (=> d!1087197 m!4218795))

(assert (=> b!3711725 m!4218669))

(declare-fun m!4218797 () Bool)

(assert (=> b!3711725 m!4218797))

(assert (=> b!3711725 m!4218797))

(declare-fun m!4218799 () Bool)

(assert (=> b!3711725 m!4218799))

(assert (=> b!3711495 d!1087197))

(declare-fun bm!268511 () Bool)

(declare-fun call!268517 () Regex!10847)

(declare-fun call!268518 () Regex!10847)

(assert (=> bm!268511 (= call!268517 call!268518)))

(declare-fun b!3711727 () Bool)

(declare-fun e!2298607 () Regex!10847)

(declare-fun e!2298609 () Regex!10847)

(assert (=> b!3711727 (= e!2298607 e!2298609)))

(declare-fun c!641218 () Bool)

(assert (=> b!3711727 (= c!641218 ((_ is Star!10847) (regOne!22207 r!26326)))))

(declare-fun b!3711728 () Bool)

(declare-fun e!2298610 () Regex!10847)

(assert (=> b!3711728 (= e!2298610 (Union!10847 (Concat!17118 call!268517 (regTwo!22206 (regOne!22207 r!26326))) EmptyLang!10847))))

(declare-fun b!3711729 () Bool)

(declare-fun e!2298611 () Regex!10847)

(assert (=> b!3711729 (= e!2298611 EmptyLang!10847)))

(declare-fun b!3711730 () Bool)

(declare-fun c!641217 () Bool)

(assert (=> b!3711730 (= c!641217 (nullable!3770 (regOne!22206 (regOne!22207 r!26326))))))

(assert (=> b!3711730 (= e!2298609 e!2298610)))

(declare-fun b!3711731 () Bool)

(declare-fun e!2298608 () Regex!10847)

(assert (=> b!3711731 (= e!2298611 e!2298608)))

(declare-fun c!641215 () Bool)

(assert (=> b!3711731 (= c!641215 ((_ is ElementMatch!10847) (regOne!22207 r!26326)))))

(declare-fun b!3711732 () Bool)

(declare-fun call!268519 () Regex!10847)

(assert (=> b!3711732 (= e!2298607 (Union!10847 call!268518 call!268519))))

(declare-fun bm!268512 () Bool)

(declare-fun c!641216 () Bool)

(assert (=> bm!268512 (= call!268519 (derivativeStep!3312 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))) c!13576))))

(declare-fun b!3711733 () Bool)

(assert (=> b!3711733 (= e!2298608 (ite (= c!13576 (c!641139 (regOne!22207 r!26326))) EmptyExpr!10847 EmptyLang!10847))))

(declare-fun bm!268513 () Bool)

(assert (=> bm!268513 (= call!268518 (derivativeStep!3312 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))) c!13576))))

(declare-fun d!1087199 () Bool)

(declare-fun lt!1296903 () Regex!10847)

(assert (=> d!1087199 (validRegex!4954 lt!1296903)))

(assert (=> d!1087199 (= lt!1296903 e!2298611)))

(declare-fun c!641214 () Bool)

(assert (=> d!1087199 (= c!641214 (or ((_ is EmptyExpr!10847) (regOne!22207 r!26326)) ((_ is EmptyLang!10847) (regOne!22207 r!26326))))))

(assert (=> d!1087199 (validRegex!4954 (regOne!22207 r!26326))))

(assert (=> d!1087199 (= (derivativeStep!3312 (regOne!22207 r!26326) c!13576) lt!1296903)))

(declare-fun bm!268514 () Bool)

(declare-fun call!268516 () Regex!10847)

(assert (=> bm!268514 (= call!268516 call!268519)))

(declare-fun b!3711734 () Bool)

(assert (=> b!3711734 (= e!2298609 (Concat!17118 call!268516 (regOne!22207 r!26326)))))

(declare-fun b!3711735 () Bool)

(assert (=> b!3711735 (= e!2298610 (Union!10847 (Concat!17118 call!268517 (regTwo!22206 (regOne!22207 r!26326))) call!268516))))

(declare-fun b!3711736 () Bool)

(assert (=> b!3711736 (= c!641216 ((_ is Union!10847) (regOne!22207 r!26326)))))

(assert (=> b!3711736 (= e!2298608 e!2298607)))

(assert (= (and d!1087199 c!641214) b!3711729))

(assert (= (and d!1087199 (not c!641214)) b!3711731))

(assert (= (and b!3711731 c!641215) b!3711733))

(assert (= (and b!3711731 (not c!641215)) b!3711736))

(assert (= (and b!3711736 c!641216) b!3711732))

(assert (= (and b!3711736 (not c!641216)) b!3711727))

(assert (= (and b!3711727 c!641218) b!3711734))

(assert (= (and b!3711727 (not c!641218)) b!3711730))

(assert (= (and b!3711730 c!641217) b!3711735))

(assert (= (and b!3711730 (not c!641217)) b!3711728))

(assert (= (or b!3711735 b!3711728) bm!268511))

(assert (= (or b!3711734 b!3711735) bm!268514))

(assert (= (or b!3711732 bm!268514) bm!268512))

(assert (= (or b!3711732 bm!268511) bm!268513))

(declare-fun m!4218801 () Bool)

(assert (=> b!3711730 m!4218801))

(declare-fun m!4218803 () Bool)

(assert (=> bm!268512 m!4218803))

(declare-fun m!4218805 () Bool)

(assert (=> bm!268513 m!4218805))

(declare-fun m!4218807 () Bool)

(assert (=> d!1087199 m!4218807))

(assert (=> d!1087199 m!4218691))

(assert (=> b!3711495 d!1087199))

(declare-fun b!3711737 () Bool)

(declare-fun res!1509319 () Bool)

(declare-fun e!2298617 () Bool)

(assert (=> b!3711737 (=> res!1509319 e!2298617)))

(assert (=> b!3711737 (= res!1509319 (not ((_ is Concat!17118) r!26326)))))

(declare-fun e!2298615 () Bool)

(assert (=> b!3711737 (= e!2298615 e!2298617)))

(declare-fun b!3711739 () Bool)

(declare-fun e!2298613 () Bool)

(declare-fun e!2298614 () Bool)

(assert (=> b!3711739 (= e!2298613 e!2298614)))

(declare-fun c!641220 () Bool)

(assert (=> b!3711739 (= c!641220 ((_ is Star!10847) r!26326))))

(declare-fun b!3711740 () Bool)

(declare-fun e!2298618 () Bool)

(declare-fun call!268520 () Bool)

(assert (=> b!3711740 (= e!2298618 call!268520)))

(declare-fun bm!268515 () Bool)

(declare-fun c!641219 () Bool)

(assert (=> bm!268515 (= call!268520 (validRegex!4954 (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))))))

(declare-fun b!3711741 () Bool)

(declare-fun e!2298616 () Bool)

(declare-fun call!268521 () Bool)

(assert (=> b!3711741 (= e!2298616 call!268521)))

(declare-fun call!268522 () Bool)

(declare-fun bm!268516 () Bool)

(assert (=> bm!268516 (= call!268522 (validRegex!4954 (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))))))

(declare-fun b!3711738 () Bool)

(declare-fun e!2298612 () Bool)

(assert (=> b!3711738 (= e!2298612 call!268522)))

(declare-fun d!1087201 () Bool)

(declare-fun res!1509321 () Bool)

(assert (=> d!1087201 (=> res!1509321 e!2298613)))

(assert (=> d!1087201 (= res!1509321 ((_ is ElementMatch!10847) r!26326))))

(assert (=> d!1087201 (= (validRegex!4954 r!26326) e!2298613)))

(declare-fun b!3711742 () Bool)

(assert (=> b!3711742 (= e!2298614 e!2298615)))

(assert (=> b!3711742 (= c!641219 ((_ is Union!10847) r!26326))))

(declare-fun b!3711743 () Bool)

(assert (=> b!3711743 (= e!2298617 e!2298618)))

(declare-fun res!1509320 () Bool)

(assert (=> b!3711743 (=> (not res!1509320) (not e!2298618))))

(assert (=> b!3711743 (= res!1509320 call!268521)))

(declare-fun b!3711744 () Bool)

(declare-fun res!1509318 () Bool)

(assert (=> b!3711744 (=> (not res!1509318) (not e!2298616))))

(assert (=> b!3711744 (= res!1509318 call!268520)))

(assert (=> b!3711744 (= e!2298615 e!2298616)))

(declare-fun bm!268517 () Bool)

(assert (=> bm!268517 (= call!268521 call!268522)))

(declare-fun b!3711745 () Bool)

(assert (=> b!3711745 (= e!2298614 e!2298612)))

(declare-fun res!1509322 () Bool)

(assert (=> b!3711745 (= res!1509322 (not (nullable!3770 (reg!11176 r!26326))))))

(assert (=> b!3711745 (=> (not res!1509322) (not e!2298612))))

(assert (= (and d!1087201 (not res!1509321)) b!3711739))

(assert (= (and b!3711739 c!641220) b!3711745))

(assert (= (and b!3711739 (not c!641220)) b!3711742))

(assert (= (and b!3711745 res!1509322) b!3711738))

(assert (= (and b!3711742 c!641219) b!3711744))

(assert (= (and b!3711742 (not c!641219)) b!3711737))

(assert (= (and b!3711744 res!1509318) b!3711741))

(assert (= (and b!3711737 (not res!1509319)) b!3711743))

(assert (= (and b!3711743 res!1509320) b!3711740))

(assert (= (or b!3711741 b!3711743) bm!268517))

(assert (= (or b!3711744 b!3711740) bm!268515))

(assert (= (or b!3711738 bm!268517) bm!268516))

(declare-fun m!4218809 () Bool)

(assert (=> bm!268515 m!4218809))

(declare-fun m!4218811 () Bool)

(assert (=> bm!268516 m!4218811))

(declare-fun m!4218813 () Bool)

(assert (=> b!3711745 m!4218813))

(assert (=> start!349934 d!1087201))

(declare-fun d!1087203 () Bool)

(declare-fun c!641230 () Bool)

(assert (=> d!1087203 (= c!641230 (or ((_ is EmptyExpr!10847) r!26326) ((_ is EmptyLang!10847) r!26326)))))

(declare-fun e!2298629 () List!39728)

(assert (=> d!1087203 (= (usedCharacters!1110 r!26326) e!2298629)))

(declare-fun b!3711762 () Bool)

(declare-fun c!641231 () Bool)

(assert (=> b!3711762 (= c!641231 ((_ is Star!10847) r!26326))))

(declare-fun e!2298628 () List!39728)

(declare-fun e!2298630 () List!39728)

(assert (=> b!3711762 (= e!2298628 e!2298630)))

(declare-fun bm!268526 () Bool)

(declare-fun call!268532 () List!39728)

(declare-fun c!641232 () Bool)

(assert (=> bm!268526 (= call!268532 (usedCharacters!1110 (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))))))

(declare-fun bm!268527 () Bool)

(declare-fun call!268533 () List!39728)

(declare-fun call!268534 () List!39728)

(declare-fun ++!9793 (List!39728 List!39728) List!39728)

(assert (=> bm!268527 (= call!268533 (++!9793 call!268532 call!268534))))

(declare-fun b!3711763 () Bool)

(assert (=> b!3711763 (= e!2298629 Nil!39604)))

(declare-fun b!3711764 () Bool)

(assert (=> b!3711764 (= e!2298628 (Cons!39604 (c!641139 r!26326) Nil!39604))))

(declare-fun b!3711765 () Bool)

(declare-fun e!2298627 () List!39728)

(assert (=> b!3711765 (= e!2298630 e!2298627)))

(assert (=> b!3711765 (= c!641232 ((_ is Union!10847) r!26326))))

(declare-fun b!3711766 () Bool)

(assert (=> b!3711766 (= e!2298627 call!268533)))

(declare-fun bm!268528 () Bool)

(declare-fun call!268531 () List!39728)

(assert (=> bm!268528 (= call!268531 (usedCharacters!1110 (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))))))

(declare-fun b!3711767 () Bool)

(assert (=> b!3711767 (= e!2298629 e!2298628)))

(declare-fun c!641229 () Bool)

(assert (=> b!3711767 (= c!641229 ((_ is ElementMatch!10847) r!26326))))

(declare-fun b!3711768 () Bool)

(assert (=> b!3711768 (= e!2298630 call!268531)))

(declare-fun bm!268529 () Bool)

(assert (=> bm!268529 (= call!268534 call!268531)))

(declare-fun b!3711769 () Bool)

(assert (=> b!3711769 (= e!2298627 call!268533)))

(assert (= (and d!1087203 c!641230) b!3711763))

(assert (= (and d!1087203 (not c!641230)) b!3711767))

(assert (= (and b!3711767 c!641229) b!3711764))

(assert (= (and b!3711767 (not c!641229)) b!3711762))

(assert (= (and b!3711762 c!641231) b!3711768))

(assert (= (and b!3711762 (not c!641231)) b!3711765))

(assert (= (and b!3711765 c!641232) b!3711766))

(assert (= (and b!3711765 (not c!641232)) b!3711769))

(assert (= (or b!3711766 b!3711769) bm!268526))

(assert (= (or b!3711766 b!3711769) bm!268529))

(assert (= (or b!3711766 b!3711769) bm!268527))

(assert (= (or b!3711768 bm!268529) bm!268528))

(declare-fun m!4218815 () Bool)

(assert (=> bm!268526 m!4218815))

(declare-fun m!4218817 () Bool)

(assert (=> bm!268527 m!4218817))

(declare-fun m!4218819 () Bool)

(assert (=> bm!268528 m!4218819))

(assert (=> b!3711501 d!1087203))

(declare-fun d!1087205 () Bool)

(declare-fun lt!1296906 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5730 (List!39728) (InoxSet C!21880))

(assert (=> d!1087205 (= lt!1296906 (select (content!5730 (usedCharacters!1110 (regOne!22207 r!26326))) c!13576))))

(declare-fun e!2298635 () Bool)

(assert (=> d!1087205 (= lt!1296906 e!2298635)))

(declare-fun res!1509327 () Bool)

(assert (=> d!1087205 (=> (not res!1509327) (not e!2298635))))

(assert (=> d!1087205 (= res!1509327 ((_ is Cons!39604) (usedCharacters!1110 (regOne!22207 r!26326))))))

(assert (=> d!1087205 (= (contains!7940 (usedCharacters!1110 (regOne!22207 r!26326)) c!13576) lt!1296906)))

(declare-fun b!3711774 () Bool)

(declare-fun e!2298636 () Bool)

(assert (=> b!3711774 (= e!2298635 e!2298636)))

(declare-fun res!1509328 () Bool)

(assert (=> b!3711774 (=> res!1509328 e!2298636)))

(assert (=> b!3711774 (= res!1509328 (= (h!45024 (usedCharacters!1110 (regOne!22207 r!26326))) c!13576))))

(declare-fun b!3711775 () Bool)

(assert (=> b!3711775 (= e!2298636 (contains!7940 (t!302411 (usedCharacters!1110 (regOne!22207 r!26326))) c!13576))))

(assert (= (and d!1087205 res!1509327) b!3711774))

(assert (= (and b!3711774 (not res!1509328)) b!3711775))

(assert (=> d!1087205 m!4218679))

(declare-fun m!4218821 () Bool)

(assert (=> d!1087205 m!4218821))

(declare-fun m!4218823 () Bool)

(assert (=> d!1087205 m!4218823))

(declare-fun m!4218825 () Bool)

(assert (=> b!3711775 m!4218825))

(assert (=> b!3711501 d!1087205))

(declare-fun d!1087207 () Bool)

(declare-fun c!641234 () Bool)

(assert (=> d!1087207 (= c!641234 (or ((_ is EmptyExpr!10847) (regOne!22207 r!26326)) ((_ is EmptyLang!10847) (regOne!22207 r!26326))))))

(declare-fun e!2298639 () List!39728)

(assert (=> d!1087207 (= (usedCharacters!1110 (regOne!22207 r!26326)) e!2298639)))

(declare-fun b!3711776 () Bool)

(declare-fun c!641235 () Bool)

(assert (=> b!3711776 (= c!641235 ((_ is Star!10847) (regOne!22207 r!26326)))))

(declare-fun e!2298638 () List!39728)

(declare-fun e!2298640 () List!39728)

(assert (=> b!3711776 (= e!2298638 e!2298640)))

(declare-fun bm!268530 () Bool)

(declare-fun call!268536 () List!39728)

(declare-fun c!641236 () Bool)

(assert (=> bm!268530 (= call!268536 (usedCharacters!1110 (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))

(declare-fun bm!268531 () Bool)

(declare-fun call!268537 () List!39728)

(declare-fun call!268538 () List!39728)

(assert (=> bm!268531 (= call!268537 (++!9793 call!268536 call!268538))))

(declare-fun b!3711777 () Bool)

(assert (=> b!3711777 (= e!2298639 Nil!39604)))

(declare-fun b!3711778 () Bool)

(assert (=> b!3711778 (= e!2298638 (Cons!39604 (c!641139 (regOne!22207 r!26326)) Nil!39604))))

(declare-fun b!3711779 () Bool)

(declare-fun e!2298637 () List!39728)

(assert (=> b!3711779 (= e!2298640 e!2298637)))

(assert (=> b!3711779 (= c!641236 ((_ is Union!10847) (regOne!22207 r!26326)))))

(declare-fun b!3711780 () Bool)

(assert (=> b!3711780 (= e!2298637 call!268537)))

(declare-fun bm!268532 () Bool)

(declare-fun call!268535 () List!39728)

(assert (=> bm!268532 (= call!268535 (usedCharacters!1110 (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))

(declare-fun b!3711781 () Bool)

(assert (=> b!3711781 (= e!2298639 e!2298638)))

(declare-fun c!641233 () Bool)

(assert (=> b!3711781 (= c!641233 ((_ is ElementMatch!10847) (regOne!22207 r!26326)))))

(declare-fun b!3711782 () Bool)

(assert (=> b!3711782 (= e!2298640 call!268535)))

(declare-fun bm!268533 () Bool)

(assert (=> bm!268533 (= call!268538 call!268535)))

(declare-fun b!3711783 () Bool)

(assert (=> b!3711783 (= e!2298637 call!268537)))

(assert (= (and d!1087207 c!641234) b!3711777))

(assert (= (and d!1087207 (not c!641234)) b!3711781))

(assert (= (and b!3711781 c!641233) b!3711778))

(assert (= (and b!3711781 (not c!641233)) b!3711776))

(assert (= (and b!3711776 c!641235) b!3711782))

(assert (= (and b!3711776 (not c!641235)) b!3711779))

(assert (= (and b!3711779 c!641236) b!3711780))

(assert (= (and b!3711779 (not c!641236)) b!3711783))

(assert (= (or b!3711780 b!3711783) bm!268530))

(assert (= (or b!3711780 b!3711783) bm!268533))

(assert (= (or b!3711780 b!3711783) bm!268531))

(assert (= (or b!3711782 bm!268533) bm!268532))

(declare-fun m!4218827 () Bool)

(assert (=> bm!268530 m!4218827))

(declare-fun m!4218829 () Bool)

(assert (=> bm!268531 m!4218829))

(declare-fun m!4218831 () Bool)

(assert (=> bm!268532 m!4218831))

(assert (=> b!3711501 d!1087207))

(declare-fun d!1087209 () Bool)

(assert (=> d!1087209 (contains!7940 (usedCharacters!1110 (regOne!22207 r!26326)) c!13576)))

(declare-fun lt!1296909 () Unit!57492)

(declare-fun choose!22174 (Regex!10847 C!21880 List!39728) Unit!57492)

(assert (=> d!1087209 (= lt!1296909 (choose!22174 (regOne!22207 r!26326) c!13576 tl!3933))))

(assert (=> d!1087209 (validRegex!4954 (regOne!22207 r!26326))))

(assert (=> d!1087209 (= (lemmaDerivativeAfterDerivativeStepIsNullableThenUsedCharsContainsHead!4 (regOne!22207 r!26326) c!13576 tl!3933) lt!1296909)))

(declare-fun bs!574753 () Bool)

(assert (= bs!574753 d!1087209))

(assert (=> bs!574753 m!4218679))

(assert (=> bs!574753 m!4218679))

(assert (=> bs!574753 m!4218683))

(declare-fun m!4218833 () Bool)

(assert (=> bs!574753 m!4218833))

(assert (=> bs!574753 m!4218691))

(assert (=> b!3711501 d!1087209))

(declare-fun d!1087211 () Bool)

(declare-fun lt!1296910 () Bool)

(assert (=> d!1087211 (= lt!1296910 (select (content!5730 (usedCharacters!1110 r!26326)) c!13576))))

(declare-fun e!2298641 () Bool)

(assert (=> d!1087211 (= lt!1296910 e!2298641)))

(declare-fun res!1509329 () Bool)

(assert (=> d!1087211 (=> (not res!1509329) (not e!2298641))))

(assert (=> d!1087211 (= res!1509329 ((_ is Cons!39604) (usedCharacters!1110 r!26326)))))

(assert (=> d!1087211 (= (contains!7940 (usedCharacters!1110 r!26326) c!13576) lt!1296910)))

(declare-fun b!3711784 () Bool)

(declare-fun e!2298642 () Bool)

(assert (=> b!3711784 (= e!2298641 e!2298642)))

(declare-fun res!1509330 () Bool)

(assert (=> b!3711784 (=> res!1509330 e!2298642)))

(assert (=> b!3711784 (= res!1509330 (= (h!45024 (usedCharacters!1110 r!26326)) c!13576))))

(declare-fun b!3711785 () Bool)

(assert (=> b!3711785 (= e!2298642 (contains!7940 (t!302411 (usedCharacters!1110 r!26326)) c!13576))))

(assert (= (and d!1087211 res!1509329) b!3711784))

(assert (= (and b!3711784 (not res!1509330)) b!3711785))

(assert (=> d!1087211 m!4218675))

(declare-fun m!4218835 () Bool)

(assert (=> d!1087211 m!4218835))

(declare-fun m!4218837 () Bool)

(assert (=> d!1087211 m!4218837))

(declare-fun m!4218839 () Bool)

(assert (=> b!3711785 m!4218839))

(assert (=> b!3711501 d!1087211))

(declare-fun e!2298645 () Bool)

(assert (=> b!3711494 (= tp!1129552 e!2298645)))

(declare-fun b!3711798 () Bool)

(declare-fun tp!1129606 () Bool)

(assert (=> b!3711798 (= e!2298645 tp!1129606)))

(declare-fun b!3711799 () Bool)

(declare-fun tp!1129607 () Bool)

(declare-fun tp!1129605 () Bool)

(assert (=> b!3711799 (= e!2298645 (and tp!1129607 tp!1129605))))

(declare-fun b!3711797 () Bool)

(declare-fun tp!1129609 () Bool)

(declare-fun tp!1129608 () Bool)

(assert (=> b!3711797 (= e!2298645 (and tp!1129609 tp!1129608))))

(declare-fun b!3711796 () Bool)

(assert (=> b!3711796 (= e!2298645 tp_is_empty!18709)))

(assert (= (and b!3711494 ((_ is ElementMatch!10847) (regOne!22207 r!26326))) b!3711796))

(assert (= (and b!3711494 ((_ is Concat!17118) (regOne!22207 r!26326))) b!3711797))

(assert (= (and b!3711494 ((_ is Star!10847) (regOne!22207 r!26326))) b!3711798))

(assert (= (and b!3711494 ((_ is Union!10847) (regOne!22207 r!26326))) b!3711799))

(declare-fun e!2298646 () Bool)

(assert (=> b!3711494 (= tp!1129556 e!2298646)))

(declare-fun b!3711802 () Bool)

(declare-fun tp!1129611 () Bool)

(assert (=> b!3711802 (= e!2298646 tp!1129611)))

(declare-fun b!3711803 () Bool)

(declare-fun tp!1129612 () Bool)

(declare-fun tp!1129610 () Bool)

(assert (=> b!3711803 (= e!2298646 (and tp!1129612 tp!1129610))))

(declare-fun b!3711801 () Bool)

(declare-fun tp!1129614 () Bool)

(declare-fun tp!1129613 () Bool)

(assert (=> b!3711801 (= e!2298646 (and tp!1129614 tp!1129613))))

(declare-fun b!3711800 () Bool)

(assert (=> b!3711800 (= e!2298646 tp_is_empty!18709)))

(assert (= (and b!3711494 ((_ is ElementMatch!10847) (regTwo!22207 r!26326))) b!3711800))

(assert (= (and b!3711494 ((_ is Concat!17118) (regTwo!22207 r!26326))) b!3711801))

(assert (= (and b!3711494 ((_ is Star!10847) (regTwo!22207 r!26326))) b!3711802))

(assert (= (and b!3711494 ((_ is Union!10847) (regTwo!22207 r!26326))) b!3711803))

(declare-fun b!3711808 () Bool)

(declare-fun e!2298649 () Bool)

(declare-fun tp!1129617 () Bool)

(assert (=> b!3711808 (= e!2298649 (and tp_is_empty!18709 tp!1129617))))

(assert (=> b!3711500 (= tp!1129551 e!2298649)))

(assert (= (and b!3711500 ((_ is Cons!39604) (t!302411 tl!3933))) b!3711808))

(declare-fun e!2298650 () Bool)

(assert (=> b!3711502 (= tp!1129555 e!2298650)))

(declare-fun b!3711811 () Bool)

(declare-fun tp!1129619 () Bool)

(assert (=> b!3711811 (= e!2298650 tp!1129619)))

(declare-fun b!3711812 () Bool)

(declare-fun tp!1129620 () Bool)

(declare-fun tp!1129618 () Bool)

(assert (=> b!3711812 (= e!2298650 (and tp!1129620 tp!1129618))))

(declare-fun b!3711810 () Bool)

(declare-fun tp!1129622 () Bool)

(declare-fun tp!1129621 () Bool)

(assert (=> b!3711810 (= e!2298650 (and tp!1129622 tp!1129621))))

(declare-fun b!3711809 () Bool)

(assert (=> b!3711809 (= e!2298650 tp_is_empty!18709)))

(assert (= (and b!3711502 ((_ is ElementMatch!10847) (regOne!22206 r!26326))) b!3711809))

(assert (= (and b!3711502 ((_ is Concat!17118) (regOne!22206 r!26326))) b!3711810))

(assert (= (and b!3711502 ((_ is Star!10847) (regOne!22206 r!26326))) b!3711811))

(assert (= (and b!3711502 ((_ is Union!10847) (regOne!22206 r!26326))) b!3711812))

(declare-fun e!2298651 () Bool)

(assert (=> b!3711502 (= tp!1129553 e!2298651)))

(declare-fun b!3711815 () Bool)

(declare-fun tp!1129624 () Bool)

(assert (=> b!3711815 (= e!2298651 tp!1129624)))

(declare-fun b!3711816 () Bool)

(declare-fun tp!1129625 () Bool)

(declare-fun tp!1129623 () Bool)

(assert (=> b!3711816 (= e!2298651 (and tp!1129625 tp!1129623))))

(declare-fun b!3711814 () Bool)

(declare-fun tp!1129627 () Bool)

(declare-fun tp!1129626 () Bool)

(assert (=> b!3711814 (= e!2298651 (and tp!1129627 tp!1129626))))

(declare-fun b!3711813 () Bool)

(assert (=> b!3711813 (= e!2298651 tp_is_empty!18709)))

(assert (= (and b!3711502 ((_ is ElementMatch!10847) (regTwo!22206 r!26326))) b!3711813))

(assert (= (and b!3711502 ((_ is Concat!17118) (regTwo!22206 r!26326))) b!3711814))

(assert (= (and b!3711502 ((_ is Star!10847) (regTwo!22206 r!26326))) b!3711815))

(assert (= (and b!3711502 ((_ is Union!10847) (regTwo!22206 r!26326))) b!3711816))

(declare-fun e!2298652 () Bool)

(assert (=> b!3711496 (= tp!1129554 e!2298652)))

(declare-fun b!3711819 () Bool)

(declare-fun tp!1129629 () Bool)

(assert (=> b!3711819 (= e!2298652 tp!1129629)))

(declare-fun b!3711820 () Bool)

(declare-fun tp!1129630 () Bool)

(declare-fun tp!1129628 () Bool)

(assert (=> b!3711820 (= e!2298652 (and tp!1129630 tp!1129628))))

(declare-fun b!3711818 () Bool)

(declare-fun tp!1129632 () Bool)

(declare-fun tp!1129631 () Bool)

(assert (=> b!3711818 (= e!2298652 (and tp!1129632 tp!1129631))))

(declare-fun b!3711817 () Bool)

(assert (=> b!3711817 (= e!2298652 tp_is_empty!18709)))

(assert (= (and b!3711496 ((_ is ElementMatch!10847) (reg!11176 r!26326))) b!3711817))

(assert (= (and b!3711496 ((_ is Concat!17118) (reg!11176 r!26326))) b!3711818))

(assert (= (and b!3711496 ((_ is Star!10847) (reg!11176 r!26326))) b!3711819))

(assert (= (and b!3711496 ((_ is Union!10847) (reg!11176 r!26326))) b!3711820))

(check-sat (not b!3711814) (not b!3711725) (not b!3711634) (not bm!268466) (not b!3711819) (not b!3711815) (not b!3711745) (not bm!268513) (not bm!268512) (not b!3711812) (not b!3711801) (not bm!268530) (not b!3711820) (not bm!268532) (not b!3711810) (not b!3711582) (not b!3711816) (not b!3711808) (not b!3711803) (not bm!268516) (not bm!268465) (not b!3711775) (not d!1087211) (not d!1087171) (not b!3711802) (not d!1087205) (not bm!268509) (not b!3711811) (not d!1087197) (not b!3711785) (not b!3711730) (not b!3711718) (not bm!268527) tp_is_empty!18709 (not bm!268528) (not d!1087209) (not bm!268526) (not bm!268508) (not bm!268515) (not d!1087195) (not d!1087199) (not b!3711798) (not b!3711818) (not b!3711797) (not b!3711799) (not bm!268531) (not d!1087185) (not d!1087173))
(check-sat)
(get-model)

(declare-fun b!3711887 () Bool)

(declare-fun res!1509364 () Bool)

(declare-fun e!2298707 () Bool)

(assert (=> b!3711887 (=> res!1509364 e!2298707)))

(assert (=> b!3711887 (= res!1509364 (not ((_ is Concat!17118) (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))

(declare-fun e!2298705 () Bool)

(assert (=> b!3711887 (= e!2298705 e!2298707)))

(declare-fun b!3711889 () Bool)

(declare-fun e!2298703 () Bool)

(declare-fun e!2298704 () Bool)

(assert (=> b!3711889 (= e!2298703 e!2298704)))

(declare-fun c!641257 () Bool)

(assert (=> b!3711889 (= c!641257 ((_ is Star!10847) (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))

(declare-fun b!3711890 () Bool)

(declare-fun e!2298708 () Bool)

(declare-fun call!268558 () Bool)

(assert (=> b!3711890 (= e!2298708 call!268558)))

(declare-fun bm!268553 () Bool)

(declare-fun c!641256 () Bool)

(assert (=> bm!268553 (= call!268558 (validRegex!4954 (ite c!641256 (regOne!22207 (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))) (regTwo!22206 (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))))

(declare-fun b!3711891 () Bool)

(declare-fun e!2298706 () Bool)

(declare-fun call!268559 () Bool)

(assert (=> b!3711891 (= e!2298706 call!268559)))

(declare-fun call!268560 () Bool)

(declare-fun bm!268554 () Bool)

(assert (=> bm!268554 (= call!268560 (validRegex!4954 (ite c!641257 (reg!11176 (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))) (ite c!641256 (regTwo!22207 (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))) (regOne!22206 (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))))

(declare-fun b!3711888 () Bool)

(declare-fun e!2298702 () Bool)

(assert (=> b!3711888 (= e!2298702 call!268560)))

(declare-fun d!1087229 () Bool)

(declare-fun res!1509366 () Bool)

(assert (=> d!1087229 (=> res!1509366 e!2298703)))

(assert (=> d!1087229 (= res!1509366 ((_ is ElementMatch!10847) (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))

(assert (=> d!1087229 (= (validRegex!4954 (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))) e!2298703)))

(declare-fun b!3711892 () Bool)

(assert (=> b!3711892 (= e!2298704 e!2298705)))

(assert (=> b!3711892 (= c!641256 ((_ is Union!10847) (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))

(declare-fun b!3711893 () Bool)

(assert (=> b!3711893 (= e!2298707 e!2298708)))

(declare-fun res!1509365 () Bool)

(assert (=> b!3711893 (=> (not res!1509365) (not e!2298708))))

(assert (=> b!3711893 (= res!1509365 call!268559)))

(declare-fun b!3711894 () Bool)

(declare-fun res!1509363 () Bool)

(assert (=> b!3711894 (=> (not res!1509363) (not e!2298706))))

(assert (=> b!3711894 (= res!1509363 call!268558)))

(assert (=> b!3711894 (= e!2298705 e!2298706)))

(declare-fun bm!268555 () Bool)

(assert (=> bm!268555 (= call!268559 call!268560)))

(declare-fun b!3711895 () Bool)

(assert (=> b!3711895 (= e!2298704 e!2298702)))

(declare-fun res!1509367 () Bool)

(assert (=> b!3711895 (= res!1509367 (not (nullable!3770 (reg!11176 (ite c!641163 (regOne!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))))

(assert (=> b!3711895 (=> (not res!1509367) (not e!2298702))))

(assert (= (and d!1087229 (not res!1509366)) b!3711889))

(assert (= (and b!3711889 c!641257) b!3711895))

(assert (= (and b!3711889 (not c!641257)) b!3711892))

(assert (= (and b!3711895 res!1509367) b!3711888))

(assert (= (and b!3711892 c!641256) b!3711894))

(assert (= (and b!3711892 (not c!641256)) b!3711887))

(assert (= (and b!3711894 res!1509363) b!3711891))

(assert (= (and b!3711887 (not res!1509364)) b!3711893))

(assert (= (and b!3711893 res!1509365) b!3711890))

(assert (= (or b!3711891 b!3711893) bm!268555))

(assert (= (or b!3711894 b!3711890) bm!268553))

(assert (= (or b!3711888 bm!268555) bm!268554))

(declare-fun m!4218889 () Bool)

(assert (=> bm!268553 m!4218889))

(declare-fun m!4218891 () Bool)

(assert (=> bm!268554 m!4218891))

(declare-fun m!4218893 () Bool)

(assert (=> b!3711895 m!4218893))

(assert (=> bm!268465 d!1087229))

(declare-fun b!3711969 () Bool)

(declare-fun res!1509399 () Bool)

(declare-fun e!2298759 () Bool)

(assert (=> b!3711969 (=> (not res!1509399) (not e!2298759))))

(declare-fun lt!1296916 () List!39728)

(declare-fun size!30013 (List!39728) Int)

(assert (=> b!3711969 (= res!1509399 (= (size!30013 lt!1296916) (+ (size!30013 call!268536) (size!30013 call!268538))))))

(declare-fun b!3711970 () Bool)

(assert (=> b!3711970 (= e!2298759 (or (not (= call!268538 Nil!39604)) (= lt!1296916 call!268536)))))

(declare-fun b!3711967 () Bool)

(declare-fun e!2298758 () List!39728)

(assert (=> b!3711967 (= e!2298758 call!268538)))

(declare-fun d!1087235 () Bool)

(assert (=> d!1087235 e!2298759))

(declare-fun res!1509400 () Bool)

(assert (=> d!1087235 (=> (not res!1509400) (not e!2298759))))

(assert (=> d!1087235 (= res!1509400 (= (content!5730 lt!1296916) ((_ map or) (content!5730 call!268536) (content!5730 call!268538))))))

(assert (=> d!1087235 (= lt!1296916 e!2298758)))

(declare-fun c!641278 () Bool)

(assert (=> d!1087235 (= c!641278 ((_ is Nil!39604) call!268536))))

(assert (=> d!1087235 (= (++!9793 call!268536 call!268538) lt!1296916)))

(declare-fun b!3711968 () Bool)

(assert (=> b!3711968 (= e!2298758 (Cons!39604 (h!45024 call!268536) (++!9793 (t!302411 call!268536) call!268538)))))

(assert (= (and d!1087235 c!641278) b!3711967))

(assert (= (and d!1087235 (not c!641278)) b!3711968))

(assert (= (and d!1087235 res!1509400) b!3711969))

(assert (= (and b!3711969 res!1509399) b!3711970))

(declare-fun m!4218935 () Bool)

(assert (=> b!3711969 m!4218935))

(declare-fun m!4218937 () Bool)

(assert (=> b!3711969 m!4218937))

(declare-fun m!4218939 () Bool)

(assert (=> b!3711969 m!4218939))

(declare-fun m!4218941 () Bool)

(assert (=> d!1087235 m!4218941))

(declare-fun m!4218943 () Bool)

(assert (=> d!1087235 m!4218943))

(declare-fun m!4218945 () Bool)

(assert (=> d!1087235 m!4218945))

(declare-fun m!4218947 () Bool)

(assert (=> b!3711968 m!4218947))

(assert (=> bm!268531 d!1087235))

(declare-fun d!1087251 () Bool)

(declare-fun lt!1296917 () Regex!10847)

(assert (=> d!1087251 (validRegex!4954 lt!1296917)))

(declare-fun e!2298760 () Regex!10847)

(assert (=> d!1087251 (= lt!1296917 e!2298760)))

(declare-fun c!641279 () Bool)

(assert (=> d!1087251 (= c!641279 ((_ is Cons!39604) (t!302411 tl!3933)))))

(assert (=> d!1087251 (validRegex!4954 (derivativeStep!3312 (derivativeStep!3312 r!26326 c!13576) (h!45024 tl!3933)))))

(assert (=> d!1087251 (= (derivative!361 (derivativeStep!3312 (derivativeStep!3312 r!26326 c!13576) (h!45024 tl!3933)) (t!302411 tl!3933)) lt!1296917)))

(declare-fun b!3711971 () Bool)

(assert (=> b!3711971 (= e!2298760 (derivative!361 (derivativeStep!3312 (derivativeStep!3312 (derivativeStep!3312 r!26326 c!13576) (h!45024 tl!3933)) (h!45024 (t!302411 tl!3933))) (t!302411 (t!302411 tl!3933))))))

(declare-fun b!3711972 () Bool)

(assert (=> b!3711972 (= e!2298760 (derivativeStep!3312 (derivativeStep!3312 r!26326 c!13576) (h!45024 tl!3933)))))

(assert (= (and d!1087251 c!641279) b!3711971))

(assert (= (and d!1087251 (not c!641279)) b!3711972))

(declare-fun m!4218949 () Bool)

(assert (=> d!1087251 m!4218949))

(assert (=> d!1087251 m!4218753))

(declare-fun m!4218951 () Bool)

(assert (=> d!1087251 m!4218951))

(assert (=> b!3711971 m!4218753))

(declare-fun m!4218953 () Bool)

(assert (=> b!3711971 m!4218953))

(assert (=> b!3711971 m!4218953))

(declare-fun m!4218955 () Bool)

(assert (=> b!3711971 m!4218955))

(assert (=> b!3711634 d!1087251))

(declare-fun bm!268579 () Bool)

(declare-fun call!268585 () Regex!10847)

(declare-fun call!268586 () Regex!10847)

(assert (=> bm!268579 (= call!268585 call!268586)))

(declare-fun b!3711977 () Bool)

(declare-fun e!2298763 () Regex!10847)

(declare-fun e!2298767 () Regex!10847)

(assert (=> b!3711977 (= e!2298763 e!2298767)))

(declare-fun c!641286 () Bool)

(assert (=> b!3711977 (= c!641286 ((_ is Star!10847) (derivativeStep!3312 r!26326 c!13576)))))

(declare-fun b!3711978 () Bool)

(declare-fun e!2298768 () Regex!10847)

(assert (=> b!3711978 (= e!2298768 (Union!10847 (Concat!17118 call!268585 (regTwo!22206 (derivativeStep!3312 r!26326 c!13576))) EmptyLang!10847))))

(declare-fun b!3711981 () Bool)

(declare-fun e!2298769 () Regex!10847)

(assert (=> b!3711981 (= e!2298769 EmptyLang!10847)))

(declare-fun b!3711982 () Bool)

(declare-fun c!641285 () Bool)

(assert (=> b!3711982 (= c!641285 (nullable!3770 (regOne!22206 (derivativeStep!3312 r!26326 c!13576))))))

(assert (=> b!3711982 (= e!2298767 e!2298768)))

(declare-fun b!3711983 () Bool)

(declare-fun e!2298764 () Regex!10847)

(assert (=> b!3711983 (= e!2298769 e!2298764)))

(declare-fun c!641283 () Bool)

(assert (=> b!3711983 (= c!641283 ((_ is ElementMatch!10847) (derivativeStep!3312 r!26326 c!13576)))))

(declare-fun b!3711984 () Bool)

(declare-fun call!268587 () Regex!10847)

(assert (=> b!3711984 (= e!2298763 (Union!10847 call!268586 call!268587))))

(declare-fun c!641284 () Bool)

(declare-fun bm!268580 () Bool)

(assert (=> bm!268580 (= call!268587 (derivativeStep!3312 (ite c!641284 (regTwo!22207 (derivativeStep!3312 r!26326 c!13576)) (ite c!641286 (reg!11176 (derivativeStep!3312 r!26326 c!13576)) (regTwo!22206 (derivativeStep!3312 r!26326 c!13576)))) (h!45024 tl!3933)))))

(declare-fun b!3711985 () Bool)

(assert (=> b!3711985 (= e!2298764 (ite (= (h!45024 tl!3933) (c!641139 (derivativeStep!3312 r!26326 c!13576))) EmptyExpr!10847 EmptyLang!10847))))

(declare-fun bm!268581 () Bool)

(assert (=> bm!268581 (= call!268586 (derivativeStep!3312 (ite c!641284 (regOne!22207 (derivativeStep!3312 r!26326 c!13576)) (regOne!22206 (derivativeStep!3312 r!26326 c!13576))) (h!45024 tl!3933)))))

(declare-fun d!1087253 () Bool)

(declare-fun lt!1296920 () Regex!10847)

(assert (=> d!1087253 (validRegex!4954 lt!1296920)))

(assert (=> d!1087253 (= lt!1296920 e!2298769)))

(declare-fun c!641282 () Bool)

(assert (=> d!1087253 (= c!641282 (or ((_ is EmptyExpr!10847) (derivativeStep!3312 r!26326 c!13576)) ((_ is EmptyLang!10847) (derivativeStep!3312 r!26326 c!13576))))))

(assert (=> d!1087253 (validRegex!4954 (derivativeStep!3312 r!26326 c!13576))))

(assert (=> d!1087253 (= (derivativeStep!3312 (derivativeStep!3312 r!26326 c!13576) (h!45024 tl!3933)) lt!1296920)))

(declare-fun bm!268582 () Bool)

(declare-fun call!268584 () Regex!10847)

(assert (=> bm!268582 (= call!268584 call!268587)))

(declare-fun b!3711986 () Bool)

(assert (=> b!3711986 (= e!2298767 (Concat!17118 call!268584 (derivativeStep!3312 r!26326 c!13576)))))

(declare-fun b!3711987 () Bool)

(assert (=> b!3711987 (= e!2298768 (Union!10847 (Concat!17118 call!268585 (regTwo!22206 (derivativeStep!3312 r!26326 c!13576))) call!268584))))

(declare-fun b!3711988 () Bool)

(assert (=> b!3711988 (= c!641284 ((_ is Union!10847) (derivativeStep!3312 r!26326 c!13576)))))

(assert (=> b!3711988 (= e!2298764 e!2298763)))

(assert (= (and d!1087253 c!641282) b!3711981))

(assert (= (and d!1087253 (not c!641282)) b!3711983))

(assert (= (and b!3711983 c!641283) b!3711985))

(assert (= (and b!3711983 (not c!641283)) b!3711988))

(assert (= (and b!3711988 c!641284) b!3711984))

(assert (= (and b!3711988 (not c!641284)) b!3711977))

(assert (= (and b!3711977 c!641286) b!3711986))

(assert (= (and b!3711977 (not c!641286)) b!3711982))

(assert (= (and b!3711982 c!641285) b!3711987))

(assert (= (and b!3711982 (not c!641285)) b!3711978))

(assert (= (or b!3711987 b!3711978) bm!268579))

(assert (= (or b!3711986 b!3711987) bm!268582))

(assert (= (or b!3711984 bm!268582) bm!268580))

(assert (= (or b!3711984 bm!268579) bm!268581))

(declare-fun m!4218957 () Bool)

(assert (=> b!3711982 m!4218957))

(declare-fun m!4218959 () Bool)

(assert (=> bm!268580 m!4218959))

(declare-fun m!4218961 () Bool)

(assert (=> bm!268581 m!4218961))

(declare-fun m!4218963 () Bool)

(assert (=> d!1087253 m!4218963))

(assert (=> d!1087253 m!4218685))

(assert (=> d!1087253 m!4218751))

(assert (=> b!3711634 d!1087253))

(declare-fun b!3712054 () Bool)

(declare-fun e!2298812 () Bool)

(declare-fun e!2298816 () Bool)

(assert (=> b!3712054 (= e!2298812 e!2298816)))

(declare-fun c!641306 () Bool)

(assert (=> b!3712054 (= c!641306 ((_ is Union!10847) (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)))))

(declare-fun call!268606 () Bool)

(declare-fun bm!268601 () Bool)

(assert (=> bm!268601 (= call!268606 (nullable!3770 (ite c!641306 (regTwo!22207 (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)) (regOne!22206 (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3712055 () Bool)

(declare-fun e!2298811 () Bool)

(assert (=> b!3712055 (= e!2298811 e!2298812)))

(declare-fun res!1509430 () Bool)

(assert (=> b!3712055 (=> res!1509430 e!2298812)))

(assert (=> b!3712055 (= res!1509430 ((_ is Star!10847) (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)))))

(declare-fun b!3712056 () Bool)

(declare-fun e!2298815 () Bool)

(assert (=> b!3712056 (= e!2298815 call!268606)))

(declare-fun b!3712057 () Bool)

(declare-fun e!2298813 () Bool)

(assert (=> b!3712057 (= e!2298816 e!2298813)))

(declare-fun res!1509433 () Bool)

(assert (=> b!3712057 (= res!1509433 call!268606)))

(assert (=> b!3712057 (=> (not res!1509433) (not e!2298813))))

(declare-fun call!268607 () Bool)

(declare-fun bm!268602 () Bool)

(assert (=> bm!268602 (= call!268607 (nullable!3770 (ite c!641306 (regOne!22207 (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)) (regTwo!22206 (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)))))))

(declare-fun b!3712053 () Bool)

(declare-fun e!2298814 () Bool)

(assert (=> b!3712053 (= e!2298814 e!2298811)))

(declare-fun res!1509429 () Bool)

(assert (=> b!3712053 (=> (not res!1509429) (not e!2298811))))

(assert (=> b!3712053 (= res!1509429 (and (not ((_ is EmptyLang!10847) (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933))) (not ((_ is ElementMatch!10847) (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)))))))

(declare-fun d!1087255 () Bool)

(declare-fun res!1509431 () Bool)

(assert (=> d!1087255 (=> res!1509431 e!2298814)))

(assert (=> d!1087255 (= res!1509431 ((_ is EmptyExpr!10847) (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)))))

(assert (=> d!1087255 (= (nullableFct!1059 (derivative!361 (derivativeStep!3312 r!26326 c!13576) tl!3933)) e!2298814)))

(declare-fun b!3712058 () Bool)

(assert (=> b!3712058 (= e!2298813 call!268607)))

(declare-fun b!3712059 () Bool)

(assert (=> b!3712059 (= e!2298816 e!2298815)))

(declare-fun res!1509432 () Bool)

(assert (=> b!3712059 (= res!1509432 call!268607)))

(assert (=> b!3712059 (=> res!1509432 e!2298815)))

(assert (= (and d!1087255 (not res!1509431)) b!3712053))

(assert (= (and b!3712053 res!1509429) b!3712055))

(assert (= (and b!3712055 (not res!1509430)) b!3712054))

(assert (= (and b!3712054 c!641306) b!3712059))

(assert (= (and b!3712054 (not c!641306)) b!3712057))

(assert (= (and b!3712059 (not res!1509432)) b!3712056))

(assert (= (and b!3712057 res!1509433) b!3712058))

(assert (= (or b!3712056 b!3712057) bm!268601))

(assert (= (or b!3712059 b!3712058) bm!268602))

(declare-fun m!4219037 () Bool)

(assert (=> bm!268601 m!4219037))

(declare-fun m!4219041 () Bool)

(assert (=> bm!268602 m!4219041))

(assert (=> d!1087171 d!1087255))

(declare-fun b!3712070 () Bool)

(declare-fun res!1509435 () Bool)

(declare-fun e!2298827 () Bool)

(assert (=> b!3712070 (=> res!1509435 e!2298827)))

(assert (=> b!3712070 (= res!1509435 (not ((_ is Concat!17118) (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))))

(declare-fun e!2298825 () Bool)

(assert (=> b!3712070 (= e!2298825 e!2298827)))

(declare-fun b!3712072 () Bool)

(declare-fun e!2298823 () Bool)

(declare-fun e!2298824 () Bool)

(assert (=> b!3712072 (= e!2298823 e!2298824)))

(declare-fun c!641313 () Bool)

(assert (=> b!3712072 (= c!641313 ((_ is Star!10847) (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))

(declare-fun b!3712073 () Bool)

(declare-fun e!2298828 () Bool)

(declare-fun call!268612 () Bool)

(assert (=> b!3712073 (= e!2298828 call!268612)))

(declare-fun c!641312 () Bool)

(declare-fun bm!268607 () Bool)

(assert (=> bm!268607 (= call!268612 (validRegex!4954 (ite c!641312 (regOne!22207 (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))) (regTwo!22206 (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))))

(declare-fun b!3712074 () Bool)

(declare-fun e!2298826 () Bool)

(declare-fun call!268613 () Bool)

(assert (=> b!3712074 (= e!2298826 call!268613)))

(declare-fun bm!268608 () Bool)

(declare-fun call!268614 () Bool)

(assert (=> bm!268608 (= call!268614 (validRegex!4954 (ite c!641313 (reg!11176 (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))) (ite c!641312 (regTwo!22207 (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))) (regOne!22206 (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))))))

(declare-fun b!3712071 () Bool)

(declare-fun e!2298822 () Bool)

(assert (=> b!3712071 (= e!2298822 call!268614)))

(declare-fun d!1087275 () Bool)

(declare-fun res!1509437 () Bool)

(assert (=> d!1087275 (=> res!1509437 e!2298823)))

(assert (=> d!1087275 (= res!1509437 ((_ is ElementMatch!10847) (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))

(assert (=> d!1087275 (= (validRegex!4954 (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))) e!2298823)))

(declare-fun b!3712075 () Bool)

(assert (=> b!3712075 (= e!2298824 e!2298825)))

(assert (=> b!3712075 (= c!641312 ((_ is Union!10847) (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))

(declare-fun b!3712076 () Bool)

(assert (=> b!3712076 (= e!2298827 e!2298828)))

(declare-fun res!1509436 () Bool)

(assert (=> b!3712076 (=> (not res!1509436) (not e!2298828))))

(assert (=> b!3712076 (= res!1509436 call!268613)))

(declare-fun b!3712077 () Bool)

(declare-fun res!1509434 () Bool)

(assert (=> b!3712077 (=> (not res!1509434) (not e!2298826))))

(assert (=> b!3712077 (= res!1509434 call!268612)))

(assert (=> b!3712077 (= e!2298825 e!2298826)))

(declare-fun bm!268609 () Bool)

(assert (=> bm!268609 (= call!268613 call!268614)))

(declare-fun b!3712078 () Bool)

(assert (=> b!3712078 (= e!2298824 e!2298822)))

(declare-fun res!1509438 () Bool)

(assert (=> b!3712078 (= res!1509438 (not (nullable!3770 (reg!11176 (ite c!641164 (reg!11176 (regOne!22207 r!26326)) (ite c!641163 (regTwo!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))))

(assert (=> b!3712078 (=> (not res!1509438) (not e!2298822))))

(assert (= (and d!1087275 (not res!1509437)) b!3712072))

(assert (= (and b!3712072 c!641313) b!3712078))

(assert (= (and b!3712072 (not c!641313)) b!3712075))

(assert (= (and b!3712078 res!1509438) b!3712071))

(assert (= (and b!3712075 c!641312) b!3712077))

(assert (= (and b!3712075 (not c!641312)) b!3712070))

(assert (= (and b!3712077 res!1509434) b!3712074))

(assert (= (and b!3712070 (not res!1509435)) b!3712076))

(assert (= (and b!3712076 res!1509436) b!3712073))

(assert (= (or b!3712074 b!3712076) bm!268609))

(assert (= (or b!3712077 b!3712073) bm!268607))

(assert (= (or b!3712071 bm!268609) bm!268608))

(declare-fun m!4219053 () Bool)

(assert (=> bm!268607 m!4219053))

(declare-fun m!4219057 () Bool)

(assert (=> bm!268608 m!4219057))

(declare-fun m!4219061 () Bool)

(assert (=> b!3712078 m!4219061))

(assert (=> bm!268466 d!1087275))

(declare-fun b!3712089 () Bool)

(declare-fun res!1509440 () Bool)

(declare-fun e!2298839 () Bool)

(assert (=> b!3712089 (=> res!1509440 e!2298839)))

(assert (=> b!3712089 (= res!1509440 (not ((_ is Concat!17118) (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326)))))))

(declare-fun e!2298837 () Bool)

(assert (=> b!3712089 (= e!2298837 e!2298839)))

(declare-fun b!3712091 () Bool)

(declare-fun e!2298835 () Bool)

(declare-fun e!2298836 () Bool)

(assert (=> b!3712091 (= e!2298835 e!2298836)))

(declare-fun c!641320 () Bool)

(assert (=> b!3712091 (= c!641320 ((_ is Star!10847) (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))))))

(declare-fun b!3712092 () Bool)

(declare-fun e!2298840 () Bool)

(declare-fun call!268619 () Bool)

(assert (=> b!3712092 (= e!2298840 call!268619)))

(declare-fun bm!268614 () Bool)

(declare-fun c!641319 () Bool)

(assert (=> bm!268614 (= call!268619 (validRegex!4954 (ite c!641319 (regOne!22207 (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))) (regTwo!22206 (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))))))))

(declare-fun b!3712093 () Bool)

(declare-fun e!2298838 () Bool)

(declare-fun call!268620 () Bool)

(assert (=> b!3712093 (= e!2298838 call!268620)))

(declare-fun call!268621 () Bool)

(declare-fun bm!268615 () Bool)

(assert (=> bm!268615 (= call!268621 (validRegex!4954 (ite c!641320 (reg!11176 (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))) (ite c!641319 (regTwo!22207 (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))) (regOne!22206 (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326)))))))))

(declare-fun b!3712090 () Bool)

(declare-fun e!2298834 () Bool)

(assert (=> b!3712090 (= e!2298834 call!268621)))

(declare-fun d!1087283 () Bool)

(declare-fun res!1509442 () Bool)

(assert (=> d!1087283 (=> res!1509442 e!2298835)))

(assert (=> d!1087283 (= res!1509442 ((_ is ElementMatch!10847) (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))))))

(assert (=> d!1087283 (= (validRegex!4954 (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))) e!2298835)))

(declare-fun b!3712094 () Bool)

(assert (=> b!3712094 (= e!2298836 e!2298837)))

(assert (=> b!3712094 (= c!641319 ((_ is Union!10847) (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))))))

(declare-fun b!3712095 () Bool)

(assert (=> b!3712095 (= e!2298839 e!2298840)))

(declare-fun res!1509441 () Bool)

(assert (=> b!3712095 (=> (not res!1509441) (not e!2298840))))

(assert (=> b!3712095 (= res!1509441 call!268620)))

(declare-fun b!3712096 () Bool)

(declare-fun res!1509439 () Bool)

(assert (=> b!3712096 (=> (not res!1509439) (not e!2298838))))

(assert (=> b!3712096 (= res!1509439 call!268619)))

(assert (=> b!3712096 (= e!2298837 e!2298838)))

(declare-fun bm!268616 () Bool)

(assert (=> bm!268616 (= call!268620 call!268621)))

(declare-fun b!3712097 () Bool)

(assert (=> b!3712097 (= e!2298836 e!2298834)))

(declare-fun res!1509443 () Bool)

(assert (=> b!3712097 (= res!1509443 (not (nullable!3770 (reg!11176 (ite c!641219 (regOne!22207 r!26326) (regTwo!22206 r!26326))))))))

(assert (=> b!3712097 (=> (not res!1509443) (not e!2298834))))

(assert (= (and d!1087283 (not res!1509442)) b!3712091))

(assert (= (and b!3712091 c!641320) b!3712097))

(assert (= (and b!3712091 (not c!641320)) b!3712094))

(assert (= (and b!3712097 res!1509443) b!3712090))

(assert (= (and b!3712094 c!641319) b!3712096))

(assert (= (and b!3712094 (not c!641319)) b!3712089))

(assert (= (and b!3712096 res!1509439) b!3712093))

(assert (= (and b!3712089 (not res!1509440)) b!3712095))

(assert (= (and b!3712095 res!1509441) b!3712092))

(assert (= (or b!3712093 b!3712095) bm!268616))

(assert (= (or b!3712096 b!3712092) bm!268614))

(assert (= (or b!3712090 bm!268616) bm!268615))

(declare-fun m!4219065 () Bool)

(assert (=> bm!268614 m!4219065))

(declare-fun m!4219071 () Bool)

(assert (=> bm!268615 m!4219071))

(declare-fun m!4219073 () Bool)

(assert (=> b!3712097 m!4219073))

(assert (=> bm!268515 d!1087283))

(declare-fun d!1087287 () Bool)

(declare-fun c!641326 () Bool)

(assert (=> d!1087287 (= c!641326 (or ((_ is EmptyExpr!10847) (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))) ((_ is EmptyLang!10847) (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326))))))))

(declare-fun e!2298847 () List!39728)

(assert (=> d!1087287 (= (usedCharacters!1110 (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))) e!2298847)))

(declare-fun c!641327 () Bool)

(declare-fun b!3712107 () Bool)

(assert (=> b!3712107 (= c!641327 ((_ is Star!10847) (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))))))

(declare-fun e!2298846 () List!39728)

(declare-fun e!2298849 () List!39728)

(assert (=> b!3712107 (= e!2298846 e!2298849)))

(declare-fun c!641328 () Bool)

(declare-fun bm!268621 () Bool)

(declare-fun call!268627 () List!39728)

(assert (=> bm!268621 (= call!268627 (usedCharacters!1110 (ite c!641328 (regOne!22207 (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))) (regOne!22206 (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))))))))

(declare-fun bm!268622 () Bool)

(declare-fun call!268628 () List!39728)

(declare-fun call!268629 () List!39728)

(assert (=> bm!268622 (= call!268628 (++!9793 call!268627 call!268629))))

(declare-fun b!3712109 () Bool)

(assert (=> b!3712109 (= e!2298847 Nil!39604)))

(declare-fun b!3712110 () Bool)

(assert (=> b!3712110 (= e!2298846 (Cons!39604 (c!641139 (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))) Nil!39604))))

(declare-fun b!3712111 () Bool)

(declare-fun e!2298845 () List!39728)

(assert (=> b!3712111 (= e!2298849 e!2298845)))

(assert (=> b!3712111 (= c!641328 ((_ is Union!10847) (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))))))

(declare-fun b!3712112 () Bool)

(assert (=> b!3712112 (= e!2298845 call!268628)))

(declare-fun bm!268623 () Bool)

(declare-fun call!268626 () List!39728)

(assert (=> bm!268623 (= call!268626 (usedCharacters!1110 (ite c!641327 (reg!11176 (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))) (ite c!641328 (regTwo!22207 (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))) (regTwo!22206 (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326))))))))))

(declare-fun b!3712113 () Bool)

(assert (=> b!3712113 (= e!2298847 e!2298846)))

(declare-fun c!641325 () Bool)

(assert (=> b!3712113 (= c!641325 ((_ is ElementMatch!10847) (ite c!641231 (reg!11176 r!26326) (ite c!641232 (regTwo!22207 r!26326) (regTwo!22206 r!26326)))))))

(declare-fun b!3712114 () Bool)

(assert (=> b!3712114 (= e!2298849 call!268626)))

(declare-fun bm!268624 () Bool)

(assert (=> bm!268624 (= call!268629 call!268626)))

(declare-fun b!3712115 () Bool)

(assert (=> b!3712115 (= e!2298845 call!268628)))

(assert (= (and d!1087287 c!641326) b!3712109))

(assert (= (and d!1087287 (not c!641326)) b!3712113))

(assert (= (and b!3712113 c!641325) b!3712110))

(assert (= (and b!3712113 (not c!641325)) b!3712107))

(assert (= (and b!3712107 c!641327) b!3712114))

(assert (= (and b!3712107 (not c!641327)) b!3712111))

(assert (= (and b!3712111 c!641328) b!3712112))

(assert (= (and b!3712111 (not c!641328)) b!3712115))

(assert (= (or b!3712112 b!3712115) bm!268621))

(assert (= (or b!3712112 b!3712115) bm!268624))

(assert (= (or b!3712112 b!3712115) bm!268622))

(assert (= (or b!3712114 bm!268624) bm!268623))

(declare-fun m!4219085 () Bool)

(assert (=> bm!268621 m!4219085))

(declare-fun m!4219087 () Bool)

(assert (=> bm!268622 m!4219087))

(declare-fun m!4219089 () Bool)

(assert (=> bm!268623 m!4219089))

(assert (=> bm!268528 d!1087287))

(declare-fun d!1087293 () Bool)

(declare-fun c!641336 () Bool)

(assert (=> d!1087293 (= c!641336 (or ((_ is EmptyExpr!10847) (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) ((_ is EmptyLang!10847) (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))))

(declare-fun e!2298857 () List!39728)

(assert (=> d!1087293 (= (usedCharacters!1110 (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) e!2298857)))

(declare-fun c!641337 () Bool)

(declare-fun b!3712126 () Bool)

(assert (=> b!3712126 (= c!641337 ((_ is Star!10847) (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))

(declare-fun e!2298856 () List!39728)

(declare-fun e!2298858 () List!39728)

(assert (=> b!3712126 (= e!2298856 e!2298858)))

(declare-fun bm!268629 () Bool)

(declare-fun call!268635 () List!39728)

(declare-fun c!641338 () Bool)

(assert (=> bm!268629 (= call!268635 (usedCharacters!1110 (ite c!641338 (regOne!22207 (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) (regOne!22206 (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))))

(declare-fun bm!268630 () Bool)

(declare-fun call!268636 () List!39728)

(declare-fun call!268637 () List!39728)

(assert (=> bm!268630 (= call!268636 (++!9793 call!268635 call!268637))))

(declare-fun b!3712127 () Bool)

(assert (=> b!3712127 (= e!2298857 Nil!39604)))

(declare-fun b!3712128 () Bool)

(assert (=> b!3712128 (= e!2298856 (Cons!39604 (c!641139 (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) Nil!39604))))

(declare-fun b!3712129 () Bool)

(declare-fun e!2298855 () List!39728)

(assert (=> b!3712129 (= e!2298858 e!2298855)))

(assert (=> b!3712129 (= c!641338 ((_ is Union!10847) (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))

(declare-fun b!3712130 () Bool)

(assert (=> b!3712130 (= e!2298855 call!268636)))

(declare-fun call!268634 () List!39728)

(declare-fun bm!268631 () Bool)

(assert (=> bm!268631 (= call!268634 (usedCharacters!1110 (ite c!641337 (reg!11176 (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) (ite c!641338 (regTwo!22207 (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) (regTwo!22206 (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))))))

(declare-fun b!3712131 () Bool)

(assert (=> b!3712131 (= e!2298857 e!2298856)))

(declare-fun c!641335 () Bool)

(assert (=> b!3712131 (= c!641335 ((_ is ElementMatch!10847) (ite c!641235 (reg!11176 (regOne!22207 r!26326)) (ite c!641236 (regTwo!22207 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))

(declare-fun b!3712132 () Bool)

(assert (=> b!3712132 (= e!2298858 call!268634)))

(declare-fun bm!268632 () Bool)

(assert (=> bm!268632 (= call!268637 call!268634)))

(declare-fun b!3712133 () Bool)

(assert (=> b!3712133 (= e!2298855 call!268636)))

(assert (= (and d!1087293 c!641336) b!3712127))

(assert (= (and d!1087293 (not c!641336)) b!3712131))

(assert (= (and b!3712131 c!641335) b!3712128))

(assert (= (and b!3712131 (not c!641335)) b!3712126))

(assert (= (and b!3712126 c!641337) b!3712132))

(assert (= (and b!3712126 (not c!641337)) b!3712129))

(assert (= (and b!3712129 c!641338) b!3712130))

(assert (= (and b!3712129 (not c!641338)) b!3712133))

(assert (= (or b!3712130 b!3712133) bm!268629))

(assert (= (or b!3712130 b!3712133) bm!268632))

(assert (= (or b!3712130 b!3712133) bm!268630))

(assert (= (or b!3712132 bm!268632) bm!268631))

(declare-fun m!4219099 () Bool)

(assert (=> bm!268629 m!4219099))

(declare-fun m!4219101 () Bool)

(assert (=> bm!268630 m!4219101))

(declare-fun m!4219103 () Bool)

(assert (=> bm!268631 m!4219103))

(assert (=> bm!268532 d!1087293))

(declare-fun d!1087297 () Bool)

(assert (=> d!1087297 (= (nullable!3770 (regOne!22206 (regOne!22207 r!26326))) (nullableFct!1059 (regOne!22206 (regOne!22207 r!26326))))))

(declare-fun bs!574758 () Bool)

(assert (= bs!574758 d!1087297))

(declare-fun m!4219105 () Bool)

(assert (=> bs!574758 m!4219105))

(assert (=> b!3711730 d!1087297))

(declare-fun b!3712141 () Bool)

(declare-fun res!1509450 () Bool)

(declare-fun e!2298870 () Bool)

(assert (=> b!3712141 (=> res!1509450 e!2298870)))

(assert (=> b!3712141 (= res!1509450 (not ((_ is Concat!17118) (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326))))))))

(declare-fun e!2298868 () Bool)

(assert (=> b!3712141 (= e!2298868 e!2298870)))

(declare-fun b!3712143 () Bool)

(declare-fun e!2298866 () Bool)

(declare-fun e!2298867 () Bool)

(assert (=> b!3712143 (= e!2298866 e!2298867)))

(declare-fun c!641341 () Bool)

(assert (=> b!3712143 (= c!641341 ((_ is Star!10847) (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))))))

(declare-fun b!3712144 () Bool)

(declare-fun e!2298871 () Bool)

(declare-fun call!268640 () Bool)

(assert (=> b!3712144 (= e!2298871 call!268640)))

(declare-fun bm!268635 () Bool)

(declare-fun c!641340 () Bool)

(assert (=> bm!268635 (= call!268640 (validRegex!4954 (ite c!641340 (regOne!22207 (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))) (regTwo!22206 (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))))))))

(declare-fun b!3712145 () Bool)

(declare-fun e!2298869 () Bool)

(declare-fun call!268641 () Bool)

(assert (=> b!3712145 (= e!2298869 call!268641)))

(declare-fun call!268642 () Bool)

(declare-fun bm!268636 () Bool)

(assert (=> bm!268636 (= call!268642 (validRegex!4954 (ite c!641341 (reg!11176 (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))) (ite c!641340 (regTwo!22207 (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))) (regOne!22206 (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326))))))))))

(declare-fun b!3712142 () Bool)

(declare-fun e!2298865 () Bool)

(assert (=> b!3712142 (= e!2298865 call!268642)))

(declare-fun d!1087299 () Bool)

(declare-fun res!1509452 () Bool)

(assert (=> d!1087299 (=> res!1509452 e!2298866)))

(assert (=> d!1087299 (= res!1509452 ((_ is ElementMatch!10847) (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))))))

(assert (=> d!1087299 (= (validRegex!4954 (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))) e!2298866)))

(declare-fun b!3712146 () Bool)

(assert (=> b!3712146 (= e!2298867 e!2298868)))

(assert (=> b!3712146 (= c!641340 ((_ is Union!10847) (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))))))

(declare-fun b!3712147 () Bool)

(assert (=> b!3712147 (= e!2298870 e!2298871)))

(declare-fun res!1509451 () Bool)

(assert (=> b!3712147 (=> (not res!1509451) (not e!2298871))))

(assert (=> b!3712147 (= res!1509451 call!268641)))

(declare-fun b!3712148 () Bool)

(declare-fun res!1509449 () Bool)

(assert (=> b!3712148 (=> (not res!1509449) (not e!2298869))))

(assert (=> b!3712148 (= res!1509449 call!268640)))

(assert (=> b!3712148 (= e!2298868 e!2298869)))

(declare-fun bm!268637 () Bool)

(assert (=> bm!268637 (= call!268641 call!268642)))

(declare-fun b!3712149 () Bool)

(assert (=> b!3712149 (= e!2298867 e!2298865)))

(declare-fun res!1509453 () Bool)

(assert (=> b!3712149 (= res!1509453 (not (nullable!3770 (reg!11176 (ite c!641220 (reg!11176 r!26326) (ite c!641219 (regTwo!22207 r!26326) (regOne!22206 r!26326)))))))))

(assert (=> b!3712149 (=> (not res!1509453) (not e!2298865))))

(assert (= (and d!1087299 (not res!1509452)) b!3712143))

(assert (= (and b!3712143 c!641341) b!3712149))

(assert (= (and b!3712143 (not c!641341)) b!3712146))

(assert (= (and b!3712149 res!1509453) b!3712142))

(assert (= (and b!3712146 c!641340) b!3712148))

(assert (= (and b!3712146 (not c!641340)) b!3712141))

(assert (= (and b!3712148 res!1509449) b!3712145))

(assert (= (and b!3712141 (not res!1509450)) b!3712147))

(assert (= (and b!3712147 res!1509451) b!3712144))

(assert (= (or b!3712145 b!3712147) bm!268637))

(assert (= (or b!3712148 b!3712144) bm!268635))

(assert (= (or b!3712142 bm!268637) bm!268636))

(declare-fun m!4219111 () Bool)

(assert (=> bm!268635 m!4219111))

(declare-fun m!4219113 () Bool)

(assert (=> bm!268636 m!4219113))

(declare-fun m!4219115 () Bool)

(assert (=> b!3712149 m!4219115))

(assert (=> bm!268516 d!1087299))

(declare-fun b!3712160 () Bool)

(declare-fun res!1509455 () Bool)

(declare-fun e!2298882 () Bool)

(assert (=> b!3712160 (=> res!1509455 e!2298882)))

(assert (=> b!3712160 (= res!1509455 (not ((_ is Concat!17118) lt!1296903)))))

(declare-fun e!2298880 () Bool)

(assert (=> b!3712160 (= e!2298880 e!2298882)))

(declare-fun b!3712162 () Bool)

(declare-fun e!2298878 () Bool)

(declare-fun e!2298879 () Bool)

(assert (=> b!3712162 (= e!2298878 e!2298879)))

(declare-fun c!641348 () Bool)

(assert (=> b!3712162 (= c!641348 ((_ is Star!10847) lt!1296903))))

(declare-fun b!3712163 () Bool)

(declare-fun e!2298883 () Bool)

(declare-fun call!268647 () Bool)

(assert (=> b!3712163 (= e!2298883 call!268647)))

(declare-fun bm!268642 () Bool)

(declare-fun c!641347 () Bool)

(assert (=> bm!268642 (= call!268647 (validRegex!4954 (ite c!641347 (regOne!22207 lt!1296903) (regTwo!22206 lt!1296903))))))

(declare-fun b!3712164 () Bool)

(declare-fun e!2298881 () Bool)

(declare-fun call!268648 () Bool)

(assert (=> b!3712164 (= e!2298881 call!268648)))

(declare-fun call!268649 () Bool)

(declare-fun bm!268643 () Bool)

(assert (=> bm!268643 (= call!268649 (validRegex!4954 (ite c!641348 (reg!11176 lt!1296903) (ite c!641347 (regTwo!22207 lt!1296903) (regOne!22206 lt!1296903)))))))

(declare-fun b!3712161 () Bool)

(declare-fun e!2298877 () Bool)

(assert (=> b!3712161 (= e!2298877 call!268649)))

(declare-fun d!1087303 () Bool)

(declare-fun res!1509457 () Bool)

(assert (=> d!1087303 (=> res!1509457 e!2298878)))

(assert (=> d!1087303 (= res!1509457 ((_ is ElementMatch!10847) lt!1296903))))

(assert (=> d!1087303 (= (validRegex!4954 lt!1296903) e!2298878)))

(declare-fun b!3712165 () Bool)

(assert (=> b!3712165 (= e!2298879 e!2298880)))

(assert (=> b!3712165 (= c!641347 ((_ is Union!10847) lt!1296903))))

(declare-fun b!3712166 () Bool)

(assert (=> b!3712166 (= e!2298882 e!2298883)))

(declare-fun res!1509456 () Bool)

(assert (=> b!3712166 (=> (not res!1509456) (not e!2298883))))

(assert (=> b!3712166 (= res!1509456 call!268648)))

(declare-fun b!3712167 () Bool)

(declare-fun res!1509454 () Bool)

(assert (=> b!3712167 (=> (not res!1509454) (not e!2298881))))

(assert (=> b!3712167 (= res!1509454 call!268647)))

(assert (=> b!3712167 (= e!2298880 e!2298881)))

(declare-fun bm!268644 () Bool)

(assert (=> bm!268644 (= call!268648 call!268649)))

(declare-fun b!3712168 () Bool)

(assert (=> b!3712168 (= e!2298879 e!2298877)))

(declare-fun res!1509458 () Bool)

(assert (=> b!3712168 (= res!1509458 (not (nullable!3770 (reg!11176 lt!1296903))))))

(assert (=> b!3712168 (=> (not res!1509458) (not e!2298877))))

(assert (= (and d!1087303 (not res!1509457)) b!3712162))

(assert (= (and b!3712162 c!641348) b!3712168))

(assert (= (and b!3712162 (not c!641348)) b!3712165))

(assert (= (and b!3712168 res!1509458) b!3712161))

(assert (= (and b!3712165 c!641347) b!3712167))

(assert (= (and b!3712165 (not c!641347)) b!3712160))

(assert (= (and b!3712167 res!1509454) b!3712164))

(assert (= (and b!3712160 (not res!1509455)) b!3712166))

(assert (= (and b!3712166 res!1509456) b!3712163))

(assert (= (or b!3712164 b!3712166) bm!268644))

(assert (= (or b!3712167 b!3712163) bm!268642))

(assert (= (or b!3712161 bm!268644) bm!268643))

(declare-fun m!4219125 () Bool)

(assert (=> bm!268642 m!4219125))

(declare-fun m!4219129 () Bool)

(assert (=> bm!268643 m!4219129))

(declare-fun m!4219131 () Bool)

(assert (=> b!3712168 m!4219131))

(assert (=> d!1087199 d!1087303))

(assert (=> d!1087199 d!1087163))

(declare-fun bm!268645 () Bool)

(declare-fun call!268651 () Regex!10847)

(declare-fun call!268652 () Regex!10847)

(assert (=> bm!268645 (= call!268651 call!268652)))

(declare-fun b!3712169 () Bool)

(declare-fun e!2298884 () Regex!10847)

(declare-fun e!2298886 () Regex!10847)

(assert (=> b!3712169 (= e!2298884 e!2298886)))

(declare-fun c!641353 () Bool)

(assert (=> b!3712169 (= c!641353 ((_ is Star!10847) (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))

(declare-fun e!2298887 () Regex!10847)

(declare-fun b!3712170 () Bool)

(assert (=> b!3712170 (= e!2298887 (Union!10847 (Concat!17118 call!268651 (regTwo!22206 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))) EmptyLang!10847))))

(declare-fun b!3712171 () Bool)

(declare-fun e!2298888 () Regex!10847)

(assert (=> b!3712171 (= e!2298888 EmptyLang!10847)))

(declare-fun c!641352 () Bool)

(declare-fun b!3712172 () Bool)

(assert (=> b!3712172 (= c!641352 (nullable!3770 (regOne!22206 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))))

(assert (=> b!3712172 (= e!2298886 e!2298887)))

(declare-fun b!3712173 () Bool)

(declare-fun e!2298885 () Regex!10847)

(assert (=> b!3712173 (= e!2298888 e!2298885)))

(declare-fun c!641350 () Bool)

(assert (=> b!3712173 (= c!641350 ((_ is ElementMatch!10847) (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))

(declare-fun b!3712174 () Bool)

(declare-fun call!268653 () Regex!10847)

(assert (=> b!3712174 (= e!2298884 (Union!10847 call!268652 call!268653))))

(declare-fun c!641351 () Bool)

(declare-fun bm!268646 () Bool)

(assert (=> bm!268646 (= call!268653 (derivativeStep!3312 (ite c!641351 (regTwo!22207 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) (ite c!641353 (reg!11176 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) (regTwo!22206 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))) c!13576))))

(declare-fun b!3712175 () Bool)

(assert (=> b!3712175 (= e!2298885 (ite (= c!13576 (c!641139 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))) EmptyExpr!10847 EmptyLang!10847))))

(declare-fun bm!268647 () Bool)

(assert (=> bm!268647 (= call!268652 (derivativeStep!3312 (ite c!641351 (regOne!22207 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) (regOne!22206 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))) c!13576))))

(declare-fun d!1087307 () Bool)

(declare-fun lt!1296930 () Regex!10847)

(assert (=> d!1087307 (validRegex!4954 lt!1296930)))

(assert (=> d!1087307 (= lt!1296930 e!2298888)))

(declare-fun c!641349 () Bool)

(assert (=> d!1087307 (= c!641349 (or ((_ is EmptyExpr!10847) (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))) ((_ is EmptyLang!10847) (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))))

(assert (=> d!1087307 (validRegex!4954 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))))

(assert (=> d!1087307 (= (derivativeStep!3312 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))) c!13576) lt!1296930)))

(declare-fun bm!268648 () Bool)

(declare-fun call!268650 () Regex!10847)

(assert (=> bm!268648 (= call!268650 call!268653)))

(declare-fun b!3712176 () Bool)

(assert (=> b!3712176 (= e!2298886 (Concat!17118 call!268650 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))

(declare-fun b!3712177 () Bool)

(assert (=> b!3712177 (= e!2298887 (Union!10847 (Concat!17118 call!268651 (regTwo!22206 (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326)))))) call!268650))))

(declare-fun b!3712178 () Bool)

(assert (=> b!3712178 (= c!641351 ((_ is Union!10847) (ite c!641216 (regTwo!22207 (regOne!22207 r!26326)) (ite c!641218 (reg!11176 (regOne!22207 r!26326)) (regTwo!22206 (regOne!22207 r!26326))))))))

(assert (=> b!3712178 (= e!2298885 e!2298884)))

(assert (= (and d!1087307 c!641349) b!3712171))

(assert (= (and d!1087307 (not c!641349)) b!3712173))

(assert (= (and b!3712173 c!641350) b!3712175))

(assert (= (and b!3712173 (not c!641350)) b!3712178))

(assert (= (and b!3712178 c!641351) b!3712174))

(assert (= (and b!3712178 (not c!641351)) b!3712169))

(assert (= (and b!3712169 c!641353) b!3712176))

(assert (= (and b!3712169 (not c!641353)) b!3712172))

(assert (= (and b!3712172 c!641352) b!3712177))

(assert (= (and b!3712172 (not c!641352)) b!3712170))

(assert (= (or b!3712177 b!3712170) bm!268645))

(assert (= (or b!3712176 b!3712177) bm!268648))

(assert (= (or b!3712174 bm!268648) bm!268646))

(assert (= (or b!3712174 bm!268645) bm!268647))

(declare-fun m!4219135 () Bool)

(assert (=> b!3712172 m!4219135))

(declare-fun m!4219137 () Bool)

(assert (=> bm!268646 m!4219137))

(declare-fun m!4219139 () Bool)

(assert (=> bm!268647 m!4219139))

(declare-fun m!4219141 () Bool)

(assert (=> d!1087307 m!4219141))

(declare-fun m!4219143 () Bool)

(assert (=> d!1087307 m!4219143))

(assert (=> bm!268512 d!1087307))

(declare-fun d!1087309 () Bool)

(assert (=> d!1087309 (= (nullable!3770 (reg!11176 (regOne!22207 r!26326))) (nullableFct!1059 (reg!11176 (regOne!22207 r!26326))))))

(declare-fun bs!574760 () Bool)

(assert (= bs!574760 d!1087309))

(declare-fun m!4219145 () Bool)

(assert (=> bs!574760 m!4219145))

(assert (=> b!3711582 d!1087309))

(declare-fun b!3712204 () Bool)

(declare-fun e!2298896 () Bool)

(declare-fun e!2298900 () Bool)

(assert (=> b!3712204 (= e!2298896 e!2298900)))

(declare-fun c!641354 () Bool)

(assert (=> b!3712204 (= c!641354 ((_ is Union!10847) (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)))))

(declare-fun call!268654 () Bool)

(declare-fun bm!268649 () Bool)

(assert (=> bm!268649 (= call!268654 (nullable!3770 (ite c!641354 (regTwo!22207 (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)) (regOne!22206 (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)))))))

(declare-fun b!3712205 () Bool)

(declare-fun e!2298895 () Bool)

(assert (=> b!3712205 (= e!2298895 e!2298896)))

(declare-fun res!1509460 () Bool)

(assert (=> b!3712205 (=> res!1509460 e!2298896)))

(assert (=> b!3712205 (= res!1509460 ((_ is Star!10847) (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)))))

(declare-fun b!3712206 () Bool)

(declare-fun e!2298899 () Bool)

(assert (=> b!3712206 (= e!2298899 call!268654)))

(declare-fun b!3712207 () Bool)

(declare-fun e!2298897 () Bool)

(assert (=> b!3712207 (= e!2298900 e!2298897)))

(declare-fun res!1509463 () Bool)

(assert (=> b!3712207 (= res!1509463 call!268654)))

(assert (=> b!3712207 (=> (not res!1509463) (not e!2298897))))

(declare-fun call!268655 () Bool)

(declare-fun bm!268650 () Bool)

(assert (=> bm!268650 (= call!268655 (nullable!3770 (ite c!641354 (regOne!22207 (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)) (regTwo!22206 (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)))))))

(declare-fun b!3712203 () Bool)

(declare-fun e!2298898 () Bool)

(assert (=> b!3712203 (= e!2298898 e!2298895)))

(declare-fun res!1509459 () Bool)

(assert (=> b!3712203 (=> (not res!1509459) (not e!2298895))))

(assert (=> b!3712203 (= res!1509459 (and (not ((_ is EmptyLang!10847) (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933))) (not ((_ is ElementMatch!10847) (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)))))))

(declare-fun d!1087311 () Bool)

(declare-fun res!1509461 () Bool)

(assert (=> d!1087311 (=> res!1509461 e!2298898)))

(assert (=> d!1087311 (= res!1509461 ((_ is EmptyExpr!10847) (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)))))

(assert (=> d!1087311 (= (nullableFct!1059 (derivative!361 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) tl!3933)) e!2298898)))

(declare-fun b!3712208 () Bool)

(assert (=> b!3712208 (= e!2298897 call!268655)))

(declare-fun b!3712209 () Bool)

(assert (=> b!3712209 (= e!2298900 e!2298899)))

(declare-fun res!1509462 () Bool)

(assert (=> b!3712209 (= res!1509462 call!268655)))

(assert (=> b!3712209 (=> res!1509462 e!2298899)))

(assert (= (and d!1087311 (not res!1509461)) b!3712203))

(assert (= (and b!3712203 res!1509459) b!3712205))

(assert (= (and b!3712205 (not res!1509460)) b!3712204))

(assert (= (and b!3712204 c!641354) b!3712209))

(assert (= (and b!3712204 (not c!641354)) b!3712207))

(assert (= (and b!3712209 (not res!1509462)) b!3712206))

(assert (= (and b!3712207 res!1509463) b!3712208))

(assert (= (or b!3712206 b!3712207) bm!268649))

(assert (= (or b!3712209 b!3712208) bm!268650))

(declare-fun m!4219147 () Bool)

(assert (=> bm!268649 m!4219147))

(declare-fun m!4219149 () Bool)

(assert (=> bm!268650 m!4219149))

(assert (=> d!1087195 d!1087311))

(declare-fun d!1087313 () Bool)

(declare-fun c!641357 () Bool)

(assert (=> d!1087313 (= c!641357 ((_ is Nil!39604) (usedCharacters!1110 r!26326)))))

(declare-fun e!2298916 () (InoxSet C!21880))

(assert (=> d!1087313 (= (content!5730 (usedCharacters!1110 r!26326)) e!2298916)))

(declare-fun b!3712263 () Bool)

(assert (=> b!3712263 (= e!2298916 ((as const (Array C!21880 Bool)) false))))

(declare-fun b!3712264 () Bool)

(assert (=> b!3712264 (= e!2298916 ((_ map or) (store ((as const (Array C!21880 Bool)) false) (h!45024 (usedCharacters!1110 r!26326)) true) (content!5730 (t!302411 (usedCharacters!1110 r!26326)))))))

(assert (= (and d!1087313 c!641357) b!3712263))

(assert (= (and d!1087313 (not c!641357)) b!3712264))

(declare-fun m!4219151 () Bool)

(assert (=> b!3712264 m!4219151))

(declare-fun m!4219153 () Bool)

(assert (=> b!3712264 m!4219153))

(assert (=> d!1087211 d!1087313))

(declare-fun d!1087315 () Bool)

(assert (=> d!1087315 (= (nullable!3770 (reg!11176 r!26326)) (nullableFct!1059 (reg!11176 r!26326)))))

(declare-fun bs!574761 () Bool)

(assert (= bs!574761 d!1087315))

(declare-fun m!4219155 () Bool)

(assert (=> bs!574761 m!4219155))

(assert (=> b!3711745 d!1087315))

(declare-fun b!3712273 () Bool)

(declare-fun res!1509465 () Bool)

(declare-fun e!2298924 () Bool)

(assert (=> b!3712273 (=> res!1509465 e!2298924)))

(assert (=> b!3712273 (= res!1509465 (not ((_ is Concat!17118) lt!1296891)))))

(declare-fun e!2298922 () Bool)

(assert (=> b!3712273 (= e!2298922 e!2298924)))

(declare-fun b!3712275 () Bool)

(declare-fun e!2298920 () Bool)

(declare-fun e!2298921 () Bool)

(assert (=> b!3712275 (= e!2298920 e!2298921)))

(declare-fun c!641359 () Bool)

(assert (=> b!3712275 (= c!641359 ((_ is Star!10847) lt!1296891))))

(declare-fun b!3712276 () Bool)

(declare-fun e!2298925 () Bool)

(declare-fun call!268656 () Bool)

(assert (=> b!3712276 (= e!2298925 call!268656)))

(declare-fun bm!268651 () Bool)

(declare-fun c!641358 () Bool)

(assert (=> bm!268651 (= call!268656 (validRegex!4954 (ite c!641358 (regOne!22207 lt!1296891) (regTwo!22206 lt!1296891))))))

(declare-fun b!3712277 () Bool)

(declare-fun e!2298923 () Bool)

(declare-fun call!268657 () Bool)

(assert (=> b!3712277 (= e!2298923 call!268657)))

(declare-fun call!268658 () Bool)

(declare-fun bm!268652 () Bool)

(assert (=> bm!268652 (= call!268658 (validRegex!4954 (ite c!641359 (reg!11176 lt!1296891) (ite c!641358 (regTwo!22207 lt!1296891) (regOne!22206 lt!1296891)))))))

(declare-fun b!3712274 () Bool)

(declare-fun e!2298919 () Bool)

(assert (=> b!3712274 (= e!2298919 call!268658)))

(declare-fun d!1087317 () Bool)

(declare-fun res!1509467 () Bool)

(assert (=> d!1087317 (=> res!1509467 e!2298920)))

(assert (=> d!1087317 (= res!1509467 ((_ is ElementMatch!10847) lt!1296891))))

(assert (=> d!1087317 (= (validRegex!4954 lt!1296891) e!2298920)))

(declare-fun b!3712278 () Bool)

(assert (=> b!3712278 (= e!2298921 e!2298922)))

(assert (=> b!3712278 (= c!641358 ((_ is Union!10847) lt!1296891))))

(declare-fun b!3712279 () Bool)

(assert (=> b!3712279 (= e!2298924 e!2298925)))

(declare-fun res!1509466 () Bool)

(assert (=> b!3712279 (=> (not res!1509466) (not e!2298925))))

(assert (=> b!3712279 (= res!1509466 call!268657)))

(declare-fun b!3712280 () Bool)

(declare-fun res!1509464 () Bool)

(assert (=> b!3712280 (=> (not res!1509464) (not e!2298923))))

(assert (=> b!3712280 (= res!1509464 call!268656)))

(assert (=> b!3712280 (= e!2298922 e!2298923)))

(declare-fun bm!268653 () Bool)

(assert (=> bm!268653 (= call!268657 call!268658)))

(declare-fun b!3712281 () Bool)

(assert (=> b!3712281 (= e!2298921 e!2298919)))

(declare-fun res!1509468 () Bool)

(assert (=> b!3712281 (= res!1509468 (not (nullable!3770 (reg!11176 lt!1296891))))))

(assert (=> b!3712281 (=> (not res!1509468) (not e!2298919))))

(assert (= (and d!1087317 (not res!1509467)) b!3712275))

(assert (= (and b!3712275 c!641359) b!3712281))

(assert (= (and b!3712275 (not c!641359)) b!3712278))

(assert (= (and b!3712281 res!1509468) b!3712274))

(assert (= (and b!3712278 c!641358) b!3712280))

(assert (= (and b!3712278 (not c!641358)) b!3712273))

(assert (= (and b!3712280 res!1509464) b!3712277))

(assert (= (and b!3712273 (not res!1509465)) b!3712279))

(assert (= (and b!3712279 res!1509466) b!3712276))

(assert (= (or b!3712277 b!3712279) bm!268653))

(assert (= (or b!3712280 b!3712276) bm!268651))

(assert (= (or b!3712274 bm!268653) bm!268652))

(declare-fun m!4219157 () Bool)

(assert (=> bm!268651 m!4219157))

(declare-fun m!4219159 () Bool)

(assert (=> bm!268652 m!4219159))

(declare-fun m!4219161 () Bool)

(assert (=> b!3712281 m!4219161))

(assert (=> d!1087173 d!1087317))

(declare-fun b!3712298 () Bool)

(declare-fun res!1509470 () Bool)

(declare-fun e!2298935 () Bool)

(assert (=> b!3712298 (=> res!1509470 e!2298935)))

(assert (=> b!3712298 (= res!1509470 (not ((_ is Concat!17118) (derivativeStep!3312 r!26326 c!13576))))))

(declare-fun e!2298933 () Bool)

(assert (=> b!3712298 (= e!2298933 e!2298935)))

(declare-fun b!3712300 () Bool)

(declare-fun e!2298931 () Bool)

(declare-fun e!2298932 () Bool)

(assert (=> b!3712300 (= e!2298931 e!2298932)))

(declare-fun c!641361 () Bool)

(assert (=> b!3712300 (= c!641361 ((_ is Star!10847) (derivativeStep!3312 r!26326 c!13576)))))

(declare-fun b!3712301 () Bool)

(declare-fun e!2298936 () Bool)

(declare-fun call!268659 () Bool)

(assert (=> b!3712301 (= e!2298936 call!268659)))

(declare-fun c!641360 () Bool)

(declare-fun bm!268654 () Bool)

(assert (=> bm!268654 (= call!268659 (validRegex!4954 (ite c!641360 (regOne!22207 (derivativeStep!3312 r!26326 c!13576)) (regTwo!22206 (derivativeStep!3312 r!26326 c!13576)))))))

(declare-fun b!3712302 () Bool)

(declare-fun e!2298934 () Bool)

(declare-fun call!268660 () Bool)

(assert (=> b!3712302 (= e!2298934 call!268660)))

(declare-fun call!268661 () Bool)

(declare-fun bm!268655 () Bool)

(assert (=> bm!268655 (= call!268661 (validRegex!4954 (ite c!641361 (reg!11176 (derivativeStep!3312 r!26326 c!13576)) (ite c!641360 (regTwo!22207 (derivativeStep!3312 r!26326 c!13576)) (regOne!22206 (derivativeStep!3312 r!26326 c!13576))))))))

(declare-fun b!3712299 () Bool)

(declare-fun e!2298930 () Bool)

(assert (=> b!3712299 (= e!2298930 call!268661)))

(declare-fun d!1087319 () Bool)

(declare-fun res!1509472 () Bool)

(assert (=> d!1087319 (=> res!1509472 e!2298931)))

(assert (=> d!1087319 (= res!1509472 ((_ is ElementMatch!10847) (derivativeStep!3312 r!26326 c!13576)))))

(assert (=> d!1087319 (= (validRegex!4954 (derivativeStep!3312 r!26326 c!13576)) e!2298931)))

(declare-fun b!3712303 () Bool)

(assert (=> b!3712303 (= e!2298932 e!2298933)))

(assert (=> b!3712303 (= c!641360 ((_ is Union!10847) (derivativeStep!3312 r!26326 c!13576)))))

(declare-fun b!3712304 () Bool)

(assert (=> b!3712304 (= e!2298935 e!2298936)))

(declare-fun res!1509471 () Bool)

(assert (=> b!3712304 (=> (not res!1509471) (not e!2298936))))

(assert (=> b!3712304 (= res!1509471 call!268660)))

(declare-fun b!3712305 () Bool)

(declare-fun res!1509469 () Bool)

(assert (=> b!3712305 (=> (not res!1509469) (not e!2298934))))

(assert (=> b!3712305 (= res!1509469 call!268659)))

(assert (=> b!3712305 (= e!2298933 e!2298934)))

(declare-fun bm!268656 () Bool)

(assert (=> bm!268656 (= call!268660 call!268661)))

(declare-fun b!3712306 () Bool)

(assert (=> b!3712306 (= e!2298932 e!2298930)))

(declare-fun res!1509473 () Bool)

(assert (=> b!3712306 (= res!1509473 (not (nullable!3770 (reg!11176 (derivativeStep!3312 r!26326 c!13576)))))))

(assert (=> b!3712306 (=> (not res!1509473) (not e!2298930))))

(assert (= (and d!1087319 (not res!1509472)) b!3712300))

(assert (= (and b!3712300 c!641361) b!3712306))

(assert (= (and b!3712300 (not c!641361)) b!3712303))

(assert (= (and b!3712306 res!1509473) b!3712299))

(assert (= (and b!3712303 c!641360) b!3712305))

(assert (= (and b!3712303 (not c!641360)) b!3712298))

(assert (= (and b!3712305 res!1509469) b!3712302))

(assert (= (and b!3712298 (not res!1509470)) b!3712304))

(assert (= (and b!3712304 res!1509471) b!3712301))

(assert (= (or b!3712302 b!3712304) bm!268656))

(assert (= (or b!3712305 b!3712301) bm!268654))

(assert (= (or b!3712299 bm!268656) bm!268655))

(declare-fun m!4219163 () Bool)

(assert (=> bm!268654 m!4219163))

(declare-fun m!4219165 () Bool)

(assert (=> bm!268655 m!4219165))

(declare-fun m!4219167 () Bool)

(assert (=> b!3712306 m!4219167))

(assert (=> d!1087173 d!1087319))

(declare-fun bm!268657 () Bool)

(declare-fun call!268663 () Regex!10847)

(declare-fun call!268664 () Regex!10847)

(assert (=> bm!268657 (= call!268663 call!268664)))

(declare-fun b!3712311 () Bool)

(declare-fun e!2298938 () Regex!10847)

(declare-fun e!2298940 () Regex!10847)

(assert (=> b!3712311 (= e!2298938 e!2298940)))

(declare-fun c!641366 () Bool)

(assert (=> b!3712311 (= c!641366 ((_ is Star!10847) (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))

(declare-fun e!2298941 () Regex!10847)

(declare-fun b!3712312 () Bool)

(assert (=> b!3712312 (= e!2298941 (Union!10847 (Concat!17118 call!268663 (regTwo!22206 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))) EmptyLang!10847))))

(declare-fun b!3712313 () Bool)

(declare-fun e!2298942 () Regex!10847)

(assert (=> b!3712313 (= e!2298942 EmptyLang!10847)))

(declare-fun b!3712314 () Bool)

(declare-fun c!641365 () Bool)

(assert (=> b!3712314 (= c!641365 (nullable!3770 (regOne!22206 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))

(assert (=> b!3712314 (= e!2298940 e!2298941)))

(declare-fun b!3712315 () Bool)

(declare-fun e!2298939 () Regex!10847)

(assert (=> b!3712315 (= e!2298942 e!2298939)))

(declare-fun c!641363 () Bool)

(assert (=> b!3712315 (= c!641363 ((_ is ElementMatch!10847) (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))

(declare-fun b!3712316 () Bool)

(declare-fun call!268665 () Regex!10847)

(assert (=> b!3712316 (= e!2298938 (Union!10847 call!268664 call!268665))))

(declare-fun bm!268658 () Bool)

(declare-fun c!641364 () Bool)

(assert (=> bm!268658 (= call!268665 (derivativeStep!3312 (ite c!641364 (regTwo!22207 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) (ite c!641366 (reg!11176 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) (regTwo!22206 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))) c!13576))))

(declare-fun b!3712317 () Bool)

(assert (=> b!3712317 (= e!2298939 (ite (= c!13576 (c!641139 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))) EmptyExpr!10847 EmptyLang!10847))))

(declare-fun bm!268659 () Bool)

(assert (=> bm!268659 (= call!268664 (derivativeStep!3312 (ite c!641364 (regOne!22207 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) (regOne!22206 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))) c!13576))))

(declare-fun d!1087321 () Bool)

(declare-fun lt!1296931 () Regex!10847)

(assert (=> d!1087321 (validRegex!4954 lt!1296931)))

(assert (=> d!1087321 (= lt!1296931 e!2298942)))

(declare-fun c!641362 () Bool)

(assert (=> d!1087321 (= c!641362 (or ((_ is EmptyExpr!10847) (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) ((_ is EmptyLang!10847) (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))

(assert (=> d!1087321 (validRegex!4954 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))

(assert (=> d!1087321 (= (derivativeStep!3312 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))) c!13576) lt!1296931)))

(declare-fun bm!268660 () Bool)

(declare-fun call!268662 () Regex!10847)

(assert (=> bm!268660 (= call!268662 call!268665)))

(declare-fun b!3712318 () Bool)

(assert (=> b!3712318 (= e!2298940 (Concat!17118 call!268662 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))

(declare-fun b!3712319 () Bool)

(assert (=> b!3712319 (= e!2298941 (Union!10847 (Concat!17118 call!268663 (regTwo!22206 (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))) call!268662))))

(declare-fun b!3712320 () Bool)

(assert (=> b!3712320 (= c!641364 ((_ is Union!10847) (ite c!641216 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))

(assert (=> b!3712320 (= e!2298939 e!2298938)))

(assert (= (and d!1087321 c!641362) b!3712313))

(assert (= (and d!1087321 (not c!641362)) b!3712315))

(assert (= (and b!3712315 c!641363) b!3712317))

(assert (= (and b!3712315 (not c!641363)) b!3712320))

(assert (= (and b!3712320 c!641364) b!3712316))

(assert (= (and b!3712320 (not c!641364)) b!3712311))

(assert (= (and b!3712311 c!641366) b!3712318))

(assert (= (and b!3712311 (not c!641366)) b!3712314))

(assert (= (and b!3712314 c!641365) b!3712319))

(assert (= (and b!3712314 (not c!641365)) b!3712312))

(assert (= (or b!3712319 b!3712312) bm!268657))

(assert (= (or b!3712318 b!3712319) bm!268660))

(assert (= (or b!3712316 bm!268660) bm!268658))

(assert (= (or b!3712316 bm!268657) bm!268659))

(declare-fun m!4219169 () Bool)

(assert (=> b!3712314 m!4219169))

(declare-fun m!4219171 () Bool)

(assert (=> bm!268658 m!4219171))

(declare-fun m!4219173 () Bool)

(assert (=> bm!268659 m!4219173))

(declare-fun m!4219175 () Bool)

(assert (=> d!1087321 m!4219175))

(declare-fun m!4219177 () Bool)

(assert (=> d!1087321 m!4219177))

(assert (=> bm!268513 d!1087321))

(declare-fun d!1087323 () Bool)

(assert (=> d!1087323 (= (nullable!3770 (regOne!22206 r!26326)) (nullableFct!1059 (regOne!22206 r!26326)))))

(declare-fun bs!574762 () Bool)

(assert (= bs!574762 d!1087323))

(declare-fun m!4219179 () Bool)

(assert (=> bs!574762 m!4219179))

(assert (=> b!3711718 d!1087323))

(declare-fun b!3712321 () Bool)

(declare-fun res!1509475 () Bool)

(declare-fun e!2298948 () Bool)

(assert (=> b!3712321 (=> res!1509475 e!2298948)))

(assert (=> b!3712321 (= res!1509475 (not ((_ is Concat!17118) lt!1296901)))))

(declare-fun e!2298946 () Bool)

(assert (=> b!3712321 (= e!2298946 e!2298948)))

(declare-fun b!3712323 () Bool)

(declare-fun e!2298944 () Bool)

(declare-fun e!2298945 () Bool)

(assert (=> b!3712323 (= e!2298944 e!2298945)))

(declare-fun c!641368 () Bool)

(assert (=> b!3712323 (= c!641368 ((_ is Star!10847) lt!1296901))))

(declare-fun b!3712324 () Bool)

(declare-fun e!2298949 () Bool)

(declare-fun call!268666 () Bool)

(assert (=> b!3712324 (= e!2298949 call!268666)))

(declare-fun bm!268661 () Bool)

(declare-fun c!641367 () Bool)

(assert (=> bm!268661 (= call!268666 (validRegex!4954 (ite c!641367 (regOne!22207 lt!1296901) (regTwo!22206 lt!1296901))))))

(declare-fun b!3712325 () Bool)

(declare-fun e!2298947 () Bool)

(declare-fun call!268667 () Bool)

(assert (=> b!3712325 (= e!2298947 call!268667)))

(declare-fun call!268668 () Bool)

(declare-fun bm!268662 () Bool)

(assert (=> bm!268662 (= call!268668 (validRegex!4954 (ite c!641368 (reg!11176 lt!1296901) (ite c!641367 (regTwo!22207 lt!1296901) (regOne!22206 lt!1296901)))))))

(declare-fun b!3712322 () Bool)

(declare-fun e!2298943 () Bool)

(assert (=> b!3712322 (= e!2298943 call!268668)))

(declare-fun d!1087325 () Bool)

(declare-fun res!1509477 () Bool)

(assert (=> d!1087325 (=> res!1509477 e!2298944)))

(assert (=> d!1087325 (= res!1509477 ((_ is ElementMatch!10847) lt!1296901))))

(assert (=> d!1087325 (= (validRegex!4954 lt!1296901) e!2298944)))

(declare-fun b!3712326 () Bool)

(assert (=> b!3712326 (= e!2298945 e!2298946)))

(assert (=> b!3712326 (= c!641367 ((_ is Union!10847) lt!1296901))))

(declare-fun b!3712327 () Bool)

(assert (=> b!3712327 (= e!2298948 e!2298949)))

(declare-fun res!1509476 () Bool)

(assert (=> b!3712327 (=> (not res!1509476) (not e!2298949))))

(assert (=> b!3712327 (= res!1509476 call!268667)))

(declare-fun b!3712328 () Bool)

(declare-fun res!1509474 () Bool)

(assert (=> b!3712328 (=> (not res!1509474) (not e!2298947))))

(assert (=> b!3712328 (= res!1509474 call!268666)))

(assert (=> b!3712328 (= e!2298946 e!2298947)))

(declare-fun bm!268663 () Bool)

(assert (=> bm!268663 (= call!268667 call!268668)))

(declare-fun b!3712329 () Bool)

(assert (=> b!3712329 (= e!2298945 e!2298943)))

(declare-fun res!1509478 () Bool)

(assert (=> b!3712329 (= res!1509478 (not (nullable!3770 (reg!11176 lt!1296901))))))

(assert (=> b!3712329 (=> (not res!1509478) (not e!2298943))))

(assert (= (and d!1087325 (not res!1509477)) b!3712323))

(assert (= (and b!3712323 c!641368) b!3712329))

(assert (= (and b!3712323 (not c!641368)) b!3712326))

(assert (= (and b!3712329 res!1509478) b!3712322))

(assert (= (and b!3712326 c!641367) b!3712328))

(assert (= (and b!3712326 (not c!641367)) b!3712321))

(assert (= (and b!3712328 res!1509474) b!3712325))

(assert (= (and b!3712321 (not res!1509475)) b!3712327))

(assert (= (and b!3712327 res!1509476) b!3712324))

(assert (= (or b!3712325 b!3712327) bm!268663))

(assert (= (or b!3712328 b!3712324) bm!268661))

(assert (= (or b!3712322 bm!268663) bm!268662))

(declare-fun m!4219181 () Bool)

(assert (=> bm!268661 m!4219181))

(declare-fun m!4219183 () Bool)

(assert (=> bm!268662 m!4219183))

(declare-fun m!4219185 () Bool)

(assert (=> b!3712329 m!4219185))

(assert (=> d!1087185 d!1087325))

(assert (=> d!1087185 d!1087201))

(declare-fun b!3712330 () Bool)

(declare-fun res!1509480 () Bool)

(declare-fun e!2298955 () Bool)

(assert (=> b!3712330 (=> res!1509480 e!2298955)))

(assert (=> b!3712330 (= res!1509480 (not ((_ is Concat!17118) lt!1296902)))))

(declare-fun e!2298953 () Bool)

(assert (=> b!3712330 (= e!2298953 e!2298955)))

(declare-fun b!3712332 () Bool)

(declare-fun e!2298951 () Bool)

(declare-fun e!2298952 () Bool)

(assert (=> b!3712332 (= e!2298951 e!2298952)))

(declare-fun c!641370 () Bool)

(assert (=> b!3712332 (= c!641370 ((_ is Star!10847) lt!1296902))))

(declare-fun b!3712333 () Bool)

(declare-fun e!2298956 () Bool)

(declare-fun call!268669 () Bool)

(assert (=> b!3712333 (= e!2298956 call!268669)))

(declare-fun bm!268664 () Bool)

(declare-fun c!641369 () Bool)

(assert (=> bm!268664 (= call!268669 (validRegex!4954 (ite c!641369 (regOne!22207 lt!1296902) (regTwo!22206 lt!1296902))))))

(declare-fun b!3712334 () Bool)

(declare-fun e!2298954 () Bool)

(declare-fun call!268670 () Bool)

(assert (=> b!3712334 (= e!2298954 call!268670)))

(declare-fun call!268671 () Bool)

(declare-fun bm!268665 () Bool)

(assert (=> bm!268665 (= call!268671 (validRegex!4954 (ite c!641370 (reg!11176 lt!1296902) (ite c!641369 (regTwo!22207 lt!1296902) (regOne!22206 lt!1296902)))))))

(declare-fun b!3712331 () Bool)

(declare-fun e!2298950 () Bool)

(assert (=> b!3712331 (= e!2298950 call!268671)))

(declare-fun d!1087327 () Bool)

(declare-fun res!1509482 () Bool)

(assert (=> d!1087327 (=> res!1509482 e!2298951)))

(assert (=> d!1087327 (= res!1509482 ((_ is ElementMatch!10847) lt!1296902))))

(assert (=> d!1087327 (= (validRegex!4954 lt!1296902) e!2298951)))

(declare-fun b!3712335 () Bool)

(assert (=> b!3712335 (= e!2298952 e!2298953)))

(assert (=> b!3712335 (= c!641369 ((_ is Union!10847) lt!1296902))))

(declare-fun b!3712336 () Bool)

(assert (=> b!3712336 (= e!2298955 e!2298956)))

(declare-fun res!1509481 () Bool)

(assert (=> b!3712336 (=> (not res!1509481) (not e!2298956))))

(assert (=> b!3712336 (= res!1509481 call!268670)))

(declare-fun b!3712337 () Bool)

(declare-fun res!1509479 () Bool)

(assert (=> b!3712337 (=> (not res!1509479) (not e!2298954))))

(assert (=> b!3712337 (= res!1509479 call!268669)))

(assert (=> b!3712337 (= e!2298953 e!2298954)))

(declare-fun bm!268666 () Bool)

(assert (=> bm!268666 (= call!268670 call!268671)))

(declare-fun b!3712338 () Bool)

(assert (=> b!3712338 (= e!2298952 e!2298950)))

(declare-fun res!1509483 () Bool)

(assert (=> b!3712338 (= res!1509483 (not (nullable!3770 (reg!11176 lt!1296902))))))

(assert (=> b!3712338 (=> (not res!1509483) (not e!2298950))))

(assert (= (and d!1087327 (not res!1509482)) b!3712332))

(assert (= (and b!3712332 c!641370) b!3712338))

(assert (= (and b!3712332 (not c!641370)) b!3712335))

(assert (= (and b!3712338 res!1509483) b!3712331))

(assert (= (and b!3712335 c!641369) b!3712337))

(assert (= (and b!3712335 (not c!641369)) b!3712330))

(assert (= (and b!3712337 res!1509479) b!3712334))

(assert (= (and b!3712330 (not res!1509480)) b!3712336))

(assert (= (and b!3712336 res!1509481) b!3712333))

(assert (= (or b!3712334 b!3712336) bm!268666))

(assert (= (or b!3712337 b!3712333) bm!268664))

(assert (= (or b!3712331 bm!268666) bm!268665))

(declare-fun m!4219187 () Bool)

(assert (=> bm!268664 m!4219187))

(declare-fun m!4219189 () Bool)

(assert (=> bm!268665 m!4219189))

(declare-fun m!4219191 () Bool)

(assert (=> b!3712338 m!4219191))

(assert (=> d!1087197 d!1087327))

(declare-fun b!3712339 () Bool)

(declare-fun res!1509485 () Bool)

(declare-fun e!2298962 () Bool)

(assert (=> b!3712339 (=> res!1509485 e!2298962)))

(assert (=> b!3712339 (= res!1509485 (not ((_ is Concat!17118) (derivativeStep!3312 (regOne!22207 r!26326) c!13576))))))

(declare-fun e!2298960 () Bool)

(assert (=> b!3712339 (= e!2298960 e!2298962)))

(declare-fun b!3712341 () Bool)

(declare-fun e!2298958 () Bool)

(declare-fun e!2298959 () Bool)

(assert (=> b!3712341 (= e!2298958 e!2298959)))

(declare-fun c!641372 () Bool)

(assert (=> b!3712341 (= c!641372 ((_ is Star!10847) (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))))

(declare-fun b!3712342 () Bool)

(declare-fun e!2298963 () Bool)

(declare-fun call!268672 () Bool)

(assert (=> b!3712342 (= e!2298963 call!268672)))

(declare-fun c!641371 () Bool)

(declare-fun bm!268667 () Bool)

(assert (=> bm!268667 (= call!268672 (validRegex!4954 (ite c!641371 (regOne!22207 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)) (regTwo!22206 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))))))

(declare-fun b!3712343 () Bool)

(declare-fun e!2298961 () Bool)

(declare-fun call!268673 () Bool)

(assert (=> b!3712343 (= e!2298961 call!268673)))

(declare-fun call!268674 () Bool)

(declare-fun bm!268668 () Bool)

(assert (=> bm!268668 (= call!268674 (validRegex!4954 (ite c!641372 (reg!11176 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)) (ite c!641371 (regTwo!22207 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)) (regOne!22206 (derivativeStep!3312 (regOne!22207 r!26326) c!13576))))))))

(declare-fun b!3712340 () Bool)

(declare-fun e!2298957 () Bool)

(assert (=> b!3712340 (= e!2298957 call!268674)))

(declare-fun d!1087329 () Bool)

(declare-fun res!1509487 () Bool)

(assert (=> d!1087329 (=> res!1509487 e!2298958)))

(assert (=> d!1087329 (= res!1509487 ((_ is ElementMatch!10847) (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))))

(assert (=> d!1087329 (= (validRegex!4954 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)) e!2298958)))

(declare-fun b!3712344 () Bool)

(assert (=> b!3712344 (= e!2298959 e!2298960)))

(assert (=> b!3712344 (= c!641371 ((_ is Union!10847) (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))))

(declare-fun b!3712345 () Bool)

(assert (=> b!3712345 (= e!2298962 e!2298963)))

(declare-fun res!1509486 () Bool)

(assert (=> b!3712345 (=> (not res!1509486) (not e!2298963))))

(assert (=> b!3712345 (= res!1509486 call!268673)))

(declare-fun b!3712346 () Bool)

(declare-fun res!1509484 () Bool)

(assert (=> b!3712346 (=> (not res!1509484) (not e!2298961))))

(assert (=> b!3712346 (= res!1509484 call!268672)))

(assert (=> b!3712346 (= e!2298960 e!2298961)))

(declare-fun bm!268669 () Bool)

(assert (=> bm!268669 (= call!268673 call!268674)))

(declare-fun b!3712347 () Bool)

(assert (=> b!3712347 (= e!2298959 e!2298957)))

(declare-fun res!1509488 () Bool)

(assert (=> b!3712347 (= res!1509488 (not (nullable!3770 (reg!11176 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))))))

(assert (=> b!3712347 (=> (not res!1509488) (not e!2298957))))

(assert (= (and d!1087329 (not res!1509487)) b!3712341))

(assert (= (and b!3712341 c!641372) b!3712347))

(assert (= (and b!3712341 (not c!641372)) b!3712344))

(assert (= (and b!3712347 res!1509488) b!3712340))

(assert (= (and b!3712344 c!641371) b!3712346))

(assert (= (and b!3712344 (not c!641371)) b!3712339))

(assert (= (and b!3712346 res!1509484) b!3712343))

(assert (= (and b!3712339 (not res!1509485)) b!3712345))

(assert (= (and b!3712345 res!1509486) b!3712342))

(assert (= (or b!3712343 b!3712345) bm!268669))

(assert (= (or b!3712346 b!3712342) bm!268667))

(assert (= (or b!3712340 bm!268669) bm!268668))

(declare-fun m!4219193 () Bool)

(assert (=> bm!268667 m!4219193))

(declare-fun m!4219195 () Bool)

(assert (=> bm!268668 m!4219195))

(declare-fun m!4219197 () Bool)

(assert (=> b!3712347 m!4219197))

(assert (=> d!1087197 d!1087329))

(declare-fun bm!268670 () Bool)

(declare-fun call!268676 () Regex!10847)

(declare-fun call!268677 () Regex!10847)

(assert (=> bm!268670 (= call!268676 call!268677)))

(declare-fun b!3712348 () Bool)

(declare-fun e!2298964 () Regex!10847)

(declare-fun e!2298966 () Regex!10847)

(assert (=> b!3712348 (= e!2298964 e!2298966)))

(declare-fun c!641377 () Bool)

(assert (=> b!3712348 (= c!641377 ((_ is Star!10847) (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326)))))))

(declare-fun b!3712349 () Bool)

(declare-fun e!2298967 () Regex!10847)

(assert (=> b!3712349 (= e!2298967 (Union!10847 (Concat!17118 call!268676 (regTwo!22206 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326))))) EmptyLang!10847))))

(declare-fun b!3712350 () Bool)

(declare-fun e!2298968 () Regex!10847)

(assert (=> b!3712350 (= e!2298968 EmptyLang!10847)))

(declare-fun b!3712351 () Bool)

(declare-fun c!641376 () Bool)

(assert (=> b!3712351 (= c!641376 (nullable!3770 (regOne!22206 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326))))))))

(assert (=> b!3712351 (= e!2298966 e!2298967)))

(declare-fun b!3712352 () Bool)

(declare-fun e!2298965 () Regex!10847)

(assert (=> b!3712352 (= e!2298968 e!2298965)))

(declare-fun c!641374 () Bool)

(assert (=> b!3712352 (= c!641374 ((_ is ElementMatch!10847) (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326)))))))

(declare-fun b!3712353 () Bool)

(declare-fun call!268678 () Regex!10847)

(assert (=> b!3712353 (= e!2298964 (Union!10847 call!268677 call!268678))))

(declare-fun bm!268671 () Bool)

(declare-fun c!641375 () Bool)

(assert (=> bm!268671 (= call!268678 (derivativeStep!3312 (ite c!641375 (regTwo!22207 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326)))) (ite c!641377 (reg!11176 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326)))) (regTwo!22206 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326)))))) c!13576))))

(declare-fun b!3712354 () Bool)

(assert (=> b!3712354 (= e!2298965 (ite (= c!13576 (c!641139 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326))))) EmptyExpr!10847 EmptyLang!10847))))

(declare-fun bm!268672 () Bool)

(assert (=> bm!268672 (= call!268677 (derivativeStep!3312 (ite c!641375 (regOne!22207 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326)))) (regOne!22206 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326))))) c!13576))))

(declare-fun d!1087331 () Bool)

(declare-fun lt!1296932 () Regex!10847)

(assert (=> d!1087331 (validRegex!4954 lt!1296932)))

(assert (=> d!1087331 (= lt!1296932 e!2298968)))

(declare-fun c!641373 () Bool)

(assert (=> d!1087331 (= c!641373 (or ((_ is EmptyExpr!10847) (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326)))) ((_ is EmptyLang!10847) (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326))))))))

(assert (=> d!1087331 (validRegex!4954 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326))))))

(assert (=> d!1087331 (= (derivativeStep!3312 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326))) c!13576) lt!1296932)))

(declare-fun bm!268673 () Bool)

(declare-fun call!268675 () Regex!10847)

(assert (=> bm!268673 (= call!268675 call!268678)))

(declare-fun b!3712355 () Bool)

(assert (=> b!3712355 (= e!2298966 (Concat!17118 call!268675 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326)))))))

(declare-fun b!3712356 () Bool)

(assert (=> b!3712356 (= e!2298967 (Union!10847 (Concat!17118 call!268676 (regTwo!22206 (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326))))) call!268675))))

(declare-fun b!3712357 () Bool)

(assert (=> b!3712357 (= c!641375 ((_ is Union!10847) (ite c!641210 (regTwo!22207 r!26326) (ite c!641212 (reg!11176 r!26326) (regTwo!22206 r!26326)))))))

(assert (=> b!3712357 (= e!2298965 e!2298964)))

(assert (= (and d!1087331 c!641373) b!3712350))

(assert (= (and d!1087331 (not c!641373)) b!3712352))

(assert (= (and b!3712352 c!641374) b!3712354))

(assert (= (and b!3712352 (not c!641374)) b!3712357))

(assert (= (and b!3712357 c!641375) b!3712353))

(assert (= (and b!3712357 (not c!641375)) b!3712348))

(assert (= (and b!3712348 c!641377) b!3712355))

(assert (= (and b!3712348 (not c!641377)) b!3712351))

(assert (= (and b!3712351 c!641376) b!3712356))

(assert (= (and b!3712351 (not c!641376)) b!3712349))

(assert (= (or b!3712356 b!3712349) bm!268670))

(assert (= (or b!3712355 b!3712356) bm!268673))

(assert (= (or b!3712353 bm!268673) bm!268671))

(assert (= (or b!3712353 bm!268670) bm!268672))

(declare-fun m!4219199 () Bool)

(assert (=> b!3712351 m!4219199))

(declare-fun m!4219201 () Bool)

(assert (=> bm!268671 m!4219201))

(declare-fun m!4219203 () Bool)

(assert (=> bm!268672 m!4219203))

(declare-fun m!4219205 () Bool)

(assert (=> d!1087331 m!4219205))

(declare-fun m!4219207 () Bool)

(assert (=> d!1087331 m!4219207))

(assert (=> bm!268508 d!1087331))

(declare-fun bm!268674 () Bool)

(declare-fun call!268680 () Regex!10847)

(declare-fun call!268681 () Regex!10847)

(assert (=> bm!268674 (= call!268680 call!268681)))

(declare-fun b!3712358 () Bool)

(declare-fun e!2298969 () Regex!10847)

(declare-fun e!2298971 () Regex!10847)

(assert (=> b!3712358 (= e!2298969 e!2298971)))

(declare-fun c!641382 () Bool)

(assert (=> b!3712358 (= c!641382 ((_ is Star!10847) (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326))))))

(declare-fun e!2298972 () Regex!10847)

(declare-fun b!3712359 () Bool)

(assert (=> b!3712359 (= e!2298972 (Union!10847 (Concat!17118 call!268680 (regTwo!22206 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326)))) EmptyLang!10847))))

(declare-fun b!3712360 () Bool)

(declare-fun e!2298973 () Regex!10847)

(assert (=> b!3712360 (= e!2298973 EmptyLang!10847)))

(declare-fun b!3712361 () Bool)

(declare-fun c!641381 () Bool)

(assert (=> b!3712361 (= c!641381 (nullable!3770 (regOne!22206 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326)))))))

(assert (=> b!3712361 (= e!2298971 e!2298972)))

(declare-fun b!3712362 () Bool)

(declare-fun e!2298970 () Regex!10847)

(assert (=> b!3712362 (= e!2298973 e!2298970)))

(declare-fun c!641379 () Bool)

(assert (=> b!3712362 (= c!641379 ((_ is ElementMatch!10847) (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326))))))

(declare-fun b!3712363 () Bool)

(declare-fun call!268682 () Regex!10847)

(assert (=> b!3712363 (= e!2298969 (Union!10847 call!268681 call!268682))))

(declare-fun bm!268675 () Bool)

(declare-fun c!641380 () Bool)

(assert (=> bm!268675 (= call!268682 (derivativeStep!3312 (ite c!641380 (regTwo!22207 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326))) (ite c!641382 (reg!11176 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326))) (regTwo!22206 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326))))) c!13576))))

(declare-fun b!3712364 () Bool)

(assert (=> b!3712364 (= e!2298970 (ite (= c!13576 (c!641139 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326)))) EmptyExpr!10847 EmptyLang!10847))))

(declare-fun bm!268676 () Bool)

(assert (=> bm!268676 (= call!268681 (derivativeStep!3312 (ite c!641380 (regOne!22207 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326))) (regOne!22206 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326)))) c!13576))))

(declare-fun d!1087333 () Bool)

(declare-fun lt!1296933 () Regex!10847)

(assert (=> d!1087333 (validRegex!4954 lt!1296933)))

(assert (=> d!1087333 (= lt!1296933 e!2298973)))

(declare-fun c!641378 () Bool)

(assert (=> d!1087333 (= c!641378 (or ((_ is EmptyExpr!10847) (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326))) ((_ is EmptyLang!10847) (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326)))))))

(assert (=> d!1087333 (validRegex!4954 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326)))))

(assert (=> d!1087333 (= (derivativeStep!3312 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326)) c!13576) lt!1296933)))

(declare-fun bm!268677 () Bool)

(declare-fun call!268679 () Regex!10847)

(assert (=> bm!268677 (= call!268679 call!268682)))

(declare-fun b!3712365 () Bool)

(assert (=> b!3712365 (= e!2298971 (Concat!17118 call!268679 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326))))))

(declare-fun b!3712366 () Bool)

(assert (=> b!3712366 (= e!2298972 (Union!10847 (Concat!17118 call!268680 (regTwo!22206 (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326)))) call!268679))))

(declare-fun b!3712367 () Bool)

(assert (=> b!3712367 (= c!641380 ((_ is Union!10847) (ite c!641210 (regOne!22207 r!26326) (regOne!22206 r!26326))))))

(assert (=> b!3712367 (= e!2298970 e!2298969)))

(assert (= (and d!1087333 c!641378) b!3712360))

(assert (= (and d!1087333 (not c!641378)) b!3712362))

(assert (= (and b!3712362 c!641379) b!3712364))

(assert (= (and b!3712362 (not c!641379)) b!3712367))

(assert (= (and b!3712367 c!641380) b!3712363))

(assert (= (and b!3712367 (not c!641380)) b!3712358))

(assert (= (and b!3712358 c!641382) b!3712365))

(assert (= (and b!3712358 (not c!641382)) b!3712361))

(assert (= (and b!3712361 c!641381) b!3712366))

(assert (= (and b!3712361 (not c!641381)) b!3712359))

(assert (= (or b!3712366 b!3712359) bm!268674))

(assert (= (or b!3712365 b!3712366) bm!268677))

(assert (= (or b!3712363 bm!268677) bm!268675))

(assert (= (or b!3712363 bm!268674) bm!268676))

(declare-fun m!4219209 () Bool)

(assert (=> b!3712361 m!4219209))

(declare-fun m!4219211 () Bool)

(assert (=> bm!268675 m!4219211))

(declare-fun m!4219213 () Bool)

(assert (=> bm!268676 m!4219213))

(declare-fun m!4219215 () Bool)

(assert (=> d!1087333 m!4219215))

(declare-fun m!4219217 () Bool)

(assert (=> d!1087333 m!4219217))

(assert (=> bm!268509 d!1087333))

(declare-fun d!1087335 () Bool)

(declare-fun lt!1296934 () Bool)

(assert (=> d!1087335 (= lt!1296934 (select (content!5730 (t!302411 (usedCharacters!1110 r!26326))) c!13576))))

(declare-fun e!2298974 () Bool)

(assert (=> d!1087335 (= lt!1296934 e!2298974)))

(declare-fun res!1509489 () Bool)

(assert (=> d!1087335 (=> (not res!1509489) (not e!2298974))))

(assert (=> d!1087335 (= res!1509489 ((_ is Cons!39604) (t!302411 (usedCharacters!1110 r!26326))))))

(assert (=> d!1087335 (= (contains!7940 (t!302411 (usedCharacters!1110 r!26326)) c!13576) lt!1296934)))

(declare-fun b!3712368 () Bool)

(declare-fun e!2298975 () Bool)

(assert (=> b!3712368 (= e!2298974 e!2298975)))

(declare-fun res!1509490 () Bool)

(assert (=> b!3712368 (=> res!1509490 e!2298975)))

(assert (=> b!3712368 (= res!1509490 (= (h!45024 (t!302411 (usedCharacters!1110 r!26326))) c!13576))))

(declare-fun b!3712369 () Bool)

(assert (=> b!3712369 (= e!2298975 (contains!7940 (t!302411 (t!302411 (usedCharacters!1110 r!26326))) c!13576))))

(assert (= (and d!1087335 res!1509489) b!3712368))

(assert (= (and b!3712368 (not res!1509490)) b!3712369))

(assert (=> d!1087335 m!4219153))

(declare-fun m!4219219 () Bool)

(assert (=> d!1087335 m!4219219))

(declare-fun m!4219221 () Bool)

(assert (=> b!3712369 m!4219221))

(assert (=> b!3711785 d!1087335))

(declare-fun d!1087337 () Bool)

(declare-fun c!641383 () Bool)

(assert (=> d!1087337 (= c!641383 ((_ is Nil!39604) (usedCharacters!1110 (regOne!22207 r!26326))))))

(declare-fun e!2298976 () (InoxSet C!21880))

(assert (=> d!1087337 (= (content!5730 (usedCharacters!1110 (regOne!22207 r!26326))) e!2298976)))

(declare-fun b!3712370 () Bool)

(assert (=> b!3712370 (= e!2298976 ((as const (Array C!21880 Bool)) false))))

(declare-fun b!3712371 () Bool)

(assert (=> b!3712371 (= e!2298976 ((_ map or) (store ((as const (Array C!21880 Bool)) false) (h!45024 (usedCharacters!1110 (regOne!22207 r!26326))) true) (content!5730 (t!302411 (usedCharacters!1110 (regOne!22207 r!26326))))))))

(assert (= (and d!1087337 c!641383) b!3712370))

(assert (= (and d!1087337 (not c!641383)) b!3712371))

(declare-fun m!4219223 () Bool)

(assert (=> b!3712371 m!4219223))

(declare-fun m!4219225 () Bool)

(assert (=> b!3712371 m!4219225))

(assert (=> d!1087205 d!1087337))

(assert (=> d!1087209 d!1087205))

(assert (=> d!1087209 d!1087207))

(declare-fun d!1087339 () Bool)

(assert (=> d!1087339 (contains!7940 (usedCharacters!1110 (regOne!22207 r!26326)) c!13576)))

(assert (=> d!1087339 true))

(declare-fun _$132!101 () Unit!57492)

(assert (=> d!1087339 (= (choose!22174 (regOne!22207 r!26326) c!13576 tl!3933) _$132!101)))

(declare-fun bs!574763 () Bool)

(assert (= bs!574763 d!1087339))

(assert (=> bs!574763 m!4218679))

(assert (=> bs!574763 m!4218679))

(assert (=> bs!574763 m!4218683))

(assert (=> d!1087209 d!1087339))

(assert (=> d!1087209 d!1087163))

(declare-fun d!1087341 () Bool)

(declare-fun lt!1296935 () Regex!10847)

(assert (=> d!1087341 (validRegex!4954 lt!1296935)))

(declare-fun e!2298977 () Regex!10847)

(assert (=> d!1087341 (= lt!1296935 e!2298977)))

(declare-fun c!641385 () Bool)

(assert (=> d!1087341 (= c!641385 ((_ is Cons!39604) (t!302411 tl!3933)))))

(assert (=> d!1087341 (validRegex!4954 (derivativeStep!3312 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) (h!45024 tl!3933)))))

(assert (=> d!1087341 (= (derivative!361 (derivativeStep!3312 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) (h!45024 tl!3933)) (t!302411 tl!3933)) lt!1296935)))

(declare-fun b!3712372 () Bool)

(assert (=> b!3712372 (= e!2298977 (derivative!361 (derivativeStep!3312 (derivativeStep!3312 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) (h!45024 tl!3933)) (h!45024 (t!302411 tl!3933))) (t!302411 (t!302411 tl!3933))))))

(declare-fun b!3712373 () Bool)

(assert (=> b!3712373 (= e!2298977 (derivativeStep!3312 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) (h!45024 tl!3933)))))

(assert (= (and d!1087341 c!641385) b!3712372))

(assert (= (and d!1087341 (not c!641385)) b!3712373))

(declare-fun m!4219227 () Bool)

(assert (=> d!1087341 m!4219227))

(assert (=> d!1087341 m!4218797))

(declare-fun m!4219229 () Bool)

(assert (=> d!1087341 m!4219229))

(assert (=> b!3712372 m!4218797))

(declare-fun m!4219231 () Bool)

(assert (=> b!3712372 m!4219231))

(assert (=> b!3712372 m!4219231))

(declare-fun m!4219233 () Bool)

(assert (=> b!3712372 m!4219233))

(assert (=> b!3711725 d!1087341))

(declare-fun bm!268678 () Bool)

(declare-fun call!268684 () Regex!10847)

(declare-fun call!268685 () Regex!10847)

(assert (=> bm!268678 (= call!268684 call!268685)))

(declare-fun b!3712374 () Bool)

(declare-fun e!2298978 () Regex!10847)

(declare-fun e!2298980 () Regex!10847)

(assert (=> b!3712374 (= e!2298978 e!2298980)))

(declare-fun c!641390 () Bool)

(assert (=> b!3712374 (= c!641390 ((_ is Star!10847) (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))))

(declare-fun e!2298981 () Regex!10847)

(declare-fun b!3712375 () Bool)

(assert (=> b!3712375 (= e!2298981 (Union!10847 (Concat!17118 call!268684 (regTwo!22206 (derivativeStep!3312 (regOne!22207 r!26326) c!13576))) EmptyLang!10847))))

(declare-fun b!3712376 () Bool)

(declare-fun e!2298982 () Regex!10847)

(assert (=> b!3712376 (= e!2298982 EmptyLang!10847)))

(declare-fun b!3712377 () Bool)

(declare-fun c!641389 () Bool)

(assert (=> b!3712377 (= c!641389 (nullable!3770 (regOne!22206 (derivativeStep!3312 (regOne!22207 r!26326) c!13576))))))

(assert (=> b!3712377 (= e!2298980 e!2298981)))

(declare-fun b!3712378 () Bool)

(declare-fun e!2298979 () Regex!10847)

(assert (=> b!3712378 (= e!2298982 e!2298979)))

(declare-fun c!641387 () Bool)

(assert (=> b!3712378 (= c!641387 ((_ is ElementMatch!10847) (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))))

(declare-fun b!3712379 () Bool)

(declare-fun call!268686 () Regex!10847)

(assert (=> b!3712379 (= e!2298978 (Union!10847 call!268685 call!268686))))

(declare-fun bm!268679 () Bool)

(declare-fun c!641388 () Bool)

(assert (=> bm!268679 (= call!268686 (derivativeStep!3312 (ite c!641388 (regTwo!22207 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)) (ite c!641390 (reg!11176 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)) (regTwo!22206 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))) (h!45024 tl!3933)))))

(declare-fun b!3712380 () Bool)

(assert (=> b!3712380 (= e!2298979 (ite (= (h!45024 tl!3933) (c!641139 (derivativeStep!3312 (regOne!22207 r!26326) c!13576))) EmptyExpr!10847 EmptyLang!10847))))

(declare-fun bm!268680 () Bool)

(assert (=> bm!268680 (= call!268685 (derivativeStep!3312 (ite c!641388 (regOne!22207 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)) (regOne!22206 (derivativeStep!3312 (regOne!22207 r!26326) c!13576))) (h!45024 tl!3933)))))

(declare-fun d!1087343 () Bool)

(declare-fun lt!1296936 () Regex!10847)

(assert (=> d!1087343 (validRegex!4954 lt!1296936)))

(assert (=> d!1087343 (= lt!1296936 e!2298982)))

(declare-fun c!641386 () Bool)

(assert (=> d!1087343 (= c!641386 (or ((_ is EmptyExpr!10847) (derivativeStep!3312 (regOne!22207 r!26326) c!13576)) ((_ is EmptyLang!10847) (derivativeStep!3312 (regOne!22207 r!26326) c!13576))))))

(assert (=> d!1087343 (validRegex!4954 (derivativeStep!3312 (regOne!22207 r!26326) c!13576))))

(assert (=> d!1087343 (= (derivativeStep!3312 (derivativeStep!3312 (regOne!22207 r!26326) c!13576) (h!45024 tl!3933)) lt!1296936)))

(declare-fun bm!268681 () Bool)

(declare-fun call!268683 () Regex!10847)

(assert (=> bm!268681 (= call!268683 call!268686)))

(declare-fun b!3712381 () Bool)

(assert (=> b!3712381 (= e!2298980 (Concat!17118 call!268683 (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))))

(declare-fun b!3712382 () Bool)

(assert (=> b!3712382 (= e!2298981 (Union!10847 (Concat!17118 call!268684 (regTwo!22206 (derivativeStep!3312 (regOne!22207 r!26326) c!13576))) call!268683))))

(declare-fun b!3712383 () Bool)

(assert (=> b!3712383 (= c!641388 ((_ is Union!10847) (derivativeStep!3312 (regOne!22207 r!26326) c!13576)))))

(assert (=> b!3712383 (= e!2298979 e!2298978)))

(assert (= (and d!1087343 c!641386) b!3712376))

(assert (= (and d!1087343 (not c!641386)) b!3712378))

(assert (= (and b!3712378 c!641387) b!3712380))

(assert (= (and b!3712378 (not c!641387)) b!3712383))

(assert (= (and b!3712383 c!641388) b!3712379))

(assert (= (and b!3712383 (not c!641388)) b!3712374))

(assert (= (and b!3712374 c!641390) b!3712381))

(assert (= (and b!3712374 (not c!641390)) b!3712377))

(assert (= (and b!3712377 c!641389) b!3712382))

(assert (= (and b!3712377 (not c!641389)) b!3712375))

(assert (= (or b!3712382 b!3712375) bm!268678))

(assert (= (or b!3712381 b!3712382) bm!268681))

(assert (= (or b!3712379 bm!268681) bm!268679))

(assert (= (or b!3712379 bm!268678) bm!268680))

(declare-fun m!4219235 () Bool)

(assert (=> b!3712377 m!4219235))

(declare-fun m!4219237 () Bool)

(assert (=> bm!268679 m!4219237))

(declare-fun m!4219239 () Bool)

(assert (=> bm!268680 m!4219239))

(declare-fun m!4219241 () Bool)

(assert (=> d!1087343 m!4219241))

(assert (=> d!1087343 m!4218669))

(assert (=> d!1087343 m!4218795))

(assert (=> b!3711725 d!1087343))

(declare-fun d!1087345 () Bool)

(declare-fun lt!1296937 () Bool)

(assert (=> d!1087345 (= lt!1296937 (select (content!5730 (t!302411 (usedCharacters!1110 (regOne!22207 r!26326)))) c!13576))))

(declare-fun e!2298983 () Bool)

(assert (=> d!1087345 (= lt!1296937 e!2298983)))

(declare-fun res!1509491 () Bool)

(assert (=> d!1087345 (=> (not res!1509491) (not e!2298983))))

(assert (=> d!1087345 (= res!1509491 ((_ is Cons!39604) (t!302411 (usedCharacters!1110 (regOne!22207 r!26326)))))))

(assert (=> d!1087345 (= (contains!7940 (t!302411 (usedCharacters!1110 (regOne!22207 r!26326))) c!13576) lt!1296937)))

(declare-fun b!3712384 () Bool)

(declare-fun e!2298984 () Bool)

(assert (=> b!3712384 (= e!2298983 e!2298984)))

(declare-fun res!1509492 () Bool)

(assert (=> b!3712384 (=> res!1509492 e!2298984)))

(assert (=> b!3712384 (= res!1509492 (= (h!45024 (t!302411 (usedCharacters!1110 (regOne!22207 r!26326)))) c!13576))))

(declare-fun b!3712385 () Bool)

(assert (=> b!3712385 (= e!2298984 (contains!7940 (t!302411 (t!302411 (usedCharacters!1110 (regOne!22207 r!26326)))) c!13576))))

(assert (= (and d!1087345 res!1509491) b!3712384))

(assert (= (and b!3712384 (not res!1509492)) b!3712385))

(assert (=> d!1087345 m!4219225))

(declare-fun m!4219243 () Bool)

(assert (=> d!1087345 m!4219243))

(declare-fun m!4219245 () Bool)

(assert (=> b!3712385 m!4219245))

(assert (=> b!3711775 d!1087345))

(declare-fun d!1087347 () Bool)

(declare-fun c!641392 () Bool)

(assert (=> d!1087347 (= c!641392 (or ((_ is EmptyExpr!10847) (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))) ((_ is EmptyLang!10847) (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326)))))))

(declare-fun e!2298987 () List!39728)

(assert (=> d!1087347 (= (usedCharacters!1110 (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))) e!2298987)))

(declare-fun b!3712386 () Bool)

(declare-fun c!641393 () Bool)

(assert (=> b!3712386 (= c!641393 ((_ is Star!10847) (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))))))

(declare-fun e!2298986 () List!39728)

(declare-fun e!2298988 () List!39728)

(assert (=> b!3712386 (= e!2298986 e!2298988)))

(declare-fun call!268688 () List!39728)

(declare-fun bm!268682 () Bool)

(declare-fun c!641394 () Bool)

(assert (=> bm!268682 (= call!268688 (usedCharacters!1110 (ite c!641394 (regOne!22207 (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))) (regOne!22206 (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))))))))

(declare-fun bm!268683 () Bool)

(declare-fun call!268689 () List!39728)

(declare-fun call!268690 () List!39728)

(assert (=> bm!268683 (= call!268689 (++!9793 call!268688 call!268690))))

(declare-fun b!3712387 () Bool)

(assert (=> b!3712387 (= e!2298987 Nil!39604)))

(declare-fun b!3712388 () Bool)

(assert (=> b!3712388 (= e!2298986 (Cons!39604 (c!641139 (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))) Nil!39604))))

(declare-fun b!3712389 () Bool)

(declare-fun e!2298985 () List!39728)

(assert (=> b!3712389 (= e!2298988 e!2298985)))

(assert (=> b!3712389 (= c!641394 ((_ is Union!10847) (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))))))

(declare-fun b!3712390 () Bool)

(assert (=> b!3712390 (= e!2298985 call!268689)))

(declare-fun bm!268684 () Bool)

(declare-fun call!268687 () List!39728)

(assert (=> bm!268684 (= call!268687 (usedCharacters!1110 (ite c!641393 (reg!11176 (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))) (ite c!641394 (regTwo!22207 (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))) (regTwo!22206 (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326)))))))))

(declare-fun b!3712391 () Bool)

(assert (=> b!3712391 (= e!2298987 e!2298986)))

(declare-fun c!641391 () Bool)

(assert (=> b!3712391 (= c!641391 ((_ is ElementMatch!10847) (ite c!641232 (regOne!22207 r!26326) (regOne!22206 r!26326))))))

(declare-fun b!3712392 () Bool)

(assert (=> b!3712392 (= e!2298988 call!268687)))

(declare-fun bm!268685 () Bool)

(assert (=> bm!268685 (= call!268690 call!268687)))

(declare-fun b!3712393 () Bool)

(assert (=> b!3712393 (= e!2298985 call!268689)))

(assert (= (and d!1087347 c!641392) b!3712387))

(assert (= (and d!1087347 (not c!641392)) b!3712391))

(assert (= (and b!3712391 c!641391) b!3712388))

(assert (= (and b!3712391 (not c!641391)) b!3712386))

(assert (= (and b!3712386 c!641393) b!3712392))

(assert (= (and b!3712386 (not c!641393)) b!3712389))

(assert (= (and b!3712389 c!641394) b!3712390))

(assert (= (and b!3712389 (not c!641394)) b!3712393))

(assert (= (or b!3712390 b!3712393) bm!268682))

(assert (= (or b!3712390 b!3712393) bm!268685))

(assert (= (or b!3712390 b!3712393) bm!268683))

(assert (= (or b!3712392 bm!268685) bm!268684))

(declare-fun m!4219247 () Bool)

(assert (=> bm!268682 m!4219247))

(declare-fun m!4219249 () Bool)

(assert (=> bm!268683 m!4219249))

(declare-fun m!4219251 () Bool)

(assert (=> bm!268684 m!4219251))

(assert (=> bm!268526 d!1087347))

(declare-fun d!1087349 () Bool)

(declare-fun c!641396 () Bool)

(assert (=> d!1087349 (= c!641396 (or ((_ is EmptyExpr!10847) (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) ((_ is EmptyLang!10847) (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))

(declare-fun e!2298991 () List!39728)

(assert (=> d!1087349 (= (usedCharacters!1110 (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) e!2298991)))

(declare-fun b!3712394 () Bool)

(declare-fun c!641397 () Bool)

(assert (=> b!3712394 (= c!641397 ((_ is Star!10847) (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))

(declare-fun e!2298990 () List!39728)

(declare-fun e!2298992 () List!39728)

(assert (=> b!3712394 (= e!2298990 e!2298992)))

(declare-fun c!641398 () Bool)

(declare-fun bm!268686 () Bool)

(declare-fun call!268692 () List!39728)

(assert (=> bm!268686 (= call!268692 (usedCharacters!1110 (ite c!641398 (regOne!22207 (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) (regOne!22206 (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))))

(declare-fun bm!268687 () Bool)

(declare-fun call!268693 () List!39728)

(declare-fun call!268694 () List!39728)

(assert (=> bm!268687 (= call!268693 (++!9793 call!268692 call!268694))))

(declare-fun b!3712395 () Bool)

(assert (=> b!3712395 (= e!2298991 Nil!39604)))

(declare-fun b!3712396 () Bool)

(assert (=> b!3712396 (= e!2298990 (Cons!39604 (c!641139 (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) Nil!39604))))

(declare-fun b!3712397 () Bool)

(declare-fun e!2298989 () List!39728)

(assert (=> b!3712397 (= e!2298992 e!2298989)))

(assert (=> b!3712397 (= c!641398 ((_ is Union!10847) (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))

(declare-fun b!3712398 () Bool)

(assert (=> b!3712398 (= e!2298989 call!268693)))

(declare-fun bm!268688 () Bool)

(declare-fun call!268691 () List!39728)

(assert (=> bm!268688 (= call!268691 (usedCharacters!1110 (ite c!641397 (reg!11176 (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) (ite c!641398 (regTwo!22207 (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))) (regTwo!22206 (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326))))))))))

(declare-fun b!3712399 () Bool)

(assert (=> b!3712399 (= e!2298991 e!2298990)))

(declare-fun c!641395 () Bool)

(assert (=> b!3712399 (= c!641395 ((_ is ElementMatch!10847) (ite c!641236 (regOne!22207 (regOne!22207 r!26326)) (regOne!22206 (regOne!22207 r!26326)))))))

(declare-fun b!3712400 () Bool)

(assert (=> b!3712400 (= e!2298992 call!268691)))

(declare-fun bm!268689 () Bool)

(assert (=> bm!268689 (= call!268694 call!268691)))

(declare-fun b!3712401 () Bool)

(assert (=> b!3712401 (= e!2298989 call!268693)))

(assert (= (and d!1087349 c!641396) b!3712395))

(assert (= (and d!1087349 (not c!641396)) b!3712399))

(assert (= (and b!3712399 c!641395) b!3712396))

(assert (= (and b!3712399 (not c!641395)) b!3712394))

(assert (= (and b!3712394 c!641397) b!3712400))

(assert (= (and b!3712394 (not c!641397)) b!3712397))

(assert (= (and b!3712397 c!641398) b!3712398))

(assert (= (and b!3712397 (not c!641398)) b!3712401))

(assert (= (or b!3712398 b!3712401) bm!268686))

(assert (= (or b!3712398 b!3712401) bm!268689))

(assert (= (or b!3712398 b!3712401) bm!268687))

(assert (= (or b!3712400 bm!268689) bm!268688))

(declare-fun m!4219253 () Bool)

(assert (=> bm!268686 m!4219253))

(declare-fun m!4219255 () Bool)

(assert (=> bm!268687 m!4219255))

(declare-fun m!4219257 () Bool)

(assert (=> bm!268688 m!4219257))

(assert (=> bm!268530 d!1087349))

(declare-fun b!3712404 () Bool)

(declare-fun res!1509493 () Bool)

(declare-fun e!2298994 () Bool)

(assert (=> b!3712404 (=> (not res!1509493) (not e!2298994))))

(declare-fun lt!1296938 () List!39728)

(assert (=> b!3712404 (= res!1509493 (= (size!30013 lt!1296938) (+ (size!30013 call!268532) (size!30013 call!268534))))))

(declare-fun b!3712405 () Bool)

(assert (=> b!3712405 (= e!2298994 (or (not (= call!268534 Nil!39604)) (= lt!1296938 call!268532)))))

(declare-fun b!3712402 () Bool)

(declare-fun e!2298993 () List!39728)

(assert (=> b!3712402 (= e!2298993 call!268534)))

(declare-fun d!1087351 () Bool)

(assert (=> d!1087351 e!2298994))

(declare-fun res!1509494 () Bool)

(assert (=> d!1087351 (=> (not res!1509494) (not e!2298994))))

(assert (=> d!1087351 (= res!1509494 (= (content!5730 lt!1296938) ((_ map or) (content!5730 call!268532) (content!5730 call!268534))))))

(assert (=> d!1087351 (= lt!1296938 e!2298993)))

(declare-fun c!641399 () Bool)

(assert (=> d!1087351 (= c!641399 ((_ is Nil!39604) call!268532))))

(assert (=> d!1087351 (= (++!9793 call!268532 call!268534) lt!1296938)))

(declare-fun b!3712403 () Bool)

(assert (=> b!3712403 (= e!2298993 (Cons!39604 (h!45024 call!268532) (++!9793 (t!302411 call!268532) call!268534)))))

(assert (= (and d!1087351 c!641399) b!3712402))

(assert (= (and d!1087351 (not c!641399)) b!3712403))

(assert (= (and d!1087351 res!1509494) b!3712404))

(assert (= (and b!3712404 res!1509493) b!3712405))

(declare-fun m!4219259 () Bool)

(assert (=> b!3712404 m!4219259))

(declare-fun m!4219261 () Bool)

(assert (=> b!3712404 m!4219261))

(declare-fun m!4219263 () Bool)

(assert (=> b!3712404 m!4219263))

(declare-fun m!4219265 () Bool)

(assert (=> d!1087351 m!4219265))

(declare-fun m!4219267 () Bool)

(assert (=> d!1087351 m!4219267))

(declare-fun m!4219269 () Bool)

(assert (=> d!1087351 m!4219269))

(declare-fun m!4219271 () Bool)

(assert (=> b!3712403 m!4219271))

(assert (=> bm!268527 d!1087351))

(declare-fun e!2298995 () Bool)

(assert (=> b!3711801 (= tp!1129614 e!2298995)))

(declare-fun b!3712408 () Bool)

(declare-fun tp!1129760 () Bool)

(assert (=> b!3712408 (= e!2298995 tp!1129760)))

(declare-fun b!3712409 () Bool)

(declare-fun tp!1129761 () Bool)

(declare-fun tp!1129759 () Bool)

(assert (=> b!3712409 (= e!2298995 (and tp!1129761 tp!1129759))))

(declare-fun b!3712407 () Bool)

(declare-fun tp!1129763 () Bool)

(declare-fun tp!1129762 () Bool)

(assert (=> b!3712407 (= e!2298995 (and tp!1129763 tp!1129762))))

(declare-fun b!3712406 () Bool)

(assert (=> b!3712406 (= e!2298995 tp_is_empty!18709)))

(assert (= (and b!3711801 ((_ is ElementMatch!10847) (regOne!22206 (regTwo!22207 r!26326)))) b!3712406))

(assert (= (and b!3711801 ((_ is Concat!17118) (regOne!22206 (regTwo!22207 r!26326)))) b!3712407))

(assert (= (and b!3711801 ((_ is Star!10847) (regOne!22206 (regTwo!22207 r!26326)))) b!3712408))

(assert (= (and b!3711801 ((_ is Union!10847) (regOne!22206 (regTwo!22207 r!26326)))) b!3712409))

(declare-fun e!2298996 () Bool)

(assert (=> b!3711801 (= tp!1129613 e!2298996)))

(declare-fun b!3712412 () Bool)

(declare-fun tp!1129765 () Bool)

(assert (=> b!3712412 (= e!2298996 tp!1129765)))

(declare-fun b!3712413 () Bool)

(declare-fun tp!1129766 () Bool)

(declare-fun tp!1129764 () Bool)

(assert (=> b!3712413 (= e!2298996 (and tp!1129766 tp!1129764))))

(declare-fun b!3712411 () Bool)

(declare-fun tp!1129768 () Bool)

(declare-fun tp!1129767 () Bool)

(assert (=> b!3712411 (= e!2298996 (and tp!1129768 tp!1129767))))

(declare-fun b!3712410 () Bool)

(assert (=> b!3712410 (= e!2298996 tp_is_empty!18709)))

(assert (= (and b!3711801 ((_ is ElementMatch!10847) (regTwo!22206 (regTwo!22207 r!26326)))) b!3712410))

(assert (= (and b!3711801 ((_ is Concat!17118) (regTwo!22206 (regTwo!22207 r!26326)))) b!3712411))

(assert (= (and b!3711801 ((_ is Star!10847) (regTwo!22206 (regTwo!22207 r!26326)))) b!3712412))

(assert (= (and b!3711801 ((_ is Union!10847) (regTwo!22206 (regTwo!22207 r!26326)))) b!3712413))

(declare-fun e!2298997 () Bool)

(assert (=> b!3711797 (= tp!1129609 e!2298997)))

(declare-fun b!3712416 () Bool)

(declare-fun tp!1129770 () Bool)

(assert (=> b!3712416 (= e!2298997 tp!1129770)))

(declare-fun b!3712417 () Bool)

(declare-fun tp!1129771 () Bool)

(declare-fun tp!1129769 () Bool)

(assert (=> b!3712417 (= e!2298997 (and tp!1129771 tp!1129769))))

(declare-fun b!3712415 () Bool)

(declare-fun tp!1129773 () Bool)

(declare-fun tp!1129772 () Bool)

(assert (=> b!3712415 (= e!2298997 (and tp!1129773 tp!1129772))))

(declare-fun b!3712414 () Bool)

(assert (=> b!3712414 (= e!2298997 tp_is_empty!18709)))

(assert (= (and b!3711797 ((_ is ElementMatch!10847) (regOne!22206 (regOne!22207 r!26326)))) b!3712414))

(assert (= (and b!3711797 ((_ is Concat!17118) (regOne!22206 (regOne!22207 r!26326)))) b!3712415))

(assert (= (and b!3711797 ((_ is Star!10847) (regOne!22206 (regOne!22207 r!26326)))) b!3712416))

(assert (= (and b!3711797 ((_ is Union!10847) (regOne!22206 (regOne!22207 r!26326)))) b!3712417))

(declare-fun e!2298998 () Bool)

(assert (=> b!3711797 (= tp!1129608 e!2298998)))

(declare-fun b!3712420 () Bool)

(declare-fun tp!1129775 () Bool)

(assert (=> b!3712420 (= e!2298998 tp!1129775)))

(declare-fun b!3712421 () Bool)

(declare-fun tp!1129776 () Bool)

(declare-fun tp!1129774 () Bool)

(assert (=> b!3712421 (= e!2298998 (and tp!1129776 tp!1129774))))

(declare-fun b!3712419 () Bool)

(declare-fun tp!1129778 () Bool)

(declare-fun tp!1129777 () Bool)

(assert (=> b!3712419 (= e!2298998 (and tp!1129778 tp!1129777))))

(declare-fun b!3712418 () Bool)

(assert (=> b!3712418 (= e!2298998 tp_is_empty!18709)))

(assert (= (and b!3711797 ((_ is ElementMatch!10847) (regTwo!22206 (regOne!22207 r!26326)))) b!3712418))

(assert (= (and b!3711797 ((_ is Concat!17118) (regTwo!22206 (regOne!22207 r!26326)))) b!3712419))

(assert (= (and b!3711797 ((_ is Star!10847) (regTwo!22206 (regOne!22207 r!26326)))) b!3712420))

(assert (= (and b!3711797 ((_ is Union!10847) (regTwo!22206 (regOne!22207 r!26326)))) b!3712421))

(declare-fun e!2298999 () Bool)

(assert (=> b!3711802 (= tp!1129611 e!2298999)))

(declare-fun b!3712424 () Bool)

(declare-fun tp!1129780 () Bool)

(assert (=> b!3712424 (= e!2298999 tp!1129780)))

(declare-fun b!3712425 () Bool)

(declare-fun tp!1129781 () Bool)

(declare-fun tp!1129779 () Bool)

(assert (=> b!3712425 (= e!2298999 (and tp!1129781 tp!1129779))))

(declare-fun b!3712423 () Bool)

(declare-fun tp!1129783 () Bool)

(declare-fun tp!1129782 () Bool)

(assert (=> b!3712423 (= e!2298999 (and tp!1129783 tp!1129782))))

(declare-fun b!3712422 () Bool)

(assert (=> b!3712422 (= e!2298999 tp_is_empty!18709)))

(assert (= (and b!3711802 ((_ is ElementMatch!10847) (reg!11176 (regTwo!22207 r!26326)))) b!3712422))

(assert (= (and b!3711802 ((_ is Concat!17118) (reg!11176 (regTwo!22207 r!26326)))) b!3712423))

(assert (= (and b!3711802 ((_ is Star!10847) (reg!11176 (regTwo!22207 r!26326)))) b!3712424))

(assert (= (and b!3711802 ((_ is Union!10847) (reg!11176 (regTwo!22207 r!26326)))) b!3712425))

(declare-fun e!2299000 () Bool)

(assert (=> b!3711803 (= tp!1129612 e!2299000)))

(declare-fun b!3712428 () Bool)

(declare-fun tp!1129785 () Bool)

(assert (=> b!3712428 (= e!2299000 tp!1129785)))

(declare-fun b!3712429 () Bool)

(declare-fun tp!1129786 () Bool)

(declare-fun tp!1129784 () Bool)

(assert (=> b!3712429 (= e!2299000 (and tp!1129786 tp!1129784))))

(declare-fun b!3712427 () Bool)

(declare-fun tp!1129788 () Bool)

(declare-fun tp!1129787 () Bool)

(assert (=> b!3712427 (= e!2299000 (and tp!1129788 tp!1129787))))

(declare-fun b!3712426 () Bool)

(assert (=> b!3712426 (= e!2299000 tp_is_empty!18709)))

(assert (= (and b!3711803 ((_ is ElementMatch!10847) (regOne!22207 (regTwo!22207 r!26326)))) b!3712426))

(assert (= (and b!3711803 ((_ is Concat!17118) (regOne!22207 (regTwo!22207 r!26326)))) b!3712427))

(assert (= (and b!3711803 ((_ is Star!10847) (regOne!22207 (regTwo!22207 r!26326)))) b!3712428))

(assert (= (and b!3711803 ((_ is Union!10847) (regOne!22207 (regTwo!22207 r!26326)))) b!3712429))

(declare-fun e!2299001 () Bool)

(assert (=> b!3711803 (= tp!1129610 e!2299001)))

(declare-fun b!3712432 () Bool)

(declare-fun tp!1129790 () Bool)

(assert (=> b!3712432 (= e!2299001 tp!1129790)))

(declare-fun b!3712433 () Bool)

(declare-fun tp!1129791 () Bool)

(declare-fun tp!1129789 () Bool)

(assert (=> b!3712433 (= e!2299001 (and tp!1129791 tp!1129789))))

(declare-fun b!3712431 () Bool)

(declare-fun tp!1129793 () Bool)

(declare-fun tp!1129792 () Bool)

(assert (=> b!3712431 (= e!2299001 (and tp!1129793 tp!1129792))))

(declare-fun b!3712430 () Bool)

(assert (=> b!3712430 (= e!2299001 tp_is_empty!18709)))

(assert (= (and b!3711803 ((_ is ElementMatch!10847) (regTwo!22207 (regTwo!22207 r!26326)))) b!3712430))

(assert (= (and b!3711803 ((_ is Concat!17118) (regTwo!22207 (regTwo!22207 r!26326)))) b!3712431))

(assert (= (and b!3711803 ((_ is Star!10847) (regTwo!22207 (regTwo!22207 r!26326)))) b!3712432))

(assert (= (and b!3711803 ((_ is Union!10847) (regTwo!22207 (regTwo!22207 r!26326)))) b!3712433))

(declare-fun e!2299002 () Bool)

(assert (=> b!3711798 (= tp!1129606 e!2299002)))

(declare-fun b!3712436 () Bool)

(declare-fun tp!1129795 () Bool)

(assert (=> b!3712436 (= e!2299002 tp!1129795)))

(declare-fun b!3712437 () Bool)

(declare-fun tp!1129796 () Bool)

(declare-fun tp!1129794 () Bool)

(assert (=> b!3712437 (= e!2299002 (and tp!1129796 tp!1129794))))

(declare-fun b!3712435 () Bool)

(declare-fun tp!1129798 () Bool)

(declare-fun tp!1129797 () Bool)

(assert (=> b!3712435 (= e!2299002 (and tp!1129798 tp!1129797))))

(declare-fun b!3712434 () Bool)

(assert (=> b!3712434 (= e!2299002 tp_is_empty!18709)))

(assert (= (and b!3711798 ((_ is ElementMatch!10847) (reg!11176 (regOne!22207 r!26326)))) b!3712434))

(assert (= (and b!3711798 ((_ is Concat!17118) (reg!11176 (regOne!22207 r!26326)))) b!3712435))

(assert (= (and b!3711798 ((_ is Star!10847) (reg!11176 (regOne!22207 r!26326)))) b!3712436))

(assert (= (and b!3711798 ((_ is Union!10847) (reg!11176 (regOne!22207 r!26326)))) b!3712437))

(declare-fun e!2299003 () Bool)

(assert (=> b!3711799 (= tp!1129607 e!2299003)))

(declare-fun b!3712440 () Bool)

(declare-fun tp!1129800 () Bool)

(assert (=> b!3712440 (= e!2299003 tp!1129800)))

(declare-fun b!3712441 () Bool)

(declare-fun tp!1129801 () Bool)

(declare-fun tp!1129799 () Bool)

(assert (=> b!3712441 (= e!2299003 (and tp!1129801 tp!1129799))))

(declare-fun b!3712439 () Bool)

(declare-fun tp!1129803 () Bool)

(declare-fun tp!1129802 () Bool)

(assert (=> b!3712439 (= e!2299003 (and tp!1129803 tp!1129802))))

(declare-fun b!3712438 () Bool)

(assert (=> b!3712438 (= e!2299003 tp_is_empty!18709)))

(assert (= (and b!3711799 ((_ is ElementMatch!10847) (regOne!22207 (regOne!22207 r!26326)))) b!3712438))

(assert (= (and b!3711799 ((_ is Concat!17118) (regOne!22207 (regOne!22207 r!26326)))) b!3712439))

(assert (= (and b!3711799 ((_ is Star!10847) (regOne!22207 (regOne!22207 r!26326)))) b!3712440))

(assert (= (and b!3711799 ((_ is Union!10847) (regOne!22207 (regOne!22207 r!26326)))) b!3712441))

(declare-fun e!2299004 () Bool)

(assert (=> b!3711799 (= tp!1129605 e!2299004)))

(declare-fun b!3712444 () Bool)

(declare-fun tp!1129805 () Bool)

(assert (=> b!3712444 (= e!2299004 tp!1129805)))

(declare-fun b!3712445 () Bool)

(declare-fun tp!1129806 () Bool)

(declare-fun tp!1129804 () Bool)

(assert (=> b!3712445 (= e!2299004 (and tp!1129806 tp!1129804))))

(declare-fun b!3712443 () Bool)

(declare-fun tp!1129808 () Bool)

(declare-fun tp!1129807 () Bool)

(assert (=> b!3712443 (= e!2299004 (and tp!1129808 tp!1129807))))

(declare-fun b!3712442 () Bool)

(assert (=> b!3712442 (= e!2299004 tp_is_empty!18709)))

(assert (= (and b!3711799 ((_ is ElementMatch!10847) (regTwo!22207 (regOne!22207 r!26326)))) b!3712442))

(assert (= (and b!3711799 ((_ is Concat!17118) (regTwo!22207 (regOne!22207 r!26326)))) b!3712443))

(assert (= (and b!3711799 ((_ is Star!10847) (regTwo!22207 (regOne!22207 r!26326)))) b!3712444))

(assert (= (and b!3711799 ((_ is Union!10847) (regTwo!22207 (regOne!22207 r!26326)))) b!3712445))

(declare-fun e!2299005 () Bool)

(assert (=> b!3711818 (= tp!1129632 e!2299005)))

(declare-fun b!3712448 () Bool)

(declare-fun tp!1129810 () Bool)

(assert (=> b!3712448 (= e!2299005 tp!1129810)))

(declare-fun b!3712449 () Bool)

(declare-fun tp!1129811 () Bool)

(declare-fun tp!1129809 () Bool)

(assert (=> b!3712449 (= e!2299005 (and tp!1129811 tp!1129809))))

(declare-fun b!3712447 () Bool)

(declare-fun tp!1129813 () Bool)

(declare-fun tp!1129812 () Bool)

(assert (=> b!3712447 (= e!2299005 (and tp!1129813 tp!1129812))))

(declare-fun b!3712446 () Bool)

(assert (=> b!3712446 (= e!2299005 tp_is_empty!18709)))

(assert (= (and b!3711818 ((_ is ElementMatch!10847) (regOne!22206 (reg!11176 r!26326)))) b!3712446))

(assert (= (and b!3711818 ((_ is Concat!17118) (regOne!22206 (reg!11176 r!26326)))) b!3712447))

(assert (= (and b!3711818 ((_ is Star!10847) (regOne!22206 (reg!11176 r!26326)))) b!3712448))

(assert (= (and b!3711818 ((_ is Union!10847) (regOne!22206 (reg!11176 r!26326)))) b!3712449))

(declare-fun e!2299006 () Bool)

(assert (=> b!3711818 (= tp!1129631 e!2299006)))

(declare-fun b!3712452 () Bool)

(declare-fun tp!1129815 () Bool)

(assert (=> b!3712452 (= e!2299006 tp!1129815)))

(declare-fun b!3712453 () Bool)

(declare-fun tp!1129816 () Bool)

(declare-fun tp!1129814 () Bool)

(assert (=> b!3712453 (= e!2299006 (and tp!1129816 tp!1129814))))

(declare-fun b!3712451 () Bool)

(declare-fun tp!1129818 () Bool)

(declare-fun tp!1129817 () Bool)

(assert (=> b!3712451 (= e!2299006 (and tp!1129818 tp!1129817))))

(declare-fun b!3712450 () Bool)

(assert (=> b!3712450 (= e!2299006 tp_is_empty!18709)))

(assert (= (and b!3711818 ((_ is ElementMatch!10847) (regTwo!22206 (reg!11176 r!26326)))) b!3712450))

(assert (= (and b!3711818 ((_ is Concat!17118) (regTwo!22206 (reg!11176 r!26326)))) b!3712451))

(assert (= (and b!3711818 ((_ is Star!10847) (regTwo!22206 (reg!11176 r!26326)))) b!3712452))

(assert (= (and b!3711818 ((_ is Union!10847) (regTwo!22206 (reg!11176 r!26326)))) b!3712453))

(declare-fun e!2299007 () Bool)

(assert (=> b!3711819 (= tp!1129629 e!2299007)))

(declare-fun b!3712456 () Bool)

(declare-fun tp!1129820 () Bool)

(assert (=> b!3712456 (= e!2299007 tp!1129820)))

(declare-fun b!3712457 () Bool)

(declare-fun tp!1129821 () Bool)

(declare-fun tp!1129819 () Bool)

(assert (=> b!3712457 (= e!2299007 (and tp!1129821 tp!1129819))))

(declare-fun b!3712455 () Bool)

(declare-fun tp!1129823 () Bool)

(declare-fun tp!1129822 () Bool)

(assert (=> b!3712455 (= e!2299007 (and tp!1129823 tp!1129822))))

(declare-fun b!3712454 () Bool)

(assert (=> b!3712454 (= e!2299007 tp_is_empty!18709)))

(assert (= (and b!3711819 ((_ is ElementMatch!10847) (reg!11176 (reg!11176 r!26326)))) b!3712454))

(assert (= (and b!3711819 ((_ is Concat!17118) (reg!11176 (reg!11176 r!26326)))) b!3712455))

(assert (= (and b!3711819 ((_ is Star!10847) (reg!11176 (reg!11176 r!26326)))) b!3712456))

(assert (= (and b!3711819 ((_ is Union!10847) (reg!11176 (reg!11176 r!26326)))) b!3712457))

(declare-fun e!2299008 () Bool)

(assert (=> b!3711814 (= tp!1129627 e!2299008)))

(declare-fun b!3712460 () Bool)

(declare-fun tp!1129825 () Bool)

(assert (=> b!3712460 (= e!2299008 tp!1129825)))

(declare-fun b!3712461 () Bool)

(declare-fun tp!1129826 () Bool)

(declare-fun tp!1129824 () Bool)

(assert (=> b!3712461 (= e!2299008 (and tp!1129826 tp!1129824))))

(declare-fun b!3712459 () Bool)

(declare-fun tp!1129828 () Bool)

(declare-fun tp!1129827 () Bool)

(assert (=> b!3712459 (= e!2299008 (and tp!1129828 tp!1129827))))

(declare-fun b!3712458 () Bool)

(assert (=> b!3712458 (= e!2299008 tp_is_empty!18709)))

(assert (= (and b!3711814 ((_ is ElementMatch!10847) (regOne!22206 (regTwo!22206 r!26326)))) b!3712458))

(assert (= (and b!3711814 ((_ is Concat!17118) (regOne!22206 (regTwo!22206 r!26326)))) b!3712459))

(assert (= (and b!3711814 ((_ is Star!10847) (regOne!22206 (regTwo!22206 r!26326)))) b!3712460))

(assert (= (and b!3711814 ((_ is Union!10847) (regOne!22206 (regTwo!22206 r!26326)))) b!3712461))

(declare-fun e!2299009 () Bool)

(assert (=> b!3711814 (= tp!1129626 e!2299009)))

(declare-fun b!3712464 () Bool)

(declare-fun tp!1129830 () Bool)

(assert (=> b!3712464 (= e!2299009 tp!1129830)))

(declare-fun b!3712465 () Bool)

(declare-fun tp!1129831 () Bool)

(declare-fun tp!1129829 () Bool)

(assert (=> b!3712465 (= e!2299009 (and tp!1129831 tp!1129829))))

(declare-fun b!3712463 () Bool)

(declare-fun tp!1129833 () Bool)

(declare-fun tp!1129832 () Bool)

(assert (=> b!3712463 (= e!2299009 (and tp!1129833 tp!1129832))))

(declare-fun b!3712462 () Bool)

(assert (=> b!3712462 (= e!2299009 tp_is_empty!18709)))

(assert (= (and b!3711814 ((_ is ElementMatch!10847) (regTwo!22206 (regTwo!22206 r!26326)))) b!3712462))

(assert (= (and b!3711814 ((_ is Concat!17118) (regTwo!22206 (regTwo!22206 r!26326)))) b!3712463))

(assert (= (and b!3711814 ((_ is Star!10847) (regTwo!22206 (regTwo!22206 r!26326)))) b!3712464))

(assert (= (and b!3711814 ((_ is Union!10847) (regTwo!22206 (regTwo!22206 r!26326)))) b!3712465))

(declare-fun e!2299010 () Bool)

(assert (=> b!3711815 (= tp!1129624 e!2299010)))

(declare-fun b!3712468 () Bool)

(declare-fun tp!1129835 () Bool)

(assert (=> b!3712468 (= e!2299010 tp!1129835)))

(declare-fun b!3712469 () Bool)

(declare-fun tp!1129836 () Bool)

(declare-fun tp!1129834 () Bool)

(assert (=> b!3712469 (= e!2299010 (and tp!1129836 tp!1129834))))

(declare-fun b!3712467 () Bool)

(declare-fun tp!1129838 () Bool)

(declare-fun tp!1129837 () Bool)

(assert (=> b!3712467 (= e!2299010 (and tp!1129838 tp!1129837))))

(declare-fun b!3712466 () Bool)

(assert (=> b!3712466 (= e!2299010 tp_is_empty!18709)))

(assert (= (and b!3711815 ((_ is ElementMatch!10847) (reg!11176 (regTwo!22206 r!26326)))) b!3712466))

(assert (= (and b!3711815 ((_ is Concat!17118) (reg!11176 (regTwo!22206 r!26326)))) b!3712467))

(assert (= (and b!3711815 ((_ is Star!10847) (reg!11176 (regTwo!22206 r!26326)))) b!3712468))

(assert (= (and b!3711815 ((_ is Union!10847) (reg!11176 (regTwo!22206 r!26326)))) b!3712469))

(declare-fun e!2299011 () Bool)

(assert (=> b!3711810 (= tp!1129622 e!2299011)))

(declare-fun b!3712472 () Bool)

(declare-fun tp!1129840 () Bool)

(assert (=> b!3712472 (= e!2299011 tp!1129840)))

(declare-fun b!3712473 () Bool)

(declare-fun tp!1129841 () Bool)

(declare-fun tp!1129839 () Bool)

(assert (=> b!3712473 (= e!2299011 (and tp!1129841 tp!1129839))))

(declare-fun b!3712471 () Bool)

(declare-fun tp!1129843 () Bool)

(declare-fun tp!1129842 () Bool)

(assert (=> b!3712471 (= e!2299011 (and tp!1129843 tp!1129842))))

(declare-fun b!3712470 () Bool)

(assert (=> b!3712470 (= e!2299011 tp_is_empty!18709)))

(assert (= (and b!3711810 ((_ is ElementMatch!10847) (regOne!22206 (regOne!22206 r!26326)))) b!3712470))

(assert (= (and b!3711810 ((_ is Concat!17118) (regOne!22206 (regOne!22206 r!26326)))) b!3712471))

(assert (= (and b!3711810 ((_ is Star!10847) (regOne!22206 (regOne!22206 r!26326)))) b!3712472))

(assert (= (and b!3711810 ((_ is Union!10847) (regOne!22206 (regOne!22206 r!26326)))) b!3712473))

(declare-fun e!2299012 () Bool)

(assert (=> b!3711810 (= tp!1129621 e!2299012)))

(declare-fun b!3712476 () Bool)

(declare-fun tp!1129845 () Bool)

(assert (=> b!3712476 (= e!2299012 tp!1129845)))

(declare-fun b!3712477 () Bool)

(declare-fun tp!1129846 () Bool)

(declare-fun tp!1129844 () Bool)

(assert (=> b!3712477 (= e!2299012 (and tp!1129846 tp!1129844))))

(declare-fun b!3712475 () Bool)

(declare-fun tp!1129848 () Bool)

(declare-fun tp!1129847 () Bool)

(assert (=> b!3712475 (= e!2299012 (and tp!1129848 tp!1129847))))

(declare-fun b!3712474 () Bool)

(assert (=> b!3712474 (= e!2299012 tp_is_empty!18709)))

(assert (= (and b!3711810 ((_ is ElementMatch!10847) (regTwo!22206 (regOne!22206 r!26326)))) b!3712474))

(assert (= (and b!3711810 ((_ is Concat!17118) (regTwo!22206 (regOne!22206 r!26326)))) b!3712475))

(assert (= (and b!3711810 ((_ is Star!10847) (regTwo!22206 (regOne!22206 r!26326)))) b!3712476))

(assert (= (and b!3711810 ((_ is Union!10847) (regTwo!22206 (regOne!22206 r!26326)))) b!3712477))

(declare-fun e!2299013 () Bool)

(assert (=> b!3711811 (= tp!1129619 e!2299013)))

(declare-fun b!3712480 () Bool)

(declare-fun tp!1129850 () Bool)

(assert (=> b!3712480 (= e!2299013 tp!1129850)))

(declare-fun b!3712481 () Bool)

(declare-fun tp!1129851 () Bool)

(declare-fun tp!1129849 () Bool)

(assert (=> b!3712481 (= e!2299013 (and tp!1129851 tp!1129849))))

(declare-fun b!3712479 () Bool)

(declare-fun tp!1129853 () Bool)

(declare-fun tp!1129852 () Bool)

(assert (=> b!3712479 (= e!2299013 (and tp!1129853 tp!1129852))))

(declare-fun b!3712478 () Bool)

(assert (=> b!3712478 (= e!2299013 tp_is_empty!18709)))

(assert (= (and b!3711811 ((_ is ElementMatch!10847) (reg!11176 (regOne!22206 r!26326)))) b!3712478))

(assert (= (and b!3711811 ((_ is Concat!17118) (reg!11176 (regOne!22206 r!26326)))) b!3712479))

(assert (= (and b!3711811 ((_ is Star!10847) (reg!11176 (regOne!22206 r!26326)))) b!3712480))

(assert (= (and b!3711811 ((_ is Union!10847) (reg!11176 (regOne!22206 r!26326)))) b!3712481))

(declare-fun e!2299014 () Bool)

(assert (=> b!3711820 (= tp!1129630 e!2299014)))

(declare-fun b!3712484 () Bool)

(declare-fun tp!1129855 () Bool)

(assert (=> b!3712484 (= e!2299014 tp!1129855)))

(declare-fun b!3712485 () Bool)

(declare-fun tp!1129856 () Bool)

(declare-fun tp!1129854 () Bool)

(assert (=> b!3712485 (= e!2299014 (and tp!1129856 tp!1129854))))

(declare-fun b!3712483 () Bool)

(declare-fun tp!1129858 () Bool)

(declare-fun tp!1129857 () Bool)

(assert (=> b!3712483 (= e!2299014 (and tp!1129858 tp!1129857))))

(declare-fun b!3712482 () Bool)

(assert (=> b!3712482 (= e!2299014 tp_is_empty!18709)))

(assert (= (and b!3711820 ((_ is ElementMatch!10847) (regOne!22207 (reg!11176 r!26326)))) b!3712482))

(assert (= (and b!3711820 ((_ is Concat!17118) (regOne!22207 (reg!11176 r!26326)))) b!3712483))

(assert (= (and b!3711820 ((_ is Star!10847) (regOne!22207 (reg!11176 r!26326)))) b!3712484))

(assert (= (and b!3711820 ((_ is Union!10847) (regOne!22207 (reg!11176 r!26326)))) b!3712485))

(declare-fun e!2299015 () Bool)

(assert (=> b!3711820 (= tp!1129628 e!2299015)))

(declare-fun b!3712488 () Bool)

(declare-fun tp!1129860 () Bool)

(assert (=> b!3712488 (= e!2299015 tp!1129860)))

(declare-fun b!3712489 () Bool)

(declare-fun tp!1129861 () Bool)

(declare-fun tp!1129859 () Bool)

(assert (=> b!3712489 (= e!2299015 (and tp!1129861 tp!1129859))))

(declare-fun b!3712487 () Bool)

(declare-fun tp!1129863 () Bool)

(declare-fun tp!1129862 () Bool)

(assert (=> b!3712487 (= e!2299015 (and tp!1129863 tp!1129862))))

(declare-fun b!3712486 () Bool)

(assert (=> b!3712486 (= e!2299015 tp_is_empty!18709)))

(assert (= (and b!3711820 ((_ is ElementMatch!10847) (regTwo!22207 (reg!11176 r!26326)))) b!3712486))

(assert (= (and b!3711820 ((_ is Concat!17118) (regTwo!22207 (reg!11176 r!26326)))) b!3712487))

(assert (= (and b!3711820 ((_ is Star!10847) (regTwo!22207 (reg!11176 r!26326)))) b!3712488))

(assert (= (and b!3711820 ((_ is Union!10847) (regTwo!22207 (reg!11176 r!26326)))) b!3712489))

(declare-fun e!2299016 () Bool)

(assert (=> b!3711816 (= tp!1129625 e!2299016)))

(declare-fun b!3712492 () Bool)

(declare-fun tp!1129865 () Bool)

(assert (=> b!3712492 (= e!2299016 tp!1129865)))

(declare-fun b!3712493 () Bool)

(declare-fun tp!1129866 () Bool)

(declare-fun tp!1129864 () Bool)

(assert (=> b!3712493 (= e!2299016 (and tp!1129866 tp!1129864))))

(declare-fun b!3712491 () Bool)

(declare-fun tp!1129868 () Bool)

(declare-fun tp!1129867 () Bool)

(assert (=> b!3712491 (= e!2299016 (and tp!1129868 tp!1129867))))

(declare-fun b!3712490 () Bool)

(assert (=> b!3712490 (= e!2299016 tp_is_empty!18709)))

(assert (= (and b!3711816 ((_ is ElementMatch!10847) (regOne!22207 (regTwo!22206 r!26326)))) b!3712490))

(assert (= (and b!3711816 ((_ is Concat!17118) (regOne!22207 (regTwo!22206 r!26326)))) b!3712491))

(assert (= (and b!3711816 ((_ is Star!10847) (regOne!22207 (regTwo!22206 r!26326)))) b!3712492))

(assert (= (and b!3711816 ((_ is Union!10847) (regOne!22207 (regTwo!22206 r!26326)))) b!3712493))

(declare-fun e!2299017 () Bool)

(assert (=> b!3711816 (= tp!1129623 e!2299017)))

(declare-fun b!3712496 () Bool)

(declare-fun tp!1129870 () Bool)

(assert (=> b!3712496 (= e!2299017 tp!1129870)))

(declare-fun b!3712497 () Bool)

(declare-fun tp!1129871 () Bool)

(declare-fun tp!1129869 () Bool)

(assert (=> b!3712497 (= e!2299017 (and tp!1129871 tp!1129869))))

(declare-fun b!3712495 () Bool)

(declare-fun tp!1129873 () Bool)

(declare-fun tp!1129872 () Bool)

(assert (=> b!3712495 (= e!2299017 (and tp!1129873 tp!1129872))))

(declare-fun b!3712494 () Bool)

(assert (=> b!3712494 (= e!2299017 tp_is_empty!18709)))

(assert (= (and b!3711816 ((_ is ElementMatch!10847) (regTwo!22207 (regTwo!22206 r!26326)))) b!3712494))

(assert (= (and b!3711816 ((_ is Concat!17118) (regTwo!22207 (regTwo!22206 r!26326)))) b!3712495))

(assert (= (and b!3711816 ((_ is Star!10847) (regTwo!22207 (regTwo!22206 r!26326)))) b!3712496))

(assert (= (and b!3711816 ((_ is Union!10847) (regTwo!22207 (regTwo!22206 r!26326)))) b!3712497))

(declare-fun e!2299018 () Bool)

(assert (=> b!3711812 (= tp!1129620 e!2299018)))

(declare-fun b!3712500 () Bool)

(declare-fun tp!1129875 () Bool)

(assert (=> b!3712500 (= e!2299018 tp!1129875)))

(declare-fun b!3712501 () Bool)

(declare-fun tp!1129876 () Bool)

(declare-fun tp!1129874 () Bool)

(assert (=> b!3712501 (= e!2299018 (and tp!1129876 tp!1129874))))

(declare-fun b!3712499 () Bool)

(declare-fun tp!1129878 () Bool)

(declare-fun tp!1129877 () Bool)

(assert (=> b!3712499 (= e!2299018 (and tp!1129878 tp!1129877))))

(declare-fun b!3712498 () Bool)

(assert (=> b!3712498 (= e!2299018 tp_is_empty!18709)))

(assert (= (and b!3711812 ((_ is ElementMatch!10847) (regOne!22207 (regOne!22206 r!26326)))) b!3712498))

(assert (= (and b!3711812 ((_ is Concat!17118) (regOne!22207 (regOne!22206 r!26326)))) b!3712499))

(assert (= (and b!3711812 ((_ is Star!10847) (regOne!22207 (regOne!22206 r!26326)))) b!3712500))

(assert (= (and b!3711812 ((_ is Union!10847) (regOne!22207 (regOne!22206 r!26326)))) b!3712501))

(declare-fun e!2299019 () Bool)

(assert (=> b!3711812 (= tp!1129618 e!2299019)))

(declare-fun b!3712504 () Bool)

(declare-fun tp!1129880 () Bool)

(assert (=> b!3712504 (= e!2299019 tp!1129880)))

(declare-fun b!3712505 () Bool)

(declare-fun tp!1129881 () Bool)

(declare-fun tp!1129879 () Bool)

(assert (=> b!3712505 (= e!2299019 (and tp!1129881 tp!1129879))))

(declare-fun b!3712503 () Bool)

(declare-fun tp!1129883 () Bool)

(declare-fun tp!1129882 () Bool)

(assert (=> b!3712503 (= e!2299019 (and tp!1129883 tp!1129882))))

(declare-fun b!3712502 () Bool)

(assert (=> b!3712502 (= e!2299019 tp_is_empty!18709)))

(assert (= (and b!3711812 ((_ is ElementMatch!10847) (regTwo!22207 (regOne!22206 r!26326)))) b!3712502))

(assert (= (and b!3711812 ((_ is Concat!17118) (regTwo!22207 (regOne!22206 r!26326)))) b!3712503))

(assert (= (and b!3711812 ((_ is Star!10847) (regTwo!22207 (regOne!22206 r!26326)))) b!3712504))

(assert (= (and b!3711812 ((_ is Union!10847) (regTwo!22207 (regOne!22206 r!26326)))) b!3712505))

(declare-fun b!3712506 () Bool)

(declare-fun e!2299020 () Bool)

(declare-fun tp!1129884 () Bool)

(assert (=> b!3712506 (= e!2299020 (and tp_is_empty!18709 tp!1129884))))

(assert (=> b!3711808 (= tp!1129617 e!2299020)))

(assert (= (and b!3711808 ((_ is Cons!39604) (t!302411 (t!302411 tl!3933)))) b!3712506))

(check-sat (not b!3712424) (not bm!268553) (not b!3712464) (not b!3712506) (not b!3712361) (not bm!268614) (not b!3712501) (not b!3712433) (not b!3712455) (not d!1087235) (not bm!268684) (not b!3712404) (not bm!268668) (not bm!268658) (not b!3712168) (not b!3711982) (not b!3712421) (not b!3711969) (not b!3712441) (not b!3712385) (not bm!268682) (not bm!268580) (not bm!268680) (not b!3712281) (not b!3712445) (not b!3712403) (not b!3712504) (not b!3712371) (not b!3712416) (not b!3712459) (not b!3711971) (not d!1087309) (not b!3712492) (not b!3712407) (not d!1087345) (not b!3712351) (not b!3712377) (not b!3712480) (not b!3712436) (not bm!268630) (not b!3712456) (not b!3712496) (not bm!268675) (not bm!268608) (not d!1087341) (not bm!268651) (not b!3712432) (not bm!268679) (not d!1087315) (not d!1087251) (not b!3712468) (not b!3712476) (not bm!268664) (not b!3712453) (not b!3712449) (not b!3712420) (not d!1087307) (not bm!268654) (not bm!268661) (not b!3712473) (not b!3712428) (not b!3712347) (not b!3712452) (not b!3712469) (not d!1087297) (not b!3712443) (not bm!268652) (not b!3712425) (not b!3712491) (not bm!268622) (not bm!268581) (not bm!268623) (not bm!268602) (not b!3712477) (not b!3712503) (not bm!268554) (not b!3712372) (not b!3712429) (not b!3712440) (not bm!268607) (not b!3712149) (not b!3712475) (not b!3712329) (not d!1087333) (not bm!268615) (not bm!268655) (not b!3712369) (not bm!268665) (not b!3712413) (not bm!268676) (not b!3712471) (not bm!268688) (not b!3712489) (not b!3711968) (not b!3712338) (not b!3712097) (not b!3712463) (not b!3712499) (not b!3712457) (not b!3712435) (not b!3712423) (not b!3712461) (not b!3712493) (not b!3712415) (not b!3712427) tp_is_empty!18709 (not bm!268650) (not bm!268601) (not b!3712417) (not b!3712472) (not b!3712465) (not b!3712479) (not b!3712505) (not b!3712495) (not bm!268659) (not bm!268662) (not bm!268646) (not b!3712078) (not b!3712467) (not bm!268643) (not bm!268671) (not b!3712444) (not b!3712483) (not d!1087343) (not b!3712488) (not bm!268631) (not d!1087351) (not b!3712447) (not b!3712481) (not b!3712497) (not bm!268636) (not b!3712485) (not d!1087253) (not b!3712500) (not b!3712460) (not d!1087323) (not b!3712306) (not d!1087321) (not bm!268649) (not b!3712172) (not d!1087335) (not b!3712487) (not b!3712439) (not d!1087331) (not b!3712408) (not bm!268621) (not bm!268635) (not bm!268642) (not b!3712437) (not b!3712484) (not b!3712451) (not b!3712431) (not b!3712264) (not b!3712409) (not bm!268686) (not bm!268672) (not bm!268683) (not bm!268667) (not bm!268647) (not d!1087339) (not b!3712411) (not b!3712412) (not bm!268629) (not bm!268687) (not b!3712419) (not b!3712314) (not b!3712448) (not b!3711895))
(check-sat)
