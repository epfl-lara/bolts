; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286670 () Bool)

(assert start!286670)

(declare-fun b!2957308 () Bool)

(assert (=> b!2957308 true))

(assert (=> b!2957308 true))

(assert (=> b!2957308 true))

(declare-fun lambda!110166 () Int)

(declare-fun lambda!110165 () Int)

(assert (=> b!2957308 (not (= lambda!110166 lambda!110165))))

(assert (=> b!2957308 true))

(assert (=> b!2957308 true))

(assert (=> b!2957308 true))

(declare-fun b!2957294 () Bool)

(declare-fun e!1861943 () Bool)

(declare-fun tp!944181 () Bool)

(declare-fun tp!944180 () Bool)

(assert (=> b!2957294 (= e!1861943 (and tp!944181 tp!944180))))

(declare-fun b!2957295 () Bool)

(declare-fun e!1861947 () Bool)

(declare-datatypes ((C!18526 0))(
  ( (C!18527 (val!11299 Int)) )
))
(declare-datatypes ((Regex!9170 0))(
  ( (ElementMatch!9170 (c!484536 C!18526)) (Concat!14491 (regOne!18852 Regex!9170) (regTwo!18852 Regex!9170)) (EmptyExpr!9170) (Star!9170 (reg!9499 Regex!9170)) (EmptyLang!9170) (Union!9170 (regOne!18853 Regex!9170) (regTwo!18853 Regex!9170)) )
))
(declare-fun lt!1033254 () Regex!9170)

(declare-fun validRegex!3903 (Regex!9170) Bool)

(assert (=> b!2957295 (= e!1861947 (validRegex!3903 lt!1033254))))

(declare-fun b!2957296 () Bool)

(declare-fun e!1861946 () Bool)

(declare-fun e!1861942 () Bool)

(assert (=> b!2957296 (= e!1861946 e!1861942)))

(declare-fun res!1220135 () Bool)

(assert (=> b!2957296 (=> res!1220135 e!1861942)))

(declare-fun lt!1033257 () Regex!9170)

(declare-datatypes ((List!35035 0))(
  ( (Nil!34911) (Cons!34911 (h!40331 C!18526) (t!234100 List!35035)) )
))
(declare-fun s!11993 () List!35035)

(declare-fun matchR!4052 (Regex!9170 List!35035) Bool)

(assert (=> b!2957296 (= res!1220135 (not (matchR!4052 lt!1033257 s!11993)))))

(declare-fun lt!1033260 () Regex!9170)

(assert (=> b!2957296 (= lt!1033257 (Concat!14491 lt!1033260 lt!1033254))))

(declare-fun b!2957297 () Bool)

(declare-fun e!1861948 () Bool)

(declare-fun e!1861944 () Bool)

(assert (=> b!2957297 (= e!1861948 (not e!1861944))))

(declare-fun res!1220138 () Bool)

(assert (=> b!2957297 (=> res!1220138 e!1861944)))

(declare-fun lt!1033255 () Bool)

(declare-fun r!17423 () Regex!9170)

(assert (=> b!2957297 (= res!1220138 (or lt!1033255 (not (is-Concat!14491 r!17423))))))

(declare-fun matchRSpec!1307 (Regex!9170 List!35035) Bool)

(assert (=> b!2957297 (= lt!1033255 (matchRSpec!1307 r!17423 s!11993))))

(assert (=> b!2957297 (= lt!1033255 (matchR!4052 r!17423 s!11993))))

(declare-datatypes ((Unit!48719 0))(
  ( (Unit!48720) )
))
(declare-fun lt!1033259 () Unit!48719)

(declare-fun mainMatchTheorem!1307 (Regex!9170 List!35035) Unit!48719)

(assert (=> b!2957297 (= lt!1033259 (mainMatchTheorem!1307 r!17423 s!11993))))

(declare-fun b!2957298 () Bool)

(assert (=> b!2957298 (= e!1861944 e!1861946)))

(declare-fun res!1220131 () Bool)

(assert (=> b!2957298 (=> res!1220131 e!1861946)))

(declare-fun isEmptyLang!292 (Regex!9170) Bool)

(assert (=> b!2957298 (= res!1220131 (isEmptyLang!292 lt!1033260))))

(declare-fun simplify!175 (Regex!9170) Regex!9170)

(assert (=> b!2957298 (= lt!1033254 (simplify!175 (regTwo!18852 r!17423)))))

(assert (=> b!2957298 (= lt!1033260 (simplify!175 (regOne!18852 r!17423)))))

(declare-fun b!2957299 () Bool)

(declare-fun res!1220136 () Bool)

(assert (=> b!2957299 (=> res!1220136 e!1861944)))

(declare-fun isEmpty!19191 (List!35035) Bool)

(assert (=> b!2957299 (= res!1220136 (isEmpty!19191 s!11993))))

(declare-fun b!2957300 () Bool)

(declare-fun res!1220140 () Bool)

(assert (=> b!2957300 (=> res!1220140 e!1861946)))

(assert (=> b!2957300 (= res!1220140 (isEmptyLang!292 lt!1033254))))

(declare-fun b!2957301 () Bool)

(declare-fun tp!944179 () Bool)

(assert (=> b!2957301 (= e!1861943 tp!944179)))

(declare-fun b!2957302 () Bool)

(declare-fun e!1861945 () Bool)

(declare-fun tp_is_empty!15903 () Bool)

(declare-fun tp!944178 () Bool)

(assert (=> b!2957302 (= e!1861945 (and tp_is_empty!15903 tp!944178))))

(declare-fun b!2957303 () Bool)

(declare-fun res!1220134 () Bool)

(assert (=> b!2957303 (=> res!1220134 e!1861947)))

(assert (=> b!2957303 (= res!1220134 (not (validRegex!3903 lt!1033260)))))

(declare-fun b!2957304 () Bool)

(declare-fun res!1220132 () Bool)

(assert (=> b!2957304 (=> res!1220132 e!1861946)))

(declare-fun isEmptyExpr!373 (Regex!9170) Bool)

(assert (=> b!2957304 (= res!1220132 (isEmptyExpr!373 lt!1033260))))

(declare-fun res!1220137 () Bool)

(assert (=> start!286670 (=> (not res!1220137) (not e!1861948))))

(assert (=> start!286670 (= res!1220137 (validRegex!3903 r!17423))))

(assert (=> start!286670 e!1861948))

(assert (=> start!286670 e!1861943))

(assert (=> start!286670 e!1861945))

(declare-fun b!2957305 () Bool)

(declare-fun res!1220139 () Bool)

(assert (=> b!2957305 (=> res!1220139 e!1861946)))

(assert (=> b!2957305 (= res!1220139 (isEmptyExpr!373 lt!1033254))))

(declare-fun b!2957306 () Bool)

(declare-fun tp!944183 () Bool)

(declare-fun tp!944182 () Bool)

(assert (=> b!2957306 (= e!1861943 (and tp!944183 tp!944182))))

(declare-fun b!2957307 () Bool)

(assert (=> b!2957307 (= e!1861943 tp_is_empty!15903)))

(assert (=> b!2957308 (= e!1861942 e!1861947)))

(declare-fun res!1220133 () Bool)

(assert (=> b!2957308 (=> res!1220133 e!1861947)))

(declare-fun lt!1033256 () Bool)

(assert (=> b!2957308 (= res!1220133 (not lt!1033256))))

(declare-fun Exists!1502 (Int) Bool)

(assert (=> b!2957308 (= (Exists!1502 lambda!110165) (Exists!1502 lambda!110166))))

(declare-fun lt!1033258 () Unit!48719)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!523 (Regex!9170 Regex!9170 List!35035) Unit!48719)

(assert (=> b!2957308 (= lt!1033258 (lemmaExistCutMatchRandMatchRSpecEquivalent!523 lt!1033260 lt!1033254 s!11993))))

(assert (=> b!2957308 (= lt!1033256 (Exists!1502 lambda!110165))))

(declare-datatypes ((tuple2!33858 0))(
  ( (tuple2!33859 (_1!20061 List!35035) (_2!20061 List!35035)) )
))
(declare-datatypes ((Option!6661 0))(
  ( (None!6660) (Some!6660 (v!34794 tuple2!33858)) )
))
(declare-fun isDefined!5212 (Option!6661) Bool)

(declare-fun findConcatSeparation!1055 (Regex!9170 Regex!9170 List!35035 List!35035 List!35035) Option!6661)

(assert (=> b!2957308 (= lt!1033256 (isDefined!5212 (findConcatSeparation!1055 lt!1033260 lt!1033254 Nil!34911 s!11993 s!11993)))))

(declare-fun lt!1033253 () Unit!48719)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!833 (Regex!9170 Regex!9170 List!35035) Unit!48719)

(assert (=> b!2957308 (= lt!1033253 (lemmaFindConcatSeparationEquivalentToExists!833 lt!1033260 lt!1033254 s!11993))))

(assert (=> b!2957308 (matchRSpec!1307 lt!1033257 s!11993)))

(declare-fun lt!1033252 () Unit!48719)

(assert (=> b!2957308 (= lt!1033252 (mainMatchTheorem!1307 lt!1033257 s!11993))))

(assert (= (and start!286670 res!1220137) b!2957297))

(assert (= (and b!2957297 (not res!1220138)) b!2957299))

(assert (= (and b!2957299 (not res!1220136)) b!2957298))

(assert (= (and b!2957298 (not res!1220131)) b!2957300))

(assert (= (and b!2957300 (not res!1220140)) b!2957304))

(assert (= (and b!2957304 (not res!1220132)) b!2957305))

(assert (= (and b!2957305 (not res!1220139)) b!2957296))

(assert (= (and b!2957296 (not res!1220135)) b!2957308))

(assert (= (and b!2957308 (not res!1220133)) b!2957303))

(assert (= (and b!2957303 (not res!1220134)) b!2957295))

(assert (= (and start!286670 (is-ElementMatch!9170 r!17423)) b!2957307))

(assert (= (and start!286670 (is-Concat!14491 r!17423)) b!2957294))

(assert (= (and start!286670 (is-Star!9170 r!17423)) b!2957301))

(assert (= (and start!286670 (is-Union!9170 r!17423)) b!2957306))

(assert (= (and start!286670 (is-Cons!34911 s!11993)) b!2957302))

(declare-fun m!3332537 () Bool)

(assert (=> b!2957308 m!3332537))

(declare-fun m!3332539 () Bool)

(assert (=> b!2957308 m!3332539))

(declare-fun m!3332541 () Bool)

(assert (=> b!2957308 m!3332541))

(declare-fun m!3332543 () Bool)

(assert (=> b!2957308 m!3332543))

(declare-fun m!3332545 () Bool)

(assert (=> b!2957308 m!3332545))

(declare-fun m!3332547 () Bool)

(assert (=> b!2957308 m!3332547))

(assert (=> b!2957308 m!3332545))

(assert (=> b!2957308 m!3332537))

(declare-fun m!3332549 () Bool)

(assert (=> b!2957308 m!3332549))

(declare-fun m!3332551 () Bool)

(assert (=> b!2957308 m!3332551))

(declare-fun m!3332553 () Bool)

(assert (=> b!2957298 m!3332553))

(declare-fun m!3332555 () Bool)

(assert (=> b!2957298 m!3332555))

(declare-fun m!3332557 () Bool)

(assert (=> b!2957298 m!3332557))

(declare-fun m!3332559 () Bool)

(assert (=> start!286670 m!3332559))

(declare-fun m!3332561 () Bool)

(assert (=> b!2957303 m!3332561))

(declare-fun m!3332563 () Bool)

(assert (=> b!2957297 m!3332563))

(declare-fun m!3332565 () Bool)

(assert (=> b!2957297 m!3332565))

(declare-fun m!3332567 () Bool)

(assert (=> b!2957297 m!3332567))

(declare-fun m!3332569 () Bool)

(assert (=> b!2957300 m!3332569))

(declare-fun m!3332571 () Bool)

(assert (=> b!2957305 m!3332571))

(declare-fun m!3332573 () Bool)

(assert (=> b!2957295 m!3332573))

(declare-fun m!3332575 () Bool)

(assert (=> b!2957296 m!3332575))

(declare-fun m!3332577 () Bool)

(assert (=> b!2957299 m!3332577))

(declare-fun m!3332579 () Bool)

(assert (=> b!2957304 m!3332579))

(push 1)

(assert (not b!2957296))

(assert (not b!2957304))

(assert (not b!2957298))

(assert (not b!2957302))

(assert (not start!286670))

(assert (not b!2957294))

(assert (not b!2957306))

(assert (not b!2957301))

(assert (not b!2957295))

(assert tp_is_empty!15903)

(assert (not b!2957300))

(assert (not b!2957305))

(assert (not b!2957299))

(assert (not b!2957308))

(assert (not b!2957297))

(assert (not b!2957303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2957402 () Bool)

(declare-fun e!1861993 () Bool)

(declare-fun lt!1033290 () Bool)

(assert (=> b!2957402 (= e!1861993 (not lt!1033290))))

(declare-fun b!2957404 () Bool)

(declare-fun res!1220205 () Bool)

(declare-fun e!1861996 () Bool)

(assert (=> b!2957404 (=> res!1220205 e!1861996)))

(declare-fun e!1861995 () Bool)

(assert (=> b!2957404 (= res!1220205 e!1861995)))

(declare-fun res!1220204 () Bool)

(assert (=> b!2957404 (=> (not res!1220204) (not e!1861995))))

(assert (=> b!2957404 (= res!1220204 lt!1033290)))

(declare-fun b!2957405 () Bool)

(declare-fun e!1861992 () Bool)

(declare-fun e!1861994 () Bool)

(assert (=> b!2957405 (= e!1861992 e!1861994)))

(declare-fun res!1220203 () Bool)

(assert (=> b!2957405 (=> res!1220203 e!1861994)))

(declare-fun call!195931 () Bool)

(assert (=> b!2957405 (= res!1220203 call!195931)))

(declare-fun b!2957406 () Bool)

(assert (=> b!2957406 (= e!1861996 e!1861992)))

(declare-fun res!1220202 () Bool)

(assert (=> b!2957406 (=> (not res!1220202) (not e!1861992))))

(assert (=> b!2957406 (= res!1220202 (not lt!1033290))))

(declare-fun bm!195926 () Bool)

(assert (=> bm!195926 (= call!195931 (isEmpty!19191 s!11993))))

(declare-fun b!2957407 () Bool)

(declare-fun e!1861991 () Bool)

(declare-fun nullable!2926 (Regex!9170) Bool)

(assert (=> b!2957407 (= e!1861991 (nullable!2926 lt!1033257))))

(declare-fun b!2957408 () Bool)

(declare-fun e!1861990 () Bool)

(assert (=> b!2957408 (= e!1861990 (= lt!1033290 call!195931))))

(declare-fun b!2957403 () Bool)

(declare-fun derivativeStep!2528 (Regex!9170 C!18526) Regex!9170)

(declare-fun head!6587 (List!35035) C!18526)

(declare-fun tail!4813 (List!35035) List!35035)

(assert (=> b!2957403 (= e!1861991 (matchR!4052 (derivativeStep!2528 lt!1033257 (head!6587 s!11993)) (tail!4813 s!11993)))))

(declare-fun d!841731 () Bool)

(assert (=> d!841731 e!1861990))

(declare-fun c!484545 () Bool)

(assert (=> d!841731 (= c!484545 (is-EmptyExpr!9170 lt!1033257))))

(assert (=> d!841731 (= lt!1033290 e!1861991)))

(declare-fun c!484546 () Bool)

(assert (=> d!841731 (= c!484546 (isEmpty!19191 s!11993))))

(assert (=> d!841731 (validRegex!3903 lt!1033257)))

(assert (=> d!841731 (= (matchR!4052 lt!1033257 s!11993) lt!1033290)))

(declare-fun b!2957409 () Bool)

(declare-fun res!1220201 () Bool)

(assert (=> b!2957409 (=> (not res!1220201) (not e!1861995))))

(assert (=> b!2957409 (= res!1220201 (not call!195931))))

(declare-fun b!2957410 () Bool)

(assert (=> b!2957410 (= e!1861990 e!1861993)))

(declare-fun c!484544 () Bool)

(assert (=> b!2957410 (= c!484544 (is-EmptyLang!9170 lt!1033257))))

(declare-fun b!2957411 () Bool)

(assert (=> b!2957411 (= e!1861995 (= (head!6587 s!11993) (c!484536 lt!1033257)))))

(declare-fun b!2957412 () Bool)

(assert (=> b!2957412 (= e!1861994 (not (= (head!6587 s!11993) (c!484536 lt!1033257))))))

(declare-fun b!2957413 () Bool)

(declare-fun res!1220199 () Bool)

(assert (=> b!2957413 (=> res!1220199 e!1861996)))

(assert (=> b!2957413 (= res!1220199 (not (is-ElementMatch!9170 lt!1033257)))))

(assert (=> b!2957413 (= e!1861993 e!1861996)))

(declare-fun b!2957414 () Bool)

(declare-fun res!1220200 () Bool)

(assert (=> b!2957414 (=> res!1220200 e!1861994)))

(assert (=> b!2957414 (= res!1220200 (not (isEmpty!19191 (tail!4813 s!11993))))))

(declare-fun b!2957415 () Bool)

(declare-fun res!1220206 () Bool)

(assert (=> b!2957415 (=> (not res!1220206) (not e!1861995))))

(assert (=> b!2957415 (= res!1220206 (isEmpty!19191 (tail!4813 s!11993)))))

(assert (= (and d!841731 c!484546) b!2957407))

(assert (= (and d!841731 (not c!484546)) b!2957403))

(assert (= (and d!841731 c!484545) b!2957408))

(assert (= (and d!841731 (not c!484545)) b!2957410))

(assert (= (and b!2957410 c!484544) b!2957402))

(assert (= (and b!2957410 (not c!484544)) b!2957413))

(assert (= (and b!2957413 (not res!1220199)) b!2957404))

(assert (= (and b!2957404 res!1220204) b!2957409))

(assert (= (and b!2957409 res!1220201) b!2957415))

(assert (= (and b!2957415 res!1220206) b!2957411))

(assert (= (and b!2957404 (not res!1220205)) b!2957406))

(assert (= (and b!2957406 res!1220202) b!2957405))

(assert (= (and b!2957405 (not res!1220203)) b!2957414))

(assert (= (and b!2957414 (not res!1220200)) b!2957412))

(assert (= (or b!2957408 b!2957405 b!2957409) bm!195926))

(declare-fun m!3332625 () Bool)

(assert (=> b!2957412 m!3332625))

(assert (=> bm!195926 m!3332577))

(assert (=> d!841731 m!3332577))

(declare-fun m!3332627 () Bool)

(assert (=> d!841731 m!3332627))

(assert (=> b!2957411 m!3332625))

(declare-fun m!3332629 () Bool)

(assert (=> b!2957414 m!3332629))

(assert (=> b!2957414 m!3332629))

(declare-fun m!3332631 () Bool)

(assert (=> b!2957414 m!3332631))

(declare-fun m!3332633 () Bool)

(assert (=> b!2957407 m!3332633))

(assert (=> b!2957415 m!3332629))

(assert (=> b!2957415 m!3332629))

(assert (=> b!2957415 m!3332631))

(assert (=> b!2957403 m!3332625))

(assert (=> b!2957403 m!3332625))

(declare-fun m!3332635 () Bool)

(assert (=> b!2957403 m!3332635))

(assert (=> b!2957403 m!3332629))

(assert (=> b!2957403 m!3332635))

(assert (=> b!2957403 m!3332629))

(declare-fun m!3332637 () Bool)

(assert (=> b!2957403 m!3332637))

(assert (=> b!2957296 d!841731))

(declare-fun b!2957434 () Bool)

(declare-fun e!1862014 () Bool)

(declare-fun e!1862012 () Bool)

(assert (=> b!2957434 (= e!1862014 e!1862012)))

(declare-fun res!1220218 () Bool)

(assert (=> b!2957434 (=> (not res!1220218) (not e!1862012))))

(declare-fun call!195940 () Bool)

(assert (=> b!2957434 (= res!1220218 call!195940)))

(declare-fun b!2957435 () Bool)

(declare-fun call!195938 () Bool)

(assert (=> b!2957435 (= e!1862012 call!195938)))

(declare-fun b!2957436 () Bool)

(declare-fun e!1862015 () Bool)

(declare-fun e!1862017 () Bool)

(assert (=> b!2957436 (= e!1862015 e!1862017)))

(declare-fun c!484551 () Bool)

(assert (=> b!2957436 (= c!484551 (is-Union!9170 lt!1033254))))

(declare-fun bm!195933 () Bool)

(assert (=> bm!195933 (= call!195938 (validRegex!3903 (ite c!484551 (regOne!18853 lt!1033254) (regTwo!18852 lt!1033254))))))

(declare-fun b!2957437 () Bool)

(declare-fun res!1220217 () Bool)

(assert (=> b!2957437 (=> res!1220217 e!1862014)))

(assert (=> b!2957437 (= res!1220217 (not (is-Concat!14491 lt!1033254)))))

(assert (=> b!2957437 (= e!1862017 e!1862014)))

(declare-fun b!2957438 () Bool)

(declare-fun e!1862011 () Bool)

(declare-fun call!195939 () Bool)

(assert (=> b!2957438 (= e!1862011 call!195939)))

(declare-fun b!2957439 () Bool)

(assert (=> b!2957439 (= e!1862015 e!1862011)))

(declare-fun res!1220221 () Bool)

(assert (=> b!2957439 (= res!1220221 (not (nullable!2926 (reg!9499 lt!1033254))))))

(assert (=> b!2957439 (=> (not res!1220221) (not e!1862011))))

(declare-fun b!2957440 () Bool)

(declare-fun res!1220219 () Bool)

(declare-fun e!1862016 () Bool)

(assert (=> b!2957440 (=> (not res!1220219) (not e!1862016))))

(assert (=> b!2957440 (= res!1220219 call!195938)))

(assert (=> b!2957440 (= e!1862017 e!1862016)))

(declare-fun b!2957441 () Bool)

(assert (=> b!2957441 (= e!1862016 call!195940)))

(declare-fun bm!195935 () Bool)

(assert (=> bm!195935 (= call!195940 call!195939)))

(declare-fun b!2957442 () Bool)

(declare-fun e!1862013 () Bool)

(assert (=> b!2957442 (= e!1862013 e!1862015)))

(declare-fun c!484552 () Bool)

(assert (=> b!2957442 (= c!484552 (is-Star!9170 lt!1033254))))

(declare-fun d!841735 () Bool)

(declare-fun res!1220220 () Bool)

(assert (=> d!841735 (=> res!1220220 e!1862013)))

(assert (=> d!841735 (= res!1220220 (is-ElementMatch!9170 lt!1033254))))

(assert (=> d!841735 (= (validRegex!3903 lt!1033254) e!1862013)))

(declare-fun bm!195934 () Bool)

(assert (=> bm!195934 (= call!195939 (validRegex!3903 (ite c!484552 (reg!9499 lt!1033254) (ite c!484551 (regTwo!18853 lt!1033254) (regOne!18852 lt!1033254)))))))

(assert (= (and d!841735 (not res!1220220)) b!2957442))

(assert (= (and b!2957442 c!484552) b!2957439))

(assert (= (and b!2957442 (not c!484552)) b!2957436))

(assert (= (and b!2957439 res!1220221) b!2957438))

(assert (= (and b!2957436 c!484551) b!2957440))

(assert (= (and b!2957436 (not c!484551)) b!2957437))

(assert (= (and b!2957440 res!1220219) b!2957441))

(assert (= (and b!2957437 (not res!1220217)) b!2957434))

(assert (= (and b!2957434 res!1220218) b!2957435))

(assert (= (or b!2957440 b!2957435) bm!195933))

(assert (= (or b!2957441 b!2957434) bm!195935))

(assert (= (or b!2957438 bm!195935) bm!195934))

(declare-fun m!3332639 () Bool)

(assert (=> bm!195933 m!3332639))

(declare-fun m!3332641 () Bool)

(assert (=> b!2957439 m!3332641))

(declare-fun m!3332643 () Bool)

(assert (=> bm!195934 m!3332643))

(assert (=> b!2957295 d!841735))

(declare-fun d!841737 () Bool)

(assert (=> d!841737 (= (isEmptyExpr!373 lt!1033254) (is-EmptyExpr!9170 lt!1033254))))

(assert (=> b!2957305 d!841737))

(declare-fun d!841739 () Bool)

(assert (=> d!841739 (= (isEmptyExpr!373 lt!1033260) (is-EmptyExpr!9170 lt!1033260))))

(assert (=> b!2957304 d!841739))

(declare-fun b!2957443 () Bool)

(declare-fun e!1862021 () Bool)

(declare-fun e!1862019 () Bool)

(assert (=> b!2957443 (= e!1862021 e!1862019)))

(declare-fun res!1220223 () Bool)

(assert (=> b!2957443 (=> (not res!1220223) (not e!1862019))))

(declare-fun call!195943 () Bool)

(assert (=> b!2957443 (= res!1220223 call!195943)))

(declare-fun b!2957444 () Bool)

(declare-fun call!195941 () Bool)

(assert (=> b!2957444 (= e!1862019 call!195941)))

(declare-fun b!2957445 () Bool)

(declare-fun e!1862022 () Bool)

(declare-fun e!1862024 () Bool)

(assert (=> b!2957445 (= e!1862022 e!1862024)))

(declare-fun c!484553 () Bool)

(assert (=> b!2957445 (= c!484553 (is-Union!9170 lt!1033260))))

(declare-fun bm!195936 () Bool)

(assert (=> bm!195936 (= call!195941 (validRegex!3903 (ite c!484553 (regOne!18853 lt!1033260) (regTwo!18852 lt!1033260))))))

(declare-fun b!2957446 () Bool)

(declare-fun res!1220222 () Bool)

(assert (=> b!2957446 (=> res!1220222 e!1862021)))

(assert (=> b!2957446 (= res!1220222 (not (is-Concat!14491 lt!1033260)))))

(assert (=> b!2957446 (= e!1862024 e!1862021)))

(declare-fun b!2957447 () Bool)

(declare-fun e!1862018 () Bool)

(declare-fun call!195942 () Bool)

(assert (=> b!2957447 (= e!1862018 call!195942)))

(declare-fun b!2957448 () Bool)

(assert (=> b!2957448 (= e!1862022 e!1862018)))

(declare-fun res!1220226 () Bool)

(assert (=> b!2957448 (= res!1220226 (not (nullable!2926 (reg!9499 lt!1033260))))))

(assert (=> b!2957448 (=> (not res!1220226) (not e!1862018))))

(declare-fun b!2957449 () Bool)

(declare-fun res!1220224 () Bool)

(declare-fun e!1862023 () Bool)

(assert (=> b!2957449 (=> (not res!1220224) (not e!1862023))))

(assert (=> b!2957449 (= res!1220224 call!195941)))

(assert (=> b!2957449 (= e!1862024 e!1862023)))

(declare-fun b!2957450 () Bool)

(assert (=> b!2957450 (= e!1862023 call!195943)))

(declare-fun bm!195938 () Bool)

(assert (=> bm!195938 (= call!195943 call!195942)))

(declare-fun b!2957451 () Bool)

(declare-fun e!1862020 () Bool)

(assert (=> b!2957451 (= e!1862020 e!1862022)))

(declare-fun c!484554 () Bool)

(assert (=> b!2957451 (= c!484554 (is-Star!9170 lt!1033260))))

(declare-fun d!841741 () Bool)

(declare-fun res!1220225 () Bool)

(assert (=> d!841741 (=> res!1220225 e!1862020)))

(assert (=> d!841741 (= res!1220225 (is-ElementMatch!9170 lt!1033260))))

(assert (=> d!841741 (= (validRegex!3903 lt!1033260) e!1862020)))

(declare-fun bm!195937 () Bool)

(assert (=> bm!195937 (= call!195942 (validRegex!3903 (ite c!484554 (reg!9499 lt!1033260) (ite c!484553 (regTwo!18853 lt!1033260) (regOne!18852 lt!1033260)))))))

(assert (= (and d!841741 (not res!1220225)) b!2957451))

(assert (= (and b!2957451 c!484554) b!2957448))

(assert (= (and b!2957451 (not c!484554)) b!2957445))

(assert (= (and b!2957448 res!1220226) b!2957447))

(assert (= (and b!2957445 c!484553) b!2957449))

(assert (= (and b!2957445 (not c!484553)) b!2957446))

(assert (= (and b!2957449 res!1220224) b!2957450))

(assert (= (and b!2957446 (not res!1220222)) b!2957443))

(assert (= (and b!2957443 res!1220223) b!2957444))

(assert (= (or b!2957449 b!2957444) bm!195936))

(assert (= (or b!2957450 b!2957443) bm!195938))

(assert (= (or b!2957447 bm!195938) bm!195937))

(declare-fun m!3332645 () Bool)

(assert (=> bm!195936 m!3332645))

(declare-fun m!3332647 () Bool)

(assert (=> b!2957448 m!3332647))

(declare-fun m!3332649 () Bool)

(assert (=> bm!195937 m!3332649))

(assert (=> b!2957303 d!841741))

(declare-fun b!2957456 () Bool)

(declare-fun e!1862030 () Bool)

(declare-fun e!1862028 () Bool)

(assert (=> b!2957456 (= e!1862030 e!1862028)))

(declare-fun res!1220228 () Bool)

(assert (=> b!2957456 (=> (not res!1220228) (not e!1862028))))

(declare-fun call!195946 () Bool)

(assert (=> b!2957456 (= res!1220228 call!195946)))

(declare-fun b!2957457 () Bool)

(declare-fun call!195944 () Bool)

(assert (=> b!2957457 (= e!1862028 call!195944)))

(declare-fun b!2957458 () Bool)

(declare-fun e!1862031 () Bool)

(declare-fun e!1862033 () Bool)

(assert (=> b!2957458 (= e!1862031 e!1862033)))

(declare-fun c!484557 () Bool)

(assert (=> b!2957458 (= c!484557 (is-Union!9170 r!17423))))

(declare-fun bm!195939 () Bool)

(assert (=> bm!195939 (= call!195944 (validRegex!3903 (ite c!484557 (regOne!18853 r!17423) (regTwo!18852 r!17423))))))

(declare-fun b!2957459 () Bool)

(declare-fun res!1220227 () Bool)

(assert (=> b!2957459 (=> res!1220227 e!1862030)))

(assert (=> b!2957459 (= res!1220227 (not (is-Concat!14491 r!17423)))))

(assert (=> b!2957459 (= e!1862033 e!1862030)))

(declare-fun b!2957460 () Bool)

(declare-fun e!1862027 () Bool)

(declare-fun call!195945 () Bool)

(assert (=> b!2957460 (= e!1862027 call!195945)))

(declare-fun b!2957461 () Bool)

(assert (=> b!2957461 (= e!1862031 e!1862027)))

(declare-fun res!1220231 () Bool)

(assert (=> b!2957461 (= res!1220231 (not (nullable!2926 (reg!9499 r!17423))))))

(assert (=> b!2957461 (=> (not res!1220231) (not e!1862027))))

(declare-fun b!2957462 () Bool)

(declare-fun res!1220229 () Bool)

(declare-fun e!1862032 () Bool)

(assert (=> b!2957462 (=> (not res!1220229) (not e!1862032))))

(assert (=> b!2957462 (= res!1220229 call!195944)))

(assert (=> b!2957462 (= e!1862033 e!1862032)))

(declare-fun b!2957463 () Bool)

(assert (=> b!2957463 (= e!1862032 call!195946)))

(declare-fun bm!195941 () Bool)

(assert (=> bm!195941 (= call!195946 call!195945)))

(declare-fun b!2957464 () Bool)

(declare-fun e!1862029 () Bool)

(assert (=> b!2957464 (= e!1862029 e!1862031)))

(declare-fun c!484558 () Bool)

(assert (=> b!2957464 (= c!484558 (is-Star!9170 r!17423))))

(declare-fun d!841743 () Bool)

(declare-fun res!1220230 () Bool)

(assert (=> d!841743 (=> res!1220230 e!1862029)))

(assert (=> d!841743 (= res!1220230 (is-ElementMatch!9170 r!17423))))

(assert (=> d!841743 (= (validRegex!3903 r!17423) e!1862029)))

(declare-fun bm!195940 () Bool)

(assert (=> bm!195940 (= call!195945 (validRegex!3903 (ite c!484558 (reg!9499 r!17423) (ite c!484557 (regTwo!18853 r!17423) (regOne!18852 r!17423)))))))

(assert (= (and d!841743 (not res!1220230)) b!2957464))

(assert (= (and b!2957464 c!484558) b!2957461))

(assert (= (and b!2957464 (not c!484558)) b!2957458))

(assert (= (and b!2957461 res!1220231) b!2957460))

(assert (= (and b!2957458 c!484557) b!2957462))

(assert (= (and b!2957458 (not c!484557)) b!2957459))

(assert (= (and b!2957462 res!1220229) b!2957463))

(assert (= (and b!2957459 (not res!1220227)) b!2957456))

(assert (= (and b!2957456 res!1220228) b!2957457))

(assert (= (or b!2957462 b!2957457) bm!195939))

(assert (= (or b!2957463 b!2957456) bm!195941))

(assert (= (or b!2957460 bm!195941) bm!195940))

(declare-fun m!3332651 () Bool)

(assert (=> bm!195939 m!3332651))

(declare-fun m!3332653 () Bool)

(assert (=> b!2957461 m!3332653))

(declare-fun m!3332655 () Bool)

(assert (=> bm!195940 m!3332655))

(assert (=> start!286670 d!841743))

(declare-fun d!841745 () Bool)

(assert (=> d!841745 (= (isEmptyLang!292 lt!1033254) (is-EmptyLang!9170 lt!1033254))))

(assert (=> b!2957300 d!841745))

(declare-fun d!841747 () Bool)

(assert (=> d!841747 (= (isEmpty!19191 s!11993) (is-Nil!34911 s!11993))))

(assert (=> b!2957299 d!841747))

(declare-fun d!841749 () Bool)

(assert (=> d!841749 (= (isEmptyLang!292 lt!1033260) (is-EmptyLang!9170 lt!1033260))))

(assert (=> b!2957298 d!841749))

(declare-fun b!2957553 () Bool)

(declare-fun e!1862091 () Regex!9170)

(declare-fun e!1862081 () Regex!9170)

(assert (=> b!2957553 (= e!1862091 e!1862081)))

(declare-fun c!484593 () Bool)

(assert (=> b!2957553 (= c!484593 (is-Star!9170 (regTwo!18852 r!17423)))))

(declare-fun b!2957554 () Bool)

(declare-fun c!484595 () Bool)

(declare-fun call!195968 () Bool)

(assert (=> b!2957554 (= c!484595 call!195968)))

(declare-fun e!1862086 () Regex!9170)

(declare-fun e!1862083 () Regex!9170)

(assert (=> b!2957554 (= e!1862086 e!1862083)))

(declare-fun b!2957555 () Bool)

(declare-fun e!1862085 () Regex!9170)

(assert (=> b!2957555 (= e!1862085 EmptyLang!9170)))

(declare-fun b!2957556 () Bool)

(declare-fun c!484594 () Bool)

(declare-fun e!1862094 () Bool)

(assert (=> b!2957556 (= c!484594 e!1862094)))

(declare-fun res!1220262 () Bool)

(assert (=> b!2957556 (=> res!1220262 e!1862094)))

(declare-fun call!195965 () Bool)

(assert (=> b!2957556 (= res!1220262 call!195965)))

(declare-fun lt!1033310 () Regex!9170)

(declare-fun call!195966 () Regex!9170)

(assert (=> b!2957556 (= lt!1033310 call!195966)))

(declare-fun e!1862090 () Regex!9170)

(assert (=> b!2957556 (= e!1862081 e!1862090)))

(declare-fun call!195967 () Bool)

(declare-fun lt!1033311 () Regex!9170)

(declare-fun bm!195960 () Bool)

(assert (=> bm!195960 (= call!195967 (isEmptyExpr!373 (ite c!484593 lt!1033310 lt!1033311)))))

(declare-fun b!2957557 () Bool)

(assert (=> b!2957557 (= e!1862090 (Star!9170 lt!1033310))))

(declare-fun b!2957558 () Bool)

(declare-fun e!1862088 () Regex!9170)

(assert (=> b!2957558 (= e!1862088 (regTwo!18852 r!17423))))

(declare-fun lt!1033308 () Regex!9170)

(declare-fun c!484598 () Bool)

(declare-fun lt!1033307 () Regex!9170)

(declare-fun bm!195961 () Bool)

(assert (=> bm!195961 (= call!195968 (isEmptyLang!292 (ite c!484598 lt!1033308 lt!1033307)))))

(declare-fun b!2957559 () Bool)

(declare-fun e!1862087 () Regex!9170)

(assert (=> b!2957559 (= e!1862087 EmptyLang!9170)))

(declare-fun b!2957560 () Bool)

(declare-fun e!1862093 () Bool)

(declare-fun call!195964 () Bool)

(assert (=> b!2957560 (= e!1862093 call!195964)))

(declare-fun bm!195962 () Bool)

(assert (=> bm!195962 (= call!195964 call!195965)))

(declare-fun b!2957561 () Bool)

(assert (=> b!2957561 (= c!484598 (is-Union!9170 (regTwo!18852 r!17423)))))

(declare-fun e!1862082 () Regex!9170)

(assert (=> b!2957561 (= e!1862081 e!1862082)))

(declare-fun b!2957562 () Bool)

(declare-fun lt!1033306 () Regex!9170)

(assert (=> b!2957562 (= e!1862083 (Union!9170 lt!1033306 lt!1033308))))

(declare-fun b!2957563 () Bool)

(assert (=> b!2957563 (= e!1862090 EmptyExpr!9170)))

(declare-fun b!2957564 () Bool)

(declare-fun e!1862089 () Regex!9170)

(assert (=> b!2957564 (= e!1862089 lt!1033311)))

(declare-fun b!2957565 () Bool)

(assert (=> b!2957565 (= e!1862083 lt!1033306)))

(declare-fun b!2957566 () Bool)

(declare-fun e!1862084 () Regex!9170)

(assert (=> b!2957566 (= e!1862084 lt!1033307)))

(declare-fun b!2957567 () Bool)

(declare-fun c!484590 () Bool)

(assert (=> b!2957567 (= c!484590 (isEmptyExpr!373 lt!1033307))))

(assert (=> b!2957567 (= e!1862085 e!1862089)))

(declare-fun b!2957568 () Bool)

(declare-fun e!1862092 () Bool)

(declare-fun lt!1033309 () Regex!9170)

(assert (=> b!2957568 (= e!1862092 (= (nullable!2926 lt!1033309) (nullable!2926 (regTwo!18852 r!17423))))))

(declare-fun bm!195963 () Bool)

(assert (=> bm!195963 (= call!195966 (simplify!175 (ite c!484593 (reg!9499 (regTwo!18852 r!17423)) (ite c!484598 (regOne!18853 (regTwo!18852 r!17423)) (regTwo!18852 (regTwo!18852 r!17423))))))))

(declare-fun b!2957569 () Bool)

(assert (=> b!2957569 (= e!1862082 e!1862085)))

(declare-fun call!195970 () Regex!9170)

(assert (=> b!2957569 (= lt!1033307 call!195970)))

(declare-fun call!195969 () Regex!9170)

(assert (=> b!2957569 (= lt!1033311 call!195969)))

(declare-fun res!1220264 () Bool)

(assert (=> b!2957569 (= res!1220264 call!195968)))

(assert (=> b!2957569 (=> res!1220264 e!1862093)))

(declare-fun c!484596 () Bool)

(assert (=> b!2957569 (= c!484596 e!1862093)))

(declare-fun b!2957570 () Bool)

(assert (=> b!2957570 (= e!1862084 (Concat!14491 lt!1033307 lt!1033311))))

(declare-fun bm!195964 () Bool)

(assert (=> bm!195964 (= call!195969 call!195966)))

(declare-fun b!2957571 () Bool)

(assert (=> b!2957571 (= e!1862089 e!1862084)))

(declare-fun c!484588 () Bool)

(assert (=> b!2957571 (= c!484588 call!195967)))

(declare-fun d!841751 () Bool)

(assert (=> d!841751 e!1862092))

(declare-fun res!1220263 () Bool)

(assert (=> d!841751 (=> (not res!1220263) (not e!1862092))))

(assert (=> d!841751 (= res!1220263 (validRegex!3903 lt!1033309))))

(assert (=> d!841751 (= lt!1033309 e!1862087)))

(declare-fun c!484589 () Bool)

(assert (=> d!841751 (= c!484589 (is-EmptyLang!9170 (regTwo!18852 r!17423)))))

(assert (=> d!841751 (validRegex!3903 (regTwo!18852 r!17423))))

(assert (=> d!841751 (= (simplify!175 (regTwo!18852 r!17423)) lt!1033309)))

(declare-fun bm!195959 () Bool)

(assert (=> bm!195959 (= call!195970 (simplify!175 (ite c!484598 (regTwo!18853 (regTwo!18852 r!17423)) (regOne!18852 (regTwo!18852 r!17423)))))))

(declare-fun b!2957572 () Bool)

(declare-fun c!484591 () Bool)

(assert (=> b!2957572 (= c!484591 (is-EmptyExpr!9170 (regTwo!18852 r!17423)))))

(assert (=> b!2957572 (= e!1862088 e!1862091)))

(declare-fun b!2957573 () Bool)

(assert (=> b!2957573 (= e!1862082 e!1862086)))

(assert (=> b!2957573 (= lt!1033306 call!195969)))

(assert (=> b!2957573 (= lt!1033308 call!195970)))

(declare-fun c!484597 () Bool)

(assert (=> b!2957573 (= c!484597 call!195964)))

(declare-fun b!2957574 () Bool)

(assert (=> b!2957574 (= e!1862086 lt!1033308)))

(declare-fun bm!195965 () Bool)

(assert (=> bm!195965 (= call!195965 (isEmptyLang!292 (ite c!484593 lt!1033310 (ite c!484598 lt!1033306 lt!1033311))))))

(declare-fun b!2957575 () Bool)

(assert (=> b!2957575 (= e!1862091 EmptyExpr!9170)))

(declare-fun b!2957576 () Bool)

(assert (=> b!2957576 (= e!1862094 call!195967)))

(declare-fun b!2957577 () Bool)

(assert (=> b!2957577 (= e!1862087 e!1862088)))

(declare-fun c!484592 () Bool)

(assert (=> b!2957577 (= c!484592 (is-ElementMatch!9170 (regTwo!18852 r!17423)))))

(assert (= (and d!841751 c!484589) b!2957559))

(assert (= (and d!841751 (not c!484589)) b!2957577))

(assert (= (and b!2957577 c!484592) b!2957558))

(assert (= (and b!2957577 (not c!484592)) b!2957572))

(assert (= (and b!2957572 c!484591) b!2957575))

(assert (= (and b!2957572 (not c!484591)) b!2957553))

(assert (= (and b!2957553 c!484593) b!2957556))

(assert (= (and b!2957553 (not c!484593)) b!2957561))

(assert (= (and b!2957556 (not res!1220262)) b!2957576))

(assert (= (and b!2957556 c!484594) b!2957563))

(assert (= (and b!2957556 (not c!484594)) b!2957557))

(assert (= (and b!2957561 c!484598) b!2957573))

(assert (= (and b!2957561 (not c!484598)) b!2957569))

(assert (= (and b!2957573 c!484597) b!2957574))

(assert (= (and b!2957573 (not c!484597)) b!2957554))

(assert (= (and b!2957554 c!484595) b!2957565))

(assert (= (and b!2957554 (not c!484595)) b!2957562))

(assert (= (and b!2957569 (not res!1220264)) b!2957560))

(assert (= (and b!2957569 c!484596) b!2957555))

(assert (= (and b!2957569 (not c!484596)) b!2957567))

(assert (= (and b!2957567 c!484590) b!2957564))

(assert (= (and b!2957567 (not c!484590)) b!2957571))

(assert (= (and b!2957571 c!484588) b!2957566))

(assert (= (and b!2957571 (not c!484588)) b!2957570))

(assert (= (or b!2957573 b!2957569) bm!195964))

(assert (= (or b!2957573 b!2957569) bm!195959))

(assert (= (or b!2957554 b!2957569) bm!195961))

(assert (= (or b!2957573 b!2957560) bm!195962))

(assert (= (or b!2957576 b!2957571) bm!195960))

(assert (= (or b!2957556 bm!195964) bm!195963))

(assert (= (or b!2957556 bm!195962) bm!195965))

(assert (= (and d!841751 res!1220263) b!2957568))

(declare-fun m!3332671 () Bool)

(assert (=> bm!195963 m!3332671))

(declare-fun m!3332673 () Bool)

(assert (=> d!841751 m!3332673))

(declare-fun m!3332675 () Bool)

(assert (=> d!841751 m!3332675))

(declare-fun m!3332677 () Bool)

(assert (=> b!2957568 m!3332677))

(declare-fun m!3332679 () Bool)

(assert (=> b!2957568 m!3332679))

(declare-fun m!3332681 () Bool)

(assert (=> bm!195965 m!3332681))

(declare-fun m!3332683 () Bool)

(assert (=> bm!195961 m!3332683))

(declare-fun m!3332685 () Bool)

(assert (=> bm!195959 m!3332685))

(declare-fun m!3332687 () Bool)

(assert (=> b!2957567 m!3332687))

(declare-fun m!3332689 () Bool)

(assert (=> bm!195960 m!3332689))

(assert (=> b!2957298 d!841751))

(declare-fun b!2957578 () Bool)

(declare-fun e!1862105 () Regex!9170)

(declare-fun e!1862095 () Regex!9170)

(assert (=> b!2957578 (= e!1862105 e!1862095)))

(declare-fun c!484604 () Bool)

(assert (=> b!2957578 (= c!484604 (is-Star!9170 (regOne!18852 r!17423)))))

(declare-fun b!2957579 () Bool)

(declare-fun c!484606 () Bool)

(declare-fun call!195975 () Bool)

(assert (=> b!2957579 (= c!484606 call!195975)))

(declare-fun e!1862100 () Regex!9170)

(declare-fun e!1862097 () Regex!9170)

(assert (=> b!2957579 (= e!1862100 e!1862097)))

(declare-fun b!2957580 () Bool)

(declare-fun e!1862099 () Regex!9170)

(assert (=> b!2957580 (= e!1862099 EmptyLang!9170)))

(declare-fun b!2957581 () Bool)

(declare-fun c!484605 () Bool)

(declare-fun e!1862108 () Bool)

(assert (=> b!2957581 (= c!484605 e!1862108)))

(declare-fun res!1220265 () Bool)

(assert (=> b!2957581 (=> res!1220265 e!1862108)))

(declare-fun call!195972 () Bool)

(assert (=> b!2957581 (= res!1220265 call!195972)))

(declare-fun lt!1033316 () Regex!9170)

(declare-fun call!195973 () Regex!9170)

(assert (=> b!2957581 (= lt!1033316 call!195973)))

(declare-fun e!1862104 () Regex!9170)

(assert (=> b!2957581 (= e!1862095 e!1862104)))

(declare-fun call!195974 () Bool)

(declare-fun lt!1033317 () Regex!9170)

(declare-fun bm!195967 () Bool)

(assert (=> bm!195967 (= call!195974 (isEmptyExpr!373 (ite c!484604 lt!1033316 lt!1033317)))))

(declare-fun b!2957582 () Bool)

(assert (=> b!2957582 (= e!1862104 (Star!9170 lt!1033316))))

(declare-fun b!2957583 () Bool)

(declare-fun e!1862102 () Regex!9170)

(assert (=> b!2957583 (= e!1862102 (regOne!18852 r!17423))))

(declare-fun lt!1033313 () Regex!9170)

(declare-fun c!484609 () Bool)

(declare-fun bm!195968 () Bool)

(declare-fun lt!1033314 () Regex!9170)

(assert (=> bm!195968 (= call!195975 (isEmptyLang!292 (ite c!484609 lt!1033314 lt!1033313)))))

(declare-fun b!2957584 () Bool)

(declare-fun e!1862101 () Regex!9170)

(assert (=> b!2957584 (= e!1862101 EmptyLang!9170)))

(declare-fun b!2957585 () Bool)

(declare-fun e!1862107 () Bool)

(declare-fun call!195971 () Bool)

(assert (=> b!2957585 (= e!1862107 call!195971)))

(declare-fun bm!195969 () Bool)

(assert (=> bm!195969 (= call!195971 call!195972)))

(declare-fun b!2957586 () Bool)

(assert (=> b!2957586 (= c!484609 (is-Union!9170 (regOne!18852 r!17423)))))

(declare-fun e!1862096 () Regex!9170)

(assert (=> b!2957586 (= e!1862095 e!1862096)))

(declare-fun b!2957587 () Bool)

(declare-fun lt!1033312 () Regex!9170)

(assert (=> b!2957587 (= e!1862097 (Union!9170 lt!1033312 lt!1033314))))

(declare-fun b!2957588 () Bool)

(assert (=> b!2957588 (= e!1862104 EmptyExpr!9170)))

(declare-fun b!2957589 () Bool)

(declare-fun e!1862103 () Regex!9170)

(assert (=> b!2957589 (= e!1862103 lt!1033317)))

(declare-fun b!2957590 () Bool)

(assert (=> b!2957590 (= e!1862097 lt!1033312)))

(declare-fun b!2957591 () Bool)

(declare-fun e!1862098 () Regex!9170)

(assert (=> b!2957591 (= e!1862098 lt!1033313)))

(declare-fun b!2957592 () Bool)

(declare-fun c!484601 () Bool)

(assert (=> b!2957592 (= c!484601 (isEmptyExpr!373 lt!1033313))))

(assert (=> b!2957592 (= e!1862099 e!1862103)))

(declare-fun b!2957593 () Bool)

(declare-fun e!1862106 () Bool)

(declare-fun lt!1033315 () Regex!9170)

(assert (=> b!2957593 (= e!1862106 (= (nullable!2926 lt!1033315) (nullable!2926 (regOne!18852 r!17423))))))

(declare-fun bm!195970 () Bool)

(assert (=> bm!195970 (= call!195973 (simplify!175 (ite c!484604 (reg!9499 (regOne!18852 r!17423)) (ite c!484609 (regOne!18853 (regOne!18852 r!17423)) (regTwo!18852 (regOne!18852 r!17423))))))))

(declare-fun b!2957594 () Bool)

(assert (=> b!2957594 (= e!1862096 e!1862099)))

(declare-fun call!195977 () Regex!9170)

(assert (=> b!2957594 (= lt!1033313 call!195977)))

(declare-fun call!195976 () Regex!9170)

(assert (=> b!2957594 (= lt!1033317 call!195976)))

(declare-fun res!1220267 () Bool)

(assert (=> b!2957594 (= res!1220267 call!195975)))

(assert (=> b!2957594 (=> res!1220267 e!1862107)))

(declare-fun c!484607 () Bool)

(assert (=> b!2957594 (= c!484607 e!1862107)))

(declare-fun b!2957595 () Bool)

(assert (=> b!2957595 (= e!1862098 (Concat!14491 lt!1033313 lt!1033317))))

(declare-fun bm!195971 () Bool)

(assert (=> bm!195971 (= call!195976 call!195973)))

(declare-fun b!2957596 () Bool)

(assert (=> b!2957596 (= e!1862103 e!1862098)))

(declare-fun c!484599 () Bool)

(assert (=> b!2957596 (= c!484599 call!195974)))

(declare-fun d!841757 () Bool)

(assert (=> d!841757 e!1862106))

(declare-fun res!1220266 () Bool)

(assert (=> d!841757 (=> (not res!1220266) (not e!1862106))))

(assert (=> d!841757 (= res!1220266 (validRegex!3903 lt!1033315))))

(assert (=> d!841757 (= lt!1033315 e!1862101)))

(declare-fun c!484600 () Bool)

(assert (=> d!841757 (= c!484600 (is-EmptyLang!9170 (regOne!18852 r!17423)))))

(assert (=> d!841757 (validRegex!3903 (regOne!18852 r!17423))))

(assert (=> d!841757 (= (simplify!175 (regOne!18852 r!17423)) lt!1033315)))

(declare-fun bm!195966 () Bool)

(assert (=> bm!195966 (= call!195977 (simplify!175 (ite c!484609 (regTwo!18853 (regOne!18852 r!17423)) (regOne!18852 (regOne!18852 r!17423)))))))

(declare-fun b!2957597 () Bool)

(declare-fun c!484602 () Bool)

(assert (=> b!2957597 (= c!484602 (is-EmptyExpr!9170 (regOne!18852 r!17423)))))

(assert (=> b!2957597 (= e!1862102 e!1862105)))

(declare-fun b!2957598 () Bool)

(assert (=> b!2957598 (= e!1862096 e!1862100)))

(assert (=> b!2957598 (= lt!1033312 call!195976)))

(assert (=> b!2957598 (= lt!1033314 call!195977)))

(declare-fun c!484608 () Bool)

(assert (=> b!2957598 (= c!484608 call!195971)))

(declare-fun b!2957599 () Bool)

(assert (=> b!2957599 (= e!1862100 lt!1033314)))

(declare-fun bm!195972 () Bool)

(assert (=> bm!195972 (= call!195972 (isEmptyLang!292 (ite c!484604 lt!1033316 (ite c!484609 lt!1033312 lt!1033317))))))

(declare-fun b!2957600 () Bool)

(assert (=> b!2957600 (= e!1862105 EmptyExpr!9170)))

(declare-fun b!2957601 () Bool)

(assert (=> b!2957601 (= e!1862108 call!195974)))

(declare-fun b!2957602 () Bool)

(assert (=> b!2957602 (= e!1862101 e!1862102)))

(declare-fun c!484603 () Bool)

(assert (=> b!2957602 (= c!484603 (is-ElementMatch!9170 (regOne!18852 r!17423)))))

(assert (= (and d!841757 c!484600) b!2957584))

(assert (= (and d!841757 (not c!484600)) b!2957602))

(assert (= (and b!2957602 c!484603) b!2957583))

(assert (= (and b!2957602 (not c!484603)) b!2957597))

(assert (= (and b!2957597 c!484602) b!2957600))

(assert (= (and b!2957597 (not c!484602)) b!2957578))

(assert (= (and b!2957578 c!484604) b!2957581))

(assert (= (and b!2957578 (not c!484604)) b!2957586))

(assert (= (and b!2957581 (not res!1220265)) b!2957601))

(assert (= (and b!2957581 c!484605) b!2957588))

(assert (= (and b!2957581 (not c!484605)) b!2957582))

(assert (= (and b!2957586 c!484609) b!2957598))

(assert (= (and b!2957586 (not c!484609)) b!2957594))

(assert (= (and b!2957598 c!484608) b!2957599))

(assert (= (and b!2957598 (not c!484608)) b!2957579))

(assert (= (and b!2957579 c!484606) b!2957590))

(assert (= (and b!2957579 (not c!484606)) b!2957587))

(assert (= (and b!2957594 (not res!1220267)) b!2957585))

(assert (= (and b!2957594 c!484607) b!2957580))

(assert (= (and b!2957594 (not c!484607)) b!2957592))

(assert (= (and b!2957592 c!484601) b!2957589))

(assert (= (and b!2957592 (not c!484601)) b!2957596))

(assert (= (and b!2957596 c!484599) b!2957591))

(assert (= (and b!2957596 (not c!484599)) b!2957595))

(assert (= (or b!2957598 b!2957594) bm!195971))

(assert (= (or b!2957598 b!2957594) bm!195966))

(assert (= (or b!2957579 b!2957594) bm!195968))

(assert (= (or b!2957598 b!2957585) bm!195969))

(assert (= (or b!2957601 b!2957596) bm!195967))

(assert (= (or b!2957581 bm!195971) bm!195970))

(assert (= (or b!2957581 bm!195969) bm!195972))

(assert (= (and d!841757 res!1220266) b!2957593))

(declare-fun m!3332691 () Bool)

(assert (=> bm!195970 m!3332691))

(declare-fun m!3332693 () Bool)

(assert (=> d!841757 m!3332693))

(declare-fun m!3332695 () Bool)

(assert (=> d!841757 m!3332695))

(declare-fun m!3332697 () Bool)

(assert (=> b!2957593 m!3332697))

(declare-fun m!3332699 () Bool)

(assert (=> b!2957593 m!3332699))

(declare-fun m!3332701 () Bool)

(assert (=> bm!195972 m!3332701))

(declare-fun m!3332703 () Bool)

(assert (=> bm!195968 m!3332703))

(declare-fun m!3332705 () Bool)

(assert (=> bm!195966 m!3332705))

(declare-fun m!3332707 () Bool)

(assert (=> b!2957592 m!3332707))

(declare-fun m!3332709 () Bool)

(assert (=> bm!195967 m!3332709))

(assert (=> b!2957298 d!841757))

(declare-fun bs!526193 () Bool)

(declare-fun b!2957669 () Bool)

(assert (= bs!526193 (and b!2957669 b!2957308)))

(declare-fun lambda!110181 () Int)

(assert (=> bs!526193 (not (= lambda!110181 lambda!110165))))

(assert (=> bs!526193 (not (= lambda!110181 lambda!110166))))

(assert (=> b!2957669 true))

(assert (=> b!2957669 true))

(declare-fun bs!526194 () Bool)

(declare-fun b!2957672 () Bool)

(assert (= bs!526194 (and b!2957672 b!2957308)))

(declare-fun lambda!110182 () Int)

(assert (=> bs!526194 (not (= lambda!110182 lambda!110165))))

(assert (=> bs!526194 (= (and (= (regOne!18852 r!17423) lt!1033260) (= (regTwo!18852 r!17423) lt!1033254)) (= lambda!110182 lambda!110166))))

(declare-fun bs!526195 () Bool)

(assert (= bs!526195 (and b!2957672 b!2957669)))

(assert (=> bs!526195 (not (= lambda!110182 lambda!110181))))

(assert (=> b!2957672 true))

(assert (=> b!2957672 true))

(declare-fun b!2957663 () Bool)

(declare-fun c!484629 () Bool)

(assert (=> b!2957663 (= c!484629 (is-ElementMatch!9170 r!17423))))

(declare-fun e!1862146 () Bool)

(declare-fun e!1862143 () Bool)

(assert (=> b!2957663 (= e!1862146 e!1862143)))

(declare-fun b!2957664 () Bool)

(declare-fun e!1862144 () Bool)

(declare-fun call!195982 () Bool)

(assert (=> b!2957664 (= e!1862144 call!195982)))

(declare-fun bm!195977 () Bool)

(assert (=> bm!195977 (= call!195982 (isEmpty!19191 s!11993))))

(declare-fun b!2957665 () Bool)

(declare-fun res!1220296 () Bool)

(declare-fun e!1862147 () Bool)

(assert (=> b!2957665 (=> res!1220296 e!1862147)))

(assert (=> b!2957665 (= res!1220296 call!195982)))

(declare-fun e!1862148 () Bool)

(assert (=> b!2957665 (= e!1862148 e!1862147)))

(declare-fun b!2957666 () Bool)

(declare-fun c!484626 () Bool)

(assert (=> b!2957666 (= c!484626 (is-Union!9170 r!17423))))

(declare-fun e!1862145 () Bool)

(assert (=> b!2957666 (= e!1862143 e!1862145)))

(declare-fun b!2957667 () Bool)

(assert (=> b!2957667 (= e!1862144 e!1862146)))

(declare-fun res!1220298 () Bool)

(assert (=> b!2957667 (= res!1220298 (not (is-EmptyLang!9170 r!17423)))))

(assert (=> b!2957667 (=> (not res!1220298) (not e!1862146))))

(declare-fun d!841759 () Bool)

(declare-fun c!484628 () Bool)

(assert (=> d!841759 (= c!484628 (is-EmptyExpr!9170 r!17423))))

(assert (=> d!841759 (= (matchRSpec!1307 r!17423 s!11993) e!1862144)))

(declare-fun b!2957668 () Bool)

(declare-fun e!1862149 () Bool)

(assert (=> b!2957668 (= e!1862149 (matchRSpec!1307 (regTwo!18853 r!17423) s!11993))))

(declare-fun call!195983 () Bool)

(assert (=> b!2957669 (= e!1862147 call!195983)))

(declare-fun b!2957670 () Bool)

(assert (=> b!2957670 (= e!1862145 e!1862148)))

(declare-fun c!484627 () Bool)

(assert (=> b!2957670 (= c!484627 (is-Star!9170 r!17423))))

(declare-fun bm!195978 () Bool)

(assert (=> bm!195978 (= call!195983 (Exists!1502 (ite c!484627 lambda!110181 lambda!110182)))))

(declare-fun b!2957671 () Bool)

(assert (=> b!2957671 (= e!1862143 (= s!11993 (Cons!34911 (c!484536 r!17423) Nil!34911)))))

(assert (=> b!2957672 (= e!1862148 call!195983)))

(declare-fun b!2957673 () Bool)

(assert (=> b!2957673 (= e!1862145 e!1862149)))

(declare-fun res!1220297 () Bool)

(assert (=> b!2957673 (= res!1220297 (matchRSpec!1307 (regOne!18853 r!17423) s!11993))))

(assert (=> b!2957673 (=> res!1220297 e!1862149)))

(assert (= (and d!841759 c!484628) b!2957664))

(assert (= (and d!841759 (not c!484628)) b!2957667))

(assert (= (and b!2957667 res!1220298) b!2957663))

(assert (= (and b!2957663 c!484629) b!2957671))

(assert (= (and b!2957663 (not c!484629)) b!2957666))

(assert (= (and b!2957666 c!484626) b!2957673))

(assert (= (and b!2957666 (not c!484626)) b!2957670))

(assert (= (and b!2957673 (not res!1220297)) b!2957668))

(assert (= (and b!2957670 c!484627) b!2957665))

(assert (= (and b!2957670 (not c!484627)) b!2957672))

(assert (= (and b!2957665 (not res!1220296)) b!2957669))

(assert (= (or b!2957669 b!2957672) bm!195978))

(assert (= (or b!2957664 b!2957665) bm!195977))

(assert (=> bm!195977 m!3332577))

(declare-fun m!3332711 () Bool)

(assert (=> b!2957668 m!3332711))

(declare-fun m!3332713 () Bool)

(assert (=> bm!195978 m!3332713))

(declare-fun m!3332715 () Bool)

(assert (=> b!2957673 m!3332715))

(assert (=> b!2957297 d!841759))

(declare-fun b!2957674 () Bool)

(declare-fun e!1862153 () Bool)

(declare-fun lt!1033318 () Bool)

(assert (=> b!2957674 (= e!1862153 (not lt!1033318))))

(declare-fun b!2957676 () Bool)

(declare-fun res!1220307 () Bool)

(declare-fun e!1862158 () Bool)

(assert (=> b!2957676 (=> res!1220307 e!1862158)))

(declare-fun e!1862157 () Bool)

(assert (=> b!2957676 (= res!1220307 e!1862157)))

(declare-fun res!1220306 () Bool)

(assert (=> b!2957676 (=> (not res!1220306) (not e!1862157))))

(assert (=> b!2957676 (= res!1220306 lt!1033318)))

(declare-fun b!2957677 () Bool)

(declare-fun e!1862152 () Bool)

(declare-fun e!1862156 () Bool)

(assert (=> b!2957677 (= e!1862152 e!1862156)))

(declare-fun res!1220305 () Bool)

(assert (=> b!2957677 (=> res!1220305 e!1862156)))

(declare-fun call!195984 () Bool)

(assert (=> b!2957677 (= res!1220305 call!195984)))

(declare-fun b!2957678 () Bool)

(assert (=> b!2957678 (= e!1862158 e!1862152)))

(declare-fun res!1220304 () Bool)

(assert (=> b!2957678 (=> (not res!1220304) (not e!1862152))))

(assert (=> b!2957678 (= res!1220304 (not lt!1033318))))

(declare-fun bm!195979 () Bool)

(assert (=> bm!195979 (= call!195984 (isEmpty!19191 s!11993))))

(declare-fun b!2957679 () Bool)

(declare-fun e!1862151 () Bool)

(assert (=> b!2957679 (= e!1862151 (nullable!2926 r!17423))))

(declare-fun b!2957680 () Bool)

(declare-fun e!1862150 () Bool)

(assert (=> b!2957680 (= e!1862150 (= lt!1033318 call!195984))))

(declare-fun b!2957675 () Bool)

(assert (=> b!2957675 (= e!1862151 (matchR!4052 (derivativeStep!2528 r!17423 (head!6587 s!11993)) (tail!4813 s!11993)))))

(declare-fun d!841761 () Bool)

(assert (=> d!841761 e!1862150))

(declare-fun c!484631 () Bool)

(assert (=> d!841761 (= c!484631 (is-EmptyExpr!9170 r!17423))))

(assert (=> d!841761 (= lt!1033318 e!1862151)))

(declare-fun c!484632 () Bool)

(assert (=> d!841761 (= c!484632 (isEmpty!19191 s!11993))))

(assert (=> d!841761 (validRegex!3903 r!17423)))

(assert (=> d!841761 (= (matchR!4052 r!17423 s!11993) lt!1033318)))

(declare-fun b!2957681 () Bool)

(declare-fun res!1220301 () Bool)

(assert (=> b!2957681 (=> (not res!1220301) (not e!1862157))))

(assert (=> b!2957681 (= res!1220301 (not call!195984))))

(declare-fun b!2957682 () Bool)

(assert (=> b!2957682 (= e!1862150 e!1862153)))

(declare-fun c!484630 () Bool)

(assert (=> b!2957682 (= c!484630 (is-EmptyLang!9170 r!17423))))

(declare-fun b!2957683 () Bool)

(assert (=> b!2957683 (= e!1862157 (= (head!6587 s!11993) (c!484536 r!17423)))))

(declare-fun b!2957684 () Bool)

(assert (=> b!2957684 (= e!1862156 (not (= (head!6587 s!11993) (c!484536 r!17423))))))

(declare-fun b!2957685 () Bool)

(declare-fun res!1220299 () Bool)

(assert (=> b!2957685 (=> res!1220299 e!1862158)))

(assert (=> b!2957685 (= res!1220299 (not (is-ElementMatch!9170 r!17423)))))

(assert (=> b!2957685 (= e!1862153 e!1862158)))

(declare-fun b!2957686 () Bool)

(declare-fun res!1220300 () Bool)

(assert (=> b!2957686 (=> res!1220300 e!1862156)))

(assert (=> b!2957686 (= res!1220300 (not (isEmpty!19191 (tail!4813 s!11993))))))

(declare-fun b!2957687 () Bool)

(declare-fun res!1220308 () Bool)

(assert (=> b!2957687 (=> (not res!1220308) (not e!1862157))))

(assert (=> b!2957687 (= res!1220308 (isEmpty!19191 (tail!4813 s!11993)))))

(assert (= (and d!841761 c!484632) b!2957679))

(assert (= (and d!841761 (not c!484632)) b!2957675))

(assert (= (and d!841761 c!484631) b!2957680))

(assert (= (and d!841761 (not c!484631)) b!2957682))

(assert (= (and b!2957682 c!484630) b!2957674))

(assert (= (and b!2957682 (not c!484630)) b!2957685))

(assert (= (and b!2957685 (not res!1220299)) b!2957676))

(assert (= (and b!2957676 res!1220306) b!2957681))

(assert (= (and b!2957681 res!1220301) b!2957687))

(assert (= (and b!2957687 res!1220308) b!2957683))

(assert (= (and b!2957676 (not res!1220307)) b!2957678))

(assert (= (and b!2957678 res!1220304) b!2957677))

(assert (= (and b!2957677 (not res!1220305)) b!2957686))

(assert (= (and b!2957686 (not res!1220300)) b!2957684))

(assert (= (or b!2957680 b!2957677 b!2957681) bm!195979))

(assert (=> b!2957684 m!3332625))

(assert (=> bm!195979 m!3332577))

(assert (=> d!841761 m!3332577))

(assert (=> d!841761 m!3332559))

(assert (=> b!2957683 m!3332625))

(assert (=> b!2957686 m!3332629))

(assert (=> b!2957686 m!3332629))

(assert (=> b!2957686 m!3332631))

(declare-fun m!3332717 () Bool)

(assert (=> b!2957679 m!3332717))

(assert (=> b!2957687 m!3332629))

(assert (=> b!2957687 m!3332629))

(assert (=> b!2957687 m!3332631))

(assert (=> b!2957675 m!3332625))

(assert (=> b!2957675 m!3332625))

(declare-fun m!3332719 () Bool)

(assert (=> b!2957675 m!3332719))

(assert (=> b!2957675 m!3332629))

(assert (=> b!2957675 m!3332719))

(assert (=> b!2957675 m!3332629))

(declare-fun m!3332721 () Bool)

(assert (=> b!2957675 m!3332721))

(assert (=> b!2957297 d!841761))

(declare-fun d!841763 () Bool)

(assert (=> d!841763 (= (matchR!4052 r!17423 s!11993) (matchRSpec!1307 r!17423 s!11993))))

(declare-fun lt!1033321 () Unit!48719)

(declare-fun choose!17497 (Regex!9170 List!35035) Unit!48719)

(assert (=> d!841763 (= lt!1033321 (choose!17497 r!17423 s!11993))))

(assert (=> d!841763 (validRegex!3903 r!17423)))

(assert (=> d!841763 (= (mainMatchTheorem!1307 r!17423 s!11993) lt!1033321)))

(declare-fun bs!526196 () Bool)

(assert (= bs!526196 d!841763))

(assert (=> bs!526196 m!3332565))

(assert (=> bs!526196 m!3332563))

(declare-fun m!3332723 () Bool)

(assert (=> bs!526196 m!3332723))

(assert (=> bs!526196 m!3332559))

(assert (=> b!2957297 d!841763))

(declare-fun d!841765 () Bool)

(declare-fun choose!17498 (Int) Bool)

(assert (=> d!841765 (= (Exists!1502 lambda!110166) (choose!17498 lambda!110166))))

(declare-fun bs!526197 () Bool)

(assert (= bs!526197 d!841765))

(declare-fun m!3332725 () Bool)

(assert (=> bs!526197 m!3332725))

(assert (=> b!2957308 d!841765))

(declare-fun bs!526198 () Bool)

(declare-fun d!841767 () Bool)

(assert (= bs!526198 (and d!841767 b!2957308)))

(declare-fun lambda!110189 () Int)

(assert (=> bs!526198 (= lambda!110189 lambda!110165)))

(assert (=> bs!526198 (not (= lambda!110189 lambda!110166))))

(declare-fun bs!526199 () Bool)

(assert (= bs!526199 (and d!841767 b!2957669)))

(assert (=> bs!526199 (not (= lambda!110189 lambda!110181))))

(declare-fun bs!526200 () Bool)

(assert (= bs!526200 (and d!841767 b!2957672)))

(assert (=> bs!526200 (not (= lambda!110189 lambda!110182))))

(assert (=> d!841767 true))

(assert (=> d!841767 true))

(assert (=> d!841767 true))

(declare-fun bs!526202 () Bool)

(assert (= bs!526202 d!841767))

(declare-fun lambda!110191 () Int)

(assert (=> bs!526202 (not (= lambda!110191 lambda!110189))))

(assert (=> bs!526200 (= (and (= lt!1033260 (regOne!18852 r!17423)) (= lt!1033254 (regTwo!18852 r!17423))) (= lambda!110191 lambda!110182))))

(assert (=> bs!526199 (not (= lambda!110191 lambda!110181))))

(assert (=> bs!526198 (= lambda!110191 lambda!110166)))

(assert (=> bs!526198 (not (= lambda!110191 lambda!110165))))

(assert (=> d!841767 true))

(assert (=> d!841767 true))

(assert (=> d!841767 true))

(assert (=> d!841767 (= (Exists!1502 lambda!110189) (Exists!1502 lambda!110191))))

(declare-fun lt!1033324 () Unit!48719)

(declare-fun choose!17499 (Regex!9170 Regex!9170 List!35035) Unit!48719)

(assert (=> d!841767 (= lt!1033324 (choose!17499 lt!1033260 lt!1033254 s!11993))))

(assert (=> d!841767 (validRegex!3903 lt!1033260)))

(assert (=> d!841767 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!523 lt!1033260 lt!1033254 s!11993) lt!1033324)))

(declare-fun m!3332727 () Bool)

(assert (=> bs!526202 m!3332727))

(declare-fun m!3332729 () Bool)

(assert (=> bs!526202 m!3332729))

(declare-fun m!3332731 () Bool)

(assert (=> bs!526202 m!3332731))

(assert (=> bs!526202 m!3332561))

(assert (=> b!2957308 d!841767))

(declare-fun d!841769 () Bool)

(assert (=> d!841769 (= (matchR!4052 lt!1033257 s!11993) (matchRSpec!1307 lt!1033257 s!11993))))

(declare-fun lt!1033325 () Unit!48719)

(assert (=> d!841769 (= lt!1033325 (choose!17497 lt!1033257 s!11993))))

(assert (=> d!841769 (validRegex!3903 lt!1033257)))

(assert (=> d!841769 (= (mainMatchTheorem!1307 lt!1033257 s!11993) lt!1033325)))

(declare-fun bs!526203 () Bool)

(assert (= bs!526203 d!841769))

(assert (=> bs!526203 m!3332575))

(assert (=> bs!526203 m!3332541))

(declare-fun m!3332733 () Bool)

(assert (=> bs!526203 m!3332733))

(assert (=> bs!526203 m!3332627))

(assert (=> b!2957308 d!841769))

(declare-fun bs!526206 () Bool)

(declare-fun d!841771 () Bool)

(assert (= bs!526206 (and d!841771 d!841767)))

(declare-fun lambda!110195 () Int)

(assert (=> bs!526206 (= lambda!110195 lambda!110189)))

(assert (=> bs!526206 (not (= lambda!110195 lambda!110191))))

(declare-fun bs!526207 () Bool)

(assert (= bs!526207 (and d!841771 b!2957672)))

(assert (=> bs!526207 (not (= lambda!110195 lambda!110182))))

(declare-fun bs!526208 () Bool)

(assert (= bs!526208 (and d!841771 b!2957669)))

(assert (=> bs!526208 (not (= lambda!110195 lambda!110181))))

(declare-fun bs!526209 () Bool)

(assert (= bs!526209 (and d!841771 b!2957308)))

(assert (=> bs!526209 (not (= lambda!110195 lambda!110166))))

(assert (=> bs!526209 (= lambda!110195 lambda!110165)))

(assert (=> d!841771 true))

(assert (=> d!841771 true))

(assert (=> d!841771 true))

(assert (=> d!841771 (= (isDefined!5212 (findConcatSeparation!1055 lt!1033260 lt!1033254 Nil!34911 s!11993 s!11993)) (Exists!1502 lambda!110195))))

(declare-fun lt!1033329 () Unit!48719)

(declare-fun choose!17500 (Regex!9170 Regex!9170 List!35035) Unit!48719)

(assert (=> d!841771 (= lt!1033329 (choose!17500 lt!1033260 lt!1033254 s!11993))))

(assert (=> d!841771 (validRegex!3903 lt!1033260)))

(assert (=> d!841771 (= (lemmaFindConcatSeparationEquivalentToExists!833 lt!1033260 lt!1033254 s!11993) lt!1033329)))

(declare-fun bs!526210 () Bool)

(assert (= bs!526210 d!841771))

(declare-fun m!3332747 () Bool)

(assert (=> bs!526210 m!3332747))

(assert (=> bs!526210 m!3332561))

(declare-fun m!3332749 () Bool)

(assert (=> bs!526210 m!3332749))

(assert (=> bs!526210 m!3332545))

(assert (=> bs!526210 m!3332547))

(assert (=> bs!526210 m!3332545))

(assert (=> b!2957308 d!841771))

(declare-fun d!841777 () Bool)

(assert (=> d!841777 (= (Exists!1502 lambda!110165) (choose!17498 lambda!110165))))

(declare-fun bs!526211 () Bool)

(assert (= bs!526211 d!841777))

(declare-fun m!3332751 () Bool)

(assert (=> bs!526211 m!3332751))

(assert (=> b!2957308 d!841777))

(declare-fun d!841779 () Bool)

(declare-fun isEmpty!19193 (Option!6661) Bool)

(assert (=> d!841779 (= (isDefined!5212 (findConcatSeparation!1055 lt!1033260 lt!1033254 Nil!34911 s!11993 s!11993)) (not (isEmpty!19193 (findConcatSeparation!1055 lt!1033260 lt!1033254 Nil!34911 s!11993 s!11993))))))

(declare-fun bs!526212 () Bool)

(assert (= bs!526212 d!841779))

(assert (=> bs!526212 m!3332545))

(declare-fun m!3332753 () Bool)

(assert (=> bs!526212 m!3332753))

(assert (=> b!2957308 d!841779))

(declare-fun b!2957766 () Bool)

(declare-fun lt!1033340 () Unit!48719)

(declare-fun lt!1033339 () Unit!48719)

(assert (=> b!2957766 (= lt!1033340 lt!1033339)))

(declare-fun ++!8337 (List!35035 List!35035) List!35035)

(assert (=> b!2957766 (= (++!8337 (++!8337 Nil!34911 (Cons!34911 (h!40331 s!11993) Nil!34911)) (t!234100 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!960 (List!35035 C!18526 List!35035 List!35035) Unit!48719)

(assert (=> b!2957766 (= lt!1033339 (lemmaMoveElementToOtherListKeepsConcatEq!960 Nil!34911 (h!40331 s!11993) (t!234100 s!11993) s!11993))))

(declare-fun e!1862206 () Option!6661)

(assert (=> b!2957766 (= e!1862206 (findConcatSeparation!1055 lt!1033260 lt!1033254 (++!8337 Nil!34911 (Cons!34911 (h!40331 s!11993) Nil!34911)) (t!234100 s!11993) s!11993))))

(declare-fun b!2957767 () Bool)

(declare-fun e!1862207 () Option!6661)

(assert (=> b!2957767 (= e!1862207 e!1862206)))

(declare-fun c!484649 () Bool)

(assert (=> b!2957767 (= c!484649 (is-Nil!34911 s!11993))))

(declare-fun b!2957768 () Bool)

(assert (=> b!2957768 (= e!1862207 (Some!6660 (tuple2!33859 Nil!34911 s!11993)))))

(declare-fun b!2957769 () Bool)

(declare-fun e!1862204 () Bool)

(declare-fun lt!1033341 () Option!6661)

(assert (=> b!2957769 (= e!1862204 (not (isDefined!5212 lt!1033341)))))

(declare-fun b!2957770 () Bool)

(declare-fun e!1862203 () Bool)

(assert (=> b!2957770 (= e!1862203 (matchR!4052 lt!1033254 s!11993))))

(declare-fun d!841781 () Bool)

(assert (=> d!841781 e!1862204))

(declare-fun res!1220358 () Bool)

(assert (=> d!841781 (=> res!1220358 e!1862204)))

(declare-fun e!1862205 () Bool)

(assert (=> d!841781 (= res!1220358 e!1862205)))

(declare-fun res!1220355 () Bool)

(assert (=> d!841781 (=> (not res!1220355) (not e!1862205))))

(assert (=> d!841781 (= res!1220355 (isDefined!5212 lt!1033341))))

(assert (=> d!841781 (= lt!1033341 e!1862207)))

(declare-fun c!484648 () Bool)

(assert (=> d!841781 (= c!484648 e!1862203)))

(declare-fun res!1220356 () Bool)

(assert (=> d!841781 (=> (not res!1220356) (not e!1862203))))

(assert (=> d!841781 (= res!1220356 (matchR!4052 lt!1033260 Nil!34911))))

(assert (=> d!841781 (validRegex!3903 lt!1033260)))

(assert (=> d!841781 (= (findConcatSeparation!1055 lt!1033260 lt!1033254 Nil!34911 s!11993 s!11993) lt!1033341)))

(declare-fun b!2957765 () Bool)

(declare-fun get!10723 (Option!6661) tuple2!33858)

(assert (=> b!2957765 (= e!1862205 (= (++!8337 (_1!20061 (get!10723 lt!1033341)) (_2!20061 (get!10723 lt!1033341))) s!11993))))

(declare-fun b!2957771 () Bool)

(declare-fun res!1220357 () Bool)

(assert (=> b!2957771 (=> (not res!1220357) (not e!1862205))))

(assert (=> b!2957771 (= res!1220357 (matchR!4052 lt!1033254 (_2!20061 (get!10723 lt!1033341))))))

(declare-fun b!2957772 () Bool)

(declare-fun res!1220354 () Bool)

(assert (=> b!2957772 (=> (not res!1220354) (not e!1862205))))

(assert (=> b!2957772 (= res!1220354 (matchR!4052 lt!1033260 (_1!20061 (get!10723 lt!1033341))))))

(declare-fun b!2957773 () Bool)

(assert (=> b!2957773 (= e!1862206 None!6660)))

(assert (= (and d!841781 res!1220356) b!2957770))

(assert (= (and d!841781 c!484648) b!2957768))

(assert (= (and d!841781 (not c!484648)) b!2957767))

(assert (= (and b!2957767 c!484649) b!2957773))

(assert (= (and b!2957767 (not c!484649)) b!2957766))

(assert (= (and d!841781 res!1220355) b!2957772))

(assert (= (and b!2957772 res!1220354) b!2957771))

(assert (= (and b!2957771 res!1220357) b!2957765))

(assert (= (and d!841781 (not res!1220358)) b!2957769))

(declare-fun m!3332757 () Bool)

(assert (=> b!2957771 m!3332757))

(declare-fun m!3332759 () Bool)

(assert (=> b!2957771 m!3332759))

(declare-fun m!3332761 () Bool)

(assert (=> b!2957770 m!3332761))

(assert (=> b!2957765 m!3332757))

(declare-fun m!3332763 () Bool)

(assert (=> b!2957765 m!3332763))

(declare-fun m!3332765 () Bool)

(assert (=> b!2957766 m!3332765))

(assert (=> b!2957766 m!3332765))

(declare-fun m!3332767 () Bool)

(assert (=> b!2957766 m!3332767))

(declare-fun m!3332769 () Bool)

(assert (=> b!2957766 m!3332769))

(assert (=> b!2957766 m!3332765))

(declare-fun m!3332771 () Bool)

(assert (=> b!2957766 m!3332771))

(declare-fun m!3332773 () Bool)

(assert (=> d!841781 m!3332773))

(declare-fun m!3332775 () Bool)

(assert (=> d!841781 m!3332775))

(assert (=> d!841781 m!3332561))

(assert (=> b!2957772 m!3332757))

(declare-fun m!3332777 () Bool)

(assert (=> b!2957772 m!3332777))

(assert (=> b!2957769 m!3332773))

(assert (=> b!2957308 d!841781))

(declare-fun bs!526214 () Bool)

(declare-fun b!2957780 () Bool)

(assert (= bs!526214 (and b!2957780 d!841767)))

(declare-fun lambda!110196 () Int)

(assert (=> bs!526214 (not (= lambda!110196 lambda!110189))))

(assert (=> bs!526214 (not (= lambda!110196 lambda!110191))))

(declare-fun bs!526215 () Bool)

(assert (= bs!526215 (and b!2957780 b!2957672)))

(assert (=> bs!526215 (not (= lambda!110196 lambda!110182))))

(declare-fun bs!526216 () Bool)

(assert (= bs!526216 (and b!2957780 b!2957669)))

(assert (=> bs!526216 (= (and (= (reg!9499 lt!1033257) (reg!9499 r!17423)) (= lt!1033257 r!17423)) (= lambda!110196 lambda!110181))))

(declare-fun bs!526217 () Bool)

(assert (= bs!526217 (and b!2957780 b!2957308)))

(assert (=> bs!526217 (not (= lambda!110196 lambda!110166))))

(declare-fun bs!526218 () Bool)

(assert (= bs!526218 (and b!2957780 d!841771)))

(assert (=> bs!526218 (not (= lambda!110196 lambda!110195))))

(assert (=> bs!526217 (not (= lambda!110196 lambda!110165))))

(assert (=> b!2957780 true))

(assert (=> b!2957780 true))

(declare-fun bs!526219 () Bool)

(declare-fun b!2957783 () Bool)

(assert (= bs!526219 (and b!2957783 d!841767)))

(declare-fun lambda!110197 () Int)

(assert (=> bs!526219 (not (= lambda!110197 lambda!110189))))

(assert (=> bs!526219 (= (and (= (regOne!18852 lt!1033257) lt!1033260) (= (regTwo!18852 lt!1033257) lt!1033254)) (= lambda!110197 lambda!110191))))

(declare-fun bs!526220 () Bool)

(assert (= bs!526220 (and b!2957783 b!2957669)))

(assert (=> bs!526220 (not (= lambda!110197 lambda!110181))))

(declare-fun bs!526221 () Bool)

(assert (= bs!526221 (and b!2957783 b!2957308)))

(assert (=> bs!526221 (= (and (= (regOne!18852 lt!1033257) lt!1033260) (= (regTwo!18852 lt!1033257) lt!1033254)) (= lambda!110197 lambda!110166))))

(declare-fun bs!526222 () Bool)

(assert (= bs!526222 (and b!2957783 d!841771)))

(assert (=> bs!526222 (not (= lambda!110197 lambda!110195))))

(assert (=> bs!526221 (not (= lambda!110197 lambda!110165))))

(declare-fun bs!526223 () Bool)

(assert (= bs!526223 (and b!2957783 b!2957672)))

(assert (=> bs!526223 (= (and (= (regOne!18852 lt!1033257) (regOne!18852 r!17423)) (= (regTwo!18852 lt!1033257) (regTwo!18852 r!17423))) (= lambda!110197 lambda!110182))))

(declare-fun bs!526224 () Bool)

(assert (= bs!526224 (and b!2957783 b!2957780)))

(assert (=> bs!526224 (not (= lambda!110197 lambda!110196))))

(assert (=> b!2957783 true))

(assert (=> b!2957783 true))

(declare-fun b!2957774 () Bool)

(declare-fun c!484653 () Bool)

(assert (=> b!2957774 (= c!484653 (is-ElementMatch!9170 lt!1033257))))

(declare-fun e!1862211 () Bool)

(declare-fun e!1862208 () Bool)

(assert (=> b!2957774 (= e!1862211 e!1862208)))

(declare-fun b!2957775 () Bool)

(declare-fun e!1862209 () Bool)

(declare-fun call!195998 () Bool)

(assert (=> b!2957775 (= e!1862209 call!195998)))

(declare-fun bm!195993 () Bool)

(assert (=> bm!195993 (= call!195998 (isEmpty!19191 s!11993))))

(declare-fun b!2957776 () Bool)

(declare-fun res!1220359 () Bool)

(declare-fun e!1862212 () Bool)

(assert (=> b!2957776 (=> res!1220359 e!1862212)))

(assert (=> b!2957776 (= res!1220359 call!195998)))

(declare-fun e!1862213 () Bool)

(assert (=> b!2957776 (= e!1862213 e!1862212)))

(declare-fun b!2957777 () Bool)

(declare-fun c!484650 () Bool)

(assert (=> b!2957777 (= c!484650 (is-Union!9170 lt!1033257))))

(declare-fun e!1862210 () Bool)

(assert (=> b!2957777 (= e!1862208 e!1862210)))

(declare-fun b!2957778 () Bool)

(assert (=> b!2957778 (= e!1862209 e!1862211)))

(declare-fun res!1220361 () Bool)

(assert (=> b!2957778 (= res!1220361 (not (is-EmptyLang!9170 lt!1033257)))))

(assert (=> b!2957778 (=> (not res!1220361) (not e!1862211))))

(declare-fun d!841789 () Bool)

(declare-fun c!484652 () Bool)

(assert (=> d!841789 (= c!484652 (is-EmptyExpr!9170 lt!1033257))))

(assert (=> d!841789 (= (matchRSpec!1307 lt!1033257 s!11993) e!1862209)))

(declare-fun b!2957779 () Bool)

(declare-fun e!1862214 () Bool)

(assert (=> b!2957779 (= e!1862214 (matchRSpec!1307 (regTwo!18853 lt!1033257) s!11993))))

(declare-fun call!195999 () Bool)

(assert (=> b!2957780 (= e!1862212 call!195999)))

(declare-fun b!2957781 () Bool)

(assert (=> b!2957781 (= e!1862210 e!1862213)))

(declare-fun c!484651 () Bool)

(assert (=> b!2957781 (= c!484651 (is-Star!9170 lt!1033257))))

(declare-fun bm!195994 () Bool)

(assert (=> bm!195994 (= call!195999 (Exists!1502 (ite c!484651 lambda!110196 lambda!110197)))))

(declare-fun b!2957782 () Bool)

(assert (=> b!2957782 (= e!1862208 (= s!11993 (Cons!34911 (c!484536 lt!1033257) Nil!34911)))))

(assert (=> b!2957783 (= e!1862213 call!195999)))

(declare-fun b!2957784 () Bool)

(assert (=> b!2957784 (= e!1862210 e!1862214)))

(declare-fun res!1220360 () Bool)

(assert (=> b!2957784 (= res!1220360 (matchRSpec!1307 (regOne!18853 lt!1033257) s!11993))))

(assert (=> b!2957784 (=> res!1220360 e!1862214)))

(assert (= (and d!841789 c!484652) b!2957775))

(assert (= (and d!841789 (not c!484652)) b!2957778))

(assert (= (and b!2957778 res!1220361) b!2957774))

(assert (= (and b!2957774 c!484653) b!2957782))

(assert (= (and b!2957774 (not c!484653)) b!2957777))

(assert (= (and b!2957777 c!484650) b!2957784))

(assert (= (and b!2957777 (not c!484650)) b!2957781))

(assert (= (and b!2957784 (not res!1220360)) b!2957779))

(assert (= (and b!2957781 c!484651) b!2957776))

(assert (= (and b!2957781 (not c!484651)) b!2957783))

(assert (= (and b!2957776 (not res!1220359)) b!2957780))

(assert (= (or b!2957780 b!2957783) bm!195994))

(assert (= (or b!2957775 b!2957776) bm!195993))

(assert (=> bm!195993 m!3332577))

(declare-fun m!3332779 () Bool)

(assert (=> b!2957779 m!3332779))

(declare-fun m!3332781 () Bool)

(assert (=> bm!195994 m!3332781))

(declare-fun m!3332783 () Bool)

(assert (=> b!2957784 m!3332783))

(assert (=> b!2957308 d!841789))

(declare-fun b!2957789 () Bool)

(declare-fun e!1862217 () Bool)

(declare-fun tp!944204 () Bool)

(assert (=> b!2957789 (= e!1862217 (and tp_is_empty!15903 tp!944204))))

(assert (=> b!2957302 (= tp!944178 e!1862217)))

(assert (= (and b!2957302 (is-Cons!34911 (t!234100 s!11993))) b!2957789))

(declare-fun b!2957801 () Bool)

(declare-fun e!1862220 () Bool)

(declare-fun tp!944215 () Bool)

(declare-fun tp!944216 () Bool)

(assert (=> b!2957801 (= e!1862220 (and tp!944215 tp!944216))))

(assert (=> b!2957301 (= tp!944179 e!1862220)))

(declare-fun b!2957802 () Bool)

(declare-fun tp!944217 () Bool)

(assert (=> b!2957802 (= e!1862220 tp!944217)))

(declare-fun b!2957803 () Bool)

(declare-fun tp!944219 () Bool)

(declare-fun tp!944218 () Bool)

(assert (=> b!2957803 (= e!1862220 (and tp!944219 tp!944218))))

(declare-fun b!2957800 () Bool)

(assert (=> b!2957800 (= e!1862220 tp_is_empty!15903)))

(assert (= (and b!2957301 (is-ElementMatch!9170 (reg!9499 r!17423))) b!2957800))

(assert (= (and b!2957301 (is-Concat!14491 (reg!9499 r!17423))) b!2957801))

(assert (= (and b!2957301 (is-Star!9170 (reg!9499 r!17423))) b!2957802))

(assert (= (and b!2957301 (is-Union!9170 (reg!9499 r!17423))) b!2957803))

(declare-fun b!2957814 () Bool)

(declare-fun e!1862228 () Bool)

(declare-fun tp!944220 () Bool)

(declare-fun tp!944221 () Bool)

(assert (=> b!2957814 (= e!1862228 (and tp!944220 tp!944221))))

(assert (=> b!2957306 (= tp!944183 e!1862228)))

(declare-fun b!2957815 () Bool)

(declare-fun tp!944222 () Bool)

(assert (=> b!2957815 (= e!1862228 tp!944222)))

(declare-fun b!2957816 () Bool)

(declare-fun tp!944224 () Bool)

(declare-fun tp!944223 () Bool)

(assert (=> b!2957816 (= e!1862228 (and tp!944224 tp!944223))))

(declare-fun b!2957813 () Bool)

(assert (=> b!2957813 (= e!1862228 tp_is_empty!15903)))

(assert (= (and b!2957306 (is-ElementMatch!9170 (regOne!18853 r!17423))) b!2957813))

(assert (= (and b!2957306 (is-Concat!14491 (regOne!18853 r!17423))) b!2957814))

(assert (= (and b!2957306 (is-Star!9170 (regOne!18853 r!17423))) b!2957815))

(assert (= (and b!2957306 (is-Union!9170 (regOne!18853 r!17423))) b!2957816))

(declare-fun b!2957818 () Bool)

(declare-fun e!1862229 () Bool)

(declare-fun tp!944225 () Bool)

(declare-fun tp!944226 () Bool)

(assert (=> b!2957818 (= e!1862229 (and tp!944225 tp!944226))))

(assert (=> b!2957306 (= tp!944182 e!1862229)))

(declare-fun b!2957819 () Bool)

(declare-fun tp!944227 () Bool)

(assert (=> b!2957819 (= e!1862229 tp!944227)))

(declare-fun b!2957820 () Bool)

(declare-fun tp!944229 () Bool)

(declare-fun tp!944228 () Bool)

(assert (=> b!2957820 (= e!1862229 (and tp!944229 tp!944228))))

(declare-fun b!2957817 () Bool)

(assert (=> b!2957817 (= e!1862229 tp_is_empty!15903)))

(assert (= (and b!2957306 (is-ElementMatch!9170 (regTwo!18853 r!17423))) b!2957817))

(assert (= (and b!2957306 (is-Concat!14491 (regTwo!18853 r!17423))) b!2957818))

(assert (= (and b!2957306 (is-Star!9170 (regTwo!18853 r!17423))) b!2957819))

(assert (= (and b!2957306 (is-Union!9170 (regTwo!18853 r!17423))) b!2957820))

(declare-fun b!2957822 () Bool)

(declare-fun e!1862230 () Bool)

(declare-fun tp!944230 () Bool)

(declare-fun tp!944231 () Bool)

(assert (=> b!2957822 (= e!1862230 (and tp!944230 tp!944231))))

(assert (=> b!2957294 (= tp!944181 e!1862230)))

(declare-fun b!2957823 () Bool)

(declare-fun tp!944232 () Bool)

(assert (=> b!2957823 (= e!1862230 tp!944232)))

(declare-fun b!2957824 () Bool)

(declare-fun tp!944234 () Bool)

(declare-fun tp!944233 () Bool)

(assert (=> b!2957824 (= e!1862230 (and tp!944234 tp!944233))))

(declare-fun b!2957821 () Bool)

(assert (=> b!2957821 (= e!1862230 tp_is_empty!15903)))

(assert (= (and b!2957294 (is-ElementMatch!9170 (regOne!18852 r!17423))) b!2957821))

(assert (= (and b!2957294 (is-Concat!14491 (regOne!18852 r!17423))) b!2957822))

(assert (= (and b!2957294 (is-Star!9170 (regOne!18852 r!17423))) b!2957823))

(assert (= (and b!2957294 (is-Union!9170 (regOne!18852 r!17423))) b!2957824))

(declare-fun b!2957826 () Bool)

(declare-fun e!1862231 () Bool)

(declare-fun tp!944235 () Bool)

(declare-fun tp!944236 () Bool)

(assert (=> b!2957826 (= e!1862231 (and tp!944235 tp!944236))))

(assert (=> b!2957294 (= tp!944180 e!1862231)))

(declare-fun b!2957827 () Bool)

(declare-fun tp!944237 () Bool)

(assert (=> b!2957827 (= e!1862231 tp!944237)))

(declare-fun b!2957828 () Bool)

(declare-fun tp!944239 () Bool)

(declare-fun tp!944238 () Bool)

(assert (=> b!2957828 (= e!1862231 (and tp!944239 tp!944238))))

(declare-fun b!2957825 () Bool)

(assert (=> b!2957825 (= e!1862231 tp_is_empty!15903)))

(assert (= (and b!2957294 (is-ElementMatch!9170 (regTwo!18852 r!17423))) b!2957825))

(assert (= (and b!2957294 (is-Concat!14491 (regTwo!18852 r!17423))) b!2957826))

(assert (= (and b!2957294 (is-Star!9170 (regTwo!18852 r!17423))) b!2957827))

(assert (= (and b!2957294 (is-Union!9170 (regTwo!18852 r!17423))) b!2957828))

(push 1)

(assert (not b!2957824))

(assert (not b!2957814))

(assert (not b!2957771))

(assert (not b!2957820))

(assert (not bm!195965))

(assert (not d!841767))

(assert (not b!2957593))

(assert (not b!2957415))

(assert (not b!2957822))

(assert (not d!841765))

(assert (not b!2957816))

(assert (not bm!195933))

(assert (not bm!195970))

(assert (not b!2957668))

(assert (not bm!195960))

(assert (not b!2957779))

(assert (not b!2957461))

(assert (not b!2957673))

(assert (not b!2957827))

(assert (not b!2957765))

(assert (not bm!195977))

(assert (not d!841751))

(assert (not b!2957412))

(assert (not bm!195972))

(assert (not b!2957770))

(assert (not bm!195967))

(assert (not d!841757))

(assert (not d!841781))

(assert (not b!2957803))

(assert (not bm!195926))

(assert (not b!2957826))

(assert (not b!2957683))

(assert (not bm!195966))

(assert (not b!2957766))

(assert (not bm!195940))

(assert (not b!2957684))

(assert (not b!2957411))

(assert (not d!841761))

(assert (not b!2957568))

(assert (not bm!195994))

(assert (not d!841777))

(assert (not bm!195979))

(assert (not bm!195968))

(assert (not bm!195963))

(assert (not b!2957686))

(assert (not d!841731))

(assert (not b!2957414))

(assert (not d!841771))

(assert (not b!2957448))

(assert (not b!2957687))

(assert (not b!2957403))

(assert (not bm!195936))

(assert (not b!2957675))

(assert (not b!2957769))

(assert (not b!2957439))

(assert (not d!841763))

(assert (not b!2957801))

(assert (not bm!195939))

(assert (not b!2957823))

(assert (not b!2957567))

(assert (not b!2957784))

(assert (not bm!195937))

(assert (not b!2957819))

(assert (not b!2957802))

(assert (not bm!195993))

(assert (not bm!195959))

(assert (not b!2957592))

(assert (not b!2957815))

(assert (not b!2957407))

(assert (not bm!195978))

(assert (not b!2957772))

(assert (not d!841769))

(assert (not b!2957679))

(assert (not bm!195934))

(assert (not b!2957789))

(assert (not d!841779))

(assert tp_is_empty!15903)

(assert (not b!2957818))

(assert (not bm!195961))

(assert (not b!2957828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

