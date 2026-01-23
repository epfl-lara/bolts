; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349902 () Bool)

(assert start!349902)

(declare-fun res!1509200 () Bool)

(declare-fun e!2298326 () Bool)

(assert (=> start!349902 (=> (not res!1509200) (not e!2298326))))

(declare-datatypes ((C!21876 0))(
  ( (C!21877 (val!12986 Int)) )
))
(declare-datatypes ((Regex!10845 0))(
  ( (ElementMatch!10845 (c!641065 C!21876)) (Concat!17116 (regOne!22202 Regex!10845) (regTwo!22202 Regex!10845)) (EmptyExpr!10845) (Star!10845 (reg!11174 Regex!10845)) (EmptyLang!10845) (Union!10845 (regOne!22203 Regex!10845) (regTwo!22203 Regex!10845)) )
))
(declare-fun r!26326 () Regex!10845)

(declare-fun validRegex!4952 (Regex!10845) Bool)

(assert (=> start!349902 (= res!1509200 (validRegex!4952 r!26326))))

(assert (=> start!349902 e!2298326))

(declare-fun e!2298327 () Bool)

(assert (=> start!349902 e!2298327))

(declare-fun tp_is_empty!18705 () Bool)

(assert (=> start!349902 tp_is_empty!18705))

(declare-fun e!2298328 () Bool)

(assert (=> start!349902 e!2298328))

(declare-fun b!3711178 () Bool)

(declare-fun e!2298325 () Bool)

(assert (=> b!3711178 (= e!2298326 e!2298325)))

(declare-fun res!1509199 () Bool)

(assert (=> b!3711178 (=> (not res!1509199) (not e!2298325))))

(declare-fun lt!1296856 () Regex!10845)

(declare-datatypes ((List!39726 0))(
  ( (Nil!39602) (Cons!39602 (h!45022 C!21876) (t!302409 List!39726)) )
))
(declare-fun tl!3933 () List!39726)

(declare-fun nullable!3768 (Regex!10845) Bool)

(declare-fun derivative!359 (Regex!10845 List!39726) Regex!10845)

(assert (=> b!3711178 (= res!1509199 (nullable!3768 (derivative!359 lt!1296856 tl!3933)))))

(declare-fun c!13576 () C!21876)

(declare-fun derivativeStep!3310 (Regex!10845 C!21876) Regex!10845)

(assert (=> b!3711178 (= lt!1296856 (derivativeStep!3310 r!26326 c!13576))))

(declare-fun b!3711179 () Bool)

(declare-fun tp!1129439 () Bool)

(declare-fun tp!1129441 () Bool)

(assert (=> b!3711179 (= e!2298327 (and tp!1129439 tp!1129441))))

(declare-fun b!3711180 () Bool)

(declare-fun res!1509201 () Bool)

(assert (=> b!3711180 (=> (not res!1509201) (not e!2298325))))

(declare-fun isEmpty!23500 (List!39726) Bool)

(assert (=> b!3711180 (= res!1509201 (isEmpty!23500 tl!3933))))

(declare-fun b!3711181 () Bool)

(declare-fun contains!7938 (List!39726 C!21876) Bool)

(declare-fun usedCharacters!1108 (Regex!10845) List!39726)

(assert (=> b!3711181 (= e!2298325 (not (contains!7938 (usedCharacters!1108 r!26326) c!13576)))))

(declare-fun b!3711182 () Bool)

(declare-fun tp!1129442 () Bool)

(assert (=> b!3711182 (= e!2298328 (and tp_is_empty!18705 tp!1129442))))

(declare-fun b!3711183 () Bool)

(assert (=> b!3711183 (= e!2298327 tp_is_empty!18705)))

(declare-fun b!3711184 () Bool)

(declare-fun res!1509202 () Bool)

(assert (=> b!3711184 (=> (not res!1509202) (not e!2298325))))

(get-info :version)

(assert (=> b!3711184 (= res!1509202 (and (not ((_ is EmptyExpr!10845) r!26326)) (not ((_ is EmptyLang!10845) r!26326)) ((_ is ElementMatch!10845) r!26326) (= c!13576 (c!641065 r!26326)) (= lt!1296856 EmptyExpr!10845)))))

(declare-fun b!3711185 () Bool)

(declare-fun tp!1129443 () Bool)

(assert (=> b!3711185 (= e!2298327 tp!1129443)))

(declare-fun b!3711186 () Bool)

(declare-fun tp!1129440 () Bool)

(declare-fun tp!1129444 () Bool)

(assert (=> b!3711186 (= e!2298327 (and tp!1129440 tp!1129444))))

(assert (= (and start!349902 res!1509200) b!3711178))

(assert (= (and b!3711178 res!1509199) b!3711184))

(assert (= (and b!3711184 res!1509202) b!3711180))

(assert (= (and b!3711180 res!1509201) b!3711181))

(assert (= (and start!349902 ((_ is ElementMatch!10845) r!26326)) b!3711183))

(assert (= (and start!349902 ((_ is Concat!17116) r!26326)) b!3711179))

(assert (= (and start!349902 ((_ is Star!10845) r!26326)) b!3711185))

(assert (= (and start!349902 ((_ is Union!10845) r!26326)) b!3711186))

(assert (= (and start!349902 ((_ is Cons!39602) tl!3933)) b!3711182))

(declare-fun m!4218555 () Bool)

(assert (=> start!349902 m!4218555))

(declare-fun m!4218557 () Bool)

(assert (=> b!3711178 m!4218557))

(assert (=> b!3711178 m!4218557))

(declare-fun m!4218559 () Bool)

(assert (=> b!3711178 m!4218559))

(declare-fun m!4218561 () Bool)

(assert (=> b!3711178 m!4218561))

(declare-fun m!4218563 () Bool)

(assert (=> b!3711180 m!4218563))

(declare-fun m!4218565 () Bool)

(assert (=> b!3711181 m!4218565))

(assert (=> b!3711181 m!4218565))

(declare-fun m!4218567 () Bool)

(assert (=> b!3711181 m!4218567))

(check-sat (not b!3711182) (not b!3711178) (not b!3711181) (not b!3711186) (not start!349902) (not b!3711185) (not b!3711180) (not b!3711179) tp_is_empty!18705)
(check-sat)
(get-model)

(declare-fun d!1087132 () Bool)

(declare-fun nullableFct!1057 (Regex!10845) Bool)

(assert (=> d!1087132 (= (nullable!3768 (derivative!359 lt!1296856 tl!3933)) (nullableFct!1057 (derivative!359 lt!1296856 tl!3933)))))

(declare-fun bs!574744 () Bool)

(assert (= bs!574744 d!1087132))

(assert (=> bs!574744 m!4218557))

(declare-fun m!4218569 () Bool)

(assert (=> bs!574744 m!4218569))

(assert (=> b!3711178 d!1087132))

(declare-fun d!1087134 () Bool)

(declare-fun lt!1296859 () Regex!10845)

(assert (=> d!1087134 (validRegex!4952 lt!1296859)))

(declare-fun e!2298331 () Regex!10845)

(assert (=> d!1087134 (= lt!1296859 e!2298331)))

(declare-fun c!641068 () Bool)

(assert (=> d!1087134 (= c!641068 ((_ is Cons!39602) tl!3933))))

(assert (=> d!1087134 (validRegex!4952 lt!1296856)))

(assert (=> d!1087134 (= (derivative!359 lt!1296856 tl!3933) lt!1296859)))

(declare-fun b!3711191 () Bool)

(assert (=> b!3711191 (= e!2298331 (derivative!359 (derivativeStep!3310 lt!1296856 (h!45022 tl!3933)) (t!302409 tl!3933)))))

(declare-fun b!3711192 () Bool)

(assert (=> b!3711192 (= e!2298331 lt!1296856)))

(assert (= (and d!1087134 c!641068) b!3711191))

(assert (= (and d!1087134 (not c!641068)) b!3711192))

(declare-fun m!4218573 () Bool)

(assert (=> d!1087134 m!4218573))

(declare-fun m!4218575 () Bool)

(assert (=> d!1087134 m!4218575))

(declare-fun m!4218577 () Bool)

(assert (=> b!3711191 m!4218577))

(assert (=> b!3711191 m!4218577))

(declare-fun m!4218579 () Bool)

(assert (=> b!3711191 m!4218579))

(assert (=> b!3711178 d!1087134))

(declare-fun b!3711219 () Bool)

(declare-fun e!2298348 () Regex!10845)

(declare-fun e!2298345 () Regex!10845)

(assert (=> b!3711219 (= e!2298348 e!2298345)))

(declare-fun c!641082 () Bool)

(assert (=> b!3711219 (= c!641082 ((_ is ElementMatch!10845) r!26326))))

(declare-fun bm!268388 () Bool)

(declare-fun call!268393 () Regex!10845)

(declare-fun call!268394 () Regex!10845)

(assert (=> bm!268388 (= call!268393 call!268394)))

(declare-fun c!641084 () Bool)

(declare-fun bm!268389 () Bool)

(assert (=> bm!268389 (= call!268394 (derivativeStep!3310 (ite c!641084 (regOne!22203 r!26326) (regOne!22202 r!26326)) c!13576))))

(declare-fun b!3711220 () Bool)

(assert (=> b!3711220 (= c!641084 ((_ is Union!10845) r!26326))))

(declare-fun e!2298349 () Regex!10845)

(assert (=> b!3711220 (= e!2298345 e!2298349)))

(declare-fun b!3711221 () Bool)

(declare-fun e!2298346 () Regex!10845)

(assert (=> b!3711221 (= e!2298349 e!2298346)))

(declare-fun c!641086 () Bool)

(assert (=> b!3711221 (= c!641086 ((_ is Star!10845) r!26326))))

(declare-fun b!3711222 () Bool)

(declare-fun call!268395 () Regex!10845)

(declare-fun e!2298347 () Regex!10845)

(assert (=> b!3711222 (= e!2298347 (Union!10845 (Concat!17116 call!268393 (regTwo!22202 r!26326)) call!268395))))

(declare-fun b!3711223 () Bool)

(assert (=> b!3711223 (= e!2298348 EmptyLang!10845)))

(declare-fun call!268396 () Regex!10845)

(declare-fun bm!268390 () Bool)

(assert (=> bm!268390 (= call!268396 (derivativeStep!3310 (ite c!641084 (regTwo!22203 r!26326) (ite c!641086 (reg!11174 r!26326) (regTwo!22202 r!26326))) c!13576))))

(declare-fun d!1087140 () Bool)

(declare-fun lt!1296865 () Regex!10845)

(assert (=> d!1087140 (validRegex!4952 lt!1296865)))

(assert (=> d!1087140 (= lt!1296865 e!2298348)))

(declare-fun c!641083 () Bool)

(assert (=> d!1087140 (= c!641083 (or ((_ is EmptyExpr!10845) r!26326) ((_ is EmptyLang!10845) r!26326)))))

(assert (=> d!1087140 (validRegex!4952 r!26326)))

(assert (=> d!1087140 (= (derivativeStep!3310 r!26326 c!13576) lt!1296865)))

(declare-fun b!3711224 () Bool)

(assert (=> b!3711224 (= e!2298345 (ite (= c!13576 (c!641065 r!26326)) EmptyExpr!10845 EmptyLang!10845))))

(declare-fun b!3711225 () Bool)

(assert (=> b!3711225 (= e!2298347 (Union!10845 (Concat!17116 call!268393 (regTwo!22202 r!26326)) EmptyLang!10845))))

(declare-fun b!3711226 () Bool)

(declare-fun c!641085 () Bool)

(assert (=> b!3711226 (= c!641085 (nullable!3768 (regOne!22202 r!26326)))))

(assert (=> b!3711226 (= e!2298346 e!2298347)))

(declare-fun b!3711227 () Bool)

(assert (=> b!3711227 (= e!2298349 (Union!10845 call!268394 call!268396))))

(declare-fun bm!268391 () Bool)

(assert (=> bm!268391 (= call!268395 call!268396)))

(declare-fun b!3711228 () Bool)

(assert (=> b!3711228 (= e!2298346 (Concat!17116 call!268395 r!26326))))

(assert (= (and d!1087140 c!641083) b!3711223))

(assert (= (and d!1087140 (not c!641083)) b!3711219))

(assert (= (and b!3711219 c!641082) b!3711224))

(assert (= (and b!3711219 (not c!641082)) b!3711220))

(assert (= (and b!3711220 c!641084) b!3711227))

(assert (= (and b!3711220 (not c!641084)) b!3711221))

(assert (= (and b!3711221 c!641086) b!3711228))

(assert (= (and b!3711221 (not c!641086)) b!3711226))

(assert (= (and b!3711226 c!641085) b!3711222))

(assert (= (and b!3711226 (not c!641085)) b!3711225))

(assert (= (or b!3711222 b!3711225) bm!268388))

(assert (= (or b!3711228 b!3711222) bm!268391))

(assert (= (or b!3711227 bm!268391) bm!268390))

(assert (= (or b!3711227 bm!268388) bm!268389))

(declare-fun m!4218589 () Bool)

(assert (=> bm!268389 m!4218589))

(declare-fun m!4218591 () Bool)

(assert (=> bm!268390 m!4218591))

(declare-fun m!4218593 () Bool)

(assert (=> d!1087140 m!4218593))

(assert (=> d!1087140 m!4218555))

(declare-fun m!4218595 () Bool)

(assert (=> b!3711226 m!4218595))

(assert (=> b!3711178 d!1087140))

(declare-fun d!1087144 () Bool)

(declare-fun lt!1296868 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5728 (List!39726) (InoxSet C!21876))

(assert (=> d!1087144 (= lt!1296868 (select (content!5728 (usedCharacters!1108 r!26326)) c!13576))))

(declare-fun e!2298355 () Bool)

(assert (=> d!1087144 (= lt!1296868 e!2298355)))

(declare-fun res!1509207 () Bool)

(assert (=> d!1087144 (=> (not res!1509207) (not e!2298355))))

(assert (=> d!1087144 (= res!1509207 ((_ is Cons!39602) (usedCharacters!1108 r!26326)))))

(assert (=> d!1087144 (= (contains!7938 (usedCharacters!1108 r!26326) c!13576) lt!1296868)))

(declare-fun b!3711233 () Bool)

(declare-fun e!2298354 () Bool)

(assert (=> b!3711233 (= e!2298355 e!2298354)))

(declare-fun res!1509208 () Bool)

(assert (=> b!3711233 (=> res!1509208 e!2298354)))

(assert (=> b!3711233 (= res!1509208 (= (h!45022 (usedCharacters!1108 r!26326)) c!13576))))

(declare-fun b!3711234 () Bool)

(assert (=> b!3711234 (= e!2298354 (contains!7938 (t!302409 (usedCharacters!1108 r!26326)) c!13576))))

(assert (= (and d!1087144 res!1509207) b!3711233))

(assert (= (and b!3711233 (not res!1509208)) b!3711234))

(assert (=> d!1087144 m!4218565))

(declare-fun m!4218597 () Bool)

(assert (=> d!1087144 m!4218597))

(declare-fun m!4218599 () Bool)

(assert (=> d!1087144 m!4218599))

(declare-fun m!4218601 () Bool)

(assert (=> b!3711234 m!4218601))

(assert (=> b!3711181 d!1087144))

(declare-fun c!641108 () Bool)

(declare-fun c!641106 () Bool)

(declare-fun bm!268404 () Bool)

(declare-fun call!268411 () List!39726)

(assert (=> bm!268404 (= call!268411 (usedCharacters!1108 (ite c!641106 (reg!11174 r!26326) (ite c!641108 (regOne!22203 r!26326) (regOne!22202 r!26326)))))))

(declare-fun b!3711271 () Bool)

(declare-fun e!2298377 () List!39726)

(declare-fun e!2298375 () List!39726)

(assert (=> b!3711271 (= e!2298377 e!2298375)))

(declare-fun c!641107 () Bool)

(assert (=> b!3711271 (= c!641107 ((_ is ElementMatch!10845) r!26326))))

(declare-fun b!3711272 () Bool)

(declare-fun e!2298376 () List!39726)

(declare-fun call!268410 () List!39726)

(assert (=> b!3711272 (= e!2298376 call!268410)))

(declare-fun b!3711273 () Bool)

(assert (=> b!3711273 (= e!2298377 Nil!39602)))

(declare-fun b!3711275 () Bool)

(assert (=> b!3711275 (= c!641106 ((_ is Star!10845) r!26326))))

(declare-fun e!2298374 () List!39726)

(assert (=> b!3711275 (= e!2298375 e!2298374)))

(declare-fun bm!268405 () Bool)

(declare-fun call!268412 () List!39726)

(assert (=> bm!268405 (= call!268412 (usedCharacters!1108 (ite c!641108 (regTwo!22203 r!26326) (regTwo!22202 r!26326))))))

(declare-fun b!3711276 () Bool)

(assert (=> b!3711276 (= e!2298374 e!2298376)))

(assert (=> b!3711276 (= c!641108 ((_ is Union!10845) r!26326))))

(declare-fun b!3711277 () Bool)

(assert (=> b!3711277 (= e!2298375 (Cons!39602 (c!641065 r!26326) Nil!39602))))

(declare-fun bm!268406 () Bool)

(declare-fun call!268409 () List!39726)

(declare-fun ++!9791 (List!39726 List!39726) List!39726)

(assert (=> bm!268406 (= call!268410 (++!9791 call!268409 call!268412))))

(declare-fun b!3711278 () Bool)

(assert (=> b!3711278 (= e!2298374 call!268411)))

(declare-fun bm!268407 () Bool)

(assert (=> bm!268407 (= call!268409 call!268411)))

(declare-fun d!1087146 () Bool)

(declare-fun c!641105 () Bool)

(assert (=> d!1087146 (= c!641105 (or ((_ is EmptyExpr!10845) r!26326) ((_ is EmptyLang!10845) r!26326)))))

(assert (=> d!1087146 (= (usedCharacters!1108 r!26326) e!2298377)))

(declare-fun b!3711274 () Bool)

(assert (=> b!3711274 (= e!2298376 call!268410)))

(assert (= (and d!1087146 c!641105) b!3711273))

(assert (= (and d!1087146 (not c!641105)) b!3711271))

(assert (= (and b!3711271 c!641107) b!3711277))

(assert (= (and b!3711271 (not c!641107)) b!3711275))

(assert (= (and b!3711275 c!641106) b!3711278))

(assert (= (and b!3711275 (not c!641106)) b!3711276))

(assert (= (and b!3711276 c!641108) b!3711274))

(assert (= (and b!3711276 (not c!641108)) b!3711272))

(assert (= (or b!3711274 b!3711272) bm!268407))

(assert (= (or b!3711274 b!3711272) bm!268405))

(assert (= (or b!3711274 b!3711272) bm!268406))

(assert (= (or b!3711278 bm!268407) bm!268404))

(declare-fun m!4218603 () Bool)

(assert (=> bm!268404 m!4218603))

(declare-fun m!4218605 () Bool)

(assert (=> bm!268405 m!4218605))

(declare-fun m!4218607 () Bool)

(assert (=> bm!268406 m!4218607))

(assert (=> b!3711181 d!1087146))

(declare-fun d!1087148 () Bool)

(declare-fun res!1509221 () Bool)

(declare-fun e!2298397 () Bool)

(assert (=> d!1087148 (=> res!1509221 e!2298397)))

(assert (=> d!1087148 (= res!1509221 ((_ is ElementMatch!10845) r!26326))))

(assert (=> d!1087148 (= (validRegex!4952 r!26326) e!2298397)))

(declare-fun b!3711297 () Bool)

(declare-fun e!2298392 () Bool)

(assert (=> b!3711297 (= e!2298397 e!2298392)))

(declare-fun c!641114 () Bool)

(assert (=> b!3711297 (= c!641114 ((_ is Star!10845) r!26326))))

(declare-fun b!3711298 () Bool)

(declare-fun res!1509220 () Bool)

(declare-fun e!2298395 () Bool)

(assert (=> b!3711298 (=> (not res!1509220) (not e!2298395))))

(declare-fun call!268425 () Bool)

(assert (=> b!3711298 (= res!1509220 call!268425)))

(declare-fun e!2298398 () Bool)

(assert (=> b!3711298 (= e!2298398 e!2298395)))

(declare-fun b!3711299 () Bool)

(declare-fun e!2298393 () Bool)

(declare-fun call!268423 () Bool)

(assert (=> b!3711299 (= e!2298393 call!268423)))

(declare-fun c!641113 () Bool)

(declare-fun bm!268418 () Bool)

(assert (=> bm!268418 (= call!268423 (validRegex!4952 (ite c!641114 (reg!11174 r!26326) (ite c!641113 (regTwo!22203 r!26326) (regOne!22202 r!26326)))))))

(declare-fun bm!268419 () Bool)

(declare-fun call!268424 () Bool)

(assert (=> bm!268419 (= call!268424 call!268423)))

(declare-fun b!3711300 () Bool)

(declare-fun res!1509223 () Bool)

(declare-fun e!2298396 () Bool)

(assert (=> b!3711300 (=> res!1509223 e!2298396)))

(assert (=> b!3711300 (= res!1509223 (not ((_ is Concat!17116) r!26326)))))

(assert (=> b!3711300 (= e!2298398 e!2298396)))

(declare-fun b!3711301 () Bool)

(declare-fun e!2298394 () Bool)

(assert (=> b!3711301 (= e!2298396 e!2298394)))

(declare-fun res!1509219 () Bool)

(assert (=> b!3711301 (=> (not res!1509219) (not e!2298394))))

(assert (=> b!3711301 (= res!1509219 call!268424)))

(declare-fun b!3711302 () Bool)

(assert (=> b!3711302 (= e!2298392 e!2298398)))

(assert (=> b!3711302 (= c!641113 ((_ is Union!10845) r!26326))))

(declare-fun b!3711303 () Bool)

(assert (=> b!3711303 (= e!2298395 call!268424)))

(declare-fun b!3711304 () Bool)

(assert (=> b!3711304 (= e!2298394 call!268425)))

(declare-fun bm!268420 () Bool)

(assert (=> bm!268420 (= call!268425 (validRegex!4952 (ite c!641113 (regOne!22203 r!26326) (regTwo!22202 r!26326))))))

(declare-fun b!3711305 () Bool)

(assert (=> b!3711305 (= e!2298392 e!2298393)))

(declare-fun res!1509222 () Bool)

(assert (=> b!3711305 (= res!1509222 (not (nullable!3768 (reg!11174 r!26326))))))

(assert (=> b!3711305 (=> (not res!1509222) (not e!2298393))))

(assert (= (and d!1087148 (not res!1509221)) b!3711297))

(assert (= (and b!3711297 c!641114) b!3711305))

(assert (= (and b!3711297 (not c!641114)) b!3711302))

(assert (= (and b!3711305 res!1509222) b!3711299))

(assert (= (and b!3711302 c!641113) b!3711298))

(assert (= (and b!3711302 (not c!641113)) b!3711300))

(assert (= (and b!3711298 res!1509220) b!3711303))

(assert (= (and b!3711300 (not res!1509223)) b!3711301))

(assert (= (and b!3711301 res!1509219) b!3711304))

(assert (= (or b!3711303 b!3711301) bm!268419))

(assert (= (or b!3711298 b!3711304) bm!268420))

(assert (= (or b!3711299 bm!268419) bm!268418))

(declare-fun m!4218609 () Bool)

(assert (=> bm!268418 m!4218609))

(declare-fun m!4218611 () Bool)

(assert (=> bm!268420 m!4218611))

(declare-fun m!4218613 () Bool)

(assert (=> b!3711305 m!4218613))

(assert (=> start!349902 d!1087148))

(declare-fun d!1087150 () Bool)

(assert (=> d!1087150 (= (isEmpty!23500 tl!3933) ((_ is Nil!39602) tl!3933))))

(assert (=> b!3711180 d!1087150))

(declare-fun b!3711310 () Bool)

(declare-fun e!2298401 () Bool)

(declare-fun tp!1129447 () Bool)

(assert (=> b!3711310 (= e!2298401 (and tp_is_empty!18705 tp!1129447))))

(assert (=> b!3711182 (= tp!1129442 e!2298401)))

(assert (= (and b!3711182 ((_ is Cons!39602) (t!302409 tl!3933))) b!3711310))

(declare-fun e!2298404 () Bool)

(assert (=> b!3711186 (= tp!1129440 e!2298404)))

(declare-fun b!3711324 () Bool)

(declare-fun tp!1129462 () Bool)

(declare-fun tp!1129458 () Bool)

(assert (=> b!3711324 (= e!2298404 (and tp!1129462 tp!1129458))))

(declare-fun b!3711321 () Bool)

(assert (=> b!3711321 (= e!2298404 tp_is_empty!18705)))

(declare-fun b!3711322 () Bool)

(declare-fun tp!1129459 () Bool)

(declare-fun tp!1129461 () Bool)

(assert (=> b!3711322 (= e!2298404 (and tp!1129459 tp!1129461))))

(declare-fun b!3711323 () Bool)

(declare-fun tp!1129460 () Bool)

(assert (=> b!3711323 (= e!2298404 tp!1129460)))

(assert (= (and b!3711186 ((_ is ElementMatch!10845) (regOne!22203 r!26326))) b!3711321))

(assert (= (and b!3711186 ((_ is Concat!17116) (regOne!22203 r!26326))) b!3711322))

(assert (= (and b!3711186 ((_ is Star!10845) (regOne!22203 r!26326))) b!3711323))

(assert (= (and b!3711186 ((_ is Union!10845) (regOne!22203 r!26326))) b!3711324))

(declare-fun e!2298405 () Bool)

(assert (=> b!3711186 (= tp!1129444 e!2298405)))

(declare-fun b!3711328 () Bool)

(declare-fun tp!1129467 () Bool)

(declare-fun tp!1129463 () Bool)

(assert (=> b!3711328 (= e!2298405 (and tp!1129467 tp!1129463))))

(declare-fun b!3711325 () Bool)

(assert (=> b!3711325 (= e!2298405 tp_is_empty!18705)))

(declare-fun b!3711326 () Bool)

(declare-fun tp!1129464 () Bool)

(declare-fun tp!1129466 () Bool)

(assert (=> b!3711326 (= e!2298405 (and tp!1129464 tp!1129466))))

(declare-fun b!3711327 () Bool)

(declare-fun tp!1129465 () Bool)

(assert (=> b!3711327 (= e!2298405 tp!1129465)))

(assert (= (and b!3711186 ((_ is ElementMatch!10845) (regTwo!22203 r!26326))) b!3711325))

(assert (= (and b!3711186 ((_ is Concat!17116) (regTwo!22203 r!26326))) b!3711326))

(assert (= (and b!3711186 ((_ is Star!10845) (regTwo!22203 r!26326))) b!3711327))

(assert (= (and b!3711186 ((_ is Union!10845) (regTwo!22203 r!26326))) b!3711328))

(declare-fun e!2298407 () Bool)

(assert (=> b!3711179 (= tp!1129439 e!2298407)))

(declare-fun b!3711332 () Bool)

(declare-fun tp!1129472 () Bool)

(declare-fun tp!1129468 () Bool)

(assert (=> b!3711332 (= e!2298407 (and tp!1129472 tp!1129468))))

(declare-fun b!3711329 () Bool)

(assert (=> b!3711329 (= e!2298407 tp_is_empty!18705)))

(declare-fun b!3711330 () Bool)

(declare-fun tp!1129469 () Bool)

(declare-fun tp!1129471 () Bool)

(assert (=> b!3711330 (= e!2298407 (and tp!1129469 tp!1129471))))

(declare-fun b!3711331 () Bool)

(declare-fun tp!1129470 () Bool)

(assert (=> b!3711331 (= e!2298407 tp!1129470)))

(assert (= (and b!3711179 ((_ is ElementMatch!10845) (regOne!22202 r!26326))) b!3711329))

(assert (= (and b!3711179 ((_ is Concat!17116) (regOne!22202 r!26326))) b!3711330))

(assert (= (and b!3711179 ((_ is Star!10845) (regOne!22202 r!26326))) b!3711331))

(assert (= (and b!3711179 ((_ is Union!10845) (regOne!22202 r!26326))) b!3711332))

(declare-fun e!2298412 () Bool)

(assert (=> b!3711179 (= tp!1129441 e!2298412)))

(declare-fun b!3711346 () Bool)

(declare-fun tp!1129477 () Bool)

(declare-fun tp!1129473 () Bool)

(assert (=> b!3711346 (= e!2298412 (and tp!1129477 tp!1129473))))

(declare-fun b!3711343 () Bool)

(assert (=> b!3711343 (= e!2298412 tp_is_empty!18705)))

(declare-fun b!3711344 () Bool)

(declare-fun tp!1129474 () Bool)

(declare-fun tp!1129476 () Bool)

(assert (=> b!3711344 (= e!2298412 (and tp!1129474 tp!1129476))))

(declare-fun b!3711345 () Bool)

(declare-fun tp!1129475 () Bool)

(assert (=> b!3711345 (= e!2298412 tp!1129475)))

(assert (= (and b!3711179 ((_ is ElementMatch!10845) (regTwo!22202 r!26326))) b!3711343))

(assert (= (and b!3711179 ((_ is Concat!17116) (regTwo!22202 r!26326))) b!3711344))

(assert (= (and b!3711179 ((_ is Star!10845) (regTwo!22202 r!26326))) b!3711345))

(assert (= (and b!3711179 ((_ is Union!10845) (regTwo!22202 r!26326))) b!3711346))

(declare-fun e!2298413 () Bool)

(assert (=> b!3711185 (= tp!1129443 e!2298413)))

(declare-fun b!3711350 () Bool)

(declare-fun tp!1129482 () Bool)

(declare-fun tp!1129478 () Bool)

(assert (=> b!3711350 (= e!2298413 (and tp!1129482 tp!1129478))))

(declare-fun b!3711347 () Bool)

(assert (=> b!3711347 (= e!2298413 tp_is_empty!18705)))

(declare-fun b!3711348 () Bool)

(declare-fun tp!1129479 () Bool)

(declare-fun tp!1129481 () Bool)

(assert (=> b!3711348 (= e!2298413 (and tp!1129479 tp!1129481))))

(declare-fun b!3711349 () Bool)

(declare-fun tp!1129480 () Bool)

(assert (=> b!3711349 (= e!2298413 tp!1129480)))

(assert (= (and b!3711185 ((_ is ElementMatch!10845) (reg!11174 r!26326))) b!3711347))

(assert (= (and b!3711185 ((_ is Concat!17116) (reg!11174 r!26326))) b!3711348))

(assert (= (and b!3711185 ((_ is Star!10845) (reg!11174 r!26326))) b!3711349))

(assert (= (and b!3711185 ((_ is Union!10845) (reg!11174 r!26326))) b!3711350))

(check-sat (not b!3711332) (not b!3711327) (not bm!268420) (not b!3711346) (not bm!268405) (not b!3711331) (not b!3711324) (not b!3711344) (not b!3711323) tp_is_empty!18705 (not b!3711330) (not d!1087140) (not b!3711326) (not b!3711310) (not d!1087144) (not b!3711305) (not b!3711349) (not b!3711345) (not d!1087134) (not bm!268389) (not b!3711322) (not b!3711350) (not d!1087132) (not bm!268404) (not b!3711226) (not b!3711348) (not b!3711191) (not bm!268390) (not bm!268406) (not bm!268418) (not b!3711234) (not b!3711328))
(check-sat)
