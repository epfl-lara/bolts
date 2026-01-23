; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738958 () Bool)

(assert start!738958)

(declare-fun b!7751760 () Bool)

(declare-fun e!4595318 () Bool)

(declare-fun tp_is_empty!51595 () Bool)

(assert (=> b!7751760 (= e!4595318 tp_is_empty!51595)))

(declare-fun b!7751762 () Bool)

(declare-fun tp!2274362 () Bool)

(declare-fun tp!2274364 () Bool)

(assert (=> b!7751762 (= e!4595318 (and tp!2274362 tp!2274364))))

(declare-fun b!7751763 () Bool)

(declare-fun e!4595317 () Bool)

(declare-fun tp!2274363 () Bool)

(assert (=> b!7751763 (= e!4595317 (and tp_is_empty!51595 tp!2274363))))

(declare-fun b!7751764 () Bool)

(declare-fun res!3090933 () Bool)

(declare-fun e!4595316 () Bool)

(assert (=> b!7751764 (=> (not res!3090933) (not e!4595316))))

(declare-datatypes ((C!41566 0))(
  ( (C!41567 (val!31223 Int)) )
))
(declare-datatypes ((List!73465 0))(
  ( (Nil!73341) (Cons!73341 (h!79789 C!41566) (t!388200 List!73465)) )
))
(declare-fun s1!4391 () List!73465)

(assert (=> b!7751764 (= res!3090933 (is-Cons!73341 s1!4391))))

(declare-fun b!7751765 () Bool)

(declare-fun res!3090934 () Bool)

(assert (=> b!7751765 (=> (not res!3090934) (not e!4595316))))

(declare-datatypes ((Regex!20620 0))(
  ( (ElementMatch!20620 (c!1429677 C!41566)) (Concat!29465 (regOne!41752 Regex!20620) (regTwo!41752 Regex!20620)) (EmptyExpr!20620) (Star!20620 (reg!20949 Regex!20620)) (EmptyLang!20620) (Union!20620 (regOne!41753 Regex!20620) (regTwo!41753 Regex!20620)) )
))
(declare-fun r!25892 () Regex!20620)

(declare-fun matchR!10110 (Regex!20620 List!73465) Bool)

(assert (=> b!7751765 (= res!3090934 (matchR!10110 r!25892 s1!4391))))

(declare-fun b!7751766 () Bool)

(declare-fun tp!2274361 () Bool)

(declare-fun tp!2274365 () Bool)

(assert (=> b!7751766 (= e!4595318 (and tp!2274361 tp!2274365))))

(declare-fun b!7751767 () Bool)

(declare-fun e!4595314 () Bool)

(declare-fun tp!2274360 () Bool)

(assert (=> b!7751767 (= e!4595314 (and tp_is_empty!51595 tp!2274360))))

(declare-fun b!7751768 () Bool)

(declare-fun tp!2274366 () Bool)

(assert (=> b!7751768 (= e!4595318 tp!2274366)))

(declare-fun b!7751769 () Bool)

(declare-fun res!3090929 () Bool)

(assert (=> b!7751769 (=> (not res!3090929) (not e!4595316))))

(declare-fun lt!2669482 () Regex!20620)

(declare-fun s2!3963 () List!73465)

(assert (=> b!7751769 (= res!3090929 (matchR!10110 lt!2669482 s2!3963))))

(declare-fun b!7751761 () Bool)

(declare-fun res!3090930 () Bool)

(declare-fun e!4595315 () Bool)

(assert (=> b!7751761 (=> (not res!3090930) (not e!4595315))))

(declare-fun lt!2669481 () Regex!20620)

(declare-fun validRegex!11038 (Regex!20620) Bool)

(assert (=> b!7751761 (= res!3090930 (validRegex!11038 lt!2669481))))

(declare-fun res!3090932 () Bool)

(assert (=> start!738958 (=> (not res!3090932) (not e!4595316))))

(assert (=> start!738958 (= res!3090932 (validRegex!11038 lt!2669482))))

(assert (=> start!738958 (= lt!2669482 (Star!20620 r!25892))))

(assert (=> start!738958 e!4595316))

(assert (=> start!738958 e!4595318))

(assert (=> start!738958 e!4595314))

(assert (=> start!738958 e!4595317))

(declare-fun b!7751770 () Bool)

(assert (=> b!7751770 (= e!4595315 (not (matchR!10110 lt!2669481 (t!388200 s1!4391))))))

(declare-fun b!7751771 () Bool)

(assert (=> b!7751771 (= e!4595316 e!4595315)))

(declare-fun res!3090931 () Bool)

(assert (=> b!7751771 (=> (not res!3090931) (not e!4595315))))

(declare-fun derivativeStep!6041 (Regex!20620 C!41566) Regex!20620)

(assert (=> b!7751771 (= res!3090931 (= (derivativeStep!6041 lt!2669482 (h!79789 s1!4391)) (Concat!29465 lt!2669481 lt!2669482)))))

(assert (=> b!7751771 (= lt!2669481 (derivativeStep!6041 r!25892 (h!79789 s1!4391)))))

(assert (= (and start!738958 res!3090932) b!7751765))

(assert (= (and b!7751765 res!3090934) b!7751769))

(assert (= (and b!7751769 res!3090929) b!7751764))

(assert (= (and b!7751764 res!3090933) b!7751771))

(assert (= (and b!7751771 res!3090931) b!7751761))

(assert (= (and b!7751761 res!3090930) b!7751770))

(assert (= (and start!738958 (is-ElementMatch!20620 r!25892)) b!7751760))

(assert (= (and start!738958 (is-Concat!29465 r!25892)) b!7751762))

(assert (= (and start!738958 (is-Star!20620 r!25892)) b!7751768))

(assert (= (and start!738958 (is-Union!20620 r!25892)) b!7751766))

(assert (= (and start!738958 (is-Cons!73341 s1!4391)) b!7751767))

(assert (= (and start!738958 (is-Cons!73341 s2!3963)) b!7751763))

(declare-fun m!8216926 () Bool)

(assert (=> b!7751771 m!8216926))

(declare-fun m!8216928 () Bool)

(assert (=> b!7751771 m!8216928))

(declare-fun m!8216930 () Bool)

(assert (=> start!738958 m!8216930))

(declare-fun m!8216932 () Bool)

(assert (=> b!7751761 m!8216932))

(declare-fun m!8216934 () Bool)

(assert (=> b!7751765 m!8216934))

(declare-fun m!8216936 () Bool)

(assert (=> b!7751769 m!8216936))

(declare-fun m!8216938 () Bool)

(assert (=> b!7751770 m!8216938))

(push 1)

(assert (not b!7751769))

(assert (not b!7751770))

(assert tp_is_empty!51595)

(assert (not b!7751771))

(assert (not b!7751768))

(assert (not b!7751767))

(assert (not b!7751763))

(assert (not b!7751762))

(assert (not b!7751766))

(assert (not start!738958))

(assert (not b!7751765))

(assert (not b!7751761))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7751845 () Bool)

(declare-fun e!4595362 () Bool)

(declare-fun call!718463 () Bool)

(assert (=> b!7751845 (= e!4595362 call!718463)))

(declare-fun b!7751846 () Bool)

(declare-fun e!4595368 () Bool)

(declare-fun e!4595366 () Bool)

(assert (=> b!7751846 (= e!4595368 e!4595366)))

(declare-fun res!3090977 () Bool)

(declare-fun nullable!9081 (Regex!20620) Bool)

(assert (=> b!7751846 (= res!3090977 (not (nullable!9081 (reg!20949 lt!2669481))))))

(assert (=> b!7751846 (=> (not res!3090977) (not e!4595366))))

(declare-fun b!7751847 () Bool)

(declare-fun res!3090973 () Bool)

(assert (=> b!7751847 (=> (not res!3090973) (not e!4595362))))

(declare-fun call!718464 () Bool)

(assert (=> b!7751847 (= res!3090973 call!718464)))

(declare-fun e!4595363 () Bool)

(assert (=> b!7751847 (= e!4595363 e!4595362)))

(declare-fun bm!718458 () Bool)

(declare-fun c!1429687 () Bool)

(assert (=> bm!718458 (= call!718464 (validRegex!11038 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))))))

(declare-fun b!7751848 () Bool)

(declare-fun call!718465 () Bool)

(assert (=> b!7751848 (= e!4595366 call!718465)))

(declare-fun b!7751849 () Bool)

(declare-fun e!4595365 () Bool)

(declare-fun e!4595364 () Bool)

(assert (=> b!7751849 (= e!4595365 e!4595364)))

(declare-fun res!3090974 () Bool)

(assert (=> b!7751849 (=> (not res!3090974) (not e!4595364))))

(assert (=> b!7751849 (= res!3090974 call!718464)))

(declare-fun b!7751850 () Bool)

(declare-fun e!4595367 () Bool)

(assert (=> b!7751850 (= e!4595367 e!4595368)))

(declare-fun c!1429688 () Bool)

(assert (=> b!7751850 (= c!1429688 (is-Star!20620 lt!2669481))))

(declare-fun bm!718459 () Bool)

(assert (=> bm!718459 (= call!718465 (validRegex!11038 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))))))

(declare-fun bm!718460 () Bool)

(assert (=> bm!718460 (= call!718463 call!718465)))

(declare-fun d!2342740 () Bool)

(declare-fun res!3090975 () Bool)

(assert (=> d!2342740 (=> res!3090975 e!4595367)))

(assert (=> d!2342740 (= res!3090975 (is-ElementMatch!20620 lt!2669481))))

(assert (=> d!2342740 (= (validRegex!11038 lt!2669481) e!4595367)))

(declare-fun b!7751844 () Bool)

(assert (=> b!7751844 (= e!4595368 e!4595363)))

(assert (=> b!7751844 (= c!1429687 (is-Union!20620 lt!2669481))))

(declare-fun b!7751851 () Bool)

(declare-fun res!3090976 () Bool)

(assert (=> b!7751851 (=> res!3090976 e!4595365)))

(assert (=> b!7751851 (= res!3090976 (not (is-Concat!29465 lt!2669481)))))

(assert (=> b!7751851 (= e!4595363 e!4595365)))

(declare-fun b!7751852 () Bool)

(assert (=> b!7751852 (= e!4595364 call!718463)))

(assert (= (and d!2342740 (not res!3090975)) b!7751850))

(assert (= (and b!7751850 c!1429688) b!7751846))

(assert (= (and b!7751850 (not c!1429688)) b!7751844))

(assert (= (and b!7751846 res!3090977) b!7751848))

(assert (= (and b!7751844 c!1429687) b!7751847))

(assert (= (and b!7751844 (not c!1429687)) b!7751851))

(assert (= (and b!7751847 res!3090973) b!7751845))

(assert (= (and b!7751851 (not res!3090976)) b!7751849))

(assert (= (and b!7751849 res!3090974) b!7751852))

(assert (= (or b!7751847 b!7751849) bm!718458))

(assert (= (or b!7751845 b!7751852) bm!718460))

(assert (= (or b!7751848 bm!718460) bm!718459))

(declare-fun m!8216954 () Bool)

(assert (=> b!7751846 m!8216954))

(declare-fun m!8216956 () Bool)

(assert (=> bm!718458 m!8216956))

(declare-fun m!8216958 () Bool)

(assert (=> bm!718459 m!8216958))

(assert (=> b!7751761 d!2342740))

(declare-fun b!7751918 () Bool)

(declare-fun e!4595409 () Bool)

(declare-fun lt!2669493 () Bool)

(declare-fun call!718473 () Bool)

(assert (=> b!7751918 (= e!4595409 (= lt!2669493 call!718473))))

(declare-fun b!7751919 () Bool)

(declare-fun e!4595404 () Bool)

(declare-fun head!15837 (List!73465) C!41566)

(declare-fun tail!15377 (List!73465) List!73465)

(assert (=> b!7751919 (= e!4595404 (matchR!10110 (derivativeStep!6041 r!25892 (head!15837 s1!4391)) (tail!15377 s1!4391)))))

(declare-fun b!7751920 () Bool)

(declare-fun e!4595408 () Bool)

(assert (=> b!7751920 (= e!4595408 (= (head!15837 s1!4391) (c!1429677 r!25892)))))

(declare-fun b!7751921 () Bool)

(declare-fun e!4595410 () Bool)

(assert (=> b!7751921 (= e!4595409 e!4595410)))

(declare-fun c!1429704 () Bool)

(assert (=> b!7751921 (= c!1429704 (is-EmptyLang!20620 r!25892))))

(declare-fun b!7751922 () Bool)

(declare-fun res!3091015 () Bool)

(declare-fun e!4595407 () Bool)

(assert (=> b!7751922 (=> res!3091015 e!4595407)))

(assert (=> b!7751922 (= res!3091015 (not (is-ElementMatch!20620 r!25892)))))

(assert (=> b!7751922 (= e!4595410 e!4595407)))

(declare-fun b!7751923 () Bool)

(declare-fun e!4595406 () Bool)

(assert (=> b!7751923 (= e!4595407 e!4595406)))

(declare-fun res!3091018 () Bool)

(assert (=> b!7751923 (=> (not res!3091018) (not e!4595406))))

(assert (=> b!7751923 (= res!3091018 (not lt!2669493))))

(declare-fun b!7751924 () Bool)

(assert (=> b!7751924 (= e!4595404 (nullable!9081 r!25892))))

(declare-fun b!7751925 () Bool)

(assert (=> b!7751925 (= e!4595410 (not lt!2669493))))

(declare-fun d!2342742 () Bool)

(assert (=> d!2342742 e!4595409))

(declare-fun c!1429705 () Bool)

(assert (=> d!2342742 (= c!1429705 (is-EmptyExpr!20620 r!25892))))

(assert (=> d!2342742 (= lt!2669493 e!4595404)))

(declare-fun c!1429703 () Bool)

(declare-fun isEmpty!42029 (List!73465) Bool)

(assert (=> d!2342742 (= c!1429703 (isEmpty!42029 s1!4391))))

(assert (=> d!2342742 (validRegex!11038 r!25892)))

(assert (=> d!2342742 (= (matchR!10110 r!25892 s1!4391) lt!2669493)))

(declare-fun b!7751926 () Bool)

(declare-fun res!3091022 () Bool)

(declare-fun e!4595405 () Bool)

(assert (=> b!7751926 (=> res!3091022 e!4595405)))

(assert (=> b!7751926 (= res!3091022 (not (isEmpty!42029 (tail!15377 s1!4391))))))

(declare-fun b!7751927 () Bool)

(declare-fun res!3091017 () Bool)

(assert (=> b!7751927 (=> (not res!3091017) (not e!4595408))))

(assert (=> b!7751927 (= res!3091017 (isEmpty!42029 (tail!15377 s1!4391)))))

(declare-fun b!7751928 () Bool)

(declare-fun res!3091021 () Bool)

(assert (=> b!7751928 (=> res!3091021 e!4595407)))

(assert (=> b!7751928 (= res!3091021 e!4595408)))

(declare-fun res!3091016 () Bool)

(assert (=> b!7751928 (=> (not res!3091016) (not e!4595408))))

(assert (=> b!7751928 (= res!3091016 lt!2669493)))

(declare-fun b!7751929 () Bool)

(assert (=> b!7751929 (= e!4595406 e!4595405)))

(declare-fun res!3091020 () Bool)

(assert (=> b!7751929 (=> res!3091020 e!4595405)))

(assert (=> b!7751929 (= res!3091020 call!718473)))

(declare-fun bm!718468 () Bool)

(assert (=> bm!718468 (= call!718473 (isEmpty!42029 s1!4391))))

(declare-fun b!7751930 () Bool)

(declare-fun res!3091019 () Bool)

(assert (=> b!7751930 (=> (not res!3091019) (not e!4595408))))

(assert (=> b!7751930 (= res!3091019 (not call!718473))))

(declare-fun b!7751931 () Bool)

(assert (=> b!7751931 (= e!4595405 (not (= (head!15837 s1!4391) (c!1429677 r!25892))))))

(assert (= (and d!2342742 c!1429703) b!7751924))

(assert (= (and d!2342742 (not c!1429703)) b!7751919))

(assert (= (and d!2342742 c!1429705) b!7751918))

(assert (= (and d!2342742 (not c!1429705)) b!7751921))

(assert (= (and b!7751921 c!1429704) b!7751925))

(assert (= (and b!7751921 (not c!1429704)) b!7751922))

(assert (= (and b!7751922 (not res!3091015)) b!7751928))

(assert (= (and b!7751928 res!3091016) b!7751930))

(assert (= (and b!7751930 res!3091019) b!7751927))

(assert (= (and b!7751927 res!3091017) b!7751920))

(assert (= (and b!7751928 (not res!3091021)) b!7751923))

(assert (= (and b!7751923 res!3091018) b!7751929))

(assert (= (and b!7751929 (not res!3091020)) b!7751926))

(assert (= (and b!7751926 (not res!3091022)) b!7751931))

(assert (= (or b!7751918 b!7751929 b!7751930) bm!718468))

(declare-fun m!8216966 () Bool)

(assert (=> b!7751927 m!8216966))

(assert (=> b!7751927 m!8216966))

(declare-fun m!8216968 () Bool)

(assert (=> b!7751927 m!8216968))

(declare-fun m!8216970 () Bool)

(assert (=> b!7751924 m!8216970))

(declare-fun m!8216972 () Bool)

(assert (=> b!7751919 m!8216972))

(assert (=> b!7751919 m!8216972))

(declare-fun m!8216974 () Bool)

(assert (=> b!7751919 m!8216974))

(assert (=> b!7751919 m!8216966))

(assert (=> b!7751919 m!8216974))

(assert (=> b!7751919 m!8216966))

(declare-fun m!8216976 () Bool)

(assert (=> b!7751919 m!8216976))

(declare-fun m!8216978 () Bool)

(assert (=> d!2342742 m!8216978))

(declare-fun m!8216980 () Bool)

(assert (=> d!2342742 m!8216980))

(assert (=> b!7751931 m!8216972))

(assert (=> b!7751920 m!8216972))

(assert (=> b!7751926 m!8216966))

(assert (=> b!7751926 m!8216966))

(assert (=> b!7751926 m!8216968))

(assert (=> bm!718468 m!8216978))

(assert (=> b!7751765 d!2342742))

(declare-fun bm!718490 () Bool)

(declare-fun call!718498 () Regex!20620)

(declare-fun call!718496 () Regex!20620)

(assert (=> bm!718490 (= call!718498 call!718496)))

(declare-fun b!7752009 () Bool)

(declare-fun c!1429734 () Bool)

(assert (=> b!7752009 (= c!1429734 (nullable!9081 (regOne!41752 lt!2669482)))))

(declare-fun e!4595456 () Regex!20620)

(declare-fun e!4595455 () Regex!20620)

(assert (=> b!7752009 (= e!4595456 e!4595455)))

(declare-fun c!1429735 () Bool)

(declare-fun bm!718491 () Bool)

(declare-fun c!1429738 () Bool)

(assert (=> bm!718491 (= call!718496 (derivativeStep!6041 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))) (h!79789 s1!4391)))))

(declare-fun b!7752010 () Bool)

(declare-fun call!718497 () Regex!20620)

(declare-fun call!718495 () Regex!20620)

(assert (=> b!7752010 (= e!4595455 (Union!20620 (Concat!29465 call!718495 (regTwo!41752 lt!2669482)) call!718497))))

(declare-fun d!2342746 () Bool)

(declare-fun lt!2669500 () Regex!20620)

(assert (=> d!2342746 (validRegex!11038 lt!2669500)))

(declare-fun e!4595452 () Regex!20620)

(assert (=> d!2342746 (= lt!2669500 e!4595452)))

(declare-fun c!1429736 () Bool)

(assert (=> d!2342746 (= c!1429736 (or (is-EmptyExpr!20620 lt!2669482) (is-EmptyLang!20620 lt!2669482)))))

(assert (=> d!2342746 (validRegex!11038 lt!2669482)))

(assert (=> d!2342746 (= (derivativeStep!6041 lt!2669482 (h!79789 s1!4391)) lt!2669500)))

(declare-fun bm!718492 () Bool)

(assert (=> bm!718492 (= call!718495 call!718498)))

(declare-fun b!7752011 () Bool)

(declare-fun e!4595453 () Regex!20620)

(assert (=> b!7752011 (= e!4595453 (ite (= (h!79789 s1!4391) (c!1429677 lt!2669482)) EmptyExpr!20620 EmptyLang!20620))))

(declare-fun bm!718493 () Bool)

(assert (=> bm!718493 (= call!718497 (derivativeStep!6041 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)) (h!79789 s1!4391)))))

(declare-fun b!7752012 () Bool)

(assert (=> b!7752012 (= e!4595455 (Union!20620 (Concat!29465 call!718495 (regTwo!41752 lt!2669482)) EmptyLang!20620))))

(declare-fun b!7752013 () Bool)

(assert (=> b!7752013 (= e!4595456 (Concat!29465 call!718498 lt!2669482))))

(declare-fun b!7752014 () Bool)

(declare-fun e!4595454 () Regex!20620)

(assert (=> b!7752014 (= e!4595454 (Union!20620 call!718496 call!718497))))

(declare-fun b!7752015 () Bool)

(assert (=> b!7752015 (= e!4595452 EmptyLang!20620)))

(declare-fun b!7752016 () Bool)

(assert (=> b!7752016 (= e!4595452 e!4595453)))

(declare-fun c!1429737 () Bool)

(assert (=> b!7752016 (= c!1429737 (is-ElementMatch!20620 lt!2669482))))

(declare-fun b!7752017 () Bool)

(assert (=> b!7752017 (= c!1429738 (is-Union!20620 lt!2669482))))

(assert (=> b!7752017 (= e!4595453 e!4595454)))

(declare-fun b!7752018 () Bool)

(assert (=> b!7752018 (= e!4595454 e!4595456)))

(assert (=> b!7752018 (= c!1429735 (is-Star!20620 lt!2669482))))

(assert (= (and d!2342746 c!1429736) b!7752015))

(assert (= (and d!2342746 (not c!1429736)) b!7752016))

(assert (= (and b!7752016 c!1429737) b!7752011))

(assert (= (and b!7752016 (not c!1429737)) b!7752017))

(assert (= (and b!7752017 c!1429738) b!7752014))

(assert (= (and b!7752017 (not c!1429738)) b!7752018))

(assert (= (and b!7752018 c!1429735) b!7752013))

(assert (= (and b!7752018 (not c!1429735)) b!7752009))

(assert (= (and b!7752009 c!1429734) b!7752010))

(assert (= (and b!7752009 (not c!1429734)) b!7752012))

(assert (= (or b!7752010 b!7752012) bm!718492))

(assert (= (or b!7752013 bm!718492) bm!718490))

(assert (= (or b!7752014 b!7752010) bm!718493))

(assert (= (or b!7752014 bm!718490) bm!718491))

(declare-fun m!8217018 () Bool)

(assert (=> b!7752009 m!8217018))

(declare-fun m!8217020 () Bool)

(assert (=> bm!718491 m!8217020))

(declare-fun m!8217022 () Bool)

(assert (=> d!2342746 m!8217022))

(assert (=> d!2342746 m!8216930))

(declare-fun m!8217024 () Bool)

(assert (=> bm!718493 m!8217024))

(assert (=> b!7751771 d!2342746))

(declare-fun bm!718494 () Bool)

(declare-fun call!718502 () Regex!20620)

(declare-fun call!718500 () Regex!20620)

(assert (=> bm!718494 (= call!718502 call!718500)))

(declare-fun b!7752019 () Bool)

(declare-fun c!1429739 () Bool)

(assert (=> b!7752019 (= c!1429739 (nullable!9081 (regOne!41752 r!25892)))))

(declare-fun e!4595461 () Regex!20620)

(declare-fun e!4595460 () Regex!20620)

(assert (=> b!7752019 (= e!4595461 e!4595460)))

(declare-fun c!1429743 () Bool)

(declare-fun c!1429740 () Bool)

(declare-fun bm!718495 () Bool)

(assert (=> bm!718495 (= call!718500 (derivativeStep!6041 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892))) (h!79789 s1!4391)))))

(declare-fun call!718501 () Regex!20620)

(declare-fun b!7752020 () Bool)

(declare-fun call!718499 () Regex!20620)

(assert (=> b!7752020 (= e!4595460 (Union!20620 (Concat!29465 call!718499 (regTwo!41752 r!25892)) call!718501))))

(declare-fun d!2342754 () Bool)

(declare-fun lt!2669501 () Regex!20620)

(assert (=> d!2342754 (validRegex!11038 lt!2669501)))

(declare-fun e!4595457 () Regex!20620)

(assert (=> d!2342754 (= lt!2669501 e!4595457)))

(declare-fun c!1429741 () Bool)

(assert (=> d!2342754 (= c!1429741 (or (is-EmptyExpr!20620 r!25892) (is-EmptyLang!20620 r!25892)))))

(assert (=> d!2342754 (validRegex!11038 r!25892)))

(assert (=> d!2342754 (= (derivativeStep!6041 r!25892 (h!79789 s1!4391)) lt!2669501)))

(declare-fun bm!718496 () Bool)

(assert (=> bm!718496 (= call!718499 call!718502)))

(declare-fun b!7752021 () Bool)

(declare-fun e!4595458 () Regex!20620)

(assert (=> b!7752021 (= e!4595458 (ite (= (h!79789 s1!4391) (c!1429677 r!25892)) EmptyExpr!20620 EmptyLang!20620))))

(declare-fun bm!718497 () Bool)

(assert (=> bm!718497 (= call!718501 (derivativeStep!6041 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892)) (h!79789 s1!4391)))))

(declare-fun b!7752022 () Bool)

(assert (=> b!7752022 (= e!4595460 (Union!20620 (Concat!29465 call!718499 (regTwo!41752 r!25892)) EmptyLang!20620))))

(declare-fun b!7752023 () Bool)

(assert (=> b!7752023 (= e!4595461 (Concat!29465 call!718502 r!25892))))

(declare-fun b!7752024 () Bool)

(declare-fun e!4595459 () Regex!20620)

(assert (=> b!7752024 (= e!4595459 (Union!20620 call!718500 call!718501))))

(declare-fun b!7752025 () Bool)

(assert (=> b!7752025 (= e!4595457 EmptyLang!20620)))

(declare-fun b!7752026 () Bool)

(assert (=> b!7752026 (= e!4595457 e!4595458)))

(declare-fun c!1429742 () Bool)

(assert (=> b!7752026 (= c!1429742 (is-ElementMatch!20620 r!25892))))

(declare-fun b!7752027 () Bool)

(assert (=> b!7752027 (= c!1429743 (is-Union!20620 r!25892))))

(assert (=> b!7752027 (= e!4595458 e!4595459)))

(declare-fun b!7752028 () Bool)

(assert (=> b!7752028 (= e!4595459 e!4595461)))

(assert (=> b!7752028 (= c!1429740 (is-Star!20620 r!25892))))

(assert (= (and d!2342754 c!1429741) b!7752025))

(assert (= (and d!2342754 (not c!1429741)) b!7752026))

(assert (= (and b!7752026 c!1429742) b!7752021))

(assert (= (and b!7752026 (not c!1429742)) b!7752027))

(assert (= (and b!7752027 c!1429743) b!7752024))

(assert (= (and b!7752027 (not c!1429743)) b!7752028))

(assert (= (and b!7752028 c!1429740) b!7752023))

(assert (= (and b!7752028 (not c!1429740)) b!7752019))

(assert (= (and b!7752019 c!1429739) b!7752020))

(assert (= (and b!7752019 (not c!1429739)) b!7752022))

(assert (= (or b!7752020 b!7752022) bm!718496))

(assert (= (or b!7752023 bm!718496) bm!718494))

(assert (= (or b!7752024 b!7752020) bm!718497))

(assert (= (or b!7752024 bm!718494) bm!718495))

(declare-fun m!8217026 () Bool)

(assert (=> b!7752019 m!8217026))

(declare-fun m!8217028 () Bool)

(assert (=> bm!718495 m!8217028))

(declare-fun m!8217030 () Bool)

(assert (=> d!2342754 m!8217030))

(assert (=> d!2342754 m!8216980))

(declare-fun m!8217032 () Bool)

(assert (=> bm!718497 m!8217032))

(assert (=> b!7751771 d!2342754))

(declare-fun b!7752030 () Bool)

(declare-fun e!4595462 () Bool)

(declare-fun call!718503 () Bool)

(assert (=> b!7752030 (= e!4595462 call!718503)))

(declare-fun b!7752031 () Bool)

(declare-fun e!4595468 () Bool)

(declare-fun e!4595466 () Bool)

(assert (=> b!7752031 (= e!4595468 e!4595466)))

(declare-fun res!3091048 () Bool)

(assert (=> b!7752031 (= res!3091048 (not (nullable!9081 (reg!20949 lt!2669482))))))

(assert (=> b!7752031 (=> (not res!3091048) (not e!4595466))))

(declare-fun b!7752032 () Bool)

(declare-fun res!3091044 () Bool)

(assert (=> b!7752032 (=> (not res!3091044) (not e!4595462))))

(declare-fun call!718504 () Bool)

(assert (=> b!7752032 (= res!3091044 call!718504)))

(declare-fun e!4595463 () Bool)

(assert (=> b!7752032 (= e!4595463 e!4595462)))

(declare-fun bm!718498 () Bool)

(declare-fun c!1429744 () Bool)

(assert (=> bm!718498 (= call!718504 (validRegex!11038 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))))))

(declare-fun b!7752033 () Bool)

(declare-fun call!718505 () Bool)

(assert (=> b!7752033 (= e!4595466 call!718505)))

(declare-fun b!7752034 () Bool)

(declare-fun e!4595465 () Bool)

(declare-fun e!4595464 () Bool)

(assert (=> b!7752034 (= e!4595465 e!4595464)))

(declare-fun res!3091045 () Bool)

(assert (=> b!7752034 (=> (not res!3091045) (not e!4595464))))

(assert (=> b!7752034 (= res!3091045 call!718504)))

(declare-fun b!7752035 () Bool)

(declare-fun e!4595467 () Bool)

(assert (=> b!7752035 (= e!4595467 e!4595468)))

(declare-fun c!1429745 () Bool)

(assert (=> b!7752035 (= c!1429745 (is-Star!20620 lt!2669482))))

(declare-fun bm!718499 () Bool)

(assert (=> bm!718499 (= call!718505 (validRegex!11038 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))))))

(declare-fun bm!718500 () Bool)

(assert (=> bm!718500 (= call!718503 call!718505)))

(declare-fun d!2342756 () Bool)

(declare-fun res!3091046 () Bool)

(assert (=> d!2342756 (=> res!3091046 e!4595467)))

(assert (=> d!2342756 (= res!3091046 (is-ElementMatch!20620 lt!2669482))))

(assert (=> d!2342756 (= (validRegex!11038 lt!2669482) e!4595467)))

(declare-fun b!7752029 () Bool)

(assert (=> b!7752029 (= e!4595468 e!4595463)))

(assert (=> b!7752029 (= c!1429744 (is-Union!20620 lt!2669482))))

(declare-fun b!7752036 () Bool)

(declare-fun res!3091047 () Bool)

(assert (=> b!7752036 (=> res!3091047 e!4595465)))

(assert (=> b!7752036 (= res!3091047 (not (is-Concat!29465 lt!2669482)))))

(assert (=> b!7752036 (= e!4595463 e!4595465)))

(declare-fun b!7752037 () Bool)

(assert (=> b!7752037 (= e!4595464 call!718503)))

(assert (= (and d!2342756 (not res!3091046)) b!7752035))

(assert (= (and b!7752035 c!1429745) b!7752031))

(assert (= (and b!7752035 (not c!1429745)) b!7752029))

(assert (= (and b!7752031 res!3091048) b!7752033))

(assert (= (and b!7752029 c!1429744) b!7752032))

(assert (= (and b!7752029 (not c!1429744)) b!7752036))

(assert (= (and b!7752032 res!3091044) b!7752030))

(assert (= (and b!7752036 (not res!3091047)) b!7752034))

(assert (= (and b!7752034 res!3091045) b!7752037))

(assert (= (or b!7752032 b!7752034) bm!718498))

(assert (= (or b!7752030 b!7752037) bm!718500))

(assert (= (or b!7752033 bm!718500) bm!718499))

(declare-fun m!8217034 () Bool)

(assert (=> b!7752031 m!8217034))

(declare-fun m!8217036 () Bool)

(assert (=> bm!718498 m!8217036))

(declare-fun m!8217038 () Bool)

(assert (=> bm!718499 m!8217038))

(assert (=> start!738958 d!2342756))

(declare-fun b!7752041 () Bool)

(declare-fun e!4595479 () Bool)

(declare-fun lt!2669503 () Bool)

(declare-fun call!718510 () Bool)

(assert (=> b!7752041 (= e!4595479 (= lt!2669503 call!718510))))

(declare-fun b!7752043 () Bool)

(declare-fun e!4595471 () Bool)

(assert (=> b!7752043 (= e!4595471 (matchR!10110 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963)) (tail!15377 s2!3963)))))

(declare-fun b!7752044 () Bool)

(declare-fun e!4595478 () Bool)

(assert (=> b!7752044 (= e!4595478 (= (head!15837 s2!3963) (c!1429677 lt!2669482)))))

(declare-fun b!7752045 () Bool)

(declare-fun e!4595480 () Bool)

(assert (=> b!7752045 (= e!4595479 e!4595480)))

(declare-fun c!1429748 () Bool)

(assert (=> b!7752045 (= c!1429748 (is-EmptyLang!20620 lt!2669482))))

(declare-fun b!7752047 () Bool)

(declare-fun res!3091049 () Bool)

(declare-fun e!4595475 () Bool)

(assert (=> b!7752047 (=> res!3091049 e!4595475)))

(assert (=> b!7752047 (= res!3091049 (not (is-ElementMatch!20620 lt!2669482)))))

(assert (=> b!7752047 (= e!4595480 e!4595475)))

(declare-fun b!7752049 () Bool)

(declare-fun e!4595474 () Bool)

(assert (=> b!7752049 (= e!4595475 e!4595474)))

(declare-fun res!3091052 () Bool)

(assert (=> b!7752049 (=> (not res!3091052) (not e!4595474))))

(assert (=> b!7752049 (= res!3091052 (not lt!2669503))))

(declare-fun b!7752051 () Bool)

(assert (=> b!7752051 (= e!4595471 (nullable!9081 lt!2669482))))

(declare-fun b!7752053 () Bool)

(assert (=> b!7752053 (= e!4595480 (not lt!2669503))))

(declare-fun d!2342758 () Bool)

(assert (=> d!2342758 e!4595479))

(declare-fun c!1429753 () Bool)

(assert (=> d!2342758 (= c!1429753 (is-EmptyExpr!20620 lt!2669482))))

(assert (=> d!2342758 (= lt!2669503 e!4595471)))

(declare-fun c!1429746 () Bool)

(assert (=> d!2342758 (= c!1429746 (isEmpty!42029 s2!3963))))

(assert (=> d!2342758 (validRegex!11038 lt!2669482)))

(assert (=> d!2342758 (= (matchR!10110 lt!2669482 s2!3963) lt!2669503)))

(declare-fun b!7752055 () Bool)

(declare-fun res!3091056 () Bool)

(declare-fun e!4595473 () Bool)

(assert (=> b!7752055 (=> res!3091056 e!4595473)))

(assert (=> b!7752055 (= res!3091056 (not (isEmpty!42029 (tail!15377 s2!3963))))))

(declare-fun b!7752057 () Bool)

(declare-fun res!3091051 () Bool)

(assert (=> b!7752057 (=> (not res!3091051) (not e!4595478))))

(assert (=> b!7752057 (= res!3091051 (isEmpty!42029 (tail!15377 s2!3963)))))

(declare-fun b!7752058 () Bool)

(declare-fun res!3091055 () Bool)

(assert (=> b!7752058 (=> res!3091055 e!4595475)))

(assert (=> b!7752058 (= res!3091055 e!4595478)))

(declare-fun res!3091050 () Bool)

(assert (=> b!7752058 (=> (not res!3091050) (not e!4595478))))

(assert (=> b!7752058 (= res!3091050 lt!2669503)))

(declare-fun b!7752059 () Bool)

(assert (=> b!7752059 (= e!4595474 e!4595473)))

(declare-fun res!3091054 () Bool)

(assert (=> b!7752059 (=> res!3091054 e!4595473)))

(assert (=> b!7752059 (= res!3091054 call!718510)))

(declare-fun bm!718505 () Bool)

(assert (=> bm!718505 (= call!718510 (isEmpty!42029 s2!3963))))

(declare-fun b!7752060 () Bool)

(declare-fun res!3091053 () Bool)

(assert (=> b!7752060 (=> (not res!3091053) (not e!4595478))))

(assert (=> b!7752060 (= res!3091053 (not call!718510))))

(declare-fun b!7752061 () Bool)

(assert (=> b!7752061 (= e!4595473 (not (= (head!15837 s2!3963) (c!1429677 lt!2669482))))))

(assert (= (and d!2342758 c!1429746) b!7752051))

(assert (= (and d!2342758 (not c!1429746)) b!7752043))

(assert (= (and d!2342758 c!1429753) b!7752041))

(assert (= (and d!2342758 (not c!1429753)) b!7752045))

(assert (= (and b!7752045 c!1429748) b!7752053))

(assert (= (and b!7752045 (not c!1429748)) b!7752047))

(assert (= (and b!7752047 (not res!3091049)) b!7752058))

(assert (= (and b!7752058 res!3091050) b!7752060))

(assert (= (and b!7752060 res!3091053) b!7752057))

(assert (= (and b!7752057 res!3091051) b!7752044))

(assert (= (and b!7752058 (not res!3091055)) b!7752049))

(assert (= (and b!7752049 res!3091052) b!7752059))

(assert (= (and b!7752059 (not res!3091054)) b!7752055))

(assert (= (and b!7752055 (not res!3091056)) b!7752061))

(assert (= (or b!7752041 b!7752059 b!7752060) bm!718505))

(declare-fun m!8217044 () Bool)

(assert (=> b!7752057 m!8217044))

(assert (=> b!7752057 m!8217044))

(declare-fun m!8217046 () Bool)

(assert (=> b!7752057 m!8217046))

(declare-fun m!8217050 () Bool)

(assert (=> b!7752051 m!8217050))

(declare-fun m!8217054 () Bool)

(assert (=> b!7752043 m!8217054))

(assert (=> b!7752043 m!8217054))

(declare-fun m!8217056 () Bool)

(assert (=> b!7752043 m!8217056))

(assert (=> b!7752043 m!8217044))

(assert (=> b!7752043 m!8217056))

(assert (=> b!7752043 m!8217044))

(declare-fun m!8217058 () Bool)

(assert (=> b!7752043 m!8217058))

(declare-fun m!8217060 () Bool)

(assert (=> d!2342758 m!8217060))

(assert (=> d!2342758 m!8216930))

(assert (=> b!7752061 m!8217054))

(assert (=> b!7752044 m!8217054))

(assert (=> b!7752055 m!8217044))

(assert (=> b!7752055 m!8217044))

(assert (=> b!7752055 m!8217046))

(assert (=> bm!718505 m!8217060))

(assert (=> b!7751769 d!2342758))

(declare-fun b!7752072 () Bool)

(declare-fun e!4595491 () Bool)

(declare-fun lt!2669505 () Bool)

(declare-fun call!718515 () Bool)

(assert (=> b!7752072 (= e!4595491 (= lt!2669505 call!718515))))

(declare-fun b!7752073 () Bool)

(declare-fun e!4595486 () Bool)

(assert (=> b!7752073 (= e!4595486 (matchR!10110 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391))) (tail!15377 (t!388200 s1!4391))))))

(declare-fun b!7752074 () Bool)

(declare-fun e!4595490 () Bool)

(assert (=> b!7752074 (= e!4595490 (= (head!15837 (t!388200 s1!4391)) (c!1429677 lt!2669481)))))

(declare-fun b!7752075 () Bool)

(declare-fun e!4595492 () Bool)

(assert (=> b!7752075 (= e!4595491 e!4595492)))

(declare-fun c!1429760 () Bool)

(assert (=> b!7752075 (= c!1429760 (is-EmptyLang!20620 lt!2669481))))

(declare-fun b!7752076 () Bool)

(declare-fun res!3091057 () Bool)

(declare-fun e!4595489 () Bool)

(assert (=> b!7752076 (=> res!3091057 e!4595489)))

(assert (=> b!7752076 (= res!3091057 (not (is-ElementMatch!20620 lt!2669481)))))

(assert (=> b!7752076 (= e!4595492 e!4595489)))

(declare-fun b!7752077 () Bool)

(declare-fun e!4595488 () Bool)

(assert (=> b!7752077 (= e!4595489 e!4595488)))

(declare-fun res!3091060 () Bool)

(assert (=> b!7752077 (=> (not res!3091060) (not e!4595488))))

(assert (=> b!7752077 (= res!3091060 (not lt!2669505))))

(declare-fun b!7752078 () Bool)

(assert (=> b!7752078 (= e!4595486 (nullable!9081 lt!2669481))))

(declare-fun b!7752079 () Bool)

(assert (=> b!7752079 (= e!4595492 (not lt!2669505))))

(declare-fun d!2342762 () Bool)

(assert (=> d!2342762 e!4595491))

(declare-fun c!1429761 () Bool)

(assert (=> d!2342762 (= c!1429761 (is-EmptyExpr!20620 lt!2669481))))

(assert (=> d!2342762 (= lt!2669505 e!4595486)))

(declare-fun c!1429759 () Bool)

(assert (=> d!2342762 (= c!1429759 (isEmpty!42029 (t!388200 s1!4391)))))

(assert (=> d!2342762 (validRegex!11038 lt!2669481)))

(assert (=> d!2342762 (= (matchR!10110 lt!2669481 (t!388200 s1!4391)) lt!2669505)))

(declare-fun b!7752080 () Bool)

(declare-fun res!3091064 () Bool)

(declare-fun e!4595487 () Bool)

(assert (=> b!7752080 (=> res!3091064 e!4595487)))

(assert (=> b!7752080 (= res!3091064 (not (isEmpty!42029 (tail!15377 (t!388200 s1!4391)))))))

(declare-fun b!7752081 () Bool)

(declare-fun res!3091059 () Bool)

(assert (=> b!7752081 (=> (not res!3091059) (not e!4595490))))

(assert (=> b!7752081 (= res!3091059 (isEmpty!42029 (tail!15377 (t!388200 s1!4391))))))

(declare-fun b!7752082 () Bool)

(declare-fun res!3091063 () Bool)

(assert (=> b!7752082 (=> res!3091063 e!4595489)))

(assert (=> b!7752082 (= res!3091063 e!4595490)))

(declare-fun res!3091058 () Bool)

(assert (=> b!7752082 (=> (not res!3091058) (not e!4595490))))

(assert (=> b!7752082 (= res!3091058 lt!2669505)))

(declare-fun b!7752083 () Bool)

(assert (=> b!7752083 (= e!4595488 e!4595487)))

(declare-fun res!3091062 () Bool)

(assert (=> b!7752083 (=> res!3091062 e!4595487)))

(assert (=> b!7752083 (= res!3091062 call!718515)))

(declare-fun bm!718510 () Bool)

(assert (=> bm!718510 (= call!718515 (isEmpty!42029 (t!388200 s1!4391)))))

(declare-fun b!7752084 () Bool)

(declare-fun res!3091061 () Bool)

(assert (=> b!7752084 (=> (not res!3091061) (not e!4595490))))

(assert (=> b!7752084 (= res!3091061 (not call!718515))))

(declare-fun b!7752085 () Bool)

(assert (=> b!7752085 (= e!4595487 (not (= (head!15837 (t!388200 s1!4391)) (c!1429677 lt!2669481))))))

(assert (= (and d!2342762 c!1429759) b!7752078))

(assert (= (and d!2342762 (not c!1429759)) b!7752073))

(assert (= (and d!2342762 c!1429761) b!7752072))

(assert (= (and d!2342762 (not c!1429761)) b!7752075))

(assert (= (and b!7752075 c!1429760) b!7752079))

(assert (= (and b!7752075 (not c!1429760)) b!7752076))

(assert (= (and b!7752076 (not res!3091057)) b!7752082))

(assert (= (and b!7752082 res!3091058) b!7752084))

(assert (= (and b!7752084 res!3091061) b!7752081))

(assert (= (and b!7752081 res!3091059) b!7752074))

(assert (= (and b!7752082 (not res!3091063)) b!7752077))

(assert (= (and b!7752077 res!3091060) b!7752083))

(assert (= (and b!7752083 (not res!3091062)) b!7752080))

(assert (= (and b!7752080 (not res!3091064)) b!7752085))

(assert (= (or b!7752072 b!7752083 b!7752084) bm!718510))

(declare-fun m!8217070 () Bool)

(assert (=> b!7752081 m!8217070))

(assert (=> b!7752081 m!8217070))

(declare-fun m!8217072 () Bool)

(assert (=> b!7752081 m!8217072))

(declare-fun m!8217074 () Bool)

(assert (=> b!7752078 m!8217074))

(declare-fun m!8217076 () Bool)

(assert (=> b!7752073 m!8217076))

(assert (=> b!7752073 m!8217076))

(declare-fun m!8217078 () Bool)

(assert (=> b!7752073 m!8217078))

(assert (=> b!7752073 m!8217070))

(assert (=> b!7752073 m!8217078))

(assert (=> b!7752073 m!8217070))

(declare-fun m!8217080 () Bool)

(assert (=> b!7752073 m!8217080))

(declare-fun m!8217082 () Bool)

(assert (=> d!2342762 m!8217082))

(assert (=> d!2342762 m!8216932))

(assert (=> b!7752085 m!8217076))

(assert (=> b!7752074 m!8217076))

(assert (=> b!7752080 m!8217070))

(assert (=> b!7752080 m!8217070))

(assert (=> b!7752080 m!8217072))

(assert (=> bm!718510 m!8217082))

(assert (=> b!7751770 d!2342762))

(declare-fun e!4595504 () Bool)

(assert (=> b!7751768 (= tp!2274366 e!4595504)))

(declare-fun b!7752120 () Bool)

(assert (=> b!7752120 (= e!4595504 tp_is_empty!51595)))

(declare-fun b!7752122 () Bool)

(declare-fun tp!2274408 () Bool)

(assert (=> b!7752122 (= e!4595504 tp!2274408)))

(declare-fun b!7752121 () Bool)

(declare-fun tp!2274410 () Bool)

(declare-fun tp!2274409 () Bool)

(assert (=> b!7752121 (= e!4595504 (and tp!2274410 tp!2274409))))

(declare-fun b!7752123 () Bool)

(declare-fun tp!2274407 () Bool)

(declare-fun tp!2274406 () Bool)

(assert (=> b!7752123 (= e!4595504 (and tp!2274407 tp!2274406))))

(assert (= (and b!7751768 (is-ElementMatch!20620 (reg!20949 r!25892))) b!7752120))

(assert (= (and b!7751768 (is-Concat!29465 (reg!20949 r!25892))) b!7752121))

(assert (= (and b!7751768 (is-Star!20620 (reg!20949 r!25892))) b!7752122))

(assert (= (and b!7751768 (is-Union!20620 (reg!20949 r!25892))) b!7752123))

(declare-fun b!7752128 () Bool)

(declare-fun e!4595507 () Bool)

(declare-fun tp!2274415 () Bool)

(assert (=> b!7752128 (= e!4595507 (and tp_is_empty!51595 tp!2274415))))

(assert (=> b!7751763 (= tp!2274363 e!4595507)))

(assert (= (and b!7751763 (is-Cons!73341 (t!388200 s2!3963))) b!7752128))

(declare-fun b!7752129 () Bool)

(declare-fun e!4595508 () Bool)

(declare-fun tp!2274416 () Bool)

(assert (=> b!7752129 (= e!4595508 (and tp_is_empty!51595 tp!2274416))))

(assert (=> b!7751767 (= tp!2274360 e!4595508)))

(assert (= (and b!7751767 (is-Cons!73341 (t!388200 s1!4391))) b!7752129))

(declare-fun e!4595510 () Bool)

(assert (=> b!7751762 (= tp!2274362 e!4595510)))

(declare-fun b!7752134 () Bool)

(assert (=> b!7752134 (= e!4595510 tp_is_empty!51595)))

(declare-fun b!7752136 () Bool)

(declare-fun tp!2274424 () Bool)

(assert (=> b!7752136 (= e!4595510 tp!2274424)))

(declare-fun b!7752135 () Bool)

(declare-fun tp!2274426 () Bool)

(declare-fun tp!2274425 () Bool)

(assert (=> b!7752135 (= e!4595510 (and tp!2274426 tp!2274425))))

(declare-fun b!7752137 () Bool)

(declare-fun tp!2274423 () Bool)

(declare-fun tp!2274422 () Bool)

(assert (=> b!7752137 (= e!4595510 (and tp!2274423 tp!2274422))))

(assert (= (and b!7751762 (is-ElementMatch!20620 (regOne!41752 r!25892))) b!7752134))

(assert (= (and b!7751762 (is-Concat!29465 (regOne!41752 r!25892))) b!7752135))

(assert (= (and b!7751762 (is-Star!20620 (regOne!41752 r!25892))) b!7752136))

(assert (= (and b!7751762 (is-Union!20620 (regOne!41752 r!25892))) b!7752137))

(declare-fun e!4595511 () Bool)

(assert (=> b!7751762 (= tp!2274364 e!4595511)))

(declare-fun b!7752138 () Bool)

(assert (=> b!7752138 (= e!4595511 tp_is_empty!51595)))

(declare-fun b!7752140 () Bool)

(declare-fun tp!2274429 () Bool)

(assert (=> b!7752140 (= e!4595511 tp!2274429)))

(declare-fun b!7752139 () Bool)

(declare-fun tp!2274431 () Bool)

(declare-fun tp!2274430 () Bool)

(assert (=> b!7752139 (= e!4595511 (and tp!2274431 tp!2274430))))

(declare-fun b!7752141 () Bool)

(declare-fun tp!2274428 () Bool)

(declare-fun tp!2274427 () Bool)

(assert (=> b!7752141 (= e!4595511 (and tp!2274428 tp!2274427))))

(assert (= (and b!7751762 (is-ElementMatch!20620 (regTwo!41752 r!25892))) b!7752138))

(assert (= (and b!7751762 (is-Concat!29465 (regTwo!41752 r!25892))) b!7752139))

(assert (= (and b!7751762 (is-Star!20620 (regTwo!41752 r!25892))) b!7752140))

(assert (= (and b!7751762 (is-Union!20620 (regTwo!41752 r!25892))) b!7752141))

(declare-fun e!4595513 () Bool)

(assert (=> b!7751766 (= tp!2274361 e!4595513)))

(declare-fun b!7752146 () Bool)

(assert (=> b!7752146 (= e!4595513 tp_is_empty!51595)))

(declare-fun b!7752148 () Bool)

(declare-fun tp!2274439 () Bool)

(assert (=> b!7752148 (= e!4595513 tp!2274439)))

(declare-fun b!7752147 () Bool)

(declare-fun tp!2274441 () Bool)

(declare-fun tp!2274440 () Bool)

(assert (=> b!7752147 (= e!4595513 (and tp!2274441 tp!2274440))))

(declare-fun b!7752149 () Bool)

(declare-fun tp!2274438 () Bool)

(declare-fun tp!2274437 () Bool)

(assert (=> b!7752149 (= e!4595513 (and tp!2274438 tp!2274437))))

(assert (= (and b!7751766 (is-ElementMatch!20620 (regOne!41753 r!25892))) b!7752146))

(assert (= (and b!7751766 (is-Concat!29465 (regOne!41753 r!25892))) b!7752147))

(assert (= (and b!7751766 (is-Star!20620 (regOne!41753 r!25892))) b!7752148))

(assert (= (and b!7751766 (is-Union!20620 (regOne!41753 r!25892))) b!7752149))

(declare-fun e!4595515 () Bool)

(assert (=> b!7751766 (= tp!2274365 e!4595515)))

(declare-fun b!7752154 () Bool)

(assert (=> b!7752154 (= e!4595515 tp_is_empty!51595)))

(declare-fun b!7752156 () Bool)

(declare-fun tp!2274449 () Bool)

(assert (=> b!7752156 (= e!4595515 tp!2274449)))

(declare-fun b!7752155 () Bool)

(declare-fun tp!2274451 () Bool)

(declare-fun tp!2274450 () Bool)

(assert (=> b!7752155 (= e!4595515 (and tp!2274451 tp!2274450))))

(declare-fun b!7752157 () Bool)

(declare-fun tp!2274448 () Bool)

(declare-fun tp!2274447 () Bool)

(assert (=> b!7752157 (= e!4595515 (and tp!2274448 tp!2274447))))

(assert (= (and b!7751766 (is-ElementMatch!20620 (regTwo!41753 r!25892))) b!7752154))

(assert (= (and b!7751766 (is-Concat!29465 (regTwo!41753 r!25892))) b!7752155))

(assert (= (and b!7751766 (is-Star!20620 (regTwo!41753 r!25892))) b!7752156))

(assert (= (and b!7751766 (is-Union!20620 (regTwo!41753 r!25892))) b!7752157))

(push 1)

(assert (not b!7752080))

(assert (not bm!718498))

(assert (not b!7751846))

(assert (not b!7752043))

(assert (not b!7751927))

(assert (not b!7751920))

(assert (not b!7752044))

(assert (not b!7752155))

(assert (not bm!718491))

(assert (not b!7752149))

(assert (not b!7752122))

(assert (not b!7752128))

(assert (not d!2342746))

(assert (not b!7752123))

(assert (not b!7752055))

(assert (not b!7752156))

(assert (not bm!718497))

(assert tp_is_empty!51595)

(assert (not b!7752078))

(assert (not b!7752085))

(assert (not b!7752148))

(assert (not b!7752141))

(assert (not bm!718495))

(assert (not b!7752147))

(assert (not d!2342754))

(assert (not b!7751931))

(assert (not b!7752136))

(assert (not d!2342758))

(assert (not bm!718499))

(assert (not b!7752137))

(assert (not b!7752061))

(assert (not b!7752074))

(assert (not bm!718468))

(assert (not d!2342762))

(assert (not b!7752019))

(assert (not b!7752121))

(assert (not b!7752129))

(assert (not bm!718458))

(assert (not bm!718505))

(assert (not b!7752139))

(assert (not b!7752051))

(assert (not b!7752057))

(assert (not b!7752031))

(assert (not d!2342742))

(assert (not bm!718510))

(assert (not b!7752157))

(assert (not b!7751919))

(assert (not b!7752009))

(assert (not b!7751926))

(assert (not b!7752140))

(assert (not b!7752081))

(assert (not b!7752135))

(assert (not bm!718493))

(assert (not b!7752073))

(assert (not bm!718459))

(assert (not b!7751924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!718512 () Bool)

(declare-fun call!718520 () Regex!20620)

(declare-fun call!718518 () Regex!20620)

(assert (=> bm!718512 (= call!718520 call!718518)))

(declare-fun b!7752172 () Bool)

(declare-fun c!1429765 () Bool)

(assert (=> b!7752172 (= c!1429765 (nullable!9081 (regOne!41752 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892)))))))

(declare-fun e!4595526 () Regex!20620)

(declare-fun e!4595525 () Regex!20620)

(assert (=> b!7752172 (= e!4595526 e!4595525)))

(declare-fun c!1429766 () Bool)

(declare-fun c!1429769 () Bool)

(declare-fun bm!718513 () Bool)

(assert (=> bm!718513 (= call!718518 (derivativeStep!6041 (ite c!1429769 (regOne!41753 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892))) (ite c!1429766 (reg!20949 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892))) (regOne!41752 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892))))) (h!79789 s1!4391)))))

(declare-fun b!7752173 () Bool)

(declare-fun call!718517 () Regex!20620)

(declare-fun call!718519 () Regex!20620)

(assert (=> b!7752173 (= e!4595525 (Union!20620 (Concat!29465 call!718517 (regTwo!41752 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892)))) call!718519))))

(declare-fun d!2342766 () Bool)

(declare-fun lt!2669507 () Regex!20620)

(assert (=> d!2342766 (validRegex!11038 lt!2669507)))

(declare-fun e!4595522 () Regex!20620)

(assert (=> d!2342766 (= lt!2669507 e!4595522)))

(declare-fun c!1429767 () Bool)

(assert (=> d!2342766 (= c!1429767 (or (is-EmptyExpr!20620 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892))) (is-EmptyLang!20620 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892)))))))

(assert (=> d!2342766 (validRegex!11038 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892)))))

(assert (=> d!2342766 (= (derivativeStep!6041 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892)) (h!79789 s1!4391)) lt!2669507)))

(declare-fun bm!718514 () Bool)

(assert (=> bm!718514 (= call!718517 call!718520)))

(declare-fun e!4595523 () Regex!20620)

(declare-fun b!7752174 () Bool)

(assert (=> b!7752174 (= e!4595523 (ite (= (h!79789 s1!4391) (c!1429677 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892)))) EmptyExpr!20620 EmptyLang!20620))))

(declare-fun bm!718515 () Bool)

(assert (=> bm!718515 (= call!718519 (derivativeStep!6041 (ite c!1429769 (regTwo!41753 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892))) (regTwo!41752 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892)))) (h!79789 s1!4391)))))

(declare-fun b!7752175 () Bool)

(assert (=> b!7752175 (= e!4595525 (Union!20620 (Concat!29465 call!718517 (regTwo!41752 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892)))) EmptyLang!20620))))

(declare-fun b!7752176 () Bool)

(assert (=> b!7752176 (= e!4595526 (Concat!29465 call!718520 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892))))))

(declare-fun b!7752177 () Bool)

(declare-fun e!4595524 () Regex!20620)

(assert (=> b!7752177 (= e!4595524 (Union!20620 call!718518 call!718519))))

(declare-fun b!7752178 () Bool)

(assert (=> b!7752178 (= e!4595522 EmptyLang!20620)))

(declare-fun b!7752179 () Bool)

(assert (=> b!7752179 (= e!4595522 e!4595523)))

(declare-fun c!1429768 () Bool)

(assert (=> b!7752179 (= c!1429768 (is-ElementMatch!20620 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892))))))

(declare-fun b!7752180 () Bool)

(assert (=> b!7752180 (= c!1429769 (is-Union!20620 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892))))))

(assert (=> b!7752180 (= e!4595523 e!4595524)))

(declare-fun b!7752181 () Bool)

(assert (=> b!7752181 (= e!4595524 e!4595526)))

(assert (=> b!7752181 (= c!1429766 (is-Star!20620 (ite c!1429743 (regTwo!41753 r!25892) (regTwo!41752 r!25892))))))

(assert (= (and d!2342766 c!1429767) b!7752178))

(assert (= (and d!2342766 (not c!1429767)) b!7752179))

(assert (= (and b!7752179 c!1429768) b!7752174))

(assert (= (and b!7752179 (not c!1429768)) b!7752180))

(assert (= (and b!7752180 c!1429769) b!7752177))

(assert (= (and b!7752180 (not c!1429769)) b!7752181))

(assert (= (and b!7752181 c!1429766) b!7752176))

(assert (= (and b!7752181 (not c!1429766)) b!7752172))

(assert (= (and b!7752172 c!1429765) b!7752173))

(assert (= (and b!7752172 (not c!1429765)) b!7752175))

(assert (= (or b!7752173 b!7752175) bm!718514))

(assert (= (or b!7752176 bm!718514) bm!718512))

(assert (= (or b!7752177 b!7752173) bm!718515))

(assert (= (or b!7752177 bm!718512) bm!718513))

(declare-fun m!8217098 () Bool)

(assert (=> b!7752172 m!8217098))

(declare-fun m!8217100 () Bool)

(assert (=> bm!718513 m!8217100))

(declare-fun m!8217102 () Bool)

(assert (=> d!2342766 m!8217102))

(declare-fun m!8217104 () Bool)

(assert (=> d!2342766 m!8217104))

(declare-fun m!8217106 () Bool)

(assert (=> bm!718515 m!8217106))

(assert (=> bm!718497 d!2342766))

(declare-fun bm!718516 () Bool)

(declare-fun call!718524 () Regex!20620)

(declare-fun call!718522 () Regex!20620)

(assert (=> bm!718516 (= call!718524 call!718522)))

(declare-fun b!7752182 () Bool)

(declare-fun c!1429770 () Bool)

(assert (=> b!7752182 (= c!1429770 (nullable!9081 (regOne!41752 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))))))))

(declare-fun e!4595531 () Regex!20620)

(declare-fun e!4595530 () Regex!20620)

(assert (=> b!7752182 (= e!4595531 e!4595530)))

(declare-fun bm!718517 () Bool)

(declare-fun c!1429771 () Bool)

(declare-fun c!1429774 () Bool)

(assert (=> bm!718517 (= call!718522 (derivativeStep!6041 (ite c!1429774 (regOne!41753 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482)))) (ite c!1429771 (reg!20949 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482)))) (regOne!41752 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482)))))) (h!79789 s1!4391)))))

(declare-fun call!718523 () Regex!20620)

(declare-fun b!7752183 () Bool)

(declare-fun call!718521 () Regex!20620)

(assert (=> b!7752183 (= e!4595530 (Union!20620 (Concat!29465 call!718521 (regTwo!41752 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))))) call!718523))))

(declare-fun d!2342768 () Bool)

(declare-fun lt!2669508 () Regex!20620)

(assert (=> d!2342768 (validRegex!11038 lt!2669508)))

(declare-fun e!4595527 () Regex!20620)

(assert (=> d!2342768 (= lt!2669508 e!4595527)))

(declare-fun c!1429772 () Bool)

(assert (=> d!2342768 (= c!1429772 (or (is-EmptyExpr!20620 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482)))) (is-EmptyLang!20620 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))))))))

(assert (=> d!2342768 (validRegex!11038 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))))))

(assert (=> d!2342768 (= (derivativeStep!6041 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))) (h!79789 s1!4391)) lt!2669508)))

(declare-fun bm!718518 () Bool)

(assert (=> bm!718518 (= call!718521 call!718524)))

(declare-fun b!7752184 () Bool)

(declare-fun e!4595528 () Regex!20620)

(assert (=> b!7752184 (= e!4595528 (ite (= (h!79789 s1!4391) (c!1429677 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))))) EmptyExpr!20620 EmptyLang!20620))))

(declare-fun bm!718519 () Bool)

(assert (=> bm!718519 (= call!718523 (derivativeStep!6041 (ite c!1429774 (regTwo!41753 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482)))) (regTwo!41752 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))))) (h!79789 s1!4391)))))

(declare-fun b!7752185 () Bool)

(assert (=> b!7752185 (= e!4595530 (Union!20620 (Concat!29465 call!718521 (regTwo!41752 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))))) EmptyLang!20620))))

(declare-fun b!7752186 () Bool)

(assert (=> b!7752186 (= e!4595531 (Concat!29465 call!718524 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482)))))))

(declare-fun b!7752187 () Bool)

(declare-fun e!4595529 () Regex!20620)

(assert (=> b!7752187 (= e!4595529 (Union!20620 call!718522 call!718523))))

(declare-fun b!7752188 () Bool)

(assert (=> b!7752188 (= e!4595527 EmptyLang!20620)))

(declare-fun b!7752189 () Bool)

(assert (=> b!7752189 (= e!4595527 e!4595528)))

(declare-fun c!1429773 () Bool)

(assert (=> b!7752189 (= c!1429773 (is-ElementMatch!20620 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482)))))))

(declare-fun b!7752190 () Bool)

(assert (=> b!7752190 (= c!1429774 (is-Union!20620 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482)))))))

(assert (=> b!7752190 (= e!4595528 e!4595529)))

(declare-fun b!7752191 () Bool)

(assert (=> b!7752191 (= e!4595529 e!4595531)))

(assert (=> b!7752191 (= c!1429771 (is-Star!20620 (ite c!1429738 (regOne!41753 lt!2669482) (ite c!1429735 (reg!20949 lt!2669482) (regOne!41752 lt!2669482)))))))

(assert (= (and d!2342768 c!1429772) b!7752188))

(assert (= (and d!2342768 (not c!1429772)) b!7752189))

(assert (= (and b!7752189 c!1429773) b!7752184))

(assert (= (and b!7752189 (not c!1429773)) b!7752190))

(assert (= (and b!7752190 c!1429774) b!7752187))

(assert (= (and b!7752190 (not c!1429774)) b!7752191))

(assert (= (and b!7752191 c!1429771) b!7752186))

(assert (= (and b!7752191 (not c!1429771)) b!7752182))

(assert (= (and b!7752182 c!1429770) b!7752183))

(assert (= (and b!7752182 (not c!1429770)) b!7752185))

(assert (= (or b!7752183 b!7752185) bm!718518))

(assert (= (or b!7752186 bm!718518) bm!718516))

(assert (= (or b!7752187 b!7752183) bm!718519))

(assert (= (or b!7752187 bm!718516) bm!718517))

(declare-fun m!8217108 () Bool)

(assert (=> b!7752182 m!8217108))

(declare-fun m!8217110 () Bool)

(assert (=> bm!718517 m!8217110))

(declare-fun m!8217112 () Bool)

(assert (=> d!2342768 m!8217112))

(declare-fun m!8217114 () Bool)

(assert (=> d!2342768 m!8217114))

(declare-fun m!8217116 () Bool)

(assert (=> bm!718519 m!8217116))

(assert (=> bm!718491 d!2342768))

(declare-fun b!7752193 () Bool)

(declare-fun e!4595532 () Bool)

(declare-fun call!718525 () Bool)

(assert (=> b!7752193 (= e!4595532 call!718525)))

(declare-fun b!7752194 () Bool)

(declare-fun e!4595538 () Bool)

(declare-fun e!4595536 () Bool)

(assert (=> b!7752194 (= e!4595538 e!4595536)))

(declare-fun res!3091077 () Bool)

(assert (=> b!7752194 (= res!3091077 (not (nullable!9081 (reg!20949 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))))))))

(assert (=> b!7752194 (=> (not res!3091077) (not e!4595536))))

(declare-fun b!7752195 () Bool)

(declare-fun res!3091073 () Bool)

(assert (=> b!7752195 (=> (not res!3091073) (not e!4595532))))

(declare-fun call!718526 () Bool)

(assert (=> b!7752195 (= res!3091073 call!718526)))

(declare-fun e!4595533 () Bool)

(assert (=> b!7752195 (= e!4595533 e!4595532)))

(declare-fun bm!718520 () Bool)

(declare-fun c!1429775 () Bool)

(assert (=> bm!718520 (= call!718526 (validRegex!11038 (ite c!1429775 (regOne!41753 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))) (regOne!41752 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))))))))

(declare-fun b!7752196 () Bool)

(declare-fun call!718527 () Bool)

(assert (=> b!7752196 (= e!4595536 call!718527)))

(declare-fun b!7752197 () Bool)

(declare-fun e!4595535 () Bool)

(declare-fun e!4595534 () Bool)

(assert (=> b!7752197 (= e!4595535 e!4595534)))

(declare-fun res!3091074 () Bool)

(assert (=> b!7752197 (=> (not res!3091074) (not e!4595534))))

(assert (=> b!7752197 (= res!3091074 call!718526)))

(declare-fun b!7752198 () Bool)

(declare-fun e!4595537 () Bool)

(assert (=> b!7752198 (= e!4595537 e!4595538)))

(declare-fun c!1429776 () Bool)

(assert (=> b!7752198 (= c!1429776 (is-Star!20620 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))))))

(declare-fun bm!718521 () Bool)

(assert (=> bm!718521 (= call!718527 (validRegex!11038 (ite c!1429776 (reg!20949 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))) (ite c!1429775 (regTwo!41753 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))) (regTwo!41752 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481))))))))))

(declare-fun bm!718522 () Bool)

(assert (=> bm!718522 (= call!718525 call!718527)))

(declare-fun d!2342770 () Bool)

(declare-fun res!3091075 () Bool)

(assert (=> d!2342770 (=> res!3091075 e!4595537)))

(assert (=> d!2342770 (= res!3091075 (is-ElementMatch!20620 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))))))

(assert (=> d!2342770 (= (validRegex!11038 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))) e!4595537)))

(declare-fun b!7752192 () Bool)

(assert (=> b!7752192 (= e!4595538 e!4595533)))

(assert (=> b!7752192 (= c!1429775 (is-Union!20620 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)))))))

(declare-fun b!7752199 () Bool)

(declare-fun res!3091076 () Bool)

(assert (=> b!7752199 (=> res!3091076 e!4595535)))

(assert (=> b!7752199 (= res!3091076 (not (is-Concat!29465 (ite c!1429688 (reg!20949 lt!2669481) (ite c!1429687 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481))))))))

(assert (=> b!7752199 (= e!4595533 e!4595535)))

(declare-fun b!7752200 () Bool)

(assert (=> b!7752200 (= e!4595534 call!718525)))

(assert (= (and d!2342770 (not res!3091075)) b!7752198))

(assert (= (and b!7752198 c!1429776) b!7752194))

(assert (= (and b!7752198 (not c!1429776)) b!7752192))

(assert (= (and b!7752194 res!3091077) b!7752196))

(assert (= (and b!7752192 c!1429775) b!7752195))

(assert (= (and b!7752192 (not c!1429775)) b!7752199))

(assert (= (and b!7752195 res!3091073) b!7752193))

(assert (= (and b!7752199 (not res!3091076)) b!7752197))

(assert (= (and b!7752197 res!3091074) b!7752200))

(assert (= (or b!7752195 b!7752197) bm!718520))

(assert (= (or b!7752193 b!7752200) bm!718522))

(assert (= (or b!7752196 bm!718522) bm!718521))

(declare-fun m!8217118 () Bool)

(assert (=> b!7752194 m!8217118))

(declare-fun m!8217120 () Bool)

(assert (=> bm!718520 m!8217120))

(declare-fun m!8217122 () Bool)

(assert (=> bm!718521 m!8217122))

(assert (=> bm!718459 d!2342770))

(declare-fun b!7752202 () Bool)

(declare-fun e!4595539 () Bool)

(declare-fun call!718528 () Bool)

(assert (=> b!7752202 (= e!4595539 call!718528)))

(declare-fun b!7752203 () Bool)

(declare-fun e!4595545 () Bool)

(declare-fun e!4595543 () Bool)

(assert (=> b!7752203 (= e!4595545 e!4595543)))

(declare-fun res!3091082 () Bool)

(assert (=> b!7752203 (= res!3091082 (not (nullable!9081 (reg!20949 lt!2669501))))))

(assert (=> b!7752203 (=> (not res!3091082) (not e!4595543))))

(declare-fun b!7752204 () Bool)

(declare-fun res!3091078 () Bool)

(assert (=> b!7752204 (=> (not res!3091078) (not e!4595539))))

(declare-fun call!718529 () Bool)

(assert (=> b!7752204 (= res!3091078 call!718529)))

(declare-fun e!4595540 () Bool)

(assert (=> b!7752204 (= e!4595540 e!4595539)))

(declare-fun bm!718523 () Bool)

(declare-fun c!1429777 () Bool)

(assert (=> bm!718523 (= call!718529 (validRegex!11038 (ite c!1429777 (regOne!41753 lt!2669501) (regOne!41752 lt!2669501))))))

(declare-fun b!7752205 () Bool)

(declare-fun call!718530 () Bool)

(assert (=> b!7752205 (= e!4595543 call!718530)))

(declare-fun b!7752206 () Bool)

(declare-fun e!4595542 () Bool)

(declare-fun e!4595541 () Bool)

(assert (=> b!7752206 (= e!4595542 e!4595541)))

(declare-fun res!3091079 () Bool)

(assert (=> b!7752206 (=> (not res!3091079) (not e!4595541))))

(assert (=> b!7752206 (= res!3091079 call!718529)))

(declare-fun b!7752207 () Bool)

(declare-fun e!4595544 () Bool)

(assert (=> b!7752207 (= e!4595544 e!4595545)))

(declare-fun c!1429778 () Bool)

(assert (=> b!7752207 (= c!1429778 (is-Star!20620 lt!2669501))))

(declare-fun bm!718524 () Bool)

(assert (=> bm!718524 (= call!718530 (validRegex!11038 (ite c!1429778 (reg!20949 lt!2669501) (ite c!1429777 (regTwo!41753 lt!2669501) (regTwo!41752 lt!2669501)))))))

(declare-fun bm!718525 () Bool)

(assert (=> bm!718525 (= call!718528 call!718530)))

(declare-fun d!2342772 () Bool)

(declare-fun res!3091080 () Bool)

(assert (=> d!2342772 (=> res!3091080 e!4595544)))

(assert (=> d!2342772 (= res!3091080 (is-ElementMatch!20620 lt!2669501))))

(assert (=> d!2342772 (= (validRegex!11038 lt!2669501) e!4595544)))

(declare-fun b!7752201 () Bool)

(assert (=> b!7752201 (= e!4595545 e!4595540)))

(assert (=> b!7752201 (= c!1429777 (is-Union!20620 lt!2669501))))

(declare-fun b!7752208 () Bool)

(declare-fun res!3091081 () Bool)

(assert (=> b!7752208 (=> res!3091081 e!4595542)))

(assert (=> b!7752208 (= res!3091081 (not (is-Concat!29465 lt!2669501)))))

(assert (=> b!7752208 (= e!4595540 e!4595542)))

(declare-fun b!7752209 () Bool)

(assert (=> b!7752209 (= e!4595541 call!718528)))

(assert (= (and d!2342772 (not res!3091080)) b!7752207))

(assert (= (and b!7752207 c!1429778) b!7752203))

(assert (= (and b!7752207 (not c!1429778)) b!7752201))

(assert (= (and b!7752203 res!3091082) b!7752205))

(assert (= (and b!7752201 c!1429777) b!7752204))

(assert (= (and b!7752201 (not c!1429777)) b!7752208))

(assert (= (and b!7752204 res!3091078) b!7752202))

(assert (= (and b!7752208 (not res!3091081)) b!7752206))

(assert (= (and b!7752206 res!3091079) b!7752209))

(assert (= (or b!7752204 b!7752206) bm!718523))

(assert (= (or b!7752202 b!7752209) bm!718525))

(assert (= (or b!7752205 bm!718525) bm!718524))

(declare-fun m!8217124 () Bool)

(assert (=> b!7752203 m!8217124))

(declare-fun m!8217126 () Bool)

(assert (=> bm!718523 m!8217126))

(declare-fun m!8217128 () Bool)

(assert (=> bm!718524 m!8217128))

(assert (=> d!2342754 d!2342772))

(declare-fun b!7752211 () Bool)

(declare-fun e!4595546 () Bool)

(declare-fun call!718531 () Bool)

(assert (=> b!7752211 (= e!4595546 call!718531)))

(declare-fun b!7752212 () Bool)

(declare-fun e!4595552 () Bool)

(declare-fun e!4595550 () Bool)

(assert (=> b!7752212 (= e!4595552 e!4595550)))

(declare-fun res!3091087 () Bool)

(assert (=> b!7752212 (= res!3091087 (not (nullable!9081 (reg!20949 r!25892))))))

(assert (=> b!7752212 (=> (not res!3091087) (not e!4595550))))

(declare-fun b!7752213 () Bool)

(declare-fun res!3091083 () Bool)

(assert (=> b!7752213 (=> (not res!3091083) (not e!4595546))))

(declare-fun call!718532 () Bool)

(assert (=> b!7752213 (= res!3091083 call!718532)))

(declare-fun e!4595547 () Bool)

(assert (=> b!7752213 (= e!4595547 e!4595546)))

(declare-fun bm!718526 () Bool)

(declare-fun c!1429779 () Bool)

(assert (=> bm!718526 (= call!718532 (validRegex!11038 (ite c!1429779 (regOne!41753 r!25892) (regOne!41752 r!25892))))))

(declare-fun b!7752214 () Bool)

(declare-fun call!718533 () Bool)

(assert (=> b!7752214 (= e!4595550 call!718533)))

(declare-fun b!7752215 () Bool)

(declare-fun e!4595549 () Bool)

(declare-fun e!4595548 () Bool)

(assert (=> b!7752215 (= e!4595549 e!4595548)))

(declare-fun res!3091084 () Bool)

(assert (=> b!7752215 (=> (not res!3091084) (not e!4595548))))

(assert (=> b!7752215 (= res!3091084 call!718532)))

(declare-fun b!7752216 () Bool)

(declare-fun e!4595551 () Bool)

(assert (=> b!7752216 (= e!4595551 e!4595552)))

(declare-fun c!1429780 () Bool)

(assert (=> b!7752216 (= c!1429780 (is-Star!20620 r!25892))))

(declare-fun bm!718527 () Bool)

(assert (=> bm!718527 (= call!718533 (validRegex!11038 (ite c!1429780 (reg!20949 r!25892) (ite c!1429779 (regTwo!41753 r!25892) (regTwo!41752 r!25892)))))))

(declare-fun bm!718528 () Bool)

(assert (=> bm!718528 (= call!718531 call!718533)))

(declare-fun d!2342774 () Bool)

(declare-fun res!3091085 () Bool)

(assert (=> d!2342774 (=> res!3091085 e!4595551)))

(assert (=> d!2342774 (= res!3091085 (is-ElementMatch!20620 r!25892))))

(assert (=> d!2342774 (= (validRegex!11038 r!25892) e!4595551)))

(declare-fun b!7752210 () Bool)

(assert (=> b!7752210 (= e!4595552 e!4595547)))

(assert (=> b!7752210 (= c!1429779 (is-Union!20620 r!25892))))

(declare-fun b!7752217 () Bool)

(declare-fun res!3091086 () Bool)

(assert (=> b!7752217 (=> res!3091086 e!4595549)))

(assert (=> b!7752217 (= res!3091086 (not (is-Concat!29465 r!25892)))))

(assert (=> b!7752217 (= e!4595547 e!4595549)))

(declare-fun b!7752218 () Bool)

(assert (=> b!7752218 (= e!4595548 call!718531)))

(assert (= (and d!2342774 (not res!3091085)) b!7752216))

(assert (= (and b!7752216 c!1429780) b!7752212))

(assert (= (and b!7752216 (not c!1429780)) b!7752210))

(assert (= (and b!7752212 res!3091087) b!7752214))

(assert (= (and b!7752210 c!1429779) b!7752213))

(assert (= (and b!7752210 (not c!1429779)) b!7752217))

(assert (= (and b!7752213 res!3091083) b!7752211))

(assert (= (and b!7752217 (not res!3091086)) b!7752215))

(assert (= (and b!7752215 res!3091084) b!7752218))

(assert (= (or b!7752213 b!7752215) bm!718526))

(assert (= (or b!7752211 b!7752218) bm!718528))

(assert (= (or b!7752214 bm!718528) bm!718527))

(declare-fun m!8217130 () Bool)

(assert (=> b!7752212 m!8217130))

(declare-fun m!8217132 () Bool)

(assert (=> bm!718526 m!8217132))

(declare-fun m!8217134 () Bool)

(assert (=> bm!718527 m!8217134))

(assert (=> d!2342754 d!2342774))

(declare-fun d!2342776 () Bool)

(declare-fun nullableFct!3580 (Regex!20620) Bool)

(assert (=> d!2342776 (= (nullable!9081 lt!2669482) (nullableFct!3580 lt!2669482))))

(declare-fun bs!1965821 () Bool)

(assert (= bs!1965821 d!2342776))

(declare-fun m!8217136 () Bool)

(assert (=> bs!1965821 m!8217136))

(assert (=> b!7752051 d!2342776))

(declare-fun b!7752220 () Bool)

(declare-fun e!4595553 () Bool)

(declare-fun call!718534 () Bool)

(assert (=> b!7752220 (= e!4595553 call!718534)))

(declare-fun b!7752221 () Bool)

(declare-fun e!4595559 () Bool)

(declare-fun e!4595557 () Bool)

(assert (=> b!7752221 (= e!4595559 e!4595557)))

(declare-fun res!3091092 () Bool)

(assert (=> b!7752221 (= res!3091092 (not (nullable!9081 (reg!20949 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))))))))

(assert (=> b!7752221 (=> (not res!3091092) (not e!4595557))))

(declare-fun b!7752222 () Bool)

(declare-fun res!3091088 () Bool)

(assert (=> b!7752222 (=> (not res!3091088) (not e!4595553))))

(declare-fun call!718535 () Bool)

(assert (=> b!7752222 (= res!3091088 call!718535)))

(declare-fun e!4595554 () Bool)

(assert (=> b!7752222 (= e!4595554 e!4595553)))

(declare-fun bm!718529 () Bool)

(declare-fun c!1429781 () Bool)

(assert (=> bm!718529 (= call!718535 (validRegex!11038 (ite c!1429781 (regOne!41753 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))) (regOne!41752 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))))))))

(declare-fun b!7752223 () Bool)

(declare-fun call!718536 () Bool)

(assert (=> b!7752223 (= e!4595557 call!718536)))

(declare-fun b!7752224 () Bool)

(declare-fun e!4595556 () Bool)

(declare-fun e!4595555 () Bool)

(assert (=> b!7752224 (= e!4595556 e!4595555)))

(declare-fun res!3091089 () Bool)

(assert (=> b!7752224 (=> (not res!3091089) (not e!4595555))))

(assert (=> b!7752224 (= res!3091089 call!718535)))

(declare-fun b!7752225 () Bool)

(declare-fun e!4595558 () Bool)

(assert (=> b!7752225 (= e!4595558 e!4595559)))

(declare-fun c!1429782 () Bool)

(assert (=> b!7752225 (= c!1429782 (is-Star!20620 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))))))

(declare-fun bm!718530 () Bool)

(assert (=> bm!718530 (= call!718536 (validRegex!11038 (ite c!1429782 (reg!20949 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))) (ite c!1429781 (regTwo!41753 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))) (regTwo!41752 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))))))))))

(declare-fun bm!718531 () Bool)

(assert (=> bm!718531 (= call!718534 call!718536)))

(declare-fun d!2342778 () Bool)

(declare-fun res!3091090 () Bool)

(assert (=> d!2342778 (=> res!3091090 e!4595558)))

(assert (=> d!2342778 (= res!3091090 (is-ElementMatch!20620 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))))))

(assert (=> d!2342778 (= (validRegex!11038 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))) e!4595558)))

(declare-fun b!7752219 () Bool)

(assert (=> b!7752219 (= e!4595559 e!4595554)))

(assert (=> b!7752219 (= c!1429781 (is-Union!20620 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))))))

(declare-fun b!7752226 () Bool)

(declare-fun res!3091091 () Bool)

(assert (=> b!7752226 (=> res!3091091 e!4595556)))

(assert (=> b!7752226 (= res!3091091 (not (is-Concat!29465 (ite c!1429745 (reg!20949 lt!2669482) (ite c!1429744 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))))))))

(assert (=> b!7752226 (= e!4595554 e!4595556)))

(declare-fun b!7752227 () Bool)

(assert (=> b!7752227 (= e!4595555 call!718534)))

(assert (= (and d!2342778 (not res!3091090)) b!7752225))

(assert (= (and b!7752225 c!1429782) b!7752221))

(assert (= (and b!7752225 (not c!1429782)) b!7752219))

(assert (= (and b!7752221 res!3091092) b!7752223))

(assert (= (and b!7752219 c!1429781) b!7752222))

(assert (= (and b!7752219 (not c!1429781)) b!7752226))

(assert (= (and b!7752222 res!3091088) b!7752220))

(assert (= (and b!7752226 (not res!3091091)) b!7752224))

(assert (= (and b!7752224 res!3091089) b!7752227))

(assert (= (or b!7752222 b!7752224) bm!718529))

(assert (= (or b!7752220 b!7752227) bm!718531))

(assert (= (or b!7752223 bm!718531) bm!718530))

(declare-fun m!8217138 () Bool)

(assert (=> b!7752221 m!8217138))

(declare-fun m!8217140 () Bool)

(assert (=> bm!718529 m!8217140))

(declare-fun m!8217142 () Bool)

(assert (=> bm!718530 m!8217142))

(assert (=> bm!718499 d!2342778))

(declare-fun d!2342780 () Bool)

(assert (=> d!2342780 (= (isEmpty!42029 s1!4391) (is-Nil!73341 s1!4391))))

(assert (=> d!2342742 d!2342780))

(assert (=> d!2342742 d!2342774))

(declare-fun b!7752229 () Bool)

(declare-fun e!4595560 () Bool)

(declare-fun call!718537 () Bool)

(assert (=> b!7752229 (= e!4595560 call!718537)))

(declare-fun b!7752230 () Bool)

(declare-fun e!4595566 () Bool)

(declare-fun e!4595564 () Bool)

(assert (=> b!7752230 (= e!4595566 e!4595564)))

(declare-fun res!3091097 () Bool)

(assert (=> b!7752230 (= res!3091097 (not (nullable!9081 (reg!20949 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))))))))

(assert (=> b!7752230 (=> (not res!3091097) (not e!4595564))))

(declare-fun b!7752231 () Bool)

(declare-fun res!3091093 () Bool)

(assert (=> b!7752231 (=> (not res!3091093) (not e!4595560))))

(declare-fun call!718538 () Bool)

(assert (=> b!7752231 (= res!3091093 call!718538)))

(declare-fun e!4595561 () Bool)

(assert (=> b!7752231 (= e!4595561 e!4595560)))

(declare-fun bm!718532 () Bool)

(declare-fun c!1429783 () Bool)

(assert (=> bm!718532 (= call!718538 (validRegex!11038 (ite c!1429783 (regOne!41753 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))) (regOne!41752 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))))))))

(declare-fun b!7752232 () Bool)

(declare-fun call!718539 () Bool)

(assert (=> b!7752232 (= e!4595564 call!718539)))

(declare-fun b!7752233 () Bool)

(declare-fun e!4595563 () Bool)

(declare-fun e!4595562 () Bool)

(assert (=> b!7752233 (= e!4595563 e!4595562)))

(declare-fun res!3091094 () Bool)

(assert (=> b!7752233 (=> (not res!3091094) (not e!4595562))))

(assert (=> b!7752233 (= res!3091094 call!718538)))

(declare-fun b!7752234 () Bool)

(declare-fun e!4595565 () Bool)

(assert (=> b!7752234 (= e!4595565 e!4595566)))

(declare-fun c!1429784 () Bool)

(assert (=> b!7752234 (= c!1429784 (is-Star!20620 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))))))

(declare-fun bm!718533 () Bool)

(assert (=> bm!718533 (= call!718539 (validRegex!11038 (ite c!1429784 (reg!20949 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))) (ite c!1429783 (regTwo!41753 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))) (regTwo!41752 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482)))))))))

(declare-fun bm!718534 () Bool)

(assert (=> bm!718534 (= call!718537 call!718539)))

(declare-fun d!2342782 () Bool)

(declare-fun res!3091095 () Bool)

(assert (=> d!2342782 (=> res!3091095 e!4595565)))

(assert (=> d!2342782 (= res!3091095 (is-ElementMatch!20620 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))))))

(assert (=> d!2342782 (= (validRegex!11038 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))) e!4595565)))

(declare-fun b!7752228 () Bool)

(assert (=> b!7752228 (= e!4595566 e!4595561)))

(assert (=> b!7752228 (= c!1429783 (is-Union!20620 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482))))))

(declare-fun b!7752235 () Bool)

(declare-fun res!3091096 () Bool)

(assert (=> b!7752235 (=> res!3091096 e!4595563)))

(assert (=> b!7752235 (= res!3091096 (not (is-Concat!29465 (ite c!1429744 (regOne!41753 lt!2669482) (regOne!41752 lt!2669482)))))))

(assert (=> b!7752235 (= e!4595561 e!4595563)))

(declare-fun b!7752236 () Bool)

(assert (=> b!7752236 (= e!4595562 call!718537)))

(assert (= (and d!2342782 (not res!3091095)) b!7752234))

(assert (= (and b!7752234 c!1429784) b!7752230))

(assert (= (and b!7752234 (not c!1429784)) b!7752228))

(assert (= (and b!7752230 res!3091097) b!7752232))

(assert (= (and b!7752228 c!1429783) b!7752231))

(assert (= (and b!7752228 (not c!1429783)) b!7752235))

(assert (= (and b!7752231 res!3091093) b!7752229))

(assert (= (and b!7752235 (not res!3091096)) b!7752233))

(assert (= (and b!7752233 res!3091094) b!7752236))

(assert (= (or b!7752231 b!7752233) bm!718532))

(assert (= (or b!7752229 b!7752236) bm!718534))

(assert (= (or b!7752232 bm!718534) bm!718533))

(declare-fun m!8217144 () Bool)

(assert (=> b!7752230 m!8217144))

(declare-fun m!8217146 () Bool)

(assert (=> bm!718532 m!8217146))

(declare-fun m!8217148 () Bool)

(assert (=> bm!718533 m!8217148))

(assert (=> bm!718498 d!2342782))

(declare-fun d!2342784 () Bool)

(assert (=> d!2342784 (= (nullable!9081 (regOne!41752 lt!2669482)) (nullableFct!3580 (regOne!41752 lt!2669482)))))

(declare-fun bs!1965822 () Bool)

(assert (= bs!1965822 d!2342784))

(declare-fun m!8217150 () Bool)

(assert (=> bs!1965822 m!8217150))

(assert (=> b!7752009 d!2342784))

(declare-fun b!7752238 () Bool)

(declare-fun e!4595567 () Bool)

(declare-fun call!718540 () Bool)

(assert (=> b!7752238 (= e!4595567 call!718540)))

(declare-fun b!7752239 () Bool)

(declare-fun e!4595573 () Bool)

(declare-fun e!4595571 () Bool)

(assert (=> b!7752239 (= e!4595573 e!4595571)))

(declare-fun res!3091102 () Bool)

(assert (=> b!7752239 (= res!3091102 (not (nullable!9081 (reg!20949 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))))))))

(assert (=> b!7752239 (=> (not res!3091102) (not e!4595571))))

(declare-fun b!7752240 () Bool)

(declare-fun res!3091098 () Bool)

(assert (=> b!7752240 (=> (not res!3091098) (not e!4595567))))

(declare-fun call!718541 () Bool)

(assert (=> b!7752240 (= res!3091098 call!718541)))

(declare-fun e!4595568 () Bool)

(assert (=> b!7752240 (= e!4595568 e!4595567)))

(declare-fun c!1429785 () Bool)

(declare-fun bm!718535 () Bool)

(assert (=> bm!718535 (= call!718541 (validRegex!11038 (ite c!1429785 (regOne!41753 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))) (regOne!41752 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))))))))

(declare-fun b!7752241 () Bool)

(declare-fun call!718542 () Bool)

(assert (=> b!7752241 (= e!4595571 call!718542)))

(declare-fun b!7752242 () Bool)

(declare-fun e!4595570 () Bool)

(declare-fun e!4595569 () Bool)

(assert (=> b!7752242 (= e!4595570 e!4595569)))

(declare-fun res!3091099 () Bool)

(assert (=> b!7752242 (=> (not res!3091099) (not e!4595569))))

(assert (=> b!7752242 (= res!3091099 call!718541)))

(declare-fun b!7752243 () Bool)

(declare-fun e!4595572 () Bool)

(assert (=> b!7752243 (= e!4595572 e!4595573)))

(declare-fun c!1429786 () Bool)

(assert (=> b!7752243 (= c!1429786 (is-Star!20620 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))))))

(declare-fun bm!718536 () Bool)

(assert (=> bm!718536 (= call!718542 (validRegex!11038 (ite c!1429786 (reg!20949 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))) (ite c!1429785 (regTwo!41753 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))) (regTwo!41752 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481)))))))))

(declare-fun bm!718537 () Bool)

(assert (=> bm!718537 (= call!718540 call!718542)))

(declare-fun d!2342786 () Bool)

(declare-fun res!3091100 () Bool)

(assert (=> d!2342786 (=> res!3091100 e!4595572)))

(assert (=> d!2342786 (= res!3091100 (is-ElementMatch!20620 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))))))

(assert (=> d!2342786 (= (validRegex!11038 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))) e!4595572)))

(declare-fun b!7752237 () Bool)

(assert (=> b!7752237 (= e!4595573 e!4595568)))

(assert (=> b!7752237 (= c!1429785 (is-Union!20620 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481))))))

(declare-fun b!7752244 () Bool)

(declare-fun res!3091101 () Bool)

(assert (=> b!7752244 (=> res!3091101 e!4595570)))

(assert (=> b!7752244 (= res!3091101 (not (is-Concat!29465 (ite c!1429687 (regOne!41753 lt!2669481) (regOne!41752 lt!2669481)))))))

(assert (=> b!7752244 (= e!4595568 e!4595570)))

(declare-fun b!7752245 () Bool)

(assert (=> b!7752245 (= e!4595569 call!718540)))

(assert (= (and d!2342786 (not res!3091100)) b!7752243))

(assert (= (and b!7752243 c!1429786) b!7752239))

(assert (= (and b!7752243 (not c!1429786)) b!7752237))

(assert (= (and b!7752239 res!3091102) b!7752241))

(assert (= (and b!7752237 c!1429785) b!7752240))

(assert (= (and b!7752237 (not c!1429785)) b!7752244))

(assert (= (and b!7752240 res!3091098) b!7752238))

(assert (= (and b!7752244 (not res!3091101)) b!7752242))

(assert (= (and b!7752242 res!3091099) b!7752245))

(assert (= (or b!7752240 b!7752242) bm!718535))

(assert (= (or b!7752238 b!7752245) bm!718537))

(assert (= (or b!7752241 bm!718537) bm!718536))

(declare-fun m!8217152 () Bool)

(assert (=> b!7752239 m!8217152))

(declare-fun m!8217154 () Bool)

(assert (=> bm!718535 m!8217154))

(declare-fun m!8217156 () Bool)

(assert (=> bm!718536 m!8217156))

(assert (=> bm!718458 d!2342786))

(declare-fun d!2342788 () Bool)

(assert (=> d!2342788 (= (head!15837 s1!4391) (h!79789 s1!4391))))

(assert (=> b!7751931 d!2342788))

(declare-fun d!2342790 () Bool)

(assert (=> d!2342790 (= (nullable!9081 (reg!20949 lt!2669481)) (nullableFct!3580 (reg!20949 lt!2669481)))))

(declare-fun bs!1965823 () Bool)

(assert (= bs!1965823 d!2342790))

(declare-fun m!8217158 () Bool)

(assert (=> bs!1965823 m!8217158))

(assert (=> b!7751846 d!2342790))

(declare-fun d!2342792 () Bool)

(assert (=> d!2342792 (= (head!15837 (t!388200 s1!4391)) (h!79789 (t!388200 s1!4391)))))

(assert (=> b!7752085 d!2342792))

(assert (=> bm!718468 d!2342780))

(declare-fun d!2342794 () Bool)

(assert (=> d!2342794 (= (nullable!9081 (reg!20949 lt!2669482)) (nullableFct!3580 (reg!20949 lt!2669482)))))

(declare-fun bs!1965824 () Bool)

(assert (= bs!1965824 d!2342794))

(declare-fun m!8217160 () Bool)

(assert (=> bs!1965824 m!8217160))

(assert (=> b!7752031 d!2342794))

(declare-fun bm!718538 () Bool)

(declare-fun call!718546 () Regex!20620)

(declare-fun call!718544 () Regex!20620)

(assert (=> bm!718538 (= call!718546 call!718544)))

(declare-fun c!1429787 () Bool)

(declare-fun b!7752246 () Bool)

(assert (=> b!7752246 (= c!1429787 (nullable!9081 (regOne!41752 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892))))))))

(declare-fun e!4595578 () Regex!20620)

(declare-fun e!4595577 () Regex!20620)

(assert (=> b!7752246 (= e!4595578 e!4595577)))

(declare-fun bm!718539 () Bool)

(declare-fun c!1429791 () Bool)

(declare-fun c!1429788 () Bool)

(assert (=> bm!718539 (= call!718544 (derivativeStep!6041 (ite c!1429791 (regOne!41753 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892)))) (ite c!1429788 (reg!20949 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892)))) (regOne!41752 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892)))))) (h!79789 s1!4391)))))

(declare-fun call!718543 () Regex!20620)

(declare-fun call!718545 () Regex!20620)

(declare-fun b!7752247 () Bool)

(assert (=> b!7752247 (= e!4595577 (Union!20620 (Concat!29465 call!718543 (regTwo!41752 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892))))) call!718545))))

(declare-fun d!2342796 () Bool)

(declare-fun lt!2669509 () Regex!20620)

(assert (=> d!2342796 (validRegex!11038 lt!2669509)))

(declare-fun e!4595574 () Regex!20620)

(assert (=> d!2342796 (= lt!2669509 e!4595574)))

(declare-fun c!1429789 () Bool)

(assert (=> d!2342796 (= c!1429789 (or (is-EmptyExpr!20620 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892)))) (is-EmptyLang!20620 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892))))))))

(assert (=> d!2342796 (validRegex!11038 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892))))))

(assert (=> d!2342796 (= (derivativeStep!6041 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892))) (h!79789 s1!4391)) lt!2669509)))

(declare-fun bm!718540 () Bool)

(assert (=> bm!718540 (= call!718543 call!718546)))

(declare-fun e!4595575 () Regex!20620)

(declare-fun b!7752248 () Bool)

(assert (=> b!7752248 (= e!4595575 (ite (= (h!79789 s1!4391) (c!1429677 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892))))) EmptyExpr!20620 EmptyLang!20620))))

(declare-fun bm!718541 () Bool)

(assert (=> bm!718541 (= call!718545 (derivativeStep!6041 (ite c!1429791 (regTwo!41753 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892)))) (regTwo!41752 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892))))) (h!79789 s1!4391)))))

(declare-fun b!7752249 () Bool)

(assert (=> b!7752249 (= e!4595577 (Union!20620 (Concat!29465 call!718543 (regTwo!41752 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892))))) EmptyLang!20620))))

(declare-fun b!7752250 () Bool)

(assert (=> b!7752250 (= e!4595578 (Concat!29465 call!718546 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892)))))))

(declare-fun b!7752251 () Bool)

(declare-fun e!4595576 () Regex!20620)

(assert (=> b!7752251 (= e!4595576 (Union!20620 call!718544 call!718545))))

(declare-fun b!7752252 () Bool)

(assert (=> b!7752252 (= e!4595574 EmptyLang!20620)))

(declare-fun b!7752253 () Bool)

(assert (=> b!7752253 (= e!4595574 e!4595575)))

(declare-fun c!1429790 () Bool)

(assert (=> b!7752253 (= c!1429790 (is-ElementMatch!20620 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892)))))))

(declare-fun b!7752254 () Bool)

(assert (=> b!7752254 (= c!1429791 (is-Union!20620 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892)))))))

(assert (=> b!7752254 (= e!4595575 e!4595576)))

(declare-fun b!7752255 () Bool)

(assert (=> b!7752255 (= e!4595576 e!4595578)))

(assert (=> b!7752255 (= c!1429788 (is-Star!20620 (ite c!1429743 (regOne!41753 r!25892) (ite c!1429740 (reg!20949 r!25892) (regOne!41752 r!25892)))))))

(assert (= (and d!2342796 c!1429789) b!7752252))

(assert (= (and d!2342796 (not c!1429789)) b!7752253))

(assert (= (and b!7752253 c!1429790) b!7752248))

(assert (= (and b!7752253 (not c!1429790)) b!7752254))

(assert (= (and b!7752254 c!1429791) b!7752251))

(assert (= (and b!7752254 (not c!1429791)) b!7752255))

(assert (= (and b!7752255 c!1429788) b!7752250))

(assert (= (and b!7752255 (not c!1429788)) b!7752246))

(assert (= (and b!7752246 c!1429787) b!7752247))

(assert (= (and b!7752246 (not c!1429787)) b!7752249))

(assert (= (or b!7752247 b!7752249) bm!718540))

(assert (= (or b!7752250 bm!718540) bm!718538))

(assert (= (or b!7752251 b!7752247) bm!718541))

(assert (= (or b!7752251 bm!718538) bm!718539))

(declare-fun m!8217162 () Bool)

(assert (=> b!7752246 m!8217162))

(declare-fun m!8217164 () Bool)

(assert (=> bm!718539 m!8217164))

(declare-fun m!8217166 () Bool)

(assert (=> d!2342796 m!8217166))

(declare-fun m!8217168 () Bool)

(assert (=> d!2342796 m!8217168))

(declare-fun m!8217170 () Bool)

(assert (=> bm!718541 m!8217170))

(assert (=> bm!718495 d!2342796))

(declare-fun d!2342798 () Bool)

(assert (=> d!2342798 (= (nullable!9081 (regOne!41752 r!25892)) (nullableFct!3580 (regOne!41752 r!25892)))))

(declare-fun bs!1965825 () Bool)

(assert (= bs!1965825 d!2342798))

(declare-fun m!8217172 () Bool)

(assert (=> bs!1965825 m!8217172))

(assert (=> b!7752019 d!2342798))

(declare-fun d!2342800 () Bool)

(assert (=> d!2342800 (= (isEmpty!42029 (tail!15377 s1!4391)) (is-Nil!73341 (tail!15377 s1!4391)))))

(assert (=> b!7751927 d!2342800))

(declare-fun d!2342802 () Bool)

(assert (=> d!2342802 (= (tail!15377 s1!4391) (t!388200 s1!4391))))

(assert (=> b!7751927 d!2342802))

(assert (=> b!7751926 d!2342800))

(assert (=> b!7751926 d!2342802))

(declare-fun d!2342804 () Bool)

(assert (=> d!2342804 (= (isEmpty!42029 (t!388200 s1!4391)) (is-Nil!73341 (t!388200 s1!4391)))))

(assert (=> bm!718510 d!2342804))

(declare-fun d!2342806 () Bool)

(assert (=> d!2342806 (= (head!15837 s2!3963) (h!79789 s2!3963))))

(assert (=> b!7752044 d!2342806))

(declare-fun d!2342808 () Bool)

(assert (=> d!2342808 (= (isEmpty!42029 (tail!15377 (t!388200 s1!4391))) (is-Nil!73341 (tail!15377 (t!388200 s1!4391))))))

(assert (=> b!7752080 d!2342808))

(declare-fun d!2342810 () Bool)

(assert (=> d!2342810 (= (tail!15377 (t!388200 s1!4391)) (t!388200 (t!388200 s1!4391)))))

(assert (=> b!7752080 d!2342810))

(declare-fun b!7752256 () Bool)

(declare-fun e!4595584 () Bool)

(declare-fun lt!2669510 () Bool)

(declare-fun call!718547 () Bool)

(assert (=> b!7752256 (= e!4595584 (= lt!2669510 call!718547))))

(declare-fun b!7752257 () Bool)

(declare-fun e!4595579 () Bool)

(assert (=> b!7752257 (= e!4595579 (matchR!10110 (derivativeStep!6041 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963)) (head!15837 (tail!15377 s2!3963))) (tail!15377 (tail!15377 s2!3963))))))

(declare-fun b!7752258 () Bool)

(declare-fun e!4595583 () Bool)

(assert (=> b!7752258 (= e!4595583 (= (head!15837 (tail!15377 s2!3963)) (c!1429677 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963)))))))

(declare-fun b!7752259 () Bool)

(declare-fun e!4595585 () Bool)

(assert (=> b!7752259 (= e!4595584 e!4595585)))

(declare-fun c!1429793 () Bool)

(assert (=> b!7752259 (= c!1429793 (is-EmptyLang!20620 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963))))))

(declare-fun b!7752260 () Bool)

(declare-fun res!3091103 () Bool)

(declare-fun e!4595582 () Bool)

(assert (=> b!7752260 (=> res!3091103 e!4595582)))

(assert (=> b!7752260 (= res!3091103 (not (is-ElementMatch!20620 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963)))))))

(assert (=> b!7752260 (= e!4595585 e!4595582)))

(declare-fun b!7752261 () Bool)

(declare-fun e!4595581 () Bool)

(assert (=> b!7752261 (= e!4595582 e!4595581)))

(declare-fun res!3091106 () Bool)

(assert (=> b!7752261 (=> (not res!3091106) (not e!4595581))))

(assert (=> b!7752261 (= res!3091106 (not lt!2669510))))

(declare-fun b!7752262 () Bool)

(assert (=> b!7752262 (= e!4595579 (nullable!9081 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963))))))

(declare-fun b!7752263 () Bool)

(assert (=> b!7752263 (= e!4595585 (not lt!2669510))))

(declare-fun d!2342812 () Bool)

(assert (=> d!2342812 e!4595584))

(declare-fun c!1429794 () Bool)

(assert (=> d!2342812 (= c!1429794 (is-EmptyExpr!20620 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963))))))

(assert (=> d!2342812 (= lt!2669510 e!4595579)))

(declare-fun c!1429792 () Bool)

(assert (=> d!2342812 (= c!1429792 (isEmpty!42029 (tail!15377 s2!3963)))))

(assert (=> d!2342812 (validRegex!11038 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963)))))

(assert (=> d!2342812 (= (matchR!10110 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963)) (tail!15377 s2!3963)) lt!2669510)))

(declare-fun b!7752264 () Bool)

(declare-fun res!3091110 () Bool)

(declare-fun e!4595580 () Bool)

(assert (=> b!7752264 (=> res!3091110 e!4595580)))

(assert (=> b!7752264 (= res!3091110 (not (isEmpty!42029 (tail!15377 (tail!15377 s2!3963)))))))

(declare-fun b!7752265 () Bool)

(declare-fun res!3091105 () Bool)

(assert (=> b!7752265 (=> (not res!3091105) (not e!4595583))))

(assert (=> b!7752265 (= res!3091105 (isEmpty!42029 (tail!15377 (tail!15377 s2!3963))))))

(declare-fun b!7752266 () Bool)

(declare-fun res!3091109 () Bool)

(assert (=> b!7752266 (=> res!3091109 e!4595582)))

(assert (=> b!7752266 (= res!3091109 e!4595583)))

(declare-fun res!3091104 () Bool)

(assert (=> b!7752266 (=> (not res!3091104) (not e!4595583))))

(assert (=> b!7752266 (= res!3091104 lt!2669510)))

(declare-fun b!7752267 () Bool)

(assert (=> b!7752267 (= e!4595581 e!4595580)))

(declare-fun res!3091108 () Bool)

(assert (=> b!7752267 (=> res!3091108 e!4595580)))

(assert (=> b!7752267 (= res!3091108 call!718547)))

(declare-fun bm!718542 () Bool)

(assert (=> bm!718542 (= call!718547 (isEmpty!42029 (tail!15377 s2!3963)))))

(declare-fun b!7752268 () Bool)

(declare-fun res!3091107 () Bool)

(assert (=> b!7752268 (=> (not res!3091107) (not e!4595583))))

(assert (=> b!7752268 (= res!3091107 (not call!718547))))

(declare-fun b!7752269 () Bool)

(assert (=> b!7752269 (= e!4595580 (not (= (head!15837 (tail!15377 s2!3963)) (c!1429677 (derivativeStep!6041 lt!2669482 (head!15837 s2!3963))))))))

(assert (= (and d!2342812 c!1429792) b!7752262))

(assert (= (and d!2342812 (not c!1429792)) b!7752257))

(assert (= (and d!2342812 c!1429794) b!7752256))

(assert (= (and d!2342812 (not c!1429794)) b!7752259))

(assert (= (and b!7752259 c!1429793) b!7752263))

(assert (= (and b!7752259 (not c!1429793)) b!7752260))

(assert (= (and b!7752260 (not res!3091103)) b!7752266))

(assert (= (and b!7752266 res!3091104) b!7752268))

(assert (= (and b!7752268 res!3091107) b!7752265))

(assert (= (and b!7752265 res!3091105) b!7752258))

(assert (= (and b!7752266 (not res!3091109)) b!7752261))

(assert (= (and b!7752261 res!3091106) b!7752267))

(assert (= (and b!7752267 (not res!3091108)) b!7752264))

(assert (= (and b!7752264 (not res!3091110)) b!7752269))

(assert (= (or b!7752256 b!7752267 b!7752268) bm!718542))

(assert (=> b!7752265 m!8217044))

(declare-fun m!8217174 () Bool)

(assert (=> b!7752265 m!8217174))

(assert (=> b!7752265 m!8217174))

(declare-fun m!8217176 () Bool)

(assert (=> b!7752265 m!8217176))

(assert (=> b!7752262 m!8217056))

(declare-fun m!8217178 () Bool)

(assert (=> b!7752262 m!8217178))

(assert (=> b!7752257 m!8217044))

(declare-fun m!8217180 () Bool)

(assert (=> b!7752257 m!8217180))

(assert (=> b!7752257 m!8217056))

(assert (=> b!7752257 m!8217180))

(declare-fun m!8217182 () Bool)

(assert (=> b!7752257 m!8217182))

(assert (=> b!7752257 m!8217044))

(assert (=> b!7752257 m!8217174))

(assert (=> b!7752257 m!8217182))

(assert (=> b!7752257 m!8217174))

(declare-fun m!8217184 () Bool)

(assert (=> b!7752257 m!8217184))

(assert (=> d!2342812 m!8217044))

(assert (=> d!2342812 m!8217046))

(assert (=> d!2342812 m!8217056))

(declare-fun m!8217186 () Bool)

(assert (=> d!2342812 m!8217186))

(assert (=> b!7752269 m!8217044))

(assert (=> b!7752269 m!8217180))

(assert (=> b!7752258 m!8217044))

(assert (=> b!7752258 m!8217180))

(assert (=> b!7752264 m!8217044))

(assert (=> b!7752264 m!8217174))

(assert (=> b!7752264 m!8217174))

(assert (=> b!7752264 m!8217176))

(assert (=> bm!718542 m!8217044))

(assert (=> bm!718542 m!8217046))

(assert (=> b!7752043 d!2342812))

(declare-fun bm!718543 () Bool)

(declare-fun call!718551 () Regex!20620)

(declare-fun call!718549 () Regex!20620)

(assert (=> bm!718543 (= call!718551 call!718549)))

(declare-fun b!7752270 () Bool)

(declare-fun c!1429795 () Bool)

(assert (=> b!7752270 (= c!1429795 (nullable!9081 (regOne!41752 lt!2669482)))))

(declare-fun e!4595590 () Regex!20620)

(declare-fun e!4595589 () Regex!20620)

(assert (=> b!7752270 (= e!4595590 e!4595589)))

(declare-fun c!1429799 () Bool)

(declare-fun bm!718544 () Bool)

(declare-fun c!1429796 () Bool)

(assert (=> bm!718544 (= call!718549 (derivativeStep!6041 (ite c!1429799 (regOne!41753 lt!2669482) (ite c!1429796 (reg!20949 lt!2669482) (regOne!41752 lt!2669482))) (head!15837 s2!3963)))))

(declare-fun call!718550 () Regex!20620)

(declare-fun call!718548 () Regex!20620)

(declare-fun b!7752271 () Bool)

(assert (=> b!7752271 (= e!4595589 (Union!20620 (Concat!29465 call!718548 (regTwo!41752 lt!2669482)) call!718550))))

(declare-fun d!2342814 () Bool)

(declare-fun lt!2669511 () Regex!20620)

(assert (=> d!2342814 (validRegex!11038 lt!2669511)))

(declare-fun e!4595586 () Regex!20620)

(assert (=> d!2342814 (= lt!2669511 e!4595586)))

(declare-fun c!1429797 () Bool)

(assert (=> d!2342814 (= c!1429797 (or (is-EmptyExpr!20620 lt!2669482) (is-EmptyLang!20620 lt!2669482)))))

(assert (=> d!2342814 (validRegex!11038 lt!2669482)))

(assert (=> d!2342814 (= (derivativeStep!6041 lt!2669482 (head!15837 s2!3963)) lt!2669511)))

(declare-fun bm!718545 () Bool)

(assert (=> bm!718545 (= call!718548 call!718551)))

(declare-fun b!7752272 () Bool)

(declare-fun e!4595587 () Regex!20620)

(assert (=> b!7752272 (= e!4595587 (ite (= (head!15837 s2!3963) (c!1429677 lt!2669482)) EmptyExpr!20620 EmptyLang!20620))))

(declare-fun bm!718546 () Bool)

(assert (=> bm!718546 (= call!718550 (derivativeStep!6041 (ite c!1429799 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)) (head!15837 s2!3963)))))

(declare-fun b!7752273 () Bool)

(assert (=> b!7752273 (= e!4595589 (Union!20620 (Concat!29465 call!718548 (regTwo!41752 lt!2669482)) EmptyLang!20620))))

(declare-fun b!7752274 () Bool)

(assert (=> b!7752274 (= e!4595590 (Concat!29465 call!718551 lt!2669482))))

(declare-fun b!7752275 () Bool)

(declare-fun e!4595588 () Regex!20620)

(assert (=> b!7752275 (= e!4595588 (Union!20620 call!718549 call!718550))))

(declare-fun b!7752276 () Bool)

(assert (=> b!7752276 (= e!4595586 EmptyLang!20620)))

(declare-fun b!7752277 () Bool)

(assert (=> b!7752277 (= e!4595586 e!4595587)))

(declare-fun c!1429798 () Bool)

(assert (=> b!7752277 (= c!1429798 (is-ElementMatch!20620 lt!2669482))))

(declare-fun b!7752278 () Bool)

(assert (=> b!7752278 (= c!1429799 (is-Union!20620 lt!2669482))))

(assert (=> b!7752278 (= e!4595587 e!4595588)))

(declare-fun b!7752279 () Bool)

(assert (=> b!7752279 (= e!4595588 e!4595590)))

(assert (=> b!7752279 (= c!1429796 (is-Star!20620 lt!2669482))))

(assert (= (and d!2342814 c!1429797) b!7752276))

(assert (= (and d!2342814 (not c!1429797)) b!7752277))

(assert (= (and b!7752277 c!1429798) b!7752272))

(assert (= (and b!7752277 (not c!1429798)) b!7752278))

(assert (= (and b!7752278 c!1429799) b!7752275))

(assert (= (and b!7752278 (not c!1429799)) b!7752279))

(assert (= (and b!7752279 c!1429796) b!7752274))

(assert (= (and b!7752279 (not c!1429796)) b!7752270))

(assert (= (and b!7752270 c!1429795) b!7752271))

(assert (= (and b!7752270 (not c!1429795)) b!7752273))

(assert (= (or b!7752271 b!7752273) bm!718545))

(assert (= (or b!7752274 bm!718545) bm!718543))

(assert (= (or b!7752275 b!7752271) bm!718546))

(assert (= (or b!7752275 bm!718543) bm!718544))

(assert (=> b!7752270 m!8217018))

(assert (=> bm!718544 m!8217054))

(declare-fun m!8217188 () Bool)

(assert (=> bm!718544 m!8217188))

(declare-fun m!8217190 () Bool)

(assert (=> d!2342814 m!8217190))

(assert (=> d!2342814 m!8216930))

(assert (=> bm!718546 m!8217054))

(declare-fun m!8217192 () Bool)

(assert (=> bm!718546 m!8217192))

(assert (=> b!7752043 d!2342814))

(assert (=> b!7752043 d!2342806))

(declare-fun d!2342816 () Bool)

(assert (=> d!2342816 (= (tail!15377 s2!3963) (t!388200 s2!3963))))

(assert (=> b!7752043 d!2342816))

(assert (=> b!7752061 d!2342806))

(declare-fun d!2342818 () Bool)

(assert (=> d!2342818 (= (isEmpty!42029 s2!3963) (is-Nil!73341 s2!3963))))

(assert (=> d!2342758 d!2342818))

(assert (=> d!2342758 d!2342756))

(declare-fun d!2342820 () Bool)

(assert (=> d!2342820 (= (nullable!9081 r!25892) (nullableFct!3580 r!25892))))

(declare-fun bs!1965826 () Bool)

(assert (= bs!1965826 d!2342820))

(declare-fun m!8217194 () Bool)

(assert (=> bs!1965826 m!8217194))

(assert (=> b!7751924 d!2342820))

(assert (=> b!7752081 d!2342808))

(assert (=> b!7752081 d!2342810))

(declare-fun d!2342822 () Bool)

(assert (=> d!2342822 (= (nullable!9081 lt!2669481) (nullableFct!3580 lt!2669481))))

(declare-fun bs!1965827 () Bool)

(assert (= bs!1965827 d!2342822))

(declare-fun m!8217196 () Bool)

(assert (=> bs!1965827 m!8217196))

(assert (=> b!7752078 d!2342822))

(assert (=> bm!718505 d!2342818))

(declare-fun b!7752281 () Bool)

(declare-fun e!4595591 () Bool)

(declare-fun call!718552 () Bool)

(assert (=> b!7752281 (= e!4595591 call!718552)))

(declare-fun b!7752282 () Bool)

(declare-fun e!4595597 () Bool)

(declare-fun e!4595595 () Bool)

(assert (=> b!7752282 (= e!4595597 e!4595595)))

(declare-fun res!3091115 () Bool)

(assert (=> b!7752282 (= res!3091115 (not (nullable!9081 (reg!20949 lt!2669500))))))

(assert (=> b!7752282 (=> (not res!3091115) (not e!4595595))))

(declare-fun b!7752283 () Bool)

(declare-fun res!3091111 () Bool)

(assert (=> b!7752283 (=> (not res!3091111) (not e!4595591))))

(declare-fun call!718553 () Bool)

(assert (=> b!7752283 (= res!3091111 call!718553)))

(declare-fun e!4595592 () Bool)

(assert (=> b!7752283 (= e!4595592 e!4595591)))

(declare-fun bm!718547 () Bool)

(declare-fun c!1429800 () Bool)

(assert (=> bm!718547 (= call!718553 (validRegex!11038 (ite c!1429800 (regOne!41753 lt!2669500) (regOne!41752 lt!2669500))))))

(declare-fun b!7752284 () Bool)

(declare-fun call!718554 () Bool)

(assert (=> b!7752284 (= e!4595595 call!718554)))

(declare-fun b!7752285 () Bool)

(declare-fun e!4595594 () Bool)

(declare-fun e!4595593 () Bool)

(assert (=> b!7752285 (= e!4595594 e!4595593)))

(declare-fun res!3091112 () Bool)

(assert (=> b!7752285 (=> (not res!3091112) (not e!4595593))))

(assert (=> b!7752285 (= res!3091112 call!718553)))

(declare-fun b!7752286 () Bool)

(declare-fun e!4595596 () Bool)

(assert (=> b!7752286 (= e!4595596 e!4595597)))

(declare-fun c!1429801 () Bool)

(assert (=> b!7752286 (= c!1429801 (is-Star!20620 lt!2669500))))

(declare-fun bm!718548 () Bool)

(assert (=> bm!718548 (= call!718554 (validRegex!11038 (ite c!1429801 (reg!20949 lt!2669500) (ite c!1429800 (regTwo!41753 lt!2669500) (regTwo!41752 lt!2669500)))))))

(declare-fun bm!718549 () Bool)

(assert (=> bm!718549 (= call!718552 call!718554)))

(declare-fun d!2342824 () Bool)

(declare-fun res!3091113 () Bool)

(assert (=> d!2342824 (=> res!3091113 e!4595596)))

(assert (=> d!2342824 (= res!3091113 (is-ElementMatch!20620 lt!2669500))))

(assert (=> d!2342824 (= (validRegex!11038 lt!2669500) e!4595596)))

(declare-fun b!7752280 () Bool)

(assert (=> b!7752280 (= e!4595597 e!4595592)))

(assert (=> b!7752280 (= c!1429800 (is-Union!20620 lt!2669500))))

(declare-fun b!7752287 () Bool)

(declare-fun res!3091114 () Bool)

(assert (=> b!7752287 (=> res!3091114 e!4595594)))

(assert (=> b!7752287 (= res!3091114 (not (is-Concat!29465 lt!2669500)))))

(assert (=> b!7752287 (= e!4595592 e!4595594)))

(declare-fun b!7752288 () Bool)

(assert (=> b!7752288 (= e!4595593 call!718552)))

(assert (= (and d!2342824 (not res!3091113)) b!7752286))

(assert (= (and b!7752286 c!1429801) b!7752282))

(assert (= (and b!7752286 (not c!1429801)) b!7752280))

(assert (= (and b!7752282 res!3091115) b!7752284))

(assert (= (and b!7752280 c!1429800) b!7752283))

(assert (= (and b!7752280 (not c!1429800)) b!7752287))

(assert (= (and b!7752283 res!3091111) b!7752281))

(assert (= (and b!7752287 (not res!3091114)) b!7752285))

(assert (= (and b!7752285 res!3091112) b!7752288))

(assert (= (or b!7752283 b!7752285) bm!718547))

(assert (= (or b!7752281 b!7752288) bm!718549))

(assert (= (or b!7752284 bm!718549) bm!718548))

(declare-fun m!8217198 () Bool)

(assert (=> b!7752282 m!8217198))

(declare-fun m!8217200 () Bool)

(assert (=> bm!718547 m!8217200))

(declare-fun m!8217202 () Bool)

(assert (=> bm!718548 m!8217202))

(assert (=> d!2342746 d!2342824))

(assert (=> d!2342746 d!2342756))

(declare-fun b!7752289 () Bool)

(declare-fun e!4595603 () Bool)

(declare-fun lt!2669512 () Bool)

(declare-fun call!718555 () Bool)

(assert (=> b!7752289 (= e!4595603 (= lt!2669512 call!718555))))

(declare-fun b!7752290 () Bool)

(declare-fun e!4595598 () Bool)

(assert (=> b!7752290 (= e!4595598 (matchR!10110 (derivativeStep!6041 (derivativeStep!6041 r!25892 (head!15837 s1!4391)) (head!15837 (tail!15377 s1!4391))) (tail!15377 (tail!15377 s1!4391))))))

(declare-fun b!7752291 () Bool)

(declare-fun e!4595602 () Bool)

(assert (=> b!7752291 (= e!4595602 (= (head!15837 (tail!15377 s1!4391)) (c!1429677 (derivativeStep!6041 r!25892 (head!15837 s1!4391)))))))

(declare-fun b!7752292 () Bool)

(declare-fun e!4595604 () Bool)

(assert (=> b!7752292 (= e!4595603 e!4595604)))

(declare-fun c!1429803 () Bool)

(assert (=> b!7752292 (= c!1429803 (is-EmptyLang!20620 (derivativeStep!6041 r!25892 (head!15837 s1!4391))))))

(declare-fun b!7752293 () Bool)

(declare-fun res!3091116 () Bool)

(declare-fun e!4595601 () Bool)

(assert (=> b!7752293 (=> res!3091116 e!4595601)))

(assert (=> b!7752293 (= res!3091116 (not (is-ElementMatch!20620 (derivativeStep!6041 r!25892 (head!15837 s1!4391)))))))

(assert (=> b!7752293 (= e!4595604 e!4595601)))

(declare-fun b!7752294 () Bool)

(declare-fun e!4595600 () Bool)

(assert (=> b!7752294 (= e!4595601 e!4595600)))

(declare-fun res!3091119 () Bool)

(assert (=> b!7752294 (=> (not res!3091119) (not e!4595600))))

(assert (=> b!7752294 (= res!3091119 (not lt!2669512))))

(declare-fun b!7752295 () Bool)

(assert (=> b!7752295 (= e!4595598 (nullable!9081 (derivativeStep!6041 r!25892 (head!15837 s1!4391))))))

(declare-fun b!7752296 () Bool)

(assert (=> b!7752296 (= e!4595604 (not lt!2669512))))

(declare-fun d!2342826 () Bool)

(assert (=> d!2342826 e!4595603))

(declare-fun c!1429804 () Bool)

(assert (=> d!2342826 (= c!1429804 (is-EmptyExpr!20620 (derivativeStep!6041 r!25892 (head!15837 s1!4391))))))

(assert (=> d!2342826 (= lt!2669512 e!4595598)))

(declare-fun c!1429802 () Bool)

(assert (=> d!2342826 (= c!1429802 (isEmpty!42029 (tail!15377 s1!4391)))))

(assert (=> d!2342826 (validRegex!11038 (derivativeStep!6041 r!25892 (head!15837 s1!4391)))))

(assert (=> d!2342826 (= (matchR!10110 (derivativeStep!6041 r!25892 (head!15837 s1!4391)) (tail!15377 s1!4391)) lt!2669512)))

(declare-fun b!7752297 () Bool)

(declare-fun res!3091123 () Bool)

(declare-fun e!4595599 () Bool)

(assert (=> b!7752297 (=> res!3091123 e!4595599)))

(assert (=> b!7752297 (= res!3091123 (not (isEmpty!42029 (tail!15377 (tail!15377 s1!4391)))))))

(declare-fun b!7752298 () Bool)

(declare-fun res!3091118 () Bool)

(assert (=> b!7752298 (=> (not res!3091118) (not e!4595602))))

(assert (=> b!7752298 (= res!3091118 (isEmpty!42029 (tail!15377 (tail!15377 s1!4391))))))

(declare-fun b!7752299 () Bool)

(declare-fun res!3091122 () Bool)

(assert (=> b!7752299 (=> res!3091122 e!4595601)))

(assert (=> b!7752299 (= res!3091122 e!4595602)))

(declare-fun res!3091117 () Bool)

(assert (=> b!7752299 (=> (not res!3091117) (not e!4595602))))

(assert (=> b!7752299 (= res!3091117 lt!2669512)))

(declare-fun b!7752300 () Bool)

(assert (=> b!7752300 (= e!4595600 e!4595599)))

(declare-fun res!3091121 () Bool)

(assert (=> b!7752300 (=> res!3091121 e!4595599)))

(assert (=> b!7752300 (= res!3091121 call!718555)))

(declare-fun bm!718550 () Bool)

(assert (=> bm!718550 (= call!718555 (isEmpty!42029 (tail!15377 s1!4391)))))

(declare-fun b!7752301 () Bool)

(declare-fun res!3091120 () Bool)

(assert (=> b!7752301 (=> (not res!3091120) (not e!4595602))))

(assert (=> b!7752301 (= res!3091120 (not call!718555))))

(declare-fun b!7752302 () Bool)

(assert (=> b!7752302 (= e!4595599 (not (= (head!15837 (tail!15377 s1!4391)) (c!1429677 (derivativeStep!6041 r!25892 (head!15837 s1!4391))))))))

(assert (= (and d!2342826 c!1429802) b!7752295))

(assert (= (and d!2342826 (not c!1429802)) b!7752290))

(assert (= (and d!2342826 c!1429804) b!7752289))

(assert (= (and d!2342826 (not c!1429804)) b!7752292))

(assert (= (and b!7752292 c!1429803) b!7752296))

(assert (= (and b!7752292 (not c!1429803)) b!7752293))

(assert (= (and b!7752293 (not res!3091116)) b!7752299))

(assert (= (and b!7752299 res!3091117) b!7752301))

(assert (= (and b!7752301 res!3091120) b!7752298))

(assert (= (and b!7752298 res!3091118) b!7752291))

(assert (= (and b!7752299 (not res!3091122)) b!7752294))

(assert (= (and b!7752294 res!3091119) b!7752300))

(assert (= (and b!7752300 (not res!3091121)) b!7752297))

(assert (= (and b!7752297 (not res!3091123)) b!7752302))

(assert (= (or b!7752289 b!7752300 b!7752301) bm!718550))

(assert (=> b!7752298 m!8216966))

(declare-fun m!8217204 () Bool)

(assert (=> b!7752298 m!8217204))

(assert (=> b!7752298 m!8217204))

(declare-fun m!8217206 () Bool)

(assert (=> b!7752298 m!8217206))

(assert (=> b!7752295 m!8216974))

(declare-fun m!8217208 () Bool)

(assert (=> b!7752295 m!8217208))

(assert (=> b!7752290 m!8216966))

(declare-fun m!8217210 () Bool)

(assert (=> b!7752290 m!8217210))

(assert (=> b!7752290 m!8216974))

(assert (=> b!7752290 m!8217210))

(declare-fun m!8217212 () Bool)

(assert (=> b!7752290 m!8217212))

(assert (=> b!7752290 m!8216966))

(assert (=> b!7752290 m!8217204))

(assert (=> b!7752290 m!8217212))

(assert (=> b!7752290 m!8217204))

(declare-fun m!8217214 () Bool)

(assert (=> b!7752290 m!8217214))

(assert (=> d!2342826 m!8216966))

(assert (=> d!2342826 m!8216968))

(assert (=> d!2342826 m!8216974))

(declare-fun m!8217216 () Bool)

(assert (=> d!2342826 m!8217216))

(assert (=> b!7752302 m!8216966))

(assert (=> b!7752302 m!8217210))

(assert (=> b!7752291 m!8216966))

(assert (=> b!7752291 m!8217210))

(assert (=> b!7752297 m!8216966))

(assert (=> b!7752297 m!8217204))

(assert (=> b!7752297 m!8217204))

(assert (=> b!7752297 m!8217206))

(assert (=> bm!718550 m!8216966))

(assert (=> bm!718550 m!8216968))

(assert (=> b!7751919 d!2342826))

(declare-fun bm!718551 () Bool)

(declare-fun call!718559 () Regex!20620)

(declare-fun call!718557 () Regex!20620)

(assert (=> bm!718551 (= call!718559 call!718557)))

(declare-fun b!7752303 () Bool)

(declare-fun c!1429805 () Bool)

(assert (=> b!7752303 (= c!1429805 (nullable!9081 (regOne!41752 r!25892)))))

(declare-fun e!4595609 () Regex!20620)

(declare-fun e!4595608 () Regex!20620)

(assert (=> b!7752303 (= e!4595609 e!4595608)))

(declare-fun c!1429806 () Bool)

(declare-fun bm!718552 () Bool)

(declare-fun c!1429809 () Bool)

(assert (=> bm!718552 (= call!718557 (derivativeStep!6041 (ite c!1429809 (regOne!41753 r!25892) (ite c!1429806 (reg!20949 r!25892) (regOne!41752 r!25892))) (head!15837 s1!4391)))))

(declare-fun b!7752304 () Bool)

(declare-fun call!718556 () Regex!20620)

(declare-fun call!718558 () Regex!20620)

(assert (=> b!7752304 (= e!4595608 (Union!20620 (Concat!29465 call!718556 (regTwo!41752 r!25892)) call!718558))))

(declare-fun d!2342828 () Bool)

(declare-fun lt!2669513 () Regex!20620)

(assert (=> d!2342828 (validRegex!11038 lt!2669513)))

(declare-fun e!4595605 () Regex!20620)

(assert (=> d!2342828 (= lt!2669513 e!4595605)))

(declare-fun c!1429807 () Bool)

(assert (=> d!2342828 (= c!1429807 (or (is-EmptyExpr!20620 r!25892) (is-EmptyLang!20620 r!25892)))))

(assert (=> d!2342828 (validRegex!11038 r!25892)))

(assert (=> d!2342828 (= (derivativeStep!6041 r!25892 (head!15837 s1!4391)) lt!2669513)))

(declare-fun bm!718553 () Bool)

(assert (=> bm!718553 (= call!718556 call!718559)))

(declare-fun b!7752305 () Bool)

(declare-fun e!4595606 () Regex!20620)

(assert (=> b!7752305 (= e!4595606 (ite (= (head!15837 s1!4391) (c!1429677 r!25892)) EmptyExpr!20620 EmptyLang!20620))))

(declare-fun bm!718554 () Bool)

(assert (=> bm!718554 (= call!718558 (derivativeStep!6041 (ite c!1429809 (regTwo!41753 r!25892) (regTwo!41752 r!25892)) (head!15837 s1!4391)))))

(declare-fun b!7752306 () Bool)

(assert (=> b!7752306 (= e!4595608 (Union!20620 (Concat!29465 call!718556 (regTwo!41752 r!25892)) EmptyLang!20620))))

(declare-fun b!7752307 () Bool)

(assert (=> b!7752307 (= e!4595609 (Concat!29465 call!718559 r!25892))))

(declare-fun b!7752308 () Bool)

(declare-fun e!4595607 () Regex!20620)

(assert (=> b!7752308 (= e!4595607 (Union!20620 call!718557 call!718558))))

(declare-fun b!7752309 () Bool)

(assert (=> b!7752309 (= e!4595605 EmptyLang!20620)))

(declare-fun b!7752310 () Bool)

(assert (=> b!7752310 (= e!4595605 e!4595606)))

(declare-fun c!1429808 () Bool)

(assert (=> b!7752310 (= c!1429808 (is-ElementMatch!20620 r!25892))))

(declare-fun b!7752311 () Bool)

(assert (=> b!7752311 (= c!1429809 (is-Union!20620 r!25892))))

(assert (=> b!7752311 (= e!4595606 e!4595607)))

(declare-fun b!7752312 () Bool)

(assert (=> b!7752312 (= e!4595607 e!4595609)))

(assert (=> b!7752312 (= c!1429806 (is-Star!20620 r!25892))))

(assert (= (and d!2342828 c!1429807) b!7752309))

(assert (= (and d!2342828 (not c!1429807)) b!7752310))

(assert (= (and b!7752310 c!1429808) b!7752305))

(assert (= (and b!7752310 (not c!1429808)) b!7752311))

(assert (= (and b!7752311 c!1429809) b!7752308))

(assert (= (and b!7752311 (not c!1429809)) b!7752312))

(assert (= (and b!7752312 c!1429806) b!7752307))

(assert (= (and b!7752312 (not c!1429806)) b!7752303))

(assert (= (and b!7752303 c!1429805) b!7752304))

(assert (= (and b!7752303 (not c!1429805)) b!7752306))

(assert (= (or b!7752304 b!7752306) bm!718553))

(assert (= (or b!7752307 bm!718553) bm!718551))

(assert (= (or b!7752308 b!7752304) bm!718554))

(assert (= (or b!7752308 bm!718551) bm!718552))

(assert (=> b!7752303 m!8217026))

(assert (=> bm!718552 m!8216972))

(declare-fun m!8217218 () Bool)

(assert (=> bm!718552 m!8217218))

(declare-fun m!8217220 () Bool)

(assert (=> d!2342828 m!8217220))

(assert (=> d!2342828 m!8216980))

(assert (=> bm!718554 m!8216972))

(declare-fun m!8217222 () Bool)

(assert (=> bm!718554 m!8217222))

(assert (=> b!7751919 d!2342828))

(assert (=> b!7751919 d!2342788))

(assert (=> b!7751919 d!2342802))

(assert (=> b!7751920 d!2342788))

(declare-fun d!2342830 () Bool)

(assert (=> d!2342830 (= (isEmpty!42029 (tail!15377 s2!3963)) (is-Nil!73341 (tail!15377 s2!3963)))))

(assert (=> b!7752055 d!2342830))

(assert (=> b!7752055 d!2342816))

(assert (=> b!7752057 d!2342830))

(assert (=> b!7752057 d!2342816))

(assert (=> d!2342762 d!2342804))

(assert (=> d!2342762 d!2342740))

(assert (=> b!7752074 d!2342792))

(declare-fun bm!718555 () Bool)

(declare-fun call!718563 () Regex!20620)

(declare-fun call!718561 () Regex!20620)

(assert (=> bm!718555 (= call!718563 call!718561)))

(declare-fun b!7752313 () Bool)

(declare-fun c!1429810 () Bool)

(assert (=> b!7752313 (= c!1429810 (nullable!9081 (regOne!41752 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))))))

(declare-fun e!4595614 () Regex!20620)

(declare-fun e!4595613 () Regex!20620)

(assert (=> b!7752313 (= e!4595614 e!4595613)))

(declare-fun bm!718556 () Bool)

(declare-fun c!1429814 () Bool)

(declare-fun c!1429811 () Bool)

(assert (=> bm!718556 (= call!718561 (derivativeStep!6041 (ite c!1429814 (regOne!41753 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))) (ite c!1429811 (reg!20949 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))) (regOne!41752 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))))) (h!79789 s1!4391)))))

(declare-fun call!718562 () Regex!20620)

(declare-fun b!7752314 () Bool)

(declare-fun call!718560 () Regex!20620)

(assert (=> b!7752314 (= e!4595613 (Union!20620 (Concat!29465 call!718560 (regTwo!41752 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))) call!718562))))

(declare-fun d!2342832 () Bool)

(declare-fun lt!2669514 () Regex!20620)

(assert (=> d!2342832 (validRegex!11038 lt!2669514)))

(declare-fun e!4595610 () Regex!20620)

(assert (=> d!2342832 (= lt!2669514 e!4595610)))

(declare-fun c!1429812 () Bool)

(assert (=> d!2342832 (= c!1429812 (or (is-EmptyExpr!20620 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))) (is-EmptyLang!20620 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))))))

(assert (=> d!2342832 (validRegex!11038 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))))

(assert (=> d!2342832 (= (derivativeStep!6041 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)) (h!79789 s1!4391)) lt!2669514)))

(declare-fun bm!718557 () Bool)

(assert (=> bm!718557 (= call!718560 call!718563)))

(declare-fun e!4595611 () Regex!20620)

(declare-fun b!7752315 () Bool)

(assert (=> b!7752315 (= e!4595611 (ite (= (h!79789 s1!4391) (c!1429677 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))) EmptyExpr!20620 EmptyLang!20620))))

(declare-fun bm!718558 () Bool)

(assert (=> bm!718558 (= call!718562 (derivativeStep!6041 (ite c!1429814 (regTwo!41753 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))) (regTwo!41752 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))) (h!79789 s1!4391)))))

(declare-fun b!7752316 () Bool)

(assert (=> b!7752316 (= e!4595613 (Union!20620 (Concat!29465 call!718560 (regTwo!41752 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482)))) EmptyLang!20620))))

(declare-fun b!7752317 () Bool)

(assert (=> b!7752317 (= e!4595614 (Concat!29465 call!718563 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))))))

(declare-fun b!7752318 () Bool)

(declare-fun e!4595612 () Regex!20620)

(assert (=> b!7752318 (= e!4595612 (Union!20620 call!718561 call!718562))))

(declare-fun b!7752319 () Bool)

(assert (=> b!7752319 (= e!4595610 EmptyLang!20620)))

(declare-fun b!7752320 () Bool)

(assert (=> b!7752320 (= e!4595610 e!4595611)))

(declare-fun c!1429813 () Bool)

(assert (=> b!7752320 (= c!1429813 (is-ElementMatch!20620 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))))))

(declare-fun b!7752321 () Bool)

(assert (=> b!7752321 (= c!1429814 (is-Union!20620 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))))))

(assert (=> b!7752321 (= e!4595611 e!4595612)))

(declare-fun b!7752322 () Bool)

(assert (=> b!7752322 (= e!4595612 e!4595614)))

(assert (=> b!7752322 (= c!1429811 (is-Star!20620 (ite c!1429738 (regTwo!41753 lt!2669482) (regTwo!41752 lt!2669482))))))

(assert (= (and d!2342832 c!1429812) b!7752319))

(assert (= (and d!2342832 (not c!1429812)) b!7752320))

(assert (= (and b!7752320 c!1429813) b!7752315))

(assert (= (and b!7752320 (not c!1429813)) b!7752321))

(assert (= (and b!7752321 c!1429814) b!7752318))

(assert (= (and b!7752321 (not c!1429814)) b!7752322))

(assert (= (and b!7752322 c!1429811) b!7752317))

(assert (= (and b!7752322 (not c!1429811)) b!7752313))

(assert (= (and b!7752313 c!1429810) b!7752314))

(assert (= (and b!7752313 (not c!1429810)) b!7752316))

(assert (= (or b!7752314 b!7752316) bm!718557))

(assert (= (or b!7752317 bm!718557) bm!718555))

(assert (= (or b!7752318 b!7752314) bm!718558))

(assert (= (or b!7752318 bm!718555) bm!718556))

(declare-fun m!8217224 () Bool)

(assert (=> b!7752313 m!8217224))

(declare-fun m!8217226 () Bool)

(assert (=> bm!718556 m!8217226))

(declare-fun m!8217228 () Bool)

(assert (=> d!2342832 m!8217228))

(declare-fun m!8217230 () Bool)

(assert (=> d!2342832 m!8217230))

(declare-fun m!8217232 () Bool)

(assert (=> bm!718558 m!8217232))

(assert (=> bm!718493 d!2342832))

(declare-fun b!7752323 () Bool)

(declare-fun e!4595620 () Bool)

(declare-fun lt!2669515 () Bool)

(declare-fun call!718564 () Bool)

(assert (=> b!7752323 (= e!4595620 (= lt!2669515 call!718564))))

(declare-fun b!7752324 () Bool)

(declare-fun e!4595615 () Bool)

(assert (=> b!7752324 (= e!4595615 (matchR!10110 (derivativeStep!6041 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391))) (head!15837 (tail!15377 (t!388200 s1!4391)))) (tail!15377 (tail!15377 (t!388200 s1!4391)))))))

(declare-fun b!7752325 () Bool)

(declare-fun e!4595619 () Bool)

(assert (=> b!7752325 (= e!4595619 (= (head!15837 (tail!15377 (t!388200 s1!4391))) (c!1429677 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391))))))))

(declare-fun b!7752326 () Bool)

(declare-fun e!4595621 () Bool)

(assert (=> b!7752326 (= e!4595620 e!4595621)))

(declare-fun c!1429816 () Bool)

(assert (=> b!7752326 (= c!1429816 (is-EmptyLang!20620 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391)))))))

(declare-fun b!7752327 () Bool)

(declare-fun res!3091124 () Bool)

(declare-fun e!4595618 () Bool)

(assert (=> b!7752327 (=> res!3091124 e!4595618)))

(assert (=> b!7752327 (= res!3091124 (not (is-ElementMatch!20620 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391))))))))

(assert (=> b!7752327 (= e!4595621 e!4595618)))

(declare-fun b!7752328 () Bool)

(declare-fun e!4595617 () Bool)

(assert (=> b!7752328 (= e!4595618 e!4595617)))

(declare-fun res!3091127 () Bool)

(assert (=> b!7752328 (=> (not res!3091127) (not e!4595617))))

(assert (=> b!7752328 (= res!3091127 (not lt!2669515))))

(declare-fun b!7752329 () Bool)

(assert (=> b!7752329 (= e!4595615 (nullable!9081 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391)))))))

(declare-fun b!7752330 () Bool)

(assert (=> b!7752330 (= e!4595621 (not lt!2669515))))

(declare-fun d!2342834 () Bool)

(assert (=> d!2342834 e!4595620))

(declare-fun c!1429817 () Bool)

(assert (=> d!2342834 (= c!1429817 (is-EmptyExpr!20620 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391)))))))

(assert (=> d!2342834 (= lt!2669515 e!4595615)))

(declare-fun c!1429815 () Bool)

(assert (=> d!2342834 (= c!1429815 (isEmpty!42029 (tail!15377 (t!388200 s1!4391))))))

(assert (=> d!2342834 (validRegex!11038 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391))))))

(assert (=> d!2342834 (= (matchR!10110 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391))) (tail!15377 (t!388200 s1!4391))) lt!2669515)))

(declare-fun b!7752331 () Bool)

(declare-fun res!3091131 () Bool)

(declare-fun e!4595616 () Bool)

(assert (=> b!7752331 (=> res!3091131 e!4595616)))

(assert (=> b!7752331 (= res!3091131 (not (isEmpty!42029 (tail!15377 (tail!15377 (t!388200 s1!4391))))))))

(declare-fun b!7752332 () Bool)

(declare-fun res!3091126 () Bool)

(assert (=> b!7752332 (=> (not res!3091126) (not e!4595619))))

(assert (=> b!7752332 (= res!3091126 (isEmpty!42029 (tail!15377 (tail!15377 (t!388200 s1!4391)))))))

(declare-fun b!7752333 () Bool)

(declare-fun res!3091130 () Bool)

(assert (=> b!7752333 (=> res!3091130 e!4595618)))

(assert (=> b!7752333 (= res!3091130 e!4595619)))

(declare-fun res!3091125 () Bool)

(assert (=> b!7752333 (=> (not res!3091125) (not e!4595619))))

(assert (=> b!7752333 (= res!3091125 lt!2669515)))

(declare-fun b!7752334 () Bool)

(assert (=> b!7752334 (= e!4595617 e!4595616)))

(declare-fun res!3091129 () Bool)

(assert (=> b!7752334 (=> res!3091129 e!4595616)))

(assert (=> b!7752334 (= res!3091129 call!718564)))

(declare-fun bm!718559 () Bool)

(assert (=> bm!718559 (= call!718564 (isEmpty!42029 (tail!15377 (t!388200 s1!4391))))))

(declare-fun b!7752335 () Bool)

(declare-fun res!3091128 () Bool)

(assert (=> b!7752335 (=> (not res!3091128) (not e!4595619))))

(assert (=> b!7752335 (= res!3091128 (not call!718564))))

(declare-fun b!7752336 () Bool)

(assert (=> b!7752336 (= e!4595616 (not (= (head!15837 (tail!15377 (t!388200 s1!4391))) (c!1429677 (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391)))))))))

(assert (= (and d!2342834 c!1429815) b!7752329))

(assert (= (and d!2342834 (not c!1429815)) b!7752324))

(assert (= (and d!2342834 c!1429817) b!7752323))

(assert (= (and d!2342834 (not c!1429817)) b!7752326))

(assert (= (and b!7752326 c!1429816) b!7752330))

(assert (= (and b!7752326 (not c!1429816)) b!7752327))

(assert (= (and b!7752327 (not res!3091124)) b!7752333))

(assert (= (and b!7752333 res!3091125) b!7752335))

(assert (= (and b!7752335 res!3091128) b!7752332))

(assert (= (and b!7752332 res!3091126) b!7752325))

(assert (= (and b!7752333 (not res!3091130)) b!7752328))

(assert (= (and b!7752328 res!3091127) b!7752334))

(assert (= (and b!7752334 (not res!3091129)) b!7752331))

(assert (= (and b!7752331 (not res!3091131)) b!7752336))

(assert (= (or b!7752323 b!7752334 b!7752335) bm!718559))

(assert (=> b!7752332 m!8217070))

(declare-fun m!8217234 () Bool)

(assert (=> b!7752332 m!8217234))

(assert (=> b!7752332 m!8217234))

(declare-fun m!8217236 () Bool)

(assert (=> b!7752332 m!8217236))

(assert (=> b!7752329 m!8217078))

(declare-fun m!8217238 () Bool)

(assert (=> b!7752329 m!8217238))

(assert (=> b!7752324 m!8217070))

(declare-fun m!8217240 () Bool)

(assert (=> b!7752324 m!8217240))

(assert (=> b!7752324 m!8217078))

(assert (=> b!7752324 m!8217240))

(declare-fun m!8217242 () Bool)

(assert (=> b!7752324 m!8217242))

(assert (=> b!7752324 m!8217070))

(assert (=> b!7752324 m!8217234))

(assert (=> b!7752324 m!8217242))

(assert (=> b!7752324 m!8217234))

(declare-fun m!8217244 () Bool)

(assert (=> b!7752324 m!8217244))

(assert (=> d!2342834 m!8217070))

(assert (=> d!2342834 m!8217072))

(assert (=> d!2342834 m!8217078))

(declare-fun m!8217246 () Bool)

(assert (=> d!2342834 m!8217246))

(assert (=> b!7752336 m!8217070))

(assert (=> b!7752336 m!8217240))

(assert (=> b!7752325 m!8217070))

(assert (=> b!7752325 m!8217240))

(assert (=> b!7752331 m!8217070))

(assert (=> b!7752331 m!8217234))

(assert (=> b!7752331 m!8217234))

(assert (=> b!7752331 m!8217236))

(assert (=> bm!718559 m!8217070))

(assert (=> bm!718559 m!8217072))

(assert (=> b!7752073 d!2342834))

(declare-fun bm!718560 () Bool)

(declare-fun call!718568 () Regex!20620)

(declare-fun call!718566 () Regex!20620)

(assert (=> bm!718560 (= call!718568 call!718566)))

(declare-fun b!7752337 () Bool)

(declare-fun c!1429818 () Bool)

(assert (=> b!7752337 (= c!1429818 (nullable!9081 (regOne!41752 lt!2669481)))))

(declare-fun e!4595626 () Regex!20620)

(declare-fun e!4595625 () Regex!20620)

(assert (=> b!7752337 (= e!4595626 e!4595625)))

(declare-fun c!1429819 () Bool)

(declare-fun c!1429822 () Bool)

(declare-fun bm!718561 () Bool)

(assert (=> bm!718561 (= call!718566 (derivativeStep!6041 (ite c!1429822 (regOne!41753 lt!2669481) (ite c!1429819 (reg!20949 lt!2669481) (regOne!41752 lt!2669481))) (head!15837 (t!388200 s1!4391))))))

(declare-fun call!718567 () Regex!20620)

(declare-fun b!7752338 () Bool)

(declare-fun call!718565 () Regex!20620)

(assert (=> b!7752338 (= e!4595625 (Union!20620 (Concat!29465 call!718565 (regTwo!41752 lt!2669481)) call!718567))))

(declare-fun d!2342836 () Bool)

(declare-fun lt!2669516 () Regex!20620)

(assert (=> d!2342836 (validRegex!11038 lt!2669516)))

(declare-fun e!4595622 () Regex!20620)

(assert (=> d!2342836 (= lt!2669516 e!4595622)))

(declare-fun c!1429820 () Bool)

(assert (=> d!2342836 (= c!1429820 (or (is-EmptyExpr!20620 lt!2669481) (is-EmptyLang!20620 lt!2669481)))))

(assert (=> d!2342836 (validRegex!11038 lt!2669481)))

(assert (=> d!2342836 (= (derivativeStep!6041 lt!2669481 (head!15837 (t!388200 s1!4391))) lt!2669516)))

(declare-fun bm!718562 () Bool)

(assert (=> bm!718562 (= call!718565 call!718568)))

(declare-fun b!7752339 () Bool)

(declare-fun e!4595623 () Regex!20620)

(assert (=> b!7752339 (= e!4595623 (ite (= (head!15837 (t!388200 s1!4391)) (c!1429677 lt!2669481)) EmptyExpr!20620 EmptyLang!20620))))

(declare-fun bm!718563 () Bool)

(assert (=> bm!718563 (= call!718567 (derivativeStep!6041 (ite c!1429822 (regTwo!41753 lt!2669481) (regTwo!41752 lt!2669481)) (head!15837 (t!388200 s1!4391))))))

(declare-fun b!7752340 () Bool)

(assert (=> b!7752340 (= e!4595625 (Union!20620 (Concat!29465 call!718565 (regTwo!41752 lt!2669481)) EmptyLang!20620))))

(declare-fun b!7752341 () Bool)

(assert (=> b!7752341 (= e!4595626 (Concat!29465 call!718568 lt!2669481))))

(declare-fun b!7752342 () Bool)

(declare-fun e!4595624 () Regex!20620)

(assert (=> b!7752342 (= e!4595624 (Union!20620 call!718566 call!718567))))

(declare-fun b!7752343 () Bool)

(assert (=> b!7752343 (= e!4595622 EmptyLang!20620)))

(declare-fun b!7752344 () Bool)

(assert (=> b!7752344 (= e!4595622 e!4595623)))

(declare-fun c!1429821 () Bool)

(assert (=> b!7752344 (= c!1429821 (is-ElementMatch!20620 lt!2669481))))

(declare-fun b!7752345 () Bool)

(assert (=> b!7752345 (= c!1429822 (is-Union!20620 lt!2669481))))

(assert (=> b!7752345 (= e!4595623 e!4595624)))

(declare-fun b!7752346 () Bool)

(assert (=> b!7752346 (= e!4595624 e!4595626)))

(assert (=> b!7752346 (= c!1429819 (is-Star!20620 lt!2669481))))

(assert (= (and d!2342836 c!1429820) b!7752343))

(assert (= (and d!2342836 (not c!1429820)) b!7752344))

(assert (= (and b!7752344 c!1429821) b!7752339))

(assert (= (and b!7752344 (not c!1429821)) b!7752345))

(assert (= (and b!7752345 c!1429822) b!7752342))

(assert (= (and b!7752345 (not c!1429822)) b!7752346))

(assert (= (and b!7752346 c!1429819) b!7752341))

(assert (= (and b!7752346 (not c!1429819)) b!7752337))

(assert (= (and b!7752337 c!1429818) b!7752338))

(assert (= (and b!7752337 (not c!1429818)) b!7752340))

(assert (= (or b!7752338 b!7752340) bm!718562))

(assert (= (or b!7752341 bm!718562) bm!718560))

(assert (= (or b!7752342 b!7752338) bm!718563))

(assert (= (or b!7752342 bm!718560) bm!718561))

(declare-fun m!8217248 () Bool)

(assert (=> b!7752337 m!8217248))

(assert (=> bm!718561 m!8217076))

(declare-fun m!8217250 () Bool)

(assert (=> bm!718561 m!8217250))

(declare-fun m!8217252 () Bool)

(assert (=> d!2342836 m!8217252))

(assert (=> d!2342836 m!8216932))

(assert (=> bm!718563 m!8217076))

(declare-fun m!8217254 () Bool)

(assert (=> bm!718563 m!8217254))

(assert (=> b!7752073 d!2342836))

(assert (=> b!7752073 d!2342792))

(assert (=> b!7752073 d!2342810))

(declare-fun e!4595627 () Bool)

(assert (=> b!7752123 (= tp!2274407 e!4595627)))

(declare-fun b!7752347 () Bool)

(assert (=> b!7752347 (= e!4595627 tp_is_empty!51595)))

(declare-fun b!7752349 () Bool)

(declare-fun tp!2274468 () Bool)

(assert (=> b!7752349 (= e!4595627 tp!2274468)))

(declare-fun b!7752348 () Bool)

(declare-fun tp!2274470 () Bool)

(declare-fun tp!2274469 () Bool)

(assert (=> b!7752348 (= e!4595627 (and tp!2274470 tp!2274469))))

(declare-fun b!7752350 () Bool)

(declare-fun tp!2274467 () Bool)

(declare-fun tp!2274466 () Bool)

(assert (=> b!7752350 (= e!4595627 (and tp!2274467 tp!2274466))))

(assert (= (and b!7752123 (is-ElementMatch!20620 (regOne!41753 (reg!20949 r!25892)))) b!7752347))

(assert (= (and b!7752123 (is-Concat!29465 (regOne!41753 (reg!20949 r!25892)))) b!7752348))

(assert (= (and b!7752123 (is-Star!20620 (regOne!41753 (reg!20949 r!25892)))) b!7752349))

(assert (= (and b!7752123 (is-Union!20620 (regOne!41753 (reg!20949 r!25892)))) b!7752350))

(declare-fun e!4595628 () Bool)

(assert (=> b!7752123 (= tp!2274406 e!4595628)))

(declare-fun b!7752351 () Bool)

(assert (=> b!7752351 (= e!4595628 tp_is_empty!51595)))

(declare-fun b!7752353 () Bool)

(declare-fun tp!2274473 () Bool)

(assert (=> b!7752353 (= e!4595628 tp!2274473)))

(declare-fun b!7752352 () Bool)

(declare-fun tp!2274475 () Bool)

(declare-fun tp!2274474 () Bool)

(assert (=> b!7752352 (= e!4595628 (and tp!2274475 tp!2274474))))

(declare-fun b!7752354 () Bool)

(declare-fun tp!2274472 () Bool)

(declare-fun tp!2274471 () Bool)

(assert (=> b!7752354 (= e!4595628 (and tp!2274472 tp!2274471))))

(assert (= (and b!7752123 (is-ElementMatch!20620 (regTwo!41753 (reg!20949 r!25892)))) b!7752351))

(assert (= (and b!7752123 (is-Concat!29465 (regTwo!41753 (reg!20949 r!25892)))) b!7752352))

(assert (= (and b!7752123 (is-Star!20620 (regTwo!41753 (reg!20949 r!25892)))) b!7752353))

(assert (= (and b!7752123 (is-Union!20620 (regTwo!41753 (reg!20949 r!25892)))) b!7752354))

(declare-fun e!4595629 () Bool)

(assert (=> b!7752137 (= tp!2274423 e!4595629)))

(declare-fun b!7752355 () Bool)

(assert (=> b!7752355 (= e!4595629 tp_is_empty!51595)))

(declare-fun b!7752357 () Bool)

(declare-fun tp!2274478 () Bool)

(assert (=> b!7752357 (= e!4595629 tp!2274478)))

(declare-fun b!7752356 () Bool)

(declare-fun tp!2274480 () Bool)

(declare-fun tp!2274479 () Bool)

(assert (=> b!7752356 (= e!4595629 (and tp!2274480 tp!2274479))))

(declare-fun b!7752358 () Bool)

(declare-fun tp!2274477 () Bool)

(declare-fun tp!2274476 () Bool)

(assert (=> b!7752358 (= e!4595629 (and tp!2274477 tp!2274476))))

(assert (= (and b!7752137 (is-ElementMatch!20620 (regOne!41753 (regOne!41752 r!25892)))) b!7752355))

(assert (= (and b!7752137 (is-Concat!29465 (regOne!41753 (regOne!41752 r!25892)))) b!7752356))

(assert (= (and b!7752137 (is-Star!20620 (regOne!41753 (regOne!41752 r!25892)))) b!7752357))

(assert (= (and b!7752137 (is-Union!20620 (regOne!41753 (regOne!41752 r!25892)))) b!7752358))

(declare-fun e!4595630 () Bool)

(assert (=> b!7752137 (= tp!2274422 e!4595630)))

(declare-fun b!7752359 () Bool)

(assert (=> b!7752359 (= e!4595630 tp_is_empty!51595)))

(declare-fun b!7752361 () Bool)

(declare-fun tp!2274483 () Bool)

(assert (=> b!7752361 (= e!4595630 tp!2274483)))

(declare-fun b!7752360 () Bool)

(declare-fun tp!2274485 () Bool)

(declare-fun tp!2274484 () Bool)

(assert (=> b!7752360 (= e!4595630 (and tp!2274485 tp!2274484))))

(declare-fun b!7752362 () Bool)

(declare-fun tp!2274482 () Bool)

(declare-fun tp!2274481 () Bool)

(assert (=> b!7752362 (= e!4595630 (and tp!2274482 tp!2274481))))

(assert (= (and b!7752137 (is-ElementMatch!20620 (regTwo!41753 (regOne!41752 r!25892)))) b!7752359))

(assert (= (and b!7752137 (is-Concat!29465 (regTwo!41753 (regOne!41752 r!25892)))) b!7752360))

(assert (= (and b!7752137 (is-Star!20620 (regTwo!41753 (regOne!41752 r!25892)))) b!7752361))

(assert (= (and b!7752137 (is-Union!20620 (regTwo!41753 (regOne!41752 r!25892)))) b!7752362))

(declare-fun e!4595631 () Bool)

(assert (=> b!7752141 (= tp!2274428 e!4595631)))

(declare-fun b!7752363 () Bool)

(assert (=> b!7752363 (= e!4595631 tp_is_empty!51595)))

(declare-fun b!7752365 () Bool)

(declare-fun tp!2274488 () Bool)

(assert (=> b!7752365 (= e!4595631 tp!2274488)))

(declare-fun b!7752364 () Bool)

(declare-fun tp!2274490 () Bool)

(declare-fun tp!2274489 () Bool)

(assert (=> b!7752364 (= e!4595631 (and tp!2274490 tp!2274489))))

(declare-fun b!7752366 () Bool)

(declare-fun tp!2274487 () Bool)

(declare-fun tp!2274486 () Bool)

(assert (=> b!7752366 (= e!4595631 (and tp!2274487 tp!2274486))))

(assert (= (and b!7752141 (is-ElementMatch!20620 (regOne!41753 (regTwo!41752 r!25892)))) b!7752363))

(assert (= (and b!7752141 (is-Concat!29465 (regOne!41753 (regTwo!41752 r!25892)))) b!7752364))

(assert (= (and b!7752141 (is-Star!20620 (regOne!41753 (regTwo!41752 r!25892)))) b!7752365))

(assert (= (and b!7752141 (is-Union!20620 (regOne!41753 (regTwo!41752 r!25892)))) b!7752366))

(declare-fun e!4595632 () Bool)

(assert (=> b!7752141 (= tp!2274427 e!4595632)))

(declare-fun b!7752367 () Bool)

(assert (=> b!7752367 (= e!4595632 tp_is_empty!51595)))

(declare-fun b!7752369 () Bool)

(declare-fun tp!2274493 () Bool)

(assert (=> b!7752369 (= e!4595632 tp!2274493)))

(declare-fun b!7752368 () Bool)

(declare-fun tp!2274495 () Bool)

(declare-fun tp!2274494 () Bool)

(assert (=> b!7752368 (= e!4595632 (and tp!2274495 tp!2274494))))

(declare-fun b!7752370 () Bool)

(declare-fun tp!2274492 () Bool)

(declare-fun tp!2274491 () Bool)

(assert (=> b!7752370 (= e!4595632 (and tp!2274492 tp!2274491))))

(assert (= (and b!7752141 (is-ElementMatch!20620 (regTwo!41753 (regTwo!41752 r!25892)))) b!7752367))

(assert (= (and b!7752141 (is-Concat!29465 (regTwo!41753 (regTwo!41752 r!25892)))) b!7752368))

(assert (= (and b!7752141 (is-Star!20620 (regTwo!41753 (regTwo!41752 r!25892)))) b!7752369))

(assert (= (and b!7752141 (is-Union!20620 (regTwo!41753 (regTwo!41752 r!25892)))) b!7752370))

(declare-fun e!4595633 () Bool)

(assert (=> b!7752122 (= tp!2274408 e!4595633)))

(declare-fun b!7752371 () Bool)

(assert (=> b!7752371 (= e!4595633 tp_is_empty!51595)))

(declare-fun b!7752373 () Bool)

(declare-fun tp!2274498 () Bool)

(assert (=> b!7752373 (= e!4595633 tp!2274498)))

(declare-fun b!7752372 () Bool)

(declare-fun tp!2274500 () Bool)

(declare-fun tp!2274499 () Bool)

(assert (=> b!7752372 (= e!4595633 (and tp!2274500 tp!2274499))))

(declare-fun b!7752374 () Bool)

(declare-fun tp!2274497 () Bool)

(declare-fun tp!2274496 () Bool)

(assert (=> b!7752374 (= e!4595633 (and tp!2274497 tp!2274496))))

(assert (= (and b!7752122 (is-ElementMatch!20620 (reg!20949 (reg!20949 r!25892)))) b!7752371))

(assert (= (and b!7752122 (is-Concat!29465 (reg!20949 (reg!20949 r!25892)))) b!7752372))

(assert (= (and b!7752122 (is-Star!20620 (reg!20949 (reg!20949 r!25892)))) b!7752373))

(assert (= (and b!7752122 (is-Union!20620 (reg!20949 (reg!20949 r!25892)))) b!7752374))

(declare-fun b!7752375 () Bool)

(declare-fun e!4595634 () Bool)

(declare-fun tp!2274501 () Bool)

(assert (=> b!7752375 (= e!4595634 (and tp_is_empty!51595 tp!2274501))))

(assert (=> b!7752129 (= tp!2274416 e!4595634)))

(assert (= (and b!7752129 (is-Cons!73341 (t!388200 (t!388200 s1!4391)))) b!7752375))

(declare-fun e!4595635 () Bool)

(assert (=> b!7752121 (= tp!2274410 e!4595635)))

(declare-fun b!7752376 () Bool)

(assert (=> b!7752376 (= e!4595635 tp_is_empty!51595)))

(declare-fun b!7752378 () Bool)

(declare-fun tp!2274504 () Bool)

(assert (=> b!7752378 (= e!4595635 tp!2274504)))

(declare-fun b!7752377 () Bool)

(declare-fun tp!2274506 () Bool)

(declare-fun tp!2274505 () Bool)

(assert (=> b!7752377 (= e!4595635 (and tp!2274506 tp!2274505))))

(declare-fun b!7752379 () Bool)

(declare-fun tp!2274503 () Bool)

(declare-fun tp!2274502 () Bool)

(assert (=> b!7752379 (= e!4595635 (and tp!2274503 tp!2274502))))

(assert (= (and b!7752121 (is-ElementMatch!20620 (regOne!41752 (reg!20949 r!25892)))) b!7752376))

(assert (= (and b!7752121 (is-Concat!29465 (regOne!41752 (reg!20949 r!25892)))) b!7752377))

(assert (= (and b!7752121 (is-Star!20620 (regOne!41752 (reg!20949 r!25892)))) b!7752378))

(assert (= (and b!7752121 (is-Union!20620 (regOne!41752 (reg!20949 r!25892)))) b!7752379))

(declare-fun e!4595636 () Bool)

(assert (=> b!7752121 (= tp!2274409 e!4595636)))

(declare-fun b!7752380 () Bool)

(assert (=> b!7752380 (= e!4595636 tp_is_empty!51595)))

(declare-fun b!7752382 () Bool)

(declare-fun tp!2274509 () Bool)

(assert (=> b!7752382 (= e!4595636 tp!2274509)))

(declare-fun b!7752381 () Bool)

(declare-fun tp!2274511 () Bool)

(declare-fun tp!2274510 () Bool)

(assert (=> b!7752381 (= e!4595636 (and tp!2274511 tp!2274510))))

(declare-fun b!7752383 () Bool)

(declare-fun tp!2274508 () Bool)

(declare-fun tp!2274507 () Bool)

(assert (=> b!7752383 (= e!4595636 (and tp!2274508 tp!2274507))))

(assert (= (and b!7752121 (is-ElementMatch!20620 (regTwo!41752 (reg!20949 r!25892)))) b!7752380))

(assert (= (and b!7752121 (is-Concat!29465 (regTwo!41752 (reg!20949 r!25892)))) b!7752381))

(assert (= (and b!7752121 (is-Star!20620 (regTwo!41752 (reg!20949 r!25892)))) b!7752382))

(assert (= (and b!7752121 (is-Union!20620 (regTwo!41752 (reg!20949 r!25892)))) b!7752383))

(declare-fun e!4595638 () Bool)

(assert (=> b!7752139 (= tp!2274431 e!4595638)))

(declare-fun b!7752384 () Bool)

(assert (=> b!7752384 (= e!4595638 tp_is_empty!51595)))

(declare-fun b!7752386 () Bool)

(declare-fun tp!2274514 () Bool)

(assert (=> b!7752386 (= e!4595638 tp!2274514)))

(declare-fun b!7752385 () Bool)

(declare-fun tp!2274516 () Bool)

(declare-fun tp!2274515 () Bool)

(assert (=> b!7752385 (= e!4595638 (and tp!2274516 tp!2274515))))

(declare-fun b!7752387 () Bool)

(declare-fun tp!2274513 () Bool)

(declare-fun tp!2274512 () Bool)

(assert (=> b!7752387 (= e!4595638 (and tp!2274513 tp!2274512))))

(assert (= (and b!7752139 (is-ElementMatch!20620 (regOne!41752 (regTwo!41752 r!25892)))) b!7752384))

(assert (= (and b!7752139 (is-Concat!29465 (regOne!41752 (regTwo!41752 r!25892)))) b!7752385))

(assert (= (and b!7752139 (is-Star!20620 (regOne!41752 (regTwo!41752 r!25892)))) b!7752386))

(assert (= (and b!7752139 (is-Union!20620 (regOne!41752 (regTwo!41752 r!25892)))) b!7752387))

(declare-fun e!4595645 () Bool)

(assert (=> b!7752139 (= tp!2274430 e!4595645)))

(declare-fun b!7752397 () Bool)

(assert (=> b!7752397 (= e!4595645 tp_is_empty!51595)))

(declare-fun b!7752399 () Bool)

(declare-fun tp!2274519 () Bool)

(assert (=> b!7752399 (= e!4595645 tp!2274519)))

(declare-fun b!7752398 () Bool)

(declare-fun tp!2274521 () Bool)

(declare-fun tp!2274520 () Bool)

(assert (=> b!7752398 (= e!4595645 (and tp!2274521 tp!2274520))))

(declare-fun b!7752400 () Bool)

(declare-fun tp!2274518 () Bool)

(declare-fun tp!2274517 () Bool)

(assert (=> b!7752400 (= e!4595645 (and tp!2274518 tp!2274517))))

(assert (= (and b!7752139 (is-ElementMatch!20620 (regTwo!41752 (regTwo!41752 r!25892)))) b!7752397))

(assert (= (and b!7752139 (is-Concat!29465 (regTwo!41752 (regTwo!41752 r!25892)))) b!7752398))

(assert (= (and b!7752139 (is-Star!20620 (regTwo!41752 (regTwo!41752 r!25892)))) b!7752399))

(assert (= (and b!7752139 (is-Union!20620 (regTwo!41752 (regTwo!41752 r!25892)))) b!7752400))

(declare-fun e!4595646 () Bool)

(assert (=> b!7752148 (= tp!2274439 e!4595646)))

(declare-fun b!7752401 () Bool)

(assert (=> b!7752401 (= e!4595646 tp_is_empty!51595)))

(declare-fun b!7752403 () Bool)

(declare-fun tp!2274524 () Bool)

(assert (=> b!7752403 (= e!4595646 tp!2274524)))

(declare-fun b!7752402 () Bool)

(declare-fun tp!2274526 () Bool)

(declare-fun tp!2274525 () Bool)

(assert (=> b!7752402 (= e!4595646 (and tp!2274526 tp!2274525))))

(declare-fun b!7752404 () Bool)

(declare-fun tp!2274523 () Bool)

(declare-fun tp!2274522 () Bool)

(assert (=> b!7752404 (= e!4595646 (and tp!2274523 tp!2274522))))

(assert (= (and b!7752148 (is-ElementMatch!20620 (reg!20949 (regOne!41753 r!25892)))) b!7752401))

(assert (= (and b!7752148 (is-Concat!29465 (reg!20949 (regOne!41753 r!25892)))) b!7752402))

(assert (= (and b!7752148 (is-Star!20620 (reg!20949 (regOne!41753 r!25892)))) b!7752403))

(assert (= (and b!7752148 (is-Union!20620 (reg!20949 (regOne!41753 r!25892)))) b!7752404))

(declare-fun e!4595647 () Bool)

(assert (=> b!7752157 (= tp!2274448 e!4595647)))

(declare-fun b!7752405 () Bool)

(assert (=> b!7752405 (= e!4595647 tp_is_empty!51595)))

(declare-fun b!7752407 () Bool)

(declare-fun tp!2274529 () Bool)

(assert (=> b!7752407 (= e!4595647 tp!2274529)))

(declare-fun b!7752406 () Bool)

(declare-fun tp!2274531 () Bool)

(declare-fun tp!2274530 () Bool)

(assert (=> b!7752406 (= e!4595647 (and tp!2274531 tp!2274530))))

(declare-fun b!7752408 () Bool)

(declare-fun tp!2274528 () Bool)

(declare-fun tp!2274527 () Bool)

(assert (=> b!7752408 (= e!4595647 (and tp!2274528 tp!2274527))))

(assert (= (and b!7752157 (is-ElementMatch!20620 (regOne!41753 (regTwo!41753 r!25892)))) b!7752405))

(assert (= (and b!7752157 (is-Concat!29465 (regOne!41753 (regTwo!41753 r!25892)))) b!7752406))

(assert (= (and b!7752157 (is-Star!20620 (regOne!41753 (regTwo!41753 r!25892)))) b!7752407))

(assert (= (and b!7752157 (is-Union!20620 (regOne!41753 (regTwo!41753 r!25892)))) b!7752408))

(declare-fun e!4595648 () Bool)

(assert (=> b!7752157 (= tp!2274447 e!4595648)))

(declare-fun b!7752409 () Bool)

(assert (=> b!7752409 (= e!4595648 tp_is_empty!51595)))

(declare-fun b!7752411 () Bool)

(declare-fun tp!2274534 () Bool)

(assert (=> b!7752411 (= e!4595648 tp!2274534)))

(declare-fun b!7752410 () Bool)

(declare-fun tp!2274536 () Bool)

(declare-fun tp!2274535 () Bool)

(assert (=> b!7752410 (= e!4595648 (and tp!2274536 tp!2274535))))

(declare-fun b!7752412 () Bool)

(declare-fun tp!2274533 () Bool)

(declare-fun tp!2274532 () Bool)

(assert (=> b!7752412 (= e!4595648 (and tp!2274533 tp!2274532))))

(assert (= (and b!7752157 (is-ElementMatch!20620 (regTwo!41753 (regTwo!41753 r!25892)))) b!7752409))

(assert (= (and b!7752157 (is-Concat!29465 (regTwo!41753 (regTwo!41753 r!25892)))) b!7752410))

(assert (= (and b!7752157 (is-Star!20620 (regTwo!41753 (regTwo!41753 r!25892)))) b!7752411))

(assert (= (and b!7752157 (is-Union!20620 (regTwo!41753 (regTwo!41753 r!25892)))) b!7752412))

(declare-fun e!4595649 () Bool)

(assert (=> b!7752136 (= tp!2274424 e!4595649)))

(declare-fun b!7752413 () Bool)

(assert (=> b!7752413 (= e!4595649 tp_is_empty!51595)))

(declare-fun b!7752415 () Bool)

(declare-fun tp!2274539 () Bool)

(assert (=> b!7752415 (= e!4595649 tp!2274539)))

(declare-fun b!7752414 () Bool)

(declare-fun tp!2274541 () Bool)

(declare-fun tp!2274540 () Bool)

(assert (=> b!7752414 (= e!4595649 (and tp!2274541 tp!2274540))))

(declare-fun b!7752416 () Bool)

(declare-fun tp!2274538 () Bool)

(declare-fun tp!2274537 () Bool)

(assert (=> b!7752416 (= e!4595649 (and tp!2274538 tp!2274537))))

(assert (= (and b!7752136 (is-ElementMatch!20620 (reg!20949 (regOne!41752 r!25892)))) b!7752413))

(assert (= (and b!7752136 (is-Concat!29465 (reg!20949 (regOne!41752 r!25892)))) b!7752414))

(assert (= (and b!7752136 (is-Star!20620 (reg!20949 (regOne!41752 r!25892)))) b!7752415))

(assert (= (and b!7752136 (is-Union!20620 (reg!20949 (regOne!41752 r!25892)))) b!7752416))

(declare-fun e!4595650 () Bool)

(assert (=> b!7752140 (= tp!2274429 e!4595650)))

(declare-fun b!7752417 () Bool)

(assert (=> b!7752417 (= e!4595650 tp_is_empty!51595)))

(declare-fun b!7752419 () Bool)

(declare-fun tp!2274544 () Bool)

(assert (=> b!7752419 (= e!4595650 tp!2274544)))

(declare-fun b!7752418 () Bool)

(declare-fun tp!2274546 () Bool)

(declare-fun tp!2274545 () Bool)

(assert (=> b!7752418 (= e!4595650 (and tp!2274546 tp!2274545))))

(declare-fun b!7752420 () Bool)

(declare-fun tp!2274543 () Bool)

(declare-fun tp!2274542 () Bool)

(assert (=> b!7752420 (= e!4595650 (and tp!2274543 tp!2274542))))

(assert (= (and b!7752140 (is-ElementMatch!20620 (reg!20949 (regTwo!41752 r!25892)))) b!7752417))

(assert (= (and b!7752140 (is-Concat!29465 (reg!20949 (regTwo!41752 r!25892)))) b!7752418))

(assert (= (and b!7752140 (is-Star!20620 (reg!20949 (regTwo!41752 r!25892)))) b!7752419))

(assert (= (and b!7752140 (is-Union!20620 (reg!20949 (regTwo!41752 r!25892)))) b!7752420))

(declare-fun b!7752421 () Bool)

(declare-fun e!4595651 () Bool)

(declare-fun tp!2274547 () Bool)

(assert (=> b!7752421 (= e!4595651 (and tp_is_empty!51595 tp!2274547))))

(assert (=> b!7752128 (= tp!2274415 e!4595651)))

(assert (= (and b!7752128 (is-Cons!73341 (t!388200 (t!388200 s2!3963)))) b!7752421))

(declare-fun e!4595652 () Bool)

(assert (=> b!7752135 (= tp!2274426 e!4595652)))

(declare-fun b!7752422 () Bool)

(assert (=> b!7752422 (= e!4595652 tp_is_empty!51595)))

(declare-fun b!7752424 () Bool)

(declare-fun tp!2274550 () Bool)

(assert (=> b!7752424 (= e!4595652 tp!2274550)))

(declare-fun b!7752423 () Bool)

(declare-fun tp!2274552 () Bool)

(declare-fun tp!2274551 () Bool)

(assert (=> b!7752423 (= e!4595652 (and tp!2274552 tp!2274551))))

(declare-fun b!7752425 () Bool)

(declare-fun tp!2274549 () Bool)

(declare-fun tp!2274548 () Bool)

(assert (=> b!7752425 (= e!4595652 (and tp!2274549 tp!2274548))))

(assert (= (and b!7752135 (is-ElementMatch!20620 (regOne!41752 (regOne!41752 r!25892)))) b!7752422))

(assert (= (and b!7752135 (is-Concat!29465 (regOne!41752 (regOne!41752 r!25892)))) b!7752423))

(assert (= (and b!7752135 (is-Star!20620 (regOne!41752 (regOne!41752 r!25892)))) b!7752424))

(assert (= (and b!7752135 (is-Union!20620 (regOne!41752 (regOne!41752 r!25892)))) b!7752425))

(declare-fun e!4595653 () Bool)

(assert (=> b!7752135 (= tp!2274425 e!4595653)))

(declare-fun b!7752426 () Bool)

(assert (=> b!7752426 (= e!4595653 tp_is_empty!51595)))

(declare-fun b!7752428 () Bool)

(declare-fun tp!2274555 () Bool)

(assert (=> b!7752428 (= e!4595653 tp!2274555)))

(declare-fun b!7752427 () Bool)

(declare-fun tp!2274557 () Bool)

(declare-fun tp!2274556 () Bool)

(assert (=> b!7752427 (= e!4595653 (and tp!2274557 tp!2274556))))

(declare-fun b!7752429 () Bool)

(declare-fun tp!2274554 () Bool)

(declare-fun tp!2274553 () Bool)

(assert (=> b!7752429 (= e!4595653 (and tp!2274554 tp!2274553))))

(assert (= (and b!7752135 (is-ElementMatch!20620 (regTwo!41752 (regOne!41752 r!25892)))) b!7752426))

(assert (= (and b!7752135 (is-Concat!29465 (regTwo!41752 (regOne!41752 r!25892)))) b!7752427))

(assert (= (and b!7752135 (is-Star!20620 (regTwo!41752 (regOne!41752 r!25892)))) b!7752428))

(assert (= (and b!7752135 (is-Union!20620 (regTwo!41752 (regOne!41752 r!25892)))) b!7752429))

(declare-fun e!4595654 () Bool)

(assert (=> b!7752149 (= tp!2274438 e!4595654)))

(declare-fun b!7752430 () Bool)

(assert (=> b!7752430 (= e!4595654 tp_is_empty!51595)))

(declare-fun b!7752432 () Bool)

(declare-fun tp!2274560 () Bool)

(assert (=> b!7752432 (= e!4595654 tp!2274560)))

(declare-fun b!7752431 () Bool)

(declare-fun tp!2274562 () Bool)

(declare-fun tp!2274561 () Bool)

(assert (=> b!7752431 (= e!4595654 (and tp!2274562 tp!2274561))))

(declare-fun b!7752433 () Bool)

(declare-fun tp!2274559 () Bool)

(declare-fun tp!2274558 () Bool)

(assert (=> b!7752433 (= e!4595654 (and tp!2274559 tp!2274558))))

(assert (= (and b!7752149 (is-ElementMatch!20620 (regOne!41753 (regOne!41753 r!25892)))) b!7752430))

(assert (= (and b!7752149 (is-Concat!29465 (regOne!41753 (regOne!41753 r!25892)))) b!7752431))

(assert (= (and b!7752149 (is-Star!20620 (regOne!41753 (regOne!41753 r!25892)))) b!7752432))

(assert (= (and b!7752149 (is-Union!20620 (regOne!41753 (regOne!41753 r!25892)))) b!7752433))

(declare-fun e!4595655 () Bool)

(assert (=> b!7752149 (= tp!2274437 e!4595655)))

(declare-fun b!7752434 () Bool)

(assert (=> b!7752434 (= e!4595655 tp_is_empty!51595)))

(declare-fun b!7752436 () Bool)

(declare-fun tp!2274565 () Bool)

(assert (=> b!7752436 (= e!4595655 tp!2274565)))

(declare-fun b!7752435 () Bool)

(declare-fun tp!2274567 () Bool)

(declare-fun tp!2274566 () Bool)

(assert (=> b!7752435 (= e!4595655 (and tp!2274567 tp!2274566))))

(declare-fun b!7752437 () Bool)

(declare-fun tp!2274564 () Bool)

(declare-fun tp!2274563 () Bool)

(assert (=> b!7752437 (= e!4595655 (and tp!2274564 tp!2274563))))

(assert (= (and b!7752149 (is-ElementMatch!20620 (regTwo!41753 (regOne!41753 r!25892)))) b!7752434))

(assert (= (and b!7752149 (is-Concat!29465 (regTwo!41753 (regOne!41753 r!25892)))) b!7752435))

(assert (= (and b!7752149 (is-Star!20620 (regTwo!41753 (regOne!41753 r!25892)))) b!7752436))

(assert (= (and b!7752149 (is-Union!20620 (regTwo!41753 (regOne!41753 r!25892)))) b!7752437))

(declare-fun e!4595656 () Bool)

(assert (=> b!7752155 (= tp!2274451 e!4595656)))

(declare-fun b!7752438 () Bool)

(assert (=> b!7752438 (= e!4595656 tp_is_empty!51595)))

(declare-fun b!7752440 () Bool)

(declare-fun tp!2274570 () Bool)

(assert (=> b!7752440 (= e!4595656 tp!2274570)))

(declare-fun b!7752439 () Bool)

(declare-fun tp!2274572 () Bool)

(declare-fun tp!2274571 () Bool)

(assert (=> b!7752439 (= e!4595656 (and tp!2274572 tp!2274571))))

(declare-fun b!7752441 () Bool)

(declare-fun tp!2274569 () Bool)

(declare-fun tp!2274568 () Bool)

(assert (=> b!7752441 (= e!4595656 (and tp!2274569 tp!2274568))))

(assert (= (and b!7752155 (is-ElementMatch!20620 (regOne!41752 (regTwo!41753 r!25892)))) b!7752438))

(assert (= (and b!7752155 (is-Concat!29465 (regOne!41752 (regTwo!41753 r!25892)))) b!7752439))

(assert (= (and b!7752155 (is-Star!20620 (regOne!41752 (regTwo!41753 r!25892)))) b!7752440))

(assert (= (and b!7752155 (is-Union!20620 (regOne!41752 (regTwo!41753 r!25892)))) b!7752441))

(declare-fun e!4595657 () Bool)

(assert (=> b!7752155 (= tp!2274450 e!4595657)))

(declare-fun b!7752442 () Bool)

(assert (=> b!7752442 (= e!4595657 tp_is_empty!51595)))

(declare-fun b!7752444 () Bool)

(declare-fun tp!2274575 () Bool)

(assert (=> b!7752444 (= e!4595657 tp!2274575)))

(declare-fun b!7752443 () Bool)

(declare-fun tp!2274577 () Bool)

(declare-fun tp!2274576 () Bool)

(assert (=> b!7752443 (= e!4595657 (and tp!2274577 tp!2274576))))

(declare-fun b!7752445 () Bool)

(declare-fun tp!2274574 () Bool)

(declare-fun tp!2274573 () Bool)

(assert (=> b!7752445 (= e!4595657 (and tp!2274574 tp!2274573))))

(assert (= (and b!7752155 (is-ElementMatch!20620 (regTwo!41752 (regTwo!41753 r!25892)))) b!7752442))

(assert (= (and b!7752155 (is-Concat!29465 (regTwo!41752 (regTwo!41753 r!25892)))) b!7752443))

(assert (= (and b!7752155 (is-Star!20620 (regTwo!41752 (regTwo!41753 r!25892)))) b!7752444))

(assert (= (and b!7752155 (is-Union!20620 (regTwo!41752 (regTwo!41753 r!25892)))) b!7752445))

(declare-fun e!4595658 () Bool)

(assert (=> b!7752147 (= tp!2274441 e!4595658)))

(declare-fun b!7752446 () Bool)

(assert (=> b!7752446 (= e!4595658 tp_is_empty!51595)))

(declare-fun b!7752448 () Bool)

(declare-fun tp!2274580 () Bool)

(assert (=> b!7752448 (= e!4595658 tp!2274580)))

(declare-fun b!7752447 () Bool)

(declare-fun tp!2274582 () Bool)

(declare-fun tp!2274581 () Bool)

(assert (=> b!7752447 (= e!4595658 (and tp!2274582 tp!2274581))))

(declare-fun b!7752449 () Bool)

(declare-fun tp!2274579 () Bool)

(declare-fun tp!2274578 () Bool)

(assert (=> b!7752449 (= e!4595658 (and tp!2274579 tp!2274578))))

(assert (= (and b!7752147 (is-ElementMatch!20620 (regOne!41752 (regOne!41753 r!25892)))) b!7752446))

(assert (= (and b!7752147 (is-Concat!29465 (regOne!41752 (regOne!41753 r!25892)))) b!7752447))

(assert (= (and b!7752147 (is-Star!20620 (regOne!41752 (regOne!41753 r!25892)))) b!7752448))

(assert (= (and b!7752147 (is-Union!20620 (regOne!41752 (regOne!41753 r!25892)))) b!7752449))

(declare-fun e!4595664 () Bool)

(assert (=> b!7752147 (= tp!2274440 e!4595664)))

(declare-fun b!7752450 () Bool)

(assert (=> b!7752450 (= e!4595664 tp_is_empty!51595)))

(declare-fun b!7752452 () Bool)

(declare-fun tp!2274585 () Bool)

(assert (=> b!7752452 (= e!4595664 tp!2274585)))

(declare-fun b!7752451 () Bool)

(declare-fun tp!2274587 () Bool)

(declare-fun tp!2274586 () Bool)

(assert (=> b!7752451 (= e!4595664 (and tp!2274587 tp!2274586))))

(declare-fun b!7752453 () Bool)

(declare-fun tp!2274584 () Bool)

(declare-fun tp!2274583 () Bool)

(assert (=> b!7752453 (= e!4595664 (and tp!2274584 tp!2274583))))

(assert (= (and b!7752147 (is-ElementMatch!20620 (regTwo!41752 (regOne!41753 r!25892)))) b!7752450))

(assert (= (and b!7752147 (is-Concat!29465 (regTwo!41752 (regOne!41753 r!25892)))) b!7752451))

(assert (= (and b!7752147 (is-Star!20620 (regTwo!41752 (regOne!41753 r!25892)))) b!7752452))

(assert (= (and b!7752147 (is-Union!20620 (regTwo!41752 (regOne!41753 r!25892)))) b!7752453))

(declare-fun e!4595667 () Bool)

(assert (=> b!7752156 (= tp!2274449 e!4595667)))

(declare-fun b!7752468 () Bool)

(assert (=> b!7752468 (= e!4595667 tp_is_empty!51595)))

(declare-fun b!7752470 () Bool)

(declare-fun tp!2274590 () Bool)

(assert (=> b!7752470 (= e!4595667 tp!2274590)))

(declare-fun b!7752469 () Bool)

(declare-fun tp!2274592 () Bool)

(declare-fun tp!2274591 () Bool)

(assert (=> b!7752469 (= e!4595667 (and tp!2274592 tp!2274591))))

(declare-fun b!7752471 () Bool)

(declare-fun tp!2274589 () Bool)

(declare-fun tp!2274588 () Bool)

(assert (=> b!7752471 (= e!4595667 (and tp!2274589 tp!2274588))))

(assert (= (and b!7752156 (is-ElementMatch!20620 (reg!20949 (regTwo!41753 r!25892)))) b!7752468))

(assert (= (and b!7752156 (is-Concat!29465 (reg!20949 (regTwo!41753 r!25892)))) b!7752469))

(assert (= (and b!7752156 (is-Star!20620 (reg!20949 (regTwo!41753 r!25892)))) b!7752470))

(assert (= (and b!7752156 (is-Union!20620 (reg!20949 (regTwo!41753 r!25892)))) b!7752471))

(push 1)

(assert (not b!7752369))

(assert (not b!7752437))

(assert (not d!2342834))

(assert (not b!7752203))

(assert (not b!7752381))

(assert (not bm!718539))

(assert (not d!2342836))

(assert (not bm!718558))

(assert (not b!7752415))

(assert (not bm!718542))

(assert (not b!7752332))

(assert (not b!7752352))

(assert (not b!7752221))

(assert (not bm!718544))

(assert (not b!7752425))

(assert (not bm!718529))

(assert (not b!7752246))

(assert (not b!7752436))

(assert (not b!7752172))

(assert (not bm!718515))

(assert (not b!7752448))

(assert (not b!7752410))

(assert (not b!7752230))

(assert (not d!2342784))

(assert (not b!7752385))

(assert (not d!2342832))

(assert (not b!7752331))

(assert tp_is_empty!51595)

(assert (not b!7752399))

(assert (not b!7752329))

(assert (not b!7752358))

(assert (not b!7752264))

(assert (not b!7752377))

(assert (not bm!718548))

(assert (not b!7752451))

(assert (not b!7752262))

(assert (not b!7752441))

(assert (not b!7752269))

(assert (not b!7752449))

(assert (not bm!718533))

(assert (not b!7752453))

(assert (not bm!718550))

(assert (not b!7752386))

(assert (not bm!718530))

(assert (not b!7752295))

(assert (not b!7752364))

(assert (not b!7752290))

(assert (not d!2342812))

(assert (not b!7752469))

(assert (not bm!718556))

(assert (not d!2342776))

(assert (not b!7752291))

(assert (not b!7752423))

(assert (not b!7752470))

(assert (not b!7752471))

(assert (not b!7752360))

(assert (not b!7752366))

(assert (not d!2342798))

(assert (not b!7752265))

(assert (not b!7752440))

(assert (not b!7752298))

(assert (not bm!718521))

(assert (not d!2342822))

(assert (not b!7752370))

(assert (not bm!718559))

(assert (not b!7752368))

(assert (not b!7752400))

(assert (not b!7752444))

(assert (not b!7752445))

(assert (not b!7752373))

(assert (not b!7752382))

(assert (not b!7752378))

(assert (not b!7752411))

(assert (not bm!718535))

(assert (not bm!718527))

(assert (not bm!718554))

(assert (not b!7752257))

(assert (not b!7752427))

(assert (not b!7752365))

(assert (not b!7752353))

(assert (not b!7752303))

(assert (not b!7752182))

(assert (not b!7752404))

(assert (not b!7752302))

(assert (not b!7752443))

(assert (not b!7752357))

(assert (not bm!718561))

(assert (not b!7752447))

(assert (not b!7752313))

(assert (not b!7752432))

(assert (not b!7752374))

(assert (not d!2342826))

(assert (not b!7752387))

(assert (not b!7752270))

(assert (not b!7752435))

(assert (not bm!718519))

(assert (not b!7752258))

(assert (not b!7752412))

(assert (not d!2342766))

(assert (not b!7752416))

(assert (not bm!718546))

(assert (not bm!718517))

(assert (not b!7752239))

(assert (not d!2342790))

(assert (not b!7752439))

(assert (not b!7752403))

(assert (not b!7752324))

(assert (not b!7752420))

(assert (not b!7752429))

(assert (not b!7752282))

(assert (not bm!718541))

(assert (not b!7752406))

(assert (not b!7752408))

(assert (not b!7752350))

(assert (not b!7752383))

(assert (not bm!718536))

(assert (not b!7752354))

(assert (not b!7752419))

(assert (not d!2342828))

(assert (not b!7752431))

(assert (not b!7752424))

(assert (not bm!718552))

(assert (not b!7752297))

(assert (not bm!718547))

(assert (not b!7752418))

(assert (not bm!718523))

(assert (not bm!718526))

(assert (not b!7752407))

(assert (not b!7752452))

(assert (not b!7752428))

(assert (not b!7752402))

(assert (not d!2342794))

(assert (not d!2342820))

(assert (not b!7752421))

(assert (not bm!718532))

(assert (not d!2342796))

(assert (not b!7752362))

(assert (not b!7752414))

(assert (not bm!718563))

(assert (not b!7752212))

(assert (not b!7752349))

(assert (not b!7752325))

(assert (not b!7752337))

(assert (not bm!718524))

(assert (not b!7752398))

(assert (not b!7752379))

(assert (not b!7752361))

(assert (not d!2342814))

(assert (not b!7752375))

(assert (not bm!718520))

(assert (not bm!718513))

(assert (not b!7752433))

(assert (not b!7752356))

(assert (not b!7752348))

(assert (not b!7752336))

(assert (not b!7752194))

(assert (not d!2342768))

(assert (not b!7752372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

