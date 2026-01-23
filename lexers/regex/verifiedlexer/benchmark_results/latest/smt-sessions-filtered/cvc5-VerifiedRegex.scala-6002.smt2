; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!294078 () Bool)

(assert start!294078)

(declare-fun b!3098737 () Bool)

(assert (=> b!3098737 true))

(assert (=> b!3098737 true))

(assert (=> b!3098737 true))

(declare-fun lambda!114776 () Int)

(declare-fun lambda!114775 () Int)

(assert (=> b!3098737 (not (= lambda!114776 lambda!114775))))

(assert (=> b!3098737 true))

(assert (=> b!3098737 true))

(assert (=> b!3098737 true))

(declare-fun b!3098736 () Bool)

(declare-fun e!1936677 () Bool)

(declare-fun e!1936676 () Bool)

(assert (=> b!3098736 (= e!1936677 e!1936676)))

(declare-fun res!1269415 () Bool)

(assert (=> b!3098736 (=> res!1269415 e!1936676)))

(declare-datatypes ((C!19294 0))(
  ( (C!19295 (val!11683 Int)) )
))
(declare-datatypes ((Regex!9554 0))(
  ( (ElementMatch!9554 (c!517598 C!19294)) (Concat!14875 (regOne!19620 Regex!9554) (regTwo!19620 Regex!9554)) (EmptyExpr!9554) (Star!9554 (reg!9883 Regex!9554)) (EmptyLang!9554) (Union!9554 (regOne!19621 Regex!9554) (regTwo!19621 Regex!9554)) )
))
(declare-fun r!17423 () Regex!9554)

(declare-fun validRegex!4287 (Regex!9554) Bool)

(assert (=> b!3098736 (= res!1269415 (not (validRegex!4287 (regOne!19620 r!17423))))))

(declare-fun lt!1055313 () Bool)

(declare-fun lt!1055315 () Regex!9554)

(declare-datatypes ((List!35419 0))(
  ( (Nil!35295) (Cons!35295 (h!40715 C!19294) (t!234484 List!35419)) )
))
(declare-datatypes ((tuple2!34218 0))(
  ( (tuple2!34219 (_1!20241 List!35419) (_2!20241 List!35419)) )
))
(declare-fun lt!1055310 () tuple2!34218)

(declare-fun matchR!4436 (Regex!9554 List!35419) Bool)

(assert (=> b!3098736 (= lt!1055313 (matchR!4436 lt!1055315 (_2!20241 lt!1055310)))))

(assert (=> b!3098736 (= lt!1055313 (matchR!4436 (regTwo!19620 r!17423) (_2!20241 lt!1055310)))))

(declare-datatypes ((Unit!49547 0))(
  ( (Unit!49548) )
))
(declare-fun lt!1055312 () Unit!49547)

(declare-fun lemmaSimplifySound!323 (Regex!9554 List!35419) Unit!49547)

(assert (=> b!3098736 (= lt!1055312 (lemmaSimplifySound!323 (regTwo!19620 r!17423) (_2!20241 lt!1055310)))))

(declare-fun lt!1055316 () Bool)

(declare-fun lt!1055318 () Regex!9554)

(assert (=> b!3098736 (= lt!1055316 (matchR!4436 lt!1055318 (_1!20241 lt!1055310)))))

(assert (=> b!3098736 (= lt!1055316 (matchR!4436 (regOne!19620 r!17423) (_1!20241 lt!1055310)))))

(declare-fun lt!1055311 () Unit!49547)

(assert (=> b!3098736 (= lt!1055311 (lemmaSimplifySound!323 (regOne!19620 r!17423) (_1!20241 lt!1055310)))))

(declare-datatypes ((Option!6841 0))(
  ( (None!6840) (Some!6840 (v!34974 tuple2!34218)) )
))
(declare-fun lt!1055309 () Option!6841)

(declare-fun get!11084 (Option!6841) tuple2!34218)

(assert (=> b!3098736 (= lt!1055310 (get!11084 lt!1055309))))

(declare-fun e!1936678 () Bool)

(assert (=> b!3098737 (= e!1936678 e!1936677)))

(declare-fun res!1269414 () Bool)

(assert (=> b!3098737 (=> res!1269414 e!1936677)))

(declare-fun lt!1055321 () Bool)

(assert (=> b!3098737 (= res!1269414 (not lt!1055321))))

(declare-fun Exists!1817 (Int) Bool)

(assert (=> b!3098737 (= (Exists!1817 lambda!114775) (Exists!1817 lambda!114776))))

(declare-fun s!11993 () List!35419)

(declare-fun lt!1055314 () Unit!49547)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!571 (Regex!9554 Regex!9554 List!35419) Unit!49547)

(assert (=> b!3098737 (= lt!1055314 (lemmaExistCutMatchRandMatchRSpecEquivalent!571 lt!1055318 lt!1055315 s!11993))))

(assert (=> b!3098737 (= lt!1055321 (Exists!1817 lambda!114775))))

(declare-fun isDefined!5392 (Option!6841) Bool)

(assert (=> b!3098737 (= lt!1055321 (isDefined!5392 lt!1055309))))

(declare-fun findConcatSeparation!1235 (Regex!9554 Regex!9554 List!35419 List!35419 List!35419) Option!6841)

(assert (=> b!3098737 (= lt!1055309 (findConcatSeparation!1235 lt!1055318 lt!1055315 Nil!35295 s!11993 s!11993))))

(declare-fun lt!1055322 () Unit!49547)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1005 (Regex!9554 Regex!9554 List!35419) Unit!49547)

(assert (=> b!3098737 (= lt!1055322 (lemmaFindConcatSeparationEquivalentToExists!1005 lt!1055318 lt!1055315 s!11993))))

(declare-fun lt!1055319 () Regex!9554)

(declare-fun matchRSpec!1691 (Regex!9554 List!35419) Bool)

(assert (=> b!3098737 (matchRSpec!1691 lt!1055319 s!11993)))

(declare-fun lt!1055323 () Unit!49547)

(declare-fun mainMatchTheorem!1691 (Regex!9554 List!35419) Unit!49547)

(assert (=> b!3098737 (= lt!1055323 (mainMatchTheorem!1691 lt!1055319 s!11993))))

(declare-fun b!3098738 () Bool)

(declare-fun e!1936681 () Bool)

(declare-fun e!1936679 () Bool)

(assert (=> b!3098738 (= e!1936681 (not e!1936679))))

(declare-fun res!1269411 () Bool)

(assert (=> b!3098738 (=> res!1269411 e!1936679)))

(declare-fun lt!1055320 () Bool)

(assert (=> b!3098738 (= res!1269411 (or lt!1055320 (not (is-Concat!14875 r!17423))))))

(assert (=> b!3098738 (= lt!1055320 (matchRSpec!1691 r!17423 s!11993))))

(assert (=> b!3098738 (= lt!1055320 (matchR!4436 r!17423 s!11993))))

(declare-fun lt!1055317 () Unit!49547)

(assert (=> b!3098738 (= lt!1055317 (mainMatchTheorem!1691 r!17423 s!11993))))

(declare-fun b!3098739 () Bool)

(declare-fun res!1269413 () Bool)

(assert (=> b!3098739 (=> res!1269413 e!1936676)))

(assert (=> b!3098739 (= res!1269413 (not (validRegex!4287 (regTwo!19620 r!17423))))))

(declare-fun b!3098740 () Bool)

(declare-fun res!1269407 () Bool)

(declare-fun e!1936682 () Bool)

(assert (=> b!3098740 (=> res!1269407 e!1936682)))

(declare-fun isEmptyExpr!611 (Regex!9554) Bool)

(assert (=> b!3098740 (= res!1269407 (isEmptyExpr!611 lt!1055315))))

(declare-fun res!1269406 () Bool)

(assert (=> start!294078 (=> (not res!1269406) (not e!1936681))))

(assert (=> start!294078 (= res!1269406 (validRegex!4287 r!17423))))

(assert (=> start!294078 e!1936681))

(declare-fun e!1936683 () Bool)

(assert (=> start!294078 e!1936683))

(declare-fun e!1936680 () Bool)

(assert (=> start!294078 e!1936680))

(declare-fun b!3098741 () Bool)

(declare-fun res!1269405 () Bool)

(assert (=> b!3098741 (=> res!1269405 e!1936682)))

(assert (=> b!3098741 (= res!1269405 (isEmptyExpr!611 lt!1055318))))

(declare-fun b!3098742 () Bool)

(declare-fun tp_is_empty!16671 () Bool)

(declare-fun tp!974379 () Bool)

(assert (=> b!3098742 (= e!1936680 (and tp_is_empty!16671 tp!974379))))

(declare-fun b!3098743 () Bool)

(declare-fun res!1269408 () Bool)

(assert (=> b!3098743 (=> res!1269408 e!1936682)))

(declare-fun isEmptyLang!605 (Regex!9554) Bool)

(assert (=> b!3098743 (= res!1269408 (isEmptyLang!605 lt!1055315))))

(declare-fun b!3098744 () Bool)

(declare-fun res!1269412 () Bool)

(assert (=> b!3098744 (=> res!1269412 e!1936679)))

(declare-fun isEmpty!19642 (List!35419) Bool)

(assert (=> b!3098744 (= res!1269412 (isEmpty!19642 s!11993))))

(declare-fun b!3098745 () Bool)

(declare-fun tp!974375 () Bool)

(assert (=> b!3098745 (= e!1936683 tp!974375)))

(declare-fun b!3098746 () Bool)

(assert (=> b!3098746 (= e!1936683 tp_is_empty!16671)))

(declare-fun b!3098747 () Bool)

(declare-fun tp!974376 () Bool)

(declare-fun tp!974378 () Bool)

(assert (=> b!3098747 (= e!1936683 (and tp!974376 tp!974378))))

(declare-fun b!3098748 () Bool)

(assert (=> b!3098748 (= e!1936679 e!1936682)))

(declare-fun res!1269410 () Bool)

(assert (=> b!3098748 (=> res!1269410 e!1936682)))

(assert (=> b!3098748 (= res!1269410 (isEmptyLang!605 lt!1055318))))

(declare-fun simplify!509 (Regex!9554) Regex!9554)

(assert (=> b!3098748 (= lt!1055315 (simplify!509 (regTwo!19620 r!17423)))))

(assert (=> b!3098748 (= lt!1055318 (simplify!509 (regOne!19620 r!17423)))))

(declare-fun b!3098749 () Bool)

(assert (=> b!3098749 (= e!1936682 e!1936678)))

(declare-fun res!1269409 () Bool)

(assert (=> b!3098749 (=> res!1269409 e!1936678)))

(assert (=> b!3098749 (= res!1269409 (not (matchR!4436 lt!1055319 s!11993)))))

(assert (=> b!3098749 (= lt!1055319 (Concat!14875 lt!1055318 lt!1055315))))

(declare-fun b!3098750 () Bool)

(declare-fun tp!974377 () Bool)

(declare-fun tp!974374 () Bool)

(assert (=> b!3098750 (= e!1936683 (and tp!974377 tp!974374))))

(declare-fun b!3098751 () Bool)

(assert (=> b!3098751 (= e!1936676 (or (not lt!1055316) lt!1055313))))

(assert (= (and start!294078 res!1269406) b!3098738))

(assert (= (and b!3098738 (not res!1269411)) b!3098744))

(assert (= (and b!3098744 (not res!1269412)) b!3098748))

(assert (= (and b!3098748 (not res!1269410)) b!3098743))

(assert (= (and b!3098743 (not res!1269408)) b!3098741))

(assert (= (and b!3098741 (not res!1269405)) b!3098740))

(assert (= (and b!3098740 (not res!1269407)) b!3098749))

(assert (= (and b!3098749 (not res!1269409)) b!3098737))

(assert (= (and b!3098737 (not res!1269414)) b!3098736))

(assert (= (and b!3098736 (not res!1269415)) b!3098739))

(assert (= (and b!3098739 (not res!1269413)) b!3098751))

(assert (= (and start!294078 (is-ElementMatch!9554 r!17423)) b!3098746))

(assert (= (and start!294078 (is-Concat!14875 r!17423)) b!3098747))

(assert (= (and start!294078 (is-Star!9554 r!17423)) b!3098745))

(assert (= (and start!294078 (is-Union!9554 r!17423)) b!3098750))

(assert (= (and start!294078 (is-Cons!35295 s!11993)) b!3098742))

(declare-fun m!3399897 () Bool)

(assert (=> b!3098739 m!3399897))

(declare-fun m!3399899 () Bool)

(assert (=> b!3098740 m!3399899))

(declare-fun m!3399901 () Bool)

(assert (=> b!3098748 m!3399901))

(declare-fun m!3399903 () Bool)

(assert (=> b!3098748 m!3399903))

(declare-fun m!3399905 () Bool)

(assert (=> b!3098748 m!3399905))

(declare-fun m!3399907 () Bool)

(assert (=> b!3098749 m!3399907))

(declare-fun m!3399909 () Bool)

(assert (=> start!294078 m!3399909))

(declare-fun m!3399911 () Bool)

(assert (=> b!3098743 m!3399911))

(declare-fun m!3399913 () Bool)

(assert (=> b!3098744 m!3399913))

(declare-fun m!3399915 () Bool)

(assert (=> b!3098741 m!3399915))

(declare-fun m!3399917 () Bool)

(assert (=> b!3098738 m!3399917))

(declare-fun m!3399919 () Bool)

(assert (=> b!3098738 m!3399919))

(declare-fun m!3399921 () Bool)

(assert (=> b!3098738 m!3399921))

(declare-fun m!3399923 () Bool)

(assert (=> b!3098737 m!3399923))

(declare-fun m!3399925 () Bool)

(assert (=> b!3098737 m!3399925))

(assert (=> b!3098737 m!3399925))

(declare-fun m!3399927 () Bool)

(assert (=> b!3098737 m!3399927))

(declare-fun m!3399929 () Bool)

(assert (=> b!3098737 m!3399929))

(declare-fun m!3399931 () Bool)

(assert (=> b!3098737 m!3399931))

(declare-fun m!3399933 () Bool)

(assert (=> b!3098737 m!3399933))

(declare-fun m!3399935 () Bool)

(assert (=> b!3098737 m!3399935))

(declare-fun m!3399937 () Bool)

(assert (=> b!3098737 m!3399937))

(declare-fun m!3399939 () Bool)

(assert (=> b!3098736 m!3399939))

(declare-fun m!3399941 () Bool)

(assert (=> b!3098736 m!3399941))

(declare-fun m!3399943 () Bool)

(assert (=> b!3098736 m!3399943))

(declare-fun m!3399945 () Bool)

(assert (=> b!3098736 m!3399945))

(declare-fun m!3399947 () Bool)

(assert (=> b!3098736 m!3399947))

(declare-fun m!3399949 () Bool)

(assert (=> b!3098736 m!3399949))

(declare-fun m!3399951 () Bool)

(assert (=> b!3098736 m!3399951))

(declare-fun m!3399953 () Bool)

(assert (=> b!3098736 m!3399953))

(push 1)

(assert (not b!3098749))

(assert (not b!3098748))

(assert (not b!3098739))

(assert (not b!3098744))

(assert (not b!3098737))

(assert (not b!3098747))

(assert (not b!3098738))

(assert (not b!3098743))

(assert (not start!294078))

(assert tp_is_empty!16671)

(assert (not b!3098740))

(assert (not b!3098745))

(assert (not b!3098742))

(assert (not b!3098750))

(assert (not b!3098741))

(assert (not b!3098736))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!218266 () Bool)

(declare-fun call!218272 () Bool)

(declare-fun call!218271 () Bool)

(assert (=> bm!218266 (= call!218272 call!218271)))

(declare-fun d!860761 () Bool)

(declare-fun res!1269484 () Bool)

(declare-fun e!1936748 () Bool)

(assert (=> d!860761 (=> res!1269484 e!1936748)))

(assert (=> d!860761 (= res!1269484 (is-ElementMatch!9554 (regTwo!19620 r!17423)))))

(assert (=> d!860761 (= (validRegex!4287 (regTwo!19620 r!17423)) e!1936748)))

(declare-fun b!3098856 () Bool)

(declare-fun res!1269485 () Bool)

(declare-fun e!1936742 () Bool)

(assert (=> b!3098856 (=> res!1269485 e!1936742)))

(assert (=> b!3098856 (= res!1269485 (not (is-Concat!14875 (regTwo!19620 r!17423))))))

(declare-fun e!1936745 () Bool)

(assert (=> b!3098856 (= e!1936745 e!1936742)))

(declare-fun b!3098857 () Bool)

(declare-fun e!1936746 () Bool)

(assert (=> b!3098857 (= e!1936742 e!1936746)))

(declare-fun res!1269483 () Bool)

(assert (=> b!3098857 (=> (not res!1269483) (not e!1936746))))

(declare-fun call!218273 () Bool)

(assert (=> b!3098857 (= res!1269483 call!218273)))

(declare-fun b!3098858 () Bool)

(declare-fun e!1936743 () Bool)

(assert (=> b!3098858 (= e!1936743 call!218271)))

(declare-fun b!3098859 () Bool)

(declare-fun res!1269481 () Bool)

(declare-fun e!1936747 () Bool)

(assert (=> b!3098859 (=> (not res!1269481) (not e!1936747))))

(assert (=> b!3098859 (= res!1269481 call!218272)))

(assert (=> b!3098859 (= e!1936745 e!1936747)))

(declare-fun b!3098860 () Bool)

(declare-fun e!1936744 () Bool)

(assert (=> b!3098860 (= e!1936748 e!1936744)))

(declare-fun c!517608 () Bool)

(assert (=> b!3098860 (= c!517608 (is-Star!9554 (regTwo!19620 r!17423)))))

(declare-fun b!3098861 () Bool)

(assert (=> b!3098861 (= e!1936744 e!1936743)))

(declare-fun res!1269482 () Bool)

(declare-fun nullable!3200 (Regex!9554) Bool)

(assert (=> b!3098861 (= res!1269482 (not (nullable!3200 (reg!9883 (regTwo!19620 r!17423)))))))

(assert (=> b!3098861 (=> (not res!1269482) (not e!1936743))))

(declare-fun b!3098862 () Bool)

(assert (=> b!3098862 (= e!1936747 call!218273)))

(declare-fun b!3098863 () Bool)

(assert (=> b!3098863 (= e!1936746 call!218272)))

(declare-fun c!517609 () Bool)

(declare-fun bm!218267 () Bool)

(assert (=> bm!218267 (= call!218271 (validRegex!4287 (ite c!517608 (reg!9883 (regTwo!19620 r!17423)) (ite c!517609 (regOne!19621 (regTwo!19620 r!17423)) (regTwo!19620 (regTwo!19620 r!17423))))))))

(declare-fun bm!218268 () Bool)

(assert (=> bm!218268 (= call!218273 (validRegex!4287 (ite c!517609 (regTwo!19621 (regTwo!19620 r!17423)) (regOne!19620 (regTwo!19620 r!17423)))))))

(declare-fun b!3098864 () Bool)

(assert (=> b!3098864 (= e!1936744 e!1936745)))

(assert (=> b!3098864 (= c!517609 (is-Union!9554 (regTwo!19620 r!17423)))))

(assert (= (and d!860761 (not res!1269484)) b!3098860))

(assert (= (and b!3098860 c!517608) b!3098861))

(assert (= (and b!3098860 (not c!517608)) b!3098864))

(assert (= (and b!3098861 res!1269482) b!3098858))

(assert (= (and b!3098864 c!517609) b!3098859))

(assert (= (and b!3098864 (not c!517609)) b!3098856))

(assert (= (and b!3098859 res!1269481) b!3098862))

(assert (= (and b!3098856 (not res!1269485)) b!3098857))

(assert (= (and b!3098857 res!1269483) b!3098863))

(assert (= (or b!3098859 b!3098863) bm!218266))

(assert (= (or b!3098862 b!3098857) bm!218268))

(assert (= (or b!3098858 bm!218266) bm!218267))

(declare-fun m!3400013 () Bool)

(assert (=> b!3098861 m!3400013))

(declare-fun m!3400015 () Bool)

(assert (=> bm!218267 m!3400015))

(declare-fun m!3400017 () Bool)

(assert (=> bm!218268 m!3400017))

(assert (=> b!3098739 d!860761))

(declare-fun bm!218271 () Bool)

(declare-fun call!218277 () Bool)

(declare-fun call!218276 () Bool)

(assert (=> bm!218271 (= call!218277 call!218276)))

(declare-fun d!860763 () Bool)

(declare-fun res!1269489 () Bool)

(declare-fun e!1936755 () Bool)

(assert (=> d!860763 (=> res!1269489 e!1936755)))

(assert (=> d!860763 (= res!1269489 (is-ElementMatch!9554 r!17423))))

(assert (=> d!860763 (= (validRegex!4287 r!17423) e!1936755)))

(declare-fun b!3098865 () Bool)

(declare-fun res!1269490 () Bool)

(declare-fun e!1936749 () Bool)

(assert (=> b!3098865 (=> res!1269490 e!1936749)))

(assert (=> b!3098865 (= res!1269490 (not (is-Concat!14875 r!17423)))))

(declare-fun e!1936752 () Bool)

(assert (=> b!3098865 (= e!1936752 e!1936749)))

(declare-fun b!3098866 () Bool)

(declare-fun e!1936753 () Bool)

(assert (=> b!3098866 (= e!1936749 e!1936753)))

(declare-fun res!1269488 () Bool)

(assert (=> b!3098866 (=> (not res!1269488) (not e!1936753))))

(declare-fun call!218278 () Bool)

(assert (=> b!3098866 (= res!1269488 call!218278)))

(declare-fun b!3098867 () Bool)

(declare-fun e!1936750 () Bool)

(assert (=> b!3098867 (= e!1936750 call!218276)))

(declare-fun b!3098868 () Bool)

(declare-fun res!1269486 () Bool)

(declare-fun e!1936754 () Bool)

(assert (=> b!3098868 (=> (not res!1269486) (not e!1936754))))

(assert (=> b!3098868 (= res!1269486 call!218277)))

(assert (=> b!3098868 (= e!1936752 e!1936754)))

(declare-fun b!3098869 () Bool)

(declare-fun e!1936751 () Bool)

(assert (=> b!3098869 (= e!1936755 e!1936751)))

(declare-fun c!517610 () Bool)

(assert (=> b!3098869 (= c!517610 (is-Star!9554 r!17423))))

(declare-fun b!3098870 () Bool)

(assert (=> b!3098870 (= e!1936751 e!1936750)))

(declare-fun res!1269487 () Bool)

(assert (=> b!3098870 (= res!1269487 (not (nullable!3200 (reg!9883 r!17423))))))

(assert (=> b!3098870 (=> (not res!1269487) (not e!1936750))))

(declare-fun b!3098871 () Bool)

(assert (=> b!3098871 (= e!1936754 call!218278)))

(declare-fun b!3098872 () Bool)

(assert (=> b!3098872 (= e!1936753 call!218277)))

(declare-fun c!517611 () Bool)

(declare-fun bm!218272 () Bool)

(assert (=> bm!218272 (= call!218276 (validRegex!4287 (ite c!517610 (reg!9883 r!17423) (ite c!517611 (regOne!19621 r!17423) (regTwo!19620 r!17423)))))))

(declare-fun bm!218273 () Bool)

(assert (=> bm!218273 (= call!218278 (validRegex!4287 (ite c!517611 (regTwo!19621 r!17423) (regOne!19620 r!17423))))))

(declare-fun b!3098873 () Bool)

(assert (=> b!3098873 (= e!1936751 e!1936752)))

(assert (=> b!3098873 (= c!517611 (is-Union!9554 r!17423))))

(assert (= (and d!860763 (not res!1269489)) b!3098869))

(assert (= (and b!3098869 c!517610) b!3098870))

(assert (= (and b!3098869 (not c!517610)) b!3098873))

(assert (= (and b!3098870 res!1269487) b!3098867))

(assert (= (and b!3098873 c!517611) b!3098868))

(assert (= (and b!3098873 (not c!517611)) b!3098865))

(assert (= (and b!3098868 res!1269486) b!3098871))

(assert (= (and b!3098865 (not res!1269490)) b!3098866))

(assert (= (and b!3098866 res!1269488) b!3098872))

(assert (= (or b!3098868 b!3098872) bm!218271))

(assert (= (or b!3098871 b!3098866) bm!218273))

(assert (= (or b!3098867 bm!218271) bm!218272))

(declare-fun m!3400019 () Bool)

(assert (=> b!3098870 m!3400019))

(declare-fun m!3400021 () Bool)

(assert (=> bm!218272 m!3400021))

(declare-fun m!3400023 () Bool)

(assert (=> bm!218273 m!3400023))

(assert (=> start!294078 d!860763))

(declare-fun d!860765 () Bool)

(assert (=> d!860765 (= (isEmptyLang!605 lt!1055318) (is-EmptyLang!9554 lt!1055318))))

(assert (=> b!3098748 d!860765))

(declare-fun b!3098933 () Bool)

(declare-fun c!517641 () Bool)

(assert (=> b!3098933 (= c!517641 (is-EmptyExpr!9554 (regTwo!19620 r!17423)))))

(declare-fun e!1936794 () Regex!9554)

(declare-fun e!1936804 () Regex!9554)

(assert (=> b!3098933 (= e!1936794 e!1936804)))

(declare-fun bm!218293 () Bool)

(declare-fun call!218299 () Bool)

(declare-fun call!218298 () Bool)

(assert (=> bm!218293 (= call!218299 call!218298)))

(declare-fun b!3098934 () Bool)

(declare-fun e!1936791 () Regex!9554)

(declare-fun lt!1055381 () Regex!9554)

(assert (=> b!3098934 (= e!1936791 (Star!9554 lt!1055381))))

(declare-fun b!3098935 () Bool)

(declare-fun e!1936799 () Regex!9554)

(assert (=> b!3098935 (= e!1936804 e!1936799)))

(declare-fun c!517637 () Bool)

(assert (=> b!3098935 (= c!517637 (is-Star!9554 (regTwo!19620 r!17423)))))

(declare-fun c!517644 () Bool)

(declare-fun lt!1055384 () Regex!9554)

(declare-fun lt!1055386 () Regex!9554)

(declare-fun bm!218294 () Bool)

(assert (=> bm!218294 (= call!218298 (isEmptyLang!605 (ite c!517637 lt!1055381 (ite c!517644 lt!1055386 lt!1055384))))))

(declare-fun b!3098936 () Bool)

(declare-fun e!1936800 () Regex!9554)

(declare-fun e!1936803 () Regex!9554)

(assert (=> b!3098936 (= e!1936800 e!1936803)))

(declare-fun call!218300 () Regex!9554)

(assert (=> b!3098936 (= lt!1055386 call!218300)))

(declare-fun lt!1055383 () Regex!9554)

(declare-fun call!218301 () Regex!9554)

(assert (=> b!3098936 (= lt!1055383 call!218301)))

(declare-fun c!517643 () Bool)

(assert (=> b!3098936 (= c!517643 call!218299)))

(declare-fun b!3098937 () Bool)

(assert (=> b!3098937 (= e!1936803 lt!1055383)))

(declare-fun bm!218295 () Bool)

(declare-fun call!218302 () Bool)

(assert (=> bm!218295 (= call!218302 (isEmptyExpr!611 (ite c!517637 lt!1055381 lt!1055384)))))

(declare-fun call!218304 () Bool)

(declare-fun bm!218296 () Bool)

(declare-fun lt!1055385 () Regex!9554)

(assert (=> bm!218296 (= call!218304 (isEmptyLang!605 (ite c!517644 lt!1055383 lt!1055385)))))

(declare-fun b!3098938 () Bool)

(declare-fun e!1936795 () Regex!9554)

(assert (=> b!3098938 (= e!1936795 e!1936794)))

(declare-fun c!517645 () Bool)

(assert (=> b!3098938 (= c!517645 (is-ElementMatch!9554 (regTwo!19620 r!17423)))))

(declare-fun b!3098939 () Bool)

(assert (=> b!3098939 (= e!1936795 EmptyLang!9554)))

(declare-fun bm!218297 () Bool)

(declare-fun call!218303 () Regex!9554)

(assert (=> bm!218297 (= call!218300 call!218303)))

(declare-fun d!860767 () Bool)

(declare-fun e!1936797 () Bool)

(assert (=> d!860767 e!1936797))

(declare-fun res!1269502 () Bool)

(assert (=> d!860767 (=> (not res!1269502) (not e!1936797))))

(declare-fun lt!1055382 () Regex!9554)

(assert (=> d!860767 (= res!1269502 (validRegex!4287 lt!1055382))))

(assert (=> d!860767 (= lt!1055382 e!1936795)))

(declare-fun c!517646 () Bool)

(assert (=> d!860767 (= c!517646 (is-EmptyLang!9554 (regTwo!19620 r!17423)))))

(assert (=> d!860767 (validRegex!4287 (regTwo!19620 r!17423))))

(assert (=> d!860767 (= (simplify!509 (regTwo!19620 r!17423)) lt!1055382)))

(declare-fun b!3098940 () Bool)

(assert (=> b!3098940 (= e!1936797 (= (nullable!3200 lt!1055382) (nullable!3200 (regTwo!19620 r!17423))))))

(declare-fun b!3098941 () Bool)

(declare-fun e!1936798 () Regex!9554)

(assert (=> b!3098941 (= e!1936798 lt!1055386)))

(declare-fun b!3098942 () Bool)

(assert (=> b!3098942 (= e!1936804 EmptyExpr!9554)))

(declare-fun b!3098943 () Bool)

(declare-fun c!517639 () Bool)

(assert (=> b!3098943 (= c!517639 (isEmptyExpr!611 lt!1055385))))

(declare-fun e!1936796 () Regex!9554)

(declare-fun e!1936801 () Regex!9554)

(assert (=> b!3098943 (= e!1936796 e!1936801)))

(declare-fun bm!218298 () Bool)

(assert (=> bm!218298 (= call!218301 (simplify!509 (ite c!517644 (regTwo!19621 (regTwo!19620 r!17423)) (regOne!19620 (regTwo!19620 r!17423)))))))

(declare-fun b!3098944 () Bool)

(declare-fun e!1936802 () Regex!9554)

(assert (=> b!3098944 (= e!1936801 e!1936802)))

(declare-fun c!517638 () Bool)

(assert (=> b!3098944 (= c!517638 call!218302)))

(declare-fun b!3098945 () Bool)

(assert (=> b!3098945 (= e!1936798 (Union!9554 lt!1055386 lt!1055383))))

(declare-fun b!3098946 () Bool)

(assert (=> b!3098946 (= e!1936802 (Concat!14875 lt!1055385 lt!1055384))))

(declare-fun b!3098947 () Bool)

(declare-fun e!1936792 () Bool)

(assert (=> b!3098947 (= e!1936792 call!218302)))

(declare-fun bm!218299 () Bool)

(assert (=> bm!218299 (= call!218303 (simplify!509 (ite c!517637 (reg!9883 (regTwo!19620 r!17423)) (ite c!517644 (regOne!19621 (regTwo!19620 r!17423)) (regTwo!19620 (regTwo!19620 r!17423))))))))

(declare-fun b!3098948 () Bool)

(assert (=> b!3098948 (= e!1936801 lt!1055384)))

(declare-fun b!3098949 () Bool)

(assert (=> b!3098949 (= e!1936791 EmptyExpr!9554)))

(declare-fun b!3098950 () Bool)

(assert (=> b!3098950 (= e!1936796 EmptyLang!9554)))

(declare-fun b!3098951 () Bool)

(assert (=> b!3098951 (= e!1936794 (regTwo!19620 r!17423))))

(declare-fun b!3098952 () Bool)

(assert (=> b!3098952 (= e!1936802 lt!1055385)))

(declare-fun b!3098953 () Bool)

(assert (=> b!3098953 (= e!1936800 e!1936796)))

(assert (=> b!3098953 (= lt!1055385 call!218301)))

(assert (=> b!3098953 (= lt!1055384 call!218300)))

(declare-fun res!1269504 () Bool)

(assert (=> b!3098953 (= res!1269504 call!218304)))

(declare-fun e!1936793 () Bool)

(assert (=> b!3098953 (=> res!1269504 e!1936793)))

(declare-fun c!517636 () Bool)

(assert (=> b!3098953 (= c!517636 e!1936793)))

(declare-fun b!3098954 () Bool)

(assert (=> b!3098954 (= c!517644 (is-Union!9554 (regTwo!19620 r!17423)))))

(assert (=> b!3098954 (= e!1936799 e!1936800)))

(declare-fun b!3098955 () Bool)

(declare-fun c!517640 () Bool)

(assert (=> b!3098955 (= c!517640 call!218304)))

(assert (=> b!3098955 (= e!1936803 e!1936798)))

(declare-fun b!3098956 () Bool)

(declare-fun c!517642 () Bool)

(assert (=> b!3098956 (= c!517642 e!1936792)))

(declare-fun res!1269503 () Bool)

(assert (=> b!3098956 (=> res!1269503 e!1936792)))

(assert (=> b!3098956 (= res!1269503 call!218298)))

(assert (=> b!3098956 (= lt!1055381 call!218303)))

(assert (=> b!3098956 (= e!1936799 e!1936791)))

(declare-fun b!3098957 () Bool)

(assert (=> b!3098957 (= e!1936793 call!218299)))

(assert (= (and d!860767 c!517646) b!3098939))

(assert (= (and d!860767 (not c!517646)) b!3098938))

(assert (= (and b!3098938 c!517645) b!3098951))

(assert (= (and b!3098938 (not c!517645)) b!3098933))

(assert (= (and b!3098933 c!517641) b!3098942))

(assert (= (and b!3098933 (not c!517641)) b!3098935))

(assert (= (and b!3098935 c!517637) b!3098956))

(assert (= (and b!3098935 (not c!517637)) b!3098954))

(assert (= (and b!3098956 (not res!1269503)) b!3098947))

(assert (= (and b!3098956 c!517642) b!3098949))

(assert (= (and b!3098956 (not c!517642)) b!3098934))

(assert (= (and b!3098954 c!517644) b!3098936))

(assert (= (and b!3098954 (not c!517644)) b!3098953))

(assert (= (and b!3098936 c!517643) b!3098937))

(assert (= (and b!3098936 (not c!517643)) b!3098955))

(assert (= (and b!3098955 c!517640) b!3098941))

(assert (= (and b!3098955 (not c!517640)) b!3098945))

(assert (= (and b!3098953 (not res!1269504)) b!3098957))

(assert (= (and b!3098953 c!517636) b!3098950))

(assert (= (and b!3098953 (not c!517636)) b!3098943))

(assert (= (and b!3098943 c!517639) b!3098948))

(assert (= (and b!3098943 (not c!517639)) b!3098944))

(assert (= (and b!3098944 c!517638) b!3098952))

(assert (= (and b!3098944 (not c!517638)) b!3098946))

(assert (= (or b!3098936 b!3098953) bm!218297))

(assert (= (or b!3098936 b!3098953) bm!218298))

(assert (= (or b!3098955 b!3098953) bm!218296))

(assert (= (or b!3098936 b!3098957) bm!218293))

(assert (= (or b!3098947 b!3098944) bm!218295))

(assert (= (or b!3098956 bm!218297) bm!218299))

(assert (= (or b!3098956 bm!218293) bm!218294))

(assert (= (and d!860767 res!1269502) b!3098940))

(declare-fun m!3400031 () Bool)

(assert (=> b!3098940 m!3400031))

(declare-fun m!3400033 () Bool)

(assert (=> b!3098940 m!3400033))

(declare-fun m!3400035 () Bool)

(assert (=> bm!218296 m!3400035))

(declare-fun m!3400037 () Bool)

(assert (=> b!3098943 m!3400037))

(declare-fun m!3400039 () Bool)

(assert (=> bm!218298 m!3400039))

(declare-fun m!3400041 () Bool)

(assert (=> bm!218294 m!3400041))

(declare-fun m!3400043 () Bool)

(assert (=> bm!218299 m!3400043))

(declare-fun m!3400045 () Bool)

(assert (=> bm!218295 m!3400045))

(declare-fun m!3400047 () Bool)

(assert (=> d!860767 m!3400047))

(assert (=> d!860767 m!3399897))

(assert (=> b!3098748 d!860767))

(declare-fun b!3098958 () Bool)

(declare-fun c!517652 () Bool)

(assert (=> b!3098958 (= c!517652 (is-EmptyExpr!9554 (regOne!19620 r!17423)))))

(declare-fun e!1936808 () Regex!9554)

(declare-fun e!1936818 () Regex!9554)

(assert (=> b!3098958 (= e!1936808 e!1936818)))

(declare-fun bm!218300 () Bool)

(declare-fun call!218306 () Bool)

(declare-fun call!218305 () Bool)

(assert (=> bm!218300 (= call!218306 call!218305)))

(declare-fun b!3098959 () Bool)

(declare-fun e!1936805 () Regex!9554)

(declare-fun lt!1055387 () Regex!9554)

(assert (=> b!3098959 (= e!1936805 (Star!9554 lt!1055387))))

(declare-fun b!3098960 () Bool)

(declare-fun e!1936813 () Regex!9554)

(assert (=> b!3098960 (= e!1936818 e!1936813)))

(declare-fun c!517648 () Bool)

(assert (=> b!3098960 (= c!517648 (is-Star!9554 (regOne!19620 r!17423)))))

(declare-fun lt!1055390 () Regex!9554)

(declare-fun bm!218301 () Bool)

(declare-fun c!517655 () Bool)

(declare-fun lt!1055392 () Regex!9554)

(assert (=> bm!218301 (= call!218305 (isEmptyLang!605 (ite c!517648 lt!1055387 (ite c!517655 lt!1055392 lt!1055390))))))

(declare-fun b!3098961 () Bool)

(declare-fun e!1936814 () Regex!9554)

(declare-fun e!1936817 () Regex!9554)

(assert (=> b!3098961 (= e!1936814 e!1936817)))

(declare-fun call!218307 () Regex!9554)

(assert (=> b!3098961 (= lt!1055392 call!218307)))

(declare-fun lt!1055389 () Regex!9554)

(declare-fun call!218308 () Regex!9554)

(assert (=> b!3098961 (= lt!1055389 call!218308)))

(declare-fun c!517654 () Bool)

(assert (=> b!3098961 (= c!517654 call!218306)))

(declare-fun b!3098962 () Bool)

(assert (=> b!3098962 (= e!1936817 lt!1055389)))

(declare-fun call!218309 () Bool)

(declare-fun bm!218302 () Bool)

(assert (=> bm!218302 (= call!218309 (isEmptyExpr!611 (ite c!517648 lt!1055387 lt!1055390)))))

(declare-fun call!218311 () Bool)

(declare-fun lt!1055391 () Regex!9554)

(declare-fun bm!218303 () Bool)

(assert (=> bm!218303 (= call!218311 (isEmptyLang!605 (ite c!517655 lt!1055389 lt!1055391)))))

(declare-fun b!3098963 () Bool)

(declare-fun e!1936809 () Regex!9554)

(assert (=> b!3098963 (= e!1936809 e!1936808)))

(declare-fun c!517656 () Bool)

(assert (=> b!3098963 (= c!517656 (is-ElementMatch!9554 (regOne!19620 r!17423)))))

(declare-fun b!3098964 () Bool)

(assert (=> b!3098964 (= e!1936809 EmptyLang!9554)))

(declare-fun bm!218304 () Bool)

(declare-fun call!218310 () Regex!9554)

(assert (=> bm!218304 (= call!218307 call!218310)))

(declare-fun d!860775 () Bool)

(declare-fun e!1936811 () Bool)

(assert (=> d!860775 e!1936811))

(declare-fun res!1269505 () Bool)

(assert (=> d!860775 (=> (not res!1269505) (not e!1936811))))

(declare-fun lt!1055388 () Regex!9554)

(assert (=> d!860775 (= res!1269505 (validRegex!4287 lt!1055388))))

(assert (=> d!860775 (= lt!1055388 e!1936809)))

(declare-fun c!517657 () Bool)

(assert (=> d!860775 (= c!517657 (is-EmptyLang!9554 (regOne!19620 r!17423)))))

(assert (=> d!860775 (validRegex!4287 (regOne!19620 r!17423))))

(assert (=> d!860775 (= (simplify!509 (regOne!19620 r!17423)) lt!1055388)))

(declare-fun b!3098965 () Bool)

(assert (=> b!3098965 (= e!1936811 (= (nullable!3200 lt!1055388) (nullable!3200 (regOne!19620 r!17423))))))

(declare-fun b!3098966 () Bool)

(declare-fun e!1936812 () Regex!9554)

(assert (=> b!3098966 (= e!1936812 lt!1055392)))

(declare-fun b!3098967 () Bool)

(assert (=> b!3098967 (= e!1936818 EmptyExpr!9554)))

(declare-fun b!3098968 () Bool)

(declare-fun c!517650 () Bool)

(assert (=> b!3098968 (= c!517650 (isEmptyExpr!611 lt!1055391))))

(declare-fun e!1936810 () Regex!9554)

(declare-fun e!1936815 () Regex!9554)

(assert (=> b!3098968 (= e!1936810 e!1936815)))

(declare-fun bm!218305 () Bool)

(assert (=> bm!218305 (= call!218308 (simplify!509 (ite c!517655 (regTwo!19621 (regOne!19620 r!17423)) (regOne!19620 (regOne!19620 r!17423)))))))

(declare-fun b!3098969 () Bool)

(declare-fun e!1936816 () Regex!9554)

(assert (=> b!3098969 (= e!1936815 e!1936816)))

(declare-fun c!517649 () Bool)

(assert (=> b!3098969 (= c!517649 call!218309)))

(declare-fun b!3098970 () Bool)

(assert (=> b!3098970 (= e!1936812 (Union!9554 lt!1055392 lt!1055389))))

(declare-fun b!3098971 () Bool)

(assert (=> b!3098971 (= e!1936816 (Concat!14875 lt!1055391 lt!1055390))))

(declare-fun b!3098972 () Bool)

(declare-fun e!1936806 () Bool)

(assert (=> b!3098972 (= e!1936806 call!218309)))

(declare-fun bm!218306 () Bool)

(assert (=> bm!218306 (= call!218310 (simplify!509 (ite c!517648 (reg!9883 (regOne!19620 r!17423)) (ite c!517655 (regOne!19621 (regOne!19620 r!17423)) (regTwo!19620 (regOne!19620 r!17423))))))))

(declare-fun b!3098973 () Bool)

(assert (=> b!3098973 (= e!1936815 lt!1055390)))

(declare-fun b!3098974 () Bool)

(assert (=> b!3098974 (= e!1936805 EmptyExpr!9554)))

(declare-fun b!3098975 () Bool)

(assert (=> b!3098975 (= e!1936810 EmptyLang!9554)))

(declare-fun b!3098976 () Bool)

(assert (=> b!3098976 (= e!1936808 (regOne!19620 r!17423))))

(declare-fun b!3098977 () Bool)

(assert (=> b!3098977 (= e!1936816 lt!1055391)))

(declare-fun b!3098978 () Bool)

(assert (=> b!3098978 (= e!1936814 e!1936810)))

(assert (=> b!3098978 (= lt!1055391 call!218308)))

(assert (=> b!3098978 (= lt!1055390 call!218307)))

(declare-fun res!1269507 () Bool)

(assert (=> b!3098978 (= res!1269507 call!218311)))

(declare-fun e!1936807 () Bool)

(assert (=> b!3098978 (=> res!1269507 e!1936807)))

(declare-fun c!517647 () Bool)

(assert (=> b!3098978 (= c!517647 e!1936807)))

(declare-fun b!3098979 () Bool)

(assert (=> b!3098979 (= c!517655 (is-Union!9554 (regOne!19620 r!17423)))))

(assert (=> b!3098979 (= e!1936813 e!1936814)))

(declare-fun b!3098980 () Bool)

(declare-fun c!517651 () Bool)

(assert (=> b!3098980 (= c!517651 call!218311)))

(assert (=> b!3098980 (= e!1936817 e!1936812)))

(declare-fun b!3098981 () Bool)

(declare-fun c!517653 () Bool)

(assert (=> b!3098981 (= c!517653 e!1936806)))

(declare-fun res!1269506 () Bool)

(assert (=> b!3098981 (=> res!1269506 e!1936806)))

(assert (=> b!3098981 (= res!1269506 call!218305)))

(assert (=> b!3098981 (= lt!1055387 call!218310)))

(assert (=> b!3098981 (= e!1936813 e!1936805)))

(declare-fun b!3098982 () Bool)

(assert (=> b!3098982 (= e!1936807 call!218306)))

(assert (= (and d!860775 c!517657) b!3098964))

(assert (= (and d!860775 (not c!517657)) b!3098963))

(assert (= (and b!3098963 c!517656) b!3098976))

(assert (= (and b!3098963 (not c!517656)) b!3098958))

(assert (= (and b!3098958 c!517652) b!3098967))

(assert (= (and b!3098958 (not c!517652)) b!3098960))

(assert (= (and b!3098960 c!517648) b!3098981))

(assert (= (and b!3098960 (not c!517648)) b!3098979))

(assert (= (and b!3098981 (not res!1269506)) b!3098972))

(assert (= (and b!3098981 c!517653) b!3098974))

(assert (= (and b!3098981 (not c!517653)) b!3098959))

(assert (= (and b!3098979 c!517655) b!3098961))

(assert (= (and b!3098979 (not c!517655)) b!3098978))

(assert (= (and b!3098961 c!517654) b!3098962))

(assert (= (and b!3098961 (not c!517654)) b!3098980))

(assert (= (and b!3098980 c!517651) b!3098966))

(assert (= (and b!3098980 (not c!517651)) b!3098970))

(assert (= (and b!3098978 (not res!1269507)) b!3098982))

(assert (= (and b!3098978 c!517647) b!3098975))

(assert (= (and b!3098978 (not c!517647)) b!3098968))

(assert (= (and b!3098968 c!517650) b!3098973))

(assert (= (and b!3098968 (not c!517650)) b!3098969))

(assert (= (and b!3098969 c!517649) b!3098977))

(assert (= (and b!3098969 (not c!517649)) b!3098971))

(assert (= (or b!3098961 b!3098978) bm!218304))

(assert (= (or b!3098961 b!3098978) bm!218305))

(assert (= (or b!3098980 b!3098978) bm!218303))

(assert (= (or b!3098961 b!3098982) bm!218300))

(assert (= (or b!3098972 b!3098969) bm!218302))

(assert (= (or b!3098981 bm!218304) bm!218306))

(assert (= (or b!3098981 bm!218300) bm!218301))

(assert (= (and d!860775 res!1269505) b!3098965))

(declare-fun m!3400049 () Bool)

(assert (=> b!3098965 m!3400049))

(declare-fun m!3400051 () Bool)

(assert (=> b!3098965 m!3400051))

(declare-fun m!3400053 () Bool)

(assert (=> bm!218303 m!3400053))

(declare-fun m!3400055 () Bool)

(assert (=> b!3098968 m!3400055))

(declare-fun m!3400057 () Bool)

(assert (=> bm!218305 m!3400057))

(declare-fun m!3400059 () Bool)

(assert (=> bm!218301 m!3400059))

(declare-fun m!3400061 () Bool)

(assert (=> bm!218306 m!3400061))

(declare-fun m!3400063 () Bool)

(assert (=> bm!218302 m!3400063))

(declare-fun m!3400065 () Bool)

(assert (=> d!860775 m!3400065))

(assert (=> d!860775 m!3399941))

(assert (=> b!3098748 d!860775))

(declare-fun b!3099059 () Bool)

(declare-fun res!1269534 () Bool)

(declare-fun e!1936865 () Bool)

(assert (=> b!3099059 (=> res!1269534 e!1936865)))

(assert (=> b!3099059 (= res!1269534 (not (is-ElementMatch!9554 lt!1055319)))))

(declare-fun e!1936860 () Bool)

(assert (=> b!3099059 (= e!1936860 e!1936865)))

(declare-fun b!3099060 () Bool)

(declare-fun e!1936863 () Bool)

(assert (=> b!3099060 (= e!1936865 e!1936863)))

(declare-fun res!1269535 () Bool)

(assert (=> b!3099060 (=> (not res!1269535) (not e!1936863))))

(declare-fun lt!1055407 () Bool)

(assert (=> b!3099060 (= res!1269535 (not lt!1055407))))

(declare-fun b!3099061 () Bool)

(declare-fun res!1269529 () Bool)

(declare-fun e!1936861 () Bool)

(assert (=> b!3099061 (=> (not res!1269529) (not e!1936861))))

(declare-fun tail!5080 (List!35419) List!35419)

(assert (=> b!3099061 (= res!1269529 (isEmpty!19642 (tail!5080 s!11993)))))

(declare-fun b!3099063 () Bool)

(declare-fun head!6854 (List!35419) C!19294)

(assert (=> b!3099063 (= e!1936861 (= (head!6854 s!11993) (c!517598 lt!1055319)))))

(declare-fun b!3099064 () Bool)

(assert (=> b!3099064 (= e!1936860 (not lt!1055407))))

(declare-fun bm!218317 () Bool)

(declare-fun call!218322 () Bool)

(assert (=> bm!218317 (= call!218322 (isEmpty!19642 s!11993))))

(declare-fun b!3099065 () Bool)

(declare-fun e!1936859 () Bool)

(assert (=> b!3099065 (= e!1936859 (= lt!1055407 call!218322))))

(declare-fun b!3099066 () Bool)

(declare-fun e!1936864 () Bool)

(declare-fun derivativeStep!2795 (Regex!9554 C!19294) Regex!9554)

(assert (=> b!3099066 (= e!1936864 (matchR!4436 (derivativeStep!2795 lt!1055319 (head!6854 s!11993)) (tail!5080 s!11993)))))

(declare-fun b!3099067 () Bool)

(declare-fun res!1269531 () Bool)

(declare-fun e!1936862 () Bool)

(assert (=> b!3099067 (=> res!1269531 e!1936862)))

(assert (=> b!3099067 (= res!1269531 (not (isEmpty!19642 (tail!5080 s!11993))))))

(declare-fun d!860777 () Bool)

(assert (=> d!860777 e!1936859))

(declare-fun c!517687 () Bool)

(assert (=> d!860777 (= c!517687 (is-EmptyExpr!9554 lt!1055319))))

(assert (=> d!860777 (= lt!1055407 e!1936864)))

(declare-fun c!517686 () Bool)

(assert (=> d!860777 (= c!517686 (isEmpty!19642 s!11993))))

(assert (=> d!860777 (validRegex!4287 lt!1055319)))

(assert (=> d!860777 (= (matchR!4436 lt!1055319 s!11993) lt!1055407)))

(declare-fun b!3099062 () Bool)

(assert (=> b!3099062 (= e!1936859 e!1936860)))

(declare-fun c!517688 () Bool)

(assert (=> b!3099062 (= c!517688 (is-EmptyLang!9554 lt!1055319))))

(declare-fun b!3099068 () Bool)

(declare-fun res!1269530 () Bool)

(assert (=> b!3099068 (=> res!1269530 e!1936865)))

(assert (=> b!3099068 (= res!1269530 e!1936861)))

(declare-fun res!1269528 () Bool)

(assert (=> b!3099068 (=> (not res!1269528) (not e!1936861))))

(assert (=> b!3099068 (= res!1269528 lt!1055407)))

(declare-fun b!3099069 () Bool)

(declare-fun res!1269532 () Bool)

(assert (=> b!3099069 (=> (not res!1269532) (not e!1936861))))

(assert (=> b!3099069 (= res!1269532 (not call!218322))))

(declare-fun b!3099070 () Bool)

(assert (=> b!3099070 (= e!1936864 (nullable!3200 lt!1055319))))

(declare-fun b!3099071 () Bool)

(assert (=> b!3099071 (= e!1936862 (not (= (head!6854 s!11993) (c!517598 lt!1055319))))))

(declare-fun b!3099072 () Bool)

(assert (=> b!3099072 (= e!1936863 e!1936862)))

(declare-fun res!1269533 () Bool)

(assert (=> b!3099072 (=> res!1269533 e!1936862)))

(assert (=> b!3099072 (= res!1269533 call!218322)))

(assert (= (and d!860777 c!517686) b!3099070))

(assert (= (and d!860777 (not c!517686)) b!3099066))

(assert (= (and d!860777 c!517687) b!3099065))

(assert (= (and d!860777 (not c!517687)) b!3099062))

(assert (= (and b!3099062 c!517688) b!3099064))

(assert (= (and b!3099062 (not c!517688)) b!3099059))

(assert (= (and b!3099059 (not res!1269534)) b!3099068))

(assert (= (and b!3099068 res!1269528) b!3099069))

(assert (= (and b!3099069 res!1269532) b!3099061))

(assert (= (and b!3099061 res!1269529) b!3099063))

(assert (= (and b!3099068 (not res!1269530)) b!3099060))

(assert (= (and b!3099060 res!1269535) b!3099072))

(assert (= (and b!3099072 (not res!1269533)) b!3099067))

(assert (= (and b!3099067 (not res!1269531)) b!3099071))

(assert (= (or b!3099065 b!3099069 b!3099072) bm!218317))

(declare-fun m!3400067 () Bool)

(assert (=> b!3099061 m!3400067))

(assert (=> b!3099061 m!3400067))

(declare-fun m!3400069 () Bool)

(assert (=> b!3099061 m!3400069))

(declare-fun m!3400071 () Bool)

(assert (=> b!3099063 m!3400071))

(assert (=> bm!218317 m!3399913))

(assert (=> d!860777 m!3399913))

(declare-fun m!3400073 () Bool)

(assert (=> d!860777 m!3400073))

(assert (=> b!3099071 m!3400071))

(declare-fun m!3400075 () Bool)

(assert (=> b!3099070 m!3400075))

(assert (=> b!3099066 m!3400071))

(assert (=> b!3099066 m!3400071))

(declare-fun m!3400077 () Bool)

(assert (=> b!3099066 m!3400077))

(assert (=> b!3099066 m!3400067))

(assert (=> b!3099066 m!3400077))

(assert (=> b!3099066 m!3400067))

(declare-fun m!3400079 () Bool)

(assert (=> b!3099066 m!3400079))

(assert (=> b!3099067 m!3400067))

(assert (=> b!3099067 m!3400067))

(assert (=> b!3099067 m!3400069))

(assert (=> b!3098749 d!860777))

(declare-fun bs!535560 () Bool)

(declare-fun b!3099109 () Bool)

(assert (= bs!535560 (and b!3099109 b!3098737)))

(declare-fun lambda!114789 () Int)

(assert (=> bs!535560 (not (= lambda!114789 lambda!114775))))

(assert (=> bs!535560 (not (= lambda!114789 lambda!114776))))

(assert (=> b!3099109 true))

(assert (=> b!3099109 true))

(declare-fun bs!535561 () Bool)

(declare-fun b!3099113 () Bool)

(assert (= bs!535561 (and b!3099113 b!3098737)))

(declare-fun lambda!114790 () Int)

(assert (=> bs!535561 (not (= lambda!114790 lambda!114775))))

(assert (=> bs!535561 (= (and (= (regOne!19620 r!17423) lt!1055318) (= (regTwo!19620 r!17423) lt!1055315)) (= lambda!114790 lambda!114776))))

(declare-fun bs!535562 () Bool)

(assert (= bs!535562 (and b!3099113 b!3099109)))

(assert (=> bs!535562 (not (= lambda!114790 lambda!114789))))

(assert (=> b!3099113 true))

(assert (=> b!3099113 true))

(declare-fun bm!218328 () Bool)

(declare-fun call!218334 () Bool)

(assert (=> bm!218328 (= call!218334 (isEmpty!19642 s!11993))))

(declare-fun b!3099107 () Bool)

(declare-fun e!1936886 () Bool)

(assert (=> b!3099107 (= e!1936886 (matchRSpec!1691 (regTwo!19621 r!17423) s!11993))))

(declare-fun b!3099108 () Bool)

(declare-fun res!1269555 () Bool)

(declare-fun e!1936887 () Bool)

(assert (=> b!3099108 (=> res!1269555 e!1936887)))

(assert (=> b!3099108 (= res!1269555 call!218334)))

(declare-fun e!1936891 () Bool)

(assert (=> b!3099108 (= e!1936891 e!1936887)))

(declare-fun call!218333 () Bool)

(assert (=> b!3099109 (= e!1936887 call!218333)))

(declare-fun b!3099110 () Bool)

(declare-fun e!1936892 () Bool)

(assert (=> b!3099110 (= e!1936892 call!218334)))

(declare-fun b!3099111 () Bool)

(declare-fun c!517699 () Bool)

(assert (=> b!3099111 (= c!517699 (is-Union!9554 r!17423))))

(declare-fun e!1936888 () Bool)

(declare-fun e!1936889 () Bool)

(assert (=> b!3099111 (= e!1936888 e!1936889)))

(declare-fun b!3099112 () Bool)

(declare-fun c!517698 () Bool)

(assert (=> b!3099112 (= c!517698 (is-ElementMatch!9554 r!17423))))

(declare-fun e!1936890 () Bool)

(assert (=> b!3099112 (= e!1936890 e!1936888)))

(assert (=> b!3099113 (= e!1936891 call!218333)))

(declare-fun b!3099114 () Bool)

(assert (=> b!3099114 (= e!1936892 e!1936890)))

(declare-fun res!1269556 () Bool)

(assert (=> b!3099114 (= res!1269556 (not (is-EmptyLang!9554 r!17423)))))

(assert (=> b!3099114 (=> (not res!1269556) (not e!1936890))))

(declare-fun b!3099116 () Bool)

(assert (=> b!3099116 (= e!1936888 (= s!11993 (Cons!35295 (c!517598 r!17423) Nil!35295)))))

(declare-fun b!3099115 () Bool)

(assert (=> b!3099115 (= e!1936889 e!1936891)))

(declare-fun c!517697 () Bool)

(assert (=> b!3099115 (= c!517697 (is-Star!9554 r!17423))))

(declare-fun d!860779 () Bool)

(declare-fun c!517700 () Bool)

(assert (=> d!860779 (= c!517700 (is-EmptyExpr!9554 r!17423))))

(assert (=> d!860779 (= (matchRSpec!1691 r!17423 s!11993) e!1936892)))

(declare-fun b!3099117 () Bool)

(assert (=> b!3099117 (= e!1936889 e!1936886)))

(declare-fun res!1269554 () Bool)

(assert (=> b!3099117 (= res!1269554 (matchRSpec!1691 (regOne!19621 r!17423) s!11993))))

(assert (=> b!3099117 (=> res!1269554 e!1936886)))

(declare-fun bm!218329 () Bool)

(assert (=> bm!218329 (= call!218333 (Exists!1817 (ite c!517697 lambda!114789 lambda!114790)))))

(assert (= (and d!860779 c!517700) b!3099110))

(assert (= (and d!860779 (not c!517700)) b!3099114))

(assert (= (and b!3099114 res!1269556) b!3099112))

(assert (= (and b!3099112 c!517698) b!3099116))

(assert (= (and b!3099112 (not c!517698)) b!3099111))

(assert (= (and b!3099111 c!517699) b!3099117))

(assert (= (and b!3099111 (not c!517699)) b!3099115))

(assert (= (and b!3099117 (not res!1269554)) b!3099107))

(assert (= (and b!3099115 c!517697) b!3099108))

(assert (= (and b!3099115 (not c!517697)) b!3099113))

(assert (= (and b!3099108 (not res!1269555)) b!3099109))

(assert (= (or b!3099109 b!3099113) bm!218329))

(assert (= (or b!3099110 b!3099108) bm!218328))

(assert (=> bm!218328 m!3399913))

(declare-fun m!3400081 () Bool)

(assert (=> b!3099107 m!3400081))

(declare-fun m!3400083 () Bool)

(assert (=> b!3099117 m!3400083))

(declare-fun m!3400085 () Bool)

(assert (=> bm!218329 m!3400085))

(assert (=> b!3098738 d!860779))

(declare-fun b!3099118 () Bool)

(declare-fun res!1269563 () Bool)

(declare-fun e!1936899 () Bool)

(assert (=> b!3099118 (=> res!1269563 e!1936899)))

(assert (=> b!3099118 (= res!1269563 (not (is-ElementMatch!9554 r!17423)))))

(declare-fun e!1936894 () Bool)

(assert (=> b!3099118 (= e!1936894 e!1936899)))

(declare-fun b!3099119 () Bool)

(declare-fun e!1936897 () Bool)

(assert (=> b!3099119 (= e!1936899 e!1936897)))

(declare-fun res!1269564 () Bool)

(assert (=> b!3099119 (=> (not res!1269564) (not e!1936897))))

(declare-fun lt!1055408 () Bool)

(assert (=> b!3099119 (= res!1269564 (not lt!1055408))))

(declare-fun b!3099120 () Bool)

(declare-fun res!1269558 () Bool)

(declare-fun e!1936895 () Bool)

(assert (=> b!3099120 (=> (not res!1269558) (not e!1936895))))

(assert (=> b!3099120 (= res!1269558 (isEmpty!19642 (tail!5080 s!11993)))))

(declare-fun b!3099122 () Bool)

(assert (=> b!3099122 (= e!1936895 (= (head!6854 s!11993) (c!517598 r!17423)))))

(declare-fun b!3099123 () Bool)

(assert (=> b!3099123 (= e!1936894 (not lt!1055408))))

(declare-fun bm!218330 () Bool)

(declare-fun call!218335 () Bool)

(assert (=> bm!218330 (= call!218335 (isEmpty!19642 s!11993))))

(declare-fun b!3099124 () Bool)

(declare-fun e!1936893 () Bool)

(assert (=> b!3099124 (= e!1936893 (= lt!1055408 call!218335))))

(declare-fun b!3099125 () Bool)

(declare-fun e!1936898 () Bool)

(assert (=> b!3099125 (= e!1936898 (matchR!4436 (derivativeStep!2795 r!17423 (head!6854 s!11993)) (tail!5080 s!11993)))))

(declare-fun b!3099126 () Bool)

(declare-fun res!1269560 () Bool)

(declare-fun e!1936896 () Bool)

(assert (=> b!3099126 (=> res!1269560 e!1936896)))

(assert (=> b!3099126 (= res!1269560 (not (isEmpty!19642 (tail!5080 s!11993))))))

(declare-fun d!860781 () Bool)

(assert (=> d!860781 e!1936893))

(declare-fun c!517702 () Bool)

(assert (=> d!860781 (= c!517702 (is-EmptyExpr!9554 r!17423))))

(assert (=> d!860781 (= lt!1055408 e!1936898)))

(declare-fun c!517701 () Bool)

(assert (=> d!860781 (= c!517701 (isEmpty!19642 s!11993))))

(assert (=> d!860781 (validRegex!4287 r!17423)))

(assert (=> d!860781 (= (matchR!4436 r!17423 s!11993) lt!1055408)))

(declare-fun b!3099121 () Bool)

(assert (=> b!3099121 (= e!1936893 e!1936894)))

(declare-fun c!517703 () Bool)

(assert (=> b!3099121 (= c!517703 (is-EmptyLang!9554 r!17423))))

(declare-fun b!3099127 () Bool)

(declare-fun res!1269559 () Bool)

(assert (=> b!3099127 (=> res!1269559 e!1936899)))

(assert (=> b!3099127 (= res!1269559 e!1936895)))

(declare-fun res!1269557 () Bool)

(assert (=> b!3099127 (=> (not res!1269557) (not e!1936895))))

(assert (=> b!3099127 (= res!1269557 lt!1055408)))

(declare-fun b!3099128 () Bool)

(declare-fun res!1269561 () Bool)

(assert (=> b!3099128 (=> (not res!1269561) (not e!1936895))))

(assert (=> b!3099128 (= res!1269561 (not call!218335))))

(declare-fun b!3099129 () Bool)

(assert (=> b!3099129 (= e!1936898 (nullable!3200 r!17423))))

(declare-fun b!3099130 () Bool)

(assert (=> b!3099130 (= e!1936896 (not (= (head!6854 s!11993) (c!517598 r!17423))))))

(declare-fun b!3099131 () Bool)

(assert (=> b!3099131 (= e!1936897 e!1936896)))

(declare-fun res!1269562 () Bool)

(assert (=> b!3099131 (=> res!1269562 e!1936896)))

(assert (=> b!3099131 (= res!1269562 call!218335)))

(assert (= (and d!860781 c!517701) b!3099129))

(assert (= (and d!860781 (not c!517701)) b!3099125))

(assert (= (and d!860781 c!517702) b!3099124))

(assert (= (and d!860781 (not c!517702)) b!3099121))

(assert (= (and b!3099121 c!517703) b!3099123))

(assert (= (and b!3099121 (not c!517703)) b!3099118))

(assert (= (and b!3099118 (not res!1269563)) b!3099127))

(assert (= (and b!3099127 res!1269557) b!3099128))

(assert (= (and b!3099128 res!1269561) b!3099120))

(assert (= (and b!3099120 res!1269558) b!3099122))

(assert (= (and b!3099127 (not res!1269559)) b!3099119))

(assert (= (and b!3099119 res!1269564) b!3099131))

(assert (= (and b!3099131 (not res!1269562)) b!3099126))

(assert (= (and b!3099126 (not res!1269560)) b!3099130))

(assert (= (or b!3099124 b!3099128 b!3099131) bm!218330))

(assert (=> b!3099120 m!3400067))

(assert (=> b!3099120 m!3400067))

(assert (=> b!3099120 m!3400069))

(assert (=> b!3099122 m!3400071))

(assert (=> bm!218330 m!3399913))

(assert (=> d!860781 m!3399913))

(assert (=> d!860781 m!3399909))

(assert (=> b!3099130 m!3400071))

(declare-fun m!3400087 () Bool)

(assert (=> b!3099129 m!3400087))

(assert (=> b!3099125 m!3400071))

(assert (=> b!3099125 m!3400071))

(declare-fun m!3400089 () Bool)

(assert (=> b!3099125 m!3400089))

(assert (=> b!3099125 m!3400067))

(assert (=> b!3099125 m!3400089))

(assert (=> b!3099125 m!3400067))

(declare-fun m!3400091 () Bool)

(assert (=> b!3099125 m!3400091))

(assert (=> b!3099126 m!3400067))

(assert (=> b!3099126 m!3400067))

(assert (=> b!3099126 m!3400069))

(assert (=> b!3098738 d!860781))

(declare-fun d!860783 () Bool)

(assert (=> d!860783 (= (matchR!4436 r!17423 s!11993) (matchRSpec!1691 r!17423 s!11993))))

(declare-fun lt!1055417 () Unit!49547)

(declare-fun choose!18326 (Regex!9554 List!35419) Unit!49547)

(assert (=> d!860783 (= lt!1055417 (choose!18326 r!17423 s!11993))))

(assert (=> d!860783 (validRegex!4287 r!17423)))

(assert (=> d!860783 (= (mainMatchTheorem!1691 r!17423 s!11993) lt!1055417)))

(declare-fun bs!535563 () Bool)

(assert (= bs!535563 d!860783))

(assert (=> bs!535563 m!3399919))

(assert (=> bs!535563 m!3399917))

(declare-fun m!3400093 () Bool)

(assert (=> bs!535563 m!3400093))

(assert (=> bs!535563 m!3399909))

(assert (=> b!3098738 d!860783))

(declare-fun d!860785 () Bool)

(assert (=> d!860785 (= (isEmptyExpr!611 lt!1055315) (is-EmptyExpr!9554 lt!1055315))))

(assert (=> b!3098740 d!860785))

(declare-fun d!860787 () Bool)

(assert (=> d!860787 (= (isEmptyExpr!611 lt!1055318) (is-EmptyExpr!9554 lt!1055318))))

(assert (=> b!3098741 d!860787))

(declare-fun d!860789 () Bool)

(assert (=> d!860789 (= (isEmpty!19642 s!11993) (is-Nil!35295 s!11993))))

(assert (=> b!3098744 d!860789))

(declare-fun d!860791 () Bool)

(assert (=> d!860791 (= (isEmptyLang!605 lt!1055315) (is-EmptyLang!9554 lt!1055315))))

(assert (=> b!3098743 d!860791))

(declare-fun bm!218338 () Bool)

(declare-fun call!218344 () Bool)

(declare-fun call!218343 () Bool)

(assert (=> bm!218338 (= call!218344 call!218343)))

(declare-fun d!860793 () Bool)

(declare-fun res!1269571 () Bool)

(declare-fun e!1936920 () Bool)

(assert (=> d!860793 (=> res!1269571 e!1936920)))

(assert (=> d!860793 (= res!1269571 (is-ElementMatch!9554 (regOne!19620 r!17423)))))

(assert (=> d!860793 (= (validRegex!4287 (regOne!19620 r!17423)) e!1936920)))

(declare-fun b!3099157 () Bool)

(declare-fun res!1269572 () Bool)

(declare-fun e!1936914 () Bool)

(assert (=> b!3099157 (=> res!1269572 e!1936914)))

(assert (=> b!3099157 (= res!1269572 (not (is-Concat!14875 (regOne!19620 r!17423))))))

(declare-fun e!1936917 () Bool)

(assert (=> b!3099157 (= e!1936917 e!1936914)))

(declare-fun b!3099158 () Bool)

(declare-fun e!1936918 () Bool)

(assert (=> b!3099158 (= e!1936914 e!1936918)))

(declare-fun res!1269570 () Bool)

(assert (=> b!3099158 (=> (not res!1269570) (not e!1936918))))

(declare-fun call!218345 () Bool)

(assert (=> b!3099158 (= res!1269570 call!218345)))

(declare-fun b!3099159 () Bool)

(declare-fun e!1936915 () Bool)

(assert (=> b!3099159 (= e!1936915 call!218343)))

(declare-fun b!3099160 () Bool)

(declare-fun res!1269568 () Bool)

(declare-fun e!1936919 () Bool)

(assert (=> b!3099160 (=> (not res!1269568) (not e!1936919))))

(assert (=> b!3099160 (= res!1269568 call!218344)))

(assert (=> b!3099160 (= e!1936917 e!1936919)))

(declare-fun b!3099161 () Bool)

(declare-fun e!1936916 () Bool)

(assert (=> b!3099161 (= e!1936920 e!1936916)))

(declare-fun c!517715 () Bool)

(assert (=> b!3099161 (= c!517715 (is-Star!9554 (regOne!19620 r!17423)))))

(declare-fun b!3099162 () Bool)

(assert (=> b!3099162 (= e!1936916 e!1936915)))

(declare-fun res!1269569 () Bool)

(assert (=> b!3099162 (= res!1269569 (not (nullable!3200 (reg!9883 (regOne!19620 r!17423)))))))

(assert (=> b!3099162 (=> (not res!1269569) (not e!1936915))))

(declare-fun b!3099163 () Bool)

(assert (=> b!3099163 (= e!1936919 call!218345)))

(declare-fun b!3099164 () Bool)

(assert (=> b!3099164 (= e!1936918 call!218344)))

(declare-fun bm!218339 () Bool)

(declare-fun c!517716 () Bool)

(assert (=> bm!218339 (= call!218343 (validRegex!4287 (ite c!517715 (reg!9883 (regOne!19620 r!17423)) (ite c!517716 (regOne!19621 (regOne!19620 r!17423)) (regTwo!19620 (regOne!19620 r!17423))))))))

(declare-fun bm!218340 () Bool)

(assert (=> bm!218340 (= call!218345 (validRegex!4287 (ite c!517716 (regTwo!19621 (regOne!19620 r!17423)) (regOne!19620 (regOne!19620 r!17423)))))))

(declare-fun b!3099165 () Bool)

(assert (=> b!3099165 (= e!1936916 e!1936917)))

(assert (=> b!3099165 (= c!517716 (is-Union!9554 (regOne!19620 r!17423)))))

(assert (= (and d!860793 (not res!1269571)) b!3099161))

(assert (= (and b!3099161 c!517715) b!3099162))

(assert (= (and b!3099161 (not c!517715)) b!3099165))

(assert (= (and b!3099162 res!1269569) b!3099159))

(assert (= (and b!3099165 c!517716) b!3099160))

(assert (= (and b!3099165 (not c!517716)) b!3099157))

(assert (= (and b!3099160 res!1269568) b!3099163))

(assert (= (and b!3099157 (not res!1269572)) b!3099158))

(assert (= (and b!3099158 res!1269570) b!3099164))

(assert (= (or b!3099160 b!3099164) bm!218338))

(assert (= (or b!3099163 b!3099158) bm!218340))

(assert (= (or b!3099159 bm!218338) bm!218339))

(declare-fun m!3400098 () Bool)

(assert (=> b!3099162 m!3400098))

(declare-fun m!3400101 () Bool)

(assert (=> bm!218339 m!3400101))

(declare-fun m!3400103 () Bool)

(assert (=> bm!218340 m!3400103))

(assert (=> b!3098736 d!860793))

(declare-fun d!860795 () Bool)

(assert (=> d!860795 (= (get!11084 lt!1055309) (v!34974 lt!1055309))))

(assert (=> b!3098736 d!860795))

(declare-fun d!860797 () Bool)

(assert (=> d!860797 (= (matchR!4436 (regTwo!19620 r!17423) (_2!20241 lt!1055310)) (matchR!4436 (simplify!509 (regTwo!19620 r!17423)) (_2!20241 lt!1055310)))))

(declare-fun lt!1055426 () Unit!49547)

(declare-fun choose!18327 (Regex!9554 List!35419) Unit!49547)

(assert (=> d!860797 (= lt!1055426 (choose!18327 (regTwo!19620 r!17423) (_2!20241 lt!1055310)))))

(assert (=> d!860797 (validRegex!4287 (regTwo!19620 r!17423))))

(assert (=> d!860797 (= (lemmaSimplifySound!323 (regTwo!19620 r!17423) (_2!20241 lt!1055310)) lt!1055426)))

(declare-fun bs!535564 () Bool)

(assert (= bs!535564 d!860797))

(declare-fun m!3400119 () Bool)

(assert (=> bs!535564 m!3400119))

(assert (=> bs!535564 m!3399903))

(assert (=> bs!535564 m!3399903))

(declare-fun m!3400125 () Bool)

(assert (=> bs!535564 m!3400125))

(assert (=> bs!535564 m!3399943))

(assert (=> bs!535564 m!3399897))

(assert (=> b!3098736 d!860797))

(declare-fun b!3099191 () Bool)

(declare-fun res!1269582 () Bool)

(declare-fun e!1936941 () Bool)

(assert (=> b!3099191 (=> res!1269582 e!1936941)))

(assert (=> b!3099191 (= res!1269582 (not (is-ElementMatch!9554 lt!1055318)))))

(declare-fun e!1936936 () Bool)

(assert (=> b!3099191 (= e!1936936 e!1936941)))

(declare-fun b!3099192 () Bool)

(declare-fun e!1936939 () Bool)

(assert (=> b!3099192 (= e!1936941 e!1936939)))

(declare-fun res!1269583 () Bool)

(assert (=> b!3099192 (=> (not res!1269583) (not e!1936939))))

(declare-fun lt!1055427 () Bool)

(assert (=> b!3099192 (= res!1269583 (not lt!1055427))))

(declare-fun b!3099193 () Bool)

(declare-fun res!1269577 () Bool)

(declare-fun e!1936937 () Bool)

(assert (=> b!3099193 (=> (not res!1269577) (not e!1936937))))

(assert (=> b!3099193 (= res!1269577 (isEmpty!19642 (tail!5080 (_1!20241 lt!1055310))))))

(declare-fun b!3099195 () Bool)

(assert (=> b!3099195 (= e!1936937 (= (head!6854 (_1!20241 lt!1055310)) (c!517598 lt!1055318)))))

(declare-fun b!3099196 () Bool)

(assert (=> b!3099196 (= e!1936936 (not lt!1055427))))

(declare-fun bm!218348 () Bool)

(declare-fun call!218353 () Bool)

(assert (=> bm!218348 (= call!218353 (isEmpty!19642 (_1!20241 lt!1055310)))))

(declare-fun b!3099197 () Bool)

(declare-fun e!1936935 () Bool)

(assert (=> b!3099197 (= e!1936935 (= lt!1055427 call!218353))))

(declare-fun b!3099198 () Bool)

(declare-fun e!1936940 () Bool)

(assert (=> b!3099198 (= e!1936940 (matchR!4436 (derivativeStep!2795 lt!1055318 (head!6854 (_1!20241 lt!1055310))) (tail!5080 (_1!20241 lt!1055310))))))

(declare-fun b!3099199 () Bool)

(declare-fun res!1269579 () Bool)

(declare-fun e!1936938 () Bool)

(assert (=> b!3099199 (=> res!1269579 e!1936938)))

(assert (=> b!3099199 (= res!1269579 (not (isEmpty!19642 (tail!5080 (_1!20241 lt!1055310)))))))

(declare-fun d!860801 () Bool)

(assert (=> d!860801 e!1936935))

(declare-fun c!517729 () Bool)

(assert (=> d!860801 (= c!517729 (is-EmptyExpr!9554 lt!1055318))))

(assert (=> d!860801 (= lt!1055427 e!1936940)))

(declare-fun c!517728 () Bool)

(assert (=> d!860801 (= c!517728 (isEmpty!19642 (_1!20241 lt!1055310)))))

(assert (=> d!860801 (validRegex!4287 lt!1055318)))

(assert (=> d!860801 (= (matchR!4436 lt!1055318 (_1!20241 lt!1055310)) lt!1055427)))

(declare-fun b!3099194 () Bool)

(assert (=> b!3099194 (= e!1936935 e!1936936)))

(declare-fun c!517730 () Bool)

(assert (=> b!3099194 (= c!517730 (is-EmptyLang!9554 lt!1055318))))

(declare-fun b!3099200 () Bool)

(declare-fun res!1269578 () Bool)

(assert (=> b!3099200 (=> res!1269578 e!1936941)))

(assert (=> b!3099200 (= res!1269578 e!1936937)))

(declare-fun res!1269576 () Bool)

(assert (=> b!3099200 (=> (not res!1269576) (not e!1936937))))

(assert (=> b!3099200 (= res!1269576 lt!1055427)))

(declare-fun b!3099201 () Bool)

(declare-fun res!1269580 () Bool)

(assert (=> b!3099201 (=> (not res!1269580) (not e!1936937))))

(assert (=> b!3099201 (= res!1269580 (not call!218353))))

(declare-fun b!3099202 () Bool)

(assert (=> b!3099202 (= e!1936940 (nullable!3200 lt!1055318))))

(declare-fun b!3099203 () Bool)

(assert (=> b!3099203 (= e!1936938 (not (= (head!6854 (_1!20241 lt!1055310)) (c!517598 lt!1055318))))))

(declare-fun b!3099204 () Bool)

(assert (=> b!3099204 (= e!1936939 e!1936938)))

(declare-fun res!1269581 () Bool)

(assert (=> b!3099204 (=> res!1269581 e!1936938)))

(assert (=> b!3099204 (= res!1269581 call!218353)))

(assert (= (and d!860801 c!517728) b!3099202))

(assert (= (and d!860801 (not c!517728)) b!3099198))

(assert (= (and d!860801 c!517729) b!3099197))

(assert (= (and d!860801 (not c!517729)) b!3099194))

(assert (= (and b!3099194 c!517730) b!3099196))

(assert (= (and b!3099194 (not c!517730)) b!3099191))

(assert (= (and b!3099191 (not res!1269582)) b!3099200))

(assert (= (and b!3099200 res!1269576) b!3099201))

(assert (= (and b!3099201 res!1269580) b!3099193))

(assert (= (and b!3099193 res!1269577) b!3099195))

(assert (= (and b!3099200 (not res!1269578)) b!3099192))

(assert (= (and b!3099192 res!1269583) b!3099204))

(assert (= (and b!3099204 (not res!1269581)) b!3099199))

(assert (= (and b!3099199 (not res!1269579)) b!3099203))

(assert (= (or b!3099197 b!3099201 b!3099204) bm!218348))

(declare-fun m!3400141 () Bool)

(assert (=> b!3099193 m!3400141))

(assert (=> b!3099193 m!3400141))

(declare-fun m!3400143 () Bool)

(assert (=> b!3099193 m!3400143))

(declare-fun m!3400145 () Bool)

(assert (=> b!3099195 m!3400145))

(declare-fun m!3400147 () Bool)

(assert (=> bm!218348 m!3400147))

(assert (=> d!860801 m!3400147))

(declare-fun m!3400149 () Bool)

(assert (=> d!860801 m!3400149))

(assert (=> b!3099203 m!3400145))

(declare-fun m!3400151 () Bool)

(assert (=> b!3099202 m!3400151))

(assert (=> b!3099198 m!3400145))

(assert (=> b!3099198 m!3400145))

(declare-fun m!3400153 () Bool)

(assert (=> b!3099198 m!3400153))

(assert (=> b!3099198 m!3400141))

(assert (=> b!3099198 m!3400153))

(assert (=> b!3099198 m!3400141))

(declare-fun m!3400155 () Bool)

(assert (=> b!3099198 m!3400155))

(assert (=> b!3099199 m!3400141))

(assert (=> b!3099199 m!3400141))

(assert (=> b!3099199 m!3400143))

(assert (=> b!3098736 d!860801))

(declare-fun b!3099205 () Bool)

(declare-fun res!1269590 () Bool)

(declare-fun e!1936948 () Bool)

(assert (=> b!3099205 (=> res!1269590 e!1936948)))

(assert (=> b!3099205 (= res!1269590 (not (is-ElementMatch!9554 (regTwo!19620 r!17423))))))

(declare-fun e!1936943 () Bool)

(assert (=> b!3099205 (= e!1936943 e!1936948)))

(declare-fun b!3099206 () Bool)

(declare-fun e!1936946 () Bool)

(assert (=> b!3099206 (= e!1936948 e!1936946)))

(declare-fun res!1269591 () Bool)

(assert (=> b!3099206 (=> (not res!1269591) (not e!1936946))))

(declare-fun lt!1055428 () Bool)

(assert (=> b!3099206 (= res!1269591 (not lt!1055428))))

(declare-fun b!3099207 () Bool)

(declare-fun res!1269585 () Bool)

(declare-fun e!1936944 () Bool)

(assert (=> b!3099207 (=> (not res!1269585) (not e!1936944))))

(assert (=> b!3099207 (= res!1269585 (isEmpty!19642 (tail!5080 (_2!20241 lt!1055310))))))

(declare-fun b!3099209 () Bool)

(assert (=> b!3099209 (= e!1936944 (= (head!6854 (_2!20241 lt!1055310)) (c!517598 (regTwo!19620 r!17423))))))

(declare-fun b!3099210 () Bool)

(assert (=> b!3099210 (= e!1936943 (not lt!1055428))))

(declare-fun bm!218349 () Bool)

(declare-fun call!218354 () Bool)

(assert (=> bm!218349 (= call!218354 (isEmpty!19642 (_2!20241 lt!1055310)))))

(declare-fun b!3099211 () Bool)

(declare-fun e!1936942 () Bool)

(assert (=> b!3099211 (= e!1936942 (= lt!1055428 call!218354))))

(declare-fun b!3099212 () Bool)

(declare-fun e!1936947 () Bool)

(assert (=> b!3099212 (= e!1936947 (matchR!4436 (derivativeStep!2795 (regTwo!19620 r!17423) (head!6854 (_2!20241 lt!1055310))) (tail!5080 (_2!20241 lt!1055310))))))

(declare-fun b!3099213 () Bool)

(declare-fun res!1269587 () Bool)

(declare-fun e!1936945 () Bool)

(assert (=> b!3099213 (=> res!1269587 e!1936945)))

(assert (=> b!3099213 (= res!1269587 (not (isEmpty!19642 (tail!5080 (_2!20241 lt!1055310)))))))

(declare-fun d!860805 () Bool)

(assert (=> d!860805 e!1936942))

(declare-fun c!517732 () Bool)

(assert (=> d!860805 (= c!517732 (is-EmptyExpr!9554 (regTwo!19620 r!17423)))))

(assert (=> d!860805 (= lt!1055428 e!1936947)))

(declare-fun c!517731 () Bool)

(assert (=> d!860805 (= c!517731 (isEmpty!19642 (_2!20241 lt!1055310)))))

(assert (=> d!860805 (validRegex!4287 (regTwo!19620 r!17423))))

(assert (=> d!860805 (= (matchR!4436 (regTwo!19620 r!17423) (_2!20241 lt!1055310)) lt!1055428)))

(declare-fun b!3099208 () Bool)

(assert (=> b!3099208 (= e!1936942 e!1936943)))

(declare-fun c!517733 () Bool)

(assert (=> b!3099208 (= c!517733 (is-EmptyLang!9554 (regTwo!19620 r!17423)))))

(declare-fun b!3099214 () Bool)

(declare-fun res!1269586 () Bool)

(assert (=> b!3099214 (=> res!1269586 e!1936948)))

(assert (=> b!3099214 (= res!1269586 e!1936944)))

(declare-fun res!1269584 () Bool)

(assert (=> b!3099214 (=> (not res!1269584) (not e!1936944))))

(assert (=> b!3099214 (= res!1269584 lt!1055428)))

(declare-fun b!3099215 () Bool)

(declare-fun res!1269588 () Bool)

(assert (=> b!3099215 (=> (not res!1269588) (not e!1936944))))

(assert (=> b!3099215 (= res!1269588 (not call!218354))))

(declare-fun b!3099216 () Bool)

(assert (=> b!3099216 (= e!1936947 (nullable!3200 (regTwo!19620 r!17423)))))

(declare-fun b!3099217 () Bool)

(assert (=> b!3099217 (= e!1936945 (not (= (head!6854 (_2!20241 lt!1055310)) (c!517598 (regTwo!19620 r!17423)))))))

(declare-fun b!3099218 () Bool)

(assert (=> b!3099218 (= e!1936946 e!1936945)))

(declare-fun res!1269589 () Bool)

(assert (=> b!3099218 (=> res!1269589 e!1936945)))

(assert (=> b!3099218 (= res!1269589 call!218354)))

(assert (= (and d!860805 c!517731) b!3099216))

(assert (= (and d!860805 (not c!517731)) b!3099212))

(assert (= (and d!860805 c!517732) b!3099211))

(assert (= (and d!860805 (not c!517732)) b!3099208))

(assert (= (and b!3099208 c!517733) b!3099210))

(assert (= (and b!3099208 (not c!517733)) b!3099205))

(assert (= (and b!3099205 (not res!1269590)) b!3099214))

(assert (= (and b!3099214 res!1269584) b!3099215))

(assert (= (and b!3099215 res!1269588) b!3099207))

(assert (= (and b!3099207 res!1269585) b!3099209))

(assert (= (and b!3099214 (not res!1269586)) b!3099206))

(assert (= (and b!3099206 res!1269591) b!3099218))

(assert (= (and b!3099218 (not res!1269589)) b!3099213))

(assert (= (and b!3099213 (not res!1269587)) b!3099217))

(assert (= (or b!3099211 b!3099215 b!3099218) bm!218349))

(declare-fun m!3400159 () Bool)

(assert (=> b!3099207 m!3400159))

(assert (=> b!3099207 m!3400159))

(declare-fun m!3400161 () Bool)

(assert (=> b!3099207 m!3400161))

(declare-fun m!3400163 () Bool)

(assert (=> b!3099209 m!3400163))

(declare-fun m!3400165 () Bool)

(assert (=> bm!218349 m!3400165))

(assert (=> d!860805 m!3400165))

(assert (=> d!860805 m!3399897))

(assert (=> b!3099217 m!3400163))

(assert (=> b!3099216 m!3400033))

(assert (=> b!3099212 m!3400163))

(assert (=> b!3099212 m!3400163))

(declare-fun m!3400167 () Bool)

(assert (=> b!3099212 m!3400167))

(assert (=> b!3099212 m!3400159))

(assert (=> b!3099212 m!3400167))

(assert (=> b!3099212 m!3400159))

(declare-fun m!3400169 () Bool)

(assert (=> b!3099212 m!3400169))

(assert (=> b!3099213 m!3400159))

(assert (=> b!3099213 m!3400159))

(assert (=> b!3099213 m!3400161))

(assert (=> b!3098736 d!860805))

(declare-fun d!860809 () Bool)

(assert (=> d!860809 (= (matchR!4436 (regOne!19620 r!17423) (_1!20241 lt!1055310)) (matchR!4436 (simplify!509 (regOne!19620 r!17423)) (_1!20241 lt!1055310)))))

(declare-fun lt!1055429 () Unit!49547)

(assert (=> d!860809 (= lt!1055429 (choose!18327 (regOne!19620 r!17423) (_1!20241 lt!1055310)))))

(assert (=> d!860809 (validRegex!4287 (regOne!19620 r!17423))))

(assert (=> d!860809 (= (lemmaSimplifySound!323 (regOne!19620 r!17423) (_1!20241 lt!1055310)) lt!1055429)))

(declare-fun bs!535566 () Bool)

(assert (= bs!535566 d!860809))

(declare-fun m!3400171 () Bool)

(assert (=> bs!535566 m!3400171))

(assert (=> bs!535566 m!3399905))

(assert (=> bs!535566 m!3399905))

(declare-fun m!3400173 () Bool)

(assert (=> bs!535566 m!3400173))

(assert (=> bs!535566 m!3399951))

(assert (=> bs!535566 m!3399941))

(assert (=> b!3098736 d!860809))

(declare-fun b!3099219 () Bool)

(declare-fun res!1269598 () Bool)

(declare-fun e!1936955 () Bool)

(assert (=> b!3099219 (=> res!1269598 e!1936955)))

(assert (=> b!3099219 (= res!1269598 (not (is-ElementMatch!9554 (regOne!19620 r!17423))))))

(declare-fun e!1936950 () Bool)

(assert (=> b!3099219 (= e!1936950 e!1936955)))

(declare-fun b!3099220 () Bool)

(declare-fun e!1936953 () Bool)

(assert (=> b!3099220 (= e!1936955 e!1936953)))

(declare-fun res!1269599 () Bool)

(assert (=> b!3099220 (=> (not res!1269599) (not e!1936953))))

(declare-fun lt!1055430 () Bool)

(assert (=> b!3099220 (= res!1269599 (not lt!1055430))))

(declare-fun b!3099221 () Bool)

(declare-fun res!1269593 () Bool)

(declare-fun e!1936951 () Bool)

(assert (=> b!3099221 (=> (not res!1269593) (not e!1936951))))

(assert (=> b!3099221 (= res!1269593 (isEmpty!19642 (tail!5080 (_1!20241 lt!1055310))))))

(declare-fun b!3099223 () Bool)

(assert (=> b!3099223 (= e!1936951 (= (head!6854 (_1!20241 lt!1055310)) (c!517598 (regOne!19620 r!17423))))))

(declare-fun b!3099224 () Bool)

(assert (=> b!3099224 (= e!1936950 (not lt!1055430))))

(declare-fun bm!218350 () Bool)

(declare-fun call!218355 () Bool)

(assert (=> bm!218350 (= call!218355 (isEmpty!19642 (_1!20241 lt!1055310)))))

(declare-fun b!3099225 () Bool)

(declare-fun e!1936949 () Bool)

(assert (=> b!3099225 (= e!1936949 (= lt!1055430 call!218355))))

(declare-fun b!3099226 () Bool)

(declare-fun e!1936954 () Bool)

(assert (=> b!3099226 (= e!1936954 (matchR!4436 (derivativeStep!2795 (regOne!19620 r!17423) (head!6854 (_1!20241 lt!1055310))) (tail!5080 (_1!20241 lt!1055310))))))

(declare-fun b!3099227 () Bool)

(declare-fun res!1269595 () Bool)

(declare-fun e!1936952 () Bool)

(assert (=> b!3099227 (=> res!1269595 e!1936952)))

(assert (=> b!3099227 (= res!1269595 (not (isEmpty!19642 (tail!5080 (_1!20241 lt!1055310)))))))

(declare-fun d!860811 () Bool)

(assert (=> d!860811 e!1936949))

(declare-fun c!517735 () Bool)

(assert (=> d!860811 (= c!517735 (is-EmptyExpr!9554 (regOne!19620 r!17423)))))

(assert (=> d!860811 (= lt!1055430 e!1936954)))

(declare-fun c!517734 () Bool)

(assert (=> d!860811 (= c!517734 (isEmpty!19642 (_1!20241 lt!1055310)))))

(assert (=> d!860811 (validRegex!4287 (regOne!19620 r!17423))))

(assert (=> d!860811 (= (matchR!4436 (regOne!19620 r!17423) (_1!20241 lt!1055310)) lt!1055430)))

(declare-fun b!3099222 () Bool)

(assert (=> b!3099222 (= e!1936949 e!1936950)))

(declare-fun c!517736 () Bool)

(assert (=> b!3099222 (= c!517736 (is-EmptyLang!9554 (regOne!19620 r!17423)))))

(declare-fun b!3099228 () Bool)

(declare-fun res!1269594 () Bool)

(assert (=> b!3099228 (=> res!1269594 e!1936955)))

(assert (=> b!3099228 (= res!1269594 e!1936951)))

(declare-fun res!1269592 () Bool)

(assert (=> b!3099228 (=> (not res!1269592) (not e!1936951))))

(assert (=> b!3099228 (= res!1269592 lt!1055430)))

(declare-fun b!3099229 () Bool)

(declare-fun res!1269596 () Bool)

(assert (=> b!3099229 (=> (not res!1269596) (not e!1936951))))

(assert (=> b!3099229 (= res!1269596 (not call!218355))))

(declare-fun b!3099230 () Bool)

(assert (=> b!3099230 (= e!1936954 (nullable!3200 (regOne!19620 r!17423)))))

(declare-fun b!3099231 () Bool)

(assert (=> b!3099231 (= e!1936952 (not (= (head!6854 (_1!20241 lt!1055310)) (c!517598 (regOne!19620 r!17423)))))))

(declare-fun b!3099232 () Bool)

(assert (=> b!3099232 (= e!1936953 e!1936952)))

(declare-fun res!1269597 () Bool)

(assert (=> b!3099232 (=> res!1269597 e!1936952)))

(assert (=> b!3099232 (= res!1269597 call!218355)))

(assert (= (and d!860811 c!517734) b!3099230))

(assert (= (and d!860811 (not c!517734)) b!3099226))

(assert (= (and d!860811 c!517735) b!3099225))

(assert (= (and d!860811 (not c!517735)) b!3099222))

(assert (= (and b!3099222 c!517736) b!3099224))

(assert (= (and b!3099222 (not c!517736)) b!3099219))

(assert (= (and b!3099219 (not res!1269598)) b!3099228))

(assert (= (and b!3099228 res!1269592) b!3099229))

(assert (= (and b!3099229 res!1269596) b!3099221))

(assert (= (and b!3099221 res!1269593) b!3099223))

(assert (= (and b!3099228 (not res!1269594)) b!3099220))

(assert (= (and b!3099220 res!1269599) b!3099232))

(assert (= (and b!3099232 (not res!1269597)) b!3099227))

(assert (= (and b!3099227 (not res!1269595)) b!3099231))

(assert (= (or b!3099225 b!3099229 b!3099232) bm!218350))

(assert (=> b!3099221 m!3400141))

(assert (=> b!3099221 m!3400141))

(assert (=> b!3099221 m!3400143))

(assert (=> b!3099223 m!3400145))

(assert (=> bm!218350 m!3400147))

(assert (=> d!860811 m!3400147))

(assert (=> d!860811 m!3399941))

(assert (=> b!3099231 m!3400145))

(assert (=> b!3099230 m!3400051))

(assert (=> b!3099226 m!3400145))

(assert (=> b!3099226 m!3400145))

(declare-fun m!3400177 () Bool)

(assert (=> b!3099226 m!3400177))

(assert (=> b!3099226 m!3400141))

(assert (=> b!3099226 m!3400177))

(assert (=> b!3099226 m!3400141))

(declare-fun m!3400179 () Bool)

(assert (=> b!3099226 m!3400179))

(assert (=> b!3099227 m!3400141))

(assert (=> b!3099227 m!3400141))

(assert (=> b!3099227 m!3400143))

(assert (=> b!3098736 d!860811))

(declare-fun b!3099233 () Bool)

(declare-fun res!1269606 () Bool)

(declare-fun e!1936962 () Bool)

(assert (=> b!3099233 (=> res!1269606 e!1936962)))

(assert (=> b!3099233 (= res!1269606 (not (is-ElementMatch!9554 lt!1055315)))))

(declare-fun e!1936957 () Bool)

(assert (=> b!3099233 (= e!1936957 e!1936962)))

(declare-fun b!3099234 () Bool)

(declare-fun e!1936960 () Bool)

(assert (=> b!3099234 (= e!1936962 e!1936960)))

(declare-fun res!1269607 () Bool)

(assert (=> b!3099234 (=> (not res!1269607) (not e!1936960))))

(declare-fun lt!1055431 () Bool)

(assert (=> b!3099234 (= res!1269607 (not lt!1055431))))

(declare-fun b!3099235 () Bool)

(declare-fun res!1269601 () Bool)

(declare-fun e!1936958 () Bool)

(assert (=> b!3099235 (=> (not res!1269601) (not e!1936958))))

(assert (=> b!3099235 (= res!1269601 (isEmpty!19642 (tail!5080 (_2!20241 lt!1055310))))))

(declare-fun b!3099237 () Bool)

(assert (=> b!3099237 (= e!1936958 (= (head!6854 (_2!20241 lt!1055310)) (c!517598 lt!1055315)))))

(declare-fun b!3099238 () Bool)

(assert (=> b!3099238 (= e!1936957 (not lt!1055431))))

(declare-fun bm!218351 () Bool)

(declare-fun call!218356 () Bool)

(assert (=> bm!218351 (= call!218356 (isEmpty!19642 (_2!20241 lt!1055310)))))

(declare-fun b!3099239 () Bool)

(declare-fun e!1936956 () Bool)

(assert (=> b!3099239 (= e!1936956 (= lt!1055431 call!218356))))

(declare-fun b!3099240 () Bool)

(declare-fun e!1936961 () Bool)

(assert (=> b!3099240 (= e!1936961 (matchR!4436 (derivativeStep!2795 lt!1055315 (head!6854 (_2!20241 lt!1055310))) (tail!5080 (_2!20241 lt!1055310))))))

(declare-fun b!3099241 () Bool)

(declare-fun res!1269603 () Bool)

(declare-fun e!1936959 () Bool)

(assert (=> b!3099241 (=> res!1269603 e!1936959)))

(assert (=> b!3099241 (= res!1269603 (not (isEmpty!19642 (tail!5080 (_2!20241 lt!1055310)))))))

(declare-fun d!860815 () Bool)

(assert (=> d!860815 e!1936956))

(declare-fun c!517738 () Bool)

(assert (=> d!860815 (= c!517738 (is-EmptyExpr!9554 lt!1055315))))

(assert (=> d!860815 (= lt!1055431 e!1936961)))

(declare-fun c!517737 () Bool)

(assert (=> d!860815 (= c!517737 (isEmpty!19642 (_2!20241 lt!1055310)))))

(assert (=> d!860815 (validRegex!4287 lt!1055315)))

(assert (=> d!860815 (= (matchR!4436 lt!1055315 (_2!20241 lt!1055310)) lt!1055431)))

(declare-fun b!3099236 () Bool)

(assert (=> b!3099236 (= e!1936956 e!1936957)))

(declare-fun c!517739 () Bool)

(assert (=> b!3099236 (= c!517739 (is-EmptyLang!9554 lt!1055315))))

(declare-fun b!3099242 () Bool)

(declare-fun res!1269602 () Bool)

(assert (=> b!3099242 (=> res!1269602 e!1936962)))

(assert (=> b!3099242 (= res!1269602 e!1936958)))

(declare-fun res!1269600 () Bool)

(assert (=> b!3099242 (=> (not res!1269600) (not e!1936958))))

(assert (=> b!3099242 (= res!1269600 lt!1055431)))

(declare-fun b!3099243 () Bool)

(declare-fun res!1269604 () Bool)

(assert (=> b!3099243 (=> (not res!1269604) (not e!1936958))))

(assert (=> b!3099243 (= res!1269604 (not call!218356))))

(declare-fun b!3099244 () Bool)

(assert (=> b!3099244 (= e!1936961 (nullable!3200 lt!1055315))))

(declare-fun b!3099245 () Bool)

(assert (=> b!3099245 (= e!1936959 (not (= (head!6854 (_2!20241 lt!1055310)) (c!517598 lt!1055315))))))

(declare-fun b!3099246 () Bool)

(assert (=> b!3099246 (= e!1936960 e!1936959)))

(declare-fun res!1269605 () Bool)

(assert (=> b!3099246 (=> res!1269605 e!1936959)))

(assert (=> b!3099246 (= res!1269605 call!218356)))

(assert (= (and d!860815 c!517737) b!3099244))

(assert (= (and d!860815 (not c!517737)) b!3099240))

(assert (= (and d!860815 c!517738) b!3099239))

(assert (= (and d!860815 (not c!517738)) b!3099236))

(assert (= (and b!3099236 c!517739) b!3099238))

(assert (= (and b!3099236 (not c!517739)) b!3099233))

(assert (= (and b!3099233 (not res!1269606)) b!3099242))

(assert (= (and b!3099242 res!1269600) b!3099243))

(assert (= (and b!3099243 res!1269604) b!3099235))

(assert (= (and b!3099235 res!1269601) b!3099237))

(assert (= (and b!3099242 (not res!1269602)) b!3099234))

(assert (= (and b!3099234 res!1269607) b!3099246))

(assert (= (and b!3099246 (not res!1269605)) b!3099241))

(assert (= (and b!3099241 (not res!1269603)) b!3099245))

(assert (= (or b!3099239 b!3099243 b!3099246) bm!218351))

(assert (=> b!3099235 m!3400159))

(assert (=> b!3099235 m!3400159))

(assert (=> b!3099235 m!3400161))

(assert (=> b!3099237 m!3400163))

(assert (=> bm!218351 m!3400165))

(assert (=> d!860815 m!3400165))

(declare-fun m!3400181 () Bool)

(assert (=> d!860815 m!3400181))

(assert (=> b!3099245 m!3400163))

(declare-fun m!3400183 () Bool)

(assert (=> b!3099244 m!3400183))

(assert (=> b!3099240 m!3400163))

(assert (=> b!3099240 m!3400163))

(declare-fun m!3400185 () Bool)

(assert (=> b!3099240 m!3400185))

(assert (=> b!3099240 m!3400159))

(assert (=> b!3099240 m!3400185))

(assert (=> b!3099240 m!3400159))

(declare-fun m!3400187 () Bool)

(assert (=> b!3099240 m!3400187))

(assert (=> b!3099241 m!3400159))

(assert (=> b!3099241 m!3400159))

(assert (=> b!3099241 m!3400161))

(assert (=> b!3098736 d!860815))

(declare-fun d!860817 () Bool)

(assert (=> d!860817 (= (matchR!4436 lt!1055319 s!11993) (matchRSpec!1691 lt!1055319 s!11993))))

(declare-fun lt!1055432 () Unit!49547)

(assert (=> d!860817 (= lt!1055432 (choose!18326 lt!1055319 s!11993))))

(assert (=> d!860817 (validRegex!4287 lt!1055319)))

(assert (=> d!860817 (= (mainMatchTheorem!1691 lt!1055319 s!11993) lt!1055432)))

(declare-fun bs!535568 () Bool)

(assert (= bs!535568 d!860817))

(assert (=> bs!535568 m!3399907))

(assert (=> bs!535568 m!3399931))

(declare-fun m!3400189 () Bool)

(assert (=> bs!535568 m!3400189))

(assert (=> bs!535568 m!3400073))

(assert (=> b!3098737 d!860817))

(declare-fun bs!535569 () Bool)

(declare-fun d!860819 () Bool)

(assert (= bs!535569 (and d!860819 b!3098737)))

(declare-fun lambda!114793 () Int)

(assert (=> bs!535569 (= lambda!114793 lambda!114775)))

(assert (=> bs!535569 (not (= lambda!114793 lambda!114776))))

(declare-fun bs!535570 () Bool)

(assert (= bs!535570 (and d!860819 b!3099109)))

(assert (=> bs!535570 (not (= lambda!114793 lambda!114789))))

(declare-fun bs!535571 () Bool)

(assert (= bs!535571 (and d!860819 b!3099113)))

(assert (=> bs!535571 (not (= lambda!114793 lambda!114790))))

(assert (=> d!860819 true))

(assert (=> d!860819 true))

(assert (=> d!860819 true))

(assert (=> d!860819 (= (isDefined!5392 (findConcatSeparation!1235 lt!1055318 lt!1055315 Nil!35295 s!11993 s!11993)) (Exists!1817 lambda!114793))))

(declare-fun lt!1055435 () Unit!49547)

(declare-fun choose!18329 (Regex!9554 Regex!9554 List!35419) Unit!49547)

(assert (=> d!860819 (= lt!1055435 (choose!18329 lt!1055318 lt!1055315 s!11993))))

(assert (=> d!860819 (validRegex!4287 lt!1055318)))

(assert (=> d!860819 (= (lemmaFindConcatSeparationEquivalentToExists!1005 lt!1055318 lt!1055315 s!11993) lt!1055435)))

(declare-fun bs!535572 () Bool)

(assert (= bs!535572 d!860819))

(assert (=> bs!535572 m!3399923))

(assert (=> bs!535572 m!3400149))

(declare-fun m!3400191 () Bool)

(assert (=> bs!535572 m!3400191))

(assert (=> bs!535572 m!3399923))

(declare-fun m!3400193 () Bool)

(assert (=> bs!535572 m!3400193))

(declare-fun m!3400195 () Bool)

(assert (=> bs!535572 m!3400195))

(assert (=> b!3098737 d!860819))

(declare-fun d!860821 () Bool)

(declare-fun isEmpty!19645 (Option!6841) Bool)

(assert (=> d!860821 (= (isDefined!5392 lt!1055309) (not (isEmpty!19645 lt!1055309)))))

(declare-fun bs!535573 () Bool)

(assert (= bs!535573 d!860821))

(declare-fun m!3400197 () Bool)

(assert (=> bs!535573 m!3400197))

(assert (=> b!3098737 d!860821))

(declare-fun bs!535574 () Bool)

(declare-fun b!3099263 () Bool)

(assert (= bs!535574 (and b!3099263 b!3098737)))

(declare-fun lambda!114794 () Int)

(assert (=> bs!535574 (not (= lambda!114794 lambda!114775))))

(declare-fun bs!535575 () Bool)

(assert (= bs!535575 (and b!3099263 b!3099113)))

(assert (=> bs!535575 (not (= lambda!114794 lambda!114790))))

(declare-fun bs!535576 () Bool)

(assert (= bs!535576 (and b!3099263 b!3099109)))

(assert (=> bs!535576 (= (and (= (reg!9883 lt!1055319) (reg!9883 r!17423)) (= lt!1055319 r!17423)) (= lambda!114794 lambda!114789))))

(assert (=> bs!535574 (not (= lambda!114794 lambda!114776))))

(declare-fun bs!535577 () Bool)

(assert (= bs!535577 (and b!3099263 d!860819)))

(assert (=> bs!535577 (not (= lambda!114794 lambda!114793))))

(assert (=> b!3099263 true))

(assert (=> b!3099263 true))

(declare-fun bs!535578 () Bool)

(declare-fun b!3099267 () Bool)

(assert (= bs!535578 (and b!3099267 b!3098737)))

(declare-fun lambda!114795 () Int)

(assert (=> bs!535578 (not (= lambda!114795 lambda!114775))))

(declare-fun bs!535579 () Bool)

(assert (= bs!535579 (and b!3099267 b!3099113)))

(assert (=> bs!535579 (= (and (= (regOne!19620 lt!1055319) (regOne!19620 r!17423)) (= (regTwo!19620 lt!1055319) (regTwo!19620 r!17423))) (= lambda!114795 lambda!114790))))

(declare-fun bs!535580 () Bool)

(assert (= bs!535580 (and b!3099267 b!3099109)))

(assert (=> bs!535580 (not (= lambda!114795 lambda!114789))))

(declare-fun bs!535581 () Bool)

(assert (= bs!535581 (and b!3099267 b!3099263)))

(assert (=> bs!535581 (not (= lambda!114795 lambda!114794))))

(assert (=> bs!535578 (= (and (= (regOne!19620 lt!1055319) lt!1055318) (= (regTwo!19620 lt!1055319) lt!1055315)) (= lambda!114795 lambda!114776))))

(declare-fun bs!535582 () Bool)

(assert (= bs!535582 (and b!3099267 d!860819)))

(assert (=> bs!535582 (not (= lambda!114795 lambda!114793))))

(assert (=> b!3099267 true))

(assert (=> b!3099267 true))

(declare-fun bm!218352 () Bool)

(declare-fun call!218358 () Bool)

(assert (=> bm!218352 (= call!218358 (isEmpty!19642 s!11993))))

(declare-fun b!3099261 () Bool)

(declare-fun e!1936971 () Bool)

(assert (=> b!3099261 (= e!1936971 (matchRSpec!1691 (regTwo!19621 lt!1055319) s!11993))))

(declare-fun b!3099262 () Bool)

(declare-fun res!1269615 () Bool)

(declare-fun e!1936972 () Bool)

(assert (=> b!3099262 (=> res!1269615 e!1936972)))

(assert (=> b!3099262 (= res!1269615 call!218358)))

(declare-fun e!1936976 () Bool)

(assert (=> b!3099262 (= e!1936976 e!1936972)))

(declare-fun call!218357 () Bool)

(assert (=> b!3099263 (= e!1936972 call!218357)))

(declare-fun b!3099264 () Bool)

(declare-fun e!1936977 () Bool)

(assert (=> b!3099264 (= e!1936977 call!218358)))

(declare-fun b!3099265 () Bool)

(declare-fun c!517746 () Bool)

(assert (=> b!3099265 (= c!517746 (is-Union!9554 lt!1055319))))

(declare-fun e!1936973 () Bool)

(declare-fun e!1936974 () Bool)

(assert (=> b!3099265 (= e!1936973 e!1936974)))

(declare-fun b!3099266 () Bool)

(declare-fun c!517745 () Bool)

(assert (=> b!3099266 (= c!517745 (is-ElementMatch!9554 lt!1055319))))

(declare-fun e!1936975 () Bool)

(assert (=> b!3099266 (= e!1936975 e!1936973)))

(assert (=> b!3099267 (= e!1936976 call!218357)))

(declare-fun b!3099268 () Bool)

(assert (=> b!3099268 (= e!1936977 e!1936975)))

(declare-fun res!1269616 () Bool)

(assert (=> b!3099268 (= res!1269616 (not (is-EmptyLang!9554 lt!1055319)))))

(assert (=> b!3099268 (=> (not res!1269616) (not e!1936975))))

(declare-fun b!3099270 () Bool)

(assert (=> b!3099270 (= e!1936973 (= s!11993 (Cons!35295 (c!517598 lt!1055319) Nil!35295)))))

(declare-fun b!3099269 () Bool)

(assert (=> b!3099269 (= e!1936974 e!1936976)))

(declare-fun c!517744 () Bool)

(assert (=> b!3099269 (= c!517744 (is-Star!9554 lt!1055319))))

(declare-fun d!860823 () Bool)

(declare-fun c!517747 () Bool)

(assert (=> d!860823 (= c!517747 (is-EmptyExpr!9554 lt!1055319))))

(assert (=> d!860823 (= (matchRSpec!1691 lt!1055319 s!11993) e!1936977)))

(declare-fun b!3099271 () Bool)

(assert (=> b!3099271 (= e!1936974 e!1936971)))

(declare-fun res!1269614 () Bool)

(assert (=> b!3099271 (= res!1269614 (matchRSpec!1691 (regOne!19621 lt!1055319) s!11993))))

(assert (=> b!3099271 (=> res!1269614 e!1936971)))

(declare-fun bm!218353 () Bool)

(assert (=> bm!218353 (= call!218357 (Exists!1817 (ite c!517744 lambda!114794 lambda!114795)))))

(assert (= (and d!860823 c!517747) b!3099264))

(assert (= (and d!860823 (not c!517747)) b!3099268))

(assert (= (and b!3099268 res!1269616) b!3099266))

(assert (= (and b!3099266 c!517745) b!3099270))

(assert (= (and b!3099266 (not c!517745)) b!3099265))

(assert (= (and b!3099265 c!517746) b!3099271))

(assert (= (and b!3099265 (not c!517746)) b!3099269))

(assert (= (and b!3099271 (not res!1269614)) b!3099261))

(assert (= (and b!3099269 c!517744) b!3099262))

(assert (= (and b!3099269 (not c!517744)) b!3099267))

(assert (= (and b!3099262 (not res!1269615)) b!3099263))

(assert (= (or b!3099263 b!3099267) bm!218353))

(assert (= (or b!3099264 b!3099262) bm!218352))

(assert (=> bm!218352 m!3399913))

(declare-fun m!3400199 () Bool)

(assert (=> b!3099261 m!3400199))

(declare-fun m!3400201 () Bool)

(assert (=> b!3099271 m!3400201))

(declare-fun m!3400203 () Bool)

(assert (=> bm!218353 m!3400203))

(assert (=> b!3098737 d!860823))

(declare-fun d!860825 () Bool)

(declare-fun choose!18331 (Int) Bool)

(assert (=> d!860825 (= (Exists!1817 lambda!114776) (choose!18331 lambda!114776))))

(declare-fun bs!535583 () Bool)

(assert (= bs!535583 d!860825))

(declare-fun m!3400205 () Bool)

(assert (=> bs!535583 m!3400205))

(assert (=> b!3098737 d!860825))

(declare-fun d!860827 () Bool)

(assert (=> d!860827 (= (Exists!1817 lambda!114775) (choose!18331 lambda!114775))))

(declare-fun bs!535584 () Bool)

(assert (= bs!535584 d!860827))

(declare-fun m!3400207 () Bool)

(assert (=> bs!535584 m!3400207))

(assert (=> b!3098737 d!860827))

(declare-fun bs!535585 () Bool)

(declare-fun d!860829 () Bool)

(assert (= bs!535585 (and d!860829 b!3098737)))

(declare-fun lambda!114804 () Int)

(assert (=> bs!535585 (= lambda!114804 lambda!114775)))

(declare-fun bs!535586 () Bool)

(assert (= bs!535586 (and d!860829 b!3099113)))

(assert (=> bs!535586 (not (= lambda!114804 lambda!114790))))

(declare-fun bs!535587 () Bool)

(assert (= bs!535587 (and d!860829 b!3099109)))

(assert (=> bs!535587 (not (= lambda!114804 lambda!114789))))

(declare-fun bs!535588 () Bool)

(assert (= bs!535588 (and d!860829 b!3099263)))

(assert (=> bs!535588 (not (= lambda!114804 lambda!114794))))

(assert (=> bs!535585 (not (= lambda!114804 lambda!114776))))

(declare-fun bs!535589 () Bool)

(assert (= bs!535589 (and d!860829 b!3099267)))

(assert (=> bs!535589 (not (= lambda!114804 lambda!114795))))

(declare-fun bs!535590 () Bool)

(assert (= bs!535590 (and d!860829 d!860819)))

(assert (=> bs!535590 (= lambda!114804 lambda!114793)))

(assert (=> d!860829 true))

(assert (=> d!860829 true))

(assert (=> d!860829 true))

(declare-fun lambda!114805 () Int)

(assert (=> bs!535585 (not (= lambda!114805 lambda!114775))))

(declare-fun bs!535591 () Bool)

(assert (= bs!535591 d!860829))

(assert (=> bs!535591 (not (= lambda!114805 lambda!114804))))

(assert (=> bs!535586 (= (and (= lt!1055318 (regOne!19620 r!17423)) (= lt!1055315 (regTwo!19620 r!17423))) (= lambda!114805 lambda!114790))))

(assert (=> bs!535587 (not (= lambda!114805 lambda!114789))))

(assert (=> bs!535588 (not (= lambda!114805 lambda!114794))))

(assert (=> bs!535585 (= lambda!114805 lambda!114776)))

(assert (=> bs!535589 (= (and (= lt!1055318 (regOne!19620 lt!1055319)) (= lt!1055315 (regTwo!19620 lt!1055319))) (= lambda!114805 lambda!114795))))

(assert (=> bs!535590 (not (= lambda!114805 lambda!114793))))

(assert (=> d!860829 true))

(assert (=> d!860829 true))

(assert (=> d!860829 true))

(assert (=> d!860829 (= (Exists!1817 lambda!114804) (Exists!1817 lambda!114805))))

(declare-fun lt!1055438 () Unit!49547)

(declare-fun choose!18332 (Regex!9554 Regex!9554 List!35419) Unit!49547)

(assert (=> d!860829 (= lt!1055438 (choose!18332 lt!1055318 lt!1055315 s!11993))))

(assert (=> d!860829 (validRegex!4287 lt!1055318)))

(assert (=> d!860829 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!571 lt!1055318 lt!1055315 s!11993) lt!1055438)))

(declare-fun m!3400209 () Bool)

(assert (=> bs!535591 m!3400209))

(declare-fun m!3400211 () Bool)

(assert (=> bs!535591 m!3400211))

(declare-fun m!3400213 () Bool)

(assert (=> bs!535591 m!3400213))

(assert (=> bs!535591 m!3400149))

(assert (=> b!3098737 d!860829))

(declare-fun b!3099331 () Bool)

(declare-fun e!1937012 () Bool)

(assert (=> b!3099331 (= e!1937012 (matchR!4436 lt!1055315 s!11993))))

(declare-fun b!3099332 () Bool)

(declare-fun res!1269656 () Bool)

(declare-fun e!1937014 () Bool)

(assert (=> b!3099332 (=> (not res!1269656) (not e!1937014))))

(declare-fun lt!1055447 () Option!6841)

(assert (=> b!3099332 (= res!1269656 (matchR!4436 lt!1055315 (_2!20241 (get!11084 lt!1055447))))))

(declare-fun b!3099334 () Bool)

(declare-fun e!1937013 () Bool)

(assert (=> b!3099334 (= e!1937013 (not (isDefined!5392 lt!1055447)))))

(declare-fun b!3099335 () Bool)

(declare-fun e!1937015 () Option!6841)

(declare-fun e!1937011 () Option!6841)

(assert (=> b!3099335 (= e!1937015 e!1937011)))

(declare-fun c!517761 () Bool)

(assert (=> b!3099335 (= c!517761 (is-Nil!35295 s!11993))))

(declare-fun b!3099336 () Bool)

(declare-fun lt!1055446 () Unit!49547)

(declare-fun lt!1055445 () Unit!49547)

(assert (=> b!3099336 (= lt!1055446 lt!1055445)))

(declare-fun ++!8497 (List!35419 List!35419) List!35419)

(assert (=> b!3099336 (= (++!8497 (++!8497 Nil!35295 (Cons!35295 (h!40715 s!11993) Nil!35295)) (t!234484 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1092 (List!35419 C!19294 List!35419 List!35419) Unit!49547)

(assert (=> b!3099336 (= lt!1055445 (lemmaMoveElementToOtherListKeepsConcatEq!1092 Nil!35295 (h!40715 s!11993) (t!234484 s!11993) s!11993))))

(assert (=> b!3099336 (= e!1937011 (findConcatSeparation!1235 lt!1055318 lt!1055315 (++!8497 Nil!35295 (Cons!35295 (h!40715 s!11993) Nil!35295)) (t!234484 s!11993) s!11993))))

(declare-fun b!3099337 () Bool)

(assert (=> b!3099337 (= e!1937011 None!6840)))

(declare-fun b!3099338 () Bool)

(assert (=> b!3099338 (= e!1937014 (= (++!8497 (_1!20241 (get!11084 lt!1055447)) (_2!20241 (get!11084 lt!1055447))) s!11993))))

(declare-fun b!3099339 () Bool)

(assert (=> b!3099339 (= e!1937015 (Some!6840 (tuple2!34219 Nil!35295 s!11993)))))

(declare-fun d!860831 () Bool)

(assert (=> d!860831 e!1937013))

(declare-fun res!1269655 () Bool)

(assert (=> d!860831 (=> res!1269655 e!1937013)))

(assert (=> d!860831 (= res!1269655 e!1937014)))

(declare-fun res!1269654 () Bool)

(assert (=> d!860831 (=> (not res!1269654) (not e!1937014))))

(assert (=> d!860831 (= res!1269654 (isDefined!5392 lt!1055447))))

(assert (=> d!860831 (= lt!1055447 e!1937015)))

(declare-fun c!517760 () Bool)

(assert (=> d!860831 (= c!517760 e!1937012)))

(declare-fun res!1269652 () Bool)

(assert (=> d!860831 (=> (not res!1269652) (not e!1937012))))

(assert (=> d!860831 (= res!1269652 (matchR!4436 lt!1055318 Nil!35295))))

(assert (=> d!860831 (validRegex!4287 lt!1055318)))

(assert (=> d!860831 (= (findConcatSeparation!1235 lt!1055318 lt!1055315 Nil!35295 s!11993 s!11993) lt!1055447)))

(declare-fun b!3099333 () Bool)

(declare-fun res!1269653 () Bool)

(assert (=> b!3099333 (=> (not res!1269653) (not e!1937014))))

(assert (=> b!3099333 (= res!1269653 (matchR!4436 lt!1055318 (_1!20241 (get!11084 lt!1055447))))))

(assert (= (and d!860831 res!1269652) b!3099331))

(assert (= (and d!860831 c!517760) b!3099339))

(assert (= (and d!860831 (not c!517760)) b!3099335))

(assert (= (and b!3099335 c!517761) b!3099337))

(assert (= (and b!3099335 (not c!517761)) b!3099336))

(assert (= (and d!860831 res!1269654) b!3099333))

(assert (= (and b!3099333 res!1269653) b!3099332))

(assert (= (and b!3099332 res!1269656) b!3099338))

(assert (= (and d!860831 (not res!1269655)) b!3099334))

(declare-fun m!3400221 () Bool)

(assert (=> b!3099334 m!3400221))

(declare-fun m!3400223 () Bool)

(assert (=> b!3099336 m!3400223))

(assert (=> b!3099336 m!3400223))

(declare-fun m!3400225 () Bool)

(assert (=> b!3099336 m!3400225))

(declare-fun m!3400227 () Bool)

(assert (=> b!3099336 m!3400227))

(assert (=> b!3099336 m!3400223))

(declare-fun m!3400229 () Bool)

(assert (=> b!3099336 m!3400229))

(declare-fun m!3400231 () Bool)

(assert (=> b!3099333 m!3400231))

(declare-fun m!3400233 () Bool)

(assert (=> b!3099333 m!3400233))

(assert (=> b!3099338 m!3400231))

(declare-fun m!3400235 () Bool)

(assert (=> b!3099338 m!3400235))

(assert (=> b!3099332 m!3400231))

(declare-fun m!3400237 () Bool)

(assert (=> b!3099332 m!3400237))

(assert (=> d!860831 m!3400221))

(declare-fun m!3400239 () Bool)

(assert (=> d!860831 m!3400239))

(assert (=> d!860831 m!3400149))

(declare-fun m!3400241 () Bool)

(assert (=> b!3099331 m!3400241))

(assert (=> b!3098737 d!860831))

(declare-fun b!3099350 () Bool)

(declare-fun e!1937018 () Bool)

(assert (=> b!3099350 (= e!1937018 tp_is_empty!16671)))

(assert (=> b!3098745 (= tp!974375 e!1937018)))

(declare-fun b!3099353 () Bool)

(declare-fun tp!974410 () Bool)

(declare-fun tp!974411 () Bool)

(assert (=> b!3099353 (= e!1937018 (and tp!974410 tp!974411))))

(declare-fun b!3099351 () Bool)

(declare-fun tp!974412 () Bool)

(declare-fun tp!974408 () Bool)

(assert (=> b!3099351 (= e!1937018 (and tp!974412 tp!974408))))

(declare-fun b!3099352 () Bool)

(declare-fun tp!974409 () Bool)

(assert (=> b!3099352 (= e!1937018 tp!974409)))

(assert (= (and b!3098745 (is-ElementMatch!9554 (reg!9883 r!17423))) b!3099350))

(assert (= (and b!3098745 (is-Concat!14875 (reg!9883 r!17423))) b!3099351))

(assert (= (and b!3098745 (is-Star!9554 (reg!9883 r!17423))) b!3099352))

(assert (= (and b!3098745 (is-Union!9554 (reg!9883 r!17423))) b!3099353))

(declare-fun b!3099354 () Bool)

(declare-fun e!1937019 () Bool)

(assert (=> b!3099354 (= e!1937019 tp_is_empty!16671)))

(assert (=> b!3098750 (= tp!974377 e!1937019)))

(declare-fun b!3099357 () Bool)

(declare-fun tp!974415 () Bool)

(declare-fun tp!974416 () Bool)

(assert (=> b!3099357 (= e!1937019 (and tp!974415 tp!974416))))

(declare-fun b!3099355 () Bool)

(declare-fun tp!974417 () Bool)

(declare-fun tp!974413 () Bool)

(assert (=> b!3099355 (= e!1937019 (and tp!974417 tp!974413))))

(declare-fun b!3099356 () Bool)

(declare-fun tp!974414 () Bool)

(assert (=> b!3099356 (= e!1937019 tp!974414)))

(assert (= (and b!3098750 (is-ElementMatch!9554 (regOne!19621 r!17423))) b!3099354))

(assert (= (and b!3098750 (is-Concat!14875 (regOne!19621 r!17423))) b!3099355))

(assert (= (and b!3098750 (is-Star!9554 (regOne!19621 r!17423))) b!3099356))

(assert (= (and b!3098750 (is-Union!9554 (regOne!19621 r!17423))) b!3099357))

(declare-fun b!3099358 () Bool)

(declare-fun e!1937020 () Bool)

(assert (=> b!3099358 (= e!1937020 tp_is_empty!16671)))

(assert (=> b!3098750 (= tp!974374 e!1937020)))

(declare-fun b!3099361 () Bool)

(declare-fun tp!974420 () Bool)

(declare-fun tp!974421 () Bool)

(assert (=> b!3099361 (= e!1937020 (and tp!974420 tp!974421))))

(declare-fun b!3099359 () Bool)

(declare-fun tp!974422 () Bool)

(declare-fun tp!974418 () Bool)

(assert (=> b!3099359 (= e!1937020 (and tp!974422 tp!974418))))

(declare-fun b!3099360 () Bool)

(declare-fun tp!974419 () Bool)

(assert (=> b!3099360 (= e!1937020 tp!974419)))

(assert (= (and b!3098750 (is-ElementMatch!9554 (regTwo!19621 r!17423))) b!3099358))

(assert (= (and b!3098750 (is-Concat!14875 (regTwo!19621 r!17423))) b!3099359))

(assert (= (and b!3098750 (is-Star!9554 (regTwo!19621 r!17423))) b!3099360))

(assert (= (and b!3098750 (is-Union!9554 (regTwo!19621 r!17423))) b!3099361))

(declare-fun b!3099362 () Bool)

(declare-fun e!1937021 () Bool)

(assert (=> b!3099362 (= e!1937021 tp_is_empty!16671)))

(assert (=> b!3098747 (= tp!974376 e!1937021)))

(declare-fun b!3099365 () Bool)

(declare-fun tp!974425 () Bool)

(declare-fun tp!974426 () Bool)

(assert (=> b!3099365 (= e!1937021 (and tp!974425 tp!974426))))

(declare-fun b!3099363 () Bool)

(declare-fun tp!974427 () Bool)

(declare-fun tp!974423 () Bool)

(assert (=> b!3099363 (= e!1937021 (and tp!974427 tp!974423))))

(declare-fun b!3099364 () Bool)

(declare-fun tp!974424 () Bool)

(assert (=> b!3099364 (= e!1937021 tp!974424)))

(assert (= (and b!3098747 (is-ElementMatch!9554 (regOne!19620 r!17423))) b!3099362))

(assert (= (and b!3098747 (is-Concat!14875 (regOne!19620 r!17423))) b!3099363))

(assert (= (and b!3098747 (is-Star!9554 (regOne!19620 r!17423))) b!3099364))

(assert (= (and b!3098747 (is-Union!9554 (regOne!19620 r!17423))) b!3099365))

(declare-fun b!3099366 () Bool)

(declare-fun e!1937022 () Bool)

(assert (=> b!3099366 (= e!1937022 tp_is_empty!16671)))

(assert (=> b!3098747 (= tp!974378 e!1937022)))

(declare-fun b!3099369 () Bool)

(declare-fun tp!974430 () Bool)

(declare-fun tp!974431 () Bool)

(assert (=> b!3099369 (= e!1937022 (and tp!974430 tp!974431))))

(declare-fun b!3099367 () Bool)

(declare-fun tp!974432 () Bool)

(declare-fun tp!974428 () Bool)

(assert (=> b!3099367 (= e!1937022 (and tp!974432 tp!974428))))

(declare-fun b!3099368 () Bool)

(declare-fun tp!974429 () Bool)

(assert (=> b!3099368 (= e!1937022 tp!974429)))

(assert (= (and b!3098747 (is-ElementMatch!9554 (regTwo!19620 r!17423))) b!3099366))

(assert (= (and b!3098747 (is-Concat!14875 (regTwo!19620 r!17423))) b!3099367))

(assert (= (and b!3098747 (is-Star!9554 (regTwo!19620 r!17423))) b!3099368))

(assert (= (and b!3098747 (is-Union!9554 (regTwo!19620 r!17423))) b!3099369))

(declare-fun b!3099374 () Bool)

(declare-fun e!1937025 () Bool)

(declare-fun tp!974435 () Bool)

(assert (=> b!3099374 (= e!1937025 (and tp_is_empty!16671 tp!974435))))

(assert (=> b!3098742 (= tp!974379 e!1937025)))

(assert (= (and b!3098742 (is-Cons!35295 (t!234484 s!11993))) b!3099374))

(push 1)

(assert (not b!3099066))

(assert (not bm!218328))

(assert (not bm!218305))

(assert (not b!3099067))

(assert (not b!3099209))

(assert (not b!3099261))

(assert (not bm!218317))

(assert (not bm!218296))

(assert (not b!3099336))

(assert (not b!3099061))

(assert (not b!3099230))

(assert (not b!3099221))

(assert (not b!3099130))

(assert (not b!3099363))

(assert (not b!3098965))

(assert (not b!3099129))

(assert (not b!3098943))

(assert (not b!3099374))

(assert (not b!3099217))

(assert (not d!860815))

(assert (not b!3099216))

(assert (not b!3099223))

(assert (not b!3099365))

(assert (not b!3099359))

(assert (not d!860781))

(assert (not bm!218294))

(assert (not b!3099227))

(assert (not bm!218273))

(assert (not d!860825))

(assert (not b!3099241))

(assert (not b!3099202))

(assert (not b!3099117))

(assert (not b!3099353))

(assert (not d!860777))

(assert (not bm!218350))

(assert (not bm!218295))

(assert (not b!3099213))

(assert (not b!3099338))

(assert (not bm!218303))

(assert (not b!3099333))

(assert (not b!3099332))

(assert (not b!3099331))

(assert (not bm!218330))

(assert (not b!3099368))

(assert (not d!860829))

(assert (not bm!218272))

(assert (not d!860797))

(assert (not b!3099352))

(assert (not b!3099071))

(assert (not b!3099271))

(assert (not b!3098861))

(assert (not b!3099355))

(assert (not b!3099369))

(assert (not b!3098968))

(assert (not d!860783))

(assert (not bm!218349))

(assert (not d!860775))

(assert (not bm!218351))

(assert (not b!3099237))

(assert (not bm!218329))

(assert (not b!3099244))

(assert (not b!3099361))

(assert (not bm!218301))

(assert (not b!3099367))

(assert (not d!860811))

(assert (not b!3099063))

(assert (not b!3099070))

(assert (not b!3099207))

(assert (not b!3098940))

(assert (not b!3099356))

(assert (not b!3099212))

(assert (not bm!218298))

(assert (not b!3099203))

(assert (not d!860817))

(assert (not b!3099240))

(assert (not bm!218348))

(assert (not bm!218340))

(assert (not bm!218352))

(assert (not b!3099125))

(assert (not bm!218306))

(assert (not b!3099162))

(assert (not d!860809))

(assert (not d!860801))

(assert (not bm!218302))

(assert (not b!3099226))

(assert (not bm!218339))

(assert (not b!3099193))

(assert (not b!3099231))

(assert (not b!3099357))

(assert (not b!3099195))

(assert (not b!3099122))

(assert (not b!3099199))

(assert (not bm!218299))

(assert (not b!3099107))

(assert (not d!860827))

(assert (not d!860805))

(assert (not b!3099351))

(assert (not b!3098870))

(assert (not bm!218353))

(assert (not b!3099235))

(assert (not b!3099364))

(assert (not b!3099245))

(assert (not b!3099334))

(assert (not b!3099120))

(assert (not b!3099360))

(assert (not d!860819))

(assert (not bm!218267))

(assert (not bm!218268))

(assert (not d!860831))

(assert (not d!860821))

(assert (not b!3099198))

(assert (not b!3099126))

(assert tp_is_empty!16671)

(assert (not d!860767))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

