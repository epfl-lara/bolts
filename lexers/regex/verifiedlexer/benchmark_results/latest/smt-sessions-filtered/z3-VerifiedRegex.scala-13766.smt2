; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!734236 () Bool)

(assert start!734236)

(declare-fun b!7623339 () Bool)

(assert (=> b!7623339 true))

(assert (=> b!7623339 true))

(declare-fun b!7623332 () Bool)

(declare-datatypes ((Unit!167548 0))(
  ( (Unit!167549) )
))
(declare-fun e!4532810 () Unit!167548)

(declare-fun Unit!167550 () Unit!167548)

(assert (=> b!7623332 (= e!4532810 Unit!167550)))

(declare-fun b!7623333 () Bool)

(declare-fun e!4532808 () Bool)

(declare-fun tp!2225740 () Bool)

(assert (=> b!7623333 (= e!4532808 tp!2225740)))

(declare-fun b!7623334 () Bool)

(declare-fun tp!2225742 () Bool)

(declare-fun tp!2225745 () Bool)

(assert (=> b!7623334 (= e!4532808 (and tp!2225742 tp!2225745))))

(declare-fun b!7623335 () Bool)

(declare-fun Unit!167551 () Unit!167548)

(assert (=> b!7623335 (= e!4532810 Unit!167551)))

(declare-fun lt!2657348 () Unit!167548)

(declare-datatypes ((C!40980 0))(
  ( (C!40981 (val!30930 Int)) )
))
(declare-datatypes ((Regex!20327 0))(
  ( (ElementMatch!20327 (c!1404878 C!40980)) (Concat!29172 (regOne!41166 Regex!20327) (regTwo!41166 Regex!20327)) (EmptyExpr!20327) (Star!20327 (reg!20656 Regex!20327)) (EmptyLang!20327) (Union!20327 (regOne!41167 Regex!20327) (regTwo!41167 Regex!20327)) )
))
(declare-fun r!14126 () Regex!20327)

(declare-datatypes ((List!73180 0))(
  ( (Nil!73056) (Cons!73056 (h!79504 C!40980) (t!387915 List!73180)) )
))
(declare-fun s!9605 () List!73180)

(declare-fun lemmaStarAppConcat!8 (Regex!20327 List!73180) Unit!167548)

(assert (=> b!7623335 (= lt!2657348 (lemmaStarAppConcat!8 (reg!20656 r!14126) s!9605))))

(declare-fun matchR!9834 (Regex!20327 List!73180) Bool)

(assert (=> b!7623335 (matchR!9834 (Concat!29172 (reg!20656 r!14126) r!14126) s!9605)))

(declare-fun lt!2657351 () Unit!167548)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!240 (Regex!20327 Regex!20327 List!73180) Unit!167548)

(assert (=> b!7623335 (= lt!2657351 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!240 (reg!20656 r!14126) r!14126 s!9605))))

(assert (=> b!7623335 false))

(declare-fun b!7623336 () Bool)

(declare-fun e!4532814 () Bool)

(declare-fun tp_is_empty!51009 () Bool)

(declare-fun tp!2225741 () Bool)

(assert (=> b!7623336 (= e!4532814 (and tp_is_empty!51009 tp!2225741))))

(declare-fun b!7623337 () Bool)

(declare-fun e!4532815 () Bool)

(declare-fun tp!2225743 () Bool)

(assert (=> b!7623337 (= e!4532815 (and tp_is_empty!51009 tp!2225743))))

(declare-fun b!7623338 () Bool)

(declare-fun e!4532809 () Bool)

(declare-fun tp!2225744 () Bool)

(assert (=> b!7623338 (= e!4532809 (and tp_is_empty!51009 tp!2225744))))

(declare-fun e!4532811 () Bool)

(declare-fun e!4532813 () Bool)

(assert (=> b!7623339 (= e!4532811 (not e!4532813))))

(declare-fun res!3052348 () Bool)

(assert (=> b!7623339 (=> res!3052348 e!4532813)))

(declare-fun lt!2657352 () Bool)

(assert (=> b!7623339 (= res!3052348 lt!2657352)))

(declare-fun lambda!468579 () Int)

(declare-fun Exists!4483 (Int) Bool)

(assert (=> b!7623339 (= lt!2657352 (Exists!4483 lambda!468579))))

(declare-datatypes ((tuple2!69216 0))(
  ( (tuple2!69217 (_1!37911 List!73180) (_2!37911 List!73180)) )
))
(declare-datatypes ((Option!17402 0))(
  ( (None!17401) (Some!17401 (v!54536 tuple2!69216)) )
))
(declare-fun isDefined!14018 (Option!17402) Bool)

(declare-fun findConcatSeparation!3432 (Regex!20327 Regex!20327 List!73180 List!73180 List!73180) Option!17402)

(assert (=> b!7623339 (= lt!2657352 (isDefined!14018 (findConcatSeparation!3432 (reg!20656 r!14126) r!14126 Nil!73056 s!9605 s!9605)))))

(declare-fun lt!2657350 () Unit!167548)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3190 (Regex!20327 Regex!20327 List!73180) Unit!167548)

(assert (=> b!7623339 (= lt!2657350 (lemmaFindConcatSeparationEquivalentToExists!3190 (reg!20656 r!14126) r!14126 s!9605))))

(declare-fun b!7623340 () Bool)

(declare-fun res!3052354 () Bool)

(declare-fun e!4532812 () Bool)

(assert (=> b!7623340 (=> res!3052354 e!4532812)))

(declare-fun cut!10 () tuple2!69216)

(declare-fun ++!17633 (List!73180 List!73180) List!73180)

(assert (=> b!7623340 (= res!3052354 (not (= (++!17633 (_1!37911 cut!10) (_2!37911 cut!10)) s!9605)))))

(declare-fun b!7623341 () Bool)

(declare-fun tp!2225747 () Bool)

(declare-fun tp!2225746 () Bool)

(assert (=> b!7623341 (= e!4532808 (and tp!2225747 tp!2225746))))

(declare-fun b!7623342 () Bool)

(assert (=> b!7623342 (= e!4532813 e!4532812)))

(declare-fun res!3052349 () Bool)

(assert (=> b!7623342 (=> res!3052349 e!4532812)))

(assert (=> b!7623342 (= res!3052349 (Exists!4483 lambda!468579))))

(declare-fun lt!2657349 () Unit!167548)

(assert (=> b!7623342 (= lt!2657349 e!4532810)))

(declare-fun c!1404877 () Bool)

(assert (=> b!7623342 (= c!1404877 (matchR!9834 r!14126 s!9605))))

(declare-fun b!7623343 () Bool)

(declare-fun res!3052351 () Bool)

(assert (=> b!7623343 (=> res!3052351 e!4532812)))

(declare-fun isEmpty!41680 (List!73180) Bool)

(assert (=> b!7623343 (= res!3052351 (isEmpty!41680 (_1!37911 cut!10)))))

(declare-fun res!3052350 () Bool)

(assert (=> start!734236 (=> (not res!3052350) (not e!4532811))))

(declare-fun validRegex!10747 (Regex!20327) Bool)

(assert (=> start!734236 (= res!3052350 (validRegex!10747 r!14126))))

(assert (=> start!734236 e!4532811))

(assert (=> start!734236 e!4532808))

(assert (=> start!734236 e!4532809))

(assert (=> start!734236 (and e!4532814 e!4532815)))

(declare-fun b!7623344 () Bool)

(declare-fun res!3052352 () Bool)

(assert (=> b!7623344 (=> (not res!3052352) (not e!4532811))))

(assert (=> b!7623344 (= res!3052352 (not (isEmpty!41680 s!9605)))))

(declare-fun b!7623345 () Bool)

(declare-fun res!3052353 () Bool)

(assert (=> b!7623345 (=> (not res!3052353) (not e!4532811))))

(get-info :version)

(assert (=> b!7623345 (= res!3052353 (and (not ((_ is EmptyExpr!20327) r!14126)) (not ((_ is EmptyLang!20327) r!14126)) (not ((_ is ElementMatch!20327) r!14126)) (not ((_ is Union!20327) r!14126)) ((_ is Star!20327) r!14126)))))

(declare-fun b!7623346 () Bool)

(assert (=> b!7623346 (= e!4532812 (validRegex!10747 (reg!20656 r!14126)))))

(declare-fun b!7623347 () Bool)

(assert (=> b!7623347 (= e!4532808 tp_is_empty!51009)))

(assert (= (and start!734236 res!3052350) b!7623345))

(assert (= (and b!7623345 res!3052353) b!7623344))

(assert (= (and b!7623344 res!3052352) b!7623339))

(assert (= (and b!7623339 (not res!3052348)) b!7623342))

(assert (= (and b!7623342 c!1404877) b!7623335))

(assert (= (and b!7623342 (not c!1404877)) b!7623332))

(assert (= (and b!7623342 (not res!3052349)) b!7623340))

(assert (= (and b!7623340 (not res!3052354)) b!7623343))

(assert (= (and b!7623343 (not res!3052351)) b!7623346))

(assert (= (and start!734236 ((_ is ElementMatch!20327) r!14126)) b!7623347))

(assert (= (and start!734236 ((_ is Concat!29172) r!14126)) b!7623334))

(assert (= (and start!734236 ((_ is Star!20327) r!14126)) b!7623333))

(assert (= (and start!734236 ((_ is Union!20327) r!14126)) b!7623341))

(assert (= (and start!734236 ((_ is Cons!73056) s!9605)) b!7623338))

(assert (= (and start!734236 ((_ is Cons!73056) (_1!37911 cut!10))) b!7623336))

(assert (= (and start!734236 ((_ is Cons!73056) (_2!37911 cut!10))) b!7623337))

(declare-fun m!8154192 () Bool)

(assert (=> b!7623340 m!8154192))

(declare-fun m!8154194 () Bool)

(assert (=> b!7623343 m!8154194))

(declare-fun m!8154196 () Bool)

(assert (=> start!734236 m!8154196))

(declare-fun m!8154198 () Bool)

(assert (=> b!7623344 m!8154198))

(declare-fun m!8154200 () Bool)

(assert (=> b!7623335 m!8154200))

(declare-fun m!8154202 () Bool)

(assert (=> b!7623335 m!8154202))

(declare-fun m!8154204 () Bool)

(assert (=> b!7623335 m!8154204))

(declare-fun m!8154206 () Bool)

(assert (=> b!7623342 m!8154206))

(declare-fun m!8154208 () Bool)

(assert (=> b!7623342 m!8154208))

(declare-fun m!8154210 () Bool)

(assert (=> b!7623346 m!8154210))

(assert (=> b!7623339 m!8154206))

(declare-fun m!8154212 () Bool)

(assert (=> b!7623339 m!8154212))

(assert (=> b!7623339 m!8154212))

(declare-fun m!8154214 () Bool)

(assert (=> b!7623339 m!8154214))

(declare-fun m!8154216 () Bool)

(assert (=> b!7623339 m!8154216))

(check-sat (not b!7623343) (not b!7623338) (not b!7623340) (not b!7623342) tp_is_empty!51009 (not b!7623344) (not b!7623337) (not b!7623346) (not b!7623341) (not b!7623339) (not b!7623336) (not b!7623335) (not b!7623333) (not b!7623334) (not start!734236))
(check-sat)
(get-model)

(declare-fun b!7623370 () Bool)

(declare-fun res!3052365 () Bool)

(declare-fun e!4532832 () Bool)

(assert (=> b!7623370 (=> res!3052365 e!4532832)))

(assert (=> b!7623370 (= res!3052365 (not ((_ is Concat!29172) r!14126)))))

(declare-fun e!4532830 () Bool)

(assert (=> b!7623370 (= e!4532830 e!4532832)))

(declare-fun c!1404884 () Bool)

(declare-fun call!700066 () Bool)

(declare-fun bm!700060 () Bool)

(declare-fun c!1404883 () Bool)

(assert (=> bm!700060 (= call!700066 (validRegex!10747 (ite c!1404884 (reg!20656 r!14126) (ite c!1404883 (regTwo!41167 r!14126) (regTwo!41166 r!14126)))))))

(declare-fun bm!700061 () Bool)

(declare-fun call!700067 () Bool)

(assert (=> bm!700061 (= call!700067 (validRegex!10747 (ite c!1404883 (regOne!41167 r!14126) (regOne!41166 r!14126))))))

(declare-fun b!7623372 () Bool)

(declare-fun res!3052368 () Bool)

(declare-fun e!4532833 () Bool)

(assert (=> b!7623372 (=> (not res!3052368) (not e!4532833))))

(assert (=> b!7623372 (= res!3052368 call!700067)))

(assert (=> b!7623372 (= e!4532830 e!4532833)))

(declare-fun d!2323475 () Bool)

(declare-fun res!3052366 () Bool)

(declare-fun e!4532831 () Bool)

(assert (=> d!2323475 (=> res!3052366 e!4532831)))

(assert (=> d!2323475 (= res!3052366 ((_ is ElementMatch!20327) r!14126))))

(assert (=> d!2323475 (= (validRegex!10747 r!14126) e!4532831)))

(declare-fun b!7623371 () Bool)

(declare-fun e!4532834 () Bool)

(assert (=> b!7623371 (= e!4532834 e!4532830)))

(assert (=> b!7623371 (= c!1404883 ((_ is Union!20327) r!14126))))

(declare-fun b!7623373 () Bool)

(declare-fun call!700065 () Bool)

(assert (=> b!7623373 (= e!4532833 call!700065)))

(declare-fun bm!700062 () Bool)

(assert (=> bm!700062 (= call!700065 call!700066)))

(declare-fun b!7623374 () Bool)

(assert (=> b!7623374 (= e!4532831 e!4532834)))

(assert (=> b!7623374 (= c!1404884 ((_ is Star!20327) r!14126))))

(declare-fun b!7623375 () Bool)

(declare-fun e!4532836 () Bool)

(assert (=> b!7623375 (= e!4532832 e!4532836)))

(declare-fun res!3052369 () Bool)

(assert (=> b!7623375 (=> (not res!3052369) (not e!4532836))))

(assert (=> b!7623375 (= res!3052369 call!700067)))

(declare-fun b!7623376 () Bool)

(declare-fun e!4532835 () Bool)

(assert (=> b!7623376 (= e!4532834 e!4532835)))

(declare-fun res!3052367 () Bool)

(declare-fun nullable!8887 (Regex!20327) Bool)

(assert (=> b!7623376 (= res!3052367 (not (nullable!8887 (reg!20656 r!14126))))))

(assert (=> b!7623376 (=> (not res!3052367) (not e!4532835))))

(declare-fun b!7623377 () Bool)

(assert (=> b!7623377 (= e!4532835 call!700066)))

(declare-fun b!7623378 () Bool)

(assert (=> b!7623378 (= e!4532836 call!700065)))

(assert (= (and d!2323475 (not res!3052366)) b!7623374))

(assert (= (and b!7623374 c!1404884) b!7623376))

(assert (= (and b!7623374 (not c!1404884)) b!7623371))

(assert (= (and b!7623376 res!3052367) b!7623377))

(assert (= (and b!7623371 c!1404883) b!7623372))

(assert (= (and b!7623371 (not c!1404883)) b!7623370))

(assert (= (and b!7623372 res!3052368) b!7623373))

(assert (= (and b!7623370 (not res!3052365)) b!7623375))

(assert (= (and b!7623375 res!3052369) b!7623378))

(assert (= (or b!7623372 b!7623375) bm!700061))

(assert (= (or b!7623373 b!7623378) bm!700062))

(assert (= (or b!7623377 bm!700062) bm!700060))

(declare-fun m!8154218 () Bool)

(assert (=> bm!700060 m!8154218))

(declare-fun m!8154220 () Bool)

(assert (=> bm!700061 m!8154220))

(declare-fun m!8154222 () Bool)

(assert (=> b!7623376 m!8154222))

(assert (=> start!734236 d!2323475))

(declare-fun d!2323477 () Bool)

(assert (=> d!2323477 (= (isEmpty!41680 (_1!37911 cut!10)) ((_ is Nil!73056) (_1!37911 cut!10)))))

(assert (=> b!7623343 d!2323477))

(declare-fun d!2323479 () Bool)

(declare-fun choose!58828 (Int) Bool)

(assert (=> d!2323479 (= (Exists!4483 lambda!468579) (choose!58828 lambda!468579))))

(declare-fun bs!1943571 () Bool)

(assert (= bs!1943571 d!2323479))

(declare-fun m!8154224 () Bool)

(assert (=> bs!1943571 m!8154224))

(assert (=> b!7623342 d!2323479))

(declare-fun b!7623407 () Bool)

(declare-fun e!4532851 () Bool)

(declare-fun head!15661 (List!73180) C!40980)

(assert (=> b!7623407 (= e!4532851 (= (head!15661 s!9605) (c!1404878 r!14126)))))

(declare-fun b!7623408 () Bool)

(declare-fun e!4532854 () Bool)

(declare-fun lt!2657355 () Bool)

(declare-fun call!700070 () Bool)

(assert (=> b!7623408 (= e!4532854 (= lt!2657355 call!700070))))

(declare-fun b!7623409 () Bool)

(declare-fun res!3052386 () Bool)

(assert (=> b!7623409 (=> (not res!3052386) (not e!4532851))))

(assert (=> b!7623409 (= res!3052386 (not call!700070))))

(declare-fun b!7623410 () Bool)

(declare-fun res!3052391 () Bool)

(declare-fun e!4532852 () Bool)

(assert (=> b!7623410 (=> res!3052391 e!4532852)))

(assert (=> b!7623410 (= res!3052391 e!4532851)))

(declare-fun res!3052390 () Bool)

(assert (=> b!7623410 (=> (not res!3052390) (not e!4532851))))

(assert (=> b!7623410 (= res!3052390 lt!2657355)))

(declare-fun b!7623412 () Bool)

(declare-fun res!3052389 () Bool)

(declare-fun e!4532855 () Bool)

(assert (=> b!7623412 (=> res!3052389 e!4532855)))

(declare-fun tail!15201 (List!73180) List!73180)

(assert (=> b!7623412 (= res!3052389 (not (isEmpty!41680 (tail!15201 s!9605))))))

(declare-fun b!7623413 () Bool)

(declare-fun e!4532857 () Bool)

(declare-fun derivativeStep!5861 (Regex!20327 C!40980) Regex!20327)

(assert (=> b!7623413 (= e!4532857 (matchR!9834 (derivativeStep!5861 r!14126 (head!15661 s!9605)) (tail!15201 s!9605)))))

(declare-fun b!7623414 () Bool)

(assert (=> b!7623414 (= e!4532857 (nullable!8887 r!14126))))

(declare-fun b!7623415 () Bool)

(declare-fun e!4532856 () Bool)

(assert (=> b!7623415 (= e!4532852 e!4532856)))

(declare-fun res!3052387 () Bool)

(assert (=> b!7623415 (=> (not res!3052387) (not e!4532856))))

(assert (=> b!7623415 (= res!3052387 (not lt!2657355))))

(declare-fun b!7623416 () Bool)

(assert (=> b!7623416 (= e!4532856 e!4532855)))

(declare-fun res!3052388 () Bool)

(assert (=> b!7623416 (=> res!3052388 e!4532855)))

(assert (=> b!7623416 (= res!3052388 call!700070)))

(declare-fun b!7623417 () Bool)

(assert (=> b!7623417 (= e!4532855 (not (= (head!15661 s!9605) (c!1404878 r!14126))))))

(declare-fun b!7623418 () Bool)

(declare-fun e!4532853 () Bool)

(assert (=> b!7623418 (= e!4532853 (not lt!2657355))))

(declare-fun b!7623419 () Bool)

(assert (=> b!7623419 (= e!4532854 e!4532853)))

(declare-fun c!1404892 () Bool)

(assert (=> b!7623419 (= c!1404892 ((_ is EmptyLang!20327) r!14126))))

(declare-fun b!7623411 () Bool)

(declare-fun res!3052393 () Bool)

(assert (=> b!7623411 (=> (not res!3052393) (not e!4532851))))

(assert (=> b!7623411 (= res!3052393 (isEmpty!41680 (tail!15201 s!9605)))))

(declare-fun d!2323481 () Bool)

(assert (=> d!2323481 e!4532854))

(declare-fun c!1404893 () Bool)

(assert (=> d!2323481 (= c!1404893 ((_ is EmptyExpr!20327) r!14126))))

(assert (=> d!2323481 (= lt!2657355 e!4532857)))

(declare-fun c!1404891 () Bool)

(assert (=> d!2323481 (= c!1404891 (isEmpty!41680 s!9605))))

(assert (=> d!2323481 (validRegex!10747 r!14126)))

(assert (=> d!2323481 (= (matchR!9834 r!14126 s!9605) lt!2657355)))

(declare-fun b!7623420 () Bool)

(declare-fun res!3052392 () Bool)

(assert (=> b!7623420 (=> res!3052392 e!4532852)))

(assert (=> b!7623420 (= res!3052392 (not ((_ is ElementMatch!20327) r!14126)))))

(assert (=> b!7623420 (= e!4532853 e!4532852)))

(declare-fun bm!700065 () Bool)

(assert (=> bm!700065 (= call!700070 (isEmpty!41680 s!9605))))

(assert (= (and d!2323481 c!1404891) b!7623414))

(assert (= (and d!2323481 (not c!1404891)) b!7623413))

(assert (= (and d!2323481 c!1404893) b!7623408))

(assert (= (and d!2323481 (not c!1404893)) b!7623419))

(assert (= (and b!7623419 c!1404892) b!7623418))

(assert (= (and b!7623419 (not c!1404892)) b!7623420))

(assert (= (and b!7623420 (not res!3052392)) b!7623410))

(assert (= (and b!7623410 res!3052390) b!7623409))

(assert (= (and b!7623409 res!3052386) b!7623411))

(assert (= (and b!7623411 res!3052393) b!7623407))

(assert (= (and b!7623410 (not res!3052391)) b!7623415))

(assert (= (and b!7623415 res!3052387) b!7623416))

(assert (= (and b!7623416 (not res!3052388)) b!7623412))

(assert (= (and b!7623412 (not res!3052389)) b!7623417))

(assert (= (or b!7623408 b!7623409 b!7623416) bm!700065))

(assert (=> d!2323481 m!8154198))

(assert (=> d!2323481 m!8154196))

(assert (=> bm!700065 m!8154198))

(declare-fun m!8154230 () Bool)

(assert (=> b!7623407 m!8154230))

(declare-fun m!8154232 () Bool)

(assert (=> b!7623412 m!8154232))

(assert (=> b!7623412 m!8154232))

(declare-fun m!8154234 () Bool)

(assert (=> b!7623412 m!8154234))

(declare-fun m!8154236 () Bool)

(assert (=> b!7623414 m!8154236))

(assert (=> b!7623411 m!8154232))

(assert (=> b!7623411 m!8154232))

(assert (=> b!7623411 m!8154234))

(assert (=> b!7623417 m!8154230))

(assert (=> b!7623413 m!8154230))

(assert (=> b!7623413 m!8154230))

(declare-fun m!8154238 () Bool)

(assert (=> b!7623413 m!8154238))

(assert (=> b!7623413 m!8154232))

(assert (=> b!7623413 m!8154238))

(assert (=> b!7623413 m!8154232))

(declare-fun m!8154240 () Bool)

(assert (=> b!7623413 m!8154240))

(assert (=> b!7623342 d!2323481))

(declare-fun b!7623448 () Bool)

(declare-fun e!4532873 () List!73180)

(assert (=> b!7623448 (= e!4532873 (Cons!73056 (h!79504 (_1!37911 cut!10)) (++!17633 (t!387915 (_1!37911 cut!10)) (_2!37911 cut!10))))))

(declare-fun b!7623450 () Bool)

(declare-fun e!4532872 () Bool)

(declare-fun lt!2657364 () List!73180)

(assert (=> b!7623450 (= e!4532872 (or (not (= (_2!37911 cut!10) Nil!73056)) (= lt!2657364 (_1!37911 cut!10))))))

(declare-fun b!7623449 () Bool)

(declare-fun res!3052409 () Bool)

(assert (=> b!7623449 (=> (not res!3052409) (not e!4532872))))

(declare-fun size!42541 (List!73180) Int)

(assert (=> b!7623449 (= res!3052409 (= (size!42541 lt!2657364) (+ (size!42541 (_1!37911 cut!10)) (size!42541 (_2!37911 cut!10)))))))

(declare-fun b!7623447 () Bool)

(assert (=> b!7623447 (= e!4532873 (_2!37911 cut!10))))

(declare-fun d!2323489 () Bool)

(assert (=> d!2323489 e!4532872))

(declare-fun res!3052408 () Bool)

(assert (=> d!2323489 (=> (not res!3052408) (not e!4532872))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15448 (List!73180) (InoxSet C!40980))

(assert (=> d!2323489 (= res!3052408 (= (content!15448 lt!2657364) ((_ map or) (content!15448 (_1!37911 cut!10)) (content!15448 (_2!37911 cut!10)))))))

(assert (=> d!2323489 (= lt!2657364 e!4532873)))

(declare-fun c!1404900 () Bool)

(assert (=> d!2323489 (= c!1404900 ((_ is Nil!73056) (_1!37911 cut!10)))))

(assert (=> d!2323489 (= (++!17633 (_1!37911 cut!10) (_2!37911 cut!10)) lt!2657364)))

(assert (= (and d!2323489 c!1404900) b!7623447))

(assert (= (and d!2323489 (not c!1404900)) b!7623448))

(assert (= (and d!2323489 res!3052408) b!7623449))

(assert (= (and b!7623449 res!3052409) b!7623450))

(declare-fun m!8154242 () Bool)

(assert (=> b!7623448 m!8154242))

(declare-fun m!8154244 () Bool)

(assert (=> b!7623449 m!8154244))

(declare-fun m!8154246 () Bool)

(assert (=> b!7623449 m!8154246))

(declare-fun m!8154248 () Bool)

(assert (=> b!7623449 m!8154248))

(declare-fun m!8154250 () Bool)

(assert (=> d!2323489 m!8154250))

(declare-fun m!8154252 () Bool)

(assert (=> d!2323489 m!8154252))

(declare-fun m!8154254 () Bool)

(assert (=> d!2323489 m!8154254))

(assert (=> b!7623340 d!2323489))

(declare-fun d!2323491 () Bool)

(declare-fun e!4532881 () Bool)

(assert (=> d!2323491 e!4532881))

(declare-fun res!3052417 () Bool)

(assert (=> d!2323491 (=> res!3052417 e!4532881)))

(assert (=> d!2323491 (= res!3052417 (isEmpty!41680 s!9605))))

(declare-fun lt!2657370 () Unit!167548)

(declare-fun choose!58830 (Regex!20327 List!73180) Unit!167548)

(assert (=> d!2323491 (= lt!2657370 (choose!58830 (reg!20656 r!14126) s!9605))))

(assert (=> d!2323491 (validRegex!10747 (Star!20327 (reg!20656 r!14126)))))

(assert (=> d!2323491 (= (lemmaStarAppConcat!8 (reg!20656 r!14126) s!9605) lt!2657370)))

(declare-fun b!7623462 () Bool)

(assert (=> b!7623462 (= e!4532881 (matchR!9834 (Concat!29172 (reg!20656 r!14126) (Star!20327 (reg!20656 r!14126))) s!9605))))

(assert (= (and d!2323491 (not res!3052417)) b!7623462))

(assert (=> d!2323491 m!8154198))

(declare-fun m!8154276 () Bool)

(assert (=> d!2323491 m!8154276))

(declare-fun m!8154278 () Bool)

(assert (=> d!2323491 m!8154278))

(declare-fun m!8154280 () Bool)

(assert (=> b!7623462 m!8154280))

(assert (=> b!7623335 d!2323491))

(declare-fun b!7623463 () Bool)

(declare-fun e!4532882 () Bool)

(assert (=> b!7623463 (= e!4532882 (= (head!15661 s!9605) (c!1404878 (Concat!29172 (reg!20656 r!14126) r!14126))))))

(declare-fun b!7623464 () Bool)

(declare-fun e!4532885 () Bool)

(declare-fun lt!2657371 () Bool)

(declare-fun call!700071 () Bool)

(assert (=> b!7623464 (= e!4532885 (= lt!2657371 call!700071))))

(declare-fun b!7623465 () Bool)

(declare-fun res!3052418 () Bool)

(assert (=> b!7623465 (=> (not res!3052418) (not e!4532882))))

(assert (=> b!7623465 (= res!3052418 (not call!700071))))

(declare-fun b!7623466 () Bool)

(declare-fun res!3052423 () Bool)

(declare-fun e!4532883 () Bool)

(assert (=> b!7623466 (=> res!3052423 e!4532883)))

(assert (=> b!7623466 (= res!3052423 e!4532882)))

(declare-fun res!3052422 () Bool)

(assert (=> b!7623466 (=> (not res!3052422) (not e!4532882))))

(assert (=> b!7623466 (= res!3052422 lt!2657371)))

(declare-fun b!7623468 () Bool)

(declare-fun res!3052421 () Bool)

(declare-fun e!4532886 () Bool)

(assert (=> b!7623468 (=> res!3052421 e!4532886)))

(assert (=> b!7623468 (= res!3052421 (not (isEmpty!41680 (tail!15201 s!9605))))))

(declare-fun b!7623469 () Bool)

(declare-fun e!4532888 () Bool)

(assert (=> b!7623469 (= e!4532888 (matchR!9834 (derivativeStep!5861 (Concat!29172 (reg!20656 r!14126) r!14126) (head!15661 s!9605)) (tail!15201 s!9605)))))

(declare-fun b!7623470 () Bool)

(assert (=> b!7623470 (= e!4532888 (nullable!8887 (Concat!29172 (reg!20656 r!14126) r!14126)))))

(declare-fun b!7623471 () Bool)

(declare-fun e!4532887 () Bool)

(assert (=> b!7623471 (= e!4532883 e!4532887)))

(declare-fun res!3052419 () Bool)

(assert (=> b!7623471 (=> (not res!3052419) (not e!4532887))))

(assert (=> b!7623471 (= res!3052419 (not lt!2657371))))

(declare-fun b!7623472 () Bool)

(assert (=> b!7623472 (= e!4532887 e!4532886)))

(declare-fun res!3052420 () Bool)

(assert (=> b!7623472 (=> res!3052420 e!4532886)))

(assert (=> b!7623472 (= res!3052420 call!700071)))

(declare-fun b!7623473 () Bool)

(assert (=> b!7623473 (= e!4532886 (not (= (head!15661 s!9605) (c!1404878 (Concat!29172 (reg!20656 r!14126) r!14126)))))))

(declare-fun b!7623474 () Bool)

(declare-fun e!4532884 () Bool)

(assert (=> b!7623474 (= e!4532884 (not lt!2657371))))

(declare-fun b!7623475 () Bool)

(assert (=> b!7623475 (= e!4532885 e!4532884)))

(declare-fun c!1404904 () Bool)

(assert (=> b!7623475 (= c!1404904 ((_ is EmptyLang!20327) (Concat!29172 (reg!20656 r!14126) r!14126)))))

(declare-fun b!7623467 () Bool)

(declare-fun res!3052425 () Bool)

(assert (=> b!7623467 (=> (not res!3052425) (not e!4532882))))

(assert (=> b!7623467 (= res!3052425 (isEmpty!41680 (tail!15201 s!9605)))))

(declare-fun d!2323495 () Bool)

(assert (=> d!2323495 e!4532885))

(declare-fun c!1404905 () Bool)

(assert (=> d!2323495 (= c!1404905 ((_ is EmptyExpr!20327) (Concat!29172 (reg!20656 r!14126) r!14126)))))

(assert (=> d!2323495 (= lt!2657371 e!4532888)))

(declare-fun c!1404903 () Bool)

(assert (=> d!2323495 (= c!1404903 (isEmpty!41680 s!9605))))

(assert (=> d!2323495 (validRegex!10747 (Concat!29172 (reg!20656 r!14126) r!14126))))

(assert (=> d!2323495 (= (matchR!9834 (Concat!29172 (reg!20656 r!14126) r!14126) s!9605) lt!2657371)))

(declare-fun b!7623476 () Bool)

(declare-fun res!3052424 () Bool)

(assert (=> b!7623476 (=> res!3052424 e!4532883)))

(assert (=> b!7623476 (= res!3052424 (not ((_ is ElementMatch!20327) (Concat!29172 (reg!20656 r!14126) r!14126))))))

(assert (=> b!7623476 (= e!4532884 e!4532883)))

(declare-fun bm!700066 () Bool)

(assert (=> bm!700066 (= call!700071 (isEmpty!41680 s!9605))))

(assert (= (and d!2323495 c!1404903) b!7623470))

(assert (= (and d!2323495 (not c!1404903)) b!7623469))

(assert (= (and d!2323495 c!1404905) b!7623464))

(assert (= (and d!2323495 (not c!1404905)) b!7623475))

(assert (= (and b!7623475 c!1404904) b!7623474))

(assert (= (and b!7623475 (not c!1404904)) b!7623476))

(assert (= (and b!7623476 (not res!3052424)) b!7623466))

(assert (= (and b!7623466 res!3052422) b!7623465))

(assert (= (and b!7623465 res!3052418) b!7623467))

(assert (= (and b!7623467 res!3052425) b!7623463))

(assert (= (and b!7623466 (not res!3052423)) b!7623471))

(assert (= (and b!7623471 res!3052419) b!7623472))

(assert (= (and b!7623472 (not res!3052420)) b!7623468))

(assert (= (and b!7623468 (not res!3052421)) b!7623473))

(assert (= (or b!7623464 b!7623465 b!7623472) bm!700066))

(assert (=> d!2323495 m!8154198))

(declare-fun m!8154282 () Bool)

(assert (=> d!2323495 m!8154282))

(assert (=> bm!700066 m!8154198))

(assert (=> b!7623463 m!8154230))

(assert (=> b!7623468 m!8154232))

(assert (=> b!7623468 m!8154232))

(assert (=> b!7623468 m!8154234))

(declare-fun m!8154284 () Bool)

(assert (=> b!7623470 m!8154284))

(assert (=> b!7623467 m!8154232))

(assert (=> b!7623467 m!8154232))

(assert (=> b!7623467 m!8154234))

(assert (=> b!7623473 m!8154230))

(assert (=> b!7623469 m!8154230))

(assert (=> b!7623469 m!8154230))

(declare-fun m!8154286 () Bool)

(assert (=> b!7623469 m!8154286))

(assert (=> b!7623469 m!8154232))

(assert (=> b!7623469 m!8154286))

(assert (=> b!7623469 m!8154232))

(declare-fun m!8154288 () Bool)

(assert (=> b!7623469 m!8154288))

(assert (=> b!7623335 d!2323495))

(declare-fun d!2323497 () Bool)

(assert (=> d!2323497 (isDefined!14018 (findConcatSeparation!3432 (reg!20656 r!14126) r!14126 Nil!73056 s!9605 s!9605))))

(declare-fun lt!2657376 () Unit!167548)

(declare-fun choose!58832 (Regex!20327 Regex!20327 List!73180) Unit!167548)

(assert (=> d!2323497 (= lt!2657376 (choose!58832 (reg!20656 r!14126) r!14126 s!9605))))

(assert (=> d!2323497 (validRegex!10747 (reg!20656 r!14126))))

(assert (=> d!2323497 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!240 (reg!20656 r!14126) r!14126 s!9605) lt!2657376)))

(declare-fun bs!1943574 () Bool)

(assert (= bs!1943574 d!2323497))

(assert (=> bs!1943574 m!8154212))

(assert (=> bs!1943574 m!8154212))

(assert (=> bs!1943574 m!8154214))

(declare-fun m!8154290 () Bool)

(assert (=> bs!1943574 m!8154290))

(assert (=> bs!1943574 m!8154210))

(assert (=> b!7623335 d!2323497))

(declare-fun b!7623481 () Bool)

(declare-fun res!3052430 () Bool)

(declare-fun e!4532893 () Bool)

(assert (=> b!7623481 (=> res!3052430 e!4532893)))

(assert (=> b!7623481 (= res!3052430 (not ((_ is Concat!29172) (reg!20656 r!14126))))))

(declare-fun e!4532891 () Bool)

(assert (=> b!7623481 (= e!4532891 e!4532893)))

(declare-fun c!1404907 () Bool)

(declare-fun c!1404906 () Bool)

(declare-fun call!700073 () Bool)

(declare-fun bm!700067 () Bool)

(assert (=> bm!700067 (= call!700073 (validRegex!10747 (ite c!1404907 (reg!20656 (reg!20656 r!14126)) (ite c!1404906 (regTwo!41167 (reg!20656 r!14126)) (regTwo!41166 (reg!20656 r!14126))))))))

(declare-fun bm!700068 () Bool)

(declare-fun call!700074 () Bool)

(assert (=> bm!700068 (= call!700074 (validRegex!10747 (ite c!1404906 (regOne!41167 (reg!20656 r!14126)) (regOne!41166 (reg!20656 r!14126)))))))

(declare-fun b!7623483 () Bool)

(declare-fun res!3052433 () Bool)

(declare-fun e!4532894 () Bool)

(assert (=> b!7623483 (=> (not res!3052433) (not e!4532894))))

(assert (=> b!7623483 (= res!3052433 call!700074)))

(assert (=> b!7623483 (= e!4532891 e!4532894)))

(declare-fun d!2323499 () Bool)

(declare-fun res!3052431 () Bool)

(declare-fun e!4532892 () Bool)

(assert (=> d!2323499 (=> res!3052431 e!4532892)))

(assert (=> d!2323499 (= res!3052431 ((_ is ElementMatch!20327) (reg!20656 r!14126)))))

(assert (=> d!2323499 (= (validRegex!10747 (reg!20656 r!14126)) e!4532892)))

(declare-fun b!7623482 () Bool)

(declare-fun e!4532895 () Bool)

(assert (=> b!7623482 (= e!4532895 e!4532891)))

(assert (=> b!7623482 (= c!1404906 ((_ is Union!20327) (reg!20656 r!14126)))))

(declare-fun b!7623484 () Bool)

(declare-fun call!700072 () Bool)

(assert (=> b!7623484 (= e!4532894 call!700072)))

(declare-fun bm!700069 () Bool)

(assert (=> bm!700069 (= call!700072 call!700073)))

(declare-fun b!7623485 () Bool)

(assert (=> b!7623485 (= e!4532892 e!4532895)))

(assert (=> b!7623485 (= c!1404907 ((_ is Star!20327) (reg!20656 r!14126)))))

(declare-fun b!7623486 () Bool)

(declare-fun e!4532897 () Bool)

(assert (=> b!7623486 (= e!4532893 e!4532897)))

(declare-fun res!3052434 () Bool)

(assert (=> b!7623486 (=> (not res!3052434) (not e!4532897))))

(assert (=> b!7623486 (= res!3052434 call!700074)))

(declare-fun b!7623487 () Bool)

(declare-fun e!4532896 () Bool)

(assert (=> b!7623487 (= e!4532895 e!4532896)))

(declare-fun res!3052432 () Bool)

(assert (=> b!7623487 (= res!3052432 (not (nullable!8887 (reg!20656 (reg!20656 r!14126)))))))

(assert (=> b!7623487 (=> (not res!3052432) (not e!4532896))))

(declare-fun b!7623488 () Bool)

(assert (=> b!7623488 (= e!4532896 call!700073)))

(declare-fun b!7623489 () Bool)

(assert (=> b!7623489 (= e!4532897 call!700072)))

(assert (= (and d!2323499 (not res!3052431)) b!7623485))

(assert (= (and b!7623485 c!1404907) b!7623487))

(assert (= (and b!7623485 (not c!1404907)) b!7623482))

(assert (= (and b!7623487 res!3052432) b!7623488))

(assert (= (and b!7623482 c!1404906) b!7623483))

(assert (= (and b!7623482 (not c!1404906)) b!7623481))

(assert (= (and b!7623483 res!3052433) b!7623484))

(assert (= (and b!7623481 (not res!3052430)) b!7623486))

(assert (= (and b!7623486 res!3052434) b!7623489))

(assert (= (or b!7623483 b!7623486) bm!700068))

(assert (= (or b!7623484 b!7623489) bm!700069))

(assert (= (or b!7623488 bm!700069) bm!700067))

(declare-fun m!8154292 () Bool)

(assert (=> bm!700067 m!8154292))

(declare-fun m!8154294 () Bool)

(assert (=> bm!700068 m!8154294))

(declare-fun m!8154296 () Bool)

(assert (=> b!7623487 m!8154296))

(assert (=> b!7623346 d!2323499))

(declare-fun d!2323501 () Bool)

(assert (=> d!2323501 (= (isEmpty!41680 s!9605) ((_ is Nil!73056) s!9605))))

(assert (=> b!7623344 d!2323501))

(assert (=> b!7623339 d!2323479))

(declare-fun d!2323503 () Bool)

(declare-fun isEmpty!41682 (Option!17402) Bool)

(assert (=> d!2323503 (= (isDefined!14018 (findConcatSeparation!3432 (reg!20656 r!14126) r!14126 Nil!73056 s!9605 s!9605)) (not (isEmpty!41682 (findConcatSeparation!3432 (reg!20656 r!14126) r!14126 Nil!73056 s!9605 s!9605))))))

(declare-fun bs!1943575 () Bool)

(assert (= bs!1943575 d!2323503))

(assert (=> bs!1943575 m!8154212))

(declare-fun m!8154298 () Bool)

(assert (=> bs!1943575 m!8154298))

(assert (=> b!7623339 d!2323503))

(declare-fun b!7623548 () Bool)

(declare-fun e!4532930 () Option!17402)

(assert (=> b!7623548 (= e!4532930 (Some!17401 (tuple2!69217 Nil!73056 s!9605)))))

(declare-fun b!7623549 () Bool)

(declare-fun e!4532931 () Bool)

(declare-fun lt!2657389 () Option!17402)

(declare-fun get!25796 (Option!17402) tuple2!69216)

(assert (=> b!7623549 (= e!4532931 (= (++!17633 (_1!37911 (get!25796 lt!2657389)) (_2!37911 (get!25796 lt!2657389))) s!9605))))

(declare-fun b!7623550 () Bool)

(declare-fun res!3052470 () Bool)

(assert (=> b!7623550 (=> (not res!3052470) (not e!4532931))))

(assert (=> b!7623550 (= res!3052470 (matchR!9834 r!14126 (_2!37911 (get!25796 lt!2657389))))))

(declare-fun d!2323505 () Bool)

(declare-fun e!4532932 () Bool)

(assert (=> d!2323505 e!4532932))

(declare-fun res!3052468 () Bool)

(assert (=> d!2323505 (=> res!3052468 e!4532932)))

(assert (=> d!2323505 (= res!3052468 e!4532931)))

(declare-fun res!3052467 () Bool)

(assert (=> d!2323505 (=> (not res!3052467) (not e!4532931))))

(assert (=> d!2323505 (= res!3052467 (isDefined!14018 lt!2657389))))

(assert (=> d!2323505 (= lt!2657389 e!4532930)))

(declare-fun c!1404921 () Bool)

(declare-fun e!4532929 () Bool)

(assert (=> d!2323505 (= c!1404921 e!4532929)))

(declare-fun res!3052471 () Bool)

(assert (=> d!2323505 (=> (not res!3052471) (not e!4532929))))

(assert (=> d!2323505 (= res!3052471 (matchR!9834 (reg!20656 r!14126) Nil!73056))))

(assert (=> d!2323505 (validRegex!10747 (reg!20656 r!14126))))

(assert (=> d!2323505 (= (findConcatSeparation!3432 (reg!20656 r!14126) r!14126 Nil!73056 s!9605 s!9605) lt!2657389)))

(declare-fun b!7623551 () Bool)

(declare-fun lt!2657391 () Unit!167548)

(declare-fun lt!2657390 () Unit!167548)

(assert (=> b!7623551 (= lt!2657391 lt!2657390)))

(assert (=> b!7623551 (= (++!17633 (++!17633 Nil!73056 (Cons!73056 (h!79504 s!9605) Nil!73056)) (t!387915 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3225 (List!73180 C!40980 List!73180 List!73180) Unit!167548)

(assert (=> b!7623551 (= lt!2657390 (lemmaMoveElementToOtherListKeepsConcatEq!3225 Nil!73056 (h!79504 s!9605) (t!387915 s!9605) s!9605))))

(declare-fun e!4532928 () Option!17402)

(assert (=> b!7623551 (= e!4532928 (findConcatSeparation!3432 (reg!20656 r!14126) r!14126 (++!17633 Nil!73056 (Cons!73056 (h!79504 s!9605) Nil!73056)) (t!387915 s!9605) s!9605))))

(declare-fun b!7623552 () Bool)

(assert (=> b!7623552 (= e!4532932 (not (isDefined!14018 lt!2657389)))))

(declare-fun b!7623553 () Bool)

(assert (=> b!7623553 (= e!4532929 (matchR!9834 r!14126 s!9605))))

(declare-fun b!7623554 () Bool)

(assert (=> b!7623554 (= e!4532928 None!17401)))

(declare-fun b!7623555 () Bool)

(declare-fun res!3052469 () Bool)

(assert (=> b!7623555 (=> (not res!3052469) (not e!4532931))))

(assert (=> b!7623555 (= res!3052469 (matchR!9834 (reg!20656 r!14126) (_1!37911 (get!25796 lt!2657389))))))

(declare-fun b!7623556 () Bool)

(assert (=> b!7623556 (= e!4532930 e!4532928)))

(declare-fun c!1404922 () Bool)

(assert (=> b!7623556 (= c!1404922 ((_ is Nil!73056) s!9605))))

(assert (= (and d!2323505 res!3052471) b!7623553))

(assert (= (and d!2323505 c!1404921) b!7623548))

(assert (= (and d!2323505 (not c!1404921)) b!7623556))

(assert (= (and b!7623556 c!1404922) b!7623554))

(assert (= (and b!7623556 (not c!1404922)) b!7623551))

(assert (= (and d!2323505 res!3052467) b!7623555))

(assert (= (and b!7623555 res!3052469) b!7623550))

(assert (= (and b!7623550 res!3052470) b!7623549))

(assert (= (and d!2323505 (not res!3052468)) b!7623552))

(declare-fun m!8154318 () Bool)

(assert (=> b!7623555 m!8154318))

(declare-fun m!8154320 () Bool)

(assert (=> b!7623555 m!8154320))

(declare-fun m!8154322 () Bool)

(assert (=> b!7623551 m!8154322))

(assert (=> b!7623551 m!8154322))

(declare-fun m!8154324 () Bool)

(assert (=> b!7623551 m!8154324))

(declare-fun m!8154326 () Bool)

(assert (=> b!7623551 m!8154326))

(assert (=> b!7623551 m!8154322))

(declare-fun m!8154328 () Bool)

(assert (=> b!7623551 m!8154328))

(declare-fun m!8154330 () Bool)

(assert (=> d!2323505 m!8154330))

(declare-fun m!8154332 () Bool)

(assert (=> d!2323505 m!8154332))

(assert (=> d!2323505 m!8154210))

(assert (=> b!7623552 m!8154330))

(assert (=> b!7623553 m!8154208))

(assert (=> b!7623550 m!8154318))

(declare-fun m!8154334 () Bool)

(assert (=> b!7623550 m!8154334))

(assert (=> b!7623549 m!8154318))

(declare-fun m!8154336 () Bool)

(assert (=> b!7623549 m!8154336))

(assert (=> b!7623339 d!2323505))

(declare-fun bs!1943578 () Bool)

(declare-fun d!2323511 () Bool)

(assert (= bs!1943578 (and d!2323511 b!7623339)))

(declare-fun lambda!468585 () Int)

(assert (=> bs!1943578 (= lambda!468585 lambda!468579)))

(assert (=> d!2323511 true))

(assert (=> d!2323511 true))

(assert (=> d!2323511 true))

(assert (=> d!2323511 (= (isDefined!14018 (findConcatSeparation!3432 (reg!20656 r!14126) r!14126 Nil!73056 s!9605 s!9605)) (Exists!4483 lambda!468585))))

(declare-fun lt!2657395 () Unit!167548)

(declare-fun choose!58833 (Regex!20327 Regex!20327 List!73180) Unit!167548)

(assert (=> d!2323511 (= lt!2657395 (choose!58833 (reg!20656 r!14126) r!14126 s!9605))))

(assert (=> d!2323511 (validRegex!10747 (reg!20656 r!14126))))

(assert (=> d!2323511 (= (lemmaFindConcatSeparationEquivalentToExists!3190 (reg!20656 r!14126) r!14126 s!9605) lt!2657395)))

(declare-fun bs!1943579 () Bool)

(assert (= bs!1943579 d!2323511))

(assert (=> bs!1943579 m!8154212))

(assert (=> bs!1943579 m!8154214))

(assert (=> bs!1943579 m!8154210))

(declare-fun m!8154356 () Bool)

(assert (=> bs!1943579 m!8154356))

(assert (=> bs!1943579 m!8154212))

(declare-fun m!8154358 () Bool)

(assert (=> bs!1943579 m!8154358))

(assert (=> b!7623339 d!2323511))

(declare-fun b!7623615 () Bool)

(declare-fun e!4532972 () Bool)

(declare-fun tp!2225750 () Bool)

(assert (=> b!7623615 (= e!4532972 (and tp_is_empty!51009 tp!2225750))))

(assert (=> b!7623338 (= tp!2225744 e!4532972)))

(assert (= (and b!7623338 ((_ is Cons!73056) (t!387915 s!9605))) b!7623615))

(declare-fun b!7623628 () Bool)

(declare-fun e!4532975 () Bool)

(declare-fun tp!2225763 () Bool)

(assert (=> b!7623628 (= e!4532975 tp!2225763)))

(declare-fun b!7623629 () Bool)

(declare-fun tp!2225762 () Bool)

(declare-fun tp!2225765 () Bool)

(assert (=> b!7623629 (= e!4532975 (and tp!2225762 tp!2225765))))

(declare-fun b!7623626 () Bool)

(assert (=> b!7623626 (= e!4532975 tp_is_empty!51009)))

(declare-fun b!7623627 () Bool)

(declare-fun tp!2225761 () Bool)

(declare-fun tp!2225764 () Bool)

(assert (=> b!7623627 (= e!4532975 (and tp!2225761 tp!2225764))))

(assert (=> b!7623333 (= tp!2225740 e!4532975)))

(assert (= (and b!7623333 ((_ is ElementMatch!20327) (reg!20656 r!14126))) b!7623626))

(assert (= (and b!7623333 ((_ is Concat!29172) (reg!20656 r!14126))) b!7623627))

(assert (= (and b!7623333 ((_ is Star!20327) (reg!20656 r!14126))) b!7623628))

(assert (= (and b!7623333 ((_ is Union!20327) (reg!20656 r!14126))) b!7623629))

(declare-fun b!7623630 () Bool)

(declare-fun e!4532976 () Bool)

(declare-fun tp!2225766 () Bool)

(assert (=> b!7623630 (= e!4532976 (and tp_is_empty!51009 tp!2225766))))

(assert (=> b!7623336 (= tp!2225741 e!4532976)))

(assert (= (and b!7623336 ((_ is Cons!73056) (t!387915 (_1!37911 cut!10)))) b!7623630))

(declare-fun b!7623631 () Bool)

(declare-fun e!4532977 () Bool)

(declare-fun tp!2225767 () Bool)

(assert (=> b!7623631 (= e!4532977 (and tp_is_empty!51009 tp!2225767))))

(assert (=> b!7623337 (= tp!2225743 e!4532977)))

(assert (= (and b!7623337 ((_ is Cons!73056) (t!387915 (_2!37911 cut!10)))) b!7623631))

(declare-fun b!7623634 () Bool)

(declare-fun e!4532978 () Bool)

(declare-fun tp!2225770 () Bool)

(assert (=> b!7623634 (= e!4532978 tp!2225770)))

(declare-fun b!7623635 () Bool)

(declare-fun tp!2225769 () Bool)

(declare-fun tp!2225772 () Bool)

(assert (=> b!7623635 (= e!4532978 (and tp!2225769 tp!2225772))))

(declare-fun b!7623632 () Bool)

(assert (=> b!7623632 (= e!4532978 tp_is_empty!51009)))

(declare-fun b!7623633 () Bool)

(declare-fun tp!2225768 () Bool)

(declare-fun tp!2225771 () Bool)

(assert (=> b!7623633 (= e!4532978 (and tp!2225768 tp!2225771))))

(assert (=> b!7623341 (= tp!2225747 e!4532978)))

(assert (= (and b!7623341 ((_ is ElementMatch!20327) (regOne!41167 r!14126))) b!7623632))

(assert (= (and b!7623341 ((_ is Concat!29172) (regOne!41167 r!14126))) b!7623633))

(assert (= (and b!7623341 ((_ is Star!20327) (regOne!41167 r!14126))) b!7623634))

(assert (= (and b!7623341 ((_ is Union!20327) (regOne!41167 r!14126))) b!7623635))

(declare-fun b!7623638 () Bool)

(declare-fun e!4532979 () Bool)

(declare-fun tp!2225775 () Bool)

(assert (=> b!7623638 (= e!4532979 tp!2225775)))

(declare-fun b!7623639 () Bool)

(declare-fun tp!2225774 () Bool)

(declare-fun tp!2225777 () Bool)

(assert (=> b!7623639 (= e!4532979 (and tp!2225774 tp!2225777))))

(declare-fun b!7623636 () Bool)

(assert (=> b!7623636 (= e!4532979 tp_is_empty!51009)))

(declare-fun b!7623637 () Bool)

(declare-fun tp!2225773 () Bool)

(declare-fun tp!2225776 () Bool)

(assert (=> b!7623637 (= e!4532979 (and tp!2225773 tp!2225776))))

(assert (=> b!7623341 (= tp!2225746 e!4532979)))

(assert (= (and b!7623341 ((_ is ElementMatch!20327) (regTwo!41167 r!14126))) b!7623636))

(assert (= (and b!7623341 ((_ is Concat!29172) (regTwo!41167 r!14126))) b!7623637))

(assert (= (and b!7623341 ((_ is Star!20327) (regTwo!41167 r!14126))) b!7623638))

(assert (= (and b!7623341 ((_ is Union!20327) (regTwo!41167 r!14126))) b!7623639))

(declare-fun b!7623642 () Bool)

(declare-fun e!4532980 () Bool)

(declare-fun tp!2225780 () Bool)

(assert (=> b!7623642 (= e!4532980 tp!2225780)))

(declare-fun b!7623643 () Bool)

(declare-fun tp!2225779 () Bool)

(declare-fun tp!2225782 () Bool)

(assert (=> b!7623643 (= e!4532980 (and tp!2225779 tp!2225782))))

(declare-fun b!7623640 () Bool)

(assert (=> b!7623640 (= e!4532980 tp_is_empty!51009)))

(declare-fun b!7623641 () Bool)

(declare-fun tp!2225778 () Bool)

(declare-fun tp!2225781 () Bool)

(assert (=> b!7623641 (= e!4532980 (and tp!2225778 tp!2225781))))

(assert (=> b!7623334 (= tp!2225742 e!4532980)))

(assert (= (and b!7623334 ((_ is ElementMatch!20327) (regOne!41166 r!14126))) b!7623640))

(assert (= (and b!7623334 ((_ is Concat!29172) (regOne!41166 r!14126))) b!7623641))

(assert (= (and b!7623334 ((_ is Star!20327) (regOne!41166 r!14126))) b!7623642))

(assert (= (and b!7623334 ((_ is Union!20327) (regOne!41166 r!14126))) b!7623643))

(declare-fun b!7623646 () Bool)

(declare-fun e!4532981 () Bool)

(declare-fun tp!2225785 () Bool)

(assert (=> b!7623646 (= e!4532981 tp!2225785)))

(declare-fun b!7623647 () Bool)

(declare-fun tp!2225784 () Bool)

(declare-fun tp!2225787 () Bool)

(assert (=> b!7623647 (= e!4532981 (and tp!2225784 tp!2225787))))

(declare-fun b!7623644 () Bool)

(assert (=> b!7623644 (= e!4532981 tp_is_empty!51009)))

(declare-fun b!7623645 () Bool)

(declare-fun tp!2225783 () Bool)

(declare-fun tp!2225786 () Bool)

(assert (=> b!7623645 (= e!4532981 (and tp!2225783 tp!2225786))))

(assert (=> b!7623334 (= tp!2225745 e!4532981)))

(assert (= (and b!7623334 ((_ is ElementMatch!20327) (regTwo!41166 r!14126))) b!7623644))

(assert (= (and b!7623334 ((_ is Concat!29172) (regTwo!41166 r!14126))) b!7623645))

(assert (= (and b!7623334 ((_ is Star!20327) (regTwo!41166 r!14126))) b!7623646))

(assert (= (and b!7623334 ((_ is Union!20327) (regTwo!41166 r!14126))) b!7623647))

(check-sat (not b!7623469) (not b!7623376) (not b!7623637) (not d!2323497) (not b!7623639) (not d!2323481) (not b!7623634) (not b!7623412) (not bm!700068) (not b!7623551) (not d!2323495) (not d!2323503) (not b!7623641) (not b!7623628) (not b!7623468) (not b!7623549) (not b!7623448) (not b!7623467) (not b!7623646) (not d!2323491) (not b!7623487) (not b!7623473) (not d!2323489) (not b!7623630) (not bm!700065) tp_is_empty!51009 (not b!7623411) (not bm!700061) (not b!7623631) (not bm!700067) (not b!7623642) (not b!7623463) (not b!7623470) (not b!7623552) (not bm!700066) (not b!7623407) (not b!7623638) (not b!7623417) (not b!7623553) (not b!7623647) (not d!2323479) (not b!7623615) (not b!7623449) (not b!7623462) (not b!7623633) (not bm!700060) (not b!7623550) (not d!2323505) (not b!7623627) (not b!7623413) (not b!7623645) (not d!2323511) (not b!7623414) (not b!7623635) (not b!7623555) (not b!7623643) (not b!7623629))
(check-sat)
