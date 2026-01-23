; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!86056 () Bool)

(assert start!86056)

(declare-fun b!967630 () Bool)

(assert (=> b!967630 true))

(assert (=> b!967630 true))

(assert (=> b!967630 true))

(declare-fun lambda!34116 () Int)

(declare-fun lambda!34115 () Int)

(assert (=> b!967630 (not (= lambda!34116 lambda!34115))))

(assert (=> b!967630 true))

(assert (=> b!967630 true))

(assert (=> b!967630 true))

(declare-fun bs!242054 () Bool)

(declare-fun b!967634 () Bool)

(assert (= bs!242054 (and b!967634 b!967630)))

(declare-fun lambda!34117 () Int)

(declare-datatypes ((C!5950 0))(
  ( (C!5951 (val!3223 Int)) )
))
(declare-datatypes ((Regex!2690 0))(
  ( (ElementMatch!2690 (c!157721 C!5950)) (Concat!4523 (regOne!5892 Regex!2690) (regTwo!5892 Regex!2690)) (EmptyExpr!2690) (Star!2690 (reg!3019 Regex!2690)) (EmptyLang!2690) (Union!2690 (regOne!5893 Regex!2690) (regTwo!5893 Regex!2690)) )
))
(declare-fun lt!348251 () Regex!2690)

(declare-fun lt!348253 () Regex!2690)

(declare-fun r!15766 () Regex!2690)

(declare-fun lt!348238 () Regex!2690)

(assert (=> bs!242054 (= (and (= lt!348238 (reg!3019 r!15766)) (= lt!348253 lt!348251)) (= lambda!34117 lambda!34115))))

(assert (=> bs!242054 (not (= lambda!34117 lambda!34116))))

(assert (=> b!967634 true))

(assert (=> b!967634 true))

(assert (=> b!967634 true))

(declare-fun lambda!34118 () Int)

(assert (=> bs!242054 (not (= lambda!34118 lambda!34115))))

(assert (=> bs!242054 (= (and (= lt!348238 (reg!3019 r!15766)) (= lt!348253 lt!348251)) (= lambda!34118 lambda!34116))))

(assert (=> b!967634 (not (= lambda!34118 lambda!34117))))

(assert (=> b!967634 true))

(assert (=> b!967634 true))

(assert (=> b!967634 true))

(declare-fun b!967622 () Bool)

(declare-fun e!624164 () Bool)

(declare-fun e!624167 () Bool)

(assert (=> b!967622 (= e!624164 e!624167)))

(declare-fun res!439907 () Bool)

(assert (=> b!967622 (=> res!439907 e!624167)))

(declare-fun lt!348252 () Int)

(declare-fun lt!348250 () Int)

(assert (=> b!967622 (= res!439907 (not (= lt!348252 lt!348250)))))

(declare-datatypes ((List!9920 0))(
  ( (Nil!9904) (Cons!9904 (h!15305 C!5950) (t!100966 List!9920)) )
))
(declare-fun s!10566 () List!9920)

(declare-fun size!7940 (List!9920) Int)

(assert (=> b!967622 (= lt!348250 (size!7940 s!10566))))

(declare-datatypes ((tuple2!11258 0))(
  ( (tuple2!11259 (_1!6455 List!9920) (_2!6455 List!9920)) )
))
(declare-fun lt!348246 () tuple2!11258)

(assert (=> b!967622 (= lt!348252 (size!7940 (_2!6455 lt!348246)))))

(declare-fun matchR!1228 (Regex!2690 List!9920) Bool)

(assert (=> b!967622 (matchR!1228 (reg!3019 r!15766) (_1!6455 lt!348246))))

(declare-datatypes ((Unit!15035 0))(
  ( (Unit!15036) )
))
(declare-fun lt!348239 () Unit!15035)

(declare-fun lemmaRemoveUselessConcatSound!189 (Regex!2690 List!9920) Unit!15035)

(assert (=> b!967622 (= lt!348239 (lemmaRemoveUselessConcatSound!189 (reg!3019 r!15766) (_1!6455 lt!348246)))))

(declare-fun b!967623 () Bool)

(declare-fun res!439902 () Bool)

(declare-fun e!624161 () Bool)

(assert (=> b!967623 (=> res!439902 e!624161)))

(declare-fun isEmpty!6210 (List!9920) Bool)

(assert (=> b!967623 (= res!439902 (not (isEmpty!6210 (_1!6455 lt!348246))))))

(declare-fun b!967624 () Bool)

(declare-fun e!624166 () Bool)

(declare-fun tp_is_empty!5023 () Bool)

(declare-fun tp!296680 () Bool)

(assert (=> b!967624 (= e!624166 (and tp_is_empty!5023 tp!296680))))

(declare-fun b!967625 () Bool)

(declare-fun res!439899 () Bool)

(assert (=> b!967625 (=> res!439899 e!624164)))

(assert (=> b!967625 (= res!439899 (not (matchR!1228 lt!348253 (_2!6455 lt!348246))))))

(declare-fun b!967626 () Bool)

(declare-fun nullable!816 (Regex!2690) Bool)

(assert (=> b!967626 (= e!624161 (nullable!816 (reg!3019 r!15766)))))

(declare-fun matchRSpec!491 (Regex!2690 List!9920) Bool)

(assert (=> b!967626 (matchRSpec!491 (reg!3019 r!15766) (_1!6455 lt!348246))))

(declare-fun lt!348249 () Unit!15035)

(declare-fun mainMatchTheorem!491 (Regex!2690 List!9920) Unit!15035)

(assert (=> b!967626 (= lt!348249 (mainMatchTheorem!491 (reg!3019 r!15766) (_1!6455 lt!348246)))))

(declare-fun b!967627 () Bool)

(declare-fun e!624168 () Bool)

(declare-fun e!624162 () Bool)

(assert (=> b!967627 (= e!624168 (not e!624162))))

(declare-fun res!439903 () Bool)

(assert (=> b!967627 (=> res!439903 e!624162)))

(declare-fun lt!348241 () Bool)

(assert (=> b!967627 (= res!439903 (or lt!348241 (and (is-Concat!4523 r!15766) (is-EmptyExpr!2690 (regOne!5892 r!15766))) (and (is-Concat!4523 r!15766) (is-EmptyExpr!2690 (regTwo!5892 r!15766))) (is-Concat!4523 r!15766) (is-Union!2690 r!15766) (not (is-Star!2690 r!15766))))))

(assert (=> b!967627 (= lt!348241 (matchRSpec!491 r!15766 s!10566))))

(assert (=> b!967627 (= lt!348241 (matchR!1228 r!15766 s!10566))))

(declare-fun lt!348245 () Unit!15035)

(assert (=> b!967627 (= lt!348245 (mainMatchTheorem!491 r!15766 s!10566))))

(declare-fun b!967628 () Bool)

(declare-fun res!439908 () Bool)

(assert (=> b!967628 (=> res!439908 e!624167)))

(declare-fun ++!2678 (List!9920 List!9920) List!9920)

(assert (=> b!967628 (= res!439908 (not (= (++!2678 (_1!6455 lt!348246) (_2!6455 lt!348246)) s!10566)))))

(declare-fun res!439909 () Bool)

(assert (=> start!86056 (=> (not res!439909) (not e!624168))))

(declare-fun validRegex!1159 (Regex!2690) Bool)

(assert (=> start!86056 (= res!439909 (validRegex!1159 r!15766))))

(assert (=> start!86056 e!624168))

(declare-fun e!624163 () Bool)

(assert (=> start!86056 e!624163))

(assert (=> start!86056 e!624166))

(declare-fun b!967629 () Bool)

(declare-fun e!624160 () Bool)

(assert (=> b!967629 (= e!624160 e!624164)))

(declare-fun res!439905 () Bool)

(assert (=> b!967629 (=> res!439905 e!624164)))

(assert (=> b!967629 (= res!439905 (not (matchR!1228 lt!348238 (_1!6455 lt!348246))))))

(declare-datatypes ((Option!2271 0))(
  ( (None!2270) (Some!2270 (v!19687 tuple2!11258)) )
))
(declare-fun lt!348243 () Option!2271)

(declare-fun get!3400 (Option!2271) tuple2!11258)

(assert (=> b!967629 (= lt!348246 (get!3400 lt!348243))))

(declare-fun e!624165 () Bool)

(assert (=> b!967630 (= e!624162 e!624165)))

(declare-fun res!439906 () Bool)

(assert (=> b!967630 (=> res!439906 e!624165)))

(assert (=> b!967630 (= res!439906 (not (matchR!1228 lt!348253 s!10566)))))

(assert (=> b!967630 (= lt!348253 (Star!2690 lt!348238))))

(declare-fun removeUselessConcat!337 (Regex!2690) Regex!2690)

(assert (=> b!967630 (= lt!348238 (removeUselessConcat!337 (reg!3019 r!15766)))))

(declare-fun Exists!433 (Int) Bool)

(assert (=> b!967630 (= (Exists!433 lambda!34115) (Exists!433 lambda!34116))))

(declare-fun lt!348247 () Unit!15035)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!151 (Regex!2690 List!9920) Unit!15035)

(assert (=> b!967630 (= lt!348247 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!151 (reg!3019 r!15766) s!10566))))

(declare-fun isDefined!1913 (Option!2271) Bool)

(declare-fun findConcatSeparation!377 (Regex!2690 Regex!2690 List!9920 List!9920 List!9920) Option!2271)

(assert (=> b!967630 (= (isDefined!1913 (findConcatSeparation!377 (reg!3019 r!15766) lt!348251 Nil!9904 s!10566 s!10566)) (Exists!433 lambda!34115))))

(declare-fun lt!348240 () Unit!15035)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!377 (Regex!2690 Regex!2690 List!9920) Unit!15035)

(assert (=> b!967630 (= lt!348240 (lemmaFindConcatSeparationEquivalentToExists!377 (reg!3019 r!15766) lt!348251 s!10566))))

(assert (=> b!967630 (= lt!348251 (Star!2690 (reg!3019 r!15766)))))

(declare-fun b!967631 () Bool)

(assert (=> b!967631 (= e!624167 e!624161)))

(declare-fun res!439901 () Bool)

(assert (=> b!967631 (=> res!439901 e!624161)))

(declare-fun lt!348244 () Int)

(assert (=> b!967631 (= res!439901 (or (not (= (+ lt!348244 lt!348252) lt!348250)) (not (= lt!348244 0))))))

(assert (=> b!967631 (= lt!348244 (size!7940 (_1!6455 lt!348246)))))

(declare-fun b!967632 () Bool)

(assert (=> b!967632 (= e!624163 tp_is_empty!5023)))

(declare-fun b!967633 () Bool)

(declare-fun tp!296681 () Bool)

(assert (=> b!967633 (= e!624163 tp!296681)))

(assert (=> b!967634 (= e!624165 e!624160)))

(declare-fun res!439904 () Bool)

(assert (=> b!967634 (=> res!439904 e!624160)))

(assert (=> b!967634 (= res!439904 (isEmpty!6210 s!10566))))

(assert (=> b!967634 (= (Exists!433 lambda!34117) (Exists!433 lambda!34118))))

(declare-fun lt!348237 () Unit!15035)

(assert (=> b!967634 (= lt!348237 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!151 lt!348238 s!10566))))

(declare-fun lt!348242 () Bool)

(assert (=> b!967634 (= lt!348242 (Exists!433 lambda!34117))))

(assert (=> b!967634 (= lt!348242 (isDefined!1913 lt!348243))))

(assert (=> b!967634 (= lt!348243 (findConcatSeparation!377 lt!348238 lt!348253 Nil!9904 s!10566 s!10566))))

(declare-fun lt!348236 () Unit!15035)

(assert (=> b!967634 (= lt!348236 (lemmaFindConcatSeparationEquivalentToExists!377 lt!348238 lt!348253 s!10566))))

(assert (=> b!967634 (matchRSpec!491 lt!348253 s!10566)))

(declare-fun lt!348248 () Unit!15035)

(assert (=> b!967634 (= lt!348248 (mainMatchTheorem!491 lt!348253 s!10566))))

(declare-fun b!967635 () Bool)

(declare-fun tp!296678 () Bool)

(declare-fun tp!296677 () Bool)

(assert (=> b!967635 (= e!624163 (and tp!296678 tp!296677))))

(declare-fun b!967636 () Bool)

(declare-fun tp!296679 () Bool)

(declare-fun tp!296682 () Bool)

(assert (=> b!967636 (= e!624163 (and tp!296679 tp!296682))))

(declare-fun b!967637 () Bool)

(declare-fun res!439900 () Bool)

(assert (=> b!967637 (=> res!439900 e!624160)))

(assert (=> b!967637 (= res!439900 (not lt!348242))))

(assert (= (and start!86056 res!439909) b!967627))

(assert (= (and b!967627 (not res!439903)) b!967630))

(assert (= (and b!967630 (not res!439906)) b!967634))

(assert (= (and b!967634 (not res!439904)) b!967637))

(assert (= (and b!967637 (not res!439900)) b!967629))

(assert (= (and b!967629 (not res!439905)) b!967625))

(assert (= (and b!967625 (not res!439899)) b!967622))

(assert (= (and b!967622 (not res!439907)) b!967628))

(assert (= (and b!967628 (not res!439908)) b!967631))

(assert (= (and b!967631 (not res!439901)) b!967623))

(assert (= (and b!967623 (not res!439902)) b!967626))

(assert (= (and start!86056 (is-ElementMatch!2690 r!15766)) b!967632))

(assert (= (and start!86056 (is-Concat!4523 r!15766)) b!967635))

(assert (= (and start!86056 (is-Star!2690 r!15766)) b!967633))

(assert (= (and start!86056 (is-Union!2690 r!15766)) b!967636))

(assert (= (and start!86056 (is-Cons!9904 s!10566)) b!967624))

(declare-fun m!1173269 () Bool)

(assert (=> b!967622 m!1173269))

(declare-fun m!1173271 () Bool)

(assert (=> b!967622 m!1173271))

(declare-fun m!1173273 () Bool)

(assert (=> b!967622 m!1173273))

(declare-fun m!1173275 () Bool)

(assert (=> b!967622 m!1173275))

(declare-fun m!1173277 () Bool)

(assert (=> start!86056 m!1173277))

(declare-fun m!1173279 () Bool)

(assert (=> b!967627 m!1173279))

(declare-fun m!1173281 () Bool)

(assert (=> b!967627 m!1173281))

(declare-fun m!1173283 () Bool)

(assert (=> b!967627 m!1173283))

(declare-fun m!1173285 () Bool)

(assert (=> b!967630 m!1173285))

(declare-fun m!1173287 () Bool)

(assert (=> b!967630 m!1173287))

(declare-fun m!1173289 () Bool)

(assert (=> b!967630 m!1173289))

(declare-fun m!1173291 () Bool)

(assert (=> b!967630 m!1173291))

(declare-fun m!1173293 () Bool)

(assert (=> b!967630 m!1173293))

(assert (=> b!967630 m!1173285))

(declare-fun m!1173295 () Bool)

(assert (=> b!967630 m!1173295))

(declare-fun m!1173297 () Bool)

(assert (=> b!967630 m!1173297))

(declare-fun m!1173299 () Bool)

(assert (=> b!967630 m!1173299))

(assert (=> b!967630 m!1173287))

(declare-fun m!1173301 () Bool)

(assert (=> b!967625 m!1173301))

(declare-fun m!1173303 () Bool)

(assert (=> b!967628 m!1173303))

(declare-fun m!1173305 () Bool)

(assert (=> b!967631 m!1173305))

(declare-fun m!1173307 () Bool)

(assert (=> b!967626 m!1173307))

(declare-fun m!1173309 () Bool)

(assert (=> b!967626 m!1173309))

(declare-fun m!1173311 () Bool)

(assert (=> b!967626 m!1173311))

(declare-fun m!1173313 () Bool)

(assert (=> b!967634 m!1173313))

(declare-fun m!1173315 () Bool)

(assert (=> b!967634 m!1173315))

(declare-fun m!1173317 () Bool)

(assert (=> b!967634 m!1173317))

(assert (=> b!967634 m!1173313))

(declare-fun m!1173319 () Bool)

(assert (=> b!967634 m!1173319))

(declare-fun m!1173321 () Bool)

(assert (=> b!967634 m!1173321))

(declare-fun m!1173323 () Bool)

(assert (=> b!967634 m!1173323))

(declare-fun m!1173325 () Bool)

(assert (=> b!967634 m!1173325))

(declare-fun m!1173327 () Bool)

(assert (=> b!967634 m!1173327))

(declare-fun m!1173329 () Bool)

(assert (=> b!967634 m!1173329))

(declare-fun m!1173331 () Bool)

(assert (=> b!967629 m!1173331))

(declare-fun m!1173333 () Bool)

(assert (=> b!967629 m!1173333))

(declare-fun m!1173335 () Bool)

(assert (=> b!967623 m!1173335))

(push 1)

(assert (not b!967622))

(assert (not b!967629))

(assert (not b!967623))

(assert (not b!967635))

(assert (not start!86056))

(assert (not b!967630))

(assert (not b!967633))

(assert (not b!967631))

(assert (not b!967634))

(assert (not b!967624))

(assert (not b!967628))

(assert (not b!967625))

(assert (not b!967626))

(assert (not b!967627))

(assert (not b!967636))

(assert tp_is_empty!5023)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!967732 () Bool)

(declare-fun res!439975 () Bool)

(declare-fun e!624213 () Bool)

(assert (=> b!967732 (=> (not res!439975) (not e!624213))))

(declare-fun lt!348310 () List!9920)

(assert (=> b!967732 (= res!439975 (= (size!7940 lt!348310) (+ (size!7940 (_1!6455 lt!348246)) (size!7940 (_2!6455 lt!348246)))))))

(declare-fun b!967730 () Bool)

(declare-fun e!624212 () List!9920)

(assert (=> b!967730 (= e!624212 (_2!6455 lt!348246))))

(declare-fun b!967731 () Bool)

(assert (=> b!967731 (= e!624212 (Cons!9904 (h!15305 (_1!6455 lt!348246)) (++!2678 (t!100966 (_1!6455 lt!348246)) (_2!6455 lt!348246))))))

(declare-fun d!286215 () Bool)

(assert (=> d!286215 e!624213))

(declare-fun res!439976 () Bool)

(assert (=> d!286215 (=> (not res!439976) (not e!624213))))

(declare-fun content!1413 (List!9920) (Set C!5950))

(assert (=> d!286215 (= res!439976 (= (content!1413 lt!348310) (set.union (content!1413 (_1!6455 lt!348246)) (content!1413 (_2!6455 lt!348246)))))))

(assert (=> d!286215 (= lt!348310 e!624212)))

(declare-fun c!157725 () Bool)

(assert (=> d!286215 (= c!157725 (is-Nil!9904 (_1!6455 lt!348246)))))

(assert (=> d!286215 (= (++!2678 (_1!6455 lt!348246) (_2!6455 lt!348246)) lt!348310)))

(declare-fun b!967733 () Bool)

(assert (=> b!967733 (= e!624213 (or (not (= (_2!6455 lt!348246) Nil!9904)) (= lt!348310 (_1!6455 lt!348246))))))

(assert (= (and d!286215 c!157725) b!967730))

(assert (= (and d!286215 (not c!157725)) b!967731))

(assert (= (and d!286215 res!439976) b!967732))

(assert (= (and b!967732 res!439975) b!967733))

(declare-fun m!1173407 () Bool)

(assert (=> b!967732 m!1173407))

(assert (=> b!967732 m!1173305))

(assert (=> b!967732 m!1173271))

(declare-fun m!1173409 () Bool)

(assert (=> b!967731 m!1173409))

(declare-fun m!1173411 () Bool)

(assert (=> d!286215 m!1173411))

(declare-fun m!1173413 () Bool)

(assert (=> d!286215 m!1173413))

(declare-fun m!1173415 () Bool)

(assert (=> d!286215 m!1173415))

(assert (=> b!967628 d!286215))

(declare-fun b!967780 () Bool)

(declare-fun e!624243 () Option!2271)

(assert (=> b!967780 (= e!624243 (Some!2270 (tuple2!11259 Nil!9904 s!10566)))))

(declare-fun b!967781 () Bool)

(declare-fun e!624242 () Bool)

(assert (=> b!967781 (= e!624242 (matchR!1228 lt!348253 s!10566))))

(declare-fun d!286219 () Bool)

(declare-fun e!624240 () Bool)

(assert (=> d!286219 e!624240))

(declare-fun res!440003 () Bool)

(assert (=> d!286219 (=> res!440003 e!624240)))

(declare-fun e!624244 () Bool)

(assert (=> d!286219 (= res!440003 e!624244)))

(declare-fun res!440002 () Bool)

(assert (=> d!286219 (=> (not res!440002) (not e!624244))))

(declare-fun lt!348319 () Option!2271)

(assert (=> d!286219 (= res!440002 (isDefined!1913 lt!348319))))

(assert (=> d!286219 (= lt!348319 e!624243)))

(declare-fun c!157738 () Bool)

(assert (=> d!286219 (= c!157738 e!624242)))

(declare-fun res!439999 () Bool)

(assert (=> d!286219 (=> (not res!439999) (not e!624242))))

(assert (=> d!286219 (= res!439999 (matchR!1228 lt!348238 Nil!9904))))

(assert (=> d!286219 (validRegex!1159 lt!348238)))

(assert (=> d!286219 (= (findConcatSeparation!377 lt!348238 lt!348253 Nil!9904 s!10566 s!10566) lt!348319)))

(declare-fun b!967782 () Bool)

(declare-fun e!624241 () Option!2271)

(assert (=> b!967782 (= e!624243 e!624241)))

(declare-fun c!157739 () Bool)

(assert (=> b!967782 (= c!157739 (is-Nil!9904 s!10566))))

(declare-fun b!967783 () Bool)

(declare-fun res!440000 () Bool)

(assert (=> b!967783 (=> (not res!440000) (not e!624244))))

(assert (=> b!967783 (= res!440000 (matchR!1228 lt!348238 (_1!6455 (get!3400 lt!348319))))))

(declare-fun b!967784 () Bool)

(declare-fun res!440001 () Bool)

(assert (=> b!967784 (=> (not res!440001) (not e!624244))))

(assert (=> b!967784 (= res!440001 (matchR!1228 lt!348253 (_2!6455 (get!3400 lt!348319))))))

(declare-fun b!967785 () Bool)

(assert (=> b!967785 (= e!624240 (not (isDefined!1913 lt!348319)))))

(declare-fun b!967786 () Bool)

(assert (=> b!967786 (= e!624241 None!2270)))

(declare-fun b!967787 () Bool)

(assert (=> b!967787 (= e!624244 (= (++!2678 (_1!6455 (get!3400 lt!348319)) (_2!6455 (get!3400 lt!348319))) s!10566))))

(declare-fun b!967788 () Bool)

(declare-fun lt!348317 () Unit!15035)

(declare-fun lt!348318 () Unit!15035)

(assert (=> b!967788 (= lt!348317 lt!348318)))

(assert (=> b!967788 (= (++!2678 (++!2678 Nil!9904 (Cons!9904 (h!15305 s!10566) Nil!9904)) (t!100966 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!279 (List!9920 C!5950 List!9920 List!9920) Unit!15035)

(assert (=> b!967788 (= lt!348318 (lemmaMoveElementToOtherListKeepsConcatEq!279 Nil!9904 (h!15305 s!10566) (t!100966 s!10566) s!10566))))

(assert (=> b!967788 (= e!624241 (findConcatSeparation!377 lt!348238 lt!348253 (++!2678 Nil!9904 (Cons!9904 (h!15305 s!10566) Nil!9904)) (t!100966 s!10566) s!10566))))

(assert (= (and d!286219 res!439999) b!967781))

(assert (= (and d!286219 c!157738) b!967780))

(assert (= (and d!286219 (not c!157738)) b!967782))

(assert (= (and b!967782 c!157739) b!967786))

(assert (= (and b!967782 (not c!157739)) b!967788))

(assert (= (and d!286219 res!440002) b!967783))

(assert (= (and b!967783 res!440000) b!967784))

(assert (= (and b!967784 res!440001) b!967787))

(assert (= (and d!286219 (not res!440003)) b!967785))

(declare-fun m!1173417 () Bool)

(assert (=> b!967787 m!1173417))

(declare-fun m!1173419 () Bool)

(assert (=> b!967787 m!1173419))

(assert (=> b!967781 m!1173297))

(assert (=> b!967783 m!1173417))

(declare-fun m!1173421 () Bool)

(assert (=> b!967783 m!1173421))

(declare-fun m!1173423 () Bool)

(assert (=> b!967785 m!1173423))

(assert (=> b!967784 m!1173417))

(declare-fun m!1173425 () Bool)

(assert (=> b!967784 m!1173425))

(assert (=> d!286219 m!1173423))

(declare-fun m!1173427 () Bool)

(assert (=> d!286219 m!1173427))

(declare-fun m!1173429 () Bool)

(assert (=> d!286219 m!1173429))

(declare-fun m!1173431 () Bool)

(assert (=> b!967788 m!1173431))

(assert (=> b!967788 m!1173431))

(declare-fun m!1173433 () Bool)

(assert (=> b!967788 m!1173433))

(declare-fun m!1173435 () Bool)

(assert (=> b!967788 m!1173435))

(assert (=> b!967788 m!1173431))

(declare-fun m!1173437 () Bool)

(assert (=> b!967788 m!1173437))

(assert (=> b!967634 d!286219))

(declare-fun d!286221 () Bool)

(assert (=> d!286221 (= (isEmpty!6210 s!10566) (is-Nil!9904 s!10566))))

(assert (=> b!967634 d!286221))

(declare-fun bs!242057 () Bool)

(declare-fun d!286223 () Bool)

(assert (= bs!242057 (and d!286223 b!967630)))

(declare-fun lambda!34143 () Int)

(assert (=> bs!242057 (= (and (= lt!348238 (reg!3019 r!15766)) (= (Star!2690 lt!348238) lt!348251)) (= lambda!34143 lambda!34115))))

(assert (=> bs!242057 (not (= lambda!34143 lambda!34116))))

(declare-fun bs!242058 () Bool)

(assert (= bs!242058 (and d!286223 b!967634)))

(assert (=> bs!242058 (= (= (Star!2690 lt!348238) lt!348253) (= lambda!34143 lambda!34117))))

(assert (=> bs!242058 (not (= lambda!34143 lambda!34118))))

(assert (=> d!286223 true))

(assert (=> d!286223 true))

(declare-fun lambda!34144 () Int)

(assert (=> bs!242058 (not (= lambda!34144 lambda!34117))))

(declare-fun bs!242059 () Bool)

(assert (= bs!242059 d!286223))

(assert (=> bs!242059 (not (= lambda!34144 lambda!34143))))

(assert (=> bs!242057 (= (and (= lt!348238 (reg!3019 r!15766)) (= (Star!2690 lt!348238) lt!348251)) (= lambda!34144 lambda!34116))))

(assert (=> bs!242057 (not (= lambda!34144 lambda!34115))))

(assert (=> bs!242058 (= (= (Star!2690 lt!348238) lt!348253) (= lambda!34144 lambda!34118))))

(assert (=> d!286223 true))

(assert (=> d!286223 true))

(assert (=> d!286223 (= (Exists!433 lambda!34143) (Exists!433 lambda!34144))))

(declare-fun lt!348322 () Unit!15035)

(declare-fun choose!6111 (Regex!2690 List!9920) Unit!15035)

(assert (=> d!286223 (= lt!348322 (choose!6111 lt!348238 s!10566))))

(assert (=> d!286223 (validRegex!1159 lt!348238)))

(assert (=> d!286223 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!151 lt!348238 s!10566) lt!348322)))

(declare-fun m!1173439 () Bool)

(assert (=> bs!242059 m!1173439))

(declare-fun m!1173441 () Bool)

(assert (=> bs!242059 m!1173441))

(declare-fun m!1173443 () Bool)

(assert (=> bs!242059 m!1173443))

(assert (=> bs!242059 m!1173429))

(assert (=> b!967634 d!286223))

(declare-fun bs!242065 () Bool)

(declare-fun b!967850 () Bool)

(assert (= bs!242065 (and b!967850 b!967634)))

(declare-fun lambda!34151 () Int)

(assert (=> bs!242065 (not (= lambda!34151 lambda!34117))))

(declare-fun bs!242066 () Bool)

(assert (= bs!242066 (and b!967850 d!286223)))

(assert (=> bs!242066 (not (= lambda!34151 lambda!34143))))

(declare-fun bs!242067 () Bool)

(assert (= bs!242067 (and b!967850 b!967630)))

(assert (=> bs!242067 (= (and (= (reg!3019 lt!348253) (reg!3019 r!15766)) (= lt!348253 lt!348251)) (= lambda!34151 lambda!34116))))

(assert (=> bs!242067 (not (= lambda!34151 lambda!34115))))

(assert (=> bs!242065 (= (= (reg!3019 lt!348253) lt!348238) (= lambda!34151 lambda!34118))))

(assert (=> bs!242066 (= (and (= (reg!3019 lt!348253) lt!348238) (= lt!348253 (Star!2690 lt!348238))) (= lambda!34151 lambda!34144))))

(assert (=> b!967850 true))

(assert (=> b!967850 true))

(declare-fun bs!242068 () Bool)

(declare-fun b!967856 () Bool)

(assert (= bs!242068 (and b!967856 b!967634)))

(declare-fun lambda!34152 () Int)

(assert (=> bs!242068 (not (= lambda!34152 lambda!34117))))

(declare-fun bs!242069 () Bool)

(assert (= bs!242069 (and b!967856 d!286223)))

(assert (=> bs!242069 (not (= lambda!34152 lambda!34143))))

(declare-fun bs!242070 () Bool)

(assert (= bs!242070 (and b!967856 b!967850)))

(assert (=> bs!242070 (not (= lambda!34152 lambda!34151))))

(declare-fun bs!242071 () Bool)

(assert (= bs!242071 (and b!967856 b!967630)))

(assert (=> bs!242071 (not (= lambda!34152 lambda!34116))))

(assert (=> bs!242071 (not (= lambda!34152 lambda!34115))))

(assert (=> bs!242068 (not (= lambda!34152 lambda!34118))))

(assert (=> bs!242069 (not (= lambda!34152 lambda!34144))))

(assert (=> b!967856 true))

(assert (=> b!967856 true))

(declare-fun b!967846 () Bool)

(declare-fun c!157753 () Bool)

(assert (=> b!967846 (= c!157753 (is-Union!2690 lt!348253))))

(declare-fun e!624282 () Bool)

(declare-fun e!624281 () Bool)

(assert (=> b!967846 (= e!624282 e!624281)))

(declare-fun b!967847 () Bool)

(declare-fun c!157754 () Bool)

(assert (=> b!967847 (= c!157754 (is-ElementMatch!2690 lt!348253))))

(declare-fun e!624280 () Bool)

(assert (=> b!967847 (= e!624280 e!624282)))

(declare-fun b!967848 () Bool)

(declare-fun res!440038 () Bool)

(declare-fun e!624277 () Bool)

(assert (=> b!967848 (=> res!440038 e!624277)))

(declare-fun call!61253 () Bool)

(assert (=> b!967848 (= res!440038 call!61253)))

(declare-fun e!624276 () Bool)

(assert (=> b!967848 (= e!624276 e!624277)))

(declare-fun b!967849 () Bool)

(declare-fun e!624279 () Bool)

(assert (=> b!967849 (= e!624281 e!624279)))

(declare-fun res!440037 () Bool)

(assert (=> b!967849 (= res!440037 (matchRSpec!491 (regOne!5893 lt!348253) s!10566))))

(assert (=> b!967849 (=> res!440037 e!624279)))

(declare-fun d!286225 () Bool)

(declare-fun c!157752 () Bool)

(assert (=> d!286225 (= c!157752 (is-EmptyExpr!2690 lt!348253))))

(declare-fun e!624278 () Bool)

(assert (=> d!286225 (= (matchRSpec!491 lt!348253 s!10566) e!624278)))

(declare-fun call!61252 () Bool)

(assert (=> b!967850 (= e!624277 call!61252)))

(declare-fun b!967851 () Bool)

(assert (=> b!967851 (= e!624279 (matchRSpec!491 (regTwo!5893 lt!348253) s!10566))))

(declare-fun b!967852 () Bool)

(assert (=> b!967852 (= e!624282 (= s!10566 (Cons!9904 (c!157721 lt!348253) Nil!9904)))))

(declare-fun b!967853 () Bool)

(assert (=> b!967853 (= e!624281 e!624276)))

(declare-fun c!157755 () Bool)

(assert (=> b!967853 (= c!157755 (is-Star!2690 lt!348253))))

(declare-fun b!967854 () Bool)

(assert (=> b!967854 (= e!624278 call!61253)))

(declare-fun b!967855 () Bool)

(assert (=> b!967855 (= e!624278 e!624280)))

(declare-fun res!440039 () Bool)

(assert (=> b!967855 (= res!440039 (not (is-EmptyLang!2690 lt!348253)))))

(assert (=> b!967855 (=> (not res!440039) (not e!624280))))

(declare-fun bm!61247 () Bool)

(assert (=> bm!61247 (= call!61253 (isEmpty!6210 s!10566))))

(assert (=> b!967856 (= e!624276 call!61252)))

(declare-fun bm!61248 () Bool)

(assert (=> bm!61248 (= call!61252 (Exists!433 (ite c!157755 lambda!34151 lambda!34152)))))

(assert (= (and d!286225 c!157752) b!967854))

(assert (= (and d!286225 (not c!157752)) b!967855))

(assert (= (and b!967855 res!440039) b!967847))

(assert (= (and b!967847 c!157754) b!967852))

(assert (= (and b!967847 (not c!157754)) b!967846))

(assert (= (and b!967846 c!157753) b!967849))

(assert (= (and b!967846 (not c!157753)) b!967853))

(assert (= (and b!967849 (not res!440037)) b!967851))

(assert (= (and b!967853 c!157755) b!967848))

(assert (= (and b!967853 (not c!157755)) b!967856))

(assert (= (and b!967848 (not res!440038)) b!967850))

(assert (= (or b!967850 b!967856) bm!61248))

(assert (= (or b!967854 b!967848) bm!61247))

(declare-fun m!1173451 () Bool)

(assert (=> b!967849 m!1173451))

(declare-fun m!1173453 () Bool)

(assert (=> b!967851 m!1173453))

(assert (=> bm!61247 m!1173319))

(declare-fun m!1173455 () Bool)

(assert (=> bm!61248 m!1173455))

(assert (=> b!967634 d!286225))

(declare-fun d!286229 () Bool)

(declare-fun choose!6112 (Int) Bool)

(assert (=> d!286229 (= (Exists!433 lambda!34117) (choose!6112 lambda!34117))))

(declare-fun bs!242072 () Bool)

(assert (= bs!242072 d!286229))

(declare-fun m!1173457 () Bool)

(assert (=> bs!242072 m!1173457))

(assert (=> b!967634 d!286229))

(declare-fun d!286231 () Bool)

(assert (=> d!286231 (= (Exists!433 lambda!34118) (choose!6112 lambda!34118))))

(declare-fun bs!242073 () Bool)

(assert (= bs!242073 d!286231))

(declare-fun m!1173459 () Bool)

(assert (=> bs!242073 m!1173459))

(assert (=> b!967634 d!286231))

(declare-fun d!286233 () Bool)

(assert (=> d!286233 (= (matchR!1228 lt!348253 s!10566) (matchRSpec!491 lt!348253 s!10566))))

(declare-fun lt!348328 () Unit!15035)

(declare-fun choose!6113 (Regex!2690 List!9920) Unit!15035)

(assert (=> d!286233 (= lt!348328 (choose!6113 lt!348253 s!10566))))

(assert (=> d!286233 (validRegex!1159 lt!348253)))

(assert (=> d!286233 (= (mainMatchTheorem!491 lt!348253 s!10566) lt!348328)))

(declare-fun bs!242075 () Bool)

(assert (= bs!242075 d!286233))

(assert (=> bs!242075 m!1173297))

(assert (=> bs!242075 m!1173315))

(declare-fun m!1173465 () Bool)

(assert (=> bs!242075 m!1173465))

(declare-fun m!1173467 () Bool)

(assert (=> bs!242075 m!1173467))

(assert (=> b!967634 d!286233))

(declare-fun d!286237 () Bool)

(declare-fun isEmpty!6212 (Option!2271) Bool)

(assert (=> d!286237 (= (isDefined!1913 lt!348243) (not (isEmpty!6212 lt!348243)))))

(declare-fun bs!242076 () Bool)

(assert (= bs!242076 d!286237))

(declare-fun m!1173469 () Bool)

(assert (=> bs!242076 m!1173469))

(assert (=> b!967634 d!286237))

(declare-fun bs!242077 () Bool)

(declare-fun d!286239 () Bool)

(assert (= bs!242077 (and d!286239 b!967856)))

(declare-fun lambda!34155 () Int)

(assert (=> bs!242077 (not (= lambda!34155 lambda!34152))))

(declare-fun bs!242078 () Bool)

(assert (= bs!242078 (and d!286239 b!967634)))

(assert (=> bs!242078 (= lambda!34155 lambda!34117)))

(declare-fun bs!242079 () Bool)

(assert (= bs!242079 (and d!286239 d!286223)))

(assert (=> bs!242079 (= (= lt!348253 (Star!2690 lt!348238)) (= lambda!34155 lambda!34143))))

(declare-fun bs!242080 () Bool)

(assert (= bs!242080 (and d!286239 b!967850)))

(assert (=> bs!242080 (not (= lambda!34155 lambda!34151))))

(declare-fun bs!242081 () Bool)

(assert (= bs!242081 (and d!286239 b!967630)))

(assert (=> bs!242081 (not (= lambda!34155 lambda!34116))))

(assert (=> bs!242081 (= (and (= lt!348238 (reg!3019 r!15766)) (= lt!348253 lt!348251)) (= lambda!34155 lambda!34115))))

(assert (=> bs!242078 (not (= lambda!34155 lambda!34118))))

(assert (=> bs!242079 (not (= lambda!34155 lambda!34144))))

(assert (=> d!286239 true))

(assert (=> d!286239 true))

(assert (=> d!286239 true))

(assert (=> d!286239 (= (isDefined!1913 (findConcatSeparation!377 lt!348238 lt!348253 Nil!9904 s!10566 s!10566)) (Exists!433 lambda!34155))))

(declare-fun lt!348331 () Unit!15035)

(declare-fun choose!6114 (Regex!2690 Regex!2690 List!9920) Unit!15035)

(assert (=> d!286239 (= lt!348331 (choose!6114 lt!348238 lt!348253 s!10566))))

(assert (=> d!286239 (validRegex!1159 lt!348238)))

(assert (=> d!286239 (= (lemmaFindConcatSeparationEquivalentToExists!377 lt!348238 lt!348253 s!10566) lt!348331)))

(declare-fun bs!242082 () Bool)

(assert (= bs!242082 d!286239))

(assert (=> bs!242082 m!1173323))

(declare-fun m!1173471 () Bool)

(assert (=> bs!242082 m!1173471))

(assert (=> bs!242082 m!1173429))

(assert (=> bs!242082 m!1173323))

(declare-fun m!1173473 () Bool)

(assert (=> bs!242082 m!1173473))

(declare-fun m!1173475 () Bool)

(assert (=> bs!242082 m!1173475))

(assert (=> b!967634 d!286239))

(declare-fun d!286241 () Bool)

(assert (=> d!286241 (= (isEmpty!6210 (_1!6455 lt!348246)) (is-Nil!9904 (_1!6455 lt!348246)))))

(assert (=> b!967623 d!286241))

(declare-fun d!286243 () Bool)

(declare-fun lt!348336 () Int)

(assert (=> d!286243 (>= lt!348336 0)))

(declare-fun e!624287 () Int)

(assert (=> d!286243 (= lt!348336 e!624287)))

(declare-fun c!157758 () Bool)

(assert (=> d!286243 (= c!157758 (is-Nil!9904 s!10566))))

(assert (=> d!286243 (= (size!7940 s!10566) lt!348336)))

(declare-fun b!967865 () Bool)

(assert (=> b!967865 (= e!624287 0)))

(declare-fun b!967866 () Bool)

(assert (=> b!967866 (= e!624287 (+ 1 (size!7940 (t!100966 s!10566))))))

(assert (= (and d!286243 c!157758) b!967865))

(assert (= (and d!286243 (not c!157758)) b!967866))

(declare-fun m!1173477 () Bool)

(assert (=> b!967866 m!1173477))

(assert (=> b!967622 d!286243))

(declare-fun d!286245 () Bool)

(declare-fun lt!348337 () Int)

(assert (=> d!286245 (>= lt!348337 0)))

(declare-fun e!624288 () Int)

(assert (=> d!286245 (= lt!348337 e!624288)))

(declare-fun c!157759 () Bool)

(assert (=> d!286245 (= c!157759 (is-Nil!9904 (_2!6455 lt!348246)))))

(assert (=> d!286245 (= (size!7940 (_2!6455 lt!348246)) lt!348337)))

(declare-fun b!967867 () Bool)

(assert (=> b!967867 (= e!624288 0)))

(declare-fun b!967868 () Bool)

(assert (=> b!967868 (= e!624288 (+ 1 (size!7940 (t!100966 (_2!6455 lt!348246)))))))

(assert (= (and d!286245 c!157759) b!967867))

(assert (= (and d!286245 (not c!157759)) b!967868))

(declare-fun m!1173479 () Bool)

(assert (=> b!967868 m!1173479))

(assert (=> b!967622 d!286245))

(declare-fun b!967901 () Bool)

(declare-fun e!624307 () Bool)

(declare-fun derivativeStep!624 (Regex!2690 C!5950) Regex!2690)

(declare-fun head!1777 (List!9920) C!5950)

(declare-fun tail!1339 (List!9920) List!9920)

(assert (=> b!967901 (= e!624307 (matchR!1228 (derivativeStep!624 (reg!3019 r!15766) (head!1777 (_1!6455 lt!348246))) (tail!1339 (_1!6455 lt!348246))))))

(declare-fun b!967902 () Bool)

(declare-fun res!440068 () Bool)

(declare-fun e!624310 () Bool)

(assert (=> b!967902 (=> res!440068 e!624310)))

(assert (=> b!967902 (= res!440068 (not (is-ElementMatch!2690 (reg!3019 r!15766))))))

(declare-fun e!624309 () Bool)

(assert (=> b!967902 (= e!624309 e!624310)))

(declare-fun b!967903 () Bool)

(declare-fun res!440066 () Bool)

(declare-fun e!624311 () Bool)

(assert (=> b!967903 (=> (not res!440066) (not e!624311))))

(assert (=> b!967903 (= res!440066 (isEmpty!6210 (tail!1339 (_1!6455 lt!348246))))))

(declare-fun b!967904 () Bool)

(declare-fun e!624305 () Bool)

(declare-fun e!624306 () Bool)

(assert (=> b!967904 (= e!624305 e!624306)))

(declare-fun res!440069 () Bool)

(assert (=> b!967904 (=> res!440069 e!624306)))

(declare-fun call!61256 () Bool)

(assert (=> b!967904 (= res!440069 call!61256)))

(declare-fun b!967905 () Bool)

(assert (=> b!967905 (= e!624307 (nullable!816 (reg!3019 r!15766)))))

(declare-fun bm!61251 () Bool)

(assert (=> bm!61251 (= call!61256 (isEmpty!6210 (_1!6455 lt!348246)))))

(declare-fun b!967906 () Bool)

(declare-fun res!440070 () Bool)

(assert (=> b!967906 (=> (not res!440070) (not e!624311))))

(assert (=> b!967906 (= res!440070 (not call!61256))))

(declare-fun b!967907 () Bool)

(declare-fun res!440064 () Bool)

(assert (=> b!967907 (=> res!440064 e!624310)))

(assert (=> b!967907 (= res!440064 e!624311)))

(declare-fun res!440071 () Bool)

(assert (=> b!967907 (=> (not res!440071) (not e!624311))))

(declare-fun lt!348341 () Bool)

(assert (=> b!967907 (= res!440071 lt!348341)))

(declare-fun b!967909 () Bool)

(assert (=> b!967909 (= e!624310 e!624305)))

(declare-fun res!440067 () Bool)

(assert (=> b!967909 (=> (not res!440067) (not e!624305))))

(assert (=> b!967909 (= res!440067 (not lt!348341))))

(declare-fun b!967910 () Bool)

(declare-fun e!624308 () Bool)

(assert (=> b!967910 (= e!624308 e!624309)))

(declare-fun c!157766 () Bool)

(assert (=> b!967910 (= c!157766 (is-EmptyLang!2690 (reg!3019 r!15766)))))

(declare-fun b!967911 () Bool)

(assert (=> b!967911 (= e!624308 (= lt!348341 call!61256))))

(declare-fun b!967912 () Bool)

(declare-fun res!440065 () Bool)

(assert (=> b!967912 (=> res!440065 e!624306)))

(assert (=> b!967912 (= res!440065 (not (isEmpty!6210 (tail!1339 (_1!6455 lt!348246)))))))

(declare-fun b!967913 () Bool)

(assert (=> b!967913 (= e!624311 (= (head!1777 (_1!6455 lt!348246)) (c!157721 (reg!3019 r!15766))))))

(declare-fun b!967914 () Bool)

(assert (=> b!967914 (= e!624306 (not (= (head!1777 (_1!6455 lt!348246)) (c!157721 (reg!3019 r!15766)))))))

(declare-fun d!286247 () Bool)

(assert (=> d!286247 e!624308))

(declare-fun c!157768 () Bool)

(assert (=> d!286247 (= c!157768 (is-EmptyExpr!2690 (reg!3019 r!15766)))))

(assert (=> d!286247 (= lt!348341 e!624307)))

(declare-fun c!157767 () Bool)

(assert (=> d!286247 (= c!157767 (isEmpty!6210 (_1!6455 lt!348246)))))

(assert (=> d!286247 (validRegex!1159 (reg!3019 r!15766))))

(assert (=> d!286247 (= (matchR!1228 (reg!3019 r!15766) (_1!6455 lt!348246)) lt!348341)))

(declare-fun b!967908 () Bool)

(assert (=> b!967908 (= e!624309 (not lt!348341))))

(assert (= (and d!286247 c!157767) b!967905))

(assert (= (and d!286247 (not c!157767)) b!967901))

(assert (= (and d!286247 c!157768) b!967911))

(assert (= (and d!286247 (not c!157768)) b!967910))

(assert (= (and b!967910 c!157766) b!967908))

(assert (= (and b!967910 (not c!157766)) b!967902))

(assert (= (and b!967902 (not res!440068)) b!967907))

(assert (= (and b!967907 res!440071) b!967906))

(assert (= (and b!967906 res!440070) b!967903))

(assert (= (and b!967903 res!440066) b!967913))

(assert (= (and b!967907 (not res!440064)) b!967909))

(assert (= (and b!967909 res!440067) b!967904))

(assert (= (and b!967904 (not res!440069)) b!967912))

(assert (= (and b!967912 (not res!440065)) b!967914))

(assert (= (or b!967911 b!967904 b!967906) bm!61251))

(declare-fun m!1173489 () Bool)

(assert (=> b!967903 m!1173489))

(assert (=> b!967903 m!1173489))

(declare-fun m!1173491 () Bool)

(assert (=> b!967903 m!1173491))

(declare-fun m!1173493 () Bool)

(assert (=> b!967901 m!1173493))

(assert (=> b!967901 m!1173493))

(declare-fun m!1173495 () Bool)

(assert (=> b!967901 m!1173495))

(assert (=> b!967901 m!1173489))

(assert (=> b!967901 m!1173495))

(assert (=> b!967901 m!1173489))

(declare-fun m!1173497 () Bool)

(assert (=> b!967901 m!1173497))

(assert (=> bm!61251 m!1173335))

(assert (=> b!967912 m!1173489))

(assert (=> b!967912 m!1173489))

(assert (=> b!967912 m!1173491))

(assert (=> b!967905 m!1173307))

(assert (=> b!967914 m!1173493))

(assert (=> b!967913 m!1173493))

(assert (=> d!286247 m!1173335))

(declare-fun m!1173499 () Bool)

(assert (=> d!286247 m!1173499))

(assert (=> b!967622 d!286247))

(declare-fun d!286251 () Bool)

(assert (=> d!286251 (= (matchR!1228 (reg!3019 r!15766) (_1!6455 lt!348246)) (matchR!1228 (removeUselessConcat!337 (reg!3019 r!15766)) (_1!6455 lt!348246)))))

(declare-fun lt!348344 () Unit!15035)

(declare-fun choose!6115 (Regex!2690 List!9920) Unit!15035)

(assert (=> d!286251 (= lt!348344 (choose!6115 (reg!3019 r!15766) (_1!6455 lt!348246)))))

(assert (=> d!286251 (validRegex!1159 (reg!3019 r!15766))))

(assert (=> d!286251 (= (lemmaRemoveUselessConcatSound!189 (reg!3019 r!15766) (_1!6455 lt!348246)) lt!348344)))

(declare-fun bs!242088 () Bool)

(assert (= bs!242088 d!286251))

(assert (=> bs!242088 m!1173295))

(declare-fun m!1173501 () Bool)

(assert (=> bs!242088 m!1173501))

(declare-fun m!1173503 () Bool)

(assert (=> bs!242088 m!1173503))

(assert (=> bs!242088 m!1173295))

(assert (=> bs!242088 m!1173273))

(assert (=> bs!242088 m!1173499))

(assert (=> b!967622 d!286251))

(declare-fun bs!242089 () Bool)

(declare-fun b!967919 () Bool)

(assert (= bs!242089 (and b!967919 d!286239)))

(declare-fun lambda!34159 () Int)

(assert (=> bs!242089 (not (= lambda!34159 lambda!34155))))

(declare-fun bs!242090 () Bool)

(assert (= bs!242090 (and b!967919 b!967856)))

(assert (=> bs!242090 (not (= lambda!34159 lambda!34152))))

(declare-fun bs!242091 () Bool)

(assert (= bs!242091 (and b!967919 b!967634)))

(assert (=> bs!242091 (not (= lambda!34159 lambda!34117))))

(declare-fun bs!242092 () Bool)

(assert (= bs!242092 (and b!967919 d!286223)))

(assert (=> bs!242092 (not (= lambda!34159 lambda!34143))))

(declare-fun bs!242093 () Bool)

(assert (= bs!242093 (and b!967919 b!967850)))

(assert (=> bs!242093 (= (and (= (reg!3019 r!15766) (reg!3019 lt!348253)) (= r!15766 lt!348253)) (= lambda!34159 lambda!34151))))

(declare-fun bs!242094 () Bool)

(assert (= bs!242094 (and b!967919 b!967630)))

(assert (=> bs!242094 (= (= r!15766 lt!348251) (= lambda!34159 lambda!34116))))

(assert (=> bs!242094 (not (= lambda!34159 lambda!34115))))

(assert (=> bs!242091 (= (and (= (reg!3019 r!15766) lt!348238) (= r!15766 lt!348253)) (= lambda!34159 lambda!34118))))

(assert (=> bs!242092 (= (and (= (reg!3019 r!15766) lt!348238) (= r!15766 (Star!2690 lt!348238))) (= lambda!34159 lambda!34144))))

(assert (=> b!967919 true))

(assert (=> b!967919 true))

(declare-fun bs!242095 () Bool)

(declare-fun b!967925 () Bool)

(assert (= bs!242095 (and b!967925 d!286239)))

(declare-fun lambda!34160 () Int)

(assert (=> bs!242095 (not (= lambda!34160 lambda!34155))))

(declare-fun bs!242096 () Bool)

(assert (= bs!242096 (and b!967925 b!967856)))

(assert (=> bs!242096 (= (and (= (regOne!5892 r!15766) (regOne!5892 lt!348253)) (= (regTwo!5892 r!15766) (regTwo!5892 lt!348253))) (= lambda!34160 lambda!34152))))

(declare-fun bs!242097 () Bool)

(assert (= bs!242097 (and b!967925 b!967634)))

(assert (=> bs!242097 (not (= lambda!34160 lambda!34117))))

(declare-fun bs!242098 () Bool)

(assert (= bs!242098 (and b!967925 b!967919)))

(assert (=> bs!242098 (not (= lambda!34160 lambda!34159))))

(declare-fun bs!242099 () Bool)

(assert (= bs!242099 (and b!967925 d!286223)))

(assert (=> bs!242099 (not (= lambda!34160 lambda!34143))))

(declare-fun bs!242100 () Bool)

(assert (= bs!242100 (and b!967925 b!967850)))

(assert (=> bs!242100 (not (= lambda!34160 lambda!34151))))

(declare-fun bs!242101 () Bool)

(assert (= bs!242101 (and b!967925 b!967630)))

(assert (=> bs!242101 (not (= lambda!34160 lambda!34116))))

(assert (=> bs!242101 (not (= lambda!34160 lambda!34115))))

(assert (=> bs!242097 (not (= lambda!34160 lambda!34118))))

(assert (=> bs!242099 (not (= lambda!34160 lambda!34144))))

(assert (=> b!967925 true))

(assert (=> b!967925 true))

(declare-fun b!967915 () Bool)

(declare-fun c!157770 () Bool)

(assert (=> b!967915 (= c!157770 (is-Union!2690 r!15766))))

(declare-fun e!624318 () Bool)

(declare-fun e!624317 () Bool)

(assert (=> b!967915 (= e!624318 e!624317)))

(declare-fun b!967916 () Bool)

(declare-fun c!157771 () Bool)

(assert (=> b!967916 (= c!157771 (is-ElementMatch!2690 r!15766))))

(declare-fun e!624316 () Bool)

(assert (=> b!967916 (= e!624316 e!624318)))

(declare-fun b!967917 () Bool)

(declare-fun res!440073 () Bool)

(declare-fun e!624313 () Bool)

(assert (=> b!967917 (=> res!440073 e!624313)))

(declare-fun call!61258 () Bool)

(assert (=> b!967917 (= res!440073 call!61258)))

(declare-fun e!624312 () Bool)

(assert (=> b!967917 (= e!624312 e!624313)))

(declare-fun b!967918 () Bool)

(declare-fun e!624315 () Bool)

(assert (=> b!967918 (= e!624317 e!624315)))

(declare-fun res!440072 () Bool)

(assert (=> b!967918 (= res!440072 (matchRSpec!491 (regOne!5893 r!15766) s!10566))))

(assert (=> b!967918 (=> res!440072 e!624315)))

(declare-fun d!286255 () Bool)

(declare-fun c!157769 () Bool)

(assert (=> d!286255 (= c!157769 (is-EmptyExpr!2690 r!15766))))

(declare-fun e!624314 () Bool)

(assert (=> d!286255 (= (matchRSpec!491 r!15766 s!10566) e!624314)))

(declare-fun call!61257 () Bool)

(assert (=> b!967919 (= e!624313 call!61257)))

(declare-fun b!967920 () Bool)

(assert (=> b!967920 (= e!624315 (matchRSpec!491 (regTwo!5893 r!15766) s!10566))))

(declare-fun b!967921 () Bool)

(assert (=> b!967921 (= e!624318 (= s!10566 (Cons!9904 (c!157721 r!15766) Nil!9904)))))

(declare-fun b!967922 () Bool)

(assert (=> b!967922 (= e!624317 e!624312)))

(declare-fun c!157772 () Bool)

(assert (=> b!967922 (= c!157772 (is-Star!2690 r!15766))))

(declare-fun b!967923 () Bool)

(assert (=> b!967923 (= e!624314 call!61258)))

(declare-fun b!967924 () Bool)

(assert (=> b!967924 (= e!624314 e!624316)))

(declare-fun res!440074 () Bool)

(assert (=> b!967924 (= res!440074 (not (is-EmptyLang!2690 r!15766)))))

(assert (=> b!967924 (=> (not res!440074) (not e!624316))))

(declare-fun bm!61252 () Bool)

(assert (=> bm!61252 (= call!61258 (isEmpty!6210 s!10566))))

(assert (=> b!967925 (= e!624312 call!61257)))

(declare-fun bm!61253 () Bool)

(assert (=> bm!61253 (= call!61257 (Exists!433 (ite c!157772 lambda!34159 lambda!34160)))))

(assert (= (and d!286255 c!157769) b!967923))

(assert (= (and d!286255 (not c!157769)) b!967924))

(assert (= (and b!967924 res!440074) b!967916))

(assert (= (and b!967916 c!157771) b!967921))

(assert (= (and b!967916 (not c!157771)) b!967915))

(assert (= (and b!967915 c!157770) b!967918))

(assert (= (and b!967915 (not c!157770)) b!967922))

(assert (= (and b!967918 (not res!440072)) b!967920))

(assert (= (and b!967922 c!157772) b!967917))

(assert (= (and b!967922 (not c!157772)) b!967925))

(assert (= (and b!967917 (not res!440073)) b!967919))

(assert (= (or b!967919 b!967925) bm!61253))

(assert (= (or b!967923 b!967917) bm!61252))

(declare-fun m!1173505 () Bool)

(assert (=> b!967918 m!1173505))

(declare-fun m!1173507 () Bool)

(assert (=> b!967920 m!1173507))

(assert (=> bm!61252 m!1173319))

(declare-fun m!1173509 () Bool)

(assert (=> bm!61253 m!1173509))

(assert (=> b!967627 d!286255))

(declare-fun b!967926 () Bool)

(declare-fun e!624321 () Bool)

(assert (=> b!967926 (= e!624321 (matchR!1228 (derivativeStep!624 r!15766 (head!1777 s!10566)) (tail!1339 s!10566)))))

(declare-fun b!967927 () Bool)

(declare-fun res!440079 () Bool)

(declare-fun e!624324 () Bool)

(assert (=> b!967927 (=> res!440079 e!624324)))

(assert (=> b!967927 (= res!440079 (not (is-ElementMatch!2690 r!15766)))))

(declare-fun e!624323 () Bool)

(assert (=> b!967927 (= e!624323 e!624324)))

(declare-fun b!967928 () Bool)

(declare-fun res!440077 () Bool)

(declare-fun e!624325 () Bool)

(assert (=> b!967928 (=> (not res!440077) (not e!624325))))

(assert (=> b!967928 (= res!440077 (isEmpty!6210 (tail!1339 s!10566)))))

(declare-fun b!967929 () Bool)

(declare-fun e!624319 () Bool)

(declare-fun e!624320 () Bool)

(assert (=> b!967929 (= e!624319 e!624320)))

(declare-fun res!440080 () Bool)

(assert (=> b!967929 (=> res!440080 e!624320)))

(declare-fun call!61259 () Bool)

(assert (=> b!967929 (= res!440080 call!61259)))

(declare-fun b!967930 () Bool)

(assert (=> b!967930 (= e!624321 (nullable!816 r!15766))))

(declare-fun bm!61254 () Bool)

(assert (=> bm!61254 (= call!61259 (isEmpty!6210 s!10566))))

(declare-fun b!967931 () Bool)

(declare-fun res!440081 () Bool)

(assert (=> b!967931 (=> (not res!440081) (not e!624325))))

(assert (=> b!967931 (= res!440081 (not call!61259))))

(declare-fun b!967932 () Bool)

(declare-fun res!440075 () Bool)

(assert (=> b!967932 (=> res!440075 e!624324)))

(assert (=> b!967932 (= res!440075 e!624325)))

(declare-fun res!440082 () Bool)

(assert (=> b!967932 (=> (not res!440082) (not e!624325))))

(declare-fun lt!348345 () Bool)

(assert (=> b!967932 (= res!440082 lt!348345)))

(declare-fun b!967934 () Bool)

(assert (=> b!967934 (= e!624324 e!624319)))

(declare-fun res!440078 () Bool)

(assert (=> b!967934 (=> (not res!440078) (not e!624319))))

(assert (=> b!967934 (= res!440078 (not lt!348345))))

(declare-fun b!967935 () Bool)

(declare-fun e!624322 () Bool)

(assert (=> b!967935 (= e!624322 e!624323)))

(declare-fun c!157773 () Bool)

(assert (=> b!967935 (= c!157773 (is-EmptyLang!2690 r!15766))))

(declare-fun b!967936 () Bool)

(assert (=> b!967936 (= e!624322 (= lt!348345 call!61259))))

(declare-fun b!967937 () Bool)

(declare-fun res!440076 () Bool)

(assert (=> b!967937 (=> res!440076 e!624320)))

(assert (=> b!967937 (= res!440076 (not (isEmpty!6210 (tail!1339 s!10566))))))

(declare-fun b!967938 () Bool)

(assert (=> b!967938 (= e!624325 (= (head!1777 s!10566) (c!157721 r!15766)))))

(declare-fun b!967939 () Bool)

(assert (=> b!967939 (= e!624320 (not (= (head!1777 s!10566) (c!157721 r!15766))))))

(declare-fun d!286257 () Bool)

(assert (=> d!286257 e!624322))

(declare-fun c!157775 () Bool)

(assert (=> d!286257 (= c!157775 (is-EmptyExpr!2690 r!15766))))

(assert (=> d!286257 (= lt!348345 e!624321)))

(declare-fun c!157774 () Bool)

(assert (=> d!286257 (= c!157774 (isEmpty!6210 s!10566))))

(assert (=> d!286257 (validRegex!1159 r!15766)))

(assert (=> d!286257 (= (matchR!1228 r!15766 s!10566) lt!348345)))

(declare-fun b!967933 () Bool)

(assert (=> b!967933 (= e!624323 (not lt!348345))))

(assert (= (and d!286257 c!157774) b!967930))

(assert (= (and d!286257 (not c!157774)) b!967926))

(assert (= (and d!286257 c!157775) b!967936))

(assert (= (and d!286257 (not c!157775)) b!967935))

(assert (= (and b!967935 c!157773) b!967933))

(assert (= (and b!967935 (not c!157773)) b!967927))

(assert (= (and b!967927 (not res!440079)) b!967932))

(assert (= (and b!967932 res!440082) b!967931))

(assert (= (and b!967931 res!440081) b!967928))

(assert (= (and b!967928 res!440077) b!967938))

(assert (= (and b!967932 (not res!440075)) b!967934))

(assert (= (and b!967934 res!440078) b!967929))

(assert (= (and b!967929 (not res!440080)) b!967937))

(assert (= (and b!967937 (not res!440076)) b!967939))

(assert (= (or b!967936 b!967929 b!967931) bm!61254))

(declare-fun m!1173511 () Bool)

(assert (=> b!967928 m!1173511))

(assert (=> b!967928 m!1173511))

(declare-fun m!1173513 () Bool)

(assert (=> b!967928 m!1173513))

(declare-fun m!1173515 () Bool)

(assert (=> b!967926 m!1173515))

(assert (=> b!967926 m!1173515))

(declare-fun m!1173517 () Bool)

(assert (=> b!967926 m!1173517))

(assert (=> b!967926 m!1173511))

(assert (=> b!967926 m!1173517))

(assert (=> b!967926 m!1173511))

(declare-fun m!1173519 () Bool)

(assert (=> b!967926 m!1173519))

(assert (=> bm!61254 m!1173319))

(assert (=> b!967937 m!1173511))

(assert (=> b!967937 m!1173511))

(assert (=> b!967937 m!1173513))

(declare-fun m!1173521 () Bool)

(assert (=> b!967930 m!1173521))

(assert (=> b!967939 m!1173515))

(assert (=> b!967938 m!1173515))

(assert (=> d!286257 m!1173319))

(assert (=> d!286257 m!1173277))

(assert (=> b!967627 d!286257))

(declare-fun d!286259 () Bool)

(assert (=> d!286259 (= (matchR!1228 r!15766 s!10566) (matchRSpec!491 r!15766 s!10566))))

(declare-fun lt!348346 () Unit!15035)

(assert (=> d!286259 (= lt!348346 (choose!6113 r!15766 s!10566))))

(assert (=> d!286259 (validRegex!1159 r!15766)))

(assert (=> d!286259 (= (mainMatchTheorem!491 r!15766 s!10566) lt!348346)))

(declare-fun bs!242102 () Bool)

(assert (= bs!242102 d!286259))

(assert (=> bs!242102 m!1173281))

(assert (=> bs!242102 m!1173279))

(declare-fun m!1173523 () Bool)

(assert (=> bs!242102 m!1173523))

(assert (=> bs!242102 m!1173277))

(assert (=> b!967627 d!286259))

(declare-fun b!967940 () Bool)

(declare-fun e!624328 () Bool)

(assert (=> b!967940 (= e!624328 (matchR!1228 (derivativeStep!624 lt!348253 (head!1777 (_2!6455 lt!348246))) (tail!1339 (_2!6455 lt!348246))))))

(declare-fun b!967941 () Bool)

(declare-fun res!440087 () Bool)

(declare-fun e!624331 () Bool)

(assert (=> b!967941 (=> res!440087 e!624331)))

(assert (=> b!967941 (= res!440087 (not (is-ElementMatch!2690 lt!348253)))))

(declare-fun e!624330 () Bool)

(assert (=> b!967941 (= e!624330 e!624331)))

(declare-fun b!967942 () Bool)

(declare-fun res!440085 () Bool)

(declare-fun e!624332 () Bool)

(assert (=> b!967942 (=> (not res!440085) (not e!624332))))

(assert (=> b!967942 (= res!440085 (isEmpty!6210 (tail!1339 (_2!6455 lt!348246))))))

(declare-fun b!967943 () Bool)

(declare-fun e!624326 () Bool)

(declare-fun e!624327 () Bool)

(assert (=> b!967943 (= e!624326 e!624327)))

(declare-fun res!440088 () Bool)

(assert (=> b!967943 (=> res!440088 e!624327)))

(declare-fun call!61260 () Bool)

(assert (=> b!967943 (= res!440088 call!61260)))

(declare-fun b!967944 () Bool)

(assert (=> b!967944 (= e!624328 (nullable!816 lt!348253))))

(declare-fun bm!61255 () Bool)

(assert (=> bm!61255 (= call!61260 (isEmpty!6210 (_2!6455 lt!348246)))))

(declare-fun b!967945 () Bool)

(declare-fun res!440089 () Bool)

(assert (=> b!967945 (=> (not res!440089) (not e!624332))))

(assert (=> b!967945 (= res!440089 (not call!61260))))

(declare-fun b!967946 () Bool)

(declare-fun res!440083 () Bool)

(assert (=> b!967946 (=> res!440083 e!624331)))

(assert (=> b!967946 (= res!440083 e!624332)))

(declare-fun res!440090 () Bool)

(assert (=> b!967946 (=> (not res!440090) (not e!624332))))

(declare-fun lt!348347 () Bool)

(assert (=> b!967946 (= res!440090 lt!348347)))

(declare-fun b!967948 () Bool)

(assert (=> b!967948 (= e!624331 e!624326)))

(declare-fun res!440086 () Bool)

(assert (=> b!967948 (=> (not res!440086) (not e!624326))))

(assert (=> b!967948 (= res!440086 (not lt!348347))))

(declare-fun b!967949 () Bool)

(declare-fun e!624329 () Bool)

(assert (=> b!967949 (= e!624329 e!624330)))

(declare-fun c!157776 () Bool)

(assert (=> b!967949 (= c!157776 (is-EmptyLang!2690 lt!348253))))

(declare-fun b!967950 () Bool)

(assert (=> b!967950 (= e!624329 (= lt!348347 call!61260))))

(declare-fun b!967951 () Bool)

(declare-fun res!440084 () Bool)

(assert (=> b!967951 (=> res!440084 e!624327)))

(assert (=> b!967951 (= res!440084 (not (isEmpty!6210 (tail!1339 (_2!6455 lt!348246)))))))

(declare-fun b!967952 () Bool)

(assert (=> b!967952 (= e!624332 (= (head!1777 (_2!6455 lt!348246)) (c!157721 lt!348253)))))

(declare-fun b!967953 () Bool)

(assert (=> b!967953 (= e!624327 (not (= (head!1777 (_2!6455 lt!348246)) (c!157721 lt!348253))))))

(declare-fun d!286261 () Bool)

(assert (=> d!286261 e!624329))

(declare-fun c!157778 () Bool)

(assert (=> d!286261 (= c!157778 (is-EmptyExpr!2690 lt!348253))))

(assert (=> d!286261 (= lt!348347 e!624328)))

(declare-fun c!157777 () Bool)

(assert (=> d!286261 (= c!157777 (isEmpty!6210 (_2!6455 lt!348246)))))

(assert (=> d!286261 (validRegex!1159 lt!348253)))

(assert (=> d!286261 (= (matchR!1228 lt!348253 (_2!6455 lt!348246)) lt!348347)))

(declare-fun b!967947 () Bool)

(assert (=> b!967947 (= e!624330 (not lt!348347))))

(assert (= (and d!286261 c!157777) b!967944))

(assert (= (and d!286261 (not c!157777)) b!967940))

(assert (= (and d!286261 c!157778) b!967950))

(assert (= (and d!286261 (not c!157778)) b!967949))

(assert (= (and b!967949 c!157776) b!967947))

(assert (= (and b!967949 (not c!157776)) b!967941))

(assert (= (and b!967941 (not res!440087)) b!967946))

(assert (= (and b!967946 res!440090) b!967945))

(assert (= (and b!967945 res!440089) b!967942))

(assert (= (and b!967942 res!440085) b!967952))

(assert (= (and b!967946 (not res!440083)) b!967948))

(assert (= (and b!967948 res!440086) b!967943))

(assert (= (and b!967943 (not res!440088)) b!967951))

(assert (= (and b!967951 (not res!440084)) b!967953))

(assert (= (or b!967950 b!967943 b!967945) bm!61255))

(declare-fun m!1173525 () Bool)

(assert (=> b!967942 m!1173525))

(assert (=> b!967942 m!1173525))

(declare-fun m!1173527 () Bool)

(assert (=> b!967942 m!1173527))

(declare-fun m!1173529 () Bool)

(assert (=> b!967940 m!1173529))

(assert (=> b!967940 m!1173529))

(declare-fun m!1173531 () Bool)

(assert (=> b!967940 m!1173531))

(assert (=> b!967940 m!1173525))

(assert (=> b!967940 m!1173531))

(assert (=> b!967940 m!1173525))

(declare-fun m!1173533 () Bool)

(assert (=> b!967940 m!1173533))

(declare-fun m!1173535 () Bool)

(assert (=> bm!61255 m!1173535))

(assert (=> b!967951 m!1173525))

(assert (=> b!967951 m!1173525))

(assert (=> b!967951 m!1173527))

(declare-fun m!1173537 () Bool)

(assert (=> b!967944 m!1173537))

(assert (=> b!967953 m!1173529))

(assert (=> b!967952 m!1173529))

(assert (=> d!286261 m!1173535))

(assert (=> d!286261 m!1173467))

(assert (=> b!967625 d!286261))

(declare-fun d!286263 () Bool)

(declare-fun nullableFct!196 (Regex!2690) Bool)

(assert (=> d!286263 (= (nullable!816 (reg!3019 r!15766)) (nullableFct!196 (reg!3019 r!15766)))))

(declare-fun bs!242103 () Bool)

(assert (= bs!242103 d!286263))

(declare-fun m!1173539 () Bool)

(assert (=> bs!242103 m!1173539))

(assert (=> b!967626 d!286263))

(declare-fun bs!242104 () Bool)

(declare-fun b!967958 () Bool)

(assert (= bs!242104 (and b!967958 d!286239)))

(declare-fun lambda!34161 () Int)

(assert (=> bs!242104 (not (= lambda!34161 lambda!34155))))

(declare-fun bs!242105 () Bool)

(assert (= bs!242105 (and b!967958 b!967856)))

(assert (=> bs!242105 (not (= lambda!34161 lambda!34152))))

(declare-fun bs!242106 () Bool)

(assert (= bs!242106 (and b!967958 b!967634)))

(assert (=> bs!242106 (not (= lambda!34161 lambda!34117))))

(declare-fun bs!242107 () Bool)

(assert (= bs!242107 (and b!967958 b!967919)))

(assert (=> bs!242107 (= (and (= (_1!6455 lt!348246) s!10566) (= (reg!3019 (reg!3019 r!15766)) (reg!3019 r!15766)) (= (reg!3019 r!15766) r!15766)) (= lambda!34161 lambda!34159))))

(declare-fun bs!242108 () Bool)

(assert (= bs!242108 (and b!967958 d!286223)))

(assert (=> bs!242108 (not (= lambda!34161 lambda!34143))))

(declare-fun bs!242109 () Bool)

(assert (= bs!242109 (and b!967958 b!967925)))

(assert (=> bs!242109 (not (= lambda!34161 lambda!34160))))

(declare-fun bs!242110 () Bool)

(assert (= bs!242110 (and b!967958 b!967850)))

(assert (=> bs!242110 (= (and (= (_1!6455 lt!348246) s!10566) (= (reg!3019 (reg!3019 r!15766)) (reg!3019 lt!348253)) (= (reg!3019 r!15766) lt!348253)) (= lambda!34161 lambda!34151))))

(declare-fun bs!242111 () Bool)

(assert (= bs!242111 (and b!967958 b!967630)))

(assert (=> bs!242111 (= (and (= (_1!6455 lt!348246) s!10566) (= (reg!3019 (reg!3019 r!15766)) (reg!3019 r!15766)) (= (reg!3019 r!15766) lt!348251)) (= lambda!34161 lambda!34116))))

(assert (=> bs!242111 (not (= lambda!34161 lambda!34115))))

(assert (=> bs!242106 (= (and (= (_1!6455 lt!348246) s!10566) (= (reg!3019 (reg!3019 r!15766)) lt!348238) (= (reg!3019 r!15766) lt!348253)) (= lambda!34161 lambda!34118))))

(assert (=> bs!242108 (= (and (= (_1!6455 lt!348246) s!10566) (= (reg!3019 (reg!3019 r!15766)) lt!348238) (= (reg!3019 r!15766) (Star!2690 lt!348238))) (= lambda!34161 lambda!34144))))

(assert (=> b!967958 true))

(assert (=> b!967958 true))

(declare-fun bs!242112 () Bool)

(declare-fun b!967964 () Bool)

(assert (= bs!242112 (and b!967964 d!286239)))

(declare-fun lambda!34162 () Int)

(assert (=> bs!242112 (not (= lambda!34162 lambda!34155))))

(declare-fun bs!242113 () Bool)

(assert (= bs!242113 (and b!967964 b!967856)))

(assert (=> bs!242113 (= (and (= (_1!6455 lt!348246) s!10566) (= (regOne!5892 (reg!3019 r!15766)) (regOne!5892 lt!348253)) (= (regTwo!5892 (reg!3019 r!15766)) (regTwo!5892 lt!348253))) (= lambda!34162 lambda!34152))))

(declare-fun bs!242114 () Bool)

(assert (= bs!242114 (and b!967964 b!967634)))

(assert (=> bs!242114 (not (= lambda!34162 lambda!34117))))

(declare-fun bs!242115 () Bool)

(assert (= bs!242115 (and b!967964 d!286223)))

(assert (=> bs!242115 (not (= lambda!34162 lambda!34143))))

(declare-fun bs!242116 () Bool)

(assert (= bs!242116 (and b!967964 b!967925)))

(assert (=> bs!242116 (= (and (= (_1!6455 lt!348246) s!10566) (= (regOne!5892 (reg!3019 r!15766)) (regOne!5892 r!15766)) (= (regTwo!5892 (reg!3019 r!15766)) (regTwo!5892 r!15766))) (= lambda!34162 lambda!34160))))

(declare-fun bs!242117 () Bool)

(assert (= bs!242117 (and b!967964 b!967850)))

(assert (=> bs!242117 (not (= lambda!34162 lambda!34151))))

(declare-fun bs!242118 () Bool)

(assert (= bs!242118 (and b!967964 b!967630)))

(assert (=> bs!242118 (not (= lambda!34162 lambda!34116))))

(assert (=> bs!242118 (not (= lambda!34162 lambda!34115))))

(assert (=> bs!242114 (not (= lambda!34162 lambda!34118))))

(assert (=> bs!242115 (not (= lambda!34162 lambda!34144))))

(declare-fun bs!242119 () Bool)

(assert (= bs!242119 (and b!967964 b!967919)))

(assert (=> bs!242119 (not (= lambda!34162 lambda!34159))))

(declare-fun bs!242120 () Bool)

(assert (= bs!242120 (and b!967964 b!967958)))

(assert (=> bs!242120 (not (= lambda!34162 lambda!34161))))

(assert (=> b!967964 true))

(assert (=> b!967964 true))

(declare-fun b!967954 () Bool)

(declare-fun c!157780 () Bool)

(assert (=> b!967954 (= c!157780 (is-Union!2690 (reg!3019 r!15766)))))

(declare-fun e!624339 () Bool)

(declare-fun e!624338 () Bool)

(assert (=> b!967954 (= e!624339 e!624338)))

(declare-fun b!967955 () Bool)

(declare-fun c!157781 () Bool)

(assert (=> b!967955 (= c!157781 (is-ElementMatch!2690 (reg!3019 r!15766)))))

(declare-fun e!624337 () Bool)

(assert (=> b!967955 (= e!624337 e!624339)))

(declare-fun b!967956 () Bool)

(declare-fun res!440092 () Bool)

(declare-fun e!624334 () Bool)

(assert (=> b!967956 (=> res!440092 e!624334)))

(declare-fun call!61262 () Bool)

(assert (=> b!967956 (= res!440092 call!61262)))

(declare-fun e!624333 () Bool)

(assert (=> b!967956 (= e!624333 e!624334)))

(declare-fun b!967957 () Bool)

(declare-fun e!624336 () Bool)

(assert (=> b!967957 (= e!624338 e!624336)))

(declare-fun res!440091 () Bool)

(assert (=> b!967957 (= res!440091 (matchRSpec!491 (regOne!5893 (reg!3019 r!15766)) (_1!6455 lt!348246)))))

(assert (=> b!967957 (=> res!440091 e!624336)))

(declare-fun d!286265 () Bool)

(declare-fun c!157779 () Bool)

(assert (=> d!286265 (= c!157779 (is-EmptyExpr!2690 (reg!3019 r!15766)))))

(declare-fun e!624335 () Bool)

(assert (=> d!286265 (= (matchRSpec!491 (reg!3019 r!15766) (_1!6455 lt!348246)) e!624335)))

(declare-fun call!61261 () Bool)

(assert (=> b!967958 (= e!624334 call!61261)))

(declare-fun b!967959 () Bool)

(assert (=> b!967959 (= e!624336 (matchRSpec!491 (regTwo!5893 (reg!3019 r!15766)) (_1!6455 lt!348246)))))

(declare-fun b!967960 () Bool)

(assert (=> b!967960 (= e!624339 (= (_1!6455 lt!348246) (Cons!9904 (c!157721 (reg!3019 r!15766)) Nil!9904)))))

(declare-fun b!967961 () Bool)

(assert (=> b!967961 (= e!624338 e!624333)))

(declare-fun c!157782 () Bool)

(assert (=> b!967961 (= c!157782 (is-Star!2690 (reg!3019 r!15766)))))

(declare-fun b!967962 () Bool)

(assert (=> b!967962 (= e!624335 call!61262)))

(declare-fun b!967963 () Bool)

(assert (=> b!967963 (= e!624335 e!624337)))

(declare-fun res!440093 () Bool)

(assert (=> b!967963 (= res!440093 (not (is-EmptyLang!2690 (reg!3019 r!15766))))))

(assert (=> b!967963 (=> (not res!440093) (not e!624337))))

(declare-fun bm!61256 () Bool)

(assert (=> bm!61256 (= call!61262 (isEmpty!6210 (_1!6455 lt!348246)))))

(assert (=> b!967964 (= e!624333 call!61261)))

(declare-fun bm!61257 () Bool)

(assert (=> bm!61257 (= call!61261 (Exists!433 (ite c!157782 lambda!34161 lambda!34162)))))

(assert (= (and d!286265 c!157779) b!967962))

(assert (= (and d!286265 (not c!157779)) b!967963))

(assert (= (and b!967963 res!440093) b!967955))

(assert (= (and b!967955 c!157781) b!967960))

(assert (= (and b!967955 (not c!157781)) b!967954))

(assert (= (and b!967954 c!157780) b!967957))

(assert (= (and b!967954 (not c!157780)) b!967961))

(assert (= (and b!967957 (not res!440091)) b!967959))

(assert (= (and b!967961 c!157782) b!967956))

(assert (= (and b!967961 (not c!157782)) b!967964))

(assert (= (and b!967956 (not res!440092)) b!967958))

(assert (= (or b!967958 b!967964) bm!61257))

(assert (= (or b!967962 b!967956) bm!61256))

(declare-fun m!1173541 () Bool)

(assert (=> b!967957 m!1173541))

(declare-fun m!1173543 () Bool)

(assert (=> b!967959 m!1173543))

(assert (=> bm!61256 m!1173335))

(declare-fun m!1173545 () Bool)

(assert (=> bm!61257 m!1173545))

(assert (=> b!967626 d!286265))

(declare-fun d!286267 () Bool)

(assert (=> d!286267 (= (matchR!1228 (reg!3019 r!15766) (_1!6455 lt!348246)) (matchRSpec!491 (reg!3019 r!15766) (_1!6455 lt!348246)))))

(declare-fun lt!348350 () Unit!15035)

(assert (=> d!286267 (= lt!348350 (choose!6113 (reg!3019 r!15766) (_1!6455 lt!348246)))))

(assert (=> d!286267 (validRegex!1159 (reg!3019 r!15766))))

(assert (=> d!286267 (= (mainMatchTheorem!491 (reg!3019 r!15766) (_1!6455 lt!348246)) lt!348350)))

(declare-fun bs!242121 () Bool)

(assert (= bs!242121 d!286267))

(assert (=> bs!242121 m!1173273))

(assert (=> bs!242121 m!1173309))

(declare-fun m!1173547 () Bool)

(assert (=> bs!242121 m!1173547))

(assert (=> bs!242121 m!1173499))

(assert (=> b!967626 d!286267))

(declare-fun d!286269 () Bool)

(declare-fun lt!348351 () Int)

(assert (=> d!286269 (>= lt!348351 0)))

(declare-fun e!624340 () Int)

(assert (=> d!286269 (= lt!348351 e!624340)))

(declare-fun c!157783 () Bool)

(assert (=> d!286269 (= c!157783 (is-Nil!9904 (_1!6455 lt!348246)))))

(assert (=> d!286269 (= (size!7940 (_1!6455 lt!348246)) lt!348351)))

(declare-fun b!967965 () Bool)

(assert (=> b!967965 (= e!624340 0)))

(declare-fun b!967966 () Bool)

(assert (=> b!967966 (= e!624340 (+ 1 (size!7940 (t!100966 (_1!6455 lt!348246)))))))

(assert (= (and d!286269 c!157783) b!967965))

(assert (= (and d!286269 (not c!157783)) b!967966))

(declare-fun m!1173549 () Bool)

(assert (=> b!967966 m!1173549))

(assert (=> b!967631 d!286269))

(declare-fun b!967989 () Bool)

(declare-fun res!440110 () Bool)

(declare-fun e!624357 () Bool)

(assert (=> b!967989 (=> res!440110 e!624357)))

(assert (=> b!967989 (= res!440110 (not (is-Concat!4523 r!15766)))))

(declare-fun e!624358 () Bool)

(assert (=> b!967989 (= e!624358 e!624357)))

(declare-fun bm!61264 () Bool)

(declare-fun call!61271 () Bool)

(declare-fun c!157789 () Bool)

(assert (=> bm!61264 (= call!61271 (validRegex!1159 (ite c!157789 (regTwo!5893 r!15766) (regTwo!5892 r!15766))))))

(declare-fun b!967990 () Bool)

(declare-fun res!440109 () Bool)

(declare-fun e!624359 () Bool)

(assert (=> b!967990 (=> (not res!440109) (not e!624359))))

(declare-fun call!61269 () Bool)

(assert (=> b!967990 (= res!440109 call!61269)))

(assert (=> b!967990 (= e!624358 e!624359)))

(declare-fun b!967991 () Bool)

(declare-fun e!624361 () Bool)

(declare-fun e!624362 () Bool)

(assert (=> b!967991 (= e!624361 e!624362)))

(declare-fun c!157788 () Bool)

(assert (=> b!967991 (= c!157788 (is-Star!2690 r!15766))))

(declare-fun b!967992 () Bool)

(declare-fun e!624360 () Bool)

(assert (=> b!967992 (= e!624357 e!624360)))

(declare-fun res!440108 () Bool)

(assert (=> b!967992 (=> (not res!440108) (not e!624360))))

(assert (=> b!967992 (= res!440108 call!61269)))

(declare-fun b!967993 () Bool)

(declare-fun e!624363 () Bool)

(declare-fun call!61270 () Bool)

(assert (=> b!967993 (= e!624363 call!61270)))

(declare-fun bm!61265 () Bool)

(assert (=> bm!61265 (= call!61270 (validRegex!1159 (ite c!157788 (reg!3019 r!15766) (ite c!157789 (regOne!5893 r!15766) (regOne!5892 r!15766)))))))

(declare-fun bm!61266 () Bool)

(assert (=> bm!61266 (= call!61269 call!61270)))

(declare-fun b!967995 () Bool)

(assert (=> b!967995 (= e!624359 call!61271)))

(declare-fun b!967996 () Bool)

(assert (=> b!967996 (= e!624360 call!61271)))

(declare-fun b!967997 () Bool)

(assert (=> b!967997 (= e!624362 e!624363)))

(declare-fun res!440112 () Bool)

(assert (=> b!967997 (= res!440112 (not (nullable!816 (reg!3019 r!15766))))))

(assert (=> b!967997 (=> (not res!440112) (not e!624363))))

(declare-fun d!286271 () Bool)

(declare-fun res!440111 () Bool)

(assert (=> d!286271 (=> res!440111 e!624361)))

(assert (=> d!286271 (= res!440111 (is-ElementMatch!2690 r!15766))))

(assert (=> d!286271 (= (validRegex!1159 r!15766) e!624361)))

(declare-fun b!967994 () Bool)

(assert (=> b!967994 (= e!624362 e!624358)))

(assert (=> b!967994 (= c!157789 (is-Union!2690 r!15766))))

(assert (= (and d!286271 (not res!440111)) b!967991))

(assert (= (and b!967991 c!157788) b!967997))

(assert (= (and b!967991 (not c!157788)) b!967994))

(assert (= (and b!967997 res!440112) b!967993))

(assert (= (and b!967994 c!157789) b!967990))

(assert (= (and b!967994 (not c!157789)) b!967989))

(assert (= (and b!967990 res!440109) b!967995))

(assert (= (and b!967989 (not res!440110)) b!967992))

(assert (= (and b!967992 res!440108) b!967996))

(assert (= (or b!967995 b!967996) bm!61264))

(assert (= (or b!967990 b!967992) bm!61266))

(assert (= (or b!967993 bm!61266) bm!61265))

(declare-fun m!1173551 () Bool)

(assert (=> bm!61264 m!1173551))

(declare-fun m!1173553 () Bool)

(assert (=> bm!61265 m!1173553))

(assert (=> b!967997 m!1173307))

(assert (=> start!86056 d!286271))

(declare-fun b!968004 () Bool)

(declare-fun e!624368 () Bool)

(assert (=> b!968004 (= e!624368 (matchR!1228 (derivativeStep!624 lt!348238 (head!1777 (_1!6455 lt!348246))) (tail!1339 (_1!6455 lt!348246))))))

(declare-fun b!968005 () Bool)

(declare-fun res!440123 () Bool)

(declare-fun e!624371 () Bool)

(assert (=> b!968005 (=> res!440123 e!624371)))

(assert (=> b!968005 (= res!440123 (not (is-ElementMatch!2690 lt!348238)))))

(declare-fun e!624370 () Bool)

(assert (=> b!968005 (= e!624370 e!624371)))

(declare-fun b!968006 () Bool)

(declare-fun res!440121 () Bool)

(declare-fun e!624372 () Bool)

(assert (=> b!968006 (=> (not res!440121) (not e!624372))))

(assert (=> b!968006 (= res!440121 (isEmpty!6210 (tail!1339 (_1!6455 lt!348246))))))

(declare-fun b!968007 () Bool)

(declare-fun e!624366 () Bool)

(declare-fun e!624367 () Bool)

(assert (=> b!968007 (= e!624366 e!624367)))

(declare-fun res!440124 () Bool)

(assert (=> b!968007 (=> res!440124 e!624367)))

(declare-fun call!61272 () Bool)

(assert (=> b!968007 (= res!440124 call!61272)))

(declare-fun b!968008 () Bool)

(assert (=> b!968008 (= e!624368 (nullable!816 lt!348238))))

(declare-fun bm!61267 () Bool)

(assert (=> bm!61267 (= call!61272 (isEmpty!6210 (_1!6455 lt!348246)))))

(declare-fun b!968009 () Bool)

(declare-fun res!440125 () Bool)

(assert (=> b!968009 (=> (not res!440125) (not e!624372))))

(assert (=> b!968009 (= res!440125 (not call!61272))))

(declare-fun b!968010 () Bool)

(declare-fun res!440119 () Bool)

(assert (=> b!968010 (=> res!440119 e!624371)))

(assert (=> b!968010 (= res!440119 e!624372)))

(declare-fun res!440126 () Bool)

(assert (=> b!968010 (=> (not res!440126) (not e!624372))))

(declare-fun lt!348352 () Bool)

(assert (=> b!968010 (= res!440126 lt!348352)))

(declare-fun b!968012 () Bool)

(assert (=> b!968012 (= e!624371 e!624366)))

(declare-fun res!440122 () Bool)

(assert (=> b!968012 (=> (not res!440122) (not e!624366))))

(assert (=> b!968012 (= res!440122 (not lt!348352))))

(declare-fun b!968013 () Bool)

(declare-fun e!624369 () Bool)

(assert (=> b!968013 (= e!624369 e!624370)))

(declare-fun c!157790 () Bool)

(assert (=> b!968013 (= c!157790 (is-EmptyLang!2690 lt!348238))))

(declare-fun b!968014 () Bool)

(assert (=> b!968014 (= e!624369 (= lt!348352 call!61272))))

(declare-fun b!968015 () Bool)

(declare-fun res!440120 () Bool)

(assert (=> b!968015 (=> res!440120 e!624367)))

(assert (=> b!968015 (= res!440120 (not (isEmpty!6210 (tail!1339 (_1!6455 lt!348246)))))))

(declare-fun b!968016 () Bool)

(assert (=> b!968016 (= e!624372 (= (head!1777 (_1!6455 lt!348246)) (c!157721 lt!348238)))))

(declare-fun b!968017 () Bool)

(assert (=> b!968017 (= e!624367 (not (= (head!1777 (_1!6455 lt!348246)) (c!157721 lt!348238))))))

(declare-fun d!286273 () Bool)

(assert (=> d!286273 e!624369))

(declare-fun c!157792 () Bool)

(assert (=> d!286273 (= c!157792 (is-EmptyExpr!2690 lt!348238))))

(assert (=> d!286273 (= lt!348352 e!624368)))

(declare-fun c!157791 () Bool)

(assert (=> d!286273 (= c!157791 (isEmpty!6210 (_1!6455 lt!348246)))))

(assert (=> d!286273 (validRegex!1159 lt!348238)))

(assert (=> d!286273 (= (matchR!1228 lt!348238 (_1!6455 lt!348246)) lt!348352)))

(declare-fun b!968011 () Bool)

(assert (=> b!968011 (= e!624370 (not lt!348352))))

(assert (= (and d!286273 c!157791) b!968008))

(assert (= (and d!286273 (not c!157791)) b!968004))

(assert (= (and d!286273 c!157792) b!968014))

(assert (= (and d!286273 (not c!157792)) b!968013))

(assert (= (and b!968013 c!157790) b!968011))

(assert (= (and b!968013 (not c!157790)) b!968005))

(assert (= (and b!968005 (not res!440123)) b!968010))

(assert (= (and b!968010 res!440126) b!968009))

(assert (= (and b!968009 res!440125) b!968006))

(assert (= (and b!968006 res!440121) b!968016))

(assert (= (and b!968010 (not res!440119)) b!968012))

(assert (= (and b!968012 res!440122) b!968007))

(assert (= (and b!968007 (not res!440124)) b!968015))

(assert (= (and b!968015 (not res!440120)) b!968017))

(assert (= (or b!968014 b!968007 b!968009) bm!61267))

(assert (=> b!968006 m!1173489))

(assert (=> b!968006 m!1173489))

(assert (=> b!968006 m!1173491))

(assert (=> b!968004 m!1173493))

(assert (=> b!968004 m!1173493))

(declare-fun m!1173555 () Bool)

(assert (=> b!968004 m!1173555))

(assert (=> b!968004 m!1173489))

(assert (=> b!968004 m!1173555))

(assert (=> b!968004 m!1173489))

(declare-fun m!1173557 () Bool)

(assert (=> b!968004 m!1173557))

(assert (=> bm!61267 m!1173335))

(assert (=> b!968015 m!1173489))

(assert (=> b!968015 m!1173489))

(assert (=> b!968015 m!1173491))

(declare-fun m!1173559 () Bool)

(assert (=> b!968008 m!1173559))

(assert (=> b!968017 m!1173493))

(assert (=> b!968016 m!1173493))

(assert (=> d!286273 m!1173335))

(assert (=> d!286273 m!1173429))

(assert (=> b!967629 d!286273))

(declare-fun d!286275 () Bool)

(assert (=> d!286275 (= (get!3400 lt!348243) (v!19687 lt!348243))))

(assert (=> b!967629 d!286275))

(declare-fun b!968018 () Bool)

(declare-fun e!624376 () Option!2271)

(assert (=> b!968018 (= e!624376 (Some!2270 (tuple2!11259 Nil!9904 s!10566)))))

(declare-fun b!968019 () Bool)

(declare-fun e!624375 () Bool)

(assert (=> b!968019 (= e!624375 (matchR!1228 lt!348251 s!10566))))

(declare-fun d!286277 () Bool)

(declare-fun e!624373 () Bool)

(assert (=> d!286277 e!624373))

(declare-fun res!440131 () Bool)

(assert (=> d!286277 (=> res!440131 e!624373)))

(declare-fun e!624377 () Bool)

(assert (=> d!286277 (= res!440131 e!624377)))

(declare-fun res!440130 () Bool)

(assert (=> d!286277 (=> (not res!440130) (not e!624377))))

(declare-fun lt!348355 () Option!2271)

(assert (=> d!286277 (= res!440130 (isDefined!1913 lt!348355))))

(assert (=> d!286277 (= lt!348355 e!624376)))

(declare-fun c!157793 () Bool)

(assert (=> d!286277 (= c!157793 e!624375)))

(declare-fun res!440127 () Bool)

(assert (=> d!286277 (=> (not res!440127) (not e!624375))))

(assert (=> d!286277 (= res!440127 (matchR!1228 (reg!3019 r!15766) Nil!9904))))

(assert (=> d!286277 (validRegex!1159 (reg!3019 r!15766))))

(assert (=> d!286277 (= (findConcatSeparation!377 (reg!3019 r!15766) lt!348251 Nil!9904 s!10566 s!10566) lt!348355)))

(declare-fun b!968020 () Bool)

(declare-fun e!624374 () Option!2271)

(assert (=> b!968020 (= e!624376 e!624374)))

(declare-fun c!157794 () Bool)

(assert (=> b!968020 (= c!157794 (is-Nil!9904 s!10566))))

(declare-fun b!968021 () Bool)

(declare-fun res!440128 () Bool)

(assert (=> b!968021 (=> (not res!440128) (not e!624377))))

(assert (=> b!968021 (= res!440128 (matchR!1228 (reg!3019 r!15766) (_1!6455 (get!3400 lt!348355))))))

(declare-fun b!968022 () Bool)

(declare-fun res!440129 () Bool)

(assert (=> b!968022 (=> (not res!440129) (not e!624377))))

(assert (=> b!968022 (= res!440129 (matchR!1228 lt!348251 (_2!6455 (get!3400 lt!348355))))))

(declare-fun b!968023 () Bool)

(assert (=> b!968023 (= e!624373 (not (isDefined!1913 lt!348355)))))

(declare-fun b!968024 () Bool)

(assert (=> b!968024 (= e!624374 None!2270)))

(declare-fun b!968025 () Bool)

(assert (=> b!968025 (= e!624377 (= (++!2678 (_1!6455 (get!3400 lt!348355)) (_2!6455 (get!3400 lt!348355))) s!10566))))

(declare-fun b!968026 () Bool)

(declare-fun lt!348353 () Unit!15035)

(declare-fun lt!348354 () Unit!15035)

(assert (=> b!968026 (= lt!348353 lt!348354)))

(assert (=> b!968026 (= (++!2678 (++!2678 Nil!9904 (Cons!9904 (h!15305 s!10566) Nil!9904)) (t!100966 s!10566)) s!10566)))

(assert (=> b!968026 (= lt!348354 (lemmaMoveElementToOtherListKeepsConcatEq!279 Nil!9904 (h!15305 s!10566) (t!100966 s!10566) s!10566))))

(assert (=> b!968026 (= e!624374 (findConcatSeparation!377 (reg!3019 r!15766) lt!348251 (++!2678 Nil!9904 (Cons!9904 (h!15305 s!10566) Nil!9904)) (t!100966 s!10566) s!10566))))

(assert (= (and d!286277 res!440127) b!968019))

(assert (= (and d!286277 c!157793) b!968018))

(assert (= (and d!286277 (not c!157793)) b!968020))

(assert (= (and b!968020 c!157794) b!968024))

(assert (= (and b!968020 (not c!157794)) b!968026))

(assert (= (and d!286277 res!440130) b!968021))

(assert (= (and b!968021 res!440128) b!968022))

(assert (= (and b!968022 res!440129) b!968025))

(assert (= (and d!286277 (not res!440131)) b!968023))

(declare-fun m!1173561 () Bool)

(assert (=> b!968025 m!1173561))

(declare-fun m!1173563 () Bool)

(assert (=> b!968025 m!1173563))

(declare-fun m!1173565 () Bool)

(assert (=> b!968019 m!1173565))

(assert (=> b!968021 m!1173561))

(declare-fun m!1173567 () Bool)

(assert (=> b!968021 m!1173567))

(declare-fun m!1173569 () Bool)

(assert (=> b!968023 m!1173569))

(assert (=> b!968022 m!1173561))

(declare-fun m!1173571 () Bool)

(assert (=> b!968022 m!1173571))

(assert (=> d!286277 m!1173569))

(declare-fun m!1173573 () Bool)

(assert (=> d!286277 m!1173573))

(assert (=> d!286277 m!1173499))

(assert (=> b!968026 m!1173431))

(assert (=> b!968026 m!1173431))

(assert (=> b!968026 m!1173433))

(assert (=> b!968026 m!1173435))

(assert (=> b!968026 m!1173431))

(declare-fun m!1173575 () Bool)

(assert (=> b!968026 m!1173575))

(assert (=> b!967630 d!286277))

(declare-fun b!968027 () Bool)

(declare-fun e!624380 () Bool)

(assert (=> b!968027 (= e!624380 (matchR!1228 (derivativeStep!624 lt!348253 (head!1777 s!10566)) (tail!1339 s!10566)))))

(declare-fun b!968028 () Bool)

(declare-fun res!440136 () Bool)

(declare-fun e!624383 () Bool)

(assert (=> b!968028 (=> res!440136 e!624383)))

(assert (=> b!968028 (= res!440136 (not (is-ElementMatch!2690 lt!348253)))))

(declare-fun e!624382 () Bool)

(assert (=> b!968028 (= e!624382 e!624383)))

(declare-fun b!968029 () Bool)

(declare-fun res!440134 () Bool)

(declare-fun e!624384 () Bool)

(assert (=> b!968029 (=> (not res!440134) (not e!624384))))

(assert (=> b!968029 (= res!440134 (isEmpty!6210 (tail!1339 s!10566)))))

(declare-fun b!968030 () Bool)

(declare-fun e!624378 () Bool)

(declare-fun e!624379 () Bool)

(assert (=> b!968030 (= e!624378 e!624379)))

(declare-fun res!440137 () Bool)

(assert (=> b!968030 (=> res!440137 e!624379)))

(declare-fun call!61273 () Bool)

(assert (=> b!968030 (= res!440137 call!61273)))

(declare-fun b!968031 () Bool)

(assert (=> b!968031 (= e!624380 (nullable!816 lt!348253))))

(declare-fun bm!61268 () Bool)

(assert (=> bm!61268 (= call!61273 (isEmpty!6210 s!10566))))

(declare-fun b!968032 () Bool)

(declare-fun res!440138 () Bool)

(assert (=> b!968032 (=> (not res!440138) (not e!624384))))

(assert (=> b!968032 (= res!440138 (not call!61273))))

(declare-fun b!968033 () Bool)

(declare-fun res!440132 () Bool)

(assert (=> b!968033 (=> res!440132 e!624383)))

(assert (=> b!968033 (= res!440132 e!624384)))

(declare-fun res!440139 () Bool)

(assert (=> b!968033 (=> (not res!440139) (not e!624384))))

(declare-fun lt!348356 () Bool)

(assert (=> b!968033 (= res!440139 lt!348356)))

(declare-fun b!968035 () Bool)

(assert (=> b!968035 (= e!624383 e!624378)))

(declare-fun res!440135 () Bool)

(assert (=> b!968035 (=> (not res!440135) (not e!624378))))

(assert (=> b!968035 (= res!440135 (not lt!348356))))

(declare-fun b!968036 () Bool)

(declare-fun e!624381 () Bool)

(assert (=> b!968036 (= e!624381 e!624382)))

(declare-fun c!157795 () Bool)

(assert (=> b!968036 (= c!157795 (is-EmptyLang!2690 lt!348253))))

(declare-fun b!968037 () Bool)

(assert (=> b!968037 (= e!624381 (= lt!348356 call!61273))))

(declare-fun b!968038 () Bool)

(declare-fun res!440133 () Bool)

(assert (=> b!968038 (=> res!440133 e!624379)))

(assert (=> b!968038 (= res!440133 (not (isEmpty!6210 (tail!1339 s!10566))))))

(declare-fun b!968039 () Bool)

(assert (=> b!968039 (= e!624384 (= (head!1777 s!10566) (c!157721 lt!348253)))))

(declare-fun b!968040 () Bool)

(assert (=> b!968040 (= e!624379 (not (= (head!1777 s!10566) (c!157721 lt!348253))))))

(declare-fun d!286279 () Bool)

(assert (=> d!286279 e!624381))

(declare-fun c!157797 () Bool)

(assert (=> d!286279 (= c!157797 (is-EmptyExpr!2690 lt!348253))))

(assert (=> d!286279 (= lt!348356 e!624380)))

(declare-fun c!157796 () Bool)

(assert (=> d!286279 (= c!157796 (isEmpty!6210 s!10566))))

(assert (=> d!286279 (validRegex!1159 lt!348253)))

(assert (=> d!286279 (= (matchR!1228 lt!348253 s!10566) lt!348356)))

(declare-fun b!968034 () Bool)

(assert (=> b!968034 (= e!624382 (not lt!348356))))

(assert (= (and d!286279 c!157796) b!968031))

(assert (= (and d!286279 (not c!157796)) b!968027))

(assert (= (and d!286279 c!157797) b!968037))

(assert (= (and d!286279 (not c!157797)) b!968036))

(assert (= (and b!968036 c!157795) b!968034))

(assert (= (and b!968036 (not c!157795)) b!968028))

(assert (= (and b!968028 (not res!440136)) b!968033))

(assert (= (and b!968033 res!440139) b!968032))

(assert (= (and b!968032 res!440138) b!968029))

(assert (= (and b!968029 res!440134) b!968039))

(assert (= (and b!968033 (not res!440132)) b!968035))

(assert (= (and b!968035 res!440135) b!968030))

(assert (= (and b!968030 (not res!440137)) b!968038))

(assert (= (and b!968038 (not res!440133)) b!968040))

(assert (= (or b!968037 b!968030 b!968032) bm!61268))

(assert (=> b!968029 m!1173511))

(assert (=> b!968029 m!1173511))

(assert (=> b!968029 m!1173513))

(assert (=> b!968027 m!1173515))

(assert (=> b!968027 m!1173515))

(declare-fun m!1173577 () Bool)

(assert (=> b!968027 m!1173577))

(assert (=> b!968027 m!1173511))

(assert (=> b!968027 m!1173577))

(assert (=> b!968027 m!1173511))

(declare-fun m!1173579 () Bool)

(assert (=> b!968027 m!1173579))

(assert (=> bm!61268 m!1173319))

(assert (=> b!968038 m!1173511))

(assert (=> b!968038 m!1173511))

(assert (=> b!968038 m!1173513))

(assert (=> b!968031 m!1173537))

(assert (=> b!968040 m!1173515))

(assert (=> b!968039 m!1173515))

(assert (=> d!286279 m!1173319))

(assert (=> d!286279 m!1173467))

(assert (=> b!967630 d!286279))

(declare-fun bs!242122 () Bool)

(declare-fun d!286281 () Bool)

(assert (= bs!242122 (and d!286281 d!286239)))

(declare-fun lambda!34167 () Int)

(assert (=> bs!242122 (= (and (= (reg!3019 r!15766) lt!348238) (= (Star!2690 (reg!3019 r!15766)) lt!348253)) (= lambda!34167 lambda!34155))))

(declare-fun bs!242123 () Bool)

(assert (= bs!242123 (and d!286281 b!967964)))

(assert (=> bs!242123 (not (= lambda!34167 lambda!34162))))

(declare-fun bs!242124 () Bool)

(assert (= bs!242124 (and d!286281 b!967856)))

(assert (=> bs!242124 (not (= lambda!34167 lambda!34152))))

(declare-fun bs!242125 () Bool)

(assert (= bs!242125 (and d!286281 b!967634)))

(assert (=> bs!242125 (= (and (= (reg!3019 r!15766) lt!348238) (= (Star!2690 (reg!3019 r!15766)) lt!348253)) (= lambda!34167 lambda!34117))))

(declare-fun bs!242126 () Bool)

(assert (= bs!242126 (and d!286281 d!286223)))

(assert (=> bs!242126 (= (and (= (reg!3019 r!15766) lt!348238) (= (Star!2690 (reg!3019 r!15766)) (Star!2690 lt!348238))) (= lambda!34167 lambda!34143))))

(declare-fun bs!242128 () Bool)

(assert (= bs!242128 (and d!286281 b!967925)))

(assert (=> bs!242128 (not (= lambda!34167 lambda!34160))))

(declare-fun bs!242129 () Bool)

(assert (= bs!242129 (and d!286281 b!967850)))

(assert (=> bs!242129 (not (= lambda!34167 lambda!34151))))

(declare-fun bs!242130 () Bool)

(assert (= bs!242130 (and d!286281 b!967630)))

(assert (=> bs!242130 (not (= lambda!34167 lambda!34116))))

(assert (=> bs!242130 (= (= (Star!2690 (reg!3019 r!15766)) lt!348251) (= lambda!34167 lambda!34115))))

(assert (=> bs!242125 (not (= lambda!34167 lambda!34118))))

(assert (=> bs!242126 (not (= lambda!34167 lambda!34144))))

(declare-fun bs!242133 () Bool)

(assert (= bs!242133 (and d!286281 b!967919)))

(assert (=> bs!242133 (not (= lambda!34167 lambda!34159))))

(declare-fun bs!242134 () Bool)

(assert (= bs!242134 (and d!286281 b!967958)))

(assert (=> bs!242134 (not (= lambda!34167 lambda!34161))))

(assert (=> d!286281 true))

(assert (=> d!286281 true))

(declare-fun lambda!34169 () Int)

(assert (=> bs!242122 (not (= lambda!34169 lambda!34155))))

(assert (=> bs!242123 (not (= lambda!34169 lambda!34162))))

(assert (=> bs!242124 (not (= lambda!34169 lambda!34152))))

(assert (=> bs!242125 (not (= lambda!34169 lambda!34117))))

(declare-fun bs!242137 () Bool)

(assert (= bs!242137 d!286281))

(assert (=> bs!242137 (not (= lambda!34169 lambda!34167))))

(assert (=> bs!242126 (not (= lambda!34169 lambda!34143))))

(assert (=> bs!242128 (not (= lambda!34169 lambda!34160))))

(assert (=> bs!242129 (= (and (= (reg!3019 r!15766) (reg!3019 lt!348253)) (= (Star!2690 (reg!3019 r!15766)) lt!348253)) (= lambda!34169 lambda!34151))))

(assert (=> bs!242130 (= (= (Star!2690 (reg!3019 r!15766)) lt!348251) (= lambda!34169 lambda!34116))))

(assert (=> bs!242130 (not (= lambda!34169 lambda!34115))))

(assert (=> bs!242125 (= (and (= (reg!3019 r!15766) lt!348238) (= (Star!2690 (reg!3019 r!15766)) lt!348253)) (= lambda!34169 lambda!34118))))

(assert (=> bs!242126 (= (and (= (reg!3019 r!15766) lt!348238) (= (Star!2690 (reg!3019 r!15766)) (Star!2690 lt!348238))) (= lambda!34169 lambda!34144))))

(assert (=> bs!242133 (= (= (Star!2690 (reg!3019 r!15766)) r!15766) (= lambda!34169 lambda!34159))))

(assert (=> bs!242134 (= (and (= s!10566 (_1!6455 lt!348246)) (= (reg!3019 r!15766) (reg!3019 (reg!3019 r!15766))) (= (Star!2690 (reg!3019 r!15766)) (reg!3019 r!15766))) (= lambda!34169 lambda!34161))))

(assert (=> d!286281 true))

(assert (=> d!286281 true))

(assert (=> d!286281 (= (Exists!433 lambda!34167) (Exists!433 lambda!34169))))

(declare-fun lt!348358 () Unit!15035)

(assert (=> d!286281 (= lt!348358 (choose!6111 (reg!3019 r!15766) s!10566))))

(assert (=> d!286281 (validRegex!1159 (reg!3019 r!15766))))

(assert (=> d!286281 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!151 (reg!3019 r!15766) s!10566) lt!348358)))

(declare-fun m!1173581 () Bool)

(assert (=> bs!242137 m!1173581))

(declare-fun m!1173583 () Bool)

(assert (=> bs!242137 m!1173583))

(declare-fun m!1173585 () Bool)

(assert (=> bs!242137 m!1173585))

(assert (=> bs!242137 m!1173499))

(assert (=> b!967630 d!286281))

(declare-fun d!286283 () Bool)

(assert (=> d!286283 (= (isDefined!1913 (findConcatSeparation!377 (reg!3019 r!15766) lt!348251 Nil!9904 s!10566 s!10566)) (not (isEmpty!6212 (findConcatSeparation!377 (reg!3019 r!15766) lt!348251 Nil!9904 s!10566 s!10566))))))

(declare-fun bs!242138 () Bool)

(assert (= bs!242138 d!286283))

(assert (=> bs!242138 m!1173287))

(declare-fun m!1173587 () Bool)

(assert (=> bs!242138 m!1173587))

(assert (=> b!967630 d!286283))

(declare-fun d!286285 () Bool)

(assert (=> d!286285 (= (Exists!433 lambda!34115) (choose!6112 lambda!34115))))

(declare-fun bs!242139 () Bool)

(assert (= bs!242139 d!286285))

(declare-fun m!1173589 () Bool)

(assert (=> bs!242139 m!1173589))

(assert (=> b!967630 d!286285))

(declare-fun d!286287 () Bool)

(assert (=> d!286287 (= (Exists!433 lambda!34116) (choose!6112 lambda!34116))))

(declare-fun bs!242140 () Bool)

(assert (= bs!242140 d!286287))

(declare-fun m!1173591 () Bool)

(assert (=> bs!242140 m!1173591))

(assert (=> b!967630 d!286287))

(declare-fun bs!242141 () Bool)

(declare-fun d!286289 () Bool)

(assert (= bs!242141 (and d!286289 d!286239)))

(declare-fun lambda!34171 () Int)

(assert (=> bs!242141 (= (and (= (reg!3019 r!15766) lt!348238) (= lt!348251 lt!348253)) (= lambda!34171 lambda!34155))))

(declare-fun bs!242142 () Bool)

(assert (= bs!242142 (and d!286289 b!967964)))

(assert (=> bs!242142 (not (= lambda!34171 lambda!34162))))

(declare-fun bs!242143 () Bool)

(assert (= bs!242143 (and d!286289 b!967856)))

(assert (=> bs!242143 (not (= lambda!34171 lambda!34152))))

(declare-fun bs!242144 () Bool)

(assert (= bs!242144 (and d!286289 b!967634)))

(assert (=> bs!242144 (= (and (= (reg!3019 r!15766) lt!348238) (= lt!348251 lt!348253)) (= lambda!34171 lambda!34117))))

(declare-fun bs!242145 () Bool)

(assert (= bs!242145 (and d!286289 d!286281)))

(assert (=> bs!242145 (= (= lt!348251 (Star!2690 (reg!3019 r!15766))) (= lambda!34171 lambda!34167))))

(declare-fun bs!242146 () Bool)

(assert (= bs!242146 (and d!286289 b!967925)))

(assert (=> bs!242146 (not (= lambda!34171 lambda!34160))))

(declare-fun bs!242147 () Bool)

(assert (= bs!242147 (and d!286289 b!967850)))

(assert (=> bs!242147 (not (= lambda!34171 lambda!34151))))

(declare-fun bs!242148 () Bool)

(assert (= bs!242148 (and d!286289 b!967630)))

(assert (=> bs!242148 (not (= lambda!34171 lambda!34116))))

(assert (=> bs!242148 (= lambda!34171 lambda!34115)))

(assert (=> bs!242144 (not (= lambda!34171 lambda!34118))))

(declare-fun bs!242149 () Bool)

(assert (= bs!242149 (and d!286289 d!286223)))

(assert (=> bs!242149 (not (= lambda!34171 lambda!34144))))

(declare-fun bs!242150 () Bool)

(assert (= bs!242150 (and d!286289 b!967919)))

(assert (=> bs!242150 (not (= lambda!34171 lambda!34159))))

(declare-fun bs!242151 () Bool)

(assert (= bs!242151 (and d!286289 b!967958)))

(assert (=> bs!242151 (not (= lambda!34171 lambda!34161))))

(assert (=> bs!242145 (not (= lambda!34171 lambda!34169))))

(assert (=> bs!242149 (= (and (= (reg!3019 r!15766) lt!348238) (= lt!348251 (Star!2690 lt!348238))) (= lambda!34171 lambda!34143))))

(assert (=> d!286289 true))

(assert (=> d!286289 true))

(assert (=> d!286289 true))

(assert (=> d!286289 (= (isDefined!1913 (findConcatSeparation!377 (reg!3019 r!15766) lt!348251 Nil!9904 s!10566 s!10566)) (Exists!433 lambda!34171))))

(declare-fun lt!348359 () Unit!15035)

(assert (=> d!286289 (= lt!348359 (choose!6114 (reg!3019 r!15766) lt!348251 s!10566))))

(assert (=> d!286289 (validRegex!1159 (reg!3019 r!15766))))

(assert (=> d!286289 (= (lemmaFindConcatSeparationEquivalentToExists!377 (reg!3019 r!15766) lt!348251 s!10566) lt!348359)))

(declare-fun bs!242153 () Bool)

(assert (= bs!242153 d!286289))

(assert (=> bs!242153 m!1173287))

(declare-fun m!1173593 () Bool)

(assert (=> bs!242153 m!1173593))

(assert (=> bs!242153 m!1173499))

(assert (=> bs!242153 m!1173287))

(assert (=> bs!242153 m!1173289))

(declare-fun m!1173595 () Bool)

(assert (=> bs!242153 m!1173595))

(assert (=> b!967630 d!286289))

(declare-fun b!968074 () Bool)

(declare-fun e!624406 () Regex!2690)

(declare-fun e!624409 () Regex!2690)

(assert (=> b!968074 (= e!624406 e!624409)))

(declare-fun c!157815 () Bool)

(assert (=> b!968074 (= c!157815 (and (is-Concat!4523 (reg!3019 r!15766)) (is-EmptyExpr!2690 (regTwo!5892 (reg!3019 r!15766)))))))

(declare-fun bm!61281 () Bool)

(declare-fun call!61286 () Regex!2690)

(declare-fun call!61290 () Regex!2690)

(assert (=> bm!61281 (= call!61286 call!61290)))

(declare-fun b!968076 () Bool)

(declare-fun e!624404 () Bool)

(declare-fun lt!348363 () Regex!2690)

(assert (=> b!968076 (= e!624404 (= (nullable!816 lt!348363) (nullable!816 (reg!3019 r!15766))))))

(declare-fun b!968077 () Bool)

(declare-fun c!157816 () Bool)

(assert (=> b!968077 (= c!157816 (is-Star!2690 (reg!3019 r!15766)))))

(declare-fun e!624405 () Regex!2690)

(declare-fun e!624408 () Regex!2690)

(assert (=> b!968077 (= e!624405 e!624408)))

(declare-fun bm!61282 () Bool)

(declare-fun call!61289 () Regex!2690)

(assert (=> bm!61282 (= call!61289 call!61286)))

(declare-fun call!61287 () Regex!2690)

(declare-fun c!157813 () Bool)

(declare-fun c!157812 () Bool)

(declare-fun bm!61283 () Bool)

(declare-fun c!157814 () Bool)

(assert (=> bm!61283 (= call!61287 (removeUselessConcat!337 (ite c!157814 (regTwo!5892 (reg!3019 r!15766)) (ite c!157815 (regOne!5892 (reg!3019 r!15766)) (ite c!157813 (regTwo!5892 (reg!3019 r!15766)) (ite c!157812 (regTwo!5893 (reg!3019 r!15766)) (reg!3019 (reg!3019 r!15766))))))))))

(declare-fun b!968078 () Bool)

(declare-fun e!624407 () Regex!2690)

(assert (=> b!968078 (= e!624407 e!624405)))

(assert (=> b!968078 (= c!157812 (is-Union!2690 (reg!3019 r!15766)))))

(declare-fun b!968079 () Bool)

(assert (=> b!968079 (= c!157813 (is-Concat!4523 (reg!3019 r!15766)))))

(assert (=> b!968079 (= e!624409 e!624407)))

(declare-fun b!968080 () Bool)

(assert (=> b!968080 (= e!624409 call!61290)))

(declare-fun bm!61284 () Bool)

(assert (=> bm!61284 (= call!61290 call!61287)))

(declare-fun b!968081 () Bool)

(declare-fun call!61288 () Regex!2690)

(assert (=> b!968081 (= e!624405 (Union!2690 call!61288 call!61289))))

(declare-fun b!968082 () Bool)

(assert (=> b!968082 (= e!624406 call!61287)))

(declare-fun bm!61285 () Bool)

(assert (=> bm!61285 (= call!61288 (removeUselessConcat!337 (ite c!157813 (regOne!5892 (reg!3019 r!15766)) (regOne!5893 (reg!3019 r!15766)))))))

(declare-fun b!968075 () Bool)

(assert (=> b!968075 (= e!624408 (Star!2690 call!61289))))

(declare-fun d!286291 () Bool)

(assert (=> d!286291 e!624404))

(declare-fun res!440145 () Bool)

(assert (=> d!286291 (=> (not res!440145) (not e!624404))))

(assert (=> d!286291 (= res!440145 (validRegex!1159 lt!348363))))

(assert (=> d!286291 (= lt!348363 e!624406)))

(assert (=> d!286291 (= c!157814 (and (is-Concat!4523 (reg!3019 r!15766)) (is-EmptyExpr!2690 (regOne!5892 (reg!3019 r!15766)))))))

(assert (=> d!286291 (validRegex!1159 (reg!3019 r!15766))))

(assert (=> d!286291 (= (removeUselessConcat!337 (reg!3019 r!15766)) lt!348363)))

(declare-fun b!968083 () Bool)

(assert (=> b!968083 (= e!624407 (Concat!4523 call!61288 call!61286))))

(declare-fun b!968084 () Bool)

(assert (=> b!968084 (= e!624408 (reg!3019 r!15766))))

(assert (= (and d!286291 c!157814) b!968082))

(assert (= (and d!286291 (not c!157814)) b!968074))

(assert (= (and b!968074 c!157815) b!968080))

(assert (= (and b!968074 (not c!157815)) b!968079))

(assert (= (and b!968079 c!157813) b!968083))

(assert (= (and b!968079 (not c!157813)) b!968078))

(assert (= (and b!968078 c!157812) b!968081))

(assert (= (and b!968078 (not c!157812)) b!968077))

(assert (= (and b!968077 c!157816) b!968075))

(assert (= (and b!968077 (not c!157816)) b!968084))

(assert (= (or b!968081 b!968075) bm!61282))

(assert (= (or b!968083 bm!61282) bm!61281))

(assert (= (or b!968083 b!968081) bm!61285))

(assert (= (or b!968080 bm!61281) bm!61284))

(assert (= (or b!968082 bm!61284) bm!61283))

(assert (= (and d!286291 res!440145) b!968076))

(declare-fun m!1173613 () Bool)

(assert (=> b!968076 m!1173613))

(assert (=> b!968076 m!1173307))

(declare-fun m!1173615 () Bool)

(assert (=> bm!61283 m!1173615))

(declare-fun m!1173617 () Bool)

(assert (=> bm!61285 m!1173617))

(declare-fun m!1173619 () Bool)

(assert (=> d!286291 m!1173619))

(assert (=> d!286291 m!1173499))

(assert (=> b!967630 d!286291))

(declare-fun b!968096 () Bool)

(declare-fun e!624412 () Bool)

(declare-fun tp!296715 () Bool)

(declare-fun tp!296711 () Bool)

(assert (=> b!968096 (= e!624412 (and tp!296715 tp!296711))))

(declare-fun b!968095 () Bool)

(assert (=> b!968095 (= e!624412 tp_is_empty!5023)))

(declare-fun b!968098 () Bool)

(declare-fun tp!296714 () Bool)

(declare-fun tp!296713 () Bool)

(assert (=> b!968098 (= e!624412 (and tp!296714 tp!296713))))

(assert (=> b!967633 (= tp!296681 e!624412)))

(declare-fun b!968097 () Bool)

(declare-fun tp!296712 () Bool)

(assert (=> b!968097 (= e!624412 tp!296712)))

(assert (= (and b!967633 (is-ElementMatch!2690 (reg!3019 r!15766))) b!968095))

(assert (= (and b!967633 (is-Concat!4523 (reg!3019 r!15766))) b!968096))

(assert (= (and b!967633 (is-Star!2690 (reg!3019 r!15766))) b!968097))

(assert (= (and b!967633 (is-Union!2690 (reg!3019 r!15766))) b!968098))

(declare-fun b!968100 () Bool)

(declare-fun e!624413 () Bool)

(declare-fun tp!296720 () Bool)

(declare-fun tp!296716 () Bool)

(assert (=> b!968100 (= e!624413 (and tp!296720 tp!296716))))

(declare-fun b!968099 () Bool)

(assert (=> b!968099 (= e!624413 tp_is_empty!5023)))

(declare-fun b!968102 () Bool)

(declare-fun tp!296719 () Bool)

(declare-fun tp!296718 () Bool)

(assert (=> b!968102 (= e!624413 (and tp!296719 tp!296718))))

(assert (=> b!967636 (= tp!296679 e!624413)))

(declare-fun b!968101 () Bool)

(declare-fun tp!296717 () Bool)

(assert (=> b!968101 (= e!624413 tp!296717)))

(assert (= (and b!967636 (is-ElementMatch!2690 (regOne!5893 r!15766))) b!968099))

(assert (= (and b!967636 (is-Concat!4523 (regOne!5893 r!15766))) b!968100))

(assert (= (and b!967636 (is-Star!2690 (regOne!5893 r!15766))) b!968101))

(assert (= (and b!967636 (is-Union!2690 (regOne!5893 r!15766))) b!968102))

(declare-fun b!968104 () Bool)

(declare-fun e!624414 () Bool)

(declare-fun tp!296725 () Bool)

(declare-fun tp!296721 () Bool)

(assert (=> b!968104 (= e!624414 (and tp!296725 tp!296721))))

(declare-fun b!968103 () Bool)

(assert (=> b!968103 (= e!624414 tp_is_empty!5023)))

(declare-fun b!968106 () Bool)

(declare-fun tp!296724 () Bool)

(declare-fun tp!296723 () Bool)

(assert (=> b!968106 (= e!624414 (and tp!296724 tp!296723))))

(assert (=> b!967636 (= tp!296682 e!624414)))

(declare-fun b!968105 () Bool)

(declare-fun tp!296722 () Bool)

(assert (=> b!968105 (= e!624414 tp!296722)))

(assert (= (and b!967636 (is-ElementMatch!2690 (regTwo!5893 r!15766))) b!968103))

(assert (= (and b!967636 (is-Concat!4523 (regTwo!5893 r!15766))) b!968104))

(assert (= (and b!967636 (is-Star!2690 (regTwo!5893 r!15766))) b!968105))

(assert (= (and b!967636 (is-Union!2690 (regTwo!5893 r!15766))) b!968106))

(declare-fun b!968111 () Bool)

(declare-fun e!624417 () Bool)

(declare-fun tp!296728 () Bool)

(assert (=> b!968111 (= e!624417 (and tp_is_empty!5023 tp!296728))))

(assert (=> b!967624 (= tp!296680 e!624417)))

(assert (= (and b!967624 (is-Cons!9904 (t!100966 s!10566))) b!968111))

(declare-fun b!968113 () Bool)

(declare-fun e!624418 () Bool)

(declare-fun tp!296733 () Bool)

(declare-fun tp!296729 () Bool)

(assert (=> b!968113 (= e!624418 (and tp!296733 tp!296729))))

(declare-fun b!968112 () Bool)

(assert (=> b!968112 (= e!624418 tp_is_empty!5023)))

(declare-fun b!968115 () Bool)

(declare-fun tp!296732 () Bool)

(declare-fun tp!296731 () Bool)

(assert (=> b!968115 (= e!624418 (and tp!296732 tp!296731))))

(assert (=> b!967635 (= tp!296678 e!624418)))

(declare-fun b!968114 () Bool)

(declare-fun tp!296730 () Bool)

(assert (=> b!968114 (= e!624418 tp!296730)))

(assert (= (and b!967635 (is-ElementMatch!2690 (regOne!5892 r!15766))) b!968112))

(assert (= (and b!967635 (is-Concat!4523 (regOne!5892 r!15766))) b!968113))

(assert (= (and b!967635 (is-Star!2690 (regOne!5892 r!15766))) b!968114))

(assert (= (and b!967635 (is-Union!2690 (regOne!5892 r!15766))) b!968115))

(declare-fun b!968117 () Bool)

(declare-fun e!624419 () Bool)

(declare-fun tp!296738 () Bool)

(declare-fun tp!296734 () Bool)

(assert (=> b!968117 (= e!624419 (and tp!296738 tp!296734))))

(declare-fun b!968116 () Bool)

(assert (=> b!968116 (= e!624419 tp_is_empty!5023)))

(declare-fun b!968119 () Bool)

(declare-fun tp!296737 () Bool)

(declare-fun tp!296736 () Bool)

(assert (=> b!968119 (= e!624419 (and tp!296737 tp!296736))))

(assert (=> b!967635 (= tp!296677 e!624419)))

(declare-fun b!968118 () Bool)

(declare-fun tp!296735 () Bool)

(assert (=> b!968118 (= e!624419 tp!296735)))

(assert (= (and b!967635 (is-ElementMatch!2690 (regTwo!5892 r!15766))) b!968116))

(assert (= (and b!967635 (is-Concat!4523 (regTwo!5892 r!15766))) b!968117))

(assert (= (and b!967635 (is-Star!2690 (regTwo!5892 r!15766))) b!968118))

(assert (= (and b!967635 (is-Union!2690 (regTwo!5892 r!15766))) b!968119))

(push 1)

(assert (not b!968119))

(assert (not b!967959))

(assert (not b!968029))

(assert (not d!286251))

(assert (not bm!61264))

(assert (not b!967903))

(assert (not b!968039))

(assert (not b!968026))

(assert (not bm!61255))

(assert (not b!968021))

(assert (not b!967851))

(assert (not b!968040))

(assert (not b!968023))

(assert (not b!967926))

(assert (not d!286261))

(assert (not b!968006))

(assert (not b!967957))

(assert (not b!968076))

(assert (not b!968008))

(assert (not d!286291))

(assert (not bm!61268))

(assert (not d!286215))

(assert (not b!967901))

(assert (not bm!61285))

(assert (not b!968115))

(assert (not b!967905))

(assert (not bm!61265))

(assert (not b!967783))

(assert (not d!286287))

(assert (not d!286289))

(assert (not b!967944))

(assert (not d!286233))

(assert (not b!968118))

(assert (not b!968106))

(assert (not b!968098))

(assert (not b!968100))

(assert (not b!968004))

(assert (not b!967868))

(assert (not b!967952))

(assert (not b!967731))

(assert (not b!968105))

(assert (not b!968031))

(assert (not b!968114))

(assert (not b!968097))

(assert (not d!286229))

(assert (not b!968038))

(assert (not b!967913))

(assert (not b!968113))

(assert (not b!967997))

(assert (not d!286267))

(assert (not bm!61252))

(assert (not d!286281))

(assert (not d!286273))

(assert (not b!968016))

(assert (not b!968104))

(assert (not b!968015))

(assert (not bm!61283))

(assert (not bm!61247))

(assert (not b!967938))

(assert (not b!968111))

(assert (not d!286279))

(assert (not b!967918))

(assert (not b!967912))

(assert (not bm!61248))

(assert (not b!968019))

(assert (not bm!61257))

(assert tp_is_empty!5023)

(assert (not bm!61267))

(assert (not b!967940))

(assert (not b!967849))

(assert (not bm!61254))

(assert (not b!968025))

(assert (not d!286231))

(assert (not b!968096))

(assert (not d!286283))

(assert (not d!286277))

(assert (not b!967939))

(assert (not d!286237))

(assert (not d!286247))

(assert (not b!968117))

(assert (not d!286285))

(assert (not b!967953))

(assert (not b!967866))

(assert (not b!967781))

(assert (not b!967784))

(assert (not bm!61253))

(assert (not b!967966))

(assert (not b!967920))

(assert (not b!967928))

(assert (not b!967788))

(assert (not d!286259))

(assert (not b!967785))

(assert (not d!286239))

(assert (not b!967732))

(assert (not b!967930))

(assert (not b!968102))

(assert (not bm!61256))

(assert (not b!967937))

(assert (not b!967951))

(assert (not d!286257))

(assert (not b!968022))

(assert (not d!286223))

(assert (not b!967914))

(assert (not b!967787))

(assert (not bm!61251))

(assert (not b!968101))

(assert (not d!286219))

(assert (not b!968017))

(assert (not b!968027))

(assert (not b!967942))

(assert (not d!286263))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

