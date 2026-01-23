; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!85108 () Bool)

(assert start!85108)

(declare-fun b!955127 () Bool)

(assert (=> b!955127 true))

(assert (=> b!955127 true))

(assert (=> b!955127 true))

(declare-fun lambda!33022 () Int)

(declare-fun lambda!33021 () Int)

(assert (=> b!955127 (not (= lambda!33022 lambda!33021))))

(assert (=> b!955127 true))

(assert (=> b!955127 true))

(assert (=> b!955127 true))

(declare-fun b!955118 () Bool)

(declare-fun res!434089 () Bool)

(declare-fun e!617734 () Bool)

(assert (=> b!955118 (=> res!434089 e!617734)))

(declare-fun lt!345327 () Bool)

(assert (=> b!955118 (= res!434089 (not lt!345327))))

(declare-fun b!955119 () Bool)

(declare-fun res!434090 () Bool)

(declare-fun e!617732 () Bool)

(assert (=> b!955119 (=> res!434090 e!617732)))

(declare-datatypes ((C!5850 0))(
  ( (C!5851 (val!3173 Int)) )
))
(declare-datatypes ((Regex!2640 0))(
  ( (ElementMatch!2640 (c!155473 C!5850)) (Concat!4473 (regOne!5792 Regex!2640) (regTwo!5792 Regex!2640)) (EmptyExpr!2640) (Star!2640 (reg!2969 Regex!2640)) (EmptyLang!2640) (Union!2640 (regOne!5793 Regex!2640) (regTwo!5793 Regex!2640)) )
))
(declare-fun lt!345322 () Regex!2640)

(declare-datatypes ((List!9870 0))(
  ( (Nil!9854) (Cons!9854 (h!15255 C!5850) (t!100916 List!9870)) )
))
(declare-datatypes ((tuple2!11166 0))(
  ( (tuple2!11167 (_1!6409 List!9870) (_2!6409 List!9870)) )
))
(declare-fun lt!345324 () tuple2!11166)

(declare-fun matchR!1178 (Regex!2640 List!9870) Bool)

(assert (=> b!955119 (= res!434090 (not (matchR!1178 lt!345322 (_2!6409 lt!345324))))))

(declare-fun b!955120 () Bool)

(declare-fun e!617737 () Bool)

(declare-fun tp_is_empty!4923 () Bool)

(assert (=> b!955120 (= e!617737 tp_is_empty!4923)))

(declare-fun b!955121 () Bool)

(declare-fun tp!294209 () Bool)

(declare-fun tp!294214 () Bool)

(assert (=> b!955121 (= e!617737 (and tp!294209 tp!294214))))

(declare-fun b!955122 () Bool)

(declare-fun tp!294210 () Bool)

(declare-fun tp!294211 () Bool)

(assert (=> b!955122 (= e!617737 (and tp!294210 tp!294211))))

(declare-fun b!955123 () Bool)

(assert (=> b!955123 (= e!617734 e!617732)))

(declare-fun res!434095 () Bool)

(assert (=> b!955123 (=> res!434095 e!617732)))

(declare-fun r!15766 () Regex!2640)

(assert (=> b!955123 (= res!434095 (not (matchR!1178 (reg!2969 r!15766) (_1!6409 lt!345324))))))

(declare-datatypes ((Option!2225 0))(
  ( (None!2224) (Some!2224 (v!19641 tuple2!11166)) )
))
(declare-fun lt!345323 () Option!2225)

(declare-fun get!3334 (Option!2225) tuple2!11166)

(assert (=> b!955123 (= lt!345324 (get!3334 lt!345323))))

(declare-fun b!955124 () Bool)

(declare-fun e!617738 () Bool)

(assert (=> b!955124 (= e!617732 e!617738)))

(declare-fun res!434091 () Bool)

(assert (=> b!955124 (=> res!434091 e!617738)))

(declare-fun s!10566 () List!9870)

(declare-fun size!7912 (List!9870) Int)

(assert (=> b!955124 (= res!434091 (not (= (size!7912 (_2!6409 lt!345324)) (size!7912 s!10566))))))

(declare-fun removeUselessConcat!291 (Regex!2640) Regex!2640)

(assert (=> b!955124 (matchR!1178 (removeUselessConcat!291 (reg!2969 r!15766)) (_1!6409 lt!345324))))

(declare-datatypes ((Unit!14923 0))(
  ( (Unit!14924) )
))
(declare-fun lt!345320 () Unit!14923)

(declare-fun lemmaRemoveUselessConcatSound!151 (Regex!2640 List!9870) Unit!14923)

(assert (=> b!955124 (= lt!345320 (lemmaRemoveUselessConcatSound!151 (reg!2969 r!15766) (_1!6409 lt!345324)))))

(declare-fun b!955125 () Bool)

(declare-fun e!617733 () Bool)

(declare-fun tp!294213 () Bool)

(assert (=> b!955125 (= e!617733 (and tp_is_empty!4923 tp!294213))))

(declare-fun b!955126 () Bool)

(declare-fun e!617736 () Bool)

(declare-fun e!617735 () Bool)

(assert (=> b!955126 (= e!617736 (not e!617735))))

(declare-fun res!434092 () Bool)

(assert (=> b!955126 (=> res!434092 e!617735)))

(declare-fun lt!345326 () Bool)

(assert (=> b!955126 (= res!434092 (or (not lt!345326) (and (is-Concat!4473 r!15766) (is-EmptyExpr!2640 (regOne!5792 r!15766))) (and (is-Concat!4473 r!15766) (is-EmptyExpr!2640 (regTwo!5792 r!15766))) (is-Concat!4473 r!15766) (is-Union!2640 r!15766) (not (is-Star!2640 r!15766))))))

(declare-fun matchRSpec!441 (Regex!2640 List!9870) Bool)

(assert (=> b!955126 (= lt!345326 (matchRSpec!441 r!15766 s!10566))))

(assert (=> b!955126 (= lt!345326 (matchR!1178 r!15766 s!10566))))

(declare-fun lt!345321 () Unit!14923)

(declare-fun mainMatchTheorem!441 (Regex!2640 List!9870) Unit!14923)

(assert (=> b!955126 (= lt!345321 (mainMatchTheorem!441 r!15766 s!10566))))

(declare-fun res!434093 () Bool)

(assert (=> start!85108 (=> (not res!434093) (not e!617736))))

(declare-fun validRegex!1109 (Regex!2640) Bool)

(assert (=> start!85108 (= res!434093 (validRegex!1109 r!15766))))

(assert (=> start!85108 e!617736))

(assert (=> start!85108 e!617737))

(assert (=> start!85108 e!617733))

(assert (=> b!955127 (= e!617735 e!617734)))

(declare-fun res!434094 () Bool)

(assert (=> b!955127 (=> res!434094 e!617734)))

(declare-fun isEmpty!6133 (List!9870) Bool)

(assert (=> b!955127 (= res!434094 (isEmpty!6133 s!10566))))

(declare-fun Exists!387 (Int) Bool)

(assert (=> b!955127 (= (Exists!387 lambda!33021) (Exists!387 lambda!33022))))

(declare-fun lt!345328 () Unit!14923)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!115 (Regex!2640 List!9870) Unit!14923)

(assert (=> b!955127 (= lt!345328 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!115 (reg!2969 r!15766) s!10566))))

(assert (=> b!955127 (= lt!345327 (Exists!387 lambda!33021))))

(declare-fun isDefined!1867 (Option!2225) Bool)

(assert (=> b!955127 (= lt!345327 (isDefined!1867 lt!345323))))

(declare-fun findConcatSeparation!331 (Regex!2640 Regex!2640 List!9870 List!9870 List!9870) Option!2225)

(assert (=> b!955127 (= lt!345323 (findConcatSeparation!331 (reg!2969 r!15766) lt!345322 Nil!9854 s!10566 s!10566))))

(declare-fun lt!345325 () Unit!14923)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!331 (Regex!2640 Regex!2640 List!9870) Unit!14923)

(assert (=> b!955127 (= lt!345325 (lemmaFindConcatSeparationEquivalentToExists!331 (reg!2969 r!15766) lt!345322 s!10566))))

(assert (=> b!955127 (= lt!345322 (Star!2640 (reg!2969 r!15766)))))

(declare-fun b!955128 () Bool)

(declare-fun tp!294212 () Bool)

(assert (=> b!955128 (= e!617737 tp!294212)))

(declare-fun b!955129 () Bool)

(declare-fun ++!2643 (List!9870 List!9870) List!9870)

(assert (=> b!955129 (= e!617738 (= (++!2643 (_1!6409 lt!345324) (_2!6409 lt!345324)) s!10566))))

(assert (= (and start!85108 res!434093) b!955126))

(assert (= (and b!955126 (not res!434092)) b!955127))

(assert (= (and b!955127 (not res!434094)) b!955118))

(assert (= (and b!955118 (not res!434089)) b!955123))

(assert (= (and b!955123 (not res!434095)) b!955119))

(assert (= (and b!955119 (not res!434090)) b!955124))

(assert (= (and b!955124 (not res!434091)) b!955129))

(assert (= (and start!85108 (is-ElementMatch!2640 r!15766)) b!955120))

(assert (= (and start!85108 (is-Concat!4473 r!15766)) b!955122))

(assert (= (and start!85108 (is-Star!2640 r!15766)) b!955128))

(assert (= (and start!85108 (is-Union!2640 r!15766)) b!955121))

(assert (= (and start!85108 (is-Cons!9854 s!10566)) b!955125))

(declare-fun m!1165853 () Bool)

(assert (=> b!955126 m!1165853))

(declare-fun m!1165855 () Bool)

(assert (=> b!955126 m!1165855))

(declare-fun m!1165857 () Bool)

(assert (=> b!955126 m!1165857))

(declare-fun m!1165859 () Bool)

(assert (=> start!85108 m!1165859))

(declare-fun m!1165861 () Bool)

(assert (=> b!955119 m!1165861))

(declare-fun m!1165863 () Bool)

(assert (=> b!955123 m!1165863))

(declare-fun m!1165865 () Bool)

(assert (=> b!955123 m!1165865))

(declare-fun m!1165867 () Bool)

(assert (=> b!955129 m!1165867))

(declare-fun m!1165869 () Bool)

(assert (=> b!955127 m!1165869))

(assert (=> b!955127 m!1165869))

(declare-fun m!1165871 () Bool)

(assert (=> b!955127 m!1165871))

(declare-fun m!1165873 () Bool)

(assert (=> b!955127 m!1165873))

(declare-fun m!1165875 () Bool)

(assert (=> b!955127 m!1165875))

(declare-fun m!1165877 () Bool)

(assert (=> b!955127 m!1165877))

(declare-fun m!1165879 () Bool)

(assert (=> b!955127 m!1165879))

(declare-fun m!1165881 () Bool)

(assert (=> b!955127 m!1165881))

(declare-fun m!1165883 () Bool)

(assert (=> b!955124 m!1165883))

(declare-fun m!1165885 () Bool)

(assert (=> b!955124 m!1165885))

(declare-fun m!1165887 () Bool)

(assert (=> b!955124 m!1165887))

(assert (=> b!955124 m!1165885))

(declare-fun m!1165889 () Bool)

(assert (=> b!955124 m!1165889))

(declare-fun m!1165891 () Bool)

(assert (=> b!955124 m!1165891))

(push 1)

(assert (not b!955127))

(assert tp_is_empty!4923)

(assert (not b!955121))

(assert (not b!955123))

(assert (not b!955122))

(assert (not b!955129))

(assert (not b!955128))

(assert (not b!955125))

(assert (not b!955119))

(assert (not start!85108))

(assert (not b!955126))

(assert (not b!955124))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!240388 () Bool)

(declare-fun b!955228 () Bool)

(assert (= bs!240388 (and b!955228 b!955127)))

(declare-fun lambda!33035 () Int)

(assert (=> bs!240388 (not (= lambda!33035 lambda!33021))))

(assert (=> bs!240388 (= (= r!15766 lt!345322) (= lambda!33035 lambda!33022))))

(assert (=> b!955228 true))

(assert (=> b!955228 true))

(declare-fun bs!240389 () Bool)

(declare-fun b!955224 () Bool)

(assert (= bs!240389 (and b!955224 b!955127)))

(declare-fun lambda!33036 () Int)

(assert (=> bs!240389 (not (= lambda!33036 lambda!33021))))

(assert (=> bs!240389 (not (= lambda!33036 lambda!33022))))

(declare-fun bs!240390 () Bool)

(assert (= bs!240390 (and b!955224 b!955228)))

(assert (=> bs!240390 (not (= lambda!33036 lambda!33035))))

(assert (=> b!955224 true))

(assert (=> b!955224 true))

(declare-fun b!955220 () Bool)

(declare-fun e!617785 () Bool)

(assert (=> b!955220 (= e!617785 (matchRSpec!441 (regTwo!5793 r!15766) s!10566))))

(declare-fun b!955221 () Bool)

(declare-fun e!617787 () Bool)

(assert (=> b!955221 (= e!617787 (= s!10566 (Cons!9854 (c!155473 r!15766) Nil!9854)))))

(declare-fun d!284328 () Bool)

(declare-fun c!155484 () Bool)

(assert (=> d!284328 (= c!155484 (is-EmptyExpr!2640 r!15766))))

(declare-fun e!617786 () Bool)

(assert (=> d!284328 (= (matchRSpec!441 r!15766 s!10566) e!617786)))

(declare-fun b!955222 () Bool)

(declare-fun e!617790 () Bool)

(assert (=> b!955222 (= e!617790 e!617785)))

(declare-fun res!434149 () Bool)

(assert (=> b!955222 (= res!434149 (matchRSpec!441 (regOne!5793 r!15766) s!10566))))

(assert (=> b!955222 (=> res!434149 e!617785)))

(declare-fun b!955223 () Bool)

(declare-fun res!434147 () Bool)

(declare-fun e!617788 () Bool)

(assert (=> b!955223 (=> res!434147 e!617788)))

(declare-fun call!59979 () Bool)

(assert (=> b!955223 (= res!434147 call!59979)))

(declare-fun e!617789 () Bool)

(assert (=> b!955223 (= e!617789 e!617788)))

(declare-fun call!59978 () Bool)

(assert (=> b!955224 (= e!617789 call!59978)))

(declare-fun b!955225 () Bool)

(assert (=> b!955225 (= e!617786 call!59979)))

(declare-fun bm!59973 () Bool)

(assert (=> bm!59973 (= call!59979 (isEmpty!6133 s!10566))))

(declare-fun c!155485 () Bool)

(declare-fun bm!59974 () Bool)

(assert (=> bm!59974 (= call!59978 (Exists!387 (ite c!155485 lambda!33035 lambda!33036)))))

(declare-fun b!955226 () Bool)

(declare-fun e!617784 () Bool)

(assert (=> b!955226 (= e!617786 e!617784)))

(declare-fun res!434148 () Bool)

(assert (=> b!955226 (= res!434148 (not (is-EmptyLang!2640 r!15766)))))

(assert (=> b!955226 (=> (not res!434148) (not e!617784))))

(declare-fun b!955227 () Bool)

(assert (=> b!955227 (= e!617790 e!617789)))

(assert (=> b!955227 (= c!155485 (is-Star!2640 r!15766))))

(assert (=> b!955228 (= e!617788 call!59978)))

(declare-fun b!955229 () Bool)

(declare-fun c!155486 () Bool)

(assert (=> b!955229 (= c!155486 (is-Union!2640 r!15766))))

(assert (=> b!955229 (= e!617787 e!617790)))

(declare-fun b!955230 () Bool)

(declare-fun c!155483 () Bool)

(assert (=> b!955230 (= c!155483 (is-ElementMatch!2640 r!15766))))

(assert (=> b!955230 (= e!617784 e!617787)))

(assert (= (and d!284328 c!155484) b!955225))

(assert (= (and d!284328 (not c!155484)) b!955226))

(assert (= (and b!955226 res!434148) b!955230))

(assert (= (and b!955230 c!155483) b!955221))

(assert (= (and b!955230 (not c!155483)) b!955229))

(assert (= (and b!955229 c!155486) b!955222))

(assert (= (and b!955229 (not c!155486)) b!955227))

(assert (= (and b!955222 (not res!434149)) b!955220))

(assert (= (and b!955227 c!155485) b!955223))

(assert (= (and b!955227 (not c!155485)) b!955224))

(assert (= (and b!955223 (not res!434147)) b!955228))

(assert (= (or b!955228 b!955224) bm!59974))

(assert (= (or b!955225 b!955223) bm!59973))

(declare-fun m!1165933 () Bool)

(assert (=> b!955220 m!1165933))

(declare-fun m!1165935 () Bool)

(assert (=> b!955222 m!1165935))

(assert (=> bm!59973 m!1165875))

(declare-fun m!1165937 () Bool)

(assert (=> bm!59974 m!1165937))

(assert (=> b!955126 d!284328))

(declare-fun d!284332 () Bool)

(declare-fun e!617812 () Bool)

(assert (=> d!284332 e!617812))

(declare-fun c!155494 () Bool)

(assert (=> d!284332 (= c!155494 (is-EmptyExpr!2640 r!15766))))

(declare-fun lt!345361 () Bool)

(declare-fun e!617808 () Bool)

(assert (=> d!284332 (= lt!345361 e!617808)))

(declare-fun c!155493 () Bool)

(assert (=> d!284332 (= c!155493 (isEmpty!6133 s!10566))))

(assert (=> d!284332 (validRegex!1109 r!15766)))

(assert (=> d!284332 (= (matchR!1178 r!15766 s!10566) lt!345361)))

(declare-fun b!955263 () Bool)

(declare-fun e!617813 () Bool)

(declare-fun head!1751 (List!9870) C!5850)

(assert (=> b!955263 (= e!617813 (= (head!1751 s!10566) (c!155473 r!15766)))))

(declare-fun b!955264 () Bool)

(declare-fun res!434174 () Bool)

(assert (=> b!955264 (=> (not res!434174) (not e!617813))))

(declare-fun tail!1313 (List!9870) List!9870)

(assert (=> b!955264 (= res!434174 (isEmpty!6133 (tail!1313 s!10566)))))

(declare-fun b!955265 () Bool)

(declare-fun e!617807 () Bool)

(assert (=> b!955265 (= e!617807 (not lt!345361))))

(declare-fun b!955266 () Bool)

(declare-fun e!617810 () Bool)

(assert (=> b!955266 (= e!617810 (not (= (head!1751 s!10566) (c!155473 r!15766))))))

(declare-fun b!955267 () Bool)

(declare-fun e!617811 () Bool)

(assert (=> b!955267 (= e!617811 e!617810)))

(declare-fun res!434171 () Bool)

(assert (=> b!955267 (=> res!434171 e!617810)))

(declare-fun call!59982 () Bool)

(assert (=> b!955267 (= res!434171 call!59982)))

(declare-fun b!955268 () Bool)

(declare-fun e!617809 () Bool)

(assert (=> b!955268 (= e!617809 e!617811)))

(declare-fun res!434173 () Bool)

(assert (=> b!955268 (=> (not res!434173) (not e!617811))))

(assert (=> b!955268 (= res!434173 (not lt!345361))))

(declare-fun b!955269 () Bool)

(declare-fun res!434175 () Bool)

(assert (=> b!955269 (=> res!434175 e!617809)))

(assert (=> b!955269 (= res!434175 e!617813)))

(declare-fun res!434172 () Bool)

(assert (=> b!955269 (=> (not res!434172) (not e!617813))))

(assert (=> b!955269 (= res!434172 lt!345361)))

(declare-fun b!955270 () Bool)

(declare-fun res!434170 () Bool)

(assert (=> b!955270 (=> (not res!434170) (not e!617813))))

(assert (=> b!955270 (= res!434170 (not call!59982))))

(declare-fun b!955271 () Bool)

(declare-fun res!434177 () Bool)

(assert (=> b!955271 (=> res!434177 e!617810)))

(assert (=> b!955271 (= res!434177 (not (isEmpty!6133 (tail!1313 s!10566))))))

(declare-fun b!955272 () Bool)

(declare-fun nullable!789 (Regex!2640) Bool)

(assert (=> b!955272 (= e!617808 (nullable!789 r!15766))))

(declare-fun b!955273 () Bool)

(assert (=> b!955273 (= e!617812 (= lt!345361 call!59982))))

(declare-fun b!955274 () Bool)

(assert (=> b!955274 (= e!617812 e!617807)))

(declare-fun c!155495 () Bool)

(assert (=> b!955274 (= c!155495 (is-EmptyLang!2640 r!15766))))

(declare-fun b!955275 () Bool)

(declare-fun derivativeStep!598 (Regex!2640 C!5850) Regex!2640)

(assert (=> b!955275 (= e!617808 (matchR!1178 (derivativeStep!598 r!15766 (head!1751 s!10566)) (tail!1313 s!10566)))))

(declare-fun bm!59977 () Bool)

(assert (=> bm!59977 (= call!59982 (isEmpty!6133 s!10566))))

(declare-fun b!955276 () Bool)

(declare-fun res!434176 () Bool)

(assert (=> b!955276 (=> res!434176 e!617809)))

(assert (=> b!955276 (= res!434176 (not (is-ElementMatch!2640 r!15766)))))

(assert (=> b!955276 (= e!617807 e!617809)))

(assert (= (and d!284332 c!155493) b!955272))

(assert (= (and d!284332 (not c!155493)) b!955275))

(assert (= (and d!284332 c!155494) b!955273))

(assert (= (and d!284332 (not c!155494)) b!955274))

(assert (= (and b!955274 c!155495) b!955265))

(assert (= (and b!955274 (not c!155495)) b!955276))

(assert (= (and b!955276 (not res!434176)) b!955269))

(assert (= (and b!955269 res!434172) b!955270))

(assert (= (and b!955270 res!434170) b!955264))

(assert (= (and b!955264 res!434174) b!955263))

(assert (= (and b!955269 (not res!434175)) b!955268))

(assert (= (and b!955268 res!434173) b!955267))

(assert (= (and b!955267 (not res!434171)) b!955271))

(assert (= (and b!955271 (not res!434177)) b!955266))

(assert (= (or b!955273 b!955267 b!955270) bm!59977))

(assert (=> d!284332 m!1165875))

(assert (=> d!284332 m!1165859))

(declare-fun m!1165947 () Bool)

(assert (=> b!955263 m!1165947))

(declare-fun m!1165949 () Bool)

(assert (=> b!955271 m!1165949))

(assert (=> b!955271 m!1165949))

(declare-fun m!1165951 () Bool)

(assert (=> b!955271 m!1165951))

(assert (=> bm!59977 m!1165875))

(assert (=> b!955264 m!1165949))

(assert (=> b!955264 m!1165949))

(assert (=> b!955264 m!1165951))

(declare-fun m!1165953 () Bool)

(assert (=> b!955272 m!1165953))

(assert (=> b!955266 m!1165947))

(assert (=> b!955275 m!1165947))

(assert (=> b!955275 m!1165947))

(declare-fun m!1165955 () Bool)

(assert (=> b!955275 m!1165955))

(assert (=> b!955275 m!1165949))

(assert (=> b!955275 m!1165955))

(assert (=> b!955275 m!1165949))

(declare-fun m!1165957 () Bool)

(assert (=> b!955275 m!1165957))

(assert (=> b!955126 d!284332))

(declare-fun d!284336 () Bool)

(assert (=> d!284336 (= (matchR!1178 r!15766 s!10566) (matchRSpec!441 r!15766 s!10566))))

(declare-fun lt!345364 () Unit!14923)

(declare-fun choose!5984 (Regex!2640 List!9870) Unit!14923)

(assert (=> d!284336 (= lt!345364 (choose!5984 r!15766 s!10566))))

(assert (=> d!284336 (validRegex!1109 r!15766)))

(assert (=> d!284336 (= (mainMatchTheorem!441 r!15766 s!10566) lt!345364)))

(declare-fun bs!240393 () Bool)

(assert (= bs!240393 d!284336))

(assert (=> bs!240393 m!1165855))

(assert (=> bs!240393 m!1165853))

(declare-fun m!1165959 () Bool)

(assert (=> bs!240393 m!1165959))

(assert (=> bs!240393 m!1165859))

(assert (=> b!955126 d!284336))

(declare-fun d!284338 () Bool)

(assert (=> d!284338 (= (isEmpty!6133 s!10566) (is-Nil!9854 s!10566))))

(assert (=> b!955127 d!284338))

(declare-fun d!284340 () Bool)

(declare-fun choose!5985 (Int) Bool)

(assert (=> d!284340 (= (Exists!387 lambda!33021) (choose!5985 lambda!33021))))

(declare-fun bs!240394 () Bool)

(assert (= bs!240394 d!284340))

(declare-fun m!1165961 () Bool)

(assert (=> bs!240394 m!1165961))

(assert (=> b!955127 d!284340))

(declare-fun d!284342 () Bool)

(assert (=> d!284342 (= (Exists!387 lambda!33022) (choose!5985 lambda!33022))))

(declare-fun bs!240395 () Bool)

(assert (= bs!240395 d!284342))

(declare-fun m!1165963 () Bool)

(assert (=> bs!240395 m!1165963))

(assert (=> b!955127 d!284342))

(declare-fun d!284344 () Bool)

(declare-fun isEmpty!6135 (Option!2225) Bool)

(assert (=> d!284344 (= (isDefined!1867 lt!345323) (not (isEmpty!6135 lt!345323)))))

(declare-fun bs!240396 () Bool)

(assert (= bs!240396 d!284344))

(declare-fun m!1165965 () Bool)

(assert (=> bs!240396 m!1165965))

(assert (=> b!955127 d!284344))

(declare-fun bs!240397 () Bool)

(declare-fun d!284346 () Bool)

(assert (= bs!240397 (and d!284346 b!955127)))

(declare-fun lambda!33046 () Int)

(assert (=> bs!240397 (= (= (Star!2640 (reg!2969 r!15766)) lt!345322) (= lambda!33046 lambda!33021))))

(assert (=> bs!240397 (not (= lambda!33046 lambda!33022))))

(declare-fun bs!240398 () Bool)

(assert (= bs!240398 (and d!284346 b!955228)))

(assert (=> bs!240398 (not (= lambda!33046 lambda!33035))))

(declare-fun bs!240399 () Bool)

(assert (= bs!240399 (and d!284346 b!955224)))

(assert (=> bs!240399 (not (= lambda!33046 lambda!33036))))

(assert (=> d!284346 true))

(assert (=> d!284346 true))

(declare-fun lambda!33047 () Int)

(assert (=> bs!240398 (= (= (Star!2640 (reg!2969 r!15766)) r!15766) (= lambda!33047 lambda!33035))))

(declare-fun bs!240400 () Bool)

(assert (= bs!240400 d!284346))

(assert (=> bs!240400 (not (= lambda!33047 lambda!33046))))

(assert (=> bs!240399 (not (= lambda!33047 lambda!33036))))

(assert (=> bs!240397 (not (= lambda!33047 lambda!33021))))

(assert (=> bs!240397 (= (= (Star!2640 (reg!2969 r!15766)) lt!345322) (= lambda!33047 lambda!33022))))

(assert (=> d!284346 true))

(assert (=> d!284346 true))

(assert (=> d!284346 (= (Exists!387 lambda!33046) (Exists!387 lambda!33047))))

(declare-fun lt!345369 () Unit!14923)

(declare-fun choose!5986 (Regex!2640 List!9870) Unit!14923)

(assert (=> d!284346 (= lt!345369 (choose!5986 (reg!2969 r!15766) s!10566))))

(assert (=> d!284346 (validRegex!1109 (reg!2969 r!15766))))

(assert (=> d!284346 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!115 (reg!2969 r!15766) s!10566) lt!345369)))

(declare-fun m!1165967 () Bool)

(assert (=> bs!240400 m!1165967))

(declare-fun m!1165969 () Bool)

(assert (=> bs!240400 m!1165969))

(declare-fun m!1165971 () Bool)

(assert (=> bs!240400 m!1165971))

(declare-fun m!1165973 () Bool)

(assert (=> bs!240400 m!1165973))

(assert (=> b!955127 d!284346))

(declare-fun bs!240401 () Bool)

(declare-fun d!284348 () Bool)

(assert (= bs!240401 (and d!284348 b!955228)))

(declare-fun lambda!33052 () Int)

(assert (=> bs!240401 (not (= lambda!33052 lambda!33035))))

(declare-fun bs!240402 () Bool)

(assert (= bs!240402 (and d!284348 d!284346)))

(assert (=> bs!240402 (= (= lt!345322 (Star!2640 (reg!2969 r!15766))) (= lambda!33052 lambda!33046))))

(declare-fun bs!240403 () Bool)

(assert (= bs!240403 (and d!284348 b!955224)))

(assert (=> bs!240403 (not (= lambda!33052 lambda!33036))))

(assert (=> bs!240402 (not (= lambda!33052 lambda!33047))))

(declare-fun bs!240404 () Bool)

(assert (= bs!240404 (and d!284348 b!955127)))

(assert (=> bs!240404 (= lambda!33052 lambda!33021)))

(assert (=> bs!240404 (not (= lambda!33052 lambda!33022))))

(assert (=> d!284348 true))

(assert (=> d!284348 true))

(assert (=> d!284348 true))

(assert (=> d!284348 (= (isDefined!1867 (findConcatSeparation!331 (reg!2969 r!15766) lt!345322 Nil!9854 s!10566 s!10566)) (Exists!387 lambda!33052))))

(declare-fun lt!345372 () Unit!14923)

(declare-fun choose!5987 (Regex!2640 Regex!2640 List!9870) Unit!14923)

(assert (=> d!284348 (= lt!345372 (choose!5987 (reg!2969 r!15766) lt!345322 s!10566))))

(assert (=> d!284348 (validRegex!1109 (reg!2969 r!15766))))

(assert (=> d!284348 (= (lemmaFindConcatSeparationEquivalentToExists!331 (reg!2969 r!15766) lt!345322 s!10566) lt!345372)))

(declare-fun bs!240405 () Bool)

(assert (= bs!240405 d!284348))

(declare-fun m!1165975 () Bool)

(assert (=> bs!240405 m!1165975))

(assert (=> bs!240405 m!1165973))

(declare-fun m!1165977 () Bool)

(assert (=> bs!240405 m!1165977))

(assert (=> bs!240405 m!1165879))

(declare-fun m!1165979 () Bool)

(assert (=> bs!240405 m!1165979))

(assert (=> bs!240405 m!1165879))

(assert (=> b!955127 d!284348))

(declare-fun b!955319 () Bool)

(declare-fun e!617837 () Bool)

(declare-fun lt!345382 () Option!2225)

(assert (=> b!955319 (= e!617837 (= (++!2643 (_1!6409 (get!3334 lt!345382)) (_2!6409 (get!3334 lt!345382))) s!10566))))

(declare-fun b!955321 () Bool)

(declare-fun res!434215 () Bool)

(assert (=> b!955321 (=> (not res!434215) (not e!617837))))

(assert (=> b!955321 (= res!434215 (matchR!1178 lt!345322 (_2!6409 (get!3334 lt!345382))))))

(declare-fun b!955322 () Bool)

(declare-fun e!617835 () Option!2225)

(declare-fun e!617834 () Option!2225)

(assert (=> b!955322 (= e!617835 e!617834)))

(declare-fun c!155500 () Bool)

(assert (=> b!955322 (= c!155500 (is-Nil!9854 s!10566))))

(declare-fun b!955323 () Bool)

(declare-fun e!617836 () Bool)

(assert (=> b!955323 (= e!617836 (not (isDefined!1867 lt!345382)))))

(declare-fun b!955324 () Bool)

(assert (=> b!955324 (= e!617834 None!2224)))

(declare-fun b!955325 () Bool)

(declare-fun e!617838 () Bool)

(assert (=> b!955325 (= e!617838 (matchR!1178 lt!345322 s!10566))))

(declare-fun b!955326 () Bool)

(declare-fun res!434212 () Bool)

(assert (=> b!955326 (=> (not res!434212) (not e!617837))))

(assert (=> b!955326 (= res!434212 (matchR!1178 (reg!2969 r!15766) (_1!6409 (get!3334 lt!345382))))))

(declare-fun b!955327 () Bool)

(assert (=> b!955327 (= e!617835 (Some!2224 (tuple2!11167 Nil!9854 s!10566)))))

(declare-fun d!284350 () Bool)

(assert (=> d!284350 e!617836))

(declare-fun res!434214 () Bool)

(assert (=> d!284350 (=> res!434214 e!617836)))

(assert (=> d!284350 (= res!434214 e!617837)))

(declare-fun res!434213 () Bool)

(assert (=> d!284350 (=> (not res!434213) (not e!617837))))

(assert (=> d!284350 (= res!434213 (isDefined!1867 lt!345382))))

(assert (=> d!284350 (= lt!345382 e!617835)))

(declare-fun c!155501 () Bool)

(assert (=> d!284350 (= c!155501 e!617838)))

(declare-fun res!434216 () Bool)

(assert (=> d!284350 (=> (not res!434216) (not e!617838))))

(assert (=> d!284350 (= res!434216 (matchR!1178 (reg!2969 r!15766) Nil!9854))))

(assert (=> d!284350 (validRegex!1109 (reg!2969 r!15766))))

(assert (=> d!284350 (= (findConcatSeparation!331 (reg!2969 r!15766) lt!345322 Nil!9854 s!10566 s!10566) lt!345382)))

(declare-fun b!955320 () Bool)

(declare-fun lt!345380 () Unit!14923)

(declare-fun lt!345381 () Unit!14923)

(assert (=> b!955320 (= lt!345380 lt!345381)))

(assert (=> b!955320 (= (++!2643 (++!2643 Nil!9854 (Cons!9854 (h!15255 s!10566) Nil!9854)) (t!100916 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!252 (List!9870 C!5850 List!9870 List!9870) Unit!14923)

(assert (=> b!955320 (= lt!345381 (lemmaMoveElementToOtherListKeepsConcatEq!252 Nil!9854 (h!15255 s!10566) (t!100916 s!10566) s!10566))))

(assert (=> b!955320 (= e!617834 (findConcatSeparation!331 (reg!2969 r!15766) lt!345322 (++!2643 Nil!9854 (Cons!9854 (h!15255 s!10566) Nil!9854)) (t!100916 s!10566) s!10566))))

(assert (= (and d!284350 res!434216) b!955325))

(assert (= (and d!284350 c!155501) b!955327))

(assert (= (and d!284350 (not c!155501)) b!955322))

(assert (= (and b!955322 c!155500) b!955324))

(assert (= (and b!955322 (not c!155500)) b!955320))

(assert (= (and d!284350 res!434213) b!955326))

(assert (= (and b!955326 res!434212) b!955321))

(assert (= (and b!955321 res!434215) b!955319))

(assert (= (and d!284350 (not res!434214)) b!955323))

(declare-fun m!1165993 () Bool)

(assert (=> b!955326 m!1165993))

(declare-fun m!1165995 () Bool)

(assert (=> b!955326 m!1165995))

(declare-fun m!1165997 () Bool)

(assert (=> b!955325 m!1165997))

(declare-fun m!1165999 () Bool)

(assert (=> b!955320 m!1165999))

(assert (=> b!955320 m!1165999))

(declare-fun m!1166001 () Bool)

(assert (=> b!955320 m!1166001))

(declare-fun m!1166003 () Bool)

(assert (=> b!955320 m!1166003))

(assert (=> b!955320 m!1165999))

(declare-fun m!1166005 () Bool)

(assert (=> b!955320 m!1166005))

(declare-fun m!1166007 () Bool)

(assert (=> b!955323 m!1166007))

(assert (=> b!955319 m!1165993))

(declare-fun m!1166009 () Bool)

(assert (=> b!955319 m!1166009))

(assert (=> d!284350 m!1166007))

(declare-fun m!1166011 () Bool)

(assert (=> d!284350 m!1166011))

(assert (=> d!284350 m!1165973))

(assert (=> b!955321 m!1165993))

(declare-fun m!1166013 () Bool)

(assert (=> b!955321 m!1166013))

(assert (=> b!955127 d!284350))

(declare-fun d!284362 () Bool)

(declare-fun res!434231 () Bool)

(declare-fun e!617854 () Bool)

(assert (=> d!284362 (=> res!434231 e!617854)))

(assert (=> d!284362 (= res!434231 (is-ElementMatch!2640 r!15766))))

(assert (=> d!284362 (= (validRegex!1109 r!15766) e!617854)))

(declare-fun b!955346 () Bool)

(declare-fun e!617858 () Bool)

(declare-fun call!59991 () Bool)

(assert (=> b!955346 (= e!617858 call!59991)))

(declare-fun b!955347 () Bool)

(declare-fun res!434230 () Bool)

(assert (=> b!955347 (=> (not res!434230) (not e!617858))))

(declare-fun call!59990 () Bool)

(assert (=> b!955347 (= res!434230 call!59990)))

(declare-fun e!617857 () Bool)

(assert (=> b!955347 (= e!617857 e!617858)))

(declare-fun b!955348 () Bool)

(declare-fun e!617856 () Bool)

(declare-fun e!617853 () Bool)

(assert (=> b!955348 (= e!617856 e!617853)))

(declare-fun res!434228 () Bool)

(assert (=> b!955348 (=> (not res!434228) (not e!617853))))

(assert (=> b!955348 (= res!434228 call!59990)))

(declare-fun b!955349 () Bool)

(declare-fun e!617855 () Bool)

(declare-fun e!617859 () Bool)

(assert (=> b!955349 (= e!617855 e!617859)))

(declare-fun res!434227 () Bool)

(assert (=> b!955349 (= res!434227 (not (nullable!789 (reg!2969 r!15766))))))

(assert (=> b!955349 (=> (not res!434227) (not e!617859))))

(declare-fun b!955350 () Bool)

(assert (=> b!955350 (= e!617855 e!617857)))

(declare-fun c!155507 () Bool)

(assert (=> b!955350 (= c!155507 (is-Union!2640 r!15766))))

(declare-fun b!955351 () Bool)

(assert (=> b!955351 (= e!617853 call!59991)))

(declare-fun b!955352 () Bool)

(declare-fun res!434229 () Bool)

(assert (=> b!955352 (=> res!434229 e!617856)))

(assert (=> b!955352 (= res!434229 (not (is-Concat!4473 r!15766)))))

(assert (=> b!955352 (= e!617857 e!617856)))

(declare-fun c!155506 () Bool)

(declare-fun call!59989 () Bool)

(declare-fun bm!59984 () Bool)

(assert (=> bm!59984 (= call!59989 (validRegex!1109 (ite c!155506 (reg!2969 r!15766) (ite c!155507 (regOne!5793 r!15766) (regOne!5792 r!15766)))))))

(declare-fun bm!59985 () Bool)

(assert (=> bm!59985 (= call!59990 call!59989)))

(declare-fun bm!59986 () Bool)

(assert (=> bm!59986 (= call!59991 (validRegex!1109 (ite c!155507 (regTwo!5793 r!15766) (regTwo!5792 r!15766))))))

(declare-fun b!955353 () Bool)

(assert (=> b!955353 (= e!617854 e!617855)))

(assert (=> b!955353 (= c!155506 (is-Star!2640 r!15766))))

(declare-fun b!955354 () Bool)

(assert (=> b!955354 (= e!617859 call!59989)))

(assert (= (and d!284362 (not res!434231)) b!955353))

(assert (= (and b!955353 c!155506) b!955349))

(assert (= (and b!955353 (not c!155506)) b!955350))

(assert (= (and b!955349 res!434227) b!955354))

(assert (= (and b!955350 c!155507) b!955347))

(assert (= (and b!955350 (not c!155507)) b!955352))

(assert (= (and b!955347 res!434230) b!955346))

(assert (= (and b!955352 (not res!434229)) b!955348))

(assert (= (and b!955348 res!434228) b!955351))

(assert (= (or b!955346 b!955351) bm!59986))

(assert (= (or b!955347 b!955348) bm!59985))

(assert (= (or b!955354 bm!59985) bm!59984))

(declare-fun m!1166015 () Bool)

(assert (=> b!955349 m!1166015))

(declare-fun m!1166017 () Bool)

(assert (=> bm!59984 m!1166017))

(declare-fun m!1166019 () Bool)

(assert (=> bm!59986 m!1166019))

(assert (=> start!85108 d!284362))

(declare-fun d!284364 () Bool)

(declare-fun e!617865 () Bool)

(assert (=> d!284364 e!617865))

(declare-fun c!155509 () Bool)

(assert (=> d!284364 (= c!155509 (is-EmptyExpr!2640 (reg!2969 r!15766)))))

(declare-fun lt!345383 () Bool)

(declare-fun e!617861 () Bool)

(assert (=> d!284364 (= lt!345383 e!617861)))

(declare-fun c!155508 () Bool)

(assert (=> d!284364 (= c!155508 (isEmpty!6133 (_1!6409 lt!345324)))))

(assert (=> d!284364 (validRegex!1109 (reg!2969 r!15766))))

(assert (=> d!284364 (= (matchR!1178 (reg!2969 r!15766) (_1!6409 lt!345324)) lt!345383)))

(declare-fun b!955355 () Bool)

(declare-fun e!617866 () Bool)

(assert (=> b!955355 (= e!617866 (= (head!1751 (_1!6409 lt!345324)) (c!155473 (reg!2969 r!15766))))))

(declare-fun b!955356 () Bool)

(declare-fun res!434236 () Bool)

(assert (=> b!955356 (=> (not res!434236) (not e!617866))))

(assert (=> b!955356 (= res!434236 (isEmpty!6133 (tail!1313 (_1!6409 lt!345324))))))

(declare-fun b!955357 () Bool)

(declare-fun e!617860 () Bool)

(assert (=> b!955357 (= e!617860 (not lt!345383))))

(declare-fun b!955358 () Bool)

(declare-fun e!617863 () Bool)

(assert (=> b!955358 (= e!617863 (not (= (head!1751 (_1!6409 lt!345324)) (c!155473 (reg!2969 r!15766)))))))

(declare-fun b!955359 () Bool)

(declare-fun e!617864 () Bool)

(assert (=> b!955359 (= e!617864 e!617863)))

(declare-fun res!434233 () Bool)

(assert (=> b!955359 (=> res!434233 e!617863)))

(declare-fun call!59992 () Bool)

(assert (=> b!955359 (= res!434233 call!59992)))

(declare-fun b!955360 () Bool)

(declare-fun e!617862 () Bool)

(assert (=> b!955360 (= e!617862 e!617864)))

(declare-fun res!434235 () Bool)

(assert (=> b!955360 (=> (not res!434235) (not e!617864))))

(assert (=> b!955360 (= res!434235 (not lt!345383))))

(declare-fun b!955361 () Bool)

(declare-fun res!434237 () Bool)

(assert (=> b!955361 (=> res!434237 e!617862)))

(assert (=> b!955361 (= res!434237 e!617866)))

(declare-fun res!434234 () Bool)

(assert (=> b!955361 (=> (not res!434234) (not e!617866))))

(assert (=> b!955361 (= res!434234 lt!345383)))

(declare-fun b!955362 () Bool)

(declare-fun res!434232 () Bool)

(assert (=> b!955362 (=> (not res!434232) (not e!617866))))

(assert (=> b!955362 (= res!434232 (not call!59992))))

(declare-fun b!955363 () Bool)

(declare-fun res!434239 () Bool)

(assert (=> b!955363 (=> res!434239 e!617863)))

(assert (=> b!955363 (= res!434239 (not (isEmpty!6133 (tail!1313 (_1!6409 lt!345324)))))))

(declare-fun b!955364 () Bool)

(assert (=> b!955364 (= e!617861 (nullable!789 (reg!2969 r!15766)))))

(declare-fun b!955365 () Bool)

(assert (=> b!955365 (= e!617865 (= lt!345383 call!59992))))

(declare-fun b!955366 () Bool)

(assert (=> b!955366 (= e!617865 e!617860)))

(declare-fun c!155510 () Bool)

(assert (=> b!955366 (= c!155510 (is-EmptyLang!2640 (reg!2969 r!15766)))))

(declare-fun b!955367 () Bool)

(assert (=> b!955367 (= e!617861 (matchR!1178 (derivativeStep!598 (reg!2969 r!15766) (head!1751 (_1!6409 lt!345324))) (tail!1313 (_1!6409 lt!345324))))))

(declare-fun bm!59987 () Bool)

(assert (=> bm!59987 (= call!59992 (isEmpty!6133 (_1!6409 lt!345324)))))

(declare-fun b!955368 () Bool)

(declare-fun res!434238 () Bool)

(assert (=> b!955368 (=> res!434238 e!617862)))

(assert (=> b!955368 (= res!434238 (not (is-ElementMatch!2640 (reg!2969 r!15766))))))

(assert (=> b!955368 (= e!617860 e!617862)))

(assert (= (and d!284364 c!155508) b!955364))

(assert (= (and d!284364 (not c!155508)) b!955367))

(assert (= (and d!284364 c!155509) b!955365))

(assert (= (and d!284364 (not c!155509)) b!955366))

(assert (= (and b!955366 c!155510) b!955357))

(assert (= (and b!955366 (not c!155510)) b!955368))

(assert (= (and b!955368 (not res!434238)) b!955361))

(assert (= (and b!955361 res!434234) b!955362))

(assert (= (and b!955362 res!434232) b!955356))

(assert (= (and b!955356 res!434236) b!955355))

(assert (= (and b!955361 (not res!434237)) b!955360))

(assert (= (and b!955360 res!434235) b!955359))

(assert (= (and b!955359 (not res!434233)) b!955363))

(assert (= (and b!955363 (not res!434239)) b!955358))

(assert (= (or b!955365 b!955359 b!955362) bm!59987))

(declare-fun m!1166021 () Bool)

(assert (=> d!284364 m!1166021))

(assert (=> d!284364 m!1165973))

(declare-fun m!1166023 () Bool)

(assert (=> b!955355 m!1166023))

(declare-fun m!1166025 () Bool)

(assert (=> b!955363 m!1166025))

(assert (=> b!955363 m!1166025))

(declare-fun m!1166027 () Bool)

(assert (=> b!955363 m!1166027))

(assert (=> bm!59987 m!1166021))

(assert (=> b!955356 m!1166025))

(assert (=> b!955356 m!1166025))

(assert (=> b!955356 m!1166027))

(assert (=> b!955364 m!1166015))

(assert (=> b!955358 m!1166023))

(assert (=> b!955367 m!1166023))

(assert (=> b!955367 m!1166023))

(declare-fun m!1166029 () Bool)

(assert (=> b!955367 m!1166029))

(assert (=> b!955367 m!1166025))

(assert (=> b!955367 m!1166029))

(assert (=> b!955367 m!1166025))

(declare-fun m!1166031 () Bool)

(assert (=> b!955367 m!1166031))

(assert (=> b!955123 d!284364))

(declare-fun d!284366 () Bool)

(assert (=> d!284366 (= (get!3334 lt!345323) (v!19641 lt!345323))))

(assert (=> b!955123 d!284366))

(declare-fun b!955379 () Bool)

(declare-fun res!434245 () Bool)

(declare-fun e!617872 () Bool)

(assert (=> b!955379 (=> (not res!434245) (not e!617872))))

(declare-fun lt!345386 () List!9870)

(assert (=> b!955379 (= res!434245 (= (size!7912 lt!345386) (+ (size!7912 (_1!6409 lt!345324)) (size!7912 (_2!6409 lt!345324)))))))

(declare-fun b!955380 () Bool)

(assert (=> b!955380 (= e!617872 (or (not (= (_2!6409 lt!345324) Nil!9854)) (= lt!345386 (_1!6409 lt!345324))))))

(declare-fun b!955377 () Bool)

(declare-fun e!617871 () List!9870)

(assert (=> b!955377 (= e!617871 (_2!6409 lt!345324))))

(declare-fun b!955378 () Bool)

(assert (=> b!955378 (= e!617871 (Cons!9854 (h!15255 (_1!6409 lt!345324)) (++!2643 (t!100916 (_1!6409 lt!345324)) (_2!6409 lt!345324))))))

(declare-fun d!284368 () Bool)

(assert (=> d!284368 e!617872))

(declare-fun res!434244 () Bool)

(assert (=> d!284368 (=> (not res!434244) (not e!617872))))

(declare-fun content!1400 (List!9870) (Set C!5850))

(assert (=> d!284368 (= res!434244 (= (content!1400 lt!345386) (set.union (content!1400 (_1!6409 lt!345324)) (content!1400 (_2!6409 lt!345324)))))))

(assert (=> d!284368 (= lt!345386 e!617871)))

(declare-fun c!155513 () Bool)

(assert (=> d!284368 (= c!155513 (is-Nil!9854 (_1!6409 lt!345324)))))

(assert (=> d!284368 (= (++!2643 (_1!6409 lt!345324) (_2!6409 lt!345324)) lt!345386)))

(assert (= (and d!284368 c!155513) b!955377))

(assert (= (and d!284368 (not c!155513)) b!955378))

(assert (= (and d!284368 res!434244) b!955379))

(assert (= (and b!955379 res!434245) b!955380))

(declare-fun m!1166033 () Bool)

(assert (=> b!955379 m!1166033))

(declare-fun m!1166035 () Bool)

(assert (=> b!955379 m!1166035))

(assert (=> b!955379 m!1165883))

(declare-fun m!1166037 () Bool)

(assert (=> b!955378 m!1166037))

(declare-fun m!1166039 () Bool)

(assert (=> d!284368 m!1166039))

(declare-fun m!1166041 () Bool)

(assert (=> d!284368 m!1166041))

(declare-fun m!1166043 () Bool)

(assert (=> d!284368 m!1166043))

(assert (=> b!955129 d!284368))

(declare-fun d!284370 () Bool)

(declare-fun e!617878 () Bool)

(assert (=> d!284370 e!617878))

(declare-fun c!155515 () Bool)

(assert (=> d!284370 (= c!155515 (is-EmptyExpr!2640 lt!345322))))

(declare-fun lt!345387 () Bool)

(declare-fun e!617874 () Bool)

(assert (=> d!284370 (= lt!345387 e!617874)))

(declare-fun c!155514 () Bool)

(assert (=> d!284370 (= c!155514 (isEmpty!6133 (_2!6409 lt!345324)))))

(assert (=> d!284370 (validRegex!1109 lt!345322)))

(assert (=> d!284370 (= (matchR!1178 lt!345322 (_2!6409 lt!345324)) lt!345387)))

(declare-fun b!955381 () Bool)

(declare-fun e!617879 () Bool)

(assert (=> b!955381 (= e!617879 (= (head!1751 (_2!6409 lt!345324)) (c!155473 lt!345322)))))

(declare-fun b!955382 () Bool)

(declare-fun res!434250 () Bool)

(assert (=> b!955382 (=> (not res!434250) (not e!617879))))

(assert (=> b!955382 (= res!434250 (isEmpty!6133 (tail!1313 (_2!6409 lt!345324))))))

(declare-fun b!955383 () Bool)

(declare-fun e!617873 () Bool)

(assert (=> b!955383 (= e!617873 (not lt!345387))))

(declare-fun b!955384 () Bool)

(declare-fun e!617876 () Bool)

(assert (=> b!955384 (= e!617876 (not (= (head!1751 (_2!6409 lt!345324)) (c!155473 lt!345322))))))

(declare-fun b!955385 () Bool)

(declare-fun e!617877 () Bool)

(assert (=> b!955385 (= e!617877 e!617876)))

(declare-fun res!434247 () Bool)

(assert (=> b!955385 (=> res!434247 e!617876)))

(declare-fun call!59993 () Bool)

(assert (=> b!955385 (= res!434247 call!59993)))

(declare-fun b!955386 () Bool)

(declare-fun e!617875 () Bool)

(assert (=> b!955386 (= e!617875 e!617877)))

(declare-fun res!434249 () Bool)

(assert (=> b!955386 (=> (not res!434249) (not e!617877))))

(assert (=> b!955386 (= res!434249 (not lt!345387))))

(declare-fun b!955387 () Bool)

(declare-fun res!434251 () Bool)

(assert (=> b!955387 (=> res!434251 e!617875)))

(assert (=> b!955387 (= res!434251 e!617879)))

(declare-fun res!434248 () Bool)

(assert (=> b!955387 (=> (not res!434248) (not e!617879))))

(assert (=> b!955387 (= res!434248 lt!345387)))

(declare-fun b!955388 () Bool)

(declare-fun res!434246 () Bool)

(assert (=> b!955388 (=> (not res!434246) (not e!617879))))

(assert (=> b!955388 (= res!434246 (not call!59993))))

(declare-fun b!955389 () Bool)

(declare-fun res!434253 () Bool)

(assert (=> b!955389 (=> res!434253 e!617876)))

(assert (=> b!955389 (= res!434253 (not (isEmpty!6133 (tail!1313 (_2!6409 lt!345324)))))))

(declare-fun b!955390 () Bool)

(assert (=> b!955390 (= e!617874 (nullable!789 lt!345322))))

(declare-fun b!955391 () Bool)

(assert (=> b!955391 (= e!617878 (= lt!345387 call!59993))))

(declare-fun b!955392 () Bool)

(assert (=> b!955392 (= e!617878 e!617873)))

(declare-fun c!155516 () Bool)

(assert (=> b!955392 (= c!155516 (is-EmptyLang!2640 lt!345322))))

(declare-fun b!955393 () Bool)

(assert (=> b!955393 (= e!617874 (matchR!1178 (derivativeStep!598 lt!345322 (head!1751 (_2!6409 lt!345324))) (tail!1313 (_2!6409 lt!345324))))))

(declare-fun bm!59988 () Bool)

(assert (=> bm!59988 (= call!59993 (isEmpty!6133 (_2!6409 lt!345324)))))

(declare-fun b!955394 () Bool)

(declare-fun res!434252 () Bool)

(assert (=> b!955394 (=> res!434252 e!617875)))

(assert (=> b!955394 (= res!434252 (not (is-ElementMatch!2640 lt!345322)))))

(assert (=> b!955394 (= e!617873 e!617875)))

(assert (= (and d!284370 c!155514) b!955390))

(assert (= (and d!284370 (not c!155514)) b!955393))

(assert (= (and d!284370 c!155515) b!955391))

(assert (= (and d!284370 (not c!155515)) b!955392))

(assert (= (and b!955392 c!155516) b!955383))

(assert (= (and b!955392 (not c!155516)) b!955394))

(assert (= (and b!955394 (not res!434252)) b!955387))

(assert (= (and b!955387 res!434248) b!955388))

(assert (= (and b!955388 res!434246) b!955382))

(assert (= (and b!955382 res!434250) b!955381))

(assert (= (and b!955387 (not res!434251)) b!955386))

(assert (= (and b!955386 res!434249) b!955385))

(assert (= (and b!955385 (not res!434247)) b!955389))

(assert (= (and b!955389 (not res!434253)) b!955384))

(assert (= (or b!955391 b!955385 b!955388) bm!59988))

(declare-fun m!1166045 () Bool)

(assert (=> d!284370 m!1166045))

(declare-fun m!1166047 () Bool)

(assert (=> d!284370 m!1166047))

(declare-fun m!1166049 () Bool)

(assert (=> b!955381 m!1166049))

(declare-fun m!1166051 () Bool)

(assert (=> b!955389 m!1166051))

(assert (=> b!955389 m!1166051))

(declare-fun m!1166053 () Bool)

(assert (=> b!955389 m!1166053))

(assert (=> bm!59988 m!1166045))

(assert (=> b!955382 m!1166051))

(assert (=> b!955382 m!1166051))

(assert (=> b!955382 m!1166053))

(declare-fun m!1166055 () Bool)

(assert (=> b!955390 m!1166055))

(assert (=> b!955384 m!1166049))

(assert (=> b!955393 m!1166049))

(assert (=> b!955393 m!1166049))

(declare-fun m!1166057 () Bool)

(assert (=> b!955393 m!1166057))

(assert (=> b!955393 m!1166051))

(assert (=> b!955393 m!1166057))

(assert (=> b!955393 m!1166051))

(declare-fun m!1166059 () Bool)

(assert (=> b!955393 m!1166059))

(assert (=> b!955119 d!284370))

(declare-fun d!284372 () Bool)

(declare-fun lt!345390 () Int)

(assert (=> d!284372 (>= lt!345390 0)))

(declare-fun e!617882 () Int)

(assert (=> d!284372 (= lt!345390 e!617882)))

(declare-fun c!155519 () Bool)

(assert (=> d!284372 (= c!155519 (is-Nil!9854 (_2!6409 lt!345324)))))

(assert (=> d!284372 (= (size!7912 (_2!6409 lt!345324)) lt!345390)))

(declare-fun b!955399 () Bool)

(assert (=> b!955399 (= e!617882 0)))

(declare-fun b!955400 () Bool)

(assert (=> b!955400 (= e!617882 (+ 1 (size!7912 (t!100916 (_2!6409 lt!345324)))))))

(assert (= (and d!284372 c!155519) b!955399))

(assert (= (and d!284372 (not c!155519)) b!955400))

(declare-fun m!1166061 () Bool)

(assert (=> b!955400 m!1166061))

(assert (=> b!955124 d!284372))

(declare-fun d!284374 () Bool)

(declare-fun lt!345391 () Int)

(assert (=> d!284374 (>= lt!345391 0)))

(declare-fun e!617883 () Int)

(assert (=> d!284374 (= lt!345391 e!617883)))

(declare-fun c!155520 () Bool)

(assert (=> d!284374 (= c!155520 (is-Nil!9854 s!10566))))

(assert (=> d!284374 (= (size!7912 s!10566) lt!345391)))

(declare-fun b!955401 () Bool)

(assert (=> b!955401 (= e!617883 0)))

(declare-fun b!955402 () Bool)

(assert (=> b!955402 (= e!617883 (+ 1 (size!7912 (t!100916 s!10566))))))

(assert (= (and d!284374 c!155520) b!955401))

(assert (= (and d!284374 (not c!155520)) b!955402))

(declare-fun m!1166063 () Bool)

(assert (=> b!955402 m!1166063))

(assert (=> b!955124 d!284374))

(declare-fun d!284376 () Bool)

(assert (=> d!284376 (= (matchR!1178 (reg!2969 r!15766) (_1!6409 lt!345324)) (matchR!1178 (removeUselessConcat!291 (reg!2969 r!15766)) (_1!6409 lt!345324)))))

(declare-fun lt!345400 () Unit!14923)

(declare-fun choose!5989 (Regex!2640 List!9870) Unit!14923)

(assert (=> d!284376 (= lt!345400 (choose!5989 (reg!2969 r!15766) (_1!6409 lt!345324)))))

(assert (=> d!284376 (validRegex!1109 (reg!2969 r!15766))))

(assert (=> d!284376 (= (lemmaRemoveUselessConcatSound!151 (reg!2969 r!15766) (_1!6409 lt!345324)) lt!345400)))

(declare-fun bs!240412 () Bool)

(assert (= bs!240412 d!284376))

(assert (=> bs!240412 m!1165973))

(declare-fun m!1166065 () Bool)

(assert (=> bs!240412 m!1166065))

(assert (=> bs!240412 m!1165863))

(assert (=> bs!240412 m!1165885))

(assert (=> bs!240412 m!1165887))

(assert (=> bs!240412 m!1165885))

(assert (=> b!955124 d!284376))

(declare-fun b!955443 () Bool)

(declare-fun e!617911 () Regex!2640)

(declare-fun e!617906 () Regex!2640)

(assert (=> b!955443 (= e!617911 e!617906)))

(declare-fun c!155536 () Bool)

(assert (=> b!955443 (= c!155536 (and (is-Concat!4473 (reg!2969 r!15766)) (is-EmptyExpr!2640 (regTwo!5792 (reg!2969 r!15766)))))))

(declare-fun bm!60000 () Bool)

(declare-fun call!60004 () Regex!2640)

(declare-fun call!60006 () Regex!2640)

(assert (=> bm!60000 (= call!60004 call!60006)))

(declare-fun b!955444 () Bool)

(declare-fun e!617909 () Regex!2640)

(declare-fun call!60005 () Regex!2640)

(assert (=> b!955444 (= e!617909 (Star!2640 call!60005))))

(declare-fun b!955445 () Bool)

(declare-fun c!155537 () Bool)

(assert (=> b!955445 (= c!155537 (is-Concat!4473 (reg!2969 r!15766)))))

(declare-fun e!617908 () Regex!2640)

(assert (=> b!955445 (= e!617906 e!617908)))

(declare-fun bm!60001 () Bool)

(declare-fun c!155538 () Bool)

(assert (=> bm!60001 (= call!60006 (removeUselessConcat!291 (ite c!155538 (regTwo!5792 (reg!2969 r!15766)) (ite c!155537 (regOne!5792 (reg!2969 r!15766)) (regOne!5793 (reg!2969 r!15766))))))))

(declare-fun b!955446 () Bool)

(declare-fun call!60007 () Regex!2640)

(assert (=> b!955446 (= e!617906 call!60007)))

(declare-fun c!155539 () Bool)

(declare-fun bm!60002 () Bool)

(assert (=> bm!60002 (= call!60007 (removeUselessConcat!291 (ite c!155536 (regOne!5792 (reg!2969 r!15766)) (ite c!155537 (regTwo!5792 (reg!2969 r!15766)) (ite c!155539 (regTwo!5793 (reg!2969 r!15766)) (reg!2969 (reg!2969 r!15766)))))))))

(declare-fun d!284378 () Bool)

(declare-fun e!617907 () Bool)

(assert (=> d!284378 e!617907))

(declare-fun res!434266 () Bool)

(assert (=> d!284378 (=> (not res!434266) (not e!617907))))

(declare-fun lt!345403 () Regex!2640)

(assert (=> d!284378 (= res!434266 (validRegex!1109 lt!345403))))

(assert (=> d!284378 (= lt!345403 e!617911)))

(assert (=> d!284378 (= c!155538 (and (is-Concat!4473 (reg!2969 r!15766)) (is-EmptyExpr!2640 (regOne!5792 (reg!2969 r!15766)))))))

(assert (=> d!284378 (validRegex!1109 (reg!2969 r!15766))))

(assert (=> d!284378 (= (removeUselessConcat!291 (reg!2969 r!15766)) lt!345403)))

(declare-fun bm!59999 () Bool)

(declare-fun call!60008 () Regex!2640)

(assert (=> bm!59999 (= call!60008 call!60007)))

(declare-fun b!955447 () Bool)

(assert (=> b!955447 (= e!617908 (Concat!4473 call!60004 call!60008))))

(declare-fun b!955448 () Bool)

(declare-fun c!155535 () Bool)

(assert (=> b!955448 (= c!155535 (is-Star!2640 (reg!2969 r!15766)))))

(declare-fun e!617910 () Regex!2640)

(assert (=> b!955448 (= e!617910 e!617909)))

(declare-fun b!955449 () Bool)

(assert (=> b!955449 (= e!617908 e!617910)))

(assert (=> b!955449 (= c!155539 (is-Union!2640 (reg!2969 r!15766)))))

(declare-fun b!955450 () Bool)

(assert (=> b!955450 (= e!617910 (Union!2640 call!60004 call!60005))))

(declare-fun b!955451 () Bool)

(assert (=> b!955451 (= e!617907 (= (nullable!789 lt!345403) (nullable!789 (reg!2969 r!15766))))))

(declare-fun b!955452 () Bool)

(assert (=> b!955452 (= e!617911 call!60006)))

(declare-fun bm!60003 () Bool)

(assert (=> bm!60003 (= call!60005 call!60008)))

(declare-fun b!955453 () Bool)

(assert (=> b!955453 (= e!617909 (reg!2969 r!15766))))

(assert (= (and d!284378 c!155538) b!955452))

(assert (= (and d!284378 (not c!155538)) b!955443))

(assert (= (and b!955443 c!155536) b!955446))

(assert (= (and b!955443 (not c!155536)) b!955445))

(assert (= (and b!955445 c!155537) b!955447))

(assert (= (and b!955445 (not c!155537)) b!955449))

(assert (= (and b!955449 c!155539) b!955450))

(assert (= (and b!955449 (not c!155539)) b!955448))

(assert (= (and b!955448 c!155535) b!955444))

(assert (= (and b!955448 (not c!155535)) b!955453))

(assert (= (or b!955450 b!955444) bm!60003))

(assert (= (or b!955447 bm!60003) bm!59999))

(assert (= (or b!955447 b!955450) bm!60000))

(assert (= (or b!955446 bm!59999) bm!60002))

(assert (= (or b!955452 bm!60000) bm!60001))

(assert (= (and d!284378 res!434266) b!955451))

(declare-fun m!1166067 () Bool)

(assert (=> bm!60001 m!1166067))

(declare-fun m!1166069 () Bool)

(assert (=> bm!60002 m!1166069))

(declare-fun m!1166071 () Bool)

(assert (=> d!284378 m!1166071))

(assert (=> d!284378 m!1165973))

(declare-fun m!1166073 () Bool)

(assert (=> b!955451 m!1166073))

(assert (=> b!955451 m!1166015))

(assert (=> b!955124 d!284378))

(declare-fun d!284380 () Bool)

(declare-fun e!617922 () Bool)

(assert (=> d!284380 e!617922))

(declare-fun c!155543 () Bool)

(assert (=> d!284380 (= c!155543 (is-EmptyExpr!2640 (removeUselessConcat!291 (reg!2969 r!15766))))))

(declare-fun lt!345407 () Bool)

(declare-fun e!617918 () Bool)

(assert (=> d!284380 (= lt!345407 e!617918)))

(declare-fun c!155542 () Bool)

(assert (=> d!284380 (= c!155542 (isEmpty!6133 (_1!6409 lt!345324)))))

(assert (=> d!284380 (validRegex!1109 (removeUselessConcat!291 (reg!2969 r!15766)))))

(assert (=> d!284380 (= (matchR!1178 (removeUselessConcat!291 (reg!2969 r!15766)) (_1!6409 lt!345324)) lt!345407)))

(declare-fun b!955463 () Bool)

(declare-fun e!617923 () Bool)

(assert (=> b!955463 (= e!617923 (= (head!1751 (_1!6409 lt!345324)) (c!155473 (removeUselessConcat!291 (reg!2969 r!15766)))))))

(declare-fun b!955464 () Bool)

(declare-fun res!434276 () Bool)

(assert (=> b!955464 (=> (not res!434276) (not e!617923))))

(assert (=> b!955464 (= res!434276 (isEmpty!6133 (tail!1313 (_1!6409 lt!345324))))))

(declare-fun b!955465 () Bool)

(declare-fun e!617917 () Bool)

(assert (=> b!955465 (= e!617917 (not lt!345407))))

(declare-fun b!955466 () Bool)

(declare-fun e!617920 () Bool)

(assert (=> b!955466 (= e!617920 (not (= (head!1751 (_1!6409 lt!345324)) (c!155473 (removeUselessConcat!291 (reg!2969 r!15766))))))))

(declare-fun b!955467 () Bool)

(declare-fun e!617921 () Bool)

(assert (=> b!955467 (= e!617921 e!617920)))

(declare-fun res!434273 () Bool)

(assert (=> b!955467 (=> res!434273 e!617920)))

(declare-fun call!60009 () Bool)

(assert (=> b!955467 (= res!434273 call!60009)))

(declare-fun b!955468 () Bool)

(declare-fun e!617919 () Bool)

(assert (=> b!955468 (= e!617919 e!617921)))

(declare-fun res!434275 () Bool)

(assert (=> b!955468 (=> (not res!434275) (not e!617921))))

(assert (=> b!955468 (= res!434275 (not lt!345407))))

(declare-fun b!955469 () Bool)

(declare-fun res!434277 () Bool)

(assert (=> b!955469 (=> res!434277 e!617919)))

(assert (=> b!955469 (= res!434277 e!617923)))

(declare-fun res!434274 () Bool)

(assert (=> b!955469 (=> (not res!434274) (not e!617923))))

(assert (=> b!955469 (= res!434274 lt!345407)))

(declare-fun b!955470 () Bool)

(declare-fun res!434272 () Bool)

(assert (=> b!955470 (=> (not res!434272) (not e!617923))))

(assert (=> b!955470 (= res!434272 (not call!60009))))

(declare-fun b!955471 () Bool)

(declare-fun res!434279 () Bool)

(assert (=> b!955471 (=> res!434279 e!617920)))

(assert (=> b!955471 (= res!434279 (not (isEmpty!6133 (tail!1313 (_1!6409 lt!345324)))))))

(declare-fun b!955472 () Bool)

(assert (=> b!955472 (= e!617918 (nullable!789 (removeUselessConcat!291 (reg!2969 r!15766))))))

(declare-fun b!955473 () Bool)

(assert (=> b!955473 (= e!617922 (= lt!345407 call!60009))))

(declare-fun b!955474 () Bool)

(assert (=> b!955474 (= e!617922 e!617917)))

(declare-fun c!155544 () Bool)

(assert (=> b!955474 (= c!155544 (is-EmptyLang!2640 (removeUselessConcat!291 (reg!2969 r!15766))))))

(declare-fun b!955475 () Bool)

(assert (=> b!955475 (= e!617918 (matchR!1178 (derivativeStep!598 (removeUselessConcat!291 (reg!2969 r!15766)) (head!1751 (_1!6409 lt!345324))) (tail!1313 (_1!6409 lt!345324))))))

(declare-fun bm!60004 () Bool)

(assert (=> bm!60004 (= call!60009 (isEmpty!6133 (_1!6409 lt!345324)))))

(declare-fun b!955476 () Bool)

(declare-fun res!434278 () Bool)

(assert (=> b!955476 (=> res!434278 e!617919)))

(assert (=> b!955476 (= res!434278 (not (is-ElementMatch!2640 (removeUselessConcat!291 (reg!2969 r!15766)))))))

(assert (=> b!955476 (= e!617917 e!617919)))

(assert (= (and d!284380 c!155542) b!955472))

(assert (= (and d!284380 (not c!155542)) b!955475))

(assert (= (and d!284380 c!155543) b!955473))

(assert (= (and d!284380 (not c!155543)) b!955474))

(assert (= (and b!955474 c!155544) b!955465))

(assert (= (and b!955474 (not c!155544)) b!955476))

(assert (= (and b!955476 (not res!434278)) b!955469))

(assert (= (and b!955469 res!434274) b!955470))

(assert (= (and b!955470 res!434272) b!955464))

(assert (= (and b!955464 res!434276) b!955463))

(assert (= (and b!955469 (not res!434277)) b!955468))

(assert (= (and b!955468 res!434275) b!955467))

(assert (= (and b!955467 (not res!434273)) b!955471))

(assert (= (and b!955471 (not res!434279)) b!955466))

(assert (= (or b!955473 b!955467 b!955470) bm!60004))

(assert (=> d!284380 m!1166021))

(assert (=> d!284380 m!1165885))

(declare-fun m!1166075 () Bool)

(assert (=> d!284380 m!1166075))

(assert (=> b!955463 m!1166023))

(assert (=> b!955471 m!1166025))

(assert (=> b!955471 m!1166025))

(assert (=> b!955471 m!1166027))

(assert (=> bm!60004 m!1166021))

(assert (=> b!955464 m!1166025))

(assert (=> b!955464 m!1166025))

(assert (=> b!955464 m!1166027))

(assert (=> b!955472 m!1165885))

(declare-fun m!1166077 () Bool)

(assert (=> b!955472 m!1166077))

(assert (=> b!955466 m!1166023))

(assert (=> b!955475 m!1166023))

(assert (=> b!955475 m!1165885))

(assert (=> b!955475 m!1166023))

(declare-fun m!1166079 () Bool)

(assert (=> b!955475 m!1166079))

(assert (=> b!955475 m!1166025))

(assert (=> b!955475 m!1166079))

(assert (=> b!955475 m!1166025))

(declare-fun m!1166081 () Bool)

(assert (=> b!955475 m!1166081))

(assert (=> b!955124 d!284380))

(declare-fun b!955481 () Bool)

(declare-fun e!617926 () Bool)

(declare-fun tp!294235 () Bool)

(assert (=> b!955481 (= e!617926 (and tp_is_empty!4923 tp!294235))))

(assert (=> b!955125 (= tp!294213 e!617926)))

(assert (= (and b!955125 (is-Cons!9854 (t!100916 s!10566))) b!955481))

(declare-fun b!955495 () Bool)

(declare-fun e!617929 () Bool)

(declare-fun tp!294248 () Bool)

(declare-fun tp!294249 () Bool)

(assert (=> b!955495 (= e!617929 (and tp!294248 tp!294249))))

(assert (=> b!955121 (= tp!294209 e!617929)))

(declare-fun b!955492 () Bool)

(assert (=> b!955492 (= e!617929 tp_is_empty!4923)))

(declare-fun b!955493 () Bool)

(declare-fun tp!294247 () Bool)

(declare-fun tp!294246 () Bool)

(assert (=> b!955493 (= e!617929 (and tp!294247 tp!294246))))

(declare-fun b!955494 () Bool)

(declare-fun tp!294250 () Bool)

(assert (=> b!955494 (= e!617929 tp!294250)))

(assert (= (and b!955121 (is-ElementMatch!2640 (regOne!5793 r!15766))) b!955492))

(assert (= (and b!955121 (is-Concat!4473 (regOne!5793 r!15766))) b!955493))

(assert (= (and b!955121 (is-Star!2640 (regOne!5793 r!15766))) b!955494))

(assert (= (and b!955121 (is-Union!2640 (regOne!5793 r!15766))) b!955495))

(declare-fun b!955499 () Bool)

(declare-fun e!617930 () Bool)

(declare-fun tp!294253 () Bool)

(declare-fun tp!294254 () Bool)

(assert (=> b!955499 (= e!617930 (and tp!294253 tp!294254))))

(assert (=> b!955121 (= tp!294214 e!617930)))

(declare-fun b!955496 () Bool)

(assert (=> b!955496 (= e!617930 tp_is_empty!4923)))

(declare-fun b!955497 () Bool)

(declare-fun tp!294252 () Bool)

(declare-fun tp!294251 () Bool)

(assert (=> b!955497 (= e!617930 (and tp!294252 tp!294251))))

(declare-fun b!955498 () Bool)

(declare-fun tp!294255 () Bool)

(assert (=> b!955498 (= e!617930 tp!294255)))

(assert (= (and b!955121 (is-ElementMatch!2640 (regTwo!5793 r!15766))) b!955496))

(assert (= (and b!955121 (is-Concat!4473 (regTwo!5793 r!15766))) b!955497))

(assert (= (and b!955121 (is-Star!2640 (regTwo!5793 r!15766))) b!955498))

(assert (= (and b!955121 (is-Union!2640 (regTwo!5793 r!15766))) b!955499))

(declare-fun b!955503 () Bool)

(declare-fun e!617931 () Bool)

(declare-fun tp!294258 () Bool)

(declare-fun tp!294259 () Bool)

(assert (=> b!955503 (= e!617931 (and tp!294258 tp!294259))))

(assert (=> b!955122 (= tp!294210 e!617931)))

(declare-fun b!955500 () Bool)

(assert (=> b!955500 (= e!617931 tp_is_empty!4923)))

(declare-fun b!955501 () Bool)

(declare-fun tp!294257 () Bool)

(declare-fun tp!294256 () Bool)

(assert (=> b!955501 (= e!617931 (and tp!294257 tp!294256))))

(declare-fun b!955502 () Bool)

(declare-fun tp!294260 () Bool)

(assert (=> b!955502 (= e!617931 tp!294260)))

(assert (= (and b!955122 (is-ElementMatch!2640 (regOne!5792 r!15766))) b!955500))

(assert (= (and b!955122 (is-Concat!4473 (regOne!5792 r!15766))) b!955501))

(assert (= (and b!955122 (is-Star!2640 (regOne!5792 r!15766))) b!955502))

(assert (= (and b!955122 (is-Union!2640 (regOne!5792 r!15766))) b!955503))

(declare-fun b!955507 () Bool)

(declare-fun e!617932 () Bool)

(declare-fun tp!294263 () Bool)

(declare-fun tp!294264 () Bool)

(assert (=> b!955507 (= e!617932 (and tp!294263 tp!294264))))

(assert (=> b!955122 (= tp!294211 e!617932)))

(declare-fun b!955504 () Bool)

(assert (=> b!955504 (= e!617932 tp_is_empty!4923)))

(declare-fun b!955505 () Bool)

(declare-fun tp!294262 () Bool)

(declare-fun tp!294261 () Bool)

(assert (=> b!955505 (= e!617932 (and tp!294262 tp!294261))))

(declare-fun b!955506 () Bool)

(declare-fun tp!294265 () Bool)

(assert (=> b!955506 (= e!617932 tp!294265)))

(assert (= (and b!955122 (is-ElementMatch!2640 (regTwo!5792 r!15766))) b!955504))

(assert (= (and b!955122 (is-Concat!4473 (regTwo!5792 r!15766))) b!955505))

(assert (= (and b!955122 (is-Star!2640 (regTwo!5792 r!15766))) b!955506))

(assert (= (and b!955122 (is-Union!2640 (regTwo!5792 r!15766))) b!955507))

(declare-fun b!955511 () Bool)

(declare-fun e!617933 () Bool)

(declare-fun tp!294268 () Bool)

(declare-fun tp!294269 () Bool)

(assert (=> b!955511 (= e!617933 (and tp!294268 tp!294269))))

(assert (=> b!955128 (= tp!294212 e!617933)))

(declare-fun b!955508 () Bool)

(assert (=> b!955508 (= e!617933 tp_is_empty!4923)))

(declare-fun b!955509 () Bool)

(declare-fun tp!294267 () Bool)

(declare-fun tp!294266 () Bool)

(assert (=> b!955509 (= e!617933 (and tp!294267 tp!294266))))

(declare-fun b!955510 () Bool)

(declare-fun tp!294270 () Bool)

(assert (=> b!955510 (= e!617933 tp!294270)))

(assert (= (and b!955128 (is-ElementMatch!2640 (reg!2969 r!15766))) b!955508))

(assert (= (and b!955128 (is-Concat!4473 (reg!2969 r!15766))) b!955509))

(assert (= (and b!955128 (is-Star!2640 (reg!2969 r!15766))) b!955510))

(assert (= (and b!955128 (is-Union!2640 (reg!2969 r!15766))) b!955511))

(push 1)

(assert (not b!955378))

(assert (not b!955503))

(assert (not b!955390))

(assert (not b!955363))

(assert (not b!955384))

(assert (not b!955507))

(assert (not bm!59984))

(assert (not b!955320))

(assert (not d!284370))

(assert (not b!955481))

(assert (not b!955220))

(assert (not b!955326))

(assert (not b!955509))

(assert (not d!284340))

(assert (not d!284344))

(assert (not b!955364))

(assert (not b!955494))

(assert (not bm!60002))

(assert (not b!955349))

(assert (not b!955358))

(assert (not bm!59973))

(assert (not b!955400))

(assert (not b!955495))

(assert (not d!284342))

(assert (not d!284378))

(assert (not b!955382))

(assert (not b!955325))

(assert (not b!955264))

(assert (not b!955263))

(assert (not d!284350))

(assert (not b!955511))

(assert (not b!955271))

(assert (not bm!59986))

(assert (not bm!59974))

(assert (not b!955272))

(assert (not b!955466))

(assert (not d!284364))

(assert tp_is_empty!4923)

(assert (not b!955381))

(assert (not bm!59987))

(assert (not b!955355))

(assert (not b!955275))

(assert (not b!955475))

(assert (not bm!60001))

(assert (not d!284336))

(assert (not b!955499))

(assert (not b!955379))

(assert (not b!955493))

(assert (not b!955389))

(assert (not b!955498))

(assert (not b!955510))

(assert (not d!284348))

(assert (not d!284368))

(assert (not b!955402))

(assert (not d!284346))

(assert (not b!955323))

(assert (not b!955502))

(assert (not b!955319))

(assert (not b!955497))

(assert (not d!284332))

(assert (not b!955471))

(assert (not b!955266))

(assert (not b!955505))

(assert (not b!955464))

(assert (not b!955501))

(assert (not b!955222))

(assert (not bm!59988))

(assert (not b!955321))

(assert (not bm!59977))

(assert (not b!955472))

(assert (not b!955451))

(assert (not d!284380))

(assert (not bm!60004))

(assert (not b!955367))

(assert (not b!955393))

(assert (not b!955356))

(assert (not b!955463))

(assert (not d!284376))

(assert (not b!955506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

