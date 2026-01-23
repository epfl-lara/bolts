; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83592 () Bool)

(assert start!83592)

(declare-fun b!935158 () Bool)

(assert (=> b!935158 true))

(assert (=> b!935158 true))

(assert (=> b!935158 true))

(declare-fun lambda!31016 () Int)

(declare-fun lambda!31015 () Int)

(assert (=> b!935158 (not (= lambda!31016 lambda!31015))))

(assert (=> b!935158 true))

(assert (=> b!935158 true))

(assert (=> b!935158 true))

(declare-fun e!607360 () Bool)

(declare-fun e!607358 () Bool)

(assert (=> b!935158 (= e!607360 e!607358)))

(declare-fun res!424637 () Bool)

(assert (=> b!935158 (=> res!424637 e!607358)))

(declare-datatypes ((C!5686 0))(
  ( (C!5687 (val!3091 Int)) )
))
(declare-datatypes ((Regex!2558 0))(
  ( (ElementMatch!2558 (c!152083 C!5686)) (Concat!4391 (regOne!5628 Regex!2558) (regTwo!5628 Regex!2558)) (EmptyExpr!2558) (Star!2558 (reg!2887 Regex!2558)) (EmptyLang!2558) (Union!2558 (regOne!5629 Regex!2558) (regTwo!5629 Regex!2558)) )
))
(declare-fun lt!341121 () Regex!2558)

(declare-datatypes ((List!9788 0))(
  ( (Nil!9772) (Cons!9772 (h!15173 C!5686) (t!100834 List!9788)) )
))
(declare-fun s!10566 () List!9788)

(declare-fun matchR!1096 (Regex!2558 List!9788) Bool)

(assert (=> b!935158 (= res!424637 (not (matchR!1096 lt!341121 s!10566)))))

(declare-fun r!15766 () Regex!2558)

(declare-fun removeUselessConcat!227 (Regex!2558) Regex!2558)

(assert (=> b!935158 (= lt!341121 (Star!2558 (removeUselessConcat!227 (reg!2887 r!15766))))))

(declare-fun Exists!309 (Int) Bool)

(assert (=> b!935158 (= (Exists!309 lambda!31015) (Exists!309 lambda!31016))))

(declare-datatypes ((Unit!14735 0))(
  ( (Unit!14736) )
))
(declare-fun lt!341122 () Unit!14735)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!53 (Regex!2558 List!9788) Unit!14735)

(assert (=> b!935158 (= lt!341122 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!53 (reg!2887 r!15766) s!10566))))

(declare-fun lt!341117 () Regex!2558)

(declare-datatypes ((tuple2!11014 0))(
  ( (tuple2!11015 (_1!6333 List!9788) (_2!6333 List!9788)) )
))
(declare-datatypes ((Option!2149 0))(
  ( (None!2148) (Some!2148 (v!19565 tuple2!11014)) )
))
(declare-fun isDefined!1791 (Option!2149) Bool)

(declare-fun findConcatSeparation!255 (Regex!2558 Regex!2558 List!9788 List!9788 List!9788) Option!2149)

(assert (=> b!935158 (= (isDefined!1791 (findConcatSeparation!255 (reg!2887 r!15766) lt!341117 Nil!9772 s!10566 s!10566)) (Exists!309 lambda!31015))))

(declare-fun lt!341116 () Unit!14735)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!255 (Regex!2558 Regex!2558 List!9788) Unit!14735)

(assert (=> b!935158 (= lt!341116 (lemmaFindConcatSeparationEquivalentToExists!255 (reg!2887 r!15766) lt!341117 s!10566))))

(assert (=> b!935158 (= lt!341117 (Star!2558 (reg!2887 r!15766)))))

(declare-fun b!935159 () Bool)

(declare-fun e!607361 () Bool)

(declare-fun tp!290102 () Bool)

(declare-fun tp!290105 () Bool)

(assert (=> b!935159 (= e!607361 (and tp!290102 tp!290105))))

(declare-fun b!935160 () Bool)

(declare-fun tp_is_empty!4759 () Bool)

(assert (=> b!935160 (= e!607361 tp_is_empty!4759)))

(declare-fun b!935161 () Bool)

(declare-fun e!607359 () Bool)

(declare-fun tp!290103 () Bool)

(assert (=> b!935161 (= e!607359 (and tp_is_empty!4759 tp!290103))))

(declare-fun b!935162 () Bool)

(declare-fun e!607362 () Bool)

(assert (=> b!935162 (= e!607362 (not e!607360))))

(declare-fun res!424635 () Bool)

(assert (=> b!935162 (=> res!424635 e!607360)))

(declare-fun lt!341120 () Bool)

(assert (=> b!935162 (= res!424635 (or lt!341120 (and (is-Concat!4391 r!15766) (is-EmptyExpr!2558 (regOne!5628 r!15766))) (and (is-Concat!4391 r!15766) (is-EmptyExpr!2558 (regTwo!5628 r!15766))) (is-Concat!4391 r!15766) (is-Union!2558 r!15766) (not (is-Star!2558 r!15766))))))

(declare-fun matchRSpec!359 (Regex!2558 List!9788) Bool)

(assert (=> b!935162 (= lt!341120 (matchRSpec!359 r!15766 s!10566))))

(assert (=> b!935162 (= lt!341120 (matchR!1096 r!15766 s!10566))))

(declare-fun lt!341119 () Unit!14735)

(declare-fun mainMatchTheorem!359 (Regex!2558 List!9788) Unit!14735)

(assert (=> b!935162 (= lt!341119 (mainMatchTheorem!359 r!15766 s!10566))))

(declare-fun res!424636 () Bool)

(assert (=> start!83592 (=> (not res!424636) (not e!607362))))

(declare-fun validRegex!1027 (Regex!2558) Bool)

(assert (=> start!83592 (= res!424636 (validRegex!1027 r!15766))))

(assert (=> start!83592 e!607362))

(assert (=> start!83592 e!607361))

(assert (=> start!83592 e!607359))

(declare-fun b!935163 () Bool)

(declare-fun tp!290101 () Bool)

(assert (=> b!935163 (= e!607361 tp!290101)))

(declare-fun b!935164 () Bool)

(declare-fun tp!290104 () Bool)

(declare-fun tp!290106 () Bool)

(assert (=> b!935164 (= e!607361 (and tp!290104 tp!290106))))

(declare-fun b!935165 () Bool)

(assert (=> b!935165 (= e!607358 (validRegex!1027 (reg!2887 r!15766)))))

(assert (=> b!935165 (matchRSpec!359 lt!341121 s!10566)))

(declare-fun lt!341118 () Unit!14735)

(assert (=> b!935165 (= lt!341118 (mainMatchTheorem!359 lt!341121 s!10566))))

(assert (= (and start!83592 res!424636) b!935162))

(assert (= (and b!935162 (not res!424635)) b!935158))

(assert (= (and b!935158 (not res!424637)) b!935165))

(assert (= (and start!83592 (is-ElementMatch!2558 r!15766)) b!935160))

(assert (= (and start!83592 (is-Concat!4391 r!15766)) b!935159))

(assert (= (and start!83592 (is-Star!2558 r!15766)) b!935163))

(assert (= (and start!83592 (is-Union!2558 r!15766)) b!935164))

(assert (= (and start!83592 (is-Cons!9772 s!10566)) b!935161))

(declare-fun m!1155065 () Bool)

(assert (=> b!935158 m!1155065))

(declare-fun m!1155067 () Bool)

(assert (=> b!935158 m!1155067))

(declare-fun m!1155069 () Bool)

(assert (=> b!935158 m!1155069))

(assert (=> b!935158 m!1155069))

(declare-fun m!1155071 () Bool)

(assert (=> b!935158 m!1155071))

(declare-fun m!1155073 () Bool)

(assert (=> b!935158 m!1155073))

(declare-fun m!1155075 () Bool)

(assert (=> b!935158 m!1155075))

(declare-fun m!1155077 () Bool)

(assert (=> b!935158 m!1155077))

(assert (=> b!935158 m!1155067))

(declare-fun m!1155079 () Bool)

(assert (=> b!935158 m!1155079))

(declare-fun m!1155081 () Bool)

(assert (=> b!935162 m!1155081))

(declare-fun m!1155083 () Bool)

(assert (=> b!935162 m!1155083))

(declare-fun m!1155085 () Bool)

(assert (=> b!935162 m!1155085))

(declare-fun m!1155087 () Bool)

(assert (=> start!83592 m!1155087))

(declare-fun m!1155089 () Bool)

(assert (=> b!935165 m!1155089))

(declare-fun m!1155091 () Bool)

(assert (=> b!935165 m!1155091))

(declare-fun m!1155093 () Bool)

(assert (=> b!935165 m!1155093))

(push 1)

(assert tp_is_empty!4759)

(assert (not b!935158))

(assert (not b!935165))

(assert (not b!935162))

(assert (not start!83592))

(assert (not b!935161))

(assert (not b!935159))

(assert (not b!935163))

(assert (not b!935164))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!237862 () Bool)

(declare-fun b!935268 () Bool)

(assert (= bs!237862 (and b!935268 b!935158)))

(declare-fun lambda!31029 () Int)

(assert (=> bs!237862 (not (= lambda!31029 lambda!31015))))

(assert (=> bs!237862 (= (= r!15766 lt!341117) (= lambda!31029 lambda!31016))))

(assert (=> b!935268 true))

(assert (=> b!935268 true))

(declare-fun bs!237863 () Bool)

(declare-fun b!935269 () Bool)

(assert (= bs!237863 (and b!935269 b!935158)))

(declare-fun lambda!31030 () Int)

(assert (=> bs!237863 (not (= lambda!31030 lambda!31015))))

(assert (=> bs!237863 (not (= lambda!31030 lambda!31016))))

(declare-fun bs!237864 () Bool)

(assert (= bs!237864 (and b!935269 b!935268)))

(assert (=> bs!237864 (not (= lambda!31030 lambda!31029))))

(assert (=> b!935269 true))

(assert (=> b!935269 true))

(declare-fun bm!57935 () Bool)

(declare-fun c!152097 () Bool)

(declare-fun call!57941 () Bool)

(assert (=> bm!57935 (= call!57941 (Exists!309 (ite c!152097 lambda!31029 lambda!31030)))))

(declare-fun b!935262 () Bool)

(declare-fun e!607418 () Bool)

(declare-fun e!607416 () Bool)

(assert (=> b!935262 (= e!607418 e!607416)))

(declare-fun res!424688 () Bool)

(assert (=> b!935262 (= res!424688 (not (is-EmptyLang!2558 r!15766)))))

(assert (=> b!935262 (=> (not res!424688) (not e!607416))))

(declare-fun b!935263 () Bool)

(declare-fun c!152099 () Bool)

(assert (=> b!935263 (= c!152099 (is-ElementMatch!2558 r!15766))))

(declare-fun e!607422 () Bool)

(assert (=> b!935263 (= e!607416 e!607422)))

(declare-fun b!935264 () Bool)

(declare-fun call!57940 () Bool)

(assert (=> b!935264 (= e!607418 call!57940)))

(declare-fun b!935265 () Bool)

(declare-fun e!607417 () Bool)

(declare-fun e!607421 () Bool)

(assert (=> b!935265 (= e!607417 e!607421)))

(declare-fun res!424687 () Bool)

(assert (=> b!935265 (= res!424687 (matchRSpec!359 (regOne!5629 r!15766) s!10566))))

(assert (=> b!935265 (=> res!424687 e!607421)))

(declare-fun b!935266 () Bool)

(declare-fun res!424689 () Bool)

(declare-fun e!607419 () Bool)

(assert (=> b!935266 (=> res!424689 e!607419)))

(assert (=> b!935266 (= res!424689 call!57940)))

(declare-fun e!607420 () Bool)

(assert (=> b!935266 (= e!607420 e!607419)))

(declare-fun b!935267 () Bool)

(assert (=> b!935267 (= e!607421 (matchRSpec!359 (regTwo!5629 r!15766) s!10566))))

(assert (=> b!935269 (= e!607420 call!57941)))

(declare-fun b!935270 () Bool)

(assert (=> b!935270 (= e!607417 e!607420)))

(assert (=> b!935270 (= c!152097 (is-Star!2558 r!15766))))

(declare-fun bm!57936 () Bool)

(declare-fun isEmpty!6009 (List!9788) Bool)

(assert (=> bm!57936 (= call!57940 (isEmpty!6009 s!10566))))

(declare-fun b!935271 () Bool)

(assert (=> b!935271 (= e!607422 (= s!10566 (Cons!9772 (c!152083 r!15766) Nil!9772)))))

(declare-fun b!935272 () Bool)

(declare-fun c!152098 () Bool)

(assert (=> b!935272 (= c!152098 (is-Union!2558 r!15766))))

(assert (=> b!935272 (= e!607422 e!607417)))

(assert (=> b!935268 (= e!607419 call!57941)))

(declare-fun d!281783 () Bool)

(declare-fun c!152100 () Bool)

(assert (=> d!281783 (= c!152100 (is-EmptyExpr!2558 r!15766))))

(assert (=> d!281783 (= (matchRSpec!359 r!15766 s!10566) e!607418)))

(assert (= (and d!281783 c!152100) b!935264))

(assert (= (and d!281783 (not c!152100)) b!935262))

(assert (= (and b!935262 res!424688) b!935263))

(assert (= (and b!935263 c!152099) b!935271))

(assert (= (and b!935263 (not c!152099)) b!935272))

(assert (= (and b!935272 c!152098) b!935265))

(assert (= (and b!935272 (not c!152098)) b!935270))

(assert (= (and b!935265 (not res!424687)) b!935267))

(assert (= (and b!935270 c!152097) b!935266))

(assert (= (and b!935270 (not c!152097)) b!935269))

(assert (= (and b!935266 (not res!424689)) b!935268))

(assert (= (or b!935268 b!935269) bm!57935))

(assert (= (or b!935264 b!935266) bm!57936))

(declare-fun m!1155125 () Bool)

(assert (=> bm!57935 m!1155125))

(declare-fun m!1155127 () Bool)

(assert (=> b!935265 m!1155127))

(declare-fun m!1155129 () Bool)

(assert (=> b!935267 m!1155129))

(declare-fun m!1155131 () Bool)

(assert (=> bm!57936 m!1155131))

(assert (=> b!935162 d!281783))

(declare-fun b!935319 () Bool)

(declare-fun e!607456 () Bool)

(declare-fun e!607453 () Bool)

(assert (=> b!935319 (= e!607456 e!607453)))

(declare-fun res!424721 () Bool)

(assert (=> b!935319 (=> res!424721 e!607453)))

(declare-fun call!57950 () Bool)

(assert (=> b!935319 (= res!424721 call!57950)))

(declare-fun b!935320 () Bool)

(declare-fun e!607455 () Bool)

(declare-fun lt!341146 () Bool)

(assert (=> b!935320 (= e!607455 (= lt!341146 call!57950))))

(declare-fun b!935321 () Bool)

(declare-fun res!424722 () Bool)

(declare-fun e!607452 () Bool)

(assert (=> b!935321 (=> res!424722 e!607452)))

(assert (=> b!935321 (= res!424722 (not (is-ElementMatch!2558 r!15766)))))

(declare-fun e!607451 () Bool)

(assert (=> b!935321 (= e!607451 e!607452)))

(declare-fun b!935322 () Bool)

(declare-fun e!607457 () Bool)

(declare-fun head!1696 (List!9788) C!5686)

(assert (=> b!935322 (= e!607457 (= (head!1696 s!10566) (c!152083 r!15766)))))

(declare-fun b!935323 () Bool)

(declare-fun e!607454 () Bool)

(declare-fun derivativeStep!543 (Regex!2558 C!5686) Regex!2558)

(declare-fun tail!1258 (List!9788) List!9788)

(assert (=> b!935323 (= e!607454 (matchR!1096 (derivativeStep!543 r!15766 (head!1696 s!10566)) (tail!1258 s!10566)))))

(declare-fun b!935324 () Bool)

(declare-fun res!424718 () Bool)

(assert (=> b!935324 (=> (not res!424718) (not e!607457))))

(assert (=> b!935324 (= res!424718 (not call!57950))))

(declare-fun b!935325 () Bool)

(assert (=> b!935325 (= e!607453 (not (= (head!1696 s!10566) (c!152083 r!15766))))))

(declare-fun b!935326 () Bool)

(declare-fun res!424720 () Bool)

(assert (=> b!935326 (=> res!424720 e!607453)))

(assert (=> b!935326 (= res!424720 (not (isEmpty!6009 (tail!1258 s!10566))))))

(declare-fun d!281787 () Bool)

(assert (=> d!281787 e!607455))

(declare-fun c!152111 () Bool)

(assert (=> d!281787 (= c!152111 (is-EmptyExpr!2558 r!15766))))

(assert (=> d!281787 (= lt!341146 e!607454)))

(declare-fun c!152112 () Bool)

(assert (=> d!281787 (= c!152112 (isEmpty!6009 s!10566))))

(assert (=> d!281787 (validRegex!1027 r!15766)))

(assert (=> d!281787 (= (matchR!1096 r!15766 s!10566) lt!341146)))

(declare-fun b!935327 () Bool)

(assert (=> b!935327 (= e!607451 (not lt!341146))))

(declare-fun b!935328 () Bool)

(declare-fun res!424719 () Bool)

(assert (=> b!935328 (=> (not res!424719) (not e!607457))))

(assert (=> b!935328 (= res!424719 (isEmpty!6009 (tail!1258 s!10566)))))

(declare-fun bm!57945 () Bool)

(assert (=> bm!57945 (= call!57950 (isEmpty!6009 s!10566))))

(declare-fun b!935329 () Bool)

(declare-fun res!424723 () Bool)

(assert (=> b!935329 (=> res!424723 e!607452)))

(assert (=> b!935329 (= res!424723 e!607457)))

(declare-fun res!424716 () Bool)

(assert (=> b!935329 (=> (not res!424716) (not e!607457))))

(assert (=> b!935329 (= res!424716 lt!341146)))

(declare-fun b!935330 () Bool)

(assert (=> b!935330 (= e!607452 e!607456)))

(declare-fun res!424717 () Bool)

(assert (=> b!935330 (=> (not res!424717) (not e!607456))))

(assert (=> b!935330 (= res!424717 (not lt!341146))))

(declare-fun b!935331 () Bool)

(declare-fun nullable!734 (Regex!2558) Bool)

(assert (=> b!935331 (= e!607454 (nullable!734 r!15766))))

(declare-fun b!935332 () Bool)

(assert (=> b!935332 (= e!607455 e!607451)))

(declare-fun c!152113 () Bool)

(assert (=> b!935332 (= c!152113 (is-EmptyLang!2558 r!15766))))

(assert (= (and d!281787 c!152112) b!935331))

(assert (= (and d!281787 (not c!152112)) b!935323))

(assert (= (and d!281787 c!152111) b!935320))

(assert (= (and d!281787 (not c!152111)) b!935332))

(assert (= (and b!935332 c!152113) b!935327))

(assert (= (and b!935332 (not c!152113)) b!935321))

(assert (= (and b!935321 (not res!424722)) b!935329))

(assert (= (and b!935329 res!424716) b!935324))

(assert (= (and b!935324 res!424718) b!935328))

(assert (= (and b!935328 res!424719) b!935322))

(assert (= (and b!935329 (not res!424723)) b!935330))

(assert (= (and b!935330 res!424717) b!935319))

(assert (= (and b!935319 (not res!424721)) b!935326))

(assert (= (and b!935326 (not res!424720)) b!935325))

(assert (= (or b!935320 b!935319 b!935324) bm!57945))

(assert (=> bm!57945 m!1155131))

(assert (=> d!281787 m!1155131))

(assert (=> d!281787 m!1155087))

(declare-fun m!1155145 () Bool)

(assert (=> b!935328 m!1155145))

(assert (=> b!935328 m!1155145))

(declare-fun m!1155147 () Bool)

(assert (=> b!935328 m!1155147))

(declare-fun m!1155149 () Bool)

(assert (=> b!935323 m!1155149))

(assert (=> b!935323 m!1155149))

(declare-fun m!1155151 () Bool)

(assert (=> b!935323 m!1155151))

(assert (=> b!935323 m!1155145))

(assert (=> b!935323 m!1155151))

(assert (=> b!935323 m!1155145))

(declare-fun m!1155153 () Bool)

(assert (=> b!935323 m!1155153))

(assert (=> b!935325 m!1155149))

(declare-fun m!1155155 () Bool)

(assert (=> b!935331 m!1155155))

(assert (=> b!935322 m!1155149))

(assert (=> b!935326 m!1155145))

(assert (=> b!935326 m!1155145))

(assert (=> b!935326 m!1155147))

(assert (=> b!935162 d!281787))

(declare-fun d!281793 () Bool)

(assert (=> d!281793 (= (matchR!1096 r!15766 s!10566) (matchRSpec!359 r!15766 s!10566))))

(declare-fun lt!341149 () Unit!14735)

(declare-fun choose!5757 (Regex!2558 List!9788) Unit!14735)

(assert (=> d!281793 (= lt!341149 (choose!5757 r!15766 s!10566))))

(assert (=> d!281793 (validRegex!1027 r!15766)))

(assert (=> d!281793 (= (mainMatchTheorem!359 r!15766 s!10566) lt!341149)))

(declare-fun bs!237865 () Bool)

(assert (= bs!237865 d!281793))

(assert (=> bs!237865 m!1155083))

(assert (=> bs!237865 m!1155081))

(declare-fun m!1155157 () Bool)

(assert (=> bs!237865 m!1155157))

(assert (=> bs!237865 m!1155087))

(assert (=> b!935162 d!281793))

(declare-fun b!935373 () Bool)

(declare-fun res!424743 () Bool)

(declare-fun e!607491 () Bool)

(assert (=> b!935373 (=> (not res!424743) (not e!607491))))

(declare-fun call!57958 () Bool)

(assert (=> b!935373 (= res!424743 call!57958)))

(declare-fun e!607489 () Bool)

(assert (=> b!935373 (= e!607489 e!607491)))

(declare-fun b!935374 () Bool)

(declare-fun e!607486 () Bool)

(declare-fun call!57959 () Bool)

(assert (=> b!935374 (= e!607486 call!57959)))

(declare-fun d!281795 () Bool)

(declare-fun res!424740 () Bool)

(declare-fun e!607487 () Bool)

(assert (=> d!281795 (=> res!424740 e!607487)))

(assert (=> d!281795 (= res!424740 (is-ElementMatch!2558 r!15766))))

(assert (=> d!281795 (= (validRegex!1027 r!15766) e!607487)))

(declare-fun b!935375 () Bool)

(declare-fun e!607492 () Bool)

(assert (=> b!935375 (= e!607487 e!607492)))

(declare-fun c!152126 () Bool)

(assert (=> b!935375 (= c!152126 (is-Star!2558 r!15766))))

(declare-fun b!935376 () Bool)

(declare-fun res!424744 () Bool)

(declare-fun e!607490 () Bool)

(assert (=> b!935376 (=> res!424744 e!607490)))

(assert (=> b!935376 (= res!424744 (not (is-Concat!4391 r!15766)))))

(assert (=> b!935376 (= e!607489 e!607490)))

(declare-fun bm!57952 () Bool)

(declare-fun call!57957 () Bool)

(assert (=> bm!57952 (= call!57957 call!57959)))

(declare-fun b!935377 () Bool)

(declare-fun e!607488 () Bool)

(assert (=> b!935377 (= e!607490 e!607488)))

(declare-fun res!424741 () Bool)

(assert (=> b!935377 (=> (not res!424741) (not e!607488))))

(assert (=> b!935377 (= res!424741 call!57958)))

(declare-fun b!935378 () Bool)

(assert (=> b!935378 (= e!607491 call!57957)))

(declare-fun bm!57953 () Bool)

(declare-fun c!152127 () Bool)

(assert (=> bm!57953 (= call!57958 (validRegex!1027 (ite c!152127 (regOne!5629 r!15766) (regOne!5628 r!15766))))))

(declare-fun b!935379 () Bool)

(assert (=> b!935379 (= e!607492 e!607489)))

(assert (=> b!935379 (= c!152127 (is-Union!2558 r!15766))))

(declare-fun b!935380 () Bool)

(assert (=> b!935380 (= e!607492 e!607486)))

(declare-fun res!424742 () Bool)

(assert (=> b!935380 (= res!424742 (not (nullable!734 (reg!2887 r!15766))))))

(assert (=> b!935380 (=> (not res!424742) (not e!607486))))

(declare-fun bm!57954 () Bool)

(assert (=> bm!57954 (= call!57959 (validRegex!1027 (ite c!152126 (reg!2887 r!15766) (ite c!152127 (regTwo!5629 r!15766) (regTwo!5628 r!15766)))))))

(declare-fun b!935381 () Bool)

(assert (=> b!935381 (= e!607488 call!57957)))

(assert (= (and d!281795 (not res!424740)) b!935375))

(assert (= (and b!935375 c!152126) b!935380))

(assert (= (and b!935375 (not c!152126)) b!935379))

(assert (= (and b!935380 res!424742) b!935374))

(assert (= (and b!935379 c!152127) b!935373))

(assert (= (and b!935379 (not c!152127)) b!935376))

(assert (= (and b!935373 res!424743) b!935378))

(assert (= (and b!935376 (not res!424744)) b!935377))

(assert (= (and b!935377 res!424741) b!935381))

(assert (= (or b!935378 b!935381) bm!57952))

(assert (= (or b!935373 b!935377) bm!57953))

(assert (= (or b!935374 bm!57952) bm!57954))

(declare-fun m!1155159 () Bool)

(assert (=> bm!57953 m!1155159))

(declare-fun m!1155161 () Bool)

(assert (=> b!935380 m!1155161))

(declare-fun m!1155163 () Bool)

(assert (=> bm!57954 m!1155163))

(assert (=> start!83592 d!281795))

(declare-fun b!935382 () Bool)

(declare-fun res!424748 () Bool)

(declare-fun e!607498 () Bool)

(assert (=> b!935382 (=> (not res!424748) (not e!607498))))

(declare-fun call!57961 () Bool)

(assert (=> b!935382 (= res!424748 call!57961)))

(declare-fun e!607496 () Bool)

(assert (=> b!935382 (= e!607496 e!607498)))

(declare-fun b!935383 () Bool)

(declare-fun e!607493 () Bool)

(declare-fun call!57962 () Bool)

(assert (=> b!935383 (= e!607493 call!57962)))

(declare-fun d!281797 () Bool)

(declare-fun res!424745 () Bool)

(declare-fun e!607494 () Bool)

(assert (=> d!281797 (=> res!424745 e!607494)))

(assert (=> d!281797 (= res!424745 (is-ElementMatch!2558 (reg!2887 r!15766)))))

(assert (=> d!281797 (= (validRegex!1027 (reg!2887 r!15766)) e!607494)))

(declare-fun b!935384 () Bool)

(declare-fun e!607499 () Bool)

(assert (=> b!935384 (= e!607494 e!607499)))

(declare-fun c!152128 () Bool)

(assert (=> b!935384 (= c!152128 (is-Star!2558 (reg!2887 r!15766)))))

(declare-fun b!935385 () Bool)

(declare-fun res!424749 () Bool)

(declare-fun e!607497 () Bool)

(assert (=> b!935385 (=> res!424749 e!607497)))

(assert (=> b!935385 (= res!424749 (not (is-Concat!4391 (reg!2887 r!15766))))))

(assert (=> b!935385 (= e!607496 e!607497)))

(declare-fun bm!57955 () Bool)

(declare-fun call!57960 () Bool)

(assert (=> bm!57955 (= call!57960 call!57962)))

(declare-fun b!935386 () Bool)

(declare-fun e!607495 () Bool)

(assert (=> b!935386 (= e!607497 e!607495)))

(declare-fun res!424746 () Bool)

(assert (=> b!935386 (=> (not res!424746) (not e!607495))))

(assert (=> b!935386 (= res!424746 call!57961)))

(declare-fun b!935387 () Bool)

(assert (=> b!935387 (= e!607498 call!57960)))

(declare-fun bm!57956 () Bool)

(declare-fun c!152129 () Bool)

(assert (=> bm!57956 (= call!57961 (validRegex!1027 (ite c!152129 (regOne!5629 (reg!2887 r!15766)) (regOne!5628 (reg!2887 r!15766)))))))

(declare-fun b!935388 () Bool)

(assert (=> b!935388 (= e!607499 e!607496)))

(assert (=> b!935388 (= c!152129 (is-Union!2558 (reg!2887 r!15766)))))

(declare-fun b!935389 () Bool)

(assert (=> b!935389 (= e!607499 e!607493)))

(declare-fun res!424747 () Bool)

(assert (=> b!935389 (= res!424747 (not (nullable!734 (reg!2887 (reg!2887 r!15766)))))))

(assert (=> b!935389 (=> (not res!424747) (not e!607493))))

(declare-fun bm!57957 () Bool)

(assert (=> bm!57957 (= call!57962 (validRegex!1027 (ite c!152128 (reg!2887 (reg!2887 r!15766)) (ite c!152129 (regTwo!5629 (reg!2887 r!15766)) (regTwo!5628 (reg!2887 r!15766))))))))

(declare-fun b!935390 () Bool)

(assert (=> b!935390 (= e!607495 call!57960)))

(assert (= (and d!281797 (not res!424745)) b!935384))

(assert (= (and b!935384 c!152128) b!935389))

(assert (= (and b!935384 (not c!152128)) b!935388))

(assert (= (and b!935389 res!424747) b!935383))

(assert (= (and b!935388 c!152129) b!935382))

(assert (= (and b!935388 (not c!152129)) b!935385))

(assert (= (and b!935382 res!424748) b!935387))

(assert (= (and b!935385 (not res!424749)) b!935386))

(assert (= (and b!935386 res!424746) b!935390))

(assert (= (or b!935387 b!935390) bm!57955))

(assert (= (or b!935382 b!935386) bm!57956))

(assert (= (or b!935383 bm!57955) bm!57957))

(declare-fun m!1155165 () Bool)

(assert (=> bm!57956 m!1155165))

(declare-fun m!1155167 () Bool)

(assert (=> b!935389 m!1155167))

(declare-fun m!1155169 () Bool)

(assert (=> bm!57957 m!1155169))

(assert (=> b!935165 d!281797))

(declare-fun bs!237866 () Bool)

(declare-fun b!935397 () Bool)

(assert (= bs!237866 (and b!935397 b!935158)))

(declare-fun lambda!31033 () Int)

(assert (=> bs!237866 (not (= lambda!31033 lambda!31015))))

(assert (=> bs!237866 (= (and (= (reg!2887 lt!341121) (reg!2887 r!15766)) (= lt!341121 lt!341117)) (= lambda!31033 lambda!31016))))

(declare-fun bs!237867 () Bool)

(assert (= bs!237867 (and b!935397 b!935268)))

(assert (=> bs!237867 (= (and (= (reg!2887 lt!341121) (reg!2887 r!15766)) (= lt!341121 r!15766)) (= lambda!31033 lambda!31029))))

(declare-fun bs!237868 () Bool)

(assert (= bs!237868 (and b!935397 b!935269)))

(assert (=> bs!237868 (not (= lambda!31033 lambda!31030))))

(assert (=> b!935397 true))

(assert (=> b!935397 true))

(declare-fun bs!237869 () Bool)

(declare-fun b!935398 () Bool)

(assert (= bs!237869 (and b!935398 b!935397)))

(declare-fun lambda!31034 () Int)

(assert (=> bs!237869 (not (= lambda!31034 lambda!31033))))

(declare-fun bs!237870 () Bool)

(assert (= bs!237870 (and b!935398 b!935268)))

(assert (=> bs!237870 (not (= lambda!31034 lambda!31029))))

(declare-fun bs!237871 () Bool)

(assert (= bs!237871 (and b!935398 b!935269)))

(assert (=> bs!237871 (= (and (= (regOne!5628 lt!341121) (regOne!5628 r!15766)) (= (regTwo!5628 lt!341121) (regTwo!5628 r!15766))) (= lambda!31034 lambda!31030))))

(declare-fun bs!237872 () Bool)

(assert (= bs!237872 (and b!935398 b!935158)))

(assert (=> bs!237872 (not (= lambda!31034 lambda!31015))))

(assert (=> bs!237872 (not (= lambda!31034 lambda!31016))))

(assert (=> b!935398 true))

(assert (=> b!935398 true))

(declare-fun c!152130 () Bool)

(declare-fun bm!57958 () Bool)

(declare-fun call!57964 () Bool)

(assert (=> bm!57958 (= call!57964 (Exists!309 (ite c!152130 lambda!31033 lambda!31034)))))

(declare-fun b!935391 () Bool)

(declare-fun e!607502 () Bool)

(declare-fun e!607500 () Bool)

(assert (=> b!935391 (= e!607502 e!607500)))

(declare-fun res!424751 () Bool)

(assert (=> b!935391 (= res!424751 (not (is-EmptyLang!2558 lt!341121)))))

(assert (=> b!935391 (=> (not res!424751) (not e!607500))))

(declare-fun b!935392 () Bool)

(declare-fun c!152132 () Bool)

(assert (=> b!935392 (= c!152132 (is-ElementMatch!2558 lt!341121))))

(declare-fun e!607506 () Bool)

(assert (=> b!935392 (= e!607500 e!607506)))

(declare-fun b!935393 () Bool)

(declare-fun call!57963 () Bool)

(assert (=> b!935393 (= e!607502 call!57963)))

(declare-fun b!935394 () Bool)

(declare-fun e!607501 () Bool)

(declare-fun e!607505 () Bool)

(assert (=> b!935394 (= e!607501 e!607505)))

(declare-fun res!424750 () Bool)

(assert (=> b!935394 (= res!424750 (matchRSpec!359 (regOne!5629 lt!341121) s!10566))))

(assert (=> b!935394 (=> res!424750 e!607505)))

(declare-fun b!935395 () Bool)

(declare-fun res!424752 () Bool)

(declare-fun e!607503 () Bool)

(assert (=> b!935395 (=> res!424752 e!607503)))

(assert (=> b!935395 (= res!424752 call!57963)))

(declare-fun e!607504 () Bool)

(assert (=> b!935395 (= e!607504 e!607503)))

(declare-fun b!935396 () Bool)

(assert (=> b!935396 (= e!607505 (matchRSpec!359 (regTwo!5629 lt!341121) s!10566))))

(assert (=> b!935398 (= e!607504 call!57964)))

(declare-fun b!935399 () Bool)

(assert (=> b!935399 (= e!607501 e!607504)))

(assert (=> b!935399 (= c!152130 (is-Star!2558 lt!341121))))

(declare-fun bm!57959 () Bool)

(assert (=> bm!57959 (= call!57963 (isEmpty!6009 s!10566))))

(declare-fun b!935400 () Bool)

(assert (=> b!935400 (= e!607506 (= s!10566 (Cons!9772 (c!152083 lt!341121) Nil!9772)))))

(declare-fun b!935401 () Bool)

(declare-fun c!152131 () Bool)

(assert (=> b!935401 (= c!152131 (is-Union!2558 lt!341121))))

(assert (=> b!935401 (= e!607506 e!607501)))

(assert (=> b!935397 (= e!607503 call!57964)))

(declare-fun d!281799 () Bool)

(declare-fun c!152133 () Bool)

(assert (=> d!281799 (= c!152133 (is-EmptyExpr!2558 lt!341121))))

(assert (=> d!281799 (= (matchRSpec!359 lt!341121 s!10566) e!607502)))

(assert (= (and d!281799 c!152133) b!935393))

(assert (= (and d!281799 (not c!152133)) b!935391))

(assert (= (and b!935391 res!424751) b!935392))

(assert (= (and b!935392 c!152132) b!935400))

(assert (= (and b!935392 (not c!152132)) b!935401))

(assert (= (and b!935401 c!152131) b!935394))

(assert (= (and b!935401 (not c!152131)) b!935399))

(assert (= (and b!935394 (not res!424750)) b!935396))

(assert (= (and b!935399 c!152130) b!935395))

(assert (= (and b!935399 (not c!152130)) b!935398))

(assert (= (and b!935395 (not res!424752)) b!935397))

(assert (= (or b!935397 b!935398) bm!57958))

(assert (= (or b!935393 b!935395) bm!57959))

(declare-fun m!1155171 () Bool)

(assert (=> bm!57958 m!1155171))

(declare-fun m!1155173 () Bool)

(assert (=> b!935394 m!1155173))

(declare-fun m!1155175 () Bool)

(assert (=> b!935396 m!1155175))

(assert (=> bm!57959 m!1155131))

(assert (=> b!935165 d!281799))

(declare-fun d!281801 () Bool)

(assert (=> d!281801 (= (matchR!1096 lt!341121 s!10566) (matchRSpec!359 lt!341121 s!10566))))

(declare-fun lt!341150 () Unit!14735)

(assert (=> d!281801 (= lt!341150 (choose!5757 lt!341121 s!10566))))

(assert (=> d!281801 (validRegex!1027 lt!341121)))

(assert (=> d!281801 (= (mainMatchTheorem!359 lt!341121 s!10566) lt!341150)))

(declare-fun bs!237873 () Bool)

(assert (= bs!237873 d!281801))

(assert (=> bs!237873 m!1155073))

(assert (=> bs!237873 m!1155091))

(declare-fun m!1155177 () Bool)

(assert (=> bs!237873 m!1155177))

(declare-fun m!1155179 () Bool)

(assert (=> bs!237873 m!1155179))

(assert (=> b!935165 d!281801))

(declare-fun d!281803 () Bool)

(declare-fun choose!5758 (Int) Bool)

(assert (=> d!281803 (= (Exists!309 lambda!31016) (choose!5758 lambda!31016))))

(declare-fun bs!237874 () Bool)

(assert (= bs!237874 d!281803))

(declare-fun m!1155181 () Bool)

(assert (=> bs!237874 m!1155181))

(assert (=> b!935158 d!281803))

(declare-fun bs!237875 () Bool)

(declare-fun d!281805 () Bool)

(assert (= bs!237875 (and d!281805 b!935268)))

(declare-fun lambda!31039 () Int)

(assert (=> bs!237875 (not (= lambda!31039 lambda!31029))))

(declare-fun bs!237876 () Bool)

(assert (= bs!237876 (and d!281805 b!935269)))

(assert (=> bs!237876 (not (= lambda!31039 lambda!31030))))

(declare-fun bs!237877 () Bool)

(assert (= bs!237877 (and d!281805 b!935158)))

(assert (=> bs!237877 (= lambda!31039 lambda!31015)))

(assert (=> bs!237877 (not (= lambda!31039 lambda!31016))))

(declare-fun bs!237878 () Bool)

(assert (= bs!237878 (and d!281805 b!935398)))

(assert (=> bs!237878 (not (= lambda!31039 lambda!31034))))

(declare-fun bs!237879 () Bool)

(assert (= bs!237879 (and d!281805 b!935397)))

(assert (=> bs!237879 (not (= lambda!31039 lambda!31033))))

(assert (=> d!281805 true))

(assert (=> d!281805 true))

(assert (=> d!281805 true))

(assert (=> d!281805 (= (isDefined!1791 (findConcatSeparation!255 (reg!2887 r!15766) lt!341117 Nil!9772 s!10566 s!10566)) (Exists!309 lambda!31039))))

(declare-fun lt!341153 () Unit!14735)

(declare-fun choose!5759 (Regex!2558 Regex!2558 List!9788) Unit!14735)

(assert (=> d!281805 (= lt!341153 (choose!5759 (reg!2887 r!15766) lt!341117 s!10566))))

(assert (=> d!281805 (validRegex!1027 (reg!2887 r!15766))))

(assert (=> d!281805 (= (lemmaFindConcatSeparationEquivalentToExists!255 (reg!2887 r!15766) lt!341117 s!10566) lt!341153)))

(declare-fun bs!237880 () Bool)

(assert (= bs!237880 d!281805))

(declare-fun m!1155183 () Bool)

(assert (=> bs!237880 m!1155183))

(assert (=> bs!237880 m!1155069))

(assert (=> bs!237880 m!1155071))

(declare-fun m!1155185 () Bool)

(assert (=> bs!237880 m!1155185))

(assert (=> bs!237880 m!1155069))

(assert (=> bs!237880 m!1155089))

(assert (=> b!935158 d!281805))

(declare-fun bs!237884 () Bool)

(declare-fun d!281807 () Bool)

(assert (= bs!237884 (and d!281807 b!935268)))

(declare-fun lambda!31046 () Int)

(assert (=> bs!237884 (not (= lambda!31046 lambda!31029))))

(declare-fun bs!237885 () Bool)

(assert (= bs!237885 (and d!281807 b!935269)))

(assert (=> bs!237885 (not (= lambda!31046 lambda!31030))))

(declare-fun bs!237886 () Bool)

(assert (= bs!237886 (and d!281807 b!935158)))

(assert (=> bs!237886 (= (= (Star!2558 (reg!2887 r!15766)) lt!341117) (= lambda!31046 lambda!31015))))

(assert (=> bs!237886 (not (= lambda!31046 lambda!31016))))

(declare-fun bs!237887 () Bool)

(assert (= bs!237887 (and d!281807 d!281805)))

(assert (=> bs!237887 (= (= (Star!2558 (reg!2887 r!15766)) lt!341117) (= lambda!31046 lambda!31039))))

(declare-fun bs!237888 () Bool)

(assert (= bs!237888 (and d!281807 b!935398)))

(assert (=> bs!237888 (not (= lambda!31046 lambda!31034))))

(declare-fun bs!237889 () Bool)

(assert (= bs!237889 (and d!281807 b!935397)))

(assert (=> bs!237889 (not (= lambda!31046 lambda!31033))))

(assert (=> d!281807 true))

(assert (=> d!281807 true))

(declare-fun lambda!31047 () Int)

(assert (=> bs!237884 (= (= (Star!2558 (reg!2887 r!15766)) r!15766) (= lambda!31047 lambda!31029))))

(declare-fun bs!237890 () Bool)

(assert (= bs!237890 d!281807))

(assert (=> bs!237890 (not (= lambda!31047 lambda!31046))))

(assert (=> bs!237885 (not (= lambda!31047 lambda!31030))))

(assert (=> bs!237886 (not (= lambda!31047 lambda!31015))))

(assert (=> bs!237886 (= (= (Star!2558 (reg!2887 r!15766)) lt!341117) (= lambda!31047 lambda!31016))))

(assert (=> bs!237887 (not (= lambda!31047 lambda!31039))))

(assert (=> bs!237888 (not (= lambda!31047 lambda!31034))))

(assert (=> bs!237889 (= (and (= (reg!2887 r!15766) (reg!2887 lt!341121)) (= (Star!2558 (reg!2887 r!15766)) lt!341121)) (= lambda!31047 lambda!31033))))

(assert (=> d!281807 true))

(assert (=> d!281807 true))

(assert (=> d!281807 (= (Exists!309 lambda!31046) (Exists!309 lambda!31047))))

(declare-fun lt!341156 () Unit!14735)

(declare-fun choose!5760 (Regex!2558 List!9788) Unit!14735)

(assert (=> d!281807 (= lt!341156 (choose!5760 (reg!2887 r!15766) s!10566))))

(assert (=> d!281807 (validRegex!1027 (reg!2887 r!15766))))

(assert (=> d!281807 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!53 (reg!2887 r!15766) s!10566) lt!341156)))

(declare-fun m!1155195 () Bool)

(assert (=> bs!237890 m!1155195))

(declare-fun m!1155197 () Bool)

(assert (=> bs!237890 m!1155197))

(declare-fun m!1155199 () Bool)

(assert (=> bs!237890 m!1155199))

(assert (=> bs!237890 m!1155089))

(assert (=> b!935158 d!281807))

(declare-fun b!935455 () Bool)

(declare-fun e!607538 () Bool)

(declare-fun lt!341168 () Option!2149)

(assert (=> b!935455 (= e!607538 (not (isDefined!1791 lt!341168)))))

(declare-fun b!935456 () Bool)

(declare-fun e!607535 () Option!2149)

(assert (=> b!935456 (= e!607535 None!2148)))

(declare-fun b!935457 () Bool)

(declare-fun res!424790 () Bool)

(declare-fun e!607534 () Bool)

(assert (=> b!935457 (=> (not res!424790) (not e!607534))))

(declare-fun get!3225 (Option!2149) tuple2!11014)

(assert (=> b!935457 (= res!424790 (matchR!1096 lt!341117 (_2!6333 (get!3225 lt!341168))))))

(declare-fun b!935458 () Bool)

(declare-fun e!607536 () Option!2149)

(assert (=> b!935458 (= e!607536 e!607535)))

(declare-fun c!152143 () Bool)

(assert (=> b!935458 (= c!152143 (is-Nil!9772 s!10566))))

(declare-fun b!935459 () Bool)

(declare-fun res!424792 () Bool)

(assert (=> b!935459 (=> (not res!424792) (not e!607534))))

(assert (=> b!935459 (= res!424792 (matchR!1096 (reg!2887 r!15766) (_1!6333 (get!3225 lt!341168))))))

(declare-fun d!281811 () Bool)

(assert (=> d!281811 e!607538))

(declare-fun res!424791 () Bool)

(assert (=> d!281811 (=> res!424791 e!607538)))

(assert (=> d!281811 (= res!424791 e!607534)))

(declare-fun res!424793 () Bool)

(assert (=> d!281811 (=> (not res!424793) (not e!607534))))

(assert (=> d!281811 (= res!424793 (isDefined!1791 lt!341168))))

(assert (=> d!281811 (= lt!341168 e!607536)))

(declare-fun c!152142 () Bool)

(declare-fun e!607537 () Bool)

(assert (=> d!281811 (= c!152142 e!607537)))

(declare-fun res!424794 () Bool)

(assert (=> d!281811 (=> (not res!424794) (not e!607537))))

(assert (=> d!281811 (= res!424794 (matchR!1096 (reg!2887 r!15766) Nil!9772))))

(assert (=> d!281811 (validRegex!1027 (reg!2887 r!15766))))

(assert (=> d!281811 (= (findConcatSeparation!255 (reg!2887 r!15766) lt!341117 Nil!9772 s!10566 s!10566) lt!341168)))

(declare-fun b!935460 () Bool)

(declare-fun lt!341166 () Unit!14735)

(declare-fun lt!341167 () Unit!14735)

(assert (=> b!935460 (= lt!341166 lt!341167)))

(declare-fun ++!2586 (List!9788 List!9788) List!9788)

(assert (=> b!935460 (= (++!2586 (++!2586 Nil!9772 (Cons!9772 (h!15173 s!10566) Nil!9772)) (t!100834 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!199 (List!9788 C!5686 List!9788 List!9788) Unit!14735)

(assert (=> b!935460 (= lt!341167 (lemmaMoveElementToOtherListKeepsConcatEq!199 Nil!9772 (h!15173 s!10566) (t!100834 s!10566) s!10566))))

(assert (=> b!935460 (= e!607535 (findConcatSeparation!255 (reg!2887 r!15766) lt!341117 (++!2586 Nil!9772 (Cons!9772 (h!15173 s!10566) Nil!9772)) (t!100834 s!10566) s!10566))))

(declare-fun b!935461 () Bool)

(assert (=> b!935461 (= e!607537 (matchR!1096 lt!341117 s!10566))))

(declare-fun b!935462 () Bool)

(assert (=> b!935462 (= e!607534 (= (++!2586 (_1!6333 (get!3225 lt!341168)) (_2!6333 (get!3225 lt!341168))) s!10566))))

(declare-fun b!935463 () Bool)

(assert (=> b!935463 (= e!607536 (Some!2148 (tuple2!11015 Nil!9772 s!10566)))))

(assert (= (and d!281811 res!424794) b!935461))

(assert (= (and d!281811 c!152142) b!935463))

(assert (= (and d!281811 (not c!152142)) b!935458))

(assert (= (and b!935458 c!152143) b!935456))

(assert (= (and b!935458 (not c!152143)) b!935460))

(assert (= (and d!281811 res!424793) b!935459))

(assert (= (and b!935459 res!424792) b!935457))

(assert (= (and b!935457 res!424790) b!935462))

(assert (= (and d!281811 (not res!424791)) b!935455))

(declare-fun m!1155207 () Bool)

(assert (=> b!935455 m!1155207))

(declare-fun m!1155209 () Bool)

(assert (=> b!935461 m!1155209))

(declare-fun m!1155211 () Bool)

(assert (=> b!935457 m!1155211))

(declare-fun m!1155213 () Bool)

(assert (=> b!935457 m!1155213))

(assert (=> b!935459 m!1155211))

(declare-fun m!1155215 () Bool)

(assert (=> b!935459 m!1155215))

(declare-fun m!1155217 () Bool)

(assert (=> b!935460 m!1155217))

(assert (=> b!935460 m!1155217))

(declare-fun m!1155219 () Bool)

(assert (=> b!935460 m!1155219))

(declare-fun m!1155221 () Bool)

(assert (=> b!935460 m!1155221))

(assert (=> b!935460 m!1155217))

(declare-fun m!1155223 () Bool)

(assert (=> b!935460 m!1155223))

(assert (=> b!935462 m!1155211))

(declare-fun m!1155225 () Bool)

(assert (=> b!935462 m!1155225))

(assert (=> d!281811 m!1155207))

(declare-fun m!1155227 () Bool)

(assert (=> d!281811 m!1155227))

(assert (=> d!281811 m!1155089))

(assert (=> b!935158 d!281811))

(declare-fun d!281817 () Bool)

(assert (=> d!281817 (= (Exists!309 lambda!31015) (choose!5758 lambda!31015))))

(declare-fun bs!237893 () Bool)

(assert (= bs!237893 d!281817))

(declare-fun m!1155229 () Bool)

(assert (=> bs!237893 m!1155229))

(assert (=> b!935158 d!281817))

(declare-fun b!935514 () Bool)

(declare-fun c!152160 () Bool)

(assert (=> b!935514 (= c!152160 (is-Star!2558 (reg!2887 r!15766)))))

(declare-fun e!607565 () Regex!2558)

(declare-fun e!607567 () Regex!2558)

(assert (=> b!935514 (= e!607565 e!607567)))

(declare-fun c!152162 () Bool)

(declare-fun call!57985 () Regex!2558)

(declare-fun c!152161 () Bool)

(declare-fun bm!57978 () Bool)

(declare-fun c!152164 () Bool)

(declare-fun c!152163 () Bool)

(assert (=> bm!57978 (= call!57985 (removeUselessConcat!227 (ite c!152164 (regTwo!5628 (reg!2887 r!15766)) (ite c!152163 (regOne!5628 (reg!2887 r!15766)) (ite c!152161 (regTwo!5628 (reg!2887 r!15766)) (ite c!152162 (regTwo!5629 (reg!2887 r!15766)) (reg!2887 (reg!2887 r!15766))))))))))

(declare-fun b!935515 () Bool)

(declare-fun e!607569 () Regex!2558)

(assert (=> b!935515 (= e!607569 e!607565)))

(assert (=> b!935515 (= c!152162 (is-Union!2558 (reg!2887 r!15766)))))

(declare-fun bm!57979 () Bool)

(declare-fun call!57986 () Regex!2558)

(assert (=> bm!57979 (= call!57986 call!57985)))

(declare-fun b!935516 () Bool)

(declare-fun e!607566 () Bool)

(declare-fun lt!341173 () Regex!2558)

(assert (=> b!935516 (= e!607566 (= (nullable!734 lt!341173) (nullable!734 (reg!2887 r!15766))))))

(declare-fun b!935517 () Bool)

(declare-fun e!607570 () Regex!2558)

(declare-fun e!607568 () Regex!2558)

(assert (=> b!935517 (= e!607570 e!607568)))

(assert (=> b!935517 (= c!152163 (and (is-Concat!4391 (reg!2887 r!15766)) (is-EmptyExpr!2558 (regTwo!5628 (reg!2887 r!15766)))))))

(declare-fun d!281819 () Bool)

(assert (=> d!281819 e!607566))

(declare-fun res!424813 () Bool)

(assert (=> d!281819 (=> (not res!424813) (not e!607566))))

(assert (=> d!281819 (= res!424813 (validRegex!1027 lt!341173))))

(assert (=> d!281819 (= lt!341173 e!607570)))

(assert (=> d!281819 (= c!152164 (and (is-Concat!4391 (reg!2887 r!15766)) (is-EmptyExpr!2558 (regOne!5628 (reg!2887 r!15766)))))))

(assert (=> d!281819 (validRegex!1027 (reg!2887 r!15766))))

(assert (=> d!281819 (= (removeUselessConcat!227 (reg!2887 r!15766)) lt!341173)))

(declare-fun bm!57980 () Bool)

(declare-fun call!57987 () Regex!2558)

(declare-fun call!57984 () Regex!2558)

(assert (=> bm!57980 (= call!57987 call!57984)))

(declare-fun bm!57981 () Bool)

(declare-fun call!57983 () Regex!2558)

(assert (=> bm!57981 (= call!57983 (removeUselessConcat!227 (ite c!152161 (regOne!5628 (reg!2887 r!15766)) (regOne!5629 (reg!2887 r!15766)))))))

(declare-fun b!935518 () Bool)

(assert (=> b!935518 (= e!607570 call!57985)))

(declare-fun b!935519 () Bool)

(assert (=> b!935519 (= e!607569 (Concat!4391 call!57983 call!57984))))

(declare-fun b!935520 () Bool)

(assert (=> b!935520 (= e!607565 (Union!2558 call!57983 call!57987))))

(declare-fun b!935521 () Bool)

(assert (=> b!935521 (= e!607568 call!57986)))

(declare-fun b!935522 () Bool)

(assert (=> b!935522 (= c!152161 (is-Concat!4391 (reg!2887 r!15766)))))

(assert (=> b!935522 (= e!607568 e!607569)))

(declare-fun b!935523 () Bool)

(assert (=> b!935523 (= e!607567 (Star!2558 call!57987))))

(declare-fun bm!57982 () Bool)

(assert (=> bm!57982 (= call!57984 call!57986)))

(declare-fun b!935524 () Bool)

(assert (=> b!935524 (= e!607567 (reg!2887 r!15766))))

(assert (= (and d!281819 c!152164) b!935518))

(assert (= (and d!281819 (not c!152164)) b!935517))

(assert (= (and b!935517 c!152163) b!935521))

(assert (= (and b!935517 (not c!152163)) b!935522))

(assert (= (and b!935522 c!152161) b!935519))

(assert (= (and b!935522 (not c!152161)) b!935515))

(assert (= (and b!935515 c!152162) b!935520))

(assert (= (and b!935515 (not c!152162)) b!935514))

(assert (= (and b!935514 c!152160) b!935523))

(assert (= (and b!935514 (not c!152160)) b!935524))

(assert (= (or b!935520 b!935523) bm!57980))

(assert (= (or b!935519 bm!57980) bm!57982))

(assert (= (or b!935519 b!935520) bm!57981))

(assert (= (or b!935521 bm!57982) bm!57979))

(assert (= (or b!935518 bm!57979) bm!57978))

(assert (= (and d!281819 res!424813) b!935516))

(declare-fun m!1155231 () Bool)

(assert (=> bm!57978 m!1155231))

(declare-fun m!1155233 () Bool)

(assert (=> b!935516 m!1155233))

(assert (=> b!935516 m!1155161))

(declare-fun m!1155235 () Bool)

(assert (=> d!281819 m!1155235))

(assert (=> d!281819 m!1155089))

(declare-fun m!1155237 () Bool)

(assert (=> bm!57981 m!1155237))

(assert (=> b!935158 d!281819))

(declare-fun b!935525 () Bool)

(declare-fun e!607576 () Bool)

(declare-fun e!607573 () Bool)

(assert (=> b!935525 (= e!607576 e!607573)))

(declare-fun res!424819 () Bool)

(assert (=> b!935525 (=> res!424819 e!607573)))

(declare-fun call!57988 () Bool)

(assert (=> b!935525 (= res!424819 call!57988)))

(declare-fun b!935526 () Bool)

(declare-fun e!607575 () Bool)

(declare-fun lt!341174 () Bool)

(assert (=> b!935526 (= e!607575 (= lt!341174 call!57988))))

(declare-fun b!935527 () Bool)

(declare-fun res!424820 () Bool)

(declare-fun e!607572 () Bool)

(assert (=> b!935527 (=> res!424820 e!607572)))

(assert (=> b!935527 (= res!424820 (not (is-ElementMatch!2558 lt!341121)))))

(declare-fun e!607571 () Bool)

(assert (=> b!935527 (= e!607571 e!607572)))

(declare-fun b!935528 () Bool)

(declare-fun e!607577 () Bool)

(assert (=> b!935528 (= e!607577 (= (head!1696 s!10566) (c!152083 lt!341121)))))

(declare-fun b!935529 () Bool)

(declare-fun e!607574 () Bool)

(assert (=> b!935529 (= e!607574 (matchR!1096 (derivativeStep!543 lt!341121 (head!1696 s!10566)) (tail!1258 s!10566)))))

(declare-fun b!935530 () Bool)

(declare-fun res!424816 () Bool)

(assert (=> b!935530 (=> (not res!424816) (not e!607577))))

(assert (=> b!935530 (= res!424816 (not call!57988))))

(declare-fun b!935531 () Bool)

(assert (=> b!935531 (= e!607573 (not (= (head!1696 s!10566) (c!152083 lt!341121))))))

(declare-fun b!935532 () Bool)

(declare-fun res!424818 () Bool)

(assert (=> b!935532 (=> res!424818 e!607573)))

(assert (=> b!935532 (= res!424818 (not (isEmpty!6009 (tail!1258 s!10566))))))

(declare-fun d!281821 () Bool)

(assert (=> d!281821 e!607575))

(declare-fun c!152165 () Bool)

(assert (=> d!281821 (= c!152165 (is-EmptyExpr!2558 lt!341121))))

(assert (=> d!281821 (= lt!341174 e!607574)))

(declare-fun c!152166 () Bool)

(assert (=> d!281821 (= c!152166 (isEmpty!6009 s!10566))))

(assert (=> d!281821 (validRegex!1027 lt!341121)))

(assert (=> d!281821 (= (matchR!1096 lt!341121 s!10566) lt!341174)))

(declare-fun b!935533 () Bool)

(assert (=> b!935533 (= e!607571 (not lt!341174))))

(declare-fun b!935534 () Bool)

(declare-fun res!424817 () Bool)

(assert (=> b!935534 (=> (not res!424817) (not e!607577))))

(assert (=> b!935534 (= res!424817 (isEmpty!6009 (tail!1258 s!10566)))))

(declare-fun bm!57983 () Bool)

(assert (=> bm!57983 (= call!57988 (isEmpty!6009 s!10566))))

(declare-fun b!935535 () Bool)

(declare-fun res!424821 () Bool)

(assert (=> b!935535 (=> res!424821 e!607572)))

(assert (=> b!935535 (= res!424821 e!607577)))

(declare-fun res!424814 () Bool)

(assert (=> b!935535 (=> (not res!424814) (not e!607577))))

(assert (=> b!935535 (= res!424814 lt!341174)))

(declare-fun b!935536 () Bool)

(assert (=> b!935536 (= e!607572 e!607576)))

(declare-fun res!424815 () Bool)

(assert (=> b!935536 (=> (not res!424815) (not e!607576))))

(assert (=> b!935536 (= res!424815 (not lt!341174))))

(declare-fun b!935537 () Bool)

(assert (=> b!935537 (= e!607574 (nullable!734 lt!341121))))

(declare-fun b!935538 () Bool)

(assert (=> b!935538 (= e!607575 e!607571)))

(declare-fun c!152167 () Bool)

(assert (=> b!935538 (= c!152167 (is-EmptyLang!2558 lt!341121))))

(assert (= (and d!281821 c!152166) b!935537))

(assert (= (and d!281821 (not c!152166)) b!935529))

(assert (= (and d!281821 c!152165) b!935526))

(assert (= (and d!281821 (not c!152165)) b!935538))

(assert (= (and b!935538 c!152167) b!935533))

(assert (= (and b!935538 (not c!152167)) b!935527))

(assert (= (and b!935527 (not res!424820)) b!935535))

(assert (= (and b!935535 res!424814) b!935530))

(assert (= (and b!935530 res!424816) b!935534))

(assert (= (and b!935534 res!424817) b!935528))

(assert (= (and b!935535 (not res!424821)) b!935536))

(assert (= (and b!935536 res!424815) b!935525))

(assert (= (and b!935525 (not res!424819)) b!935532))

(assert (= (and b!935532 (not res!424818)) b!935531))

(assert (= (or b!935526 b!935525 b!935530) bm!57983))

(assert (=> bm!57983 m!1155131))

(assert (=> d!281821 m!1155131))

(assert (=> d!281821 m!1155179))

(assert (=> b!935534 m!1155145))

(assert (=> b!935534 m!1155145))

(assert (=> b!935534 m!1155147))

(assert (=> b!935529 m!1155149))

(assert (=> b!935529 m!1155149))

(declare-fun m!1155239 () Bool)

(assert (=> b!935529 m!1155239))

(assert (=> b!935529 m!1155145))

(assert (=> b!935529 m!1155239))

(assert (=> b!935529 m!1155145))

(declare-fun m!1155241 () Bool)

(assert (=> b!935529 m!1155241))

(assert (=> b!935531 m!1155149))

(declare-fun m!1155243 () Bool)

(assert (=> b!935537 m!1155243))

(assert (=> b!935528 m!1155149))

(assert (=> b!935532 m!1155145))

(assert (=> b!935532 m!1155145))

(assert (=> b!935532 m!1155147))

(assert (=> b!935158 d!281821))

(declare-fun d!281823 () Bool)

(declare-fun isEmpty!6010 (Option!2149) Bool)

(assert (=> d!281823 (= (isDefined!1791 (findConcatSeparation!255 (reg!2887 r!15766) lt!341117 Nil!9772 s!10566 s!10566)) (not (isEmpty!6010 (findConcatSeparation!255 (reg!2887 r!15766) lt!341117 Nil!9772 s!10566 s!10566))))))

(declare-fun bs!237894 () Bool)

(assert (= bs!237894 d!281823))

(assert (=> bs!237894 m!1155069))

(declare-fun m!1155245 () Bool)

(assert (=> bs!237894 m!1155245))

(assert (=> b!935158 d!281823))

(declare-fun b!935543 () Bool)

(declare-fun e!607580 () Bool)

(declare-fun tp!290127 () Bool)

(assert (=> b!935543 (= e!607580 (and tp_is_empty!4759 tp!290127))))

(assert (=> b!935161 (= tp!290103 e!607580)))

(assert (= (and b!935161 (is-Cons!9772 (t!100834 s!10566))) b!935543))

(declare-fun b!935557 () Bool)

(declare-fun e!607583 () Bool)

(declare-fun tp!290141 () Bool)

(declare-fun tp!290142 () Bool)

(assert (=> b!935557 (= e!607583 (and tp!290141 tp!290142))))

(declare-fun b!935554 () Bool)

(assert (=> b!935554 (= e!607583 tp_is_empty!4759)))

(declare-fun b!935555 () Bool)

(declare-fun tp!290139 () Bool)

(declare-fun tp!290138 () Bool)

(assert (=> b!935555 (= e!607583 (and tp!290139 tp!290138))))

(declare-fun b!935556 () Bool)

(declare-fun tp!290140 () Bool)

(assert (=> b!935556 (= e!607583 tp!290140)))

(assert (=> b!935159 (= tp!290102 e!607583)))

(assert (= (and b!935159 (is-ElementMatch!2558 (regOne!5628 r!15766))) b!935554))

(assert (= (and b!935159 (is-Concat!4391 (regOne!5628 r!15766))) b!935555))

(assert (= (and b!935159 (is-Star!2558 (regOne!5628 r!15766))) b!935556))

(assert (= (and b!935159 (is-Union!2558 (regOne!5628 r!15766))) b!935557))

(declare-fun b!935575 () Bool)

(declare-fun e!607591 () Bool)

(declare-fun tp!290146 () Bool)

(declare-fun tp!290147 () Bool)

(assert (=> b!935575 (= e!607591 (and tp!290146 tp!290147))))

(declare-fun b!935572 () Bool)

(assert (=> b!935572 (= e!607591 tp_is_empty!4759)))

(declare-fun b!935573 () Bool)

(declare-fun tp!290144 () Bool)

(declare-fun tp!290143 () Bool)

(assert (=> b!935573 (= e!607591 (and tp!290144 tp!290143))))

(declare-fun b!935574 () Bool)

(declare-fun tp!290145 () Bool)

(assert (=> b!935574 (= e!607591 tp!290145)))

(assert (=> b!935159 (= tp!290105 e!607591)))

(assert (= (and b!935159 (is-ElementMatch!2558 (regTwo!5628 r!15766))) b!935572))

(assert (= (and b!935159 (is-Concat!4391 (regTwo!5628 r!15766))) b!935573))

(assert (= (and b!935159 (is-Star!2558 (regTwo!5628 r!15766))) b!935574))

(assert (= (and b!935159 (is-Union!2558 (regTwo!5628 r!15766))) b!935575))

(declare-fun b!935579 () Bool)

(declare-fun e!607592 () Bool)

(declare-fun tp!290151 () Bool)

(declare-fun tp!290152 () Bool)

(assert (=> b!935579 (= e!607592 (and tp!290151 tp!290152))))

(declare-fun b!935576 () Bool)

(assert (=> b!935576 (= e!607592 tp_is_empty!4759)))

(declare-fun b!935577 () Bool)

(declare-fun tp!290149 () Bool)

(declare-fun tp!290148 () Bool)

(assert (=> b!935577 (= e!607592 (and tp!290149 tp!290148))))

(declare-fun b!935578 () Bool)

(declare-fun tp!290150 () Bool)

(assert (=> b!935578 (= e!607592 tp!290150)))

(assert (=> b!935164 (= tp!290104 e!607592)))

(assert (= (and b!935164 (is-ElementMatch!2558 (regOne!5629 r!15766))) b!935576))

(assert (= (and b!935164 (is-Concat!4391 (regOne!5629 r!15766))) b!935577))

(assert (= (and b!935164 (is-Star!2558 (regOne!5629 r!15766))) b!935578))

(assert (= (and b!935164 (is-Union!2558 (regOne!5629 r!15766))) b!935579))

(declare-fun b!935583 () Bool)

(declare-fun e!607593 () Bool)

(declare-fun tp!290156 () Bool)

(declare-fun tp!290157 () Bool)

(assert (=> b!935583 (= e!607593 (and tp!290156 tp!290157))))

(declare-fun b!935580 () Bool)

(assert (=> b!935580 (= e!607593 tp_is_empty!4759)))

(declare-fun b!935581 () Bool)

(declare-fun tp!290154 () Bool)

(declare-fun tp!290153 () Bool)

(assert (=> b!935581 (= e!607593 (and tp!290154 tp!290153))))

(declare-fun b!935582 () Bool)

(declare-fun tp!290155 () Bool)

(assert (=> b!935582 (= e!607593 tp!290155)))

(assert (=> b!935164 (= tp!290106 e!607593)))

(assert (= (and b!935164 (is-ElementMatch!2558 (regTwo!5629 r!15766))) b!935580))

(assert (= (and b!935164 (is-Concat!4391 (regTwo!5629 r!15766))) b!935581))

(assert (= (and b!935164 (is-Star!2558 (regTwo!5629 r!15766))) b!935582))

(assert (= (and b!935164 (is-Union!2558 (regTwo!5629 r!15766))) b!935583))

(declare-fun b!935587 () Bool)

(declare-fun e!607594 () Bool)

(declare-fun tp!290161 () Bool)

(declare-fun tp!290162 () Bool)

(assert (=> b!935587 (= e!607594 (and tp!290161 tp!290162))))

(declare-fun b!935584 () Bool)

(assert (=> b!935584 (= e!607594 tp_is_empty!4759)))

(declare-fun b!935585 () Bool)

(declare-fun tp!290159 () Bool)

(declare-fun tp!290158 () Bool)

(assert (=> b!935585 (= e!607594 (and tp!290159 tp!290158))))

(declare-fun b!935586 () Bool)

(declare-fun tp!290160 () Bool)

(assert (=> b!935586 (= e!607594 tp!290160)))

(assert (=> b!935163 (= tp!290101 e!607594)))

(assert (= (and b!935163 (is-ElementMatch!2558 (reg!2887 r!15766))) b!935584))

(assert (= (and b!935163 (is-Concat!4391 (reg!2887 r!15766))) b!935585))

(assert (= (and b!935163 (is-Star!2558 (reg!2887 r!15766))) b!935586))

(assert (= (and b!935163 (is-Union!2558 (reg!2887 r!15766))) b!935587))

(push 1)

(assert (not d!281817))

(assert (not bm!57954))

(assert (not b!935462))

(assert (not bm!57957))

(assert (not d!281805))

(assert (not bm!57958))

(assert (not b!935460))

(assert (not b!935534))

(assert (not b!935583))

(assert (not d!281819))

(assert (not d!281787))

(assert (not b!935537))

(assert tp_is_empty!4759)

(assert (not b!935578))

(assert (not b!935587))

(assert (not b!935326))

(assert (not bm!57981))

(assert (not b!935543))

(assert (not bm!57956))

(assert (not d!281807))

(assert (not d!281793))

(assert (not b!935455))

(assert (not d!281803))

(assert (not b!935267))

(assert (not b!935394))

(assert (not b!935325))

(assert (not b!935396))

(assert (not bm!57953))

(assert (not b!935556))

(assert (not b!935461))

(assert (not b!935457))

(assert (not b!935328))

(assert (not bm!57983))

(assert (not b!935516))

(assert (not b!935581))

(assert (not b!935574))

(assert (not b!935555))

(assert (not b!935528))

(assert (not bm!57959))

(assert (not d!281821))

(assert (not b!935322))

(assert (not b!935529))

(assert (not bm!57935))

(assert (not b!935582))

(assert (not b!935577))

(assert (not b!935389))

(assert (not bm!57978))

(assert (not d!281823))

(assert (not b!935531))

(assert (not b!935575))

(assert (not bm!57936))

(assert (not b!935331))

(assert (not b!935573))

(assert (not b!935532))

(assert (not b!935557))

(assert (not d!281811))

(assert (not b!935323))

(assert (not b!935586))

(assert (not b!935265))

(assert (not d!281801))

(assert (not b!935579))

(assert (not b!935380))

(assert (not b!935585))

(assert (not b!935459))

(assert (not bm!57945))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

