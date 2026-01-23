; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733440 () Bool)

(assert start!733440)

(declare-fun b!7611671 () Bool)

(declare-fun e!4526968 () Bool)

(declare-datatypes ((C!40776 0))(
  ( (C!40777 (val!30828 Int)) )
))
(declare-datatypes ((Regex!20225 0))(
  ( (ElementMatch!20225 (c!1403372 C!40776)) (Concat!29070 (regOne!40962 Regex!20225) (regTwo!40962 Regex!20225)) (EmptyExpr!20225) (Star!20225 (reg!20554 Regex!20225)) (EmptyLang!20225) (Union!20225 (regOne!40963 Regex!20225) (regTwo!40963 Regex!20225)) )
))
(declare-fun r!19218 () Regex!20225)

(declare-fun regexDepth!475 (Regex!20225) Int)

(assert (=> b!7611671 (= e!4526968 (>= (regexDepth!475 (regOne!40962 r!19218)) (regexDepth!475 r!19218)))))

(declare-fun b!7611672 () Bool)

(declare-fun e!4526969 () Bool)

(declare-fun tp!2221466 () Bool)

(declare-fun tp!2221469 () Bool)

(assert (=> b!7611672 (= e!4526969 (and tp!2221466 tp!2221469))))

(declare-fun b!7611673 () Bool)

(declare-fun res!3047379 () Bool)

(assert (=> b!7611673 (=> (not res!3047379) (not e!4526968))))

(get-info :version)

(assert (=> b!7611673 (= res!3047379 (and (not ((_ is ElementMatch!20225) r!19218)) (not ((_ is Star!20225) r!19218)) (not ((_ is Union!20225) r!19218)) ((_ is Concat!29070) r!19218)))))

(declare-fun b!7611674 () Bool)

(declare-fun tp_is_empty!50805 () Bool)

(assert (=> b!7611674 (= e!4526969 tp_is_empty!50805)))

(declare-fun b!7611675 () Bool)

(declare-fun res!3047381 () Bool)

(assert (=> b!7611675 (=> (not res!3047381) (not e!4526968))))

(declare-fun validRegex!10647 (Regex!20225) Bool)

(assert (=> b!7611675 (= res!3047381 (validRegex!10647 (regOne!40962 r!19218)))))

(declare-fun b!7611676 () Bool)

(declare-fun tp!2221467 () Bool)

(assert (=> b!7611676 (= e!4526969 tp!2221467)))

(declare-fun b!7611678 () Bool)

(declare-fun tp!2221468 () Bool)

(declare-fun tp!2221465 () Bool)

(assert (=> b!7611678 (= e!4526969 (and tp!2221468 tp!2221465))))

(declare-fun b!7611679 () Bool)

(declare-fun res!3047378 () Bool)

(assert (=> b!7611679 (=> (not res!3047378) (not e!4526968))))

(declare-fun nullable!8846 (Regex!20225) Bool)

(assert (=> b!7611679 (= res!3047378 (nullable!8846 (regOne!40962 r!19218)))))

(declare-fun res!3047380 () Bool)

(assert (=> start!733440 (=> (not res!3047380) (not e!4526968))))

(assert (=> start!733440 (= res!3047380 (validRegex!10647 r!19218))))

(assert (=> start!733440 e!4526968))

(assert (=> start!733440 e!4526969))

(declare-fun b!7611677 () Bool)

(declare-fun res!3047382 () Bool)

(assert (=> b!7611677 (=> (not res!3047382) (not e!4526968))))

(assert (=> b!7611677 (= res!3047382 (nullable!8846 r!19218))))

(assert (= (and start!733440 res!3047380) b!7611677))

(assert (= (and b!7611677 res!3047382) b!7611673))

(assert (= (and b!7611673 res!3047379) b!7611675))

(assert (= (and b!7611675 res!3047381) b!7611679))

(assert (= (and b!7611679 res!3047378) b!7611671))

(assert (= (and start!733440 ((_ is ElementMatch!20225) r!19218)) b!7611674))

(assert (= (and start!733440 ((_ is Concat!29070) r!19218)) b!7611678))

(assert (= (and start!733440 ((_ is Star!20225) r!19218)) b!7611676))

(assert (= (and start!733440 ((_ is Union!20225) r!19218)) b!7611672))

(declare-fun m!8148314 () Bool)

(assert (=> b!7611671 m!8148314))

(declare-fun m!8148316 () Bool)

(assert (=> b!7611671 m!8148316))

(declare-fun m!8148318 () Bool)

(assert (=> b!7611677 m!8148318))

(declare-fun m!8148320 () Bool)

(assert (=> start!733440 m!8148320))

(declare-fun m!8148322 () Bool)

(assert (=> b!7611679 m!8148322))

(declare-fun m!8148324 () Bool)

(assert (=> b!7611675 m!8148324))

(check-sat (not b!7611671) tp_is_empty!50805 (not b!7611675) (not b!7611679) (not b!7611672) (not start!733440) (not b!7611677) (not b!7611676) (not b!7611678))
(check-sat)
(get-model)

(declare-fun bm!699111 () Bool)

(declare-fun call!699116 () Bool)

(declare-fun c!1403384 () Bool)

(assert (=> bm!699111 (= call!699116 (validRegex!10647 (ite c!1403384 (regOne!40963 r!19218) (regOne!40962 r!19218))))))

(declare-fun bm!699112 () Bool)

(declare-fun call!699118 () Bool)

(declare-fun c!1403383 () Bool)

(assert (=> bm!699112 (= call!699118 (validRegex!10647 (ite c!1403383 (reg!20554 r!19218) (ite c!1403384 (regTwo!40963 r!19218) (regTwo!40962 r!19218)))))))

(declare-fun b!7611725 () Bool)

(declare-fun e!4527009 () Bool)

(declare-fun e!4527007 () Bool)

(assert (=> b!7611725 (= e!4527009 e!4527007)))

(assert (=> b!7611725 (= c!1403384 ((_ is Union!20225) r!19218))))

(declare-fun bm!699113 () Bool)

(declare-fun call!699117 () Bool)

(assert (=> bm!699113 (= call!699117 call!699118)))

(declare-fun b!7611726 () Bool)

(declare-fun e!4527011 () Bool)

(assert (=> b!7611726 (= e!4527009 e!4527011)))

(declare-fun res!3047409 () Bool)

(assert (=> b!7611726 (= res!3047409 (not (nullable!8846 (reg!20554 r!19218))))))

(assert (=> b!7611726 (=> (not res!3047409) (not e!4527011))))

(declare-fun b!7611727 () Bool)

(assert (=> b!7611727 (= e!4527011 call!699118)))

(declare-fun d!2322362 () Bool)

(declare-fun res!3047411 () Bool)

(declare-fun e!4527010 () Bool)

(assert (=> d!2322362 (=> res!3047411 e!4527010)))

(assert (=> d!2322362 (= res!3047411 ((_ is ElementMatch!20225) r!19218))))

(assert (=> d!2322362 (= (validRegex!10647 r!19218) e!4527010)))

(declare-fun b!7611728 () Bool)

(declare-fun res!3047410 () Bool)

(declare-fun e!4527006 () Bool)

(assert (=> b!7611728 (=> res!3047410 e!4527006)))

(assert (=> b!7611728 (= res!3047410 (not ((_ is Concat!29070) r!19218)))))

(assert (=> b!7611728 (= e!4527007 e!4527006)))

(declare-fun b!7611729 () Bool)

(declare-fun e!4527008 () Bool)

(assert (=> b!7611729 (= e!4527008 call!699117)))

(declare-fun b!7611730 () Bool)

(declare-fun e!4527005 () Bool)

(assert (=> b!7611730 (= e!4527006 e!4527005)))

(declare-fun res!3047408 () Bool)

(assert (=> b!7611730 (=> (not res!3047408) (not e!4527005))))

(assert (=> b!7611730 (= res!3047408 call!699116)))

(declare-fun b!7611731 () Bool)

(assert (=> b!7611731 (= e!4527005 call!699117)))

(declare-fun b!7611732 () Bool)

(declare-fun res!3047412 () Bool)

(assert (=> b!7611732 (=> (not res!3047412) (not e!4527008))))

(assert (=> b!7611732 (= res!3047412 call!699116)))

(assert (=> b!7611732 (= e!4527007 e!4527008)))

(declare-fun b!7611733 () Bool)

(assert (=> b!7611733 (= e!4527010 e!4527009)))

(assert (=> b!7611733 (= c!1403383 ((_ is Star!20225) r!19218))))

(assert (= (and d!2322362 (not res!3047411)) b!7611733))

(assert (= (and b!7611733 c!1403383) b!7611726))

(assert (= (and b!7611733 (not c!1403383)) b!7611725))

(assert (= (and b!7611726 res!3047409) b!7611727))

(assert (= (and b!7611725 c!1403384) b!7611732))

(assert (= (and b!7611725 (not c!1403384)) b!7611728))

(assert (= (and b!7611732 res!3047412) b!7611729))

(assert (= (and b!7611728 (not res!3047410)) b!7611730))

(assert (= (and b!7611730 res!3047408) b!7611731))

(assert (= (or b!7611732 b!7611730) bm!699111))

(assert (= (or b!7611729 b!7611731) bm!699113))

(assert (= (or b!7611727 bm!699113) bm!699112))

(declare-fun m!8148332 () Bool)

(assert (=> bm!699111 m!8148332))

(declare-fun m!8148334 () Bool)

(assert (=> bm!699112 m!8148334))

(declare-fun m!8148336 () Bool)

(assert (=> b!7611726 m!8148336))

(assert (=> start!733440 d!2322362))

(declare-fun d!2322366 () Bool)

(declare-fun e!4527069 () Bool)

(assert (=> d!2322366 e!4527069))

(declare-fun res!3047430 () Bool)

(assert (=> d!2322366 (=> (not res!3047430) (not e!4527069))))

(declare-fun lt!2655008 () Int)

(assert (=> d!2322366 (= res!3047430 (> lt!2655008 0))))

(declare-fun e!4527062 () Int)

(assert (=> d!2322366 (= lt!2655008 e!4527062)))

(declare-fun c!1403422 () Bool)

(assert (=> d!2322366 (= c!1403422 ((_ is ElementMatch!20225) (regOne!40962 r!19218)))))

(assert (=> d!2322366 (= (regexDepth!475 (regOne!40962 r!19218)) lt!2655008)))

(declare-fun b!7611819 () Bool)

(declare-fun e!4527065 () Int)

(declare-fun call!699156 () Int)

(assert (=> b!7611819 (= e!4527065 (+ 1 call!699156))))

(declare-fun b!7611820 () Bool)

(assert (=> b!7611820 (= e!4527062 1)))

(declare-fun bm!699149 () Bool)

(declare-fun call!699158 () Int)

(declare-fun call!699159 () Int)

(assert (=> bm!699149 (= call!699158 call!699159)))

(declare-fun b!7611821 () Bool)

(declare-fun e!4527071 () Int)

(declare-fun call!699155 () Int)

(assert (=> b!7611821 (= e!4527071 (+ 1 call!699155))))

(declare-fun b!7611822 () Bool)

(declare-fun c!1403426 () Bool)

(assert (=> b!7611822 (= c!1403426 ((_ is Star!20225) (regOne!40962 r!19218)))))

(declare-fun e!4527063 () Bool)

(declare-fun e!4527066 () Bool)

(assert (=> b!7611822 (= e!4527063 e!4527066)))

(declare-fun bm!699150 () Bool)

(declare-fun call!699154 () Int)

(declare-fun c!1403421 () Bool)

(assert (=> bm!699150 (= call!699154 (regexDepth!475 (ite c!1403421 (regTwo!40963 (regOne!40962 r!19218)) (regTwo!40962 (regOne!40962 r!19218)))))))

(declare-fun b!7611823 () Bool)

(declare-fun e!4527067 () Bool)

(assert (=> b!7611823 (= e!4527069 e!4527067)))

(declare-fun c!1403420 () Bool)

(assert (=> b!7611823 (= c!1403420 ((_ is Union!20225) (regOne!40962 r!19218)))))

(declare-fun b!7611824 () Bool)

(declare-fun e!4527064 () Int)

(assert (=> b!7611824 (= e!4527064 e!4527071)))

(declare-fun c!1403424 () Bool)

(assert (=> b!7611824 (= c!1403424 ((_ is Concat!29070) (regOne!40962 r!19218)))))

(declare-fun bm!699151 () Bool)

(declare-fun c!1403423 () Bool)

(assert (=> bm!699151 (= call!699156 (regexDepth!475 (ite c!1403423 (reg!20554 (regOne!40962 r!19218)) (ite c!1403421 (regOne!40963 (regOne!40962 r!19218)) (regOne!40962 (regOne!40962 r!19218))))))))

(declare-fun b!7611825 () Bool)

(assert (=> b!7611825 (= e!4527066 (> lt!2655008 call!699158))))

(declare-fun b!7611826 () Bool)

(declare-fun res!3047428 () Bool)

(declare-fun e!4527068 () Bool)

(assert (=> b!7611826 (=> (not res!3047428) (not e!4527068))))

(assert (=> b!7611826 (= res!3047428 (> lt!2655008 call!699158))))

(assert (=> b!7611826 (= e!4527063 e!4527068)))

(declare-fun b!7611827 () Bool)

(declare-fun e!4527070 () Bool)

(assert (=> b!7611827 (= e!4527067 e!4527070)))

(declare-fun res!3047429 () Bool)

(assert (=> b!7611827 (= res!3047429 (> lt!2655008 call!699159))))

(assert (=> b!7611827 (=> (not res!3047429) (not e!4527070))))

(declare-fun b!7611828 () Bool)

(assert (=> b!7611828 (= e!4527067 e!4527063)))

(declare-fun c!1403425 () Bool)

(assert (=> b!7611828 (= c!1403425 ((_ is Concat!29070) (regOne!40962 r!19218)))))

(declare-fun bm!699152 () Bool)

(declare-fun call!699157 () Int)

(assert (=> bm!699152 (= call!699157 call!699156)))

(declare-fun b!7611829 () Bool)

(assert (=> b!7611829 (= e!4527064 (+ 1 call!699155))))

(declare-fun b!7611830 () Bool)

(assert (=> b!7611830 (= e!4527062 e!4527065)))

(assert (=> b!7611830 (= c!1403423 ((_ is Star!20225) (regOne!40962 r!19218)))))

(declare-fun bm!699153 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!699153 (= call!699155 (maxBigInt!0 call!699157 call!699154))))

(declare-fun b!7611831 () Bool)

(assert (=> b!7611831 (= e!4527071 1)))

(declare-fun bm!699154 () Bool)

(assert (=> bm!699154 (= call!699159 (regexDepth!475 (ite c!1403420 (regOne!40963 (regOne!40962 r!19218)) (ite c!1403425 (regOne!40962 (regOne!40962 r!19218)) (reg!20554 (regOne!40962 r!19218))))))))

(declare-fun b!7611832 () Bool)

(declare-fun call!699160 () Int)

(assert (=> b!7611832 (= e!4527070 (> lt!2655008 call!699160))))

(declare-fun bm!699155 () Bool)

(assert (=> bm!699155 (= call!699160 (regexDepth!475 (ite c!1403420 (regTwo!40963 (regOne!40962 r!19218)) (regTwo!40962 (regOne!40962 r!19218)))))))

(declare-fun b!7611833 () Bool)

(assert (=> b!7611833 (= e!4527066 (= lt!2655008 1))))

(declare-fun b!7611834 () Bool)

(assert (=> b!7611834 (= c!1403421 ((_ is Union!20225) (regOne!40962 r!19218)))))

(assert (=> b!7611834 (= e!4527065 e!4527064)))

(declare-fun b!7611835 () Bool)

(assert (=> b!7611835 (= e!4527068 (> lt!2655008 call!699160))))

(assert (= (and d!2322366 c!1403422) b!7611820))

(assert (= (and d!2322366 (not c!1403422)) b!7611830))

(assert (= (and b!7611830 c!1403423) b!7611819))

(assert (= (and b!7611830 (not c!1403423)) b!7611834))

(assert (= (and b!7611834 c!1403421) b!7611829))

(assert (= (and b!7611834 (not c!1403421)) b!7611824))

(assert (= (and b!7611824 c!1403424) b!7611821))

(assert (= (and b!7611824 (not c!1403424)) b!7611831))

(assert (= (or b!7611829 b!7611821) bm!699150))

(assert (= (or b!7611829 b!7611821) bm!699152))

(assert (= (or b!7611829 b!7611821) bm!699153))

(assert (= (or b!7611819 bm!699152) bm!699151))

(assert (= (and d!2322366 res!3047430) b!7611823))

(assert (= (and b!7611823 c!1403420) b!7611827))

(assert (= (and b!7611823 (not c!1403420)) b!7611828))

(assert (= (and b!7611827 res!3047429) b!7611832))

(assert (= (and b!7611828 c!1403425) b!7611826))

(assert (= (and b!7611828 (not c!1403425)) b!7611822))

(assert (= (and b!7611826 res!3047428) b!7611835))

(assert (= (and b!7611822 c!1403426) b!7611825))

(assert (= (and b!7611822 (not c!1403426)) b!7611833))

(assert (= (or b!7611826 b!7611825) bm!699149))

(assert (= (or b!7611832 b!7611835) bm!699155))

(assert (= (or b!7611827 bm!699149) bm!699154))

(declare-fun m!8148348 () Bool)

(assert (=> bm!699153 m!8148348))

(declare-fun m!8148350 () Bool)

(assert (=> bm!699151 m!8148350))

(declare-fun m!8148352 () Bool)

(assert (=> bm!699154 m!8148352))

(declare-fun m!8148354 () Bool)

(assert (=> bm!699155 m!8148354))

(declare-fun m!8148356 () Bool)

(assert (=> bm!699150 m!8148356))

(assert (=> b!7611671 d!2322366))

(declare-fun d!2322370 () Bool)

(declare-fun e!4527089 () Bool)

(assert (=> d!2322370 e!4527089))

(declare-fun res!3047436 () Bool)

(assert (=> d!2322370 (=> (not res!3047436) (not e!4527089))))

(declare-fun lt!2655010 () Int)

(assert (=> d!2322370 (= res!3047436 (> lt!2655010 0))))

(declare-fun e!4527082 () Int)

(assert (=> d!2322370 (= lt!2655010 e!4527082)))

(declare-fun c!1403436 () Bool)

(assert (=> d!2322370 (= c!1403436 ((_ is ElementMatch!20225) r!19218))))

(assert (=> d!2322370 (= (regexDepth!475 r!19218) lt!2655010)))

(declare-fun b!7611853 () Bool)

(declare-fun e!4527085 () Int)

(declare-fun call!699170 () Int)

(assert (=> b!7611853 (= e!4527085 (+ 1 call!699170))))

(declare-fun b!7611854 () Bool)

(assert (=> b!7611854 (= e!4527082 1)))

(declare-fun bm!699163 () Bool)

(declare-fun call!699172 () Int)

(declare-fun call!699173 () Int)

(assert (=> bm!699163 (= call!699172 call!699173)))

(declare-fun b!7611855 () Bool)

(declare-fun e!4527091 () Int)

(declare-fun call!699169 () Int)

(assert (=> b!7611855 (= e!4527091 (+ 1 call!699169))))

(declare-fun b!7611856 () Bool)

(declare-fun c!1403440 () Bool)

(assert (=> b!7611856 (= c!1403440 ((_ is Star!20225) r!19218))))

(declare-fun e!4527083 () Bool)

(declare-fun e!4527086 () Bool)

(assert (=> b!7611856 (= e!4527083 e!4527086)))

(declare-fun bm!699164 () Bool)

(declare-fun call!699168 () Int)

(declare-fun c!1403435 () Bool)

(assert (=> bm!699164 (= call!699168 (regexDepth!475 (ite c!1403435 (regTwo!40963 r!19218) (regTwo!40962 r!19218))))))

(declare-fun b!7611857 () Bool)

(declare-fun e!4527087 () Bool)

(assert (=> b!7611857 (= e!4527089 e!4527087)))

(declare-fun c!1403434 () Bool)

(assert (=> b!7611857 (= c!1403434 ((_ is Union!20225) r!19218))))

(declare-fun b!7611858 () Bool)

(declare-fun e!4527084 () Int)

(assert (=> b!7611858 (= e!4527084 e!4527091)))

(declare-fun c!1403438 () Bool)

(assert (=> b!7611858 (= c!1403438 ((_ is Concat!29070) r!19218))))

(declare-fun c!1403437 () Bool)

(declare-fun bm!699165 () Bool)

(assert (=> bm!699165 (= call!699170 (regexDepth!475 (ite c!1403437 (reg!20554 r!19218) (ite c!1403435 (regOne!40963 r!19218) (regOne!40962 r!19218)))))))

(declare-fun b!7611859 () Bool)

(assert (=> b!7611859 (= e!4527086 (> lt!2655010 call!699172))))

(declare-fun b!7611860 () Bool)

(declare-fun res!3047434 () Bool)

(declare-fun e!4527088 () Bool)

(assert (=> b!7611860 (=> (not res!3047434) (not e!4527088))))

(assert (=> b!7611860 (= res!3047434 (> lt!2655010 call!699172))))

(assert (=> b!7611860 (= e!4527083 e!4527088)))

(declare-fun b!7611861 () Bool)

(declare-fun e!4527090 () Bool)

(assert (=> b!7611861 (= e!4527087 e!4527090)))

(declare-fun res!3047435 () Bool)

(assert (=> b!7611861 (= res!3047435 (> lt!2655010 call!699173))))

(assert (=> b!7611861 (=> (not res!3047435) (not e!4527090))))

(declare-fun b!7611862 () Bool)

(assert (=> b!7611862 (= e!4527087 e!4527083)))

(declare-fun c!1403439 () Bool)

(assert (=> b!7611862 (= c!1403439 ((_ is Concat!29070) r!19218))))

(declare-fun bm!699166 () Bool)

(declare-fun call!699171 () Int)

(assert (=> bm!699166 (= call!699171 call!699170)))

(declare-fun b!7611863 () Bool)

(assert (=> b!7611863 (= e!4527084 (+ 1 call!699169))))

(declare-fun b!7611864 () Bool)

(assert (=> b!7611864 (= e!4527082 e!4527085)))

(assert (=> b!7611864 (= c!1403437 ((_ is Star!20225) r!19218))))

(declare-fun bm!699167 () Bool)

(assert (=> bm!699167 (= call!699169 (maxBigInt!0 call!699171 call!699168))))

(declare-fun b!7611865 () Bool)

(assert (=> b!7611865 (= e!4527091 1)))

(declare-fun bm!699168 () Bool)

(assert (=> bm!699168 (= call!699173 (regexDepth!475 (ite c!1403434 (regOne!40963 r!19218) (ite c!1403439 (regOne!40962 r!19218) (reg!20554 r!19218)))))))

(declare-fun b!7611866 () Bool)

(declare-fun call!699174 () Int)

(assert (=> b!7611866 (= e!4527090 (> lt!2655010 call!699174))))

(declare-fun bm!699169 () Bool)

(assert (=> bm!699169 (= call!699174 (regexDepth!475 (ite c!1403434 (regTwo!40963 r!19218) (regTwo!40962 r!19218))))))

(declare-fun b!7611867 () Bool)

(assert (=> b!7611867 (= e!4527086 (= lt!2655010 1))))

(declare-fun b!7611868 () Bool)

(assert (=> b!7611868 (= c!1403435 ((_ is Union!20225) r!19218))))

(assert (=> b!7611868 (= e!4527085 e!4527084)))

(declare-fun b!7611869 () Bool)

(assert (=> b!7611869 (= e!4527088 (> lt!2655010 call!699174))))

(assert (= (and d!2322370 c!1403436) b!7611854))

(assert (= (and d!2322370 (not c!1403436)) b!7611864))

(assert (= (and b!7611864 c!1403437) b!7611853))

(assert (= (and b!7611864 (not c!1403437)) b!7611868))

(assert (= (and b!7611868 c!1403435) b!7611863))

(assert (= (and b!7611868 (not c!1403435)) b!7611858))

(assert (= (and b!7611858 c!1403438) b!7611855))

(assert (= (and b!7611858 (not c!1403438)) b!7611865))

(assert (= (or b!7611863 b!7611855) bm!699164))

(assert (= (or b!7611863 b!7611855) bm!699166))

(assert (= (or b!7611863 b!7611855) bm!699167))

(assert (= (or b!7611853 bm!699166) bm!699165))

(assert (= (and d!2322370 res!3047436) b!7611857))

(assert (= (and b!7611857 c!1403434) b!7611861))

(assert (= (and b!7611857 (not c!1403434)) b!7611862))

(assert (= (and b!7611861 res!3047435) b!7611866))

(assert (= (and b!7611862 c!1403439) b!7611860))

(assert (= (and b!7611862 (not c!1403439)) b!7611856))

(assert (= (and b!7611860 res!3047434) b!7611869))

(assert (= (and b!7611856 c!1403440) b!7611859))

(assert (= (and b!7611856 (not c!1403440)) b!7611867))

(assert (= (or b!7611860 b!7611859) bm!699163))

(assert (= (or b!7611866 b!7611869) bm!699169))

(assert (= (or b!7611861 bm!699163) bm!699168))

(declare-fun m!8148370 () Bool)

(assert (=> bm!699167 m!8148370))

(declare-fun m!8148372 () Bool)

(assert (=> bm!699165 m!8148372))

(declare-fun m!8148374 () Bool)

(assert (=> bm!699168 m!8148374))

(declare-fun m!8148376 () Bool)

(assert (=> bm!699169 m!8148376))

(declare-fun m!8148378 () Bool)

(assert (=> bm!699164 m!8148378))

(assert (=> b!7611671 d!2322370))

(declare-fun d!2322376 () Bool)

(declare-fun nullableFct!3530 (Regex!20225) Bool)

(assert (=> d!2322376 (= (nullable!8846 r!19218) (nullableFct!3530 r!19218))))

(declare-fun bs!1942879 () Bool)

(assert (= bs!1942879 d!2322376))

(declare-fun m!8148388 () Bool)

(assert (=> bs!1942879 m!8148388))

(assert (=> b!7611677 d!2322376))

(declare-fun bm!699173 () Bool)

(declare-fun call!699178 () Bool)

(declare-fun c!1403444 () Bool)

(assert (=> bm!699173 (= call!699178 (validRegex!10647 (ite c!1403444 (regOne!40963 (regOne!40962 r!19218)) (regOne!40962 (regOne!40962 r!19218)))))))

(declare-fun call!699180 () Bool)

(declare-fun bm!699174 () Bool)

(declare-fun c!1403443 () Bool)

(assert (=> bm!699174 (= call!699180 (validRegex!10647 (ite c!1403443 (reg!20554 (regOne!40962 r!19218)) (ite c!1403444 (regTwo!40963 (regOne!40962 r!19218)) (regTwo!40962 (regOne!40962 r!19218))))))))

(declare-fun b!7611885 () Bool)

(declare-fun e!4527105 () Bool)

(declare-fun e!4527103 () Bool)

(assert (=> b!7611885 (= e!4527105 e!4527103)))

(assert (=> b!7611885 (= c!1403444 ((_ is Union!20225) (regOne!40962 r!19218)))))

(declare-fun bm!699175 () Bool)

(declare-fun call!699179 () Bool)

(assert (=> bm!699175 (= call!699179 call!699180)))

(declare-fun b!7611886 () Bool)

(declare-fun e!4527107 () Bool)

(assert (=> b!7611886 (= e!4527105 e!4527107)))

(declare-fun res!3047443 () Bool)

(assert (=> b!7611886 (= res!3047443 (not (nullable!8846 (reg!20554 (regOne!40962 r!19218)))))))

(assert (=> b!7611886 (=> (not res!3047443) (not e!4527107))))

(declare-fun b!7611887 () Bool)

(assert (=> b!7611887 (= e!4527107 call!699180)))

(declare-fun d!2322380 () Bool)

(declare-fun res!3047445 () Bool)

(declare-fun e!4527106 () Bool)

(assert (=> d!2322380 (=> res!3047445 e!4527106)))

(assert (=> d!2322380 (= res!3047445 ((_ is ElementMatch!20225) (regOne!40962 r!19218)))))

(assert (=> d!2322380 (= (validRegex!10647 (regOne!40962 r!19218)) e!4527106)))

(declare-fun b!7611888 () Bool)

(declare-fun res!3047444 () Bool)

(declare-fun e!4527102 () Bool)

(assert (=> b!7611888 (=> res!3047444 e!4527102)))

(assert (=> b!7611888 (= res!3047444 (not ((_ is Concat!29070) (regOne!40962 r!19218))))))

(assert (=> b!7611888 (= e!4527103 e!4527102)))

(declare-fun b!7611889 () Bool)

(declare-fun e!4527104 () Bool)

(assert (=> b!7611889 (= e!4527104 call!699179)))

(declare-fun b!7611890 () Bool)

(declare-fun e!4527101 () Bool)

(assert (=> b!7611890 (= e!4527102 e!4527101)))

(declare-fun res!3047442 () Bool)

(assert (=> b!7611890 (=> (not res!3047442) (not e!4527101))))

(assert (=> b!7611890 (= res!3047442 call!699178)))

(declare-fun b!7611891 () Bool)

(assert (=> b!7611891 (= e!4527101 call!699179)))

(declare-fun b!7611892 () Bool)

(declare-fun res!3047446 () Bool)

(assert (=> b!7611892 (=> (not res!3047446) (not e!4527104))))

(assert (=> b!7611892 (= res!3047446 call!699178)))

(assert (=> b!7611892 (= e!4527103 e!4527104)))

(declare-fun b!7611893 () Bool)

(assert (=> b!7611893 (= e!4527106 e!4527105)))

(assert (=> b!7611893 (= c!1403443 ((_ is Star!20225) (regOne!40962 r!19218)))))

(assert (= (and d!2322380 (not res!3047445)) b!7611893))

(assert (= (and b!7611893 c!1403443) b!7611886))

(assert (= (and b!7611893 (not c!1403443)) b!7611885))

(assert (= (and b!7611886 res!3047443) b!7611887))

(assert (= (and b!7611885 c!1403444) b!7611892))

(assert (= (and b!7611885 (not c!1403444)) b!7611888))

(assert (= (and b!7611892 res!3047446) b!7611889))

(assert (= (and b!7611888 (not res!3047444)) b!7611890))

(assert (= (and b!7611890 res!3047442) b!7611891))

(assert (= (or b!7611892 b!7611890) bm!699173))

(assert (= (or b!7611889 b!7611891) bm!699175))

(assert (= (or b!7611887 bm!699175) bm!699174))

(declare-fun m!8148390 () Bool)

(assert (=> bm!699173 m!8148390))

(declare-fun m!8148392 () Bool)

(assert (=> bm!699174 m!8148392))

(declare-fun m!8148394 () Bool)

(assert (=> b!7611886 m!8148394))

(assert (=> b!7611675 d!2322380))

(declare-fun d!2322382 () Bool)

(assert (=> d!2322382 (= (nullable!8846 (regOne!40962 r!19218)) (nullableFct!3530 (regOne!40962 r!19218)))))

(declare-fun bs!1942880 () Bool)

(assert (= bs!1942880 d!2322382))

(declare-fun m!8148396 () Bool)

(assert (=> bs!1942880 m!8148396))

(assert (=> b!7611679 d!2322382))

(declare-fun b!7611929 () Bool)

(declare-fun e!4527115 () Bool)

(declare-fun tp!2221519 () Bool)

(declare-fun tp!2221517 () Bool)

(assert (=> b!7611929 (= e!4527115 (and tp!2221519 tp!2221517))))

(declare-fun b!7611930 () Bool)

(declare-fun tp!2221518 () Bool)

(assert (=> b!7611930 (= e!4527115 tp!2221518)))

(assert (=> b!7611678 (= tp!2221468 e!4527115)))

(declare-fun b!7611931 () Bool)

(declare-fun tp!2221516 () Bool)

(declare-fun tp!2221515 () Bool)

(assert (=> b!7611931 (= e!4527115 (and tp!2221516 tp!2221515))))

(declare-fun b!7611928 () Bool)

(assert (=> b!7611928 (= e!4527115 tp_is_empty!50805)))

(assert (= (and b!7611678 ((_ is ElementMatch!20225) (regOne!40962 r!19218))) b!7611928))

(assert (= (and b!7611678 ((_ is Concat!29070) (regOne!40962 r!19218))) b!7611929))

(assert (= (and b!7611678 ((_ is Star!20225) (regOne!40962 r!19218))) b!7611930))

(assert (= (and b!7611678 ((_ is Union!20225) (regOne!40962 r!19218))) b!7611931))

(declare-fun b!7611933 () Bool)

(declare-fun e!4527116 () Bool)

(declare-fun tp!2221524 () Bool)

(declare-fun tp!2221522 () Bool)

(assert (=> b!7611933 (= e!4527116 (and tp!2221524 tp!2221522))))

(declare-fun b!7611934 () Bool)

(declare-fun tp!2221523 () Bool)

(assert (=> b!7611934 (= e!4527116 tp!2221523)))

(assert (=> b!7611678 (= tp!2221465 e!4527116)))

(declare-fun b!7611935 () Bool)

(declare-fun tp!2221521 () Bool)

(declare-fun tp!2221520 () Bool)

(assert (=> b!7611935 (= e!4527116 (and tp!2221521 tp!2221520))))

(declare-fun b!7611932 () Bool)

(assert (=> b!7611932 (= e!4527116 tp_is_empty!50805)))

(assert (= (and b!7611678 ((_ is ElementMatch!20225) (regTwo!40962 r!19218))) b!7611932))

(assert (= (and b!7611678 ((_ is Concat!29070) (regTwo!40962 r!19218))) b!7611933))

(assert (= (and b!7611678 ((_ is Star!20225) (regTwo!40962 r!19218))) b!7611934))

(assert (= (and b!7611678 ((_ is Union!20225) (regTwo!40962 r!19218))) b!7611935))

(declare-fun b!7611937 () Bool)

(declare-fun e!4527117 () Bool)

(declare-fun tp!2221529 () Bool)

(declare-fun tp!2221527 () Bool)

(assert (=> b!7611937 (= e!4527117 (and tp!2221529 tp!2221527))))

(declare-fun b!7611938 () Bool)

(declare-fun tp!2221528 () Bool)

(assert (=> b!7611938 (= e!4527117 tp!2221528)))

(assert (=> b!7611672 (= tp!2221466 e!4527117)))

(declare-fun b!7611939 () Bool)

(declare-fun tp!2221526 () Bool)

(declare-fun tp!2221525 () Bool)

(assert (=> b!7611939 (= e!4527117 (and tp!2221526 tp!2221525))))

(declare-fun b!7611936 () Bool)

(assert (=> b!7611936 (= e!4527117 tp_is_empty!50805)))

(assert (= (and b!7611672 ((_ is ElementMatch!20225) (regOne!40963 r!19218))) b!7611936))

(assert (= (and b!7611672 ((_ is Concat!29070) (regOne!40963 r!19218))) b!7611937))

(assert (= (and b!7611672 ((_ is Star!20225) (regOne!40963 r!19218))) b!7611938))

(assert (= (and b!7611672 ((_ is Union!20225) (regOne!40963 r!19218))) b!7611939))

(declare-fun b!7611941 () Bool)

(declare-fun e!4527118 () Bool)

(declare-fun tp!2221534 () Bool)

(declare-fun tp!2221532 () Bool)

(assert (=> b!7611941 (= e!4527118 (and tp!2221534 tp!2221532))))

(declare-fun b!7611942 () Bool)

(declare-fun tp!2221533 () Bool)

(assert (=> b!7611942 (= e!4527118 tp!2221533)))

(assert (=> b!7611672 (= tp!2221469 e!4527118)))

(declare-fun b!7611943 () Bool)

(declare-fun tp!2221531 () Bool)

(declare-fun tp!2221530 () Bool)

(assert (=> b!7611943 (= e!4527118 (and tp!2221531 tp!2221530))))

(declare-fun b!7611940 () Bool)

(assert (=> b!7611940 (= e!4527118 tp_is_empty!50805)))

(assert (= (and b!7611672 ((_ is ElementMatch!20225) (regTwo!40963 r!19218))) b!7611940))

(assert (= (and b!7611672 ((_ is Concat!29070) (regTwo!40963 r!19218))) b!7611941))

(assert (= (and b!7611672 ((_ is Star!20225) (regTwo!40963 r!19218))) b!7611942))

(assert (= (and b!7611672 ((_ is Union!20225) (regTwo!40963 r!19218))) b!7611943))

(declare-fun b!7611945 () Bool)

(declare-fun e!4527119 () Bool)

(declare-fun tp!2221539 () Bool)

(declare-fun tp!2221537 () Bool)

(assert (=> b!7611945 (= e!4527119 (and tp!2221539 tp!2221537))))

(declare-fun b!7611946 () Bool)

(declare-fun tp!2221538 () Bool)

(assert (=> b!7611946 (= e!4527119 tp!2221538)))

(assert (=> b!7611676 (= tp!2221467 e!4527119)))

(declare-fun b!7611947 () Bool)

(declare-fun tp!2221536 () Bool)

(declare-fun tp!2221535 () Bool)

(assert (=> b!7611947 (= e!4527119 (and tp!2221536 tp!2221535))))

(declare-fun b!7611944 () Bool)

(assert (=> b!7611944 (= e!4527119 tp_is_empty!50805)))

(assert (= (and b!7611676 ((_ is ElementMatch!20225) (reg!20554 r!19218))) b!7611944))

(assert (= (and b!7611676 ((_ is Concat!29070) (reg!20554 r!19218))) b!7611945))

(assert (= (and b!7611676 ((_ is Star!20225) (reg!20554 r!19218))) b!7611946))

(assert (= (and b!7611676 ((_ is Union!20225) (reg!20554 r!19218))) b!7611947))

(check-sat (not b!7611939) (not bm!699165) (not b!7611942) (not bm!699173) (not bm!699112) (not b!7611947) (not bm!699169) (not bm!699153) (not d!2322382) (not b!7611929) tp_is_empty!50805 (not bm!699154) (not bm!699111) (not bm!699151) (not b!7611943) (not b!7611945) (not b!7611726) (not bm!699150) (not b!7611941) (not bm!699155) (not d!2322376) (not b!7611937) (not bm!699174) (not b!7611933) (not b!7611934) (not b!7611931) (not b!7611930) (not bm!699168) (not b!7611946) (not b!7611938) (not b!7611886) (not b!7611935) (not bm!699164) (not bm!699167))
(check-sat)
