; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236482 () Bool)

(assert start!236482)

(declare-fun b!2413327 () Bool)

(declare-fun res!1024939 () Bool)

(declare-fun e!1536127 () Bool)

(assert (=> b!2413327 (=> (not res!1024939) (not e!1536127))))

(declare-datatypes ((C!14330 0))(
  ( (C!14331 (val!8407 Int)) )
))
(declare-datatypes ((Regex!7086 0))(
  ( (ElementMatch!7086 (c!384526 C!14330)) (Concat!11722 (regOne!14684 Regex!7086) (regTwo!14684 Regex!7086)) (EmptyExpr!7086) (Star!7086 (reg!7415 Regex!7086)) (EmptyLang!7086) (Union!7086 (regOne!14685 Regex!7086) (regTwo!14685 Regex!7086)) )
))
(declare-fun r!13927 () Regex!7086)

(declare-datatypes ((List!28410 0))(
  ( (Nil!28312) (Cons!28312 (h!33713 Regex!7086) (t!208387 List!28410)) )
))
(declare-fun l!9164 () List!28410)

(declare-fun generalisedConcat!187 (List!28410) Regex!7086)

(assert (=> b!2413327 (= res!1024939 (= r!13927 (generalisedConcat!187 l!9164)))))

(declare-fun b!2413328 () Bool)

(declare-fun e!1536123 () Bool)

(assert (=> b!2413328 (= e!1536127 (not e!1536123))))

(declare-fun res!1024940 () Bool)

(assert (=> b!2413328 (=> res!1024940 e!1536123)))

(assert (=> b!2413328 (= res!1024940 (or (is-Concat!11722 r!13927) (is-EmptyExpr!7086 r!13927)))))

(declare-datatypes ((List!28411 0))(
  ( (Nil!28313) (Cons!28313 (h!33714 C!14330) (t!208388 List!28411)) )
))
(declare-fun s!9460 () List!28411)

(declare-fun matchR!3203 (Regex!7086 List!28411) Bool)

(declare-fun matchRSpec!935 (Regex!7086 List!28411) Bool)

(assert (=> b!2413328 (= (matchR!3203 r!13927 s!9460) (matchRSpec!935 r!13927 s!9460))))

(declare-datatypes ((Unit!41443 0))(
  ( (Unit!41444) )
))
(declare-fun lt!873896 () Unit!41443)

(declare-fun mainMatchTheorem!935 (Regex!7086 List!28411) Unit!41443)

(assert (=> b!2413328 (= lt!873896 (mainMatchTheorem!935 r!13927 s!9460))))

(declare-fun b!2413329 () Bool)

(declare-fun e!1536121 () Bool)

(declare-fun lt!873897 () Regex!7086)

(declare-fun validRegex!2808 (Regex!7086) Bool)

(assert (=> b!2413329 (= e!1536121 (validRegex!2808 lt!873897))))

(declare-fun b!2413330 () Bool)

(declare-fun e!1536125 () Bool)

(assert (=> b!2413330 (= e!1536125 e!1536121)))

(declare-fun res!1024938 () Bool)

(assert (=> b!2413330 (=> res!1024938 e!1536121)))

(assert (=> b!2413330 (= res!1024938 (matchR!3203 lt!873897 s!9460))))

(declare-fun head!5391 (List!28410) Regex!7086)

(assert (=> b!2413330 (= lt!873897 (head!5391 l!9164))))

(declare-fun b!2413331 () Bool)

(declare-fun e!1536122 () Bool)

(declare-fun tp!767562 () Bool)

(declare-fun tp!767568 () Bool)

(assert (=> b!2413331 (= e!1536122 (and tp!767562 tp!767568))))

(declare-fun b!2413332 () Bool)

(declare-fun e!1536124 () Bool)

(declare-fun tp!767569 () Bool)

(declare-fun tp!767566 () Bool)

(assert (=> b!2413332 (= e!1536124 (and tp!767569 tp!767566))))

(declare-fun res!1024937 () Bool)

(assert (=> start!236482 (=> (not res!1024937) (not e!1536127))))

(declare-fun lambda!90854 () Int)

(declare-fun forall!5720 (List!28410 Int) Bool)

(assert (=> start!236482 (= res!1024937 (forall!5720 l!9164 lambda!90854))))

(assert (=> start!236482 e!1536127))

(assert (=> start!236482 e!1536124))

(assert (=> start!236482 e!1536122))

(declare-fun e!1536126 () Bool)

(assert (=> start!236482 e!1536126))

(declare-fun b!2413333 () Bool)

(declare-fun res!1024942 () Bool)

(assert (=> b!2413333 (=> res!1024942 e!1536123)))

(declare-fun isEmpty!16322 (List!28410) Bool)

(assert (=> b!2413333 (= res!1024942 (isEmpty!16322 l!9164))))

(declare-fun b!2413334 () Bool)

(declare-fun tp!767564 () Bool)

(assert (=> b!2413334 (= e!1536122 tp!767564)))

(declare-fun b!2413335 () Bool)

(declare-fun tp_is_empty!11585 () Bool)

(assert (=> b!2413335 (= e!1536122 tp_is_empty!11585)))

(declare-fun b!2413336 () Bool)

(declare-fun tp!767567 () Bool)

(assert (=> b!2413336 (= e!1536126 (and tp_is_empty!11585 tp!767567))))

(declare-fun b!2413337 () Bool)

(assert (=> b!2413337 (= e!1536123 e!1536125)))

(declare-fun res!1024943 () Bool)

(assert (=> b!2413337 (=> res!1024943 e!1536125)))

(declare-fun lt!873895 () List!28410)

(assert (=> b!2413337 (= res!1024943 (not (isEmpty!16322 lt!873895)))))

(declare-fun tail!3663 (List!28410) List!28410)

(assert (=> b!2413337 (= lt!873895 (tail!3663 l!9164))))

(declare-fun b!2413338 () Bool)

(declare-fun res!1024941 () Bool)

(assert (=> b!2413338 (=> res!1024941 e!1536125)))

(assert (=> b!2413338 (= res!1024941 (not (= (generalisedConcat!187 lt!873895) EmptyExpr!7086)))))

(declare-fun b!2413339 () Bool)

(declare-fun tp!767565 () Bool)

(declare-fun tp!767563 () Bool)

(assert (=> b!2413339 (= e!1536122 (and tp!767565 tp!767563))))

(assert (= (and start!236482 res!1024937) b!2413327))

(assert (= (and b!2413327 res!1024939) b!2413328))

(assert (= (and b!2413328 (not res!1024940)) b!2413333))

(assert (= (and b!2413333 (not res!1024942)) b!2413337))

(assert (= (and b!2413337 (not res!1024943)) b!2413338))

(assert (= (and b!2413338 (not res!1024941)) b!2413330))

(assert (= (and b!2413330 (not res!1024938)) b!2413329))

(assert (= (and start!236482 (is-Cons!28312 l!9164)) b!2413332))

(assert (= (and start!236482 (is-ElementMatch!7086 r!13927)) b!2413335))

(assert (= (and start!236482 (is-Concat!11722 r!13927)) b!2413331))

(assert (= (and start!236482 (is-Star!7086 r!13927)) b!2413334))

(assert (= (and start!236482 (is-Union!7086 r!13927)) b!2413339))

(assert (= (and start!236482 (is-Cons!28313 s!9460)) b!2413336))

(declare-fun m!2803491 () Bool)

(assert (=> b!2413337 m!2803491))

(declare-fun m!2803493 () Bool)

(assert (=> b!2413337 m!2803493))

(declare-fun m!2803495 () Bool)

(assert (=> b!2413327 m!2803495))

(declare-fun m!2803497 () Bool)

(assert (=> b!2413330 m!2803497))

(declare-fun m!2803499 () Bool)

(assert (=> b!2413330 m!2803499))

(declare-fun m!2803501 () Bool)

(assert (=> b!2413338 m!2803501))

(declare-fun m!2803503 () Bool)

(assert (=> b!2413329 m!2803503))

(declare-fun m!2803505 () Bool)

(assert (=> b!2413328 m!2803505))

(declare-fun m!2803507 () Bool)

(assert (=> b!2413328 m!2803507))

(declare-fun m!2803509 () Bool)

(assert (=> b!2413328 m!2803509))

(declare-fun m!2803511 () Bool)

(assert (=> b!2413333 m!2803511))

(declare-fun m!2803513 () Bool)

(assert (=> start!236482 m!2803513))

(push 1)

(assert (not b!2413330))

(assert (not b!2413329))

(assert (not b!2413338))

(assert (not b!2413327))

(assert (not b!2413334))

(assert (not b!2413336))

(assert (not b!2413331))

(assert (not start!236482))

(assert (not b!2413328))

(assert (not b!2413339))

(assert (not b!2413337))

(assert (not b!2413333))

(assert tp_is_empty!11585)

(assert (not b!2413332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!700916 () Bool)

(declare-fun res!1024969 () Bool)

(declare-fun e!1536153 () Bool)

(assert (=> d!700916 (=> res!1024969 e!1536153)))

(assert (=> d!700916 (= res!1024969 (is-Nil!28312 l!9164))))

(assert (=> d!700916 (= (forall!5720 l!9164 lambda!90854) e!1536153)))

(declare-fun b!2413383 () Bool)

(declare-fun e!1536154 () Bool)

(assert (=> b!2413383 (= e!1536153 e!1536154)))

(declare-fun res!1024970 () Bool)

(assert (=> b!2413383 (=> (not res!1024970) (not e!1536154))))

(declare-fun dynLambda!12190 (Int Regex!7086) Bool)

(assert (=> b!2413383 (= res!1024970 (dynLambda!12190 lambda!90854 (h!33713 l!9164)))))

(declare-fun b!2413384 () Bool)

(assert (=> b!2413384 (= e!1536154 (forall!5720 (t!208387 l!9164) lambda!90854))))

(assert (= (and d!700916 (not res!1024969)) b!2413383))

(assert (= (and b!2413383 res!1024970) b!2413384))

(declare-fun b_lambda!74531 () Bool)

(assert (=> (not b_lambda!74531) (not b!2413383)))

(declare-fun m!2803539 () Bool)

(assert (=> b!2413383 m!2803539))

(declare-fun m!2803541 () Bool)

(assert (=> b!2413384 m!2803541))

(assert (=> start!236482 d!700916))

(declare-fun bs!463497 () Bool)

(declare-fun d!700918 () Bool)

(assert (= bs!463497 (and d!700918 start!236482)))

(declare-fun lambda!90860 () Int)

(assert (=> bs!463497 (= lambda!90860 lambda!90854)))

(declare-fun b!2413405 () Bool)

(declare-fun e!1536172 () Bool)

(declare-fun lt!873909 () Regex!7086)

(declare-fun isConcat!147 (Regex!7086) Bool)

(assert (=> b!2413405 (= e!1536172 (isConcat!147 lt!873909))))

(declare-fun b!2413406 () Bool)

(declare-fun e!1536170 () Bool)

(declare-fun isEmptyExpr!147 (Regex!7086) Bool)

(assert (=> b!2413406 (= e!1536170 (isEmptyExpr!147 lt!873909))))

(declare-fun e!1536168 () Bool)

(assert (=> d!700918 e!1536168))

(declare-fun res!1024975 () Bool)

(assert (=> d!700918 (=> (not res!1024975) (not e!1536168))))

(assert (=> d!700918 (= res!1024975 (validRegex!2808 lt!873909))))

(declare-fun e!1536167 () Regex!7086)

(assert (=> d!700918 (= lt!873909 e!1536167)))

(declare-fun c!384537 () Bool)

(declare-fun e!1536171 () Bool)

(assert (=> d!700918 (= c!384537 e!1536171)))

(declare-fun res!1024976 () Bool)

(assert (=> d!700918 (=> (not res!1024976) (not e!1536171))))

(assert (=> d!700918 (= res!1024976 (is-Cons!28312 l!9164))))

(assert (=> d!700918 (forall!5720 l!9164 lambda!90860)))

(assert (=> d!700918 (= (generalisedConcat!187 l!9164) lt!873909)))

(declare-fun b!2413407 () Bool)

(declare-fun e!1536169 () Regex!7086)

(assert (=> b!2413407 (= e!1536169 (Concat!11722 (h!33713 l!9164) (generalisedConcat!187 (t!208387 l!9164))))))

(declare-fun b!2413408 () Bool)

(assert (=> b!2413408 (= e!1536168 e!1536170)))

(declare-fun c!384536 () Bool)

(assert (=> b!2413408 (= c!384536 (isEmpty!16322 l!9164))))

(declare-fun b!2413409 () Bool)

(assert (=> b!2413409 (= e!1536169 EmptyExpr!7086)))

(declare-fun b!2413410 () Bool)

(assert (=> b!2413410 (= e!1536167 (h!33713 l!9164))))

(declare-fun b!2413411 () Bool)

(assert (=> b!2413411 (= e!1536170 e!1536172)))

(declare-fun c!384538 () Bool)

(assert (=> b!2413411 (= c!384538 (isEmpty!16322 (tail!3663 l!9164)))))

(declare-fun b!2413412 () Bool)

(assert (=> b!2413412 (= e!1536167 e!1536169)))

(declare-fun c!384539 () Bool)

(assert (=> b!2413412 (= c!384539 (is-Cons!28312 l!9164))))

(declare-fun b!2413413 () Bool)

(assert (=> b!2413413 (= e!1536172 (= lt!873909 (head!5391 l!9164)))))

(declare-fun b!2413414 () Bool)

(assert (=> b!2413414 (= e!1536171 (isEmpty!16322 (t!208387 l!9164)))))

(assert (= (and d!700918 res!1024976) b!2413414))

(assert (= (and d!700918 c!384537) b!2413410))

(assert (= (and d!700918 (not c!384537)) b!2413412))

(assert (= (and b!2413412 c!384539) b!2413407))

(assert (= (and b!2413412 (not c!384539)) b!2413409))

(assert (= (and d!700918 res!1024975) b!2413408))

(assert (= (and b!2413408 c!384536) b!2413406))

(assert (= (and b!2413408 (not c!384536)) b!2413411))

(assert (= (and b!2413411 c!384538) b!2413413))

(assert (= (and b!2413411 (not c!384538)) b!2413405))

(declare-fun m!2803543 () Bool)

(assert (=> d!700918 m!2803543))

(declare-fun m!2803545 () Bool)

(assert (=> d!700918 m!2803545))

(assert (=> b!2413408 m!2803511))

(declare-fun m!2803547 () Bool)

(assert (=> b!2413405 m!2803547))

(declare-fun m!2803549 () Bool)

(assert (=> b!2413414 m!2803549))

(assert (=> b!2413411 m!2803493))

(assert (=> b!2413411 m!2803493))

(declare-fun m!2803551 () Bool)

(assert (=> b!2413411 m!2803551))

(declare-fun m!2803553 () Bool)

(assert (=> b!2413407 m!2803553))

(declare-fun m!2803555 () Bool)

(assert (=> b!2413406 m!2803555))

(assert (=> b!2413413 m!2803499))

(assert (=> b!2413327 d!700918))

(declare-fun bs!463498 () Bool)

(declare-fun d!700926 () Bool)

(assert (= bs!463498 (and d!700926 start!236482)))

(declare-fun lambda!90861 () Int)

(assert (=> bs!463498 (= lambda!90861 lambda!90854)))

(declare-fun bs!463499 () Bool)

(assert (= bs!463499 (and d!700926 d!700918)))

(assert (=> bs!463499 (= lambda!90861 lambda!90860)))

(declare-fun b!2413415 () Bool)

(declare-fun e!1536178 () Bool)

(declare-fun lt!873910 () Regex!7086)

(assert (=> b!2413415 (= e!1536178 (isConcat!147 lt!873910))))

(declare-fun b!2413416 () Bool)

(declare-fun e!1536176 () Bool)

(assert (=> b!2413416 (= e!1536176 (isEmptyExpr!147 lt!873910))))

(declare-fun e!1536174 () Bool)

(assert (=> d!700926 e!1536174))

(declare-fun res!1024977 () Bool)

(assert (=> d!700926 (=> (not res!1024977) (not e!1536174))))

(assert (=> d!700926 (= res!1024977 (validRegex!2808 lt!873910))))

(declare-fun e!1536173 () Regex!7086)

(assert (=> d!700926 (= lt!873910 e!1536173)))

(declare-fun c!384541 () Bool)

(declare-fun e!1536177 () Bool)

(assert (=> d!700926 (= c!384541 e!1536177)))

(declare-fun res!1024978 () Bool)

(assert (=> d!700926 (=> (not res!1024978) (not e!1536177))))

(assert (=> d!700926 (= res!1024978 (is-Cons!28312 lt!873895))))

(assert (=> d!700926 (forall!5720 lt!873895 lambda!90861)))

(assert (=> d!700926 (= (generalisedConcat!187 lt!873895) lt!873910)))

(declare-fun b!2413417 () Bool)

(declare-fun e!1536175 () Regex!7086)

(assert (=> b!2413417 (= e!1536175 (Concat!11722 (h!33713 lt!873895) (generalisedConcat!187 (t!208387 lt!873895))))))

(declare-fun b!2413418 () Bool)

(assert (=> b!2413418 (= e!1536174 e!1536176)))

(declare-fun c!384540 () Bool)

(assert (=> b!2413418 (= c!384540 (isEmpty!16322 lt!873895))))

(declare-fun b!2413419 () Bool)

(assert (=> b!2413419 (= e!1536175 EmptyExpr!7086)))

(declare-fun b!2413420 () Bool)

(assert (=> b!2413420 (= e!1536173 (h!33713 lt!873895))))

(declare-fun b!2413421 () Bool)

(assert (=> b!2413421 (= e!1536176 e!1536178)))

(declare-fun c!384542 () Bool)

(assert (=> b!2413421 (= c!384542 (isEmpty!16322 (tail!3663 lt!873895)))))

(declare-fun b!2413422 () Bool)

(assert (=> b!2413422 (= e!1536173 e!1536175)))

(declare-fun c!384543 () Bool)

(assert (=> b!2413422 (= c!384543 (is-Cons!28312 lt!873895))))

(declare-fun b!2413423 () Bool)

(assert (=> b!2413423 (= e!1536178 (= lt!873910 (head!5391 lt!873895)))))

(declare-fun b!2413424 () Bool)

(assert (=> b!2413424 (= e!1536177 (isEmpty!16322 (t!208387 lt!873895)))))

(assert (= (and d!700926 res!1024978) b!2413424))

(assert (= (and d!700926 c!384541) b!2413420))

(assert (= (and d!700926 (not c!384541)) b!2413422))

(assert (= (and b!2413422 c!384543) b!2413417))

(assert (= (and b!2413422 (not c!384543)) b!2413419))

(assert (= (and d!700926 res!1024977) b!2413418))

(assert (= (and b!2413418 c!384540) b!2413416))

(assert (= (and b!2413418 (not c!384540)) b!2413421))

(assert (= (and b!2413421 c!384542) b!2413423))

(assert (= (and b!2413421 (not c!384542)) b!2413415))

(declare-fun m!2803557 () Bool)

(assert (=> d!700926 m!2803557))

(declare-fun m!2803559 () Bool)

(assert (=> d!700926 m!2803559))

(assert (=> b!2413418 m!2803491))

(declare-fun m!2803561 () Bool)

(assert (=> b!2413415 m!2803561))

(declare-fun m!2803563 () Bool)

(assert (=> b!2413424 m!2803563))

(declare-fun m!2803565 () Bool)

(assert (=> b!2413421 m!2803565))

(assert (=> b!2413421 m!2803565))

(declare-fun m!2803567 () Bool)

(assert (=> b!2413421 m!2803567))

(declare-fun m!2803569 () Bool)

(assert (=> b!2413417 m!2803569))

(declare-fun m!2803571 () Bool)

(assert (=> b!2413416 m!2803571))

(declare-fun m!2803573 () Bool)

(assert (=> b!2413423 m!2803573))

(assert (=> b!2413338 d!700926))

(declare-fun d!700928 () Bool)

(assert (=> d!700928 (= (isEmpty!16322 lt!873895) (is-Nil!28312 lt!873895))))

(assert (=> b!2413337 d!700928))

(declare-fun d!700930 () Bool)

(assert (=> d!700930 (= (tail!3663 l!9164) (t!208387 l!9164))))

(assert (=> b!2413337 d!700930))

(declare-fun d!700932 () Bool)

(assert (=> d!700932 (= (isEmpty!16322 l!9164) (is-Nil!28312 l!9164))))

(assert (=> b!2413333 d!700932))

(declare-fun b!2413471 () Bool)

(declare-fun res!1025005 () Bool)

(declare-fun e!1536212 () Bool)

(assert (=> b!2413471 (=> res!1025005 e!1536212)))

(assert (=> b!2413471 (= res!1025005 (not (is-ElementMatch!7086 r!13927)))))

(declare-fun e!1536213 () Bool)

(assert (=> b!2413471 (= e!1536213 e!1536212)))

(declare-fun b!2413472 () Bool)

(declare-fun e!1536210 () Bool)

(assert (=> b!2413472 (= e!1536212 e!1536210)))

(declare-fun res!1025008 () Bool)

(assert (=> b!2413472 (=> (not res!1025008) (not e!1536210))))

(declare-fun lt!873913 () Bool)

(assert (=> b!2413472 (= res!1025008 (not lt!873913))))

(declare-fun bm!147378 () Bool)

(declare-fun call!147383 () Bool)

(declare-fun isEmpty!16324 (List!28411) Bool)

(assert (=> bm!147378 (= call!147383 (isEmpty!16324 s!9460))))

(declare-fun b!2413473 () Bool)

(declare-fun res!1025007 () Bool)

(declare-fun e!1536208 () Bool)

(assert (=> b!2413473 (=> (not res!1025007) (not e!1536208))))

(declare-fun tail!3665 (List!28411) List!28411)

(assert (=> b!2413473 (= res!1025007 (isEmpty!16324 (tail!3665 s!9460)))))

(declare-fun b!2413474 () Bool)

(declare-fun head!5393 (List!28411) C!14330)

(assert (=> b!2413474 (= e!1536208 (= (head!5393 s!9460) (c!384526 r!13927)))))

(declare-fun d!700934 () Bool)

(declare-fun e!1536211 () Bool)

(assert (=> d!700934 e!1536211))

(declare-fun c!384554 () Bool)

(assert (=> d!700934 (= c!384554 (is-EmptyExpr!7086 r!13927))))

(declare-fun e!1536209 () Bool)

(assert (=> d!700934 (= lt!873913 e!1536209)))

(declare-fun c!384555 () Bool)

(assert (=> d!700934 (= c!384555 (isEmpty!16324 s!9460))))

(assert (=> d!700934 (validRegex!2808 r!13927)))

(assert (=> d!700934 (= (matchR!3203 r!13927 s!9460) lt!873913)))

(declare-fun b!2413475 () Bool)

(declare-fun derivativeStep!1785 (Regex!7086 C!14330) Regex!7086)

(assert (=> b!2413475 (= e!1536209 (matchR!3203 (derivativeStep!1785 r!13927 (head!5393 s!9460)) (tail!3665 s!9460)))))

(declare-fun b!2413476 () Bool)

(assert (=> b!2413476 (= e!1536213 (not lt!873913))))

(declare-fun b!2413477 () Bool)

(assert (=> b!2413477 (= e!1536211 e!1536213)))

(declare-fun c!384556 () Bool)

(assert (=> b!2413477 (= c!384556 (is-EmptyLang!7086 r!13927))))

(declare-fun b!2413478 () Bool)

(declare-fun res!1025011 () Bool)

(assert (=> b!2413478 (=> res!1025011 e!1536212)))

(assert (=> b!2413478 (= res!1025011 e!1536208)))

(declare-fun res!1025006 () Bool)

(assert (=> b!2413478 (=> (not res!1025006) (not e!1536208))))

(assert (=> b!2413478 (= res!1025006 lt!873913)))

(declare-fun b!2413479 () Bool)

(declare-fun nullable!2128 (Regex!7086) Bool)

(assert (=> b!2413479 (= e!1536209 (nullable!2128 r!13927))))

(declare-fun b!2413480 () Bool)

(declare-fun e!1536207 () Bool)

(assert (=> b!2413480 (= e!1536210 e!1536207)))

(declare-fun res!1025009 () Bool)

(assert (=> b!2413480 (=> res!1025009 e!1536207)))

(assert (=> b!2413480 (= res!1025009 call!147383)))

(declare-fun b!2413481 () Bool)

(declare-fun res!1025012 () Bool)

(assert (=> b!2413481 (=> res!1025012 e!1536207)))

(assert (=> b!2413481 (= res!1025012 (not (isEmpty!16324 (tail!3665 s!9460))))))

(declare-fun b!2413482 () Bool)

(declare-fun res!1025010 () Bool)

(assert (=> b!2413482 (=> (not res!1025010) (not e!1536208))))

(assert (=> b!2413482 (= res!1025010 (not call!147383))))

(declare-fun b!2413483 () Bool)

(assert (=> b!2413483 (= e!1536207 (not (= (head!5393 s!9460) (c!384526 r!13927))))))

(declare-fun b!2413484 () Bool)

(assert (=> b!2413484 (= e!1536211 (= lt!873913 call!147383))))

(assert (= (and d!700934 c!384555) b!2413479))

(assert (= (and d!700934 (not c!384555)) b!2413475))

(assert (= (and d!700934 c!384554) b!2413484))

(assert (= (and d!700934 (not c!384554)) b!2413477))

(assert (= (and b!2413477 c!384556) b!2413476))

(assert (= (and b!2413477 (not c!384556)) b!2413471))

(assert (= (and b!2413471 (not res!1025005)) b!2413478))

(assert (= (and b!2413478 res!1025006) b!2413482))

(assert (= (and b!2413482 res!1025010) b!2413473))

(assert (= (and b!2413473 res!1025007) b!2413474))

(assert (= (and b!2413478 (not res!1025011)) b!2413472))

(assert (= (and b!2413472 res!1025008) b!2413480))

(assert (= (and b!2413480 (not res!1025009)) b!2413481))

(assert (= (and b!2413481 (not res!1025012)) b!2413483))

(assert (= (or b!2413484 b!2413480 b!2413482) bm!147378))

(declare-fun m!2803575 () Bool)

(assert (=> b!2413481 m!2803575))

(assert (=> b!2413481 m!2803575))

(declare-fun m!2803577 () Bool)

(assert (=> b!2413481 m!2803577))

(assert (=> b!2413473 m!2803575))

(assert (=> b!2413473 m!2803575))

(assert (=> b!2413473 m!2803577))

(declare-fun m!2803579 () Bool)

(assert (=> b!2413475 m!2803579))

(assert (=> b!2413475 m!2803579))

(declare-fun m!2803581 () Bool)

(assert (=> b!2413475 m!2803581))

(assert (=> b!2413475 m!2803575))

(assert (=> b!2413475 m!2803581))

(assert (=> b!2413475 m!2803575))

(declare-fun m!2803583 () Bool)

(assert (=> b!2413475 m!2803583))

(assert (=> b!2413483 m!2803579))

(declare-fun m!2803585 () Bool)

(assert (=> d!700934 m!2803585))

(declare-fun m!2803587 () Bool)

(assert (=> d!700934 m!2803587))

(assert (=> bm!147378 m!2803585))

(assert (=> b!2413474 m!2803579))

(declare-fun m!2803589 () Bool)

(assert (=> b!2413479 m!2803589))

(assert (=> b!2413328 d!700934))

(declare-fun b!2413537 () Bool)

(assert (=> b!2413537 true))

(assert (=> b!2413537 true))

(declare-fun bs!463500 () Bool)

(declare-fun b!2413532 () Bool)

(assert (= bs!463500 (and b!2413532 b!2413537)))

(declare-fun lambda!90867 () Int)

(declare-fun lambda!90866 () Int)

(assert (=> bs!463500 (not (= lambda!90867 lambda!90866))))

(assert (=> b!2413532 true))

(assert (=> b!2413532 true))

(declare-fun d!700936 () Bool)

(declare-fun c!384567 () Bool)

(assert (=> d!700936 (= c!384567 (is-EmptyExpr!7086 r!13927))))

(declare-fun e!1536251 () Bool)

(assert (=> d!700936 (= (matchRSpec!935 r!13927 s!9460) e!1536251)))

(declare-fun e!1536248 () Bool)

(declare-fun call!147391 () Bool)

(assert (=> b!2413532 (= e!1536248 call!147391)))

(declare-fun b!2413533 () Bool)

(declare-fun call!147392 () Bool)

(assert (=> b!2413533 (= e!1536251 call!147392)))

(declare-fun b!2413534 () Bool)

(declare-fun c!384569 () Bool)

(assert (=> b!2413534 (= c!384569 (is-Union!7086 r!13927))))

(declare-fun e!1536249 () Bool)

(declare-fun e!1536250 () Bool)

(assert (=> b!2413534 (= e!1536249 e!1536250)))

(declare-fun b!2413535 () Bool)

(assert (=> b!2413535 (= e!1536250 e!1536248)))

(declare-fun c!384570 () Bool)

(assert (=> b!2413535 (= c!384570 (is-Star!7086 r!13927))))

(declare-fun b!2413536 () Bool)

(declare-fun e!1536247 () Bool)

(assert (=> b!2413536 (= e!1536250 e!1536247)))

(declare-fun res!1025041 () Bool)

(assert (=> b!2413536 (= res!1025041 (matchRSpec!935 (regOne!14685 r!13927) s!9460))))

(assert (=> b!2413536 (=> res!1025041 e!1536247)))

(declare-fun e!1536245 () Bool)

(assert (=> b!2413537 (= e!1536245 call!147391)))

(declare-fun b!2413538 () Bool)

(assert (=> b!2413538 (= e!1536247 (matchRSpec!935 (regTwo!14685 r!13927) s!9460))))

(declare-fun b!2413539 () Bool)

(assert (=> b!2413539 (= e!1536249 (= s!9460 (Cons!28313 (c!384526 r!13927) Nil!28313)))))

(declare-fun b!2413540 () Bool)

(declare-fun c!384568 () Bool)

(assert (=> b!2413540 (= c!384568 (is-ElementMatch!7086 r!13927))))

(declare-fun e!1536246 () Bool)

(assert (=> b!2413540 (= e!1536246 e!1536249)))

(declare-fun bm!147386 () Bool)

(declare-fun Exists!1135 (Int) Bool)

(assert (=> bm!147386 (= call!147391 (Exists!1135 (ite c!384570 lambda!90866 lambda!90867)))))

(declare-fun b!2413541 () Bool)

(declare-fun res!1025042 () Bool)

(assert (=> b!2413541 (=> res!1025042 e!1536245)))

(assert (=> b!2413541 (= res!1025042 call!147392)))

(assert (=> b!2413541 (= e!1536248 e!1536245)))

(declare-fun b!2413542 () Bool)

(assert (=> b!2413542 (= e!1536251 e!1536246)))

(declare-fun res!1025040 () Bool)

(assert (=> b!2413542 (= res!1025040 (not (is-EmptyLang!7086 r!13927)))))

(assert (=> b!2413542 (=> (not res!1025040) (not e!1536246))))

(declare-fun bm!147387 () Bool)

(assert (=> bm!147387 (= call!147392 (isEmpty!16324 s!9460))))

(assert (= (and d!700936 c!384567) b!2413533))

(assert (= (and d!700936 (not c!384567)) b!2413542))

(assert (= (and b!2413542 res!1025040) b!2413540))

(assert (= (and b!2413540 c!384568) b!2413539))

(assert (= (and b!2413540 (not c!384568)) b!2413534))

(assert (= (and b!2413534 c!384569) b!2413536))

(assert (= (and b!2413534 (not c!384569)) b!2413535))

(assert (= (and b!2413536 (not res!1025041)) b!2413538))

(assert (= (and b!2413535 c!384570) b!2413541))

(assert (= (and b!2413535 (not c!384570)) b!2413532))

(assert (= (and b!2413541 (not res!1025042)) b!2413537))

(assert (= (or b!2413537 b!2413532) bm!147386))

(assert (= (or b!2413533 b!2413541) bm!147387))

(declare-fun m!2803601 () Bool)

(assert (=> b!2413536 m!2803601))

(declare-fun m!2803603 () Bool)

(assert (=> b!2413538 m!2803603))

(declare-fun m!2803605 () Bool)

(assert (=> bm!147386 m!2803605))

(assert (=> bm!147387 m!2803585))

(assert (=> b!2413328 d!700936))

(declare-fun d!700942 () Bool)

(assert (=> d!700942 (= (matchR!3203 r!13927 s!9460) (matchRSpec!935 r!13927 s!9460))))

(declare-fun lt!873918 () Unit!41443)

(declare-fun choose!14277 (Regex!7086 List!28411) Unit!41443)

(assert (=> d!700942 (= lt!873918 (choose!14277 r!13927 s!9460))))

(assert (=> d!700942 (validRegex!2808 r!13927)))

(assert (=> d!700942 (= (mainMatchTheorem!935 r!13927 s!9460) lt!873918)))

(declare-fun bs!463501 () Bool)

(assert (= bs!463501 d!700942))

(assert (=> bs!463501 m!2803505))

(assert (=> bs!463501 m!2803507))

(declare-fun m!2803607 () Bool)

(assert (=> bs!463501 m!2803607))

(assert (=> bs!463501 m!2803587))

(assert (=> b!2413328 d!700942))

(declare-fun b!2413567 () Bool)

(declare-fun res!1025047 () Bool)

(declare-fun e!1536269 () Bool)

(assert (=> b!2413567 (=> res!1025047 e!1536269)))

(assert (=> b!2413567 (= res!1025047 (not (is-ElementMatch!7086 lt!873897)))))

(declare-fun e!1536270 () Bool)

(assert (=> b!2413567 (= e!1536270 e!1536269)))

(declare-fun b!2413568 () Bool)

(declare-fun e!1536267 () Bool)

(assert (=> b!2413568 (= e!1536269 e!1536267)))

(declare-fun res!1025050 () Bool)

(assert (=> b!2413568 (=> (not res!1025050) (not e!1536267))))

(declare-fun lt!873919 () Bool)

(assert (=> b!2413568 (= res!1025050 (not lt!873919))))

(declare-fun bm!147388 () Bool)

(declare-fun call!147393 () Bool)

(assert (=> bm!147388 (= call!147393 (isEmpty!16324 s!9460))))

(declare-fun b!2413569 () Bool)

(declare-fun res!1025049 () Bool)

(declare-fun e!1536265 () Bool)

(assert (=> b!2413569 (=> (not res!1025049) (not e!1536265))))

(assert (=> b!2413569 (= res!1025049 (isEmpty!16324 (tail!3665 s!9460)))))

(declare-fun b!2413570 () Bool)

(assert (=> b!2413570 (= e!1536265 (= (head!5393 s!9460) (c!384526 lt!873897)))))

(declare-fun d!700944 () Bool)

(declare-fun e!1536268 () Bool)

(assert (=> d!700944 e!1536268))

(declare-fun c!384579 () Bool)

(assert (=> d!700944 (= c!384579 (is-EmptyExpr!7086 lt!873897))))

(declare-fun e!1536266 () Bool)

(assert (=> d!700944 (= lt!873919 e!1536266)))

(declare-fun c!384580 () Bool)

(assert (=> d!700944 (= c!384580 (isEmpty!16324 s!9460))))

(assert (=> d!700944 (validRegex!2808 lt!873897)))

(assert (=> d!700944 (= (matchR!3203 lt!873897 s!9460) lt!873919)))

(declare-fun b!2413571 () Bool)

(assert (=> b!2413571 (= e!1536266 (matchR!3203 (derivativeStep!1785 lt!873897 (head!5393 s!9460)) (tail!3665 s!9460)))))

(declare-fun b!2413572 () Bool)

(assert (=> b!2413572 (= e!1536270 (not lt!873919))))

(declare-fun b!2413573 () Bool)

(assert (=> b!2413573 (= e!1536268 e!1536270)))

(declare-fun c!384581 () Bool)

(assert (=> b!2413573 (= c!384581 (is-EmptyLang!7086 lt!873897))))

(declare-fun b!2413574 () Bool)

(declare-fun res!1025053 () Bool)

(assert (=> b!2413574 (=> res!1025053 e!1536269)))

(assert (=> b!2413574 (= res!1025053 e!1536265)))

(declare-fun res!1025048 () Bool)

(assert (=> b!2413574 (=> (not res!1025048) (not e!1536265))))

(assert (=> b!2413574 (= res!1025048 lt!873919)))

(declare-fun b!2413575 () Bool)

(assert (=> b!2413575 (= e!1536266 (nullable!2128 lt!873897))))

(declare-fun b!2413576 () Bool)

(declare-fun e!1536264 () Bool)

(assert (=> b!2413576 (= e!1536267 e!1536264)))

(declare-fun res!1025051 () Bool)

(assert (=> b!2413576 (=> res!1025051 e!1536264)))

(assert (=> b!2413576 (= res!1025051 call!147393)))

(declare-fun b!2413577 () Bool)

(declare-fun res!1025054 () Bool)

(assert (=> b!2413577 (=> res!1025054 e!1536264)))

(assert (=> b!2413577 (= res!1025054 (not (isEmpty!16324 (tail!3665 s!9460))))))

(declare-fun b!2413578 () Bool)

(declare-fun res!1025052 () Bool)

(assert (=> b!2413578 (=> (not res!1025052) (not e!1536265))))

(assert (=> b!2413578 (= res!1025052 (not call!147393))))

(declare-fun b!2413579 () Bool)

(assert (=> b!2413579 (= e!1536264 (not (= (head!5393 s!9460) (c!384526 lt!873897))))))

(declare-fun b!2413580 () Bool)

(assert (=> b!2413580 (= e!1536268 (= lt!873919 call!147393))))

(assert (= (and d!700944 c!384580) b!2413575))

(assert (= (and d!700944 (not c!384580)) b!2413571))

(assert (= (and d!700944 c!384579) b!2413580))

(assert (= (and d!700944 (not c!384579)) b!2413573))

(assert (= (and b!2413573 c!384581) b!2413572))

(assert (= (and b!2413573 (not c!384581)) b!2413567))

(assert (= (and b!2413567 (not res!1025047)) b!2413574))

(assert (= (and b!2413574 res!1025048) b!2413578))

(assert (= (and b!2413578 res!1025052) b!2413569))

(assert (= (and b!2413569 res!1025049) b!2413570))

(assert (= (and b!2413574 (not res!1025053)) b!2413568))

(assert (= (and b!2413568 res!1025050) b!2413576))

(assert (= (and b!2413576 (not res!1025051)) b!2413577))

(assert (= (and b!2413577 (not res!1025054)) b!2413579))

(assert (= (or b!2413580 b!2413576 b!2413578) bm!147388))

(assert (=> b!2413577 m!2803575))

(assert (=> b!2413577 m!2803575))

(assert (=> b!2413577 m!2803577))

(assert (=> b!2413569 m!2803575))

(assert (=> b!2413569 m!2803575))

(assert (=> b!2413569 m!2803577))

(assert (=> b!2413571 m!2803579))

(assert (=> b!2413571 m!2803579))

(declare-fun m!2803609 () Bool)

(assert (=> b!2413571 m!2803609))

(assert (=> b!2413571 m!2803575))

(assert (=> b!2413571 m!2803609))

(assert (=> b!2413571 m!2803575))

(declare-fun m!2803611 () Bool)

(assert (=> b!2413571 m!2803611))

(assert (=> b!2413579 m!2803579))

(assert (=> d!700944 m!2803585))

(assert (=> d!700944 m!2803503))

(assert (=> bm!147388 m!2803585))

(assert (=> b!2413570 m!2803579))

(declare-fun m!2803613 () Bool)

(assert (=> b!2413575 m!2803613))

(assert (=> b!2413330 d!700944))

(declare-fun d!700946 () Bool)

(assert (=> d!700946 (= (head!5391 l!9164) (h!33713 l!9164))))

(assert (=> b!2413330 d!700946))

(declare-fun b!2413609 () Bool)

(declare-fun res!1025067 () Bool)

(declare-fun e!1536297 () Bool)

(assert (=> b!2413609 (=> (not res!1025067) (not e!1536297))))

(declare-fun call!147400 () Bool)

(assert (=> b!2413609 (= res!1025067 call!147400)))

(declare-fun e!1536291 () Bool)

(assert (=> b!2413609 (= e!1536291 e!1536297)))

(declare-fun b!2413610 () Bool)

(declare-fun e!1536292 () Bool)

(assert (=> b!2413610 (= e!1536292 call!147400)))

(declare-fun b!2413611 () Bool)

(declare-fun e!1536295 () Bool)

(declare-fun e!1536293 () Bool)

(assert (=> b!2413611 (= e!1536295 e!1536293)))

(declare-fun res!1025068 () Bool)

(assert (=> b!2413611 (= res!1025068 (not (nullable!2128 (reg!7415 lt!873897))))))

(assert (=> b!2413611 (=> (not res!1025068) (not e!1536293))))

(declare-fun b!2413612 () Bool)

(declare-fun call!147401 () Bool)

(assert (=> b!2413612 (= e!1536297 call!147401)))

(declare-fun bm!147395 () Bool)

(declare-fun call!147402 () Bool)

(assert (=> bm!147395 (= call!147401 call!147402)))

(declare-fun c!384591 () Bool)

(declare-fun bm!147396 () Bool)

(declare-fun c!384590 () Bool)

(assert (=> bm!147396 (= call!147402 (validRegex!2808 (ite c!384590 (reg!7415 lt!873897) (ite c!384591 (regTwo!14685 lt!873897) (regOne!14684 lt!873897)))))))

(declare-fun b!2413613 () Bool)

(declare-fun res!1025069 () Bool)

(declare-fun e!1536296 () Bool)

(assert (=> b!2413613 (=> res!1025069 e!1536296)))

(assert (=> b!2413613 (= res!1025069 (not (is-Concat!11722 lt!873897)))))

(assert (=> b!2413613 (= e!1536291 e!1536296)))

(declare-fun d!700948 () Bool)

(declare-fun res!1025071 () Bool)

(declare-fun e!1536294 () Bool)

(assert (=> d!700948 (=> res!1025071 e!1536294)))

(assert (=> d!700948 (= res!1025071 (is-ElementMatch!7086 lt!873897))))

(assert (=> d!700948 (= (validRegex!2808 lt!873897) e!1536294)))

(declare-fun bm!147397 () Bool)

(assert (=> bm!147397 (= call!147400 (validRegex!2808 (ite c!384591 (regOne!14685 lt!873897) (regTwo!14684 lt!873897))))))

(declare-fun b!2413614 () Bool)

(assert (=> b!2413614 (= e!1536296 e!1536292)))

(declare-fun res!1025070 () Bool)

(assert (=> b!2413614 (=> (not res!1025070) (not e!1536292))))

(assert (=> b!2413614 (= res!1025070 call!147401)))

(declare-fun b!2413615 () Bool)

(assert (=> b!2413615 (= e!1536294 e!1536295)))

(assert (=> b!2413615 (= c!384590 (is-Star!7086 lt!873897))))

(declare-fun b!2413616 () Bool)

(assert (=> b!2413616 (= e!1536293 call!147402)))

(declare-fun b!2413617 () Bool)

(assert (=> b!2413617 (= e!1536295 e!1536291)))

(assert (=> b!2413617 (= c!384591 (is-Union!7086 lt!873897))))

(assert (= (and d!700948 (not res!1025071)) b!2413615))

(assert (= (and b!2413615 c!384590) b!2413611))

(assert (= (and b!2413615 (not c!384590)) b!2413617))

(assert (= (and b!2413611 res!1025068) b!2413616))

(assert (= (and b!2413617 c!384591) b!2413609))

(assert (= (and b!2413617 (not c!384591)) b!2413613))

(assert (= (and b!2413609 res!1025067) b!2413612))

(assert (= (and b!2413613 (not res!1025069)) b!2413614))

(assert (= (and b!2413614 res!1025070) b!2413610))

(assert (= (or b!2413609 b!2413610) bm!147397))

(assert (= (or b!2413612 b!2413614) bm!147395))

(assert (= (or b!2413616 bm!147395) bm!147396))

(declare-fun m!2803615 () Bool)

(assert (=> b!2413611 m!2803615))

(declare-fun m!2803617 () Bool)

(assert (=> bm!147396 m!2803617))

(declare-fun m!2803621 () Bool)

(assert (=> bm!147397 m!2803621))

(assert (=> b!2413329 d!700948))

(declare-fun b!2413638 () Bool)

(declare-fun e!1536306 () Bool)

(assert (=> b!2413638 (= e!1536306 tp_is_empty!11585)))

(declare-fun b!2413639 () Bool)

(declare-fun tp!767607 () Bool)

(declare-fun tp!767606 () Bool)

(assert (=> b!2413639 (= e!1536306 (and tp!767607 tp!767606))))

(declare-fun b!2413640 () Bool)

(declare-fun tp!767604 () Bool)

(assert (=> b!2413640 (= e!1536306 tp!767604)))

(assert (=> b!2413331 (= tp!767562 e!1536306)))

(declare-fun b!2413641 () Bool)

(declare-fun tp!767608 () Bool)

(declare-fun tp!767605 () Bool)

(assert (=> b!2413641 (= e!1536306 (and tp!767608 tp!767605))))

(assert (= (and b!2413331 (is-ElementMatch!7086 (regOne!14684 r!13927))) b!2413638))

(assert (= (and b!2413331 (is-Concat!11722 (regOne!14684 r!13927))) b!2413639))

(assert (= (and b!2413331 (is-Star!7086 (regOne!14684 r!13927))) b!2413640))

(assert (= (and b!2413331 (is-Union!7086 (regOne!14684 r!13927))) b!2413641))

(declare-fun b!2413642 () Bool)

(declare-fun e!1536307 () Bool)

(assert (=> b!2413642 (= e!1536307 tp_is_empty!11585)))

(declare-fun b!2413643 () Bool)

(declare-fun tp!767612 () Bool)

(declare-fun tp!767611 () Bool)

(assert (=> b!2413643 (= e!1536307 (and tp!767612 tp!767611))))

(declare-fun b!2413644 () Bool)

(declare-fun tp!767609 () Bool)

(assert (=> b!2413644 (= e!1536307 tp!767609)))

(assert (=> b!2413331 (= tp!767568 e!1536307)))

(declare-fun b!2413645 () Bool)

(declare-fun tp!767613 () Bool)

(declare-fun tp!767610 () Bool)

(assert (=> b!2413645 (= e!1536307 (and tp!767613 tp!767610))))

(assert (= (and b!2413331 (is-ElementMatch!7086 (regTwo!14684 r!13927))) b!2413642))

(assert (= (and b!2413331 (is-Concat!11722 (regTwo!14684 r!13927))) b!2413643))

(assert (= (and b!2413331 (is-Star!7086 (regTwo!14684 r!13927))) b!2413644))

(assert (= (and b!2413331 (is-Union!7086 (regTwo!14684 r!13927))) b!2413645))

(declare-fun b!2413650 () Bool)

(declare-fun e!1536310 () Bool)

(declare-fun tp!767616 () Bool)

(assert (=> b!2413650 (= e!1536310 (and tp_is_empty!11585 tp!767616))))

(assert (=> b!2413336 (= tp!767567 e!1536310)))

(assert (= (and b!2413336 (is-Cons!28313 (t!208388 s!9460))) b!2413650))

(declare-fun b!2413651 () Bool)

(declare-fun e!1536311 () Bool)

(assert (=> b!2413651 (= e!1536311 tp_is_empty!11585)))

(declare-fun b!2413652 () Bool)

(declare-fun tp!767620 () Bool)

(declare-fun tp!767619 () Bool)

(assert (=> b!2413652 (= e!1536311 (and tp!767620 tp!767619))))

(declare-fun b!2413653 () Bool)

(declare-fun tp!767617 () Bool)

(assert (=> b!2413653 (= e!1536311 tp!767617)))

(assert (=> b!2413332 (= tp!767569 e!1536311)))

(declare-fun b!2413654 () Bool)

(declare-fun tp!767621 () Bool)

(declare-fun tp!767618 () Bool)

(assert (=> b!2413654 (= e!1536311 (and tp!767621 tp!767618))))

(assert (= (and b!2413332 (is-ElementMatch!7086 (h!33713 l!9164))) b!2413651))

(assert (= (and b!2413332 (is-Concat!11722 (h!33713 l!9164))) b!2413652))

(assert (= (and b!2413332 (is-Star!7086 (h!33713 l!9164))) b!2413653))

(assert (= (and b!2413332 (is-Union!7086 (h!33713 l!9164))) b!2413654))

(declare-fun b!2413659 () Bool)

(declare-fun e!1536314 () Bool)

(declare-fun tp!767626 () Bool)

(declare-fun tp!767627 () Bool)

(assert (=> b!2413659 (= e!1536314 (and tp!767626 tp!767627))))

(assert (=> b!2413332 (= tp!767566 e!1536314)))

(assert (= (and b!2413332 (is-Cons!28312 (t!208387 l!9164))) b!2413659))

(declare-fun b!2413660 () Bool)

(declare-fun e!1536315 () Bool)

(assert (=> b!2413660 (= e!1536315 tp_is_empty!11585)))

(declare-fun b!2413661 () Bool)

(declare-fun tp!767631 () Bool)

(declare-fun tp!767630 () Bool)

(assert (=> b!2413661 (= e!1536315 (and tp!767631 tp!767630))))

(declare-fun b!2413662 () Bool)

(declare-fun tp!767628 () Bool)

(assert (=> b!2413662 (= e!1536315 tp!767628)))

(assert (=> b!2413339 (= tp!767565 e!1536315)))

(declare-fun b!2413663 () Bool)

(declare-fun tp!767632 () Bool)

(declare-fun tp!767629 () Bool)

(assert (=> b!2413663 (= e!1536315 (and tp!767632 tp!767629))))

(assert (= (and b!2413339 (is-ElementMatch!7086 (regOne!14685 r!13927))) b!2413660))

(assert (= (and b!2413339 (is-Concat!11722 (regOne!14685 r!13927))) b!2413661))

(assert (= (and b!2413339 (is-Star!7086 (regOne!14685 r!13927))) b!2413662))

(assert (= (and b!2413339 (is-Union!7086 (regOne!14685 r!13927))) b!2413663))

(declare-fun b!2413664 () Bool)

(declare-fun e!1536316 () Bool)

(assert (=> b!2413664 (= e!1536316 tp_is_empty!11585)))

(declare-fun b!2413665 () Bool)

(declare-fun tp!767636 () Bool)

(declare-fun tp!767635 () Bool)

(assert (=> b!2413665 (= e!1536316 (and tp!767636 tp!767635))))

(declare-fun b!2413666 () Bool)

(declare-fun tp!767633 () Bool)

(assert (=> b!2413666 (= e!1536316 tp!767633)))

(assert (=> b!2413339 (= tp!767563 e!1536316)))

(declare-fun b!2413667 () Bool)

(declare-fun tp!767637 () Bool)

(declare-fun tp!767634 () Bool)

(assert (=> b!2413667 (= e!1536316 (and tp!767637 tp!767634))))

(assert (= (and b!2413339 (is-ElementMatch!7086 (regTwo!14685 r!13927))) b!2413664))

(assert (= (and b!2413339 (is-Concat!11722 (regTwo!14685 r!13927))) b!2413665))

(assert (= (and b!2413339 (is-Star!7086 (regTwo!14685 r!13927))) b!2413666))

(assert (= (and b!2413339 (is-Union!7086 (regTwo!14685 r!13927))) b!2413667))

(declare-fun b!2413668 () Bool)

(declare-fun e!1536317 () Bool)

(assert (=> b!2413668 (= e!1536317 tp_is_empty!11585)))

(declare-fun b!2413669 () Bool)

(declare-fun tp!767641 () Bool)

(declare-fun tp!767640 () Bool)

(assert (=> b!2413669 (= e!1536317 (and tp!767641 tp!767640))))

(declare-fun b!2413670 () Bool)

(declare-fun tp!767638 () Bool)

(assert (=> b!2413670 (= e!1536317 tp!767638)))

(assert (=> b!2413334 (= tp!767564 e!1536317)))

(declare-fun b!2413671 () Bool)

(declare-fun tp!767642 () Bool)

(declare-fun tp!767639 () Bool)

(assert (=> b!2413671 (= e!1536317 (and tp!767642 tp!767639))))

(assert (= (and b!2413334 (is-ElementMatch!7086 (reg!7415 r!13927))) b!2413668))

(assert (= (and b!2413334 (is-Concat!11722 (reg!7415 r!13927))) b!2413669))

(assert (= (and b!2413334 (is-Star!7086 (reg!7415 r!13927))) b!2413670))

(assert (= (and b!2413334 (is-Union!7086 (reg!7415 r!13927))) b!2413671))

(declare-fun b_lambda!74535 () Bool)

(assert (= b_lambda!74531 (or start!236482 b_lambda!74535)))

(declare-fun bs!463505 () Bool)

(declare-fun d!700954 () Bool)

(assert (= bs!463505 (and d!700954 start!236482)))

(assert (=> bs!463505 (= (dynLambda!12190 lambda!90854 (h!33713 l!9164)) (validRegex!2808 (h!33713 l!9164)))))

(declare-fun m!2803653 () Bool)

(assert (=> bs!463505 m!2803653))

(assert (=> b!2413383 d!700954))

(push 1)

(assert (not b!2413575))

(assert (not bm!147387))

(assert (not b!2413479))

(assert (not b!2413670))

(assert (not b!2413415))

(assert (not b!2413423))

(assert (not bm!147386))

(assert (not b!2413475))

(assert (not b!2413611))

(assert (not b!2413644))

(assert (not b!2413424))

(assert (not b!2413405))

(assert (not d!700918))

(assert (not b!2413421))

(assert (not b!2413662))

(assert (not b!2413416))

(assert (not b!2413418))

(assert (not b_lambda!74535))

(assert (not d!700934))

(assert (not d!700926))

(assert (not b!2413639))

(assert (not b!2413663))

(assert (not bs!463505))

(assert (not b!2413413))

(assert (not b!2413640))

(assert (not d!700942))

(assert (not b!2413643))

(assert (not b!2413671))

(assert (not b!2413411))

(assert (not b!2413406))

(assert (not bm!147378))

(assert (not b!2413653))

(assert (not b!2413666))

(assert (not b!2413474))

(assert (not b!2413645))

(assert (not b!2413569))

(assert (not b!2413481))

(assert (not b!2413665))

(assert (not b!2413384))

(assert (not b!2413536))

(assert (not b!2413661))

(assert (not b!2413571))

(assert (not b!2413473))

(assert (not b!2413417))

(assert (not b!2413577))

(assert (not b!2413659))

(assert (not bm!147396))

(assert (not b!2413579))

(assert (not b!2413570))

(assert (not b!2413667))

(assert (not b!2413483))

(assert (not d!700944))

(assert (not b!2413669))

(assert (not b!2413407))

(assert (not b!2413650))

(assert (not b!2413408))

(assert (not bm!147388))

(assert (not b!2413654))

(assert tp_is_empty!11585)

(assert (not b!2413641))

(assert (not b!2413414))

(assert (not bm!147397))

(assert (not b!2413538))

(assert (not b!2413652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

