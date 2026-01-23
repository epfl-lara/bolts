; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728192 () Bool)

(assert start!728192)

(declare-fun res!3015528 () Bool)

(declare-fun e!4484697 () Bool)

(assert (=> start!728192 (=> (not res!3015528) (not e!4484697))))

(declare-datatypes ((C!39916 0))(
  ( (C!39917 (val!30398 Int)) )
))
(declare-datatypes ((Regex!19795 0))(
  ( (ElementMatch!19795 (c!1389930 C!39916)) (Concat!28640 (regOne!40102 Regex!19795) (regTwo!40102 Regex!19795)) (EmptyExpr!19795) (Star!19795 (reg!20124 Regex!19795)) (EmptyLang!19795) (Union!19795 (regOne!40103 Regex!19795) (regTwo!40103 Regex!19795)) )
))
(declare-fun expr!41 () Regex!19795)

(declare-fun validRegex!10223 (Regex!19795) Bool)

(assert (=> start!728192 (= res!3015528 (validRegex!10223 expr!41))))

(assert (=> start!728192 e!4484697))

(declare-fun e!4484696 () Bool)

(assert (=> start!728192 e!4484696))

(declare-fun tp_is_empty!49945 () Bool)

(assert (=> start!728192 tp_is_empty!49945))

(declare-fun b!7523477 () Bool)

(assert (=> b!7523477 (= e!4484696 tp_is_empty!49945)))

(declare-fun b!7523478 () Bool)

(declare-fun tp!2185817 () Bool)

(declare-fun tp!2185820 () Bool)

(assert (=> b!7523478 (= e!4484696 (and tp!2185817 tp!2185820))))

(declare-fun b!7523479 () Bool)

(declare-fun tp!2185821 () Bool)

(declare-fun tp!2185819 () Bool)

(assert (=> b!7523479 (= e!4484696 (and tp!2185821 tp!2185819))))

(declare-fun b!7523480 () Bool)

(declare-fun tp!2185818 () Bool)

(assert (=> b!7523480 (= e!4484696 tp!2185818)))

(declare-fun b!7523481 () Bool)

(declare-fun res!3015529 () Bool)

(assert (=> b!7523481 (=> (not res!3015529) (not e!4484697))))

(declare-fun a!1106 () C!39916)

(get-info :version)

(assert (=> b!7523481 (= res!3015529 (and (or (not ((_ is ElementMatch!19795) expr!41)) (not (= (c!1389930 expr!41) a!1106))) (not ((_ is Union!19795) expr!41)) ((_ is Concat!28640) expr!41)))))

(declare-fun b!7523482 () Bool)

(declare-fun res!3015530 () Bool)

(assert (=> b!7523482 (=> (not res!3015530) (not e!4484697))))

(declare-fun nullable!8629 (Regex!19795) Bool)

(assert (=> b!7523482 (= res!3015530 (nullable!8629 (regOne!40102 expr!41)))))

(declare-fun b!7523483 () Bool)

(declare-fun regexDepth!453 (Regex!19795) Int)

(assert (=> b!7523483 (= e!4484697 (>= (regexDepth!453 (regTwo!40102 expr!41)) (regexDepth!453 expr!41)))))

(assert (= (and start!728192 res!3015528) b!7523481))

(assert (= (and b!7523481 res!3015529) b!7523482))

(assert (= (and b!7523482 res!3015530) b!7523483))

(assert (= (and start!728192 ((_ is ElementMatch!19795) expr!41)) b!7523477))

(assert (= (and start!728192 ((_ is Concat!28640) expr!41)) b!7523479))

(assert (= (and start!728192 ((_ is Star!19795) expr!41)) b!7523480))

(assert (= (and start!728192 ((_ is Union!19795) expr!41)) b!7523478))

(declare-fun m!8100858 () Bool)

(assert (=> start!728192 m!8100858))

(declare-fun m!8100860 () Bool)

(assert (=> b!7523482 m!8100860))

(declare-fun m!8100862 () Bool)

(assert (=> b!7523483 m!8100862))

(declare-fun m!8100864 () Bool)

(assert (=> b!7523483 m!8100864))

(check-sat (not b!7523483) (not b!7523478) tp_is_empty!49945 (not b!7523480) (not start!728192) (not b!7523479) (not b!7523482))
(check-sat)
(get-model)

(declare-fun b!7523561 () Bool)

(declare-fun c!1389961 () Bool)

(assert (=> b!7523561 (= c!1389961 ((_ is Union!19795) (regTwo!40102 expr!41)))))

(declare-fun e!4484753 () Int)

(declare-fun e!4484754 () Int)

(assert (=> b!7523561 (= e!4484753 e!4484754)))

(declare-fun b!7523562 () Bool)

(declare-fun e!4484755 () Bool)

(declare-fun lt!2638629 () Int)

(declare-fun call!690109 () Int)

(assert (=> b!7523562 (= e!4484755 (> lt!2638629 call!690109))))

(declare-fun b!7523563 () Bool)

(declare-fun c!1389963 () Bool)

(assert (=> b!7523563 (= c!1389963 ((_ is Star!19795) (regTwo!40102 expr!41)))))

(declare-fun e!4484750 () Bool)

(declare-fun e!4484756 () Bool)

(assert (=> b!7523563 (= e!4484750 e!4484756)))

(declare-fun bm!690099 () Bool)

(declare-fun c!1389959 () Bool)

(assert (=> bm!690099 (= call!690109 (regexDepth!453 (ite c!1389959 (regTwo!40103 (regTwo!40102 expr!41)) (regOne!40102 (regTwo!40102 expr!41)))))))

(declare-fun call!690107 () Int)

(declare-fun c!1389965 () Bool)

(declare-fun bm!690100 () Bool)

(assert (=> bm!690100 (= call!690107 (regexDepth!453 (ite c!1389959 (regOne!40103 (regTwo!40102 expr!41)) (ite c!1389965 (regTwo!40102 (regTwo!40102 expr!41)) (reg!20124 (regTwo!40102 expr!41))))))))

(declare-fun b!7523564 () Bool)

(declare-fun call!690106 () Int)

(assert (=> b!7523564 (= e!4484753 (+ 1 call!690106))))

(declare-fun b!7523565 () Bool)

(declare-fun res!3015554 () Bool)

(declare-fun e!4484749 () Bool)

(assert (=> b!7523565 (=> (not res!3015554) (not e!4484749))))

(assert (=> b!7523565 (= res!3015554 (> lt!2638629 call!690109))))

(assert (=> b!7523565 (= e!4484750 e!4484749)))

(declare-fun b!7523566 () Bool)

(declare-fun call!690110 () Int)

(assert (=> b!7523566 (= e!4484756 (> lt!2638629 call!690110))))

(declare-fun b!7523567 () Bool)

(declare-fun call!690104 () Int)

(assert (=> b!7523567 (= e!4484754 (+ 1 call!690104))))

(declare-fun call!690108 () Int)

(declare-fun call!690105 () Int)

(declare-fun bm!690102 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!690102 (= call!690104 (maxBigInt!0 (ite c!1389961 call!690105 call!690108) (ite c!1389961 call!690108 call!690105)))))

(declare-fun b!7523568 () Bool)

(assert (=> b!7523568 (= e!4484756 (= lt!2638629 1))))

(declare-fun b!7523569 () Bool)

(declare-fun e!4484752 () Int)

(assert (=> b!7523569 (= e!4484752 1)))

(declare-fun b!7523570 () Bool)

(declare-fun e!4484751 () Bool)

(assert (=> b!7523570 (= e!4484751 e!4484750)))

(assert (=> b!7523570 (= c!1389965 ((_ is Concat!28640) (regTwo!40102 expr!41)))))

(declare-fun bm!690103 () Bool)

(declare-fun c!1389964 () Bool)

(assert (=> bm!690103 (= call!690106 (regexDepth!453 (ite c!1389964 (reg!20124 (regTwo!40102 expr!41)) (ite c!1389961 (regTwo!40103 (regTwo!40102 expr!41)) (regOne!40102 (regTwo!40102 expr!41))))))))

(declare-fun bm!690101 () Bool)

(assert (=> bm!690101 (= call!690110 call!690107)))

(declare-fun d!2309201 () Bool)

(declare-fun e!4484747 () Bool)

(assert (=> d!2309201 e!4484747))

(declare-fun res!3015553 () Bool)

(assert (=> d!2309201 (=> (not res!3015553) (not e!4484747))))

(assert (=> d!2309201 (= res!3015553 (> lt!2638629 0))))

(assert (=> d!2309201 (= lt!2638629 e!4484752)))

(declare-fun c!1389960 () Bool)

(assert (=> d!2309201 (= c!1389960 ((_ is ElementMatch!19795) (regTwo!40102 expr!41)))))

(assert (=> d!2309201 (= (regexDepth!453 (regTwo!40102 expr!41)) lt!2638629)))

(declare-fun b!7523571 () Bool)

(assert (=> b!7523571 (= e!4484752 e!4484753)))

(assert (=> b!7523571 (= c!1389964 ((_ is Star!19795) (regTwo!40102 expr!41)))))

(declare-fun b!7523572 () Bool)

(assert (=> b!7523572 (= e!4484747 e!4484751)))

(assert (=> b!7523572 (= c!1389959 ((_ is Union!19795) (regTwo!40102 expr!41)))))

(declare-fun bm!690104 () Bool)

(assert (=> bm!690104 (= call!690108 call!690106)))

(declare-fun b!7523573 () Bool)

(assert (=> b!7523573 (= e!4484751 e!4484755)))

(declare-fun res!3015552 () Bool)

(assert (=> b!7523573 (= res!3015552 (> lt!2638629 call!690107))))

(assert (=> b!7523573 (=> (not res!3015552) (not e!4484755))))

(declare-fun b!7523574 () Bool)

(declare-fun e!4484748 () Int)

(assert (=> b!7523574 (= e!4484748 (+ 1 call!690104))))

(declare-fun b!7523575 () Bool)

(assert (=> b!7523575 (= e!4484748 1)))

(declare-fun bm!690105 () Bool)

(assert (=> bm!690105 (= call!690105 (regexDepth!453 (ite c!1389961 (regOne!40103 (regTwo!40102 expr!41)) (regTwo!40102 (regTwo!40102 expr!41)))))))

(declare-fun b!7523576 () Bool)

(assert (=> b!7523576 (= e!4484754 e!4484748)))

(declare-fun c!1389962 () Bool)

(assert (=> b!7523576 (= c!1389962 ((_ is Concat!28640) (regTwo!40102 expr!41)))))

(declare-fun b!7523577 () Bool)

(assert (=> b!7523577 (= e!4484749 (> lt!2638629 call!690110))))

(assert (= (and d!2309201 c!1389960) b!7523569))

(assert (= (and d!2309201 (not c!1389960)) b!7523571))

(assert (= (and b!7523571 c!1389964) b!7523564))

(assert (= (and b!7523571 (not c!1389964)) b!7523561))

(assert (= (and b!7523561 c!1389961) b!7523567))

(assert (= (and b!7523561 (not c!1389961)) b!7523576))

(assert (= (and b!7523576 c!1389962) b!7523574))

(assert (= (and b!7523576 (not c!1389962)) b!7523575))

(assert (= (or b!7523567 b!7523574) bm!690105))

(assert (= (or b!7523567 b!7523574) bm!690104))

(assert (= (or b!7523567 b!7523574) bm!690102))

(assert (= (or b!7523564 bm!690104) bm!690103))

(assert (= (and d!2309201 res!3015553) b!7523572))

(assert (= (and b!7523572 c!1389959) b!7523573))

(assert (= (and b!7523572 (not c!1389959)) b!7523570))

(assert (= (and b!7523573 res!3015552) b!7523562))

(assert (= (and b!7523570 c!1389965) b!7523565))

(assert (= (and b!7523570 (not c!1389965)) b!7523563))

(assert (= (and b!7523565 res!3015554) b!7523577))

(assert (= (and b!7523563 c!1389963) b!7523566))

(assert (= (and b!7523563 (not c!1389963)) b!7523568))

(assert (= (or b!7523577 b!7523566) bm!690101))

(assert (= (or b!7523573 bm!690101) bm!690100))

(assert (= (or b!7523562 b!7523565) bm!690099))

(declare-fun m!8100872 () Bool)

(assert (=> bm!690100 m!8100872))

(declare-fun m!8100874 () Bool)

(assert (=> bm!690099 m!8100874))

(declare-fun m!8100876 () Bool)

(assert (=> bm!690105 m!8100876))

(declare-fun m!8100878 () Bool)

(assert (=> bm!690103 m!8100878))

(declare-fun m!8100880 () Bool)

(assert (=> bm!690102 m!8100880))

(assert (=> b!7523483 d!2309201))

(declare-fun b!7523596 () Bool)

(declare-fun c!1389974 () Bool)

(assert (=> b!7523596 (= c!1389974 ((_ is Union!19795) expr!41))))

(declare-fun e!4484775 () Int)

(declare-fun e!4484776 () Int)

(assert (=> b!7523596 (= e!4484775 e!4484776)))

(declare-fun b!7523597 () Bool)

(declare-fun e!4484777 () Bool)

(declare-fun lt!2638630 () Int)

(declare-fun call!690118 () Int)

(assert (=> b!7523597 (= e!4484777 (> lt!2638630 call!690118))))

(declare-fun b!7523598 () Bool)

(declare-fun c!1389976 () Bool)

(assert (=> b!7523598 (= c!1389976 ((_ is Star!19795) expr!41))))

(declare-fun e!4484772 () Bool)

(declare-fun e!4484778 () Bool)

(assert (=> b!7523598 (= e!4484772 e!4484778)))

(declare-fun bm!690108 () Bool)

(declare-fun c!1389972 () Bool)

(assert (=> bm!690108 (= call!690118 (regexDepth!453 (ite c!1389972 (regTwo!40103 expr!41) (regOne!40102 expr!41))))))

(declare-fun call!690116 () Int)

(declare-fun c!1389978 () Bool)

(declare-fun bm!690109 () Bool)

(assert (=> bm!690109 (= call!690116 (regexDepth!453 (ite c!1389972 (regOne!40103 expr!41) (ite c!1389978 (regTwo!40102 expr!41) (reg!20124 expr!41)))))))

(declare-fun b!7523599 () Bool)

(declare-fun call!690115 () Int)

(assert (=> b!7523599 (= e!4484775 (+ 1 call!690115))))

(declare-fun b!7523600 () Bool)

(declare-fun res!3015563 () Bool)

(declare-fun e!4484771 () Bool)

(assert (=> b!7523600 (=> (not res!3015563) (not e!4484771))))

(assert (=> b!7523600 (= res!3015563 (> lt!2638630 call!690118))))

(assert (=> b!7523600 (= e!4484772 e!4484771)))

(declare-fun b!7523601 () Bool)

(declare-fun call!690119 () Int)

(assert (=> b!7523601 (= e!4484778 (> lt!2638630 call!690119))))

(declare-fun b!7523602 () Bool)

(declare-fun call!690113 () Int)

(assert (=> b!7523602 (= e!4484776 (+ 1 call!690113))))

(declare-fun call!690117 () Int)

(declare-fun bm!690111 () Bool)

(declare-fun call!690114 () Int)

(assert (=> bm!690111 (= call!690113 (maxBigInt!0 (ite c!1389974 call!690114 call!690117) (ite c!1389974 call!690117 call!690114)))))

(declare-fun b!7523603 () Bool)

(assert (=> b!7523603 (= e!4484778 (= lt!2638630 1))))

(declare-fun b!7523604 () Bool)

(declare-fun e!4484774 () Int)

(assert (=> b!7523604 (= e!4484774 1)))

(declare-fun b!7523605 () Bool)

(declare-fun e!4484773 () Bool)

(assert (=> b!7523605 (= e!4484773 e!4484772)))

(assert (=> b!7523605 (= c!1389978 ((_ is Concat!28640) expr!41))))

(declare-fun c!1389977 () Bool)

(declare-fun bm!690112 () Bool)

(assert (=> bm!690112 (= call!690115 (regexDepth!453 (ite c!1389977 (reg!20124 expr!41) (ite c!1389974 (regTwo!40103 expr!41) (regOne!40102 expr!41)))))))

(declare-fun bm!690110 () Bool)

(assert (=> bm!690110 (= call!690119 call!690116)))

(declare-fun d!2309207 () Bool)

(declare-fun e!4484769 () Bool)

(assert (=> d!2309207 e!4484769))

(declare-fun res!3015562 () Bool)

(assert (=> d!2309207 (=> (not res!3015562) (not e!4484769))))

(assert (=> d!2309207 (= res!3015562 (> lt!2638630 0))))

(assert (=> d!2309207 (= lt!2638630 e!4484774)))

(declare-fun c!1389973 () Bool)

(assert (=> d!2309207 (= c!1389973 ((_ is ElementMatch!19795) expr!41))))

(assert (=> d!2309207 (= (regexDepth!453 expr!41) lt!2638630)))

(declare-fun b!7523606 () Bool)

(assert (=> b!7523606 (= e!4484774 e!4484775)))

(assert (=> b!7523606 (= c!1389977 ((_ is Star!19795) expr!41))))

(declare-fun b!7523607 () Bool)

(assert (=> b!7523607 (= e!4484769 e!4484773)))

(assert (=> b!7523607 (= c!1389972 ((_ is Union!19795) expr!41))))

(declare-fun bm!690113 () Bool)

(assert (=> bm!690113 (= call!690117 call!690115)))

(declare-fun b!7523608 () Bool)

(assert (=> b!7523608 (= e!4484773 e!4484777)))

(declare-fun res!3015561 () Bool)

(assert (=> b!7523608 (= res!3015561 (> lt!2638630 call!690116))))

(assert (=> b!7523608 (=> (not res!3015561) (not e!4484777))))

(declare-fun b!7523609 () Bool)

(declare-fun e!4484770 () Int)

(assert (=> b!7523609 (= e!4484770 (+ 1 call!690113))))

(declare-fun b!7523610 () Bool)

(assert (=> b!7523610 (= e!4484770 1)))

(declare-fun bm!690114 () Bool)

(assert (=> bm!690114 (= call!690114 (regexDepth!453 (ite c!1389974 (regOne!40103 expr!41) (regTwo!40102 expr!41))))))

(declare-fun b!7523611 () Bool)

(assert (=> b!7523611 (= e!4484776 e!4484770)))

(declare-fun c!1389975 () Bool)

(assert (=> b!7523611 (= c!1389975 ((_ is Concat!28640) expr!41))))

(declare-fun b!7523612 () Bool)

(assert (=> b!7523612 (= e!4484771 (> lt!2638630 call!690119))))

(assert (= (and d!2309207 c!1389973) b!7523604))

(assert (= (and d!2309207 (not c!1389973)) b!7523606))

(assert (= (and b!7523606 c!1389977) b!7523599))

(assert (= (and b!7523606 (not c!1389977)) b!7523596))

(assert (= (and b!7523596 c!1389974) b!7523602))

(assert (= (and b!7523596 (not c!1389974)) b!7523611))

(assert (= (and b!7523611 c!1389975) b!7523609))

(assert (= (and b!7523611 (not c!1389975)) b!7523610))

(assert (= (or b!7523602 b!7523609) bm!690114))

(assert (= (or b!7523602 b!7523609) bm!690113))

(assert (= (or b!7523602 b!7523609) bm!690111))

(assert (= (or b!7523599 bm!690113) bm!690112))

(assert (= (and d!2309207 res!3015562) b!7523607))

(assert (= (and b!7523607 c!1389972) b!7523608))

(assert (= (and b!7523607 (not c!1389972)) b!7523605))

(assert (= (and b!7523608 res!3015561) b!7523597))

(assert (= (and b!7523605 c!1389978) b!7523600))

(assert (= (and b!7523605 (not c!1389978)) b!7523598))

(assert (= (and b!7523600 res!3015563) b!7523612))

(assert (= (and b!7523598 c!1389976) b!7523601))

(assert (= (and b!7523598 (not c!1389976)) b!7523603))

(assert (= (or b!7523612 b!7523601) bm!690110))

(assert (= (or b!7523608 bm!690110) bm!690109))

(assert (= (or b!7523597 b!7523600) bm!690108))

(declare-fun m!8100882 () Bool)

(assert (=> bm!690109 m!8100882))

(declare-fun m!8100884 () Bool)

(assert (=> bm!690108 m!8100884))

(declare-fun m!8100886 () Bool)

(assert (=> bm!690114 m!8100886))

(declare-fun m!8100888 () Bool)

(assert (=> bm!690112 m!8100888))

(declare-fun m!8100890 () Bool)

(assert (=> bm!690111 m!8100890))

(assert (=> b!7523483 d!2309207))

(declare-fun b!7523665 () Bool)

(declare-fun e!4484814 () Bool)

(declare-fun e!4484819 () Bool)

(assert (=> b!7523665 (= e!4484814 e!4484819)))

(declare-fun res!3015584 () Bool)

(assert (=> b!7523665 (= res!3015584 (not (nullable!8629 (reg!20124 expr!41))))))

(assert (=> b!7523665 (=> (not res!3015584) (not e!4484819))))

(declare-fun b!7523666 () Bool)

(declare-fun res!3015581 () Bool)

(declare-fun e!4484817 () Bool)

(assert (=> b!7523666 (=> res!3015581 e!4484817)))

(assert (=> b!7523666 (= res!3015581 (not ((_ is Concat!28640) expr!41)))))

(declare-fun e!4484815 () Bool)

(assert (=> b!7523666 (= e!4484815 e!4484817)))

(declare-fun b!7523668 () Bool)

(declare-fun res!3015583 () Bool)

(declare-fun e!4484818 () Bool)

(assert (=> b!7523668 (=> (not res!3015583) (not e!4484818))))

(declare-fun call!690146 () Bool)

(assert (=> b!7523668 (= res!3015583 call!690146)))

(assert (=> b!7523668 (= e!4484815 e!4484818)))

(declare-fun b!7523669 () Bool)

(declare-fun call!690147 () Bool)

(assert (=> b!7523669 (= e!4484818 call!690147)))

(declare-fun bm!690141 () Bool)

(declare-fun c!1389997 () Bool)

(declare-fun c!1389998 () Bool)

(declare-fun call!690148 () Bool)

(assert (=> bm!690141 (= call!690148 (validRegex!10223 (ite c!1389998 (reg!20124 expr!41) (ite c!1389997 (regTwo!40103 expr!41) (regOne!40102 expr!41)))))))

(declare-fun bm!690142 () Bool)

(assert (=> bm!690142 (= call!690146 (validRegex!10223 (ite c!1389997 (regOne!40103 expr!41) (regTwo!40102 expr!41))))))

(declare-fun b!7523670 () Bool)

(declare-fun e!4484813 () Bool)

(assert (=> b!7523670 (= e!4484817 e!4484813)))

(declare-fun res!3015582 () Bool)

(assert (=> b!7523670 (=> (not res!3015582) (not e!4484813))))

(assert (=> b!7523670 (= res!3015582 call!690147)))

(declare-fun b!7523671 () Bool)

(declare-fun e!4484816 () Bool)

(assert (=> b!7523671 (= e!4484816 e!4484814)))

(assert (=> b!7523671 (= c!1389998 ((_ is Star!19795) expr!41))))

(declare-fun b!7523667 () Bool)

(assert (=> b!7523667 (= e!4484814 e!4484815)))

(assert (=> b!7523667 (= c!1389997 ((_ is Union!19795) expr!41))))

(declare-fun d!2309209 () Bool)

(declare-fun res!3015580 () Bool)

(assert (=> d!2309209 (=> res!3015580 e!4484816)))

(assert (=> d!2309209 (= res!3015580 ((_ is ElementMatch!19795) expr!41))))

(assert (=> d!2309209 (= (validRegex!10223 expr!41) e!4484816)))

(declare-fun b!7523672 () Bool)

(assert (=> b!7523672 (= e!4484813 call!690146)))

(declare-fun b!7523673 () Bool)

(assert (=> b!7523673 (= e!4484819 call!690148)))

(declare-fun bm!690143 () Bool)

(assert (=> bm!690143 (= call!690147 call!690148)))

(assert (= (and d!2309209 (not res!3015580)) b!7523671))

(assert (= (and b!7523671 c!1389998) b!7523665))

(assert (= (and b!7523671 (not c!1389998)) b!7523667))

(assert (= (and b!7523665 res!3015584) b!7523673))

(assert (= (and b!7523667 c!1389997) b!7523668))

(assert (= (and b!7523667 (not c!1389997)) b!7523666))

(assert (= (and b!7523668 res!3015583) b!7523669))

(assert (= (and b!7523666 (not res!3015581)) b!7523670))

(assert (= (and b!7523670 res!3015582) b!7523672))

(assert (= (or b!7523669 b!7523670) bm!690143))

(assert (= (or b!7523668 b!7523672) bm!690142))

(assert (= (or b!7523673 bm!690143) bm!690141))

(declare-fun m!8100902 () Bool)

(assert (=> b!7523665 m!8100902))

(declare-fun m!8100906 () Bool)

(assert (=> bm!690141 m!8100906))

(declare-fun m!8100910 () Bool)

(assert (=> bm!690142 m!8100910))

(assert (=> start!728192 d!2309209))

(declare-fun d!2309213 () Bool)

(declare-fun nullableFct!3455 (Regex!19795) Bool)

(assert (=> d!2309213 (= (nullable!8629 (regOne!40102 expr!41)) (nullableFct!3455 (regOne!40102 expr!41)))))

(declare-fun bs!1939707 () Bool)

(assert (= bs!1939707 d!2309213))

(declare-fun m!8100918 () Bool)

(assert (=> bs!1939707 m!8100918))

(assert (=> b!7523482 d!2309213))

(declare-fun b!7523694 () Bool)

(declare-fun e!4484824 () Bool)

(assert (=> b!7523694 (= e!4484824 tp_is_empty!49945)))

(declare-fun b!7523696 () Bool)

(declare-fun tp!2185843 () Bool)

(assert (=> b!7523696 (= e!4484824 tp!2185843)))

(declare-fun b!7523697 () Bool)

(declare-fun tp!2185848 () Bool)

(declare-fun tp!2185845 () Bool)

(assert (=> b!7523697 (= e!4484824 (and tp!2185848 tp!2185845))))

(assert (=> b!7523480 (= tp!2185818 e!4484824)))

(declare-fun b!7523695 () Bool)

(declare-fun tp!2185844 () Bool)

(declare-fun tp!2185842 () Bool)

(assert (=> b!7523695 (= e!4484824 (and tp!2185844 tp!2185842))))

(assert (= (and b!7523480 ((_ is ElementMatch!19795) (reg!20124 expr!41))) b!7523694))

(assert (= (and b!7523480 ((_ is Concat!28640) (reg!20124 expr!41))) b!7523695))

(assert (= (and b!7523480 ((_ is Star!19795) (reg!20124 expr!41))) b!7523696))

(assert (= (and b!7523480 ((_ is Union!19795) (reg!20124 expr!41))) b!7523697))

(declare-fun b!7523705 () Bool)

(declare-fun e!4484827 () Bool)

(assert (=> b!7523705 (= e!4484827 tp_is_empty!49945)))

(declare-fun b!7523708 () Bool)

(declare-fun tp!2185856 () Bool)

(assert (=> b!7523708 (= e!4484827 tp!2185856)))

(declare-fun b!7523709 () Bool)

(declare-fun tp!2185861 () Bool)

(declare-fun tp!2185860 () Bool)

(assert (=> b!7523709 (= e!4484827 (and tp!2185861 tp!2185860))))

(assert (=> b!7523479 (= tp!2185821 e!4484827)))

(declare-fun b!7523707 () Bool)

(declare-fun tp!2185858 () Bool)

(declare-fun tp!2185854 () Bool)

(assert (=> b!7523707 (= e!4484827 (and tp!2185858 tp!2185854))))

(assert (= (and b!7523479 ((_ is ElementMatch!19795) (regOne!40102 expr!41))) b!7523705))

(assert (= (and b!7523479 ((_ is Concat!28640) (regOne!40102 expr!41))) b!7523707))

(assert (= (and b!7523479 ((_ is Star!19795) (regOne!40102 expr!41))) b!7523708))

(assert (= (and b!7523479 ((_ is Union!19795) (regOne!40102 expr!41))) b!7523709))

(declare-fun b!7523710 () Bool)

(declare-fun e!4484829 () Bool)

(assert (=> b!7523710 (= e!4484829 tp_is_empty!49945)))

(declare-fun b!7523714 () Bool)

(declare-fun tp!2185864 () Bool)

(assert (=> b!7523714 (= e!4484829 tp!2185864)))

(declare-fun b!7523716 () Bool)

(declare-fun tp!2185870 () Bool)

(declare-fun tp!2185867 () Bool)

(assert (=> b!7523716 (= e!4484829 (and tp!2185870 tp!2185867))))

(assert (=> b!7523479 (= tp!2185819 e!4484829)))

(declare-fun b!7523712 () Bool)

(declare-fun tp!2185866 () Bool)

(declare-fun tp!2185862 () Bool)

(assert (=> b!7523712 (= e!4484829 (and tp!2185866 tp!2185862))))

(assert (= (and b!7523479 ((_ is ElementMatch!19795) (regTwo!40102 expr!41))) b!7523710))

(assert (= (and b!7523479 ((_ is Concat!28640) (regTwo!40102 expr!41))) b!7523712))

(assert (= (and b!7523479 ((_ is Star!19795) (regTwo!40102 expr!41))) b!7523714))

(assert (= (and b!7523479 ((_ is Union!19795) (regTwo!40102 expr!41))) b!7523716))

(declare-fun b!7523722 () Bool)

(declare-fun e!4484831 () Bool)

(assert (=> b!7523722 (= e!4484831 tp_is_empty!49945)))

(declare-fun b!7523724 () Bool)

(declare-fun tp!2185877 () Bool)

(assert (=> b!7523724 (= e!4484831 tp!2185877)))

(declare-fun b!7523725 () Bool)

(declare-fun tp!2185881 () Bool)

(declare-fun tp!2185880 () Bool)

(assert (=> b!7523725 (= e!4484831 (and tp!2185881 tp!2185880))))

(assert (=> b!7523478 (= tp!2185817 e!4484831)))

(declare-fun b!7523723 () Bool)

(declare-fun tp!2185879 () Bool)

(declare-fun tp!2185875 () Bool)

(assert (=> b!7523723 (= e!4484831 (and tp!2185879 tp!2185875))))

(assert (= (and b!7523478 ((_ is ElementMatch!19795) (regOne!40103 expr!41))) b!7523722))

(assert (= (and b!7523478 ((_ is Concat!28640) (regOne!40103 expr!41))) b!7523723))

(assert (= (and b!7523478 ((_ is Star!19795) (regOne!40103 expr!41))) b!7523724))

(assert (= (and b!7523478 ((_ is Union!19795) (regOne!40103 expr!41))) b!7523725))

(declare-fun b!7523730 () Bool)

(declare-fun e!4484833 () Bool)

(assert (=> b!7523730 (= e!4484833 tp_is_empty!49945)))

(declare-fun b!7523732 () Bool)

(declare-fun tp!2185888 () Bool)

(assert (=> b!7523732 (= e!4484833 tp!2185888)))

(declare-fun b!7523733 () Bool)

(declare-fun tp!2185891 () Bool)

(declare-fun tp!2185890 () Bool)

(assert (=> b!7523733 (= e!4484833 (and tp!2185891 tp!2185890))))

(assert (=> b!7523478 (= tp!2185820 e!4484833)))

(declare-fun b!7523731 () Bool)

(declare-fun tp!2185889 () Bool)

(declare-fun tp!2185887 () Bool)

(assert (=> b!7523731 (= e!4484833 (and tp!2185889 tp!2185887))))

(assert (= (and b!7523478 ((_ is ElementMatch!19795) (regTwo!40103 expr!41))) b!7523730))

(assert (= (and b!7523478 ((_ is Concat!28640) (regTwo!40103 expr!41))) b!7523731))

(assert (= (and b!7523478 ((_ is Star!19795) (regTwo!40103 expr!41))) b!7523732))

(assert (= (and b!7523478 ((_ is Union!19795) (regTwo!40103 expr!41))) b!7523733))

(check-sat (not b!7523707) (not b!7523731) (not bm!690111) (not d!2309213) tp_is_empty!49945 (not b!7523695) (not b!7523732) (not bm!690105) (not b!7523725) (not b!7523697) (not bm!690142) (not b!7523696) (not b!7523665) (not b!7523714) (not b!7523724) (not bm!690114) (not b!7523709) (not bm!690112) (not bm!690103) (not b!7523712) (not b!7523716) (not bm!690102) (not b!7523708) (not bm!690141) (not bm!690099) (not b!7523723) (not bm!690100) (not bm!690109) (not bm!690108) (not b!7523733))
(check-sat)
