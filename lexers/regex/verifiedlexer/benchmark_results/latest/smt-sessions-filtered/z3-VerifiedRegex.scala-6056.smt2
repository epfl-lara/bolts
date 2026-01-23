; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295904 () Bool)

(assert start!295904)

(declare-fun b!3139766 () Bool)

(declare-fun e!1958607 () Bool)

(declare-datatypes ((C!19512 0))(
  ( (C!19513 (val!11792 Int)) )
))
(declare-datatypes ((Regex!9663 0))(
  ( (ElementMatch!9663 (c!527645 C!19512)) (Concat!14984 (regOne!19838 Regex!9663) (regTwo!19838 Regex!9663)) (EmptyExpr!9663) (Star!9663 (reg!9992 Regex!9663)) (EmptyLang!9663) (Union!9663 (regOne!19839 Regex!9663) (regTwo!19839 Regex!9663)) )
))
(declare-fun r!17345 () Regex!9663)

(declare-fun regexDepth!123 (Regex!9663) Int)

(assert (=> b!3139766 (= e!1958607 (>= (regexDepth!123 (reg!9992 r!17345)) (regexDepth!123 r!17345)))))

(declare-fun b!3139767 () Bool)

(declare-fun e!1958606 () Bool)

(declare-fun tp!983321 () Bool)

(declare-fun tp!983322 () Bool)

(assert (=> b!3139767 (= e!1958606 (and tp!983321 tp!983322))))

(declare-fun res!1282645 () Bool)

(assert (=> start!295904 (=> (not res!1282645) (not e!1958607))))

(declare-fun validRegex!4396 (Regex!9663) Bool)

(assert (=> start!295904 (= res!1282645 (validRegex!4396 r!17345))))

(assert (=> start!295904 e!1958607))

(assert (=> start!295904 e!1958606))

(declare-fun b!3139768 () Bool)

(declare-fun tp!983323 () Bool)

(assert (=> b!3139768 (= e!1958606 tp!983323)))

(declare-fun b!3139769 () Bool)

(declare-fun res!1282646 () Bool)

(assert (=> b!3139769 (=> (not res!1282646) (not e!1958607))))

(get-info :version)

(assert (=> b!3139769 (= res!1282646 (and (not ((_ is EmptyLang!9663) r!17345)) (not ((_ is ElementMatch!9663) r!17345)) (not ((_ is EmptyExpr!9663) r!17345)) ((_ is Star!9663) r!17345)))))

(declare-fun b!3139770 () Bool)

(declare-fun tp!983324 () Bool)

(declare-fun tp!983325 () Bool)

(assert (=> b!3139770 (= e!1958606 (and tp!983324 tp!983325))))

(declare-fun b!3139771 () Bool)

(declare-fun tp_is_empty!16889 () Bool)

(assert (=> b!3139771 (= e!1958606 tp_is_empty!16889)))

(assert (= (and start!295904 res!1282645) b!3139769))

(assert (= (and b!3139769 res!1282646) b!3139766))

(assert (= (and start!295904 ((_ is ElementMatch!9663) r!17345)) b!3139771))

(assert (= (and start!295904 ((_ is Concat!14984) r!17345)) b!3139767))

(assert (= (and start!295904 ((_ is Star!9663) r!17345)) b!3139768))

(assert (= (and start!295904 ((_ is Union!9663) r!17345)) b!3139770))

(declare-fun m!3417611 () Bool)

(assert (=> b!3139766 m!3417611))

(declare-fun m!3417613 () Bool)

(assert (=> b!3139766 m!3417613))

(declare-fun m!3417615 () Bool)

(assert (=> start!295904 m!3417615))

(check-sat (not b!3139766) (not b!3139767) (not b!3139770) (not start!295904) (not b!3139768) tp_is_empty!16889)
(check-sat)
(get-model)

(declare-fun d!865613 () Bool)

(declare-fun res!1282673 () Bool)

(declare-fun e!1958646 () Bool)

(assert (=> d!865613 (=> res!1282673 e!1958646)))

(assert (=> d!865613 (= res!1282673 ((_ is ElementMatch!9663) r!17345))))

(assert (=> d!865613 (= (validRegex!4396 r!17345) e!1958646)))

(declare-fun call!225329 () Bool)

(declare-fun c!527657 () Bool)

(declare-fun c!527656 () Bool)

(declare-fun bm!225323 () Bool)

(assert (=> bm!225323 (= call!225329 (validRegex!4396 (ite c!527656 (reg!9992 r!17345) (ite c!527657 (regOne!19839 r!17345) (regTwo!19838 r!17345)))))))

(declare-fun b!3139817 () Bool)

(declare-fun e!1958644 () Bool)

(assert (=> b!3139817 (= e!1958644 call!225329)))

(declare-fun bm!225324 () Bool)

(declare-fun call!225330 () Bool)

(assert (=> bm!225324 (= call!225330 (validRegex!4396 (ite c!527657 (regTwo!19839 r!17345) (regOne!19838 r!17345))))))

(declare-fun b!3139818 () Bool)

(declare-fun e!1958645 () Bool)

(assert (=> b!3139818 (= e!1958645 e!1958644)))

(declare-fun res!1282676 () Bool)

(declare-fun nullable!3297 (Regex!9663) Bool)

(assert (=> b!3139818 (= res!1282676 (not (nullable!3297 (reg!9992 r!17345))))))

(assert (=> b!3139818 (=> (not res!1282676) (not e!1958644))))

(declare-fun b!3139819 () Bool)

(declare-fun e!1958649 () Bool)

(declare-fun call!225328 () Bool)

(assert (=> b!3139819 (= e!1958649 call!225328)))

(declare-fun b!3139820 () Bool)

(declare-fun res!1282675 () Bool)

(declare-fun e!1958648 () Bool)

(assert (=> b!3139820 (=> (not res!1282675) (not e!1958648))))

(assert (=> b!3139820 (= res!1282675 call!225328)))

(declare-fun e!1958647 () Bool)

(assert (=> b!3139820 (= e!1958647 e!1958648)))

(declare-fun b!3139821 () Bool)

(declare-fun e!1958643 () Bool)

(assert (=> b!3139821 (= e!1958643 e!1958649)))

(declare-fun res!1282672 () Bool)

(assert (=> b!3139821 (=> (not res!1282672) (not e!1958649))))

(assert (=> b!3139821 (= res!1282672 call!225330)))

(declare-fun b!3139822 () Bool)

(declare-fun res!1282674 () Bool)

(assert (=> b!3139822 (=> res!1282674 e!1958643)))

(assert (=> b!3139822 (= res!1282674 (not ((_ is Concat!14984) r!17345)))))

(assert (=> b!3139822 (= e!1958647 e!1958643)))

(declare-fun bm!225325 () Bool)

(assert (=> bm!225325 (= call!225328 call!225329)))

(declare-fun b!3139823 () Bool)

(assert (=> b!3139823 (= e!1958646 e!1958645)))

(assert (=> b!3139823 (= c!527656 ((_ is Star!9663) r!17345))))

(declare-fun b!3139824 () Bool)

(assert (=> b!3139824 (= e!1958648 call!225330)))

(declare-fun b!3139825 () Bool)

(assert (=> b!3139825 (= e!1958645 e!1958647)))

(assert (=> b!3139825 (= c!527657 ((_ is Union!9663) r!17345))))

(assert (= (and d!865613 (not res!1282673)) b!3139823))

(assert (= (and b!3139823 c!527656) b!3139818))

(assert (= (and b!3139823 (not c!527656)) b!3139825))

(assert (= (and b!3139818 res!1282676) b!3139817))

(assert (= (and b!3139825 c!527657) b!3139820))

(assert (= (and b!3139825 (not c!527657)) b!3139822))

(assert (= (and b!3139820 res!1282675) b!3139824))

(assert (= (and b!3139822 (not res!1282674)) b!3139821))

(assert (= (and b!3139821 res!1282672) b!3139819))

(assert (= (or b!3139824 b!3139821) bm!225324))

(assert (= (or b!3139820 b!3139819) bm!225325))

(assert (= (or b!3139817 bm!225325) bm!225323))

(declare-fun m!3417623 () Bool)

(assert (=> bm!225323 m!3417623))

(declare-fun m!3417625 () Bool)

(assert (=> bm!225324 m!3417625))

(declare-fun m!3417627 () Bool)

(assert (=> b!3139818 m!3417627))

(assert (=> start!295904 d!865613))

(declare-fun b!3139928 () Bool)

(declare-fun c!527701 () Bool)

(assert (=> b!3139928 (= c!527701 ((_ is Union!9663) (reg!9992 r!17345)))))

(declare-fun e!1958713 () Int)

(declare-fun e!1958711 () Int)

(assert (=> b!3139928 (= e!1958713 e!1958711)))

(declare-fun call!225379 () Int)

(declare-fun call!225375 () Int)

(declare-fun bm!225368 () Bool)

(declare-fun call!225377 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!225368 (= call!225377 (maxBigInt!0 (ite c!527701 call!225375 call!225379) (ite c!527701 call!225379 call!225375)))))

(declare-fun b!3139929 () Bool)

(declare-fun e!1958710 () Int)

(assert (=> b!3139929 (= e!1958710 1)))

(declare-fun d!865617 () Bool)

(declare-fun e!1958719 () Bool)

(assert (=> d!865617 e!1958719))

(declare-fun res!1282696 () Bool)

(assert (=> d!865617 (=> (not res!1282696) (not e!1958719))))

(declare-fun lt!1061095 () Int)

(assert (=> d!865617 (= res!1282696 (> lt!1061095 0))))

(declare-fun e!1958717 () Int)

(assert (=> d!865617 (= lt!1061095 e!1958717)))

(declare-fun c!527705 () Bool)

(assert (=> d!865617 (= c!527705 ((_ is ElementMatch!9663) (reg!9992 r!17345)))))

(assert (=> d!865617 (= (regexDepth!123 (reg!9992 r!17345)) lt!1061095)))

(declare-fun b!3139930 () Bool)

(assert (=> b!3139930 (= e!1958711 (+ 1 call!225377))))

(declare-fun bm!225369 () Bool)

(assert (=> bm!225369 (= call!225379 (regexDepth!123 (ite c!527701 (regTwo!19839 (reg!9992 r!17345)) (regOne!19838 (reg!9992 r!17345)))))))

(declare-fun b!3139931 () Bool)

(declare-fun e!1958715 () Bool)

(declare-fun call!225378 () Int)

(assert (=> b!3139931 (= e!1958715 (> lt!1061095 call!225378))))

(declare-fun b!3139932 () Bool)

(declare-fun e!1958716 () Bool)

(assert (=> b!3139932 (= e!1958716 (= lt!1061095 1))))

(declare-fun b!3139933 () Bool)

(declare-fun e!1958718 () Bool)

(declare-fun e!1958712 () Bool)

(assert (=> b!3139933 (= e!1958718 e!1958712)))

(declare-fun c!527702 () Bool)

(assert (=> b!3139933 (= c!527702 ((_ is Concat!14984) (reg!9992 r!17345)))))

(declare-fun call!225373 () Int)

(declare-fun bm!225370 () Bool)

(declare-fun c!527706 () Bool)

(assert (=> bm!225370 (= call!225373 (regexDepth!123 (ite c!527706 (reg!9992 (reg!9992 r!17345)) (ite c!527701 (regOne!19839 (reg!9992 r!17345)) (regTwo!19838 (reg!9992 r!17345))))))))

(declare-fun b!3139934 () Bool)

(assert (=> b!3139934 (= e!1958719 e!1958718)))

(declare-fun c!527703 () Bool)

(assert (=> b!3139934 (= c!527703 ((_ is Union!9663) (reg!9992 r!17345)))))

(declare-fun b!3139935 () Bool)

(declare-fun e!1958714 () Bool)

(declare-fun call!225374 () Int)

(assert (=> b!3139935 (= e!1958714 (> lt!1061095 call!225374))))

(declare-fun bm!225371 () Bool)

(declare-fun call!225376 () Int)

(assert (=> bm!225371 (= call!225376 (regexDepth!123 (ite c!527703 (regOne!19839 (reg!9992 r!17345)) (regOne!19838 (reg!9992 r!17345)))))))

(declare-fun bm!225372 () Bool)

(assert (=> bm!225372 (= call!225378 call!225374)))

(declare-fun bm!225373 () Bool)

(assert (=> bm!225373 (= call!225374 (regexDepth!123 (ite c!527703 (regTwo!19839 (reg!9992 r!17345)) (ite c!527702 (regTwo!19838 (reg!9992 r!17345)) (reg!9992 (reg!9992 r!17345))))))))

(declare-fun b!3139936 () Bool)

(assert (=> b!3139936 (= e!1958717 e!1958713)))

(assert (=> b!3139936 (= c!527706 ((_ is Star!9663) (reg!9992 r!17345)))))

(declare-fun b!3139937 () Bool)

(declare-fun res!1282697 () Bool)

(assert (=> b!3139937 (=> (not res!1282697) (not e!1958715))))

(assert (=> b!3139937 (= res!1282697 (> lt!1061095 call!225376))))

(assert (=> b!3139937 (= e!1958712 e!1958715)))

(declare-fun b!3139938 () Bool)

(assert (=> b!3139938 (= e!1958717 1)))

(declare-fun b!3139939 () Bool)

(declare-fun c!527704 () Bool)

(assert (=> b!3139939 (= c!527704 ((_ is Star!9663) (reg!9992 r!17345)))))

(assert (=> b!3139939 (= e!1958712 e!1958716)))

(declare-fun bm!225374 () Bool)

(assert (=> bm!225374 (= call!225375 call!225373)))

(declare-fun b!3139940 () Bool)

(assert (=> b!3139940 (= e!1958713 (+ 1 call!225373))))

(declare-fun b!3139941 () Bool)

(assert (=> b!3139941 (= e!1958716 (> lt!1061095 call!225378))))

(declare-fun b!3139942 () Bool)

(assert (=> b!3139942 (= e!1958711 e!1958710)))

(declare-fun c!527700 () Bool)

(assert (=> b!3139942 (= c!527700 ((_ is Concat!14984) (reg!9992 r!17345)))))

(declare-fun b!3139943 () Bool)

(assert (=> b!3139943 (= e!1958710 (+ 1 call!225377))))

(declare-fun b!3139944 () Bool)

(assert (=> b!3139944 (= e!1958718 e!1958714)))

(declare-fun res!1282695 () Bool)

(assert (=> b!3139944 (= res!1282695 (> lt!1061095 call!225376))))

(assert (=> b!3139944 (=> (not res!1282695) (not e!1958714))))

(assert (= (and d!865617 c!527705) b!3139938))

(assert (= (and d!865617 (not c!527705)) b!3139936))

(assert (= (and b!3139936 c!527706) b!3139940))

(assert (= (and b!3139936 (not c!527706)) b!3139928))

(assert (= (and b!3139928 c!527701) b!3139930))

(assert (= (and b!3139928 (not c!527701)) b!3139942))

(assert (= (and b!3139942 c!527700) b!3139943))

(assert (= (and b!3139942 (not c!527700)) b!3139929))

(assert (= (or b!3139930 b!3139943) bm!225374))

(assert (= (or b!3139930 b!3139943) bm!225369))

(assert (= (or b!3139930 b!3139943) bm!225368))

(assert (= (or b!3139940 bm!225374) bm!225370))

(assert (= (and d!865617 res!1282696) b!3139934))

(assert (= (and b!3139934 c!527703) b!3139944))

(assert (= (and b!3139934 (not c!527703)) b!3139933))

(assert (= (and b!3139944 res!1282695) b!3139935))

(assert (= (and b!3139933 c!527702) b!3139937))

(assert (= (and b!3139933 (not c!527702)) b!3139939))

(assert (= (and b!3139937 res!1282697) b!3139931))

(assert (= (and b!3139939 c!527704) b!3139941))

(assert (= (and b!3139939 (not c!527704)) b!3139932))

(assert (= (or b!3139931 b!3139941) bm!225372))

(assert (= (or b!3139944 b!3139937) bm!225371))

(assert (= (or b!3139935 bm!225372) bm!225373))

(declare-fun m!3417649 () Bool)

(assert (=> bm!225371 m!3417649))

(declare-fun m!3417651 () Bool)

(assert (=> bm!225373 m!3417651))

(declare-fun m!3417653 () Bool)

(assert (=> bm!225368 m!3417653))

(declare-fun m!3417655 () Bool)

(assert (=> bm!225369 m!3417655))

(declare-fun m!3417657 () Bool)

(assert (=> bm!225370 m!3417657))

(assert (=> b!3139766 d!865617))

(declare-fun b!3139959 () Bool)

(declare-fun c!527708 () Bool)

(assert (=> b!3139959 (= c!527708 ((_ is Union!9663) r!17345))))

(declare-fun e!1958726 () Int)

(declare-fun e!1958723 () Int)

(assert (=> b!3139959 (= e!1958726 e!1958723)))

(declare-fun call!225384 () Int)

(declare-fun call!225386 () Int)

(declare-fun bm!225375 () Bool)

(declare-fun call!225382 () Int)

(assert (=> bm!225375 (= call!225384 (maxBigInt!0 (ite c!527708 call!225382 call!225386) (ite c!527708 call!225386 call!225382)))))

(declare-fun b!3139960 () Bool)

(declare-fun e!1958722 () Int)

(assert (=> b!3139960 (= e!1958722 1)))

(declare-fun d!865621 () Bool)

(declare-fun e!1958732 () Bool)

(assert (=> d!865621 e!1958732))

(declare-fun res!1282699 () Bool)

(assert (=> d!865621 (=> (not res!1282699) (not e!1958732))))

(declare-fun lt!1061096 () Int)

(assert (=> d!865621 (= res!1282699 (> lt!1061096 0))))

(declare-fun e!1958730 () Int)

(assert (=> d!865621 (= lt!1061096 e!1958730)))

(declare-fun c!527712 () Bool)

(assert (=> d!865621 (= c!527712 ((_ is ElementMatch!9663) r!17345))))

(assert (=> d!865621 (= (regexDepth!123 r!17345) lt!1061096)))

(declare-fun b!3139961 () Bool)

(assert (=> b!3139961 (= e!1958723 (+ 1 call!225384))))

(declare-fun bm!225376 () Bool)

(assert (=> bm!225376 (= call!225386 (regexDepth!123 (ite c!527708 (regTwo!19839 r!17345) (regOne!19838 r!17345))))))

(declare-fun b!3139962 () Bool)

(declare-fun e!1958728 () Bool)

(declare-fun call!225385 () Int)

(assert (=> b!3139962 (= e!1958728 (> lt!1061096 call!225385))))

(declare-fun b!3139963 () Bool)

(declare-fun e!1958729 () Bool)

(assert (=> b!3139963 (= e!1958729 (= lt!1061096 1))))

(declare-fun b!3139964 () Bool)

(declare-fun e!1958731 () Bool)

(declare-fun e!1958724 () Bool)

(assert (=> b!3139964 (= e!1958731 e!1958724)))

(declare-fun c!527709 () Bool)

(assert (=> b!3139964 (= c!527709 ((_ is Concat!14984) r!17345))))

(declare-fun c!527713 () Bool)

(declare-fun call!225380 () Int)

(declare-fun bm!225377 () Bool)

(assert (=> bm!225377 (= call!225380 (regexDepth!123 (ite c!527713 (reg!9992 r!17345) (ite c!527708 (regOne!19839 r!17345) (regTwo!19838 r!17345)))))))

(declare-fun b!3139965 () Bool)

(assert (=> b!3139965 (= e!1958732 e!1958731)))

(declare-fun c!527710 () Bool)

(assert (=> b!3139965 (= c!527710 ((_ is Union!9663) r!17345))))

(declare-fun b!3139966 () Bool)

(declare-fun e!1958727 () Bool)

(declare-fun call!225381 () Int)

(assert (=> b!3139966 (= e!1958727 (> lt!1061096 call!225381))))

(declare-fun bm!225378 () Bool)

(declare-fun call!225383 () Int)

(assert (=> bm!225378 (= call!225383 (regexDepth!123 (ite c!527710 (regOne!19839 r!17345) (regOne!19838 r!17345))))))

(declare-fun bm!225379 () Bool)

(assert (=> bm!225379 (= call!225385 call!225381)))

(declare-fun bm!225380 () Bool)

(assert (=> bm!225380 (= call!225381 (regexDepth!123 (ite c!527710 (regTwo!19839 r!17345) (ite c!527709 (regTwo!19838 r!17345) (reg!9992 r!17345)))))))

(declare-fun b!3139967 () Bool)

(assert (=> b!3139967 (= e!1958730 e!1958726)))

(assert (=> b!3139967 (= c!527713 ((_ is Star!9663) r!17345))))

(declare-fun b!3139968 () Bool)

(declare-fun res!1282700 () Bool)

(assert (=> b!3139968 (=> (not res!1282700) (not e!1958728))))

(assert (=> b!3139968 (= res!1282700 (> lt!1061096 call!225383))))

(assert (=> b!3139968 (= e!1958724 e!1958728)))

(declare-fun b!3139969 () Bool)

(assert (=> b!3139969 (= e!1958730 1)))

(declare-fun b!3139970 () Bool)

(declare-fun c!527711 () Bool)

(assert (=> b!3139970 (= c!527711 ((_ is Star!9663) r!17345))))

(assert (=> b!3139970 (= e!1958724 e!1958729)))

(declare-fun bm!225381 () Bool)

(assert (=> bm!225381 (= call!225382 call!225380)))

(declare-fun b!3139971 () Bool)

(assert (=> b!3139971 (= e!1958726 (+ 1 call!225380))))

(declare-fun b!3139972 () Bool)

(assert (=> b!3139972 (= e!1958729 (> lt!1061096 call!225385))))

(declare-fun b!3139973 () Bool)

(assert (=> b!3139973 (= e!1958723 e!1958722)))

(declare-fun c!527707 () Bool)

(assert (=> b!3139973 (= c!527707 ((_ is Concat!14984) r!17345))))

(declare-fun b!3139974 () Bool)

(assert (=> b!3139974 (= e!1958722 (+ 1 call!225384))))

(declare-fun b!3139975 () Bool)

(assert (=> b!3139975 (= e!1958731 e!1958727)))

(declare-fun res!1282698 () Bool)

(assert (=> b!3139975 (= res!1282698 (> lt!1061096 call!225383))))

(assert (=> b!3139975 (=> (not res!1282698) (not e!1958727))))

(assert (= (and d!865621 c!527712) b!3139969))

(assert (= (and d!865621 (not c!527712)) b!3139967))

(assert (= (and b!3139967 c!527713) b!3139971))

(assert (= (and b!3139967 (not c!527713)) b!3139959))

(assert (= (and b!3139959 c!527708) b!3139961))

(assert (= (and b!3139959 (not c!527708)) b!3139973))

(assert (= (and b!3139973 c!527707) b!3139974))

(assert (= (and b!3139973 (not c!527707)) b!3139960))

(assert (= (or b!3139961 b!3139974) bm!225381))

(assert (= (or b!3139961 b!3139974) bm!225376))

(assert (= (or b!3139961 b!3139974) bm!225375))

(assert (= (or b!3139971 bm!225381) bm!225377))

(assert (= (and d!865621 res!1282699) b!3139965))

(assert (= (and b!3139965 c!527710) b!3139975))

(assert (= (and b!3139965 (not c!527710)) b!3139964))

(assert (= (and b!3139975 res!1282698) b!3139966))

(assert (= (and b!3139964 c!527709) b!3139968))

(assert (= (and b!3139964 (not c!527709)) b!3139970))

(assert (= (and b!3139968 res!1282700) b!3139962))

(assert (= (and b!3139970 c!527711) b!3139972))

(assert (= (and b!3139970 (not c!527711)) b!3139963))

(assert (= (or b!3139962 b!3139972) bm!225379))

(assert (= (or b!3139975 b!3139968) bm!225378))

(assert (= (or b!3139966 bm!225379) bm!225380))

(declare-fun m!3417659 () Bool)

(assert (=> bm!225378 m!3417659))

(declare-fun m!3417661 () Bool)

(assert (=> bm!225380 m!3417661))

(declare-fun m!3417663 () Bool)

(assert (=> bm!225375 m!3417663))

(declare-fun m!3417665 () Bool)

(assert (=> bm!225376 m!3417665))

(declare-fun m!3417667 () Bool)

(assert (=> bm!225377 m!3417667))

(assert (=> b!3139766 d!865621))

(declare-fun e!1958739 () Bool)

(assert (=> b!3139768 (= tp!983323 e!1958739)))

(declare-fun b!3140003 () Bool)

(declare-fun tp!983373 () Bool)

(declare-fun tp!983375 () Bool)

(assert (=> b!3140003 (= e!1958739 (and tp!983373 tp!983375))))

(declare-fun b!3140005 () Bool)

(declare-fun tp!983372 () Bool)

(declare-fun tp!983374 () Bool)

(assert (=> b!3140005 (= e!1958739 (and tp!983372 tp!983374))))

(declare-fun b!3140004 () Bool)

(declare-fun tp!983371 () Bool)

(assert (=> b!3140004 (= e!1958739 tp!983371)))

(declare-fun b!3140002 () Bool)

(assert (=> b!3140002 (= e!1958739 tp_is_empty!16889)))

(assert (= (and b!3139768 ((_ is ElementMatch!9663) (reg!9992 r!17345))) b!3140002))

(assert (= (and b!3139768 ((_ is Concat!14984) (reg!9992 r!17345))) b!3140003))

(assert (= (and b!3139768 ((_ is Star!9663) (reg!9992 r!17345))) b!3140004))

(assert (= (and b!3139768 ((_ is Union!9663) (reg!9992 r!17345))) b!3140005))

(declare-fun e!1958740 () Bool)

(assert (=> b!3139770 (= tp!983324 e!1958740)))

(declare-fun b!3140007 () Bool)

(declare-fun tp!983378 () Bool)

(declare-fun tp!983380 () Bool)

(assert (=> b!3140007 (= e!1958740 (and tp!983378 tp!983380))))

(declare-fun b!3140009 () Bool)

(declare-fun tp!983377 () Bool)

(declare-fun tp!983379 () Bool)

(assert (=> b!3140009 (= e!1958740 (and tp!983377 tp!983379))))

(declare-fun b!3140008 () Bool)

(declare-fun tp!983376 () Bool)

(assert (=> b!3140008 (= e!1958740 tp!983376)))

(declare-fun b!3140006 () Bool)

(assert (=> b!3140006 (= e!1958740 tp_is_empty!16889)))

(assert (= (and b!3139770 ((_ is ElementMatch!9663) (regOne!19839 r!17345))) b!3140006))

(assert (= (and b!3139770 ((_ is Concat!14984) (regOne!19839 r!17345))) b!3140007))

(assert (= (and b!3139770 ((_ is Star!9663) (regOne!19839 r!17345))) b!3140008))

(assert (= (and b!3139770 ((_ is Union!9663) (regOne!19839 r!17345))) b!3140009))

(declare-fun e!1958741 () Bool)

(assert (=> b!3139770 (= tp!983325 e!1958741)))

(declare-fun b!3140011 () Bool)

(declare-fun tp!983383 () Bool)

(declare-fun tp!983385 () Bool)

(assert (=> b!3140011 (= e!1958741 (and tp!983383 tp!983385))))

(declare-fun b!3140013 () Bool)

(declare-fun tp!983382 () Bool)

(declare-fun tp!983384 () Bool)

(assert (=> b!3140013 (= e!1958741 (and tp!983382 tp!983384))))

(declare-fun b!3140012 () Bool)

(declare-fun tp!983381 () Bool)

(assert (=> b!3140012 (= e!1958741 tp!983381)))

(declare-fun b!3140010 () Bool)

(assert (=> b!3140010 (= e!1958741 tp_is_empty!16889)))

(assert (= (and b!3139770 ((_ is ElementMatch!9663) (regTwo!19839 r!17345))) b!3140010))

(assert (= (and b!3139770 ((_ is Concat!14984) (regTwo!19839 r!17345))) b!3140011))

(assert (= (and b!3139770 ((_ is Star!9663) (regTwo!19839 r!17345))) b!3140012))

(assert (= (and b!3139770 ((_ is Union!9663) (regTwo!19839 r!17345))) b!3140013))

(declare-fun e!1958742 () Bool)

(assert (=> b!3139767 (= tp!983321 e!1958742)))

(declare-fun b!3140015 () Bool)

(declare-fun tp!983388 () Bool)

(declare-fun tp!983390 () Bool)

(assert (=> b!3140015 (= e!1958742 (and tp!983388 tp!983390))))

(declare-fun b!3140017 () Bool)

(declare-fun tp!983387 () Bool)

(declare-fun tp!983389 () Bool)

(assert (=> b!3140017 (= e!1958742 (and tp!983387 tp!983389))))

(declare-fun b!3140016 () Bool)

(declare-fun tp!983386 () Bool)

(assert (=> b!3140016 (= e!1958742 tp!983386)))

(declare-fun b!3140014 () Bool)

(assert (=> b!3140014 (= e!1958742 tp_is_empty!16889)))

(assert (= (and b!3139767 ((_ is ElementMatch!9663) (regOne!19838 r!17345))) b!3140014))

(assert (= (and b!3139767 ((_ is Concat!14984) (regOne!19838 r!17345))) b!3140015))

(assert (= (and b!3139767 ((_ is Star!9663) (regOne!19838 r!17345))) b!3140016))

(assert (= (and b!3139767 ((_ is Union!9663) (regOne!19838 r!17345))) b!3140017))

(declare-fun e!1958743 () Bool)

(assert (=> b!3139767 (= tp!983322 e!1958743)))

(declare-fun b!3140019 () Bool)

(declare-fun tp!983393 () Bool)

(declare-fun tp!983395 () Bool)

(assert (=> b!3140019 (= e!1958743 (and tp!983393 tp!983395))))

(declare-fun b!3140021 () Bool)

(declare-fun tp!983392 () Bool)

(declare-fun tp!983394 () Bool)

(assert (=> b!3140021 (= e!1958743 (and tp!983392 tp!983394))))

(declare-fun b!3140020 () Bool)

(declare-fun tp!983391 () Bool)

(assert (=> b!3140020 (= e!1958743 tp!983391)))

(declare-fun b!3140018 () Bool)

(assert (=> b!3140018 (= e!1958743 tp_is_empty!16889)))

(assert (= (and b!3139767 ((_ is ElementMatch!9663) (regTwo!19838 r!17345))) b!3140018))

(assert (= (and b!3139767 ((_ is Concat!14984) (regTwo!19838 r!17345))) b!3140019))

(assert (= (and b!3139767 ((_ is Star!9663) (regTwo!19838 r!17345))) b!3140020))

(assert (= (and b!3139767 ((_ is Union!9663) (regTwo!19838 r!17345))) b!3140021))

(check-sat (not b!3140009) (not b!3140021) (not b!3140008) (not b!3140011) (not bm!225375) (not b!3140005) (not b!3140012) (not b!3140016) (not bm!225371) (not b!3139818) (not bm!225368) (not b!3140004) (not bm!225378) (not bm!225376) (not bm!225380) (not b!3140015) (not bm!225323) (not b!3140013) (not bm!225324) (not b!3140019) (not b!3140017) (not b!3140007) (not b!3140020) (not bm!225369) (not bm!225373) tp_is_empty!16889 (not b!3140003) (not bm!225377) (not bm!225370))
(check-sat)
