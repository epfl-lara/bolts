; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285076 () Bool)

(assert start!285076)

(declare-fun b!2932026 () Bool)

(assert (=> b!2932026 true))

(assert (=> b!2932026 true))

(assert (=> b!2932026 true))

(declare-fun lambda!109172 () Int)

(declare-fun lambda!109171 () Int)

(assert (=> b!2932026 (not (= lambda!109172 lambda!109171))))

(assert (=> b!2932026 true))

(assert (=> b!2932026 true))

(assert (=> b!2932026 true))

(declare-fun res!1210443 () Bool)

(declare-fun e!1848732 () Bool)

(assert (=> start!285076 (=> (not res!1210443) (not e!1848732))))

(declare-datatypes ((C!18296 0))(
  ( (C!18297 (val!11184 Int)) )
))
(declare-datatypes ((Regex!9055 0))(
  ( (ElementMatch!9055 (c!478853 C!18296)) (Concat!14376 (regOne!18622 Regex!9055) (regTwo!18622 Regex!9055)) (EmptyExpr!9055) (Star!9055 (reg!9384 Regex!9055)) (EmptyLang!9055) (Union!9055 (regOne!18623 Regex!9055) (regTwo!18623 Regex!9055)) )
))
(declare-fun r!17423 () Regex!9055)

(declare-fun validRegex!3788 (Regex!9055) Bool)

(assert (=> start!285076 (= res!1210443 (validRegex!3788 r!17423))))

(assert (=> start!285076 e!1848732))

(declare-fun e!1848730 () Bool)

(assert (=> start!285076 e!1848730))

(declare-fun e!1848733 () Bool)

(assert (=> start!285076 e!1848733))

(declare-fun b!2932023 () Bool)

(declare-fun e!1848727 () Bool)

(declare-fun lt!1028136 () Regex!9055)

(assert (=> b!2932023 (= e!1848727 (validRegex!3788 lt!1028136))))

(declare-fun lt!1028142 () Regex!9055)

(declare-datatypes ((List!34920 0))(
  ( (Nil!34796) (Cons!34796 (h!40216 C!18296) (t!233985 List!34920)) )
))
(declare-datatypes ((tuple2!33760 0))(
  ( (tuple2!33761 (_1!20012 List!34920) (_2!20012 List!34920)) )
))
(declare-fun lt!1028139 () tuple2!33760)

(declare-fun matchR!3937 (Regex!9055 List!34920) Bool)

(declare-fun simplify!62 (Regex!9055) Regex!9055)

(assert (=> b!2932023 (matchR!3937 (simplify!62 lt!1028142) (_2!20012 lt!1028139))))

(declare-datatypes ((Unit!48459 0))(
  ( (Unit!48460) )
))
(declare-fun lt!1028135 () Unit!48459)

(declare-fun lemmaSimplifySound!58 (Regex!9055 List!34920) Unit!48459)

(assert (=> b!2932023 (= lt!1028135 (lemmaSimplifySound!58 lt!1028142 (_2!20012 lt!1028139)))))

(declare-fun lt!1028140 () Unit!48459)

(declare-fun e!1848731 () Unit!48459)

(assert (=> b!2932023 (= lt!1028140 e!1848731)))

(declare-fun c!478852 () Bool)

(declare-fun s!11993 () List!34920)

(declare-fun size!26451 (List!34920) Int)

(assert (=> b!2932023 (= c!478852 (= (size!26451 (_2!20012 lt!1028139)) (size!26451 s!11993)))))

(assert (=> b!2932023 (matchR!3937 lt!1028136 (_1!20012 lt!1028139))))

(assert (=> b!2932023 (= lt!1028136 (simplify!62 (reg!9384 r!17423)))))

(declare-fun lt!1028133 () Unit!48459)

(assert (=> b!2932023 (= lt!1028133 (lemmaSimplifySound!58 (reg!9384 r!17423) (_1!20012 lt!1028139)))))

(declare-fun b!2932024 () Bool)

(declare-fun tp!939528 () Bool)

(declare-fun tp!939524 () Bool)

(assert (=> b!2932024 (= e!1848730 (and tp!939528 tp!939524))))

(declare-fun b!2932025 () Bool)

(declare-fun Unit!48461 () Unit!48459)

(assert (=> b!2932025 (= e!1848731 Unit!48461)))

(declare-fun e!1848728 () Bool)

(declare-fun e!1848729 () Bool)

(assert (=> b!2932026 (= e!1848728 e!1848729)))

(declare-fun res!1210444 () Bool)

(assert (=> b!2932026 (=> res!1210444 e!1848729)))

(declare-fun lt!1028143 () Bool)

(assert (=> b!2932026 (= res!1210444 (not lt!1028143))))

(declare-fun Exists!1417 (Int) Bool)

(assert (=> b!2932026 (= (Exists!1417 lambda!109171) (Exists!1417 lambda!109172))))

(declare-fun lt!1028134 () Unit!48459)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!228 (Regex!9055 List!34920) Unit!48459)

(assert (=> b!2932026 (= lt!1028134 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!228 (reg!9384 r!17423) s!11993))))

(assert (=> b!2932026 (= lt!1028143 (Exists!1417 lambda!109171))))

(declare-datatypes ((Option!6612 0))(
  ( (None!6611) (Some!6611 (v!34745 tuple2!33760)) )
))
(declare-fun lt!1028132 () Option!6612)

(declare-fun isDefined!5163 (Option!6612) Bool)

(assert (=> b!2932026 (= lt!1028143 (isDefined!5163 lt!1028132))))

(declare-fun findConcatSeparation!1006 (Regex!9055 Regex!9055 List!34920 List!34920 List!34920) Option!6612)

(assert (=> b!2932026 (= lt!1028132 (findConcatSeparation!1006 (reg!9384 r!17423) lt!1028142 Nil!34796 s!11993 s!11993))))

(declare-fun lt!1028137 () Unit!48459)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!788 (Regex!9055 Regex!9055 List!34920) Unit!48459)

(assert (=> b!2932026 (= lt!1028137 (lemmaFindConcatSeparationEquivalentToExists!788 (reg!9384 r!17423) lt!1028142 s!11993))))

(assert (=> b!2932026 (= lt!1028142 (Star!9055 (reg!9384 r!17423)))))

(declare-fun b!2932027 () Bool)

(declare-fun tp!939529 () Bool)

(declare-fun tp!939525 () Bool)

(assert (=> b!2932027 (= e!1848730 (and tp!939529 tp!939525))))

(declare-fun b!2932028 () Bool)

(declare-fun res!1210446 () Bool)

(assert (=> b!2932028 (=> res!1210446 e!1848727)))

(assert (=> b!2932028 (= res!1210446 (not (matchR!3937 lt!1028142 (_2!20012 lt!1028139))))))

(declare-fun b!2932029 () Bool)

(assert (=> b!2932029 (= e!1848729 e!1848727)))

(declare-fun res!1210448 () Bool)

(assert (=> b!2932029 (=> res!1210448 e!1848727)))

(assert (=> b!2932029 (= res!1210448 (not (matchR!3937 (reg!9384 r!17423) (_1!20012 lt!1028139))))))

(declare-fun get!10631 (Option!6612) tuple2!33760)

(assert (=> b!2932029 (= lt!1028139 (get!10631 lt!1028132))))

(declare-fun b!2932030 () Bool)

(declare-fun res!1210445 () Bool)

(assert (=> b!2932030 (=> res!1210445 e!1848728)))

(declare-fun isEmpty!19049 (List!34920) Bool)

(assert (=> b!2932030 (= res!1210445 (isEmpty!19049 s!11993))))

(declare-fun b!2932031 () Bool)

(declare-fun tp_is_empty!15673 () Bool)

(assert (=> b!2932031 (= e!1848730 tp_is_empty!15673)))

(declare-fun b!2932032 () Bool)

(declare-fun Unit!48462 () Unit!48459)

(assert (=> b!2932032 (= e!1848731 Unit!48462)))

(declare-fun lt!1028138 () Unit!48459)

(declare-fun mainMatchTheorem!1192 (Regex!9055 List!34920) Unit!48459)

(assert (=> b!2932032 (= lt!1028138 (mainMatchTheorem!1192 (reg!9384 r!17423) (_1!20012 lt!1028139)))))

(assert (=> b!2932032 false))

(declare-fun b!2932033 () Bool)

(declare-fun tp!939526 () Bool)

(assert (=> b!2932033 (= e!1848733 (and tp_is_empty!15673 tp!939526))))

(declare-fun b!2932034 () Bool)

(declare-fun tp!939527 () Bool)

(assert (=> b!2932034 (= e!1848730 tp!939527)))

(declare-fun b!2932035 () Bool)

(assert (=> b!2932035 (= e!1848732 (not e!1848728))))

(declare-fun res!1210447 () Bool)

(assert (=> b!2932035 (=> res!1210447 e!1848728)))

(declare-fun lt!1028141 () Bool)

(get-info :version)

(assert (=> b!2932035 (= res!1210447 (or (not lt!1028141) ((_ is Concat!14376) r!17423) ((_ is Union!9055) r!17423) (not ((_ is Star!9055) r!17423))))))

(declare-fun matchRSpec!1192 (Regex!9055 List!34920) Bool)

(assert (=> b!2932035 (= lt!1028141 (matchRSpec!1192 r!17423 s!11993))))

(assert (=> b!2932035 (= lt!1028141 (matchR!3937 r!17423 s!11993))))

(declare-fun lt!1028131 () Unit!48459)

(assert (=> b!2932035 (= lt!1028131 (mainMatchTheorem!1192 r!17423 s!11993))))

(assert (= (and start!285076 res!1210443) b!2932035))

(assert (= (and b!2932035 (not res!1210447)) b!2932030))

(assert (= (and b!2932030 (not res!1210445)) b!2932026))

(assert (= (and b!2932026 (not res!1210444)) b!2932029))

(assert (= (and b!2932029 (not res!1210448)) b!2932028))

(assert (= (and b!2932028 (not res!1210446)) b!2932023))

(assert (= (and b!2932023 c!478852) b!2932032))

(assert (= (and b!2932023 (not c!478852)) b!2932025))

(assert (= (and start!285076 ((_ is ElementMatch!9055) r!17423)) b!2932031))

(assert (= (and start!285076 ((_ is Concat!14376) r!17423)) b!2932027))

(assert (= (and start!285076 ((_ is Star!9055) r!17423)) b!2932034))

(assert (= (and start!285076 ((_ is Union!9055) r!17423)) b!2932024))

(assert (= (and start!285076 ((_ is Cons!34796) s!11993)) b!2932033))

(declare-fun m!3321609 () Bool)

(assert (=> b!2932035 m!3321609))

(declare-fun m!3321611 () Bool)

(assert (=> b!2932035 m!3321611))

(declare-fun m!3321613 () Bool)

(assert (=> b!2932035 m!3321613))

(declare-fun m!3321615 () Bool)

(assert (=> start!285076 m!3321615))

(declare-fun m!3321617 () Bool)

(assert (=> b!2932023 m!3321617))

(declare-fun m!3321619 () Bool)

(assert (=> b!2932023 m!3321619))

(declare-fun m!3321621 () Bool)

(assert (=> b!2932023 m!3321621))

(declare-fun m!3321623 () Bool)

(assert (=> b!2932023 m!3321623))

(declare-fun m!3321625 () Bool)

(assert (=> b!2932023 m!3321625))

(declare-fun m!3321627 () Bool)

(assert (=> b!2932023 m!3321627))

(declare-fun m!3321629 () Bool)

(assert (=> b!2932023 m!3321629))

(assert (=> b!2932023 m!3321619))

(declare-fun m!3321631 () Bool)

(assert (=> b!2932023 m!3321631))

(declare-fun m!3321633 () Bool)

(assert (=> b!2932023 m!3321633))

(declare-fun m!3321635 () Bool)

(assert (=> b!2932028 m!3321635))

(declare-fun m!3321637 () Bool)

(assert (=> b!2932029 m!3321637))

(declare-fun m!3321639 () Bool)

(assert (=> b!2932029 m!3321639))

(declare-fun m!3321641 () Bool)

(assert (=> b!2932032 m!3321641))

(declare-fun m!3321643 () Bool)

(assert (=> b!2932026 m!3321643))

(declare-fun m!3321645 () Bool)

(assert (=> b!2932026 m!3321645))

(declare-fun m!3321647 () Bool)

(assert (=> b!2932026 m!3321647))

(declare-fun m!3321649 () Bool)

(assert (=> b!2932026 m!3321649))

(assert (=> b!2932026 m!3321647))

(declare-fun m!3321651 () Bool)

(assert (=> b!2932026 m!3321651))

(declare-fun m!3321653 () Bool)

(assert (=> b!2932026 m!3321653))

(declare-fun m!3321655 () Bool)

(assert (=> b!2932030 m!3321655))

(check-sat (not b!2932023) (not b!2932032) (not b!2932033) (not b!2932029) (not b!2932034) (not b!2932028) (not start!285076) (not b!2932024) (not b!2932026) tp_is_empty!15673 (not b!2932035) (not b!2932030) (not b!2932027))
(check-sat)
(get-model)

(declare-fun d!839451 () Bool)

(declare-fun res!1210499 () Bool)

(declare-fun e!1848775 () Bool)

(assert (=> d!839451 (=> res!1210499 e!1848775)))

(assert (=> d!839451 (= res!1210499 ((_ is ElementMatch!9055) r!17423))))

(assert (=> d!839451 (= (validRegex!3788 r!17423) e!1848775)))

(declare-fun b!2932114 () Bool)

(declare-fun e!1848778 () Bool)

(assert (=> b!2932114 (= e!1848775 e!1848778)))

(declare-fun c!478867 () Bool)

(assert (=> b!2932114 (= c!478867 ((_ is Star!9055) r!17423))))

(declare-fun bm!192477 () Bool)

(declare-fun call!192483 () Bool)

(declare-fun c!478868 () Bool)

(assert (=> bm!192477 (= call!192483 (validRegex!3788 (ite c!478868 (regOne!18623 r!17423) (regTwo!18622 r!17423))))))

(declare-fun b!2932115 () Bool)

(declare-fun e!1848779 () Bool)

(declare-fun e!1848776 () Bool)

(assert (=> b!2932115 (= e!1848779 e!1848776)))

(declare-fun res!1210500 () Bool)

(assert (=> b!2932115 (=> (not res!1210500) (not e!1848776))))

(declare-fun call!192484 () Bool)

(assert (=> b!2932115 (= res!1210500 call!192484)))

(declare-fun bm!192478 () Bool)

(declare-fun call!192482 () Bool)

(assert (=> bm!192478 (= call!192484 call!192482)))

(declare-fun b!2932116 () Bool)

(declare-fun res!1210495 () Bool)

(declare-fun e!1848780 () Bool)

(assert (=> b!2932116 (=> (not res!1210495) (not e!1848780))))

(assert (=> b!2932116 (= res!1210495 call!192483)))

(declare-fun e!1848777 () Bool)

(assert (=> b!2932116 (= e!1848777 e!1848780)))

(declare-fun b!2932117 () Bool)

(assert (=> b!2932117 (= e!1848778 e!1848777)))

(assert (=> b!2932117 (= c!478868 ((_ is Union!9055) r!17423))))

(declare-fun b!2932118 () Bool)

(assert (=> b!2932118 (= e!1848776 call!192483)))

(declare-fun b!2932119 () Bool)

(declare-fun e!1848781 () Bool)

(assert (=> b!2932119 (= e!1848781 call!192482)))

(declare-fun bm!192479 () Bool)

(assert (=> bm!192479 (= call!192482 (validRegex!3788 (ite c!478867 (reg!9384 r!17423) (ite c!478868 (regTwo!18623 r!17423) (regOne!18622 r!17423)))))))

(declare-fun b!2932120 () Bool)

(assert (=> b!2932120 (= e!1848780 call!192484)))

(declare-fun b!2932121 () Bool)

(declare-fun res!1210501 () Bool)

(assert (=> b!2932121 (=> res!1210501 e!1848779)))

(assert (=> b!2932121 (= res!1210501 (not ((_ is Concat!14376) r!17423)))))

(assert (=> b!2932121 (= e!1848777 e!1848779)))

(declare-fun b!2932122 () Bool)

(assert (=> b!2932122 (= e!1848778 e!1848781)))

(declare-fun res!1210498 () Bool)

(declare-fun nullable!2851 (Regex!9055) Bool)

(assert (=> b!2932122 (= res!1210498 (not (nullable!2851 (reg!9384 r!17423))))))

(assert (=> b!2932122 (=> (not res!1210498) (not e!1848781))))

(assert (= (and d!839451 (not res!1210499)) b!2932114))

(assert (= (and b!2932114 c!478867) b!2932122))

(assert (= (and b!2932114 (not c!478867)) b!2932117))

(assert (= (and b!2932122 res!1210498) b!2932119))

(assert (= (and b!2932117 c!478868) b!2932116))

(assert (= (and b!2932117 (not c!478868)) b!2932121))

(assert (= (and b!2932116 res!1210495) b!2932120))

(assert (= (and b!2932121 (not res!1210501)) b!2932115))

(assert (= (and b!2932115 res!1210500) b!2932118))

(assert (= (or b!2932116 b!2932118) bm!192477))

(assert (= (or b!2932120 b!2932115) bm!192478))

(assert (= (or b!2932119 bm!192478) bm!192479))

(declare-fun m!3321681 () Bool)

(assert (=> bm!192477 m!3321681))

(declare-fun m!3321683 () Bool)

(assert (=> bm!192479 m!3321683))

(declare-fun m!3321685 () Bool)

(assert (=> b!2932122 m!3321685))

(assert (=> start!285076 d!839451))

(declare-fun b!2932210 () Bool)

(declare-fun e!1848831 () Bool)

(declare-fun lt!1028164 () Bool)

(assert (=> b!2932210 (= e!1848831 (not lt!1028164))))

(declare-fun b!2932211 () Bool)

(declare-fun e!1848835 () Bool)

(declare-fun e!1848830 () Bool)

(assert (=> b!2932211 (= e!1848835 e!1848830)))

(declare-fun res!1210550 () Bool)

(assert (=> b!2932211 (=> res!1210550 e!1848830)))

(declare-fun call!192487 () Bool)

(assert (=> b!2932211 (= res!1210550 call!192487)))

(declare-fun b!2932212 () Bool)

(declare-fun e!1848833 () Bool)

(assert (=> b!2932212 (= e!1848833 (= lt!1028164 call!192487))))

(declare-fun b!2932213 () Bool)

(declare-fun head!6521 (List!34920) C!18296)

(assert (=> b!2932213 (= e!1848830 (not (= (head!6521 (_2!20012 lt!1028139)) (c!478853 lt!1028142))))))

(declare-fun b!2932214 () Bool)

(declare-fun res!1210556 () Bool)

(declare-fun e!1848834 () Bool)

(assert (=> b!2932214 (=> (not res!1210556) (not e!1848834))))

(declare-fun tail!4747 (List!34920) List!34920)

(assert (=> b!2932214 (= res!1210556 (isEmpty!19049 (tail!4747 (_2!20012 lt!1028139))))))

(declare-fun b!2932215 () Bool)

(declare-fun e!1848829 () Bool)

(assert (=> b!2932215 (= e!1848829 (nullable!2851 lt!1028142))))

(declare-fun b!2932216 () Bool)

(declare-fun res!1210549 () Bool)

(assert (=> b!2932216 (=> res!1210549 e!1848830)))

(assert (=> b!2932216 (= res!1210549 (not (isEmpty!19049 (tail!4747 (_2!20012 lt!1028139)))))))

(declare-fun b!2932217 () Bool)

(assert (=> b!2932217 (= e!1848834 (= (head!6521 (_2!20012 lt!1028139)) (c!478853 lt!1028142)))))

(declare-fun b!2932218 () Bool)

(declare-fun derivativeStep!2462 (Regex!9055 C!18296) Regex!9055)

(assert (=> b!2932218 (= e!1848829 (matchR!3937 (derivativeStep!2462 lt!1028142 (head!6521 (_2!20012 lt!1028139))) (tail!4747 (_2!20012 lt!1028139))))))

(declare-fun b!2932219 () Bool)

(declare-fun res!1210554 () Bool)

(declare-fun e!1848832 () Bool)

(assert (=> b!2932219 (=> res!1210554 e!1848832)))

(assert (=> b!2932219 (= res!1210554 (not ((_ is ElementMatch!9055) lt!1028142)))))

(assert (=> b!2932219 (= e!1848831 e!1848832)))

(declare-fun b!2932220 () Bool)

(assert (=> b!2932220 (= e!1848832 e!1848835)))

(declare-fun res!1210552 () Bool)

(assert (=> b!2932220 (=> (not res!1210552) (not e!1848835))))

(assert (=> b!2932220 (= res!1210552 (not lt!1028164))))

(declare-fun bm!192482 () Bool)

(assert (=> bm!192482 (= call!192487 (isEmpty!19049 (_2!20012 lt!1028139)))))

(declare-fun b!2932221 () Bool)

(declare-fun res!1210555 () Bool)

(assert (=> b!2932221 (=> (not res!1210555) (not e!1848834))))

(assert (=> b!2932221 (= res!1210555 (not call!192487))))

(declare-fun b!2932222 () Bool)

(assert (=> b!2932222 (= e!1848833 e!1848831)))

(declare-fun c!478890 () Bool)

(assert (=> b!2932222 (= c!478890 ((_ is EmptyLang!9055) lt!1028142))))

(declare-fun d!839457 () Bool)

(assert (=> d!839457 e!1848833))

(declare-fun c!478889 () Bool)

(assert (=> d!839457 (= c!478889 ((_ is EmptyExpr!9055) lt!1028142))))

(assert (=> d!839457 (= lt!1028164 e!1848829)))

(declare-fun c!478891 () Bool)

(assert (=> d!839457 (= c!478891 (isEmpty!19049 (_2!20012 lt!1028139)))))

(assert (=> d!839457 (validRegex!3788 lt!1028142)))

(assert (=> d!839457 (= (matchR!3937 lt!1028142 (_2!20012 lt!1028139)) lt!1028164)))

(declare-fun b!2932223 () Bool)

(declare-fun res!1210551 () Bool)

(assert (=> b!2932223 (=> res!1210551 e!1848832)))

(assert (=> b!2932223 (= res!1210551 e!1848834)))

(declare-fun res!1210553 () Bool)

(assert (=> b!2932223 (=> (not res!1210553) (not e!1848834))))

(assert (=> b!2932223 (= res!1210553 lt!1028164)))

(assert (= (and d!839457 c!478891) b!2932215))

(assert (= (and d!839457 (not c!478891)) b!2932218))

(assert (= (and d!839457 c!478889) b!2932212))

(assert (= (and d!839457 (not c!478889)) b!2932222))

(assert (= (and b!2932222 c!478890) b!2932210))

(assert (= (and b!2932222 (not c!478890)) b!2932219))

(assert (= (and b!2932219 (not res!1210554)) b!2932223))

(assert (= (and b!2932223 res!1210553) b!2932221))

(assert (= (and b!2932221 res!1210555) b!2932214))

(assert (= (and b!2932214 res!1210556) b!2932217))

(assert (= (and b!2932223 (not res!1210551)) b!2932220))

(assert (= (and b!2932220 res!1210552) b!2932211))

(assert (= (and b!2932211 (not res!1210550)) b!2932216))

(assert (= (and b!2932216 (not res!1210549)) b!2932213))

(assert (= (or b!2932212 b!2932211 b!2932221) bm!192482))

(declare-fun m!3321719 () Bool)

(assert (=> b!2932214 m!3321719))

(assert (=> b!2932214 m!3321719))

(declare-fun m!3321721 () Bool)

(assert (=> b!2932214 m!3321721))

(declare-fun m!3321723 () Bool)

(assert (=> d!839457 m!3321723))

(declare-fun m!3321725 () Bool)

(assert (=> d!839457 m!3321725))

(declare-fun m!3321727 () Bool)

(assert (=> b!2932215 m!3321727))

(declare-fun m!3321729 () Bool)

(assert (=> b!2932217 m!3321729))

(assert (=> b!2932213 m!3321729))

(assert (=> bm!192482 m!3321723))

(assert (=> b!2932216 m!3321719))

(assert (=> b!2932216 m!3321719))

(assert (=> b!2932216 m!3321721))

(assert (=> b!2932218 m!3321729))

(assert (=> b!2932218 m!3321729))

(declare-fun m!3321731 () Bool)

(assert (=> b!2932218 m!3321731))

(assert (=> b!2932218 m!3321719))

(assert (=> b!2932218 m!3321731))

(assert (=> b!2932218 m!3321719))

(declare-fun m!3321733 () Bool)

(assert (=> b!2932218 m!3321733))

(assert (=> b!2932028 d!839457))

(declare-fun bs!525285 () Bool)

(declare-fun d!839467 () Bool)

(assert (= bs!525285 (and d!839467 b!2932026)))

(declare-fun lambda!109190 () Int)

(assert (=> bs!525285 (= lambda!109190 lambda!109171)))

(assert (=> bs!525285 (not (= lambda!109190 lambda!109172))))

(assert (=> d!839467 true))

(assert (=> d!839467 true))

(assert (=> d!839467 true))

(assert (=> d!839467 (= (isDefined!5163 (findConcatSeparation!1006 (reg!9384 r!17423) lt!1028142 Nil!34796 s!11993 s!11993)) (Exists!1417 lambda!109190))))

(declare-fun lt!1028172 () Unit!48459)

(declare-fun choose!17336 (Regex!9055 Regex!9055 List!34920) Unit!48459)

(assert (=> d!839467 (= lt!1028172 (choose!17336 (reg!9384 r!17423) lt!1028142 s!11993))))

(assert (=> d!839467 (validRegex!3788 (reg!9384 r!17423))))

(assert (=> d!839467 (= (lemmaFindConcatSeparationEquivalentToExists!788 (reg!9384 r!17423) lt!1028142 s!11993) lt!1028172)))

(declare-fun bs!525286 () Bool)

(assert (= bs!525286 d!839467))

(assert (=> bs!525286 m!3321649))

(declare-fun m!3321777 () Bool)

(assert (=> bs!525286 m!3321777))

(declare-fun m!3321779 () Bool)

(assert (=> bs!525286 m!3321779))

(assert (=> bs!525286 m!3321649))

(declare-fun m!3321781 () Bool)

(assert (=> bs!525286 m!3321781))

(declare-fun m!3321783 () Bool)

(assert (=> bs!525286 m!3321783))

(assert (=> b!2932026 d!839467))

(declare-fun bs!525290 () Bool)

(declare-fun d!839481 () Bool)

(assert (= bs!525290 (and d!839481 b!2932026)))

(declare-fun lambda!109195 () Int)

(assert (=> bs!525290 (= (= (Star!9055 (reg!9384 r!17423)) lt!1028142) (= lambda!109195 lambda!109171))))

(assert (=> bs!525290 (not (= lambda!109195 lambda!109172))))

(declare-fun bs!525291 () Bool)

(assert (= bs!525291 (and d!839481 d!839467)))

(assert (=> bs!525291 (= (= (Star!9055 (reg!9384 r!17423)) lt!1028142) (= lambda!109195 lambda!109190))))

(assert (=> d!839481 true))

(assert (=> d!839481 true))

(declare-fun lambda!109196 () Int)

(assert (=> bs!525290 (not (= lambda!109196 lambda!109171))))

(assert (=> bs!525290 (= (= (Star!9055 (reg!9384 r!17423)) lt!1028142) (= lambda!109196 lambda!109172))))

(assert (=> bs!525291 (not (= lambda!109196 lambda!109190))))

(declare-fun bs!525292 () Bool)

(assert (= bs!525292 d!839481))

(assert (=> bs!525292 (not (= lambda!109196 lambda!109195))))

(assert (=> d!839481 true))

(assert (=> d!839481 true))

(assert (=> d!839481 (= (Exists!1417 lambda!109195) (Exists!1417 lambda!109196))))

(declare-fun lt!1028210 () Unit!48459)

(declare-fun choose!17337 (Regex!9055 List!34920) Unit!48459)

(assert (=> d!839481 (= lt!1028210 (choose!17337 (reg!9384 r!17423) s!11993))))

(assert (=> d!839481 (validRegex!3788 (reg!9384 r!17423))))

(assert (=> d!839481 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!228 (reg!9384 r!17423) s!11993) lt!1028210)))

(declare-fun m!3321849 () Bool)

(assert (=> bs!525292 m!3321849))

(declare-fun m!3321851 () Bool)

(assert (=> bs!525292 m!3321851))

(declare-fun m!3321853 () Bool)

(assert (=> bs!525292 m!3321853))

(assert (=> bs!525292 m!3321777))

(assert (=> b!2932026 d!839481))

(declare-fun d!839501 () Bool)

(declare-fun isEmpty!19051 (Option!6612) Bool)

(assert (=> d!839501 (= (isDefined!5163 lt!1028132) (not (isEmpty!19051 lt!1028132)))))

(declare-fun bs!525293 () Bool)

(assert (= bs!525293 d!839501))

(declare-fun m!3321855 () Bool)

(assert (=> bs!525293 m!3321855))

(assert (=> b!2932026 d!839501))

(declare-fun d!839503 () Bool)

(declare-fun choose!17338 (Int) Bool)

(assert (=> d!839503 (= (Exists!1417 lambda!109171) (choose!17338 lambda!109171))))

(declare-fun bs!525294 () Bool)

(assert (= bs!525294 d!839503))

(declare-fun m!3321857 () Bool)

(assert (=> bs!525294 m!3321857))

(assert (=> b!2932026 d!839503))

(declare-fun b!2932502 () Bool)

(declare-fun e!1848985 () Bool)

(declare-fun lt!1028218 () Option!6612)

(declare-fun ++!8303 (List!34920 List!34920) List!34920)

(assert (=> b!2932502 (= e!1848985 (= (++!8303 (_1!20012 (get!10631 lt!1028218)) (_2!20012 (get!10631 lt!1028218))) s!11993))))

(declare-fun b!2932503 () Bool)

(declare-fun lt!1028217 () Unit!48459)

(declare-fun lt!1028219 () Unit!48459)

(assert (=> b!2932503 (= lt!1028217 lt!1028219)))

(assert (=> b!2932503 (= (++!8303 (++!8303 Nil!34796 (Cons!34796 (h!40216 s!11993) Nil!34796)) (t!233985 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!934 (List!34920 C!18296 List!34920 List!34920) Unit!48459)

(assert (=> b!2932503 (= lt!1028219 (lemmaMoveElementToOtherListKeepsConcatEq!934 Nil!34796 (h!40216 s!11993) (t!233985 s!11993) s!11993))))

(declare-fun e!1848989 () Option!6612)

(assert (=> b!2932503 (= e!1848989 (findConcatSeparation!1006 (reg!9384 r!17423) lt!1028142 (++!8303 Nil!34796 (Cons!34796 (h!40216 s!11993) Nil!34796)) (t!233985 s!11993) s!11993))))

(declare-fun b!2932504 () Bool)

(declare-fun res!1210651 () Bool)

(assert (=> b!2932504 (=> (not res!1210651) (not e!1848985))))

(assert (=> b!2932504 (= res!1210651 (matchR!3937 (reg!9384 r!17423) (_1!20012 (get!10631 lt!1028218))))))

(declare-fun b!2932505 () Bool)

(declare-fun e!1848986 () Bool)

(assert (=> b!2932505 (= e!1848986 (matchR!3937 lt!1028142 s!11993))))

(declare-fun b!2932506 () Bool)

(declare-fun e!1848988 () Option!6612)

(assert (=> b!2932506 (= e!1848988 (Some!6611 (tuple2!33761 Nil!34796 s!11993)))))

(declare-fun d!839505 () Bool)

(declare-fun e!1848987 () Bool)

(assert (=> d!839505 e!1848987))

(declare-fun res!1210650 () Bool)

(assert (=> d!839505 (=> res!1210650 e!1848987)))

(assert (=> d!839505 (= res!1210650 e!1848985)))

(declare-fun res!1210649 () Bool)

(assert (=> d!839505 (=> (not res!1210649) (not e!1848985))))

(assert (=> d!839505 (= res!1210649 (isDefined!5163 lt!1028218))))

(assert (=> d!839505 (= lt!1028218 e!1848988)))

(declare-fun c!478968 () Bool)

(assert (=> d!839505 (= c!478968 e!1848986)))

(declare-fun res!1210648 () Bool)

(assert (=> d!839505 (=> (not res!1210648) (not e!1848986))))

(assert (=> d!839505 (= res!1210648 (matchR!3937 (reg!9384 r!17423) Nil!34796))))

(assert (=> d!839505 (validRegex!3788 (reg!9384 r!17423))))

(assert (=> d!839505 (= (findConcatSeparation!1006 (reg!9384 r!17423) lt!1028142 Nil!34796 s!11993 s!11993) lt!1028218)))

(declare-fun b!2932507 () Bool)

(assert (=> b!2932507 (= e!1848989 None!6611)))

(declare-fun b!2932508 () Bool)

(assert (=> b!2932508 (= e!1848987 (not (isDefined!5163 lt!1028218)))))

(declare-fun b!2932509 () Bool)

(assert (=> b!2932509 (= e!1848988 e!1848989)))

(declare-fun c!478969 () Bool)

(assert (=> b!2932509 (= c!478969 ((_ is Nil!34796) s!11993))))

(declare-fun b!2932510 () Bool)

(declare-fun res!1210652 () Bool)

(assert (=> b!2932510 (=> (not res!1210652) (not e!1848985))))

(assert (=> b!2932510 (= res!1210652 (matchR!3937 lt!1028142 (_2!20012 (get!10631 lt!1028218))))))

(assert (= (and d!839505 res!1210648) b!2932505))

(assert (= (and d!839505 c!478968) b!2932506))

(assert (= (and d!839505 (not c!478968)) b!2932509))

(assert (= (and b!2932509 c!478969) b!2932507))

(assert (= (and b!2932509 (not c!478969)) b!2932503))

(assert (= (and d!839505 res!1210649) b!2932504))

(assert (= (and b!2932504 res!1210651) b!2932510))

(assert (= (and b!2932510 res!1210652) b!2932502))

(assert (= (and d!839505 (not res!1210650)) b!2932508))

(declare-fun m!3321859 () Bool)

(assert (=> b!2932504 m!3321859))

(declare-fun m!3321861 () Bool)

(assert (=> b!2932504 m!3321861))

(declare-fun m!3321863 () Bool)

(assert (=> b!2932505 m!3321863))

(declare-fun m!3321865 () Bool)

(assert (=> d!839505 m!3321865))

(declare-fun m!3321867 () Bool)

(assert (=> d!839505 m!3321867))

(assert (=> d!839505 m!3321777))

(declare-fun m!3321869 () Bool)

(assert (=> b!2932503 m!3321869))

(assert (=> b!2932503 m!3321869))

(declare-fun m!3321871 () Bool)

(assert (=> b!2932503 m!3321871))

(declare-fun m!3321873 () Bool)

(assert (=> b!2932503 m!3321873))

(assert (=> b!2932503 m!3321869))

(declare-fun m!3321875 () Bool)

(assert (=> b!2932503 m!3321875))

(assert (=> b!2932502 m!3321859))

(declare-fun m!3321877 () Bool)

(assert (=> b!2932502 m!3321877))

(assert (=> b!2932508 m!3321865))

(assert (=> b!2932510 m!3321859))

(declare-fun m!3321879 () Bool)

(assert (=> b!2932510 m!3321879))

(assert (=> b!2932026 d!839505))

(declare-fun d!839507 () Bool)

(assert (=> d!839507 (= (Exists!1417 lambda!109172) (choose!17338 lambda!109172))))

(declare-fun bs!525295 () Bool)

(assert (= bs!525295 d!839507))

(declare-fun m!3321881 () Bool)

(assert (=> bs!525295 m!3321881))

(assert (=> b!2932026 d!839507))

(declare-fun d!839509 () Bool)

(assert (=> d!839509 (= (matchR!3937 (reg!9384 r!17423) (_1!20012 lt!1028139)) (matchRSpec!1192 (reg!9384 r!17423) (_1!20012 lt!1028139)))))

(declare-fun lt!1028222 () Unit!48459)

(declare-fun choose!17339 (Regex!9055 List!34920) Unit!48459)

(assert (=> d!839509 (= lt!1028222 (choose!17339 (reg!9384 r!17423) (_1!20012 lt!1028139)))))

(assert (=> d!839509 (validRegex!3788 (reg!9384 r!17423))))

(assert (=> d!839509 (= (mainMatchTheorem!1192 (reg!9384 r!17423) (_1!20012 lt!1028139)) lt!1028222)))

(declare-fun bs!525296 () Bool)

(assert (= bs!525296 d!839509))

(assert (=> bs!525296 m!3321637))

(declare-fun m!3321883 () Bool)

(assert (=> bs!525296 m!3321883))

(declare-fun m!3321885 () Bool)

(assert (=> bs!525296 m!3321885))

(assert (=> bs!525296 m!3321777))

(assert (=> b!2932032 d!839509))

(declare-fun bs!525297 () Bool)

(declare-fun b!2932549 () Bool)

(assert (= bs!525297 (and b!2932549 d!839467)))

(declare-fun lambda!109201 () Int)

(assert (=> bs!525297 (not (= lambda!109201 lambda!109190))))

(declare-fun bs!525298 () Bool)

(assert (= bs!525298 (and b!2932549 b!2932026)))

(assert (=> bs!525298 (= (= r!17423 lt!1028142) (= lambda!109201 lambda!109172))))

(declare-fun bs!525299 () Bool)

(assert (= bs!525299 (and b!2932549 d!839481)))

(assert (=> bs!525299 (not (= lambda!109201 lambda!109195))))

(assert (=> bs!525299 (= (= r!17423 (Star!9055 (reg!9384 r!17423))) (= lambda!109201 lambda!109196))))

(assert (=> bs!525298 (not (= lambda!109201 lambda!109171))))

(assert (=> b!2932549 true))

(assert (=> b!2932549 true))

(declare-fun bs!525300 () Bool)

(declare-fun b!2932544 () Bool)

(assert (= bs!525300 (and b!2932544 d!839467)))

(declare-fun lambda!109202 () Int)

(assert (=> bs!525300 (not (= lambda!109202 lambda!109190))))

(declare-fun bs!525301 () Bool)

(assert (= bs!525301 (and b!2932544 b!2932026)))

(assert (=> bs!525301 (not (= lambda!109202 lambda!109172))))

(declare-fun bs!525302 () Bool)

(assert (= bs!525302 (and b!2932544 d!839481)))

(assert (=> bs!525302 (not (= lambda!109202 lambda!109196))))

(assert (=> bs!525301 (not (= lambda!109202 lambda!109171))))

(assert (=> bs!525302 (not (= lambda!109202 lambda!109195))))

(declare-fun bs!525303 () Bool)

(assert (= bs!525303 (and b!2932544 b!2932549)))

(assert (=> bs!525303 (not (= lambda!109202 lambda!109201))))

(assert (=> b!2932544 true))

(assert (=> b!2932544 true))

(declare-fun e!1849013 () Bool)

(declare-fun call!192543 () Bool)

(assert (=> b!2932544 (= e!1849013 call!192543)))

(declare-fun b!2932545 () Bool)

(declare-fun e!1849012 () Bool)

(assert (=> b!2932545 (= e!1849012 (matchRSpec!1192 (regTwo!18623 r!17423) s!11993))))

(declare-fun b!2932546 () Bool)

(declare-fun e!1849008 () Bool)

(declare-fun e!1849011 () Bool)

(assert (=> b!2932546 (= e!1849008 e!1849011)))

(declare-fun res!1210671 () Bool)

(assert (=> b!2932546 (= res!1210671 (not ((_ is EmptyLang!9055) r!17423)))))

(assert (=> b!2932546 (=> (not res!1210671) (not e!1849011))))

(declare-fun c!478978 () Bool)

(declare-fun bm!192537 () Bool)

(assert (=> bm!192537 (= call!192543 (Exists!1417 (ite c!478978 lambda!109201 lambda!109202)))))

(declare-fun bm!192538 () Bool)

(declare-fun call!192542 () Bool)

(assert (=> bm!192538 (= call!192542 (isEmpty!19049 s!11993))))

(declare-fun b!2932547 () Bool)

(declare-fun c!478980 () Bool)

(assert (=> b!2932547 (= c!478980 ((_ is ElementMatch!9055) r!17423))))

(declare-fun e!1849009 () Bool)

(assert (=> b!2932547 (= e!1849011 e!1849009)))

(declare-fun d!839511 () Bool)

(declare-fun c!478979 () Bool)

(assert (=> d!839511 (= c!478979 ((_ is EmptyExpr!9055) r!17423))))

(assert (=> d!839511 (= (matchRSpec!1192 r!17423 s!11993) e!1849008)))

(declare-fun b!2932543 () Bool)

(declare-fun e!1849014 () Bool)

(assert (=> b!2932543 (= e!1849014 e!1849012)))

(declare-fun res!1210669 () Bool)

(assert (=> b!2932543 (= res!1210669 (matchRSpec!1192 (regOne!18623 r!17423) s!11993))))

(assert (=> b!2932543 (=> res!1210669 e!1849012)))

(declare-fun b!2932548 () Bool)

(assert (=> b!2932548 (= e!1849014 e!1849013)))

(assert (=> b!2932548 (= c!478978 ((_ is Star!9055) r!17423))))

(declare-fun e!1849010 () Bool)

(assert (=> b!2932549 (= e!1849010 call!192543)))

(declare-fun b!2932550 () Bool)

(assert (=> b!2932550 (= e!1849009 (= s!11993 (Cons!34796 (c!478853 r!17423) Nil!34796)))))

(declare-fun b!2932551 () Bool)

(assert (=> b!2932551 (= e!1849008 call!192542)))

(declare-fun b!2932552 () Bool)

(declare-fun c!478981 () Bool)

(assert (=> b!2932552 (= c!478981 ((_ is Union!9055) r!17423))))

(assert (=> b!2932552 (= e!1849009 e!1849014)))

(declare-fun b!2932553 () Bool)

(declare-fun res!1210670 () Bool)

(assert (=> b!2932553 (=> res!1210670 e!1849010)))

(assert (=> b!2932553 (= res!1210670 call!192542)))

(assert (=> b!2932553 (= e!1849013 e!1849010)))

(assert (= (and d!839511 c!478979) b!2932551))

(assert (= (and d!839511 (not c!478979)) b!2932546))

(assert (= (and b!2932546 res!1210671) b!2932547))

(assert (= (and b!2932547 c!478980) b!2932550))

(assert (= (and b!2932547 (not c!478980)) b!2932552))

(assert (= (and b!2932552 c!478981) b!2932543))

(assert (= (and b!2932552 (not c!478981)) b!2932548))

(assert (= (and b!2932543 (not res!1210669)) b!2932545))

(assert (= (and b!2932548 c!478978) b!2932553))

(assert (= (and b!2932548 (not c!478978)) b!2932544))

(assert (= (and b!2932553 (not res!1210670)) b!2932549))

(assert (= (or b!2932549 b!2932544) bm!192537))

(assert (= (or b!2932551 b!2932553) bm!192538))

(declare-fun m!3321887 () Bool)

(assert (=> b!2932545 m!3321887))

(declare-fun m!3321889 () Bool)

(assert (=> bm!192537 m!3321889))

(assert (=> bm!192538 m!3321655))

(declare-fun m!3321891 () Bool)

(assert (=> b!2932543 m!3321891))

(assert (=> b!2932035 d!839511))

(declare-fun b!2932554 () Bool)

(declare-fun e!1849017 () Bool)

(declare-fun lt!1028223 () Bool)

(assert (=> b!2932554 (= e!1849017 (not lt!1028223))))

(declare-fun b!2932555 () Bool)

(declare-fun e!1849021 () Bool)

(declare-fun e!1849016 () Bool)

(assert (=> b!2932555 (= e!1849021 e!1849016)))

(declare-fun res!1210673 () Bool)

(assert (=> b!2932555 (=> res!1210673 e!1849016)))

(declare-fun call!192544 () Bool)

(assert (=> b!2932555 (= res!1210673 call!192544)))

(declare-fun b!2932556 () Bool)

(declare-fun e!1849019 () Bool)

(assert (=> b!2932556 (= e!1849019 (= lt!1028223 call!192544))))

(declare-fun b!2932557 () Bool)

(assert (=> b!2932557 (= e!1849016 (not (= (head!6521 s!11993) (c!478853 r!17423))))))

(declare-fun b!2932558 () Bool)

(declare-fun res!1210679 () Bool)

(declare-fun e!1849020 () Bool)

(assert (=> b!2932558 (=> (not res!1210679) (not e!1849020))))

(assert (=> b!2932558 (= res!1210679 (isEmpty!19049 (tail!4747 s!11993)))))

(declare-fun b!2932559 () Bool)

(declare-fun e!1849015 () Bool)

(assert (=> b!2932559 (= e!1849015 (nullable!2851 r!17423))))

(declare-fun b!2932560 () Bool)

(declare-fun res!1210672 () Bool)

(assert (=> b!2932560 (=> res!1210672 e!1849016)))

(assert (=> b!2932560 (= res!1210672 (not (isEmpty!19049 (tail!4747 s!11993))))))

(declare-fun b!2932561 () Bool)

(assert (=> b!2932561 (= e!1849020 (= (head!6521 s!11993) (c!478853 r!17423)))))

(declare-fun b!2932562 () Bool)

(assert (=> b!2932562 (= e!1849015 (matchR!3937 (derivativeStep!2462 r!17423 (head!6521 s!11993)) (tail!4747 s!11993)))))

(declare-fun b!2932563 () Bool)

(declare-fun res!1210677 () Bool)

(declare-fun e!1849018 () Bool)

(assert (=> b!2932563 (=> res!1210677 e!1849018)))

(assert (=> b!2932563 (= res!1210677 (not ((_ is ElementMatch!9055) r!17423)))))

(assert (=> b!2932563 (= e!1849017 e!1849018)))

(declare-fun b!2932564 () Bool)

(assert (=> b!2932564 (= e!1849018 e!1849021)))

(declare-fun res!1210675 () Bool)

(assert (=> b!2932564 (=> (not res!1210675) (not e!1849021))))

(assert (=> b!2932564 (= res!1210675 (not lt!1028223))))

(declare-fun bm!192539 () Bool)

(assert (=> bm!192539 (= call!192544 (isEmpty!19049 s!11993))))

(declare-fun b!2932565 () Bool)

(declare-fun res!1210678 () Bool)

(assert (=> b!2932565 (=> (not res!1210678) (not e!1849020))))

(assert (=> b!2932565 (= res!1210678 (not call!192544))))

(declare-fun b!2932566 () Bool)

(assert (=> b!2932566 (= e!1849019 e!1849017)))

(declare-fun c!478983 () Bool)

(assert (=> b!2932566 (= c!478983 ((_ is EmptyLang!9055) r!17423))))

(declare-fun d!839513 () Bool)

(assert (=> d!839513 e!1849019))

(declare-fun c!478982 () Bool)

(assert (=> d!839513 (= c!478982 ((_ is EmptyExpr!9055) r!17423))))

(assert (=> d!839513 (= lt!1028223 e!1849015)))

(declare-fun c!478984 () Bool)

(assert (=> d!839513 (= c!478984 (isEmpty!19049 s!11993))))

(assert (=> d!839513 (validRegex!3788 r!17423)))

(assert (=> d!839513 (= (matchR!3937 r!17423 s!11993) lt!1028223)))

(declare-fun b!2932567 () Bool)

(declare-fun res!1210674 () Bool)

(assert (=> b!2932567 (=> res!1210674 e!1849018)))

(assert (=> b!2932567 (= res!1210674 e!1849020)))

(declare-fun res!1210676 () Bool)

(assert (=> b!2932567 (=> (not res!1210676) (not e!1849020))))

(assert (=> b!2932567 (= res!1210676 lt!1028223)))

(assert (= (and d!839513 c!478984) b!2932559))

(assert (= (and d!839513 (not c!478984)) b!2932562))

(assert (= (and d!839513 c!478982) b!2932556))

(assert (= (and d!839513 (not c!478982)) b!2932566))

(assert (= (and b!2932566 c!478983) b!2932554))

(assert (= (and b!2932566 (not c!478983)) b!2932563))

(assert (= (and b!2932563 (not res!1210677)) b!2932567))

(assert (= (and b!2932567 res!1210676) b!2932565))

(assert (= (and b!2932565 res!1210678) b!2932558))

(assert (= (and b!2932558 res!1210679) b!2932561))

(assert (= (and b!2932567 (not res!1210674)) b!2932564))

(assert (= (and b!2932564 res!1210675) b!2932555))

(assert (= (and b!2932555 (not res!1210673)) b!2932560))

(assert (= (and b!2932560 (not res!1210672)) b!2932557))

(assert (= (or b!2932556 b!2932555 b!2932565) bm!192539))

(declare-fun m!3321893 () Bool)

(assert (=> b!2932558 m!3321893))

(assert (=> b!2932558 m!3321893))

(declare-fun m!3321895 () Bool)

(assert (=> b!2932558 m!3321895))

(assert (=> d!839513 m!3321655))

(assert (=> d!839513 m!3321615))

(declare-fun m!3321897 () Bool)

(assert (=> b!2932559 m!3321897))

(declare-fun m!3321899 () Bool)

(assert (=> b!2932561 m!3321899))

(assert (=> b!2932557 m!3321899))

(assert (=> bm!192539 m!3321655))

(assert (=> b!2932560 m!3321893))

(assert (=> b!2932560 m!3321893))

(assert (=> b!2932560 m!3321895))

(assert (=> b!2932562 m!3321899))

(assert (=> b!2932562 m!3321899))

(declare-fun m!3321901 () Bool)

(assert (=> b!2932562 m!3321901))

(assert (=> b!2932562 m!3321893))

(assert (=> b!2932562 m!3321901))

(assert (=> b!2932562 m!3321893))

(declare-fun m!3321903 () Bool)

(assert (=> b!2932562 m!3321903))

(assert (=> b!2932035 d!839513))

(declare-fun d!839515 () Bool)

(assert (=> d!839515 (= (matchR!3937 r!17423 s!11993) (matchRSpec!1192 r!17423 s!11993))))

(declare-fun lt!1028224 () Unit!48459)

(assert (=> d!839515 (= lt!1028224 (choose!17339 r!17423 s!11993))))

(assert (=> d!839515 (validRegex!3788 r!17423)))

(assert (=> d!839515 (= (mainMatchTheorem!1192 r!17423 s!11993) lt!1028224)))

(declare-fun bs!525304 () Bool)

(assert (= bs!525304 d!839515))

(assert (=> bs!525304 m!3321611))

(assert (=> bs!525304 m!3321609))

(declare-fun m!3321905 () Bool)

(assert (=> bs!525304 m!3321905))

(assert (=> bs!525304 m!3321615))

(assert (=> b!2932035 d!839515))

(declare-fun d!839517 () Bool)

(assert (=> d!839517 (= (isEmpty!19049 s!11993) ((_ is Nil!34796) s!11993))))

(assert (=> b!2932030 d!839517))

(declare-fun d!839519 () Bool)

(declare-fun res!1210682 () Bool)

(declare-fun e!1849022 () Bool)

(assert (=> d!839519 (=> res!1210682 e!1849022)))

(assert (=> d!839519 (= res!1210682 ((_ is ElementMatch!9055) lt!1028136))))

(assert (=> d!839519 (= (validRegex!3788 lt!1028136) e!1849022)))

(declare-fun b!2932568 () Bool)

(declare-fun e!1849025 () Bool)

(assert (=> b!2932568 (= e!1849022 e!1849025)))

(declare-fun c!478985 () Bool)

(assert (=> b!2932568 (= c!478985 ((_ is Star!9055) lt!1028136))))

(declare-fun bm!192540 () Bool)

(declare-fun call!192546 () Bool)

(declare-fun c!478986 () Bool)

(assert (=> bm!192540 (= call!192546 (validRegex!3788 (ite c!478986 (regOne!18623 lt!1028136) (regTwo!18622 lt!1028136))))))

(declare-fun b!2932569 () Bool)

(declare-fun e!1849026 () Bool)

(declare-fun e!1849023 () Bool)

(assert (=> b!2932569 (= e!1849026 e!1849023)))

(declare-fun res!1210683 () Bool)

(assert (=> b!2932569 (=> (not res!1210683) (not e!1849023))))

(declare-fun call!192547 () Bool)

(assert (=> b!2932569 (= res!1210683 call!192547)))

(declare-fun bm!192541 () Bool)

(declare-fun call!192545 () Bool)

(assert (=> bm!192541 (= call!192547 call!192545)))

(declare-fun b!2932570 () Bool)

(declare-fun res!1210680 () Bool)

(declare-fun e!1849027 () Bool)

(assert (=> b!2932570 (=> (not res!1210680) (not e!1849027))))

(assert (=> b!2932570 (= res!1210680 call!192546)))

(declare-fun e!1849024 () Bool)

(assert (=> b!2932570 (= e!1849024 e!1849027)))

(declare-fun b!2932571 () Bool)

(assert (=> b!2932571 (= e!1849025 e!1849024)))

(assert (=> b!2932571 (= c!478986 ((_ is Union!9055) lt!1028136))))

(declare-fun b!2932572 () Bool)

(assert (=> b!2932572 (= e!1849023 call!192546)))

(declare-fun b!2932573 () Bool)

(declare-fun e!1849028 () Bool)

(assert (=> b!2932573 (= e!1849028 call!192545)))

(declare-fun bm!192542 () Bool)

(assert (=> bm!192542 (= call!192545 (validRegex!3788 (ite c!478985 (reg!9384 lt!1028136) (ite c!478986 (regTwo!18623 lt!1028136) (regOne!18622 lt!1028136)))))))

(declare-fun b!2932574 () Bool)

(assert (=> b!2932574 (= e!1849027 call!192547)))

(declare-fun b!2932575 () Bool)

(declare-fun res!1210684 () Bool)

(assert (=> b!2932575 (=> res!1210684 e!1849026)))

(assert (=> b!2932575 (= res!1210684 (not ((_ is Concat!14376) lt!1028136)))))

(assert (=> b!2932575 (= e!1849024 e!1849026)))

(declare-fun b!2932576 () Bool)

(assert (=> b!2932576 (= e!1849025 e!1849028)))

(declare-fun res!1210681 () Bool)

(assert (=> b!2932576 (= res!1210681 (not (nullable!2851 (reg!9384 lt!1028136))))))

(assert (=> b!2932576 (=> (not res!1210681) (not e!1849028))))

(assert (= (and d!839519 (not res!1210682)) b!2932568))

(assert (= (and b!2932568 c!478985) b!2932576))

(assert (= (and b!2932568 (not c!478985)) b!2932571))

(assert (= (and b!2932576 res!1210681) b!2932573))

(assert (= (and b!2932571 c!478986) b!2932570))

(assert (= (and b!2932571 (not c!478986)) b!2932575))

(assert (= (and b!2932570 res!1210680) b!2932574))

(assert (= (and b!2932575 (not res!1210684)) b!2932569))

(assert (= (and b!2932569 res!1210683) b!2932572))

(assert (= (or b!2932570 b!2932572) bm!192540))

(assert (= (or b!2932574 b!2932569) bm!192541))

(assert (= (or b!2932573 bm!192541) bm!192542))

(declare-fun m!3321907 () Bool)

(assert (=> bm!192540 m!3321907))

(declare-fun m!3321909 () Bool)

(assert (=> bm!192542 m!3321909))

(declare-fun m!3321911 () Bool)

(assert (=> b!2932576 m!3321911))

(assert (=> b!2932023 d!839519))

(declare-fun b!2932577 () Bool)

(declare-fun e!1849031 () Bool)

(declare-fun lt!1028225 () Bool)

(assert (=> b!2932577 (= e!1849031 (not lt!1028225))))

(declare-fun b!2932578 () Bool)

(declare-fun e!1849035 () Bool)

(declare-fun e!1849030 () Bool)

(assert (=> b!2932578 (= e!1849035 e!1849030)))

(declare-fun res!1210686 () Bool)

(assert (=> b!2932578 (=> res!1210686 e!1849030)))

(declare-fun call!192548 () Bool)

(assert (=> b!2932578 (= res!1210686 call!192548)))

(declare-fun b!2932579 () Bool)

(declare-fun e!1849033 () Bool)

(assert (=> b!2932579 (= e!1849033 (= lt!1028225 call!192548))))

(declare-fun b!2932580 () Bool)

(assert (=> b!2932580 (= e!1849030 (not (= (head!6521 (_2!20012 lt!1028139)) (c!478853 (simplify!62 lt!1028142)))))))

(declare-fun b!2932581 () Bool)

(declare-fun res!1210692 () Bool)

(declare-fun e!1849034 () Bool)

(assert (=> b!2932581 (=> (not res!1210692) (not e!1849034))))

(assert (=> b!2932581 (= res!1210692 (isEmpty!19049 (tail!4747 (_2!20012 lt!1028139))))))

(declare-fun b!2932582 () Bool)

(declare-fun e!1849029 () Bool)

(assert (=> b!2932582 (= e!1849029 (nullable!2851 (simplify!62 lt!1028142)))))

(declare-fun b!2932583 () Bool)

(declare-fun res!1210685 () Bool)

(assert (=> b!2932583 (=> res!1210685 e!1849030)))

(assert (=> b!2932583 (= res!1210685 (not (isEmpty!19049 (tail!4747 (_2!20012 lt!1028139)))))))

(declare-fun b!2932584 () Bool)

(assert (=> b!2932584 (= e!1849034 (= (head!6521 (_2!20012 lt!1028139)) (c!478853 (simplify!62 lt!1028142))))))

(declare-fun b!2932585 () Bool)

(assert (=> b!2932585 (= e!1849029 (matchR!3937 (derivativeStep!2462 (simplify!62 lt!1028142) (head!6521 (_2!20012 lt!1028139))) (tail!4747 (_2!20012 lt!1028139))))))

(declare-fun b!2932586 () Bool)

(declare-fun res!1210690 () Bool)

(declare-fun e!1849032 () Bool)

(assert (=> b!2932586 (=> res!1210690 e!1849032)))

(assert (=> b!2932586 (= res!1210690 (not ((_ is ElementMatch!9055) (simplify!62 lt!1028142))))))

(assert (=> b!2932586 (= e!1849031 e!1849032)))

(declare-fun b!2932587 () Bool)

(assert (=> b!2932587 (= e!1849032 e!1849035)))

(declare-fun res!1210688 () Bool)

(assert (=> b!2932587 (=> (not res!1210688) (not e!1849035))))

(assert (=> b!2932587 (= res!1210688 (not lt!1028225))))

(declare-fun bm!192543 () Bool)

(assert (=> bm!192543 (= call!192548 (isEmpty!19049 (_2!20012 lt!1028139)))))

(declare-fun b!2932588 () Bool)

(declare-fun res!1210691 () Bool)

(assert (=> b!2932588 (=> (not res!1210691) (not e!1849034))))

(assert (=> b!2932588 (= res!1210691 (not call!192548))))

(declare-fun b!2932589 () Bool)

(assert (=> b!2932589 (= e!1849033 e!1849031)))

(declare-fun c!478988 () Bool)

(assert (=> b!2932589 (= c!478988 ((_ is EmptyLang!9055) (simplify!62 lt!1028142)))))

(declare-fun d!839521 () Bool)

(assert (=> d!839521 e!1849033))

(declare-fun c!478987 () Bool)

(assert (=> d!839521 (= c!478987 ((_ is EmptyExpr!9055) (simplify!62 lt!1028142)))))

(assert (=> d!839521 (= lt!1028225 e!1849029)))

(declare-fun c!478989 () Bool)

(assert (=> d!839521 (= c!478989 (isEmpty!19049 (_2!20012 lt!1028139)))))

(assert (=> d!839521 (validRegex!3788 (simplify!62 lt!1028142))))

(assert (=> d!839521 (= (matchR!3937 (simplify!62 lt!1028142) (_2!20012 lt!1028139)) lt!1028225)))

(declare-fun b!2932590 () Bool)

(declare-fun res!1210687 () Bool)

(assert (=> b!2932590 (=> res!1210687 e!1849032)))

(assert (=> b!2932590 (= res!1210687 e!1849034)))

(declare-fun res!1210689 () Bool)

(assert (=> b!2932590 (=> (not res!1210689) (not e!1849034))))

(assert (=> b!2932590 (= res!1210689 lt!1028225)))

(assert (= (and d!839521 c!478989) b!2932582))

(assert (= (and d!839521 (not c!478989)) b!2932585))

(assert (= (and d!839521 c!478987) b!2932579))

(assert (= (and d!839521 (not c!478987)) b!2932589))

(assert (= (and b!2932589 c!478988) b!2932577))

(assert (= (and b!2932589 (not c!478988)) b!2932586))

(assert (= (and b!2932586 (not res!1210690)) b!2932590))

(assert (= (and b!2932590 res!1210689) b!2932588))

(assert (= (and b!2932588 res!1210691) b!2932581))

(assert (= (and b!2932581 res!1210692) b!2932584))

(assert (= (and b!2932590 (not res!1210687)) b!2932587))

(assert (= (and b!2932587 res!1210688) b!2932578))

(assert (= (and b!2932578 (not res!1210686)) b!2932583))

(assert (= (and b!2932583 (not res!1210685)) b!2932580))

(assert (= (or b!2932579 b!2932578 b!2932588) bm!192543))

(assert (=> b!2932581 m!3321719))

(assert (=> b!2932581 m!3321719))

(assert (=> b!2932581 m!3321721))

(assert (=> d!839521 m!3321723))

(assert (=> d!839521 m!3321619))

(declare-fun m!3321913 () Bool)

(assert (=> d!839521 m!3321913))

(assert (=> b!2932582 m!3321619))

(declare-fun m!3321915 () Bool)

(assert (=> b!2932582 m!3321915))

(assert (=> b!2932584 m!3321729))

(assert (=> b!2932580 m!3321729))

(assert (=> bm!192543 m!3321723))

(assert (=> b!2932583 m!3321719))

(assert (=> b!2932583 m!3321719))

(assert (=> b!2932583 m!3321721))

(assert (=> b!2932585 m!3321729))

(assert (=> b!2932585 m!3321619))

(assert (=> b!2932585 m!3321729))

(declare-fun m!3321917 () Bool)

(assert (=> b!2932585 m!3321917))

(assert (=> b!2932585 m!3321719))

(assert (=> b!2932585 m!3321917))

(assert (=> b!2932585 m!3321719))

(declare-fun m!3321919 () Bool)

(assert (=> b!2932585 m!3321919))

(assert (=> b!2932023 d!839521))

(declare-fun c!479020 () Bool)

(declare-fun call!192563 () Regex!9055)

(declare-fun c!479019 () Bool)

(declare-fun bm!192558 () Bool)

(assert (=> bm!192558 (= call!192563 (simplify!62 (ite c!479019 (reg!9384 (reg!9384 r!17423)) (ite c!479020 (regTwo!18623 (reg!9384 r!17423)) (regOne!18622 (reg!9384 r!17423))))))))

(declare-fun b!2932641 () Bool)

(declare-fun e!1849072 () Regex!9055)

(assert (=> b!2932641 (= e!1849072 EmptyLang!9055)))

(declare-fun b!2932642 () Bool)

(declare-fun e!1849066 () Regex!9055)

(declare-fun lt!1028240 () Regex!9055)

(declare-fun lt!1028239 () Regex!9055)

(assert (=> b!2932642 (= e!1849066 (Union!9055 lt!1028240 lt!1028239))))

(declare-fun b!2932643 () Bool)

(declare-fun e!1849065 () Bool)

(declare-fun call!192565 () Bool)

(assert (=> b!2932643 (= e!1849065 call!192565)))

(declare-fun b!2932644 () Bool)

(declare-fun e!1849069 () Regex!9055)

(declare-fun e!1849074 () Regex!9055)

(assert (=> b!2932644 (= e!1849069 e!1849074)))

(assert (=> b!2932644 (= c!479019 ((_ is Star!9055) (reg!9384 r!17423)))))

(declare-fun b!2932645 () Bool)

(declare-fun e!1849075 () Regex!9055)

(assert (=> b!2932645 (= e!1849075 lt!1028239)))

(declare-fun b!2932646 () Bool)

(declare-fun e!1849077 () Regex!9055)

(declare-fun lt!1028241 () Regex!9055)

(declare-fun lt!1028238 () Regex!9055)

(assert (=> b!2932646 (= e!1849077 (Concat!14376 lt!1028241 lt!1028238))))

(declare-fun bm!192559 () Bool)

(declare-fun call!192564 () Regex!9055)

(assert (=> bm!192559 (= call!192564 (simplify!62 (ite c!479020 (regOne!18623 (reg!9384 r!17423)) (regTwo!18622 (reg!9384 r!17423)))))))

(declare-fun b!2932647 () Bool)

(declare-fun e!1849067 () Regex!9055)

(declare-fun lt!1028242 () Regex!9055)

(assert (=> b!2932647 (= e!1849067 (Star!9055 lt!1028242))))

(declare-fun b!2932648 () Bool)

(declare-fun e!1849070 () Regex!9055)

(assert (=> b!2932648 (= e!1849070 e!1849077)))

(declare-fun c!479017 () Bool)

(declare-fun isEmptyExpr!281 (Regex!9055) Bool)

(assert (=> b!2932648 (= c!479017 (isEmptyExpr!281 lt!1028238))))

(declare-fun b!2932649 () Bool)

(assert (=> b!2932649 (= c!479020 ((_ is Union!9055) (reg!9384 r!17423)))))

(declare-fun e!1849064 () Regex!9055)

(assert (=> b!2932649 (= e!1849074 e!1849064)))

(declare-fun b!2932650 () Bool)

(declare-fun e!1849076 () Regex!9055)

(declare-fun e!1849073 () Regex!9055)

(assert (=> b!2932650 (= e!1849076 e!1849073)))

(declare-fun c!479021 () Bool)

(assert (=> b!2932650 (= c!479021 ((_ is ElementMatch!9055) (reg!9384 r!17423)))))

(declare-fun b!2932651 () Bool)

(assert (=> b!2932651 (= e!1849069 EmptyExpr!9055)))

(declare-fun b!2932653 () Bool)

(declare-fun c!479015 () Bool)

(declare-fun e!1849068 () Bool)

(assert (=> b!2932653 (= c!479015 e!1849068)))

(declare-fun res!1210701 () Bool)

(assert (=> b!2932653 (=> res!1210701 e!1849068)))

(declare-fun call!192567 () Bool)

(assert (=> b!2932653 (= res!1210701 call!192567)))

(assert (=> b!2932653 (= lt!1028242 call!192563)))

(assert (=> b!2932653 (= e!1849074 e!1849067)))

(declare-fun b!2932654 () Bool)

(declare-fun c!479012 () Bool)

(declare-fun call!192569 () Bool)

(assert (=> b!2932654 (= c!479012 call!192569)))

(assert (=> b!2932654 (= e!1849075 e!1849066)))

(declare-fun b!2932655 () Bool)

(assert (=> b!2932655 (= e!1849077 lt!1028241)))

(declare-fun b!2932656 () Bool)

(declare-fun c!479022 () Bool)

(assert (=> b!2932656 (= c!479022 ((_ is EmptyExpr!9055) (reg!9384 r!17423)))))

(assert (=> b!2932656 (= e!1849073 e!1849069)))

(declare-fun b!2932657 () Bool)

(assert (=> b!2932657 (= e!1849064 e!1849075)))

(assert (=> b!2932657 (= lt!1028240 call!192564)))

(declare-fun call!192566 () Regex!9055)

(assert (=> b!2932657 (= lt!1028239 call!192566)))

(declare-fun c!479018 () Bool)

(assert (=> b!2932657 (= c!479018 call!192565)))

(declare-fun bm!192560 () Bool)

(assert (=> bm!192560 (= call!192566 call!192563)))

(declare-fun call!192568 () Bool)

(declare-fun bm!192561 () Bool)

(assert (=> bm!192561 (= call!192568 (isEmptyExpr!281 (ite c!479019 lt!1028242 lt!1028241)))))

(declare-fun b!2932658 () Bool)

(declare-fun e!1849071 () Bool)

(declare-fun lt!1028243 () Regex!9055)

(assert (=> b!2932658 (= e!1849071 (= (nullable!2851 lt!1028243) (nullable!2851 (reg!9384 r!17423))))))

(declare-fun b!2932659 () Bool)

(assert (=> b!2932659 (= e!1849076 EmptyLang!9055)))

(declare-fun b!2932660 () Bool)

(declare-fun c!479014 () Bool)

(assert (=> b!2932660 (= c!479014 call!192568)))

(assert (=> b!2932660 (= e!1849072 e!1849070)))

(declare-fun b!2932661 () Bool)

(assert (=> b!2932661 (= e!1849067 EmptyExpr!9055)))

(declare-fun b!2932662 () Bool)

(assert (=> b!2932662 (= e!1849070 lt!1028238)))

(declare-fun b!2932663 () Bool)

(assert (=> b!2932663 (= e!1849073 (reg!9384 r!17423))))

(declare-fun bm!192562 () Bool)

(declare-fun isEmptyLang!196 (Regex!9055) Bool)

(assert (=> bm!192562 (= call!192565 (isEmptyLang!196 (ite c!479020 lt!1028240 lt!1028238)))))

(declare-fun bm!192563 () Bool)

(assert (=> bm!192563 (= call!192567 (isEmptyLang!196 (ite c!479019 lt!1028242 (ite c!479020 lt!1028239 lt!1028241))))))

(declare-fun b!2932664 () Bool)

(assert (=> b!2932664 (= e!1849064 e!1849072)))

(assert (=> b!2932664 (= lt!1028241 call!192566)))

(assert (=> b!2932664 (= lt!1028238 call!192564)))

(declare-fun res!1210700 () Bool)

(assert (=> b!2932664 (= res!1210700 call!192569)))

(assert (=> b!2932664 (=> res!1210700 e!1849065)))

(declare-fun c!479016 () Bool)

(assert (=> b!2932664 (= c!479016 e!1849065)))

(declare-fun d!839523 () Bool)

(assert (=> d!839523 e!1849071))

(declare-fun res!1210699 () Bool)

(assert (=> d!839523 (=> (not res!1210699) (not e!1849071))))

(assert (=> d!839523 (= res!1210699 (validRegex!3788 lt!1028243))))

(assert (=> d!839523 (= lt!1028243 e!1849076)))

(declare-fun c!479013 () Bool)

(assert (=> d!839523 (= c!479013 ((_ is EmptyLang!9055) (reg!9384 r!17423)))))

(assert (=> d!839523 (validRegex!3788 (reg!9384 r!17423))))

(assert (=> d!839523 (= (simplify!62 (reg!9384 r!17423)) lt!1028243)))

(declare-fun b!2932652 () Bool)

(assert (=> b!2932652 (= e!1849066 lt!1028240)))

(declare-fun bm!192564 () Bool)

(assert (=> bm!192564 (= call!192569 call!192567)))

(declare-fun b!2932665 () Bool)

(assert (=> b!2932665 (= e!1849068 call!192568)))

(assert (= (and d!839523 c!479013) b!2932659))

(assert (= (and d!839523 (not c!479013)) b!2932650))

(assert (= (and b!2932650 c!479021) b!2932663))

(assert (= (and b!2932650 (not c!479021)) b!2932656))

(assert (= (and b!2932656 c!479022) b!2932651))

(assert (= (and b!2932656 (not c!479022)) b!2932644))

(assert (= (and b!2932644 c!479019) b!2932653))

(assert (= (and b!2932644 (not c!479019)) b!2932649))

(assert (= (and b!2932653 (not res!1210701)) b!2932665))

(assert (= (and b!2932653 c!479015) b!2932661))

(assert (= (and b!2932653 (not c!479015)) b!2932647))

(assert (= (and b!2932649 c!479020) b!2932657))

(assert (= (and b!2932649 (not c!479020)) b!2932664))

(assert (= (and b!2932657 c!479018) b!2932645))

(assert (= (and b!2932657 (not c!479018)) b!2932654))

(assert (= (and b!2932654 c!479012) b!2932652))

(assert (= (and b!2932654 (not c!479012)) b!2932642))

(assert (= (and b!2932664 (not res!1210700)) b!2932643))

(assert (= (and b!2932664 c!479016) b!2932641))

(assert (= (and b!2932664 (not c!479016)) b!2932660))

(assert (= (and b!2932660 c!479014) b!2932662))

(assert (= (and b!2932660 (not c!479014)) b!2932648))

(assert (= (and b!2932648 c!479017) b!2932655))

(assert (= (and b!2932648 (not c!479017)) b!2932646))

(assert (= (or b!2932657 b!2932664) bm!192559))

(assert (= (or b!2932657 b!2932664) bm!192560))

(assert (= (or b!2932657 b!2932643) bm!192562))

(assert (= (or b!2932654 b!2932664) bm!192564))

(assert (= (or b!2932665 b!2932660) bm!192561))

(assert (= (or b!2932653 bm!192560) bm!192558))

(assert (= (or b!2932653 bm!192564) bm!192563))

(assert (= (and d!839523 res!1210699) b!2932658))

(declare-fun m!3321921 () Bool)

(assert (=> bm!192561 m!3321921))

(declare-fun m!3321923 () Bool)

(assert (=> b!2932648 m!3321923))

(declare-fun m!3321925 () Bool)

(assert (=> bm!192563 m!3321925))

(declare-fun m!3321927 () Bool)

(assert (=> bm!192562 m!3321927))

(declare-fun m!3321929 () Bool)

(assert (=> bm!192559 m!3321929))

(declare-fun m!3321931 () Bool)

(assert (=> bm!192558 m!3321931))

(declare-fun m!3321933 () Bool)

(assert (=> d!839523 m!3321933))

(assert (=> d!839523 m!3321777))

(declare-fun m!3321935 () Bool)

(assert (=> b!2932658 m!3321935))

(assert (=> b!2932658 m!3321685))

(assert (=> b!2932023 d!839523))

(declare-fun d!839525 () Bool)

(declare-fun lt!1028246 () Int)

(assert (=> d!839525 (>= lt!1028246 0)))

(declare-fun e!1849080 () Int)

(assert (=> d!839525 (= lt!1028246 e!1849080)))

(declare-fun c!479025 () Bool)

(assert (=> d!839525 (= c!479025 ((_ is Nil!34796) s!11993))))

(assert (=> d!839525 (= (size!26451 s!11993) lt!1028246)))

(declare-fun b!2932670 () Bool)

(assert (=> b!2932670 (= e!1849080 0)))

(declare-fun b!2932671 () Bool)

(assert (=> b!2932671 (= e!1849080 (+ 1 (size!26451 (t!233985 s!11993))))))

(assert (= (and d!839525 c!479025) b!2932670))

(assert (= (and d!839525 (not c!479025)) b!2932671))

(declare-fun m!3321937 () Bool)

(assert (=> b!2932671 m!3321937))

(assert (=> b!2932023 d!839525))

(declare-fun c!479034 () Bool)

(declare-fun bm!192565 () Bool)

(declare-fun call!192570 () Regex!9055)

(declare-fun c!479033 () Bool)

(assert (=> bm!192565 (= call!192570 (simplify!62 (ite c!479033 (reg!9384 lt!1028142) (ite c!479034 (regTwo!18623 lt!1028142) (regOne!18622 lt!1028142)))))))

(declare-fun b!2932672 () Bool)

(declare-fun e!1849089 () Regex!9055)

(assert (=> b!2932672 (= e!1849089 EmptyLang!9055)))

(declare-fun b!2932673 () Bool)

(declare-fun e!1849083 () Regex!9055)

(declare-fun lt!1028249 () Regex!9055)

(declare-fun lt!1028248 () Regex!9055)

(assert (=> b!2932673 (= e!1849083 (Union!9055 lt!1028249 lt!1028248))))

(declare-fun b!2932674 () Bool)

(declare-fun e!1849082 () Bool)

(declare-fun call!192572 () Bool)

(assert (=> b!2932674 (= e!1849082 call!192572)))

(declare-fun b!2932675 () Bool)

(declare-fun e!1849086 () Regex!9055)

(declare-fun e!1849091 () Regex!9055)

(assert (=> b!2932675 (= e!1849086 e!1849091)))

(assert (=> b!2932675 (= c!479033 ((_ is Star!9055) lt!1028142))))

(declare-fun b!2932676 () Bool)

(declare-fun e!1849092 () Regex!9055)

(assert (=> b!2932676 (= e!1849092 lt!1028248)))

(declare-fun b!2932677 () Bool)

(declare-fun e!1849094 () Regex!9055)

(declare-fun lt!1028250 () Regex!9055)

(declare-fun lt!1028247 () Regex!9055)

(assert (=> b!2932677 (= e!1849094 (Concat!14376 lt!1028250 lt!1028247))))

(declare-fun bm!192566 () Bool)

(declare-fun call!192571 () Regex!9055)

(assert (=> bm!192566 (= call!192571 (simplify!62 (ite c!479034 (regOne!18623 lt!1028142) (regTwo!18622 lt!1028142))))))

(declare-fun b!2932678 () Bool)

(declare-fun e!1849084 () Regex!9055)

(declare-fun lt!1028251 () Regex!9055)

(assert (=> b!2932678 (= e!1849084 (Star!9055 lt!1028251))))

(declare-fun b!2932679 () Bool)

(declare-fun e!1849087 () Regex!9055)

(assert (=> b!2932679 (= e!1849087 e!1849094)))

(declare-fun c!479031 () Bool)

(assert (=> b!2932679 (= c!479031 (isEmptyExpr!281 lt!1028247))))

(declare-fun b!2932680 () Bool)

(assert (=> b!2932680 (= c!479034 ((_ is Union!9055) lt!1028142))))

(declare-fun e!1849081 () Regex!9055)

(assert (=> b!2932680 (= e!1849091 e!1849081)))

(declare-fun b!2932681 () Bool)

(declare-fun e!1849093 () Regex!9055)

(declare-fun e!1849090 () Regex!9055)

(assert (=> b!2932681 (= e!1849093 e!1849090)))

(declare-fun c!479035 () Bool)

(assert (=> b!2932681 (= c!479035 ((_ is ElementMatch!9055) lt!1028142))))

(declare-fun b!2932682 () Bool)

(assert (=> b!2932682 (= e!1849086 EmptyExpr!9055)))

(declare-fun b!2932684 () Bool)

(declare-fun c!479029 () Bool)

(declare-fun e!1849085 () Bool)

(assert (=> b!2932684 (= c!479029 e!1849085)))

(declare-fun res!1210704 () Bool)

(assert (=> b!2932684 (=> res!1210704 e!1849085)))

(declare-fun call!192574 () Bool)

(assert (=> b!2932684 (= res!1210704 call!192574)))

(assert (=> b!2932684 (= lt!1028251 call!192570)))

(assert (=> b!2932684 (= e!1849091 e!1849084)))

(declare-fun b!2932685 () Bool)

(declare-fun c!479026 () Bool)

(declare-fun call!192576 () Bool)

(assert (=> b!2932685 (= c!479026 call!192576)))

(assert (=> b!2932685 (= e!1849092 e!1849083)))

(declare-fun b!2932686 () Bool)

(assert (=> b!2932686 (= e!1849094 lt!1028250)))

(declare-fun b!2932687 () Bool)

(declare-fun c!479036 () Bool)

(assert (=> b!2932687 (= c!479036 ((_ is EmptyExpr!9055) lt!1028142))))

(assert (=> b!2932687 (= e!1849090 e!1849086)))

(declare-fun b!2932688 () Bool)

(assert (=> b!2932688 (= e!1849081 e!1849092)))

(assert (=> b!2932688 (= lt!1028249 call!192571)))

(declare-fun call!192573 () Regex!9055)

(assert (=> b!2932688 (= lt!1028248 call!192573)))

(declare-fun c!479032 () Bool)

(assert (=> b!2932688 (= c!479032 call!192572)))

(declare-fun bm!192567 () Bool)

(assert (=> bm!192567 (= call!192573 call!192570)))

(declare-fun call!192575 () Bool)

(declare-fun bm!192568 () Bool)

(assert (=> bm!192568 (= call!192575 (isEmptyExpr!281 (ite c!479033 lt!1028251 lt!1028250)))))

(declare-fun b!2932689 () Bool)

(declare-fun e!1849088 () Bool)

(declare-fun lt!1028252 () Regex!9055)

(assert (=> b!2932689 (= e!1849088 (= (nullable!2851 lt!1028252) (nullable!2851 lt!1028142)))))

(declare-fun b!2932690 () Bool)

(assert (=> b!2932690 (= e!1849093 EmptyLang!9055)))

(declare-fun b!2932691 () Bool)

(declare-fun c!479028 () Bool)

(assert (=> b!2932691 (= c!479028 call!192575)))

(assert (=> b!2932691 (= e!1849089 e!1849087)))

(declare-fun b!2932692 () Bool)

(assert (=> b!2932692 (= e!1849084 EmptyExpr!9055)))

(declare-fun b!2932693 () Bool)

(assert (=> b!2932693 (= e!1849087 lt!1028247)))

(declare-fun b!2932694 () Bool)

(assert (=> b!2932694 (= e!1849090 lt!1028142)))

(declare-fun bm!192569 () Bool)

(assert (=> bm!192569 (= call!192572 (isEmptyLang!196 (ite c!479034 lt!1028249 lt!1028247)))))

(declare-fun bm!192570 () Bool)

(assert (=> bm!192570 (= call!192574 (isEmptyLang!196 (ite c!479033 lt!1028251 (ite c!479034 lt!1028248 lt!1028250))))))

(declare-fun b!2932695 () Bool)

(assert (=> b!2932695 (= e!1849081 e!1849089)))

(assert (=> b!2932695 (= lt!1028250 call!192573)))

(assert (=> b!2932695 (= lt!1028247 call!192571)))

(declare-fun res!1210703 () Bool)

(assert (=> b!2932695 (= res!1210703 call!192576)))

(assert (=> b!2932695 (=> res!1210703 e!1849082)))

(declare-fun c!479030 () Bool)

(assert (=> b!2932695 (= c!479030 e!1849082)))

(declare-fun d!839527 () Bool)

(assert (=> d!839527 e!1849088))

(declare-fun res!1210702 () Bool)

(assert (=> d!839527 (=> (not res!1210702) (not e!1849088))))

(assert (=> d!839527 (= res!1210702 (validRegex!3788 lt!1028252))))

(assert (=> d!839527 (= lt!1028252 e!1849093)))

(declare-fun c!479027 () Bool)

(assert (=> d!839527 (= c!479027 ((_ is EmptyLang!9055) lt!1028142))))

(assert (=> d!839527 (validRegex!3788 lt!1028142)))

(assert (=> d!839527 (= (simplify!62 lt!1028142) lt!1028252)))

(declare-fun b!2932683 () Bool)

(assert (=> b!2932683 (= e!1849083 lt!1028249)))

(declare-fun bm!192571 () Bool)

(assert (=> bm!192571 (= call!192576 call!192574)))

(declare-fun b!2932696 () Bool)

(assert (=> b!2932696 (= e!1849085 call!192575)))

(assert (= (and d!839527 c!479027) b!2932690))

(assert (= (and d!839527 (not c!479027)) b!2932681))

(assert (= (and b!2932681 c!479035) b!2932694))

(assert (= (and b!2932681 (not c!479035)) b!2932687))

(assert (= (and b!2932687 c!479036) b!2932682))

(assert (= (and b!2932687 (not c!479036)) b!2932675))

(assert (= (and b!2932675 c!479033) b!2932684))

(assert (= (and b!2932675 (not c!479033)) b!2932680))

(assert (= (and b!2932684 (not res!1210704)) b!2932696))

(assert (= (and b!2932684 c!479029) b!2932692))

(assert (= (and b!2932684 (not c!479029)) b!2932678))

(assert (= (and b!2932680 c!479034) b!2932688))

(assert (= (and b!2932680 (not c!479034)) b!2932695))

(assert (= (and b!2932688 c!479032) b!2932676))

(assert (= (and b!2932688 (not c!479032)) b!2932685))

(assert (= (and b!2932685 c!479026) b!2932683))

(assert (= (and b!2932685 (not c!479026)) b!2932673))

(assert (= (and b!2932695 (not res!1210703)) b!2932674))

(assert (= (and b!2932695 c!479030) b!2932672))

(assert (= (and b!2932695 (not c!479030)) b!2932691))

(assert (= (and b!2932691 c!479028) b!2932693))

(assert (= (and b!2932691 (not c!479028)) b!2932679))

(assert (= (and b!2932679 c!479031) b!2932686))

(assert (= (and b!2932679 (not c!479031)) b!2932677))

(assert (= (or b!2932688 b!2932695) bm!192566))

(assert (= (or b!2932688 b!2932695) bm!192567))

(assert (= (or b!2932688 b!2932674) bm!192569))

(assert (= (or b!2932685 b!2932695) bm!192571))

(assert (= (or b!2932696 b!2932691) bm!192568))

(assert (= (or b!2932684 bm!192567) bm!192565))

(assert (= (or b!2932684 bm!192571) bm!192570))

(assert (= (and d!839527 res!1210702) b!2932689))

(declare-fun m!3321939 () Bool)

(assert (=> bm!192568 m!3321939))

(declare-fun m!3321941 () Bool)

(assert (=> b!2932679 m!3321941))

(declare-fun m!3321943 () Bool)

(assert (=> bm!192570 m!3321943))

(declare-fun m!3321945 () Bool)

(assert (=> bm!192569 m!3321945))

(declare-fun m!3321947 () Bool)

(assert (=> bm!192566 m!3321947))

(declare-fun m!3321949 () Bool)

(assert (=> bm!192565 m!3321949))

(declare-fun m!3321951 () Bool)

(assert (=> d!839527 m!3321951))

(assert (=> d!839527 m!3321725))

(declare-fun m!3321953 () Bool)

(assert (=> b!2932689 m!3321953))

(assert (=> b!2932689 m!3321727))

(assert (=> b!2932023 d!839527))

(declare-fun d!839529 () Bool)

(assert (=> d!839529 (= (matchR!3937 (reg!9384 r!17423) (_1!20012 lt!1028139)) (matchR!3937 (simplify!62 (reg!9384 r!17423)) (_1!20012 lt!1028139)))))

(declare-fun lt!1028255 () Unit!48459)

(declare-fun choose!17340 (Regex!9055 List!34920) Unit!48459)

(assert (=> d!839529 (= lt!1028255 (choose!17340 (reg!9384 r!17423) (_1!20012 lt!1028139)))))

(assert (=> d!839529 (validRegex!3788 (reg!9384 r!17423))))

(assert (=> d!839529 (= (lemmaSimplifySound!58 (reg!9384 r!17423) (_1!20012 lt!1028139)) lt!1028255)))

(declare-fun bs!525305 () Bool)

(assert (= bs!525305 d!839529))

(assert (=> bs!525305 m!3321777))

(declare-fun m!3321955 () Bool)

(assert (=> bs!525305 m!3321955))

(assert (=> bs!525305 m!3321623))

(assert (=> bs!525305 m!3321637))

(assert (=> bs!525305 m!3321623))

(declare-fun m!3321957 () Bool)

(assert (=> bs!525305 m!3321957))

(assert (=> b!2932023 d!839529))

(declare-fun d!839531 () Bool)

(declare-fun lt!1028256 () Int)

(assert (=> d!839531 (>= lt!1028256 0)))

(declare-fun e!1849095 () Int)

(assert (=> d!839531 (= lt!1028256 e!1849095)))

(declare-fun c!479037 () Bool)

(assert (=> d!839531 (= c!479037 ((_ is Nil!34796) (_2!20012 lt!1028139)))))

(assert (=> d!839531 (= (size!26451 (_2!20012 lt!1028139)) lt!1028256)))

(declare-fun b!2932697 () Bool)

(assert (=> b!2932697 (= e!1849095 0)))

(declare-fun b!2932698 () Bool)

(assert (=> b!2932698 (= e!1849095 (+ 1 (size!26451 (t!233985 (_2!20012 lt!1028139)))))))

(assert (= (and d!839531 c!479037) b!2932697))

(assert (= (and d!839531 (not c!479037)) b!2932698))

(declare-fun m!3321959 () Bool)

(assert (=> b!2932698 m!3321959))

(assert (=> b!2932023 d!839531))

(declare-fun d!839533 () Bool)

(assert (=> d!839533 (= (matchR!3937 lt!1028142 (_2!20012 lt!1028139)) (matchR!3937 (simplify!62 lt!1028142) (_2!20012 lt!1028139)))))

(declare-fun lt!1028257 () Unit!48459)

(assert (=> d!839533 (= lt!1028257 (choose!17340 lt!1028142 (_2!20012 lt!1028139)))))

(assert (=> d!839533 (validRegex!3788 lt!1028142)))

(assert (=> d!839533 (= (lemmaSimplifySound!58 lt!1028142 (_2!20012 lt!1028139)) lt!1028257)))

(declare-fun bs!525306 () Bool)

(assert (= bs!525306 d!839533))

(assert (=> bs!525306 m!3321725))

(declare-fun m!3321961 () Bool)

(assert (=> bs!525306 m!3321961))

(assert (=> bs!525306 m!3321619))

(assert (=> bs!525306 m!3321635))

(assert (=> bs!525306 m!3321619))

(assert (=> bs!525306 m!3321621))

(assert (=> b!2932023 d!839533))

(declare-fun b!2932699 () Bool)

(declare-fun e!1849098 () Bool)

(declare-fun lt!1028258 () Bool)

(assert (=> b!2932699 (= e!1849098 (not lt!1028258))))

(declare-fun b!2932700 () Bool)

(declare-fun e!1849102 () Bool)

(declare-fun e!1849097 () Bool)

(assert (=> b!2932700 (= e!1849102 e!1849097)))

(declare-fun res!1210706 () Bool)

(assert (=> b!2932700 (=> res!1210706 e!1849097)))

(declare-fun call!192577 () Bool)

(assert (=> b!2932700 (= res!1210706 call!192577)))

(declare-fun b!2932701 () Bool)

(declare-fun e!1849100 () Bool)

(assert (=> b!2932701 (= e!1849100 (= lt!1028258 call!192577))))

(declare-fun b!2932702 () Bool)

(assert (=> b!2932702 (= e!1849097 (not (= (head!6521 (_1!20012 lt!1028139)) (c!478853 lt!1028136))))))

(declare-fun b!2932703 () Bool)

(declare-fun res!1210712 () Bool)

(declare-fun e!1849101 () Bool)

(assert (=> b!2932703 (=> (not res!1210712) (not e!1849101))))

(assert (=> b!2932703 (= res!1210712 (isEmpty!19049 (tail!4747 (_1!20012 lt!1028139))))))

(declare-fun b!2932704 () Bool)

(declare-fun e!1849096 () Bool)

(assert (=> b!2932704 (= e!1849096 (nullable!2851 lt!1028136))))

(declare-fun b!2932705 () Bool)

(declare-fun res!1210705 () Bool)

(assert (=> b!2932705 (=> res!1210705 e!1849097)))

(assert (=> b!2932705 (= res!1210705 (not (isEmpty!19049 (tail!4747 (_1!20012 lt!1028139)))))))

(declare-fun b!2932706 () Bool)

(assert (=> b!2932706 (= e!1849101 (= (head!6521 (_1!20012 lt!1028139)) (c!478853 lt!1028136)))))

(declare-fun b!2932707 () Bool)

(assert (=> b!2932707 (= e!1849096 (matchR!3937 (derivativeStep!2462 lt!1028136 (head!6521 (_1!20012 lt!1028139))) (tail!4747 (_1!20012 lt!1028139))))))

(declare-fun b!2932708 () Bool)

(declare-fun res!1210710 () Bool)

(declare-fun e!1849099 () Bool)

(assert (=> b!2932708 (=> res!1210710 e!1849099)))

(assert (=> b!2932708 (= res!1210710 (not ((_ is ElementMatch!9055) lt!1028136)))))

(assert (=> b!2932708 (= e!1849098 e!1849099)))

(declare-fun b!2932709 () Bool)

(assert (=> b!2932709 (= e!1849099 e!1849102)))

(declare-fun res!1210708 () Bool)

(assert (=> b!2932709 (=> (not res!1210708) (not e!1849102))))

(assert (=> b!2932709 (= res!1210708 (not lt!1028258))))

(declare-fun bm!192572 () Bool)

(assert (=> bm!192572 (= call!192577 (isEmpty!19049 (_1!20012 lt!1028139)))))

(declare-fun b!2932710 () Bool)

(declare-fun res!1210711 () Bool)

(assert (=> b!2932710 (=> (not res!1210711) (not e!1849101))))

(assert (=> b!2932710 (= res!1210711 (not call!192577))))

(declare-fun b!2932711 () Bool)

(assert (=> b!2932711 (= e!1849100 e!1849098)))

(declare-fun c!479039 () Bool)

(assert (=> b!2932711 (= c!479039 ((_ is EmptyLang!9055) lt!1028136))))

(declare-fun d!839535 () Bool)

(assert (=> d!839535 e!1849100))

(declare-fun c!479038 () Bool)

(assert (=> d!839535 (= c!479038 ((_ is EmptyExpr!9055) lt!1028136))))

(assert (=> d!839535 (= lt!1028258 e!1849096)))

(declare-fun c!479040 () Bool)

(assert (=> d!839535 (= c!479040 (isEmpty!19049 (_1!20012 lt!1028139)))))

(assert (=> d!839535 (validRegex!3788 lt!1028136)))

(assert (=> d!839535 (= (matchR!3937 lt!1028136 (_1!20012 lt!1028139)) lt!1028258)))

(declare-fun b!2932712 () Bool)

(declare-fun res!1210707 () Bool)

(assert (=> b!2932712 (=> res!1210707 e!1849099)))

(assert (=> b!2932712 (= res!1210707 e!1849101)))

(declare-fun res!1210709 () Bool)

(assert (=> b!2932712 (=> (not res!1210709) (not e!1849101))))

(assert (=> b!2932712 (= res!1210709 lt!1028258)))

(assert (= (and d!839535 c!479040) b!2932704))

(assert (= (and d!839535 (not c!479040)) b!2932707))

(assert (= (and d!839535 c!479038) b!2932701))

(assert (= (and d!839535 (not c!479038)) b!2932711))

(assert (= (and b!2932711 c!479039) b!2932699))

(assert (= (and b!2932711 (not c!479039)) b!2932708))

(assert (= (and b!2932708 (not res!1210710)) b!2932712))

(assert (= (and b!2932712 res!1210709) b!2932710))

(assert (= (and b!2932710 res!1210711) b!2932703))

(assert (= (and b!2932703 res!1210712) b!2932706))

(assert (= (and b!2932712 (not res!1210707)) b!2932709))

(assert (= (and b!2932709 res!1210708) b!2932700))

(assert (= (and b!2932700 (not res!1210706)) b!2932705))

(assert (= (and b!2932705 (not res!1210705)) b!2932702))

(assert (= (or b!2932701 b!2932700 b!2932710) bm!192572))

(declare-fun m!3321963 () Bool)

(assert (=> b!2932703 m!3321963))

(assert (=> b!2932703 m!3321963))

(declare-fun m!3321965 () Bool)

(assert (=> b!2932703 m!3321965))

(declare-fun m!3321967 () Bool)

(assert (=> d!839535 m!3321967))

(assert (=> d!839535 m!3321627))

(declare-fun m!3321969 () Bool)

(assert (=> b!2932704 m!3321969))

(declare-fun m!3321971 () Bool)

(assert (=> b!2932706 m!3321971))

(assert (=> b!2932702 m!3321971))

(assert (=> bm!192572 m!3321967))

(assert (=> b!2932705 m!3321963))

(assert (=> b!2932705 m!3321963))

(assert (=> b!2932705 m!3321965))

(assert (=> b!2932707 m!3321971))

(assert (=> b!2932707 m!3321971))

(declare-fun m!3321973 () Bool)

(assert (=> b!2932707 m!3321973))

(assert (=> b!2932707 m!3321963))

(assert (=> b!2932707 m!3321973))

(assert (=> b!2932707 m!3321963))

(declare-fun m!3321975 () Bool)

(assert (=> b!2932707 m!3321975))

(assert (=> b!2932023 d!839535))

(declare-fun b!2932713 () Bool)

(declare-fun e!1849105 () Bool)

(declare-fun lt!1028259 () Bool)

(assert (=> b!2932713 (= e!1849105 (not lt!1028259))))

(declare-fun b!2932714 () Bool)

(declare-fun e!1849109 () Bool)

(declare-fun e!1849104 () Bool)

(assert (=> b!2932714 (= e!1849109 e!1849104)))

(declare-fun res!1210714 () Bool)

(assert (=> b!2932714 (=> res!1210714 e!1849104)))

(declare-fun call!192578 () Bool)

(assert (=> b!2932714 (= res!1210714 call!192578)))

(declare-fun b!2932715 () Bool)

(declare-fun e!1849107 () Bool)

(assert (=> b!2932715 (= e!1849107 (= lt!1028259 call!192578))))

(declare-fun b!2932716 () Bool)

(assert (=> b!2932716 (= e!1849104 (not (= (head!6521 (_1!20012 lt!1028139)) (c!478853 (reg!9384 r!17423)))))))

(declare-fun b!2932717 () Bool)

(declare-fun res!1210720 () Bool)

(declare-fun e!1849108 () Bool)

(assert (=> b!2932717 (=> (not res!1210720) (not e!1849108))))

(assert (=> b!2932717 (= res!1210720 (isEmpty!19049 (tail!4747 (_1!20012 lt!1028139))))))

(declare-fun b!2932718 () Bool)

(declare-fun e!1849103 () Bool)

(assert (=> b!2932718 (= e!1849103 (nullable!2851 (reg!9384 r!17423)))))

(declare-fun b!2932719 () Bool)

(declare-fun res!1210713 () Bool)

(assert (=> b!2932719 (=> res!1210713 e!1849104)))

(assert (=> b!2932719 (= res!1210713 (not (isEmpty!19049 (tail!4747 (_1!20012 lt!1028139)))))))

(declare-fun b!2932720 () Bool)

(assert (=> b!2932720 (= e!1849108 (= (head!6521 (_1!20012 lt!1028139)) (c!478853 (reg!9384 r!17423))))))

(declare-fun b!2932721 () Bool)

(assert (=> b!2932721 (= e!1849103 (matchR!3937 (derivativeStep!2462 (reg!9384 r!17423) (head!6521 (_1!20012 lt!1028139))) (tail!4747 (_1!20012 lt!1028139))))))

(declare-fun b!2932722 () Bool)

(declare-fun res!1210718 () Bool)

(declare-fun e!1849106 () Bool)

(assert (=> b!2932722 (=> res!1210718 e!1849106)))

(assert (=> b!2932722 (= res!1210718 (not ((_ is ElementMatch!9055) (reg!9384 r!17423))))))

(assert (=> b!2932722 (= e!1849105 e!1849106)))

(declare-fun b!2932723 () Bool)

(assert (=> b!2932723 (= e!1849106 e!1849109)))

(declare-fun res!1210716 () Bool)

(assert (=> b!2932723 (=> (not res!1210716) (not e!1849109))))

(assert (=> b!2932723 (= res!1210716 (not lt!1028259))))

(declare-fun bm!192573 () Bool)

(assert (=> bm!192573 (= call!192578 (isEmpty!19049 (_1!20012 lt!1028139)))))

(declare-fun b!2932724 () Bool)

(declare-fun res!1210719 () Bool)

(assert (=> b!2932724 (=> (not res!1210719) (not e!1849108))))

(assert (=> b!2932724 (= res!1210719 (not call!192578))))

(declare-fun b!2932725 () Bool)

(assert (=> b!2932725 (= e!1849107 e!1849105)))

(declare-fun c!479042 () Bool)

(assert (=> b!2932725 (= c!479042 ((_ is EmptyLang!9055) (reg!9384 r!17423)))))

(declare-fun d!839537 () Bool)

(assert (=> d!839537 e!1849107))

(declare-fun c!479041 () Bool)

(assert (=> d!839537 (= c!479041 ((_ is EmptyExpr!9055) (reg!9384 r!17423)))))

(assert (=> d!839537 (= lt!1028259 e!1849103)))

(declare-fun c!479043 () Bool)

(assert (=> d!839537 (= c!479043 (isEmpty!19049 (_1!20012 lt!1028139)))))

(assert (=> d!839537 (validRegex!3788 (reg!9384 r!17423))))

(assert (=> d!839537 (= (matchR!3937 (reg!9384 r!17423) (_1!20012 lt!1028139)) lt!1028259)))

(declare-fun b!2932726 () Bool)

(declare-fun res!1210715 () Bool)

(assert (=> b!2932726 (=> res!1210715 e!1849106)))

(assert (=> b!2932726 (= res!1210715 e!1849108)))

(declare-fun res!1210717 () Bool)

(assert (=> b!2932726 (=> (not res!1210717) (not e!1849108))))

(assert (=> b!2932726 (= res!1210717 lt!1028259)))

(assert (= (and d!839537 c!479043) b!2932718))

(assert (= (and d!839537 (not c!479043)) b!2932721))

(assert (= (and d!839537 c!479041) b!2932715))

(assert (= (and d!839537 (not c!479041)) b!2932725))

(assert (= (and b!2932725 c!479042) b!2932713))

(assert (= (and b!2932725 (not c!479042)) b!2932722))

(assert (= (and b!2932722 (not res!1210718)) b!2932726))

(assert (= (and b!2932726 res!1210717) b!2932724))

(assert (= (and b!2932724 res!1210719) b!2932717))

(assert (= (and b!2932717 res!1210720) b!2932720))

(assert (= (and b!2932726 (not res!1210715)) b!2932723))

(assert (= (and b!2932723 res!1210716) b!2932714))

(assert (= (and b!2932714 (not res!1210714)) b!2932719))

(assert (= (and b!2932719 (not res!1210713)) b!2932716))

(assert (= (or b!2932715 b!2932714 b!2932724) bm!192573))

(assert (=> b!2932717 m!3321963))

(assert (=> b!2932717 m!3321963))

(assert (=> b!2932717 m!3321965))

(assert (=> d!839537 m!3321967))

(assert (=> d!839537 m!3321777))

(assert (=> b!2932718 m!3321685))

(assert (=> b!2932720 m!3321971))

(assert (=> b!2932716 m!3321971))

(assert (=> bm!192573 m!3321967))

(assert (=> b!2932719 m!3321963))

(assert (=> b!2932719 m!3321963))

(assert (=> b!2932719 m!3321965))

(assert (=> b!2932721 m!3321971))

(assert (=> b!2932721 m!3321971))

(declare-fun m!3321977 () Bool)

(assert (=> b!2932721 m!3321977))

(assert (=> b!2932721 m!3321963))

(assert (=> b!2932721 m!3321977))

(assert (=> b!2932721 m!3321963))

(declare-fun m!3321979 () Bool)

(assert (=> b!2932721 m!3321979))

(assert (=> b!2932029 d!839537))

(declare-fun d!839539 () Bool)

(assert (=> d!839539 (= (get!10631 lt!1028132) (v!34745 lt!1028132))))

(assert (=> b!2932029 d!839539))

(declare-fun b!2932740 () Bool)

(declare-fun e!1849112 () Bool)

(declare-fun tp!939579 () Bool)

(declare-fun tp!939582 () Bool)

(assert (=> b!2932740 (= e!1849112 (and tp!939579 tp!939582))))

(declare-fun b!2932739 () Bool)

(declare-fun tp!939578 () Bool)

(assert (=> b!2932739 (= e!1849112 tp!939578)))

(declare-fun b!2932737 () Bool)

(assert (=> b!2932737 (= e!1849112 tp_is_empty!15673)))

(declare-fun b!2932738 () Bool)

(declare-fun tp!939581 () Bool)

(declare-fun tp!939580 () Bool)

(assert (=> b!2932738 (= e!1849112 (and tp!939581 tp!939580))))

(assert (=> b!2932027 (= tp!939529 e!1849112)))

(assert (= (and b!2932027 ((_ is ElementMatch!9055) (regOne!18622 r!17423))) b!2932737))

(assert (= (and b!2932027 ((_ is Concat!14376) (regOne!18622 r!17423))) b!2932738))

(assert (= (and b!2932027 ((_ is Star!9055) (regOne!18622 r!17423))) b!2932739))

(assert (= (and b!2932027 ((_ is Union!9055) (regOne!18622 r!17423))) b!2932740))

(declare-fun b!2932744 () Bool)

(declare-fun e!1849113 () Bool)

(declare-fun tp!939584 () Bool)

(declare-fun tp!939587 () Bool)

(assert (=> b!2932744 (= e!1849113 (and tp!939584 tp!939587))))

(declare-fun b!2932743 () Bool)

(declare-fun tp!939583 () Bool)

(assert (=> b!2932743 (= e!1849113 tp!939583)))

(declare-fun b!2932741 () Bool)

(assert (=> b!2932741 (= e!1849113 tp_is_empty!15673)))

(declare-fun b!2932742 () Bool)

(declare-fun tp!939586 () Bool)

(declare-fun tp!939585 () Bool)

(assert (=> b!2932742 (= e!1849113 (and tp!939586 tp!939585))))

(assert (=> b!2932027 (= tp!939525 e!1849113)))

(assert (= (and b!2932027 ((_ is ElementMatch!9055) (regTwo!18622 r!17423))) b!2932741))

(assert (= (and b!2932027 ((_ is Concat!14376) (regTwo!18622 r!17423))) b!2932742))

(assert (= (and b!2932027 ((_ is Star!9055) (regTwo!18622 r!17423))) b!2932743))

(assert (= (and b!2932027 ((_ is Union!9055) (regTwo!18622 r!17423))) b!2932744))

(declare-fun b!2932749 () Bool)

(declare-fun e!1849116 () Bool)

(declare-fun tp!939590 () Bool)

(assert (=> b!2932749 (= e!1849116 (and tp_is_empty!15673 tp!939590))))

(assert (=> b!2932033 (= tp!939526 e!1849116)))

(assert (= (and b!2932033 ((_ is Cons!34796) (t!233985 s!11993))) b!2932749))

(declare-fun b!2932753 () Bool)

(declare-fun e!1849117 () Bool)

(declare-fun tp!939592 () Bool)

(declare-fun tp!939595 () Bool)

(assert (=> b!2932753 (= e!1849117 (and tp!939592 tp!939595))))

(declare-fun b!2932752 () Bool)

(declare-fun tp!939591 () Bool)

(assert (=> b!2932752 (= e!1849117 tp!939591)))

(declare-fun b!2932750 () Bool)

(assert (=> b!2932750 (= e!1849117 tp_is_empty!15673)))

(declare-fun b!2932751 () Bool)

(declare-fun tp!939594 () Bool)

(declare-fun tp!939593 () Bool)

(assert (=> b!2932751 (= e!1849117 (and tp!939594 tp!939593))))

(assert (=> b!2932034 (= tp!939527 e!1849117)))

(assert (= (and b!2932034 ((_ is ElementMatch!9055) (reg!9384 r!17423))) b!2932750))

(assert (= (and b!2932034 ((_ is Concat!14376) (reg!9384 r!17423))) b!2932751))

(assert (= (and b!2932034 ((_ is Star!9055) (reg!9384 r!17423))) b!2932752))

(assert (= (and b!2932034 ((_ is Union!9055) (reg!9384 r!17423))) b!2932753))

(declare-fun b!2932757 () Bool)

(declare-fun e!1849118 () Bool)

(declare-fun tp!939597 () Bool)

(declare-fun tp!939600 () Bool)

(assert (=> b!2932757 (= e!1849118 (and tp!939597 tp!939600))))

(declare-fun b!2932756 () Bool)

(declare-fun tp!939596 () Bool)

(assert (=> b!2932756 (= e!1849118 tp!939596)))

(declare-fun b!2932754 () Bool)

(assert (=> b!2932754 (= e!1849118 tp_is_empty!15673)))

(declare-fun b!2932755 () Bool)

(declare-fun tp!939599 () Bool)

(declare-fun tp!939598 () Bool)

(assert (=> b!2932755 (= e!1849118 (and tp!939599 tp!939598))))

(assert (=> b!2932024 (= tp!939528 e!1849118)))

(assert (= (and b!2932024 ((_ is ElementMatch!9055) (regOne!18623 r!17423))) b!2932754))

(assert (= (and b!2932024 ((_ is Concat!14376) (regOne!18623 r!17423))) b!2932755))

(assert (= (and b!2932024 ((_ is Star!9055) (regOne!18623 r!17423))) b!2932756))

(assert (= (and b!2932024 ((_ is Union!9055) (regOne!18623 r!17423))) b!2932757))

(declare-fun b!2932761 () Bool)

(declare-fun e!1849119 () Bool)

(declare-fun tp!939602 () Bool)

(declare-fun tp!939605 () Bool)

(assert (=> b!2932761 (= e!1849119 (and tp!939602 tp!939605))))

(declare-fun b!2932760 () Bool)

(declare-fun tp!939601 () Bool)

(assert (=> b!2932760 (= e!1849119 tp!939601)))

(declare-fun b!2932758 () Bool)

(assert (=> b!2932758 (= e!1849119 tp_is_empty!15673)))

(declare-fun b!2932759 () Bool)

(declare-fun tp!939604 () Bool)

(declare-fun tp!939603 () Bool)

(assert (=> b!2932759 (= e!1849119 (and tp!939604 tp!939603))))

(assert (=> b!2932024 (= tp!939524 e!1849119)))

(assert (= (and b!2932024 ((_ is ElementMatch!9055) (regTwo!18623 r!17423))) b!2932758))

(assert (= (and b!2932024 ((_ is Concat!14376) (regTwo!18623 r!17423))) b!2932759))

(assert (= (and b!2932024 ((_ is Star!9055) (regTwo!18623 r!17423))) b!2932760))

(assert (= (and b!2932024 ((_ is Union!9055) (regTwo!18623 r!17423))) b!2932761))

(check-sat (not b!2932752) (not d!839535) (not b!2932753) (not b!2932216) (not b!2932215) (not b!2932751) (not b!2932510) (not b!2932716) (not b!2932689) (not b!2932508) (not bm!192538) (not d!839509) (not d!839501) (not d!839529) (not b!2932562) (not bm!192572) (not b!2932742) (not d!839481) (not b!2932560) (not b!2932738) (not bm!192563) (not b!2932719) (not b!2932761) (not b!2932213) (not d!839537) (not b!2932706) (not b!2932648) (not b!2932559) (not bm!192561) (not b!2932718) (not b!2932505) (not b!2932576) (not b!2932545) (not b!2932740) (not b!2932217) (not bm!192540) (not bm!192565) (not d!839513) (not bm!192539) (not d!839457) (not bm!192559) (not b!2932558) (not b!2932720) (not b!2932582) (not d!839467) (not bm!192482) (not bm!192566) (not bm!192543) (not b!2932759) (not d!839521) (not b!2932504) (not d!839507) (not b!2932658) (not b!2932502) (not bm!192479) (not bm!192558) (not d!839515) (not bm!192568) (not b!2932214) (not d!839505) (not bm!192570) (not b!2932756) (not b!2932561) (not b!2932218) (not bm!192542) (not b!2932581) (not b!2932739) (not b!2932122) (not d!839503) (not b!2932503) (not bm!192537) (not bm!192477) (not b!2932679) (not b!2932757) (not b!2932580) (not d!839523) (not b!2932704) (not b!2932749) tp_is_empty!15673 (not b!2932717) (not b!2932760) (not b!2932557) (not d!839527) (not b!2932698) (not b!2932703) (not d!839533) (not b!2932755) (not b!2932543) (not bm!192573) (not b!2932707) (not b!2932702) (not b!2932671) (not bm!192562) (not b!2932721) (not b!2932744) (not bm!192569) (not b!2932585) (not b!2932584) (not b!2932583) (not b!2932743) (not b!2932705))
(check-sat)
