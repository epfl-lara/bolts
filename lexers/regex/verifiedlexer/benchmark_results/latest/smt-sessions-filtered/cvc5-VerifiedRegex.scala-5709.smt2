; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283978 () Bool)

(assert start!283978)

(declare-fun b!2914351 () Bool)

(assert (=> b!2914351 true))

(assert (=> b!2914351 true))

(declare-fun lambda!108352 () Int)

(declare-fun lambda!108351 () Int)

(assert (=> b!2914351 (not (= lambda!108352 lambda!108351))))

(assert (=> b!2914351 true))

(assert (=> b!2914351 true))

(declare-fun res!1203153 () Bool)

(declare-fun e!1839202 () Bool)

(assert (=> start!283978 (=> (not res!1203153) (not e!1839202))))

(declare-datatypes ((C!18122 0))(
  ( (C!18123 (val!11097 Int)) )
))
(declare-datatypes ((Regex!8968 0))(
  ( (ElementMatch!8968 (c!475202 C!18122)) (Concat!14289 (regOne!18448 Regex!8968) (regTwo!18448 Regex!8968)) (EmptyExpr!8968) (Star!8968 (reg!9297 Regex!8968)) (EmptyLang!8968) (Union!8968 (regOne!18449 Regex!8968) (regTwo!18449 Regex!8968)) )
))
(declare-fun r!17423 () Regex!8968)

(declare-fun validRegex!3701 (Regex!8968) Bool)

(assert (=> start!283978 (= res!1203153 (validRegex!3701 r!17423))))

(assert (=> start!283978 e!1839202))

(declare-fun e!1839204 () Bool)

(assert (=> start!283978 e!1839204))

(declare-fun e!1839203 () Bool)

(assert (=> start!283978 e!1839203))

(declare-fun b!2914342 () Bool)

(declare-fun tp!936135 () Bool)

(assert (=> b!2914342 (= e!1839204 tp!936135)))

(declare-fun b!2914343 () Bool)

(declare-fun tp_is_empty!15499 () Bool)

(declare-fun tp!936137 () Bool)

(assert (=> b!2914343 (= e!1839203 (and tp_is_empty!15499 tp!936137))))

(declare-fun b!2914344 () Bool)

(declare-fun tp!936139 () Bool)

(declare-fun tp!936134 () Bool)

(assert (=> b!2914344 (= e!1839204 (and tp!936139 tp!936134))))

(declare-fun b!2914345 () Bool)

(declare-fun tp!936138 () Bool)

(declare-fun tp!936136 () Bool)

(assert (=> b!2914345 (= e!1839204 (and tp!936138 tp!936136))))

(declare-fun b!2914346 () Bool)

(declare-fun res!1203150 () Bool)

(declare-fun e!1839200 () Bool)

(assert (=> b!2914346 (=> res!1203150 e!1839200)))

(declare-datatypes ((List!34833 0))(
  ( (Nil!34709) (Cons!34709 (h!40129 C!18122) (t!233898 List!34833)) )
))
(declare-fun s!11993 () List!34833)

(declare-fun isEmpty!18958 (List!34833) Bool)

(assert (=> b!2914346 (= res!1203150 (isEmpty!18958 s!11993))))

(declare-fun b!2914347 () Bool)

(assert (=> b!2914347 (= e!1839204 tp_is_empty!15499)))

(declare-fun b!2914348 () Bool)

(declare-fun res!1203149 () Bool)

(declare-fun e!1839201 () Bool)

(assert (=> b!2914348 (=> res!1203149 e!1839201)))

(declare-datatypes ((tuple2!33674 0))(
  ( (tuple2!33675 (_1!19969 List!34833) (_2!19969 List!34833)) )
))
(declare-fun lt!1024380 () tuple2!33674)

(declare-fun matchR!3850 (Regex!8968 List!34833) Bool)

(assert (=> b!2914348 (= res!1203149 (not (matchR!3850 (regTwo!18448 r!17423) (_2!19969 lt!1024380))))))

(declare-fun b!2914349 () Bool)

(assert (=> b!2914349 (= e!1839201 (validRegex!3701 (regOne!18448 r!17423)))))

(declare-fun simplify!5 (Regex!8968) Regex!8968)

(assert (=> b!2914349 (matchR!3850 (simplify!5 (regTwo!18448 r!17423)) (_2!19969 lt!1024380))))

(declare-datatypes ((Unit!48275 0))(
  ( (Unit!48276) )
))
(declare-fun lt!1024379 () Unit!48275)

(declare-fun lemmaSimplifySound!3 (Regex!8968 List!34833) Unit!48275)

(assert (=> b!2914349 (= lt!1024379 (lemmaSimplifySound!3 (regTwo!18448 r!17423) (_2!19969 lt!1024380)))))

(assert (=> b!2914349 (matchR!3850 (simplify!5 (regOne!18448 r!17423)) (_1!19969 lt!1024380))))

(declare-fun lt!1024378 () Unit!48275)

(assert (=> b!2914349 (= lt!1024378 (lemmaSimplifySound!3 (regOne!18448 r!17423) (_1!19969 lt!1024380)))))

(declare-fun b!2914350 () Bool)

(assert (=> b!2914350 (= e!1839202 (not e!1839200))))

(declare-fun res!1203152 () Bool)

(assert (=> b!2914350 (=> res!1203152 e!1839200)))

(declare-fun lt!1024376 () Bool)

(assert (=> b!2914350 (= res!1203152 (or (not lt!1024376) (not (is-Concat!14289 r!17423))))))

(declare-fun matchRSpec!1105 (Regex!8968 List!34833) Bool)

(assert (=> b!2914350 (= lt!1024376 (matchRSpec!1105 r!17423 s!11993))))

(assert (=> b!2914350 (= lt!1024376 (matchR!3850 r!17423 s!11993))))

(declare-fun lt!1024377 () Unit!48275)

(declare-fun mainMatchTheorem!1105 (Regex!8968 List!34833) Unit!48275)

(assert (=> b!2914350 (= lt!1024377 (mainMatchTheorem!1105 r!17423 s!11993))))

(assert (=> b!2914351 (= e!1839200 e!1839201)))

(declare-fun res!1203151 () Bool)

(assert (=> b!2914351 (=> res!1203151 e!1839201)))

(assert (=> b!2914351 (= res!1203151 (not (matchR!3850 (regOne!18448 r!17423) (_1!19969 lt!1024380))))))

(declare-datatypes ((Option!6569 0))(
  ( (None!6568) (Some!6568 (v!34702 tuple2!33674)) )
))
(declare-fun lt!1024381 () Option!6569)

(declare-fun get!10554 (Option!6569) tuple2!33674)

(assert (=> b!2914351 (= lt!1024380 (get!10554 lt!1024381))))

(declare-fun Exists!1348 (Int) Bool)

(assert (=> b!2914351 (= (Exists!1348 lambda!108351) (Exists!1348 lambda!108352))))

(declare-fun lt!1024374 () Unit!48275)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!489 (Regex!8968 Regex!8968 List!34833) Unit!48275)

(assert (=> b!2914351 (= lt!1024374 (lemmaExistCutMatchRandMatchRSpecEquivalent!489 (regOne!18448 r!17423) (regTwo!18448 r!17423) s!11993))))

(declare-fun isDefined!5120 (Option!6569) Bool)

(assert (=> b!2914351 (= (isDefined!5120 lt!1024381) (Exists!1348 lambda!108351))))

(declare-fun findConcatSeparation!963 (Regex!8968 Regex!8968 List!34833 List!34833 List!34833) Option!6569)

(assert (=> b!2914351 (= lt!1024381 (findConcatSeparation!963 (regOne!18448 r!17423) (regTwo!18448 r!17423) Nil!34709 s!11993 s!11993))))

(declare-fun lt!1024375 () Unit!48275)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!745 (Regex!8968 Regex!8968 List!34833) Unit!48275)

(assert (=> b!2914351 (= lt!1024375 (lemmaFindConcatSeparationEquivalentToExists!745 (regOne!18448 r!17423) (regTwo!18448 r!17423) s!11993))))

(assert (= (and start!283978 res!1203153) b!2914350))

(assert (= (and b!2914350 (not res!1203152)) b!2914346))

(assert (= (and b!2914346 (not res!1203150)) b!2914351))

(assert (= (and b!2914351 (not res!1203151)) b!2914348))

(assert (= (and b!2914348 (not res!1203149)) b!2914349))

(assert (= (and start!283978 (is-ElementMatch!8968 r!17423)) b!2914347))

(assert (= (and start!283978 (is-Concat!14289 r!17423)) b!2914345))

(assert (= (and start!283978 (is-Star!8968 r!17423)) b!2914342))

(assert (= (and start!283978 (is-Union!8968 r!17423)) b!2914344))

(assert (= (and start!283978 (is-Cons!34709 s!11993)) b!2914343))

(declare-fun m!3313929 () Bool)

(assert (=> b!2914348 m!3313929))

(declare-fun m!3313931 () Bool)

(assert (=> b!2914351 m!3313931))

(declare-fun m!3313933 () Bool)

(assert (=> b!2914351 m!3313933))

(declare-fun m!3313935 () Bool)

(assert (=> b!2914351 m!3313935))

(declare-fun m!3313937 () Bool)

(assert (=> b!2914351 m!3313937))

(declare-fun m!3313939 () Bool)

(assert (=> b!2914351 m!3313939))

(declare-fun m!3313941 () Bool)

(assert (=> b!2914351 m!3313941))

(declare-fun m!3313943 () Bool)

(assert (=> b!2914351 m!3313943))

(assert (=> b!2914351 m!3313943))

(declare-fun m!3313945 () Bool)

(assert (=> b!2914351 m!3313945))

(declare-fun m!3313947 () Bool)

(assert (=> b!2914350 m!3313947))

(declare-fun m!3313949 () Bool)

(assert (=> b!2914350 m!3313949))

(declare-fun m!3313951 () Bool)

(assert (=> b!2914350 m!3313951))

(declare-fun m!3313953 () Bool)

(assert (=> b!2914346 m!3313953))

(declare-fun m!3313955 () Bool)

(assert (=> b!2914349 m!3313955))

(declare-fun m!3313957 () Bool)

(assert (=> b!2914349 m!3313957))

(declare-fun m!3313959 () Bool)

(assert (=> b!2914349 m!3313959))

(declare-fun m!3313961 () Bool)

(assert (=> b!2914349 m!3313961))

(declare-fun m!3313963 () Bool)

(assert (=> b!2914349 m!3313963))

(declare-fun m!3313965 () Bool)

(assert (=> b!2914349 m!3313965))

(assert (=> b!2914349 m!3313965))

(declare-fun m!3313967 () Bool)

(assert (=> b!2914349 m!3313967))

(assert (=> b!2914349 m!3313959))

(declare-fun m!3313969 () Bool)

(assert (=> start!283978 m!3313969))

(push 1)

(assert tp_is_empty!15499)

(assert (not start!283978))

(assert (not b!2914350))

(assert (not b!2914344))

(assert (not b!2914348))

(assert (not b!2914343))

(assert (not b!2914351))

(assert (not b!2914342))

(assert (not b!2914346))

(assert (not b!2914349))

(assert (not b!2914345))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!190309 () Bool)

(declare-fun c!475217 () Bool)

(declare-fun c!475216 () Bool)

(declare-fun bm!190302 () Bool)

(assert (=> bm!190302 (= call!190309 (validRegex!3701 (ite c!475216 (reg!9297 r!17423) (ite c!475217 (regOne!18449 r!17423) (regTwo!18448 r!17423)))))))

(declare-fun b!2914448 () Bool)

(declare-fun res!1203203 () Bool)

(declare-fun e!1839256 () Bool)

(assert (=> b!2914448 (=> (not res!1203203) (not e!1839256))))

(declare-fun call!190307 () Bool)

(assert (=> b!2914448 (= res!1203203 call!190307)))

(declare-fun e!1839257 () Bool)

(assert (=> b!2914448 (= e!1839257 e!1839256)))

(declare-fun d!837940 () Bool)

(declare-fun res!1203207 () Bool)

(declare-fun e!1839260 () Bool)

(assert (=> d!837940 (=> res!1203207 e!1839260)))

(assert (=> d!837940 (= res!1203207 (is-ElementMatch!8968 r!17423))))

(assert (=> d!837940 (= (validRegex!3701 r!17423) e!1839260)))

(declare-fun b!2914449 () Bool)

(declare-fun e!1839258 () Bool)

(assert (=> b!2914449 (= e!1839258 call!190307)))

(declare-fun b!2914450 () Bool)

(declare-fun e!1839259 () Bool)

(declare-fun e!1839261 () Bool)

(assert (=> b!2914450 (= e!1839259 e!1839261)))

(declare-fun res!1203206 () Bool)

(declare-fun nullable!2802 (Regex!8968) Bool)

(assert (=> b!2914450 (= res!1203206 (not (nullable!2802 (reg!9297 r!17423))))))

(assert (=> b!2914450 (=> (not res!1203206) (not e!1839261))))

(declare-fun b!2914451 () Bool)

(declare-fun e!1839262 () Bool)

(assert (=> b!2914451 (= e!1839262 e!1839258)))

(declare-fun res!1203205 () Bool)

(assert (=> b!2914451 (=> (not res!1203205) (not e!1839258))))

(declare-fun call!190308 () Bool)

(assert (=> b!2914451 (= res!1203205 call!190308)))

(declare-fun b!2914452 () Bool)

(assert (=> b!2914452 (= e!1839259 e!1839257)))

(assert (=> b!2914452 (= c!475217 (is-Union!8968 r!17423))))

(declare-fun b!2914453 () Bool)

(assert (=> b!2914453 (= e!1839256 call!190308)))

(declare-fun b!2914454 () Bool)

(assert (=> b!2914454 (= e!1839261 call!190309)))

(declare-fun bm!190303 () Bool)

(assert (=> bm!190303 (= call!190307 call!190309)))

(declare-fun bm!190304 () Bool)

(assert (=> bm!190304 (= call!190308 (validRegex!3701 (ite c!475217 (regTwo!18449 r!17423) (regOne!18448 r!17423))))))

(declare-fun b!2914455 () Bool)

(assert (=> b!2914455 (= e!1839260 e!1839259)))

(assert (=> b!2914455 (= c!475216 (is-Star!8968 r!17423))))

(declare-fun b!2914456 () Bool)

(declare-fun res!1203204 () Bool)

(assert (=> b!2914456 (=> res!1203204 e!1839262)))

(assert (=> b!2914456 (= res!1203204 (not (is-Concat!14289 r!17423)))))

(assert (=> b!2914456 (= e!1839257 e!1839262)))

(assert (= (and d!837940 (not res!1203207)) b!2914455))

(assert (= (and b!2914455 c!475216) b!2914450))

(assert (= (and b!2914455 (not c!475216)) b!2914452))

(assert (= (and b!2914450 res!1203206) b!2914454))

(assert (= (and b!2914452 c!475217) b!2914448))

(assert (= (and b!2914452 (not c!475217)) b!2914456))

(assert (= (and b!2914448 res!1203203) b!2914453))

(assert (= (and b!2914456 (not res!1203204)) b!2914451))

(assert (= (and b!2914451 res!1203205) b!2914449))

(assert (= (or b!2914448 b!2914449) bm!190303))

(assert (= (or b!2914453 b!2914451) bm!190304))

(assert (= (or b!2914454 bm!190303) bm!190302))

(declare-fun m!3314013 () Bool)

(assert (=> bm!190302 m!3314013))

(declare-fun m!3314015 () Bool)

(assert (=> b!2914450 m!3314015))

(declare-fun m!3314017 () Bool)

(assert (=> bm!190304 m!3314017))

(assert (=> start!283978 d!837940))

(declare-fun b!2914489 () Bool)

(declare-fun e!1839281 () Bool)

(declare-fun head!6475 (List!34833) C!18122)

(assert (=> b!2914489 (= e!1839281 (not (= (head!6475 (_2!19969 lt!1024380)) (c!475202 (regTwo!18448 r!17423)))))))

(declare-fun b!2914490 () Bool)

(declare-fun e!1839283 () Bool)

(assert (=> b!2914490 (= e!1839283 (nullable!2802 (regTwo!18448 r!17423)))))

(declare-fun b!2914491 () Bool)

(declare-fun e!1839279 () Bool)

(assert (=> b!2914491 (= e!1839279 (= (head!6475 (_2!19969 lt!1024380)) (c!475202 (regTwo!18448 r!17423))))))

(declare-fun b!2914492 () Bool)

(declare-fun e!1839282 () Bool)

(declare-fun e!1839285 () Bool)

(assert (=> b!2914492 (= e!1839282 e!1839285)))

(declare-fun res!1203231 () Bool)

(assert (=> b!2914492 (=> (not res!1203231) (not e!1839285))))

(declare-fun lt!1024408 () Bool)

(assert (=> b!2914492 (= res!1203231 (not lt!1024408))))

(declare-fun b!2914493 () Bool)

(declare-fun e!1839284 () Bool)

(declare-fun e!1839280 () Bool)

(assert (=> b!2914493 (= e!1839284 e!1839280)))

(declare-fun c!475225 () Bool)

(assert (=> b!2914493 (= c!475225 (is-EmptyLang!8968 (regTwo!18448 r!17423)))))

(declare-fun b!2914494 () Bool)

(declare-fun res!1203229 () Bool)

(assert (=> b!2914494 (=> res!1203229 e!1839282)))

(assert (=> b!2914494 (= res!1203229 (not (is-ElementMatch!8968 (regTwo!18448 r!17423))))))

(assert (=> b!2914494 (= e!1839280 e!1839282)))

(declare-fun b!2914495 () Bool)

(declare-fun call!190316 () Bool)

(assert (=> b!2914495 (= e!1839284 (= lt!1024408 call!190316))))

(declare-fun bm!190311 () Bool)

(assert (=> bm!190311 (= call!190316 (isEmpty!18958 (_2!19969 lt!1024380)))))

(declare-fun b!2914496 () Bool)

(declare-fun res!1203230 () Bool)

(assert (=> b!2914496 (=> (not res!1203230) (not e!1839279))))

(assert (=> b!2914496 (= res!1203230 (not call!190316))))

(declare-fun b!2914498 () Bool)

(declare-fun derivativeStep!2416 (Regex!8968 C!18122) Regex!8968)

(declare-fun tail!4701 (List!34833) List!34833)

(assert (=> b!2914498 (= e!1839283 (matchR!3850 (derivativeStep!2416 (regTwo!18448 r!17423) (head!6475 (_2!19969 lt!1024380))) (tail!4701 (_2!19969 lt!1024380))))))

(declare-fun b!2914499 () Bool)

(assert (=> b!2914499 (= e!1839280 (not lt!1024408))))

(declare-fun b!2914500 () Bool)

(declare-fun res!1203233 () Bool)

(assert (=> b!2914500 (=> res!1203233 e!1839282)))

(assert (=> b!2914500 (= res!1203233 e!1839279)))

(declare-fun res!1203232 () Bool)

(assert (=> b!2914500 (=> (not res!1203232) (not e!1839279))))

(assert (=> b!2914500 (= res!1203232 lt!1024408)))

(declare-fun b!2914497 () Bool)

(declare-fun res!1203234 () Bool)

(assert (=> b!2914497 (=> (not res!1203234) (not e!1839279))))

(assert (=> b!2914497 (= res!1203234 (isEmpty!18958 (tail!4701 (_2!19969 lt!1024380))))))

(declare-fun d!837942 () Bool)

(assert (=> d!837942 e!1839284))

(declare-fun c!475226 () Bool)

(assert (=> d!837942 (= c!475226 (is-EmptyExpr!8968 (regTwo!18448 r!17423)))))

(assert (=> d!837942 (= lt!1024408 e!1839283)))

(declare-fun c!475224 () Bool)

(assert (=> d!837942 (= c!475224 (isEmpty!18958 (_2!19969 lt!1024380)))))

(assert (=> d!837942 (validRegex!3701 (regTwo!18448 r!17423))))

(assert (=> d!837942 (= (matchR!3850 (regTwo!18448 r!17423) (_2!19969 lt!1024380)) lt!1024408)))

(declare-fun b!2914501 () Bool)

(declare-fun res!1203235 () Bool)

(assert (=> b!2914501 (=> res!1203235 e!1839281)))

(assert (=> b!2914501 (= res!1203235 (not (isEmpty!18958 (tail!4701 (_2!19969 lt!1024380)))))))

(declare-fun b!2914502 () Bool)

(assert (=> b!2914502 (= e!1839285 e!1839281)))

(declare-fun res!1203228 () Bool)

(assert (=> b!2914502 (=> res!1203228 e!1839281)))

(assert (=> b!2914502 (= res!1203228 call!190316)))

(assert (= (and d!837942 c!475224) b!2914490))

(assert (= (and d!837942 (not c!475224)) b!2914498))

(assert (= (and d!837942 c!475226) b!2914495))

(assert (= (and d!837942 (not c!475226)) b!2914493))

(assert (= (and b!2914493 c!475225) b!2914499))

(assert (= (and b!2914493 (not c!475225)) b!2914494))

(assert (= (and b!2914494 (not res!1203229)) b!2914500))

(assert (= (and b!2914500 res!1203232) b!2914496))

(assert (= (and b!2914496 res!1203230) b!2914497))

(assert (= (and b!2914497 res!1203234) b!2914491))

(assert (= (and b!2914500 (not res!1203233)) b!2914492))

(assert (= (and b!2914492 res!1203231) b!2914502))

(assert (= (and b!2914502 (not res!1203228)) b!2914501))

(assert (= (and b!2914501 (not res!1203235)) b!2914489))

(assert (= (or b!2914495 b!2914496 b!2914502) bm!190311))

(declare-fun m!3314019 () Bool)

(assert (=> b!2914490 m!3314019))

(declare-fun m!3314021 () Bool)

(assert (=> d!837942 m!3314021))

(declare-fun m!3314023 () Bool)

(assert (=> d!837942 m!3314023))

(declare-fun m!3314025 () Bool)

(assert (=> b!2914498 m!3314025))

(assert (=> b!2914498 m!3314025))

(declare-fun m!3314027 () Bool)

(assert (=> b!2914498 m!3314027))

(declare-fun m!3314029 () Bool)

(assert (=> b!2914498 m!3314029))

(assert (=> b!2914498 m!3314027))

(assert (=> b!2914498 m!3314029))

(declare-fun m!3314031 () Bool)

(assert (=> b!2914498 m!3314031))

(assert (=> bm!190311 m!3314021))

(assert (=> b!2914501 m!3314029))

(assert (=> b!2914501 m!3314029))

(declare-fun m!3314033 () Bool)

(assert (=> b!2914501 m!3314033))

(assert (=> b!2914489 m!3314025))

(assert (=> b!2914497 m!3314029))

(assert (=> b!2914497 m!3314029))

(assert (=> b!2914497 m!3314033))

(assert (=> b!2914491 m!3314025))

(assert (=> b!2914348 d!837942))

(declare-fun b!2914514 () Bool)

(declare-fun e!1839295 () Bool)

(assert (=> b!2914514 (= e!1839295 (not (= (head!6475 (_2!19969 lt!1024380)) (c!475202 (simplify!5 (regTwo!18448 r!17423))))))))

(declare-fun b!2914515 () Bool)

(declare-fun e!1839297 () Bool)

(assert (=> b!2914515 (= e!1839297 (nullable!2802 (simplify!5 (regTwo!18448 r!17423))))))

(declare-fun b!2914516 () Bool)

(declare-fun e!1839293 () Bool)

(assert (=> b!2914516 (= e!1839293 (= (head!6475 (_2!19969 lt!1024380)) (c!475202 (simplify!5 (regTwo!18448 r!17423)))))))

(declare-fun b!2914517 () Bool)

(declare-fun e!1839296 () Bool)

(declare-fun e!1839299 () Bool)

(assert (=> b!2914517 (= e!1839296 e!1839299)))

(declare-fun res!1203242 () Bool)

(assert (=> b!2914517 (=> (not res!1203242) (not e!1839299))))

(declare-fun lt!1024409 () Bool)

(assert (=> b!2914517 (= res!1203242 (not lt!1024409))))

(declare-fun b!2914518 () Bool)

(declare-fun e!1839298 () Bool)

(declare-fun e!1839294 () Bool)

(assert (=> b!2914518 (= e!1839298 e!1839294)))

(declare-fun c!475232 () Bool)

(assert (=> b!2914518 (= c!475232 (is-EmptyLang!8968 (simplify!5 (regTwo!18448 r!17423))))))

(declare-fun b!2914519 () Bool)

(declare-fun res!1203240 () Bool)

(assert (=> b!2914519 (=> res!1203240 e!1839296)))

(assert (=> b!2914519 (= res!1203240 (not (is-ElementMatch!8968 (simplify!5 (regTwo!18448 r!17423)))))))

(assert (=> b!2914519 (= e!1839294 e!1839296)))

(declare-fun b!2914520 () Bool)

(declare-fun call!190319 () Bool)

(assert (=> b!2914520 (= e!1839298 (= lt!1024409 call!190319))))

(declare-fun bm!190314 () Bool)

(assert (=> bm!190314 (= call!190319 (isEmpty!18958 (_2!19969 lt!1024380)))))

(declare-fun b!2914521 () Bool)

(declare-fun res!1203241 () Bool)

(assert (=> b!2914521 (=> (not res!1203241) (not e!1839293))))

(assert (=> b!2914521 (= res!1203241 (not call!190319))))

(declare-fun b!2914523 () Bool)

(assert (=> b!2914523 (= e!1839297 (matchR!3850 (derivativeStep!2416 (simplify!5 (regTwo!18448 r!17423)) (head!6475 (_2!19969 lt!1024380))) (tail!4701 (_2!19969 lt!1024380))))))

(declare-fun b!2914524 () Bool)

(assert (=> b!2914524 (= e!1839294 (not lt!1024409))))

(declare-fun b!2914525 () Bool)

(declare-fun res!1203244 () Bool)

(assert (=> b!2914525 (=> res!1203244 e!1839296)))

(assert (=> b!2914525 (= res!1203244 e!1839293)))

(declare-fun res!1203243 () Bool)

(assert (=> b!2914525 (=> (not res!1203243) (not e!1839293))))

(assert (=> b!2914525 (= res!1203243 lt!1024409)))

(declare-fun b!2914522 () Bool)

(declare-fun res!1203245 () Bool)

(assert (=> b!2914522 (=> (not res!1203245) (not e!1839293))))

(assert (=> b!2914522 (= res!1203245 (isEmpty!18958 (tail!4701 (_2!19969 lt!1024380))))))

(declare-fun d!837944 () Bool)

(assert (=> d!837944 e!1839298))

(declare-fun c!475233 () Bool)

(assert (=> d!837944 (= c!475233 (is-EmptyExpr!8968 (simplify!5 (regTwo!18448 r!17423))))))

(assert (=> d!837944 (= lt!1024409 e!1839297)))

(declare-fun c!475231 () Bool)

(assert (=> d!837944 (= c!475231 (isEmpty!18958 (_2!19969 lt!1024380)))))

(assert (=> d!837944 (validRegex!3701 (simplify!5 (regTwo!18448 r!17423)))))

(assert (=> d!837944 (= (matchR!3850 (simplify!5 (regTwo!18448 r!17423)) (_2!19969 lt!1024380)) lt!1024409)))

(declare-fun b!2914526 () Bool)

(declare-fun res!1203246 () Bool)

(assert (=> b!2914526 (=> res!1203246 e!1839295)))

(assert (=> b!2914526 (= res!1203246 (not (isEmpty!18958 (tail!4701 (_2!19969 lt!1024380)))))))

(declare-fun b!2914527 () Bool)

(assert (=> b!2914527 (= e!1839299 e!1839295)))

(declare-fun res!1203239 () Bool)

(assert (=> b!2914527 (=> res!1203239 e!1839295)))

(assert (=> b!2914527 (= res!1203239 call!190319)))

(assert (= (and d!837944 c!475231) b!2914515))

(assert (= (and d!837944 (not c!475231)) b!2914523))

(assert (= (and d!837944 c!475233) b!2914520))

(assert (= (and d!837944 (not c!475233)) b!2914518))

(assert (= (and b!2914518 c!475232) b!2914524))

(assert (= (and b!2914518 (not c!475232)) b!2914519))

(assert (= (and b!2914519 (not res!1203240)) b!2914525))

(assert (= (and b!2914525 res!1203243) b!2914521))

(assert (= (and b!2914521 res!1203241) b!2914522))

(assert (= (and b!2914522 res!1203245) b!2914516))

(assert (= (and b!2914525 (not res!1203244)) b!2914517))

(assert (= (and b!2914517 res!1203242) b!2914527))

(assert (= (and b!2914527 (not res!1203239)) b!2914526))

(assert (= (and b!2914526 (not res!1203246)) b!2914514))

(assert (= (or b!2914520 b!2914521 b!2914527) bm!190314))

(assert (=> b!2914515 m!3313959))

(declare-fun m!3314035 () Bool)

(assert (=> b!2914515 m!3314035))

(assert (=> d!837944 m!3314021))

(assert (=> d!837944 m!3313959))

(declare-fun m!3314037 () Bool)

(assert (=> d!837944 m!3314037))

(assert (=> b!2914523 m!3314025))

(assert (=> b!2914523 m!3313959))

(assert (=> b!2914523 m!3314025))

(declare-fun m!3314039 () Bool)

(assert (=> b!2914523 m!3314039))

(assert (=> b!2914523 m!3314029))

(assert (=> b!2914523 m!3314039))

(assert (=> b!2914523 m!3314029))

(declare-fun m!3314041 () Bool)

(assert (=> b!2914523 m!3314041))

(assert (=> bm!190314 m!3314021))

(assert (=> b!2914526 m!3314029))

(assert (=> b!2914526 m!3314029))

(assert (=> b!2914526 m!3314033))

(assert (=> b!2914514 m!3314025))

(assert (=> b!2914522 m!3314029))

(assert (=> b!2914522 m!3314029))

(assert (=> b!2914522 m!3314033))

(assert (=> b!2914516 m!3314025))

(assert (=> b!2914349 d!837944))

(declare-fun call!190322 () Bool)

(declare-fun c!475235 () Bool)

(declare-fun c!475234 () Bool)

(declare-fun bm!190315 () Bool)

(assert (=> bm!190315 (= call!190322 (validRegex!3701 (ite c!475234 (reg!9297 (regOne!18448 r!17423)) (ite c!475235 (regOne!18449 (regOne!18448 r!17423)) (regTwo!18448 (regOne!18448 r!17423))))))))

(declare-fun b!2914528 () Bool)

(declare-fun res!1203247 () Bool)

(declare-fun e!1839300 () Bool)

(assert (=> b!2914528 (=> (not res!1203247) (not e!1839300))))

(declare-fun call!190320 () Bool)

(assert (=> b!2914528 (= res!1203247 call!190320)))

(declare-fun e!1839301 () Bool)

(assert (=> b!2914528 (= e!1839301 e!1839300)))

(declare-fun d!837946 () Bool)

(declare-fun res!1203251 () Bool)

(declare-fun e!1839304 () Bool)

(assert (=> d!837946 (=> res!1203251 e!1839304)))

(assert (=> d!837946 (= res!1203251 (is-ElementMatch!8968 (regOne!18448 r!17423)))))

(assert (=> d!837946 (= (validRegex!3701 (regOne!18448 r!17423)) e!1839304)))

(declare-fun b!2914529 () Bool)

(declare-fun e!1839302 () Bool)

(assert (=> b!2914529 (= e!1839302 call!190320)))

(declare-fun b!2914530 () Bool)

(declare-fun e!1839303 () Bool)

(declare-fun e!1839305 () Bool)

(assert (=> b!2914530 (= e!1839303 e!1839305)))

(declare-fun res!1203250 () Bool)

(assert (=> b!2914530 (= res!1203250 (not (nullable!2802 (reg!9297 (regOne!18448 r!17423)))))))

(assert (=> b!2914530 (=> (not res!1203250) (not e!1839305))))

(declare-fun b!2914531 () Bool)

(declare-fun e!1839306 () Bool)

(assert (=> b!2914531 (= e!1839306 e!1839302)))

(declare-fun res!1203249 () Bool)

(assert (=> b!2914531 (=> (not res!1203249) (not e!1839302))))

(declare-fun call!190321 () Bool)

(assert (=> b!2914531 (= res!1203249 call!190321)))

(declare-fun b!2914532 () Bool)

(assert (=> b!2914532 (= e!1839303 e!1839301)))

(assert (=> b!2914532 (= c!475235 (is-Union!8968 (regOne!18448 r!17423)))))

(declare-fun b!2914533 () Bool)

(assert (=> b!2914533 (= e!1839300 call!190321)))

(declare-fun b!2914534 () Bool)

(assert (=> b!2914534 (= e!1839305 call!190322)))

(declare-fun bm!190316 () Bool)

(assert (=> bm!190316 (= call!190320 call!190322)))

(declare-fun bm!190317 () Bool)

(assert (=> bm!190317 (= call!190321 (validRegex!3701 (ite c!475235 (regTwo!18449 (regOne!18448 r!17423)) (regOne!18448 (regOne!18448 r!17423)))))))

(declare-fun b!2914535 () Bool)

(assert (=> b!2914535 (= e!1839304 e!1839303)))

(assert (=> b!2914535 (= c!475234 (is-Star!8968 (regOne!18448 r!17423)))))

(declare-fun b!2914536 () Bool)

(declare-fun res!1203248 () Bool)

(assert (=> b!2914536 (=> res!1203248 e!1839306)))

(assert (=> b!2914536 (= res!1203248 (not (is-Concat!14289 (regOne!18448 r!17423))))))

(assert (=> b!2914536 (= e!1839301 e!1839306)))

(assert (= (and d!837946 (not res!1203251)) b!2914535))

(assert (= (and b!2914535 c!475234) b!2914530))

(assert (= (and b!2914535 (not c!475234)) b!2914532))

(assert (= (and b!2914530 res!1203250) b!2914534))

(assert (= (and b!2914532 c!475235) b!2914528))

(assert (= (and b!2914532 (not c!475235)) b!2914536))

(assert (= (and b!2914528 res!1203247) b!2914533))

(assert (= (and b!2914536 (not res!1203248)) b!2914531))

(assert (= (and b!2914531 res!1203249) b!2914529))

(assert (= (or b!2914528 b!2914529) bm!190316))

(assert (= (or b!2914533 b!2914531) bm!190317))

(assert (= (or b!2914534 bm!190316) bm!190315))

(declare-fun m!3314043 () Bool)

(assert (=> bm!190315 m!3314043))

(declare-fun m!3314045 () Bool)

(assert (=> b!2914530 m!3314045))

(declare-fun m!3314047 () Bool)

(assert (=> bm!190317 m!3314047))

(assert (=> b!2914349 d!837946))

(declare-fun d!837948 () Bool)

(assert (=> d!837948 (= (matchR!3850 (regOne!18448 r!17423) (_1!19969 lt!1024380)) (matchR!3850 (simplify!5 (regOne!18448 r!17423)) (_1!19969 lt!1024380)))))

(declare-fun lt!1024412 () Unit!48275)

(declare-fun choose!17152 (Regex!8968 List!34833) Unit!48275)

(assert (=> d!837948 (= lt!1024412 (choose!17152 (regOne!18448 r!17423) (_1!19969 lt!1024380)))))

(assert (=> d!837948 (validRegex!3701 (regOne!18448 r!17423))))

(assert (=> d!837948 (= (lemmaSimplifySound!3 (regOne!18448 r!17423) (_1!19969 lt!1024380)) lt!1024412)))

(declare-fun bs!524732 () Bool)

(assert (= bs!524732 d!837948))

(declare-fun m!3314055 () Bool)

(assert (=> bs!524732 m!3314055))

(assert (=> bs!524732 m!3313965))

(assert (=> bs!524732 m!3313957))

(assert (=> bs!524732 m!3313945))

(assert (=> bs!524732 m!3313965))

(assert (=> bs!524732 m!3313967))

(assert (=> b!2914349 d!837948))

(declare-fun b!2914629 () Bool)

(declare-fun e!1839368 () Regex!8968)

(assert (=> b!2914629 (= e!1839368 EmptyExpr!8968)))

(declare-fun b!2914630 () Bool)

(declare-fun e!1839366 () Regex!8968)

(declare-fun e!1839362 () Regex!8968)

(assert (=> b!2914630 (= e!1839366 e!1839362)))

(declare-fun c!475274 () Bool)

(declare-fun lt!1024431 () Regex!8968)

(declare-fun isEmptyExpr!242 (Regex!8968) Bool)

(assert (=> b!2914630 (= c!475274 (isEmptyExpr!242 lt!1024431))))

(declare-fun b!2914631 () Bool)

(declare-fun e!1839364 () Regex!8968)

(declare-fun e!1839358 () Regex!8968)

(assert (=> b!2914631 (= e!1839364 e!1839358)))

(declare-fun c!475275 () Bool)

(assert (=> b!2914631 (= c!475275 (is-Star!8968 (regOne!18448 r!17423)))))

(declare-fun c!475268 () Bool)

(declare-fun lt!1024428 () Regex!8968)

(declare-fun lt!1024433 () Regex!8968)

(declare-fun call!190345 () Bool)

(declare-fun bm!190335 () Bool)

(declare-fun isEmptyLang!157 (Regex!8968) Bool)

(assert (=> bm!190335 (= call!190345 (isEmptyLang!157 (ite c!475275 lt!1024428 (ite c!475268 lt!1024433 lt!1024431))))))

(declare-fun b!2914632 () Bool)

(declare-fun c!475277 () Bool)

(declare-fun call!190346 () Bool)

(assert (=> b!2914632 (= c!475277 call!190346)))

(declare-fun e!1839367 () Regex!8968)

(assert (=> b!2914632 (= e!1839367 e!1839366)))

(declare-fun b!2914633 () Bool)

(assert (=> b!2914633 (= e!1839367 EmptyLang!8968)))

(declare-fun b!2914634 () Bool)

(declare-fun e!1839357 () Regex!8968)

(declare-fun lt!1024430 () Regex!8968)

(assert (=> b!2914634 (= e!1839357 (Union!8968 lt!1024430 lt!1024433))))

(declare-fun b!2914636 () Bool)

(declare-fun e!1839363 () Regex!8968)

(declare-fun e!1839369 () Regex!8968)

(assert (=> b!2914636 (= e!1839363 e!1839369)))

(declare-fun c!475267 () Bool)

(assert (=> b!2914636 (= c!475267 (is-ElementMatch!8968 (regOne!18448 r!17423)))))

(declare-fun b!2914637 () Bool)

(assert (=> b!2914637 (= e!1839366 lt!1024431)))

(declare-fun b!2914638 () Bool)

(assert (=> b!2914638 (= e!1839369 (regOne!18448 r!17423))))

(declare-fun b!2914639 () Bool)

(declare-fun e!1839356 () Regex!8968)

(assert (=> b!2914639 (= e!1839356 e!1839367)))

(declare-fun lt!1024429 () Regex!8968)

(declare-fun call!190340 () Regex!8968)

(assert (=> b!2914639 (= lt!1024429 call!190340)))

(declare-fun call!190343 () Regex!8968)

(assert (=> b!2914639 (= lt!1024431 call!190343)))

(declare-fun res!1203282 () Bool)

(declare-fun call!190344 () Bool)

(assert (=> b!2914639 (= res!1203282 call!190344)))

(declare-fun e!1839361 () Bool)

(assert (=> b!2914639 (=> res!1203282 e!1839361)))

(declare-fun c!475269 () Bool)

(assert (=> b!2914639 (= c!475269 e!1839361)))

(declare-fun bm!190336 () Bool)

(assert (=> bm!190336 (= call!190340 (simplify!5 (ite c!475268 (regTwo!18449 (regOne!18448 r!17423)) (regOne!18448 (regOne!18448 r!17423)))))))

(declare-fun b!2914640 () Bool)

(assert (=> b!2914640 (= e!1839363 EmptyLang!8968)))

(declare-fun b!2914641 () Bool)

(declare-fun c!475271 () Bool)

(assert (=> b!2914641 (= c!475271 (is-EmptyExpr!8968 (regOne!18448 r!17423)))))

(assert (=> b!2914641 (= e!1839369 e!1839364)))

(declare-fun b!2914642 () Bool)

(assert (=> b!2914642 (= e!1839364 EmptyExpr!8968)))

(declare-fun b!2914643 () Bool)

(assert (=> b!2914643 (= e!1839368 (Star!8968 lt!1024428))))

(declare-fun b!2914644 () Bool)

(assert (=> b!2914644 (= c!475268 (is-Union!8968 (regOne!18448 r!17423)))))

(assert (=> b!2914644 (= e!1839358 e!1839356)))

(declare-fun bm!190337 () Bool)

(declare-fun call!190341 () Regex!8968)

(assert (=> bm!190337 (= call!190341 (simplify!5 (ite c!475275 (reg!9297 (regOne!18448 r!17423)) (ite c!475268 (regOne!18449 (regOne!18448 r!17423)) (regTwo!18448 (regOne!18448 r!17423))))))))

(declare-fun b!2914645 () Bool)

(declare-fun call!190342 () Bool)

(assert (=> b!2914645 (= e!1839361 call!190342)))

(declare-fun b!2914646 () Bool)

(declare-fun c!475276 () Bool)

(assert (=> b!2914646 (= c!475276 call!190342)))

(declare-fun e!1839365 () Regex!8968)

(assert (=> b!2914646 (= e!1839365 e!1839357)))

(declare-fun b!2914647 () Bool)

(declare-fun c!475273 () Bool)

(declare-fun e!1839360 () Bool)

(assert (=> b!2914647 (= c!475273 e!1839360)))

(declare-fun res!1203283 () Bool)

(assert (=> b!2914647 (=> res!1203283 e!1839360)))

(assert (=> b!2914647 (= res!1203283 call!190345)))

(assert (=> b!2914647 (= lt!1024428 call!190341)))

(assert (=> b!2914647 (= e!1839358 e!1839368)))

(declare-fun b!2914648 () Bool)

(assert (=> b!2914648 (= e!1839360 call!190346)))

(declare-fun bm!190338 () Bool)

(assert (=> bm!190338 (= call!190346 (isEmptyExpr!242 (ite c!475275 lt!1024428 lt!1024429)))))

(declare-fun b!2914649 () Bool)

(declare-fun e!1839359 () Bool)

(declare-fun lt!1024432 () Regex!8968)

(assert (=> b!2914649 (= e!1839359 (= (nullable!2802 lt!1024432) (nullable!2802 (regOne!18448 r!17423))))))

(declare-fun b!2914650 () Bool)

(assert (=> b!2914650 (= e!1839365 lt!1024433)))

(declare-fun bm!190339 () Bool)

(assert (=> bm!190339 (= call!190344 (isEmptyLang!157 (ite c!475268 lt!1024430 lt!1024429)))))

(declare-fun b!2914651 () Bool)

(assert (=> b!2914651 (= e!1839362 lt!1024429)))

(declare-fun d!837952 () Bool)

(assert (=> d!837952 e!1839359))

(declare-fun res!1203284 () Bool)

(assert (=> d!837952 (=> (not res!1203284) (not e!1839359))))

(assert (=> d!837952 (= res!1203284 (validRegex!3701 lt!1024432))))

(assert (=> d!837952 (= lt!1024432 e!1839363)))

(declare-fun c!475270 () Bool)

(assert (=> d!837952 (= c!475270 (is-EmptyLang!8968 (regOne!18448 r!17423)))))

(assert (=> d!837952 (validRegex!3701 (regOne!18448 r!17423))))

(assert (=> d!837952 (= (simplify!5 (regOne!18448 r!17423)) lt!1024432)))

(declare-fun b!2914635 () Bool)

(assert (=> b!2914635 (= e!1839357 lt!1024430)))

(declare-fun bm!190340 () Bool)

(assert (=> bm!190340 (= call!190343 call!190341)))

(declare-fun b!2914652 () Bool)

(assert (=> b!2914652 (= e!1839356 e!1839365)))

(assert (=> b!2914652 (= lt!1024430 call!190343)))

(assert (=> b!2914652 (= lt!1024433 call!190340)))

(declare-fun c!475272 () Bool)

(assert (=> b!2914652 (= c!475272 call!190344)))

(declare-fun b!2914653 () Bool)

(assert (=> b!2914653 (= e!1839362 (Concat!14289 lt!1024429 lt!1024431))))

(declare-fun bm!190341 () Bool)

(assert (=> bm!190341 (= call!190342 call!190345)))

(assert (= (and d!837952 c!475270) b!2914640))

(assert (= (and d!837952 (not c!475270)) b!2914636))

(assert (= (and b!2914636 c!475267) b!2914638))

(assert (= (and b!2914636 (not c!475267)) b!2914641))

(assert (= (and b!2914641 c!475271) b!2914642))

(assert (= (and b!2914641 (not c!475271)) b!2914631))

(assert (= (and b!2914631 c!475275) b!2914647))

(assert (= (and b!2914631 (not c!475275)) b!2914644))

(assert (= (and b!2914647 (not res!1203283)) b!2914648))

(assert (= (and b!2914647 c!475273) b!2914629))

(assert (= (and b!2914647 (not c!475273)) b!2914643))

(assert (= (and b!2914644 c!475268) b!2914652))

(assert (= (and b!2914644 (not c!475268)) b!2914639))

(assert (= (and b!2914652 c!475272) b!2914650))

(assert (= (and b!2914652 (not c!475272)) b!2914646))

(assert (= (and b!2914646 c!475276) b!2914635))

(assert (= (and b!2914646 (not c!475276)) b!2914634))

(assert (= (and b!2914639 (not res!1203282)) b!2914645))

(assert (= (and b!2914639 c!475269) b!2914633))

(assert (= (and b!2914639 (not c!475269)) b!2914632))

(assert (= (and b!2914632 c!475277) b!2914637))

(assert (= (and b!2914632 (not c!475277)) b!2914630))

(assert (= (and b!2914630 c!475274) b!2914651))

(assert (= (and b!2914630 (not c!475274)) b!2914653))

(assert (= (or b!2914652 b!2914639) bm!190340))

(assert (= (or b!2914652 b!2914639) bm!190336))

(assert (= (or b!2914652 b!2914639) bm!190339))

(assert (= (or b!2914646 b!2914645) bm!190341))

(assert (= (or b!2914648 b!2914632) bm!190338))

(assert (= (or b!2914647 bm!190340) bm!190337))

(assert (= (or b!2914647 bm!190341) bm!190335))

(assert (= (and d!837952 res!1203284) b!2914649))

(declare-fun m!3314057 () Bool)

(assert (=> bm!190336 m!3314057))

(declare-fun m!3314059 () Bool)

(assert (=> b!2914630 m!3314059))

(declare-fun m!3314061 () Bool)

(assert (=> bm!190337 m!3314061))

(declare-fun m!3314065 () Bool)

(assert (=> bm!190335 m!3314065))

(declare-fun m!3314067 () Bool)

(assert (=> b!2914649 m!3314067))

(declare-fun m!3314069 () Bool)

(assert (=> b!2914649 m!3314069))

(declare-fun m!3314071 () Bool)

(assert (=> bm!190339 m!3314071))

(declare-fun m!3314075 () Bool)

(assert (=> bm!190338 m!3314075))

(declare-fun m!3314079 () Bool)

(assert (=> d!837952 m!3314079))

(assert (=> d!837952 m!3313957))

(assert (=> b!2914349 d!837952))

(declare-fun b!2914654 () Bool)

(declare-fun e!1839372 () Bool)

(assert (=> b!2914654 (= e!1839372 (not (= (head!6475 (_1!19969 lt!1024380)) (c!475202 (simplify!5 (regOne!18448 r!17423))))))))

(declare-fun b!2914655 () Bool)

(declare-fun e!1839374 () Bool)

(assert (=> b!2914655 (= e!1839374 (nullable!2802 (simplify!5 (regOne!18448 r!17423))))))

(declare-fun b!2914656 () Bool)

(declare-fun e!1839370 () Bool)

(assert (=> b!2914656 (= e!1839370 (= (head!6475 (_1!19969 lt!1024380)) (c!475202 (simplify!5 (regOne!18448 r!17423)))))))

(declare-fun b!2914657 () Bool)

(declare-fun e!1839373 () Bool)

(declare-fun e!1839376 () Bool)

(assert (=> b!2914657 (= e!1839373 e!1839376)))

(declare-fun res!1203288 () Bool)

(assert (=> b!2914657 (=> (not res!1203288) (not e!1839376))))

(declare-fun lt!1024434 () Bool)

(assert (=> b!2914657 (= res!1203288 (not lt!1024434))))

(declare-fun b!2914658 () Bool)

(declare-fun e!1839375 () Bool)

(declare-fun e!1839371 () Bool)

(assert (=> b!2914658 (= e!1839375 e!1839371)))

(declare-fun c!475279 () Bool)

(assert (=> b!2914658 (= c!475279 (is-EmptyLang!8968 (simplify!5 (regOne!18448 r!17423))))))

(declare-fun b!2914659 () Bool)

(declare-fun res!1203286 () Bool)

(assert (=> b!2914659 (=> res!1203286 e!1839373)))

(assert (=> b!2914659 (= res!1203286 (not (is-ElementMatch!8968 (simplify!5 (regOne!18448 r!17423)))))))

(assert (=> b!2914659 (= e!1839371 e!1839373)))

(declare-fun b!2914660 () Bool)

(declare-fun call!190347 () Bool)

(assert (=> b!2914660 (= e!1839375 (= lt!1024434 call!190347))))

(declare-fun bm!190342 () Bool)

(assert (=> bm!190342 (= call!190347 (isEmpty!18958 (_1!19969 lt!1024380)))))

(declare-fun b!2914661 () Bool)

(declare-fun res!1203287 () Bool)

(assert (=> b!2914661 (=> (not res!1203287) (not e!1839370))))

(assert (=> b!2914661 (= res!1203287 (not call!190347))))

(declare-fun b!2914663 () Bool)

(assert (=> b!2914663 (= e!1839374 (matchR!3850 (derivativeStep!2416 (simplify!5 (regOne!18448 r!17423)) (head!6475 (_1!19969 lt!1024380))) (tail!4701 (_1!19969 lt!1024380))))))

(declare-fun b!2914664 () Bool)

(assert (=> b!2914664 (= e!1839371 (not lt!1024434))))

(declare-fun b!2914665 () Bool)

(declare-fun res!1203290 () Bool)

(assert (=> b!2914665 (=> res!1203290 e!1839373)))

(assert (=> b!2914665 (= res!1203290 e!1839370)))

(declare-fun res!1203289 () Bool)

(assert (=> b!2914665 (=> (not res!1203289) (not e!1839370))))

(assert (=> b!2914665 (= res!1203289 lt!1024434)))

(declare-fun b!2914662 () Bool)

(declare-fun res!1203291 () Bool)

(assert (=> b!2914662 (=> (not res!1203291) (not e!1839370))))

(assert (=> b!2914662 (= res!1203291 (isEmpty!18958 (tail!4701 (_1!19969 lt!1024380))))))

(declare-fun d!837954 () Bool)

(assert (=> d!837954 e!1839375))

(declare-fun c!475280 () Bool)

(assert (=> d!837954 (= c!475280 (is-EmptyExpr!8968 (simplify!5 (regOne!18448 r!17423))))))

(assert (=> d!837954 (= lt!1024434 e!1839374)))

(declare-fun c!475278 () Bool)

(assert (=> d!837954 (= c!475278 (isEmpty!18958 (_1!19969 lt!1024380)))))

(assert (=> d!837954 (validRegex!3701 (simplify!5 (regOne!18448 r!17423)))))

(assert (=> d!837954 (= (matchR!3850 (simplify!5 (regOne!18448 r!17423)) (_1!19969 lt!1024380)) lt!1024434)))

(declare-fun b!2914666 () Bool)

(declare-fun res!1203292 () Bool)

(assert (=> b!2914666 (=> res!1203292 e!1839372)))

(assert (=> b!2914666 (= res!1203292 (not (isEmpty!18958 (tail!4701 (_1!19969 lt!1024380)))))))

(declare-fun b!2914667 () Bool)

(assert (=> b!2914667 (= e!1839376 e!1839372)))

(declare-fun res!1203285 () Bool)

(assert (=> b!2914667 (=> res!1203285 e!1839372)))

(assert (=> b!2914667 (= res!1203285 call!190347)))

(assert (= (and d!837954 c!475278) b!2914655))

(assert (= (and d!837954 (not c!475278)) b!2914663))

(assert (= (and d!837954 c!475280) b!2914660))

(assert (= (and d!837954 (not c!475280)) b!2914658))

(assert (= (and b!2914658 c!475279) b!2914664))

(assert (= (and b!2914658 (not c!475279)) b!2914659))

(assert (= (and b!2914659 (not res!1203286)) b!2914665))

(assert (= (and b!2914665 res!1203289) b!2914661))

(assert (= (and b!2914661 res!1203287) b!2914662))

(assert (= (and b!2914662 res!1203291) b!2914656))

(assert (= (and b!2914665 (not res!1203290)) b!2914657))

(assert (= (and b!2914657 res!1203288) b!2914667))

(assert (= (and b!2914667 (not res!1203285)) b!2914666))

(assert (= (and b!2914666 (not res!1203292)) b!2914654))

(assert (= (or b!2914660 b!2914661 b!2914667) bm!190342))

(assert (=> b!2914655 m!3313965))

(declare-fun m!3314087 () Bool)

(assert (=> b!2914655 m!3314087))

(declare-fun m!3314089 () Bool)

(assert (=> d!837954 m!3314089))

(assert (=> d!837954 m!3313965))

(declare-fun m!3314091 () Bool)

(assert (=> d!837954 m!3314091))

(declare-fun m!3314093 () Bool)

(assert (=> b!2914663 m!3314093))

(assert (=> b!2914663 m!3313965))

(assert (=> b!2914663 m!3314093))

(declare-fun m!3314095 () Bool)

(assert (=> b!2914663 m!3314095))

(declare-fun m!3314097 () Bool)

(assert (=> b!2914663 m!3314097))

(assert (=> b!2914663 m!3314095))

(assert (=> b!2914663 m!3314097))

(declare-fun m!3314099 () Bool)

(assert (=> b!2914663 m!3314099))

(assert (=> bm!190342 m!3314089))

(assert (=> b!2914666 m!3314097))

(assert (=> b!2914666 m!3314097))

(declare-fun m!3314101 () Bool)

(assert (=> b!2914666 m!3314101))

(assert (=> b!2914654 m!3314093))

(assert (=> b!2914662 m!3314097))

(assert (=> b!2914662 m!3314097))

(assert (=> b!2914662 m!3314101))

(assert (=> b!2914656 m!3314093))

(assert (=> b!2914349 d!837954))

(declare-fun d!837958 () Bool)

(assert (=> d!837958 (= (matchR!3850 (regTwo!18448 r!17423) (_2!19969 lt!1024380)) (matchR!3850 (simplify!5 (regTwo!18448 r!17423)) (_2!19969 lt!1024380)))))

(declare-fun lt!1024435 () Unit!48275)

(assert (=> d!837958 (= lt!1024435 (choose!17152 (regTwo!18448 r!17423) (_2!19969 lt!1024380)))))

(assert (=> d!837958 (validRegex!3701 (regTwo!18448 r!17423))))

(assert (=> d!837958 (= (lemmaSimplifySound!3 (regTwo!18448 r!17423) (_2!19969 lt!1024380)) lt!1024435)))

(declare-fun bs!524733 () Bool)

(assert (= bs!524733 d!837958))

(declare-fun m!3314103 () Bool)

(assert (=> bs!524733 m!3314103))

(assert (=> bs!524733 m!3313959))

(assert (=> bs!524733 m!3314023))

(assert (=> bs!524733 m!3313929))

(assert (=> bs!524733 m!3313959))

(assert (=> bs!524733 m!3313961))

(assert (=> b!2914349 d!837958))

(declare-fun b!2914668 () Bool)

(declare-fun e!1839389 () Regex!8968)

(assert (=> b!2914668 (= e!1839389 EmptyExpr!8968)))

(declare-fun b!2914669 () Bool)

(declare-fun e!1839387 () Regex!8968)

(declare-fun e!1839383 () Regex!8968)

(assert (=> b!2914669 (= e!1839387 e!1839383)))

(declare-fun c!475288 () Bool)

(declare-fun lt!1024439 () Regex!8968)

(assert (=> b!2914669 (= c!475288 (isEmptyExpr!242 lt!1024439))))

(declare-fun b!2914670 () Bool)

(declare-fun e!1839385 () Regex!8968)

(declare-fun e!1839379 () Regex!8968)

(assert (=> b!2914670 (= e!1839385 e!1839379)))

(declare-fun c!475289 () Bool)

(assert (=> b!2914670 (= c!475289 (is-Star!8968 (regTwo!18448 r!17423)))))

(declare-fun c!475282 () Bool)

(declare-fun lt!1024441 () Regex!8968)

(declare-fun lt!1024436 () Regex!8968)

(declare-fun call!190353 () Bool)

(declare-fun bm!190343 () Bool)

(assert (=> bm!190343 (= call!190353 (isEmptyLang!157 (ite c!475289 lt!1024436 (ite c!475282 lt!1024441 lt!1024439))))))

(declare-fun b!2914671 () Bool)

(declare-fun c!475291 () Bool)

(declare-fun call!190354 () Bool)

(assert (=> b!2914671 (= c!475291 call!190354)))

(declare-fun e!1839388 () Regex!8968)

(assert (=> b!2914671 (= e!1839388 e!1839387)))

(declare-fun b!2914672 () Bool)

(assert (=> b!2914672 (= e!1839388 EmptyLang!8968)))

(declare-fun b!2914673 () Bool)

(declare-fun e!1839378 () Regex!8968)

(declare-fun lt!1024438 () Regex!8968)

(assert (=> b!2914673 (= e!1839378 (Union!8968 lt!1024438 lt!1024441))))

(declare-fun b!2914675 () Bool)

(declare-fun e!1839384 () Regex!8968)

(declare-fun e!1839390 () Regex!8968)

(assert (=> b!2914675 (= e!1839384 e!1839390)))

(declare-fun c!475281 () Bool)

(assert (=> b!2914675 (= c!475281 (is-ElementMatch!8968 (regTwo!18448 r!17423)))))

(declare-fun b!2914676 () Bool)

(assert (=> b!2914676 (= e!1839387 lt!1024439)))

(declare-fun b!2914677 () Bool)

(assert (=> b!2914677 (= e!1839390 (regTwo!18448 r!17423))))

(declare-fun b!2914678 () Bool)

(declare-fun e!1839377 () Regex!8968)

(assert (=> b!2914678 (= e!1839377 e!1839388)))

(declare-fun lt!1024437 () Regex!8968)

(declare-fun call!190348 () Regex!8968)

(assert (=> b!2914678 (= lt!1024437 call!190348)))

(declare-fun call!190351 () Regex!8968)

(assert (=> b!2914678 (= lt!1024439 call!190351)))

(declare-fun res!1203293 () Bool)

(declare-fun call!190352 () Bool)

(assert (=> b!2914678 (= res!1203293 call!190352)))

(declare-fun e!1839382 () Bool)

(assert (=> b!2914678 (=> res!1203293 e!1839382)))

(declare-fun c!475283 () Bool)

(assert (=> b!2914678 (= c!475283 e!1839382)))

(declare-fun bm!190344 () Bool)

(assert (=> bm!190344 (= call!190348 (simplify!5 (ite c!475282 (regTwo!18449 (regTwo!18448 r!17423)) (regOne!18448 (regTwo!18448 r!17423)))))))

(declare-fun b!2914679 () Bool)

(assert (=> b!2914679 (= e!1839384 EmptyLang!8968)))

(declare-fun b!2914680 () Bool)

(declare-fun c!475285 () Bool)

(assert (=> b!2914680 (= c!475285 (is-EmptyExpr!8968 (regTwo!18448 r!17423)))))

(assert (=> b!2914680 (= e!1839390 e!1839385)))

(declare-fun b!2914681 () Bool)

(assert (=> b!2914681 (= e!1839385 EmptyExpr!8968)))

(declare-fun b!2914682 () Bool)

(assert (=> b!2914682 (= e!1839389 (Star!8968 lt!1024436))))

(declare-fun b!2914683 () Bool)

(assert (=> b!2914683 (= c!475282 (is-Union!8968 (regTwo!18448 r!17423)))))

(assert (=> b!2914683 (= e!1839379 e!1839377)))

(declare-fun call!190349 () Regex!8968)

(declare-fun bm!190345 () Bool)

(assert (=> bm!190345 (= call!190349 (simplify!5 (ite c!475289 (reg!9297 (regTwo!18448 r!17423)) (ite c!475282 (regOne!18449 (regTwo!18448 r!17423)) (regTwo!18448 (regTwo!18448 r!17423))))))))

(declare-fun b!2914684 () Bool)

(declare-fun call!190350 () Bool)

(assert (=> b!2914684 (= e!1839382 call!190350)))

(declare-fun b!2914685 () Bool)

(declare-fun c!475290 () Bool)

(assert (=> b!2914685 (= c!475290 call!190350)))

(declare-fun e!1839386 () Regex!8968)

(assert (=> b!2914685 (= e!1839386 e!1839378)))

(declare-fun b!2914686 () Bool)

(declare-fun c!475287 () Bool)

(declare-fun e!1839381 () Bool)

(assert (=> b!2914686 (= c!475287 e!1839381)))

(declare-fun res!1203294 () Bool)

(assert (=> b!2914686 (=> res!1203294 e!1839381)))

(assert (=> b!2914686 (= res!1203294 call!190353)))

(assert (=> b!2914686 (= lt!1024436 call!190349)))

(assert (=> b!2914686 (= e!1839379 e!1839389)))

(declare-fun b!2914687 () Bool)

(assert (=> b!2914687 (= e!1839381 call!190354)))

(declare-fun bm!190346 () Bool)

(assert (=> bm!190346 (= call!190354 (isEmptyExpr!242 (ite c!475289 lt!1024436 lt!1024437)))))

(declare-fun b!2914688 () Bool)

(declare-fun e!1839380 () Bool)

(declare-fun lt!1024440 () Regex!8968)

(assert (=> b!2914688 (= e!1839380 (= (nullable!2802 lt!1024440) (nullable!2802 (regTwo!18448 r!17423))))))

(declare-fun b!2914689 () Bool)

(assert (=> b!2914689 (= e!1839386 lt!1024441)))

(declare-fun bm!190347 () Bool)

(assert (=> bm!190347 (= call!190352 (isEmptyLang!157 (ite c!475282 lt!1024438 lt!1024437)))))

(declare-fun b!2914690 () Bool)

(assert (=> b!2914690 (= e!1839383 lt!1024437)))

(declare-fun d!837960 () Bool)

(assert (=> d!837960 e!1839380))

(declare-fun res!1203295 () Bool)

(assert (=> d!837960 (=> (not res!1203295) (not e!1839380))))

(assert (=> d!837960 (= res!1203295 (validRegex!3701 lt!1024440))))

(assert (=> d!837960 (= lt!1024440 e!1839384)))

(declare-fun c!475284 () Bool)

(assert (=> d!837960 (= c!475284 (is-EmptyLang!8968 (regTwo!18448 r!17423)))))

(assert (=> d!837960 (validRegex!3701 (regTwo!18448 r!17423))))

(assert (=> d!837960 (= (simplify!5 (regTwo!18448 r!17423)) lt!1024440)))

(declare-fun b!2914674 () Bool)

(assert (=> b!2914674 (= e!1839378 lt!1024438)))

(declare-fun bm!190348 () Bool)

(assert (=> bm!190348 (= call!190351 call!190349)))

(declare-fun b!2914691 () Bool)

(assert (=> b!2914691 (= e!1839377 e!1839386)))

(assert (=> b!2914691 (= lt!1024438 call!190351)))

(assert (=> b!2914691 (= lt!1024441 call!190348)))

(declare-fun c!475286 () Bool)

(assert (=> b!2914691 (= c!475286 call!190352)))

(declare-fun b!2914692 () Bool)

(assert (=> b!2914692 (= e!1839383 (Concat!14289 lt!1024437 lt!1024439))))

(declare-fun bm!190349 () Bool)

(assert (=> bm!190349 (= call!190350 call!190353)))

(assert (= (and d!837960 c!475284) b!2914679))

(assert (= (and d!837960 (not c!475284)) b!2914675))

(assert (= (and b!2914675 c!475281) b!2914677))

(assert (= (and b!2914675 (not c!475281)) b!2914680))

(assert (= (and b!2914680 c!475285) b!2914681))

(assert (= (and b!2914680 (not c!475285)) b!2914670))

(assert (= (and b!2914670 c!475289) b!2914686))

(assert (= (and b!2914670 (not c!475289)) b!2914683))

(assert (= (and b!2914686 (not res!1203294)) b!2914687))

(assert (= (and b!2914686 c!475287) b!2914668))

(assert (= (and b!2914686 (not c!475287)) b!2914682))

(assert (= (and b!2914683 c!475282) b!2914691))

(assert (= (and b!2914683 (not c!475282)) b!2914678))

(assert (= (and b!2914691 c!475286) b!2914689))

(assert (= (and b!2914691 (not c!475286)) b!2914685))

(assert (= (and b!2914685 c!475290) b!2914674))

(assert (= (and b!2914685 (not c!475290)) b!2914673))

(assert (= (and b!2914678 (not res!1203293)) b!2914684))

(assert (= (and b!2914678 c!475283) b!2914672))

(assert (= (and b!2914678 (not c!475283)) b!2914671))

(assert (= (and b!2914671 c!475291) b!2914676))

(assert (= (and b!2914671 (not c!475291)) b!2914669))

(assert (= (and b!2914669 c!475288) b!2914690))

(assert (= (and b!2914669 (not c!475288)) b!2914692))

(assert (= (or b!2914691 b!2914678) bm!190348))

(assert (= (or b!2914691 b!2914678) bm!190344))

(assert (= (or b!2914691 b!2914678) bm!190347))

(assert (= (or b!2914685 b!2914684) bm!190349))

(assert (= (or b!2914687 b!2914671) bm!190346))

(assert (= (or b!2914686 bm!190348) bm!190345))

(assert (= (or b!2914686 bm!190349) bm!190343))

(assert (= (and d!837960 res!1203295) b!2914688))

(declare-fun m!3314105 () Bool)

(assert (=> bm!190344 m!3314105))

(declare-fun m!3314107 () Bool)

(assert (=> b!2914669 m!3314107))

(declare-fun m!3314109 () Bool)

(assert (=> bm!190345 m!3314109))

(declare-fun m!3314111 () Bool)

(assert (=> bm!190343 m!3314111))

(declare-fun m!3314113 () Bool)

(assert (=> b!2914688 m!3314113))

(assert (=> b!2914688 m!3314019))

(declare-fun m!3314115 () Bool)

(assert (=> bm!190347 m!3314115))

(declare-fun m!3314117 () Bool)

(assert (=> bm!190346 m!3314117))

(declare-fun m!3314119 () Bool)

(assert (=> d!837960 m!3314119))

(assert (=> d!837960 m!3314023))

(assert (=> b!2914349 d!837960))

(declare-fun bs!524736 () Bool)

(declare-fun b!2914756 () Bool)

(assert (= bs!524736 (and b!2914756 b!2914351)))

(declare-fun lambda!108371 () Int)

(assert (=> bs!524736 (not (= lambda!108371 lambda!108351))))

(assert (=> bs!524736 (not (= lambda!108371 lambda!108352))))

(assert (=> b!2914756 true))

(assert (=> b!2914756 true))

(declare-fun bs!524737 () Bool)

(declare-fun b!2914759 () Bool)

(assert (= bs!524737 (and b!2914759 b!2914351)))

(declare-fun lambda!108372 () Int)

(assert (=> bs!524737 (not (= lambda!108372 lambda!108351))))

(assert (=> bs!524737 (= lambda!108372 lambda!108352)))

(declare-fun bs!524738 () Bool)

(assert (= bs!524738 (and b!2914759 b!2914756)))

(assert (=> bs!524738 (not (= lambda!108372 lambda!108371))))

(assert (=> b!2914759 true))

(assert (=> b!2914759 true))

(declare-fun b!2914753 () Bool)

(declare-fun e!1839429 () Bool)

(assert (=> b!2914753 (= e!1839429 (= s!11993 (Cons!34709 (c!475202 r!17423) Nil!34709)))))

(declare-fun b!2914754 () Bool)

(declare-fun res!1203328 () Bool)

(declare-fun e!1839426 () Bool)

(assert (=> b!2914754 (=> res!1203328 e!1839426)))

(declare-fun call!190361 () Bool)

(assert (=> b!2914754 (= res!1203328 call!190361)))

(declare-fun e!1839425 () Bool)

(assert (=> b!2914754 (= e!1839425 e!1839426)))

(declare-fun b!2914755 () Bool)

(declare-fun e!1839428 () Bool)

(declare-fun e!1839424 () Bool)

(assert (=> b!2914755 (= e!1839428 e!1839424)))

(declare-fun res!1203329 () Bool)

(assert (=> b!2914755 (= res!1203329 (not (is-EmptyLang!8968 r!17423)))))

(assert (=> b!2914755 (=> (not res!1203329) (not e!1839424))))

(declare-fun call!190362 () Bool)

(assert (=> b!2914756 (= e!1839426 call!190362)))

(declare-fun d!837962 () Bool)

(declare-fun c!475308 () Bool)

(assert (=> d!837962 (= c!475308 (is-EmptyExpr!8968 r!17423))))

(assert (=> d!837962 (= (matchRSpec!1105 r!17423 s!11993) e!1839428)))

(declare-fun b!2914757 () Bool)

(assert (=> b!2914757 (= e!1839428 call!190361)))

(declare-fun b!2914758 () Bool)

(declare-fun c!475306 () Bool)

(assert (=> b!2914758 (= c!475306 (is-Union!8968 r!17423))))

(declare-fun e!1839423 () Bool)

(assert (=> b!2914758 (= e!1839429 e!1839423)))

(assert (=> b!2914759 (= e!1839425 call!190362)))

(declare-fun b!2914760 () Bool)

(assert (=> b!2914760 (= e!1839423 e!1839425)))

(declare-fun c!475307 () Bool)

(assert (=> b!2914760 (= c!475307 (is-Star!8968 r!17423))))

(declare-fun b!2914761 () Bool)

(declare-fun e!1839427 () Bool)

(assert (=> b!2914761 (= e!1839427 (matchRSpec!1105 (regTwo!18449 r!17423) s!11993))))

(declare-fun bm!190356 () Bool)

(assert (=> bm!190356 (= call!190362 (Exists!1348 (ite c!475307 lambda!108371 lambda!108372)))))

(declare-fun b!2914762 () Bool)

(assert (=> b!2914762 (= e!1839423 e!1839427)))

(declare-fun res!1203330 () Bool)

(assert (=> b!2914762 (= res!1203330 (matchRSpec!1105 (regOne!18449 r!17423) s!11993))))

(assert (=> b!2914762 (=> res!1203330 e!1839427)))

(declare-fun bm!190357 () Bool)

(assert (=> bm!190357 (= call!190361 (isEmpty!18958 s!11993))))

(declare-fun b!2914763 () Bool)

(declare-fun c!475309 () Bool)

(assert (=> b!2914763 (= c!475309 (is-ElementMatch!8968 r!17423))))

(assert (=> b!2914763 (= e!1839424 e!1839429)))

(assert (= (and d!837962 c!475308) b!2914757))

(assert (= (and d!837962 (not c!475308)) b!2914755))

(assert (= (and b!2914755 res!1203329) b!2914763))

(assert (= (and b!2914763 c!475309) b!2914753))

(assert (= (and b!2914763 (not c!475309)) b!2914758))

(assert (= (and b!2914758 c!475306) b!2914762))

(assert (= (and b!2914758 (not c!475306)) b!2914760))

(assert (= (and b!2914762 (not res!1203330)) b!2914761))

(assert (= (and b!2914760 c!475307) b!2914754))

(assert (= (and b!2914760 (not c!475307)) b!2914759))

(assert (= (and b!2914754 (not res!1203328)) b!2914756))

(assert (= (or b!2914756 b!2914759) bm!190356))

(assert (= (or b!2914757 b!2914754) bm!190357))

(declare-fun m!3314157 () Bool)

(assert (=> b!2914761 m!3314157))

(declare-fun m!3314159 () Bool)

(assert (=> bm!190356 m!3314159))

(declare-fun m!3314161 () Bool)

(assert (=> b!2914762 m!3314161))

(assert (=> bm!190357 m!3313953))

(assert (=> b!2914350 d!837962))

(declare-fun b!2914764 () Bool)

(declare-fun e!1839432 () Bool)

(assert (=> b!2914764 (= e!1839432 (not (= (head!6475 s!11993) (c!475202 r!17423))))))

(declare-fun b!2914765 () Bool)

(declare-fun e!1839434 () Bool)

(assert (=> b!2914765 (= e!1839434 (nullable!2802 r!17423))))

(declare-fun b!2914766 () Bool)

(declare-fun e!1839430 () Bool)

(assert (=> b!2914766 (= e!1839430 (= (head!6475 s!11993) (c!475202 r!17423)))))

(declare-fun b!2914767 () Bool)

(declare-fun e!1839433 () Bool)

(declare-fun e!1839436 () Bool)

(assert (=> b!2914767 (= e!1839433 e!1839436)))

(declare-fun res!1203334 () Bool)

(assert (=> b!2914767 (=> (not res!1203334) (not e!1839436))))

(declare-fun lt!1024450 () Bool)

(assert (=> b!2914767 (= res!1203334 (not lt!1024450))))

(declare-fun b!2914768 () Bool)

(declare-fun e!1839435 () Bool)

(declare-fun e!1839431 () Bool)

(assert (=> b!2914768 (= e!1839435 e!1839431)))

(declare-fun c!475311 () Bool)

(assert (=> b!2914768 (= c!475311 (is-EmptyLang!8968 r!17423))))

(declare-fun b!2914769 () Bool)

(declare-fun res!1203332 () Bool)

(assert (=> b!2914769 (=> res!1203332 e!1839433)))

(assert (=> b!2914769 (= res!1203332 (not (is-ElementMatch!8968 r!17423)))))

(assert (=> b!2914769 (= e!1839431 e!1839433)))

(declare-fun b!2914770 () Bool)

(declare-fun call!190363 () Bool)

(assert (=> b!2914770 (= e!1839435 (= lt!1024450 call!190363))))

(declare-fun bm!190358 () Bool)

(assert (=> bm!190358 (= call!190363 (isEmpty!18958 s!11993))))

(declare-fun b!2914771 () Bool)

(declare-fun res!1203333 () Bool)

(assert (=> b!2914771 (=> (not res!1203333) (not e!1839430))))

(assert (=> b!2914771 (= res!1203333 (not call!190363))))

(declare-fun b!2914773 () Bool)

(assert (=> b!2914773 (= e!1839434 (matchR!3850 (derivativeStep!2416 r!17423 (head!6475 s!11993)) (tail!4701 s!11993)))))

(declare-fun b!2914774 () Bool)

(assert (=> b!2914774 (= e!1839431 (not lt!1024450))))

(declare-fun b!2914775 () Bool)

(declare-fun res!1203336 () Bool)

(assert (=> b!2914775 (=> res!1203336 e!1839433)))

(assert (=> b!2914775 (= res!1203336 e!1839430)))

(declare-fun res!1203335 () Bool)

(assert (=> b!2914775 (=> (not res!1203335) (not e!1839430))))

(assert (=> b!2914775 (= res!1203335 lt!1024450)))

(declare-fun b!2914772 () Bool)

(declare-fun res!1203337 () Bool)

(assert (=> b!2914772 (=> (not res!1203337) (not e!1839430))))

(assert (=> b!2914772 (= res!1203337 (isEmpty!18958 (tail!4701 s!11993)))))

(declare-fun d!837972 () Bool)

(assert (=> d!837972 e!1839435))

(declare-fun c!475312 () Bool)

(assert (=> d!837972 (= c!475312 (is-EmptyExpr!8968 r!17423))))

(assert (=> d!837972 (= lt!1024450 e!1839434)))

(declare-fun c!475310 () Bool)

(assert (=> d!837972 (= c!475310 (isEmpty!18958 s!11993))))

(assert (=> d!837972 (validRegex!3701 r!17423)))

(assert (=> d!837972 (= (matchR!3850 r!17423 s!11993) lt!1024450)))

(declare-fun b!2914776 () Bool)

(declare-fun res!1203338 () Bool)

(assert (=> b!2914776 (=> res!1203338 e!1839432)))

(assert (=> b!2914776 (= res!1203338 (not (isEmpty!18958 (tail!4701 s!11993))))))

(declare-fun b!2914777 () Bool)

(assert (=> b!2914777 (= e!1839436 e!1839432)))

(declare-fun res!1203331 () Bool)

(assert (=> b!2914777 (=> res!1203331 e!1839432)))

(assert (=> b!2914777 (= res!1203331 call!190363)))

(assert (= (and d!837972 c!475310) b!2914765))

(assert (= (and d!837972 (not c!475310)) b!2914773))

(assert (= (and d!837972 c!475312) b!2914770))

(assert (= (and d!837972 (not c!475312)) b!2914768))

(assert (= (and b!2914768 c!475311) b!2914774))

(assert (= (and b!2914768 (not c!475311)) b!2914769))

(assert (= (and b!2914769 (not res!1203332)) b!2914775))

(assert (= (and b!2914775 res!1203335) b!2914771))

(assert (= (and b!2914771 res!1203333) b!2914772))

(assert (= (and b!2914772 res!1203337) b!2914766))

(assert (= (and b!2914775 (not res!1203336)) b!2914767))

(assert (= (and b!2914767 res!1203334) b!2914777))

(assert (= (and b!2914777 (not res!1203331)) b!2914776))

(assert (= (and b!2914776 (not res!1203338)) b!2914764))

(assert (= (or b!2914770 b!2914771 b!2914777) bm!190358))

(declare-fun m!3314163 () Bool)

(assert (=> b!2914765 m!3314163))

(assert (=> d!837972 m!3313953))

(assert (=> d!837972 m!3313969))

(declare-fun m!3314165 () Bool)

(assert (=> b!2914773 m!3314165))

(assert (=> b!2914773 m!3314165))

(declare-fun m!3314167 () Bool)

(assert (=> b!2914773 m!3314167))

(declare-fun m!3314169 () Bool)

(assert (=> b!2914773 m!3314169))

(assert (=> b!2914773 m!3314167))

(assert (=> b!2914773 m!3314169))

(declare-fun m!3314171 () Bool)

(assert (=> b!2914773 m!3314171))

(assert (=> bm!190358 m!3313953))

(assert (=> b!2914776 m!3314169))

(assert (=> b!2914776 m!3314169))

(declare-fun m!3314173 () Bool)

(assert (=> b!2914776 m!3314173))

(assert (=> b!2914764 m!3314165))

(assert (=> b!2914772 m!3314169))

(assert (=> b!2914772 m!3314169))

(assert (=> b!2914772 m!3314173))

(assert (=> b!2914766 m!3314165))

(assert (=> b!2914350 d!837972))

(declare-fun d!837974 () Bool)

(assert (=> d!837974 (= (matchR!3850 r!17423 s!11993) (matchRSpec!1105 r!17423 s!11993))))

(declare-fun lt!1024453 () Unit!48275)

(declare-fun choose!17155 (Regex!8968 List!34833) Unit!48275)

(assert (=> d!837974 (= lt!1024453 (choose!17155 r!17423 s!11993))))

(assert (=> d!837974 (validRegex!3701 r!17423)))

(assert (=> d!837974 (= (mainMatchTheorem!1105 r!17423 s!11993) lt!1024453)))

(declare-fun bs!524739 () Bool)

(assert (= bs!524739 d!837974))

(assert (=> bs!524739 m!3313949))

(assert (=> bs!524739 m!3313947))

(declare-fun m!3314175 () Bool)

(assert (=> bs!524739 m!3314175))

(assert (=> bs!524739 m!3313969))

(assert (=> b!2914350 d!837974))

(declare-fun d!837976 () Bool)

(declare-fun choose!17156 (Int) Bool)

(assert (=> d!837976 (= (Exists!1348 lambda!108351) (choose!17156 lambda!108351))))

(declare-fun bs!524740 () Bool)

(assert (= bs!524740 d!837976))

(declare-fun m!3314177 () Bool)

(assert (=> bs!524740 m!3314177))

(assert (=> b!2914351 d!837976))

(declare-fun d!837978 () Bool)

(declare-fun isEmpty!18960 (Option!6569) Bool)

(assert (=> d!837978 (= (isDefined!5120 lt!1024381) (not (isEmpty!18960 lt!1024381)))))

(declare-fun bs!524741 () Bool)

(assert (= bs!524741 d!837978))

(declare-fun m!3314179 () Bool)

(assert (=> bs!524741 m!3314179))

(assert (=> b!2914351 d!837978))

(declare-fun bs!524742 () Bool)

(declare-fun d!837980 () Bool)

(assert (= bs!524742 (and d!837980 b!2914351)))

(declare-fun lambda!108377 () Int)

(assert (=> bs!524742 (= lambda!108377 lambda!108351)))

(assert (=> bs!524742 (not (= lambda!108377 lambda!108352))))

(declare-fun bs!524743 () Bool)

(assert (= bs!524743 (and d!837980 b!2914756)))

(assert (=> bs!524743 (not (= lambda!108377 lambda!108371))))

(declare-fun bs!524744 () Bool)

(assert (= bs!524744 (and d!837980 b!2914759)))

(assert (=> bs!524744 (not (= lambda!108377 lambda!108372))))

(assert (=> d!837980 true))

(assert (=> d!837980 true))

(assert (=> d!837980 true))

(declare-fun lambda!108378 () Int)

(assert (=> bs!524742 (= lambda!108378 lambda!108352)))

(assert (=> bs!524742 (not (= lambda!108378 lambda!108351))))

(assert (=> bs!524744 (= lambda!108378 lambda!108372)))

(declare-fun bs!524745 () Bool)

(assert (= bs!524745 d!837980))

(assert (=> bs!524745 (not (= lambda!108378 lambda!108377))))

(assert (=> bs!524743 (not (= lambda!108378 lambda!108371))))

(assert (=> d!837980 true))

(assert (=> d!837980 true))

(assert (=> d!837980 true))

(assert (=> d!837980 (= (Exists!1348 lambda!108377) (Exists!1348 lambda!108378))))

(declare-fun lt!1024468 () Unit!48275)

(declare-fun choose!17157 (Regex!8968 Regex!8968 List!34833) Unit!48275)

(assert (=> d!837980 (= lt!1024468 (choose!17157 (regOne!18448 r!17423) (regTwo!18448 r!17423) s!11993))))

(assert (=> d!837980 (validRegex!3701 (regOne!18448 r!17423))))

(assert (=> d!837980 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!489 (regOne!18448 r!17423) (regTwo!18448 r!17423) s!11993) lt!1024468)))

(declare-fun m!3314181 () Bool)

(assert (=> bs!524745 m!3314181))

(declare-fun m!3314183 () Bool)

(assert (=> bs!524745 m!3314183))

(declare-fun m!3314185 () Bool)

(assert (=> bs!524745 m!3314185))

(assert (=> bs!524745 m!3313957))

(assert (=> b!2914351 d!837980))

(declare-fun d!837982 () Bool)

(assert (=> d!837982 (= (Exists!1348 lambda!108352) (choose!17156 lambda!108352))))

(declare-fun bs!524746 () Bool)

(assert (= bs!524746 d!837982))

(declare-fun m!3314187 () Bool)

(assert (=> bs!524746 m!3314187))

(assert (=> b!2914351 d!837982))

(declare-fun b!2914834 () Bool)

(declare-fun e!1839469 () Bool)

(assert (=> b!2914834 (= e!1839469 (not (= (head!6475 (_1!19969 lt!1024380)) (c!475202 (regOne!18448 r!17423)))))))

(declare-fun b!2914835 () Bool)

(declare-fun e!1839471 () Bool)

(assert (=> b!2914835 (= e!1839471 (nullable!2802 (regOne!18448 r!17423)))))

(declare-fun b!2914836 () Bool)

(declare-fun e!1839467 () Bool)

(assert (=> b!2914836 (= e!1839467 (= (head!6475 (_1!19969 lt!1024380)) (c!475202 (regOne!18448 r!17423))))))

(declare-fun b!2914837 () Bool)

(declare-fun e!1839470 () Bool)

(declare-fun e!1839473 () Bool)

(assert (=> b!2914837 (= e!1839470 e!1839473)))

(declare-fun res!1203354 () Bool)

(assert (=> b!2914837 (=> (not res!1203354) (not e!1839473))))

(declare-fun lt!1024469 () Bool)

(assert (=> b!2914837 (= res!1203354 (not lt!1024469))))

(declare-fun b!2914838 () Bool)

(declare-fun e!1839472 () Bool)

(declare-fun e!1839468 () Bool)

(assert (=> b!2914838 (= e!1839472 e!1839468)))

(declare-fun c!475336 () Bool)

(assert (=> b!2914838 (= c!475336 (is-EmptyLang!8968 (regOne!18448 r!17423)))))

(declare-fun b!2914839 () Bool)

(declare-fun res!1203352 () Bool)

(assert (=> b!2914839 (=> res!1203352 e!1839470)))

(assert (=> b!2914839 (= res!1203352 (not (is-ElementMatch!8968 (regOne!18448 r!17423))))))

(assert (=> b!2914839 (= e!1839468 e!1839470)))

(declare-fun b!2914840 () Bool)

(declare-fun call!190372 () Bool)

(assert (=> b!2914840 (= e!1839472 (= lt!1024469 call!190372))))

(declare-fun bm!190367 () Bool)

(assert (=> bm!190367 (= call!190372 (isEmpty!18958 (_1!19969 lt!1024380)))))

(declare-fun b!2914841 () Bool)

(declare-fun res!1203353 () Bool)

(assert (=> b!2914841 (=> (not res!1203353) (not e!1839467))))

(assert (=> b!2914841 (= res!1203353 (not call!190372))))

(declare-fun b!2914843 () Bool)

(assert (=> b!2914843 (= e!1839471 (matchR!3850 (derivativeStep!2416 (regOne!18448 r!17423) (head!6475 (_1!19969 lt!1024380))) (tail!4701 (_1!19969 lt!1024380))))))

(declare-fun b!2914844 () Bool)

(assert (=> b!2914844 (= e!1839468 (not lt!1024469))))

(declare-fun b!2914845 () Bool)

(declare-fun res!1203356 () Bool)

(assert (=> b!2914845 (=> res!1203356 e!1839470)))

(assert (=> b!2914845 (= res!1203356 e!1839467)))

(declare-fun res!1203355 () Bool)

(assert (=> b!2914845 (=> (not res!1203355) (not e!1839467))))

(assert (=> b!2914845 (= res!1203355 lt!1024469)))

(declare-fun b!2914842 () Bool)

(declare-fun res!1203357 () Bool)

(assert (=> b!2914842 (=> (not res!1203357) (not e!1839467))))

(assert (=> b!2914842 (= res!1203357 (isEmpty!18958 (tail!4701 (_1!19969 lt!1024380))))))

(declare-fun d!837984 () Bool)

(assert (=> d!837984 e!1839472))

(declare-fun c!475337 () Bool)

(assert (=> d!837984 (= c!475337 (is-EmptyExpr!8968 (regOne!18448 r!17423)))))

(assert (=> d!837984 (= lt!1024469 e!1839471)))

(declare-fun c!475335 () Bool)

(assert (=> d!837984 (= c!475335 (isEmpty!18958 (_1!19969 lt!1024380)))))

(assert (=> d!837984 (validRegex!3701 (regOne!18448 r!17423))))

(assert (=> d!837984 (= (matchR!3850 (regOne!18448 r!17423) (_1!19969 lt!1024380)) lt!1024469)))

(declare-fun b!2914846 () Bool)

(declare-fun res!1203358 () Bool)

(assert (=> b!2914846 (=> res!1203358 e!1839469)))

(assert (=> b!2914846 (= res!1203358 (not (isEmpty!18958 (tail!4701 (_1!19969 lt!1024380)))))))

(declare-fun b!2914847 () Bool)

(assert (=> b!2914847 (= e!1839473 e!1839469)))

(declare-fun res!1203351 () Bool)

(assert (=> b!2914847 (=> res!1203351 e!1839469)))

(assert (=> b!2914847 (= res!1203351 call!190372)))

(assert (= (and d!837984 c!475335) b!2914835))

(assert (= (and d!837984 (not c!475335)) b!2914843))

(assert (= (and d!837984 c!475337) b!2914840))

(assert (= (and d!837984 (not c!475337)) b!2914838))

(assert (= (and b!2914838 c!475336) b!2914844))

(assert (= (and b!2914838 (not c!475336)) b!2914839))

(assert (= (and b!2914839 (not res!1203352)) b!2914845))

(assert (= (and b!2914845 res!1203355) b!2914841))

(assert (= (and b!2914841 res!1203353) b!2914842))

(assert (= (and b!2914842 res!1203357) b!2914836))

(assert (= (and b!2914845 (not res!1203356)) b!2914837))

(assert (= (and b!2914837 res!1203354) b!2914847))

(assert (= (and b!2914847 (not res!1203351)) b!2914846))

(assert (= (and b!2914846 (not res!1203358)) b!2914834))

(assert (= (or b!2914840 b!2914841 b!2914847) bm!190367))

(assert (=> b!2914835 m!3314069))

(assert (=> d!837984 m!3314089))

(assert (=> d!837984 m!3313957))

(assert (=> b!2914843 m!3314093))

(assert (=> b!2914843 m!3314093))

(declare-fun m!3314189 () Bool)

(assert (=> b!2914843 m!3314189))

(assert (=> b!2914843 m!3314097))

(assert (=> b!2914843 m!3314189))

(assert (=> b!2914843 m!3314097))

(declare-fun m!3314191 () Bool)

(assert (=> b!2914843 m!3314191))

(assert (=> bm!190367 m!3314089))

(assert (=> b!2914846 m!3314097))

(assert (=> b!2914846 m!3314097))

(assert (=> b!2914846 m!3314101))

(assert (=> b!2914834 m!3314093))

(assert (=> b!2914842 m!3314097))

(assert (=> b!2914842 m!3314097))

(assert (=> b!2914842 m!3314101))

(assert (=> b!2914836 m!3314093))

(assert (=> b!2914351 d!837984))

(declare-fun d!837986 () Bool)

(assert (=> d!837986 (= (get!10554 lt!1024381) (v!34702 lt!1024381))))

(assert (=> b!2914351 d!837986))

(declare-fun b!2914868 () Bool)

(declare-fun e!1839490 () Bool)

(declare-fun lt!1024477 () Option!6569)

(declare-fun ++!8276 (List!34833 List!34833) List!34833)

(assert (=> b!2914868 (= e!1839490 (= (++!8276 (_1!19969 (get!10554 lt!1024477)) (_2!19969 (get!10554 lt!1024477))) s!11993))))

(declare-fun d!837988 () Bool)

(declare-fun e!1839487 () Bool)

(assert (=> d!837988 e!1839487))

(declare-fun res!1203371 () Bool)

(assert (=> d!837988 (=> res!1203371 e!1839487)))

(assert (=> d!837988 (= res!1203371 e!1839490)))

(declare-fun res!1203373 () Bool)

(assert (=> d!837988 (=> (not res!1203373) (not e!1839490))))

(assert (=> d!837988 (= res!1203373 (isDefined!5120 lt!1024477))))

(declare-fun e!1839486 () Option!6569)

(assert (=> d!837988 (= lt!1024477 e!1839486)))

(declare-fun c!475342 () Bool)

(declare-fun e!1839489 () Bool)

(assert (=> d!837988 (= c!475342 e!1839489)))

(declare-fun res!1203375 () Bool)

(assert (=> d!837988 (=> (not res!1203375) (not e!1839489))))

(assert (=> d!837988 (= res!1203375 (matchR!3850 (regOne!18448 r!17423) Nil!34709))))

(assert (=> d!837988 (validRegex!3701 (regOne!18448 r!17423))))

(assert (=> d!837988 (= (findConcatSeparation!963 (regOne!18448 r!17423) (regTwo!18448 r!17423) Nil!34709 s!11993 s!11993) lt!1024477)))

(declare-fun b!2914869 () Bool)

(assert (=> b!2914869 (= e!1839489 (matchR!3850 (regTwo!18448 r!17423) s!11993))))

(declare-fun b!2914870 () Bool)

(declare-fun res!1203372 () Bool)

(assert (=> b!2914870 (=> (not res!1203372) (not e!1839490))))

(assert (=> b!2914870 (= res!1203372 (matchR!3850 (regTwo!18448 r!17423) (_2!19969 (get!10554 lt!1024477))))))

(declare-fun b!2914871 () Bool)

(declare-fun e!1839488 () Option!6569)

(assert (=> b!2914871 (= e!1839488 None!6568)))

(declare-fun b!2914872 () Bool)

(assert (=> b!2914872 (= e!1839487 (not (isDefined!5120 lt!1024477)))))

(declare-fun b!2914873 () Bool)

(declare-fun res!1203374 () Bool)

(assert (=> b!2914873 (=> (not res!1203374) (not e!1839490))))

(assert (=> b!2914873 (= res!1203374 (matchR!3850 (regOne!18448 r!17423) (_1!19969 (get!10554 lt!1024477))))))

(declare-fun b!2914874 () Bool)

(assert (=> b!2914874 (= e!1839486 (Some!6568 (tuple2!33675 Nil!34709 s!11993)))))

(declare-fun b!2914875 () Bool)

(assert (=> b!2914875 (= e!1839486 e!1839488)))

(declare-fun c!475343 () Bool)

(assert (=> b!2914875 (= c!475343 (is-Nil!34709 s!11993))))

(declare-fun b!2914876 () Bool)

(declare-fun lt!1024478 () Unit!48275)

(declare-fun lt!1024476 () Unit!48275)

(assert (=> b!2914876 (= lt!1024478 lt!1024476)))

(assert (=> b!2914876 (= (++!8276 (++!8276 Nil!34709 (Cons!34709 (h!40129 s!11993) Nil!34709)) (t!233898 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!912 (List!34833 C!18122 List!34833 List!34833) Unit!48275)

(assert (=> b!2914876 (= lt!1024476 (lemmaMoveElementToOtherListKeepsConcatEq!912 Nil!34709 (h!40129 s!11993) (t!233898 s!11993) s!11993))))

(assert (=> b!2914876 (= e!1839488 (findConcatSeparation!963 (regOne!18448 r!17423) (regTwo!18448 r!17423) (++!8276 Nil!34709 (Cons!34709 (h!40129 s!11993) Nil!34709)) (t!233898 s!11993) s!11993))))

(assert (= (and d!837988 res!1203375) b!2914869))

(assert (= (and d!837988 c!475342) b!2914874))

(assert (= (and d!837988 (not c!475342)) b!2914875))

(assert (= (and b!2914875 c!475343) b!2914871))

(assert (= (and b!2914875 (not c!475343)) b!2914876))

(assert (= (and d!837988 res!1203373) b!2914873))

(assert (= (and b!2914873 res!1203374) b!2914870))

(assert (= (and b!2914870 res!1203372) b!2914868))

(assert (= (and d!837988 (not res!1203371)) b!2914872))

(declare-fun m!3314193 () Bool)

(assert (=> b!2914876 m!3314193))

(assert (=> b!2914876 m!3314193))

(declare-fun m!3314195 () Bool)

(assert (=> b!2914876 m!3314195))

(declare-fun m!3314197 () Bool)

(assert (=> b!2914876 m!3314197))

(assert (=> b!2914876 m!3314193))

(declare-fun m!3314199 () Bool)

(assert (=> b!2914876 m!3314199))

(declare-fun m!3314201 () Bool)

(assert (=> b!2914868 m!3314201))

(declare-fun m!3314203 () Bool)

(assert (=> b!2914868 m!3314203))

(declare-fun m!3314205 () Bool)

(assert (=> d!837988 m!3314205))

(declare-fun m!3314207 () Bool)

(assert (=> d!837988 m!3314207))

(assert (=> d!837988 m!3313957))

(declare-fun m!3314209 () Bool)

(assert (=> b!2914869 m!3314209))

(assert (=> b!2914872 m!3314205))

(assert (=> b!2914870 m!3314201))

(declare-fun m!3314211 () Bool)

(assert (=> b!2914870 m!3314211))

(assert (=> b!2914873 m!3314201))

(declare-fun m!3314213 () Bool)

(assert (=> b!2914873 m!3314213))

(assert (=> b!2914351 d!837988))

(declare-fun bs!524748 () Bool)

(declare-fun d!837990 () Bool)

(assert (= bs!524748 (and d!837990 b!2914351)))

(declare-fun lambda!108381 () Int)

(assert (=> bs!524748 (not (= lambda!108381 lambda!108352))))

(declare-fun bs!524749 () Bool)

(assert (= bs!524749 (and d!837990 d!837980)))

(assert (=> bs!524749 (not (= lambda!108381 lambda!108378))))

(assert (=> bs!524748 (= lambda!108381 lambda!108351)))

(declare-fun bs!524750 () Bool)

(assert (= bs!524750 (and d!837990 b!2914759)))

(assert (=> bs!524750 (not (= lambda!108381 lambda!108372))))

(assert (=> bs!524749 (= lambda!108381 lambda!108377)))

(declare-fun bs!524751 () Bool)

(assert (= bs!524751 (and d!837990 b!2914756)))

(assert (=> bs!524751 (not (= lambda!108381 lambda!108371))))

(assert (=> d!837990 true))

(assert (=> d!837990 true))

(assert (=> d!837990 true))

(assert (=> d!837990 (= (isDefined!5120 (findConcatSeparation!963 (regOne!18448 r!17423) (regTwo!18448 r!17423) Nil!34709 s!11993 s!11993)) (Exists!1348 lambda!108381))))

(declare-fun lt!1024488 () Unit!48275)

(declare-fun choose!17158 (Regex!8968 Regex!8968 List!34833) Unit!48275)

(assert (=> d!837990 (= lt!1024488 (choose!17158 (regOne!18448 r!17423) (regTwo!18448 r!17423) s!11993))))

(assert (=> d!837990 (validRegex!3701 (regOne!18448 r!17423))))

(assert (=> d!837990 (= (lemmaFindConcatSeparationEquivalentToExists!745 (regOne!18448 r!17423) (regTwo!18448 r!17423) s!11993) lt!1024488)))

(declare-fun bs!524752 () Bool)

(assert (= bs!524752 d!837990))

(assert (=> bs!524752 m!3313941))

(declare-fun m!3314233 () Bool)

(assert (=> bs!524752 m!3314233))

(declare-fun m!3314235 () Bool)

(assert (=> bs!524752 m!3314235))

(assert (=> bs!524752 m!3313941))

(assert (=> bs!524752 m!3313957))

(declare-fun m!3314237 () Bool)

(assert (=> bs!524752 m!3314237))

(assert (=> b!2914351 d!837990))

(declare-fun d!837996 () Bool)

(assert (=> d!837996 (= (isEmpty!18958 s!11993) (is-Nil!34709 s!11993))))

(assert (=> b!2914346 d!837996))

(declare-fun b!2914936 () Bool)

(declare-fun e!1839523 () Bool)

(declare-fun tp!936169 () Bool)

(assert (=> b!2914936 (= e!1839523 tp!936169)))

(declare-fun b!2914937 () Bool)

(declare-fun tp!936171 () Bool)

(declare-fun tp!936170 () Bool)

(assert (=> b!2914937 (= e!1839523 (and tp!936171 tp!936170))))

(declare-fun b!2914935 () Bool)

(declare-fun tp!936168 () Bool)

(declare-fun tp!936172 () Bool)

(assert (=> b!2914935 (= e!1839523 (and tp!936168 tp!936172))))

(declare-fun b!2914934 () Bool)

(assert (=> b!2914934 (= e!1839523 tp_is_empty!15499)))

(assert (=> b!2914342 (= tp!936135 e!1839523)))

(assert (= (and b!2914342 (is-ElementMatch!8968 (reg!9297 r!17423))) b!2914934))

(assert (= (and b!2914342 (is-Concat!14289 (reg!9297 r!17423))) b!2914935))

(assert (= (and b!2914342 (is-Star!8968 (reg!9297 r!17423))) b!2914936))

(assert (= (and b!2914342 (is-Union!8968 (reg!9297 r!17423))) b!2914937))

(declare-fun b!2914942 () Bool)

(declare-fun e!1839526 () Bool)

(declare-fun tp!936175 () Bool)

(assert (=> b!2914942 (= e!1839526 (and tp_is_empty!15499 tp!936175))))

(assert (=> b!2914343 (= tp!936137 e!1839526)))

(assert (= (and b!2914343 (is-Cons!34709 (t!233898 s!11993))) b!2914942))

(declare-fun b!2914945 () Bool)

(declare-fun e!1839527 () Bool)

(declare-fun tp!936177 () Bool)

(assert (=> b!2914945 (= e!1839527 tp!936177)))

(declare-fun b!2914946 () Bool)

(declare-fun tp!936179 () Bool)

(declare-fun tp!936178 () Bool)

(assert (=> b!2914946 (= e!1839527 (and tp!936179 tp!936178))))

(declare-fun b!2914944 () Bool)

(declare-fun tp!936176 () Bool)

(declare-fun tp!936180 () Bool)

(assert (=> b!2914944 (= e!1839527 (and tp!936176 tp!936180))))

(declare-fun b!2914943 () Bool)

(assert (=> b!2914943 (= e!1839527 tp_is_empty!15499)))

(assert (=> b!2914344 (= tp!936139 e!1839527)))

(assert (= (and b!2914344 (is-ElementMatch!8968 (regOne!18449 r!17423))) b!2914943))

(assert (= (and b!2914344 (is-Concat!14289 (regOne!18449 r!17423))) b!2914944))

(assert (= (and b!2914344 (is-Star!8968 (regOne!18449 r!17423))) b!2914945))

(assert (= (and b!2914344 (is-Union!8968 (regOne!18449 r!17423))) b!2914946))

(declare-fun b!2914949 () Bool)

(declare-fun e!1839528 () Bool)

(declare-fun tp!936182 () Bool)

(assert (=> b!2914949 (= e!1839528 tp!936182)))

(declare-fun b!2914950 () Bool)

(declare-fun tp!936184 () Bool)

(declare-fun tp!936183 () Bool)

(assert (=> b!2914950 (= e!1839528 (and tp!936184 tp!936183))))

(declare-fun b!2914948 () Bool)

(declare-fun tp!936181 () Bool)

(declare-fun tp!936185 () Bool)

(assert (=> b!2914948 (= e!1839528 (and tp!936181 tp!936185))))

(declare-fun b!2914947 () Bool)

(assert (=> b!2914947 (= e!1839528 tp_is_empty!15499)))

(assert (=> b!2914344 (= tp!936134 e!1839528)))

(assert (= (and b!2914344 (is-ElementMatch!8968 (regTwo!18449 r!17423))) b!2914947))

(assert (= (and b!2914344 (is-Concat!14289 (regTwo!18449 r!17423))) b!2914948))

(assert (= (and b!2914344 (is-Star!8968 (regTwo!18449 r!17423))) b!2914949))

(assert (= (and b!2914344 (is-Union!8968 (regTwo!18449 r!17423))) b!2914950))

(declare-fun b!2914953 () Bool)

(declare-fun e!1839529 () Bool)

(declare-fun tp!936187 () Bool)

(assert (=> b!2914953 (= e!1839529 tp!936187)))

(declare-fun b!2914954 () Bool)

(declare-fun tp!936189 () Bool)

(declare-fun tp!936188 () Bool)

(assert (=> b!2914954 (= e!1839529 (and tp!936189 tp!936188))))

(declare-fun b!2914952 () Bool)

(declare-fun tp!936186 () Bool)

(declare-fun tp!936190 () Bool)

(assert (=> b!2914952 (= e!1839529 (and tp!936186 tp!936190))))

(declare-fun b!2914951 () Bool)

(assert (=> b!2914951 (= e!1839529 tp_is_empty!15499)))

(assert (=> b!2914345 (= tp!936138 e!1839529)))

(assert (= (and b!2914345 (is-ElementMatch!8968 (regOne!18448 r!17423))) b!2914951))

(assert (= (and b!2914345 (is-Concat!14289 (regOne!18448 r!17423))) b!2914952))

(assert (= (and b!2914345 (is-Star!8968 (regOne!18448 r!17423))) b!2914953))

(assert (= (and b!2914345 (is-Union!8968 (regOne!18448 r!17423))) b!2914954))

(declare-fun b!2914957 () Bool)

(declare-fun e!1839530 () Bool)

(declare-fun tp!936192 () Bool)

(assert (=> b!2914957 (= e!1839530 tp!936192)))

(declare-fun b!2914958 () Bool)

(declare-fun tp!936194 () Bool)

(declare-fun tp!936193 () Bool)

(assert (=> b!2914958 (= e!1839530 (and tp!936194 tp!936193))))

(declare-fun b!2914956 () Bool)

(declare-fun tp!936191 () Bool)

(declare-fun tp!936195 () Bool)

(assert (=> b!2914956 (= e!1839530 (and tp!936191 tp!936195))))

(declare-fun b!2914955 () Bool)

(assert (=> b!2914955 (= e!1839530 tp_is_empty!15499)))

(assert (=> b!2914345 (= tp!936136 e!1839530)))

(assert (= (and b!2914345 (is-ElementMatch!8968 (regTwo!18448 r!17423))) b!2914955))

(assert (= (and b!2914345 (is-Concat!14289 (regTwo!18448 r!17423))) b!2914956))

(assert (= (and b!2914345 (is-Star!8968 (regTwo!18448 r!17423))) b!2914957))

(assert (= (and b!2914345 (is-Union!8968 (regTwo!18448 r!17423))) b!2914958))

(push 1)

(assert (not bm!190315))

(assert (not b!2914842))

(assert (not b!2914949))

(assert (not bm!190357))

(assert (not b!2914766))

(assert (not b!2914662))

(assert (not d!837960))

(assert (not d!837952))

(assert (not bm!190346))

(assert (not b!2914530))

(assert tp_is_empty!15499)

(assert (not b!2914950))

(assert (not d!837982))

(assert (not d!837958))

(assert (not b!2914937))

(assert (not b!2914872))

(assert (not b!2914876))

(assert (not b!2914843))

(assert (not b!2914490))

(assert (not b!2914776))

(assert (not b!2914834))

(assert (not b!2914954))

(assert (not d!837990))

(assert (not d!837984))

(assert (not bm!190347))

(assert (not b!2914773))

(assert (not b!2914501))

(assert (not b!2914956))

(assert (not b!2914873))

(assert (not b!2914935))

(assert (not b!2914846))

(assert (not b!2914450))

(assert (not b!2914762))

(assert (not b!2914953))

(assert (not b!2914868))

(assert (not b!2914523))

(assert (not bm!190337))

(assert (not b!2914489))

(assert (not b!2914870))

(assert (not b!2914522))

(assert (not bm!190356))

(assert (not b!2914761))

(assert (not b!2914688))

(assert (not b!2914957))

(assert (not bm!190338))

(assert (not b!2914666))

(assert (not b!2914948))

(assert (not b!2914936))

(assert (not b!2914835))

(assert (not b!2914649))

(assert (not b!2914656))

(assert (not bm!190317))

(assert (not b!2914516))

(assert (not b!2914514))

(assert (not bm!190345))

(assert (not d!837972))

(assert (not b!2914942))

(assert (not bm!190314))

(assert (not bm!190342))

(assert (not b!2914836))

(assert (not d!837942))

(assert (not b!2914958))

(assert (not b!2914946))

(assert (not bm!190311))

(assert (not d!837944))

(assert (not b!2914945))

(assert (not b!2914952))

(assert (not b!2914944))

(assert (not b!2914498))

(assert (not d!837976))

(assert (not b!2914491))

(assert (not b!2914669))

(assert (not b!2914764))

(assert (not d!837980))

(assert (not b!2914869))

(assert (not b!2914765))

(assert (not b!2914630))

(assert (not b!2914655))

(assert (not b!2914497))

(assert (not d!837988))

(assert (not bm!190339))

(assert (not d!837954))

(assert (not bm!190336))

(assert (not bm!190343))

(assert (not b!2914772))

(assert (not d!837978))

(assert (not b!2914526))

(assert (not b!2914663))

(assert (not d!837974))

(assert (not d!837948))

(assert (not bm!190304))

(assert (not bm!190335))

(assert (not bm!190367))

(assert (not bm!190302))

(assert (not b!2914515))

(assert (not bm!190344))

(assert (not bm!190358))

(assert (not b!2914654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

