; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!738442 () Bool)

(assert start!738442)

(declare-fun b!7744418 () Bool)

(assert (=> b!7744418 true))

(assert (=> b!7744418 true))

(declare-fun bs!1965331 () Bool)

(declare-fun b!7744426 () Bool)

(assert (= bs!1965331 (and b!7744426 b!7744418)))

(declare-fun lambda!471595 () Int)

(declare-fun lambda!471594 () Int)

(assert (=> bs!1965331 (not (= lambda!471595 lambda!471594))))

(assert (=> b!7744426 true))

(assert (=> b!7744426 true))

(declare-fun e!4591517 () Bool)

(declare-fun e!4591516 () Bool)

(assert (=> b!7744418 (= e!4591517 (not e!4591516))))

(declare-fun res!3087537 () Bool)

(assert (=> b!7744418 (=> res!3087537 e!4591516)))

(declare-datatypes ((C!41490 0))(
  ( (C!41491 (val!31185 Int)) )
))
(declare-datatypes ((Regex!20582 0))(
  ( (ElementMatch!20582 (c!1428464 C!41490)) (Concat!29427 (regOne!41676 Regex!20582) (regTwo!41676 Regex!20582)) (EmptyExpr!20582) (Star!20582 (reg!20911 Regex!20582)) (EmptyLang!20582) (Union!20582 (regOne!41677 Regex!20582) (regTwo!41677 Regex!20582)) )
))
(declare-fun r!14126 () Regex!20582)

(declare-datatypes ((List!73429 0))(
  ( (Nil!73305) (Cons!73305 (h!79753 C!41490) (t!388164 List!73429)) )
))
(declare-fun s!9605 () List!73429)

(declare-fun matchR!10074 (Regex!20582 List!73429) Bool)

(assert (=> b!7744418 (= res!3087537 (matchR!10074 r!14126 s!9605))))

(declare-fun lt!2668329 () Bool)

(declare-fun Exists!4703 (Int) Bool)

(assert (=> b!7744418 (= lt!2668329 (Exists!4703 lambda!471594))))

(declare-datatypes ((tuple2!69618 0))(
  ( (tuple2!69619 (_1!38112 List!73429) (_2!38112 List!73429)) )
))
(declare-datatypes ((Option!17603 0))(
  ( (None!17602) (Some!17602 (v!54737 tuple2!69618)) )
))
(declare-fun lt!2668324 () Option!17603)

(declare-fun isDefined!14219 (Option!17603) Bool)

(assert (=> b!7744418 (= lt!2668329 (isDefined!14219 lt!2668324))))

(declare-fun findConcatSeparation!3633 (Regex!20582 Regex!20582 List!73429 List!73429 List!73429) Option!17603)

(assert (=> b!7744418 (= lt!2668324 (findConcatSeparation!3633 (regOne!41676 r!14126) (regTwo!41676 r!14126) Nil!73305 s!9605 s!9605))))

(declare-datatypes ((Unit!168252 0))(
  ( (Unit!168253) )
))
(declare-fun lt!2668328 () Unit!168252)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3391 (Regex!20582 Regex!20582 List!73429) Unit!168252)

(assert (=> b!7744418 (= lt!2668328 (lemmaFindConcatSeparationEquivalentToExists!3391 (regOne!41676 r!14126) (regTwo!41676 r!14126) s!9605))))

(declare-fun b!7744419 () Bool)

(declare-fun e!4591515 () Bool)

(assert (=> b!7744419 (= e!4591515 false)))

(declare-fun b!7744420 () Bool)

(declare-fun e!4591518 () Unit!168252)

(declare-fun Unit!168254 () Unit!168252)

(assert (=> b!7744420 (= e!4591518 Unit!168254)))

(declare-fun res!3087538 () Bool)

(assert (=> start!738442 (=> (not res!3087538) (not e!4591517))))

(declare-fun validRegex!11000 (Regex!20582) Bool)

(assert (=> start!738442 (= res!3087538 (validRegex!11000 r!14126))))

(assert (=> start!738442 e!4591517))

(declare-fun e!4591514 () Bool)

(assert (=> start!738442 e!4591514))

(declare-fun e!4591519 () Bool)

(assert (=> start!738442 e!4591519))

(declare-fun b!7744421 () Bool)

(declare-fun Unit!168255 () Unit!168252)

(assert (=> b!7744421 (= e!4591518 Unit!168255)))

(declare-fun lt!2668325 () tuple2!69618)

(declare-fun get!26064 (Option!17603) tuple2!69618)

(assert (=> b!7744421 (= lt!2668325 (get!26064 lt!2668324))))

(declare-fun lt!2668323 () Unit!168252)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!207 (Regex!20582 Regex!20582 List!73429 List!73429 List!73429) Unit!168252)

(assert (=> b!7744421 (= lt!2668323 (lemmaFindSeparationIsDefinedThenConcatMatches!207 (regOne!41676 r!14126) (regTwo!41676 r!14126) (_1!38112 lt!2668325) (_2!38112 lt!2668325) s!9605))))

(declare-fun res!3087535 () Bool)

(declare-fun ++!17781 (List!73429 List!73429) List!73429)

(assert (=> b!7744421 (= res!3087535 (matchR!10074 r!14126 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325))))))

(assert (=> b!7744421 (=> (not res!3087535) (not e!4591515))))

(assert (=> b!7744421 e!4591515))

(declare-fun b!7744422 () Bool)

(declare-fun tp_is_empty!51519 () Bool)

(declare-fun tp!2272642 () Bool)

(assert (=> b!7744422 (= e!4591519 (and tp_is_empty!51519 tp!2272642))))

(declare-fun b!7744423 () Bool)

(declare-fun res!3087533 () Bool)

(assert (=> b!7744423 (=> (not res!3087533) (not e!4591517))))

(assert (=> b!7744423 (= res!3087533 (and (not (is-EmptyExpr!20582 r!14126)) (not (is-EmptyLang!20582 r!14126)) (not (is-ElementMatch!20582 r!14126)) (not (is-Union!20582 r!14126)) (not (is-Star!20582 r!14126))))))

(declare-fun b!7744424 () Bool)

(declare-fun tp!2272645 () Bool)

(declare-fun tp!2272644 () Bool)

(assert (=> b!7744424 (= e!4591514 (and tp!2272645 tp!2272644))))

(declare-fun b!7744425 () Bool)

(declare-fun tp!2272647 () Bool)

(declare-fun tp!2272643 () Bool)

(assert (=> b!7744425 (= e!4591514 (and tp!2272647 tp!2272643))))

(declare-fun res!3087536 () Bool)

(declare-fun e!4591520 () Bool)

(assert (=> b!7744426 (=> res!3087536 e!4591520)))

(assert (=> b!7744426 (= res!3087536 (not (Exists!4703 lambda!471595)))))

(declare-fun b!7744427 () Bool)

(declare-fun tp!2272646 () Bool)

(assert (=> b!7744427 (= e!4591514 tp!2272646)))

(declare-fun b!7744428 () Bool)

(assert (=> b!7744428 (= e!4591520 (validRegex!11000 (regOne!41676 r!14126)))))

(declare-fun lt!2668322 () tuple2!69618)

(declare-fun matchRSpec!4647 (Regex!20582 List!73429) Bool)

(assert (=> b!7744428 (= (matchR!10074 (regTwo!41676 r!14126) (_2!38112 lt!2668322)) (matchRSpec!4647 (regTwo!41676 r!14126) (_2!38112 lt!2668322)))))

(declare-fun lt!2668321 () Unit!168252)

(declare-fun mainMatchTheorem!4617 (Regex!20582 List!73429) Unit!168252)

(assert (=> b!7744428 (= lt!2668321 (mainMatchTheorem!4617 (regTwo!41676 r!14126) (_2!38112 lt!2668322)))))

(assert (=> b!7744428 (= (matchR!10074 (regOne!41676 r!14126) (_1!38112 lt!2668322)) (matchRSpec!4647 (regOne!41676 r!14126) (_1!38112 lt!2668322)))))

(declare-fun lt!2668327 () Unit!168252)

(assert (=> b!7744428 (= lt!2668327 (mainMatchTheorem!4617 (regOne!41676 r!14126) (_1!38112 lt!2668322)))))

(declare-fun pickWitness!539 (Int) tuple2!69618)

(assert (=> b!7744428 (= lt!2668322 (pickWitness!539 lambda!471595))))

(declare-fun b!7744429 () Bool)

(assert (=> b!7744429 (= e!4591514 tp_is_empty!51519)))

(declare-fun b!7744430 () Bool)

(assert (=> b!7744430 (= e!4591516 e!4591520)))

(declare-fun res!3087534 () Bool)

(assert (=> b!7744430 (=> res!3087534 e!4591520)))

(assert (=> b!7744430 (= res!3087534 (Exists!4703 lambda!471594))))

(declare-fun lt!2668326 () Unit!168252)

(assert (=> b!7744430 (= lt!2668326 e!4591518)))

(declare-fun c!1428463 () Bool)

(assert (=> b!7744430 (= c!1428463 lt!2668329)))

(assert (= (and start!738442 res!3087538) b!7744423))

(assert (= (and b!7744423 res!3087533) b!7744418))

(assert (= (and b!7744418 (not res!3087537)) b!7744430))

(assert (= (and b!7744430 c!1428463) b!7744421))

(assert (= (and b!7744430 (not c!1428463)) b!7744420))

(assert (= (and b!7744421 res!3087535) b!7744419))

(assert (= (and b!7744430 (not res!3087534)) b!7744426))

(assert (= (and b!7744426 (not res!3087536)) b!7744428))

(assert (= (and start!738442 (is-ElementMatch!20582 r!14126)) b!7744429))

(assert (= (and start!738442 (is-Concat!29427 r!14126)) b!7744425))

(assert (= (and start!738442 (is-Star!20582 r!14126)) b!7744427))

(assert (= (and start!738442 (is-Union!20582 r!14126)) b!7744424))

(assert (= (and start!738442 (is-Cons!73305 s!9605)) b!7744422))

(declare-fun m!8213010 () Bool)

(assert (=> b!7744418 m!8213010))

(declare-fun m!8213012 () Bool)

(assert (=> b!7744418 m!8213012))

(declare-fun m!8213014 () Bool)

(assert (=> b!7744418 m!8213014))

(declare-fun m!8213016 () Bool)

(assert (=> b!7744418 m!8213016))

(declare-fun m!8213018 () Bool)

(assert (=> b!7744418 m!8213018))

(declare-fun m!8213020 () Bool)

(assert (=> b!7744421 m!8213020))

(declare-fun m!8213022 () Bool)

(assert (=> b!7744421 m!8213022))

(declare-fun m!8213024 () Bool)

(assert (=> b!7744421 m!8213024))

(assert (=> b!7744421 m!8213024))

(declare-fun m!8213026 () Bool)

(assert (=> b!7744421 m!8213026))

(assert (=> b!7744430 m!8213018))

(declare-fun m!8213028 () Bool)

(assert (=> start!738442 m!8213028))

(declare-fun m!8213030 () Bool)

(assert (=> b!7744426 m!8213030))

(declare-fun m!8213032 () Bool)

(assert (=> b!7744428 m!8213032))

(declare-fun m!8213034 () Bool)

(assert (=> b!7744428 m!8213034))

(declare-fun m!8213036 () Bool)

(assert (=> b!7744428 m!8213036))

(declare-fun m!8213038 () Bool)

(assert (=> b!7744428 m!8213038))

(declare-fun m!8213040 () Bool)

(assert (=> b!7744428 m!8213040))

(declare-fun m!8213042 () Bool)

(assert (=> b!7744428 m!8213042))

(declare-fun m!8213044 () Bool)

(assert (=> b!7744428 m!8213044))

(declare-fun m!8213046 () Bool)

(assert (=> b!7744428 m!8213046))

(push 1)

(assert (not start!738442))

(assert (not b!7744430))

(assert (not b!7744428))

(assert (not b!7744421))

(assert (not b!7744426))

(assert (not b!7744427))

(assert (not b!7744425))

(assert tp_is_empty!51519)

(assert (not b!7744424))

(assert (not b!7744418))

(assert (not b!7744422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2341947 () Bool)

(declare-fun choose!59365 (Int) Bool)

(assert (=> d!2341947 (= (Exists!4703 lambda!471594) (choose!59365 lambda!471594))))

(declare-fun bs!1965333 () Bool)

(assert (= bs!1965333 d!2341947))

(declare-fun m!8213086 () Bool)

(assert (=> bs!1965333 m!8213086))

(assert (=> b!7744430 d!2341947))

(declare-fun d!2341949 () Bool)

(assert (=> d!2341949 (= (Exists!4703 lambda!471595) (choose!59365 lambda!471595))))

(declare-fun bs!1965334 () Bool)

(assert (= bs!1965334 d!2341949))

(declare-fun m!8213088 () Bool)

(assert (=> bs!1965334 m!8213088))

(assert (=> b!7744426 d!2341949))

(declare-fun d!2341951 () Bool)

(assert (=> d!2341951 (= (get!26064 lt!2668324) (v!54737 lt!2668324))))

(assert (=> b!7744421 d!2341951))

(declare-fun d!2341953 () Bool)

(assert (=> d!2341953 (matchR!10074 (Concat!29427 (regOne!41676 r!14126) (regTwo!41676 r!14126)) (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325)))))

(declare-fun lt!2668359 () Unit!168252)

(declare-fun choose!59366 (Regex!20582 Regex!20582 List!73429 List!73429 List!73429) Unit!168252)

(assert (=> d!2341953 (= lt!2668359 (choose!59366 (regOne!41676 r!14126) (regTwo!41676 r!14126) (_1!38112 lt!2668325) (_2!38112 lt!2668325) s!9605))))

(assert (=> d!2341953 (validRegex!11000 (regOne!41676 r!14126))))

(assert (=> d!2341953 (= (lemmaFindSeparationIsDefinedThenConcatMatches!207 (regOne!41676 r!14126) (regTwo!41676 r!14126) (_1!38112 lt!2668325) (_2!38112 lt!2668325) s!9605) lt!2668359)))

(declare-fun bs!1965335 () Bool)

(assert (= bs!1965335 d!2341953))

(assert (=> bs!1965335 m!8213024))

(assert (=> bs!1965335 m!8213024))

(declare-fun m!8213090 () Bool)

(assert (=> bs!1965335 m!8213090))

(declare-fun m!8213092 () Bool)

(assert (=> bs!1965335 m!8213092))

(assert (=> bs!1965335 m!8213042))

(assert (=> b!7744421 d!2341953))

(declare-fun b!7744522 () Bool)

(declare-fun e!4591566 () Bool)

(declare-fun e!4591565 () Bool)

(assert (=> b!7744522 (= e!4591566 e!4591565)))

(declare-fun res!3087590 () Bool)

(assert (=> b!7744522 (=> res!3087590 e!4591565)))

(declare-fun call!717773 () Bool)

(assert (=> b!7744522 (= res!3087590 call!717773)))

(declare-fun b!7744523 () Bool)

(declare-fun e!4591567 () Bool)

(declare-fun lt!2668362 () Bool)

(assert (=> b!7744523 (= e!4591567 (= lt!2668362 call!717773))))

(declare-fun b!7744524 () Bool)

(declare-fun e!4591564 () Bool)

(declare-fun nullable!9055 (Regex!20582) Bool)

(assert (=> b!7744524 (= e!4591564 (nullable!9055 r!14126))))

(declare-fun bm!717768 () Bool)

(declare-fun isEmpty!41992 (List!73429) Bool)

(assert (=> bm!717768 (= call!717773 (isEmpty!41992 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325))))))

(declare-fun b!7744525 () Bool)

(declare-fun res!3087594 () Bool)

(declare-fun e!4591568 () Bool)

(assert (=> b!7744525 (=> res!3087594 e!4591568)))

(declare-fun e!4591569 () Bool)

(assert (=> b!7744525 (= res!3087594 e!4591569)))

(declare-fun res!3087596 () Bool)

(assert (=> b!7744525 (=> (not res!3087596) (not e!4591569))))

(assert (=> b!7744525 (= res!3087596 lt!2668362)))

(declare-fun b!7744526 () Bool)

(declare-fun head!15814 (List!73429) C!41490)

(assert (=> b!7744526 (= e!4591565 (not (= (head!15814 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325))) (c!1428464 r!14126))))))

(declare-fun b!7744527 () Bool)

(declare-fun e!4591570 () Bool)

(assert (=> b!7744527 (= e!4591570 (not lt!2668362))))

(declare-fun b!7744529 () Bool)

(declare-fun res!3087595 () Bool)

(assert (=> b!7744529 (=> res!3087595 e!4591568)))

(assert (=> b!7744529 (= res!3087595 (not (is-ElementMatch!20582 r!14126)))))

(assert (=> b!7744529 (= e!4591570 e!4591568)))

(declare-fun b!7744530 () Bool)

(declare-fun res!3087593 () Bool)

(assert (=> b!7744530 (=> (not res!3087593) (not e!4591569))))

(assert (=> b!7744530 (= res!3087593 (not call!717773))))

(declare-fun b!7744531 () Bool)

(assert (=> b!7744531 (= e!4591568 e!4591566)))

(declare-fun res!3087591 () Bool)

(assert (=> b!7744531 (=> (not res!3087591) (not e!4591566))))

(assert (=> b!7744531 (= res!3087591 (not lt!2668362))))

(declare-fun b!7744532 () Bool)

(declare-fun res!3087592 () Bool)

(assert (=> b!7744532 (=> (not res!3087592) (not e!4591569))))

(declare-fun tail!15354 (List!73429) List!73429)

(assert (=> b!7744532 (= res!3087592 (isEmpty!41992 (tail!15354 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325)))))))

(declare-fun b!7744533 () Bool)

(assert (=> b!7744533 (= e!4591567 e!4591570)))

(declare-fun c!1428476 () Bool)

(assert (=> b!7744533 (= c!1428476 (is-EmptyLang!20582 r!14126))))

(declare-fun b!7744534 () Bool)

(declare-fun res!3087589 () Bool)

(assert (=> b!7744534 (=> res!3087589 e!4591565)))

(assert (=> b!7744534 (= res!3087589 (not (isEmpty!41992 (tail!15354 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325))))))))

(declare-fun b!7744535 () Bool)

(assert (=> b!7744535 (= e!4591569 (= (head!15814 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325))) (c!1428464 r!14126)))))

(declare-fun d!2341955 () Bool)

(assert (=> d!2341955 e!4591567))

(declare-fun c!1428475 () Bool)

(assert (=> d!2341955 (= c!1428475 (is-EmptyExpr!20582 r!14126))))

(assert (=> d!2341955 (= lt!2668362 e!4591564)))

(declare-fun c!1428477 () Bool)

(assert (=> d!2341955 (= c!1428477 (isEmpty!41992 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325))))))

(assert (=> d!2341955 (validRegex!11000 r!14126)))

(assert (=> d!2341955 (= (matchR!10074 r!14126 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325))) lt!2668362)))

(declare-fun b!7744528 () Bool)

(declare-fun derivativeStep!6014 (Regex!20582 C!41490) Regex!20582)

(assert (=> b!7744528 (= e!4591564 (matchR!10074 (derivativeStep!6014 r!14126 (head!15814 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325)))) (tail!15354 (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325)))))))

(assert (= (and d!2341955 c!1428477) b!7744524))

(assert (= (and d!2341955 (not c!1428477)) b!7744528))

(assert (= (and d!2341955 c!1428475) b!7744523))

(assert (= (and d!2341955 (not c!1428475)) b!7744533))

(assert (= (and b!7744533 c!1428476) b!7744527))

(assert (= (and b!7744533 (not c!1428476)) b!7744529))

(assert (= (and b!7744529 (not res!3087595)) b!7744525))

(assert (= (and b!7744525 res!3087596) b!7744530))

(assert (= (and b!7744530 res!3087593) b!7744532))

(assert (= (and b!7744532 res!3087592) b!7744535))

(assert (= (and b!7744525 (not res!3087594)) b!7744531))

(assert (= (and b!7744531 res!3087591) b!7744522))

(assert (= (and b!7744522 (not res!3087590)) b!7744534))

(assert (= (and b!7744534 (not res!3087589)) b!7744526))

(assert (= (or b!7744523 b!7744522 b!7744530) bm!717768))

(declare-fun m!8213098 () Bool)

(assert (=> b!7744524 m!8213098))

(assert (=> b!7744532 m!8213024))

(declare-fun m!8213100 () Bool)

(assert (=> b!7744532 m!8213100))

(assert (=> b!7744532 m!8213100))

(declare-fun m!8213102 () Bool)

(assert (=> b!7744532 m!8213102))

(assert (=> b!7744535 m!8213024))

(declare-fun m!8213104 () Bool)

(assert (=> b!7744535 m!8213104))

(assert (=> bm!717768 m!8213024))

(declare-fun m!8213106 () Bool)

(assert (=> bm!717768 m!8213106))

(assert (=> b!7744528 m!8213024))

(assert (=> b!7744528 m!8213104))

(assert (=> b!7744528 m!8213104))

(declare-fun m!8213108 () Bool)

(assert (=> b!7744528 m!8213108))

(assert (=> b!7744528 m!8213024))

(assert (=> b!7744528 m!8213100))

(assert (=> b!7744528 m!8213108))

(assert (=> b!7744528 m!8213100))

(declare-fun m!8213110 () Bool)

(assert (=> b!7744528 m!8213110))

(assert (=> b!7744526 m!8213024))

(assert (=> b!7744526 m!8213104))

(assert (=> b!7744534 m!8213024))

(assert (=> b!7744534 m!8213100))

(assert (=> b!7744534 m!8213100))

(assert (=> b!7744534 m!8213102))

(assert (=> d!2341955 m!8213024))

(assert (=> d!2341955 m!8213106))

(assert (=> d!2341955 m!8213028))

(assert (=> b!7744421 d!2341955))

(declare-fun b!7744546 () Bool)

(declare-fun res!3087601 () Bool)

(declare-fun e!4591576 () Bool)

(assert (=> b!7744546 (=> (not res!3087601) (not e!4591576))))

(declare-fun lt!2668365 () List!73429)

(declare-fun size!42641 (List!73429) Int)

(assert (=> b!7744546 (= res!3087601 (= (size!42641 lt!2668365) (+ (size!42641 (_1!38112 lt!2668325)) (size!42641 (_2!38112 lt!2668325)))))))

(declare-fun b!7744545 () Bool)

(declare-fun e!4591575 () List!73429)

(assert (=> b!7744545 (= e!4591575 (Cons!73305 (h!79753 (_1!38112 lt!2668325)) (++!17781 (t!388164 (_1!38112 lt!2668325)) (_2!38112 lt!2668325))))))

(declare-fun d!2341965 () Bool)

(assert (=> d!2341965 e!4591576))

(declare-fun res!3087602 () Bool)

(assert (=> d!2341965 (=> (not res!3087602) (not e!4591576))))

(declare-fun content!15538 (List!73429) (Set C!41490))

(assert (=> d!2341965 (= res!3087602 (= (content!15538 lt!2668365) (set.union (content!15538 (_1!38112 lt!2668325)) (content!15538 (_2!38112 lt!2668325)))))))

(assert (=> d!2341965 (= lt!2668365 e!4591575)))

(declare-fun c!1428480 () Bool)

(assert (=> d!2341965 (= c!1428480 (is-Nil!73305 (_1!38112 lt!2668325)))))

(assert (=> d!2341965 (= (++!17781 (_1!38112 lt!2668325) (_2!38112 lt!2668325)) lt!2668365)))

(declare-fun b!7744547 () Bool)

(assert (=> b!7744547 (= e!4591576 (or (not (= (_2!38112 lt!2668325) Nil!73305)) (= lt!2668365 (_1!38112 lt!2668325))))))

(declare-fun b!7744544 () Bool)

(assert (=> b!7744544 (= e!4591575 (_2!38112 lt!2668325))))

(assert (= (and d!2341965 c!1428480) b!7744544))

(assert (= (and d!2341965 (not c!1428480)) b!7744545))

(assert (= (and d!2341965 res!3087602) b!7744546))

(assert (= (and b!7744546 res!3087601) b!7744547))

(declare-fun m!8213112 () Bool)

(assert (=> b!7744546 m!8213112))

(declare-fun m!8213114 () Bool)

(assert (=> b!7744546 m!8213114))

(declare-fun m!8213116 () Bool)

(assert (=> b!7744546 m!8213116))

(declare-fun m!8213118 () Bool)

(assert (=> b!7744545 m!8213118))

(declare-fun m!8213120 () Bool)

(assert (=> d!2341965 m!8213120))

(declare-fun m!8213122 () Bool)

(assert (=> d!2341965 m!8213122))

(declare-fun m!8213124 () Bool)

(assert (=> d!2341965 m!8213124))

(assert (=> b!7744421 d!2341965))

(declare-fun b!7744567 () Bool)

(declare-fun e!4591592 () Bool)

(declare-fun call!717780 () Bool)

(assert (=> b!7744567 (= e!4591592 call!717780)))

(declare-fun b!7744568 () Bool)

(declare-fun e!4591597 () Bool)

(assert (=> b!7744568 (= e!4591597 e!4591592)))

(declare-fun res!3087615 () Bool)

(assert (=> b!7744568 (= res!3087615 (not (nullable!9055 (reg!20911 r!14126))))))

(assert (=> b!7744568 (=> (not res!3087615) (not e!4591592))))

(declare-fun bm!717775 () Bool)

(declare-fun call!717781 () Bool)

(assert (=> bm!717775 (= call!717781 call!717780)))

(declare-fun c!1428486 () Bool)

(declare-fun c!1428485 () Bool)

(declare-fun bm!717776 () Bool)

(assert (=> bm!717776 (= call!717780 (validRegex!11000 (ite c!1428486 (reg!20911 r!14126) (ite c!1428485 (regOne!41677 r!14126) (regOne!41676 r!14126)))))))

(declare-fun b!7744569 () Bool)

(declare-fun e!4591591 () Bool)

(assert (=> b!7744569 (= e!4591591 e!4591597)))

(assert (=> b!7744569 (= c!1428486 (is-Star!20582 r!14126))))

(declare-fun b!7744570 () Bool)

(declare-fun e!4591593 () Bool)

(assert (=> b!7744570 (= e!4591597 e!4591593)))

(assert (=> b!7744570 (= c!1428485 (is-Union!20582 r!14126))))

(declare-fun bm!717777 () Bool)

(declare-fun call!717782 () Bool)

(assert (=> bm!717777 (= call!717782 (validRegex!11000 (ite c!1428485 (regTwo!41677 r!14126) (regTwo!41676 r!14126))))))

(declare-fun d!2341967 () Bool)

(declare-fun res!3087617 () Bool)

(assert (=> d!2341967 (=> res!3087617 e!4591591)))

(assert (=> d!2341967 (= res!3087617 (is-ElementMatch!20582 r!14126))))

(assert (=> d!2341967 (= (validRegex!11000 r!14126) e!4591591)))

(declare-fun b!7744566 () Bool)

(declare-fun res!3087613 () Bool)

(declare-fun e!4591596 () Bool)

(assert (=> b!7744566 (=> res!3087613 e!4591596)))

(assert (=> b!7744566 (= res!3087613 (not (is-Concat!29427 r!14126)))))

(assert (=> b!7744566 (= e!4591593 e!4591596)))

(declare-fun b!7744571 () Bool)

(declare-fun e!4591595 () Bool)

(assert (=> b!7744571 (= e!4591595 call!717782)))

(declare-fun b!7744572 () Bool)

(declare-fun res!3087616 () Bool)

(declare-fun e!4591594 () Bool)

(assert (=> b!7744572 (=> (not res!3087616) (not e!4591594))))

(assert (=> b!7744572 (= res!3087616 call!717781)))

(assert (=> b!7744572 (= e!4591593 e!4591594)))

(declare-fun b!7744573 () Bool)

(assert (=> b!7744573 (= e!4591596 e!4591595)))

(declare-fun res!3087614 () Bool)

(assert (=> b!7744573 (=> (not res!3087614) (not e!4591595))))

(assert (=> b!7744573 (= res!3087614 call!717781)))

(declare-fun b!7744574 () Bool)

(assert (=> b!7744574 (= e!4591594 call!717782)))

(assert (= (and d!2341967 (not res!3087617)) b!7744569))

(assert (= (and b!7744569 c!1428486) b!7744568))

(assert (= (and b!7744569 (not c!1428486)) b!7744570))

(assert (= (and b!7744568 res!3087615) b!7744567))

(assert (= (and b!7744570 c!1428485) b!7744572))

(assert (= (and b!7744570 (not c!1428485)) b!7744566))

(assert (= (and b!7744572 res!3087616) b!7744574))

(assert (= (and b!7744566 (not res!3087613)) b!7744573))

(assert (= (and b!7744573 res!3087614) b!7744571))

(assert (= (or b!7744572 b!7744573) bm!717775))

(assert (= (or b!7744574 b!7744571) bm!717777))

(assert (= (or b!7744567 bm!717775) bm!717776))

(declare-fun m!8213130 () Bool)

(assert (=> b!7744568 m!8213130))

(declare-fun m!8213132 () Bool)

(assert (=> bm!717776 m!8213132))

(declare-fun m!8213134 () Bool)

(assert (=> bm!717777 m!8213134))

(assert (=> start!738442 d!2341967))

(declare-fun b!7744575 () Bool)

(declare-fun e!4591600 () Bool)

(declare-fun e!4591599 () Bool)

(assert (=> b!7744575 (= e!4591600 e!4591599)))

(declare-fun res!3087619 () Bool)

(assert (=> b!7744575 (=> res!3087619 e!4591599)))

(declare-fun call!717783 () Bool)

(assert (=> b!7744575 (= res!3087619 call!717783)))

(declare-fun b!7744576 () Bool)

(declare-fun e!4591601 () Bool)

(declare-fun lt!2668369 () Bool)

(assert (=> b!7744576 (= e!4591601 (= lt!2668369 call!717783))))

(declare-fun b!7744577 () Bool)

(declare-fun e!4591598 () Bool)

(assert (=> b!7744577 (= e!4591598 (nullable!9055 (regTwo!41676 r!14126)))))

(declare-fun bm!717778 () Bool)

(assert (=> bm!717778 (= call!717783 (isEmpty!41992 (_2!38112 lt!2668322)))))

(declare-fun b!7744578 () Bool)

(declare-fun res!3087623 () Bool)

(declare-fun e!4591602 () Bool)

(assert (=> b!7744578 (=> res!3087623 e!4591602)))

(declare-fun e!4591603 () Bool)

(assert (=> b!7744578 (= res!3087623 e!4591603)))

(declare-fun res!3087625 () Bool)

(assert (=> b!7744578 (=> (not res!3087625) (not e!4591603))))

(assert (=> b!7744578 (= res!3087625 lt!2668369)))

(declare-fun b!7744579 () Bool)

(assert (=> b!7744579 (= e!4591599 (not (= (head!15814 (_2!38112 lt!2668322)) (c!1428464 (regTwo!41676 r!14126)))))))

(declare-fun b!7744580 () Bool)

(declare-fun e!4591604 () Bool)

(assert (=> b!7744580 (= e!4591604 (not lt!2668369))))

(declare-fun b!7744582 () Bool)

(declare-fun res!3087624 () Bool)

(assert (=> b!7744582 (=> res!3087624 e!4591602)))

(assert (=> b!7744582 (= res!3087624 (not (is-ElementMatch!20582 (regTwo!41676 r!14126))))))

(assert (=> b!7744582 (= e!4591604 e!4591602)))

(declare-fun b!7744583 () Bool)

(declare-fun res!3087622 () Bool)

(assert (=> b!7744583 (=> (not res!3087622) (not e!4591603))))

(assert (=> b!7744583 (= res!3087622 (not call!717783))))

(declare-fun b!7744584 () Bool)

(assert (=> b!7744584 (= e!4591602 e!4591600)))

(declare-fun res!3087620 () Bool)

(assert (=> b!7744584 (=> (not res!3087620) (not e!4591600))))

(assert (=> b!7744584 (= res!3087620 (not lt!2668369))))

(declare-fun b!7744585 () Bool)

(declare-fun res!3087621 () Bool)

(assert (=> b!7744585 (=> (not res!3087621) (not e!4591603))))

(assert (=> b!7744585 (= res!3087621 (isEmpty!41992 (tail!15354 (_2!38112 lt!2668322))))))

(declare-fun b!7744586 () Bool)

(assert (=> b!7744586 (= e!4591601 e!4591604)))

(declare-fun c!1428488 () Bool)

(assert (=> b!7744586 (= c!1428488 (is-EmptyLang!20582 (regTwo!41676 r!14126)))))

(declare-fun b!7744587 () Bool)

(declare-fun res!3087618 () Bool)

(assert (=> b!7744587 (=> res!3087618 e!4591599)))

(assert (=> b!7744587 (= res!3087618 (not (isEmpty!41992 (tail!15354 (_2!38112 lt!2668322)))))))

(declare-fun b!7744588 () Bool)

(assert (=> b!7744588 (= e!4591603 (= (head!15814 (_2!38112 lt!2668322)) (c!1428464 (regTwo!41676 r!14126))))))

(declare-fun d!2341971 () Bool)

(assert (=> d!2341971 e!4591601))

(declare-fun c!1428487 () Bool)

(assert (=> d!2341971 (= c!1428487 (is-EmptyExpr!20582 (regTwo!41676 r!14126)))))

(assert (=> d!2341971 (= lt!2668369 e!4591598)))

(declare-fun c!1428489 () Bool)

(assert (=> d!2341971 (= c!1428489 (isEmpty!41992 (_2!38112 lt!2668322)))))

(assert (=> d!2341971 (validRegex!11000 (regTwo!41676 r!14126))))

(assert (=> d!2341971 (= (matchR!10074 (regTwo!41676 r!14126) (_2!38112 lt!2668322)) lt!2668369)))

(declare-fun b!7744581 () Bool)

(assert (=> b!7744581 (= e!4591598 (matchR!10074 (derivativeStep!6014 (regTwo!41676 r!14126) (head!15814 (_2!38112 lt!2668322))) (tail!15354 (_2!38112 lt!2668322))))))

(assert (= (and d!2341971 c!1428489) b!7744577))

(assert (= (and d!2341971 (not c!1428489)) b!7744581))

(assert (= (and d!2341971 c!1428487) b!7744576))

(assert (= (and d!2341971 (not c!1428487)) b!7744586))

(assert (= (and b!7744586 c!1428488) b!7744580))

(assert (= (and b!7744586 (not c!1428488)) b!7744582))

(assert (= (and b!7744582 (not res!3087624)) b!7744578))

(assert (= (and b!7744578 res!3087625) b!7744583))

(assert (= (and b!7744583 res!3087622) b!7744585))

(assert (= (and b!7744585 res!3087621) b!7744588))

(assert (= (and b!7744578 (not res!3087623)) b!7744584))

(assert (= (and b!7744584 res!3087620) b!7744575))

(assert (= (and b!7744575 (not res!3087619)) b!7744587))

(assert (= (and b!7744587 (not res!3087618)) b!7744579))

(assert (= (or b!7744576 b!7744575 b!7744583) bm!717778))

(declare-fun m!8213136 () Bool)

(assert (=> b!7744577 m!8213136))

(declare-fun m!8213138 () Bool)

(assert (=> b!7744585 m!8213138))

(assert (=> b!7744585 m!8213138))

(declare-fun m!8213140 () Bool)

(assert (=> b!7744585 m!8213140))

(declare-fun m!8213142 () Bool)

(assert (=> b!7744588 m!8213142))

(declare-fun m!8213144 () Bool)

(assert (=> bm!717778 m!8213144))

(assert (=> b!7744581 m!8213142))

(assert (=> b!7744581 m!8213142))

(declare-fun m!8213146 () Bool)

(assert (=> b!7744581 m!8213146))

(assert (=> b!7744581 m!8213138))

(assert (=> b!7744581 m!8213146))

(assert (=> b!7744581 m!8213138))

(declare-fun m!8213148 () Bool)

(assert (=> b!7744581 m!8213148))

(assert (=> b!7744579 m!8213142))

(assert (=> b!7744587 m!8213138))

(assert (=> b!7744587 m!8213138))

(assert (=> b!7744587 m!8213140))

(assert (=> d!2341971 m!8213144))

(declare-fun m!8213150 () Bool)

(assert (=> d!2341971 m!8213150))

(assert (=> b!7744428 d!2341971))

(declare-fun d!2341973 () Bool)

(declare-fun lt!2668372 () tuple2!69618)

(declare-fun dynLambda!29975 (Int tuple2!69618) Bool)

(assert (=> d!2341973 (dynLambda!29975 lambda!471595 lt!2668372)))

(declare-fun choose!59367 (Int) tuple2!69618)

(assert (=> d!2341973 (= lt!2668372 (choose!59367 lambda!471595))))

(assert (=> d!2341973 (Exists!4703 lambda!471595)))

(assert (=> d!2341973 (= (pickWitness!539 lambda!471595) lt!2668372)))

(declare-fun b_lambda!289379 () Bool)

(assert (=> (not b_lambda!289379) (not d!2341973)))

(declare-fun bs!1965339 () Bool)

(assert (= bs!1965339 d!2341973))

(declare-fun m!8213152 () Bool)

(assert (=> bs!1965339 m!8213152))

(declare-fun m!8213154 () Bool)

(assert (=> bs!1965339 m!8213154))

(assert (=> bs!1965339 m!8213030))

(assert (=> b!7744428 d!2341973))

(declare-fun bs!1965340 () Bool)

(declare-fun b!7744656 () Bool)

(assert (= bs!1965340 (and b!7744656 b!7744418)))

(declare-fun lambda!471610 () Int)

(assert (=> bs!1965340 (not (= lambda!471610 lambda!471594))))

(declare-fun bs!1965341 () Bool)

(assert (= bs!1965341 (and b!7744656 b!7744426)))

(assert (=> bs!1965341 (not (= lambda!471610 lambda!471595))))

(assert (=> b!7744656 true))

(assert (=> b!7744656 true))

(declare-fun bs!1965342 () Bool)

(declare-fun b!7744653 () Bool)

(assert (= bs!1965342 (and b!7744653 b!7744418)))

(declare-fun lambda!471611 () Int)

(assert (=> bs!1965342 (not (= lambda!471611 lambda!471594))))

(declare-fun bs!1965343 () Bool)

(assert (= bs!1965343 (and b!7744653 b!7744426)))

(assert (=> bs!1965343 (= (and (= (_2!38112 lt!2668322) s!9605) (= (regOne!41676 (regTwo!41676 r!14126)) (regOne!41676 r!14126)) (= (regTwo!41676 (regTwo!41676 r!14126)) (regTwo!41676 r!14126))) (= lambda!471611 lambda!471595))))

(declare-fun bs!1965344 () Bool)

(assert (= bs!1965344 (and b!7744653 b!7744656)))

(assert (=> bs!1965344 (not (= lambda!471611 lambda!471610))))

(assert (=> b!7744653 true))

(assert (=> b!7744653 true))

(declare-fun b!7744649 () Bool)

(declare-fun e!4591642 () Bool)

(assert (=> b!7744649 (= e!4591642 (= (_2!38112 lt!2668322) (Cons!73305 (c!1428464 (regTwo!41676 r!14126)) Nil!73305)))))

(declare-fun c!1428506 () Bool)

(declare-fun bm!717785 () Bool)

(declare-fun call!717791 () Bool)

(assert (=> bm!717785 (= call!717791 (Exists!4703 (ite c!1428506 lambda!471610 lambda!471611)))))

(declare-fun b!7744650 () Bool)

(declare-fun e!4591643 () Bool)

(declare-fun e!4591639 () Bool)

(assert (=> b!7744650 (= e!4591643 e!4591639)))

(assert (=> b!7744650 (= c!1428506 (is-Star!20582 (regTwo!41676 r!14126)))))

(declare-fun b!7744651 () Bool)

(declare-fun e!4591640 () Bool)

(declare-fun call!717790 () Bool)

(assert (=> b!7744651 (= e!4591640 call!717790)))

(declare-fun b!7744652 () Bool)

(declare-fun c!1428505 () Bool)

(assert (=> b!7744652 (= c!1428505 (is-Union!20582 (regTwo!41676 r!14126)))))

(assert (=> b!7744652 (= e!4591642 e!4591643)))

(declare-fun d!2341975 () Bool)

(declare-fun c!1428504 () Bool)

(assert (=> d!2341975 (= c!1428504 (is-EmptyExpr!20582 (regTwo!41676 r!14126)))))

(assert (=> d!2341975 (= (matchRSpec!4647 (regTwo!41676 r!14126) (_2!38112 lt!2668322)) e!4591640)))

(assert (=> b!7744653 (= e!4591639 call!717791)))

(declare-fun bm!717786 () Bool)

(assert (=> bm!717786 (= call!717790 (isEmpty!41992 (_2!38112 lt!2668322)))))

(declare-fun b!7744654 () Bool)

(declare-fun e!4591637 () Bool)

(assert (=> b!7744654 (= e!4591637 (matchRSpec!4647 (regTwo!41677 (regTwo!41676 r!14126)) (_2!38112 lt!2668322)))))

(declare-fun b!7744655 () Bool)

(assert (=> b!7744655 (= e!4591643 e!4591637)))

(declare-fun res!3087658 () Bool)

(assert (=> b!7744655 (= res!3087658 (matchRSpec!4647 (regOne!41677 (regTwo!41676 r!14126)) (_2!38112 lt!2668322)))))

(assert (=> b!7744655 (=> res!3087658 e!4591637)))

(declare-fun e!4591641 () Bool)

(assert (=> b!7744656 (= e!4591641 call!717791)))

(declare-fun b!7744657 () Bool)

(declare-fun res!3087660 () Bool)

(assert (=> b!7744657 (=> res!3087660 e!4591641)))

(assert (=> b!7744657 (= res!3087660 call!717790)))

(assert (=> b!7744657 (= e!4591639 e!4591641)))

(declare-fun b!7744658 () Bool)

(declare-fun e!4591638 () Bool)

(assert (=> b!7744658 (= e!4591640 e!4591638)))

(declare-fun res!3087659 () Bool)

(assert (=> b!7744658 (= res!3087659 (not (is-EmptyLang!20582 (regTwo!41676 r!14126))))))

(assert (=> b!7744658 (=> (not res!3087659) (not e!4591638))))

(declare-fun b!7744659 () Bool)

(declare-fun c!1428507 () Bool)

(assert (=> b!7744659 (= c!1428507 (is-ElementMatch!20582 (regTwo!41676 r!14126)))))

(assert (=> b!7744659 (= e!4591638 e!4591642)))

(assert (= (and d!2341975 c!1428504) b!7744651))

(assert (= (and d!2341975 (not c!1428504)) b!7744658))

(assert (= (and b!7744658 res!3087659) b!7744659))

(assert (= (and b!7744659 c!1428507) b!7744649))

(assert (= (and b!7744659 (not c!1428507)) b!7744652))

(assert (= (and b!7744652 c!1428505) b!7744655))

(assert (= (and b!7744652 (not c!1428505)) b!7744650))

(assert (= (and b!7744655 (not res!3087658)) b!7744654))

(assert (= (and b!7744650 c!1428506) b!7744657))

(assert (= (and b!7744650 (not c!1428506)) b!7744653))

(assert (= (and b!7744657 (not res!3087660)) b!7744656))

(assert (= (or b!7744656 b!7744653) bm!717785))

(assert (= (or b!7744651 b!7744657) bm!717786))

(declare-fun m!8213156 () Bool)

(assert (=> bm!717785 m!8213156))

(assert (=> bm!717786 m!8213144))

(declare-fun m!8213158 () Bool)

(assert (=> b!7744654 m!8213158))

(declare-fun m!8213160 () Bool)

(assert (=> b!7744655 m!8213160))

(assert (=> b!7744428 d!2341975))

(declare-fun bs!1965345 () Bool)

(declare-fun b!7744667 () Bool)

(assert (= bs!1965345 (and b!7744667 b!7744418)))

(declare-fun lambda!471612 () Int)

(assert (=> bs!1965345 (not (= lambda!471612 lambda!471594))))

(declare-fun bs!1965346 () Bool)

(assert (= bs!1965346 (and b!7744667 b!7744426)))

(assert (=> bs!1965346 (not (= lambda!471612 lambda!471595))))

(declare-fun bs!1965347 () Bool)

(assert (= bs!1965347 (and b!7744667 b!7744656)))

(assert (=> bs!1965347 (= (and (= (_1!38112 lt!2668322) (_2!38112 lt!2668322)) (= (reg!20911 (regOne!41676 r!14126)) (reg!20911 (regTwo!41676 r!14126))) (= (regOne!41676 r!14126) (regTwo!41676 r!14126))) (= lambda!471612 lambda!471610))))

(declare-fun bs!1965348 () Bool)

(assert (= bs!1965348 (and b!7744667 b!7744653)))

(assert (=> bs!1965348 (not (= lambda!471612 lambda!471611))))

(assert (=> b!7744667 true))

(assert (=> b!7744667 true))

(declare-fun bs!1965349 () Bool)

(declare-fun b!7744664 () Bool)

(assert (= bs!1965349 (and b!7744664 b!7744653)))

(declare-fun lambda!471613 () Int)

(assert (=> bs!1965349 (= (and (= (_1!38112 lt!2668322) (_2!38112 lt!2668322)) (= (regOne!41676 (regOne!41676 r!14126)) (regOne!41676 (regTwo!41676 r!14126))) (= (regTwo!41676 (regOne!41676 r!14126)) (regTwo!41676 (regTwo!41676 r!14126)))) (= lambda!471613 lambda!471611))))

(declare-fun bs!1965350 () Bool)

(assert (= bs!1965350 (and b!7744664 b!7744426)))

(assert (=> bs!1965350 (= (and (= (_1!38112 lt!2668322) s!9605) (= (regOne!41676 (regOne!41676 r!14126)) (regOne!41676 r!14126)) (= (regTwo!41676 (regOne!41676 r!14126)) (regTwo!41676 r!14126))) (= lambda!471613 lambda!471595))))

(declare-fun bs!1965351 () Bool)

(assert (= bs!1965351 (and b!7744664 b!7744656)))

(assert (=> bs!1965351 (not (= lambda!471613 lambda!471610))))

(declare-fun bs!1965352 () Bool)

(assert (= bs!1965352 (and b!7744664 b!7744667)))

(assert (=> bs!1965352 (not (= lambda!471613 lambda!471612))))

(declare-fun bs!1965353 () Bool)

(assert (= bs!1965353 (and b!7744664 b!7744418)))

(assert (=> bs!1965353 (not (= lambda!471613 lambda!471594))))

(assert (=> b!7744664 true))

(assert (=> b!7744664 true))

(declare-fun b!7744660 () Bool)

(declare-fun e!4591649 () Bool)

(assert (=> b!7744660 (= e!4591649 (= (_1!38112 lt!2668322) (Cons!73305 (c!1428464 (regOne!41676 r!14126)) Nil!73305)))))

(declare-fun bm!717787 () Bool)

(declare-fun call!717793 () Bool)

(declare-fun c!1428510 () Bool)

(assert (=> bm!717787 (= call!717793 (Exists!4703 (ite c!1428510 lambda!471612 lambda!471613)))))

(declare-fun b!7744661 () Bool)

(declare-fun e!4591650 () Bool)

(declare-fun e!4591646 () Bool)

(assert (=> b!7744661 (= e!4591650 e!4591646)))

(assert (=> b!7744661 (= c!1428510 (is-Star!20582 (regOne!41676 r!14126)))))

(declare-fun b!7744662 () Bool)

(declare-fun e!4591647 () Bool)

(declare-fun call!717792 () Bool)

(assert (=> b!7744662 (= e!4591647 call!717792)))

(declare-fun b!7744663 () Bool)

(declare-fun c!1428509 () Bool)

(assert (=> b!7744663 (= c!1428509 (is-Union!20582 (regOne!41676 r!14126)))))

(assert (=> b!7744663 (= e!4591649 e!4591650)))

(declare-fun d!2341977 () Bool)

(declare-fun c!1428508 () Bool)

(assert (=> d!2341977 (= c!1428508 (is-EmptyExpr!20582 (regOne!41676 r!14126)))))

(assert (=> d!2341977 (= (matchRSpec!4647 (regOne!41676 r!14126) (_1!38112 lt!2668322)) e!4591647)))

(assert (=> b!7744664 (= e!4591646 call!717793)))

(declare-fun bm!717788 () Bool)

(assert (=> bm!717788 (= call!717792 (isEmpty!41992 (_1!38112 lt!2668322)))))

(declare-fun b!7744665 () Bool)

(declare-fun e!4591644 () Bool)

(assert (=> b!7744665 (= e!4591644 (matchRSpec!4647 (regTwo!41677 (regOne!41676 r!14126)) (_1!38112 lt!2668322)))))

(declare-fun b!7744666 () Bool)

(assert (=> b!7744666 (= e!4591650 e!4591644)))

(declare-fun res!3087661 () Bool)

(assert (=> b!7744666 (= res!3087661 (matchRSpec!4647 (regOne!41677 (regOne!41676 r!14126)) (_1!38112 lt!2668322)))))

(assert (=> b!7744666 (=> res!3087661 e!4591644)))

(declare-fun e!4591648 () Bool)

(assert (=> b!7744667 (= e!4591648 call!717793)))

(declare-fun b!7744668 () Bool)

(declare-fun res!3087663 () Bool)

(assert (=> b!7744668 (=> res!3087663 e!4591648)))

(assert (=> b!7744668 (= res!3087663 call!717792)))

(assert (=> b!7744668 (= e!4591646 e!4591648)))

(declare-fun b!7744669 () Bool)

(declare-fun e!4591645 () Bool)

(assert (=> b!7744669 (= e!4591647 e!4591645)))

(declare-fun res!3087662 () Bool)

(assert (=> b!7744669 (= res!3087662 (not (is-EmptyLang!20582 (regOne!41676 r!14126))))))

(assert (=> b!7744669 (=> (not res!3087662) (not e!4591645))))

(declare-fun b!7744670 () Bool)

(declare-fun c!1428511 () Bool)

(assert (=> b!7744670 (= c!1428511 (is-ElementMatch!20582 (regOne!41676 r!14126)))))

(assert (=> b!7744670 (= e!4591645 e!4591649)))

(assert (= (and d!2341977 c!1428508) b!7744662))

(assert (= (and d!2341977 (not c!1428508)) b!7744669))

(assert (= (and b!7744669 res!3087662) b!7744670))

(assert (= (and b!7744670 c!1428511) b!7744660))

(assert (= (and b!7744670 (not c!1428511)) b!7744663))

(assert (= (and b!7744663 c!1428509) b!7744666))

(assert (= (and b!7744663 (not c!1428509)) b!7744661))

(assert (= (and b!7744666 (not res!3087661)) b!7744665))

(assert (= (and b!7744661 c!1428510) b!7744668))

(assert (= (and b!7744661 (not c!1428510)) b!7744664))

(assert (= (and b!7744668 (not res!3087663)) b!7744667))

(assert (= (or b!7744667 b!7744664) bm!717787))

(assert (= (or b!7744662 b!7744668) bm!717788))

(declare-fun m!8213162 () Bool)

(assert (=> bm!717787 m!8213162))

(declare-fun m!8213164 () Bool)

(assert (=> bm!717788 m!8213164))

(declare-fun m!8213166 () Bool)

(assert (=> b!7744665 m!8213166))

(declare-fun m!8213168 () Bool)

(assert (=> b!7744666 m!8213168))

(assert (=> b!7744428 d!2341977))

(declare-fun b!7744685 () Bool)

(declare-fun e!4591660 () Bool)

(declare-fun e!4591659 () Bool)

(assert (=> b!7744685 (= e!4591660 e!4591659)))

(declare-fun res!3087673 () Bool)

(assert (=> b!7744685 (=> res!3087673 e!4591659)))

(declare-fun call!717795 () Bool)

(assert (=> b!7744685 (= res!3087673 call!717795)))

(declare-fun b!7744686 () Bool)

(declare-fun e!4591661 () Bool)

(declare-fun lt!2668376 () Bool)

(assert (=> b!7744686 (= e!4591661 (= lt!2668376 call!717795))))

(declare-fun b!7744687 () Bool)

(declare-fun e!4591658 () Bool)

(assert (=> b!7744687 (= e!4591658 (nullable!9055 (regOne!41676 r!14126)))))

(declare-fun bm!717790 () Bool)

(assert (=> bm!717790 (= call!717795 (isEmpty!41992 (_1!38112 lt!2668322)))))

(declare-fun b!7744688 () Bool)

(declare-fun res!3087677 () Bool)

(declare-fun e!4591662 () Bool)

(assert (=> b!7744688 (=> res!3087677 e!4591662)))

(declare-fun e!4591663 () Bool)

(assert (=> b!7744688 (= res!3087677 e!4591663)))

(declare-fun res!3087679 () Bool)

(assert (=> b!7744688 (=> (not res!3087679) (not e!4591663))))

(assert (=> b!7744688 (= res!3087679 lt!2668376)))

(declare-fun b!7744689 () Bool)

(assert (=> b!7744689 (= e!4591659 (not (= (head!15814 (_1!38112 lt!2668322)) (c!1428464 (regOne!41676 r!14126)))))))

(declare-fun b!7744690 () Bool)

(declare-fun e!4591664 () Bool)

(assert (=> b!7744690 (= e!4591664 (not lt!2668376))))

(declare-fun b!7744692 () Bool)

(declare-fun res!3087678 () Bool)

(assert (=> b!7744692 (=> res!3087678 e!4591662)))

(assert (=> b!7744692 (= res!3087678 (not (is-ElementMatch!20582 (regOne!41676 r!14126))))))

(assert (=> b!7744692 (= e!4591664 e!4591662)))

(declare-fun b!7744693 () Bool)

(declare-fun res!3087676 () Bool)

(assert (=> b!7744693 (=> (not res!3087676) (not e!4591663))))

(assert (=> b!7744693 (= res!3087676 (not call!717795))))

(declare-fun b!7744694 () Bool)

(assert (=> b!7744694 (= e!4591662 e!4591660)))

(declare-fun res!3087674 () Bool)

(assert (=> b!7744694 (=> (not res!3087674) (not e!4591660))))

(assert (=> b!7744694 (= res!3087674 (not lt!2668376))))

(declare-fun b!7744695 () Bool)

(declare-fun res!3087675 () Bool)

(assert (=> b!7744695 (=> (not res!3087675) (not e!4591663))))

(assert (=> b!7744695 (= res!3087675 (isEmpty!41992 (tail!15354 (_1!38112 lt!2668322))))))

(declare-fun b!7744696 () Bool)

(assert (=> b!7744696 (= e!4591661 e!4591664)))

(declare-fun c!1428516 () Bool)

(assert (=> b!7744696 (= c!1428516 (is-EmptyLang!20582 (regOne!41676 r!14126)))))

(declare-fun b!7744697 () Bool)

(declare-fun res!3087672 () Bool)

(assert (=> b!7744697 (=> res!3087672 e!4591659)))

(assert (=> b!7744697 (= res!3087672 (not (isEmpty!41992 (tail!15354 (_1!38112 lt!2668322)))))))

(declare-fun b!7744698 () Bool)

(assert (=> b!7744698 (= e!4591663 (= (head!15814 (_1!38112 lt!2668322)) (c!1428464 (regOne!41676 r!14126))))))

(declare-fun d!2341979 () Bool)

(assert (=> d!2341979 e!4591661))

(declare-fun c!1428515 () Bool)

(assert (=> d!2341979 (= c!1428515 (is-EmptyExpr!20582 (regOne!41676 r!14126)))))

(assert (=> d!2341979 (= lt!2668376 e!4591658)))

(declare-fun c!1428517 () Bool)

(assert (=> d!2341979 (= c!1428517 (isEmpty!41992 (_1!38112 lt!2668322)))))

(assert (=> d!2341979 (validRegex!11000 (regOne!41676 r!14126))))

(assert (=> d!2341979 (= (matchR!10074 (regOne!41676 r!14126) (_1!38112 lt!2668322)) lt!2668376)))

(declare-fun b!7744691 () Bool)

(assert (=> b!7744691 (= e!4591658 (matchR!10074 (derivativeStep!6014 (regOne!41676 r!14126) (head!15814 (_1!38112 lt!2668322))) (tail!15354 (_1!38112 lt!2668322))))))

(assert (= (and d!2341979 c!1428517) b!7744687))

(assert (= (and d!2341979 (not c!1428517)) b!7744691))

(assert (= (and d!2341979 c!1428515) b!7744686))

(assert (= (and d!2341979 (not c!1428515)) b!7744696))

(assert (= (and b!7744696 c!1428516) b!7744690))

(assert (= (and b!7744696 (not c!1428516)) b!7744692))

(assert (= (and b!7744692 (not res!3087678)) b!7744688))

(assert (= (and b!7744688 res!3087679) b!7744693))

(assert (= (and b!7744693 res!3087676) b!7744695))

(assert (= (and b!7744695 res!3087675) b!7744698))

(assert (= (and b!7744688 (not res!3087677)) b!7744694))

(assert (= (and b!7744694 res!3087674) b!7744685))

(assert (= (and b!7744685 (not res!3087673)) b!7744697))

(assert (= (and b!7744697 (not res!3087672)) b!7744689))

(assert (= (or b!7744686 b!7744685 b!7744693) bm!717790))

(declare-fun m!8213170 () Bool)

(assert (=> b!7744687 m!8213170))

(declare-fun m!8213172 () Bool)

(assert (=> b!7744695 m!8213172))

(assert (=> b!7744695 m!8213172))

(declare-fun m!8213174 () Bool)

(assert (=> b!7744695 m!8213174))

(declare-fun m!8213176 () Bool)

(assert (=> b!7744698 m!8213176))

(assert (=> bm!717790 m!8213164))

(assert (=> b!7744691 m!8213176))

(assert (=> b!7744691 m!8213176))

(declare-fun m!8213178 () Bool)

(assert (=> b!7744691 m!8213178))

(assert (=> b!7744691 m!8213172))

(assert (=> b!7744691 m!8213178))

(assert (=> b!7744691 m!8213172))

(declare-fun m!8213180 () Bool)

(assert (=> b!7744691 m!8213180))

(assert (=> b!7744689 m!8213176))

(assert (=> b!7744697 m!8213172))

(assert (=> b!7744697 m!8213172))

(assert (=> b!7744697 m!8213174))

(assert (=> d!2341979 m!8213164))

(assert (=> d!2341979 m!8213042))

(assert (=> b!7744428 d!2341979))

(declare-fun d!2341981 () Bool)

(assert (=> d!2341981 (= (matchR!10074 (regOne!41676 r!14126) (_1!38112 lt!2668322)) (matchRSpec!4647 (regOne!41676 r!14126) (_1!38112 lt!2668322)))))

(declare-fun lt!2668379 () Unit!168252)

(declare-fun choose!59368 (Regex!20582 List!73429) Unit!168252)

(assert (=> d!2341981 (= lt!2668379 (choose!59368 (regOne!41676 r!14126) (_1!38112 lt!2668322)))))

(assert (=> d!2341981 (validRegex!11000 (regOne!41676 r!14126))))

(assert (=> d!2341981 (= (mainMatchTheorem!4617 (regOne!41676 r!14126) (_1!38112 lt!2668322)) lt!2668379)))

(declare-fun bs!1965354 () Bool)

(assert (= bs!1965354 d!2341981))

(assert (=> bs!1965354 m!8213038))

(assert (=> bs!1965354 m!8213046))

(declare-fun m!8213196 () Bool)

(assert (=> bs!1965354 m!8213196))

(assert (=> bs!1965354 m!8213042))

(assert (=> b!7744428 d!2341981))

(declare-fun b!7744700 () Bool)

(declare-fun e!4591666 () Bool)

(declare-fun call!717796 () Bool)

(assert (=> b!7744700 (= e!4591666 call!717796)))

(declare-fun b!7744701 () Bool)

(declare-fun e!4591671 () Bool)

(assert (=> b!7744701 (= e!4591671 e!4591666)))

(declare-fun res!3087682 () Bool)

(assert (=> b!7744701 (= res!3087682 (not (nullable!9055 (reg!20911 (regOne!41676 r!14126)))))))

(assert (=> b!7744701 (=> (not res!3087682) (not e!4591666))))

(declare-fun bm!717791 () Bool)

(declare-fun call!717797 () Bool)

(assert (=> bm!717791 (= call!717797 call!717796)))

(declare-fun c!1428519 () Bool)

(declare-fun c!1428518 () Bool)

(declare-fun bm!717792 () Bool)

(assert (=> bm!717792 (= call!717796 (validRegex!11000 (ite c!1428519 (reg!20911 (regOne!41676 r!14126)) (ite c!1428518 (regOne!41677 (regOne!41676 r!14126)) (regOne!41676 (regOne!41676 r!14126))))))))

(declare-fun b!7744702 () Bool)

(declare-fun e!4591665 () Bool)

(assert (=> b!7744702 (= e!4591665 e!4591671)))

(assert (=> b!7744702 (= c!1428519 (is-Star!20582 (regOne!41676 r!14126)))))

(declare-fun b!7744703 () Bool)

(declare-fun e!4591667 () Bool)

(assert (=> b!7744703 (= e!4591671 e!4591667)))

(assert (=> b!7744703 (= c!1428518 (is-Union!20582 (regOne!41676 r!14126)))))

(declare-fun bm!717793 () Bool)

(declare-fun call!717798 () Bool)

(assert (=> bm!717793 (= call!717798 (validRegex!11000 (ite c!1428518 (regTwo!41677 (regOne!41676 r!14126)) (regTwo!41676 (regOne!41676 r!14126)))))))

(declare-fun d!2341985 () Bool)

(declare-fun res!3087684 () Bool)

(assert (=> d!2341985 (=> res!3087684 e!4591665)))

(assert (=> d!2341985 (= res!3087684 (is-ElementMatch!20582 (regOne!41676 r!14126)))))

(assert (=> d!2341985 (= (validRegex!11000 (regOne!41676 r!14126)) e!4591665)))

(declare-fun b!7744699 () Bool)

(declare-fun res!3087680 () Bool)

(declare-fun e!4591670 () Bool)

(assert (=> b!7744699 (=> res!3087680 e!4591670)))

(assert (=> b!7744699 (= res!3087680 (not (is-Concat!29427 (regOne!41676 r!14126))))))

(assert (=> b!7744699 (= e!4591667 e!4591670)))

(declare-fun b!7744704 () Bool)

(declare-fun e!4591669 () Bool)

(assert (=> b!7744704 (= e!4591669 call!717798)))

(declare-fun b!7744705 () Bool)

(declare-fun res!3087683 () Bool)

(declare-fun e!4591668 () Bool)

(assert (=> b!7744705 (=> (not res!3087683) (not e!4591668))))

(assert (=> b!7744705 (= res!3087683 call!717797)))

(assert (=> b!7744705 (= e!4591667 e!4591668)))

(declare-fun b!7744706 () Bool)

(assert (=> b!7744706 (= e!4591670 e!4591669)))

(declare-fun res!3087681 () Bool)

(assert (=> b!7744706 (=> (not res!3087681) (not e!4591669))))

(assert (=> b!7744706 (= res!3087681 call!717797)))

(declare-fun b!7744707 () Bool)

(assert (=> b!7744707 (= e!4591668 call!717798)))

(assert (= (and d!2341985 (not res!3087684)) b!7744702))

(assert (= (and b!7744702 c!1428519) b!7744701))

(assert (= (and b!7744702 (not c!1428519)) b!7744703))

(assert (= (and b!7744701 res!3087682) b!7744700))

(assert (= (and b!7744703 c!1428518) b!7744705))

(assert (= (and b!7744703 (not c!1428518)) b!7744699))

(assert (= (and b!7744705 res!3087683) b!7744707))

(assert (= (and b!7744699 (not res!3087680)) b!7744706))

(assert (= (and b!7744706 res!3087681) b!7744704))

(assert (= (or b!7744705 b!7744706) bm!717791))

(assert (= (or b!7744707 b!7744704) bm!717793))

(assert (= (or b!7744700 bm!717791) bm!717792))

(declare-fun m!8213198 () Bool)

(assert (=> b!7744701 m!8213198))

(declare-fun m!8213200 () Bool)

(assert (=> bm!717792 m!8213200))

(declare-fun m!8213202 () Bool)

(assert (=> bm!717793 m!8213202))

(assert (=> b!7744428 d!2341985))

(declare-fun d!2341987 () Bool)

(assert (=> d!2341987 (= (matchR!10074 (regTwo!41676 r!14126) (_2!38112 lt!2668322)) (matchRSpec!4647 (regTwo!41676 r!14126) (_2!38112 lt!2668322)))))

(declare-fun lt!2668380 () Unit!168252)

(assert (=> d!2341987 (= lt!2668380 (choose!59368 (regTwo!41676 r!14126) (_2!38112 lt!2668322)))))

(assert (=> d!2341987 (validRegex!11000 (regTwo!41676 r!14126))))

(assert (=> d!2341987 (= (mainMatchTheorem!4617 (regTwo!41676 r!14126) (_2!38112 lt!2668322)) lt!2668380)))

(declare-fun bs!1965355 () Bool)

(assert (= bs!1965355 d!2341987))

(assert (=> bs!1965355 m!8213034))

(assert (=> bs!1965355 m!8213040))

(declare-fun m!8213204 () Bool)

(assert (=> bs!1965355 m!8213204))

(assert (=> bs!1965355 m!8213150))

(assert (=> b!7744428 d!2341987))

(declare-fun b!7744708 () Bool)

(declare-fun e!4591674 () Bool)

(declare-fun e!4591673 () Bool)

(assert (=> b!7744708 (= e!4591674 e!4591673)))

(declare-fun res!3087686 () Bool)

(assert (=> b!7744708 (=> res!3087686 e!4591673)))

(declare-fun call!717799 () Bool)

(assert (=> b!7744708 (= res!3087686 call!717799)))

(declare-fun b!7744709 () Bool)

(declare-fun e!4591675 () Bool)

(declare-fun lt!2668381 () Bool)

(assert (=> b!7744709 (= e!4591675 (= lt!2668381 call!717799))))

(declare-fun b!7744710 () Bool)

(declare-fun e!4591672 () Bool)

(assert (=> b!7744710 (= e!4591672 (nullable!9055 r!14126))))

(declare-fun bm!717794 () Bool)

(assert (=> bm!717794 (= call!717799 (isEmpty!41992 s!9605))))

(declare-fun b!7744711 () Bool)

(declare-fun res!3087690 () Bool)

(declare-fun e!4591676 () Bool)

(assert (=> b!7744711 (=> res!3087690 e!4591676)))

(declare-fun e!4591677 () Bool)

(assert (=> b!7744711 (= res!3087690 e!4591677)))

(declare-fun res!3087692 () Bool)

(assert (=> b!7744711 (=> (not res!3087692) (not e!4591677))))

(assert (=> b!7744711 (= res!3087692 lt!2668381)))

(declare-fun b!7744712 () Bool)

(assert (=> b!7744712 (= e!4591673 (not (= (head!15814 s!9605) (c!1428464 r!14126))))))

(declare-fun b!7744713 () Bool)

(declare-fun e!4591678 () Bool)

(assert (=> b!7744713 (= e!4591678 (not lt!2668381))))

(declare-fun b!7744715 () Bool)

(declare-fun res!3087691 () Bool)

(assert (=> b!7744715 (=> res!3087691 e!4591676)))

(assert (=> b!7744715 (= res!3087691 (not (is-ElementMatch!20582 r!14126)))))

(assert (=> b!7744715 (= e!4591678 e!4591676)))

(declare-fun b!7744716 () Bool)

(declare-fun res!3087689 () Bool)

(assert (=> b!7744716 (=> (not res!3087689) (not e!4591677))))

(assert (=> b!7744716 (= res!3087689 (not call!717799))))

(declare-fun b!7744717 () Bool)

(assert (=> b!7744717 (= e!4591676 e!4591674)))

(declare-fun res!3087687 () Bool)

(assert (=> b!7744717 (=> (not res!3087687) (not e!4591674))))

(assert (=> b!7744717 (= res!3087687 (not lt!2668381))))

(declare-fun b!7744718 () Bool)

(declare-fun res!3087688 () Bool)

(assert (=> b!7744718 (=> (not res!3087688) (not e!4591677))))

(assert (=> b!7744718 (= res!3087688 (isEmpty!41992 (tail!15354 s!9605)))))

(declare-fun b!7744719 () Bool)

(assert (=> b!7744719 (= e!4591675 e!4591678)))

(declare-fun c!1428521 () Bool)

(assert (=> b!7744719 (= c!1428521 (is-EmptyLang!20582 r!14126))))

(declare-fun b!7744720 () Bool)

(declare-fun res!3087685 () Bool)

(assert (=> b!7744720 (=> res!3087685 e!4591673)))

(assert (=> b!7744720 (= res!3087685 (not (isEmpty!41992 (tail!15354 s!9605))))))

(declare-fun b!7744721 () Bool)

(assert (=> b!7744721 (= e!4591677 (= (head!15814 s!9605) (c!1428464 r!14126)))))

(declare-fun d!2341989 () Bool)

(assert (=> d!2341989 e!4591675))

(declare-fun c!1428520 () Bool)

(assert (=> d!2341989 (= c!1428520 (is-EmptyExpr!20582 r!14126))))

(assert (=> d!2341989 (= lt!2668381 e!4591672)))

(declare-fun c!1428522 () Bool)

(assert (=> d!2341989 (= c!1428522 (isEmpty!41992 s!9605))))

(assert (=> d!2341989 (validRegex!11000 r!14126)))

(assert (=> d!2341989 (= (matchR!10074 r!14126 s!9605) lt!2668381)))

(declare-fun b!7744714 () Bool)

(assert (=> b!7744714 (= e!4591672 (matchR!10074 (derivativeStep!6014 r!14126 (head!15814 s!9605)) (tail!15354 s!9605)))))

(assert (= (and d!2341989 c!1428522) b!7744710))

(assert (= (and d!2341989 (not c!1428522)) b!7744714))

(assert (= (and d!2341989 c!1428520) b!7744709))

(assert (= (and d!2341989 (not c!1428520)) b!7744719))

(assert (= (and b!7744719 c!1428521) b!7744713))

(assert (= (and b!7744719 (not c!1428521)) b!7744715))

(assert (= (and b!7744715 (not res!3087691)) b!7744711))

(assert (= (and b!7744711 res!3087692) b!7744716))

(assert (= (and b!7744716 res!3087689) b!7744718))

(assert (= (and b!7744718 res!3087688) b!7744721))

(assert (= (and b!7744711 (not res!3087690)) b!7744717))

(assert (= (and b!7744717 res!3087687) b!7744708))

(assert (= (and b!7744708 (not res!3087686)) b!7744720))

(assert (= (and b!7744720 (not res!3087685)) b!7744712))

(assert (= (or b!7744709 b!7744708 b!7744716) bm!717794))

(assert (=> b!7744710 m!8213098))

(declare-fun m!8213206 () Bool)

(assert (=> b!7744718 m!8213206))

(assert (=> b!7744718 m!8213206))

(declare-fun m!8213208 () Bool)

(assert (=> b!7744718 m!8213208))

(declare-fun m!8213210 () Bool)

(assert (=> b!7744721 m!8213210))

(declare-fun m!8213212 () Bool)

(assert (=> bm!717794 m!8213212))

(assert (=> b!7744714 m!8213210))

(assert (=> b!7744714 m!8213210))

(declare-fun m!8213214 () Bool)

(assert (=> b!7744714 m!8213214))

(assert (=> b!7744714 m!8213206))

(assert (=> b!7744714 m!8213214))

(assert (=> b!7744714 m!8213206))

(declare-fun m!8213216 () Bool)

(assert (=> b!7744714 m!8213216))

(assert (=> b!7744712 m!8213210))

(assert (=> b!7744720 m!8213206))

(assert (=> b!7744720 m!8213206))

(assert (=> b!7744720 m!8213208))

(assert (=> d!2341989 m!8213212))

(assert (=> d!2341989 m!8213028))

(assert (=> b!7744418 d!2341989))

(declare-fun bs!1965356 () Bool)

(declare-fun d!2341991 () Bool)

(assert (= bs!1965356 (and d!2341991 b!7744653)))

(declare-fun lambda!471616 () Int)

(assert (=> bs!1965356 (not (= lambda!471616 lambda!471611))))

(declare-fun bs!1965357 () Bool)

(assert (= bs!1965357 (and d!2341991 b!7744426)))

(assert (=> bs!1965357 (not (= lambda!471616 lambda!471595))))

(declare-fun bs!1965358 () Bool)

(assert (= bs!1965358 (and d!2341991 b!7744664)))

(assert (=> bs!1965358 (not (= lambda!471616 lambda!471613))))

(declare-fun bs!1965359 () Bool)

(assert (= bs!1965359 (and d!2341991 b!7744656)))

(assert (=> bs!1965359 (not (= lambda!471616 lambda!471610))))

(declare-fun bs!1965360 () Bool)

(assert (= bs!1965360 (and d!2341991 b!7744667)))

(assert (=> bs!1965360 (not (= lambda!471616 lambda!471612))))

(declare-fun bs!1965361 () Bool)

(assert (= bs!1965361 (and d!2341991 b!7744418)))

(assert (=> bs!1965361 (= lambda!471616 lambda!471594)))

(assert (=> d!2341991 true))

(assert (=> d!2341991 true))

(assert (=> d!2341991 true))

(assert (=> d!2341991 (= (isDefined!14219 (findConcatSeparation!3633 (regOne!41676 r!14126) (regTwo!41676 r!14126) Nil!73305 s!9605 s!9605)) (Exists!4703 lambda!471616))))

(declare-fun lt!2668387 () Unit!168252)

(declare-fun choose!59371 (Regex!20582 Regex!20582 List!73429) Unit!168252)

(assert (=> d!2341991 (= lt!2668387 (choose!59371 (regOne!41676 r!14126) (regTwo!41676 r!14126) s!9605))))

(assert (=> d!2341991 (validRegex!11000 (regOne!41676 r!14126))))

(assert (=> d!2341991 (= (lemmaFindConcatSeparationEquivalentToExists!3391 (regOne!41676 r!14126) (regTwo!41676 r!14126) s!9605) lt!2668387)))

(declare-fun bs!1965362 () Bool)

(assert (= bs!1965362 d!2341991))

(assert (=> bs!1965362 m!8213012))

(declare-fun m!8213232 () Bool)

(assert (=> bs!1965362 m!8213232))

(assert (=> bs!1965362 m!8213012))

(assert (=> bs!1965362 m!8213042))

(declare-fun m!8213234 () Bool)

(assert (=> bs!1965362 m!8213234))

(declare-fun m!8213236 () Bool)

(assert (=> bs!1965362 m!8213236))

(assert (=> b!7744418 d!2341991))

(declare-fun d!2341995 () Bool)

(declare-fun isEmpty!41994 (Option!17603) Bool)

(assert (=> d!2341995 (= (isDefined!14219 lt!2668324) (not (isEmpty!41994 lt!2668324)))))

(declare-fun bs!1965363 () Bool)

(assert (= bs!1965363 d!2341995))

(declare-fun m!8213238 () Bool)

(assert (=> bs!1965363 m!8213238))

(assert (=> b!7744418 d!2341995))

(assert (=> b!7744418 d!2341947))

(declare-fun b!7744797 () Bool)

(declare-fun lt!2668396 () Unit!168252)

(declare-fun lt!2668395 () Unit!168252)

(assert (=> b!7744797 (= lt!2668396 lt!2668395)))

(assert (=> b!7744797 (= (++!17781 (++!17781 Nil!73305 (Cons!73305 (h!79753 s!9605) Nil!73305)) (t!388164 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3329 (List!73429 C!41490 List!73429 List!73429) Unit!168252)

(assert (=> b!7744797 (= lt!2668395 (lemmaMoveElementToOtherListKeepsConcatEq!3329 Nil!73305 (h!79753 s!9605) (t!388164 s!9605) s!9605))))

(declare-fun e!4591725 () Option!17603)

(assert (=> b!7744797 (= e!4591725 (findConcatSeparation!3633 (regOne!41676 r!14126) (regTwo!41676 r!14126) (++!17781 Nil!73305 (Cons!73305 (h!79753 s!9605) Nil!73305)) (t!388164 s!9605) s!9605))))

(declare-fun b!7744799 () Bool)

(declare-fun res!3087736 () Bool)

(declare-fun e!4591727 () Bool)

(assert (=> b!7744799 (=> (not res!3087736) (not e!4591727))))

(declare-fun lt!2668397 () Option!17603)

(assert (=> b!7744799 (= res!3087736 (matchR!10074 (regTwo!41676 r!14126) (_2!38112 (get!26064 lt!2668397))))))

(declare-fun b!7744800 () Bool)

(assert (=> b!7744800 (= e!4591727 (= (++!17781 (_1!38112 (get!26064 lt!2668397)) (_2!38112 (get!26064 lt!2668397))) s!9605))))

(declare-fun b!7744801 () Bool)

(assert (=> b!7744801 (= e!4591725 None!17602)))

(declare-fun b!7744802 () Bool)

(declare-fun e!4591729 () Bool)

(assert (=> b!7744802 (= e!4591729 (matchR!10074 (regTwo!41676 r!14126) s!9605))))

(declare-fun b!7744803 () Bool)

(declare-fun e!4591726 () Option!17603)

(assert (=> b!7744803 (= e!4591726 (Some!17602 (tuple2!69619 Nil!73305 s!9605)))))

(declare-fun b!7744804 () Bool)

(declare-fun res!3087737 () Bool)

(assert (=> b!7744804 (=> (not res!3087737) (not e!4591727))))

(assert (=> b!7744804 (= res!3087737 (matchR!10074 (regOne!41676 r!14126) (_1!38112 (get!26064 lt!2668397))))))

(declare-fun b!7744805 () Bool)

(assert (=> b!7744805 (= e!4591726 e!4591725)))

(declare-fun c!1428540 () Bool)

(assert (=> b!7744805 (= c!1428540 (is-Nil!73305 s!9605))))

(declare-fun d!2341997 () Bool)

(declare-fun e!4591728 () Bool)

(assert (=> d!2341997 e!4591728))

(declare-fun res!3087738 () Bool)

(assert (=> d!2341997 (=> res!3087738 e!4591728)))

(assert (=> d!2341997 (= res!3087738 e!4591727)))

(declare-fun res!3087740 () Bool)

(assert (=> d!2341997 (=> (not res!3087740) (not e!4591727))))

(assert (=> d!2341997 (= res!3087740 (isDefined!14219 lt!2668397))))

(assert (=> d!2341997 (= lt!2668397 e!4591726)))

(declare-fun c!1428539 () Bool)

(assert (=> d!2341997 (= c!1428539 e!4591729)))

(declare-fun res!3087739 () Bool)

(assert (=> d!2341997 (=> (not res!3087739) (not e!4591729))))

(assert (=> d!2341997 (= res!3087739 (matchR!10074 (regOne!41676 r!14126) Nil!73305))))

(assert (=> d!2341997 (validRegex!11000 (regOne!41676 r!14126))))

(assert (=> d!2341997 (= (findConcatSeparation!3633 (regOne!41676 r!14126) (regTwo!41676 r!14126) Nil!73305 s!9605 s!9605) lt!2668397)))

(declare-fun b!7744798 () Bool)

(assert (=> b!7744798 (= e!4591728 (not (isDefined!14219 lt!2668397)))))

(assert (= (and d!2341997 res!3087739) b!7744802))

(assert (= (and d!2341997 c!1428539) b!7744803))

(assert (= (and d!2341997 (not c!1428539)) b!7744805))

(assert (= (and b!7744805 c!1428540) b!7744801))

(assert (= (and b!7744805 (not c!1428540)) b!7744797))

(assert (= (and d!2341997 res!3087740) b!7744804))

(assert (= (and b!7744804 res!3087737) b!7744799))

(assert (= (and b!7744799 res!3087736) b!7744800))

(assert (= (and d!2341997 (not res!3087738)) b!7744798))

(declare-fun m!8213246 () Bool)

(assert (=> b!7744802 m!8213246))

(declare-fun m!8213248 () Bool)

(assert (=> b!7744804 m!8213248))

(declare-fun m!8213250 () Bool)

(assert (=> b!7744804 m!8213250))

(assert (=> b!7744800 m!8213248))

(declare-fun m!8213252 () Bool)

(assert (=> b!7744800 m!8213252))

(declare-fun m!8213254 () Bool)

(assert (=> b!7744797 m!8213254))

(assert (=> b!7744797 m!8213254))

(declare-fun m!8213256 () Bool)

(assert (=> b!7744797 m!8213256))

(declare-fun m!8213258 () Bool)

(assert (=> b!7744797 m!8213258))

(assert (=> b!7744797 m!8213254))

(declare-fun m!8213262 () Bool)

(assert (=> b!7744797 m!8213262))

(declare-fun m!8213264 () Bool)

(assert (=> d!2341997 m!8213264))

(declare-fun m!8213266 () Bool)

(assert (=> d!2341997 m!8213266))

(assert (=> d!2341997 m!8213042))

(assert (=> b!7744798 m!8213264))

(assert (=> b!7744799 m!8213248))

(declare-fun m!8213272 () Bool)

(assert (=> b!7744799 m!8213272))

(assert (=> b!7744418 d!2341997))

(declare-fun b!7744817 () Bool)

(declare-fun e!4591732 () Bool)

(declare-fun tp!2272680 () Bool)

(declare-fun tp!2272678 () Bool)

(assert (=> b!7744817 (= e!4591732 (and tp!2272680 tp!2272678))))

(declare-fun b!7744819 () Bool)

(declare-fun tp!2272677 () Bool)

(declare-fun tp!2272676 () Bool)

(assert (=> b!7744819 (= e!4591732 (and tp!2272677 tp!2272676))))

(declare-fun b!7744818 () Bool)

(declare-fun tp!2272679 () Bool)

(assert (=> b!7744818 (= e!4591732 tp!2272679)))

(declare-fun b!7744816 () Bool)

(assert (=> b!7744816 (= e!4591732 tp_is_empty!51519)))

(assert (=> b!7744424 (= tp!2272645 e!4591732)))

(assert (= (and b!7744424 (is-ElementMatch!20582 (regOne!41677 r!14126))) b!7744816))

(assert (= (and b!7744424 (is-Concat!29427 (regOne!41677 r!14126))) b!7744817))

(assert (= (and b!7744424 (is-Star!20582 (regOne!41677 r!14126))) b!7744818))

(assert (= (and b!7744424 (is-Union!20582 (regOne!41677 r!14126))) b!7744819))

(declare-fun b!7744821 () Bool)

(declare-fun e!4591733 () Bool)

(declare-fun tp!2272685 () Bool)

(declare-fun tp!2272683 () Bool)

(assert (=> b!7744821 (= e!4591733 (and tp!2272685 tp!2272683))))

(declare-fun b!7744823 () Bool)

(declare-fun tp!2272682 () Bool)

(declare-fun tp!2272681 () Bool)

(assert (=> b!7744823 (= e!4591733 (and tp!2272682 tp!2272681))))

(declare-fun b!7744822 () Bool)

(declare-fun tp!2272684 () Bool)

(assert (=> b!7744822 (= e!4591733 tp!2272684)))

(declare-fun b!7744820 () Bool)

(assert (=> b!7744820 (= e!4591733 tp_is_empty!51519)))

(assert (=> b!7744424 (= tp!2272644 e!4591733)))

(assert (= (and b!7744424 (is-ElementMatch!20582 (regTwo!41677 r!14126))) b!7744820))

(assert (= (and b!7744424 (is-Concat!29427 (regTwo!41677 r!14126))) b!7744821))

(assert (= (and b!7744424 (is-Star!20582 (regTwo!41677 r!14126))) b!7744822))

(assert (= (and b!7744424 (is-Union!20582 (regTwo!41677 r!14126))) b!7744823))

(declare-fun b!7744825 () Bool)

(declare-fun e!4591734 () Bool)

(declare-fun tp!2272690 () Bool)

(declare-fun tp!2272688 () Bool)

(assert (=> b!7744825 (= e!4591734 (and tp!2272690 tp!2272688))))

(declare-fun b!7744827 () Bool)

(declare-fun tp!2272687 () Bool)

(declare-fun tp!2272686 () Bool)

(assert (=> b!7744827 (= e!4591734 (and tp!2272687 tp!2272686))))

(declare-fun b!7744826 () Bool)

(declare-fun tp!2272689 () Bool)

(assert (=> b!7744826 (= e!4591734 tp!2272689)))

(declare-fun b!7744824 () Bool)

(assert (=> b!7744824 (= e!4591734 tp_is_empty!51519)))

(assert (=> b!7744425 (= tp!2272647 e!4591734)))

(assert (= (and b!7744425 (is-ElementMatch!20582 (regOne!41676 r!14126))) b!7744824))

(assert (= (and b!7744425 (is-Concat!29427 (regOne!41676 r!14126))) b!7744825))

(assert (= (and b!7744425 (is-Star!20582 (regOne!41676 r!14126))) b!7744826))

(assert (= (and b!7744425 (is-Union!20582 (regOne!41676 r!14126))) b!7744827))

(declare-fun b!7744829 () Bool)

(declare-fun e!4591735 () Bool)

(declare-fun tp!2272695 () Bool)

(declare-fun tp!2272693 () Bool)

(assert (=> b!7744829 (= e!4591735 (and tp!2272695 tp!2272693))))

(declare-fun b!7744831 () Bool)

(declare-fun tp!2272692 () Bool)

(declare-fun tp!2272691 () Bool)

(assert (=> b!7744831 (= e!4591735 (and tp!2272692 tp!2272691))))

(declare-fun b!7744830 () Bool)

(declare-fun tp!2272694 () Bool)

(assert (=> b!7744830 (= e!4591735 tp!2272694)))

(declare-fun b!7744828 () Bool)

(assert (=> b!7744828 (= e!4591735 tp_is_empty!51519)))

(assert (=> b!7744425 (= tp!2272643 e!4591735)))

(assert (= (and b!7744425 (is-ElementMatch!20582 (regTwo!41676 r!14126))) b!7744828))

(assert (= (and b!7744425 (is-Concat!29427 (regTwo!41676 r!14126))) b!7744829))

(assert (= (and b!7744425 (is-Star!20582 (regTwo!41676 r!14126))) b!7744830))

(assert (= (and b!7744425 (is-Union!20582 (regTwo!41676 r!14126))) b!7744831))

(declare-fun b!7744836 () Bool)

(declare-fun e!4591738 () Bool)

(declare-fun tp!2272698 () Bool)

(assert (=> b!7744836 (= e!4591738 (and tp_is_empty!51519 tp!2272698))))

(assert (=> b!7744422 (= tp!2272642 e!4591738)))

(assert (= (and b!7744422 (is-Cons!73305 (t!388164 s!9605))) b!7744836))

(declare-fun b!7744838 () Bool)

(declare-fun e!4591739 () Bool)

(declare-fun tp!2272703 () Bool)

(declare-fun tp!2272701 () Bool)

(assert (=> b!7744838 (= e!4591739 (and tp!2272703 tp!2272701))))

(declare-fun b!7744840 () Bool)

(declare-fun tp!2272700 () Bool)

(declare-fun tp!2272699 () Bool)

(assert (=> b!7744840 (= e!4591739 (and tp!2272700 tp!2272699))))

(declare-fun b!7744839 () Bool)

(declare-fun tp!2272702 () Bool)

(assert (=> b!7744839 (= e!4591739 tp!2272702)))

(declare-fun b!7744837 () Bool)

(assert (=> b!7744837 (= e!4591739 tp_is_empty!51519)))

(assert (=> b!7744427 (= tp!2272646 e!4591739)))

(assert (= (and b!7744427 (is-ElementMatch!20582 (reg!20911 r!14126))) b!7744837))

(assert (= (and b!7744427 (is-Concat!29427 (reg!20911 r!14126))) b!7744838))

(assert (= (and b!7744427 (is-Star!20582 (reg!20911 r!14126))) b!7744839))

(assert (= (and b!7744427 (is-Union!20582 (reg!20911 r!14126))) b!7744840))

(declare-fun b_lambda!289381 () Bool)

(assert (= b_lambda!289379 (or b!7744426 b_lambda!289381)))

(declare-fun bs!1965364 () Bool)

(declare-fun d!2342003 () Bool)

(assert (= bs!1965364 (and d!2342003 b!7744426)))

(declare-fun res!3087741 () Bool)

(declare-fun e!4591740 () Bool)

(assert (=> bs!1965364 (=> (not res!3087741) (not e!4591740))))

(assert (=> bs!1965364 (= res!3087741 (= (++!17781 (_1!38112 lt!2668372) (_2!38112 lt!2668372)) s!9605))))

(assert (=> bs!1965364 (= (dynLambda!29975 lambda!471595 lt!2668372) e!4591740)))

(declare-fun b!7744841 () Bool)

(declare-fun res!3087742 () Bool)

(assert (=> b!7744841 (=> (not res!3087742) (not e!4591740))))

(assert (=> b!7744841 (= res!3087742 (matchRSpec!4647 (regOne!41676 r!14126) (_1!38112 lt!2668372)))))

(declare-fun b!7744842 () Bool)

(assert (=> b!7744842 (= e!4591740 (matchRSpec!4647 (regTwo!41676 r!14126) (_2!38112 lt!2668372)))))

(assert (= (and bs!1965364 res!3087741) b!7744841))

(assert (= (and b!7744841 res!3087742) b!7744842))

(declare-fun m!8213282 () Bool)

(assert (=> bs!1965364 m!8213282))

(declare-fun m!8213284 () Bool)

(assert (=> b!7744841 m!8213284))

(declare-fun m!8213286 () Bool)

(assert (=> b!7744842 m!8213286))

(assert (=> d!2341973 d!2342003))

(push 1)

(assert (not b!7744546))

(assert (not b!7744798))

(assert (not b!7744654))

(assert (not b!7744691))

(assert (not b!7744800))

(assert (not b!7744797))

(assert (not bs!1965364))

(assert (not bm!717778))

(assert (not b_lambda!289381))

(assert (not d!2341955))

(assert (not b!7744687))

(assert (not b!7744825))

(assert (not b!7744524))

(assert (not bm!717768))

(assert (not b!7744827))

(assert (not b!7744588))

(assert (not d!2341987))

(assert (not bm!717787))

(assert (not b!7744532))

(assert (not b!7744804))

(assert (not b!7744526))

(assert (not b!7744817))

(assert (not b!7744568))

(assert (not d!2341973))

(assert (not b!7744799))

(assert (not b!7744698))

(assert (not b!7744720))

(assert (not b!7744577))

(assert (not d!2341981))

(assert (not b!7744841))

(assert (not b!7744821))

(assert (not b!7744712))

(assert (not b!7744840))

(assert (not b!7744802))

(assert (not b!7744831))

(assert (not bm!717792))

(assert (not d!2341979))

(assert (not b!7744581))

(assert (not d!2341953))

(assert (not bm!717788))

(assert (not d!2341997))

(assert (not b!7744714))

(assert (not b!7744665))

(assert (not b!7744829))

(assert (not b!7744826))

(assert (not bm!717790))

(assert (not b!7744697))

(assert (not b!7744545))

(assert (not bm!717786))

(assert (not b!7744695))

(assert (not b!7744830))

(assert (not bm!717793))

(assert (not b!7744839))

(assert (not b!7744836))

(assert (not b!7744718))

(assert (not b!7744534))

(assert (not b!7744655))

(assert (not d!2341991))

(assert (not d!2341989))

(assert (not b!7744579))

(assert (not b!7744528))

(assert (not b!7744822))

(assert (not b!7744838))

(assert (not b!7744721))

(assert (not b!7744666))

(assert (not b!7744535))

(assert (not b!7744585))

(assert (not bm!717785))

(assert (not bm!717794))

(assert (not b!7744842))

(assert (not b!7744823))

(assert (not b!7744818))

(assert (not d!2341947))

(assert (not bm!717777))

(assert tp_is_empty!51519)

(assert (not b!7744701))

(assert (not d!2341995))

(assert (not b!7744710))

(assert (not bm!717776))

(assert (not b!7744689))

(assert (not d!2341971))

(assert (not b!7744587))

(assert (not d!2341949))

(assert (not d!2341965))

(assert (not b!7744819))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

