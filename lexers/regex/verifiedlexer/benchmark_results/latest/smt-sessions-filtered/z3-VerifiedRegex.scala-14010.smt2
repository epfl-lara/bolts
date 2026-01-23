; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740434 () Bool)

(assert start!740434)

(declare-fun b!7779251 () Bool)

(declare-fun e!4608356 () Bool)

(declare-fun tp_is_empty!51985 () Bool)

(assert (=> b!7779251 (= e!4608356 tp_is_empty!51985)))

(declare-fun b!7779252 () Bool)

(declare-fun tp!2286380 () Bool)

(declare-fun tp!2286384 () Bool)

(assert (=> b!7779252 (= e!4608356 (and tp!2286380 tp!2286384))))

(declare-fun b!7779253 () Bool)

(declare-fun e!4608352 () Bool)

(declare-fun e!4608354 () Bool)

(assert (=> b!7779253 (= e!4608352 e!4608354)))

(declare-fun res!3100864 () Bool)

(assert (=> b!7779253 (=> (not res!3100864) (not e!4608354))))

(declare-datatypes ((C!41956 0))(
  ( (C!41957 (val!31418 Int)) )
))
(declare-datatypes ((Regex!20815 0))(
  ( (ElementMatch!20815 (c!1433460 C!41956)) (Concat!29660 (regOne!42142 Regex!20815) (regTwo!42142 Regex!20815)) (EmptyExpr!20815) (Star!20815 (reg!21144 Regex!20815)) (EmptyLang!20815) (Union!20815 (regOne!42143 Regex!20815) (regTwo!42143 Regex!20815)) )
))
(declare-fun lt!2672654 () Regex!20815)

(declare-datatypes ((List!73654 0))(
  ( (Nil!73530) (Cons!73530 (h!79978 C!41956) (t!388389 List!73654)) )
))
(declare-fun s!14292 () List!73654)

(declare-fun matchR!10275 (Regex!20815 List!73654) Bool)

(assert (=> b!7779253 (= res!3100864 (matchR!10275 lt!2672654 s!14292))))

(declare-fun r1!6279 () Regex!20815)

(declare-fun r2!6217 () Regex!20815)

(assert (=> b!7779253 (= lt!2672654 (Concat!29660 r1!6279 r2!6217))))

(declare-fun b!7779255 () Bool)

(declare-fun e!4608357 () Bool)

(declare-fun tp!2286379 () Bool)

(declare-fun tp!2286387 () Bool)

(assert (=> b!7779255 (= e!4608357 (and tp!2286379 tp!2286387))))

(declare-fun b!7779256 () Bool)

(declare-fun tp!2286385 () Bool)

(declare-fun tp!2286389 () Bool)

(assert (=> b!7779256 (= e!4608357 (and tp!2286385 tp!2286389))))

(declare-fun b!7779257 () Bool)

(declare-fun res!3100859 () Bool)

(assert (=> b!7779257 (=> (not res!3100859) (not e!4608354))))

(get-info :version)

(assert (=> b!7779257 (= res!3100859 ((_ is Cons!73530) s!14292))))

(declare-fun b!7779258 () Bool)

(declare-fun e!4608355 () Bool)

(assert (=> b!7779258 (= e!4608355 (matchR!10275 EmptyLang!20815 (t!388389 s!14292)))))

(declare-fun b!7779259 () Bool)

(declare-fun res!3100860 () Bool)

(assert (=> b!7779259 (=> (not res!3100860) (not e!4608352))))

(declare-fun validRegex!11229 (Regex!20815) Bool)

(assert (=> b!7779259 (= res!3100860 (validRegex!11229 r2!6217))))

(declare-fun b!7779260 () Bool)

(declare-fun tp!2286381 () Bool)

(declare-fun tp!2286388 () Bool)

(assert (=> b!7779260 (= e!4608356 (and tp!2286381 tp!2286388))))

(declare-fun b!7779261 () Bool)

(declare-fun e!4608353 () Bool)

(declare-fun tp!2286382 () Bool)

(assert (=> b!7779261 (= e!4608353 (and tp_is_empty!51985 tp!2286382))))

(declare-fun b!7779262 () Bool)

(declare-fun res!3100857 () Bool)

(declare-fun e!4608351 () Bool)

(assert (=> b!7779262 (=> (not res!3100857) (not e!4608351))))

(declare-fun nullable!9203 (Regex!20815) Bool)

(assert (=> b!7779262 (= res!3100857 (not (nullable!9203 r1!6279)))))

(declare-fun b!7779263 () Bool)

(declare-fun tp!2286383 () Bool)

(assert (=> b!7779263 (= e!4608357 tp!2286383)))

(declare-fun res!3100862 () Bool)

(assert (=> start!740434 (=> (not res!3100862) (not e!4608352))))

(assert (=> start!740434 (= res!3100862 (validRegex!11229 r1!6279))))

(assert (=> start!740434 e!4608352))

(assert (=> start!740434 e!4608356))

(assert (=> start!740434 e!4608357))

(assert (=> start!740434 e!4608353))

(declare-fun b!7779254 () Bool)

(declare-fun tp!2286386 () Bool)

(assert (=> b!7779254 (= e!4608356 tp!2286386)))

(declare-fun b!7779264 () Bool)

(assert (=> b!7779264 (= e!4608357 tp_is_empty!51985)))

(declare-fun b!7779265 () Bool)

(assert (=> b!7779265 (= e!4608354 e!4608351)))

(declare-fun res!3100863 () Bool)

(assert (=> b!7779265 (=> (not res!3100863) (not e!4608351))))

(declare-fun lt!2672653 () Regex!20815)

(assert (=> b!7779265 (= res!3100863 (matchR!10275 lt!2672653 (t!388389 s!14292)))))

(declare-fun derivativeStep!6158 (Regex!20815 C!41956) Regex!20815)

(assert (=> b!7779265 (= lt!2672653 (derivativeStep!6158 lt!2672654 (h!79978 s!14292)))))

(declare-fun b!7779266 () Bool)

(declare-fun e!4608350 () Bool)

(declare-fun lt!2672652 () Regex!20815)

(assert (=> b!7779266 (= e!4608350 (not (validRegex!11229 lt!2672652)))))

(declare-fun derivative!543 (Regex!20815 List!73654) Regex!20815)

(assert (=> b!7779266 (= (derivative!543 EmptyLang!20815 (t!388389 s!14292)) EmptyLang!20815)))

(declare-datatypes ((Unit!168520 0))(
  ( (Unit!168521) )
))
(declare-fun lt!2672655 () Unit!168520)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!78 (Regex!20815 List!73654) Unit!168520)

(assert (=> b!7779266 (= lt!2672655 (lemmaEmptyLangDerivativeIsAFixPoint!78 EmptyLang!20815 (t!388389 s!14292)))))

(assert (=> b!7779266 e!4608355))

(declare-fun res!3100858 () Bool)

(assert (=> b!7779266 (=> res!3100858 e!4608355)))

(assert (=> b!7779266 (= res!3100858 (matchR!10275 lt!2672652 (t!388389 s!14292)))))

(declare-fun lt!2672656 () Unit!168520)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!384 (Regex!20815 Regex!20815 List!73654) Unit!168520)

(assert (=> b!7779266 (= lt!2672656 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!384 lt!2672652 EmptyLang!20815 (t!388389 s!14292)))))

(declare-fun b!7779267 () Bool)

(assert (=> b!7779267 (= e!4608351 e!4608350)))

(declare-fun res!3100861 () Bool)

(assert (=> b!7779267 (=> (not res!3100861) (not e!4608350))))

(assert (=> b!7779267 (= res!3100861 (= lt!2672653 (Union!20815 lt!2672652 EmptyLang!20815)))))

(assert (=> b!7779267 (= lt!2672652 (Concat!29660 (derivativeStep!6158 r1!6279 (h!79978 s!14292)) r2!6217))))

(assert (= (and start!740434 res!3100862) b!7779259))

(assert (= (and b!7779259 res!3100860) b!7779253))

(assert (= (and b!7779253 res!3100864) b!7779257))

(assert (= (and b!7779257 res!3100859) b!7779265))

(assert (= (and b!7779265 res!3100863) b!7779262))

(assert (= (and b!7779262 res!3100857) b!7779267))

(assert (= (and b!7779267 res!3100861) b!7779266))

(assert (= (and b!7779266 (not res!3100858)) b!7779258))

(assert (= (and start!740434 ((_ is ElementMatch!20815) r1!6279)) b!7779251))

(assert (= (and start!740434 ((_ is Concat!29660) r1!6279)) b!7779260))

(assert (= (and start!740434 ((_ is Star!20815) r1!6279)) b!7779254))

(assert (= (and start!740434 ((_ is Union!20815) r1!6279)) b!7779252))

(assert (= (and start!740434 ((_ is ElementMatch!20815) r2!6217)) b!7779264))

(assert (= (and start!740434 ((_ is Concat!29660) r2!6217)) b!7779255))

(assert (= (and start!740434 ((_ is Star!20815) r2!6217)) b!7779263))

(assert (= (and start!740434 ((_ is Union!20815) r2!6217)) b!7779256))

(assert (= (and start!740434 ((_ is Cons!73530) s!14292)) b!7779261))

(declare-fun m!8228272 () Bool)

(assert (=> b!7779253 m!8228272))

(declare-fun m!8228274 () Bool)

(assert (=> b!7779267 m!8228274))

(declare-fun m!8228276 () Bool)

(assert (=> start!740434 m!8228276))

(declare-fun m!8228278 () Bool)

(assert (=> b!7779258 m!8228278))

(declare-fun m!8228280 () Bool)

(assert (=> b!7779266 m!8228280))

(declare-fun m!8228282 () Bool)

(assert (=> b!7779266 m!8228282))

(declare-fun m!8228284 () Bool)

(assert (=> b!7779266 m!8228284))

(declare-fun m!8228286 () Bool)

(assert (=> b!7779266 m!8228286))

(declare-fun m!8228288 () Bool)

(assert (=> b!7779266 m!8228288))

(declare-fun m!8228290 () Bool)

(assert (=> b!7779259 m!8228290))

(declare-fun m!8228292 () Bool)

(assert (=> b!7779262 m!8228292))

(declare-fun m!8228294 () Bool)

(assert (=> b!7779265 m!8228294))

(declare-fun m!8228296 () Bool)

(assert (=> b!7779265 m!8228296))

(check-sat (not b!7779255) (not b!7779266) (not b!7779252) (not b!7779263) (not b!7779260) (not b!7779262) tp_is_empty!51985 (not b!7779254) (not b!7779258) (not b!7779256) (not b!7779267) (not b!7779261) (not start!740434) (not b!7779265) (not b!7779259) (not b!7779253))
(check-sat)
(get-model)

(declare-fun b!7779338 () Bool)

(declare-fun res!3100907 () Bool)

(declare-fun e!4608397 () Bool)

(assert (=> b!7779338 (=> (not res!3100907) (not e!4608397))))

(declare-fun call!721042 () Bool)

(assert (=> b!7779338 (= res!3100907 (not call!721042))))

(declare-fun b!7779339 () Bool)

(declare-fun res!3100906 () Bool)

(declare-fun e!4608395 () Bool)

(assert (=> b!7779339 (=> res!3100906 e!4608395)))

(assert (=> b!7779339 (= res!3100906 e!4608397)))

(declare-fun res!3100910 () Bool)

(assert (=> b!7779339 (=> (not res!3100910) (not e!4608397))))

(declare-fun lt!2672662 () Bool)

(assert (=> b!7779339 (= res!3100910 lt!2672662)))

(declare-fun d!2345027 () Bool)

(declare-fun e!4608398 () Bool)

(assert (=> d!2345027 e!4608398))

(declare-fun c!1433477 () Bool)

(assert (=> d!2345027 (= c!1433477 ((_ is EmptyExpr!20815) EmptyLang!20815))))

(declare-fun e!4608399 () Bool)

(assert (=> d!2345027 (= lt!2672662 e!4608399)))

(declare-fun c!1433476 () Bool)

(declare-fun isEmpty!42179 (List!73654) Bool)

(assert (=> d!2345027 (= c!1433476 (isEmpty!42179 (t!388389 s!14292)))))

(assert (=> d!2345027 (validRegex!11229 EmptyLang!20815)))

(assert (=> d!2345027 (= (matchR!10275 EmptyLang!20815 (t!388389 s!14292)) lt!2672662)))

(declare-fun b!7779340 () Bool)

(declare-fun res!3100912 () Bool)

(assert (=> b!7779340 (=> (not res!3100912) (not e!4608397))))

(declare-fun tail!15451 (List!73654) List!73654)

(assert (=> b!7779340 (= res!3100912 (isEmpty!42179 (tail!15451 (t!388389 s!14292))))))

(declare-fun b!7779341 () Bool)

(declare-fun e!4608393 () Bool)

(assert (=> b!7779341 (= e!4608398 e!4608393)))

(declare-fun c!1433478 () Bool)

(assert (=> b!7779341 (= c!1433478 ((_ is EmptyLang!20815) EmptyLang!20815))))

(declare-fun b!7779342 () Bool)

(assert (=> b!7779342 (= e!4608393 (not lt!2672662))))

(declare-fun b!7779343 () Bool)

(declare-fun e!4608396 () Bool)

(declare-fun e!4608394 () Bool)

(assert (=> b!7779343 (= e!4608396 e!4608394)))

(declare-fun res!3100909 () Bool)

(assert (=> b!7779343 (=> res!3100909 e!4608394)))

(assert (=> b!7779343 (= res!3100909 call!721042)))

(declare-fun bm!721037 () Bool)

(assert (=> bm!721037 (= call!721042 (isEmpty!42179 (t!388389 s!14292)))))

(declare-fun b!7779344 () Bool)

(assert (=> b!7779344 (= e!4608395 e!4608396)))

(declare-fun res!3100911 () Bool)

(assert (=> b!7779344 (=> (not res!3100911) (not e!4608396))))

(assert (=> b!7779344 (= res!3100911 (not lt!2672662))))

(declare-fun b!7779345 () Bool)

(declare-fun head!15910 (List!73654) C!41956)

(assert (=> b!7779345 (= e!4608399 (matchR!10275 (derivativeStep!6158 EmptyLang!20815 (head!15910 (t!388389 s!14292))) (tail!15451 (t!388389 s!14292))))))

(declare-fun b!7779346 () Bool)

(assert (=> b!7779346 (= e!4608397 (= (head!15910 (t!388389 s!14292)) (c!1433460 EmptyLang!20815)))))

(declare-fun b!7779347 () Bool)

(declare-fun res!3100905 () Bool)

(assert (=> b!7779347 (=> res!3100905 e!4608394)))

(assert (=> b!7779347 (= res!3100905 (not (isEmpty!42179 (tail!15451 (t!388389 s!14292)))))))

(declare-fun b!7779348 () Bool)

(assert (=> b!7779348 (= e!4608394 (not (= (head!15910 (t!388389 s!14292)) (c!1433460 EmptyLang!20815))))))

(declare-fun b!7779349 () Bool)

(declare-fun res!3100908 () Bool)

(assert (=> b!7779349 (=> res!3100908 e!4608395)))

(assert (=> b!7779349 (= res!3100908 (not ((_ is ElementMatch!20815) EmptyLang!20815)))))

(assert (=> b!7779349 (= e!4608393 e!4608395)))

(declare-fun b!7779350 () Bool)

(assert (=> b!7779350 (= e!4608399 (nullable!9203 EmptyLang!20815))))

(declare-fun b!7779351 () Bool)

(assert (=> b!7779351 (= e!4608398 (= lt!2672662 call!721042))))

(assert (= (and d!2345027 c!1433476) b!7779350))

(assert (= (and d!2345027 (not c!1433476)) b!7779345))

(assert (= (and d!2345027 c!1433477) b!7779351))

(assert (= (and d!2345027 (not c!1433477)) b!7779341))

(assert (= (and b!7779341 c!1433478) b!7779342))

(assert (= (and b!7779341 (not c!1433478)) b!7779349))

(assert (= (and b!7779349 (not res!3100908)) b!7779339))

(assert (= (and b!7779339 res!3100910) b!7779338))

(assert (= (and b!7779338 res!3100907) b!7779340))

(assert (= (and b!7779340 res!3100912) b!7779346))

(assert (= (and b!7779339 (not res!3100906)) b!7779344))

(assert (= (and b!7779344 res!3100911) b!7779343))

(assert (= (and b!7779343 (not res!3100909)) b!7779347))

(assert (= (and b!7779347 (not res!3100905)) b!7779348))

(assert (= (or b!7779351 b!7779338 b!7779343) bm!721037))

(declare-fun m!8228306 () Bool)

(assert (=> b!7779348 m!8228306))

(declare-fun m!8228308 () Bool)

(assert (=> bm!721037 m!8228308))

(declare-fun m!8228312 () Bool)

(assert (=> b!7779340 m!8228312))

(assert (=> b!7779340 m!8228312))

(declare-fun m!8228318 () Bool)

(assert (=> b!7779340 m!8228318))

(declare-fun m!8228320 () Bool)

(assert (=> b!7779350 m!8228320))

(assert (=> b!7779347 m!8228312))

(assert (=> b!7779347 m!8228312))

(assert (=> b!7779347 m!8228318))

(assert (=> b!7779346 m!8228306))

(assert (=> b!7779345 m!8228306))

(assert (=> b!7779345 m!8228306))

(declare-fun m!8228324 () Bool)

(assert (=> b!7779345 m!8228324))

(assert (=> b!7779345 m!8228312))

(assert (=> b!7779345 m!8228324))

(assert (=> b!7779345 m!8228312))

(declare-fun m!8228326 () Bool)

(assert (=> b!7779345 m!8228326))

(assert (=> d!2345027 m!8228308))

(declare-fun m!8228328 () Bool)

(assert (=> d!2345027 m!8228328))

(assert (=> b!7779258 d!2345027))

(declare-fun b!7779352 () Bool)

(declare-fun res!3100915 () Bool)

(declare-fun e!4608404 () Bool)

(assert (=> b!7779352 (=> (not res!3100915) (not e!4608404))))

(declare-fun call!721043 () Bool)

(assert (=> b!7779352 (= res!3100915 (not call!721043))))

(declare-fun b!7779353 () Bool)

(declare-fun res!3100914 () Bool)

(declare-fun e!4608402 () Bool)

(assert (=> b!7779353 (=> res!3100914 e!4608402)))

(assert (=> b!7779353 (= res!3100914 e!4608404)))

(declare-fun res!3100918 () Bool)

(assert (=> b!7779353 (=> (not res!3100918) (not e!4608404))))

(declare-fun lt!2672663 () Bool)

(assert (=> b!7779353 (= res!3100918 lt!2672663)))

(declare-fun d!2345033 () Bool)

(declare-fun e!4608405 () Bool)

(assert (=> d!2345033 e!4608405))

(declare-fun c!1433480 () Bool)

(assert (=> d!2345033 (= c!1433480 ((_ is EmptyExpr!20815) lt!2672654))))

(declare-fun e!4608406 () Bool)

(assert (=> d!2345033 (= lt!2672663 e!4608406)))

(declare-fun c!1433479 () Bool)

(assert (=> d!2345033 (= c!1433479 (isEmpty!42179 s!14292))))

(assert (=> d!2345033 (validRegex!11229 lt!2672654)))

(assert (=> d!2345033 (= (matchR!10275 lt!2672654 s!14292) lt!2672663)))

(declare-fun b!7779354 () Bool)

(declare-fun res!3100920 () Bool)

(assert (=> b!7779354 (=> (not res!3100920) (not e!4608404))))

(assert (=> b!7779354 (= res!3100920 (isEmpty!42179 (tail!15451 s!14292)))))

(declare-fun b!7779355 () Bool)

(declare-fun e!4608400 () Bool)

(assert (=> b!7779355 (= e!4608405 e!4608400)))

(declare-fun c!1433481 () Bool)

(assert (=> b!7779355 (= c!1433481 ((_ is EmptyLang!20815) lt!2672654))))

(declare-fun b!7779356 () Bool)

(assert (=> b!7779356 (= e!4608400 (not lt!2672663))))

(declare-fun b!7779357 () Bool)

(declare-fun e!4608403 () Bool)

(declare-fun e!4608401 () Bool)

(assert (=> b!7779357 (= e!4608403 e!4608401)))

(declare-fun res!3100917 () Bool)

(assert (=> b!7779357 (=> res!3100917 e!4608401)))

(assert (=> b!7779357 (= res!3100917 call!721043)))

(declare-fun bm!721038 () Bool)

(assert (=> bm!721038 (= call!721043 (isEmpty!42179 s!14292))))

(declare-fun b!7779358 () Bool)

(assert (=> b!7779358 (= e!4608402 e!4608403)))

(declare-fun res!3100919 () Bool)

(assert (=> b!7779358 (=> (not res!3100919) (not e!4608403))))

(assert (=> b!7779358 (= res!3100919 (not lt!2672663))))

(declare-fun b!7779359 () Bool)

(assert (=> b!7779359 (= e!4608406 (matchR!10275 (derivativeStep!6158 lt!2672654 (head!15910 s!14292)) (tail!15451 s!14292)))))

(declare-fun b!7779360 () Bool)

(assert (=> b!7779360 (= e!4608404 (= (head!15910 s!14292) (c!1433460 lt!2672654)))))

(declare-fun b!7779361 () Bool)

(declare-fun res!3100913 () Bool)

(assert (=> b!7779361 (=> res!3100913 e!4608401)))

(assert (=> b!7779361 (= res!3100913 (not (isEmpty!42179 (tail!15451 s!14292))))))

(declare-fun b!7779362 () Bool)

(assert (=> b!7779362 (= e!4608401 (not (= (head!15910 s!14292) (c!1433460 lt!2672654))))))

(declare-fun b!7779363 () Bool)

(declare-fun res!3100916 () Bool)

(assert (=> b!7779363 (=> res!3100916 e!4608402)))

(assert (=> b!7779363 (= res!3100916 (not ((_ is ElementMatch!20815) lt!2672654)))))

(assert (=> b!7779363 (= e!4608400 e!4608402)))

(declare-fun b!7779364 () Bool)

(assert (=> b!7779364 (= e!4608406 (nullable!9203 lt!2672654))))

(declare-fun b!7779365 () Bool)

(assert (=> b!7779365 (= e!4608405 (= lt!2672663 call!721043))))

(assert (= (and d!2345033 c!1433479) b!7779364))

(assert (= (and d!2345033 (not c!1433479)) b!7779359))

(assert (= (and d!2345033 c!1433480) b!7779365))

(assert (= (and d!2345033 (not c!1433480)) b!7779355))

(assert (= (and b!7779355 c!1433481) b!7779356))

(assert (= (and b!7779355 (not c!1433481)) b!7779363))

(assert (= (and b!7779363 (not res!3100916)) b!7779353))

(assert (= (and b!7779353 res!3100918) b!7779352))

(assert (= (and b!7779352 res!3100915) b!7779354))

(assert (= (and b!7779354 res!3100920) b!7779360))

(assert (= (and b!7779353 (not res!3100914)) b!7779358))

(assert (= (and b!7779358 res!3100919) b!7779357))

(assert (= (and b!7779357 (not res!3100917)) b!7779361))

(assert (= (and b!7779361 (not res!3100913)) b!7779362))

(assert (= (or b!7779365 b!7779352 b!7779357) bm!721038))

(declare-fun m!8228330 () Bool)

(assert (=> b!7779362 m!8228330))

(declare-fun m!8228332 () Bool)

(assert (=> bm!721038 m!8228332))

(declare-fun m!8228334 () Bool)

(assert (=> b!7779354 m!8228334))

(assert (=> b!7779354 m!8228334))

(declare-fun m!8228336 () Bool)

(assert (=> b!7779354 m!8228336))

(declare-fun m!8228338 () Bool)

(assert (=> b!7779364 m!8228338))

(assert (=> b!7779361 m!8228334))

(assert (=> b!7779361 m!8228334))

(assert (=> b!7779361 m!8228336))

(assert (=> b!7779360 m!8228330))

(assert (=> b!7779359 m!8228330))

(assert (=> b!7779359 m!8228330))

(declare-fun m!8228340 () Bool)

(assert (=> b!7779359 m!8228340))

(assert (=> b!7779359 m!8228334))

(assert (=> b!7779359 m!8228340))

(assert (=> b!7779359 m!8228334))

(declare-fun m!8228342 () Bool)

(assert (=> b!7779359 m!8228342))

(assert (=> d!2345033 m!8228332))

(declare-fun m!8228344 () Bool)

(assert (=> d!2345033 m!8228344))

(assert (=> b!7779253 d!2345033))

(declare-fun b!7779404 () Bool)

(declare-fun res!3100934 () Bool)

(declare-fun e!4608432 () Bool)

(assert (=> b!7779404 (=> (not res!3100934) (not e!4608432))))

(declare-fun call!721059 () Bool)

(assert (=> b!7779404 (= res!3100934 call!721059)))

(declare-fun e!4608435 () Bool)

(assert (=> b!7779404 (= e!4608435 e!4608432)))

(declare-fun b!7779405 () Bool)

(declare-fun call!721058 () Bool)

(assert (=> b!7779405 (= e!4608432 call!721058)))

(declare-fun b!7779406 () Bool)

(declare-fun e!4608431 () Bool)

(declare-fun e!4608436 () Bool)

(assert (=> b!7779406 (= e!4608431 e!4608436)))

(declare-fun res!3100931 () Bool)

(assert (=> b!7779406 (=> (not res!3100931) (not e!4608436))))

(assert (=> b!7779406 (= res!3100931 call!721059)))

(declare-fun b!7779407 () Bool)

(declare-fun e!4608433 () Bool)

(assert (=> b!7779407 (= e!4608433 e!4608435)))

(declare-fun c!1433497 () Bool)

(assert (=> b!7779407 (= c!1433497 ((_ is Union!20815) r2!6217))))

(declare-fun b!7779408 () Bool)

(declare-fun e!4608437 () Bool)

(assert (=> b!7779408 (= e!4608433 e!4608437)))

(declare-fun res!3100932 () Bool)

(assert (=> b!7779408 (= res!3100932 (not (nullable!9203 (reg!21144 r2!6217))))))

(assert (=> b!7779408 (=> (not res!3100932) (not e!4608437))))

(declare-fun c!1433496 () Bool)

(declare-fun bm!721053 () Bool)

(declare-fun call!721060 () Bool)

(assert (=> bm!721053 (= call!721060 (validRegex!11229 (ite c!1433496 (reg!21144 r2!6217) (ite c!1433497 (regOne!42143 r2!6217) (regOne!42142 r2!6217)))))))

(declare-fun b!7779409 () Bool)

(assert (=> b!7779409 (= e!4608436 call!721058)))

(declare-fun bm!721055 () Bool)

(assert (=> bm!721055 (= call!721059 call!721060)))

(declare-fun b!7779410 () Bool)

(declare-fun res!3100933 () Bool)

(assert (=> b!7779410 (=> res!3100933 e!4608431)))

(assert (=> b!7779410 (= res!3100933 (not ((_ is Concat!29660) r2!6217)))))

(assert (=> b!7779410 (= e!4608435 e!4608431)))

(declare-fun d!2345035 () Bool)

(declare-fun res!3100935 () Bool)

(declare-fun e!4608434 () Bool)

(assert (=> d!2345035 (=> res!3100935 e!4608434)))

(assert (=> d!2345035 (= res!3100935 ((_ is ElementMatch!20815) r2!6217))))

(assert (=> d!2345035 (= (validRegex!11229 r2!6217) e!4608434)))

(declare-fun bm!721054 () Bool)

(assert (=> bm!721054 (= call!721058 (validRegex!11229 (ite c!1433497 (regTwo!42143 r2!6217) (regTwo!42142 r2!6217))))))

(declare-fun b!7779411 () Bool)

(assert (=> b!7779411 (= e!4608434 e!4608433)))

(assert (=> b!7779411 (= c!1433496 ((_ is Star!20815) r2!6217))))

(declare-fun b!7779412 () Bool)

(assert (=> b!7779412 (= e!4608437 call!721060)))

(assert (= (and d!2345035 (not res!3100935)) b!7779411))

(assert (= (and b!7779411 c!1433496) b!7779408))

(assert (= (and b!7779411 (not c!1433496)) b!7779407))

(assert (= (and b!7779408 res!3100932) b!7779412))

(assert (= (and b!7779407 c!1433497) b!7779404))

(assert (= (and b!7779407 (not c!1433497)) b!7779410))

(assert (= (and b!7779404 res!3100934) b!7779405))

(assert (= (and b!7779410 (not res!3100933)) b!7779406))

(assert (= (and b!7779406 res!3100931) b!7779409))

(assert (= (or b!7779404 b!7779406) bm!721055))

(assert (= (or b!7779405 b!7779409) bm!721054))

(assert (= (or b!7779412 bm!721055) bm!721053))

(declare-fun m!8228346 () Bool)

(assert (=> b!7779408 m!8228346))

(declare-fun m!8228348 () Bool)

(assert (=> bm!721053 m!8228348))

(declare-fun m!8228350 () Bool)

(assert (=> bm!721054 m!8228350))

(assert (=> b!7779259 d!2345035))

(declare-fun b!7779413 () Bool)

(declare-fun res!3100938 () Bool)

(declare-fun e!4608442 () Bool)

(assert (=> b!7779413 (=> (not res!3100938) (not e!4608442))))

(declare-fun call!721061 () Bool)

(assert (=> b!7779413 (= res!3100938 (not call!721061))))

(declare-fun b!7779414 () Bool)

(declare-fun res!3100937 () Bool)

(declare-fun e!4608440 () Bool)

(assert (=> b!7779414 (=> res!3100937 e!4608440)))

(assert (=> b!7779414 (= res!3100937 e!4608442)))

(declare-fun res!3100941 () Bool)

(assert (=> b!7779414 (=> (not res!3100941) (not e!4608442))))

(declare-fun lt!2672666 () Bool)

(assert (=> b!7779414 (= res!3100941 lt!2672666)))

(declare-fun d!2345037 () Bool)

(declare-fun e!4608443 () Bool)

(assert (=> d!2345037 e!4608443))

(declare-fun c!1433499 () Bool)

(assert (=> d!2345037 (= c!1433499 ((_ is EmptyExpr!20815) lt!2672653))))

(declare-fun e!4608444 () Bool)

(assert (=> d!2345037 (= lt!2672666 e!4608444)))

(declare-fun c!1433498 () Bool)

(assert (=> d!2345037 (= c!1433498 (isEmpty!42179 (t!388389 s!14292)))))

(assert (=> d!2345037 (validRegex!11229 lt!2672653)))

(assert (=> d!2345037 (= (matchR!10275 lt!2672653 (t!388389 s!14292)) lt!2672666)))

(declare-fun b!7779415 () Bool)

(declare-fun res!3100943 () Bool)

(assert (=> b!7779415 (=> (not res!3100943) (not e!4608442))))

(assert (=> b!7779415 (= res!3100943 (isEmpty!42179 (tail!15451 (t!388389 s!14292))))))

(declare-fun b!7779416 () Bool)

(declare-fun e!4608438 () Bool)

(assert (=> b!7779416 (= e!4608443 e!4608438)))

(declare-fun c!1433500 () Bool)

(assert (=> b!7779416 (= c!1433500 ((_ is EmptyLang!20815) lt!2672653))))

(declare-fun b!7779417 () Bool)

(assert (=> b!7779417 (= e!4608438 (not lt!2672666))))

(declare-fun b!7779418 () Bool)

(declare-fun e!4608441 () Bool)

(declare-fun e!4608439 () Bool)

(assert (=> b!7779418 (= e!4608441 e!4608439)))

(declare-fun res!3100940 () Bool)

(assert (=> b!7779418 (=> res!3100940 e!4608439)))

(assert (=> b!7779418 (= res!3100940 call!721061)))

(declare-fun bm!721056 () Bool)

(assert (=> bm!721056 (= call!721061 (isEmpty!42179 (t!388389 s!14292)))))

(declare-fun b!7779419 () Bool)

(assert (=> b!7779419 (= e!4608440 e!4608441)))

(declare-fun res!3100942 () Bool)

(assert (=> b!7779419 (=> (not res!3100942) (not e!4608441))))

(assert (=> b!7779419 (= res!3100942 (not lt!2672666))))

(declare-fun b!7779420 () Bool)

(assert (=> b!7779420 (= e!4608444 (matchR!10275 (derivativeStep!6158 lt!2672653 (head!15910 (t!388389 s!14292))) (tail!15451 (t!388389 s!14292))))))

(declare-fun b!7779421 () Bool)

(assert (=> b!7779421 (= e!4608442 (= (head!15910 (t!388389 s!14292)) (c!1433460 lt!2672653)))))

(declare-fun b!7779422 () Bool)

(declare-fun res!3100936 () Bool)

(assert (=> b!7779422 (=> res!3100936 e!4608439)))

(assert (=> b!7779422 (= res!3100936 (not (isEmpty!42179 (tail!15451 (t!388389 s!14292)))))))

(declare-fun b!7779423 () Bool)

(assert (=> b!7779423 (= e!4608439 (not (= (head!15910 (t!388389 s!14292)) (c!1433460 lt!2672653))))))

(declare-fun b!7779424 () Bool)

(declare-fun res!3100939 () Bool)

(assert (=> b!7779424 (=> res!3100939 e!4608440)))

(assert (=> b!7779424 (= res!3100939 (not ((_ is ElementMatch!20815) lt!2672653)))))

(assert (=> b!7779424 (= e!4608438 e!4608440)))

(declare-fun b!7779425 () Bool)

(assert (=> b!7779425 (= e!4608444 (nullable!9203 lt!2672653))))

(declare-fun b!7779426 () Bool)

(assert (=> b!7779426 (= e!4608443 (= lt!2672666 call!721061))))

(assert (= (and d!2345037 c!1433498) b!7779425))

(assert (= (and d!2345037 (not c!1433498)) b!7779420))

(assert (= (and d!2345037 c!1433499) b!7779426))

(assert (= (and d!2345037 (not c!1433499)) b!7779416))

(assert (= (and b!7779416 c!1433500) b!7779417))

(assert (= (and b!7779416 (not c!1433500)) b!7779424))

(assert (= (and b!7779424 (not res!3100939)) b!7779414))

(assert (= (and b!7779414 res!3100941) b!7779413))

(assert (= (and b!7779413 res!3100938) b!7779415))

(assert (= (and b!7779415 res!3100943) b!7779421))

(assert (= (and b!7779414 (not res!3100937)) b!7779419))

(assert (= (and b!7779419 res!3100942) b!7779418))

(assert (= (and b!7779418 (not res!3100940)) b!7779422))

(assert (= (and b!7779422 (not res!3100936)) b!7779423))

(assert (= (or b!7779426 b!7779413 b!7779418) bm!721056))

(assert (=> b!7779423 m!8228306))

(assert (=> bm!721056 m!8228308))

(assert (=> b!7779415 m!8228312))

(assert (=> b!7779415 m!8228312))

(assert (=> b!7779415 m!8228318))

(declare-fun m!8228352 () Bool)

(assert (=> b!7779425 m!8228352))

(assert (=> b!7779422 m!8228312))

(assert (=> b!7779422 m!8228312))

(assert (=> b!7779422 m!8228318))

(assert (=> b!7779421 m!8228306))

(assert (=> b!7779420 m!8228306))

(assert (=> b!7779420 m!8228306))

(declare-fun m!8228354 () Bool)

(assert (=> b!7779420 m!8228354))

(assert (=> b!7779420 m!8228312))

(assert (=> b!7779420 m!8228354))

(assert (=> b!7779420 m!8228312))

(declare-fun m!8228356 () Bool)

(assert (=> b!7779420 m!8228356))

(assert (=> d!2345037 m!8228308))

(declare-fun m!8228358 () Bool)

(assert (=> d!2345037 m!8228358))

(assert (=> b!7779265 d!2345037))

(declare-fun b!7779516 () Bool)

(declare-fun e!4608504 () Regex!20815)

(declare-fun call!721093 () Regex!20815)

(assert (=> b!7779516 (= e!4608504 (Union!20815 (Concat!29660 call!721093 (regTwo!42142 lt!2672654)) EmptyLang!20815))))

(declare-fun b!7779517 () Bool)

(declare-fun e!4608505 () Regex!20815)

(assert (=> b!7779517 (= e!4608505 (ite (= (h!79978 s!14292) (c!1433460 lt!2672654)) EmptyExpr!20815 EmptyLang!20815))))

(declare-fun call!721092 () Regex!20815)

(declare-fun b!7779518 () Bool)

(assert (=> b!7779518 (= e!4608504 (Union!20815 (Concat!29660 call!721092 (regTwo!42142 lt!2672654)) call!721093))))

(declare-fun b!7779519 () Bool)

(declare-fun e!4608503 () Regex!20815)

(declare-fun e!4608506 () Regex!20815)

(assert (=> b!7779519 (= e!4608503 e!4608506)))

(declare-fun c!1433532 () Bool)

(assert (=> b!7779519 (= c!1433532 ((_ is Star!20815) lt!2672654))))

(declare-fun b!7779520 () Bool)

(declare-fun call!721091 () Regex!20815)

(assert (=> b!7779520 (= e!4608503 (Union!20815 call!721092 call!721091))))

(declare-fun b!7779521 () Bool)

(declare-fun e!4608502 () Regex!20815)

(assert (=> b!7779521 (= e!4608502 e!4608505)))

(declare-fun c!1433529 () Bool)

(assert (=> b!7779521 (= c!1433529 ((_ is ElementMatch!20815) lt!2672654))))

(declare-fun c!1433530 () Bool)

(declare-fun bm!721085 () Bool)

(assert (=> bm!721085 (= call!721092 (derivativeStep!6158 (ite c!1433530 (regOne!42143 lt!2672654) (regOne!42142 lt!2672654)) (h!79978 s!14292)))))

(declare-fun d!2345039 () Bool)

(declare-fun lt!2672671 () Regex!20815)

(assert (=> d!2345039 (validRegex!11229 lt!2672671)))

(assert (=> d!2345039 (= lt!2672671 e!4608502)))

(declare-fun c!1433531 () Bool)

(assert (=> d!2345039 (= c!1433531 (or ((_ is EmptyExpr!20815) lt!2672654) ((_ is EmptyLang!20815) lt!2672654)))))

(assert (=> d!2345039 (validRegex!11229 lt!2672654)))

(assert (=> d!2345039 (= (derivativeStep!6158 lt!2672654 (h!79978 s!14292)) lt!2672671)))

(declare-fun bm!721086 () Bool)

(declare-fun call!721090 () Regex!20815)

(assert (=> bm!721086 (= call!721090 call!721091)))

(declare-fun b!7779522 () Bool)

(declare-fun c!1433533 () Bool)

(assert (=> b!7779522 (= c!1433533 (nullable!9203 (regOne!42142 lt!2672654)))))

(assert (=> b!7779522 (= e!4608506 e!4608504)))

(declare-fun bm!721087 () Bool)

(assert (=> bm!721087 (= call!721093 call!721090)))

(declare-fun b!7779523 () Bool)

(assert (=> b!7779523 (= e!4608502 EmptyLang!20815)))

(declare-fun b!7779524 () Bool)

(assert (=> b!7779524 (= e!4608506 (Concat!29660 call!721090 lt!2672654))))

(declare-fun bm!721088 () Bool)

(assert (=> bm!721088 (= call!721091 (derivativeStep!6158 (ite c!1433530 (regTwo!42143 lt!2672654) (ite c!1433532 (reg!21144 lt!2672654) (ite c!1433533 (regTwo!42142 lt!2672654) (regOne!42142 lt!2672654)))) (h!79978 s!14292)))))

(declare-fun b!7779525 () Bool)

(assert (=> b!7779525 (= c!1433530 ((_ is Union!20815) lt!2672654))))

(assert (=> b!7779525 (= e!4608505 e!4608503)))

(assert (= (and d!2345039 c!1433531) b!7779523))

(assert (= (and d!2345039 (not c!1433531)) b!7779521))

(assert (= (and b!7779521 c!1433529) b!7779517))

(assert (= (and b!7779521 (not c!1433529)) b!7779525))

(assert (= (and b!7779525 c!1433530) b!7779520))

(assert (= (and b!7779525 (not c!1433530)) b!7779519))

(assert (= (and b!7779519 c!1433532) b!7779524))

(assert (= (and b!7779519 (not c!1433532)) b!7779522))

(assert (= (and b!7779522 c!1433533) b!7779518))

(assert (= (and b!7779522 (not c!1433533)) b!7779516))

(assert (= (or b!7779518 b!7779516) bm!721087))

(assert (= (or b!7779524 bm!721087) bm!721086))

(assert (= (or b!7779520 bm!721086) bm!721088))

(assert (= (or b!7779520 b!7779518) bm!721085))

(declare-fun m!8228404 () Bool)

(assert (=> bm!721085 m!8228404))

(declare-fun m!8228406 () Bool)

(assert (=> d!2345039 m!8228406))

(assert (=> d!2345039 m!8228344))

(declare-fun m!8228408 () Bool)

(assert (=> b!7779522 m!8228408))

(declare-fun m!8228410 () Bool)

(assert (=> bm!721088 m!8228410))

(assert (=> b!7779265 d!2345039))

(declare-fun d!2345053 () Bool)

(declare-fun e!4608525 () Bool)

(assert (=> d!2345053 e!4608525))

(declare-fun res!3100996 () Bool)

(assert (=> d!2345053 (=> res!3100996 e!4608525)))

(assert (=> d!2345053 (= res!3100996 (matchR!10275 lt!2672652 (t!388389 s!14292)))))

(declare-fun lt!2672678 () Unit!168520)

(declare-fun choose!59492 (Regex!20815 Regex!20815 List!73654) Unit!168520)

(assert (=> d!2345053 (= lt!2672678 (choose!59492 lt!2672652 EmptyLang!20815 (t!388389 s!14292)))))

(declare-fun e!4608524 () Bool)

(assert (=> d!2345053 e!4608524))

(declare-fun res!3100995 () Bool)

(assert (=> d!2345053 (=> (not res!3100995) (not e!4608524))))

(assert (=> d!2345053 (= res!3100995 (validRegex!11229 lt!2672652))))

(assert (=> d!2345053 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!384 lt!2672652 EmptyLang!20815 (t!388389 s!14292)) lt!2672678)))

(declare-fun b!7779550 () Bool)

(assert (=> b!7779550 (= e!4608524 (validRegex!11229 EmptyLang!20815))))

(declare-fun b!7779551 () Bool)

(assert (=> b!7779551 (= e!4608525 (matchR!10275 EmptyLang!20815 (t!388389 s!14292)))))

(assert (= (and d!2345053 res!3100995) b!7779550))

(assert (= (and d!2345053 (not res!3100996)) b!7779551))

(assert (=> d!2345053 m!8228288))

(declare-fun m!8228422 () Bool)

(assert (=> d!2345053 m!8228422))

(assert (=> d!2345053 m!8228280))

(assert (=> b!7779550 m!8228328))

(assert (=> b!7779551 m!8228278))

(assert (=> b!7779266 d!2345053))

(declare-fun b!7779552 () Bool)

(declare-fun res!3101000 () Bool)

(declare-fun e!4608527 () Bool)

(assert (=> b!7779552 (=> (not res!3101000) (not e!4608527))))

(declare-fun call!721096 () Bool)

(assert (=> b!7779552 (= res!3101000 call!721096)))

(declare-fun e!4608530 () Bool)

(assert (=> b!7779552 (= e!4608530 e!4608527)))

(declare-fun b!7779553 () Bool)

(declare-fun call!721095 () Bool)

(assert (=> b!7779553 (= e!4608527 call!721095)))

(declare-fun b!7779554 () Bool)

(declare-fun e!4608526 () Bool)

(declare-fun e!4608531 () Bool)

(assert (=> b!7779554 (= e!4608526 e!4608531)))

(declare-fun res!3100997 () Bool)

(assert (=> b!7779554 (=> (not res!3100997) (not e!4608531))))

(assert (=> b!7779554 (= res!3100997 call!721096)))

(declare-fun b!7779555 () Bool)

(declare-fun e!4608528 () Bool)

(assert (=> b!7779555 (= e!4608528 e!4608530)))

(declare-fun c!1433538 () Bool)

(assert (=> b!7779555 (= c!1433538 ((_ is Union!20815) lt!2672652))))

(declare-fun b!7779556 () Bool)

(declare-fun e!4608532 () Bool)

(assert (=> b!7779556 (= e!4608528 e!4608532)))

(declare-fun res!3100998 () Bool)

(assert (=> b!7779556 (= res!3100998 (not (nullable!9203 (reg!21144 lt!2672652))))))

(assert (=> b!7779556 (=> (not res!3100998) (not e!4608532))))

(declare-fun call!721097 () Bool)

(declare-fun c!1433537 () Bool)

(declare-fun bm!721090 () Bool)

(assert (=> bm!721090 (= call!721097 (validRegex!11229 (ite c!1433537 (reg!21144 lt!2672652) (ite c!1433538 (regOne!42143 lt!2672652) (regOne!42142 lt!2672652)))))))

(declare-fun b!7779557 () Bool)

(assert (=> b!7779557 (= e!4608531 call!721095)))

(declare-fun bm!721092 () Bool)

(assert (=> bm!721092 (= call!721096 call!721097)))

(declare-fun b!7779558 () Bool)

(declare-fun res!3100999 () Bool)

(assert (=> b!7779558 (=> res!3100999 e!4608526)))

(assert (=> b!7779558 (= res!3100999 (not ((_ is Concat!29660) lt!2672652)))))

(assert (=> b!7779558 (= e!4608530 e!4608526)))

(declare-fun d!2345059 () Bool)

(declare-fun res!3101001 () Bool)

(declare-fun e!4608529 () Bool)

(assert (=> d!2345059 (=> res!3101001 e!4608529)))

(assert (=> d!2345059 (= res!3101001 ((_ is ElementMatch!20815) lt!2672652))))

(assert (=> d!2345059 (= (validRegex!11229 lt!2672652) e!4608529)))

(declare-fun bm!721091 () Bool)

(assert (=> bm!721091 (= call!721095 (validRegex!11229 (ite c!1433538 (regTwo!42143 lt!2672652) (regTwo!42142 lt!2672652))))))

(declare-fun b!7779559 () Bool)

(assert (=> b!7779559 (= e!4608529 e!4608528)))

(assert (=> b!7779559 (= c!1433537 ((_ is Star!20815) lt!2672652))))

(declare-fun b!7779560 () Bool)

(assert (=> b!7779560 (= e!4608532 call!721097)))

(assert (= (and d!2345059 (not res!3101001)) b!7779559))

(assert (= (and b!7779559 c!1433537) b!7779556))

(assert (= (and b!7779559 (not c!1433537)) b!7779555))

(assert (= (and b!7779556 res!3100998) b!7779560))

(assert (= (and b!7779555 c!1433538) b!7779552))

(assert (= (and b!7779555 (not c!1433538)) b!7779558))

(assert (= (and b!7779552 res!3101000) b!7779553))

(assert (= (and b!7779558 (not res!3100999)) b!7779554))

(assert (= (and b!7779554 res!3100997) b!7779557))

(assert (= (or b!7779552 b!7779554) bm!721092))

(assert (= (or b!7779553 b!7779557) bm!721091))

(assert (= (or b!7779560 bm!721092) bm!721090))

(declare-fun m!8228426 () Bool)

(assert (=> b!7779556 m!8228426))

(declare-fun m!8228428 () Bool)

(assert (=> bm!721090 m!8228428))

(declare-fun m!8228430 () Bool)

(assert (=> bm!721091 m!8228430))

(assert (=> b!7779266 d!2345059))

(declare-fun b!7779561 () Bool)

(declare-fun res!3101004 () Bool)

(declare-fun e!4608537 () Bool)

(assert (=> b!7779561 (=> (not res!3101004) (not e!4608537))))

(declare-fun call!721098 () Bool)

(assert (=> b!7779561 (= res!3101004 (not call!721098))))

(declare-fun b!7779562 () Bool)

(declare-fun res!3101003 () Bool)

(declare-fun e!4608535 () Bool)

(assert (=> b!7779562 (=> res!3101003 e!4608535)))

(assert (=> b!7779562 (= res!3101003 e!4608537)))

(declare-fun res!3101007 () Bool)

(assert (=> b!7779562 (=> (not res!3101007) (not e!4608537))))

(declare-fun lt!2672682 () Bool)

(assert (=> b!7779562 (= res!3101007 lt!2672682)))

(declare-fun d!2345063 () Bool)

(declare-fun e!4608538 () Bool)

(assert (=> d!2345063 e!4608538))

(declare-fun c!1433540 () Bool)

(assert (=> d!2345063 (= c!1433540 ((_ is EmptyExpr!20815) lt!2672652))))

(declare-fun e!4608539 () Bool)

(assert (=> d!2345063 (= lt!2672682 e!4608539)))

(declare-fun c!1433539 () Bool)

(assert (=> d!2345063 (= c!1433539 (isEmpty!42179 (t!388389 s!14292)))))

(assert (=> d!2345063 (validRegex!11229 lt!2672652)))

(assert (=> d!2345063 (= (matchR!10275 lt!2672652 (t!388389 s!14292)) lt!2672682)))

(declare-fun b!7779563 () Bool)

(declare-fun res!3101009 () Bool)

(assert (=> b!7779563 (=> (not res!3101009) (not e!4608537))))

(assert (=> b!7779563 (= res!3101009 (isEmpty!42179 (tail!15451 (t!388389 s!14292))))))

(declare-fun b!7779564 () Bool)

(declare-fun e!4608533 () Bool)

(assert (=> b!7779564 (= e!4608538 e!4608533)))

(declare-fun c!1433541 () Bool)

(assert (=> b!7779564 (= c!1433541 ((_ is EmptyLang!20815) lt!2672652))))

(declare-fun b!7779565 () Bool)

(assert (=> b!7779565 (= e!4608533 (not lt!2672682))))

(declare-fun b!7779566 () Bool)

(declare-fun e!4608536 () Bool)

(declare-fun e!4608534 () Bool)

(assert (=> b!7779566 (= e!4608536 e!4608534)))

(declare-fun res!3101006 () Bool)

(assert (=> b!7779566 (=> res!3101006 e!4608534)))

(assert (=> b!7779566 (= res!3101006 call!721098)))

(declare-fun bm!721093 () Bool)

(assert (=> bm!721093 (= call!721098 (isEmpty!42179 (t!388389 s!14292)))))

(declare-fun b!7779567 () Bool)

(assert (=> b!7779567 (= e!4608535 e!4608536)))

(declare-fun res!3101008 () Bool)

(assert (=> b!7779567 (=> (not res!3101008) (not e!4608536))))

(assert (=> b!7779567 (= res!3101008 (not lt!2672682))))

(declare-fun b!7779568 () Bool)

(assert (=> b!7779568 (= e!4608539 (matchR!10275 (derivativeStep!6158 lt!2672652 (head!15910 (t!388389 s!14292))) (tail!15451 (t!388389 s!14292))))))

(declare-fun b!7779569 () Bool)

(assert (=> b!7779569 (= e!4608537 (= (head!15910 (t!388389 s!14292)) (c!1433460 lt!2672652)))))

(declare-fun b!7779570 () Bool)

(declare-fun res!3101002 () Bool)

(assert (=> b!7779570 (=> res!3101002 e!4608534)))

(assert (=> b!7779570 (= res!3101002 (not (isEmpty!42179 (tail!15451 (t!388389 s!14292)))))))

(declare-fun b!7779571 () Bool)

(assert (=> b!7779571 (= e!4608534 (not (= (head!15910 (t!388389 s!14292)) (c!1433460 lt!2672652))))))

(declare-fun b!7779572 () Bool)

(declare-fun res!3101005 () Bool)

(assert (=> b!7779572 (=> res!3101005 e!4608535)))

(assert (=> b!7779572 (= res!3101005 (not ((_ is ElementMatch!20815) lt!2672652)))))

(assert (=> b!7779572 (= e!4608533 e!4608535)))

(declare-fun b!7779573 () Bool)

(assert (=> b!7779573 (= e!4608539 (nullable!9203 lt!2672652))))

(declare-fun b!7779574 () Bool)

(assert (=> b!7779574 (= e!4608538 (= lt!2672682 call!721098))))

(assert (= (and d!2345063 c!1433539) b!7779573))

(assert (= (and d!2345063 (not c!1433539)) b!7779568))

(assert (= (and d!2345063 c!1433540) b!7779574))

(assert (= (and d!2345063 (not c!1433540)) b!7779564))

(assert (= (and b!7779564 c!1433541) b!7779565))

(assert (= (and b!7779564 (not c!1433541)) b!7779572))

(assert (= (and b!7779572 (not res!3101005)) b!7779562))

(assert (= (and b!7779562 res!3101007) b!7779561))

(assert (= (and b!7779561 res!3101004) b!7779563))

(assert (= (and b!7779563 res!3101009) b!7779569))

(assert (= (and b!7779562 (not res!3101003)) b!7779567))

(assert (= (and b!7779567 res!3101008) b!7779566))

(assert (= (and b!7779566 (not res!3101006)) b!7779570))

(assert (= (and b!7779570 (not res!3101002)) b!7779571))

(assert (= (or b!7779574 b!7779561 b!7779566) bm!721093))

(assert (=> b!7779571 m!8228306))

(assert (=> bm!721093 m!8228308))

(assert (=> b!7779563 m!8228312))

(assert (=> b!7779563 m!8228312))

(assert (=> b!7779563 m!8228318))

(declare-fun m!8228432 () Bool)

(assert (=> b!7779573 m!8228432))

(assert (=> b!7779570 m!8228312))

(assert (=> b!7779570 m!8228312))

(assert (=> b!7779570 m!8228318))

(assert (=> b!7779569 m!8228306))

(assert (=> b!7779568 m!8228306))

(assert (=> b!7779568 m!8228306))

(declare-fun m!8228434 () Bool)

(assert (=> b!7779568 m!8228434))

(assert (=> b!7779568 m!8228312))

(assert (=> b!7779568 m!8228434))

(assert (=> b!7779568 m!8228312))

(declare-fun m!8228436 () Bool)

(assert (=> b!7779568 m!8228436))

(assert (=> d!2345063 m!8228308))

(assert (=> d!2345063 m!8228280))

(assert (=> b!7779266 d!2345063))

(declare-fun d!2345065 () Bool)

(assert (=> d!2345065 (= (derivative!543 EmptyLang!20815 (t!388389 s!14292)) EmptyLang!20815)))

(declare-fun lt!2672690 () Unit!168520)

(declare-fun choose!59495 (Regex!20815 List!73654) Unit!168520)

(assert (=> d!2345065 (= lt!2672690 (choose!59495 EmptyLang!20815 (t!388389 s!14292)))))

(assert (=> d!2345065 (= EmptyLang!20815 EmptyLang!20815)))

(assert (=> d!2345065 (= (lemmaEmptyLangDerivativeIsAFixPoint!78 EmptyLang!20815 (t!388389 s!14292)) lt!2672690)))

(declare-fun bs!1966206 () Bool)

(assert (= bs!1966206 d!2345065))

(assert (=> bs!1966206 m!8228284))

(declare-fun m!8228452 () Bool)

(assert (=> bs!1966206 m!8228452))

(assert (=> b!7779266 d!2345065))

(declare-fun d!2345071 () Bool)

(declare-fun lt!2672693 () Regex!20815)

(assert (=> d!2345071 (validRegex!11229 lt!2672693)))

(declare-fun e!4608570 () Regex!20815)

(assert (=> d!2345071 (= lt!2672693 e!4608570)))

(declare-fun c!1433555 () Bool)

(assert (=> d!2345071 (= c!1433555 ((_ is Cons!73530) (t!388389 s!14292)))))

(assert (=> d!2345071 (validRegex!11229 EmptyLang!20815)))

(assert (=> d!2345071 (= (derivative!543 EmptyLang!20815 (t!388389 s!14292)) lt!2672693)))

(declare-fun b!7779656 () Bool)

(assert (=> b!7779656 (= e!4608570 (derivative!543 (derivativeStep!6158 EmptyLang!20815 (h!79978 (t!388389 s!14292))) (t!388389 (t!388389 s!14292))))))

(declare-fun b!7779657 () Bool)

(assert (=> b!7779657 (= e!4608570 EmptyLang!20815)))

(assert (= (and d!2345071 c!1433555) b!7779656))

(assert (= (and d!2345071 (not c!1433555)) b!7779657))

(declare-fun m!8228460 () Bool)

(assert (=> d!2345071 m!8228460))

(assert (=> d!2345071 m!8228328))

(declare-fun m!8228462 () Bool)

(assert (=> b!7779656 m!8228462))

(assert (=> b!7779656 m!8228462))

(declare-fun m!8228464 () Bool)

(assert (=> b!7779656 m!8228464))

(assert (=> b!7779266 d!2345071))

(declare-fun b!7779666 () Bool)

(declare-fun e!4608575 () Regex!20815)

(declare-fun call!721107 () Regex!20815)

(assert (=> b!7779666 (= e!4608575 (Union!20815 (Concat!29660 call!721107 (regTwo!42142 r1!6279)) EmptyLang!20815))))

(declare-fun b!7779667 () Bool)

(declare-fun e!4608576 () Regex!20815)

(assert (=> b!7779667 (= e!4608576 (ite (= (h!79978 s!14292) (c!1433460 r1!6279)) EmptyExpr!20815 EmptyLang!20815))))

(declare-fun b!7779668 () Bool)

(declare-fun call!721106 () Regex!20815)

(assert (=> b!7779668 (= e!4608575 (Union!20815 (Concat!29660 call!721106 (regTwo!42142 r1!6279)) call!721107))))

(declare-fun b!7779669 () Bool)

(declare-fun e!4608574 () Regex!20815)

(declare-fun e!4608577 () Regex!20815)

(assert (=> b!7779669 (= e!4608574 e!4608577)))

(declare-fun c!1433559 () Bool)

(assert (=> b!7779669 (= c!1433559 ((_ is Star!20815) r1!6279))))

(declare-fun b!7779670 () Bool)

(declare-fun call!721105 () Regex!20815)

(assert (=> b!7779670 (= e!4608574 (Union!20815 call!721106 call!721105))))

(declare-fun b!7779671 () Bool)

(declare-fun e!4608573 () Regex!20815)

(assert (=> b!7779671 (= e!4608573 e!4608576)))

(declare-fun c!1433556 () Bool)

(assert (=> b!7779671 (= c!1433556 ((_ is ElementMatch!20815) r1!6279))))

(declare-fun c!1433557 () Bool)

(declare-fun bm!721099 () Bool)

(assert (=> bm!721099 (= call!721106 (derivativeStep!6158 (ite c!1433557 (regOne!42143 r1!6279) (regOne!42142 r1!6279)) (h!79978 s!14292)))))

(declare-fun d!2345073 () Bool)

(declare-fun lt!2672694 () Regex!20815)

(assert (=> d!2345073 (validRegex!11229 lt!2672694)))

(assert (=> d!2345073 (= lt!2672694 e!4608573)))

(declare-fun c!1433558 () Bool)

(assert (=> d!2345073 (= c!1433558 (or ((_ is EmptyExpr!20815) r1!6279) ((_ is EmptyLang!20815) r1!6279)))))

(assert (=> d!2345073 (validRegex!11229 r1!6279)))

(assert (=> d!2345073 (= (derivativeStep!6158 r1!6279 (h!79978 s!14292)) lt!2672694)))

(declare-fun bm!721100 () Bool)

(declare-fun call!721104 () Regex!20815)

(assert (=> bm!721100 (= call!721104 call!721105)))

(declare-fun b!7779672 () Bool)

(declare-fun c!1433560 () Bool)

(assert (=> b!7779672 (= c!1433560 (nullable!9203 (regOne!42142 r1!6279)))))

(assert (=> b!7779672 (= e!4608577 e!4608575)))

(declare-fun bm!721101 () Bool)

(assert (=> bm!721101 (= call!721107 call!721104)))

(declare-fun b!7779673 () Bool)

(assert (=> b!7779673 (= e!4608573 EmptyLang!20815)))

(declare-fun b!7779674 () Bool)

(assert (=> b!7779674 (= e!4608577 (Concat!29660 call!721104 r1!6279))))

(declare-fun bm!721102 () Bool)

(assert (=> bm!721102 (= call!721105 (derivativeStep!6158 (ite c!1433557 (regTwo!42143 r1!6279) (ite c!1433559 (reg!21144 r1!6279) (ite c!1433560 (regTwo!42142 r1!6279) (regOne!42142 r1!6279)))) (h!79978 s!14292)))))

(declare-fun b!7779675 () Bool)

(assert (=> b!7779675 (= c!1433557 ((_ is Union!20815) r1!6279))))

(assert (=> b!7779675 (= e!4608576 e!4608574)))

(assert (= (and d!2345073 c!1433558) b!7779673))

(assert (= (and d!2345073 (not c!1433558)) b!7779671))

(assert (= (and b!7779671 c!1433556) b!7779667))

(assert (= (and b!7779671 (not c!1433556)) b!7779675))

(assert (= (and b!7779675 c!1433557) b!7779670))

(assert (= (and b!7779675 (not c!1433557)) b!7779669))

(assert (= (and b!7779669 c!1433559) b!7779674))

(assert (= (and b!7779669 (not c!1433559)) b!7779672))

(assert (= (and b!7779672 c!1433560) b!7779668))

(assert (= (and b!7779672 (not c!1433560)) b!7779666))

(assert (= (or b!7779668 b!7779666) bm!721101))

(assert (= (or b!7779674 bm!721101) bm!721100))

(assert (= (or b!7779670 bm!721100) bm!721102))

(assert (= (or b!7779670 b!7779668) bm!721099))

(declare-fun m!8228466 () Bool)

(assert (=> bm!721099 m!8228466))

(declare-fun m!8228468 () Bool)

(assert (=> d!2345073 m!8228468))

(assert (=> d!2345073 m!8228276))

(declare-fun m!8228470 () Bool)

(assert (=> b!7779672 m!8228470))

(declare-fun m!8228472 () Bool)

(assert (=> bm!721102 m!8228472))

(assert (=> b!7779267 d!2345073))

(declare-fun b!7779676 () Bool)

(declare-fun res!3101021 () Bool)

(declare-fun e!4608579 () Bool)

(assert (=> b!7779676 (=> (not res!3101021) (not e!4608579))))

(declare-fun call!721109 () Bool)

(assert (=> b!7779676 (= res!3101021 call!721109)))

(declare-fun e!4608582 () Bool)

(assert (=> b!7779676 (= e!4608582 e!4608579)))

(declare-fun b!7779677 () Bool)

(declare-fun call!721108 () Bool)

(assert (=> b!7779677 (= e!4608579 call!721108)))

(declare-fun b!7779678 () Bool)

(declare-fun e!4608578 () Bool)

(declare-fun e!4608583 () Bool)

(assert (=> b!7779678 (= e!4608578 e!4608583)))

(declare-fun res!3101018 () Bool)

(assert (=> b!7779678 (=> (not res!3101018) (not e!4608583))))

(assert (=> b!7779678 (= res!3101018 call!721109)))

(declare-fun b!7779679 () Bool)

(declare-fun e!4608580 () Bool)

(assert (=> b!7779679 (= e!4608580 e!4608582)))

(declare-fun c!1433562 () Bool)

(assert (=> b!7779679 (= c!1433562 ((_ is Union!20815) r1!6279))))

(declare-fun b!7779680 () Bool)

(declare-fun e!4608584 () Bool)

(assert (=> b!7779680 (= e!4608580 e!4608584)))

(declare-fun res!3101019 () Bool)

(assert (=> b!7779680 (= res!3101019 (not (nullable!9203 (reg!21144 r1!6279))))))

(assert (=> b!7779680 (=> (not res!3101019) (not e!4608584))))

(declare-fun c!1433561 () Bool)

(declare-fun bm!721103 () Bool)

(declare-fun call!721110 () Bool)

(assert (=> bm!721103 (= call!721110 (validRegex!11229 (ite c!1433561 (reg!21144 r1!6279) (ite c!1433562 (regOne!42143 r1!6279) (regOne!42142 r1!6279)))))))

(declare-fun b!7779681 () Bool)

(assert (=> b!7779681 (= e!4608583 call!721108)))

(declare-fun bm!721105 () Bool)

(assert (=> bm!721105 (= call!721109 call!721110)))

(declare-fun b!7779682 () Bool)

(declare-fun res!3101020 () Bool)

(assert (=> b!7779682 (=> res!3101020 e!4608578)))

(assert (=> b!7779682 (= res!3101020 (not ((_ is Concat!29660) r1!6279)))))

(assert (=> b!7779682 (= e!4608582 e!4608578)))

(declare-fun d!2345075 () Bool)

(declare-fun res!3101022 () Bool)

(declare-fun e!4608581 () Bool)

(assert (=> d!2345075 (=> res!3101022 e!4608581)))

(assert (=> d!2345075 (= res!3101022 ((_ is ElementMatch!20815) r1!6279))))

(assert (=> d!2345075 (= (validRegex!11229 r1!6279) e!4608581)))

(declare-fun bm!721104 () Bool)

(assert (=> bm!721104 (= call!721108 (validRegex!11229 (ite c!1433562 (regTwo!42143 r1!6279) (regTwo!42142 r1!6279))))))

(declare-fun b!7779683 () Bool)

(assert (=> b!7779683 (= e!4608581 e!4608580)))

(assert (=> b!7779683 (= c!1433561 ((_ is Star!20815) r1!6279))))

(declare-fun b!7779684 () Bool)

(assert (=> b!7779684 (= e!4608584 call!721110)))

(assert (= (and d!2345075 (not res!3101022)) b!7779683))

(assert (= (and b!7779683 c!1433561) b!7779680))

(assert (= (and b!7779683 (not c!1433561)) b!7779679))

(assert (= (and b!7779680 res!3101019) b!7779684))

(assert (= (and b!7779679 c!1433562) b!7779676))

(assert (= (and b!7779679 (not c!1433562)) b!7779682))

(assert (= (and b!7779676 res!3101021) b!7779677))

(assert (= (and b!7779682 (not res!3101020)) b!7779678))

(assert (= (and b!7779678 res!3101018) b!7779681))

(assert (= (or b!7779676 b!7779678) bm!721105))

(assert (= (or b!7779677 b!7779681) bm!721104))

(assert (= (or b!7779684 bm!721105) bm!721103))

(declare-fun m!8228474 () Bool)

(assert (=> b!7779680 m!8228474))

(declare-fun m!8228476 () Bool)

(assert (=> bm!721103 m!8228476))

(declare-fun m!8228478 () Bool)

(assert (=> bm!721104 m!8228478))

(assert (=> start!740434 d!2345075))

(declare-fun d!2345077 () Bool)

(declare-fun nullableFct!3600 (Regex!20815) Bool)

(assert (=> d!2345077 (= (nullable!9203 r1!6279) (nullableFct!3600 r1!6279))))

(declare-fun bs!1966207 () Bool)

(assert (= bs!1966207 d!2345077))

(declare-fun m!8228480 () Bool)

(assert (=> bs!1966207 m!8228480))

(assert (=> b!7779262 d!2345077))

(declare-fun b!7779695 () Bool)

(declare-fun e!4608587 () Bool)

(assert (=> b!7779695 (= e!4608587 tp_is_empty!51985)))

(declare-fun b!7779697 () Bool)

(declare-fun tp!2286464 () Bool)

(assert (=> b!7779697 (= e!4608587 tp!2286464)))

(assert (=> b!7779252 (= tp!2286380 e!4608587)))

(declare-fun b!7779696 () Bool)

(declare-fun tp!2286465 () Bool)

(declare-fun tp!2286463 () Bool)

(assert (=> b!7779696 (= e!4608587 (and tp!2286465 tp!2286463))))

(declare-fun b!7779698 () Bool)

(declare-fun tp!2286467 () Bool)

(declare-fun tp!2286466 () Bool)

(assert (=> b!7779698 (= e!4608587 (and tp!2286467 tp!2286466))))

(assert (= (and b!7779252 ((_ is ElementMatch!20815) (regOne!42143 r1!6279))) b!7779695))

(assert (= (and b!7779252 ((_ is Concat!29660) (regOne!42143 r1!6279))) b!7779696))

(assert (= (and b!7779252 ((_ is Star!20815) (regOne!42143 r1!6279))) b!7779697))

(assert (= (and b!7779252 ((_ is Union!20815) (regOne!42143 r1!6279))) b!7779698))

(declare-fun b!7779699 () Bool)

(declare-fun e!4608588 () Bool)

(assert (=> b!7779699 (= e!4608588 tp_is_empty!51985)))

(declare-fun b!7779701 () Bool)

(declare-fun tp!2286469 () Bool)

(assert (=> b!7779701 (= e!4608588 tp!2286469)))

(assert (=> b!7779252 (= tp!2286384 e!4608588)))

(declare-fun b!7779700 () Bool)

(declare-fun tp!2286470 () Bool)

(declare-fun tp!2286468 () Bool)

(assert (=> b!7779700 (= e!4608588 (and tp!2286470 tp!2286468))))

(declare-fun b!7779702 () Bool)

(declare-fun tp!2286472 () Bool)

(declare-fun tp!2286471 () Bool)

(assert (=> b!7779702 (= e!4608588 (and tp!2286472 tp!2286471))))

(assert (= (and b!7779252 ((_ is ElementMatch!20815) (regTwo!42143 r1!6279))) b!7779699))

(assert (= (and b!7779252 ((_ is Concat!29660) (regTwo!42143 r1!6279))) b!7779700))

(assert (= (and b!7779252 ((_ is Star!20815) (regTwo!42143 r1!6279))) b!7779701))

(assert (= (and b!7779252 ((_ is Union!20815) (regTwo!42143 r1!6279))) b!7779702))

(declare-fun b!7779703 () Bool)

(declare-fun e!4608589 () Bool)

(assert (=> b!7779703 (= e!4608589 tp_is_empty!51985)))

(declare-fun b!7779705 () Bool)

(declare-fun tp!2286474 () Bool)

(assert (=> b!7779705 (= e!4608589 tp!2286474)))

(assert (=> b!7779263 (= tp!2286383 e!4608589)))

(declare-fun b!7779704 () Bool)

(declare-fun tp!2286475 () Bool)

(declare-fun tp!2286473 () Bool)

(assert (=> b!7779704 (= e!4608589 (and tp!2286475 tp!2286473))))

(declare-fun b!7779706 () Bool)

(declare-fun tp!2286477 () Bool)

(declare-fun tp!2286476 () Bool)

(assert (=> b!7779706 (= e!4608589 (and tp!2286477 tp!2286476))))

(assert (= (and b!7779263 ((_ is ElementMatch!20815) (reg!21144 r2!6217))) b!7779703))

(assert (= (and b!7779263 ((_ is Concat!29660) (reg!21144 r2!6217))) b!7779704))

(assert (= (and b!7779263 ((_ is Star!20815) (reg!21144 r2!6217))) b!7779705))

(assert (= (and b!7779263 ((_ is Union!20815) (reg!21144 r2!6217))) b!7779706))

(declare-fun b!7779707 () Bool)

(declare-fun e!4608590 () Bool)

(assert (=> b!7779707 (= e!4608590 tp_is_empty!51985)))

(declare-fun b!7779709 () Bool)

(declare-fun tp!2286479 () Bool)

(assert (=> b!7779709 (= e!4608590 tp!2286479)))

(assert (=> b!7779254 (= tp!2286386 e!4608590)))

(declare-fun b!7779708 () Bool)

(declare-fun tp!2286480 () Bool)

(declare-fun tp!2286478 () Bool)

(assert (=> b!7779708 (= e!4608590 (and tp!2286480 tp!2286478))))

(declare-fun b!7779710 () Bool)

(declare-fun tp!2286482 () Bool)

(declare-fun tp!2286481 () Bool)

(assert (=> b!7779710 (= e!4608590 (and tp!2286482 tp!2286481))))

(assert (= (and b!7779254 ((_ is ElementMatch!20815) (reg!21144 r1!6279))) b!7779707))

(assert (= (and b!7779254 ((_ is Concat!29660) (reg!21144 r1!6279))) b!7779708))

(assert (= (and b!7779254 ((_ is Star!20815) (reg!21144 r1!6279))) b!7779709))

(assert (= (and b!7779254 ((_ is Union!20815) (reg!21144 r1!6279))) b!7779710))

(declare-fun b!7779711 () Bool)

(declare-fun e!4608591 () Bool)

(assert (=> b!7779711 (= e!4608591 tp_is_empty!51985)))

(declare-fun b!7779713 () Bool)

(declare-fun tp!2286484 () Bool)

(assert (=> b!7779713 (= e!4608591 tp!2286484)))

(assert (=> b!7779260 (= tp!2286381 e!4608591)))

(declare-fun b!7779712 () Bool)

(declare-fun tp!2286485 () Bool)

(declare-fun tp!2286483 () Bool)

(assert (=> b!7779712 (= e!4608591 (and tp!2286485 tp!2286483))))

(declare-fun b!7779714 () Bool)

(declare-fun tp!2286487 () Bool)

(declare-fun tp!2286486 () Bool)

(assert (=> b!7779714 (= e!4608591 (and tp!2286487 tp!2286486))))

(assert (= (and b!7779260 ((_ is ElementMatch!20815) (regOne!42142 r1!6279))) b!7779711))

(assert (= (and b!7779260 ((_ is Concat!29660) (regOne!42142 r1!6279))) b!7779712))

(assert (= (and b!7779260 ((_ is Star!20815) (regOne!42142 r1!6279))) b!7779713))

(assert (= (and b!7779260 ((_ is Union!20815) (regOne!42142 r1!6279))) b!7779714))

(declare-fun b!7779715 () Bool)

(declare-fun e!4608592 () Bool)

(assert (=> b!7779715 (= e!4608592 tp_is_empty!51985)))

(declare-fun b!7779717 () Bool)

(declare-fun tp!2286489 () Bool)

(assert (=> b!7779717 (= e!4608592 tp!2286489)))

(assert (=> b!7779260 (= tp!2286388 e!4608592)))

(declare-fun b!7779716 () Bool)

(declare-fun tp!2286490 () Bool)

(declare-fun tp!2286488 () Bool)

(assert (=> b!7779716 (= e!4608592 (and tp!2286490 tp!2286488))))

(declare-fun b!7779718 () Bool)

(declare-fun tp!2286492 () Bool)

(declare-fun tp!2286491 () Bool)

(assert (=> b!7779718 (= e!4608592 (and tp!2286492 tp!2286491))))

(assert (= (and b!7779260 ((_ is ElementMatch!20815) (regTwo!42142 r1!6279))) b!7779715))

(assert (= (and b!7779260 ((_ is Concat!29660) (regTwo!42142 r1!6279))) b!7779716))

(assert (= (and b!7779260 ((_ is Star!20815) (regTwo!42142 r1!6279))) b!7779717))

(assert (= (and b!7779260 ((_ is Union!20815) (regTwo!42142 r1!6279))) b!7779718))

(declare-fun b!7779719 () Bool)

(declare-fun e!4608593 () Bool)

(assert (=> b!7779719 (= e!4608593 tp_is_empty!51985)))

(declare-fun b!7779721 () Bool)

(declare-fun tp!2286494 () Bool)

(assert (=> b!7779721 (= e!4608593 tp!2286494)))

(assert (=> b!7779255 (= tp!2286379 e!4608593)))

(declare-fun b!7779720 () Bool)

(declare-fun tp!2286495 () Bool)

(declare-fun tp!2286493 () Bool)

(assert (=> b!7779720 (= e!4608593 (and tp!2286495 tp!2286493))))

(declare-fun b!7779722 () Bool)

(declare-fun tp!2286497 () Bool)

(declare-fun tp!2286496 () Bool)

(assert (=> b!7779722 (= e!4608593 (and tp!2286497 tp!2286496))))

(assert (= (and b!7779255 ((_ is ElementMatch!20815) (regOne!42142 r2!6217))) b!7779719))

(assert (= (and b!7779255 ((_ is Concat!29660) (regOne!42142 r2!6217))) b!7779720))

(assert (= (and b!7779255 ((_ is Star!20815) (regOne!42142 r2!6217))) b!7779721))

(assert (= (and b!7779255 ((_ is Union!20815) (regOne!42142 r2!6217))) b!7779722))

(declare-fun b!7779723 () Bool)

(declare-fun e!4608594 () Bool)

(assert (=> b!7779723 (= e!4608594 tp_is_empty!51985)))

(declare-fun b!7779725 () Bool)

(declare-fun tp!2286499 () Bool)

(assert (=> b!7779725 (= e!4608594 tp!2286499)))

(assert (=> b!7779255 (= tp!2286387 e!4608594)))

(declare-fun b!7779724 () Bool)

(declare-fun tp!2286500 () Bool)

(declare-fun tp!2286498 () Bool)

(assert (=> b!7779724 (= e!4608594 (and tp!2286500 tp!2286498))))

(declare-fun b!7779726 () Bool)

(declare-fun tp!2286502 () Bool)

(declare-fun tp!2286501 () Bool)

(assert (=> b!7779726 (= e!4608594 (and tp!2286502 tp!2286501))))

(assert (= (and b!7779255 ((_ is ElementMatch!20815) (regTwo!42142 r2!6217))) b!7779723))

(assert (= (and b!7779255 ((_ is Concat!29660) (regTwo!42142 r2!6217))) b!7779724))

(assert (= (and b!7779255 ((_ is Star!20815) (regTwo!42142 r2!6217))) b!7779725))

(assert (= (and b!7779255 ((_ is Union!20815) (regTwo!42142 r2!6217))) b!7779726))

(declare-fun b!7779731 () Bool)

(declare-fun e!4608597 () Bool)

(declare-fun tp!2286505 () Bool)

(assert (=> b!7779731 (= e!4608597 (and tp_is_empty!51985 tp!2286505))))

(assert (=> b!7779261 (= tp!2286382 e!4608597)))

(assert (= (and b!7779261 ((_ is Cons!73530) (t!388389 s!14292))) b!7779731))

(declare-fun b!7779732 () Bool)

(declare-fun e!4608598 () Bool)

(assert (=> b!7779732 (= e!4608598 tp_is_empty!51985)))

(declare-fun b!7779734 () Bool)

(declare-fun tp!2286507 () Bool)

(assert (=> b!7779734 (= e!4608598 tp!2286507)))

(assert (=> b!7779256 (= tp!2286385 e!4608598)))

(declare-fun b!7779733 () Bool)

(declare-fun tp!2286508 () Bool)

(declare-fun tp!2286506 () Bool)

(assert (=> b!7779733 (= e!4608598 (and tp!2286508 tp!2286506))))

(declare-fun b!7779735 () Bool)

(declare-fun tp!2286510 () Bool)

(declare-fun tp!2286509 () Bool)

(assert (=> b!7779735 (= e!4608598 (and tp!2286510 tp!2286509))))

(assert (= (and b!7779256 ((_ is ElementMatch!20815) (regOne!42143 r2!6217))) b!7779732))

(assert (= (and b!7779256 ((_ is Concat!29660) (regOne!42143 r2!6217))) b!7779733))

(assert (= (and b!7779256 ((_ is Star!20815) (regOne!42143 r2!6217))) b!7779734))

(assert (= (and b!7779256 ((_ is Union!20815) (regOne!42143 r2!6217))) b!7779735))

(declare-fun b!7779736 () Bool)

(declare-fun e!4608599 () Bool)

(assert (=> b!7779736 (= e!4608599 tp_is_empty!51985)))

(declare-fun b!7779738 () Bool)

(declare-fun tp!2286512 () Bool)

(assert (=> b!7779738 (= e!4608599 tp!2286512)))

(assert (=> b!7779256 (= tp!2286389 e!4608599)))

(declare-fun b!7779737 () Bool)

(declare-fun tp!2286513 () Bool)

(declare-fun tp!2286511 () Bool)

(assert (=> b!7779737 (= e!4608599 (and tp!2286513 tp!2286511))))

(declare-fun b!7779739 () Bool)

(declare-fun tp!2286515 () Bool)

(declare-fun tp!2286514 () Bool)

(assert (=> b!7779739 (= e!4608599 (and tp!2286515 tp!2286514))))

(assert (= (and b!7779256 ((_ is ElementMatch!20815) (regTwo!42143 r2!6217))) b!7779736))

(assert (= (and b!7779256 ((_ is Concat!29660) (regTwo!42143 r2!6217))) b!7779737))

(assert (= (and b!7779256 ((_ is Star!20815) (regTwo!42143 r2!6217))) b!7779738))

(assert (= (and b!7779256 ((_ is Union!20815) (regTwo!42143 r2!6217))) b!7779739))

(check-sat (not b!7779364) (not d!2345071) (not b!7779346) (not d!2345053) (not b!7779734) (not b!7779569) (not b!7779551) (not d!2345077) (not bm!721054) (not b!7779568) (not b!7779556) (not b!7779354) (not b!7779421) (not b!7779359) (not b!7779350) (not b!7779713) (not b!7779672) (not d!2345073) (not bm!721088) (not b!7779712) (not b!7779573) (not b!7779423) (not bm!721037) (not b!7779700) (not b!7779702) (not bm!721038) (not b!7779717) (not b!7779360) (not b!7779422) (not b!7779362) (not b!7779415) (not b!7779720) (not d!2345065) (not b!7779361) (not b!7779340) (not b!7779738) (not bm!721056) (not bm!721053) (not d!2345027) (not b!7779563) (not bm!721093) (not b!7779420) (not b!7779731) (not b!7779735) (not b!7779722) (not b!7779710) (not b!7779739) (not b!7779696) (not bm!721085) (not b!7779348) (not b!7779725) (not b!7779680) (not b!7779724) (not d!2345063) (not bm!721091) (not b!7779570) (not b!7779714) (not b!7779718) (not b!7779522) (not bm!721102) (not b!7779705) (not b!7779721) (not b!7779701) (not d!2345037) (not b!7779706) (not d!2345039) (not b!7779733) (not b!7779697) (not bm!721099) (not b!7779347) (not b!7779345) (not b!7779550) (not d!2345033) (not b!7779425) (not b!7779656) (not b!7779698) (not bm!721104) (not b!7779704) (not b!7779737) (not b!7779571) (not b!7779408) (not b!7779716) tp_is_empty!51985 (not b!7779709) (not b!7779726) (not bm!721090) (not bm!721103) (not b!7779708))
(check-sat)
