; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736174 () Bool)

(assert start!736174)

(declare-fun b!7666559 () Bool)

(assert (=> b!7666559 true))

(assert (=> b!7666559 true))

(declare-fun b!7666552 () Bool)

(declare-fun e!4553509 () Bool)

(declare-fun e!4553508 () Bool)

(assert (=> b!7666552 (= e!4553509 e!4553508)))

(declare-fun res!3066327 () Bool)

(assert (=> b!7666552 (=> res!3066327 e!4553508)))

(declare-datatypes ((C!41298 0))(
  ( (C!41299 (val!31089 Int)) )
))
(declare-datatypes ((Regex!20486 0))(
  ( (ElementMatch!20486 (c!1412001 C!41298)) (Concat!29331 (regOne!41484 Regex!20486) (regTwo!41484 Regex!20486)) (EmptyExpr!20486) (Star!20486 (reg!20815 Regex!20486)) (EmptyLang!20486) (Union!20486 (regOne!41485 Regex!20486) (regTwo!41485 Regex!20486)) )
))
(declare-fun r!14126 () Regex!20486)

(declare-datatypes ((List!73337 0))(
  ( (Nil!73213) (Cons!73213 (h!79661 C!41298) (t!388072 List!73337)) )
))
(declare-fun s!9605 () List!73337)

(declare-fun matchR!9982 (Regex!20486 List!73337) Bool)

(assert (=> b!7666552 (= res!3066327 (matchR!9982 r!14126 s!9605))))

(declare-datatypes ((tuple2!69434 0))(
  ( (tuple2!69435 (_1!38020 List!73337) (_2!38020 List!73337)) )
))
(declare-fun lt!2662045 () tuple2!69434)

(declare-fun matchRSpec!4587 (Regex!20486 List!73337) Bool)

(assert (=> b!7666552 (= (matchR!9982 r!14126 (_2!38020 lt!2662045)) (matchRSpec!4587 r!14126 (_2!38020 lt!2662045)))))

(declare-datatypes ((Unit!167984 0))(
  ( (Unit!167985) )
))
(declare-fun lt!2662049 () Unit!167984)

(declare-fun mainMatchTheorem!4565 (Regex!20486 List!73337) Unit!167984)

(assert (=> b!7666552 (= lt!2662049 (mainMatchTheorem!4565 r!14126 (_2!38020 lt!2662045)))))

(assert (=> b!7666552 (= (matchR!9982 (reg!20815 r!14126) (_1!38020 lt!2662045)) (matchRSpec!4587 (reg!20815 r!14126) (_1!38020 lt!2662045)))))

(declare-fun lt!2662047 () Unit!167984)

(assert (=> b!7666552 (= lt!2662047 (mainMatchTheorem!4565 (reg!20815 r!14126) (_1!38020 lt!2662045)))))

(declare-datatypes ((Option!17511 0))(
  ( (None!17510) (Some!17510 (v!54645 tuple2!69434)) )
))
(declare-fun lt!2662046 () Option!17511)

(declare-fun get!25941 (Option!17511) tuple2!69434)

(assert (=> b!7666552 (= lt!2662045 (get!25941 lt!2662046))))

(declare-fun b!7666553 () Bool)

(declare-fun e!4553506 () Bool)

(declare-fun tp!2243535 () Bool)

(assert (=> b!7666553 (= e!4553506 tp!2243535)))

(declare-fun b!7666554 () Bool)

(declare-fun res!3066323 () Bool)

(declare-fun e!4553510 () Bool)

(assert (=> b!7666554 (=> (not res!3066323) (not e!4553510))))

(declare-fun isEmpty!41844 (List!73337) Bool)

(assert (=> b!7666554 (= res!3066323 (not (isEmpty!41844 s!9605)))))

(declare-fun b!7666555 () Bool)

(declare-fun tp!2243532 () Bool)

(declare-fun tp!2243530 () Bool)

(assert (=> b!7666555 (= e!4553506 (and tp!2243532 tp!2243530))))

(declare-fun res!3066326 () Bool)

(assert (=> start!736174 (=> (not res!3066326) (not e!4553510))))

(declare-fun validRegex!10904 (Regex!20486) Bool)

(assert (=> start!736174 (= res!3066326 (validRegex!10904 r!14126))))

(assert (=> start!736174 e!4553510))

(assert (=> start!736174 e!4553506))

(declare-fun e!4553507 () Bool)

(assert (=> start!736174 e!4553507))

(declare-fun b!7666556 () Bool)

(assert (=> b!7666556 (= e!4553508 (validRegex!10904 (reg!20815 r!14126)))))

(declare-fun b!7666557 () Bool)

(declare-fun res!3066325 () Bool)

(assert (=> b!7666557 (=> (not res!3066325) (not e!4553510))))

(assert (=> b!7666557 (= res!3066325 (and (not (is-EmptyExpr!20486 r!14126)) (not (is-EmptyLang!20486 r!14126)) (not (is-ElementMatch!20486 r!14126)) (not (is-Union!20486 r!14126)) (is-Star!20486 r!14126)))))

(declare-fun b!7666558 () Bool)

(declare-fun tp_is_empty!51327 () Bool)

(declare-fun tp!2243534 () Bool)

(assert (=> b!7666558 (= e!4553507 (and tp_is_empty!51327 tp!2243534))))

(assert (=> b!7666559 (= e!4553510 (not e!4553509))))

(declare-fun res!3066324 () Bool)

(assert (=> b!7666559 (=> res!3066324 e!4553509)))

(declare-fun lt!2662050 () Bool)

(assert (=> b!7666559 (= res!3066324 (not lt!2662050))))

(declare-fun lambda!469896 () Int)

(declare-fun Exists!4611 (Int) Bool)

(assert (=> b!7666559 (= lt!2662050 (Exists!4611 lambda!469896))))

(declare-fun isDefined!14127 (Option!17511) Bool)

(assert (=> b!7666559 (= lt!2662050 (isDefined!14127 lt!2662046))))

(declare-fun findConcatSeparation!3541 (Regex!20486 Regex!20486 List!73337 List!73337 List!73337) Option!17511)

(assert (=> b!7666559 (= lt!2662046 (findConcatSeparation!3541 (reg!20815 r!14126) r!14126 Nil!73213 s!9605 s!9605))))

(declare-fun lt!2662048 () Unit!167984)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3299 (Regex!20486 Regex!20486 List!73337) Unit!167984)

(assert (=> b!7666559 (= lt!2662048 (lemmaFindConcatSeparationEquivalentToExists!3299 (reg!20815 r!14126) r!14126 s!9605))))

(declare-fun b!7666560 () Bool)

(declare-fun tp!2243533 () Bool)

(declare-fun tp!2243531 () Bool)

(assert (=> b!7666560 (= e!4553506 (and tp!2243533 tp!2243531))))

(declare-fun b!7666561 () Bool)

(assert (=> b!7666561 (= e!4553506 tp_is_empty!51327)))

(assert (= (and start!736174 res!3066326) b!7666557))

(assert (= (and b!7666557 res!3066325) b!7666554))

(assert (= (and b!7666554 res!3066323) b!7666559))

(assert (= (and b!7666559 (not res!3066324)) b!7666552))

(assert (= (and b!7666552 (not res!3066327)) b!7666556))

(assert (= (and start!736174 (is-ElementMatch!20486 r!14126)) b!7666561))

(assert (= (and start!736174 (is-Concat!29331 r!14126)) b!7666560))

(assert (= (and start!736174 (is-Star!20486 r!14126)) b!7666553))

(assert (= (and start!736174 (is-Union!20486 r!14126)) b!7666555))

(assert (= (and start!736174 (is-Cons!73213 s!9605)) b!7666558))

(declare-fun m!8172338 () Bool)

(assert (=> b!7666554 m!8172338))

(declare-fun m!8172340 () Bool)

(assert (=> start!736174 m!8172340))

(declare-fun m!8172342 () Bool)

(assert (=> b!7666559 m!8172342))

(declare-fun m!8172344 () Bool)

(assert (=> b!7666559 m!8172344))

(declare-fun m!8172346 () Bool)

(assert (=> b!7666559 m!8172346))

(declare-fun m!8172348 () Bool)

(assert (=> b!7666559 m!8172348))

(declare-fun m!8172350 () Bool)

(assert (=> b!7666556 m!8172350))

(declare-fun m!8172352 () Bool)

(assert (=> b!7666552 m!8172352))

(declare-fun m!8172354 () Bool)

(assert (=> b!7666552 m!8172354))

(declare-fun m!8172356 () Bool)

(assert (=> b!7666552 m!8172356))

(declare-fun m!8172358 () Bool)

(assert (=> b!7666552 m!8172358))

(declare-fun m!8172360 () Bool)

(assert (=> b!7666552 m!8172360))

(declare-fun m!8172362 () Bool)

(assert (=> b!7666552 m!8172362))

(declare-fun m!8172364 () Bool)

(assert (=> b!7666552 m!8172364))

(declare-fun m!8172366 () Bool)

(assert (=> b!7666552 m!8172366))

(push 1)

(assert (not b!7666560))

(assert (not b!7666558))

(assert (not b!7666552))

(assert tp_is_empty!51327)

(assert (not b!7666553))

(assert (not b!7666555))

(assert (not b!7666556))

(assert (not b!7666559))

(assert (not b!7666554))

(assert (not start!736174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7666622 () Bool)

(declare-fun e!4553546 () Bool)

(declare-fun call!705010 () Bool)

(assert (=> b!7666622 (= e!4553546 call!705010)))

(declare-fun bm!705004 () Bool)

(declare-fun call!705011 () Bool)

(assert (=> bm!705004 (= call!705010 call!705011)))

(declare-fun b!7666623 () Bool)

(declare-fun res!3066360 () Bool)

(declare-fun e!4553545 () Bool)

(assert (=> b!7666623 (=> (not res!3066360) (not e!4553545))))

(declare-fun call!705009 () Bool)

(assert (=> b!7666623 (= res!3066360 call!705009)))

(declare-fun e!4553548 () Bool)

(assert (=> b!7666623 (= e!4553548 e!4553545)))

(declare-fun b!7666624 () Bool)

(declare-fun e!4553543 () Bool)

(assert (=> b!7666624 (= e!4553543 e!4553546)))

(declare-fun res!3066358 () Bool)

(assert (=> b!7666624 (=> (not res!3066358) (not e!4553546))))

(assert (=> b!7666624 (= res!3066358 call!705009)))

(declare-fun b!7666625 () Bool)

(assert (=> b!7666625 (= e!4553545 call!705010)))

(declare-fun b!7666626 () Bool)

(declare-fun e!4553544 () Bool)

(assert (=> b!7666626 (= e!4553544 e!4553548)))

(declare-fun c!1412007 () Bool)

(assert (=> b!7666626 (= c!1412007 (is-Union!20486 (reg!20815 r!14126)))))

(declare-fun bm!705005 () Bool)

(declare-fun c!1412008 () Bool)

(assert (=> bm!705005 (= call!705011 (validRegex!10904 (ite c!1412008 (reg!20815 (reg!20815 r!14126)) (ite c!1412007 (regTwo!41485 (reg!20815 r!14126)) (regTwo!41484 (reg!20815 r!14126))))))))

(declare-fun b!7666627 () Bool)

(declare-fun res!3066359 () Bool)

(assert (=> b!7666627 (=> res!3066359 e!4553543)))

(assert (=> b!7666627 (= res!3066359 (not (is-Concat!29331 (reg!20815 r!14126))))))

(assert (=> b!7666627 (= e!4553548 e!4553543)))

(declare-fun b!7666628 () Bool)

(declare-fun e!4553542 () Bool)

(assert (=> b!7666628 (= e!4553544 e!4553542)))

(declare-fun res!3066361 () Bool)

(declare-fun nullable!8983 (Regex!20486) Bool)

(assert (=> b!7666628 (= res!3066361 (not (nullable!8983 (reg!20815 (reg!20815 r!14126)))))))

(assert (=> b!7666628 (=> (not res!3066361) (not e!4553542))))

(declare-fun b!7666629 () Bool)

(declare-fun e!4553547 () Bool)

(assert (=> b!7666629 (= e!4553547 e!4553544)))

(assert (=> b!7666629 (= c!1412008 (is-Star!20486 (reg!20815 r!14126)))))

(declare-fun b!7666630 () Bool)

(assert (=> b!7666630 (= e!4553542 call!705011)))

(declare-fun bm!705006 () Bool)

(assert (=> bm!705006 (= call!705009 (validRegex!10904 (ite c!1412007 (regOne!41485 (reg!20815 r!14126)) (regOne!41484 (reg!20815 r!14126)))))))

(declare-fun d!2328259 () Bool)

(declare-fun res!3066357 () Bool)

(assert (=> d!2328259 (=> res!3066357 e!4553547)))

(assert (=> d!2328259 (= res!3066357 (is-ElementMatch!20486 (reg!20815 r!14126)))))

(assert (=> d!2328259 (= (validRegex!10904 (reg!20815 r!14126)) e!4553547)))

(assert (= (and d!2328259 (not res!3066357)) b!7666629))

(assert (= (and b!7666629 c!1412008) b!7666628))

(assert (= (and b!7666629 (not c!1412008)) b!7666626))

(assert (= (and b!7666628 res!3066361) b!7666630))

(assert (= (and b!7666626 c!1412007) b!7666623))

(assert (= (and b!7666626 (not c!1412007)) b!7666627))

(assert (= (and b!7666623 res!3066360) b!7666625))

(assert (= (and b!7666627 (not res!3066359)) b!7666624))

(assert (= (and b!7666624 res!3066358) b!7666622))

(assert (= (or b!7666623 b!7666624) bm!705006))

(assert (= (or b!7666625 b!7666622) bm!705004))

(assert (= (or b!7666630 bm!705004) bm!705005))

(declare-fun m!8172398 () Bool)

(assert (=> bm!705005 m!8172398))

(declare-fun m!8172400 () Bool)

(assert (=> b!7666628 m!8172400))

(declare-fun m!8172402 () Bool)

(assert (=> bm!705006 m!8172402))

(assert (=> b!7666556 d!2328259))

(declare-fun bm!705009 () Bool)

(declare-fun call!705014 () Bool)

(assert (=> bm!705009 (= call!705014 (isEmpty!41844 s!9605))))

(declare-fun b!7666659 () Bool)

(declare-fun e!4553565 () Bool)

(declare-fun head!15749 (List!73337) C!41298)

(assert (=> b!7666659 (= e!4553565 (not (= (head!15749 s!9605) (c!1412001 r!14126))))))

(declare-fun b!7666660 () Bool)

(declare-fun e!4553568 () Bool)

(assert (=> b!7666660 (= e!4553568 e!4553565)))

(declare-fun res!3066385 () Bool)

(assert (=> b!7666660 (=> res!3066385 e!4553565)))

(assert (=> b!7666660 (= res!3066385 call!705014)))

(declare-fun b!7666661 () Bool)

(declare-fun res!3066382 () Bool)

(declare-fun e!4553566 () Bool)

(assert (=> b!7666661 (=> res!3066382 e!4553566)))

(declare-fun e!4553567 () Bool)

(assert (=> b!7666661 (= res!3066382 e!4553567)))

(declare-fun res!3066380 () Bool)

(assert (=> b!7666661 (=> (not res!3066380) (not e!4553567))))

(declare-fun lt!2662071 () Bool)

(assert (=> b!7666661 (= res!3066380 lt!2662071)))

(declare-fun b!7666663 () Bool)

(declare-fun e!4553563 () Bool)

(declare-fun derivativeStep!5949 (Regex!20486 C!41298) Regex!20486)

(declare-fun tail!15289 (List!73337) List!73337)

(assert (=> b!7666663 (= e!4553563 (matchR!9982 (derivativeStep!5949 r!14126 (head!15749 s!9605)) (tail!15289 s!9605)))))

(declare-fun b!7666664 () Bool)

(declare-fun res!3066384 () Bool)

(assert (=> b!7666664 (=> res!3066384 e!4553566)))

(assert (=> b!7666664 (= res!3066384 (not (is-ElementMatch!20486 r!14126)))))

(declare-fun e!4553569 () Bool)

(assert (=> b!7666664 (= e!4553569 e!4553566)))

(declare-fun b!7666665 () Bool)

(declare-fun e!4553564 () Bool)

(assert (=> b!7666665 (= e!4553564 e!4553569)))

(declare-fun c!1412015 () Bool)

(assert (=> b!7666665 (= c!1412015 (is-EmptyLang!20486 r!14126))))

(declare-fun b!7666666 () Bool)

(assert (=> b!7666666 (= e!4553564 (= lt!2662071 call!705014))))

(declare-fun b!7666667 () Bool)

(declare-fun res!3066383 () Bool)

(assert (=> b!7666667 (=> (not res!3066383) (not e!4553567))))

(assert (=> b!7666667 (= res!3066383 (isEmpty!41844 (tail!15289 s!9605)))))

(declare-fun b!7666668 () Bool)

(assert (=> b!7666668 (= e!4553563 (nullable!8983 r!14126))))

(declare-fun b!7666669 () Bool)

(assert (=> b!7666669 (= e!4553567 (= (head!15749 s!9605) (c!1412001 r!14126)))))

(declare-fun b!7666670 () Bool)

(declare-fun res!3066378 () Bool)

(assert (=> b!7666670 (=> (not res!3066378) (not e!4553567))))

(assert (=> b!7666670 (= res!3066378 (not call!705014))))

(declare-fun b!7666671 () Bool)

(assert (=> b!7666671 (= e!4553566 e!4553568)))

(declare-fun res!3066379 () Bool)

(assert (=> b!7666671 (=> (not res!3066379) (not e!4553568))))

(assert (=> b!7666671 (= res!3066379 (not lt!2662071))))

(declare-fun b!7666672 () Bool)

(declare-fun res!3066381 () Bool)

(assert (=> b!7666672 (=> res!3066381 e!4553565)))

(assert (=> b!7666672 (= res!3066381 (not (isEmpty!41844 (tail!15289 s!9605))))))

(declare-fun d!2328261 () Bool)

(assert (=> d!2328261 e!4553564))

(declare-fun c!1412017 () Bool)

(assert (=> d!2328261 (= c!1412017 (is-EmptyExpr!20486 r!14126))))

(assert (=> d!2328261 (= lt!2662071 e!4553563)))

(declare-fun c!1412016 () Bool)

(assert (=> d!2328261 (= c!1412016 (isEmpty!41844 s!9605))))

(assert (=> d!2328261 (validRegex!10904 r!14126)))

(assert (=> d!2328261 (= (matchR!9982 r!14126 s!9605) lt!2662071)))

(declare-fun b!7666662 () Bool)

(assert (=> b!7666662 (= e!4553569 (not lt!2662071))))

(assert (= (and d!2328261 c!1412016) b!7666668))

(assert (= (and d!2328261 (not c!1412016)) b!7666663))

(assert (= (and d!2328261 c!1412017) b!7666666))

(assert (= (and d!2328261 (not c!1412017)) b!7666665))

(assert (= (and b!7666665 c!1412015) b!7666662))

(assert (= (and b!7666665 (not c!1412015)) b!7666664))

(assert (= (and b!7666664 (not res!3066384)) b!7666661))

(assert (= (and b!7666661 res!3066380) b!7666670))

(assert (= (and b!7666670 res!3066378) b!7666667))

(assert (= (and b!7666667 res!3066383) b!7666669))

(assert (= (and b!7666661 (not res!3066382)) b!7666671))

(assert (= (and b!7666671 res!3066379) b!7666660))

(assert (= (and b!7666660 (not res!3066385)) b!7666672))

(assert (= (and b!7666672 (not res!3066381)) b!7666659))

(assert (= (or b!7666666 b!7666660 b!7666670) bm!705009))

(declare-fun m!8172404 () Bool)

(assert (=> b!7666672 m!8172404))

(assert (=> b!7666672 m!8172404))

(declare-fun m!8172406 () Bool)

(assert (=> b!7666672 m!8172406))

(assert (=> b!7666667 m!8172404))

(assert (=> b!7666667 m!8172404))

(assert (=> b!7666667 m!8172406))

(declare-fun m!8172408 () Bool)

(assert (=> b!7666669 m!8172408))

(assert (=> b!7666659 m!8172408))

(assert (=> d!2328261 m!8172338))

(assert (=> d!2328261 m!8172340))

(declare-fun m!8172410 () Bool)

(assert (=> b!7666668 m!8172410))

(assert (=> bm!705009 m!8172338))

(assert (=> b!7666663 m!8172408))

(assert (=> b!7666663 m!8172408))

(declare-fun m!8172412 () Bool)

(assert (=> b!7666663 m!8172412))

(assert (=> b!7666663 m!8172404))

(assert (=> b!7666663 m!8172412))

(assert (=> b!7666663 m!8172404))

(declare-fun m!8172414 () Bool)

(assert (=> b!7666663 m!8172414))

(assert (=> b!7666552 d!2328261))

(declare-fun d!2328265 () Bool)

(assert (=> d!2328265 (= (matchR!9982 r!14126 (_2!38020 lt!2662045)) (matchRSpec!4587 r!14126 (_2!38020 lt!2662045)))))

(declare-fun lt!2662074 () Unit!167984)

(declare-fun choose!59069 (Regex!20486 List!73337) Unit!167984)

(assert (=> d!2328265 (= lt!2662074 (choose!59069 r!14126 (_2!38020 lt!2662045)))))

(assert (=> d!2328265 (validRegex!10904 r!14126)))

(assert (=> d!2328265 (= (mainMatchTheorem!4565 r!14126 (_2!38020 lt!2662045)) lt!2662074)))

(declare-fun bs!1946265 () Bool)

(assert (= bs!1946265 d!2328265))

(assert (=> bs!1946265 m!8172364))

(assert (=> bs!1946265 m!8172362))

(declare-fun m!8172416 () Bool)

(assert (=> bs!1946265 m!8172416))

(assert (=> bs!1946265 m!8172340))

(assert (=> b!7666552 d!2328265))

(declare-fun bs!1946266 () Bool)

(declare-fun b!7666736 () Bool)

(assert (= bs!1946266 (and b!7666736 b!7666559)))

(declare-fun lambda!469904 () Int)

(assert (=> bs!1946266 (not (= lambda!469904 lambda!469896))))

(assert (=> b!7666736 true))

(assert (=> b!7666736 true))

(declare-fun bs!1946267 () Bool)

(declare-fun b!7666737 () Bool)

(assert (= bs!1946267 (and b!7666737 b!7666559)))

(declare-fun lambda!469905 () Int)

(assert (=> bs!1946267 (not (= lambda!469905 lambda!469896))))

(declare-fun bs!1946268 () Bool)

(assert (= bs!1946268 (and b!7666737 b!7666736)))

(assert (=> bs!1946268 (not (= lambda!469905 lambda!469904))))

(assert (=> b!7666737 true))

(assert (=> b!7666737 true))

(declare-fun b!7666733 () Bool)

(declare-fun e!4553607 () Bool)

(declare-fun e!4553602 () Bool)

(assert (=> b!7666733 (= e!4553607 e!4553602)))

(declare-fun c!1412033 () Bool)

(assert (=> b!7666733 (= c!1412033 (is-Star!20486 r!14126))))

(declare-fun b!7666734 () Bool)

(declare-fun e!4553604 () Bool)

(assert (=> b!7666734 (= e!4553604 (matchRSpec!4587 (regTwo!41485 r!14126) (_2!38020 lt!2662045)))))

(declare-fun b!7666735 () Bool)

(assert (=> b!7666735 (= e!4553607 e!4553604)))

(declare-fun res!3066418 () Bool)

(assert (=> b!7666735 (= res!3066418 (matchRSpec!4587 (regOne!41485 r!14126) (_2!38020 lt!2662045)))))

(assert (=> b!7666735 (=> res!3066418 e!4553604)))

(declare-fun e!4553608 () Bool)

(declare-fun call!705022 () Bool)

(assert (=> b!7666736 (= e!4553608 call!705022)))

(assert (=> b!7666737 (= e!4553602 call!705022)))

(declare-fun b!7666738 () Bool)

(declare-fun e!4553606 () Bool)

(declare-fun call!705021 () Bool)

(assert (=> b!7666738 (= e!4553606 call!705021)))

(declare-fun bm!705016 () Bool)

(assert (=> bm!705016 (= call!705022 (Exists!4611 (ite c!1412033 lambda!469904 lambda!469905)))))

(declare-fun bm!705017 () Bool)

(assert (=> bm!705017 (= call!705021 (isEmpty!41844 (_2!38020 lt!2662045)))))

(declare-fun b!7666739 () Bool)

(declare-fun e!4553603 () Bool)

(assert (=> b!7666739 (= e!4553606 e!4553603)))

(declare-fun res!3066419 () Bool)

(assert (=> b!7666739 (= res!3066419 (not (is-EmptyLang!20486 r!14126)))))

(assert (=> b!7666739 (=> (not res!3066419) (not e!4553603))))

(declare-fun b!7666740 () Bool)

(declare-fun c!1412034 () Bool)

(assert (=> b!7666740 (= c!1412034 (is-Union!20486 r!14126))))

(declare-fun e!4553605 () Bool)

(assert (=> b!7666740 (= e!4553605 e!4553607)))

(declare-fun b!7666741 () Bool)

(declare-fun res!3066420 () Bool)

(assert (=> b!7666741 (=> res!3066420 e!4553608)))

(assert (=> b!7666741 (= res!3066420 call!705021)))

(assert (=> b!7666741 (= e!4553602 e!4553608)))

(declare-fun d!2328267 () Bool)

(declare-fun c!1412032 () Bool)

(assert (=> d!2328267 (= c!1412032 (is-EmptyExpr!20486 r!14126))))

(assert (=> d!2328267 (= (matchRSpec!4587 r!14126 (_2!38020 lt!2662045)) e!4553606)))

(declare-fun b!7666742 () Bool)

(declare-fun c!1412035 () Bool)

(assert (=> b!7666742 (= c!1412035 (is-ElementMatch!20486 r!14126))))

(assert (=> b!7666742 (= e!4553603 e!4553605)))

(declare-fun b!7666743 () Bool)

(assert (=> b!7666743 (= e!4553605 (= (_2!38020 lt!2662045) (Cons!73213 (c!1412001 r!14126) Nil!73213)))))

(assert (= (and d!2328267 c!1412032) b!7666738))

(assert (= (and d!2328267 (not c!1412032)) b!7666739))

(assert (= (and b!7666739 res!3066419) b!7666742))

(assert (= (and b!7666742 c!1412035) b!7666743))

(assert (= (and b!7666742 (not c!1412035)) b!7666740))

(assert (= (and b!7666740 c!1412034) b!7666735))

(assert (= (and b!7666740 (not c!1412034)) b!7666733))

(assert (= (and b!7666735 (not res!3066418)) b!7666734))

(assert (= (and b!7666733 c!1412033) b!7666741))

(assert (= (and b!7666733 (not c!1412033)) b!7666737))

(assert (= (and b!7666741 (not res!3066420)) b!7666736))

(assert (= (or b!7666736 b!7666737) bm!705016))

(assert (= (or b!7666738 b!7666741) bm!705017))

(declare-fun m!8172418 () Bool)

(assert (=> b!7666734 m!8172418))

(declare-fun m!8172420 () Bool)

(assert (=> b!7666735 m!8172420))

(declare-fun m!8172422 () Bool)

(assert (=> bm!705016 m!8172422))

(declare-fun m!8172424 () Bool)

(assert (=> bm!705017 m!8172424))

(assert (=> b!7666552 d!2328267))

(declare-fun d!2328269 () Bool)

(assert (=> d!2328269 (= (matchR!9982 (reg!20815 r!14126) (_1!38020 lt!2662045)) (matchRSpec!4587 (reg!20815 r!14126) (_1!38020 lt!2662045)))))

(declare-fun lt!2662077 () Unit!167984)

(assert (=> d!2328269 (= lt!2662077 (choose!59069 (reg!20815 r!14126) (_1!38020 lt!2662045)))))

(assert (=> d!2328269 (validRegex!10904 (reg!20815 r!14126))))

(assert (=> d!2328269 (= (mainMatchTheorem!4565 (reg!20815 r!14126) (_1!38020 lt!2662045)) lt!2662077)))

(declare-fun bs!1946269 () Bool)

(assert (= bs!1946269 d!2328269))

(assert (=> bs!1946269 m!8172354))

(assert (=> bs!1946269 m!8172352))

(declare-fun m!8172426 () Bool)

(assert (=> bs!1946269 m!8172426))

(assert (=> bs!1946269 m!8172350))

(assert (=> b!7666552 d!2328269))

(declare-fun bm!705018 () Bool)

(declare-fun call!705023 () Bool)

(assert (=> bm!705018 (= call!705023 (isEmpty!41844 (_1!38020 lt!2662045)))))

(declare-fun b!7666744 () Bool)

(declare-fun e!4553611 () Bool)

(assert (=> b!7666744 (= e!4553611 (not (= (head!15749 (_1!38020 lt!2662045)) (c!1412001 (reg!20815 r!14126)))))))

(declare-fun b!7666745 () Bool)

(declare-fun e!4553614 () Bool)

(assert (=> b!7666745 (= e!4553614 e!4553611)))

(declare-fun res!3066428 () Bool)

(assert (=> b!7666745 (=> res!3066428 e!4553611)))

(assert (=> b!7666745 (= res!3066428 call!705023)))

(declare-fun b!7666746 () Bool)

(declare-fun res!3066425 () Bool)

(declare-fun e!4553612 () Bool)

(assert (=> b!7666746 (=> res!3066425 e!4553612)))

(declare-fun e!4553613 () Bool)

(assert (=> b!7666746 (= res!3066425 e!4553613)))

(declare-fun res!3066423 () Bool)

(assert (=> b!7666746 (=> (not res!3066423) (not e!4553613))))

(declare-fun lt!2662078 () Bool)

(assert (=> b!7666746 (= res!3066423 lt!2662078)))

(declare-fun b!7666748 () Bool)

(declare-fun e!4553609 () Bool)

(assert (=> b!7666748 (= e!4553609 (matchR!9982 (derivativeStep!5949 (reg!20815 r!14126) (head!15749 (_1!38020 lt!2662045))) (tail!15289 (_1!38020 lt!2662045))))))

(declare-fun b!7666749 () Bool)

(declare-fun res!3066427 () Bool)

(assert (=> b!7666749 (=> res!3066427 e!4553612)))

(assert (=> b!7666749 (= res!3066427 (not (is-ElementMatch!20486 (reg!20815 r!14126))))))

(declare-fun e!4553615 () Bool)

(assert (=> b!7666749 (= e!4553615 e!4553612)))

(declare-fun b!7666750 () Bool)

(declare-fun e!4553610 () Bool)

(assert (=> b!7666750 (= e!4553610 e!4553615)))

(declare-fun c!1412036 () Bool)

(assert (=> b!7666750 (= c!1412036 (is-EmptyLang!20486 (reg!20815 r!14126)))))

(declare-fun b!7666751 () Bool)

(assert (=> b!7666751 (= e!4553610 (= lt!2662078 call!705023))))

(declare-fun b!7666752 () Bool)

(declare-fun res!3066426 () Bool)

(assert (=> b!7666752 (=> (not res!3066426) (not e!4553613))))

(assert (=> b!7666752 (= res!3066426 (isEmpty!41844 (tail!15289 (_1!38020 lt!2662045))))))

(declare-fun b!7666753 () Bool)

(assert (=> b!7666753 (= e!4553609 (nullable!8983 (reg!20815 r!14126)))))

(declare-fun b!7666754 () Bool)

(assert (=> b!7666754 (= e!4553613 (= (head!15749 (_1!38020 lt!2662045)) (c!1412001 (reg!20815 r!14126))))))

(declare-fun b!7666755 () Bool)

(declare-fun res!3066421 () Bool)

(assert (=> b!7666755 (=> (not res!3066421) (not e!4553613))))

(assert (=> b!7666755 (= res!3066421 (not call!705023))))

(declare-fun b!7666756 () Bool)

(assert (=> b!7666756 (= e!4553612 e!4553614)))

(declare-fun res!3066422 () Bool)

(assert (=> b!7666756 (=> (not res!3066422) (not e!4553614))))

(assert (=> b!7666756 (= res!3066422 (not lt!2662078))))

(declare-fun b!7666757 () Bool)

(declare-fun res!3066424 () Bool)

(assert (=> b!7666757 (=> res!3066424 e!4553611)))

(assert (=> b!7666757 (= res!3066424 (not (isEmpty!41844 (tail!15289 (_1!38020 lt!2662045)))))))

(declare-fun d!2328271 () Bool)

(assert (=> d!2328271 e!4553610))

(declare-fun c!1412038 () Bool)

(assert (=> d!2328271 (= c!1412038 (is-EmptyExpr!20486 (reg!20815 r!14126)))))

(assert (=> d!2328271 (= lt!2662078 e!4553609)))

(declare-fun c!1412037 () Bool)

(assert (=> d!2328271 (= c!1412037 (isEmpty!41844 (_1!38020 lt!2662045)))))

(assert (=> d!2328271 (validRegex!10904 (reg!20815 r!14126))))

(assert (=> d!2328271 (= (matchR!9982 (reg!20815 r!14126) (_1!38020 lt!2662045)) lt!2662078)))

(declare-fun b!7666747 () Bool)

(assert (=> b!7666747 (= e!4553615 (not lt!2662078))))

(assert (= (and d!2328271 c!1412037) b!7666753))

(assert (= (and d!2328271 (not c!1412037)) b!7666748))

(assert (= (and d!2328271 c!1412038) b!7666751))

(assert (= (and d!2328271 (not c!1412038)) b!7666750))

(assert (= (and b!7666750 c!1412036) b!7666747))

(assert (= (and b!7666750 (not c!1412036)) b!7666749))

(assert (= (and b!7666749 (not res!3066427)) b!7666746))

(assert (= (and b!7666746 res!3066423) b!7666755))

(assert (= (and b!7666755 res!3066421) b!7666752))

(assert (= (and b!7666752 res!3066426) b!7666754))

(assert (= (and b!7666746 (not res!3066425)) b!7666756))

(assert (= (and b!7666756 res!3066422) b!7666745))

(assert (= (and b!7666745 (not res!3066428)) b!7666757))

(assert (= (and b!7666757 (not res!3066424)) b!7666744))

(assert (= (or b!7666751 b!7666745 b!7666755) bm!705018))

(declare-fun m!8172428 () Bool)

(assert (=> b!7666757 m!8172428))

(assert (=> b!7666757 m!8172428))

(declare-fun m!8172430 () Bool)

(assert (=> b!7666757 m!8172430))

(assert (=> b!7666752 m!8172428))

(assert (=> b!7666752 m!8172428))

(assert (=> b!7666752 m!8172430))

(declare-fun m!8172432 () Bool)

(assert (=> b!7666754 m!8172432))

(assert (=> b!7666744 m!8172432))

(declare-fun m!8172434 () Bool)

(assert (=> d!2328271 m!8172434))

(assert (=> d!2328271 m!8172350))

(declare-fun m!8172436 () Bool)

(assert (=> b!7666753 m!8172436))

(assert (=> bm!705018 m!8172434))

(assert (=> b!7666748 m!8172432))

(assert (=> b!7666748 m!8172432))

(declare-fun m!8172438 () Bool)

(assert (=> b!7666748 m!8172438))

(assert (=> b!7666748 m!8172428))

(assert (=> b!7666748 m!8172438))

(assert (=> b!7666748 m!8172428))

(declare-fun m!8172440 () Bool)

(assert (=> b!7666748 m!8172440))

(assert (=> b!7666552 d!2328271))

(declare-fun d!2328273 () Bool)

(assert (=> d!2328273 (= (get!25941 lt!2662046) (v!54645 lt!2662046))))

(assert (=> b!7666552 d!2328273))

(declare-fun bm!705019 () Bool)

(declare-fun call!705024 () Bool)

(assert (=> bm!705019 (= call!705024 (isEmpty!41844 (_2!38020 lt!2662045)))))

(declare-fun b!7666758 () Bool)

(declare-fun e!4553618 () Bool)

(assert (=> b!7666758 (= e!4553618 (not (= (head!15749 (_2!38020 lt!2662045)) (c!1412001 r!14126))))))

(declare-fun b!7666759 () Bool)

(declare-fun e!4553621 () Bool)

(assert (=> b!7666759 (= e!4553621 e!4553618)))

(declare-fun res!3066436 () Bool)

(assert (=> b!7666759 (=> res!3066436 e!4553618)))

(assert (=> b!7666759 (= res!3066436 call!705024)))

(declare-fun b!7666760 () Bool)

(declare-fun res!3066433 () Bool)

(declare-fun e!4553619 () Bool)

(assert (=> b!7666760 (=> res!3066433 e!4553619)))

(declare-fun e!4553620 () Bool)

(assert (=> b!7666760 (= res!3066433 e!4553620)))

(declare-fun res!3066431 () Bool)

(assert (=> b!7666760 (=> (not res!3066431) (not e!4553620))))

(declare-fun lt!2662079 () Bool)

(assert (=> b!7666760 (= res!3066431 lt!2662079)))

(declare-fun b!7666762 () Bool)

(declare-fun e!4553616 () Bool)

(assert (=> b!7666762 (= e!4553616 (matchR!9982 (derivativeStep!5949 r!14126 (head!15749 (_2!38020 lt!2662045))) (tail!15289 (_2!38020 lt!2662045))))))

(declare-fun b!7666763 () Bool)

(declare-fun res!3066435 () Bool)

(assert (=> b!7666763 (=> res!3066435 e!4553619)))

(assert (=> b!7666763 (= res!3066435 (not (is-ElementMatch!20486 r!14126)))))

(declare-fun e!4553622 () Bool)

(assert (=> b!7666763 (= e!4553622 e!4553619)))

(declare-fun b!7666764 () Bool)

(declare-fun e!4553617 () Bool)

(assert (=> b!7666764 (= e!4553617 e!4553622)))

(declare-fun c!1412039 () Bool)

(assert (=> b!7666764 (= c!1412039 (is-EmptyLang!20486 r!14126))))

(declare-fun b!7666765 () Bool)

(assert (=> b!7666765 (= e!4553617 (= lt!2662079 call!705024))))

(declare-fun b!7666766 () Bool)

(declare-fun res!3066434 () Bool)

(assert (=> b!7666766 (=> (not res!3066434) (not e!4553620))))

(assert (=> b!7666766 (= res!3066434 (isEmpty!41844 (tail!15289 (_2!38020 lt!2662045))))))

(declare-fun b!7666767 () Bool)

(assert (=> b!7666767 (= e!4553616 (nullable!8983 r!14126))))

(declare-fun b!7666768 () Bool)

(assert (=> b!7666768 (= e!4553620 (= (head!15749 (_2!38020 lt!2662045)) (c!1412001 r!14126)))))

(declare-fun b!7666769 () Bool)

(declare-fun res!3066429 () Bool)

(assert (=> b!7666769 (=> (not res!3066429) (not e!4553620))))

(assert (=> b!7666769 (= res!3066429 (not call!705024))))

(declare-fun b!7666770 () Bool)

(assert (=> b!7666770 (= e!4553619 e!4553621)))

(declare-fun res!3066430 () Bool)

(assert (=> b!7666770 (=> (not res!3066430) (not e!4553621))))

(assert (=> b!7666770 (= res!3066430 (not lt!2662079))))

(declare-fun b!7666771 () Bool)

(declare-fun res!3066432 () Bool)

(assert (=> b!7666771 (=> res!3066432 e!4553618)))

(assert (=> b!7666771 (= res!3066432 (not (isEmpty!41844 (tail!15289 (_2!38020 lt!2662045)))))))

(declare-fun d!2328275 () Bool)

(assert (=> d!2328275 e!4553617))

(declare-fun c!1412041 () Bool)

(assert (=> d!2328275 (= c!1412041 (is-EmptyExpr!20486 r!14126))))

(assert (=> d!2328275 (= lt!2662079 e!4553616)))

(declare-fun c!1412040 () Bool)

(assert (=> d!2328275 (= c!1412040 (isEmpty!41844 (_2!38020 lt!2662045)))))

(assert (=> d!2328275 (validRegex!10904 r!14126)))

(assert (=> d!2328275 (= (matchR!9982 r!14126 (_2!38020 lt!2662045)) lt!2662079)))

(declare-fun b!7666761 () Bool)

(assert (=> b!7666761 (= e!4553622 (not lt!2662079))))

(assert (= (and d!2328275 c!1412040) b!7666767))

(assert (= (and d!2328275 (not c!1412040)) b!7666762))

(assert (= (and d!2328275 c!1412041) b!7666765))

(assert (= (and d!2328275 (not c!1412041)) b!7666764))

(assert (= (and b!7666764 c!1412039) b!7666761))

(assert (= (and b!7666764 (not c!1412039)) b!7666763))

(assert (= (and b!7666763 (not res!3066435)) b!7666760))

(assert (= (and b!7666760 res!3066431) b!7666769))

(assert (= (and b!7666769 res!3066429) b!7666766))

(assert (= (and b!7666766 res!3066434) b!7666768))

(assert (= (and b!7666760 (not res!3066433)) b!7666770))

(assert (= (and b!7666770 res!3066430) b!7666759))

(assert (= (and b!7666759 (not res!3066436)) b!7666771))

(assert (= (and b!7666771 (not res!3066432)) b!7666758))

(assert (= (or b!7666765 b!7666759 b!7666769) bm!705019))

(declare-fun m!8172442 () Bool)

(assert (=> b!7666771 m!8172442))

(assert (=> b!7666771 m!8172442))

(declare-fun m!8172444 () Bool)

(assert (=> b!7666771 m!8172444))

(assert (=> b!7666766 m!8172442))

(assert (=> b!7666766 m!8172442))

(assert (=> b!7666766 m!8172444))

(declare-fun m!8172446 () Bool)

(assert (=> b!7666768 m!8172446))

(assert (=> b!7666758 m!8172446))

(assert (=> d!2328275 m!8172424))

(assert (=> d!2328275 m!8172340))

(assert (=> b!7666767 m!8172410))

(assert (=> bm!705019 m!8172424))

(assert (=> b!7666762 m!8172446))

(assert (=> b!7666762 m!8172446))

(declare-fun m!8172448 () Bool)

(assert (=> b!7666762 m!8172448))

(assert (=> b!7666762 m!8172442))

(assert (=> b!7666762 m!8172448))

(assert (=> b!7666762 m!8172442))

(declare-fun m!8172450 () Bool)

(assert (=> b!7666762 m!8172450))

(assert (=> b!7666552 d!2328275))

(declare-fun bs!1946270 () Bool)

(declare-fun b!7666789 () Bool)

(assert (= bs!1946270 (and b!7666789 b!7666559)))

(declare-fun lambda!469906 () Int)

(assert (=> bs!1946270 (not (= lambda!469906 lambda!469896))))

(declare-fun bs!1946271 () Bool)

(assert (= bs!1946271 (and b!7666789 b!7666736)))

(assert (=> bs!1946271 (= (and (= (_1!38020 lt!2662045) (_2!38020 lt!2662045)) (= (reg!20815 (reg!20815 r!14126)) (reg!20815 r!14126)) (= (reg!20815 r!14126) r!14126)) (= lambda!469906 lambda!469904))))

(declare-fun bs!1946272 () Bool)

(assert (= bs!1946272 (and b!7666789 b!7666737)))

(assert (=> bs!1946272 (not (= lambda!469906 lambda!469905))))

(assert (=> b!7666789 true))

(assert (=> b!7666789 true))

(declare-fun bs!1946273 () Bool)

(declare-fun b!7666790 () Bool)

(assert (= bs!1946273 (and b!7666790 b!7666559)))

(declare-fun lambda!469907 () Int)

(assert (=> bs!1946273 (not (= lambda!469907 lambda!469896))))

(declare-fun bs!1946274 () Bool)

(assert (= bs!1946274 (and b!7666790 b!7666736)))

(assert (=> bs!1946274 (not (= lambda!469907 lambda!469904))))

(declare-fun bs!1946275 () Bool)

(assert (= bs!1946275 (and b!7666790 b!7666737)))

(assert (=> bs!1946275 (= (and (= (_1!38020 lt!2662045) (_2!38020 lt!2662045)) (= (regOne!41484 (reg!20815 r!14126)) (regOne!41484 r!14126)) (= (regTwo!41484 (reg!20815 r!14126)) (regTwo!41484 r!14126))) (= lambda!469907 lambda!469905))))

(declare-fun bs!1946276 () Bool)

(assert (= bs!1946276 (and b!7666790 b!7666789)))

(assert (=> bs!1946276 (not (= lambda!469907 lambda!469906))))

(assert (=> b!7666790 true))

(assert (=> b!7666790 true))

(declare-fun b!7666786 () Bool)

(declare-fun e!4553635 () Bool)

(declare-fun e!4553630 () Bool)

(assert (=> b!7666786 (= e!4553635 e!4553630)))

(declare-fun c!1412046 () Bool)

(assert (=> b!7666786 (= c!1412046 (is-Star!20486 (reg!20815 r!14126)))))

(declare-fun b!7666787 () Bool)

(declare-fun e!4553632 () Bool)

(assert (=> b!7666787 (= e!4553632 (matchRSpec!4587 (regTwo!41485 (reg!20815 r!14126)) (_1!38020 lt!2662045)))))

(declare-fun b!7666788 () Bool)

(assert (=> b!7666788 (= e!4553635 e!4553632)))

(declare-fun res!3066445 () Bool)

(assert (=> b!7666788 (= res!3066445 (matchRSpec!4587 (regOne!41485 (reg!20815 r!14126)) (_1!38020 lt!2662045)))))

(assert (=> b!7666788 (=> res!3066445 e!4553632)))

(declare-fun e!4553636 () Bool)

(declare-fun call!705027 () Bool)

(assert (=> b!7666789 (= e!4553636 call!705027)))

(assert (=> b!7666790 (= e!4553630 call!705027)))

(declare-fun b!7666791 () Bool)

(declare-fun e!4553634 () Bool)

(declare-fun call!705026 () Bool)

(assert (=> b!7666791 (= e!4553634 call!705026)))

(declare-fun bm!705021 () Bool)

(assert (=> bm!705021 (= call!705027 (Exists!4611 (ite c!1412046 lambda!469906 lambda!469907)))))

(declare-fun bm!705022 () Bool)

(assert (=> bm!705022 (= call!705026 (isEmpty!41844 (_1!38020 lt!2662045)))))

(declare-fun b!7666792 () Bool)

(declare-fun e!4553631 () Bool)

(assert (=> b!7666792 (= e!4553634 e!4553631)))

(declare-fun res!3066446 () Bool)

(assert (=> b!7666792 (= res!3066446 (not (is-EmptyLang!20486 (reg!20815 r!14126))))))

(assert (=> b!7666792 (=> (not res!3066446) (not e!4553631))))

(declare-fun b!7666793 () Bool)

(declare-fun c!1412047 () Bool)

(assert (=> b!7666793 (= c!1412047 (is-Union!20486 (reg!20815 r!14126)))))

(declare-fun e!4553633 () Bool)

(assert (=> b!7666793 (= e!4553633 e!4553635)))

(declare-fun b!7666794 () Bool)

(declare-fun res!3066447 () Bool)

(assert (=> b!7666794 (=> res!3066447 e!4553636)))

(assert (=> b!7666794 (= res!3066447 call!705026)))

(assert (=> b!7666794 (= e!4553630 e!4553636)))

(declare-fun d!2328277 () Bool)

(declare-fun c!1412045 () Bool)

(assert (=> d!2328277 (= c!1412045 (is-EmptyExpr!20486 (reg!20815 r!14126)))))

(assert (=> d!2328277 (= (matchRSpec!4587 (reg!20815 r!14126) (_1!38020 lt!2662045)) e!4553634)))

(declare-fun b!7666795 () Bool)

(declare-fun c!1412048 () Bool)

(assert (=> b!7666795 (= c!1412048 (is-ElementMatch!20486 (reg!20815 r!14126)))))

(assert (=> b!7666795 (= e!4553631 e!4553633)))

(declare-fun b!7666796 () Bool)

(assert (=> b!7666796 (= e!4553633 (= (_1!38020 lt!2662045) (Cons!73213 (c!1412001 (reg!20815 r!14126)) Nil!73213)))))

(assert (= (and d!2328277 c!1412045) b!7666791))

(assert (= (and d!2328277 (not c!1412045)) b!7666792))

(assert (= (and b!7666792 res!3066446) b!7666795))

(assert (= (and b!7666795 c!1412048) b!7666796))

(assert (= (and b!7666795 (not c!1412048)) b!7666793))

(assert (= (and b!7666793 c!1412047) b!7666788))

(assert (= (and b!7666793 (not c!1412047)) b!7666786))

(assert (= (and b!7666788 (not res!3066445)) b!7666787))

(assert (= (and b!7666786 c!1412046) b!7666794))

(assert (= (and b!7666786 (not c!1412046)) b!7666790))

(assert (= (and b!7666794 (not res!3066447)) b!7666789))

(assert (= (or b!7666789 b!7666790) bm!705021))

(assert (= (or b!7666791 b!7666794) bm!705022))

(declare-fun m!8172464 () Bool)

(assert (=> b!7666787 m!8172464))

(declare-fun m!8172466 () Bool)

(assert (=> b!7666788 m!8172466))

(declare-fun m!8172468 () Bool)

(assert (=> bm!705021 m!8172468))

(assert (=> bm!705022 m!8172434))

(assert (=> b!7666552 d!2328277))

(declare-fun d!2328281 () Bool)

(declare-fun choose!59070 (Int) Bool)

(assert (=> d!2328281 (= (Exists!4611 lambda!469896) (choose!59070 lambda!469896))))

(declare-fun bs!1946277 () Bool)

(assert (= bs!1946277 d!2328281))

(declare-fun m!8172470 () Bool)

(assert (=> bs!1946277 m!8172470))

(assert (=> b!7666559 d!2328281))

(declare-fun d!2328283 () Bool)

(declare-fun isEmpty!41846 (Option!17511) Bool)

(assert (=> d!2328283 (= (isDefined!14127 lt!2662046) (not (isEmpty!41846 lt!2662046)))))

(declare-fun bs!1946278 () Bool)

(assert (= bs!1946278 d!2328283))

(declare-fun m!8172472 () Bool)

(assert (=> bs!1946278 m!8172472))

(assert (=> b!7666559 d!2328283))

(declare-fun b!7666843 () Bool)

(declare-fun e!4553664 () Option!17511)

(declare-fun e!4553665 () Option!17511)

(assert (=> b!7666843 (= e!4553664 e!4553665)))

(declare-fun c!1412059 () Bool)

(assert (=> b!7666843 (= c!1412059 (is-Nil!73213 s!9605))))

(declare-fun b!7666844 () Bool)

(declare-fun e!4553662 () Bool)

(declare-fun lt!2662093 () Option!17511)

(declare-fun ++!17711 (List!73337 List!73337) List!73337)

(assert (=> b!7666844 (= e!4553662 (= (++!17711 (_1!38020 (get!25941 lt!2662093)) (_2!38020 (get!25941 lt!2662093))) s!9605))))

(declare-fun b!7666845 () Bool)

(declare-fun res!3066474 () Bool)

(assert (=> b!7666845 (=> (not res!3066474) (not e!4553662))))

(assert (=> b!7666845 (= res!3066474 (matchR!9982 (reg!20815 r!14126) (_1!38020 (get!25941 lt!2662093))))))

(declare-fun b!7666846 () Bool)

(assert (=> b!7666846 (= e!4553664 (Some!17510 (tuple2!69435 Nil!73213 s!9605)))))

(declare-fun b!7666847 () Bool)

(declare-fun lt!2662094 () Unit!167984)

(declare-fun lt!2662092 () Unit!167984)

(assert (=> b!7666847 (= lt!2662094 lt!2662092)))

(assert (=> b!7666847 (= (++!17711 (++!17711 Nil!73213 (Cons!73213 (h!79661 s!9605) Nil!73213)) (t!388072 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3269 (List!73337 C!41298 List!73337 List!73337) Unit!167984)

(assert (=> b!7666847 (= lt!2662092 (lemmaMoveElementToOtherListKeepsConcatEq!3269 Nil!73213 (h!79661 s!9605) (t!388072 s!9605) s!9605))))

(assert (=> b!7666847 (= e!4553665 (findConcatSeparation!3541 (reg!20815 r!14126) r!14126 (++!17711 Nil!73213 (Cons!73213 (h!79661 s!9605) Nil!73213)) (t!388072 s!9605) s!9605))))

(declare-fun b!7666848 () Bool)

(declare-fun e!4553663 () Bool)

(assert (=> b!7666848 (= e!4553663 (not (isDefined!14127 lt!2662093)))))

(declare-fun b!7666849 () Bool)

(declare-fun res!3066478 () Bool)

(assert (=> b!7666849 (=> (not res!3066478) (not e!4553662))))

(assert (=> b!7666849 (= res!3066478 (matchR!9982 r!14126 (_2!38020 (get!25941 lt!2662093))))))

(declare-fun b!7666850 () Bool)

(declare-fun e!4553661 () Bool)

(assert (=> b!7666850 (= e!4553661 (matchR!9982 r!14126 s!9605))))

(declare-fun d!2328285 () Bool)

(assert (=> d!2328285 e!4553663))

(declare-fun res!3066477 () Bool)

(assert (=> d!2328285 (=> res!3066477 e!4553663)))

(assert (=> d!2328285 (= res!3066477 e!4553662)))

(declare-fun res!3066476 () Bool)

(assert (=> d!2328285 (=> (not res!3066476) (not e!4553662))))

(assert (=> d!2328285 (= res!3066476 (isDefined!14127 lt!2662093))))

(assert (=> d!2328285 (= lt!2662093 e!4553664)))

(declare-fun c!1412060 () Bool)

(assert (=> d!2328285 (= c!1412060 e!4553661)))

(declare-fun res!3066475 () Bool)

(assert (=> d!2328285 (=> (not res!3066475) (not e!4553661))))

(assert (=> d!2328285 (= res!3066475 (matchR!9982 (reg!20815 r!14126) Nil!73213))))

(assert (=> d!2328285 (validRegex!10904 (reg!20815 r!14126))))

(assert (=> d!2328285 (= (findConcatSeparation!3541 (reg!20815 r!14126) r!14126 Nil!73213 s!9605 s!9605) lt!2662093)))

(declare-fun b!7666851 () Bool)

(assert (=> b!7666851 (= e!4553665 None!17510)))

(assert (= (and d!2328285 res!3066475) b!7666850))

(assert (= (and d!2328285 c!1412060) b!7666846))

(assert (= (and d!2328285 (not c!1412060)) b!7666843))

(assert (= (and b!7666843 c!1412059) b!7666851))

(assert (= (and b!7666843 (not c!1412059)) b!7666847))

(assert (= (and d!2328285 res!3066476) b!7666845))

(assert (= (and b!7666845 res!3066474) b!7666849))

(assert (= (and b!7666849 res!3066478) b!7666844))

(assert (= (and d!2328285 (not res!3066477)) b!7666848))

(declare-fun m!8172502 () Bool)

(assert (=> b!7666849 m!8172502))

(declare-fun m!8172504 () Bool)

(assert (=> b!7666849 m!8172504))

(assert (=> b!7666850 m!8172356))

(declare-fun m!8172506 () Bool)

(assert (=> b!7666848 m!8172506))

(declare-fun m!8172508 () Bool)

(assert (=> b!7666847 m!8172508))

(assert (=> b!7666847 m!8172508))

(declare-fun m!8172510 () Bool)

(assert (=> b!7666847 m!8172510))

(declare-fun m!8172512 () Bool)

(assert (=> b!7666847 m!8172512))

(assert (=> b!7666847 m!8172508))

(declare-fun m!8172514 () Bool)

(assert (=> b!7666847 m!8172514))

(assert (=> b!7666844 m!8172502))

(declare-fun m!8172516 () Bool)

(assert (=> b!7666844 m!8172516))

(assert (=> b!7666845 m!8172502))

(declare-fun m!8172518 () Bool)

(assert (=> b!7666845 m!8172518))

(assert (=> d!2328285 m!8172506))

(declare-fun m!8172520 () Bool)

(assert (=> d!2328285 m!8172520))

(assert (=> d!2328285 m!8172350))

(assert (=> b!7666559 d!2328285))

(declare-fun bs!1946280 () Bool)

(declare-fun d!2328295 () Bool)

(assert (= bs!1946280 (and d!2328295 b!7666789)))

(declare-fun lambda!469910 () Int)

(assert (=> bs!1946280 (not (= lambda!469910 lambda!469906))))

(declare-fun bs!1946281 () Bool)

(assert (= bs!1946281 (and d!2328295 b!7666736)))

(assert (=> bs!1946281 (not (= lambda!469910 lambda!469904))))

(declare-fun bs!1946282 () Bool)

(assert (= bs!1946282 (and d!2328295 b!7666790)))

(assert (=> bs!1946282 (not (= lambda!469910 lambda!469907))))

(declare-fun bs!1946283 () Bool)

(assert (= bs!1946283 (and d!2328295 b!7666559)))

(assert (=> bs!1946283 (= lambda!469910 lambda!469896)))

(declare-fun bs!1946284 () Bool)

(assert (= bs!1946284 (and d!2328295 b!7666737)))

(assert (=> bs!1946284 (not (= lambda!469910 lambda!469905))))

(assert (=> d!2328295 true))

(assert (=> d!2328295 true))

(assert (=> d!2328295 true))

(assert (=> d!2328295 (= (isDefined!14127 (findConcatSeparation!3541 (reg!20815 r!14126) r!14126 Nil!73213 s!9605 s!9605)) (Exists!4611 lambda!469910))))

(declare-fun lt!2662097 () Unit!167984)

(declare-fun choose!59071 (Regex!20486 Regex!20486 List!73337) Unit!167984)

(assert (=> d!2328295 (= lt!2662097 (choose!59071 (reg!20815 r!14126) r!14126 s!9605))))

(assert (=> d!2328295 (validRegex!10904 (reg!20815 r!14126))))

(assert (=> d!2328295 (= (lemmaFindConcatSeparationEquivalentToExists!3299 (reg!20815 r!14126) r!14126 s!9605) lt!2662097)))

(declare-fun bs!1946285 () Bool)

(assert (= bs!1946285 d!2328295))

(declare-fun m!8172522 () Bool)

(assert (=> bs!1946285 m!8172522))

(assert (=> bs!1946285 m!8172346))

(declare-fun m!8172524 () Bool)

(assert (=> bs!1946285 m!8172524))

(declare-fun m!8172526 () Bool)

(assert (=> bs!1946285 m!8172526))

(assert (=> bs!1946285 m!8172350))

(assert (=> bs!1946285 m!8172346))

(assert (=> b!7666559 d!2328295))

(declare-fun b!7666856 () Bool)

(declare-fun e!4553672 () Bool)

(declare-fun call!705031 () Bool)

(assert (=> b!7666856 (= e!4553672 call!705031)))

(declare-fun bm!705025 () Bool)

(declare-fun call!705032 () Bool)

(assert (=> bm!705025 (= call!705031 call!705032)))

(declare-fun b!7666857 () Bool)

(declare-fun res!3066486 () Bool)

(declare-fun e!4553671 () Bool)

(assert (=> b!7666857 (=> (not res!3066486) (not e!4553671))))

(declare-fun call!705030 () Bool)

(assert (=> b!7666857 (= res!3066486 call!705030)))

(declare-fun e!4553674 () Bool)

(assert (=> b!7666857 (= e!4553674 e!4553671)))

(declare-fun b!7666858 () Bool)

(declare-fun e!4553669 () Bool)

(assert (=> b!7666858 (= e!4553669 e!4553672)))

(declare-fun res!3066484 () Bool)

(assert (=> b!7666858 (=> (not res!3066484) (not e!4553672))))

(assert (=> b!7666858 (= res!3066484 call!705030)))

(declare-fun b!7666859 () Bool)

(assert (=> b!7666859 (= e!4553671 call!705031)))

(declare-fun b!7666860 () Bool)

(declare-fun e!4553670 () Bool)

(assert (=> b!7666860 (= e!4553670 e!4553674)))

(declare-fun c!1412061 () Bool)

(assert (=> b!7666860 (= c!1412061 (is-Union!20486 r!14126))))

(declare-fun bm!705026 () Bool)

(declare-fun c!1412062 () Bool)

(assert (=> bm!705026 (= call!705032 (validRegex!10904 (ite c!1412062 (reg!20815 r!14126) (ite c!1412061 (regTwo!41485 r!14126) (regTwo!41484 r!14126)))))))

(declare-fun b!7666861 () Bool)

(declare-fun res!3066485 () Bool)

(assert (=> b!7666861 (=> res!3066485 e!4553669)))

(assert (=> b!7666861 (= res!3066485 (not (is-Concat!29331 r!14126)))))

(assert (=> b!7666861 (= e!4553674 e!4553669)))

(declare-fun b!7666862 () Bool)

(declare-fun e!4553668 () Bool)

(assert (=> b!7666862 (= e!4553670 e!4553668)))

(declare-fun res!3066487 () Bool)

(assert (=> b!7666862 (= res!3066487 (not (nullable!8983 (reg!20815 r!14126))))))

(assert (=> b!7666862 (=> (not res!3066487) (not e!4553668))))

(declare-fun b!7666863 () Bool)

(declare-fun e!4553673 () Bool)

(assert (=> b!7666863 (= e!4553673 e!4553670)))

(assert (=> b!7666863 (= c!1412062 (is-Star!20486 r!14126))))

(declare-fun b!7666864 () Bool)

(assert (=> b!7666864 (= e!4553668 call!705032)))

(declare-fun bm!705027 () Bool)

(assert (=> bm!705027 (= call!705030 (validRegex!10904 (ite c!1412061 (regOne!41485 r!14126) (regOne!41484 r!14126))))))

(declare-fun d!2328297 () Bool)

(declare-fun res!3066483 () Bool)

(assert (=> d!2328297 (=> res!3066483 e!4553673)))

(assert (=> d!2328297 (= res!3066483 (is-ElementMatch!20486 r!14126))))

(assert (=> d!2328297 (= (validRegex!10904 r!14126) e!4553673)))

(assert (= (and d!2328297 (not res!3066483)) b!7666863))

(assert (= (and b!7666863 c!1412062) b!7666862))

(assert (= (and b!7666863 (not c!1412062)) b!7666860))

(assert (= (and b!7666862 res!3066487) b!7666864))

(assert (= (and b!7666860 c!1412061) b!7666857))

(assert (= (and b!7666860 (not c!1412061)) b!7666861))

(assert (= (and b!7666857 res!3066486) b!7666859))

(assert (= (and b!7666861 (not res!3066485)) b!7666858))

(assert (= (and b!7666858 res!3066484) b!7666856))

(assert (= (or b!7666857 b!7666858) bm!705027))

(assert (= (or b!7666859 b!7666856) bm!705025))

(assert (= (or b!7666864 bm!705025) bm!705026))

(declare-fun m!8172528 () Bool)

(assert (=> bm!705026 m!8172528))

(assert (=> b!7666862 m!8172436))

(declare-fun m!8172530 () Bool)

(assert (=> bm!705027 m!8172530))

(assert (=> start!736174 d!2328297))

(declare-fun d!2328299 () Bool)

(assert (=> d!2328299 (= (isEmpty!41844 s!9605) (is-Nil!73213 s!9605))))

(assert (=> b!7666554 d!2328299))

(declare-fun b!7666877 () Bool)

(declare-fun e!4553677 () Bool)

(assert (=> b!7666877 (= e!4553677 tp_is_empty!51327)))

(declare-fun b!7666879 () Bool)

(declare-fun tp!2243566 () Bool)

(assert (=> b!7666879 (= e!4553677 tp!2243566)))

(declare-fun b!7666880 () Bool)

(declare-fun tp!2243565 () Bool)

(declare-fun tp!2243564 () Bool)

(assert (=> b!7666880 (= e!4553677 (and tp!2243565 tp!2243564))))

(declare-fun b!7666878 () Bool)

(declare-fun tp!2243568 () Bool)

(declare-fun tp!2243567 () Bool)

(assert (=> b!7666878 (= e!4553677 (and tp!2243568 tp!2243567))))

(assert (=> b!7666553 (= tp!2243535 e!4553677)))

(assert (= (and b!7666553 (is-ElementMatch!20486 (reg!20815 r!14126))) b!7666877))

(assert (= (and b!7666553 (is-Concat!29331 (reg!20815 r!14126))) b!7666878))

(assert (= (and b!7666553 (is-Star!20486 (reg!20815 r!14126))) b!7666879))

(assert (= (and b!7666553 (is-Union!20486 (reg!20815 r!14126))) b!7666880))

(declare-fun b!7666887 () Bool)

(declare-fun e!4553682 () Bool)

(declare-fun tp!2243571 () Bool)

(assert (=> b!7666887 (= e!4553682 (and tp_is_empty!51327 tp!2243571))))

(assert (=> b!7666558 (= tp!2243534 e!4553682)))

(assert (= (and b!7666558 (is-Cons!73213 (t!388072 s!9605))) b!7666887))

(declare-fun b!7666888 () Bool)

(declare-fun e!4553683 () Bool)

(assert (=> b!7666888 (= e!4553683 tp_is_empty!51327)))

(declare-fun b!7666890 () Bool)

(declare-fun tp!2243574 () Bool)

(assert (=> b!7666890 (= e!4553683 tp!2243574)))

(declare-fun b!7666891 () Bool)

(declare-fun tp!2243573 () Bool)

(declare-fun tp!2243572 () Bool)

(assert (=> b!7666891 (= e!4553683 (and tp!2243573 tp!2243572))))

(declare-fun b!7666889 () Bool)

(declare-fun tp!2243576 () Bool)

(declare-fun tp!2243575 () Bool)

(assert (=> b!7666889 (= e!4553683 (and tp!2243576 tp!2243575))))

(assert (=> b!7666555 (= tp!2243532 e!4553683)))

(assert (= (and b!7666555 (is-ElementMatch!20486 (regOne!41485 r!14126))) b!7666888))

(assert (= (and b!7666555 (is-Concat!29331 (regOne!41485 r!14126))) b!7666889))

(assert (= (and b!7666555 (is-Star!20486 (regOne!41485 r!14126))) b!7666890))

(assert (= (and b!7666555 (is-Union!20486 (regOne!41485 r!14126))) b!7666891))

(declare-fun b!7666894 () Bool)

(declare-fun e!4553686 () Bool)

(assert (=> b!7666894 (= e!4553686 tp_is_empty!51327)))

(declare-fun b!7666896 () Bool)

(declare-fun tp!2243579 () Bool)

(assert (=> b!7666896 (= e!4553686 tp!2243579)))

(declare-fun b!7666897 () Bool)

(declare-fun tp!2243578 () Bool)

(declare-fun tp!2243577 () Bool)

(assert (=> b!7666897 (= e!4553686 (and tp!2243578 tp!2243577))))

(declare-fun b!7666895 () Bool)

(declare-fun tp!2243581 () Bool)

(declare-fun tp!2243580 () Bool)

(assert (=> b!7666895 (= e!4553686 (and tp!2243581 tp!2243580))))

(assert (=> b!7666555 (= tp!2243530 e!4553686)))

(assert (= (and b!7666555 (is-ElementMatch!20486 (regTwo!41485 r!14126))) b!7666894))

(assert (= (and b!7666555 (is-Concat!29331 (regTwo!41485 r!14126))) b!7666895))

(assert (= (and b!7666555 (is-Star!20486 (regTwo!41485 r!14126))) b!7666896))

(assert (= (and b!7666555 (is-Union!20486 (regTwo!41485 r!14126))) b!7666897))

(declare-fun b!7666902 () Bool)

(declare-fun e!4553689 () Bool)

(assert (=> b!7666902 (= e!4553689 tp_is_empty!51327)))

(declare-fun b!7666904 () Bool)

(declare-fun tp!2243584 () Bool)

(assert (=> b!7666904 (= e!4553689 tp!2243584)))

(declare-fun b!7666905 () Bool)

(declare-fun tp!2243583 () Bool)

(declare-fun tp!2243582 () Bool)

(assert (=> b!7666905 (= e!4553689 (and tp!2243583 tp!2243582))))

(declare-fun b!7666903 () Bool)

(declare-fun tp!2243586 () Bool)

(declare-fun tp!2243585 () Bool)

(assert (=> b!7666903 (= e!4553689 (and tp!2243586 tp!2243585))))

(assert (=> b!7666560 (= tp!2243533 e!4553689)))

(assert (= (and b!7666560 (is-ElementMatch!20486 (regOne!41484 r!14126))) b!7666902))

(assert (= (and b!7666560 (is-Concat!29331 (regOne!41484 r!14126))) b!7666903))

(assert (= (and b!7666560 (is-Star!20486 (regOne!41484 r!14126))) b!7666904))

(assert (= (and b!7666560 (is-Union!20486 (regOne!41484 r!14126))) b!7666905))

(declare-fun b!7666910 () Bool)

(declare-fun e!4553692 () Bool)

(assert (=> b!7666910 (= e!4553692 tp_is_empty!51327)))

(declare-fun b!7666912 () Bool)

(declare-fun tp!2243589 () Bool)

(assert (=> b!7666912 (= e!4553692 tp!2243589)))

(declare-fun b!7666913 () Bool)

(declare-fun tp!2243588 () Bool)

(declare-fun tp!2243587 () Bool)

(assert (=> b!7666913 (= e!4553692 (and tp!2243588 tp!2243587))))

(declare-fun b!7666911 () Bool)

(declare-fun tp!2243591 () Bool)

(declare-fun tp!2243590 () Bool)

(assert (=> b!7666911 (= e!4553692 (and tp!2243591 tp!2243590))))

(assert (=> b!7666560 (= tp!2243531 e!4553692)))

(assert (= (and b!7666560 (is-ElementMatch!20486 (regTwo!41484 r!14126))) b!7666910))

(assert (= (and b!7666560 (is-Concat!29331 (regTwo!41484 r!14126))) b!7666911))

(assert (= (and b!7666560 (is-Star!20486 (regTwo!41484 r!14126))) b!7666912))

(assert (= (and b!7666560 (is-Union!20486 (regTwo!41484 r!14126))) b!7666913))

(push 1)

(assert (not b!7666845))

(assert (not b!7666748))

(assert (not b!7666849))

(assert (not bm!705005))

(assert (not d!2328281))

(assert (not b!7666663))

(assert (not bm!705026))

(assert (not bm!705027))

(assert (not b!7666668))

(assert (not bm!705022))

(assert (not b!7666880))

(assert (not b!7666912))

(assert (not b!7666787))

(assert (not b!7666768))

(assert (not b!7666788))

(assert (not b!7666734))

(assert (not b!7666766))

(assert (not bm!705017))

(assert (not bm!705016))

(assert (not b!7666752))

(assert (not b!7666667))

(assert (not b!7666753))

(assert (not b!7666757))

(assert (not d!2328269))

(assert (not b!7666659))

(assert (not d!2328271))

(assert (not d!2328283))

(assert (not d!2328285))

(assert (not b!7666889))

(assert (not b!7666767))

(assert (not b!7666669))

(assert (not bm!705021))

(assert (not b!7666897))

(assert (not d!2328295))

(assert (not b!7666628))

(assert (not b!7666758))

(assert (not b!7666905))

(assert (not bm!705006))

(assert (not b!7666735))

(assert (not b!7666862))

(assert (not b!7666887))

(assert (not b!7666848))

(assert (not b!7666744))

(assert (not b!7666896))

(assert (not b!7666847))

(assert (not b!7666878))

(assert (not bm!705019))

(assert (not b!7666754))

(assert (not bm!705009))

(assert (not d!2328275))

(assert (not b!7666903))

(assert (not b!7666762))

(assert (not b!7666890))

(assert (not b!7666879))

(assert (not b!7666895))

(assert (not b!7666913))

(assert (not d!2328261))

(assert (not b!7666844))

(assert (not d!2328265))

(assert (not b!7666850))

(assert tp_is_empty!51327)

(assert (not b!7666771))

(assert (not b!7666891))

(assert (not bm!705018))

(assert (not b!7666911))

(assert (not b!7666672))

(assert (not b!7666904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

