; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!737428 () Bool)

(assert start!737428)

(declare-fun b!7718364 () Bool)

(assert (=> b!7718364 true))

(assert (=> b!7718364 true))

(declare-fun bs!1962916 () Bool)

(declare-fun b!7718351 () Bool)

(assert (= bs!1962916 (and b!7718351 b!7718364)))

(declare-fun lambda!471019 () Int)

(declare-fun lambda!471018 () Int)

(assert (=> bs!1962916 (not (= lambda!471019 lambda!471018))))

(assert (=> b!7718351 true))

(assert (=> b!7718351 true))

(declare-fun b!7718350 () Bool)

(declare-fun e!4578407 () Bool)

(declare-fun tp!2264406 () Bool)

(assert (=> b!7718350 (= e!4578407 tp!2264406)))

(declare-fun res!3079785 () Bool)

(declare-fun e!4578410 () Bool)

(assert (=> b!7718351 (=> res!3079785 e!4578410)))

(declare-fun Exists!4666 (Int) Bool)

(assert (=> b!7718351 (= res!3079785 (not (Exists!4666 lambda!471019)))))

(declare-fun b!7718352 () Bool)

(declare-fun res!3079786 () Bool)

(declare-fun e!4578409 () Bool)

(assert (=> b!7718352 (=> res!3079786 e!4578409)))

(declare-datatypes ((C!41408 0))(
  ( (C!41409 (val!31144 Int)) )
))
(declare-datatypes ((List!73392 0))(
  ( (Nil!73268) (Cons!73268 (h!79716 C!41408) (t!388127 List!73392)) )
))
(declare-fun s!9605 () List!73392)

(declare-fun ++!17749 (List!73392 List!73392) List!73392)

(assert (=> b!7718352 (= res!3079786 (not (= (++!17749 Nil!73268 s!9605) s!9605)))))

(declare-fun b!7718353 () Bool)

(declare-fun res!3079779 () Bool)

(assert (=> b!7718353 (=> res!3079779 e!4578409)))

(declare-datatypes ((tuple2!69544 0))(
  ( (tuple2!69545 (_1!38075 List!73392) (_2!38075 List!73392)) )
))
(declare-fun lt!2666039 () tuple2!69544)

(declare-fun isPrefix!6231 (List!73392 List!73392) Bool)

(assert (=> b!7718353 (= res!3079779 (not (isPrefix!6231 Nil!73268 (_1!38075 lt!2666039))))))

(declare-fun b!7718354 () Bool)

(declare-fun e!4578411 () Bool)

(declare-fun tp_is_empty!51437 () Bool)

(declare-fun tp!2264408 () Bool)

(assert (=> b!7718354 (= e!4578411 (and tp_is_empty!51437 tp!2264408))))

(declare-fun b!7718355 () Bool)

(declare-fun res!3079781 () Bool)

(declare-fun e!4578406 () Bool)

(assert (=> b!7718355 (=> (not res!3079781) (not e!4578406))))

(declare-datatypes ((Regex!20541 0))(
  ( (ElementMatch!20541 (c!1422710 C!41408)) (Concat!29386 (regOne!41594 Regex!20541) (regTwo!41594 Regex!20541)) (EmptyExpr!20541) (Star!20541 (reg!20870 Regex!20541)) (EmptyLang!20541) (Union!20541 (regOne!41595 Regex!20541) (regTwo!41595 Regex!20541)) )
))
(declare-fun r!14126 () Regex!20541)

(get-info :version)

(assert (=> b!7718355 (= res!3079781 (and (not ((_ is EmptyExpr!20541) r!14126)) (not ((_ is EmptyLang!20541) r!14126)) (not ((_ is ElementMatch!20541) r!14126)) (not ((_ is Union!20541) r!14126)) ((_ is Star!20541) r!14126)))))

(declare-fun res!3079782 () Bool)

(assert (=> start!737428 (=> (not res!3079782) (not e!4578406))))

(declare-fun validRegex!10959 (Regex!20541) Bool)

(assert (=> start!737428 (= res!3079782 (validRegex!10959 r!14126))))

(assert (=> start!737428 e!4578406))

(assert (=> start!737428 e!4578407))

(assert (=> start!737428 e!4578411))

(declare-fun b!7718356 () Bool)

(declare-fun res!3079783 () Bool)

(assert (=> b!7718356 (=> res!3079783 e!4578409)))

(assert (=> b!7718356 (= res!3079783 (not (= (++!17749 (_1!38075 lt!2666039) (_2!38075 lt!2666039)) s!9605)))))

(declare-fun b!7718357 () Bool)

(declare-fun res!3079784 () Bool)

(assert (=> b!7718357 (=> res!3079784 e!4578409)))

(assert (=> b!7718357 (= res!3079784 (not (validRegex!10959 r!14126)))))

(declare-fun b!7718358 () Bool)

(declare-datatypes ((Unit!168156 0))(
  ( (Unit!168157) )
))
(declare-fun e!4578405 () Unit!168156)

(declare-fun Unit!168158 () Unit!168156)

(assert (=> b!7718358 (= e!4578405 Unit!168158)))

(declare-fun b!7718359 () Bool)

(assert (=> b!7718359 (= e!4578410 e!4578409)))

(declare-fun res!3079778 () Bool)

(assert (=> b!7718359 (=> res!3079778 e!4578409)))

(assert (=> b!7718359 (= res!3079778 (not (validRegex!10959 (reg!20870 r!14126))))))

(declare-fun lt!2666041 () Bool)

(declare-fun matchRSpec!4631 (Regex!20541 List!73392) Bool)

(assert (=> b!7718359 (= lt!2666041 (matchRSpec!4631 r!14126 (_2!38075 lt!2666039)))))

(declare-fun matchR!10037 (Regex!20541 List!73392) Bool)

(assert (=> b!7718359 (= lt!2666041 (matchR!10037 r!14126 (_2!38075 lt!2666039)))))

(declare-fun lt!2666037 () Unit!168156)

(declare-fun mainMatchTheorem!4606 (Regex!20541 List!73392) Unit!168156)

(assert (=> b!7718359 (= lt!2666037 (mainMatchTheorem!4606 r!14126 (_2!38075 lt!2666039)))))

(declare-fun lt!2666038 () Bool)

(assert (=> b!7718359 (= lt!2666038 (matchRSpec!4631 (reg!20870 r!14126) (_1!38075 lt!2666039)))))

(assert (=> b!7718359 (= lt!2666038 (matchR!10037 (reg!20870 r!14126) (_1!38075 lt!2666039)))))

(declare-fun lt!2666036 () Unit!168156)

(assert (=> b!7718359 (= lt!2666036 (mainMatchTheorem!4606 (reg!20870 r!14126) (_1!38075 lt!2666039)))))

(declare-fun pickWitness!520 (Int) tuple2!69544)

(assert (=> b!7718359 (= lt!2666039 (pickWitness!520 lambda!471019))))

(declare-fun b!7718360 () Bool)

(declare-fun tp!2264407 () Bool)

(declare-fun tp!2264405 () Bool)

(assert (=> b!7718360 (= e!4578407 (and tp!2264407 tp!2264405))))

(declare-fun b!7718361 () Bool)

(assert (=> b!7718361 (= e!4578409 (or (not lt!2666038) lt!2666041))))

(declare-fun b!7718362 () Bool)

(declare-fun res!3079777 () Bool)

(assert (=> b!7718362 (=> (not res!3079777) (not e!4578406))))

(declare-fun isEmpty!41929 (List!73392) Bool)

(assert (=> b!7718362 (= res!3079777 (not (isEmpty!41929 s!9605)))))

(declare-fun b!7718363 () Bool)

(declare-fun tp!2264404 () Bool)

(declare-fun tp!2264409 () Bool)

(assert (=> b!7718363 (= e!4578407 (and tp!2264404 tp!2264409))))

(declare-fun e!4578408 () Bool)

(assert (=> b!7718364 (= e!4578406 (not e!4578408))))

(declare-fun res!3079780 () Bool)

(assert (=> b!7718364 (=> res!3079780 e!4578408)))

(declare-fun lt!2666035 () Bool)

(assert (=> b!7718364 (= res!3079780 lt!2666035)))

(assert (=> b!7718364 (= lt!2666035 (Exists!4666 lambda!471018))))

(declare-datatypes ((Option!17566 0))(
  ( (None!17565) (Some!17565 (v!54700 tuple2!69544)) )
))
(declare-fun isDefined!14182 (Option!17566) Bool)

(declare-fun findConcatSeparation!3596 (Regex!20541 Regex!20541 List!73392 List!73392 List!73392) Option!17566)

(assert (=> b!7718364 (= lt!2666035 (isDefined!14182 (findConcatSeparation!3596 (reg!20870 r!14126) r!14126 Nil!73268 s!9605 s!9605)))))

(declare-fun lt!2666042 () Unit!168156)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3354 (Regex!20541 Regex!20541 List!73392) Unit!168156)

(assert (=> b!7718364 (= lt!2666042 (lemmaFindConcatSeparationEquivalentToExists!3354 (reg!20870 r!14126) r!14126 s!9605))))

(declare-fun b!7718365 () Bool)

(declare-fun Unit!168159 () Unit!168156)

(assert (=> b!7718365 (= e!4578405 Unit!168159)))

(declare-fun lt!2666043 () Unit!168156)

(declare-fun lemmaStarAppConcat!56 (Regex!20541 List!73392) Unit!168156)

(assert (=> b!7718365 (= lt!2666043 (lemmaStarAppConcat!56 (reg!20870 r!14126) s!9605))))

(assert (=> b!7718365 (matchR!10037 (Concat!29386 (reg!20870 r!14126) r!14126) s!9605)))

(declare-fun lt!2666040 () Unit!168156)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!314 (Regex!20541 Regex!20541 List!73392) Unit!168156)

(assert (=> b!7718365 (= lt!2666040 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!314 (reg!20870 r!14126) r!14126 s!9605))))

(assert (=> b!7718365 false))

(declare-fun b!7718366 () Bool)

(assert (=> b!7718366 (= e!4578408 e!4578410)))

(declare-fun res!3079776 () Bool)

(assert (=> b!7718366 (=> res!3079776 e!4578410)))

(assert (=> b!7718366 (= res!3079776 (Exists!4666 lambda!471018))))

(declare-fun lt!2666044 () Unit!168156)

(assert (=> b!7718366 (= lt!2666044 e!4578405)))

(declare-fun c!1422709 () Bool)

(assert (=> b!7718366 (= c!1422709 (matchR!10037 r!14126 s!9605))))

(declare-fun b!7718367 () Bool)

(assert (=> b!7718367 (= e!4578407 tp_is_empty!51437)))

(assert (= (and start!737428 res!3079782) b!7718355))

(assert (= (and b!7718355 res!3079781) b!7718362))

(assert (= (and b!7718362 res!3079777) b!7718364))

(assert (= (and b!7718364 (not res!3079780)) b!7718366))

(assert (= (and b!7718366 c!1422709) b!7718365))

(assert (= (and b!7718366 (not c!1422709)) b!7718358))

(assert (= (and b!7718366 (not res!3079776)) b!7718351))

(assert (= (and b!7718351 (not res!3079785)) b!7718359))

(assert (= (and b!7718359 (not res!3079778)) b!7718357))

(assert (= (and b!7718357 (not res!3079784)) b!7718356))

(assert (= (and b!7718356 (not res!3079783)) b!7718353))

(assert (= (and b!7718353 (not res!3079779)) b!7718352))

(assert (= (and b!7718352 (not res!3079786)) b!7718361))

(assert (= (and start!737428 ((_ is ElementMatch!20541) r!14126)) b!7718367))

(assert (= (and start!737428 ((_ is Concat!29386) r!14126)) b!7718360))

(assert (= (and start!737428 ((_ is Star!20541) r!14126)) b!7718350))

(assert (= (and start!737428 ((_ is Union!20541) r!14126)) b!7718363))

(assert (= (and start!737428 ((_ is Cons!73268) s!9605)) b!7718354))

(declare-fun m!8198942 () Bool)

(assert (=> b!7718352 m!8198942))

(declare-fun m!8198944 () Bool)

(assert (=> b!7718359 m!8198944))

(declare-fun m!8198946 () Bool)

(assert (=> b!7718359 m!8198946))

(declare-fun m!8198948 () Bool)

(assert (=> b!7718359 m!8198948))

(declare-fun m!8198950 () Bool)

(assert (=> b!7718359 m!8198950))

(declare-fun m!8198952 () Bool)

(assert (=> b!7718359 m!8198952))

(declare-fun m!8198954 () Bool)

(assert (=> b!7718359 m!8198954))

(declare-fun m!8198956 () Bool)

(assert (=> b!7718359 m!8198956))

(declare-fun m!8198958 () Bool)

(assert (=> b!7718359 m!8198958))

(declare-fun m!8198960 () Bool)

(assert (=> b!7718356 m!8198960))

(declare-fun m!8198962 () Bool)

(assert (=> b!7718357 m!8198962))

(assert (=> start!737428 m!8198962))

(declare-fun m!8198964 () Bool)

(assert (=> b!7718362 m!8198964))

(declare-fun m!8198966 () Bool)

(assert (=> b!7718353 m!8198966))

(declare-fun m!8198968 () Bool)

(assert (=> b!7718364 m!8198968))

(declare-fun m!8198970 () Bool)

(assert (=> b!7718364 m!8198970))

(assert (=> b!7718364 m!8198970))

(declare-fun m!8198972 () Bool)

(assert (=> b!7718364 m!8198972))

(declare-fun m!8198974 () Bool)

(assert (=> b!7718364 m!8198974))

(declare-fun m!8198976 () Bool)

(assert (=> b!7718351 m!8198976))

(assert (=> b!7718366 m!8198968))

(declare-fun m!8198978 () Bool)

(assert (=> b!7718366 m!8198978))

(declare-fun m!8198980 () Bool)

(assert (=> b!7718365 m!8198980))

(declare-fun m!8198982 () Bool)

(assert (=> b!7718365 m!8198982))

(declare-fun m!8198984 () Bool)

(assert (=> b!7718365 m!8198984))

(check-sat (not b!7718365) (not b!7718364) (not b!7718360) (not b!7718363) (not b!7718356) (not b!7718357) (not b!7718351) (not b!7718353) (not start!737428) tp_is_empty!51437 (not b!7718352) (not b!7718362) (not b!7718366) (not b!7718350) (not b!7718359) (not b!7718354))
(check-sat)
(get-model)

(declare-fun b!7718467 () Bool)

(declare-fun res!3079842 () Bool)

(declare-fun e!4578467 () Bool)

(assert (=> b!7718467 (=> res!3079842 e!4578467)))

(declare-fun tail!15323 (List!73392) List!73392)

(assert (=> b!7718467 (= res!3079842 (not (isEmpty!41929 (tail!15323 (_2!38075 lt!2666039)))))))

(declare-fun b!7718468 () Bool)

(declare-fun e!4578470 () Bool)

(declare-fun head!15783 (List!73392) C!41408)

(assert (=> b!7718468 (= e!4578470 (= (head!15783 (_2!38075 lt!2666039)) (c!1422710 r!14126)))))

(declare-fun b!7718469 () Bool)

(declare-fun e!4578472 () Bool)

(declare-fun nullable!9018 (Regex!20541) Bool)

(assert (=> b!7718469 (= e!4578472 (nullable!9018 r!14126))))

(declare-fun b!7718470 () Bool)

(declare-fun res!3079843 () Bool)

(assert (=> b!7718470 (=> (not res!3079843) (not e!4578470))))

(declare-fun call!713360 () Bool)

(assert (=> b!7718470 (= res!3079843 (not call!713360))))

(declare-fun b!7718471 () Bool)

(declare-fun e!4578471 () Bool)

(declare-fun e!4578468 () Bool)

(assert (=> b!7718471 (= e!4578471 e!4578468)))

(declare-fun res!3079847 () Bool)

(assert (=> b!7718471 (=> (not res!3079847) (not e!4578468))))

(declare-fun lt!2666052 () Bool)

(assert (=> b!7718471 (= res!3079847 (not lt!2666052))))

(declare-fun b!7718472 () Bool)

(declare-fun derivativeStep!5983 (Regex!20541 C!41408) Regex!20541)

(assert (=> b!7718472 (= e!4578472 (matchR!10037 (derivativeStep!5983 r!14126 (head!15783 (_2!38075 lt!2666039))) (tail!15323 (_2!38075 lt!2666039))))))

(declare-fun b!7718473 () Bool)

(declare-fun res!3079844 () Bool)

(assert (=> b!7718473 (=> res!3079844 e!4578471)))

(assert (=> b!7718473 (= res!3079844 (not ((_ is ElementMatch!20541) r!14126)))))

(declare-fun e!4578473 () Bool)

(assert (=> b!7718473 (= e!4578473 e!4578471)))

(declare-fun b!7718474 () Bool)

(assert (=> b!7718474 (= e!4578473 (not lt!2666052))))

(declare-fun b!7718475 () Bool)

(assert (=> b!7718475 (= e!4578468 e!4578467)))

(declare-fun res!3079846 () Bool)

(assert (=> b!7718475 (=> res!3079846 e!4578467)))

(assert (=> b!7718475 (= res!3079846 call!713360)))

(declare-fun b!7718476 () Bool)

(declare-fun e!4578469 () Bool)

(assert (=> b!7718476 (= e!4578469 e!4578473)))

(declare-fun c!1422732 () Bool)

(assert (=> b!7718476 (= c!1422732 ((_ is EmptyLang!20541) r!14126))))

(declare-fun b!7718477 () Bool)

(assert (=> b!7718477 (= e!4578469 (= lt!2666052 call!713360))))

(declare-fun d!2337346 () Bool)

(assert (=> d!2337346 e!4578469))

(declare-fun c!1422733 () Bool)

(assert (=> d!2337346 (= c!1422733 ((_ is EmptyExpr!20541) r!14126))))

(assert (=> d!2337346 (= lt!2666052 e!4578472)))

(declare-fun c!1422734 () Bool)

(assert (=> d!2337346 (= c!1422734 (isEmpty!41929 (_2!38075 lt!2666039)))))

(assert (=> d!2337346 (validRegex!10959 r!14126)))

(assert (=> d!2337346 (= (matchR!10037 r!14126 (_2!38075 lt!2666039)) lt!2666052)))

(declare-fun b!7718478 () Bool)

(declare-fun res!3079845 () Bool)

(assert (=> b!7718478 (=> (not res!3079845) (not e!4578470))))

(assert (=> b!7718478 (= res!3079845 (isEmpty!41929 (tail!15323 (_2!38075 lt!2666039))))))

(declare-fun b!7718479 () Bool)

(assert (=> b!7718479 (= e!4578467 (not (= (head!15783 (_2!38075 lt!2666039)) (c!1422710 r!14126))))))

(declare-fun bm!713355 () Bool)

(assert (=> bm!713355 (= call!713360 (isEmpty!41929 (_2!38075 lt!2666039)))))

(declare-fun b!7718480 () Bool)

(declare-fun res!3079840 () Bool)

(assert (=> b!7718480 (=> res!3079840 e!4578471)))

(assert (=> b!7718480 (= res!3079840 e!4578470)))

(declare-fun res!3079841 () Bool)

(assert (=> b!7718480 (=> (not res!3079841) (not e!4578470))))

(assert (=> b!7718480 (= res!3079841 lt!2666052)))

(assert (= (and d!2337346 c!1422734) b!7718469))

(assert (= (and d!2337346 (not c!1422734)) b!7718472))

(assert (= (and d!2337346 c!1422733) b!7718477))

(assert (= (and d!2337346 (not c!1422733)) b!7718476))

(assert (= (and b!7718476 c!1422732) b!7718474))

(assert (= (and b!7718476 (not c!1422732)) b!7718473))

(assert (= (and b!7718473 (not res!3079844)) b!7718480))

(assert (= (and b!7718480 res!3079841) b!7718470))

(assert (= (and b!7718470 res!3079843) b!7718478))

(assert (= (and b!7718478 res!3079845) b!7718468))

(assert (= (and b!7718480 (not res!3079840)) b!7718471))

(assert (= (and b!7718471 res!3079847) b!7718475))

(assert (= (and b!7718475 (not res!3079846)) b!7718467))

(assert (= (and b!7718467 (not res!3079842)) b!7718479))

(assert (= (or b!7718477 b!7718470 b!7718475) bm!713355))

(declare-fun m!8199008 () Bool)

(assert (=> b!7718479 m!8199008))

(assert (=> b!7718472 m!8199008))

(assert (=> b!7718472 m!8199008))

(declare-fun m!8199010 () Bool)

(assert (=> b!7718472 m!8199010))

(declare-fun m!8199012 () Bool)

(assert (=> b!7718472 m!8199012))

(assert (=> b!7718472 m!8199010))

(assert (=> b!7718472 m!8199012))

(declare-fun m!8199014 () Bool)

(assert (=> b!7718472 m!8199014))

(assert (=> b!7718468 m!8199008))

(declare-fun m!8199016 () Bool)

(assert (=> bm!713355 m!8199016))

(assert (=> d!2337346 m!8199016))

(assert (=> d!2337346 m!8198962))

(declare-fun m!8199018 () Bool)

(assert (=> b!7718469 m!8199018))

(assert (=> b!7718467 m!8199012))

(assert (=> b!7718467 m!8199012))

(declare-fun m!8199020 () Bool)

(assert (=> b!7718467 m!8199020))

(assert (=> b!7718478 m!8199012))

(assert (=> b!7718478 m!8199012))

(assert (=> b!7718478 m!8199020))

(assert (=> b!7718359 d!2337346))

(declare-fun d!2337356 () Bool)

(declare-fun lt!2666056 () tuple2!69544)

(declare-fun dynLambda!29957 (Int tuple2!69544) Bool)

(assert (=> d!2337356 (dynLambda!29957 lambda!471019 lt!2666056)))

(declare-fun choose!59243 (Int) tuple2!69544)

(assert (=> d!2337356 (= lt!2666056 (choose!59243 lambda!471019))))

(assert (=> d!2337356 (Exists!4666 lambda!471019)))

(assert (=> d!2337356 (= (pickWitness!520 lambda!471019) lt!2666056)))

(declare-fun b_lambda!289259 () Bool)

(assert (=> (not b_lambda!289259) (not d!2337356)))

(declare-fun bs!1962919 () Bool)

(assert (= bs!1962919 d!2337356))

(declare-fun m!8199036 () Bool)

(assert (=> bs!1962919 m!8199036))

(declare-fun m!8199038 () Bool)

(assert (=> bs!1962919 m!8199038))

(assert (=> bs!1962919 m!8198976))

(assert (=> b!7718359 d!2337356))

(declare-fun b!7718495 () Bool)

(declare-fun res!3079858 () Bool)

(declare-fun e!4578481 () Bool)

(assert (=> b!7718495 (=> res!3079858 e!4578481)))

(assert (=> b!7718495 (= res!3079858 (not (isEmpty!41929 (tail!15323 (_1!38075 lt!2666039)))))))

(declare-fun b!7718496 () Bool)

(declare-fun e!4578484 () Bool)

(assert (=> b!7718496 (= e!4578484 (= (head!15783 (_1!38075 lt!2666039)) (c!1422710 (reg!20870 r!14126))))))

(declare-fun b!7718497 () Bool)

(declare-fun e!4578486 () Bool)

(assert (=> b!7718497 (= e!4578486 (nullable!9018 (reg!20870 r!14126)))))

(declare-fun b!7718498 () Bool)

(declare-fun res!3079859 () Bool)

(assert (=> b!7718498 (=> (not res!3079859) (not e!4578484))))

(declare-fun call!713364 () Bool)

(assert (=> b!7718498 (= res!3079859 (not call!713364))))

(declare-fun b!7718499 () Bool)

(declare-fun e!4578485 () Bool)

(declare-fun e!4578482 () Bool)

(assert (=> b!7718499 (= e!4578485 e!4578482)))

(declare-fun res!3079863 () Bool)

(assert (=> b!7718499 (=> (not res!3079863) (not e!4578482))))

(declare-fun lt!2666057 () Bool)

(assert (=> b!7718499 (= res!3079863 (not lt!2666057))))

(declare-fun b!7718500 () Bool)

(assert (=> b!7718500 (= e!4578486 (matchR!10037 (derivativeStep!5983 (reg!20870 r!14126) (head!15783 (_1!38075 lt!2666039))) (tail!15323 (_1!38075 lt!2666039))))))

(declare-fun b!7718501 () Bool)

(declare-fun res!3079860 () Bool)

(assert (=> b!7718501 (=> res!3079860 e!4578485)))

(assert (=> b!7718501 (= res!3079860 (not ((_ is ElementMatch!20541) (reg!20870 r!14126))))))

(declare-fun e!4578487 () Bool)

(assert (=> b!7718501 (= e!4578487 e!4578485)))

(declare-fun b!7718502 () Bool)

(assert (=> b!7718502 (= e!4578487 (not lt!2666057))))

(declare-fun b!7718503 () Bool)

(assert (=> b!7718503 (= e!4578482 e!4578481)))

(declare-fun res!3079862 () Bool)

(assert (=> b!7718503 (=> res!3079862 e!4578481)))

(assert (=> b!7718503 (= res!3079862 call!713364)))

(declare-fun b!7718504 () Bool)

(declare-fun e!4578483 () Bool)

(assert (=> b!7718504 (= e!4578483 e!4578487)))

(declare-fun c!1422738 () Bool)

(assert (=> b!7718504 (= c!1422738 ((_ is EmptyLang!20541) (reg!20870 r!14126)))))

(declare-fun b!7718505 () Bool)

(assert (=> b!7718505 (= e!4578483 (= lt!2666057 call!713364))))

(declare-fun d!2337362 () Bool)

(assert (=> d!2337362 e!4578483))

(declare-fun c!1422739 () Bool)

(assert (=> d!2337362 (= c!1422739 ((_ is EmptyExpr!20541) (reg!20870 r!14126)))))

(assert (=> d!2337362 (= lt!2666057 e!4578486)))

(declare-fun c!1422740 () Bool)

(assert (=> d!2337362 (= c!1422740 (isEmpty!41929 (_1!38075 lt!2666039)))))

(assert (=> d!2337362 (validRegex!10959 (reg!20870 r!14126))))

(assert (=> d!2337362 (= (matchR!10037 (reg!20870 r!14126) (_1!38075 lt!2666039)) lt!2666057)))

(declare-fun b!7718506 () Bool)

(declare-fun res!3079861 () Bool)

(assert (=> b!7718506 (=> (not res!3079861) (not e!4578484))))

(assert (=> b!7718506 (= res!3079861 (isEmpty!41929 (tail!15323 (_1!38075 lt!2666039))))))

(declare-fun b!7718507 () Bool)

(assert (=> b!7718507 (= e!4578481 (not (= (head!15783 (_1!38075 lt!2666039)) (c!1422710 (reg!20870 r!14126)))))))

(declare-fun bm!713359 () Bool)

(assert (=> bm!713359 (= call!713364 (isEmpty!41929 (_1!38075 lt!2666039)))))

(declare-fun b!7718508 () Bool)

(declare-fun res!3079856 () Bool)

(assert (=> b!7718508 (=> res!3079856 e!4578485)))

(assert (=> b!7718508 (= res!3079856 e!4578484)))

(declare-fun res!3079857 () Bool)

(assert (=> b!7718508 (=> (not res!3079857) (not e!4578484))))

(assert (=> b!7718508 (= res!3079857 lt!2666057)))

(assert (= (and d!2337362 c!1422740) b!7718497))

(assert (= (and d!2337362 (not c!1422740)) b!7718500))

(assert (= (and d!2337362 c!1422739) b!7718505))

(assert (= (and d!2337362 (not c!1422739)) b!7718504))

(assert (= (and b!7718504 c!1422738) b!7718502))

(assert (= (and b!7718504 (not c!1422738)) b!7718501))

(assert (= (and b!7718501 (not res!3079860)) b!7718508))

(assert (= (and b!7718508 res!3079857) b!7718498))

(assert (= (and b!7718498 res!3079859) b!7718506))

(assert (= (and b!7718506 res!3079861) b!7718496))

(assert (= (and b!7718508 (not res!3079856)) b!7718499))

(assert (= (and b!7718499 res!3079863) b!7718503))

(assert (= (and b!7718503 (not res!3079862)) b!7718495))

(assert (= (and b!7718495 (not res!3079858)) b!7718507))

(assert (= (or b!7718505 b!7718498 b!7718503) bm!713359))

(declare-fun m!8199042 () Bool)

(assert (=> b!7718507 m!8199042))

(assert (=> b!7718500 m!8199042))

(assert (=> b!7718500 m!8199042))

(declare-fun m!8199048 () Bool)

(assert (=> b!7718500 m!8199048))

(declare-fun m!8199050 () Bool)

(assert (=> b!7718500 m!8199050))

(assert (=> b!7718500 m!8199048))

(assert (=> b!7718500 m!8199050))

(declare-fun m!8199052 () Bool)

(assert (=> b!7718500 m!8199052))

(assert (=> b!7718496 m!8199042))

(declare-fun m!8199054 () Bool)

(assert (=> bm!713359 m!8199054))

(assert (=> d!2337362 m!8199054))

(assert (=> d!2337362 m!8198952))

(declare-fun m!8199056 () Bool)

(assert (=> b!7718497 m!8199056))

(assert (=> b!7718495 m!8199050))

(assert (=> b!7718495 m!8199050))

(declare-fun m!8199058 () Bool)

(assert (=> b!7718495 m!8199058))

(assert (=> b!7718506 m!8199050))

(assert (=> b!7718506 m!8199050))

(assert (=> b!7718506 m!8199058))

(assert (=> b!7718359 d!2337362))

(declare-fun bs!1962922 () Bool)

(declare-fun b!7718605 () Bool)

(assert (= bs!1962922 (and b!7718605 b!7718364)))

(declare-fun lambda!471024 () Int)

(assert (=> bs!1962922 (not (= lambda!471024 lambda!471018))))

(declare-fun bs!1962923 () Bool)

(assert (= bs!1962923 (and b!7718605 b!7718351)))

(assert (=> bs!1962923 (= (and (= (_1!38075 lt!2666039) s!9605) (= (reg!20870 (reg!20870 r!14126)) (reg!20870 r!14126)) (= (reg!20870 r!14126) r!14126)) (= lambda!471024 lambda!471019))))

(assert (=> b!7718605 true))

(assert (=> b!7718605 true))

(declare-fun bs!1962924 () Bool)

(declare-fun b!7718611 () Bool)

(assert (= bs!1962924 (and b!7718611 b!7718364)))

(declare-fun lambda!471027 () Int)

(assert (=> bs!1962924 (not (= lambda!471027 lambda!471018))))

(declare-fun bs!1962925 () Bool)

(assert (= bs!1962925 (and b!7718611 b!7718351)))

(assert (=> bs!1962925 (not (= lambda!471027 lambda!471019))))

(declare-fun bs!1962926 () Bool)

(assert (= bs!1962926 (and b!7718611 b!7718605)))

(assert (=> bs!1962926 (not (= lambda!471027 lambda!471024))))

(assert (=> b!7718611 true))

(assert (=> b!7718611 true))

(declare-fun b!7718601 () Bool)

(declare-fun e!4578547 () Bool)

(declare-fun call!713370 () Bool)

(assert (=> b!7718601 (= e!4578547 call!713370)))

(declare-fun b!7718603 () Bool)

(declare-fun res!3079921 () Bool)

(declare-fun e!4578543 () Bool)

(assert (=> b!7718603 (=> res!3079921 e!4578543)))

(assert (=> b!7718603 (= res!3079921 call!713370)))

(declare-fun e!4578544 () Bool)

(assert (=> b!7718603 (= e!4578544 e!4578543)))

(declare-fun bm!713365 () Bool)

(assert (=> bm!713365 (= call!713370 (isEmpty!41929 (_1!38075 lt!2666039)))))

(declare-fun b!7718604 () Bool)

(declare-fun e!4578548 () Bool)

(declare-fun e!4578546 () Bool)

(assert (=> b!7718604 (= e!4578548 e!4578546)))

(declare-fun res!3079922 () Bool)

(assert (=> b!7718604 (= res!3079922 (matchRSpec!4631 (regOne!41595 (reg!20870 r!14126)) (_1!38075 lt!2666039)))))

(assert (=> b!7718604 (=> res!3079922 e!4578546)))

(declare-fun call!713371 () Bool)

(assert (=> b!7718605 (= e!4578543 call!713371)))

(declare-fun b!7718606 () Bool)

(declare-fun c!1422759 () Bool)

(assert (=> b!7718606 (= c!1422759 ((_ is Union!20541) (reg!20870 r!14126)))))

(declare-fun e!4578545 () Bool)

(assert (=> b!7718606 (= e!4578545 e!4578548)))

(declare-fun b!7718607 () Bool)

(assert (=> b!7718607 (= e!4578548 e!4578544)))

(declare-fun c!1422761 () Bool)

(assert (=> b!7718607 (= c!1422761 ((_ is Star!20541) (reg!20870 r!14126)))))

(declare-fun b!7718608 () Bool)

(assert (=> b!7718608 (= e!4578546 (matchRSpec!4631 (regTwo!41595 (reg!20870 r!14126)) (_1!38075 lt!2666039)))))

(declare-fun b!7718609 () Bool)

(declare-fun e!4578542 () Bool)

(assert (=> b!7718609 (= e!4578547 e!4578542)))

(declare-fun res!3079920 () Bool)

(assert (=> b!7718609 (= res!3079920 (not ((_ is EmptyLang!20541) (reg!20870 r!14126))))))

(assert (=> b!7718609 (=> (not res!3079920) (not e!4578542))))

(declare-fun bm!713366 () Bool)

(assert (=> bm!713366 (= call!713371 (Exists!4666 (ite c!1422761 lambda!471024 lambda!471027)))))

(declare-fun b!7718602 () Bool)

(assert (=> b!7718602 (= e!4578545 (= (_1!38075 lt!2666039) (Cons!73268 (c!1422710 (reg!20870 r!14126)) Nil!73268)))))

(declare-fun d!2337366 () Bool)

(declare-fun c!1422762 () Bool)

(assert (=> d!2337366 (= c!1422762 ((_ is EmptyExpr!20541) (reg!20870 r!14126)))))

(assert (=> d!2337366 (= (matchRSpec!4631 (reg!20870 r!14126) (_1!38075 lt!2666039)) e!4578547)))

(declare-fun b!7718610 () Bool)

(declare-fun c!1422760 () Bool)

(assert (=> b!7718610 (= c!1422760 ((_ is ElementMatch!20541) (reg!20870 r!14126)))))

(assert (=> b!7718610 (= e!4578542 e!4578545)))

(assert (=> b!7718611 (= e!4578544 call!713371)))

(assert (= (and d!2337366 c!1422762) b!7718601))

(assert (= (and d!2337366 (not c!1422762)) b!7718609))

(assert (= (and b!7718609 res!3079920) b!7718610))

(assert (= (and b!7718610 c!1422760) b!7718602))

(assert (= (and b!7718610 (not c!1422760)) b!7718606))

(assert (= (and b!7718606 c!1422759) b!7718604))

(assert (= (and b!7718606 (not c!1422759)) b!7718607))

(assert (= (and b!7718604 (not res!3079922)) b!7718608))

(assert (= (and b!7718607 c!1422761) b!7718603))

(assert (= (and b!7718607 (not c!1422761)) b!7718611))

(assert (= (and b!7718603 (not res!3079921)) b!7718605))

(assert (= (or b!7718605 b!7718611) bm!713366))

(assert (= (or b!7718601 b!7718603) bm!713365))

(assert (=> bm!713365 m!8199054))

(declare-fun m!8199120 () Bool)

(assert (=> b!7718604 m!8199120))

(declare-fun m!8199122 () Bool)

(assert (=> b!7718608 m!8199122))

(declare-fun m!8199124 () Bool)

(assert (=> bm!713366 m!8199124))

(assert (=> b!7718359 d!2337366))

(declare-fun b!7718684 () Bool)

(declare-fun e!4578598 () Bool)

(declare-fun e!4578601 () Bool)

(assert (=> b!7718684 (= e!4578598 e!4578601)))

(declare-fun res!3079960 () Bool)

(assert (=> b!7718684 (= res!3079960 (not (nullable!9018 (reg!20870 (reg!20870 r!14126)))))))

(assert (=> b!7718684 (=> (not res!3079960) (not e!4578601))))

(declare-fun d!2337384 () Bool)

(declare-fun res!3079962 () Bool)

(declare-fun e!4578596 () Bool)

(assert (=> d!2337384 (=> res!3079962 e!4578596)))

(assert (=> d!2337384 (= res!3079962 ((_ is ElementMatch!20541) (reg!20870 r!14126)))))

(assert (=> d!2337384 (= (validRegex!10959 (reg!20870 r!14126)) e!4578596)))

(declare-fun c!1422780 () Bool)

(declare-fun c!1422781 () Bool)

(declare-fun bm!713377 () Bool)

(declare-fun call!713384 () Bool)

(assert (=> bm!713377 (= call!713384 (validRegex!10959 (ite c!1422780 (reg!20870 (reg!20870 r!14126)) (ite c!1422781 (regOne!41595 (reg!20870 r!14126)) (regOne!41594 (reg!20870 r!14126))))))))

(declare-fun bm!713378 () Bool)

(declare-fun call!713382 () Bool)

(assert (=> bm!713378 (= call!713382 (validRegex!10959 (ite c!1422781 (regTwo!41595 (reg!20870 r!14126)) (regTwo!41594 (reg!20870 r!14126)))))))

(declare-fun b!7718686 () Bool)

(declare-fun e!4578600 () Bool)

(assert (=> b!7718686 (= e!4578600 call!713382)))

(declare-fun bm!713379 () Bool)

(declare-fun call!713383 () Bool)

(assert (=> bm!713379 (= call!713383 call!713384)))

(declare-fun b!7718687 () Bool)

(declare-fun e!4578595 () Bool)

(assert (=> b!7718687 (= e!4578595 call!713382)))

(declare-fun b!7718688 () Bool)

(declare-fun res!3079964 () Bool)

(assert (=> b!7718688 (=> (not res!3079964) (not e!4578595))))

(assert (=> b!7718688 (= res!3079964 call!713383)))

(declare-fun e!4578599 () Bool)

(assert (=> b!7718688 (= e!4578599 e!4578595)))

(declare-fun b!7718689 () Bool)

(assert (=> b!7718689 (= e!4578596 e!4578598)))

(assert (=> b!7718689 (= c!1422780 ((_ is Star!20541) (reg!20870 r!14126)))))

(declare-fun b!7718690 () Bool)

(assert (=> b!7718690 (= e!4578598 e!4578599)))

(assert (=> b!7718690 (= c!1422781 ((_ is Union!20541) (reg!20870 r!14126)))))

(declare-fun b!7718691 () Bool)

(declare-fun e!4578597 () Bool)

(assert (=> b!7718691 (= e!4578597 e!4578600)))

(declare-fun res!3079963 () Bool)

(assert (=> b!7718691 (=> (not res!3079963) (not e!4578600))))

(assert (=> b!7718691 (= res!3079963 call!713383)))

(declare-fun b!7718692 () Bool)

(assert (=> b!7718692 (= e!4578601 call!713384)))

(declare-fun b!7718693 () Bool)

(declare-fun res!3079961 () Bool)

(assert (=> b!7718693 (=> res!3079961 e!4578597)))

(assert (=> b!7718693 (= res!3079961 (not ((_ is Concat!29386) (reg!20870 r!14126))))))

(assert (=> b!7718693 (= e!4578599 e!4578597)))

(assert (= (and d!2337384 (not res!3079962)) b!7718689))

(assert (= (and b!7718689 c!1422780) b!7718684))

(assert (= (and b!7718689 (not c!1422780)) b!7718690))

(assert (= (and b!7718684 res!3079960) b!7718692))

(assert (= (and b!7718690 c!1422781) b!7718688))

(assert (= (and b!7718690 (not c!1422781)) b!7718693))

(assert (= (and b!7718688 res!3079964) b!7718687))

(assert (= (and b!7718693 (not res!3079961)) b!7718691))

(assert (= (and b!7718691 res!3079963) b!7718686))

(assert (= (or b!7718688 b!7718691) bm!713379))

(assert (= (or b!7718687 b!7718686) bm!713378))

(assert (= (or b!7718692 bm!713379) bm!713377))

(declare-fun m!8199146 () Bool)

(assert (=> b!7718684 m!8199146))

(declare-fun m!8199148 () Bool)

(assert (=> bm!713377 m!8199148))

(declare-fun m!8199150 () Bool)

(assert (=> bm!713378 m!8199150))

(assert (=> b!7718359 d!2337384))

(declare-fun bs!1962931 () Bool)

(declare-fun b!7718698 () Bool)

(assert (= bs!1962931 (and b!7718698 b!7718364)))

(declare-fun lambda!471033 () Int)

(assert (=> bs!1962931 (not (= lambda!471033 lambda!471018))))

(declare-fun bs!1962932 () Bool)

(assert (= bs!1962932 (and b!7718698 b!7718351)))

(assert (=> bs!1962932 (= (= (_2!38075 lt!2666039) s!9605) (= lambda!471033 lambda!471019))))

(declare-fun bs!1962933 () Bool)

(assert (= bs!1962933 (and b!7718698 b!7718605)))

(assert (=> bs!1962933 (= (and (= (_2!38075 lt!2666039) (_1!38075 lt!2666039)) (= (reg!20870 r!14126) (reg!20870 (reg!20870 r!14126))) (= r!14126 (reg!20870 r!14126))) (= lambda!471033 lambda!471024))))

(declare-fun bs!1962934 () Bool)

(assert (= bs!1962934 (and b!7718698 b!7718611)))

(assert (=> bs!1962934 (not (= lambda!471033 lambda!471027))))

(assert (=> b!7718698 true))

(assert (=> b!7718698 true))

(declare-fun bs!1962935 () Bool)

(declare-fun b!7718704 () Bool)

(assert (= bs!1962935 (and b!7718704 b!7718605)))

(declare-fun lambda!471034 () Int)

(assert (=> bs!1962935 (not (= lambda!471034 lambda!471024))))

(declare-fun bs!1962936 () Bool)

(assert (= bs!1962936 (and b!7718704 b!7718351)))

(assert (=> bs!1962936 (not (= lambda!471034 lambda!471019))))

(declare-fun bs!1962937 () Bool)

(assert (= bs!1962937 (and b!7718704 b!7718611)))

(assert (=> bs!1962937 (= (and (= (_2!38075 lt!2666039) (_1!38075 lt!2666039)) (= (regOne!41594 r!14126) (regOne!41594 (reg!20870 r!14126))) (= (regTwo!41594 r!14126) (regTwo!41594 (reg!20870 r!14126)))) (= lambda!471034 lambda!471027))))

(declare-fun bs!1962938 () Bool)

(assert (= bs!1962938 (and b!7718704 b!7718698)))

(assert (=> bs!1962938 (not (= lambda!471034 lambda!471033))))

(declare-fun bs!1962939 () Bool)

(assert (= bs!1962939 (and b!7718704 b!7718364)))

(assert (=> bs!1962939 (not (= lambda!471034 lambda!471018))))

(assert (=> b!7718704 true))

(assert (=> b!7718704 true))

(declare-fun b!7718694 () Bool)

(declare-fun e!4578607 () Bool)

(declare-fun call!713385 () Bool)

(assert (=> b!7718694 (= e!4578607 call!713385)))

(declare-fun b!7718696 () Bool)

(declare-fun res!3079968 () Bool)

(declare-fun e!4578603 () Bool)

(assert (=> b!7718696 (=> res!3079968 e!4578603)))

(assert (=> b!7718696 (= res!3079968 call!713385)))

(declare-fun e!4578604 () Bool)

(assert (=> b!7718696 (= e!4578604 e!4578603)))

(declare-fun bm!713380 () Bool)

(assert (=> bm!713380 (= call!713385 (isEmpty!41929 (_2!38075 lt!2666039)))))

(declare-fun b!7718697 () Bool)

(declare-fun e!4578608 () Bool)

(declare-fun e!4578606 () Bool)

(assert (=> b!7718697 (= e!4578608 e!4578606)))

(declare-fun res!3079969 () Bool)

(assert (=> b!7718697 (= res!3079969 (matchRSpec!4631 (regOne!41595 r!14126) (_2!38075 lt!2666039)))))

(assert (=> b!7718697 (=> res!3079969 e!4578606)))

(declare-fun call!713386 () Bool)

(assert (=> b!7718698 (= e!4578603 call!713386)))

(declare-fun b!7718699 () Bool)

(declare-fun c!1422782 () Bool)

(assert (=> b!7718699 (= c!1422782 ((_ is Union!20541) r!14126))))

(declare-fun e!4578605 () Bool)

(assert (=> b!7718699 (= e!4578605 e!4578608)))

(declare-fun b!7718700 () Bool)

(assert (=> b!7718700 (= e!4578608 e!4578604)))

(declare-fun c!1422784 () Bool)

(assert (=> b!7718700 (= c!1422784 ((_ is Star!20541) r!14126))))

(declare-fun b!7718701 () Bool)

(assert (=> b!7718701 (= e!4578606 (matchRSpec!4631 (regTwo!41595 r!14126) (_2!38075 lt!2666039)))))

(declare-fun b!7718702 () Bool)

(declare-fun e!4578602 () Bool)

(assert (=> b!7718702 (= e!4578607 e!4578602)))

(declare-fun res!3079967 () Bool)

(assert (=> b!7718702 (= res!3079967 (not ((_ is EmptyLang!20541) r!14126)))))

(assert (=> b!7718702 (=> (not res!3079967) (not e!4578602))))

(declare-fun bm!713381 () Bool)

(assert (=> bm!713381 (= call!713386 (Exists!4666 (ite c!1422784 lambda!471033 lambda!471034)))))

(declare-fun b!7718695 () Bool)

(assert (=> b!7718695 (= e!4578605 (= (_2!38075 lt!2666039) (Cons!73268 (c!1422710 r!14126) Nil!73268)))))

(declare-fun d!2337392 () Bool)

(declare-fun c!1422785 () Bool)

(assert (=> d!2337392 (= c!1422785 ((_ is EmptyExpr!20541) r!14126))))

(assert (=> d!2337392 (= (matchRSpec!4631 r!14126 (_2!38075 lt!2666039)) e!4578607)))

(declare-fun b!7718703 () Bool)

(declare-fun c!1422783 () Bool)

(assert (=> b!7718703 (= c!1422783 ((_ is ElementMatch!20541) r!14126))))

(assert (=> b!7718703 (= e!4578602 e!4578605)))

(assert (=> b!7718704 (= e!4578604 call!713386)))

(assert (= (and d!2337392 c!1422785) b!7718694))

(assert (= (and d!2337392 (not c!1422785)) b!7718702))

(assert (= (and b!7718702 res!3079967) b!7718703))

(assert (= (and b!7718703 c!1422783) b!7718695))

(assert (= (and b!7718703 (not c!1422783)) b!7718699))

(assert (= (and b!7718699 c!1422782) b!7718697))

(assert (= (and b!7718699 (not c!1422782)) b!7718700))

(assert (= (and b!7718697 (not res!3079969)) b!7718701))

(assert (= (and b!7718700 c!1422784) b!7718696))

(assert (= (and b!7718700 (not c!1422784)) b!7718704))

(assert (= (and b!7718696 (not res!3079968)) b!7718698))

(assert (= (or b!7718698 b!7718704) bm!713381))

(assert (= (or b!7718694 b!7718696) bm!713380))

(assert (=> bm!713380 m!8199016))

(declare-fun m!8199152 () Bool)

(assert (=> b!7718697 m!8199152))

(declare-fun m!8199154 () Bool)

(assert (=> b!7718701 m!8199154))

(declare-fun m!8199156 () Bool)

(assert (=> bm!713381 m!8199156))

(assert (=> b!7718359 d!2337392))

(declare-fun d!2337394 () Bool)

(assert (=> d!2337394 (= (matchR!10037 r!14126 (_2!38075 lt!2666039)) (matchRSpec!4631 r!14126 (_2!38075 lt!2666039)))))

(declare-fun lt!2666092 () Unit!168156)

(declare-fun choose!59245 (Regex!20541 List!73392) Unit!168156)

(assert (=> d!2337394 (= lt!2666092 (choose!59245 r!14126 (_2!38075 lt!2666039)))))

(assert (=> d!2337394 (validRegex!10959 r!14126)))

(assert (=> d!2337394 (= (mainMatchTheorem!4606 r!14126 (_2!38075 lt!2666039)) lt!2666092)))

(declare-fun bs!1962954 () Bool)

(assert (= bs!1962954 d!2337394))

(assert (=> bs!1962954 m!8198954))

(assert (=> bs!1962954 m!8198956))

(declare-fun m!8199178 () Bool)

(assert (=> bs!1962954 m!8199178))

(assert (=> bs!1962954 m!8198962))

(assert (=> b!7718359 d!2337394))

(declare-fun d!2337404 () Bool)

(assert (=> d!2337404 (= (matchR!10037 (reg!20870 r!14126) (_1!38075 lt!2666039)) (matchRSpec!4631 (reg!20870 r!14126) (_1!38075 lt!2666039)))))

(declare-fun lt!2666093 () Unit!168156)

(assert (=> d!2337404 (= lt!2666093 (choose!59245 (reg!20870 r!14126) (_1!38075 lt!2666039)))))

(assert (=> d!2337404 (validRegex!10959 (reg!20870 r!14126))))

(assert (=> d!2337404 (= (mainMatchTheorem!4606 (reg!20870 r!14126) (_1!38075 lt!2666039)) lt!2666093)))

(declare-fun bs!1962955 () Bool)

(assert (= bs!1962955 d!2337404))

(assert (=> bs!1962955 m!8198958))

(assert (=> bs!1962955 m!8198950))

(declare-fun m!8199180 () Bool)

(assert (=> bs!1962955 m!8199180))

(assert (=> bs!1962955 m!8198952))

(assert (=> b!7718359 d!2337404))

(declare-fun b!7718745 () Bool)

(declare-fun e!4578635 () Bool)

(declare-fun e!4578638 () Bool)

(assert (=> b!7718745 (= e!4578635 e!4578638)))

(declare-fun res!3079988 () Bool)

(assert (=> b!7718745 (= res!3079988 (not (nullable!9018 (reg!20870 r!14126))))))

(assert (=> b!7718745 (=> (not res!3079988) (not e!4578638))))

(declare-fun d!2337406 () Bool)

(declare-fun res!3079990 () Bool)

(declare-fun e!4578633 () Bool)

(assert (=> d!2337406 (=> res!3079990 e!4578633)))

(assert (=> d!2337406 (= res!3079990 ((_ is ElementMatch!20541) r!14126))))

(assert (=> d!2337406 (= (validRegex!10959 r!14126) e!4578633)))

(declare-fun call!713398 () Bool)

(declare-fun c!1422797 () Bool)

(declare-fun c!1422798 () Bool)

(declare-fun bm!713391 () Bool)

(assert (=> bm!713391 (= call!713398 (validRegex!10959 (ite c!1422797 (reg!20870 r!14126) (ite c!1422798 (regOne!41595 r!14126) (regOne!41594 r!14126)))))))

(declare-fun bm!713392 () Bool)

(declare-fun call!713396 () Bool)

(assert (=> bm!713392 (= call!713396 (validRegex!10959 (ite c!1422798 (regTwo!41595 r!14126) (regTwo!41594 r!14126))))))

(declare-fun b!7718746 () Bool)

(declare-fun e!4578637 () Bool)

(assert (=> b!7718746 (= e!4578637 call!713396)))

(declare-fun bm!713393 () Bool)

(declare-fun call!713397 () Bool)

(assert (=> bm!713393 (= call!713397 call!713398)))

(declare-fun b!7718747 () Bool)

(declare-fun e!4578632 () Bool)

(assert (=> b!7718747 (= e!4578632 call!713396)))

(declare-fun b!7718748 () Bool)

(declare-fun res!3079992 () Bool)

(assert (=> b!7718748 (=> (not res!3079992) (not e!4578632))))

(assert (=> b!7718748 (= res!3079992 call!713397)))

(declare-fun e!4578636 () Bool)

(assert (=> b!7718748 (= e!4578636 e!4578632)))

(declare-fun b!7718749 () Bool)

(assert (=> b!7718749 (= e!4578633 e!4578635)))

(assert (=> b!7718749 (= c!1422797 ((_ is Star!20541) r!14126))))

(declare-fun b!7718750 () Bool)

(assert (=> b!7718750 (= e!4578635 e!4578636)))

(assert (=> b!7718750 (= c!1422798 ((_ is Union!20541) r!14126))))

(declare-fun b!7718751 () Bool)

(declare-fun e!4578634 () Bool)

(assert (=> b!7718751 (= e!4578634 e!4578637)))

(declare-fun res!3079991 () Bool)

(assert (=> b!7718751 (=> (not res!3079991) (not e!4578637))))

(assert (=> b!7718751 (= res!3079991 call!713397)))

(declare-fun b!7718752 () Bool)

(assert (=> b!7718752 (= e!4578638 call!713398)))

(declare-fun b!7718753 () Bool)

(declare-fun res!3079989 () Bool)

(assert (=> b!7718753 (=> res!3079989 e!4578634)))

(assert (=> b!7718753 (= res!3079989 (not ((_ is Concat!29386) r!14126)))))

(assert (=> b!7718753 (= e!4578636 e!4578634)))

(assert (= (and d!2337406 (not res!3079990)) b!7718749))

(assert (= (and b!7718749 c!1422797) b!7718745))

(assert (= (and b!7718749 (not c!1422797)) b!7718750))

(assert (= (and b!7718745 res!3079988) b!7718752))

(assert (= (and b!7718750 c!1422798) b!7718748))

(assert (= (and b!7718750 (not c!1422798)) b!7718753))

(assert (= (and b!7718748 res!3079992) b!7718747))

(assert (= (and b!7718753 (not res!3079989)) b!7718751))

(assert (= (and b!7718751 res!3079991) b!7718746))

(assert (= (or b!7718748 b!7718751) bm!713393))

(assert (= (or b!7718747 b!7718746) bm!713392))

(assert (= (or b!7718752 bm!713393) bm!713391))

(assert (=> b!7718745 m!8199056))

(declare-fun m!8199182 () Bool)

(assert (=> bm!713391 m!8199182))

(declare-fun m!8199184 () Bool)

(assert (=> bm!713392 m!8199184))

(assert (=> start!737428 d!2337406))

(declare-fun b!7718801 () Bool)

(declare-fun e!4578655 () List!73392)

(assert (=> b!7718801 (= e!4578655 (Cons!73268 (h!79716 (_1!38075 lt!2666039)) (++!17749 (t!388127 (_1!38075 lt!2666039)) (_2!38075 lt!2666039))))))

(declare-fun b!7718800 () Bool)

(assert (=> b!7718800 (= e!4578655 (_2!38075 lt!2666039))))

(declare-fun d!2337408 () Bool)

(declare-fun e!4578654 () Bool)

(assert (=> d!2337408 e!4578654))

(declare-fun res!3080001 () Bool)

(assert (=> d!2337408 (=> (not res!3080001) (not e!4578654))))

(declare-fun lt!2666096 () List!73392)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15522 (List!73392) (InoxSet C!41408))

(assert (=> d!2337408 (= res!3080001 (= (content!15522 lt!2666096) ((_ map or) (content!15522 (_1!38075 lt!2666039)) (content!15522 (_2!38075 lt!2666039)))))))

(assert (=> d!2337408 (= lt!2666096 e!4578655)))

(declare-fun c!1422801 () Bool)

(assert (=> d!2337408 (= c!1422801 ((_ is Nil!73268) (_1!38075 lt!2666039)))))

(assert (=> d!2337408 (= (++!17749 (_1!38075 lt!2666039) (_2!38075 lt!2666039)) lt!2666096)))

(declare-fun b!7718803 () Bool)

(assert (=> b!7718803 (= e!4578654 (or (not (= (_2!38075 lt!2666039) Nil!73268)) (= lt!2666096 (_1!38075 lt!2666039))))))

(declare-fun b!7718802 () Bool)

(declare-fun res!3080000 () Bool)

(assert (=> b!7718802 (=> (not res!3080000) (not e!4578654))))

(declare-fun size!42625 (List!73392) Int)

(assert (=> b!7718802 (= res!3080000 (= (size!42625 lt!2666096) (+ (size!42625 (_1!38075 lt!2666039)) (size!42625 (_2!38075 lt!2666039)))))))

(assert (= (and d!2337408 c!1422801) b!7718800))

(assert (= (and d!2337408 (not c!1422801)) b!7718801))

(assert (= (and d!2337408 res!3080001) b!7718802))

(assert (= (and b!7718802 res!3080000) b!7718803))

(declare-fun m!8199200 () Bool)

(assert (=> b!7718801 m!8199200))

(declare-fun m!8199202 () Bool)

(assert (=> d!2337408 m!8199202))

(declare-fun m!8199204 () Bool)

(assert (=> d!2337408 m!8199204))

(declare-fun m!8199206 () Bool)

(assert (=> d!2337408 m!8199206))

(declare-fun m!8199208 () Bool)

(assert (=> b!7718802 m!8199208))

(declare-fun m!8199210 () Bool)

(assert (=> b!7718802 m!8199210))

(declare-fun m!8199212 () Bool)

(assert (=> b!7718802 m!8199212))

(assert (=> b!7718356 d!2337408))

(assert (=> b!7718357 d!2337406))

(declare-fun d!2337412 () Bool)

(declare-fun choose!59246 (Int) Bool)

(assert (=> d!2337412 (= (Exists!4666 lambda!471018) (choose!59246 lambda!471018))))

(declare-fun bs!1962963 () Bool)

(assert (= bs!1962963 d!2337412))

(declare-fun m!8199214 () Bool)

(assert (=> bs!1962963 m!8199214))

(assert (=> b!7718364 d!2337412))

(declare-fun d!2337414 () Bool)

(declare-fun isEmpty!41931 (Option!17566) Bool)

(assert (=> d!2337414 (= (isDefined!14182 (findConcatSeparation!3596 (reg!20870 r!14126) r!14126 Nil!73268 s!9605 s!9605)) (not (isEmpty!41931 (findConcatSeparation!3596 (reg!20870 r!14126) r!14126 Nil!73268 s!9605 s!9605))))))

(declare-fun bs!1962964 () Bool)

(assert (= bs!1962964 d!2337414))

(assert (=> bs!1962964 m!8198970))

(declare-fun m!8199216 () Bool)

(assert (=> bs!1962964 m!8199216))

(assert (=> b!7718364 d!2337414))

(declare-fun b!7718822 () Bool)

(declare-fun res!3080014 () Bool)

(declare-fun e!4578669 () Bool)

(assert (=> b!7718822 (=> (not res!3080014) (not e!4578669))))

(declare-fun lt!2666104 () Option!17566)

(declare-fun get!26009 (Option!17566) tuple2!69544)

(assert (=> b!7718822 (= res!3080014 (matchR!10037 (reg!20870 r!14126) (_1!38075 (get!26009 lt!2666104))))))

(declare-fun b!7718823 () Bool)

(declare-fun e!4578667 () Option!17566)

(assert (=> b!7718823 (= e!4578667 None!17565)))

(declare-fun b!7718824 () Bool)

(assert (=> b!7718824 (= e!4578669 (= (++!17749 (_1!38075 (get!26009 lt!2666104)) (_2!38075 (get!26009 lt!2666104))) s!9605))))

(declare-fun b!7718825 () Bool)

(declare-fun e!4578668 () Option!17566)

(assert (=> b!7718825 (= e!4578668 (Some!17565 (tuple2!69545 Nil!73268 s!9605)))))

(declare-fun b!7718826 () Bool)

(declare-fun res!3080015 () Bool)

(assert (=> b!7718826 (=> (not res!3080015) (not e!4578669))))

(assert (=> b!7718826 (= res!3080015 (matchR!10037 r!14126 (_2!38075 (get!26009 lt!2666104))))))

(declare-fun b!7718828 () Bool)

(declare-fun e!4578670 () Bool)

(assert (=> b!7718828 (= e!4578670 (not (isDefined!14182 lt!2666104)))))

(declare-fun b!7718829 () Bool)

(declare-fun lt!2666105 () Unit!168156)

(declare-fun lt!2666103 () Unit!168156)

(assert (=> b!7718829 (= lt!2666105 lt!2666103)))

(assert (=> b!7718829 (= (++!17749 (++!17749 Nil!73268 (Cons!73268 (h!79716 s!9605) Nil!73268)) (t!388127 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3300 (List!73392 C!41408 List!73392 List!73392) Unit!168156)

(assert (=> b!7718829 (= lt!2666103 (lemmaMoveElementToOtherListKeepsConcatEq!3300 Nil!73268 (h!79716 s!9605) (t!388127 s!9605) s!9605))))

(assert (=> b!7718829 (= e!4578667 (findConcatSeparation!3596 (reg!20870 r!14126) r!14126 (++!17749 Nil!73268 (Cons!73268 (h!79716 s!9605) Nil!73268)) (t!388127 s!9605) s!9605))))

(declare-fun b!7718830 () Bool)

(assert (=> b!7718830 (= e!4578668 e!4578667)))

(declare-fun c!1422806 () Bool)

(assert (=> b!7718830 (= c!1422806 ((_ is Nil!73268) s!9605))))

(declare-fun b!7718827 () Bool)

(declare-fun e!4578666 () Bool)

(assert (=> b!7718827 (= e!4578666 (matchR!10037 r!14126 s!9605))))

(declare-fun d!2337416 () Bool)

(assert (=> d!2337416 e!4578670))

(declare-fun res!3080013 () Bool)

(assert (=> d!2337416 (=> res!3080013 e!4578670)))

(assert (=> d!2337416 (= res!3080013 e!4578669)))

(declare-fun res!3080016 () Bool)

(assert (=> d!2337416 (=> (not res!3080016) (not e!4578669))))

(assert (=> d!2337416 (= res!3080016 (isDefined!14182 lt!2666104))))

(assert (=> d!2337416 (= lt!2666104 e!4578668)))

(declare-fun c!1422807 () Bool)

(assert (=> d!2337416 (= c!1422807 e!4578666)))

(declare-fun res!3080012 () Bool)

(assert (=> d!2337416 (=> (not res!3080012) (not e!4578666))))

(assert (=> d!2337416 (= res!3080012 (matchR!10037 (reg!20870 r!14126) Nil!73268))))

(assert (=> d!2337416 (validRegex!10959 (reg!20870 r!14126))))

(assert (=> d!2337416 (= (findConcatSeparation!3596 (reg!20870 r!14126) r!14126 Nil!73268 s!9605 s!9605) lt!2666104)))

(assert (= (and d!2337416 res!3080012) b!7718827))

(assert (= (and d!2337416 c!1422807) b!7718825))

(assert (= (and d!2337416 (not c!1422807)) b!7718830))

(assert (= (and b!7718830 c!1422806) b!7718823))

(assert (= (and b!7718830 (not c!1422806)) b!7718829))

(assert (= (and d!2337416 res!3080016) b!7718822))

(assert (= (and b!7718822 res!3080014) b!7718826))

(assert (= (and b!7718826 res!3080015) b!7718824))

(assert (= (and d!2337416 (not res!3080013)) b!7718828))

(assert (=> b!7718827 m!8198978))

(declare-fun m!8199218 () Bool)

(assert (=> b!7718822 m!8199218))

(declare-fun m!8199220 () Bool)

(assert (=> b!7718822 m!8199220))

(declare-fun m!8199222 () Bool)

(assert (=> d!2337416 m!8199222))

(declare-fun m!8199224 () Bool)

(assert (=> d!2337416 m!8199224))

(assert (=> d!2337416 m!8198952))

(assert (=> b!7718828 m!8199222))

(assert (=> b!7718824 m!8199218))

(declare-fun m!8199226 () Bool)

(assert (=> b!7718824 m!8199226))

(assert (=> b!7718826 m!8199218))

(declare-fun m!8199228 () Bool)

(assert (=> b!7718826 m!8199228))

(declare-fun m!8199230 () Bool)

(assert (=> b!7718829 m!8199230))

(assert (=> b!7718829 m!8199230))

(declare-fun m!8199232 () Bool)

(assert (=> b!7718829 m!8199232))

(declare-fun m!8199234 () Bool)

(assert (=> b!7718829 m!8199234))

(assert (=> b!7718829 m!8199230))

(declare-fun m!8199236 () Bool)

(assert (=> b!7718829 m!8199236))

(assert (=> b!7718364 d!2337416))

(declare-fun bs!1962965 () Bool)

(declare-fun d!2337418 () Bool)

(assert (= bs!1962965 (and d!2337418 b!7718605)))

(declare-fun lambda!471041 () Int)

(assert (=> bs!1962965 (not (= lambda!471041 lambda!471024))))

(declare-fun bs!1962966 () Bool)

(assert (= bs!1962966 (and d!2337418 b!7718704)))

(assert (=> bs!1962966 (not (= lambda!471041 lambda!471034))))

(declare-fun bs!1962967 () Bool)

(assert (= bs!1962967 (and d!2337418 b!7718351)))

(assert (=> bs!1962967 (not (= lambda!471041 lambda!471019))))

(declare-fun bs!1962968 () Bool)

(assert (= bs!1962968 (and d!2337418 b!7718611)))

(assert (=> bs!1962968 (not (= lambda!471041 lambda!471027))))

(declare-fun bs!1962969 () Bool)

(assert (= bs!1962969 (and d!2337418 b!7718698)))

(assert (=> bs!1962969 (not (= lambda!471041 lambda!471033))))

(declare-fun bs!1962970 () Bool)

(assert (= bs!1962970 (and d!2337418 b!7718364)))

(assert (=> bs!1962970 (= lambda!471041 lambda!471018)))

(assert (=> d!2337418 true))

(assert (=> d!2337418 true))

(assert (=> d!2337418 true))

(assert (=> d!2337418 (= (isDefined!14182 (findConcatSeparation!3596 (reg!20870 r!14126) r!14126 Nil!73268 s!9605 s!9605)) (Exists!4666 lambda!471041))))

(declare-fun lt!2666108 () Unit!168156)

(declare-fun choose!59247 (Regex!20541 Regex!20541 List!73392) Unit!168156)

(assert (=> d!2337418 (= lt!2666108 (choose!59247 (reg!20870 r!14126) r!14126 s!9605))))

(assert (=> d!2337418 (validRegex!10959 (reg!20870 r!14126))))

(assert (=> d!2337418 (= (lemmaFindConcatSeparationEquivalentToExists!3354 (reg!20870 r!14126) r!14126 s!9605) lt!2666108)))

(declare-fun bs!1962971 () Bool)

(assert (= bs!1962971 d!2337418))

(assert (=> bs!1962971 m!8198952))

(assert (=> bs!1962971 m!8198970))

(assert (=> bs!1962971 m!8198972))

(assert (=> bs!1962971 m!8198970))

(declare-fun m!8199238 () Bool)

(assert (=> bs!1962971 m!8199238))

(declare-fun m!8199240 () Bool)

(assert (=> bs!1962971 m!8199240))

(assert (=> b!7718364 d!2337418))

(declare-fun d!2337420 () Bool)

(declare-fun e!4578675 () Bool)

(assert (=> d!2337420 e!4578675))

(declare-fun res!3080023 () Bool)

(assert (=> d!2337420 (=> res!3080023 e!4578675)))

(assert (=> d!2337420 (= res!3080023 (isEmpty!41929 s!9605))))

(declare-fun lt!2666111 () Unit!168156)

(declare-fun choose!59248 (Regex!20541 List!73392) Unit!168156)

(assert (=> d!2337420 (= lt!2666111 (choose!59248 (reg!20870 r!14126) s!9605))))

(assert (=> d!2337420 (validRegex!10959 (Star!20541 (reg!20870 r!14126)))))

(assert (=> d!2337420 (= (lemmaStarAppConcat!56 (reg!20870 r!14126) s!9605) lt!2666111)))

(declare-fun b!7718837 () Bool)

(assert (=> b!7718837 (= e!4578675 (matchR!10037 (Concat!29386 (reg!20870 r!14126) (Star!20541 (reg!20870 r!14126))) s!9605))))

(assert (= (and d!2337420 (not res!3080023)) b!7718837))

(assert (=> d!2337420 m!8198964))

(declare-fun m!8199242 () Bool)

(assert (=> d!2337420 m!8199242))

(declare-fun m!8199244 () Bool)

(assert (=> d!2337420 m!8199244))

(declare-fun m!8199246 () Bool)

(assert (=> b!7718837 m!8199246))

(assert (=> b!7718365 d!2337420))

(declare-fun b!7718838 () Bool)

(declare-fun res!3080026 () Bool)

(declare-fun e!4578676 () Bool)

(assert (=> b!7718838 (=> res!3080026 e!4578676)))

(assert (=> b!7718838 (= res!3080026 (not (isEmpty!41929 (tail!15323 s!9605))))))

(declare-fun b!7718839 () Bool)

(declare-fun e!4578679 () Bool)

(assert (=> b!7718839 (= e!4578679 (= (head!15783 s!9605) (c!1422710 (Concat!29386 (reg!20870 r!14126) r!14126))))))

(declare-fun b!7718840 () Bool)

(declare-fun e!4578681 () Bool)

(assert (=> b!7718840 (= e!4578681 (nullable!9018 (Concat!29386 (reg!20870 r!14126) r!14126)))))

(declare-fun b!7718841 () Bool)

(declare-fun res!3080027 () Bool)

(assert (=> b!7718841 (=> (not res!3080027) (not e!4578679))))

(declare-fun call!713399 () Bool)

(assert (=> b!7718841 (= res!3080027 (not call!713399))))

(declare-fun b!7718842 () Bool)

(declare-fun e!4578680 () Bool)

(declare-fun e!4578677 () Bool)

(assert (=> b!7718842 (= e!4578680 e!4578677)))

(declare-fun res!3080031 () Bool)

(assert (=> b!7718842 (=> (not res!3080031) (not e!4578677))))

(declare-fun lt!2666112 () Bool)

(assert (=> b!7718842 (= res!3080031 (not lt!2666112))))

(declare-fun b!7718843 () Bool)

(assert (=> b!7718843 (= e!4578681 (matchR!10037 (derivativeStep!5983 (Concat!29386 (reg!20870 r!14126) r!14126) (head!15783 s!9605)) (tail!15323 s!9605)))))

(declare-fun b!7718844 () Bool)

(declare-fun res!3080028 () Bool)

(assert (=> b!7718844 (=> res!3080028 e!4578680)))

(assert (=> b!7718844 (= res!3080028 (not ((_ is ElementMatch!20541) (Concat!29386 (reg!20870 r!14126) r!14126))))))

(declare-fun e!4578682 () Bool)

(assert (=> b!7718844 (= e!4578682 e!4578680)))

(declare-fun b!7718845 () Bool)

(assert (=> b!7718845 (= e!4578682 (not lt!2666112))))

(declare-fun b!7718846 () Bool)

(assert (=> b!7718846 (= e!4578677 e!4578676)))

(declare-fun res!3080030 () Bool)

(assert (=> b!7718846 (=> res!3080030 e!4578676)))

(assert (=> b!7718846 (= res!3080030 call!713399)))

(declare-fun b!7718847 () Bool)

(declare-fun e!4578678 () Bool)

(assert (=> b!7718847 (= e!4578678 e!4578682)))

(declare-fun c!1422808 () Bool)

(assert (=> b!7718847 (= c!1422808 ((_ is EmptyLang!20541) (Concat!29386 (reg!20870 r!14126) r!14126)))))

(declare-fun b!7718848 () Bool)

(assert (=> b!7718848 (= e!4578678 (= lt!2666112 call!713399))))

(declare-fun d!2337422 () Bool)

(assert (=> d!2337422 e!4578678))

(declare-fun c!1422809 () Bool)

(assert (=> d!2337422 (= c!1422809 ((_ is EmptyExpr!20541) (Concat!29386 (reg!20870 r!14126) r!14126)))))

(assert (=> d!2337422 (= lt!2666112 e!4578681)))

(declare-fun c!1422810 () Bool)

(assert (=> d!2337422 (= c!1422810 (isEmpty!41929 s!9605))))

(assert (=> d!2337422 (validRegex!10959 (Concat!29386 (reg!20870 r!14126) r!14126))))

(assert (=> d!2337422 (= (matchR!10037 (Concat!29386 (reg!20870 r!14126) r!14126) s!9605) lt!2666112)))

(declare-fun b!7718849 () Bool)

(declare-fun res!3080029 () Bool)

(assert (=> b!7718849 (=> (not res!3080029) (not e!4578679))))

(assert (=> b!7718849 (= res!3080029 (isEmpty!41929 (tail!15323 s!9605)))))

(declare-fun b!7718850 () Bool)

(assert (=> b!7718850 (= e!4578676 (not (= (head!15783 s!9605) (c!1422710 (Concat!29386 (reg!20870 r!14126) r!14126)))))))

(declare-fun bm!713394 () Bool)

(assert (=> bm!713394 (= call!713399 (isEmpty!41929 s!9605))))

(declare-fun b!7718851 () Bool)

(declare-fun res!3080024 () Bool)

(assert (=> b!7718851 (=> res!3080024 e!4578680)))

(assert (=> b!7718851 (= res!3080024 e!4578679)))

(declare-fun res!3080025 () Bool)

(assert (=> b!7718851 (=> (not res!3080025) (not e!4578679))))

(assert (=> b!7718851 (= res!3080025 lt!2666112)))

(assert (= (and d!2337422 c!1422810) b!7718840))

(assert (= (and d!2337422 (not c!1422810)) b!7718843))

(assert (= (and d!2337422 c!1422809) b!7718848))

(assert (= (and d!2337422 (not c!1422809)) b!7718847))

(assert (= (and b!7718847 c!1422808) b!7718845))

(assert (= (and b!7718847 (not c!1422808)) b!7718844))

(assert (= (and b!7718844 (not res!3080028)) b!7718851))

(assert (= (and b!7718851 res!3080025) b!7718841))

(assert (= (and b!7718841 res!3080027) b!7718849))

(assert (= (and b!7718849 res!3080029) b!7718839))

(assert (= (and b!7718851 (not res!3080024)) b!7718842))

(assert (= (and b!7718842 res!3080031) b!7718846))

(assert (= (and b!7718846 (not res!3080030)) b!7718838))

(assert (= (and b!7718838 (not res!3080026)) b!7718850))

(assert (= (or b!7718848 b!7718841 b!7718846) bm!713394))

(declare-fun m!8199248 () Bool)

(assert (=> b!7718850 m!8199248))

(assert (=> b!7718843 m!8199248))

(assert (=> b!7718843 m!8199248))

(declare-fun m!8199250 () Bool)

(assert (=> b!7718843 m!8199250))

(declare-fun m!8199252 () Bool)

(assert (=> b!7718843 m!8199252))

(assert (=> b!7718843 m!8199250))

(assert (=> b!7718843 m!8199252))

(declare-fun m!8199254 () Bool)

(assert (=> b!7718843 m!8199254))

(assert (=> b!7718839 m!8199248))

(assert (=> bm!713394 m!8198964))

(assert (=> d!2337422 m!8198964))

(declare-fun m!8199256 () Bool)

(assert (=> d!2337422 m!8199256))

(declare-fun m!8199258 () Bool)

(assert (=> b!7718840 m!8199258))

(assert (=> b!7718838 m!8199252))

(assert (=> b!7718838 m!8199252))

(declare-fun m!8199260 () Bool)

(assert (=> b!7718838 m!8199260))

(assert (=> b!7718849 m!8199252))

(assert (=> b!7718849 m!8199252))

(assert (=> b!7718849 m!8199260))

(assert (=> b!7718365 d!2337422))

(declare-fun d!2337424 () Bool)

(assert (=> d!2337424 (isDefined!14182 (findConcatSeparation!3596 (reg!20870 r!14126) r!14126 Nil!73268 s!9605 s!9605))))

(declare-fun lt!2666115 () Unit!168156)

(declare-fun choose!59249 (Regex!20541 Regex!20541 List!73392) Unit!168156)

(assert (=> d!2337424 (= lt!2666115 (choose!59249 (reg!20870 r!14126) r!14126 s!9605))))

(assert (=> d!2337424 (validRegex!10959 (reg!20870 r!14126))))

(assert (=> d!2337424 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!314 (reg!20870 r!14126) r!14126 s!9605) lt!2666115)))

(declare-fun bs!1962972 () Bool)

(assert (= bs!1962972 d!2337424))

(assert (=> bs!1962972 m!8198970))

(assert (=> bs!1962972 m!8198970))

(assert (=> bs!1962972 m!8198972))

(declare-fun m!8199262 () Bool)

(assert (=> bs!1962972 m!8199262))

(assert (=> bs!1962972 m!8198952))

(assert (=> b!7718365 d!2337424))

(assert (=> b!7718366 d!2337412))

(declare-fun b!7718852 () Bool)

(declare-fun res!3080034 () Bool)

(declare-fun e!4578683 () Bool)

(assert (=> b!7718852 (=> res!3080034 e!4578683)))

(assert (=> b!7718852 (= res!3080034 (not (isEmpty!41929 (tail!15323 s!9605))))))

(declare-fun b!7718853 () Bool)

(declare-fun e!4578686 () Bool)

(assert (=> b!7718853 (= e!4578686 (= (head!15783 s!9605) (c!1422710 r!14126)))))

(declare-fun b!7718854 () Bool)

(declare-fun e!4578688 () Bool)

(assert (=> b!7718854 (= e!4578688 (nullable!9018 r!14126))))

(declare-fun b!7718855 () Bool)

(declare-fun res!3080035 () Bool)

(assert (=> b!7718855 (=> (not res!3080035) (not e!4578686))))

(declare-fun call!713400 () Bool)

(assert (=> b!7718855 (= res!3080035 (not call!713400))))

(declare-fun b!7718856 () Bool)

(declare-fun e!4578687 () Bool)

(declare-fun e!4578684 () Bool)

(assert (=> b!7718856 (= e!4578687 e!4578684)))

(declare-fun res!3080039 () Bool)

(assert (=> b!7718856 (=> (not res!3080039) (not e!4578684))))

(declare-fun lt!2666116 () Bool)

(assert (=> b!7718856 (= res!3080039 (not lt!2666116))))

(declare-fun b!7718857 () Bool)

(assert (=> b!7718857 (= e!4578688 (matchR!10037 (derivativeStep!5983 r!14126 (head!15783 s!9605)) (tail!15323 s!9605)))))

(declare-fun b!7718858 () Bool)

(declare-fun res!3080036 () Bool)

(assert (=> b!7718858 (=> res!3080036 e!4578687)))

(assert (=> b!7718858 (= res!3080036 (not ((_ is ElementMatch!20541) r!14126)))))

(declare-fun e!4578689 () Bool)

(assert (=> b!7718858 (= e!4578689 e!4578687)))

(declare-fun b!7718859 () Bool)

(assert (=> b!7718859 (= e!4578689 (not lt!2666116))))

(declare-fun b!7718860 () Bool)

(assert (=> b!7718860 (= e!4578684 e!4578683)))

(declare-fun res!3080038 () Bool)

(assert (=> b!7718860 (=> res!3080038 e!4578683)))

(assert (=> b!7718860 (= res!3080038 call!713400)))

(declare-fun b!7718861 () Bool)

(declare-fun e!4578685 () Bool)

(assert (=> b!7718861 (= e!4578685 e!4578689)))

(declare-fun c!1422811 () Bool)

(assert (=> b!7718861 (= c!1422811 ((_ is EmptyLang!20541) r!14126))))

(declare-fun b!7718862 () Bool)

(assert (=> b!7718862 (= e!4578685 (= lt!2666116 call!713400))))

(declare-fun d!2337426 () Bool)

(assert (=> d!2337426 e!4578685))

(declare-fun c!1422812 () Bool)

(assert (=> d!2337426 (= c!1422812 ((_ is EmptyExpr!20541) r!14126))))

(assert (=> d!2337426 (= lt!2666116 e!4578688)))

(declare-fun c!1422813 () Bool)

(assert (=> d!2337426 (= c!1422813 (isEmpty!41929 s!9605))))

(assert (=> d!2337426 (validRegex!10959 r!14126)))

(assert (=> d!2337426 (= (matchR!10037 r!14126 s!9605) lt!2666116)))

(declare-fun b!7718863 () Bool)

(declare-fun res!3080037 () Bool)

(assert (=> b!7718863 (=> (not res!3080037) (not e!4578686))))

(assert (=> b!7718863 (= res!3080037 (isEmpty!41929 (tail!15323 s!9605)))))

(declare-fun b!7718864 () Bool)

(assert (=> b!7718864 (= e!4578683 (not (= (head!15783 s!9605) (c!1422710 r!14126))))))

(declare-fun bm!713395 () Bool)

(assert (=> bm!713395 (= call!713400 (isEmpty!41929 s!9605))))

(declare-fun b!7718865 () Bool)

(declare-fun res!3080032 () Bool)

(assert (=> b!7718865 (=> res!3080032 e!4578687)))

(assert (=> b!7718865 (= res!3080032 e!4578686)))

(declare-fun res!3080033 () Bool)

(assert (=> b!7718865 (=> (not res!3080033) (not e!4578686))))

(assert (=> b!7718865 (= res!3080033 lt!2666116)))

(assert (= (and d!2337426 c!1422813) b!7718854))

(assert (= (and d!2337426 (not c!1422813)) b!7718857))

(assert (= (and d!2337426 c!1422812) b!7718862))

(assert (= (and d!2337426 (not c!1422812)) b!7718861))

(assert (= (and b!7718861 c!1422811) b!7718859))

(assert (= (and b!7718861 (not c!1422811)) b!7718858))

(assert (= (and b!7718858 (not res!3080036)) b!7718865))

(assert (= (and b!7718865 res!3080033) b!7718855))

(assert (= (and b!7718855 res!3080035) b!7718863))

(assert (= (and b!7718863 res!3080037) b!7718853))

(assert (= (and b!7718865 (not res!3080032)) b!7718856))

(assert (= (and b!7718856 res!3080039) b!7718860))

(assert (= (and b!7718860 (not res!3080038)) b!7718852))

(assert (= (and b!7718852 (not res!3080034)) b!7718864))

(assert (= (or b!7718862 b!7718855 b!7718860) bm!713395))

(assert (=> b!7718864 m!8199248))

(assert (=> b!7718857 m!8199248))

(assert (=> b!7718857 m!8199248))

(declare-fun m!8199264 () Bool)

(assert (=> b!7718857 m!8199264))

(assert (=> b!7718857 m!8199252))

(assert (=> b!7718857 m!8199264))

(assert (=> b!7718857 m!8199252))

(declare-fun m!8199266 () Bool)

(assert (=> b!7718857 m!8199266))

(assert (=> b!7718853 m!8199248))

(assert (=> bm!713395 m!8198964))

(assert (=> d!2337426 m!8198964))

(assert (=> d!2337426 m!8198962))

(assert (=> b!7718854 m!8199018))

(assert (=> b!7718852 m!8199252))

(assert (=> b!7718852 m!8199252))

(assert (=> b!7718852 m!8199260))

(assert (=> b!7718863 m!8199252))

(assert (=> b!7718863 m!8199252))

(assert (=> b!7718863 m!8199260))

(assert (=> b!7718366 d!2337426))

(declare-fun d!2337428 () Bool)

(assert (=> d!2337428 (= (Exists!4666 lambda!471019) (choose!59246 lambda!471019))))

(declare-fun bs!1962973 () Bool)

(assert (= bs!1962973 d!2337428))

(declare-fun m!8199268 () Bool)

(assert (=> bs!1962973 m!8199268))

(assert (=> b!7718351 d!2337428))

(declare-fun d!2337430 () Bool)

(assert (=> d!2337430 (= (isEmpty!41929 s!9605) ((_ is Nil!73268) s!9605))))

(assert (=> b!7718362 d!2337430))

(declare-fun b!7718867 () Bool)

(declare-fun e!4578691 () List!73392)

(assert (=> b!7718867 (= e!4578691 (Cons!73268 (h!79716 Nil!73268) (++!17749 (t!388127 Nil!73268) s!9605)))))

(declare-fun b!7718866 () Bool)

(assert (=> b!7718866 (= e!4578691 s!9605)))

(declare-fun d!2337432 () Bool)

(declare-fun e!4578690 () Bool)

(assert (=> d!2337432 e!4578690))

(declare-fun res!3080041 () Bool)

(assert (=> d!2337432 (=> (not res!3080041) (not e!4578690))))

(declare-fun lt!2666117 () List!73392)

(assert (=> d!2337432 (= res!3080041 (= (content!15522 lt!2666117) ((_ map or) (content!15522 Nil!73268) (content!15522 s!9605))))))

(assert (=> d!2337432 (= lt!2666117 e!4578691)))

(declare-fun c!1422814 () Bool)

(assert (=> d!2337432 (= c!1422814 ((_ is Nil!73268) Nil!73268))))

(assert (=> d!2337432 (= (++!17749 Nil!73268 s!9605) lt!2666117)))

(declare-fun b!7718869 () Bool)

(assert (=> b!7718869 (= e!4578690 (or (not (= s!9605 Nil!73268)) (= lt!2666117 Nil!73268)))))

(declare-fun b!7718868 () Bool)

(declare-fun res!3080040 () Bool)

(assert (=> b!7718868 (=> (not res!3080040) (not e!4578690))))

(assert (=> b!7718868 (= res!3080040 (= (size!42625 lt!2666117) (+ (size!42625 Nil!73268) (size!42625 s!9605))))))

(assert (= (and d!2337432 c!1422814) b!7718866))

(assert (= (and d!2337432 (not c!1422814)) b!7718867))

(assert (= (and d!2337432 res!3080041) b!7718868))

(assert (= (and b!7718868 res!3080040) b!7718869))

(declare-fun m!8199270 () Bool)

(assert (=> b!7718867 m!8199270))

(declare-fun m!8199272 () Bool)

(assert (=> d!2337432 m!8199272))

(declare-fun m!8199274 () Bool)

(assert (=> d!2337432 m!8199274))

(declare-fun m!8199276 () Bool)

(assert (=> d!2337432 m!8199276))

(declare-fun m!8199278 () Bool)

(assert (=> b!7718868 m!8199278))

(declare-fun m!8199280 () Bool)

(assert (=> b!7718868 m!8199280))

(declare-fun m!8199282 () Bool)

(assert (=> b!7718868 m!8199282))

(assert (=> b!7718352 d!2337432))

(declare-fun d!2337434 () Bool)

(declare-fun e!4578700 () Bool)

(assert (=> d!2337434 e!4578700))

(declare-fun res!3080053 () Bool)

(assert (=> d!2337434 (=> res!3080053 e!4578700)))

(declare-fun lt!2666120 () Bool)

(assert (=> d!2337434 (= res!3080053 (not lt!2666120))))

(declare-fun e!4578699 () Bool)

(assert (=> d!2337434 (= lt!2666120 e!4578699)))

(declare-fun res!3080051 () Bool)

(assert (=> d!2337434 (=> res!3080051 e!4578699)))

(assert (=> d!2337434 (= res!3080051 ((_ is Nil!73268) Nil!73268))))

(assert (=> d!2337434 (= (isPrefix!6231 Nil!73268 (_1!38075 lt!2666039)) lt!2666120)))

(declare-fun b!7718881 () Bool)

(assert (=> b!7718881 (= e!4578700 (>= (size!42625 (_1!38075 lt!2666039)) (size!42625 Nil!73268)))))

(declare-fun b!7718880 () Bool)

(declare-fun e!4578698 () Bool)

(assert (=> b!7718880 (= e!4578698 (isPrefix!6231 (tail!15323 Nil!73268) (tail!15323 (_1!38075 lt!2666039))))))

(declare-fun b!7718879 () Bool)

(declare-fun res!3080052 () Bool)

(assert (=> b!7718879 (=> (not res!3080052) (not e!4578698))))

(assert (=> b!7718879 (= res!3080052 (= (head!15783 Nil!73268) (head!15783 (_1!38075 lt!2666039))))))

(declare-fun b!7718878 () Bool)

(assert (=> b!7718878 (= e!4578699 e!4578698)))

(declare-fun res!3080050 () Bool)

(assert (=> b!7718878 (=> (not res!3080050) (not e!4578698))))

(assert (=> b!7718878 (= res!3080050 (not ((_ is Nil!73268) (_1!38075 lt!2666039))))))

(assert (= (and d!2337434 (not res!3080051)) b!7718878))

(assert (= (and b!7718878 res!3080050) b!7718879))

(assert (= (and b!7718879 res!3080052) b!7718880))

(assert (= (and d!2337434 (not res!3080053)) b!7718881))

(assert (=> b!7718881 m!8199210))

(assert (=> b!7718881 m!8199280))

(declare-fun m!8199284 () Bool)

(assert (=> b!7718880 m!8199284))

(assert (=> b!7718880 m!8199050))

(assert (=> b!7718880 m!8199284))

(assert (=> b!7718880 m!8199050))

(declare-fun m!8199286 () Bool)

(assert (=> b!7718880 m!8199286))

(declare-fun m!8199288 () Bool)

(assert (=> b!7718879 m!8199288))

(assert (=> b!7718879 m!8199042))

(assert (=> b!7718353 d!2337434))

(declare-fun b!7718886 () Bool)

(declare-fun e!4578703 () Bool)

(declare-fun tp!2264450 () Bool)

(assert (=> b!7718886 (= e!4578703 (and tp_is_empty!51437 tp!2264450))))

(assert (=> b!7718354 (= tp!2264408 e!4578703)))

(assert (= (and b!7718354 ((_ is Cons!73268) (t!388127 s!9605))) b!7718886))

(declare-fun b!7718899 () Bool)

(declare-fun e!4578706 () Bool)

(declare-fun tp!2264462 () Bool)

(assert (=> b!7718899 (= e!4578706 tp!2264462)))

(declare-fun b!7718900 () Bool)

(declare-fun tp!2264463 () Bool)

(declare-fun tp!2264461 () Bool)

(assert (=> b!7718900 (= e!4578706 (and tp!2264463 tp!2264461))))

(declare-fun b!7718898 () Bool)

(declare-fun tp!2264464 () Bool)

(declare-fun tp!2264465 () Bool)

(assert (=> b!7718898 (= e!4578706 (and tp!2264464 tp!2264465))))

(assert (=> b!7718360 (= tp!2264407 e!4578706)))

(declare-fun b!7718897 () Bool)

(assert (=> b!7718897 (= e!4578706 tp_is_empty!51437)))

(assert (= (and b!7718360 ((_ is ElementMatch!20541) (regOne!41594 r!14126))) b!7718897))

(assert (= (and b!7718360 ((_ is Concat!29386) (regOne!41594 r!14126))) b!7718898))

(assert (= (and b!7718360 ((_ is Star!20541) (regOne!41594 r!14126))) b!7718899))

(assert (= (and b!7718360 ((_ is Union!20541) (regOne!41594 r!14126))) b!7718900))

(declare-fun b!7718903 () Bool)

(declare-fun e!4578707 () Bool)

(declare-fun tp!2264467 () Bool)

(assert (=> b!7718903 (= e!4578707 tp!2264467)))

(declare-fun b!7718904 () Bool)

(declare-fun tp!2264468 () Bool)

(declare-fun tp!2264466 () Bool)

(assert (=> b!7718904 (= e!4578707 (and tp!2264468 tp!2264466))))

(declare-fun b!7718902 () Bool)

(declare-fun tp!2264469 () Bool)

(declare-fun tp!2264470 () Bool)

(assert (=> b!7718902 (= e!4578707 (and tp!2264469 tp!2264470))))

(assert (=> b!7718360 (= tp!2264405 e!4578707)))

(declare-fun b!7718901 () Bool)

(assert (=> b!7718901 (= e!4578707 tp_is_empty!51437)))

(assert (= (and b!7718360 ((_ is ElementMatch!20541) (regTwo!41594 r!14126))) b!7718901))

(assert (= (and b!7718360 ((_ is Concat!29386) (regTwo!41594 r!14126))) b!7718902))

(assert (= (and b!7718360 ((_ is Star!20541) (regTwo!41594 r!14126))) b!7718903))

(assert (= (and b!7718360 ((_ is Union!20541) (regTwo!41594 r!14126))) b!7718904))

(declare-fun b!7718907 () Bool)

(declare-fun e!4578708 () Bool)

(declare-fun tp!2264472 () Bool)

(assert (=> b!7718907 (= e!4578708 tp!2264472)))

(declare-fun b!7718908 () Bool)

(declare-fun tp!2264473 () Bool)

(declare-fun tp!2264471 () Bool)

(assert (=> b!7718908 (= e!4578708 (and tp!2264473 tp!2264471))))

(declare-fun b!7718906 () Bool)

(declare-fun tp!2264474 () Bool)

(declare-fun tp!2264475 () Bool)

(assert (=> b!7718906 (= e!4578708 (and tp!2264474 tp!2264475))))

(assert (=> b!7718350 (= tp!2264406 e!4578708)))

(declare-fun b!7718905 () Bool)

(assert (=> b!7718905 (= e!4578708 tp_is_empty!51437)))

(assert (= (and b!7718350 ((_ is ElementMatch!20541) (reg!20870 r!14126))) b!7718905))

(assert (= (and b!7718350 ((_ is Concat!29386) (reg!20870 r!14126))) b!7718906))

(assert (= (and b!7718350 ((_ is Star!20541) (reg!20870 r!14126))) b!7718907))

(assert (= (and b!7718350 ((_ is Union!20541) (reg!20870 r!14126))) b!7718908))

(declare-fun b!7718911 () Bool)

(declare-fun e!4578709 () Bool)

(declare-fun tp!2264477 () Bool)

(assert (=> b!7718911 (= e!4578709 tp!2264477)))

(declare-fun b!7718912 () Bool)

(declare-fun tp!2264478 () Bool)

(declare-fun tp!2264476 () Bool)

(assert (=> b!7718912 (= e!4578709 (and tp!2264478 tp!2264476))))

(declare-fun b!7718910 () Bool)

(declare-fun tp!2264479 () Bool)

(declare-fun tp!2264480 () Bool)

(assert (=> b!7718910 (= e!4578709 (and tp!2264479 tp!2264480))))

(assert (=> b!7718363 (= tp!2264404 e!4578709)))

(declare-fun b!7718909 () Bool)

(assert (=> b!7718909 (= e!4578709 tp_is_empty!51437)))

(assert (= (and b!7718363 ((_ is ElementMatch!20541) (regOne!41595 r!14126))) b!7718909))

(assert (= (and b!7718363 ((_ is Concat!29386) (regOne!41595 r!14126))) b!7718910))

(assert (= (and b!7718363 ((_ is Star!20541) (regOne!41595 r!14126))) b!7718911))

(assert (= (and b!7718363 ((_ is Union!20541) (regOne!41595 r!14126))) b!7718912))

(declare-fun b!7718915 () Bool)

(declare-fun e!4578710 () Bool)

(declare-fun tp!2264482 () Bool)

(assert (=> b!7718915 (= e!4578710 tp!2264482)))

(declare-fun b!7718916 () Bool)

(declare-fun tp!2264483 () Bool)

(declare-fun tp!2264481 () Bool)

(assert (=> b!7718916 (= e!4578710 (and tp!2264483 tp!2264481))))

(declare-fun b!7718914 () Bool)

(declare-fun tp!2264484 () Bool)

(declare-fun tp!2264485 () Bool)

(assert (=> b!7718914 (= e!4578710 (and tp!2264484 tp!2264485))))

(assert (=> b!7718363 (= tp!2264409 e!4578710)))

(declare-fun b!7718913 () Bool)

(assert (=> b!7718913 (= e!4578710 tp_is_empty!51437)))

(assert (= (and b!7718363 ((_ is ElementMatch!20541) (regTwo!41595 r!14126))) b!7718913))

(assert (= (and b!7718363 ((_ is Concat!29386) (regTwo!41595 r!14126))) b!7718914))

(assert (= (and b!7718363 ((_ is Star!20541) (regTwo!41595 r!14126))) b!7718915))

(assert (= (and b!7718363 ((_ is Union!20541) (regTwo!41595 r!14126))) b!7718916))

(declare-fun b_lambda!289265 () Bool)

(assert (= b_lambda!289259 (or b!7718351 b_lambda!289265)))

(declare-fun bs!1962974 () Bool)

(declare-fun d!2337436 () Bool)

(assert (= bs!1962974 (and d!2337436 b!7718351)))

(declare-fun res!3080054 () Bool)

(declare-fun e!4578711 () Bool)

(assert (=> bs!1962974 (=> (not res!3080054) (not e!4578711))))

(assert (=> bs!1962974 (= res!3080054 (= (++!17749 (_1!38075 lt!2666056) (_2!38075 lt!2666056)) s!9605))))

(assert (=> bs!1962974 (= (dynLambda!29957 lambda!471019 lt!2666056) e!4578711)))

(declare-fun b!7718917 () Bool)

(declare-fun res!3080055 () Bool)

(assert (=> b!7718917 (=> (not res!3080055) (not e!4578711))))

(assert (=> b!7718917 (= res!3080055 (not (isEmpty!41929 (_1!38075 lt!2666056))))))

(declare-fun b!7718918 () Bool)

(declare-fun res!3080056 () Bool)

(assert (=> b!7718918 (=> (not res!3080056) (not e!4578711))))

(assert (=> b!7718918 (= res!3080056 (matchRSpec!4631 (reg!20870 r!14126) (_1!38075 lt!2666056)))))

(declare-fun b!7718919 () Bool)

(assert (=> b!7718919 (= e!4578711 (matchRSpec!4631 r!14126 (_2!38075 lt!2666056)))))

(assert (= (and bs!1962974 res!3080054) b!7718917))

(assert (= (and b!7718917 res!3080055) b!7718918))

(assert (= (and b!7718918 res!3080056) b!7718919))

(declare-fun m!8199290 () Bool)

(assert (=> bs!1962974 m!8199290))

(declare-fun m!8199292 () Bool)

(assert (=> b!7718917 m!8199292))

(declare-fun m!8199294 () Bool)

(assert (=> b!7718918 m!8199294))

(declare-fun m!8199296 () Bool)

(assert (=> b!7718919 m!8199296))

(assert (=> d!2337356 d!2337436))

(check-sat (not b!7718908) (not bm!713395) (not b!7718478) (not d!2337428) (not d!2337412) (not d!2337424) (not b!7718911) (not b!7718472) (not b!7718899) (not d!2337414) (not b!7718906) (not bm!713378) (not bm!713391) (not bm!713381) (not d!2337346) (not b!7718868) (not b!7718822) (not bm!713392) (not b!7718701) (not b!7718881) (not b!7718854) (not d!2337356) (not d!2337404) (not d!2337394) (not b!7718915) (not d!2337422) (not bm!713380) (not d!2337426) (not b!7718904) (not b!7718500) (not bm!713366) (not bm!713365) (not d!2337416) (not b!7718468) (not b!7718828) (not b!7718838) (not b!7718684) (not d!2337418) (not d!2337408) (not bm!713394) (not b!7718857) (not b!7718907) (not b!7718467) (not b!7718852) (not b!7718604) (not b_lambda!289265) (not b!7718608) (not b!7718495) (not b!7718849) (not bm!713377) (not b!7718697) (not d!2337362) (not b!7718880) (not b!7718914) (not b!7718745) (not b!7718829) (not b!7718903) (not b!7718801) (not b!7718898) (not b!7718916) (not b!7718919) (not b!7718910) (not b!7718839) (not d!2337432) (not b!7718826) (not b!7718918) (not b!7718802) (not b!7718506) (not bm!713355) (not b!7718864) (not b!7718850) (not b!7718479) (not b!7718867) (not b!7718497) (not b!7718507) (not b!7718917) (not bm!713359) (not d!2337420) (not b!7718469) (not bs!1962974) (not b!7718912) (not b!7718863) tp_is_empty!51437 (not b!7718840) (not b!7718900) (not b!7718902) (not b!7718827) (not b!7718824) (not b!7718853) (not b!7718886) (not b!7718837) (not b!7718843) (not b!7718496) (not b!7718879))
(check-sat)
