; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296196 () Bool)

(assert start!296196)

(declare-fun res!1286491 () Bool)

(declare-fun e!1967771 () Bool)

(assert (=> start!296196 (=> (not res!1286491) (not e!1967771))))

(declare-datatypes ((C!19564 0))(
  ( (C!19565 (val!11818 Int)) )
))
(declare-datatypes ((Regex!9689 0))(
  ( (ElementMatch!9689 (c!531225 C!19564)) (Concat!15010 (regOne!19890 Regex!9689) (regTwo!19890 Regex!9689)) (EmptyExpr!9689) (Star!9689 (reg!10018 Regex!9689)) (EmptyLang!9689) (Union!9689 (regOne!19891 Regex!9689) (regTwo!19891 Regex!9689)) )
))
(declare-fun r!17345 () Regex!9689)

(declare-fun validRegex!4422 (Regex!9689) Bool)

(assert (=> start!296196 (= res!1286491 (validRegex!4422 r!17345))))

(assert (=> start!296196 e!1967771))

(declare-fun e!1967772 () Bool)

(assert (=> start!296196 e!1967772))

(declare-fun b!3158407 () Bool)

(declare-fun tp!992873 () Bool)

(assert (=> b!3158407 (= e!1967772 tp!992873)))

(declare-fun b!3158408 () Bool)

(declare-fun res!1286492 () Bool)

(assert (=> b!3158408 (=> (not res!1286492) (not e!1967771))))

(get-info :version)

(assert (=> b!3158408 (= res!1286492 (and (not ((_ is EmptyLang!9689) r!17345)) (not ((_ is ElementMatch!9689) r!17345)) (not ((_ is EmptyExpr!9689) r!17345)) (not ((_ is Star!9689) r!17345)) (not ((_ is Union!9689) r!17345))))))

(declare-fun b!3158409 () Bool)

(declare-fun res!1286487 () Bool)

(declare-fun e!1967770 () Bool)

(assert (=> b!3158409 (=> (not res!1286487) (not e!1967770))))

(declare-fun lt!1062502 () Regex!9689)

(declare-fun isEmptyLang!722 (Regex!9689) Bool)

(assert (=> b!3158409 (= res!1286487 (not (isEmptyLang!722 lt!1062502)))))

(declare-fun b!3158410 () Bool)

(declare-fun e!1967773 () Bool)

(assert (=> b!3158410 (= e!1967770 e!1967773)))

(declare-fun res!1286490 () Bool)

(assert (=> b!3158410 (=> res!1286490 e!1967773)))

(declare-fun lt!1062500 () Regex!9689)

(assert (=> b!3158410 (= res!1286490 (not (validRegex!4422 lt!1062500)))))

(declare-fun lt!1062501 () Regex!9689)

(assert (=> b!3158410 (= lt!1062500 (Concat!15010 lt!1062501 lt!1062502))))

(declare-fun b!3158411 () Bool)

(declare-fun nullable!3323 (Regex!9689) Bool)

(assert (=> b!3158411 (= e!1967773 (not (= (nullable!3323 lt!1062500) (nullable!3323 r!17345))))))

(declare-fun b!3158412 () Bool)

(declare-fun tp_is_empty!16941 () Bool)

(assert (=> b!3158412 (= e!1967772 tp_is_empty!16941)))

(declare-fun b!3158413 () Bool)

(declare-fun res!1286486 () Bool)

(assert (=> b!3158413 (=> (not res!1286486) (not e!1967770))))

(declare-fun isEmptyExpr!716 (Regex!9689) Bool)

(assert (=> b!3158413 (= res!1286486 (not (isEmptyExpr!716 lt!1062502)))))

(declare-fun b!3158414 () Bool)

(declare-fun tp!992875 () Bool)

(declare-fun tp!992872 () Bool)

(assert (=> b!3158414 (= e!1967772 (and tp!992875 tp!992872))))

(declare-fun b!3158415 () Bool)

(declare-fun res!1286489 () Bool)

(assert (=> b!3158415 (=> (not res!1286489) (not e!1967770))))

(assert (=> b!3158415 (= res!1286489 (not (isEmptyExpr!716 lt!1062501)))))

(declare-fun b!3158416 () Bool)

(declare-fun tp!992874 () Bool)

(declare-fun tp!992871 () Bool)

(assert (=> b!3158416 (= e!1967772 (and tp!992874 tp!992871))))

(declare-fun b!3158417 () Bool)

(assert (=> b!3158417 (= e!1967771 e!1967770)))

(declare-fun res!1286488 () Bool)

(assert (=> b!3158417 (=> (not res!1286488) (not e!1967770))))

(assert (=> b!3158417 (= res!1286488 (not (isEmptyLang!722 lt!1062501)))))

(declare-fun simplify!626 (Regex!9689) Regex!9689)

(assert (=> b!3158417 (= lt!1062502 (simplify!626 (regTwo!19890 r!17345)))))

(assert (=> b!3158417 (= lt!1062501 (simplify!626 (regOne!19890 r!17345)))))

(assert (= (and start!296196 res!1286491) b!3158408))

(assert (= (and b!3158408 res!1286492) b!3158417))

(assert (= (and b!3158417 res!1286488) b!3158409))

(assert (= (and b!3158409 res!1286487) b!3158415))

(assert (= (and b!3158415 res!1286489) b!3158413))

(assert (= (and b!3158413 res!1286486) b!3158410))

(assert (= (and b!3158410 (not res!1286490)) b!3158411))

(assert (= (and start!296196 ((_ is ElementMatch!9689) r!17345)) b!3158412))

(assert (= (and start!296196 ((_ is Concat!15010) r!17345)) b!3158416))

(assert (= (and start!296196 ((_ is Star!9689) r!17345)) b!3158407))

(assert (= (and start!296196 ((_ is Union!9689) r!17345)) b!3158414))

(declare-fun m!3424721 () Bool)

(assert (=> start!296196 m!3424721))

(declare-fun m!3424723 () Bool)

(assert (=> b!3158411 m!3424723))

(declare-fun m!3424725 () Bool)

(assert (=> b!3158411 m!3424725))

(declare-fun m!3424727 () Bool)

(assert (=> b!3158417 m!3424727))

(declare-fun m!3424729 () Bool)

(assert (=> b!3158417 m!3424729))

(declare-fun m!3424731 () Bool)

(assert (=> b!3158417 m!3424731))

(declare-fun m!3424733 () Bool)

(assert (=> b!3158415 m!3424733))

(declare-fun m!3424735 () Bool)

(assert (=> b!3158413 m!3424735))

(declare-fun m!3424737 () Bool)

(assert (=> b!3158409 m!3424737))

(declare-fun m!3424739 () Bool)

(assert (=> b!3158410 m!3424739))

(check-sat (not b!3158417) (not b!3158415) (not start!296196) (not b!3158410) (not b!3158414) (not b!3158413) (not b!3158407) (not b!3158416) tp_is_empty!16941 (not b!3158409) (not b!3158411))
(check-sat)
(get-model)

(declare-fun d!868152 () Bool)

(assert (=> d!868152 (= (isEmptyExpr!716 lt!1062502) ((_ is EmptyExpr!9689) lt!1062502))))

(assert (=> b!3158413 d!868152))

(declare-fun d!868154 () Bool)

(assert (=> d!868154 (= (isEmptyLang!722 lt!1062501) ((_ is EmptyLang!9689) lt!1062501))))

(assert (=> b!3158417 d!868154))

(declare-fun b!3158518 () Bool)

(declare-fun e!1967841 () Regex!9689)

(assert (=> b!3158518 (= e!1967841 EmptyLang!9689)))

(declare-fun bm!228610 () Bool)

(declare-fun call!228618 () Regex!9689)

(declare-fun c!531270 () Bool)

(assert (=> bm!228610 (= call!228618 (simplify!626 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))))))

(declare-fun b!3158519 () Bool)

(declare-fun c!531275 () Bool)

(declare-fun e!1967840 () Bool)

(assert (=> b!3158519 (= c!531275 e!1967840)))

(declare-fun res!1286505 () Bool)

(assert (=> b!3158519 (=> res!1286505 e!1967840)))

(declare-fun call!228619 () Bool)

(assert (=> b!3158519 (= res!1286505 call!228619)))

(declare-fun lt!1062527 () Regex!9689)

(declare-fun call!228620 () Regex!9689)

(assert (=> b!3158519 (= lt!1062527 call!228620)))

(declare-fun e!1967835 () Regex!9689)

(declare-fun e!1967836 () Regex!9689)

(assert (=> b!3158519 (= e!1967835 e!1967836)))

(declare-fun b!3158520 () Bool)

(declare-fun e!1967830 () Bool)

(declare-fun lt!1062529 () Regex!9689)

(assert (=> b!3158520 (= e!1967830 (= (nullable!3323 lt!1062529) (nullable!3323 (regTwo!19890 r!17345))))))

(declare-fun b!3158521 () Bool)

(declare-fun e!1967843 () Regex!9689)

(assert (=> b!3158521 (= e!1967843 EmptyExpr!9689)))

(declare-fun b!3158522 () Bool)

(declare-fun e!1967834 () Regex!9689)

(assert (=> b!3158522 (= e!1967834 (regTwo!19890 r!17345))))

(declare-fun bm!228611 () Bool)

(declare-fun call!228616 () Regex!9689)

(assert (=> bm!228611 (= call!228616 call!228620)))

(declare-fun b!3158523 () Bool)

(declare-fun c!531279 () Bool)

(declare-fun call!228617 () Bool)

(assert (=> b!3158523 (= c!531279 call!228617)))

(declare-fun e!1967842 () Regex!9689)

(declare-fun e!1967831 () Regex!9689)

(assert (=> b!3158523 (= e!1967842 e!1967831)))

(declare-fun b!3158524 () Bool)

(declare-fun lt!1062530 () Regex!9689)

(assert (=> b!3158524 (= e!1967831 lt!1062530)))

(declare-fun b!3158525 () Bool)

(declare-fun e!1967839 () Bool)

(assert (=> b!3158525 (= e!1967839 call!228617)))

(declare-fun b!3158526 () Bool)

(declare-fun e!1967833 () Regex!9689)

(declare-fun lt!1062528 () Regex!9689)

(assert (=> b!3158526 (= e!1967833 lt!1062528)))

(declare-fun b!3158527 () Bool)

(declare-fun c!531278 () Bool)

(declare-fun call!228621 () Bool)

(assert (=> b!3158527 (= c!531278 call!228621)))

(declare-fun e!1967837 () Regex!9689)

(assert (=> b!3158527 (= e!1967837 e!1967833)))

(declare-fun bm!228613 () Bool)

(declare-fun c!531273 () Bool)

(declare-fun lt!1062531 () Regex!9689)

(assert (=> bm!228613 (= call!228621 (isEmptyExpr!716 (ite c!531273 lt!1062527 lt!1062531)))))

(declare-fun b!3158528 () Bool)

(assert (=> b!3158528 (= e!1967836 EmptyExpr!9689)))

(declare-fun b!3158529 () Bool)

(assert (=> b!3158529 (= e!1967843 e!1967835)))

(assert (=> b!3158529 (= c!531273 ((_ is Star!9689) (regTwo!19890 r!17345)))))

(declare-fun b!3158530 () Bool)

(assert (=> b!3158530 (= e!1967841 e!1967834)))

(declare-fun c!531272 () Bool)

(assert (=> b!3158530 (= c!531272 ((_ is ElementMatch!9689) (regTwo!19890 r!17345)))))

(declare-fun b!3158531 () Bool)

(declare-fun lt!1062532 () Regex!9689)

(assert (=> b!3158531 (= e!1967831 (Union!9689 lt!1062530 lt!1062532))))

(declare-fun b!3158532 () Bool)

(declare-fun e!1967832 () Regex!9689)

(assert (=> b!3158532 (= e!1967832 e!1967837)))

(assert (=> b!3158532 (= lt!1062531 call!228618)))

(assert (=> b!3158532 (= lt!1062528 call!228616)))

(declare-fun res!1286507 () Bool)

(declare-fun call!228615 () Bool)

(assert (=> b!3158532 (= res!1286507 call!228615)))

(assert (=> b!3158532 (=> res!1286507 e!1967839)))

(declare-fun c!531280 () Bool)

(assert (=> b!3158532 (= c!531280 e!1967839)))

(declare-fun bm!228614 () Bool)

(assert (=> bm!228614 (= call!228617 call!228619)))

(declare-fun b!3158533 () Bool)

(assert (=> b!3158533 (= e!1967842 lt!1062532)))

(declare-fun bm!228615 () Bool)

(assert (=> bm!228615 (= call!228615 (isEmptyLang!722 (ite c!531270 lt!1062530 lt!1062531)))))

(declare-fun b!3158534 () Bool)

(assert (=> b!3158534 (= c!531270 ((_ is Union!9689) (regTwo!19890 r!17345)))))

(assert (=> b!3158534 (= e!1967835 e!1967832)))

(declare-fun b!3158535 () Bool)

(declare-fun e!1967838 () Regex!9689)

(assert (=> b!3158535 (= e!1967838 lt!1062531)))

(declare-fun b!3158536 () Bool)

(assert (=> b!3158536 (= e!1967833 e!1967838)))

(declare-fun c!531276 () Bool)

(assert (=> b!3158536 (= c!531276 (isEmptyExpr!716 lt!1062528))))

(declare-fun b!3158537 () Bool)

(assert (=> b!3158537 (= e!1967838 (Concat!15010 lt!1062531 lt!1062528))))

(declare-fun b!3158538 () Bool)

(assert (=> b!3158538 (= e!1967840 call!228621)))

(declare-fun bm!228616 () Bool)

(assert (=> bm!228616 (= call!228620 (simplify!626 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))))))

(declare-fun b!3158539 () Bool)

(declare-fun c!531277 () Bool)

(assert (=> b!3158539 (= c!531277 ((_ is EmptyExpr!9689) (regTwo!19890 r!17345)))))

(assert (=> b!3158539 (= e!1967834 e!1967843)))

(declare-fun b!3158540 () Bool)

(assert (=> b!3158540 (= e!1967837 EmptyLang!9689)))

(declare-fun bm!228612 () Bool)

(assert (=> bm!228612 (= call!228619 (isEmptyLang!722 (ite c!531273 lt!1062527 (ite c!531270 lt!1062532 lt!1062528))))))

(declare-fun d!868156 () Bool)

(assert (=> d!868156 e!1967830))

(declare-fun res!1286506 () Bool)

(assert (=> d!868156 (=> (not res!1286506) (not e!1967830))))

(assert (=> d!868156 (= res!1286506 (validRegex!4422 lt!1062529))))

(assert (=> d!868156 (= lt!1062529 e!1967841)))

(declare-fun c!531271 () Bool)

(assert (=> d!868156 (= c!531271 ((_ is EmptyLang!9689) (regTwo!19890 r!17345)))))

(assert (=> d!868156 (validRegex!4422 (regTwo!19890 r!17345))))

(assert (=> d!868156 (= (simplify!626 (regTwo!19890 r!17345)) lt!1062529)))

(declare-fun b!3158541 () Bool)

(assert (=> b!3158541 (= e!1967836 (Star!9689 lt!1062527))))

(declare-fun b!3158542 () Bool)

(assert (=> b!3158542 (= e!1967832 e!1967842)))

(assert (=> b!3158542 (= lt!1062530 call!228618)))

(assert (=> b!3158542 (= lt!1062532 call!228616)))

(declare-fun c!531274 () Bool)

(assert (=> b!3158542 (= c!531274 call!228615)))

(assert (= (and d!868156 c!531271) b!3158518))

(assert (= (and d!868156 (not c!531271)) b!3158530))

(assert (= (and b!3158530 c!531272) b!3158522))

(assert (= (and b!3158530 (not c!531272)) b!3158539))

(assert (= (and b!3158539 c!531277) b!3158521))

(assert (= (and b!3158539 (not c!531277)) b!3158529))

(assert (= (and b!3158529 c!531273) b!3158519))

(assert (= (and b!3158529 (not c!531273)) b!3158534))

(assert (= (and b!3158519 (not res!1286505)) b!3158538))

(assert (= (and b!3158519 c!531275) b!3158528))

(assert (= (and b!3158519 (not c!531275)) b!3158541))

(assert (= (and b!3158534 c!531270) b!3158542))

(assert (= (and b!3158534 (not c!531270)) b!3158532))

(assert (= (and b!3158542 c!531274) b!3158533))

(assert (= (and b!3158542 (not c!531274)) b!3158523))

(assert (= (and b!3158523 c!531279) b!3158524))

(assert (= (and b!3158523 (not c!531279)) b!3158531))

(assert (= (and b!3158532 (not res!1286507)) b!3158525))

(assert (= (and b!3158532 c!531280) b!3158540))

(assert (= (and b!3158532 (not c!531280)) b!3158527))

(assert (= (and b!3158527 c!531278) b!3158526))

(assert (= (and b!3158527 (not c!531278)) b!3158536))

(assert (= (and b!3158536 c!531276) b!3158535))

(assert (= (and b!3158536 (not c!531276)) b!3158537))

(assert (= (or b!3158542 b!3158532) bm!228615))

(assert (= (or b!3158523 b!3158525) bm!228614))

(assert (= (or b!3158542 b!3158532) bm!228610))

(assert (= (or b!3158542 b!3158532) bm!228611))

(assert (= (or b!3158538 b!3158527) bm!228613))

(assert (= (or b!3158519 bm!228614) bm!228612))

(assert (= (or b!3158519 bm!228611) bm!228616))

(assert (= (and d!868156 res!1286506) b!3158520))

(declare-fun m!3424741 () Bool)

(assert (=> bm!228610 m!3424741))

(declare-fun m!3424743 () Bool)

(assert (=> bm!228613 m!3424743))

(declare-fun m!3424745 () Bool)

(assert (=> b!3158536 m!3424745))

(declare-fun m!3424747 () Bool)

(assert (=> d!868156 m!3424747))

(declare-fun m!3424749 () Bool)

(assert (=> d!868156 m!3424749))

(declare-fun m!3424751 () Bool)

(assert (=> bm!228615 m!3424751))

(declare-fun m!3424753 () Bool)

(assert (=> b!3158520 m!3424753))

(declare-fun m!3424755 () Bool)

(assert (=> b!3158520 m!3424755))

(declare-fun m!3424757 () Bool)

(assert (=> bm!228612 m!3424757))

(declare-fun m!3424759 () Bool)

(assert (=> bm!228616 m!3424759))

(assert (=> b!3158417 d!868156))

(declare-fun b!3158568 () Bool)

(declare-fun e!1967869 () Regex!9689)

(assert (=> b!3158568 (= e!1967869 EmptyLang!9689)))

(declare-fun bm!228624 () Bool)

(declare-fun call!228632 () Regex!9689)

(declare-fun c!531292 () Bool)

(assert (=> bm!228624 (= call!228632 (simplify!626 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))))))

(declare-fun b!3158569 () Bool)

(declare-fun c!531297 () Bool)

(declare-fun e!1967868 () Bool)

(assert (=> b!3158569 (= c!531297 e!1967868)))

(declare-fun res!1286511 () Bool)

(assert (=> b!3158569 (=> res!1286511 e!1967868)))

(declare-fun call!228633 () Bool)

(assert (=> b!3158569 (= res!1286511 call!228633)))

(declare-fun lt!1062539 () Regex!9689)

(declare-fun call!228634 () Regex!9689)

(assert (=> b!3158569 (= lt!1062539 call!228634)))

(declare-fun e!1967863 () Regex!9689)

(declare-fun e!1967864 () Regex!9689)

(assert (=> b!3158569 (= e!1967863 e!1967864)))

(declare-fun b!3158570 () Bool)

(declare-fun e!1967858 () Bool)

(declare-fun lt!1062541 () Regex!9689)

(assert (=> b!3158570 (= e!1967858 (= (nullable!3323 lt!1062541) (nullable!3323 (regOne!19890 r!17345))))))

(declare-fun b!3158571 () Bool)

(declare-fun e!1967871 () Regex!9689)

(assert (=> b!3158571 (= e!1967871 EmptyExpr!9689)))

(declare-fun b!3158572 () Bool)

(declare-fun e!1967862 () Regex!9689)

(assert (=> b!3158572 (= e!1967862 (regOne!19890 r!17345))))

(declare-fun bm!228625 () Bool)

(declare-fun call!228630 () Regex!9689)

(assert (=> bm!228625 (= call!228630 call!228634)))

(declare-fun b!3158573 () Bool)

(declare-fun c!531301 () Bool)

(declare-fun call!228631 () Bool)

(assert (=> b!3158573 (= c!531301 call!228631)))

(declare-fun e!1967870 () Regex!9689)

(declare-fun e!1967859 () Regex!9689)

(assert (=> b!3158573 (= e!1967870 e!1967859)))

(declare-fun b!3158574 () Bool)

(declare-fun lt!1062542 () Regex!9689)

(assert (=> b!3158574 (= e!1967859 lt!1062542)))

(declare-fun b!3158575 () Bool)

(declare-fun e!1967867 () Bool)

(assert (=> b!3158575 (= e!1967867 call!228631)))

(declare-fun b!3158576 () Bool)

(declare-fun e!1967861 () Regex!9689)

(declare-fun lt!1062540 () Regex!9689)

(assert (=> b!3158576 (= e!1967861 lt!1062540)))

(declare-fun b!3158577 () Bool)

(declare-fun c!531300 () Bool)

(declare-fun call!228635 () Bool)

(assert (=> b!3158577 (= c!531300 call!228635)))

(declare-fun e!1967865 () Regex!9689)

(assert (=> b!3158577 (= e!1967865 e!1967861)))

(declare-fun lt!1062543 () Regex!9689)

(declare-fun bm!228627 () Bool)

(declare-fun c!531295 () Bool)

(assert (=> bm!228627 (= call!228635 (isEmptyExpr!716 (ite c!531295 lt!1062539 lt!1062543)))))

(declare-fun b!3158578 () Bool)

(assert (=> b!3158578 (= e!1967864 EmptyExpr!9689)))

(declare-fun b!3158579 () Bool)

(assert (=> b!3158579 (= e!1967871 e!1967863)))

(assert (=> b!3158579 (= c!531295 ((_ is Star!9689) (regOne!19890 r!17345)))))

(declare-fun b!3158580 () Bool)

(assert (=> b!3158580 (= e!1967869 e!1967862)))

(declare-fun c!531294 () Bool)

(assert (=> b!3158580 (= c!531294 ((_ is ElementMatch!9689) (regOne!19890 r!17345)))))

(declare-fun b!3158581 () Bool)

(declare-fun lt!1062544 () Regex!9689)

(assert (=> b!3158581 (= e!1967859 (Union!9689 lt!1062542 lt!1062544))))

(declare-fun b!3158582 () Bool)

(declare-fun e!1967860 () Regex!9689)

(assert (=> b!3158582 (= e!1967860 e!1967865)))

(assert (=> b!3158582 (= lt!1062543 call!228632)))

(assert (=> b!3158582 (= lt!1062540 call!228630)))

(declare-fun res!1286513 () Bool)

(declare-fun call!228629 () Bool)

(assert (=> b!3158582 (= res!1286513 call!228629)))

(assert (=> b!3158582 (=> res!1286513 e!1967867)))

(declare-fun c!531302 () Bool)

(assert (=> b!3158582 (= c!531302 e!1967867)))

(declare-fun bm!228628 () Bool)

(assert (=> bm!228628 (= call!228631 call!228633)))

(declare-fun b!3158583 () Bool)

(assert (=> b!3158583 (= e!1967870 lt!1062544)))

(declare-fun bm!228629 () Bool)

(assert (=> bm!228629 (= call!228629 (isEmptyLang!722 (ite c!531292 lt!1062542 lt!1062543)))))

(declare-fun b!3158584 () Bool)

(assert (=> b!3158584 (= c!531292 ((_ is Union!9689) (regOne!19890 r!17345)))))

(assert (=> b!3158584 (= e!1967863 e!1967860)))

(declare-fun b!3158585 () Bool)

(declare-fun e!1967866 () Regex!9689)

(assert (=> b!3158585 (= e!1967866 lt!1062543)))

(declare-fun b!3158586 () Bool)

(assert (=> b!3158586 (= e!1967861 e!1967866)))

(declare-fun c!531298 () Bool)

(assert (=> b!3158586 (= c!531298 (isEmptyExpr!716 lt!1062540))))

(declare-fun b!3158587 () Bool)

(assert (=> b!3158587 (= e!1967866 (Concat!15010 lt!1062543 lt!1062540))))

(declare-fun b!3158588 () Bool)

(assert (=> b!3158588 (= e!1967868 call!228635)))

(declare-fun bm!228630 () Bool)

(assert (=> bm!228630 (= call!228634 (simplify!626 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))))))

(declare-fun b!3158589 () Bool)

(declare-fun c!531299 () Bool)

(assert (=> b!3158589 (= c!531299 ((_ is EmptyExpr!9689) (regOne!19890 r!17345)))))

(assert (=> b!3158589 (= e!1967862 e!1967871)))

(declare-fun b!3158590 () Bool)

(assert (=> b!3158590 (= e!1967865 EmptyLang!9689)))

(declare-fun bm!228626 () Bool)

(assert (=> bm!228626 (= call!228633 (isEmptyLang!722 (ite c!531295 lt!1062539 (ite c!531292 lt!1062544 lt!1062540))))))

(declare-fun d!868162 () Bool)

(assert (=> d!868162 e!1967858))

(declare-fun res!1286512 () Bool)

(assert (=> d!868162 (=> (not res!1286512) (not e!1967858))))

(assert (=> d!868162 (= res!1286512 (validRegex!4422 lt!1062541))))

(assert (=> d!868162 (= lt!1062541 e!1967869)))

(declare-fun c!531293 () Bool)

(assert (=> d!868162 (= c!531293 ((_ is EmptyLang!9689) (regOne!19890 r!17345)))))

(assert (=> d!868162 (validRegex!4422 (regOne!19890 r!17345))))

(assert (=> d!868162 (= (simplify!626 (regOne!19890 r!17345)) lt!1062541)))

(declare-fun b!3158591 () Bool)

(assert (=> b!3158591 (= e!1967864 (Star!9689 lt!1062539))))

(declare-fun b!3158592 () Bool)

(assert (=> b!3158592 (= e!1967860 e!1967870)))

(assert (=> b!3158592 (= lt!1062542 call!228632)))

(assert (=> b!3158592 (= lt!1062544 call!228630)))

(declare-fun c!531296 () Bool)

(assert (=> b!3158592 (= c!531296 call!228629)))

(assert (= (and d!868162 c!531293) b!3158568))

(assert (= (and d!868162 (not c!531293)) b!3158580))

(assert (= (and b!3158580 c!531294) b!3158572))

(assert (= (and b!3158580 (not c!531294)) b!3158589))

(assert (= (and b!3158589 c!531299) b!3158571))

(assert (= (and b!3158589 (not c!531299)) b!3158579))

(assert (= (and b!3158579 c!531295) b!3158569))

(assert (= (and b!3158579 (not c!531295)) b!3158584))

(assert (= (and b!3158569 (not res!1286511)) b!3158588))

(assert (= (and b!3158569 c!531297) b!3158578))

(assert (= (and b!3158569 (not c!531297)) b!3158591))

(assert (= (and b!3158584 c!531292) b!3158592))

(assert (= (and b!3158584 (not c!531292)) b!3158582))

(assert (= (and b!3158592 c!531296) b!3158583))

(assert (= (and b!3158592 (not c!531296)) b!3158573))

(assert (= (and b!3158573 c!531301) b!3158574))

(assert (= (and b!3158573 (not c!531301)) b!3158581))

(assert (= (and b!3158582 (not res!1286513)) b!3158575))

(assert (= (and b!3158582 c!531302) b!3158590))

(assert (= (and b!3158582 (not c!531302)) b!3158577))

(assert (= (and b!3158577 c!531300) b!3158576))

(assert (= (and b!3158577 (not c!531300)) b!3158586))

(assert (= (and b!3158586 c!531298) b!3158585))

(assert (= (and b!3158586 (not c!531298)) b!3158587))

(assert (= (or b!3158592 b!3158582) bm!228629))

(assert (= (or b!3158573 b!3158575) bm!228628))

(assert (= (or b!3158592 b!3158582) bm!228624))

(assert (= (or b!3158592 b!3158582) bm!228625))

(assert (= (or b!3158588 b!3158577) bm!228627))

(assert (= (or b!3158569 bm!228628) bm!228626))

(assert (= (or b!3158569 bm!228625) bm!228630))

(assert (= (and d!868162 res!1286512) b!3158570))

(declare-fun m!3424781 () Bool)

(assert (=> bm!228624 m!3424781))

(declare-fun m!3424783 () Bool)

(assert (=> bm!228627 m!3424783))

(declare-fun m!3424785 () Bool)

(assert (=> b!3158586 m!3424785))

(declare-fun m!3424787 () Bool)

(assert (=> d!868162 m!3424787))

(declare-fun m!3424789 () Bool)

(assert (=> d!868162 m!3424789))

(declare-fun m!3424791 () Bool)

(assert (=> bm!228629 m!3424791))

(declare-fun m!3424793 () Bool)

(assert (=> b!3158570 m!3424793))

(declare-fun m!3424795 () Bool)

(assert (=> b!3158570 m!3424795))

(declare-fun m!3424797 () Bool)

(assert (=> bm!228626 m!3424797))

(declare-fun m!3424799 () Bool)

(assert (=> bm!228630 m!3424799))

(assert (=> b!3158417 d!868162))

(declare-fun d!868166 () Bool)

(declare-fun nullableFct!940 (Regex!9689) Bool)

(assert (=> d!868166 (= (nullable!3323 lt!1062500) (nullableFct!940 lt!1062500))))

(declare-fun bs!539370 () Bool)

(assert (= bs!539370 d!868166))

(declare-fun m!3424821 () Bool)

(assert (=> bs!539370 m!3424821))

(assert (=> b!3158411 d!868166))

(declare-fun d!868170 () Bool)

(assert (=> d!868170 (= (nullable!3323 r!17345) (nullableFct!940 r!17345))))

(declare-fun bs!539371 () Bool)

(assert (= bs!539371 d!868170))

(declare-fun m!3424823 () Bool)

(assert (=> bs!539371 m!3424823))

(assert (=> b!3158411 d!868170))

(declare-fun d!868172 () Bool)

(declare-fun res!1286543 () Bool)

(declare-fun e!1967926 () Bool)

(assert (=> d!868172 (=> res!1286543 e!1967926)))

(assert (=> d!868172 (= res!1286543 ((_ is ElementMatch!9689) lt!1062500))))

(assert (=> d!868172 (= (validRegex!4422 lt!1062500) e!1967926)))

(declare-fun b!3158663 () Bool)

(declare-fun e!1967921 () Bool)

(assert (=> b!3158663 (= e!1967926 e!1967921)))

(declare-fun c!531324 () Bool)

(assert (=> b!3158663 (= c!531324 ((_ is Star!9689) lt!1062500))))

(declare-fun b!3158664 () Bool)

(declare-fun e!1967927 () Bool)

(declare-fun call!228660 () Bool)

(assert (=> b!3158664 (= e!1967927 call!228660)))

(declare-fun b!3158665 () Bool)

(declare-fun e!1967922 () Bool)

(assert (=> b!3158665 (= e!1967921 e!1967922)))

(declare-fun c!531325 () Bool)

(assert (=> b!3158665 (= c!531325 ((_ is Union!9689) lt!1062500))))

(declare-fun b!3158666 () Bool)

(declare-fun res!1286542 () Bool)

(declare-fun e!1967924 () Bool)

(assert (=> b!3158666 (=> res!1286542 e!1967924)))

(assert (=> b!3158666 (= res!1286542 (not ((_ is Concat!15010) lt!1062500)))))

(assert (=> b!3158666 (= e!1967922 e!1967924)))

(declare-fun b!3158667 () Bool)

(assert (=> b!3158667 (= e!1967924 e!1967927)))

(declare-fun res!1286545 () Bool)

(assert (=> b!3158667 (=> (not res!1286545) (not e!1967927))))

(declare-fun call!228658 () Bool)

(assert (=> b!3158667 (= res!1286545 call!228658)))

(declare-fun b!3158668 () Bool)

(declare-fun e!1967923 () Bool)

(assert (=> b!3158668 (= e!1967921 e!1967923)))

(declare-fun res!1286544 () Bool)

(assert (=> b!3158668 (= res!1286544 (not (nullable!3323 (reg!10018 lt!1062500))))))

(assert (=> b!3158668 (=> (not res!1286544) (not e!1967923))))

(declare-fun b!3158669 () Bool)

(declare-fun res!1286546 () Bool)

(declare-fun e!1967925 () Bool)

(assert (=> b!3158669 (=> (not res!1286546) (not e!1967925))))

(assert (=> b!3158669 (= res!1286546 call!228660)))

(assert (=> b!3158669 (= e!1967922 e!1967925)))

(declare-fun bm!228653 () Bool)

(assert (=> bm!228653 (= call!228660 (validRegex!4422 (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))))))

(declare-fun b!3158670 () Bool)

(assert (=> b!3158670 (= e!1967925 call!228658)))

(declare-fun call!228659 () Bool)

(declare-fun bm!228654 () Bool)

(assert (=> bm!228654 (= call!228659 (validRegex!4422 (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))))))

(declare-fun b!3158671 () Bool)

(assert (=> b!3158671 (= e!1967923 call!228659)))

(declare-fun bm!228655 () Bool)

(assert (=> bm!228655 (= call!228658 call!228659)))

(assert (= (and d!868172 (not res!1286543)) b!3158663))

(assert (= (and b!3158663 c!531324) b!3158668))

(assert (= (and b!3158663 (not c!531324)) b!3158665))

(assert (= (and b!3158668 res!1286544) b!3158671))

(assert (= (and b!3158665 c!531325) b!3158669))

(assert (= (and b!3158665 (not c!531325)) b!3158666))

(assert (= (and b!3158669 res!1286546) b!3158670))

(assert (= (and b!3158666 (not res!1286542)) b!3158667))

(assert (= (and b!3158667 res!1286545) b!3158664))

(assert (= (or b!3158670 b!3158667) bm!228655))

(assert (= (or b!3158669 b!3158664) bm!228653))

(assert (= (or b!3158671 bm!228655) bm!228654))

(declare-fun m!3424831 () Bool)

(assert (=> b!3158668 m!3424831))

(declare-fun m!3424833 () Bool)

(assert (=> bm!228653 m!3424833))

(declare-fun m!3424835 () Bool)

(assert (=> bm!228654 m!3424835))

(assert (=> b!3158410 d!868172))

(declare-fun d!868178 () Bool)

(declare-fun res!1286553 () Bool)

(declare-fun e!1967940 () Bool)

(assert (=> d!868178 (=> res!1286553 e!1967940)))

(assert (=> d!868178 (= res!1286553 ((_ is ElementMatch!9689) r!17345))))

(assert (=> d!868178 (= (validRegex!4422 r!17345) e!1967940)))

(declare-fun b!3158681 () Bool)

(declare-fun e!1967935 () Bool)

(assert (=> b!3158681 (= e!1967940 e!1967935)))

(declare-fun c!531328 () Bool)

(assert (=> b!3158681 (= c!531328 ((_ is Star!9689) r!17345))))

(declare-fun b!3158682 () Bool)

(declare-fun e!1967941 () Bool)

(declare-fun call!228666 () Bool)

(assert (=> b!3158682 (= e!1967941 call!228666)))

(declare-fun b!3158683 () Bool)

(declare-fun e!1967936 () Bool)

(assert (=> b!3158683 (= e!1967935 e!1967936)))

(declare-fun c!531329 () Bool)

(assert (=> b!3158683 (= c!531329 ((_ is Union!9689) r!17345))))

(declare-fun b!3158684 () Bool)

(declare-fun res!1286552 () Bool)

(declare-fun e!1967938 () Bool)

(assert (=> b!3158684 (=> res!1286552 e!1967938)))

(assert (=> b!3158684 (= res!1286552 (not ((_ is Concat!15010) r!17345)))))

(assert (=> b!3158684 (= e!1967936 e!1967938)))

(declare-fun b!3158685 () Bool)

(assert (=> b!3158685 (= e!1967938 e!1967941)))

(declare-fun res!1286555 () Bool)

(assert (=> b!3158685 (=> (not res!1286555) (not e!1967941))))

(declare-fun call!228664 () Bool)

(assert (=> b!3158685 (= res!1286555 call!228664)))

(declare-fun b!3158686 () Bool)

(declare-fun e!1967937 () Bool)

(assert (=> b!3158686 (= e!1967935 e!1967937)))

(declare-fun res!1286554 () Bool)

(assert (=> b!3158686 (= res!1286554 (not (nullable!3323 (reg!10018 r!17345))))))

(assert (=> b!3158686 (=> (not res!1286554) (not e!1967937))))

(declare-fun b!3158687 () Bool)

(declare-fun res!1286556 () Bool)

(declare-fun e!1967939 () Bool)

(assert (=> b!3158687 (=> (not res!1286556) (not e!1967939))))

(assert (=> b!3158687 (= res!1286556 call!228666)))

(assert (=> b!3158687 (= e!1967936 e!1967939)))

(declare-fun bm!228659 () Bool)

(assert (=> bm!228659 (= call!228666 (validRegex!4422 (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))))))

(declare-fun b!3158688 () Bool)

(assert (=> b!3158688 (= e!1967939 call!228664)))

(declare-fun call!228665 () Bool)

(declare-fun bm!228660 () Bool)

(assert (=> bm!228660 (= call!228665 (validRegex!4422 (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))))))

(declare-fun b!3158689 () Bool)

(assert (=> b!3158689 (= e!1967937 call!228665)))

(declare-fun bm!228661 () Bool)

(assert (=> bm!228661 (= call!228664 call!228665)))

(assert (= (and d!868178 (not res!1286553)) b!3158681))

(assert (= (and b!3158681 c!531328) b!3158686))

(assert (= (and b!3158681 (not c!531328)) b!3158683))

(assert (= (and b!3158686 res!1286554) b!3158689))

(assert (= (and b!3158683 c!531329) b!3158687))

(assert (= (and b!3158683 (not c!531329)) b!3158684))

(assert (= (and b!3158687 res!1286556) b!3158688))

(assert (= (and b!3158684 (not res!1286552)) b!3158685))

(assert (= (and b!3158685 res!1286555) b!3158682))

(assert (= (or b!3158688 b!3158685) bm!228661))

(assert (= (or b!3158687 b!3158682) bm!228659))

(assert (= (or b!3158689 bm!228661) bm!228660))

(declare-fun m!3424843 () Bool)

(assert (=> b!3158686 m!3424843))

(declare-fun m!3424845 () Bool)

(assert (=> bm!228659 m!3424845))

(declare-fun m!3424847 () Bool)

(assert (=> bm!228660 m!3424847))

(assert (=> start!296196 d!868178))

(declare-fun d!868186 () Bool)

(assert (=> d!868186 (= (isEmptyExpr!716 lt!1062501) ((_ is EmptyExpr!9689) lt!1062501))))

(assert (=> b!3158415 d!868186))

(declare-fun d!868188 () Bool)

(assert (=> d!868188 (= (isEmptyLang!722 lt!1062502) ((_ is EmptyLang!9689) lt!1062502))))

(assert (=> b!3158409 d!868188))

(declare-fun e!1967947 () Bool)

(assert (=> b!3158407 (= tp!992873 e!1967947)))

(declare-fun b!3158717 () Bool)

(declare-fun tp!992902 () Bool)

(declare-fun tp!992903 () Bool)

(assert (=> b!3158717 (= e!1967947 (and tp!992902 tp!992903))))

(declare-fun b!3158714 () Bool)

(assert (=> b!3158714 (= e!1967947 tp_is_empty!16941)))

(declare-fun b!3158715 () Bool)

(declare-fun tp!992905 () Bool)

(declare-fun tp!992901 () Bool)

(assert (=> b!3158715 (= e!1967947 (and tp!992905 tp!992901))))

(declare-fun b!3158716 () Bool)

(declare-fun tp!992904 () Bool)

(assert (=> b!3158716 (= e!1967947 tp!992904)))

(assert (= (and b!3158407 ((_ is ElementMatch!9689) (reg!10018 r!17345))) b!3158714))

(assert (= (and b!3158407 ((_ is Concat!15010) (reg!10018 r!17345))) b!3158715))

(assert (= (and b!3158407 ((_ is Star!9689) (reg!10018 r!17345))) b!3158716))

(assert (= (and b!3158407 ((_ is Union!9689) (reg!10018 r!17345))) b!3158717))

(declare-fun e!1967949 () Bool)

(assert (=> b!3158416 (= tp!992874 e!1967949)))

(declare-fun b!3158725 () Bool)

(declare-fun tp!992912 () Bool)

(declare-fun tp!992913 () Bool)

(assert (=> b!3158725 (= e!1967949 (and tp!992912 tp!992913))))

(declare-fun b!3158722 () Bool)

(assert (=> b!3158722 (= e!1967949 tp_is_empty!16941)))

(declare-fun b!3158723 () Bool)

(declare-fun tp!992915 () Bool)

(declare-fun tp!992911 () Bool)

(assert (=> b!3158723 (= e!1967949 (and tp!992915 tp!992911))))

(declare-fun b!3158724 () Bool)

(declare-fun tp!992914 () Bool)

(assert (=> b!3158724 (= e!1967949 tp!992914)))

(assert (= (and b!3158416 ((_ is ElementMatch!9689) (regOne!19890 r!17345))) b!3158722))

(assert (= (and b!3158416 ((_ is Concat!15010) (regOne!19890 r!17345))) b!3158723))

(assert (= (and b!3158416 ((_ is Star!9689) (regOne!19890 r!17345))) b!3158724))

(assert (= (and b!3158416 ((_ is Union!9689) (regOne!19890 r!17345))) b!3158725))

(declare-fun e!1967952 () Bool)

(assert (=> b!3158416 (= tp!992871 e!1967952)))

(declare-fun b!3158737 () Bool)

(declare-fun tp!992927 () Bool)

(declare-fun tp!992928 () Bool)

(assert (=> b!3158737 (= e!1967952 (and tp!992927 tp!992928))))

(declare-fun b!3158734 () Bool)

(assert (=> b!3158734 (= e!1967952 tp_is_empty!16941)))

(declare-fun b!3158735 () Bool)

(declare-fun tp!992930 () Bool)

(declare-fun tp!992926 () Bool)

(assert (=> b!3158735 (= e!1967952 (and tp!992930 tp!992926))))

(declare-fun b!3158736 () Bool)

(declare-fun tp!992929 () Bool)

(assert (=> b!3158736 (= e!1967952 tp!992929)))

(assert (= (and b!3158416 ((_ is ElementMatch!9689) (regTwo!19890 r!17345))) b!3158734))

(assert (= (and b!3158416 ((_ is Concat!15010) (regTwo!19890 r!17345))) b!3158735))

(assert (= (and b!3158416 ((_ is Star!9689) (regTwo!19890 r!17345))) b!3158736))

(assert (= (and b!3158416 ((_ is Union!9689) (regTwo!19890 r!17345))) b!3158737))

(declare-fun e!1967954 () Bool)

(assert (=> b!3158414 (= tp!992875 e!1967954)))

(declare-fun b!3158745 () Bool)

(declare-fun tp!992937 () Bool)

(declare-fun tp!992938 () Bool)

(assert (=> b!3158745 (= e!1967954 (and tp!992937 tp!992938))))

(declare-fun b!3158742 () Bool)

(assert (=> b!3158742 (= e!1967954 tp_is_empty!16941)))

(declare-fun b!3158743 () Bool)

(declare-fun tp!992940 () Bool)

(declare-fun tp!992936 () Bool)

(assert (=> b!3158743 (= e!1967954 (and tp!992940 tp!992936))))

(declare-fun b!3158744 () Bool)

(declare-fun tp!992939 () Bool)

(assert (=> b!3158744 (= e!1967954 tp!992939)))

(assert (= (and b!3158414 ((_ is ElementMatch!9689) (regOne!19891 r!17345))) b!3158742))

(assert (= (and b!3158414 ((_ is Concat!15010) (regOne!19891 r!17345))) b!3158743))

(assert (= (and b!3158414 ((_ is Star!9689) (regOne!19891 r!17345))) b!3158744))

(assert (= (and b!3158414 ((_ is Union!9689) (regOne!19891 r!17345))) b!3158745))

(declare-fun e!1967955 () Bool)

(assert (=> b!3158414 (= tp!992872 e!1967955)))

(declare-fun b!3158749 () Bool)

(declare-fun tp!992942 () Bool)

(declare-fun tp!992943 () Bool)

(assert (=> b!3158749 (= e!1967955 (and tp!992942 tp!992943))))

(declare-fun b!3158746 () Bool)

(assert (=> b!3158746 (= e!1967955 tp_is_empty!16941)))

(declare-fun b!3158747 () Bool)

(declare-fun tp!992945 () Bool)

(declare-fun tp!992941 () Bool)

(assert (=> b!3158747 (= e!1967955 (and tp!992945 tp!992941))))

(declare-fun b!3158748 () Bool)

(declare-fun tp!992944 () Bool)

(assert (=> b!3158748 (= e!1967955 tp!992944)))

(assert (= (and b!3158414 ((_ is ElementMatch!9689) (regTwo!19891 r!17345))) b!3158746))

(assert (= (and b!3158414 ((_ is Concat!15010) (regTwo!19891 r!17345))) b!3158747))

(assert (= (and b!3158414 ((_ is Star!9689) (regTwo!19891 r!17345))) b!3158748))

(assert (= (and b!3158414 ((_ is Union!9689) (regTwo!19891 r!17345))) b!3158749))

(check-sat (not b!3158570) (not bm!228610) (not b!3158725) (not b!3158723) (not bm!228615) (not b!3158686) (not b!3158536) (not bm!228659) (not bm!228660) (not bm!228624) (not b!3158716) (not b!3158748) (not bm!228626) (not d!868166) (not b!3158717) (not bm!228616) (not b!3158520) (not b!3158735) (not b!3158586) (not b!3158737) (not bm!228629) (not bm!228613) (not b!3158743) (not bm!228627) (not b!3158744) (not b!3158749) (not b!3158747) (not bm!228654) (not d!868156) (not d!868162) (not b!3158736) (not b!3158745) (not b!3158668) (not bm!228630) (not b!3158724) (not b!3158715) tp_is_empty!16941 (not bm!228612) (not d!868170) (not bm!228653))
(check-sat)
(get-model)

(declare-fun b!3158764 () Bool)

(declare-fun e!1967968 () Bool)

(declare-fun e!1967970 () Bool)

(assert (=> b!3158764 (= e!1967968 e!1967970)))

(declare-fun res!1286571 () Bool)

(assert (=> b!3158764 (=> res!1286571 e!1967970)))

(assert (=> b!3158764 (= res!1286571 ((_ is Star!9689) lt!1062500))))

(declare-fun b!3158765 () Bool)

(declare-fun e!1967973 () Bool)

(declare-fun call!228672 () Bool)

(assert (=> b!3158765 (= e!1967973 call!228672)))

(declare-fun b!3158766 () Bool)

(declare-fun e!1967972 () Bool)

(declare-fun e!1967971 () Bool)

(assert (=> b!3158766 (= e!1967972 e!1967971)))

(declare-fun res!1286570 () Bool)

(assert (=> b!3158766 (= res!1286570 call!228672)))

(assert (=> b!3158766 (=> (not res!1286570) (not e!1967971))))

(declare-fun b!3158767 () Bool)

(declare-fun e!1967969 () Bool)

(assert (=> b!3158767 (= e!1967969 e!1967968)))

(declare-fun res!1286568 () Bool)

(assert (=> b!3158767 (=> (not res!1286568) (not e!1967968))))

(assert (=> b!3158767 (= res!1286568 (and (not ((_ is EmptyLang!9689) lt!1062500)) (not ((_ is ElementMatch!9689) lt!1062500))))))

(declare-fun bm!228666 () Bool)

(declare-fun c!531332 () Bool)

(assert (=> bm!228666 (= call!228672 (nullable!3323 (ite c!531332 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500))))))

(declare-fun bm!228667 () Bool)

(declare-fun call!228671 () Bool)

(assert (=> bm!228667 (= call!228671 (nullable!3323 (ite c!531332 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))))))

(declare-fun b!3158768 () Bool)

(assert (=> b!3158768 (= e!1967971 call!228671)))

(declare-fun b!3158769 () Bool)

(assert (=> b!3158769 (= e!1967972 e!1967973)))

(declare-fun res!1286569 () Bool)

(assert (=> b!3158769 (= res!1286569 call!228671)))

(assert (=> b!3158769 (=> res!1286569 e!1967973)))

(declare-fun b!3158770 () Bool)

(assert (=> b!3158770 (= e!1967970 e!1967972)))

(assert (=> b!3158770 (= c!531332 ((_ is Union!9689) lt!1062500))))

(declare-fun d!868192 () Bool)

(declare-fun res!1286567 () Bool)

(assert (=> d!868192 (=> res!1286567 e!1967969)))

(assert (=> d!868192 (= res!1286567 ((_ is EmptyExpr!9689) lt!1062500))))

(assert (=> d!868192 (= (nullableFct!940 lt!1062500) e!1967969)))

(assert (= (and d!868192 (not res!1286567)) b!3158767))

(assert (= (and b!3158767 res!1286568) b!3158764))

(assert (= (and b!3158764 (not res!1286571)) b!3158770))

(assert (= (and b!3158770 c!531332) b!3158769))

(assert (= (and b!3158770 (not c!531332)) b!3158766))

(assert (= (and b!3158769 (not res!1286569)) b!3158765))

(assert (= (and b!3158766 res!1286570) b!3158768))

(assert (= (or b!3158769 b!3158768) bm!228667))

(assert (= (or b!3158765 b!3158766) bm!228666))

(declare-fun m!3424853 () Bool)

(assert (=> bm!228666 m!3424853))

(declare-fun m!3424855 () Bool)

(assert (=> bm!228667 m!3424855))

(assert (=> d!868166 d!868192))

(declare-fun d!868194 () Bool)

(declare-fun res!1286573 () Bool)

(declare-fun e!1967979 () Bool)

(assert (=> d!868194 (=> res!1286573 e!1967979)))

(assert (=> d!868194 (= res!1286573 ((_ is ElementMatch!9689) lt!1062529))))

(assert (=> d!868194 (= (validRegex!4422 lt!1062529) e!1967979)))

(declare-fun b!3158771 () Bool)

(declare-fun e!1967974 () Bool)

(assert (=> b!3158771 (= e!1967979 e!1967974)))

(declare-fun c!531333 () Bool)

(assert (=> b!3158771 (= c!531333 ((_ is Star!9689) lt!1062529))))

(declare-fun b!3158772 () Bool)

(declare-fun e!1967980 () Bool)

(declare-fun call!228675 () Bool)

(assert (=> b!3158772 (= e!1967980 call!228675)))

(declare-fun b!3158773 () Bool)

(declare-fun e!1967975 () Bool)

(assert (=> b!3158773 (= e!1967974 e!1967975)))

(declare-fun c!531334 () Bool)

(assert (=> b!3158773 (= c!531334 ((_ is Union!9689) lt!1062529))))

(declare-fun b!3158774 () Bool)

(declare-fun res!1286572 () Bool)

(declare-fun e!1967977 () Bool)

(assert (=> b!3158774 (=> res!1286572 e!1967977)))

(assert (=> b!3158774 (= res!1286572 (not ((_ is Concat!15010) lt!1062529)))))

(assert (=> b!3158774 (= e!1967975 e!1967977)))

(declare-fun b!3158775 () Bool)

(assert (=> b!3158775 (= e!1967977 e!1967980)))

(declare-fun res!1286575 () Bool)

(assert (=> b!3158775 (=> (not res!1286575) (not e!1967980))))

(declare-fun call!228673 () Bool)

(assert (=> b!3158775 (= res!1286575 call!228673)))

(declare-fun b!3158776 () Bool)

(declare-fun e!1967976 () Bool)

(assert (=> b!3158776 (= e!1967974 e!1967976)))

(declare-fun res!1286574 () Bool)

(assert (=> b!3158776 (= res!1286574 (not (nullable!3323 (reg!10018 lt!1062529))))))

(assert (=> b!3158776 (=> (not res!1286574) (not e!1967976))))

(declare-fun b!3158777 () Bool)

(declare-fun res!1286576 () Bool)

(declare-fun e!1967978 () Bool)

(assert (=> b!3158777 (=> (not res!1286576) (not e!1967978))))

(assert (=> b!3158777 (= res!1286576 call!228675)))

(assert (=> b!3158777 (= e!1967975 e!1967978)))

(declare-fun bm!228668 () Bool)

(assert (=> bm!228668 (= call!228675 (validRegex!4422 (ite c!531334 (regOne!19891 lt!1062529) (regTwo!19890 lt!1062529))))))

(declare-fun b!3158778 () Bool)

(assert (=> b!3158778 (= e!1967978 call!228673)))

(declare-fun bm!228669 () Bool)

(declare-fun call!228674 () Bool)

(assert (=> bm!228669 (= call!228674 (validRegex!4422 (ite c!531333 (reg!10018 lt!1062529) (ite c!531334 (regTwo!19891 lt!1062529) (regOne!19890 lt!1062529)))))))

(declare-fun b!3158779 () Bool)

(assert (=> b!3158779 (= e!1967976 call!228674)))

(declare-fun bm!228670 () Bool)

(assert (=> bm!228670 (= call!228673 call!228674)))

(assert (= (and d!868194 (not res!1286573)) b!3158771))

(assert (= (and b!3158771 c!531333) b!3158776))

(assert (= (and b!3158771 (not c!531333)) b!3158773))

(assert (= (and b!3158776 res!1286574) b!3158779))

(assert (= (and b!3158773 c!531334) b!3158777))

(assert (= (and b!3158773 (not c!531334)) b!3158774))

(assert (= (and b!3158777 res!1286576) b!3158778))

(assert (= (and b!3158774 (not res!1286572)) b!3158775))

(assert (= (and b!3158775 res!1286575) b!3158772))

(assert (= (or b!3158778 b!3158775) bm!228670))

(assert (= (or b!3158777 b!3158772) bm!228668))

(assert (= (or b!3158779 bm!228670) bm!228669))

(declare-fun m!3424857 () Bool)

(assert (=> b!3158776 m!3424857))

(declare-fun m!3424859 () Bool)

(assert (=> bm!228668 m!3424859))

(declare-fun m!3424861 () Bool)

(assert (=> bm!228669 m!3424861))

(assert (=> d!868156 d!868194))

(declare-fun d!868196 () Bool)

(declare-fun res!1286578 () Bool)

(declare-fun e!1967986 () Bool)

(assert (=> d!868196 (=> res!1286578 e!1967986)))

(assert (=> d!868196 (= res!1286578 ((_ is ElementMatch!9689) (regTwo!19890 r!17345)))))

(assert (=> d!868196 (= (validRegex!4422 (regTwo!19890 r!17345)) e!1967986)))

(declare-fun b!3158780 () Bool)

(declare-fun e!1967981 () Bool)

(assert (=> b!3158780 (= e!1967986 e!1967981)))

(declare-fun c!531335 () Bool)

(assert (=> b!3158780 (= c!531335 ((_ is Star!9689) (regTwo!19890 r!17345)))))

(declare-fun b!3158781 () Bool)

(declare-fun e!1967987 () Bool)

(declare-fun call!228678 () Bool)

(assert (=> b!3158781 (= e!1967987 call!228678)))

(declare-fun b!3158782 () Bool)

(declare-fun e!1967982 () Bool)

(assert (=> b!3158782 (= e!1967981 e!1967982)))

(declare-fun c!531336 () Bool)

(assert (=> b!3158782 (= c!531336 ((_ is Union!9689) (regTwo!19890 r!17345)))))

(declare-fun b!3158783 () Bool)

(declare-fun res!1286577 () Bool)

(declare-fun e!1967984 () Bool)

(assert (=> b!3158783 (=> res!1286577 e!1967984)))

(assert (=> b!3158783 (= res!1286577 (not ((_ is Concat!15010) (regTwo!19890 r!17345))))))

(assert (=> b!3158783 (= e!1967982 e!1967984)))

(declare-fun b!3158784 () Bool)

(assert (=> b!3158784 (= e!1967984 e!1967987)))

(declare-fun res!1286580 () Bool)

(assert (=> b!3158784 (=> (not res!1286580) (not e!1967987))))

(declare-fun call!228676 () Bool)

(assert (=> b!3158784 (= res!1286580 call!228676)))

(declare-fun b!3158785 () Bool)

(declare-fun e!1967983 () Bool)

(assert (=> b!3158785 (= e!1967981 e!1967983)))

(declare-fun res!1286579 () Bool)

(assert (=> b!3158785 (= res!1286579 (not (nullable!3323 (reg!10018 (regTwo!19890 r!17345)))))))

(assert (=> b!3158785 (=> (not res!1286579) (not e!1967983))))

(declare-fun b!3158786 () Bool)

(declare-fun res!1286581 () Bool)

(declare-fun e!1967985 () Bool)

(assert (=> b!3158786 (=> (not res!1286581) (not e!1967985))))

(assert (=> b!3158786 (= res!1286581 call!228678)))

(assert (=> b!3158786 (= e!1967982 e!1967985)))

(declare-fun bm!228671 () Bool)

(assert (=> bm!228671 (= call!228678 (validRegex!4422 (ite c!531336 (regOne!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345)))))))

(declare-fun b!3158787 () Bool)

(assert (=> b!3158787 (= e!1967985 call!228676)))

(declare-fun call!228677 () Bool)

(declare-fun bm!228672 () Bool)

(assert (=> bm!228672 (= call!228677 (validRegex!4422 (ite c!531335 (reg!10018 (regTwo!19890 r!17345)) (ite c!531336 (regTwo!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345))))))))

(declare-fun b!3158788 () Bool)

(assert (=> b!3158788 (= e!1967983 call!228677)))

(declare-fun bm!228673 () Bool)

(assert (=> bm!228673 (= call!228676 call!228677)))

(assert (= (and d!868196 (not res!1286578)) b!3158780))

(assert (= (and b!3158780 c!531335) b!3158785))

(assert (= (and b!3158780 (not c!531335)) b!3158782))

(assert (= (and b!3158785 res!1286579) b!3158788))

(assert (= (and b!3158782 c!531336) b!3158786))

(assert (= (and b!3158782 (not c!531336)) b!3158783))

(assert (= (and b!3158786 res!1286581) b!3158787))

(assert (= (and b!3158783 (not res!1286577)) b!3158784))

(assert (= (and b!3158784 res!1286580) b!3158781))

(assert (= (or b!3158787 b!3158784) bm!228673))

(assert (= (or b!3158786 b!3158781) bm!228671))

(assert (= (or b!3158788 bm!228673) bm!228672))

(declare-fun m!3424863 () Bool)

(assert (=> b!3158785 m!3424863))

(declare-fun m!3424865 () Bool)

(assert (=> bm!228671 m!3424865))

(declare-fun m!3424867 () Bool)

(assert (=> bm!228672 m!3424867))

(assert (=> d!868156 d!868196))

(declare-fun d!868198 () Bool)

(declare-fun res!1286583 () Bool)

(declare-fun e!1967993 () Bool)

(assert (=> d!868198 (=> res!1286583 e!1967993)))

(assert (=> d!868198 (= res!1286583 ((_ is ElementMatch!9689) lt!1062541))))

(assert (=> d!868198 (= (validRegex!4422 lt!1062541) e!1967993)))

(declare-fun b!3158789 () Bool)

(declare-fun e!1967988 () Bool)

(assert (=> b!3158789 (= e!1967993 e!1967988)))

(declare-fun c!531337 () Bool)

(assert (=> b!3158789 (= c!531337 ((_ is Star!9689) lt!1062541))))

(declare-fun b!3158790 () Bool)

(declare-fun e!1967994 () Bool)

(declare-fun call!228681 () Bool)

(assert (=> b!3158790 (= e!1967994 call!228681)))

(declare-fun b!3158791 () Bool)

(declare-fun e!1967989 () Bool)

(assert (=> b!3158791 (= e!1967988 e!1967989)))

(declare-fun c!531338 () Bool)

(assert (=> b!3158791 (= c!531338 ((_ is Union!9689) lt!1062541))))

(declare-fun b!3158792 () Bool)

(declare-fun res!1286582 () Bool)

(declare-fun e!1967991 () Bool)

(assert (=> b!3158792 (=> res!1286582 e!1967991)))

(assert (=> b!3158792 (= res!1286582 (not ((_ is Concat!15010) lt!1062541)))))

(assert (=> b!3158792 (= e!1967989 e!1967991)))

(declare-fun b!3158793 () Bool)

(assert (=> b!3158793 (= e!1967991 e!1967994)))

(declare-fun res!1286585 () Bool)

(assert (=> b!3158793 (=> (not res!1286585) (not e!1967994))))

(declare-fun call!228679 () Bool)

(assert (=> b!3158793 (= res!1286585 call!228679)))

(declare-fun b!3158794 () Bool)

(declare-fun e!1967990 () Bool)

(assert (=> b!3158794 (= e!1967988 e!1967990)))

(declare-fun res!1286584 () Bool)

(assert (=> b!3158794 (= res!1286584 (not (nullable!3323 (reg!10018 lt!1062541))))))

(assert (=> b!3158794 (=> (not res!1286584) (not e!1967990))))

(declare-fun b!3158795 () Bool)

(declare-fun res!1286586 () Bool)

(declare-fun e!1967992 () Bool)

(assert (=> b!3158795 (=> (not res!1286586) (not e!1967992))))

(assert (=> b!3158795 (= res!1286586 call!228681)))

(assert (=> b!3158795 (= e!1967989 e!1967992)))

(declare-fun bm!228674 () Bool)

(assert (=> bm!228674 (= call!228681 (validRegex!4422 (ite c!531338 (regOne!19891 lt!1062541) (regTwo!19890 lt!1062541))))))

(declare-fun b!3158796 () Bool)

(assert (=> b!3158796 (= e!1967992 call!228679)))

(declare-fun bm!228675 () Bool)

(declare-fun call!228680 () Bool)

(assert (=> bm!228675 (= call!228680 (validRegex!4422 (ite c!531337 (reg!10018 lt!1062541) (ite c!531338 (regTwo!19891 lt!1062541) (regOne!19890 lt!1062541)))))))

(declare-fun b!3158797 () Bool)

(assert (=> b!3158797 (= e!1967990 call!228680)))

(declare-fun bm!228676 () Bool)

(assert (=> bm!228676 (= call!228679 call!228680)))

(assert (= (and d!868198 (not res!1286583)) b!3158789))

(assert (= (and b!3158789 c!531337) b!3158794))

(assert (= (and b!3158789 (not c!531337)) b!3158791))

(assert (= (and b!3158794 res!1286584) b!3158797))

(assert (= (and b!3158791 c!531338) b!3158795))

(assert (= (and b!3158791 (not c!531338)) b!3158792))

(assert (= (and b!3158795 res!1286586) b!3158796))

(assert (= (and b!3158792 (not res!1286582)) b!3158793))

(assert (= (and b!3158793 res!1286585) b!3158790))

(assert (= (or b!3158796 b!3158793) bm!228676))

(assert (= (or b!3158795 b!3158790) bm!228674))

(assert (= (or b!3158797 bm!228676) bm!228675))

(declare-fun m!3424869 () Bool)

(assert (=> b!3158794 m!3424869))

(declare-fun m!3424871 () Bool)

(assert (=> bm!228674 m!3424871))

(declare-fun m!3424873 () Bool)

(assert (=> bm!228675 m!3424873))

(assert (=> d!868162 d!868198))

(declare-fun d!868200 () Bool)

(declare-fun res!1286588 () Bool)

(declare-fun e!1968000 () Bool)

(assert (=> d!868200 (=> res!1286588 e!1968000)))

(assert (=> d!868200 (= res!1286588 ((_ is ElementMatch!9689) (regOne!19890 r!17345)))))

(assert (=> d!868200 (= (validRegex!4422 (regOne!19890 r!17345)) e!1968000)))

(declare-fun b!3158798 () Bool)

(declare-fun e!1967995 () Bool)

(assert (=> b!3158798 (= e!1968000 e!1967995)))

(declare-fun c!531339 () Bool)

(assert (=> b!3158798 (= c!531339 ((_ is Star!9689) (regOne!19890 r!17345)))))

(declare-fun b!3158799 () Bool)

(declare-fun e!1968001 () Bool)

(declare-fun call!228684 () Bool)

(assert (=> b!3158799 (= e!1968001 call!228684)))

(declare-fun b!3158800 () Bool)

(declare-fun e!1967996 () Bool)

(assert (=> b!3158800 (= e!1967995 e!1967996)))

(declare-fun c!531340 () Bool)

(assert (=> b!3158800 (= c!531340 ((_ is Union!9689) (regOne!19890 r!17345)))))

(declare-fun b!3158801 () Bool)

(declare-fun res!1286587 () Bool)

(declare-fun e!1967998 () Bool)

(assert (=> b!3158801 (=> res!1286587 e!1967998)))

(assert (=> b!3158801 (= res!1286587 (not ((_ is Concat!15010) (regOne!19890 r!17345))))))

(assert (=> b!3158801 (= e!1967996 e!1967998)))

(declare-fun b!3158802 () Bool)

(assert (=> b!3158802 (= e!1967998 e!1968001)))

(declare-fun res!1286590 () Bool)

(assert (=> b!3158802 (=> (not res!1286590) (not e!1968001))))

(declare-fun call!228682 () Bool)

(assert (=> b!3158802 (= res!1286590 call!228682)))

(declare-fun b!3158803 () Bool)

(declare-fun e!1967997 () Bool)

(assert (=> b!3158803 (= e!1967995 e!1967997)))

(declare-fun res!1286589 () Bool)

(assert (=> b!3158803 (= res!1286589 (not (nullable!3323 (reg!10018 (regOne!19890 r!17345)))))))

(assert (=> b!3158803 (=> (not res!1286589) (not e!1967997))))

(declare-fun b!3158804 () Bool)

(declare-fun res!1286591 () Bool)

(declare-fun e!1967999 () Bool)

(assert (=> b!3158804 (=> (not res!1286591) (not e!1967999))))

(assert (=> b!3158804 (= res!1286591 call!228684)))

(assert (=> b!3158804 (= e!1967996 e!1967999)))

(declare-fun bm!228677 () Bool)

(assert (=> bm!228677 (= call!228684 (validRegex!4422 (ite c!531340 (regOne!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345)))))))

(declare-fun b!3158805 () Bool)

(assert (=> b!3158805 (= e!1967999 call!228682)))

(declare-fun bm!228678 () Bool)

(declare-fun call!228683 () Bool)

(assert (=> bm!228678 (= call!228683 (validRegex!4422 (ite c!531339 (reg!10018 (regOne!19890 r!17345)) (ite c!531340 (regTwo!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345))))))))

(declare-fun b!3158806 () Bool)

(assert (=> b!3158806 (= e!1967997 call!228683)))

(declare-fun bm!228679 () Bool)

(assert (=> bm!228679 (= call!228682 call!228683)))

(assert (= (and d!868200 (not res!1286588)) b!3158798))

(assert (= (and b!3158798 c!531339) b!3158803))

(assert (= (and b!3158798 (not c!531339)) b!3158800))

(assert (= (and b!3158803 res!1286589) b!3158806))

(assert (= (and b!3158800 c!531340) b!3158804))

(assert (= (and b!3158800 (not c!531340)) b!3158801))

(assert (= (and b!3158804 res!1286591) b!3158805))

(assert (= (and b!3158801 (not res!1286587)) b!3158802))

(assert (= (and b!3158802 res!1286590) b!3158799))

(assert (= (or b!3158805 b!3158802) bm!228679))

(assert (= (or b!3158804 b!3158799) bm!228677))

(assert (= (or b!3158806 bm!228679) bm!228678))

(declare-fun m!3424875 () Bool)

(assert (=> b!3158803 m!3424875))

(declare-fun m!3424877 () Bool)

(assert (=> bm!228677 m!3424877))

(declare-fun m!3424879 () Bool)

(assert (=> bm!228678 m!3424879))

(assert (=> d!868162 d!868200))

(declare-fun d!868202 () Bool)

(declare-fun res!1286593 () Bool)

(declare-fun e!1968007 () Bool)

(assert (=> d!868202 (=> res!1286593 e!1968007)))

(assert (=> d!868202 (= res!1286593 ((_ is ElementMatch!9689) (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))))))

(assert (=> d!868202 (= (validRegex!4422 (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))) e!1968007)))

(declare-fun b!3158807 () Bool)

(declare-fun e!1968002 () Bool)

(assert (=> b!3158807 (= e!1968007 e!1968002)))

(declare-fun c!531341 () Bool)

(assert (=> b!3158807 (= c!531341 ((_ is Star!9689) (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))))))

(declare-fun b!3158808 () Bool)

(declare-fun e!1968008 () Bool)

(declare-fun call!228687 () Bool)

(assert (=> b!3158808 (= e!1968008 call!228687)))

(declare-fun b!3158809 () Bool)

(declare-fun e!1968003 () Bool)

(assert (=> b!3158809 (= e!1968002 e!1968003)))

(declare-fun c!531342 () Bool)

(assert (=> b!3158809 (= c!531342 ((_ is Union!9689) (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))))))

(declare-fun b!3158810 () Bool)

(declare-fun res!1286592 () Bool)

(declare-fun e!1968005 () Bool)

(assert (=> b!3158810 (=> res!1286592 e!1968005)))

(assert (=> b!3158810 (= res!1286592 (not ((_ is Concat!15010) (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500)))))))

(assert (=> b!3158810 (= e!1968003 e!1968005)))

(declare-fun b!3158811 () Bool)

(assert (=> b!3158811 (= e!1968005 e!1968008)))

(declare-fun res!1286595 () Bool)

(assert (=> b!3158811 (=> (not res!1286595) (not e!1968008))))

(declare-fun call!228685 () Bool)

(assert (=> b!3158811 (= res!1286595 call!228685)))

(declare-fun b!3158812 () Bool)

(declare-fun e!1968004 () Bool)

(assert (=> b!3158812 (= e!1968002 e!1968004)))

(declare-fun res!1286594 () Bool)

(assert (=> b!3158812 (= res!1286594 (not (nullable!3323 (reg!10018 (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))))))))

(assert (=> b!3158812 (=> (not res!1286594) (not e!1968004))))

(declare-fun b!3158813 () Bool)

(declare-fun res!1286596 () Bool)

(declare-fun e!1968006 () Bool)

(assert (=> b!3158813 (=> (not res!1286596) (not e!1968006))))

(assert (=> b!3158813 (= res!1286596 call!228687)))

(assert (=> b!3158813 (= e!1968003 e!1968006)))

(declare-fun bm!228680 () Bool)

(assert (=> bm!228680 (= call!228687 (validRegex!4422 (ite c!531342 (regOne!19891 (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))) (regTwo!19890 (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))))))))

(declare-fun b!3158814 () Bool)

(assert (=> b!3158814 (= e!1968006 call!228685)))

(declare-fun bm!228681 () Bool)

(declare-fun call!228686 () Bool)

(assert (=> bm!228681 (= call!228686 (validRegex!4422 (ite c!531341 (reg!10018 (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))) (ite c!531342 (regTwo!19891 (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500))) (regOne!19890 (ite c!531325 (regOne!19891 lt!1062500) (regTwo!19890 lt!1062500)))))))))

(declare-fun b!3158815 () Bool)

(assert (=> b!3158815 (= e!1968004 call!228686)))

(declare-fun bm!228682 () Bool)

(assert (=> bm!228682 (= call!228685 call!228686)))

(assert (= (and d!868202 (not res!1286593)) b!3158807))

(assert (= (and b!3158807 c!531341) b!3158812))

(assert (= (and b!3158807 (not c!531341)) b!3158809))

(assert (= (and b!3158812 res!1286594) b!3158815))

(assert (= (and b!3158809 c!531342) b!3158813))

(assert (= (and b!3158809 (not c!531342)) b!3158810))

(assert (= (and b!3158813 res!1286596) b!3158814))

(assert (= (and b!3158810 (not res!1286592)) b!3158811))

(assert (= (and b!3158811 res!1286595) b!3158808))

(assert (= (or b!3158814 b!3158811) bm!228682))

(assert (= (or b!3158813 b!3158808) bm!228680))

(assert (= (or b!3158815 bm!228682) bm!228681))

(declare-fun m!3424881 () Bool)

(assert (=> b!3158812 m!3424881))

(declare-fun m!3424883 () Bool)

(assert (=> bm!228680 m!3424883))

(declare-fun m!3424885 () Bool)

(assert (=> bm!228681 m!3424885))

(assert (=> bm!228653 d!868202))

(declare-fun b!3158816 () Bool)

(declare-fun e!1968020 () Regex!9689)

(assert (=> b!3158816 (= e!1968020 EmptyLang!9689)))

(declare-fun c!531343 () Bool)

(declare-fun call!228691 () Regex!9689)

(declare-fun bm!228683 () Bool)

(assert (=> bm!228683 (= call!228691 (simplify!626 (ite c!531343 (regOne!19891 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))) (regOne!19890 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))))))))

(declare-fun b!3158817 () Bool)

(declare-fun c!531348 () Bool)

(declare-fun e!1968019 () Bool)

(assert (=> b!3158817 (= c!531348 e!1968019)))

(declare-fun res!1286597 () Bool)

(assert (=> b!3158817 (=> res!1286597 e!1968019)))

(declare-fun call!228692 () Bool)

(assert (=> b!3158817 (= res!1286597 call!228692)))

(declare-fun lt!1062551 () Regex!9689)

(declare-fun call!228693 () Regex!9689)

(assert (=> b!3158817 (= lt!1062551 call!228693)))

(declare-fun e!1968014 () Regex!9689)

(declare-fun e!1968015 () Regex!9689)

(assert (=> b!3158817 (= e!1968014 e!1968015)))

(declare-fun b!3158818 () Bool)

(declare-fun lt!1062553 () Regex!9689)

(declare-fun e!1968009 () Bool)

(assert (=> b!3158818 (= e!1968009 (= (nullable!3323 lt!1062553) (nullable!3323 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345))))))))

(declare-fun b!3158819 () Bool)

(declare-fun e!1968022 () Regex!9689)

(assert (=> b!3158819 (= e!1968022 EmptyExpr!9689)))

(declare-fun b!3158820 () Bool)

(declare-fun e!1968013 () Regex!9689)

(assert (=> b!3158820 (= e!1968013 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345))))))

(declare-fun bm!228684 () Bool)

(declare-fun call!228689 () Regex!9689)

(assert (=> bm!228684 (= call!228689 call!228693)))

(declare-fun b!3158821 () Bool)

(declare-fun c!531352 () Bool)

(declare-fun call!228690 () Bool)

(assert (=> b!3158821 (= c!531352 call!228690)))

(declare-fun e!1968021 () Regex!9689)

(declare-fun e!1968010 () Regex!9689)

(assert (=> b!3158821 (= e!1968021 e!1968010)))

(declare-fun b!3158822 () Bool)

(declare-fun lt!1062554 () Regex!9689)

(assert (=> b!3158822 (= e!1968010 lt!1062554)))

(declare-fun b!3158823 () Bool)

(declare-fun e!1968018 () Bool)

(assert (=> b!3158823 (= e!1968018 call!228690)))

(declare-fun b!3158824 () Bool)

(declare-fun e!1968012 () Regex!9689)

(declare-fun lt!1062552 () Regex!9689)

(assert (=> b!3158824 (= e!1968012 lt!1062552)))

(declare-fun b!3158825 () Bool)

(declare-fun c!531351 () Bool)

(declare-fun call!228694 () Bool)

(assert (=> b!3158825 (= c!531351 call!228694)))

(declare-fun e!1968016 () Regex!9689)

(assert (=> b!3158825 (= e!1968016 e!1968012)))

(declare-fun bm!228686 () Bool)

(declare-fun c!531346 () Bool)

(declare-fun lt!1062555 () Regex!9689)

(assert (=> bm!228686 (= call!228694 (isEmptyExpr!716 (ite c!531346 lt!1062551 lt!1062555)))))

(declare-fun b!3158826 () Bool)

(assert (=> b!3158826 (= e!1968015 EmptyExpr!9689)))

(declare-fun b!3158827 () Bool)

(assert (=> b!3158827 (= e!1968022 e!1968014)))

(assert (=> b!3158827 (= c!531346 ((_ is Star!9689) (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))))))

(declare-fun b!3158828 () Bool)

(assert (=> b!3158828 (= e!1968020 e!1968013)))

(declare-fun c!531345 () Bool)

(assert (=> b!3158828 (= c!531345 ((_ is ElementMatch!9689) (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))))))

(declare-fun b!3158829 () Bool)

(declare-fun lt!1062556 () Regex!9689)

(assert (=> b!3158829 (= e!1968010 (Union!9689 lt!1062554 lt!1062556))))

(declare-fun b!3158830 () Bool)

(declare-fun e!1968011 () Regex!9689)

(assert (=> b!3158830 (= e!1968011 e!1968016)))

(assert (=> b!3158830 (= lt!1062555 call!228691)))

(assert (=> b!3158830 (= lt!1062552 call!228689)))

(declare-fun res!1286599 () Bool)

(declare-fun call!228688 () Bool)

(assert (=> b!3158830 (= res!1286599 call!228688)))

(assert (=> b!3158830 (=> res!1286599 e!1968018)))

(declare-fun c!531353 () Bool)

(assert (=> b!3158830 (= c!531353 e!1968018)))

(declare-fun bm!228687 () Bool)

(assert (=> bm!228687 (= call!228690 call!228692)))

(declare-fun b!3158831 () Bool)

(assert (=> b!3158831 (= e!1968021 lt!1062556)))

(declare-fun bm!228688 () Bool)

(assert (=> bm!228688 (= call!228688 (isEmptyLang!722 (ite c!531343 lt!1062554 lt!1062555)))))

(declare-fun b!3158832 () Bool)

(assert (=> b!3158832 (= c!531343 ((_ is Union!9689) (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))))))

(assert (=> b!3158832 (= e!1968014 e!1968011)))

(declare-fun b!3158833 () Bool)

(declare-fun e!1968017 () Regex!9689)

(assert (=> b!3158833 (= e!1968017 lt!1062555)))

(declare-fun b!3158834 () Bool)

(assert (=> b!3158834 (= e!1968012 e!1968017)))

(declare-fun c!531349 () Bool)

(assert (=> b!3158834 (= c!531349 (isEmptyExpr!716 lt!1062552))))

(declare-fun b!3158835 () Bool)

(assert (=> b!3158835 (= e!1968017 (Concat!15010 lt!1062555 lt!1062552))))

(declare-fun b!3158836 () Bool)

(assert (=> b!3158836 (= e!1968019 call!228694)))

(declare-fun bm!228689 () Bool)

(assert (=> bm!228689 (= call!228693 (simplify!626 (ite c!531346 (reg!10018 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))) (ite c!531343 (regTwo!19891 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))) (regTwo!19890 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345))))))))))

(declare-fun b!3158837 () Bool)

(declare-fun c!531350 () Bool)

(assert (=> b!3158837 (= c!531350 ((_ is EmptyExpr!9689) (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))))))

(assert (=> b!3158837 (= e!1968013 e!1968022)))

(declare-fun b!3158838 () Bool)

(assert (=> b!3158838 (= e!1968016 EmptyLang!9689)))

(declare-fun bm!228685 () Bool)

(assert (=> bm!228685 (= call!228692 (isEmptyLang!722 (ite c!531346 lt!1062551 (ite c!531343 lt!1062556 lt!1062552))))))

(declare-fun d!868204 () Bool)

(assert (=> d!868204 e!1968009))

(declare-fun res!1286598 () Bool)

(assert (=> d!868204 (=> (not res!1286598) (not e!1968009))))

(assert (=> d!868204 (= res!1286598 (validRegex!4422 lt!1062553))))

(assert (=> d!868204 (= lt!1062553 e!1968020)))

(declare-fun c!531344 () Bool)

(assert (=> d!868204 (= c!531344 ((_ is EmptyLang!9689) (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))))))

(assert (=> d!868204 (validRegex!4422 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345))))))

(assert (=> d!868204 (= (simplify!626 (ite c!531292 (regOne!19891 (regOne!19890 r!17345)) (regOne!19890 (regOne!19890 r!17345)))) lt!1062553)))

(declare-fun b!3158839 () Bool)

(assert (=> b!3158839 (= e!1968015 (Star!9689 lt!1062551))))

(declare-fun b!3158840 () Bool)

(assert (=> b!3158840 (= e!1968011 e!1968021)))

(assert (=> b!3158840 (= lt!1062554 call!228691)))

(assert (=> b!3158840 (= lt!1062556 call!228689)))

(declare-fun c!531347 () Bool)

(assert (=> b!3158840 (= c!531347 call!228688)))

(assert (= (and d!868204 c!531344) b!3158816))

(assert (= (and d!868204 (not c!531344)) b!3158828))

(assert (= (and b!3158828 c!531345) b!3158820))

(assert (= (and b!3158828 (not c!531345)) b!3158837))

(assert (= (and b!3158837 c!531350) b!3158819))

(assert (= (and b!3158837 (not c!531350)) b!3158827))

(assert (= (and b!3158827 c!531346) b!3158817))

(assert (= (and b!3158827 (not c!531346)) b!3158832))

(assert (= (and b!3158817 (not res!1286597)) b!3158836))

(assert (= (and b!3158817 c!531348) b!3158826))

(assert (= (and b!3158817 (not c!531348)) b!3158839))

(assert (= (and b!3158832 c!531343) b!3158840))

(assert (= (and b!3158832 (not c!531343)) b!3158830))

(assert (= (and b!3158840 c!531347) b!3158831))

(assert (= (and b!3158840 (not c!531347)) b!3158821))

(assert (= (and b!3158821 c!531352) b!3158822))

(assert (= (and b!3158821 (not c!531352)) b!3158829))

(assert (= (and b!3158830 (not res!1286599)) b!3158823))

(assert (= (and b!3158830 c!531353) b!3158838))

(assert (= (and b!3158830 (not c!531353)) b!3158825))

(assert (= (and b!3158825 c!531351) b!3158824))

(assert (= (and b!3158825 (not c!531351)) b!3158834))

(assert (= (and b!3158834 c!531349) b!3158833))

(assert (= (and b!3158834 (not c!531349)) b!3158835))

(assert (= (or b!3158840 b!3158830) bm!228688))

(assert (= (or b!3158821 b!3158823) bm!228687))

(assert (= (or b!3158840 b!3158830) bm!228683))

(assert (= (or b!3158840 b!3158830) bm!228684))

(assert (= (or b!3158836 b!3158825) bm!228686))

(assert (= (or b!3158817 bm!228687) bm!228685))

(assert (= (or b!3158817 bm!228684) bm!228689))

(assert (= (and d!868204 res!1286598) b!3158818))

(declare-fun m!3424887 () Bool)

(assert (=> bm!228683 m!3424887))

(declare-fun m!3424889 () Bool)

(assert (=> bm!228686 m!3424889))

(declare-fun m!3424891 () Bool)

(assert (=> b!3158834 m!3424891))

(declare-fun m!3424893 () Bool)

(assert (=> d!868204 m!3424893))

(declare-fun m!3424895 () Bool)

(assert (=> d!868204 m!3424895))

(declare-fun m!3424897 () Bool)

(assert (=> bm!228688 m!3424897))

(declare-fun m!3424899 () Bool)

(assert (=> b!3158818 m!3424899))

(declare-fun m!3424901 () Bool)

(assert (=> b!3158818 m!3424901))

(declare-fun m!3424903 () Bool)

(assert (=> bm!228685 m!3424903))

(declare-fun m!3424905 () Bool)

(assert (=> bm!228689 m!3424905))

(assert (=> bm!228624 d!868204))

(declare-fun d!868206 () Bool)

(assert (=> d!868206 (= (nullable!3323 (reg!10018 lt!1062500)) (nullableFct!940 (reg!10018 lt!1062500)))))

(declare-fun bs!539374 () Bool)

(assert (= bs!539374 d!868206))

(declare-fun m!3424907 () Bool)

(assert (=> bs!539374 m!3424907))

(assert (=> b!3158668 d!868206))

(declare-fun d!868208 () Bool)

(assert (=> d!868208 (= (isEmptyLang!722 (ite c!531292 lt!1062542 lt!1062543)) ((_ is EmptyLang!9689) (ite c!531292 lt!1062542 lt!1062543)))))

(assert (=> bm!228629 d!868208))

(declare-fun d!868210 () Bool)

(declare-fun res!1286601 () Bool)

(declare-fun e!1968028 () Bool)

(assert (=> d!868210 (=> res!1286601 e!1968028)))

(assert (=> d!868210 (= res!1286601 ((_ is ElementMatch!9689) (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))))))

(assert (=> d!868210 (= (validRegex!4422 (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))) e!1968028)))

(declare-fun b!3158841 () Bool)

(declare-fun e!1968023 () Bool)

(assert (=> b!3158841 (= e!1968028 e!1968023)))

(declare-fun c!531354 () Bool)

(assert (=> b!3158841 (= c!531354 ((_ is Star!9689) (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))))))

(declare-fun b!3158842 () Bool)

(declare-fun e!1968029 () Bool)

(declare-fun call!228697 () Bool)

(assert (=> b!3158842 (= e!1968029 call!228697)))

(declare-fun b!3158843 () Bool)

(declare-fun e!1968024 () Bool)

(assert (=> b!3158843 (= e!1968023 e!1968024)))

(declare-fun c!531355 () Bool)

(assert (=> b!3158843 (= c!531355 ((_ is Union!9689) (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))))))

(declare-fun b!3158844 () Bool)

(declare-fun res!1286600 () Bool)

(declare-fun e!1968026 () Bool)

(assert (=> b!3158844 (=> res!1286600 e!1968026)))

(assert (=> b!3158844 (= res!1286600 (not ((_ is Concat!15010) (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500))))))))

(assert (=> b!3158844 (= e!1968024 e!1968026)))

(declare-fun b!3158845 () Bool)

(assert (=> b!3158845 (= e!1968026 e!1968029)))

(declare-fun res!1286603 () Bool)

(assert (=> b!3158845 (=> (not res!1286603) (not e!1968029))))

(declare-fun call!228695 () Bool)

(assert (=> b!3158845 (= res!1286603 call!228695)))

(declare-fun b!3158846 () Bool)

(declare-fun e!1968025 () Bool)

(assert (=> b!3158846 (= e!1968023 e!1968025)))

(declare-fun res!1286602 () Bool)

(assert (=> b!3158846 (= res!1286602 (not (nullable!3323 (reg!10018 (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))))))))

(assert (=> b!3158846 (=> (not res!1286602) (not e!1968025))))

(declare-fun b!3158847 () Bool)

(declare-fun res!1286604 () Bool)

(declare-fun e!1968027 () Bool)

(assert (=> b!3158847 (=> (not res!1286604) (not e!1968027))))

(assert (=> b!3158847 (= res!1286604 call!228697)))

(assert (=> b!3158847 (= e!1968024 e!1968027)))

(declare-fun bm!228690 () Bool)

(assert (=> bm!228690 (= call!228697 (validRegex!4422 (ite c!531355 (regOne!19891 (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))) (regTwo!19890 (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))))))))

(declare-fun b!3158848 () Bool)

(assert (=> b!3158848 (= e!1968027 call!228695)))

(declare-fun bm!228691 () Bool)

(declare-fun call!228696 () Bool)

(assert (=> bm!228691 (= call!228696 (validRegex!4422 (ite c!531354 (reg!10018 (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))) (ite c!531355 (regTwo!19891 (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500)))) (regOne!19890 (ite c!531324 (reg!10018 lt!1062500) (ite c!531325 (regTwo!19891 lt!1062500) (regOne!19890 lt!1062500))))))))))

(declare-fun b!3158849 () Bool)

(assert (=> b!3158849 (= e!1968025 call!228696)))

(declare-fun bm!228692 () Bool)

(assert (=> bm!228692 (= call!228695 call!228696)))

(assert (= (and d!868210 (not res!1286601)) b!3158841))

(assert (= (and b!3158841 c!531354) b!3158846))

(assert (= (and b!3158841 (not c!531354)) b!3158843))

(assert (= (and b!3158846 res!1286602) b!3158849))

(assert (= (and b!3158843 c!531355) b!3158847))

(assert (= (and b!3158843 (not c!531355)) b!3158844))

(assert (= (and b!3158847 res!1286604) b!3158848))

(assert (= (and b!3158844 (not res!1286600)) b!3158845))

(assert (= (and b!3158845 res!1286603) b!3158842))

(assert (= (or b!3158848 b!3158845) bm!228692))

(assert (= (or b!3158847 b!3158842) bm!228690))

(assert (= (or b!3158849 bm!228692) bm!228691))

(declare-fun m!3424909 () Bool)

(assert (=> b!3158846 m!3424909))

(declare-fun m!3424911 () Bool)

(assert (=> bm!228690 m!3424911))

(declare-fun m!3424913 () Bool)

(assert (=> bm!228691 m!3424913))

(assert (=> bm!228654 d!868210))

(declare-fun d!868212 () Bool)

(assert (=> d!868212 (= (nullable!3323 lt!1062541) (nullableFct!940 lt!1062541))))

(declare-fun bs!539375 () Bool)

(assert (= bs!539375 d!868212))

(declare-fun m!3424915 () Bool)

(assert (=> bs!539375 m!3424915))

(assert (=> b!3158570 d!868212))

(declare-fun d!868214 () Bool)

(assert (=> d!868214 (= (nullable!3323 (regOne!19890 r!17345)) (nullableFct!940 (regOne!19890 r!17345)))))

(declare-fun bs!539376 () Bool)

(assert (= bs!539376 d!868214))

(declare-fun m!3424917 () Bool)

(assert (=> bs!539376 m!3424917))

(assert (=> b!3158570 d!868214))

(declare-fun b!3158850 () Bool)

(declare-fun e!1968041 () Regex!9689)

(assert (=> b!3158850 (= e!1968041 EmptyLang!9689)))

(declare-fun call!228701 () Regex!9689)

(declare-fun c!531356 () Bool)

(declare-fun bm!228693 () Bool)

(assert (=> bm!228693 (= call!228701 (simplify!626 (ite c!531356 (regOne!19891 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))) (regOne!19890 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))))))))

(declare-fun b!3158851 () Bool)

(declare-fun c!531361 () Bool)

(declare-fun e!1968040 () Bool)

(assert (=> b!3158851 (= c!531361 e!1968040)))

(declare-fun res!1286605 () Bool)

(assert (=> b!3158851 (=> res!1286605 e!1968040)))

(declare-fun call!228702 () Bool)

(assert (=> b!3158851 (= res!1286605 call!228702)))

(declare-fun lt!1062557 () Regex!9689)

(declare-fun call!228703 () Regex!9689)

(assert (=> b!3158851 (= lt!1062557 call!228703)))

(declare-fun e!1968035 () Regex!9689)

(declare-fun e!1968036 () Regex!9689)

(assert (=> b!3158851 (= e!1968035 e!1968036)))

(declare-fun e!1968030 () Bool)

(declare-fun lt!1062559 () Regex!9689)

(declare-fun b!3158852 () Bool)

(assert (=> b!3158852 (= e!1968030 (= (nullable!3323 lt!1062559) (nullable!3323 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345))))))))

(declare-fun b!3158853 () Bool)

(declare-fun e!1968043 () Regex!9689)

(assert (=> b!3158853 (= e!1968043 EmptyExpr!9689)))

(declare-fun b!3158854 () Bool)

(declare-fun e!1968034 () Regex!9689)

(assert (=> b!3158854 (= e!1968034 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345))))))

(declare-fun bm!228694 () Bool)

(declare-fun call!228699 () Regex!9689)

(assert (=> bm!228694 (= call!228699 call!228703)))

(declare-fun b!3158855 () Bool)

(declare-fun c!531365 () Bool)

(declare-fun call!228700 () Bool)

(assert (=> b!3158855 (= c!531365 call!228700)))

(declare-fun e!1968042 () Regex!9689)

(declare-fun e!1968031 () Regex!9689)

(assert (=> b!3158855 (= e!1968042 e!1968031)))

(declare-fun b!3158856 () Bool)

(declare-fun lt!1062560 () Regex!9689)

(assert (=> b!3158856 (= e!1968031 lt!1062560)))

(declare-fun b!3158857 () Bool)

(declare-fun e!1968039 () Bool)

(assert (=> b!3158857 (= e!1968039 call!228700)))

(declare-fun b!3158858 () Bool)

(declare-fun e!1968033 () Regex!9689)

(declare-fun lt!1062558 () Regex!9689)

(assert (=> b!3158858 (= e!1968033 lt!1062558)))

(declare-fun b!3158859 () Bool)

(declare-fun c!531364 () Bool)

(declare-fun call!228704 () Bool)

(assert (=> b!3158859 (= c!531364 call!228704)))

(declare-fun e!1968037 () Regex!9689)

(assert (=> b!3158859 (= e!1968037 e!1968033)))

(declare-fun c!531359 () Bool)

(declare-fun bm!228696 () Bool)

(declare-fun lt!1062561 () Regex!9689)

(assert (=> bm!228696 (= call!228704 (isEmptyExpr!716 (ite c!531359 lt!1062557 lt!1062561)))))

(declare-fun b!3158860 () Bool)

(assert (=> b!3158860 (= e!1968036 EmptyExpr!9689)))

(declare-fun b!3158861 () Bool)

(assert (=> b!3158861 (= e!1968043 e!1968035)))

(assert (=> b!3158861 (= c!531359 ((_ is Star!9689) (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))))))

(declare-fun b!3158862 () Bool)

(assert (=> b!3158862 (= e!1968041 e!1968034)))

(declare-fun c!531358 () Bool)

(assert (=> b!3158862 (= c!531358 ((_ is ElementMatch!9689) (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))))))

(declare-fun b!3158863 () Bool)

(declare-fun lt!1062562 () Regex!9689)

(assert (=> b!3158863 (= e!1968031 (Union!9689 lt!1062560 lt!1062562))))

(declare-fun b!3158864 () Bool)

(declare-fun e!1968032 () Regex!9689)

(assert (=> b!3158864 (= e!1968032 e!1968037)))

(assert (=> b!3158864 (= lt!1062561 call!228701)))

(assert (=> b!3158864 (= lt!1062558 call!228699)))

(declare-fun res!1286607 () Bool)

(declare-fun call!228698 () Bool)

(assert (=> b!3158864 (= res!1286607 call!228698)))

(assert (=> b!3158864 (=> res!1286607 e!1968039)))

(declare-fun c!531366 () Bool)

(assert (=> b!3158864 (= c!531366 e!1968039)))

(declare-fun bm!228697 () Bool)

(assert (=> bm!228697 (= call!228700 call!228702)))

(declare-fun b!3158865 () Bool)

(assert (=> b!3158865 (= e!1968042 lt!1062562)))

(declare-fun bm!228698 () Bool)

(assert (=> bm!228698 (= call!228698 (isEmptyLang!722 (ite c!531356 lt!1062560 lt!1062561)))))

(declare-fun b!3158866 () Bool)

(assert (=> b!3158866 (= c!531356 ((_ is Union!9689) (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))))))

(assert (=> b!3158866 (= e!1968035 e!1968032)))

(declare-fun b!3158867 () Bool)

(declare-fun e!1968038 () Regex!9689)

(assert (=> b!3158867 (= e!1968038 lt!1062561)))

(declare-fun b!3158868 () Bool)

(assert (=> b!3158868 (= e!1968033 e!1968038)))

(declare-fun c!531362 () Bool)

(assert (=> b!3158868 (= c!531362 (isEmptyExpr!716 lt!1062558))))

(declare-fun b!3158869 () Bool)

(assert (=> b!3158869 (= e!1968038 (Concat!15010 lt!1062561 lt!1062558))))

(declare-fun b!3158870 () Bool)

(assert (=> b!3158870 (= e!1968040 call!228704)))

(declare-fun bm!228699 () Bool)

(assert (=> bm!228699 (= call!228703 (simplify!626 (ite c!531359 (reg!10018 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))) (ite c!531356 (regTwo!19891 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))) (regTwo!19890 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345))))))))))

(declare-fun b!3158871 () Bool)

(declare-fun c!531363 () Bool)

(assert (=> b!3158871 (= c!531363 ((_ is EmptyExpr!9689) (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))))))

(assert (=> b!3158871 (= e!1968034 e!1968043)))

(declare-fun b!3158872 () Bool)

(assert (=> b!3158872 (= e!1968037 EmptyLang!9689)))

(declare-fun bm!228695 () Bool)

(assert (=> bm!228695 (= call!228702 (isEmptyLang!722 (ite c!531359 lt!1062557 (ite c!531356 lt!1062562 lt!1062558))))))

(declare-fun d!868216 () Bool)

(assert (=> d!868216 e!1968030))

(declare-fun res!1286606 () Bool)

(assert (=> d!868216 (=> (not res!1286606) (not e!1968030))))

(assert (=> d!868216 (= res!1286606 (validRegex!4422 lt!1062559))))

(assert (=> d!868216 (= lt!1062559 e!1968041)))

(declare-fun c!531357 () Bool)

(assert (=> d!868216 (= c!531357 ((_ is EmptyLang!9689) (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))))))

(assert (=> d!868216 (validRegex!4422 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345))))))

(assert (=> d!868216 (= (simplify!626 (ite c!531270 (regOne!19891 (regTwo!19890 r!17345)) (regOne!19890 (regTwo!19890 r!17345)))) lt!1062559)))

(declare-fun b!3158873 () Bool)

(assert (=> b!3158873 (= e!1968036 (Star!9689 lt!1062557))))

(declare-fun b!3158874 () Bool)

(assert (=> b!3158874 (= e!1968032 e!1968042)))

(assert (=> b!3158874 (= lt!1062560 call!228701)))

(assert (=> b!3158874 (= lt!1062562 call!228699)))

(declare-fun c!531360 () Bool)

(assert (=> b!3158874 (= c!531360 call!228698)))

(assert (= (and d!868216 c!531357) b!3158850))

(assert (= (and d!868216 (not c!531357)) b!3158862))

(assert (= (and b!3158862 c!531358) b!3158854))

(assert (= (and b!3158862 (not c!531358)) b!3158871))

(assert (= (and b!3158871 c!531363) b!3158853))

(assert (= (and b!3158871 (not c!531363)) b!3158861))

(assert (= (and b!3158861 c!531359) b!3158851))

(assert (= (and b!3158861 (not c!531359)) b!3158866))

(assert (= (and b!3158851 (not res!1286605)) b!3158870))

(assert (= (and b!3158851 c!531361) b!3158860))

(assert (= (and b!3158851 (not c!531361)) b!3158873))

(assert (= (and b!3158866 c!531356) b!3158874))

(assert (= (and b!3158866 (not c!531356)) b!3158864))

(assert (= (and b!3158874 c!531360) b!3158865))

(assert (= (and b!3158874 (not c!531360)) b!3158855))

(assert (= (and b!3158855 c!531365) b!3158856))

(assert (= (and b!3158855 (not c!531365)) b!3158863))

(assert (= (and b!3158864 (not res!1286607)) b!3158857))

(assert (= (and b!3158864 c!531366) b!3158872))

(assert (= (and b!3158864 (not c!531366)) b!3158859))

(assert (= (and b!3158859 c!531364) b!3158858))

(assert (= (and b!3158859 (not c!531364)) b!3158868))

(assert (= (and b!3158868 c!531362) b!3158867))

(assert (= (and b!3158868 (not c!531362)) b!3158869))

(assert (= (or b!3158874 b!3158864) bm!228698))

(assert (= (or b!3158855 b!3158857) bm!228697))

(assert (= (or b!3158874 b!3158864) bm!228693))

(assert (= (or b!3158874 b!3158864) bm!228694))

(assert (= (or b!3158870 b!3158859) bm!228696))

(assert (= (or b!3158851 bm!228697) bm!228695))

(assert (= (or b!3158851 bm!228694) bm!228699))

(assert (= (and d!868216 res!1286606) b!3158852))

(declare-fun m!3424919 () Bool)

(assert (=> bm!228693 m!3424919))

(declare-fun m!3424921 () Bool)

(assert (=> bm!228696 m!3424921))

(declare-fun m!3424923 () Bool)

(assert (=> b!3158868 m!3424923))

(declare-fun m!3424925 () Bool)

(assert (=> d!868216 m!3424925))

(declare-fun m!3424927 () Bool)

(assert (=> d!868216 m!3424927))

(declare-fun m!3424929 () Bool)

(assert (=> bm!228698 m!3424929))

(declare-fun m!3424931 () Bool)

(assert (=> b!3158852 m!3424931))

(declare-fun m!3424933 () Bool)

(assert (=> b!3158852 m!3424933))

(declare-fun m!3424935 () Bool)

(assert (=> bm!228695 m!3424935))

(declare-fun m!3424937 () Bool)

(assert (=> bm!228699 m!3424937))

(assert (=> bm!228610 d!868216))

(declare-fun d!868218 () Bool)

(assert (=> d!868218 (= (isEmptyExpr!716 lt!1062540) ((_ is EmptyExpr!9689) lt!1062540))))

(assert (=> b!3158586 d!868218))

(declare-fun d!868220 () Bool)

(assert (=> d!868220 (= (isEmptyLang!722 (ite c!531270 lt!1062530 lt!1062531)) ((_ is EmptyLang!9689) (ite c!531270 lt!1062530 lt!1062531)))))

(assert (=> bm!228615 d!868220))

(declare-fun d!868222 () Bool)

(assert (=> d!868222 (= (nullable!3323 lt!1062529) (nullableFct!940 lt!1062529))))

(declare-fun bs!539377 () Bool)

(assert (= bs!539377 d!868222))

(declare-fun m!3424939 () Bool)

(assert (=> bs!539377 m!3424939))

(assert (=> b!3158520 d!868222))

(declare-fun d!868224 () Bool)

(assert (=> d!868224 (= (nullable!3323 (regTwo!19890 r!17345)) (nullableFct!940 (regTwo!19890 r!17345)))))

(declare-fun bs!539378 () Bool)

(assert (= bs!539378 d!868224))

(declare-fun m!3424941 () Bool)

(assert (=> bs!539378 m!3424941))

(assert (=> b!3158520 d!868224))

(declare-fun b!3158875 () Bool)

(declare-fun e!1968055 () Regex!9689)

(assert (=> b!3158875 (= e!1968055 EmptyLang!9689)))

(declare-fun call!228708 () Regex!9689)

(declare-fun bm!228700 () Bool)

(declare-fun c!531367 () Bool)

(assert (=> bm!228700 (= call!228708 (simplify!626 (ite c!531367 (regOne!19891 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))) (regOne!19890 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))))))))

(declare-fun b!3158876 () Bool)

(declare-fun c!531372 () Bool)

(declare-fun e!1968054 () Bool)

(assert (=> b!3158876 (= c!531372 e!1968054)))

(declare-fun res!1286608 () Bool)

(assert (=> b!3158876 (=> res!1286608 e!1968054)))

(declare-fun call!228709 () Bool)

(assert (=> b!3158876 (= res!1286608 call!228709)))

(declare-fun lt!1062563 () Regex!9689)

(declare-fun call!228710 () Regex!9689)

(assert (=> b!3158876 (= lt!1062563 call!228710)))

(declare-fun e!1968049 () Regex!9689)

(declare-fun e!1968050 () Regex!9689)

(assert (=> b!3158876 (= e!1968049 e!1968050)))

(declare-fun lt!1062565 () Regex!9689)

(declare-fun b!3158877 () Bool)

(declare-fun e!1968044 () Bool)

(assert (=> b!3158877 (= e!1968044 (= (nullable!3323 lt!1062565) (nullable!3323 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345)))))))))

(declare-fun b!3158878 () Bool)

(declare-fun e!1968057 () Regex!9689)

(assert (=> b!3158878 (= e!1968057 EmptyExpr!9689)))

(declare-fun b!3158879 () Bool)

(declare-fun e!1968048 () Regex!9689)

(assert (=> b!3158879 (= e!1968048 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345)))))))

(declare-fun bm!228701 () Bool)

(declare-fun call!228706 () Regex!9689)

(assert (=> bm!228701 (= call!228706 call!228710)))

(declare-fun b!3158880 () Bool)

(declare-fun c!531376 () Bool)

(declare-fun call!228707 () Bool)

(assert (=> b!3158880 (= c!531376 call!228707)))

(declare-fun e!1968056 () Regex!9689)

(declare-fun e!1968045 () Regex!9689)

(assert (=> b!3158880 (= e!1968056 e!1968045)))

(declare-fun b!3158881 () Bool)

(declare-fun lt!1062566 () Regex!9689)

(assert (=> b!3158881 (= e!1968045 lt!1062566)))

(declare-fun b!3158882 () Bool)

(declare-fun e!1968053 () Bool)

(assert (=> b!3158882 (= e!1968053 call!228707)))

(declare-fun b!3158883 () Bool)

(declare-fun e!1968047 () Regex!9689)

(declare-fun lt!1062564 () Regex!9689)

(assert (=> b!3158883 (= e!1968047 lt!1062564)))

(declare-fun b!3158884 () Bool)

(declare-fun c!531375 () Bool)

(declare-fun call!228711 () Bool)

(assert (=> b!3158884 (= c!531375 call!228711)))

(declare-fun e!1968051 () Regex!9689)

(assert (=> b!3158884 (= e!1968051 e!1968047)))

(declare-fun bm!228703 () Bool)

(declare-fun c!531370 () Bool)

(declare-fun lt!1062567 () Regex!9689)

(assert (=> bm!228703 (= call!228711 (isEmptyExpr!716 (ite c!531370 lt!1062563 lt!1062567)))))

(declare-fun b!3158885 () Bool)

(assert (=> b!3158885 (= e!1968050 EmptyExpr!9689)))

(declare-fun b!3158886 () Bool)

(assert (=> b!3158886 (= e!1968057 e!1968049)))

(assert (=> b!3158886 (= c!531370 ((_ is Star!9689) (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))))))

(declare-fun b!3158887 () Bool)

(assert (=> b!3158887 (= e!1968055 e!1968048)))

(declare-fun c!531369 () Bool)

(assert (=> b!3158887 (= c!531369 ((_ is ElementMatch!9689) (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))))))

(declare-fun b!3158888 () Bool)

(declare-fun lt!1062568 () Regex!9689)

(assert (=> b!3158888 (= e!1968045 (Union!9689 lt!1062566 lt!1062568))))

(declare-fun b!3158889 () Bool)

(declare-fun e!1968046 () Regex!9689)

(assert (=> b!3158889 (= e!1968046 e!1968051)))

(assert (=> b!3158889 (= lt!1062567 call!228708)))

(assert (=> b!3158889 (= lt!1062564 call!228706)))

(declare-fun res!1286610 () Bool)

(declare-fun call!228705 () Bool)

(assert (=> b!3158889 (= res!1286610 call!228705)))

(assert (=> b!3158889 (=> res!1286610 e!1968053)))

(declare-fun c!531377 () Bool)

(assert (=> b!3158889 (= c!531377 e!1968053)))

(declare-fun bm!228704 () Bool)

(assert (=> bm!228704 (= call!228707 call!228709)))

(declare-fun b!3158890 () Bool)

(assert (=> b!3158890 (= e!1968056 lt!1062568)))

(declare-fun bm!228705 () Bool)

(assert (=> bm!228705 (= call!228705 (isEmptyLang!722 (ite c!531367 lt!1062566 lt!1062567)))))

(declare-fun b!3158891 () Bool)

(assert (=> b!3158891 (= c!531367 ((_ is Union!9689) (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))))))

(assert (=> b!3158891 (= e!1968049 e!1968046)))

(declare-fun b!3158892 () Bool)

(declare-fun e!1968052 () Regex!9689)

(assert (=> b!3158892 (= e!1968052 lt!1062567)))

(declare-fun b!3158893 () Bool)

(assert (=> b!3158893 (= e!1968047 e!1968052)))

(declare-fun c!531373 () Bool)

(assert (=> b!3158893 (= c!531373 (isEmptyExpr!716 lt!1062564))))

(declare-fun b!3158894 () Bool)

(assert (=> b!3158894 (= e!1968052 (Concat!15010 lt!1062567 lt!1062564))))

(declare-fun b!3158895 () Bool)

(assert (=> b!3158895 (= e!1968054 call!228711)))

(declare-fun bm!228706 () Bool)

(assert (=> bm!228706 (= call!228710 (simplify!626 (ite c!531370 (reg!10018 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))) (ite c!531367 (regTwo!19891 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))) (regTwo!19890 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345)))))))))))

(declare-fun c!531374 () Bool)

(declare-fun b!3158896 () Bool)

(assert (=> b!3158896 (= c!531374 ((_ is EmptyExpr!9689) (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))))))

(assert (=> b!3158896 (= e!1968048 e!1968057)))

(declare-fun b!3158897 () Bool)

(assert (=> b!3158897 (= e!1968051 EmptyLang!9689)))

(declare-fun bm!228702 () Bool)

(assert (=> bm!228702 (= call!228709 (isEmptyLang!722 (ite c!531370 lt!1062563 (ite c!531367 lt!1062568 lt!1062564))))))

(declare-fun d!868226 () Bool)

(assert (=> d!868226 e!1968044))

(declare-fun res!1286609 () Bool)

(assert (=> d!868226 (=> (not res!1286609) (not e!1968044))))

(assert (=> d!868226 (= res!1286609 (validRegex!4422 lt!1062565))))

(assert (=> d!868226 (= lt!1062565 e!1968055)))

(declare-fun c!531368 () Bool)

(assert (=> d!868226 (= c!531368 ((_ is EmptyLang!9689) (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))))))

(assert (=> d!868226 (validRegex!4422 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345)))))))

(assert (=> d!868226 (= (simplify!626 (ite c!531295 (reg!10018 (regOne!19890 r!17345)) (ite c!531292 (regTwo!19891 (regOne!19890 r!17345)) (regTwo!19890 (regOne!19890 r!17345))))) lt!1062565)))

(declare-fun b!3158898 () Bool)

(assert (=> b!3158898 (= e!1968050 (Star!9689 lt!1062563))))

(declare-fun b!3158899 () Bool)

(assert (=> b!3158899 (= e!1968046 e!1968056)))

(assert (=> b!3158899 (= lt!1062566 call!228708)))

(assert (=> b!3158899 (= lt!1062568 call!228706)))

(declare-fun c!531371 () Bool)

(assert (=> b!3158899 (= c!531371 call!228705)))

(assert (= (and d!868226 c!531368) b!3158875))

(assert (= (and d!868226 (not c!531368)) b!3158887))

(assert (= (and b!3158887 c!531369) b!3158879))

(assert (= (and b!3158887 (not c!531369)) b!3158896))

(assert (= (and b!3158896 c!531374) b!3158878))

(assert (= (and b!3158896 (not c!531374)) b!3158886))

(assert (= (and b!3158886 c!531370) b!3158876))

(assert (= (and b!3158886 (not c!531370)) b!3158891))

(assert (= (and b!3158876 (not res!1286608)) b!3158895))

(assert (= (and b!3158876 c!531372) b!3158885))

(assert (= (and b!3158876 (not c!531372)) b!3158898))

(assert (= (and b!3158891 c!531367) b!3158899))

(assert (= (and b!3158891 (not c!531367)) b!3158889))

(assert (= (and b!3158899 c!531371) b!3158890))

(assert (= (and b!3158899 (not c!531371)) b!3158880))

(assert (= (and b!3158880 c!531376) b!3158881))

(assert (= (and b!3158880 (not c!531376)) b!3158888))

(assert (= (and b!3158889 (not res!1286610)) b!3158882))

(assert (= (and b!3158889 c!531377) b!3158897))

(assert (= (and b!3158889 (not c!531377)) b!3158884))

(assert (= (and b!3158884 c!531375) b!3158883))

(assert (= (and b!3158884 (not c!531375)) b!3158893))

(assert (= (and b!3158893 c!531373) b!3158892))

(assert (= (and b!3158893 (not c!531373)) b!3158894))

(assert (= (or b!3158899 b!3158889) bm!228705))

(assert (= (or b!3158880 b!3158882) bm!228704))

(assert (= (or b!3158899 b!3158889) bm!228700))

(assert (= (or b!3158899 b!3158889) bm!228701))

(assert (= (or b!3158895 b!3158884) bm!228703))

(assert (= (or b!3158876 bm!228704) bm!228702))

(assert (= (or b!3158876 bm!228701) bm!228706))

(assert (= (and d!868226 res!1286609) b!3158877))

(declare-fun m!3424943 () Bool)

(assert (=> bm!228700 m!3424943))

(declare-fun m!3424945 () Bool)

(assert (=> bm!228703 m!3424945))

(declare-fun m!3424947 () Bool)

(assert (=> b!3158893 m!3424947))

(declare-fun m!3424949 () Bool)

(assert (=> d!868226 m!3424949))

(declare-fun m!3424951 () Bool)

(assert (=> d!868226 m!3424951))

(declare-fun m!3424953 () Bool)

(assert (=> bm!228705 m!3424953))

(declare-fun m!3424955 () Bool)

(assert (=> b!3158877 m!3424955))

(declare-fun m!3424957 () Bool)

(assert (=> b!3158877 m!3424957))

(declare-fun m!3424959 () Bool)

(assert (=> bm!228702 m!3424959))

(declare-fun m!3424961 () Bool)

(assert (=> bm!228706 m!3424961))

(assert (=> bm!228630 d!868226))

(declare-fun d!868228 () Bool)

(assert (=> d!868228 (= (isEmptyExpr!716 lt!1062528) ((_ is EmptyExpr!9689) lt!1062528))))

(assert (=> b!3158536 d!868228))

(declare-fun b!3158900 () Bool)

(declare-fun e!1968069 () Regex!9689)

(assert (=> b!3158900 (= e!1968069 EmptyLang!9689)))

(declare-fun call!228715 () Regex!9689)

(declare-fun bm!228707 () Bool)

(declare-fun c!531378 () Bool)

(assert (=> bm!228707 (= call!228715 (simplify!626 (ite c!531378 (regOne!19891 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))) (regOne!19890 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))))))))

(declare-fun b!3158901 () Bool)

(declare-fun c!531383 () Bool)

(declare-fun e!1968068 () Bool)

(assert (=> b!3158901 (= c!531383 e!1968068)))

(declare-fun res!1286611 () Bool)

(assert (=> b!3158901 (=> res!1286611 e!1968068)))

(declare-fun call!228716 () Bool)

(assert (=> b!3158901 (= res!1286611 call!228716)))

(declare-fun lt!1062569 () Regex!9689)

(declare-fun call!228717 () Regex!9689)

(assert (=> b!3158901 (= lt!1062569 call!228717)))

(declare-fun e!1968063 () Regex!9689)

(declare-fun e!1968064 () Regex!9689)

(assert (=> b!3158901 (= e!1968063 e!1968064)))

(declare-fun e!1968058 () Bool)

(declare-fun lt!1062571 () Regex!9689)

(declare-fun b!3158902 () Bool)

(assert (=> b!3158902 (= e!1968058 (= (nullable!3323 lt!1062571) (nullable!3323 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345)))))))))

(declare-fun b!3158903 () Bool)

(declare-fun e!1968071 () Regex!9689)

(assert (=> b!3158903 (= e!1968071 EmptyExpr!9689)))

(declare-fun e!1968062 () Regex!9689)

(declare-fun b!3158904 () Bool)

(assert (=> b!3158904 (= e!1968062 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345)))))))

(declare-fun bm!228708 () Bool)

(declare-fun call!228713 () Regex!9689)

(assert (=> bm!228708 (= call!228713 call!228717)))

(declare-fun b!3158905 () Bool)

(declare-fun c!531387 () Bool)

(declare-fun call!228714 () Bool)

(assert (=> b!3158905 (= c!531387 call!228714)))

(declare-fun e!1968070 () Regex!9689)

(declare-fun e!1968059 () Regex!9689)

(assert (=> b!3158905 (= e!1968070 e!1968059)))

(declare-fun b!3158906 () Bool)

(declare-fun lt!1062572 () Regex!9689)

(assert (=> b!3158906 (= e!1968059 lt!1062572)))

(declare-fun b!3158907 () Bool)

(declare-fun e!1968067 () Bool)

(assert (=> b!3158907 (= e!1968067 call!228714)))

(declare-fun b!3158908 () Bool)

(declare-fun e!1968061 () Regex!9689)

(declare-fun lt!1062570 () Regex!9689)

(assert (=> b!3158908 (= e!1968061 lt!1062570)))

(declare-fun b!3158909 () Bool)

(declare-fun c!531386 () Bool)

(declare-fun call!228718 () Bool)

(assert (=> b!3158909 (= c!531386 call!228718)))

(declare-fun e!1968065 () Regex!9689)

(assert (=> b!3158909 (= e!1968065 e!1968061)))

(declare-fun c!531381 () Bool)

(declare-fun lt!1062573 () Regex!9689)

(declare-fun bm!228710 () Bool)

(assert (=> bm!228710 (= call!228718 (isEmptyExpr!716 (ite c!531381 lt!1062569 lt!1062573)))))

(declare-fun b!3158910 () Bool)

(assert (=> b!3158910 (= e!1968064 EmptyExpr!9689)))

(declare-fun b!3158911 () Bool)

(assert (=> b!3158911 (= e!1968071 e!1968063)))

(assert (=> b!3158911 (= c!531381 ((_ is Star!9689) (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))))))

(declare-fun b!3158912 () Bool)

(assert (=> b!3158912 (= e!1968069 e!1968062)))

(declare-fun c!531380 () Bool)

(assert (=> b!3158912 (= c!531380 ((_ is ElementMatch!9689) (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))))))

(declare-fun b!3158913 () Bool)

(declare-fun lt!1062574 () Regex!9689)

(assert (=> b!3158913 (= e!1968059 (Union!9689 lt!1062572 lt!1062574))))

(declare-fun b!3158914 () Bool)

(declare-fun e!1968060 () Regex!9689)

(assert (=> b!3158914 (= e!1968060 e!1968065)))

(assert (=> b!3158914 (= lt!1062573 call!228715)))

(assert (=> b!3158914 (= lt!1062570 call!228713)))

(declare-fun res!1286613 () Bool)

(declare-fun call!228712 () Bool)

(assert (=> b!3158914 (= res!1286613 call!228712)))

(assert (=> b!3158914 (=> res!1286613 e!1968067)))

(declare-fun c!531388 () Bool)

(assert (=> b!3158914 (= c!531388 e!1968067)))

(declare-fun bm!228711 () Bool)

(assert (=> bm!228711 (= call!228714 call!228716)))

(declare-fun b!3158915 () Bool)

(assert (=> b!3158915 (= e!1968070 lt!1062574)))

(declare-fun bm!228712 () Bool)

(assert (=> bm!228712 (= call!228712 (isEmptyLang!722 (ite c!531378 lt!1062572 lt!1062573)))))

(declare-fun b!3158916 () Bool)

(assert (=> b!3158916 (= c!531378 ((_ is Union!9689) (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))))))

(assert (=> b!3158916 (= e!1968063 e!1968060)))

(declare-fun b!3158917 () Bool)

(declare-fun e!1968066 () Regex!9689)

(assert (=> b!3158917 (= e!1968066 lt!1062573)))

(declare-fun b!3158918 () Bool)

(assert (=> b!3158918 (= e!1968061 e!1968066)))

(declare-fun c!531384 () Bool)

(assert (=> b!3158918 (= c!531384 (isEmptyExpr!716 lt!1062570))))

(declare-fun b!3158919 () Bool)

(assert (=> b!3158919 (= e!1968066 (Concat!15010 lt!1062573 lt!1062570))))

(declare-fun b!3158920 () Bool)

(assert (=> b!3158920 (= e!1968068 call!228718)))

(declare-fun bm!228713 () Bool)

(assert (=> bm!228713 (= call!228717 (simplify!626 (ite c!531381 (reg!10018 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))) (ite c!531378 (regTwo!19891 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))) (regTwo!19890 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345)))))))))))

(declare-fun c!531385 () Bool)

(declare-fun b!3158921 () Bool)

(assert (=> b!3158921 (= c!531385 ((_ is EmptyExpr!9689) (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))))))

(assert (=> b!3158921 (= e!1968062 e!1968071)))

(declare-fun b!3158922 () Bool)

(assert (=> b!3158922 (= e!1968065 EmptyLang!9689)))

(declare-fun bm!228709 () Bool)

(assert (=> bm!228709 (= call!228716 (isEmptyLang!722 (ite c!531381 lt!1062569 (ite c!531378 lt!1062574 lt!1062570))))))

(declare-fun d!868230 () Bool)

(assert (=> d!868230 e!1968058))

(declare-fun res!1286612 () Bool)

(assert (=> d!868230 (=> (not res!1286612) (not e!1968058))))

(assert (=> d!868230 (= res!1286612 (validRegex!4422 lt!1062571))))

(assert (=> d!868230 (= lt!1062571 e!1968069)))

(declare-fun c!531379 () Bool)

(assert (=> d!868230 (= c!531379 ((_ is EmptyLang!9689) (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))))))

(assert (=> d!868230 (validRegex!4422 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345)))))))

(assert (=> d!868230 (= (simplify!626 (ite c!531273 (reg!10018 (regTwo!19890 r!17345)) (ite c!531270 (regTwo!19891 (regTwo!19890 r!17345)) (regTwo!19890 (regTwo!19890 r!17345))))) lt!1062571)))

(declare-fun b!3158923 () Bool)

(assert (=> b!3158923 (= e!1968064 (Star!9689 lt!1062569))))

(declare-fun b!3158924 () Bool)

(assert (=> b!3158924 (= e!1968060 e!1968070)))

(assert (=> b!3158924 (= lt!1062572 call!228715)))

(assert (=> b!3158924 (= lt!1062574 call!228713)))

(declare-fun c!531382 () Bool)

(assert (=> b!3158924 (= c!531382 call!228712)))

(assert (= (and d!868230 c!531379) b!3158900))

(assert (= (and d!868230 (not c!531379)) b!3158912))

(assert (= (and b!3158912 c!531380) b!3158904))

(assert (= (and b!3158912 (not c!531380)) b!3158921))

(assert (= (and b!3158921 c!531385) b!3158903))

(assert (= (and b!3158921 (not c!531385)) b!3158911))

(assert (= (and b!3158911 c!531381) b!3158901))

(assert (= (and b!3158911 (not c!531381)) b!3158916))

(assert (= (and b!3158901 (not res!1286611)) b!3158920))

(assert (= (and b!3158901 c!531383) b!3158910))

(assert (= (and b!3158901 (not c!531383)) b!3158923))

(assert (= (and b!3158916 c!531378) b!3158924))

(assert (= (and b!3158916 (not c!531378)) b!3158914))

(assert (= (and b!3158924 c!531382) b!3158915))

(assert (= (and b!3158924 (not c!531382)) b!3158905))

(assert (= (and b!3158905 c!531387) b!3158906))

(assert (= (and b!3158905 (not c!531387)) b!3158913))

(assert (= (and b!3158914 (not res!1286613)) b!3158907))

(assert (= (and b!3158914 c!531388) b!3158922))

(assert (= (and b!3158914 (not c!531388)) b!3158909))

(assert (= (and b!3158909 c!531386) b!3158908))

(assert (= (and b!3158909 (not c!531386)) b!3158918))

(assert (= (and b!3158918 c!531384) b!3158917))

(assert (= (and b!3158918 (not c!531384)) b!3158919))

(assert (= (or b!3158924 b!3158914) bm!228712))

(assert (= (or b!3158905 b!3158907) bm!228711))

(assert (= (or b!3158924 b!3158914) bm!228707))

(assert (= (or b!3158924 b!3158914) bm!228708))

(assert (= (or b!3158920 b!3158909) bm!228710))

(assert (= (or b!3158901 bm!228711) bm!228709))

(assert (= (or b!3158901 bm!228708) bm!228713))

(assert (= (and d!868230 res!1286612) b!3158902))

(declare-fun m!3424963 () Bool)

(assert (=> bm!228707 m!3424963))

(declare-fun m!3424965 () Bool)

(assert (=> bm!228710 m!3424965))

(declare-fun m!3424967 () Bool)

(assert (=> b!3158918 m!3424967))

(declare-fun m!3424969 () Bool)

(assert (=> d!868230 m!3424969))

(declare-fun m!3424971 () Bool)

(assert (=> d!868230 m!3424971))

(declare-fun m!3424973 () Bool)

(assert (=> bm!228712 m!3424973))

(declare-fun m!3424975 () Bool)

(assert (=> b!3158902 m!3424975))

(declare-fun m!3424977 () Bool)

(assert (=> b!3158902 m!3424977))

(declare-fun m!3424979 () Bool)

(assert (=> bm!228709 m!3424979))

(declare-fun m!3424981 () Bool)

(assert (=> bm!228713 m!3424981))

(assert (=> bm!228616 d!868230))

(declare-fun d!868232 () Bool)

(assert (=> d!868232 (= (nullable!3323 (reg!10018 r!17345)) (nullableFct!940 (reg!10018 r!17345)))))

(declare-fun bs!539379 () Bool)

(assert (= bs!539379 d!868232))

(declare-fun m!3424983 () Bool)

(assert (=> bs!539379 m!3424983))

(assert (=> b!3158686 d!868232))

(declare-fun d!868234 () Bool)

(assert (=> d!868234 (= (isEmptyLang!722 (ite c!531295 lt!1062539 (ite c!531292 lt!1062544 lt!1062540))) ((_ is EmptyLang!9689) (ite c!531295 lt!1062539 (ite c!531292 lt!1062544 lt!1062540))))))

(assert (=> bm!228626 d!868234))

(declare-fun b!3158925 () Bool)

(declare-fun e!1968072 () Bool)

(declare-fun e!1968074 () Bool)

(assert (=> b!3158925 (= e!1968072 e!1968074)))

(declare-fun res!1286618 () Bool)

(assert (=> b!3158925 (=> res!1286618 e!1968074)))

(assert (=> b!3158925 (= res!1286618 ((_ is Star!9689) r!17345))))

(declare-fun b!3158926 () Bool)

(declare-fun e!1968077 () Bool)

(declare-fun call!228720 () Bool)

(assert (=> b!3158926 (= e!1968077 call!228720)))

(declare-fun b!3158927 () Bool)

(declare-fun e!1968076 () Bool)

(declare-fun e!1968075 () Bool)

(assert (=> b!3158927 (= e!1968076 e!1968075)))

(declare-fun res!1286617 () Bool)

(assert (=> b!3158927 (= res!1286617 call!228720)))

(assert (=> b!3158927 (=> (not res!1286617) (not e!1968075))))

(declare-fun b!3158928 () Bool)

(declare-fun e!1968073 () Bool)

(assert (=> b!3158928 (= e!1968073 e!1968072)))

(declare-fun res!1286615 () Bool)

(assert (=> b!3158928 (=> (not res!1286615) (not e!1968072))))

(assert (=> b!3158928 (= res!1286615 (and (not ((_ is EmptyLang!9689) r!17345)) (not ((_ is ElementMatch!9689) r!17345))))))

(declare-fun bm!228714 () Bool)

(declare-fun c!531389 () Bool)

(assert (=> bm!228714 (= call!228720 (nullable!3323 (ite c!531389 (regTwo!19891 r!17345) (regOne!19890 r!17345))))))

(declare-fun bm!228715 () Bool)

(declare-fun call!228719 () Bool)

(assert (=> bm!228715 (= call!228719 (nullable!3323 (ite c!531389 (regOne!19891 r!17345) (regTwo!19890 r!17345))))))

(declare-fun b!3158929 () Bool)

(assert (=> b!3158929 (= e!1968075 call!228719)))

(declare-fun b!3158930 () Bool)

(assert (=> b!3158930 (= e!1968076 e!1968077)))

(declare-fun res!1286616 () Bool)

(assert (=> b!3158930 (= res!1286616 call!228719)))

(assert (=> b!3158930 (=> res!1286616 e!1968077)))

(declare-fun b!3158931 () Bool)

(assert (=> b!3158931 (= e!1968074 e!1968076)))

(assert (=> b!3158931 (= c!531389 ((_ is Union!9689) r!17345))))

(declare-fun d!868236 () Bool)

(declare-fun res!1286614 () Bool)

(assert (=> d!868236 (=> res!1286614 e!1968073)))

(assert (=> d!868236 (= res!1286614 ((_ is EmptyExpr!9689) r!17345))))

(assert (=> d!868236 (= (nullableFct!940 r!17345) e!1968073)))

(assert (= (and d!868236 (not res!1286614)) b!3158928))

(assert (= (and b!3158928 res!1286615) b!3158925))

(assert (= (and b!3158925 (not res!1286618)) b!3158931))

(assert (= (and b!3158931 c!531389) b!3158930))

(assert (= (and b!3158931 (not c!531389)) b!3158927))

(assert (= (and b!3158930 (not res!1286616)) b!3158926))

(assert (= (and b!3158927 res!1286617) b!3158929))

(assert (= (or b!3158930 b!3158929) bm!228715))

(assert (= (or b!3158926 b!3158927) bm!228714))

(declare-fun m!3424985 () Bool)

(assert (=> bm!228714 m!3424985))

(declare-fun m!3424987 () Bool)

(assert (=> bm!228715 m!3424987))

(assert (=> d!868170 d!868236))

(declare-fun d!868238 () Bool)

(declare-fun res!1286620 () Bool)

(declare-fun e!1968083 () Bool)

(assert (=> d!868238 (=> res!1286620 e!1968083)))

(assert (=> d!868238 (= res!1286620 ((_ is ElementMatch!9689) (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))))))

(assert (=> d!868238 (= (validRegex!4422 (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))) e!1968083)))

(declare-fun b!3158932 () Bool)

(declare-fun e!1968078 () Bool)

(assert (=> b!3158932 (= e!1968083 e!1968078)))

(declare-fun c!531390 () Bool)

(assert (=> b!3158932 (= c!531390 ((_ is Star!9689) (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))))))

(declare-fun b!3158933 () Bool)

(declare-fun e!1968084 () Bool)

(declare-fun call!228723 () Bool)

(assert (=> b!3158933 (= e!1968084 call!228723)))

(declare-fun b!3158934 () Bool)

(declare-fun e!1968079 () Bool)

(assert (=> b!3158934 (= e!1968078 e!1968079)))

(declare-fun c!531391 () Bool)

(assert (=> b!3158934 (= c!531391 ((_ is Union!9689) (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))))))

(declare-fun b!3158935 () Bool)

(declare-fun res!1286619 () Bool)

(declare-fun e!1968081 () Bool)

(assert (=> b!3158935 (=> res!1286619 e!1968081)))

(assert (=> b!3158935 (= res!1286619 (not ((_ is Concat!15010) (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345)))))))

(assert (=> b!3158935 (= e!1968079 e!1968081)))

(declare-fun b!3158936 () Bool)

(assert (=> b!3158936 (= e!1968081 e!1968084)))

(declare-fun res!1286622 () Bool)

(assert (=> b!3158936 (=> (not res!1286622) (not e!1968084))))

(declare-fun call!228721 () Bool)

(assert (=> b!3158936 (= res!1286622 call!228721)))

(declare-fun b!3158937 () Bool)

(declare-fun e!1968080 () Bool)

(assert (=> b!3158937 (= e!1968078 e!1968080)))

(declare-fun res!1286621 () Bool)

(assert (=> b!3158937 (= res!1286621 (not (nullable!3323 (reg!10018 (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))))))))

(assert (=> b!3158937 (=> (not res!1286621) (not e!1968080))))

(declare-fun b!3158938 () Bool)

(declare-fun res!1286623 () Bool)

(declare-fun e!1968082 () Bool)

(assert (=> b!3158938 (=> (not res!1286623) (not e!1968082))))

(assert (=> b!3158938 (= res!1286623 call!228723)))

(assert (=> b!3158938 (= e!1968079 e!1968082)))

(declare-fun bm!228716 () Bool)

(assert (=> bm!228716 (= call!228723 (validRegex!4422 (ite c!531391 (regOne!19891 (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))) (regTwo!19890 (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))))))))

(declare-fun b!3158939 () Bool)

(assert (=> b!3158939 (= e!1968082 call!228721)))

(declare-fun bm!228717 () Bool)

(declare-fun call!228722 () Bool)

(assert (=> bm!228717 (= call!228722 (validRegex!4422 (ite c!531390 (reg!10018 (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))) (ite c!531391 (regTwo!19891 (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345))) (regOne!19890 (ite c!531329 (regOne!19891 r!17345) (regTwo!19890 r!17345)))))))))

(declare-fun b!3158940 () Bool)

(assert (=> b!3158940 (= e!1968080 call!228722)))

(declare-fun bm!228718 () Bool)

(assert (=> bm!228718 (= call!228721 call!228722)))

(assert (= (and d!868238 (not res!1286620)) b!3158932))

(assert (= (and b!3158932 c!531390) b!3158937))

(assert (= (and b!3158932 (not c!531390)) b!3158934))

(assert (= (and b!3158937 res!1286621) b!3158940))

(assert (= (and b!3158934 c!531391) b!3158938))

(assert (= (and b!3158934 (not c!531391)) b!3158935))

(assert (= (and b!3158938 res!1286623) b!3158939))

(assert (= (and b!3158935 (not res!1286619)) b!3158936))

(assert (= (and b!3158936 res!1286622) b!3158933))

(assert (= (or b!3158939 b!3158936) bm!228718))

(assert (= (or b!3158938 b!3158933) bm!228716))

(assert (= (or b!3158940 bm!228718) bm!228717))

(declare-fun m!3424989 () Bool)

(assert (=> b!3158937 m!3424989))

(declare-fun m!3424991 () Bool)

(assert (=> bm!228716 m!3424991))

(declare-fun m!3424993 () Bool)

(assert (=> bm!228717 m!3424993))

(assert (=> bm!228659 d!868238))

(declare-fun d!868240 () Bool)

(assert (=> d!868240 (= (isEmptyLang!722 (ite c!531273 lt!1062527 (ite c!531270 lt!1062532 lt!1062528))) ((_ is EmptyLang!9689) (ite c!531273 lt!1062527 (ite c!531270 lt!1062532 lt!1062528))))))

(assert (=> bm!228612 d!868240))

(declare-fun d!868242 () Bool)

(declare-fun res!1286625 () Bool)

(declare-fun e!1968090 () Bool)

(assert (=> d!868242 (=> res!1286625 e!1968090)))

(assert (=> d!868242 (= res!1286625 ((_ is ElementMatch!9689) (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))))))

(assert (=> d!868242 (= (validRegex!4422 (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))) e!1968090)))

(declare-fun b!3158941 () Bool)

(declare-fun e!1968085 () Bool)

(assert (=> b!3158941 (= e!1968090 e!1968085)))

(declare-fun c!531392 () Bool)

(assert (=> b!3158941 (= c!531392 ((_ is Star!9689) (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))))))

(declare-fun b!3158942 () Bool)

(declare-fun e!1968091 () Bool)

(declare-fun call!228726 () Bool)

(assert (=> b!3158942 (= e!1968091 call!228726)))

(declare-fun b!3158943 () Bool)

(declare-fun e!1968086 () Bool)

(assert (=> b!3158943 (= e!1968085 e!1968086)))

(declare-fun c!531393 () Bool)

(assert (=> b!3158943 (= c!531393 ((_ is Union!9689) (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))))))

(declare-fun b!3158944 () Bool)

(declare-fun res!1286624 () Bool)

(declare-fun e!1968088 () Bool)

(assert (=> b!3158944 (=> res!1286624 e!1968088)))

(assert (=> b!3158944 (= res!1286624 (not ((_ is Concat!15010) (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345))))))))

(assert (=> b!3158944 (= e!1968086 e!1968088)))

(declare-fun b!3158945 () Bool)

(assert (=> b!3158945 (= e!1968088 e!1968091)))

(declare-fun res!1286627 () Bool)

(assert (=> b!3158945 (=> (not res!1286627) (not e!1968091))))

(declare-fun call!228724 () Bool)

(assert (=> b!3158945 (= res!1286627 call!228724)))

(declare-fun b!3158946 () Bool)

(declare-fun e!1968087 () Bool)

(assert (=> b!3158946 (= e!1968085 e!1968087)))

(declare-fun res!1286626 () Bool)

(assert (=> b!3158946 (= res!1286626 (not (nullable!3323 (reg!10018 (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))))))))

(assert (=> b!3158946 (=> (not res!1286626) (not e!1968087))))

(declare-fun b!3158947 () Bool)

(declare-fun res!1286628 () Bool)

(declare-fun e!1968089 () Bool)

(assert (=> b!3158947 (=> (not res!1286628) (not e!1968089))))

(assert (=> b!3158947 (= res!1286628 call!228726)))

(assert (=> b!3158947 (= e!1968086 e!1968089)))

(declare-fun bm!228719 () Bool)

(assert (=> bm!228719 (= call!228726 (validRegex!4422 (ite c!531393 (regOne!19891 (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))) (regTwo!19890 (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))))))))

(declare-fun b!3158948 () Bool)

(assert (=> b!3158948 (= e!1968089 call!228724)))

(declare-fun bm!228720 () Bool)

(declare-fun call!228725 () Bool)

(assert (=> bm!228720 (= call!228725 (validRegex!4422 (ite c!531392 (reg!10018 (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))) (ite c!531393 (regTwo!19891 (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345)))) (regOne!19890 (ite c!531328 (reg!10018 r!17345) (ite c!531329 (regTwo!19891 r!17345) (regOne!19890 r!17345))))))))))

(declare-fun b!3158949 () Bool)

(assert (=> b!3158949 (= e!1968087 call!228725)))

(declare-fun bm!228721 () Bool)

(assert (=> bm!228721 (= call!228724 call!228725)))

(assert (= (and d!868242 (not res!1286625)) b!3158941))

(assert (= (and b!3158941 c!531392) b!3158946))

(assert (= (and b!3158941 (not c!531392)) b!3158943))

(assert (= (and b!3158946 res!1286626) b!3158949))

(assert (= (and b!3158943 c!531393) b!3158947))

(assert (= (and b!3158943 (not c!531393)) b!3158944))

(assert (= (and b!3158947 res!1286628) b!3158948))

(assert (= (and b!3158944 (not res!1286624)) b!3158945))

(assert (= (and b!3158945 res!1286627) b!3158942))

(assert (= (or b!3158948 b!3158945) bm!228721))

(assert (= (or b!3158947 b!3158942) bm!228719))

(assert (= (or b!3158949 bm!228721) bm!228720))

(declare-fun m!3424995 () Bool)

(assert (=> b!3158946 m!3424995))

(declare-fun m!3424997 () Bool)

(assert (=> bm!228719 m!3424997))

(declare-fun m!3424999 () Bool)

(assert (=> bm!228720 m!3424999))

(assert (=> bm!228660 d!868242))

(declare-fun d!868244 () Bool)

(assert (=> d!868244 (= (isEmptyExpr!716 (ite c!531295 lt!1062539 lt!1062543)) ((_ is EmptyExpr!9689) (ite c!531295 lt!1062539 lt!1062543)))))

(assert (=> bm!228627 d!868244))

(declare-fun d!868246 () Bool)

(assert (=> d!868246 (= (isEmptyExpr!716 (ite c!531273 lt!1062527 lt!1062531)) ((_ is EmptyExpr!9689) (ite c!531273 lt!1062527 lt!1062531)))))

(assert (=> bm!228613 d!868246))

(declare-fun e!1968092 () Bool)

(assert (=> b!3158749 (= tp!992942 e!1968092)))

(declare-fun b!3158953 () Bool)

(declare-fun tp!992947 () Bool)

(declare-fun tp!992948 () Bool)

(assert (=> b!3158953 (= e!1968092 (and tp!992947 tp!992948))))

(declare-fun b!3158950 () Bool)

(assert (=> b!3158950 (= e!1968092 tp_is_empty!16941)))

(declare-fun b!3158951 () Bool)

(declare-fun tp!992950 () Bool)

(declare-fun tp!992946 () Bool)

(assert (=> b!3158951 (= e!1968092 (and tp!992950 tp!992946))))

(declare-fun b!3158952 () Bool)

(declare-fun tp!992949 () Bool)

(assert (=> b!3158952 (= e!1968092 tp!992949)))

(assert (= (and b!3158749 ((_ is ElementMatch!9689) (regOne!19891 (regTwo!19891 r!17345)))) b!3158950))

(assert (= (and b!3158749 ((_ is Concat!15010) (regOne!19891 (regTwo!19891 r!17345)))) b!3158951))

(assert (= (and b!3158749 ((_ is Star!9689) (regOne!19891 (regTwo!19891 r!17345)))) b!3158952))

(assert (= (and b!3158749 ((_ is Union!9689) (regOne!19891 (regTwo!19891 r!17345)))) b!3158953))

(declare-fun e!1968093 () Bool)

(assert (=> b!3158749 (= tp!992943 e!1968093)))

(declare-fun b!3158957 () Bool)

(declare-fun tp!992952 () Bool)

(declare-fun tp!992953 () Bool)

(assert (=> b!3158957 (= e!1968093 (and tp!992952 tp!992953))))

(declare-fun b!3158954 () Bool)

(assert (=> b!3158954 (= e!1968093 tp_is_empty!16941)))

(declare-fun b!3158955 () Bool)

(declare-fun tp!992955 () Bool)

(declare-fun tp!992951 () Bool)

(assert (=> b!3158955 (= e!1968093 (and tp!992955 tp!992951))))

(declare-fun b!3158956 () Bool)

(declare-fun tp!992954 () Bool)

(assert (=> b!3158956 (= e!1968093 tp!992954)))

(assert (= (and b!3158749 ((_ is ElementMatch!9689) (regTwo!19891 (regTwo!19891 r!17345)))) b!3158954))

(assert (= (and b!3158749 ((_ is Concat!15010) (regTwo!19891 (regTwo!19891 r!17345)))) b!3158955))

(assert (= (and b!3158749 ((_ is Star!9689) (regTwo!19891 (regTwo!19891 r!17345)))) b!3158956))

(assert (= (and b!3158749 ((_ is Union!9689) (regTwo!19891 (regTwo!19891 r!17345)))) b!3158957))

(declare-fun e!1968094 () Bool)

(assert (=> b!3158735 (= tp!992930 e!1968094)))

(declare-fun b!3158961 () Bool)

(declare-fun tp!992957 () Bool)

(declare-fun tp!992958 () Bool)

(assert (=> b!3158961 (= e!1968094 (and tp!992957 tp!992958))))

(declare-fun b!3158958 () Bool)

(assert (=> b!3158958 (= e!1968094 tp_is_empty!16941)))

(declare-fun b!3158959 () Bool)

(declare-fun tp!992960 () Bool)

(declare-fun tp!992956 () Bool)

(assert (=> b!3158959 (= e!1968094 (and tp!992960 tp!992956))))

(declare-fun b!3158960 () Bool)

(declare-fun tp!992959 () Bool)

(assert (=> b!3158960 (= e!1968094 tp!992959)))

(assert (= (and b!3158735 ((_ is ElementMatch!9689) (regOne!19890 (regTwo!19890 r!17345)))) b!3158958))

(assert (= (and b!3158735 ((_ is Concat!15010) (regOne!19890 (regTwo!19890 r!17345)))) b!3158959))

(assert (= (and b!3158735 ((_ is Star!9689) (regOne!19890 (regTwo!19890 r!17345)))) b!3158960))

(assert (= (and b!3158735 ((_ is Union!9689) (regOne!19890 (regTwo!19890 r!17345)))) b!3158961))

(declare-fun e!1968095 () Bool)

(assert (=> b!3158735 (= tp!992926 e!1968095)))

(declare-fun b!3158965 () Bool)

(declare-fun tp!992962 () Bool)

(declare-fun tp!992963 () Bool)

(assert (=> b!3158965 (= e!1968095 (and tp!992962 tp!992963))))

(declare-fun b!3158962 () Bool)

(assert (=> b!3158962 (= e!1968095 tp_is_empty!16941)))

(declare-fun b!3158963 () Bool)

(declare-fun tp!992965 () Bool)

(declare-fun tp!992961 () Bool)

(assert (=> b!3158963 (= e!1968095 (and tp!992965 tp!992961))))

(declare-fun b!3158964 () Bool)

(declare-fun tp!992964 () Bool)

(assert (=> b!3158964 (= e!1968095 tp!992964)))

(assert (= (and b!3158735 ((_ is ElementMatch!9689) (regTwo!19890 (regTwo!19890 r!17345)))) b!3158962))

(assert (= (and b!3158735 ((_ is Concat!15010) (regTwo!19890 (regTwo!19890 r!17345)))) b!3158963))

(assert (= (and b!3158735 ((_ is Star!9689) (regTwo!19890 (regTwo!19890 r!17345)))) b!3158964))

(assert (= (and b!3158735 ((_ is Union!9689) (regTwo!19890 (regTwo!19890 r!17345)))) b!3158965))

(declare-fun e!1968096 () Bool)

(assert (=> b!3158736 (= tp!992929 e!1968096)))

(declare-fun b!3158969 () Bool)

(declare-fun tp!992967 () Bool)

(declare-fun tp!992968 () Bool)

(assert (=> b!3158969 (= e!1968096 (and tp!992967 tp!992968))))

(declare-fun b!3158966 () Bool)

(assert (=> b!3158966 (= e!1968096 tp_is_empty!16941)))

(declare-fun b!3158967 () Bool)

(declare-fun tp!992970 () Bool)

(declare-fun tp!992966 () Bool)

(assert (=> b!3158967 (= e!1968096 (and tp!992970 tp!992966))))

(declare-fun b!3158968 () Bool)

(declare-fun tp!992969 () Bool)

(assert (=> b!3158968 (= e!1968096 tp!992969)))

(assert (= (and b!3158736 ((_ is ElementMatch!9689) (reg!10018 (regTwo!19890 r!17345)))) b!3158966))

(assert (= (and b!3158736 ((_ is Concat!15010) (reg!10018 (regTwo!19890 r!17345)))) b!3158967))

(assert (= (and b!3158736 ((_ is Star!9689) (reg!10018 (regTwo!19890 r!17345)))) b!3158968))

(assert (= (and b!3158736 ((_ is Union!9689) (reg!10018 (regTwo!19890 r!17345)))) b!3158969))

(declare-fun e!1968097 () Bool)

(assert (=> b!3158745 (= tp!992937 e!1968097)))

(declare-fun b!3158973 () Bool)

(declare-fun tp!992972 () Bool)

(declare-fun tp!992973 () Bool)

(assert (=> b!3158973 (= e!1968097 (and tp!992972 tp!992973))))

(declare-fun b!3158970 () Bool)

(assert (=> b!3158970 (= e!1968097 tp_is_empty!16941)))

(declare-fun b!3158971 () Bool)

(declare-fun tp!992975 () Bool)

(declare-fun tp!992971 () Bool)

(assert (=> b!3158971 (= e!1968097 (and tp!992975 tp!992971))))

(declare-fun b!3158972 () Bool)

(declare-fun tp!992974 () Bool)

(assert (=> b!3158972 (= e!1968097 tp!992974)))

(assert (= (and b!3158745 ((_ is ElementMatch!9689) (regOne!19891 (regOne!19891 r!17345)))) b!3158970))

(assert (= (and b!3158745 ((_ is Concat!15010) (regOne!19891 (regOne!19891 r!17345)))) b!3158971))

(assert (= (and b!3158745 ((_ is Star!9689) (regOne!19891 (regOne!19891 r!17345)))) b!3158972))

(assert (= (and b!3158745 ((_ is Union!9689) (regOne!19891 (regOne!19891 r!17345)))) b!3158973))

(declare-fun e!1968098 () Bool)

(assert (=> b!3158745 (= tp!992938 e!1968098)))

(declare-fun b!3158977 () Bool)

(declare-fun tp!992977 () Bool)

(declare-fun tp!992978 () Bool)

(assert (=> b!3158977 (= e!1968098 (and tp!992977 tp!992978))))

(declare-fun b!3158974 () Bool)

(assert (=> b!3158974 (= e!1968098 tp_is_empty!16941)))

(declare-fun b!3158975 () Bool)

(declare-fun tp!992980 () Bool)

(declare-fun tp!992976 () Bool)

(assert (=> b!3158975 (= e!1968098 (and tp!992980 tp!992976))))

(declare-fun b!3158976 () Bool)

(declare-fun tp!992979 () Bool)

(assert (=> b!3158976 (= e!1968098 tp!992979)))

(assert (= (and b!3158745 ((_ is ElementMatch!9689) (regTwo!19891 (regOne!19891 r!17345)))) b!3158974))

(assert (= (and b!3158745 ((_ is Concat!15010) (regTwo!19891 (regOne!19891 r!17345)))) b!3158975))

(assert (= (and b!3158745 ((_ is Star!9689) (regTwo!19891 (regOne!19891 r!17345)))) b!3158976))

(assert (= (and b!3158745 ((_ is Union!9689) (regTwo!19891 (regOne!19891 r!17345)))) b!3158977))

(declare-fun e!1968099 () Bool)

(assert (=> b!3158748 (= tp!992944 e!1968099)))

(declare-fun b!3158981 () Bool)

(declare-fun tp!992982 () Bool)

(declare-fun tp!992983 () Bool)

(assert (=> b!3158981 (= e!1968099 (and tp!992982 tp!992983))))

(declare-fun b!3158978 () Bool)

(assert (=> b!3158978 (= e!1968099 tp_is_empty!16941)))

(declare-fun b!3158979 () Bool)

(declare-fun tp!992985 () Bool)

(declare-fun tp!992981 () Bool)

(assert (=> b!3158979 (= e!1968099 (and tp!992985 tp!992981))))

(declare-fun b!3158980 () Bool)

(declare-fun tp!992984 () Bool)

(assert (=> b!3158980 (= e!1968099 tp!992984)))

(assert (= (and b!3158748 ((_ is ElementMatch!9689) (reg!10018 (regTwo!19891 r!17345)))) b!3158978))

(assert (= (and b!3158748 ((_ is Concat!15010) (reg!10018 (regTwo!19891 r!17345)))) b!3158979))

(assert (= (and b!3158748 ((_ is Star!9689) (reg!10018 (regTwo!19891 r!17345)))) b!3158980))

(assert (= (and b!3158748 ((_ is Union!9689) (reg!10018 (regTwo!19891 r!17345)))) b!3158981))

(declare-fun e!1968100 () Bool)

(assert (=> b!3158743 (= tp!992940 e!1968100)))

(declare-fun b!3158985 () Bool)

(declare-fun tp!992987 () Bool)

(declare-fun tp!992988 () Bool)

(assert (=> b!3158985 (= e!1968100 (and tp!992987 tp!992988))))

(declare-fun b!3158982 () Bool)

(assert (=> b!3158982 (= e!1968100 tp_is_empty!16941)))

(declare-fun b!3158983 () Bool)

(declare-fun tp!992990 () Bool)

(declare-fun tp!992986 () Bool)

(assert (=> b!3158983 (= e!1968100 (and tp!992990 tp!992986))))

(declare-fun b!3158984 () Bool)

(declare-fun tp!992989 () Bool)

(assert (=> b!3158984 (= e!1968100 tp!992989)))

(assert (= (and b!3158743 ((_ is ElementMatch!9689) (regOne!19890 (regOne!19891 r!17345)))) b!3158982))

(assert (= (and b!3158743 ((_ is Concat!15010) (regOne!19890 (regOne!19891 r!17345)))) b!3158983))

(assert (= (and b!3158743 ((_ is Star!9689) (regOne!19890 (regOne!19891 r!17345)))) b!3158984))

(assert (= (and b!3158743 ((_ is Union!9689) (regOne!19890 (regOne!19891 r!17345)))) b!3158985))

(declare-fun e!1968101 () Bool)

(assert (=> b!3158743 (= tp!992936 e!1968101)))

(declare-fun b!3158989 () Bool)

(declare-fun tp!992992 () Bool)

(declare-fun tp!992993 () Bool)

(assert (=> b!3158989 (= e!1968101 (and tp!992992 tp!992993))))

(declare-fun b!3158986 () Bool)

(assert (=> b!3158986 (= e!1968101 tp_is_empty!16941)))

(declare-fun b!3158987 () Bool)

(declare-fun tp!992995 () Bool)

(declare-fun tp!992991 () Bool)

(assert (=> b!3158987 (= e!1968101 (and tp!992995 tp!992991))))

(declare-fun b!3158988 () Bool)

(declare-fun tp!992994 () Bool)

(assert (=> b!3158988 (= e!1968101 tp!992994)))

(assert (= (and b!3158743 ((_ is ElementMatch!9689) (regTwo!19890 (regOne!19891 r!17345)))) b!3158986))

(assert (= (and b!3158743 ((_ is Concat!15010) (regTwo!19890 (regOne!19891 r!17345)))) b!3158987))

(assert (= (and b!3158743 ((_ is Star!9689) (regTwo!19890 (regOne!19891 r!17345)))) b!3158988))

(assert (= (and b!3158743 ((_ is Union!9689) (regTwo!19890 (regOne!19891 r!17345)))) b!3158989))

(declare-fun e!1968102 () Bool)

(assert (=> b!3158744 (= tp!992939 e!1968102)))

(declare-fun b!3158993 () Bool)

(declare-fun tp!992997 () Bool)

(declare-fun tp!992998 () Bool)

(assert (=> b!3158993 (= e!1968102 (and tp!992997 tp!992998))))

(declare-fun b!3158990 () Bool)

(assert (=> b!3158990 (= e!1968102 tp_is_empty!16941)))

(declare-fun b!3158991 () Bool)

(declare-fun tp!993000 () Bool)

(declare-fun tp!992996 () Bool)

(assert (=> b!3158991 (= e!1968102 (and tp!993000 tp!992996))))

(declare-fun b!3158992 () Bool)

(declare-fun tp!992999 () Bool)

(assert (=> b!3158992 (= e!1968102 tp!992999)))

(assert (= (and b!3158744 ((_ is ElementMatch!9689) (reg!10018 (regOne!19891 r!17345)))) b!3158990))

(assert (= (and b!3158744 ((_ is Concat!15010) (reg!10018 (regOne!19891 r!17345)))) b!3158991))

(assert (= (and b!3158744 ((_ is Star!9689) (reg!10018 (regOne!19891 r!17345)))) b!3158992))

(assert (= (and b!3158744 ((_ is Union!9689) (reg!10018 (regOne!19891 r!17345)))) b!3158993))

(declare-fun e!1968103 () Bool)

(assert (=> b!3158724 (= tp!992914 e!1968103)))

(declare-fun b!3158997 () Bool)

(declare-fun tp!993002 () Bool)

(declare-fun tp!993003 () Bool)

(assert (=> b!3158997 (= e!1968103 (and tp!993002 tp!993003))))

(declare-fun b!3158994 () Bool)

(assert (=> b!3158994 (= e!1968103 tp_is_empty!16941)))

(declare-fun b!3158995 () Bool)

(declare-fun tp!993005 () Bool)

(declare-fun tp!993001 () Bool)

(assert (=> b!3158995 (= e!1968103 (and tp!993005 tp!993001))))

(declare-fun b!3158996 () Bool)

(declare-fun tp!993004 () Bool)

(assert (=> b!3158996 (= e!1968103 tp!993004)))

(assert (= (and b!3158724 ((_ is ElementMatch!9689) (reg!10018 (regOne!19890 r!17345)))) b!3158994))

(assert (= (and b!3158724 ((_ is Concat!15010) (reg!10018 (regOne!19890 r!17345)))) b!3158995))

(assert (= (and b!3158724 ((_ is Star!9689) (reg!10018 (regOne!19890 r!17345)))) b!3158996))

(assert (= (and b!3158724 ((_ is Union!9689) (reg!10018 (regOne!19890 r!17345)))) b!3158997))

(declare-fun e!1968104 () Bool)

(assert (=> b!3158715 (= tp!992905 e!1968104)))

(declare-fun b!3159001 () Bool)

(declare-fun tp!993007 () Bool)

(declare-fun tp!993008 () Bool)

(assert (=> b!3159001 (= e!1968104 (and tp!993007 tp!993008))))

(declare-fun b!3158998 () Bool)

(assert (=> b!3158998 (= e!1968104 tp_is_empty!16941)))

(declare-fun b!3158999 () Bool)

(declare-fun tp!993010 () Bool)

(declare-fun tp!993006 () Bool)

(assert (=> b!3158999 (= e!1968104 (and tp!993010 tp!993006))))

(declare-fun b!3159000 () Bool)

(declare-fun tp!993009 () Bool)

(assert (=> b!3159000 (= e!1968104 tp!993009)))

(assert (= (and b!3158715 ((_ is ElementMatch!9689) (regOne!19890 (reg!10018 r!17345)))) b!3158998))

(assert (= (and b!3158715 ((_ is Concat!15010) (regOne!19890 (reg!10018 r!17345)))) b!3158999))

(assert (= (and b!3158715 ((_ is Star!9689) (regOne!19890 (reg!10018 r!17345)))) b!3159000))

(assert (= (and b!3158715 ((_ is Union!9689) (regOne!19890 (reg!10018 r!17345)))) b!3159001))

(declare-fun e!1968105 () Bool)

(assert (=> b!3158715 (= tp!992901 e!1968105)))

(declare-fun b!3159005 () Bool)

(declare-fun tp!993012 () Bool)

(declare-fun tp!993013 () Bool)

(assert (=> b!3159005 (= e!1968105 (and tp!993012 tp!993013))))

(declare-fun b!3159002 () Bool)

(assert (=> b!3159002 (= e!1968105 tp_is_empty!16941)))

(declare-fun b!3159003 () Bool)

(declare-fun tp!993015 () Bool)

(declare-fun tp!993011 () Bool)

(assert (=> b!3159003 (= e!1968105 (and tp!993015 tp!993011))))

(declare-fun b!3159004 () Bool)

(declare-fun tp!993014 () Bool)

(assert (=> b!3159004 (= e!1968105 tp!993014)))

(assert (= (and b!3158715 ((_ is ElementMatch!9689) (regTwo!19890 (reg!10018 r!17345)))) b!3159002))

(assert (= (and b!3158715 ((_ is Concat!15010) (regTwo!19890 (reg!10018 r!17345)))) b!3159003))

(assert (= (and b!3158715 ((_ is Star!9689) (regTwo!19890 (reg!10018 r!17345)))) b!3159004))

(assert (= (and b!3158715 ((_ is Union!9689) (regTwo!19890 (reg!10018 r!17345)))) b!3159005))

(declare-fun e!1968106 () Bool)

(assert (=> b!3158723 (= tp!992915 e!1968106)))

(declare-fun b!3159009 () Bool)

(declare-fun tp!993017 () Bool)

(declare-fun tp!993018 () Bool)

(assert (=> b!3159009 (= e!1968106 (and tp!993017 tp!993018))))

(declare-fun b!3159006 () Bool)

(assert (=> b!3159006 (= e!1968106 tp_is_empty!16941)))

(declare-fun b!3159007 () Bool)

(declare-fun tp!993020 () Bool)

(declare-fun tp!993016 () Bool)

(assert (=> b!3159007 (= e!1968106 (and tp!993020 tp!993016))))

(declare-fun b!3159008 () Bool)

(declare-fun tp!993019 () Bool)

(assert (=> b!3159008 (= e!1968106 tp!993019)))

(assert (= (and b!3158723 ((_ is ElementMatch!9689) (regOne!19890 (regOne!19890 r!17345)))) b!3159006))

(assert (= (and b!3158723 ((_ is Concat!15010) (regOne!19890 (regOne!19890 r!17345)))) b!3159007))

(assert (= (and b!3158723 ((_ is Star!9689) (regOne!19890 (regOne!19890 r!17345)))) b!3159008))

(assert (= (and b!3158723 ((_ is Union!9689) (regOne!19890 (regOne!19890 r!17345)))) b!3159009))

(declare-fun e!1968107 () Bool)

(assert (=> b!3158723 (= tp!992911 e!1968107)))

(declare-fun b!3159013 () Bool)

(declare-fun tp!993022 () Bool)

(declare-fun tp!993023 () Bool)

(assert (=> b!3159013 (= e!1968107 (and tp!993022 tp!993023))))

(declare-fun b!3159010 () Bool)

(assert (=> b!3159010 (= e!1968107 tp_is_empty!16941)))

(declare-fun b!3159011 () Bool)

(declare-fun tp!993025 () Bool)

(declare-fun tp!993021 () Bool)

(assert (=> b!3159011 (= e!1968107 (and tp!993025 tp!993021))))

(declare-fun b!3159012 () Bool)

(declare-fun tp!993024 () Bool)

(assert (=> b!3159012 (= e!1968107 tp!993024)))

(assert (= (and b!3158723 ((_ is ElementMatch!9689) (regTwo!19890 (regOne!19890 r!17345)))) b!3159010))

(assert (= (and b!3158723 ((_ is Concat!15010) (regTwo!19890 (regOne!19890 r!17345)))) b!3159011))

(assert (= (and b!3158723 ((_ is Star!9689) (regTwo!19890 (regOne!19890 r!17345)))) b!3159012))

(assert (= (and b!3158723 ((_ is Union!9689) (regTwo!19890 (regOne!19890 r!17345)))) b!3159013))

(declare-fun e!1968108 () Bool)

(assert (=> b!3158737 (= tp!992927 e!1968108)))

(declare-fun b!3159017 () Bool)

(declare-fun tp!993027 () Bool)

(declare-fun tp!993028 () Bool)

(assert (=> b!3159017 (= e!1968108 (and tp!993027 tp!993028))))

(declare-fun b!3159014 () Bool)

(assert (=> b!3159014 (= e!1968108 tp_is_empty!16941)))

(declare-fun b!3159015 () Bool)

(declare-fun tp!993030 () Bool)

(declare-fun tp!993026 () Bool)

(assert (=> b!3159015 (= e!1968108 (and tp!993030 tp!993026))))

(declare-fun b!3159016 () Bool)

(declare-fun tp!993029 () Bool)

(assert (=> b!3159016 (= e!1968108 tp!993029)))

(assert (= (and b!3158737 ((_ is ElementMatch!9689) (regOne!19891 (regTwo!19890 r!17345)))) b!3159014))

(assert (= (and b!3158737 ((_ is Concat!15010) (regOne!19891 (regTwo!19890 r!17345)))) b!3159015))

(assert (= (and b!3158737 ((_ is Star!9689) (regOne!19891 (regTwo!19890 r!17345)))) b!3159016))

(assert (= (and b!3158737 ((_ is Union!9689) (regOne!19891 (regTwo!19890 r!17345)))) b!3159017))

(declare-fun e!1968109 () Bool)

(assert (=> b!3158737 (= tp!992928 e!1968109)))

(declare-fun b!3159021 () Bool)

(declare-fun tp!993032 () Bool)

(declare-fun tp!993033 () Bool)

(assert (=> b!3159021 (= e!1968109 (and tp!993032 tp!993033))))

(declare-fun b!3159018 () Bool)

(assert (=> b!3159018 (= e!1968109 tp_is_empty!16941)))

(declare-fun b!3159019 () Bool)

(declare-fun tp!993035 () Bool)

(declare-fun tp!993031 () Bool)

(assert (=> b!3159019 (= e!1968109 (and tp!993035 tp!993031))))

(declare-fun b!3159020 () Bool)

(declare-fun tp!993034 () Bool)

(assert (=> b!3159020 (= e!1968109 tp!993034)))

(assert (= (and b!3158737 ((_ is ElementMatch!9689) (regTwo!19891 (regTwo!19890 r!17345)))) b!3159018))

(assert (= (and b!3158737 ((_ is Concat!15010) (regTwo!19891 (regTwo!19890 r!17345)))) b!3159019))

(assert (= (and b!3158737 ((_ is Star!9689) (regTwo!19891 (regTwo!19890 r!17345)))) b!3159020))

(assert (= (and b!3158737 ((_ is Union!9689) (regTwo!19891 (regTwo!19890 r!17345)))) b!3159021))

(declare-fun e!1968110 () Bool)

(assert (=> b!3158717 (= tp!992902 e!1968110)))

(declare-fun b!3159025 () Bool)

(declare-fun tp!993037 () Bool)

(declare-fun tp!993038 () Bool)

(assert (=> b!3159025 (= e!1968110 (and tp!993037 tp!993038))))

(declare-fun b!3159022 () Bool)

(assert (=> b!3159022 (= e!1968110 tp_is_empty!16941)))

(declare-fun b!3159023 () Bool)

(declare-fun tp!993040 () Bool)

(declare-fun tp!993036 () Bool)

(assert (=> b!3159023 (= e!1968110 (and tp!993040 tp!993036))))

(declare-fun b!3159024 () Bool)

(declare-fun tp!993039 () Bool)

(assert (=> b!3159024 (= e!1968110 tp!993039)))

(assert (= (and b!3158717 ((_ is ElementMatch!9689) (regOne!19891 (reg!10018 r!17345)))) b!3159022))

(assert (= (and b!3158717 ((_ is Concat!15010) (regOne!19891 (reg!10018 r!17345)))) b!3159023))

(assert (= (and b!3158717 ((_ is Star!9689) (regOne!19891 (reg!10018 r!17345)))) b!3159024))

(assert (= (and b!3158717 ((_ is Union!9689) (regOne!19891 (reg!10018 r!17345)))) b!3159025))

(declare-fun e!1968111 () Bool)

(assert (=> b!3158717 (= tp!992903 e!1968111)))

(declare-fun b!3159029 () Bool)

(declare-fun tp!993042 () Bool)

(declare-fun tp!993043 () Bool)

(assert (=> b!3159029 (= e!1968111 (and tp!993042 tp!993043))))

(declare-fun b!3159026 () Bool)

(assert (=> b!3159026 (= e!1968111 tp_is_empty!16941)))

(declare-fun b!3159027 () Bool)

(declare-fun tp!993045 () Bool)

(declare-fun tp!993041 () Bool)

(assert (=> b!3159027 (= e!1968111 (and tp!993045 tp!993041))))

(declare-fun b!3159028 () Bool)

(declare-fun tp!993044 () Bool)

(assert (=> b!3159028 (= e!1968111 tp!993044)))

(assert (= (and b!3158717 ((_ is ElementMatch!9689) (regTwo!19891 (reg!10018 r!17345)))) b!3159026))

(assert (= (and b!3158717 ((_ is Concat!15010) (regTwo!19891 (reg!10018 r!17345)))) b!3159027))

(assert (= (and b!3158717 ((_ is Star!9689) (regTwo!19891 (reg!10018 r!17345)))) b!3159028))

(assert (= (and b!3158717 ((_ is Union!9689) (regTwo!19891 (reg!10018 r!17345)))) b!3159029))

(declare-fun e!1968112 () Bool)

(assert (=> b!3158716 (= tp!992904 e!1968112)))

(declare-fun b!3159033 () Bool)

(declare-fun tp!993047 () Bool)

(declare-fun tp!993048 () Bool)

(assert (=> b!3159033 (= e!1968112 (and tp!993047 tp!993048))))

(declare-fun b!3159030 () Bool)

(assert (=> b!3159030 (= e!1968112 tp_is_empty!16941)))

(declare-fun b!3159031 () Bool)

(declare-fun tp!993050 () Bool)

(declare-fun tp!993046 () Bool)

(assert (=> b!3159031 (= e!1968112 (and tp!993050 tp!993046))))

(declare-fun b!3159032 () Bool)

(declare-fun tp!993049 () Bool)

(assert (=> b!3159032 (= e!1968112 tp!993049)))

(assert (= (and b!3158716 ((_ is ElementMatch!9689) (reg!10018 (reg!10018 r!17345)))) b!3159030))

(assert (= (and b!3158716 ((_ is Concat!15010) (reg!10018 (reg!10018 r!17345)))) b!3159031))

(assert (= (and b!3158716 ((_ is Star!9689) (reg!10018 (reg!10018 r!17345)))) b!3159032))

(assert (= (and b!3158716 ((_ is Union!9689) (reg!10018 (reg!10018 r!17345)))) b!3159033))

(declare-fun e!1968113 () Bool)

(assert (=> b!3158725 (= tp!992912 e!1968113)))

(declare-fun b!3159037 () Bool)

(declare-fun tp!993052 () Bool)

(declare-fun tp!993053 () Bool)

(assert (=> b!3159037 (= e!1968113 (and tp!993052 tp!993053))))

(declare-fun b!3159034 () Bool)

(assert (=> b!3159034 (= e!1968113 tp_is_empty!16941)))

(declare-fun b!3159035 () Bool)

(declare-fun tp!993055 () Bool)

(declare-fun tp!993051 () Bool)

(assert (=> b!3159035 (= e!1968113 (and tp!993055 tp!993051))))

(declare-fun b!3159036 () Bool)

(declare-fun tp!993054 () Bool)

(assert (=> b!3159036 (= e!1968113 tp!993054)))

(assert (= (and b!3158725 ((_ is ElementMatch!9689) (regOne!19891 (regOne!19890 r!17345)))) b!3159034))

(assert (= (and b!3158725 ((_ is Concat!15010) (regOne!19891 (regOne!19890 r!17345)))) b!3159035))

(assert (= (and b!3158725 ((_ is Star!9689) (regOne!19891 (regOne!19890 r!17345)))) b!3159036))

(assert (= (and b!3158725 ((_ is Union!9689) (regOne!19891 (regOne!19890 r!17345)))) b!3159037))

(declare-fun e!1968114 () Bool)

(assert (=> b!3158725 (= tp!992913 e!1968114)))

(declare-fun b!3159041 () Bool)

(declare-fun tp!993057 () Bool)

(declare-fun tp!993058 () Bool)

(assert (=> b!3159041 (= e!1968114 (and tp!993057 tp!993058))))

(declare-fun b!3159038 () Bool)

(assert (=> b!3159038 (= e!1968114 tp_is_empty!16941)))

(declare-fun b!3159039 () Bool)

(declare-fun tp!993060 () Bool)

(declare-fun tp!993056 () Bool)

(assert (=> b!3159039 (= e!1968114 (and tp!993060 tp!993056))))

(declare-fun b!3159040 () Bool)

(declare-fun tp!993059 () Bool)

(assert (=> b!3159040 (= e!1968114 tp!993059)))

(assert (= (and b!3158725 ((_ is ElementMatch!9689) (regTwo!19891 (regOne!19890 r!17345)))) b!3159038))

(assert (= (and b!3158725 ((_ is Concat!15010) (regTwo!19891 (regOne!19890 r!17345)))) b!3159039))

(assert (= (and b!3158725 ((_ is Star!9689) (regTwo!19891 (regOne!19890 r!17345)))) b!3159040))

(assert (= (and b!3158725 ((_ is Union!9689) (regTwo!19891 (regOne!19890 r!17345)))) b!3159041))

(declare-fun e!1968115 () Bool)

(assert (=> b!3158747 (= tp!992945 e!1968115)))

(declare-fun b!3159045 () Bool)

(declare-fun tp!993062 () Bool)

(declare-fun tp!993063 () Bool)

(assert (=> b!3159045 (= e!1968115 (and tp!993062 tp!993063))))

(declare-fun b!3159042 () Bool)

(assert (=> b!3159042 (= e!1968115 tp_is_empty!16941)))

(declare-fun b!3159043 () Bool)

(declare-fun tp!993065 () Bool)

(declare-fun tp!993061 () Bool)

(assert (=> b!3159043 (= e!1968115 (and tp!993065 tp!993061))))

(declare-fun b!3159044 () Bool)

(declare-fun tp!993064 () Bool)

(assert (=> b!3159044 (= e!1968115 tp!993064)))

(assert (= (and b!3158747 ((_ is ElementMatch!9689) (regOne!19890 (regTwo!19891 r!17345)))) b!3159042))

(assert (= (and b!3158747 ((_ is Concat!15010) (regOne!19890 (regTwo!19891 r!17345)))) b!3159043))

(assert (= (and b!3158747 ((_ is Star!9689) (regOne!19890 (regTwo!19891 r!17345)))) b!3159044))

(assert (= (and b!3158747 ((_ is Union!9689) (regOne!19890 (regTwo!19891 r!17345)))) b!3159045))

(declare-fun e!1968116 () Bool)

(assert (=> b!3158747 (= tp!992941 e!1968116)))

(declare-fun b!3159049 () Bool)

(declare-fun tp!993067 () Bool)

(declare-fun tp!993068 () Bool)

(assert (=> b!3159049 (= e!1968116 (and tp!993067 tp!993068))))

(declare-fun b!3159046 () Bool)

(assert (=> b!3159046 (= e!1968116 tp_is_empty!16941)))

(declare-fun b!3159047 () Bool)

(declare-fun tp!993070 () Bool)

(declare-fun tp!993066 () Bool)

(assert (=> b!3159047 (= e!1968116 (and tp!993070 tp!993066))))

(declare-fun b!3159048 () Bool)

(declare-fun tp!993069 () Bool)

(assert (=> b!3159048 (= e!1968116 tp!993069)))

(assert (= (and b!3158747 ((_ is ElementMatch!9689) (regTwo!19890 (regTwo!19891 r!17345)))) b!3159046))

(assert (= (and b!3158747 ((_ is Concat!15010) (regTwo!19890 (regTwo!19891 r!17345)))) b!3159047))

(assert (= (and b!3158747 ((_ is Star!9689) (regTwo!19890 (regTwo!19891 r!17345)))) b!3159048))

(assert (= (and b!3158747 ((_ is Union!9689) (regTwo!19890 (regTwo!19891 r!17345)))) b!3159049))

(check-sat (not b!3159040) (not b!3158991) (not bm!228716) (not bm!228702) (not bm!228699) (not b!3159008) (not b!3158965) (not b!3158776) (not b!3158967) (not b!3159043) (not b!3159017) (not b!3159007) (not b!3158988) (not bm!228705) (not b!3158818) (not b!3158846) (not bm!228681) (not b!3158999) (not b!3159041) (not b!3159032) (not b!3158834) (not bm!228677) (not b!3158955) (not b!3159023) (not b!3158902) (not b!3159028) (not b!3159016) (not b!3159047) (not b!3159000) (not bm!228671) (not b!3158968) (not bm!228689) (not b!3158995) (not b!3158956) (not b!3158996) (not bm!228710) (not bm!228685) (not bm!228693) (not b!3158794) (not bm!228668) (not bm!228690) (not b!3158868) (not b!3158984) (not b!3158976) (not b!3158951) (not d!868206) (not b!3159011) (not bm!228672) (not b!3158971) (not bm!228717) (not b!3159039) (not b!3159019) (not d!868230) (not bm!228712) (not b!3158946) (not b!3159025) (not b!3158987) (not d!868216) (not b!3159049) (not bm!228666) (not b!3158985) (not b!3158963) (not b!3158980) (not d!868232) (not b!3158893) (not b!3158993) (not b!3158989) (not b!3158803) (not bm!228696) (not bm!228675) (not b!3159048) (not b!3158957) (not d!868226) (not b!3158959) (not b!3158969) (not b!3158983) (not b!3158992) (not b!3159020) (not bm!228695) (not bm!228691) (not b!3158953) (not b!3159015) (not bm!228707) (not b!3158960) (not b!3158785) (not bm!228688) (not bm!228719) (not b!3159012) (not b!3158975) (not b!3159033) (not b!3158937) (not bm!228698) (not b!3159045) (not b!3159044) (not bm!228674) (not b!3158964) (not d!868214) (not b!3158952) (not b!3158997) tp_is_empty!16941 (not b!3158973) (not b!3158812) (not b!3159021) (not b!3159013) (not bm!228683) (not b!3159003) (not b!3159009) (not b!3158918) (not b!3158977) (not bm!228680) (not bm!228706) (not b!3159036) (not b!3159037) (not b!3159005) (not bm!228667) (not bm!228703) (not b!3158972) (not d!868224) (not b!3159024) (not b!3159001) (not bm!228720) (not bm!228714) (not b!3159027) (not b!3159031) (not b!3158961) (not b!3159035) (not bm!228700) (not b!3159004) (not bm!228715) (not bm!228678) (not b!3158852) (not d!868212) (not b!3158979) (not d!868222) (not bm!228686) (not b!3159029) (not bm!228669) (not bm!228713) (not d!868204) (not b!3158877) (not bm!228709) (not b!3158981))
(check-sat)
