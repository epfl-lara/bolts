; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667432 () Bool)

(assert start!667432)

(declare-fun b!6954898 () Bool)

(assert (=> b!6954898 true))

(assert (=> b!6954898 true))

(declare-fun bs!1857940 () Bool)

(declare-fun b!6954900 () Bool)

(assert (= bs!1857940 (and b!6954900 b!6954898)))

(declare-fun lambda!396722 () Int)

(declare-fun lambda!396721 () Int)

(assert (=> bs!1857940 (not (= lambda!396722 lambda!396721))))

(assert (=> b!6954900 true))

(assert (=> b!6954900 true))

(declare-fun res!2837740 () Bool)

(declare-fun e!4182299 () Bool)

(assert (=> b!6954898 (=> (not res!2837740) (not e!4182299))))

(declare-fun Exists!4046 (Int) Bool)

(assert (=> b!6954898 (= res!2837740 (not (Exists!4046 lambda!396721)))))

(declare-fun b!6954899 () Bool)

(declare-fun e!4182297 () Bool)

(declare-fun tp_is_empty!43325 () Bool)

(assert (=> b!6954899 (= e!4182297 tp_is_empty!43325)))

(declare-fun res!2837737 () Bool)

(assert (=> b!6954900 (=> (not res!2837737) (not e!4182299))))

(assert (=> b!6954900 (= res!2837737 (Exists!4046 lambda!396722))))

(declare-fun b!6954901 () Bool)

(declare-fun tp!1917348 () Bool)

(declare-fun tp!1917351 () Bool)

(assert (=> b!6954901 (= e!4182297 (and tp!1917348 tp!1917351))))

(declare-fun b!6954902 () Bool)

(declare-fun res!2837738 () Bool)

(assert (=> b!6954902 (=> (not res!2837738) (not e!4182299))))

(assert (=> b!6954902 (= res!2837738 (not (Exists!4046 lambda!396721)))))

(declare-fun res!2837739 () Bool)

(assert (=> start!667432 (=> (not res!2837739) (not e!4182299))))

(declare-datatypes ((C!34370 0))(
  ( (C!34371 (val!26887 Int)) )
))
(declare-datatypes ((Regex!17050 0))(
  ( (ElementMatch!17050 (c!1289790 C!34370)) (Concat!25895 (regOne!34612 Regex!17050) (regTwo!34612 Regex!17050)) (EmptyExpr!17050) (Star!17050 (reg!17379 Regex!17050)) (EmptyLang!17050) (Union!17050 (regOne!34613 Regex!17050) (regTwo!34613 Regex!17050)) )
))
(declare-fun rInner!765 () Regex!17050)

(declare-fun validRegex!8756 (Regex!17050) Bool)

(assert (=> start!667432 (= res!2837739 (validRegex!8756 rInner!765))))

(assert (=> start!667432 e!4182299))

(assert (=> start!667432 e!4182297))

(declare-fun e!4182298 () Bool)

(assert (=> start!667432 e!4182298))

(declare-fun b!6954903 () Bool)

(declare-fun res!2837741 () Bool)

(assert (=> b!6954903 (=> (not res!2837741) (not e!4182299))))

(declare-fun nullable!6863 (Regex!17050) Bool)

(assert (=> b!6954903 (= res!2837741 (not (nullable!6863 rInner!765)))))

(declare-fun b!6954904 () Bool)

(declare-fun tp!1917349 () Bool)

(declare-fun tp!1917346 () Bool)

(assert (=> b!6954904 (= e!4182297 (and tp!1917349 tp!1917346))))

(declare-fun b!6954905 () Bool)

(declare-datatypes ((List!66803 0))(
  ( (Nil!66679) (Cons!66679 (h!73127 C!34370) (t!380546 List!66803)) )
))
(declare-datatypes ((tuple2!67802 0))(
  ( (tuple2!67803 (_1!37204 List!66803) (_2!37204 List!66803)) )
))
(declare-fun lt!2478343 () tuple2!67802)

(declare-fun s!10388 () List!66803)

(declare-fun ++!15079 (List!66803 List!66803) List!66803)

(assert (=> b!6954905 (= e!4182299 (not (= (++!15079 (_1!37204 lt!2478343) (_2!37204 lt!2478343)) s!10388)))))

(declare-fun lt!2478340 () Regex!17050)

(declare-fun matchR!9160 (Regex!17050 List!66803) Bool)

(declare-fun matchRSpec!4075 (Regex!17050 List!66803) Bool)

(assert (=> b!6954905 (= (matchR!9160 lt!2478340 (_2!37204 lt!2478343)) (matchRSpec!4075 lt!2478340 (_2!37204 lt!2478343)))))

(declare-datatypes ((Unit!160768 0))(
  ( (Unit!160769) )
))
(declare-fun lt!2478341 () Unit!160768)

(declare-fun mainMatchTheorem!4069 (Regex!17050 List!66803) Unit!160768)

(assert (=> b!6954905 (= lt!2478341 (mainMatchTheorem!4069 lt!2478340 (_2!37204 lt!2478343)))))

(assert (=> b!6954905 (= lt!2478340 (Star!17050 rInner!765))))

(assert (=> b!6954905 (= (matchR!9160 rInner!765 (_1!37204 lt!2478343)) (matchRSpec!4075 rInner!765 (_1!37204 lt!2478343)))))

(declare-fun lt!2478342 () Unit!160768)

(assert (=> b!6954905 (= lt!2478342 (mainMatchTheorem!4069 rInner!765 (_1!37204 lt!2478343)))))

(declare-fun pickWitness!373 (Int) tuple2!67802)

(assert (=> b!6954905 (= lt!2478343 (pickWitness!373 lambda!396722))))

(declare-fun b!6954906 () Bool)

(declare-fun tp!1917347 () Bool)

(assert (=> b!6954906 (= e!4182297 tp!1917347)))

(declare-fun b!6954907 () Bool)

(declare-fun tp!1917350 () Bool)

(assert (=> b!6954907 (= e!4182298 (and tp_is_empty!43325 tp!1917350))))

(assert (= (and start!667432 res!2837739) b!6954903))

(assert (= (and b!6954903 res!2837741) b!6954898))

(assert (= (and b!6954898 res!2837740) b!6954902))

(assert (= (and b!6954902 res!2837738) b!6954900))

(assert (= (and b!6954900 res!2837737) b!6954905))

(assert (= (and start!667432 (is-ElementMatch!17050 rInner!765)) b!6954899))

(assert (= (and start!667432 (is-Concat!25895 rInner!765)) b!6954904))

(assert (= (and start!667432 (is-Star!17050 rInner!765)) b!6954906))

(assert (= (and start!667432 (is-Union!17050 rInner!765)) b!6954901))

(assert (= (and start!667432 (is-Cons!66679 s!10388)) b!6954907))

(declare-fun m!7653816 () Bool)

(assert (=> b!6954902 m!7653816))

(assert (=> b!6954898 m!7653816))

(declare-fun m!7653818 () Bool)

(assert (=> b!6954900 m!7653818))

(declare-fun m!7653820 () Bool)

(assert (=> start!667432 m!7653820))

(declare-fun m!7653822 () Bool)

(assert (=> b!6954903 m!7653822))

(declare-fun m!7653824 () Bool)

(assert (=> b!6954905 m!7653824))

(declare-fun m!7653826 () Bool)

(assert (=> b!6954905 m!7653826))

(declare-fun m!7653828 () Bool)

(assert (=> b!6954905 m!7653828))

(declare-fun m!7653830 () Bool)

(assert (=> b!6954905 m!7653830))

(declare-fun m!7653832 () Bool)

(assert (=> b!6954905 m!7653832))

(declare-fun m!7653834 () Bool)

(assert (=> b!6954905 m!7653834))

(declare-fun m!7653836 () Bool)

(assert (=> b!6954905 m!7653836))

(declare-fun m!7653838 () Bool)

(assert (=> b!6954905 m!7653838))

(push 1)

(assert (not start!667432))

(assert (not b!6954898))

(assert tp_is_empty!43325)

(assert (not b!6954904))

(assert (not b!6954900))

(assert (not b!6954905))

(assert (not b!6954906))

(assert (not b!6954907))

(assert (not b!6954903))

(assert (not b!6954901))

(assert (not b!6954902))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6954984 () Bool)

(declare-fun res!2837790 () Bool)

(declare-fun e!4182335 () Bool)

(assert (=> b!6954984 (=> (not res!2837790) (not e!4182335))))

(declare-fun call!631606 () Bool)

(assert (=> b!6954984 (= res!2837790 call!631606)))

(declare-fun e!4182332 () Bool)

(assert (=> b!6954984 (= e!4182332 e!4182335)))

(declare-fun bm!631599 () Bool)

(declare-fun c!1289796 () Bool)

(assert (=> bm!631599 (= call!631606 (validRegex!8756 (ite c!1289796 (regOne!34613 rInner!765) (regTwo!34612 rInner!765))))))

(declare-fun bm!631600 () Bool)

(declare-fun c!1289797 () Bool)

(declare-fun call!631605 () Bool)

(assert (=> bm!631600 (= call!631605 (validRegex!8756 (ite c!1289797 (reg!17379 rInner!765) (ite c!1289796 (regTwo!34613 rInner!765) (regOne!34612 rInner!765)))))))

(declare-fun b!6954985 () Bool)

(declare-fun e!4182337 () Bool)

(assert (=> b!6954985 (= e!4182337 e!4182332)))

(assert (=> b!6954985 (= c!1289796 (is-Union!17050 rInner!765))))

(declare-fun b!6954986 () Bool)

(declare-fun call!631604 () Bool)

(assert (=> b!6954986 (= e!4182335 call!631604)))

(declare-fun bm!631601 () Bool)

(assert (=> bm!631601 (= call!631604 call!631605)))

(declare-fun b!6954987 () Bool)

(declare-fun e!4182334 () Bool)

(assert (=> b!6954987 (= e!4182334 call!631605)))

(declare-fun b!6954988 () Bool)

(assert (=> b!6954988 (= e!4182337 e!4182334)))

(declare-fun res!2837787 () Bool)

(assert (=> b!6954988 (= res!2837787 (not (nullable!6863 (reg!17379 rInner!765))))))

(assert (=> b!6954988 (=> (not res!2837787) (not e!4182334))))

(declare-fun b!6954989 () Bool)

(declare-fun e!4182331 () Bool)

(assert (=> b!6954989 (= e!4182331 e!4182337)))

(assert (=> b!6954989 (= c!1289797 (is-Star!17050 rInner!765))))

(declare-fun b!6954990 () Bool)

(declare-fun e!4182333 () Bool)

(declare-fun e!4182336 () Bool)

(assert (=> b!6954990 (= e!4182333 e!4182336)))

(declare-fun res!2837791 () Bool)

(assert (=> b!6954990 (=> (not res!2837791) (not e!4182336))))

(assert (=> b!6954990 (= res!2837791 call!631604)))

(declare-fun d!2169437 () Bool)

(declare-fun res!2837788 () Bool)

(assert (=> d!2169437 (=> res!2837788 e!4182331)))

(assert (=> d!2169437 (= res!2837788 (is-ElementMatch!17050 rInner!765))))

(assert (=> d!2169437 (= (validRegex!8756 rInner!765) e!4182331)))

(declare-fun b!6954991 () Bool)

(assert (=> b!6954991 (= e!4182336 call!631606)))

(declare-fun b!6954992 () Bool)

(declare-fun res!2837789 () Bool)

(assert (=> b!6954992 (=> res!2837789 e!4182333)))

(assert (=> b!6954992 (= res!2837789 (not (is-Concat!25895 rInner!765)))))

(assert (=> b!6954992 (= e!4182332 e!4182333)))

(assert (= (and d!2169437 (not res!2837788)) b!6954989))

(assert (= (and b!6954989 c!1289797) b!6954988))

(assert (= (and b!6954989 (not c!1289797)) b!6954985))

(assert (= (and b!6954988 res!2837787) b!6954987))

(assert (= (and b!6954985 c!1289796) b!6954984))

(assert (= (and b!6954985 (not c!1289796)) b!6954992))

(assert (= (and b!6954984 res!2837790) b!6954986))

(assert (= (and b!6954992 (not res!2837789)) b!6954990))

(assert (= (and b!6954990 res!2837791) b!6954991))

(assert (= (or b!6954984 b!6954991) bm!631599))

(assert (= (or b!6954986 b!6954990) bm!631601))

(assert (= (or b!6954987 bm!631601) bm!631600))

(declare-fun m!7653864 () Bool)

(assert (=> bm!631599 m!7653864))

(declare-fun m!7653866 () Bool)

(assert (=> bm!631600 m!7653866))

(declare-fun m!7653868 () Bool)

(assert (=> b!6954988 m!7653868))

(assert (=> start!667432 d!2169437))

(declare-fun d!2169439 () Bool)

(declare-fun choose!51829 (Int) Bool)

(assert (=> d!2169439 (= (Exists!4046 lambda!396721) (choose!51829 lambda!396721))))

(declare-fun bs!1857942 () Bool)

(assert (= bs!1857942 d!2169439))

(declare-fun m!7653870 () Bool)

(assert (=> bs!1857942 m!7653870))

(assert (=> b!6954902 d!2169439))

(declare-fun d!2169441 () Bool)

(declare-fun nullableFct!2573 (Regex!17050) Bool)

(assert (=> d!2169441 (= (nullable!6863 rInner!765) (nullableFct!2573 rInner!765))))

(declare-fun bs!1857943 () Bool)

(assert (= bs!1857943 d!2169441))

(declare-fun m!7653872 () Bool)

(assert (=> bs!1857943 m!7653872))

(assert (=> b!6954903 d!2169441))

(assert (=> b!6954898 d!2169439))

(declare-fun b!6955021 () Bool)

(declare-fun e!4182356 () Bool)

(declare-fun e!4182352 () Bool)

(assert (=> b!6955021 (= e!4182356 e!4182352)))

(declare-fun res!2837808 () Bool)

(assert (=> b!6955021 (=> (not res!2837808) (not e!4182352))))

(declare-fun lt!2478361 () Bool)

(assert (=> b!6955021 (= res!2837808 (not lt!2478361))))

(declare-fun b!6955022 () Bool)

(declare-fun e!4182357 () Bool)

(declare-fun head!13944 (List!66803) C!34370)

(assert (=> b!6955022 (= e!4182357 (= (head!13944 (_1!37204 lt!2478343)) (c!1289790 rInner!765)))))

(declare-fun b!6955023 () Bool)

(declare-fun e!4182353 () Bool)

(declare-fun call!631609 () Bool)

(assert (=> b!6955023 (= e!4182353 (= lt!2478361 call!631609))))

(declare-fun d!2169445 () Bool)

(assert (=> d!2169445 e!4182353))

(declare-fun c!1289806 () Bool)

(assert (=> d!2169445 (= c!1289806 (is-EmptyExpr!17050 rInner!765))))

(declare-fun e!4182358 () Bool)

(assert (=> d!2169445 (= lt!2478361 e!4182358)))

(declare-fun c!1289805 () Bool)

(declare-fun isEmpty!38915 (List!66803) Bool)

(assert (=> d!2169445 (= c!1289805 (isEmpty!38915 (_1!37204 lt!2478343)))))

(assert (=> d!2169445 (validRegex!8756 rInner!765)))

(assert (=> d!2169445 (= (matchR!9160 rInner!765 (_1!37204 lt!2478343)) lt!2478361)))

(declare-fun b!6955024 () Bool)

(declare-fun res!2837810 () Bool)

(assert (=> b!6955024 (=> res!2837810 e!4182356)))

(assert (=> b!6955024 (= res!2837810 (not (is-ElementMatch!17050 rInner!765)))))

(declare-fun e!4182354 () Bool)

(assert (=> b!6955024 (= e!4182354 e!4182356)))

(declare-fun b!6955025 () Bool)

(declare-fun res!2837811 () Bool)

(assert (=> b!6955025 (=> res!2837811 e!4182356)))

(assert (=> b!6955025 (= res!2837811 e!4182357)))

(declare-fun res!2837809 () Bool)

(assert (=> b!6955025 (=> (not res!2837809) (not e!4182357))))

(assert (=> b!6955025 (= res!2837809 lt!2478361)))

(declare-fun b!6955026 () Bool)

(declare-fun e!4182355 () Bool)

(assert (=> b!6955026 (= e!4182355 (not (= (head!13944 (_1!37204 lt!2478343)) (c!1289790 rInner!765))))))

(declare-fun b!6955027 () Bool)

(assert (=> b!6955027 (= e!4182352 e!4182355)))

(declare-fun res!2837815 () Bool)

(assert (=> b!6955027 (=> res!2837815 e!4182355)))

(assert (=> b!6955027 (= res!2837815 call!631609)))

(declare-fun bm!631604 () Bool)

(assert (=> bm!631604 (= call!631609 (isEmpty!38915 (_1!37204 lt!2478343)))))

(declare-fun b!6955028 () Bool)

(assert (=> b!6955028 (= e!4182354 (not lt!2478361))))

(declare-fun b!6955029 () Bool)

(declare-fun res!2837812 () Bool)

(assert (=> b!6955029 (=> res!2837812 e!4182355)))

(declare-fun tail!12996 (List!66803) List!66803)

(assert (=> b!6955029 (= res!2837812 (not (isEmpty!38915 (tail!12996 (_1!37204 lt!2478343)))))))

(declare-fun b!6955030 () Bool)

(declare-fun derivativeStep!5491 (Regex!17050 C!34370) Regex!17050)

(assert (=> b!6955030 (= e!4182358 (matchR!9160 (derivativeStep!5491 rInner!765 (head!13944 (_1!37204 lt!2478343))) (tail!12996 (_1!37204 lt!2478343))))))

(declare-fun b!6955031 () Bool)

(declare-fun res!2837814 () Bool)

(assert (=> b!6955031 (=> (not res!2837814) (not e!4182357))))

(assert (=> b!6955031 (= res!2837814 (isEmpty!38915 (tail!12996 (_1!37204 lt!2478343))))))

(declare-fun b!6955032 () Bool)

(assert (=> b!6955032 (= e!4182353 e!4182354)))

(declare-fun c!1289804 () Bool)

(assert (=> b!6955032 (= c!1289804 (is-EmptyLang!17050 rInner!765))))

(declare-fun b!6955033 () Bool)

(declare-fun res!2837813 () Bool)

(assert (=> b!6955033 (=> (not res!2837813) (not e!4182357))))

(assert (=> b!6955033 (= res!2837813 (not call!631609))))

(declare-fun b!6955034 () Bool)

(assert (=> b!6955034 (= e!4182358 (nullable!6863 rInner!765))))

(assert (= (and d!2169445 c!1289805) b!6955034))

(assert (= (and d!2169445 (not c!1289805)) b!6955030))

(assert (= (and d!2169445 c!1289806) b!6955023))

(assert (= (and d!2169445 (not c!1289806)) b!6955032))

(assert (= (and b!6955032 c!1289804) b!6955028))

(assert (= (and b!6955032 (not c!1289804)) b!6955024))

(assert (= (and b!6955024 (not res!2837810)) b!6955025))

(assert (= (and b!6955025 res!2837809) b!6955033))

(assert (= (and b!6955033 res!2837813) b!6955031))

(assert (= (and b!6955031 res!2837814) b!6955022))

(assert (= (and b!6955025 (not res!2837811)) b!6955021))

(assert (= (and b!6955021 res!2837808) b!6955027))

(assert (= (and b!6955027 (not res!2837815)) b!6955029))

(assert (= (and b!6955029 (not res!2837812)) b!6955026))

(assert (= (or b!6955023 b!6955033 b!6955027) bm!631604))

(assert (=> b!6955034 m!7653822))

(declare-fun m!7653882 () Bool)

(assert (=> b!6955030 m!7653882))

(assert (=> b!6955030 m!7653882))

(declare-fun m!7653884 () Bool)

(assert (=> b!6955030 m!7653884))

(declare-fun m!7653886 () Bool)

(assert (=> b!6955030 m!7653886))

(assert (=> b!6955030 m!7653884))

(assert (=> b!6955030 m!7653886))

(declare-fun m!7653888 () Bool)

(assert (=> b!6955030 m!7653888))

(assert (=> b!6955029 m!7653886))

(assert (=> b!6955029 m!7653886))

(declare-fun m!7653890 () Bool)

(assert (=> b!6955029 m!7653890))

(declare-fun m!7653892 () Bool)

(assert (=> bm!631604 m!7653892))

(assert (=> b!6955026 m!7653882))

(assert (=> b!6955022 m!7653882))

(assert (=> b!6955031 m!7653886))

(assert (=> b!6955031 m!7653886))

(assert (=> b!6955031 m!7653890))

(assert (=> d!2169445 m!7653892))

(assert (=> d!2169445 m!7653820))

(assert (=> b!6954905 d!2169445))

(declare-fun b!6955053 () Bool)

(declare-fun res!2837824 () Bool)

(declare-fun e!4182367 () Bool)

(assert (=> b!6955053 (=> (not res!2837824) (not e!4182367))))

(declare-fun lt!2478366 () List!66803)

(declare-fun size!40842 (List!66803) Int)

(assert (=> b!6955053 (= res!2837824 (= (size!40842 lt!2478366) (+ (size!40842 (_1!37204 lt!2478343)) (size!40842 (_2!37204 lt!2478343)))))))

(declare-fun b!6955051 () Bool)

(declare-fun e!4182368 () List!66803)

(assert (=> b!6955051 (= e!4182368 (_2!37204 lt!2478343))))

(declare-fun b!6955054 () Bool)

(assert (=> b!6955054 (= e!4182367 (or (not (= (_2!37204 lt!2478343) Nil!66679)) (= lt!2478366 (_1!37204 lt!2478343))))))

(declare-fun d!2169453 () Bool)

(assert (=> d!2169453 e!4182367))

(declare-fun res!2837825 () Bool)

(assert (=> d!2169453 (=> (not res!2837825) (not e!4182367))))

(declare-fun content!13145 (List!66803) (Set C!34370))

(assert (=> d!2169453 (= res!2837825 (= (content!13145 lt!2478366) (set.union (content!13145 (_1!37204 lt!2478343)) (content!13145 (_2!37204 lt!2478343)))))))

(assert (=> d!2169453 (= lt!2478366 e!4182368)))

(declare-fun c!1289811 () Bool)

(assert (=> d!2169453 (= c!1289811 (is-Nil!66679 (_1!37204 lt!2478343)))))

(assert (=> d!2169453 (= (++!15079 (_1!37204 lt!2478343) (_2!37204 lt!2478343)) lt!2478366)))

(declare-fun b!6955052 () Bool)

(assert (=> b!6955052 (= e!4182368 (Cons!66679 (h!73127 (_1!37204 lt!2478343)) (++!15079 (t!380546 (_1!37204 lt!2478343)) (_2!37204 lt!2478343))))))

(assert (= (and d!2169453 c!1289811) b!6955051))

(assert (= (and d!2169453 (not c!1289811)) b!6955052))

(assert (= (and d!2169453 res!2837825) b!6955053))

(assert (= (and b!6955053 res!2837824) b!6955054))

(declare-fun m!7653894 () Bool)

(assert (=> b!6955053 m!7653894))

(declare-fun m!7653896 () Bool)

(assert (=> b!6955053 m!7653896))

(declare-fun m!7653898 () Bool)

(assert (=> b!6955053 m!7653898))

(declare-fun m!7653900 () Bool)

(assert (=> d!2169453 m!7653900))

(declare-fun m!7653902 () Bool)

(assert (=> d!2169453 m!7653902))

(declare-fun m!7653904 () Bool)

(assert (=> d!2169453 m!7653904))

(declare-fun m!7653906 () Bool)

(assert (=> b!6955052 m!7653906))

(assert (=> b!6954905 d!2169453))

(declare-fun d!2169455 () Bool)

(declare-fun lt!2478369 () tuple2!67802)

(declare-fun dynLambda!26590 (Int tuple2!67802) Bool)

(assert (=> d!2169455 (dynLambda!26590 lambda!396722 lt!2478369)))

(declare-fun choose!51830 (Int) tuple2!67802)

(assert (=> d!2169455 (= lt!2478369 (choose!51830 lambda!396722))))

(assert (=> d!2169455 (Exists!4046 lambda!396722)))

(assert (=> d!2169455 (= (pickWitness!373 lambda!396722) lt!2478369)))

(declare-fun b_lambda!260443 () Bool)

(assert (=> (not b_lambda!260443) (not d!2169455)))

(declare-fun bs!1857947 () Bool)

(assert (= bs!1857947 d!2169455))

(declare-fun m!7653908 () Bool)

(assert (=> bs!1857947 m!7653908))

(declare-fun m!7653910 () Bool)

(assert (=> bs!1857947 m!7653910))

(assert (=> bs!1857947 m!7653818))

(assert (=> b!6954905 d!2169455))

(declare-fun b!6955059 () Bool)

(declare-fun e!4182375 () Bool)

(declare-fun e!4182371 () Bool)

(assert (=> b!6955059 (= e!4182375 e!4182371)))

(declare-fun res!2837828 () Bool)

(assert (=> b!6955059 (=> (not res!2837828) (not e!4182371))))

(declare-fun lt!2478371 () Bool)

(assert (=> b!6955059 (= res!2837828 (not lt!2478371))))

(declare-fun b!6955060 () Bool)

(declare-fun e!4182376 () Bool)

(assert (=> b!6955060 (= e!4182376 (= (head!13944 (_2!37204 lt!2478343)) (c!1289790 lt!2478340)))))

(declare-fun b!6955061 () Bool)

(declare-fun e!4182372 () Bool)

(declare-fun call!631610 () Bool)

(assert (=> b!6955061 (= e!4182372 (= lt!2478371 call!631610))))

(declare-fun d!2169457 () Bool)

(assert (=> d!2169457 e!4182372))

(declare-fun c!1289815 () Bool)

(assert (=> d!2169457 (= c!1289815 (is-EmptyExpr!17050 lt!2478340))))

(declare-fun e!4182377 () Bool)

(assert (=> d!2169457 (= lt!2478371 e!4182377)))

(declare-fun c!1289814 () Bool)

(assert (=> d!2169457 (= c!1289814 (isEmpty!38915 (_2!37204 lt!2478343)))))

(assert (=> d!2169457 (validRegex!8756 lt!2478340)))

(assert (=> d!2169457 (= (matchR!9160 lt!2478340 (_2!37204 lt!2478343)) lt!2478371)))

(declare-fun b!6955062 () Bool)

(declare-fun res!2837830 () Bool)

(assert (=> b!6955062 (=> res!2837830 e!4182375)))

(assert (=> b!6955062 (= res!2837830 (not (is-ElementMatch!17050 lt!2478340)))))

(declare-fun e!4182373 () Bool)

(assert (=> b!6955062 (= e!4182373 e!4182375)))

(declare-fun b!6955063 () Bool)

(declare-fun res!2837831 () Bool)

(assert (=> b!6955063 (=> res!2837831 e!4182375)))

(assert (=> b!6955063 (= res!2837831 e!4182376)))

(declare-fun res!2837829 () Bool)

(assert (=> b!6955063 (=> (not res!2837829) (not e!4182376))))

(assert (=> b!6955063 (= res!2837829 lt!2478371)))

(declare-fun b!6955064 () Bool)

(declare-fun e!4182374 () Bool)

(assert (=> b!6955064 (= e!4182374 (not (= (head!13944 (_2!37204 lt!2478343)) (c!1289790 lt!2478340))))))

(declare-fun b!6955065 () Bool)

(assert (=> b!6955065 (= e!4182371 e!4182374)))

(declare-fun res!2837835 () Bool)

(assert (=> b!6955065 (=> res!2837835 e!4182374)))

(assert (=> b!6955065 (= res!2837835 call!631610)))

(declare-fun bm!631605 () Bool)

(assert (=> bm!631605 (= call!631610 (isEmpty!38915 (_2!37204 lt!2478343)))))

(declare-fun b!6955066 () Bool)

(assert (=> b!6955066 (= e!4182373 (not lt!2478371))))

(declare-fun b!6955067 () Bool)

(declare-fun res!2837832 () Bool)

(assert (=> b!6955067 (=> res!2837832 e!4182374)))

(assert (=> b!6955067 (= res!2837832 (not (isEmpty!38915 (tail!12996 (_2!37204 lt!2478343)))))))

(declare-fun b!6955068 () Bool)

(assert (=> b!6955068 (= e!4182377 (matchR!9160 (derivativeStep!5491 lt!2478340 (head!13944 (_2!37204 lt!2478343))) (tail!12996 (_2!37204 lt!2478343))))))

(declare-fun b!6955069 () Bool)

(declare-fun res!2837834 () Bool)

(assert (=> b!6955069 (=> (not res!2837834) (not e!4182376))))

(assert (=> b!6955069 (= res!2837834 (isEmpty!38915 (tail!12996 (_2!37204 lt!2478343))))))

(declare-fun b!6955070 () Bool)

(assert (=> b!6955070 (= e!4182372 e!4182373)))

(declare-fun c!1289813 () Bool)

(assert (=> b!6955070 (= c!1289813 (is-EmptyLang!17050 lt!2478340))))

(declare-fun b!6955071 () Bool)

(declare-fun res!2837833 () Bool)

(assert (=> b!6955071 (=> (not res!2837833) (not e!4182376))))

(assert (=> b!6955071 (= res!2837833 (not call!631610))))

(declare-fun b!6955072 () Bool)

(assert (=> b!6955072 (= e!4182377 (nullable!6863 lt!2478340))))

(assert (= (and d!2169457 c!1289814) b!6955072))

(assert (= (and d!2169457 (not c!1289814)) b!6955068))

(assert (= (and d!2169457 c!1289815) b!6955061))

(assert (= (and d!2169457 (not c!1289815)) b!6955070))

(assert (= (and b!6955070 c!1289813) b!6955066))

(assert (= (and b!6955070 (not c!1289813)) b!6955062))

(assert (= (and b!6955062 (not res!2837830)) b!6955063))

(assert (= (and b!6955063 res!2837829) b!6955071))

(assert (= (and b!6955071 res!2837833) b!6955069))

(assert (= (and b!6955069 res!2837834) b!6955060))

(assert (= (and b!6955063 (not res!2837831)) b!6955059))

(assert (= (and b!6955059 res!2837828) b!6955065))

(assert (= (and b!6955065 (not res!2837835)) b!6955067))

(assert (= (and b!6955067 (not res!2837832)) b!6955064))

(assert (= (or b!6955061 b!6955071 b!6955065) bm!631605))

(declare-fun m!7653926 () Bool)

(assert (=> b!6955072 m!7653926))

(declare-fun m!7653928 () Bool)

(assert (=> b!6955068 m!7653928))

(assert (=> b!6955068 m!7653928))

(declare-fun m!7653930 () Bool)

(assert (=> b!6955068 m!7653930))

(declare-fun m!7653932 () Bool)

(assert (=> b!6955068 m!7653932))

(assert (=> b!6955068 m!7653930))

(assert (=> b!6955068 m!7653932))

(declare-fun m!7653934 () Bool)

(assert (=> b!6955068 m!7653934))

(assert (=> b!6955067 m!7653932))

(assert (=> b!6955067 m!7653932))

(declare-fun m!7653936 () Bool)

(assert (=> b!6955067 m!7653936))

(declare-fun m!7653938 () Bool)

(assert (=> bm!631605 m!7653938))

(assert (=> b!6955064 m!7653928))

(assert (=> b!6955060 m!7653928))

(assert (=> b!6955069 m!7653932))

(assert (=> b!6955069 m!7653932))

(assert (=> b!6955069 m!7653936))

(assert (=> d!2169457 m!7653938))

(declare-fun m!7653940 () Bool)

(assert (=> d!2169457 m!7653940))

(assert (=> b!6954905 d!2169457))

(declare-fun bs!1857948 () Bool)

(declare-fun b!6955135 () Bool)

(assert (= bs!1857948 (and b!6955135 b!6954898)))

(declare-fun lambda!396737 () Int)

(assert (=> bs!1857948 (not (= lambda!396737 lambda!396721))))

(declare-fun bs!1857949 () Bool)

(assert (= bs!1857949 (and b!6955135 b!6954900)))

(assert (=> bs!1857949 (= (and (= (_1!37204 lt!2478343) s!10388) (= (reg!17379 rInner!765) rInner!765) (= rInner!765 (Star!17050 rInner!765))) (= lambda!396737 lambda!396722))))

(assert (=> b!6955135 true))

(assert (=> b!6955135 true))

(declare-fun bs!1857950 () Bool)

(declare-fun b!6955137 () Bool)

(assert (= bs!1857950 (and b!6955137 b!6954898)))

(declare-fun lambda!396738 () Int)

(assert (=> bs!1857950 (not (= lambda!396738 lambda!396721))))

(declare-fun bs!1857951 () Bool)

(assert (= bs!1857951 (and b!6955137 b!6954900)))

(assert (=> bs!1857951 (not (= lambda!396738 lambda!396722))))

(declare-fun bs!1857952 () Bool)

(assert (= bs!1857952 (and b!6955137 b!6955135)))

(assert (=> bs!1857952 (not (= lambda!396738 lambda!396737))))

(assert (=> b!6955137 true))

(assert (=> b!6955137 true))

(declare-fun bm!631610 () Bool)

(declare-fun call!631615 () Bool)

(assert (=> bm!631610 (= call!631615 (isEmpty!38915 (_1!37204 lt!2478343)))))

(declare-fun c!1289830 () Bool)

(declare-fun bm!631611 () Bool)

(declare-fun call!631616 () Bool)

(assert (=> bm!631611 (= call!631616 (Exists!4046 (ite c!1289830 lambda!396737 lambda!396738)))))

(declare-fun b!6955133 () Bool)

(declare-fun e!4182413 () Bool)

(declare-fun e!4182412 () Bool)

(assert (=> b!6955133 (= e!4182413 e!4182412)))

(assert (=> b!6955133 (= c!1289830 (is-Star!17050 rInner!765))))

(declare-fun b!6955134 () Bool)

(declare-fun e!4182411 () Bool)

(assert (=> b!6955134 (= e!4182411 (= (_1!37204 lt!2478343) (Cons!66679 (c!1289790 rInner!765) Nil!66679)))))

(declare-fun d!2169461 () Bool)

(declare-fun c!1289833 () Bool)

(assert (=> d!2169461 (= c!1289833 (is-EmptyExpr!17050 rInner!765))))

(declare-fun e!4182415 () Bool)

(assert (=> d!2169461 (= (matchRSpec!4075 rInner!765 (_1!37204 lt!2478343)) e!4182415)))

(declare-fun e!4182410 () Bool)

(assert (=> b!6955135 (= e!4182410 call!631616)))

(declare-fun b!6955136 () Bool)

(declare-fun c!1289832 () Bool)

(assert (=> b!6955136 (= c!1289832 (is-Union!17050 rInner!765))))

(assert (=> b!6955136 (= e!4182411 e!4182413)))

(assert (=> b!6955137 (= e!4182412 call!631616)))

(declare-fun b!6955138 () Bool)

(declare-fun e!4182416 () Bool)

(assert (=> b!6955138 (= e!4182415 e!4182416)))

(declare-fun res!2837869 () Bool)

(assert (=> b!6955138 (= res!2837869 (not (is-EmptyLang!17050 rInner!765)))))

(assert (=> b!6955138 (=> (not res!2837869) (not e!4182416))))

(declare-fun b!6955139 () Bool)

(declare-fun res!2837868 () Bool)

(assert (=> b!6955139 (=> res!2837868 e!4182410)))

(assert (=> b!6955139 (= res!2837868 call!631615)))

(assert (=> b!6955139 (= e!4182412 e!4182410)))

(declare-fun b!6955140 () Bool)

(declare-fun c!1289831 () Bool)

(assert (=> b!6955140 (= c!1289831 (is-ElementMatch!17050 rInner!765))))

(assert (=> b!6955140 (= e!4182416 e!4182411)))

(declare-fun b!6955141 () Bool)

(declare-fun e!4182414 () Bool)

(assert (=> b!6955141 (= e!4182413 e!4182414)))

(declare-fun res!2837870 () Bool)

(assert (=> b!6955141 (= res!2837870 (matchRSpec!4075 (regOne!34613 rInner!765) (_1!37204 lt!2478343)))))

(assert (=> b!6955141 (=> res!2837870 e!4182414)))

(declare-fun b!6955142 () Bool)

(assert (=> b!6955142 (= e!4182414 (matchRSpec!4075 (regTwo!34613 rInner!765) (_1!37204 lt!2478343)))))

(declare-fun b!6955143 () Bool)

(assert (=> b!6955143 (= e!4182415 call!631615)))

(assert (= (and d!2169461 c!1289833) b!6955143))

(assert (= (and d!2169461 (not c!1289833)) b!6955138))

(assert (= (and b!6955138 res!2837869) b!6955140))

(assert (= (and b!6955140 c!1289831) b!6955134))

(assert (= (and b!6955140 (not c!1289831)) b!6955136))

(assert (= (and b!6955136 c!1289832) b!6955141))

(assert (= (and b!6955136 (not c!1289832)) b!6955133))

(assert (= (and b!6955141 (not res!2837870)) b!6955142))

(assert (= (and b!6955133 c!1289830) b!6955139))

(assert (= (and b!6955133 (not c!1289830)) b!6955137))

(assert (= (and b!6955139 (not res!2837868)) b!6955135))

(assert (= (or b!6955135 b!6955137) bm!631611))

(assert (= (or b!6955143 b!6955139) bm!631610))

(assert (=> bm!631610 m!7653892))

(declare-fun m!7653942 () Bool)

(assert (=> bm!631611 m!7653942))

(declare-fun m!7653944 () Bool)

(assert (=> b!6955141 m!7653944))

(declare-fun m!7653946 () Bool)

(assert (=> b!6955142 m!7653946))

(assert (=> b!6954905 d!2169461))

(declare-fun d!2169463 () Bool)

(assert (=> d!2169463 (= (matchR!9160 rInner!765 (_1!37204 lt!2478343)) (matchRSpec!4075 rInner!765 (_1!37204 lt!2478343)))))

(declare-fun lt!2478376 () Unit!160768)

(declare-fun choose!51831 (Regex!17050 List!66803) Unit!160768)

(assert (=> d!2169463 (= lt!2478376 (choose!51831 rInner!765 (_1!37204 lt!2478343)))))

(assert (=> d!2169463 (validRegex!8756 rInner!765)))

(assert (=> d!2169463 (= (mainMatchTheorem!4069 rInner!765 (_1!37204 lt!2478343)) lt!2478376)))

(declare-fun bs!1857953 () Bool)

(assert (= bs!1857953 d!2169463))

(assert (=> bs!1857953 m!7653836))

(assert (=> bs!1857953 m!7653834))

(declare-fun m!7653948 () Bool)

(assert (=> bs!1857953 m!7653948))

(assert (=> bs!1857953 m!7653820))

(assert (=> b!6954905 d!2169463))

(declare-fun bs!1857954 () Bool)

(declare-fun b!6955146 () Bool)

(assert (= bs!1857954 (and b!6955146 b!6954898)))

(declare-fun lambda!396739 () Int)

(assert (=> bs!1857954 (not (= lambda!396739 lambda!396721))))

(declare-fun bs!1857955 () Bool)

(assert (= bs!1857955 (and b!6955146 b!6954900)))

(assert (=> bs!1857955 (= (and (= (_2!37204 lt!2478343) s!10388) (= (reg!17379 lt!2478340) rInner!765) (= lt!2478340 (Star!17050 rInner!765))) (= lambda!396739 lambda!396722))))

(declare-fun bs!1857956 () Bool)

(assert (= bs!1857956 (and b!6955146 b!6955135)))

(assert (=> bs!1857956 (= (and (= (_2!37204 lt!2478343) (_1!37204 lt!2478343)) (= (reg!17379 lt!2478340) (reg!17379 rInner!765)) (= lt!2478340 rInner!765)) (= lambda!396739 lambda!396737))))

(declare-fun bs!1857957 () Bool)

(assert (= bs!1857957 (and b!6955146 b!6955137)))

(assert (=> bs!1857957 (not (= lambda!396739 lambda!396738))))

(assert (=> b!6955146 true))

(assert (=> b!6955146 true))

(declare-fun bs!1857958 () Bool)

(declare-fun b!6955148 () Bool)

(assert (= bs!1857958 (and b!6955148 b!6955135)))

(declare-fun lambda!396740 () Int)

(assert (=> bs!1857958 (not (= lambda!396740 lambda!396737))))

(declare-fun bs!1857959 () Bool)

(assert (= bs!1857959 (and b!6955148 b!6954898)))

(assert (=> bs!1857959 (not (= lambda!396740 lambda!396721))))

(declare-fun bs!1857960 () Bool)

(assert (= bs!1857960 (and b!6955148 b!6955137)))

(assert (=> bs!1857960 (= (and (= (_2!37204 lt!2478343) (_1!37204 lt!2478343)) (= (regOne!34612 lt!2478340) (regOne!34612 rInner!765)) (= (regTwo!34612 lt!2478340) (regTwo!34612 rInner!765))) (= lambda!396740 lambda!396738))))

(declare-fun bs!1857961 () Bool)

(assert (= bs!1857961 (and b!6955148 b!6954900)))

(assert (=> bs!1857961 (not (= lambda!396740 lambda!396722))))

(declare-fun bs!1857962 () Bool)

(assert (= bs!1857962 (and b!6955148 b!6955146)))

(assert (=> bs!1857962 (not (= lambda!396740 lambda!396739))))

(assert (=> b!6955148 true))

(assert (=> b!6955148 true))

(declare-fun bm!631614 () Bool)

(declare-fun call!631619 () Bool)

(assert (=> bm!631614 (= call!631619 (isEmpty!38915 (_2!37204 lt!2478343)))))

(declare-fun c!1289834 () Bool)

(declare-fun bm!631615 () Bool)

(declare-fun call!631620 () Bool)

(assert (=> bm!631615 (= call!631620 (Exists!4046 (ite c!1289834 lambda!396739 lambda!396740)))))

(declare-fun b!6955144 () Bool)

(declare-fun e!4182420 () Bool)

(declare-fun e!4182419 () Bool)

(assert (=> b!6955144 (= e!4182420 e!4182419)))

(assert (=> b!6955144 (= c!1289834 (is-Star!17050 lt!2478340))))

(declare-fun b!6955145 () Bool)

(declare-fun e!4182418 () Bool)

(assert (=> b!6955145 (= e!4182418 (= (_2!37204 lt!2478343) (Cons!66679 (c!1289790 lt!2478340) Nil!66679)))))

(declare-fun d!2169465 () Bool)

(declare-fun c!1289837 () Bool)

(assert (=> d!2169465 (= c!1289837 (is-EmptyExpr!17050 lt!2478340))))

(declare-fun e!4182422 () Bool)

(assert (=> d!2169465 (= (matchRSpec!4075 lt!2478340 (_2!37204 lt!2478343)) e!4182422)))

(declare-fun e!4182417 () Bool)

(assert (=> b!6955146 (= e!4182417 call!631620)))

(declare-fun b!6955147 () Bool)

(declare-fun c!1289836 () Bool)

(assert (=> b!6955147 (= c!1289836 (is-Union!17050 lt!2478340))))

(assert (=> b!6955147 (= e!4182418 e!4182420)))

(assert (=> b!6955148 (= e!4182419 call!631620)))

(declare-fun b!6955149 () Bool)

(declare-fun e!4182423 () Bool)

(assert (=> b!6955149 (= e!4182422 e!4182423)))

(declare-fun res!2837872 () Bool)

(assert (=> b!6955149 (= res!2837872 (not (is-EmptyLang!17050 lt!2478340)))))

(assert (=> b!6955149 (=> (not res!2837872) (not e!4182423))))

(declare-fun b!6955150 () Bool)

(declare-fun res!2837871 () Bool)

(assert (=> b!6955150 (=> res!2837871 e!4182417)))

(assert (=> b!6955150 (= res!2837871 call!631619)))

(assert (=> b!6955150 (= e!4182419 e!4182417)))

(declare-fun b!6955151 () Bool)

(declare-fun c!1289835 () Bool)

(assert (=> b!6955151 (= c!1289835 (is-ElementMatch!17050 lt!2478340))))

(assert (=> b!6955151 (= e!4182423 e!4182418)))

(declare-fun b!6955152 () Bool)

(declare-fun e!4182421 () Bool)

(assert (=> b!6955152 (= e!4182420 e!4182421)))

(declare-fun res!2837873 () Bool)

(assert (=> b!6955152 (= res!2837873 (matchRSpec!4075 (regOne!34613 lt!2478340) (_2!37204 lt!2478343)))))

(assert (=> b!6955152 (=> res!2837873 e!4182421)))

(declare-fun b!6955153 () Bool)

(assert (=> b!6955153 (= e!4182421 (matchRSpec!4075 (regTwo!34613 lt!2478340) (_2!37204 lt!2478343)))))

(declare-fun b!6955154 () Bool)

(assert (=> b!6955154 (= e!4182422 call!631619)))

(assert (= (and d!2169465 c!1289837) b!6955154))

(assert (= (and d!2169465 (not c!1289837)) b!6955149))

(assert (= (and b!6955149 res!2837872) b!6955151))

(assert (= (and b!6955151 c!1289835) b!6955145))

(assert (= (and b!6955151 (not c!1289835)) b!6955147))

(assert (= (and b!6955147 c!1289836) b!6955152))

(assert (= (and b!6955147 (not c!1289836)) b!6955144))

(assert (= (and b!6955152 (not res!2837873)) b!6955153))

(assert (= (and b!6955144 c!1289834) b!6955150))

(assert (= (and b!6955144 (not c!1289834)) b!6955148))

(assert (= (and b!6955150 (not res!2837871)) b!6955146))

(assert (= (or b!6955146 b!6955148) bm!631615))

(assert (= (or b!6955154 b!6955150) bm!631614))

(assert (=> bm!631614 m!7653938))

(declare-fun m!7653950 () Bool)

(assert (=> bm!631615 m!7653950))

(declare-fun m!7653952 () Bool)

(assert (=> b!6955152 m!7653952))

(declare-fun m!7653954 () Bool)

(assert (=> b!6955153 m!7653954))

(assert (=> b!6954905 d!2169465))

(declare-fun d!2169467 () Bool)

(assert (=> d!2169467 (= (matchR!9160 lt!2478340 (_2!37204 lt!2478343)) (matchRSpec!4075 lt!2478340 (_2!37204 lt!2478343)))))

(declare-fun lt!2478377 () Unit!160768)

(assert (=> d!2169467 (= lt!2478377 (choose!51831 lt!2478340 (_2!37204 lt!2478343)))))

(assert (=> d!2169467 (validRegex!8756 lt!2478340)))

(assert (=> d!2169467 (= (mainMatchTheorem!4069 lt!2478340 (_2!37204 lt!2478343)) lt!2478377)))

(declare-fun bs!1857963 () Bool)

(assert (= bs!1857963 d!2169467))

(assert (=> bs!1857963 m!7653826))

(assert (=> bs!1857963 m!7653828))

(declare-fun m!7653956 () Bool)

(assert (=> bs!1857963 m!7653956))

(assert (=> bs!1857963 m!7653940))

(assert (=> b!6954905 d!2169467))

(declare-fun d!2169469 () Bool)

(assert (=> d!2169469 (= (Exists!4046 lambda!396722) (choose!51829 lambda!396722))))

(declare-fun bs!1857964 () Bool)

(assert (= bs!1857964 d!2169469))

(declare-fun m!7653958 () Bool)

(assert (=> bs!1857964 m!7653958))

(assert (=> b!6954900 d!2169469))

(declare-fun b!6955181 () Bool)

(declare-fun e!4182433 () Bool)

(declare-fun tp!1917383 () Bool)

(assert (=> b!6955181 (= e!4182433 tp!1917383)))

(declare-fun b!6955182 () Bool)

(declare-fun tp!1917384 () Bool)

(declare-fun tp!1917382 () Bool)

(assert (=> b!6955182 (= e!4182433 (and tp!1917384 tp!1917382))))

(declare-fun b!6955179 () Bool)

(assert (=> b!6955179 (= e!4182433 tp_is_empty!43325)))

(declare-fun b!6955180 () Bool)

(declare-fun tp!1917381 () Bool)

(declare-fun tp!1917380 () Bool)

(assert (=> b!6955180 (= e!4182433 (and tp!1917381 tp!1917380))))

(assert (=> b!6954901 (= tp!1917348 e!4182433)))

(assert (= (and b!6954901 (is-ElementMatch!17050 (regOne!34613 rInner!765))) b!6955179))

(assert (= (and b!6954901 (is-Concat!25895 (regOne!34613 rInner!765))) b!6955180))

(assert (= (and b!6954901 (is-Star!17050 (regOne!34613 rInner!765))) b!6955181))

(assert (= (and b!6954901 (is-Union!17050 (regOne!34613 rInner!765))) b!6955182))

(declare-fun b!6955185 () Bool)

(declare-fun e!4182434 () Bool)

(declare-fun tp!1917388 () Bool)

(assert (=> b!6955185 (= e!4182434 tp!1917388)))

(declare-fun b!6955186 () Bool)

(declare-fun tp!1917389 () Bool)

(declare-fun tp!1917387 () Bool)

(assert (=> b!6955186 (= e!4182434 (and tp!1917389 tp!1917387))))

(declare-fun b!6955183 () Bool)

(assert (=> b!6955183 (= e!4182434 tp_is_empty!43325)))

(declare-fun b!6955184 () Bool)

(declare-fun tp!1917386 () Bool)

(declare-fun tp!1917385 () Bool)

(assert (=> b!6955184 (= e!4182434 (and tp!1917386 tp!1917385))))

(assert (=> b!6954901 (= tp!1917351 e!4182434)))

(assert (= (and b!6954901 (is-ElementMatch!17050 (regTwo!34613 rInner!765))) b!6955183))

(assert (= (and b!6954901 (is-Concat!25895 (regTwo!34613 rInner!765))) b!6955184))

(assert (= (and b!6954901 (is-Star!17050 (regTwo!34613 rInner!765))) b!6955185))

(assert (= (and b!6954901 (is-Union!17050 (regTwo!34613 rInner!765))) b!6955186))

(declare-fun b!6955191 () Bool)

(declare-fun e!4182437 () Bool)

(declare-fun tp!1917392 () Bool)

(assert (=> b!6955191 (= e!4182437 (and tp_is_empty!43325 tp!1917392))))

(assert (=> b!6954907 (= tp!1917350 e!4182437)))

(assert (= (and b!6954907 (is-Cons!66679 (t!380546 s!10388))) b!6955191))

(declare-fun b!6955194 () Bool)

(declare-fun e!4182438 () Bool)

(declare-fun tp!1917396 () Bool)

(assert (=> b!6955194 (= e!4182438 tp!1917396)))

(declare-fun b!6955195 () Bool)

(declare-fun tp!1917397 () Bool)

(declare-fun tp!1917395 () Bool)

(assert (=> b!6955195 (= e!4182438 (and tp!1917397 tp!1917395))))

(declare-fun b!6955192 () Bool)

(assert (=> b!6955192 (= e!4182438 tp_is_empty!43325)))

(declare-fun b!6955193 () Bool)

(declare-fun tp!1917394 () Bool)

(declare-fun tp!1917393 () Bool)

(assert (=> b!6955193 (= e!4182438 (and tp!1917394 tp!1917393))))

(assert (=> b!6954904 (= tp!1917349 e!4182438)))

(assert (= (and b!6954904 (is-ElementMatch!17050 (regOne!34612 rInner!765))) b!6955192))

(assert (= (and b!6954904 (is-Concat!25895 (regOne!34612 rInner!765))) b!6955193))

(assert (= (and b!6954904 (is-Star!17050 (regOne!34612 rInner!765))) b!6955194))

(assert (= (and b!6954904 (is-Union!17050 (regOne!34612 rInner!765))) b!6955195))

(declare-fun b!6955198 () Bool)

(declare-fun e!4182439 () Bool)

(declare-fun tp!1917401 () Bool)

(assert (=> b!6955198 (= e!4182439 tp!1917401)))

(declare-fun b!6955199 () Bool)

(declare-fun tp!1917402 () Bool)

(declare-fun tp!1917400 () Bool)

(assert (=> b!6955199 (= e!4182439 (and tp!1917402 tp!1917400))))

(declare-fun b!6955196 () Bool)

(assert (=> b!6955196 (= e!4182439 tp_is_empty!43325)))

(declare-fun b!6955197 () Bool)

(declare-fun tp!1917399 () Bool)

(declare-fun tp!1917398 () Bool)

(assert (=> b!6955197 (= e!4182439 (and tp!1917399 tp!1917398))))

(assert (=> b!6954904 (= tp!1917346 e!4182439)))

(assert (= (and b!6954904 (is-ElementMatch!17050 (regTwo!34612 rInner!765))) b!6955196))

(assert (= (and b!6954904 (is-Concat!25895 (regTwo!34612 rInner!765))) b!6955197))

(assert (= (and b!6954904 (is-Star!17050 (regTwo!34612 rInner!765))) b!6955198))

(assert (= (and b!6954904 (is-Union!17050 (regTwo!34612 rInner!765))) b!6955199))

(declare-fun b!6955202 () Bool)

(declare-fun e!4182440 () Bool)

(declare-fun tp!1917406 () Bool)

(assert (=> b!6955202 (= e!4182440 tp!1917406)))

(declare-fun b!6955203 () Bool)

(declare-fun tp!1917407 () Bool)

(declare-fun tp!1917405 () Bool)

(assert (=> b!6955203 (= e!4182440 (and tp!1917407 tp!1917405))))

(declare-fun b!6955200 () Bool)

(assert (=> b!6955200 (= e!4182440 tp_is_empty!43325)))

(declare-fun b!6955201 () Bool)

(declare-fun tp!1917404 () Bool)

(declare-fun tp!1917403 () Bool)

(assert (=> b!6955201 (= e!4182440 (and tp!1917404 tp!1917403))))

(assert (=> b!6954906 (= tp!1917347 e!4182440)))

(assert (= (and b!6954906 (is-ElementMatch!17050 (reg!17379 rInner!765))) b!6955200))

(assert (= (and b!6954906 (is-Concat!25895 (reg!17379 rInner!765))) b!6955201))

(assert (= (and b!6954906 (is-Star!17050 (reg!17379 rInner!765))) b!6955202))

(assert (= (and b!6954906 (is-Union!17050 (reg!17379 rInner!765))) b!6955203))

(declare-fun b_lambda!260445 () Bool)

(assert (= b_lambda!260443 (or b!6954900 b_lambda!260445)))

(declare-fun bs!1857965 () Bool)

(declare-fun d!2169471 () Bool)

(assert (= bs!1857965 (and d!2169471 b!6954900)))

(declare-fun res!2837882 () Bool)

(declare-fun e!4182441 () Bool)

(assert (=> bs!1857965 (=> (not res!2837882) (not e!4182441))))

(assert (=> bs!1857965 (= res!2837882 (= (++!15079 (_1!37204 lt!2478369) (_2!37204 lt!2478369)) s!10388))))

(assert (=> bs!1857965 (= (dynLambda!26590 lambda!396722 lt!2478369) e!4182441)))

(declare-fun b!6955204 () Bool)

(declare-fun res!2837883 () Bool)

(assert (=> b!6955204 (=> (not res!2837883) (not e!4182441))))

(assert (=> b!6955204 (= res!2837883 (not (isEmpty!38915 (_1!37204 lt!2478369))))))

(declare-fun b!6955205 () Bool)

(declare-fun res!2837884 () Bool)

(assert (=> b!6955205 (=> (not res!2837884) (not e!4182441))))

(assert (=> b!6955205 (= res!2837884 (matchRSpec!4075 rInner!765 (_1!37204 lt!2478369)))))

(declare-fun b!6955206 () Bool)

(assert (=> b!6955206 (= e!4182441 (matchRSpec!4075 (Star!17050 rInner!765) (_2!37204 lt!2478369)))))

(assert (= (and bs!1857965 res!2837882) b!6955204))

(assert (= (and b!6955204 res!2837883) b!6955205))

(assert (= (and b!6955205 res!2837884) b!6955206))

(declare-fun m!7653972 () Bool)

(assert (=> bs!1857965 m!7653972))

(declare-fun m!7653974 () Bool)

(assert (=> b!6955204 m!7653974))

(declare-fun m!7653976 () Bool)

(assert (=> b!6955205 m!7653976))

(declare-fun m!7653978 () Bool)

(assert (=> b!6955206 m!7653978))

(assert (=> d!2169455 d!2169471))

(push 1)

(assert (not bm!631604))

(assert (not b!6955142))

(assert (not b!6955205))

(assert (not d!2169469))

(assert (not bm!631599))

(assert (not d!2169467))

(assert (not d!2169441))

(assert (not b!6955069))

(assert (not b!6955064))

(assert (not b!6955072))

(assert (not b!6955202))

(assert (not b!6955153))

(assert (not b!6955182))

(assert (not b!6955186))

(assert (not b!6955198))

(assert (not bm!631614))

(assert (not b!6955195))

(assert (not b!6955026))

(assert (not b!6955180))

(assert (not b!6955068))

(assert (not b!6954988))

(assert tp_is_empty!43325)

(assert (not bm!631615))

(assert (not bm!631611))

(assert (not b!6955053))

(assert (not b!6955181))

(assert (not b!6955034))

(assert (not b!6955031))

(assert (not b_lambda!260445))

(assert (not bs!1857965))

(assert (not b!6955052))

(assert (not b!6955022))

(assert (not b!6955199))

(assert (not b!6955193))

(assert (not b!6955184))

(assert (not d!2169457))

(assert (not b!6955201))

(assert (not d!2169453))

(assert (not b!6955191))

(assert (not b!6955204))

(assert (not b!6955030))

(assert (not b!6955197))

(assert (not d!2169445))

(assert (not b!6955067))

(assert (not d!2169439))

(assert (not bm!631605))

(assert (not b!6955203))

(assert (not b!6955029))

(assert (not d!2169463))

(assert (not b!6955185))

(assert (not bm!631600))

(assert (not b!6955060))

(assert (not b!6955141))

(assert (not b!6955194))

(assert (not d!2169455))

(assert (not bm!631610))

(assert (not b!6955206))

(assert (not b!6955152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

