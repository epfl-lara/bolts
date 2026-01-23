; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!244904 () Bool)

(assert start!244904)

(declare-fun b!2511132 () Bool)

(declare-fun res!1061535 () Bool)

(declare-fun e!1591432 () Bool)

(assert (=> b!2511132 (=> (not res!1061535) (not e!1591432))))

(declare-datatypes ((C!15088 0))(
  ( (C!15089 (val!9196 Int)) )
))
(declare-datatypes ((Regex!7465 0))(
  ( (ElementMatch!7465 (c!400023 C!15088)) (Concat!12161 (regOne!15442 Regex!7465) (regTwo!15442 Regex!7465)) (EmptyExpr!7465) (Star!7465 (reg!7794 Regex!7465)) (EmptyLang!7465) (Union!7465 (regOne!15443 Regex!7465) (regTwo!15443 Regex!7465)) )
))
(declare-fun r!27340 () Regex!7465)

(declare-fun nullable!2382 (Regex!7465) Bool)

(assert (=> b!2511132 (= res!1061535 (not (nullable!2382 (regOne!15442 r!27340))))))

(declare-fun b!2511133 () Bool)

(declare-fun res!1061534 () Bool)

(assert (=> b!2511133 (=> (not res!1061534) (not e!1591432))))

(declare-fun c!14016 () C!15088)

(declare-datatypes ((List!29530 0))(
  ( (Nil!29430) (Cons!29430 (h!34850 C!15088) (t!211229 List!29530)) )
))
(declare-fun tl!4068 () List!29530)

(declare-fun derivative!160 (Regex!7465 List!29530) Regex!7465)

(declare-fun derivativeStep!2034 (Regex!7465 C!15088) Regex!7465)

(assert (=> b!2511133 (= res!1061534 (nullable!2382 (derivative!160 (derivativeStep!2034 r!27340 c!14016) tl!4068)))))

(declare-fun b!2511135 () Bool)

(declare-fun e!1591430 () Bool)

(declare-fun tp_is_empty!12785 () Bool)

(assert (=> b!2511135 (= e!1591430 tp_is_empty!12785)))

(declare-fun b!2511136 () Bool)

(declare-fun tp!803099 () Bool)

(assert (=> b!2511136 (= e!1591430 tp!803099)))

(declare-fun b!2511137 () Bool)

(declare-fun e!1591429 () Bool)

(declare-fun lt!897759 () Regex!7465)

(declare-fun validRegex!3091 (Regex!7465) Bool)

(assert (=> b!2511137 (= e!1591429 (validRegex!3091 lt!897759))))

(declare-datatypes ((tuple2!29460 0))(
  ( (tuple2!29461 (_1!17272 List!29530) (_2!17272 List!29530)) )
))
(declare-datatypes ((Option!5850 0))(
  ( (None!5849) (Some!5849 (v!31780 tuple2!29460)) )
))
(declare-fun isDefined!4672 (Option!5850) Bool)

(declare-fun findConcatSeparation!872 (Regex!7465 Regex!7465 List!29530 List!29530 List!29530) Option!5850)

(assert (=> b!2511137 (isDefined!4672 (findConcatSeparation!872 lt!897759 (regTwo!15442 r!27340) Nil!29430 tl!4068 tl!4068))))

(declare-datatypes ((Unit!43179 0))(
  ( (Unit!43180) )
))
(declare-fun lt!897760 () Unit!43179)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!154 (Regex!7465 Regex!7465 List!29530) Unit!43179)

(assert (=> b!2511137 (= lt!897760 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!154 lt!897759 (regTwo!15442 r!27340) tl!4068))))

(declare-fun b!2511138 () Bool)

(declare-fun tp!803100 () Bool)

(declare-fun tp!803101 () Bool)

(assert (=> b!2511138 (= e!1591430 (and tp!803100 tp!803101))))

(declare-fun b!2511139 () Bool)

(declare-fun e!1591431 () Bool)

(declare-fun tp!803097 () Bool)

(assert (=> b!2511139 (= e!1591431 (and tp_is_empty!12785 tp!803097))))

(declare-fun b!2511140 () Bool)

(declare-fun tp!803098 () Bool)

(declare-fun tp!803102 () Bool)

(assert (=> b!2511140 (= e!1591430 (and tp!803098 tp!803102))))

(declare-fun b!2511141 () Bool)

(assert (=> b!2511141 (= e!1591432 (not e!1591429))))

(declare-fun res!1061533 () Bool)

(assert (=> b!2511141 (=> res!1061533 e!1591429)))

(declare-fun lt!897764 () Bool)

(assert (=> b!2511141 (= res!1061533 (not lt!897764))))

(assert (=> b!2511141 (= (derivative!160 EmptyLang!7465 tl!4068) EmptyLang!7465)))

(declare-fun lt!897766 () Unit!43179)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!12 (Regex!7465 List!29530) Unit!43179)

(assert (=> b!2511141 (= lt!897766 (lemmaEmptyLangDerivativeIsAFixPoint!12 EmptyLang!7465 tl!4068))))

(declare-fun e!1591428 () Bool)

(assert (=> b!2511141 e!1591428))

(declare-fun res!1061536 () Bool)

(assert (=> b!2511141 (=> res!1061536 e!1591428)))

(assert (=> b!2511141 (= res!1061536 lt!897764)))

(declare-fun lt!897763 () Regex!7465)

(declare-fun matchR!3464 (Regex!7465 List!29530) Bool)

(assert (=> b!2511141 (= lt!897764 (matchR!3464 lt!897763 tl!4068))))

(declare-fun lt!897761 () Unit!43179)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!152 (Regex!7465 Regex!7465 List!29530) Unit!43179)

(assert (=> b!2511141 (= lt!897761 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!152 lt!897763 EmptyLang!7465 tl!4068))))

(declare-fun lt!897762 () Regex!7465)

(assert (=> b!2511141 (= (matchR!3464 lt!897762 tl!4068) (matchR!3464 (derivative!160 lt!897762 tl!4068) Nil!29430))))

(declare-fun lt!897765 () Unit!43179)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!110 (Regex!7465 List!29530) Unit!43179)

(assert (=> b!2511141 (= lt!897765 (lemmaMatchRIsSameAsWholeDerivativeAndNil!110 lt!897762 tl!4068))))

(assert (=> b!2511141 (= lt!897762 (Union!7465 lt!897763 EmptyLang!7465))))

(assert (=> b!2511141 (= lt!897763 (Concat!12161 lt!897759 (regTwo!15442 r!27340)))))

(assert (=> b!2511141 (= lt!897759 (derivativeStep!2034 (regOne!15442 r!27340) c!14016))))

(declare-fun b!2511142 () Bool)

(assert (=> b!2511142 (= e!1591428 (matchR!3464 EmptyLang!7465 tl!4068))))

(declare-fun b!2511134 () Bool)

(declare-fun res!1061538 () Bool)

(assert (=> b!2511134 (=> (not res!1061538) (not e!1591432))))

(get-info :version)

(assert (=> b!2511134 (= res!1061538 (and (not ((_ is EmptyExpr!7465) r!27340)) (not ((_ is EmptyLang!7465) r!27340)) (not ((_ is ElementMatch!7465) r!27340)) (not ((_ is Union!7465) r!27340)) (not ((_ is Star!7465) r!27340))))))

(declare-fun res!1061537 () Bool)

(assert (=> start!244904 (=> (not res!1061537) (not e!1591432))))

(assert (=> start!244904 (= res!1061537 (validRegex!3091 r!27340))))

(assert (=> start!244904 e!1591432))

(assert (=> start!244904 e!1591430))

(assert (=> start!244904 tp_is_empty!12785))

(assert (=> start!244904 e!1591431))

(assert (= (and start!244904 res!1061537) b!2511133))

(assert (= (and b!2511133 res!1061534) b!2511134))

(assert (= (and b!2511134 res!1061538) b!2511132))

(assert (= (and b!2511132 res!1061535) b!2511141))

(assert (= (and b!2511141 (not res!1061536)) b!2511142))

(assert (= (and b!2511141 (not res!1061533)) b!2511137))

(assert (= (and start!244904 ((_ is ElementMatch!7465) r!27340)) b!2511135))

(assert (= (and start!244904 ((_ is Concat!12161) r!27340)) b!2511138))

(assert (= (and start!244904 ((_ is Star!7465) r!27340)) b!2511136))

(assert (= (and start!244904 ((_ is Union!7465) r!27340)) b!2511140))

(assert (= (and start!244904 ((_ is Cons!29430) tl!4068)) b!2511139))

(declare-fun m!2869787 () Bool)

(assert (=> b!2511141 m!2869787))

(declare-fun m!2869789 () Bool)

(assert (=> b!2511141 m!2869789))

(declare-fun m!2869791 () Bool)

(assert (=> b!2511141 m!2869791))

(declare-fun m!2869793 () Bool)

(assert (=> b!2511141 m!2869793))

(declare-fun m!2869795 () Bool)

(assert (=> b!2511141 m!2869795))

(declare-fun m!2869797 () Bool)

(assert (=> b!2511141 m!2869797))

(assert (=> b!2511141 m!2869793))

(declare-fun m!2869799 () Bool)

(assert (=> b!2511141 m!2869799))

(declare-fun m!2869801 () Bool)

(assert (=> b!2511141 m!2869801))

(declare-fun m!2869803 () Bool)

(assert (=> b!2511141 m!2869803))

(declare-fun m!2869805 () Bool)

(assert (=> start!244904 m!2869805))

(declare-fun m!2869807 () Bool)

(assert (=> b!2511132 m!2869807))

(declare-fun m!2869809 () Bool)

(assert (=> b!2511133 m!2869809))

(assert (=> b!2511133 m!2869809))

(declare-fun m!2869811 () Bool)

(assert (=> b!2511133 m!2869811))

(assert (=> b!2511133 m!2869811))

(declare-fun m!2869813 () Bool)

(assert (=> b!2511133 m!2869813))

(declare-fun m!2869815 () Bool)

(assert (=> b!2511137 m!2869815))

(declare-fun m!2869817 () Bool)

(assert (=> b!2511137 m!2869817))

(assert (=> b!2511137 m!2869817))

(declare-fun m!2869819 () Bool)

(assert (=> b!2511137 m!2869819))

(declare-fun m!2869821 () Bool)

(assert (=> b!2511137 m!2869821))

(declare-fun m!2869823 () Bool)

(assert (=> b!2511142 m!2869823))

(check-sat (not b!2511139) (not b!2511133) (not b!2511136) (not b!2511141) (not b!2511138) tp_is_empty!12785 (not b!2511140) (not b!2511142) (not b!2511132) (not b!2511137) (not start!244904))
(check-sat)
(get-model)

(declare-fun bm!155782 () Bool)

(declare-fun call!155787 () Bool)

(declare-fun c!400034 () Bool)

(assert (=> bm!155782 (= call!155787 (validRegex!3091 (ite c!400034 (regOne!15443 r!27340) (regTwo!15442 r!27340))))))

(declare-fun bm!155783 () Bool)

(declare-fun call!155788 () Bool)

(declare-fun call!155789 () Bool)

(assert (=> bm!155783 (= call!155788 call!155789)))

(declare-fun b!2511188 () Bool)

(declare-fun res!1061567 () Bool)

(declare-fun e!1591474 () Bool)

(assert (=> b!2511188 (=> (not res!1061567) (not e!1591474))))

(assert (=> b!2511188 (= res!1061567 call!155787)))

(declare-fun e!1591468 () Bool)

(assert (=> b!2511188 (= e!1591468 e!1591474)))

(declare-fun b!2511190 () Bool)

(declare-fun e!1591471 () Bool)

(declare-fun e!1591470 () Bool)

(assert (=> b!2511190 (= e!1591471 e!1591470)))

(declare-fun res!1061565 () Bool)

(assert (=> b!2511190 (= res!1061565 (not (nullable!2382 (reg!7794 r!27340))))))

(assert (=> b!2511190 (=> (not res!1061565) (not e!1591470))))

(declare-fun d!716680 () Bool)

(declare-fun res!1061566 () Bool)

(declare-fun e!1591469 () Bool)

(assert (=> d!716680 (=> res!1061566 e!1591469)))

(assert (=> d!716680 (= res!1061566 ((_ is ElementMatch!7465) r!27340))))

(assert (=> d!716680 (= (validRegex!3091 r!27340) e!1591469)))

(declare-fun b!2511189 () Bool)

(declare-fun res!1061564 () Bool)

(declare-fun e!1591473 () Bool)

(assert (=> b!2511189 (=> res!1061564 e!1591473)))

(assert (=> b!2511189 (= res!1061564 (not ((_ is Concat!12161) r!27340)))))

(assert (=> b!2511189 (= e!1591468 e!1591473)))

(declare-fun b!2511191 () Bool)

(assert (=> b!2511191 (= e!1591471 e!1591468)))

(assert (=> b!2511191 (= c!400034 ((_ is Union!7465) r!27340))))

(declare-fun b!2511192 () Bool)

(declare-fun e!1591472 () Bool)

(assert (=> b!2511192 (= e!1591472 call!155787)))

(declare-fun c!400035 () Bool)

(declare-fun bm!155784 () Bool)

(assert (=> bm!155784 (= call!155789 (validRegex!3091 (ite c!400035 (reg!7794 r!27340) (ite c!400034 (regTwo!15443 r!27340) (regOne!15442 r!27340)))))))

(declare-fun b!2511193 () Bool)

(assert (=> b!2511193 (= e!1591469 e!1591471)))

(assert (=> b!2511193 (= c!400035 ((_ is Star!7465) r!27340))))

(declare-fun b!2511194 () Bool)

(assert (=> b!2511194 (= e!1591473 e!1591472)))

(declare-fun res!1061568 () Bool)

(assert (=> b!2511194 (=> (not res!1061568) (not e!1591472))))

(assert (=> b!2511194 (= res!1061568 call!155788)))

(declare-fun b!2511195 () Bool)

(assert (=> b!2511195 (= e!1591474 call!155788)))

(declare-fun b!2511196 () Bool)

(assert (=> b!2511196 (= e!1591470 call!155789)))

(assert (= (and d!716680 (not res!1061566)) b!2511193))

(assert (= (and b!2511193 c!400035) b!2511190))

(assert (= (and b!2511193 (not c!400035)) b!2511191))

(assert (= (and b!2511190 res!1061565) b!2511196))

(assert (= (and b!2511191 c!400034) b!2511188))

(assert (= (and b!2511191 (not c!400034)) b!2511189))

(assert (= (and b!2511188 res!1061567) b!2511195))

(assert (= (and b!2511189 (not res!1061564)) b!2511194))

(assert (= (and b!2511194 res!1061568) b!2511192))

(assert (= (or b!2511188 b!2511192) bm!155782))

(assert (= (or b!2511195 b!2511194) bm!155783))

(assert (= (or b!2511196 bm!155783) bm!155784))

(declare-fun m!2869833 () Bool)

(assert (=> bm!155782 m!2869833))

(declare-fun m!2869835 () Bool)

(assert (=> b!2511190 m!2869835))

(declare-fun m!2869837 () Bool)

(assert (=> bm!155784 m!2869837))

(assert (=> start!244904 d!716680))

(declare-fun d!716686 () Bool)

(declare-fun nullableFct!630 (Regex!7465) Bool)

(assert (=> d!716686 (= (nullable!2382 (regOne!15442 r!27340)) (nullableFct!630 (regOne!15442 r!27340)))))

(declare-fun bs!468779 () Bool)

(assert (= bs!468779 d!716686))

(declare-fun m!2869839 () Bool)

(assert (=> bs!468779 m!2869839))

(assert (=> b!2511132 d!716686))

(declare-fun d!716688 () Bool)

(assert (=> d!716688 (= (nullable!2382 (derivative!160 (derivativeStep!2034 r!27340 c!14016) tl!4068)) (nullableFct!630 (derivative!160 (derivativeStep!2034 r!27340 c!14016) tl!4068)))))

(declare-fun bs!468780 () Bool)

(assert (= bs!468780 d!716688))

(assert (=> bs!468780 m!2869811))

(declare-fun m!2869841 () Bool)

(assert (=> bs!468780 m!2869841))

(assert (=> b!2511133 d!716688))

(declare-fun d!716690 () Bool)

(declare-fun lt!897769 () Regex!7465)

(assert (=> d!716690 (validRegex!3091 lt!897769)))

(declare-fun e!1591477 () Regex!7465)

(assert (=> d!716690 (= lt!897769 e!1591477)))

(declare-fun c!400038 () Bool)

(assert (=> d!716690 (= c!400038 ((_ is Cons!29430) tl!4068))))

(assert (=> d!716690 (validRegex!3091 (derivativeStep!2034 r!27340 c!14016))))

(assert (=> d!716690 (= (derivative!160 (derivativeStep!2034 r!27340 c!14016) tl!4068) lt!897769)))

(declare-fun b!2511201 () Bool)

(assert (=> b!2511201 (= e!1591477 (derivative!160 (derivativeStep!2034 (derivativeStep!2034 r!27340 c!14016) (h!34850 tl!4068)) (t!211229 tl!4068)))))

(declare-fun b!2511202 () Bool)

(assert (=> b!2511202 (= e!1591477 (derivativeStep!2034 r!27340 c!14016))))

(assert (= (and d!716690 c!400038) b!2511201))

(assert (= (and d!716690 (not c!400038)) b!2511202))

(declare-fun m!2869843 () Bool)

(assert (=> d!716690 m!2869843))

(assert (=> d!716690 m!2869809))

(declare-fun m!2869845 () Bool)

(assert (=> d!716690 m!2869845))

(assert (=> b!2511201 m!2869809))

(declare-fun m!2869847 () Bool)

(assert (=> b!2511201 m!2869847))

(assert (=> b!2511201 m!2869847))

(declare-fun m!2869849 () Bool)

(assert (=> b!2511201 m!2869849))

(assert (=> b!2511133 d!716690))

(declare-fun bm!155796 () Bool)

(declare-fun c!400057 () Bool)

(declare-fun call!155801 () Regex!7465)

(assert (=> bm!155796 (= call!155801 (derivativeStep!2034 (ite c!400057 (regOne!15443 r!27340) (regTwo!15442 r!27340)) c!14016))))

(declare-fun b!2511259 () Bool)

(declare-fun e!1591511 () Regex!7465)

(declare-fun call!155803 () Regex!7465)

(assert (=> b!2511259 (= e!1591511 (Union!7465 (Concat!12161 call!155803 (regTwo!15442 r!27340)) EmptyLang!7465))))

(declare-fun b!2511260 () Bool)

(assert (=> b!2511260 (= c!400057 ((_ is Union!7465) r!27340))))

(declare-fun e!1591514 () Regex!7465)

(declare-fun e!1591512 () Regex!7465)

(assert (=> b!2511260 (= e!1591514 e!1591512)))

(declare-fun c!400059 () Bool)

(declare-fun bm!155797 () Bool)

(declare-fun call!155802 () Regex!7465)

(assert (=> bm!155797 (= call!155802 (derivativeStep!2034 (ite c!400057 (regTwo!15443 r!27340) (ite c!400059 (reg!7794 r!27340) (regOne!15442 r!27340))) c!14016))))

(declare-fun b!2511262 () Bool)

(assert (=> b!2511262 (= e!1591514 (ite (= c!14016 (c!400023 r!27340)) EmptyExpr!7465 EmptyLang!7465))))

(declare-fun b!2511263 () Bool)

(declare-fun c!400058 () Bool)

(assert (=> b!2511263 (= c!400058 (nullable!2382 (regOne!15442 r!27340)))))

(declare-fun e!1591510 () Regex!7465)

(assert (=> b!2511263 (= e!1591510 e!1591511)))

(declare-fun bm!155798 () Bool)

(declare-fun call!155804 () Regex!7465)

(assert (=> bm!155798 (= call!155804 call!155802)))

(declare-fun b!2511264 () Bool)

(assert (=> b!2511264 (= e!1591512 (Union!7465 call!155801 call!155802))))

(declare-fun b!2511265 () Bool)

(declare-fun e!1591513 () Regex!7465)

(assert (=> b!2511265 (= e!1591513 e!1591514)))

(declare-fun c!400060 () Bool)

(assert (=> b!2511265 (= c!400060 ((_ is ElementMatch!7465) r!27340))))

(declare-fun bm!155799 () Bool)

(assert (=> bm!155799 (= call!155803 call!155804)))

(declare-fun b!2511266 () Bool)

(assert (=> b!2511266 (= e!1591513 EmptyLang!7465)))

(declare-fun b!2511261 () Bool)

(assert (=> b!2511261 (= e!1591512 e!1591510)))

(assert (=> b!2511261 (= c!400059 ((_ is Star!7465) r!27340))))

(declare-fun d!716692 () Bool)

(declare-fun lt!897784 () Regex!7465)

(assert (=> d!716692 (validRegex!3091 lt!897784)))

(assert (=> d!716692 (= lt!897784 e!1591513)))

(declare-fun c!400061 () Bool)

(assert (=> d!716692 (= c!400061 (or ((_ is EmptyExpr!7465) r!27340) ((_ is EmptyLang!7465) r!27340)))))

(assert (=> d!716692 (validRegex!3091 r!27340)))

(assert (=> d!716692 (= (derivativeStep!2034 r!27340 c!14016) lt!897784)))

(declare-fun b!2511267 () Bool)

(assert (=> b!2511267 (= e!1591510 (Concat!12161 call!155804 r!27340))))

(declare-fun b!2511268 () Bool)

(assert (=> b!2511268 (= e!1591511 (Union!7465 (Concat!12161 call!155803 (regTwo!15442 r!27340)) call!155801))))

(assert (= (and d!716692 c!400061) b!2511266))

(assert (= (and d!716692 (not c!400061)) b!2511265))

(assert (= (and b!2511265 c!400060) b!2511262))

(assert (= (and b!2511265 (not c!400060)) b!2511260))

(assert (= (and b!2511260 c!400057) b!2511264))

(assert (= (and b!2511260 (not c!400057)) b!2511261))

(assert (= (and b!2511261 c!400059) b!2511267))

(assert (= (and b!2511261 (not c!400059)) b!2511263))

(assert (= (and b!2511263 c!400058) b!2511268))

(assert (= (and b!2511263 (not c!400058)) b!2511259))

(assert (= (or b!2511268 b!2511259) bm!155799))

(assert (= (or b!2511267 bm!155799) bm!155798))

(assert (= (or b!2511264 bm!155798) bm!155797))

(assert (= (or b!2511264 b!2511268) bm!155796))

(declare-fun m!2869883 () Bool)

(assert (=> bm!155796 m!2869883))

(declare-fun m!2869885 () Bool)

(assert (=> bm!155797 m!2869885))

(assert (=> b!2511263 m!2869807))

(declare-fun m!2869887 () Bool)

(assert (=> d!716692 m!2869887))

(assert (=> d!716692 m!2869805))

(assert (=> b!2511133 d!716692))

(declare-fun bm!155800 () Bool)

(declare-fun call!155805 () Bool)

(declare-fun c!400062 () Bool)

(assert (=> bm!155800 (= call!155805 (validRegex!3091 (ite c!400062 (regOne!15443 lt!897759) (regTwo!15442 lt!897759))))))

(declare-fun bm!155801 () Bool)

(declare-fun call!155806 () Bool)

(declare-fun call!155807 () Bool)

(assert (=> bm!155801 (= call!155806 call!155807)))

(declare-fun b!2511269 () Bool)

(declare-fun res!1061592 () Bool)

(declare-fun e!1591521 () Bool)

(assert (=> b!2511269 (=> (not res!1061592) (not e!1591521))))

(assert (=> b!2511269 (= res!1061592 call!155805)))

(declare-fun e!1591515 () Bool)

(assert (=> b!2511269 (= e!1591515 e!1591521)))

(declare-fun b!2511271 () Bool)

(declare-fun e!1591518 () Bool)

(declare-fun e!1591517 () Bool)

(assert (=> b!2511271 (= e!1591518 e!1591517)))

(declare-fun res!1061590 () Bool)

(assert (=> b!2511271 (= res!1061590 (not (nullable!2382 (reg!7794 lt!897759))))))

(assert (=> b!2511271 (=> (not res!1061590) (not e!1591517))))

(declare-fun d!716702 () Bool)

(declare-fun res!1061591 () Bool)

(declare-fun e!1591516 () Bool)

(assert (=> d!716702 (=> res!1061591 e!1591516)))

(assert (=> d!716702 (= res!1061591 ((_ is ElementMatch!7465) lt!897759))))

(assert (=> d!716702 (= (validRegex!3091 lt!897759) e!1591516)))

(declare-fun b!2511270 () Bool)

(declare-fun res!1061589 () Bool)

(declare-fun e!1591520 () Bool)

(assert (=> b!2511270 (=> res!1061589 e!1591520)))

(assert (=> b!2511270 (= res!1061589 (not ((_ is Concat!12161) lt!897759)))))

(assert (=> b!2511270 (= e!1591515 e!1591520)))

(declare-fun b!2511272 () Bool)

(assert (=> b!2511272 (= e!1591518 e!1591515)))

(assert (=> b!2511272 (= c!400062 ((_ is Union!7465) lt!897759))))

(declare-fun b!2511273 () Bool)

(declare-fun e!1591519 () Bool)

(assert (=> b!2511273 (= e!1591519 call!155805)))

(declare-fun bm!155802 () Bool)

(declare-fun c!400063 () Bool)

(assert (=> bm!155802 (= call!155807 (validRegex!3091 (ite c!400063 (reg!7794 lt!897759) (ite c!400062 (regTwo!15443 lt!897759) (regOne!15442 lt!897759)))))))

(declare-fun b!2511274 () Bool)

(assert (=> b!2511274 (= e!1591516 e!1591518)))

(assert (=> b!2511274 (= c!400063 ((_ is Star!7465) lt!897759))))

(declare-fun b!2511275 () Bool)

(assert (=> b!2511275 (= e!1591520 e!1591519)))

(declare-fun res!1061593 () Bool)

(assert (=> b!2511275 (=> (not res!1061593) (not e!1591519))))

(assert (=> b!2511275 (= res!1061593 call!155806)))

(declare-fun b!2511276 () Bool)

(assert (=> b!2511276 (= e!1591521 call!155806)))

(declare-fun b!2511277 () Bool)

(assert (=> b!2511277 (= e!1591517 call!155807)))

(assert (= (and d!716702 (not res!1061591)) b!2511274))

(assert (= (and b!2511274 c!400063) b!2511271))

(assert (= (and b!2511274 (not c!400063)) b!2511272))

(assert (= (and b!2511271 res!1061590) b!2511277))

(assert (= (and b!2511272 c!400062) b!2511269))

(assert (= (and b!2511272 (not c!400062)) b!2511270))

(assert (= (and b!2511269 res!1061592) b!2511276))

(assert (= (and b!2511270 (not res!1061589)) b!2511275))

(assert (= (and b!2511275 res!1061593) b!2511273))

(assert (= (or b!2511269 b!2511273) bm!155800))

(assert (= (or b!2511276 b!2511275) bm!155801))

(assert (= (or b!2511277 bm!155801) bm!155802))

(declare-fun m!2869889 () Bool)

(assert (=> bm!155800 m!2869889))

(declare-fun m!2869891 () Bool)

(assert (=> b!2511271 m!2869891))

(declare-fun m!2869893 () Bool)

(assert (=> bm!155802 m!2869893))

(assert (=> b!2511137 d!716702))

(declare-fun d!716704 () Bool)

(declare-fun isEmpty!16889 (Option!5850) Bool)

(assert (=> d!716704 (= (isDefined!4672 (findConcatSeparation!872 lt!897759 (regTwo!15442 r!27340) Nil!29430 tl!4068 tl!4068)) (not (isEmpty!16889 (findConcatSeparation!872 lt!897759 (regTwo!15442 r!27340) Nil!29430 tl!4068 tl!4068))))))

(declare-fun bs!468783 () Bool)

(assert (= bs!468783 d!716704))

(assert (=> bs!468783 m!2869817))

(declare-fun m!2869895 () Bool)

(assert (=> bs!468783 m!2869895))

(assert (=> b!2511137 d!716704))

(declare-fun b!2511360 () Bool)

(declare-fun e!1591566 () Option!5850)

(assert (=> b!2511360 (= e!1591566 (Some!5849 (tuple2!29461 Nil!29430 tl!4068)))))

(declare-fun b!2511361 () Bool)

(declare-fun e!1591564 () Bool)

(assert (=> b!2511361 (= e!1591564 (matchR!3464 (regTwo!15442 r!27340) tl!4068))))

(declare-fun b!2511362 () Bool)

(declare-fun lt!897801 () Unit!43179)

(declare-fun lt!897800 () Unit!43179)

(assert (=> b!2511362 (= lt!897801 lt!897800)))

(declare-fun ++!7201 (List!29530 List!29530) List!29530)

(assert (=> b!2511362 (= (++!7201 (++!7201 Nil!29430 (Cons!29430 (h!34850 tl!4068) Nil!29430)) (t!211229 tl!4068)) tl!4068)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!747 (List!29530 C!15088 List!29530 List!29530) Unit!43179)

(assert (=> b!2511362 (= lt!897800 (lemmaMoveElementToOtherListKeepsConcatEq!747 Nil!29430 (h!34850 tl!4068) (t!211229 tl!4068) tl!4068))))

(declare-fun e!1591565 () Option!5850)

(assert (=> b!2511362 (= e!1591565 (findConcatSeparation!872 lt!897759 (regTwo!15442 r!27340) (++!7201 Nil!29430 (Cons!29430 (h!34850 tl!4068) Nil!29430)) (t!211229 tl!4068) tl!4068))))

(declare-fun b!2511363 () Bool)

(declare-fun res!1061623 () Bool)

(declare-fun e!1591568 () Bool)

(assert (=> b!2511363 (=> (not res!1061623) (not e!1591568))))

(declare-fun lt!897799 () Option!5850)

(declare-fun get!9163 (Option!5850) tuple2!29460)

(assert (=> b!2511363 (= res!1061623 (matchR!3464 (regTwo!15442 r!27340) (_2!17272 (get!9163 lt!897799))))))

(declare-fun b!2511364 () Bool)

(assert (=> b!2511364 (= e!1591566 e!1591565)))

(declare-fun c!400092 () Bool)

(assert (=> b!2511364 (= c!400092 ((_ is Nil!29430) tl!4068))))

(declare-fun b!2511365 () Bool)

(declare-fun e!1591567 () Bool)

(assert (=> b!2511365 (= e!1591567 (not (isDefined!4672 lt!897799)))))

(declare-fun b!2511366 () Bool)

(declare-fun res!1061621 () Bool)

(assert (=> b!2511366 (=> (not res!1061621) (not e!1591568))))

(assert (=> b!2511366 (= res!1061621 (matchR!3464 lt!897759 (_1!17272 (get!9163 lt!897799))))))

(declare-fun b!2511367 () Bool)

(assert (=> b!2511367 (= e!1591568 (= (++!7201 (_1!17272 (get!9163 lt!897799)) (_2!17272 (get!9163 lt!897799))) tl!4068))))

(declare-fun d!716706 () Bool)

(assert (=> d!716706 e!1591567))

(declare-fun res!1061624 () Bool)

(assert (=> d!716706 (=> res!1061624 e!1591567)))

(assert (=> d!716706 (= res!1061624 e!1591568)))

(declare-fun res!1061620 () Bool)

(assert (=> d!716706 (=> (not res!1061620) (not e!1591568))))

(assert (=> d!716706 (= res!1061620 (isDefined!4672 lt!897799))))

(assert (=> d!716706 (= lt!897799 e!1591566)))

(declare-fun c!400093 () Bool)

(assert (=> d!716706 (= c!400093 e!1591564)))

(declare-fun res!1061622 () Bool)

(assert (=> d!716706 (=> (not res!1061622) (not e!1591564))))

(assert (=> d!716706 (= res!1061622 (matchR!3464 lt!897759 Nil!29430))))

(assert (=> d!716706 (validRegex!3091 lt!897759)))

(assert (=> d!716706 (= (findConcatSeparation!872 lt!897759 (regTwo!15442 r!27340) Nil!29430 tl!4068 tl!4068) lt!897799)))

(declare-fun b!2511368 () Bool)

(assert (=> b!2511368 (= e!1591565 None!5849)))

(assert (= (and d!716706 res!1061622) b!2511361))

(assert (= (and d!716706 c!400093) b!2511360))

(assert (= (and d!716706 (not c!400093)) b!2511364))

(assert (= (and b!2511364 c!400092) b!2511368))

(assert (= (and b!2511364 (not c!400092)) b!2511362))

(assert (= (and d!716706 res!1061620) b!2511366))

(assert (= (and b!2511366 res!1061621) b!2511363))

(assert (= (and b!2511363 res!1061623) b!2511367))

(assert (= (and d!716706 (not res!1061624)) b!2511365))

(declare-fun m!2869911 () Bool)

(assert (=> b!2511367 m!2869911))

(declare-fun m!2869913 () Bool)

(assert (=> b!2511367 m!2869913))

(assert (=> b!2511366 m!2869911))

(declare-fun m!2869915 () Bool)

(assert (=> b!2511366 m!2869915))

(declare-fun m!2869917 () Bool)

(assert (=> b!2511362 m!2869917))

(assert (=> b!2511362 m!2869917))

(declare-fun m!2869919 () Bool)

(assert (=> b!2511362 m!2869919))

(declare-fun m!2869921 () Bool)

(assert (=> b!2511362 m!2869921))

(assert (=> b!2511362 m!2869917))

(declare-fun m!2869923 () Bool)

(assert (=> b!2511362 m!2869923))

(assert (=> b!2511363 m!2869911))

(declare-fun m!2869925 () Bool)

(assert (=> b!2511363 m!2869925))

(declare-fun m!2869927 () Bool)

(assert (=> b!2511361 m!2869927))

(declare-fun m!2869929 () Bool)

(assert (=> d!716706 m!2869929))

(declare-fun m!2869931 () Bool)

(assert (=> d!716706 m!2869931))

(assert (=> d!716706 m!2869815))

(assert (=> b!2511365 m!2869929))

(assert (=> b!2511137 d!716706))

(declare-fun d!716712 () Bool)

(assert (=> d!716712 (isDefined!4672 (findConcatSeparation!872 lt!897759 (regTwo!15442 r!27340) Nil!29430 tl!4068 tl!4068))))

(declare-fun lt!897813 () Unit!43179)

(declare-fun choose!14863 (Regex!7465 Regex!7465 List!29530) Unit!43179)

(assert (=> d!716712 (= lt!897813 (choose!14863 lt!897759 (regTwo!15442 r!27340) tl!4068))))

(assert (=> d!716712 (validRegex!3091 lt!897759)))

(assert (=> d!716712 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!154 lt!897759 (regTwo!15442 r!27340) tl!4068) lt!897813)))

(declare-fun bs!468786 () Bool)

(assert (= bs!468786 d!716712))

(assert (=> bs!468786 m!2869817))

(assert (=> bs!468786 m!2869817))

(assert (=> bs!468786 m!2869819))

(declare-fun m!2869969 () Bool)

(assert (=> bs!468786 m!2869969))

(assert (=> bs!468786 m!2869815))

(assert (=> b!2511137 d!716712))

(declare-fun b!2511508 () Bool)

(declare-fun e!1591634 () Bool)

(declare-fun lt!897823 () Bool)

(assert (=> b!2511508 (= e!1591634 (not lt!897823))))

(declare-fun d!716726 () Bool)

(declare-fun e!1591636 () Bool)

(assert (=> d!716726 e!1591636))

(declare-fun c!400121 () Bool)

(assert (=> d!716726 (= c!400121 ((_ is EmptyExpr!7465) EmptyLang!7465))))

(declare-fun e!1591640 () Bool)

(assert (=> d!716726 (= lt!897823 e!1591640)))

(declare-fun c!400119 () Bool)

(declare-fun isEmpty!16890 (List!29530) Bool)

(assert (=> d!716726 (= c!400119 (isEmpty!16890 tl!4068))))

(assert (=> d!716726 (validRegex!3091 EmptyLang!7465)))

(assert (=> d!716726 (= (matchR!3464 EmptyLang!7465 tl!4068) lt!897823)))

(declare-fun b!2511509 () Bool)

(assert (=> b!2511509 (= e!1591636 e!1591634)))

(declare-fun c!400120 () Bool)

(assert (=> b!2511509 (= c!400120 ((_ is EmptyLang!7465) EmptyLang!7465))))

(declare-fun b!2511510 () Bool)

(declare-fun head!5732 (List!29530) C!15088)

(declare-fun tail!4009 (List!29530) List!29530)

(assert (=> b!2511510 (= e!1591640 (matchR!3464 (derivativeStep!2034 EmptyLang!7465 (head!5732 tl!4068)) (tail!4009 tl!4068)))))

(declare-fun b!2511511 () Bool)

(declare-fun e!1591638 () Bool)

(declare-fun e!1591637 () Bool)

(assert (=> b!2511511 (= e!1591638 e!1591637)))

(declare-fun res!1061682 () Bool)

(assert (=> b!2511511 (=> (not res!1061682) (not e!1591637))))

(assert (=> b!2511511 (= res!1061682 (not lt!897823))))

(declare-fun b!2511512 () Bool)

(declare-fun e!1591635 () Bool)

(assert (=> b!2511512 (= e!1591635 (= (head!5732 tl!4068) (c!400023 EmptyLang!7465)))))

(declare-fun b!2511513 () Bool)

(declare-fun res!1061680 () Bool)

(assert (=> b!2511513 (=> (not res!1061680) (not e!1591635))))

(assert (=> b!2511513 (= res!1061680 (isEmpty!16890 (tail!4009 tl!4068)))))

(declare-fun b!2511514 () Bool)

(assert (=> b!2511514 (= e!1591640 (nullable!2382 EmptyLang!7465))))

(declare-fun b!2511515 () Bool)

(declare-fun e!1591639 () Bool)

(assert (=> b!2511515 (= e!1591637 e!1591639)))

(declare-fun res!1061685 () Bool)

(assert (=> b!2511515 (=> res!1061685 e!1591639)))

(declare-fun call!155832 () Bool)

(assert (=> b!2511515 (= res!1061685 call!155832)))

(declare-fun b!2511516 () Bool)

(assert (=> b!2511516 (= e!1591636 (= lt!897823 call!155832))))

(declare-fun b!2511517 () Bool)

(declare-fun res!1061684 () Bool)

(assert (=> b!2511517 (=> res!1061684 e!1591638)))

(assert (=> b!2511517 (= res!1061684 (not ((_ is ElementMatch!7465) EmptyLang!7465)))))

(assert (=> b!2511517 (= e!1591634 e!1591638)))

(declare-fun b!2511518 () Bool)

(assert (=> b!2511518 (= e!1591639 (not (= (head!5732 tl!4068) (c!400023 EmptyLang!7465))))))

(declare-fun bm!155827 () Bool)

(assert (=> bm!155827 (= call!155832 (isEmpty!16890 tl!4068))))

(declare-fun b!2511519 () Bool)

(declare-fun res!1061686 () Bool)

(assert (=> b!2511519 (=> (not res!1061686) (not e!1591635))))

(assert (=> b!2511519 (= res!1061686 (not call!155832))))

(declare-fun b!2511520 () Bool)

(declare-fun res!1061681 () Bool)

(assert (=> b!2511520 (=> res!1061681 e!1591639)))

(assert (=> b!2511520 (= res!1061681 (not (isEmpty!16890 (tail!4009 tl!4068))))))

(declare-fun b!2511521 () Bool)

(declare-fun res!1061679 () Bool)

(assert (=> b!2511521 (=> res!1061679 e!1591638)))

(assert (=> b!2511521 (= res!1061679 e!1591635)))

(declare-fun res!1061683 () Bool)

(assert (=> b!2511521 (=> (not res!1061683) (not e!1591635))))

(assert (=> b!2511521 (= res!1061683 lt!897823)))

(assert (= (and d!716726 c!400119) b!2511514))

(assert (= (and d!716726 (not c!400119)) b!2511510))

(assert (= (and d!716726 c!400121) b!2511516))

(assert (= (and d!716726 (not c!400121)) b!2511509))

(assert (= (and b!2511509 c!400120) b!2511508))

(assert (= (and b!2511509 (not c!400120)) b!2511517))

(assert (= (and b!2511517 (not res!1061684)) b!2511521))

(assert (= (and b!2511521 res!1061683) b!2511519))

(assert (= (and b!2511519 res!1061686) b!2511513))

(assert (= (and b!2511513 res!1061680) b!2511512))

(assert (= (and b!2511521 (not res!1061679)) b!2511511))

(assert (= (and b!2511511 res!1061682) b!2511515))

(assert (= (and b!2511515 (not res!1061685)) b!2511520))

(assert (= (and b!2511520 (not res!1061681)) b!2511518))

(assert (= (or b!2511516 b!2511515 b!2511519) bm!155827))

(declare-fun m!2870013 () Bool)

(assert (=> b!2511518 m!2870013))

(declare-fun m!2870015 () Bool)

(assert (=> b!2511520 m!2870015))

(assert (=> b!2511520 m!2870015))

(declare-fun m!2870017 () Bool)

(assert (=> b!2511520 m!2870017))

(assert (=> b!2511512 m!2870013))

(declare-fun m!2870019 () Bool)

(assert (=> d!716726 m!2870019))

(declare-fun m!2870021 () Bool)

(assert (=> d!716726 m!2870021))

(declare-fun m!2870023 () Bool)

(assert (=> b!2511514 m!2870023))

(assert (=> b!2511513 m!2870015))

(assert (=> b!2511513 m!2870015))

(assert (=> b!2511513 m!2870017))

(assert (=> b!2511510 m!2870013))

(assert (=> b!2511510 m!2870013))

(declare-fun m!2870025 () Bool)

(assert (=> b!2511510 m!2870025))

(assert (=> b!2511510 m!2870015))

(assert (=> b!2511510 m!2870025))

(assert (=> b!2511510 m!2870015))

(declare-fun m!2870027 () Bool)

(assert (=> b!2511510 m!2870027))

(assert (=> bm!155827 m!2870019))

(assert (=> b!2511142 d!716726))

(declare-fun b!2511522 () Bool)

(declare-fun e!1591641 () Bool)

(declare-fun lt!897824 () Bool)

(assert (=> b!2511522 (= e!1591641 (not lt!897824))))

(declare-fun d!716736 () Bool)

(declare-fun e!1591643 () Bool)

(assert (=> d!716736 e!1591643))

(declare-fun c!400124 () Bool)

(assert (=> d!716736 (= c!400124 ((_ is EmptyExpr!7465) (derivative!160 lt!897762 tl!4068)))))

(declare-fun e!1591647 () Bool)

(assert (=> d!716736 (= lt!897824 e!1591647)))

(declare-fun c!400122 () Bool)

(assert (=> d!716736 (= c!400122 (isEmpty!16890 Nil!29430))))

(assert (=> d!716736 (validRegex!3091 (derivative!160 lt!897762 tl!4068))))

(assert (=> d!716736 (= (matchR!3464 (derivative!160 lt!897762 tl!4068) Nil!29430) lt!897824)))

(declare-fun b!2511523 () Bool)

(assert (=> b!2511523 (= e!1591643 e!1591641)))

(declare-fun c!400123 () Bool)

(assert (=> b!2511523 (= c!400123 ((_ is EmptyLang!7465) (derivative!160 lt!897762 tl!4068)))))

(declare-fun b!2511524 () Bool)

(assert (=> b!2511524 (= e!1591647 (matchR!3464 (derivativeStep!2034 (derivative!160 lt!897762 tl!4068) (head!5732 Nil!29430)) (tail!4009 Nil!29430)))))

(declare-fun b!2511525 () Bool)

(declare-fun e!1591645 () Bool)

(declare-fun e!1591644 () Bool)

(assert (=> b!2511525 (= e!1591645 e!1591644)))

(declare-fun res!1061690 () Bool)

(assert (=> b!2511525 (=> (not res!1061690) (not e!1591644))))

(assert (=> b!2511525 (= res!1061690 (not lt!897824))))

(declare-fun b!2511526 () Bool)

(declare-fun e!1591642 () Bool)

(assert (=> b!2511526 (= e!1591642 (= (head!5732 Nil!29430) (c!400023 (derivative!160 lt!897762 tl!4068))))))

(declare-fun b!2511527 () Bool)

(declare-fun res!1061688 () Bool)

(assert (=> b!2511527 (=> (not res!1061688) (not e!1591642))))

(assert (=> b!2511527 (= res!1061688 (isEmpty!16890 (tail!4009 Nil!29430)))))

(declare-fun b!2511528 () Bool)

(assert (=> b!2511528 (= e!1591647 (nullable!2382 (derivative!160 lt!897762 tl!4068)))))

(declare-fun b!2511529 () Bool)

(declare-fun e!1591646 () Bool)

(assert (=> b!2511529 (= e!1591644 e!1591646)))

(declare-fun res!1061693 () Bool)

(assert (=> b!2511529 (=> res!1061693 e!1591646)))

(declare-fun call!155833 () Bool)

(assert (=> b!2511529 (= res!1061693 call!155833)))

(declare-fun b!2511530 () Bool)

(assert (=> b!2511530 (= e!1591643 (= lt!897824 call!155833))))

(declare-fun b!2511531 () Bool)

(declare-fun res!1061692 () Bool)

(assert (=> b!2511531 (=> res!1061692 e!1591645)))

(assert (=> b!2511531 (= res!1061692 (not ((_ is ElementMatch!7465) (derivative!160 lt!897762 tl!4068))))))

(assert (=> b!2511531 (= e!1591641 e!1591645)))

(declare-fun b!2511532 () Bool)

(assert (=> b!2511532 (= e!1591646 (not (= (head!5732 Nil!29430) (c!400023 (derivative!160 lt!897762 tl!4068)))))))

(declare-fun bm!155828 () Bool)

(assert (=> bm!155828 (= call!155833 (isEmpty!16890 Nil!29430))))

(declare-fun b!2511533 () Bool)

(declare-fun res!1061694 () Bool)

(assert (=> b!2511533 (=> (not res!1061694) (not e!1591642))))

(assert (=> b!2511533 (= res!1061694 (not call!155833))))

(declare-fun b!2511534 () Bool)

(declare-fun res!1061689 () Bool)

(assert (=> b!2511534 (=> res!1061689 e!1591646)))

(assert (=> b!2511534 (= res!1061689 (not (isEmpty!16890 (tail!4009 Nil!29430))))))

(declare-fun b!2511535 () Bool)

(declare-fun res!1061687 () Bool)

(assert (=> b!2511535 (=> res!1061687 e!1591645)))

(assert (=> b!2511535 (= res!1061687 e!1591642)))

(declare-fun res!1061691 () Bool)

(assert (=> b!2511535 (=> (not res!1061691) (not e!1591642))))

(assert (=> b!2511535 (= res!1061691 lt!897824)))

(assert (= (and d!716736 c!400122) b!2511528))

(assert (= (and d!716736 (not c!400122)) b!2511524))

(assert (= (and d!716736 c!400124) b!2511530))

(assert (= (and d!716736 (not c!400124)) b!2511523))

(assert (= (and b!2511523 c!400123) b!2511522))

(assert (= (and b!2511523 (not c!400123)) b!2511531))

(assert (= (and b!2511531 (not res!1061692)) b!2511535))

(assert (= (and b!2511535 res!1061691) b!2511533))

(assert (= (and b!2511533 res!1061694) b!2511527))

(assert (= (and b!2511527 res!1061688) b!2511526))

(assert (= (and b!2511535 (not res!1061687)) b!2511525))

(assert (= (and b!2511525 res!1061690) b!2511529))

(assert (= (and b!2511529 (not res!1061693)) b!2511534))

(assert (= (and b!2511534 (not res!1061689)) b!2511532))

(assert (= (or b!2511530 b!2511529 b!2511533) bm!155828))

(declare-fun m!2870029 () Bool)

(assert (=> b!2511532 m!2870029))

(declare-fun m!2870031 () Bool)

(assert (=> b!2511534 m!2870031))

(assert (=> b!2511534 m!2870031))

(declare-fun m!2870033 () Bool)

(assert (=> b!2511534 m!2870033))

(assert (=> b!2511526 m!2870029))

(declare-fun m!2870035 () Bool)

(assert (=> d!716736 m!2870035))

(assert (=> d!716736 m!2869793))

(declare-fun m!2870037 () Bool)

(assert (=> d!716736 m!2870037))

(assert (=> b!2511528 m!2869793))

(declare-fun m!2870039 () Bool)

(assert (=> b!2511528 m!2870039))

(assert (=> b!2511527 m!2870031))

(assert (=> b!2511527 m!2870031))

(assert (=> b!2511527 m!2870033))

(assert (=> b!2511524 m!2870029))

(assert (=> b!2511524 m!2869793))

(assert (=> b!2511524 m!2870029))

(declare-fun m!2870041 () Bool)

(assert (=> b!2511524 m!2870041))

(assert (=> b!2511524 m!2870031))

(assert (=> b!2511524 m!2870041))

(assert (=> b!2511524 m!2870031))

(declare-fun m!2870043 () Bool)

(assert (=> b!2511524 m!2870043))

(assert (=> bm!155828 m!2870035))

(assert (=> b!2511141 d!716736))

(declare-fun d!716738 () Bool)

(declare-fun lt!897825 () Regex!7465)

(assert (=> d!716738 (validRegex!3091 lt!897825)))

(declare-fun e!1591648 () Regex!7465)

(assert (=> d!716738 (= lt!897825 e!1591648)))

(declare-fun c!400125 () Bool)

(assert (=> d!716738 (= c!400125 ((_ is Cons!29430) tl!4068))))

(assert (=> d!716738 (validRegex!3091 EmptyLang!7465)))

(assert (=> d!716738 (= (derivative!160 EmptyLang!7465 tl!4068) lt!897825)))

(declare-fun b!2511536 () Bool)

(assert (=> b!2511536 (= e!1591648 (derivative!160 (derivativeStep!2034 EmptyLang!7465 (h!34850 tl!4068)) (t!211229 tl!4068)))))

(declare-fun b!2511537 () Bool)

(assert (=> b!2511537 (= e!1591648 EmptyLang!7465)))

(assert (= (and d!716738 c!400125) b!2511536))

(assert (= (and d!716738 (not c!400125)) b!2511537))

(declare-fun m!2870045 () Bool)

(assert (=> d!716738 m!2870045))

(assert (=> d!716738 m!2870021))

(declare-fun m!2870047 () Bool)

(assert (=> b!2511536 m!2870047))

(assert (=> b!2511536 m!2870047))

(declare-fun m!2870049 () Bool)

(assert (=> b!2511536 m!2870049))

(assert (=> b!2511141 d!716738))

(declare-fun d!716740 () Bool)

(assert (=> d!716740 (= (derivative!160 EmptyLang!7465 tl!4068) EmptyLang!7465)))

(declare-fun lt!897828 () Unit!43179)

(declare-fun choose!14864 (Regex!7465 List!29530) Unit!43179)

(assert (=> d!716740 (= lt!897828 (choose!14864 EmptyLang!7465 tl!4068))))

(assert (=> d!716740 (= EmptyLang!7465 EmptyLang!7465)))

(assert (=> d!716740 (= (lemmaEmptyLangDerivativeIsAFixPoint!12 EmptyLang!7465 tl!4068) lt!897828)))

(declare-fun bs!468788 () Bool)

(assert (= bs!468788 d!716740))

(assert (=> bs!468788 m!2869787))

(declare-fun m!2870051 () Bool)

(assert (=> bs!468788 m!2870051))

(assert (=> b!2511141 d!716740))

(declare-fun d!716742 () Bool)

(declare-fun e!1591654 () Bool)

(assert (=> d!716742 e!1591654))

(declare-fun res!1061699 () Bool)

(assert (=> d!716742 (=> res!1061699 e!1591654)))

(assert (=> d!716742 (= res!1061699 (matchR!3464 lt!897763 tl!4068))))

(declare-fun lt!897831 () Unit!43179)

(declare-fun choose!14865 (Regex!7465 Regex!7465 List!29530) Unit!43179)

(assert (=> d!716742 (= lt!897831 (choose!14865 lt!897763 EmptyLang!7465 tl!4068))))

(declare-fun e!1591653 () Bool)

(assert (=> d!716742 e!1591653))

(declare-fun res!1061700 () Bool)

(assert (=> d!716742 (=> (not res!1061700) (not e!1591653))))

(assert (=> d!716742 (= res!1061700 (validRegex!3091 lt!897763))))

(assert (=> d!716742 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!152 lt!897763 EmptyLang!7465 tl!4068) lt!897831)))

(declare-fun b!2511542 () Bool)

(assert (=> b!2511542 (= e!1591653 (validRegex!3091 EmptyLang!7465))))

(declare-fun b!2511543 () Bool)

(assert (=> b!2511543 (= e!1591654 (matchR!3464 EmptyLang!7465 tl!4068))))

(assert (= (and d!716742 res!1061700) b!2511542))

(assert (= (and d!716742 (not res!1061699)) b!2511543))

(assert (=> d!716742 m!2869791))

(declare-fun m!2870053 () Bool)

(assert (=> d!716742 m!2870053))

(declare-fun m!2870055 () Bool)

(assert (=> d!716742 m!2870055))

(assert (=> b!2511542 m!2870021))

(assert (=> b!2511543 m!2869823))

(assert (=> b!2511141 d!716742))

(declare-fun b!2511544 () Bool)

(declare-fun e!1591655 () Bool)

(declare-fun lt!897832 () Bool)

(assert (=> b!2511544 (= e!1591655 (not lt!897832))))

(declare-fun d!716744 () Bool)

(declare-fun e!1591657 () Bool)

(assert (=> d!716744 e!1591657))

(declare-fun c!400128 () Bool)

(assert (=> d!716744 (= c!400128 ((_ is EmptyExpr!7465) lt!897762))))

(declare-fun e!1591661 () Bool)

(assert (=> d!716744 (= lt!897832 e!1591661)))

(declare-fun c!400126 () Bool)

(assert (=> d!716744 (= c!400126 (isEmpty!16890 tl!4068))))

(assert (=> d!716744 (validRegex!3091 lt!897762)))

(assert (=> d!716744 (= (matchR!3464 lt!897762 tl!4068) lt!897832)))

(declare-fun b!2511545 () Bool)

(assert (=> b!2511545 (= e!1591657 e!1591655)))

(declare-fun c!400127 () Bool)

(assert (=> b!2511545 (= c!400127 ((_ is EmptyLang!7465) lt!897762))))

(declare-fun b!2511546 () Bool)

(assert (=> b!2511546 (= e!1591661 (matchR!3464 (derivativeStep!2034 lt!897762 (head!5732 tl!4068)) (tail!4009 tl!4068)))))

(declare-fun b!2511547 () Bool)

(declare-fun e!1591659 () Bool)

(declare-fun e!1591658 () Bool)

(assert (=> b!2511547 (= e!1591659 e!1591658)))

(declare-fun res!1061704 () Bool)

(assert (=> b!2511547 (=> (not res!1061704) (not e!1591658))))

(assert (=> b!2511547 (= res!1061704 (not lt!897832))))

(declare-fun b!2511548 () Bool)

(declare-fun e!1591656 () Bool)

(assert (=> b!2511548 (= e!1591656 (= (head!5732 tl!4068) (c!400023 lt!897762)))))

(declare-fun b!2511549 () Bool)

(declare-fun res!1061702 () Bool)

(assert (=> b!2511549 (=> (not res!1061702) (not e!1591656))))

(assert (=> b!2511549 (= res!1061702 (isEmpty!16890 (tail!4009 tl!4068)))))

(declare-fun b!2511550 () Bool)

(assert (=> b!2511550 (= e!1591661 (nullable!2382 lt!897762))))

(declare-fun b!2511551 () Bool)

(declare-fun e!1591660 () Bool)

(assert (=> b!2511551 (= e!1591658 e!1591660)))

(declare-fun res!1061707 () Bool)

(assert (=> b!2511551 (=> res!1061707 e!1591660)))

(declare-fun call!155834 () Bool)

(assert (=> b!2511551 (= res!1061707 call!155834)))

(declare-fun b!2511552 () Bool)

(assert (=> b!2511552 (= e!1591657 (= lt!897832 call!155834))))

(declare-fun b!2511553 () Bool)

(declare-fun res!1061706 () Bool)

(assert (=> b!2511553 (=> res!1061706 e!1591659)))

(assert (=> b!2511553 (= res!1061706 (not ((_ is ElementMatch!7465) lt!897762)))))

(assert (=> b!2511553 (= e!1591655 e!1591659)))

(declare-fun b!2511554 () Bool)

(assert (=> b!2511554 (= e!1591660 (not (= (head!5732 tl!4068) (c!400023 lt!897762))))))

(declare-fun bm!155829 () Bool)

(assert (=> bm!155829 (= call!155834 (isEmpty!16890 tl!4068))))

(declare-fun b!2511555 () Bool)

(declare-fun res!1061708 () Bool)

(assert (=> b!2511555 (=> (not res!1061708) (not e!1591656))))

(assert (=> b!2511555 (= res!1061708 (not call!155834))))

(declare-fun b!2511556 () Bool)

(declare-fun res!1061703 () Bool)

(assert (=> b!2511556 (=> res!1061703 e!1591660)))

(assert (=> b!2511556 (= res!1061703 (not (isEmpty!16890 (tail!4009 tl!4068))))))

(declare-fun b!2511557 () Bool)

(declare-fun res!1061701 () Bool)

(assert (=> b!2511557 (=> res!1061701 e!1591659)))

(assert (=> b!2511557 (= res!1061701 e!1591656)))

(declare-fun res!1061705 () Bool)

(assert (=> b!2511557 (=> (not res!1061705) (not e!1591656))))

(assert (=> b!2511557 (= res!1061705 lt!897832)))

(assert (= (and d!716744 c!400126) b!2511550))

(assert (= (and d!716744 (not c!400126)) b!2511546))

(assert (= (and d!716744 c!400128) b!2511552))

(assert (= (and d!716744 (not c!400128)) b!2511545))

(assert (= (and b!2511545 c!400127) b!2511544))

(assert (= (and b!2511545 (not c!400127)) b!2511553))

(assert (= (and b!2511553 (not res!1061706)) b!2511557))

(assert (= (and b!2511557 res!1061705) b!2511555))

(assert (= (and b!2511555 res!1061708) b!2511549))

(assert (= (and b!2511549 res!1061702) b!2511548))

(assert (= (and b!2511557 (not res!1061701)) b!2511547))

(assert (= (and b!2511547 res!1061704) b!2511551))

(assert (= (and b!2511551 (not res!1061707)) b!2511556))

(assert (= (and b!2511556 (not res!1061703)) b!2511554))

(assert (= (or b!2511552 b!2511551 b!2511555) bm!155829))

(assert (=> b!2511554 m!2870013))

(assert (=> b!2511556 m!2870015))

(assert (=> b!2511556 m!2870015))

(assert (=> b!2511556 m!2870017))

(assert (=> b!2511548 m!2870013))

(assert (=> d!716744 m!2870019))

(declare-fun m!2870057 () Bool)

(assert (=> d!716744 m!2870057))

(declare-fun m!2870059 () Bool)

(assert (=> b!2511550 m!2870059))

(assert (=> b!2511549 m!2870015))

(assert (=> b!2511549 m!2870015))

(assert (=> b!2511549 m!2870017))

(assert (=> b!2511546 m!2870013))

(assert (=> b!2511546 m!2870013))

(declare-fun m!2870061 () Bool)

(assert (=> b!2511546 m!2870061))

(assert (=> b!2511546 m!2870015))

(assert (=> b!2511546 m!2870061))

(assert (=> b!2511546 m!2870015))

(declare-fun m!2870063 () Bool)

(assert (=> b!2511546 m!2870063))

(assert (=> bm!155829 m!2870019))

(assert (=> b!2511141 d!716744))

(declare-fun d!716746 () Bool)

(assert (=> d!716746 (= (matchR!3464 lt!897762 tl!4068) (matchR!3464 (derivative!160 lt!897762 tl!4068) Nil!29430))))

(declare-fun lt!897835 () Unit!43179)

(declare-fun choose!14866 (Regex!7465 List!29530) Unit!43179)

(assert (=> d!716746 (= lt!897835 (choose!14866 lt!897762 tl!4068))))

(assert (=> d!716746 (validRegex!3091 lt!897762)))

(assert (=> d!716746 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!110 lt!897762 tl!4068) lt!897835)))

(declare-fun bs!468789 () Bool)

(assert (= bs!468789 d!716746))

(assert (=> bs!468789 m!2869793))

(declare-fun m!2870065 () Bool)

(assert (=> bs!468789 m!2870065))

(assert (=> bs!468789 m!2870057))

(assert (=> bs!468789 m!2869793))

(assert (=> bs!468789 m!2869795))

(assert (=> bs!468789 m!2869789))

(assert (=> b!2511141 d!716746))

(declare-fun b!2511558 () Bool)

(declare-fun e!1591662 () Bool)

(declare-fun lt!897836 () Bool)

(assert (=> b!2511558 (= e!1591662 (not lt!897836))))

(declare-fun d!716748 () Bool)

(declare-fun e!1591664 () Bool)

(assert (=> d!716748 e!1591664))

(declare-fun c!400131 () Bool)

(assert (=> d!716748 (= c!400131 ((_ is EmptyExpr!7465) lt!897763))))

(declare-fun e!1591668 () Bool)

(assert (=> d!716748 (= lt!897836 e!1591668)))

(declare-fun c!400129 () Bool)

(assert (=> d!716748 (= c!400129 (isEmpty!16890 tl!4068))))

(assert (=> d!716748 (validRegex!3091 lt!897763)))

(assert (=> d!716748 (= (matchR!3464 lt!897763 tl!4068) lt!897836)))

(declare-fun b!2511559 () Bool)

(assert (=> b!2511559 (= e!1591664 e!1591662)))

(declare-fun c!400130 () Bool)

(assert (=> b!2511559 (= c!400130 ((_ is EmptyLang!7465) lt!897763))))

(declare-fun b!2511560 () Bool)

(assert (=> b!2511560 (= e!1591668 (matchR!3464 (derivativeStep!2034 lt!897763 (head!5732 tl!4068)) (tail!4009 tl!4068)))))

(declare-fun b!2511561 () Bool)

(declare-fun e!1591666 () Bool)

(declare-fun e!1591665 () Bool)

(assert (=> b!2511561 (= e!1591666 e!1591665)))

(declare-fun res!1061712 () Bool)

(assert (=> b!2511561 (=> (not res!1061712) (not e!1591665))))

(assert (=> b!2511561 (= res!1061712 (not lt!897836))))

(declare-fun b!2511562 () Bool)

(declare-fun e!1591663 () Bool)

(assert (=> b!2511562 (= e!1591663 (= (head!5732 tl!4068) (c!400023 lt!897763)))))

(declare-fun b!2511563 () Bool)

(declare-fun res!1061710 () Bool)

(assert (=> b!2511563 (=> (not res!1061710) (not e!1591663))))

(assert (=> b!2511563 (= res!1061710 (isEmpty!16890 (tail!4009 tl!4068)))))

(declare-fun b!2511564 () Bool)

(assert (=> b!2511564 (= e!1591668 (nullable!2382 lt!897763))))

(declare-fun b!2511565 () Bool)

(declare-fun e!1591667 () Bool)

(assert (=> b!2511565 (= e!1591665 e!1591667)))

(declare-fun res!1061715 () Bool)

(assert (=> b!2511565 (=> res!1061715 e!1591667)))

(declare-fun call!155835 () Bool)

(assert (=> b!2511565 (= res!1061715 call!155835)))

(declare-fun b!2511566 () Bool)

(assert (=> b!2511566 (= e!1591664 (= lt!897836 call!155835))))

(declare-fun b!2511567 () Bool)

(declare-fun res!1061714 () Bool)

(assert (=> b!2511567 (=> res!1061714 e!1591666)))

(assert (=> b!2511567 (= res!1061714 (not ((_ is ElementMatch!7465) lt!897763)))))

(assert (=> b!2511567 (= e!1591662 e!1591666)))

(declare-fun b!2511568 () Bool)

(assert (=> b!2511568 (= e!1591667 (not (= (head!5732 tl!4068) (c!400023 lt!897763))))))

(declare-fun bm!155830 () Bool)

(assert (=> bm!155830 (= call!155835 (isEmpty!16890 tl!4068))))

(declare-fun b!2511569 () Bool)

(declare-fun res!1061716 () Bool)

(assert (=> b!2511569 (=> (not res!1061716) (not e!1591663))))

(assert (=> b!2511569 (= res!1061716 (not call!155835))))

(declare-fun b!2511570 () Bool)

(declare-fun res!1061711 () Bool)

(assert (=> b!2511570 (=> res!1061711 e!1591667)))

(assert (=> b!2511570 (= res!1061711 (not (isEmpty!16890 (tail!4009 tl!4068))))))

(declare-fun b!2511571 () Bool)

(declare-fun res!1061709 () Bool)

(assert (=> b!2511571 (=> res!1061709 e!1591666)))

(assert (=> b!2511571 (= res!1061709 e!1591663)))

(declare-fun res!1061713 () Bool)

(assert (=> b!2511571 (=> (not res!1061713) (not e!1591663))))

(assert (=> b!2511571 (= res!1061713 lt!897836)))

(assert (= (and d!716748 c!400129) b!2511564))

(assert (= (and d!716748 (not c!400129)) b!2511560))

(assert (= (and d!716748 c!400131) b!2511566))

(assert (= (and d!716748 (not c!400131)) b!2511559))

(assert (= (and b!2511559 c!400130) b!2511558))

(assert (= (and b!2511559 (not c!400130)) b!2511567))

(assert (= (and b!2511567 (not res!1061714)) b!2511571))

(assert (= (and b!2511571 res!1061713) b!2511569))

(assert (= (and b!2511569 res!1061716) b!2511563))

(assert (= (and b!2511563 res!1061710) b!2511562))

(assert (= (and b!2511571 (not res!1061709)) b!2511561))

(assert (= (and b!2511561 res!1061712) b!2511565))

(assert (= (and b!2511565 (not res!1061715)) b!2511570))

(assert (= (and b!2511570 (not res!1061711)) b!2511568))

(assert (= (or b!2511566 b!2511565 b!2511569) bm!155830))

(assert (=> b!2511568 m!2870013))

(assert (=> b!2511570 m!2870015))

(assert (=> b!2511570 m!2870015))

(assert (=> b!2511570 m!2870017))

(assert (=> b!2511562 m!2870013))

(assert (=> d!716748 m!2870019))

(assert (=> d!716748 m!2870055))

(declare-fun m!2870067 () Bool)

(assert (=> b!2511564 m!2870067))

(assert (=> b!2511563 m!2870015))

(assert (=> b!2511563 m!2870015))

(assert (=> b!2511563 m!2870017))

(assert (=> b!2511560 m!2870013))

(assert (=> b!2511560 m!2870013))

(declare-fun m!2870069 () Bool)

(assert (=> b!2511560 m!2870069))

(assert (=> b!2511560 m!2870015))

(assert (=> b!2511560 m!2870069))

(assert (=> b!2511560 m!2870015))

(declare-fun m!2870071 () Bool)

(assert (=> b!2511560 m!2870071))

(assert (=> bm!155830 m!2870019))

(assert (=> b!2511141 d!716748))

(declare-fun d!716750 () Bool)

(declare-fun lt!897837 () Regex!7465)

(assert (=> d!716750 (validRegex!3091 lt!897837)))

(declare-fun e!1591669 () Regex!7465)

(assert (=> d!716750 (= lt!897837 e!1591669)))

(declare-fun c!400132 () Bool)

(assert (=> d!716750 (= c!400132 ((_ is Cons!29430) tl!4068))))

(assert (=> d!716750 (validRegex!3091 lt!897762)))

(assert (=> d!716750 (= (derivative!160 lt!897762 tl!4068) lt!897837)))

(declare-fun b!2511572 () Bool)

(assert (=> b!2511572 (= e!1591669 (derivative!160 (derivativeStep!2034 lt!897762 (h!34850 tl!4068)) (t!211229 tl!4068)))))

(declare-fun b!2511573 () Bool)

(assert (=> b!2511573 (= e!1591669 lt!897762)))

(assert (= (and d!716750 c!400132) b!2511572))

(assert (= (and d!716750 (not c!400132)) b!2511573))

(declare-fun m!2870073 () Bool)

(assert (=> d!716750 m!2870073))

(assert (=> d!716750 m!2870057))

(declare-fun m!2870075 () Bool)

(assert (=> b!2511572 m!2870075))

(assert (=> b!2511572 m!2870075))

(declare-fun m!2870077 () Bool)

(assert (=> b!2511572 m!2870077))

(assert (=> b!2511141 d!716750))

(declare-fun call!155836 () Regex!7465)

(declare-fun c!400133 () Bool)

(declare-fun bm!155831 () Bool)

(assert (=> bm!155831 (= call!155836 (derivativeStep!2034 (ite c!400133 (regOne!15443 (regOne!15442 r!27340)) (regTwo!15442 (regOne!15442 r!27340))) c!14016))))

(declare-fun b!2511574 () Bool)

(declare-fun e!1591671 () Regex!7465)

(declare-fun call!155838 () Regex!7465)

(assert (=> b!2511574 (= e!1591671 (Union!7465 (Concat!12161 call!155838 (regTwo!15442 (regOne!15442 r!27340))) EmptyLang!7465))))

(declare-fun b!2511575 () Bool)

(assert (=> b!2511575 (= c!400133 ((_ is Union!7465) (regOne!15442 r!27340)))))

(declare-fun e!1591674 () Regex!7465)

(declare-fun e!1591672 () Regex!7465)

(assert (=> b!2511575 (= e!1591674 e!1591672)))

(declare-fun bm!155832 () Bool)

(declare-fun call!155837 () Regex!7465)

(declare-fun c!400135 () Bool)

(assert (=> bm!155832 (= call!155837 (derivativeStep!2034 (ite c!400133 (regTwo!15443 (regOne!15442 r!27340)) (ite c!400135 (reg!7794 (regOne!15442 r!27340)) (regOne!15442 (regOne!15442 r!27340)))) c!14016))))

(declare-fun b!2511577 () Bool)

(assert (=> b!2511577 (= e!1591674 (ite (= c!14016 (c!400023 (regOne!15442 r!27340))) EmptyExpr!7465 EmptyLang!7465))))

(declare-fun b!2511578 () Bool)

(declare-fun c!400134 () Bool)

(assert (=> b!2511578 (= c!400134 (nullable!2382 (regOne!15442 (regOne!15442 r!27340))))))

(declare-fun e!1591670 () Regex!7465)

(assert (=> b!2511578 (= e!1591670 e!1591671)))

(declare-fun bm!155833 () Bool)

(declare-fun call!155839 () Regex!7465)

(assert (=> bm!155833 (= call!155839 call!155837)))

(declare-fun b!2511579 () Bool)

(assert (=> b!2511579 (= e!1591672 (Union!7465 call!155836 call!155837))))

(declare-fun b!2511580 () Bool)

(declare-fun e!1591673 () Regex!7465)

(assert (=> b!2511580 (= e!1591673 e!1591674)))

(declare-fun c!400136 () Bool)

(assert (=> b!2511580 (= c!400136 ((_ is ElementMatch!7465) (regOne!15442 r!27340)))))

(declare-fun bm!155834 () Bool)

(assert (=> bm!155834 (= call!155838 call!155839)))

(declare-fun b!2511581 () Bool)

(assert (=> b!2511581 (= e!1591673 EmptyLang!7465)))

(declare-fun b!2511576 () Bool)

(assert (=> b!2511576 (= e!1591672 e!1591670)))

(assert (=> b!2511576 (= c!400135 ((_ is Star!7465) (regOne!15442 r!27340)))))

(declare-fun d!716752 () Bool)

(declare-fun lt!897838 () Regex!7465)

(assert (=> d!716752 (validRegex!3091 lt!897838)))

(assert (=> d!716752 (= lt!897838 e!1591673)))

(declare-fun c!400137 () Bool)

(assert (=> d!716752 (= c!400137 (or ((_ is EmptyExpr!7465) (regOne!15442 r!27340)) ((_ is EmptyLang!7465) (regOne!15442 r!27340))))))

(assert (=> d!716752 (validRegex!3091 (regOne!15442 r!27340))))

(assert (=> d!716752 (= (derivativeStep!2034 (regOne!15442 r!27340) c!14016) lt!897838)))

(declare-fun b!2511582 () Bool)

(assert (=> b!2511582 (= e!1591670 (Concat!12161 call!155839 (regOne!15442 r!27340)))))

(declare-fun b!2511583 () Bool)

(assert (=> b!2511583 (= e!1591671 (Union!7465 (Concat!12161 call!155838 (regTwo!15442 (regOne!15442 r!27340))) call!155836))))

(assert (= (and d!716752 c!400137) b!2511581))

(assert (= (and d!716752 (not c!400137)) b!2511580))

(assert (= (and b!2511580 c!400136) b!2511577))

(assert (= (and b!2511580 (not c!400136)) b!2511575))

(assert (= (and b!2511575 c!400133) b!2511579))

(assert (= (and b!2511575 (not c!400133)) b!2511576))

(assert (= (and b!2511576 c!400135) b!2511582))

(assert (= (and b!2511576 (not c!400135)) b!2511578))

(assert (= (and b!2511578 c!400134) b!2511583))

(assert (= (and b!2511578 (not c!400134)) b!2511574))

(assert (= (or b!2511583 b!2511574) bm!155834))

(assert (= (or b!2511582 bm!155834) bm!155833))

(assert (= (or b!2511579 bm!155833) bm!155832))

(assert (= (or b!2511579 b!2511583) bm!155831))

(declare-fun m!2870079 () Bool)

(assert (=> bm!155831 m!2870079))

(declare-fun m!2870081 () Bool)

(assert (=> bm!155832 m!2870081))

(declare-fun m!2870083 () Bool)

(assert (=> b!2511578 m!2870083))

(declare-fun m!2870085 () Bool)

(assert (=> d!716752 m!2870085))

(declare-fun m!2870087 () Bool)

(assert (=> d!716752 m!2870087))

(assert (=> b!2511141 d!716752))

(declare-fun b!2511588 () Bool)

(declare-fun e!1591677 () Bool)

(declare-fun tp!803143 () Bool)

(assert (=> b!2511588 (= e!1591677 (and tp_is_empty!12785 tp!803143))))

(assert (=> b!2511139 (= tp!803097 e!1591677)))

(assert (= (and b!2511139 ((_ is Cons!29430) (t!211229 tl!4068))) b!2511588))

(declare-fun b!2511599 () Bool)

(declare-fun e!1591680 () Bool)

(assert (=> b!2511599 (= e!1591680 tp_is_empty!12785)))

(declare-fun b!2511602 () Bool)

(declare-fun tp!803157 () Bool)

(declare-fun tp!803158 () Bool)

(assert (=> b!2511602 (= e!1591680 (and tp!803157 tp!803158))))

(declare-fun b!2511601 () Bool)

(declare-fun tp!803156 () Bool)

(assert (=> b!2511601 (= e!1591680 tp!803156)))

(assert (=> b!2511138 (= tp!803100 e!1591680)))

(declare-fun b!2511600 () Bool)

(declare-fun tp!803154 () Bool)

(declare-fun tp!803155 () Bool)

(assert (=> b!2511600 (= e!1591680 (and tp!803154 tp!803155))))

(assert (= (and b!2511138 ((_ is ElementMatch!7465) (regOne!15442 r!27340))) b!2511599))

(assert (= (and b!2511138 ((_ is Concat!12161) (regOne!15442 r!27340))) b!2511600))

(assert (= (and b!2511138 ((_ is Star!7465) (regOne!15442 r!27340))) b!2511601))

(assert (= (and b!2511138 ((_ is Union!7465) (regOne!15442 r!27340))) b!2511602))

(declare-fun b!2511603 () Bool)

(declare-fun e!1591681 () Bool)

(assert (=> b!2511603 (= e!1591681 tp_is_empty!12785)))

(declare-fun b!2511606 () Bool)

(declare-fun tp!803162 () Bool)

(declare-fun tp!803163 () Bool)

(assert (=> b!2511606 (= e!1591681 (and tp!803162 tp!803163))))

(declare-fun b!2511605 () Bool)

(declare-fun tp!803161 () Bool)

(assert (=> b!2511605 (= e!1591681 tp!803161)))

(assert (=> b!2511138 (= tp!803101 e!1591681)))

(declare-fun b!2511604 () Bool)

(declare-fun tp!803159 () Bool)

(declare-fun tp!803160 () Bool)

(assert (=> b!2511604 (= e!1591681 (and tp!803159 tp!803160))))

(assert (= (and b!2511138 ((_ is ElementMatch!7465) (regTwo!15442 r!27340))) b!2511603))

(assert (= (and b!2511138 ((_ is Concat!12161) (regTwo!15442 r!27340))) b!2511604))

(assert (= (and b!2511138 ((_ is Star!7465) (regTwo!15442 r!27340))) b!2511605))

(assert (= (and b!2511138 ((_ is Union!7465) (regTwo!15442 r!27340))) b!2511606))

(declare-fun b!2511607 () Bool)

(declare-fun e!1591682 () Bool)

(assert (=> b!2511607 (= e!1591682 tp_is_empty!12785)))

(declare-fun b!2511610 () Bool)

(declare-fun tp!803167 () Bool)

(declare-fun tp!803168 () Bool)

(assert (=> b!2511610 (= e!1591682 (and tp!803167 tp!803168))))

(declare-fun b!2511609 () Bool)

(declare-fun tp!803166 () Bool)

(assert (=> b!2511609 (= e!1591682 tp!803166)))

(assert (=> b!2511136 (= tp!803099 e!1591682)))

(declare-fun b!2511608 () Bool)

(declare-fun tp!803164 () Bool)

(declare-fun tp!803165 () Bool)

(assert (=> b!2511608 (= e!1591682 (and tp!803164 tp!803165))))

(assert (= (and b!2511136 ((_ is ElementMatch!7465) (reg!7794 r!27340))) b!2511607))

(assert (= (and b!2511136 ((_ is Concat!12161) (reg!7794 r!27340))) b!2511608))

(assert (= (and b!2511136 ((_ is Star!7465) (reg!7794 r!27340))) b!2511609))

(assert (= (and b!2511136 ((_ is Union!7465) (reg!7794 r!27340))) b!2511610))

(declare-fun b!2511611 () Bool)

(declare-fun e!1591683 () Bool)

(assert (=> b!2511611 (= e!1591683 tp_is_empty!12785)))

(declare-fun b!2511614 () Bool)

(declare-fun tp!803172 () Bool)

(declare-fun tp!803173 () Bool)

(assert (=> b!2511614 (= e!1591683 (and tp!803172 tp!803173))))

(declare-fun b!2511613 () Bool)

(declare-fun tp!803171 () Bool)

(assert (=> b!2511613 (= e!1591683 tp!803171)))

(assert (=> b!2511140 (= tp!803098 e!1591683)))

(declare-fun b!2511612 () Bool)

(declare-fun tp!803169 () Bool)

(declare-fun tp!803170 () Bool)

(assert (=> b!2511612 (= e!1591683 (and tp!803169 tp!803170))))

(assert (= (and b!2511140 ((_ is ElementMatch!7465) (regOne!15443 r!27340))) b!2511611))

(assert (= (and b!2511140 ((_ is Concat!12161) (regOne!15443 r!27340))) b!2511612))

(assert (= (and b!2511140 ((_ is Star!7465) (regOne!15443 r!27340))) b!2511613))

(assert (= (and b!2511140 ((_ is Union!7465) (regOne!15443 r!27340))) b!2511614))

(declare-fun b!2511615 () Bool)

(declare-fun e!1591684 () Bool)

(assert (=> b!2511615 (= e!1591684 tp_is_empty!12785)))

(declare-fun b!2511618 () Bool)

(declare-fun tp!803177 () Bool)

(declare-fun tp!803178 () Bool)

(assert (=> b!2511618 (= e!1591684 (and tp!803177 tp!803178))))

(declare-fun b!2511617 () Bool)

(declare-fun tp!803176 () Bool)

(assert (=> b!2511617 (= e!1591684 tp!803176)))

(assert (=> b!2511140 (= tp!803102 e!1591684)))

(declare-fun b!2511616 () Bool)

(declare-fun tp!803174 () Bool)

(declare-fun tp!803175 () Bool)

(assert (=> b!2511616 (= e!1591684 (and tp!803174 tp!803175))))

(assert (= (and b!2511140 ((_ is ElementMatch!7465) (regTwo!15443 r!27340))) b!2511615))

(assert (= (and b!2511140 ((_ is Concat!12161) (regTwo!15443 r!27340))) b!2511616))

(assert (= (and b!2511140 ((_ is Star!7465) (regTwo!15443 r!27340))) b!2511617))

(assert (= (and b!2511140 ((_ is Union!7465) (regTwo!15443 r!27340))) b!2511618))

(check-sat (not b!2511604) (not b!2511554) (not bm!155831) (not b!2511564) (not bm!155828) (not b!2511363) (not b!2511543) (not b!2511520) (not b!2511550) (not b!2511514) (not b!2511578) (not bm!155802) (not b!2511549) (not bm!155829) (not b!2511271) (not d!716742) (not b!2511562) (not b!2511570) (not b!2511608) (not b!2511614) (not d!716752) (not d!716738) (not b!2511612) (not b!2511362) (not b!2511617) (not b!2511536) (not d!716712) (not b!2511618) (not d!716692) (not b!2511526) (not b!2511190) (not b!2511610) (not d!716704) (not b!2511600) (not b!2511556) (not b!2511528) (not b!2511510) (not b!2511527) (not b!2511563) (not bm!155827) (not d!716706) (not b!2511572) (not b!2511606) (not d!716746) (not d!716748) (not b!2511609) (not b!2511263) (not b!2511512) (not b!2511513) (not b!2511548) (not bm!155784) (not b!2511588) (not bm!155796) (not b!2511568) (not bm!155797) (not b!2511602) (not b!2511524) (not b!2511560) (not d!716690) (not bm!155830) (not bm!155782) (not b!2511365) (not b!2511367) (not b!2511534) tp_is_empty!12785 (not d!716686) (not b!2511361) (not b!2511366) (not d!716736) (not b!2511613) (not bm!155832) (not b!2511542) (not d!716740) (not b!2511546) (not d!716744) (not b!2511201) (not b!2511532) (not b!2511518) (not d!716688) (not d!716726) (not bm!155800) (not d!716750) (not b!2511601) (not b!2511616) (not b!2511605))
(check-sat)
