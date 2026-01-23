; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725352 () Bool)

(assert start!725352)

(declare-fun b!7494194 () Bool)

(assert (=> b!7494194 true))

(assert (=> b!7494194 true))

(assert (=> b!7494194 true))

(declare-fun lambda!464325 () Int)

(declare-fun lambda!464324 () Int)

(assert (=> b!7494194 (not (= lambda!464325 lambda!464324))))

(assert (=> b!7494194 true))

(assert (=> b!7494194 true))

(assert (=> b!7494194 true))

(declare-fun b!7494182 () Bool)

(declare-fun e!4468556 () Bool)

(declare-fun tp!2175467 () Bool)

(declare-fun tp!2175465 () Bool)

(assert (=> b!7494182 (= e!4468556 (and tp!2175467 tp!2175465))))

(declare-fun b!7494183 () Bool)

(declare-fun tp!2175461 () Bool)

(assert (=> b!7494183 (= e!4468556 tp!2175461)))

(declare-fun b!7494184 () Bool)

(declare-fun e!4468558 () Bool)

(declare-fun tp_is_empty!49577 () Bool)

(declare-fun tp!2175463 () Bool)

(assert (=> b!7494184 (= e!4468558 (and tp_is_empty!49577 tp!2175463))))

(declare-fun b!7494185 () Bool)

(declare-fun e!4468560 () Bool)

(assert (=> b!7494185 (= e!4468560 tp_is_empty!49577)))

(declare-fun b!7494186 () Bool)

(declare-fun tp!2175469 () Bool)

(declare-fun tp!2175456 () Bool)

(assert (=> b!7494186 (= e!4468560 (and tp!2175469 tp!2175456))))

(declare-fun b!7494187 () Bool)

(declare-fun tp!2175455 () Bool)

(declare-fun tp!2175460 () Bool)

(assert (=> b!7494187 (= e!4468556 (and tp!2175455 tp!2175460))))

(declare-fun b!7494188 () Bool)

(declare-fun e!4468557 () Bool)

(declare-fun tp!2175457 () Bool)

(declare-fun tp!2175468 () Bool)

(assert (=> b!7494188 (= e!4468557 (and tp!2175457 tp!2175468))))

(declare-fun b!7494189 () Bool)

(declare-fun tp!2175464 () Bool)

(assert (=> b!7494189 (= e!4468557 tp!2175464)))

(declare-fun b!7494190 () Bool)

(declare-fun tp!2175466 () Bool)

(assert (=> b!7494190 (= e!4468560 tp!2175466)))

(declare-fun b!7494191 () Bool)

(declare-fun e!4468559 () Bool)

(declare-fun e!4468555 () Bool)

(assert (=> b!7494191 (= e!4468559 (not e!4468555))))

(declare-fun res!3006128 () Bool)

(assert (=> b!7494191 (=> res!3006128 e!4468555)))

(declare-fun lt!2630166 () Bool)

(assert (=> b!7494191 (= res!3006128 lt!2630166)))

(declare-fun lt!2630172 () Bool)

(declare-datatypes ((C!39562 0))(
  ( (C!39563 (val!30179 Int)) )
))
(declare-datatypes ((Regex!19644 0))(
  ( (ElementMatch!19644 (c!1383673 C!39562)) (Concat!28489 (regOne!39800 Regex!19644) (regTwo!39800 Regex!19644)) (EmptyExpr!19644) (Star!19644 (reg!19973 Regex!19644)) (EmptyLang!19644) (Union!19644 (regOne!39801 Regex!19644) (regTwo!39801 Regex!19644)) )
))
(declare-fun lt!2630169 () Regex!19644)

(declare-datatypes ((List!72358 0))(
  ( (Nil!72234) (Cons!72234 (h!78682 C!39562) (t!386927 List!72358)) )
))
(declare-fun s!13591 () List!72358)

(declare-fun matchRSpec!4321 (Regex!19644 List!72358) Bool)

(assert (=> b!7494191 (= lt!2630172 (matchRSpec!4321 lt!2630169 s!13591))))

(declare-fun matchR!9406 (Regex!19644 List!72358) Bool)

(assert (=> b!7494191 (= lt!2630172 (matchR!9406 lt!2630169 s!13591))))

(declare-datatypes ((Unit!166119 0))(
  ( (Unit!166120) )
))
(declare-fun lt!2630168 () Unit!166119)

(declare-fun mainMatchTheorem!4315 (Regex!19644 List!72358) Unit!166119)

(assert (=> b!7494191 (= lt!2630168 (mainMatchTheorem!4315 lt!2630169 s!13591))))

(declare-fun lt!2630171 () Regex!19644)

(assert (=> b!7494191 (= lt!2630166 (matchRSpec!4321 lt!2630171 s!13591))))

(assert (=> b!7494191 (= lt!2630166 (matchR!9406 lt!2630171 s!13591))))

(declare-fun lt!2630170 () Unit!166119)

(assert (=> b!7494191 (= lt!2630170 (mainMatchTheorem!4315 lt!2630171 s!13591))))

(declare-fun lt!2630160 () Regex!19644)

(declare-fun lt!2630167 () Regex!19644)

(assert (=> b!7494191 (= lt!2630169 (Union!19644 lt!2630160 lt!2630167))))

(declare-fun r2!5783 () Regex!19644)

(declare-fun rTail!78 () Regex!19644)

(assert (=> b!7494191 (= lt!2630167 (Concat!28489 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19644)

(assert (=> b!7494191 (= lt!2630160 (Concat!28489 r1!5845 rTail!78))))

(declare-fun lt!2630165 () Regex!19644)

(assert (=> b!7494191 (= lt!2630171 (Concat!28489 lt!2630165 rTail!78))))

(assert (=> b!7494191 (= lt!2630165 (Union!19644 r1!5845 r2!5783))))

(declare-fun res!3006127 () Bool)

(assert (=> start!725352 (=> (not res!3006127) (not e!4468559))))

(declare-fun validRegex!10158 (Regex!19644) Bool)

(assert (=> start!725352 (= res!3006127 (validRegex!10158 r1!5845))))

(assert (=> start!725352 e!4468559))

(assert (=> start!725352 e!4468556))

(assert (=> start!725352 e!4468560))

(assert (=> start!725352 e!4468557))

(assert (=> start!725352 e!4468558))

(declare-fun b!7494192 () Bool)

(declare-fun res!3006125 () Bool)

(assert (=> b!7494192 (=> (not res!3006125) (not e!4468559))))

(assert (=> b!7494192 (= res!3006125 (validRegex!10158 r2!5783))))

(declare-fun b!7494193 () Bool)

(declare-fun tp!2175454 () Bool)

(declare-fun tp!2175462 () Bool)

(assert (=> b!7494193 (= e!4468560 (and tp!2175454 tp!2175462))))

(declare-fun e!4468561 () Bool)

(assert (=> b!7494194 (= e!4468555 e!4468561)))

(declare-fun res!3006126 () Bool)

(assert (=> b!7494194 (=> res!3006126 e!4468561)))

(declare-fun lt!2630162 () Bool)

(assert (=> b!7494194 (= res!3006126 (or lt!2630162 (not lt!2630172)))))

(declare-fun Exists!4261 (Int) Bool)

(assert (=> b!7494194 (= (Exists!4261 lambda!464324) (Exists!4261 lambda!464325))))

(declare-fun lt!2630163 () Unit!166119)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2585 (Regex!19644 Regex!19644 List!72358) Unit!166119)

(assert (=> b!7494194 (= lt!2630163 (lemmaExistCutMatchRandMatchRSpecEquivalent!2585 lt!2630165 rTail!78 s!13591))))

(assert (=> b!7494194 (= lt!2630162 (Exists!4261 lambda!464324))))

(declare-datatypes ((tuple2!68722 0))(
  ( (tuple2!68723 (_1!37664 List!72358) (_2!37664 List!72358)) )
))
(declare-datatypes ((Option!17193 0))(
  ( (None!17192) (Some!17192 (v!54321 tuple2!68722)) )
))
(declare-fun isDefined!13882 (Option!17193) Bool)

(declare-fun findConcatSeparation!3315 (Regex!19644 Regex!19644 List!72358 List!72358 List!72358) Option!17193)

(assert (=> b!7494194 (= lt!2630162 (isDefined!13882 (findConcatSeparation!3315 lt!2630165 rTail!78 Nil!72234 s!13591 s!13591)))))

(declare-fun lt!2630164 () Unit!166119)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3073 (Regex!19644 Regex!19644 List!72358) Unit!166119)

(assert (=> b!7494194 (= lt!2630164 (lemmaFindConcatSeparationEquivalentToExists!3073 lt!2630165 rTail!78 s!13591))))

(declare-fun b!7494195 () Bool)

(assert (=> b!7494195 (= e!4468561 (validRegex!10158 lt!2630167))))

(assert (=> b!7494195 (= (matchR!9406 lt!2630160 s!13591) (matchRSpec!4321 lt!2630160 s!13591))))

(declare-fun lt!2630161 () Unit!166119)

(assert (=> b!7494195 (= lt!2630161 (mainMatchTheorem!4315 lt!2630160 s!13591))))

(declare-fun b!7494196 () Bool)

(declare-fun res!3006129 () Bool)

(assert (=> b!7494196 (=> (not res!3006129) (not e!4468559))))

(assert (=> b!7494196 (= res!3006129 (validRegex!10158 rTail!78))))

(declare-fun b!7494197 () Bool)

(assert (=> b!7494197 (= e!4468556 tp_is_empty!49577)))

(declare-fun b!7494198 () Bool)

(declare-fun tp!2175458 () Bool)

(declare-fun tp!2175459 () Bool)

(assert (=> b!7494198 (= e!4468557 (and tp!2175458 tp!2175459))))

(declare-fun b!7494199 () Bool)

(assert (=> b!7494199 (= e!4468557 tp_is_empty!49577)))

(assert (= (and start!725352 res!3006127) b!7494192))

(assert (= (and b!7494192 res!3006125) b!7494196))

(assert (= (and b!7494196 res!3006129) b!7494191))

(assert (= (and b!7494191 (not res!3006128)) b!7494194))

(assert (= (and b!7494194 (not res!3006126)) b!7494195))

(assert (= (and start!725352 (is-ElementMatch!19644 r1!5845)) b!7494197))

(assert (= (and start!725352 (is-Concat!28489 r1!5845)) b!7494182))

(assert (= (and start!725352 (is-Star!19644 r1!5845)) b!7494183))

(assert (= (and start!725352 (is-Union!19644 r1!5845)) b!7494187))

(assert (= (and start!725352 (is-ElementMatch!19644 r2!5783)) b!7494185))

(assert (= (and start!725352 (is-Concat!28489 r2!5783)) b!7494186))

(assert (= (and start!725352 (is-Star!19644 r2!5783)) b!7494190))

(assert (= (and start!725352 (is-Union!19644 r2!5783)) b!7494193))

(assert (= (and start!725352 (is-ElementMatch!19644 rTail!78)) b!7494199))

(assert (= (and start!725352 (is-Concat!28489 rTail!78)) b!7494188))

(assert (= (and start!725352 (is-Star!19644 rTail!78)) b!7494189))

(assert (= (and start!725352 (is-Union!19644 rTail!78)) b!7494198))

(assert (= (and start!725352 (is-Cons!72234 s!13591)) b!7494184))

(declare-fun m!8078880 () Bool)

(assert (=> b!7494191 m!8078880))

(declare-fun m!8078882 () Bool)

(assert (=> b!7494191 m!8078882))

(declare-fun m!8078884 () Bool)

(assert (=> b!7494191 m!8078884))

(declare-fun m!8078886 () Bool)

(assert (=> b!7494191 m!8078886))

(declare-fun m!8078888 () Bool)

(assert (=> b!7494191 m!8078888))

(declare-fun m!8078890 () Bool)

(assert (=> b!7494191 m!8078890))

(declare-fun m!8078892 () Bool)

(assert (=> start!725352 m!8078892))

(declare-fun m!8078894 () Bool)

(assert (=> b!7494194 m!8078894))

(assert (=> b!7494194 m!8078894))

(declare-fun m!8078896 () Bool)

(assert (=> b!7494194 m!8078896))

(declare-fun m!8078898 () Bool)

(assert (=> b!7494194 m!8078898))

(declare-fun m!8078900 () Bool)

(assert (=> b!7494194 m!8078900))

(declare-fun m!8078902 () Bool)

(assert (=> b!7494194 m!8078902))

(declare-fun m!8078904 () Bool)

(assert (=> b!7494194 m!8078904))

(assert (=> b!7494194 m!8078900))

(declare-fun m!8078906 () Bool)

(assert (=> b!7494195 m!8078906))

(declare-fun m!8078908 () Bool)

(assert (=> b!7494195 m!8078908))

(declare-fun m!8078910 () Bool)

(assert (=> b!7494195 m!8078910))

(declare-fun m!8078912 () Bool)

(assert (=> b!7494195 m!8078912))

(declare-fun m!8078914 () Bool)

(assert (=> b!7494192 m!8078914))

(declare-fun m!8078916 () Bool)

(assert (=> b!7494196 m!8078916))

(push 1)

(assert (not b!7494188))

(assert (not b!7494198))

(assert (not b!7494189))

(assert (not b!7494182))

(assert (not b!7494184))

(assert (not b!7494194))

(assert (not b!7494186))

(assert (not b!7494192))

(assert (not b!7494190))

(assert (not b!7494187))

(assert (not start!725352))

(assert (not b!7494196))

(assert tp_is_empty!49577)

(assert (not b!7494183))

(assert (not b!7494193))

(assert (not b!7494191))

(assert (not b!7494195))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2301568 () Bool)

(declare-fun choose!57928 (Int) Bool)

(assert (=> d!2301568 (= (Exists!4261 lambda!464325) (choose!57928 lambda!464325))))

(declare-fun bs!1935510 () Bool)

(assert (= bs!1935510 d!2301568))

(declare-fun m!8078956 () Bool)

(assert (=> bs!1935510 m!8078956))

(assert (=> b!7494194 d!2301568))

(declare-fun d!2301570 () Bool)

(assert (=> d!2301570 (= (Exists!4261 lambda!464324) (choose!57928 lambda!464324))))

(declare-fun bs!1935511 () Bool)

(assert (= bs!1935511 d!2301570))

(declare-fun m!8078958 () Bool)

(assert (=> bs!1935511 m!8078958))

(assert (=> b!7494194 d!2301570))

(declare-fun d!2301572 () Bool)

(declare-fun isEmpty!41265 (Option!17193) Bool)

(assert (=> d!2301572 (= (isDefined!13882 (findConcatSeparation!3315 lt!2630165 rTail!78 Nil!72234 s!13591 s!13591)) (not (isEmpty!41265 (findConcatSeparation!3315 lt!2630165 rTail!78 Nil!72234 s!13591 s!13591))))))

(declare-fun bs!1935512 () Bool)

(assert (= bs!1935512 d!2301572))

(assert (=> bs!1935512 m!8078894))

(declare-fun m!8078960 () Bool)

(assert (=> bs!1935512 m!8078960))

(assert (=> b!7494194 d!2301572))

(declare-fun bs!1935513 () Bool)

(declare-fun d!2301574 () Bool)

(assert (= bs!1935513 (and d!2301574 b!7494194)))

(declare-fun lambda!464338 () Int)

(assert (=> bs!1935513 (= lambda!464338 lambda!464324)))

(assert (=> bs!1935513 (not (= lambda!464338 lambda!464325))))

(assert (=> d!2301574 true))

(assert (=> d!2301574 true))

(assert (=> d!2301574 true))

(declare-fun lambda!464339 () Int)

(assert (=> bs!1935513 (not (= lambda!464339 lambda!464324))))

(assert (=> bs!1935513 (= lambda!464339 lambda!464325)))

(declare-fun bs!1935514 () Bool)

(assert (= bs!1935514 d!2301574))

(assert (=> bs!1935514 (not (= lambda!464339 lambda!464338))))

(assert (=> d!2301574 true))

(assert (=> d!2301574 true))

(assert (=> d!2301574 true))

(assert (=> d!2301574 (= (Exists!4261 lambda!464338) (Exists!4261 lambda!464339))))

(declare-fun lt!2630214 () Unit!166119)

(declare-fun choose!57929 (Regex!19644 Regex!19644 List!72358) Unit!166119)

(assert (=> d!2301574 (= lt!2630214 (choose!57929 lt!2630165 rTail!78 s!13591))))

(assert (=> d!2301574 (validRegex!10158 lt!2630165)))

(assert (=> d!2301574 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2585 lt!2630165 rTail!78 s!13591) lt!2630214)))

(declare-fun m!8078962 () Bool)

(assert (=> bs!1935514 m!8078962))

(declare-fun m!8078964 () Bool)

(assert (=> bs!1935514 m!8078964))

(declare-fun m!8078966 () Bool)

(assert (=> bs!1935514 m!8078966))

(declare-fun m!8078968 () Bool)

(assert (=> bs!1935514 m!8078968))

(assert (=> b!7494194 d!2301574))

(declare-fun bs!1935515 () Bool)

(declare-fun d!2301576 () Bool)

(assert (= bs!1935515 (and d!2301576 b!7494194)))

(declare-fun lambda!464342 () Int)

(assert (=> bs!1935515 (= lambda!464342 lambda!464324)))

(assert (=> bs!1935515 (not (= lambda!464342 lambda!464325))))

(declare-fun bs!1935516 () Bool)

(assert (= bs!1935516 (and d!2301576 d!2301574)))

(assert (=> bs!1935516 (= lambda!464342 lambda!464338)))

(assert (=> bs!1935516 (not (= lambda!464342 lambda!464339))))

(assert (=> d!2301576 true))

(assert (=> d!2301576 true))

(assert (=> d!2301576 true))

(assert (=> d!2301576 (= (isDefined!13882 (findConcatSeparation!3315 lt!2630165 rTail!78 Nil!72234 s!13591 s!13591)) (Exists!4261 lambda!464342))))

(declare-fun lt!2630217 () Unit!166119)

(declare-fun choose!57930 (Regex!19644 Regex!19644 List!72358) Unit!166119)

(assert (=> d!2301576 (= lt!2630217 (choose!57930 lt!2630165 rTail!78 s!13591))))

(assert (=> d!2301576 (validRegex!10158 lt!2630165)))

(assert (=> d!2301576 (= (lemmaFindConcatSeparationEquivalentToExists!3073 lt!2630165 rTail!78 s!13591) lt!2630217)))

(declare-fun bs!1935517 () Bool)

(assert (= bs!1935517 d!2301576))

(declare-fun m!8078970 () Bool)

(assert (=> bs!1935517 m!8078970))

(assert (=> bs!1935517 m!8078894))

(assert (=> bs!1935517 m!8078896))

(assert (=> bs!1935517 m!8078968))

(declare-fun m!8078972 () Bool)

(assert (=> bs!1935517 m!8078972))

(assert (=> bs!1935517 m!8078894))

(assert (=> b!7494194 d!2301576))

(declare-fun b!7494326 () Bool)

(declare-fun e!4468621 () Bool)

(assert (=> b!7494326 (= e!4468621 (matchR!9406 rTail!78 s!13591))))

(declare-fun b!7494327 () Bool)

(declare-fun res!3006186 () Bool)

(declare-fun e!4468622 () Bool)

(assert (=> b!7494327 (=> (not res!3006186) (not e!4468622))))

(declare-fun lt!2630228 () Option!17193)

(declare-fun get!25322 (Option!17193) tuple2!68722)

(assert (=> b!7494327 (= res!3006186 (matchR!9406 rTail!78 (_2!37664 (get!25322 lt!2630228))))))

(declare-fun b!7494328 () Bool)

(declare-fun res!3006187 () Bool)

(assert (=> b!7494328 (=> (not res!3006187) (not e!4468622))))

(assert (=> b!7494328 (= res!3006187 (matchR!9406 lt!2630165 (_1!37664 (get!25322 lt!2630228))))))

(declare-fun b!7494329 () Bool)

(declare-fun lt!2630229 () Unit!166119)

(declare-fun lt!2630227 () Unit!166119)

(assert (=> b!7494329 (= lt!2630229 lt!2630227)))

(declare-fun ++!17250 (List!72358 List!72358) List!72358)

(assert (=> b!7494329 (= (++!17250 (++!17250 Nil!72234 (Cons!72234 (h!78682 s!13591) Nil!72234)) (t!386927 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3124 (List!72358 C!39562 List!72358 List!72358) Unit!166119)

(assert (=> b!7494329 (= lt!2630227 (lemmaMoveElementToOtherListKeepsConcatEq!3124 Nil!72234 (h!78682 s!13591) (t!386927 s!13591) s!13591))))

(declare-fun e!4468623 () Option!17193)

(assert (=> b!7494329 (= e!4468623 (findConcatSeparation!3315 lt!2630165 rTail!78 (++!17250 Nil!72234 (Cons!72234 (h!78682 s!13591) Nil!72234)) (t!386927 s!13591) s!13591))))

(declare-fun b!7494331 () Bool)

(assert (=> b!7494331 (= e!4468622 (= (++!17250 (_1!37664 (get!25322 lt!2630228)) (_2!37664 (get!25322 lt!2630228))) s!13591))))

(declare-fun b!7494332 () Bool)

(declare-fun e!4468620 () Option!17193)

(assert (=> b!7494332 (= e!4468620 e!4468623)))

(declare-fun c!1383688 () Bool)

(assert (=> b!7494332 (= c!1383688 (is-Nil!72234 s!13591))))

(declare-fun b!7494333 () Bool)

(assert (=> b!7494333 (= e!4468620 (Some!17192 (tuple2!68723 Nil!72234 s!13591)))))

(declare-fun b!7494334 () Bool)

(declare-fun e!4468619 () Bool)

(assert (=> b!7494334 (= e!4468619 (not (isDefined!13882 lt!2630228)))))

(declare-fun b!7494330 () Bool)

(assert (=> b!7494330 (= e!4468623 None!17192)))

(declare-fun d!2301580 () Bool)

(assert (=> d!2301580 e!4468619))

(declare-fun res!3006188 () Bool)

(assert (=> d!2301580 (=> res!3006188 e!4468619)))

(assert (=> d!2301580 (= res!3006188 e!4468622)))

(declare-fun res!3006185 () Bool)

(assert (=> d!2301580 (=> (not res!3006185) (not e!4468622))))

(assert (=> d!2301580 (= res!3006185 (isDefined!13882 lt!2630228))))

(assert (=> d!2301580 (= lt!2630228 e!4468620)))

(declare-fun c!1383687 () Bool)

(assert (=> d!2301580 (= c!1383687 e!4468621)))

(declare-fun res!3006189 () Bool)

(assert (=> d!2301580 (=> (not res!3006189) (not e!4468621))))

(assert (=> d!2301580 (= res!3006189 (matchR!9406 lt!2630165 Nil!72234))))

(assert (=> d!2301580 (validRegex!10158 lt!2630165)))

(assert (=> d!2301580 (= (findConcatSeparation!3315 lt!2630165 rTail!78 Nil!72234 s!13591 s!13591) lt!2630228)))

(assert (= (and d!2301580 res!3006189) b!7494326))

(assert (= (and d!2301580 c!1383687) b!7494333))

(assert (= (and d!2301580 (not c!1383687)) b!7494332))

(assert (= (and b!7494332 c!1383688) b!7494330))

(assert (= (and b!7494332 (not c!1383688)) b!7494329))

(assert (= (and d!2301580 res!3006185) b!7494328))

(assert (= (and b!7494328 res!3006187) b!7494327))

(assert (= (and b!7494327 res!3006186) b!7494331))

(assert (= (and d!2301580 (not res!3006188)) b!7494334))

(declare-fun m!8078978 () Bool)

(assert (=> b!7494331 m!8078978))

(declare-fun m!8078980 () Bool)

(assert (=> b!7494331 m!8078980))

(declare-fun m!8078982 () Bool)

(assert (=> b!7494326 m!8078982))

(assert (=> b!7494327 m!8078978))

(declare-fun m!8078984 () Bool)

(assert (=> b!7494327 m!8078984))

(assert (=> b!7494328 m!8078978))

(declare-fun m!8078986 () Bool)

(assert (=> b!7494328 m!8078986))

(declare-fun m!8078988 () Bool)

(assert (=> d!2301580 m!8078988))

(declare-fun m!8078990 () Bool)

(assert (=> d!2301580 m!8078990))

(assert (=> d!2301580 m!8078968))

(declare-fun m!8078992 () Bool)

(assert (=> b!7494329 m!8078992))

(assert (=> b!7494329 m!8078992))

(declare-fun m!8078994 () Bool)

(assert (=> b!7494329 m!8078994))

(declare-fun m!8078996 () Bool)

(assert (=> b!7494329 m!8078996))

(assert (=> b!7494329 m!8078992))

(declare-fun m!8078998 () Bool)

(assert (=> b!7494329 m!8078998))

(assert (=> b!7494334 m!8078988))

(assert (=> b!7494194 d!2301580))

(declare-fun bm!687972 () Bool)

(declare-fun call!687978 () Bool)

(declare-fun c!1383693 () Bool)

(assert (=> bm!687972 (= call!687978 (validRegex!10158 (ite c!1383693 (regOne!39801 r1!5845) (regOne!39800 r1!5845))))))

(declare-fun bm!687973 () Bool)

(declare-fun call!687977 () Bool)

(declare-fun call!687979 () Bool)

(assert (=> bm!687973 (= call!687977 call!687979)))

(declare-fun b!7494359 () Bool)

(declare-fun e!4468644 () Bool)

(assert (=> b!7494359 (= e!4468644 call!687977)))

(declare-fun b!7494360 () Bool)

(declare-fun e!4468643 () Bool)

(declare-fun e!4468640 () Bool)

(assert (=> b!7494360 (= e!4468643 e!4468640)))

(assert (=> b!7494360 (= c!1383693 (is-Union!19644 r1!5845))))

(declare-fun b!7494361 () Bool)

(declare-fun e!4468642 () Bool)

(assert (=> b!7494361 (= e!4468642 call!687979)))

(declare-fun b!7494362 () Bool)

(declare-fun e!4468641 () Bool)

(assert (=> b!7494362 (= e!4468641 call!687977)))

(declare-fun d!2301584 () Bool)

(declare-fun res!3006208 () Bool)

(declare-fun e!4468645 () Bool)

(assert (=> d!2301584 (=> res!3006208 e!4468645)))

(assert (=> d!2301584 (= res!3006208 (is-ElementMatch!19644 r1!5845))))

(assert (=> d!2301584 (= (validRegex!10158 r1!5845) e!4468645)))

(declare-fun b!7494363 () Bool)

(declare-fun res!3006207 () Bool)

(declare-fun e!4468646 () Bool)

(assert (=> b!7494363 (=> res!3006207 e!4468646)))

(assert (=> b!7494363 (= res!3006207 (not (is-Concat!28489 r1!5845)))))

(assert (=> b!7494363 (= e!4468640 e!4468646)))

(declare-fun b!7494364 () Bool)

(assert (=> b!7494364 (= e!4468645 e!4468643)))

(declare-fun c!1383694 () Bool)

(assert (=> b!7494364 (= c!1383694 (is-Star!19644 r1!5845))))

(declare-fun bm!687974 () Bool)

(assert (=> bm!687974 (= call!687979 (validRegex!10158 (ite c!1383694 (reg!19973 r1!5845) (ite c!1383693 (regTwo!39801 r1!5845) (regTwo!39800 r1!5845)))))))

(declare-fun b!7494365 () Bool)

(assert (=> b!7494365 (= e!4468643 e!4468642)))

(declare-fun res!3006206 () Bool)

(declare-fun nullable!8580 (Regex!19644) Bool)

(assert (=> b!7494365 (= res!3006206 (not (nullable!8580 (reg!19973 r1!5845))))))

(assert (=> b!7494365 (=> (not res!3006206) (not e!4468642))))

(declare-fun b!7494366 () Bool)

(assert (=> b!7494366 (= e!4468646 e!4468644)))

(declare-fun res!3006210 () Bool)

(assert (=> b!7494366 (=> (not res!3006210) (not e!4468644))))

(assert (=> b!7494366 (= res!3006210 call!687978)))

(declare-fun b!7494367 () Bool)

(declare-fun res!3006209 () Bool)

(assert (=> b!7494367 (=> (not res!3006209) (not e!4468641))))

(assert (=> b!7494367 (= res!3006209 call!687978)))

(assert (=> b!7494367 (= e!4468640 e!4468641)))

(assert (= (and d!2301584 (not res!3006208)) b!7494364))

(assert (= (and b!7494364 c!1383694) b!7494365))

(assert (= (and b!7494364 (not c!1383694)) b!7494360))

(assert (= (and b!7494365 res!3006206) b!7494361))

(assert (= (and b!7494360 c!1383693) b!7494367))

(assert (= (and b!7494360 (not c!1383693)) b!7494363))

(assert (= (and b!7494367 res!3006209) b!7494362))

(assert (= (and b!7494363 (not res!3006207)) b!7494366))

(assert (= (and b!7494366 res!3006210) b!7494359))

(assert (= (or b!7494362 b!7494359) bm!687973))

(assert (= (or b!7494367 b!7494366) bm!687972))

(assert (= (or b!7494361 bm!687973) bm!687974))

(declare-fun m!8079000 () Bool)

(assert (=> bm!687972 m!8079000))

(declare-fun m!8079002 () Bool)

(assert (=> bm!687974 m!8079002))

(declare-fun m!8079004 () Bool)

(assert (=> b!7494365 m!8079004))

(assert (=> start!725352 d!2301584))

(declare-fun bm!687975 () Bool)

(declare-fun call!687981 () Bool)

(declare-fun c!1383695 () Bool)

(assert (=> bm!687975 (= call!687981 (validRegex!10158 (ite c!1383695 (regOne!39801 r2!5783) (regOne!39800 r2!5783))))))

(declare-fun bm!687976 () Bool)

(declare-fun call!687980 () Bool)

(declare-fun call!687982 () Bool)

(assert (=> bm!687976 (= call!687980 call!687982)))

(declare-fun b!7494368 () Bool)

(declare-fun e!4468651 () Bool)

(assert (=> b!7494368 (= e!4468651 call!687980)))

(declare-fun b!7494369 () Bool)

(declare-fun e!4468650 () Bool)

(declare-fun e!4468647 () Bool)

(assert (=> b!7494369 (= e!4468650 e!4468647)))

(assert (=> b!7494369 (= c!1383695 (is-Union!19644 r2!5783))))

(declare-fun b!7494370 () Bool)

(declare-fun e!4468649 () Bool)

(assert (=> b!7494370 (= e!4468649 call!687982)))

(declare-fun b!7494371 () Bool)

(declare-fun e!4468648 () Bool)

(assert (=> b!7494371 (= e!4468648 call!687980)))

(declare-fun d!2301586 () Bool)

(declare-fun res!3006213 () Bool)

(declare-fun e!4468652 () Bool)

(assert (=> d!2301586 (=> res!3006213 e!4468652)))

(assert (=> d!2301586 (= res!3006213 (is-ElementMatch!19644 r2!5783))))

(assert (=> d!2301586 (= (validRegex!10158 r2!5783) e!4468652)))

(declare-fun b!7494372 () Bool)

(declare-fun res!3006212 () Bool)

(declare-fun e!4468653 () Bool)

(assert (=> b!7494372 (=> res!3006212 e!4468653)))

(assert (=> b!7494372 (= res!3006212 (not (is-Concat!28489 r2!5783)))))

(assert (=> b!7494372 (= e!4468647 e!4468653)))

(declare-fun b!7494373 () Bool)

(assert (=> b!7494373 (= e!4468652 e!4468650)))

(declare-fun c!1383696 () Bool)

(assert (=> b!7494373 (= c!1383696 (is-Star!19644 r2!5783))))

(declare-fun bm!687977 () Bool)

(assert (=> bm!687977 (= call!687982 (validRegex!10158 (ite c!1383696 (reg!19973 r2!5783) (ite c!1383695 (regTwo!39801 r2!5783) (regTwo!39800 r2!5783)))))))

(declare-fun b!7494374 () Bool)

(assert (=> b!7494374 (= e!4468650 e!4468649)))

(declare-fun res!3006211 () Bool)

(assert (=> b!7494374 (= res!3006211 (not (nullable!8580 (reg!19973 r2!5783))))))

(assert (=> b!7494374 (=> (not res!3006211) (not e!4468649))))

(declare-fun b!7494375 () Bool)

(assert (=> b!7494375 (= e!4468653 e!4468651)))

(declare-fun res!3006215 () Bool)

(assert (=> b!7494375 (=> (not res!3006215) (not e!4468651))))

(assert (=> b!7494375 (= res!3006215 call!687981)))

(declare-fun b!7494376 () Bool)

(declare-fun res!3006214 () Bool)

(assert (=> b!7494376 (=> (not res!3006214) (not e!4468648))))

(assert (=> b!7494376 (= res!3006214 call!687981)))

(assert (=> b!7494376 (= e!4468647 e!4468648)))

(assert (= (and d!2301586 (not res!3006213)) b!7494373))

(assert (= (and b!7494373 c!1383696) b!7494374))

(assert (= (and b!7494373 (not c!1383696)) b!7494369))

(assert (= (and b!7494374 res!3006211) b!7494370))

(assert (= (and b!7494369 c!1383695) b!7494376))

(assert (= (and b!7494369 (not c!1383695)) b!7494372))

(assert (= (and b!7494376 res!3006214) b!7494371))

(assert (= (and b!7494372 (not res!3006212)) b!7494375))

(assert (= (and b!7494375 res!3006215) b!7494368))

(assert (= (or b!7494371 b!7494368) bm!687976))

(assert (= (or b!7494376 b!7494375) bm!687975))

(assert (= (or b!7494370 bm!687976) bm!687977))

(declare-fun m!8079006 () Bool)

(assert (=> bm!687975 m!8079006))

(declare-fun m!8079008 () Bool)

(assert (=> bm!687977 m!8079008))

(declare-fun m!8079010 () Bool)

(assert (=> b!7494374 m!8079010))

(assert (=> b!7494192 d!2301586))

(declare-fun bm!687978 () Bool)

(declare-fun call!687984 () Bool)

(declare-fun c!1383697 () Bool)

(assert (=> bm!687978 (= call!687984 (validRegex!10158 (ite c!1383697 (regOne!39801 rTail!78) (regOne!39800 rTail!78))))))

(declare-fun bm!687979 () Bool)

(declare-fun call!687983 () Bool)

(declare-fun call!687985 () Bool)

(assert (=> bm!687979 (= call!687983 call!687985)))

(declare-fun b!7494377 () Bool)

(declare-fun e!4468660 () Bool)

(assert (=> b!7494377 (= e!4468660 call!687983)))

(declare-fun b!7494378 () Bool)

(declare-fun e!4468659 () Bool)

(declare-fun e!4468656 () Bool)

(assert (=> b!7494378 (= e!4468659 e!4468656)))

(assert (=> b!7494378 (= c!1383697 (is-Union!19644 rTail!78))))

(declare-fun b!7494379 () Bool)

(declare-fun e!4468658 () Bool)

(assert (=> b!7494379 (= e!4468658 call!687985)))

(declare-fun b!7494380 () Bool)

(declare-fun e!4468657 () Bool)

(assert (=> b!7494380 (= e!4468657 call!687983)))

(declare-fun d!2301588 () Bool)

(declare-fun res!3006220 () Bool)

(declare-fun e!4468661 () Bool)

(assert (=> d!2301588 (=> res!3006220 e!4468661)))

(assert (=> d!2301588 (= res!3006220 (is-ElementMatch!19644 rTail!78))))

(assert (=> d!2301588 (= (validRegex!10158 rTail!78) e!4468661)))

(declare-fun b!7494381 () Bool)

(declare-fun res!3006219 () Bool)

(declare-fun e!4468662 () Bool)

(assert (=> b!7494381 (=> res!3006219 e!4468662)))

(assert (=> b!7494381 (= res!3006219 (not (is-Concat!28489 rTail!78)))))

(assert (=> b!7494381 (= e!4468656 e!4468662)))

(declare-fun b!7494382 () Bool)

(assert (=> b!7494382 (= e!4468661 e!4468659)))

(declare-fun c!1383698 () Bool)

(assert (=> b!7494382 (= c!1383698 (is-Star!19644 rTail!78))))

(declare-fun bm!687980 () Bool)

(assert (=> bm!687980 (= call!687985 (validRegex!10158 (ite c!1383698 (reg!19973 rTail!78) (ite c!1383697 (regTwo!39801 rTail!78) (regTwo!39800 rTail!78)))))))

(declare-fun b!7494383 () Bool)

(assert (=> b!7494383 (= e!4468659 e!4468658)))

(declare-fun res!3006218 () Bool)

(assert (=> b!7494383 (= res!3006218 (not (nullable!8580 (reg!19973 rTail!78))))))

(assert (=> b!7494383 (=> (not res!3006218) (not e!4468658))))

(declare-fun b!7494384 () Bool)

(assert (=> b!7494384 (= e!4468662 e!4468660)))

(declare-fun res!3006222 () Bool)

(assert (=> b!7494384 (=> (not res!3006222) (not e!4468660))))

(assert (=> b!7494384 (= res!3006222 call!687984)))

(declare-fun b!7494385 () Bool)

(declare-fun res!3006221 () Bool)

(assert (=> b!7494385 (=> (not res!3006221) (not e!4468657))))

(assert (=> b!7494385 (= res!3006221 call!687984)))

(assert (=> b!7494385 (= e!4468656 e!4468657)))

(assert (= (and d!2301588 (not res!3006220)) b!7494382))

(assert (= (and b!7494382 c!1383698) b!7494383))

(assert (= (and b!7494382 (not c!1383698)) b!7494378))

(assert (= (and b!7494383 res!3006218) b!7494379))

(assert (= (and b!7494378 c!1383697) b!7494385))

(assert (= (and b!7494378 (not c!1383697)) b!7494381))

(assert (= (and b!7494385 res!3006221) b!7494380))

(assert (= (and b!7494381 (not res!3006219)) b!7494384))

(assert (= (and b!7494384 res!3006222) b!7494377))

(assert (= (or b!7494380 b!7494377) bm!687979))

(assert (= (or b!7494385 b!7494384) bm!687978))

(assert (= (or b!7494379 bm!687979) bm!687980))

(declare-fun m!8079012 () Bool)

(assert (=> bm!687978 m!8079012))

(declare-fun m!8079014 () Bool)

(assert (=> bm!687980 m!8079014))

(declare-fun m!8079016 () Bool)

(assert (=> b!7494383 m!8079016))

(assert (=> b!7494196 d!2301588))

(declare-fun bs!1935520 () Bool)

(declare-fun b!7494442 () Bool)

(assert (= bs!1935520 (and b!7494442 b!7494194)))

(declare-fun lambda!464352 () Int)

(assert (=> bs!1935520 (not (= lambda!464352 lambda!464324))))

(declare-fun bs!1935521 () Bool)

(assert (= bs!1935521 (and b!7494442 d!2301576)))

(assert (=> bs!1935521 (not (= lambda!464352 lambda!464342))))

(declare-fun bs!1935522 () Bool)

(assert (= bs!1935522 (and b!7494442 d!2301574)))

(assert (=> bs!1935522 (not (= lambda!464352 lambda!464339))))

(assert (=> bs!1935522 (not (= lambda!464352 lambda!464338))))

(assert (=> bs!1935520 (not (= lambda!464352 lambda!464325))))

(assert (=> b!7494442 true))

(assert (=> b!7494442 true))

(declare-fun bs!1935524 () Bool)

(declare-fun b!7494435 () Bool)

(assert (= bs!1935524 (and b!7494435 b!7494194)))

(declare-fun lambda!464354 () Int)

(assert (=> bs!1935524 (not (= lambda!464354 lambda!464324))))

(declare-fun bs!1935526 () Bool)

(assert (= bs!1935526 (and b!7494435 d!2301576)))

(assert (=> bs!1935526 (not (= lambda!464354 lambda!464342))))

(declare-fun bs!1935527 () Bool)

(assert (= bs!1935527 (and b!7494435 d!2301574)))

(assert (=> bs!1935527 (= (and (= (regOne!39800 lt!2630169) lt!2630165) (= (regTwo!39800 lt!2630169) rTail!78)) (= lambda!464354 lambda!464339))))

(assert (=> bs!1935527 (not (= lambda!464354 lambda!464338))))

(declare-fun bs!1935528 () Bool)

(assert (= bs!1935528 (and b!7494435 b!7494442)))

(assert (=> bs!1935528 (not (= lambda!464354 lambda!464352))))

(assert (=> bs!1935524 (= (and (= (regOne!39800 lt!2630169) lt!2630165) (= (regTwo!39800 lt!2630169) rTail!78)) (= lambda!464354 lambda!464325))))

(assert (=> b!7494435 true))

(assert (=> b!7494435 true))

(declare-fun b!7494433 () Bool)

(declare-fun c!1383711 () Bool)

(assert (=> b!7494433 (= c!1383711 (is-Union!19644 lt!2630169))))

(declare-fun e!4468693 () Bool)

(declare-fun e!4468691 () Bool)

(assert (=> b!7494433 (= e!4468693 e!4468691)))

(declare-fun bm!687991 () Bool)

(declare-fun c!1383714 () Bool)

(declare-fun call!687997 () Bool)

(assert (=> bm!687991 (= call!687997 (Exists!4261 (ite c!1383714 lambda!464352 lambda!464354)))))

(declare-fun b!7494434 () Bool)

(assert (=> b!7494434 (= e!4468693 (= s!13591 (Cons!72234 (c!1383673 lt!2630169) Nil!72234)))))

(declare-fun e!4468689 () Bool)

(assert (=> b!7494435 (= e!4468689 call!687997)))

(declare-fun b!7494436 () Bool)

(declare-fun e!4468694 () Bool)

(assert (=> b!7494436 (= e!4468694 (matchRSpec!4321 (regTwo!39801 lt!2630169) s!13591))))

(declare-fun b!7494437 () Bool)

(declare-fun e!4468688 () Bool)

(declare-fun e!4468690 () Bool)

(assert (=> b!7494437 (= e!4468688 e!4468690)))

(declare-fun res!3006246 () Bool)

(assert (=> b!7494437 (= res!3006246 (not (is-EmptyLang!19644 lt!2630169)))))

(assert (=> b!7494437 (=> (not res!3006246) (not e!4468690))))

(declare-fun b!7494438 () Bool)

(assert (=> b!7494438 (= e!4468691 e!4468694)))

(declare-fun res!3006245 () Bool)

(assert (=> b!7494438 (= res!3006245 (matchRSpec!4321 (regOne!39801 lt!2630169) s!13591))))

(assert (=> b!7494438 (=> res!3006245 e!4468694)))

(declare-fun d!2301590 () Bool)

(declare-fun c!1383712 () Bool)

(assert (=> d!2301590 (= c!1383712 (is-EmptyExpr!19644 lt!2630169))))

(assert (=> d!2301590 (= (matchRSpec!4321 lt!2630169 s!13591) e!4468688)))

(declare-fun b!7494439 () Bool)

(declare-fun call!687996 () Bool)

(assert (=> b!7494439 (= e!4468688 call!687996)))

(declare-fun b!7494440 () Bool)

(assert (=> b!7494440 (= e!4468691 e!4468689)))

(assert (=> b!7494440 (= c!1383714 (is-Star!19644 lt!2630169))))

(declare-fun b!7494441 () Bool)

(declare-fun res!3006244 () Bool)

(declare-fun e!4468692 () Bool)

(assert (=> b!7494441 (=> res!3006244 e!4468692)))

(assert (=> b!7494441 (= res!3006244 call!687996)))

(assert (=> b!7494441 (= e!4468689 e!4468692)))

(assert (=> b!7494442 (= e!4468692 call!687997)))

(declare-fun b!7494443 () Bool)

(declare-fun c!1383713 () Bool)

(assert (=> b!7494443 (= c!1383713 (is-ElementMatch!19644 lt!2630169))))

(assert (=> b!7494443 (= e!4468690 e!4468693)))

(declare-fun bm!687992 () Bool)

(declare-fun isEmpty!41266 (List!72358) Bool)

(assert (=> bm!687992 (= call!687996 (isEmpty!41266 s!13591))))

(assert (= (and d!2301590 c!1383712) b!7494439))

(assert (= (and d!2301590 (not c!1383712)) b!7494437))

(assert (= (and b!7494437 res!3006246) b!7494443))

(assert (= (and b!7494443 c!1383713) b!7494434))

(assert (= (and b!7494443 (not c!1383713)) b!7494433))

(assert (= (and b!7494433 c!1383711) b!7494438))

(assert (= (and b!7494433 (not c!1383711)) b!7494440))

(assert (= (and b!7494438 (not res!3006245)) b!7494436))

(assert (= (and b!7494440 c!1383714) b!7494441))

(assert (= (and b!7494440 (not c!1383714)) b!7494435))

(assert (= (and b!7494441 (not res!3006244)) b!7494442))

(assert (= (or b!7494442 b!7494435) bm!687991))

(assert (= (or b!7494439 b!7494441) bm!687992))

(declare-fun m!8079026 () Bool)

(assert (=> bm!687991 m!8079026))

(declare-fun m!8079028 () Bool)

(assert (=> b!7494436 m!8079028))

(declare-fun m!8079030 () Bool)

(assert (=> b!7494438 m!8079030))

(declare-fun m!8079032 () Bool)

(assert (=> bm!687992 m!8079032))

(assert (=> b!7494191 d!2301590))

(declare-fun d!2301594 () Bool)

(assert (=> d!2301594 (= (matchR!9406 lt!2630169 s!13591) (matchRSpec!4321 lt!2630169 s!13591))))

(declare-fun lt!2630233 () Unit!166119)

(declare-fun choose!57931 (Regex!19644 List!72358) Unit!166119)

(assert (=> d!2301594 (= lt!2630233 (choose!57931 lt!2630169 s!13591))))

(assert (=> d!2301594 (validRegex!10158 lt!2630169)))

(assert (=> d!2301594 (= (mainMatchTheorem!4315 lt!2630169 s!13591) lt!2630233)))

(declare-fun bs!1935530 () Bool)

(assert (= bs!1935530 d!2301594))

(assert (=> bs!1935530 m!8078888))

(assert (=> bs!1935530 m!8078890))

(declare-fun m!8079038 () Bool)

(assert (=> bs!1935530 m!8079038))

(declare-fun m!8079040 () Bool)

(assert (=> bs!1935530 m!8079040))

(assert (=> b!7494191 d!2301594))

(declare-fun b!7494500 () Bool)

(declare-fun e!4468725 () Bool)

(declare-fun e!4468729 () Bool)

(assert (=> b!7494500 (= e!4468725 e!4468729)))

(declare-fun c!1383727 () Bool)

(assert (=> b!7494500 (= c!1383727 (is-EmptyLang!19644 lt!2630171))))

(declare-fun b!7494501 () Bool)

(declare-fun lt!2630238 () Bool)

(declare-fun call!688000 () Bool)

(assert (=> b!7494501 (= e!4468725 (= lt!2630238 call!688000))))

(declare-fun b!7494503 () Bool)

(declare-fun e!4468728 () Bool)

(declare-fun head!15377 (List!72358) C!39562)

(assert (=> b!7494503 (= e!4468728 (= (head!15377 s!13591) (c!1383673 lt!2630171)))))

(declare-fun bm!687995 () Bool)

(assert (=> bm!687995 (= call!688000 (isEmpty!41266 s!13591))))

(declare-fun b!7494504 () Bool)

(declare-fun e!4468724 () Bool)

(assert (=> b!7494504 (= e!4468724 (not (= (head!15377 s!13591) (c!1383673 lt!2630171))))))

(declare-fun b!7494505 () Bool)

(declare-fun res!3006285 () Bool)

(assert (=> b!7494505 (=> res!3006285 e!4468724)))

(declare-fun tail!14946 (List!72358) List!72358)

(assert (=> b!7494505 (= res!3006285 (not (isEmpty!41266 (tail!14946 s!13591))))))

(declare-fun b!7494506 () Bool)

(assert (=> b!7494506 (= e!4468729 (not lt!2630238))))

(declare-fun b!7494507 () Bool)

(declare-fun res!3006284 () Bool)

(declare-fun e!4468727 () Bool)

(assert (=> b!7494507 (=> res!3006284 e!4468727)))

(assert (=> b!7494507 (= res!3006284 (not (is-ElementMatch!19644 lt!2630171)))))

(assert (=> b!7494507 (= e!4468729 e!4468727)))

(declare-fun b!7494508 () Bool)

(declare-fun e!4468723 () Bool)

(assert (=> b!7494508 (= e!4468723 e!4468724)))

(declare-fun res!3006282 () Bool)

(assert (=> b!7494508 (=> res!3006282 e!4468724)))

(assert (=> b!7494508 (= res!3006282 call!688000)))

(declare-fun b!7494509 () Bool)

(declare-fun res!3006283 () Bool)

(assert (=> b!7494509 (=> (not res!3006283) (not e!4468728))))

(assert (=> b!7494509 (= res!3006283 (not call!688000))))

(declare-fun d!2301598 () Bool)

(assert (=> d!2301598 e!4468725))

(declare-fun c!1383728 () Bool)

(assert (=> d!2301598 (= c!1383728 (is-EmptyExpr!19644 lt!2630171))))

(declare-fun e!4468726 () Bool)

(assert (=> d!2301598 (= lt!2630238 e!4468726)))

(declare-fun c!1383729 () Bool)

(assert (=> d!2301598 (= c!1383729 (isEmpty!41266 s!13591))))

(assert (=> d!2301598 (validRegex!10158 lt!2630171)))

(assert (=> d!2301598 (= (matchR!9406 lt!2630171 s!13591) lt!2630238)))

(declare-fun b!7494502 () Bool)

(declare-fun res!3006281 () Bool)

(assert (=> b!7494502 (=> (not res!3006281) (not e!4468728))))

(assert (=> b!7494502 (= res!3006281 (isEmpty!41266 (tail!14946 s!13591)))))

(declare-fun b!7494510 () Bool)

(declare-fun res!3006279 () Bool)

(assert (=> b!7494510 (=> res!3006279 e!4468727)))

(assert (=> b!7494510 (= res!3006279 e!4468728)))

(declare-fun res!3006286 () Bool)

(assert (=> b!7494510 (=> (not res!3006286) (not e!4468728))))

(assert (=> b!7494510 (= res!3006286 lt!2630238)))

(declare-fun b!7494511 () Bool)

(assert (=> b!7494511 (= e!4468727 e!4468723)))

(declare-fun res!3006280 () Bool)

(assert (=> b!7494511 (=> (not res!3006280) (not e!4468723))))

(assert (=> b!7494511 (= res!3006280 (not lt!2630238))))

(declare-fun b!7494512 () Bool)

(declare-fun derivativeStep!5637 (Regex!19644 C!39562) Regex!19644)

(assert (=> b!7494512 (= e!4468726 (matchR!9406 (derivativeStep!5637 lt!2630171 (head!15377 s!13591)) (tail!14946 s!13591)))))

(declare-fun b!7494513 () Bool)

(assert (=> b!7494513 (= e!4468726 (nullable!8580 lt!2630171))))

(assert (= (and d!2301598 c!1383729) b!7494513))

(assert (= (and d!2301598 (not c!1383729)) b!7494512))

(assert (= (and d!2301598 c!1383728) b!7494501))

(assert (= (and d!2301598 (not c!1383728)) b!7494500))

(assert (= (and b!7494500 c!1383727) b!7494506))

(assert (= (and b!7494500 (not c!1383727)) b!7494507))

(assert (= (and b!7494507 (not res!3006284)) b!7494510))

(assert (= (and b!7494510 res!3006286) b!7494509))

(assert (= (and b!7494509 res!3006283) b!7494502))

(assert (= (and b!7494502 res!3006281) b!7494503))

(assert (= (and b!7494510 (not res!3006279)) b!7494511))

(assert (= (and b!7494511 res!3006280) b!7494508))

(assert (= (and b!7494508 (not res!3006282)) b!7494505))

(assert (= (and b!7494505 (not res!3006285)) b!7494504))

(assert (= (or b!7494501 b!7494508 b!7494509) bm!687995))

(declare-fun m!8079042 () Bool)

(assert (=> b!7494512 m!8079042))

(assert (=> b!7494512 m!8079042))

(declare-fun m!8079044 () Bool)

(assert (=> b!7494512 m!8079044))

(declare-fun m!8079046 () Bool)

(assert (=> b!7494512 m!8079046))

(assert (=> b!7494512 m!8079044))

(assert (=> b!7494512 m!8079046))

(declare-fun m!8079048 () Bool)

(assert (=> b!7494512 m!8079048))

(assert (=> b!7494502 m!8079046))

(assert (=> b!7494502 m!8079046))

(declare-fun m!8079050 () Bool)

(assert (=> b!7494502 m!8079050))

(assert (=> d!2301598 m!8079032))

(declare-fun m!8079052 () Bool)

(assert (=> d!2301598 m!8079052))

(assert (=> b!7494503 m!8079042))

(assert (=> bm!687995 m!8079032))

(declare-fun m!8079054 () Bool)

(assert (=> b!7494513 m!8079054))

(assert (=> b!7494504 m!8079042))

(assert (=> b!7494505 m!8079046))

(assert (=> b!7494505 m!8079046))

(assert (=> b!7494505 m!8079050))

(assert (=> b!7494191 d!2301598))

(declare-fun b!7494514 () Bool)

(declare-fun e!4468732 () Bool)

(declare-fun e!4468736 () Bool)

(assert (=> b!7494514 (= e!4468732 e!4468736)))

(declare-fun c!1383730 () Bool)

(assert (=> b!7494514 (= c!1383730 (is-EmptyLang!19644 lt!2630169))))

(declare-fun b!7494515 () Bool)

(declare-fun lt!2630239 () Bool)

(declare-fun call!688001 () Bool)

(assert (=> b!7494515 (= e!4468732 (= lt!2630239 call!688001))))

(declare-fun b!7494517 () Bool)

(declare-fun e!4468735 () Bool)

(assert (=> b!7494517 (= e!4468735 (= (head!15377 s!13591) (c!1383673 lt!2630169)))))

(declare-fun bm!687996 () Bool)

(assert (=> bm!687996 (= call!688001 (isEmpty!41266 s!13591))))

(declare-fun b!7494518 () Bool)

(declare-fun e!4468731 () Bool)

(assert (=> b!7494518 (= e!4468731 (not (= (head!15377 s!13591) (c!1383673 lt!2630169))))))

(declare-fun b!7494519 () Bool)

(declare-fun res!3006293 () Bool)

(assert (=> b!7494519 (=> res!3006293 e!4468731)))

(assert (=> b!7494519 (= res!3006293 (not (isEmpty!41266 (tail!14946 s!13591))))))

(declare-fun b!7494520 () Bool)

(assert (=> b!7494520 (= e!4468736 (not lt!2630239))))

(declare-fun b!7494521 () Bool)

(declare-fun res!3006292 () Bool)

(declare-fun e!4468734 () Bool)

(assert (=> b!7494521 (=> res!3006292 e!4468734)))

(assert (=> b!7494521 (= res!3006292 (not (is-ElementMatch!19644 lt!2630169)))))

(assert (=> b!7494521 (= e!4468736 e!4468734)))

(declare-fun b!7494522 () Bool)

(declare-fun e!4468730 () Bool)

(assert (=> b!7494522 (= e!4468730 e!4468731)))

(declare-fun res!3006290 () Bool)

(assert (=> b!7494522 (=> res!3006290 e!4468731)))

(assert (=> b!7494522 (= res!3006290 call!688001)))

(declare-fun b!7494523 () Bool)

(declare-fun res!3006291 () Bool)

(assert (=> b!7494523 (=> (not res!3006291) (not e!4468735))))

(assert (=> b!7494523 (= res!3006291 (not call!688001))))

(declare-fun d!2301600 () Bool)

(assert (=> d!2301600 e!4468732))

(declare-fun c!1383731 () Bool)

(assert (=> d!2301600 (= c!1383731 (is-EmptyExpr!19644 lt!2630169))))

(declare-fun e!4468733 () Bool)

(assert (=> d!2301600 (= lt!2630239 e!4468733)))

(declare-fun c!1383732 () Bool)

(assert (=> d!2301600 (= c!1383732 (isEmpty!41266 s!13591))))

(assert (=> d!2301600 (validRegex!10158 lt!2630169)))

(assert (=> d!2301600 (= (matchR!9406 lt!2630169 s!13591) lt!2630239)))

(declare-fun b!7494516 () Bool)

(declare-fun res!3006289 () Bool)

(assert (=> b!7494516 (=> (not res!3006289) (not e!4468735))))

(assert (=> b!7494516 (= res!3006289 (isEmpty!41266 (tail!14946 s!13591)))))

(declare-fun b!7494524 () Bool)

(declare-fun res!3006287 () Bool)

(assert (=> b!7494524 (=> res!3006287 e!4468734)))

(assert (=> b!7494524 (= res!3006287 e!4468735)))

(declare-fun res!3006294 () Bool)

(assert (=> b!7494524 (=> (not res!3006294) (not e!4468735))))

(assert (=> b!7494524 (= res!3006294 lt!2630239)))

(declare-fun b!7494525 () Bool)

(assert (=> b!7494525 (= e!4468734 e!4468730)))

(declare-fun res!3006288 () Bool)

(assert (=> b!7494525 (=> (not res!3006288) (not e!4468730))))

(assert (=> b!7494525 (= res!3006288 (not lt!2630239))))

(declare-fun b!7494526 () Bool)

(assert (=> b!7494526 (= e!4468733 (matchR!9406 (derivativeStep!5637 lt!2630169 (head!15377 s!13591)) (tail!14946 s!13591)))))

(declare-fun b!7494527 () Bool)

(assert (=> b!7494527 (= e!4468733 (nullable!8580 lt!2630169))))

(assert (= (and d!2301600 c!1383732) b!7494527))

(assert (= (and d!2301600 (not c!1383732)) b!7494526))

(assert (= (and d!2301600 c!1383731) b!7494515))

(assert (= (and d!2301600 (not c!1383731)) b!7494514))

(assert (= (and b!7494514 c!1383730) b!7494520))

(assert (= (and b!7494514 (not c!1383730)) b!7494521))

(assert (= (and b!7494521 (not res!3006292)) b!7494524))

(assert (= (and b!7494524 res!3006294) b!7494523))

(assert (= (and b!7494523 res!3006291) b!7494516))

(assert (= (and b!7494516 res!3006289) b!7494517))

(assert (= (and b!7494524 (not res!3006287)) b!7494525))

(assert (= (and b!7494525 res!3006288) b!7494522))

(assert (= (and b!7494522 (not res!3006290)) b!7494519))

(assert (= (and b!7494519 (not res!3006293)) b!7494518))

(assert (= (or b!7494515 b!7494522 b!7494523) bm!687996))

(assert (=> b!7494526 m!8079042))

(assert (=> b!7494526 m!8079042))

(declare-fun m!8079056 () Bool)

(assert (=> b!7494526 m!8079056))

(assert (=> b!7494526 m!8079046))

(assert (=> b!7494526 m!8079056))

(assert (=> b!7494526 m!8079046))

(declare-fun m!8079058 () Bool)

(assert (=> b!7494526 m!8079058))

(assert (=> b!7494516 m!8079046))

(assert (=> b!7494516 m!8079046))

(assert (=> b!7494516 m!8079050))

(assert (=> d!2301600 m!8079032))

(assert (=> d!2301600 m!8079040))

(assert (=> b!7494517 m!8079042))

(assert (=> bm!687996 m!8079032))

(declare-fun m!8079060 () Bool)

(assert (=> b!7494527 m!8079060))

(assert (=> b!7494518 m!8079042))

(assert (=> b!7494519 m!8079046))

(assert (=> b!7494519 m!8079046))

(assert (=> b!7494519 m!8079050))

(assert (=> b!7494191 d!2301600))

(declare-fun bs!1935531 () Bool)

(declare-fun b!7494537 () Bool)

(assert (= bs!1935531 (and b!7494537 b!7494194)))

(declare-fun lambda!464355 () Int)

(assert (=> bs!1935531 (not (= lambda!464355 lambda!464324))))

(declare-fun bs!1935532 () Bool)

(assert (= bs!1935532 (and b!7494537 d!2301576)))

(assert (=> bs!1935532 (not (= lambda!464355 lambda!464342))))

(declare-fun bs!1935533 () Bool)

(assert (= bs!1935533 (and b!7494537 b!7494435)))

(assert (=> bs!1935533 (not (= lambda!464355 lambda!464354))))

(declare-fun bs!1935534 () Bool)

(assert (= bs!1935534 (and b!7494537 d!2301574)))

(assert (=> bs!1935534 (not (= lambda!464355 lambda!464339))))

(assert (=> bs!1935534 (not (= lambda!464355 lambda!464338))))

(declare-fun bs!1935535 () Bool)

(assert (= bs!1935535 (and b!7494537 b!7494442)))

(assert (=> bs!1935535 (= (and (= (reg!19973 lt!2630171) (reg!19973 lt!2630169)) (= lt!2630171 lt!2630169)) (= lambda!464355 lambda!464352))))

(assert (=> bs!1935531 (not (= lambda!464355 lambda!464325))))

(assert (=> b!7494537 true))

(assert (=> b!7494537 true))

(declare-fun bs!1935536 () Bool)

(declare-fun b!7494530 () Bool)

(assert (= bs!1935536 (and b!7494530 b!7494194)))

(declare-fun lambda!464356 () Int)

(assert (=> bs!1935536 (not (= lambda!464356 lambda!464324))))

(declare-fun bs!1935537 () Bool)

(assert (= bs!1935537 (and b!7494530 d!2301576)))

(assert (=> bs!1935537 (not (= lambda!464356 lambda!464342))))

(declare-fun bs!1935538 () Bool)

(assert (= bs!1935538 (and b!7494530 b!7494435)))

(assert (=> bs!1935538 (= (and (= (regOne!39800 lt!2630171) (regOne!39800 lt!2630169)) (= (regTwo!39800 lt!2630171) (regTwo!39800 lt!2630169))) (= lambda!464356 lambda!464354))))

(declare-fun bs!1935539 () Bool)

(assert (= bs!1935539 (and b!7494530 d!2301574)))

(assert (=> bs!1935539 (= (and (= (regOne!39800 lt!2630171) lt!2630165) (= (regTwo!39800 lt!2630171) rTail!78)) (= lambda!464356 lambda!464339))))

(declare-fun bs!1935540 () Bool)

(assert (= bs!1935540 (and b!7494530 b!7494537)))

(assert (=> bs!1935540 (not (= lambda!464356 lambda!464355))))

(assert (=> bs!1935539 (not (= lambda!464356 lambda!464338))))

(declare-fun bs!1935541 () Bool)

(assert (= bs!1935541 (and b!7494530 b!7494442)))

(assert (=> bs!1935541 (not (= lambda!464356 lambda!464352))))

(assert (=> bs!1935536 (= (and (= (regOne!39800 lt!2630171) lt!2630165) (= (regTwo!39800 lt!2630171) rTail!78)) (= lambda!464356 lambda!464325))))

(assert (=> b!7494530 true))

(assert (=> b!7494530 true))

(declare-fun b!7494528 () Bool)

(declare-fun c!1383733 () Bool)

(assert (=> b!7494528 (= c!1383733 (is-Union!19644 lt!2630171))))

(declare-fun e!4468742 () Bool)

(declare-fun e!4468740 () Bool)

(assert (=> b!7494528 (= e!4468742 e!4468740)))

(declare-fun call!688005 () Bool)

(declare-fun c!1383736 () Bool)

(declare-fun bm!687999 () Bool)

(assert (=> bm!687999 (= call!688005 (Exists!4261 (ite c!1383736 lambda!464355 lambda!464356)))))

(declare-fun b!7494529 () Bool)

(assert (=> b!7494529 (= e!4468742 (= s!13591 (Cons!72234 (c!1383673 lt!2630171) Nil!72234)))))

(declare-fun e!4468738 () Bool)

(assert (=> b!7494530 (= e!4468738 call!688005)))

(declare-fun b!7494531 () Bool)

(declare-fun e!4468743 () Bool)

(assert (=> b!7494531 (= e!4468743 (matchRSpec!4321 (regTwo!39801 lt!2630171) s!13591))))

(declare-fun b!7494532 () Bool)

(declare-fun e!4468737 () Bool)

(declare-fun e!4468739 () Bool)

(assert (=> b!7494532 (= e!4468737 e!4468739)))

(declare-fun res!3006297 () Bool)

(assert (=> b!7494532 (= res!3006297 (not (is-EmptyLang!19644 lt!2630171)))))

(assert (=> b!7494532 (=> (not res!3006297) (not e!4468739))))

(declare-fun b!7494533 () Bool)

(assert (=> b!7494533 (= e!4468740 e!4468743)))

(declare-fun res!3006296 () Bool)

(assert (=> b!7494533 (= res!3006296 (matchRSpec!4321 (regOne!39801 lt!2630171) s!13591))))

(assert (=> b!7494533 (=> res!3006296 e!4468743)))

(declare-fun d!2301602 () Bool)

(declare-fun c!1383734 () Bool)

(assert (=> d!2301602 (= c!1383734 (is-EmptyExpr!19644 lt!2630171))))

(assert (=> d!2301602 (= (matchRSpec!4321 lt!2630171 s!13591) e!4468737)))

(declare-fun b!7494534 () Bool)

(declare-fun call!688004 () Bool)

(assert (=> b!7494534 (= e!4468737 call!688004)))

(declare-fun b!7494535 () Bool)

(assert (=> b!7494535 (= e!4468740 e!4468738)))

(assert (=> b!7494535 (= c!1383736 (is-Star!19644 lt!2630171))))

(declare-fun b!7494536 () Bool)

(declare-fun res!3006295 () Bool)

(declare-fun e!4468741 () Bool)

(assert (=> b!7494536 (=> res!3006295 e!4468741)))

(assert (=> b!7494536 (= res!3006295 call!688004)))

(assert (=> b!7494536 (= e!4468738 e!4468741)))

(assert (=> b!7494537 (= e!4468741 call!688005)))

(declare-fun b!7494538 () Bool)

(declare-fun c!1383735 () Bool)

(assert (=> b!7494538 (= c!1383735 (is-ElementMatch!19644 lt!2630171))))

(assert (=> b!7494538 (= e!4468739 e!4468742)))

(declare-fun bm!688000 () Bool)

(assert (=> bm!688000 (= call!688004 (isEmpty!41266 s!13591))))

(assert (= (and d!2301602 c!1383734) b!7494534))

(assert (= (and d!2301602 (not c!1383734)) b!7494532))

(assert (= (and b!7494532 res!3006297) b!7494538))

(assert (= (and b!7494538 c!1383735) b!7494529))

(assert (= (and b!7494538 (not c!1383735)) b!7494528))

(assert (= (and b!7494528 c!1383733) b!7494533))

(assert (= (and b!7494528 (not c!1383733)) b!7494535))

(assert (= (and b!7494533 (not res!3006296)) b!7494531))

(assert (= (and b!7494535 c!1383736) b!7494536))

(assert (= (and b!7494535 (not c!1383736)) b!7494530))

(assert (= (and b!7494536 (not res!3006295)) b!7494537))

(assert (= (or b!7494537 b!7494530) bm!687999))

(assert (= (or b!7494534 b!7494536) bm!688000))

(declare-fun m!8079062 () Bool)

(assert (=> bm!687999 m!8079062))

(declare-fun m!8079064 () Bool)

(assert (=> b!7494531 m!8079064))

(declare-fun m!8079066 () Bool)

(assert (=> b!7494533 m!8079066))

(assert (=> bm!688000 m!8079032))

(assert (=> b!7494191 d!2301602))

(declare-fun d!2301604 () Bool)

(assert (=> d!2301604 (= (matchR!9406 lt!2630171 s!13591) (matchRSpec!4321 lt!2630171 s!13591))))

(declare-fun lt!2630240 () Unit!166119)

(assert (=> d!2301604 (= lt!2630240 (choose!57931 lt!2630171 s!13591))))

(assert (=> d!2301604 (validRegex!10158 lt!2630171)))

(assert (=> d!2301604 (= (mainMatchTheorem!4315 lt!2630171 s!13591) lt!2630240)))

(declare-fun bs!1935542 () Bool)

(assert (= bs!1935542 d!2301604))

(assert (=> bs!1935542 m!8078882))

(assert (=> bs!1935542 m!8078886))

(declare-fun m!8079068 () Bool)

(assert (=> bs!1935542 m!8079068))

(assert (=> bs!1935542 m!8079052))

(assert (=> b!7494191 d!2301604))

(declare-fun bm!688001 () Bool)

(declare-fun call!688007 () Bool)

(declare-fun c!1383737 () Bool)

(assert (=> bm!688001 (= call!688007 (validRegex!10158 (ite c!1383737 (regOne!39801 lt!2630167) (regOne!39800 lt!2630167))))))

(declare-fun bm!688002 () Bool)

(declare-fun call!688006 () Bool)

(declare-fun call!688008 () Bool)

(assert (=> bm!688002 (= call!688006 call!688008)))

(declare-fun b!7494539 () Bool)

(declare-fun e!4468748 () Bool)

(assert (=> b!7494539 (= e!4468748 call!688006)))

(declare-fun b!7494540 () Bool)

(declare-fun e!4468747 () Bool)

(declare-fun e!4468744 () Bool)

(assert (=> b!7494540 (= e!4468747 e!4468744)))

(assert (=> b!7494540 (= c!1383737 (is-Union!19644 lt!2630167))))

(declare-fun b!7494541 () Bool)

(declare-fun e!4468746 () Bool)

(assert (=> b!7494541 (= e!4468746 call!688008)))

(declare-fun b!7494542 () Bool)

(declare-fun e!4468745 () Bool)

(assert (=> b!7494542 (= e!4468745 call!688006)))

(declare-fun d!2301606 () Bool)

(declare-fun res!3006300 () Bool)

(declare-fun e!4468749 () Bool)

(assert (=> d!2301606 (=> res!3006300 e!4468749)))

(assert (=> d!2301606 (= res!3006300 (is-ElementMatch!19644 lt!2630167))))

(assert (=> d!2301606 (= (validRegex!10158 lt!2630167) e!4468749)))

(declare-fun b!7494543 () Bool)

(declare-fun res!3006299 () Bool)

(declare-fun e!4468750 () Bool)

(assert (=> b!7494543 (=> res!3006299 e!4468750)))

(assert (=> b!7494543 (= res!3006299 (not (is-Concat!28489 lt!2630167)))))

(assert (=> b!7494543 (= e!4468744 e!4468750)))

(declare-fun b!7494544 () Bool)

(assert (=> b!7494544 (= e!4468749 e!4468747)))

(declare-fun c!1383738 () Bool)

(assert (=> b!7494544 (= c!1383738 (is-Star!19644 lt!2630167))))

(declare-fun bm!688003 () Bool)

(assert (=> bm!688003 (= call!688008 (validRegex!10158 (ite c!1383738 (reg!19973 lt!2630167) (ite c!1383737 (regTwo!39801 lt!2630167) (regTwo!39800 lt!2630167)))))))

(declare-fun b!7494545 () Bool)

(assert (=> b!7494545 (= e!4468747 e!4468746)))

(declare-fun res!3006298 () Bool)

(assert (=> b!7494545 (= res!3006298 (not (nullable!8580 (reg!19973 lt!2630167))))))

(assert (=> b!7494545 (=> (not res!3006298) (not e!4468746))))

(declare-fun b!7494546 () Bool)

(assert (=> b!7494546 (= e!4468750 e!4468748)))

(declare-fun res!3006302 () Bool)

(assert (=> b!7494546 (=> (not res!3006302) (not e!4468748))))

(assert (=> b!7494546 (= res!3006302 call!688007)))

(declare-fun b!7494547 () Bool)

(declare-fun res!3006301 () Bool)

(assert (=> b!7494547 (=> (not res!3006301) (not e!4468745))))

(assert (=> b!7494547 (= res!3006301 call!688007)))

(assert (=> b!7494547 (= e!4468744 e!4468745)))

(assert (= (and d!2301606 (not res!3006300)) b!7494544))

(assert (= (and b!7494544 c!1383738) b!7494545))

(assert (= (and b!7494544 (not c!1383738)) b!7494540))

(assert (= (and b!7494545 res!3006298) b!7494541))

(assert (= (and b!7494540 c!1383737) b!7494547))

(assert (= (and b!7494540 (not c!1383737)) b!7494543))

(assert (= (and b!7494547 res!3006301) b!7494542))

(assert (= (and b!7494543 (not res!3006299)) b!7494546))

(assert (= (and b!7494546 res!3006302) b!7494539))

(assert (= (or b!7494542 b!7494539) bm!688002))

(assert (= (or b!7494547 b!7494546) bm!688001))

(assert (= (or b!7494541 bm!688002) bm!688003))

(declare-fun m!8079070 () Bool)

(assert (=> bm!688001 m!8079070))

(declare-fun m!8079072 () Bool)

(assert (=> bm!688003 m!8079072))

(declare-fun m!8079074 () Bool)

(assert (=> b!7494545 m!8079074))

(assert (=> b!7494195 d!2301606))

(declare-fun b!7494548 () Bool)

(declare-fun e!4468753 () Bool)

(declare-fun e!4468757 () Bool)

(assert (=> b!7494548 (= e!4468753 e!4468757)))

(declare-fun c!1383739 () Bool)

(assert (=> b!7494548 (= c!1383739 (is-EmptyLang!19644 lt!2630160))))

(declare-fun b!7494549 () Bool)

(declare-fun lt!2630241 () Bool)

(declare-fun call!688009 () Bool)

(assert (=> b!7494549 (= e!4468753 (= lt!2630241 call!688009))))

(declare-fun b!7494551 () Bool)

(declare-fun e!4468756 () Bool)

(assert (=> b!7494551 (= e!4468756 (= (head!15377 s!13591) (c!1383673 lt!2630160)))))

(declare-fun bm!688004 () Bool)

(assert (=> bm!688004 (= call!688009 (isEmpty!41266 s!13591))))

(declare-fun b!7494552 () Bool)

(declare-fun e!4468752 () Bool)

(assert (=> b!7494552 (= e!4468752 (not (= (head!15377 s!13591) (c!1383673 lt!2630160))))))

(declare-fun b!7494553 () Bool)

(declare-fun res!3006309 () Bool)

(assert (=> b!7494553 (=> res!3006309 e!4468752)))

(assert (=> b!7494553 (= res!3006309 (not (isEmpty!41266 (tail!14946 s!13591))))))

(declare-fun b!7494554 () Bool)

(assert (=> b!7494554 (= e!4468757 (not lt!2630241))))

(declare-fun b!7494555 () Bool)

(declare-fun res!3006308 () Bool)

(declare-fun e!4468755 () Bool)

(assert (=> b!7494555 (=> res!3006308 e!4468755)))

(assert (=> b!7494555 (= res!3006308 (not (is-ElementMatch!19644 lt!2630160)))))

(assert (=> b!7494555 (= e!4468757 e!4468755)))

(declare-fun b!7494556 () Bool)

(declare-fun e!4468751 () Bool)

(assert (=> b!7494556 (= e!4468751 e!4468752)))

(declare-fun res!3006306 () Bool)

(assert (=> b!7494556 (=> res!3006306 e!4468752)))

(assert (=> b!7494556 (= res!3006306 call!688009)))

(declare-fun b!7494557 () Bool)

(declare-fun res!3006307 () Bool)

(assert (=> b!7494557 (=> (not res!3006307) (not e!4468756))))

(assert (=> b!7494557 (= res!3006307 (not call!688009))))

(declare-fun d!2301608 () Bool)

(assert (=> d!2301608 e!4468753))

(declare-fun c!1383740 () Bool)

(assert (=> d!2301608 (= c!1383740 (is-EmptyExpr!19644 lt!2630160))))

(declare-fun e!4468754 () Bool)

(assert (=> d!2301608 (= lt!2630241 e!4468754)))

(declare-fun c!1383741 () Bool)

(assert (=> d!2301608 (= c!1383741 (isEmpty!41266 s!13591))))

(assert (=> d!2301608 (validRegex!10158 lt!2630160)))

(assert (=> d!2301608 (= (matchR!9406 lt!2630160 s!13591) lt!2630241)))

(declare-fun b!7494550 () Bool)

(declare-fun res!3006305 () Bool)

(assert (=> b!7494550 (=> (not res!3006305) (not e!4468756))))

(assert (=> b!7494550 (= res!3006305 (isEmpty!41266 (tail!14946 s!13591)))))

(declare-fun b!7494558 () Bool)

(declare-fun res!3006303 () Bool)

(assert (=> b!7494558 (=> res!3006303 e!4468755)))

(assert (=> b!7494558 (= res!3006303 e!4468756)))

(declare-fun res!3006310 () Bool)

(assert (=> b!7494558 (=> (not res!3006310) (not e!4468756))))

(assert (=> b!7494558 (= res!3006310 lt!2630241)))

(declare-fun b!7494559 () Bool)

(assert (=> b!7494559 (= e!4468755 e!4468751)))

(declare-fun res!3006304 () Bool)

(assert (=> b!7494559 (=> (not res!3006304) (not e!4468751))))

(assert (=> b!7494559 (= res!3006304 (not lt!2630241))))

(declare-fun b!7494560 () Bool)

(assert (=> b!7494560 (= e!4468754 (matchR!9406 (derivativeStep!5637 lt!2630160 (head!15377 s!13591)) (tail!14946 s!13591)))))

(declare-fun b!7494561 () Bool)

(assert (=> b!7494561 (= e!4468754 (nullable!8580 lt!2630160))))

(assert (= (and d!2301608 c!1383741) b!7494561))

(assert (= (and d!2301608 (not c!1383741)) b!7494560))

(assert (= (and d!2301608 c!1383740) b!7494549))

(assert (= (and d!2301608 (not c!1383740)) b!7494548))

(assert (= (and b!7494548 c!1383739) b!7494554))

(assert (= (and b!7494548 (not c!1383739)) b!7494555))

(assert (= (and b!7494555 (not res!3006308)) b!7494558))

(assert (= (and b!7494558 res!3006310) b!7494557))

(assert (= (and b!7494557 res!3006307) b!7494550))

(assert (= (and b!7494550 res!3006305) b!7494551))

(assert (= (and b!7494558 (not res!3006303)) b!7494559))

(assert (= (and b!7494559 res!3006304) b!7494556))

(assert (= (and b!7494556 (not res!3006306)) b!7494553))

(assert (= (and b!7494553 (not res!3006309)) b!7494552))

(assert (= (or b!7494549 b!7494556 b!7494557) bm!688004))

(assert (=> b!7494560 m!8079042))

(assert (=> b!7494560 m!8079042))

(declare-fun m!8079076 () Bool)

(assert (=> b!7494560 m!8079076))

(assert (=> b!7494560 m!8079046))

(assert (=> b!7494560 m!8079076))

(assert (=> b!7494560 m!8079046))

(declare-fun m!8079078 () Bool)

(assert (=> b!7494560 m!8079078))

(assert (=> b!7494550 m!8079046))

(assert (=> b!7494550 m!8079046))

(assert (=> b!7494550 m!8079050))

(assert (=> d!2301608 m!8079032))

(declare-fun m!8079080 () Bool)

(assert (=> d!2301608 m!8079080))

(assert (=> b!7494551 m!8079042))

(assert (=> bm!688004 m!8079032))

(declare-fun m!8079082 () Bool)

(assert (=> b!7494561 m!8079082))

(assert (=> b!7494552 m!8079042))

(assert (=> b!7494553 m!8079046))

(assert (=> b!7494553 m!8079046))

(assert (=> b!7494553 m!8079050))

(assert (=> b!7494195 d!2301608))

(declare-fun bs!1935543 () Bool)

(declare-fun b!7494571 () Bool)

(assert (= bs!1935543 (and b!7494571 b!7494194)))

(declare-fun lambda!464357 () Int)

(assert (=> bs!1935543 (not (= lambda!464357 lambda!464324))))

(declare-fun bs!1935544 () Bool)

(assert (= bs!1935544 (and b!7494571 d!2301576)))

(assert (=> bs!1935544 (not (= lambda!464357 lambda!464342))))

(declare-fun bs!1935545 () Bool)

(assert (= bs!1935545 (and b!7494571 b!7494435)))

(assert (=> bs!1935545 (not (= lambda!464357 lambda!464354))))

(declare-fun bs!1935546 () Bool)

(assert (= bs!1935546 (and b!7494571 b!7494530)))

(assert (=> bs!1935546 (not (= lambda!464357 lambda!464356))))

(declare-fun bs!1935547 () Bool)

(assert (= bs!1935547 (and b!7494571 d!2301574)))

(assert (=> bs!1935547 (not (= lambda!464357 lambda!464339))))

(declare-fun bs!1935548 () Bool)

(assert (= bs!1935548 (and b!7494571 b!7494537)))

(assert (=> bs!1935548 (= (and (= (reg!19973 lt!2630160) (reg!19973 lt!2630171)) (= lt!2630160 lt!2630171)) (= lambda!464357 lambda!464355))))

(assert (=> bs!1935547 (not (= lambda!464357 lambda!464338))))

(declare-fun bs!1935549 () Bool)

(assert (= bs!1935549 (and b!7494571 b!7494442)))

(assert (=> bs!1935549 (= (and (= (reg!19973 lt!2630160) (reg!19973 lt!2630169)) (= lt!2630160 lt!2630169)) (= lambda!464357 lambda!464352))))

(assert (=> bs!1935543 (not (= lambda!464357 lambda!464325))))

(assert (=> b!7494571 true))

(assert (=> b!7494571 true))

(declare-fun bs!1935550 () Bool)

(declare-fun b!7494564 () Bool)

(assert (= bs!1935550 (and b!7494564 b!7494194)))

(declare-fun lambda!464358 () Int)

(assert (=> bs!1935550 (not (= lambda!464358 lambda!464324))))

(declare-fun bs!1935551 () Bool)

(assert (= bs!1935551 (and b!7494564 b!7494571)))

(assert (=> bs!1935551 (not (= lambda!464358 lambda!464357))))

(declare-fun bs!1935552 () Bool)

(assert (= bs!1935552 (and b!7494564 d!2301576)))

(assert (=> bs!1935552 (not (= lambda!464358 lambda!464342))))

(declare-fun bs!1935553 () Bool)

(assert (= bs!1935553 (and b!7494564 b!7494435)))

(assert (=> bs!1935553 (= (and (= (regOne!39800 lt!2630160) (regOne!39800 lt!2630169)) (= (regTwo!39800 lt!2630160) (regTwo!39800 lt!2630169))) (= lambda!464358 lambda!464354))))

(declare-fun bs!1935554 () Bool)

(assert (= bs!1935554 (and b!7494564 b!7494530)))

(assert (=> bs!1935554 (= (and (= (regOne!39800 lt!2630160) (regOne!39800 lt!2630171)) (= (regTwo!39800 lt!2630160) (regTwo!39800 lt!2630171))) (= lambda!464358 lambda!464356))))

(declare-fun bs!1935555 () Bool)

(assert (= bs!1935555 (and b!7494564 d!2301574)))

(assert (=> bs!1935555 (= (and (= (regOne!39800 lt!2630160) lt!2630165) (= (regTwo!39800 lt!2630160) rTail!78)) (= lambda!464358 lambda!464339))))

(declare-fun bs!1935556 () Bool)

(assert (= bs!1935556 (and b!7494564 b!7494537)))

(assert (=> bs!1935556 (not (= lambda!464358 lambda!464355))))

(assert (=> bs!1935555 (not (= lambda!464358 lambda!464338))))

(declare-fun bs!1935557 () Bool)

(assert (= bs!1935557 (and b!7494564 b!7494442)))

(assert (=> bs!1935557 (not (= lambda!464358 lambda!464352))))

(assert (=> bs!1935550 (= (and (= (regOne!39800 lt!2630160) lt!2630165) (= (regTwo!39800 lt!2630160) rTail!78)) (= lambda!464358 lambda!464325))))

(assert (=> b!7494564 true))

(assert (=> b!7494564 true))

(declare-fun b!7494562 () Bool)

(declare-fun c!1383742 () Bool)

(assert (=> b!7494562 (= c!1383742 (is-Union!19644 lt!2630160))))

(declare-fun e!4468763 () Bool)

(declare-fun e!4468761 () Bool)

(assert (=> b!7494562 (= e!4468763 e!4468761)))

(declare-fun c!1383745 () Bool)

(declare-fun call!688011 () Bool)

(declare-fun bm!688005 () Bool)

(assert (=> bm!688005 (= call!688011 (Exists!4261 (ite c!1383745 lambda!464357 lambda!464358)))))

(declare-fun b!7494563 () Bool)

(assert (=> b!7494563 (= e!4468763 (= s!13591 (Cons!72234 (c!1383673 lt!2630160) Nil!72234)))))

(declare-fun e!4468759 () Bool)

(assert (=> b!7494564 (= e!4468759 call!688011)))

(declare-fun b!7494565 () Bool)

(declare-fun e!4468764 () Bool)

(assert (=> b!7494565 (= e!4468764 (matchRSpec!4321 (regTwo!39801 lt!2630160) s!13591))))

(declare-fun b!7494566 () Bool)

(declare-fun e!4468758 () Bool)

(declare-fun e!4468760 () Bool)

(assert (=> b!7494566 (= e!4468758 e!4468760)))

(declare-fun res!3006313 () Bool)

(assert (=> b!7494566 (= res!3006313 (not (is-EmptyLang!19644 lt!2630160)))))

(assert (=> b!7494566 (=> (not res!3006313) (not e!4468760))))

(declare-fun b!7494567 () Bool)

(assert (=> b!7494567 (= e!4468761 e!4468764)))

(declare-fun res!3006312 () Bool)

(assert (=> b!7494567 (= res!3006312 (matchRSpec!4321 (regOne!39801 lt!2630160) s!13591))))

(assert (=> b!7494567 (=> res!3006312 e!4468764)))

(declare-fun d!2301610 () Bool)

(declare-fun c!1383743 () Bool)

(assert (=> d!2301610 (= c!1383743 (is-EmptyExpr!19644 lt!2630160))))

(assert (=> d!2301610 (= (matchRSpec!4321 lt!2630160 s!13591) e!4468758)))

(declare-fun b!7494568 () Bool)

(declare-fun call!688010 () Bool)

(assert (=> b!7494568 (= e!4468758 call!688010)))

(declare-fun b!7494569 () Bool)

(assert (=> b!7494569 (= e!4468761 e!4468759)))

(assert (=> b!7494569 (= c!1383745 (is-Star!19644 lt!2630160))))

(declare-fun b!7494570 () Bool)

(declare-fun res!3006311 () Bool)

(declare-fun e!4468762 () Bool)

(assert (=> b!7494570 (=> res!3006311 e!4468762)))

(assert (=> b!7494570 (= res!3006311 call!688010)))

(assert (=> b!7494570 (= e!4468759 e!4468762)))

(assert (=> b!7494571 (= e!4468762 call!688011)))

(declare-fun b!7494572 () Bool)

(declare-fun c!1383744 () Bool)

(assert (=> b!7494572 (= c!1383744 (is-ElementMatch!19644 lt!2630160))))

(assert (=> b!7494572 (= e!4468760 e!4468763)))

(declare-fun bm!688006 () Bool)

(assert (=> bm!688006 (= call!688010 (isEmpty!41266 s!13591))))

(assert (= (and d!2301610 c!1383743) b!7494568))

(assert (= (and d!2301610 (not c!1383743)) b!7494566))

(assert (= (and b!7494566 res!3006313) b!7494572))

(assert (= (and b!7494572 c!1383744) b!7494563))

(assert (= (and b!7494572 (not c!1383744)) b!7494562))

(assert (= (and b!7494562 c!1383742) b!7494567))

(assert (= (and b!7494562 (not c!1383742)) b!7494569))

(assert (= (and b!7494567 (not res!3006312)) b!7494565))

(assert (= (and b!7494569 c!1383745) b!7494570))

(assert (= (and b!7494569 (not c!1383745)) b!7494564))

(assert (= (and b!7494570 (not res!3006311)) b!7494571))

(assert (= (or b!7494571 b!7494564) bm!688005))

(assert (= (or b!7494568 b!7494570) bm!688006))

(declare-fun m!8079092 () Bool)

(assert (=> bm!688005 m!8079092))

(declare-fun m!8079096 () Bool)

(assert (=> b!7494565 m!8079096))

(declare-fun m!8079098 () Bool)

(assert (=> b!7494567 m!8079098))

(assert (=> bm!688006 m!8079032))

(assert (=> b!7494195 d!2301610))

(declare-fun d!2301612 () Bool)

(assert (=> d!2301612 (= (matchR!9406 lt!2630160 s!13591) (matchRSpec!4321 lt!2630160 s!13591))))

(declare-fun lt!2630243 () Unit!166119)

(assert (=> d!2301612 (= lt!2630243 (choose!57931 lt!2630160 s!13591))))

(assert (=> d!2301612 (validRegex!10158 lt!2630160)))

(assert (=> d!2301612 (= (mainMatchTheorem!4315 lt!2630160 s!13591) lt!2630243)))

(declare-fun bs!1935558 () Bool)

(assert (= bs!1935558 d!2301612))

(assert (=> bs!1935558 m!8078908))

(assert (=> bs!1935558 m!8078910))

(declare-fun m!8079102 () Bool)

(assert (=> bs!1935558 m!8079102))

(assert (=> bs!1935558 m!8079080))

(assert (=> b!7494195 d!2301612))

(declare-fun b!7494611 () Bool)

(declare-fun e!4468781 () Bool)

(assert (=> b!7494611 (= e!4468781 tp_is_empty!49577)))

(declare-fun b!7494614 () Bool)

(declare-fun tp!2175528 () Bool)

(declare-fun tp!2175532 () Bool)

(assert (=> b!7494614 (= e!4468781 (and tp!2175528 tp!2175532))))

(declare-fun b!7494612 () Bool)

(declare-fun tp!2175529 () Bool)

(declare-fun tp!2175530 () Bool)

(assert (=> b!7494612 (= e!4468781 (and tp!2175529 tp!2175530))))

(assert (=> b!7494189 (= tp!2175464 e!4468781)))

(declare-fun b!7494613 () Bool)

(declare-fun tp!2175531 () Bool)

(assert (=> b!7494613 (= e!4468781 tp!2175531)))

(assert (= (and b!7494189 (is-ElementMatch!19644 (reg!19973 rTail!78))) b!7494611))

(assert (= (and b!7494189 (is-Concat!28489 (reg!19973 rTail!78))) b!7494612))

(assert (= (and b!7494189 (is-Star!19644 (reg!19973 rTail!78))) b!7494613))

(assert (= (and b!7494189 (is-Union!19644 (reg!19973 rTail!78))) b!7494614))

(declare-fun b!7494615 () Bool)

(declare-fun e!4468782 () Bool)

(assert (=> b!7494615 (= e!4468782 tp_is_empty!49577)))

(declare-fun b!7494618 () Bool)

(declare-fun tp!2175533 () Bool)

(declare-fun tp!2175537 () Bool)

(assert (=> b!7494618 (= e!4468782 (and tp!2175533 tp!2175537))))

(declare-fun b!7494616 () Bool)

(declare-fun tp!2175534 () Bool)

(declare-fun tp!2175535 () Bool)

(assert (=> b!7494616 (= e!4468782 (and tp!2175534 tp!2175535))))

(assert (=> b!7494188 (= tp!2175457 e!4468782)))

(declare-fun b!7494617 () Bool)

(declare-fun tp!2175536 () Bool)

(assert (=> b!7494617 (= e!4468782 tp!2175536)))

(assert (= (and b!7494188 (is-ElementMatch!19644 (regOne!39800 rTail!78))) b!7494615))

(assert (= (and b!7494188 (is-Concat!28489 (regOne!39800 rTail!78))) b!7494616))

(assert (= (and b!7494188 (is-Star!19644 (regOne!39800 rTail!78))) b!7494617))

(assert (= (and b!7494188 (is-Union!19644 (regOne!39800 rTail!78))) b!7494618))

(declare-fun b!7494619 () Bool)

(declare-fun e!4468783 () Bool)

(assert (=> b!7494619 (= e!4468783 tp_is_empty!49577)))

(declare-fun b!7494622 () Bool)

(declare-fun tp!2175538 () Bool)

(declare-fun tp!2175542 () Bool)

(assert (=> b!7494622 (= e!4468783 (and tp!2175538 tp!2175542))))

(declare-fun b!7494620 () Bool)

(declare-fun tp!2175539 () Bool)

(declare-fun tp!2175540 () Bool)

(assert (=> b!7494620 (= e!4468783 (and tp!2175539 tp!2175540))))

(assert (=> b!7494188 (= tp!2175468 e!4468783)))

(declare-fun b!7494621 () Bool)

(declare-fun tp!2175541 () Bool)

(assert (=> b!7494621 (= e!4468783 tp!2175541)))

(assert (= (and b!7494188 (is-ElementMatch!19644 (regTwo!39800 rTail!78))) b!7494619))

(assert (= (and b!7494188 (is-Concat!28489 (regTwo!39800 rTail!78))) b!7494620))

(assert (= (and b!7494188 (is-Star!19644 (regTwo!39800 rTail!78))) b!7494621))

(assert (= (and b!7494188 (is-Union!19644 (regTwo!39800 rTail!78))) b!7494622))

(declare-fun b!7494623 () Bool)

(declare-fun e!4468784 () Bool)

(assert (=> b!7494623 (= e!4468784 tp_is_empty!49577)))

(declare-fun b!7494626 () Bool)

(declare-fun tp!2175543 () Bool)

(declare-fun tp!2175547 () Bool)

(assert (=> b!7494626 (= e!4468784 (and tp!2175543 tp!2175547))))

(declare-fun b!7494624 () Bool)

(declare-fun tp!2175544 () Bool)

(declare-fun tp!2175545 () Bool)

(assert (=> b!7494624 (= e!4468784 (and tp!2175544 tp!2175545))))

(assert (=> b!7494183 (= tp!2175461 e!4468784)))

(declare-fun b!7494625 () Bool)

(declare-fun tp!2175546 () Bool)

(assert (=> b!7494625 (= e!4468784 tp!2175546)))

(assert (= (and b!7494183 (is-ElementMatch!19644 (reg!19973 r1!5845))) b!7494623))

(assert (= (and b!7494183 (is-Concat!28489 (reg!19973 r1!5845))) b!7494624))

(assert (= (and b!7494183 (is-Star!19644 (reg!19973 r1!5845))) b!7494625))

(assert (= (and b!7494183 (is-Union!19644 (reg!19973 r1!5845))) b!7494626))

(declare-fun b!7494627 () Bool)

(declare-fun e!4468785 () Bool)

(assert (=> b!7494627 (= e!4468785 tp_is_empty!49577)))

(declare-fun b!7494630 () Bool)

(declare-fun tp!2175548 () Bool)

(declare-fun tp!2175552 () Bool)

(assert (=> b!7494630 (= e!4468785 (and tp!2175548 tp!2175552))))

(declare-fun b!7494628 () Bool)

(declare-fun tp!2175549 () Bool)

(declare-fun tp!2175550 () Bool)

(assert (=> b!7494628 (= e!4468785 (and tp!2175549 tp!2175550))))

(assert (=> b!7494182 (= tp!2175467 e!4468785)))

(declare-fun b!7494629 () Bool)

(declare-fun tp!2175551 () Bool)

(assert (=> b!7494629 (= e!4468785 tp!2175551)))

(assert (= (and b!7494182 (is-ElementMatch!19644 (regOne!39800 r1!5845))) b!7494627))

(assert (= (and b!7494182 (is-Concat!28489 (regOne!39800 r1!5845))) b!7494628))

(assert (= (and b!7494182 (is-Star!19644 (regOne!39800 r1!5845))) b!7494629))

(assert (= (and b!7494182 (is-Union!19644 (regOne!39800 r1!5845))) b!7494630))

(declare-fun b!7494631 () Bool)

(declare-fun e!4468786 () Bool)

(assert (=> b!7494631 (= e!4468786 tp_is_empty!49577)))

(declare-fun b!7494634 () Bool)

(declare-fun tp!2175553 () Bool)

(declare-fun tp!2175557 () Bool)

(assert (=> b!7494634 (= e!4468786 (and tp!2175553 tp!2175557))))

(declare-fun b!7494632 () Bool)

(declare-fun tp!2175554 () Bool)

(declare-fun tp!2175555 () Bool)

(assert (=> b!7494632 (= e!4468786 (and tp!2175554 tp!2175555))))

(assert (=> b!7494182 (= tp!2175465 e!4468786)))

(declare-fun b!7494633 () Bool)

(declare-fun tp!2175556 () Bool)

(assert (=> b!7494633 (= e!4468786 tp!2175556)))

(assert (= (and b!7494182 (is-ElementMatch!19644 (regTwo!39800 r1!5845))) b!7494631))

(assert (= (and b!7494182 (is-Concat!28489 (regTwo!39800 r1!5845))) b!7494632))

(assert (= (and b!7494182 (is-Star!19644 (regTwo!39800 r1!5845))) b!7494633))

(assert (= (and b!7494182 (is-Union!19644 (regTwo!39800 r1!5845))) b!7494634))

(declare-fun b!7494635 () Bool)

(declare-fun e!4468787 () Bool)

(assert (=> b!7494635 (= e!4468787 tp_is_empty!49577)))

(declare-fun b!7494638 () Bool)

(declare-fun tp!2175558 () Bool)

(declare-fun tp!2175562 () Bool)

(assert (=> b!7494638 (= e!4468787 (and tp!2175558 tp!2175562))))

(declare-fun b!7494636 () Bool)

(declare-fun tp!2175559 () Bool)

(declare-fun tp!2175560 () Bool)

(assert (=> b!7494636 (= e!4468787 (and tp!2175559 tp!2175560))))

(assert (=> b!7494198 (= tp!2175458 e!4468787)))

(declare-fun b!7494637 () Bool)

(declare-fun tp!2175561 () Bool)

(assert (=> b!7494637 (= e!4468787 tp!2175561)))

(assert (= (and b!7494198 (is-ElementMatch!19644 (regOne!39801 rTail!78))) b!7494635))

(assert (= (and b!7494198 (is-Concat!28489 (regOne!39801 rTail!78))) b!7494636))

(assert (= (and b!7494198 (is-Star!19644 (regOne!39801 rTail!78))) b!7494637))

(assert (= (and b!7494198 (is-Union!19644 (regOne!39801 rTail!78))) b!7494638))

(declare-fun b!7494639 () Bool)

(declare-fun e!4468788 () Bool)

(assert (=> b!7494639 (= e!4468788 tp_is_empty!49577)))

(declare-fun b!7494642 () Bool)

(declare-fun tp!2175563 () Bool)

(declare-fun tp!2175567 () Bool)

(assert (=> b!7494642 (= e!4468788 (and tp!2175563 tp!2175567))))

(declare-fun b!7494640 () Bool)

(declare-fun tp!2175564 () Bool)

(declare-fun tp!2175565 () Bool)

(assert (=> b!7494640 (= e!4468788 (and tp!2175564 tp!2175565))))

(assert (=> b!7494198 (= tp!2175459 e!4468788)))

(declare-fun b!7494641 () Bool)

(declare-fun tp!2175566 () Bool)

(assert (=> b!7494641 (= e!4468788 tp!2175566)))

(assert (= (and b!7494198 (is-ElementMatch!19644 (regTwo!39801 rTail!78))) b!7494639))

(assert (= (and b!7494198 (is-Concat!28489 (regTwo!39801 rTail!78))) b!7494640))

(assert (= (and b!7494198 (is-Star!19644 (regTwo!39801 rTail!78))) b!7494641))

(assert (= (and b!7494198 (is-Union!19644 (regTwo!39801 rTail!78))) b!7494642))

(declare-fun b!7494654 () Bool)

(declare-fun e!4468796 () Bool)

(assert (=> b!7494654 (= e!4468796 tp_is_empty!49577)))

(declare-fun b!7494657 () Bool)

(declare-fun tp!2175568 () Bool)

(declare-fun tp!2175572 () Bool)

(assert (=> b!7494657 (= e!4468796 (and tp!2175568 tp!2175572))))

(declare-fun b!7494655 () Bool)

(declare-fun tp!2175569 () Bool)

(declare-fun tp!2175570 () Bool)

(assert (=> b!7494655 (= e!4468796 (and tp!2175569 tp!2175570))))

(assert (=> b!7494193 (= tp!2175454 e!4468796)))

(declare-fun b!7494656 () Bool)

(declare-fun tp!2175571 () Bool)

(assert (=> b!7494656 (= e!4468796 tp!2175571)))

(assert (= (and b!7494193 (is-ElementMatch!19644 (regOne!39801 r2!5783))) b!7494654))

(assert (= (and b!7494193 (is-Concat!28489 (regOne!39801 r2!5783))) b!7494655))

(assert (= (and b!7494193 (is-Star!19644 (regOne!39801 r2!5783))) b!7494656))

(assert (= (and b!7494193 (is-Union!19644 (regOne!39801 r2!5783))) b!7494657))

(declare-fun b!7494658 () Bool)

(declare-fun e!4468797 () Bool)

(assert (=> b!7494658 (= e!4468797 tp_is_empty!49577)))

(declare-fun b!7494661 () Bool)

(declare-fun tp!2175573 () Bool)

(declare-fun tp!2175577 () Bool)

(assert (=> b!7494661 (= e!4468797 (and tp!2175573 tp!2175577))))

(declare-fun b!7494659 () Bool)

(declare-fun tp!2175574 () Bool)

(declare-fun tp!2175575 () Bool)

(assert (=> b!7494659 (= e!4468797 (and tp!2175574 tp!2175575))))

(assert (=> b!7494193 (= tp!2175462 e!4468797)))

(declare-fun b!7494660 () Bool)

(declare-fun tp!2175576 () Bool)

(assert (=> b!7494660 (= e!4468797 tp!2175576)))

(assert (= (and b!7494193 (is-ElementMatch!19644 (regTwo!39801 r2!5783))) b!7494658))

(assert (= (and b!7494193 (is-Concat!28489 (regTwo!39801 r2!5783))) b!7494659))

(assert (= (and b!7494193 (is-Star!19644 (regTwo!39801 r2!5783))) b!7494660))

(assert (= (and b!7494193 (is-Union!19644 (regTwo!39801 r2!5783))) b!7494661))

(declare-fun b!7494662 () Bool)

(declare-fun e!4468798 () Bool)

(assert (=> b!7494662 (= e!4468798 tp_is_empty!49577)))

(declare-fun b!7494665 () Bool)

(declare-fun tp!2175578 () Bool)

(declare-fun tp!2175582 () Bool)

(assert (=> b!7494665 (= e!4468798 (and tp!2175578 tp!2175582))))

(declare-fun b!7494663 () Bool)

(declare-fun tp!2175579 () Bool)

(declare-fun tp!2175580 () Bool)

(assert (=> b!7494663 (= e!4468798 (and tp!2175579 tp!2175580))))

(assert (=> b!7494187 (= tp!2175455 e!4468798)))

(declare-fun b!7494664 () Bool)

(declare-fun tp!2175581 () Bool)

(assert (=> b!7494664 (= e!4468798 tp!2175581)))

(assert (= (and b!7494187 (is-ElementMatch!19644 (regOne!39801 r1!5845))) b!7494662))

(assert (= (and b!7494187 (is-Concat!28489 (regOne!39801 r1!5845))) b!7494663))

(assert (= (and b!7494187 (is-Star!19644 (regOne!39801 r1!5845))) b!7494664))

(assert (= (and b!7494187 (is-Union!19644 (regOne!39801 r1!5845))) b!7494665))

(declare-fun b!7494666 () Bool)

(declare-fun e!4468799 () Bool)

(assert (=> b!7494666 (= e!4468799 tp_is_empty!49577)))

(declare-fun b!7494669 () Bool)

(declare-fun tp!2175583 () Bool)

(declare-fun tp!2175587 () Bool)

(assert (=> b!7494669 (= e!4468799 (and tp!2175583 tp!2175587))))

(declare-fun b!7494667 () Bool)

(declare-fun tp!2175584 () Bool)

(declare-fun tp!2175585 () Bool)

(assert (=> b!7494667 (= e!4468799 (and tp!2175584 tp!2175585))))

(assert (=> b!7494187 (= tp!2175460 e!4468799)))

(declare-fun b!7494668 () Bool)

(declare-fun tp!2175586 () Bool)

(assert (=> b!7494668 (= e!4468799 tp!2175586)))

(assert (= (and b!7494187 (is-ElementMatch!19644 (regTwo!39801 r1!5845))) b!7494666))

(assert (= (and b!7494187 (is-Concat!28489 (regTwo!39801 r1!5845))) b!7494667))

(assert (= (and b!7494187 (is-Star!19644 (regTwo!39801 r1!5845))) b!7494668))

(assert (= (and b!7494187 (is-Union!19644 (regTwo!39801 r1!5845))) b!7494669))

(declare-fun b!7494670 () Bool)

(declare-fun e!4468800 () Bool)

(assert (=> b!7494670 (= e!4468800 tp_is_empty!49577)))

(declare-fun b!7494673 () Bool)

(declare-fun tp!2175588 () Bool)

(declare-fun tp!2175592 () Bool)

(assert (=> b!7494673 (= e!4468800 (and tp!2175588 tp!2175592))))

(declare-fun b!7494671 () Bool)

(declare-fun tp!2175589 () Bool)

(declare-fun tp!2175590 () Bool)

(assert (=> b!7494671 (= e!4468800 (and tp!2175589 tp!2175590))))

(assert (=> b!7494186 (= tp!2175469 e!4468800)))

(declare-fun b!7494672 () Bool)

(declare-fun tp!2175591 () Bool)

(assert (=> b!7494672 (= e!4468800 tp!2175591)))

(assert (= (and b!7494186 (is-ElementMatch!19644 (regOne!39800 r2!5783))) b!7494670))

(assert (= (and b!7494186 (is-Concat!28489 (regOne!39800 r2!5783))) b!7494671))

(assert (= (and b!7494186 (is-Star!19644 (regOne!39800 r2!5783))) b!7494672))

(assert (= (and b!7494186 (is-Union!19644 (regOne!39800 r2!5783))) b!7494673))

(declare-fun b!7494674 () Bool)

(declare-fun e!4468801 () Bool)

(assert (=> b!7494674 (= e!4468801 tp_is_empty!49577)))

(declare-fun b!7494677 () Bool)

(declare-fun tp!2175593 () Bool)

(declare-fun tp!2175597 () Bool)

(assert (=> b!7494677 (= e!4468801 (and tp!2175593 tp!2175597))))

(declare-fun b!7494675 () Bool)

(declare-fun tp!2175594 () Bool)

(declare-fun tp!2175595 () Bool)

(assert (=> b!7494675 (= e!4468801 (and tp!2175594 tp!2175595))))

(assert (=> b!7494186 (= tp!2175456 e!4468801)))

(declare-fun b!7494676 () Bool)

(declare-fun tp!2175596 () Bool)

(assert (=> b!7494676 (= e!4468801 tp!2175596)))

(assert (= (and b!7494186 (is-ElementMatch!19644 (regTwo!39800 r2!5783))) b!7494674))

(assert (= (and b!7494186 (is-Concat!28489 (regTwo!39800 r2!5783))) b!7494675))

(assert (= (and b!7494186 (is-Star!19644 (regTwo!39800 r2!5783))) b!7494676))

(assert (= (and b!7494186 (is-Union!19644 (regTwo!39800 r2!5783))) b!7494677))

(declare-fun b!7494678 () Bool)

(declare-fun e!4468802 () Bool)

(assert (=> b!7494678 (= e!4468802 tp_is_empty!49577)))

(declare-fun b!7494681 () Bool)

(declare-fun tp!2175598 () Bool)

(declare-fun tp!2175602 () Bool)

(assert (=> b!7494681 (= e!4468802 (and tp!2175598 tp!2175602))))

(declare-fun b!7494679 () Bool)

(declare-fun tp!2175599 () Bool)

(declare-fun tp!2175600 () Bool)

(assert (=> b!7494679 (= e!4468802 (and tp!2175599 tp!2175600))))

(assert (=> b!7494190 (= tp!2175466 e!4468802)))

(declare-fun b!7494680 () Bool)

(declare-fun tp!2175601 () Bool)

(assert (=> b!7494680 (= e!4468802 tp!2175601)))

(assert (= (and b!7494190 (is-ElementMatch!19644 (reg!19973 r2!5783))) b!7494678))

(assert (= (and b!7494190 (is-Concat!28489 (reg!19973 r2!5783))) b!7494679))

(assert (= (and b!7494190 (is-Star!19644 (reg!19973 r2!5783))) b!7494680))

(assert (= (and b!7494190 (is-Union!19644 (reg!19973 r2!5783))) b!7494681))

(declare-fun b!7494686 () Bool)

(declare-fun e!4468805 () Bool)

(declare-fun tp!2175605 () Bool)

(assert (=> b!7494686 (= e!4468805 (and tp_is_empty!49577 tp!2175605))))

(assert (=> b!7494184 (= tp!2175463 e!4468805)))

(assert (= (and b!7494184 (is-Cons!72234 (t!386927 s!13591))) b!7494686))

(push 1)

(assert (not b!7494374))

(assert (not b!7494614))

(assert (not b!7494680))

(assert (not b!7494638))

(assert (not b!7494331))

(assert (not b!7494526))

(assert (not b!7494667))

(assert (not b!7494622))

(assert (not d!2301576))

(assert (not b!7494552))

(assert (not b!7494533))

(assert (not b!7494659))

(assert (not b!7494512))

(assert (not b!7494620))

(assert (not b!7494365))

(assert (not b!7494531))

(assert (not d!2301598))

(assert (not b!7494632))

(assert (not b!7494551))

(assert (not b!7494502))

(assert (not bm!688005))

(assert (not bm!687975))

(assert (not b!7494565))

(assert (not b!7494669))

(assert (not b!7494438))

(assert (not d!2301572))

(assert (not bm!688003))

(assert (not b!7494664))

(assert (not b!7494618))

(assert (not b!7494621))

(assert (not bm!687972))

(assert (not b!7494505))

(assert (not b!7494686))

(assert (not b!7494383))

(assert (not b!7494636))

(assert (not bm!687974))

(assert (not d!2301574))

(assert (not b!7494616))

(assert (not b!7494676))

(assert (not b!7494560))

(assert (not b!7494518))

(assert (not b!7494504))

(assert (not b!7494634))

(assert (not b!7494629))

(assert (not bm!688004))

(assert (not bm!687980))

(assert (not b!7494633))

(assert (not bm!687978))

(assert (not bm!687977))

(assert (not b!7494677))

(assert (not b!7494519))

(assert (not b!7494624))

(assert (not b!7494527))

(assert (not b!7494613))

(assert (not b!7494561))

(assert (not b!7494641))

(assert (not b!7494326))

(assert (not b!7494626))

(assert (not b!7494545))

(assert (not b!7494660))

(assert (not b!7494516))

(assert (not b!7494640))

(assert (not b!7494553))

(assert (not b!7494625))

(assert (not b!7494628))

(assert (not b!7494657))

(assert (not b!7494617))

(assert (not b!7494673))

(assert (not b!7494642))

(assert (not bm!688000))

(assert (not b!7494661))

(assert (not d!2301580))

(assert (not b!7494630))

(assert (not bm!687992))

(assert (not bm!687999))

(assert (not b!7494513))

(assert (not b!7494328))

(assert (not b!7494612))

(assert (not b!7494334))

(assert (not d!2301600))

(assert (not d!2301608))

(assert (not bm!687995))

(assert (not d!2301612))

(assert (not b!7494436))

(assert (not d!2301604))

(assert (not b!7494655))

(assert (not b!7494550))

(assert (not b!7494517))

(assert (not bm!688006))

(assert (not b!7494679))

(assert (not b!7494665))

(assert (not b!7494671))

(assert (not b!7494656))

(assert (not b!7494681))

(assert (not bm!687991))

(assert (not b!7494675))

(assert (not bm!688001))

(assert (not d!2301568))

(assert (not b!7494663))

(assert tp_is_empty!49577)

(assert (not b!7494672))

(assert (not b!7494637))

(assert (not d!2301570))

(assert (not d!2301594))

(assert (not b!7494567))

(assert (not b!7494329))

(assert (not bm!687996))

(assert (not b!7494668))

(assert (not b!7494327))

(assert (not b!7494503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

