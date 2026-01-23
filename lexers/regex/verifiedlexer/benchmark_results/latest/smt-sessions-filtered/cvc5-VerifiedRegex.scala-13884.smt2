; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!737922 () Bool)

(assert start!737922)

(declare-fun b!7730936 () Bool)

(assert (=> b!7730936 true))

(assert (=> b!7730936 true))

(declare-fun bs!1963481 () Bool)

(declare-fun b!7730934 () Bool)

(assert (= bs!1963481 (and b!7730934 b!7730936)))

(declare-fun lambda!471257 () Int)

(declare-fun lambda!471256 () Int)

(assert (=> bs!1963481 (not (= lambda!471257 lambda!471256))))

(assert (=> b!7730934 true))

(assert (=> b!7730934 true))

(declare-fun res!3083500 () Bool)

(declare-fun e!4584701 () Bool)

(assert (=> start!737922 (=> (not res!3083500) (not e!4584701))))

(declare-datatypes ((C!41450 0))(
  ( (C!41451 (val!31165 Int)) )
))
(declare-datatypes ((Regex!20562 0))(
  ( (ElementMatch!20562 (c!1425427 C!41450)) (Concat!29407 (regOne!41636 Regex!20562) (regTwo!41636 Regex!20562)) (EmptyExpr!20562) (Star!20562 (reg!20891 Regex!20562)) (EmptyLang!20562) (Union!20562 (regOne!41637 Regex!20562) (regTwo!41637 Regex!20562)) )
))
(declare-fun r!14126 () Regex!20562)

(declare-fun validRegex!10980 (Regex!20562) Bool)

(assert (=> start!737922 (= res!3083500 (validRegex!10980 r!14126))))

(assert (=> start!737922 e!4584701))

(declare-fun e!4584702 () Bool)

(assert (=> start!737922 e!4584702))

(declare-fun e!4584703 () Bool)

(assert (=> start!737922 e!4584703))

(declare-fun b!7730930 () Bool)

(declare-fun tp!2268561 () Bool)

(declare-fun tp!2268562 () Bool)

(assert (=> b!7730930 (= e!4584702 (and tp!2268561 tp!2268562))))

(declare-fun b!7730931 () Bool)

(declare-fun e!4584698 () Bool)

(declare-fun e!4584700 () Bool)

(assert (=> b!7730931 (= e!4584698 e!4584700)))

(declare-fun res!3083498 () Bool)

(assert (=> b!7730931 (=> res!3083498 e!4584700)))

(declare-fun Exists!4683 (Int) Bool)

(assert (=> b!7730931 (= res!3083498 (not (Exists!4683 lambda!471256)))))

(declare-fun lt!2667068 () Bool)

(assert (=> b!7730931 lt!2667068))

(declare-datatypes ((Unit!168196 0))(
  ( (Unit!168197) )
))
(declare-fun lt!2667066 () Unit!168196)

(declare-datatypes ((List!73409 0))(
  ( (Nil!73285) (Cons!73285 (h!79733 C!41450) (t!388144 List!73409)) )
))
(declare-fun s!9605 () List!73409)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!325 (Regex!20562 Regex!20562 List!73409) Unit!168196)

(assert (=> b!7730931 (= lt!2667066 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!325 (regOne!41636 r!14126) (regTwo!41636 r!14126) s!9605))))

(declare-fun b!7730932 () Bool)

(declare-fun tp_is_empty!51479 () Bool)

(assert (=> b!7730932 (= e!4584702 tp_is_empty!51479)))

(declare-fun b!7730933 () Bool)

(declare-fun e!4584699 () Bool)

(declare-fun matchRSpec!4638 (Regex!20562 List!73409) Bool)

(assert (=> b!7730933 (= e!4584699 (matchRSpec!4638 r!14126 s!9605))))

(assert (=> b!7730934 (= e!4584700 e!4584699)))

(declare-fun res!3083501 () Bool)

(assert (=> b!7730934 (=> res!3083501 e!4584699)))

(assert (=> b!7730934 (= res!3083501 (not (Exists!4683 lambda!471257)))))

(declare-fun lt!2667065 () Unit!168196)

(declare-datatypes ((tuple2!69578 0))(
  ( (tuple2!69579 (_1!38092 List!73409) (_2!38092 List!73409)) )
))
(declare-fun lt!2667069 () tuple2!69578)

(declare-fun ExistsThe!59 (tuple2!69578 Int) Unit!168196)

(assert (=> b!7730934 (= lt!2667065 (ExistsThe!59 lt!2667069 lambda!471257))))

(declare-fun matchR!10054 (Regex!20562 List!73409) Bool)

(assert (=> b!7730934 (= (matchR!10054 (regTwo!41636 r!14126) (_2!38092 lt!2667069)) (matchRSpec!4638 (regTwo!41636 r!14126) (_2!38092 lt!2667069)))))

(declare-fun lt!2667070 () Unit!168196)

(declare-fun mainMatchTheorem!4611 (Regex!20562 List!73409) Unit!168196)

(assert (=> b!7730934 (= lt!2667070 (mainMatchTheorem!4611 (regTwo!41636 r!14126) (_2!38092 lt!2667069)))))

(assert (=> b!7730934 (= (matchR!10054 (regOne!41636 r!14126) (_1!38092 lt!2667069)) (matchRSpec!4638 (regOne!41636 r!14126) (_1!38092 lt!2667069)))))

(declare-fun lt!2667067 () Unit!168196)

(assert (=> b!7730934 (= lt!2667067 (mainMatchTheorem!4611 (regOne!41636 r!14126) (_1!38092 lt!2667069)))))

(declare-fun pickWitness!529 (Int) tuple2!69578)

(assert (=> b!7730934 (= lt!2667069 (pickWitness!529 lambda!471256))))

(declare-fun b!7730935 () Bool)

(declare-fun res!3083497 () Bool)

(assert (=> b!7730935 (=> (not res!3083497) (not e!4584701))))

(assert (=> b!7730935 (= res!3083497 (and (not (is-EmptyExpr!20562 r!14126)) (not (is-EmptyLang!20562 r!14126)) (not (is-ElementMatch!20562 r!14126)) (not (is-Union!20562 r!14126)) (not (is-Star!20562 r!14126))))))

(assert (=> b!7730936 (= e!4584701 (not e!4584698))))

(declare-fun res!3083499 () Bool)

(assert (=> b!7730936 (=> res!3083499 e!4584698)))

(assert (=> b!7730936 (= res!3083499 (not (matchR!10054 r!14126 s!9605)))))

(assert (=> b!7730936 (= lt!2667068 (Exists!4683 lambda!471256))))

(declare-datatypes ((Option!17583 0))(
  ( (None!17582) (Some!17582 (v!54717 tuple2!69578)) )
))
(declare-fun isDefined!14199 (Option!17583) Bool)

(declare-fun findConcatSeparation!3613 (Regex!20562 Regex!20562 List!73409 List!73409 List!73409) Option!17583)

(assert (=> b!7730936 (= lt!2667068 (isDefined!14199 (findConcatSeparation!3613 (regOne!41636 r!14126) (regTwo!41636 r!14126) Nil!73285 s!9605 s!9605)))))

(declare-fun lt!2667071 () Unit!168196)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3371 (Regex!20562 Regex!20562 List!73409) Unit!168196)

(assert (=> b!7730936 (= lt!2667071 (lemmaFindConcatSeparationEquivalentToExists!3371 (regOne!41636 r!14126) (regTwo!41636 r!14126) s!9605))))

(declare-fun b!7730937 () Bool)

(declare-fun tp!2268563 () Bool)

(assert (=> b!7730937 (= e!4584702 tp!2268563)))

(declare-fun b!7730938 () Bool)

(declare-fun tp!2268560 () Bool)

(declare-fun tp!2268559 () Bool)

(assert (=> b!7730938 (= e!4584702 (and tp!2268560 tp!2268559))))

(declare-fun b!7730939 () Bool)

(declare-fun tp!2268558 () Bool)

(assert (=> b!7730939 (= e!4584703 (and tp_is_empty!51479 tp!2268558))))

(assert (= (and start!737922 res!3083500) b!7730935))

(assert (= (and b!7730935 res!3083497) b!7730936))

(assert (= (and b!7730936 (not res!3083499)) b!7730931))

(assert (= (and b!7730931 (not res!3083498)) b!7730934))

(assert (= (and b!7730934 (not res!3083501)) b!7730933))

(assert (= (and start!737922 (is-ElementMatch!20562 r!14126)) b!7730932))

(assert (= (and start!737922 (is-Concat!29407 r!14126)) b!7730930))

(assert (= (and start!737922 (is-Star!20562 r!14126)) b!7730937))

(assert (= (and start!737922 (is-Union!20562 r!14126)) b!7730938))

(assert (= (and start!737922 (is-Cons!73285 s!9605)) b!7730939))

(declare-fun m!8205494 () Bool)

(assert (=> b!7730931 m!8205494))

(declare-fun m!8205496 () Bool)

(assert (=> b!7730931 m!8205496))

(declare-fun m!8205498 () Bool)

(assert (=> b!7730936 m!8205498))

(declare-fun m!8205500 () Bool)

(assert (=> b!7730936 m!8205500))

(assert (=> b!7730936 m!8205494))

(declare-fun m!8205502 () Bool)

(assert (=> b!7730936 m!8205502))

(assert (=> b!7730936 m!8205500))

(declare-fun m!8205504 () Bool)

(assert (=> b!7730936 m!8205504))

(declare-fun m!8205506 () Bool)

(assert (=> b!7730933 m!8205506))

(declare-fun m!8205508 () Bool)

(assert (=> start!737922 m!8205508))

(declare-fun m!8205510 () Bool)

(assert (=> b!7730934 m!8205510))

(declare-fun m!8205512 () Bool)

(assert (=> b!7730934 m!8205512))

(declare-fun m!8205514 () Bool)

(assert (=> b!7730934 m!8205514))

(declare-fun m!8205516 () Bool)

(assert (=> b!7730934 m!8205516))

(declare-fun m!8205518 () Bool)

(assert (=> b!7730934 m!8205518))

(declare-fun m!8205520 () Bool)

(assert (=> b!7730934 m!8205520))

(declare-fun m!8205522 () Bool)

(assert (=> b!7730934 m!8205522))

(declare-fun m!8205524 () Bool)

(assert (=> b!7730934 m!8205524))

(declare-fun m!8205526 () Bool)

(assert (=> b!7730934 m!8205526))

(push 1)

(assert (not start!737922))

(assert (not b!7730939))

(assert (not b!7730934))

(assert (not b!7730933))

(assert (not b!7730937))

(assert tp_is_empty!51479)

(assert (not b!7730931))

(assert (not b!7730930))

(assert (not b!7730936))

(assert (not b!7730938))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2339473 () Bool)

(declare-fun choose!59302 (Int) Bool)

(assert (=> d!2339473 (= (Exists!4683 lambda!471256) (choose!59302 lambda!471256))))

(declare-fun bs!1963483 () Bool)

(assert (= bs!1963483 d!2339473))

(declare-fun m!8205562 () Bool)

(assert (=> bs!1963483 m!8205562))

(assert (=> b!7730931 d!2339473))

(declare-fun d!2339475 () Bool)

(assert (=> d!2339475 (isDefined!14199 (findConcatSeparation!3613 (regOne!41636 r!14126) (regTwo!41636 r!14126) Nil!73285 s!9605 s!9605))))

(declare-fun lt!2667095 () Unit!168196)

(declare-fun choose!59303 (Regex!20562 Regex!20562 List!73409) Unit!168196)

(assert (=> d!2339475 (= lt!2667095 (choose!59303 (regOne!41636 r!14126) (regTwo!41636 r!14126) s!9605))))

(assert (=> d!2339475 (validRegex!10980 (regOne!41636 r!14126))))

(assert (=> d!2339475 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!325 (regOne!41636 r!14126) (regTwo!41636 r!14126) s!9605) lt!2667095)))

(declare-fun bs!1963484 () Bool)

(assert (= bs!1963484 d!2339475))

(assert (=> bs!1963484 m!8205500))

(assert (=> bs!1963484 m!8205500))

(assert (=> bs!1963484 m!8205504))

(declare-fun m!8205564 () Bool)

(assert (=> bs!1963484 m!8205564))

(declare-fun m!8205566 () Bool)

(assert (=> bs!1963484 m!8205566))

(assert (=> b!7730931 d!2339475))

(declare-fun b!7731027 () Bool)

(declare-fun e!4584749 () Bool)

(declare-fun nullable!9037 (Regex!20562) Bool)

(assert (=> b!7731027 (= e!4584749 (nullable!9037 r!14126))))

(declare-fun b!7731028 () Bool)

(declare-fun e!4584752 () Bool)

(declare-fun lt!2667098 () Bool)

(assert (=> b!7731028 (= e!4584752 (not lt!2667098))))

(declare-fun b!7731029 () Bool)

(declare-fun res!3083558 () Bool)

(declare-fun e!4584751 () Bool)

(assert (=> b!7731029 (=> res!3083558 e!4584751)))

(declare-fun isEmpty!41958 (List!73409) Bool)

(declare-fun tail!15337 (List!73409) List!73409)

(assert (=> b!7731029 (= res!3083558 (not (isEmpty!41958 (tail!15337 s!9605))))))

(declare-fun b!7731030 () Bool)

(declare-fun res!3083557 () Bool)

(declare-fun e!4584750 () Bool)

(assert (=> b!7731030 (=> res!3083557 e!4584750)))

(declare-fun e!4584746 () Bool)

(assert (=> b!7731030 (= res!3083557 e!4584746)))

(declare-fun res!3083559 () Bool)

(assert (=> b!7731030 (=> (not res!3083559) (not e!4584746))))

(assert (=> b!7731030 (= res!3083559 lt!2667098)))

(declare-fun b!7731031 () Bool)

(declare-fun derivativeStep!5997 (Regex!20562 C!41450) Regex!20562)

(declare-fun head!15797 (List!73409) C!41450)

(assert (=> b!7731031 (= e!4584749 (matchR!10054 (derivativeStep!5997 r!14126 (head!15797 s!9605)) (tail!15337 s!9605)))))

(declare-fun b!7731032 () Bool)

(assert (=> b!7731032 (= e!4584746 (= (head!15797 s!9605) (c!1425427 r!14126)))))

(declare-fun bm!715496 () Bool)

(declare-fun call!715501 () Bool)

(assert (=> bm!715496 (= call!715501 (isEmpty!41958 s!9605))))

(declare-fun b!7731033 () Bool)

(declare-fun res!3083554 () Bool)

(assert (=> b!7731033 (=> (not res!3083554) (not e!4584746))))

(assert (=> b!7731033 (= res!3083554 (isEmpty!41958 (tail!15337 s!9605)))))

(declare-fun b!7731034 () Bool)

(declare-fun e!4584747 () Bool)

(assert (=> b!7731034 (= e!4584750 e!4584747)))

(declare-fun res!3083556 () Bool)

(assert (=> b!7731034 (=> (not res!3083556) (not e!4584747))))

(assert (=> b!7731034 (= res!3083556 (not lt!2667098))))

(declare-fun b!7731035 () Bool)

(assert (=> b!7731035 (= e!4584751 (not (= (head!15797 s!9605) (c!1425427 r!14126))))))

(declare-fun b!7731036 () Bool)

(declare-fun e!4584748 () Bool)

(assert (=> b!7731036 (= e!4584748 e!4584752)))

(declare-fun c!1425435 () Bool)

(assert (=> b!7731036 (= c!1425435 (is-EmptyLang!20562 r!14126))))

(declare-fun b!7731037 () Bool)

(declare-fun res!3083555 () Bool)

(assert (=> b!7731037 (=> (not res!3083555) (not e!4584746))))

(assert (=> b!7731037 (= res!3083555 (not call!715501))))

(declare-fun b!7731026 () Bool)

(assert (=> b!7731026 (= e!4584748 (= lt!2667098 call!715501))))

(declare-fun d!2339477 () Bool)

(assert (=> d!2339477 e!4584748))

(declare-fun c!1425437 () Bool)

(assert (=> d!2339477 (= c!1425437 (is-EmptyExpr!20562 r!14126))))

(assert (=> d!2339477 (= lt!2667098 e!4584749)))

(declare-fun c!1425436 () Bool)

(assert (=> d!2339477 (= c!1425436 (isEmpty!41958 s!9605))))

(assert (=> d!2339477 (validRegex!10980 r!14126)))

(assert (=> d!2339477 (= (matchR!10054 r!14126 s!9605) lt!2667098)))

(declare-fun b!7731038 () Bool)

(declare-fun res!3083553 () Bool)

(assert (=> b!7731038 (=> res!3083553 e!4584750)))

(assert (=> b!7731038 (= res!3083553 (not (is-ElementMatch!20562 r!14126)))))

(assert (=> b!7731038 (= e!4584752 e!4584750)))

(declare-fun b!7731039 () Bool)

(assert (=> b!7731039 (= e!4584747 e!4584751)))

(declare-fun res!3083560 () Bool)

(assert (=> b!7731039 (=> res!3083560 e!4584751)))

(assert (=> b!7731039 (= res!3083560 call!715501)))

(assert (= (and d!2339477 c!1425436) b!7731027))

(assert (= (and d!2339477 (not c!1425436)) b!7731031))

(assert (= (and d!2339477 c!1425437) b!7731026))

(assert (= (and d!2339477 (not c!1425437)) b!7731036))

(assert (= (and b!7731036 c!1425435) b!7731028))

(assert (= (and b!7731036 (not c!1425435)) b!7731038))

(assert (= (and b!7731038 (not res!3083553)) b!7731030))

(assert (= (and b!7731030 res!3083559) b!7731037))

(assert (= (and b!7731037 res!3083555) b!7731033))

(assert (= (and b!7731033 res!3083554) b!7731032))

(assert (= (and b!7731030 (not res!3083557)) b!7731034))

(assert (= (and b!7731034 res!3083556) b!7731039))

(assert (= (and b!7731039 (not res!3083560)) b!7731029))

(assert (= (and b!7731029 (not res!3083558)) b!7731035))

(assert (= (or b!7731026 b!7731037 b!7731039) bm!715496))

(declare-fun m!8205568 () Bool)

(assert (=> bm!715496 m!8205568))

(declare-fun m!8205570 () Bool)

(assert (=> b!7731031 m!8205570))

(assert (=> b!7731031 m!8205570))

(declare-fun m!8205572 () Bool)

(assert (=> b!7731031 m!8205572))

(declare-fun m!8205574 () Bool)

(assert (=> b!7731031 m!8205574))

(assert (=> b!7731031 m!8205572))

(assert (=> b!7731031 m!8205574))

(declare-fun m!8205576 () Bool)

(assert (=> b!7731031 m!8205576))

(assert (=> d!2339477 m!8205568))

(assert (=> d!2339477 m!8205508))

(declare-fun m!8205578 () Bool)

(assert (=> b!7731027 m!8205578))

(assert (=> b!7731029 m!8205574))

(assert (=> b!7731029 m!8205574))

(declare-fun m!8205580 () Bool)

(assert (=> b!7731029 m!8205580))

(assert (=> b!7731033 m!8205574))

(assert (=> b!7731033 m!8205574))

(assert (=> b!7731033 m!8205580))

(assert (=> b!7731035 m!8205570))

(assert (=> b!7731032 m!8205570))

(assert (=> b!7730936 d!2339477))

(declare-fun bs!1963485 () Bool)

(declare-fun d!2339481 () Bool)

(assert (= bs!1963485 (and d!2339481 b!7730936)))

(declare-fun lambda!471272 () Int)

(assert (=> bs!1963485 (= lambda!471272 lambda!471256)))

(declare-fun bs!1963486 () Bool)

(assert (= bs!1963486 (and d!2339481 b!7730934)))

(assert (=> bs!1963486 (not (= lambda!471272 lambda!471257))))

(assert (=> d!2339481 true))

(assert (=> d!2339481 true))

(assert (=> d!2339481 true))

(assert (=> d!2339481 (= (isDefined!14199 (findConcatSeparation!3613 (regOne!41636 r!14126) (regTwo!41636 r!14126) Nil!73285 s!9605 s!9605)) (Exists!4683 lambda!471272))))

(declare-fun lt!2667101 () Unit!168196)

(declare-fun choose!59304 (Regex!20562 Regex!20562 List!73409) Unit!168196)

(assert (=> d!2339481 (= lt!2667101 (choose!59304 (regOne!41636 r!14126) (regTwo!41636 r!14126) s!9605))))

(assert (=> d!2339481 (validRegex!10980 (regOne!41636 r!14126))))

(assert (=> d!2339481 (= (lemmaFindConcatSeparationEquivalentToExists!3371 (regOne!41636 r!14126) (regTwo!41636 r!14126) s!9605) lt!2667101)))

(declare-fun bs!1963487 () Bool)

(assert (= bs!1963487 d!2339481))

(assert (=> bs!1963487 m!8205566))

(assert (=> bs!1963487 m!8205500))

(assert (=> bs!1963487 m!8205504))

(declare-fun m!8205582 () Bool)

(assert (=> bs!1963487 m!8205582))

(assert (=> bs!1963487 m!8205500))

(declare-fun m!8205584 () Bool)

(assert (=> bs!1963487 m!8205584))

(assert (=> b!7730936 d!2339481))

(declare-fun b!7731090 () Bool)

(declare-fun lt!2667110 () Unit!168196)

(declare-fun lt!2667112 () Unit!168196)

(assert (=> b!7731090 (= lt!2667110 lt!2667112)))

(declare-fun ++!17763 (List!73409 List!73409) List!73409)

(assert (=> b!7731090 (= (++!17763 (++!17763 Nil!73285 (Cons!73285 (h!79733 s!9605) Nil!73285)) (t!388144 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3314 (List!73409 C!41450 List!73409 List!73409) Unit!168196)

(assert (=> b!7731090 (= lt!2667112 (lemmaMoveElementToOtherListKeepsConcatEq!3314 Nil!73285 (h!79733 s!9605) (t!388144 s!9605) s!9605))))

(declare-fun e!4584779 () Option!17583)

(assert (=> b!7731090 (= e!4584779 (findConcatSeparation!3613 (regOne!41636 r!14126) (regTwo!41636 r!14126) (++!17763 Nil!73285 (Cons!73285 (h!79733 s!9605) Nil!73285)) (t!388144 s!9605) s!9605))))

(declare-fun b!7731091 () Bool)

(declare-fun res!3083594 () Bool)

(declare-fun e!4584780 () Bool)

(assert (=> b!7731091 (=> (not res!3083594) (not e!4584780))))

(declare-fun lt!2667111 () Option!17583)

(declare-fun get!26034 (Option!17583) tuple2!69578)

(assert (=> b!7731091 (= res!3083594 (matchR!10054 (regOne!41636 r!14126) (_1!38092 (get!26034 lt!2667111))))))

(declare-fun b!7731093 () Bool)

(declare-fun e!4584781 () Option!17583)

(assert (=> b!7731093 (= e!4584781 e!4584779)))

(declare-fun c!1425449 () Bool)

(assert (=> b!7731093 (= c!1425449 (is-Nil!73285 s!9605))))

(declare-fun b!7731094 () Bool)

(declare-fun e!4584783 () Bool)

(assert (=> b!7731094 (= e!4584783 (matchR!10054 (regTwo!41636 r!14126) s!9605))))

(declare-fun b!7731095 () Bool)

(declare-fun e!4584782 () Bool)

(assert (=> b!7731095 (= e!4584782 (not (isDefined!14199 lt!2667111)))))

(declare-fun b!7731096 () Bool)

(assert (=> b!7731096 (= e!4584779 None!17582)))

(declare-fun b!7731092 () Bool)

(declare-fun res!3083595 () Bool)

(assert (=> b!7731092 (=> (not res!3083595) (not e!4584780))))

(assert (=> b!7731092 (= res!3083595 (matchR!10054 (regTwo!41636 r!14126) (_2!38092 (get!26034 lt!2667111))))))

(declare-fun d!2339483 () Bool)

(assert (=> d!2339483 e!4584782))

(declare-fun res!3083592 () Bool)

(assert (=> d!2339483 (=> res!3083592 e!4584782)))

(assert (=> d!2339483 (= res!3083592 e!4584780)))

(declare-fun res!3083591 () Bool)

(assert (=> d!2339483 (=> (not res!3083591) (not e!4584780))))

(assert (=> d!2339483 (= res!3083591 (isDefined!14199 lt!2667111))))

(assert (=> d!2339483 (= lt!2667111 e!4584781)))

(declare-fun c!1425448 () Bool)

(assert (=> d!2339483 (= c!1425448 e!4584783)))

(declare-fun res!3083593 () Bool)

(assert (=> d!2339483 (=> (not res!3083593) (not e!4584783))))

(assert (=> d!2339483 (= res!3083593 (matchR!10054 (regOne!41636 r!14126) Nil!73285))))

(assert (=> d!2339483 (validRegex!10980 (regOne!41636 r!14126))))

(assert (=> d!2339483 (= (findConcatSeparation!3613 (regOne!41636 r!14126) (regTwo!41636 r!14126) Nil!73285 s!9605 s!9605) lt!2667111)))

(declare-fun b!7731097 () Bool)

(assert (=> b!7731097 (= e!4584781 (Some!17582 (tuple2!69579 Nil!73285 s!9605)))))

(declare-fun b!7731098 () Bool)

(assert (=> b!7731098 (= e!4584780 (= (++!17763 (_1!38092 (get!26034 lt!2667111)) (_2!38092 (get!26034 lt!2667111))) s!9605))))

(assert (= (and d!2339483 res!3083593) b!7731094))

(assert (= (and d!2339483 c!1425448) b!7731097))

(assert (= (and d!2339483 (not c!1425448)) b!7731093))

(assert (= (and b!7731093 c!1425449) b!7731096))

(assert (= (and b!7731093 (not c!1425449)) b!7731090))

(assert (= (and d!2339483 res!3083591) b!7731091))

(assert (= (and b!7731091 res!3083594) b!7731092))

(assert (= (and b!7731092 res!3083595) b!7731098))

(assert (= (and d!2339483 (not res!3083592)) b!7731095))

(declare-fun m!8205586 () Bool)

(assert (=> b!7731092 m!8205586))

(declare-fun m!8205588 () Bool)

(assert (=> b!7731092 m!8205588))

(declare-fun m!8205590 () Bool)

(assert (=> b!7731095 m!8205590))

(assert (=> b!7731098 m!8205586))

(declare-fun m!8205592 () Bool)

(assert (=> b!7731098 m!8205592))

(declare-fun m!8205594 () Bool)

(assert (=> b!7731094 m!8205594))

(assert (=> b!7731091 m!8205586))

(declare-fun m!8205596 () Bool)

(assert (=> b!7731091 m!8205596))

(declare-fun m!8205598 () Bool)

(assert (=> b!7731090 m!8205598))

(assert (=> b!7731090 m!8205598))

(declare-fun m!8205600 () Bool)

(assert (=> b!7731090 m!8205600))

(declare-fun m!8205602 () Bool)

(assert (=> b!7731090 m!8205602))

(assert (=> b!7731090 m!8205598))

(declare-fun m!8205604 () Bool)

(assert (=> b!7731090 m!8205604))

(assert (=> d!2339483 m!8205590))

(declare-fun m!8205606 () Bool)

(assert (=> d!2339483 m!8205606))

(assert (=> d!2339483 m!8205566))

(assert (=> b!7730936 d!2339483))

(declare-fun d!2339485 () Bool)

(declare-fun isEmpty!41959 (Option!17583) Bool)

(assert (=> d!2339485 (= (isDefined!14199 (findConcatSeparation!3613 (regOne!41636 r!14126) (regTwo!41636 r!14126) Nil!73285 s!9605 s!9605)) (not (isEmpty!41959 (findConcatSeparation!3613 (regOne!41636 r!14126) (regTwo!41636 r!14126) Nil!73285 s!9605 s!9605))))))

(declare-fun bs!1963488 () Bool)

(assert (= bs!1963488 d!2339485))

(assert (=> bs!1963488 m!8205500))

(declare-fun m!8205608 () Bool)

(assert (=> bs!1963488 m!8205608))

(assert (=> b!7730936 d!2339485))

(assert (=> b!7730936 d!2339473))

(declare-fun bs!1963489 () Bool)

(declare-fun b!7731153 () Bool)

(assert (= bs!1963489 (and b!7731153 b!7730936)))

(declare-fun lambda!471277 () Int)

(assert (=> bs!1963489 (not (= lambda!471277 lambda!471256))))

(declare-fun bs!1963490 () Bool)

(assert (= bs!1963490 (and b!7731153 b!7730934)))

(assert (=> bs!1963490 (not (= lambda!471277 lambda!471257))))

(declare-fun bs!1963491 () Bool)

(assert (= bs!1963491 (and b!7731153 d!2339481)))

(assert (=> bs!1963491 (not (= lambda!471277 lambda!471272))))

(assert (=> b!7731153 true))

(assert (=> b!7731153 true))

(declare-fun bs!1963492 () Bool)

(declare-fun b!7731151 () Bool)

(assert (= bs!1963492 (and b!7731151 b!7730936)))

(declare-fun lambda!471278 () Int)

(assert (=> bs!1963492 (not (= lambda!471278 lambda!471256))))

(declare-fun bs!1963493 () Bool)

(assert (= bs!1963493 (and b!7731151 b!7730934)))

(assert (=> bs!1963493 (= lambda!471278 lambda!471257)))

(declare-fun bs!1963494 () Bool)

(assert (= bs!1963494 (and b!7731151 d!2339481)))

(assert (=> bs!1963494 (not (= lambda!471278 lambda!471272))))

(declare-fun bs!1963495 () Bool)

(assert (= bs!1963495 (and b!7731151 b!7731153)))

(assert (=> bs!1963495 (not (= lambda!471278 lambda!471277))))

(assert (=> b!7731151 true))

(assert (=> b!7731151 true))

(declare-fun b!7731145 () Bool)

(declare-fun res!3083622 () Bool)

(declare-fun e!4584814 () Bool)

(assert (=> b!7731145 (=> res!3083622 e!4584814)))

(declare-fun call!715510 () Bool)

(assert (=> b!7731145 (= res!3083622 call!715510)))

(declare-fun e!4584811 () Bool)

(assert (=> b!7731145 (= e!4584811 e!4584814)))

(declare-fun d!2339487 () Bool)

(declare-fun c!1425463 () Bool)

(assert (=> d!2339487 (= c!1425463 (is-EmptyExpr!20562 r!14126))))

(declare-fun e!4584813 () Bool)

(assert (=> d!2339487 (= (matchRSpec!4638 r!14126 s!9605) e!4584813)))

(declare-fun b!7731146 () Bool)

(assert (=> b!7731146 (= e!4584813 call!715510)))

(declare-fun bm!715504 () Bool)

(declare-fun call!715509 () Bool)

(declare-fun c!1425464 () Bool)

(assert (=> bm!715504 (= call!715509 (Exists!4683 (ite c!1425464 lambda!471277 lambda!471278)))))

(declare-fun b!7731147 () Bool)

(declare-fun e!4584812 () Bool)

(assert (=> b!7731147 (= e!4584812 (= s!9605 (Cons!73285 (c!1425427 r!14126) Nil!73285)))))

(declare-fun b!7731148 () Bool)

(declare-fun c!1425461 () Bool)

(assert (=> b!7731148 (= c!1425461 (is-Union!20562 r!14126))))

(declare-fun e!4584810 () Bool)

(assert (=> b!7731148 (= e!4584812 e!4584810)))

(declare-fun b!7731149 () Bool)

(declare-fun c!1425462 () Bool)

(assert (=> b!7731149 (= c!1425462 (is-ElementMatch!20562 r!14126))))

(declare-fun e!4584809 () Bool)

(assert (=> b!7731149 (= e!4584809 e!4584812)))

(declare-fun b!7731150 () Bool)

(declare-fun e!4584815 () Bool)

(assert (=> b!7731150 (= e!4584810 e!4584815)))

(declare-fun res!3083621 () Bool)

(assert (=> b!7731150 (= res!3083621 (matchRSpec!4638 (regOne!41637 r!14126) s!9605))))

(assert (=> b!7731150 (=> res!3083621 e!4584815)))

(assert (=> b!7731151 (= e!4584811 call!715509)))

(declare-fun b!7731152 () Bool)

(assert (=> b!7731152 (= e!4584813 e!4584809)))

(declare-fun res!3083620 () Bool)

(assert (=> b!7731152 (= res!3083620 (not (is-EmptyLang!20562 r!14126)))))

(assert (=> b!7731152 (=> (not res!3083620) (not e!4584809))))

(assert (=> b!7731153 (= e!4584814 call!715509)))

(declare-fun b!7731154 () Bool)

(assert (=> b!7731154 (= e!4584815 (matchRSpec!4638 (regTwo!41637 r!14126) s!9605))))

(declare-fun bm!715505 () Bool)

(assert (=> bm!715505 (= call!715510 (isEmpty!41958 s!9605))))

(declare-fun b!7731155 () Bool)

(assert (=> b!7731155 (= e!4584810 e!4584811)))

(assert (=> b!7731155 (= c!1425464 (is-Star!20562 r!14126))))

(assert (= (and d!2339487 c!1425463) b!7731146))

(assert (= (and d!2339487 (not c!1425463)) b!7731152))

(assert (= (and b!7731152 res!3083620) b!7731149))

(assert (= (and b!7731149 c!1425462) b!7731147))

(assert (= (and b!7731149 (not c!1425462)) b!7731148))

(assert (= (and b!7731148 c!1425461) b!7731150))

(assert (= (and b!7731148 (not c!1425461)) b!7731155))

(assert (= (and b!7731150 (not res!3083621)) b!7731154))

(assert (= (and b!7731155 c!1425464) b!7731145))

(assert (= (and b!7731155 (not c!1425464)) b!7731151))

(assert (= (and b!7731145 (not res!3083622)) b!7731153))

(assert (= (or b!7731153 b!7731151) bm!715504))

(assert (= (or b!7731146 b!7731145) bm!715505))

(declare-fun m!8205624 () Bool)

(assert (=> bm!715504 m!8205624))

(declare-fun m!8205626 () Bool)

(assert (=> b!7731150 m!8205626))

(declare-fun m!8205628 () Bool)

(assert (=> b!7731154 m!8205628))

(assert (=> bm!715505 m!8205568))

(assert (=> b!7730933 d!2339487))

(declare-fun b!7731178 () Bool)

(declare-fun e!4584836 () Bool)

(declare-fun call!715517 () Bool)

(assert (=> b!7731178 (= e!4584836 call!715517)))

(declare-fun b!7731179 () Bool)

(declare-fun e!4584835 () Bool)

(declare-fun e!4584833 () Bool)

(assert (=> b!7731179 (= e!4584835 e!4584833)))

(declare-fun c!1425469 () Bool)

(assert (=> b!7731179 (= c!1425469 (is-Union!20562 r!14126))))

(declare-fun b!7731180 () Bool)

(declare-fun res!3083640 () Bool)

(declare-fun e!4584834 () Bool)

(assert (=> b!7731180 (=> res!3083640 e!4584834)))

(assert (=> b!7731180 (= res!3083640 (not (is-Concat!29407 r!14126)))))

(assert (=> b!7731180 (= e!4584833 e!4584834)))

(declare-fun bm!715512 () Bool)

(declare-fun call!715518 () Bool)

(assert (=> bm!715512 (= call!715518 (validRegex!10980 (ite c!1425469 (regOne!41637 r!14126) (regOne!41636 r!14126))))))

(declare-fun bm!715513 () Bool)

(declare-fun call!715519 () Bool)

(assert (=> bm!715513 (= call!715519 call!715517)))

(declare-fun b!7731182 () Bool)

(declare-fun e!4584837 () Bool)

(assert (=> b!7731182 (= e!4584837 call!715519)))

(declare-fun b!7731183 () Bool)

(declare-fun e!4584832 () Bool)

(assert (=> b!7731183 (= e!4584832 e!4584835)))

(declare-fun c!1425470 () Bool)

(assert (=> b!7731183 (= c!1425470 (is-Star!20562 r!14126))))

(declare-fun b!7731184 () Bool)

(assert (=> b!7731184 (= e!4584835 e!4584836)))

(declare-fun res!3083637 () Bool)

(assert (=> b!7731184 (= res!3083637 (not (nullable!9037 (reg!20891 r!14126))))))

(assert (=> b!7731184 (=> (not res!3083637) (not e!4584836))))

(declare-fun bm!715514 () Bool)

(assert (=> bm!715514 (= call!715517 (validRegex!10980 (ite c!1425470 (reg!20891 r!14126) (ite c!1425469 (regTwo!41637 r!14126) (regTwo!41636 r!14126)))))))

(declare-fun b!7731185 () Bool)

(declare-fun e!4584838 () Bool)

(assert (=> b!7731185 (= e!4584834 e!4584838)))

(declare-fun res!3083638 () Bool)

(assert (=> b!7731185 (=> (not res!3083638) (not e!4584838))))

(assert (=> b!7731185 (= res!3083638 call!715518)))

(declare-fun b!7731186 () Bool)

(assert (=> b!7731186 (= e!4584838 call!715519)))

(declare-fun b!7731181 () Bool)

(declare-fun res!3083639 () Bool)

(assert (=> b!7731181 (=> (not res!3083639) (not e!4584837))))

(assert (=> b!7731181 (= res!3083639 call!715518)))

(assert (=> b!7731181 (= e!4584833 e!4584837)))

(declare-fun d!2339491 () Bool)

(declare-fun res!3083641 () Bool)

(assert (=> d!2339491 (=> res!3083641 e!4584832)))

(assert (=> d!2339491 (= res!3083641 (is-ElementMatch!20562 r!14126))))

(assert (=> d!2339491 (= (validRegex!10980 r!14126) e!4584832)))

(assert (= (and d!2339491 (not res!3083641)) b!7731183))

(assert (= (and b!7731183 c!1425470) b!7731184))

(assert (= (and b!7731183 (not c!1425470)) b!7731179))

(assert (= (and b!7731184 res!3083637) b!7731178))

(assert (= (and b!7731179 c!1425469) b!7731181))

(assert (= (and b!7731179 (not c!1425469)) b!7731180))

(assert (= (and b!7731181 res!3083639) b!7731182))

(assert (= (and b!7731180 (not res!3083640)) b!7731185))

(assert (= (and b!7731185 res!3083638) b!7731186))

(assert (= (or b!7731181 b!7731185) bm!715512))

(assert (= (or b!7731182 b!7731186) bm!715513))

(assert (= (or b!7731178 bm!715513) bm!715514))

(declare-fun m!8205630 () Bool)

(assert (=> bm!715512 m!8205630))

(declare-fun m!8205632 () Bool)

(assert (=> b!7731184 m!8205632))

(declare-fun m!8205634 () Bool)

(assert (=> bm!715514 m!8205634))

(assert (=> start!737922 d!2339491))

(declare-fun d!2339493 () Bool)

(assert (=> d!2339493 (= (Exists!4683 lambda!471257) (choose!59302 lambda!471257))))

(declare-fun bs!1963497 () Bool)

(assert (= bs!1963497 d!2339493))

(declare-fun m!8205636 () Bool)

(assert (=> bs!1963497 m!8205636))

(assert (=> b!7730934 d!2339493))

(declare-fun d!2339495 () Bool)

(declare-fun lt!2667119 () tuple2!69578)

(declare-fun dynLambda!29966 (Int tuple2!69578) Bool)

(assert (=> d!2339495 (dynLambda!29966 lambda!471256 lt!2667119)))

(declare-fun choose!59305 (Int) tuple2!69578)

(assert (=> d!2339495 (= lt!2667119 (choose!59305 lambda!471256))))

(assert (=> d!2339495 (Exists!4683 lambda!471256)))

(assert (=> d!2339495 (= (pickWitness!529 lambda!471256) lt!2667119)))

(declare-fun b_lambda!289315 () Bool)

(assert (=> (not b_lambda!289315) (not d!2339495)))

(declare-fun bs!1963500 () Bool)

(assert (= bs!1963500 d!2339495))

(declare-fun m!8205644 () Bool)

(assert (=> bs!1963500 m!8205644))

(declare-fun m!8205646 () Bool)

(assert (=> bs!1963500 m!8205646))

(assert (=> bs!1963500 m!8205494))

(assert (=> b!7730934 d!2339495))

(declare-fun b!7731188 () Bool)

(declare-fun e!4584842 () Bool)

(assert (=> b!7731188 (= e!4584842 (nullable!9037 (regTwo!41636 r!14126)))))

(declare-fun b!7731189 () Bool)

(declare-fun e!4584845 () Bool)

(declare-fun lt!2667120 () Bool)

(assert (=> b!7731189 (= e!4584845 (not lt!2667120))))

(declare-fun b!7731190 () Bool)

(declare-fun res!3083647 () Bool)

(declare-fun e!4584844 () Bool)

(assert (=> b!7731190 (=> res!3083647 e!4584844)))

(assert (=> b!7731190 (= res!3083647 (not (isEmpty!41958 (tail!15337 (_2!38092 lt!2667069)))))))

(declare-fun b!7731191 () Bool)

(declare-fun res!3083646 () Bool)

(declare-fun e!4584843 () Bool)

(assert (=> b!7731191 (=> res!3083646 e!4584843)))

(declare-fun e!4584839 () Bool)

(assert (=> b!7731191 (= res!3083646 e!4584839)))

(declare-fun res!3083648 () Bool)

(assert (=> b!7731191 (=> (not res!3083648) (not e!4584839))))

(assert (=> b!7731191 (= res!3083648 lt!2667120)))

(declare-fun b!7731192 () Bool)

(assert (=> b!7731192 (= e!4584842 (matchR!10054 (derivativeStep!5997 (regTwo!41636 r!14126) (head!15797 (_2!38092 lt!2667069))) (tail!15337 (_2!38092 lt!2667069))))))

(declare-fun b!7731193 () Bool)

(assert (=> b!7731193 (= e!4584839 (= (head!15797 (_2!38092 lt!2667069)) (c!1425427 (regTwo!41636 r!14126))))))

(declare-fun bm!715515 () Bool)

(declare-fun call!715520 () Bool)

(assert (=> bm!715515 (= call!715520 (isEmpty!41958 (_2!38092 lt!2667069)))))

(declare-fun b!7731194 () Bool)

(declare-fun res!3083643 () Bool)

(assert (=> b!7731194 (=> (not res!3083643) (not e!4584839))))

(assert (=> b!7731194 (= res!3083643 (isEmpty!41958 (tail!15337 (_2!38092 lt!2667069))))))

(declare-fun b!7731195 () Bool)

(declare-fun e!4584840 () Bool)

(assert (=> b!7731195 (= e!4584843 e!4584840)))

(declare-fun res!3083645 () Bool)

(assert (=> b!7731195 (=> (not res!3083645) (not e!4584840))))

(assert (=> b!7731195 (= res!3083645 (not lt!2667120))))

(declare-fun b!7731196 () Bool)

(assert (=> b!7731196 (= e!4584844 (not (= (head!15797 (_2!38092 lt!2667069)) (c!1425427 (regTwo!41636 r!14126)))))))

(declare-fun b!7731197 () Bool)

(declare-fun e!4584841 () Bool)

(assert (=> b!7731197 (= e!4584841 e!4584845)))

(declare-fun c!1425471 () Bool)

(assert (=> b!7731197 (= c!1425471 (is-EmptyLang!20562 (regTwo!41636 r!14126)))))

(declare-fun b!7731198 () Bool)

(declare-fun res!3083644 () Bool)

(assert (=> b!7731198 (=> (not res!3083644) (not e!4584839))))

(assert (=> b!7731198 (= res!3083644 (not call!715520))))

(declare-fun b!7731187 () Bool)

(assert (=> b!7731187 (= e!4584841 (= lt!2667120 call!715520))))

(declare-fun d!2339499 () Bool)

(assert (=> d!2339499 e!4584841))

(declare-fun c!1425473 () Bool)

(assert (=> d!2339499 (= c!1425473 (is-EmptyExpr!20562 (regTwo!41636 r!14126)))))

(assert (=> d!2339499 (= lt!2667120 e!4584842)))

(declare-fun c!1425472 () Bool)

(assert (=> d!2339499 (= c!1425472 (isEmpty!41958 (_2!38092 lt!2667069)))))

(assert (=> d!2339499 (validRegex!10980 (regTwo!41636 r!14126))))

(assert (=> d!2339499 (= (matchR!10054 (regTwo!41636 r!14126) (_2!38092 lt!2667069)) lt!2667120)))

(declare-fun b!7731199 () Bool)

(declare-fun res!3083642 () Bool)

(assert (=> b!7731199 (=> res!3083642 e!4584843)))

(assert (=> b!7731199 (= res!3083642 (not (is-ElementMatch!20562 (regTwo!41636 r!14126))))))

(assert (=> b!7731199 (= e!4584845 e!4584843)))

(declare-fun b!7731200 () Bool)

(assert (=> b!7731200 (= e!4584840 e!4584844)))

(declare-fun res!3083649 () Bool)

(assert (=> b!7731200 (=> res!3083649 e!4584844)))

(assert (=> b!7731200 (= res!3083649 call!715520)))

(assert (= (and d!2339499 c!1425472) b!7731188))

(assert (= (and d!2339499 (not c!1425472)) b!7731192))

(assert (= (and d!2339499 c!1425473) b!7731187))

(assert (= (and d!2339499 (not c!1425473)) b!7731197))

(assert (= (and b!7731197 c!1425471) b!7731189))

(assert (= (and b!7731197 (not c!1425471)) b!7731199))

(assert (= (and b!7731199 (not res!3083642)) b!7731191))

(assert (= (and b!7731191 res!3083648) b!7731198))

(assert (= (and b!7731198 res!3083644) b!7731194))

(assert (= (and b!7731194 res!3083643) b!7731193))

(assert (= (and b!7731191 (not res!3083646)) b!7731195))

(assert (= (and b!7731195 res!3083645) b!7731200))

(assert (= (and b!7731200 (not res!3083649)) b!7731190))

(assert (= (and b!7731190 (not res!3083647)) b!7731196))

(assert (= (or b!7731187 b!7731198 b!7731200) bm!715515))

(declare-fun m!8205648 () Bool)

(assert (=> bm!715515 m!8205648))

(declare-fun m!8205650 () Bool)

(assert (=> b!7731192 m!8205650))

(assert (=> b!7731192 m!8205650))

(declare-fun m!8205652 () Bool)

(assert (=> b!7731192 m!8205652))

(declare-fun m!8205654 () Bool)

(assert (=> b!7731192 m!8205654))

(assert (=> b!7731192 m!8205652))

(assert (=> b!7731192 m!8205654))

(declare-fun m!8205656 () Bool)

(assert (=> b!7731192 m!8205656))

(assert (=> d!2339499 m!8205648))

(declare-fun m!8205658 () Bool)

(assert (=> d!2339499 m!8205658))

(declare-fun m!8205660 () Bool)

(assert (=> b!7731188 m!8205660))

(assert (=> b!7731190 m!8205654))

(assert (=> b!7731190 m!8205654))

(declare-fun m!8205662 () Bool)

(assert (=> b!7731190 m!8205662))

(assert (=> b!7731194 m!8205654))

(assert (=> b!7731194 m!8205654))

(assert (=> b!7731194 m!8205662))

(assert (=> b!7731196 m!8205650))

(assert (=> b!7731193 m!8205650))

(assert (=> b!7730934 d!2339499))

(declare-fun b!7731202 () Bool)

(declare-fun e!4584849 () Bool)

(assert (=> b!7731202 (= e!4584849 (nullable!9037 (regOne!41636 r!14126)))))

(declare-fun b!7731203 () Bool)

(declare-fun e!4584852 () Bool)

(declare-fun lt!2667121 () Bool)

(assert (=> b!7731203 (= e!4584852 (not lt!2667121))))

(declare-fun b!7731204 () Bool)

(declare-fun res!3083655 () Bool)

(declare-fun e!4584851 () Bool)

(assert (=> b!7731204 (=> res!3083655 e!4584851)))

(assert (=> b!7731204 (= res!3083655 (not (isEmpty!41958 (tail!15337 (_1!38092 lt!2667069)))))))

(declare-fun b!7731205 () Bool)

(declare-fun res!3083654 () Bool)

(declare-fun e!4584850 () Bool)

(assert (=> b!7731205 (=> res!3083654 e!4584850)))

(declare-fun e!4584846 () Bool)

(assert (=> b!7731205 (= res!3083654 e!4584846)))

(declare-fun res!3083656 () Bool)

(assert (=> b!7731205 (=> (not res!3083656) (not e!4584846))))

(assert (=> b!7731205 (= res!3083656 lt!2667121)))

(declare-fun b!7731206 () Bool)

(assert (=> b!7731206 (= e!4584849 (matchR!10054 (derivativeStep!5997 (regOne!41636 r!14126) (head!15797 (_1!38092 lt!2667069))) (tail!15337 (_1!38092 lt!2667069))))))

(declare-fun b!7731207 () Bool)

(assert (=> b!7731207 (= e!4584846 (= (head!15797 (_1!38092 lt!2667069)) (c!1425427 (regOne!41636 r!14126))))))

(declare-fun bm!715516 () Bool)

(declare-fun call!715521 () Bool)

(assert (=> bm!715516 (= call!715521 (isEmpty!41958 (_1!38092 lt!2667069)))))

(declare-fun b!7731208 () Bool)

(declare-fun res!3083651 () Bool)

(assert (=> b!7731208 (=> (not res!3083651) (not e!4584846))))

(assert (=> b!7731208 (= res!3083651 (isEmpty!41958 (tail!15337 (_1!38092 lt!2667069))))))

(declare-fun b!7731209 () Bool)

(declare-fun e!4584847 () Bool)

(assert (=> b!7731209 (= e!4584850 e!4584847)))

(declare-fun res!3083653 () Bool)

(assert (=> b!7731209 (=> (not res!3083653) (not e!4584847))))

(assert (=> b!7731209 (= res!3083653 (not lt!2667121))))

(declare-fun b!7731210 () Bool)

(assert (=> b!7731210 (= e!4584851 (not (= (head!15797 (_1!38092 lt!2667069)) (c!1425427 (regOne!41636 r!14126)))))))

(declare-fun b!7731211 () Bool)

(declare-fun e!4584848 () Bool)

(assert (=> b!7731211 (= e!4584848 e!4584852)))

(declare-fun c!1425474 () Bool)

(assert (=> b!7731211 (= c!1425474 (is-EmptyLang!20562 (regOne!41636 r!14126)))))

(declare-fun b!7731212 () Bool)

(declare-fun res!3083652 () Bool)

(assert (=> b!7731212 (=> (not res!3083652) (not e!4584846))))

(assert (=> b!7731212 (= res!3083652 (not call!715521))))

(declare-fun b!7731201 () Bool)

(assert (=> b!7731201 (= e!4584848 (= lt!2667121 call!715521))))

(declare-fun d!2339501 () Bool)

(assert (=> d!2339501 e!4584848))

(declare-fun c!1425476 () Bool)

(assert (=> d!2339501 (= c!1425476 (is-EmptyExpr!20562 (regOne!41636 r!14126)))))

(assert (=> d!2339501 (= lt!2667121 e!4584849)))

(declare-fun c!1425475 () Bool)

(assert (=> d!2339501 (= c!1425475 (isEmpty!41958 (_1!38092 lt!2667069)))))

(assert (=> d!2339501 (validRegex!10980 (regOne!41636 r!14126))))

(assert (=> d!2339501 (= (matchR!10054 (regOne!41636 r!14126) (_1!38092 lt!2667069)) lt!2667121)))

(declare-fun b!7731213 () Bool)

(declare-fun res!3083650 () Bool)

(assert (=> b!7731213 (=> res!3083650 e!4584850)))

(assert (=> b!7731213 (= res!3083650 (not (is-ElementMatch!20562 (regOne!41636 r!14126))))))

(assert (=> b!7731213 (= e!4584852 e!4584850)))

(declare-fun b!7731214 () Bool)

(assert (=> b!7731214 (= e!4584847 e!4584851)))

(declare-fun res!3083657 () Bool)

(assert (=> b!7731214 (=> res!3083657 e!4584851)))

(assert (=> b!7731214 (= res!3083657 call!715521)))

(assert (= (and d!2339501 c!1425475) b!7731202))

(assert (= (and d!2339501 (not c!1425475)) b!7731206))

(assert (= (and d!2339501 c!1425476) b!7731201))

(assert (= (and d!2339501 (not c!1425476)) b!7731211))

(assert (= (and b!7731211 c!1425474) b!7731203))

(assert (= (and b!7731211 (not c!1425474)) b!7731213))

(assert (= (and b!7731213 (not res!3083650)) b!7731205))

(assert (= (and b!7731205 res!3083656) b!7731212))

(assert (= (and b!7731212 res!3083652) b!7731208))

(assert (= (and b!7731208 res!3083651) b!7731207))

(assert (= (and b!7731205 (not res!3083654)) b!7731209))

(assert (= (and b!7731209 res!3083653) b!7731214))

(assert (= (and b!7731214 (not res!3083657)) b!7731204))

(assert (= (and b!7731204 (not res!3083655)) b!7731210))

(assert (= (or b!7731201 b!7731212 b!7731214) bm!715516))

(declare-fun m!8205666 () Bool)

(assert (=> bm!715516 m!8205666))

(declare-fun m!8205668 () Bool)

(assert (=> b!7731206 m!8205668))

(assert (=> b!7731206 m!8205668))

(declare-fun m!8205670 () Bool)

(assert (=> b!7731206 m!8205670))

(declare-fun m!8205672 () Bool)

(assert (=> b!7731206 m!8205672))

(assert (=> b!7731206 m!8205670))

(assert (=> b!7731206 m!8205672))

(declare-fun m!8205674 () Bool)

(assert (=> b!7731206 m!8205674))

(assert (=> d!2339501 m!8205666))

(assert (=> d!2339501 m!8205566))

(declare-fun m!8205676 () Bool)

(assert (=> b!7731202 m!8205676))

(assert (=> b!7731204 m!8205672))

(assert (=> b!7731204 m!8205672))

(declare-fun m!8205678 () Bool)

(assert (=> b!7731204 m!8205678))

(assert (=> b!7731208 m!8205672))

(assert (=> b!7731208 m!8205672))

(assert (=> b!7731208 m!8205678))

(assert (=> b!7731210 m!8205668))

(assert (=> b!7731207 m!8205668))

(assert (=> b!7730934 d!2339501))

(declare-fun bs!1963503 () Bool)

(declare-fun b!7731223 () Bool)

(assert (= bs!1963503 (and b!7731223 d!2339481)))

(declare-fun lambda!471282 () Int)

(assert (=> bs!1963503 (not (= lambda!471282 lambda!471272))))

(declare-fun bs!1963504 () Bool)

(assert (= bs!1963504 (and b!7731223 b!7731153)))

(assert (=> bs!1963504 (= (and (= (_2!38092 lt!2667069) s!9605) (= (reg!20891 (regTwo!41636 r!14126)) (reg!20891 r!14126)) (= (regTwo!41636 r!14126) r!14126)) (= lambda!471282 lambda!471277))))

(declare-fun bs!1963505 () Bool)

(assert (= bs!1963505 (and b!7731223 b!7731151)))

(assert (=> bs!1963505 (not (= lambda!471282 lambda!471278))))

(declare-fun bs!1963506 () Bool)

(assert (= bs!1963506 (and b!7731223 b!7730936)))

(assert (=> bs!1963506 (not (= lambda!471282 lambda!471256))))

(declare-fun bs!1963507 () Bool)

(assert (= bs!1963507 (and b!7731223 b!7730934)))

(assert (=> bs!1963507 (not (= lambda!471282 lambda!471257))))

(assert (=> b!7731223 true))

(assert (=> b!7731223 true))

(declare-fun bs!1963508 () Bool)

(declare-fun b!7731221 () Bool)

(assert (= bs!1963508 (and b!7731221 d!2339481)))

(declare-fun lambda!471283 () Int)

(assert (=> bs!1963508 (not (= lambda!471283 lambda!471272))))

(declare-fun bs!1963509 () Bool)

(assert (= bs!1963509 (and b!7731221 b!7731223)))

(assert (=> bs!1963509 (not (= lambda!471283 lambda!471282))))

(declare-fun bs!1963510 () Bool)

(assert (= bs!1963510 (and b!7731221 b!7731153)))

(assert (=> bs!1963510 (not (= lambda!471283 lambda!471277))))

(declare-fun bs!1963511 () Bool)

(assert (= bs!1963511 (and b!7731221 b!7731151)))

(assert (=> bs!1963511 (= (and (= (_2!38092 lt!2667069) s!9605) (= (regOne!41636 (regTwo!41636 r!14126)) (regOne!41636 r!14126)) (= (regTwo!41636 (regTwo!41636 r!14126)) (regTwo!41636 r!14126))) (= lambda!471283 lambda!471278))))

(declare-fun bs!1963512 () Bool)

(assert (= bs!1963512 (and b!7731221 b!7730936)))

(assert (=> bs!1963512 (not (= lambda!471283 lambda!471256))))

(declare-fun bs!1963513 () Bool)

(assert (= bs!1963513 (and b!7731221 b!7730934)))

(assert (=> bs!1963513 (= (and (= (_2!38092 lt!2667069) s!9605) (= (regOne!41636 (regTwo!41636 r!14126)) (regOne!41636 r!14126)) (= (regTwo!41636 (regTwo!41636 r!14126)) (regTwo!41636 r!14126))) (= lambda!471283 lambda!471257))))

(assert (=> b!7731221 true))

(assert (=> b!7731221 true))

(declare-fun b!7731215 () Bool)

(declare-fun res!3083660 () Bool)

(declare-fun e!4584858 () Bool)

(assert (=> b!7731215 (=> res!3083660 e!4584858)))

(declare-fun call!715523 () Bool)

(assert (=> b!7731215 (= res!3083660 call!715523)))

(declare-fun e!4584855 () Bool)

(assert (=> b!7731215 (= e!4584855 e!4584858)))

(declare-fun d!2339505 () Bool)

(declare-fun c!1425479 () Bool)

(assert (=> d!2339505 (= c!1425479 (is-EmptyExpr!20562 (regTwo!41636 r!14126)))))

(declare-fun e!4584857 () Bool)

(assert (=> d!2339505 (= (matchRSpec!4638 (regTwo!41636 r!14126) (_2!38092 lt!2667069)) e!4584857)))

(declare-fun b!7731216 () Bool)

(assert (=> b!7731216 (= e!4584857 call!715523)))

(declare-fun call!715522 () Bool)

(declare-fun bm!715517 () Bool)

(declare-fun c!1425480 () Bool)

(assert (=> bm!715517 (= call!715522 (Exists!4683 (ite c!1425480 lambda!471282 lambda!471283)))))

(declare-fun b!7731217 () Bool)

(declare-fun e!4584856 () Bool)

(assert (=> b!7731217 (= e!4584856 (= (_2!38092 lt!2667069) (Cons!73285 (c!1425427 (regTwo!41636 r!14126)) Nil!73285)))))

(declare-fun b!7731218 () Bool)

(declare-fun c!1425477 () Bool)

(assert (=> b!7731218 (= c!1425477 (is-Union!20562 (regTwo!41636 r!14126)))))

(declare-fun e!4584854 () Bool)

(assert (=> b!7731218 (= e!4584856 e!4584854)))

(declare-fun b!7731219 () Bool)

(declare-fun c!1425478 () Bool)

(assert (=> b!7731219 (= c!1425478 (is-ElementMatch!20562 (regTwo!41636 r!14126)))))

(declare-fun e!4584853 () Bool)

(assert (=> b!7731219 (= e!4584853 e!4584856)))

(declare-fun b!7731220 () Bool)

(declare-fun e!4584859 () Bool)

(assert (=> b!7731220 (= e!4584854 e!4584859)))

(declare-fun res!3083659 () Bool)

(assert (=> b!7731220 (= res!3083659 (matchRSpec!4638 (regOne!41637 (regTwo!41636 r!14126)) (_2!38092 lt!2667069)))))

(assert (=> b!7731220 (=> res!3083659 e!4584859)))

(assert (=> b!7731221 (= e!4584855 call!715522)))

(declare-fun b!7731222 () Bool)

(assert (=> b!7731222 (= e!4584857 e!4584853)))

(declare-fun res!3083658 () Bool)

(assert (=> b!7731222 (= res!3083658 (not (is-EmptyLang!20562 (regTwo!41636 r!14126))))))

(assert (=> b!7731222 (=> (not res!3083658) (not e!4584853))))

(assert (=> b!7731223 (= e!4584858 call!715522)))

(declare-fun b!7731224 () Bool)

(assert (=> b!7731224 (= e!4584859 (matchRSpec!4638 (regTwo!41637 (regTwo!41636 r!14126)) (_2!38092 lt!2667069)))))

(declare-fun bm!715518 () Bool)

(assert (=> bm!715518 (= call!715523 (isEmpty!41958 (_2!38092 lt!2667069)))))

(declare-fun b!7731225 () Bool)

(assert (=> b!7731225 (= e!4584854 e!4584855)))

(assert (=> b!7731225 (= c!1425480 (is-Star!20562 (regTwo!41636 r!14126)))))

(assert (= (and d!2339505 c!1425479) b!7731216))

(assert (= (and d!2339505 (not c!1425479)) b!7731222))

(assert (= (and b!7731222 res!3083658) b!7731219))

(assert (= (and b!7731219 c!1425478) b!7731217))

(assert (= (and b!7731219 (not c!1425478)) b!7731218))

(assert (= (and b!7731218 c!1425477) b!7731220))

(assert (= (and b!7731218 (not c!1425477)) b!7731225))

(assert (= (and b!7731220 (not res!3083659)) b!7731224))

(assert (= (and b!7731225 c!1425480) b!7731215))

(assert (= (and b!7731225 (not c!1425480)) b!7731221))

(assert (= (and b!7731215 (not res!3083660)) b!7731223))

(assert (= (or b!7731223 b!7731221) bm!715517))

(assert (= (or b!7731216 b!7731215) bm!715518))

(declare-fun m!8205682 () Bool)

(assert (=> bm!715517 m!8205682))

(declare-fun m!8205684 () Bool)

(assert (=> b!7731220 m!8205684))

(declare-fun m!8205686 () Bool)

(assert (=> b!7731224 m!8205686))

(assert (=> bm!715518 m!8205648))

(assert (=> b!7730934 d!2339505))

(declare-fun d!2339509 () Bool)

(assert (=> d!2339509 (= (matchR!10054 (regOne!41636 r!14126) (_1!38092 lt!2667069)) (matchRSpec!4638 (regOne!41636 r!14126) (_1!38092 lt!2667069)))))

(declare-fun lt!2667124 () Unit!168196)

(declare-fun choose!59306 (Regex!20562 List!73409) Unit!168196)

(assert (=> d!2339509 (= lt!2667124 (choose!59306 (regOne!41636 r!14126) (_1!38092 lt!2667069)))))

(assert (=> d!2339509 (validRegex!10980 (regOne!41636 r!14126))))

(assert (=> d!2339509 (= (mainMatchTheorem!4611 (regOne!41636 r!14126) (_1!38092 lt!2667069)) lt!2667124)))

(declare-fun bs!1963514 () Bool)

(assert (= bs!1963514 d!2339509))

(assert (=> bs!1963514 m!8205518))

(assert (=> bs!1963514 m!8205526))

(declare-fun m!8205688 () Bool)

(assert (=> bs!1963514 m!8205688))

(assert (=> bs!1963514 m!8205566))

(assert (=> b!7730934 d!2339509))

(declare-fun bs!1963515 () Bool)

(declare-fun b!7731234 () Bool)

(assert (= bs!1963515 (and b!7731234 d!2339481)))

(declare-fun lambda!471284 () Int)

(assert (=> bs!1963515 (not (= lambda!471284 lambda!471272))))

(declare-fun bs!1963516 () Bool)

(assert (= bs!1963516 (and b!7731234 b!7731223)))

(assert (=> bs!1963516 (= (and (= (_1!38092 lt!2667069) (_2!38092 lt!2667069)) (= (reg!20891 (regOne!41636 r!14126)) (reg!20891 (regTwo!41636 r!14126))) (= (regOne!41636 r!14126) (regTwo!41636 r!14126))) (= lambda!471284 lambda!471282))))

(declare-fun bs!1963517 () Bool)

(assert (= bs!1963517 (and b!7731234 b!7731153)))

(assert (=> bs!1963517 (= (and (= (_1!38092 lt!2667069) s!9605) (= (reg!20891 (regOne!41636 r!14126)) (reg!20891 r!14126)) (= (regOne!41636 r!14126) r!14126)) (= lambda!471284 lambda!471277))))

(declare-fun bs!1963518 () Bool)

(assert (= bs!1963518 (and b!7731234 b!7731221)))

(assert (=> bs!1963518 (not (= lambda!471284 lambda!471283))))

(declare-fun bs!1963519 () Bool)

(assert (= bs!1963519 (and b!7731234 b!7731151)))

(assert (=> bs!1963519 (not (= lambda!471284 lambda!471278))))

(declare-fun bs!1963520 () Bool)

(assert (= bs!1963520 (and b!7731234 b!7730936)))

(assert (=> bs!1963520 (not (= lambda!471284 lambda!471256))))

(declare-fun bs!1963521 () Bool)

(assert (= bs!1963521 (and b!7731234 b!7730934)))

(assert (=> bs!1963521 (not (= lambda!471284 lambda!471257))))

(assert (=> b!7731234 true))

(assert (=> b!7731234 true))

(declare-fun bs!1963522 () Bool)

(declare-fun b!7731232 () Bool)

(assert (= bs!1963522 (and b!7731232 d!2339481)))

(declare-fun lambda!471285 () Int)

(assert (=> bs!1963522 (not (= lambda!471285 lambda!471272))))

(declare-fun bs!1963523 () Bool)

(assert (= bs!1963523 (and b!7731232 b!7731223)))

(assert (=> bs!1963523 (not (= lambda!471285 lambda!471282))))

(declare-fun bs!1963524 () Bool)

(assert (= bs!1963524 (and b!7731232 b!7731221)))

(assert (=> bs!1963524 (= (and (= (_1!38092 lt!2667069) (_2!38092 lt!2667069)) (= (regOne!41636 (regOne!41636 r!14126)) (regOne!41636 (regTwo!41636 r!14126))) (= (regTwo!41636 (regOne!41636 r!14126)) (regTwo!41636 (regTwo!41636 r!14126)))) (= lambda!471285 lambda!471283))))

(declare-fun bs!1963525 () Bool)

(assert (= bs!1963525 (and b!7731232 b!7731151)))

(assert (=> bs!1963525 (= (and (= (_1!38092 lt!2667069) s!9605) (= (regOne!41636 (regOne!41636 r!14126)) (regOne!41636 r!14126)) (= (regTwo!41636 (regOne!41636 r!14126)) (regTwo!41636 r!14126))) (= lambda!471285 lambda!471278))))

(declare-fun bs!1963526 () Bool)

(assert (= bs!1963526 (and b!7731232 b!7730936)))

(assert (=> bs!1963526 (not (= lambda!471285 lambda!471256))))

(declare-fun bs!1963527 () Bool)

(assert (= bs!1963527 (and b!7731232 b!7730934)))

(assert (=> bs!1963527 (= (and (= (_1!38092 lt!2667069) s!9605) (= (regOne!41636 (regOne!41636 r!14126)) (regOne!41636 r!14126)) (= (regTwo!41636 (regOne!41636 r!14126)) (regTwo!41636 r!14126))) (= lambda!471285 lambda!471257))))

(declare-fun bs!1963528 () Bool)

(assert (= bs!1963528 (and b!7731232 b!7731153)))

(assert (=> bs!1963528 (not (= lambda!471285 lambda!471277))))

(declare-fun bs!1963529 () Bool)

(assert (= bs!1963529 (and b!7731232 b!7731234)))

(assert (=> bs!1963529 (not (= lambda!471285 lambda!471284))))

(assert (=> b!7731232 true))

(assert (=> b!7731232 true))

(declare-fun b!7731226 () Bool)

(declare-fun res!3083663 () Bool)

(declare-fun e!4584865 () Bool)

(assert (=> b!7731226 (=> res!3083663 e!4584865)))

(declare-fun call!715525 () Bool)

(assert (=> b!7731226 (= res!3083663 call!715525)))

(declare-fun e!4584862 () Bool)

(assert (=> b!7731226 (= e!4584862 e!4584865)))

(declare-fun d!2339511 () Bool)

(declare-fun c!1425483 () Bool)

(assert (=> d!2339511 (= c!1425483 (is-EmptyExpr!20562 (regOne!41636 r!14126)))))

(declare-fun e!4584864 () Bool)

(assert (=> d!2339511 (= (matchRSpec!4638 (regOne!41636 r!14126) (_1!38092 lt!2667069)) e!4584864)))

(declare-fun b!7731227 () Bool)

(assert (=> b!7731227 (= e!4584864 call!715525)))

(declare-fun c!1425484 () Bool)

(declare-fun call!715524 () Bool)

(declare-fun bm!715519 () Bool)

(assert (=> bm!715519 (= call!715524 (Exists!4683 (ite c!1425484 lambda!471284 lambda!471285)))))

(declare-fun b!7731228 () Bool)

(declare-fun e!4584863 () Bool)

(assert (=> b!7731228 (= e!4584863 (= (_1!38092 lt!2667069) (Cons!73285 (c!1425427 (regOne!41636 r!14126)) Nil!73285)))))

(declare-fun b!7731229 () Bool)

(declare-fun c!1425481 () Bool)

(assert (=> b!7731229 (= c!1425481 (is-Union!20562 (regOne!41636 r!14126)))))

(declare-fun e!4584861 () Bool)

(assert (=> b!7731229 (= e!4584863 e!4584861)))

(declare-fun b!7731230 () Bool)

(declare-fun c!1425482 () Bool)

(assert (=> b!7731230 (= c!1425482 (is-ElementMatch!20562 (regOne!41636 r!14126)))))

(declare-fun e!4584860 () Bool)

(assert (=> b!7731230 (= e!4584860 e!4584863)))

(declare-fun b!7731231 () Bool)

(declare-fun e!4584866 () Bool)

(assert (=> b!7731231 (= e!4584861 e!4584866)))

(declare-fun res!3083662 () Bool)

(assert (=> b!7731231 (= res!3083662 (matchRSpec!4638 (regOne!41637 (regOne!41636 r!14126)) (_1!38092 lt!2667069)))))

(assert (=> b!7731231 (=> res!3083662 e!4584866)))

(assert (=> b!7731232 (= e!4584862 call!715524)))

(declare-fun b!7731233 () Bool)

(assert (=> b!7731233 (= e!4584864 e!4584860)))

(declare-fun res!3083661 () Bool)

(assert (=> b!7731233 (= res!3083661 (not (is-EmptyLang!20562 (regOne!41636 r!14126))))))

(assert (=> b!7731233 (=> (not res!3083661) (not e!4584860))))

(assert (=> b!7731234 (= e!4584865 call!715524)))

(declare-fun b!7731235 () Bool)

(assert (=> b!7731235 (= e!4584866 (matchRSpec!4638 (regTwo!41637 (regOne!41636 r!14126)) (_1!38092 lt!2667069)))))

(declare-fun bm!715520 () Bool)

(assert (=> bm!715520 (= call!715525 (isEmpty!41958 (_1!38092 lt!2667069)))))

(declare-fun b!7731236 () Bool)

(assert (=> b!7731236 (= e!4584861 e!4584862)))

(assert (=> b!7731236 (= c!1425484 (is-Star!20562 (regOne!41636 r!14126)))))

(assert (= (and d!2339511 c!1425483) b!7731227))

(assert (= (and d!2339511 (not c!1425483)) b!7731233))

(assert (= (and b!7731233 res!3083661) b!7731230))

(assert (= (and b!7731230 c!1425482) b!7731228))

(assert (= (and b!7731230 (not c!1425482)) b!7731229))

(assert (= (and b!7731229 c!1425481) b!7731231))

(assert (= (and b!7731229 (not c!1425481)) b!7731236))

(assert (= (and b!7731231 (not res!3083662)) b!7731235))

(assert (= (and b!7731236 c!1425484) b!7731226))

(assert (= (and b!7731236 (not c!1425484)) b!7731232))

(assert (= (and b!7731226 (not res!3083663)) b!7731234))

(assert (= (or b!7731234 b!7731232) bm!715519))

(assert (= (or b!7731227 b!7731226) bm!715520))

(declare-fun m!8205690 () Bool)

(assert (=> bm!715519 m!8205690))

(declare-fun m!8205692 () Bool)

(assert (=> b!7731231 m!8205692))

(declare-fun m!8205694 () Bool)

(assert (=> b!7731235 m!8205694))

(assert (=> bm!715520 m!8205666))

(assert (=> b!7730934 d!2339511))

(declare-fun d!2339513 () Bool)

(assert (=> d!2339513 (= (matchR!10054 (regTwo!41636 r!14126) (_2!38092 lt!2667069)) (matchRSpec!4638 (regTwo!41636 r!14126) (_2!38092 lt!2667069)))))

(declare-fun lt!2667125 () Unit!168196)

(assert (=> d!2339513 (= lt!2667125 (choose!59306 (regTwo!41636 r!14126) (_2!38092 lt!2667069)))))

(assert (=> d!2339513 (validRegex!10980 (regTwo!41636 r!14126))))

(assert (=> d!2339513 (= (mainMatchTheorem!4611 (regTwo!41636 r!14126) (_2!38092 lt!2667069)) lt!2667125)))

(declare-fun bs!1963530 () Bool)

(assert (= bs!1963530 d!2339513))

(assert (=> bs!1963530 m!8205516))

(assert (=> bs!1963530 m!8205520))

(declare-fun m!8205696 () Bool)

(assert (=> bs!1963530 m!8205696))

(assert (=> bs!1963530 m!8205658))

(assert (=> b!7730934 d!2339513))

(declare-fun d!2339515 () Bool)

(assert (=> d!2339515 (Exists!4683 lambda!471257)))

(declare-fun lt!2667128 () Unit!168196)

(declare-fun choose!59308 (tuple2!69578 Int) Unit!168196)

(assert (=> d!2339515 (= lt!2667128 (choose!59308 lt!2667069 lambda!471257))))

(assert (=> d!2339515 (dynLambda!29966 lambda!471257 lt!2667069)))

(assert (=> d!2339515 (= (ExistsThe!59 lt!2667069 lambda!471257) lt!2667128)))

(declare-fun b_lambda!289317 () Bool)

(assert (=> (not b_lambda!289317) (not d!2339515)))

(declare-fun bs!1963531 () Bool)

(assert (= bs!1963531 d!2339515))

(assert (=> bs!1963531 m!8205510))

(declare-fun m!8205698 () Bool)

(assert (=> bs!1963531 m!8205698))

(declare-fun m!8205700 () Bool)

(assert (=> bs!1963531 m!8205700))

(assert (=> b!7730934 d!2339515))

(declare-fun b!7731247 () Bool)

(declare-fun e!4584869 () Bool)

(assert (=> b!7731247 (= e!4584869 tp_is_empty!51479)))

(declare-fun b!7731250 () Bool)

(declare-fun tp!2268592 () Bool)

(declare-fun tp!2268594 () Bool)

(assert (=> b!7731250 (= e!4584869 (and tp!2268592 tp!2268594))))

(declare-fun b!7731249 () Bool)

(declare-fun tp!2268596 () Bool)

(assert (=> b!7731249 (= e!4584869 tp!2268596)))

(declare-fun b!7731248 () Bool)

(declare-fun tp!2268593 () Bool)

(declare-fun tp!2268595 () Bool)

(assert (=> b!7731248 (= e!4584869 (and tp!2268593 tp!2268595))))

(assert (=> b!7730937 (= tp!2268563 e!4584869)))

(assert (= (and b!7730937 (is-ElementMatch!20562 (reg!20891 r!14126))) b!7731247))

(assert (= (and b!7730937 (is-Concat!29407 (reg!20891 r!14126))) b!7731248))

(assert (= (and b!7730937 (is-Star!20562 (reg!20891 r!14126))) b!7731249))

(assert (= (and b!7730937 (is-Union!20562 (reg!20891 r!14126))) b!7731250))

(declare-fun b!7731251 () Bool)

(declare-fun e!4584870 () Bool)

(assert (=> b!7731251 (= e!4584870 tp_is_empty!51479)))

(declare-fun b!7731254 () Bool)

(declare-fun tp!2268597 () Bool)

(declare-fun tp!2268599 () Bool)

(assert (=> b!7731254 (= e!4584870 (and tp!2268597 tp!2268599))))

(declare-fun b!7731253 () Bool)

(declare-fun tp!2268601 () Bool)

(assert (=> b!7731253 (= e!4584870 tp!2268601)))

(declare-fun b!7731252 () Bool)

(declare-fun tp!2268598 () Bool)

(declare-fun tp!2268600 () Bool)

(assert (=> b!7731252 (= e!4584870 (and tp!2268598 tp!2268600))))

(assert (=> b!7730938 (= tp!2268560 e!4584870)))

(assert (= (and b!7730938 (is-ElementMatch!20562 (regOne!41637 r!14126))) b!7731251))

(assert (= (and b!7730938 (is-Concat!29407 (regOne!41637 r!14126))) b!7731252))

(assert (= (and b!7730938 (is-Star!20562 (regOne!41637 r!14126))) b!7731253))

(assert (= (and b!7730938 (is-Union!20562 (regOne!41637 r!14126))) b!7731254))

(declare-fun b!7731255 () Bool)

(declare-fun e!4584871 () Bool)

(assert (=> b!7731255 (= e!4584871 tp_is_empty!51479)))

(declare-fun b!7731258 () Bool)

(declare-fun tp!2268602 () Bool)

(declare-fun tp!2268604 () Bool)

(assert (=> b!7731258 (= e!4584871 (and tp!2268602 tp!2268604))))

(declare-fun b!7731257 () Bool)

(declare-fun tp!2268606 () Bool)

(assert (=> b!7731257 (= e!4584871 tp!2268606)))

(declare-fun b!7731256 () Bool)

(declare-fun tp!2268603 () Bool)

(declare-fun tp!2268605 () Bool)

(assert (=> b!7731256 (= e!4584871 (and tp!2268603 tp!2268605))))

(assert (=> b!7730938 (= tp!2268559 e!4584871)))

(assert (= (and b!7730938 (is-ElementMatch!20562 (regTwo!41637 r!14126))) b!7731255))

(assert (= (and b!7730938 (is-Concat!29407 (regTwo!41637 r!14126))) b!7731256))

(assert (= (and b!7730938 (is-Star!20562 (regTwo!41637 r!14126))) b!7731257))

(assert (= (and b!7730938 (is-Union!20562 (regTwo!41637 r!14126))) b!7731258))

(declare-fun b!7731263 () Bool)

(declare-fun e!4584874 () Bool)

(declare-fun tp!2268609 () Bool)

(assert (=> b!7731263 (= e!4584874 (and tp_is_empty!51479 tp!2268609))))

(assert (=> b!7730939 (= tp!2268558 e!4584874)))

(assert (= (and b!7730939 (is-Cons!73285 (t!388144 s!9605))) b!7731263))

(declare-fun b!7731264 () Bool)

(declare-fun e!4584875 () Bool)

(assert (=> b!7731264 (= e!4584875 tp_is_empty!51479)))

(declare-fun b!7731267 () Bool)

(declare-fun tp!2268610 () Bool)

(declare-fun tp!2268612 () Bool)

(assert (=> b!7731267 (= e!4584875 (and tp!2268610 tp!2268612))))

(declare-fun b!7731266 () Bool)

(declare-fun tp!2268614 () Bool)

(assert (=> b!7731266 (= e!4584875 tp!2268614)))

(declare-fun b!7731265 () Bool)

(declare-fun tp!2268611 () Bool)

(declare-fun tp!2268613 () Bool)

(assert (=> b!7731265 (= e!4584875 (and tp!2268611 tp!2268613))))

(assert (=> b!7730930 (= tp!2268561 e!4584875)))

(assert (= (and b!7730930 (is-ElementMatch!20562 (regOne!41636 r!14126))) b!7731264))

(assert (= (and b!7730930 (is-Concat!29407 (regOne!41636 r!14126))) b!7731265))

(assert (= (and b!7730930 (is-Star!20562 (regOne!41636 r!14126))) b!7731266))

(assert (= (and b!7730930 (is-Union!20562 (regOne!41636 r!14126))) b!7731267))

(declare-fun b!7731268 () Bool)

(declare-fun e!4584876 () Bool)

(assert (=> b!7731268 (= e!4584876 tp_is_empty!51479)))

(declare-fun b!7731271 () Bool)

(declare-fun tp!2268615 () Bool)

(declare-fun tp!2268617 () Bool)

(assert (=> b!7731271 (= e!4584876 (and tp!2268615 tp!2268617))))

(declare-fun b!7731270 () Bool)

(declare-fun tp!2268619 () Bool)

(assert (=> b!7731270 (= e!4584876 tp!2268619)))

(declare-fun b!7731269 () Bool)

(declare-fun tp!2268616 () Bool)

(declare-fun tp!2268618 () Bool)

(assert (=> b!7731269 (= e!4584876 (and tp!2268616 tp!2268618))))

(assert (=> b!7730930 (= tp!2268562 e!4584876)))

(assert (= (and b!7730930 (is-ElementMatch!20562 (regTwo!41636 r!14126))) b!7731268))

(assert (= (and b!7730930 (is-Concat!29407 (regTwo!41636 r!14126))) b!7731269))

(assert (= (and b!7730930 (is-Star!20562 (regTwo!41636 r!14126))) b!7731270))

(assert (= (and b!7730930 (is-Union!20562 (regTwo!41636 r!14126))) b!7731271))

(declare-fun b_lambda!289319 () Bool)

(assert (= b_lambda!289317 (or b!7730934 b_lambda!289319)))

(declare-fun bs!1963532 () Bool)

(declare-fun d!2339517 () Bool)

(assert (= bs!1963532 (and d!2339517 b!7730934)))

(declare-fun res!3083664 () Bool)

(declare-fun e!4584877 () Bool)

(assert (=> bs!1963532 (=> (not res!3083664) (not e!4584877))))

(assert (=> bs!1963532 (= res!3083664 (= (++!17763 (_1!38092 lt!2667069) (_2!38092 lt!2667069)) s!9605))))

(assert (=> bs!1963532 (= (dynLambda!29966 lambda!471257 lt!2667069) e!4584877)))

(declare-fun b!7731272 () Bool)

(declare-fun res!3083665 () Bool)

(assert (=> b!7731272 (=> (not res!3083665) (not e!4584877))))

(assert (=> b!7731272 (= res!3083665 (matchRSpec!4638 (regOne!41636 r!14126) (_1!38092 lt!2667069)))))

(declare-fun b!7731273 () Bool)

(assert (=> b!7731273 (= e!4584877 (matchRSpec!4638 (regTwo!41636 r!14126) (_2!38092 lt!2667069)))))

(assert (= (and bs!1963532 res!3083664) b!7731272))

(assert (= (and b!7731272 res!3083665) b!7731273))

(declare-fun m!8205702 () Bool)

(assert (=> bs!1963532 m!8205702))

(assert (=> b!7731272 m!8205526))

(assert (=> b!7731273 m!8205520))

(assert (=> d!2339515 d!2339517))

(declare-fun b_lambda!289321 () Bool)

(assert (= b_lambda!289315 (or b!7730936 b_lambda!289321)))

(declare-fun bs!1963533 () Bool)

(declare-fun d!2339519 () Bool)

(assert (= bs!1963533 (and d!2339519 b!7730936)))

(declare-fun res!3083666 () Bool)

(declare-fun e!4584878 () Bool)

(assert (=> bs!1963533 (=> (not res!3083666) (not e!4584878))))

(assert (=> bs!1963533 (= res!3083666 (= (++!17763 (_1!38092 lt!2667119) (_2!38092 lt!2667119)) s!9605))))

(assert (=> bs!1963533 (= (dynLambda!29966 lambda!471256 lt!2667119) e!4584878)))

(declare-fun b!7731274 () Bool)

(declare-fun res!3083667 () Bool)

(assert (=> b!7731274 (=> (not res!3083667) (not e!4584878))))

(assert (=> b!7731274 (= res!3083667 (matchR!10054 (regOne!41636 r!14126) (_1!38092 lt!2667119)))))

(declare-fun b!7731275 () Bool)

(assert (=> b!7731275 (= e!4584878 (matchR!10054 (regTwo!41636 r!14126) (_2!38092 lt!2667119)))))

(assert (= (and bs!1963533 res!3083666) b!7731274))

(assert (= (and b!7731274 res!3083667) b!7731275))

(declare-fun m!8205704 () Bool)

(assert (=> bs!1963533 m!8205704))

(declare-fun m!8205706 () Bool)

(assert (=> b!7731274 m!8205706))

(declare-fun m!8205708 () Bool)

(assert (=> b!7731275 m!8205708))

(assert (=> d!2339495 d!2339519))

(push 1)

(assert (not b!7731256))

(assert (not b!7731254))

(assert (not b!7731248))

(assert (not b!7731092))

(assert (not b!7731184))

(assert (not b!7731258))

(assert (not b!7731192))

(assert (not bs!1963532))

(assert (not bm!715517))

(assert (not b!7731231))

(assert (not b!7731253))

(assert (not b!7731091))

(assert (not b!7731188))

(assert (not bm!715515))

(assert (not b!7731150))

(assert (not b!7731235))

(assert (not b!7731250))

(assert (not b!7731269))

(assert (not d!2339501))

(assert (not d!2339513))

(assert (not b!7731220))

(assert (not d!2339475))

(assert (not b!7731032))

(assert (not b!7731257))

(assert (not b!7731206))

(assert (not b!7731224))

(assert (not d!2339493))

(assert (not b!7731267))

(assert (not b!7731271))

(assert (not d!2339481))

(assert (not d!2339477))

(assert (not b!7731208))

(assert (not b!7731033))

(assert (not b!7731272))

(assert (not d!2339515))

(assert (not b_lambda!289321))

(assert (not bs!1963533))

(assert (not bm!715505))

(assert (not b!7731275))

(assert (not bm!715519))

(assert (not bm!715514))

(assert (not b!7731252))

(assert (not b!7731095))

(assert tp_is_empty!51479)

(assert (not b!7731265))

(assert (not b!7731202))

(assert (not d!2339509))

(assert (not b!7731193))

(assert (not b!7731094))

(assert (not b!7731263))

(assert (not d!2339499))

(assert (not bm!715496))

(assert (not b!7731194))

(assert (not b_lambda!289319))

(assert (not bm!715520))

(assert (not bm!715516))

(assert (not b!7731098))

(assert (not b!7731196))

(assert (not bm!715504))

(assert (not b!7731031))

(assert (not b!7731029))

(assert (not b!7731204))

(assert (not bm!715518))

(assert (not b!7731274))

(assert (not b!7731207))

(assert (not bm!715512))

(assert (not b!7731190))

(assert (not b!7731273))

(assert (not b!7731090))

(assert (not d!2339483))

(assert (not b!7731035))

(assert (not b!7731266))

(assert (not b!7731270))

(assert (not d!2339485))

(assert (not d!2339495))

(assert (not b!7731027))

(assert (not b!7731154))

(assert (not d!2339473))

(assert (not b!7731249))

(assert (not b!7731210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

