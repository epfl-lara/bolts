; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82936 () Bool)

(assert start!82936)

(declare-fun b!924138 () Bool)

(assert (=> b!924138 true))

(assert (=> b!924138 true))

(declare-fun lambda!30328 () Int)

(declare-fun lambda!30327 () Int)

(assert (=> b!924138 (not (= lambda!30328 lambda!30327))))

(assert (=> b!924138 true))

(assert (=> b!924138 true))

(declare-fun bs!237300 () Bool)

(declare-fun b!924145 () Bool)

(assert (= bs!237300 (and b!924145 b!924138)))

(declare-datatypes ((C!5542 0))(
  ( (C!5543 (val!3019 Int)) )
))
(declare-datatypes ((Regex!2486 0))(
  ( (ElementMatch!2486 (c!150035 C!5542)) (Concat!4319 (regOne!5484 Regex!2486) (regTwo!5484 Regex!2486)) (EmptyExpr!2486) (Star!2486 (reg!2815 Regex!2486)) (EmptyLang!2486) (Union!2486 (regOne!5485 Regex!2486) (regTwo!5485 Regex!2486)) )
))
(declare-fun lt!339047 () Regex!2486)

(declare-fun r!15766 () Regex!2486)

(declare-fun lambda!30329 () Int)

(declare-fun lt!339046 () Regex!2486)

(assert (=> bs!237300 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30329 lambda!30327))))

(assert (=> bs!237300 (not (= lambda!30329 lambda!30328))))

(assert (=> b!924145 true))

(assert (=> b!924145 true))

(assert (=> b!924145 true))

(declare-fun lambda!30330 () Int)

(assert (=> bs!237300 (not (= lambda!30330 lambda!30327))))

(assert (=> bs!237300 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30330 lambda!30328))))

(assert (=> b!924145 (not (= lambda!30330 lambda!30329))))

(assert (=> b!924145 true))

(assert (=> b!924145 true))

(assert (=> b!924145 true))

(declare-fun e!601375 () Bool)

(declare-fun e!601379 () Bool)

(assert (=> b!924138 (= e!601375 e!601379)))

(declare-fun res!420119 () Bool)

(assert (=> b!924138 (=> res!420119 e!601379)))

(declare-datatypes ((List!9716 0))(
  ( (Nil!9700) (Cons!9700 (h!15101 C!5542) (t!100762 List!9716)) )
))
(declare-fun s!10566 () List!9716)

(declare-fun isEmpty!5953 (List!9716) Bool)

(assert (=> b!924138 (= res!420119 (isEmpty!5953 s!10566))))

(declare-fun Exists!257 (Int) Bool)

(assert (=> b!924138 (= (Exists!257 lambda!30327) (Exists!257 lambda!30328))))

(declare-datatypes ((Unit!14591 0))(
  ( (Unit!14592) )
))
(declare-fun lt!339038 () Unit!14591)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!169 (Regex!2486 Regex!2486 List!9716) Unit!14591)

(assert (=> b!924138 (= lt!339038 (lemmaExistCutMatchRandMatchRSpecEquivalent!169 (regOne!5484 r!15766) (regTwo!5484 r!15766) s!10566))))

(declare-datatypes ((tuple2!10958 0))(
  ( (tuple2!10959 (_1!6305 List!9716) (_2!6305 List!9716)) )
))
(declare-datatypes ((Option!2121 0))(
  ( (None!2120) (Some!2120 (v!19537 tuple2!10958)) )
))
(declare-fun isDefined!1763 (Option!2121) Bool)

(declare-fun findConcatSeparation!227 (Regex!2486 Regex!2486 List!9716 List!9716 List!9716) Option!2121)

(assert (=> b!924138 (= (isDefined!1763 (findConcatSeparation!227 (regOne!5484 r!15766) (regTwo!5484 r!15766) Nil!9700 s!10566 s!10566)) (Exists!257 lambda!30327))))

(declare-fun lt!339045 () Unit!14591)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!227 (Regex!2486 Regex!2486 List!9716) Unit!14591)

(assert (=> b!924138 (= lt!339045 (lemmaFindConcatSeparationEquivalentToExists!227 (regOne!5484 r!15766) (regTwo!5484 r!15766) s!10566))))

(declare-fun b!924139 () Bool)

(declare-fun e!601378 () Bool)

(declare-fun tp_is_empty!4615 () Bool)

(declare-fun tp!287438 () Bool)

(assert (=> b!924139 (= e!601378 (and tp_is_empty!4615 tp!287438))))

(declare-fun b!924140 () Bool)

(declare-fun e!601380 () Bool)

(assert (=> b!924140 (= e!601380 (not e!601375))))

(declare-fun res!420116 () Bool)

(assert (=> b!924140 (=> res!420116 e!601375)))

(declare-fun lt!339043 () Bool)

(assert (=> b!924140 (= res!420116 (or lt!339043 (and (is-Concat!4319 r!15766) (is-EmptyExpr!2486 (regOne!5484 r!15766))) (and (is-Concat!4319 r!15766) (is-EmptyExpr!2486 (regTwo!5484 r!15766))) (not (is-Concat!4319 r!15766))))))

(declare-fun matchRSpec!287 (Regex!2486 List!9716) Bool)

(assert (=> b!924140 (= lt!339043 (matchRSpec!287 r!15766 s!10566))))

(declare-fun matchR!1024 (Regex!2486 List!9716) Bool)

(assert (=> b!924140 (= lt!339043 (matchR!1024 r!15766 s!10566))))

(declare-fun lt!339044 () Unit!14591)

(declare-fun mainMatchTheorem!287 (Regex!2486 List!9716) Unit!14591)

(assert (=> b!924140 (= lt!339044 (mainMatchTheorem!287 r!15766 s!10566))))

(declare-fun b!924141 () Bool)

(declare-fun e!601377 () Bool)

(assert (=> b!924141 (= e!601379 e!601377)))

(declare-fun res!420115 () Bool)

(assert (=> b!924141 (=> res!420115 e!601377)))

(declare-fun lt!339041 () Regex!2486)

(assert (=> b!924141 (= res!420115 (not (matchR!1024 lt!339041 s!10566)))))

(assert (=> b!924141 (= lt!339041 (Concat!4319 lt!339047 lt!339046))))

(declare-fun removeUselessConcat!163 (Regex!2486) Regex!2486)

(assert (=> b!924141 (= lt!339046 (removeUselessConcat!163 (regTwo!5484 r!15766)))))

(assert (=> b!924141 (= lt!339047 (removeUselessConcat!163 (regOne!5484 r!15766)))))

(declare-fun b!924142 () Bool)

(declare-fun e!601376 () Bool)

(declare-fun tp!287439 () Bool)

(declare-fun tp!287442 () Bool)

(assert (=> b!924142 (= e!601376 (and tp!287439 tp!287442))))

(declare-fun b!924144 () Bool)

(declare-fun res!420118 () Bool)

(declare-fun e!601374 () Bool)

(assert (=> b!924144 (=> res!420118 e!601374)))

(declare-fun validRegex!955 (Regex!2486) Bool)

(assert (=> b!924144 (= res!420118 (not (validRegex!955 lt!339047)))))

(assert (=> b!924145 (= e!601377 e!601374)))

(declare-fun res!420120 () Bool)

(assert (=> b!924145 (=> res!420120 e!601374)))

(declare-fun lt!339040 () Bool)

(assert (=> b!924145 (= res!420120 (not lt!339040))))

(assert (=> b!924145 (= (Exists!257 lambda!30329) (Exists!257 lambda!30330))))

(declare-fun lt!339048 () Unit!14591)

(assert (=> b!924145 (= lt!339048 (lemmaExistCutMatchRandMatchRSpecEquivalent!169 lt!339047 lt!339046 s!10566))))

(assert (=> b!924145 (= lt!339040 (Exists!257 lambda!30329))))

(assert (=> b!924145 (= lt!339040 (isDefined!1763 (findConcatSeparation!227 lt!339047 lt!339046 Nil!9700 s!10566 s!10566)))))

(declare-fun lt!339039 () Unit!14591)

(assert (=> b!924145 (= lt!339039 (lemmaFindConcatSeparationEquivalentToExists!227 lt!339047 lt!339046 s!10566))))

(assert (=> b!924145 (matchRSpec!287 lt!339041 s!10566)))

(declare-fun lt!339042 () Unit!14591)

(assert (=> b!924145 (= lt!339042 (mainMatchTheorem!287 lt!339041 s!10566))))

(declare-fun b!924146 () Bool)

(declare-fun tp!287441 () Bool)

(declare-fun tp!287437 () Bool)

(assert (=> b!924146 (= e!601376 (and tp!287441 tp!287437))))

(declare-fun b!924147 () Bool)

(declare-fun tp!287440 () Bool)

(assert (=> b!924147 (= e!601376 tp!287440)))

(declare-fun b!924148 () Bool)

(assert (=> b!924148 (= e!601374 (validRegex!955 lt!339046))))

(declare-fun b!924143 () Bool)

(assert (=> b!924143 (= e!601376 tp_is_empty!4615)))

(declare-fun res!420117 () Bool)

(assert (=> start!82936 (=> (not res!420117) (not e!601380))))

(assert (=> start!82936 (= res!420117 (validRegex!955 r!15766))))

(assert (=> start!82936 e!601380))

(assert (=> start!82936 e!601376))

(assert (=> start!82936 e!601378))

(assert (= (and start!82936 res!420117) b!924140))

(assert (= (and b!924140 (not res!420116)) b!924138))

(assert (= (and b!924138 (not res!420119)) b!924141))

(assert (= (and b!924141 (not res!420115)) b!924145))

(assert (= (and b!924145 (not res!420120)) b!924144))

(assert (= (and b!924144 (not res!420118)) b!924148))

(assert (= (and start!82936 (is-ElementMatch!2486 r!15766)) b!924143))

(assert (= (and start!82936 (is-Concat!4319 r!15766)) b!924142))

(assert (= (and start!82936 (is-Star!2486 r!15766)) b!924147))

(assert (= (and start!82936 (is-Union!2486 r!15766)) b!924146))

(assert (= (and start!82936 (is-Cons!9700 s!10566)) b!924139))

(declare-fun m!1150025 () Bool)

(assert (=> b!924144 m!1150025))

(declare-fun m!1150027 () Bool)

(assert (=> b!924145 m!1150027))

(declare-fun m!1150029 () Bool)

(assert (=> b!924145 m!1150029))

(declare-fun m!1150031 () Bool)

(assert (=> b!924145 m!1150031))

(declare-fun m!1150033 () Bool)

(assert (=> b!924145 m!1150033))

(declare-fun m!1150035 () Bool)

(assert (=> b!924145 m!1150035))

(declare-fun m!1150037 () Bool)

(assert (=> b!924145 m!1150037))

(assert (=> b!924145 m!1150033))

(declare-fun m!1150039 () Bool)

(assert (=> b!924145 m!1150039))

(declare-fun m!1150041 () Bool)

(assert (=> b!924145 m!1150041))

(assert (=> b!924145 m!1150037))

(declare-fun m!1150043 () Bool)

(assert (=> b!924140 m!1150043))

(declare-fun m!1150045 () Bool)

(assert (=> b!924140 m!1150045))

(declare-fun m!1150047 () Bool)

(assert (=> b!924140 m!1150047))

(declare-fun m!1150049 () Bool)

(assert (=> b!924141 m!1150049))

(declare-fun m!1150051 () Bool)

(assert (=> b!924141 m!1150051))

(declare-fun m!1150053 () Bool)

(assert (=> b!924141 m!1150053))

(declare-fun m!1150055 () Bool)

(assert (=> b!924138 m!1150055))

(declare-fun m!1150057 () Bool)

(assert (=> b!924138 m!1150057))

(declare-fun m!1150059 () Bool)

(assert (=> b!924138 m!1150059))

(declare-fun m!1150061 () Bool)

(assert (=> b!924138 m!1150061))

(declare-fun m!1150063 () Bool)

(assert (=> b!924138 m!1150063))

(declare-fun m!1150065 () Bool)

(assert (=> b!924138 m!1150065))

(assert (=> b!924138 m!1150059))

(declare-fun m!1150067 () Bool)

(assert (=> b!924138 m!1150067))

(assert (=> b!924138 m!1150057))

(declare-fun m!1150069 () Bool)

(assert (=> b!924148 m!1150069))

(declare-fun m!1150071 () Bool)

(assert (=> start!82936 m!1150071))

(push 1)

(assert (not b!924146))

(assert (not start!82936))

(assert (not b!924142))

(assert (not b!924144))

(assert tp_is_empty!4615)

(assert (not b!924145))

(assert (not b!924140))

(assert (not b!924141))

(assert (not b!924148))

(assert (not b!924138))

(assert (not b!924139))

(assert (not b!924147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!280867 () Bool)

(declare-fun res!420173 () Bool)

(declare-fun e!601433 () Bool)

(assert (=> d!280867 (=> res!420173 e!601433)))

(assert (=> d!280867 (= res!420173 (is-ElementMatch!2486 r!15766))))

(assert (=> d!280867 (= (validRegex!955 r!15766) e!601433)))

(declare-fun b!924232 () Bool)

(declare-fun e!601434 () Bool)

(declare-fun call!56436 () Bool)

(assert (=> b!924232 (= e!601434 call!56436)))

(declare-fun bm!56431 () Bool)

(declare-fun c!150041 () Bool)

(declare-fun c!150042 () Bool)

(assert (=> bm!56431 (= call!56436 (validRegex!955 (ite c!150041 (reg!2815 r!15766) (ite c!150042 (regOne!5485 r!15766) (regOne!5484 r!15766)))))))

(declare-fun b!924233 () Bool)

(declare-fun e!601432 () Bool)

(declare-fun e!601430 () Bool)

(assert (=> b!924233 (= e!601432 e!601430)))

(assert (=> b!924233 (= c!150042 (is-Union!2486 r!15766))))

(declare-fun b!924234 () Bool)

(declare-fun e!601431 () Bool)

(declare-fun e!601428 () Bool)

(assert (=> b!924234 (= e!601431 e!601428)))

(declare-fun res!420176 () Bool)

(assert (=> b!924234 (=> (not res!420176) (not e!601428))))

(declare-fun call!56437 () Bool)

(assert (=> b!924234 (= res!420176 call!56437)))

(declare-fun b!924235 () Bool)

(assert (=> b!924235 (= e!601432 e!601434)))

(declare-fun res!420174 () Bool)

(declare-fun nullable!698 (Regex!2486) Bool)

(assert (=> b!924235 (= res!420174 (not (nullable!698 (reg!2815 r!15766))))))

(assert (=> b!924235 (=> (not res!420174) (not e!601434))))

(declare-fun b!924236 () Bool)

(declare-fun e!601429 () Bool)

(declare-fun call!56438 () Bool)

(assert (=> b!924236 (= e!601429 call!56438)))

(declare-fun b!924237 () Bool)

(assert (=> b!924237 (= e!601433 e!601432)))

(assert (=> b!924237 (= c!150041 (is-Star!2486 r!15766))))

(declare-fun b!924238 () Bool)

(declare-fun res!420177 () Bool)

(assert (=> b!924238 (=> (not res!420177) (not e!601429))))

(assert (=> b!924238 (= res!420177 call!56437)))

(assert (=> b!924238 (= e!601430 e!601429)))

(declare-fun b!924239 () Bool)

(assert (=> b!924239 (= e!601428 call!56438)))

(declare-fun bm!56432 () Bool)

(assert (=> bm!56432 (= call!56437 call!56436)))

(declare-fun b!924240 () Bool)

(declare-fun res!420175 () Bool)

(assert (=> b!924240 (=> res!420175 e!601431)))

(assert (=> b!924240 (= res!420175 (not (is-Concat!4319 r!15766)))))

(assert (=> b!924240 (= e!601430 e!601431)))

(declare-fun bm!56433 () Bool)

(assert (=> bm!56433 (= call!56438 (validRegex!955 (ite c!150042 (regTwo!5485 r!15766) (regTwo!5484 r!15766))))))

(assert (= (and d!280867 (not res!420173)) b!924237))

(assert (= (and b!924237 c!150041) b!924235))

(assert (= (and b!924237 (not c!150041)) b!924233))

(assert (= (and b!924235 res!420174) b!924232))

(assert (= (and b!924233 c!150042) b!924238))

(assert (= (and b!924233 (not c!150042)) b!924240))

(assert (= (and b!924238 res!420177) b!924236))

(assert (= (and b!924240 (not res!420175)) b!924234))

(assert (= (and b!924234 res!420176) b!924239))

(assert (= (or b!924236 b!924239) bm!56433))

(assert (= (or b!924238 b!924234) bm!56432))

(assert (= (or b!924232 bm!56432) bm!56431))

(declare-fun m!1150121 () Bool)

(assert (=> bm!56431 m!1150121))

(declare-fun m!1150123 () Bool)

(assert (=> b!924235 m!1150123))

(declare-fun m!1150125 () Bool)

(assert (=> bm!56433 m!1150125))

(assert (=> start!82936 d!280867))

(declare-fun b!924269 () Bool)

(declare-fun res!420198 () Bool)

(declare-fun e!601451 () Bool)

(assert (=> b!924269 (=> res!420198 e!601451)))

(assert (=> b!924269 (= res!420198 (not (is-ElementMatch!2486 lt!339041)))))

(declare-fun e!601453 () Bool)

(assert (=> b!924269 (= e!601453 e!601451)))

(declare-fun b!924270 () Bool)

(declare-fun res!420194 () Bool)

(assert (=> b!924270 (=> res!420194 e!601451)))

(declare-fun e!601455 () Bool)

(assert (=> b!924270 (= res!420194 e!601455)))

(declare-fun res!420200 () Bool)

(assert (=> b!924270 (=> (not res!420200) (not e!601455))))

(declare-fun lt!339084 () Bool)

(assert (=> b!924270 (= res!420200 lt!339084)))

(declare-fun b!924271 () Bool)

(declare-fun e!601454 () Bool)

(declare-fun call!56441 () Bool)

(assert (=> b!924271 (= e!601454 (= lt!339084 call!56441))))

(declare-fun b!924272 () Bool)

(declare-fun res!420196 () Bool)

(assert (=> b!924272 (=> (not res!420196) (not e!601455))))

(assert (=> b!924272 (= res!420196 (not call!56441))))

(declare-fun b!924273 () Bool)

(declare-fun e!601449 () Bool)

(declare-fun e!601450 () Bool)

(assert (=> b!924273 (= e!601449 e!601450)))

(declare-fun res!420195 () Bool)

(assert (=> b!924273 (=> res!420195 e!601450)))

(assert (=> b!924273 (= res!420195 call!56441)))

(declare-fun b!924274 () Bool)

(declare-fun e!601452 () Bool)

(declare-fun derivativeStep!508 (Regex!2486 C!5542) Regex!2486)

(declare-fun head!1661 (List!9716) C!5542)

(declare-fun tail!1223 (List!9716) List!9716)

(assert (=> b!924274 (= e!601452 (matchR!1024 (derivativeStep!508 lt!339041 (head!1661 s!10566)) (tail!1223 s!10566)))))

(declare-fun b!924275 () Bool)

(assert (=> b!924275 (= e!601455 (= (head!1661 s!10566) (c!150035 lt!339041)))))

(declare-fun b!924276 () Bool)

(assert (=> b!924276 (= e!601453 (not lt!339084))))

(declare-fun b!924277 () Bool)

(assert (=> b!924277 (= e!601452 (nullable!698 lt!339041))))

(declare-fun b!924278 () Bool)

(assert (=> b!924278 (= e!601451 e!601449)))

(declare-fun res!420197 () Bool)

(assert (=> b!924278 (=> (not res!420197) (not e!601449))))

(assert (=> b!924278 (= res!420197 (not lt!339084))))

(declare-fun b!924279 () Bool)

(declare-fun res!420199 () Bool)

(assert (=> b!924279 (=> res!420199 e!601450)))

(assert (=> b!924279 (= res!420199 (not (isEmpty!5953 (tail!1223 s!10566))))))

(declare-fun b!924280 () Bool)

(assert (=> b!924280 (= e!601450 (not (= (head!1661 s!10566) (c!150035 lt!339041))))))

(declare-fun b!924281 () Bool)

(assert (=> b!924281 (= e!601454 e!601453)))

(declare-fun c!150049 () Bool)

(assert (=> b!924281 (= c!150049 (is-EmptyLang!2486 lt!339041))))

(declare-fun d!280869 () Bool)

(assert (=> d!280869 e!601454))

(declare-fun c!150050 () Bool)

(assert (=> d!280869 (= c!150050 (is-EmptyExpr!2486 lt!339041))))

(assert (=> d!280869 (= lt!339084 e!601452)))

(declare-fun c!150051 () Bool)

(assert (=> d!280869 (= c!150051 (isEmpty!5953 s!10566))))

(assert (=> d!280869 (validRegex!955 lt!339041)))

(assert (=> d!280869 (= (matchR!1024 lt!339041 s!10566) lt!339084)))

(declare-fun bm!56436 () Bool)

(assert (=> bm!56436 (= call!56441 (isEmpty!5953 s!10566))))

(declare-fun b!924282 () Bool)

(declare-fun res!420201 () Bool)

(assert (=> b!924282 (=> (not res!420201) (not e!601455))))

(assert (=> b!924282 (= res!420201 (isEmpty!5953 (tail!1223 s!10566)))))

(assert (= (and d!280869 c!150051) b!924277))

(assert (= (and d!280869 (not c!150051)) b!924274))

(assert (= (and d!280869 c!150050) b!924271))

(assert (= (and d!280869 (not c!150050)) b!924281))

(assert (= (and b!924281 c!150049) b!924276))

(assert (= (and b!924281 (not c!150049)) b!924269))

(assert (= (and b!924269 (not res!420198)) b!924270))

(assert (= (and b!924270 res!420200) b!924272))

(assert (= (and b!924272 res!420196) b!924282))

(assert (= (and b!924282 res!420201) b!924275))

(assert (= (and b!924270 (not res!420194)) b!924278))

(assert (= (and b!924278 res!420197) b!924273))

(assert (= (and b!924273 (not res!420195)) b!924279))

(assert (= (and b!924279 (not res!420199)) b!924280))

(assert (= (or b!924271 b!924272 b!924273) bm!56436))

(assert (=> bm!56436 m!1150065))

(assert (=> d!280869 m!1150065))

(declare-fun m!1150127 () Bool)

(assert (=> d!280869 m!1150127))

(declare-fun m!1150129 () Bool)

(assert (=> b!924280 m!1150129))

(assert (=> b!924274 m!1150129))

(assert (=> b!924274 m!1150129))

(declare-fun m!1150131 () Bool)

(assert (=> b!924274 m!1150131))

(declare-fun m!1150133 () Bool)

(assert (=> b!924274 m!1150133))

(assert (=> b!924274 m!1150131))

(assert (=> b!924274 m!1150133))

(declare-fun m!1150135 () Bool)

(assert (=> b!924274 m!1150135))

(assert (=> b!924282 m!1150133))

(assert (=> b!924282 m!1150133))

(declare-fun m!1150137 () Bool)

(assert (=> b!924282 m!1150137))

(assert (=> b!924279 m!1150133))

(assert (=> b!924279 m!1150133))

(assert (=> b!924279 m!1150137))

(assert (=> b!924275 m!1150129))

(declare-fun m!1150139 () Bool)

(assert (=> b!924277 m!1150139))

(assert (=> b!924141 d!280869))

(declare-fun call!56454 () Regex!2486)

(declare-fun bm!56447 () Bool)

(declare-fun c!150064 () Bool)

(declare-fun c!150065 () Bool)

(assert (=> bm!56447 (= call!56454 (removeUselessConcat!163 (ite c!150064 (regOne!5484 (regTwo!5484 r!15766)) (ite c!150065 (regTwo!5485 (regTwo!5484 r!15766)) (reg!2815 (regTwo!5484 r!15766))))))))

(declare-fun b!924305 () Bool)

(declare-fun e!601471 () Bool)

(declare-fun lt!339087 () Regex!2486)

(assert (=> b!924305 (= e!601471 (= (nullable!698 lt!339087) (nullable!698 (regTwo!5484 r!15766))))))

(declare-fun b!924306 () Bool)

(declare-fun e!601468 () Regex!2486)

(declare-fun call!56453 () Regex!2486)

(declare-fun call!56456 () Regex!2486)

(assert (=> b!924306 (= e!601468 (Union!2486 call!56453 call!56456))))

(declare-fun c!150063 () Bool)

(declare-fun call!56452 () Regex!2486)

(declare-fun bm!56448 () Bool)

(declare-fun c!150066 () Bool)

(assert (=> bm!56448 (= call!56452 (removeUselessConcat!163 (ite c!150063 (regTwo!5484 (regTwo!5484 r!15766)) (ite c!150066 (regOne!5484 (regTwo!5484 r!15766)) (ite c!150064 (regTwo!5484 (regTwo!5484 r!15766)) (regOne!5485 (regTwo!5484 r!15766)))))))))

(declare-fun b!924307 () Bool)

(declare-fun e!601470 () Regex!2486)

(declare-fun call!56455 () Regex!2486)

(assert (=> b!924307 (= e!601470 call!56455)))

(declare-fun bm!56449 () Bool)

(assert (=> bm!56449 (= call!56453 call!56455)))

(declare-fun b!924308 () Bool)

(declare-fun e!601473 () Regex!2486)

(assert (=> b!924308 (= e!601473 (Star!2486 call!56456))))

(declare-fun b!924309 () Bool)

(assert (=> b!924309 (= c!150064 (is-Concat!4319 (regTwo!5484 r!15766)))))

(declare-fun e!601472 () Regex!2486)

(assert (=> b!924309 (= e!601470 e!601472)))

(declare-fun d!280871 () Bool)

(assert (=> d!280871 e!601471))

(declare-fun res!420204 () Bool)

(assert (=> d!280871 (=> (not res!420204) (not e!601471))))

(assert (=> d!280871 (= res!420204 (validRegex!955 lt!339087))))

(declare-fun e!601469 () Regex!2486)

(assert (=> d!280871 (= lt!339087 e!601469)))

(assert (=> d!280871 (= c!150063 (and (is-Concat!4319 (regTwo!5484 r!15766)) (is-EmptyExpr!2486 (regOne!5484 (regTwo!5484 r!15766)))))))

(assert (=> d!280871 (validRegex!955 (regTwo!5484 r!15766))))

(assert (=> d!280871 (= (removeUselessConcat!163 (regTwo!5484 r!15766)) lt!339087)))

(declare-fun bm!56450 () Bool)

(assert (=> bm!56450 (= call!56455 call!56452)))

(declare-fun b!924310 () Bool)

(assert (=> b!924310 (= e!601469 e!601470)))

(assert (=> b!924310 (= c!150066 (and (is-Concat!4319 (regTwo!5484 r!15766)) (is-EmptyExpr!2486 (regTwo!5484 (regTwo!5484 r!15766)))))))

(declare-fun b!924311 () Bool)

(declare-fun c!150062 () Bool)

(assert (=> b!924311 (= c!150062 (is-Star!2486 (regTwo!5484 r!15766)))))

(assert (=> b!924311 (= e!601468 e!601473)))

(declare-fun bm!56451 () Bool)

(assert (=> bm!56451 (= call!56456 call!56454)))

(declare-fun b!924312 () Bool)

(assert (=> b!924312 (= e!601472 e!601468)))

(assert (=> b!924312 (= c!150065 (is-Union!2486 (regTwo!5484 r!15766)))))

(declare-fun b!924313 () Bool)

(assert (=> b!924313 (= e!601472 (Concat!4319 call!56454 call!56453))))

(declare-fun b!924314 () Bool)

(assert (=> b!924314 (= e!601473 (regTwo!5484 r!15766))))

(declare-fun b!924315 () Bool)

(assert (=> b!924315 (= e!601469 call!56452)))

(assert (= (and d!280871 c!150063) b!924315))

(assert (= (and d!280871 (not c!150063)) b!924310))

(assert (= (and b!924310 c!150066) b!924307))

(assert (= (and b!924310 (not c!150066)) b!924309))

(assert (= (and b!924309 c!150064) b!924313))

(assert (= (and b!924309 (not c!150064)) b!924312))

(assert (= (and b!924312 c!150065) b!924306))

(assert (= (and b!924312 (not c!150065)) b!924311))

(assert (= (and b!924311 c!150062) b!924308))

(assert (= (and b!924311 (not c!150062)) b!924314))

(assert (= (or b!924306 b!924308) bm!56451))

(assert (= (or b!924313 b!924306) bm!56449))

(assert (= (or b!924313 bm!56451) bm!56447))

(assert (= (or b!924307 bm!56449) bm!56450))

(assert (= (or b!924315 bm!56450) bm!56448))

(assert (= (and d!280871 res!420204) b!924305))

(declare-fun m!1150145 () Bool)

(assert (=> bm!56447 m!1150145))

(declare-fun m!1150147 () Bool)

(assert (=> b!924305 m!1150147))

(declare-fun m!1150149 () Bool)

(assert (=> b!924305 m!1150149))

(declare-fun m!1150151 () Bool)

(assert (=> bm!56448 m!1150151))

(declare-fun m!1150153 () Bool)

(assert (=> d!280871 m!1150153))

(declare-fun m!1150155 () Bool)

(assert (=> d!280871 m!1150155))

(assert (=> b!924141 d!280871))

(declare-fun call!56459 () Regex!2486)

(declare-fun c!150070 () Bool)

(declare-fun c!150069 () Bool)

(declare-fun bm!56452 () Bool)

(assert (=> bm!56452 (= call!56459 (removeUselessConcat!163 (ite c!150069 (regOne!5484 (regOne!5484 r!15766)) (ite c!150070 (regTwo!5485 (regOne!5484 r!15766)) (reg!2815 (regOne!5484 r!15766))))))))

(declare-fun b!924316 () Bool)

(declare-fun e!601477 () Bool)

(declare-fun lt!339088 () Regex!2486)

(assert (=> b!924316 (= e!601477 (= (nullable!698 lt!339088) (nullable!698 (regOne!5484 r!15766))))))

(declare-fun b!924317 () Bool)

(declare-fun e!601474 () Regex!2486)

(declare-fun call!56458 () Regex!2486)

(declare-fun call!56461 () Regex!2486)

(assert (=> b!924317 (= e!601474 (Union!2486 call!56458 call!56461))))

(declare-fun c!150071 () Bool)

(declare-fun c!150068 () Bool)

(declare-fun bm!56453 () Bool)

(declare-fun call!56457 () Regex!2486)

(assert (=> bm!56453 (= call!56457 (removeUselessConcat!163 (ite c!150068 (regTwo!5484 (regOne!5484 r!15766)) (ite c!150071 (regOne!5484 (regOne!5484 r!15766)) (ite c!150069 (regTwo!5484 (regOne!5484 r!15766)) (regOne!5485 (regOne!5484 r!15766)))))))))

(declare-fun b!924318 () Bool)

(declare-fun e!601476 () Regex!2486)

(declare-fun call!56460 () Regex!2486)

(assert (=> b!924318 (= e!601476 call!56460)))

(declare-fun bm!56454 () Bool)

(assert (=> bm!56454 (= call!56458 call!56460)))

(declare-fun b!924319 () Bool)

(declare-fun e!601479 () Regex!2486)

(assert (=> b!924319 (= e!601479 (Star!2486 call!56461))))

(declare-fun b!924320 () Bool)

(assert (=> b!924320 (= c!150069 (is-Concat!4319 (regOne!5484 r!15766)))))

(declare-fun e!601478 () Regex!2486)

(assert (=> b!924320 (= e!601476 e!601478)))

(declare-fun d!280881 () Bool)

(assert (=> d!280881 e!601477))

(declare-fun res!420205 () Bool)

(assert (=> d!280881 (=> (not res!420205) (not e!601477))))

(assert (=> d!280881 (= res!420205 (validRegex!955 lt!339088))))

(declare-fun e!601475 () Regex!2486)

(assert (=> d!280881 (= lt!339088 e!601475)))

(assert (=> d!280881 (= c!150068 (and (is-Concat!4319 (regOne!5484 r!15766)) (is-EmptyExpr!2486 (regOne!5484 (regOne!5484 r!15766)))))))

(assert (=> d!280881 (validRegex!955 (regOne!5484 r!15766))))

(assert (=> d!280881 (= (removeUselessConcat!163 (regOne!5484 r!15766)) lt!339088)))

(declare-fun bm!56455 () Bool)

(assert (=> bm!56455 (= call!56460 call!56457)))

(declare-fun b!924321 () Bool)

(assert (=> b!924321 (= e!601475 e!601476)))

(assert (=> b!924321 (= c!150071 (and (is-Concat!4319 (regOne!5484 r!15766)) (is-EmptyExpr!2486 (regTwo!5484 (regOne!5484 r!15766)))))))

(declare-fun b!924322 () Bool)

(declare-fun c!150067 () Bool)

(assert (=> b!924322 (= c!150067 (is-Star!2486 (regOne!5484 r!15766)))))

(assert (=> b!924322 (= e!601474 e!601479)))

(declare-fun bm!56456 () Bool)

(assert (=> bm!56456 (= call!56461 call!56459)))

(declare-fun b!924323 () Bool)

(assert (=> b!924323 (= e!601478 e!601474)))

(assert (=> b!924323 (= c!150070 (is-Union!2486 (regOne!5484 r!15766)))))

(declare-fun b!924324 () Bool)

(assert (=> b!924324 (= e!601478 (Concat!4319 call!56459 call!56458))))

(declare-fun b!924325 () Bool)

(assert (=> b!924325 (= e!601479 (regOne!5484 r!15766))))

(declare-fun b!924326 () Bool)

(assert (=> b!924326 (= e!601475 call!56457)))

(assert (= (and d!280881 c!150068) b!924326))

(assert (= (and d!280881 (not c!150068)) b!924321))

(assert (= (and b!924321 c!150071) b!924318))

(assert (= (and b!924321 (not c!150071)) b!924320))

(assert (= (and b!924320 c!150069) b!924324))

(assert (= (and b!924320 (not c!150069)) b!924323))

(assert (= (and b!924323 c!150070) b!924317))

(assert (= (and b!924323 (not c!150070)) b!924322))

(assert (= (and b!924322 c!150067) b!924319))

(assert (= (and b!924322 (not c!150067)) b!924325))

(assert (= (or b!924317 b!924319) bm!56456))

(assert (= (or b!924324 b!924317) bm!56454))

(assert (= (or b!924324 bm!56456) bm!56452))

(assert (= (or b!924318 bm!56454) bm!56455))

(assert (= (or b!924326 bm!56455) bm!56453))

(assert (= (and d!280881 res!420205) b!924316))

(declare-fun m!1150157 () Bool)

(assert (=> bm!56452 m!1150157))

(declare-fun m!1150159 () Bool)

(assert (=> b!924316 m!1150159))

(declare-fun m!1150161 () Bool)

(assert (=> b!924316 m!1150161))

(declare-fun m!1150163 () Bool)

(assert (=> bm!56453 m!1150163))

(declare-fun m!1150165 () Bool)

(assert (=> d!280881 m!1150165))

(declare-fun m!1150167 () Bool)

(assert (=> d!280881 m!1150167))

(assert (=> b!924141 d!280881))

(declare-fun d!280883 () Bool)

(declare-fun res!420206 () Bool)

(declare-fun e!601485 () Bool)

(assert (=> d!280883 (=> res!420206 e!601485)))

(assert (=> d!280883 (= res!420206 (is-ElementMatch!2486 lt!339046))))

(assert (=> d!280883 (= (validRegex!955 lt!339046) e!601485)))

(declare-fun b!924327 () Bool)

(declare-fun e!601486 () Bool)

(declare-fun call!56462 () Bool)

(assert (=> b!924327 (= e!601486 call!56462)))

(declare-fun c!150073 () Bool)

(declare-fun c!150072 () Bool)

(declare-fun bm!56457 () Bool)

(assert (=> bm!56457 (= call!56462 (validRegex!955 (ite c!150072 (reg!2815 lt!339046) (ite c!150073 (regOne!5485 lt!339046) (regOne!5484 lt!339046)))))))

(declare-fun b!924328 () Bool)

(declare-fun e!601484 () Bool)

(declare-fun e!601482 () Bool)

(assert (=> b!924328 (= e!601484 e!601482)))

(assert (=> b!924328 (= c!150073 (is-Union!2486 lt!339046))))

(declare-fun b!924329 () Bool)

(declare-fun e!601483 () Bool)

(declare-fun e!601480 () Bool)

(assert (=> b!924329 (= e!601483 e!601480)))

(declare-fun res!420209 () Bool)

(assert (=> b!924329 (=> (not res!420209) (not e!601480))))

(declare-fun call!56463 () Bool)

(assert (=> b!924329 (= res!420209 call!56463)))

(declare-fun b!924330 () Bool)

(assert (=> b!924330 (= e!601484 e!601486)))

(declare-fun res!420207 () Bool)

(assert (=> b!924330 (= res!420207 (not (nullable!698 (reg!2815 lt!339046))))))

(assert (=> b!924330 (=> (not res!420207) (not e!601486))))

(declare-fun b!924331 () Bool)

(declare-fun e!601481 () Bool)

(declare-fun call!56464 () Bool)

(assert (=> b!924331 (= e!601481 call!56464)))

(declare-fun b!924332 () Bool)

(assert (=> b!924332 (= e!601485 e!601484)))

(assert (=> b!924332 (= c!150072 (is-Star!2486 lt!339046))))

(declare-fun b!924333 () Bool)

(declare-fun res!420210 () Bool)

(assert (=> b!924333 (=> (not res!420210) (not e!601481))))

(assert (=> b!924333 (= res!420210 call!56463)))

(assert (=> b!924333 (= e!601482 e!601481)))

(declare-fun b!924334 () Bool)

(assert (=> b!924334 (= e!601480 call!56464)))

(declare-fun bm!56458 () Bool)

(assert (=> bm!56458 (= call!56463 call!56462)))

(declare-fun b!924335 () Bool)

(declare-fun res!420208 () Bool)

(assert (=> b!924335 (=> res!420208 e!601483)))

(assert (=> b!924335 (= res!420208 (not (is-Concat!4319 lt!339046)))))

(assert (=> b!924335 (= e!601482 e!601483)))

(declare-fun bm!56459 () Bool)

(assert (=> bm!56459 (= call!56464 (validRegex!955 (ite c!150073 (regTwo!5485 lt!339046) (regTwo!5484 lt!339046))))))

(assert (= (and d!280883 (not res!420206)) b!924332))

(assert (= (and b!924332 c!150072) b!924330))

(assert (= (and b!924332 (not c!150072)) b!924328))

(assert (= (and b!924330 res!420207) b!924327))

(assert (= (and b!924328 c!150073) b!924333))

(assert (= (and b!924328 (not c!150073)) b!924335))

(assert (= (and b!924333 res!420210) b!924331))

(assert (= (and b!924335 (not res!420208)) b!924329))

(assert (= (and b!924329 res!420209) b!924334))

(assert (= (or b!924331 b!924334) bm!56459))

(assert (= (or b!924333 b!924329) bm!56458))

(assert (= (or b!924327 bm!56458) bm!56457))

(declare-fun m!1150169 () Bool)

(assert (=> bm!56457 m!1150169))

(declare-fun m!1150171 () Bool)

(assert (=> b!924330 m!1150171))

(declare-fun m!1150173 () Bool)

(assert (=> bm!56459 m!1150173))

(assert (=> b!924148 d!280883))

(declare-fun d!280885 () Bool)

(declare-fun res!420211 () Bool)

(declare-fun e!601492 () Bool)

(assert (=> d!280885 (=> res!420211 e!601492)))

(assert (=> d!280885 (= res!420211 (is-ElementMatch!2486 lt!339047))))

(assert (=> d!280885 (= (validRegex!955 lt!339047) e!601492)))

(declare-fun b!924336 () Bool)

(declare-fun e!601493 () Bool)

(declare-fun call!56465 () Bool)

(assert (=> b!924336 (= e!601493 call!56465)))

(declare-fun c!150075 () Bool)

(declare-fun c!150074 () Bool)

(declare-fun bm!56460 () Bool)

(assert (=> bm!56460 (= call!56465 (validRegex!955 (ite c!150074 (reg!2815 lt!339047) (ite c!150075 (regOne!5485 lt!339047) (regOne!5484 lt!339047)))))))

(declare-fun b!924337 () Bool)

(declare-fun e!601491 () Bool)

(declare-fun e!601489 () Bool)

(assert (=> b!924337 (= e!601491 e!601489)))

(assert (=> b!924337 (= c!150075 (is-Union!2486 lt!339047))))

(declare-fun b!924338 () Bool)

(declare-fun e!601490 () Bool)

(declare-fun e!601487 () Bool)

(assert (=> b!924338 (= e!601490 e!601487)))

(declare-fun res!420214 () Bool)

(assert (=> b!924338 (=> (not res!420214) (not e!601487))))

(declare-fun call!56466 () Bool)

(assert (=> b!924338 (= res!420214 call!56466)))

(declare-fun b!924339 () Bool)

(assert (=> b!924339 (= e!601491 e!601493)))

(declare-fun res!420212 () Bool)

(assert (=> b!924339 (= res!420212 (not (nullable!698 (reg!2815 lt!339047))))))

(assert (=> b!924339 (=> (not res!420212) (not e!601493))))

(declare-fun b!924340 () Bool)

(declare-fun e!601488 () Bool)

(declare-fun call!56467 () Bool)

(assert (=> b!924340 (= e!601488 call!56467)))

(declare-fun b!924341 () Bool)

(assert (=> b!924341 (= e!601492 e!601491)))

(assert (=> b!924341 (= c!150074 (is-Star!2486 lt!339047))))

(declare-fun b!924342 () Bool)

(declare-fun res!420215 () Bool)

(assert (=> b!924342 (=> (not res!420215) (not e!601488))))

(assert (=> b!924342 (= res!420215 call!56466)))

(assert (=> b!924342 (= e!601489 e!601488)))

(declare-fun b!924343 () Bool)

(assert (=> b!924343 (= e!601487 call!56467)))

(declare-fun bm!56461 () Bool)

(assert (=> bm!56461 (= call!56466 call!56465)))

(declare-fun b!924344 () Bool)

(declare-fun res!420213 () Bool)

(assert (=> b!924344 (=> res!420213 e!601490)))

(assert (=> b!924344 (= res!420213 (not (is-Concat!4319 lt!339047)))))

(assert (=> b!924344 (= e!601489 e!601490)))

(declare-fun bm!56462 () Bool)

(assert (=> bm!56462 (= call!56467 (validRegex!955 (ite c!150075 (regTwo!5485 lt!339047) (regTwo!5484 lt!339047))))))

(assert (= (and d!280885 (not res!420211)) b!924341))

(assert (= (and b!924341 c!150074) b!924339))

(assert (= (and b!924341 (not c!150074)) b!924337))

(assert (= (and b!924339 res!420212) b!924336))

(assert (= (and b!924337 c!150075) b!924342))

(assert (= (and b!924337 (not c!150075)) b!924344))

(assert (= (and b!924342 res!420215) b!924340))

(assert (= (and b!924344 (not res!420213)) b!924338))

(assert (= (and b!924338 res!420214) b!924343))

(assert (= (or b!924340 b!924343) bm!56462))

(assert (= (or b!924342 b!924338) bm!56461))

(assert (= (or b!924336 bm!56461) bm!56460))

(declare-fun m!1150175 () Bool)

(assert (=> bm!56460 m!1150175))

(declare-fun m!1150177 () Bool)

(assert (=> b!924339 m!1150177))

(declare-fun m!1150179 () Bool)

(assert (=> bm!56462 m!1150179))

(assert (=> b!924144 d!280885))

(declare-fun d!280887 () Bool)

(assert (=> d!280887 (= (isEmpty!5953 s!10566) (is-Nil!9700 s!10566))))

(assert (=> b!924138 d!280887))

(declare-fun d!280889 () Bool)

(declare-fun isEmpty!5955 (Option!2121) Bool)

(assert (=> d!280889 (= (isDefined!1763 (findConcatSeparation!227 (regOne!5484 r!15766) (regTwo!5484 r!15766) Nil!9700 s!10566 s!10566)) (not (isEmpty!5955 (findConcatSeparation!227 (regOne!5484 r!15766) (regTwo!5484 r!15766) Nil!9700 s!10566 s!10566))))))

(declare-fun bs!237304 () Bool)

(assert (= bs!237304 d!280889))

(assert (=> bs!237304 m!1150059))

(declare-fun m!1150181 () Bool)

(assert (=> bs!237304 m!1150181))

(assert (=> b!924138 d!280889))

(declare-fun bs!237305 () Bool)

(declare-fun d!280891 () Bool)

(assert (= bs!237305 (and d!280891 b!924138)))

(declare-fun lambda!30350 () Int)

(assert (=> bs!237305 (= lambda!30350 lambda!30327)))

(assert (=> bs!237305 (not (= lambda!30350 lambda!30328))))

(declare-fun bs!237306 () Bool)

(assert (= bs!237306 (and d!280891 b!924145)))

(assert (=> bs!237306 (= (and (= (regOne!5484 r!15766) lt!339047) (= (regTwo!5484 r!15766) lt!339046)) (= lambda!30350 lambda!30329))))

(assert (=> bs!237306 (not (= lambda!30350 lambda!30330))))

(assert (=> d!280891 true))

(assert (=> d!280891 true))

(assert (=> d!280891 true))

(assert (=> d!280891 (= (isDefined!1763 (findConcatSeparation!227 (regOne!5484 r!15766) (regTwo!5484 r!15766) Nil!9700 s!10566 s!10566)) (Exists!257 lambda!30350))))

(declare-fun lt!339093 () Unit!14591)

(declare-fun choose!5680 (Regex!2486 Regex!2486 List!9716) Unit!14591)

(assert (=> d!280891 (= lt!339093 (choose!5680 (regOne!5484 r!15766) (regTwo!5484 r!15766) s!10566))))

(assert (=> d!280891 (validRegex!955 (regOne!5484 r!15766))))

(assert (=> d!280891 (= (lemmaFindConcatSeparationEquivalentToExists!227 (regOne!5484 r!15766) (regTwo!5484 r!15766) s!10566) lt!339093)))

(declare-fun bs!237307 () Bool)

(assert (= bs!237307 d!280891))

(declare-fun m!1150183 () Bool)

(assert (=> bs!237307 m!1150183))

(assert (=> bs!237307 m!1150059))

(assert (=> bs!237307 m!1150061))

(assert (=> bs!237307 m!1150059))

(assert (=> bs!237307 m!1150167))

(declare-fun m!1150185 () Bool)

(assert (=> bs!237307 m!1150185))

(assert (=> b!924138 d!280891))

(declare-fun b!924371 () Bool)

(declare-fun res!420237 () Bool)

(declare-fun e!601510 () Bool)

(assert (=> b!924371 (=> (not res!420237) (not e!601510))))

(declare-fun lt!339102 () Option!2121)

(declare-fun get!3173 (Option!2121) tuple2!10958)

(assert (=> b!924371 (= res!420237 (matchR!1024 (regOne!5484 r!15766) (_1!6305 (get!3173 lt!339102))))))

(declare-fun d!280893 () Bool)

(declare-fun e!601509 () Bool)

(assert (=> d!280893 e!601509))

(declare-fun res!420238 () Bool)

(assert (=> d!280893 (=> res!420238 e!601509)))

(assert (=> d!280893 (= res!420238 e!601510)))

(declare-fun res!420236 () Bool)

(assert (=> d!280893 (=> (not res!420236) (not e!601510))))

(assert (=> d!280893 (= res!420236 (isDefined!1763 lt!339102))))

(declare-fun e!601508 () Option!2121)

(assert (=> d!280893 (= lt!339102 e!601508)))

(declare-fun c!150080 () Bool)

(declare-fun e!601511 () Bool)

(assert (=> d!280893 (= c!150080 e!601511)))

(declare-fun res!420234 () Bool)

(assert (=> d!280893 (=> (not res!420234) (not e!601511))))

(assert (=> d!280893 (= res!420234 (matchR!1024 (regOne!5484 r!15766) Nil!9700))))

(assert (=> d!280893 (validRegex!955 (regOne!5484 r!15766))))

(assert (=> d!280893 (= (findConcatSeparation!227 (regOne!5484 r!15766) (regTwo!5484 r!15766) Nil!9700 s!10566 s!10566) lt!339102)))

(declare-fun b!924372 () Bool)

(declare-fun res!420235 () Bool)

(assert (=> b!924372 (=> (not res!420235) (not e!601510))))

(assert (=> b!924372 (= res!420235 (matchR!1024 (regTwo!5484 r!15766) (_2!6305 (get!3173 lt!339102))))))

(declare-fun b!924373 () Bool)

(declare-fun ++!2574 (List!9716 List!9716) List!9716)

(assert (=> b!924373 (= e!601510 (= (++!2574 (_1!6305 (get!3173 lt!339102)) (_2!6305 (get!3173 lt!339102))) s!10566))))

(declare-fun b!924374 () Bool)

(declare-fun e!601512 () Option!2121)

(assert (=> b!924374 (= e!601508 e!601512)))

(declare-fun c!150081 () Bool)

(assert (=> b!924374 (= c!150081 (is-Nil!9700 s!10566))))

(declare-fun b!924375 () Bool)

(assert (=> b!924375 (= e!601509 (not (isDefined!1763 lt!339102)))))

(declare-fun b!924376 () Bool)

(declare-fun lt!339101 () Unit!14591)

(declare-fun lt!339103 () Unit!14591)

(assert (=> b!924376 (= lt!339101 lt!339103)))

(assert (=> b!924376 (= (++!2574 (++!2574 Nil!9700 (Cons!9700 (h!15101 s!10566) Nil!9700)) (t!100762 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!189 (List!9716 C!5542 List!9716 List!9716) Unit!14591)

(assert (=> b!924376 (= lt!339103 (lemmaMoveElementToOtherListKeepsConcatEq!189 Nil!9700 (h!15101 s!10566) (t!100762 s!10566) s!10566))))

(assert (=> b!924376 (= e!601512 (findConcatSeparation!227 (regOne!5484 r!15766) (regTwo!5484 r!15766) (++!2574 Nil!9700 (Cons!9700 (h!15101 s!10566) Nil!9700)) (t!100762 s!10566) s!10566))))

(declare-fun b!924377 () Bool)

(assert (=> b!924377 (= e!601511 (matchR!1024 (regTwo!5484 r!15766) s!10566))))

(declare-fun b!924378 () Bool)

(assert (=> b!924378 (= e!601508 (Some!2120 (tuple2!10959 Nil!9700 s!10566)))))

(declare-fun b!924379 () Bool)

(assert (=> b!924379 (= e!601512 None!2120)))

(assert (= (and d!280893 res!420234) b!924377))

(assert (= (and d!280893 c!150080) b!924378))

(assert (= (and d!280893 (not c!150080)) b!924374))

(assert (= (and b!924374 c!150081) b!924379))

(assert (= (and b!924374 (not c!150081)) b!924376))

(assert (= (and d!280893 res!420236) b!924371))

(assert (= (and b!924371 res!420237) b!924372))

(assert (= (and b!924372 res!420235) b!924373))

(assert (= (and d!280893 (not res!420238)) b!924375))

(declare-fun m!1150193 () Bool)

(assert (=> b!924377 m!1150193))

(declare-fun m!1150195 () Bool)

(assert (=> b!924372 m!1150195))

(declare-fun m!1150197 () Bool)

(assert (=> b!924372 m!1150197))

(assert (=> b!924373 m!1150195))

(declare-fun m!1150199 () Bool)

(assert (=> b!924373 m!1150199))

(declare-fun m!1150201 () Bool)

(assert (=> b!924376 m!1150201))

(assert (=> b!924376 m!1150201))

(declare-fun m!1150203 () Bool)

(assert (=> b!924376 m!1150203))

(declare-fun m!1150205 () Bool)

(assert (=> b!924376 m!1150205))

(assert (=> b!924376 m!1150201))

(declare-fun m!1150207 () Bool)

(assert (=> b!924376 m!1150207))

(declare-fun m!1150209 () Bool)

(assert (=> d!280893 m!1150209))

(declare-fun m!1150211 () Bool)

(assert (=> d!280893 m!1150211))

(assert (=> d!280893 m!1150167))

(assert (=> b!924371 m!1150195))

(declare-fun m!1150213 () Bool)

(assert (=> b!924371 m!1150213))

(assert (=> b!924375 m!1150209))

(assert (=> b!924138 d!280893))

(declare-fun d!280897 () Bool)

(declare-fun choose!5681 (Int) Bool)

(assert (=> d!280897 (= (Exists!257 lambda!30328) (choose!5681 lambda!30328))))

(declare-fun bs!237311 () Bool)

(assert (= bs!237311 d!280897))

(declare-fun m!1150215 () Bool)

(assert (=> bs!237311 m!1150215))

(assert (=> b!924138 d!280897))

(declare-fun d!280899 () Bool)

(assert (=> d!280899 (= (Exists!257 lambda!30327) (choose!5681 lambda!30327))))

(declare-fun bs!237312 () Bool)

(assert (= bs!237312 d!280899))

(declare-fun m!1150217 () Bool)

(assert (=> bs!237312 m!1150217))

(assert (=> b!924138 d!280899))

(declare-fun bs!237313 () Bool)

(declare-fun d!280901 () Bool)

(assert (= bs!237313 (and d!280901 b!924145)))

(declare-fun lambda!30357 () Int)

(assert (=> bs!237313 (= (and (= (regOne!5484 r!15766) lt!339047) (= (regTwo!5484 r!15766) lt!339046)) (= lambda!30357 lambda!30329))))

(declare-fun bs!237314 () Bool)

(assert (= bs!237314 (and d!280901 b!924138)))

(assert (=> bs!237314 (not (= lambda!30357 lambda!30328))))

(declare-fun bs!237315 () Bool)

(assert (= bs!237315 (and d!280901 d!280891)))

(assert (=> bs!237315 (= lambda!30357 lambda!30350)))

(assert (=> bs!237314 (= lambda!30357 lambda!30327)))

(assert (=> bs!237313 (not (= lambda!30357 lambda!30330))))

(assert (=> d!280901 true))

(assert (=> d!280901 true))

(assert (=> d!280901 true))

(declare-fun lambda!30358 () Int)

(assert (=> bs!237313 (not (= lambda!30358 lambda!30329))))

(assert (=> bs!237314 (= lambda!30358 lambda!30328)))

(assert (=> bs!237315 (not (= lambda!30358 lambda!30350))))

(declare-fun bs!237316 () Bool)

(assert (= bs!237316 d!280901))

(assert (=> bs!237316 (not (= lambda!30358 lambda!30357))))

(assert (=> bs!237314 (not (= lambda!30358 lambda!30327))))

(assert (=> bs!237313 (= (and (= (regOne!5484 r!15766) lt!339047) (= (regTwo!5484 r!15766) lt!339046)) (= lambda!30358 lambda!30330))))

(assert (=> d!280901 true))

(assert (=> d!280901 true))

(assert (=> d!280901 true))

(assert (=> d!280901 (= (Exists!257 lambda!30357) (Exists!257 lambda!30358))))

(declare-fun lt!339106 () Unit!14591)

(declare-fun choose!5682 (Regex!2486 Regex!2486 List!9716) Unit!14591)

(assert (=> d!280901 (= lt!339106 (choose!5682 (regOne!5484 r!15766) (regTwo!5484 r!15766) s!10566))))

(assert (=> d!280901 (validRegex!955 (regOne!5484 r!15766))))

(assert (=> d!280901 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!169 (regOne!5484 r!15766) (regTwo!5484 r!15766) s!10566) lt!339106)))

(declare-fun m!1150219 () Bool)

(assert (=> bs!237316 m!1150219))

(declare-fun m!1150221 () Bool)

(assert (=> bs!237316 m!1150221))

(declare-fun m!1150223 () Bool)

(assert (=> bs!237316 m!1150223))

(assert (=> bs!237316 m!1150167))

(assert (=> b!924138 d!280901))

(declare-fun bs!237317 () Bool)

(declare-fun b!924452 () Bool)

(assert (= bs!237317 (and b!924452 b!924145)))

(declare-fun lambda!30363 () Int)

(assert (=> bs!237317 (not (= lambda!30363 lambda!30329))))

(declare-fun bs!237318 () Bool)

(assert (= bs!237318 (and b!924452 b!924138)))

(assert (=> bs!237318 (not (= lambda!30363 lambda!30328))))

(declare-fun bs!237319 () Bool)

(assert (= bs!237319 (and b!924452 d!280901)))

(assert (=> bs!237319 (not (= lambda!30363 lambda!30358))))

(declare-fun bs!237320 () Bool)

(assert (= bs!237320 (and b!924452 d!280891)))

(assert (=> bs!237320 (not (= lambda!30363 lambda!30350))))

(assert (=> bs!237319 (not (= lambda!30363 lambda!30357))))

(assert (=> bs!237318 (not (= lambda!30363 lambda!30327))))

(assert (=> bs!237317 (not (= lambda!30363 lambda!30330))))

(assert (=> b!924452 true))

(assert (=> b!924452 true))

(declare-fun bs!237322 () Bool)

(declare-fun b!924447 () Bool)

(assert (= bs!237322 (and b!924447 b!924145)))

(declare-fun lambda!30364 () Int)

(assert (=> bs!237322 (not (= lambda!30364 lambda!30329))))

(declare-fun bs!237323 () Bool)

(assert (= bs!237323 (and b!924447 b!924138)))

(assert (=> bs!237323 (= lambda!30364 lambda!30328)))

(declare-fun bs!237324 () Bool)

(assert (= bs!237324 (and b!924447 d!280901)))

(assert (=> bs!237324 (= lambda!30364 lambda!30358)))

(declare-fun bs!237325 () Bool)

(assert (= bs!237325 (and b!924447 d!280891)))

(assert (=> bs!237325 (not (= lambda!30364 lambda!30350))))

(assert (=> bs!237324 (not (= lambda!30364 lambda!30357))))

(assert (=> bs!237323 (not (= lambda!30364 lambda!30327))))

(assert (=> bs!237322 (= (and (= (regOne!5484 r!15766) lt!339047) (= (regTwo!5484 r!15766) lt!339046)) (= lambda!30364 lambda!30330))))

(declare-fun bs!237326 () Bool)

(assert (= bs!237326 (and b!924447 b!924452)))

(assert (=> bs!237326 (not (= lambda!30364 lambda!30363))))

(assert (=> b!924447 true))

(assert (=> b!924447 true))

(declare-fun d!280903 () Bool)

(declare-fun c!150099 () Bool)

(assert (=> d!280903 (= c!150099 (is-EmptyExpr!2486 r!15766))))

(declare-fun e!601554 () Bool)

(assert (=> d!280903 (= (matchRSpec!287 r!15766 s!10566) e!601554)))

(declare-fun e!601552 () Bool)

(declare-fun call!56472 () Bool)

(assert (=> b!924447 (= e!601552 call!56472)))

(declare-fun b!924448 () Bool)

(declare-fun e!601551 () Bool)

(assert (=> b!924448 (= e!601554 e!601551)))

(declare-fun res!420279 () Bool)

(assert (=> b!924448 (= res!420279 (not (is-EmptyLang!2486 r!15766)))))

(assert (=> b!924448 (=> (not res!420279) (not e!601551))))

(declare-fun b!924449 () Bool)

(declare-fun e!601555 () Bool)

(assert (=> b!924449 (= e!601555 (= s!10566 (Cons!9700 (c!150035 r!15766) Nil!9700)))))

(declare-fun b!924450 () Bool)

(declare-fun res!420278 () Bool)

(declare-fun e!601556 () Bool)

(assert (=> b!924450 (=> res!420278 e!601556)))

(declare-fun call!56473 () Bool)

(assert (=> b!924450 (= res!420278 call!56473)))

(assert (=> b!924450 (= e!601552 e!601556)))

(declare-fun bm!56467 () Bool)

(declare-fun c!150096 () Bool)

(assert (=> bm!56467 (= call!56472 (Exists!257 (ite c!150096 lambda!30363 lambda!30364)))))

(declare-fun b!924451 () Bool)

(declare-fun c!150098 () Bool)

(assert (=> b!924451 (= c!150098 (is-Union!2486 r!15766))))

(declare-fun e!601553 () Bool)

(assert (=> b!924451 (= e!601555 e!601553)))

(assert (=> b!924452 (= e!601556 call!56472)))

(declare-fun b!924453 () Bool)

(declare-fun e!601550 () Bool)

(assert (=> b!924453 (= e!601553 e!601550)))

(declare-fun res!420280 () Bool)

(assert (=> b!924453 (= res!420280 (matchRSpec!287 (regOne!5485 r!15766) s!10566))))

(assert (=> b!924453 (=> res!420280 e!601550)))

(declare-fun b!924454 () Bool)

(assert (=> b!924454 (= e!601553 e!601552)))

(assert (=> b!924454 (= c!150096 (is-Star!2486 r!15766))))

(declare-fun bm!56468 () Bool)

(assert (=> bm!56468 (= call!56473 (isEmpty!5953 s!10566))))

(declare-fun b!924455 () Bool)

(assert (=> b!924455 (= e!601550 (matchRSpec!287 (regTwo!5485 r!15766) s!10566))))

(declare-fun b!924456 () Bool)

(assert (=> b!924456 (= e!601554 call!56473)))

(declare-fun b!924457 () Bool)

(declare-fun c!150097 () Bool)

(assert (=> b!924457 (= c!150097 (is-ElementMatch!2486 r!15766))))

(assert (=> b!924457 (= e!601551 e!601555)))

(assert (= (and d!280903 c!150099) b!924456))

(assert (= (and d!280903 (not c!150099)) b!924448))

(assert (= (and b!924448 res!420279) b!924457))

(assert (= (and b!924457 c!150097) b!924449))

(assert (= (and b!924457 (not c!150097)) b!924451))

(assert (= (and b!924451 c!150098) b!924453))

(assert (= (and b!924451 (not c!150098)) b!924454))

(assert (= (and b!924453 (not res!420280)) b!924455))

(assert (= (and b!924454 c!150096) b!924450))

(assert (= (and b!924454 (not c!150096)) b!924447))

(assert (= (and b!924450 (not res!420278)) b!924452))

(assert (= (or b!924452 b!924447) bm!56467))

(assert (= (or b!924456 b!924450) bm!56468))

(declare-fun m!1150249 () Bool)

(assert (=> bm!56467 m!1150249))

(declare-fun m!1150251 () Bool)

(assert (=> b!924453 m!1150251))

(assert (=> bm!56468 m!1150065))

(declare-fun m!1150253 () Bool)

(assert (=> b!924455 m!1150253))

(assert (=> b!924140 d!280903))

(declare-fun b!924458 () Bool)

(declare-fun res!420285 () Bool)

(declare-fun e!601559 () Bool)

(assert (=> b!924458 (=> res!420285 e!601559)))

(assert (=> b!924458 (= res!420285 (not (is-ElementMatch!2486 r!15766)))))

(declare-fun e!601561 () Bool)

(assert (=> b!924458 (= e!601561 e!601559)))

(declare-fun b!924459 () Bool)

(declare-fun res!420281 () Bool)

(assert (=> b!924459 (=> res!420281 e!601559)))

(declare-fun e!601563 () Bool)

(assert (=> b!924459 (= res!420281 e!601563)))

(declare-fun res!420287 () Bool)

(assert (=> b!924459 (=> (not res!420287) (not e!601563))))

(declare-fun lt!339116 () Bool)

(assert (=> b!924459 (= res!420287 lt!339116)))

(declare-fun b!924460 () Bool)

(declare-fun e!601562 () Bool)

(declare-fun call!56474 () Bool)

(assert (=> b!924460 (= e!601562 (= lt!339116 call!56474))))

(declare-fun b!924461 () Bool)

(declare-fun res!420283 () Bool)

(assert (=> b!924461 (=> (not res!420283) (not e!601563))))

(assert (=> b!924461 (= res!420283 (not call!56474))))

(declare-fun b!924462 () Bool)

(declare-fun e!601557 () Bool)

(declare-fun e!601558 () Bool)

(assert (=> b!924462 (= e!601557 e!601558)))

(declare-fun res!420282 () Bool)

(assert (=> b!924462 (=> res!420282 e!601558)))

(assert (=> b!924462 (= res!420282 call!56474)))

(declare-fun b!924463 () Bool)

(declare-fun e!601560 () Bool)

(assert (=> b!924463 (= e!601560 (matchR!1024 (derivativeStep!508 r!15766 (head!1661 s!10566)) (tail!1223 s!10566)))))

(declare-fun b!924464 () Bool)

(assert (=> b!924464 (= e!601563 (= (head!1661 s!10566) (c!150035 r!15766)))))

(declare-fun b!924465 () Bool)

(assert (=> b!924465 (= e!601561 (not lt!339116))))

(declare-fun b!924466 () Bool)

(assert (=> b!924466 (= e!601560 (nullable!698 r!15766))))

(declare-fun b!924467 () Bool)

(assert (=> b!924467 (= e!601559 e!601557)))

(declare-fun res!420284 () Bool)

(assert (=> b!924467 (=> (not res!420284) (not e!601557))))

(assert (=> b!924467 (= res!420284 (not lt!339116))))

(declare-fun b!924468 () Bool)

(declare-fun res!420286 () Bool)

(assert (=> b!924468 (=> res!420286 e!601558)))

(assert (=> b!924468 (= res!420286 (not (isEmpty!5953 (tail!1223 s!10566))))))

(declare-fun b!924469 () Bool)

(assert (=> b!924469 (= e!601558 (not (= (head!1661 s!10566) (c!150035 r!15766))))))

(declare-fun b!924470 () Bool)

(assert (=> b!924470 (= e!601562 e!601561)))

(declare-fun c!150100 () Bool)

(assert (=> b!924470 (= c!150100 (is-EmptyLang!2486 r!15766))))

(declare-fun d!280909 () Bool)

(assert (=> d!280909 e!601562))

(declare-fun c!150101 () Bool)

(assert (=> d!280909 (= c!150101 (is-EmptyExpr!2486 r!15766))))

(assert (=> d!280909 (= lt!339116 e!601560)))

(declare-fun c!150102 () Bool)

(assert (=> d!280909 (= c!150102 (isEmpty!5953 s!10566))))

(assert (=> d!280909 (validRegex!955 r!15766)))

(assert (=> d!280909 (= (matchR!1024 r!15766 s!10566) lt!339116)))

(declare-fun bm!56469 () Bool)

(assert (=> bm!56469 (= call!56474 (isEmpty!5953 s!10566))))

(declare-fun b!924471 () Bool)

(declare-fun res!420288 () Bool)

(assert (=> b!924471 (=> (not res!420288) (not e!601563))))

(assert (=> b!924471 (= res!420288 (isEmpty!5953 (tail!1223 s!10566)))))

(assert (= (and d!280909 c!150102) b!924466))

(assert (= (and d!280909 (not c!150102)) b!924463))

(assert (= (and d!280909 c!150101) b!924460))

(assert (= (and d!280909 (not c!150101)) b!924470))

(assert (= (and b!924470 c!150100) b!924465))

(assert (= (and b!924470 (not c!150100)) b!924458))

(assert (= (and b!924458 (not res!420285)) b!924459))

(assert (= (and b!924459 res!420287) b!924461))

(assert (= (and b!924461 res!420283) b!924471))

(assert (= (and b!924471 res!420288) b!924464))

(assert (= (and b!924459 (not res!420281)) b!924467))

(assert (= (and b!924467 res!420284) b!924462))

(assert (= (and b!924462 (not res!420282)) b!924468))

(assert (= (and b!924468 (not res!420286)) b!924469))

(assert (= (or b!924460 b!924461 b!924462) bm!56469))

(assert (=> bm!56469 m!1150065))

(assert (=> d!280909 m!1150065))

(assert (=> d!280909 m!1150071))

(assert (=> b!924469 m!1150129))

(assert (=> b!924463 m!1150129))

(assert (=> b!924463 m!1150129))

(declare-fun m!1150255 () Bool)

(assert (=> b!924463 m!1150255))

(assert (=> b!924463 m!1150133))

(assert (=> b!924463 m!1150255))

(assert (=> b!924463 m!1150133))

(declare-fun m!1150257 () Bool)

(assert (=> b!924463 m!1150257))

(assert (=> b!924471 m!1150133))

(assert (=> b!924471 m!1150133))

(assert (=> b!924471 m!1150137))

(assert (=> b!924468 m!1150133))

(assert (=> b!924468 m!1150133))

(assert (=> b!924468 m!1150137))

(assert (=> b!924464 m!1150129))

(declare-fun m!1150259 () Bool)

(assert (=> b!924466 m!1150259))

(assert (=> b!924140 d!280909))

(declare-fun d!280911 () Bool)

(assert (=> d!280911 (= (matchR!1024 r!15766 s!10566) (matchRSpec!287 r!15766 s!10566))))

(declare-fun lt!339119 () Unit!14591)

(declare-fun choose!5683 (Regex!2486 List!9716) Unit!14591)

(assert (=> d!280911 (= lt!339119 (choose!5683 r!15766 s!10566))))

(assert (=> d!280911 (validRegex!955 r!15766)))

(assert (=> d!280911 (= (mainMatchTheorem!287 r!15766 s!10566) lt!339119)))

(declare-fun bs!237327 () Bool)

(assert (= bs!237327 d!280911))

(assert (=> bs!237327 m!1150045))

(assert (=> bs!237327 m!1150043))

(declare-fun m!1150261 () Bool)

(assert (=> bs!237327 m!1150261))

(assert (=> bs!237327 m!1150071))

(assert (=> b!924140 d!280911))

(declare-fun d!280913 () Bool)

(assert (=> d!280913 (= (matchR!1024 lt!339041 s!10566) (matchRSpec!287 lt!339041 s!10566))))

(declare-fun lt!339120 () Unit!14591)

(assert (=> d!280913 (= lt!339120 (choose!5683 lt!339041 s!10566))))

(assert (=> d!280913 (validRegex!955 lt!339041)))

(assert (=> d!280913 (= (mainMatchTheorem!287 lt!339041 s!10566) lt!339120)))

(declare-fun bs!237328 () Bool)

(assert (= bs!237328 d!280913))

(assert (=> bs!237328 m!1150049))

(assert (=> bs!237328 m!1150041))

(declare-fun m!1150263 () Bool)

(assert (=> bs!237328 m!1150263))

(assert (=> bs!237328 m!1150127))

(assert (=> b!924145 d!280913))

(declare-fun bs!237329 () Bool)

(declare-fun d!280915 () Bool)

(assert (= bs!237329 (and d!280915 b!924145)))

(declare-fun lambda!30365 () Int)

(assert (=> bs!237329 (= lambda!30365 lambda!30329)))

(declare-fun bs!237330 () Bool)

(assert (= bs!237330 (and d!280915 b!924138)))

(assert (=> bs!237330 (not (= lambda!30365 lambda!30328))))

(declare-fun bs!237331 () Bool)

(assert (= bs!237331 (and d!280915 d!280901)))

(assert (=> bs!237331 (not (= lambda!30365 lambda!30358))))

(declare-fun bs!237332 () Bool)

(assert (= bs!237332 (and d!280915 d!280891)))

(assert (=> bs!237332 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30365 lambda!30350))))

(assert (=> bs!237331 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30365 lambda!30357))))

(assert (=> bs!237330 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30365 lambda!30327))))

(declare-fun bs!237333 () Bool)

(assert (= bs!237333 (and d!280915 b!924447)))

(assert (=> bs!237333 (not (= lambda!30365 lambda!30364))))

(assert (=> bs!237329 (not (= lambda!30365 lambda!30330))))

(declare-fun bs!237334 () Bool)

(assert (= bs!237334 (and d!280915 b!924452)))

(assert (=> bs!237334 (not (= lambda!30365 lambda!30363))))

(assert (=> d!280915 true))

(assert (=> d!280915 true))

(assert (=> d!280915 true))

(declare-fun lambda!30366 () Int)

(assert (=> bs!237329 (not (= lambda!30366 lambda!30329))))

(assert (=> bs!237330 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30366 lambda!30328))))

(declare-fun bs!237335 () Bool)

(assert (= bs!237335 d!280915))

(assert (=> bs!237335 (not (= lambda!30366 lambda!30365))))

(assert (=> bs!237331 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30366 lambda!30358))))

(assert (=> bs!237332 (not (= lambda!30366 lambda!30350))))

(assert (=> bs!237331 (not (= lambda!30366 lambda!30357))))

(assert (=> bs!237330 (not (= lambda!30366 lambda!30327))))

(assert (=> bs!237333 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30366 lambda!30364))))

(assert (=> bs!237329 (= lambda!30366 lambda!30330)))

(assert (=> bs!237334 (not (= lambda!30366 lambda!30363))))

(assert (=> d!280915 true))

(assert (=> d!280915 true))

(assert (=> d!280915 true))

(assert (=> d!280915 (= (Exists!257 lambda!30365) (Exists!257 lambda!30366))))

(declare-fun lt!339121 () Unit!14591)

(assert (=> d!280915 (= lt!339121 (choose!5682 lt!339047 lt!339046 s!10566))))

(assert (=> d!280915 (validRegex!955 lt!339047)))

(assert (=> d!280915 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!169 lt!339047 lt!339046 s!10566) lt!339121)))

(declare-fun m!1150265 () Bool)

(assert (=> bs!237335 m!1150265))

(declare-fun m!1150267 () Bool)

(assert (=> bs!237335 m!1150267))

(declare-fun m!1150269 () Bool)

(assert (=> bs!237335 m!1150269))

(assert (=> bs!237335 m!1150025))

(assert (=> b!924145 d!280915))

(declare-fun bs!237336 () Bool)

(declare-fun b!924477 () Bool)

(assert (= bs!237336 (and b!924477 b!924145)))

(declare-fun lambda!30367 () Int)

(assert (=> bs!237336 (not (= lambda!30367 lambda!30329))))

(declare-fun bs!237337 () Bool)

(assert (= bs!237337 (and b!924477 b!924138)))

(assert (=> bs!237337 (not (= lambda!30367 lambda!30328))))

(declare-fun bs!237338 () Bool)

(assert (= bs!237338 (and b!924477 d!280915)))

(assert (=> bs!237338 (not (= lambda!30367 lambda!30365))))

(declare-fun bs!237339 () Bool)

(assert (= bs!237339 (and b!924477 d!280901)))

(assert (=> bs!237339 (not (= lambda!30367 lambda!30358))))

(declare-fun bs!237340 () Bool)

(assert (= bs!237340 (and b!924477 d!280891)))

(assert (=> bs!237340 (not (= lambda!30367 lambda!30350))))

(assert (=> bs!237338 (not (= lambda!30367 lambda!30366))))

(assert (=> bs!237339 (not (= lambda!30367 lambda!30357))))

(assert (=> bs!237337 (not (= lambda!30367 lambda!30327))))

(declare-fun bs!237341 () Bool)

(assert (= bs!237341 (and b!924477 b!924447)))

(assert (=> bs!237341 (not (= lambda!30367 lambda!30364))))

(assert (=> bs!237336 (not (= lambda!30367 lambda!30330))))

(declare-fun bs!237342 () Bool)

(assert (= bs!237342 (and b!924477 b!924452)))

(assert (=> bs!237342 (= (and (= (reg!2815 lt!339041) (reg!2815 r!15766)) (= lt!339041 r!15766)) (= lambda!30367 lambda!30363))))

(assert (=> b!924477 true))

(assert (=> b!924477 true))

(declare-fun bs!237343 () Bool)

(declare-fun b!924472 () Bool)

(assert (= bs!237343 (and b!924472 b!924145)))

(declare-fun lambda!30368 () Int)

(assert (=> bs!237343 (not (= lambda!30368 lambda!30329))))

(declare-fun bs!237344 () Bool)

(assert (= bs!237344 (and b!924472 b!924138)))

(assert (=> bs!237344 (= (and (= (regOne!5484 lt!339041) (regOne!5484 r!15766)) (= (regTwo!5484 lt!339041) (regTwo!5484 r!15766))) (= lambda!30368 lambda!30328))))

(declare-fun bs!237345 () Bool)

(assert (= bs!237345 (and b!924472 d!280915)))

(assert (=> bs!237345 (not (= lambda!30368 lambda!30365))))

(declare-fun bs!237346 () Bool)

(assert (= bs!237346 (and b!924472 d!280901)))

(assert (=> bs!237346 (= (and (= (regOne!5484 lt!339041) (regOne!5484 r!15766)) (= (regTwo!5484 lt!339041) (regTwo!5484 r!15766))) (= lambda!30368 lambda!30358))))

(declare-fun bs!237347 () Bool)

(assert (= bs!237347 (and b!924472 d!280891)))

(assert (=> bs!237347 (not (= lambda!30368 lambda!30350))))

(assert (=> bs!237345 (= (and (= (regOne!5484 lt!339041) lt!339047) (= (regTwo!5484 lt!339041) lt!339046)) (= lambda!30368 lambda!30366))))

(assert (=> bs!237346 (not (= lambda!30368 lambda!30357))))

(declare-fun bs!237348 () Bool)

(assert (= bs!237348 (and b!924472 b!924447)))

(assert (=> bs!237348 (= (and (= (regOne!5484 lt!339041) (regOne!5484 r!15766)) (= (regTwo!5484 lt!339041) (regTwo!5484 r!15766))) (= lambda!30368 lambda!30364))))

(assert (=> bs!237344 (not (= lambda!30368 lambda!30327))))

(declare-fun bs!237349 () Bool)

(assert (= bs!237349 (and b!924472 b!924477)))

(assert (=> bs!237349 (not (= lambda!30368 lambda!30367))))

(assert (=> bs!237343 (= (and (= (regOne!5484 lt!339041) lt!339047) (= (regTwo!5484 lt!339041) lt!339046)) (= lambda!30368 lambda!30330))))

(declare-fun bs!237350 () Bool)

(assert (= bs!237350 (and b!924472 b!924452)))

(assert (=> bs!237350 (not (= lambda!30368 lambda!30363))))

(assert (=> b!924472 true))

(assert (=> b!924472 true))

(declare-fun d!280917 () Bool)

(declare-fun c!150106 () Bool)

(assert (=> d!280917 (= c!150106 (is-EmptyExpr!2486 lt!339041))))

(declare-fun e!601568 () Bool)

(assert (=> d!280917 (= (matchRSpec!287 lt!339041 s!10566) e!601568)))

(declare-fun e!601566 () Bool)

(declare-fun call!56475 () Bool)

(assert (=> b!924472 (= e!601566 call!56475)))

(declare-fun b!924473 () Bool)

(declare-fun e!601565 () Bool)

(assert (=> b!924473 (= e!601568 e!601565)))

(declare-fun res!420290 () Bool)

(assert (=> b!924473 (= res!420290 (not (is-EmptyLang!2486 lt!339041)))))

(assert (=> b!924473 (=> (not res!420290) (not e!601565))))

(declare-fun b!924474 () Bool)

(declare-fun e!601569 () Bool)

(assert (=> b!924474 (= e!601569 (= s!10566 (Cons!9700 (c!150035 lt!339041) Nil!9700)))))

(declare-fun b!924475 () Bool)

(declare-fun res!420289 () Bool)

(declare-fun e!601570 () Bool)

(assert (=> b!924475 (=> res!420289 e!601570)))

(declare-fun call!56476 () Bool)

(assert (=> b!924475 (= res!420289 call!56476)))

(assert (=> b!924475 (= e!601566 e!601570)))

(declare-fun c!150103 () Bool)

(declare-fun bm!56470 () Bool)

(assert (=> bm!56470 (= call!56475 (Exists!257 (ite c!150103 lambda!30367 lambda!30368)))))

(declare-fun b!924476 () Bool)

(declare-fun c!150105 () Bool)

(assert (=> b!924476 (= c!150105 (is-Union!2486 lt!339041))))

(declare-fun e!601567 () Bool)

(assert (=> b!924476 (= e!601569 e!601567)))

(assert (=> b!924477 (= e!601570 call!56475)))

(declare-fun b!924478 () Bool)

(declare-fun e!601564 () Bool)

(assert (=> b!924478 (= e!601567 e!601564)))

(declare-fun res!420291 () Bool)

(assert (=> b!924478 (= res!420291 (matchRSpec!287 (regOne!5485 lt!339041) s!10566))))

(assert (=> b!924478 (=> res!420291 e!601564)))

(declare-fun b!924479 () Bool)

(assert (=> b!924479 (= e!601567 e!601566)))

(assert (=> b!924479 (= c!150103 (is-Star!2486 lt!339041))))

(declare-fun bm!56471 () Bool)

(assert (=> bm!56471 (= call!56476 (isEmpty!5953 s!10566))))

(declare-fun b!924480 () Bool)

(assert (=> b!924480 (= e!601564 (matchRSpec!287 (regTwo!5485 lt!339041) s!10566))))

(declare-fun b!924481 () Bool)

(assert (=> b!924481 (= e!601568 call!56476)))

(declare-fun b!924482 () Bool)

(declare-fun c!150104 () Bool)

(assert (=> b!924482 (= c!150104 (is-ElementMatch!2486 lt!339041))))

(assert (=> b!924482 (= e!601565 e!601569)))

(assert (= (and d!280917 c!150106) b!924481))

(assert (= (and d!280917 (not c!150106)) b!924473))

(assert (= (and b!924473 res!420290) b!924482))

(assert (= (and b!924482 c!150104) b!924474))

(assert (= (and b!924482 (not c!150104)) b!924476))

(assert (= (and b!924476 c!150105) b!924478))

(assert (= (and b!924476 (not c!150105)) b!924479))

(assert (= (and b!924478 (not res!420291)) b!924480))

(assert (= (and b!924479 c!150103) b!924475))

(assert (= (and b!924479 (not c!150103)) b!924472))

(assert (= (and b!924475 (not res!420289)) b!924477))

(assert (= (or b!924477 b!924472) bm!56470))

(assert (= (or b!924481 b!924475) bm!56471))

(declare-fun m!1150271 () Bool)

(assert (=> bm!56470 m!1150271))

(declare-fun m!1150273 () Bool)

(assert (=> b!924478 m!1150273))

(assert (=> bm!56471 m!1150065))

(declare-fun m!1150275 () Bool)

(assert (=> b!924480 m!1150275))

(assert (=> b!924145 d!280917))

(declare-fun bs!237351 () Bool)

(declare-fun d!280919 () Bool)

(assert (= bs!237351 (and d!280919 b!924145)))

(declare-fun lambda!30371 () Int)

(assert (=> bs!237351 (= lambda!30371 lambda!30329)))

(declare-fun bs!237352 () Bool)

(assert (= bs!237352 (and d!280919 b!924138)))

(assert (=> bs!237352 (not (= lambda!30371 lambda!30328))))

(declare-fun bs!237353 () Bool)

(assert (= bs!237353 (and d!280919 d!280915)))

(assert (=> bs!237353 (= lambda!30371 lambda!30365)))

(declare-fun bs!237354 () Bool)

(assert (= bs!237354 (and d!280919 d!280901)))

(assert (=> bs!237354 (not (= lambda!30371 lambda!30358))))

(declare-fun bs!237355 () Bool)

(assert (= bs!237355 (and d!280919 b!924472)))

(assert (=> bs!237355 (not (= lambda!30371 lambda!30368))))

(declare-fun bs!237356 () Bool)

(assert (= bs!237356 (and d!280919 d!280891)))

(assert (=> bs!237356 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30371 lambda!30350))))

(assert (=> bs!237353 (not (= lambda!30371 lambda!30366))))

(assert (=> bs!237354 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30371 lambda!30357))))

(declare-fun bs!237357 () Bool)

(assert (= bs!237357 (and d!280919 b!924447)))

(assert (=> bs!237357 (not (= lambda!30371 lambda!30364))))

(assert (=> bs!237352 (= (and (= lt!339047 (regOne!5484 r!15766)) (= lt!339046 (regTwo!5484 r!15766))) (= lambda!30371 lambda!30327))))

(declare-fun bs!237358 () Bool)

(assert (= bs!237358 (and d!280919 b!924477)))

(assert (=> bs!237358 (not (= lambda!30371 lambda!30367))))

(assert (=> bs!237351 (not (= lambda!30371 lambda!30330))))

(declare-fun bs!237359 () Bool)

(assert (= bs!237359 (and d!280919 b!924452)))

(assert (=> bs!237359 (not (= lambda!30371 lambda!30363))))

(assert (=> d!280919 true))

(assert (=> d!280919 true))

(assert (=> d!280919 true))

(assert (=> d!280919 (= (isDefined!1763 (findConcatSeparation!227 lt!339047 lt!339046 Nil!9700 s!10566 s!10566)) (Exists!257 lambda!30371))))

(declare-fun lt!339124 () Unit!14591)

(assert (=> d!280919 (= lt!339124 (choose!5680 lt!339047 lt!339046 s!10566))))

(assert (=> d!280919 (validRegex!955 lt!339047)))

(assert (=> d!280919 (= (lemmaFindConcatSeparationEquivalentToExists!227 lt!339047 lt!339046 s!10566) lt!339124)))

(declare-fun bs!237360 () Bool)

(assert (= bs!237360 d!280919))

(declare-fun m!1150277 () Bool)

(assert (=> bs!237360 m!1150277))

(assert (=> bs!237360 m!1150033))

(assert (=> bs!237360 m!1150035))

(assert (=> bs!237360 m!1150033))

(assert (=> bs!237360 m!1150025))

(declare-fun m!1150279 () Bool)

(assert (=> bs!237360 m!1150279))

(assert (=> b!924145 d!280919))

(declare-fun b!924487 () Bool)

(declare-fun res!420299 () Bool)

(declare-fun e!601575 () Bool)

(assert (=> b!924487 (=> (not res!420299) (not e!601575))))

(declare-fun lt!339126 () Option!2121)

(assert (=> b!924487 (= res!420299 (matchR!1024 lt!339047 (_1!6305 (get!3173 lt!339126))))))

(declare-fun d!280921 () Bool)

(declare-fun e!601574 () Bool)

(assert (=> d!280921 e!601574))

(declare-fun res!420300 () Bool)

(assert (=> d!280921 (=> res!420300 e!601574)))

(assert (=> d!280921 (= res!420300 e!601575)))

(declare-fun res!420298 () Bool)

(assert (=> d!280921 (=> (not res!420298) (not e!601575))))

(assert (=> d!280921 (= res!420298 (isDefined!1763 lt!339126))))

(declare-fun e!601573 () Option!2121)

(assert (=> d!280921 (= lt!339126 e!601573)))

(declare-fun c!150107 () Bool)

(declare-fun e!601576 () Bool)

(assert (=> d!280921 (= c!150107 e!601576)))

(declare-fun res!420296 () Bool)

(assert (=> d!280921 (=> (not res!420296) (not e!601576))))

(assert (=> d!280921 (= res!420296 (matchR!1024 lt!339047 Nil!9700))))

(assert (=> d!280921 (validRegex!955 lt!339047)))

(assert (=> d!280921 (= (findConcatSeparation!227 lt!339047 lt!339046 Nil!9700 s!10566 s!10566) lt!339126)))

(declare-fun b!924488 () Bool)

(declare-fun res!420297 () Bool)

(assert (=> b!924488 (=> (not res!420297) (not e!601575))))

(assert (=> b!924488 (= res!420297 (matchR!1024 lt!339046 (_2!6305 (get!3173 lt!339126))))))

(declare-fun b!924489 () Bool)

(assert (=> b!924489 (= e!601575 (= (++!2574 (_1!6305 (get!3173 lt!339126)) (_2!6305 (get!3173 lt!339126))) s!10566))))

(declare-fun b!924490 () Bool)

(declare-fun e!601577 () Option!2121)

(assert (=> b!924490 (= e!601573 e!601577)))

(declare-fun c!150108 () Bool)

(assert (=> b!924490 (= c!150108 (is-Nil!9700 s!10566))))

(declare-fun b!924491 () Bool)

(assert (=> b!924491 (= e!601574 (not (isDefined!1763 lt!339126)))))

(declare-fun b!924492 () Bool)

(declare-fun lt!339125 () Unit!14591)

(declare-fun lt!339127 () Unit!14591)

(assert (=> b!924492 (= lt!339125 lt!339127)))

(assert (=> b!924492 (= (++!2574 (++!2574 Nil!9700 (Cons!9700 (h!15101 s!10566) Nil!9700)) (t!100762 s!10566)) s!10566)))

(assert (=> b!924492 (= lt!339127 (lemmaMoveElementToOtherListKeepsConcatEq!189 Nil!9700 (h!15101 s!10566) (t!100762 s!10566) s!10566))))

(assert (=> b!924492 (= e!601577 (findConcatSeparation!227 lt!339047 lt!339046 (++!2574 Nil!9700 (Cons!9700 (h!15101 s!10566) Nil!9700)) (t!100762 s!10566) s!10566))))

(declare-fun b!924493 () Bool)

(assert (=> b!924493 (= e!601576 (matchR!1024 lt!339046 s!10566))))

(declare-fun b!924494 () Bool)

(assert (=> b!924494 (= e!601573 (Some!2120 (tuple2!10959 Nil!9700 s!10566)))))

(declare-fun b!924495 () Bool)

(assert (=> b!924495 (= e!601577 None!2120)))

(assert (= (and d!280921 res!420296) b!924493))

(assert (= (and d!280921 c!150107) b!924494))

(assert (= (and d!280921 (not c!150107)) b!924490))

(assert (= (and b!924490 c!150108) b!924495))

(assert (= (and b!924490 (not c!150108)) b!924492))

(assert (= (and d!280921 res!420298) b!924487))

(assert (= (and b!924487 res!420299) b!924488))

(assert (= (and b!924488 res!420297) b!924489))

(assert (= (and d!280921 (not res!420300)) b!924491))

(declare-fun m!1150281 () Bool)

(assert (=> b!924493 m!1150281))

(declare-fun m!1150283 () Bool)

(assert (=> b!924488 m!1150283))

(declare-fun m!1150285 () Bool)

(assert (=> b!924488 m!1150285))

(assert (=> b!924489 m!1150283))

(declare-fun m!1150287 () Bool)

(assert (=> b!924489 m!1150287))

(assert (=> b!924492 m!1150201))

(assert (=> b!924492 m!1150201))

(assert (=> b!924492 m!1150203))

(assert (=> b!924492 m!1150205))

(assert (=> b!924492 m!1150201))

(declare-fun m!1150289 () Bool)

(assert (=> b!924492 m!1150289))

(declare-fun m!1150291 () Bool)

(assert (=> d!280921 m!1150291))

(declare-fun m!1150293 () Bool)

(assert (=> d!280921 m!1150293))

(assert (=> d!280921 m!1150025))

(assert (=> b!924487 m!1150283))

(declare-fun m!1150295 () Bool)

(assert (=> b!924487 m!1150295))

(assert (=> b!924491 m!1150291))

(assert (=> b!924145 d!280921))

(declare-fun d!280923 () Bool)

(assert (=> d!280923 (= (isDefined!1763 (findConcatSeparation!227 lt!339047 lt!339046 Nil!9700 s!10566 s!10566)) (not (isEmpty!5955 (findConcatSeparation!227 lt!339047 lt!339046 Nil!9700 s!10566 s!10566))))))

(declare-fun bs!237361 () Bool)

(assert (= bs!237361 d!280923))

(assert (=> bs!237361 m!1150033))

(declare-fun m!1150297 () Bool)

(assert (=> bs!237361 m!1150297))

(assert (=> b!924145 d!280923))

(declare-fun d!280925 () Bool)

(assert (=> d!280925 (= (Exists!257 lambda!30330) (choose!5681 lambda!30330))))

(declare-fun bs!237362 () Bool)

(assert (= bs!237362 d!280925))

(declare-fun m!1150299 () Bool)

(assert (=> bs!237362 m!1150299))

(assert (=> b!924145 d!280925))

(declare-fun d!280927 () Bool)

(assert (=> d!280927 (= (Exists!257 lambda!30329) (choose!5681 lambda!30329))))

(declare-fun bs!237363 () Bool)

(assert (= bs!237363 d!280927))

(declare-fun m!1150301 () Bool)

(assert (=> bs!237363 m!1150301))

(assert (=> b!924145 d!280927))

(declare-fun b!924513 () Bool)

(declare-fun e!601582 () Bool)

(declare-fun tp!287471 () Bool)

(declare-fun tp!287473 () Bool)

(assert (=> b!924513 (= e!601582 (and tp!287471 tp!287473))))

(declare-fun b!924511 () Bool)

(declare-fun tp!287474 () Bool)

(declare-fun tp!287475 () Bool)

(assert (=> b!924511 (= e!601582 (and tp!287474 tp!287475))))

(declare-fun b!924512 () Bool)

(declare-fun tp!287472 () Bool)

(assert (=> b!924512 (= e!601582 tp!287472)))

(assert (=> b!924147 (= tp!287440 e!601582)))

(declare-fun b!924510 () Bool)

(assert (=> b!924510 (= e!601582 tp_is_empty!4615)))

(assert (= (and b!924147 (is-ElementMatch!2486 (reg!2815 r!15766))) b!924510))

(assert (= (and b!924147 (is-Concat!4319 (reg!2815 r!15766))) b!924511))

(assert (= (and b!924147 (is-Star!2486 (reg!2815 r!15766))) b!924512))

(assert (= (and b!924147 (is-Union!2486 (reg!2815 r!15766))) b!924513))

(declare-fun b!924517 () Bool)

(declare-fun e!601583 () Bool)

(declare-fun tp!287476 () Bool)

(declare-fun tp!287478 () Bool)

(assert (=> b!924517 (= e!601583 (and tp!287476 tp!287478))))

(declare-fun b!924515 () Bool)

(declare-fun tp!287479 () Bool)

(declare-fun tp!287480 () Bool)

(assert (=> b!924515 (= e!601583 (and tp!287479 tp!287480))))

(declare-fun b!924516 () Bool)

(declare-fun tp!287477 () Bool)

(assert (=> b!924516 (= e!601583 tp!287477)))

(assert (=> b!924146 (= tp!287441 e!601583)))

(declare-fun b!924514 () Bool)

(assert (=> b!924514 (= e!601583 tp_is_empty!4615)))

(assert (= (and b!924146 (is-ElementMatch!2486 (regOne!5485 r!15766))) b!924514))

(assert (= (and b!924146 (is-Concat!4319 (regOne!5485 r!15766))) b!924515))

(assert (= (and b!924146 (is-Star!2486 (regOne!5485 r!15766))) b!924516))

(assert (= (and b!924146 (is-Union!2486 (regOne!5485 r!15766))) b!924517))

(declare-fun b!924521 () Bool)

(declare-fun e!601584 () Bool)

(declare-fun tp!287481 () Bool)

(declare-fun tp!287483 () Bool)

(assert (=> b!924521 (= e!601584 (and tp!287481 tp!287483))))

(declare-fun b!924519 () Bool)

(declare-fun tp!287484 () Bool)

(declare-fun tp!287485 () Bool)

(assert (=> b!924519 (= e!601584 (and tp!287484 tp!287485))))

(declare-fun b!924520 () Bool)

(declare-fun tp!287482 () Bool)

(assert (=> b!924520 (= e!601584 tp!287482)))

(assert (=> b!924146 (= tp!287437 e!601584)))

(declare-fun b!924518 () Bool)

(assert (=> b!924518 (= e!601584 tp_is_empty!4615)))

(assert (= (and b!924146 (is-ElementMatch!2486 (regTwo!5485 r!15766))) b!924518))

(assert (= (and b!924146 (is-Concat!4319 (regTwo!5485 r!15766))) b!924519))

(assert (= (and b!924146 (is-Star!2486 (regTwo!5485 r!15766))) b!924520))

(assert (= (and b!924146 (is-Union!2486 (regTwo!5485 r!15766))) b!924521))

(declare-fun b!924525 () Bool)

(declare-fun e!601585 () Bool)

(declare-fun tp!287486 () Bool)

(declare-fun tp!287488 () Bool)

(assert (=> b!924525 (= e!601585 (and tp!287486 tp!287488))))

(declare-fun b!924523 () Bool)

(declare-fun tp!287489 () Bool)

(declare-fun tp!287490 () Bool)

(assert (=> b!924523 (= e!601585 (and tp!287489 tp!287490))))

(declare-fun b!924524 () Bool)

(declare-fun tp!287487 () Bool)

(assert (=> b!924524 (= e!601585 tp!287487)))

(assert (=> b!924142 (= tp!287439 e!601585)))

(declare-fun b!924522 () Bool)

(assert (=> b!924522 (= e!601585 tp_is_empty!4615)))

(assert (= (and b!924142 (is-ElementMatch!2486 (regOne!5484 r!15766))) b!924522))

(assert (= (and b!924142 (is-Concat!4319 (regOne!5484 r!15766))) b!924523))

(assert (= (and b!924142 (is-Star!2486 (regOne!5484 r!15766))) b!924524))

(assert (= (and b!924142 (is-Union!2486 (regOne!5484 r!15766))) b!924525))

(declare-fun b!924529 () Bool)

(declare-fun e!601586 () Bool)

(declare-fun tp!287491 () Bool)

(declare-fun tp!287493 () Bool)

(assert (=> b!924529 (= e!601586 (and tp!287491 tp!287493))))

(declare-fun b!924527 () Bool)

(declare-fun tp!287494 () Bool)

(declare-fun tp!287495 () Bool)

(assert (=> b!924527 (= e!601586 (and tp!287494 tp!287495))))

(declare-fun b!924528 () Bool)

(declare-fun tp!287492 () Bool)

(assert (=> b!924528 (= e!601586 tp!287492)))

(assert (=> b!924142 (= tp!287442 e!601586)))

(declare-fun b!924526 () Bool)

(assert (=> b!924526 (= e!601586 tp_is_empty!4615)))

(assert (= (and b!924142 (is-ElementMatch!2486 (regTwo!5484 r!15766))) b!924526))

(assert (= (and b!924142 (is-Concat!4319 (regTwo!5484 r!15766))) b!924527))

(assert (= (and b!924142 (is-Star!2486 (regTwo!5484 r!15766))) b!924528))

(assert (= (and b!924142 (is-Union!2486 (regTwo!5484 r!15766))) b!924529))

(declare-fun b!924534 () Bool)

(declare-fun e!601589 () Bool)

(declare-fun tp!287498 () Bool)

(assert (=> b!924534 (= e!601589 (and tp_is_empty!4615 tp!287498))))

(assert (=> b!924139 (= tp!287438 e!601589)))

(assert (= (and b!924139 (is-Cons!9700 (t!100762 s!10566))) b!924534))

(push 1)

(assert (not bm!56431))

(assert (not bm!56459))

(assert (not bm!56470))

(assert (not d!280899))

(assert (not b!924280))

(assert (not bm!56448))

(assert (not b!924517))

(assert (not b!924235))

(assert (not d!280893))

(assert (not b!924373))

(assert (not b!924513))

(assert (not b!924528))

(assert (not b!924512))

(assert (not bm!56460))

(assert (not b!924511))

(assert (not d!280891))

(assert (not b!924525))

(assert (not d!280919))

(assert (not b!924466))

(assert (not b!924372))

(assert tp_is_empty!4615)

(assert (not bm!56462))

(assert (not d!280925))

(assert (not b!924529))

(assert (not b!924519))

(assert (not b!924523))

(assert (not b!924375))

(assert (not b!924275))

(assert (not bm!56457))

(assert (not bm!56471))

(assert (not bm!56467))

(assert (not b!924305))

(assert (not d!280901))

(assert (not b!924330))

(assert (not b!924489))

(assert (not b!924488))

(assert (not b!924516))

(assert (not b!924463))

(assert (not d!280909))

(assert (not b!924371))

(assert (not bm!56433))

(assert (not b!924468))

(assert (not bm!56452))

(assert (not b!924274))

(assert (not b!924527))

(assert (not b!924471))

(assert (not d!280889))

(assert (not b!924493))

(assert (not d!280921))

(assert (not b!924277))

(assert (not b!924453))

(assert (not b!924376))

(assert (not b!924464))

(assert (not b!924377))

(assert (not d!280923))

(assert (not d!280913))

(assert (not b!924487))

(assert (not b!924316))

(assert (not b!924455))

(assert (not d!280871))

(assert (not bm!56436))

(assert (not b!924339))

(assert (not d!280911))

(assert (not d!280897))

(assert (not bm!56453))

(assert (not b!924521))

(assert (not bm!56447))

(assert (not b!924524))

(assert (not b!924279))

(assert (not d!280869))

(assert (not d!280881))

(assert (not bm!56468))

(assert (not b!924282))

(assert (not b!924478))

(assert (not d!280927))

(assert (not b!924491))

(assert (not d!280915))

(assert (not b!924492))

(assert (not b!924469))

(assert (not b!924480))

(assert (not b!924520))

(assert (not b!924534))

(assert (not bm!56469))

(assert (not b!924515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

