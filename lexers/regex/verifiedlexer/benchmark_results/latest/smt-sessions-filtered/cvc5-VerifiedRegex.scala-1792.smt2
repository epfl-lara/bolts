; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89328 () Bool)

(assert start!89328)

(declare-fun b!1026234 () Bool)

(assert (=> b!1026234 true))

(assert (=> b!1026234 true))

(declare-fun lambda!36624 () Int)

(declare-fun lambda!36623 () Int)

(assert (=> b!1026234 (not (= lambda!36624 lambda!36623))))

(assert (=> b!1026234 true))

(assert (=> b!1026234 true))

(declare-fun res!461033 () Bool)

(declare-fun e!654746 () Bool)

(assert (=> start!89328 (=> (not res!461033) (not e!654746))))

(declare-datatypes ((C!6254 0))(
  ( (C!6255 (val!3375 Int)) )
))
(declare-datatypes ((Regex!2842 0))(
  ( (ElementMatch!2842 (c!170159 C!6254)) (Concat!4675 (regOne!6196 Regex!2842) (regTwo!6196 Regex!2842)) (EmptyExpr!2842) (Star!2842 (reg!3171 Regex!2842)) (EmptyLang!2842) (Union!2842 (regOne!6197 Regex!2842) (regTwo!6197 Regex!2842)) )
))
(declare-fun r!15766 () Regex!2842)

(declare-fun validRegex!1311 (Regex!2842) Bool)

(assert (=> start!89328 (= res!461033 (validRegex!1311 r!15766))))

(assert (=> start!89328 e!654746))

(declare-fun e!654745 () Bool)

(assert (=> start!89328 e!654745))

(declare-fun e!654742 () Bool)

(assert (=> start!89328 e!654742))

(declare-fun e!654744 () Bool)

(declare-fun e!654743 () Bool)

(assert (=> b!1026234 (= e!654744 e!654743)))

(declare-fun res!461034 () Bool)

(assert (=> b!1026234 (=> res!461034 e!654743)))

(declare-datatypes ((List!10072 0))(
  ( (Nil!10056) (Cons!10056 (h!15457 C!6254) (t!101118 List!10072)) )
))
(declare-fun s!10566 () List!10072)

(declare-fun isEmpty!6421 (List!10072) Bool)

(assert (=> b!1026234 (= res!461034 (not (isEmpty!6421 s!10566)))))

(declare-fun Exists!569 (Int) Bool)

(assert (=> b!1026234 (= (Exists!569 lambda!36623) (Exists!569 lambda!36624))))

(declare-datatypes ((Unit!15359 0))(
  ( (Unit!15360) )
))
(declare-fun lt!355207 () Unit!15359)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!265 (Regex!2842 Regex!2842 List!10072) Unit!15359)

(assert (=> b!1026234 (= lt!355207 (lemmaExistCutMatchRandMatchRSpecEquivalent!265 (regOne!6196 r!15766) EmptyExpr!2842 s!10566))))

(declare-datatypes ((tuple2!11458 0))(
  ( (tuple2!11459 (_1!6555 List!10072) (_2!6555 List!10072)) )
))
(declare-datatypes ((Option!2371 0))(
  ( (None!2370) (Some!2370 (v!19787 tuple2!11458)) )
))
(declare-fun isDefined!2013 (Option!2371) Bool)

(declare-fun findConcatSeparation!477 (Regex!2842 Regex!2842 List!10072 List!10072 List!10072) Option!2371)

(assert (=> b!1026234 (= (isDefined!2013 (findConcatSeparation!477 (regOne!6196 r!15766) EmptyExpr!2842 Nil!10056 s!10566 s!10566)) (Exists!569 lambda!36623))))

(declare-fun lt!355204 () Unit!15359)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!477 (Regex!2842 Regex!2842 List!10072) Unit!15359)

(assert (=> b!1026234 (= lt!355204 (lemmaFindConcatSeparationEquivalentToExists!477 (regOne!6196 r!15766) EmptyExpr!2842 s!10566))))

(declare-fun b!1026235 () Bool)

(assert (=> b!1026235 (= e!654746 (not e!654744))))

(declare-fun res!461035 () Bool)

(assert (=> b!1026235 (=> res!461035 e!654744)))

(declare-fun lt!355206 () Bool)

(assert (=> b!1026235 (= res!461035 (or lt!355206 (and (is-Concat!4675 r!15766) (is-EmptyExpr!2842 (regOne!6196 r!15766))) (not (is-Concat!4675 r!15766)) (not (is-EmptyExpr!2842 (regTwo!6196 r!15766)))))))

(declare-fun matchRSpec!641 (Regex!2842 List!10072) Bool)

(assert (=> b!1026235 (= lt!355206 (matchRSpec!641 r!15766 s!10566))))

(declare-fun matchR!1378 (Regex!2842 List!10072) Bool)

(assert (=> b!1026235 (= lt!355206 (matchR!1378 r!15766 s!10566))))

(declare-fun lt!355205 () Unit!15359)

(declare-fun mainMatchTheorem!641 (Regex!2842 List!10072) Unit!15359)

(assert (=> b!1026235 (= lt!355205 (mainMatchTheorem!641 r!15766 s!10566))))

(declare-fun b!1026236 () Bool)

(declare-fun removeUselessConcat!403 (Regex!2842) Regex!2842)

(assert (=> b!1026236 (= e!654743 (not (matchR!1378 (removeUselessConcat!403 r!15766) s!10566)))))

(declare-fun b!1026237 () Bool)

(declare-fun tp!311405 () Bool)

(assert (=> b!1026237 (= e!654745 tp!311405)))

(declare-fun b!1026238 () Bool)

(declare-fun tp!311403 () Bool)

(declare-fun tp!311406 () Bool)

(assert (=> b!1026238 (= e!654745 (and tp!311403 tp!311406))))

(declare-fun b!1026239 () Bool)

(declare-fun tp_is_empty!5327 () Bool)

(assert (=> b!1026239 (= e!654745 tp_is_empty!5327)))

(declare-fun b!1026240 () Bool)

(declare-fun tp!311402 () Bool)

(assert (=> b!1026240 (= e!654742 (and tp_is_empty!5327 tp!311402))))

(declare-fun b!1026241 () Bool)

(declare-fun tp!311404 () Bool)

(declare-fun tp!311401 () Bool)

(assert (=> b!1026241 (= e!654745 (and tp!311404 tp!311401))))

(assert (= (and start!89328 res!461033) b!1026235))

(assert (= (and b!1026235 (not res!461035)) b!1026234))

(assert (= (and b!1026234 (not res!461034)) b!1026236))

(assert (= (and start!89328 (is-ElementMatch!2842 r!15766)) b!1026239))

(assert (= (and start!89328 (is-Concat!4675 r!15766)) b!1026241))

(assert (= (and start!89328 (is-Star!2842 r!15766)) b!1026237))

(assert (= (and start!89328 (is-Union!2842 r!15766)) b!1026238))

(assert (= (and start!89328 (is-Cons!10056 s!10566)) b!1026240))

(declare-fun m!1202477 () Bool)

(assert (=> start!89328 m!1202477))

(declare-fun m!1202479 () Bool)

(assert (=> b!1026234 m!1202479))

(declare-fun m!1202481 () Bool)

(assert (=> b!1026234 m!1202481))

(assert (=> b!1026234 m!1202481))

(assert (=> b!1026234 m!1202479))

(declare-fun m!1202483 () Bool)

(assert (=> b!1026234 m!1202483))

(declare-fun m!1202485 () Bool)

(assert (=> b!1026234 m!1202485))

(declare-fun m!1202487 () Bool)

(assert (=> b!1026234 m!1202487))

(declare-fun m!1202489 () Bool)

(assert (=> b!1026234 m!1202489))

(declare-fun m!1202491 () Bool)

(assert (=> b!1026234 m!1202491))

(declare-fun m!1202493 () Bool)

(assert (=> b!1026235 m!1202493))

(declare-fun m!1202495 () Bool)

(assert (=> b!1026235 m!1202495))

(declare-fun m!1202497 () Bool)

(assert (=> b!1026235 m!1202497))

(declare-fun m!1202499 () Bool)

(assert (=> b!1026236 m!1202499))

(assert (=> b!1026236 m!1202499))

(declare-fun m!1202501 () Bool)

(assert (=> b!1026236 m!1202501))

(push 1)

(assert (not b!1026241))

(assert (not b!1026234))

(assert (not b!1026237))

(assert (not b!1026240))

(assert (not start!89328))

(assert (not b!1026238))

(assert (not b!1026235))

(assert tp_is_empty!5327)

(assert (not b!1026236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1026304 () Bool)

(declare-fun e!654788 () Bool)

(declare-fun e!654782 () Bool)

(assert (=> b!1026304 (= e!654788 e!654782)))

(declare-fun c!170166 () Bool)

(assert (=> b!1026304 (= c!170166 (is-Star!2842 r!15766))))

(declare-fun bm!70501 () Bool)

(declare-fun call!70506 () Bool)

(declare-fun c!170165 () Bool)

(assert (=> bm!70501 (= call!70506 (validRegex!1311 (ite c!170165 (regTwo!6197 r!15766) (regTwo!6196 r!15766))))))

(declare-fun b!1026305 () Bool)

(declare-fun e!654785 () Bool)

(assert (=> b!1026305 (= e!654785 call!70506)))

(declare-fun b!1026306 () Bool)

(declare-fun e!654786 () Bool)

(assert (=> b!1026306 (= e!654786 e!654785)))

(declare-fun res!461069 () Bool)

(assert (=> b!1026306 (=> (not res!461069) (not e!654785))))

(declare-fun call!70508 () Bool)

(assert (=> b!1026306 (= res!461069 call!70508)))

(declare-fun b!1026307 () Bool)

(declare-fun e!654787 () Bool)

(declare-fun call!70507 () Bool)

(assert (=> b!1026307 (= e!654787 call!70507)))

(declare-fun b!1026308 () Bool)

(assert (=> b!1026308 (= e!654782 e!654787)))

(declare-fun res!461070 () Bool)

(declare-fun nullable!939 (Regex!2842) Bool)

(assert (=> b!1026308 (= res!461070 (not (nullable!939 (reg!3171 r!15766))))))

(assert (=> b!1026308 (=> (not res!461070) (not e!654787))))

(declare-fun bm!70502 () Bool)

(assert (=> bm!70502 (= call!70508 call!70507)))

(declare-fun d!295101 () Bool)

(declare-fun res!461067 () Bool)

(assert (=> d!295101 (=> res!461067 e!654788)))

(assert (=> d!295101 (= res!461067 (is-ElementMatch!2842 r!15766))))

(assert (=> d!295101 (= (validRegex!1311 r!15766) e!654788)))

(declare-fun b!1026309 () Bool)

(declare-fun res!461071 () Bool)

(assert (=> b!1026309 (=> res!461071 e!654786)))

(assert (=> b!1026309 (= res!461071 (not (is-Concat!4675 r!15766)))))

(declare-fun e!654783 () Bool)

(assert (=> b!1026309 (= e!654783 e!654786)))

(declare-fun bm!70503 () Bool)

(assert (=> bm!70503 (= call!70507 (validRegex!1311 (ite c!170166 (reg!3171 r!15766) (ite c!170165 (regOne!6197 r!15766) (regOne!6196 r!15766)))))))

(declare-fun b!1026310 () Bool)

(assert (=> b!1026310 (= e!654782 e!654783)))

(assert (=> b!1026310 (= c!170165 (is-Union!2842 r!15766))))

(declare-fun b!1026311 () Bool)

(declare-fun e!654784 () Bool)

(assert (=> b!1026311 (= e!654784 call!70506)))

(declare-fun b!1026312 () Bool)

(declare-fun res!461068 () Bool)

(assert (=> b!1026312 (=> (not res!461068) (not e!654784))))

(assert (=> b!1026312 (= res!461068 call!70508)))

(assert (=> b!1026312 (= e!654783 e!654784)))

(assert (= (and d!295101 (not res!461067)) b!1026304))

(assert (= (and b!1026304 c!170166) b!1026308))

(assert (= (and b!1026304 (not c!170166)) b!1026310))

(assert (= (and b!1026308 res!461070) b!1026307))

(assert (= (and b!1026310 c!170165) b!1026312))

(assert (= (and b!1026310 (not c!170165)) b!1026309))

(assert (= (and b!1026312 res!461068) b!1026311))

(assert (= (and b!1026309 (not res!461071)) b!1026306))

(assert (= (and b!1026306 res!461069) b!1026305))

(assert (= (or b!1026311 b!1026305) bm!70501))

(assert (= (or b!1026312 b!1026306) bm!70502))

(assert (= (or b!1026307 bm!70502) bm!70503))

(declare-fun m!1202529 () Bool)

(assert (=> bm!70501 m!1202529))

(declare-fun m!1202531 () Bool)

(assert (=> b!1026308 m!1202531))

(declare-fun m!1202533 () Bool)

(assert (=> bm!70503 m!1202533))

(assert (=> start!89328 d!295101))

(declare-fun d!295103 () Bool)

(declare-fun isEmpty!6423 (Option!2371) Bool)

(assert (=> d!295103 (= (isDefined!2013 (findConcatSeparation!477 (regOne!6196 r!15766) EmptyExpr!2842 Nil!10056 s!10566 s!10566)) (not (isEmpty!6423 (findConcatSeparation!477 (regOne!6196 r!15766) EmptyExpr!2842 Nil!10056 s!10566 s!10566))))))

(declare-fun bs!247032 () Bool)

(assert (= bs!247032 d!295103))

(assert (=> bs!247032 m!1202479))

(declare-fun m!1202535 () Bool)

(assert (=> bs!247032 m!1202535))

(assert (=> b!1026234 d!295103))

(declare-fun d!295105 () Bool)

(declare-fun e!654815 () Bool)

(assert (=> d!295105 e!654815))

(declare-fun res!461095 () Bool)

(assert (=> d!295105 (=> res!461095 e!654815)))

(declare-fun e!654816 () Bool)

(assert (=> d!295105 (= res!461095 e!654816)))

(declare-fun res!461092 () Bool)

(assert (=> d!295105 (=> (not res!461092) (not e!654816))))

(declare-fun lt!355227 () Option!2371)

(assert (=> d!295105 (= res!461092 (isDefined!2013 lt!355227))))

(declare-fun e!654814 () Option!2371)

(assert (=> d!295105 (= lt!355227 e!654814)))

(declare-fun c!170176 () Bool)

(declare-fun e!654817 () Bool)

(assert (=> d!295105 (= c!170176 e!654817)))

(declare-fun res!461094 () Bool)

(assert (=> d!295105 (=> (not res!461094) (not e!654817))))

(assert (=> d!295105 (= res!461094 (matchR!1378 (regOne!6196 r!15766) Nil!10056))))

(assert (=> d!295105 (validRegex!1311 (regOne!6196 r!15766))))

(assert (=> d!295105 (= (findConcatSeparation!477 (regOne!6196 r!15766) EmptyExpr!2842 Nil!10056 s!10566 s!10566) lt!355227)))

(declare-fun b!1026349 () Bool)

(declare-fun e!654813 () Option!2371)

(assert (=> b!1026349 (= e!654814 e!654813)))

(declare-fun c!170175 () Bool)

(assert (=> b!1026349 (= c!170175 (is-Nil!10056 s!10566))))

(declare-fun b!1026350 () Bool)

(declare-fun lt!355228 () Unit!15359)

(declare-fun lt!355226 () Unit!15359)

(assert (=> b!1026350 (= lt!355228 lt!355226)))

(declare-fun ++!2754 (List!10072 List!10072) List!10072)

(assert (=> b!1026350 (= (++!2754 (++!2754 Nil!10056 (Cons!10056 (h!15457 s!10566) Nil!10056)) (t!101118 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!351 (List!10072 C!6254 List!10072 List!10072) Unit!15359)

(assert (=> b!1026350 (= lt!355226 (lemmaMoveElementToOtherListKeepsConcatEq!351 Nil!10056 (h!15457 s!10566) (t!101118 s!10566) s!10566))))

(assert (=> b!1026350 (= e!654813 (findConcatSeparation!477 (regOne!6196 r!15766) EmptyExpr!2842 (++!2754 Nil!10056 (Cons!10056 (h!15457 s!10566) Nil!10056)) (t!101118 s!10566) s!10566))))

(declare-fun b!1026351 () Bool)

(assert (=> b!1026351 (= e!654813 None!2370)))

(declare-fun b!1026352 () Bool)

(assert (=> b!1026352 (= e!654815 (not (isDefined!2013 lt!355227)))))

(declare-fun b!1026353 () Bool)

(assert (=> b!1026353 (= e!654817 (matchR!1378 EmptyExpr!2842 s!10566))))

(declare-fun b!1026354 () Bool)

(declare-fun res!461096 () Bool)

(assert (=> b!1026354 (=> (not res!461096) (not e!654816))))

(declare-fun get!3557 (Option!2371) tuple2!11458)

(assert (=> b!1026354 (= res!461096 (matchR!1378 EmptyExpr!2842 (_2!6555 (get!3557 lt!355227))))))

(declare-fun b!1026355 () Bool)

(assert (=> b!1026355 (= e!654816 (= (++!2754 (_1!6555 (get!3557 lt!355227)) (_2!6555 (get!3557 lt!355227))) s!10566))))

(declare-fun b!1026356 () Bool)

(declare-fun res!461093 () Bool)

(assert (=> b!1026356 (=> (not res!461093) (not e!654816))))

(assert (=> b!1026356 (= res!461093 (matchR!1378 (regOne!6196 r!15766) (_1!6555 (get!3557 lt!355227))))))

(declare-fun b!1026357 () Bool)

(assert (=> b!1026357 (= e!654814 (Some!2370 (tuple2!11459 Nil!10056 s!10566)))))

(assert (= (and d!295105 res!461094) b!1026353))

(assert (= (and d!295105 c!170176) b!1026357))

(assert (= (and d!295105 (not c!170176)) b!1026349))

(assert (= (and b!1026349 c!170175) b!1026351))

(assert (= (and b!1026349 (not c!170175)) b!1026350))

(assert (= (and d!295105 res!461092) b!1026356))

(assert (= (and b!1026356 res!461093) b!1026354))

(assert (= (and b!1026354 res!461096) b!1026355))

(assert (= (and d!295105 (not res!461095)) b!1026352))

(declare-fun m!1202537 () Bool)

(assert (=> b!1026352 m!1202537))

(declare-fun m!1202539 () Bool)

(assert (=> b!1026350 m!1202539))

(assert (=> b!1026350 m!1202539))

(declare-fun m!1202541 () Bool)

(assert (=> b!1026350 m!1202541))

(declare-fun m!1202543 () Bool)

(assert (=> b!1026350 m!1202543))

(assert (=> b!1026350 m!1202539))

(declare-fun m!1202545 () Bool)

(assert (=> b!1026350 m!1202545))

(assert (=> d!295105 m!1202537))

(declare-fun m!1202547 () Bool)

(assert (=> d!295105 m!1202547))

(declare-fun m!1202549 () Bool)

(assert (=> d!295105 m!1202549))

(declare-fun m!1202551 () Bool)

(assert (=> b!1026355 m!1202551))

(declare-fun m!1202553 () Bool)

(assert (=> b!1026355 m!1202553))

(assert (=> b!1026356 m!1202551))

(declare-fun m!1202555 () Bool)

(assert (=> b!1026356 m!1202555))

(assert (=> b!1026354 m!1202551))

(declare-fun m!1202557 () Bool)

(assert (=> b!1026354 m!1202557))

(declare-fun m!1202559 () Bool)

(assert (=> b!1026353 m!1202559))

(assert (=> b!1026234 d!295105))

(declare-fun d!295109 () Bool)

(declare-fun choose!6514 (Int) Bool)

(assert (=> d!295109 (= (Exists!569 lambda!36624) (choose!6514 lambda!36624))))

(declare-fun bs!247033 () Bool)

(assert (= bs!247033 d!295109))

(declare-fun m!1202561 () Bool)

(assert (=> bs!247033 m!1202561))

(assert (=> b!1026234 d!295109))

(declare-fun d!295111 () Bool)

(assert (=> d!295111 (= (isEmpty!6421 s!10566) (is-Nil!10056 s!10566))))

(assert (=> b!1026234 d!295111))

(declare-fun d!295113 () Bool)

(assert (=> d!295113 (= (Exists!569 lambda!36623) (choose!6514 lambda!36623))))

(declare-fun bs!247034 () Bool)

(assert (= bs!247034 d!295113))

(declare-fun m!1202563 () Bool)

(assert (=> bs!247034 m!1202563))

(assert (=> b!1026234 d!295113))

(declare-fun bs!247035 () Bool)

(declare-fun d!295115 () Bool)

(assert (= bs!247035 (and d!295115 b!1026234)))

(declare-fun lambda!36635 () Int)

(assert (=> bs!247035 (= lambda!36635 lambda!36623)))

(assert (=> bs!247035 (not (= lambda!36635 lambda!36624))))

(assert (=> d!295115 true))

(assert (=> d!295115 true))

(assert (=> d!295115 true))

(assert (=> d!295115 (= (isDefined!2013 (findConcatSeparation!477 (regOne!6196 r!15766) EmptyExpr!2842 Nil!10056 s!10566 s!10566)) (Exists!569 lambda!36635))))

(declare-fun lt!355231 () Unit!15359)

(declare-fun choose!6515 (Regex!2842 Regex!2842 List!10072) Unit!15359)

(assert (=> d!295115 (= lt!355231 (choose!6515 (regOne!6196 r!15766) EmptyExpr!2842 s!10566))))

(assert (=> d!295115 (validRegex!1311 (regOne!6196 r!15766))))

(assert (=> d!295115 (= (lemmaFindConcatSeparationEquivalentToExists!477 (regOne!6196 r!15766) EmptyExpr!2842 s!10566) lt!355231)))

(declare-fun bs!247036 () Bool)

(assert (= bs!247036 d!295115))

(declare-fun m!1202571 () Bool)

(assert (=> bs!247036 m!1202571))

(assert (=> bs!247036 m!1202549))

(declare-fun m!1202573 () Bool)

(assert (=> bs!247036 m!1202573))

(assert (=> bs!247036 m!1202479))

(assert (=> bs!247036 m!1202479))

(assert (=> bs!247036 m!1202483))

(assert (=> b!1026234 d!295115))

(declare-fun bs!247037 () Bool)

(declare-fun d!295119 () Bool)

(assert (= bs!247037 (and d!295119 b!1026234)))

(declare-fun lambda!36642 () Int)

(assert (=> bs!247037 (= lambda!36642 lambda!36623)))

(assert (=> bs!247037 (not (= lambda!36642 lambda!36624))))

(declare-fun bs!247038 () Bool)

(assert (= bs!247038 (and d!295119 d!295115)))

(assert (=> bs!247038 (= lambda!36642 lambda!36635)))

(assert (=> d!295119 true))

(assert (=> d!295119 true))

(assert (=> d!295119 true))

(declare-fun lambda!36643 () Int)

(assert (=> bs!247037 (not (= lambda!36643 lambda!36623))))

(assert (=> bs!247037 (= lambda!36643 lambda!36624)))

(assert (=> bs!247038 (not (= lambda!36643 lambda!36635))))

(declare-fun bs!247039 () Bool)

(assert (= bs!247039 d!295119))

(assert (=> bs!247039 (not (= lambda!36643 lambda!36642))))

(assert (=> d!295119 true))

(assert (=> d!295119 true))

(assert (=> d!295119 true))

(assert (=> d!295119 (= (Exists!569 lambda!36642) (Exists!569 lambda!36643))))

(declare-fun lt!355234 () Unit!15359)

(declare-fun choose!6516 (Regex!2842 Regex!2842 List!10072) Unit!15359)

(assert (=> d!295119 (= lt!355234 (choose!6516 (regOne!6196 r!15766) EmptyExpr!2842 s!10566))))

(assert (=> d!295119 (validRegex!1311 (regOne!6196 r!15766))))

(assert (=> d!295119 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!265 (regOne!6196 r!15766) EmptyExpr!2842 s!10566) lt!355234)))

(declare-fun m!1202575 () Bool)

(assert (=> bs!247039 m!1202575))

(declare-fun m!1202577 () Bool)

(assert (=> bs!247039 m!1202577))

(declare-fun m!1202579 () Bool)

(assert (=> bs!247039 m!1202579))

(assert (=> bs!247039 m!1202549))

(assert (=> b!1026234 d!295119))

(declare-fun bs!247040 () Bool)

(declare-fun b!1026444 () Bool)

(assert (= bs!247040 (and b!1026444 d!295119)))

(declare-fun lambda!36650 () Int)

(assert (=> bs!247040 (not (= lambda!36650 lambda!36642))))

(declare-fun bs!247041 () Bool)

(assert (= bs!247041 (and b!1026444 b!1026234)))

(assert (=> bs!247041 (not (= lambda!36650 lambda!36623))))

(assert (=> bs!247040 (not (= lambda!36650 lambda!36643))))

(assert (=> bs!247041 (not (= lambda!36650 lambda!36624))))

(declare-fun bs!247042 () Bool)

(assert (= bs!247042 (and b!1026444 d!295115)))

(assert (=> bs!247042 (not (= lambda!36650 lambda!36635))))

(assert (=> b!1026444 true))

(assert (=> b!1026444 true))

(declare-fun bs!247043 () Bool)

(declare-fun b!1026452 () Bool)

(assert (= bs!247043 (and b!1026452 d!295119)))

(declare-fun lambda!36652 () Int)

(assert (=> bs!247043 (not (= lambda!36652 lambda!36642))))

(declare-fun bs!247045 () Bool)

(assert (= bs!247045 (and b!1026452 b!1026234)))

(assert (=> bs!247045 (not (= lambda!36652 lambda!36623))))

(assert (=> bs!247043 (= (= (regTwo!6196 r!15766) EmptyExpr!2842) (= lambda!36652 lambda!36643))))

(declare-fun bs!247046 () Bool)

(assert (= bs!247046 (and b!1026452 b!1026444)))

(assert (=> bs!247046 (not (= lambda!36652 lambda!36650))))

(assert (=> bs!247045 (= (= (regTwo!6196 r!15766) EmptyExpr!2842) (= lambda!36652 lambda!36624))))

(declare-fun bs!247047 () Bool)

(assert (= bs!247047 (and b!1026452 d!295115)))

(assert (=> bs!247047 (not (= lambda!36652 lambda!36635))))

(assert (=> b!1026452 true))

(assert (=> b!1026452 true))

(declare-fun b!1026443 () Bool)

(declare-fun c!170196 () Bool)

(assert (=> b!1026443 (= c!170196 (is-ElementMatch!2842 r!15766))))

(declare-fun e!654869 () Bool)

(declare-fun e!654870 () Bool)

(assert (=> b!1026443 (= e!654869 e!654870)))

(declare-fun e!654867 () Bool)

(declare-fun call!70527 () Bool)

(assert (=> b!1026444 (= e!654867 call!70527)))

(declare-fun b!1026445 () Bool)

(assert (=> b!1026445 (= e!654870 (= s!10566 (Cons!10056 (c!170159 r!15766) Nil!10056)))))

(declare-fun d!295121 () Bool)

(declare-fun c!170197 () Bool)

(assert (=> d!295121 (= c!170197 (is-EmptyExpr!2842 r!15766))))

(declare-fun e!654868 () Bool)

(assert (=> d!295121 (= (matchRSpec!641 r!15766 s!10566) e!654868)))

(declare-fun b!1026446 () Bool)

(declare-fun e!654873 () Bool)

(assert (=> b!1026446 (= e!654873 (matchRSpec!641 (regTwo!6197 r!15766) s!10566))))

(declare-fun bm!70521 () Bool)

(declare-fun call!70526 () Bool)

(assert (=> bm!70521 (= call!70526 (isEmpty!6421 s!10566))))

(declare-fun b!1026447 () Bool)

(declare-fun e!654871 () Bool)

(assert (=> b!1026447 (= e!654871 e!654873)))

(declare-fun res!461146 () Bool)

(assert (=> b!1026447 (= res!461146 (matchRSpec!641 (regOne!6197 r!15766) s!10566))))

(assert (=> b!1026447 (=> res!461146 e!654873)))

(declare-fun bm!70522 () Bool)

(declare-fun c!170198 () Bool)

(assert (=> bm!70522 (= call!70527 (Exists!569 (ite c!170198 lambda!36650 lambda!36652)))))

(declare-fun b!1026448 () Bool)

(assert (=> b!1026448 (= e!654868 call!70526)))

(declare-fun b!1026449 () Bool)

(declare-fun e!654872 () Bool)

(assert (=> b!1026449 (= e!654871 e!654872)))

(assert (=> b!1026449 (= c!170198 (is-Star!2842 r!15766))))

(declare-fun b!1026450 () Bool)

(declare-fun c!170195 () Bool)

(assert (=> b!1026450 (= c!170195 (is-Union!2842 r!15766))))

(assert (=> b!1026450 (= e!654870 e!654871)))

(declare-fun b!1026451 () Bool)

(assert (=> b!1026451 (= e!654868 e!654869)))

(declare-fun res!461148 () Bool)

(assert (=> b!1026451 (= res!461148 (not (is-EmptyLang!2842 r!15766)))))

(assert (=> b!1026451 (=> (not res!461148) (not e!654869))))

(assert (=> b!1026452 (= e!654872 call!70527)))

(declare-fun b!1026453 () Bool)

(declare-fun res!461147 () Bool)

(assert (=> b!1026453 (=> res!461147 e!654867)))

(assert (=> b!1026453 (= res!461147 call!70526)))

(assert (=> b!1026453 (= e!654872 e!654867)))

(assert (= (and d!295121 c!170197) b!1026448))

(assert (= (and d!295121 (not c!170197)) b!1026451))

(assert (= (and b!1026451 res!461148) b!1026443))

(assert (= (and b!1026443 c!170196) b!1026445))

(assert (= (and b!1026443 (not c!170196)) b!1026450))

(assert (= (and b!1026450 c!170195) b!1026447))

(assert (= (and b!1026450 (not c!170195)) b!1026449))

(assert (= (and b!1026447 (not res!461146)) b!1026446))

(assert (= (and b!1026449 c!170198) b!1026453))

(assert (= (and b!1026449 (not c!170198)) b!1026452))

(assert (= (and b!1026453 (not res!461147)) b!1026444))

(assert (= (or b!1026444 b!1026452) bm!70522))

(assert (= (or b!1026448 b!1026453) bm!70521))

(declare-fun m!1202581 () Bool)

(assert (=> b!1026446 m!1202581))

(assert (=> bm!70521 m!1202489))

(declare-fun m!1202583 () Bool)

(assert (=> b!1026447 m!1202583))

(declare-fun m!1202585 () Bool)

(assert (=> bm!70522 m!1202585))

(assert (=> b!1026235 d!295121))

(declare-fun d!295123 () Bool)

(declare-fun e!654896 () Bool)

(assert (=> d!295123 e!654896))

(declare-fun c!170209 () Bool)

(assert (=> d!295123 (= c!170209 (is-EmptyExpr!2842 r!15766))))

(declare-fun lt!355237 () Bool)

(declare-fun e!654895 () Bool)

(assert (=> d!295123 (= lt!355237 e!654895)))

(declare-fun c!170211 () Bool)

(assert (=> d!295123 (= c!170211 (isEmpty!6421 s!10566))))

(assert (=> d!295123 (validRegex!1311 r!15766)))

(assert (=> d!295123 (= (matchR!1378 r!15766 s!10566) lt!355237)))

(declare-fun b!1026493 () Bool)

(declare-fun e!654898 () Bool)

(declare-fun head!1894 (List!10072) C!6254)

(assert (=> b!1026493 (= e!654898 (not (= (head!1894 s!10566) (c!170159 r!15766))))))

(declare-fun b!1026494 () Bool)

(declare-fun res!461174 () Bool)

(declare-fun e!654899 () Bool)

(assert (=> b!1026494 (=> (not res!461174) (not e!654899))))

(declare-fun call!70532 () Bool)

(assert (=> b!1026494 (= res!461174 (not call!70532))))

(declare-fun b!1026495 () Bool)

(declare-fun res!461170 () Bool)

(declare-fun e!654897 () Bool)

(assert (=> b!1026495 (=> res!461170 e!654897)))

(assert (=> b!1026495 (= res!461170 e!654899)))

(declare-fun res!461175 () Bool)

(assert (=> b!1026495 (=> (not res!461175) (not e!654899))))

(assert (=> b!1026495 (= res!461175 lt!355237)))

(declare-fun b!1026496 () Bool)

(declare-fun res!461168 () Bool)

(assert (=> b!1026496 (=> res!461168 e!654897)))

(assert (=> b!1026496 (= res!461168 (not (is-ElementMatch!2842 r!15766)))))

(declare-fun e!654900 () Bool)

(assert (=> b!1026496 (= e!654900 e!654897)))

(declare-fun b!1026497 () Bool)

(declare-fun derivativeStep!740 (Regex!2842 C!6254) Regex!2842)

(declare-fun tail!1456 (List!10072) List!10072)

(assert (=> b!1026497 (= e!654895 (matchR!1378 (derivativeStep!740 r!15766 (head!1894 s!10566)) (tail!1456 s!10566)))))

(declare-fun b!1026498 () Bool)

(assert (=> b!1026498 (= e!654896 e!654900)))

(declare-fun c!170210 () Bool)

(assert (=> b!1026498 (= c!170210 (is-EmptyLang!2842 r!15766))))

(declare-fun bm!70527 () Bool)

(assert (=> bm!70527 (= call!70532 (isEmpty!6421 s!10566))))

(declare-fun b!1026499 () Bool)

(declare-fun e!654901 () Bool)

(assert (=> b!1026499 (= e!654901 e!654898)))

(declare-fun res!461172 () Bool)

(assert (=> b!1026499 (=> res!461172 e!654898)))

(assert (=> b!1026499 (= res!461172 call!70532)))

(declare-fun b!1026500 () Bool)

(assert (=> b!1026500 (= e!654897 e!654901)))

(declare-fun res!461171 () Bool)

(assert (=> b!1026500 (=> (not res!461171) (not e!654901))))

(assert (=> b!1026500 (= res!461171 (not lt!355237))))

(declare-fun b!1026501 () Bool)

(declare-fun res!461173 () Bool)

(assert (=> b!1026501 (=> (not res!461173) (not e!654899))))

(assert (=> b!1026501 (= res!461173 (isEmpty!6421 (tail!1456 s!10566)))))

(declare-fun b!1026502 () Bool)

(declare-fun res!461169 () Bool)

(assert (=> b!1026502 (=> res!461169 e!654898)))

(assert (=> b!1026502 (= res!461169 (not (isEmpty!6421 (tail!1456 s!10566))))))

(declare-fun b!1026503 () Bool)

(assert (=> b!1026503 (= e!654895 (nullable!939 r!15766))))

(declare-fun b!1026504 () Bool)

(assert (=> b!1026504 (= e!654899 (= (head!1894 s!10566) (c!170159 r!15766)))))

(declare-fun b!1026505 () Bool)

(assert (=> b!1026505 (= e!654896 (= lt!355237 call!70532))))

(declare-fun b!1026506 () Bool)

(assert (=> b!1026506 (= e!654900 (not lt!355237))))

(assert (= (and d!295123 c!170211) b!1026503))

(assert (= (and d!295123 (not c!170211)) b!1026497))

(assert (= (and d!295123 c!170209) b!1026505))

(assert (= (and d!295123 (not c!170209)) b!1026498))

(assert (= (and b!1026498 c!170210) b!1026506))

(assert (= (and b!1026498 (not c!170210)) b!1026496))

(assert (= (and b!1026496 (not res!461168)) b!1026495))

(assert (= (and b!1026495 res!461175) b!1026494))

(assert (= (and b!1026494 res!461174) b!1026501))

(assert (= (and b!1026501 res!461173) b!1026504))

(assert (= (and b!1026495 (not res!461170)) b!1026500))

(assert (= (and b!1026500 res!461171) b!1026499))

(assert (= (and b!1026499 (not res!461172)) b!1026502))

(assert (= (and b!1026502 (not res!461169)) b!1026493))

(assert (= (or b!1026505 b!1026494 b!1026499) bm!70527))

(assert (=> d!295123 m!1202489))

(assert (=> d!295123 m!1202477))

(declare-fun m!1202593 () Bool)

(assert (=> b!1026503 m!1202593))

(declare-fun m!1202595 () Bool)

(assert (=> b!1026493 m!1202595))

(assert (=> bm!70527 m!1202489))

(assert (=> b!1026497 m!1202595))

(assert (=> b!1026497 m!1202595))

(declare-fun m!1202597 () Bool)

(assert (=> b!1026497 m!1202597))

(declare-fun m!1202599 () Bool)

(assert (=> b!1026497 m!1202599))

(assert (=> b!1026497 m!1202597))

(assert (=> b!1026497 m!1202599))

(declare-fun m!1202601 () Bool)

(assert (=> b!1026497 m!1202601))

(assert (=> b!1026504 m!1202595))

(assert (=> b!1026502 m!1202599))

(assert (=> b!1026502 m!1202599))

(declare-fun m!1202603 () Bool)

(assert (=> b!1026502 m!1202603))

(assert (=> b!1026501 m!1202599))

(assert (=> b!1026501 m!1202599))

(assert (=> b!1026501 m!1202603))

(assert (=> b!1026235 d!295123))

(declare-fun d!295127 () Bool)

(assert (=> d!295127 (= (matchR!1378 r!15766 s!10566) (matchRSpec!641 r!15766 s!10566))))

(declare-fun lt!355242 () Unit!15359)

(declare-fun choose!6517 (Regex!2842 List!10072) Unit!15359)

(assert (=> d!295127 (= lt!355242 (choose!6517 r!15766 s!10566))))

(assert (=> d!295127 (validRegex!1311 r!15766)))

(assert (=> d!295127 (= (mainMatchTheorem!641 r!15766 s!10566) lt!355242)))

(declare-fun bs!247050 () Bool)

(assert (= bs!247050 d!295127))

(assert (=> bs!247050 m!1202495))

(assert (=> bs!247050 m!1202493))

(declare-fun m!1202605 () Bool)

(assert (=> bs!247050 m!1202605))

(assert (=> bs!247050 m!1202477))

(assert (=> b!1026235 d!295127))

(declare-fun d!295129 () Bool)

(declare-fun e!654905 () Bool)

(assert (=> d!295129 e!654905))

(declare-fun c!170214 () Bool)

(assert (=> d!295129 (= c!170214 (is-EmptyExpr!2842 (removeUselessConcat!403 r!15766)))))

(declare-fun lt!355243 () Bool)

(declare-fun e!654904 () Bool)

(assert (=> d!295129 (= lt!355243 e!654904)))

(declare-fun c!170216 () Bool)

(assert (=> d!295129 (= c!170216 (isEmpty!6421 s!10566))))

(assert (=> d!295129 (validRegex!1311 (removeUselessConcat!403 r!15766))))

(assert (=> d!295129 (= (matchR!1378 (removeUselessConcat!403 r!15766) s!10566) lt!355243)))

(declare-fun b!1026511 () Bool)

(declare-fun e!654907 () Bool)

(assert (=> b!1026511 (= e!654907 (not (= (head!1894 s!10566) (c!170159 (removeUselessConcat!403 r!15766)))))))

(declare-fun b!1026512 () Bool)

(declare-fun res!461182 () Bool)

(declare-fun e!654908 () Bool)

(assert (=> b!1026512 (=> (not res!461182) (not e!654908))))

(declare-fun call!70533 () Bool)

(assert (=> b!1026512 (= res!461182 (not call!70533))))

(declare-fun b!1026513 () Bool)

(declare-fun res!461178 () Bool)

(declare-fun e!654906 () Bool)

(assert (=> b!1026513 (=> res!461178 e!654906)))

(assert (=> b!1026513 (= res!461178 e!654908)))

(declare-fun res!461183 () Bool)

(assert (=> b!1026513 (=> (not res!461183) (not e!654908))))

(assert (=> b!1026513 (= res!461183 lt!355243)))

(declare-fun b!1026514 () Bool)

(declare-fun res!461176 () Bool)

(assert (=> b!1026514 (=> res!461176 e!654906)))

(assert (=> b!1026514 (= res!461176 (not (is-ElementMatch!2842 (removeUselessConcat!403 r!15766))))))

(declare-fun e!654909 () Bool)

(assert (=> b!1026514 (= e!654909 e!654906)))

(declare-fun b!1026515 () Bool)

(assert (=> b!1026515 (= e!654904 (matchR!1378 (derivativeStep!740 (removeUselessConcat!403 r!15766) (head!1894 s!10566)) (tail!1456 s!10566)))))

(declare-fun b!1026516 () Bool)

(assert (=> b!1026516 (= e!654905 e!654909)))

(declare-fun c!170215 () Bool)

(assert (=> b!1026516 (= c!170215 (is-EmptyLang!2842 (removeUselessConcat!403 r!15766)))))

(declare-fun bm!70528 () Bool)

(assert (=> bm!70528 (= call!70533 (isEmpty!6421 s!10566))))

(declare-fun b!1026517 () Bool)

(declare-fun e!654910 () Bool)

(assert (=> b!1026517 (= e!654910 e!654907)))

(declare-fun res!461180 () Bool)

(assert (=> b!1026517 (=> res!461180 e!654907)))

(assert (=> b!1026517 (= res!461180 call!70533)))

(declare-fun b!1026518 () Bool)

(assert (=> b!1026518 (= e!654906 e!654910)))

(declare-fun res!461179 () Bool)

(assert (=> b!1026518 (=> (not res!461179) (not e!654910))))

(assert (=> b!1026518 (= res!461179 (not lt!355243))))

(declare-fun b!1026519 () Bool)

(declare-fun res!461181 () Bool)

(assert (=> b!1026519 (=> (not res!461181) (not e!654908))))

(assert (=> b!1026519 (= res!461181 (isEmpty!6421 (tail!1456 s!10566)))))

(declare-fun b!1026520 () Bool)

(declare-fun res!461177 () Bool)

(assert (=> b!1026520 (=> res!461177 e!654907)))

(assert (=> b!1026520 (= res!461177 (not (isEmpty!6421 (tail!1456 s!10566))))))

(declare-fun b!1026521 () Bool)

(assert (=> b!1026521 (= e!654904 (nullable!939 (removeUselessConcat!403 r!15766)))))

(declare-fun b!1026522 () Bool)

(assert (=> b!1026522 (= e!654908 (= (head!1894 s!10566) (c!170159 (removeUselessConcat!403 r!15766))))))

(declare-fun b!1026523 () Bool)

(assert (=> b!1026523 (= e!654905 (= lt!355243 call!70533))))

(declare-fun b!1026524 () Bool)

(assert (=> b!1026524 (= e!654909 (not lt!355243))))

(assert (= (and d!295129 c!170216) b!1026521))

(assert (= (and d!295129 (not c!170216)) b!1026515))

(assert (= (and d!295129 c!170214) b!1026523))

(assert (= (and d!295129 (not c!170214)) b!1026516))

(assert (= (and b!1026516 c!170215) b!1026524))

(assert (= (and b!1026516 (not c!170215)) b!1026514))

(assert (= (and b!1026514 (not res!461176)) b!1026513))

(assert (= (and b!1026513 res!461183) b!1026512))

(assert (= (and b!1026512 res!461182) b!1026519))

(assert (= (and b!1026519 res!461181) b!1026522))

(assert (= (and b!1026513 (not res!461178)) b!1026518))

(assert (= (and b!1026518 res!461179) b!1026517))

(assert (= (and b!1026517 (not res!461180)) b!1026520))

(assert (= (and b!1026520 (not res!461177)) b!1026511))

(assert (= (or b!1026523 b!1026512 b!1026517) bm!70528))

(assert (=> d!295129 m!1202489))

(assert (=> d!295129 m!1202499))

(declare-fun m!1202607 () Bool)

(assert (=> d!295129 m!1202607))

(assert (=> b!1026521 m!1202499))

(declare-fun m!1202609 () Bool)

(assert (=> b!1026521 m!1202609))

(assert (=> b!1026511 m!1202595))

(assert (=> bm!70528 m!1202489))

(assert (=> b!1026515 m!1202595))

(assert (=> b!1026515 m!1202499))

(assert (=> b!1026515 m!1202595))

(declare-fun m!1202611 () Bool)

(assert (=> b!1026515 m!1202611))

(assert (=> b!1026515 m!1202599))

(assert (=> b!1026515 m!1202611))

(assert (=> b!1026515 m!1202599))

(declare-fun m!1202613 () Bool)

(assert (=> b!1026515 m!1202613))

(assert (=> b!1026522 m!1202595))

(assert (=> b!1026520 m!1202599))

(assert (=> b!1026520 m!1202599))

(assert (=> b!1026520 m!1202603))

(assert (=> b!1026519 m!1202599))

(assert (=> b!1026519 m!1202599))

(assert (=> b!1026519 m!1202603))

(assert (=> b!1026236 d!295129))

(declare-fun bm!70541 () Bool)

(declare-fun call!70546 () Regex!2842)

(declare-fun call!70550 () Regex!2842)

(assert (=> bm!70541 (= call!70546 call!70550)))

(declare-fun bm!70542 () Bool)

(declare-fun call!70547 () Regex!2842)

(assert (=> bm!70542 (= call!70547 call!70546)))

(declare-fun b!1026571 () Bool)

(declare-fun e!654938 () Regex!2842)

(declare-fun e!654935 () Regex!2842)

(assert (=> b!1026571 (= e!654938 e!654935)))

(declare-fun c!170234 () Bool)

(assert (=> b!1026571 (= c!170234 (and (is-Concat!4675 r!15766) (is-EmptyExpr!2842 (regTwo!6196 r!15766))))))

(declare-fun b!1026572 () Bool)

(assert (=> b!1026572 (= e!654935 call!70550)))

(declare-fun b!1026574 () Bool)

(declare-fun c!170231 () Bool)

(assert (=> b!1026574 (= c!170231 (is-Concat!4675 r!15766))))

(declare-fun e!654936 () Regex!2842)

(assert (=> b!1026574 (= e!654935 e!654936)))

(declare-fun b!1026575 () Bool)

(declare-fun c!170235 () Bool)

(assert (=> b!1026575 (= c!170235 (is-Star!2842 r!15766))))

(declare-fun e!654940 () Regex!2842)

(declare-fun e!654939 () Regex!2842)

(assert (=> b!1026575 (= e!654940 e!654939)))

(declare-fun b!1026576 () Bool)

(assert (=> b!1026576 (= e!654939 r!15766)))

(declare-fun bm!70543 () Bool)

(declare-fun call!70549 () Regex!2842)

(assert (=> bm!70543 (= call!70550 call!70549)))

(declare-fun bm!70544 () Bool)

(declare-fun c!170232 () Bool)

(declare-fun c!170233 () Bool)

(assert (=> bm!70544 (= call!70549 (removeUselessConcat!403 (ite c!170233 (regTwo!6196 r!15766) (ite c!170234 (regOne!6196 r!15766) (ite c!170231 (regTwo!6196 r!15766) (ite c!170232 (regTwo!6197 r!15766) (reg!3171 r!15766)))))))))

(declare-fun b!1026577 () Bool)

(declare-fun e!654937 () Bool)

(declare-fun lt!355246 () Regex!2842)

(assert (=> b!1026577 (= e!654937 (= (nullable!939 lt!355246) (nullable!939 r!15766)))))

(declare-fun b!1026578 () Bool)

(declare-fun call!70548 () Regex!2842)

(assert (=> b!1026578 (= e!654936 (Concat!4675 call!70548 call!70546))))

(declare-fun b!1026579 () Bool)

(assert (=> b!1026579 (= e!654938 call!70549)))

(declare-fun bm!70545 () Bool)

(assert (=> bm!70545 (= call!70548 (removeUselessConcat!403 (ite c!170231 (regOne!6196 r!15766) (regOne!6197 r!15766))))))

(declare-fun b!1026580 () Bool)

(assert (=> b!1026580 (= e!654939 (Star!2842 call!70547))))

(declare-fun b!1026581 () Bool)

(assert (=> b!1026581 (= e!654940 (Union!2842 call!70548 call!70547))))

(declare-fun b!1026573 () Bool)

(assert (=> b!1026573 (= e!654936 e!654940)))

(assert (=> b!1026573 (= c!170232 (is-Union!2842 r!15766))))

(declare-fun d!295131 () Bool)

(assert (=> d!295131 e!654937))

(declare-fun res!461202 () Bool)

(assert (=> d!295131 (=> (not res!461202) (not e!654937))))

(assert (=> d!295131 (= res!461202 (validRegex!1311 lt!355246))))

(assert (=> d!295131 (= lt!355246 e!654938)))

(assert (=> d!295131 (= c!170233 (and (is-Concat!4675 r!15766) (is-EmptyExpr!2842 (regOne!6196 r!15766))))))

(assert (=> d!295131 (validRegex!1311 r!15766)))

(assert (=> d!295131 (= (removeUselessConcat!403 r!15766) lt!355246)))

(assert (= (and d!295131 c!170233) b!1026579))

(assert (= (and d!295131 (not c!170233)) b!1026571))

(assert (= (and b!1026571 c!170234) b!1026572))

(assert (= (and b!1026571 (not c!170234)) b!1026574))

(assert (= (and b!1026574 c!170231) b!1026578))

(assert (= (and b!1026574 (not c!170231)) b!1026573))

(assert (= (and b!1026573 c!170232) b!1026581))

(assert (= (and b!1026573 (not c!170232)) b!1026575))

(assert (= (and b!1026575 c!170235) b!1026580))

(assert (= (and b!1026575 (not c!170235)) b!1026576))

(assert (= (or b!1026581 b!1026580) bm!70542))

(assert (= (or b!1026578 bm!70542) bm!70541))

(assert (= (or b!1026578 b!1026581) bm!70545))

(assert (= (or b!1026572 bm!70541) bm!70543))

(assert (= (or b!1026579 bm!70543) bm!70544))

(assert (= (and d!295131 res!461202) b!1026577))

(declare-fun m!1202615 () Bool)

(assert (=> bm!70544 m!1202615))

(declare-fun m!1202617 () Bool)

(assert (=> b!1026577 m!1202617))

(assert (=> b!1026577 m!1202593))

(declare-fun m!1202619 () Bool)

(assert (=> bm!70545 m!1202619))

(declare-fun m!1202621 () Bool)

(assert (=> d!295131 m!1202621))

(assert (=> d!295131 m!1202477))

(assert (=> b!1026236 d!295131))

(declare-fun b!1026607 () Bool)

(declare-fun e!654950 () Bool)

(declare-fun tp!311437 () Bool)

(declare-fun tp!311438 () Bool)

(assert (=> b!1026607 (= e!654950 (and tp!311437 tp!311438))))

(assert (=> b!1026238 (= tp!311403 e!654950)))

(declare-fun b!1026606 () Bool)

(assert (=> b!1026606 (= e!654950 tp_is_empty!5327)))

(declare-fun b!1026609 () Bool)

(declare-fun tp!311436 () Bool)

(declare-fun tp!311435 () Bool)

(assert (=> b!1026609 (= e!654950 (and tp!311436 tp!311435))))

(declare-fun b!1026608 () Bool)

(declare-fun tp!311439 () Bool)

(assert (=> b!1026608 (= e!654950 tp!311439)))

(assert (= (and b!1026238 (is-ElementMatch!2842 (regOne!6197 r!15766))) b!1026606))

(assert (= (and b!1026238 (is-Concat!4675 (regOne!6197 r!15766))) b!1026607))

(assert (= (and b!1026238 (is-Star!2842 (regOne!6197 r!15766))) b!1026608))

(assert (= (and b!1026238 (is-Union!2842 (regOne!6197 r!15766))) b!1026609))

(declare-fun b!1026611 () Bool)

(declare-fun e!654951 () Bool)

(declare-fun tp!311442 () Bool)

(declare-fun tp!311443 () Bool)

(assert (=> b!1026611 (= e!654951 (and tp!311442 tp!311443))))

(assert (=> b!1026238 (= tp!311406 e!654951)))

(declare-fun b!1026610 () Bool)

(assert (=> b!1026610 (= e!654951 tp_is_empty!5327)))

(declare-fun b!1026613 () Bool)

(declare-fun tp!311441 () Bool)

(declare-fun tp!311440 () Bool)

(assert (=> b!1026613 (= e!654951 (and tp!311441 tp!311440))))

(declare-fun b!1026612 () Bool)

(declare-fun tp!311444 () Bool)

(assert (=> b!1026612 (= e!654951 tp!311444)))

(assert (= (and b!1026238 (is-ElementMatch!2842 (regTwo!6197 r!15766))) b!1026610))

(assert (= (and b!1026238 (is-Concat!4675 (regTwo!6197 r!15766))) b!1026611))

(assert (= (and b!1026238 (is-Star!2842 (regTwo!6197 r!15766))) b!1026612))

(assert (= (and b!1026238 (is-Union!2842 (regTwo!6197 r!15766))) b!1026613))

(declare-fun b!1026618 () Bool)

(declare-fun e!654954 () Bool)

(declare-fun tp!311447 () Bool)

(assert (=> b!1026618 (= e!654954 (and tp_is_empty!5327 tp!311447))))

(assert (=> b!1026240 (= tp!311402 e!654954)))

(assert (= (and b!1026240 (is-Cons!10056 (t!101118 s!10566))) b!1026618))

(declare-fun b!1026620 () Bool)

(declare-fun e!654955 () Bool)

(declare-fun tp!311450 () Bool)

(declare-fun tp!311451 () Bool)

(assert (=> b!1026620 (= e!654955 (and tp!311450 tp!311451))))

(assert (=> b!1026241 (= tp!311404 e!654955)))

(declare-fun b!1026619 () Bool)

(assert (=> b!1026619 (= e!654955 tp_is_empty!5327)))

(declare-fun b!1026622 () Bool)

(declare-fun tp!311449 () Bool)

(declare-fun tp!311448 () Bool)

(assert (=> b!1026622 (= e!654955 (and tp!311449 tp!311448))))

(declare-fun b!1026621 () Bool)

(declare-fun tp!311452 () Bool)

(assert (=> b!1026621 (= e!654955 tp!311452)))

(assert (= (and b!1026241 (is-ElementMatch!2842 (regOne!6196 r!15766))) b!1026619))

(assert (= (and b!1026241 (is-Concat!4675 (regOne!6196 r!15766))) b!1026620))

(assert (= (and b!1026241 (is-Star!2842 (regOne!6196 r!15766))) b!1026621))

(assert (= (and b!1026241 (is-Union!2842 (regOne!6196 r!15766))) b!1026622))

(declare-fun b!1026624 () Bool)

(declare-fun e!654956 () Bool)

(declare-fun tp!311455 () Bool)

(declare-fun tp!311456 () Bool)

(assert (=> b!1026624 (= e!654956 (and tp!311455 tp!311456))))

(assert (=> b!1026241 (= tp!311401 e!654956)))

(declare-fun b!1026623 () Bool)

(assert (=> b!1026623 (= e!654956 tp_is_empty!5327)))

(declare-fun b!1026626 () Bool)

(declare-fun tp!311454 () Bool)

(declare-fun tp!311453 () Bool)

(assert (=> b!1026626 (= e!654956 (and tp!311454 tp!311453))))

(declare-fun b!1026625 () Bool)

(declare-fun tp!311457 () Bool)

(assert (=> b!1026625 (= e!654956 tp!311457)))

(assert (= (and b!1026241 (is-ElementMatch!2842 (regTwo!6196 r!15766))) b!1026623))

(assert (= (and b!1026241 (is-Concat!4675 (regTwo!6196 r!15766))) b!1026624))

(assert (= (and b!1026241 (is-Star!2842 (regTwo!6196 r!15766))) b!1026625))

(assert (= (and b!1026241 (is-Union!2842 (regTwo!6196 r!15766))) b!1026626))

(declare-fun b!1026628 () Bool)

(declare-fun e!654957 () Bool)

(declare-fun tp!311460 () Bool)

(declare-fun tp!311461 () Bool)

(assert (=> b!1026628 (= e!654957 (and tp!311460 tp!311461))))

(assert (=> b!1026237 (= tp!311405 e!654957)))

(declare-fun b!1026627 () Bool)

(assert (=> b!1026627 (= e!654957 tp_is_empty!5327)))

(declare-fun b!1026630 () Bool)

(declare-fun tp!311459 () Bool)

(declare-fun tp!311458 () Bool)

(assert (=> b!1026630 (= e!654957 (and tp!311459 tp!311458))))

(declare-fun b!1026629 () Bool)

(declare-fun tp!311462 () Bool)

(assert (=> b!1026629 (= e!654957 tp!311462)))

(assert (= (and b!1026237 (is-ElementMatch!2842 (reg!3171 r!15766))) b!1026627))

(assert (= (and b!1026237 (is-Concat!4675 (reg!3171 r!15766))) b!1026628))

(assert (= (and b!1026237 (is-Star!2842 (reg!3171 r!15766))) b!1026629))

(assert (= (and b!1026237 (is-Union!2842 (reg!3171 r!15766))) b!1026630))

(push 1)

(assert (not bm!70521))

(assert (not b!1026624))

(assert (not b!1026515))

(assert (not b!1026621))

(assert (not b!1026613))

(assert (not d!295113))

(assert (not bm!70545))

(assert (not b!1026620))

(assert (not b!1026626))

(assert (not b!1026356))

(assert (not b!1026618))

(assert (not d!295119))

(assert (not b!1026446))

(assert (not b!1026503))

(assert (not d!295127))

(assert (not bm!70544))

(assert (not b!1026519))

(assert (not b!1026511))

(assert (not d!295123))

(assert (not bm!70528))

(assert (not b!1026521))

(assert (not b!1026630))

(assert (not b!1026522))

(assert (not b!1026612))

(assert (not bm!70501))

(assert (not b!1026308))

(assert (not bm!70522))

(assert (not b!1026352))

(assert (not b!1026350))

(assert (not d!295131))

(assert (not bm!70503))

(assert (not b!1026629))

(assert (not b!1026577))

(assert (not b!1026447))

(assert (not b!1026353))

(assert (not b!1026520))

(assert (not b!1026497))

(assert (not b!1026609))

(assert (not b!1026625))

(assert (not b!1026608))

(assert (not d!295109))

(assert (not b!1026628))

(assert tp_is_empty!5327)

(assert (not b!1026355))

(assert (not d!295115))

(assert (not b!1026354))

(assert (not d!295129))

(assert (not b!1026501))

(assert (not b!1026493))

(assert (not d!295103))

(assert (not b!1026502))

(assert (not b!1026504))

(assert (not bm!70527))

(assert (not b!1026622))

(assert (not d!295105))

(assert (not b!1026611))

(assert (not b!1026607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

