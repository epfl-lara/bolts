; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293136 () Bool)

(assert start!293136)

(declare-fun b!3076070 () Bool)

(declare-fun e!1924637 () Bool)

(declare-fun e!1924635 () Bool)

(assert (=> b!3076070 (= e!1924637 e!1924635)))

(declare-fun res!1262235 () Bool)

(assert (=> b!3076070 (=> res!1262235 e!1924635)))

(declare-datatypes ((C!19236 0))(
  ( (C!19237 (val!11654 Int)) )
))
(declare-datatypes ((Regex!9525 0))(
  ( (ElementMatch!9525 (c!511815 C!19236)) (Concat!14846 (regOne!19562 Regex!9525) (regTwo!19562 Regex!9525)) (EmptyExpr!9525) (Star!9525 (reg!9854 Regex!9525)) (EmptyLang!9525) (Union!9525 (regOne!19563 Regex!9525) (regTwo!19563 Regex!9525)) )
))
(declare-fun lt!1052358 () Regex!9525)

(declare-fun isEmptyLang!576 (Regex!9525) Bool)

(assert (=> b!3076070 (= res!1262235 (isEmptyLang!576 lt!1052358))))

(declare-fun lt!1052359 () Regex!9525)

(declare-fun r!17423 () Regex!9525)

(declare-fun simplify!480 (Regex!9525) Regex!9525)

(assert (=> b!3076070 (= lt!1052359 (simplify!480 (regTwo!19562 r!17423)))))

(assert (=> b!3076070 (= lt!1052358 (simplify!480 (regOne!19562 r!17423)))))

(declare-fun b!3076071 () Bool)

(declare-fun res!1262230 () Bool)

(assert (=> b!3076071 (=> res!1262230 e!1924635)))

(assert (=> b!3076071 (= res!1262230 (isEmptyLang!576 lt!1052359))))

(declare-fun res!1262229 () Bool)

(declare-fun e!1924632 () Bool)

(assert (=> start!293136 (=> (not res!1262229) (not e!1924632))))

(declare-fun validRegex!4258 (Regex!9525) Bool)

(assert (=> start!293136 (= res!1262229 (validRegex!4258 r!17423))))

(assert (=> start!293136 e!1924632))

(declare-fun e!1924631 () Bool)

(assert (=> start!293136 e!1924631))

(declare-fun e!1924633 () Bool)

(assert (=> start!293136 e!1924633))

(declare-fun b!3076072 () Bool)

(declare-fun tp!969706 () Bool)

(assert (=> b!3076072 (= e!1924631 tp!969706)))

(declare-fun b!3076073 () Bool)

(declare-fun tp!969709 () Bool)

(declare-fun tp!969705 () Bool)

(assert (=> b!3076073 (= e!1924631 (and tp!969709 tp!969705))))

(declare-fun b!3076074 () Bool)

(declare-fun e!1924636 () Bool)

(assert (=> b!3076074 (= e!1924636 (validRegex!4258 (regTwo!19562 r!17423)))))

(declare-fun b!3076075 () Bool)

(declare-fun res!1262236 () Bool)

(assert (=> b!3076075 (=> res!1262236 e!1924637)))

(declare-datatypes ((List!35390 0))(
  ( (Nil!35266) (Cons!35266 (h!40686 C!19236) (t!234455 List!35390)) )
))
(declare-fun s!11993 () List!35390)

(declare-fun isEmpty!19593 (List!35390) Bool)

(assert (=> b!3076075 (= res!1262236 (isEmpty!19593 s!11993))))

(declare-fun b!3076076 () Bool)

(declare-fun tp_is_empty!16613 () Bool)

(assert (=> b!3076076 (= e!1924631 tp_is_empty!16613)))

(declare-fun b!3076077 () Bool)

(declare-fun res!1262234 () Bool)

(assert (=> b!3076077 (=> res!1262234 e!1924635)))

(declare-fun isEmptyExpr!582 (Regex!9525) Bool)

(assert (=> b!3076077 (= res!1262234 (isEmptyExpr!582 lt!1052358))))

(declare-fun b!3076078 () Bool)

(declare-fun tp!969707 () Bool)

(declare-fun tp!969704 () Bool)

(assert (=> b!3076078 (= e!1924631 (and tp!969707 tp!969704))))

(declare-fun b!3076079 () Bool)

(declare-fun e!1924634 () Bool)

(assert (=> b!3076079 (= e!1924634 e!1924636)))

(declare-fun res!1262233 () Bool)

(assert (=> b!3076079 (=> res!1262233 e!1924636)))

(assert (=> b!3076079 (= res!1262233 (not (validRegex!4258 (regOne!19562 r!17423))))))

(declare-datatypes ((tuple2!34176 0))(
  ( (tuple2!34177 (_1!20220 List!35390) (_2!20220 List!35390)) )
))
(declare-datatypes ((Option!6820 0))(
  ( (None!6819) (Some!6819 (v!34953 tuple2!34176)) )
))
(declare-fun isDefined!5371 (Option!6820) Bool)

(declare-fun findConcatSeparation!1214 (Regex!9525 Regex!9525 List!35390 List!35390 List!35390) Option!6820)

(assert (=> b!3076079 (isDefined!5371 (findConcatSeparation!1214 (regOne!19562 r!17423) (regTwo!19562 r!17423) Nil!35266 s!11993 s!11993))))

(declare-datatypes ((Unit!49489 0))(
  ( (Unit!49490) )
))
(declare-fun lt!1052356 () Unit!49489)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!34 (Regex!9525 Regex!9525 List!35390 List!35390 List!35390 List!35390 List!35390) Unit!49489)

(assert (=> b!3076079 (= lt!1052356 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!34 (regOne!19562 r!17423) (regTwo!19562 r!17423) s!11993 Nil!35266 s!11993 Nil!35266 s!11993))))

(declare-fun b!3076080 () Bool)

(declare-fun res!1262232 () Bool)

(assert (=> b!3076080 (=> res!1262232 e!1924635)))

(assert (=> b!3076080 (= res!1262232 (not (isEmptyExpr!582 lt!1052359)))))

(declare-fun b!3076081 () Bool)

(assert (=> b!3076081 (= e!1924632 (not e!1924637))))

(declare-fun res!1262231 () Bool)

(assert (=> b!3076081 (=> res!1262231 e!1924637)))

(declare-fun lt!1052357 () Bool)

(get-info :version)

(assert (=> b!3076081 (= res!1262231 (or lt!1052357 (not ((_ is Concat!14846) r!17423))))))

(declare-fun matchRSpec!1662 (Regex!9525 List!35390) Bool)

(assert (=> b!3076081 (= lt!1052357 (matchRSpec!1662 r!17423 s!11993))))

(declare-fun matchR!4407 (Regex!9525 List!35390) Bool)

(assert (=> b!3076081 (= lt!1052357 (matchR!4407 r!17423 s!11993))))

(declare-fun lt!1052360 () Unit!49489)

(declare-fun mainMatchTheorem!1662 (Regex!9525 List!35390) Unit!49489)

(assert (=> b!3076081 (= lt!1052360 (mainMatchTheorem!1662 r!17423 s!11993))))

(declare-fun b!3076082 () Bool)

(assert (=> b!3076082 (= e!1924635 e!1924634)))

(declare-fun res!1262228 () Bool)

(assert (=> b!3076082 (=> res!1262228 e!1924634)))

(declare-fun lt!1052353 () Bool)

(assert (=> b!3076082 (= res!1262228 (not lt!1052353))))

(assert (=> b!3076082 (= (matchR!4407 (regTwo!19562 r!17423) Nil!35266) (matchR!4407 lt!1052359 Nil!35266))))

(declare-fun lt!1052355 () Unit!49489)

(declare-fun lemmaSimplifySound!306 (Regex!9525 List!35390) Unit!49489)

(assert (=> b!3076082 (= lt!1052355 (lemmaSimplifySound!306 (regTwo!19562 r!17423) Nil!35266))))

(assert (=> b!3076082 (= lt!1052353 (matchR!4407 lt!1052358 s!11993))))

(assert (=> b!3076082 (= lt!1052353 (matchR!4407 (regOne!19562 r!17423) s!11993))))

(declare-fun lt!1052354 () Unit!49489)

(assert (=> b!3076082 (= lt!1052354 (lemmaSimplifySound!306 (regOne!19562 r!17423) s!11993))))

(declare-fun b!3076083 () Bool)

(declare-fun tp!969708 () Bool)

(assert (=> b!3076083 (= e!1924633 (and tp_is_empty!16613 tp!969708))))

(assert (= (and start!293136 res!1262229) b!3076081))

(assert (= (and b!3076081 (not res!1262231)) b!3076075))

(assert (= (and b!3076075 (not res!1262236)) b!3076070))

(assert (= (and b!3076070 (not res!1262235)) b!3076071))

(assert (= (and b!3076071 (not res!1262230)) b!3076077))

(assert (= (and b!3076077 (not res!1262234)) b!3076080))

(assert (= (and b!3076080 (not res!1262232)) b!3076082))

(assert (= (and b!3076082 (not res!1262228)) b!3076079))

(assert (= (and b!3076079 (not res!1262233)) b!3076074))

(assert (= (and start!293136 ((_ is ElementMatch!9525) r!17423)) b!3076076))

(assert (= (and start!293136 ((_ is Concat!14846) r!17423)) b!3076078))

(assert (= (and start!293136 ((_ is Star!9525) r!17423)) b!3076072))

(assert (= (and start!293136 ((_ is Union!9525) r!17423)) b!3076073))

(assert (= (and start!293136 ((_ is Cons!35266) s!11993)) b!3076083))

(declare-fun m!3387973 () Bool)

(assert (=> b!3076075 m!3387973))

(declare-fun m!3387975 () Bool)

(assert (=> start!293136 m!3387975))

(declare-fun m!3387977 () Bool)

(assert (=> b!3076077 m!3387977))

(declare-fun m!3387979 () Bool)

(assert (=> b!3076082 m!3387979))

(declare-fun m!3387981 () Bool)

(assert (=> b!3076082 m!3387981))

(declare-fun m!3387983 () Bool)

(assert (=> b!3076082 m!3387983))

(declare-fun m!3387985 () Bool)

(assert (=> b!3076082 m!3387985))

(declare-fun m!3387987 () Bool)

(assert (=> b!3076082 m!3387987))

(declare-fun m!3387989 () Bool)

(assert (=> b!3076082 m!3387989))

(declare-fun m!3387991 () Bool)

(assert (=> b!3076079 m!3387991))

(declare-fun m!3387993 () Bool)

(assert (=> b!3076079 m!3387993))

(assert (=> b!3076079 m!3387993))

(declare-fun m!3387995 () Bool)

(assert (=> b!3076079 m!3387995))

(declare-fun m!3387997 () Bool)

(assert (=> b!3076079 m!3387997))

(declare-fun m!3387999 () Bool)

(assert (=> b!3076080 m!3387999))

(declare-fun m!3388001 () Bool)

(assert (=> b!3076071 m!3388001))

(declare-fun m!3388003 () Bool)

(assert (=> b!3076070 m!3388003))

(declare-fun m!3388005 () Bool)

(assert (=> b!3076070 m!3388005))

(declare-fun m!3388007 () Bool)

(assert (=> b!3076070 m!3388007))

(declare-fun m!3388009 () Bool)

(assert (=> b!3076074 m!3388009))

(declare-fun m!3388011 () Bool)

(assert (=> b!3076081 m!3388011))

(declare-fun m!3388013 () Bool)

(assert (=> b!3076081 m!3388013))

(declare-fun m!3388015 () Bool)

(assert (=> b!3076081 m!3388015))

(check-sat (not b!3076075) tp_is_empty!16613 (not b!3076082) (not b!3076080) (not b!3076073) (not b!3076078) (not b!3076072) (not b!3076081) (not b!3076083) (not b!3076071) (not b!3076074) (not b!3076079) (not start!293136) (not b!3076077) (not b!3076070))
(check-sat)
(get-model)

(declare-fun b!3076321 () Bool)

(assert (=> b!3076321 true))

(assert (=> b!3076321 true))

(declare-fun bs!532768 () Bool)

(declare-fun b!3076318 () Bool)

(assert (= bs!532768 (and b!3076318 b!3076321)))

(declare-fun lambda!114180 () Int)

(declare-fun lambda!114179 () Int)

(assert (=> bs!532768 (not (= lambda!114180 lambda!114179))))

(assert (=> b!3076318 true))

(assert (=> b!3076318 true))

(declare-fun b!3076311 () Bool)

(declare-fun c!511881 () Bool)

(assert (=> b!3076311 (= c!511881 ((_ is ElementMatch!9525) r!17423))))

(declare-fun e!1924758 () Bool)

(declare-fun e!1924763 () Bool)

(assert (=> b!3076311 (= e!1924758 e!1924763)))

(declare-fun b!3076312 () Bool)

(declare-fun c!511882 () Bool)

(assert (=> b!3076312 (= c!511882 ((_ is Union!9525) r!17423))))

(declare-fun e!1924759 () Bool)

(assert (=> b!3076312 (= e!1924763 e!1924759)))

(declare-fun bm!214049 () Bool)

(declare-fun call!214055 () Bool)

(assert (=> bm!214049 (= call!214055 (isEmpty!19593 s!11993))))

(declare-fun b!3076313 () Bool)

(declare-fun e!1924762 () Bool)

(assert (=> b!3076313 (= e!1924759 e!1924762)))

(declare-fun res!1262336 () Bool)

(assert (=> b!3076313 (= res!1262336 (matchRSpec!1662 (regOne!19563 r!17423) s!11993))))

(assert (=> b!3076313 (=> res!1262336 e!1924762)))

(declare-fun b!3076314 () Bool)

(declare-fun e!1924760 () Bool)

(assert (=> b!3076314 (= e!1924760 call!214055)))

(declare-fun b!3076315 () Bool)

(assert (=> b!3076315 (= e!1924763 (= s!11993 (Cons!35266 (c!511815 r!17423) Nil!35266)))))

(declare-fun b!3076316 () Bool)

(assert (=> b!3076316 (= e!1924760 e!1924758)))

(declare-fun res!1262334 () Bool)

(assert (=> b!3076316 (= res!1262334 (not ((_ is EmptyLang!9525) r!17423)))))

(assert (=> b!3076316 (=> (not res!1262334) (not e!1924758))))

(declare-fun d!856964 () Bool)

(declare-fun c!511879 () Bool)

(assert (=> d!856964 (= c!511879 ((_ is EmptyExpr!9525) r!17423))))

(assert (=> d!856964 (= (matchRSpec!1662 r!17423 s!11993) e!1924760)))

(declare-fun b!3076317 () Bool)

(assert (=> b!3076317 (= e!1924762 (matchRSpec!1662 (regTwo!19563 r!17423) s!11993))))

(declare-fun bm!214050 () Bool)

(declare-fun call!214054 () Bool)

(declare-fun c!511880 () Bool)

(declare-fun Exists!1787 (Int) Bool)

(assert (=> bm!214050 (= call!214054 (Exists!1787 (ite c!511880 lambda!114179 lambda!114180)))))

(declare-fun e!1924761 () Bool)

(assert (=> b!3076318 (= e!1924761 call!214054)))

(declare-fun b!3076319 () Bool)

(assert (=> b!3076319 (= e!1924759 e!1924761)))

(assert (=> b!3076319 (= c!511880 ((_ is Star!9525) r!17423))))

(declare-fun b!3076320 () Bool)

(declare-fun res!1262335 () Bool)

(declare-fun e!1924764 () Bool)

(assert (=> b!3076320 (=> res!1262335 e!1924764)))

(assert (=> b!3076320 (= res!1262335 call!214055)))

(assert (=> b!3076320 (= e!1924761 e!1924764)))

(assert (=> b!3076321 (= e!1924764 call!214054)))

(assert (= (and d!856964 c!511879) b!3076314))

(assert (= (and d!856964 (not c!511879)) b!3076316))

(assert (= (and b!3076316 res!1262334) b!3076311))

(assert (= (and b!3076311 c!511881) b!3076315))

(assert (= (and b!3076311 (not c!511881)) b!3076312))

(assert (= (and b!3076312 c!511882) b!3076313))

(assert (= (and b!3076312 (not c!511882)) b!3076319))

(assert (= (and b!3076313 (not res!1262336)) b!3076317))

(assert (= (and b!3076319 c!511880) b!3076320))

(assert (= (and b!3076319 (not c!511880)) b!3076318))

(assert (= (and b!3076320 (not res!1262335)) b!3076321))

(assert (= (or b!3076321 b!3076318) bm!214050))

(assert (= (or b!3076314 b!3076320) bm!214049))

(assert (=> bm!214049 m!3387973))

(declare-fun m!3388081 () Bool)

(assert (=> b!3076313 m!3388081))

(declare-fun m!3388083 () Bool)

(assert (=> b!3076317 m!3388083))

(declare-fun m!3388085 () Bool)

(assert (=> bm!214050 m!3388085))

(assert (=> b!3076081 d!856964))

(declare-fun b!3076440 () Bool)

(declare-fun e!1924835 () Bool)

(declare-fun e!1924841 () Bool)

(assert (=> b!3076440 (= e!1924835 e!1924841)))

(declare-fun res!1262382 () Bool)

(assert (=> b!3076440 (=> (not res!1262382) (not e!1924841))))

(declare-fun lt!1052401 () Bool)

(assert (=> b!3076440 (= res!1262382 (not lt!1052401))))

(declare-fun b!3076441 () Bool)

(declare-fun res!1262379 () Bool)

(assert (=> b!3076441 (=> res!1262379 e!1924835)))

(declare-fun e!1924837 () Bool)

(assert (=> b!3076441 (= res!1262379 e!1924837)))

(declare-fun res!1262386 () Bool)

(assert (=> b!3076441 (=> (not res!1262386) (not e!1924837))))

(assert (=> b!3076441 (= res!1262386 lt!1052401)))

(declare-fun b!3076442 () Bool)

(declare-fun e!1924836 () Bool)

(assert (=> b!3076442 (= e!1924841 e!1924836)))

(declare-fun res!1262381 () Bool)

(assert (=> b!3076442 (=> res!1262381 e!1924836)))

(declare-fun call!214084 () Bool)

(assert (=> b!3076442 (= res!1262381 call!214084)))

(declare-fun b!3076443 () Bool)

(declare-fun e!1924840 () Bool)

(declare-fun derivativeStep!2767 (Regex!9525 C!19236) Regex!9525)

(declare-fun head!6826 (List!35390) C!19236)

(declare-fun tail!5052 (List!35390) List!35390)

(assert (=> b!3076443 (= e!1924840 (matchR!4407 (derivativeStep!2767 r!17423 (head!6826 s!11993)) (tail!5052 s!11993)))))

(declare-fun b!3076445 () Bool)

(assert (=> b!3076445 (= e!1924836 (not (= (head!6826 s!11993) (c!511815 r!17423))))))

(declare-fun b!3076446 () Bool)

(declare-fun e!1924839 () Bool)

(assert (=> b!3076446 (= e!1924839 (= lt!1052401 call!214084))))

(declare-fun b!3076447 () Bool)

(declare-fun res!1262385 () Bool)

(assert (=> b!3076447 (=> (not res!1262385) (not e!1924837))))

(assert (=> b!3076447 (= res!1262385 (not call!214084))))

(declare-fun b!3076448 () Bool)

(declare-fun res!1262380 () Bool)

(assert (=> b!3076448 (=> res!1262380 e!1924835)))

(assert (=> b!3076448 (= res!1262380 (not ((_ is ElementMatch!9525) r!17423)))))

(declare-fun e!1924838 () Bool)

(assert (=> b!3076448 (= e!1924838 e!1924835)))

(declare-fun b!3076449 () Bool)

(assert (=> b!3076449 (= e!1924837 (= (head!6826 s!11993) (c!511815 r!17423)))))

(declare-fun b!3076450 () Bool)

(declare-fun nullable!3171 (Regex!9525) Bool)

(assert (=> b!3076450 (= e!1924840 (nullable!3171 r!17423))))

(declare-fun bm!214079 () Bool)

(assert (=> bm!214079 (= call!214084 (isEmpty!19593 s!11993))))

(declare-fun b!3076451 () Bool)

(declare-fun res!1262383 () Bool)

(assert (=> b!3076451 (=> res!1262383 e!1924836)))

(assert (=> b!3076451 (= res!1262383 (not (isEmpty!19593 (tail!5052 s!11993))))))

(declare-fun b!3076452 () Bool)

(assert (=> b!3076452 (= e!1924838 (not lt!1052401))))

(declare-fun b!3076453 () Bool)

(assert (=> b!3076453 (= e!1924839 e!1924838)))

(declare-fun c!511920 () Bool)

(assert (=> b!3076453 (= c!511920 ((_ is EmptyLang!9525) r!17423))))

(declare-fun b!3076444 () Bool)

(declare-fun res!1262384 () Bool)

(assert (=> b!3076444 (=> (not res!1262384) (not e!1924837))))

(assert (=> b!3076444 (= res!1262384 (isEmpty!19593 (tail!5052 s!11993)))))

(declare-fun d!856988 () Bool)

(assert (=> d!856988 e!1924839))

(declare-fun c!511919 () Bool)

(assert (=> d!856988 (= c!511919 ((_ is EmptyExpr!9525) r!17423))))

(assert (=> d!856988 (= lt!1052401 e!1924840)))

(declare-fun c!511921 () Bool)

(assert (=> d!856988 (= c!511921 (isEmpty!19593 s!11993))))

(assert (=> d!856988 (validRegex!4258 r!17423)))

(assert (=> d!856988 (= (matchR!4407 r!17423 s!11993) lt!1052401)))

(assert (= (and d!856988 c!511921) b!3076450))

(assert (= (and d!856988 (not c!511921)) b!3076443))

(assert (= (and d!856988 c!511919) b!3076446))

(assert (= (and d!856988 (not c!511919)) b!3076453))

(assert (= (and b!3076453 c!511920) b!3076452))

(assert (= (and b!3076453 (not c!511920)) b!3076448))

(assert (= (and b!3076448 (not res!1262380)) b!3076441))

(assert (= (and b!3076441 res!1262386) b!3076447))

(assert (= (and b!3076447 res!1262385) b!3076444))

(assert (= (and b!3076444 res!1262384) b!3076449))

(assert (= (and b!3076441 (not res!1262379)) b!3076440))

(assert (= (and b!3076440 res!1262382) b!3076442))

(assert (= (and b!3076442 (not res!1262381)) b!3076451))

(assert (= (and b!3076451 (not res!1262383)) b!3076445))

(assert (= (or b!3076446 b!3076447 b!3076442) bm!214079))

(declare-fun m!3388133 () Bool)

(assert (=> b!3076449 m!3388133))

(assert (=> bm!214079 m!3387973))

(assert (=> d!856988 m!3387973))

(assert (=> d!856988 m!3387975))

(declare-fun m!3388135 () Bool)

(assert (=> b!3076444 m!3388135))

(assert (=> b!3076444 m!3388135))

(declare-fun m!3388137 () Bool)

(assert (=> b!3076444 m!3388137))

(assert (=> b!3076443 m!3388133))

(assert (=> b!3076443 m!3388133))

(declare-fun m!3388139 () Bool)

(assert (=> b!3076443 m!3388139))

(assert (=> b!3076443 m!3388135))

(assert (=> b!3076443 m!3388139))

(assert (=> b!3076443 m!3388135))

(declare-fun m!3388141 () Bool)

(assert (=> b!3076443 m!3388141))

(declare-fun m!3388143 () Bool)

(assert (=> b!3076450 m!3388143))

(assert (=> b!3076451 m!3388135))

(assert (=> b!3076451 m!3388135))

(assert (=> b!3076451 m!3388137))

(assert (=> b!3076445 m!3388133))

(assert (=> b!3076081 d!856988))

(declare-fun d!857002 () Bool)

(assert (=> d!857002 (= (matchR!4407 r!17423 s!11993) (matchRSpec!1662 r!17423 s!11993))))

(declare-fun lt!1052404 () Unit!49489)

(declare-fun choose!18222 (Regex!9525 List!35390) Unit!49489)

(assert (=> d!857002 (= lt!1052404 (choose!18222 r!17423 s!11993))))

(assert (=> d!857002 (validRegex!4258 r!17423)))

(assert (=> d!857002 (= (mainMatchTheorem!1662 r!17423 s!11993) lt!1052404)))

(declare-fun bs!532770 () Bool)

(assert (= bs!532770 d!857002))

(assert (=> bs!532770 m!3388013))

(assert (=> bs!532770 m!3388011))

(declare-fun m!3388145 () Bool)

(assert (=> bs!532770 m!3388145))

(assert (=> bs!532770 m!3387975))

(assert (=> b!3076081 d!857002))

(declare-fun d!857004 () Bool)

(assert (=> d!857004 (= (isEmptyLang!576 lt!1052359) ((_ is EmptyLang!9525) lt!1052359))))

(assert (=> b!3076071 d!857004))

(declare-fun d!857006 () Bool)

(assert (=> d!857006 (= (matchR!4407 (regTwo!19562 r!17423) Nil!35266) (matchR!4407 (simplify!480 (regTwo!19562 r!17423)) Nil!35266))))

(declare-fun lt!1052407 () Unit!49489)

(declare-fun choose!18223 (Regex!9525 List!35390) Unit!49489)

(assert (=> d!857006 (= lt!1052407 (choose!18223 (regTwo!19562 r!17423) Nil!35266))))

(assert (=> d!857006 (validRegex!4258 (regTwo!19562 r!17423))))

(assert (=> d!857006 (= (lemmaSimplifySound!306 (regTwo!19562 r!17423) Nil!35266) lt!1052407)))

(declare-fun bs!532771 () Bool)

(assert (= bs!532771 d!857006))

(assert (=> bs!532771 m!3388005))

(assert (=> bs!532771 m!3388005))

(declare-fun m!3388147 () Bool)

(assert (=> bs!532771 m!3388147))

(assert (=> bs!532771 m!3387985))

(assert (=> bs!532771 m!3388009))

(declare-fun m!3388149 () Bool)

(assert (=> bs!532771 m!3388149))

(assert (=> b!3076082 d!857006))

(declare-fun d!857008 () Bool)

(assert (=> d!857008 (= (matchR!4407 (regOne!19562 r!17423) s!11993) (matchR!4407 (simplify!480 (regOne!19562 r!17423)) s!11993))))

(declare-fun lt!1052408 () Unit!49489)

(assert (=> d!857008 (= lt!1052408 (choose!18223 (regOne!19562 r!17423) s!11993))))

(assert (=> d!857008 (validRegex!4258 (regOne!19562 r!17423))))

(assert (=> d!857008 (= (lemmaSimplifySound!306 (regOne!19562 r!17423) s!11993) lt!1052408)))

(declare-fun bs!532772 () Bool)

(assert (= bs!532772 d!857008))

(assert (=> bs!532772 m!3388007))

(assert (=> bs!532772 m!3388007))

(declare-fun m!3388151 () Bool)

(assert (=> bs!532772 m!3388151))

(assert (=> bs!532772 m!3387979))

(assert (=> bs!532772 m!3387991))

(declare-fun m!3388153 () Bool)

(assert (=> bs!532772 m!3388153))

(assert (=> b!3076082 d!857008))

(declare-fun b!3076454 () Bool)

(declare-fun e!1924842 () Bool)

(declare-fun e!1924848 () Bool)

(assert (=> b!3076454 (= e!1924842 e!1924848)))

(declare-fun res!1262390 () Bool)

(assert (=> b!3076454 (=> (not res!1262390) (not e!1924848))))

(declare-fun lt!1052409 () Bool)

(assert (=> b!3076454 (= res!1262390 (not lt!1052409))))

(declare-fun b!3076455 () Bool)

(declare-fun res!1262387 () Bool)

(assert (=> b!3076455 (=> res!1262387 e!1924842)))

(declare-fun e!1924844 () Bool)

(assert (=> b!3076455 (= res!1262387 e!1924844)))

(declare-fun res!1262394 () Bool)

(assert (=> b!3076455 (=> (not res!1262394) (not e!1924844))))

(assert (=> b!3076455 (= res!1262394 lt!1052409)))

(declare-fun b!3076456 () Bool)

(declare-fun e!1924843 () Bool)

(assert (=> b!3076456 (= e!1924848 e!1924843)))

(declare-fun res!1262389 () Bool)

(assert (=> b!3076456 (=> res!1262389 e!1924843)))

(declare-fun call!214085 () Bool)

(assert (=> b!3076456 (= res!1262389 call!214085)))

(declare-fun b!3076457 () Bool)

(declare-fun e!1924847 () Bool)

(assert (=> b!3076457 (= e!1924847 (matchR!4407 (derivativeStep!2767 (regOne!19562 r!17423) (head!6826 s!11993)) (tail!5052 s!11993)))))

(declare-fun b!3076459 () Bool)

(assert (=> b!3076459 (= e!1924843 (not (= (head!6826 s!11993) (c!511815 (regOne!19562 r!17423)))))))

(declare-fun b!3076460 () Bool)

(declare-fun e!1924846 () Bool)

(assert (=> b!3076460 (= e!1924846 (= lt!1052409 call!214085))))

(declare-fun b!3076461 () Bool)

(declare-fun res!1262393 () Bool)

(assert (=> b!3076461 (=> (not res!1262393) (not e!1924844))))

(assert (=> b!3076461 (= res!1262393 (not call!214085))))

(declare-fun b!3076462 () Bool)

(declare-fun res!1262388 () Bool)

(assert (=> b!3076462 (=> res!1262388 e!1924842)))

(assert (=> b!3076462 (= res!1262388 (not ((_ is ElementMatch!9525) (regOne!19562 r!17423))))))

(declare-fun e!1924845 () Bool)

(assert (=> b!3076462 (= e!1924845 e!1924842)))

(declare-fun b!3076463 () Bool)

(assert (=> b!3076463 (= e!1924844 (= (head!6826 s!11993) (c!511815 (regOne!19562 r!17423))))))

(declare-fun b!3076464 () Bool)

(assert (=> b!3076464 (= e!1924847 (nullable!3171 (regOne!19562 r!17423)))))

(declare-fun bm!214080 () Bool)

(assert (=> bm!214080 (= call!214085 (isEmpty!19593 s!11993))))

(declare-fun b!3076465 () Bool)

(declare-fun res!1262391 () Bool)

(assert (=> b!3076465 (=> res!1262391 e!1924843)))

(assert (=> b!3076465 (= res!1262391 (not (isEmpty!19593 (tail!5052 s!11993))))))

(declare-fun b!3076466 () Bool)

(assert (=> b!3076466 (= e!1924845 (not lt!1052409))))

(declare-fun b!3076467 () Bool)

(assert (=> b!3076467 (= e!1924846 e!1924845)))

(declare-fun c!511923 () Bool)

(assert (=> b!3076467 (= c!511923 ((_ is EmptyLang!9525) (regOne!19562 r!17423)))))

(declare-fun b!3076458 () Bool)

(declare-fun res!1262392 () Bool)

(assert (=> b!3076458 (=> (not res!1262392) (not e!1924844))))

(assert (=> b!3076458 (= res!1262392 (isEmpty!19593 (tail!5052 s!11993)))))

(declare-fun d!857010 () Bool)

(assert (=> d!857010 e!1924846))

(declare-fun c!511922 () Bool)

(assert (=> d!857010 (= c!511922 ((_ is EmptyExpr!9525) (regOne!19562 r!17423)))))

(assert (=> d!857010 (= lt!1052409 e!1924847)))

(declare-fun c!511924 () Bool)

(assert (=> d!857010 (= c!511924 (isEmpty!19593 s!11993))))

(assert (=> d!857010 (validRegex!4258 (regOne!19562 r!17423))))

(assert (=> d!857010 (= (matchR!4407 (regOne!19562 r!17423) s!11993) lt!1052409)))

(assert (= (and d!857010 c!511924) b!3076464))

(assert (= (and d!857010 (not c!511924)) b!3076457))

(assert (= (and d!857010 c!511922) b!3076460))

(assert (= (and d!857010 (not c!511922)) b!3076467))

(assert (= (and b!3076467 c!511923) b!3076466))

(assert (= (and b!3076467 (not c!511923)) b!3076462))

(assert (= (and b!3076462 (not res!1262388)) b!3076455))

(assert (= (and b!3076455 res!1262394) b!3076461))

(assert (= (and b!3076461 res!1262393) b!3076458))

(assert (= (and b!3076458 res!1262392) b!3076463))

(assert (= (and b!3076455 (not res!1262387)) b!3076454))

(assert (= (and b!3076454 res!1262390) b!3076456))

(assert (= (and b!3076456 (not res!1262389)) b!3076465))

(assert (= (and b!3076465 (not res!1262391)) b!3076459))

(assert (= (or b!3076460 b!3076461 b!3076456) bm!214080))

(assert (=> b!3076463 m!3388133))

(assert (=> bm!214080 m!3387973))

(assert (=> d!857010 m!3387973))

(assert (=> d!857010 m!3387991))

(assert (=> b!3076458 m!3388135))

(assert (=> b!3076458 m!3388135))

(assert (=> b!3076458 m!3388137))

(assert (=> b!3076457 m!3388133))

(assert (=> b!3076457 m!3388133))

(declare-fun m!3388155 () Bool)

(assert (=> b!3076457 m!3388155))

(assert (=> b!3076457 m!3388135))

(assert (=> b!3076457 m!3388155))

(assert (=> b!3076457 m!3388135))

(declare-fun m!3388157 () Bool)

(assert (=> b!3076457 m!3388157))

(declare-fun m!3388159 () Bool)

(assert (=> b!3076464 m!3388159))

(assert (=> b!3076465 m!3388135))

(assert (=> b!3076465 m!3388135))

(assert (=> b!3076465 m!3388137))

(assert (=> b!3076459 m!3388133))

(assert (=> b!3076082 d!857010))

(declare-fun b!3076468 () Bool)

(declare-fun e!1924849 () Bool)

(declare-fun e!1924855 () Bool)

(assert (=> b!3076468 (= e!1924849 e!1924855)))

(declare-fun res!1262398 () Bool)

(assert (=> b!3076468 (=> (not res!1262398) (not e!1924855))))

(declare-fun lt!1052410 () Bool)

(assert (=> b!3076468 (= res!1262398 (not lt!1052410))))

(declare-fun b!3076469 () Bool)

(declare-fun res!1262395 () Bool)

(assert (=> b!3076469 (=> res!1262395 e!1924849)))

(declare-fun e!1924851 () Bool)

(assert (=> b!3076469 (= res!1262395 e!1924851)))

(declare-fun res!1262402 () Bool)

(assert (=> b!3076469 (=> (not res!1262402) (not e!1924851))))

(assert (=> b!3076469 (= res!1262402 lt!1052410)))

(declare-fun b!3076470 () Bool)

(declare-fun e!1924850 () Bool)

(assert (=> b!3076470 (= e!1924855 e!1924850)))

(declare-fun res!1262397 () Bool)

(assert (=> b!3076470 (=> res!1262397 e!1924850)))

(declare-fun call!214086 () Bool)

(assert (=> b!3076470 (= res!1262397 call!214086)))

(declare-fun b!3076471 () Bool)

(declare-fun e!1924854 () Bool)

(assert (=> b!3076471 (= e!1924854 (matchR!4407 (derivativeStep!2767 lt!1052359 (head!6826 Nil!35266)) (tail!5052 Nil!35266)))))

(declare-fun b!3076473 () Bool)

(assert (=> b!3076473 (= e!1924850 (not (= (head!6826 Nil!35266) (c!511815 lt!1052359))))))

(declare-fun b!3076474 () Bool)

(declare-fun e!1924853 () Bool)

(assert (=> b!3076474 (= e!1924853 (= lt!1052410 call!214086))))

(declare-fun b!3076475 () Bool)

(declare-fun res!1262401 () Bool)

(assert (=> b!3076475 (=> (not res!1262401) (not e!1924851))))

(assert (=> b!3076475 (= res!1262401 (not call!214086))))

(declare-fun b!3076476 () Bool)

(declare-fun res!1262396 () Bool)

(assert (=> b!3076476 (=> res!1262396 e!1924849)))

(assert (=> b!3076476 (= res!1262396 (not ((_ is ElementMatch!9525) lt!1052359)))))

(declare-fun e!1924852 () Bool)

(assert (=> b!3076476 (= e!1924852 e!1924849)))

(declare-fun b!3076477 () Bool)

(assert (=> b!3076477 (= e!1924851 (= (head!6826 Nil!35266) (c!511815 lt!1052359)))))

(declare-fun b!3076478 () Bool)

(assert (=> b!3076478 (= e!1924854 (nullable!3171 lt!1052359))))

(declare-fun bm!214081 () Bool)

(assert (=> bm!214081 (= call!214086 (isEmpty!19593 Nil!35266))))

(declare-fun b!3076479 () Bool)

(declare-fun res!1262399 () Bool)

(assert (=> b!3076479 (=> res!1262399 e!1924850)))

(assert (=> b!3076479 (= res!1262399 (not (isEmpty!19593 (tail!5052 Nil!35266))))))

(declare-fun b!3076480 () Bool)

(assert (=> b!3076480 (= e!1924852 (not lt!1052410))))

(declare-fun b!3076481 () Bool)

(assert (=> b!3076481 (= e!1924853 e!1924852)))

(declare-fun c!511926 () Bool)

(assert (=> b!3076481 (= c!511926 ((_ is EmptyLang!9525) lt!1052359))))

(declare-fun b!3076472 () Bool)

(declare-fun res!1262400 () Bool)

(assert (=> b!3076472 (=> (not res!1262400) (not e!1924851))))

(assert (=> b!3076472 (= res!1262400 (isEmpty!19593 (tail!5052 Nil!35266)))))

(declare-fun d!857012 () Bool)

(assert (=> d!857012 e!1924853))

(declare-fun c!511925 () Bool)

(assert (=> d!857012 (= c!511925 ((_ is EmptyExpr!9525) lt!1052359))))

(assert (=> d!857012 (= lt!1052410 e!1924854)))

(declare-fun c!511927 () Bool)

(assert (=> d!857012 (= c!511927 (isEmpty!19593 Nil!35266))))

(assert (=> d!857012 (validRegex!4258 lt!1052359)))

(assert (=> d!857012 (= (matchR!4407 lt!1052359 Nil!35266) lt!1052410)))

(assert (= (and d!857012 c!511927) b!3076478))

(assert (= (and d!857012 (not c!511927)) b!3076471))

(assert (= (and d!857012 c!511925) b!3076474))

(assert (= (and d!857012 (not c!511925)) b!3076481))

(assert (= (and b!3076481 c!511926) b!3076480))

(assert (= (and b!3076481 (not c!511926)) b!3076476))

(assert (= (and b!3076476 (not res!1262396)) b!3076469))

(assert (= (and b!3076469 res!1262402) b!3076475))

(assert (= (and b!3076475 res!1262401) b!3076472))

(assert (= (and b!3076472 res!1262400) b!3076477))

(assert (= (and b!3076469 (not res!1262395)) b!3076468))

(assert (= (and b!3076468 res!1262398) b!3076470))

(assert (= (and b!3076470 (not res!1262397)) b!3076479))

(assert (= (and b!3076479 (not res!1262399)) b!3076473))

(assert (= (or b!3076474 b!3076475 b!3076470) bm!214081))

(declare-fun m!3388161 () Bool)

(assert (=> b!3076477 m!3388161))

(declare-fun m!3388163 () Bool)

(assert (=> bm!214081 m!3388163))

(assert (=> d!857012 m!3388163))

(declare-fun m!3388165 () Bool)

(assert (=> d!857012 m!3388165))

(declare-fun m!3388167 () Bool)

(assert (=> b!3076472 m!3388167))

(assert (=> b!3076472 m!3388167))

(declare-fun m!3388169 () Bool)

(assert (=> b!3076472 m!3388169))

(assert (=> b!3076471 m!3388161))

(assert (=> b!3076471 m!3388161))

(declare-fun m!3388171 () Bool)

(assert (=> b!3076471 m!3388171))

(assert (=> b!3076471 m!3388167))

(assert (=> b!3076471 m!3388171))

(assert (=> b!3076471 m!3388167))

(declare-fun m!3388173 () Bool)

(assert (=> b!3076471 m!3388173))

(declare-fun m!3388175 () Bool)

(assert (=> b!3076478 m!3388175))

(assert (=> b!3076479 m!3388167))

(assert (=> b!3076479 m!3388167))

(assert (=> b!3076479 m!3388169))

(assert (=> b!3076473 m!3388161))

(assert (=> b!3076082 d!857012))

(declare-fun b!3076492 () Bool)

(declare-fun e!1924862 () Bool)

(declare-fun e!1924868 () Bool)

(assert (=> b!3076492 (= e!1924862 e!1924868)))

(declare-fun res!1262408 () Bool)

(assert (=> b!3076492 (=> (not res!1262408) (not e!1924868))))

(declare-fun lt!1052417 () Bool)

(assert (=> b!3076492 (= res!1262408 (not lt!1052417))))

(declare-fun b!3076493 () Bool)

(declare-fun res!1262405 () Bool)

(assert (=> b!3076493 (=> res!1262405 e!1924862)))

(declare-fun e!1924864 () Bool)

(assert (=> b!3076493 (= res!1262405 e!1924864)))

(declare-fun res!1262412 () Bool)

(assert (=> b!3076493 (=> (not res!1262412) (not e!1924864))))

(assert (=> b!3076493 (= res!1262412 lt!1052417)))

(declare-fun b!3076494 () Bool)

(declare-fun e!1924863 () Bool)

(assert (=> b!3076494 (= e!1924868 e!1924863)))

(declare-fun res!1262407 () Bool)

(assert (=> b!3076494 (=> res!1262407 e!1924863)))

(declare-fun call!214087 () Bool)

(assert (=> b!3076494 (= res!1262407 call!214087)))

(declare-fun b!3076495 () Bool)

(declare-fun e!1924867 () Bool)

(assert (=> b!3076495 (= e!1924867 (matchR!4407 (derivativeStep!2767 (regTwo!19562 r!17423) (head!6826 Nil!35266)) (tail!5052 Nil!35266)))))

(declare-fun b!3076497 () Bool)

(assert (=> b!3076497 (= e!1924863 (not (= (head!6826 Nil!35266) (c!511815 (regTwo!19562 r!17423)))))))

(declare-fun b!3076498 () Bool)

(declare-fun e!1924866 () Bool)

(assert (=> b!3076498 (= e!1924866 (= lt!1052417 call!214087))))

(declare-fun b!3076499 () Bool)

(declare-fun res!1262411 () Bool)

(assert (=> b!3076499 (=> (not res!1262411) (not e!1924864))))

(assert (=> b!3076499 (= res!1262411 (not call!214087))))

(declare-fun b!3076500 () Bool)

(declare-fun res!1262406 () Bool)

(assert (=> b!3076500 (=> res!1262406 e!1924862)))

(assert (=> b!3076500 (= res!1262406 (not ((_ is ElementMatch!9525) (regTwo!19562 r!17423))))))

(declare-fun e!1924865 () Bool)

(assert (=> b!3076500 (= e!1924865 e!1924862)))

(declare-fun b!3076501 () Bool)

(assert (=> b!3076501 (= e!1924864 (= (head!6826 Nil!35266) (c!511815 (regTwo!19562 r!17423))))))

(declare-fun b!3076502 () Bool)

(assert (=> b!3076502 (= e!1924867 (nullable!3171 (regTwo!19562 r!17423)))))

(declare-fun bm!214082 () Bool)

(assert (=> bm!214082 (= call!214087 (isEmpty!19593 Nil!35266))))

(declare-fun b!3076503 () Bool)

(declare-fun res!1262409 () Bool)

(assert (=> b!3076503 (=> res!1262409 e!1924863)))

(assert (=> b!3076503 (= res!1262409 (not (isEmpty!19593 (tail!5052 Nil!35266))))))

(declare-fun b!3076504 () Bool)

(assert (=> b!3076504 (= e!1924865 (not lt!1052417))))

(declare-fun b!3076505 () Bool)

(assert (=> b!3076505 (= e!1924866 e!1924865)))

(declare-fun c!511933 () Bool)

(assert (=> b!3076505 (= c!511933 ((_ is EmptyLang!9525) (regTwo!19562 r!17423)))))

(declare-fun b!3076496 () Bool)

(declare-fun res!1262410 () Bool)

(assert (=> b!3076496 (=> (not res!1262410) (not e!1924864))))

(assert (=> b!3076496 (= res!1262410 (isEmpty!19593 (tail!5052 Nil!35266)))))

(declare-fun d!857014 () Bool)

(assert (=> d!857014 e!1924866))

(declare-fun c!511932 () Bool)

(assert (=> d!857014 (= c!511932 ((_ is EmptyExpr!9525) (regTwo!19562 r!17423)))))

(assert (=> d!857014 (= lt!1052417 e!1924867)))

(declare-fun c!511934 () Bool)

(assert (=> d!857014 (= c!511934 (isEmpty!19593 Nil!35266))))

(assert (=> d!857014 (validRegex!4258 (regTwo!19562 r!17423))))

(assert (=> d!857014 (= (matchR!4407 (regTwo!19562 r!17423) Nil!35266) lt!1052417)))

(assert (= (and d!857014 c!511934) b!3076502))

(assert (= (and d!857014 (not c!511934)) b!3076495))

(assert (= (and d!857014 c!511932) b!3076498))

(assert (= (and d!857014 (not c!511932)) b!3076505))

(assert (= (and b!3076505 c!511933) b!3076504))

(assert (= (and b!3076505 (not c!511933)) b!3076500))

(assert (= (and b!3076500 (not res!1262406)) b!3076493))

(assert (= (and b!3076493 res!1262412) b!3076499))

(assert (= (and b!3076499 res!1262411) b!3076496))

(assert (= (and b!3076496 res!1262410) b!3076501))

(assert (= (and b!3076493 (not res!1262405)) b!3076492))

(assert (= (and b!3076492 res!1262408) b!3076494))

(assert (= (and b!3076494 (not res!1262407)) b!3076503))

(assert (= (and b!3076503 (not res!1262409)) b!3076497))

(assert (= (or b!3076498 b!3076499 b!3076494) bm!214082))

(assert (=> b!3076501 m!3388161))

(assert (=> bm!214082 m!3388163))

(assert (=> d!857014 m!3388163))

(assert (=> d!857014 m!3388009))

(assert (=> b!3076496 m!3388167))

(assert (=> b!3076496 m!3388167))

(assert (=> b!3076496 m!3388169))

(assert (=> b!3076495 m!3388161))

(assert (=> b!3076495 m!3388161))

(declare-fun m!3388177 () Bool)

(assert (=> b!3076495 m!3388177))

(assert (=> b!3076495 m!3388167))

(assert (=> b!3076495 m!3388177))

(assert (=> b!3076495 m!3388167))

(declare-fun m!3388179 () Bool)

(assert (=> b!3076495 m!3388179))

(declare-fun m!3388181 () Bool)

(assert (=> b!3076502 m!3388181))

(assert (=> b!3076503 m!3388167))

(assert (=> b!3076503 m!3388167))

(assert (=> b!3076503 m!3388169))

(assert (=> b!3076497 m!3388161))

(assert (=> b!3076082 d!857014))

(declare-fun b!3076514 () Bool)

(declare-fun e!1924873 () Bool)

(declare-fun e!1924879 () Bool)

(assert (=> b!3076514 (= e!1924873 e!1924879)))

(declare-fun res!1262424 () Bool)

(assert (=> b!3076514 (=> (not res!1262424) (not e!1924879))))

(declare-fun lt!1052418 () Bool)

(assert (=> b!3076514 (= res!1262424 (not lt!1052418))))

(declare-fun b!3076515 () Bool)

(declare-fun res!1262421 () Bool)

(assert (=> b!3076515 (=> res!1262421 e!1924873)))

(declare-fun e!1924875 () Bool)

(assert (=> b!3076515 (= res!1262421 e!1924875)))

(declare-fun res!1262428 () Bool)

(assert (=> b!3076515 (=> (not res!1262428) (not e!1924875))))

(assert (=> b!3076515 (= res!1262428 lt!1052418)))

(declare-fun b!3076516 () Bool)

(declare-fun e!1924874 () Bool)

(assert (=> b!3076516 (= e!1924879 e!1924874)))

(declare-fun res!1262423 () Bool)

(assert (=> b!3076516 (=> res!1262423 e!1924874)))

(declare-fun call!214088 () Bool)

(assert (=> b!3076516 (= res!1262423 call!214088)))

(declare-fun b!3076517 () Bool)

(declare-fun e!1924878 () Bool)

(assert (=> b!3076517 (= e!1924878 (matchR!4407 (derivativeStep!2767 lt!1052358 (head!6826 s!11993)) (tail!5052 s!11993)))))

(declare-fun b!3076519 () Bool)

(assert (=> b!3076519 (= e!1924874 (not (= (head!6826 s!11993) (c!511815 lt!1052358))))))

(declare-fun b!3076520 () Bool)

(declare-fun e!1924877 () Bool)

(assert (=> b!3076520 (= e!1924877 (= lt!1052418 call!214088))))

(declare-fun b!3076521 () Bool)

(declare-fun res!1262427 () Bool)

(assert (=> b!3076521 (=> (not res!1262427) (not e!1924875))))

(assert (=> b!3076521 (= res!1262427 (not call!214088))))

(declare-fun b!3076522 () Bool)

(declare-fun res!1262422 () Bool)

(assert (=> b!3076522 (=> res!1262422 e!1924873)))

(assert (=> b!3076522 (= res!1262422 (not ((_ is ElementMatch!9525) lt!1052358)))))

(declare-fun e!1924876 () Bool)

(assert (=> b!3076522 (= e!1924876 e!1924873)))

(declare-fun b!3076523 () Bool)

(assert (=> b!3076523 (= e!1924875 (= (head!6826 s!11993) (c!511815 lt!1052358)))))

(declare-fun b!3076524 () Bool)

(assert (=> b!3076524 (= e!1924878 (nullable!3171 lt!1052358))))

(declare-fun bm!214083 () Bool)

(assert (=> bm!214083 (= call!214088 (isEmpty!19593 s!11993))))

(declare-fun b!3076525 () Bool)

(declare-fun res!1262425 () Bool)

(assert (=> b!3076525 (=> res!1262425 e!1924874)))

(assert (=> b!3076525 (= res!1262425 (not (isEmpty!19593 (tail!5052 s!11993))))))

(declare-fun b!3076526 () Bool)

(assert (=> b!3076526 (= e!1924876 (not lt!1052418))))

(declare-fun b!3076527 () Bool)

(assert (=> b!3076527 (= e!1924877 e!1924876)))

(declare-fun c!511936 () Bool)

(assert (=> b!3076527 (= c!511936 ((_ is EmptyLang!9525) lt!1052358))))

(declare-fun b!3076518 () Bool)

(declare-fun res!1262426 () Bool)

(assert (=> b!3076518 (=> (not res!1262426) (not e!1924875))))

(assert (=> b!3076518 (= res!1262426 (isEmpty!19593 (tail!5052 s!11993)))))

(declare-fun d!857016 () Bool)

(assert (=> d!857016 e!1924877))

(declare-fun c!511935 () Bool)

(assert (=> d!857016 (= c!511935 ((_ is EmptyExpr!9525) lt!1052358))))

(assert (=> d!857016 (= lt!1052418 e!1924878)))

(declare-fun c!511937 () Bool)

(assert (=> d!857016 (= c!511937 (isEmpty!19593 s!11993))))

(assert (=> d!857016 (validRegex!4258 lt!1052358)))

(assert (=> d!857016 (= (matchR!4407 lt!1052358 s!11993) lt!1052418)))

(assert (= (and d!857016 c!511937) b!3076524))

(assert (= (and d!857016 (not c!511937)) b!3076517))

(assert (= (and d!857016 c!511935) b!3076520))

(assert (= (and d!857016 (not c!511935)) b!3076527))

(assert (= (and b!3076527 c!511936) b!3076526))

(assert (= (and b!3076527 (not c!511936)) b!3076522))

(assert (= (and b!3076522 (not res!1262422)) b!3076515))

(assert (= (and b!3076515 res!1262428) b!3076521))

(assert (= (and b!3076521 res!1262427) b!3076518))

(assert (= (and b!3076518 res!1262426) b!3076523))

(assert (= (and b!3076515 (not res!1262421)) b!3076514))

(assert (= (and b!3076514 res!1262424) b!3076516))

(assert (= (and b!3076516 (not res!1262423)) b!3076525))

(assert (= (and b!3076525 (not res!1262425)) b!3076519))

(assert (= (or b!3076520 b!3076521 b!3076516) bm!214083))

(assert (=> b!3076523 m!3388133))

(assert (=> bm!214083 m!3387973))

(assert (=> d!857016 m!3387973))

(declare-fun m!3388183 () Bool)

(assert (=> d!857016 m!3388183))

(assert (=> b!3076518 m!3388135))

(assert (=> b!3076518 m!3388135))

(assert (=> b!3076518 m!3388137))

(assert (=> b!3076517 m!3388133))

(assert (=> b!3076517 m!3388133))

(declare-fun m!3388185 () Bool)

(assert (=> b!3076517 m!3388185))

(assert (=> b!3076517 m!3388135))

(assert (=> b!3076517 m!3388185))

(assert (=> b!3076517 m!3388135))

(declare-fun m!3388187 () Bool)

(assert (=> b!3076517 m!3388187))

(declare-fun m!3388189 () Bool)

(assert (=> b!3076524 m!3388189))

(assert (=> b!3076525 m!3388135))

(assert (=> b!3076525 m!3388135))

(assert (=> b!3076525 m!3388137))

(assert (=> b!3076519 m!3388133))

(assert (=> b!3076082 d!857016))

(declare-fun d!857018 () Bool)

(assert (=> d!857018 (= (isEmptyExpr!582 lt!1052358) ((_ is EmptyExpr!9525) lt!1052358))))

(assert (=> b!3076077 d!857018))

(declare-fun bm!214090 () Bool)

(declare-fun call!214097 () Bool)

(declare-fun c!511945 () Bool)

(assert (=> bm!214090 (= call!214097 (validRegex!4258 (ite c!511945 (regOne!19563 r!17423) (regTwo!19562 r!17423))))))

(declare-fun b!3076555 () Bool)

(declare-fun e!1924900 () Bool)

(declare-fun e!1924901 () Bool)

(assert (=> b!3076555 (= e!1924900 e!1924901)))

(declare-fun res!1262445 () Bool)

(assert (=> b!3076555 (=> (not res!1262445) (not e!1924901))))

(declare-fun call!214095 () Bool)

(assert (=> b!3076555 (= res!1262445 call!214095)))

(declare-fun c!511944 () Bool)

(declare-fun call!214096 () Bool)

(declare-fun bm!214091 () Bool)

(assert (=> bm!214091 (= call!214096 (validRegex!4258 (ite c!511944 (reg!9854 r!17423) (ite c!511945 (regTwo!19563 r!17423) (regOne!19562 r!17423)))))))

(declare-fun b!3076556 () Bool)

(declare-fun res!1262448 () Bool)

(assert (=> b!3076556 (=> res!1262448 e!1924900)))

(assert (=> b!3076556 (= res!1262448 (not ((_ is Concat!14846) r!17423)))))

(declare-fun e!1924899 () Bool)

(assert (=> b!3076556 (= e!1924899 e!1924900)))

(declare-fun b!3076557 () Bool)

(declare-fun e!1924902 () Bool)

(declare-fun e!1924903 () Bool)

(assert (=> b!3076557 (= e!1924902 e!1924903)))

(assert (=> b!3076557 (= c!511944 ((_ is Star!9525) r!17423))))

(declare-fun b!3076558 () Bool)

(declare-fun e!1924905 () Bool)

(assert (=> b!3076558 (= e!1924903 e!1924905)))

(declare-fun res!1262447 () Bool)

(assert (=> b!3076558 (= res!1262447 (not (nullable!3171 (reg!9854 r!17423))))))

(assert (=> b!3076558 (=> (not res!1262447) (not e!1924905))))

(declare-fun b!3076559 () Bool)

(assert (=> b!3076559 (= e!1924903 e!1924899)))

(assert (=> b!3076559 (= c!511945 ((_ is Union!9525) r!17423))))

(declare-fun bm!214092 () Bool)

(assert (=> bm!214092 (= call!214095 call!214096)))

(declare-fun b!3076561 () Bool)

(assert (=> b!3076561 (= e!1924905 call!214096)))

(declare-fun b!3076562 () Bool)

(declare-fun res!1262446 () Bool)

(declare-fun e!1924904 () Bool)

(assert (=> b!3076562 (=> (not res!1262446) (not e!1924904))))

(assert (=> b!3076562 (= res!1262446 call!214097)))

(assert (=> b!3076562 (= e!1924899 e!1924904)))

(declare-fun b!3076563 () Bool)

(assert (=> b!3076563 (= e!1924904 call!214095)))

(declare-fun d!857020 () Bool)

(declare-fun res!1262444 () Bool)

(assert (=> d!857020 (=> res!1262444 e!1924902)))

(assert (=> d!857020 (= res!1262444 ((_ is ElementMatch!9525) r!17423))))

(assert (=> d!857020 (= (validRegex!4258 r!17423) e!1924902)))

(declare-fun b!3076560 () Bool)

(assert (=> b!3076560 (= e!1924901 call!214097)))

(assert (= (and d!857020 (not res!1262444)) b!3076557))

(assert (= (and b!3076557 c!511944) b!3076558))

(assert (= (and b!3076557 (not c!511944)) b!3076559))

(assert (= (and b!3076558 res!1262447) b!3076561))

(assert (= (and b!3076559 c!511945) b!3076562))

(assert (= (and b!3076559 (not c!511945)) b!3076556))

(assert (= (and b!3076562 res!1262446) b!3076563))

(assert (= (and b!3076556 (not res!1262448)) b!3076555))

(assert (= (and b!3076555 res!1262445) b!3076560))

(assert (= (or b!3076562 b!3076560) bm!214090))

(assert (= (or b!3076563 b!3076555) bm!214092))

(assert (= (or b!3076561 bm!214092) bm!214091))

(declare-fun m!3388213 () Bool)

(assert (=> bm!214090 m!3388213))

(declare-fun m!3388215 () Bool)

(assert (=> bm!214091 m!3388215))

(declare-fun m!3388217 () Bool)

(assert (=> b!3076558 m!3388217))

(assert (=> start!293136 d!857020))

(declare-fun bm!214093 () Bool)

(declare-fun call!214100 () Bool)

(declare-fun c!511947 () Bool)

(assert (=> bm!214093 (= call!214100 (validRegex!4258 (ite c!511947 (regOne!19563 (regOne!19562 r!17423)) (regTwo!19562 (regOne!19562 r!17423)))))))

(declare-fun b!3076564 () Bool)

(declare-fun e!1924907 () Bool)

(declare-fun e!1924908 () Bool)

(assert (=> b!3076564 (= e!1924907 e!1924908)))

(declare-fun res!1262450 () Bool)

(assert (=> b!3076564 (=> (not res!1262450) (not e!1924908))))

(declare-fun call!214098 () Bool)

(assert (=> b!3076564 (= res!1262450 call!214098)))

(declare-fun c!511946 () Bool)

(declare-fun call!214099 () Bool)

(declare-fun bm!214094 () Bool)

(assert (=> bm!214094 (= call!214099 (validRegex!4258 (ite c!511946 (reg!9854 (regOne!19562 r!17423)) (ite c!511947 (regTwo!19563 (regOne!19562 r!17423)) (regOne!19562 (regOne!19562 r!17423))))))))

(declare-fun b!3076565 () Bool)

(declare-fun res!1262453 () Bool)

(assert (=> b!3076565 (=> res!1262453 e!1924907)))

(assert (=> b!3076565 (= res!1262453 (not ((_ is Concat!14846) (regOne!19562 r!17423))))))

(declare-fun e!1924906 () Bool)

(assert (=> b!3076565 (= e!1924906 e!1924907)))

(declare-fun b!3076566 () Bool)

(declare-fun e!1924909 () Bool)

(declare-fun e!1924910 () Bool)

(assert (=> b!3076566 (= e!1924909 e!1924910)))

(assert (=> b!3076566 (= c!511946 ((_ is Star!9525) (regOne!19562 r!17423)))))

(declare-fun b!3076567 () Bool)

(declare-fun e!1924912 () Bool)

(assert (=> b!3076567 (= e!1924910 e!1924912)))

(declare-fun res!1262452 () Bool)

(assert (=> b!3076567 (= res!1262452 (not (nullable!3171 (reg!9854 (regOne!19562 r!17423)))))))

(assert (=> b!3076567 (=> (not res!1262452) (not e!1924912))))

(declare-fun b!3076568 () Bool)

(assert (=> b!3076568 (= e!1924910 e!1924906)))

(assert (=> b!3076568 (= c!511947 ((_ is Union!9525) (regOne!19562 r!17423)))))

(declare-fun bm!214095 () Bool)

(assert (=> bm!214095 (= call!214098 call!214099)))

(declare-fun b!3076570 () Bool)

(assert (=> b!3076570 (= e!1924912 call!214099)))

(declare-fun b!3076571 () Bool)

(declare-fun res!1262451 () Bool)

(declare-fun e!1924911 () Bool)

(assert (=> b!3076571 (=> (not res!1262451) (not e!1924911))))

(assert (=> b!3076571 (= res!1262451 call!214100)))

(assert (=> b!3076571 (= e!1924906 e!1924911)))

(declare-fun b!3076572 () Bool)

(assert (=> b!3076572 (= e!1924911 call!214098)))

(declare-fun d!857024 () Bool)

(declare-fun res!1262449 () Bool)

(assert (=> d!857024 (=> res!1262449 e!1924909)))

(assert (=> d!857024 (= res!1262449 ((_ is ElementMatch!9525) (regOne!19562 r!17423)))))

(assert (=> d!857024 (= (validRegex!4258 (regOne!19562 r!17423)) e!1924909)))

(declare-fun b!3076569 () Bool)

(assert (=> b!3076569 (= e!1924908 call!214100)))

(assert (= (and d!857024 (not res!1262449)) b!3076566))

(assert (= (and b!3076566 c!511946) b!3076567))

(assert (= (and b!3076566 (not c!511946)) b!3076568))

(assert (= (and b!3076567 res!1262452) b!3076570))

(assert (= (and b!3076568 c!511947) b!3076571))

(assert (= (and b!3076568 (not c!511947)) b!3076565))

(assert (= (and b!3076571 res!1262451) b!3076572))

(assert (= (and b!3076565 (not res!1262453)) b!3076564))

(assert (= (and b!3076564 res!1262450) b!3076569))

(assert (= (or b!3076571 b!3076569) bm!214093))

(assert (= (or b!3076572 b!3076564) bm!214095))

(assert (= (or b!3076570 bm!214095) bm!214094))

(declare-fun m!3388219 () Bool)

(assert (=> bm!214093 m!3388219))

(declare-fun m!3388221 () Bool)

(assert (=> bm!214094 m!3388221))

(declare-fun m!3388223 () Bool)

(assert (=> b!3076567 m!3388223))

(assert (=> b!3076079 d!857024))

(declare-fun d!857026 () Bool)

(declare-fun isEmpty!19594 (Option!6820) Bool)

(assert (=> d!857026 (= (isDefined!5371 (findConcatSeparation!1214 (regOne!19562 r!17423) (regTwo!19562 r!17423) Nil!35266 s!11993 s!11993)) (not (isEmpty!19594 (findConcatSeparation!1214 (regOne!19562 r!17423) (regTwo!19562 r!17423) Nil!35266 s!11993 s!11993))))))

(declare-fun bs!532774 () Bool)

(assert (= bs!532774 d!857026))

(assert (=> bs!532774 m!3387993))

(declare-fun m!3388227 () Bool)

(assert (=> bs!532774 m!3388227))

(assert (=> b!3076079 d!857026))

(declare-fun b!3076635 () Bool)

(declare-fun e!1924944 () Option!6820)

(declare-fun e!1924942 () Option!6820)

(assert (=> b!3076635 (= e!1924944 e!1924942)))

(declare-fun c!511954 () Bool)

(assert (=> b!3076635 (= c!511954 ((_ is Nil!35266) s!11993))))

(declare-fun b!3076636 () Bool)

(declare-fun e!1924940 () Bool)

(declare-fun lt!1052431 () Option!6820)

(assert (=> b!3076636 (= e!1924940 (not (isDefined!5371 lt!1052431)))))

(declare-fun b!3076637 () Bool)

(assert (=> b!3076637 (= e!1924942 None!6819)))

(declare-fun b!3076638 () Bool)

(assert (=> b!3076638 (= e!1924944 (Some!6819 (tuple2!34177 Nil!35266 s!11993)))))

(declare-fun b!3076639 () Bool)

(declare-fun lt!1052433 () Unit!49489)

(declare-fun lt!1052432 () Unit!49489)

(assert (=> b!3076639 (= lt!1052433 lt!1052432)))

(declare-fun ++!8475 (List!35390 List!35390) List!35390)

(assert (=> b!3076639 (= (++!8475 (++!8475 Nil!35266 (Cons!35266 (h!40686 s!11993) Nil!35266)) (t!234455 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1070 (List!35390 C!19236 List!35390 List!35390) Unit!49489)

(assert (=> b!3076639 (= lt!1052432 (lemmaMoveElementToOtherListKeepsConcatEq!1070 Nil!35266 (h!40686 s!11993) (t!234455 s!11993) s!11993))))

(assert (=> b!3076639 (= e!1924942 (findConcatSeparation!1214 (regOne!19562 r!17423) (regTwo!19562 r!17423) (++!8475 Nil!35266 (Cons!35266 (h!40686 s!11993) Nil!35266)) (t!234455 s!11993) s!11993))))

(declare-fun b!3076641 () Bool)

(declare-fun res!1262469 () Bool)

(declare-fun e!1924941 () Bool)

(assert (=> b!3076641 (=> (not res!1262469) (not e!1924941))))

(declare-fun get!11048 (Option!6820) tuple2!34176)

(assert (=> b!3076641 (= res!1262469 (matchR!4407 (regOne!19562 r!17423) (_1!20220 (get!11048 lt!1052431))))))

(declare-fun b!3076642 () Bool)

(declare-fun e!1924943 () Bool)

(assert (=> b!3076642 (= e!1924943 (matchR!4407 (regTwo!19562 r!17423) s!11993))))

(declare-fun b!3076643 () Bool)

(declare-fun res!1262472 () Bool)

(assert (=> b!3076643 (=> (not res!1262472) (not e!1924941))))

(assert (=> b!3076643 (= res!1262472 (matchR!4407 (regTwo!19562 r!17423) (_2!20220 (get!11048 lt!1052431))))))

(declare-fun d!857028 () Bool)

(assert (=> d!857028 e!1924940))

(declare-fun res!1262473 () Bool)

(assert (=> d!857028 (=> res!1262473 e!1924940)))

(assert (=> d!857028 (= res!1262473 e!1924941)))

(declare-fun res!1262471 () Bool)

(assert (=> d!857028 (=> (not res!1262471) (not e!1924941))))

(assert (=> d!857028 (= res!1262471 (isDefined!5371 lt!1052431))))

(assert (=> d!857028 (= lt!1052431 e!1924944)))

(declare-fun c!511955 () Bool)

(assert (=> d!857028 (= c!511955 e!1924943)))

(declare-fun res!1262470 () Bool)

(assert (=> d!857028 (=> (not res!1262470) (not e!1924943))))

(assert (=> d!857028 (= res!1262470 (matchR!4407 (regOne!19562 r!17423) Nil!35266))))

(assert (=> d!857028 (validRegex!4258 (regOne!19562 r!17423))))

(assert (=> d!857028 (= (findConcatSeparation!1214 (regOne!19562 r!17423) (regTwo!19562 r!17423) Nil!35266 s!11993 s!11993) lt!1052431)))

(declare-fun b!3076640 () Bool)

(assert (=> b!3076640 (= e!1924941 (= (++!8475 (_1!20220 (get!11048 lt!1052431)) (_2!20220 (get!11048 lt!1052431))) s!11993))))

(assert (= (and d!857028 res!1262470) b!3076642))

(assert (= (and d!857028 c!511955) b!3076638))

(assert (= (and d!857028 (not c!511955)) b!3076635))

(assert (= (and b!3076635 c!511954) b!3076637))

(assert (= (and b!3076635 (not c!511954)) b!3076639))

(assert (= (and d!857028 res!1262471) b!3076641))

(assert (= (and b!3076641 res!1262469) b!3076643))

(assert (= (and b!3076643 res!1262472) b!3076640))

(assert (= (and d!857028 (not res!1262473)) b!3076636))

(declare-fun m!3388235 () Bool)

(assert (=> b!3076643 m!3388235))

(declare-fun m!3388237 () Bool)

(assert (=> b!3076643 m!3388237))

(assert (=> b!3076641 m!3388235))

(declare-fun m!3388239 () Bool)

(assert (=> b!3076641 m!3388239))

(declare-fun m!3388241 () Bool)

(assert (=> d!857028 m!3388241))

(declare-fun m!3388243 () Bool)

(assert (=> d!857028 m!3388243))

(assert (=> d!857028 m!3387991))

(assert (=> b!3076636 m!3388241))

(declare-fun m!3388245 () Bool)

(assert (=> b!3076639 m!3388245))

(assert (=> b!3076639 m!3388245))

(declare-fun m!3388247 () Bool)

(assert (=> b!3076639 m!3388247))

(declare-fun m!3388249 () Bool)

(assert (=> b!3076639 m!3388249))

(assert (=> b!3076639 m!3388245))

(declare-fun m!3388251 () Bool)

(assert (=> b!3076639 m!3388251))

(assert (=> b!3076640 m!3388235))

(declare-fun m!3388253 () Bool)

(assert (=> b!3076640 m!3388253))

(declare-fun m!3388255 () Bool)

(assert (=> b!3076642 m!3388255))

(assert (=> b!3076079 d!857028))

(declare-fun d!857036 () Bool)

(assert (=> d!857036 (isDefined!5371 (findConcatSeparation!1214 (regOne!19562 r!17423) (regTwo!19562 r!17423) Nil!35266 s!11993 s!11993))))

(declare-fun lt!1052436 () Unit!49489)

(declare-fun choose!18225 (Regex!9525 Regex!9525 List!35390 List!35390 List!35390 List!35390 List!35390) Unit!49489)

(assert (=> d!857036 (= lt!1052436 (choose!18225 (regOne!19562 r!17423) (regTwo!19562 r!17423) s!11993 Nil!35266 s!11993 Nil!35266 s!11993))))

(assert (=> d!857036 (validRegex!4258 (regOne!19562 r!17423))))

(assert (=> d!857036 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!34 (regOne!19562 r!17423) (regTwo!19562 r!17423) s!11993 Nil!35266 s!11993 Nil!35266 s!11993) lt!1052436)))

(declare-fun bs!532775 () Bool)

(assert (= bs!532775 d!857036))

(assert (=> bs!532775 m!3387993))

(assert (=> bs!532775 m!3387993))

(assert (=> bs!532775 m!3387995))

(declare-fun m!3388257 () Bool)

(assert (=> bs!532775 m!3388257))

(assert (=> bs!532775 m!3387991))

(assert (=> b!3076079 d!857036))

(declare-fun bm!214099 () Bool)

(declare-fun call!214106 () Bool)

(declare-fun c!511957 () Bool)

(assert (=> bm!214099 (= call!214106 (validRegex!4258 (ite c!511957 (regOne!19563 (regTwo!19562 r!17423)) (regTwo!19562 (regTwo!19562 r!17423)))))))

(declare-fun b!3076644 () Bool)

(declare-fun e!1924946 () Bool)

(declare-fun e!1924947 () Bool)

(assert (=> b!3076644 (= e!1924946 e!1924947)))

(declare-fun res!1262475 () Bool)

(assert (=> b!3076644 (=> (not res!1262475) (not e!1924947))))

(declare-fun call!214104 () Bool)

(assert (=> b!3076644 (= res!1262475 call!214104)))

(declare-fun call!214105 () Bool)

(declare-fun bm!214100 () Bool)

(declare-fun c!511956 () Bool)

(assert (=> bm!214100 (= call!214105 (validRegex!4258 (ite c!511956 (reg!9854 (regTwo!19562 r!17423)) (ite c!511957 (regTwo!19563 (regTwo!19562 r!17423)) (regOne!19562 (regTwo!19562 r!17423))))))))

(declare-fun b!3076645 () Bool)

(declare-fun res!1262478 () Bool)

(assert (=> b!3076645 (=> res!1262478 e!1924946)))

(assert (=> b!3076645 (= res!1262478 (not ((_ is Concat!14846) (regTwo!19562 r!17423))))))

(declare-fun e!1924945 () Bool)

(assert (=> b!3076645 (= e!1924945 e!1924946)))

(declare-fun b!3076646 () Bool)

(declare-fun e!1924948 () Bool)

(declare-fun e!1924949 () Bool)

(assert (=> b!3076646 (= e!1924948 e!1924949)))

(assert (=> b!3076646 (= c!511956 ((_ is Star!9525) (regTwo!19562 r!17423)))))

(declare-fun b!3076647 () Bool)

(declare-fun e!1924951 () Bool)

(assert (=> b!3076647 (= e!1924949 e!1924951)))

(declare-fun res!1262477 () Bool)

(assert (=> b!3076647 (= res!1262477 (not (nullable!3171 (reg!9854 (regTwo!19562 r!17423)))))))

(assert (=> b!3076647 (=> (not res!1262477) (not e!1924951))))

(declare-fun b!3076648 () Bool)

(assert (=> b!3076648 (= e!1924949 e!1924945)))

(assert (=> b!3076648 (= c!511957 ((_ is Union!9525) (regTwo!19562 r!17423)))))

(declare-fun bm!214101 () Bool)

(assert (=> bm!214101 (= call!214104 call!214105)))

(declare-fun b!3076650 () Bool)

(assert (=> b!3076650 (= e!1924951 call!214105)))

(declare-fun b!3076651 () Bool)

(declare-fun res!1262476 () Bool)

(declare-fun e!1924950 () Bool)

(assert (=> b!3076651 (=> (not res!1262476) (not e!1924950))))

(assert (=> b!3076651 (= res!1262476 call!214106)))

(assert (=> b!3076651 (= e!1924945 e!1924950)))

(declare-fun b!3076652 () Bool)

(assert (=> b!3076652 (= e!1924950 call!214104)))

(declare-fun d!857038 () Bool)

(declare-fun res!1262474 () Bool)

(assert (=> d!857038 (=> res!1262474 e!1924948)))

(assert (=> d!857038 (= res!1262474 ((_ is ElementMatch!9525) (regTwo!19562 r!17423)))))

(assert (=> d!857038 (= (validRegex!4258 (regTwo!19562 r!17423)) e!1924948)))

(declare-fun b!3076649 () Bool)

(assert (=> b!3076649 (= e!1924947 call!214106)))

(assert (= (and d!857038 (not res!1262474)) b!3076646))

(assert (= (and b!3076646 c!511956) b!3076647))

(assert (= (and b!3076646 (not c!511956)) b!3076648))

(assert (= (and b!3076647 res!1262477) b!3076650))

(assert (= (and b!3076648 c!511957) b!3076651))

(assert (= (and b!3076648 (not c!511957)) b!3076645))

(assert (= (and b!3076651 res!1262476) b!3076652))

(assert (= (and b!3076645 (not res!1262478)) b!3076644))

(assert (= (and b!3076644 res!1262475) b!3076649))

(assert (= (or b!3076651 b!3076649) bm!214099))

(assert (= (or b!3076652 b!3076644) bm!214101))

(assert (= (or b!3076650 bm!214101) bm!214100))

(declare-fun m!3388259 () Bool)

(assert (=> bm!214099 m!3388259))

(declare-fun m!3388261 () Bool)

(assert (=> bm!214100 m!3388261))

(declare-fun m!3388263 () Bool)

(assert (=> b!3076647 m!3388263))

(assert (=> b!3076074 d!857038))

(declare-fun d!857040 () Bool)

(assert (=> d!857040 (= (isEmptyExpr!582 lt!1052359) ((_ is EmptyExpr!9525) lt!1052359))))

(assert (=> b!3076080 d!857040))

(declare-fun d!857042 () Bool)

(assert (=> d!857042 (= (isEmpty!19593 s!11993) ((_ is Nil!35266) s!11993))))

(assert (=> b!3076075 d!857042))

(declare-fun d!857044 () Bool)

(assert (=> d!857044 (= (isEmptyLang!576 lt!1052358) ((_ is EmptyLang!9525) lt!1052358))))

(assert (=> b!3076070 d!857044))

(declare-fun b!3076703 () Bool)

(declare-fun c!511983 () Bool)

(declare-fun e!1924992 () Bool)

(assert (=> b!3076703 (= c!511983 e!1924992)))

(declare-fun res!1262486 () Bool)

(assert (=> b!3076703 (=> res!1262486 e!1924992)))

(declare-fun call!214127 () Bool)

(assert (=> b!3076703 (= res!1262486 call!214127)))

(declare-fun lt!1052451 () Regex!9525)

(declare-fun call!214121 () Regex!9525)

(assert (=> b!3076703 (= lt!1052451 call!214121)))

(declare-fun e!1924987 () Regex!9525)

(declare-fun e!1924989 () Regex!9525)

(assert (=> b!3076703 (= e!1924987 e!1924989)))

(declare-fun b!3076704 () Bool)

(declare-fun e!1924982 () Regex!9525)

(declare-fun e!1924991 () Regex!9525)

(assert (=> b!3076704 (= e!1924982 e!1924991)))

(declare-fun c!511981 () Bool)

(assert (=> b!3076704 (= c!511981 ((_ is ElementMatch!9525) (regTwo!19562 r!17423)))))

(declare-fun b!3076705 () Bool)

(declare-fun e!1924990 () Regex!9525)

(assert (=> b!3076705 (= e!1924990 EmptyLang!9525)))

(declare-fun b!3076706 () Bool)

(declare-fun e!1924993 () Regex!9525)

(declare-fun e!1924980 () Regex!9525)

(assert (=> b!3076706 (= e!1924993 e!1924980)))

(declare-fun lt!1052453 () Regex!9525)

(declare-fun call!214123 () Regex!9525)

(assert (=> b!3076706 (= lt!1052453 call!214123)))

(declare-fun lt!1052449 () Regex!9525)

(declare-fun call!214125 () Regex!9525)

(assert (=> b!3076706 (= lt!1052449 call!214125)))

(declare-fun c!511984 () Bool)

(declare-fun call!214122 () Bool)

(assert (=> b!3076706 (= c!511984 call!214122)))

(declare-fun c!511985 () Bool)

(declare-fun call!214126 () Bool)

(declare-fun lt!1052452 () Regex!9525)

(declare-fun bm!214116 () Bool)

(assert (=> bm!214116 (= call!214126 (isEmptyLang!576 (ite c!511985 lt!1052449 lt!1052452)))))

(declare-fun b!3076707 () Bool)

(declare-fun e!1924981 () Regex!9525)

(assert (=> b!3076707 (= e!1924981 lt!1052452)))

(declare-fun bm!214117 () Bool)

(declare-fun c!511986 () Bool)

(declare-fun call!214124 () Bool)

(assert (=> bm!214117 (= call!214124 (isEmptyExpr!582 (ite c!511986 lt!1052451 lt!1052452)))))

(declare-fun d!857046 () Bool)

(declare-fun e!1924986 () Bool)

(assert (=> d!857046 e!1924986))

(declare-fun res!1262485 () Bool)

(assert (=> d!857046 (=> (not res!1262485) (not e!1924986))))

(declare-fun lt!1052454 () Regex!9525)

(assert (=> d!857046 (= res!1262485 (validRegex!4258 lt!1052454))))

(assert (=> d!857046 (= lt!1052454 e!1924982)))

(declare-fun c!511988 () Bool)

(assert (=> d!857046 (= c!511988 ((_ is EmptyLang!9525) (regTwo!19562 r!17423)))))

(assert (=> d!857046 (validRegex!4258 (regTwo!19562 r!17423))))

(assert (=> d!857046 (= (simplify!480 (regTwo!19562 r!17423)) lt!1052454)))

(declare-fun b!3076708 () Bool)

(declare-fun e!1924985 () Regex!9525)

(assert (=> b!3076708 (= e!1924985 e!1924981)))

(declare-fun c!511990 () Bool)

(declare-fun lt!1052450 () Regex!9525)

(assert (=> b!3076708 (= c!511990 (isEmptyExpr!582 lt!1052450))))

(declare-fun b!3076709 () Bool)

(assert (=> b!3076709 (= e!1924989 (Star!9525 lt!1052451))))

(declare-fun b!3076710 () Bool)

(declare-fun c!511980 () Bool)

(assert (=> b!3076710 (= c!511980 call!214124)))

(assert (=> b!3076710 (= e!1924990 e!1924985)))

(declare-fun b!3076711 () Bool)

(declare-fun e!1924984 () Bool)

(assert (=> b!3076711 (= e!1924984 call!214122)))

(declare-fun b!3076712 () Bool)

(declare-fun e!1924988 () Regex!9525)

(assert (=> b!3076712 (= e!1924988 lt!1052453)))

(declare-fun bm!214118 () Bool)

(assert (=> bm!214118 (= call!214127 (isEmptyLang!576 (ite c!511986 lt!1052451 (ite c!511985 lt!1052453 lt!1052450))))))

(declare-fun b!3076713 () Bool)

(assert (=> b!3076713 (= e!1924991 (regTwo!19562 r!17423))))

(declare-fun bm!214119 () Bool)

(assert (=> bm!214119 (= call!214123 (simplify!480 (ite c!511985 (regOne!19563 (regTwo!19562 r!17423)) (regTwo!19562 (regTwo!19562 r!17423)))))))

(declare-fun b!3076714 () Bool)

(declare-fun e!1924983 () Regex!9525)

(assert (=> b!3076714 (= e!1924983 e!1924987)))

(assert (=> b!3076714 (= c!511986 ((_ is Star!9525) (regTwo!19562 r!17423)))))

(declare-fun bm!214120 () Bool)

(assert (=> bm!214120 (= call!214121 (simplify!480 (ite c!511986 (reg!9854 (regTwo!19562 r!17423)) (ite c!511985 (regTwo!19563 (regTwo!19562 r!17423)) (regOne!19562 (regTwo!19562 r!17423))))))))

(declare-fun b!3076715 () Bool)

(assert (=> b!3076715 (= e!1924989 EmptyExpr!9525)))

(declare-fun b!3076716 () Bool)

(assert (=> b!3076716 (= e!1924986 (= (nullable!3171 lt!1052454) (nullable!3171 (regTwo!19562 r!17423))))))

(declare-fun bm!214121 () Bool)

(assert (=> bm!214121 (= call!214122 call!214127)))

(declare-fun b!3076717 () Bool)

(assert (=> b!3076717 (= e!1924992 call!214124)))

(declare-fun b!3076718 () Bool)

(assert (=> b!3076718 (= e!1924983 EmptyExpr!9525)))

(declare-fun b!3076719 () Bool)

(assert (=> b!3076719 (= c!511985 ((_ is Union!9525) (regTwo!19562 r!17423)))))

(assert (=> b!3076719 (= e!1924987 e!1924993)))

(declare-fun b!3076720 () Bool)

(declare-fun c!511989 () Bool)

(assert (=> b!3076720 (= c!511989 ((_ is EmptyExpr!9525) (regTwo!19562 r!17423)))))

(assert (=> b!3076720 (= e!1924991 e!1924983)))

(declare-fun b!3076721 () Bool)

(assert (=> b!3076721 (= e!1924980 lt!1052449)))

(declare-fun b!3076722 () Bool)

(assert (=> b!3076722 (= e!1924993 e!1924990)))

(assert (=> b!3076722 (= lt!1052452 call!214125)))

(assert (=> b!3076722 (= lt!1052450 call!214123)))

(declare-fun res!1262487 () Bool)

(assert (=> b!3076722 (= res!1262487 call!214126)))

(assert (=> b!3076722 (=> res!1262487 e!1924984)))

(declare-fun c!511982 () Bool)

(assert (=> b!3076722 (= c!511982 e!1924984)))

(declare-fun b!3076723 () Bool)

(assert (=> b!3076723 (= e!1924985 lt!1052450)))

(declare-fun b!3076724 () Bool)

(assert (=> b!3076724 (= e!1924982 EmptyLang!9525)))

(declare-fun b!3076725 () Bool)

(declare-fun c!511987 () Bool)

(assert (=> b!3076725 (= c!511987 call!214126)))

(assert (=> b!3076725 (= e!1924980 e!1924988)))

(declare-fun bm!214122 () Bool)

(assert (=> bm!214122 (= call!214125 call!214121)))

(declare-fun b!3076726 () Bool)

(assert (=> b!3076726 (= e!1924988 (Union!9525 lt!1052453 lt!1052449))))

(declare-fun b!3076727 () Bool)

(assert (=> b!3076727 (= e!1924981 (Concat!14846 lt!1052452 lt!1052450))))

(assert (= (and d!857046 c!511988) b!3076724))

(assert (= (and d!857046 (not c!511988)) b!3076704))

(assert (= (and b!3076704 c!511981) b!3076713))

(assert (= (and b!3076704 (not c!511981)) b!3076720))

(assert (= (and b!3076720 c!511989) b!3076718))

(assert (= (and b!3076720 (not c!511989)) b!3076714))

(assert (= (and b!3076714 c!511986) b!3076703))

(assert (= (and b!3076714 (not c!511986)) b!3076719))

(assert (= (and b!3076703 (not res!1262486)) b!3076717))

(assert (= (and b!3076703 c!511983) b!3076715))

(assert (= (and b!3076703 (not c!511983)) b!3076709))

(assert (= (and b!3076719 c!511985) b!3076706))

(assert (= (and b!3076719 (not c!511985)) b!3076722))

(assert (= (and b!3076706 c!511984) b!3076721))

(assert (= (and b!3076706 (not c!511984)) b!3076725))

(assert (= (and b!3076725 c!511987) b!3076712))

(assert (= (and b!3076725 (not c!511987)) b!3076726))

(assert (= (and b!3076722 (not res!1262487)) b!3076711))

(assert (= (and b!3076722 c!511982) b!3076705))

(assert (= (and b!3076722 (not c!511982)) b!3076710))

(assert (= (and b!3076710 c!511980) b!3076723))

(assert (= (and b!3076710 (not c!511980)) b!3076708))

(assert (= (and b!3076708 c!511990) b!3076707))

(assert (= (and b!3076708 (not c!511990)) b!3076727))

(assert (= (or b!3076706 b!3076722) bm!214119))

(assert (= (or b!3076706 b!3076722) bm!214122))

(assert (= (or b!3076725 b!3076722) bm!214116))

(assert (= (or b!3076706 b!3076711) bm!214121))

(assert (= (or b!3076717 b!3076710) bm!214117))

(assert (= (or b!3076703 bm!214122) bm!214120))

(assert (= (or b!3076703 bm!214121) bm!214118))

(assert (= (and d!857046 res!1262485) b!3076716))

(declare-fun m!3388265 () Bool)

(assert (=> b!3076716 m!3388265))

(assert (=> b!3076716 m!3388181))

(declare-fun m!3388267 () Bool)

(assert (=> b!3076708 m!3388267))

(declare-fun m!3388269 () Bool)

(assert (=> bm!214117 m!3388269))

(declare-fun m!3388271 () Bool)

(assert (=> bm!214118 m!3388271))

(declare-fun m!3388273 () Bool)

(assert (=> bm!214120 m!3388273))

(declare-fun m!3388275 () Bool)

(assert (=> bm!214119 m!3388275))

(declare-fun m!3388277 () Bool)

(assert (=> bm!214116 m!3388277))

(declare-fun m!3388279 () Bool)

(assert (=> d!857046 m!3388279))

(assert (=> d!857046 m!3388009))

(assert (=> b!3076070 d!857046))

(declare-fun b!3076728 () Bool)

(declare-fun c!511994 () Bool)

(declare-fun e!1925006 () Bool)

(assert (=> b!3076728 (= c!511994 e!1925006)))

(declare-fun res!1262489 () Bool)

(assert (=> b!3076728 (=> res!1262489 e!1925006)))

(declare-fun call!214134 () Bool)

(assert (=> b!3076728 (= res!1262489 call!214134)))

(declare-fun lt!1052457 () Regex!9525)

(declare-fun call!214128 () Regex!9525)

(assert (=> b!3076728 (= lt!1052457 call!214128)))

(declare-fun e!1925001 () Regex!9525)

(declare-fun e!1925003 () Regex!9525)

(assert (=> b!3076728 (= e!1925001 e!1925003)))

(declare-fun b!3076729 () Bool)

(declare-fun e!1924996 () Regex!9525)

(declare-fun e!1925005 () Regex!9525)

(assert (=> b!3076729 (= e!1924996 e!1925005)))

(declare-fun c!511992 () Bool)

(assert (=> b!3076729 (= c!511992 ((_ is ElementMatch!9525) (regOne!19562 r!17423)))))

(declare-fun b!3076730 () Bool)

(declare-fun e!1925004 () Regex!9525)

(assert (=> b!3076730 (= e!1925004 EmptyLang!9525)))

(declare-fun b!3076731 () Bool)

(declare-fun e!1925007 () Regex!9525)

(declare-fun e!1924994 () Regex!9525)

(assert (=> b!3076731 (= e!1925007 e!1924994)))

(declare-fun lt!1052459 () Regex!9525)

(declare-fun call!214130 () Regex!9525)

(assert (=> b!3076731 (= lt!1052459 call!214130)))

(declare-fun lt!1052455 () Regex!9525)

(declare-fun call!214132 () Regex!9525)

(assert (=> b!3076731 (= lt!1052455 call!214132)))

(declare-fun c!511995 () Bool)

(declare-fun call!214129 () Bool)

(assert (=> b!3076731 (= c!511995 call!214129)))

(declare-fun call!214133 () Bool)

(declare-fun bm!214123 () Bool)

(declare-fun c!511996 () Bool)

(declare-fun lt!1052458 () Regex!9525)

(assert (=> bm!214123 (= call!214133 (isEmptyLang!576 (ite c!511996 lt!1052455 lt!1052458)))))

(declare-fun b!3076732 () Bool)

(declare-fun e!1924995 () Regex!9525)

(assert (=> b!3076732 (= e!1924995 lt!1052458)))

(declare-fun call!214131 () Bool)

(declare-fun bm!214124 () Bool)

(declare-fun c!511997 () Bool)

(assert (=> bm!214124 (= call!214131 (isEmptyExpr!582 (ite c!511997 lt!1052457 lt!1052458)))))

(declare-fun d!857048 () Bool)

(declare-fun e!1925000 () Bool)

(assert (=> d!857048 e!1925000))

(declare-fun res!1262488 () Bool)

(assert (=> d!857048 (=> (not res!1262488) (not e!1925000))))

(declare-fun lt!1052460 () Regex!9525)

(assert (=> d!857048 (= res!1262488 (validRegex!4258 lt!1052460))))

(assert (=> d!857048 (= lt!1052460 e!1924996)))

(declare-fun c!511999 () Bool)

(assert (=> d!857048 (= c!511999 ((_ is EmptyLang!9525) (regOne!19562 r!17423)))))

(assert (=> d!857048 (validRegex!4258 (regOne!19562 r!17423))))

(assert (=> d!857048 (= (simplify!480 (regOne!19562 r!17423)) lt!1052460)))

(declare-fun b!3076733 () Bool)

(declare-fun e!1924999 () Regex!9525)

(assert (=> b!3076733 (= e!1924999 e!1924995)))

(declare-fun c!512001 () Bool)

(declare-fun lt!1052456 () Regex!9525)

(assert (=> b!3076733 (= c!512001 (isEmptyExpr!582 lt!1052456))))

(declare-fun b!3076734 () Bool)

(assert (=> b!3076734 (= e!1925003 (Star!9525 lt!1052457))))

(declare-fun b!3076735 () Bool)

(declare-fun c!511991 () Bool)

(assert (=> b!3076735 (= c!511991 call!214131)))

(assert (=> b!3076735 (= e!1925004 e!1924999)))

(declare-fun b!3076736 () Bool)

(declare-fun e!1924998 () Bool)

(assert (=> b!3076736 (= e!1924998 call!214129)))

(declare-fun b!3076737 () Bool)

(declare-fun e!1925002 () Regex!9525)

(assert (=> b!3076737 (= e!1925002 lt!1052459)))

(declare-fun bm!214125 () Bool)

(assert (=> bm!214125 (= call!214134 (isEmptyLang!576 (ite c!511997 lt!1052457 (ite c!511996 lt!1052459 lt!1052456))))))

(declare-fun b!3076738 () Bool)

(assert (=> b!3076738 (= e!1925005 (regOne!19562 r!17423))))

(declare-fun bm!214126 () Bool)

(assert (=> bm!214126 (= call!214130 (simplify!480 (ite c!511996 (regOne!19563 (regOne!19562 r!17423)) (regTwo!19562 (regOne!19562 r!17423)))))))

(declare-fun b!3076739 () Bool)

(declare-fun e!1924997 () Regex!9525)

(assert (=> b!3076739 (= e!1924997 e!1925001)))

(assert (=> b!3076739 (= c!511997 ((_ is Star!9525) (regOne!19562 r!17423)))))

(declare-fun bm!214127 () Bool)

(assert (=> bm!214127 (= call!214128 (simplify!480 (ite c!511997 (reg!9854 (regOne!19562 r!17423)) (ite c!511996 (regTwo!19563 (regOne!19562 r!17423)) (regOne!19562 (regOne!19562 r!17423))))))))

(declare-fun b!3076740 () Bool)

(assert (=> b!3076740 (= e!1925003 EmptyExpr!9525)))

(declare-fun b!3076741 () Bool)

(assert (=> b!3076741 (= e!1925000 (= (nullable!3171 lt!1052460) (nullable!3171 (regOne!19562 r!17423))))))

(declare-fun bm!214128 () Bool)

(assert (=> bm!214128 (= call!214129 call!214134)))

(declare-fun b!3076742 () Bool)

(assert (=> b!3076742 (= e!1925006 call!214131)))

(declare-fun b!3076743 () Bool)

(assert (=> b!3076743 (= e!1924997 EmptyExpr!9525)))

(declare-fun b!3076744 () Bool)

(assert (=> b!3076744 (= c!511996 ((_ is Union!9525) (regOne!19562 r!17423)))))

(assert (=> b!3076744 (= e!1925001 e!1925007)))

(declare-fun b!3076745 () Bool)

(declare-fun c!512000 () Bool)

(assert (=> b!3076745 (= c!512000 ((_ is EmptyExpr!9525) (regOne!19562 r!17423)))))

(assert (=> b!3076745 (= e!1925005 e!1924997)))

(declare-fun b!3076746 () Bool)

(assert (=> b!3076746 (= e!1924994 lt!1052455)))

(declare-fun b!3076747 () Bool)

(assert (=> b!3076747 (= e!1925007 e!1925004)))

(assert (=> b!3076747 (= lt!1052458 call!214132)))

(assert (=> b!3076747 (= lt!1052456 call!214130)))

(declare-fun res!1262490 () Bool)

(assert (=> b!3076747 (= res!1262490 call!214133)))

(assert (=> b!3076747 (=> res!1262490 e!1924998)))

(declare-fun c!511993 () Bool)

(assert (=> b!3076747 (= c!511993 e!1924998)))

(declare-fun b!3076748 () Bool)

(assert (=> b!3076748 (= e!1924999 lt!1052456)))

(declare-fun b!3076749 () Bool)

(assert (=> b!3076749 (= e!1924996 EmptyLang!9525)))

(declare-fun b!3076750 () Bool)

(declare-fun c!511998 () Bool)

(assert (=> b!3076750 (= c!511998 call!214133)))

(assert (=> b!3076750 (= e!1924994 e!1925002)))

(declare-fun bm!214129 () Bool)

(assert (=> bm!214129 (= call!214132 call!214128)))

(declare-fun b!3076751 () Bool)

(assert (=> b!3076751 (= e!1925002 (Union!9525 lt!1052459 lt!1052455))))

(declare-fun b!3076752 () Bool)

(assert (=> b!3076752 (= e!1924995 (Concat!14846 lt!1052458 lt!1052456))))

(assert (= (and d!857048 c!511999) b!3076749))

(assert (= (and d!857048 (not c!511999)) b!3076729))

(assert (= (and b!3076729 c!511992) b!3076738))

(assert (= (and b!3076729 (not c!511992)) b!3076745))

(assert (= (and b!3076745 c!512000) b!3076743))

(assert (= (and b!3076745 (not c!512000)) b!3076739))

(assert (= (and b!3076739 c!511997) b!3076728))

(assert (= (and b!3076739 (not c!511997)) b!3076744))

(assert (= (and b!3076728 (not res!1262489)) b!3076742))

(assert (= (and b!3076728 c!511994) b!3076740))

(assert (= (and b!3076728 (not c!511994)) b!3076734))

(assert (= (and b!3076744 c!511996) b!3076731))

(assert (= (and b!3076744 (not c!511996)) b!3076747))

(assert (= (and b!3076731 c!511995) b!3076746))

(assert (= (and b!3076731 (not c!511995)) b!3076750))

(assert (= (and b!3076750 c!511998) b!3076737))

(assert (= (and b!3076750 (not c!511998)) b!3076751))

(assert (= (and b!3076747 (not res!1262490)) b!3076736))

(assert (= (and b!3076747 c!511993) b!3076730))

(assert (= (and b!3076747 (not c!511993)) b!3076735))

(assert (= (and b!3076735 c!511991) b!3076748))

(assert (= (and b!3076735 (not c!511991)) b!3076733))

(assert (= (and b!3076733 c!512001) b!3076732))

(assert (= (and b!3076733 (not c!512001)) b!3076752))

(assert (= (or b!3076731 b!3076747) bm!214126))

(assert (= (or b!3076731 b!3076747) bm!214129))

(assert (= (or b!3076750 b!3076747) bm!214123))

(assert (= (or b!3076731 b!3076736) bm!214128))

(assert (= (or b!3076742 b!3076735) bm!214124))

(assert (= (or b!3076728 bm!214129) bm!214127))

(assert (= (or b!3076728 bm!214128) bm!214125))

(assert (= (and d!857048 res!1262488) b!3076741))

(declare-fun m!3388281 () Bool)

(assert (=> b!3076741 m!3388281))

(assert (=> b!3076741 m!3388159))

(declare-fun m!3388283 () Bool)

(assert (=> b!3076733 m!3388283))

(declare-fun m!3388285 () Bool)

(assert (=> bm!214124 m!3388285))

(declare-fun m!3388287 () Bool)

(assert (=> bm!214125 m!3388287))

(declare-fun m!3388289 () Bool)

(assert (=> bm!214127 m!3388289))

(declare-fun m!3388291 () Bool)

(assert (=> bm!214126 m!3388291))

(declare-fun m!3388293 () Bool)

(assert (=> bm!214123 m!3388293))

(declare-fun m!3388295 () Bool)

(assert (=> d!857048 m!3388295))

(assert (=> d!857048 m!3387991))

(assert (=> b!3076070 d!857048))

(declare-fun b!3076764 () Bool)

(declare-fun e!1925010 () Bool)

(declare-fun tp!969762 () Bool)

(declare-fun tp!969759 () Bool)

(assert (=> b!3076764 (= e!1925010 (and tp!969762 tp!969759))))

(declare-fun b!3076766 () Bool)

(declare-fun tp!969758 () Bool)

(declare-fun tp!969761 () Bool)

(assert (=> b!3076766 (= e!1925010 (and tp!969758 tp!969761))))

(declare-fun b!3076763 () Bool)

(assert (=> b!3076763 (= e!1925010 tp_is_empty!16613)))

(declare-fun b!3076765 () Bool)

(declare-fun tp!969760 () Bool)

(assert (=> b!3076765 (= e!1925010 tp!969760)))

(assert (=> b!3076072 (= tp!969706 e!1925010)))

(assert (= (and b!3076072 ((_ is ElementMatch!9525) (reg!9854 r!17423))) b!3076763))

(assert (= (and b!3076072 ((_ is Concat!14846) (reg!9854 r!17423))) b!3076764))

(assert (= (and b!3076072 ((_ is Star!9525) (reg!9854 r!17423))) b!3076765))

(assert (= (and b!3076072 ((_ is Union!9525) (reg!9854 r!17423))) b!3076766))

(declare-fun b!3076771 () Bool)

(declare-fun e!1925013 () Bool)

(declare-fun tp!969765 () Bool)

(assert (=> b!3076771 (= e!1925013 (and tp_is_empty!16613 tp!969765))))

(assert (=> b!3076083 (= tp!969708 e!1925013)))

(assert (= (and b!3076083 ((_ is Cons!35266) (t!234455 s!11993))) b!3076771))

(declare-fun b!3076773 () Bool)

(declare-fun e!1925014 () Bool)

(declare-fun tp!969770 () Bool)

(declare-fun tp!969767 () Bool)

(assert (=> b!3076773 (= e!1925014 (and tp!969770 tp!969767))))

(declare-fun b!3076775 () Bool)

(declare-fun tp!969766 () Bool)

(declare-fun tp!969769 () Bool)

(assert (=> b!3076775 (= e!1925014 (and tp!969766 tp!969769))))

(declare-fun b!3076772 () Bool)

(assert (=> b!3076772 (= e!1925014 tp_is_empty!16613)))

(declare-fun b!3076774 () Bool)

(declare-fun tp!969768 () Bool)

(assert (=> b!3076774 (= e!1925014 tp!969768)))

(assert (=> b!3076078 (= tp!969707 e!1925014)))

(assert (= (and b!3076078 ((_ is ElementMatch!9525) (regOne!19562 r!17423))) b!3076772))

(assert (= (and b!3076078 ((_ is Concat!14846) (regOne!19562 r!17423))) b!3076773))

(assert (= (and b!3076078 ((_ is Star!9525) (regOne!19562 r!17423))) b!3076774))

(assert (= (and b!3076078 ((_ is Union!9525) (regOne!19562 r!17423))) b!3076775))

(declare-fun b!3076777 () Bool)

(declare-fun e!1925015 () Bool)

(declare-fun tp!969775 () Bool)

(declare-fun tp!969772 () Bool)

(assert (=> b!3076777 (= e!1925015 (and tp!969775 tp!969772))))

(declare-fun b!3076779 () Bool)

(declare-fun tp!969771 () Bool)

(declare-fun tp!969774 () Bool)

(assert (=> b!3076779 (= e!1925015 (and tp!969771 tp!969774))))

(declare-fun b!3076776 () Bool)

(assert (=> b!3076776 (= e!1925015 tp_is_empty!16613)))

(declare-fun b!3076778 () Bool)

(declare-fun tp!969773 () Bool)

(assert (=> b!3076778 (= e!1925015 tp!969773)))

(assert (=> b!3076078 (= tp!969704 e!1925015)))

(assert (= (and b!3076078 ((_ is ElementMatch!9525) (regTwo!19562 r!17423))) b!3076776))

(assert (= (and b!3076078 ((_ is Concat!14846) (regTwo!19562 r!17423))) b!3076777))

(assert (= (and b!3076078 ((_ is Star!9525) (regTwo!19562 r!17423))) b!3076778))

(assert (= (and b!3076078 ((_ is Union!9525) (regTwo!19562 r!17423))) b!3076779))

(declare-fun b!3076781 () Bool)

(declare-fun e!1925016 () Bool)

(declare-fun tp!969780 () Bool)

(declare-fun tp!969777 () Bool)

(assert (=> b!3076781 (= e!1925016 (and tp!969780 tp!969777))))

(declare-fun b!3076783 () Bool)

(declare-fun tp!969776 () Bool)

(declare-fun tp!969779 () Bool)

(assert (=> b!3076783 (= e!1925016 (and tp!969776 tp!969779))))

(declare-fun b!3076780 () Bool)

(assert (=> b!3076780 (= e!1925016 tp_is_empty!16613)))

(declare-fun b!3076782 () Bool)

(declare-fun tp!969778 () Bool)

(assert (=> b!3076782 (= e!1925016 tp!969778)))

(assert (=> b!3076073 (= tp!969709 e!1925016)))

(assert (= (and b!3076073 ((_ is ElementMatch!9525) (regOne!19563 r!17423))) b!3076780))

(assert (= (and b!3076073 ((_ is Concat!14846) (regOne!19563 r!17423))) b!3076781))

(assert (= (and b!3076073 ((_ is Star!9525) (regOne!19563 r!17423))) b!3076782))

(assert (= (and b!3076073 ((_ is Union!9525) (regOne!19563 r!17423))) b!3076783))

(declare-fun b!3076785 () Bool)

(declare-fun e!1925017 () Bool)

(declare-fun tp!969785 () Bool)

(declare-fun tp!969782 () Bool)

(assert (=> b!3076785 (= e!1925017 (and tp!969785 tp!969782))))

(declare-fun b!3076787 () Bool)

(declare-fun tp!969781 () Bool)

(declare-fun tp!969784 () Bool)

(assert (=> b!3076787 (= e!1925017 (and tp!969781 tp!969784))))

(declare-fun b!3076784 () Bool)

(assert (=> b!3076784 (= e!1925017 tp_is_empty!16613)))

(declare-fun b!3076786 () Bool)

(declare-fun tp!969783 () Bool)

(assert (=> b!3076786 (= e!1925017 tp!969783)))

(assert (=> b!3076073 (= tp!969705 e!1925017)))

(assert (= (and b!3076073 ((_ is ElementMatch!9525) (regTwo!19563 r!17423))) b!3076784))

(assert (= (and b!3076073 ((_ is Concat!14846) (regTwo!19563 r!17423))) b!3076785))

(assert (= (and b!3076073 ((_ is Star!9525) (regTwo!19563 r!17423))) b!3076786))

(assert (= (and b!3076073 ((_ is Union!9525) (regTwo!19563 r!17423))) b!3076787))

(check-sat (not b!3076472) (not bm!214123) (not b!3076773) (not b!3076764) (not d!857046) (not b!3076517) (not b!3076640) tp_is_empty!16613 (not d!857012) (not b!3076496) (not b!3076777) (not b!3076477) (not bm!214080) (not bm!214083) (not b!3076450) (not b!3076501) (not b!3076502) (not b!3076785) (not bm!214120) (not b!3076775) (not b!3076716) (not d!857036) (not b!3076778) (not bm!214117) (not b!3076313) (not bm!214094) (not b!3076636) (not b!3076524) (not b!3076459) (not b!3076445) (not b!3076643) (not d!857002) (not b!3076473) (not b!3076779) (not b!3076495) (not b!3076443) (not b!3076525) (not b!3076497) (not b!3076647) (not bm!214116) (not b!3076641) (not bm!214119) (not bm!214125) (not d!857028) (not b!3076783) (not bm!214090) (not b!3076774) (not b!3076458) (not b!3076781) (not d!857006) (not bm!214118) (not b!3076503) (not b!3076782) (not b!3076457) (not bm!214093) (not b!3076449) (not b!3076465) (not bm!214100) (not d!857048) (not b!3076558) (not d!857010) (not b!3076708) (not d!857026) (not b!3076518) (not b!3076642) (not b!3076451) (not bm!214091) (not d!857014) (not bm!214081) (not b!3076463) (not b!3076317) (not b!3076464) (not bm!214082) (not b!3076786) (not bm!214127) (not b!3076523) (not b!3076771) (not b!3076787) (not b!3076478) (not d!857008) (not bm!214049) (not bm!214099) (not b!3076741) (not bm!214050) (not b!3076444) (not b!3076479) (not d!857016) (not b!3076471) (not bm!214126) (not b!3076567) (not b!3076765) (not b!3076766) (not b!3076733) (not b!3076639) (not bm!214124) (not bm!214079) (not b!3076519) (not d!856988))
(check-sat)
