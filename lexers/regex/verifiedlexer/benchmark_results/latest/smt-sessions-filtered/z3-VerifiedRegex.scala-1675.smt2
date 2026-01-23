; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84442 () Bool)

(assert start!84442)

(declare-fun b!947471 () Bool)

(assert (=> b!947471 true))

(assert (=> b!947471 true))

(assert (=> b!947471 true))

(declare-fun lambda!32416 () Int)

(declare-fun lambda!32415 () Int)

(assert (=> b!947471 (not (= lambda!32416 lambda!32415))))

(assert (=> b!947471 true))

(assert (=> b!947471 true))

(assert (=> b!947471 true))

(declare-fun bs!239683 () Bool)

(declare-fun b!947464 () Bool)

(assert (= bs!239683 (and b!947464 b!947471)))

(declare-datatypes ((C!5788 0))(
  ( (C!5789 (val!3142 Int)) )
))
(declare-datatypes ((Regex!2609 0))(
  ( (ElementMatch!2609 (c!154204 C!5788)) (Concat!4442 (regOne!5730 Regex!2609) (regTwo!5730 Regex!2609)) (EmptyExpr!2609) (Star!2609 (reg!2938 Regex!2609)) (EmptyLang!2609) (Union!2609 (regOne!5731 Regex!2609) (regTwo!5731 Regex!2609)) )
))
(declare-fun lt!344114 () Regex!2609)

(declare-fun lambda!32417 () Int)

(declare-fun r!15766 () Regex!2609)

(declare-fun lt!344110 () Regex!2609)

(declare-fun lt!344119 () Regex!2609)

(assert (=> bs!239683 (= (and (= lt!344114 (reg!2938 r!15766)) (= lt!344119 lt!344110)) (= lambda!32417 lambda!32415))))

(assert (=> bs!239683 (not (= lambda!32417 lambda!32416))))

(assert (=> b!947464 true))

(assert (=> b!947464 true))

(assert (=> b!947464 true))

(declare-fun lambda!32418 () Int)

(assert (=> bs!239683 (not (= lambda!32418 lambda!32415))))

(assert (=> bs!239683 (= (and (= lt!344114 (reg!2938 r!15766)) (= lt!344119 lt!344110)) (= lambda!32418 lambda!32416))))

(assert (=> b!947464 (not (= lambda!32418 lambda!32417))))

(assert (=> b!947464 true))

(assert (=> b!947464 true))

(assert (=> b!947464 true))

(declare-fun e!613806 () Bool)

(declare-fun e!613804 () Bool)

(assert (=> b!947464 (= e!613806 e!613804)))

(declare-fun res!430714 () Bool)

(assert (=> b!947464 (=> res!430714 e!613804)))

(declare-datatypes ((List!9839 0))(
  ( (Nil!9823) (Cons!9823 (h!15224 C!5788) (t!100885 List!9839)) )
))
(declare-fun s!10566 () List!9839)

(declare-fun isEmpty!6086 (List!9839) Bool)

(assert (=> b!947464 (= res!430714 (isEmpty!6086 s!10566))))

(declare-fun Exists!360 (Int) Bool)

(assert (=> b!947464 (= (Exists!360 lambda!32417) (Exists!360 lambda!32418))))

(declare-datatypes ((Unit!14859 0))(
  ( (Unit!14860) )
))
(declare-fun lt!344115 () Unit!14859)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!104 (Regex!2609 List!9839) Unit!14859)

(assert (=> b!947464 (= lt!344115 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!104 lt!344114 s!10566))))

(declare-fun lt!344113 () Bool)

(assert (=> b!947464 (= lt!344113 (Exists!360 lambda!32417))))

(declare-datatypes ((tuple2!11116 0))(
  ( (tuple2!11117 (_1!6384 List!9839) (_2!6384 List!9839)) )
))
(declare-datatypes ((Option!2200 0))(
  ( (None!2199) (Some!2199 (v!19616 tuple2!11116)) )
))
(declare-fun lt!344107 () Option!2200)

(declare-fun isDefined!1842 (Option!2200) Bool)

(assert (=> b!947464 (= lt!344113 (isDefined!1842 lt!344107))))

(declare-fun findConcatSeparation!306 (Regex!2609 Regex!2609 List!9839 List!9839 List!9839) Option!2200)

(assert (=> b!947464 (= lt!344107 (findConcatSeparation!306 lt!344114 lt!344119 Nil!9823 s!10566 s!10566))))

(declare-fun lt!344120 () Unit!14859)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!306 (Regex!2609 Regex!2609 List!9839) Unit!14859)

(assert (=> b!947464 (= lt!344120 (lemmaFindConcatSeparationEquivalentToExists!306 lt!344114 lt!344119 s!10566))))

(declare-fun matchRSpec!410 (Regex!2609 List!9839) Bool)

(assert (=> b!947464 (matchRSpec!410 lt!344119 s!10566)))

(declare-fun lt!344112 () Unit!14859)

(declare-fun mainMatchTheorem!410 (Regex!2609 List!9839) Unit!14859)

(assert (=> b!947464 (= lt!344112 (mainMatchTheorem!410 lt!344119 s!10566))))

(declare-fun b!947465 () Bool)

(declare-fun e!613801 () Bool)

(declare-fun e!613803 () Bool)

(assert (=> b!947465 (= e!613801 (not e!613803))))

(declare-fun res!430721 () Bool)

(assert (=> b!947465 (=> res!430721 e!613803)))

(declare-fun lt!344123 () Bool)

(get-info :version)

(assert (=> b!947465 (= res!430721 (or lt!344123 (and ((_ is Concat!4442) r!15766) ((_ is EmptyExpr!2609) (regOne!5730 r!15766))) (and ((_ is Concat!4442) r!15766) ((_ is EmptyExpr!2609) (regTwo!5730 r!15766))) ((_ is Concat!4442) r!15766) ((_ is Union!2609) r!15766) (not ((_ is Star!2609) r!15766))))))

(assert (=> b!947465 (= lt!344123 (matchRSpec!410 r!15766 s!10566))))

(declare-fun matchR!1147 (Regex!2609 List!9839) Bool)

(assert (=> b!947465 (= lt!344123 (matchR!1147 r!15766 s!10566))))

(declare-fun lt!344124 () Unit!14859)

(assert (=> b!947465 (= lt!344124 (mainMatchTheorem!410 r!15766 s!10566))))

(declare-fun b!947466 () Bool)

(declare-fun e!613807 () Bool)

(declare-fun tp_is_empty!4861 () Bool)

(assert (=> b!947466 (= e!613807 tp_is_empty!4861)))

(declare-fun b!947467 () Bool)

(declare-fun res!430720 () Bool)

(declare-fun e!613802 () Bool)

(assert (=> b!947467 (=> res!430720 e!613802)))

(declare-fun validRegex!1078 (Regex!2609) Bool)

(assert (=> b!947467 (= res!430720 (not (validRegex!1078 lt!344110)))))

(declare-fun b!947468 () Bool)

(declare-fun res!430715 () Bool)

(declare-fun e!613805 () Bool)

(assert (=> b!947468 (=> res!430715 e!613805)))

(declare-fun lt!344116 () tuple2!11116)

(assert (=> b!947468 (= res!430715 (not (matchR!1147 lt!344119 (_2!6384 lt!344116))))))

(declare-fun b!947469 () Bool)

(assert (=> b!947469 (= e!613804 e!613805)))

(declare-fun res!430722 () Bool)

(assert (=> b!947469 (=> res!430722 e!613805)))

(assert (=> b!947469 (= res!430722 (not (matchR!1147 lt!344114 (_1!6384 lt!344116))))))

(declare-fun get!3295 (Option!2200) tuple2!11116)

(assert (=> b!947469 (= lt!344116 (get!3295 lt!344107))))

(declare-fun b!947470 () Bool)

(declare-fun tp!292240 () Bool)

(assert (=> b!947470 (= e!613807 tp!292240)))

(assert (=> b!947471 (= e!613803 e!613806)))

(declare-fun res!430719 () Bool)

(assert (=> b!947471 (=> res!430719 e!613806)))

(assert (=> b!947471 (= res!430719 (not (matchR!1147 lt!344119 s!10566)))))

(assert (=> b!947471 (= lt!344119 (Star!2609 lt!344114))))

(declare-fun removeUselessConcat!278 (Regex!2609) Regex!2609)

(assert (=> b!947471 (= lt!344114 (removeUselessConcat!278 (reg!2938 r!15766)))))

(assert (=> b!947471 (= (Exists!360 lambda!32415) (Exists!360 lambda!32416))))

(declare-fun lt!344121 () Unit!14859)

(assert (=> b!947471 (= lt!344121 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!104 (reg!2938 r!15766) s!10566))))

(assert (=> b!947471 (= (isDefined!1842 (findConcatSeparation!306 (reg!2938 r!15766) lt!344110 Nil!9823 s!10566 s!10566)) (Exists!360 lambda!32415))))

(declare-fun lt!344117 () Unit!14859)

(assert (=> b!947471 (= lt!344117 (lemmaFindConcatSeparationEquivalentToExists!306 (reg!2938 r!15766) lt!344110 s!10566))))

(assert (=> b!947471 (= lt!344110 (Star!2609 (reg!2938 r!15766)))))

(declare-fun b!947472 () Bool)

(declare-fun tp!292238 () Bool)

(declare-fun tp!292236 () Bool)

(assert (=> b!947472 (= e!613807 (and tp!292238 tp!292236))))

(declare-fun res!430716 () Bool)

(assert (=> start!84442 (=> (not res!430716) (not e!613801))))

(assert (=> start!84442 (= res!430716 (validRegex!1078 r!15766))))

(assert (=> start!84442 e!613801))

(assert (=> start!84442 e!613807))

(declare-fun e!613800 () Bool)

(assert (=> start!84442 e!613800))

(declare-fun b!947473 () Bool)

(declare-fun tp!292237 () Bool)

(assert (=> b!947473 (= e!613800 (and tp_is_empty!4861 tp!292237))))

(declare-fun b!947474 () Bool)

(declare-fun res!430717 () Bool)

(assert (=> b!947474 (=> res!430717 e!613804)))

(assert (=> b!947474 (= res!430717 (not lt!344113))))

(declare-fun b!947475 () Bool)

(assert (=> b!947475 (= e!613805 e!613802)))

(declare-fun res!430718 () Bool)

(assert (=> b!947475 (=> res!430718 e!613802)))

(declare-fun lt!344118 () Bool)

(assert (=> b!947475 (= res!430718 (not lt!344118))))

(declare-fun lt!344109 () Regex!2609)

(assert (=> b!947475 (= lt!344118 (matchR!1147 lt!344109 (_2!6384 lt!344116)))))

(assert (=> b!947475 (= lt!344118 (matchR!1147 lt!344110 (_2!6384 lt!344116)))))

(assert (=> b!947475 (= lt!344109 (removeUselessConcat!278 lt!344110))))

(declare-fun lt!344122 () Unit!14859)

(declare-fun lemmaRemoveUselessConcatSound!144 (Regex!2609 List!9839) Unit!14859)

(assert (=> b!947475 (= lt!344122 (lemmaRemoveUselessConcatSound!144 lt!344110 (_2!6384 lt!344116)))))

(declare-fun lt!344108 () Unit!14859)

(declare-fun e!613799 () Unit!14859)

(assert (=> b!947475 (= lt!344108 e!613799)))

(declare-fun c!154203 () Bool)

(declare-fun size!7907 (List!9839) Int)

(assert (=> b!947475 (= c!154203 (= (size!7907 (_2!6384 lt!344116)) (size!7907 s!10566)))))

(assert (=> b!947475 (matchR!1147 (reg!2938 r!15766) (_1!6384 lt!344116))))

(declare-fun lt!344111 () Unit!14859)

(assert (=> b!947475 (= lt!344111 (lemmaRemoveUselessConcatSound!144 (reg!2938 r!15766) (_1!6384 lt!344116)))))

(declare-fun b!947476 () Bool)

(declare-fun Unit!14861 () Unit!14859)

(assert (=> b!947476 (= e!613799 Unit!14861)))

(declare-fun lt!344125 () Unit!14859)

(assert (=> b!947476 (= lt!344125 (mainMatchTheorem!410 (reg!2938 r!15766) (_1!6384 lt!344116)))))

(assert (=> b!947476 false))

(declare-fun b!947477 () Bool)

(declare-fun Unit!14862 () Unit!14859)

(assert (=> b!947477 (= e!613799 Unit!14862)))

(declare-fun b!947478 () Bool)

(declare-fun tp!292239 () Bool)

(declare-fun tp!292235 () Bool)

(assert (=> b!947478 (= e!613807 (and tp!292239 tp!292235))))

(declare-fun b!947479 () Bool)

(assert (=> b!947479 (= e!613802 (validRegex!1078 (removeUselessConcat!278 r!15766)))))

(declare-fun ++!2623 (List!9839 List!9839) List!9839)

(assert (=> b!947479 (matchR!1147 lt!344110 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116)))))

(declare-fun lt!344106 () Unit!14859)

(declare-fun lemmaStarApp!8 (Regex!2609 List!9839 List!9839) Unit!14859)

(assert (=> b!947479 (= lt!344106 (lemmaStarApp!8 (reg!2938 r!15766) (_1!6384 lt!344116) (_2!6384 lt!344116)))))

(assert (= (and start!84442 res!430716) b!947465))

(assert (= (and b!947465 (not res!430721)) b!947471))

(assert (= (and b!947471 (not res!430719)) b!947464))

(assert (= (and b!947464 (not res!430714)) b!947474))

(assert (= (and b!947474 (not res!430717)) b!947469))

(assert (= (and b!947469 (not res!430722)) b!947468))

(assert (= (and b!947468 (not res!430715)) b!947475))

(assert (= (and b!947475 c!154203) b!947476))

(assert (= (and b!947475 (not c!154203)) b!947477))

(assert (= (and b!947475 (not res!430718)) b!947467))

(assert (= (and b!947467 (not res!430720)) b!947479))

(assert (= (and start!84442 ((_ is ElementMatch!2609) r!15766)) b!947466))

(assert (= (and start!84442 ((_ is Concat!4442) r!15766)) b!947472))

(assert (= (and start!84442 ((_ is Star!2609) r!15766)) b!947470))

(assert (= (and start!84442 ((_ is Union!2609) r!15766)) b!947478))

(assert (= (and start!84442 ((_ is Cons!9823) s!10566)) b!947473))

(declare-fun m!1162063 () Bool)

(assert (=> b!947464 m!1162063))

(declare-fun m!1162065 () Bool)

(assert (=> b!947464 m!1162065))

(declare-fun m!1162067 () Bool)

(assert (=> b!947464 m!1162067))

(declare-fun m!1162069 () Bool)

(assert (=> b!947464 m!1162069))

(declare-fun m!1162071 () Bool)

(assert (=> b!947464 m!1162071))

(declare-fun m!1162073 () Bool)

(assert (=> b!947464 m!1162073))

(declare-fun m!1162075 () Bool)

(assert (=> b!947464 m!1162075))

(declare-fun m!1162077 () Bool)

(assert (=> b!947464 m!1162077))

(declare-fun m!1162079 () Bool)

(assert (=> b!947464 m!1162079))

(assert (=> b!947464 m!1162067))

(declare-fun m!1162081 () Bool)

(assert (=> b!947475 m!1162081))

(declare-fun m!1162083 () Bool)

(assert (=> b!947475 m!1162083))

(declare-fun m!1162085 () Bool)

(assert (=> b!947475 m!1162085))

(declare-fun m!1162087 () Bool)

(assert (=> b!947475 m!1162087))

(declare-fun m!1162089 () Bool)

(assert (=> b!947475 m!1162089))

(declare-fun m!1162091 () Bool)

(assert (=> b!947475 m!1162091))

(declare-fun m!1162093 () Bool)

(assert (=> b!947475 m!1162093))

(declare-fun m!1162095 () Bool)

(assert (=> b!947475 m!1162095))

(declare-fun m!1162097 () Bool)

(assert (=> b!947471 m!1162097))

(declare-fun m!1162099 () Bool)

(assert (=> b!947471 m!1162099))

(declare-fun m!1162101 () Bool)

(assert (=> b!947471 m!1162101))

(declare-fun m!1162103 () Bool)

(assert (=> b!947471 m!1162103))

(declare-fun m!1162105 () Bool)

(assert (=> b!947471 m!1162105))

(declare-fun m!1162107 () Bool)

(assert (=> b!947471 m!1162107))

(assert (=> b!947471 m!1162105))

(declare-fun m!1162109 () Bool)

(assert (=> b!947471 m!1162109))

(declare-fun m!1162111 () Bool)

(assert (=> b!947471 m!1162111))

(assert (=> b!947471 m!1162107))

(declare-fun m!1162113 () Bool)

(assert (=> start!84442 m!1162113))

(declare-fun m!1162115 () Bool)

(assert (=> b!947465 m!1162115))

(declare-fun m!1162117 () Bool)

(assert (=> b!947465 m!1162117))

(declare-fun m!1162119 () Bool)

(assert (=> b!947465 m!1162119))

(declare-fun m!1162121 () Bool)

(assert (=> b!947479 m!1162121))

(declare-fun m!1162123 () Bool)

(assert (=> b!947479 m!1162123))

(declare-fun m!1162125 () Bool)

(assert (=> b!947479 m!1162125))

(declare-fun m!1162127 () Bool)

(assert (=> b!947479 m!1162127))

(assert (=> b!947479 m!1162123))

(declare-fun m!1162129 () Bool)

(assert (=> b!947479 m!1162129))

(assert (=> b!947479 m!1162125))

(declare-fun m!1162131 () Bool)

(assert (=> b!947469 m!1162131))

(declare-fun m!1162133 () Bool)

(assert (=> b!947469 m!1162133))

(declare-fun m!1162135 () Bool)

(assert (=> b!947476 m!1162135))

(declare-fun m!1162137 () Bool)

(assert (=> b!947467 m!1162137))

(declare-fun m!1162139 () Bool)

(assert (=> b!947468 m!1162139))

(check-sat (not b!947475) (not b!947468) (not b!947470) (not b!947473) (not b!947476) (not b!947479) (not b!947471) (not b!947469) (not b!947467) (not start!84442) (not b!947478) (not b!947465) (not b!947464) (not b!947472) tp_is_empty!4861)
(check-sat)
(get-model)

(declare-fun b!947559 () Bool)

(declare-fun e!613858 () Bool)

(declare-fun e!613859 () Bool)

(assert (=> b!947559 (= e!613858 e!613859)))

(declare-fun c!154226 () Bool)

(assert (=> b!947559 (= c!154226 ((_ is Union!2609) lt!344110))))

(declare-fun bm!59268 () Bool)

(declare-fun call!59273 () Bool)

(assert (=> bm!59268 (= call!59273 (validRegex!1078 (ite c!154226 (regOne!5731 lt!344110) (regOne!5730 lt!344110))))))

(declare-fun b!947560 () Bool)

(declare-fun res!430762 () Bool)

(declare-fun e!613862 () Bool)

(assert (=> b!947560 (=> res!430762 e!613862)))

(assert (=> b!947560 (= res!430762 (not ((_ is Concat!4442) lt!344110)))))

(assert (=> b!947560 (= e!613859 e!613862)))

(declare-fun bm!59269 () Bool)

(declare-fun call!59275 () Bool)

(declare-fun call!59274 () Bool)

(assert (=> bm!59269 (= call!59275 call!59274)))

(declare-fun bm!59270 () Bool)

(declare-fun c!154225 () Bool)

(assert (=> bm!59270 (= call!59274 (validRegex!1078 (ite c!154225 (reg!2938 lt!344110) (ite c!154226 (regTwo!5731 lt!344110) (regTwo!5730 lt!344110)))))))

(declare-fun b!947561 () Bool)

(declare-fun e!613857 () Bool)

(assert (=> b!947561 (= e!613858 e!613857)))

(declare-fun res!430760 () Bool)

(declare-fun nullable!767 (Regex!2609) Bool)

(assert (=> b!947561 (= res!430760 (not (nullable!767 (reg!2938 lt!344110))))))

(assert (=> b!947561 (=> (not res!430760) (not e!613857))))

(declare-fun b!947562 () Bool)

(declare-fun e!613863 () Bool)

(assert (=> b!947562 (= e!613863 e!613858)))

(assert (=> b!947562 (= c!154225 ((_ is Star!2609) lt!344110))))

(declare-fun d!283336 () Bool)

(declare-fun res!430761 () Bool)

(assert (=> d!283336 (=> res!430761 e!613863)))

(assert (=> d!283336 (= res!430761 ((_ is ElementMatch!2609) lt!344110))))

(assert (=> d!283336 (= (validRegex!1078 lt!344110) e!613863)))

(declare-fun b!947563 () Bool)

(declare-fun e!613861 () Bool)

(assert (=> b!947563 (= e!613862 e!613861)))

(declare-fun res!430759 () Bool)

(assert (=> b!947563 (=> (not res!430759) (not e!613861))))

(assert (=> b!947563 (= res!430759 call!59273)))

(declare-fun b!947564 () Bool)

(assert (=> b!947564 (= e!613861 call!59275)))

(declare-fun b!947565 () Bool)

(assert (=> b!947565 (= e!613857 call!59274)))

(declare-fun b!947566 () Bool)

(declare-fun res!430758 () Bool)

(declare-fun e!613860 () Bool)

(assert (=> b!947566 (=> (not res!430758) (not e!613860))))

(assert (=> b!947566 (= res!430758 call!59273)))

(assert (=> b!947566 (= e!613859 e!613860)))

(declare-fun b!947567 () Bool)

(assert (=> b!947567 (= e!613860 call!59275)))

(assert (= (and d!283336 (not res!430761)) b!947562))

(assert (= (and b!947562 c!154225) b!947561))

(assert (= (and b!947562 (not c!154225)) b!947559))

(assert (= (and b!947561 res!430760) b!947565))

(assert (= (and b!947559 c!154226) b!947566))

(assert (= (and b!947559 (not c!154226)) b!947560))

(assert (= (and b!947566 res!430758) b!947567))

(assert (= (and b!947560 (not res!430762)) b!947563))

(assert (= (and b!947563 res!430759) b!947564))

(assert (= (or b!947567 b!947564) bm!59269))

(assert (= (or b!947566 b!947563) bm!59268))

(assert (= (or b!947565 bm!59269) bm!59270))

(declare-fun m!1162161 () Bool)

(assert (=> bm!59268 m!1162161))

(declare-fun m!1162163 () Bool)

(assert (=> bm!59270 m!1162163))

(declare-fun m!1162165 () Bool)

(assert (=> b!947561 m!1162165))

(assert (=> b!947467 d!283336))

(declare-fun b!947570 () Bool)

(declare-fun e!613867 () Bool)

(declare-fun e!613868 () Bool)

(assert (=> b!947570 (= e!613867 e!613868)))

(declare-fun c!154228 () Bool)

(assert (=> b!947570 (= c!154228 ((_ is Union!2609) r!15766))))

(declare-fun bm!59271 () Bool)

(declare-fun call!59276 () Bool)

(assert (=> bm!59271 (= call!59276 (validRegex!1078 (ite c!154228 (regOne!5731 r!15766) (regOne!5730 r!15766))))))

(declare-fun b!947571 () Bool)

(declare-fun res!430769 () Bool)

(declare-fun e!613871 () Bool)

(assert (=> b!947571 (=> res!430769 e!613871)))

(assert (=> b!947571 (= res!430769 (not ((_ is Concat!4442) r!15766)))))

(assert (=> b!947571 (= e!613868 e!613871)))

(declare-fun bm!59272 () Bool)

(declare-fun call!59278 () Bool)

(declare-fun call!59277 () Bool)

(assert (=> bm!59272 (= call!59278 call!59277)))

(declare-fun bm!59273 () Bool)

(declare-fun c!154227 () Bool)

(assert (=> bm!59273 (= call!59277 (validRegex!1078 (ite c!154227 (reg!2938 r!15766) (ite c!154228 (regTwo!5731 r!15766) (regTwo!5730 r!15766)))))))

(declare-fun b!947572 () Bool)

(declare-fun e!613866 () Bool)

(assert (=> b!947572 (= e!613867 e!613866)))

(declare-fun res!430767 () Bool)

(assert (=> b!947572 (= res!430767 (not (nullable!767 (reg!2938 r!15766))))))

(assert (=> b!947572 (=> (not res!430767) (not e!613866))))

(declare-fun b!947573 () Bool)

(declare-fun e!613872 () Bool)

(assert (=> b!947573 (= e!613872 e!613867)))

(assert (=> b!947573 (= c!154227 ((_ is Star!2609) r!15766))))

(declare-fun d!283340 () Bool)

(declare-fun res!430768 () Bool)

(assert (=> d!283340 (=> res!430768 e!613872)))

(assert (=> d!283340 (= res!430768 ((_ is ElementMatch!2609) r!15766))))

(assert (=> d!283340 (= (validRegex!1078 r!15766) e!613872)))

(declare-fun b!947574 () Bool)

(declare-fun e!613870 () Bool)

(assert (=> b!947574 (= e!613871 e!613870)))

(declare-fun res!430766 () Bool)

(assert (=> b!947574 (=> (not res!430766) (not e!613870))))

(assert (=> b!947574 (= res!430766 call!59276)))

(declare-fun b!947575 () Bool)

(assert (=> b!947575 (= e!613870 call!59278)))

(declare-fun b!947576 () Bool)

(assert (=> b!947576 (= e!613866 call!59277)))

(declare-fun b!947577 () Bool)

(declare-fun res!430765 () Bool)

(declare-fun e!613869 () Bool)

(assert (=> b!947577 (=> (not res!430765) (not e!613869))))

(assert (=> b!947577 (= res!430765 call!59276)))

(assert (=> b!947577 (= e!613868 e!613869)))

(declare-fun b!947578 () Bool)

(assert (=> b!947578 (= e!613869 call!59278)))

(assert (= (and d!283340 (not res!430768)) b!947573))

(assert (= (and b!947573 c!154227) b!947572))

(assert (= (and b!947573 (not c!154227)) b!947570))

(assert (= (and b!947572 res!430767) b!947576))

(assert (= (and b!947570 c!154228) b!947577))

(assert (= (and b!947570 (not c!154228)) b!947571))

(assert (= (and b!947577 res!430765) b!947578))

(assert (= (and b!947571 (not res!430769)) b!947574))

(assert (= (and b!947574 res!430766) b!947575))

(assert (= (or b!947578 b!947575) bm!59272))

(assert (= (or b!947577 b!947574) bm!59271))

(assert (= (or b!947576 bm!59272) bm!59273))

(declare-fun m!1162167 () Bool)

(assert (=> bm!59271 m!1162167))

(declare-fun m!1162169 () Bool)

(assert (=> bm!59273 m!1162169))

(declare-fun m!1162171 () Bool)

(assert (=> b!947572 m!1162171))

(assert (=> start!84442 d!283340))

(declare-fun b!947664 () Bool)

(declare-fun e!613916 () Bool)

(assert (=> b!947664 (= e!613916 (nullable!767 lt!344119))))

(declare-fun d!283342 () Bool)

(declare-fun e!613918 () Bool)

(assert (=> d!283342 e!613918))

(declare-fun c!154250 () Bool)

(assert (=> d!283342 (= c!154250 ((_ is EmptyExpr!2609) lt!344119))))

(declare-fun lt!344143 () Bool)

(assert (=> d!283342 (= lt!344143 e!613916)))

(declare-fun c!154249 () Bool)

(assert (=> d!283342 (= c!154249 (isEmpty!6086 (_2!6384 lt!344116)))))

(assert (=> d!283342 (validRegex!1078 lt!344119)))

(assert (=> d!283342 (= (matchR!1147 lt!344119 (_2!6384 lt!344116)) lt!344143)))

(declare-fun b!947665 () Bool)

(declare-fun res!430816 () Bool)

(declare-fun e!613920 () Bool)

(assert (=> b!947665 (=> (not res!430816) (not e!613920))))

(declare-fun call!59289 () Bool)

(assert (=> b!947665 (= res!430816 (not call!59289))))

(declare-fun b!947666 () Bool)

(declare-fun e!613917 () Bool)

(assert (=> b!947666 (= e!613918 e!613917)))

(declare-fun c!154251 () Bool)

(assert (=> b!947666 (= c!154251 ((_ is EmptyLang!2609) lt!344119))))

(declare-fun bm!59284 () Bool)

(assert (=> bm!59284 (= call!59289 (isEmpty!6086 (_2!6384 lt!344116)))))

(declare-fun b!947667 () Bool)

(declare-fun head!1729 (List!9839) C!5788)

(assert (=> b!947667 (= e!613920 (= (head!1729 (_2!6384 lt!344116)) (c!154204 lt!344119)))))

(declare-fun b!947668 () Bool)

(declare-fun e!613919 () Bool)

(declare-fun e!613922 () Bool)

(assert (=> b!947668 (= e!613919 e!613922)))

(declare-fun res!430820 () Bool)

(assert (=> b!947668 (=> res!430820 e!613922)))

(assert (=> b!947668 (= res!430820 call!59289)))

(declare-fun b!947669 () Bool)

(declare-fun res!430818 () Bool)

(assert (=> b!947669 (=> (not res!430818) (not e!613920))))

(declare-fun tail!1291 (List!9839) List!9839)

(assert (=> b!947669 (= res!430818 (isEmpty!6086 (tail!1291 (_2!6384 lt!344116))))))

(declare-fun b!947670 () Bool)

(declare-fun e!613921 () Bool)

(assert (=> b!947670 (= e!613921 e!613919)))

(declare-fun res!430815 () Bool)

(assert (=> b!947670 (=> (not res!430815) (not e!613919))))

(assert (=> b!947670 (= res!430815 (not lt!344143))))

(declare-fun b!947671 () Bool)

(declare-fun derivativeStep!576 (Regex!2609 C!5788) Regex!2609)

(assert (=> b!947671 (= e!613916 (matchR!1147 (derivativeStep!576 lt!344119 (head!1729 (_2!6384 lt!344116))) (tail!1291 (_2!6384 lt!344116))))))

(declare-fun b!947672 () Bool)

(declare-fun res!430817 () Bool)

(assert (=> b!947672 (=> res!430817 e!613922)))

(assert (=> b!947672 (= res!430817 (not (isEmpty!6086 (tail!1291 (_2!6384 lt!344116)))))))

(declare-fun b!947673 () Bool)

(declare-fun res!430821 () Bool)

(assert (=> b!947673 (=> res!430821 e!613921)))

(assert (=> b!947673 (= res!430821 (not ((_ is ElementMatch!2609) lt!344119)))))

(assert (=> b!947673 (= e!613917 e!613921)))

(declare-fun b!947674 () Bool)

(declare-fun res!430822 () Bool)

(assert (=> b!947674 (=> res!430822 e!613921)))

(assert (=> b!947674 (= res!430822 e!613920)))

(declare-fun res!430819 () Bool)

(assert (=> b!947674 (=> (not res!430819) (not e!613920))))

(assert (=> b!947674 (= res!430819 lt!344143)))

(declare-fun b!947675 () Bool)

(assert (=> b!947675 (= e!613917 (not lt!344143))))

(declare-fun b!947676 () Bool)

(assert (=> b!947676 (= e!613922 (not (= (head!1729 (_2!6384 lt!344116)) (c!154204 lt!344119))))))

(declare-fun b!947677 () Bool)

(assert (=> b!947677 (= e!613918 (= lt!344143 call!59289))))

(assert (= (and d!283342 c!154249) b!947664))

(assert (= (and d!283342 (not c!154249)) b!947671))

(assert (= (and d!283342 c!154250) b!947677))

(assert (= (and d!283342 (not c!154250)) b!947666))

(assert (= (and b!947666 c!154251) b!947675))

(assert (= (and b!947666 (not c!154251)) b!947673))

(assert (= (and b!947673 (not res!430821)) b!947674))

(assert (= (and b!947674 res!430819) b!947665))

(assert (= (and b!947665 res!430816) b!947669))

(assert (= (and b!947669 res!430818) b!947667))

(assert (= (and b!947674 (not res!430822)) b!947670))

(assert (= (and b!947670 res!430815) b!947668))

(assert (= (and b!947668 (not res!430820)) b!947672))

(assert (= (and b!947672 (not res!430817)) b!947676))

(assert (= (or b!947677 b!947665 b!947668) bm!59284))

(declare-fun m!1162203 () Bool)

(assert (=> bm!59284 m!1162203))

(declare-fun m!1162205 () Bool)

(assert (=> b!947672 m!1162205))

(assert (=> b!947672 m!1162205))

(declare-fun m!1162207 () Bool)

(assert (=> b!947672 m!1162207))

(declare-fun m!1162209 () Bool)

(assert (=> b!947671 m!1162209))

(assert (=> b!947671 m!1162209))

(declare-fun m!1162211 () Bool)

(assert (=> b!947671 m!1162211))

(assert (=> b!947671 m!1162205))

(assert (=> b!947671 m!1162211))

(assert (=> b!947671 m!1162205))

(declare-fun m!1162213 () Bool)

(assert (=> b!947671 m!1162213))

(assert (=> b!947667 m!1162209))

(assert (=> b!947669 m!1162205))

(assert (=> b!947669 m!1162205))

(assert (=> b!947669 m!1162207))

(declare-fun m!1162215 () Bool)

(assert (=> b!947664 m!1162215))

(assert (=> d!283342 m!1162203))

(declare-fun m!1162217 () Bool)

(assert (=> d!283342 m!1162217))

(assert (=> b!947676 m!1162209))

(assert (=> b!947468 d!283342))

(declare-fun b!947678 () Bool)

(declare-fun e!613923 () Bool)

(assert (=> b!947678 (= e!613923 (nullable!767 lt!344110))))

(declare-fun d!283354 () Bool)

(declare-fun e!613925 () Bool)

(assert (=> d!283354 e!613925))

(declare-fun c!154253 () Bool)

(assert (=> d!283354 (= c!154253 ((_ is EmptyExpr!2609) lt!344110))))

(declare-fun lt!344144 () Bool)

(assert (=> d!283354 (= lt!344144 e!613923)))

(declare-fun c!154252 () Bool)

(assert (=> d!283354 (= c!154252 (isEmpty!6086 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116))))))

(assert (=> d!283354 (validRegex!1078 lt!344110)))

(assert (=> d!283354 (= (matchR!1147 lt!344110 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116))) lt!344144)))

(declare-fun b!947679 () Bool)

(declare-fun res!430824 () Bool)

(declare-fun e!613927 () Bool)

(assert (=> b!947679 (=> (not res!430824) (not e!613927))))

(declare-fun call!59290 () Bool)

(assert (=> b!947679 (= res!430824 (not call!59290))))

(declare-fun b!947680 () Bool)

(declare-fun e!613924 () Bool)

(assert (=> b!947680 (= e!613925 e!613924)))

(declare-fun c!154254 () Bool)

(assert (=> b!947680 (= c!154254 ((_ is EmptyLang!2609) lt!344110))))

(declare-fun bm!59285 () Bool)

(assert (=> bm!59285 (= call!59290 (isEmpty!6086 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116))))))

(declare-fun b!947681 () Bool)

(assert (=> b!947681 (= e!613927 (= (head!1729 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116))) (c!154204 lt!344110)))))

(declare-fun b!947682 () Bool)

(declare-fun e!613926 () Bool)

(declare-fun e!613929 () Bool)

(assert (=> b!947682 (= e!613926 e!613929)))

(declare-fun res!430828 () Bool)

(assert (=> b!947682 (=> res!430828 e!613929)))

(assert (=> b!947682 (= res!430828 call!59290)))

(declare-fun b!947683 () Bool)

(declare-fun res!430826 () Bool)

(assert (=> b!947683 (=> (not res!430826) (not e!613927))))

(assert (=> b!947683 (= res!430826 (isEmpty!6086 (tail!1291 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116)))))))

(declare-fun b!947684 () Bool)

(declare-fun e!613928 () Bool)

(assert (=> b!947684 (= e!613928 e!613926)))

(declare-fun res!430823 () Bool)

(assert (=> b!947684 (=> (not res!430823) (not e!613926))))

(assert (=> b!947684 (= res!430823 (not lt!344144))))

(declare-fun b!947685 () Bool)

(assert (=> b!947685 (= e!613923 (matchR!1147 (derivativeStep!576 lt!344110 (head!1729 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116)))) (tail!1291 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116)))))))

(declare-fun b!947686 () Bool)

(declare-fun res!430825 () Bool)

(assert (=> b!947686 (=> res!430825 e!613929)))

(assert (=> b!947686 (= res!430825 (not (isEmpty!6086 (tail!1291 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116))))))))

(declare-fun b!947687 () Bool)

(declare-fun res!430829 () Bool)

(assert (=> b!947687 (=> res!430829 e!613928)))

(assert (=> b!947687 (= res!430829 (not ((_ is ElementMatch!2609) lt!344110)))))

(assert (=> b!947687 (= e!613924 e!613928)))

(declare-fun b!947688 () Bool)

(declare-fun res!430830 () Bool)

(assert (=> b!947688 (=> res!430830 e!613928)))

(assert (=> b!947688 (= res!430830 e!613927)))

(declare-fun res!430827 () Bool)

(assert (=> b!947688 (=> (not res!430827) (not e!613927))))

(assert (=> b!947688 (= res!430827 lt!344144)))

(declare-fun b!947689 () Bool)

(assert (=> b!947689 (= e!613924 (not lt!344144))))

(declare-fun b!947690 () Bool)

(assert (=> b!947690 (= e!613929 (not (= (head!1729 (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116))) (c!154204 lt!344110))))))

(declare-fun b!947691 () Bool)

(assert (=> b!947691 (= e!613925 (= lt!344144 call!59290))))

(assert (= (and d!283354 c!154252) b!947678))

(assert (= (and d!283354 (not c!154252)) b!947685))

(assert (= (and d!283354 c!154253) b!947691))

(assert (= (and d!283354 (not c!154253)) b!947680))

(assert (= (and b!947680 c!154254) b!947689))

(assert (= (and b!947680 (not c!154254)) b!947687))

(assert (= (and b!947687 (not res!430829)) b!947688))

(assert (= (and b!947688 res!430827) b!947679))

(assert (= (and b!947679 res!430824) b!947683))

(assert (= (and b!947683 res!430826) b!947681))

(assert (= (and b!947688 (not res!430830)) b!947684))

(assert (= (and b!947684 res!430823) b!947682))

(assert (= (and b!947682 (not res!430828)) b!947686))

(assert (= (and b!947686 (not res!430825)) b!947690))

(assert (= (or b!947691 b!947679 b!947682) bm!59285))

(assert (=> bm!59285 m!1162125))

(declare-fun m!1162219 () Bool)

(assert (=> bm!59285 m!1162219))

(assert (=> b!947686 m!1162125))

(declare-fun m!1162221 () Bool)

(assert (=> b!947686 m!1162221))

(assert (=> b!947686 m!1162221))

(declare-fun m!1162223 () Bool)

(assert (=> b!947686 m!1162223))

(assert (=> b!947685 m!1162125))

(declare-fun m!1162225 () Bool)

(assert (=> b!947685 m!1162225))

(assert (=> b!947685 m!1162225))

(declare-fun m!1162227 () Bool)

(assert (=> b!947685 m!1162227))

(assert (=> b!947685 m!1162125))

(assert (=> b!947685 m!1162221))

(assert (=> b!947685 m!1162227))

(assert (=> b!947685 m!1162221))

(declare-fun m!1162229 () Bool)

(assert (=> b!947685 m!1162229))

(assert (=> b!947681 m!1162125))

(assert (=> b!947681 m!1162225))

(assert (=> b!947683 m!1162125))

(assert (=> b!947683 m!1162221))

(assert (=> b!947683 m!1162221))

(assert (=> b!947683 m!1162223))

(declare-fun m!1162231 () Bool)

(assert (=> b!947678 m!1162231))

(assert (=> d!283354 m!1162125))

(assert (=> d!283354 m!1162219))

(assert (=> d!283354 m!1162137))

(assert (=> b!947690 m!1162125))

(assert (=> b!947690 m!1162225))

(assert (=> b!947479 d!283354))

(declare-fun d!283356 () Bool)

(assert (=> d!283356 (matchR!1147 (Star!2609 (reg!2938 r!15766)) (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116)))))

(declare-fun lt!344157 () Unit!14859)

(declare-fun choose!5896 (Regex!2609 List!9839 List!9839) Unit!14859)

(assert (=> d!283356 (= lt!344157 (choose!5896 (reg!2938 r!15766) (_1!6384 lt!344116) (_2!6384 lt!344116)))))

(assert (=> d!283356 (validRegex!1078 (Star!2609 (reg!2938 r!15766)))))

(assert (=> d!283356 (= (lemmaStarApp!8 (reg!2938 r!15766) (_1!6384 lt!344116) (_2!6384 lt!344116)) lt!344157)))

(declare-fun bs!239695 () Bool)

(assert (= bs!239695 d!283356))

(assert (=> bs!239695 m!1162125))

(assert (=> bs!239695 m!1162125))

(declare-fun m!1162269 () Bool)

(assert (=> bs!239695 m!1162269))

(declare-fun m!1162271 () Bool)

(assert (=> bs!239695 m!1162271))

(declare-fun m!1162273 () Bool)

(assert (=> bs!239695 m!1162273))

(assert (=> b!947479 d!283356))

(declare-fun b!947775 () Bool)

(declare-fun res!430874 () Bool)

(declare-fun e!613974 () Bool)

(assert (=> b!947775 (=> (not res!430874) (not e!613974))))

(declare-fun lt!344160 () List!9839)

(assert (=> b!947775 (= res!430874 (= (size!7907 lt!344160) (+ (size!7907 (_1!6384 lt!344116)) (size!7907 (_2!6384 lt!344116)))))))

(declare-fun d!283364 () Bool)

(assert (=> d!283364 e!613974))

(declare-fun res!430875 () Bool)

(assert (=> d!283364 (=> (not res!430875) (not e!613974))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1395 (List!9839) (InoxSet C!5788))

(assert (=> d!283364 (= res!430875 (= (content!1395 lt!344160) ((_ map or) (content!1395 (_1!6384 lt!344116)) (content!1395 (_2!6384 lt!344116)))))))

(declare-fun e!613975 () List!9839)

(assert (=> d!283364 (= lt!344160 e!613975)))

(declare-fun c!154274 () Bool)

(assert (=> d!283364 (= c!154274 ((_ is Nil!9823) (_1!6384 lt!344116)))))

(assert (=> d!283364 (= (++!2623 (_1!6384 lt!344116) (_2!6384 lt!344116)) lt!344160)))

(declare-fun b!947774 () Bool)

(assert (=> b!947774 (= e!613975 (Cons!9823 (h!15224 (_1!6384 lt!344116)) (++!2623 (t!100885 (_1!6384 lt!344116)) (_2!6384 lt!344116))))))

(declare-fun b!947773 () Bool)

(assert (=> b!947773 (= e!613975 (_2!6384 lt!344116))))

(declare-fun b!947776 () Bool)

(assert (=> b!947776 (= e!613974 (or (not (= (_2!6384 lt!344116) Nil!9823)) (= lt!344160 (_1!6384 lt!344116))))))

(assert (= (and d!283364 c!154274) b!947773))

(assert (= (and d!283364 (not c!154274)) b!947774))

(assert (= (and d!283364 res!430875) b!947775))

(assert (= (and b!947775 res!430874) b!947776))

(declare-fun m!1162275 () Bool)

(assert (=> b!947775 m!1162275))

(declare-fun m!1162277 () Bool)

(assert (=> b!947775 m!1162277))

(assert (=> b!947775 m!1162095))

(declare-fun m!1162279 () Bool)

(assert (=> d!283364 m!1162279))

(declare-fun m!1162281 () Bool)

(assert (=> d!283364 m!1162281))

(declare-fun m!1162283 () Bool)

(assert (=> d!283364 m!1162283))

(declare-fun m!1162285 () Bool)

(assert (=> b!947774 m!1162285))

(assert (=> b!947479 d!283364))

(declare-fun b!947777 () Bool)

(declare-fun e!613977 () Bool)

(declare-fun e!613978 () Bool)

(assert (=> b!947777 (= e!613977 e!613978)))

(declare-fun c!154276 () Bool)

(assert (=> b!947777 (= c!154276 ((_ is Union!2609) (removeUselessConcat!278 r!15766)))))

(declare-fun bm!59291 () Bool)

(declare-fun call!59296 () Bool)

(assert (=> bm!59291 (= call!59296 (validRegex!1078 (ite c!154276 (regOne!5731 (removeUselessConcat!278 r!15766)) (regOne!5730 (removeUselessConcat!278 r!15766)))))))

(declare-fun b!947778 () Bool)

(declare-fun res!430880 () Bool)

(declare-fun e!613981 () Bool)

(assert (=> b!947778 (=> res!430880 e!613981)))

(assert (=> b!947778 (= res!430880 (not ((_ is Concat!4442) (removeUselessConcat!278 r!15766))))))

(assert (=> b!947778 (= e!613978 e!613981)))

(declare-fun bm!59292 () Bool)

(declare-fun call!59298 () Bool)

(declare-fun call!59297 () Bool)

(assert (=> bm!59292 (= call!59298 call!59297)))

(declare-fun c!154275 () Bool)

(declare-fun bm!59293 () Bool)

(assert (=> bm!59293 (= call!59297 (validRegex!1078 (ite c!154275 (reg!2938 (removeUselessConcat!278 r!15766)) (ite c!154276 (regTwo!5731 (removeUselessConcat!278 r!15766)) (regTwo!5730 (removeUselessConcat!278 r!15766))))))))

(declare-fun b!947779 () Bool)

(declare-fun e!613976 () Bool)

(assert (=> b!947779 (= e!613977 e!613976)))

(declare-fun res!430878 () Bool)

(assert (=> b!947779 (= res!430878 (not (nullable!767 (reg!2938 (removeUselessConcat!278 r!15766)))))))

(assert (=> b!947779 (=> (not res!430878) (not e!613976))))

(declare-fun b!947780 () Bool)

(declare-fun e!613982 () Bool)

(assert (=> b!947780 (= e!613982 e!613977)))

(assert (=> b!947780 (= c!154275 ((_ is Star!2609) (removeUselessConcat!278 r!15766)))))

(declare-fun d!283366 () Bool)

(declare-fun res!430879 () Bool)

(assert (=> d!283366 (=> res!430879 e!613982)))

(assert (=> d!283366 (= res!430879 ((_ is ElementMatch!2609) (removeUselessConcat!278 r!15766)))))

(assert (=> d!283366 (= (validRegex!1078 (removeUselessConcat!278 r!15766)) e!613982)))

(declare-fun b!947781 () Bool)

(declare-fun e!613980 () Bool)

(assert (=> b!947781 (= e!613981 e!613980)))

(declare-fun res!430877 () Bool)

(assert (=> b!947781 (=> (not res!430877) (not e!613980))))

(assert (=> b!947781 (= res!430877 call!59296)))

(declare-fun b!947782 () Bool)

(assert (=> b!947782 (= e!613980 call!59298)))

(declare-fun b!947783 () Bool)

(assert (=> b!947783 (= e!613976 call!59297)))

(declare-fun b!947784 () Bool)

(declare-fun res!430876 () Bool)

(declare-fun e!613979 () Bool)

(assert (=> b!947784 (=> (not res!430876) (not e!613979))))

(assert (=> b!947784 (= res!430876 call!59296)))

(assert (=> b!947784 (= e!613978 e!613979)))

(declare-fun b!947785 () Bool)

(assert (=> b!947785 (= e!613979 call!59298)))

(assert (= (and d!283366 (not res!430879)) b!947780))

(assert (= (and b!947780 c!154275) b!947779))

(assert (= (and b!947780 (not c!154275)) b!947777))

(assert (= (and b!947779 res!430878) b!947783))

(assert (= (and b!947777 c!154276) b!947784))

(assert (= (and b!947777 (not c!154276)) b!947778))

(assert (= (and b!947784 res!430876) b!947785))

(assert (= (and b!947778 (not res!430880)) b!947781))

(assert (= (and b!947781 res!430877) b!947782))

(assert (= (or b!947785 b!947782) bm!59292))

(assert (= (or b!947784 b!947781) bm!59291))

(assert (= (or b!947783 bm!59292) bm!59293))

(declare-fun m!1162287 () Bool)

(assert (=> bm!59291 m!1162287))

(declare-fun m!1162289 () Bool)

(assert (=> bm!59293 m!1162289))

(declare-fun m!1162291 () Bool)

(assert (=> b!947779 m!1162291))

(assert (=> b!947479 d!283366))

(declare-fun bm!59310 () Bool)

(declare-fun call!59316 () Regex!2609)

(declare-fun call!59317 () Regex!2609)

(assert (=> bm!59310 (= call!59316 call!59317)))

(declare-fun b!947863 () Bool)

(declare-fun e!614032 () Bool)

(declare-fun lt!344173 () Regex!2609)

(assert (=> b!947863 (= e!614032 (= (nullable!767 lt!344173) (nullable!767 r!15766)))))

(declare-fun d!283368 () Bool)

(assert (=> d!283368 e!614032))

(declare-fun res!430910 () Bool)

(assert (=> d!283368 (=> (not res!430910) (not e!614032))))

(assert (=> d!283368 (= res!430910 (validRegex!1078 lt!344173))))

(declare-fun e!614031 () Regex!2609)

(assert (=> d!283368 (= lt!344173 e!614031)))

(declare-fun c!154303 () Bool)

(assert (=> d!283368 (= c!154303 (and ((_ is Concat!4442) r!15766) ((_ is EmptyExpr!2609) (regOne!5730 r!15766))))))

(assert (=> d!283368 (validRegex!1078 r!15766)))

(assert (=> d!283368 (= (removeUselessConcat!278 r!15766) lt!344173)))

(declare-fun b!947864 () Bool)

(declare-fun e!614027 () Regex!2609)

(declare-fun e!614028 () Regex!2609)

(assert (=> b!947864 (= e!614027 e!614028)))

(declare-fun c!154302 () Bool)

(assert (=> b!947864 (= c!154302 ((_ is Union!2609) r!15766))))

(declare-fun bm!59311 () Bool)

(declare-fun call!59319 () Regex!2609)

(declare-fun call!59315 () Regex!2609)

(assert (=> bm!59311 (= call!59319 call!59315)))

(declare-fun bm!59312 () Bool)

(declare-fun call!59318 () Regex!2609)

(assert (=> bm!59312 (= call!59315 call!59318)))

(declare-fun b!947865 () Bool)

(declare-fun c!154304 () Bool)

(assert (=> b!947865 (= c!154304 ((_ is Star!2609) r!15766))))

(declare-fun e!614030 () Regex!2609)

(assert (=> b!947865 (= e!614028 e!614030)))

(declare-fun b!947866 () Bool)

(declare-fun c!154305 () Bool)

(assert (=> b!947866 (= c!154305 ((_ is Concat!4442) r!15766))))

(declare-fun e!614029 () Regex!2609)

(assert (=> b!947866 (= e!614029 e!614027)))

(declare-fun bm!59313 () Bool)

(declare-fun c!154301 () Bool)

(assert (=> bm!59313 (= call!59318 (removeUselessConcat!278 (ite c!154303 (regTwo!5730 r!15766) (ite c!154301 (regOne!5730 r!15766) (ite c!154305 (regTwo!5730 r!15766) (regOne!5731 r!15766))))))))

(declare-fun b!947867 () Bool)

(assert (=> b!947867 (= e!614029 call!59315)))

(declare-fun bm!59314 () Bool)

(assert (=> bm!59314 (= call!59317 (removeUselessConcat!278 (ite c!154305 (regOne!5730 r!15766) (ite c!154302 (regTwo!5731 r!15766) (reg!2938 r!15766)))))))

(declare-fun b!947868 () Bool)

(assert (=> b!947868 (= e!614030 r!15766)))

(declare-fun b!947869 () Bool)

(assert (=> b!947869 (= e!614028 (Union!2609 call!59319 call!59316))))

(declare-fun b!947870 () Bool)

(assert (=> b!947870 (= e!614031 e!614029)))

(assert (=> b!947870 (= c!154301 (and ((_ is Concat!4442) r!15766) ((_ is EmptyExpr!2609) (regTwo!5730 r!15766))))))

(declare-fun b!947871 () Bool)

(assert (=> b!947871 (= e!614027 (Concat!4442 call!59317 call!59319))))

(declare-fun b!947872 () Bool)

(assert (=> b!947872 (= e!614030 (Star!2609 call!59316))))

(declare-fun b!947873 () Bool)

(assert (=> b!947873 (= e!614031 call!59318)))

(assert (= (and d!283368 c!154303) b!947873))

(assert (= (and d!283368 (not c!154303)) b!947870))

(assert (= (and b!947870 c!154301) b!947867))

(assert (= (and b!947870 (not c!154301)) b!947866))

(assert (= (and b!947866 c!154305) b!947871))

(assert (= (and b!947866 (not c!154305)) b!947864))

(assert (= (and b!947864 c!154302) b!947869))

(assert (= (and b!947864 (not c!154302)) b!947865))

(assert (= (and b!947865 c!154304) b!947872))

(assert (= (and b!947865 (not c!154304)) b!947868))

(assert (= (or b!947869 b!947872) bm!59310))

(assert (= (or b!947871 b!947869) bm!59311))

(assert (= (or b!947871 bm!59310) bm!59314))

(assert (= (or b!947867 bm!59311) bm!59312))

(assert (= (or b!947873 bm!59312) bm!59313))

(assert (= (and d!283368 res!430910) b!947863))

(declare-fun m!1162371 () Bool)

(assert (=> b!947863 m!1162371))

(declare-fun m!1162373 () Bool)

(assert (=> b!947863 m!1162373))

(declare-fun m!1162375 () Bool)

(assert (=> d!283368 m!1162375))

(assert (=> d!283368 m!1162113))

(declare-fun m!1162377 () Bool)

(assert (=> bm!59313 m!1162377))

(declare-fun m!1162379 () Bool)

(assert (=> bm!59314 m!1162379))

(assert (=> b!947479 d!283368))

(declare-fun b!947883 () Bool)

(declare-fun e!614040 () Bool)

(assert (=> b!947883 (= e!614040 (nullable!767 lt!344114))))

(declare-fun d!283394 () Bool)

(declare-fun e!614042 () Bool)

(assert (=> d!283394 e!614042))

(declare-fun c!154309 () Bool)

(assert (=> d!283394 (= c!154309 ((_ is EmptyExpr!2609) lt!344114))))

(declare-fun lt!344177 () Bool)

(assert (=> d!283394 (= lt!344177 e!614040)))

(declare-fun c!154308 () Bool)

(assert (=> d!283394 (= c!154308 (isEmpty!6086 (_1!6384 lt!344116)))))

(assert (=> d!283394 (validRegex!1078 lt!344114)))

(assert (=> d!283394 (= (matchR!1147 lt!344114 (_1!6384 lt!344116)) lt!344177)))

(declare-fun b!947884 () Bool)

(declare-fun res!430917 () Bool)

(declare-fun e!614044 () Bool)

(assert (=> b!947884 (=> (not res!430917) (not e!614044))))

(declare-fun call!59323 () Bool)

(assert (=> b!947884 (= res!430917 (not call!59323))))

(declare-fun b!947885 () Bool)

(declare-fun e!614041 () Bool)

(assert (=> b!947885 (= e!614042 e!614041)))

(declare-fun c!154310 () Bool)

(assert (=> b!947885 (= c!154310 ((_ is EmptyLang!2609) lt!344114))))

(declare-fun bm!59318 () Bool)

(assert (=> bm!59318 (= call!59323 (isEmpty!6086 (_1!6384 lt!344116)))))

(declare-fun b!947886 () Bool)

(assert (=> b!947886 (= e!614044 (= (head!1729 (_1!6384 lt!344116)) (c!154204 lt!344114)))))

(declare-fun b!947887 () Bool)

(declare-fun e!614043 () Bool)

(declare-fun e!614046 () Bool)

(assert (=> b!947887 (= e!614043 e!614046)))

(declare-fun res!430921 () Bool)

(assert (=> b!947887 (=> res!430921 e!614046)))

(assert (=> b!947887 (= res!430921 call!59323)))

(declare-fun b!947888 () Bool)

(declare-fun res!430919 () Bool)

(assert (=> b!947888 (=> (not res!430919) (not e!614044))))

(assert (=> b!947888 (= res!430919 (isEmpty!6086 (tail!1291 (_1!6384 lt!344116))))))

(declare-fun b!947889 () Bool)

(declare-fun e!614045 () Bool)

(assert (=> b!947889 (= e!614045 e!614043)))

(declare-fun res!430916 () Bool)

(assert (=> b!947889 (=> (not res!430916) (not e!614043))))

(assert (=> b!947889 (= res!430916 (not lt!344177))))

(declare-fun b!947890 () Bool)

(assert (=> b!947890 (= e!614040 (matchR!1147 (derivativeStep!576 lt!344114 (head!1729 (_1!6384 lt!344116))) (tail!1291 (_1!6384 lt!344116))))))

(declare-fun b!947891 () Bool)

(declare-fun res!430918 () Bool)

(assert (=> b!947891 (=> res!430918 e!614046)))

(assert (=> b!947891 (= res!430918 (not (isEmpty!6086 (tail!1291 (_1!6384 lt!344116)))))))

(declare-fun b!947892 () Bool)

(declare-fun res!430922 () Bool)

(assert (=> b!947892 (=> res!430922 e!614045)))

(assert (=> b!947892 (= res!430922 (not ((_ is ElementMatch!2609) lt!344114)))))

(assert (=> b!947892 (= e!614041 e!614045)))

(declare-fun b!947893 () Bool)

(declare-fun res!430923 () Bool)

(assert (=> b!947893 (=> res!430923 e!614045)))

(assert (=> b!947893 (= res!430923 e!614044)))

(declare-fun res!430920 () Bool)

(assert (=> b!947893 (=> (not res!430920) (not e!614044))))

(assert (=> b!947893 (= res!430920 lt!344177)))

(declare-fun b!947894 () Bool)

(assert (=> b!947894 (= e!614041 (not lt!344177))))

(declare-fun b!947895 () Bool)

(assert (=> b!947895 (= e!614046 (not (= (head!1729 (_1!6384 lt!344116)) (c!154204 lt!344114))))))

(declare-fun b!947896 () Bool)

(assert (=> b!947896 (= e!614042 (= lt!344177 call!59323))))

(assert (= (and d!283394 c!154308) b!947883))

(assert (= (and d!283394 (not c!154308)) b!947890))

(assert (= (and d!283394 c!154309) b!947896))

(assert (= (and d!283394 (not c!154309)) b!947885))

(assert (= (and b!947885 c!154310) b!947894))

(assert (= (and b!947885 (not c!154310)) b!947892))

(assert (= (and b!947892 (not res!430922)) b!947893))

(assert (= (and b!947893 res!430920) b!947884))

(assert (= (and b!947884 res!430917) b!947888))

(assert (= (and b!947888 res!430919) b!947886))

(assert (= (and b!947893 (not res!430923)) b!947889))

(assert (= (and b!947889 res!430916) b!947887))

(assert (= (and b!947887 (not res!430921)) b!947891))

(assert (= (and b!947891 (not res!430918)) b!947895))

(assert (= (or b!947896 b!947884 b!947887) bm!59318))

(declare-fun m!1162403 () Bool)

(assert (=> bm!59318 m!1162403))

(declare-fun m!1162407 () Bool)

(assert (=> b!947891 m!1162407))

(assert (=> b!947891 m!1162407))

(declare-fun m!1162413 () Bool)

(assert (=> b!947891 m!1162413))

(declare-fun m!1162417 () Bool)

(assert (=> b!947890 m!1162417))

(assert (=> b!947890 m!1162417))

(declare-fun m!1162419 () Bool)

(assert (=> b!947890 m!1162419))

(assert (=> b!947890 m!1162407))

(assert (=> b!947890 m!1162419))

(assert (=> b!947890 m!1162407))

(declare-fun m!1162421 () Bool)

(assert (=> b!947890 m!1162421))

(assert (=> b!947886 m!1162417))

(assert (=> b!947888 m!1162407))

(assert (=> b!947888 m!1162407))

(assert (=> b!947888 m!1162413))

(declare-fun m!1162423 () Bool)

(assert (=> b!947883 m!1162423))

(assert (=> d!283394 m!1162403))

(declare-fun m!1162425 () Bool)

(assert (=> d!283394 m!1162425))

(assert (=> b!947895 m!1162417))

(assert (=> b!947469 d!283394))

(declare-fun d!283404 () Bool)

(assert (=> d!283404 (= (get!3295 lt!344107) (v!19616 lt!344107))))

(assert (=> b!947469 d!283404))

(declare-fun bs!239745 () Bool)

(declare-fun d!283406 () Bool)

(assert (= bs!239745 (and d!283406 b!947471)))

(declare-fun lambda!32443 () Int)

(assert (=> bs!239745 (= (and (= lt!344114 (reg!2938 r!15766)) (= (Star!2609 lt!344114) lt!344110)) (= lambda!32443 lambda!32415))))

(assert (=> bs!239745 (not (= lambda!32443 lambda!32416))))

(declare-fun bs!239746 () Bool)

(assert (= bs!239746 (and d!283406 b!947464)))

(assert (=> bs!239746 (= (= (Star!2609 lt!344114) lt!344119) (= lambda!32443 lambda!32417))))

(assert (=> bs!239746 (not (= lambda!32443 lambda!32418))))

(assert (=> d!283406 true))

(assert (=> d!283406 true))

(declare-fun lambda!32444 () Int)

(assert (=> bs!239745 (not (= lambda!32444 lambda!32415))))

(assert (=> bs!239745 (= (and (= lt!344114 (reg!2938 r!15766)) (= (Star!2609 lt!344114) lt!344110)) (= lambda!32444 lambda!32416))))

(assert (=> bs!239746 (= (= (Star!2609 lt!344114) lt!344119) (= lambda!32444 lambda!32418))))

(declare-fun bs!239747 () Bool)

(assert (= bs!239747 d!283406))

(assert (=> bs!239747 (not (= lambda!32444 lambda!32443))))

(assert (=> bs!239746 (not (= lambda!32444 lambda!32417))))

(assert (=> d!283406 true))

(assert (=> d!283406 true))

(assert (=> d!283406 (= (Exists!360 lambda!32443) (Exists!360 lambda!32444))))

(declare-fun lt!344196 () Unit!14859)

(declare-fun choose!5898 (Regex!2609 List!9839) Unit!14859)

(assert (=> d!283406 (= lt!344196 (choose!5898 lt!344114 s!10566))))

(assert (=> d!283406 (validRegex!1078 lt!344114)))

(assert (=> d!283406 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!104 lt!344114 s!10566) lt!344196)))

(declare-fun m!1162475 () Bool)

(assert (=> bs!239747 m!1162475))

(declare-fun m!1162477 () Bool)

(assert (=> bs!239747 m!1162477))

(declare-fun m!1162479 () Bool)

(assert (=> bs!239747 m!1162479))

(assert (=> bs!239747 m!1162425))

(assert (=> b!947464 d!283406))

(declare-fun d!283428 () Bool)

(assert (=> d!283428 (= (isEmpty!6086 s!10566) ((_ is Nil!9823) s!10566))))

(assert (=> b!947464 d!283428))

(declare-fun bs!239748 () Bool)

(declare-fun d!283430 () Bool)

(assert (= bs!239748 (and d!283430 b!947471)))

(declare-fun lambda!32447 () Int)

(assert (=> bs!239748 (= (and (= lt!344114 (reg!2938 r!15766)) (= lt!344119 lt!344110)) (= lambda!32447 lambda!32415))))

(assert (=> bs!239748 (not (= lambda!32447 lambda!32416))))

(declare-fun bs!239749 () Bool)

(assert (= bs!239749 (and d!283430 b!947464)))

(assert (=> bs!239749 (not (= lambda!32447 lambda!32418))))

(declare-fun bs!239750 () Bool)

(assert (= bs!239750 (and d!283430 d!283406)))

(assert (=> bs!239750 (= (= lt!344119 (Star!2609 lt!344114)) (= lambda!32447 lambda!32443))))

(assert (=> bs!239750 (not (= lambda!32447 lambda!32444))))

(assert (=> bs!239749 (= lambda!32447 lambda!32417)))

(assert (=> d!283430 true))

(assert (=> d!283430 true))

(assert (=> d!283430 true))

(assert (=> d!283430 (= (isDefined!1842 (findConcatSeparation!306 lt!344114 lt!344119 Nil!9823 s!10566 s!10566)) (Exists!360 lambda!32447))))

(declare-fun lt!344199 () Unit!14859)

(declare-fun choose!5899 (Regex!2609 Regex!2609 List!9839) Unit!14859)

(assert (=> d!283430 (= lt!344199 (choose!5899 lt!344114 lt!344119 s!10566))))

(assert (=> d!283430 (validRegex!1078 lt!344114)))

(assert (=> d!283430 (= (lemmaFindConcatSeparationEquivalentToExists!306 lt!344114 lt!344119 s!10566) lt!344199)))

(declare-fun bs!239751 () Bool)

(assert (= bs!239751 d!283430))

(assert (=> bs!239751 m!1162063))

(declare-fun m!1162481 () Bool)

(assert (=> bs!239751 m!1162481))

(assert (=> bs!239751 m!1162425))

(declare-fun m!1162483 () Bool)

(assert (=> bs!239751 m!1162483))

(assert (=> bs!239751 m!1162063))

(declare-fun m!1162485 () Bool)

(assert (=> bs!239751 m!1162485))

(assert (=> b!947464 d!283430))

(declare-fun bs!239752 () Bool)

(declare-fun b!948098 () Bool)

(assert (= bs!239752 (and b!948098 b!947471)))

(declare-fun lambda!32452 () Int)

(assert (=> bs!239752 (not (= lambda!32452 lambda!32415))))

(assert (=> bs!239752 (= (and (= (reg!2938 lt!344119) (reg!2938 r!15766)) (= lt!344119 lt!344110)) (= lambda!32452 lambda!32416))))

(declare-fun bs!239753 () Bool)

(assert (= bs!239753 (and b!948098 b!947464)))

(assert (=> bs!239753 (= (= (reg!2938 lt!344119) lt!344114) (= lambda!32452 lambda!32418))))

(declare-fun bs!239754 () Bool)

(assert (= bs!239754 (and b!948098 d!283406)))

(assert (=> bs!239754 (not (= lambda!32452 lambda!32443))))

(assert (=> bs!239754 (= (and (= (reg!2938 lt!344119) lt!344114) (= lt!344119 (Star!2609 lt!344114))) (= lambda!32452 lambda!32444))))

(declare-fun bs!239755 () Bool)

(assert (= bs!239755 (and b!948098 d!283430)))

(assert (=> bs!239755 (not (= lambda!32452 lambda!32447))))

(assert (=> bs!239753 (not (= lambda!32452 lambda!32417))))

(assert (=> b!948098 true))

(assert (=> b!948098 true))

(declare-fun bs!239756 () Bool)

(declare-fun b!948095 () Bool)

(assert (= bs!239756 (and b!948095 b!947471)))

(declare-fun lambda!32453 () Int)

(assert (=> bs!239756 (not (= lambda!32453 lambda!32415))))

(assert (=> bs!239756 (not (= lambda!32453 lambda!32416))))

(declare-fun bs!239757 () Bool)

(assert (= bs!239757 (and b!948095 b!947464)))

(assert (=> bs!239757 (not (= lambda!32453 lambda!32418))))

(declare-fun bs!239758 () Bool)

(assert (= bs!239758 (and b!948095 d!283406)))

(assert (=> bs!239758 (not (= lambda!32453 lambda!32443))))

(assert (=> bs!239758 (not (= lambda!32453 lambda!32444))))

(declare-fun bs!239759 () Bool)

(assert (= bs!239759 (and b!948095 d!283430)))

(assert (=> bs!239759 (not (= lambda!32453 lambda!32447))))

(assert (=> bs!239757 (not (= lambda!32453 lambda!32417))))

(declare-fun bs!239760 () Bool)

(assert (= bs!239760 (and b!948095 b!948098)))

(assert (=> bs!239760 (not (= lambda!32453 lambda!32452))))

(assert (=> b!948095 true))

(assert (=> b!948095 true))

(declare-fun b!948089 () Bool)

(declare-fun e!614144 () Bool)

(declare-fun e!614143 () Bool)

(assert (=> b!948089 (= e!614144 e!614143)))

(declare-fun c!154355 () Bool)

(assert (=> b!948089 (= c!154355 ((_ is Star!2609) lt!344119))))

(declare-fun b!948090 () Bool)

(declare-fun e!614139 () Bool)

(assert (=> b!948090 (= e!614139 (matchRSpec!410 (regTwo!5731 lt!344119) s!10566))))

(declare-fun d!283432 () Bool)

(declare-fun c!154354 () Bool)

(assert (=> d!283432 (= c!154354 ((_ is EmptyExpr!2609) lt!344119))))

(declare-fun e!614142 () Bool)

(assert (=> d!283432 (= (matchRSpec!410 lt!344119 s!10566) e!614142)))

(declare-fun b!948091 () Bool)

(declare-fun call!59346 () Bool)

(assert (=> b!948091 (= e!614142 call!59346)))

(declare-fun b!948092 () Bool)

(declare-fun e!614140 () Bool)

(assert (=> b!948092 (= e!614142 e!614140)))

(declare-fun res!430999 () Bool)

(assert (=> b!948092 (= res!430999 (not ((_ is EmptyLang!2609) lt!344119)))))

(assert (=> b!948092 (=> (not res!430999) (not e!614140))))

(declare-fun b!948093 () Bool)

(declare-fun c!154352 () Bool)

(assert (=> b!948093 (= c!154352 ((_ is Union!2609) lt!344119))))

(declare-fun e!614145 () Bool)

(assert (=> b!948093 (= e!614145 e!614144)))

(declare-fun bm!59340 () Bool)

(assert (=> bm!59340 (= call!59346 (isEmpty!6086 s!10566))))

(declare-fun b!948094 () Bool)

(declare-fun res!431001 () Bool)

(declare-fun e!614141 () Bool)

(assert (=> b!948094 (=> res!431001 e!614141)))

(assert (=> b!948094 (= res!431001 call!59346)))

(assert (=> b!948094 (= e!614143 e!614141)))

(declare-fun call!59345 () Bool)

(assert (=> b!948095 (= e!614143 call!59345)))

(declare-fun bm!59341 () Bool)

(assert (=> bm!59341 (= call!59345 (Exists!360 (ite c!154355 lambda!32452 lambda!32453)))))

(declare-fun b!948096 () Bool)

(declare-fun c!154353 () Bool)

(assert (=> b!948096 (= c!154353 ((_ is ElementMatch!2609) lt!344119))))

(assert (=> b!948096 (= e!614140 e!614145)))

(declare-fun b!948097 () Bool)

(assert (=> b!948097 (= e!614145 (= s!10566 (Cons!9823 (c!154204 lt!344119) Nil!9823)))))

(assert (=> b!948098 (= e!614141 call!59345)))

(declare-fun b!948099 () Bool)

(assert (=> b!948099 (= e!614144 e!614139)))

(declare-fun res!431000 () Bool)

(assert (=> b!948099 (= res!431000 (matchRSpec!410 (regOne!5731 lt!344119) s!10566))))

(assert (=> b!948099 (=> res!431000 e!614139)))

(assert (= (and d!283432 c!154354) b!948091))

(assert (= (and d!283432 (not c!154354)) b!948092))

(assert (= (and b!948092 res!430999) b!948096))

(assert (= (and b!948096 c!154353) b!948097))

(assert (= (and b!948096 (not c!154353)) b!948093))

(assert (= (and b!948093 c!154352) b!948099))

(assert (= (and b!948093 (not c!154352)) b!948089))

(assert (= (and b!948099 (not res!431000)) b!948090))

(assert (= (and b!948089 c!154355) b!948094))

(assert (= (and b!948089 (not c!154355)) b!948095))

(assert (= (and b!948094 (not res!431001)) b!948098))

(assert (= (or b!948098 b!948095) bm!59341))

(assert (= (or b!948091 b!948094) bm!59340))

(declare-fun m!1162487 () Bool)

(assert (=> b!948090 m!1162487))

(assert (=> bm!59340 m!1162073))

(declare-fun m!1162489 () Bool)

(assert (=> bm!59341 m!1162489))

(declare-fun m!1162491 () Bool)

(assert (=> b!948099 m!1162491))

(assert (=> b!947464 d!283432))

(declare-fun d!283434 () Bool)

(declare-fun choose!5900 (Int) Bool)

(assert (=> d!283434 (= (Exists!360 lambda!32418) (choose!5900 lambda!32418))))

(declare-fun bs!239761 () Bool)

(assert (= bs!239761 d!283434))

(declare-fun m!1162493 () Bool)

(assert (=> bs!239761 m!1162493))

(assert (=> b!947464 d!283434))

(declare-fun d!283436 () Bool)

(assert (=> d!283436 (= (Exists!360 lambda!32417) (choose!5900 lambda!32417))))

(declare-fun bs!239762 () Bool)

(assert (= bs!239762 d!283436))

(declare-fun m!1162495 () Bool)

(assert (=> bs!239762 m!1162495))

(assert (=> b!947464 d!283436))

(declare-fun d!283438 () Bool)

(assert (=> d!283438 (= (matchR!1147 lt!344119 s!10566) (matchRSpec!410 lt!344119 s!10566))))

(declare-fun lt!344202 () Unit!14859)

(declare-fun choose!5901 (Regex!2609 List!9839) Unit!14859)

(assert (=> d!283438 (= lt!344202 (choose!5901 lt!344119 s!10566))))

(assert (=> d!283438 (validRegex!1078 lt!344119)))

(assert (=> d!283438 (= (mainMatchTheorem!410 lt!344119 s!10566) lt!344202)))

(declare-fun bs!239763 () Bool)

(assert (= bs!239763 d!283438))

(assert (=> bs!239763 m!1162103))

(assert (=> bs!239763 m!1162079))

(declare-fun m!1162497 () Bool)

(assert (=> bs!239763 m!1162497))

(assert (=> bs!239763 m!1162217))

(assert (=> b!947464 d!283438))

(declare-fun d!283440 () Bool)

(declare-fun isEmpty!6088 (Option!2200) Bool)

(assert (=> d!283440 (= (isDefined!1842 lt!344107) (not (isEmpty!6088 lt!344107)))))

(declare-fun bs!239764 () Bool)

(assert (= bs!239764 d!283440))

(declare-fun m!1162499 () Bool)

(assert (=> bs!239764 m!1162499))

(assert (=> b!947464 d!283440))

(declare-fun b!948118 () Bool)

(declare-fun lt!344210 () Unit!14859)

(declare-fun lt!344211 () Unit!14859)

(assert (=> b!948118 (= lt!344210 lt!344211)))

(assert (=> b!948118 (= (++!2623 (++!2623 Nil!9823 (Cons!9823 (h!15224 s!10566) Nil!9823)) (t!100885 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!232 (List!9839 C!5788 List!9839 List!9839) Unit!14859)

(assert (=> b!948118 (= lt!344211 (lemmaMoveElementToOtherListKeepsConcatEq!232 Nil!9823 (h!15224 s!10566) (t!100885 s!10566) s!10566))))

(declare-fun e!614158 () Option!2200)

(assert (=> b!948118 (= e!614158 (findConcatSeparation!306 lt!344114 lt!344119 (++!2623 Nil!9823 (Cons!9823 (h!15224 s!10566) Nil!9823)) (t!100885 s!10566) s!10566))))

(declare-fun d!283442 () Bool)

(declare-fun e!614159 () Bool)

(assert (=> d!283442 e!614159))

(declare-fun res!431016 () Bool)

(assert (=> d!283442 (=> res!431016 e!614159)))

(declare-fun e!614156 () Bool)

(assert (=> d!283442 (= res!431016 e!614156)))

(declare-fun res!431014 () Bool)

(assert (=> d!283442 (=> (not res!431014) (not e!614156))))

(declare-fun lt!344209 () Option!2200)

(assert (=> d!283442 (= res!431014 (isDefined!1842 lt!344209))))

(declare-fun e!614160 () Option!2200)

(assert (=> d!283442 (= lt!344209 e!614160)))

(declare-fun c!154360 () Bool)

(declare-fun e!614157 () Bool)

(assert (=> d!283442 (= c!154360 e!614157)))

(declare-fun res!431013 () Bool)

(assert (=> d!283442 (=> (not res!431013) (not e!614157))))

(assert (=> d!283442 (= res!431013 (matchR!1147 lt!344114 Nil!9823))))

(assert (=> d!283442 (validRegex!1078 lt!344114)))

(assert (=> d!283442 (= (findConcatSeparation!306 lt!344114 lt!344119 Nil!9823 s!10566 s!10566) lt!344209)))

(declare-fun b!948119 () Bool)

(assert (=> b!948119 (= e!614159 (not (isDefined!1842 lt!344209)))))

(declare-fun b!948120 () Bool)

(assert (=> b!948120 (= e!614158 None!2199)))

(declare-fun b!948121 () Bool)

(assert (=> b!948121 (= e!614157 (matchR!1147 lt!344119 s!10566))))

(declare-fun b!948122 () Bool)

(assert (=> b!948122 (= e!614160 (Some!2199 (tuple2!11117 Nil!9823 s!10566)))))

(declare-fun b!948123 () Bool)

(declare-fun res!431012 () Bool)

(assert (=> b!948123 (=> (not res!431012) (not e!614156))))

(assert (=> b!948123 (= res!431012 (matchR!1147 lt!344119 (_2!6384 (get!3295 lt!344209))))))

(declare-fun b!948124 () Bool)

(assert (=> b!948124 (= e!614156 (= (++!2623 (_1!6384 (get!3295 lt!344209)) (_2!6384 (get!3295 lt!344209))) s!10566))))

(declare-fun b!948125 () Bool)

(declare-fun res!431015 () Bool)

(assert (=> b!948125 (=> (not res!431015) (not e!614156))))

(assert (=> b!948125 (= res!431015 (matchR!1147 lt!344114 (_1!6384 (get!3295 lt!344209))))))

(declare-fun b!948126 () Bool)

(assert (=> b!948126 (= e!614160 e!614158)))

(declare-fun c!154361 () Bool)

(assert (=> b!948126 (= c!154361 ((_ is Nil!9823) s!10566))))

(assert (= (and d!283442 res!431013) b!948121))

(assert (= (and d!283442 c!154360) b!948122))

(assert (= (and d!283442 (not c!154360)) b!948126))

(assert (= (and b!948126 c!154361) b!948120))

(assert (= (and b!948126 (not c!154361)) b!948118))

(assert (= (and d!283442 res!431014) b!948125))

(assert (= (and b!948125 res!431015) b!948123))

(assert (= (and b!948123 res!431012) b!948124))

(assert (= (and d!283442 (not res!431016)) b!948119))

(declare-fun m!1162501 () Bool)

(assert (=> b!948125 m!1162501))

(declare-fun m!1162503 () Bool)

(assert (=> b!948125 m!1162503))

(declare-fun m!1162505 () Bool)

(assert (=> b!948118 m!1162505))

(assert (=> b!948118 m!1162505))

(declare-fun m!1162507 () Bool)

(assert (=> b!948118 m!1162507))

(declare-fun m!1162509 () Bool)

(assert (=> b!948118 m!1162509))

(assert (=> b!948118 m!1162505))

(declare-fun m!1162511 () Bool)

(assert (=> b!948118 m!1162511))

(assert (=> b!948124 m!1162501))

(declare-fun m!1162513 () Bool)

(assert (=> b!948124 m!1162513))

(declare-fun m!1162515 () Bool)

(assert (=> d!283442 m!1162515))

(declare-fun m!1162517 () Bool)

(assert (=> d!283442 m!1162517))

(assert (=> d!283442 m!1162425))

(assert (=> b!948123 m!1162501))

(declare-fun m!1162519 () Bool)

(assert (=> b!948123 m!1162519))

(assert (=> b!948119 m!1162515))

(assert (=> b!948121 m!1162103))

(assert (=> b!947464 d!283442))

(declare-fun b!948127 () Bool)

(declare-fun e!614161 () Bool)

(assert (=> b!948127 (= e!614161 (nullable!767 lt!344109))))

(declare-fun d!283444 () Bool)

(declare-fun e!614163 () Bool)

(assert (=> d!283444 e!614163))

(declare-fun c!154363 () Bool)

(assert (=> d!283444 (= c!154363 ((_ is EmptyExpr!2609) lt!344109))))

(declare-fun lt!344212 () Bool)

(assert (=> d!283444 (= lt!344212 e!614161)))

(declare-fun c!154362 () Bool)

(assert (=> d!283444 (= c!154362 (isEmpty!6086 (_2!6384 lt!344116)))))

(assert (=> d!283444 (validRegex!1078 lt!344109)))

(assert (=> d!283444 (= (matchR!1147 lt!344109 (_2!6384 lt!344116)) lt!344212)))

(declare-fun b!948128 () Bool)

(declare-fun res!431018 () Bool)

(declare-fun e!614165 () Bool)

(assert (=> b!948128 (=> (not res!431018) (not e!614165))))

(declare-fun call!59347 () Bool)

(assert (=> b!948128 (= res!431018 (not call!59347))))

(declare-fun b!948129 () Bool)

(declare-fun e!614162 () Bool)

(assert (=> b!948129 (= e!614163 e!614162)))

(declare-fun c!154364 () Bool)

(assert (=> b!948129 (= c!154364 ((_ is EmptyLang!2609) lt!344109))))

(declare-fun bm!59342 () Bool)

(assert (=> bm!59342 (= call!59347 (isEmpty!6086 (_2!6384 lt!344116)))))

(declare-fun b!948130 () Bool)

(assert (=> b!948130 (= e!614165 (= (head!1729 (_2!6384 lt!344116)) (c!154204 lt!344109)))))

(declare-fun b!948131 () Bool)

(declare-fun e!614164 () Bool)

(declare-fun e!614167 () Bool)

(assert (=> b!948131 (= e!614164 e!614167)))

(declare-fun res!431022 () Bool)

(assert (=> b!948131 (=> res!431022 e!614167)))

(assert (=> b!948131 (= res!431022 call!59347)))

(declare-fun b!948132 () Bool)

(declare-fun res!431020 () Bool)

(assert (=> b!948132 (=> (not res!431020) (not e!614165))))

(assert (=> b!948132 (= res!431020 (isEmpty!6086 (tail!1291 (_2!6384 lt!344116))))))

(declare-fun b!948133 () Bool)

(declare-fun e!614166 () Bool)

(assert (=> b!948133 (= e!614166 e!614164)))

(declare-fun res!431017 () Bool)

(assert (=> b!948133 (=> (not res!431017) (not e!614164))))

(assert (=> b!948133 (= res!431017 (not lt!344212))))

(declare-fun b!948134 () Bool)

(assert (=> b!948134 (= e!614161 (matchR!1147 (derivativeStep!576 lt!344109 (head!1729 (_2!6384 lt!344116))) (tail!1291 (_2!6384 lt!344116))))))

(declare-fun b!948135 () Bool)

(declare-fun res!431019 () Bool)

(assert (=> b!948135 (=> res!431019 e!614167)))

(assert (=> b!948135 (= res!431019 (not (isEmpty!6086 (tail!1291 (_2!6384 lt!344116)))))))

(declare-fun b!948136 () Bool)

(declare-fun res!431023 () Bool)

(assert (=> b!948136 (=> res!431023 e!614166)))

(assert (=> b!948136 (= res!431023 (not ((_ is ElementMatch!2609) lt!344109)))))

(assert (=> b!948136 (= e!614162 e!614166)))

(declare-fun b!948137 () Bool)

(declare-fun res!431024 () Bool)

(assert (=> b!948137 (=> res!431024 e!614166)))

(assert (=> b!948137 (= res!431024 e!614165)))

(declare-fun res!431021 () Bool)

(assert (=> b!948137 (=> (not res!431021) (not e!614165))))

(assert (=> b!948137 (= res!431021 lt!344212)))

(declare-fun b!948138 () Bool)

(assert (=> b!948138 (= e!614162 (not lt!344212))))

(declare-fun b!948139 () Bool)

(assert (=> b!948139 (= e!614167 (not (= (head!1729 (_2!6384 lt!344116)) (c!154204 lt!344109))))))

(declare-fun b!948140 () Bool)

(assert (=> b!948140 (= e!614163 (= lt!344212 call!59347))))

(assert (= (and d!283444 c!154362) b!948127))

(assert (= (and d!283444 (not c!154362)) b!948134))

(assert (= (and d!283444 c!154363) b!948140))

(assert (= (and d!283444 (not c!154363)) b!948129))

(assert (= (and b!948129 c!154364) b!948138))

(assert (= (and b!948129 (not c!154364)) b!948136))

(assert (= (and b!948136 (not res!431023)) b!948137))

(assert (= (and b!948137 res!431021) b!948128))

(assert (= (and b!948128 res!431018) b!948132))

(assert (= (and b!948132 res!431020) b!948130))

(assert (= (and b!948137 (not res!431024)) b!948133))

(assert (= (and b!948133 res!431017) b!948131))

(assert (= (and b!948131 (not res!431022)) b!948135))

(assert (= (and b!948135 (not res!431019)) b!948139))

(assert (= (or b!948140 b!948128 b!948131) bm!59342))

(assert (=> bm!59342 m!1162203))

(assert (=> b!948135 m!1162205))

(assert (=> b!948135 m!1162205))

(assert (=> b!948135 m!1162207))

(assert (=> b!948134 m!1162209))

(assert (=> b!948134 m!1162209))

(declare-fun m!1162521 () Bool)

(assert (=> b!948134 m!1162521))

(assert (=> b!948134 m!1162205))

(assert (=> b!948134 m!1162521))

(assert (=> b!948134 m!1162205))

(declare-fun m!1162523 () Bool)

(assert (=> b!948134 m!1162523))

(assert (=> b!948130 m!1162209))

(assert (=> b!948132 m!1162205))

(assert (=> b!948132 m!1162205))

(assert (=> b!948132 m!1162207))

(declare-fun m!1162525 () Bool)

(assert (=> b!948127 m!1162525))

(assert (=> d!283444 m!1162203))

(declare-fun m!1162527 () Bool)

(assert (=> d!283444 m!1162527))

(assert (=> b!948139 m!1162209))

(assert (=> b!947475 d!283444))

(declare-fun b!948141 () Bool)

(declare-fun e!614168 () Bool)

(assert (=> b!948141 (= e!614168 (nullable!767 lt!344110))))

(declare-fun d!283446 () Bool)

(declare-fun e!614170 () Bool)

(assert (=> d!283446 e!614170))

(declare-fun c!154366 () Bool)

(assert (=> d!283446 (= c!154366 ((_ is EmptyExpr!2609) lt!344110))))

(declare-fun lt!344213 () Bool)

(assert (=> d!283446 (= lt!344213 e!614168)))

(declare-fun c!154365 () Bool)

(assert (=> d!283446 (= c!154365 (isEmpty!6086 (_2!6384 lt!344116)))))

(assert (=> d!283446 (validRegex!1078 lt!344110)))

(assert (=> d!283446 (= (matchR!1147 lt!344110 (_2!6384 lt!344116)) lt!344213)))

(declare-fun b!948142 () Bool)

(declare-fun res!431026 () Bool)

(declare-fun e!614172 () Bool)

(assert (=> b!948142 (=> (not res!431026) (not e!614172))))

(declare-fun call!59348 () Bool)

(assert (=> b!948142 (= res!431026 (not call!59348))))

(declare-fun b!948143 () Bool)

(declare-fun e!614169 () Bool)

(assert (=> b!948143 (= e!614170 e!614169)))

(declare-fun c!154367 () Bool)

(assert (=> b!948143 (= c!154367 ((_ is EmptyLang!2609) lt!344110))))

(declare-fun bm!59343 () Bool)

(assert (=> bm!59343 (= call!59348 (isEmpty!6086 (_2!6384 lt!344116)))))

(declare-fun b!948144 () Bool)

(assert (=> b!948144 (= e!614172 (= (head!1729 (_2!6384 lt!344116)) (c!154204 lt!344110)))))

(declare-fun b!948145 () Bool)

(declare-fun e!614171 () Bool)

(declare-fun e!614174 () Bool)

(assert (=> b!948145 (= e!614171 e!614174)))

(declare-fun res!431030 () Bool)

(assert (=> b!948145 (=> res!431030 e!614174)))

(assert (=> b!948145 (= res!431030 call!59348)))

(declare-fun b!948146 () Bool)

(declare-fun res!431028 () Bool)

(assert (=> b!948146 (=> (not res!431028) (not e!614172))))

(assert (=> b!948146 (= res!431028 (isEmpty!6086 (tail!1291 (_2!6384 lt!344116))))))

(declare-fun b!948147 () Bool)

(declare-fun e!614173 () Bool)

(assert (=> b!948147 (= e!614173 e!614171)))

(declare-fun res!431025 () Bool)

(assert (=> b!948147 (=> (not res!431025) (not e!614171))))

(assert (=> b!948147 (= res!431025 (not lt!344213))))

(declare-fun b!948148 () Bool)

(assert (=> b!948148 (= e!614168 (matchR!1147 (derivativeStep!576 lt!344110 (head!1729 (_2!6384 lt!344116))) (tail!1291 (_2!6384 lt!344116))))))

(declare-fun b!948149 () Bool)

(declare-fun res!431027 () Bool)

(assert (=> b!948149 (=> res!431027 e!614174)))

(assert (=> b!948149 (= res!431027 (not (isEmpty!6086 (tail!1291 (_2!6384 lt!344116)))))))

(declare-fun b!948150 () Bool)

(declare-fun res!431031 () Bool)

(assert (=> b!948150 (=> res!431031 e!614173)))

(assert (=> b!948150 (= res!431031 (not ((_ is ElementMatch!2609) lt!344110)))))

(assert (=> b!948150 (= e!614169 e!614173)))

(declare-fun b!948151 () Bool)

(declare-fun res!431032 () Bool)

(assert (=> b!948151 (=> res!431032 e!614173)))

(assert (=> b!948151 (= res!431032 e!614172)))

(declare-fun res!431029 () Bool)

(assert (=> b!948151 (=> (not res!431029) (not e!614172))))

(assert (=> b!948151 (= res!431029 lt!344213)))

(declare-fun b!948152 () Bool)

(assert (=> b!948152 (= e!614169 (not lt!344213))))

(declare-fun b!948153 () Bool)

(assert (=> b!948153 (= e!614174 (not (= (head!1729 (_2!6384 lt!344116)) (c!154204 lt!344110))))))

(declare-fun b!948154 () Bool)

(assert (=> b!948154 (= e!614170 (= lt!344213 call!59348))))

(assert (= (and d!283446 c!154365) b!948141))

(assert (= (and d!283446 (not c!154365)) b!948148))

(assert (= (and d!283446 c!154366) b!948154))

(assert (= (and d!283446 (not c!154366)) b!948143))

(assert (= (and b!948143 c!154367) b!948152))

(assert (= (and b!948143 (not c!154367)) b!948150))

(assert (= (and b!948150 (not res!431031)) b!948151))

(assert (= (and b!948151 res!431029) b!948142))

(assert (= (and b!948142 res!431026) b!948146))

(assert (= (and b!948146 res!431028) b!948144))

(assert (= (and b!948151 (not res!431032)) b!948147))

(assert (= (and b!948147 res!431025) b!948145))

(assert (= (and b!948145 (not res!431030)) b!948149))

(assert (= (and b!948149 (not res!431027)) b!948153))

(assert (= (or b!948154 b!948142 b!948145) bm!59343))

(assert (=> bm!59343 m!1162203))

(assert (=> b!948149 m!1162205))

(assert (=> b!948149 m!1162205))

(assert (=> b!948149 m!1162207))

(assert (=> b!948148 m!1162209))

(assert (=> b!948148 m!1162209))

(declare-fun m!1162529 () Bool)

(assert (=> b!948148 m!1162529))

(assert (=> b!948148 m!1162205))

(assert (=> b!948148 m!1162529))

(assert (=> b!948148 m!1162205))

(declare-fun m!1162531 () Bool)

(assert (=> b!948148 m!1162531))

(assert (=> b!948144 m!1162209))

(assert (=> b!948146 m!1162205))

(assert (=> b!948146 m!1162205))

(assert (=> b!948146 m!1162207))

(assert (=> b!948141 m!1162231))

(assert (=> d!283446 m!1162203))

(assert (=> d!283446 m!1162137))

(assert (=> b!948153 m!1162209))

(assert (=> b!947475 d!283446))

(declare-fun d!283448 () Bool)

(declare-fun lt!344216 () Int)

(assert (=> d!283448 (>= lt!344216 0)))

(declare-fun e!614177 () Int)

(assert (=> d!283448 (= lt!344216 e!614177)))

(declare-fun c!154370 () Bool)

(assert (=> d!283448 (= c!154370 ((_ is Nil!9823) s!10566))))

(assert (=> d!283448 (= (size!7907 s!10566) lt!344216)))

(declare-fun b!948159 () Bool)

(assert (=> b!948159 (= e!614177 0)))

(declare-fun b!948160 () Bool)

(assert (=> b!948160 (= e!614177 (+ 1 (size!7907 (t!100885 s!10566))))))

(assert (= (and d!283448 c!154370) b!948159))

(assert (= (and d!283448 (not c!154370)) b!948160))

(declare-fun m!1162533 () Bool)

(assert (=> b!948160 m!1162533))

(assert (=> b!947475 d!283448))

(declare-fun d!283450 () Bool)

(assert (=> d!283450 (= (matchR!1147 (reg!2938 r!15766) (_1!6384 lt!344116)) (matchR!1147 (removeUselessConcat!278 (reg!2938 r!15766)) (_1!6384 lt!344116)))))

(declare-fun lt!344219 () Unit!14859)

(declare-fun choose!5902 (Regex!2609 List!9839) Unit!14859)

(assert (=> d!283450 (= lt!344219 (choose!5902 (reg!2938 r!15766) (_1!6384 lt!344116)))))

(assert (=> d!283450 (validRegex!1078 (reg!2938 r!15766))))

(assert (=> d!283450 (= (lemmaRemoveUselessConcatSound!144 (reg!2938 r!15766) (_1!6384 lt!344116)) lt!344219)))

(declare-fun bs!239765 () Bool)

(assert (= bs!239765 d!283450))

(declare-fun m!1162535 () Bool)

(assert (=> bs!239765 m!1162535))

(assert (=> bs!239765 m!1162093))

(assert (=> bs!239765 m!1162097))

(declare-fun m!1162537 () Bool)

(assert (=> bs!239765 m!1162537))

(declare-fun m!1162539 () Bool)

(assert (=> bs!239765 m!1162539))

(assert (=> bs!239765 m!1162097))

(assert (=> b!947475 d!283450))

(declare-fun d!283452 () Bool)

(assert (=> d!283452 (= (matchR!1147 lt!344110 (_2!6384 lt!344116)) (matchR!1147 (removeUselessConcat!278 lt!344110) (_2!6384 lt!344116)))))

(declare-fun lt!344220 () Unit!14859)

(assert (=> d!283452 (= lt!344220 (choose!5902 lt!344110 (_2!6384 lt!344116)))))

(assert (=> d!283452 (validRegex!1078 lt!344110)))

(assert (=> d!283452 (= (lemmaRemoveUselessConcatSound!144 lt!344110 (_2!6384 lt!344116)) lt!344220)))

(declare-fun bs!239766 () Bool)

(assert (= bs!239766 d!283452))

(declare-fun m!1162541 () Bool)

(assert (=> bs!239766 m!1162541))

(assert (=> bs!239766 m!1162091))

(assert (=> bs!239766 m!1162089))

(declare-fun m!1162543 () Bool)

(assert (=> bs!239766 m!1162543))

(assert (=> bs!239766 m!1162137))

(assert (=> bs!239766 m!1162089))

(assert (=> b!947475 d!283452))

(declare-fun bm!59344 () Bool)

(declare-fun call!59350 () Regex!2609)

(declare-fun call!59351 () Regex!2609)

(assert (=> bm!59344 (= call!59350 call!59351)))

(declare-fun b!948161 () Bool)

(declare-fun e!614183 () Bool)

(declare-fun lt!344221 () Regex!2609)

(assert (=> b!948161 (= e!614183 (= (nullable!767 lt!344221) (nullable!767 lt!344110)))))

(declare-fun d!283454 () Bool)

(assert (=> d!283454 e!614183))

(declare-fun res!431033 () Bool)

(assert (=> d!283454 (=> (not res!431033) (not e!614183))))

(assert (=> d!283454 (= res!431033 (validRegex!1078 lt!344221))))

(declare-fun e!614182 () Regex!2609)

(assert (=> d!283454 (= lt!344221 e!614182)))

(declare-fun c!154373 () Bool)

(assert (=> d!283454 (= c!154373 (and ((_ is Concat!4442) lt!344110) ((_ is EmptyExpr!2609) (regOne!5730 lt!344110))))))

(assert (=> d!283454 (validRegex!1078 lt!344110)))

(assert (=> d!283454 (= (removeUselessConcat!278 lt!344110) lt!344221)))

(declare-fun b!948162 () Bool)

(declare-fun e!614178 () Regex!2609)

(declare-fun e!614179 () Regex!2609)

(assert (=> b!948162 (= e!614178 e!614179)))

(declare-fun c!154372 () Bool)

(assert (=> b!948162 (= c!154372 ((_ is Union!2609) lt!344110))))

(declare-fun bm!59345 () Bool)

(declare-fun call!59353 () Regex!2609)

(declare-fun call!59349 () Regex!2609)

(assert (=> bm!59345 (= call!59353 call!59349)))

(declare-fun bm!59346 () Bool)

(declare-fun call!59352 () Regex!2609)

(assert (=> bm!59346 (= call!59349 call!59352)))

(declare-fun b!948163 () Bool)

(declare-fun c!154374 () Bool)

(assert (=> b!948163 (= c!154374 ((_ is Star!2609) lt!344110))))

(declare-fun e!614181 () Regex!2609)

(assert (=> b!948163 (= e!614179 e!614181)))

(declare-fun b!948164 () Bool)

(declare-fun c!154375 () Bool)

(assert (=> b!948164 (= c!154375 ((_ is Concat!4442) lt!344110))))

(declare-fun e!614180 () Regex!2609)

(assert (=> b!948164 (= e!614180 e!614178)))

(declare-fun c!154371 () Bool)

(declare-fun bm!59347 () Bool)

(assert (=> bm!59347 (= call!59352 (removeUselessConcat!278 (ite c!154373 (regTwo!5730 lt!344110) (ite c!154371 (regOne!5730 lt!344110) (ite c!154375 (regTwo!5730 lt!344110) (regOne!5731 lt!344110))))))))

(declare-fun b!948165 () Bool)

(assert (=> b!948165 (= e!614180 call!59349)))

(declare-fun bm!59348 () Bool)

(assert (=> bm!59348 (= call!59351 (removeUselessConcat!278 (ite c!154375 (regOne!5730 lt!344110) (ite c!154372 (regTwo!5731 lt!344110) (reg!2938 lt!344110)))))))

(declare-fun b!948166 () Bool)

(assert (=> b!948166 (= e!614181 lt!344110)))

(declare-fun b!948167 () Bool)

(assert (=> b!948167 (= e!614179 (Union!2609 call!59353 call!59350))))

(declare-fun b!948168 () Bool)

(assert (=> b!948168 (= e!614182 e!614180)))

(assert (=> b!948168 (= c!154371 (and ((_ is Concat!4442) lt!344110) ((_ is EmptyExpr!2609) (regTwo!5730 lt!344110))))))

(declare-fun b!948169 () Bool)

(assert (=> b!948169 (= e!614178 (Concat!4442 call!59351 call!59353))))

(declare-fun b!948170 () Bool)

(assert (=> b!948170 (= e!614181 (Star!2609 call!59350))))

(declare-fun b!948171 () Bool)

(assert (=> b!948171 (= e!614182 call!59352)))

(assert (= (and d!283454 c!154373) b!948171))

(assert (= (and d!283454 (not c!154373)) b!948168))

(assert (= (and b!948168 c!154371) b!948165))

(assert (= (and b!948168 (not c!154371)) b!948164))

(assert (= (and b!948164 c!154375) b!948169))

(assert (= (and b!948164 (not c!154375)) b!948162))

(assert (= (and b!948162 c!154372) b!948167))

(assert (= (and b!948162 (not c!154372)) b!948163))

(assert (= (and b!948163 c!154374) b!948170))

(assert (= (and b!948163 (not c!154374)) b!948166))

(assert (= (or b!948167 b!948170) bm!59344))

(assert (= (or b!948169 b!948167) bm!59345))

(assert (= (or b!948169 bm!59344) bm!59348))

(assert (= (or b!948165 bm!59345) bm!59346))

(assert (= (or b!948171 bm!59346) bm!59347))

(assert (= (and d!283454 res!431033) b!948161))

(declare-fun m!1162545 () Bool)

(assert (=> b!948161 m!1162545))

(assert (=> b!948161 m!1162231))

(declare-fun m!1162547 () Bool)

(assert (=> d!283454 m!1162547))

(assert (=> d!283454 m!1162137))

(declare-fun m!1162549 () Bool)

(assert (=> bm!59347 m!1162549))

(declare-fun m!1162551 () Bool)

(assert (=> bm!59348 m!1162551))

(assert (=> b!947475 d!283454))

(declare-fun b!948172 () Bool)

(declare-fun e!614184 () Bool)

(assert (=> b!948172 (= e!614184 (nullable!767 (reg!2938 r!15766)))))

(declare-fun d!283456 () Bool)

(declare-fun e!614186 () Bool)

(assert (=> d!283456 e!614186))

(declare-fun c!154377 () Bool)

(assert (=> d!283456 (= c!154377 ((_ is EmptyExpr!2609) (reg!2938 r!15766)))))

(declare-fun lt!344222 () Bool)

(assert (=> d!283456 (= lt!344222 e!614184)))

(declare-fun c!154376 () Bool)

(assert (=> d!283456 (= c!154376 (isEmpty!6086 (_1!6384 lt!344116)))))

(assert (=> d!283456 (validRegex!1078 (reg!2938 r!15766))))

(assert (=> d!283456 (= (matchR!1147 (reg!2938 r!15766) (_1!6384 lt!344116)) lt!344222)))

(declare-fun b!948173 () Bool)

(declare-fun res!431035 () Bool)

(declare-fun e!614188 () Bool)

(assert (=> b!948173 (=> (not res!431035) (not e!614188))))

(declare-fun call!59354 () Bool)

(assert (=> b!948173 (= res!431035 (not call!59354))))

(declare-fun b!948174 () Bool)

(declare-fun e!614185 () Bool)

(assert (=> b!948174 (= e!614186 e!614185)))

(declare-fun c!154378 () Bool)

(assert (=> b!948174 (= c!154378 ((_ is EmptyLang!2609) (reg!2938 r!15766)))))

(declare-fun bm!59349 () Bool)

(assert (=> bm!59349 (= call!59354 (isEmpty!6086 (_1!6384 lt!344116)))))

(declare-fun b!948175 () Bool)

(assert (=> b!948175 (= e!614188 (= (head!1729 (_1!6384 lt!344116)) (c!154204 (reg!2938 r!15766))))))

(declare-fun b!948176 () Bool)

(declare-fun e!614187 () Bool)

(declare-fun e!614190 () Bool)

(assert (=> b!948176 (= e!614187 e!614190)))

(declare-fun res!431039 () Bool)

(assert (=> b!948176 (=> res!431039 e!614190)))

(assert (=> b!948176 (= res!431039 call!59354)))

(declare-fun b!948177 () Bool)

(declare-fun res!431037 () Bool)

(assert (=> b!948177 (=> (not res!431037) (not e!614188))))

(assert (=> b!948177 (= res!431037 (isEmpty!6086 (tail!1291 (_1!6384 lt!344116))))))

(declare-fun b!948178 () Bool)

(declare-fun e!614189 () Bool)

(assert (=> b!948178 (= e!614189 e!614187)))

(declare-fun res!431034 () Bool)

(assert (=> b!948178 (=> (not res!431034) (not e!614187))))

(assert (=> b!948178 (= res!431034 (not lt!344222))))

(declare-fun b!948179 () Bool)

(assert (=> b!948179 (= e!614184 (matchR!1147 (derivativeStep!576 (reg!2938 r!15766) (head!1729 (_1!6384 lt!344116))) (tail!1291 (_1!6384 lt!344116))))))

(declare-fun b!948180 () Bool)

(declare-fun res!431036 () Bool)

(assert (=> b!948180 (=> res!431036 e!614190)))

(assert (=> b!948180 (= res!431036 (not (isEmpty!6086 (tail!1291 (_1!6384 lt!344116)))))))

(declare-fun b!948181 () Bool)

(declare-fun res!431040 () Bool)

(assert (=> b!948181 (=> res!431040 e!614189)))

(assert (=> b!948181 (= res!431040 (not ((_ is ElementMatch!2609) (reg!2938 r!15766))))))

(assert (=> b!948181 (= e!614185 e!614189)))

(declare-fun b!948182 () Bool)

(declare-fun res!431041 () Bool)

(assert (=> b!948182 (=> res!431041 e!614189)))

(assert (=> b!948182 (= res!431041 e!614188)))

(declare-fun res!431038 () Bool)

(assert (=> b!948182 (=> (not res!431038) (not e!614188))))

(assert (=> b!948182 (= res!431038 lt!344222)))

(declare-fun b!948183 () Bool)

(assert (=> b!948183 (= e!614185 (not lt!344222))))

(declare-fun b!948184 () Bool)

(assert (=> b!948184 (= e!614190 (not (= (head!1729 (_1!6384 lt!344116)) (c!154204 (reg!2938 r!15766)))))))

(declare-fun b!948185 () Bool)

(assert (=> b!948185 (= e!614186 (= lt!344222 call!59354))))

(assert (= (and d!283456 c!154376) b!948172))

(assert (= (and d!283456 (not c!154376)) b!948179))

(assert (= (and d!283456 c!154377) b!948185))

(assert (= (and d!283456 (not c!154377)) b!948174))

(assert (= (and b!948174 c!154378) b!948183))

(assert (= (and b!948174 (not c!154378)) b!948181))

(assert (= (and b!948181 (not res!431040)) b!948182))

(assert (= (and b!948182 res!431038) b!948173))

(assert (= (and b!948173 res!431035) b!948177))

(assert (= (and b!948177 res!431037) b!948175))

(assert (= (and b!948182 (not res!431041)) b!948178))

(assert (= (and b!948178 res!431034) b!948176))

(assert (= (and b!948176 (not res!431039)) b!948180))

(assert (= (and b!948180 (not res!431036)) b!948184))

(assert (= (or b!948185 b!948173 b!948176) bm!59349))

(assert (=> bm!59349 m!1162403))

(assert (=> b!948180 m!1162407))

(assert (=> b!948180 m!1162407))

(assert (=> b!948180 m!1162413))

(assert (=> b!948179 m!1162417))

(assert (=> b!948179 m!1162417))

(declare-fun m!1162553 () Bool)

(assert (=> b!948179 m!1162553))

(assert (=> b!948179 m!1162407))

(assert (=> b!948179 m!1162553))

(assert (=> b!948179 m!1162407))

(declare-fun m!1162555 () Bool)

(assert (=> b!948179 m!1162555))

(assert (=> b!948175 m!1162417))

(assert (=> b!948177 m!1162407))

(assert (=> b!948177 m!1162407))

(assert (=> b!948177 m!1162413))

(assert (=> b!948172 m!1162171))

(assert (=> d!283456 m!1162403))

(assert (=> d!283456 m!1162539))

(assert (=> b!948184 m!1162417))

(assert (=> b!947475 d!283456))

(declare-fun d!283458 () Bool)

(declare-fun lt!344223 () Int)

(assert (=> d!283458 (>= lt!344223 0)))

(declare-fun e!614191 () Int)

(assert (=> d!283458 (= lt!344223 e!614191)))

(declare-fun c!154379 () Bool)

(assert (=> d!283458 (= c!154379 ((_ is Nil!9823) (_2!6384 lt!344116)))))

(assert (=> d!283458 (= (size!7907 (_2!6384 lt!344116)) lt!344223)))

(declare-fun b!948186 () Bool)

(assert (=> b!948186 (= e!614191 0)))

(declare-fun b!948187 () Bool)

(assert (=> b!948187 (= e!614191 (+ 1 (size!7907 (t!100885 (_2!6384 lt!344116)))))))

(assert (= (and d!283458 c!154379) b!948186))

(assert (= (and d!283458 (not c!154379)) b!948187))

(declare-fun m!1162557 () Bool)

(assert (=> b!948187 m!1162557))

(assert (=> b!947475 d!283458))

(declare-fun bs!239767 () Bool)

(declare-fun b!948197 () Bool)

(assert (= bs!239767 (and b!948197 b!947471)))

(declare-fun lambda!32454 () Int)

(assert (=> bs!239767 (not (= lambda!32454 lambda!32415))))

(assert (=> bs!239767 (= (= r!15766 lt!344110) (= lambda!32454 lambda!32416))))

(declare-fun bs!239768 () Bool)

(assert (= bs!239768 (and b!948197 b!947464)))

(assert (=> bs!239768 (= (and (= (reg!2938 r!15766) lt!344114) (= r!15766 lt!344119)) (= lambda!32454 lambda!32418))))

(declare-fun bs!239769 () Bool)

(assert (= bs!239769 (and b!948197 b!948095)))

(assert (=> bs!239769 (not (= lambda!32454 lambda!32453))))

(declare-fun bs!239770 () Bool)

(assert (= bs!239770 (and b!948197 d!283406)))

(assert (=> bs!239770 (not (= lambda!32454 lambda!32443))))

(assert (=> bs!239770 (= (and (= (reg!2938 r!15766) lt!344114) (= r!15766 (Star!2609 lt!344114))) (= lambda!32454 lambda!32444))))

(declare-fun bs!239771 () Bool)

(assert (= bs!239771 (and b!948197 d!283430)))

(assert (=> bs!239771 (not (= lambda!32454 lambda!32447))))

(assert (=> bs!239768 (not (= lambda!32454 lambda!32417))))

(declare-fun bs!239772 () Bool)

(assert (= bs!239772 (and b!948197 b!948098)))

(assert (=> bs!239772 (= (and (= (reg!2938 r!15766) (reg!2938 lt!344119)) (= r!15766 lt!344119)) (= lambda!32454 lambda!32452))))

(assert (=> b!948197 true))

(assert (=> b!948197 true))

(declare-fun bs!239773 () Bool)

(declare-fun b!948194 () Bool)

(assert (= bs!239773 (and b!948194 b!947471)))

(declare-fun lambda!32455 () Int)

(assert (=> bs!239773 (not (= lambda!32455 lambda!32415))))

(assert (=> bs!239773 (not (= lambda!32455 lambda!32416))))

(declare-fun bs!239774 () Bool)

(assert (= bs!239774 (and b!948194 b!947464)))

(assert (=> bs!239774 (not (= lambda!32455 lambda!32418))))

(declare-fun bs!239775 () Bool)

(assert (= bs!239775 (and b!948194 b!948095)))

(assert (=> bs!239775 (= (and (= (regOne!5730 r!15766) (regOne!5730 lt!344119)) (= (regTwo!5730 r!15766) (regTwo!5730 lt!344119))) (= lambda!32455 lambda!32453))))

(declare-fun bs!239776 () Bool)

(assert (= bs!239776 (and b!948194 d!283406)))

(assert (=> bs!239776 (not (= lambda!32455 lambda!32443))))

(assert (=> bs!239776 (not (= lambda!32455 lambda!32444))))

(declare-fun bs!239777 () Bool)

(assert (= bs!239777 (and b!948194 d!283430)))

(assert (=> bs!239777 (not (= lambda!32455 lambda!32447))))

(declare-fun bs!239778 () Bool)

(assert (= bs!239778 (and b!948194 b!948197)))

(assert (=> bs!239778 (not (= lambda!32455 lambda!32454))))

(assert (=> bs!239774 (not (= lambda!32455 lambda!32417))))

(declare-fun bs!239779 () Bool)

(assert (= bs!239779 (and b!948194 b!948098)))

(assert (=> bs!239779 (not (= lambda!32455 lambda!32452))))

(assert (=> b!948194 true))

(assert (=> b!948194 true))

(declare-fun b!948188 () Bool)

(declare-fun e!614197 () Bool)

(declare-fun e!614196 () Bool)

(assert (=> b!948188 (= e!614197 e!614196)))

(declare-fun c!154383 () Bool)

(assert (=> b!948188 (= c!154383 ((_ is Star!2609) r!15766))))

(declare-fun b!948189 () Bool)

(declare-fun e!614192 () Bool)

(assert (=> b!948189 (= e!614192 (matchRSpec!410 (regTwo!5731 r!15766) s!10566))))

(declare-fun d!283460 () Bool)

(declare-fun c!154382 () Bool)

(assert (=> d!283460 (= c!154382 ((_ is EmptyExpr!2609) r!15766))))

(declare-fun e!614195 () Bool)

(assert (=> d!283460 (= (matchRSpec!410 r!15766 s!10566) e!614195)))

(declare-fun b!948190 () Bool)

(declare-fun call!59356 () Bool)

(assert (=> b!948190 (= e!614195 call!59356)))

(declare-fun b!948191 () Bool)

(declare-fun e!614193 () Bool)

(assert (=> b!948191 (= e!614195 e!614193)))

(declare-fun res!431042 () Bool)

(assert (=> b!948191 (= res!431042 (not ((_ is EmptyLang!2609) r!15766)))))

(assert (=> b!948191 (=> (not res!431042) (not e!614193))))

(declare-fun b!948192 () Bool)

(declare-fun c!154380 () Bool)

(assert (=> b!948192 (= c!154380 ((_ is Union!2609) r!15766))))

(declare-fun e!614198 () Bool)

(assert (=> b!948192 (= e!614198 e!614197)))

(declare-fun bm!59350 () Bool)

(assert (=> bm!59350 (= call!59356 (isEmpty!6086 s!10566))))

(declare-fun b!948193 () Bool)

(declare-fun res!431044 () Bool)

(declare-fun e!614194 () Bool)

(assert (=> b!948193 (=> res!431044 e!614194)))

(assert (=> b!948193 (= res!431044 call!59356)))

(assert (=> b!948193 (= e!614196 e!614194)))

(declare-fun call!59355 () Bool)

(assert (=> b!948194 (= e!614196 call!59355)))

(declare-fun bm!59351 () Bool)

(assert (=> bm!59351 (= call!59355 (Exists!360 (ite c!154383 lambda!32454 lambda!32455)))))

(declare-fun b!948195 () Bool)

(declare-fun c!154381 () Bool)

(assert (=> b!948195 (= c!154381 ((_ is ElementMatch!2609) r!15766))))

(assert (=> b!948195 (= e!614193 e!614198)))

(declare-fun b!948196 () Bool)

(assert (=> b!948196 (= e!614198 (= s!10566 (Cons!9823 (c!154204 r!15766) Nil!9823)))))

(assert (=> b!948197 (= e!614194 call!59355)))

(declare-fun b!948198 () Bool)

(assert (=> b!948198 (= e!614197 e!614192)))

(declare-fun res!431043 () Bool)

(assert (=> b!948198 (= res!431043 (matchRSpec!410 (regOne!5731 r!15766) s!10566))))

(assert (=> b!948198 (=> res!431043 e!614192)))

(assert (= (and d!283460 c!154382) b!948190))

(assert (= (and d!283460 (not c!154382)) b!948191))

(assert (= (and b!948191 res!431042) b!948195))

(assert (= (and b!948195 c!154381) b!948196))

(assert (= (and b!948195 (not c!154381)) b!948192))

(assert (= (and b!948192 c!154380) b!948198))

(assert (= (and b!948192 (not c!154380)) b!948188))

(assert (= (and b!948198 (not res!431043)) b!948189))

(assert (= (and b!948188 c!154383) b!948193))

(assert (= (and b!948188 (not c!154383)) b!948194))

(assert (= (and b!948193 (not res!431044)) b!948197))

(assert (= (or b!948197 b!948194) bm!59351))

(assert (= (or b!948190 b!948193) bm!59350))

(declare-fun m!1162559 () Bool)

(assert (=> b!948189 m!1162559))

(assert (=> bm!59350 m!1162073))

(declare-fun m!1162561 () Bool)

(assert (=> bm!59351 m!1162561))

(declare-fun m!1162563 () Bool)

(assert (=> b!948198 m!1162563))

(assert (=> b!947465 d!283460))

(declare-fun b!948199 () Bool)

(declare-fun e!614199 () Bool)

(assert (=> b!948199 (= e!614199 (nullable!767 r!15766))))

(declare-fun d!283462 () Bool)

(declare-fun e!614201 () Bool)

(assert (=> d!283462 e!614201))

(declare-fun c!154385 () Bool)

(assert (=> d!283462 (= c!154385 ((_ is EmptyExpr!2609) r!15766))))

(declare-fun lt!344224 () Bool)

(assert (=> d!283462 (= lt!344224 e!614199)))

(declare-fun c!154384 () Bool)

(assert (=> d!283462 (= c!154384 (isEmpty!6086 s!10566))))

(assert (=> d!283462 (validRegex!1078 r!15766)))

(assert (=> d!283462 (= (matchR!1147 r!15766 s!10566) lt!344224)))

(declare-fun b!948200 () Bool)

(declare-fun res!431046 () Bool)

(declare-fun e!614203 () Bool)

(assert (=> b!948200 (=> (not res!431046) (not e!614203))))

(declare-fun call!59357 () Bool)

(assert (=> b!948200 (= res!431046 (not call!59357))))

(declare-fun b!948201 () Bool)

(declare-fun e!614200 () Bool)

(assert (=> b!948201 (= e!614201 e!614200)))

(declare-fun c!154386 () Bool)

(assert (=> b!948201 (= c!154386 ((_ is EmptyLang!2609) r!15766))))

(declare-fun bm!59352 () Bool)

(assert (=> bm!59352 (= call!59357 (isEmpty!6086 s!10566))))

(declare-fun b!948202 () Bool)

(assert (=> b!948202 (= e!614203 (= (head!1729 s!10566) (c!154204 r!15766)))))

(declare-fun b!948203 () Bool)

(declare-fun e!614202 () Bool)

(declare-fun e!614205 () Bool)

(assert (=> b!948203 (= e!614202 e!614205)))

(declare-fun res!431050 () Bool)

(assert (=> b!948203 (=> res!431050 e!614205)))

(assert (=> b!948203 (= res!431050 call!59357)))

(declare-fun b!948204 () Bool)

(declare-fun res!431048 () Bool)

(assert (=> b!948204 (=> (not res!431048) (not e!614203))))

(assert (=> b!948204 (= res!431048 (isEmpty!6086 (tail!1291 s!10566)))))

(declare-fun b!948205 () Bool)

(declare-fun e!614204 () Bool)

(assert (=> b!948205 (= e!614204 e!614202)))

(declare-fun res!431045 () Bool)

(assert (=> b!948205 (=> (not res!431045) (not e!614202))))

(assert (=> b!948205 (= res!431045 (not lt!344224))))

(declare-fun b!948206 () Bool)

(assert (=> b!948206 (= e!614199 (matchR!1147 (derivativeStep!576 r!15766 (head!1729 s!10566)) (tail!1291 s!10566)))))

(declare-fun b!948207 () Bool)

(declare-fun res!431047 () Bool)

(assert (=> b!948207 (=> res!431047 e!614205)))

(assert (=> b!948207 (= res!431047 (not (isEmpty!6086 (tail!1291 s!10566))))))

(declare-fun b!948208 () Bool)

(declare-fun res!431051 () Bool)

(assert (=> b!948208 (=> res!431051 e!614204)))

(assert (=> b!948208 (= res!431051 (not ((_ is ElementMatch!2609) r!15766)))))

(assert (=> b!948208 (= e!614200 e!614204)))

(declare-fun b!948209 () Bool)

(declare-fun res!431052 () Bool)

(assert (=> b!948209 (=> res!431052 e!614204)))

(assert (=> b!948209 (= res!431052 e!614203)))

(declare-fun res!431049 () Bool)

(assert (=> b!948209 (=> (not res!431049) (not e!614203))))

(assert (=> b!948209 (= res!431049 lt!344224)))

(declare-fun b!948210 () Bool)

(assert (=> b!948210 (= e!614200 (not lt!344224))))

(declare-fun b!948211 () Bool)

(assert (=> b!948211 (= e!614205 (not (= (head!1729 s!10566) (c!154204 r!15766))))))

(declare-fun b!948212 () Bool)

(assert (=> b!948212 (= e!614201 (= lt!344224 call!59357))))

(assert (= (and d!283462 c!154384) b!948199))

(assert (= (and d!283462 (not c!154384)) b!948206))

(assert (= (and d!283462 c!154385) b!948212))

(assert (= (and d!283462 (not c!154385)) b!948201))

(assert (= (and b!948201 c!154386) b!948210))

(assert (= (and b!948201 (not c!154386)) b!948208))

(assert (= (and b!948208 (not res!431051)) b!948209))

(assert (= (and b!948209 res!431049) b!948200))

(assert (= (and b!948200 res!431046) b!948204))

(assert (= (and b!948204 res!431048) b!948202))

(assert (= (and b!948209 (not res!431052)) b!948205))

(assert (= (and b!948205 res!431045) b!948203))

(assert (= (and b!948203 (not res!431050)) b!948207))

(assert (= (and b!948207 (not res!431047)) b!948211))

(assert (= (or b!948212 b!948200 b!948203) bm!59352))

(assert (=> bm!59352 m!1162073))

(declare-fun m!1162565 () Bool)

(assert (=> b!948207 m!1162565))

(assert (=> b!948207 m!1162565))

(declare-fun m!1162567 () Bool)

(assert (=> b!948207 m!1162567))

(declare-fun m!1162569 () Bool)

(assert (=> b!948206 m!1162569))

(assert (=> b!948206 m!1162569))

(declare-fun m!1162571 () Bool)

(assert (=> b!948206 m!1162571))

(assert (=> b!948206 m!1162565))

(assert (=> b!948206 m!1162571))

(assert (=> b!948206 m!1162565))

(declare-fun m!1162573 () Bool)

(assert (=> b!948206 m!1162573))

(assert (=> b!948202 m!1162569))

(assert (=> b!948204 m!1162565))

(assert (=> b!948204 m!1162565))

(assert (=> b!948204 m!1162567))

(assert (=> b!948199 m!1162373))

(assert (=> d!283462 m!1162073))

(assert (=> d!283462 m!1162113))

(assert (=> b!948211 m!1162569))

(assert (=> b!947465 d!283462))

(declare-fun d!283464 () Bool)

(assert (=> d!283464 (= (matchR!1147 r!15766 s!10566) (matchRSpec!410 r!15766 s!10566))))

(declare-fun lt!344225 () Unit!14859)

(assert (=> d!283464 (= lt!344225 (choose!5901 r!15766 s!10566))))

(assert (=> d!283464 (validRegex!1078 r!15766)))

(assert (=> d!283464 (= (mainMatchTheorem!410 r!15766 s!10566) lt!344225)))

(declare-fun bs!239780 () Bool)

(assert (= bs!239780 d!283464))

(assert (=> bs!239780 m!1162117))

(assert (=> bs!239780 m!1162115))

(declare-fun m!1162575 () Bool)

(assert (=> bs!239780 m!1162575))

(assert (=> bs!239780 m!1162113))

(assert (=> b!947465 d!283464))

(declare-fun d!283466 () Bool)

(assert (=> d!283466 (= (matchR!1147 (reg!2938 r!15766) (_1!6384 lt!344116)) (matchRSpec!410 (reg!2938 r!15766) (_1!6384 lt!344116)))))

(declare-fun lt!344226 () Unit!14859)

(assert (=> d!283466 (= lt!344226 (choose!5901 (reg!2938 r!15766) (_1!6384 lt!344116)))))

(assert (=> d!283466 (validRegex!1078 (reg!2938 r!15766))))

(assert (=> d!283466 (= (mainMatchTheorem!410 (reg!2938 r!15766) (_1!6384 lt!344116)) lt!344226)))

(declare-fun bs!239781 () Bool)

(assert (= bs!239781 d!283466))

(assert (=> bs!239781 m!1162093))

(declare-fun m!1162577 () Bool)

(assert (=> bs!239781 m!1162577))

(declare-fun m!1162579 () Bool)

(assert (=> bs!239781 m!1162579))

(assert (=> bs!239781 m!1162539))

(assert (=> b!947476 d!283466))

(declare-fun d!283468 () Bool)

(assert (=> d!283468 (= (Exists!360 lambda!32416) (choose!5900 lambda!32416))))

(declare-fun bs!239782 () Bool)

(assert (= bs!239782 d!283468))

(declare-fun m!1162581 () Bool)

(assert (=> bs!239782 m!1162581))

(assert (=> b!947471 d!283468))

(declare-fun bs!239783 () Bool)

(declare-fun d!283470 () Bool)

(assert (= bs!239783 (and d!283470 b!947471)))

(declare-fun lambda!32456 () Int)

(assert (=> bs!239783 (= (= (Star!2609 (reg!2938 r!15766)) lt!344110) (= lambda!32456 lambda!32415))))

(assert (=> bs!239783 (not (= lambda!32456 lambda!32416))))

(declare-fun bs!239784 () Bool)

(assert (= bs!239784 (and d!283470 b!947464)))

(assert (=> bs!239784 (not (= lambda!32456 lambda!32418))))

(declare-fun bs!239785 () Bool)

(assert (= bs!239785 (and d!283470 b!948095)))

(assert (=> bs!239785 (not (= lambda!32456 lambda!32453))))

(declare-fun bs!239786 () Bool)

(assert (= bs!239786 (and d!283470 d!283406)))

(assert (=> bs!239786 (= (and (= (reg!2938 r!15766) lt!344114) (= (Star!2609 (reg!2938 r!15766)) (Star!2609 lt!344114))) (= lambda!32456 lambda!32443))))

(assert (=> bs!239786 (not (= lambda!32456 lambda!32444))))

(declare-fun bs!239787 () Bool)

(assert (= bs!239787 (and d!283470 d!283430)))

(assert (=> bs!239787 (= (and (= (reg!2938 r!15766) lt!344114) (= (Star!2609 (reg!2938 r!15766)) lt!344119)) (= lambda!32456 lambda!32447))))

(declare-fun bs!239788 () Bool)

(assert (= bs!239788 (and d!283470 b!948197)))

(assert (=> bs!239788 (not (= lambda!32456 lambda!32454))))

(assert (=> bs!239784 (= (and (= (reg!2938 r!15766) lt!344114) (= (Star!2609 (reg!2938 r!15766)) lt!344119)) (= lambda!32456 lambda!32417))))

(declare-fun bs!239789 () Bool)

(assert (= bs!239789 (and d!283470 b!948194)))

(assert (=> bs!239789 (not (= lambda!32456 lambda!32455))))

(declare-fun bs!239790 () Bool)

(assert (= bs!239790 (and d!283470 b!948098)))

(assert (=> bs!239790 (not (= lambda!32456 lambda!32452))))

(assert (=> d!283470 true))

(assert (=> d!283470 true))

(declare-fun lambda!32457 () Int)

(assert (=> bs!239783 (not (= lambda!32457 lambda!32415))))

(assert (=> bs!239783 (= (= (Star!2609 (reg!2938 r!15766)) lt!344110) (= lambda!32457 lambda!32416))))

(assert (=> bs!239784 (= (and (= (reg!2938 r!15766) lt!344114) (= (Star!2609 (reg!2938 r!15766)) lt!344119)) (= lambda!32457 lambda!32418))))

(assert (=> bs!239785 (not (= lambda!32457 lambda!32453))))

(assert (=> bs!239786 (not (= lambda!32457 lambda!32443))))

(assert (=> bs!239786 (= (and (= (reg!2938 r!15766) lt!344114) (= (Star!2609 (reg!2938 r!15766)) (Star!2609 lt!344114))) (= lambda!32457 lambda!32444))))

(assert (=> bs!239787 (not (= lambda!32457 lambda!32447))))

(assert (=> bs!239788 (= (= (Star!2609 (reg!2938 r!15766)) r!15766) (= lambda!32457 lambda!32454))))

(assert (=> bs!239784 (not (= lambda!32457 lambda!32417))))

(assert (=> bs!239789 (not (= lambda!32457 lambda!32455))))

(declare-fun bs!239791 () Bool)

(assert (= bs!239791 d!283470))

(assert (=> bs!239791 (not (= lambda!32457 lambda!32456))))

(assert (=> bs!239790 (= (and (= (reg!2938 r!15766) (reg!2938 lt!344119)) (= (Star!2609 (reg!2938 r!15766)) lt!344119)) (= lambda!32457 lambda!32452))))

(assert (=> d!283470 true))

(assert (=> d!283470 true))

(assert (=> d!283470 (= (Exists!360 lambda!32456) (Exists!360 lambda!32457))))

(declare-fun lt!344227 () Unit!14859)

(assert (=> d!283470 (= lt!344227 (choose!5898 (reg!2938 r!15766) s!10566))))

(assert (=> d!283470 (validRegex!1078 (reg!2938 r!15766))))

(assert (=> d!283470 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!104 (reg!2938 r!15766) s!10566) lt!344227)))

(declare-fun m!1162583 () Bool)

(assert (=> bs!239791 m!1162583))

(declare-fun m!1162585 () Bool)

(assert (=> bs!239791 m!1162585))

(declare-fun m!1162587 () Bool)

(assert (=> bs!239791 m!1162587))

(assert (=> bs!239791 m!1162539))

(assert (=> b!947471 d!283470))

(declare-fun bm!59353 () Bool)

(declare-fun call!59359 () Regex!2609)

(declare-fun call!59360 () Regex!2609)

(assert (=> bm!59353 (= call!59359 call!59360)))

(declare-fun b!948213 () Bool)

(declare-fun e!614211 () Bool)

(declare-fun lt!344228 () Regex!2609)

(assert (=> b!948213 (= e!614211 (= (nullable!767 lt!344228) (nullable!767 (reg!2938 r!15766))))))

(declare-fun d!283472 () Bool)

(assert (=> d!283472 e!614211))

(declare-fun res!431053 () Bool)

(assert (=> d!283472 (=> (not res!431053) (not e!614211))))

(assert (=> d!283472 (= res!431053 (validRegex!1078 lt!344228))))

(declare-fun e!614210 () Regex!2609)

(assert (=> d!283472 (= lt!344228 e!614210)))

(declare-fun c!154389 () Bool)

(assert (=> d!283472 (= c!154389 (and ((_ is Concat!4442) (reg!2938 r!15766)) ((_ is EmptyExpr!2609) (regOne!5730 (reg!2938 r!15766)))))))

(assert (=> d!283472 (validRegex!1078 (reg!2938 r!15766))))

(assert (=> d!283472 (= (removeUselessConcat!278 (reg!2938 r!15766)) lt!344228)))

(declare-fun b!948214 () Bool)

(declare-fun e!614206 () Regex!2609)

(declare-fun e!614207 () Regex!2609)

(assert (=> b!948214 (= e!614206 e!614207)))

(declare-fun c!154388 () Bool)

(assert (=> b!948214 (= c!154388 ((_ is Union!2609) (reg!2938 r!15766)))))

(declare-fun bm!59354 () Bool)

(declare-fun call!59362 () Regex!2609)

(declare-fun call!59358 () Regex!2609)

(assert (=> bm!59354 (= call!59362 call!59358)))

(declare-fun bm!59355 () Bool)

(declare-fun call!59361 () Regex!2609)

(assert (=> bm!59355 (= call!59358 call!59361)))

(declare-fun b!948215 () Bool)

(declare-fun c!154390 () Bool)

(assert (=> b!948215 (= c!154390 ((_ is Star!2609) (reg!2938 r!15766)))))

(declare-fun e!614209 () Regex!2609)

(assert (=> b!948215 (= e!614207 e!614209)))

(declare-fun b!948216 () Bool)

(declare-fun c!154391 () Bool)

(assert (=> b!948216 (= c!154391 ((_ is Concat!4442) (reg!2938 r!15766)))))

(declare-fun e!614208 () Regex!2609)

(assert (=> b!948216 (= e!614208 e!614206)))

(declare-fun bm!59356 () Bool)

(declare-fun c!154387 () Bool)

(assert (=> bm!59356 (= call!59361 (removeUselessConcat!278 (ite c!154389 (regTwo!5730 (reg!2938 r!15766)) (ite c!154387 (regOne!5730 (reg!2938 r!15766)) (ite c!154391 (regTwo!5730 (reg!2938 r!15766)) (regOne!5731 (reg!2938 r!15766)))))))))

(declare-fun b!948217 () Bool)

(assert (=> b!948217 (= e!614208 call!59358)))

(declare-fun bm!59357 () Bool)

(assert (=> bm!59357 (= call!59360 (removeUselessConcat!278 (ite c!154391 (regOne!5730 (reg!2938 r!15766)) (ite c!154388 (regTwo!5731 (reg!2938 r!15766)) (reg!2938 (reg!2938 r!15766))))))))

(declare-fun b!948218 () Bool)

(assert (=> b!948218 (= e!614209 (reg!2938 r!15766))))

(declare-fun b!948219 () Bool)

(assert (=> b!948219 (= e!614207 (Union!2609 call!59362 call!59359))))

(declare-fun b!948220 () Bool)

(assert (=> b!948220 (= e!614210 e!614208)))

(assert (=> b!948220 (= c!154387 (and ((_ is Concat!4442) (reg!2938 r!15766)) ((_ is EmptyExpr!2609) (regTwo!5730 (reg!2938 r!15766)))))))

(declare-fun b!948221 () Bool)

(assert (=> b!948221 (= e!614206 (Concat!4442 call!59360 call!59362))))

(declare-fun b!948222 () Bool)

(assert (=> b!948222 (= e!614209 (Star!2609 call!59359))))

(declare-fun b!948223 () Bool)

(assert (=> b!948223 (= e!614210 call!59361)))

(assert (= (and d!283472 c!154389) b!948223))

(assert (= (and d!283472 (not c!154389)) b!948220))

(assert (= (and b!948220 c!154387) b!948217))

(assert (= (and b!948220 (not c!154387)) b!948216))

(assert (= (and b!948216 c!154391) b!948221))

(assert (= (and b!948216 (not c!154391)) b!948214))

(assert (= (and b!948214 c!154388) b!948219))

(assert (= (and b!948214 (not c!154388)) b!948215))

(assert (= (and b!948215 c!154390) b!948222))

(assert (= (and b!948215 (not c!154390)) b!948218))

(assert (= (or b!948219 b!948222) bm!59353))

(assert (= (or b!948221 b!948219) bm!59354))

(assert (= (or b!948221 bm!59353) bm!59357))

(assert (= (or b!948217 bm!59354) bm!59355))

(assert (= (or b!948223 bm!59355) bm!59356))

(assert (= (and d!283472 res!431053) b!948213))

(declare-fun m!1162589 () Bool)

(assert (=> b!948213 m!1162589))

(assert (=> b!948213 m!1162171))

(declare-fun m!1162591 () Bool)

(assert (=> d!283472 m!1162591))

(assert (=> d!283472 m!1162539))

(declare-fun m!1162593 () Bool)

(assert (=> bm!59356 m!1162593))

(declare-fun m!1162595 () Bool)

(assert (=> bm!59357 m!1162595))

(assert (=> b!947471 d!283472))

(declare-fun d!283474 () Bool)

(assert (=> d!283474 (= (isDefined!1842 (findConcatSeparation!306 (reg!2938 r!15766) lt!344110 Nil!9823 s!10566 s!10566)) (not (isEmpty!6088 (findConcatSeparation!306 (reg!2938 r!15766) lt!344110 Nil!9823 s!10566 s!10566))))))

(declare-fun bs!239792 () Bool)

(assert (= bs!239792 d!283474))

(assert (=> bs!239792 m!1162105))

(declare-fun m!1162597 () Bool)

(assert (=> bs!239792 m!1162597))

(assert (=> b!947471 d!283474))

(declare-fun d!283476 () Bool)

(assert (=> d!283476 (= (Exists!360 lambda!32415) (choose!5900 lambda!32415))))

(declare-fun bs!239793 () Bool)

(assert (= bs!239793 d!283476))

(declare-fun m!1162599 () Bool)

(assert (=> bs!239793 m!1162599))

(assert (=> b!947471 d!283476))

(declare-fun b!948224 () Bool)

(declare-fun lt!344230 () Unit!14859)

(declare-fun lt!344231 () Unit!14859)

(assert (=> b!948224 (= lt!344230 lt!344231)))

(assert (=> b!948224 (= (++!2623 (++!2623 Nil!9823 (Cons!9823 (h!15224 s!10566) Nil!9823)) (t!100885 s!10566)) s!10566)))

(assert (=> b!948224 (= lt!344231 (lemmaMoveElementToOtherListKeepsConcatEq!232 Nil!9823 (h!15224 s!10566) (t!100885 s!10566) s!10566))))

(declare-fun e!614214 () Option!2200)

(assert (=> b!948224 (= e!614214 (findConcatSeparation!306 (reg!2938 r!15766) lt!344110 (++!2623 Nil!9823 (Cons!9823 (h!15224 s!10566) Nil!9823)) (t!100885 s!10566) s!10566))))

(declare-fun d!283478 () Bool)

(declare-fun e!614215 () Bool)

(assert (=> d!283478 e!614215))

(declare-fun res!431058 () Bool)

(assert (=> d!283478 (=> res!431058 e!614215)))

(declare-fun e!614212 () Bool)

(assert (=> d!283478 (= res!431058 e!614212)))

(declare-fun res!431056 () Bool)

(assert (=> d!283478 (=> (not res!431056) (not e!614212))))

(declare-fun lt!344229 () Option!2200)

(assert (=> d!283478 (= res!431056 (isDefined!1842 lt!344229))))

(declare-fun e!614216 () Option!2200)

(assert (=> d!283478 (= lt!344229 e!614216)))

(declare-fun c!154392 () Bool)

(declare-fun e!614213 () Bool)

(assert (=> d!283478 (= c!154392 e!614213)))

(declare-fun res!431055 () Bool)

(assert (=> d!283478 (=> (not res!431055) (not e!614213))))

(assert (=> d!283478 (= res!431055 (matchR!1147 (reg!2938 r!15766) Nil!9823))))

(assert (=> d!283478 (validRegex!1078 (reg!2938 r!15766))))

(assert (=> d!283478 (= (findConcatSeparation!306 (reg!2938 r!15766) lt!344110 Nil!9823 s!10566 s!10566) lt!344229)))

(declare-fun b!948225 () Bool)

(assert (=> b!948225 (= e!614215 (not (isDefined!1842 lt!344229)))))

(declare-fun b!948226 () Bool)

(assert (=> b!948226 (= e!614214 None!2199)))

(declare-fun b!948227 () Bool)

(assert (=> b!948227 (= e!614213 (matchR!1147 lt!344110 s!10566))))

(declare-fun b!948228 () Bool)

(assert (=> b!948228 (= e!614216 (Some!2199 (tuple2!11117 Nil!9823 s!10566)))))

(declare-fun b!948229 () Bool)

(declare-fun res!431054 () Bool)

(assert (=> b!948229 (=> (not res!431054) (not e!614212))))

(assert (=> b!948229 (= res!431054 (matchR!1147 lt!344110 (_2!6384 (get!3295 lt!344229))))))

(declare-fun b!948230 () Bool)

(assert (=> b!948230 (= e!614212 (= (++!2623 (_1!6384 (get!3295 lt!344229)) (_2!6384 (get!3295 lt!344229))) s!10566))))

(declare-fun b!948231 () Bool)

(declare-fun res!431057 () Bool)

(assert (=> b!948231 (=> (not res!431057) (not e!614212))))

(assert (=> b!948231 (= res!431057 (matchR!1147 (reg!2938 r!15766) (_1!6384 (get!3295 lt!344229))))))

(declare-fun b!948232 () Bool)

(assert (=> b!948232 (= e!614216 e!614214)))

(declare-fun c!154393 () Bool)

(assert (=> b!948232 (= c!154393 ((_ is Nil!9823) s!10566))))

(assert (= (and d!283478 res!431055) b!948227))

(assert (= (and d!283478 c!154392) b!948228))

(assert (= (and d!283478 (not c!154392)) b!948232))

(assert (= (and b!948232 c!154393) b!948226))

(assert (= (and b!948232 (not c!154393)) b!948224))

(assert (= (and d!283478 res!431056) b!948231))

(assert (= (and b!948231 res!431057) b!948229))

(assert (= (and b!948229 res!431054) b!948230))

(assert (= (and d!283478 (not res!431058)) b!948225))

(declare-fun m!1162601 () Bool)

(assert (=> b!948231 m!1162601))

(declare-fun m!1162603 () Bool)

(assert (=> b!948231 m!1162603))

(assert (=> b!948224 m!1162505))

(assert (=> b!948224 m!1162505))

(assert (=> b!948224 m!1162507))

(assert (=> b!948224 m!1162509))

(assert (=> b!948224 m!1162505))

(declare-fun m!1162605 () Bool)

(assert (=> b!948224 m!1162605))

(assert (=> b!948230 m!1162601))

(declare-fun m!1162607 () Bool)

(assert (=> b!948230 m!1162607))

(declare-fun m!1162609 () Bool)

(assert (=> d!283478 m!1162609))

(declare-fun m!1162611 () Bool)

(assert (=> d!283478 m!1162611))

(assert (=> d!283478 m!1162539))

(assert (=> b!948229 m!1162601))

(declare-fun m!1162613 () Bool)

(assert (=> b!948229 m!1162613))

(assert (=> b!948225 m!1162609))

(declare-fun m!1162615 () Bool)

(assert (=> b!948227 m!1162615))

(assert (=> b!947471 d!283478))

(declare-fun bs!239794 () Bool)

(declare-fun d!283480 () Bool)

(assert (= bs!239794 (and d!283480 b!947471)))

(declare-fun lambda!32458 () Int)

(assert (=> bs!239794 (= lambda!32458 lambda!32415)))

(assert (=> bs!239794 (not (= lambda!32458 lambda!32416))))

(declare-fun bs!239795 () Bool)

(assert (= bs!239795 (and d!283480 b!947464)))

(assert (=> bs!239795 (not (= lambda!32458 lambda!32418))))

(declare-fun bs!239796 () Bool)

(assert (= bs!239796 (and d!283480 b!948095)))

(assert (=> bs!239796 (not (= lambda!32458 lambda!32453))))

(declare-fun bs!239797 () Bool)

(assert (= bs!239797 (and d!283480 d!283406)))

(assert (=> bs!239797 (= (and (= (reg!2938 r!15766) lt!344114) (= lt!344110 (Star!2609 lt!344114))) (= lambda!32458 lambda!32443))))

(assert (=> bs!239797 (not (= lambda!32458 lambda!32444))))

(declare-fun bs!239798 () Bool)

(assert (= bs!239798 (and d!283480 d!283430)))

(assert (=> bs!239798 (= (and (= (reg!2938 r!15766) lt!344114) (= lt!344110 lt!344119)) (= lambda!32458 lambda!32447))))

(declare-fun bs!239799 () Bool)

(assert (= bs!239799 (and d!283480 b!948197)))

(assert (=> bs!239799 (not (= lambda!32458 lambda!32454))))

(assert (=> bs!239795 (= (and (= (reg!2938 r!15766) lt!344114) (= lt!344110 lt!344119)) (= lambda!32458 lambda!32417))))

(declare-fun bs!239800 () Bool)

(assert (= bs!239800 (and d!283480 b!948194)))

(assert (=> bs!239800 (not (= lambda!32458 lambda!32455))))

(declare-fun bs!239801 () Bool)

(assert (= bs!239801 (and d!283480 d!283470)))

(assert (=> bs!239801 (= (= lt!344110 (Star!2609 (reg!2938 r!15766))) (= lambda!32458 lambda!32456))))

(declare-fun bs!239802 () Bool)

(assert (= bs!239802 (and d!283480 b!948098)))

(assert (=> bs!239802 (not (= lambda!32458 lambda!32452))))

(assert (=> bs!239801 (not (= lambda!32458 lambda!32457))))

(assert (=> d!283480 true))

(assert (=> d!283480 true))

(assert (=> d!283480 true))

(assert (=> d!283480 (= (isDefined!1842 (findConcatSeparation!306 (reg!2938 r!15766) lt!344110 Nil!9823 s!10566 s!10566)) (Exists!360 lambda!32458))))

(declare-fun lt!344232 () Unit!14859)

(assert (=> d!283480 (= lt!344232 (choose!5899 (reg!2938 r!15766) lt!344110 s!10566))))

(assert (=> d!283480 (validRegex!1078 (reg!2938 r!15766))))

(assert (=> d!283480 (= (lemmaFindConcatSeparationEquivalentToExists!306 (reg!2938 r!15766) lt!344110 s!10566) lt!344232)))

(declare-fun bs!239803 () Bool)

(assert (= bs!239803 d!283480))

(assert (=> bs!239803 m!1162105))

(declare-fun m!1162617 () Bool)

(assert (=> bs!239803 m!1162617))

(assert (=> bs!239803 m!1162539))

(declare-fun m!1162619 () Bool)

(assert (=> bs!239803 m!1162619))

(assert (=> bs!239803 m!1162105))

(assert (=> bs!239803 m!1162109))

(assert (=> b!947471 d!283480))

(declare-fun b!948233 () Bool)

(declare-fun e!614217 () Bool)

(assert (=> b!948233 (= e!614217 (nullable!767 lt!344119))))

(declare-fun d!283482 () Bool)

(declare-fun e!614219 () Bool)

(assert (=> d!283482 e!614219))

(declare-fun c!154395 () Bool)

(assert (=> d!283482 (= c!154395 ((_ is EmptyExpr!2609) lt!344119))))

(declare-fun lt!344233 () Bool)

(assert (=> d!283482 (= lt!344233 e!614217)))

(declare-fun c!154394 () Bool)

(assert (=> d!283482 (= c!154394 (isEmpty!6086 s!10566))))

(assert (=> d!283482 (validRegex!1078 lt!344119)))

(assert (=> d!283482 (= (matchR!1147 lt!344119 s!10566) lt!344233)))

(declare-fun b!948234 () Bool)

(declare-fun res!431060 () Bool)

(declare-fun e!614221 () Bool)

(assert (=> b!948234 (=> (not res!431060) (not e!614221))))

(declare-fun call!59363 () Bool)

(assert (=> b!948234 (= res!431060 (not call!59363))))

(declare-fun b!948235 () Bool)

(declare-fun e!614218 () Bool)

(assert (=> b!948235 (= e!614219 e!614218)))

(declare-fun c!154396 () Bool)

(assert (=> b!948235 (= c!154396 ((_ is EmptyLang!2609) lt!344119))))

(declare-fun bm!59358 () Bool)

(assert (=> bm!59358 (= call!59363 (isEmpty!6086 s!10566))))

(declare-fun b!948236 () Bool)

(assert (=> b!948236 (= e!614221 (= (head!1729 s!10566) (c!154204 lt!344119)))))

(declare-fun b!948237 () Bool)

(declare-fun e!614220 () Bool)

(declare-fun e!614223 () Bool)

(assert (=> b!948237 (= e!614220 e!614223)))

(declare-fun res!431064 () Bool)

(assert (=> b!948237 (=> res!431064 e!614223)))

(assert (=> b!948237 (= res!431064 call!59363)))

(declare-fun b!948238 () Bool)

(declare-fun res!431062 () Bool)

(assert (=> b!948238 (=> (not res!431062) (not e!614221))))

(assert (=> b!948238 (= res!431062 (isEmpty!6086 (tail!1291 s!10566)))))

(declare-fun b!948239 () Bool)

(declare-fun e!614222 () Bool)

(assert (=> b!948239 (= e!614222 e!614220)))

(declare-fun res!431059 () Bool)

(assert (=> b!948239 (=> (not res!431059) (not e!614220))))

(assert (=> b!948239 (= res!431059 (not lt!344233))))

(declare-fun b!948240 () Bool)

(assert (=> b!948240 (= e!614217 (matchR!1147 (derivativeStep!576 lt!344119 (head!1729 s!10566)) (tail!1291 s!10566)))))

(declare-fun b!948241 () Bool)

(declare-fun res!431061 () Bool)

(assert (=> b!948241 (=> res!431061 e!614223)))

(assert (=> b!948241 (= res!431061 (not (isEmpty!6086 (tail!1291 s!10566))))))

(declare-fun b!948242 () Bool)

(declare-fun res!431065 () Bool)

(assert (=> b!948242 (=> res!431065 e!614222)))

(assert (=> b!948242 (= res!431065 (not ((_ is ElementMatch!2609) lt!344119)))))

(assert (=> b!948242 (= e!614218 e!614222)))

(declare-fun b!948243 () Bool)

(declare-fun res!431066 () Bool)

(assert (=> b!948243 (=> res!431066 e!614222)))

(assert (=> b!948243 (= res!431066 e!614221)))

(declare-fun res!431063 () Bool)

(assert (=> b!948243 (=> (not res!431063) (not e!614221))))

(assert (=> b!948243 (= res!431063 lt!344233)))

(declare-fun b!948244 () Bool)

(assert (=> b!948244 (= e!614218 (not lt!344233))))

(declare-fun b!948245 () Bool)

(assert (=> b!948245 (= e!614223 (not (= (head!1729 s!10566) (c!154204 lt!344119))))))

(declare-fun b!948246 () Bool)

(assert (=> b!948246 (= e!614219 (= lt!344233 call!59363))))

(assert (= (and d!283482 c!154394) b!948233))

(assert (= (and d!283482 (not c!154394)) b!948240))

(assert (= (and d!283482 c!154395) b!948246))

(assert (= (and d!283482 (not c!154395)) b!948235))

(assert (= (and b!948235 c!154396) b!948244))

(assert (= (and b!948235 (not c!154396)) b!948242))

(assert (= (and b!948242 (not res!431065)) b!948243))

(assert (= (and b!948243 res!431063) b!948234))

(assert (= (and b!948234 res!431060) b!948238))

(assert (= (and b!948238 res!431062) b!948236))

(assert (= (and b!948243 (not res!431066)) b!948239))

(assert (= (and b!948239 res!431059) b!948237))

(assert (= (and b!948237 (not res!431064)) b!948241))

(assert (= (and b!948241 (not res!431061)) b!948245))

(assert (= (or b!948246 b!948234 b!948237) bm!59358))

(assert (=> bm!59358 m!1162073))

(assert (=> b!948241 m!1162565))

(assert (=> b!948241 m!1162565))

(assert (=> b!948241 m!1162567))

(assert (=> b!948240 m!1162569))

(assert (=> b!948240 m!1162569))

(declare-fun m!1162621 () Bool)

(assert (=> b!948240 m!1162621))

(assert (=> b!948240 m!1162565))

(assert (=> b!948240 m!1162621))

(assert (=> b!948240 m!1162565))

(declare-fun m!1162623 () Bool)

(assert (=> b!948240 m!1162623))

(assert (=> b!948236 m!1162569))

(assert (=> b!948238 m!1162565))

(assert (=> b!948238 m!1162565))

(assert (=> b!948238 m!1162567))

(assert (=> b!948233 m!1162215))

(assert (=> d!283482 m!1162073))

(assert (=> d!283482 m!1162217))

(assert (=> b!948245 m!1162569))

(assert (=> b!947471 d!283482))

(declare-fun b!948258 () Bool)

(declare-fun e!614226 () Bool)

(declare-fun tp!292293 () Bool)

(declare-fun tp!292289 () Bool)

(assert (=> b!948258 (= e!614226 (and tp!292293 tp!292289))))

(declare-fun b!948260 () Bool)

(declare-fun tp!292291 () Bool)

(declare-fun tp!292290 () Bool)

(assert (=> b!948260 (= e!614226 (and tp!292291 tp!292290))))

(assert (=> b!947478 (= tp!292239 e!614226)))

(declare-fun b!948257 () Bool)

(assert (=> b!948257 (= e!614226 tp_is_empty!4861)))

(declare-fun b!948259 () Bool)

(declare-fun tp!292292 () Bool)

(assert (=> b!948259 (= e!614226 tp!292292)))

(assert (= (and b!947478 ((_ is ElementMatch!2609) (regOne!5731 r!15766))) b!948257))

(assert (= (and b!947478 ((_ is Concat!4442) (regOne!5731 r!15766))) b!948258))

(assert (= (and b!947478 ((_ is Star!2609) (regOne!5731 r!15766))) b!948259))

(assert (= (and b!947478 ((_ is Union!2609) (regOne!5731 r!15766))) b!948260))

(declare-fun b!948262 () Bool)

(declare-fun e!614227 () Bool)

(declare-fun tp!292298 () Bool)

(declare-fun tp!292294 () Bool)

(assert (=> b!948262 (= e!614227 (and tp!292298 tp!292294))))

(declare-fun b!948264 () Bool)

(declare-fun tp!292296 () Bool)

(declare-fun tp!292295 () Bool)

(assert (=> b!948264 (= e!614227 (and tp!292296 tp!292295))))

(assert (=> b!947478 (= tp!292235 e!614227)))

(declare-fun b!948261 () Bool)

(assert (=> b!948261 (= e!614227 tp_is_empty!4861)))

(declare-fun b!948263 () Bool)

(declare-fun tp!292297 () Bool)

(assert (=> b!948263 (= e!614227 tp!292297)))

(assert (= (and b!947478 ((_ is ElementMatch!2609) (regTwo!5731 r!15766))) b!948261))

(assert (= (and b!947478 ((_ is Concat!4442) (regTwo!5731 r!15766))) b!948262))

(assert (= (and b!947478 ((_ is Star!2609) (regTwo!5731 r!15766))) b!948263))

(assert (= (and b!947478 ((_ is Union!2609) (regTwo!5731 r!15766))) b!948264))

(declare-fun b!948269 () Bool)

(declare-fun e!614230 () Bool)

(declare-fun tp!292301 () Bool)

(assert (=> b!948269 (= e!614230 (and tp_is_empty!4861 tp!292301))))

(assert (=> b!947473 (= tp!292237 e!614230)))

(assert (= (and b!947473 ((_ is Cons!9823) (t!100885 s!10566))) b!948269))

(declare-fun b!948271 () Bool)

(declare-fun e!614231 () Bool)

(declare-fun tp!292306 () Bool)

(declare-fun tp!292302 () Bool)

(assert (=> b!948271 (= e!614231 (and tp!292306 tp!292302))))

(declare-fun b!948273 () Bool)

(declare-fun tp!292304 () Bool)

(declare-fun tp!292303 () Bool)

(assert (=> b!948273 (= e!614231 (and tp!292304 tp!292303))))

(assert (=> b!947470 (= tp!292240 e!614231)))

(declare-fun b!948270 () Bool)

(assert (=> b!948270 (= e!614231 tp_is_empty!4861)))

(declare-fun b!948272 () Bool)

(declare-fun tp!292305 () Bool)

(assert (=> b!948272 (= e!614231 tp!292305)))

(assert (= (and b!947470 ((_ is ElementMatch!2609) (reg!2938 r!15766))) b!948270))

(assert (= (and b!947470 ((_ is Concat!4442) (reg!2938 r!15766))) b!948271))

(assert (= (and b!947470 ((_ is Star!2609) (reg!2938 r!15766))) b!948272))

(assert (= (and b!947470 ((_ is Union!2609) (reg!2938 r!15766))) b!948273))

(declare-fun b!948275 () Bool)

(declare-fun e!614232 () Bool)

(declare-fun tp!292311 () Bool)

(declare-fun tp!292307 () Bool)

(assert (=> b!948275 (= e!614232 (and tp!292311 tp!292307))))

(declare-fun b!948277 () Bool)

(declare-fun tp!292309 () Bool)

(declare-fun tp!292308 () Bool)

(assert (=> b!948277 (= e!614232 (and tp!292309 tp!292308))))

(assert (=> b!947472 (= tp!292238 e!614232)))

(declare-fun b!948274 () Bool)

(assert (=> b!948274 (= e!614232 tp_is_empty!4861)))

(declare-fun b!948276 () Bool)

(declare-fun tp!292310 () Bool)

(assert (=> b!948276 (= e!614232 tp!292310)))

(assert (= (and b!947472 ((_ is ElementMatch!2609) (regOne!5730 r!15766))) b!948274))

(assert (= (and b!947472 ((_ is Concat!4442) (regOne!5730 r!15766))) b!948275))

(assert (= (and b!947472 ((_ is Star!2609) (regOne!5730 r!15766))) b!948276))

(assert (= (and b!947472 ((_ is Union!2609) (regOne!5730 r!15766))) b!948277))

(declare-fun b!948279 () Bool)

(declare-fun e!614233 () Bool)

(declare-fun tp!292316 () Bool)

(declare-fun tp!292312 () Bool)

(assert (=> b!948279 (= e!614233 (and tp!292316 tp!292312))))

(declare-fun b!948281 () Bool)

(declare-fun tp!292314 () Bool)

(declare-fun tp!292313 () Bool)

(assert (=> b!948281 (= e!614233 (and tp!292314 tp!292313))))

(assert (=> b!947472 (= tp!292236 e!614233)))

(declare-fun b!948278 () Bool)

(assert (=> b!948278 (= e!614233 tp_is_empty!4861)))

(declare-fun b!948280 () Bool)

(declare-fun tp!292315 () Bool)

(assert (=> b!948280 (= e!614233 tp!292315)))

(assert (= (and b!947472 ((_ is ElementMatch!2609) (regTwo!5730 r!15766))) b!948278))

(assert (= (and b!947472 ((_ is Concat!4442) (regTwo!5730 r!15766))) b!948279))

(assert (= (and b!947472 ((_ is Star!2609) (regTwo!5730 r!15766))) b!948280))

(assert (= (and b!947472 ((_ is Union!2609) (regTwo!5730 r!15766))) b!948281))

(check-sat (not b!948229) (not b!948238) (not b!947561) (not b!948241) (not bm!59313) (not b!948211) (not b!948121) (not d!283342) (not b!948141) (not b!948189) (not d!283470) (not b!948123) (not d!283354) (not b!947779) (not b!948262) (not b!948275) (not b!948172) (not b!948272) (not b!948260) (not b!947572) (not b!948090) (not b!948135) (not b!947886) (not b!948198) (not b!947671) (not b!948175) (not b!948179) (not bm!59352) (not b!948202) (not d!283456) (not d!283356) (not b!948199) (not bm!59357) (not bm!59356) (not b!948263) (not b!947669) (not d!283446) (not b!948225) (not d!283450) (not b!948236) (not bm!59350) (not b!947672) (not b!948148) (not b!948259) (not b!948240) (not b!948134) (not b!948149) (not d!283468) (not d!283466) (not b!948281) (not bm!59284) (not b!947685) (not b!948146) (not b!948144) (not bm!59293) (not bm!59291) (not b!948227) (not bm!59318) (not bm!59273) (not b!948124) (not d!283462) (not b!948139) (not b!948130) (not d!283436) (not b!948279) (not b!948277) (not b!948280) (not b!947686) (not bm!59348) (not b!948230) (not b!948207) (not b!947888) (not bm!59271) (not bm!59358) (not d!283464) (not bm!59285) (not b!948271) (not d!283444) (not b!948233) (not b!947895) (not d!283454) (not bm!59341) (not b!948187) (not d!283406) (not b!948127) (not b!947678) (not b!948180) (not d!283442) (not b!948273) (not d!283478) (not b!948245) (not b!948276) (not b!948213) (not b!947863) (not d!283364) (not b!947664) (not b!948132) (not d!283476) (not b!948258) (not bm!59349) (not d!283394) (not b!948206) (not b!947690) (not b!948160) (not d!283482) (not b!947883) (not b!948161) (not bm!59340) (not b!947774) (not b!948231) (not b!948118) (not b!948125) (not d!283434) (not d!283430) (not bm!59314) (not bm!59342) (not d!283452) (not d!283438) (not b!947676) (not b!948264) (not b!947890) (not b!948204) (not b!948119) (not b!947667) (not b!948269) (not d!283368) (not d!283472) (not b!947775) (not b!948099) (not b!947683) (not bm!59343) (not d!283440) (not d!283474) (not bm!59268) (not b!947681) (not b!948177) (not b!948224) (not bm!59351) (not d!283480) (not bm!59270) tp_is_empty!4861 (not b!948184) (not b!948153) (not b!947891) (not bm!59347))
(check-sat)
