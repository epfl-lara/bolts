; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!286162 () Bool)

(assert start!286162)

(declare-fun b!2950374 () Bool)

(assert (=> b!2950374 true))

(assert (=> b!2950374 true))

(assert (=> b!2950374 true))

(declare-fun e!1858264 () Bool)

(declare-datatypes ((C!18486 0))(
  ( (C!18487 (val!11279 Int)) )
))
(declare-datatypes ((Regex!9150 0))(
  ( (ElementMatch!9150 (c!482954 C!18486)) (Concat!14471 (regOne!18812 Regex!9150) (regTwo!18812 Regex!9150)) (EmptyExpr!9150) (Star!9150 (reg!9479 Regex!9150)) (EmptyLang!9150) (Union!9150 (regOne!18813 Regex!9150) (regTwo!18813 Regex!9150)) )
))
(declare-fun r!17423 () Regex!9150)

(declare-fun validRegex!3883 (Regex!9150) Bool)

(assert (=> b!2950374 (= e!1858264 (validRegex!3883 (regTwo!18812 r!17423)))))

(declare-fun lambda!109727 () Int)

(declare-fun lt!1031922 () Regex!9150)

(declare-datatypes ((List!35015 0))(
  ( (Nil!34891) (Cons!34891 (h!40311 C!18486) (t!234080 List!35015)) )
))
(declare-fun s!11993 () List!35015)

(declare-fun lt!1031916 () Regex!9150)

(declare-datatypes ((tuple2!33818 0))(
  ( (tuple2!33819 (_1!20041 List!35015) (_2!20041 List!35015)) )
))
(declare-datatypes ((Option!6641 0))(
  ( (None!6640) (Some!6640 (v!34774 tuple2!33818)) )
))
(declare-fun isDefined!5192 (Option!6641) Bool)

(declare-fun findConcatSeparation!1035 (Regex!9150 Regex!9150 List!35015 List!35015 List!35015) Option!6641)

(declare-fun Exists!1482 (Int) Bool)

(assert (=> b!2950374 (= (isDefined!5192 (findConcatSeparation!1035 lt!1031922 lt!1031916 Nil!34891 s!11993 s!11993)) (Exists!1482 lambda!109727))))

(declare-datatypes ((Unit!48679 0))(
  ( (Unit!48680) )
))
(declare-fun lt!1031920 () Unit!48679)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!813 (Regex!9150 Regex!9150 List!35015) Unit!48679)

(assert (=> b!2950374 (= lt!1031920 (lemmaFindConcatSeparationEquivalentToExists!813 lt!1031922 lt!1031916 s!11993))))

(declare-fun lt!1031921 () Regex!9150)

(declare-fun matchRSpec!1287 (Regex!9150 List!35015) Bool)

(assert (=> b!2950374 (matchRSpec!1287 lt!1031921 s!11993)))

(declare-fun lt!1031918 () Unit!48679)

(declare-fun mainMatchTheorem!1287 (Regex!9150 List!35015) Unit!48679)

(assert (=> b!2950374 (= lt!1031918 (mainMatchTheorem!1287 lt!1031921 s!11993))))

(declare-fun b!2950375 () Bool)

(declare-fun e!1858262 () Bool)

(declare-fun e!1858260 () Bool)

(assert (=> b!2950375 (= e!1858262 (not e!1858260))))

(declare-fun res!1217345 () Bool)

(assert (=> b!2950375 (=> res!1217345 e!1858260)))

(declare-fun lt!1031917 () Bool)

(assert (=> b!2950375 (= res!1217345 (or lt!1031917 (not (is-Concat!14471 r!17423))))))

(assert (=> b!2950375 (= lt!1031917 (matchRSpec!1287 r!17423 s!11993))))

(declare-fun matchR!4032 (Regex!9150 List!35015) Bool)

(assert (=> b!2950375 (= lt!1031917 (matchR!4032 r!17423 s!11993))))

(declare-fun lt!1031919 () Unit!48679)

(assert (=> b!2950375 (= lt!1031919 (mainMatchTheorem!1287 r!17423 s!11993))))

(declare-fun b!2950376 () Bool)

(declare-fun res!1217346 () Bool)

(declare-fun e!1858261 () Bool)

(assert (=> b!2950376 (=> res!1217346 e!1858261)))

(declare-fun isEmptyExpr!353 (Regex!9150) Bool)

(assert (=> b!2950376 (= res!1217346 (isEmptyExpr!353 lt!1031916))))

(declare-fun b!2950378 () Bool)

(declare-fun e!1858263 () Bool)

(declare-fun tp!943134 () Bool)

(declare-fun tp!943138 () Bool)

(assert (=> b!2950378 (= e!1858263 (and tp!943134 tp!943138))))

(declare-fun b!2950379 () Bool)

(declare-fun e!1858265 () Bool)

(declare-fun tp_is_empty!15863 () Bool)

(declare-fun tp!943135 () Bool)

(assert (=> b!2950379 (= e!1858265 (and tp_is_empty!15863 tp!943135))))

(declare-fun b!2950380 () Bool)

(declare-fun tp!943137 () Bool)

(declare-fun tp!943139 () Bool)

(assert (=> b!2950380 (= e!1858263 (and tp!943137 tp!943139))))

(declare-fun b!2950381 () Bool)

(declare-fun res!1217352 () Bool)

(assert (=> b!2950381 (=> res!1217352 e!1858261)))

(assert (=> b!2950381 (= res!1217352 (isEmptyExpr!353 lt!1031922))))

(declare-fun b!2950382 () Bool)

(assert (=> b!2950382 (= e!1858260 e!1858261)))

(declare-fun res!1217349 () Bool)

(assert (=> b!2950382 (=> res!1217349 e!1858261)))

(declare-fun isEmptyLang!272 (Regex!9150) Bool)

(assert (=> b!2950382 (= res!1217349 (isEmptyLang!272 lt!1031922))))

(declare-fun simplify!155 (Regex!9150) Regex!9150)

(assert (=> b!2950382 (= lt!1031916 (simplify!155 (regTwo!18812 r!17423)))))

(assert (=> b!2950382 (= lt!1031922 (simplify!155 (regOne!18812 r!17423)))))

(declare-fun b!2950383 () Bool)

(declare-fun tp!943136 () Bool)

(assert (=> b!2950383 (= e!1858263 tp!943136)))

(declare-fun res!1217348 () Bool)

(assert (=> start!286162 (=> (not res!1217348) (not e!1858262))))

(assert (=> start!286162 (= res!1217348 (validRegex!3883 r!17423))))

(assert (=> start!286162 e!1858262))

(assert (=> start!286162 e!1858263))

(assert (=> start!286162 e!1858265))

(declare-fun b!2950377 () Bool)

(assert (=> b!2950377 (= e!1858261 e!1858264)))

(declare-fun res!1217350 () Bool)

(assert (=> b!2950377 (=> res!1217350 e!1858264)))

(assert (=> b!2950377 (= res!1217350 (not (matchR!4032 lt!1031921 s!11993)))))

(assert (=> b!2950377 (= lt!1031921 (Concat!14471 lt!1031922 lt!1031916))))

(declare-fun b!2950384 () Bool)

(assert (=> b!2950384 (= e!1858263 tp_is_empty!15863)))

(declare-fun b!2950385 () Bool)

(declare-fun res!1217351 () Bool)

(assert (=> b!2950385 (=> res!1217351 e!1858260)))

(declare-fun isEmpty!19153 (List!35015) Bool)

(assert (=> b!2950385 (= res!1217351 (isEmpty!19153 s!11993))))

(declare-fun b!2950386 () Bool)

(declare-fun res!1217347 () Bool)

(assert (=> b!2950386 (=> res!1217347 e!1858261)))

(assert (=> b!2950386 (= res!1217347 (isEmptyLang!272 lt!1031916))))

(assert (= (and start!286162 res!1217348) b!2950375))

(assert (= (and b!2950375 (not res!1217345)) b!2950385))

(assert (= (and b!2950385 (not res!1217351)) b!2950382))

(assert (= (and b!2950382 (not res!1217349)) b!2950386))

(assert (= (and b!2950386 (not res!1217347)) b!2950381))

(assert (= (and b!2950381 (not res!1217352)) b!2950376))

(assert (= (and b!2950376 (not res!1217346)) b!2950377))

(assert (= (and b!2950377 (not res!1217350)) b!2950374))

(assert (= (and start!286162 (is-ElementMatch!9150 r!17423)) b!2950384))

(assert (= (and start!286162 (is-Concat!14471 r!17423)) b!2950378))

(assert (= (and start!286162 (is-Star!9150 r!17423)) b!2950383))

(assert (= (and start!286162 (is-Union!9150 r!17423)) b!2950380))

(assert (= (and start!286162 (is-Cons!34891 s!11993)) b!2950379))

(declare-fun m!3329401 () Bool)

(assert (=> b!2950385 m!3329401))

(declare-fun m!3329403 () Bool)

(assert (=> b!2950382 m!3329403))

(declare-fun m!3329405 () Bool)

(assert (=> b!2950382 m!3329405))

(declare-fun m!3329407 () Bool)

(assert (=> b!2950382 m!3329407))

(declare-fun m!3329409 () Bool)

(assert (=> b!2950386 m!3329409))

(declare-fun m!3329411 () Bool)

(assert (=> b!2950376 m!3329411))

(declare-fun m!3329413 () Bool)

(assert (=> b!2950381 m!3329413))

(declare-fun m!3329415 () Bool)

(assert (=> b!2950377 m!3329415))

(declare-fun m!3329417 () Bool)

(assert (=> b!2950375 m!3329417))

(declare-fun m!3329419 () Bool)

(assert (=> b!2950375 m!3329419))

(declare-fun m!3329421 () Bool)

(assert (=> b!2950375 m!3329421))

(declare-fun m!3329423 () Bool)

(assert (=> start!286162 m!3329423))

(declare-fun m!3329425 () Bool)

(assert (=> b!2950374 m!3329425))

(declare-fun m!3329427 () Bool)

(assert (=> b!2950374 m!3329427))

(declare-fun m!3329429 () Bool)

(assert (=> b!2950374 m!3329429))

(declare-fun m!3329431 () Bool)

(assert (=> b!2950374 m!3329431))

(declare-fun m!3329433 () Bool)

(assert (=> b!2950374 m!3329433))

(declare-fun m!3329435 () Bool)

(assert (=> b!2950374 m!3329435))

(assert (=> b!2950374 m!3329433))

(declare-fun m!3329437 () Bool)

(assert (=> b!2950374 m!3329437))

(push 1)

(assert tp_is_empty!15863)

(assert (not start!286162))

(assert (not b!2950374))

(assert (not b!2950386))

(assert (not b!2950378))

(assert (not b!2950377))

(assert (not b!2950385))

(assert (not b!2950379))

(assert (not b!2950383))

(assert (not b!2950381))

(assert (not b!2950382))

(assert (not b!2950380))

(assert (not b!2950375))

(assert (not b!2950376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!840961 () Bool)

(assert (=> d!840961 (= (isEmptyLang!272 lt!1031916) (is-EmptyLang!9150 lt!1031916))))

(assert (=> b!2950386 d!840961))

(declare-fun d!840963 () Bool)

(assert (=> d!840963 (= (isEmptyExpr!353 lt!1031922) (is-EmptyExpr!9150 lt!1031922))))

(assert (=> b!2950381 d!840963))

(declare-fun d!840965 () Bool)

(assert (=> d!840965 (= (isEmptyExpr!353 lt!1031916) (is-EmptyExpr!9150 lt!1031916))))

(assert (=> b!2950376 d!840965))

(declare-fun b!2950456 () Bool)

(declare-fun e!1858303 () Bool)

(declare-fun call!194989 () Bool)

(assert (=> b!2950456 (= e!1858303 call!194989)))

(declare-fun b!2950457 () Bool)

(declare-fun e!1858300 () Bool)

(declare-fun e!1858301 () Bool)

(assert (=> b!2950457 (= e!1858300 e!1858301)))

(declare-fun c!482961 () Bool)

(assert (=> b!2950457 (= c!482961 (is-Union!9150 r!17423))))

(declare-fun bm!194982 () Bool)

(declare-fun call!194987 () Bool)

(declare-fun c!482960 () Bool)

(assert (=> bm!194982 (= call!194987 (validRegex!3883 (ite c!482960 (reg!9479 r!17423) (ite c!482961 (regOne!18813 r!17423) (regTwo!18812 r!17423)))))))

(declare-fun b!2950459 () Bool)

(declare-fun e!1858304 () Bool)

(assert (=> b!2950459 (= e!1858304 e!1858303)))

(declare-fun res!1217392 () Bool)

(assert (=> b!2950459 (=> (not res!1217392) (not e!1858303))))

(declare-fun call!194988 () Bool)

(assert (=> b!2950459 (= res!1217392 call!194988)))

(declare-fun bm!194983 () Bool)

(assert (=> bm!194983 (= call!194988 (validRegex!3883 (ite c!482961 (regTwo!18813 r!17423) (regOne!18812 r!17423))))))

(declare-fun b!2950460 () Bool)

(declare-fun e!1858306 () Bool)

(assert (=> b!2950460 (= e!1858300 e!1858306)))

(declare-fun res!1217391 () Bool)

(declare-fun nullable!2908 (Regex!9150) Bool)

(assert (=> b!2950460 (= res!1217391 (not (nullable!2908 (reg!9479 r!17423))))))

(assert (=> b!2950460 (=> (not res!1217391) (not e!1858306))))

(declare-fun b!2950461 () Bool)

(assert (=> b!2950461 (= e!1858306 call!194987)))

(declare-fun bm!194984 () Bool)

(assert (=> bm!194984 (= call!194989 call!194987)))

(declare-fun b!2950462 () Bool)

(declare-fun e!1858302 () Bool)

(assert (=> b!2950462 (= e!1858302 e!1858300)))

(assert (=> b!2950462 (= c!482960 (is-Star!9150 r!17423))))

(declare-fun d!840967 () Bool)

(declare-fun res!1217393 () Bool)

(assert (=> d!840967 (=> res!1217393 e!1858302)))

(assert (=> d!840967 (= res!1217393 (is-ElementMatch!9150 r!17423))))

(assert (=> d!840967 (= (validRegex!3883 r!17423) e!1858302)))

(declare-fun b!2950458 () Bool)

(declare-fun e!1858305 () Bool)

(assert (=> b!2950458 (= e!1858305 call!194988)))

(declare-fun b!2950463 () Bool)

(declare-fun res!1217394 () Bool)

(assert (=> b!2950463 (=> (not res!1217394) (not e!1858305))))

(assert (=> b!2950463 (= res!1217394 call!194989)))

(assert (=> b!2950463 (= e!1858301 e!1858305)))

(declare-fun b!2950464 () Bool)

(declare-fun res!1217395 () Bool)

(assert (=> b!2950464 (=> res!1217395 e!1858304)))

(assert (=> b!2950464 (= res!1217395 (not (is-Concat!14471 r!17423)))))

(assert (=> b!2950464 (= e!1858301 e!1858304)))

(assert (= (and d!840967 (not res!1217393)) b!2950462))

(assert (= (and b!2950462 c!482960) b!2950460))

(assert (= (and b!2950462 (not c!482960)) b!2950457))

(assert (= (and b!2950460 res!1217391) b!2950461))

(assert (= (and b!2950457 c!482961) b!2950463))

(assert (= (and b!2950457 (not c!482961)) b!2950464))

(assert (= (and b!2950463 res!1217394) b!2950458))

(assert (= (and b!2950464 (not res!1217395)) b!2950459))

(assert (= (and b!2950459 res!1217392) b!2950456))

(assert (= (or b!2950463 b!2950456) bm!194984))

(assert (= (or b!2950458 b!2950459) bm!194983))

(assert (= (or b!2950461 bm!194984) bm!194982))

(declare-fun m!3329477 () Bool)

(assert (=> bm!194982 m!3329477))

(declare-fun m!3329479 () Bool)

(assert (=> bm!194983 m!3329479))

(declare-fun m!3329481 () Bool)

(assert (=> b!2950460 m!3329481))

(assert (=> start!286162 d!840967))

(declare-fun d!840969 () Bool)

(assert (=> d!840969 (= (isEmptyLang!272 lt!1031922) (is-EmptyLang!9150 lt!1031922))))

(assert (=> b!2950382 d!840969))

(declare-fun bm!194999 () Bool)

(declare-fun call!195004 () Bool)

(declare-fun call!195009 () Bool)

(assert (=> bm!194999 (= call!195004 call!195009)))

(declare-fun b!2950515 () Bool)

(declare-fun e!1858337 () Regex!9150)

(declare-fun lt!1031957 () Regex!9150)

(assert (=> b!2950515 (= e!1858337 (Star!9150 lt!1031957))))

(declare-fun b!2950516 () Bool)

(declare-fun e!1858347 () Regex!9150)

(declare-fun e!1858346 () Regex!9150)

(assert (=> b!2950516 (= e!1858347 e!1858346)))

(declare-fun c!482992 () Bool)

(assert (=> b!2950516 (= c!482992 (is-ElementMatch!9150 (regTwo!18812 r!17423)))))

(declare-fun bm!195000 () Bool)

(declare-fun call!195006 () Regex!9150)

(declare-fun c!482990 () Bool)

(assert (=> bm!195000 (= call!195006 (simplify!155 (ite c!482990 (regTwo!18813 (regTwo!18812 r!17423)) (regOne!18812 (regTwo!18812 r!17423)))))))

(declare-fun b!2950518 () Bool)

(declare-fun e!1858335 () Regex!9150)

(declare-fun e!1858340 () Regex!9150)

(assert (=> b!2950518 (= e!1858335 e!1858340)))

(declare-fun c!482994 () Bool)

(declare-fun lt!1031959 () Regex!9150)

(assert (=> b!2950518 (= c!482994 (isEmptyExpr!353 lt!1031959))))

(declare-fun b!2950519 () Bool)

(declare-fun c!482989 () Bool)

(assert (=> b!2950519 (= c!482989 call!195004)))

(declare-fun e!1858339 () Regex!9150)

(declare-fun e!1858338 () Regex!9150)

(assert (=> b!2950519 (= e!1858339 e!1858338)))

(declare-fun lt!1031956 () Regex!9150)

(declare-fun call!195008 () Bool)

(declare-fun bm!195001 () Bool)

(assert (=> bm!195001 (= call!195008 (isEmptyLang!272 (ite c!482990 lt!1031956 lt!1031959)))))

(declare-fun call!195007 () Bool)

(declare-fun bm!195002 () Bool)

(declare-fun c!482991 () Bool)

(declare-fun lt!1031960 () Regex!9150)

(assert (=> bm!195002 (= call!195007 (isEmptyExpr!353 (ite c!482991 lt!1031957 lt!1031960)))))

(declare-fun b!2950520 () Bool)

(declare-fun e!1858348 () Regex!9150)

(assert (=> b!2950520 (= e!1858348 e!1858339)))

(declare-fun call!195010 () Regex!9150)

(assert (=> b!2950520 (= lt!1031956 call!195010)))

(declare-fun lt!1031958 () Regex!9150)

(assert (=> b!2950520 (= lt!1031958 call!195006)))

(declare-fun c!482993 () Bool)

(assert (=> b!2950520 (= c!482993 call!195008)))

(declare-fun b!2950521 () Bool)

(declare-fun c!482988 () Bool)

(assert (=> b!2950521 (= c!482988 call!195007)))

(declare-fun e!1858341 () Regex!9150)

(assert (=> b!2950521 (= e!1858341 e!1858335)))

(declare-fun b!2950522 () Bool)

(declare-fun c!482985 () Bool)

(assert (=> b!2950522 (= c!482985 (is-EmptyExpr!9150 (regTwo!18812 r!17423)))))

(declare-fun e!1858345 () Regex!9150)

(assert (=> b!2950522 (= e!1858346 e!1858345)))

(declare-fun bm!195003 () Bool)

(assert (=> bm!195003 (= call!195009 (isEmptyLang!272 (ite c!482991 lt!1031957 (ite c!482990 lt!1031958 lt!1031960))))))

(declare-fun b!2950523 () Bool)

(assert (=> b!2950523 (= e!1858346 (regTwo!18812 r!17423))))

(declare-fun bm!195004 () Bool)

(declare-fun call!195005 () Regex!9150)

(assert (=> bm!195004 (= call!195005 (simplify!155 (ite c!482991 (reg!9479 (regTwo!18812 r!17423)) (ite c!482990 (regOne!18813 (regTwo!18812 r!17423)) (regTwo!18812 (regTwo!18812 r!17423))))))))

(declare-fun b!2950524 () Bool)

(declare-fun e!1858336 () Regex!9150)

(assert (=> b!2950524 (= e!1858345 e!1858336)))

(assert (=> b!2950524 (= c!482991 (is-Star!9150 (regTwo!18812 r!17423)))))

(declare-fun b!2950525 () Bool)

(assert (=> b!2950525 (= e!1858340 (Concat!14471 lt!1031960 lt!1031959))))

(declare-fun b!2950526 () Bool)

(declare-fun e!1858343 () Bool)

(declare-fun lt!1031961 () Regex!9150)

(assert (=> b!2950526 (= e!1858343 (= (nullable!2908 lt!1031961) (nullable!2908 (regTwo!18812 r!17423))))))

(declare-fun b!2950527 () Bool)

(declare-fun e!1858344 () Bool)

(assert (=> b!2950527 (= e!1858344 call!195008)))

(declare-fun b!2950528 () Bool)

(assert (=> b!2950528 (= e!1858335 lt!1031959)))

(declare-fun b!2950529 () Bool)

(assert (=> b!2950529 (= e!1858338 (Union!9150 lt!1031956 lt!1031958))))

(declare-fun b!2950530 () Bool)

(assert (=> b!2950530 (= e!1858341 EmptyLang!9150)))

(declare-fun b!2950517 () Bool)

(declare-fun e!1858342 () Bool)

(assert (=> b!2950517 (= e!1858342 call!195007)))

(declare-fun d!840971 () Bool)

(assert (=> d!840971 e!1858343))

(declare-fun res!1217403 () Bool)

(assert (=> d!840971 (=> (not res!1217403) (not e!1858343))))

(assert (=> d!840971 (= res!1217403 (validRegex!3883 lt!1031961))))

(assert (=> d!840971 (= lt!1031961 e!1858347)))

(declare-fun c!482984 () Bool)

(assert (=> d!840971 (= c!482984 (is-EmptyLang!9150 (regTwo!18812 r!17423)))))

(assert (=> d!840971 (validRegex!3883 (regTwo!18812 r!17423))))

(assert (=> d!840971 (= (simplify!155 (regTwo!18812 r!17423)) lt!1031961)))

(declare-fun b!2950531 () Bool)

(assert (=> b!2950531 (= e!1858347 EmptyLang!9150)))

(declare-fun bm!195005 () Bool)

(assert (=> bm!195005 (= call!195010 call!195005)))

(declare-fun b!2950532 () Bool)

(assert (=> b!2950532 (= c!482990 (is-Union!9150 (regTwo!18812 r!17423)))))

(assert (=> b!2950532 (= e!1858336 e!1858348)))

(declare-fun b!2950533 () Bool)

(assert (=> b!2950533 (= e!1858345 EmptyExpr!9150)))

(declare-fun b!2950534 () Bool)

(assert (=> b!2950534 (= e!1858337 EmptyExpr!9150)))

(declare-fun b!2950535 () Bool)

(assert (=> b!2950535 (= e!1858348 e!1858341)))

(assert (=> b!2950535 (= lt!1031960 call!195006)))

(assert (=> b!2950535 (= lt!1031959 call!195010)))

(declare-fun res!1217402 () Bool)

(assert (=> b!2950535 (= res!1217402 call!195004)))

(assert (=> b!2950535 (=> res!1217402 e!1858344)))

(declare-fun c!482986 () Bool)

(assert (=> b!2950535 (= c!482986 e!1858344)))

(declare-fun b!2950536 () Bool)

(assert (=> b!2950536 (= e!1858340 lt!1031960)))

(declare-fun b!2950537 () Bool)

(assert (=> b!2950537 (= e!1858338 lt!1031956)))

(declare-fun b!2950538 () Bool)

(declare-fun c!482987 () Bool)

(assert (=> b!2950538 (= c!482987 e!1858342)))

(declare-fun res!1217404 () Bool)

(assert (=> b!2950538 (=> res!1217404 e!1858342)))

(assert (=> b!2950538 (= res!1217404 call!195009)))

(assert (=> b!2950538 (= lt!1031957 call!195005)))

(assert (=> b!2950538 (= e!1858336 e!1858337)))

(declare-fun b!2950539 () Bool)

(assert (=> b!2950539 (= e!1858339 lt!1031958)))

(assert (= (and d!840971 c!482984) b!2950531))

(assert (= (and d!840971 (not c!482984)) b!2950516))

(assert (= (and b!2950516 c!482992) b!2950523))

(assert (= (and b!2950516 (not c!482992)) b!2950522))

(assert (= (and b!2950522 c!482985) b!2950533))

(assert (= (and b!2950522 (not c!482985)) b!2950524))

(assert (= (and b!2950524 c!482991) b!2950538))

(assert (= (and b!2950524 (not c!482991)) b!2950532))

(assert (= (and b!2950538 (not res!1217404)) b!2950517))

(assert (= (and b!2950538 c!482987) b!2950534))

(assert (= (and b!2950538 (not c!482987)) b!2950515))

(assert (= (and b!2950532 c!482990) b!2950520))

(assert (= (and b!2950532 (not c!482990)) b!2950535))

(assert (= (and b!2950520 c!482993) b!2950539))

(assert (= (and b!2950520 (not c!482993)) b!2950519))

(assert (= (and b!2950519 c!482989) b!2950537))

(assert (= (and b!2950519 (not c!482989)) b!2950529))

(assert (= (and b!2950535 (not res!1217402)) b!2950527))

(assert (= (and b!2950535 c!482986) b!2950530))

(assert (= (and b!2950535 (not c!482986)) b!2950521))

(assert (= (and b!2950521 c!482988) b!2950528))

(assert (= (and b!2950521 (not c!482988)) b!2950518))

(assert (= (and b!2950518 c!482994) b!2950536))

(assert (= (and b!2950518 (not c!482994)) b!2950525))

(assert (= (or b!2950520 b!2950535) bm!195005))

(assert (= (or b!2950520 b!2950535) bm!195000))

(assert (= (or b!2950520 b!2950527) bm!195001))

(assert (= (or b!2950519 b!2950535) bm!194999))

(assert (= (or b!2950517 b!2950521) bm!195002))

(assert (= (or b!2950538 bm!195005) bm!195004))

(assert (= (or b!2950538 bm!194999) bm!195003))

(assert (= (and d!840971 res!1217403) b!2950526))

(declare-fun m!3329483 () Bool)

(assert (=> bm!195003 m!3329483))

(declare-fun m!3329485 () Bool)

(assert (=> bm!195000 m!3329485))

(declare-fun m!3329487 () Bool)

(assert (=> d!840971 m!3329487))

(assert (=> d!840971 m!3329429))

(declare-fun m!3329489 () Bool)

(assert (=> b!2950526 m!3329489))

(declare-fun m!3329491 () Bool)

(assert (=> b!2950526 m!3329491))

(declare-fun m!3329493 () Bool)

(assert (=> bm!195002 m!3329493))

(declare-fun m!3329495 () Bool)

(assert (=> bm!195001 m!3329495))

(declare-fun m!3329497 () Bool)

(assert (=> b!2950518 m!3329497))

(declare-fun m!3329499 () Bool)

(assert (=> bm!195004 m!3329499))

(assert (=> b!2950382 d!840971))

(declare-fun bm!195006 () Bool)

(declare-fun call!195011 () Bool)

(declare-fun call!195016 () Bool)

(assert (=> bm!195006 (= call!195011 call!195016)))

(declare-fun b!2950540 () Bool)

(declare-fun e!1858351 () Regex!9150)

(declare-fun lt!1031963 () Regex!9150)

(assert (=> b!2950540 (= e!1858351 (Star!9150 lt!1031963))))

(declare-fun b!2950541 () Bool)

(declare-fun e!1858361 () Regex!9150)

(declare-fun e!1858360 () Regex!9150)

(assert (=> b!2950541 (= e!1858361 e!1858360)))

(declare-fun c!483003 () Bool)

(assert (=> b!2950541 (= c!483003 (is-ElementMatch!9150 (regOne!18812 r!17423)))))

(declare-fun bm!195007 () Bool)

(declare-fun call!195013 () Regex!9150)

(declare-fun c!483001 () Bool)

(assert (=> bm!195007 (= call!195013 (simplify!155 (ite c!483001 (regTwo!18813 (regOne!18812 r!17423)) (regOne!18812 (regOne!18812 r!17423)))))))

(declare-fun b!2950543 () Bool)

(declare-fun e!1858349 () Regex!9150)

(declare-fun e!1858354 () Regex!9150)

(assert (=> b!2950543 (= e!1858349 e!1858354)))

(declare-fun c!483005 () Bool)

(declare-fun lt!1031965 () Regex!9150)

(assert (=> b!2950543 (= c!483005 (isEmptyExpr!353 lt!1031965))))

(declare-fun b!2950544 () Bool)

(declare-fun c!483000 () Bool)

(assert (=> b!2950544 (= c!483000 call!195011)))

(declare-fun e!1858353 () Regex!9150)

(declare-fun e!1858352 () Regex!9150)

(assert (=> b!2950544 (= e!1858353 e!1858352)))

(declare-fun lt!1031962 () Regex!9150)

(declare-fun call!195015 () Bool)

(declare-fun bm!195008 () Bool)

(assert (=> bm!195008 (= call!195015 (isEmptyLang!272 (ite c!483001 lt!1031962 lt!1031965)))))

(declare-fun bm!195009 () Bool)

(declare-fun call!195014 () Bool)

(declare-fun c!483002 () Bool)

(declare-fun lt!1031966 () Regex!9150)

(assert (=> bm!195009 (= call!195014 (isEmptyExpr!353 (ite c!483002 lt!1031963 lt!1031966)))))

(declare-fun b!2950545 () Bool)

(declare-fun e!1858362 () Regex!9150)

(assert (=> b!2950545 (= e!1858362 e!1858353)))

(declare-fun call!195017 () Regex!9150)

(assert (=> b!2950545 (= lt!1031962 call!195017)))

(declare-fun lt!1031964 () Regex!9150)

(assert (=> b!2950545 (= lt!1031964 call!195013)))

(declare-fun c!483004 () Bool)

(assert (=> b!2950545 (= c!483004 call!195015)))

(declare-fun b!2950546 () Bool)

(declare-fun c!482999 () Bool)

(assert (=> b!2950546 (= c!482999 call!195014)))

(declare-fun e!1858355 () Regex!9150)

(assert (=> b!2950546 (= e!1858355 e!1858349)))

(declare-fun b!2950547 () Bool)

(declare-fun c!482996 () Bool)

(assert (=> b!2950547 (= c!482996 (is-EmptyExpr!9150 (regOne!18812 r!17423)))))

(declare-fun e!1858359 () Regex!9150)

(assert (=> b!2950547 (= e!1858360 e!1858359)))

(declare-fun bm!195010 () Bool)

(assert (=> bm!195010 (= call!195016 (isEmptyLang!272 (ite c!483002 lt!1031963 (ite c!483001 lt!1031964 lt!1031966))))))

(declare-fun b!2950548 () Bool)

(assert (=> b!2950548 (= e!1858360 (regOne!18812 r!17423))))

(declare-fun call!195012 () Regex!9150)

(declare-fun bm!195011 () Bool)

(assert (=> bm!195011 (= call!195012 (simplify!155 (ite c!483002 (reg!9479 (regOne!18812 r!17423)) (ite c!483001 (regOne!18813 (regOne!18812 r!17423)) (regTwo!18812 (regOne!18812 r!17423))))))))

(declare-fun b!2950549 () Bool)

(declare-fun e!1858350 () Regex!9150)

(assert (=> b!2950549 (= e!1858359 e!1858350)))

(assert (=> b!2950549 (= c!483002 (is-Star!9150 (regOne!18812 r!17423)))))

(declare-fun b!2950550 () Bool)

(assert (=> b!2950550 (= e!1858354 (Concat!14471 lt!1031966 lt!1031965))))

(declare-fun b!2950551 () Bool)

(declare-fun e!1858357 () Bool)

(declare-fun lt!1031967 () Regex!9150)

(assert (=> b!2950551 (= e!1858357 (= (nullable!2908 lt!1031967) (nullable!2908 (regOne!18812 r!17423))))))

(declare-fun b!2950552 () Bool)

(declare-fun e!1858358 () Bool)

(assert (=> b!2950552 (= e!1858358 call!195015)))

(declare-fun b!2950553 () Bool)

(assert (=> b!2950553 (= e!1858349 lt!1031965)))

(declare-fun b!2950554 () Bool)

(assert (=> b!2950554 (= e!1858352 (Union!9150 lt!1031962 lt!1031964))))

(declare-fun b!2950555 () Bool)

(assert (=> b!2950555 (= e!1858355 EmptyLang!9150)))

(declare-fun b!2950542 () Bool)

(declare-fun e!1858356 () Bool)

(assert (=> b!2950542 (= e!1858356 call!195014)))

(declare-fun d!840981 () Bool)

(assert (=> d!840981 e!1858357))

(declare-fun res!1217406 () Bool)

(assert (=> d!840981 (=> (not res!1217406) (not e!1858357))))

(assert (=> d!840981 (= res!1217406 (validRegex!3883 lt!1031967))))

(assert (=> d!840981 (= lt!1031967 e!1858361)))

(declare-fun c!482995 () Bool)

(assert (=> d!840981 (= c!482995 (is-EmptyLang!9150 (regOne!18812 r!17423)))))

(assert (=> d!840981 (validRegex!3883 (regOne!18812 r!17423))))

(assert (=> d!840981 (= (simplify!155 (regOne!18812 r!17423)) lt!1031967)))

(declare-fun b!2950556 () Bool)

(assert (=> b!2950556 (= e!1858361 EmptyLang!9150)))

(declare-fun bm!195012 () Bool)

(assert (=> bm!195012 (= call!195017 call!195012)))

(declare-fun b!2950557 () Bool)

(assert (=> b!2950557 (= c!483001 (is-Union!9150 (regOne!18812 r!17423)))))

(assert (=> b!2950557 (= e!1858350 e!1858362)))

(declare-fun b!2950558 () Bool)

(assert (=> b!2950558 (= e!1858359 EmptyExpr!9150)))

(declare-fun b!2950559 () Bool)

(assert (=> b!2950559 (= e!1858351 EmptyExpr!9150)))

(declare-fun b!2950560 () Bool)

(assert (=> b!2950560 (= e!1858362 e!1858355)))

(assert (=> b!2950560 (= lt!1031966 call!195013)))

(assert (=> b!2950560 (= lt!1031965 call!195017)))

(declare-fun res!1217405 () Bool)

(assert (=> b!2950560 (= res!1217405 call!195011)))

(assert (=> b!2950560 (=> res!1217405 e!1858358)))

(declare-fun c!482997 () Bool)

(assert (=> b!2950560 (= c!482997 e!1858358)))

(declare-fun b!2950561 () Bool)

(assert (=> b!2950561 (= e!1858354 lt!1031966)))

(declare-fun b!2950562 () Bool)

(assert (=> b!2950562 (= e!1858352 lt!1031962)))

(declare-fun b!2950563 () Bool)

(declare-fun c!482998 () Bool)

(assert (=> b!2950563 (= c!482998 e!1858356)))

(declare-fun res!1217407 () Bool)

(assert (=> b!2950563 (=> res!1217407 e!1858356)))

(assert (=> b!2950563 (= res!1217407 call!195016)))

(assert (=> b!2950563 (= lt!1031963 call!195012)))

(assert (=> b!2950563 (= e!1858350 e!1858351)))

(declare-fun b!2950564 () Bool)

(assert (=> b!2950564 (= e!1858353 lt!1031964)))

(assert (= (and d!840981 c!482995) b!2950556))

(assert (= (and d!840981 (not c!482995)) b!2950541))

(assert (= (and b!2950541 c!483003) b!2950548))

(assert (= (and b!2950541 (not c!483003)) b!2950547))

(assert (= (and b!2950547 c!482996) b!2950558))

(assert (= (and b!2950547 (not c!482996)) b!2950549))

(assert (= (and b!2950549 c!483002) b!2950563))

(assert (= (and b!2950549 (not c!483002)) b!2950557))

(assert (= (and b!2950563 (not res!1217407)) b!2950542))

(assert (= (and b!2950563 c!482998) b!2950559))

(assert (= (and b!2950563 (not c!482998)) b!2950540))

(assert (= (and b!2950557 c!483001) b!2950545))

(assert (= (and b!2950557 (not c!483001)) b!2950560))

(assert (= (and b!2950545 c!483004) b!2950564))

(assert (= (and b!2950545 (not c!483004)) b!2950544))

(assert (= (and b!2950544 c!483000) b!2950562))

(assert (= (and b!2950544 (not c!483000)) b!2950554))

(assert (= (and b!2950560 (not res!1217405)) b!2950552))

(assert (= (and b!2950560 c!482997) b!2950555))

(assert (= (and b!2950560 (not c!482997)) b!2950546))

(assert (= (and b!2950546 c!482999) b!2950553))

(assert (= (and b!2950546 (not c!482999)) b!2950543))

(assert (= (and b!2950543 c!483005) b!2950561))

(assert (= (and b!2950543 (not c!483005)) b!2950550))

(assert (= (or b!2950545 b!2950560) bm!195012))

(assert (= (or b!2950545 b!2950560) bm!195007))

(assert (= (or b!2950545 b!2950552) bm!195008))

(assert (= (or b!2950544 b!2950560) bm!195006))

(assert (= (or b!2950542 b!2950546) bm!195009))

(assert (= (or b!2950563 bm!195012) bm!195011))

(assert (= (or b!2950563 bm!195006) bm!195010))

(assert (= (and d!840981 res!1217406) b!2950551))

(declare-fun m!3329501 () Bool)

(assert (=> bm!195010 m!3329501))

(declare-fun m!3329503 () Bool)

(assert (=> bm!195007 m!3329503))

(declare-fun m!3329505 () Bool)

(assert (=> d!840981 m!3329505))

(declare-fun m!3329507 () Bool)

(assert (=> d!840981 m!3329507))

(declare-fun m!3329509 () Bool)

(assert (=> b!2950551 m!3329509))

(declare-fun m!3329511 () Bool)

(assert (=> b!2950551 m!3329511))

(declare-fun m!3329513 () Bool)

(assert (=> bm!195009 m!3329513))

(declare-fun m!3329515 () Bool)

(assert (=> bm!195008 m!3329515))

(declare-fun m!3329517 () Bool)

(assert (=> b!2950543 m!3329517))

(declare-fun m!3329519 () Bool)

(assert (=> bm!195011 m!3329519))

(assert (=> b!2950382 d!840981))

(declare-fun b!2950627 () Bool)

(declare-fun e!1858401 () Bool)

(declare-fun lt!1031978 () Bool)

(declare-fun call!195020 () Bool)

(assert (=> b!2950627 (= e!1858401 (= lt!1031978 call!195020))))

(declare-fun b!2950628 () Bool)

(declare-fun e!1858396 () Bool)

(assert (=> b!2950628 (= e!1858401 e!1858396)))

(declare-fun c!483029 () Bool)

(assert (=> b!2950628 (= c!483029 (is-EmptyLang!9150 lt!1031921))))

(declare-fun b!2950629 () Bool)

(declare-fun res!1217431 () Bool)

(declare-fun e!1858399 () Bool)

(assert (=> b!2950629 (=> (not res!1217431) (not e!1858399))))

(declare-fun tail!4795 (List!35015) List!35015)

(assert (=> b!2950629 (= res!1217431 (isEmpty!19153 (tail!4795 s!11993)))))

(declare-fun b!2950630 () Bool)

(declare-fun e!1858395 () Bool)

(declare-fun e!1858400 () Bool)

(assert (=> b!2950630 (= e!1858395 e!1858400)))

(declare-fun res!1217426 () Bool)

(assert (=> b!2950630 (=> (not res!1217426) (not e!1858400))))

(assert (=> b!2950630 (= res!1217426 (not lt!1031978))))

(declare-fun b!2950631 () Bool)

(declare-fun e!1858397 () Bool)

(assert (=> b!2950631 (= e!1858397 (nullable!2908 lt!1031921))))

(declare-fun b!2950632 () Bool)

(declare-fun res!1217428 () Bool)

(assert (=> b!2950632 (=> res!1217428 e!1858395)))

(assert (=> b!2950632 (= res!1217428 (not (is-ElementMatch!9150 lt!1031921)))))

(assert (=> b!2950632 (= e!1858396 e!1858395)))

(declare-fun d!840983 () Bool)

(assert (=> d!840983 e!1858401))

(declare-fun c!483028 () Bool)

(assert (=> d!840983 (= c!483028 (is-EmptyExpr!9150 lt!1031921))))

(assert (=> d!840983 (= lt!1031978 e!1858397)))

(declare-fun c!483030 () Bool)

(assert (=> d!840983 (= c!483030 (isEmpty!19153 s!11993))))

(assert (=> d!840983 (validRegex!3883 lt!1031921)))

(assert (=> d!840983 (= (matchR!4032 lt!1031921 s!11993) lt!1031978)))

(declare-fun b!2950633 () Bool)

(declare-fun e!1858398 () Bool)

(assert (=> b!2950633 (= e!1858400 e!1858398)))

(declare-fun res!1217433 () Bool)

(assert (=> b!2950633 (=> res!1217433 e!1858398)))

(assert (=> b!2950633 (= res!1217433 call!195020)))

(declare-fun b!2950634 () Bool)

(declare-fun derivativeStep!2510 (Regex!9150 C!18486) Regex!9150)

(declare-fun head!6569 (List!35015) C!18486)

(assert (=> b!2950634 (= e!1858397 (matchR!4032 (derivativeStep!2510 lt!1031921 (head!6569 s!11993)) (tail!4795 s!11993)))))

(declare-fun b!2950635 () Bool)

(declare-fun res!1217430 () Bool)

(assert (=> b!2950635 (=> (not res!1217430) (not e!1858399))))

(assert (=> b!2950635 (= res!1217430 (not call!195020))))

(declare-fun b!2950636 () Bool)

(declare-fun res!1217432 () Bool)

(assert (=> b!2950636 (=> res!1217432 e!1858398)))

(assert (=> b!2950636 (= res!1217432 (not (isEmpty!19153 (tail!4795 s!11993))))))

(declare-fun b!2950637 () Bool)

(assert (=> b!2950637 (= e!1858398 (not (= (head!6569 s!11993) (c!482954 lt!1031921))))))

(declare-fun bm!195015 () Bool)

(assert (=> bm!195015 (= call!195020 (isEmpty!19153 s!11993))))

(declare-fun b!2950638 () Bool)

(assert (=> b!2950638 (= e!1858396 (not lt!1031978))))

(declare-fun b!2950639 () Bool)

(declare-fun res!1217427 () Bool)

(assert (=> b!2950639 (=> res!1217427 e!1858395)))

(assert (=> b!2950639 (= res!1217427 e!1858399)))

(declare-fun res!1217429 () Bool)

(assert (=> b!2950639 (=> (not res!1217429) (not e!1858399))))

(assert (=> b!2950639 (= res!1217429 lt!1031978)))

(declare-fun b!2950640 () Bool)

(assert (=> b!2950640 (= e!1858399 (= (head!6569 s!11993) (c!482954 lt!1031921)))))

(assert (= (and d!840983 c!483030) b!2950631))

(assert (= (and d!840983 (not c!483030)) b!2950634))

(assert (= (and d!840983 c!483028) b!2950627))

(assert (= (and d!840983 (not c!483028)) b!2950628))

(assert (= (and b!2950628 c!483029) b!2950638))

(assert (= (and b!2950628 (not c!483029)) b!2950632))

(assert (= (and b!2950632 (not res!1217428)) b!2950639))

(assert (= (and b!2950639 res!1217429) b!2950635))

(assert (= (and b!2950635 res!1217430) b!2950629))

(assert (= (and b!2950629 res!1217431) b!2950640))

(assert (= (and b!2950639 (not res!1217427)) b!2950630))

(assert (= (and b!2950630 res!1217426) b!2950633))

(assert (= (and b!2950633 (not res!1217433)) b!2950636))

(assert (= (and b!2950636 (not res!1217432)) b!2950637))

(assert (= (or b!2950627 b!2950633 b!2950635) bm!195015))

(declare-fun m!3329521 () Bool)

(assert (=> b!2950629 m!3329521))

(assert (=> b!2950629 m!3329521))

(declare-fun m!3329523 () Bool)

(assert (=> b!2950629 m!3329523))

(assert (=> bm!195015 m!3329401))

(assert (=> d!840983 m!3329401))

(declare-fun m!3329525 () Bool)

(assert (=> d!840983 m!3329525))

(declare-fun m!3329527 () Bool)

(assert (=> b!2950634 m!3329527))

(assert (=> b!2950634 m!3329527))

(declare-fun m!3329529 () Bool)

(assert (=> b!2950634 m!3329529))

(assert (=> b!2950634 m!3329521))

(assert (=> b!2950634 m!3329529))

(assert (=> b!2950634 m!3329521))

(declare-fun m!3329531 () Bool)

(assert (=> b!2950634 m!3329531))

(declare-fun m!3329533 () Bool)

(assert (=> b!2950631 m!3329533))

(assert (=> b!2950637 m!3329527))

(assert (=> b!2950636 m!3329521))

(assert (=> b!2950636 m!3329521))

(assert (=> b!2950636 m!3329523))

(assert (=> b!2950640 m!3329527))

(assert (=> b!2950377 d!840983))

(declare-fun bs!525685 () Bool)

(declare-fun d!840985 () Bool)

(assert (= bs!525685 (and d!840985 b!2950374)))

(declare-fun lambda!109733 () Int)

(assert (=> bs!525685 (= lambda!109733 lambda!109727)))

(assert (=> d!840985 true))

(assert (=> d!840985 true))

(assert (=> d!840985 true))

(assert (=> d!840985 (= (isDefined!5192 (findConcatSeparation!1035 lt!1031922 lt!1031916 Nil!34891 s!11993 s!11993)) (Exists!1482 lambda!109733))))

(declare-fun lt!1031985 () Unit!48679)

(declare-fun choose!17427 (Regex!9150 Regex!9150 List!35015) Unit!48679)

(assert (=> d!840985 (= lt!1031985 (choose!17427 lt!1031922 lt!1031916 s!11993))))

(assert (=> d!840985 (validRegex!3883 lt!1031922)))

(assert (=> d!840985 (= (lemmaFindConcatSeparationEquivalentToExists!813 lt!1031922 lt!1031916 s!11993) lt!1031985)))

(declare-fun bs!525686 () Bool)

(assert (= bs!525686 d!840985))

(declare-fun m!3329535 () Bool)

(assert (=> bs!525686 m!3329535))

(assert (=> bs!525686 m!3329433))

(declare-fun m!3329537 () Bool)

(assert (=> bs!525686 m!3329537))

(assert (=> bs!525686 m!3329433))

(assert (=> bs!525686 m!3329435))

(declare-fun m!3329539 () Bool)

(assert (=> bs!525686 m!3329539))

(assert (=> b!2950374 d!840985))

(declare-fun b!2950659 () Bool)

(declare-fun e!1858415 () Bool)

(declare-fun call!195037 () Bool)

(assert (=> b!2950659 (= e!1858415 call!195037)))

(declare-fun b!2950660 () Bool)

(declare-fun e!1858412 () Bool)

(declare-fun e!1858413 () Bool)

(assert (=> b!2950660 (= e!1858412 e!1858413)))

(declare-fun c!483038 () Bool)

(assert (=> b!2950660 (= c!483038 (is-Union!9150 (regTwo!18812 r!17423)))))

(declare-fun call!195035 () Bool)

(declare-fun c!483037 () Bool)

(declare-fun bm!195030 () Bool)

(assert (=> bm!195030 (= call!195035 (validRegex!3883 (ite c!483037 (reg!9479 (regTwo!18812 r!17423)) (ite c!483038 (regOne!18813 (regTwo!18812 r!17423)) (regTwo!18812 (regTwo!18812 r!17423))))))))

(declare-fun b!2950662 () Bool)

(declare-fun e!1858416 () Bool)

(assert (=> b!2950662 (= e!1858416 e!1858415)))

(declare-fun res!1217441 () Bool)

(assert (=> b!2950662 (=> (not res!1217441) (not e!1858415))))

(declare-fun call!195036 () Bool)

(assert (=> b!2950662 (= res!1217441 call!195036)))

(declare-fun bm!195031 () Bool)

(assert (=> bm!195031 (= call!195036 (validRegex!3883 (ite c!483038 (regTwo!18813 (regTwo!18812 r!17423)) (regOne!18812 (regTwo!18812 r!17423)))))))

(declare-fun b!2950663 () Bool)

(declare-fun e!1858418 () Bool)

(assert (=> b!2950663 (= e!1858412 e!1858418)))

(declare-fun res!1217440 () Bool)

(assert (=> b!2950663 (= res!1217440 (not (nullable!2908 (reg!9479 (regTwo!18812 r!17423)))))))

(assert (=> b!2950663 (=> (not res!1217440) (not e!1858418))))

(declare-fun b!2950664 () Bool)

(assert (=> b!2950664 (= e!1858418 call!195035)))

(declare-fun bm!195032 () Bool)

(assert (=> bm!195032 (= call!195037 call!195035)))

(declare-fun b!2950665 () Bool)

(declare-fun e!1858414 () Bool)

(assert (=> b!2950665 (= e!1858414 e!1858412)))

(assert (=> b!2950665 (= c!483037 (is-Star!9150 (regTwo!18812 r!17423)))))

(declare-fun d!840987 () Bool)

(declare-fun res!1217442 () Bool)

(assert (=> d!840987 (=> res!1217442 e!1858414)))

(assert (=> d!840987 (= res!1217442 (is-ElementMatch!9150 (regTwo!18812 r!17423)))))

(assert (=> d!840987 (= (validRegex!3883 (regTwo!18812 r!17423)) e!1858414)))

(declare-fun b!2950661 () Bool)

(declare-fun e!1858417 () Bool)

(assert (=> b!2950661 (= e!1858417 call!195036)))

(declare-fun b!2950666 () Bool)

(declare-fun res!1217443 () Bool)

(assert (=> b!2950666 (=> (not res!1217443) (not e!1858417))))

(assert (=> b!2950666 (= res!1217443 call!195037)))

(assert (=> b!2950666 (= e!1858413 e!1858417)))

(declare-fun b!2950667 () Bool)

(declare-fun res!1217444 () Bool)

(assert (=> b!2950667 (=> res!1217444 e!1858416)))

(assert (=> b!2950667 (= res!1217444 (not (is-Concat!14471 (regTwo!18812 r!17423))))))

(assert (=> b!2950667 (= e!1858413 e!1858416)))

(assert (= (and d!840987 (not res!1217442)) b!2950665))

(assert (= (and b!2950665 c!483037) b!2950663))

(assert (= (and b!2950665 (not c!483037)) b!2950660))

(assert (= (and b!2950663 res!1217440) b!2950664))

(assert (= (and b!2950660 c!483038) b!2950666))

(assert (= (and b!2950660 (not c!483038)) b!2950667))

(assert (= (and b!2950666 res!1217443) b!2950661))

(assert (= (and b!2950667 (not res!1217444)) b!2950662))

(assert (= (and b!2950662 res!1217441) b!2950659))

(assert (= (or b!2950666 b!2950659) bm!195032))

(assert (= (or b!2950661 b!2950662) bm!195031))

(assert (= (or b!2950664 bm!195032) bm!195030))

(declare-fun m!3329541 () Bool)

(assert (=> bm!195030 m!3329541))

(declare-fun m!3329543 () Bool)

(assert (=> bm!195031 m!3329543))

(declare-fun m!3329545 () Bool)

(assert (=> b!2950663 m!3329545))

(assert (=> b!2950374 d!840987))

(declare-fun d!840989 () Bool)

(declare-fun isEmpty!19155 (Option!6641) Bool)

(assert (=> d!840989 (= (isDefined!5192 (findConcatSeparation!1035 lt!1031922 lt!1031916 Nil!34891 s!11993 s!11993)) (not (isEmpty!19155 (findConcatSeparation!1035 lt!1031922 lt!1031916 Nil!34891 s!11993 s!11993))))))

(declare-fun bs!525687 () Bool)

(assert (= bs!525687 d!840989))

(assert (=> bs!525687 m!3329433))

(declare-fun m!3329547 () Bool)

(assert (=> bs!525687 m!3329547))

(assert (=> b!2950374 d!840989))

(declare-fun bs!525688 () Bool)

(declare-fun b!2950704 () Bool)

(assert (= bs!525688 (and b!2950704 b!2950374)))

(declare-fun lambda!109738 () Int)

(assert (=> bs!525688 (not (= lambda!109738 lambda!109727))))

(declare-fun bs!525689 () Bool)

(assert (= bs!525689 (and b!2950704 d!840985)))

(assert (=> bs!525689 (not (= lambda!109738 lambda!109733))))

(assert (=> b!2950704 true))

(assert (=> b!2950704 true))

(declare-fun bs!525690 () Bool)

(declare-fun b!2950707 () Bool)

(assert (= bs!525690 (and b!2950707 b!2950374)))

(declare-fun lambda!109739 () Int)

(assert (=> bs!525690 (not (= lambda!109739 lambda!109727))))

(declare-fun bs!525691 () Bool)

(assert (= bs!525691 (and b!2950707 d!840985)))

(assert (=> bs!525691 (not (= lambda!109739 lambda!109733))))

(declare-fun bs!525692 () Bool)

(assert (= bs!525692 (and b!2950707 b!2950704)))

(assert (=> bs!525692 (not (= lambda!109739 lambda!109738))))

(assert (=> b!2950707 true))

(assert (=> b!2950707 true))

(declare-fun b!2950702 () Bool)

(declare-fun e!1858439 () Bool)

(assert (=> b!2950702 (= e!1858439 (= s!11993 (Cons!34891 (c!482954 lt!1031921) Nil!34891)))))

(declare-fun b!2950703 () Bool)

(declare-fun e!1858441 () Bool)

(declare-fun e!1858443 () Bool)

(assert (=> b!2950703 (= e!1858441 e!1858443)))

(declare-fun c!483047 () Bool)

(assert (=> b!2950703 (= c!483047 (is-Star!9150 lt!1031921))))

(declare-fun e!1858440 () Bool)

(declare-fun call!195043 () Bool)

(assert (=> b!2950704 (= e!1858440 call!195043)))

(declare-fun b!2950705 () Bool)

(declare-fun e!1858442 () Bool)

(declare-fun call!195042 () Bool)

(assert (=> b!2950705 (= e!1858442 call!195042)))

(declare-fun bm!195037 () Bool)

(assert (=> bm!195037 (= call!195042 (isEmpty!19153 s!11993))))

(declare-fun b!2950706 () Bool)

(declare-fun c!483049 () Bool)

(assert (=> b!2950706 (= c!483049 (is-ElementMatch!9150 lt!1031921))))

(declare-fun e!1858445 () Bool)

(assert (=> b!2950706 (= e!1858445 e!1858439)))

(assert (=> b!2950707 (= e!1858443 call!195043)))

(declare-fun d!840991 () Bool)

(declare-fun c!483048 () Bool)

(assert (=> d!840991 (= c!483048 (is-EmptyExpr!9150 lt!1031921))))

(assert (=> d!840991 (= (matchRSpec!1287 lt!1031921 s!11993) e!1858442)))

(declare-fun b!2950708 () Bool)

(declare-fun res!1217463 () Bool)

(assert (=> b!2950708 (=> res!1217463 e!1858440)))

(assert (=> b!2950708 (= res!1217463 call!195042)))

(assert (=> b!2950708 (= e!1858443 e!1858440)))

(declare-fun bm!195038 () Bool)

(assert (=> bm!195038 (= call!195043 (Exists!1482 (ite c!483047 lambda!109738 lambda!109739)))))

(declare-fun b!2950709 () Bool)

(declare-fun c!483050 () Bool)

(assert (=> b!2950709 (= c!483050 (is-Union!9150 lt!1031921))))

(assert (=> b!2950709 (= e!1858439 e!1858441)))

(declare-fun b!2950710 () Bool)

(declare-fun e!1858444 () Bool)

(assert (=> b!2950710 (= e!1858441 e!1858444)))

(declare-fun res!1217465 () Bool)

(assert (=> b!2950710 (= res!1217465 (matchRSpec!1287 (regOne!18813 lt!1031921) s!11993))))

(assert (=> b!2950710 (=> res!1217465 e!1858444)))

(declare-fun b!2950711 () Bool)

(assert (=> b!2950711 (= e!1858442 e!1858445)))

(declare-fun res!1217464 () Bool)

(assert (=> b!2950711 (= res!1217464 (not (is-EmptyLang!9150 lt!1031921)))))

(assert (=> b!2950711 (=> (not res!1217464) (not e!1858445))))

(declare-fun b!2950712 () Bool)

(assert (=> b!2950712 (= e!1858444 (matchRSpec!1287 (regTwo!18813 lt!1031921) s!11993))))

(assert (= (and d!840991 c!483048) b!2950705))

(assert (= (and d!840991 (not c!483048)) b!2950711))

(assert (= (and b!2950711 res!1217464) b!2950706))

(assert (= (and b!2950706 c!483049) b!2950702))

(assert (= (and b!2950706 (not c!483049)) b!2950709))

(assert (= (and b!2950709 c!483050) b!2950710))

(assert (= (and b!2950709 (not c!483050)) b!2950703))

(assert (= (and b!2950710 (not res!1217465)) b!2950712))

(assert (= (and b!2950703 c!483047) b!2950708))

(assert (= (and b!2950703 (not c!483047)) b!2950707))

(assert (= (and b!2950708 (not res!1217463)) b!2950704))

(assert (= (or b!2950704 b!2950707) bm!195038))

(assert (= (or b!2950705 b!2950708) bm!195037))

(assert (=> bm!195037 m!3329401))

(declare-fun m!3329549 () Bool)

(assert (=> bm!195038 m!3329549))

(declare-fun m!3329551 () Bool)

(assert (=> b!2950710 m!3329551))

(declare-fun m!3329553 () Bool)

(assert (=> b!2950712 m!3329553))

(assert (=> b!2950374 d!840991))

(declare-fun d!840993 () Bool)

(declare-fun choose!17428 (Int) Bool)

(assert (=> d!840993 (= (Exists!1482 lambda!109727) (choose!17428 lambda!109727))))

(declare-fun bs!525693 () Bool)

(assert (= bs!525693 d!840993))

(declare-fun m!3329555 () Bool)

(assert (=> bs!525693 m!3329555))

(assert (=> b!2950374 d!840993))

(declare-fun d!840995 () Bool)

(assert (=> d!840995 (= (matchR!4032 lt!1031921 s!11993) (matchRSpec!1287 lt!1031921 s!11993))))

(declare-fun lt!1031994 () Unit!48679)

(declare-fun choose!17429 (Regex!9150 List!35015) Unit!48679)

(assert (=> d!840995 (= lt!1031994 (choose!17429 lt!1031921 s!11993))))

(assert (=> d!840995 (validRegex!3883 lt!1031921)))

(assert (=> d!840995 (= (mainMatchTheorem!1287 lt!1031921 s!11993) lt!1031994)))

(declare-fun bs!525694 () Bool)

(assert (= bs!525694 d!840995))

(assert (=> bs!525694 m!3329415))

(assert (=> bs!525694 m!3329437))

(declare-fun m!3329557 () Bool)

(assert (=> bs!525694 m!3329557))

(assert (=> bs!525694 m!3329525))

(assert (=> b!2950374 d!840995))

(declare-fun b!2950781 () Bool)

(declare-fun e!1858485 () Bool)

(assert (=> b!2950781 (= e!1858485 (matchR!4032 lt!1031916 s!11993))))

(declare-fun b!2950782 () Bool)

(declare-fun e!1858486 () Bool)

(declare-fun lt!1032008 () Option!6641)

(declare-fun ++!8319 (List!35015 List!35015) List!35015)

(declare-fun get!10695 (Option!6641) tuple2!33818)

(assert (=> b!2950782 (= e!1858486 (= (++!8319 (_1!20041 (get!10695 lt!1032008)) (_2!20041 (get!10695 lt!1032008))) s!11993))))

(declare-fun b!2950783 () Bool)

(declare-fun e!1858484 () Option!6641)

(assert (=> b!2950783 (= e!1858484 None!6640)))

(declare-fun d!840997 () Bool)

(declare-fun e!1858487 () Bool)

(assert (=> d!840997 e!1858487))

(declare-fun res!1217484 () Bool)

(assert (=> d!840997 (=> res!1217484 e!1858487)))

(assert (=> d!840997 (= res!1217484 e!1858486)))

(declare-fun res!1217483 () Bool)

(assert (=> d!840997 (=> (not res!1217483) (not e!1858486))))

(assert (=> d!840997 (= res!1217483 (isDefined!5192 lt!1032008))))

(declare-fun e!1858488 () Option!6641)

(assert (=> d!840997 (= lt!1032008 e!1858488)))

(declare-fun c!483078 () Bool)

(assert (=> d!840997 (= c!483078 e!1858485)))

(declare-fun res!1217485 () Bool)

(assert (=> d!840997 (=> (not res!1217485) (not e!1858485))))

(assert (=> d!840997 (= res!1217485 (matchR!4032 lt!1031922 Nil!34891))))

(assert (=> d!840997 (validRegex!3883 lt!1031922)))

(assert (=> d!840997 (= (findConcatSeparation!1035 lt!1031922 lt!1031916 Nil!34891 s!11993 s!11993) lt!1032008)))

(declare-fun b!2950784 () Bool)

(assert (=> b!2950784 (= e!1858488 e!1858484)))

(declare-fun c!483077 () Bool)

(assert (=> b!2950784 (= c!483077 (is-Nil!34891 s!11993))))

(declare-fun b!2950785 () Bool)

(declare-fun res!1217486 () Bool)

(assert (=> b!2950785 (=> (not res!1217486) (not e!1858486))))

(assert (=> b!2950785 (= res!1217486 (matchR!4032 lt!1031922 (_1!20041 (get!10695 lt!1032008))))))

(declare-fun b!2950786 () Bool)

(assert (=> b!2950786 (= e!1858488 (Some!6640 (tuple2!33819 Nil!34891 s!11993)))))

(declare-fun b!2950787 () Bool)

(declare-fun res!1217482 () Bool)

(assert (=> b!2950787 (=> (not res!1217482) (not e!1858486))))

(assert (=> b!2950787 (= res!1217482 (matchR!4032 lt!1031916 (_2!20041 (get!10695 lt!1032008))))))

(declare-fun b!2950788 () Bool)

(assert (=> b!2950788 (= e!1858487 (not (isDefined!5192 lt!1032008)))))

(declare-fun b!2950789 () Bool)

(declare-fun lt!1032007 () Unit!48679)

(declare-fun lt!1032009 () Unit!48679)

(assert (=> b!2950789 (= lt!1032007 lt!1032009)))

(assert (=> b!2950789 (= (++!8319 (++!8319 Nil!34891 (Cons!34891 (h!40311 s!11993) Nil!34891)) (t!234080 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!942 (List!35015 C!18486 List!35015 List!35015) Unit!48679)

(assert (=> b!2950789 (= lt!1032009 (lemmaMoveElementToOtherListKeepsConcatEq!942 Nil!34891 (h!40311 s!11993) (t!234080 s!11993) s!11993))))

(assert (=> b!2950789 (= e!1858484 (findConcatSeparation!1035 lt!1031922 lt!1031916 (++!8319 Nil!34891 (Cons!34891 (h!40311 s!11993) Nil!34891)) (t!234080 s!11993) s!11993))))

(assert (= (and d!840997 res!1217485) b!2950781))

(assert (= (and d!840997 c!483078) b!2950786))

(assert (= (and d!840997 (not c!483078)) b!2950784))

(assert (= (and b!2950784 c!483077) b!2950783))

(assert (= (and b!2950784 (not c!483077)) b!2950789))

(assert (= (and d!840997 res!1217483) b!2950785))

(assert (= (and b!2950785 res!1217486) b!2950787))

(assert (= (and b!2950787 res!1217482) b!2950782))

(assert (= (and d!840997 (not res!1217484)) b!2950788))

(declare-fun m!3329597 () Bool)

(assert (=> b!2950782 m!3329597))

(declare-fun m!3329599 () Bool)

(assert (=> b!2950782 m!3329599))

(declare-fun m!3329601 () Bool)

(assert (=> b!2950789 m!3329601))

(assert (=> b!2950789 m!3329601))

(declare-fun m!3329603 () Bool)

(assert (=> b!2950789 m!3329603))

(declare-fun m!3329605 () Bool)

(assert (=> b!2950789 m!3329605))

(assert (=> b!2950789 m!3329601))

(declare-fun m!3329607 () Bool)

(assert (=> b!2950789 m!3329607))

(declare-fun m!3329609 () Bool)

(assert (=> b!2950781 m!3329609))

(assert (=> b!2950785 m!3329597))

(declare-fun m!3329611 () Bool)

(assert (=> b!2950785 m!3329611))

(declare-fun m!3329613 () Bool)

(assert (=> d!840997 m!3329613))

(declare-fun m!3329615 () Bool)

(assert (=> d!840997 m!3329615))

(assert (=> d!840997 m!3329539))

(assert (=> b!2950787 m!3329597))

(declare-fun m!3329617 () Bool)

(assert (=> b!2950787 m!3329617))

(assert (=> b!2950788 m!3329613))

(assert (=> b!2950374 d!840997))

(declare-fun d!841007 () Bool)

(assert (=> d!841007 (= (isEmpty!19153 s!11993) (is-Nil!34891 s!11993))))

(assert (=> b!2950385 d!841007))

(declare-fun bs!525695 () Bool)

(declare-fun b!2950792 () Bool)

(assert (= bs!525695 (and b!2950792 b!2950374)))

(declare-fun lambda!109740 () Int)

(assert (=> bs!525695 (not (= lambda!109740 lambda!109727))))

(declare-fun bs!525696 () Bool)

(assert (= bs!525696 (and b!2950792 d!840985)))

(assert (=> bs!525696 (not (= lambda!109740 lambda!109733))))

(declare-fun bs!525697 () Bool)

(assert (= bs!525697 (and b!2950792 b!2950704)))

(assert (=> bs!525697 (= (and (= (reg!9479 r!17423) (reg!9479 lt!1031921)) (= r!17423 lt!1031921)) (= lambda!109740 lambda!109738))))

(declare-fun bs!525698 () Bool)

(assert (= bs!525698 (and b!2950792 b!2950707)))

(assert (=> bs!525698 (not (= lambda!109740 lambda!109739))))

(assert (=> b!2950792 true))

(assert (=> b!2950792 true))

(declare-fun bs!525699 () Bool)

(declare-fun b!2950795 () Bool)

(assert (= bs!525699 (and b!2950795 d!840985)))

(declare-fun lambda!109741 () Int)

(assert (=> bs!525699 (not (= lambda!109741 lambda!109733))))

(declare-fun bs!525700 () Bool)

(assert (= bs!525700 (and b!2950795 b!2950792)))

(assert (=> bs!525700 (not (= lambda!109741 lambda!109740))))

(declare-fun bs!525701 () Bool)

(assert (= bs!525701 (and b!2950795 b!2950707)))

(assert (=> bs!525701 (= (and (= (regOne!18812 r!17423) (regOne!18812 lt!1031921)) (= (regTwo!18812 r!17423) (regTwo!18812 lt!1031921))) (= lambda!109741 lambda!109739))))

(declare-fun bs!525702 () Bool)

(assert (= bs!525702 (and b!2950795 b!2950704)))

(assert (=> bs!525702 (not (= lambda!109741 lambda!109738))))

(declare-fun bs!525703 () Bool)

(assert (= bs!525703 (and b!2950795 b!2950374)))

(assert (=> bs!525703 (not (= lambda!109741 lambda!109727))))

(assert (=> b!2950795 true))

(assert (=> b!2950795 true))

(declare-fun b!2950790 () Bool)

(declare-fun e!1858489 () Bool)

(assert (=> b!2950790 (= e!1858489 (= s!11993 (Cons!34891 (c!482954 r!17423) Nil!34891)))))

(declare-fun b!2950791 () Bool)

(declare-fun e!1858491 () Bool)

(declare-fun e!1858493 () Bool)

(assert (=> b!2950791 (= e!1858491 e!1858493)))

(declare-fun c!483079 () Bool)

(assert (=> b!2950791 (= c!483079 (is-Star!9150 r!17423))))

(declare-fun e!1858490 () Bool)

(declare-fun call!195059 () Bool)

(assert (=> b!2950792 (= e!1858490 call!195059)))

(declare-fun b!2950793 () Bool)

(declare-fun e!1858492 () Bool)

(declare-fun call!195058 () Bool)

(assert (=> b!2950793 (= e!1858492 call!195058)))

(declare-fun bm!195053 () Bool)

(assert (=> bm!195053 (= call!195058 (isEmpty!19153 s!11993))))

(declare-fun b!2950794 () Bool)

(declare-fun c!483081 () Bool)

(assert (=> b!2950794 (= c!483081 (is-ElementMatch!9150 r!17423))))

(declare-fun e!1858495 () Bool)

(assert (=> b!2950794 (= e!1858495 e!1858489)))

(assert (=> b!2950795 (= e!1858493 call!195059)))

(declare-fun d!841009 () Bool)

(declare-fun c!483080 () Bool)

(assert (=> d!841009 (= c!483080 (is-EmptyExpr!9150 r!17423))))

(assert (=> d!841009 (= (matchRSpec!1287 r!17423 s!11993) e!1858492)))

(declare-fun b!2950796 () Bool)

(declare-fun res!1217487 () Bool)

(assert (=> b!2950796 (=> res!1217487 e!1858490)))

(assert (=> b!2950796 (= res!1217487 call!195058)))

(assert (=> b!2950796 (= e!1858493 e!1858490)))

(declare-fun bm!195054 () Bool)

(assert (=> bm!195054 (= call!195059 (Exists!1482 (ite c!483079 lambda!109740 lambda!109741)))))

(declare-fun b!2950797 () Bool)

(declare-fun c!483082 () Bool)

(assert (=> b!2950797 (= c!483082 (is-Union!9150 r!17423))))

(assert (=> b!2950797 (= e!1858489 e!1858491)))

(declare-fun b!2950798 () Bool)

(declare-fun e!1858494 () Bool)

(assert (=> b!2950798 (= e!1858491 e!1858494)))

(declare-fun res!1217489 () Bool)

(assert (=> b!2950798 (= res!1217489 (matchRSpec!1287 (regOne!18813 r!17423) s!11993))))

(assert (=> b!2950798 (=> res!1217489 e!1858494)))

(declare-fun b!2950799 () Bool)

(assert (=> b!2950799 (= e!1858492 e!1858495)))

(declare-fun res!1217488 () Bool)

(assert (=> b!2950799 (= res!1217488 (not (is-EmptyLang!9150 r!17423)))))

(assert (=> b!2950799 (=> (not res!1217488) (not e!1858495))))

(declare-fun b!2950800 () Bool)

(assert (=> b!2950800 (= e!1858494 (matchRSpec!1287 (regTwo!18813 r!17423) s!11993))))

(assert (= (and d!841009 c!483080) b!2950793))

(assert (= (and d!841009 (not c!483080)) b!2950799))

(assert (= (and b!2950799 res!1217488) b!2950794))

(assert (= (and b!2950794 c!483081) b!2950790))

(assert (= (and b!2950794 (not c!483081)) b!2950797))

(assert (= (and b!2950797 c!483082) b!2950798))

(assert (= (and b!2950797 (not c!483082)) b!2950791))

(assert (= (and b!2950798 (not res!1217489)) b!2950800))

(assert (= (and b!2950791 c!483079) b!2950796))

(assert (= (and b!2950791 (not c!483079)) b!2950795))

(assert (= (and b!2950796 (not res!1217487)) b!2950792))

(assert (= (or b!2950792 b!2950795) bm!195054))

(assert (= (or b!2950793 b!2950796) bm!195053))

(assert (=> bm!195053 m!3329401))

(declare-fun m!3329619 () Bool)

(assert (=> bm!195054 m!3329619))

(declare-fun m!3329621 () Bool)

(assert (=> b!2950798 m!3329621))

(declare-fun m!3329623 () Bool)

(assert (=> b!2950800 m!3329623))

(assert (=> b!2950375 d!841009))

(declare-fun b!2950801 () Bool)

(declare-fun e!1858502 () Bool)

(declare-fun lt!1032010 () Bool)

(declare-fun call!195060 () Bool)

(assert (=> b!2950801 (= e!1858502 (= lt!1032010 call!195060))))

(declare-fun b!2950802 () Bool)

(declare-fun e!1858497 () Bool)

(assert (=> b!2950802 (= e!1858502 e!1858497)))

(declare-fun c!483084 () Bool)

(assert (=> b!2950802 (= c!483084 (is-EmptyLang!9150 r!17423))))

(declare-fun b!2950803 () Bool)

(declare-fun res!1217495 () Bool)

(declare-fun e!1858500 () Bool)

(assert (=> b!2950803 (=> (not res!1217495) (not e!1858500))))

(assert (=> b!2950803 (= res!1217495 (isEmpty!19153 (tail!4795 s!11993)))))

(declare-fun b!2950804 () Bool)

(declare-fun e!1858496 () Bool)

(declare-fun e!1858501 () Bool)

(assert (=> b!2950804 (= e!1858496 e!1858501)))

(declare-fun res!1217490 () Bool)

(assert (=> b!2950804 (=> (not res!1217490) (not e!1858501))))

(assert (=> b!2950804 (= res!1217490 (not lt!1032010))))

(declare-fun b!2950805 () Bool)

(declare-fun e!1858498 () Bool)

(assert (=> b!2950805 (= e!1858498 (nullable!2908 r!17423))))

(declare-fun b!2950806 () Bool)

(declare-fun res!1217492 () Bool)

(assert (=> b!2950806 (=> res!1217492 e!1858496)))

(assert (=> b!2950806 (= res!1217492 (not (is-ElementMatch!9150 r!17423)))))

(assert (=> b!2950806 (= e!1858497 e!1858496)))

(declare-fun d!841011 () Bool)

(assert (=> d!841011 e!1858502))

(declare-fun c!483083 () Bool)

(assert (=> d!841011 (= c!483083 (is-EmptyExpr!9150 r!17423))))

(assert (=> d!841011 (= lt!1032010 e!1858498)))

(declare-fun c!483085 () Bool)

(assert (=> d!841011 (= c!483085 (isEmpty!19153 s!11993))))

(assert (=> d!841011 (validRegex!3883 r!17423)))

(assert (=> d!841011 (= (matchR!4032 r!17423 s!11993) lt!1032010)))

(declare-fun b!2950807 () Bool)

(declare-fun e!1858499 () Bool)

(assert (=> b!2950807 (= e!1858501 e!1858499)))

(declare-fun res!1217497 () Bool)

(assert (=> b!2950807 (=> res!1217497 e!1858499)))

(assert (=> b!2950807 (= res!1217497 call!195060)))

(declare-fun b!2950808 () Bool)

(assert (=> b!2950808 (= e!1858498 (matchR!4032 (derivativeStep!2510 r!17423 (head!6569 s!11993)) (tail!4795 s!11993)))))

(declare-fun b!2950809 () Bool)

(declare-fun res!1217494 () Bool)

(assert (=> b!2950809 (=> (not res!1217494) (not e!1858500))))

(assert (=> b!2950809 (= res!1217494 (not call!195060))))

(declare-fun b!2950810 () Bool)

(declare-fun res!1217496 () Bool)

(assert (=> b!2950810 (=> res!1217496 e!1858499)))

(assert (=> b!2950810 (= res!1217496 (not (isEmpty!19153 (tail!4795 s!11993))))))

(declare-fun b!2950811 () Bool)

(assert (=> b!2950811 (= e!1858499 (not (= (head!6569 s!11993) (c!482954 r!17423))))))

(declare-fun bm!195055 () Bool)

(assert (=> bm!195055 (= call!195060 (isEmpty!19153 s!11993))))

(declare-fun b!2950812 () Bool)

(assert (=> b!2950812 (= e!1858497 (not lt!1032010))))

(declare-fun b!2950813 () Bool)

(declare-fun res!1217491 () Bool)

(assert (=> b!2950813 (=> res!1217491 e!1858496)))

(assert (=> b!2950813 (= res!1217491 e!1858500)))

(declare-fun res!1217493 () Bool)

(assert (=> b!2950813 (=> (not res!1217493) (not e!1858500))))

(assert (=> b!2950813 (= res!1217493 lt!1032010)))

(declare-fun b!2950814 () Bool)

(assert (=> b!2950814 (= e!1858500 (= (head!6569 s!11993) (c!482954 r!17423)))))

(assert (= (and d!841011 c!483085) b!2950805))

(assert (= (and d!841011 (not c!483085)) b!2950808))

(assert (= (and d!841011 c!483083) b!2950801))

(assert (= (and d!841011 (not c!483083)) b!2950802))

(assert (= (and b!2950802 c!483084) b!2950812))

(assert (= (and b!2950802 (not c!483084)) b!2950806))

(assert (= (and b!2950806 (not res!1217492)) b!2950813))

(assert (= (and b!2950813 res!1217493) b!2950809))

(assert (= (and b!2950809 res!1217494) b!2950803))

(assert (= (and b!2950803 res!1217495) b!2950814))

(assert (= (and b!2950813 (not res!1217491)) b!2950804))

(assert (= (and b!2950804 res!1217490) b!2950807))

(assert (= (and b!2950807 (not res!1217497)) b!2950810))

(assert (= (and b!2950810 (not res!1217496)) b!2950811))

(assert (= (or b!2950801 b!2950807 b!2950809) bm!195055))

(assert (=> b!2950803 m!3329521))

(assert (=> b!2950803 m!3329521))

(assert (=> b!2950803 m!3329523))

(assert (=> bm!195055 m!3329401))

(assert (=> d!841011 m!3329401))

(assert (=> d!841011 m!3329423))

(assert (=> b!2950808 m!3329527))

(assert (=> b!2950808 m!3329527))

(declare-fun m!3329625 () Bool)

(assert (=> b!2950808 m!3329625))

(assert (=> b!2950808 m!3329521))

(assert (=> b!2950808 m!3329625))

(assert (=> b!2950808 m!3329521))

(declare-fun m!3329627 () Bool)

(assert (=> b!2950808 m!3329627))

(declare-fun m!3329629 () Bool)

(assert (=> b!2950805 m!3329629))

(assert (=> b!2950811 m!3329527))

(assert (=> b!2950810 m!3329521))

(assert (=> b!2950810 m!3329521))

(assert (=> b!2950810 m!3329523))

(assert (=> b!2950814 m!3329527))

(assert (=> b!2950375 d!841011))

(declare-fun d!841013 () Bool)

(assert (=> d!841013 (= (matchR!4032 r!17423 s!11993) (matchRSpec!1287 r!17423 s!11993))))

(declare-fun lt!1032011 () Unit!48679)

(assert (=> d!841013 (= lt!1032011 (choose!17429 r!17423 s!11993))))

(assert (=> d!841013 (validRegex!3883 r!17423)))

(assert (=> d!841013 (= (mainMatchTheorem!1287 r!17423 s!11993) lt!1032011)))

(declare-fun bs!525704 () Bool)

(assert (= bs!525704 d!841013))

(assert (=> bs!525704 m!3329419))

(assert (=> bs!525704 m!3329417))

(declare-fun m!3329631 () Bool)

(assert (=> bs!525704 m!3329631))

(assert (=> bs!525704 m!3329423))

(assert (=> b!2950375 d!841013))

(declare-fun b!2950831 () Bool)

(declare-fun e!1858507 () Bool)

(declare-fun tp!943170 () Bool)

(assert (=> b!2950831 (= e!1858507 tp!943170)))

(declare-fun b!2950830 () Bool)

(declare-fun tp!943169 () Bool)

(declare-fun tp!943171 () Bool)

(assert (=> b!2950830 (= e!1858507 (and tp!943169 tp!943171))))

(declare-fun b!2950832 () Bool)

(declare-fun tp!943168 () Bool)

(declare-fun tp!943172 () Bool)

(assert (=> b!2950832 (= e!1858507 (and tp!943168 tp!943172))))

(assert (=> b!2950383 (= tp!943136 e!1858507)))

(declare-fun b!2950829 () Bool)

(assert (=> b!2950829 (= e!1858507 tp_is_empty!15863)))

(assert (= (and b!2950383 (is-ElementMatch!9150 (reg!9479 r!17423))) b!2950829))

(assert (= (and b!2950383 (is-Concat!14471 (reg!9479 r!17423))) b!2950830))

(assert (= (and b!2950383 (is-Star!9150 (reg!9479 r!17423))) b!2950831))

(assert (= (and b!2950383 (is-Union!9150 (reg!9479 r!17423))) b!2950832))

(declare-fun b!2950837 () Bool)

(declare-fun e!1858508 () Bool)

(declare-fun tp!943175 () Bool)

(assert (=> b!2950837 (= e!1858508 tp!943175)))

(declare-fun b!2950836 () Bool)

(declare-fun tp!943174 () Bool)

(declare-fun tp!943176 () Bool)

(assert (=> b!2950836 (= e!1858508 (and tp!943174 tp!943176))))

(declare-fun b!2950838 () Bool)

(declare-fun tp!943173 () Bool)

(declare-fun tp!943177 () Bool)

(assert (=> b!2950838 (= e!1858508 (and tp!943173 tp!943177))))

(assert (=> b!2950378 (= tp!943134 e!1858508)))

(declare-fun b!2950835 () Bool)

(assert (=> b!2950835 (= e!1858508 tp_is_empty!15863)))

(assert (= (and b!2950378 (is-ElementMatch!9150 (regOne!18812 r!17423))) b!2950835))

(assert (= (and b!2950378 (is-Concat!14471 (regOne!18812 r!17423))) b!2950836))

(assert (= (and b!2950378 (is-Star!9150 (regOne!18812 r!17423))) b!2950837))

(assert (= (and b!2950378 (is-Union!9150 (regOne!18812 r!17423))) b!2950838))

(declare-fun b!2950843 () Bool)

(declare-fun e!1858511 () Bool)

(declare-fun tp!943180 () Bool)

(assert (=> b!2950843 (= e!1858511 tp!943180)))

(declare-fun b!2950842 () Bool)

(declare-fun tp!943179 () Bool)

(declare-fun tp!943181 () Bool)

(assert (=> b!2950842 (= e!1858511 (and tp!943179 tp!943181))))

(declare-fun b!2950844 () Bool)

(declare-fun tp!943178 () Bool)

(declare-fun tp!943182 () Bool)

(assert (=> b!2950844 (= e!1858511 (and tp!943178 tp!943182))))

(assert (=> b!2950378 (= tp!943138 e!1858511)))

(declare-fun b!2950841 () Bool)

(assert (=> b!2950841 (= e!1858511 tp_is_empty!15863)))

(assert (= (and b!2950378 (is-ElementMatch!9150 (regTwo!18812 r!17423))) b!2950841))

(assert (= (and b!2950378 (is-Concat!14471 (regTwo!18812 r!17423))) b!2950842))

(assert (= (and b!2950378 (is-Star!9150 (regTwo!18812 r!17423))) b!2950843))

(assert (= (and b!2950378 (is-Union!9150 (regTwo!18812 r!17423))) b!2950844))

(declare-fun b!2950855 () Bool)

(declare-fun e!1858518 () Bool)

(declare-fun tp!943185 () Bool)

(assert (=> b!2950855 (= e!1858518 (and tp_is_empty!15863 tp!943185))))

(assert (=> b!2950379 (= tp!943135 e!1858518)))

(assert (= (and b!2950379 (is-Cons!34891 (t!234080 s!11993))) b!2950855))

(declare-fun b!2950858 () Bool)

(declare-fun e!1858521 () Bool)

(declare-fun tp!943188 () Bool)

(assert (=> b!2950858 (= e!1858521 tp!943188)))

(declare-fun b!2950857 () Bool)

(declare-fun tp!943187 () Bool)

(declare-fun tp!943189 () Bool)

(assert (=> b!2950857 (= e!1858521 (and tp!943187 tp!943189))))

(declare-fun b!2950860 () Bool)

(declare-fun tp!943186 () Bool)

(declare-fun tp!943190 () Bool)

(assert (=> b!2950860 (= e!1858521 (and tp!943186 tp!943190))))

(assert (=> b!2950380 (= tp!943137 e!1858521)))

(declare-fun b!2950856 () Bool)

(assert (=> b!2950856 (= e!1858521 tp_is_empty!15863)))

(assert (= (and b!2950380 (is-ElementMatch!9150 (regOne!18813 r!17423))) b!2950856))

(assert (= (and b!2950380 (is-Concat!14471 (regOne!18813 r!17423))) b!2950857))

(assert (= (and b!2950380 (is-Star!9150 (regOne!18813 r!17423))) b!2950858))

(assert (= (and b!2950380 (is-Union!9150 (regOne!18813 r!17423))) b!2950860))

(declare-fun b!2950868 () Bool)

(declare-fun e!1858522 () Bool)

(declare-fun tp!943193 () Bool)

(assert (=> b!2950868 (= e!1858522 tp!943193)))

(declare-fun b!2950867 () Bool)

(declare-fun tp!943192 () Bool)

(declare-fun tp!943194 () Bool)

(assert (=> b!2950867 (= e!1858522 (and tp!943192 tp!943194))))

(declare-fun b!2950869 () Bool)

(declare-fun tp!943191 () Bool)

(declare-fun tp!943195 () Bool)

(assert (=> b!2950869 (= e!1858522 (and tp!943191 tp!943195))))

(assert (=> b!2950380 (= tp!943139 e!1858522)))

(declare-fun b!2950866 () Bool)

(assert (=> b!2950866 (= e!1858522 tp_is_empty!15863)))

(assert (= (and b!2950380 (is-ElementMatch!9150 (regTwo!18813 r!17423))) b!2950866))

(assert (= (and b!2950380 (is-Concat!14471 (regTwo!18813 r!17423))) b!2950867))

(assert (= (and b!2950380 (is-Star!9150 (regTwo!18813 r!17423))) b!2950868))

(assert (= (and b!2950380 (is-Union!9150 (regTwo!18813 r!17423))) b!2950869))

(push 1)

(assert (not b!2950526))

(assert (not bm!195037))

(assert (not b!2950860))

(assert (not bm!195007))

(assert (not b!2950636))

(assert (not bm!195031))

(assert tp_is_empty!15863)

(assert (not b!2950855))

(assert (not bm!195003))

(assert (not b!2950712))

(assert (not b!2950798))

(assert (not b!2950832))

(assert (not bm!195004))

(assert (not b!2950663))

(assert (not b!2950838))

(assert (not b!2950787))

(assert (not b!2950629))

(assert (not bm!195038))

(assert (not d!840985))

(assert (not b!2950634))

(assert (not b!2950785))

(assert (not bm!195002))

(assert (not bm!195008))

(assert (not b!2950837))

(assert (not b!2950836))

(assert (not b!2950867))

(assert (not bm!195009))

(assert (not b!2950782))

(assert (not d!840997))

(assert (not b!2950831))

(assert (not d!840971))

(assert (not b!2950789))

(assert (not bm!195054))

(assert (not bm!195053))

(assert (not b!2950858))

(assert (not b!2950844))

(assert (not b!2950781))

(assert (not bm!195055))

(assert (not bm!195001))

(assert (not b!2950640))

(assert (not b!2950543))

(assert (not b!2950805))

(assert (not d!841013))

(assert (not bm!195011))

(assert (not b!2950869))

(assert (not d!840995))

(assert (not bm!195010))

(assert (not b!2950631))

(assert (not b!2950518))

(assert (not d!840981))

(assert (not b!2950868))

(assert (not b!2950814))

(assert (not b!2950808))

(assert (not b!2950800))

(assert (not bm!195015))

(assert (not b!2950830))

(assert (not d!840989))

(assert (not b!2950788))

(assert (not b!2950710))

(assert (not b!2950551))

(assert (not b!2950803))

(assert (not b!2950811))

(assert (not bm!194983))

(assert (not d!840993))

(assert (not b!2950460))

(assert (not b!2950637))

(assert (not bm!195000))

(assert (not b!2950810))

(assert (not bm!195030))

(assert (not d!841011))

(assert (not d!840983))

(assert (not b!2950843))

(assert (not b!2950857))

(assert (not bm!194982))

(assert (not b!2950842))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

